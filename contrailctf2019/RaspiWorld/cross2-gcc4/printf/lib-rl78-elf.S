/*
 * Use SDR00 register.
 * See gdb/sim/rl78/mem.c:mem_put_byte() (SDR00)
 */

#define SDR00 0xfff10

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	/*
	 * RL78 simulator in GDB cannot load .data section to RAM,
	 * so need to copy .data section from ROM to RAM.
	 * See gdb/sim/rl78/load.c:rl78_load()
	 * (Output message : "Can't load image to RAM/SFR space")
	 */
	/*
	 * Default RAM size is 0x8000 and RAM base address is 0xf8000.
	 * See gdb/sim/rl78/mem.c:ram_base,mem_ram_size()
	 * See gdb/sim/rl78/mem.c:rom_limit,mem_rom_size()
	 * Use -r option to execute simulator to change it.
	 */

	/*
	 * RAM is assigned on 0xf0000-0xfffff in simulator.
	 * See gdb/sim/rl78/mem.c:memory[],mem_get_byte(),mem_put_byte()
	 * See gdb/sim/rl78/rl78.c:op_addr()
	 * By default, memory access is performed for RAM space.
	 * Use ES register to access ROM space.
	 * See gdb/sim/rl78/rl78.c:op_addr()
	 */
	mov	es, #0

	/* copy .rodata and .data section from ROM to RAM */
	movw	ax, #_edata
	subw	ax, #_etext
	movw	de, ax
	movw	bc, #_etext
1:	movw	ax, de
	cmpw	ax, #0
	bz	$2f
	mov	a, es:[bc]
	mov	[bc], a
	incw	bc
	decw	de
	br	$1b
2:
	/* clear .bss section */
	movw	ax, #_ebss
	subw	ax, #_edata
	movw	de, ax
	movw	bc, #_edata
1:	movw	ax, de
	cmpw	ax, #0
	bz	$2f
	mov	[bc], #0
	incw	bc
	decw	de
	br	$1b
2:

	movw	sp, #_estack
	call	!!__startmain

	movw	ax, 0xffef0
	push	ax
	call	!!___exit

	.globl	___exit
	.type	___exit, @function
___exit:
	/*
	 * exit code is given by register A.
	 * See gdb/sim/rl78/main.c:main(),done(),RL78_EXITED()
	 * See gdb/sim/rl78/rl78.c:decode_opcode() (case RLO_halt:)
	 */
	mov	a, [sp+4]
	halt
	ret

	.globl	___read
	.type	___read, @function
___read:
	ret

	.globl	___write
	.type	___write, @function
___write:
	movw	ax, [sp+6]
	movw	hl, ax
	mov	a, [hl]
	mov	SDR00, a
	ret

	.globl	___open
	.type	___open, @function
___open:
	ret

	.globl	___close
	.type	___close, @function
___close:
	ret

	.align 4
_stack_addr:
	.long	_estack
