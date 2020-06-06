	.file	"cr16-elf.c"
# GNU C (GCC) version 4.7.2 (cr16-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D ___FreeBSD___ -D ARCH="cr16-elf"
# -D USE_UNDERLINE_WRAPPER cr16-elf.c -auxbase-strip cr16-elf.s -g -O -Wall
# -fno-builtin -fverbose-asm -fomit-frame-pointer
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
	.globl	__exit
	.type	__exit, @function
__exit:
.LFB0:
	.file 1 "cr16-elf.c"
	.loc 1 39 0
.LVL0:
	.loc 1 40 0
	bal (ra), ___exit@c	#
.LVL1:
.LFE0:
	.size	__exit, .-__exit
	.align	4
	.globl	_read
	.type	_read, @function
_read:
.LFB1:
	.loc 1 44 0
.LVL2:
	push	ra
.LCFI0:
	.loc 1 45 0
	bal (ra), ___read@c	#
.LVL3:
	.loc 1 46 0
	popret	ra
.LFE1:
	.size	_read, .-_read
	.align	4
	.globl	_write
	.type	_write, @function
_write:
.LFB2:
	.loc 1 48 0
.LVL4:
	push	ra
.LCFI1:
	.loc 1 49 0
	bal (ra), ___write@c	#
.LVL5:
	.loc 1 50 0
	popret	ra
.LFE2:
	.size	_write, .-_write
	.align	4
	.globl	_open
	.type	_open, @function
_open:
.LFB3:
	.loc 1 52 0
.LVL6:
	push	ra
.LCFI2:
	.loc 1 53 0
	bal (ra), ___open@c	#
.LVL7:
	.loc 1 54 0
	popret	ra
.LFE3:
	.size	_open, .-_open
	.align	4
	.globl	_close
	.type	_close, @function
_close:
.LFB4:
	.loc 1 56 0
.LVL8:
	push	ra
.LCFI3:
	.loc 1 57 0
	bal (ra), ___close@c	#
.LVL9:
	.loc 1 58 0
	popret	ra
.LFE4:
	.size	_close, .-_close
	.align	4
	.globl	_fstat
	.type	_fstat, @function
_fstat:
.LFB5:
	.loc 1 63 0
.LVL10:
	push	ra
.LCFI4:
	movd	(r4,r3), (r3,r2)	# sb, sb
.LVL11:
	.loc 1 64 0
	movd	$60, (r6,r5)	#,
	movw	$0, r4	#,
	bal (ra), _memset@c	#
.LVL12:
	.loc 1 66 0
	movw	$0, r0	#,
	popret	ra
.LFE5:
	.size	_fstat, .-_fstat
	.align	4
	.globl	_lseek
	.type	_lseek, @function
_lseek:
.LFB6:
	.loc 1 69 0
.LVL13:
	movw	r3, r0	# offset, offset
	.loc 1 71 0
	jump	(ra)
.LFE6:
	.size	_lseek, .-_lseek
	.align	4
	.globl	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB7:
	.loc 1 77 0
.LVL14:
	.loc 1 79 0
	loadd	_sbrk_top@l, (r5,r4)	# sbrk_top, old_top
.LVL15:
	.loc 1 80 0
	movxw	r2, (r3,r2)	# incr, incr
	addd	(r5,r4), (r3,r2)	# old_top, tmp29
.LVL16:
	stord	(r3,r2), _sbrk_top@l	# tmp29, sbrk_top
	.loc 1 82 0
	movw	r4, r0	# old_top,
	movw	r5, r1	# old_top,
	jump	(ra)
.LFE7:
	.size	_sbrk, .-_sbrk
	.align	4
	.globl	_isatty
	.type	_isatty, @function
_isatty:
.LFB8:
	.loc 1 85 0
.LVL17:
	.loc 1 87 0
	movw	$1, r0	#,
	jump	(ra)
.LFE8:
	.size	_isatty, .-_isatty
	.align	4
	.globl	__read
	.type	__read, @function
__read:
.LFB9:
	.loc 1 91 0
.LVL18:
	push	ra
.LCFI5:
	.loc 1 92 0
	bal (ra), _read@c	#
.LVL19:
	.loc 1 93 0
	popret	ra
.LFE9:
	.size	__read, .-__read
	.align	4
	.globl	__write
	.type	__write, @function
__write:
.LFB10:
	.loc 1 95 0
.LVL20:
	push	ra
.LCFI6:
	.loc 1 96 0
	bal (ra), _write@c	#
.LVL21:
	.loc 1 97 0
	popret	ra
