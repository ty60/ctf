	.file	"powerpc-elf.c"

 # rs6000/powerpc options: -msdata=data -G 8
 # GNU C (GCC) version 4.7.2 (powerpc-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -D ___FreeBSD___ -D ARCH="powerpc-elf" powerpc-elf.c
 # -auxbase-strip powerpc-elf.s -g -O -Wall -fno-builtin -fverbose-asm
 # -fomit-frame-pointer
 # options enabled:  -fauto-inc-dec -fbranch-count-reg
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime
 # -fguess-branch-probability -fident -fif-conversion -fif-conversion2
 # -finline -finline-atomics -finline-functions-called-once -fipa-profile
 # -fipa-pure-const -fipa-reference -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-static-consts
 # -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -fpeephole -fprefetch-loop-arrays -freg-struct-return
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fsection-anchors -fshow-column -fshrink-wrap
 # -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
 # -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
 # -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
 # -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse
 # -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 # -ftree-phiprop -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 # -ftree-slp-vectorize -ftree-sra -ftree-ter -ftree-vect-loop-version
 # -funit-at-a-time -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 # -fzero-initialized-in-bss -m32 -malign-branch-targets -malways-hint
 # -mbig -mbig-endian -mblock-move-inline-limit= -mbss-plt -mfriz
 # -mgen-cell-microcode -mhard-float -mnew-mnemonics -mno-fp-in-toc
 # -mpointers-to-nested-functions -mpowerpc -msched-groups -msched-prolog
 # -msvr4-struct-return -mtls-markers -mupdate -mvectorize-builtins
 # -mvsx-scalar-double

	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl _exit
	.type	_exit, @function
_exit:
.LFB0:
	.file 1 "powerpc-elf.c"
	.loc 1 39 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)	 #,,
.LCFI0:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 40 0
	bl __exit	 #
.LVL1:
	.cfi_endproc
.LFE0:
	.size	_exit, .-_exit
	.align 2
	.globl read
	.type	read, @function
read:
.LFB1:
	.loc 1 44 0
	.cfi_startproc
.LVL2:
	stwu 1,-16(1)	 #,,
.LCFI1:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 45 0
	bl __read	 #
.LVL3:
	.loc 1 46 0
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI2:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE1:
	.size	read, .-read
	.align 2
	.globl write
	.type	write, @function
write:
.LFB2:
	.loc 1 48 0
	.cfi_startproc
.LVL4:
	stwu 1,-16(1)	 #,,
.LCFI3:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 49 0
	bl __write	 #
.LVL5:
	.loc 1 50 0
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI4:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE2:
	.size	write, .-write
	.align 2
	.globl open
	.type	open, @function
open:
.LFB3:
	.loc 1 52 0
	.cfi_startproc
.LVL6:
	stwu 1,-16(1)	 #,,
.LCFI5:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 53 0
	bl __open	 #
.LVL7:
	.loc 1 54 0
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI6:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE3:
	.size	open, .-open
	.align 2
	.globl close
	.type	close, @function
close:
.LFB4:
	.loc 1 56 0
	.cfi_startproc
.LVL8:
	stwu 1,-16(1)	 #,,
.LCFI7:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 57 0
	bl __close	 #
.LVL9:
	.loc 1 58 0
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI8:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE4:
	.size	close, .-close
	.align 2
	.globl fstat
	.type	fstat, @function
fstat:
.LFB5:
	.loc 1 63 0
	.cfi_startproc
.LVL10:
	stwu 1,-16(1)	 #,,
.LCFI9:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 64 0
	mr 3,4	 #, sb
.LVL11:
	li 4,0	 #,
.LVL12:
	li 5,60	 #,
	bl memset	 #
.LVL13:
	.loc 1 66 0
	li 3,0	 #,
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI10:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE5:
	.size	fstat, .-fstat
	.align 2
	.globl lseek
	.type	lseek, @function
lseek:
.LFB6:
	.loc 1 69 0
	.cfi_startproc
.LVL14:
	.loc 1 71 0
	mr 3,4	 #, offset
.LVL15:
	blr
	.cfi_endproc
.LFE6:
	.size	lseek, .-lseek
	.align 2
	.globl sbrk
	.type	sbrk, @function
