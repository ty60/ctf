/*
 * Use NetBSD/Linux system call emulation.
 * See gdb/sim/ppc/emul_generic.c,emul_unix.c,emul_netbsd.c
 * Use -e option to run simulator. (Example: -e netbsd or -e linux)
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
	lis	%r1, _estack@h
	ori	%r1, %r1, _estack@l
	addi	%r1, %r1, -16
	bl	_startmain

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	li	%r0, SYS_exit
	sc
	b	_check_err

	.globl	__read
	.type	__read, @function
__read:
	li	%r0, SYS_read
	sc
	b	_check_err

	.globl	__write
	.type	__write, @function
__write:
	li	%r0, SYS_write
	sc
	b	_check_err

	.globl	__open
	.type	__open, @function
__open:
	li	%r0, SYS_open
	sc
	b	_check_err

	.globl	__close
	.type	__close, @function
__close:
	li	%r0, SYS_close
	sc
	b	_check_err

/*
 * System call return result by CR.
 * See gdb/sim/ppc/emul_generic.c:emul_write_status()
 */
_check_err:
	bc	12, 3, _err
	blr

_err:
	li	%r3, -1
	blr
