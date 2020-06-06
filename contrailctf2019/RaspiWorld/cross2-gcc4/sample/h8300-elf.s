	.file	"h8300-elf.c"
;# GNU C (GCC) version 4.7.2 (h8300-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc h8300-elf.c -auxbase-strip h8300-elf.s -O
;# -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
;# options enabled:  -fauto-inc-dec -fbranch-count-reg
;# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
;# -fdebug-types-section -fdefer-pop -fdelayed-branch
;# -fdelete-null-pointer-checks -fearly-inlining
;# -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
;# -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
;# -fif-conversion -fif-conversion2 -finline -finline-atomics
;# -finline-functions-called-once -fipa-profile -fipa-pure-const
;# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
;# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;# -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
;# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
;# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
;# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
;# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
;# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
;# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
;# -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
;# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
;# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
;# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
;# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
;# -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
;# -fzero-initialized-in-bss

	.section .text
	.align 1
	.global _null
_null:
	rts
	.size	_null, .-_null
	.align 1
	.global _return_zero
_return_zero:
	sub.w	r0,r0	;#
	rts
	.size	_return_zero, .-_return_zero
	.align 1
	.global _return_one
_return_one:
	mov.w	#1,r0	;#,
	rts
	.size	_return_one, .-_return_one
	.align 1
	.global _return_int_size
_return_int_size:
	mov.w	#2,r0	;#,
	rts
	.size	_return_int_size, .-_return_int_size
	.align 1
	.global _return_pointer_size
_return_pointer_size:
	mov.w	#2,r0	;#,
	rts
	.size	_return_pointer_size, .-_return_pointer_size
	.align 1
	.global _return_short_size
_return_short_size:
	mov.w	#2,r0	;#,
	rts
	.size	_return_short_size, .-_return_short_size
	.align 1
	.global _return_long_size
_return_long_size:
	mov.w	#4,r0	;#,
	rts
	.size	_return_long_size, .-_return_long_size
	.align 1
	.global _return_short
_return_short:
	mov.w	#30600,r0	;#,
	rts
	.size	_return_short, .-_return_short
	.align 1
	.global _return_long
_return_long:
	mov.w	#30600,r0	;#,
	mov.w	#39338,r1	;#,
	rts
	.size	_return_long, .-_return_long
	.align 1
	.global _return_short_upper
_return_short_upper:
	mov.w	#-18,r0	;#,
	rts
	.size	_return_short_upper, .-_return_short_upper
	.align 1
	.global _return_long_upper
_return_long_upper:
	mov.w	#65518,r0	;#,
	mov.w	#56780,r1	;#,
	rts
	.size	_return_long_upper, .-_return_long_upper
	.align 1
	.global _return_arg1
_return_arg1:
	rts
	.size	_return_arg1, .-_return_arg1
	.align 1
	.global _return_arg2
_return_arg2:
	mov.w	r1,r0	;# b,
	rts
	.size	_return_arg2, .-_return_arg2
	.align 1
	.global _add
_add:
	add.w	r1,r0	;# b,
	rts
	.size	_add, .-_add
	.align 1
	.global _add3
_add3:
	add.w	r1,r0	;# b, tmp25
	add.w	r2,r0	;# c,
	rts
	.size	_add3, .-_add3
	.align 1
	.global _add_two
_add_two:
	adds	#2,r0	;#,
	rts
	.size	_add_two, .-_add_two
	.align 1
	.global _inc
_inc:
	adds	#1,r0	;#,
	rts
	.size	_inc, .-_inc
	.align 1
	.global _or
_or:
	or	r1l,r0l	;# b,
	or	r1h,r0h	;# b,
	rts
	.size	_or, .-_or
	.align 1
	.global _or_one
_or_one:
	or	#1,r0l	;#,
	rts
	.size	_or_one, .-_or_one
	.align 1
	.global _load
_load:
	mov.w	@r0,r0	;# *p_1(D), D.1031
	rts
	.size	_load, .-_load
	.align 1
	.global _store
_store:
	mov.w	#255,r2	;#, tmp19
	mov.w	r2,@r0	;# tmp19, *p_1(D)
	rts
	.size	_store, .-_store
	.align 1
	.global _load_long
_load_long:
	mov.w	@(2,r0),r1	;# *p_1(D), D.1029
	mov.w	@r0,r0	;# *p_1(D), D.1029
	rts
	.size	_load_long, .-_load_long
	.align 1
	.global _store_long
_store_long:
	mov.w	#4386,r2	;#, tmp19
	mov.w	#13124,r3	;#, tmp19
	mov.w	r2,@r0	;# tmp19, *p_1(D)
	mov.w	r3,@(2,r0)	;# tmp19, *p_1(D)
	rts
	.size	_store_long, .-_store_long
	.align 1
	.global _member
_member:
	mov.w	#1,r2	;#, tmp21
	mov.w	r2,@(2,r0)	;# tmp21, p_1(D)->b
	mov.w	@(4,r0),r0	;# p_1(D)->c,
	rts
	.size	_member, .-_member
	.align 1
	.global _get_static_value_addr
_get_static_value_addr:
	mov.w	#_static_value,r0	;#,
	rts
	.size	_get_static_value_addr, .-_get_static_value_addr
	.align 1
	.global _get_static_value
_get_static_value:
	mov.w	@_static_value:16,r0	;# static_value,
	rts
	.size	_get_static_value, .-_get_static_value
	.align 1
	.global _set_static_value
