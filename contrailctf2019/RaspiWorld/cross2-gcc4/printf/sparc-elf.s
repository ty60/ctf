	.file	"sparc-elf.c"
! GNU C (GCC) version 4.7.2 (sparc-elf)
!	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
! GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
! options passed:  -D ___FreeBSD___ -D ARCH="sparc-elf" sparc-elf.c
! -mcpu=v7 -auxbase-strip sparc-elf.s -g -O -Wall -fno-builtin
! -fverbose-asm -fomit-frame-pointer
! options enabled:  -fauto-inc-dec -fbranch-count-reg
! -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
! -fdebug-types-section -fdefer-pop -fdelayed-branch
! -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
! -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
! -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
! -fif-conversion -fif-conversion2 -finline -finline-atomics
! -finline-functions-called-once -fipa-profile -fipa-pure-const
! -fipa-reference -fira-share-spill-slots -fivopts -fkeep-static-consts
! -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
! -fmove-loop-invariants -fomit-frame-pointer -fpcc-struct-return
! -fpeephole -fprefetch-loop-arrays -fsched-critical-path-heuristic
! -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
! -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
! -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
! -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
! -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
! -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
! -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop
! -ftree-fre -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
! -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
! -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
! -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
! -fvar-tracking -fvar-tracking-assignments -fverbose-asm
! -fzero-initialized-in-bss -m32 -mapp-regs -mfpu -mptr32 -msoft-quad-float

	.section	".text"
.LLtext0:
	.cfi_sections	.debug_frame
	.align 4
	.global _exit
	.type	_exit, #function
	.proc	020
_exit:
.LLFB0:
	.file 1 "sparc-elf.c"
	.loc 1 39 0
	.cfi_startproc
.LLVL0:
	save	%sp, -96, %sp	!
.LLCFI0:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL1:
	.loc 1 40 0
	call	__exit, 0	!,
	 mov	%i0, %o0	! status,
.LLVL2:
	nop
	.cfi_endproc
.LLFE0:
	.size	_exit, .-_exit
	.align 4
	.global read
	.type	read, #function
	.proc	04
read:
.LLFB1:
	.loc 1 44 0
	.cfi_startproc
.LLVL3:
	save	%sp, -96, %sp	!
.LLCFI1:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL4:
	.loc 1 45 0
	mov	%i0, %o0	! fd,
	mov	%i1, %o1	! buffer,
	call	__read, 0	!,
	 mov	%i2, %o2	! size,
.LLVL5:
	.loc 1 46 0
	jmp	%i7+8
	 restore %g0, %o0, %o0	!,
	.cfi_endproc
.LLFE1:
	.size	read, .-read
	.align 4
	.global write
	.type	write, #function
	.proc	04
write:
.LLFB2:
	.loc 1 48 0
	.cfi_startproc
.LLVL6:
	save	%sp, -96, %sp	!
.LLCFI2:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL7:
	.loc 1 49 0
	mov	%i0, %o0	! fd,
	mov	%i1, %o1	! buffer,
	call	__write, 0	!,
	 mov	%i2, %o2	! size,
.LLVL8:
	.loc 1 50 0
	jmp	%i7+8
	 restore %g0, %o0, %o0	!,
	.cfi_endproc
.LLFE2:
	.size	write, .-write
	.align 4
	.global open
	.type	open, #function
	.proc	04
open:
.LLFB3:
	.loc 1 52 0
	.cfi_startproc
.LLVL9:
	save	%sp, -96, %sp	!
.LLCFI3:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL10:
	.loc 1 53 0
	mov	%i0, %o0	! path,
	mov	%i1, %o1	! flags,
	call	__open, 0	!,
	 mov	%i2, %o2	! mode,
.LLVL11:
	.loc 1 54 0
	jmp	%i7+8
	 restore %g0, %o0, %o0	!,
	.cfi_endproc
.LLFE3:
	.size	open, .-open
	.align 4
	.global close
	.type	close, #function
	.proc	04
close:
.LLFB4:
	.loc 1 56 0
	.cfi_startproc
.LLVL12:
	save	%sp, -96, %sp	!
.LLCFI4:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL13:
	.loc 1 57 0
	call	__close, 0	!,
	 mov	%i0, %o0	! fd,
.LLVL14:
	.loc 1 58 0
	jmp	%i7+8
	 restore %g0, %o0, %o0	!,
	.cfi_endproc
