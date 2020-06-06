/*
 * Use special instruction.
 * See gdb/sim/m68hc11/emulos.c:emul_os()
 * Warning: emul_write() uses file descriptor 0 to write.
 *          (FreeBSD/Linux can use it.)
 */

#define SYS_exit  0x03
#define SYS_write 0x01
#define SYSCALL   0xcd

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	ldy	#_estack
	tys
	jsr	main

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	.byte	SYSCALL
	.byte	SYS_exit
	rts

	.globl	__read
	.type	__read, @function
__read:
	rts

	.globl	__write
	.type	__write, @function
__write:
	tsy
	ldx	2, y
	ldd	6, y
	.byte	SYSCALL
	.byte	SYS_write
	rts

	.globl	__open
	.type	__open, @function
__open:
	rts

	.globl	__close
	.type	__close, @function
__close:
	rts
