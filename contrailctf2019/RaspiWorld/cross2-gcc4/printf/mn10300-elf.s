	.file	"mn10300-elf.c"
# GNU C (GCC) version 4.7.2 (mn10300-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D ___FreeBSD___ -D ARCH="mn10300-elf"
# -D USE_SYSCALL_WRAPPER -D USE_UNDERLINE_WRAPPER mn10300-elf.c
# -auxbase-strip mn10300-elf.s -g -O -Wall -fno-builtin -fverbose-asm
# -fomit-frame-pointer
# options enabled:  -fauto-inc-dec -fbranch-count-reg
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
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
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss -mliw
# -mmult-bug -mreturn-pointer-on-d0 -msetlb

	.section .text
.Ltext0:
	.global ___exit
	.type	___exit, @function
___exit:
.LFB0:
	.file 1 "mn10300-elf.c"
	.loc 1 17 0
.LVL0:
	add -12,sp	#,
.LCFI0:
	mov d0,d1	# status, status
	.loc 1 18 0
	mov 0,d0	#,
.LVL1:
	call ___r_exit,[],0	#
.LVL2:
.LFE0:
	.size	___exit, .-___exit
	.global ___read
	.type	___read, @function
___read:
.LFB1:
	.loc 1 21 0
.LVL3:
	add -20,sp	#,
.LCFI1:
	mov d0,a0	# fd, fd
	.loc 1 22 0
	mov d1,(12,sp)	# buffer,
	mov (32,sp),d0	# size, size
.LVL4:
	mov d0,(16,sp)	# size,
	mov 0,d0	#,
	mov a0,d1	# fd,
.LVL5:
	call ___r_read,[],0	#
.LVL6:
	.loc 1 23 0
	ret [],20
.LFE1:
	.size	___read, .-___read
	.global ___write
	.type	___write, @function
___write:
.LFB2:
	.loc 1 25 0
.LVL7:
	add -20,sp	#,
.LCFI2:
	mov d0,a0	# fd, fd
	.loc 1 26 0
	mov d1,(12,sp)	# buffer,
	mov (32,sp),d0	# size, size
.LVL8:
	mov d0,(16,sp)	# size,
	mov 0,d0	#,
	mov a0,d1	# fd,
.LVL9:
	call ___r_write,[],0	#
.LVL10:
	.loc 1 27 0
	ret [],20
.LFE2:
	.size	___write, .-___write
	.global ___open
	.type	___open, @function
___open:
.LFB3:
	.loc 1 29 0
.LVL11:
	add -20,sp	#,
.LCFI3:
	mov d0,a0	# path, path
	.loc 1 30 0
	mov d1,(12,sp)	# flags,
	mov (32,sp),d0	# mode, mode
.LVL12:
	mov d0,(16,sp)	# mode,
	mov 0,d0	#,
	mov a0,d1	# path,
.LVL13:
	call ___r_open,[],0	#
.LVL14:
	.loc 1 31 0
	ret [],20
.LFE3:
	.size	___open, .-___open
	.global ___close
	.type	___close, @function
___close:
.LFB4:
	.loc 1 33 0
.LVL15:
	add -12,sp	#,
.LCFI4:
	mov d0,d1	# fd, fd
	.loc 1 34 0
	mov 0,d0	#,
.LVL16:
	call ___r_close,[],0	#
.LVL17:
	.loc 1 35 0
	ret [],12
.LFE4:
	.size	___close, .-___close
	.global __exit
	.type	__exit, @function
__exit:
.LFB5:
	.loc 1 39 0
.LVL18:
	add -12,sp	#,
.LCFI5:
	.loc 1 40 0
	call ___exit,[],0	#
.LVL19:
.LFE5:
	.size	__exit, .-__exit
	.global _read
	.type	_read, @function
_read:
.LFB6:
	.loc 1 44 0
.LVL20:
	add -16,sp	#,
