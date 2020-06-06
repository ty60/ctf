/*
 * Use trap 1.
 * See gdb/sim/mcore/interp.c:handle_trap1(),sim_resume()(case 0x9:)
 * See gdb/sim/mcore/interp.c:util(),process_stub()
 */

#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	lrw	r7, _estack
	jsri	_startmain

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	/* See interp.c:util() (case 0:) */
	.short	0x5000
	jmp	r15

	.globl	__read
	.type	__read, @function
__read:
	movi	r1, SYS_read
	trap	1
	jmp	r15

	.globl	__write
	.type	__write, @function
__write:
	movi	r1, SYS_write
	trap	1
	jmp	r15

	.globl	__open
	.type	__open, @function
__open:
	movi	r1, SYS_open
	trap	1
	jmp	r15

	.globl	__close
	.type	__close, @function
__close:
	movi	r1, SYS_close
	trap	1
	jmp	r15
