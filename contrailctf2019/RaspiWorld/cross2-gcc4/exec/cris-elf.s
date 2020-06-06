	.file	"cris-elf.c"
;# GNU C (GCC) version 4.7.2 (cris-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="cris-elf"
;# cris-elf.c -melf -auxbase-strip cris-elf.s -g -O -Wall -fno-builtin
;# -fverbose-asm -fomit-frame-pointer
;# options enabled:  -fauto-inc-dec -fbranch-count-reg
;# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
;# -fdebug-types-section -fdefer-pop -fdelayed-branch
;# -fdelete-null-pointer-checks -fearly-inlining
;# -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
;# -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
;# -fif-conversion -fif-conversion2 -finline -finline-atomics
;# -finline-functions-called-once -fipa-profile -fipa-pure-const
;# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
;# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;# -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
;# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
;# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
;# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
;# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
;# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
;# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
;# -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
;# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
;# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
;# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
;# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
;# -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
;# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
;# -mconst-align -mdata-align -melf -mmul-bug-workaround
;# -mprologue-epilogue -mside-effects -mstack-align

	.text
.Ltext0:
	.align 1
	.global _exit
	.type	_exit, @function
_exit:
.LFB0:
	.file 1 "cris-elf.c"
	.loc 1 30 0
.LVL0:
	subq 4,$sp	;#,
.LCFI0:
	move $srp,[$sp]	;#,
.LCFI1:
	.loc 1 31 0
	jsr ___exit	;#
.LVL1:
.LFE0:
	.size	_exit, .-_exit
	.align 1
	.global _write1
	.type	_write1, @function
_write1:
.LFB1:
	.loc 1 35 0
.LVL2:
	subq 4,$sp	;#,
.LCFI2:
	move $srp,[$sp]	;#,
	subq 2,$sp	;#,
.LCFI3:
	move.b $r11,[$sp+1]	;# c, c
	.loc 1 36 0
	move.d $sp,$r11	;#,
.LVL3:
	addq 1,$r11	;#,
	moveq 1,$r12	;#,
	Jsr ___write	;#
.LVL4:
	.loc 1 37 0
	addq 2,$sp	;#,
	jump [$sp+]
.LFE1:
	.size	_write1, .-_write1
	.align 1
	.global _putchar
	.type	_putchar, @function
_putchar:
.LFB2:
	.loc 1 40 0
.LVL5:
	subq 4,$sp	;#,
.LCFI4:
	move $srp,[$sp]	;#,
	subq 4,$sp	;#,
.LCFI5:
	move.d $r0,[$sp]	;#,
.LCFI6:
	move.d $r11,$r0	;# c, c
	.loc 1 41 0
	movu.b $r11,$r11	;# c,
.LVL6:
	Jsr _write1	;#
.LVL7:
	.loc 1 43 0
	move.d $r0,$r10	;# c,
	move.d [$sp+],$r0	;#,
.LVL8:
	jump [$sp+]
.LFE2:
	.size	_putchar, .-_putchar
	.align 1
	.global _puts
	.type	_puts, @function
_puts:
.LFB3:
	.loc 1 46 0
.LVL9:
	subq 4,$sp	;#,
.LCFI7:
	move $srp,[$sp]	;#,
	subq 12,$sp	;#,
.LCFI8:
	movem $r2,[$sp]	;#
.LCFI9:
	.loc 1 47 0
	move.b [$r11],$r9	;# *str_2(D), D.931
	beq .L5	;#
	move.d $r10,$r1	;# fd, fd

	.loc 1 45 0
	move.d $r11,$r0	;# str, ivtmp.15
	addq 1,$r0	;#, ivtmp.15
	.loc 1 48 0
	move.d _putchar,$r2	;#, tmp51
.LVL10:
.L6:
	.loc 1 48 0 is_stmt 0 discriminator 2
	move.d $r1,$r10	;# fd,
	movs.b $r9,$r11	;# D.931,
	Jsr $r2	;# tmp51
