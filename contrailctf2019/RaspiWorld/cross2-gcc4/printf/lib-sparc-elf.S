/*
 * For sparc, use erc32 simulator. (gdb/sim/erc32)
 * Use UART emulation.
 * See gdb/sim/erc32/erc32.c:read_uart()/write_uart(),mec_read()/mec_write()
 * Warning: RAM address: 0x02000000 - 0x02400000
 * (See erc32.c:memory_read()/memory_write() and define RAM_START/RAM_END)
 */

/* NO USE */
/* See gdb/sim/common/nltvals.def (NL_TARGET_sparc) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

/* MEC registers */
#define MEC_START 0x01f80000
#define MEC_END   0x01f80100
#define MEC_UARTA 0x0E0
#define MEC_ERSR  0x0B0
#define MEC_MCR   0x000
#define MEC_TRAPD 0x064

#define STDIO_ADDR (MEC_START + MEC_UARTA)
#define ERSR_ADDR  (MEC_START + MEC_ERSR)
#define MCR_ADDR   (MEC_START + MEC_MCR)
#define TRAPD_ADDR (MEC_START + MEC_TRAPD)

/* #define EXIT_BY_DIRECT_BREAK_CODE */

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	/*
	 * Stop watchdog timer.
	 * Use TRAPD register. (See gdb/sim/erc32/erc32.c:mec_write())
	 */
	sethi	%hi(TRAPD_ADDR), %o0
	or	%o0, %lo(TRAPD_ADDR), %o0
	mov	1, %o1
	st	%o1, [ %o0 ]

	sethi	%hi(_estack), %sp
	or	%sp, %lo(_estack), %sp
	add	%sp, -112, %sp
	call	_startmain
	nop

	/*
	 * Registers as return value and first argument are same.
	 * Setup of first argument is unneed.
	 */
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
#ifdef EXIT_BY_DIRECT_BREAK_CODE
	/* See gdb/sim/erc32/interf.c:run_sim() */
	.long	0x91d02001
#else
	/*
	 * Use trap 257 and ERSR register.
	 * (See execute_trap()/sys_halt()/decode_ersr()
	 */
	sethi	%hi(ERSR_ADDR), %o0
	or	%o0, %lo(ERSR_ADDR), %o0
	mov	1, %o1
	st	%o1, [ %o0 ]	
	mov	1, %o0
#endif
	nop

	.globl	__read
	.type	__read, @function
__read:
	sethi	%hi(STDIO_ADDR), %o0
	or	%o0, %lo(STDIO_ADDR), %o0
	ld	[ %o0 ], %o2
	stb	%o2, [ %o1 ]
	mov	1, %o0
	retl
	nop

	.globl	__write
	.type	__write, @function
__write:
	sethi	%hi(STDIO_ADDR), %o0
	or	%o0, %lo(STDIO_ADDR), %o0
	ldub	[ %o1 ], %o2
	st	%o2, [ %o0 ]	
	mov	1, %o0
	retl
	nop

	.globl	__open
	.type	__open, @function
__open:
	retl
	nop

	.globl	__close
	.type	__close, @function
__close:
	retl
	nop
