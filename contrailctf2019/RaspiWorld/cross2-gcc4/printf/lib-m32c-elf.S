/*
 * Use syscall.
 * See gdb/sim/m32c/syscalls.c:m32c_syscall(),mem.c:mem_put_byte()
 * (case 0x400:)
 */

/* See gdb/sim/m32c/syscall.h */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

#define SYSCALL_ADDR 0x400

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	ldc	#_estack, sp
	jsr.a	__startmain

	mov.w:g	r0, r1
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
	mov.w:q	#SYS_exit, r0
	mov.w:g	r0, SYSCALL_ADDR
	rts

	.globl	___read
	.type	___read, @function
___read:
	mov.w:q	#SYS_read, r0
	mov.w:g	r0, SYSCALL_ADDR
	rts

	.globl	___write
	.type	___write, @function
___write:
	mov.w:q	#SYS_write, r0
	mov.w:g	r0, SYSCALL_ADDR
	rts

	.globl	___open
	.type	___open, @function
___open:
	mov.w:q	#SYS_open, r0
	mov.w:g	r0, SYSCALL_ADDR
	rts

	.globl	___close
	.type	___close, @function
___close:
	mov.w:q	#SYS_close, r0
	mov.w:g	r0, SYSCALL_ADDR
	rts
