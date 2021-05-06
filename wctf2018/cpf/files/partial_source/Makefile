obj-m += cpf.o

cpf-objs := ./src/main.o
cpf-objs += ./src/my_bpf/core.o
cpf-objs += ./src/my_bpf/syscall.o ./src/my_bpf/verifier.o ./src/my_bpf/inode.o ./src/my_bpf/helpers.o ./src/my_bpf/tnum.o
cpf-objs += ./src/my_bpf/hashtab.o ./src/my_bpf/arraymap.o ./src/my_bpf/percpu_freelist.o ./src/my_bpf/cpf_lru_list.o ./src/my_bpf/lpm_trie.o ./src/my_bpf/map_in_map.o
cpf-objs += ./src/my_bpf/devmap.o
cpf-objs += ./src/my_bpf/stackmap.o

EXTRA_CFLAGS = -I$(PWD)/src/my_bpf
EXTRA_CFLAGS += -DCONFIG_CPF_SYSCALL
EXTRA_CFLAGS += -DCONFIG_BPF_SYSCALL

all:
	make -C ../linux-hardened M=$(PWD) modules
	strip --strip-unneeded --strip-debug cpf.ko
local:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C ../linux-hardened M=$(PWD) clean
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
