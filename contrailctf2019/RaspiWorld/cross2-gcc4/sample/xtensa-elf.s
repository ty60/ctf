	.file	"xtensa-elf.c"
# GNU C (GCC) version 4.7.2 (xtensa-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc xtensa-elf.c -auxbase-strip xtensa-elf.s -g -O
# -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
# -fvar-tracking -fvar-tracking-assignments -fverbose-asm
# -fzero-initialized-in-bss -mserialize-volatile

	.text
.Ltext0:
	.align	4
	.global	null
	.type	null, @function
null:
.LFB0:
	.file 1 "xtensa-elf.c"
	.loc 1 2 0
	entry	sp, 32	#
.LCFI0:
	retw.n
.LFE0:
	.size	null, .-null
	.align	4
	.global	return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 7 0
	entry	sp, 32	#
.LCFI1:
	.loc 1 9 0
	movi.n	a2, 0	#,
	retw.n
.LFE1:
	.size	return_zero, .-return_zero
	.align	4
	.global	return_one
	.type	return_one, @function
return_one:
.LFB2:
	.loc 1 12 0
	entry	sp, 32	#
.LCFI2:
	.loc 1 14 0
	movi.n	a2, 1	#,
	retw.n
.LFE2:
	.size	return_one, .-return_one
	.align	4
	.global	return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
	.loc 1 17 0
	entry	sp, 32	#
.LCFI3:
	.loc 1 19 0
	movi.n	a2, 4	#,
	retw.n
.LFE3:
	.size	return_int_size, .-return_int_size
	.align	4
	.global	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
	.loc 1 22 0
	entry	sp, 32	#
.LCFI4:
	.loc 1 24 0
	movi.n	a2, 4	#,
	retw.n
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.align	4
	.global	return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
	.loc 1 27 0
	entry	sp, 32	#
.LCFI5:
	.loc 1 29 0
	movi.n	a2, 2	#,
	retw.n
.LFE5:
	.size	return_short_size, .-return_short_size
	.align	4
	.global	return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
	.loc 1 32 0
	entry	sp, 32	#
.LCFI6:
	.loc 1 34 0
	movi.n	a2, 4	#,
	retw.n
.LFE6:
	.size	return_long_size, .-return_long_size
	.literal_position
	.literal .LC0, 30600
	.align	4
	.global	return_short
	.type	return_short, @function
return_short:
.LFB7:
	.loc 1 37 0
	entry	sp, 32	#
.LCFI7:
	.loc 1 39 0
	l32r	a2, .LC0	#,
	retw.n
.LFE7:
	.size	return_short, .-return_short
	.literal_position
	.literal .LC1, 2005440938
	.align	4
	.global	return_long
	.type	return_long, @function
return_long:
.LFB8:
	.loc 1 42 0
	entry	sp, 32	#
.LCFI8:
	.loc 1 44 0
	l32r	a2, .LC1	#,
	retw.n
.LFE8:
	.size	return_long, .-return_long
	.align	4
	.global	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
	.loc 1 47 0
	entry	sp, 32	#
.LCFI9:
	.loc 1 49 0
	movi.n	a2, -0x12	#,
	retw.n
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.literal_position
	.literal .LC2, -1122868
	.align	4
	.global	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
	.loc 1 52 0
	entry	sp, 32	#
.LCFI10:
	.loc 1 54 0
	l32r	a2, .LC2	#,
	retw.n
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.align	4
	.global	return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	entry	sp, 32	#
.LCFI11:
	.loc 1 59 0
	retw.n
.LFE11:
	.size	return_arg1, .-return_arg1
	.align	4
	.global	return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	entry	sp, 32	#
.LCFI12:
	.loc 1 64 0
	mov.n	a2, a3	#, b
.LVL2:
	retw.n
.LFE12:
	.size	return_arg2, .-return_arg2
	.align	4
	.global	add
	.type	add, @function
add:
.LFB13:
	.loc 1 67 0
.LVL3:
	entry	sp, 32	#
.LCFI13:
	.loc 1 69 0
	add.n	a2, a2, a3	#, a, b
