/*
 * Linux Socket Filter - Kernel level socket filtering
 *
 * Based on the design of the Berkeley Packet Filter. The new
 * internal format has been designed by PLUMgrid:
 *
 *	Copyright (c) 2011 - 2014 PLUMgrid, http://plumgrid.com
 *
 * Authors:
 *
 *	Jay Schulist <jschlst@samba.org>
 *	Alexei Starovoitov <ast@plumgrid.com>
 *	Daniel Borkmann <dborkman@redhat.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version
 * 2 of the License, or (at your option) any later version.
 *
 * Andi Kleen - Fix a few bad bugs and races.
 * Kris Katterjohn - Added many additional checks in cpf_check_classic()
 */

#include <linux/cpf_filter.h>
#include <linux/skbuff.h>
#include <linux/vmalloc.h>
#include <linux/random.h>
#include <linux/moduleloader.h>
#include <linux/cpf.h>
#include <linux/frame.h>
#include <linux/rbtree_latch.h>
#include <linux/kallsyms.h>
#include <linux/rcupdate.h>

#include <asm/unaligned.h>

/* Registers */
#define CPF_R0	regs[CPF_REG_0]
#define CPF_R1	regs[CPF_REG_1]
#define CPF_R2	regs[CPF_REG_2]
#define CPF_R3	regs[CPF_REG_3]
#define CPF_R4	regs[CPF_REG_4]
#define CPF_R5	regs[CPF_REG_5]
#define CPF_R6	regs[CPF_REG_6]
#define CPF_R7	regs[CPF_REG_7]
#define CPF_R8	regs[CPF_REG_8]
#define CPF_R9	regs[CPF_REG_9]
#define CPF_R10	regs[CPF_REG_10]

/* Named registers */
#define DST	regs[insn->dst_reg]
#define SRC	regs[insn->src_reg]
#define FP	regs[CPF_REG_FP]
#define ARG1	regs[CPF_REG_ARG1]
#define CTX	regs[CPF_REG_CTX]
#define IMM	insn->imm

/* No hurry in this branch
 *
 * Exported for the cpf jit load helper.
 */
void *cpf_internal_load_pointer_neg_helper(const struct sk_buff *skb, int k, unsigned int size)
{
	u8 *ptr = NULL;

	if (k >= SKF_NET_OFF)
		ptr = skb_network_header(skb) + k - SKF_NET_OFF;
	else if (k >= SKF_LL_OFF)
		ptr = skb_mac_header(skb) + k - SKF_LL_OFF;

	if (ptr >= skb->head && ptr + size <= skb_tail_pointer(skb))
		return ptr;

	return NULL;
}

struct cpf_prog *cpf_prog_alloc(unsigned int size, gfp_t gfp_extra_flags)
{
	gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
	struct cpf_prog_aux *aux;
	struct cpf_prog *fp;

	size = round_up(size, PAGE_SIZE);
	fp = __vmalloc(size, gfp_flags, PAGE_KERNEL);
	if (fp == NULL)
		return NULL;

	aux = kzalloc(sizeof(*aux), GFP_KERNEL | gfp_extra_flags);
	if (aux == NULL) {
		vfree(fp);
		return NULL;
	}

	fp->pages = size / PAGE_SIZE;
	fp->aux = aux;
	fp->aux->prog = fp;

	INIT_LIST_HEAD_RCU(&fp->aux->ksym_lnode);

	return fp;
}
EXPORT_SYMBOL_GPL(cpf_prog_alloc);

struct cpf_prog *cpf_prog_realloc(struct cpf_prog *fp_old, unsigned int size,
				  gfp_t gfp_extra_flags)
{
	gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
	struct cpf_prog *fp;
	u32 pages, delta;
	int ret;

	BUG_ON(fp_old == NULL);

	size = round_up(size, PAGE_SIZE);
	pages = size / PAGE_SIZE;
	if (pages <= fp_old->pages)
		return fp_old;

	delta = pages - fp_old->pages;
	ret = __cpf_prog_charge(fp_old->aux->user, delta);
	if (ret)
		return NULL;

	fp = __vmalloc(size, gfp_flags, PAGE_KERNEL);
	if (fp == NULL) {
		__cpf_prog_uncharge(fp_old->aux->user, delta);
	} else {
		memcpy(fp, fp_old, fp_old->pages * PAGE_SIZE);
		fp->pages = pages;
		fp->aux->prog = fp;

		/* We keep fp->aux from fp_old around in the new
		 * reallocated structure.
		 */
		fp_old->aux = NULL;
		__cpf_prog_free(fp_old);
	}

	return fp;
}

void __cpf_prog_free(struct cpf_prog *fp)
{
	kfree(fp->aux);
	vfree(fp);
}

int cpf_prog_calc_tag(struct cpf_prog *fp)
{
	const u32 bits_offset = SHA_MESSAGE_BYTES - sizeof(__be64);
	u32 raw_size = cpf_prog_tag_scratch_size(fp);
	u32 digest[SHA_DIGEST_WORDS];
	u32 ws[SHA_WORKSPACE_WORDS];
	u32 i, bsize, psize, blocks;
	struct cpf_insn *dst;
	bool was_ld_map;
	u8 *raw, *todo;
	__be32 *result;
	__be64 *bits;

	raw = vmalloc(raw_size);
	if (!raw)
		return -ENOMEM;

	sha_init(digest);
	memset(ws, 0, sizeof(ws));

	/* We need to take out the map fd for the digest calculation
	 * since they are unstable from user space side.
	 */
	dst = (void *)raw;
	for (i = 0, was_ld_map = false; i < fp->len; i++) {
		dst[i] = fp->insnsi[i];
		if (!was_ld_map &&
		    dst[i].code == (CPF_LD | CPF_IMM | CPF_DW) &&
		    dst[i].src_reg == CPF_PSEUDO_MAP_FD) {
			was_ld_map = true;
			dst[i].imm = 0;
		} else if (was_ld_map &&
			   dst[i].code == 0 &&
			   dst[i].dst_reg == 0 &&
			   dst[i].src_reg == 0 &&
			   dst[i].off == 0) {
			was_ld_map = false;
			dst[i].imm = 0;
		} else {
			was_ld_map = false;
		}
	}

	psize = cpf_prog_insn_size(fp);
	memset(&raw[psize], 0, raw_size - psize);
	raw[psize++] = 0x80;

	bsize  = round_up(psize, SHA_MESSAGE_BYTES);
	blocks = bsize / SHA_MESSAGE_BYTES;
	todo   = raw;
	if (bsize - psize >= sizeof(__be64)) {
		bits = (__be64 *)(todo + bsize - sizeof(__be64));
	} else {
		bits = (__be64 *)(todo + bsize + bits_offset);
		blocks++;
	}
	*bits = cpu_to_be64((psize - 1) << 3);

	while (blocks--) {
		sha_transform(digest, todo, ws);
		todo += SHA_MESSAGE_BYTES;
	}

	result = (__force __be32 *)digest;
	for (i = 0; i < SHA_DIGEST_WORDS; i++)
		result[i] = cpu_to_be32(digest[i]);
	memcpy(fp->tag, result, sizeof(fp->tag));

	vfree(raw);
	return 0;
}

