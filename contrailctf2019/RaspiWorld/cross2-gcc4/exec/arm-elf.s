	.file	"arm-elf.c"
@ GNU C (GCC) version 4.7.2 (arm-elf)
@	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -D__USES_INITFINI__ -D ___FreeBSD___
@ -D ARCH="arm-elf" arm-elf.c -auxbase-strip arm-elf.s -g -O -Wall
@ -fno-builtin -fverbose-asm -fomit-frame-pointer
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
@ -fzero-initialized-in-bss -marm -mlittle-endian -msched-prolog
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	exit
	.type	exit, %function
exit:
.LFB0:
	.file 1 "arm-elf.c"
	.loc 1 30 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	str	lr, [sp, #-4]!	@,
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
	.type	write1, %function
write1:
.LFB1:
	.loc 1 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	str	lr, [sp, #-4]!	@,
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #4	@,,
.LCFI2:
	.cfi_def_cfa_offset 8
	add	r3, sp, #4	@ tmp139,,
	strb	r1, [r3, #-4]!	@ c, c
	.loc 1 36 0
	mov	r1, sp	@,
.LVL3:
	mov	r2, #1	@,
	bl	__write	@
.LVL4:
	.loc 1 37 0
	add	sp, sp, #4	@,,
	ldmfd	sp!, {pc}
	.cfi_endproc
.LFE1:
	.size	write1, .-write1
	.align	2
	.global	putchar
	.type	putchar, %function
putchar:
.LFB2:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5:
	stmfd	sp!, {r4, lr}	@,
.LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r1	@ c, c
	.loc 1 41 0
	and	r1, r1, #255	@ tmp138, c,
.LVL6:
	bl	write1	@
.LVL7:
	.loc 1 43 0
	mov	r0, r4	@, c
	ldmfd	sp!, {r4, pc}	@
	.cfi_endproc
.LFE2:
	.size	putchar, .-putchar
	.align	2
	.global	puts
	.type	puts, %function
puts:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	stmfd	sp!, {r4, r5, lr}	@,
.LCFI4:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r0	@ fd, fd
	mov	r4, r1	@ str, str
	.loc 1 47 0
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ D.960, *str_2(D)
.LVL9:
	cmp	r1, #0	@ D.960,
	beq	.L5	@,
.LVL10:
.L6:
	.loc 1 48 0 discriminator 2
	mov	r0, r5	@, fd
	bl	putchar	@
.LVL11:
	.loc 1 47 0 discriminator 2
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2	@ D.960, MEM[base: D.996_12, offset: 1B]
	cmp	r1, #0	@ D.960,
	bne	.L6	@,
.L5:
	.loc 1 50 0
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.cfi_endproc
.LFE3:
	.size	puts, .-puts
	.align	2
	.global	putxval
	.type	putxval, %function
putxval:
.LFB4:
	.loc 1 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL12:
	stmfd	sp!, {r4, lr}	@,
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20	@,,
.LCFI6:
	.cfi_def_cfa_offset 28
.LVL13:
	.loc 1 88 0
	mov	r3, #0	@ tmp150,
	strb	r3, [sp, #16]	@ tmp150, MEM[(char *)&buf + 16B]
.LVL14:
	.loc 1 90 0
	mov	ip, r2	@ column, column
	mov	r3, r1	@ value, value
	cmp	r2, #0	@ column,
	cmpeq	r1, #0	@, value,
	.loc 1 91 0
	addeq	ip, r2, #1	@ column, column,
.LVL15:
	.loc 1 88 0
	add	r1, sp, #15	@ p,,
.LVL16:
	.loc 1 94 0
	ldr	r4, .L16	@ tmp172,
	b	.L15	@
.L12:
	and	lr, r3, #15	@ tmp160, value,
	ldrb	lr, [r4, lr]	@ zero_extendqisi2	@ tmp161,
	strb	lr, [r1], #-1	@ tmp161, MEM[base: p_3, offset: 0B]
.LVL17:
	.loc 1 95 0
	mov	r3, r3, lsr #4	@ value, value,
.LVL18:
	.loc 1 96 0
	cmp	r2, #0	@ D.954,
	subne	ip, ip, #1	@ column, column,
.LVL19:
.L15:
	.loc 1 93 0 discriminator 1
	adds	r2, ip, #0	@ D.954, column,
	movne	r2, #1	@ D.954,
	cmp	ip, #0	@ column,
	cmpeq	r3, #0	@, value,
	bne	.L12	@,
	.loc 1 99 0
	add	r1, r1, #1	@, p,
.LVL20:
	bl	puts	@
.LVL21:
	.loc 1 102 0
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, pc}
.L17:
	.align	2
.L16:
	.word	.LC0
	.cfi_endproc
.LFE4:
	.size	putxval, .-putxval
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LVL22:
	.loc 1 107 0
	mov	r0, #1	@,
	ldr	r1, .L19	@,
	bl	puts	@
.LVL23:
	.loc 1 108 0
	mov	r0, #1	@,
	ldr	r3, .L19+4	@ tmp138,
	ldr	r1, [r3, #0]	@, data_value
	mov	r2, #0	@,
	bl	putxval	@
.LVL24:
	.loc 1 109 0
	mov	r0, #1	@,
	ldr	r1, .L19+8	@,
	bl	puts	@
.LVL25:
	.loc 1 110 0
	mov	r0, #0	@,
	bl	exit	@
.LVL26:
.L20:
	.align	2
.L19:
	.word	.LC1
	.word	.LANCHOR0
	.word	.LC2
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
.LC0:
	.ascii	"0123456789abcdef\000"
	.space	3
.LC1:
	.ascii	"Hello World! \000"
	.space	2
.LC2:
	.ascii	" This architecture is arm-elf\012\000"
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
	.4byte	.LVL11
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
	.sleb128 -28
	.uleb128 0xc
	.ascii	"p\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x164
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LVL21
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
	.4byte	.LVL23
	.4byte	0x118
	.4byte	0x242
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL24
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
	.4byte	.LVL25
	.4byte	0x118
	.4byte	0x276
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL26
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
	.sleb128 -4
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
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
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
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -21
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
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
.LASF18:
	.ascii	"/home/hiroaki/cross2-gcc4/exec\000"
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
.LASF17:
	.ascii	"arm-elf.c\000"
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
.LASF5:
	.ascii	"char\000"
	.ident	"GCC: (GNU) 4.7.2"
