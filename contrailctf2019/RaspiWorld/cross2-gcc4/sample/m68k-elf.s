	.file	"m68k-elf.c"
| GNU C (GCC) version 4.7.2 (m68k-elf)
|	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
| options passed:  -nostdinc m68k-elf.c -mcpu=68020
| -auxbase-strip m68k-elf.s -g -O -Wall -fno-builtin -fverbose-asm
| -fomit-frame-pointer
| options enabled:  -fauto-inc-dec -fbranch-count-reg
| -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
| -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
| -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
| -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime
| -fguess-branch-probability -fident -fif-conversion -fif-conversion2
| -finline -finline-atomics -finline-functions-called-once -fipa-profile
| -fipa-pure-const -fipa-reference -fira-share-save-slots
| -fira-share-spill-slots -fivopts -fkeep-static-consts
| -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
| -fmove-loop-invariants -fomit-frame-pointer -fpeephole
| -fprefetch-loop-arrays -freg-struct-return
| -fsched-critical-path-heuristic -fsched-dep-count-heuristic
| -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
| -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
| -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
| -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
| -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
| -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
| -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
| -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
| -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
| -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
| -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
| -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
| -mbitfield -mstrict-align

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	null
	.type	null, @function
null:
.LFB0:
	.file 1 "m68k-elf.c"
	.loc 1 2 0
	.cfi_startproc
	rts
	.cfi_endproc
.LFE0:
	.size	null, .-null
	.align	2
	.globl	return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
	.loc 1 7 0
	.cfi_startproc
	.loc 1 9 0
	clr.l %d0	|
	rts
	.cfi_endproc
.LFE1:
	.size	return_zero, .-return_zero
	.align	2
	.globl	return_one
	.type	return_one, @function
return_one:
.LFB2:
	.loc 1 12 0
	.cfi_startproc
	.loc 1 14 0
	moveq #1,%d0	|,
	rts
	.cfi_endproc
.LFE2:
	.size	return_one, .-return_one
	.align	2
	.globl	return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
	.loc 1 17 0
	.cfi_startproc
	.loc 1 19 0
	moveq #4,%d0	|,
	rts
	.cfi_endproc
.LFE3:
	.size	return_int_size, .-return_int_size
	.align	2
	.globl	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
	.loc 1 22 0
	.cfi_startproc
	.loc 1 24 0
	moveq #4,%d0	|,
	rts
	.cfi_endproc
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.align	2
	.globl	return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
	.loc 1 27 0
	.cfi_startproc
	.loc 1 29 0
	moveq #2,%d0	|,
	rts
	.cfi_endproc
.LFE5:
	.size	return_short_size, .-return_short_size
	.align	2
	.globl	return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
	.loc 1 32 0
	.cfi_startproc
	.loc 1 34 0
	moveq #4,%d0	|,
	rts
	.cfi_endproc
.LFE6:
	.size	return_long_size, .-return_long_size
	.align	2
	.globl	return_short
	.type	return_short, @function
return_short:
.LFB7:
	.loc 1 37 0
	.cfi_startproc
	.loc 1 39 0
	move.w #30600,%d0	|,
	rts
	.cfi_endproc
.LFE7:
	.size	return_short, .-return_short
	.align	2
	.globl	return_long
	.type	return_long, @function
return_long:
.LFB8:
	.loc 1 42 0
	.cfi_startproc
	.loc 1 44 0
	move.l #2005440938,%d0	|,
	rts
	.cfi_endproc
.LFE8:
	.size	return_long, .-return_long
	.align	2
	.globl	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
	.loc 1 47 0
	.cfi_startproc
	.loc 1 49 0
	moveq #-18,%d0	|,
	rts
	.cfi_endproc
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.align	2
	.globl	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
	.loc 1 52 0
	.cfi_startproc
	.loc 1 54 0
	move.l #-1122868,%d0	|,
	rts
	.cfi_endproc
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.align	2
	.globl	return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	.loc 1 59 0
	move.l 4(%sp),%d0	| a,
	rts
	.cfi_endproc
.LFE11:
	.size	return_arg1, .-return_arg1
	.align	2
	.globl	return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
	.loc 1 62 0
	.cfi_startproc
.LVL1:
	.loc 1 64 0
	move.l 8(%sp),%d0	| b,
	rts
	.cfi_endproc
