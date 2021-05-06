/*
 * Functions to manage eCPF programs attached to cgroups
 *
 * Copyright (c) 2016 Daniel Mack
 *
 * This file is subject to the terms and conditions of version 2 of the GNU
 * General Public License.  See the file COPYING in the main directory of the
 * Linux distribution for more details.
 */

#include <linux/kernel.h>
#include <linux/atomic.h>
#include <linux/cgroup.h>
#include <linux/slab.h>
#include <linux/cpf.h>
#include <linux/cpf-cgroup.h>
#include <net/sock.h>

DEFINE_STATIC_KEY_FALSE(cgroup_cpf_enabled_key);
EXPORT_SYMBOL(cgroup_cpf_enabled_key);

/**
 * cgroup_cpf_put() - put references of all cpf programs
 * @cgrp: the cgroup to modify
 */
void cgroup_cpf_put(struct cgroup *cgrp)
{
	unsigned int type;

	for (type = 0; type < ARRAY_SIZE(cgrp->cpf.prog); type++) {
		struct cpf_prog *prog = cgrp->cpf.prog[type];

		if (prog) {
			cpf_prog_put(prog);
			static_branch_dec(&cgroup_cpf_enabled_key);
		}
	}
}

/**
 * cgroup_cpf_inherit() - inherit effective programs from parent
 * @cgrp: the cgroup to modify
 * @parent: the parent to inherit from
 */
void cgroup_cpf_inherit(struct cgroup *cgrp, struct cgroup *parent)
{
	unsigned int type;

	for (type = 0; type < ARRAY_SIZE(cgrp->cpf.effective); type++) {
		struct cpf_prog *e;

		e = rcu_dereference_protected(parent->cpf.effective[type],
					      lockdep_is_held(&cgroup_mutex));
		rcu_assign_pointer(cgrp->cpf.effective[type], e);
		cgrp->cpf.disallow_override[type] = parent->cpf.disallow_override[type];
	}
}

/**
 * __cgroup_cpf_update() - Update the pinned program of a cgroup, and
 *                         propagate the change to descendants
 * @cgrp: The cgroup which descendants to traverse
 * @parent: The parent of @cgrp, or %NULL if @cgrp is the root
 * @prog: A new program to pin
 * @type: Type of pinning operation (ingress/egress)
 *
 * Each cgroup has a set of two pointers for cpf programs; one for eCPF
 * programs it owns, and which is effective for execution.
 *
 * If @prog is not %NULL, this function attaches a new program to the cgroup
 * and releases the one that is currently attached, if any. @prog is then made
 * the effective program of type @type in that cgroup.
 *
 * If @prog is %NULL, the currently attached program of type @type is released,
 * and the effective program of the parent cgroup (if any) is inherited to
 * @cgrp.
 *
 * Then, the descendants of @cgrp are walked and the effective program for
 * each of them is set to the effective program of @cgrp unless the
 * descendant has its own program attached, in which case the subbranch is
 * skipped. This ensures that delegated subcgroups with own programs are left
 * untouched.
 *
 * Must be called with cgroup_mutex held.
 */
int __cgroup_cpf_update(struct cgroup *cgrp, struct cgroup *parent,
			struct cpf_prog *prog, enum cpf_attach_type type,
			bool new_overridable)
{
	struct cpf_prog *old_prog, *effective = NULL;
	struct cgroup_subsys_state *pos;
	bool overridable = true;

	if (parent) {
		overridable = !parent->cpf.disallow_override[type];
		effective = rcu_dereference_protected(parent->cpf.effective[type],
						      lockdep_is_held(&cgroup_mutex));
	}

	if (prog && effective && !overridable)
		/* if parent has non-overridable prog attached, disallow
		 * attaching new programs to descendent cgroup
		 */
		return -EPERM;

	if (prog && effective && overridable != new_overridable)
		/* if parent has overridable prog attached, only
		 * allow overridable programs in descendent cgroup
		 */
		return -EPERM;

	old_prog = cgrp->cpf.prog[type];

	if (prog) {
		overridable = new_overridable;
		effective = prog;
		if (old_prog &&
		    cgrp->cpf.disallow_override[type] == new_overridable)
			/* disallow attaching non-overridable on top
			 * of existing overridable in this cgroup
			 * and vice versa
			 */
			return -EPERM;
	}

	if (!prog && !old_prog)
		/* report error when trying to detach and nothing is attached */
		return -ENOENT;

	cgrp->cpf.prog[type] = prog;

	css_for_each_descendant_pre(pos, &cgrp->self) {
		struct cgroup *desc = container_of(pos, struct cgroup, self);

		/* skip the subtree if the descendant has its own program */
		if (desc->cpf.prog[type] && desc != cgrp) {
			pos = css_rightmost_descendant(pos);
		} else {
			rcu_assign_pointer(desc->cpf.effective[type],
					   effective);
			desc->cpf.disallow_override[type] = !overridable;
		}
	}

	if (prog)
		static_branch_inc(&cgroup_cpf_enabled_key);

	if (old_prog) {
		cpf_prog_put(old_prog);
		static_branch_dec(&cgroup_cpf_enabled_key);
	}
	return 0;
}