.LCFI6:
	.loc 1 45 0
	mov (28,sp),a0	# size, size
	mov a0,(12,sp)	# size,
	call ___read,[],0	#
.LVL21:
	.loc 1 46 0
	ret [],16
.LFE6:
	.size	_read, .-_read
	.global _write
	.type	_write, @function
_write:
.LFB7:
	.loc 1 48 0
.LVL22:
	add -16,sp	#,
.LCFI7:
	.loc 1 49 0
	mov (28,sp),a0	# size, size
	mov a0,(12,sp)	# size,
	call ___write,[],0	#
.LVL23:
	.loc 1 50 0
	ret [],16
.LFE7:
	.size	_write, .-_write
	.global _open
	.type	_open, @function
_open:
.LFB8:
	.loc 1 52 0
.LVL24:
	add -16,sp	#,
.LCFI8:
	.loc 1 53 0
	mov (28,sp),a0	# mode, mode
	mov a0,(12,sp)	# mode,
	call ___open,[],0	#
.LVL25:
	.loc 1 54 0
	ret [],16
.LFE8:
	.size	_open, .-_open
	.global _close
	.type	_close, @function
_close:
.LFB9:
	.loc 1 56 0
.LVL26:
	add -12,sp	#,
.LCFI9:
	.loc 1 57 0
	call ___close,[],0	#
.LVL27:
	.loc 1 58 0
	ret [],12
.LFE9:
	.size	_close, .-_close
	.global _fstat
	.type	_fstat, @function
_fstat:
.LFB10:
	.loc 1 63 0
.LVL28:
	add -16,sp	#,
.LCFI10:
	.loc 1 64 0
	mov 60,d0	#, tmp61
.LVL29:
	mov d0,(12,sp)	# tmp61,
	mov d1,d0	# sb,
	mov 0,d1	#,
.LVL30:
	call _memset,[],0	#
.LVL31:
	.loc 1 66 0
	mov 0,d0	#,
	ret [],16
.LFE10:
	.size	_fstat, .-_fstat
	.global _lseek
	.type	_lseek, @function
_lseek:
.LFB11:
	.loc 1 69 0
.LVL32:
	.loc 1 71 0
	mov d1,d0	# offset,
.LVL33:
	retf [],0
.LFE11:
	.size	_lseek, .-_lseek
	.global _sbrk
	.type	_sbrk, @function
_sbrk:
.LFB12:
	.loc 1 77 0
.LVL34:
	.loc 1 79 0
	mov (_sbrk_top),d1	# sbrk_top, old_top
.LVL35:
	.loc 1 80 0
	add d1,d0	# old_top, tmp64
.LVL36:
	mov d0,(_sbrk_top)	# tmp64, sbrk_top
	.loc 1 82 0
	mov d1,a0	# old_top,
	mov d1,d0	# old_top,
	retf [],0
.LFE12:
	.size	_sbrk, .-_sbrk
	.global _isatty
	.type	_isatty, @function
_isatty:
.LFB13:
	.loc 1 85 0
.LVL37:
	.loc 1 87 0
	mov 1,d0	#,
.LVL38:
	retf [],0
.LFE13:
	.size	_isatty, .-_isatty
	.global __read
	.type	__read, @function
__read:
.LFB14:
	.loc 1 91 0
.LVL39:
	add -16,sp	#,
.LCFI11:
	.loc 1 92 0
	mov (28,sp),a0	# size, size
	mov a0,(12,sp)	# size,
	call _read,[],0	#
.LVL40:
	.loc 1 93 0
	ret [],16
.LFE14:
	.size	__read, .-__read
	.global __write
	.type	__write, @function
__write:
.LFB15:
	.loc 1 95 0
.LVL41:
	add -16,sp	#,
.LCFI12:
	.loc 1 96 0
	mov (28,sp),a0	# size, size
	mov a0,(12,sp)	# size,
	call _write,[],0	#
.LVL42:
	.loc 1 97 0
	ret [],16
.LFE15:
	.size	__write, .-__write
	.global __open
	.type	__open, @function