.LVL4:
	retw.n
.LFE13:
	.size	add, .-add
	.align	4
	.global	add3
	.type	add3, @function
add3:
.LFB14:
	.loc 1 72 0
.LVL5:
	entry	sp, 32	#
.LCFI14:
	.loc 1 73 0
	add.n	a2, a2, a3	# tmp49, a, b
.LVL6:
	.loc 1 74 0
	add.n	a2, a2, a4	#, tmp49, c
	retw.n
.LFE14:
	.size	add3, .-add3
	.align	4
	.global	add_two
	.type	add_two, @function
add_two:
.LFB15:
	.loc 1 77 0
.LVL7:
	entry	sp, 32	#
.LCFI15:
	.loc 1 79 0
	addi.n	a2, a2, 2	#, a,
.LVL8:
	retw.n
.LFE15:
	.size	add_two, .-add_two
	.align	4
	.global	inc
	.type	inc, @function
inc:
.LFB16:
	.loc 1 82 0
.LVL9:
	entry	sp, 32	#
.LCFI16:
.LVL10:
	.loc 1 84 0
	addi.n	a2, a2, 1	#, a,
.LVL11:
	retw.n
.LFE16:
	.size	inc, .-inc
	.align	4
	.global	or
	.type	or, @function
or:
.LFB17:
	.loc 1 87 0
.LVL12:
	entry	sp, 32	#
.LCFI17:
	.loc 1 89 0
	or	a2, a3, a2	#, b, a
.LVL13:
	retw.n
.LFE17:
	.size	or, .-or
	.align	4
	.global	or_one
	.type	or_one, @function
or_one:
.LFB18:
	.loc 1 92 0
.LVL14:
	entry	sp, 32	#
.LCFI18:
	.loc 1 94 0
	movi.n	a8, 1	# tmp46,
	or	a2, a2, a8	#, a, tmp46
.LVL15:
	retw.n
.LFE18:
	.size	or_one, .-or_one
	.align	4
	.global	load
	.type	load, @function
load:
.LFB19:
	.loc 1 97 0
.LVL16:
	entry	sp, 32	#
.LCFI19:
	.loc 1 98 0
	memw
	l32i.n	a2, a2, 0	# *p_1(D), D.1033
.LVL17:
	.loc 1 99 0
	retw.n
.LFE19:
	.size	load, .-load
	.align	4
	.global	store
	.type	store, @function
store:
.LFB20:
	.loc 1 102 0
.LVL18:
	entry	sp, 32	#
.LCFI20:
	.loc 1 103 0
	movi	a8, 0xff	# tmp43,
	memw
	s32i.n	a8, a2, 0	# *p_1(D), tmp43
	retw.n
.LFE20:
	.size	store, .-store
	.align	4
	.global	load_long
	.type	load_long, @function
load_long:
.LFB21:
	.loc 1 107 0
.LVL19:
	entry	sp, 32	#
.LCFI21:
	.loc 1 108 0
	memw
	l32i.n	a2, a2, 0	# *p_1(D), D.1031
.LVL20:
	.loc 1 109 0
	retw.n
.LFE21:
	.size	load_long, .-load_long
	.literal_position
	.literal .LC3, 287454020
	.align	4
	.global	store_long
	.type	store_long, @function
store_long:
.LFB22:
	.loc 1 112 0
.LVL21:
	entry	sp, 32	#
.LCFI22:
	.loc 1 113 0
	l32r	a8, .LC3	#, tmp43
	memw
	s32i.n	a8, a2, 0	# *p_1(D), tmp43
	retw.n
.LFE22:
	.size	store_long, .-store_long
	.align	4
	.global	member
	.type	member, @function
member:
.LFB23:
	.loc 1 123 0
.LVL22:
	entry	sp, 32	#
.LCFI23:
	.loc 1 124 0
	movi.n	a8, 1	# tmp45,
	s32i.n	a8, a2, 4	# p_1(D)->b, tmp45
	.loc 1 126 0
	l32i.n	a2, a2, 8	# p_1(D)->c,
.LVL23:
	retw.n