.LFE12:
	.size	return_arg2, .-return_arg2
	.align	2
	.globl	add
	.type	add, @function
add:
.LFB13:
	.loc 1 67 0
	.cfi_startproc
.LVL2:
	.loc 1 69 0
	move.l 4(%sp),%d0	| a,
	add.l 8(%sp),%d0	| b,
	rts
	.cfi_endproc
.LFE13:
	.size	add, .-add
	.align	2
	.globl	add3
	.type	add3, @function
add3:
.LFB14:
	.loc 1 72 0
	.cfi_startproc
.LVL3:
	.loc 1 73 0
	move.l 4(%sp),%d0	| a, tmp38
	add.l 8(%sp),%d0	| b, tmp38
	.loc 1 74 0
	add.l 12(%sp),%d0	| c,
	rts
	.cfi_endproc
.LFE14:
	.size	add3, .-add3
	.align	2
	.globl	add_two
	.type	add_two, @function
add_two:
.LFB15:
	.loc 1 77 0
	.cfi_startproc
.LVL4:
	.loc 1 79 0
	move.l 4(%sp),%d0	| a,
	addq.l #2,%d0	|,
	rts
	.cfi_endproc
.LFE15:
	.size	add_two, .-add_two
	.align	2
	.globl	inc
	.type	inc, @function
inc:
.LFB16:
	.loc 1 82 0
	.cfi_startproc
.LVL5:
	.loc 1 84 0
	move.l 4(%sp),%d0	| a,
	addq.l #1,%d0	|,
.LVL6:
	rts
	.cfi_endproc
.LFE16:
	.size	inc, .-inc
	.align	2
	.globl	or
	.type	or, @function
or:
.LFB17:
	.loc 1 87 0
	.cfi_startproc
.LVL7:
	.loc 1 89 0
	move.l 8(%sp),%d0	| b,
	or.l 4(%sp),%d0	| a,
	rts
	.cfi_endproc
.LFE17:
	.size	or, .-or
	.align	2
	.globl	or_one
	.type	or_one, @function
or_one:
.LFB18:
	.loc 1 92 0
	.cfi_startproc
.LVL8:
	.loc 1 94 0
	moveq #1,%d0	|,
	or.l 4(%sp),%d0	| a,
	rts
	.cfi_endproc
.LFE18:
	.size	or_one, .-or_one
	.align	2
	.globl	load
	.type	load, @function
load:
.LFB19:
	.loc 1 97 0
	.cfi_startproc
.LVL9:
	.loc 1 98 0
	move.l 4(%sp),%a0	| p, p
	move.l (%a0),%d0	| *p_1(D), D.1028
	.loc 1 99 0
	rts
	.cfi_endproc
.LFE19:
	.size	load, .-load
	.align	2
	.globl	store
	.type	store, @function
store:
.LFB20:
	.loc 1 102 0
	.cfi_startproc
.LVL10:
	.loc 1 103 0
	move.l 4(%sp),%a0	| p, p
	move.l #255,(%a0)	|, *p_1(D)
	rts
	.cfi_endproc
.LFE20:
	.size	store, .-store
	.align	2
	.globl	load_long
	.type	load_long, @function
load_long:
.LFB21:
	.loc 1 107 0
	.cfi_startproc
.LVL11:
	.loc 1 108 0
	move.l 4(%sp),%a0	| p, p
	move.l (%a0),%d0	| *p_1(D), D.1026
	.loc 1 109 0
	rts
	.cfi_endproc
.LFE21:
	.size	load_long, .-load_long
	.align	2
	.globl	store_long
	.type	store_long, @function
store_long:
.LFB22:
	.loc 1 112 0
	.cfi_startproc
.LVL12:
	.loc 1 113 0
	move.l 4(%sp),%a0	| p, p
	move.l #287454020,(%a0)	|, *p_1(D)
	rts
	.cfi_endproc
.LFE22:
	.size	store_long, .-store_long
	.align	2
	.globl	member
	.type	member, @function
member:
.LFB23:
	.loc 1 123 0
	.cfi_startproc
.LVL13:
	move.l 4(%sp),%a0	| p, p
	.loc 1 124 0
	moveq #1,%d0	|,
	move.l %d0,4(%a0)	|, p_1(D)->b
	.loc 1 126 0
	move.l 8(%a0),%d0	| p_1(D)->c,
	rts
	.cfi_endproc
