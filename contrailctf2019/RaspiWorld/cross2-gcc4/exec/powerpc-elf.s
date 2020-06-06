	.file	"powerpc-elf.c"

 # rs6000/powerpc options: -msdata=data -G 8
 # GNU C (GCC) version 4.7.2 (powerpc-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="powerpc-elf"
 # powerpc-elf.c -auxbase-strip powerpc-elf.s -g -O -Wall -fno-builtin
 # -fverbose-asm -fomit-frame-pointer
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
	.globl exit
	.type	exit, @function
exit:
.LFB0:
	.file 1 "powerpc-elf.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)	 #,,
.LCFI0:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	.loc 1 31 0
	bl __exit	 #
.LVL1:
	.cfi_endproc
.LFE0:
	.size	exit, .-exit
	.align 2
	.globl write1
	.type	write1, @function
write1:
.LFB1:
	.loc 1 35 0
	.cfi_startproc
.LVL2:
	stwu 1,-16(1)	 #,,
.LCFI1:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
	mr 9,1	 # tmp125,
	stbu 4,8(9)	 # c, c
	.loc 1 36 0
	mr 4,9	 #, tmp125
.LVL3:
	li 5,1	 #,
	bl __write	 #
.LVL4:
	.loc 1 37 0
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	addi 1,1,16	 #,,
.LCFI2:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE1:
	.size	write1, .-write1
	.align 2
	.globl putchar
	.type	putchar, @function
putchar:
.LFB2:
	.loc 1 40 0
	.cfi_startproc
.LVL5:
	stwu 1,-16(1)	 #,,
.LCFI3:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	stw 31,12(1)	 #,
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mr 31,4	 # c, c
	.loc 1 41 0
	rlwinm 4,4,0,0xff	 #, c
.LVL6:
	bl write1	 #
.LVL7:
	.loc 1 43 0
	mr 3,31	 #, c
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	lwz 31,12(1)	 #,
.LVL8:
	addi 1,1,16	 #,,
.LCFI4:
	.cfi_restore 31
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE2:
	.size	putchar, .-putchar
	.align 2
	.globl puts
	.type	puts, @function
puts:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
.LVL9:
	stwu 1,-16(1)	 #,,
.LCFI5:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	stw 30,8(1)	 #,
	stw 31,12(1)	 #,
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3	 # fd, fd
	mr 31,4	 # str, str
	.loc 1 47 0
	lbz 4,0(4)	 # *str_2(D), D.1005
.LVL10:
	cmpwi 7,4,0	 #, tmp160, D.1005
	beq- 7,.L8	 #
.LVL11:
.L9:
	.loc 1 48 0 discriminator 2
	mr 3,30	 #, fd
	bl putchar	 #
.LVL12:
	.loc 1 47 0 discriminator 2
	lbzu 4,1(31)	 # MEM[base: D.1037_12, offset: 0B], D.1005
	cmpwi 7,4,0	 #, tmp162, D.1005
	bne+ 7,.L9	 #
.L8:
	.loc 1 50 0
	li 3,0	 #,
	lwz 0,20(1)	 #,
	mtlr 0	 #,
	lwz 30,8(1)	 #,
.LVL13:
	lwz 31,12(1)	 #,
	addi 1,1,16	 #,,
.LCFI6:
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE3:
	.size	puts, .-puts
	.align 2
	.globl putxval
	.type	putxval, @function
putxval:
.LFB4:
	.loc 1 83 0
	.cfi_startproc
.LVL14:
	stwu 1,-48(1)	 #,,
.LCFI7:
	.cfi_def_cfa_offset 48
	mflr 0	 #,
	stw 0,52(1)	 #,
	.cfi_offset 65, 4
.LVL15:
	.loc 1 88 0
	li 9,0	 # tmp133,
	stb 9,24(1)	 # MEM[(char *)&buf + 16B], tmp133
.LVL16:
	.loc 1 90 0
	mr. 10,4	 # value, value
	bne- 0,.L13	 #
	.loc 1 90 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0	 #, tmp135, column
	bne- 7,.L13	 #
	.loc 1 91 0 is_stmt 1
	li 5,1	 # column,
