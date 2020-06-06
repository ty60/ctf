/*
 * Use SWI instruction.
 * See gdb/sim/arm/armemu.c:ARMul_Emulate32(),armos.c:ARMul_OSHandleSWI()
 * (case 0xf0:)
 * See gdb/sim/testsuite/sim/arm/hello.ms
 */

#define SWI_Exit  0x11
#define SWI_Open  0x66
#define SWI_Close 0x68
#define SWI_Write 0x69
#define SWI_Read  0x6a

#define SYSCALL_BY_SWI
#ifdef SYSCALL_BY_SWI
#define SWI(arg) swi (arg)
#else
#define TOPBITS_AL (14 << 28) /* condition code */
#define SWI(arg) .long (TOPBITS_AL | (0xf0 << 20) | (arg))
#endif

#define TO_THUMB_BY_LDR

	.section .text

	.arm
	.globl	_start
	.type	_start, %function
_start:
	/*
	 * Go to Thumb mode by branch to odd address.
	 * (See armemu.c:WriteR15Branch() (SETT))
	 * Use BX, BLX, LDR or LDM instruction to exchange ARM/Thumb mode.
	 */
#ifdef TO_THUMB_BY_LDR /* to avoid warning */
	ldr	pc, _thumb_addr
_thumb_addr:
	.long	_thumb_start + 1
#else /* Warning: Arm BLX instruction targets Arm function */
	blx	_thumb_start
#endif

	.thumb
	.globl	_thumb_start
	.type	_thumb_start, %function
_thumb_start:
	ldr	r0, _stack_addr
	mov	sp, r0
	bl	_startmain

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* Go to ARM mode */
	blx	__exit

	.arm
	.globl	__exit
	.type	__exit, %function
__exit:
	SWI(SWI_Exit)
	bx	lr

	.globl	__read
	.type	__read, %function
__read:
	SWI(SWI_Read)
	bx	lr

	.globl	__write
	.type	__write, %function
__write:
	SWI(SWI_Write)
	bx	lr

	.globl	__open
	.type	__open, %function
__open:
	/*
	 * Flags of open() exchanged by translate_open_mode[].
	 * See gdb/sim/arm/armos.c:SWIopen()
	 * Specify O_RDWR, O_CREAT, O_TRUNC flags.
	 * (See gdb/sim/arm/armos.c:translate_open_mode[])
	 */
	movs	r1, #6
	SWI(SWI_Open)
	bx	lr

	.globl	__close
	.type	__close, %function
__close:
	SWI(SWI_Close)
	bx	lr

	.align 4
_stack_addr:
	.long	_estack
