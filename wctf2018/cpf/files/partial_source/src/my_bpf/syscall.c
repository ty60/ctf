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
// #include <linux/cpf_trace.h>
#include <linux/syscalls.h>
#include <linux/slab.h>
#include <linux/sched/signal.h>
#include <linux/vmalloc.h>
#include <linux/mmzone.h>
#include <linux/anon_inodes.h>
#include <linux/file.h>
#include <linux/license.h>
#include <linux/cpf_filter.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/idr.h>

#define IS_FD_ARRAY(map) ((map)->map_type == CPF_MAP_TYPE_PROG_ARRAY || \
			   (map)->map_type == CPF_MAP_TYPE_PERF_EVENT_ARRAY || \
			   (map)->map_type == CPF_MAP_TYPE_CGROUP_ARRAY || \
			   (map)->map_type == CPF_MAP_TYPE_ARRAY_OF_MAPS)
#define IS_FD_HASH(map) ((map)->map_type == CPF_MAP_TYPE_HASH_OF_MAPS)
#define IS_FD_MAP(map) (IS_FD_ARRAY(map) || IS_FD_HASH(map))

DEFINE_PER_CPU(int, cpf_prog_active);
static DEFINE_IDR(prog_idr);
static DEFINE_SPINLOCK(prog_idr_lock);
static DEFINE_IDR(map_idr);
static DEFINE_SPINLOCK(map_idr_lock);

int sysctl_unprivileged_cpf_disabled __read_mostly = 1;

static const struct cpf_map_ops * const cpf_map_types[] = {
#define CPF_PROG_TYPE(_id, _ops)
#define CPF_MAP_TYPE(_id, _ops) \
	[_id] = &_ops,
#include <linux/cpf_types.h>
#undef CPF_PROG_TYPE
#undef CPF_MAP_TYPE
};

/*
 * If we're handed a bigger struct than we know of, ensure all the unknown bits
 * are 0 - i.e. new user-space does not rely on any kernel feature extensions
 * we don't know about yet.
 *
 * There is a ToCToU between this function call and the following
 * copy_from_user() call. However, this is not a concern since this function is
 * meant to be a future-proofing of bits.
 */
static int check_uarg_tail_zero(void __user *uaddr,
				size_t expected_size,
				size_t actual_size)
{
	unsigned char __user *addr;
	unsigned char __user *end;
	unsigned char val;
	int err;

	if (unlikely(actual_size > PAGE_SIZE))	/* silly large */
		return -E2BIG;

	if (unlikely(!access_ok(VERIFY_READ, uaddr, actual_size)))
		return -EFAULT;

	if (actual_size <= expected_size)
		return 0;

	addr = uaddr + expected_size;
	end  = uaddr + actual_size;

	for (; addr < end; addr++) {
		err = get_user(val, addr);
		if (err)
			return err;
		if (val)
			return -E2BIG;
	}

	return 0;
}

static struct cpf_map *find_and_alloc_map(union cpf_attr *attr)
{
	struct cpf_map *map;

	if (attr->map_type >= ARRAY_SIZE(cpf_map_types) ||
	    !cpf_map_types[attr->map_type])
		return ERR_PTR(-EINVAL);

	map = cpf_map_types[attr->map_type]->map_alloc(attr);
	if (IS_ERR(map))
		return map;
	map->ops = cpf_map_types[attr->map_type];
	map->map_type = attr->map_type;
	return map;
}