.LLFE4:
	.size	close, .-close
	.align 4
	.global fstat
	.type	fstat, #function
	.proc	04
fstat:
.LLFB5:
	.loc 1 63 0
	.cfi_startproc
.LLVL15:
	save	%sp, -96, %sp	!
.LLCFI5:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLVL16:
	.loc 1 64 0
	mov	%i1, %o0	! sb,
	mov	0, %o1	!,
	call	memset, 0	!,
	 mov	64, %o2	!,
.LLVL17:
	.loc 1 66 0
	jmp	%i7+8
	 restore %g0, 0, %o0	!,
	.cfi_endproc
.LLFE5:
	.size	fstat, .-fstat
	.align 4
	.global lseek
	.type	lseek, #function
	.proc	04
lseek:
.LLFB6:
	.loc 1 69 0
	.cfi_startproc
.LLVL18:
	.loc 1 71 0
	jmp	%o7+8
	 mov	%o1, %o0	! offset, tmp24
	.cfi_endproc
.LLFE6:
	.size	lseek, .-lseek
	.align 4
	.global sbrk
	.type	sbrk, #function
	.proc	0120
sbrk:
.LLFB7:
	.loc 1 77 0
	.cfi_startproc
.LLVL19:
	.loc 1 79 0
	sethi	%hi(sbrk_top), %g2	!, tmp115
	ld	[%g2+%lo(sbrk_top)], %g1	! sbrk_top, old_top
.LLVL20:
	.loc 1 80 0
	add	%g1, %o0, %o0	! old_top, incr, tmp118
	st	%o0, [%g2+%lo(sbrk_top)]	! tmp118, sbrk_top
	.loc 1 82 0
	jmp	%o7+8
	 mov	%g1, %o0	! old_top, tmp24
	.cfi_endproc
.LLFE7:
	.size	sbrk, .-sbrk
	.align 4
	.global isatty
	.type	isatty, #function
	.proc	04
isatty:
.LLFB8:
	.loc 1 85 0
	.cfi_startproc
.LLVL21:
	.loc 1 87 0
	jmp	%o7+8
	 mov	1, %o0	!, tmp24
	.cfi_endproc
.LLFE8:
	.size	isatty, .-isatty
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LLC0:
	.asciz	"Hello World! %08lx This architecture is %s\n"
	.align 8
.LLC1:
	.asciz	"sparc-elf"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
.LLFB11:
	.loc 1 173 0
	.cfi_startproc
	save	%sp, -96, %sp	!
.LLCFI6:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
	.loc 1 174 0
	sethi	%hi(.LLC0), %o0	!, tmp114
	or	%o0, %lo(.LLC0), %o0	! tmp114,,
	sethi	%hi(data_value), %g1	!, tmp112
	ld	[%g1+%lo(data_value)], %o1	! data_value,
	sethi	%hi(.LLC1), %o2	!, tmp115
	call	printf, 0	!,
	 or	%o2, %lo(.LLC1), %o2	! tmp115,,
.LLVL22:
	.loc 1 175 0
	call	exit, 0	!,
	 mov	0, %o0	!,
.LLVL23:
	nop
	.cfi_endproc
.LLFE11:
	.size	main, .-main
	.align 4
	.global _startmain
	.type	_startmain, #function
	.proc	04
_startmain:
.LLFB10:
	.loc 1 166 0
	.cfi_startproc
	save	%sp, -96, %sp	!
.LLCFI7:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
.LLBB4:
.LLBB5:
	.loc 1 159 0
	sethi	%hi(_bss_start), %g1	!, tmp118
	or	%g1, %lo(_bss_start), %g1	! tmp118,, tmp117
	mov	%g1, %o0	! tmp117,
	mov	0, %o1	!,
	sethi	%hi(_ebss), %o2	!, tmp116
	or	%o2, %lo(_ebss), %o2	! tmp116,, tmp115
	call	memset, 0	!,
	 sub	%o2, %g1, %o2	! tmp115, tmp117,
.LLVL24:
.LLBE5:
.LLBE4:
	.loc 1 168 0
	call	main, 0
	 nop	!,
.LLVL25:
	nop
	.cfi_endproc
.LLFE10:
	.size	_startmain, .-_startmain
	.global sbrk_top
	.section	".data"
	.align 4
	.type	sbrk_top, #object
	.size	sbrk_top, 4
