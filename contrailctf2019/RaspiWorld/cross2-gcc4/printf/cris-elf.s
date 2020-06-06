	.file	"cris-elf.c"
;# GNU C (GCC) version 4.7.2 (cris-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -D ___FreeBSD___ -D ARCH="cris-elf"
;# -D USE_UNDERLINE_WRAPPER cris-elf.c -melf -auxbase-strip cris-elf.s -g
;# -O -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
	.global __exit
	.type	__exit, @function
__exit:
.LFB0:
	.file 1 "cris-elf.c"
	.loc 1 39 0
.LVL0:
	subq 4,$sp	;#,
.LCFI0:
	move $srp,[$sp]	;#,
.LCFI1:
	.loc 1 40 0
	jsr ___exit	;#
.LVL1:
.LFE0:
	.size	__exit, .-__exit
	.align 1
	.global _read
	.type	_read, @function
_read:
.LFB1:
	.loc 1 44 0
.LVL2:
	subq 4,$sp	;#,
.LCFI2:
	move $srp,[$sp]	;#,
.LCFI3:
	.loc 1 45 0
	Jsr ___read	;#
.LVL3:
	.loc 1 46 0
	jump [$sp+]
.LFE1:
	.size	_read, .-_read
	.align 1
	.global _write
	.type	_write, @function
_write:
.LFB2:
	.loc 1 48 0
.LVL4:
	subq 4,$sp	;#,
.LCFI4:
	move $srp,[$sp]	;#,
.LCFI5:
	.loc 1 49 0
	Jsr ___write	;#
.LVL5:
	.loc 1 50 0
	jump [$sp+]
.LFE2:
	.size	_write, .-_write
	.align 1
	.global _open
	.type	_open, @function
_open:
.LFB3:
	.loc 1 52 0
.LVL6:
	subq 4,$sp	;#,
.LCFI6:
	move $srp,[$sp]	;#,
.LCFI7:
	.loc 1 53 0
	Jsr ___open	;#
.LVL7:
	.loc 1 54 0
	jump [$sp+]
.LFE3:
	.size	_open, .-_open
	.align 1
	.global _close
	.type	_close, @function
_close:
.LFB4:
	.loc 1 56 0
.LVL8:
	subq 4,$sp	;#,
.LCFI8:
	move $srp,[$sp]	;#,
.LCFI9:
	.loc 1 57 0
	Jsr ___close	;#
.LVL9:
	.loc 1 58 0
	jump [$sp+]
.LFE4:
	.size	_close, .-_close
	.align 1
	.global _fstat
	.type	_fstat, @function
_fstat:
.LFB5:
	.loc 1 63 0
.LVL10:
	subq 4,$sp	;#,
.LCFI10:
	move $srp,[$sp]	;#,
.LCFI11:
	.loc 1 64 0
	move.d $r11,$r10	;# sb,
.LVL11:
	clear.d $r11	;#
.LVL12:
	movu.b 60,$r12	;#,
	Jsr _memset	;#
.LVL13:
	.loc 1 66 0
	clear.d $r10	;#
	jump [$sp+]
.LFE5:
	.size	_fstat, .-_fstat
	.align 1
	.global _lseek
	.type	_lseek, @function
_lseek:
.LFB6:
	.loc 1 69 0
.LVL14:
	.loc 1 71 0
	ret
	move.d $r11,$r10	;# offset,

.LFE6:
	.size	_lseek, .-_lseek
	.align 1
	.global _sbrk
	.type	_sbrk, @function
_sbrk:
.LFB7:
	.loc 1 77 0
.LVL15:
	.loc 1 79 0
	move.d _sbrk_top,$r9	;#,
	move.d [$r9],$r9	;# sbrk_top, old_top
.LVL16:
	.loc 1 80 0
	add.d $r9,$r10	;# old_top, tmp31
.LVL17:
	move.d $r10,[_sbrk_top]	;# tmp31, sbrk_top
	.loc 1 82 0
	ret
	move.d $r9,$r10	;# old_top,

.LFE7:
	.size	_sbrk, .-_sbrk
	.align 1
	.global _isatty
	.type	_isatty, @function
_isatty:
.LFB8:
	.loc 1 85 0
.LVL18:
	.loc 1 87 0
	ret
	moveq 1,$r10	;#,

.LFE8:
	.size	_isatty, .-_isatty
	.align 1
	.global __read
	.type	__read, @function
