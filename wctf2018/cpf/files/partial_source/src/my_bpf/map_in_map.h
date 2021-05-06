/* Copyright (c) 2017 Facebook
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of version 2 of the GNU General Public
 * License as published by the Free Software Foundation.
 */
#ifndef __MAP_IN_MAP_H__
#define __MAP_IN_MAP_H__

#include <linux/types.h>

struct file;
struct cpf_map;

struct cpf_map *cpf_map_meta_alloc(int inner_map_ufd);
void cpf_map_meta_free(struct cpf_map *map_meta);
bool cpf_map_meta_equal(const struct cpf_map *meta0,
			const struct cpf_map *meta1);
void *cpf_map_fd_get_ptr(struct cpf_map *map, struct file *map_file,
			 int ufd);
void cpf_map_fd_put_ptr(void *ptr);
u32 cpf_map_fd_sys_lookup_elem(void *ptr);

#endif
