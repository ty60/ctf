.file "bfin-elf.c";
// GNU C (GCC) version 4.7.2 (bfin-elf)
//	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -D ___FreeBSD___ -D ARCH="bfin-elf"
// -D USE_UNDERLINE_WRAPPER bfin-elf.c -auxbase-strip bfin-elf.s -g -O
// -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
.global __exit;
.type __exit, STT_FUNC;
__exit:
.LFB0:
	.file 1 "bfin-elf.c"
	.loc 1 39 0
.LVL0:
	[--SP] = RETS;	//
.LCFI0:
	SP += -12;	//,
.LCFI1:
	.loc 1 40 0
	call ___exit;	//
.LVL1:
.LFE0:
	.size	__exit, .-__exit
	.align 4
.global _read;
.type _read, STT_FUNC;
_read:
.LFB1:
	.loc 1 44 0
.LVL2:
	[--SP] = RETS;	//
.LCFI2:
	SP += -12;	//,
.LCFI3:
	.loc 1 45 0
	call ___read;	//
.LVL3:
	.loc 1 46 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE1:
	.size	_read, .-_read
	.align 4
.global _write;
.type _write, STT_FUNC;
_write:
.LFB2:
	.loc 1 48 0
.LVL4:
	[--SP] = RETS;	//
.LCFI4:
	SP += -12;	//,
.LCFI5:
	.loc 1 49 0
	call ___write;	//
.LVL5:
	.loc 1 50 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE2:
	.size	_write, .-_write
	.align 4
.global _open;
.type _open, STT_FUNC;
_open:
.LFB3:
	.loc 1 52 0
.LVL6:
	[--SP] = RETS;	//
.LCFI6:
	SP += -12;	//,
.LCFI7:
	.loc 1 53 0
	call ___open;	//
.LVL7:
	.loc 1 54 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE3:
	.size	_open, .-_open
	.align 4
.global _close;
.type _close, STT_FUNC;
_close:
.LFB4:
	.loc 1 56 0
.LVL8:
	[--SP] = RETS;	//
.LCFI8:
	SP += -12;	//,
.LCFI9:
	.loc 1 57 0
	call ___close;	//
.LVL9:
	.loc 1 58 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE4:
	.size	_close, .-_close
	.align 4
.global _fstat;
.type _fstat, STT_FUNC;
_fstat:
.LFB5:
	.loc 1 63 0
.LVL10:
	[--SP] = RETS;	//
.LCFI10:
	SP += -12;	//,
.LCFI11:
	R0 = R1;	// sb, sb
.LVL11:
	.loc 1 64 0
	R1 = 0 (X);	//,
.LVL12:
	R2 = 60 (X);	//,
	call _memset;	//
.LVL13:
	.loc 1 66 0
	R0 = 0 (X);	//,
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE5:
	.size	_fstat, .-_fstat
	.align 4
.global _lseek;
.type _lseek, STT_FUNC;
_lseek:
.LFB6:
	.loc 1 69 0
.LVL14:
	nop;
	nop;
	nop;
	R0 = R1;	// offset, offset
.LVL15:
	.loc 1 71 0
	rts;
.LFE6:
	.size	_lseek, .-_lseek
	.align 4
.global _sbrk;
.type _sbrk, STT_FUNC;
_sbrk:
.LFB7:
	.loc 1 77 0
.LVL16:
	.loc 1 79 0
	P2.H = _sbrk_top;	// tmp61,
	P2.L = _sbrk_top;	// tmp61,
	R1 = [P2];	// old_top, sbrk_top
.LVL17:
	.loc 1 80 0
	R0 = R1 + R0;	// tmp63, old_top, incr
.LVL18:
	[P2] = R0;	// sbrk_top, tmp63
	.loc 1 82 0
	R0 = R1;	//, old_top
	rts;
.LFE7:
	.size	_sbrk, .-_sbrk
	.align 4
.global _isatty;
.type _isatty, STT_FUNC;
_isatty:
.LFB8:
	.loc 1 85 0