static bool cpf_is_jmp_and_has_target(const struct cpf_insn *insn)
{
	return CPF_CLASS(insn->code) == CPF_JMP  &&
	       /* Call and Exit are both special jumps with no
		* target inside the CPF instruction image.
		*/
	       CPF_OP(insn->code) != CPF_CALL &&
	       CPF_OP(insn->code) != CPF_EXIT;
}

static void cpf_adj_branches(struct cpf_prog *prog, u32 pos, u32 delta)
{
	struct cpf_insn *insn = prog->insnsi;
	u32 i, insn_cnt = prog->len;

	for (i = 0; i < insn_cnt; i++, insn++) {
		if (!cpf_is_jmp_and_has_target(insn))
			continue;

		/* Adjust offset of jmps if we cross boundaries. */
		if (i < pos && i + insn->off + 1 > pos)
			insn->off += delta;
		else if (i > pos + delta && i + insn->off + 1 <= pos + delta)
			insn->off -= delta;
	}
}

struct cpf_prog *cpf_patch_insn_single(struct cpf_prog *prog, u32 off,
				       const struct cpf_insn *patch, u32 len)
{
	u32 insn_adj_cnt, insn_rest, insn_delta = len - 1;
	struct cpf_prog *prog_adj;

	/* Since our patchlet doesn't expand the image, we're done. */
	if (insn_delta == 0) {
		memcpy(prog->insnsi + off, patch, sizeof(*patch));
		return prog;
	}

	insn_adj_cnt = prog->len + insn_delta;

	/* Several new instructions need to be inserted. Make room
	 * for them. Likely, there's no need for a new allocation as
	 * last page could have large enough tailroom.
	 */
	prog_adj = cpf_prog_realloc(prog, cpf_prog_size(insn_adj_cnt),
				    GFP_USER);
	if (!prog_adj)
		return NULL;

	prog_adj->len = insn_adj_cnt;

	/* Patching happens in 3 steps:
	 *
	 * 1) Move over tail of insnsi from next instruction onwards,
	 *    so we can patch the single target insn with one or more
	 *    new ones (patching is always from 1 to n insns, n > 0).
	 * 2) Inject new instructions at the target location.
	 * 3) Adjust branch offsets if necessary.
	 */
	insn_rest = insn_adj_cnt - off - len;

	memmove(prog_adj->insnsi + off + len, prog_adj->insnsi + off + 1,
		sizeof(*patch) * insn_rest);
	memcpy(prog_adj->insnsi + off, patch, sizeof(*patch) * len);

	cpf_adj_branches(prog_adj, off, insn_delta);

	return prog_adj;
}

#ifdef CONFIG_CPF_JIT
static __always_inline void
cpf_get_prog_addr_region(const struct cpf_prog *prog,
			 unsigned long *symbol_start,
			 unsigned long *symbol_end)
{
	const struct cpf_binary_header *hdr = cpf_jit_binary_hdr(prog);
	unsigned long addr = (unsigned long)hdr;

	WARN_ON_ONCE(!cpf_prog_ecpf_jited(prog));

	*symbol_start = addr;
	*symbol_end   = addr + hdr->pages * PAGE_SIZE;
}

static void cpf_get_prog_name(const struct cpf_prog *prog, char *sym)
{
	BUILD_BUG_ON(sizeof("cpf_prog_") +
		     sizeof(prog->tag) * 2 + 1 > KSYM_NAME_LEN);

	sym += snprintf(sym, KSYM_NAME_LEN, "cpf_prog_");
	sym  = bin2hex(sym, prog->tag, sizeof(prog->tag));
	*sym = 0;
}

static __always_inline unsigned long
cpf_get_prog_addr_start(struct latch_tree_node *n)
{
	unsigned long symbol_start, symbol_end;
	const struct cpf_prog_aux *aux;

	aux = container_of(n, struct cpf_prog_aux, ksym_tnode);
	cpf_get_prog_addr_region(aux->prog, &symbol_start, &symbol_end);

	return symbol_start;
}

static __always_inline bool cpf_tree_less(struct latch_tree_node *a,
					  struct latch_tree_node *b)
{
	return cpf_get_prog_addr_start(a) < cpf_get_prog_addr_start(b);
}

static __always_inline int cpf_tree_comp(void *key, struct latch_tree_node *n)
{
	unsigned long val = (unsigned long)key;
	unsigned long symbol_start, symbol_end;
	const struct cpf_prog_aux *aux;

	aux = container_of(n, struct cpf_prog_aux, ksym_tnode);
	cpf_get_prog_addr_region(aux->prog, &symbol_start, &symbol_end);

	if (val < symbol_start)
		return -1;
	if (val >= symbol_end)
		return  1;

	return 0;
}

static const struct latch_tree_ops cpf_tree_ops = {
	.less	= cpf_tree_less,
	.comp	= cpf_tree_comp,
};

static DEFINE_SPINLOCK(cpf_lock);
static LIST_HEAD(cpf_kallsyms);
static struct latch_tree_root cpf_tree __cacheline_aligned;

int cpf_jit_kallsyms __read_mostly;

static void cpf_prog_ksym_node_add(struct cpf_prog_aux *aux)
{
	WARN_ON_ONCE(!list_empty(&aux->ksym_lnode));
	list_add_tail_rcu(&aux->ksym_lnode, &cpf_kallsyms);
	latch_tree_insert(&aux->ksym_tnode, &cpf_tree, &cpf_tree_ops);
}

static void cpf_prog_ksym_node_del(struct cpf_prog_aux *aux)
{
	if (list_empty(&aux->ksym_lnode))
		return;

	latch_tree_erase(&aux->ksym_tnode, &cpf_tree, &cpf_tree_ops);
	list_del_rcu(&aux->ksym_lnode);
}

static bool cpf_prog_kallsyms_candidate(const struct cpf_prog *fp)
{
	return fp->jited && !cpf_prog_was_classic(fp);
}

static bool cpf_prog_kallsyms_verify_off(const struct cpf_prog *fp)
{
	return list_empty(&fp->aux->ksym_lnode) ||
	       fp->aux->ksym_lnode.prev == LIST_POISON2;
}

void cpf_prog_kallsyms_add(struct cpf_prog *fp)
{
	if (!cpf_prog_kallsyms_candidate(fp) ||
	    !capable(CAP_SYS_ADMIN))
		return;

	spin_lock_bh(&cpf_lock);
	cpf_prog_ksym_node_add(fp->aux);
	spin_unlock_bh(&cpf_lock);
}

void cpf_prog_kallsyms_del(struct cpf_prog *fp)
{
	if (!cpf_prog_kallsyms_candidate(fp))
		return;

	spin_lock_bh(&cpf_lock);
	cpf_prog_ksym_node_del(fp->aux);
	spin_unlock_bh(&cpf_lock);
}