.LVL11:
	.loc 1 47 0 is_stmt 1 discriminator 2
	move.b [$r0+],$r9	;# MEM[base: D.964_19, offset: 0B], D.931
	bne .L6
	nop	;#
.L5:
	.loc 1 50 0
	clear.d $r10	;#
	movem [$sp+],$r2	;#
.LVL12:
	jump [$sp+]
.LFE3:
	.size	_puts, .-_puts
	.section	.rodata.str1.2,"aMS",@progbits,1
	.align 1
.LC0:
	.string	"0123456789abcdef"
	.text
	.align 1
	.global _putxval
	.type	_putxval, @function
_putxval:
.LFB4:
	.loc 1 83 0
.LVL13:
	subq 4,$sp	;#,
.LCFI10:
	move $srp,[$sp]	;#,
	subq 26,$sp	;#,
.LCFI11:
	movem $r1,[$sp]	;#
.LCFI12:
.LVL14:
	.loc 1 88 0
	clear.b [$sp+25]	;# MEM[(char *)&buf + 16B]
.LVL15:
	.loc 1 90 0
	test.d $r11	;# value
	bne .L18	;#
	move.d $sp,$r9	;#, ivtmp.23

	.loc 1 90 0 is_stmt 0 discriminator 1
	test.d $r12	;# column
	bne .L18
	nop	;#
	.loc 1 91 0 is_stmt 1
	move.b 1,$r12	;#,
.LVL16:
.L18:
	.loc 1 94 0 discriminator 1
	move.d .LC0,$r0	;#, tmp42
	.loc 1 88 0 discriminator 1
	ba .L10	;#
	addq 24,$r9	;#, ivtmp.23

.LVL17:
.L12:
	.loc 1 94 0
	andq 15,$r13	;#, tmp37
	move.b [$r0+$r13.b],$r13	;#,
	move.b $r13,[$r9]	;#, MEM[base: p_3, offset: 0B]
.LVL18:
	.loc 1 96 0
	test.d $r12	;# column
	beq .L11	;#
	lsrq 4,$r11	;#, value

.LVL19:
.L14:
	.loc 1 96 0 is_stmt 0 discriminator 1
	subq 1,$r12	;#, column
.LVL20:
.L11:
	subq 1,$r9	;#, ivtmp.23
.LVL21:
.L10:
	.loc 1 93 0 is_stmt 1 discriminator 1
	test.d $r11	;# value
	bne .L12	;#
	move.d $r11,$r13	;# value, tmp37

	.loc 1 93 0 is_stmt 0 discriminator 2
	test.d $r12	;# column
	beq .L17
	nop	;#
	.loc 1 94 0 is_stmt 1
	move.b 48,$r1	;#,
.LVL22:
	ba .L14	;#
	move.b $r1,[$r9]	;#, MEM[base: p_3, offset: 0B]

.LVL23:
.L17:
	.loc 1 99 0
	move.d $r9,$r11	;# p,
.LVL24:
	addq 1,$r11	;#,
	Jsr _puts	;#
.LVL25:
	.loc 1 102 0
	clear.d $r10	;#
	movem [$sp+],$r1	;#
	addq 18,$sp	;#,
	jump [$sp+]
.LFE4:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.2
	.align 1
.LC1:
	.string	"Hello World! "
	.align 1
.LC2:
	.string	" This architecture is cris-elf\n"
	.text
	.align 1
	.global _main
	.type	_main, @function
_main:
.LFB5:
	.loc 1 105 0
	subq 4,$sp	;#,
.LCFI13:
	move $srp,[$sp]	;#,
	subq 4,$sp	;#,
.LCFI14:
	move.d $r0,[$sp]	;#,