.LVL19:
	.loc 1 87 0
	nop;
	nop;
	nop;
	R0 = 1 (X);	//,
.LVL20:
	rts;
.LFE8:
	.size	_isatty, .-_isatty
	.align 4
.global __read;
.type __read, STT_FUNC;
__read:
.LFB9:
	.loc 1 91 0
.LVL21:
	[--SP] = RETS;	//
.LCFI12:
	SP += -12;	//,
.LCFI13:
	.loc 1 92 0
	call _read;	//
.LVL22:
	.loc 1 93 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE9:
	.size	__read, .-__read
	.align 4
.global __write;
.type __write, STT_FUNC;
__write:
.LFB10:
	.loc 1 95 0
.LVL23:
	[--SP] = RETS;	//
.LCFI14:
	SP += -12;	//,
.LCFI15:
	.loc 1 96 0
	call _write;	//
.LVL24:
	.loc 1 97 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE10:
	.size	__write, .-__write
	.align 4
.global __open;
.type __open, STT_FUNC;
__open:
.LFB11:
	.loc 1 99 0
.LVL25:
	[--SP] = RETS;	//
.LCFI16:
	SP += -12;	//,
.LCFI17:
	.loc 1 100 0
	call _open;	//
.LVL26:
	.loc 1 101 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE11:
	.size	__open, .-__open
	.align 4
.global __close;
.type __close, STT_FUNC;
__close:
.LFB12:
	.loc 1 103 0
.LVL27:
	[--SP] = RETS;	//
.LCFI18:
	SP += -12;	//,
.LCFI19:
	.loc 1 104 0
	call _close;	//
.LVL28:
	.loc 1 105 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE12:
	.size	__close, .-__close
	.align 4
.global __fstat;
.type __fstat, STT_FUNC;
__fstat:
.LFB13:
	.loc 1 107 0
.LVL29:
	[--SP] = RETS;	//
.LCFI20:
	SP += -12;	//,
.LCFI21:
	.loc 1 108 0
	call _fstat;	//
.LVL30:
	.loc 1 109 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE13:
	.size	__fstat, .-__fstat
	.align 4
.global __lseek;
.type __lseek, STT_FUNC;
__lseek:
.LFB14:
	.loc 1 111 0
.LVL31:
	[--SP] = RETS;	//
.LCFI22:
	SP += -12;	//,
.LCFI23:
	.loc 1 112 0
	call _lseek;	//
.LVL32:
	.loc 1 113 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE14:
	.size	__lseek, .-__lseek
	.align 4
.global __sbrk;
.type __sbrk, STT_FUNC;
__sbrk:
.LFB15:
	.loc 1 115 0
.LVL33:
	[--SP] = RETS;	//
.LCFI24:
	SP += -12;	//,
.LCFI25:
	.loc 1 116 0
	call _sbrk;	//
.LVL34:
	.loc 1 117 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE15:
	.size	__sbrk, .-__sbrk
	.align 4
.global __isatty;
.type __isatty, STT_FUNC;
__isatty:
.LFB16:
	.loc 1 119 0
.LVL35:
	[--SP] = RETS;	//
.LCFI26:
	SP += -12;	//,
.LCFI27:
	.loc 1 120 0
	call _isatty;	//
.LVL36:
	.loc 1 121 0
	SP += 12;	//,
	RETS = [SP++];	//
	rts;
.LFE16:
	.size	__isatty, .-__isatty
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
	.align 4
.LC1:
	.string	"bfin-elf"
.text;
	.align 4
.global _main;
.type _main, STT_FUNC;
_main:
.LFB19:
	.loc 1 173 0
	[--SP] = RETS;	//
.LCFI28:
	SP += -12;	//,
.LCFI29:
	.loc 1 174 0
	R0.H = .LC0;	//,
	R0.L = .LC0;	//,
	P2.H = _data_value;	// tmp59,
	P2.L = _data_value;	// tmp59,
	R1 = [P2];	//, data_value
	R2.H = .LC1;	//,
	R2.L = .LC1;	//,
	call _printf;	//
