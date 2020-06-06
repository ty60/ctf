/*
 * Use monitor trap.
 * See gdb/sim/sh/interp.c:trap()
 */

#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	mov.l	_stack_addr, sp
	mov.l	_main_addr, r1
	jsr	@r1
	nop

	mov	r0, r5
	/* fall through */

	.globl	___r_exit
	.type	___r_exit, @function
___r_exit:
	mov	#SYS_exit, r4
	trapa	#34
	rts
	nop

	.globl	___r_read
	.type	___r_read, @function
___r_read:
	mov	#SYS_read, r4
	trapa	#34
	rts
	nop

	.globl	___r_write
	.type	___r_write, @function
___r_write:
	mov	#SYS_write, r4
	trapa	#34
	rts
	nop

	.globl	___r_open
	.type	___r_open, @function
___r_open:
	mov	#SYS_open, r4
	trapa	#34
	rts
	nop

	.globl	___r_close
	.type	___r_close, @function
___r_close:
	mov	#SYS_close, r4
	trapa	#34
	rts
	nop

.align 4
_stack_addr:
	.long	_estack
_main_addr:
	.long	_main
