/*
 * Use in/out instruction extension.
 * See gdb/sim/avr/interp.c:sim_resume()
 * (OP_in/OP_out)
 * Warning: __exit() not support return exit code.
 *          __read(), __open(), __close() not support.
 *          __write() output only one character.
 */

#define STDIO_PORT 0x52
#define EXIT_PORT  0x4F
#define ABORT_PORT 0x49
#define PORT(num) ((num) - 0x20)

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	ldi	r28, lo8(_estack)
	ldi	r29, hi8(_estack)
	out	0x3d, r28
	out	0x3e, r29
	eor	r1, r1
	rcall	_startmain

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	out	PORT(EXIT_PORT), r24
	ret

	.globl	__read
	.type	__read, @function
__read:
	ret

	.globl	__write
	.type	__write, @function
__write:
	mov	r30, r22
	mov	r31, r23
	ld	r24, Z
	out	PORT(STDIO_PORT), r24
	ret

	.globl	__open
	.type	__open, @function
__open:
	ret

	.globl	__close
	.type	__close, @function
__close:
	ret
