/*
 * Use system call trap.
 * See gdb/sim/cr16/simops.c:OP_C_C() (case 8:)
 * See gdb/sim/testsuite/sim/cr16/hello.ms
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_cr16) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	movw	$_estack:l, sp
	bal	(ra),__startmain

	movw	r0, r2
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
	movw	$SYS_exit:s, r0
	excp	8
	jump	(ra)

	.globl	___read
	.type	___read, @function
___read:
	movw	$SYS_read:s, r0
	excp	8
	jump	(ra)

	.globl	___write
	.type	___write, @function
___write:
	movw	$SYS_write:s, r0
	excp	8
	jump	(ra)

	.globl	___open
	.type	___open, @function
___open:
	movw	$SYS_open:s, r0
	excp	8
	jump	(ra)

	.globl	___close
	.type	___close, @function
___close:
	movw	$SYS_close:s, r0
	excp	8
	jump	(ra)
