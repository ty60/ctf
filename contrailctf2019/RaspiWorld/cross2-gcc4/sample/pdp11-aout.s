;# GNU C (GCC) version 4.7.2 (pdp11-aout)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc pdp11-aout.c -auxbase-strip pdp11-aout.s -O
;# -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
;# options enabled:  -fauto-inc-dec -fbranch-count-reg
;# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
;# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
;# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
;# -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability
;# -fident -fif-conversion -fif-conversion2 -finline -finline-atomics
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
;# -fzero-initialized-in-bss -m45 -mbcopy-builtin -mbranch-cheap -mdec-asm
;# -mfloat64 -mfpu -mint16

	.text

	.even
	.globl _null
_null:
	rts pc
	.even
	.globl _return_zero
_return_zero:
	clr r0	;#
	rts pc
	.even
	.globl _return_one
_return_one:
	mov $01, r0	;#,
	rts pc
	.even
	.globl _return_int_size
_return_int_size:
	mov $02, r0	;#,
	rts pc
	.even
	.globl _return_pointer_size
_return_pointer_size:
	mov $02, r0	;#,
	rts pc
	.even
	.globl _return_short_size
_return_short_size:
	mov $02, r0	;#,
	rts pc
	.even
	.globl _return_long_size
_return_long_size:
	mov $04, r0	;#,
	rts pc
	.even
	.globl _return_short
_return_short:
	mov $073610, r0	;#,
	rts pc
	.even
	.globl _return_long
_return_long:
	mov $073610,r0	;#,
	mov $-063126,r1	;#,
	rts pc
	.even
	.globl _return_short_upper
_return_short_upper:
	mov $-022, r0	;#,
	rts pc
	.even
	.globl _return_long_upper
_return_long_upper:
	mov $-022,r0	;#,
	mov $-021064,r1	;#,
	rts pc
	.even
	.globl _return_arg1
_return_arg1:
	mov 02(sp), r0	;# a,
	rts pc
	.even
	.globl _return_arg2
_return_arg2:
	mov 04(sp), r0	;# b,
	rts pc
	.even
	.globl _add
_add:
	mov 02(sp), r0	;# a,
	add 04(sp), r0	;# b,
	rts pc
	.even
	.globl _add3
_add3:
	mov 02(sp), r0	;# a, tmp29
	add 04(sp), r0	;# b, tmp29
	add 06(sp), r0	;# c,
	rts pc
	.even
	.globl _add_two
_add_two:
	mov 02(sp), r0	;# a,
	add $02, r0	;#,
	rts pc
	.even
	.globl _inc
_inc:
	mov 02(sp), r0	;# a,
	inc r0	;#
	rts pc
	.even
	.globl _or
_or:
	mov 04(sp), r0	;# b,
	bis 02(sp), r0	;# a,
	rts pc
	.even
	.globl _or_one
_or_one:
	mov 02(sp), r0	;# a,
	bis $01, r0	;#,
	rts pc
	.even
	.globl _load
_load:
	mov @02(sp), r0	;# *p_1(D), D.1026
	rts pc
	.even
	.globl _store
_store:
	mov $0377, @02(sp)	;#, *p_1(D)
	rts pc
	.even
	.globl _load_long
_load_long:
	mov 02(sp), r0	;# p, p
	mov (r0),r0	;# *p_1(D),
	mov 02(r0),r1	;# *p_1(D),
	rts pc
	.even
	.globl _store_long
_store_long:
	mov 02(sp), r0	;# p, p
	mov $010442,(r0)	;#, *p_1(D)
	mov $031504,02(r0)	;#, *p_1(D)
	rts pc
	.even
	.globl _member
_member:
	mov 02(sp), r0	;# p, p
	mov $01, 02(r0)	;#, p_1(D)->b
	mov 04(r0), r0	;# p_1(D)->c,
	rts pc
	.even
	.globl _get_static_value_addr
_get_static_value_addr:
	mov $_static_value, r0	;#,
	rts pc
	.even
	.globl _get_static_value