static struct cpf_prog *cpf_prog_kallsyms_find(unsigned long addr)
{
	struct latch_tree_node *n;

	if (!cpf_jit_kallsyms_enabled())
		return NULL;

	n = latch_tree_find((void *)addr, &cpf_tree, &cpf_tree_ops);
	return n ?
	       container_of(n, struct cpf_prog_aux, ksym_tnode)->prog :
	       NULL;
}

const char *__cpf_address_lookup(unsigned long addr, unsigned long *size,
				 unsigned long *off, char *sym)
{
	unsigned long symbol_start, symbol_end;
	struct cpf_prog *prog;
	char *ret = NULL;

	rcu_read_lock();
	prog = cpf_prog_kallsyms_find(addr);
	if (prog) {
		cpf_get_prog_addr_region(prog, &symbol_start, &symbol_end);
		cpf_get_prog_name(prog, sym);

		ret = sym;
		if (size)
			*size = symbol_end - symbol_start;
		if (off)
			*off  = addr - symbol_start;
	}
	rcu_read_unlock();

	return ret;
}

bool is_cpf_text_address(unsigned long addr)
{
	bool ret;

	rcu_read_lock();
	ret = cpf_prog_kallsyms_find(addr) != NULL;
	rcu_read_unlock();

	return ret;
}

int cpf_get_kallsym(unsigned int symnum, unsigned long *value, char *type,
		    char *sym)
{
	unsigned long symbol_start, symbol_end;
	struct cpf_prog_aux *aux;
	unsigned int it = 0;
	int ret = -ERANGE;

	if (!cpf_jit_kallsyms_enabled())
		return ret;

	rcu_read_lock();
	list_for_each_entry_rcu(aux, &cpf_kallsyms, ksym_lnode) {
		if (it++ != symnum)
			continue;

		cpf_get_prog_addr_region(aux->prog, &symbol_start, &symbol_end);
		cpf_get_prog_name(aux->prog, sym);

		*value = symbol_start;
		*type  = CPF_SYM_ELF_TYPE;

		ret = 0;
		break;
	}
	rcu_read_unlock();

	return ret;
}

struct cpf_binary_header *
cpf_jit_binary_alloc(unsigned int proglen, u8 **image_ptr,
		     unsigned int alignment,
		     cpf_jit_fill_hole_t cpf_fill_ill_insns)
{
	struct cpf_binary_header *hdr;
	unsigned int size, hole, start;

	/* Most of CPF filters are really small, but if some of them
	 * fill a page, allow at least 128 extra bytes to insert a
	 * random section of illegal instructions.
	 */
	size = round_up(proglen + sizeof(*hdr) + 128, PAGE_SIZE);
	hdr = module_alloc(size);
	if (hdr == NULL)
		return NULL;

	/* Fill space with illegal/arch-dep instructions. */
	cpf_fill_ill_insns(hdr, size);

	hdr->pages = size / PAGE_SIZE;
	hole = min_t(unsigned int, size - (proglen + sizeof(*hdr)),
		     PAGE_SIZE - sizeof(*hdr));
	start = (get_random_int() % hole) & ~(alignment - 1);

	/* Leave a random number of instructions before CPF code. */
	*image_ptr = &hdr->image[start];

	return hdr;
}

void cpf_jit_binary_free(struct cpf_binary_header *hdr)
{
	module_memfree(hdr);
}

/* This symbol is only overridden by archs that have different
 * requirements than the usual eCPF JITs, f.e. when they only
 * implement cCPF JIT, do not set images read-only, etc.
 */
void __weak cpf_jit_free(struct cpf_prog *fp)
{
	if (fp->jited) {
		struct cpf_binary_header *hdr = cpf_jit_binary_hdr(fp);

		cpf_jit_binary_unlock_ro(hdr);
		cpf_jit_binary_free(hdr);

		WARN_ON_ONCE(!cpf_prog_kallsyms_verify_off(fp));
	}

	cpf_prog_unlock_free(fp);
}

int cpf_jit_harden __read_mostly = 2;

static int cpf_jit_blind_insn(const struct cpf_insn *from,
			      const struct cpf_insn *aux,
			      struct cpf_insn *to_buff)
{
	struct cpf_insn *to = to_buff;
	u32 imm_rnd = get_random_int();
	s16 off;

	BUILD_BUG_ON(CPF_REG_AX  + 1 != MAX_CPF_JIT_REG);
	BUILD_BUG_ON(MAX_CPF_REG + 1 != MAX_CPF_JIT_REG);

	if (from->imm == 0 &&
	    (from->code == (CPF_ALU   | CPF_MOV | CPF_K) ||
	     from->code == (CPF_ALU64 | CPF_MOV | CPF_K))) {
		*to++ = CPF_ALU64_REG(CPF_XOR, from->dst_reg, from->dst_reg);
		goto out;
	}

	switch (from->code) {
	case CPF_ALU | CPF_ADD | CPF_K:
	case CPF_ALU | CPF_SUB | CPF_K:
	case CPF_ALU | CPF_AND | CPF_K:
	case CPF_ALU | CPF_OR  | CPF_K:
	case CPF_ALU | CPF_XOR | CPF_K:
	case CPF_ALU | CPF_MUL | CPF_K:
	case CPF_ALU | CPF_MOV | CPF_K:
	case CPF_ALU | CPF_DIV | CPF_K:
	case CPF_ALU | CPF_MOD | CPF_K:
		*to++ = CPF_ALU32_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU32_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_ALU32_REG(from->code, from->dst_reg, CPF_REG_AX);
		break;

	case CPF_ALU64 | CPF_ADD | CPF_K:
	case CPF_ALU64 | CPF_SUB | CPF_K:
	case CPF_ALU64 | CPF_AND | CPF_K:
	case CPF_ALU64 | CPF_OR  | CPF_K:
	case CPF_ALU64 | CPF_XOR | CPF_K:
	case CPF_ALU64 | CPF_MUL | CPF_K:
	case CPF_ALU64 | CPF_MOV | CPF_K:
	case CPF_ALU64 | CPF_DIV | CPF_K:
	case CPF_ALU64 | CPF_MOD | CPF_K:
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_ALU64_REG(from->code, from->dst_reg, CPF_REG_AX);
		break;

	case CPF_JMP | CPF_JEQ  | CPF_K:
	case CPF_JMP | CPF_JNE  | CPF_K:
	case CPF_JMP | CPF_JGT  | CPF_K:
	case CPF_JMP | CPF_JLT  | CPF_K:
	case CPF_JMP | CPF_JGE  | CPF_K:
	case CPF_JMP | CPF_JLE  | CPF_K:
	case CPF_JMP | CPF_JSGT | CPF_K:
	case CPF_JMP | CPF_JSLT | CPF_K:
	case CPF_JMP | CPF_JSGE | CPF_K:
	case CPF_JMP | CPF_JSLE | CPF_K:
	case CPF_JMP | CPF_JSET | CPF_K:
		/* Accommodate for extra offset in case of a backjump. */
		off = from->off;
		if (off < 0)
			off -= 2;
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_JMP_REG(from->code, from->dst_reg, CPF_REG_AX, off);
		break;

	case CPF_LD | CPF_ABS | CPF_W:
	case CPF_LD | CPF_ABS | CPF_H:
	case CPF_LD | CPF_ABS | CPF_B:
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_LD_IND(from->code, CPF_REG_AX, 0);
		break;

	case CPF_LD | CPF_IND | CPF_W:
	case CPF_LD | CPF_IND | CPF_H:
	case CPF_LD | CPF_IND | CPF_B:
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_ALU32_REG(CPF_ADD, CPF_REG_AX, from->src_reg);
		*to++ = CPF_LD_IND(from->code, CPF_REG_AX, 0);
		break;

	case CPF_LD | CPF_IMM | CPF_DW:
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ aux[1].imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_ALU64_IMM(CPF_LSH, CPF_REG_AX, 32);
		*to++ = CPF_ALU64_REG(CPF_MOV, aux[0].dst_reg, CPF_REG_AX);
		break;
	case 0: /* Part 2 of CPF_LD | CPF_IMM | CPF_DW. */
		*to++ = CPF_ALU32_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ aux[0].imm);
		*to++ = CPF_ALU32_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_ALU64_REG(CPF_OR,  aux[0].dst_reg, CPF_REG_AX);
		break;