.LCFI15:
.LVL26:
	.loc 1 107 0
	move.d _puts,$r0	;#, tmp30
	moveq 1,$r10	;#,
	move.d .LC1,$r11	;#,
	Jsr $r0	;# tmp30
.LVL27:
	.loc 1 108 0
	moveq 1,$r10	;#,
	move.d _data_value,$r11	;#,
	move.d [$r11],$r11	;# data_value,
	clear.d $r12	;#
	Jsr _putxval	;#
.LVL28:
	.loc 1 109 0
	moveq 1,$r10	;#,
	move.d .LC2,$r11	;#,
	Jsr $r0	;# tmp30
.LVL29:
	.loc 1 110 0
	clear.d $r10	;#
	jsr _exit	;#
.LVL30:
.LFE5:
	.size	_main, .-_main
	.comm	_bss_value,4,2
	.global _data_value
	.data
	.align 1
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.dword	-1414661426
	.section	.debug_frame,"",@progbits
.Lframe0:
	.dword	.LECIE0-.LSCIE0
.LSCIE0:
	.dword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x10
	.byte	0xc
	.uleb128 0xe
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.dword	.LEFDE0-.LASFDE0
.LASFDE0:
	.dword	.Lframe0
	.dword	.LFB0
	.dword	.LFE0-.LFB0
	.byte	0x4
	.dword	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI1-.LCFI0
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE0:
.LSFDE2:
	.dword	.LEFDE2-.LASFDE2
.LASFDE2:
	.dword	.Lframe0
	.dword	.LFB1
	.dword	.LFE1-.LFB1
	.byte	0x4
	.dword	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE2:
.LSFDE4:
	.dword	.LEFDE4-.LASFDE4
.LASFDE4:
	.dword	.Lframe0
	.dword	.LFB2
	.dword	.LFE2-.LFB2
	.byte	0x4
	.dword	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI6-.LCFI5
	.byte	0x80
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.dword	.LEFDE6-.LASFDE6
.LASFDE6:
	.dword	.Lframe0
	.dword	.LFB3
	.dword	.LFE3-.LFB3
	.byte	0x4
	.dword	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x10
	.byte	0x90
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI9-.LCFI8
	.byte	0x82
	.uleb128 0x10
	.byte	0x81
	.uleb128 0xc
	.byte	0x80
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.dword	.LEFDE8-.LASFDE8
.LASFDE8:
	.dword	.Lframe0
	.dword	.LFB4
	.dword	.LFE4-.LFB4
	.byte	0x4
	.dword	.LCFI10-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x1e
	.byte	0x90
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI12-.LCFI11
	.byte	0x81
	.uleb128 0x1e
	.byte	0x80
	.uleb128 0x1a
	.align 2
.LEFDE8:
.LSFDE10:
	.dword	.LEFDE10-.LASFDE10
.LASFDE10:
	.dword	.Lframe0
	.dword	.LFB5
	.dword	.LFE5-.LFB5
	.byte	0x4
	.dword	.LCFI13-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI15-.LCFI14
	.byte	0x80
	.uleb128 0x8
	.align 2