sbrk_top:
	.long	_heap
	.common	bss_value,4,4
	.global data_value
	.align 4
	.type	data_value, #object
	.size	data_value, 4
data_value:
	.long	-1414661426
	.section	".text"
.LLetext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/sparc-elf/4.7.2/../../../../sparc-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.LLdebug_info0:
	.uaword	0x6b6
	.uahalf	0x2
	.uaword	.LLdebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.uaword	.LLASF73
	.byte	0x1
	.uaword	.LLASF74
	.uaword	.LLASF75
	.uaword	.LLtext0
	.uaword	.LLetext0
	.uaword	.LLdebug_line0
	.uleb128 0x2
	.uaword	.LLASF7
	.byte	0x2
	.byte	0xd5
	.uaword	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uaword	.LLASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.uaword	.LLASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.uaword	.LLASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.uaword	.LLASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.uaword	.LLASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.asciz	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.uaword	.LLASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.uaword	.LLASF6
	.uleb128 0x2
	.uaword	.LLASF8
	.byte	0x3
	.byte	0x10
	.uaword	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.uaword	.LLASF9
	.uleb128 0x2
	.uaword	.LLASF10
	.byte	0x3
	.byte	0x18
	.uaword	0x45
	.uleb128 0x2
	.uaword	.LLASF11
	.byte	0x3
	.byte	0x1d
	.uaword	0x4c
	.uleb128 0x2
	.uaword	.LLASF12
	.byte	0x3
	.byte	0x20
	.uaword	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uaword	.LLASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uaword	.LLASF14
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.uaword	.LLASF15
	.uleb128 0x6
	.byte	0x4
	.uaword	0xbe
	.uleb128 0x7
	.uaword	0xb1
	.uleb128 0x2
	.uaword	.LLASF16
	.byte	0x4
	.byte	0x6e
	.uaword	0x73
	.uleb128 0x2
	.uaword	.LLASF17
	.byte	0x4
	.byte	0x84
	.uaword	0xa4
	.uleb128 0x2
	.uaword	.LLASF18
	.byte	0x4
	.byte	0xa3
	.uaword	0x68
	.uleb128 0x2
	.uaword	.LLASF19
	.byte	0x4
	.byte	0xa4
	.uaword	0x7a
	.uleb128 0x2
	.uaword	.LLASF20
	.byte	0x4
	.byte	0xa5
	.uaword	0x85
	.uleb128 0x2
	.uaword	.LLASF21
	.byte	0x4
	.byte	0xa6
	.uaword	0x90
	.uleb128 0x2
	.uaword	.LLASF22
	.byte	0x4
	.byte	0xc1
	.uaword	0x4c
	.uleb128 0x2
	.uaword	.LLASF23
	.byte	0x4
	.byte	0xc9
	.uaword	0x4c
	.uleb128 0x8
	.uaword	.LLASF76
	.byte	0x40
	.byte	0x5
	.byte	0x19
	.uaword	0x216
	.uleb128 0x9
	.uaword	.LLASF24
	.byte	0x5
	.byte	0x1b
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LLASF25
	.byte	0x5
	.byte	0x1c
	.uaword	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LLASF26
	.byte	0x5
	.byte	0x1d
	.uaword	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.uaword	.LLASF27
	.byte	0x5
	.byte	0x1e
	.uaword	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.uaword	.LLASF28
	.byte	0x5
	.byte	0x1f
	.uaword	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.uaword	.LLASF29
	.byte	0x5
	.byte	0x20
	.uaword	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.uaword	.LLASF30
	.byte	0x5
	.byte	0x21
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.uaword	.LLASF31
	.byte	0x5
	.byte	0x22
	.uaword	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.uaword	.LLASF32
	.byte	0x5
	.byte	0x30
	.uaword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.uaword	.LLASF33
	.byte	0x5
	.byte	0x31
	.uaword	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.uaword	.LLASF34
	.byte	0x5
	.byte	0x32
	.uaword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.uaword	.LLASF35
	.byte	0x5
	.byte	0x33
	.uaword	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.uaword	.LLASF36
	.byte	0x5
	.byte	0x34
	.uaword	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.uaword	.LLASF37
	.byte	0x5
	.byte	0x35
	.uaword	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.uaword	.LLASF38
	.byte	0x5
	.byte	0x36
	.uaword	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.uaword	.LLASF39
	.byte	0x5
	.byte	0x37
	.uaword	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.uaword	.LLASF40
	.byte	0x5
	.byte	0x38
	.uaword	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xa
	.uaword	0x73
	.uaword	0x226
	.uleb128 0xb
	.uaword	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	.LLASF58
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.uaword	.LLFB0
	.uaword	.LLFE0
	.uaword	.LLLST0
	.byte	0x1
	.uaword	0x260
	.uleb128 0xd
	.uaword	.LLASF41
	.byte	0x1
	.byte	0x26
	.uaword	0x53
	.uaword	.LLLST1
	.uleb128 0xe
	.uaword	.LLVL2
	.uaword	0x5dc
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	.LLASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB1
	.uaword	.LLFE1
	.uaword	.LLLST2
	.byte	0x1
	.uaword	0x2c7
	.uleb128 0x11
	.asciz	"fd"
	.byte	0x1
	.byte	0x2b
	.uaword	0x53
	.uaword	.LLLST3
	.uleb128 0xd
	.uaword	.LLASF42
	.byte	0x1
	.byte	0x2b
	.uaword	0xa2
	.uaword	.LLLST4
	.uleb128 0xd
	.uaword	.LLASF43
	.byte	0x1
	.byte	0x2b
	.uaword	0x53
	.uaword	.LLLST5
	.uleb128 0xe
	.uaword	.LLVL5
	.uaword	0x5f0
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	.LLASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB2
	.uaword	.LLFE2
	.uaword	.LLLST6
	.byte	0x1
	.uaword	0x32e
	.uleb128 0x11
	.asciz	"fd"
	.byte	0x1
	.byte	0x2f
	.uaword	0x53
	.uaword	.LLLST7
	.uleb128 0xd
	.uaword	.LLASF42
	.byte	0x1
	.byte	0x2f
	.uaword	0x32e
	.uaword	.LLLST8
	.uleb128 0xd
	.uaword	.LLASF43
	.byte	0x1
	.byte	0x2f
	.uaword	0x53
	.uaword	.LLLST9
	.uleb128 0xe
	.uaword	.LLVL8
	.uaword	0x612
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x334
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.uaword	.LLASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB3
	.uaword	.LLFE3
	.uaword	.LLLST10
	.byte	0x1
	.uaword	0x39d
	.uleb128 0xd
	.uaword	.LLASF47
	.byte	0x1
	.byte	0x33
	.uaword	0xb8
	.uaword	.LLLST11
	.uleb128 0xd
	.uaword	.LLASF48
	.byte	0x1
	.byte	0x33
	.uaword	0x53
	.uaword	.LLLST12
	.uleb128 0xd
	.uaword	.LLASF49
	.byte	0x1
	.byte	0x33
	.uaword	0x53
	.uaword	.LLLST13
	.uleb128 0xe
	.uaword	.LLVL11
	.uaword	0x634
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	.LLASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB4
	.uaword	.LLFE4
	.uaword	.LLLST14
	.byte	0x1
	.uaword	0x3da
	.uleb128 0x11
	.asciz	"fd"
	.byte	0x1
	.byte	0x37
	.uaword	0x53
	.uaword	.LLLST15
	.uleb128 0xe
	.uaword	.LLVL14
	.uaword	0x656
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	.LLASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB5
	.uaword	.LLFE5
	.uaword	.LLLST16
	.byte	0x1
	.uaword	0x430
	.uleb128 0x11
	.asciz	"fd"
	.byte	0x1
	.byte	0x3e
	.uaword	0x53
	.uaword	.LLLST17
	.uleb128 0x11
	.asciz	"sb"
	.byte	0x1
	.byte	0x3e
	.uaword	0x430
	.uaword	.LLLST18
	.uleb128 0xe
	.uaword	.LLVL17
	.uaword	0x66e
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0xf
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x89
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x11b
	.uleb128 0x13
	.byte	0x1
	.uaword	.LLASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB6
	.uaword	.LLFE6
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uaword	0x47a
	.uleb128 0x14
	.asciz	"fd"
	.byte	0x1
	.byte	0x44
	.uaword	0x53
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.uaword	.LLASF53
	.byte	0x1
	.byte	0x44
	.uaword	0x53
	.byte	0x1
	.byte	0x59
	.uleb128 0x15
	.uaword	.LLASF54
	.byte	0x1
	.byte	0x44
	.uaword	0x53
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.uaword	.LLASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0xa2
	.uaword	.LLFB7
	.uaword	.LLFE7
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uaword	0x4b2
	.uleb128 0x15
	.uaword	.LLASF56
	.byte	0x1
	.byte	0x4c
	.uaword	0x53
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.uaword	.LLASF77
	.byte	0x1
	.byte	0x4e
	.uaword	0xa2
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.uaword	.LLASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	0x53
	.uaword	.LLFB8
	.uaword	.LLFE8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uaword	0x4dc
	.uleb128 0x14
	.asciz	"fd"
	.byte	0x1
	.byte	0x54
	.uaword	0x53
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	.LLASF59
	.byte	0x1
	.byte	0xac
	.uaword	0x53
	.uaword	.LLFB11
	.uaword	.LLFE11
	.uaword	.LLLST19
	.byte	0x1
	.uaword	0x529
	.uleb128 0x18
	.uaword	.LLVL22
	.uaword	0x690
	.uaword	0x519
	.uleb128 0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.uaword	.LLC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.byte	0x3
	.uaword	.LLC0
	.byte	0
	.uleb128 0xe
	.uaword	.LLVL23
	.uaword	0x6a9
	.uleb128 0xf
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LLASF78
	.byte	0x1
	.byte	0x9d
	.uaword	0x53
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.uaword	.LLASF60
	.byte	0x1
	.byte	0xa5
	.uaword	0x53
	.uaword	.LLFB10
	.uaword	.LLFE10
	.uaword	.LLLST20
	.byte	0x1
	.uaword	0x57f
	.uleb128 0x1a
	.uaword	0x529
	.uaword	.LLBB4
	.uaword	.LLBE4
	.byte	0x1
	.byte	0xa7
	.uaword	0x575
	.uleb128 0xe
	.uaword	.LLVL24
	.uaword	0x66e
	.uleb128 0xf
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LLVL25
	.uaword	0x4dc
	.byte	0
	.uleb128 0x1c
	.uaword	.LLASF61
	.byte	0x1
	.byte	0x8
	.uaword	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	data_value
	.uleb128 0x1c
	.uaword	.LLASF62
	.byte	0x1
	.byte	0x9
	.uaword	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	bss_value
	.uleb128 0x1d
	.uaword	.LLASF63
	.byte	0x1
	.byte	0x49
	.uaword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	.LLASF64
	.byte	0x1
	.byte	0x4a
	.uaword	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	sbrk_top
	.uleb128 0x1d
	.uaword	.LLASF65
	.byte	0x1
	.byte	0x9a
	.uaword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	.LLASF66
	.byte	0x1
	.byte	0x9b
	.uaword	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LLASF79
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.uaword	0x5f0
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF67
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.uaword	0x53
	.byte	0x1
	.uaword	0x612
	.uleb128 0x1f
	.uaword	0x53
	.uleb128 0x1f
	.uaword	0xa2
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF68
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.uaword	0x53
	.byte	0x1
	.uaword	0x634
	.uleb128 0x1f
	.uaword	0x53
	.uleb128 0x1f
	.uaword	0x32e
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF69
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.uaword	0x53
	.byte	0x1
	.uaword	0x656
	.uleb128 0x1f
	.uaword	0xb8
	.uleb128 0x1f
	.uaword	0x53
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF70
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.uaword	0x53
	.byte	0x1
	.uaword	0x66e
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF71
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.uaword	0xa2
	.byte	0x1
	.uaword	0x690
	.uleb128 0x1f
	.uaword	0xa2
	.uleb128 0x1f
	.uaword	0x53
	.uleb128 0x1f
	.uaword	0x25
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.uaword	.LLASF72
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.uaword	0x53
	.byte	0x1
	.uaword	0x6a9
	.uleb128 0x1f
	.uaword	0xb8
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.uaword	.LLASF80
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x53
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.LLdebug_abbrev0:
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
.LLdebug_loc0:
.LLLST0:
	.uaword	.LLFB0-.LLtext0
	.uaword	.LLCFI0-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI0-.LLtext0
	.uaword	.LLFE0-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST1:
	.uaword	.LLVL0-.LLtext0
	.uaword	.LLVL1-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL1-.LLtext0
	.uaword	.LLFE0-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	0
	.uaword	0