	case CPF_ST | CPF_MEM | CPF_DW:
	case CPF_ST | CPF_MEM | CPF_W:
	case CPF_ST | CPF_MEM | CPF_H:
	case CPF_ST | CPF_MEM | CPF_B:
		*to++ = CPF_ALU64_IMM(CPF_MOV, CPF_REG_AX, imm_rnd ^ from->imm);
		*to++ = CPF_ALU64_IMM(CPF_XOR, CPF_REG_AX, imm_rnd);
		*to++ = CPF_STX_MEM(from->code, from->dst_reg, CPF_REG_AX, from->off);
		break;
	}
out:
	return to - to_buff;
}

static struct cpf_prog *cpf_prog_clone_create(struct cpf_prog *fp_other,
					      gfp_t gfp_extra_flags)
{
	gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
	struct cpf_prog *fp;

	fp = __vmalloc(fp_other->pages * PAGE_SIZE, gfp_flags, PAGE_KERNEL);
	if (fp != NULL) {
		/* aux->prog still points to the fp_other one, so
		 * when promoting the clone to the real program,
		 * this still needs to be adapted.
		 */
		memcpy(fp, fp_other, fp_other->pages * PAGE_SIZE);
	}

	return fp;
}

static void cpf_prog_clone_free(struct cpf_prog *fp)
{
	/* aux was stolen by the other clone, so we cannot free
	 * it from this path! It will be freed eventually by the
	 * other program on release.
	 *
	 * At this point, we don't need a deferred release since
	 * clone is guaranteed to not be locked.
	 */
	fp->aux = NULL;
	__cpf_prog_free(fp);
}

void cpf_jit_prog_release_other(struct cpf_prog *fp, struct cpf_prog *fp_other)
{
	/* We have to repoint aux->prog to self, as we don't
	 * know whether fp here is the clone or the original.
	 */
	fp->aux->prog = fp;
	cpf_prog_clone_free(fp_other);
}

struct cpf_prog *cpf_jit_blind_constants(struct cpf_prog *prog)
{
	struct cpf_insn insn_buff[16], aux[2];
	struct cpf_prog *clone, *tmp;
	int insn_delta, insn_cnt;
	struct cpf_insn *insn;
	int i, rewritten;

	if (!cpf_jit_blinding_enabled())
		return prog;

	clone = cpf_prog_clone_create(prog, GFP_USER);
	if (!clone)
		return ERR_PTR(-ENOMEM);

	insn_cnt = clone->len;
	insn = clone->insnsi;

	for (i = 0; i < insn_cnt; i++, insn++) {
		/* We temporarily need to hold the original ld64 insn
		 * so that we can still access the first part in the
		 * second blinding run.
		 */
		if (insn[0].code == (CPF_LD | CPF_IMM | CPF_DW) &&
		    insn[1].code == 0)
			memcpy(aux, insn, sizeof(aux));

		rewritten = cpf_jit_blind_insn(insn, aux, insn_buff);
		if (!rewritten)
			continue;

		tmp = cpf_patch_insn_single(clone, i, insn_buff, rewritten);
		if (!tmp) {
			/* Patching may have repointed aux->prog during
			 * realloc from the original one, so we need to
			 * fix it up here on error.
			 */
			cpf_jit_prog_release_other(prog, clone);
			return ERR_PTR(-ENOMEM);
		}

		clone = tmp;
		insn_delta = rewritten - 1;

		/* Walk new program and skip insns we just inserted. */
		insn = clone->insnsi + i + insn_delta;
		insn_cnt += insn_delta;
		i        += insn_delta;
	}

	return clone;
}
#endif /* CONFIG_CPF_JIT */

/* Base function for offset calculation. Needs to go into .text section,
 * therefore keeping it non-static as well; will also be used by JITs
 * anyway later on, so do not let the compiler omit it.
 */
noinline u64 __cpf_call_base(u64 r1, u64 r2, u64 r3, u64 r4, u64 r5)
{
	return 0;
}
EXPORT_SYMBOL_GPL(__cpf_call_base);

#ifndef CONFIG_CPF_JIT_ALWAYS_ON
/**
 *	__cpf_prog_run - run eCPF program on a given context
 *	@ctx: is the data we are operating on
 *	@insn: is the array of eCPF instructions
 *
 * Decode and execute eCPF instructions.
 */
