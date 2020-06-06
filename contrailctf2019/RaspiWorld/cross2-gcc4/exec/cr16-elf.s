	.file	"cr16-elf.c"
# GNU C (GCC) version 4.7.2 (cr16-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="cr16-elf" cr16-elf.c
# -auxbase-strip cr16-elf.s -g -O -Wall -fno-builtin -fverbose-asm
# -fomit-frame-pointer
# options enabled:  -fauto-inc-dec -fbranch-count-reg
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdebug-types-section -fdefer-pop -fearly-inlining
# -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
# -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-atomics
# -finline-functions-called-once -fipa-profile -fipa-pure-const
# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
# -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
# -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss

	.section	.text
.Ltext0:
	.align	4
	.globl	_exit
	.type	_exit, @function
_exit:
.LFB0:
	.file 1 "cr16-elf.c"
	.loc 1 30 0
.LVL0:
	.loc 1 31 0
	bal (ra), ___exit@c	#
.LVL1:
.LFE0:
	.size	_exit, .-_exit
	.align	4
	.globl	_write1
	.type	_write1, @function
_write1:
.LFB1:
	.loc 1 35 0
.LVL2:
	push	ra
.LCFI0:
	addd	$-4, (sp)	#,
.LCFI1:
	storb	r3, 0(sp)	# c, c
	.loc 1 36 0
	movw	$1, r5	#,
	movd	(sp), (r4,r3)	#,
.LVL3:
	bal (ra), ___write@c	#
.LVL4:
	.loc 1 37 0
	addd	$4, (sp)	#,
.LCFI2:
	popret	ra
.LFE1:
	.size	_write1, .-_write1
	.align	4
	.globl	_putchar
	.type	_putchar, @function
_putchar:
.LFB2:
	.loc 1 40 0
.LVL5:
	push	ra
	push	$1, r7
.LCFI3:
	movw	r3, r7	# c, c
	.loc 1 41 0
	bal (ra), _write1@c	#
.LVL6:
	.loc 1 43 0
	movw	r7, r0	# c,
	pop	$1, r7
	popret	ra
.LCFI4:
.LFE2:
	.size	_putchar, .-_putchar
	.align	4
	.globl	_puts
	.type	_puts, @function
_puts:
.LFB3:
	.loc 1 46 0
.LVL7:
	push	ra
	push	$3, r7
.LCFI5:
	movw	r2, r7	# fd, fd
	movd	(r4,r3), (r9,r8)	# str, str
	.loc 1 47 0
	loadb	0(r4,r3), r3	# *str_2(D), D.929
.LVL8:
	cmpb	$0, r3	#, D.929
	beq	.L5	#,
.LVL9:
.L7:
	.loc 1 48 0 discriminator 2
	movxb	r3, r3	# D.929, D.929
	movw	r7, r2	# fd,
	bal (ra), _putchar@c	#
.LVL10:
	.loc 1 47 0 discriminator 2
	addd	$1, (r9,r8)	#, str
.LVL11:
	loadb	0(r9,r8), r3	# MEM[base: str_7, offset: 0B], D.929
	cmpb	$0, r3	#, D.929
	bne	.L7	#,
.L5:
	.loc 1 50 0
	movw	$0, r0	#,
	pop	$3, r7
	popret	ra
.LCFI6:
.LFE3:
	.size	_puts, .-_puts
	.section	.rodata.str1.2,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"0123456789abcdef"
	.section	.text
	.align	4
	.globl	_putxval
	.type	_putxval, @function
_putxval:
.LFB4:
	.loc 1 83 0
.LVL12:
	push	ra
	push	$3, r7
.LCFI7:
	addd	$-20, (sp)	#,
.LCFI8:
	movd	(r4,r3), (r1,r0)	# value, value
	movw	r5, r3	# column, column
.LVL13:
	.loc 1 88 0
	storb	$0, 16(sp)	#, MEM[(char *)&buf + 16B]
.LVL14:
	.loc 1 90 0
	cmpw	$0, r5	#, column
	seq	r4	#, tmp38
	cmpw	$0, r4	#, tmp38
	beq	.L10	#,
	movw	r0, r4	#, tmp40
	orw	r1, r4	# value, tmp40
	.loc 1 91 0
	cmpw	$0, r4	#, tmp40
	seq	r4	#, tmp55
	addw	r4, r3	# tmp55, column