.LFE23:
	.size	member, .-member
	.align	2
	.globl	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.cfi_startproc
	.loc 1 134 0
	move.l #static_value,%d0	|,
	rts
	.cfi_endproc
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.align	2
	.globl	get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
	.loc 1 137 0
	.cfi_startproc
	.loc 1 139 0
	move.l static_value,%d0	| static_value,
	rts
	.cfi_endproc
.LFE25:
	.size	get_static_value, .-get_static_value
	.align	2
	.globl	set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
	.loc 1 142 0
	.cfi_startproc
.LVL14:
	.loc 1 143 0
	move.l 4(%sp),static_value	| a, static_value
	rts
	.cfi_endproc
.LFE26:
	.size	set_static_value, .-set_static_value
	.align	2
	.globl	set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
	.loc 1 149 0
	.cfi_startproc
	subq.l #8,%sp	|,
.LCFI0:
	.cfi_def_cfa_offset 12
	.loc 1 150 0
	move.l #254,4(%sp)	|, a
.LVL15:
	.loc 1 151 0
	move.l #255,(%sp)	|, b
.LVL16:
	.loc 1 152 0
	addq.l #8,%sp	|,
	rts
	.cfi_endproc
.LFE27:
	.size	set_stack, .-set_stack
	.align	2
	.globl	use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
	.loc 1 155 0
	.cfi_startproc
	subq.l #8,%sp	|,
.LCFI1:
	.cfi_def_cfa_offset 12
	.loc 1 156 0
	move.l #254,4(%sp)	|, a
.LVL17:
	.loc 1 157 0
	move.l #255,(%sp)	|, b
.LVL18:
	.loc 1 158 0
	move.l 4(%sp),%d1	| a, a.1
	move.l (%sp),%d0	| b, b.2
	.loc 1 159 0
	add.l %d1,%d0	| a.1,
	addq.l #8,%sp	|,
	rts
	.cfi_endproc
.LFE28:
	.size	use_stack, .-use_stack
	.align	2
	.globl	call_self
	.type	call_self, @function
call_self:
.LFB29:
	.loc 1 162 0
	.cfi_startproc
	.loc 1 163 0
	jsr call_self	|
.LVL19:
	rts
	.cfi_endproc
.LFE29:
	.size	call_self, .-call_self
	.align	2
	.globl	call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
	.loc 1 167 0
	.cfi_startproc
.LVL20:
	.loc 1 168 0
	move.l 4(%sp),-(%sp)	| a,
.LCFI2:
	.cfi_def_cfa_offset 8
	jsr return_arg1	|
.LVL21:
	addq.l #4,%sp	|,
.LCFI3:
	.cfi_def_cfa_offset 4
	.loc 1 169 0
	rts
	.cfi_endproc
.LFE30:
	.size	call_simple, .-call_simple
	.align	2
	.globl	call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
	.loc 1 172 0
	.cfi_startproc
	.loc 1 173 0
	pea 254.w	|
.LCFI4:
	.cfi_def_cfa_offset 8
	jsr return_arg1	|
.LVL22:
	addq.l #4,%sp	|,
.LCFI5:
	.cfi_def_cfa_offset 4
	.loc 1 174 0
	addq.l #1,%d0	|,
	rts
	.cfi_endproc
.LFE31:
	.size	call_complex1, .-call_complex1
	.align	2
	.globl	call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
	.loc 1 177 0
	.cfi_startproc
.LVL23:
	move.l %d2,-(%sp)	|,
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 2, -8
	move.l 12(%sp),%d2	| b, b
	.loc 1 178 0
	move.l %d2,-(%sp)	| b,
.LCFI7:
	.cfi_def_cfa_offset 12
	jsr return_arg1	|
.LVL24:
	addq.l #4,%sp	|,
.LCFI8:
	.cfi_def_cfa_offset 8
	move.l %d0,static_value	|, static_value
	.loc 1 180 0
	move.l %d2,%d0	| b,
	move.l (%sp)+,%d2	|,
	rts
	.cfi_endproc
.LFE32:
	.size	call_complex2, .-call_complex2
	.align	2
	.globl	call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
	.loc 1 183 0
	.cfi_startproc
