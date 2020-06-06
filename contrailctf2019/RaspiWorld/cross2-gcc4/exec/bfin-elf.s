.file "bfin-elf.c";
// GNU C (GCC) version 4.7.2 (bfin-elf)
//	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="bfin-elf"
// bfin-elf.c -auxbase-strip bfin-elf.s -g -O -Wall -fno-builtin
// -fverbose-asm -fomit-frame-pointer
// options enabled:  -fauto-inc-dec -fbranch-count-reg
// -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
// -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
// -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
// -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability
// -fident -fif-conversion -fif-conversion2 -finline -finline-atomics
// -finline-functions-called-once -fipa-profile -fipa-pure-const
// -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
// -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
// -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
// -fpeephole -fprefetch-loop-arrays -freg-struct-return
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
// -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
// -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
// -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
// -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
// -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
// -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
// -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
// -fvar-tracking -fvar-tracking-assignments -fverbose-asm
// -fzero-initialized-in-bss -mcsync-anomaly -mspecld-anomaly

.text;
.Ltext0:
	.align 4
.global _exit;
.type _exit, STT_FUNC;
_exit:
.LFB0:
	.file 1 "bfin-elf.c"
	.loc 1 30 0
.LVL0:
	[--SP] = RETS;	//
.LCFI0:
	SP += -12;	//,
.LCFI1:
	.loc 1 31 0
	call ___exit;	//
.LVL1:
.LFE0:
	.size	_exit, .-_exit
	.align 4
.global _write1;
.type _write1, STT_FUNC;
_write1:
.LFB1:
	.loc 1 35 0
.LVL2:
	[--SP] = RETS;	//
.LCFI2:
	SP += -12;	//,
.LCFI3:
	B [SP+20] = R1;	// c, c
	.loc 1 36 0
	R1 = SP;	//,
.LVL3:
	R1 += 20;	//,
	R2 = 1 (X);	//,
	call ___write;	//
.LVL4:
	.loc 1 37 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE1:
	.size	_write1, .-_write1
	.align 4
.global _putchar;
.type _putchar, STT_FUNC;
_putchar:
.LFB2:
	.loc 1 40 0
.LVL5:
	[--sp] = ( r7:7 );

.LCFI4:
	[--SP] = RETS;	//
.LCFI5:
	SP += -12;	//,
.LCFI6:
	R7 = R1;	// c, c
	.loc 1 41 0
	call _write1;	//
.LVL6:
	.loc 1 43 0
	R0 = R7;	//, c
	SP += 12;	//,
	RETS = [SP++];	//
	( r7:7 ) = [sp++];

.LCFI7:
.LVL7:
	rts;
.LFE2:
	.size	_putchar, .-_putchar
	.align 4
.global _puts;
.type _puts, STT_FUNC;
_puts:
.LFB3:
	.loc 1 46 0
.LVL8:
	[--sp] = ( r7:7, p5:5 );

.LCFI8:
	[--SP] = RETS;	//
.LCFI9:
	SP += -12;	//,
.LCFI10:
	R7 = R0;	// fd, fd
	.loc 1 47 0
	P2 = R1;	//, str
	R2 = B [P2] (X);	// D.984, *str_2(D)
	R0 = R2.B (X);	// D.984, D.984
.LVL9:
	cc =R0==0;	// D.984,
	if cc jump .L5;	//
	.loc 1 45 0
	P5 = R1;	// ivtmp.15, str
	P5 += 1;	// ivtmp.15,
.LVL10:
.L6:
	.loc 1 48 0 discriminator 2
	R1 = R2.B (X);	// D.984, D.984
	R0 = R7;	//, fd
	call _putchar;	//
.LVL11:
	.loc 1 47 0 discriminator 2
	R2 = B [P5++] (X);	// D.984, MEM[base: D.1017_19, offset: 0B]
	R1 = R2.B (X);	// D.984, D.984
	cc =R1==0;	// D.984,
	if !cc jump .L6 (bp);	//
.L5:
	.loc 1 50 0
	R0 = 0 (X);	//,
	SP += 12;	//,
	RETS = [SP++];	//
	( r7:7, p5:5 ) = [sp++];

.LCFI11:
.LVL12:
	rts;
.LFE3:
	.size	_puts, .-_puts
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"0123456789abcdef"
.text;
	.align 4
.global _putxval;
.type _putxval, STT_FUNC;
_putxval:
.LFB4:
	.loc 1 83 0
.LVL13:
	[--sp] = ( r7:6, p5:5 );

.LCFI12:
	[--SP] = RETS;	//
.LCFI13:
	SP += -32;	//,
.LCFI14:
.LVL14:
	.loc 1 88 0
	R3 = 0 (X);	// tmp69,
	B [SP+28] = R3;	// MEM[(char *)&buf + 16B], tmp69
.LVL15:
	.loc 1 90 0
	cc =R1==0;	// value,
	if !cc jump .L9 (bp);	//
	.loc 1 91 0 discriminator 1
	cc =R2==0;	// column,
	R3 = 1 (X);	// tmp80,
	if cc R2 = R3;	// column, tmp80
