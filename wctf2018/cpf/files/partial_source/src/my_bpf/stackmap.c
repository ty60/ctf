/* Copyright (c) 2016 Facebook
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of version 2 of the GNU General Public
 * License as published by the Free Software Foundation.
 */
#include <linux/cpf.h>
#include <linux/jhash.h>
#include <linux/cpf_filter.h>
#include <linux/stacktrace.h>
#include <linux/perf_event.h>
#include <linux/slab.h>
#include <linux/sched/task_stack.h>
#include "percpu_freelist.h"

/*
 * Performance events callchain code, extracted from core.c:
 *
 *  Copyright (C) 2008 Thomas Gleixner <tglx@linutronix.de>
 *  Copyright (C) 2008-2011 Red Hat, Inc., Ingo Molnar
 *  Copyright (C) 2008-2011 Red Hat, Inc., Peter Zijlstra
 *  Copyright  �  2009 Paul Mackerras, IBM Corp. <paulus@au1.ibm.com>
 *
 * For licensing details see kernel-base/COPYING
 */


//#include <internal.h>
void put_recursion_context(int *recursion, int rctx)
{
	barrier();
	recursion[rctx]--;
}

int get_recursion_context(int *recursion)
{
	int rctx;

	if (unlikely(in_nmi()))
		rctx = 3;
	else if (in_irq())
		rctx = 2;
	else if (in_softirq())
		rctx = 1;
	else
		rctx = 0;

	if (recursion[rctx])
		return -1;

	recursion[rctx]++;
	barrier();

	return rctx;
}
struct callchain_cpus_entries {
	struct rcu_head			rcu_head;
	struct perf_callchain_entry	*cpu_entries[0];
};

int sysctl_perf_event_max_stack __read_mostly = PERF_MAX_STACK_DEPTH;
int sysctl_perf_event_max_contexts_per_stack __read_mostly = PERF_MAX_CONTEXTS_PER_STACK;

static inline size_t perf_callchain_entry__sizeof(void)
{
	return (sizeof(struct perf_callchain_entry) +
			sizeof(__u64) * (sysctl_perf_event_max_stack +
							 sysctl_perf_event_max_contexts_per_stack));
}

static DEFINE_PER_CPU(int, callchain_recursion[PERF_NR_CONTEXTS]);
static atomic_t nr_callchain_events;
static DEFINE_MUTEX(callchain_mutex);
static struct callchain_cpus_entries *callchain_cpus_entries;


static void put_callchain_entry(int rctx)
{
	put_recursion_context(this_cpu_ptr(callchain_recursion), rctx);
}


__weak void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
								  struct pt_regs *regs)
{
}

__weak void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
								struct pt_regs *regs)
{
}

static void release_callchain_buffers_rcu(struct rcu_head *head)
{
	struct callchain_cpus_entries *entries;
	int cpu;

	entries = container_of(head, struct callchain_cpus_entries, rcu_head);

	for_each_possible_cpu(cpu)
	kfree(entries->cpu_entries[cpu]);

	kfree(entries);
}

static void release_callchain_buffers(void)
{
	struct callchain_cpus_entries *entries;

	entries = callchain_cpus_entries;
	RCU_INIT_POINTER(callchain_cpus_entries, NULL);
	call_rcu(&entries->rcu_head, release_callchain_buffers_rcu);
}

static int alloc_callchain_buffers(void)
{
	int cpu;
	int size;
	struct callchain_cpus_entries *entries;

	/*
	 * We can't use the percpu allocation API for data that can be
	 * accessed from NMI. Use a temporary manual per cpu allocation
	 * until that gets sorted out.
	 */
	size = offsetof(struct callchain_cpus_entries, cpu_entries[nr_cpu_ids]);

	entries = kzalloc(size, GFP_KERNEL);
	if (!entries)
		return -ENOMEM;

	size = perf_callchain_entry__sizeof() * PERF_NR_CONTEXTS;

	for_each_possible_cpu(cpu) {
		entries->cpu_entries[cpu] = kmalloc_node(size, GFP_KERNEL,
												 cpu_to_node(cpu));
		if (!entries->cpu_entries[cpu])
			goto fail;
	}

	rcu_assign_pointer(callchain_cpus_entries, entries);

	return 0;

	fail:
	for_each_possible_cpu(cpu)
	kfree(entries->cpu_entries[cpu]);
	kfree(entries);

	return -ENOMEM;
}