.LVL17:
.L13:
	.loc 1 82 0 discriminator 1
	addi 9,1,22	 # ivtmp.21,,
	.loc 1 94 0 discriminator 1
	li 11,48	 # tmp146,
	lis 6,.LC0@ha	 # tmp147,
	b .L14	 #
.LVL18:
.L16:
	.loc 1 94 0 is_stmt 0
	la 7,.LC0@l(6)	 # tmp136,, tmp147
	rlwinm 8,10,0,28,31	 # tmp138, value,
	lbzx 8,7,8	 #,
	stb 8,1(9)	 # MEM[base: D.1043_24, offset: 1B], tmp139
.LVL19:
	.loc 1 95 0 is_stmt 1
	srwi 10,10,4	 # value, value,
.LVL20:
	.loc 1 96 0
	cmpwi 7,5,0	 #, tmp140, column
	beq+ 7,.L15	 #
.LVL21:
.L18:
	.loc 1 96 0 is_stmt 0 discriminator 1
	addi 5,5,-1	 # column, column,
.LVL22:
.L15:
	addi 9,9,-1	 # ivtmp.21, ivtmp.21,
.LVL23:
.L14:
	.loc 1 82 0 is_stmt 1 discriminator 1
	addi 4,9,1	 # p, ivtmp.21,
.LVL24:
	.loc 1 93 0 discriminator 1
	cmpwi 7,10,0	 #, tmp141, value
	bne- 7,.L16	 #
	.loc 1 93 0 is_stmt 0 discriminator 2
	cmpwi 7,5,0	 #, tmp142, column
	beq- 7,.L21	 #
	.loc 1 94 0 is_stmt 1
	stb 11,1(9)	 # MEM[base: D.1044_5, offset: 1B], tmp146
.LVL25:
	b .L18	 #
.LVL26:
.L21:
	.loc 1 99 0
	addi 4,4,1	 #, p,
	bl puts	 #
.LVL27:
	.loc 1 102 0
	li 3,0	 #,
	lwz 0,52(1)	 #,
	mtlr 0	 #,
	addi 1,1,48	 #,,
.LCFI8:
	.cfi_restore 65
	.cfi_def_cfa_offset 0
	blr	 #
	.cfi_endproc
.LFE4:
	.size	putxval, .-putxval
	.align 2
	.globl main
	.type	main, @function
main:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	stwu 1,-16(1)	 #,,
.LCFI9:
	.cfi_def_cfa_offset 16
	mflr 0	 #,
	stw 0,20(1)	 #,
	.cfi_offset 65, 4
.LVL28:
	.loc 1 107 0
	li 3,1	 #,
	lis 4,.LC1@ha	 # tmp124,
	la 4,.LC1@l(4)	 #,, tmp124
	bl puts	 #
.LVL29:
	.loc 1 108 0
	li 3,1	 #,
	lis 9,data_value@ha	 # tmp126,
	lwz 4,data_value@l(9)	 # data_value,
	li 5,0	 #,
	bl putxval	 #
.LVL30:
	.loc 1 109 0
	li 3,1	 #,
	lis 4,.LC2@ha	 # tmp129,
	la 4,.LC2@l(4)	 #,, tmp129
	bl puts	 #
.LVL31:
	.loc 1 110 0
	li 3,0	 #,
	bl exit	 #
.LVL32:
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.comm	bss_value,4,4
	.globl data_value
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"0123456789abcdef"
	.zero	3
.LC1:
	.string	"Hello World! "
	.zero	2
.LC2:
	.string	" This architecture is powerpc-elf\n"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.long	-1414661426
	.section	".text"
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
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	.LVL7
	.4byte	0x67
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	.LVL12
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x167
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
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
	.sleb128 -40
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
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL30
	.4byte	0x16e
	.4byte	0x257
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL31
	.4byte	0x115
	.4byte	0x273
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
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
	.4byte	data_value
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
	.4byte	bss_value
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
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-1-.Ltext0
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
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
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
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
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
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -25
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE5-.Ltext0
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
.LASF18:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF17:
	.string	"powerpc-elf.c"
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
