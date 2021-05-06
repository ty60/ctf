/* Copyright (c) 2011-2014 PLUMgrid, http://plumgrid.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of version 2 of the GNU General Public
 * License as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 */
#include <linux/cpf.h>
#include <linux/rcupdate.h>
#include <linux/random.h>
#include <linux/smp.h>
#include <linux/topology.h>
#include <linux/ktime.h>
#include <linux/sched.h>
#include <linux/uidgid.h>
#include <linux/cpf_filter.h>

/* If kernel subsystem is allowing eCPF programs to call this function,
 * inside its own verifier_ops->get_func_proto() callback it should return
 * cpf_map_lookup_elem_proto, so that verifier can properly check the arguments
 *
 * Different map implementations will rely on rcu in map methods
 * lookup/update/delete, therefore eCPF programs must run under rcu lock
 * if program is allowed to access maps, so check rcu_read_lock_held in
 * all three functions.
 */
CPF_CALL_2(cpf_map_lookup_elem, struct cpf_map *, map, void *, key)
{
	WARN_ON_ONCE(!rcu_read_lock_held());
	return (unsigned long) map->ops->map_lookup_elem(map, key);
}

const struct cpf_func_proto cpf_map_lookup_elem_proto = {
	.func		= cpf_map_lookup_elem,
	.gpl_only	= false,
	.pkt_access	= true,
	.ret_type	= CRET_PTR_TO_MAP_VALUE_OR_NULL,
	.arg1_type	= CARG_CONST_MAP_PTR,
	.arg2_type	= CARG_PTR_TO_MAP_KEY,
};

CPF_CALL_4(cpf_map_update_elem, struct cpf_map *, map, void *, key,
	   void *, value, u64, flags)
{
	WARN_ON_ONCE(!rcu_read_lock_held());
	return map->ops->map_update_elem(map, key, value, flags);
}

const struct cpf_func_proto cpf_map_update_elem_proto = {
	.func		= cpf_map_update_elem,
	.gpl_only	= false,
	.pkt_access	= true,
	.ret_type	= CRET_INTEGER,
	.arg1_type	= CARG_CONST_MAP_PTR,
	.arg2_type	= CARG_PTR_TO_MAP_KEY,
	.arg3_type	= CARG_PTR_TO_MAP_VALUE,
	.arg4_type	= CARG_ANYTHING,
};

CPF_CALL_2(cpf_map_delete_elem, struct cpf_map *, map, void *, key)
{
	WARN_ON_ONCE(!rcu_read_lock_held());
	return map->ops->map_delete_elem(map, key);
}

const struct cpf_func_proto cpf_map_delete_elem_proto = {
	.func		= cpf_map_delete_elem,
	.gpl_only	= false,
	.pkt_access	= true,
	.ret_type	= CRET_INTEGER,
	.arg1_type	= CARG_CONST_MAP_PTR,
	.arg2_type	= CARG_PTR_TO_MAP_KEY,
};

const struct cpf_func_proto cpf_get_prandom_u32_proto = {
	.func		= cpf_user_rnd_u32,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_0(cpf_get_smp_processor_id)
{
	return smp_processor_id();
}

const struct cpf_func_proto cpf_get_smp_processor_id_proto = {
	.func		= cpf_get_smp_processor_id,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_0(cpf_get_numa_node_id)
{
	return numa_node_id();
}

const struct cpf_func_proto cpf_get_numa_node_id_proto = {
	.func		= cpf_get_numa_node_id,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_0(cpf_ktime_get_ns)
{
	/* NMI safe access to clock monotonic */
	return ktime_get_mono_fast_ns();
}

const struct cpf_func_proto cpf_ktime_get_ns_proto = {
	.func		= cpf_ktime_get_ns,
	.gpl_only	= true,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_0(cpf_get_current_pid_tgid)
{
	struct task_struct *task = current;

	if (unlikely(!task))
		return -EINVAL;

	return (u64) task->tgid << 32 | task->pid;
}

const struct cpf_func_proto cpf_get_current_pid_tgid_proto = {
	.func		= cpf_get_current_pid_tgid,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_0(cpf_get_current_uid_gid)
{
	struct task_struct *task = current;
	kuid_t uid;
	kgid_t gid;

	if (unlikely(!task))
		return -EINVAL;

	current_uid_gid(&uid, &gid);
	return (u64) from_kgid(&init_user_ns, gid) << 32 |
		     from_kuid(&init_user_ns, uid);
}

const struct cpf_func_proto cpf_get_current_uid_gid_proto = {
	.func		= cpf_get_current_uid_gid,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
};

CPF_CALL_2(cpf_get_current_comm, char *, buf, u32, size)
{
	struct task_struct *task = current;

	if (unlikely(!task))
		goto err_clear;

	strncpy(buf, task->comm, size);

	/* Verifier guarantees that size > 0. For task->comm exceeding
	 * size, guarantee that buf is %NUL-terminated. Unconditionally
	 * done here to save the size test.
	 */
	buf[size - 1] = 0;
	return 0;
err_clear:
	memset(buf, 0, size);
	return -EINVAL;
}

const struct cpf_func_proto cpf_get_current_comm_proto = {
	.func		= cpf_get_current_comm,
	.gpl_only	= false,
	.ret_type	= CRET_INTEGER,
	.arg1_type	= CARG_PTR_TO_UNINIT_MEM,
	.arg2_type	= CARG_CONST_SIZE,
};