.LLLST2:
	.uaword	.LLFB1-.LLtext0
	.uaword	.LLCFI1-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI1-.LLtext0
	.uaword	.LLFE1-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST3:
	.uaword	.LLVL3-.LLtext0
	.uaword	.LLVL4-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL4-.LLtext0
	.uaword	.LLVL5-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	.LLVL5-.LLtext0
	.uaword	.LLFE1-.LLtext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLLST4:
	.uaword	.LLVL3-.LLtext0
	.uaword	.LLVL4-.LLtext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LLVL4-.LLtext0
	.uaword	.LLFE1-.LLtext0
	.uahalf	0x1
	.byte	0x69
	.uaword	0
	.uaword	0
.LLLST5:
	.uaword	.LLVL3-.LLtext0
	.uaword	.LLVL4-.LLtext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LLVL4-.LLtext0
	.uaword	.LLFE1-.LLtext0
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLLST6:
	.uaword	.LLFB2-.LLtext0
	.uaword	.LLCFI2-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI2-.LLtext0
	.uaword	.LLFE2-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST7:
	.uaword	.LLVL6-.LLtext0
	.uaword	.LLVL7-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL7-.LLtext0
	.uaword	.LLVL8-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	.LLVL8-.LLtext0
	.uaword	.LLFE2-.LLtext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLLST8:
	.uaword	.LLVL6-.LLtext0
	.uaword	.LLVL7-.LLtext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LLVL7-.LLtext0
	.uaword	.LLFE2-.LLtext0
	.uahalf	0x1
	.byte	0x69
	.uaword	0
	.uaword	0