__read:
.LFB9:
	.loc 1 91 0
.LVL19:
	subq 4,$sp	;#,
.LCFI12:
	move $srp,[$sp]	;#,
.LCFI13:
	.loc 1 92 0
	Jsr _read	;#
.LVL20:
	.loc 1 93 0
	jump [$sp+]
.LFE9:
	.size	__read, .-__read
	.align 1
	.global __write
	.type	__write, @function
__write:
.LFB10:
	.loc 1 95 0
.LVL21:
	subq 4,$sp	;#,
.LCFI14:
	move $srp,[$sp]	;#,
.LCFI15:
	.loc 1 96 0
	Jsr _write	;#
.LVL22:
	.loc 1 97 0
	jump [$sp+]
.LFE10:
	.size	__write, .-__write
	.align 1
	.global __open
	.type	__open, @function
__open:
.LFB11:
	.loc 1 99 0
.LVL23:
	subq 4,$sp	;#,
.LCFI16:
	move $srp,[$sp]	;#,
.LCFI17:
	.loc 1 100 0
	Jsr _open	;#
.LVL24:
	.loc 1 101 0
	jump [$sp+]
.LFE11:
	.size	__open, .-__open
	.align 1
	.global __close
	.type	__close, @function
__close:
.LFB12:
	.loc 1 103 0
.LVL25:
	subq 4,$sp	;#,
.LCFI18:
	move $srp,[$sp]	;#,
.LCFI19:
	.loc 1 104 0
	Jsr _close	;#
.LVL26:
	.loc 1 105 0
	jump [$sp+]
.LFE12:
	.size	__close, .-__close
	.align 1
	.global __fstat
	.type	__fstat, @function
__fstat:
.LFB13:
	.loc 1 107 0
.LVL27:
	subq 4,$sp	;#,
.LCFI20:
	move $srp,[$sp]	;#,
.LCFI21:
	.loc 1 108 0
	Jsr _fstat	;#
.LVL28:
	.loc 1 109 0
	jump [$sp+]
.LFE13:
	.size	__fstat, .-__fstat
	.align 1
	.global __lseek
	.type	__lseek, @function
__lseek:
.LFB14:
	.loc 1 111 0
.LVL29:
	subq 4,$sp	;#,
.LCFI22:
	move $srp,[$sp]	;#,
.LCFI23:
	.loc 1 112 0
	Jsr _lseek	;#
.LVL30:
	.loc 1 113 0
	jump [$sp+]
.LFE14:
	.size	__lseek, .-__lseek
	.align 1
	.global __sbrk
	.type	__sbrk, @function
__sbrk:
.LFB15:
	.loc 1 115 0
.LVL31:
	subq 4,$sp	;#,
.LCFI24:
	move $srp,[$sp]	;#,
.LCFI25:
	.loc 1 116 0
	Jsr _sbrk	;#
.LVL32:
	.loc 1 117 0
	jump [$sp+]
.LFE15:
	.size	__sbrk, .-__sbrk
	.align 1
	.global __isatty
	.type	__isatty, @function
__isatty:
.LFB16:
	.loc 1 119 0
.LVL33:
	subq 4,$sp	;#,
.LCFI26:
	move $srp,[$sp]	;#,
.LCFI27:
	.loc 1 120 0
	Jsr _isatty	;#
.LVL34:
	.loc 1 121 0
	jump [$sp+]
.LFE16:
	.size	__isatty, .-__isatty
	.section	.rodata.str1.2,"aMS",@progbits,1
	.align 1
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
	.align 1
.LC1:
	.string	"cris-elf"
	.text
	.align 1
	.global _main
	.type	_main, @function
_main:
.LFB19:
	.loc 1 173 0
	subq 4,$sp	;#,
.LCFI28:
	move $srp,[$sp]	;#,
.LCFI29:
	.loc 1 174 0
	move.d .LC0,$r10	;#,
	move.d _data_value,$r11	;#,
	move.d [$r11],$r11	;# data_value,
	move.d .LC1,$r12	;#,
	Jsr _printf	;#
.LVL35:
	.loc 1 175 0
	clear.d $r10	;#
	jsr _exit	;#
.LVL36:
.LFE19:
	.size	_main, .-_main
	.align 1
	.global __startmain
	.type	__startmain, @function
__startmain:
.LFB18:
	.loc 1 166 0
	subq 4,$sp	;#,
.LCFI30:
	move $srp,[$sp]	;#,
