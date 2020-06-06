/*
 * Use magic trap.
 * See gdb/sim/h8300/compile.c:decode()
 * (O_JSR)
 */

#define SYS_open  0xc5
#define SYS_read  0xc6
#define SYS_write 0xc7
#define SYS_close 0xc9

/* #define SYSCALL_BY_JSR */

#ifdef SYSCALL_BY_JSR /* Use magic traps by jump to special address. */
#define TRAP(addr) jsr (addr)
#else /* Direct code to avoid warning: branch operand has odd offset */
#define TRAP(addr) .long (0x5e000000 | (addr))
#endif

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	mov.w	#_estack, sp
	jsr	__startmain

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
/* See gdb/sim/h8300/compile.c:sim_resume() (O_SLEEP) */
	mov.w	#0xdead, r1
	mov.w	#0xbeef, r2
	sleep
	rts

	.globl	___read
	.type	___read, @function
___read:
	TRAP(SYS_read)
	rts

	.globl	___write
	.type	___write, @function
___write:
	TRAP(SYS_write)
	rts

	.globl	___open
	.type	___open, @function
___open:
	/*
	 * Normally, arguments are got from registers,
	 * but open() get second argument from stack. (Why?)
	 * See gdb/sim/h8300/compile.c:sim_resume()
	 * (case O (O_SYS_OPEN, SB):)
	 */
	mov.w	r1, @-sp
	subs	#2, sp
	TRAP(SYS_open)
	adds	#2, sp
	adds	#2, sp
	rts

	.globl	___close
	.type	___close, @function
___close:
	TRAP(SYS_close)
	rts