.LVL37:
	.loc 1 175 0
	R0 = 0 (X);	//,
	call _exit;	//
.LVL38:
.LFE19:
	.size	_main, .-_main
	.align 4
.global __startmain;
.type __startmain, STT_FUNC;
__startmain:
.LFB18:
	.loc 1 166 0
	[--SP] = RETS;	//
.LCFI30:
	SP += -12;	//,
.LCFI31:
.LBB4:
.LBB5:
	.loc 1 159 0
	R0.H = __bss_start;	// tmp61,
	R0.L = __bss_start;	// tmp61,
	R2.H = __ebss;	// tmp63,
	R2.L = __ebss;	// tmp63,
	R2 = R2 - R0;	// tmp62, tmp63, tmp61
	R1 = 0 (X);	//,
	call _memset;	//
.LVL39:
.LBE5:
.LBE4:
	.loc 1 168 0
	call _main;	//
.LVL40:
.LFE18:
	.size	__startmain, .-__startmain
.global _sbrk_top;
.data;
	.align 4
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_bss_value,4,4
.global _data_value;
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
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI14-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI16-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI18-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI20-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI22-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI24-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI26-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI28-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI30-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x10
	.align 4
.LEFDE36:
.text;
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/bfin-elf/4.7.2/../../../../bfin-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x97f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.4byte	.LASF82
	.4byte	.LASF83
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd5
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x10
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1d
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6e
	.4byte	0x7a
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x86
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa3
	.4byte	0x6f
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa4
	.4byte	0x81
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa5
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa6
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc4
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.4byte	0x216
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1b
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1c
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1d
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1e
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x20
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x21
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x22
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x30
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x31
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x32
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x33
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x34
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x35
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x36
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x37
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x38
	.4byte	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x226
	.uleb128 0xb
	.4byte	0xa2
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x261
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x8a5
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x2cb
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xa9
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x8b9
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x335
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0x335
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x8db
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
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
	.4byte	0x33b
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x3a7
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST11
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0x8fd
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x3e5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x91f
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x43c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x53
	.4byte	.LLST17
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.4byte	0x43c
	.4byte	.LLST18
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x937
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.4byte	0x488
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.4byte	0x4c2
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x53
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4e
	.4byte	0xa9
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.4byte	0x4ee
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST21
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x558
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LLST23
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5a
	.4byte	0xa9
	.4byte	.LLST24
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LLST25
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x261
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x5c2
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.4byte	.LLST27
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5e
	.4byte	0x335
	.4byte	.LLST28
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.4byte	.LLST29
	.uleb128 0xe
	.4byte	.LVL24
	.4byte	0x2cb
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x62d
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.4byte	0xb8
	.4byte	.LLST31
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.4byte	.LLST32
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.4byte	.LLST33
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x33c
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST34
	.byte	0x1
	.4byte	0x66b
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.4byte	0x53
	.4byte	.LLST35
	.uleb128 0xe
	.4byte	.LVL28
	.4byte	0x3a7
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST36
	.byte	0x1
	.4byte	0x6be
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x53
	.4byte	.LLST37
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.4byte	0x43c
	.4byte	.LLST38
	.uleb128 0xe
	.4byte	.LVL30
	.4byte	0x3e5
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST39
	.byte	0x1
	.4byte	0x728
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST40
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST41
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST42
	.uleb128 0xe
	.4byte	.LVL32
	.4byte	0x442
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST43
	.byte	0x1
	.4byte	0x767
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x72
	.4byte	0x53
	.4byte	.LLST44
	.uleb128 0xe
	.4byte	.LVL34
	.4byte	0x488
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST45
	.byte	0x1
	.4byte	0x7a5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.4byte	0x53
	.4byte	.LLST46
	.uleb128 0xe
	.4byte	.LVL36
	.4byte	0x4c2
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0xac
	.4byte	0x53
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST47
	.byte	0x1
	.4byte	0x7f2
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0x959
	.4byte	0x7e2
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL38
	.4byte	0x972
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9d
	.4byte	0x53
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST48
	.byte	0x1
	.4byte	0x848
	.uleb128 0x19
	.4byte	0x7f2
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0x83e
	.uleb128 0xe
	.4byte	.LVL39
	.4byte	0x937
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x7a5
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x9
	.4byte	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_bss_value
	.uleb128 0x1c
	.4byte	.LASF71
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sbrk_top
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF87
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x8b9
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF75
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x8db
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0xa9
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x8fd
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x335
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF77
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x91f
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF78
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x937
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF79
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0xa9
	.byte	0x1
	.4byte	0x959
	.uleb128 0x1e
	.4byte	0xa9
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF80
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x972
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF88
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1-.Ltext0
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
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
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
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB11-.Ltext0
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
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE18-.Ltext0
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
.LASF80:
	.string	"printf"
