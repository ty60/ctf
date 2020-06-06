/*
 * Use trap 31.
 * See gdb/sim/v850/simops.c:OP_10007E0()
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_v850) */
#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	movhi	hi(_estack), r0, sp
	movea	lo(_estack), sp, sp
	movhi	hi(_gp), r0, gp
	movea	lo(_gp), gp, gp
	jarl	_main, lp

	mov	r10, r7
	/* fall through */

	.globl	___r_exit
	.type	___r_exit, @function
___r_exit:
	mov	SYS_exit, r6
	trap	31
	jmp	[lp

	.globl	___r_read
	.type	___r_read, @function
___r_read:
	mov	SYS_read, r6
	trap	31
	jmp	[lp

	.globl	___r_write
	.type	___r_write, @function
___r_write:
	mov	SYS_write, r6
	trap	31
	jmp	[lp

	.globl	___r_open
	.type	___r_open, @function
___r_open:
	mov	SYS_open, r6
	trap	31
	jmp	[lp

	.globl	___r_close
	.type	___r_close, @function
___r_close:
	mov	SYS_close, r6
	trap	31
	jmp	[lp

/*
 * Functions to save/restore registers.
 * Warning: ABI is replaced with a new one, and functions to save/restore
 *          are updated from before.
 * See gcc/gcc/ChangeLog-2010 (2010-07-26)
 * See gcc/libgcc/config/v850/lib1funcs.S
 */

	.globl	__save_r28_r31
__save_r28_r31:
	addi	-12, sp, sp
	st.w	r29, 0[sp
	st.w	r28, 4[sp
	st.w	r31, 8[sp
	jmp	[r10

	.globl	__save_r29_r31
__save_r29_r31:
	addi	-8, sp, sp
	st.w	r29, 0[sp
	st.w	r31, 4[sp
	jmp	[r10

/* __save_r30_r31 is unneed. */

	.globl	__save_r31
__save_r31:
	addi	-4, sp, sp
	st.w	r31, 0[sp
	jmp	[r10

	.globl	__return_r28_r31
__return_r28_r31:
	ld.w	0[sp, r29
	ld.w	4[sp, r28
	ld.w	8[sp, r31
	addi	12, sp, sp
	jmp	[lp

	.globl	__return_r29_r31
__return_r29_r31:
	ld.w	0[sp, r29
	ld.w	4[sp, r31
	addi	8, sp, sp
	jmp	[lp

/* __return_r30_r31 is unneed. */

	.globl	__return_r31
__return_r31:
	ld.w	0[sp, r31
	addi	4, sp, sp
	jmp	[lp
