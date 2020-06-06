	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1

 # -G value = 8, Arch = mips1, ISA = 1
 # GNU C (GCC) version 4.7.2 (mips-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -D ___FreeBSD___ -D ARCH="mips-elf" mips-elf.c
 # -mno-synci -auxbase-strip mips-elf.s -g -O -Wall -fno-builtin
 # -fverbose-asm -fomit-frame-pointer
 # options enabled:  -fauto-inc-dec -fbranch-count-reg
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fdebug-types-section -fdefer-pop -fdelayed-branch
 # -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
 # -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
 # -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
 # -fif-conversion -fif-conversion2 -finline -finline-atomics
 # -finline-functions-called-once -fipa-profile -fipa-pure-const
 # -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 # -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
 # -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
 # -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
 # -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 # -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 # -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
 # -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
 # -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
 # -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 # -fzero-initialized-in-bss -mcheck-zero-division -mdivide-traps
 # -mdouble-float -meb -mexplicit-relocs -mextern-sdata -mfp-exceptions
 # -mfp32 -mfused-madd -mgp32 -mgpopt -mhard-float -mlocal-sdata -mlong32
 # -mno-mdmx -mno-mips16 -mno-mips3d -mshared

	.text
$Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	_exit
$LFB0 = .
	.file 1 "mips-elf.c"
	.loc 1 39 0
	.cfi_startproc
	.set	nomips16
	.ent	_exit
	.type	_exit, @function
_exit:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL0 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI0 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 40 0
	jal	__exit
	nop
	 #
$LVL1 = .
	.set	macro
	.set	reorder
	.end	_exit
	.cfi_endproc
$LFE0:
	.size	_exit, .-_exit
	.align	2
	.globl	read
$LFB1 = .
	.loc 1 44 0
	.cfi_startproc
	.set	nomips16
	.ent	read
	.type	read, @function
read:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL2 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI1 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 45 0
	jal	__read
	nop
	 #
$LVL3 = .
	.loc 1 46 0
	lw	$31,20($sp)	 #,
	nop
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

$LCFI2 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	read
	.cfi_endproc
$LFE1:
	.size	read, .-read
	.align	2
	.globl	write
$LFB2 = .
	.loc 1 48 0
	.cfi_startproc
	.set	nomips16
	.ent	write
	.type	write, @function
write:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL4 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI3 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 49 0
	jal	__write
	nop
	 #
$LVL5 = .
	.loc 1 50 0
	lw	$31,20($sp)	 #,
	nop
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

$LCFI4 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	write
	.cfi_endproc
$LFE2:
	.size	write, .-write
	.align	2
	.globl	open
$LFB3 = .
	.loc 1 52 0
	.cfi_startproc
	.set	nomips16
	.ent	open
	.type	open, @function
open:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL6 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI5 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 53 0
	jal	__open
	nop
	 #
$LVL7 = .
	.loc 1 54 0
	lw	$31,20($sp)	 #,
	nop
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

$LCFI6 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	open
	.cfi_endproc
$LFE3:
	.size	open, .-open
	.align	2
	.globl	close
$LFB4 = .
	.loc 1 56 0
	.cfi_startproc
	.set	nomips16
	.ent	close
	.type	close, @function
close:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL8 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI7 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 57 0
	jal	__close
	nop
	 #
$LVL9 = .
	.loc 1 58 0
	lw	$31,20($sp)	 #,
	nop
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

$LCFI8 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	close
	.cfi_endproc
$LFE4:
	.size	close, .-close
	.align	2
	.globl	fstat
$LFB5 = .
	.loc 1 63 0
	.cfi_startproc
	.set	nomips16
	.ent	fstat
	.type	fstat, @function
fstat:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL10 = .
	addiu	$sp,$sp,-24	 #,,
$LCFI9 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 64 0
	move	$4,$5	 #, sb
$LVL11 = .
	move	$5,$0	 #,
$LVL12 = .
	jal	memset	 #
	li	$6,60			# 0x3c	 #,

$LVL13 = .
	.loc 1 66 0
	move	$2,$0	 #,
	lw	$31,20($sp)	 #,
	nop
	j	$31	 #
	addiu	$sp,$sp,24	 #,,