.LFE10:
	.size	__write, .-__write
	.align	4
	.globl	__open
	.type	__open, @function
__open:
.LFB11:
	.loc 1 99 0
.LVL22:
	push	ra
.LCFI7:
	.loc 1 100 0
	bal (ra), _open@c	#
.LVL23:
	.loc 1 101 0
	popret	ra
.LFE11:
	.size	__open, .-__open
	.align	4
	.globl	__close
	.type	__close, @function
__close:
.LFB12:
	.loc 1 103 0
.LVL24:
	push	ra
.LCFI8:
	.loc 1 104 0
	bal (ra), _close@c	#
.LVL25:
	.loc 1 105 0
	popret	ra
.LFE12:
	.size	__close, .-__close
	.align	4
	.globl	__fstat
	.type	__fstat, @function
__fstat:
.LFB13:
	.loc 1 107 0
.LVL26:
	push	ra
.LCFI9:
	.loc 1 108 0
	bal (ra), _fstat@c	#
.LVL27:
	.loc 1 109 0
	popret	ra
.LFE13:
	.size	__fstat, .-__fstat
	.align	4
	.globl	__lseek
	.type	__lseek, @function
__lseek:
.LFB14:
	.loc 1 111 0
.LVL28:
	push	ra
.LCFI10:
	.loc 1 112 0
	bal (ra), _lseek@c	#
.LVL29:
	.loc 1 113 0
	popret	ra
.LFE14:
	.size	__lseek, .-__lseek
	.align	4
	.globl	__sbrk
	.type	__sbrk, @function
__sbrk:
.LFB15:
	.loc 1 115 0
.LVL30:
	push	ra
.LCFI11:
	.loc 1 116 0
	bal (ra), _sbrk@c	#
.LVL31:
	.loc 1 117 0
	popret	ra
.LFE15:
	.size	__sbrk, .-__sbrk
	.align	4
	.globl	__isatty
	.type	__isatty, @function
__isatty:
.LFB16:
	.loc 1 119 0
.LVL32:
	push	ra
.LCFI12:
	.loc 1 120 0
	bal (ra), _isatty@c	#
.LVL33:
	.loc 1 121 0
	popret	ra
.LFE16:
	.size	__isatty, .-__isatty
	.section	.rodata.str1.2,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"cr16-elf"
	.align	2
.LC1:
	.string	"Hello World! %08lx This architecture is %s\n"
	.section	.text
	.align	4
	.globl	_main
	.type	_main, @function
_main:
.LFB19:
	.loc 1 173 0
	.loc 1 174 0
	movd	$.LC0@l, (r1,r0)	#, tmp25
	push	$2,r0	# tmp25
.LCFI13:
	loadd	_data_value@l, (r1,r0)	# data_value, data_value
	push	$2,r0	# data_value
.LCFI14:
	movd	$.LC1@l, (r1,r0)	#, tmp27
	push	$2,r0	# tmp27
.LCFI15:
	bal (ra), _printf@c	#
.LVL34:
	.loc 1 175 0
	movw	$0, r2	#,
	bal (ra), _exit@c	#
.LVL35:
.LFE19:
	.size	_main, .-_main
	.align	4
	.globl	__startmain
	.type	__startmain, @function
__startmain:
.LFB18:
	.loc 1 166 0
.LBB4:
.LBB5:
	.loc 1 159 0
	movd	$__bss_start@l, (r3,r2)	#, tmp30
	movd	$__ebss@l, (r1,r0)	#, tmp29
	movd	(r1,r0), (r6,r5)	# tmp29, tmp28
	subd	(r3,r2), (r6,r5)	# tmp30, tmp28
	movw	$0, r4	#,
	bal (ra), _memset@c	#
.LVL36:
.LBE5:
.LBE4:
	.loc 1 168 0
	bal (ra), _main@c	#
.LVL37:
.LFE18:
	.size	__startmain, .-__startmain
	.globl	_sbrk_top
	.section	.data
	.align	4
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_bss_value,2,2
	.globl	_data_value
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
	.align	4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.align	4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.align	4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.align	4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI6-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI7-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI8-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI9-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI11-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI12-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI13-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0xc
	.align	4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.align	4
