	.set noreorder
	.set volatile
	.set noat
 # GNU C (GCC) version 4.7.2 (alpha-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -nostdinc alpha-elf.c -auxbase-strip alpha-elf.s -g -O
 # -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
 # -fzero-initialized-in-bss -mfloat-ieee -mfp-regs -mlarge-data
 # -mlarge-text -mlong-double-64

	.text
$Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl null
	.ent null
$null..ng:
null:
	.frame $30,0,$26,0
$LFB0:
	.file 1 "alpha-elf.c"
	.loc 1 2 0
	.cfi_startproc
	.prologue 0
	ret $31,($26),1
	.cfi_endproc
$LFE0:
	.end null
	.align 2
	.globl return_zero
	.ent return_zero
$return_zero..ng:
return_zero:
	.frame $30,0,$26,0
$LFB1:
	.loc 1 7 0
	.cfi_startproc
	.loc 1 7 0
	.prologue 0
	.loc 1 9 0
	mov $31,$0	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE1:
	.end return_zero
	.align 2
	.globl return_one
	.ent return_one
$return_one..ng:
return_one:
	.frame $30,0,$26,0
$LFB2:
	.loc 1 12 0
	.cfi_startproc
	.prologue 0
	.loc 1 14 0
	lda $0,1($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE2:
	.end return_one
	.align 2
	.globl return_int_size
	.ent return_int_size
$return_int_size..ng:
return_int_size:
	.frame $30,0,$26,0
$LFB3:
	.loc 1 17 0
	.cfi_startproc
	.prologue 0
	.loc 1 19 0
	lda $0,4($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE3:
	.end return_int_size
	.align 2
	.globl return_pointer_size
	.ent return_pointer_size
$return_pointer_size..ng:
return_pointer_size:
	.frame $30,0,$26,0
$LFB4:
	.loc 1 22 0
	.cfi_startproc
	.prologue 0
	.loc 1 24 0
	lda $0,8($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE4:
	.end return_pointer_size
	.align 2
	.globl return_short_size
	.ent return_short_size
$return_short_size..ng:
return_short_size:
	.frame $30,0,$26,0
$LFB5:
	.loc 1 27 0
	.cfi_startproc
	.prologue 0
	.loc 1 29 0
	lda $0,2($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE5:
	.end return_short_size
	.align 2
	.globl return_long_size
	.ent return_long_size
$return_long_size..ng:
return_long_size:
	.frame $30,0,$26,0
$LFB6:
	.loc 1 32 0
	.cfi_startproc
	.prologue 0
	.loc 1 34 0
	lda $0,8($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE6:
	.end return_long_size
	.align 2
	.globl return_short
	.ent return_short
$return_short..ng:
return_short:
	.frame $30,0,$26,0
$LFB7:
	.loc 1 37 0
	.cfi_startproc
	.prologue 0
	.loc 1 39 0
	lda $0,30600($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE7:
	.end return_short
	.align 2
	.globl return_long
	.ent return_long
$return_long..ng:
return_long:
	.frame $30,0,$26,0
$LFB8:
	.loc 1 42 0
	.cfi_startproc
	.prologue 0
	.loc 1 43 0
	ldah $0,30601($31)	 # <retval>,
	lda $0,-26198($0)	 # <retval>,, <retval>
	.loc 1 44 0
	ret $31,($26),1
	.cfi_endproc
$LFE8:
	.end return_long
	.align 2
	.globl return_short_upper
	.ent return_short_upper
$return_short_upper..ng:
return_short_upper:
	.frame $30,0,$26,0
$LFB9:
	.loc 1 47 0
	.cfi_startproc
	.prologue 0
	.loc 1 49 0
	lda $0,-18($31)	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE9:
	.end return_short_upper
	.align 2
	.globl return_long_upper
	.ent return_long_upper
$return_long_upper..ng:
return_long_upper:
	.frame $30,0,$26,0
$LFB10:
	.loc 1 52 0
	.cfi_startproc
	.prologue 0
	.loc 1 53 0
	ldah $0,16380($31)	 # <retval>,
	lda $0,-18573($0)	 # <retval>,, <retval>
	s4addq $0,0,$0	 #, <retval>, <retval>
	.loc 1 54 0
	ret $31,($26),1
	.cfi_endproc
$LFE10:
	.end return_long_upper
	.align 2
	.globl return_arg1
	.ent return_arg1
$return_arg1..ng:
return_arg1:
	.frame $30,0,$26,0
$LFB11:
	.loc 1 57 0
	.cfi_startproc
$LVL0:
	.prologue 0
	.loc 1 59 0
	mov $16,$0	 # a,
	ret $31,($26),1
	.cfi_endproc
$LFE11:
	.end return_arg1
	.align 2
	.globl return_arg2
	.ent return_arg2
$return_arg2..ng:
return_arg2:
	.frame $30,0,$26,0
$LFB12:
	.loc 1 62 0
	.cfi_startproc
$LVL1:
	.prologue 0
	.loc 1 64 0
	mov $17,$0	 # b,
	ret $31,($26),1
	.cfi_endproc
$LFE12:
	.end return_arg2
	.align 2
	.globl add
	.ent add
$add..ng:
add:
	.frame $30,0,$26,0
$LFB13:
	.loc 1 67 0
	.cfi_startproc
$LVL2:
	.prologue 0
	.loc 1 68 0
	addl $16,$17,$0	 # a, b, tmp75
	.loc 1 69 0
	ret $31,($26),1
	.cfi_endproc
$LFE13:
	.end add
	.align 2
	.globl add3
	.ent add3
$add3..ng:
add3:
	.frame $30,0,$26,0
$LFB14:
	.loc 1 72 0
	.cfi_startproc
$LVL3:
	.prologue 0
	.loc 1 73 0
	addl $16,$17,$17	 # a, b, tmp77
$LVL4:
	addl $17,$18,$0	 # tmp77, c, tmp78
	.loc 1 74 0
	ret $31,($26),1
	.cfi_endproc
$LFE14:
	.end add3
	.align 2
	.globl add_two
	.ent add_two
$add_two..ng:
add_two:
	.frame $30,0,$26,0
$LFB15:
	.loc 1 77 0
	.cfi_startproc
$LVL5:
	.prologue 0
	.loc 1 78 0
	addl $16,2,$0	 # a,, tmp74
	.loc 1 79 0
	ret $31,($26),1
	.cfi_endproc
$LFE15:
	.end add_two
	.align 2
	.globl inc
	.ent inc
$inc..ng:
inc:
	.frame $30,0,$26,0
$LFB16:
	.loc 1 82 0
	.cfi_startproc
$LVL6:
	.prologue 0
$LVL7:
	.loc 1 83 0
	addl $16,1,$0	 # a,, tmp74
	.loc 1 84 0
	ret $31,($26),1
	.cfi_endproc
$LFE16:
	.end inc
	.align 2
	.globl or
	.ent or
$or..ng:
or:
	.frame $30,0,$26,0
$LFB17:
	.loc 1 87 0
	.cfi_startproc
$LVL8:
	.prologue 0
	.loc 1 88 0
	bis $17,$16,$0	 # b, a, tmp76
	.loc 1 89 0
	ret $31,($26),1
	.cfi_endproc
$LFE17:
	.end or
	.align 2
	.globl or_one
	.ent or_one
$or_one..ng:
or_one:
	.frame $30,0,$26,0
$LFB18:
	.loc 1 92 0
	.cfi_startproc
$LVL9:
	.prologue 0
	.loc 1 93 0
	bis $16,1,$0	 # a,, tmp75
	.loc 1 94 0
	ret $31,($26),1
	.cfi_endproc
$LFE18:
	.end or_one
	.align 2
	.globl load
	.ent load
$load..ng:
load:
	.frame $30,0,$26,0
$LFB19:
	.loc 1 97 0
	.cfi_startproc
$LVL10:
	.prologue 0
	.loc 1 98 0
	ldl $0,0($16)	 #, *p_1(D)
	addl $31,$0,$0	 # *p_1(D), D.1096
	.loc 1 99 0
	ret $31,($26),1
	.cfi_endproc
$LFE19:
	.end load
	.align 2
	.globl store
	.ent store
$store..ng:
store:
	.frame $30,0,$26,0
$LFB20:
	.loc 1 102 0
	.cfi_startproc
$LVL11:
	.prologue 0
	.loc 1 103 0
	lda $1,255($31)	 # tmp71,
	stl $1,0($16)	 # tmp71, *p_1(D)
	ret $31,($26),1
	.cfi_endproc
$LFE20:
	.end store
	.align 2
	.globl load_long
	.ent load_long
$load_long..ng:
load_long:
	.frame $30,0,$26,0
$LFB21:
	.loc 1 107 0
	.cfi_startproc
$LVL12:
	.prologue 0
	.loc 1 108 0
	ldq $0,0($16)	 # *p_1(D), D.1094
	.loc 1 109 0
	ret $31,($26),1
	.cfi_endproc
$LFE21:
	.end load_long
	.align 2
	.globl store_long
	.ent store_long
$store_long..ng:
store_long:
	.frame $30,0,$26,0
$LFB22:
	.loc 1 112 0
	.cfi_startproc
$LVL13:
	.prologue 0
	.loc 1 113 0
	ldah $1,4386($31)	 # tmp71,
	lda $1,13124($1)	 # tmp71,, tmp71
	stq $1,0($16)	 # *p_1(D), tmp71
	ret $31,($26),1
	.cfi_endproc
$LFE22:
	.end store_long
	.align 2
	.globl member
	.ent member
$member..ng:
member:
	.frame $30,0,$26,0
$LFB23:
	.loc 1 123 0
	.cfi_startproc
$LVL14:
	.prologue 0
	.loc 1 124 0
	lda $1,1($31)	 # tmp73,
	stl $1,4($16)	 # tmp73, p_1(D)->b
	.loc 1 125 0
	ldl $0,8($16)	 # p_1(D)->c, p_1(D)->c
	.loc 1 126 0
	ret $31,($26),1
	.cfi_endproc
$LFE23:
	.end member
	.align 2
	.globl get_static_value_addr
	.ent get_static_value_addr
get_static_value_addr:
	.frame $30,0,$26,0
$LFB24:
	.loc 1 132 0
	.cfi_startproc
	ldgp $29,0($27)	 #,
$get_static_value_addr..ng:
	.prologue 1
	.loc 1 134 0
	lda $0,static_value	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE24:
	.end get_static_value_addr
	.align 2
	.globl get_static_value
	.ent get_static_value
get_static_value:
	.frame $30,0,$26,0
$LFB25:
	.loc 1 137 0
	.cfi_startproc
	ldgp $29,0($27)	 #,
$get_static_value..ng:
	.prologue 1
	.loc 1 138 0
	lda $1,static_value	 # tmp73,
	ldl $0,0($1)	 # static_value, static_value
	.loc 1 139 0
	ret $31,($26),1
	.cfi_endproc
$LFE25:
	.end get_static_value
	.align 2
	.globl set_static_value
	.ent set_static_value
set_static_value:
	.frame $30,0,$26,0
$LFB26:
	.loc 1 142 0
	.cfi_startproc
$LVL15:
	ldgp $29,0($27)	 #,
$set_static_value..ng:
	.prologue 1
	.loc 1 143 0
	lda $1,static_value	 # tmp71,
	stl $16,0($1)	 # a, static_value
	ret $31,($26),1
	.cfi_endproc
$LFE26:
	.end set_static_value
	.align 2
	.globl set_stack
	.ent set_stack
$set_stack..ng:
set_stack:
	.frame $30,16,$26,0
$LFB27:
	.loc 1 149 0
	.cfi_startproc
	lda $30,-16($30)	 #,,
$LCFI0:
	.cfi_def_cfa_offset 16
	.prologue 0
	.loc 1 150 0
	lda $1,254($31)	 # tmp70,
	stl $1,0($30)	 # tmp70, a
$LVL16:
	.loc 1 151 0
	lda $1,255($31)	 # tmp71,
	stl $1,4($30)	 # tmp71, b
$LVL17:
	.loc 1 152 0
	lda $30,16($30)	 #,,
$LCFI1:
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE27:
	.end set_stack
	.align 2
	.globl use_stack
	.ent use_stack
$use_stack..ng:
use_stack:
	.frame $30,16,$26,0
$LFB28:
	.loc 1 155 0
	.cfi_startproc
	lda $30,-16($30)	 #,,
$LCFI2:
	.cfi_def_cfa_offset 16
	.prologue 0
	.loc 1 156 0
	lda $1,254($31)	 # tmp74,
	stl $1,0($30)	 # tmp74, a
$LVL18:
	.loc 1 157 0
	lda $1,255($31)	 # tmp75,
	stl $1,4($30)	 # tmp75, b
$LVL19:
	.loc 1 158 0
	ldl $0,0($30)	 #, a
	ldl $1,4($30)	 #, b
	addl $0,$1,$0	 # a, b, tmp81
	.loc 1 159 0
	lda $30,16($30)	 #,,
$LCFI3:
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE28:
	.end use_stack
	.align 2
	.globl call_self
	.ent call_self
call_self:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB29:
	.loc 1 162 0
	.cfi_startproc
	ldgp $29,0($27)	 #,
$call_self..ng:
	lda $30,-16($30)	 #,,
$LCFI4:
	.cfi_def_cfa_offset 16
	stq $26,0($30)	 #,
	.cfi_offset 26, -16
	.prologue 1
	.loc 1 163 0
	jsr $26,call_self	 #
	ldgp $29,0($26)
$LVL20:
	.loc 1 164 0
	ldq $26,0($30)	 #,
	lda $30,16($30)	 #,,
$LCFI5:
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE29:
	.end call_self
	.align 2
	.globl call_simple
	.ent call_simple
call_simple:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB30:
	.loc 1 167 0
	.cfi_startproc
$LVL21:
	ldgp $29,0($27)	 #,
$call_simple..ng:
	lda $30,-16($30)	 #,,
$LCFI6:
	.cfi_def_cfa_offset 16
	stq $26,0($30)	 #,
	.cfi_offset 26, -16
	.prologue 1
	.loc 1 168 0
	jsr $26,return_arg1	 #
	ldgp $29,0($26)
$LVL22:
	.loc 1 169 0
	ldq $26,0($30)	 #,
	lda $30,16($30)	 #,,
$LCFI7:
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE30:
	.end call_simple
	.align 2
	.globl call_complex1
	.ent call_complex1
call_complex1:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB31:
	.loc 1 172 0
	.cfi_startproc
	ldgp $29,0($27)	 #,
$call_complex1..ng:
	lda $30,-16($30)	 #,,
$LCFI8:
	.cfi_def_cfa_offset 16
	stq $26,0($30)	 #,
	.cfi_offset 26, -16
	.prologue 1
	.loc 1 173 0
	lda $16,254($31)	 #,
	jsr $26,return_arg1	 #
	ldgp $29,0($26)
$LVL23:
	addl $0,1,$0	 # tmp73,, tmp76
	.loc 1 174 0
	ldq $26,0($30)	 #,
	lda $30,16($30)	 #,,
$LCFI9:
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE31:
	.end call_complex1
	.align 2
	.globl call_complex2
	.ent call_complex2
call_complex2:
	.frame $30,16,$26,0
	.mask 0x4000200,-16
$LFB32:
	.loc 1 177 0
	.cfi_startproc
$LVL24:
	ldgp $29,0($27)	 #,
$call_complex2..ng:
	lda $30,-16($30)	 #,,
$LCFI10:
	.cfi_def_cfa_offset 16
	stq $26,0($30)	 #,
	stq $9,8($30)	 #,
	.cfi_offset 26, -16
	.cfi_offset 9, -8
	.prologue 1
	mov $17,$9	 # b, b
	.loc 1 178 0
	mov $17,$16	 # b,
$LVL25:
	jsr $26,return_arg1	 #
	ldgp $29,0($26)
$LVL26:
	lda $1,static_value	 # tmp76,
	stl $0,0($1)	 # tmp74, static_value
	.loc 1 180 0
	mov $9,$0	 # b,
	ldq $26,0($30)	 #,
	ldq $9,8($30)	 #,
	lda $30,16($30)	 #,,
$LCFI11:
	.cfi_restore 9
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE32:
	.end call_complex2
	.align 2
	.globl call_pointer
	.ent call_pointer
call_pointer:
	.frame $30,16,$26,0
	.mask 0x4000000,-16
$LFB33:
	.loc 1 183 0
	.cfi_startproc
$LVL27:
	ldgp $29,0($27)	 #,
$call_pointer..ng:
	lda $30,-16($30)	 #,,
$LCFI12:
	.cfi_def_cfa_offset 16
	stq $26,0($30)	 #,
	.cfi_offset 26, -16
	.prologue 1
	.loc 1 184 0
	mov $16,$27	 # f,
	jsr $26,($27),0
	ldgp $29,0($26)
$LVL28:
	.loc 1 185 0
	ldq $26,0($30)	 #,
	lda $30,16($30)	 #,,
$LCFI13:
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE33:
	.end call_pointer
	.align 2
	.globl condition
	.ent condition
$condition..ng:
condition:
	.frame $30,0,$26,0
$LFB34:
	.loc 1 188 0
	.cfi_startproc
$LVL29:
	.prologue 0
	.loc 1 189 0
	subq $16,$17,$16	 # a, b, tmp74
$LVL30:
	.loc 1 190 0
	cmoveq $16,1,$17	 #, tmp74,, b
$LVL31:
	.loc 1 191 0
	addl $17,1,$0	 # b,, tmp76
	.loc 1 192 0
	ret $31,($26),1
	.cfi_endproc
$LFE34:
	.end condition
	.align 2
	.globl loop
	.ent loop
$loop..ng:
loop:
	.frame $30,0,$26,0
$LFB35:
	.loc 1 195 0
	.cfi_startproc
$LVL32:
	.prologue 0
$LVL33:
	.loc 1 196 0
	mov $31,$0	 #, sum
	.loc 1 197 0
	ble $16,$L39	 #, n,
	.loc 1 197 0 is_stmt 0 discriminator 2
	mov $31,$1	 #, i
$LVL34:
$L40:
	.loc 1 198 0 is_stmt 1 discriminator 2
	addl $0,$1,$0	 # sum, i, sum
	.loc 1 197 0 discriminator 2
	addl $1,1,$1	 # i,, i
	cmpeq $1,$16,$2	 #, i, n, tmp78
	beq $2,$L40	 #, tmp78,
$L39:
	.loc 1 200 0
	ret $31,($26),1
	.cfi_endproc
$LFE35:
	.end loop
	.align 2
	.globl many_args
	.ent many_args
$many_args..ng:
many_args:
	.frame $30,0,$26,0
$LFB36:
	.loc 1 204 0
	.cfi_startproc
$LVL35:
	.prologue 0
	.loc 1 205 0
	addl $16,$19,$19	 # a0, a3, tmp83
$LVL36:
	addl $19,$21,$21	 # tmp83, a5, tmp84
$LVL37:
	ldl $1,8($30)	 # a7, a7
	addl $21,$1,$0	 # tmp84, a7, tmp85
	.loc 1 206 0
	ret $31,($26),1
	.cfi_endproc
$LFE36:
	.end many_args
	.align 2
	.globl call_many_args
	.ent call_many_args
call_many_args:
	.frame $30,32,$26,0
	.mask 0x4000000,-16
$LFB37:
	.loc 1 209 0
	.cfi_startproc
	ldgp $29,0($27)	 #,
$call_many_args..ng:
	lda $30,-32($30)	 #,,
$LCFI14:
	.cfi_def_cfa_offset 32
	stq $26,16($30)	 #,
	.cfi_offset 26, -16
	.prologue 1
	.loc 1 210 0
	lda $1,6($31)	 # tmp72,
	stq $1,0($30)	 #, tmp72
	lda $1,7($31)	 # tmp73,
	stq $1,8($30)	 #, tmp73
	mov $31,$16	 #,
	lda $17,1($31)	 #,
	lda $18,2($31)	 #,
	lda $19,3($31)	 #,
	lda $20,4($31)	 #,
	lda $21,5($31)	 #,
	jsr $26,many_args	 #
	ldgp $29,0($26)
$LVL38:
	.loc 1 211 0
	ldq $26,16($30)	 #,
	lda $30,32($30)	 #,,
$LCFI15:
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret $31,($26),1
	.cfi_endproc
$LFE37:
	.end call_many_args
	.align 2
	.globl direct
	.ent direct
$direct..ng:
direct:
	.frame $30,0,$26,0
$LFB38:
	.loc 1 215 0
	.cfi_startproc
	.prologue 0
	.loc 1 216 0
 # 216 "alpha-elf.c" 1
	nop
 # 0 "" 2
	ret $31,($26),1
	.cfi_endproc
$LFE38:
	.end direct
	.align 2
	.globl binary
	.ent binary
$binary..ng:
binary:
	.frame $30,0,$26,0
$LFB39:
	.loc 1 223 0
	.cfi_startproc
	.prologue 0
	.loc 1 224 0
 # 224 "alpha-elf.c" 1
	.align 4
 # 0 "" 2
	.loc 1 225 0
 # 225 "alpha-elf.c" 1
	.int 0x0
 # 0 "" 2
	ret $31,($26),1
	.cfi_endproc
$LFE39:
	.end binary
	.align 2
	.globl main
	.ent main
$main..ng:
main:
	.frame $30,0,$26,0
$LFB40:
	.loc 1 231 0
	.cfi_startproc
	.prologue 0
	.loc 1 233 0
	mov $31,$0	 #,
	ret $31,($26),1
	.cfi_endproc
$LFE40:
	.end main
	.globl static_long
	.section	.sdata,"aws",@progbits
	.align 3
	.type	static_long, @object
	.size	static_long, 8
static_long:
	.quad	305419896
	.globl static_value
	.align 2
	.type	static_value, @object
	.size	static_value, 4
static_value:
	.long	10
	.text
$Letext0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x8c5
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	$LASF42
	.byte	0x1
	.4byte	$LASF43
	.4byte	$LASF44
	.8byte	$Ltext0
	.8byte	$Letext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF45
	.byte	0xc
	.byte	0x1
	.byte	0x74
	.4byte	0x5e
	.uleb128 0x3
	.ascii "a\0"
	.byte	0x1
	.byte	0x75
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.ascii "b\0"
	.byte	0x1
	.byte	0x76
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.ascii "c\0"
	.byte	0x1
	.byte	0x77
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x5
	.byte	0x1
	.4byte	$LASF36
	.byte	0x1
	.byte	0x1
	.8byte	$LFB0
	.8byte	$LFE0
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF0
	.byte	0x1
	.byte	0x6
	.4byte	0x5e
	.8byte	$LFB1
	.8byte	$LFE1
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF1
	.byte	0x1
	.byte	0xb
	.4byte	0x5e
	.8byte	$LFB2
	.8byte	$LFE2
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF2
	.byte	0x1
	.byte	0x10
	.4byte	0x5e
	.8byte	$LFB3
	.8byte	$LFE3
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF3
	.byte	0x1
	.byte	0x15
	.4byte	0x5e
	.8byte	$LFB4
	.8byte	$LFE4
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0x5e
	.8byte	$LFB5
	.8byte	$LFE5
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF5
	.byte	0x1
	.byte	0x1f
	.4byte	0x5e
	.8byte	$LFB6
	.8byte	$LFE6
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF6
	.byte	0x1
	.byte	0x24
	.4byte	0x161
	.8byte	$LFB7
	.8byte	$LFE7
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	$LASF7
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF8
	.byte	0x1
	.byte	0x29
	.4byte	0x188
	.8byte	$LFB8
	.8byte	$LFE8
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	$LASF9
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF10
	.byte	0x1
	.byte	0x2e
	.4byte	0x161
	.8byte	$LFB9
	.8byte	$LFE9
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF11
	.byte	0x1
	.byte	0x33
	.4byte	0x188
	.8byte	$LFB10
	.8byte	$LFE10
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF12
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB11
	.8byte	$LFE11
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x200
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x38
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF13
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB12
	.8byte	$LFE12
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x23c
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x3d
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0x9
	.ascii "b\0"
	.byte	0x1
	.byte	0x3d
	.4byte	0x5e
	.byte	0x1
	.byte	0x61
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "add\0"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB13
	.8byte	$LFE13
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x278
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x42
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0x9
	.ascii "b\0"
	.byte	0x1
	.byte	0x42
	.4byte	0x5e
	.byte	0x1
	.byte	0x61
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF14
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB14
	.8byte	$LFE14
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x2c1
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x47
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0x47
	.4byte	0x5e
	.4byte	$LLST0
	.uleb128 0x9
	.ascii "c\0"
	.byte	0x1
	.byte	0x47
	.4byte	0x5e
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB15
	.8byte	$LFE15
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x2f2
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x4c
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "inc\0"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB16
	.8byte	$LFE16
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x325
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0x51
	.4byte	0x5e
	.4byte	$LLST1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii "or\0"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB17
	.8byte	$LFE17
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x360
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x56
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0x9
	.ascii "b\0"
	.byte	0x1
	.byte	0x56
	.4byte	0x5e
	.byte	0x1
	.byte	0x61
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB18
	.8byte	$LFE18
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x391
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x5b
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF17
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB19
	.8byte	$LFE19
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x3c2
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x60
	.4byte	0x3c2
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x3c8
	.uleb128 0xd
	.4byte	0x5e
	.uleb128 0xe
	.byte	0x1
	.4byte	$LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.8byte	$LFB20
	.8byte	$LFE20
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x3fa
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x65
	.4byte	0x3c2
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF18
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x188
	.8byte	$LFB21
	.8byte	$LFE21
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x42b
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x6a
	.4byte	0x42b
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x431
	.uleb128 0xd
	.4byte	0x188
	.uleb128 0xe
	.byte	0x1
	.4byte	$LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.8byte	$LFB22
	.8byte	$LFE22
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x463
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x6f
	.4byte	0x42b
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF21
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB23
	.8byte	$LFE23
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x494
	.uleb128 0x9
	.ascii "p\0"
	.byte	0x1
	.byte	0x7a
	.4byte	0x494
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x2d
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF22
	.byte	0x1
	.byte	0x83
	.4byte	0x4ba
	.8byte	$LFB24
	.8byte	$LFE24
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.byte	0x8
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF23
	.byte	0x1
	.byte	0x88
	.4byte	0x5e
	.8byte	$LFB25
	.8byte	$LFE25
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	$LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.8byte	$LFB26
	.8byte	$LFE26
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x50d
	.uleb128 0x9
	.ascii "a\0"
	.byte	0x1
	.byte	0x8d
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	$LASF26
	.byte	0x1
	.byte	0x94
	.8byte	$LFB27
	.8byte	$LFE27
	.4byte	$LLST2
	.byte	0x1
	.4byte	0x547
	.uleb128 0x10
	.ascii "a\0"
	.byte	0x1
	.byte	0x96
	.4byte	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii "b\0"
	.byte	0x1
	.byte	0x97
	.4byte	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	$LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x5e
	.8byte	$LFB28
	.8byte	$LFE28
	.4byte	$LLST3
	.byte	0x1
	.4byte	0x585
	.uleb128 0x10
	.ascii "a\0"
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.ascii "b\0"
	.byte	0x1
	.byte	0x9d
	.4byte	0x3c8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	$LASF27
	.byte	0x1
	.byte	0xa1
	.8byte	$LFB29
	.8byte	$LFE29
	.4byte	$LLST4
	.byte	0x1
	.4byte	0x5b4
	.uleb128 0x12
	.8byte	$LVL20
	.4byte	0x585
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	$LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB30
	.8byte	$LFE30
	.4byte	$LLST5
	.byte	0x1
	.4byte	0x5f5
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0xa6
	.4byte	0x5e
	.4byte	$LLST6
	.uleb128 0x12
	.8byte	$LVL22
	.4byte	0x1cf
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	$LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x5e
	.8byte	$LFB31
	.8byte	$LFE31
	.4byte	$LLST7
	.byte	0x1
	.4byte	0x62f
	.uleb128 0x14
	.8byte	$LVL23
	.4byte	0x1cf
	.uleb128 0x15
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	$LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB32
	.8byte	$LFE32
	.4byte	$LLST8
	.byte	0x1
	.4byte	0x684
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0xb0
	.4byte	0x5e
	.4byte	$LLST9
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0xb0
	.4byte	0x5e
	.4byte	$LLST10
	.uleb128 0x14
	.8byte	$LVL26
	.4byte	0x1cf
	.uleb128 0x15
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	$LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.8byte	$LFB33
	.8byte	$LFE33
	.4byte	$LLST11
	.byte	0x1
	.4byte	0x6c1
	.uleb128 0xb
	.ascii "f\0"
	.byte	0x1
	.byte	0xb6
	.4byte	0x6c7
	.4byte	$LLST12
	.uleb128 0x17
	.8byte	$LVL28
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	0x5e
	.uleb128 0xc
	.byte	0x8
	.4byte	0x6c1
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB34
	.8byte	$LFE34
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x70d
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0xbb
	.4byte	0x5e
	.4byte	$LLST13
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0xbb
	.4byte	0x5e
	.4byte	$LLST14
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF33
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB35
	.8byte	$LFE35
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x75a
	.uleb128 0x9
	.ascii "n\0"
	.byte	0x1
	.byte	0xc2
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0x19
	.ascii "i\0"
	.byte	0x1
	.byte	0xc4
	.4byte	0x5e
	.4byte	$LLST15
	.uleb128 0x19
	.ascii "sum\0"
	.byte	0x1
	.byte	0xc4
	.4byte	0x5e
	.4byte	$LLST15
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	$LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x5e
	.8byte	$LFB36
	.8byte	$LFE36
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.4byte	0x7e6
	.uleb128 0x9
	.ascii "a0\0"
	.byte	0x1
	.byte	0xca
	.4byte	0x5e
	.byte	0x1
	.byte	0x60
	.uleb128 0x9
	.ascii "a1\0"
	.byte	0x1
	.byte	0xca
	.4byte	0x5e
	.byte	0x1
	.byte	0x61
	.uleb128 0x9
	.ascii "a2\0"
	.byte	0x1
	.byte	0xca
	.4byte	0x5e
	.byte	0x1
	.byte	0x62
	.uleb128 0xb
	.ascii "a3\0"
	.byte	0x1
	.byte	0xca
	.4byte	0x5e
	.4byte	$LLST17
	.uleb128 0x9
	.ascii "a4\0"
	.byte	0x1
	.byte	0xcb
	.4byte	0x5e
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.ascii "a5\0"
	.byte	0x1
	.byte	0xcb
	.4byte	0x5e
	.4byte	$LLST18
	.uleb128 0x9
	.ascii "a6\0"
	.byte	0x1
	.byte	0xcb
	.4byte	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "a7\0"
	.byte	0x1
	.byte	0xcb
	.4byte	0x5e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	$LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x5e
	.8byte	$LFB37
	.8byte	$LFE37
	.4byte	$LLST19
	.byte	0x1
	.4byte	0x844
	.uleb128 0x14
	.8byte	$LVL38
	.4byte	0x75a
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x2
	.byte	0x8e
	.sleb128 8
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	$LASF37
	.byte	0x1
	.byte	0xd6
	.8byte	$LFB38
	.8byte	$LFE38
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	$LASF38
	.byte	0x1
	.byte	0xde
	.8byte	$LFB39
	.8byte	$LFE39
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	$LASF39
	.byte	0x1
	.byte	0xe6
	.4byte	0x5e
	.8byte	$LFB40
	.8byte	$LFE40
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.4byte	$LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x5e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.8byte	static_value
	.uleb128 0x1a
	.4byte	$LASF41
	.byte	0x1
	.byte	0x81
	.4byte	0x188
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.8byte	static_long
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
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_loc,"",@progbits
$Ldebug_loc0:
$LLST0:
	.8byte	$LVL3-$Ltext0
	.8byte	$LVL4-$Ltext0
	.2byte	0x1
	.byte	0x61
	.8byte	$LVL4-$Ltext0
	.8byte	$LFE14-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x61
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST1:
	.8byte	$LVL6-$Ltext0
	.8byte	$LVL7-$Ltext0
	.2byte	0x1
	.byte	0x60
	.8byte	$LVL7-$Ltext0
	.8byte	$LFE16-$Ltext0
	.2byte	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST2:
	.8byte	$LFB27-$Ltext0
	.8byte	$LCFI0-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI0-$Ltext0
	.8byte	$LCFI1-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI1-$Ltext0
	.8byte	$LFE27-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST3:
	.8byte	$LFB28-$Ltext0
	.8byte	$LCFI2-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI2-$Ltext0
	.8byte	$LCFI3-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI3-$Ltext0
	.8byte	$LFE28-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST4:
	.8byte	$LFB29-$Ltext0
	.8byte	$LCFI4-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI4-$Ltext0
	.8byte	$LCFI5-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI5-$Ltext0
	.8byte	$LFE29-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST5:
	.8byte	$LFB30-$Ltext0
	.8byte	$LCFI6-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI6-$Ltext0
	.8byte	$LCFI7-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI7-$Ltext0
	.8byte	$LFE30-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST6:
	.8byte	$LVL21-$Ltext0
	.8byte	$LVL22-1-$Ltext0
	.2byte	0x1
	.byte	0x60
	.8byte	$LVL22-1-$Ltext0
	.8byte	$LFE30-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST7:
	.8byte	$LFB31-$Ltext0
	.8byte	$LCFI8-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI8-$Ltext0
	.8byte	$LCFI9-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI9-$Ltext0
	.8byte	$LFE31-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST8:
	.8byte	$LFB32-$Ltext0
	.8byte	$LCFI10-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI10-$Ltext0
	.8byte	$LCFI11-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI11-$Ltext0
	.8byte	$LFE32-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST9:
	.8byte	$LVL24-$Ltext0
	.8byte	$LVL25-$Ltext0
	.2byte	0x1
	.byte	0x60
	.8byte	$LVL25-$Ltext0
	.8byte	$LFE32-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST10:
	.8byte	$LVL24-$Ltext0
	.8byte	$LVL26-1-$Ltext0
	.2byte	0x1
	.byte	0x61
	.8byte	$LVL26-1-$Ltext0
	.8byte	$LFE32-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x61
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST11:
	.8byte	$LFB33-$Ltext0
	.8byte	$LCFI12-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI12-$Ltext0
	.8byte	$LCFI13-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.8byte	$LCFI13-$Ltext0
	.8byte	$LFE33-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
$LLST12:
	.8byte	$LVL27-$Ltext0
	.8byte	$LVL28-1-$Ltext0
	.2byte	0x1
	.byte	0x60
	.8byte	$LVL28-1-$Ltext0
	.8byte	$LFE33-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST13:
	.8byte	$LVL29-$Ltext0
	.8byte	$LVL30-$Ltext0
	.2byte	0x1
	.byte	0x60
	.8byte	$LVL30-$Ltext0
	.8byte	$LFE34-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST14:
	.8byte	$LVL29-$Ltext0
	.8byte	$LVL31-$Ltext0
	.2byte	0x1
	.byte	0x61
	.8byte	$LVL31-$Ltext0
	.8byte	$LFE34-$Ltext0
	.2byte	0x1
	.byte	0x61
	.8byte	0
	.8byte	0
$LLST15:
	.8byte	$LVL33-$Ltext0
	.8byte	$LVL34-$Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST17:
	.8byte	$LVL35-$Ltext0
	.8byte	$LVL36-$Ltext0
	.2byte	0x1
	.byte	0x63
	.8byte	$LVL36-$Ltext0
	.8byte	$LFE36-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x63
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST18:
	.8byte	$LVL35-$Ltext0
	.8byte	$LVL37-$Ltext0
	.2byte	0x1
	.byte	0x65
	.8byte	$LVL37-$Ltext0
	.8byte	$LFE36-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.8byte	0
	.8byte	0
$LLST19:
	.8byte	$LFB37-$Ltext0
	.8byte	$LCFI14-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	$LCFI14-$Ltext0
	.8byte	$LCFI15-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.8byte	$LCFI15-$Ltext0
	.8byte	$LFE37-$Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	$Ltext0
	.8byte	$Letext0-$Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF11:
	.ascii "return_long_upper\0"
$LASF29:
	.ascii "call_complex1\0"
$LASF34:
	.ascii "many_args\0"
$LASF44:
	.ascii "/home/hiroaki/cross2-gcc4/sample\0"
$LASF40:
	.ascii "static_value\0"
$LASF12:
	.ascii "return_arg1\0"
$LASF13:
	.ascii "return_arg2\0"
$LASF17:
	.ascii "load\0"
$LASF23:
	.ascii "get_static_value\0"
$LASF36:
	.ascii "null\0"
$LASF8:
	.ascii "return_long\0"
$LASF18:
	.ascii "load_long\0"
$LASF14:
	.ascii "add3\0"
$LASF33:
	.ascii "loop\0"
$LASF31:
	.ascii "call_pointer\0"
$LASF5:
	.ascii "return_long_size\0"
$LASF37:
	.ascii "direct\0"
$LASF41:
	.ascii "static_long\0"
$LASF16:
	.ascii "or_one\0"
$LASF10:
	.ascii "return_short_upper\0"
$LASF1:
	.ascii "return_one\0"
$LASF35:
	.ascii "call_many_args\0"
$LASF32:
	.ascii "condition\0"
$LASF4:
	.ascii "return_short_size\0"
$LASF21:
	.ascii "member\0"
$LASF39:
	.ascii "main\0"
$LASF6:
	.ascii "return_short\0"
$LASF38:
	.ascii "binary\0"
$LASF3:
	.ascii "return_pointer_size\0"
$LASF30:
	.ascii "call_complex2\0"
$LASF45:
	.ascii "structure\0"
$LASF2:
	.ascii "return_int_size\0"
$LASF25:
	.ascii "use_stack\0"
$LASF20:
	.ascii "store_long\0"
$LASF42:
	.ascii "GNU C 4.7.2\0"
$LASF27:
	.ascii "call_self\0"
$LASF26:
	.ascii "set_stack\0"
$LASF7:
	.ascii "short int\0"
$LASF15:
	.ascii "add_two\0"
$LASF28:
	.ascii "call_simple\0"
$LASF19:
	.ascii "store\0"
$LASF9:
	.ascii "long int\0"
$LASF0:
	.ascii "return_zero\0"
$LASF24:
	.ascii "set_static_value\0"
$LASF22:
	.ascii "get_static_value_addr\0"
$LASF43:
	.ascii "alpha-elf.c\0"
	.ident	"GCC: (GNU) 4.7.2"