$LCFI10 = .
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	fstat
	.cfi_endproc
$LFE5:
	.size	fstat, .-fstat
	.align	2
	.globl	lseek
$LFB6 = .
	.loc 1 69 0
	.cfi_startproc
	.set	nomips16
	.ent	lseek
	.type	lseek, @function
lseek:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL14 = .
	.loc 1 71 0
	j	$31
	move	$2,$5	 #, offset

	.set	macro
	.set	reorder
	.end	lseek
	.cfi_endproc
$LFE6:
	.size	lseek, .-lseek
	.align	2
	.globl	sbrk
$LFB7 = .
	.loc 1 77 0
	.cfi_startproc
	.set	nomips16
	.ent	sbrk
	.type	sbrk, @function
sbrk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL15 = .
	.loc 1 79 0
	lw	$2,%gp_rel(sbrk_top)($28)	 # old_top, sbrk_top
	nop
$LVL16 = .
	.loc 1 80 0
	addu	$4,$2,$4	 # tmp199, old_top, incr
$LVL17 = .
	.loc 1 82 0
	j	$31
	sw	$4,%gp_rel(sbrk_top)($28)	 # tmp199, sbrk_top

	.set	macro
	.set	reorder
	.end	sbrk
	.cfi_endproc
$LFE7:
	.size	sbrk, .-sbrk
	.align	2
	.globl	isatty
$LFB8 = .
	.loc 1 85 0
	.cfi_startproc
	.set	nomips16
	.ent	isatty
	.type	isatty, @function
isatty:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL18 = .
	.loc 1 87 0
	j	$31
	li	$2,1			# 0x1	 #,

	.set	macro
	.set	reorder
	.end	isatty
	.cfi_endproc
$LFE8:
	.size	isatty, .-isatty
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"Hello World! %08lx This architecture is %s\012\000"
	.align	2
$LC1:
	.ascii	"mips-elf\000"
	.text
	.align	2
	.globl	main
$LFB11 = .
	.loc 1 173 0
	.cfi_startproc
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24	 #,,
$LCFI11 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
	.loc 1 174 0
	lui	$4,%hi($LC0)	 # tmp197,
	addiu	$4,$4,%lo($LC0)	 #, tmp197,
	lw	$5,%gp_rel(data_value)($28)	 #, data_value
	lui	$6,%hi($LC1)	 # tmp198,
	jal	printf	 #
	addiu	$6,$6,%lo($LC1)	 #, tmp198,

$LVL19 = .
	.loc 1 175 0
	jal	exit	 #
	move	$4,$0	 #,

$LVL20 = .
	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE11:
	.size	main, .-main
	.align	2
	.globl	_startmain
$LFB10 = .
	.loc 1 166 0
	.cfi_startproc
	.set	nomips16
	.ent	_startmain
	.type	_startmain, @function
_startmain:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24	 #,,
$LCFI12 = .
	.cfi_def_cfa_offset 24
	sw	$31,20($sp)	 #,
	.cfi_offset 31, -4
$LBB4 = .
$LBB5 = .
	.loc 1 159 0
	addiu	$4,$28,%gp_rel(_bss_start)	 #,,
	move	$5,$0	 #,
	addiu	$6,$28,%gp_rel(_ebss)	 # tmp199,,
	jal	memset	 #
	subu	$6,$6,$4	 #, tmp199, tmp200

$LVL21 = .
$LBE5 = .
$LBE4 = .
	.loc 1 168 0
	jal	main
	nop
	 #
$LVL22 = .
	.set	macro
	.set	reorder
	.end	_startmain
	.cfi_endproc
$LFE10:
	.size	_startmain, .-_startmain
	.globl	sbrk_top
	.section	.sdata,"aw",@progbits
	.align	2
	.type	sbrk_top, @object
	.size	sbrk_top, 4
sbrk_top:
	.word	_heap

	.comm	bss_value,4,4
	.globl	data_value
	.align	2
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.word	-1414661426
	.text
$Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/mips-elf/4.7.2/../../../../mips-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x6c4
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF73
	.byte	0x1
	.4byte	$LASF74
	.4byte	$LASF75
	.4byte	$Ltext0
	.4byte	$Letext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF7
	.byte	0x2
	.byte	0xd5
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	$LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	$LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	$LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	$LASF6
	.uleb128 0x2
	.4byte	$LASF8
	.byte	0x3
	.byte	0x10
	.4byte	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	$LASF9
	.uleb128 0x2
	.4byte	$LASF10
	.byte	0x3
	.byte	0x18
	.4byte	0x45
	.uleb128 0x2
	.4byte	$LASF11
	.byte	0x3
	.byte	0x1d
	.4byte	0x4c
	.uleb128 0x2
	.4byte	$LASF12
	.byte	0x3
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x2
	.4byte	$LASF16
	.byte	0x4
	.byte	0x6e
	.4byte	0x73
	.uleb128 0x2
	.4byte	$LASF17
	.byte	0x4
	.byte	0x86
	.4byte	0x4c
	.uleb128 0x2
	.4byte	$LASF18
	.byte	0x4
	.byte	0xa3
	.4byte	0x68
	.uleb128 0x2
	.4byte	$LASF19
	.byte	0x4
	.byte	0xa4
	.4byte	0x7a
	.uleb128 0x2
	.4byte	$LASF20
	.byte	0x4
	.byte	0xa5
	.4byte	0x85
	.uleb128 0x2
	.4byte	$LASF21
	.byte	0x4
	.byte	0xa6
	.4byte	0x90
	.uleb128 0x2
	.4byte	$LASF22
	.byte	0x4
	.byte	0xc4
	.4byte	0x30
	.uleb128 0x2
	.4byte	$LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0x4c
	.uleb128 0x8
	.4byte	$LASF76
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.4byte	0x216
	.uleb128 0x9
	.4byte	$LASF24
	.byte	0x5
	.byte	0x1b
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	$LASF25
	.byte	0x5
	.byte	0x1c
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	$LASF26
	.byte	0x5
	.byte	0x1d
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	$LASF27
	.byte	0x5
	.byte	0x1e
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	$LASF28
	.byte	0x5
	.byte	0x1f
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.4byte	$LASF29
	.byte	0x5
	.byte	0x20
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	$LASF30
	.byte	0x5
	.byte	0x21
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	$LASF31
	.byte	0x5
	.byte	0x22
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	$LASF32
	.byte	0x5
	.byte	0x30
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	$LASF33
	.byte	0x5
	.byte	0x31
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	$LASF34
	.byte	0x5
	.byte	0x32
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	$LASF35
	.byte	0x5
	.byte	0x33
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	$LASF36
	.byte	0x5
	.byte	0x34
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	$LASF37
	.byte	0x5
	.byte	0x35
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	$LASF38
	.byte	0x5
	.byte	0x36
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	$LASF39
	.byte	0x5
	.byte	0x37
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	$LASF40
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
	.4byte	$LASF58
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	$LFB0
	.4byte	$LFE0
	.4byte	$LLST0
	.byte	0x1
	.4byte	0x261
	.uleb128 0xd
	.4byte	$LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.4byte	$LLST1
	.uleb128 0xe
	.4byte	$LVL1
	.4byte	0x5ea
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
	.4byte	$LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB1
	.4byte	$LFE1
	.4byte	$LLST2
	.byte	0x1
	.4byte	0x2cb
	.uleb128 0x11
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	$LLST3
	.uleb128 0xd
	.4byte	$LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xa2
	.4byte	$LLST4
	.uleb128 0xd
	.4byte	$LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	$LLST5
	.uleb128 0xe
	.4byte	$LVL3
	.4byte	0x5fe
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	$LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB2
	.4byte	$LFE2
	.4byte	$LLST6
	.byte	0x1
	.4byte	0x335
	.uleb128 0x11
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	$LLST7
	.uleb128 0xd
	.4byte	$LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0x335
	.4byte	$LLST8
	.uleb128 0xd
	.4byte	$LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	$LLST9
	.uleb128 0xe
	.4byte	$LVL5
	.4byte	0x620
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33b
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.4byte	$LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB3
	.4byte	$LFE3
	.4byte	$LLST10
	.byte	0x1
	.4byte	0x3a7
	.uleb128 0xd
	.4byte	$LASF47
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	$LLST11
	.uleb128 0xd
	.4byte	$LASF48
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	$LLST12
	.uleb128 0xd
	.4byte	$LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	$LLST13
	.uleb128 0xe
	.4byte	$LVL7
	.4byte	0x642
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	$LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB4
	.4byte	$LFE4
	.4byte	$LLST14
	.byte	0x1
	.4byte	0x3e5
	.uleb128 0x11
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.4byte	$LLST15
	.uleb128 0xe
	.4byte	$LVL9
	.4byte	0x664
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
	.4byte	$LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB5
	.4byte	$LFE5
	.4byte	$LLST16
	.byte	0x1
	.4byte	0x43c
	.uleb128 0x11
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x53
	.4byte	$LLST17
	.uleb128 0x11
	.ascii	"sb\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x43c
	.4byte	$LLST18
	.uleb128 0xe
	.4byte	$LVL13
	.4byte	0x67c
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x13
	.byte	0x1
	.4byte	$LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB6
	.4byte	$LFE6
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0x1
	.4byte	0x486
	.uleb128 0x14
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	$LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.4byte	$LASF54
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	$LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa2
	.4byte	$LFB7
	.4byte	$LFE7
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0x1
	.4byte	0x4c0
	.uleb128 0xd
	.4byte	$LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x53
	.4byte	$LLST19
	.uleb128 0x16
	.4byte	$LASF77
	.byte	0x1
	.byte	0x4e
	.4byte	0xa2
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	$LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x53
	.4byte	$LFB8
	.4byte	$LFE8
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0x1
	.4byte	0x4ea
	.uleb128 0x14
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	$LASF59
	.byte	0x1
	.byte	0xac
	.4byte	0x53
	.4byte	$LFB11
	.4byte	$LFE11
	.4byte	$LLST20
	.byte	0x1
	.4byte	0x537
	.uleb128 0x18
	.4byte	$LVL19
	.4byte	0x69e
	.4byte	0x527
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0x3
	.4byte	$LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	$LC0
	.byte	0
	.uleb128 0xe
	.4byte	$LVL20
	.4byte	0x6b7
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	$LASF78
	.byte	0x1
	.byte	0x9d
	.4byte	0x53
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	$LASF60
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	$LFB10
	.4byte	$LFE10
	.4byte	$LLST21
	.byte	0x1
	.4byte	0x58d
	.uleb128 0x1a
	.4byte	0x537
	.4byte	$LBB4
	.4byte	$LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0x583
	.uleb128 0xe
	.4byte	$LVL21
	.4byte	0x67c
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	$LVL22
	.4byte	0x4ea
	.byte	0
	.uleb128 0x1c
	.4byte	$LASF61
	.byte	0x1
	.byte	0x8
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0x1c
	.4byte	$LASF62
	.byte	0x1
	.byte	0x9
	.4byte	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x1d
	.4byte	$LASF63
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	$LASF64
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sbrk_top
	.uleb128 0x1d
	.4byte	$LASF65
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	$LASF66
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.4byte	$LASF79
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x5fe
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF67
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x620
	.uleb128 0x1f
	.4byte	0x53
	.uleb128 0x1f
	.4byte	0xa2
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF68
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x642
	.uleb128 0x1f
	.4byte	0x53
	.uleb128 0x1f
	.4byte	0x335
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF69
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x664
	.uleb128 0x1f
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	0x53
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF70
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x67c
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF71
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0xa2
	.byte	0x1
	.4byte	0x69e
	.uleb128 0x1f
	.4byte	0xa2
	.uleb128 0x1f
	.4byte	0x53
	.uleb128 0x1f
	.4byte	0x25
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	$LASF72
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x6b7
	.uleb128 0x1f
	.4byte	0xb8
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	$LASF80
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	0x53
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
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
$Ldebug_loc0:
$LLST0:
	.4byte	$LFB0-$Ltext0
	.4byte	$LCFI0-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI0-$Ltext0
	.4byte	$LFE0-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