.LLLST9:
	.uaword	.LLVL6-.LLtext0
	.uaword	.LLVL7-.LLtext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LLVL7-.LLtext0
	.uaword	.LLFE2-.LLtext0
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLLST10:
	.uaword	.LLFB3-.LLtext0
	.uaword	.LLCFI3-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI3-.LLtext0
	.uaword	.LLFE3-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST11:
	.uaword	.LLVL9-.LLtext0
	.uaword	.LLVL10-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL10-.LLtext0
	.uaword	.LLVL11-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	.LLVL11-.LLtext0
	.uaword	.LLFE3-.LLtext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLLST12:
	.uaword	.LLVL9-.LLtext0
	.uaword	.LLVL10-.LLtext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LLVL10-.LLtext0
	.uaword	.LLFE3-.LLtext0
	.uahalf	0x1
	.byte	0x69
	.uaword	0
	.uaword	0
.LLLST13:
	.uaword	.LLVL9-.LLtext0
	.uaword	.LLVL10-.LLtext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LLVL10-.LLtext0
	.uaword	.LLFE3-.LLtext0
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLLST14:
	.uaword	.LLFB4-.LLtext0
	.uaword	.LLCFI4-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI4-.LLtext0
	.uaword	.LLFE4-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST15:
	.uaword	.LLVL12-.LLtext0
	.uaword	.LLVL13-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL13-.LLtext0
	.uaword	.LLVL14-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	.LLVL14-.LLtext0
	.uaword	.LLFE4-.LLtext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLLST16:
	.uaword	.LLFB5-.LLtext0
	.uaword	.LLCFI5-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI5-.LLtext0
	.uaword	.LLFE5-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST17:
	.uaword	.LLVL15-.LLtext0
	.uaword	.LLVL16-.LLtext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LLVL16-.LLtext0
	.uaword	.LLVL17-.LLtext0
	.uahalf	0x1
	.byte	0x68
	.uaword	.LLVL17-.LLtext0
	.uaword	.LLFE5-.LLtext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLLST18:
	.uaword	.LLVL15-.LLtext0
	.uaword	.LLVL16-.LLtext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LLVL16-.LLtext0
	.uaword	.LLFE5-.LLtext0
	.uahalf	0x1
	.byte	0x69
	.uaword	0
	.uaword	0