_set_static_value:
	mov.w	r0,@_static_value:16	;# a, static_value
	rts
	.size	_set_static_value, .-_set_static_value
	.align 1
	.global _set_stack
_set_stack:
	subs	#2,r7	;#,
	subs	#2,r7	;#,
	mov.w	#254,r2	;#, tmp18
	mov.w	r2,@(2,r7)	;# tmp18, a
	mov.b	#-1,r2l	;#,
	mov.w	r2,@r7	;# tmp19, b
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	rts
	.size	_set_stack, .-_set_stack
	.align 1
	.global _use_stack
_use_stack:
	subs	#2,r7	;#,
	subs	#2,r7	;#,
	mov.w	#254,r2	;#, tmp22
	mov.w	r2,@(2,r7)	;# tmp22, a
	mov.b	#-1,r2l	;#,
	mov.w	r2,@r7	;# tmp23, b
	mov.w	@(2,r7),r0	;# a, a___1
	mov.w	@r7,r2	;# b, b___2
	add.w	r2,r0	;# b___2,
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	rts
	.size	_use_stack, .-_use_stack
	.align 1
	.global _call_self
_call_self:
	jsr	@_call_self	;# call_self
	rts
	.size	_call_self, .-_call_self
	.align 1
	.global _call_simple
_call_simple:
	jsr	@_return_arg1	;# return_arg1
	rts
	.size	_call_simple, .-_call_simple
	.align 1
	.global _call_complex1
_call_complex1:
	mov.w	#254,r0	;#,
	jsr	@_return_arg1	;# return_arg1
	adds	#1,r0	;#,
	rts
	.size	_call_complex1, .-_call_complex1
	.align 1
	.global _call_complex2
_call_complex2:
	mov.w	r4,@-r7	;#,
	mov.w	r1,r4	;# b, b
	mov.w	r1,r0	;# b,
	jsr	@_return_arg1	;# return_arg1
	mov.w	r0,@_static_value:16	;#, static_value
	mov.w	r4,r0	;# b,
	mov.w	@r7+,r4	;#,
	rts
	.size	_call_complex2, .-_call_complex2
	.align 1
	.global _call_pointer
_call_pointer:
	jsr	@r0	;# *f_1(D)
	rts
	.size	_call_pointer, .-_call_pointer
	.align 1
	.global _condition
_condition:
	cmp.w	r1,r0	;# b, a
	bne	.L36	;#,
	mov.w	#1,r1	;#, b
.L36:
	mov.w	r1,r0	;# b,
	adds	#1,r0	;#,
	rts
	.size	_condition, .-_condition
	.align 1
	.global _loop
_loop:
	mov.w	r0,r0	;# n
	ble	.L41	;#,
	sub.w	r3,r3	;# sum
	sub.w	r2,r2	;# i
.L40:
	add.w	r2,r3	;# i, sum
	adds	#1,r2	;#, i
	cmp.w	r0,r2	;# n, i
	bne	.L40	;#,
	bra	.L39	;#
.L41:
	sub.w	r3,r3	;# sum
.L39:
	mov.w	r3,r0	;# sum,
	rts
	.size	_loop, .-_loop
	.align 1
	.global _many_args
_many_args:
	mov.w	@(2,r7),r2	;# a3, a3
	add.w	r2,r0	;# a3, tmp31
	mov.w	@(6,r7),r3	;# a5, a5
	add.w	r3,r0	;# a5, tmp32
	mov.w	@(10,r7),r3	;# a7, a7
	add.w	r3,r0	;# a7,
	rts
	.size	_many_args, .-_many_args
	.align 1
	.global _call_many_args
_call_many_args:
	mov.w	#7,r2	;#, tmp20
	mov.w	r2,@-r7	;# tmp20,
	mov.b	#6,r2l	;#,
	mov.w	r2,@-r7	;# tmp21,
	mov.b	#5,r2l	;#,
	mov.w	r2,@-r7	;# tmp22,
	mov.b	#4,r2l	;#,
	mov.w	r2,@-r7	;# tmp23,
	mov.b	#3,r2l	;#,
	mov.w	r2,@-r7	;# tmp24,
	mov.b	#2,r2l	;#,
	mov.w	#1,r1	;#,
	sub.w	r0,r0	;#
	jsr	@_many_args	;# many_args
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	adds	#2,r7	;#,
	rts
	.size	_call_many_args, .-_call_many_args
	.align 1
	.global _direct
_direct:
; #APP
;# 216 "h8300-elf.c" 1
	nop
;# 0 "" 2
; #NO_APP
	rts
	.size	_direct, .-_direct
	.align 1
	.global _binary
_binary:
; #APP
;# 224 "h8300-elf.c" 1
	.align 4
;# 0 "" 2
;# 225 "h8300-elf.c" 1
	.int 0x0
;# 0 "" 2
; #NO_APP
	rts
	.size	_binary, .-_binary
	.align 1
	.global _main
_main:
	sub.w	r0,r0	;#
	rts
	.size	_main, .-_main
	.global _static_long
	.section .data
	.align 1
	.type	_static_long, @object
	.size	_static_long, 4
_static_long:
	.word	4660
	.word	22136
	.global _static_value
	.align 1
	.type	_static_value, @object
	.size	_static_value, 2
_static_value:
	.word	10
	.ident	"GCC: (GNU) 4.7.2"
	.end