.LFE23:
	.size	member, .-member
	.literal_position
	.literal .LC4, static_value
	.align	4
	.global	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
	.loc 1 132 0
	entry	sp, 32	#
.LCFI24:
	.loc 1 134 0
	l32r	a2, .LC4	#,
	retw.n
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.literal_position
	.literal .LC5, static_value
	.align	4
	.global	get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
	.loc 1 137 0
	entry	sp, 32	#
.LCFI25:
	.loc 1 139 0
	l32r	a8, .LC5	#, tmp45
	l32i.n	a2, a8, 0	# static_value,
	retw.n
.LFE25:
	.size	get_static_value, .-get_static_value
	.literal_position
	.literal .LC6, static_value
	.align	4
	.global	set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
	.loc 1 142 0
.LVL24:
	entry	sp, 32	#
.LCFI26:
	.loc 1 143 0
	l32r	a8, .LC6	#, tmp43
	s32i.n	a2, a8, 0	# static_value, a
	retw.n
.LFE26:
	.size	set_static_value, .-set_static_value
	.align	4
	.global	set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
	.loc 1 149 0
	entry	sp, 48	#
.LCFI27:
	.loc 1 150 0
	movi	a8, 0xfe	# tmp42,
	memw
	s32i.n	a8, sp, 0	# a, tmp42
.LVL25:
	.loc 1 151 0
	movi	a8, 0xff	# tmp43,
	memw
	s32i.n	a8, sp, 4	# b, tmp43
.LVL26:
	retw.n
.LFE27:
	.size	set_stack, .-set_stack
	.align	4
	.global	use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
	.loc 1 155 0
	entry	sp, 48	#
.LCFI28:
	.loc 1 156 0
	movi	a2, 0xfe	# tmp46,
	memw
	s32i.n	a2, sp, 0	# a, tmp46
.LVL27:
	.loc 1 157 0
	movi	a2, 0xff	# tmp47,
	memw
	s32i.n	a2, sp, 4	# b, tmp47
.LVL28:
	.loc 1 158 0
	memw
	l32i.n	a2, sp, 0	# a, a$1
	memw
	l32i.n	a8, sp, 4	# b, b$2
	.loc 1 159 0
	add.n	a2, a2, a8	#, a$1, b$2
	retw.n
.LFE28:
	.size	use_stack, .-use_stack
	.align	4
	.global	call_self
	.type	call_self, @function
call_self:
.LFB29:
	.loc 1 162 0
	entry	sp, 32	#
.LCFI29:
	.loc 1 163 0
	call8	call_self	#
.LVL29:
	retw.n
.LFE29:
	.size	call_self, .-call_self
	.align	4
	.global	call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
	.loc 1 167 0
.LVL30:
	entry	sp, 32	#
.LCFI30:
	.loc 1 168 0
	mov.n	a10, a2	#, a
	call8	return_arg1	#
.LVL31:
	.loc 1 169 0
	mov.n	a2, a10	#,
.LVL32:
	retw.n
.LFE30:
	.size	call_simple, .-call_simple
	.align	4
	.global	call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
	.loc 1 172 0
	entry	sp, 32	#
.LCFI31:
	.loc 1 173 0
	movi	a10, 0xfe	#,
	call8	return_arg1	#
.LVL33:
	.loc 1 174 0
	addi.n	a2, a10, 1	#,,
	retw.n
.LFE31:
	.size	call_complex1, .-call_complex1
	.literal_position
	.literal .LC7, static_value
	.align	4
	.global	call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
	.loc 1 177 0
.LVL34:
	entry	sp, 32	#
.LCFI32:
	mov.n	a2, a3	# b, b
.LVL35:
	.loc 1 178 0
	mov.n	a10, a3	#, b
	call8	return_arg1	#
.LVL36:
	l32r	a8, .LC7	#, tmp46
	s32i.n	a10, a8, 0	# static_value,
	.loc 1 180 0
	retw.n
.LFE32:
	.size	call_complex2, .-call_complex2
	.align	4
	.global	call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
	.loc 1 183 0
.LVL37:
	entry	sp, 32	#
