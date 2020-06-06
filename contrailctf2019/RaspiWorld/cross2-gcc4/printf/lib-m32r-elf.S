/*
 * Use trap.
 * See gdb/sim/m32r/traps.c:m32r_trap()
 * (case TRAP_SYSCALL :)
 * See gdb/sim/testsuite/m32r-elf/hello.s
 * See gdb/sim/testsuite/sim/m32r/hello.ms
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_m32r) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

#define TRAP_SYSCALL 0

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	ld24	sp, _estack
	bl	_startmain

	mv	r1, r0
	/* fall through */

	.globl	__r_exit
	.type	__r_exit, @function
__r_exit:
	ldi	r0, #SYS_exit
	trap	#TRAP_SYSCALL
	jmp	lr

	.globl	__r_read
	.type	__r_read, @function
__r_read:
	ldi	r0, #SYS_read
	trap	#TRAP_SYSCALL
	jmp	lr

	.globl	__r_write
	.type	__r_write, @function
__r_write:
	ldi	r0, #SYS_write
	trap	#TRAP_SYSCALL
	jmp	lr

	.globl	__r_open
	.type	__r_open, @function
__r_open:
	ldi	r0, #SYS_open
	trap	#TRAP_SYSCALL
	jmp	lr

	.globl	__r_close
	.type	__r_close, @function
__r_close:
	ldi	r0, #SYS_close
	trap	#TRAP_SYSCALL
	jmp	lr