.L10:
	.loc 1 88 0 discriminator 1
	movd	(sp), (r5,r4)	#, p
	addd	$15, (r5,r4)	#, p
	.loc 1 94 0 discriminator 1
	movd	$.LC0@l, (r7,r6)	#, tmp58
	br	.L14	#
.LVL15:
.L13:
	.loc 1 94 0 is_stmt 0
	movd	(r1,r0), (ra)	# value, tmp43
	andd	$15, (ra)	#, tmp43
	addd	(r7,r6), (ra)	# tmp58, tmp45
	loadb	0(ra), ra	#, tmp46
	storb	ra, 0(r5,r4)	# tmp46, MEM[base: p_3, offset: 0B]
	addd	$-1, (r5,r4)	#, p
.LVL16:
	.loc 1 95 0 is_stmt 1
	lshd	$-4, (r1,r0)	#, value
.LVL17:
	.loc 1 96 0
	andw	$1, r8	#, tmp57
	subw	r8, r3	# tmp57, column
.LVL18:
.L14:
	.loc 1 93 0 discriminator 1
	cmpw	$0, r3	#, column
	sne	r8	#, tmp47
	cmpb	$0, r8	#, D.923
	bne	.L13	#,
	movw	r0, r9	#, tmp49
	orw	r1, r9	# value, tmp49
	cmpw	$0, r9	#, tmp49
	sne	ra	#, tmp51
	cmpw	$0, ra	#, tmp51
	bne	.L13	#,
	.loc 1 99 0
	movd	(r5,r4), (r4,r3)	# p, tmp52
.LVL19:
	addd	$1, (r4,r3)	#, tmp52
	bal (ra), _puts@c	#
.LVL20:
	.loc 1 102 0
	movw	$0, r0	#,
	addd	$20, (sp)	#,
.LCFI9:
	pop	$3, r7
	popret	ra
.LCFI10:
.LFE4:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.2
	.align	2
.LC1:
	.string	"Hello World! "
	.align	2
.LC2:
	.string	" This architecture is cr16-elf\n"
	.section	.text
	.align	4
	.globl	_main
	.type	_main, @function
_main:
.LFB5:
	.loc 1 105 0
.LVL21:
	.loc 1 107 0
	movd	$.LC1@l, (r4,r3)	#,
	movw	$1, r2	#,
	bal (ra), _puts@c	#
.LVL22:
	.loc 1 108 0
	movw	$0, r5	#,
	loadd	_data_value@l, (r4,r3)	# data_value,
	movw	$1, r2	#,
	bal (ra), _putxval@c	#
.LVL23:
	.loc 1 109 0
	movd	$.LC2@l, (r4,r3)	#,
	movw	$1, r2	#,
	bal (ra), _puts@c	#
.LVL24:
	.loc 1 110 0
	movw	$0, r2	#,
	bal (ra), _exit@c	#
.LVL25:
.LFE5:
	.size	_main, .-_main
	.comm	_bss_value,2,2
	.globl	_data_value
	.section	.data
	.align	4
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -2
	.byte	0xe
	.byte	0xc
	.uleb128 0xf
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.align	4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.byte	0x4
	.long	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x6
	.byte	0x87
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0
	.align	4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0xa
	.byte	0x87
	.uleb128 0x5
	.byte	0x88
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0
	.align	4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI7-.LFB4
	.byte	0xe
	.uleb128 0xa
	.byte	0x87
	.uleb128 0x5
	.byte	0x88
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x1e
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0xa
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0
	.align	4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.align	4