.LVL25:
	.loc 1 184 0
	move.l 4(%sp),%a0	| f, f
	jsr (%a0)	| f
.LVL26:
	rts
	.cfi_endproc
.LFE33:
	.size	call_pointer, .-call_pointer
	.align	2
	.globl	condition
	.type	condition, @function
condition:
.LFB34:
	.loc 1 188 0
	.cfi_startproc
.LVL27:
	move.l 8(%sp),%d0	| b, b
	.loc 1 189 0
	cmp.l 4(%sp),%d0	| a, b
	jne .L36	|
	.loc 1 190 0
	moveq #1,%d0	|, b
.L36:
.LVL28:
	.loc 1 192 0
	addq.l #1,%d0	|,
.LVL29:
	rts
	.cfi_endproc
.LFE34:
	.size	condition, .-condition
	.align	2
	.globl	loop
	.type	loop, @function
loop:
.LFB35:
	.loc 1 195 0
	.cfi_startproc
.LVL30:
	move.l 4(%sp),%a0	| n, n
.LVL31:
	.loc 1 197 0
	tst.l %a0	| n
	jle .L41	|
	.loc 1 196 0 discriminator 2
	clr.l %d0	| sum
	.loc 1 197 0 discriminator 2
	clr.l %d1	| i
.LVL32:
.L40:
	.loc 1 198 0 discriminator 2
	add.l %d1,%d0	| i, sum
.LVL33:
	.loc 1 197 0 discriminator 2
	addq.l #1,%d1	|, i
.LVL34:
	cmp.l %d1,%a0	| i, n
	jne .L40	|
	rts
.LVL35:
.L41:
	.loc 1 196 0
	clr.l %d0	| sum
	.loc 1 200 0
	rts
	.cfi_endproc
.LFE35:
	.size	loop, .-loop
	.align	2
	.globl	many_args
	.type	many_args, @function
many_args:
.LFB36:
	.loc 1 204 0
	.cfi_startproc
.LVL36:
	.loc 1 205 0
	move.l 4(%sp),%d0	| a0, tmp44
	add.l 16(%sp),%d0	| a3, tmp44
	add.l 24(%sp),%d0	| a5, tmp45
	.loc 1 206 0
	add.l 32(%sp),%d0	| a7,
	rts
	.cfi_endproc
.LFE36:
	.size	many_args, .-many_args
	.align	2
	.globl	call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
	.loc 1 209 0
	.cfi_startproc
	.loc 1 210 0
	pea 7.w	|
.LCFI9:
	.cfi_def_cfa_offset 8
	pea 6.w	|
.LCFI10:
	.cfi_def_cfa_offset 12
	pea 5.w	|
.LCFI11:
	.cfi_def_cfa_offset 16
	pea 4.w	|
.LCFI12:
	.cfi_def_cfa_offset 20
	pea 3.w	|
.LCFI13:
	.cfi_def_cfa_offset 24
	pea 2.w	|
.LCFI14:
	.cfi_def_cfa_offset 28
	pea 1.w	|
.LCFI15:
	.cfi_def_cfa_offset 32
	clr.l -(%sp)	|
.LCFI16:
	.cfi_def_cfa_offset 36
	jsr many_args	|
.LVL37:
	lea (32,%sp),%sp	|,
.LCFI17:
	.cfi_def_cfa_offset 4
	.loc 1 211 0
	rts
	.cfi_endproc
.LFE37:
	.size	call_many_args, .-call_many_args
	.align	2
	.globl	direct
	.type	direct, @function
direct:
.LFB38:
	.loc 1 215 0
	.cfi_startproc
	.loc 1 216 0
#APP
| 216 "m68k-elf.c" 1
	nop
| 0 "" 2
#NO_APP
	rts
	.cfi_endproc
.LFE38:
	.size	direct, .-direct
	.align	2
	.globl	binary
	.type	binary, @function
binary:
.LFB39:
	.loc 1 223 0
	.cfi_startproc
	.loc 1 224 0
#APP
| 224 "m68k-elf.c" 1
	.align 4
| 0 "" 2
	.loc 1 225 0
| 225 "m68k-elf.c" 1
	.int 0x0
| 0 "" 2
#NO_APP
	rts
	.cfi_endproc