$LLST1:
	.4byte	$LVL0-$Ltext0
	.4byte	$LVL1-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL1-1-$Ltext0
	.4byte	$LFE0-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST2:
	.4byte	$LFB1-$Ltext0
	.4byte	$LCFI1-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI1-$Ltext0
	.4byte	$LCFI2-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	$LCFI2-$Ltext0
	.4byte	$LFE1-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
$LLST3:
	.4byte	$LVL2-$Ltext0
	.4byte	$LVL3-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL3-1-$Ltext0
	.4byte	$LFE1-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST4:
	.4byte	$LVL2-$Ltext0
	.4byte	$LVL3-1-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL3-1-$Ltext0
	.4byte	$LFE1-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST5:
	.4byte	$LVL2-$Ltext0
	.4byte	$LVL3-1-$Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	$LVL3-1-$Ltext0
	.4byte	$LFE1-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST6:
	.4byte	$LFB2-$Ltext0
	.4byte	$LCFI3-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI3-$Ltext0
	.4byte	$LCFI4-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	$LCFI4-$Ltext0
	.4byte	$LFE2-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
$LLST7:
	.4byte	$LVL4-$Ltext0
	.4byte	$LVL5-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL5-1-$Ltext0
	.4byte	$LFE2-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST8:
	.4byte	$LVL4-$Ltext0
	.4byte	$LVL5-1-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL5-1-$Ltext0
	.4byte	$LFE2-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST9:
	.4byte	$LVL4-$Ltext0
	.4byte	$LVL5-1-$Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	$LVL5-1-$Ltext0
	.4byte	$LFE2-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST10:
	.4byte	$LFB3-$Ltext0
	.4byte	$LCFI5-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI5-$Ltext0
	.4byte	$LCFI6-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	$LCFI6-$Ltext0
	.4byte	$LFE3-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
