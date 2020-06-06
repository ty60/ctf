/*
 * Use reserved instruction.
 * See gdb/sim/mips/interp.c:signal_exception(),sim_monitor()
 * (ReservedInstruction)
 * Memory address is defined by K0BASE. (See gdb/sim/mips/interp.c)
 */

#define SYS_exit  17
#define SYS_open   6
#define SYS_read   7
#define SYS_write  8
#define SYS_close 10

#define RSVD_INSTRUCTION 0x00000005
#define RSVD(arg) ((((arg) << 1) << 6) | RSVD_INSTRUCTION)

/* #define EXIT_BY_SYSCALL */
/* #define EXIT_BY_BREAK */

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	lw	$2, _stack_addr
	move	$sp, $2
	lw	$2, _gp_addr
	move	$gp, $2
	jal	main
	nop

	move	$a0, $v0
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
#ifdef EXIT_BY_SYSCALL
	.long	RSVD(SYS_exit)
#elif defined(EXIT_BY_BREAK)
	/*
	 * To avoid exit message.
	 * (See gdb/sim/mips/mips.igen:break,HALT_INSTRUCTION)
	 */
	break	1023
#else /* 0x03ff000d is same as break 1023. */
	.long	0x03ff000d
#endif
	jr	$ra
	nop

	.globl	__read
	.type	__read, @function
__read:
	.long	RSVD(SYS_read)
	jr	$ra
	nop

	.globl	__write
	.type	__write, @function
__write:
	.long	RSVD(SYS_write)
	jr	$ra
	nop

	.globl	__open
	.type	__open, @function
__open:
	.long	RSVD(SYS_open)
	jr	$ra
	nop

	.globl	__close
	.type	__close, @function
__close:
	.long	RSVD(SYS_close)
	jr	$ra
	nop

	.align 4
_stack_addr:
	.long	_estack
_gp_addr:
	.long	_gp