/**
 * __cgroup_cpf_run_filter_skb() - Run a program for packet filtering
 * @sk: The socket sending or receiving traffic
 * @skb: The skb that is being sent or received
 * @type: The type of program to be exectuted
 *
 * If no socket is passed, or the socket is not of type INET or INET6,
 * this function does nothing and returns 0.
 *
 * The program type passed in via @type must be suitable for network
 * filtering. No further check is performed to assert that.
 *
 * This function will return %-EPERM if any if an attached program was found
 * and if it returned != 1 during execution. In all other cases, 0 is returned.
 */
int __cgroup_cpf_run_filter_skb(struct sock *sk,
				struct sk_buff *skb,
				enum cpf_attach_type type)
{
	struct cpf_prog *prog;
	struct cgroup *cgrp;
	int ret = 0;

	if (!sk || !sk_fullsock(sk))
		return 0;

	if (sk->sk_family != AF_INET &&
	    sk->sk_family != AF_INET6)
		return 0;

	cgrp = sock_cgroup_ptr(&sk->sk_cgrp_data);

	rcu_read_lock();

	prog = rcu_dereference(cgrp->cpf.effective[type]);
	if (prog) {
		unsigned int offset = skb->data - skb_network_header(skb);
		struct sock *save_sk = skb->sk;

		skb->sk = sk;
		__skb_push(skb, offset);
		ret = cpf_prog_run_save_cb(prog, skb) == 1 ? 0 : -EPERM;
		__skb_pull(skb, offset);
		skb->sk = save_sk;
	}

	rcu_read_unlock();

	return ret;
}
EXPORT_SYMBOL(__cgroup_cpf_run_filter_skb);

/**
 * __cgroup_cpf_run_filter_sk() - Run a program on a sock
 * @sk: sock structure to manipulate
 * @type: The type of program to be exectuted
 *
 * socket is passed is expected to be of type INET or INET6.
 *
 * The program type passed in via @type must be suitable for sock
 * filtering. No further check is performed to assert that.
 *
 * This function will return %-EPERM if any if an attached program was found
 * and if it returned != 1 during execution. In all other cases, 0 is returned.
 */
int __cgroup_cpf_run_filter_sk(struct sock *sk,
			       enum cpf_attach_type type)
{
	struct cgroup *cgrp = sock_cgroup_ptr(&sk->sk_cgrp_data);
	struct cpf_prog *prog;
	int ret = 0;


	rcu_read_lock();

	prog = rcu_dereference(cgrp->cpf.effective[type]);
	if (prog)
		ret = CPF_PROG_RUN(prog, sk) == 1 ? 0 : -EPERM;

	rcu_read_unlock();

	return ret;
}
EXPORT_SYMBOL(__cgroup_cpf_run_filter_sk);

/**
 * __cgroup_cpf_run_filter_sock_ops() - Run a program on a sock
 * @sk: socket to get cgroup from
 * @sock_ops: cpf_sock_ops_kern struct to pass to program. Contains
 * sk with connection information (IP addresses, etc.) May not contain
 * cgroup info if it is a req sock.
 * @type: The type of program to be exectuted
 *
 * socket passed is expected to be of type INET or INET6.
 *
 * The program type passed in via @type must be suitable for sock_ops
 * filtering. No further check is performed to assert that.
 *
 * This function will return %-EPERM if any if an attached program was found
 * and if it returned != 1 during execution. In all other cases, 0 is returned.
 */
int __cgroup_cpf_run_filter_sock_ops(struct sock *sk,
				     struct cpf_sock_ops_kern *sock_ops,
				     enum cpf_attach_type type)
{
	struct cgroup *cgrp = sock_cgroup_ptr(&sk->sk_cgrp_data);
	struct cpf_prog *prog;
	int ret = 0;


	rcu_read_lock();

	prog = rcu_dereference(cgrp->cpf.effective[type]);
	if (prog)
		ret = CPF_PROG_RUN(prog, sock_ops) == 1 ? 0 : -EPERM;

	rcu_read_unlock();

	return ret;
}
EXPORT_SYMBOL(__cgroup_cpf_run_filter_sock_ops);