static unsigned int ___cpf_prog_run(u64 *regs, const struct cpf_insn *insn,
				    u64 *stack)
{
	u64 tmp;
	static const void *jumptable[256] = {
		[0 ... 255] = &&default_label,
		/* Now overwrite non-defaults ... */
		/* 32 bit ALU operations */
		[CPF_ALU | CPF_ADD | CPF_X] = &&ALU_ADD_X,
		[CPF_ALU | CPF_ADD | CPF_K] = &&ALU_ADD_K,
		[CPF_ALU | CPF_SUB | CPF_X] = &&ALU_SUB_X,
		[CPF_ALU | CPF_SUB | CPF_K] = &&ALU_SUB_K,
		[CPF_ALU | CPF_AND | CPF_X] = &&ALU_AND_X,
		[CPF_ALU | CPF_AND | CPF_K] = &&ALU_AND_K,
		[CPF_ALU | CPF_OR | CPF_X]  = &&ALU_OR_X,
		[CPF_ALU | CPF_OR | CPF_K]  = &&ALU_OR_K,
		[CPF_ALU | CPF_LSH | CPF_X] = &&ALU_LSH_X,
		[CPF_ALU | CPF_LSH | CPF_K] = &&ALU_LSH_K,
		[CPF_ALU | CPF_RSH | CPF_X] = &&ALU_RSH_X,
		[CPF_ALU | CPF_RSH | CPF_K] = &&ALU_RSH_K,
		[CPF_ALU | CPF_XOR | CPF_X] = &&ALU_XOR_X,
		[CPF_ALU | CPF_XOR | CPF_K] = &&ALU_XOR_K,
		[CPF_ALU | CPF_MUL | CPF_X] = &&ALU_MUL_X,
		[CPF_ALU | CPF_MUL | CPF_K] = &&ALU_MUL_K,
		[CPF_ALU | CPF_MOV | CPF_X] = &&ALU_MOV_X,
		[CPF_ALU | CPF_MOV | CPF_K] = &&ALU_MOV_K,
		[CPF_ALU | CPF_DIV | CPF_X] = &&ALU_DIV_X,
		[CPF_ALU | CPF_DIV | CPF_K] = &&ALU_DIV_K,
		[CPF_ALU | CPF_MOD | CPF_X] = &&ALU_MOD_X,
		[CPF_ALU | CPF_MOD | CPF_K] = &&ALU_MOD_K,
		[CPF_ALU | CPF_NEG] = &&ALU_NEG,
		[CPF_ALU | CPF_END | CPF_TO_BE] = &&ALU_END_TO_BE,
		[CPF_ALU | CPF_END | CPF_TO_LE] = &&ALU_END_TO_LE,
		/* 64 bit ALU operations */
		[CPF_ALU64 | CPF_ADD | CPF_X] = &&ALU64_ADD_X,
		[CPF_ALU64 | CPF_ADD | CPF_K] = &&ALU64_ADD_K,
		[CPF_ALU64 | CPF_SUB | CPF_X] = &&ALU64_SUB_X,
		[CPF_ALU64 | CPF_SUB | CPF_K] = &&ALU64_SUB_K,
		[CPF_ALU64 | CPF_AND | CPF_X] = &&ALU64_AND_X,
		[CPF_ALU64 | CPF_AND | CPF_K] = &&ALU64_AND_K,
		[CPF_ALU64 | CPF_OR | CPF_X] = &&ALU64_OR_X,
		[CPF_ALU64 | CPF_OR | CPF_K] = &&ALU64_OR_K,
		[CPF_ALU64 | CPF_LSH | CPF_X] = &&ALU64_LSH_X,
		[CPF_ALU64 | CPF_LSH | CPF_K] = &&ALU64_LSH_K,
		[CPF_ALU64 | CPF_RSH | CPF_X] = &&ALU64_RSH_X,
		[CPF_ALU64 | CPF_RSH | CPF_K] = &&ALU64_RSH_K,
		[CPF_ALU64 | CPF_XOR | CPF_X] = &&ALU64_XOR_X,
		[CPF_ALU64 | CPF_XOR | CPF_K] = &&ALU64_XOR_K,
		[CPF_ALU64 | CPF_MUL | CPF_X] = &&ALU64_MUL_X,
		[CPF_ALU64 | CPF_MUL | CPF_K] = &&ALU64_MUL_K,
		[CPF_ALU64 | CPF_MOV | CPF_X] = &&ALU64_MOV_X,
		[CPF_ALU64 | CPF_MOV | CPF_K] = &&ALU64_MOV_K,
		[CPF_ALU64 | CPF_ARSH | CPF_X] = &&ALU64_ARSH_X,
		[CPF_ALU64 | CPF_ARSH | CPF_K] = &&ALU64_ARSH_K,
		[CPF_ALU64 | CPF_DIV | CPF_X] = &&ALU64_DIV_X,
		[CPF_ALU64 | CPF_DIV | CPF_K] = &&ALU64_DIV_K,
		[CPF_ALU64 | CPF_MOD | CPF_X] = &&ALU64_MOD_X,
		[CPF_ALU64 | CPF_MOD | CPF_K] = &&ALU64_MOD_K,
		[CPF_ALU64 | CPF_NEG] = &&ALU64_NEG,
		/* Call instruction */
		[CPF_JMP | CPF_CALL] = &&JMP_CALL,
		[CPF_JMP | CPF_TAIL_CALL] = &&JMP_TAIL_CALL,
		/* Jumps */
		[CPF_JMP | CPF_JA] = &&JMP_JA,
		[CPF_JMP | CPF_JEQ | CPF_X] = &&JMP_JEQ_X,
		[CPF_JMP | CPF_JEQ | CPF_K] = &&JMP_JEQ_K,
		[CPF_JMP | CPF_JNE | CPF_X] = &&JMP_JNE_X,
		[CPF_JMP | CPF_JNE | CPF_K] = &&JMP_JNE_K,
		[CPF_JMP | CPF_JGT | CPF_X] = &&JMP_JGT_X,
		[CPF_JMP | CPF_JGT | CPF_K] = &&JMP_JGT_K,
		[CPF_JMP | CPF_JLT | CPF_X] = &&JMP_JLT_X,
		[CPF_JMP | CPF_JLT | CPF_K] = &&JMP_JLT_K,
		[CPF_JMP | CPF_JGE | CPF_X] = &&JMP_JGE_X,
		[CPF_JMP | CPF_JGE | CPF_K] = &&JMP_JGE_K,
		[CPF_JMP | CPF_JLE | CPF_X] = &&JMP_JLE_X,
		[CPF_JMP | CPF_JLE | CPF_K] = &&JMP_JLE_K,
		[CPF_JMP | CPF_JSGT | CPF_X] = &&JMP_JSGT_X,
		[CPF_JMP | CPF_JSGT | CPF_K] = &&JMP_JSGT_K,
		[CPF_JMP | CPF_JSLT | CPF_X] = &&JMP_JSLT_X,
		[CPF_JMP | CPF_JSLT | CPF_K] = &&JMP_JSLT_K,
		[CPF_JMP | CPF_JSGE | CPF_X] = &&JMP_JSGE_X,
		[CPF_JMP | CPF_JSGE | CPF_K] = &&JMP_JSGE_K,
		[CPF_JMP | CPF_JSLE | CPF_X] = &&JMP_JSLE_X,
		[CPF_JMP | CPF_JSLE | CPF_K] = &&JMP_JSLE_K,
		[CPF_JMP | CPF_JSET | CPF_X] = &&JMP_JSET_X,
		[CPF_JMP | CPF_JSET | CPF_K] = &&JMP_JSET_K,
		/* Program return */
		[CPF_JMP | CPF_EXIT] = &&JMP_EXIT,
		/* Store instructions */
		[CPF_STX | CPF_MEM | CPF_B] = &&STX_MEM_B,
		[CPF_STX | CPF_MEM | CPF_H] = &&STX_MEM_H,
		[CPF_STX | CPF_MEM | CPF_W] = &&STX_MEM_W,
		[CPF_STX | CPF_MEM | CPF_DW] = &&STX_MEM_DW,
		[CPF_STX | CPF_XADD | CPF_W] = &&STX_XADD_W,
		[CPF_STX | CPF_XADD | CPF_DW] = &&STX_XADD_DW,
		[CPF_ST | CPF_MEM | CPF_B] = &&ST_MEM_B,
		[CPF_ST | CPF_MEM | CPF_H] = &&ST_MEM_H,
		[CPF_ST | CPF_MEM | CPF_W] = &&ST_MEM_W,
		[CPF_ST | CPF_MEM | CPF_DW] = &&ST_MEM_DW,
		/* Load instructions */
		[CPF_LDX | CPF_MEM | CPF_B] = &&LDX_MEM_B,
		[CPF_LDX | CPF_MEM | CPF_H] = &&LDX_MEM_H,
		[CPF_LDX | CPF_MEM | CPF_W] = &&LDX_MEM_W,
		[CPF_LDX | CPF_MEM | CPF_DW] = &&LDX_MEM_DW,
		[CPF_LD | CPF_ABS | CPF_W] = &&LD_ABS_W,
		[CPF_LD | CPF_ABS | CPF_H] = &&LD_ABS_H,
		[CPF_LD | CPF_ABS | CPF_B] = &&LD_ABS_B,
		[CPF_LD | CPF_IND | CPF_W] = &&LD_IND_W,
		[CPF_LD | CPF_IND | CPF_H] = &&LD_IND_H,
		[CPF_LD | CPF_IND | CPF_B] = &&LD_IND_B,
		[CPF_LD | CPF_IMM | CPF_DW] = &&LD_IMM_DW,
	};
	u32 tail_call_cnt = 0;
	void *ptr;
	int off;

#define CONT	 ({ insn++; goto select_insn; })
#define CONT_JMP ({ insn++; goto select_insn; })

select_insn:
	goto *jumptable[insn->code];

	/* ALU */
#define ALU(OPCODE, OP)			\
	ALU64_##OPCODE##_X:		\
		DST = DST OP SRC;	\
		CONT;			\
	ALU_##OPCODE##_X:		\
		DST = (u32) DST OP (u32) SRC;	\
		CONT;			\
	ALU64_##OPCODE##_K:		\
		DST = DST OP IMM;		\
		CONT;			\
	ALU_##OPCODE##_K:		\
		DST = (u32) DST OP (u32) IMM;	\
		CONT;

	ALU(ADD,  +)
	ALU(SUB,  -)
	ALU(AND,  &)
	ALU(OR,   |)
	ALU(LSH, <<)
	ALU(RSH, >>)
	ALU(XOR,  ^)
	ALU(MUL,  *)
#undef ALU
	ALU_NEG:
		DST = (u32) -DST;
		CONT;
	ALU64_NEG:
		DST = -DST;
		CONT;
	ALU_MOV_X:
		DST = (u32) SRC;
		CONT;
	ALU_MOV_K:
		DST = (u32) IMM;
		CONT;
	ALU64_MOV_X:
		DST = SRC;
		CONT;
	ALU64_MOV_K:
		DST = IMM;
		CONT;
	LD_IMM_DW:
		DST = (u64) (u32) insn[0].imm | ((u64) (u32) insn[1].imm) << 32;
		insn++;
		CONT;
	ALU64_ARSH_X:
		(*(s64 *) &DST) >>= SRC;
		CONT;
	ALU64_ARSH_K:
		(*(s64 *) &DST) >>= IMM;
		CONT;
	ALU64_MOD_X:
		if (unlikely(SRC == 0))
			return 0;
		div64_u64_rem(DST, SRC, &tmp);
		DST = tmp;
		CONT;
	ALU_MOD_X:
		if (unlikely((u32)SRC == 0))
			return 0;
		tmp = (u32) DST;
		DST = do_div(tmp, (u32) SRC);
		CONT;
	ALU64_MOD_K:
		div64_u64_rem(DST, IMM, &tmp);
		DST = tmp;
		CONT;
	ALU_MOD_K:
		tmp = (u32) DST;
		DST = do_div(tmp, (u32) IMM);
		CONT;
	ALU64_DIV_X:
		if (unlikely(SRC == 0))
			return 0;
		DST = div64_u64(DST, SRC);
		CONT;
	ALU_DIV_X:
		if (unlikely((u32)SRC == 0))
			return 0;
		tmp = (u32) DST;
		do_div(tmp, (u32) SRC);
		DST = (u32) tmp;
		CONT;
	ALU64_DIV_K:
		DST = div64_u64(DST, IMM);
		CONT;
	ALU_DIV_K:
		tmp = (u32) DST;
		do_div(tmp, (u32) IMM);
		DST = (u32) tmp;
		CONT;
	ALU_END_TO_BE:
		switch (IMM) {
		case 16:
			DST = (__force u16) cpu_to_be16(DST);
			break;
		case 32:
			DST = (__force u32) cpu_to_be32(DST);
			break;
		case 64:
			DST = (__force u64) cpu_to_be64(DST);
			break;
		}
		CONT;
	ALU_END_TO_LE:
		switch (IMM) {
		case 16:
			DST = (__force u16) cpu_to_le16(DST);
			break;
		case 32:
			DST = (__force u32) cpu_to_le32(DST);
			break;
		case 64:
			DST = (__force u64) cpu_to_le64(DST);
			break;
		}
		CONT;

	/* CALL */
	JMP_CALL:
		/* Function call scratches CPF_R1-CPF_R5 registers,
		 * preserves CPF_R6-CPF_R9, and stores return value
		 * into CPF_R0.
		 */
		CPF_R0 = (__cpf_call_base + insn->imm)(CPF_R1, CPF_R2, CPF_R3,
						       CPF_R4, CPF_R5);
		CONT;

	JMP_TAIL_CALL: {
		struct cpf_map *map = (struct cpf_map *) (unsigned long) CPF_R2;
		struct cpf_array *array = container_of(map, struct cpf_array, map);
		struct cpf_prog *prog;
		u32 index = CPF_R3;

		if (unlikely(index >= array->map.max_entries))
			goto out;
		if (unlikely(tail_call_cnt > MAX_TAIL_CALL_CNT))
			goto out;

		tail_call_cnt++;

		prog = READ_ONCE(array->ptrs[index]);
		if (!prog)
			goto out;

		/* ARG1 at this point is guaranteed to point to CTX from
		 * the verifier side due to the fact that the tail call is
		 * handeled like a helper, that is, cpf_tail_call_proto,
		 * where arg1_type is CARG_PTR_TO_CTX.
		 */
		insn = prog->insnsi;
		goto select_insn;
out:
		CONT;
	}
	/* JMP */
	JMP_JA:
		insn += insn->off;
		CONT;
	JMP_JEQ_X:
		if (DST == SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JEQ_K:
		if (DST == IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JNE_X:
		if (DST != SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JNE_K:
		if (DST != IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JGT_X:
		if (DST > SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JGT_K:
		if (DST > IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JLT_X:
		if (DST < SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JLT_K:
		if (DST < IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JGE_X:
		if (DST >= SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JGE_K:
		if (DST >= IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JLE_X:
		if (DST <= SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JLE_K:
		if (DST <= IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSGT_X:
		if (((s64) DST) > ((s64) SRC)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSGT_K:
		if (((s64) DST) > ((s64) IMM)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSLT_X:
		if (((s64) DST) < ((s64) SRC)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSLT_K:
		if (((s64) DST) < ((s64) IMM)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSGE_X:
		if (((s64) DST) >= ((s64) SRC)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSGE_K:
		if (((s64) DST) >= ((s64) IMM)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSLE_X:
		if (((s64) DST) <= ((s64) SRC)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSLE_K:
		if (((s64) DST) <= ((s64) IMM)) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSET_X:
		if (DST & SRC) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_JSET_K:
		if (DST & IMM) {
			insn += insn->off;
			CONT_JMP;
		}
		CONT;
	JMP_EXIT:
		return CPF_R0;

	/* STX and ST and LDX*/
#define LDST(SIZEOP, SIZE)						\
	STX_MEM_##SIZEOP:						\
		*(SIZE *)(unsigned long) (DST + insn->off) = SRC;	\
		CONT;							\
	ST_MEM_##SIZEOP:						\
		*(SIZE *)(unsigned long) (DST + insn->off) = IMM;	\
		CONT;							\
	LDX_MEM_##SIZEOP:						\
		DST = *(SIZE *)(unsigned long) (SRC + insn->off);	\
		CONT;

	LDST(B,   u8)
	LDST(H,  u16)
	LDST(W,  u32)
	LDST(DW, u64)
#undef LDST
	STX_XADD_W: /* lock xadd *(u32 *)(dst_reg + off16) += src_reg */
		atomic_add((u32) SRC, (atomic_t *)(unsigned long)
			   (DST + insn->off));
		CONT;
	STX_XADD_DW: /* lock xadd *(u64 *)(dst_reg + off16) += src_reg */
		atomic64_add((u64) SRC, (atomic64_t *)(unsigned long)
			     (DST + insn->off));
		CONT;
	LD_ABS_W: /* CPF_R0 = ntohl(*(u32 *) (skb->data + imm32)) */
		off = IMM;
load_word:
		/* CPF_LD + BPD_ABS and CPF_LD + CPF_IND insns are only
		 * appearing in the programs where ctx == skb
		 * (see may_access_skb() in the verifier). All programs
		 * keep 'ctx' in regs[CPF_REG_CTX] == CPF_R6,
		 * cpf_convert_filter() saves it in CPF_R6, internal CPF
		 * verifier will check that CPF_R6 == ctx.
		 *
		 * CPF_ABS and CPF_IND are wrappers of function calls,
		 * so they scratch CPF_R1-CPF_R5 registers, preserve
		 * CPF_R6-CPF_R9, and store return value into CPF_R0.
		 *
		 * Implicit input:
		 *   ctx == skb == CPF_R6 == CTX
		 *
		 * Explicit input:
		 *   SRC == any register
		 *   IMM == 32-bit immediate
		 *
		 * Output:
		 *   CPF_R0 - 8/16/32-bit skb data converted to cpu endianness
		 */

		ptr = cpf_load_pointer((struct sk_buff *) (unsigned long) CTX, off, 4, &tmp);
		if (likely(ptr != NULL)) {
			CPF_R0 = get_unaligned_be32(ptr);
			CONT;
		}

		return 0;
	LD_ABS_H: /* CPF_R0 = ntohs(*(u16 *) (skb->data + imm32)) */
		off = IMM;
load_half:
		ptr = cpf_load_pointer((struct sk_buff *) (unsigned long) CTX, off, 2, &tmp);
		if (likely(ptr != NULL)) {
			CPF_R0 = get_unaligned_be16(ptr);
			CONT;
		}

		return 0;
	LD_ABS_B: /* CPF_R0 = *(u8 *) (skb->data + imm32) */
		off = IMM;
load_byte:
		ptr = cpf_load_pointer((struct sk_buff *) (unsigned long) CTX, off, 1, &tmp);
		if (likely(ptr != NULL)) {
			CPF_R0 = *(u8 *)ptr;
			CONT;
		}

		return 0;
	LD_IND_W: /* CPF_R0 = ntohl(*(u32 *) (skb->data + src_reg + imm32)) */
		off = IMM + SRC;
		goto load_word;
	LD_IND_H: /* CPF_R0 = ntohs(*(u16 *) (skb->data + src_reg + imm32)) */
		off = IMM + SRC;
		goto load_half;
	LD_IND_B: /* CPF_R0 = *(u8 *) (skb->data + src_reg + imm32) */
		off = IMM + SRC;
		goto load_byte;

	default_label:
		/* If we ever reach this, we have a bug somewhere. */
		WARN_RATELIMIT(1, "unknown opcode %02x\n", insn->code);
		return 0;
}
STACK_FRAME_NON_STANDARD(___cpf_prog_run); /* jump table */

#define PROG_NAME(stack_size) __cpf_prog_run##stack_size
#define DEFINE_CPF_PROG_RUN(stack_size) \
static unsigned int PROG_NAME(stack_size)(const void *ctx, const struct cpf_insn *insn) \
{ \
	u64 stack[stack_size / sizeof(u64)]; \
	u64 regs[MAX_CPF_REG]; \
\
	FP = (u64) (unsigned long) &stack[ARRAY_SIZE(stack)]; \
	ARG1 = (u64) (unsigned long) ctx; \
	return ___cpf_prog_run(regs, insn, stack); \
}

#define EVAL1(FN, X) FN(X)
#define EVAL2(FN, X, Y...) FN(X) EVAL1(FN, Y)
#define EVAL3(FN, X, Y...) FN(X) EVAL2(FN, Y)
#define EVAL4(FN, X, Y...) FN(X) EVAL3(FN, Y)
#define EVAL5(FN, X, Y...) FN(X) EVAL4(FN, Y)
#define EVAL6(FN, X, Y...) FN(X) EVAL5(FN, Y)

EVAL6(DEFINE_CPF_PROG_RUN, 32, 64, 96, 128, 160, 192);
EVAL6(DEFINE_CPF_PROG_RUN, 224, 256, 288, 320, 352, 384);
EVAL4(DEFINE_CPF_PROG_RUN, 416, 448, 480, 512);

#define PROG_NAME_LIST(stack_size) PROG_NAME(stack_size),

static unsigned int (*interpreters[])(const void *ctx,
				      const struct cpf_insn *insn) = {
EVAL6(PROG_NAME_LIST, 32, 64, 96, 128, 160, 192)
EVAL6(PROG_NAME_LIST, 224, 256, 288, 320, 352, 384)
EVAL4(PROG_NAME_LIST, 416, 448, 480, 512)
};

#else
static unsigned int __cpf_prog_ret0(const void *ctx,
				    const struct cpf_insn *insn)
{
	return 0;
}
#endif

bool cpf_prog_array_compatible(struct cpf_array *array,
			       const struct cpf_prog *fp)
{
	if (!array->owner_prog_type) {
		/* There's no owner yet where we could check for
		 * compatibility.
		 */
		array->owner_prog_type = fp->type;
		array->owner_jited = fp->jited;

		return true;
	}

	return array->owner_prog_type == fp->type &&
	       array->owner_jited == fp->jited;
}

static int cpf_check_tail_call(const struct cpf_prog *fp)
{
	struct cpf_prog_aux *aux = fp->aux;
	int i;

	for (i = 0; i < aux->used_map_cnt; i++) {
		struct cpf_map *map = aux->used_maps[i];
		struct cpf_array *array;

		if (map->map_type != CPF_MAP_TYPE_PROG_ARRAY)
			continue;

		array = container_of(map, struct cpf_array, map);
		if (!cpf_prog_array_compatible(array, fp))
			return -EINVAL;
	}

	return 0;
}

/**
 *	cpf_prog_select_runtime - select exec runtime for CPF program
 *	@fp: cpf_prog populated with internal CPF program
 *	@err: pointer to error variable
 *
 * Try to JIT eCPF program, if JIT is not available, use interpreter.
 * The CPF program will be executed via CPF_PROG_RUN() macro.
 */
struct cpf_prog *cpf_prog_select_runtime(struct cpf_prog *fp, int *err)
{
#ifndef CONFIG_CPF_JIT_ALWAYS_ON
	u32 stack_depth = max_t(u32, fp->aux->stack_depth, 1);

	fp->cpf_func = interpreters[(round_up(stack_depth, 32) / 32) - 1];
#else
	fp->cpf_func = __cpf_prog_ret0;
#endif

	/* eCPF JITs can rewrite the program in case constant
	 * blinding is active. However, in case of error during
	 * blinding, cpf_int_jit_compile() must always return a
	 * valid program, which in this case would simply not
	 * be JITed, but falls back to the interpreter.
	 */
	fp = cpf_int_jit_compile(fp);
#ifdef CONFIG_CPF_JIT_ALWAYS_ON
	if (!fp->jited) {
		*err = -ENOTSUPP;
		return fp;
	}
#endif
	cpf_prog_lock_ro(fp);

	/* The tail call compatibility check can only be done at
	 * this late stage as we need to determine, if we deal
	 * with JITed or non JITed program concatenations and not
	 * all eCPF JITs might immediately support all features.
	 */
	*err = cpf_check_tail_call(fp);

	return fp;
}
EXPORT_SYMBOL_GPL(cpf_prog_select_runtime);

static void cpf_prog_free_deferred(struct work_struct *work)
{
	struct cpf_prog_aux *aux;

	aux = container_of(work, struct cpf_prog_aux, work);
	cpf_jit_free(aux->prog);
}

/* Free internal CPF program */
void cpf_prog_free(struct cpf_prog *fp)
{
	struct cpf_prog_aux *aux = fp->aux;

	INIT_WORK(&aux->work, cpf_prog_free_deferred);
	schedule_work(&aux->work);
}
EXPORT_SYMBOL_GPL(cpf_prog_free);

/* RNG for unpriviledged user space with separated state from prandom_u32(). */
static DEFINE_PER_CPU(struct rnd_state, cpf_user_rnd_state);

void cpf_user_rnd_init_once(void)
{
	prandom_init_once(&cpf_user_rnd_state);
}

CPF_CALL_0(cpf_user_rnd_u32)
{
	/* Should someone ever have the rather unwise idea to use some
	 * of the registers passed into this function, then note that
	 * this function is called from native eCPF and classic-to-eCPF
	 * transformations. Register assignments from both sides are
	 * different, f.e. classic always sets fn(ctx, A, X) here.
	 */
	struct rnd_state *state;
	u32 res;

	state = &get_cpu_var(cpf_user_rnd_state);
	res = prandom_u32_state(state);
	put_cpu_var(cpf_user_rnd_state);

	return res;
}

/* Weak definitions of helper functions in case we don't have cpf syscall. */
const struct cpf_func_proto cpf_map_lookup_elem_proto __weak;
const struct cpf_func_proto cpf_map_update_elem_proto __weak;
const struct cpf_func_proto cpf_map_delete_elem_proto __weak;

const struct cpf_func_proto cpf_get_prandom_u32_proto __weak;
const struct cpf_func_proto cpf_get_smp_processor_id_proto __weak;
const struct cpf_func_proto cpf_get_numa_node_id_proto __weak;
const struct cpf_func_proto cpf_ktime_get_ns_proto __weak;

const struct cpf_func_proto cpf_get_current_pid_tgid_proto __weak;
const struct cpf_func_proto cpf_get_current_uid_gid_proto __weak;
const struct cpf_func_proto cpf_get_current_comm_proto __weak;
const struct cpf_func_proto cpf_sock_map_update_proto __weak;

const struct cpf_func_proto * __weak cpf_get_trace_printk_proto(void)
{
	return NULL;
}

u64 __weak
cpf_event_output(struct cpf_map *map, u64 flags, void *meta, u64 meta_size,
		 void *ctx, u64 ctx_size, cpf_ctx_copy_t ctx_copy)
{
	return -ENOTSUPP;
}

/* Always built-in helper functions. */
const struct cpf_func_proto cpf_tail_call_proto = {
	.func		= NULL,
	.gpl_only	= false,
	.ret_type	= CRET_VOID,
	.arg1_type	= CARG_PTR_TO_CTX,
	.arg2_type	= CARG_CONST_MAP_PTR,
	.arg3_type	= CARG_ANYTHING,
};

/* Stub for JITs that only support cCPF. eCPF programs are interpreted.
 * It is encouraged to implement cpf_int_jit_compile() instead, so that
 * eCPF and implicitly also cCPF can get JITed!
 */
struct cpf_prog * __weak cpf_int_jit_compile(struct cpf_prog *prog)
{
	return prog;
}

/* Stub for JITs that support eCPF. All cCPF code gets transformed into
 * eCPF by the kernel and is later compiled by cpf_int_jit_compile().
 */
void __weak cpf_jit_compile(struct cpf_prog *prog)
{
}

bool __weak cpf_helper_changes_pkt_data(void *func)
{
	return false;
}

/* To execute LD_ABS/LD_IND instructions __cpf_prog_run() may call
 * skb_copy_bits(), so provide a weak definition of it for NET-less config.
 */
int __weak skb_copy_bits(const struct sk_buff *skb, int offset, void *to,
			 int len)
{
	return -EFAULT;
}

/* All definitions of tracepoints related to CPF. */
// #define CREATE_TRACE_POINTS
// #include <linux/cpf_trace.h>

// EXPORT_TRACEPOINT_SYMBOL_GPL(ydp_exception);

// EXPORT_TRACEPOINT_SYMBOL_GPL(cpf_prog_get_type);
// EXPORT_TRACEPOINT_SYMBOL_GPL(cpf_prog_put_rcu);
