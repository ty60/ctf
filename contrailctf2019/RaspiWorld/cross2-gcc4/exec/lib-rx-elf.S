/*
 * Use syscall.
 * See gdb/sim/rx/rx.c:decode_opcode() (case RXO_int:)
 * See gdb/sim/rx/syscalls.c:rx_syscall()
 */

/* See gdb/sim/rx/syscall.h */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	mov.l	#_estack, r0
	bsr.a	_main

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
	mov	#SYS_exit, r5
	int	#255
	rts

	.globl	___read
	.type	___read, @function
___read:
	mov	#SYS_read, r5
	int	#255
	rts

	.globl	___write
	.type	___write, @function
___write:
	mov	#SYS_write, r5
	int	#255
	rts

	.globl	___open
	.type	___open, @function
___open:
	mov	#SYS_open, r5
	int	#255
	rts

	.globl	___close
	.type	___close, @function
___close:
	mov	#SYS_close, r5
	int	#255
	rts
