/*
 * Use trap.
 * See gdb/sim/sh64/sh64.c:trap_handler()
 */

/* gdb-7.3.1/sim/sh64/sh64.c */
#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	movi	((_estack >> 48) & 65535), r15
	shori	((_estack >> 32) & 65535), r15
	shori	((_estack >> 16) & 65535), r15
	shori	(_estack & 65535), r15
	pt	_main, tr0
	blink	tr0, r18
	nop

	add	r2, r63, r3
	/* fall through */

	.globl	___r_exit
	.type	___r_exit, @function
___r_exit:
	ptabs/l	r18, tr0
	movi	SYS_exit, r2
	movi	34, r0
	trapa	r0
	blink	tr0, r63

	.globl	___r_read
	.type	___r_read, @function
___r_read:
	ptabs/l	r18, tr0
	movi	SYS_read, r2
	movi	34, r0
	trapa	r0
	blink	tr0, r63

	.globl	___r_write
	.type	___r_write, @function
___r_write:
	ptabs/l	r18, tr0
	movi	SYS_write, r2
	movi	34, r0
	trapa	r0
	blink	tr0, r63

	.globl	___r_open
	.type	___r_open, @function
___r_open:
	ptabs/l	r18, tr0
	movi	SYS_open, r2
	movi	34, r0
	trapa	r0
	blink	tr0, r63

	.globl	___r_close
	.type	___r_close, @function
___r_close:
	ptabs/l	r18, tr0
	movi	SYS_close, r2
	movi	34, r0
	trapa	r0
	blink	tr0, r63
