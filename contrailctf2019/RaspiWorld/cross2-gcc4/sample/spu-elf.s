	.file	"spu-elf.c"
# GNU C (GCC) version 4.7.2 (spu-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc spu-elf.c -auxbase-strip spu-elf.s -g -O -Wall
# -fno-builtin -fverbose-asm -fomit-frame-pointer
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
# -fpeephole -fprefetch-loop-arrays -freg-struct-return -frename-registers
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
# -fzero-initialized-in-bss -maddress-space-conversion -mbranch-hints
# -mdual-nops -mea32 -merror-reloc -msafe-dma -msafe-hints -msmall-mem

.text
.Ltext0:
	.align	3
	.global	null
	.type	null, @function
null:
.LFB0:
	.file 1 "spu-elf.c"
	.loc 1 2 0
	bi	$lr
.LFE0:
	.size	null, .-null
	.align	3
	.global	return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 9 0
	il	$3,0	#,
	bi	$lr
.LFE1:
	.size	return_zero, .-return_zero
	.align	3
	.global	return_one
	.type	return_one, @function
return_one:
.LFB2:
	.loc 1 12 0
	.loc 1 14 0
	il	$3,1	#,
	bi	$lr
.LFE2:
	.size	return_one, .-return_one
	.align	3
	.global	return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
	.loc 1 17 0
	.loc 1 19 0
	il	$3,4	#,
	bi	$lr
.LFE3:
	.size	return_int_size, .-return_int_size
	.align	3
	.global	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
	.loc 1 22 0
	.loc 1 24 0
	il	$3,4	#,
	bi	$lr
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.align	3
	.global	return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
	.loc 1 27 0
	.loc 1 29 0
	il	$3,2	#,
	bi	$lr
.LFE5:
	.size	return_short_size, .-return_short_size
	.align	3
	.global	return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
	.loc 1 32 0
	.loc 1 34 0
	il	$3,4	#,
	bi	$lr
.LFE6:
	.size	return_long_size, .-return_long_size
	.align	3
	.global	return_short
	.type	return_short, @function
return_short:
.LFB7:
	.loc 1 37 0
	.loc 1 39 0
	il	$3,30600	#,
	bi	$lr
.LFE7:
	.size	return_short, .-return_short
	.align	3
	.global	return_long
	.type	return_long, @function
return_long:
.LFB8:
	.loc 1 42 0
	.loc 1 44 0
	ilhu	$3,30600	#, tmp141
	lnop
	iohl	$3,39338	#,
	bi	$lr
.LFE8:
	.size	return_long, .-return_long
	.align	3
	.global	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
	.loc 1 47 0
	.loc 1 49 0
	il	$3,-18	#,
	bi	$lr
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.align	3
	.global	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
	.loc 1 52 0
	.loc 1 54 0
	ilhu	$3,-18	#, tmp141
	lnop
	iohl	$3,56780	#,
	bi	$lr
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.align	3
	.global	return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	.loc 1 59 0
	bi	$lr
.LFE11:
	.size	return_arg1, .-return_arg1
	.align	3
	.global	return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	.loc 1 64 0
	ori	$3,$4,0	#, b
.LVL2:
	bi	$lr
.LFE12:
	.size	return_arg2, .-return_arg2
	.align	3
	.global	add
	.type	add, @function
add:
.LFB13:
	.loc 1 67 0
.LVL3:
	.loc 1 69 0
	a	$3,$3,$4	#, a, b
.LVL4:
	bi	$lr
.LFE13:
	.size	add, .-add
	.align	3
	.global	add3
	.type	add3, @function
add3:
.LFB14:
	.loc 1 72 0
.LVL5:
	.loc 1 73 0
	a	$3,$3,$4	# tmp146, a, b
.LVL6:
	lnop
	.loc 1 74 0
	a	$3,$3,$5	#, tmp146, c
	bi	$lr
.LFE14:
	.size	add3, .-add3
	.align	3
	.global	add_two
	.type	add_two, @function
add_two:
.LFB15:
	.loc 1 77 0
.LVL7:
	.loc 1 79 0
	ai	$3,$3,2	#, a,
.LVL8:
	bi	$lr
.LFE15:
	.size	add_two, .-add_two
	.align	3
	.global	inc
	.type	inc, @function
inc:
.LFB16:
	.loc 1 82 0