.LASF13:
	.string	"__gid_t"
.LASF8:
	.string	"size_t"
.LASF45:
	.string	"write"
.LASF50:
	.string	"close"
.LASF47:
	.string	"path"
.LASF7:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF84:
	.string	"stat"
.LASF66:
	.string	"_exit"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"st_ino"
.LASF10:
	.string	"long int"
.LASF60:
	.string	"_open"
.LASF63:
	.string	"_lseek"
.LASF62:
	.string	"_fstat"
.LASF23:
	.string	"nlink_t"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF56:
	.string	"incr"
.LASF11:
	.string	"__dev_t"
.LASF28:
	.string	"st_uid"
.LASF33:
	.string	"st_spare1"
.LASF35:
	.string	"st_spare2"
.LASF37:
	.string	"st_spare3"
.LASF40:
	.string	"st_spare4"
.LASF5:
	.string	"unsigned int"
.LASF61:
	.string	"_close"
.LASF0:
	.string	"long unsigned int"
.LASF54:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF82:
	.string	"bfin-elf.c"
.LASF43:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF52:
	.string	"lseek"
.LASF71:
	.string	"_heap"
.LASF65:
	.string	"_isatty"
.LASF32:
	.string	"st_atime"
.LASF31:
	.string	"st_size"
.LASF59:
	.string	"_write"
.LASF26:
	.string	"st_mode"
.LASF70:
	.string	"bss_value"
.LASF57:
	.string	"isatty"
.LASF14:
	.string	"sizetype"
.LASF46:
	.string	"open"
.LASF81:
	.string	"GNU C 4.7.2"
.LASF9:
	.string	"_off_t"
.LASF73:
	.string	"_bss_start"
.LASF19:
	.string	"dev_t"
.LASF16:
	.string	"time_t"
.LASF75:
	.string	"__read"
.LASF55:
	.string	"sbrk"
.LASF58:
	.string	"_read"
.LASF27:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF68:
	.string	"_startmain"
.LASF38:
	.string	"st_blksize"
.LASF74:
	.string	"_ebss"
.LASF87:
	.string	"__exit"
.LASF36:
	.string	"st_ctime"
.LASF88:
	.string	"exit"
.LASF69:
	.string	"data_value"
.LASF30:
	.string	"st_rdev"
.LASF85:
	.string	"old_top"
.LASF15:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF78:
	.string	"__close"
.LASF77:
	.string	"__open"
.LASF42:
	.string	"buffer"
.LASF12:
	.string	"__uid_t"
.LASF53:
	.string	"offset"
.LASF29:
	.string	"st_gid"
.LASF86:
	.string	"_init"
.LASF79:
	.string	"memset"
.LASF41:
	.string	"status"
.LASF22:
	.string	"mode_t"
.LASF24:
	.string	"st_dev"
.LASF72:
	.string	"sbrk_top"
.LASF76:
	.string	"__write"
.LASF48:
	.string	"flags"
.LASF51:
	.string	"fstat"
.LASF44:
	.string	"read"
.LASF83:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF67:
	.string	"main"
.LASF34:
	.string	"st_mtime"
.LASF64:
	.string	"_sbrk"
.LASF17:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
