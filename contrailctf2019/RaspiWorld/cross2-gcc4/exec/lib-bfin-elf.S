/*
 * Use system call.
 * See gdb/sim/bfin/interp.c:bfin_syscall(),dv-bfin_cec.c:cec_exception()
 * (case VEC_SYS:)
 * See gdb/sim/testsuite/sim/bfin/cec-system-call.S (EXCPT 0)
 */

/*
 * System call number is changed from target to host by mapping table.
 * See gdb/sim/common/callback.c:cb_target_to_host_syscall()
 * See gdb/sim/bfin/interp.c:bfin_syscall() (call cb_target_to_host_syscall())
 * See gdb/sim/bfin/linux-targ-map.h:cb_linux_syscall_map[]
 * See gdb/include/gdb/callback.h (difinition of CB_SYS_XXXX)
 */
#define TARGET_LINUX_SYS_exit  1
#define TARGET_LINUX_SYS_read  3
#define TARGET_LINUX_SYS_write 4
#define TARGET_LINUX_SYS_open  5
#define TARGET_LINUX_SYS_close 6

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	SP.H	= _estack
	SP.L	= _estack
	CALL	_main

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	___exit
	.type	___exit, @function
___exit:
	P0	= TARGET_LINUX_SYS_exit
	EXCPT	0
	RTS

	.globl	___read
	.type	___read, @function
___read:
	P0	= TARGET_LINUX_SYS_read
	EXCPT	0
	RTS

	.globl	___write
	.type	___write, @function
___write:
	P0	= TARGET_LINUX_SYS_write
	EXCPT	0
	RTS

	.globl	___open
	.type	___open, @function
___open:
	P0	= TARGET_LINUX_SYS_open
	EXCPT	0
	RTS

	.globl	___close
	.type	___close, @function
___close:
	P0	= TARGET_LINUX_SYS_close
	EXCPT	0
	RTS
