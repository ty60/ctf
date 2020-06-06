	.file	"arm16-elf.c"
@ GNU C (GCC) version 4.7.2 (arm-elf)
@	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -D__USES_INITFINI__ -D ___FreeBSD___
@ -D ARCH="arm16-elf" arm16-elf.c -mthumb -mthumb-interwork
@ -auxbase-strip arm16-elf.s -g -O -Wall -fno-builtin -fverbose-asm
@ -fomit-frame-pointer
@ options enabled:  -fauto-inc-dec -fbranch-count-reg
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
@ -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -finline -finline-atomics -finline-functions-called-once -fipa-profile
@ -fipa-pure-const -fipa-reference -fira-share-save-slots
@ -fira-share-spill-slots -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -fpeephole
@ -fprefetch-loop-arrays -freg-struct-return
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
@ -fsched-stalled-insns-dep -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
@ -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
@ -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop
@ -ftree-fre -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
@ -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -mlittle-endian -msched-prolog -mthumb
@ -mthumb-interwork -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	exit
	.code	16
	.thumb_func
	.type	exit, %function
exit:
.LFB0:
	.file 1 "arm16-elf.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	push	{lr}	@
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 31 0
	bl	__exit	@
.LVL1:
	.cfi_endproc
.LFE0:
	.size	exit, .-exit
	.align	2
	.global	write1
	.code	16
	.thumb_func
	.type	write1, %function
write1:
.LFB1:
	.loc 1 35 0
	.cfi_startproc
.LVL2:
	push	{lr}	@
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #4	@,,
.LCFI2:
	.cfi_def_cfa_offset 8
	mov	r3, sp	@,
	strb	r1, [r3]	@ c, c
	.loc 1 36 0
	mov	r1, sp	@,
.LVL3:
	mov	r2, #1	@,
	bl	__write	@
.LVL4:
	.loc 1 37 0
	add	sp, sp, #4	@,,
	@ sp needed for prologue	@
	pop	{r1}
	bx	r1
	.cfi_endproc
.LFE1:
	.size	write1, .-write1
	.align	2
	.global	putchar
	.code	16
	.thumb_func
	.type	putchar, %function
putchar:
.LFB2:
	.loc 1 40 0
	.cfi_startproc
.LVL5:
	push	{r4, lr}	@
.LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r1	@ c, c
	.loc 1 41 0
	mov	r1, #255	@ tmp138,
.LVL6:
	and	r1, r4	@ tmp139, c
	bl	write1	@
.LVL7:
	.loc 1 43 0
	mov	r0, r4	@, c
	@ sp needed for prologue	@
.LVL8:
	pop	{r4}
	pop	{r1}
	bx	r1
	.cfi_endproc
.LFE2:
	.size	putchar, .-putchar
	.align	2
	.global	puts
	.code	16
	.thumb_func
	.type	puts, %function
puts:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
.LVL9:
	push	{r4, r5, lr}	@
.LCFI4:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r0	@ fd, fd
	mov	r4, r1	@ str, str
	.loc 1 47 0
	ldrb	r1, [r1]	@ D.960, *str_2(D)
.LVL10:
	cmp	r1, #0	@ D.960,
	beq	.L5	@,
.LVL11:
.L7:
	.loc 1 48 0 discriminator 2
	mov	r0, r5	@, fd
	bl	putchar	@
.LVL12:
	.loc 1 47 0 discriminator 2
	add	r4, r4, #1	@ str,
.LVL13:
	ldrb	r1, [r4]	@ D.960, MEM[base: str_7, offset: 0B]
	cmp	r1, #0	@ D.960,
	bne	.L7	@,
.L5:
	.loc 1 50 0
	mov	r0, #0	@,
	@ sp needed for prologue	@
.LVL14:
.LVL15:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.cfi_endproc
.LFE3:
	.size	puts, .-puts
	.align	2
	.global	putxval
	.code	16
	.thumb_func
	.type	putxval, %function
putxval:
.LFB4:
	.loc 1 83 0
	.cfi_startproc
.LVL16:
	push	{r4, r5, r6, r7, lr}	@
.LCFI5:
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20	@,,
.LCFI6:
	.cfi_def_cfa_offset 40
.LVL17:
	.loc 1 88 0
	mov	r4, #0	@ tmp151,
	add	r3, sp, #16	@ tmp150,,
.LVL18:
	strb	r4, [r3]	@ tmp151, MEM[(char *)&buf + 16B]
.LVL19:
	.loc 1 90 0
	cmp	r2, #0	@ column,
	bne	.L10	@,
	.loc 1 91 0
	neg	r3, r1	@ tmp180, value
	adc	r3, r3, r1	@ tmp180, value
	add	r2, r2, r3	@ column, column, tmp180
.LVL20:
.L10:
	.loc 1 88 0 discriminator 1
	mov	r3, sp	@ p,
	add	r3, r3, #15	@ p,
	.loc 1 94 0 discriminator 1
	ldr	r7, .L15	@ tmp185,
	mov	r6, #15	@ tmp186,
	b	.L14	@