_get_static_value:
	mov _static_value, r0	;# static_value,
	rts pc
	.even
	.globl _set_static_value
_set_static_value:
	mov 02(sp), _static_value	;# a, static_value
	rts pc
	.even
	.globl _set_stack
_set_stack:
	add $-04, sp	;#,
	mov $0376, 02(sp)	;#, a
	mov $0377, (sp)	;#, b
	add $04, sp	;#,
	rts pc
	.even
	.globl _use_stack
_use_stack:
	add $-04, sp	;#,
	mov $0376, 02(sp)	;#, a
	mov $0377, (sp)	;#, b
	mov 02(sp), r1	;# a, a.1
	mov (sp), r0	;# b, b.2
	add r1, r0	;# a.1,
	add $04, sp	;#,
	rts pc
	.even
	.globl _call_self
_call_self:
	jsr pc, _call_self	;# call_self
	rts pc
	.even
	.globl _call_simple
_call_simple:
	mov 02(sp), -(sp)	;# a,
	jsr pc, _return_arg1	;# return_arg1
	add $02, sp	;#,
	rts pc
	.even
	.globl _call_complex1
_call_complex1:
	mov $0376, -(sp)	;#,
	jsr pc, _return_arg1	;# return_arg1
	add $02, sp	;#,
	inc r0	;#
	rts pc
	.even
	.globl _call_complex2
_call_complex2:
	mov r2, -(sp)	;#,
	mov 06(sp), r2	;# b, b
	mov r2, -(sp)	;# b,
	jsr pc, _return_arg1	;# return_arg1
	add $02, sp	;#,
	mov r0, _static_value	;#, static_value
	mov r2, r0	;# b,
	mov (sp)+, r2	;#,
	rts pc
	.even
	.globl _call_pointer
_call_pointer:
	jsr pc, @02(sp)	;# *f_1(D)
	rts pc
	.even
	.globl _condition
_condition:
	mov 04(sp), r0	;# b, b
	cmp 02(sp),r0	;# a, b
	bne L_36	;#
	mov $01, r0	;#, b
L_36:
	inc r0	;#
	rts pc
	.even
	.globl _loop
_loop:
	mov r2, -(sp)	;#,
	mov 04(sp), r2	;# n, n
	ble L_41	;#
	clr r0	;# sum
	clr r1	;# i
L_40:
	add r1, r0	;# i, sum
	inc r1	;# i
	cmp r1,r2	;# i, n
	bne L_40	;#
	br L_39	;#
L_41:
	clr r0	;# sum
L_39:
	mov (sp)+, r2	;#,
	rts pc
	.even
	.globl _many_args
_many_args:
	mov 02(sp), r0	;# a0, tmp35
	add 010(sp), r0	;# a3, tmp35
	add 014(sp), r0	;# a5, tmp36
	add 020(sp), r0	;# a7,
	rts pc
	.even
	.globl _call_many_args
_call_many_args:
	mov $07, -(sp)	;#,
	mov $06, -(sp)	;#,
	mov $05, -(sp)	;#,
	mov $04, -(sp)	;#,
	mov $03, -(sp)	;#,
	mov $02, -(sp)	;#,
	mov $01, -(sp)	;#,
	clr -(sp)	;#
	jsr pc, _many_args	;# many_args
	add $020, sp	;#,
	rts pc
	.even
	.globl _direct
_direct:
;# 216 "pdp11-aout.c" 1
	nop
;# 0 "" 2
	rts pc
	.even
	.globl _binary
_binary:
;# 224 "pdp11-aout.c" 1
	.align 4
;# 0 "" 2
;# 225 "pdp11-aout.c" 1
	.int 0x0
;# 0 "" 2
	rts pc
	.even
	.globl _main
_main:
	setd
	seti
	jsr pc, ___main	;#
	clr r0	;#
	rts pc
	.globl _static_long
	.data

	.even
_static_long:
	.word	011064 /* short */
	.word	053170 /* short */
	.globl _static_value
	.even
_static_value:
	.word	012 /* short */