.LCFI33:
	.loc 1 184 0
	callx8	a2	# f
.LVL38:
	retw.n
.LFE33:
	.size	call_pointer, .-call_pointer
	.align	4
	.global	condition
	.type	condition, @function
condition:
.LFB34:
	.loc 1 188 0
.LVL39:
	entry	sp, 32	#
.LCFI34:
	.loc 1 190 0
	sub	a2, a2, a3	# tmp48, a, b
.LVL40:
	movi.n	a8, 1	# tmp47,
	moveqz	a3, a8, a2	# b, tmp47, tmp48
.LVL41:
	.loc 1 192 0
	add.n	a2, a3, a8	#, b,
	retw.n
.LFE34:
	.size	condition, .-condition
	.align	4
	.global	loop
	.type	loop, @function
loop:
.LFB35:
	.loc 1 195 0
.LVL42:
	entry	sp, 32	#
.LCFI35:
.LVL43:
	.loc 1 197 0
	blti	a2, 1, .L41	# n,,
	.loc 1 196 0 discriminator 2
	movi.n	a9, 0	# sum,
	.loc 1 197 0 discriminator 2
	mov.n	a8, a9	# i, sum
.LVL44:
.L40:
	.loc 1 198 0 discriminator 2
	add.n	a9, a9, a8	# sum, sum, i
.LVL45:
	.loc 1 197 0 discriminator 2
	addi.n	a8, a8, 1	# i, i,
.LVL46:
	bne	a8, a2, .L40	# i, n,
	j	.L39	#
.LVL47:
.L41:
	.loc 1 196 0
	movi.n	a9, 0	# sum,
.LVL48:
.L39:
	.loc 1 200 0
	mov.n	a2, a9	#, sum
.LVL49:
	retw.n
.LFE35:
	.size	loop, .-loop
	.align	4
	.global	many_args
	.type	many_args, @function
many_args:
.LFB36:
	.loc 1 204 0
.LVL50:
	entry	sp, 32	#
.LCFI36:
	.loc 1 205 0
	add.n	a2, a2, a5	# tmp56, a0, a3
.LVL51:
	add.n	a7, a2, a7	# tmp57, tmp56, tmp52
.LVL52:
	.loc 1 206 0
	l32i.n	a2, sp, 36	# a7, a7
	add.n	a2, a7, a2	#, tmp57, a7
	retw.n
.LFE36:
	.size	many_args, .-many_args
	.align	4
	.global	call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
	.loc 1 209 0
	entry	sp, 48	#
.LCFI37:
	.loc 1 210 0
	movi.n	a8, 6	# tmp44,
	s32i.n	a8, sp, 0	#, tmp44
	movi.n	a8, 7	# tmp45,
	s32i.n	a8, sp, 4	#, tmp45
	movi.n	a10, 0	#,
	movi.n	a11, 1	#,
	movi.n	a12, 2	#,
	movi.n	a13, 3	#,
	movi.n	a14, 4	#,
	movi.n	a15, 5	#,
	call8	many_args	#
.LVL53:
	.loc 1 211 0
	mov.n	a2, a10	#,
	retw.n
.LFE37:
	.size	call_many_args, .-call_many_args
	.align	4
	.global	direct
	.type	direct, @function
direct:
.LFB38:
	.loc 1 215 0
	entry	sp, 32	#
.LCFI38:
	.loc 1 216 0
#APP
# 216 "xtensa-elf.c" 1
	nop
# 0 "" 2
#NO_APP
	retw.n
.LFE38:
	.size	direct, .-direct
	.align	4
	.global	binary
	.type	binary, @function
binary:
.LFB39:
	.loc 1 223 0
	entry	sp, 32	#
.LCFI39:
	.loc 1 224 0
#APP
# 224 "xtensa-elf.c" 1
	.align 4
# 0 "" 2
	.loc 1 225 0
# 225 "xtensa-elf.c" 1
	.int 0x0
# 0 "" 2
#NO_APP
	retw.n
.LFE39:
	.size	binary, .-binary
	.align	4
	.global	main
	.type	main, @function