.LFE39:
	.size	binary, .-binary
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB40:
	.loc 1 231 0
	.cfi_startproc
	.loc 1 233 0
	clr.l %d0	|
	rts
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.globl	static_long
	.data
	.align	2
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.long	305419896
	.globl	static_value
	.align	2
	.type	static_value, @object
	.size	static_value, 4
static_value:
	.long	10
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x728
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF42
	.byte	0x1
	.long	.LASF43
	.long	.LASF44
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF45
	.byte	0xc
	.byte	0x1
	.byte	0x74
	.long	0x56
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x75
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x76
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x77
	.long	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF0
	.byte	0x1
	.byte	0x6
	.long	0x56
	.long	.LFB1
	.long	.LFE1
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF1
	.byte	0x1
	.byte	0xb
	.long	0x56
	.long	.LFB2
	.long	.LFE2
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF2
	.byte	0x1
	.byte	0x10
	.long	0x56
	.long	.LFB3
	.long	.LFE3
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF3
	.byte	0x1
	.byte	0x15
	.long	0x56
	.long	.LFB4
	.long	.LFE4
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF4
	.byte	0x1
	.byte	0x1a
	.long	0x56
	.long	.LFB5
	.long	.LFE5
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF5
	.byte	0x1
	.byte	0x1f
	.long	0x56
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF6
	.byte	0x1
	.byte	0x24
	.long	0x119
	.long	.LFB7
	.long	.LFE7
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0x29
	.long	0x138
	.long	.LFB8
	.long	.LFE8
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x2e
	.long	0x119
	.long	.LFB9
	.long	.LFE9
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x33
	.long	0x138
	.long	.LFB10
	.long	.LFE10
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0x56
	.long	.LFB11
	.long	.LFE11
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x199
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0x56
	.long	.LFB12
	.long	.LFE12
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x1cf
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"add"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x56
	.long	.LFB13
	.long	.LFE13
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x205
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x42
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0x56
	.long	.LFB14
	.long	.LFE14
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x247
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0x56
	.long	.LFB15
	.long	.LFE15
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x271
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"inc"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x56
	.long	.LFB16
	.long	.LFE16
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x29c
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x51
	.long	0x56
	.long	.LLST0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"or"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x56
	.long	.LFB17
	.long	.LFE17
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x2d1
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x56
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x56
	.long	.LFB18
	.long	.LFE18
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x2fb
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0x56
	.long	.LFB19
	.long	.LFE19
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x325
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x60
	.long	0x325
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x32b
	.uleb128 0xd
	.long	0x56
	.uleb128 0xe
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x356
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.long	0x325
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x138
	.long	.LFB21
	.long	.LFE21
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x380
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.long	0x380
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x386
	.uleb128 0xd
	.long	0x138
	.uleb128 0xe
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x3b1
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.long	0x380
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x56
	.long	.LFB23
	.long	.LFE23
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x3db
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.long	0x3db
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x25
	.uleb128 0x6
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x83
	.long	0x3f9
	.long	.LFB24
	.long	.LFE24
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0xc
	.byte	0x4
	.long	0x56
	.uleb128 0x6
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x88
	.long	0x56
	.long	.LFB25
	.long	.LFE25
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x43d
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x94
	.long	.LFB27
	.long	.LFE27
	.long	.LLST1
	.byte	0x1
	.long	0x46f
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x9a
	.long	0x56
	.long	.LFB28
	.long	.LFE28
	.long	.LLST2
	.byte	0x1
	.long	0x4a5
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0xa1
	.long	.LFB29
	.long	.LFE29
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x4c7
	.uleb128 0x13
	.long	.LVL19
	.long	0x4a5
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0x56
	.long	.LFB30
	.long	.LFE30
	.long	.LLST3
	.byte	0x1
	.long	0x4fb
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LVL21
	.long	0x16f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0xab
	.long	0x56
	.long	.LFB31
	.long	.LFE31
	.long	.LLST4
	.byte	0x1
	.long	0x522
	.uleb128 0x13
	.long	.LVL22
	.long	0x16f
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x56
	.long	.LFB32
	.long	.LFE32
	.long	.LLST5
	.byte	0x1
	.long	0x562
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LVL24
	.long	0x16f
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x591
	.uleb128 0x9
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.long	0x597
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LVL26
	.byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	0x56
	.uleb128 0xc
	.byte	0x4
	.long	0x591
	.uleb128 0x8
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x56
	.long	.LFB34
	.long	.LFE34
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x5d4
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.long	0x56
	.long	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x56
	.long	.LFB35
	.long	.LFE35
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x61a
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x56
	.long	.LLST7
	.uleb128 0x17
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.long	0x56
	.long	.LLST8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.long	0x56
	.long	.LFB36
	.long	.LFE36
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.long	0x6a0
	.uleb128 0x9
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xd0
	.long	0x56
	.long	.LFB37
	.long	.LFE37
	.long	.LLST9
	.byte	0x1
	.long	0x6c7
	.uleb128 0x13
	.long	.LVL37
	.long	0x61a
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xd6
	.long	.LFB38
	.long	.LFE38
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0xde
	.long	.LFB39
	.long	.LFE39
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0xe6
	.long	0x56
	.long	.LFB40
	.long	.LFE40
	.byte	0x2
	.byte	0x7f
	.sleb128 4
	.byte	0x1
	.uleb128 0x18
	.long	.LASF40
	.byte	0x1
	.byte	0x80
	.long	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_value
	.uleb128 0x18
	.long	.LASF41
	.byte	0x1
	.byte	0x81
	.long	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_long
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
.Ldebug_loc0:
.LLST0:
	.long	.LVL5-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x6
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LFB27-.Ltext0
	.long	.LCFI0-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LFE27-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 12
	.long	0
	.long	0