.LCFI31:
.LBB4:
.LBB5:
	.loc 1 159 0
	move.d __bss_start,$r10	;#,
	clear.d $r11	;#
	move.d __ebss,$r12	;#, tmp33
	sub.d $r10,$r12	;#,
	Jsr _memset	;#
.LVL37:
.LBE5:
.LBE4:
	.loc 1 168 0
	Jsr _main	;#
.LVL38:
.LFE18:
	.size	__startmain, .-__startmain
	.global _sbrk_top
	.data
	.align 1
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.dword	__heap
	.comm	_bss_value,4,2
	.global _data_value
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
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE4:
.LSFDE6:
	.dword	.LEFDE6-.LASFDE6
.LASFDE6:
	.dword	.Lframe0
	.dword	.LFB3
	.dword	.LFE3-.LFB3
	.byte	0x4
	.dword	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI7-.LCFI6
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE6:
.LSFDE8:
	.dword	.LEFDE8-.LASFDE8
.LASFDE8:
	.dword	.Lframe0
	.dword	.LFB4
	.dword	.LFE4-.LFB4
	.byte	0x4
	.dword	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI9-.LCFI8
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE8:
.LSFDE10:
	.dword	.LEFDE10-.LASFDE10
.LASFDE10:
	.dword	.Lframe0
	.dword	.LFB5
	.dword	.LFE5-.LFB5
	.byte	0x4
	.dword	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI11-.LCFI10
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE10:
.LSFDE12:
	.dword	.LEFDE12-.LASFDE12
.LASFDE12:
	.dword	.Lframe0
	.dword	.LFB6
	.dword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.dword	.LEFDE14-.LASFDE14
.LASFDE14:
	.dword	.Lframe0
	.dword	.LFB7
	.dword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.dword	.LEFDE16-.LASFDE16
.LASFDE16:
	.dword	.Lframe0
	.dword	.LFB8
	.dword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.dword	.LEFDE18-.LASFDE18
.LASFDE18:
	.dword	.Lframe0
	.dword	.LFB9
	.dword	.LFE9-.LFB9
	.byte	0x4
	.dword	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI13-.LCFI12
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE18:
.LSFDE20:
	.dword	.LEFDE20-.LASFDE20
.LASFDE20:
	.dword	.Lframe0
	.dword	.LFB10
	.dword	.LFE10-.LFB10
	.byte	0x4
	.dword	.LCFI14-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI15-.LCFI14
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE20:
.LSFDE22:
	.dword	.LEFDE22-.LASFDE22
.LASFDE22:
	.dword	.Lframe0
	.dword	.LFB11
	.dword	.LFE11-.LFB11
	.byte	0x4
	.dword	.LCFI16-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI17-.LCFI16
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE22:
.LSFDE24:
	.dword	.LEFDE24-.LASFDE24
.LASFDE24:
	.dword	.Lframe0
	.dword	.LFB12
	.dword	.LFE12-.LFB12
	.byte	0x4
	.dword	.LCFI18-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI19-.LCFI18
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE24:
.LSFDE26:
	.dword	.LEFDE26-.LASFDE26
.LASFDE26:
	.dword	.Lframe0
	.dword	.LFB13
	.dword	.LFE13-.LFB13
	.byte	0x4
	.dword	.LCFI20-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI21-.LCFI20
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE26:
.LSFDE28:
	.dword	.LEFDE28-.LASFDE28
.LASFDE28:
	.dword	.Lframe0
	.dword	.LFB14
	.dword	.LFE14-.LFB14
	.byte	0x4
	.dword	.LCFI22-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI23-.LCFI22
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE28:
.LSFDE30:
	.dword	.LEFDE30-.LASFDE30
.LASFDE30:
	.dword	.Lframe0
	.dword	.LFB15
	.dword	.LFE15-.LFB15
	.byte	0x4
	.dword	.LCFI24-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI25-.LCFI24
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE30:
.LSFDE32:
	.dword	.LEFDE32-.LASFDE32
.LASFDE32:
	.dword	.Lframe0
	.dword	.LFB16
	.dword	.LFE16-.LFB16
	.byte	0x4
	.dword	.LCFI26-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI27-.LCFI26
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE32:
.LSFDE34:
	.dword	.LEFDE34-.LASFDE34
.LASFDE34:
	.dword	.Lframe0
	.dword	.LFB19
	.dword	.LFE19-.LFB19
	.byte	0x4
	.dword	.LCFI28-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI29-.LCFI28
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE34:
.LSFDE36:
	.dword	.LEFDE36-.LASFDE36
