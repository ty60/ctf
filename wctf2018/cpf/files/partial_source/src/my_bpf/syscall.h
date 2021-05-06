#ifndef __CPF_SYSCALL_H_
#define __CPF_SYSCALL_H_

#include <uapi/linux/cpf.h>
#include <linux/cpf.h>
int cpf_prog_load(union cpf_attr *attr);
int map_create(union cpf_attr *attr);
int map_lookup_elem(union cpf_attr *attr);
int map_update_elem(union cpf_attr *attr);
int map_delete_elem(union cpf_attr *attr);
int map_get_next_key(union cpf_attr *attr);
int cpf_prog_load(union cpf_attr *attr);
int cpf_obj_pin(union cpf_attr *attr);
int cpf_obj_get(union cpf_attr *attr);
int cpf_prog_get_fd_by_id(union cpf_attr *attr);
int cpf_map_get_fd_by_id(union cpf_attr *attr);
#endif