.LEFDE10:
	.text
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.dword	0x2e2
	.word	0x2
	.dword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.dword	.LASF16
	.byte	0x1
	.dword	.LASF17
	.dword	.LASF18
	.dword	.Ltext0
	.dword	.Letext0
	.dword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.dword	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.dword	.LFB0
	.dword	.LFE0
	.dword	.LLST0
	.byte	0x1
	.dword	0x60
	.uleb128 0x3
	.dword	.LASF0
	.byte	0x1
	.byte	0x1d
	.dword	0x60
	.dword	.LLST1
	.uleb128 0x4
	.dword	.LVL1
	.dword	0x2a8
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.dword	.LASF2
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.dword	0x60
	.dword	.LFB1
	.dword	.LFE1
	.dword	.LLST2
	.byte	0x1
	.dword	0xbd
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.dword	0x60
	.dword	.LLST3
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.dword	0xbd
	.dword	.LLST4
	.uleb128 0x4
	.dword	.LVL4
	.dword	0x2bc
	.uleb128 0x5
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x7e
	.sleb128 1
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.dword	.LASF1
	.uleb128 0x7
	.byte	0x1
	.dword	.LASF3
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.dword	0x60
	.dword	.LFB2
	.dword	.LFE2
	.dword	.LLST5
	.byte	0x1
	.dword	0x115
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.dword	0x60
	.dword	.LLST6
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.dword	0x60
	.dword	.LLST7
	.uleb128 0x4
	.dword	.LVL7
	.dword	0x67
	.uleb128 0x5
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.dword	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.dword	0x60
	.dword	.LFB3
	.dword	.LFE3
	.dword	.LLST8
	.byte	0x1
	.dword	0x15d
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.dword	0x60
	.dword	.LLST9
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.dword	0x15d
	.dword	.LLST10
	.uleb128 0xa
	.dword	.LVL11
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.dword	0x163
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.dword	.LASF5
	.uleb128 0x7
	.byte	0x1
	.dword	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.dword	0x60
	.dword	.LFB4
	.dword	.LFE4
	.dword	.LLST11
	.byte	0x1
	.dword	0x1d9
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.dword	0x60
	.dword	.LLST12
	.uleb128 0x3
	.dword	.LASF7
	.byte	0x1
	.byte	0x52
	.dword	0x1d9
	.dword	.LLST13
	.uleb128 0x3
	.dword	.LASF8
	.byte	0x1
	.byte	0x52
	.dword	0x60
	.dword	.LLST14
	.uleb128 0xc
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.dword	0x1e0
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x55
	.dword	0x15d
	.dword	.LLST15
	.uleb128 0xe
	.dword	.LVL25
	.dword	0x115
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.dword	.LASF9
	.uleb128 0xf
	.dword	0x163
	.dword	0x1f0
	.uleb128 0x10
	.dword	0x1f0
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.dword	.LASF10
	.uleb128 0x11
	.byte	0x1
	.dword	.LASF12
	.byte	0x1
	.byte	0x68
	.dword	0x60
	.dword	.LFB5
	.dword	.LFE5
	.dword	.LLST16
	.byte	0x1
	.dword	0x27d
	.uleb128 0x12
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.dword	0x60
	.byte	0x1
	.uleb128 0x13
	.dword	.LVL27
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.dword	0x23a
	.uleb128 0x5
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.dword	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.dword	.LVL28
	.dword	0x16a
	.dword	0x252
	.uleb128 0x5
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.dword	.LVL29
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.dword	0x26d
	.uleb128 0x5
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.dword	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.dword	.LVL30
	.dword	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.dword	.LASF14
	.byte	0x1
	.byte	0x3
	.dword	0x28f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.dword	.LASF13
	.uleb128 0x15
	.dword	.LASF15
	.byte	0x1
	.byte	0x4
	.dword	0x60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_bss_value
	.uleb128 0x16
	.byte	0x1
	.dword	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.dword	0x2bc
	.uleb128 0x17
	.dword	0x60
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.dword	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.dword	0x60
	.byte	0x1
	.dword	0x2de
	.uleb128 0x17
	.dword	0x60
	.uleb128 0x17
	.dword	0x2de
	.uleb128 0x17
	.dword	0x60
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.dword	0x2e4
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.dword	.LFB0-.Ltext0
	.dword	.LCFI0-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI0-.Ltext0
	.dword	.LFE0-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST1:
	.dword	.LVL0-.Ltext0
	.dword	.LVL1-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL1-1-.Ltext0
	.dword	.LFE0-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST2:
	.dword	.LFB1-.Ltext0
	.dword	.LCFI2-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI2-.Ltext0
	.dword	.LCFI3-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI3-.Ltext0
	.dword	.LFE1-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 6
	.dword	0
	.dword	0