.LVL9:
	.loc 1 84 0
	ai	$3,$3,1	#, a,
.LVL10:
	bi	$lr
.LFE16:
	.size	inc, .-inc
	.align	3
	.global	or
	.type	or, @function
or:
.LFB17:
	.loc 1 87 0
.LVL11:
	.loc 1 89 0
	or	$3,$4,$3	#, b, a
.LVL12:
	bi	$lr
.LFE17:
	.size	or, .-or
	.align	3
	.global	or_one
	.type	or_one, @function
or_one:
.LFB18:
	.loc 1 92 0
.LVL13:
	.loc 1 94 0
	ori	$3,$3,1	#,, a
.LVL14:
	bi	$lr
.LFE18:
	.size	or_one, .-or_one
	.align	3
	.global	load
	.type	load, @function
load:
.LFB19:
	.loc 1 97 0
.LVL15:
	.loc 1 98 0
	lqd	$2,0($3)	#, tmp142
	rotqby	$3,$2,$3	# tmp142, tmp142, p
.LVL16:
	.loc 1 99 0
	bi	$lr
.LFE19:
	.size	load, .-load
	.align	3
	.global	store
	.type	store, @function
store:
.LFB20:
	.loc 1 102 0
.LVL17:
	.loc 1 103 0
	il	$4,255	#, tmp140
	lqd	$2,0($3)	#* p, tmp141
	cwd	$5,0($3)	#, tmp142,, p
	shufb	$6,$4,$2,$5	# tmp141, tmp140, tmp141, tmp142
	stqd	$6,0($3)	#* p, tmp141
	bi	$lr
.LFE20:
	.size	store, .-store
	.align	3
	.global	load_long
	.type	load_long, @function
load_long:
.LFB21:
	.loc 1 107 0
.LVL18:
	.loc 1 108 0
	lqd	$2,0($3)	#, tmp142
	rotqby	$3,$2,$3	# tmp142, tmp142, p
.LVL19:
	.loc 1 109 0
	bi	$lr
.LFE21:
	.size	load_long, .-load_long
	.align	3
	.global	store_long
	.type	store_long, @function
store_long:
.LFB22:
	.loc 1 112 0
.LVL20:
	.loc 1 113 0
	nop	127	#
	hbr	.L24,$lr	#,
	ilhu	$4,4386	#, tmp143
	lqd	$2,0($3)	#* p, tmp141
	nop	$127	#
	cwd	$5,0($3)	#, tmp142,, p
	iohl	$4,13124	# tmp140,
	nop	$127	#
	shufb	$6,$4,$2,$5	# tmp141, tmp140, tmp141, tmp142
	stqd	$6,0($3)	#* p, tmp141
.L24:
	bi	$lr
.LFE22:
	.size	store_long, .-store_long
	.align	3
	.global	member
	.type	member, @function
member:
.LFB23:
	.loc 1 123 0
.LVL21:
	.loc 1 124 0
	il	$4,4	#, tmp143
	cwd	$6,4($3)	#, tmp145,, p
	il	$5,1	#, tmp142
	.loc 1 126 0
	hbr	.L26,$lr	#,
	.loc 1 125 0
	il	$9,8	#, tmp149
	.loc 1 124 0
	lqx	$2,$3,$4	#, tmp144
	.loc 1 125 0
	ai	$8,$3,8	# tmp150, p,
	.loc 1 124 0
	shufb	$7,$5,$2,$6	# tmp144, tmp142, tmp144, tmp145
	stqx	$7,$3,$4	#, tmp144
	.loc 1 125 0
	lqx	$3,$3,$9	#, tmp148
.LVL22:
	rotqby	$3,$3,$8	# tmp148, tmp148, tmp150
.L26:
	.loc 1 126 0
	bi	$lr
.LFE23:
	.size	member, .-member
	.align	3
	.global	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.loc 1 134 0
	ila	$3,static_value	#,
	bi	$lr
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.align	3
	.global	get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
	.loc 1 137 0
	.loc 1 139 0
	lqr	$3,static_value	#, tmp145
	bi	$lr
.LFE25:
	.size	get_static_value, .-get_static_value
	.align	3
	.global	set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
	.loc 1 142 0
.LVL23:
	.loc 1 143 0
	stqr	$3,static_value	#, tmp140
	bi	$lr