.LVL16:
.L9:
	.loc 1 82 0 discriminator 1
	P2 = SP;	// ivtmp.21,
	P2 += 26;	// ivtmp.21,
	.loc 1 94 0 discriminator 1
	R6 = 48 (X);	// tmp81,
	P0.H = .LC0;	// tmp82,
	P0.L = .LC0;	// tmp82,
	R7 = 15 (X);	// tmp83,
	jump.s .L10;	//
.LVL17:
.L12:
	.loc 1 94 0 is_stmt 0
	R3 = R1 & R7;	// tmp73, value, tmp83
	P5 = R3;	//, tmp73
	P1 = P0 + P5;	// tmp74, tmp82,
	R3 = B [P1] (X);	// tmp75,
	B [P2+1] = R3;	// MEM[base: D.1023_24, offset: 1B], tmp75
.LVL18:
	.loc 1 95 0 is_stmt 1
	R1 >>= 4;	// value,
.LVL19:
	.loc 1 96 0
	cc =R2==0;	// column,
	if cc jump .L11 (bp);	//
.LVL20:
.L14:
	.loc 1 96 0 is_stmt 0 discriminator 1
	R2 += -1;	// column,
.LVL21:
.L11:
	P2 += -1;	// ivtmp.21,
.LVL22:
.L10:
	.loc 1 82 0 is_stmt 1 discriminator 1
	R3 = P2;	// p, ivtmp.21
	R3 += 1;	// p,
.LVL23:
	.loc 1 93 0 discriminator 1
	cc =R1==0;	// value,
	if !cc jump .L12 (bp);	//
	.loc 1 93 0 is_stmt 0 discriminator 2
	cc =R2==0;	// column,
	if cc jump .L17;	//
	.loc 1 94 0 is_stmt 1
	B [P2+1] = R6;	// MEM[base: D.1024_5, offset: 1B], tmp81
.LVL24:
	jump.s .L14;	//
.LVL25:
.L17:
	.loc 1 99 0
	R1 = R3;	// tmp76, p
.LVL26:
	R1 += 1;	// tmp76,
	call _puts;	//
.LVL27:
	.loc 1 102 0
	R0 = 0 (X);	//,
	SP += 32;	//,
	RETS = [SP++];	//
	( r7:6, p5:5 ) = [sp++];

.LCFI15:
	rts;
.LFE4:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"Hello World! "
	.align 4
.LC2:
	.string	" This architecture is bfin-elf\n"
.text;
	.align 4
.global _main;
.type _main, STT_FUNC;
_main:
.LFB5:
	.loc 1 105 0
	[--SP] = RETS;	//
.LCFI16:
	SP += -12;	//,
.LCFI17:
.LVL28:
	.loc 1 107 0
	R0 = 1 (X);	//,
	R1.H = .LC1;	//,
	R1.L = .LC1;	//,
	call _puts;	//
.LVL29:
	.loc 1 108 0
	R0 = 1 (X);	//,
	P2.H = _data_value;	// tmp61,
	P2.L = _data_value;	// tmp61,
	R1 = [P2];	//, data_value
	R2 = 0 (X);	//,
	call _putxval;	//
.LVL30:
	.loc 1 109 0
	R0 = 1 (X);	//,
	R1.H = .LC2;	//,
	R1.L = .LC2;	//,
	call _puts;	//
.LVL31:
	.loc 1 110 0
	R0 = 0 (X);	//,
	call _exit;	//
.LVL32:
.LFE5:
	.size	_main, .-_main
	.comm	_bss_value,4,4
.global _data_value;
.data;
	.align 4
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x23
	.byte	0xc
	.uleb128 0xe
	.uleb128 0
	.align 4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0xa3
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x14
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x87
	.uleb128 0x1
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0xc
	.byte	0x86
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.byte	0xa3
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x24
	.align 4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI16-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE10:
.text;
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e8
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
	.4byte	0x2ae
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
	.string	"int"
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
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.4byte	0x60
	.4byte	.LLST3
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	0x2c2
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 20
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
	.4byte	0x115
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST6
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST7
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	0x67
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
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
	.4byte	0x161
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.4byte	0x60
	.4byte	.LLST9
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.4byte	0x161
	.4byte	.LLST10
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x167
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
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
	.4byte	0x1dd
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST12
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x52
	.4byte	0x1dd
	.4byte	.LLST13
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST14
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x161
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LVL27
	.4byte	0x115
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.4byte	0x167
	.4byte	0x1f4
	.uleb128 0xf
	.4byte	0x1f4
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
	.4byte	0x283
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x60
	.byte	0x1
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0x115
	.4byte	0x23f
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
	.4byte	.LVL30
	.4byte	0x16e
	.4byte	0x257
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
	.4byte	.LVL31
	.4byte	0x115
	.4byte	0x273
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
	.4byte	.LVL32
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
	.4byte	0x295
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
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
	.4byte	_bss_value
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x2c2
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
	.4byte	0x2e4
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x2e4
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ea
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
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
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
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
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1-.Ltext0
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
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 8
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 12
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 24
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 12
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 48
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -21
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"bfin-elf.c"
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
.LASF18:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF5:
	.string	"char"
	.ident	"GCC: (GNU) 4.7.2"