int get_callchain_buffers(int event_max_stack)
{
	int err = 0;
	int count;

	mutex_lock(&callchain_mutex);

	count = atomic_inc_return(&nr_callchain_events);
	if (WARN_ON_ONCE(count < 1)) {
		err = -EINVAL;
		goto exit;
	}

	/*
	 * If requesting per event more than the global cap,
	 * return a different error to help userspace figure
	 * this out.
	 *
	 * And also do it here so that we have &callchain_mutex held.
	 */
	if (event_max_stack > sysctl_perf_event_max_stack) {
		err = -EOVERFLOW;
		goto exit;
	}

	if (count == 1)
		err = alloc_callchain_buffers();
	exit:
	if (err)
		atomic_dec(&nr_callchain_events);

	mutex_unlock(&callchain_mutex);

	return err;
}

void put_callchain_buffers(void)
{
	if (atomic_dec_and_mutex_lock(&nr_callchain_events, &callchain_mutex)) {
		release_callchain_buffers();
		mutex_unlock(&callchain_mutex);
	}
}

static struct perf_callchain_entry *get_callchain_entry(int *rctx)
{
	int cpu;
	struct callchain_cpus_entries *entries;

	*rctx = get_recursion_context(this_cpu_ptr(callchain_recursion));
	if (*rctx == -1)
		return NULL;

	entries = rcu_dereference(callchain_cpus_entries);
	if (!entries)
		return NULL;

	cpu = smp_processor_id();

	return (((void *)entries->cpu_entries[cpu]) +
			(*rctx * perf_callchain_entry__sizeof()));
}



struct perf_callchain_entry *
perf_callchain(struct perf_event *event, struct pt_regs *regs)
{
	bool kernel = !event->attr.exclude_callchain_kernel;
	bool user   = !event->attr.exclude_callchain_user;
	/* Disallow cross-task user callchains. */
	bool crosstask = event->ctx->task && event->ctx->task != current;
	const u32 max_stack = event->attr.sample_max_stack;

	if (!kernel && !user)
		return NULL;

	return get_perf_callchain(regs, 0, kernel, user, max_stack, crosstask, true);
}

struct perf_callchain_entry *
get_perf_callchain(struct pt_regs *regs, u32 init_nr, bool kernel, bool user,
				   u32 max_stack, bool crosstask, bool add_mark)
{
	struct perf_callchain_entry *entry;
	struct perf_callchain_entry_ctx ctx;
	int rctx;

	entry = get_callchain_entry(&rctx);
	if (rctx == -1)
		return NULL;

	if (!entry)
		goto exit_put;

	ctx.entry     = entry;
	ctx.max_stack = max_stack;
	ctx.nr	      = entry->nr = init_nr;
	ctx.contexts       = 0;
	ctx.contexts_maxed = false;

	if (kernel && !user_mode(regs)) {
		if (add_mark)
			perf_callchain_store_context(&ctx, PERF_CONTEXT_KERNEL);
		perf_callchain_kernel(&ctx, regs);
	}

	if (user) {
		if (!user_mode(regs)) {
			if  (current->mm)
				regs = task_pt_regs(current);
			else
				regs = NULL;
		}

		if (regs) {
			mm_segment_t fs;

			if (crosstask)
				goto exit_put;

			if (add_mark)
				perf_callchain_store_context(&ctx, PERF_CONTEXT_USER);

			fs = get_fs();
			set_fs(USER_DS);
			perf_callchain_user(&ctx, regs);
			set_fs(fs);
		}
	}

	exit_put:
	put_callchain_entry(rctx);

	return entry;
}

/*
 * Used for sysctl_perf_event_max_stack and
 * sysctl_perf_event_max_contexts_per_stack.
 */
int perf_event_max_stack_handler(struct ctl_table *table, int write,
								 void __user *buffer, size_t *lenp, loff_t *ppos)
{
int *value = table->data;
int new_value = *value, ret;
struct ctl_table new_table = *table;

new_table.data = &new_value;
ret = proc_dointvec_minmax(&new_table, write, buffer, lenp, ppos);
if (ret || !write)
return ret;

mutex_lock(&callchain_mutex);
if (atomic_read(&nr_callchain_events))
ret = -EBUSY;
else
*value = new_value;

mutex_unlock(&callchain_mutex);

return ret;
}









struct stack_map_bucket {
	struct pcpu_freelist_node fnode;
	u32 hash;
	u32 nr;
	u64 ip[];
};

struct cpf_stack_map {
	struct cpf_map map;
	void *elems;
	struct pcpu_freelist freelist;
	u32 n_buckets;
	struct stack_map_bucket *buckets[];
};