.LFE26:
	.size	set_static_value, .-set_static_value
	.align	3
	.global	set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
	.loc 1 149 0
	.loc 1 150 0
	il	$4,254	#, tmp139
	.loc 1 149 0
	stqd	$sp,-64($sp)	#,
	ai	$sp,$sp,-64	#,,
.LCFI0:
	.loc 1 150 0
	cwd	$3,0($sp)	#, tmp141
	.loc 1 151 0
	il	$7,255	#, tmp142
	.loc 1 152 0
	hbr	.L31,$lr	#,
	.loc 1 150 0
	lqd	$2,48($sp)	#, tmp140
	shufb	$5,$4,$2,$3	# tmp140, tmp139, tmp140, tmp141
	stqd	$5,48($sp)	#, tmp140
	.loc 1 151 0
	lqd	$6,32($sp)	#, tmp143
	shufb	$8,$7,$6,$3	# tmp143, tmp142, tmp143, tmp141
	stqd	$8,32($sp)	#, tmp143
	.loc 1 152 0
	ai	$sp,$sp,64	#,,
.L31:
	bi	$lr
.LFE27:
	.size	set_stack, .-set_stack
	.align	3
	.global	use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
	.loc 1 155 0
	.loc 1 156 0
	il	$4,254	#, tmp143
	.loc 1 155 0
	stqd	$sp,-64($sp)	#,
	ai	$sp,$sp,-64	#,,
.LCFI1:
	.loc 1 156 0
	cwd	$3,0($sp)	#, tmp145
	.loc 1 157 0
	il	$7,255	#, tmp146
	.loc 1 159 0
	hbr	.L33,$lr	#,
	.loc 1 156 0
	lqd	$2,48($sp)	#, tmp144
	shufb	$5,$4,$2,$3	# tmp144, tmp143, tmp144, tmp145
	stqd	$5,48($sp)	#, tmp144
	.loc 1 157 0
	lqd	$6,32($sp)	#, tmp147
	shufb	$8,$7,$6,$3	# tmp147, tmp146, tmp147, tmp145
	stqd	$8,32($sp)	#, tmp147
	.loc 1 158 0
	lqd	$9,48($sp)	#, tmp149
	lqd	$10,32($sp)	#, tmp150
	.loc 1 159 0
	ai	$sp,$sp,64	#,,
	a	$3,$9,$10	#, a.1, b.2
.L33:
	bi	$lr
.LFE28:
	.size	use_stack, .-use_stack
	.align	3
	.global	call_self
	.type	call_self, @function
call_self:
.LFB29:
	.loc 1 162 0
	stqd	$lr,16($sp)	#,
	stqd	$sp,-32($sp)	#,
	ai	$sp,$sp,-32	#,,
.LCFI2:
	.loc 1 163 0
	brsl	$lr,call_self	# call_self
.LVL24:
	.loc 1 164 0
	ai	$sp,$sp,32	#,,
	lqd	$lr,16($sp)	#,
	bi	$lr
.LFE29:
	.size	call_self, .-call_self
	.align	3
	.global	call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
	.loc 1 167 0
.LVL25:
	stqd	$lr,16($sp)	#,
	stqd	$sp,-32($sp)	#,
	ai	$sp,$sp,-32	#,,
.LCFI3:
	.loc 1 168 0
	brsl	$lr,return_arg1	# return_arg1
.LVL26:
	.loc 1 169 0
	ai	$sp,$sp,32	#,,
	lqd	$lr,16($sp)	#,
	bi	$lr
.LFE30:
	.size	call_simple, .-call_simple
	.align	3
	.global	call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
	.loc 1 172 0
	.loc 1 173 0
	il	$3,254	#,
	.loc 1 172 0
	stqd	$lr,16($sp)	#,
	nop	127	#
	stqd	$sp,-32($sp)	#,
	ai	$sp,$sp,-32	#,,
.LCFI4:
	.loc 1 173 0
	brsl	$lr,return_arg1	# return_arg1
.LVL27:
	.loc 1 174 0
	ai	$sp,$sp,32	#,,
	ai	$3,$3,1	#,,
	lqd	$lr,16($sp)	#,
	bi	$lr
.LFE31:
	.size	call_complex1, .-call_complex1
	.align	3
	.global	call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
	.loc 1 177 0