.LLST2:
	.long	.LFB28-.Ltext0
	.long	.LCFI1-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI1-.Ltext0
	.long	.LFE28-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 12
	.long	0
	.long	0
.LLST3:
	.long	.LFB30-.Ltext0
	.long	.LCFI2-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE30-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LFB31-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE31-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LFB32-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 12
	.long	.LCFI8-.Ltext0
	.long	.LFE32-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x1
	.byte	0x50
	.long	.LVL29-.Ltext0
	.long	.LFE34-.Ltext0
	.word	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x51
	.long	.LVL35-.Ltext0
	.long	.LFE35-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x50
	.long	.LVL35-.Ltext0
	.long	.LFE35-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB37-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 12
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 16
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 20
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 24
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 28
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 32
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 36
	.long	.LCFI17-.Ltext0
	.long	.LFE37-.Ltext0
	.word	0x2
	.byte	0x7f
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"return_long_upper"
.LASF29:
	.string	"call_complex1"
.LASF34:
	.string	"many_args"
.LASF44:
	.string	"/home/hiroaki/cross2-gcc4/sample"
.LASF40:
	.string	"static_value"
.LASF12:
	.string	"return_arg1"
.LASF13:
	.string	"return_arg2"
.LASF17:
	.string	"load"
.LASF23:
	.string	"get_static_value"
.LASF36:
	.string	"null"
.LASF8:
	.string	"return_long"
.LASF18:
	.string	"load_long"
.LASF14:
	.string	"add3"
.LASF33:
	.string	"loop"
.LASF31:
	.string	"call_pointer"
.LASF5:
	.string	"return_long_size"
.LASF37:
	.string	"direct"
.LASF41:
	.string	"static_long"
.LASF43:
	.string	"m68k-elf.c"
.LASF16:
	.string	"or_one"
.LASF10:
	.string	"return_short_upper"
.LASF1:
	.string	"return_one"
.LASF35:
	.string	"call_many_args"
.LASF32:
	.string	"condition"
.LASF4:
	.string	"return_short_size"
.LASF21:
	.string	"member"
.LASF39:
	.string	"main"
.LASF6:
	.string	"return_short"
.LASF38:
	.string	"binary"
.LASF3:
	.string	"return_pointer_size"
.LASF30:
	.string	"call_complex2"
.LASF45:
	.string	"structure"
.LASF2:
	.string	"return_int_size"
.LASF25:
	.string	"use_stack"
.LASF20:
	.string	"store_long"
.LASF42:
	.string	"GNU C 4.7.2"
.LASF27:
	.string	"call_self"
.LASF26:
	.string	"set_stack"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"add_two"
.LASF28:
	.string	"call_simple"
.LASF19:
	.string	"store"
.LASF9:
	.string	"long int"
.LASF0:
	.string	"return_zero"
.LASF24:
	.string	"set_static_value"
.LASF22:
	.string	"get_static_value_addr"
	.ident	"GCC: (GNU) 4.7.2"