static int prealloc_elems_and_freelist(struct cpf_stack_map *smap)
{
	u32 elem_size = sizeof(struct stack_map_bucket) + smap->map.value_size;
	int err;

	smap->elems = cpf_map_area_alloc(elem_size * smap->map.max_entries,
					 smap->map.numa_node);
	if (!smap->elems)
		return -ENOMEM;

	err = pcpu_freelist_init(&smap->freelist);
	if (err)
		goto free_elems;

	pcpu_freelist_populate(&smap->freelist, smap->elems, elem_size,
			       smap->map.max_entries);
	return 0;

free_elems:
	cpf_map_area_free(smap->elems);
	return err;
}

/* Called from syscall */
static struct cpf_map *stack_map_alloc(union cpf_attr *attr)
{
	u32 value_size = attr->value_size;
	struct cpf_stack_map *smap;
	u64 cost, n_buckets;
	int err;

	if (!capable(CAP_SYS_ADMIN))
		return ERR_PTR(-EPERM);

	if (attr->map_flags & ~CPF_F_NUMA_NODE)
		return ERR_PTR(-EINVAL);

	/* check sanity of attributes */
	if (attr->max_entries == 0 || attr->key_size != 4 ||
	    value_size < 8 || value_size % 8 ||
	    value_size / 8 > sysctl_perf_event_max_stack)
		return ERR_PTR(-EINVAL);

	/* hash table size must be power of 2 */
	n_buckets = roundup_pow_of_two(attr->max_entries);

	cost = n_buckets * sizeof(struct stack_map_bucket *) + sizeof(*smap);
	if (cost >= U32_MAX - PAGE_SIZE)
		return ERR_PTR(-E2BIG);

	smap = cpf_map_area_alloc(cost, cpf_map_attr_numa_node(attr));
	if (!smap)
		return ERR_PTR(-ENOMEM);

	err = -E2BIG;
	cost += n_buckets * (value_size + sizeof(struct stack_map_bucket));
	if (cost >= U32_MAX - PAGE_SIZE)
		goto free_smap;

	smap->map.map_type = attr->map_type;
	smap->map.key_size = attr->key_size;
	smap->map.value_size = value_size;
	smap->map.max_entries = attr->max_entries;
	smap->map.map_flags = attr->map_flags;
	smap->n_buckets = n_buckets;
	smap->map.pages = round_up(cost, PAGE_SIZE) >> PAGE_SHIFT;
	smap->map.numa_node = cpf_map_attr_numa_node(attr);

	err = cpf_map_precharge_memlock(smap->map.pages);
	if (err)
		goto free_smap;

	err = get_callchain_buffers(sysctl_perf_event_max_stack);
	if (err)
		goto free_smap;

	err = prealloc_elems_and_freelist(smap);
	if (err)
		goto put_buffers;

	return &smap->map;

put_buffers:
	put_callchain_buffers();
free_smap:
	cpf_map_area_free(smap);
	return ERR_PTR(err);
}

CPF_CALL_3(cpf_get_stackid, struct pt_regs *, regs, struct cpf_map *, map,
	   u64, flags)
{
	struct cpf_stack_map *smap = container_of(map, struct cpf_stack_map, map);
	struct perf_callchain_entry *trace;
	struct stack_map_bucket *bucket, *new_bucket, *old_bucket;
	u32 max_depth = map->value_size / 8;
	/* stack_map_alloc() checks that max_depth <= sysctl_perf_event_max_stack */
	u32 init_nr = sysctl_perf_event_max_stack - max_depth;
	u32 skip = flags & CPF_F_SKIP_FIELD_MASK;
	u32 hash, id, trace_nr, trace_len;
	bool user = flags & CPF_F_USER_STACK;
	bool kernel = !user;
	u64 *ips;

	if (unlikely(flags & ~(CPF_F_SKIP_FIELD_MASK | CPF_F_USER_STACK |
			       CPF_F_FAST_STACK_CMP | CPF_F_REUSE_STACKID)))
		return -EINVAL;

	trace = get_perf_callchain(regs, init_nr, kernel, user,
				   sysctl_perf_event_max_stack, false, false);

	if (unlikely(!trace))
		/* couldn't fetch the stack trace */
		return -EFAULT;

	/* get_perf_callchain() guarantees that trace->nr >= init_nr
	 * and trace-nr <= sysctl_perf_event_max_stack, so trace_nr <= max_depth
	 */
	trace_nr = trace->nr - init_nr;

	if (trace_nr <= skip)
		/* skipping more than usable stack trace */
		return -EFAULT;

	trace_nr -= skip;
	trace_len = trace_nr * sizeof(u64);
	ips = trace->ip + skip + init_nr;
	hash = jhash2((u32 *)ips, trace_len / sizeof(u32), 0);
	id = hash & (smap->n_buckets - 1);
	bucket = READ_ONCE(smap->buckets[id]);

	if (bucket && bucket->hash == hash) {
		if (flags & CPF_F_FAST_STACK_CMP)
			return id;
		if (bucket->nr == trace_nr &&
		    memcmp(bucket->ip, ips, trace_len) == 0)
			return id;
	}

	/* this call stack is not in the map, try to add it */
	if (bucket && !(flags & CPF_F_REUSE_STACKID))
		return -EEXIST;

	new_bucket = (struct stack_map_bucket *)
		pcpu_freelist_pop(&smap->freelist);
	if (unlikely(!new_bucket))
		return -ENOMEM;

	memcpy(new_bucket->ip, ips, trace_len);
	new_bucket->hash = hash;
	new_bucket->nr = trace_nr;

	old_bucket = xchg(&smap->buckets[id], new_bucket);
	if (old_bucket)
		pcpu_freelist_push(&smap->freelist, &old_bucket->fnode);
	return id;
}