__open:
.LFB16:
	.loc 1 99 0
.LVL43:
	add -16,sp	#,
.LCFI13:
	.loc 1 100 0
	mov (28,sp),a0	# mode, mode
	mov a0,(12,sp)	# mode,
	call _open,[],0	#
.LVL44:
	.loc 1 101 0
	ret [],16
.LFE16:
	.size	__open, .-__open
	.global __close
	.type	__close, @function
__close:
.LFB17:
	.loc 1 103 0
.LVL45:
	add -12,sp	#,
.LCFI14:
	.loc 1 104 0
	call _close,[],0	#
.LVL46:
	.loc 1 105 0
	ret [],12
.LFE17:
	.size	__close, .-__close
	.global __fstat
	.type	__fstat, @function
__fstat:
.LFB18:
	.loc 1 107 0
.LVL47:
	add -12,sp	#,
.LCFI15:
	.loc 1 108 0
	call _fstat,[],0	#
.LVL48:
	.loc 1 109 0
	ret [],12
.LFE18:
	.size	__fstat, .-__fstat
	.global __lseek
	.type	__lseek, @function
__lseek:
.LFB19:
	.loc 1 111 0
.LVL49:
	add -16,sp	#,
.LCFI16:
	.loc 1 112 0
	mov (28,sp),a0	# whence, whence
	mov a0,(12,sp)	# whence,
	call _lseek,[],0	#
.LVL50:
	.loc 1 113 0
	ret [],16
.LFE19:
	.size	__lseek, .-__lseek
	.global __sbrk
	.type	__sbrk, @function
__sbrk:
.LFB20:
	.loc 1 115 0
.LVL51:
	add -12,sp	#,
.LCFI17:
	.loc 1 116 0
	call _sbrk,[],0	#
.LVL52:
	mov a0,d0	#, D.2591
	.loc 1 117 0
	ret [],12
.LFE20:
	.size	__sbrk, .-__sbrk
	.global __isatty
	.type	__isatty, @function
__isatty:
.LFB21:
	.loc 1 119 0
.LVL53:
	add -12,sp	#,
.LCFI18:
	.loc 1 120 0
	call _isatty,[],0	#
.LVL54:
	.loc 1 121 0
	ret [],12
.LFE21:
	.size	__isatty, .-__isatty
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
.LC1:
	.string	"mn10300-elf"
	.section .text
	.global _main
	.type	_main, @function
_main:
.LFB24:
	.loc 1 173 0
	add -16,sp	#,
.LCFI19:
	.loc 1 174 0
	mov .LC1,d0	#, tmp62
	mov d0,(12,sp)	# tmp62,
	mov .LC0,d0	#,
	mov (_data_value),d1	# data_value,
	call _printf,[],0	#
.LVL55:
	.loc 1 175 0
	mov 0,d0	#,
	call _exit,[],0	#
.LVL56:
.LFE24:
	.size	_main, .-_main
	.global __startmain
	.type	__startmain, @function
__startmain:
.LFB23:
	.loc 1 166 0
	add -16,sp	#,
.LCFI20:
.LBB4:
.LBB5:
	.loc 1 159 0
	mov __ebss,d0	#, tmp65
	sub __bss_start,d0	#, tmp64
	mov d0,(12,sp)	# tmp64,
	mov __bss_start,d0	#,
	mov 0,d1	#,
	call _memset,[],0	#
.LVL57:
.LBE5:
.LBE4:
	.loc 1 168 0
	call _main,[],0	#