$LLST11:
	.4byte	$LVL6-$Ltext0
	.4byte	$LVL7-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL7-1-$Ltext0
	.4byte	$LFE3-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST12:
	.4byte	$LVL6-$Ltext0
	.4byte	$LVL7-1-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL7-1-$Ltext0
	.4byte	$LFE3-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST13:
	.4byte	$LVL6-$Ltext0
	.4byte	$LVL7-1-$Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	$LVL7-1-$Ltext0
	.4byte	$LFE3-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST14:
	.4byte	$LFB4-$Ltext0
	.4byte	$LCFI7-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI7-$Ltext0
	.4byte	$LCFI8-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	$LCFI8-$Ltext0
	.4byte	$LFE4-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
$LLST15:
	.4byte	$LVL8-$Ltext0
	.4byte	$LVL9-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL9-1-$Ltext0
	.4byte	$LFE4-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST16:
	.4byte	$LFB5-$Ltext0
	.4byte	$LCFI9-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI9-$Ltext0
	.4byte	$LCFI10-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	$LCFI10-$Ltext0
	.4byte	$LFE5-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
$LLST17:
	.4byte	$LVL10-$Ltext0
	.4byte	$LVL11-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL11-$Ltext0
	.4byte	$LFE5-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST18:
	.4byte	$LVL10-$Ltext0
	.4byte	$LVL12-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL12-$Ltext0
	.4byte	$LVL13-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL13-1-$Ltext0
	.4byte	$LFE5-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST19:
	.4byte	$LVL15-$Ltext0
	.4byte	$LVL17-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL17-$Ltext0
	.4byte	$LFE7-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST20:
	.4byte	$LFB11-$Ltext0
	.4byte	$LCFI11-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI11-$Ltext0
	.4byte	$LFE11-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
$LLST21:
	.4byte	$LFB10-$Ltext0
	.4byte	$LCFI12-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	$LCFI12-$Ltext0
	.4byte	$LFE10-$Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF72:
	.ascii	"printf\000"
$LASF12:
	.ascii	"__gid_t\000"
$LASF7:
	.ascii	"size_t\000"
$LASF45:
	.ascii	"write\000"
$LASF50:
	.ascii	"close\000"
$LASF47:
	.ascii	"path\000"
$LASF6:
	.ascii	"long long unsigned int\000"