sbrk:
.LFB7:
	.loc 1 77 0
	.cfi_startproc
.LVL16:
	.loc 1 79 0
	lis 10,sbrk_top@ha	 # tmp126,
	lwz 9,sbrk_top@l(10)	 # sbrk_top, old_top
.LVL17:
	.loc 1 80 0
	add 3,9,3	 # tmp129, old_top, incr
.LVL18:
	stw 3,sbrk_top@l(10)	 # sbrk_top, tmp129
	.loc 1 82 0
	mr 3,9	 #, old_top
	blr
	.cfi_endproc
.LFE7:
	.size	sbrk, .-sbrk
	.align 2
	.globl isatty
	.type	isatty, @function
isatty:
.LFB8:
	.loc 1 85 0
	.cfi_startproc
.LVL19:
	.loc 1 87 0
	li 3,1	 #,
.LVL20:
	blr
	.cfi_endproc
.LFE8:
	.size	isatty, .-isatty
	.align 2
	.globl main
	.type	main, @function
main:
.LFB11:
	.loc 1 173 0
	.cfi_startproc
	stwu 1,-16(1)	 #,,
.LCFI11:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 174 0
	lis 3,.LC0@ha	 # tmp123,
	la 3,.LC0@l(3)	 #,, tmp123
	lis 9,data_value@ha	 # tmp125,
	lwz 4,data_value@l(9)	 # data_value,
	lis 5,.LC1@ha	 # tmp128,
	la 5,.LC1@l(5)	 #,, tmp128
	crxor 6,6,6
	bl printf	 #
.LVL21:
	.loc 1 175 0
	li 3,0	 #,
	bl exit	 #
.LVL22:
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.align 2
	.globl _startmain
	.type	_startmain, @function
_startmain:
.LFB10:
	.loc 1 166 0
	.cfi_startproc
	stwu 1,-16(1)	 #,,
.LCFI12:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
.LBB4:
.LBB5:
	.loc 1 159 0
	lis 9,_bss_start@ha	 # tmp126,
	la 9,_bss_start@l(9)	 # tmp125,, tmp126
	mr 3,9	 #, tmp125
	li 4,0	 #,
	lis 5,_ebss@ha	 # tmp129,
	la 5,_ebss@l(5)	 # tmp128,, tmp129
	subf 5,9,5	 #, tmp125, tmp128
	bl memset	 #
.LVL23:
.LBE5:
.LBE4:
	.loc 1 168 0
	bl main	 #
.LVL24:
	.cfi_endproc
.LFE10:
	.size	_startmain, .-_startmain
	.globl sbrk_top
	.comm	bss_value,4,4
	.globl data_value
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
.LC1:
	.string	"powerpc-elf"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	sbrk_top, @object
	.size	sbrk_top, 4