.LVL58:
.LFE23:
	.size	__startmain, .-__startmain
	.global _sbrk_top
	.section .data
	.align 2
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_bss_value,4,4
	.global _data_value
	.align 2
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
	.byte	0x34
	.byte	0xc
	.uleb128 0x9
	.uleb128 0
	.byte	0xb4
	.uleb128 0
	.align 2
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
	.uleb128 0xc
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI11-.LFB14
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI12-.LFB15
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI14-.LFB17
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI16-.LFB19
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI17-.LFB20
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI18-.LFB21
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI19-.LFB24
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI20-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE46:
	.section .text
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/mn10300-elf/4.7.2/../../../../mn10300-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb6f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF7
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
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x10
	.4byte	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1d
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
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
	.4byte	0x73
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x86
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa3
	.4byte	0x68
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa4
	.4byte	0x7a
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa5
	.4byte	0x85
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa6
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc4
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF89
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
	.4byte	0x73
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
	.4byte	0x73
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
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x36
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x37
	.4byte	0x73
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
	.4byte	0x73
	.4byte	0x226
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x266
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x10
	.4byte	0x53
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0xa7c
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x2d6
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x14
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x14
	.4byte	0xa2
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x14
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0xa95
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x346
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x18
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x18
	.4byte	0x346
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0xabc
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34c
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x3be
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1c
	.4byte	0xb8
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1c
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1c
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0xae3
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x401
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x20
	.4byte	0x53
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0xb0a
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x43c
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.4byte	.LLST14
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x226
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
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x4a6
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST16
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xa2
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x266
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x510
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0x346
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL23
	.4byte	0x2d6
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x57b
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST22
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST23
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL25
	.4byte	0x34d
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x5b9
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.4byte	.LLST25
	.uleb128 0xe
	.4byte	.LVL27
	.4byte	0x3be
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
	.4byte	.LASF57
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x611
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x53
	.4byte	.LLST27
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.4byte	0x611
	.4byte	.LLST28
	.uleb128 0xe
	.4byte	.LVL31
	.4byte	0xb27
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x65e
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.4byte	.LLST29
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa2
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x698
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4c
	.4byte	0x53
	.4byte	.LLST30
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4e
	.4byte	0xa2
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x6c4
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST31
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST32
	.byte	0x1
	.4byte	0x72e
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LLST33
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5a
	.4byte	0xa2
	.4byte	.LLST34
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL40
	.4byte	0x43c
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST35
	.byte	0x1
	.4byte	0x798
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.4byte	.LLST36
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5e
	.4byte	0x346
	.4byte	.LLST37
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL42
	.4byte	0x4a6
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST38
	.byte	0x1
	.4byte	0x803
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.4byte	0xb8
	.4byte	.LLST39
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.4byte	.LLST40
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL44
	.4byte	0x510
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST41
	.byte	0x1
	.4byte	0x841
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.4byte	0x53
	.4byte	.LLST42
	.uleb128 0xe
	.4byte	.LVL46
	.4byte	0x57b
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
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST43
	.byte	0x1
	.4byte	0x894
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x53
	.4byte	.LLST44
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.4byte	0x611
	.4byte	.LLST45
	.uleb128 0xe
	.4byte	.LVL48
	.4byte	0x5b9
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
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST46
	.byte	0x1
	.4byte	0x8fe
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST47
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST48
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.4byte	.LVL50
	.4byte	0x617
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0xa2
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST49
	.byte	0x1
	.4byte	0x93d
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x72
	.4byte	0x53
	.4byte	.LLST50
	.uleb128 0xe
	.4byte	.LVL52
	.4byte	0x65e
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
	.4byte	.LASF71
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST51
	.byte	0x1
	.4byte	0x97b
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.4byte	0x53
	.4byte	.LLST52
	.uleb128 0xe
	.4byte	.LVL54
	.4byte	0x698
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
	.4byte	.LASF72
	.byte	0x1
	.byte	0xac
	.4byte	0x53
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST53
	.byte	0x1
	.4byte	0x9c9
	.uleb128 0x17
	.4byte	.LVL55
	.4byte	0xb49
	.4byte	0x9b9
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0xf
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xe
	.4byte	.LVL56
	.4byte	0xb62
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x1
	.byte	0x9d
	.4byte	0x53
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST54
	.byte	0x1
	.4byte	0xa1f
	.uleb128 0x19
	.4byte	0x9c9
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0xa15
	.uleb128 0xe
	.4byte	.LVL57
	.4byte	0xb27
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL58
	.4byte	0x97b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9
	.4byte	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_bss_value
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sbrk_top
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF92
	.byte	0x6
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.4byte	0xa95
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xabc
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0xa2
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xae3
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x346
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF82
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xb0a
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF83
	.byte	0x6
	.byte	0xf
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xb27
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF84
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0xa2
	.byte	0x1
	.4byte	0xb49
	.uleb128 0x1e
	.4byte	0xa2
	.uleb128 0x1e
	.4byte	0x53
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF85
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xb62
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF93
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-1-.Ltext0
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
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-1-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-1-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x79
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
.LASF85:
	.string	"printf"