.LEFDE10:
	.section	.text
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2f5
	.short	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0x1
	.long	.LASF17
	.long	.LASF18
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x5f
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x1d
	.long	0x5f
	.long	.LLST0
	.uleb128 0x4
	.long	.LVL1
	.long	0x2bb
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.long	.LASF2
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	0x5f
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.byte	0x1
	.long	0xc1
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.long	0x5f
	.long	.LLST2
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.long	0xc1
	.long	.LLST3
	.uleb128 0x4
	.long	.LVL4
	.long	0x2cf
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF3
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x5f
	.long	.LFB2
	.long	.LFE2
	.long	.LLST4
	.byte	0x1
	.long	0x119
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.long	0x5f
	.long	.LLST5
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.long	0x5f
	.long	.LLST6
	.uleb128 0x4
	.long	.LVL6
	.long	0x66
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0x5f
	.long	.LFB3
	.long	.LFE3
	.long	.LLST7
	.byte	0x1
	.long	0x165
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.long	0x5f
	.long	.LLST8
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.long	0x165
	.long	.LLST9
	.uleb128 0x4
	.long	.LVL10
	.long	0xc8
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x16b
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.long	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0x5f
	.long	.LFB4
	.long	.LFE4
	.long	.LLST10
	.byte	0x1
	.long	0x1e1
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.long	0x5f
	.long	.LLST11
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x52
	.long	0x1e1
	.long	.LLST12
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x52
	.long	0x5f
	.long	.LLST13
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.long	0x1e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x55
	.long	0x165
	.long	.LLST14
	.uleb128 0xd
	.long	.LVL20
	.long	0x119
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xe
	.long	0x16b
	.long	0x1f8
	.uleb128 0xf
	.long	0x1f8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x10
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x68
	.long	0x5f
	.long	.LFB5
	.long	.LFE5
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x290
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.long	0x5f
	.byte	0x1
	.uleb128 0x12
	.long	.LVL22
	.long	0x119
	.long	0x247
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0x12
	.long	.LVL23
	.long	0x172
	.long	0x25f
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL24
	.long	0x119
	.long	0x280
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.uleb128 0x4
	.long	.LVL25
	.long	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF14
	.byte	0x1
	.byte	0x3
	.long	0x2a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.long	.LASF13
	.uleb128 0x13
	.long	.LASF15
	.byte	0x1
	.byte	0x4
	.long	0x5f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_bss_value
	.uleb128 0x14
	.byte	0x1
	.long	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.long	0x2cf
	.uleb128 0x15
	.long	0x5f
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.long	0x2f1
	.uleb128 0x15
	.long	0x5f
	.uleb128 0x15
	.long	0x2f1
	.uleb128 0x15
	.long	0x5f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x2f7
	.uleb128 0x17
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL1-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL1-1-.Ltext0
	.long	.LFE0-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB1-.Ltext0
	.long	.LCFI0-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI2-.Ltext0
	.long	.LFE1-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2-.Ltext0
	.long	.LVL4-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL4-1-.Ltext0
	.long	.LFE1-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.short	0x1
	.byte	0x53
	.long	.LVL3-.Ltext0
	.long	.LFE1-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LFB2-.Ltext0
	.long	.LCFI3-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 6
	.long	.LCFI4-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL5-.Ltext0
	.long	.LVL6-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL6-1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL5-.Ltext0
	.long	.LVL6-1-.Ltext0
	.short	0x1
	.byte	0x53
	.long	.LVL6-1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST7:
	.long	.LFB3-.Ltext0
	.long	.LCFI5-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 10
	.long	.LCFI6-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL7-.Ltext0
	.long	.LVL9-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL9-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST9:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL8-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
.LLST10:
	.long	.LFB4-.Ltext0
	.long	.LCFI7-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 10
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 30
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 10
	.long	.LCFI10-.Ltext0
	.long	.LFE4-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL12-.Ltext0
	.long	.LVL20-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL20-1-.Ltext0
	.long	.LFE4-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL13-.Ltext0
	.long	.LVL20-1-.Ltext0
	.short	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
.LLST13:
	.long	.LVL12-.Ltext0
	.long	.LVL15-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL15-.Ltext0
	.long	.LVL19-.Ltext0
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.short	0x3
	.byte	0x7f
	.sleb128 16
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.short	0x3
	.byte	0x7f
	.sleb128 15
	.byte	0x9f
	.long	.LVL15-.Ltext0
	.long	.LVL20-1-.Ltext0
	.short	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF17:
	.string	"cr16-elf.c"
.LASF4:
	.string	"puts"
.LASF12:
	.string	"main"
.LASF15:
	.string	"bss_value"
.LASF16:
	.string	"GNU C 4.7.2"
.LASF0:
	.string	"status"
.LASF20:
	.string	"__write"
.LASF9:
	.string	"long unsigned int"
.LASF2:
	.string	"write1"
.LASF14:
	.string	"data_value"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"__exit"
.LASF13:
	.string	"long int"
.LASF6:
	.string	"putxval"
.LASF3:
	.string	"putchar"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"column"
.LASF7:
	.string	"value"
.LASF11:
	.string	"exit"
.LASF5:
	.string	"char"
	.ident	"GCC: (GNU) 4.7.2"