main:
.LFB40:
	.loc 1 231 0
	entry	sp, 32	#
.LCFI40:
	.loc 1 233 0
	movi.n	a2, 0	#,
	retw.n
.LFE40:
	.size	main, .-main
	.global	static_long
	.data
	.align	4
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.word	305419896
	.global	static_value
	.align	4
	.type	static_value, @object
	.size	static_value, 4
static_value:
	.word	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
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
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI23-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI24-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI25-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI26-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI27-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI28-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI29-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI30-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI31-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI32-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI33-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI34-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI35-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI36-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI37-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI38-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI39-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI40-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x78a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xc
	.byte	0x1
	.byte	0x74
	.4byte	0x56
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x75
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x76
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x77
	.4byte	0x56
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
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.4byte	0x56
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0xb
	.4byte	0x56
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x10
	.4byte	0x56
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x15
	.4byte	0x56
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0x56
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1f
	.4byte	0x56
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x24
	.4byte	0x121
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.byte	0x1
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x29
	.4byte	0x141
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x2e
	.4byte	0x121
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST9
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x33
	.4byte	0x141
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x1a4
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.4byte	0x56
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x1db
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.4byte	.LLST13
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"add"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x212
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.4byte	.LLST15
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x254
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.4byte	.LLST17
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x280
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.4byte	0x56
	.4byte	.LLST19
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"inc"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x2ac
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x51
	.4byte	0x56
	.4byte	.LLST21
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"or"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x2e2
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.4byte	.LLST23
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x30e
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.4byte	0x56
	.4byte	.LLST25
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x33a
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x33a
	.4byte	.LLST27
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x340
	.uleb128 0xd
	.4byte	0x56
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x36b
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x33a
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x141
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST29
	.byte	0x1
	.4byte	0x397
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x397
	.4byte	.LLST30
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x39d
	.uleb128 0xd
	.4byte	0x141
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x3c8
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x397
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST32
	.byte	0x1
	.4byte	0x3f4
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3f4
	.4byte	.LLST33
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x25
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.4byte	0x413
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST34
	.byte	0x1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x56
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x88
	.4byte	0x56
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST35
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST36
	.byte	0x1
	.4byte	0x458
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.4byte	0x56
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x94
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST37
	.byte	0x1
	.4byte	0x48a
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.4byte	0x340
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x340
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x56
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST38
	.byte	0x1
	.4byte	0x4c0
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x340
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x340
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST39
	.byte	0x1
	.4byte	0x4e3
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0x4c0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST40
	.byte	0x1
	.4byte	0x51f
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST41
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0x17a
	.uleb128 0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x56
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST42
	.byte	0x1
	.4byte	0x54d
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x17a
	.uleb128 0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST43
	.byte	0x1
	.4byte	0x594
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST44
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL36
	.4byte	0x17a
	.uleb128 0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST45
	.byte	0x1
	.4byte	0x5c2
	.uleb128 0x9
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5c8
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL38
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST46
	.byte	0x1
	.4byte	0x607
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST47
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST48
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST49
	.byte	0x1
	.4byte	0x64f
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST50
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST51
	.uleb128 0x17
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST52
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST53
	.byte	0x1
	.4byte	0x6d4
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST54
	.uleb128 0x9
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.4byte	.LLST55
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST56
	.byte	0x1
	.4byte	0x726
	.uleb128 0x13
	.4byte	.LVL53
	.4byte	0x64f
	.uleb128 0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x35
	.uleb128 0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.uleb128 0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.uleb128 0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.uleb128 0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x2
	.byte	0x71
	.sleb128 4
	.byte	0x1
	.byte	0x37
	.uleb128 0x14
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST57
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST58
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe6
	.4byte	0x56
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST59
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	static_value
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x81
	.4byte	0x141
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	static_long
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
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
.LASF43:
	.string	"xtensa-elf.c"
.LASF31:
	.string	"call_pointer"
.LASF5:
	.string	"return_long_size"
.LASF37:
	.string	"direct"
.LASF41:
	.string	"static_long"
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