$LASF39:
	.ascii	"st_blocks\000"
$LASF76:
	.ascii	"stat\000"
$LASF58:
	.ascii	"_exit\000"
$LASF5:
	.ascii	"long long int\000"
$LASF1:
	.ascii	"signed char\000"
$LASF25:
	.ascii	"st_ino\000"
$LASF9:
	.ascii	"long int\000"
$LASF23:
	.ascii	"nlink_t\000"
$LASF18:
	.ascii	"off_t\000"
$LASF21:
	.ascii	"gid_t\000"
$LASF56:
	.ascii	"incr\000"
$LASF10:
	.ascii	"__dev_t\000"
$LASF28:
	.ascii	"st_uid\000"
$LASF33:
	.ascii	"st_spare1\000"
$LASF35:
	.ascii	"st_spare2\000"
$LASF37:
	.ascii	"st_spare3\000"
$LASF40:
	.ascii	"st_spare4\000"
$LASF0:
	.ascii	"unsigned int\000"
$LASF74:
	.ascii	"mips-elf.c\000"
$LASF14:
	.ascii	"long unsigned int\000"
$LASF54:
	.ascii	"whence\000"
$LASF20:
	.ascii	"uid_t\000"
$LASF43:
	.ascii	"size\000"
$LASF4:
	.ascii	"short unsigned int\000"
$LASF52:
	.ascii	"lseek\000"
$LASF63:
	.ascii	"_heap\000"
$LASF32:
	.ascii	"st_atime\000"
$LASF31:
	.ascii	"st_size\000"
$LASF26:
	.ascii	"st_mode\000"
$LASF62:
	.ascii	"bss_value\000"
$LASF57:
	.ascii	"isatty\000"
$LASF13:
	.ascii	"sizetype\000"
$LASF46:
	.ascii	"open\000"
$LASF73:
	.ascii	"GNU C 4.7.2\000"
$LASF8:
	.ascii	"_off_t\000"
$LASF65:
	.ascii	"_bss_start\000"
$LASF19:
	.ascii	"dev_t\000"
$LASF16:
	.ascii	"time_t\000"
$LASF67:
	.ascii	"__read\000"
$LASF55:
	.ascii	"sbrk\000"
$LASF27:
	.ascii	"st_nlink\000"
$LASF2:
	.ascii	"unsigned char\000"
$LASF3:
	.ascii	"short int\000"
$LASF60:
	.ascii	"_startmain\000"
$LASF38:
	.ascii	"st_blksize\000"
$LASF66:
	.ascii	"_ebss\000"
$LASF79:
	.ascii	"__exit\000"
$LASF36:
	.ascii	"st_ctime\000"
$LASF80:
	.ascii	"exit\000"
$LASF61:
	.ascii	"data_value\000"
$LASF30:
	.ascii	"st_rdev\000"
$LASF77:
	.ascii	"old_top\000"
$LASF15:
	.ascii	"char\000"
$LASF49:
	.ascii	"mode\000"
$LASF70:
	.ascii	"__close\000"
$LASF69:
	.ascii	"__open\000"
$LASF42:
	.ascii	"buffer\000"
$LASF11:
	.ascii	"__uid_t\000"
$LASF53:
	.ascii	"offset\000"
$LASF29:
	.ascii	"st_gid\000"
$LASF78:
	.ascii	"_init\000"
$LASF71:
	.ascii	"memset\000"
$LASF41:
	.ascii	"status\000"
$LASF22:
	.ascii	"mode_t\000"
$LASF24:
	.ascii	"st_dev\000"
$LASF64:
	.ascii	"sbrk_top\000"
$LASF68:
	.ascii	"__write\000"
$LASF48:
	.ascii	"flags\000"
$LASF51:
	.ascii	"fstat\000"
$LASF44:
	.ascii	"read\000"
$LASF75:
	.ascii	"/home/hiroaki/cross2-gcc4/printf\000"
$LASF59:
	.ascii	"main\000"
$LASF34:
	.ascii	"st_mtime\000"
$LASF17:
	.ascii	"ino_t\000"
	.ident	"GCC: (GNU) 4.7.2"