.LLLST19:
	.uaword	.LLFB11-.LLtext0
	.uaword	.LLCFI6-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI6-.LLtext0
	.uaword	.LLFE11-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLLST20:
	.uaword	.LLFB10-.LLtext0
	.uaword	.LLCFI7-.LLtext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LLCFI7-.LLtext0
	.uaword	.LLFE10-.LLtext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
	.section	.debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.LLdebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LLtext0
	.uaword	.LLetext0-.LLtext0
	.uaword	0
	.uaword	0
	.section	.debug_line,"",@progbits
.LLdebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LLASF72:
	.asciz	"printf"
.LLASF12:
	.asciz	"__gid_t"
.LLASF7:
	.asciz	"size_t"
.LLASF45:
	.asciz	"write"
.LLASF50:
	.asciz	"close"
.LLASF47:
	.asciz	"path"
.LLASF6:
	.asciz	"long long unsigned int"
.LLASF39:
	.asciz	"st_blocks"
.LLASF76:
	.asciz	"stat"
.LLASF58:
	.asciz	"_exit"
.LLASF5:
	.asciz	"long long int"
.LLASF1:
	.asciz	"signed char"
.LLASF25:
	.asciz	"st_ino"
.LLASF9:
	.asciz	"long int"
.LLASF74:
	.asciz	"sparc-elf.c"