.LASFDE36:
	.dword	.Lframe0
	.dword	.LFB18
	.dword	.LFE18-.LFB18
	.byte	0x4
	.dword	.LCFI30-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI31-.LCFI30
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE36:
	.text
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/cris-elf/4.7.2/../../../../cris-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.dword	0x97f
	.word	0x2
	.dword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.dword	.LASF81
	.byte	0x1
	.dword	.LASF82
	.dword	.LASF83
	.dword	.Ltext0
	.dword	.Letext0
	.dword	.Ldebug_line0
	.uleb128 0x2
	.dword	.LASF8
	.byte	0x2
	.byte	0xd5
	.dword	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.dword	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.dword	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.dword	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.dword	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.dword	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.dword	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.dword	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.dword	.LASF7
	.uleb128 0x2
	.dword	.LASF9
	.byte	0x3
	.byte	0x10
	.dword	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.dword	.LASF10
	.uleb128 0x2
	.dword	.LASF11
	.byte	0x3
	.byte	0x18
	.dword	0x45
	.uleb128 0x2
	.dword	.LASF12
	.byte	0x3
	.byte	0x1d
	.dword	0x4c
	.uleb128 0x2
	.dword	.LASF13
	.byte	0x3
	.byte	0x20
	.dword	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.dword	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.dword	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.dword	.LASF15
	.uleb128 0x6
	.byte	0x4
	.dword	0xbe
	.uleb128 0x7
	.dword	0xb1
	.uleb128 0x2
	.dword	.LASF16
	.byte	0x4
	.byte	0x6e
	.dword	0x7a
	.uleb128 0x2
	.dword	.LASF17
	.byte	0x4
	.byte	0x86
	.dword	0x4c
	.uleb128 0x2
	.dword	.LASF18
	.byte	0x4
	.byte	0xa3
	.dword	0x6f
	.uleb128 0x2
	.dword	.LASF19
	.byte	0x4
	.byte	0xa4
	.dword	0x81
	.uleb128 0x2
	.dword	.LASF20
	.byte	0x4
	.byte	0xa5
	.dword	0x8c
	.uleb128 0x2
	.dword	.LASF21
	.byte	0x4
	.byte	0xa6
	.dword	0x97
	.uleb128 0x2
	.dword	.LASF22
	.byte	0x4
	.byte	0xc4
	.dword	0x5a
	.uleb128 0x2
	.dword	.LASF23
	.byte	0x4
	.byte	0xc9
	.dword	0x4c
	.uleb128 0x8
	.dword	.LASF84
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.dword	0x216
	.uleb128 0x9
	.dword	.LASF24
	.byte	0x5
	.byte	0x1b
	.dword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.dword	.LASF25
	.byte	0x5
	.byte	0x1c
	.dword	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.dword	.LASF26
	.byte	0x5
	.byte	0x1d
	.dword	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.dword	.LASF27
	.byte	0x5
	.byte	0x1e
	.dword	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.dword	.LASF28
	.byte	0x5
	.byte	0x1f
	.dword	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.dword	.LASF29
	.byte	0x5
	.byte	0x20
	.dword	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.dword	.LASF30
	.byte	0x5
	.byte	0x21
	.dword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.dword	.LASF31
	.byte	0x5
	.byte	0x22
	.dword	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.dword	.LASF32
	.byte	0x5
	.byte	0x30
	.dword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.dword	.LASF33
	.byte	0x5
	.byte	0x31
	.dword	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.dword	.LASF34
	.byte	0x5
	.byte	0x32
	.dword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.dword	.LASF35
	.byte	0x5
	.byte	0x33
	.dword	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.dword	.LASF36
	.byte	0x5
	.byte	0x34
	.dword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.dword	.LASF37
	.byte	0x5
	.byte	0x35
	.dword	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.dword	.LASF38
	.byte	0x5
	.byte	0x36
	.dword	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.dword	.LASF39
	.byte	0x5
	.byte	0x37
	.dword	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.dword	.LASF40
	.byte	0x5
	.byte	0x38
	.dword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.dword	0x7a
	.dword	0x226
	.uleb128 0xb
	.dword	0xa2
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.dword	.LASF66
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.dword	.LFB0
	.dword	.LFE0
	.dword	.LLST0
	.byte	0x1
	.dword	0x261
	.uleb128 0xd
	.dword	.LASF41
	.byte	0x1
	.byte	0x26
	.dword	0x53
	.dword	.LLST1
	.uleb128 0xe
	.dword	.LVL1
	.dword	0x8a5
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.dword	0x53
	.dword	.LFB1
	.dword	.LFE1
	.dword	.LLST2
	.byte	0x1
	.dword	0x2cb
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.dword	0x53
	.dword	.LLST3
	.uleb128 0xd
	.dword	.LASF42
	.byte	0x1
	.byte	0x2b
	.dword	0xa9
	.dword	.LLST4
	.uleb128 0xd
	.dword	.LASF43
	.byte	0x1
	.byte	0x2b
	.dword	0x53
	.dword	.LLST5
	.uleb128 0xe
	.dword	.LVL3
	.dword	0x8b9
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.dword	0x53
	.dword	.LFB2
	.dword	.LFE2
	.dword	.LLST6
	.byte	0x1
	.dword	0x335
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.dword	0x53
	.dword	.LLST7
	.uleb128 0xd
	.dword	.LASF42
	.byte	0x1
	.byte	0x2f
	.dword	0x335
	.dword	.LLST8
	.uleb128 0xd
	.dword	.LASF43
	.byte	0x1
	.byte	0x2f
	.dword	0x53
	.dword	.LLST9
	.uleb128 0xe
	.dword	.LVL5
	.dword	0x8db
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
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
	.dword	0x33b
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.dword	0x53
	.dword	.LFB3
	.dword	.LFE3
	.dword	.LLST10
	.byte	0x1
	.dword	0x3a7
	.uleb128 0xd
	.dword	.LASF47
	.byte	0x1
	.byte	0x33
	.dword	0xb8
	.dword	.LLST11
	.uleb128 0xd
	.dword	.LASF48
	.byte	0x1
	.byte	0x33
	.dword	0x53
	.dword	.LLST12
	.uleb128 0xd
	.dword	.LASF49
	.byte	0x1
	.byte	0x33
	.dword	0x53
	.dword	.LLST13
	.uleb128 0xe
	.dword	.LVL7
	.dword	0x8fd
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.dword	0x53
	.dword	.LFB4
	.dword	.LFE4
	.dword	.LLST14
	.byte	0x1
	.dword	0x3e5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.dword	0x53
	.dword	.LLST15
	.uleb128 0xe
	.dword	.LVL9
	.dword	0x91f
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.dword	0x53
	.dword	.LFB5
	.dword	.LFE5
	.dword	.LLST16
	.byte	0x1
	.dword	0x43c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.dword	0x53
	.dword	.LLST17
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.dword	0x43c
	.dword	.LLST18
	.uleb128 0xe
	.dword	.LVL13
	.dword	0x937
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.dword	0x11b
	.uleb128 0x13
	.byte	0x1
	.dword	.LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.dword	0x53
	.dword	.LFB6
	.dword	.LFE6
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x488
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.dword	0x53
	.dword	.LLST19
	.uleb128 0x14
	.dword	.LASF53
	.byte	0x1
	.byte	0x44
	.dword	0x53
	.byte	0x1
	.byte	0x5b
	.uleb128 0x14
	.dword	.LASF54
	.byte	0x1
	.byte	0x44
	.dword	0x53
	.byte	0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.dword	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.dword	0xa9
	.dword	.LFB7
	.dword	.LFE7
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x4c2
	.uleb128 0xd
	.dword	.LASF56
	.byte	0x1
	.byte	0x4c
	.dword	0x53
	.dword	.LLST20
	.uleb128 0x15
	.dword	.LASF85
	.byte	0x1
	.byte	0x4e
	.dword	0xa9
	.byte	0x1
	.byte	0x59
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.dword	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.dword	0x53
	.dword	.LFB8
	.dword	.LFE8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x4ee
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.dword	0x53
	.dword	.LLST21
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF58
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.dword	0x53
	.dword	.LFB9
	.dword	.LFE9
	.dword	.LLST22
	.byte	0x1
	.dword	0x558
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.dword	0x53
	.dword	.LLST23
	.uleb128 0xd
	.dword	.LASF42
	.byte	0x1
	.byte	0x5a
	.dword	0xa9
	.dword	.LLST24
	.uleb128 0xd
	.dword	.LASF43
	.byte	0x1
	.byte	0x5a
	.dword	0x53
	.dword	.LLST25
	.uleb128 0xe
	.dword	.LVL20
	.dword	0x261
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF59
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.dword	0x53
	.dword	.LFB10
	.dword	.LFE10
	.dword	.LLST26
	.byte	0x1
	.dword	0x5c2
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.dword	0x53
	.dword	.LLST27
	.uleb128 0xd
	.dword	.LASF42
	.byte	0x1
	.byte	0x5e
	.dword	0x335
	.dword	.LLST28
	.uleb128 0xd
	.dword	.LASF43
	.byte	0x1
	.byte	0x5e
	.dword	0x53
	.dword	.LLST29
	.uleb128 0xe
	.dword	.LVL22
	.dword	0x2cb
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF60
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.dword	0x53
	.dword	.LFB11
	.dword	.LFE11
	.dword	.LLST30
	.byte	0x1
	.dword	0x62d
	.uleb128 0xd
	.dword	.LASF47
	.byte	0x1
	.byte	0x62
	.dword	0xb8
	.dword	.LLST31
	.uleb128 0xd
	.dword	.LASF48
	.byte	0x1
	.byte	0x62
	.dword	0x53
	.dword	.LLST32
	.uleb128 0xd
	.dword	.LASF49
	.byte	0x1
	.byte	0x62
	.dword	0x53
	.dword	.LLST33
	.uleb128 0xe
	.dword	.LVL24
	.dword	0x33c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF61
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.dword	0x53
	.dword	.LFB12
	.dword	.LFE12
	.dword	.LLST34
	.byte	0x1
	.dword	0x66b
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.dword	0x53
	.dword	.LLST35
	.uleb128 0xe
	.dword	.LVL26
	.dword	0x3a7
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF62
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.dword	0x53
	.dword	.LFB13
	.dword	.LFE13
	.dword	.LLST36
	.byte	0x1
	.dword	0x6be
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.dword	0x53
	.dword	.LLST37
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.dword	0x43c
	.dword	.LLST38
	.uleb128 0xe
	.dword	.LVL28
	.dword	0x3e5
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF63
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.dword	0x53
	.dword	.LFB14
	.dword	.LFE14
	.dword	.LLST39
	.byte	0x1
	.dword	0x728
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.dword	0x53
	.dword	.LLST40
	.uleb128 0xd
	.dword	.LASF53
	.byte	0x1
	.byte	0x6e
	.dword	0x53
	.dword	.LLST41
	.uleb128 0xd
	.dword	.LASF54
	.byte	0x1
	.byte	0x6e
	.dword	0x53
	.dword	.LLST42
	.uleb128 0xe
	.dword	.LVL30
	.dword	0x442
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF64
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.dword	0xa9
	.dword	.LFB15
	.dword	.LFE15
	.dword	.LLST43
	.byte	0x1
	.dword	0x767
	.uleb128 0xd
	.dword	.LASF56
	.byte	0x1
	.byte	0x72
	.dword	0x53
	.dword	.LLST44
	.uleb128 0xe
	.dword	.LVL32
	.dword	0x488
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.dword	.LASF65
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.dword	0x53
	.dword	.LFB16
	.dword	.LFE16
	.dword	.LLST45
	.byte	0x1
	.dword	0x7a5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.dword	0x53
	.dword	.LLST46
	.uleb128 0xe
	.dword	.LVL34
	.dword	0x4c2
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.dword	.LASF67
	.byte	0x1
	.byte	0xac
	.dword	0x53
	.dword	.LFB19
	.dword	.LFE19
	.dword	.LLST47
	.byte	0x1
	.dword	0x7f2
	.uleb128 0x17
	.dword	.LVL35
	.dword	0x959
	.dword	0x7e2
	.uleb128 0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.dword	.LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.dword	.LC0
	.byte	0
	.uleb128 0xe
	.dword	.LVL36
	.dword	0x972
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.dword	.LASF86
	.byte	0x1
	.byte	0x9d
	.dword	0x53
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.dword	.LASF68
	.byte	0x1
	.byte	0xa5
	.dword	0x53
	.dword	.LFB18
	.dword	.LFE18
	.dword	.LLST48
	.byte	0x1
	.dword	0x848
	.uleb128 0x19
	.dword	0x7f2
	.dword	.LBB4
	.dword	.LBE4
	.byte	0x1
	.byte	0xa7
	.dword	0x83e
	.uleb128 0xe
	.dword	.LVL37
	.dword	0x937
	.uleb128 0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.dword	.LVL38
	.dword	0x7a5
	.byte	0
	.uleb128 0x1b
	.dword	.LASF69
	.byte	0x1
	.byte	0x8
	.dword	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_data_value
	.uleb128 0x1b
	.dword	.LASF70
	.byte	0x1
	.byte	0x9
	.dword	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_bss_value
	.uleb128 0x1c
	.dword	.LASF71
	.byte	0x1
	.byte	0x49
	.dword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.dword	.LASF72
	.byte	0x1
	.byte	0x4a
	.dword	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_sbrk_top
	.uleb128 0x1c
	.dword	.LASF73
	.byte	0x1
	.byte	0x9a
	.dword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.dword	.LASF74
	.byte	0x1
	.byte	0x9b
	.dword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.dword	.LASF87
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.dword	0x8b9
	.uleb128 0x1e
	.dword	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF75
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.dword	0x53
	.byte	0x1
	.dword	0x8db
	.uleb128 0x1e
	.dword	0x53
	.uleb128 0x1e
	.dword	0xa9
	.uleb128 0x1e
	.dword	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF76
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.dword	0x53
	.byte	0x1
	.dword	0x8fd
	.uleb128 0x1e
	.dword	0x53
	.uleb128 0x1e
	.dword	0x335
	.uleb128 0x1e
	.dword	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF77
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.dword	0x53
	.byte	0x1
	.dword	0x91f
	.uleb128 0x1e
	.dword	0xb8
	.uleb128 0x1e
	.dword	0x53
	.uleb128 0x1e
	.dword	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF78
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.dword	0x53
	.byte	0x1
	.dword	0x937
	.uleb128 0x1e
	.dword	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF79
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.dword	0xa9
	.byte	0x1
	.dword	0x959
	.uleb128 0x1e
	.dword	0xa9
	.uleb128 0x1e
	.dword	0x53
	.uleb128 0x1e
	.dword	0x25
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.dword	.LASF80
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.dword	0x53
	.byte	0x1
	.dword	0x972
	.uleb128 0x1e
	.dword	0xb8
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.dword	.LASF88
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.dword	0x53
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
	.dword	.LFE1-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST3:
	.dword	.LVL2-.Ltext0
	.dword	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL3-1-.Ltext0
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
	.dword	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL3-1-.Ltext0
	.dword	.LFE1-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST5:
	.dword	.LVL2-.Ltext0
	.dword	.LVL3-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL3-1-.Ltext0
	.dword	.LFE1-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST6:
	.dword	.LFB2-.Ltext0
	.dword	.LCFI4-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI4-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST7:
	.dword	.LVL4-.Ltext0
	.dword	.LVL5-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL5-1-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST8:
	.dword	.LVL4-.Ltext0
	.dword	.LVL5-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL5-1-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST9:
	.dword	.LVL4-.Ltext0
	.dword	.LVL5-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL5-1-.Ltext0
	.dword	.LFE2-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST10:
	.dword	.LFB3-.Ltext0
	.dword	.LCFI6-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI6-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST11:
	.dword	.LVL6-.Ltext0
	.dword	.LVL7-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL7-1-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST12:
	.dword	.LVL6-.Ltext0
	.dword	.LVL7-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL7-1-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST13:
	.dword	.LVL6-.Ltext0
	.dword	.LVL7-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL7-1-.Ltext0
	.dword	.LFE3-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST14:
	.dword	.LFB4-.Ltext0
	.dword	.LCFI8-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI8-.Ltext0
	.dword	.LFE4-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST15:
	.dword	.LVL8-.Ltext0
	.dword	.LVL9-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL9-1-.Ltext0
	.dword	.LFE4-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST16:
	.dword	.LFB5-.Ltext0
	.dword	.LCFI10-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI10-.Ltext0
	.dword	.LFE5-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST17:
	.dword	.LVL10-.Ltext0
	.dword	.LVL11-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL11-.Ltext0
	.dword	.LFE5-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST18:
	.dword	.LVL10-.Ltext0
	.dword	.LVL12-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL12-.Ltext0
	.dword	.LVL13-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL13-1-.Ltext0
	.dword	.LFE5-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST19:
	.dword	.LVL14-.Ltext0
	.dword	.LVL14-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL14-.Ltext0
	.dword	.LFE6-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST20:
	.dword	.LVL15-.Ltext0
	.dword	.LVL17-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL17-.Ltext0
	.dword	.LFE7-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST21:
	.dword	.LVL18-.Ltext0
	.dword	.LVL18-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL18-.Ltext0
	.dword	.LFE8-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST22:
	.dword	.LFB9-.Ltext0
	.dword	.LCFI12-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI12-.Ltext0
	.dword	.LFE9-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST23:
	.dword	.LVL19-.Ltext0
	.dword	.LVL20-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL20-1-.Ltext0
	.dword	.LFE9-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST24:
	.dword	.LVL19-.Ltext0
	.dword	.LVL20-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL20-1-.Ltext0
	.dword	.LFE9-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST25:
	.dword	.LVL19-.Ltext0
	.dword	.LVL20-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL20-1-.Ltext0
	.dword	.LFE9-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST26:
	.dword	.LFB10-.Ltext0
	.dword	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI14-.Ltext0
	.dword	.LFE10-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST27:
	.dword	.LVL21-.Ltext0
	.dword	.LVL22-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL22-1-.Ltext0
	.dword	.LFE10-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST28:
	.dword	.LVL21-.Ltext0
	.dword	.LVL22-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL22-1-.Ltext0
	.dword	.LFE10-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST29:
	.dword	.LVL21-.Ltext0
	.dword	.LVL22-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL22-1-.Ltext0
	.dword	.LFE10-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST30:
	.dword	.LFB11-.Ltext0
	.dword	.LCFI16-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI16-.Ltext0
	.dword	.LFE11-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST31:
	.dword	.LVL23-.Ltext0
	.dword	.LVL24-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL24-1-.Ltext0
	.dword	.LFE11-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST32:
	.dword	.LVL23-.Ltext0
	.dword	.LVL24-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL24-1-.Ltext0
	.dword	.LFE11-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST33:
	.dword	.LVL23-.Ltext0
	.dword	.LVL24-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL24-1-.Ltext0
	.dword	.LFE11-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST34:
	.dword	.LFB12-.Ltext0
	.dword	.LCFI18-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI18-.Ltext0
	.dword	.LFE12-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST35:
	.dword	.LVL25-.Ltext0
	.dword	.LVL26-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL26-1-.Ltext0
	.dword	.LFE12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST36:
	.dword	.LFB13-.Ltext0
	.dword	.LCFI20-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI20-.Ltext0
	.dword	.LFE13-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST37:
	.dword	.LVL27-.Ltext0
	.dword	.LVL28-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL28-1-.Ltext0
	.dword	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST38:
	.dword	.LVL27-.Ltext0
	.dword	.LVL28-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL28-1-.Ltext0
	.dword	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST39:
	.dword	.LFB14-.Ltext0
	.dword	.LCFI22-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI22-.Ltext0
	.dword	.LFE14-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST40:
	.dword	.LVL29-.Ltext0
	.dword	.LVL30-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL30-1-.Ltext0
	.dword	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST41:
	.dword	.LVL29-.Ltext0
	.dword	.LVL30-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL30-1-.Ltext0
	.dword	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5b
	.byte	0x9f
	.dword	0
	.dword	0
.LLST42:
	.dword	.LVL29-.Ltext0
	.dword	.LVL30-1-.Ltext0
	.word	0x1
	.byte	0x5c
	.dword	.LVL30-1-.Ltext0
	.dword	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5c
	.byte	0x9f
	.dword	0
	.dword	0
.LLST43:
	.dword	.LFB15-.Ltext0
	.dword	.LCFI24-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI24-.Ltext0
	.dword	.LFE15-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST44:
	.dword	.LVL31-.Ltext0
	.dword	.LVL32-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL32-1-.Ltext0
	.dword	.LFE15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST45:
	.dword	.LFB16-.Ltext0
	.dword	.LCFI26-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI26-.Ltext0
	.dword	.LFE16-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST46:
	.dword	.LVL33-.Ltext0
	.dword	.LVL34-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL34-1-.Ltext0
	.dword	.LFE16-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST47:
	.dword	.LFB19-.Ltext0
	.dword	.LCFI28-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI28-.Ltext0
	.dword	.LFE19-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST48:
	.dword	.LFB18-.Ltext0
	.dword	.LCFI30-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI30-.Ltext0
	.dword	.LFE18-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
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
.LASF82:
	.string	"cris-elf.c"
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