.LVL21:
.L13:
	.loc 1 94 0 is_stmt 0
	mov	r5, r6	@ tmp165, tmp186
	and	r5, r1	@ tmp165, value
	ldrb	r5, [r7, r5]	@ tmp166,
	strb	r5, [r3]	@ tmp166, MEM[base: p_3, offset: 0B]
	sub	r3, r3, #1	@ p,
.LVL22:
	.loc 1 95 0 is_stmt 1
	lsr	r1, r1, #4	@ value, value,
.LVL23:
	.loc 1 96 0
	sub	r5, r4, #1	@ tmp184, D.954
	sbc	r4, r4, r5	@ tmp183, D.954, tmp184
	sub	r2, r2, r4	@ column, column, tmp183
.LVL24:
.L14:
	.loc 1 93 0 discriminator 1
	mov	r4, r2	@ D.954, column
	sub	r5, r4, #1	@ tmp170, D.954
	sbc	r4, r4, r5	@ D.954, D.954, tmp170
	cmp	r4, #0	@ D.954,
	bne	.L13	@,
	cmp	r1, #0	@ value,
	bne	.L13	@,
	.loc 1 99 0
	add	r1, r3, #1	@ tmp177, p,
.LVL25:
	bl	puts	@
.LVL26:
	.loc 1 102 0
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed for prologue	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	.LC2
	.cfi_endproc
.LFE4:
	.size	putxval, .-putxval
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	push	{lr}	@
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LVL27:
	.loc 1 107 0
	mov	r0, #1	@,
	ldr	r1, .L18	@,
	bl	puts	@
.LVL28:
	.loc 1 108 0
	ldr	r3, .L18+4	@ tmp138,
	ldr	r1, [r3]	@ data_value, data_value
	mov	r0, #1	@,
	mov	r2, #0	@,
	bl	putxval	@
.LVL29:
	.loc 1 109 0
	mov	r0, #1	@,
	ldr	r1, .L18+8	@,
	bl	puts	@
.LVL30:
	.loc 1 110 0
	mov	r0, #0	@,
	bl	exit	@
.LVL31:
.L19:
	.align	2
.L18:
	.word	.LC4
	.word	.LANCHOR0
	.word	.LC7
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.comm	bss_value,4,4
	.global	data_value
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	data_value, %object
	.size	data_value, 4
data_value:
	.word	-1414661426
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"0123456789abcdef\000"
	.space	3
.LC4:
	.ascii	"Hello World! \000"
	.space	2
.LC7:
	.ascii	" This architecture is arm16-elf\012\000"
	.text
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2eb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.4byte	0x60
	.4byte	.LLST1
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	0x2b1
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0xbd
	.uleb128 0x8
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x60
	.4byte	.LLST3
	.uleb128 0x8
	.ascii	"c\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	0x2c5
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x118
	.uleb128 0x8
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST6
	.uleb128 0x8
	.ascii	"c\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST7
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	0x67
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x164
	.uleb128 0x8
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x60
	.4byte	.LLST9
	.uleb128 0x8
	.ascii	"str\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x164
	.4byte	.LLST10
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x1e0
	.uleb128 0x8
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST12
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x52
	.4byte	0x1e0
	.4byte	.LLST13
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST14
	.uleb128 0xb
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.ascii	"p\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x164
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LVL26
	.4byte	0x118
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.4byte	0x16a
	.4byte	0x1f7
	.uleb128 0xf
	.4byte	0x1f7
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x68
	.4byte	0x60
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x286
	.uleb128 0x11
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0x60
	.byte	0x1
	.uleb128 0x12
	.4byte	.LVL28
	.4byte	0x118
	.4byte	0x242
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0x171
	.4byte	0x25a
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x118
	.4byte	0x276
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL31
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4
	.4byte	0x60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x2c5
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.4byte	0x60
	.byte	0x1
	.4byte	0x2e7
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x2e7
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ed
	.uleb128 0x17
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -25
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"arm16-elf.c\000"
.LASF4:
	.ascii	"puts\000"
.LASF12:
	.ascii	"main\000"
.LASF15:
	.ascii	"bss_value\000"
.LASF16:
	.ascii	"GNU C 4.7.2\000"
.LASF0:
	.ascii	"status\000"
.LASF20:
	.ascii	"__write\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF2:
	.ascii	"write1\000"
.LASF14:
	.ascii	"data_value\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"__exit\000"
.LASF13:
	.ascii	"long int\000"
.LASF6:
	.ascii	"putxval\000"
.LASF3:
	.ascii	"putchar\000"
.LASF10:
	.ascii	"sizetype\000"
.LASF8:
	.ascii	"column\000"
.LASF7:
	.ascii	"value\000"
.LASF11:
	.ascii	"exit\000"
.LASF18:
	.ascii	"/home/hiroaki/cross2-gcc4/exec\000"
.LASF5:
	.ascii	"char\000"
	.ident	"GCC: (GNU) 4.7.2"
