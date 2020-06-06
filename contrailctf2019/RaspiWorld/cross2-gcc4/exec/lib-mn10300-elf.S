/*
 * Use syscall.
 * See gdb/sim/mn10300/mn10300.igen,op_utils.c:do_syscall()
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_mn10300) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	mov	_estack, a0
	mov	a0, sp
	call	_main, [], 0

	mov	d0, d1
	/* fall through */

	.globl	___r_exit
	.type	___r_exit, @function
___r_exit:
	mov	SYS_exit, d0
	syscall
	rets

	.globl	___r_read
	.type	___r_read, @function
___r_read:
	mov	SYS_read, d0
	syscall
	rets

	.globl	___r_write
	.type	___r_write, @function
___r_write:
	mov	SYS_write, d0
	syscall
	rets

	.globl	___r_open
	.type	___r_open, @function
___r_open:
	mov	SYS_open, d0
	syscall
	rets

	.globl	___r_close
	.type	___r_close, @function
___r_close:
	mov	SYS_close, d0
	syscall
	rets