.LVL28:
	.loc 1 178 0
	nop	127	#
	hbrr	.L38,return_arg1	#,
	ori	$3,$4,0	#, b
.LVL29:
	.loc 1 177 0
	stqd	$80,-16($sp)	#,
.LCFI5:
	ori	$80,$4,0	# b, b
	stqd	$lr,16($sp)	#,
	.loc 1 178 0
	nop	$127	#
	.loc 1 177 0
	stqd	$sp,-48($sp)	#,
	ai	$sp,$sp,-48	#,,
.LCFI6:
	.loc 1 178 0
	nop	$127	#
.L38:
	brsl	$lr,return_arg1	# return_arg1
.LVL30:
	.loc 1 180 0
	ai	$sp,$sp,48	#,,
	.loc 1 178 0
	nop	127	#
	stqr	$3,static_value	#, tmp143
	.loc 1 180 0
	ori	$3,$80,0	#, b
	lqd	$lr,16($sp)	#,
	lqd	$80,-16($sp)	#,
.LVL31:
	bi	$lr
.LFE32:
	.size	call_complex2, .-call_complex2
	.align	3
	.global	call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
	.loc 1 183 0
.LVL32:
	stqd	$lr,16($sp)	#,
	stqd	$sp,-32($sp)	#,
	ai	$sp,$sp,-32	#,,
.LCFI7:
	.loc 1 184 0
	bisl	$lr,$3	# *f_1(D)
.LVL33:
	.loc 1 185 0
	ai	$sp,$sp,32	#,,
	lqd	$lr,16($sp)	#,
	bi	$lr
.LFE33:
	.size	call_pointer, .-call_pointer
	.align	3
	.global	condition
	.type	condition, @function
condition:
.LFB34:
	.loc 1 188 0
.LVL34:
	.loc 1 189 0
	ceq	$3,$3,$4	# tmp143, a, b
.LVL35:
	.loc 1 190 0
	il	$2,1	#, tmp145
	ceqi	$5,$3,0	# tmp146, tmp143,
	selb	$4,$2,$4,$5	# b, tmp145, b, tmp146
.LVL36:
	.loc 1 192 0
	ai	$3,$4,1	#, b,
	bi	$lr
.LFE34:
	.size	condition, .-condition
	.align	3
	.global	loop
	.type	loop, @function
loop:
.LFB35:
	.loc 1 195 0
.LVL37:
	.loc 1 197 0
	hbrr	.L48,.L45	#,
.LVL38:
	cgti	$2,$3,0	# tmp150, n,
	.loc 1 195 0
	ori	$5,$3,0	# n, n
	.loc 1 197 0
	brz	$2,.L46	# tmp150,,
	.loc 1 196 0 discriminator 2
	il	$3,0	#, sum
.LVL39:
	.loc 1 197 0 discriminator 2
	il	$6,0	#, i
.LVL40:
.L45:
	.loc 1 198 0 discriminator 2
	a	$3,$3,$6	# sum, sum, i
.LVL41:
	.loc 1 197 0 discriminator 2
	ai	$6,$6,1	# i, i,
.LVL42:
	ceq	$4,$6,$5	# tmp151, i, n
.L48:
	brz	$4,.L45	# tmp151,,
	nop	127	#
	bi	$lr
.LVL43:
.L46:
	.loc 1 196 0
	il	$3,0	#, sum
.LVL44:
	.loc 1 200 0
	bi	$lr
.LFE35:
	.size	loop, .-loop
	.align	3
	.global	many_args
	.type	many_args, @function
many_args:
.LFB36:
	.loc 1 204 0
.LVL45:
	.loc 1 205 0
	a	$3,$3,$6	# tmp152, a0, a3
.LVL46:
	a	$2,$3,$8	# tmp153, tmp152, a5
	.loc 1 206 0
	a	$3,$2,$10	#, tmp153, a7
	bi	$lr
.LFE36:
	.size	many_args, .-many_args
	.align	3
	.global	call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
	.loc 1 209 0
	.loc 1 210 0
	il	$3,0	#,
	hbrr	.L51,many_args	#,
	il	$4,1	#,
	.loc 1 209 0
	stqd	$lr,16($sp)	#,
	.loc 1 210 0
	il	$5,2	#,
	.loc 1 209 0
	stqd	$sp,-32($sp)	#,
	.loc 1 210 0
	il	$6,3	#,
	.loc 1 209 0
	ai	$sp,$sp,-32	#,,