.LLASF23:
	.asciz	"nlink_t"
.LLASF18:
	.asciz	"off_t"
.LLASF21:
	.asciz	"gid_t"
.LLASF56:
	.asciz	"incr"
.LLASF10:
	.asciz	"__dev_t"
.LLASF28:
	.asciz	"st_uid"
.LLASF33:
	.asciz	"st_spare1"
.LLASF35:
	.asciz	"st_spare2"
.LLASF37:
	.asciz	"st_spare3"
.LLASF40:
	.asciz	"st_spare4"
.LLASF0:
	.asciz	"unsigned int"
.LLASF14:
	.asciz	"long unsigned int"
.LLASF54:
	.asciz	"whence"
.LLASF20:
	.asciz	"uid_t"
.LLASF43:
	.asciz	"size"
.LLASF4:
	.asciz	"short unsigned int"
.LLASF52:
	.asciz	"lseek"
.LLASF63:
	.asciz	"_heap"
.LLASF32:
	.asciz	"st_atime"
.LLASF31:
	.asciz	"st_size"
.LLASF26:
	.asciz	"st_mode"
.LLASF62:
	.asciz	"bss_value"
.LLASF57:
	.asciz	"isatty"
.LLASF13:
	.asciz	"sizetype"
.LLASF46:
	.asciz	"open"
.LLASF73:
	.asciz	"GNU C 4.7.2"
.LLASF8:
	.asciz	"_off_t"
.LLASF65:
	.asciz	"_bss_start"
.LLASF19:
	.asciz	"dev_t"
.LLASF16:
	.asciz	"time_t"
.LLASF67:
	.asciz	"__read"
.LLASF55:
	.asciz	"sbrk"
.LLASF27:
	.asciz	"st_nlink"
.LLASF2:
	.asciz	"unsigned char"
.LLASF3:
	.asciz	"short int"
.LLASF60:
	.asciz	"_startmain"
.LLASF38:
	.asciz	"st_blksize"
.LLASF66:
	.asciz	"_ebss"
.LLASF79:
	.asciz	"__exit"
.LLASF36:
	.asciz	"st_ctime"
.LLASF80:
	.asciz	"exit"
.LLASF61:
	.asciz	"data_value"
.LLASF30:
	.asciz	"st_rdev"
.LLASF77:
	.asciz	"old_top"
.LLASF15:
	.asciz	"char"
.LLASF49:
	.asciz	"mode"
.LLASF70:
	.asciz	"__close"
.LLASF69:
	.asciz	"__open"
.LLASF42:
	.asciz	"buffer"
.LLASF11:
	.asciz	"__uid_t"
.LLASF53:
	.asciz	"offset"
.LLASF29:
	.asciz	"st_gid"
.LLASF78:
	.asciz	"_init"
.LLASF71:
	.asciz	"memset"
.LLASF41:
	.asciz	"status"
.LLASF22:
	.asciz	"mode_t"
.LLASF24:
	.asciz	"st_dev"
.LLASF64:
	.asciz	"sbrk_top"
.LLASF68:
	.asciz	"__write"
.LLASF48:
	.asciz	"flags"
.LLASF51:
	.asciz	"fstat"
.LLASF44:
	.asciz	"read"
.LLASF75:
	.asciz	"/home/hiroaki/cross2-gcc4/printf"
.LLASF59:
	.asciz	"main"
.LLASF34:
	.asciz	"st_mtime"
.LLASF17:
	.asciz	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