.LASF12:
	.string	"__gid_t"
.LASF83:
	.string	"__r_close"
.LASF7:
	.string	"size_t"
.LASF54:
	.string	"write"
.LASF56:
	.string	"close"
.LASF47:
	.string	"path"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF89:
	.string	"stat"
.LASF52:
	.string	"_exit"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF81:
	.string	"__r_write"
.LASF25:
	.string	"st_ino"
.LASF9:
	.string	"long int"
.LASF66:
	.string	"_open"
.LASF69:
	.string	"_lseek"
.LASF68:
	.string	"_fstat"
.LASF23:
	.string	"nlink_t"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF62:
	.string	"incr"
.LASF10:
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
.LASF0:
	.string	"unsigned int"
.LASF67:
	.string	"_close"
.LASF14:
	.string	"long unsigned int"
.LASF60:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF43:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF58:
	.string	"lseek"
.LASF76:
	.string	"_heap"
.LASF71:
	.string	"_isatty"
.LASF32:
	.string	"st_atime"
.LASF31:
	.string	"st_size"
.LASF65:
	.string	"_write"
.LASF26:
	.string	"st_mode"
.LASF75:
	.string	"bss_value"
.LASF46:
	.string	"__open"
.LASF13:
	.string	"sizetype"
.LASF55:
	.string	"open"
.LASF86:
	.string	"GNU C 4.7.2"
.LASF8:
	.string	"_off_t"
.LASF78:
	.string	"_bss_start"
.LASF19:
	.string	"dev_t"
.LASF16:
	.string	"time_t"
.LASF82:
	.string	"__r_open"
.LASF44:
	.string	"__read"
.LASF61:
	.string	"sbrk"
.LASF64:
	.string	"_read"
.LASF27:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF73:
	.string	"_startmain"
.LASF38:
	.string	"st_blksize"
.LASF79:
	.string	"_ebss"
.LASF51:
	.string	"__exit"
.LASF36:
	.string	"st_ctime"
.LASF80:
	.string	"__r_read"
.LASF93:
	.string	"exit"
.LASF74:
	.string	"data_value"
.LASF30:
	.string	"st_rdev"
.LASF90:
	.string	"old_top"
.LASF15:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF50:
	.string	"__close"
.LASF92:
	.string	"__r_exit"
.LASF42:
	.string	"buffer"
.LASF11:
	.string	"__uid_t"
.LASF59:
	.string	"offset"
.LASF29:
	.string	"st_gid"
.LASF91:
	.string	"_init"
.LASF84:
	.string	"memset"
.LASF41:
	.string	"status"
.LASF22:
	.string	"mode_t"
.LASF24:
	.string	"st_dev"
.LASF77:
	.string	"sbrk_top"
.LASF45:
	.string	"__write"
.LASF48:
	.string	"flags"
.LASF57:
	.string	"fstat"
.LASF53:
	.string	"read"
.LASF88:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF72:
	.string	"main"
.LASF63:
	.string	"isatty"
.LASF87:
	.string	"mn10300-elf.c"
.LASF34:
	.string	"st_mtime"
.LASF70:
	.string	"_sbrk"
.LASF17:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