void *cpf_map_area_alloc(size_t size, int numa_node)
{
	/* We definitely need __GFP_NORETRY, so OOM killer doesn't
	 * trigger under memory pressure as we really just want to
	 * fail instead.
	 */
	const gfp_t flags = __GFP_NOWARN | __GFP_NORETRY | __GFP_ZERO;
	void *area;

	if (size <= (PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
		area = kmalloc_node(size, GFP_USER | flags, numa_node);
		if (area != NULL)
			return area;
	}

	return vmalloc(size);
}

void cpf_map_area_free(void *area)
{
	kvfree(area);
}

int cpf_map_precharge_memlock(u32 pages)
{
	struct user_struct *user = get_current_user();
	unsigned long memlock_limit, cur;

	memlock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	cur = atomic_long_read(&user->locked_vm);
	//free_uid(user);
	if (cur + pages > memlock_limit)
		return -EPERM;
	return 0;
}

static int cpf_map_charge_memlock(struct cpf_map *map)
{
	struct user_struct *user = get_current_user();
	unsigned long memlock_limit;

	memlock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

	atomic_long_add(map->pages, &user->locked_vm);

	if (atomic_long_read(&user->locked_vm) > memlock_limit) {
		atomic_long_sub(map->pages, &user->locked_vm);
		//free_uid(user);
		return -EPERM;
	}
	map->user = user;
	return 0;
}

static void cpf_map_uncharge_memlock(struct cpf_map *map)
{
	struct user_struct *user = map->user;

	atomic_long_sub(map->pages, &user->locked_vm);
	//free_uid(user);
}

static int cpf_map_alloc_id(struct cpf_map *map)
{
	int id;

	spin_lock_bh(&map_idr_lock);
	id = idr_alloc_cyclic(&map_idr, map, 1, INT_MAX, GFP_ATOMIC);
	if (id > 0)
		map->id = id;
	spin_unlock_bh(&map_idr_lock);

	if (WARN_ON_ONCE(!id))
		return -ENOSPC;

	return id > 0 ? 0 : id;
}

static void cpf_map_free_id(struct cpf_map *map, bool do_idr_lock)
{
	unsigned long flags;

	if (do_idr_lock)
		spin_lock_irqsave(&map_idr_lock, flags);
	else
		__acquire(&map_idr_lock);

	idr_remove(&map_idr, map->id);

	if (do_idr_lock)
		spin_unlock_irqrestore(&map_idr_lock, flags);
	else
		__release(&map_idr_lock);
}

/* called from workqueue */
static void cpf_map_free_deferred(struct work_struct *work)
{
	struct cpf_map *map = container_of(work, struct cpf_map, work);

	cpf_map_uncharge_memlock(map);
	/* implementation dependent freeing */
	map->ops->map_free(map);
}

static void cpf_map_put_uref(struct cpf_map *map)
{
	if (atomic_dec_and_test(&map->usercnt)) {
		if (map->map_type == CPF_MAP_TYPE_PROG_ARRAY)
			cpf_fd_array_map_clear(map);
	}
}

/* decrement map refcnt and schedule it for freeing via workqueue
 * (unrelying map implementation ops->map_free() might sleep)
 */
static void __cpf_map_put(struct cpf_map *map, bool do_idr_lock)
{
	if (atomic_dec_and_test(&map->refcnt)) {
		/* cpf_map_free_id() must be called first */
		cpf_map_free_id(map, do_idr_lock);
		INIT_WORK(&map->work, cpf_map_free_deferred);
		schedule_work(&map->work);
	}
}

void cpf_map_put(struct cpf_map *map)
{
	__cpf_map_put(map, true);
}

void cpf_map_put_with_uref(struct cpf_map *map)
{
	cpf_map_put_uref(map);
	cpf_map_put(map);
}

static int cpf_map_release(struct inode *inode, struct file *filp)
{
	struct cpf_map *map = filp->private_data;

	if (map->ops->map_release)
		map->ops->map_release(map, filp);

	cpf_map_put_with_uref(map);
	return 0;
}

#ifdef CONFIG_PROC_FS
static void cpf_map_show_fdinfo(struct seq_file *m, struct file *filp)
{
	const struct cpf_map *map = filp->private_data;
	const struct cpf_array *array;
	u32 owner_prog_type = 0;
	u32 owner_jited = 0;

	if (map->map_type == CPF_MAP_TYPE_PROG_ARRAY) {
		array = container_of(map, struct cpf_array, map);
		owner_prog_type = array->owner_prog_type;
		owner_jited = array->owner_jited;
	}

	seq_printf(m,
		   "map_type:\t%u\n"
		   "key_size:\t%u\n"
		   "value_size:\t%u\n"
		   "max_entries:\t%u\n"
		   "map_flags:\t%#x\n"
		   "memlock:\t%llu\n",
		   map->map_type,
		   map->key_size,
		   map->value_size,
		   map->max_entries,
		   map->map_flags,
		   map->pages * 1ULL << PAGE_SHIFT);

	if (owner_prog_type) {
		seq_printf(m, "owner_prog_type:\t%u\n",
			   owner_prog_type);
		seq_printf(m, "owner_jited:\t%u\n",
			   owner_jited);
	}
}
#endif

static const struct file_operations cpf_map_fops = {
#ifdef CONFIG_PROC_FS
	.show_fdinfo	= cpf_map_show_fdinfo,
#endif
	.release	= cpf_map_release,
};

int cpf_map_new_fd(struct cpf_map *map)
{
	return anon_inode_getfd("cpf-map", &cpf_map_fops, map,
				O_RDWR | O_CLOEXEC);
}

/* helper macro to check that unused fields 'union cpf_attr' are zero */
#define CHECK_ATTR(CMD) \
	memchr_inv((void *) &attr->CMD##_LAST_FIELD + \
		   sizeof(attr->CMD##_LAST_FIELD), 0, \
		   sizeof(*attr) - \
		   offsetof(union cpf_attr, CMD##_LAST_FIELD) - \
		   sizeof(attr->CMD##_LAST_FIELD)) != NULL

#define CPF_MAP_CREATE_LAST_FIELD numa_node
/* called via syscall */
int map_create(union cpf_attr *attr)
{
	int numa_node = cpf_map_attr_numa_node(attr);
	struct cpf_map *map;
	int err;

	err = CHECK_ATTR(CPF_MAP_CREATE);
	if (err)
		return -EINVAL;

	if (numa_node != NUMA_NO_NODE &&
	    ((unsigned int)numa_node >= nr_node_ids ||
	     !node_online(numa_node)))
		return -EINVAL;

	/* find map type and init map: hashtable vs rbtree vs bloom vs ... */
	map = find_and_alloc_map(attr);
	if (IS_ERR(map))
		return PTR_ERR(map);

	atomic_set(&map->refcnt, 1);
	atomic_set(&map->usercnt, 1);

	err = cpf_map_charge_memlock(map);
	if (err)
		goto free_map_nouncharge;

	err = cpf_map_alloc_id(map);
	if (err)
		goto free_map;

	err = cpf_map_new_fd(map);
	if (err < 0) {
		/* failed to allocate fd.
		 * cpf_map_put() is needed because the above
		 * cpf_map_alloc_id() has published the map
		 * to the userspace and the userspace may
		 * have refcnt-ed it through CPF_MAP_GET_FD_BY_ID.
		 */
		cpf_map_put(map);
		return err;
	}

	// trace_cpf_map_create(map, err);
	return err;

free_map:
	cpf_map_uncharge_memlock(map);
free_map_nouncharge:
	map->ops->map_free(map);
	return err;
}
EXPORT_SYMBOL_GPL(map_create);
/* if error is returned, fd is released.
 * On success caller should complete fd access with matching fdput()
 */
struct cpf_map *__cpf_map_get(struct fd f)
{
	if (!f.file)
		return ERR_PTR(-EBADF);
	if (f.file->f_op != &cpf_map_fops) {
		fdput(f);
		return ERR_PTR(-EINVAL);
	}

	return f.file->private_data;
}

/* prog's and map's refcnt limit */
#define CPF_MAX_REFCNT 32768

struct cpf_map *cpf_map_inc(struct cpf_map *map, bool uref)
{
	if (atomic_inc_return(&map->refcnt) > CPF_MAX_REFCNT) {
		atomic_dec(&map->refcnt);
		return ERR_PTR(-EBUSY);
	}
	if (uref)
		atomic_inc(&map->usercnt);
	return map;
}

struct cpf_map *cpf_map_get_with_uref(u32 ufd)
{
	struct fd f = fdget(ufd);
	struct cpf_map *map;

	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return map;

	map = cpf_map_inc(map, true);
	fdput(f);

	return map;
}

/* map_idr_lock should have been held */
static struct cpf_map *cpf_map_inc_not_zero(struct cpf_map *map,
					    bool uref)
{
	int refold;

	refold = __atomic_add_unless(&map->refcnt, 1, 0);

	if (refold >= CPF_MAX_REFCNT) {
		__cpf_map_put(map, false);
		return ERR_PTR(-EBUSY);
	}

	if (!refold)
		return ERR_PTR(-ENOENT);

	if (uref)
		atomic_inc(&map->usercnt);

	return map;
}

int __weak cpf_stackmap_copy(struct cpf_map *map, void *key, void *value)
{
	return -ENOTSUPP;
}

/* last field in 'union cpf_attr' used by this command */
#define CPF_MAP_LOOKUP_ELEM_LAST_FIELD value

int map_lookup_elem(union cpf_attr *attr)
{
	void __user *ukey = u64_to_user_ptr(attr->key);
	void __user *uvalue = u64_to_user_ptr(attr->value);
	int ufd = attr->map_fd;
	struct cpf_map *map;
	void *key, *value, *ptr;
	u32 value_size;
	struct fd f;
	int err;

	if (CHECK_ATTR(CPF_MAP_LOOKUP_ELEM))
		return -EINVAL;

	f = fdget(ufd);
	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return PTR_ERR(map);

	key = memdup_user(ukey, map->key_size);
	if (IS_ERR(key)) {
		err = PTR_ERR(key);
		goto err_put;
	}

	if (map->map_type == CPF_MAP_TYPE_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_LRU_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_PERCPU_ARRAY)
		value_size = round_up(map->value_size, 8) * num_possible_cpus();
	else if (IS_FD_MAP(map))
		value_size = sizeof(u32);
	else
		value_size = map->value_size;

	err = -ENOMEM;
	value = kmalloc(value_size, GFP_USER | __GFP_NOWARN);
	if (!value)
		goto free_key;

	if (map->map_type == CPF_MAP_TYPE_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_LRU_PERCPU_HASH) {
		err = cpf_percpu_hash_copy(map, key, value);
	} else if (map->map_type == CPF_MAP_TYPE_PERCPU_ARRAY) {
		err = cpf_percpu_array_copy(map, key, value);
	} else if (map->map_type == CPF_MAP_TYPE_STACK_TRACE) {
		err = cpf_stackmap_copy(map, key, value);
	} else if (IS_FD_ARRAY(map)) {
		err = cpf_fd_array_map_lookup_elem(map, key, value);
	} else if (IS_FD_HASH(map)) {
		err = cpf_fd_htab_map_lookup_elem(map, key, value);
	} else {
		rcu_read_lock();
		ptr = map->ops->map_lookup_elem(map, key);
		if (ptr)
			memcpy(value, ptr, value_size);
		rcu_read_unlock();
		err = ptr ? 0 : -ENOENT;
	}

	if (err)
		goto free_value;

	err = -EFAULT;
	if (copy_to_user(uvalue, value, value_size) != 0)
		goto free_value;

	// trace_cpf_map_lookup_elem(map, ufd, key, value);
	err = 0;

free_value:
	kfree(value);
free_key:
	kfree(key);
err_put:
	fdput(f);
	return err;
}
EXPORT_SYMBOL_GPL(map_lookup_elem);
#define CPF_MAP_UPDATE_ELEM_LAST_FIELD flags

int map_update_elem(union cpf_attr *attr)
{
	void __user *ukey = u64_to_user_ptr(attr->key);
	void __user *uvalue = u64_to_user_ptr(attr->value);
	int ufd = attr->map_fd;
	struct cpf_map *map;
	void *key, *value;
	u32 value_size;
	struct fd f;
	int err;

	if (CHECK_ATTR(CPF_MAP_UPDATE_ELEM))
		return -EINVAL;

	f = fdget(ufd);
	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return PTR_ERR(map);

	key = memdup_user(ukey, map->key_size);
	if (IS_ERR(key)) {
		err = PTR_ERR(key);
		goto err_put;
	}

	if (map->map_type == CPF_MAP_TYPE_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_LRU_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_PERCPU_ARRAY)
		value_size = round_up(map->value_size, 8) * num_possible_cpus();
	else
		value_size = map->value_size;

	err = -ENOMEM;
	value = kmalloc(value_size, GFP_USER | __GFP_NOWARN);
	if (!value)
		goto free_key;

	err = -EFAULT;
	if (copy_from_user(value, uvalue, value_size) != 0)
		goto free_value;

	/* must increment cpf_prog_active to avoid kprobe+cpf triggering from
	 * inside cpf map update or delete otherwise deadlocks are possible
	 */
	preempt_disable();
	__this_cpu_inc(cpf_prog_active);
	if (map->map_type == CPF_MAP_TYPE_PERCPU_HASH ||
	    map->map_type == CPF_MAP_TYPE_LRU_PERCPU_HASH) {
		err = cpf_percpu_hash_update(map, key, value, attr->flags);
	} else if (map->map_type == CPF_MAP_TYPE_PERCPU_ARRAY) {
		err = cpf_percpu_array_update(map, key, value, attr->flags);
	} else if (map->map_type == CPF_MAP_TYPE_PERF_EVENT_ARRAY ||
		   map->map_type == CPF_MAP_TYPE_PROG_ARRAY ||
		   map->map_type == CPF_MAP_TYPE_CGROUP_ARRAY ||
		   map->map_type == CPF_MAP_TYPE_ARRAY_OF_MAPS) {
		rcu_read_lock();
		err = cpf_fd_array_map_update_elem(map, f.file, key, value,
						   attr->flags);
		rcu_read_unlock();
	} else if (map->map_type == CPF_MAP_TYPE_HASH_OF_MAPS) {
		rcu_read_lock();
		err = cpf_fd_htab_map_update_elem(map, f.file, key, value,
						  attr->flags);
		rcu_read_unlock();
	} else {
		rcu_read_lock();
		err = map->ops->map_update_elem(map, key, value, attr->flags);
		rcu_read_unlock();
	}
	__this_cpu_dec(cpf_prog_active);
	preempt_enable();

	// if (!err)
		// trace_cpf_map_update_elem(map, ufd, key, value);
free_value:
	kfree(value);
free_key:
	kfree(key);
err_put:
	fdput(f);
	return err;
}
EXPORT_SYMBOL_GPL(map_update_elem);
#define CPF_MAP_DELETE_ELEM_LAST_FIELD key

int map_delete_elem(union cpf_attr *attr)
{
	void __user *ukey = u64_to_user_ptr(attr->key);
	int ufd = attr->map_fd;
	struct cpf_map *map;
	struct fd f;
	void *key;
	int err;

	if (CHECK_ATTR(CPF_MAP_DELETE_ELEM))
		return -EINVAL;

	f = fdget(ufd);
	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return PTR_ERR(map);

	key = memdup_user(ukey, map->key_size);
	if (IS_ERR(key)) {
		err = PTR_ERR(key);
		goto err_put;
	}

	preempt_disable();
	__this_cpu_inc(cpf_prog_active);
	rcu_read_lock();
	err = map->ops->map_delete_elem(map, key);
	rcu_read_unlock();
	__this_cpu_dec(cpf_prog_active);
	preempt_enable();

	// if (!err)
		// trace_cpf_map_delete_elem(map, ufd, key);
	kfree(key);
err_put:
	fdput(f);
	return err;
}
EXPORT_SYMBOL_GPL(map_delete_elem);
/* last field in 'union cpf_attr' used by this command */
#define CPF_MAP_GET_NEXT_KEY_LAST_FIELD next_key

int map_get_next_key(union cpf_attr *attr)
{
	void __user *ukey = u64_to_user_ptr(attr->key);
	void __user *unext_key = u64_to_user_ptr(attr->next_key);
	int ufd = attr->map_fd;
	struct cpf_map *map;
	void *key, *next_key;
	struct fd f;
	int err;

	if (CHECK_ATTR(CPF_MAP_GET_NEXT_KEY))
		return -EINVAL;

	f = fdget(ufd);
	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return PTR_ERR(map);

	if (ukey) {
		key = memdup_user(ukey, map->key_size);
		if (IS_ERR(key)) {
			err = PTR_ERR(key);
			goto err_put;
		}
	} else {
		key = NULL;
	}

	err = -ENOMEM;
	next_key = kmalloc(map->key_size, GFP_USER);
	if (!next_key)
		goto free_key;

	rcu_read_lock();
	err = map->ops->map_get_next_key(map, key, next_key);
	rcu_read_unlock();
	if (err)
		goto free_next_key;

	err = -EFAULT;
	if (copy_to_user(unext_key, next_key, map->key_size) != 0)
		goto free_next_key;

	// trace_cpf_map_next_key(map, ufd, key, next_key);
	err = 0;

free_next_key:
	kfree(next_key);
free_key:
	kfree(key);
err_put:
	fdput(f);
	return err;
}
EXPORT_SYMBOL_GPL(map_get_next_key);
static const struct cpf_verifier_ops * const cpf_prog_types[] = {
#define CPF_PROG_TYPE(_id, _ops) \
	[_id] = &_ops,
#define CPF_MAP_TYPE(_id, _ops)
#include <linux/cpf_types.h>
#undef CPF_PROG_TYPE
#undef CPF_MAP_TYPE
};

static int find_prog_type(enum cpf_prog_type type, struct cpf_prog *prog)
{
	prog->aux->ops = NULL;
	prog->type = type;
	return 0;
}

/* drop refcnt on maps used by eCPF program and free auxilary data */
static void free_used_maps(struct cpf_prog_aux *aux)
{
	int i;

	for (i = 0; i < aux->used_map_cnt; i++)
		cpf_map_put(aux->used_maps[i]);

	kfree(aux->used_maps);
}

int __cpf_prog_charge(struct user_struct *user, u32 pages)
{
	unsigned long memlock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
	unsigned long user_bufs;

	if (user) {
		user_bufs = atomic_long_add_return(pages, &user->locked_vm);
		if (user_bufs > memlock_limit) {
			atomic_long_sub(pages, &user->locked_vm);
			return -EPERM;
		}
	}

	return 0;
}

void __cpf_prog_uncharge(struct user_struct *user, u32 pages)
{
	if (user)
		atomic_long_sub(pages, &user->locked_vm);
}

static int cpf_prog_charge_memlock(struct cpf_prog *prog)
{
	struct user_struct *user = get_current_user();
	int ret;

	ret = __cpf_prog_charge(user, prog->pages);
	if (ret) {
		//free_uid(user);
		return ret;
	}

	prog->aux->user = user;
	return 0;
}

static void cpf_prog_uncharge_memlock(struct cpf_prog *prog)
{
	struct user_struct *user = prog->aux->user;

	__cpf_prog_uncharge(user, prog->pages);
	//free_uid(user);
}

static int cpf_prog_alloc_id(struct cpf_prog *prog)
{
	int id;

	spin_lock_bh(&prog_idr_lock);
	id = idr_alloc_cyclic(&prog_idr, prog, 1, INT_MAX, GFP_ATOMIC);
	if (id > 0)
		prog->aux->id = id;
	spin_unlock_bh(&prog_idr_lock);

	/* id is in [1, INT_MAX) */
	if (WARN_ON_ONCE(!id))
		return -ENOSPC;

	return id > 0 ? 0 : id;
}

static void cpf_prog_free_id(struct cpf_prog *prog, bool do_idr_lock)
{
	/* cCPF to eCPF migrations are currently not in the idr store. */
	if (!prog->aux->id)
		return;

	if (do_idr_lock)
		spin_lock_bh(&prog_idr_lock);
	else
		__acquire(&prog_idr_lock);

	idr_remove(&prog_idr, prog->aux->id);

	if (do_idr_lock)
		spin_unlock_bh(&prog_idr_lock);
	else
		__release(&prog_idr_lock);
}

static void __cpf_prog_put_rcu(struct rcu_head *rcu)
{
	struct cpf_prog_aux *aux = container_of(rcu, struct cpf_prog_aux, rcu);

	free_used_maps(aux);
	cpf_prog_uncharge_memlock(aux->prog);
	cpf_prog_free(aux->prog);
}

static void __cpf_prog_put(struct cpf_prog *prog, bool do_idr_lock)
{
	if (atomic_dec_and_test(&prog->aux->refcnt)) {
		// trace_cpf_prog_put_rcu(prog);
		/* cpf_prog_free_id() must be called first */
		cpf_prog_free_id(prog, do_idr_lock);
		cpf_prog_kallsyms_del(prog);
		call_rcu(&prog->aux->rcu, __cpf_prog_put_rcu);
	}
}

void cpf_prog_put(struct cpf_prog *prog)
{
	__cpf_prog_put(prog, true);
}
EXPORT_SYMBOL_GPL(cpf_prog_put);

static int cpf_prog_release(struct inode *inode, struct file *filp)
{
	struct cpf_prog *prog = filp->private_data;

	cpf_prog_put(prog);
	return 0;
}

#ifdef CONFIG_PROC_FS
static void cpf_prog_show_fdinfo(struct seq_file *m, struct file *filp)
{
	const struct cpf_prog *prog = filp->private_data;
	char prog_tag[sizeof(prog->tag) * 2 + 1] = { };

	bin2hex(prog_tag, prog->tag, sizeof(prog->tag));
	seq_printf(m,
		   "prog_type:\t%u\n"
		   "prog_jited:\t%u\n"
		   "prog_tag:\t%s\n"
		   "memlock:\t%llu\n",
		   prog->type,
		   prog->jited,
		   prog_tag,
		   prog->pages * 1ULL << PAGE_SHIFT);
}
#endif

static const struct file_operations cpf_prog_fops = {
#ifdef CONFIG_PROC_FS
	.show_fdinfo	= cpf_prog_show_fdinfo,
#endif
	.release	= cpf_prog_release,
};

int cpf_prog_new_fd(struct cpf_prog *prog)
{
	return anon_inode_getfd("cpf-prog", &cpf_prog_fops, prog,
				O_RDWR | O_CLOEXEC);
}

static struct cpf_prog *____cpf_prog_get(struct fd f)
{
	if (!f.file)
		return ERR_PTR(-EBADF);
	if (f.file->f_op != &cpf_prog_fops) {
		fdput(f);
		return ERR_PTR(-EINVAL);
	}

	return f.file->private_data;
}

struct cpf_prog *cpf_prog_add(struct cpf_prog *prog, int i)
{
	if (atomic_add_return(i, &prog->aux->refcnt) > CPF_MAX_REFCNT) {
		atomic_sub(i, &prog->aux->refcnt);
		return ERR_PTR(-EBUSY);
	}
	return prog;
}
EXPORT_SYMBOL_GPL(cpf_prog_add);

void cpf_prog_sub(struct cpf_prog *prog, int i)
{
	/* Only to be used for undoing previous cpf_prog_add() in some
	 * error path. We still know that another entity in our call
	 * path holds a reference to the program, thus atomic_sub() can
	 * be safely used in such cases!
	 */
	WARN_ON(atomic_sub_return(i, &prog->aux->refcnt) == 0);
}
EXPORT_SYMBOL_GPL(cpf_prog_sub);

struct cpf_prog *cpf_prog_inc(struct cpf_prog *prog)
{
	return cpf_prog_add(prog, 1);
}
EXPORT_SYMBOL_GPL(cpf_prog_inc);

/* prog_idr_lock should have been held */
struct cpf_prog *cpf_prog_inc_not_zero(struct cpf_prog *prog)
{
	int refold;

	refold = __atomic_add_unless(&prog->aux->refcnt, 1, 0);

	if (refold >= CPF_MAX_REFCNT) {
		__cpf_prog_put(prog, false);
		return ERR_PTR(-EBUSY);
	}

	if (!refold)
		return ERR_PTR(-ENOENT);

	return prog;
}
EXPORT_SYMBOL_GPL(cpf_prog_inc_not_zero);

static struct cpf_prog *__cpf_prog_get(u32 ufd, enum cpf_prog_type *type)
{
	struct fd f = fdget(ufd);
	struct cpf_prog *prog;

	prog = ____cpf_prog_get(f);
	if (IS_ERR(prog))
		return prog;
	if (type && prog->type != *type) {
		prog = ERR_PTR(-EINVAL);
		goto out;
	}

	prog = cpf_prog_inc(prog);
out:
	fdput(f);
	return prog;
}

struct cpf_prog *cpf_prog_get(u32 ufd)
{
	return __cpf_prog_get(ufd, NULL);
}

struct cpf_prog *cpf_prog_get_type(u32 ufd, enum cpf_prog_type type)
{
	struct cpf_prog *prog = __cpf_prog_get(ufd, &type);

	if (!IS_ERR(prog))
		// trace_cpf_prog_get_type(prog);
	return prog;
}
EXPORT_SYMBOL_GPL(cpf_prog_get_type);

/* last field in 'union cpf_attr' used by this command */
#define	CPF_PROG_LOAD_LAST_FIELD prog_flags

int cpf_prog_load(union cpf_attr *attr)
{
	enum cpf_prog_type type = attr->prog_type;
	struct cpf_prog *prog;
	int err;
	char license[128];
	bool is_gpl;

	if (CHECK_ATTR(CPF_PROG_LOAD))
		return -EINVAL;
	
	if (attr->prog_flags & ~CPF_F_STRICT_ALIGNMENT)
		return -EINVAL;
	
	/* copy eCPF program license from user space */
	if (strncpy_from_user(license, u64_to_user_ptr(attr->license),
			      sizeof(license) - 1) < 0)
		return -EFAULT;
	license[sizeof(license) - 1] = 0;

	/* eCPF programs must be GPL compatible to use GPL-ed functions */
	is_gpl = license_is_gpl_compatible(license);

	if (attr->insn_cnt == 0 || attr->insn_cnt > CPF_MAXINSNS)
		return -E2BIG;

	if (type == CPF_PROG_TYPE_KPROBE &&
	    attr->kern_version != LINUX_VERSION_CODE)
		return -EINVAL;

	if (type != CPF_PROG_TYPE_SOCKET_FILTER &&
	    type != CPF_PROG_TYPE_CGROUP_SKB &&
	    !capable(CAP_SYS_ADMIN))
		return -EPERM;

	/* plain cpf_prog allocation */
	prog = cpf_prog_alloc(cpf_prog_size(attr->insn_cnt), GFP_USER);
	if (!prog)
		return -ENOMEM;

	err = cpf_prog_charge_memlock(prog);
	if (err)
		goto free_prog_nouncharge;

	prog->len = attr->insn_cnt;

	err = -EFAULT;
	if (copy_from_user(prog->insns, u64_to_user_ptr(attr->insns),
			   cpf_prog_insn_size(prog)) != 0)
		goto free_prog;

	prog->orig_prog = NULL;
	prog->jited = 0;

	atomic_set(&prog->aux->refcnt, 1);
	prog->gpl_compatible = is_gpl ? 1 : 0;

	/* find program type: socket_filter vs tracing_filter */
	err = find_prog_type(type, prog);
	if (err < 0)
		goto free_prog;

	/* run eCPF verifier */
	err = cpf_check(&prog, attr);
	if (err < 0)
		goto free_used_maps;

	/* eCPF program is ready to be JITed */
	prog = cpf_prog_select_runtime(prog, &err);
	if (err < 0)
		goto free_used_maps;

	err = cpf_prog_alloc_id(prog);
	if (err)
		goto free_used_maps;

	err = cpf_prog_new_fd(prog);
	if (err < 0) {
		/* failed to allocate fd.
		 * cpf_prog_put() is needed because the above
		 * cpf_prog_alloc_id() has published the prog
		 * to the userspace and the userspace may
		 * have refcnt-ed it through CPF_PROG_GET_FD_BY_ID.
		 */
		cpf_prog_put(prog);
		return err;
	}

	cpf_prog_kallsyms_add(prog);
	// trace_cpf_prog_load(prog, err);
	return err;

free_used_maps:
	free_used_maps(prog->aux);
free_prog:
	cpf_prog_uncharge_memlock(prog);
free_prog_nouncharge:
	cpf_prog_free(prog);
	return err;
}
EXPORT_SYMBOL_GPL(cpf_prog_load);

#define CPF_OBJ_LAST_FIELD cpf_fd

int cpf_obj_pin(const union cpf_attr *attr)
{
	if (CHECK_ATTR(CPF_OBJ))
		return -EINVAL;

	return cpf_obj_pin_user(attr->cpf_fd, u64_to_user_ptr(attr->pathname));
}
EXPORT_SYMBOL_GPL(cpf_obj_pin);
int cpf_obj_get(const union cpf_attr *attr)
{
	if (CHECK_ATTR(CPF_OBJ) || attr->cpf_fd != 0)
		return -EINVAL;

	return cpf_obj_get_user(u64_to_user_ptr(attr->pathname));
}
EXPORT_SYMBOL_GPL(cpf_obj_get);
#ifdef CONFIG_CGROUP_CPF

#define CPF_PROG_ATTACH_LAST_FIELD attach_flags

static int sockmap_get_from_fd(const union cpf_attr *attr, bool attach)
{
	struct cpf_prog *prog = NULL;
	int ufd = attr->target_fd;
	struct cpf_map *map;
	struct fd f;
	int err;

	f = fdget(ufd);
	map = __cpf_map_get(f);
	if (IS_ERR(map))
		return PTR_ERR(map);

	if (attach) {
		prog = cpf_prog_get_type(attr->attach_cpf_fd,
					 CPF_PROG_TYPE_SK_SKB);
		if (IS_ERR(prog)) {
			fdput(f);
			return PTR_ERR(prog);
		}
	}

	err = sock_map_prog(map, prog, attr->attach_type);
	if (err) {
		fdput(f);
		if (prog)
			cpf_prog_put(prog);
		return err;
	}

	fdput(f);
	return 0;
}

static int cpf_prog_attach(const union cpf_attr *attr)
{
	enum cpf_prog_type ptype;
	struct cpf_prog *prog;
	struct cgroup *cgrp;
	int ret;

	if (!capable(CAP_NET_ADMIN))
		return -EPERM;

	if (CHECK_ATTR(CPF_PROG_ATTACH))
		return -EINVAL;

	if (attr->attach_flags & ~CPF_F_ALLOW_OVERRIDE)
		return -EINVAL;

	switch (attr->attach_type) {
	case CPF_CGROUP_INET_INGRESS:
	case CPF_CGROUP_INET_EGRESS:
		ptype = CPF_PROG_TYPE_CGROUP_SKB;
		break;
	case CPF_CGROUP_INET_SOCK_CREATE:
		ptype = CPF_PROG_TYPE_CGROUP_SOCK;
		break;
	case CPF_CGROUP_SOCK_OPS:
		ptype = CPF_PROG_TYPE_SOCK_OPS;
		break;
	case CPF_SK_SKB_STREAM_PARSER:
	case CPF_SK_SKB_STREAM_VERDICT:
		return sockmap_get_from_fd(attr, true);
	default:
		return -EINVAL;
	}

	prog = cpf_prog_get_type(attr->attach_cpf_fd, ptype);
	if (IS_ERR(prog))
		return PTR_ERR(prog);

	cgrp = cgroup_get_from_fd(attr->target_fd);
	if (IS_ERR(cgrp)) {
		cpf_prog_put(prog);
		return PTR_ERR(cgrp);
	}

	ret = cgroup_cpf_update(cgrp, prog, attr->attach_type,
				attr->attach_flags & CPF_F_ALLOW_OVERRIDE);
	if (ret)
		cpf_prog_put(prog);
	cgroup_put(cgrp);

	return ret;
}

#define CPF_PROG_DETACH_LAST_FIELD attach_type

static int cpf_prog_detach(const union cpf_attr *attr)
{
	struct cgroup *cgrp;
	int ret;

	if (!capable(CAP_NET_ADMIN))
		return -EPERM;

	if (CHECK_ATTR(CPF_PROG_DETACH))
		return -EINVAL;

	switch (attr->attach_type) {
	case CPF_CGROUP_INET_INGRESS:
	case CPF_CGROUP_INET_EGRESS:
	case CPF_CGROUP_INET_SOCK_CREATE:
	case CPF_CGROUP_SOCK_OPS:
		cgrp = cgroup_get_from_fd(attr->target_fd);
		if (IS_ERR(cgrp))
			return PTR_ERR(cgrp);

		ret = cgroup_cpf_update(cgrp, NULL, attr->attach_type, false);
		cgroup_put(cgrp);
		break;
	case CPF_SK_SKB_STREAM_PARSER:
	case CPF_SK_SKB_STREAM_VERDICT:
		ret = sockmap_get_from_fd(attr, false);
		break;
	default:
		return -EINVAL;
	}

	return ret;
}

#endif /* CONFIG_CGROUP_CPF */

#define CPF_PROG_TEST_RUN_LAST_FIELD test.duration

static int cpf_prog_test_run(const union cpf_attr *attr,
			     union cpf_attr __user *uattr)
{
	struct cpf_prog *prog;
	int ret = -ENOTSUPP;

	if (CHECK_ATTR(CPF_PROG_TEST_RUN))
		return -EINVAL;

	prog = cpf_prog_get(attr->test.prog_fd);
	if (IS_ERR(prog))
		return PTR_ERR(prog);

	if (prog->aux->ops->test_run)
		ret = prog->aux->ops->test_run(prog, attr, uattr);

	cpf_prog_put(prog);
	return ret;
}

#define CPF_OBJ_GET_NEXT_ID_LAST_FIELD next_id

static int cpf_obj_get_next_id(const union cpf_attr *attr,
			       union cpf_attr __user *uattr,
			       struct idr *idr,
			       spinlock_t *lock)
{
	u32 next_id = attr->start_id;
	int err = 0;

	if (CHECK_ATTR(CPF_OBJ_GET_NEXT_ID) || next_id >= INT_MAX)
		return -EINVAL;

	if (!capable(CAP_SYS_ADMIN))
		return -EPERM;

	next_id++;
	spin_lock_bh(lock);
	if (!idr_get_next(idr, &next_id))
		err = -ENOENT;
	spin_unlock_bh(lock);

	if (!err)
		err = put_user(next_id, &uattr->next_id);

	return err;
}

#define CPF_PROG_GET_FD_BY_ID_LAST_FIELD prog_id

int cpf_prog_get_fd_by_id(const union cpf_attr *attr)
{
	struct cpf_prog *prog;
	u32 id = attr->prog_id;
	int fd;

	if (CHECK_ATTR(CPF_PROG_GET_FD_BY_ID))
		return -EINVAL;

	if (!capable(CAP_SYS_ADMIN))
		return -EPERM;

	spin_lock_bh(&prog_idr_lock);
	prog = idr_find(&prog_idr, id);
	if (prog)
		prog = cpf_prog_inc_not_zero(prog);
	else
		prog = ERR_PTR(-ENOENT);
	spin_unlock_bh(&prog_idr_lock);

	if (IS_ERR(prog))
		return PTR_ERR(prog);

	fd = cpf_prog_new_fd(prog);
	if (fd < 0)
		cpf_prog_put(prog);

	return fd;
}
EXPORT_SYMBOL_GPL(cpf_prog_get_fd_by_id);
#define CPF_MAP_GET_FD_BY_ID_LAST_FIELD map_id

int cpf_map_get_fd_by_id(const union cpf_attr *attr)
{
	struct cpf_map *map;
	u32 id = attr->map_id;
	int fd;

	if (CHECK_ATTR(CPF_MAP_GET_FD_BY_ID))
		return -EINVAL;

	if (!capable(CAP_SYS_ADMIN))
		return -EPERM;

	spin_lock_bh(&map_idr_lock);
	map = idr_find(&map_idr, id);
	if (map)
		map = cpf_map_inc_not_zero(map, true);
	else
		map = ERR_PTR(-ENOENT);
	spin_unlock_bh(&map_idr_lock);

	if (IS_ERR(map))
		return PTR_ERR(map);

	fd = cpf_map_new_fd(map);
	if (fd < 0)
		cpf_map_put(map);

	return fd;
}
EXPORT_SYMBOL_GPL(cpf_map_get_fd_by_id);
static int cpf_prog_get_info_by_fd(struct cpf_prog *prog,
				   const union cpf_attr *attr,
				   union cpf_attr __user *uattr)
{
	struct cpf_prog_info __user *uinfo = u64_to_user_ptr(attr->info.info);
	struct cpf_prog_info info = {};
	u32 info_len = attr->info.info_len;
	char __user *uinsns;
	u32 ulen;
	int err;

	err = check_uarg_tail_zero(uinfo, sizeof(info), info_len);
	if (err)
		return err;
	info_len = min_t(u32, sizeof(info), info_len);

	if (copy_from_user(&info, uinfo, info_len))
		return -EFAULT;

	info.type = prog->type;
	info.id = prog->aux->id;

	memcpy(info.tag, prog->tag, sizeof(prog->tag));

	if (!capable(CAP_SYS_ADMIN)) {
		info.jited_prog_len = 0;
		info.xlated_prog_len = 0;
		goto done;
	}

	ulen = info.jited_prog_len;
	info.jited_prog_len = prog->jited_len;
	if (info.jited_prog_len && ulen) {
		uinsns = u64_to_user_ptr(info.jited_prog_insns);
		ulen = min_t(u32, info.jited_prog_len, ulen);
		if (copy_to_user(uinsns, prog->cpf_func, ulen))
			return -EFAULT;
	}

	ulen = info.xlated_prog_len;
	info.xlated_prog_len = cpf_prog_insn_size(prog);
	if (info.xlated_prog_len && ulen) {
		uinsns = u64_to_user_ptr(info.xlated_prog_insns);
		ulen = min_t(u32, info.xlated_prog_len, ulen);
		if (copy_to_user(uinsns, prog->insnsi, ulen))
			return -EFAULT;
	}

done:
	if (copy_to_user(uinfo, &info, info_len) ||
	    put_user(info_len, &uattr->info.info_len))
		return -EFAULT;

	return 0;
}

static int cpf_map_get_info_by_fd(struct cpf_map *map,
				  const union cpf_attr *attr,
				  union cpf_attr __user *uattr)
{
	struct cpf_map_info __user *uinfo = u64_to_user_ptr(attr->info.info);
	struct cpf_map_info info = {};
	u32 info_len = attr->info.info_len;
	int err;

	err = check_uarg_tail_zero(uinfo, sizeof(info), info_len);
	if (err)
		return err;
	info_len = min_t(u32, sizeof(info), info_len);

	info.type = map->map_type;
	info.id = map->id;
	info.key_size = map->key_size;
	info.value_size = map->value_size;
	info.max_entries = map->max_entries;
	info.map_flags = map->map_flags;

	if (copy_to_user(uinfo, &info, info_len) ||
	    put_user(info_len, &uattr->info.info_len))
		return -EFAULT;

	return 0;
}

#define CPF_OBJ_GET_INFO_BY_FD_LAST_FIELD info.info

static int cpf_obj_get_info_by_fd(const union cpf_attr *attr,
				  union cpf_attr __user *uattr)
{
	int ufd = attr->info.cpf_fd;
	struct fd f;
	int err;

	if (CHECK_ATTR(CPF_OBJ_GET_INFO_BY_FD))
		return -EINVAL;

	f = fdget(ufd);
	if (!f.file)
		return -EBADFD;

	if (f.file->f_op == &cpf_prog_fops)
		err = cpf_prog_get_info_by_fd(f.file->private_data, attr,
					      uattr);
	else if (f.file->f_op == &cpf_map_fops)
		err = cpf_map_get_info_by_fd(f.file->private_data, attr,
					     uattr);
	else
		err = -EINVAL;

	fdput(f);
	return err;
}

// SYSCALL_DEFINE3(cpf, int, cmd, union cpf_attr __user *, uattr, unsigned int, size)
// {
// 	union cpf_attr attr = {};
// 	int err;

// 	if (sysctl_unprivileged_cpf_disabled && !capable(CAP_SYS_ADMIN))
// 		return -EPERM;

// 	err = check_uarg_tail_zero(uattr, sizeof(attr), size);
// 	if (err)
// 		return err;
// 	size = min_t(u32, size, sizeof(attr));

// 	/* copy attributes from user space, may be less than sizeof(cpf_attr) */
// 	if (copy_from_user(&attr, uattr, size) != 0)
// 		return -EFAULT;

// 	switch (cmd) {
// 	case CPF_MAP_CREATE:
// 		err = map_create(&attr);
// 		break;
// 	case CPF_MAP_LOOKUP_ELEM:
// 		err = map_lookup_elem(&attr);
// 		break;
// 	case CPF_MAP_UPDATE_ELEM:
// 		err = map_update_elem(&attr);
// 		break;
// 	case CPF_MAP_DELETE_ELEM:
// 		err = map_delete_elem(&attr);
// 		break;
// 	case CPF_MAP_GET_NEXT_KEY:
// 		err = map_get_next_key(&attr);
// 		break;
// 	case CPF_PROG_LOAD:
// 		err = cpf_prog_load(&attr);
// 		break;
// 	case CPF_OBJ_PIN:
// 		err = cpf_obj_pin(&attr);
// 		break;
// 	case CPF_OBJ_GET:
// 		err = cpf_obj_get(&attr);
// 		break;
// #ifdef CONFIG_CGROUP_CPF
// 	case CPF_PROG_ATTACH:
// 		err = cpf_prog_attach(&attr);
// 		break;
// 	case CPF_PROG_DETACH:
// 		err = cpf_prog_detach(&attr);
// 		break;
// #endif
// 	case CPF_PROG_TEST_RUN:
// 		err = cpf_prog_test_run(&attr, uattr);
// 		break;
// 	case CPF_PROG_GET_NEXT_ID:
// 		err = cpf_obj_get_next_id(&attr, uattr,
// 					  &prog_idr, &prog_idr_lock);
// 		break;
// 	case CPF_MAP_GET_NEXT_ID:
// 		err = cpf_obj_get_next_id(&attr, uattr,
// 					  &map_idr, &map_idr_lock);
// 		break;
// 	case CPF_PROG_GET_FD_BY_ID:
// 		err = cpf_prog_get_fd_by_id(&attr);
// 		break;
// 	case CPF_MAP_GET_FD_BY_ID:
// 		err = cpf_map_get_fd_by_id(&attr);
// 		break;
// 	case CPF_OBJ_GET_INFO_BY_FD:
// 		err = cpf_obj_get_info_by_fd(&attr, uattr);
// 		break;
// 	default:
// 		err = -EINVAL;
// 		break;
// 	}

// 	return err;
// }