sbrk_top:
	.long	_heap
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.long	-1414661426
	.section	".text"
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/powerpc-elf/4.7.2/../../../../powerpc-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6c8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x1
	.4byte	.LASF74
	.4byte	.LASF75
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.4byte	0x7c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1d
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.4byte	0x45
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
	.4byte	0x7c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x86
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa3
	.4byte	0x71
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa4
	.4byte	0x83
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa5
	.4byte	0x8e
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa6
	.4byte	0x99
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc4
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0x45
	.uleb128 0x8
	.4byte	.LASF76
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
	.4byte	0x7c
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
	.4byte	0x7c
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
	.4byte	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x36
	.4byte	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x37
	.4byte	0x7c
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
	.4byte	0x7c
	.4byte	0x226
	.uleb128 0xb
	.4byte	0x37
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF58
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
	.4byte	0x5c
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x5ee
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x5c
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x2cb
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x5c
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0x4c
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x5c
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x602
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x5c
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x335
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.4byte	0x5c
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
	.4byte	0x5c
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x624
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	0x5c
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
	.4byte	0x5c
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x5c
	.4byte	.LLST13
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0x646
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x5c
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x3e5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.4byte	0x5c
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x668
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x5c
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x43c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x5c
	.4byte	.LLST17
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.4byte	0x43c
	.4byte	.LLST18
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x680
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.4byte	0x5c
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.4byte	0x488
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x5c
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0x5c
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x44
	.4byte	0x5c
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x4c
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.4byte	0x4c2
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x5c
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4e
	.4byte	0x4c
	.byte	0x1
	.byte	0x59
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x5c
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.4byte	0x4ee
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.4byte	0x5c
	.4byte	.LLST21
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xac
	.4byte	0x5c
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x53b
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x6a2
	.4byte	0x52b
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x6bb
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9d
	.4byte	0x5c
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa5
	.4byte	0x5c
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x591
	.uleb128 0x19
	.4byte	0x53b
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0x587
	.uleb128 0xe
	.4byte	.LVL23
	.4byte	0x680
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL24
	.4byte	0x4ee
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8
	.4byte	0x7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9
	.4byte	0x5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sbrk_top
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF79
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x602
	.uleb128 0x1e
	.4byte	0x5c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.4byte	0x5c
	.byte	0x1
	.4byte	0x624
	.uleb128 0x1e
	.4byte	0x5c
	.uleb128 0x1e
	.4byte	0x4c
	.uleb128 0x1e
	.4byte	0x5c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF68
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.4byte	0x5c
	.byte	0x1
	.4byte	0x646
	.uleb128 0x1e
	.4byte	0x5c
	.uleb128 0x1e
	.4byte	0x335
	.uleb128 0x1e
	.4byte	0x5c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF69
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x5c
	.byte	0x1
	.4byte	0x668
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	0x5c
	.uleb128 0x1e
	.4byte	0x5c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF70
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.4byte	0x5c
	.byte	0x1
	.4byte	0x680
	.uleb128 0x1e
	.4byte	0x5c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF71
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0x4c
	.byte	0x1
	.4byte	0x6a2
	.uleb128 0x1e
	.4byte	0x4c
	.uleb128 0x1e
	.4byte	0x5c
	.uleb128 0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x5c
	.byte	0x1
	.4byte	0x6bb
	.uleb128 0x1e
	.4byte	0xb8
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF80
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x5c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x71
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
.LASF72:
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
.LASF76:
	.string	"stat"
.LASF58:
	.string	"_exit"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"st_ino"
.LASF10:
	.string	"long int"
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
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"long unsigned int"
.LASF54:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF43:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF52:
	.string	"lseek"
.LASF63:
	.string	"_heap"
.LASF32:
	.string	"st_atime"
.LASF31:
	.string	"st_size"
.LASF26:
	.string	"st_mode"
.LASF62:
	.string	"bss_value"
.LASF57:
	.string	"isatty"
.LASF1:
	.string	"sizetype"
.LASF46:
	.string	"open"
.LASF73:
	.string	"GNU C 4.7.2"
.LASF9:
	.string	"_off_t"
.LASF65:
	.string	"_bss_start"
.LASF19:
	.string	"dev_t"
.LASF16:
	.string	"time_t"
.LASF67:
	.string	"__read"
.LASF55:
	.string	"sbrk"
.LASF27:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF60:
	.string	"_startmain"
.LASF38:
	.string	"st_blksize"
.LASF66:
	.string	"_ebss"
.LASF79:
	.string	"__exit"
.LASF36:
	.string	"st_ctime"
.LASF80:
	.string	"exit"
.LASF61:
	.string	"data_value"
.LASF74:
	.string	"powerpc-elf.c"
.LASF30:
	.string	"st_rdev"
.LASF77:
	.string	"old_top"
.LASF15:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF70:
	.string	"__close"
.LASF69:
	.string	"__open"
.LASF42:
	.string	"buffer"
.LASF12:
	.string	"__uid_t"
.LASF53:
	.string	"offset"
.LASF29:
	.string	"st_gid"
.LASF78:
	.string	"_init"
.LASF71:
	.string	"memset"
.LASF41:
	.string	"status"
.LASF22:
	.string	"mode_t"
.LASF24:
	.string	"st_dev"
.LASF64:
	.string	"sbrk_top"
.LASF68:
	.string	"__write"
.LASF48:
	.string	"flags"
.LASF51:
	.string	"fstat"
.LASF44:
	.string	"read"
.LASF75:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF59:
	.string	"main"
.LASF34:
	.string	"st_mtime"
.LASF17:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