.LCFI8:
	.loc 1 210 0
	il	$7,4	#,
	il	$8,5	#,
	il	$9,6	#,
	il	$10,7	#,
.L51:
	brsl	$lr,many_args	# many_args
.LVL47:
	.loc 1 211 0
	ai	$sp,$sp,32	#,,
	lqd	$lr,16($sp)	#,
	bi	$lr
.LFE37:
	.size	call_many_args, .-call_many_args
	.align	3
	.global	direct
	.type	direct, @function
direct:
.LFB38:
	.loc 1 215 0
	.loc 1 216 0
# 216 "spu-elf.c" 1
	nop
# 0 "" 2
	bi	$lr
.LFE38:
	.size	direct, .-direct
	.align	3
	.global	binary
	.type	binary, @function
binary:
.LFB39:
	.loc 1 223 0
	.loc 1 224 0
# 224 "spu-elf.c" 1
	.align 4
# 0 "" 2
	.loc 1 225 0
# 225 "spu-elf.c" 1
	.int 0x0
# 0 "" 2
	bi	$lr
.LFE39:
	.size	binary, .-binary
	.align	3
	.global	main
	.type	main, @function
main:
.LFB40:
	.loc 1 231 0
	.loc 1 233 0
	il	$3,0	#,
	bi	$lr
.LFE40:
	.size	main, .-main
	.global	static_long
.data
	.align	4
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.long	305419896
	.global	static_value
	.align	4
	.type	static_value, @object
	.size	static_value, 4
static_value:
	.long	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -16
	.byte	0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.align	2
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.align	2
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.align	2
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.align	2
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.align	2
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.align	2
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.align	2
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.align	2
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.align	2
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.align	2
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.align	2
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.align	2
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.align	2
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.align	2
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI5-.LFB32
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.align	2
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.align	2
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.align	2
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI8-.LFB37
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0
	.sleb128 -1
	.align	2
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.align	2
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.align	2
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.align	2
.LEFDE80:
.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x76a
	.2byte	0x2
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.long	0x56
	.byte	0x1
	.byte	0x53
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x1ce
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.long	0x56
	.long	.LLST0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.long	0x56
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"add"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x56
	.long	.LFB13
	.long	.LFE13
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x204
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x42
	.long	0x56
	.long	.LLST1
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.long	0x56
	.byte	0x1
	.byte	0x54
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x245
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.long	.LLST2
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.long	0x56
	.byte	0x1
	.byte	0x55
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x270
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.long	0x56
	.long	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"inc"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x56
	.long	.LFB16
	.long	.LFE16
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x29b
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x51
	.long	0x56
	.long	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"or"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x56
	.long	.LFB17
	.long	.LFE17
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x2d0
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.long	0x56
	.long	.LLST5
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.long	0x56
	.byte	0x1
	.byte	0x54
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x2fb
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.long	0x56
	.long	.LLST6
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x326
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.long	0x326
	.long	.LLST7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x32c
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x356
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.long	0x326
	.byte	0x1
	.byte	0x53
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x381
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.long	0x381
	.long	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x387
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x3b1
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.long	0x381
	.byte	0x1
	.byte	0x53
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x3dc
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.long	0x3dc
	.long	.LLST9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x25
	.uleb128 0x6
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x83
	.long	0x3fa
	.long	.LFB24
	.long	.LFE24
	.byte	0x2
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x43d
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.long	0x56
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x94
	.long	.LFB27
	.long	.LFE27
	.long	.LLST10
	.byte	0x1
	.long	0x46f
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.long	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.long	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x9a
	.long	0x56
	.long	.LFB28
	.long	.LFE28
	.long	.LLST11
	.byte	0x1
	.long	0x4a5
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.long	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.long	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0xa1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST12
	.byte	0x1
	.long	0x4c8
	.uleb128 0x12
	.long	.LVL24
	.long	0x4a5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0x56
	.long	.LFB30
	.long	.LFE30
	.long	.LLST13
	.byte	0x1
	.long	0x505
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.long	0x56
	.long	.LLST14
	.uleb128 0x14
	.long	.LVL26
	.long	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0xab
	.long	0x56
	.long	.LFB31
	.long	.LFE31
	.long	.LLST15
	.byte	0x1
	.long	0x533
	.uleb128 0x14
	.long	.LVL27
	.long	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x56
	.long	.LFB32
	.long	.LFE32
	.long	.LLST16
	.byte	0x1
	.long	0x57d
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.long	0x56
	.long	.LLST17
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.long	0x56
	.long	.LLST18
	.uleb128 0x14
	.long	.LVL30
	.long	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0x92
	.uleb128 0x50
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST19
	.byte	0x1
	.long	0x5ae
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.long	0x5b4
	.long	.LLST20
	.uleb128 0x17
	.long	.LVL33
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	0x56
	.uleb128 0xc
	.byte	0x4
	.long	0x5ae
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x5f2
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.long	0x56
	.long	.LLST21
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.long	0x56
	.long	.LLST22
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x639
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.long	0x56
	.long	.LLST23
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x56
	.long	.LLST24
	.uleb128 0x19
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.long	0x56
	.long	.LLST25
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.long	0x6b9
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.long	.LLST26
	.uleb128 0x9
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.long	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x1
	.byte	0x58
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x1
	.byte	0x59
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.long	0x56
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xd0
	.long	0x56
	.long	.LFB37
	.long	.LFE37
	.long	.LLST27
	.byte	0x1
	.long	0x709
	.uleb128 0x14
	.long	.LVL47
	.long	0x639
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.byte	0x36
	.uleb128 0x15
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xd6
	.long	.LFB38
	.long	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0xde
	.long	.LFB39
	.long	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF40
	.byte	0x1
	.byte	0x80
	.long	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	static_value
	.uleb128 0x1a
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
	.uleb128 0xa
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
.Ldebug_loc0:
.LLST0:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL2-.Ltext0
	.long	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL4-.Ltext0
	.long	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL6-.Ltext0
	.long	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL8-.Ltext0
	.long	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL9-.Ltext0
	.long	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL10-.Ltext0
	.long	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL12-.Ltext0
	.long	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL14-.Ltext0
	.long	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL16-.Ltext0
	.long	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL19-.Ltext0
	.long	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL22-.Ltext0
	.long	.LFE23-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LFB27-.Ltext0
	.long	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI0-.Ltext0
	.long	.LFE27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.long	0
	.long	0