.LEFDE36:
	.section	.text
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/cr16-elf/4.7.2/../../../../cr16-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x994
	.short	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.long	.LASF83
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd5
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x10
	.long	0x53
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x18
	.long	0x7e
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x1d
	.long	0x90
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x20
	.long	0x90
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x6
	.byte	0x4
	.long	0xbe
	.uleb128 0x7
	.long	0xb1
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x6e
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x86
	.long	0x90
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xa3
	.long	0x68
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xa4
	.long	0x73
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xa5
	.long	0x85
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.byte	0xa6
	.long	0x97
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0xc4
	.long	0x30
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0xc9
	.long	0x90
	.uleb128 0x8
	.long	.LASF84
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.long	0x216
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x1b
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x1c
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x1d
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x1e
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x1f
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x20
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x21
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x22
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x30
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x31
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x32
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x33
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x34
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x35
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x36
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x37
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x38
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.long	0x53
	.long	0x226
	.uleb128 0xb
	.long	0xa2
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x260
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x26
	.long	0x45
	.long	.LLST0
	.uleb128 0xe
	.long	.LVL1
	.long	0x8ba
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x45
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.byte	0x1
	.long	0x2cf
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.long	0x45
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x2b
	.long	0xa9
	.long	.LLST3
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x2b
	.long	0x45
	.long	.LLST4
	.uleb128 0xe
	.long	.LVL3
	.long	0x8ce
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x45
	.long	.LFB2
	.long	.LFE2
	.long	.LLST5
	.byte	0x1
	.long	0x33e
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.long	0x45
	.long	.LLST6
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x2f
	.long	0x33e
	.long	.LLST7
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x2f
	.long	0x45
	.long	.LLST8
	.uleb128 0xe
	.long	.LVL5
	.long	0x8f0
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x344
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x45
	.long	.LFB3
	.long	.LFE3
	.long	.LLST9
	.byte	0x1
	.long	0x3b5
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x33
	.long	0xb8
	.long	.LLST10
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x33
	.long	0x45
	.long	.LLST11
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x33
	.long	0x45
	.long	.LLST12
	.uleb128 0xe
	.long	.LVL7
	.long	0x912
	.uleb128 0xf
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x45
	.long	.LFB4
	.long	.LFE4
	.long	.LLST13
	.byte	0x1
	.long	0x3f3
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.long	0x45
	.long	.LLST14
	.uleb128 0xe
	.long	.LVL9
	.long	0x934
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.long	0x45
	.long	.LFB5
	.long	.LFE5
	.long	.LLST15
	.byte	0x1
	.long	0x454
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.long	0x45
	.long	.LLST16
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.long	0x454
	.long	.LLST17
	.uleb128 0xe
	.long	.LVL12
	.long	0x94c
	.uleb128 0xf
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x11b
	.uleb128 0x13
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x45
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x49e
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.long	0x45
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x44
	.long	0x45
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.byte	0x44
	.long	0x45
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0xa9
	.long	.LFB7
	.long	.LFE7
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x4dd
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x4c
	.long	0x45
	.long	.LLST18
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x4e
	.long	0xa9
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0x45
	.long	.LFB8
	.long	.LFE8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x507
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.long	0x45
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x45
	.long	.LFB9
	.long	.LFE9
	.long	.LLST19
	.byte	0x1
	.long	0x576
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.long	0x45
	.long	.LLST20
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x5a
	.long	0xa9
	.long	.LLST21
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x5a
	.long	0x45
	.long	.LLST22
	.uleb128 0xe
	.long	.LVL19
	.long	0x260
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x45
	.long	.LFB10
	.long	.LFE10
	.long	.LLST23
	.byte	0x1
	.long	0x5e5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.long	0x45
	.long	.LLST24
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x5e
	.long	0x33e
	.long	.LLST25
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x5e
	.long	0x45
	.long	.LLST26
	.uleb128 0xe
	.long	.LVL21
	.long	0x2cf
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x45
	.long	.LFB11
	.long	.LFE11
	.long	.LLST27
	.byte	0x1
	.long	0x655
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x62
	.long	0xb8
	.long	.LLST28
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x62
	.long	0x45
	.long	.LLST29
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x62
	.long	0x45
	.long	.LLST30
	.uleb128 0xe
	.long	.LVL23
	.long	0x345
	.uleb128 0xf
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	0x45
	.long	.LFB12
	.long	.LFE12
	.long	.LLST31
	.byte	0x1
	.long	0x693
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.long	0x45
	.long	.LLST32
	.uleb128 0xe
	.long	.LVL25
	.long	0x3b5
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x45
	.long	.LFB13
	.long	.LFE13
	.long	.LLST33
	.byte	0x1
	.long	0x6eb
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.long	0x45
	.long	.LLST34
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.long	0x454
	.long	.LLST35
	.uleb128 0xe
	.long	.LVL27
	.long	0x3f3
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x45
	.long	.LFB14
	.long	.LFE14
	.long	.LLST36
	.byte	0x1
	.long	0x755
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.long	0x45
	.long	.LLST37
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0x6e
	.long	0x45
	.long	.LLST38
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x6e
	.long	0x45
	.long	.LLST39
	.uleb128 0xe
	.long	.LVL29
	.long	0x45a
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	0xa9
	.long	.LFB15
	.long	.LFE15
	.long	.LLST40
	.byte	0x1
	.long	0x794
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x72
	.long	0x45
	.long	.LLST41
	.uleb128 0xe
	.long	.LVL31
	.long	0x49e
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x45
	.long	.LFB16
	.long	.LFE16
	.long	.LLST42
	.byte	0x1
	.long	0x7d2
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.long	0x45
	.long	.LLST43
	.uleb128 0xe
	.long	.LVL33
	.long	0x4dd
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0xac
	.long	0x45
	.long	.LFB19
	.long	.LFE19
	.long	.LLST44
	.byte	0x1
	.long	0x808
	.uleb128 0x18
	.long	.LVL34
	.long	0x96e
	.uleb128 0xe
	.long	.LVL35
	.long	0x987
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.byte	0x9d
	.long	0x45
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0xa5
	.long	0x45
	.long	.LFB18
	.long	.LFE18
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.long	0x85d
	.uleb128 0x1b
	.long	0x808
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0xa7
	.long	0x853
	.uleb128 0xe
	.long	.LVL36
	.long	0x94c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LVL37
	.long	0x7d2
	.byte	0
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.byte	0x8
	.long	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_data_value
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.byte	0x9
	.long	0x45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_bss_value
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x1
	.byte	0x49
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x1
	.byte	0x4a
	.long	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_sbrk_top
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.byte	0x9a
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x1
	.byte	0x9b
	.long	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF87
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.long	0x8ce
	.uleb128 0x1f
	.long	0x45
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF75
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x8f0
	.uleb128 0x1f
	.long	0x45
	.uleb128 0x1f
	.long	0xa9
	.uleb128 0x1f
	.long	0x45
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF76
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x912
	.uleb128 0x1f
	.long	0x45
	.uleb128 0x1f
	.long	0x33e
	.uleb128 0x1f
	.long	0x45
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF77
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x934
	.uleb128 0x1f
	.long	0xb8
	.uleb128 0x1f
	.long	0x45
	.uleb128 0x1f
	.long	0x45
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF78
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x94c
	.uleb128 0x1f
	.long	0x45
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF79
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.long	0xa9
	.byte	0x1
	.long	0x96e
	.uleb128 0x1f
	.long	0xa9
	.uleb128 0x1f
	.long	0x45
	.uleb128 0x1f
	.long	0x25
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF80
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.long	0x45
	.byte	0x1
	.long	0x987
	.uleb128 0x1f
	.long	0xb8
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF88
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	0x45
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
	.uleb128 0xa
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.long	.LFE1-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2-.Ltext0
	.long	.LVL3-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL3-1-.Ltext0
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
	.long	.LVL3-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL3-1-.Ltext0
	.long	.LFE1-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2-.Ltext0
	.long	.LVL3-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL3-1-.Ltext0
	.long	.LFE1-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB2-.Ltext0
	.long	.LCFI1-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL4-.Ltext0
	.long	.LVL5-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL5-1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL4-.Ltext0
	.long	.LVL5-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL5-1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL4-.Ltext0
	.long	.LVL5-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL5-1-.Ltext0
	.long	.LFE2-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB3-.Ltext0
	.long	.LCFI2-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI2-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST10:
	.long	.LVL6-.Ltext0
	.long	.LVL7-1-.Ltext0
	.short	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.long	.LVL7-1-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL6-.Ltext0
	.long	.LVL7-1-.Ltext0
	.short	0x1
	.byte	0x54
	.long	.LVL7-1-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL6-.Ltext0
	.long	.LVL7-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL7-1-.Ltext0
	.long	.LFE3-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LFB4-.Ltext0
	.long	.LCFI3-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI3-.Ltext0
	.long	.LFE4-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST14:
	.long	.LVL8-.Ltext0
	.long	.LVL9-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL9-1-.Ltext0
	.long	.LFE4-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LFB5-.Ltext0
	.long	.LCFI4-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI4-.Ltext0
	.long	.LFE5-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST16:
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL11-.Ltext0
	.long	.LFE5-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL10-.Ltext0
	.long	.LVL12-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL12-1-.Ltext0
	.long	.LFE5-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL14-.Ltext0
	.long	.LVL16-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL16-.Ltext0
	.long	.LFE7-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LFB9-.Ltext0
	.long	.LCFI5-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI5-.Ltext0
	.long	.LFE9-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST20:
	.long	.LVL18-.Ltext0
	.long	.LVL19-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL19-1-.Ltext0
	.long	.LFE9-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL18-.Ltext0
	.long	.LVL19-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL19-1-.Ltext0
	.long	.LFE9-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL18-.Ltext0
	.long	.LVL19-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL19-1-.Ltext0
	.long	.LFE9-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LFB10-.Ltext0
	.long	.LCFI6-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI6-.Ltext0
	.long	.LFE10-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST24:
	.long	.LVL20-.Ltext0
	.long	.LVL21-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL21-1-.Ltext0
	.long	.LFE10-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL20-.Ltext0
	.long	.LVL21-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL21-1-.Ltext0
	.long	.LFE10-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL20-.Ltext0
	.long	.LVL21-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL21-1-.Ltext0
	.long	.LFE10-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LFB11-.Ltext0
	.long	.LCFI7-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI7-.Ltext0
	.long	.LFE11-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST28:
	.long	.LVL22-.Ltext0
	.long	.LVL23-1-.Ltext0
	.short	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.long	.LVL23-1-.Ltext0
	.long	.LFE11-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL22-.Ltext0
	.long	.LVL23-1-.Ltext0
	.short	0x1
	.byte	0x54
	.long	.LVL23-1-.Ltext0
	.long	.LFE11-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL22-.Ltext0
	.long	.LVL23-1-.Ltext0
	.short	0x1
	.byte	0x55
	.long	.LVL23-1-.Ltext0
	.long	.LFE11-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LFB12-.Ltext0
	.long	.LCFI8-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI8-.Ltext0
	.long	.LFE12-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST32:
	.long	.LVL24-.Ltext0
	.long	.LVL25-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL25-1-.Ltext0
	.long	.LFE12-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LFB13-.Ltext0
	.long	.LCFI9-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI9-.Ltext0
	.long	.LFE13-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST34:
	.long	.LVL26-.Ltext0
	.long	.LVL27-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL27-1-.Ltext0
	.long	.LFE13-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL26-.Ltext0
	.long	.LVL27-1-.Ltext0
	.short	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.long	.LVL27-1-.Ltext0
	.long	.LFE13-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LFB14-.Ltext0
	.long	.LCFI10-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI10-.Ltext0
	.long	.LFE14-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST37:
	.long	.LVL28-.Ltext0
	.long	.LVL29-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL29-1-.Ltext0
	.long	.LFE14-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL28-.Ltext0
	.long	.LVL29-1-.Ltext0
	.short	0x1
	.byte	0x53
	.long	.LVL29-1-.Ltext0
	.long	.LFE14-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL28-.Ltext0
	.long	.LVL29-1-.Ltext0
	.short	0x1
	.byte	0x54
	.long	.LVL29-1-.Ltext0
	.long	.LFE14-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LFB15-.Ltext0
	.long	.LCFI11-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI11-.Ltext0
	.long	.LFE15-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST41:
	.long	.LVL30-.Ltext0
	.long	.LVL31-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL31-1-.Ltext0
	.long	.LFE15-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LFB16-.Ltext0
	.long	.LCFI12-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI12-.Ltext0
	.long	.LFE16-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST43:
	.long	.LVL32-.Ltext0
	.long	.LVL33-1-.Ltext0
	.short	0x1
	.byte	0x52
	.long	.LVL33-1-.Ltext0
	.long	.LFE16-.Ltext0
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LFB19-.Ltext0
	.long	.LCFI13-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 0
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE19-.Ltext0
	.short	0x2
	.byte	0x7f
	.sleb128 12
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
.LASF80:
	.string	"printf"
.LASF13:
	.string	"__gid_t"
.LASF7:
	.string	"size_t"
.LASF45:
	.string	"write"
.LASF50:
	.string	"close"
.LASF47:
	.string	"path"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF84:
	.string	"stat"
.LASF66:
	.string	"_exit"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"st_ino"
.LASF4:
	.string	"long int"
.LASF60:
	.string	"_open"
.LASF63:
	.string	"_lseek"
.LASF62:
	.string	"_fstat"
.LASF23:
	.string	"nlink_t"
.LASF82:
	.string	"cr16-elf.c"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF56:
	.string	"incr"
.LASF9:
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
.LASF3:
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
.LASF12:
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
.LASF8:
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
.LASF10:
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
.LASF11:
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
