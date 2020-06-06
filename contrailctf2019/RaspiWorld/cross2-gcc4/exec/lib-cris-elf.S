/*
 * Use break 13 syscall.
 * See gdb/sim/cris/traps.c:cris_break_13_handler()
 * (syscall_map)
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
	move.d	_estack, sp
	jsr	_main
	nop

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
	moveq	SYS_exit, r9
	break	13
	ret
	nop

	.globl	___read
	.type	___read, @function
___read:
	moveq	SYS_read, r9
	break	13
	ret
	nop

	.globl	___write
	.type	___write, @function
___write:
	moveq	SYS_write, r9
	break	13
	ret
	nop

	.globl	___open
	.type	___open, @function
___open:
	/*
	 * Flags of open() exchanged by open_map[]
	 * from target value to host value.
	 * See gdb/sim/common/callback.c:cb_target_to_host_open()
	 * Specify O_RDWR, O_CREAT, O_TRUNC flags by the target value.
	 * (See gdb/sim/cris/traps.c:open_map[])
	 */
	move.d	0x0242, r11
	moveq	SYS_open, r9
	break	13
	ret
	nop

	.globl	___close
	.type	___close, @function
___close:
	moveq	SYS_close, r9
	break	13
	ret
	nop
