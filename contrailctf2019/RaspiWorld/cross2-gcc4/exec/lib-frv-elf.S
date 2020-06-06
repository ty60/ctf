/*
 * Use special purpose trap.
 * See gdb/sim/frv/traps.c:frv_itrap()
 * (TIRA insn)(case TRAP_SYSCALL:)
 * See gdb/sim/frv/sem.c:SEM_FN_NAME (frvbf,tira), SEM_FN_NAME (frvbf,tieq)
 * (tira always call trap, but tieq call trap only equal, ...)
 * See gdb/sim/testsuite/frv-elf/hello.s
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_frv) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

/* See traps.c:frv_itrap() and gdb/sim/testsuite/frv-elf/hello.s */
#define TRAP_SYSCALL 0

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	sethi	#hi(_estack), sp
	setlo	#lo(_estack), sp
	sethi	#hi(_gp), gr16
	setlo	#lo(_gp), gr16
	call	main
	nop
	nop
	nop

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	setlos	SYS_exit, gr7
	tira	gr0, TRAP_SYSCALL
	bralr
	nop

	.globl	__read
	.type	__read, @function
__read:
	setlos	SYS_read, gr7
	tira	gr0, TRAP_SYSCALL
	bralr
	nop

	.globl	__write
	.type	__write, @function
__write:
	setlos	SYS_write, gr7
	tira	gr0, TRAP_SYSCALL
	bralr
	nop

	.globl	__open
	.type	__open, @function
__open:
	setlos	SYS_open, gr7
	tira	gr0, TRAP_SYSCALL
	bralr
	nop

	.globl	__close
	.type	__close, @function
__close:
	setlos	SYS_close, gr7
	tira	gr0, TRAP_SYSCALL
	bralr
	nop

	.globl	__main
	.type	__main, @function
__main:
	bralr
	nop
	nop
	nop