.LLST11:
	.long	.LFB28-.Ltext0
	.long	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI1-.Ltext0
	.long	.LFE28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.long	0
	.long	0
.LLST12:
	.long	.LFB29-.Ltext0
	.long	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI2-.Ltext0
	.long	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.long	0
	.long	0
.LLST13:
	.long	.LFB30-.Ltext0
	.long	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI3-.Ltext0
	.long	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.long	0
	.long	0
.LLST14:
	.long	.LVL25-.Ltext0
	.long	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL26-1-.Ltext0
	.long	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LFB31-.Ltext0
	.long	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI4-.Ltext0
	.long	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.long	0
	.long	0
.LLST16:
	.long	.LFB32-.Ltext0
	.long	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI6-.Ltext0
	.long	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.long	0
	.long	0
.LLST17:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL29-.Ltext0
	.long	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL28-.Ltext0
	.long	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.long	.LVL30-1-.Ltext0
	.long	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.long	.LVL31-.Ltext0
	.long	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST19:
	.long	.LFB33-.Ltext0
	.long	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI7-.Ltext0
	.long	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.long	0
	.long	0
.LLST20:
	.long	.LVL32-.Ltext0
	.long	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL33-1-.Ltext0
	.long	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL35-.Ltext0
	.long	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL34-.Ltext0
	.long	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.long	.LVL36-.Ltext0
	.long	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST23:
	.long	.LVL37-.Ltext0
	.long	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL39-.Ltext0
	.long	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x55
	.long	.LVL43-.Ltext0
	.long	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL44-.Ltext0
	.long	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST24:
	.long	.LVL38-.Ltext0
	.long	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42-.Ltext0
	.long	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.long	.LVL43-.Ltext0
	.long	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL38-.Ltext0
	.long	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL41-.Ltext0
	.long	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL43-.Ltext0
	.long	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.long	.LVL46-.Ltext0
	.long	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LFB37-.Ltext0
	.long	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.long	.LCFI8-.Ltext0
	.long	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.2byte	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF20:
	.string	"store_long"
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
.LASF43:
	.string	"spu-elf.c"
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