.LLST3:
	.dword	.LVL2-.Ltext0
	.dword	.LVL4-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL4-1-.Ltext0
	.dword	.LFE1-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST4:
	.dword	.LVL2-.Ltext0
	.dword	.LVL3-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL3-.Ltext0
	.dword	.LFE1-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.dword	0
	.dword	0
.LLST5:
	.dword	.LFB2-.Ltext0
	.dword	.LCFI4-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI4-.Ltext0
	.dword	.LCFI5-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI5-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 8
	.dword	0
	.dword	0
.LLST6:
	.dword	.LVL5-.Ltext0
	.dword	.LVL7-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL7-1-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST7:
	.dword	.LVL5-.Ltext0
	.dword	.LVL6-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL6-.Ltext0
	.dword	.LVL8-.Ltext0
	.word	0x1
	.byte	0x50
	.dword	.LVL8-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	0
	.dword	0
.LLST8:
	.dword	.LFB3-.Ltext0
	.dword	.LCFI7-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI7-.Ltext0
	.dword	.LCFI8-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI8-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 16
	.dword	0
	.dword	0
.LLST9:
	.dword	.LVL9-.Ltext0
	.dword	.LVL10-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL10-.Ltext0
	.dword	.LVL12-.Ltext0
	.word	0x1
	.byte	0x51
	.dword	.LVL12-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST10:
	.dword	.LVL9-.Ltext0
	.dword	.LVL10-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	0
	.dword	0
.LLST11:
	.dword	.LFB4-.Ltext0
	.dword	.LCFI10-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI10-.Ltext0
	.dword	.LCFI11-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI11-.Ltext0
	.dword	.LFE4-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 30
	.dword	0
	.dword	0
.LLST12:
	.dword	.LVL13-.Ltext0
	.dword	.LVL25-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL25-1-.Ltext0
	.dword	.LFE4-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST13:
	.dword	.LVL13-.Ltext0
	.dword	.LVL18-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL18-.Ltext0
	.dword	.LVL19-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL21-.Ltext0
	.dword	.LVL22-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL22-.Ltext0
	.dword	.LVL23-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.dword	.LVL23-.Ltext0
	.dword	.LVL24-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	0
	.dword	0
.LLST14:
	.dword	.LVL13-.Ltext0
	.dword	.LVL16-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL16-.Ltext0
	.dword	.LVL17-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	.LVL17-.Ltext0
	.dword	.LVL25-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	0
	.dword	0
.LLST15:
	.dword	.LVL14-.Ltext0
	.dword	.LVL15-.Ltext0
	.word	0x3
	.byte	0x91
	.sleb128 -9
	.byte	0x9f
	.dword	.LVL15-.Ltext0
	.dword	.LVL17-.Ltext0
	.word	0x3
	.byte	0x91
	.sleb128 -10
	.byte	0x9f
	.dword	.LVL17-.Ltext0
	.dword	.LVL18-.Ltext0
	.word	0x1
	.byte	0x59
	.dword	.LVL21-.Ltext0
	.dword	.LVL22-.Ltext0
	.word	0x1
	.byte	0x59
	.dword	.LVL23-.Ltext0
	.dword	.LVL25-1-.Ltext0
	.word	0x1
	.byte	0x59
	.dword	0
	.dword	0
.LLST16:
	.dword	.LFB5-.Ltext0
	.dword	.LCFI13-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI13-.Ltext0
	.dword	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI14-.Ltext0
	.dword	.LFE5-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 8
	.dword	0
	.dword	0
	.section	.debug_aranges,"",@progbits
	.dword	0x1c
	.word	0x2
	.dword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.dword	.Ltext0
	.dword	.Letext0-.Ltext0
	.dword	0
	.dword	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"/home/hiroaki/cross2-gcc4/exec"
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
.LASF17:
	.string	"cris-elf.c"
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