const struct cpf_func_proto cpf_get_stackid_proto = {
	.func		= cpf_get_stackid,
	.gpl_only	= true,
	.ret_type	= CRET_INTEGER,
	.arg1_type	= CARG_PTR_TO_CTX,
	.arg2_type	= CARG_CONST_MAP_PTR,
	.arg3_type	= CARG_ANYTHING,
};

/* Called from eCPF program */
static void *stack_map_lookup_elem(struct cpf_map *map, void *key)
{
	return NULL;
}

/* Called from syscall */
int cpf_stackmap_copy(struct cpf_map *map, void *key, void *value)
{
	struct cpf_stack_map *smap = container_of(map, struct cpf_stack_map, map);
	struct stack_map_bucket *bucket, *old_bucket;
	u32 id = *(u32 *)key, trace_len;

	if (unlikely(id >= smap->n_buckets))
		return -ENOENT;

	bucket = xchg(&smap->buckets[id], NULL);
	if (!bucket)
		return -ENOENT;

	trace_len = bucket->nr * sizeof(u64);
	memcpy(value, bucket->ip, trace_len);
	memset(value + trace_len, 0, map->value_size - trace_len);

	old_bucket = xchg(&smap->buckets[id], bucket);
	if (old_bucket)
		pcpu_freelist_push(&smap->freelist, &old_bucket->fnode);
	return 0;
}

static int stack_map_get_next_key(struct cpf_map *map, void *key, void *next_key)
{
	return -EINVAL;
}

static int stack_map_update_elem(struct cpf_map *map, void *key, void *value,
				 u64 map_flags)
{
	return -EINVAL;
}

/* Called from syscall or from eCPF program */
static int stack_map_delete_elem(struct cpf_map *map, void *key)
{
	struct cpf_stack_map *smap = container_of(map, struct cpf_stack_map, map);
	struct stack_map_bucket *old_bucket;
	u32 id = *(u32 *)key;

	if (unlikely(id >= smap->n_buckets))
		return -E2BIG;

	old_bucket = xchg(&smap->buckets[id], NULL);
	if (old_bucket) {
		pcpu_freelist_push(&smap->freelist, &old_bucket->fnode);
		return 0;
	} else {
		return -ENOENT;
	}
}

/* Called when map->refcnt goes to zero, either from workqueue or from syscall */
static void stack_map_free(struct cpf_map *map)
{
	struct cpf_stack_map *smap = container_of(map, struct cpf_stack_map, map);

	/* wait for cpf programs to complete before freeing stack map */
	synchronize_rcu();

	cpf_map_area_free(smap->elems);
	pcpu_freelist_destroy(&smap->freelist);
	cpf_map_area_free(smap);
	put_callchain_buffers();
}

const struct cpf_map_ops stack_map_ops = {
	.map_alloc = stack_map_alloc,
	.map_free = stack_map_free,
	.map_get_next_key = stack_map_get_next_key,
	.map_lookup_elem = stack_map_lookup_elem,
	.map_update_elem = stack_map_update_elem,
	.map_delete_elem = stack_map_delete_elem,
};
