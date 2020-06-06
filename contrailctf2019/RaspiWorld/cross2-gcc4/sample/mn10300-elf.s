	.file	"mn10300-elf.c"
# GNU C (GCC) version 4.7.2 (mn10300-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc mn10300-elf.c -auxbase-strip mn10300-elf.s -g
# -O -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
# -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
# -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss -mliw
# -mmult-bug -mreturn-pointer-on-d0 -msetlb

	.section .text
.Ltext0:
	.global _null
	.type	_null, @function
_null:
.LFB0:
	.file 1 "mn10300-elf.c"
	.loc 1 2 0
	retf [],0
.LFE0:
	.size	_null, .-_null
	.global _return_zero
	.type	_return_zero, @function
_return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 9 0
	mov 0,d0	#,
	retf [],0
.LFE1:
	.size	_return_zero, .-_return_zero
	.global _return_one
	.type	_return_one, @function
_return_one:
.LFB2:
	.loc 1 12 0
	.loc 1 14 0
	mov 1,d0	#,
	retf [],0
.LFE2:
	.size	_return_one, .-_return_one
	.global _return_int_size
	.type	_return_int_size, @function
_return_int_size:
.LFB3:
	.loc 1 17 0
	.loc 1 19 0
	mov 4,d0	#,
	retf [],0
.LFE3:
	.size	_return_int_size, .-_return_int_size
	.global _return_pointer_size
	.type	_return_pointer_size, @function
_return_pointer_size:
.LFB4:
	.loc 1 22 0
	.loc 1 24 0
	mov 4,d0	#,
	retf [],0
.LFE4:
	.size	_return_pointer_size, .-_return_pointer_size
	.global _return_short_size
	.type	_return_short_size, @function
_return_short_size:
.LFB5:
	.loc 1 27 0
	.loc 1 29 0
	mov 2,d0	#,
	retf [],0
.LFE5:
	.size	_return_short_size, .-_return_short_size
	.global _return_long_size
	.type	_return_long_size, @function
_return_long_size:
.LFB6:
	.loc 1 32 0
	.loc 1 34 0
	mov 4,d0	#,
	retf [],0
.LFE6:
	.size	_return_long_size, .-_return_long_size
	.global _return_short
	.type	_return_short, @function
_return_short:
.LFB7:
	.loc 1 37 0
	.loc 1 39 0
	mov 30600,d0	#,
	retf [],0
.LFE7:
	.size	_return_short, .-_return_short
	.global _return_long
	.type	_return_long, @function
_return_long:
.LFB8:
	.loc 1 42 0
	.loc 1 44 0
	mov 2005440938,d0	#,
	retf [],0
.LFE8:
	.size	_return_long, .-_return_long
	.global _return_short_upper
	.type	_return_short_upper, @function
_return_short_upper:
.LFB9:
	.loc 1 47 0
	.loc 1 49 0
	mov -18,d0	#,
	retf [],0
.LFE9:
	.size	_return_short_upper, .-_return_short_upper
	.global _return_long_upper
	.type	_return_long_upper, @function
_return_long_upper:
.LFB10:
	.loc 1 52 0
	.loc 1 54 0
	mov -1122868,d0	#,
	retf [],0
.LFE10:
	.size	_return_long_upper, .-_return_long_upper
	.global _return_arg1
	.type	_return_arg1, @function
_return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	.loc 1 59 0
	retf [],0
.LFE11:
	.size	_return_arg1, .-_return_arg1
	.global _return_arg2
	.type	_return_arg2, @function
_return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	.loc 1 64 0
	mov d1,d0	# b,
.LVL2:
	retf [],0
.LFE12:
	.size	_return_arg2, .-_return_arg2
	.global _add
	.type	_add, @function
_add:
.LFB13:
	.loc 1 67 0
.LVL3:
	.loc 1 69 0
	add d1,d0	# b,
.LVL4:
	retf [],0
.LFE13:
	.size	_add, .-_add
	.global _add3
	.type	_add3, @function
_add3:
.LFB14:
	.loc 1 72 0
.LVL5:
	.loc 1 73 0
	add d1,d0	# b, tmp65
.LVL6:
	.loc 1 74 0
	mov (12,sp),a0	# c, c
	add a0,d0	# c,
	retf [],0
.LFE14:
	.size	_add3, .-_add3
	.global _add_two
	.type	_add_two, @function
_add_two:
.LFB15:
	.loc 1 77 0
.LVL7:
	.loc 1 79 0
	add 2,d0	#,
.LVL8:
	retf [],0
.LFE15:
	.size	_add_two, .-_add_two
	.global _inc
	.type	_inc, @function
_inc:
.LFB16:
	.loc 1 82 0
.LVL9:
	.loc 1 84 0
	inc d0	#
.LVL10:
	retf [],0
.LFE16:
	.size	_inc, .-_inc
	.global _or
	.type	_or, @function
_or:
.LFB17:
	.loc 1 87 0
.LVL11:
	.loc 1 89 0
	or d1,d0	# b,
.LVL12:
	retf [],0
.LFE17:
	.size	_or, .-_or
	.global _or_one
	.type	_or_one, @function
_or_one:
.LFB18:
	.loc 1 92 0
.LVL13:
	.loc 1 94 0
	or 1,d0	#,
.LVL14:
	retf [],0
.LFE18:
	.size	_or_one, .-_or_one
	.global _load
	.type	_load, @function
_load:
.LFB19:
	.loc 1 97 0
.LVL15:
	.loc 1 98 0
	mov d0,a0	# p,
	mov (a0),d0	# *p_1(D), D.1028
.LVL16:
	.loc 1 99 0
	retf [],0
.LFE19:
	.size	_load, .-_load
	.global _store
	.type	_store, @function
_store:
.LFB20:
	.loc 1 102 0
.LVL17:
	.loc 1 103 0
	mov 255,d1	#, tmp59
	mov d0,a0	# p,
	mov d1,(a0)	# tmp59, *p_1(D)
	retf [],0
.LFE20:
	.size	_store, .-_store
	.global _load_long
	.type	_load_long, @function
_load_long:
.LFB21:
	.loc 1 107 0
.LVL18:
	.loc 1 108 0
	mov d0,a0	# p,
	mov (a0),d0	# *p_1(D), D.1026
.LVL19:
	.loc 1 109 0
	retf [],0
.LFE21:
	.size	_load_long, .-_load_long
	.global _store_long
	.type	_store_long, @function
_store_long:
.LFB22:
	.loc 1 112 0
.LVL20:
	.loc 1 113 0
	mov 287454020,d1	#, tmp59
	mov d0,a0	# p,
	mov d1,(a0)	# tmp59, *p_1(D)
	retf [],0
.LFE22:
	.size	_store_long, .-_store_long
	.global _member
	.type	_member, @function
_member:
.LFB23:
	.loc 1 123 0
.LVL21:
	.loc 1 124 0
	mov 1,d1	#, tmp61
	mov d0,a0	# p,
	mov d1,(4,a0)	# tmp61, p_1(D)->b
	.loc 1 126 0
	mov (8,a0),d0	# p_1(D)->c,
.LVL22:
	retf [],0
.LFE23:
	.size	_member, .-_member
	.global _get_static_value_addr
	.type	_get_static_value_addr, @function
_get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.loc 1 133 0
	mov _static_value,d0	#, <retval>
	.loc 1 134 0
	mov d0,a0	# <retval>,
	retf [],0
.LFE24:
	.size	_get_static_value_addr, .-_get_static_value_addr
	.global _get_static_value
	.type	_get_static_value, @function
_get_static_value:
.LFB25:
	.loc 1 137 0
	.loc 1 139 0
	mov (_static_value),d0	# static_value,
	retf [],0
.LFE25:
	.size	_get_static_value, .-_get_static_value
	.global _set_static_value
	.type	_set_static_value, @function
_set_static_value:
.LFB26:
	.loc 1 142 0
.LVL23:
	.loc 1 143 0
	mov d0,(_static_value)	# a, static_value
	retf [],0
.LFE26:
	.size	_set_static_value, .-_set_static_value
	.global _set_stack
	.type	_set_stack, @function
_set_stack:
.LFB27:
	.loc 1 149 0
	add -8,sp	#,
.LCFI0:
	.loc 1 150 0
	mov 254,d0	#, tmp58
	mov d0,(4,sp)	# tmp58, a
.LVL24:
	.loc 1 151 0
	mov 255,d0	#, tmp59
	mov d0,(sp)	# tmp59, b
.LVL25:
	.loc 1 152 0
	retf [],8
.LFE27:
	.size	_set_stack, .-_set_stack
	.global _use_stack
	.type	_use_stack, @function
_use_stack:
.LFB28:
	.loc 1 155 0
	add -8,sp	#,
.LCFI1:
	.loc 1 156 0
	mov 254,d0	#, tmp62
	mov d0,(4,sp)	# tmp62, a
.LVL26:
	.loc 1 157 0
	mov 255,d0	#, tmp63
	mov d0,(sp)	# tmp63, b
.LVL27:
	.loc 1 158 0
	mov (4,sp),d1	# a, a.1
	mov (sp),d0	# b, b.2
	.loc 1 159 0
	add d1,d0	# a.1,
	retf [],8
.LFE28:
	.size	_use_stack, .-_use_stack
	.global _call_self
	.type	_call_self, @function
_call_self:
.LFB29:
	.loc 1 162 0
	add -12,sp	#,
.LCFI2:
	.loc 1 163 0
	call _call_self,[],0	#
.LVL28:
	.loc 1 164 0
	ret [],12
.LFE29:
	.size	_call_self, .-_call_self
	.global _call_simple
	.type	_call_simple, @function
_call_simple:
.LFB30:
	.loc 1 167 0
.LVL29:
	add -12,sp	#,
.LCFI3:
	.loc 1 168 0
	call _return_arg1,[],0	#
.LVL30:
	.loc 1 169 0
	ret [],12
.LFE30:
	.size	_call_simple, .-_call_simple
	.global _call_complex1
	.type	_call_complex1, @function
_call_complex1:
.LFB31:
	.loc 1 172 0
	add -12,sp	#,
.LCFI4:
	.loc 1 173 0
	mov 254,d0	#,
	call _return_arg1,[],0	#
.LVL31:
	.loc 1 174 0
	inc d0	#
	ret [],12
.LFE31:
	.size	_call_complex1, .-_call_complex1
	.global _call_complex2
	.type	_call_complex2, @function
_call_complex2:
.LFB32:
	.loc 1 177 0
.LVL32:
	movm [d2],(sp)
.LCFI5:
	add -12,sp	#,
.LCFI6:
	mov d1,d2	# b, b
	.loc 1 178 0
	mov d1,d0	# b,
.LVL33:
	call _return_arg1,[],0	#
.LVL34:
	mov d0,(_static_value)	#, static_value
	.loc 1 180 0
	mov d2,d0	# b,
	ret [d2],16
.LFE32:
	.size	_call_complex2, .-_call_complex2
	.global _call_pointer
	.type	_call_pointer, @function
_call_pointer:
.LFB33:
	.loc 1 183 0
.LVL35:
	add -12,sp	#,
.LCFI7:
	.loc 1 184 0
	mov d0,a0	# f,
	calls (a0)	#
.LVL36:
	.loc 1 185 0
	ret [],12
.LFE33:
	.size	_call_pointer, .-_call_pointer
	.global _condition
	.type	_condition, @function
_condition:
.LFB34:
	.loc 1 188 0
.LVL37:
	.loc 1 189 0
	cmp d1,d0	# b, a
	bne .L36	#,
	.loc 1 190 0
	mov 1,d1	#, b
.LVL38:
.L36:
	.loc 1 192 0
	mov d1,d0	# b,
.LVL39:
	inc d0	#
	retf [],0
.LFE34:
	.size	_condition, .-_condition
	.global _loop
	.type	_loop, @function
_loop:
.LFB35:
	.loc 1 195 0
.LVL40:
	mov d0,a0	# n, n
.LVL41:
	.loc 1 197 0
	cmp 0,d0	#, n
	ble .L41	#,
	.loc 1 196 0 discriminator 2
	mov 0,d0	#, sum
.LVL42:
	.loc 1 197 0 discriminator 2
	mov d0,d1	# sum, i
.LVL43:
.L40:
	.loc 1 198 0 discriminator 2
	add d1,d0	# i, sum
.LVL44:
	.loc 1 197 0 discriminator 2
	inc d1	# i
.LVL45:
	cmp a0,d1	# n, i
	bne .L40	#,
	retf [],0
.LVL46:
.L41:
	.loc 1 196 0
	mov 0,d0	#, sum
.LVL47:
	.loc 1 200 0
	retf [],0
.LFE35:
	.size	_loop, .-_loop
	.global _many_args
	.type	_many_args, @function
_many_args:
.LFB36:
	.loc 1 204 0
.LVL48:
	.loc 1 205 0
	mov (16,sp),d1	# a3, a3
.LVL49:
	add d1,d0	# a3, tmp71
.LVL50:
	mov (24,sp),a0	# a5, a5
	add a0,d0	# a5, tmp72
	.loc 1 206 0
	mov (32,sp),a0	# a7, a7
	add a0,d0	# a7,
	retf [],0
.LFE36:
	.size	_many_args, .-_many_args
	.global _call_many_args
	.type	_call_many_args, @function
_call_many_args:
.LFB37:
	.loc 1 209 0
	add -36,sp	#,
.LCFI8:
	.loc 1 210 0
	mov 2,d0	#, tmp60
	mov d0,(12,sp)	# tmp60,
	mov 3,d0	#, tmp61
	mov d0,(16,sp)	# tmp61,
	mov 4,d0	#, tmp62
	mov d0,(20,sp)	# tmp62,
	mov 5,d0	#, tmp63
	mov d0,(24,sp)	# tmp63,
	mov 6,d0	#, tmp64
	mov d0,(28,sp)	# tmp64,
	mov 7,d0	#, tmp65
	mov d0,(32,sp)	# tmp65,
	mov 0,d0	#,
	mov 1,d1	#,
	call _many_args,[],0	#
.LVL51:
	.loc 1 211 0
	ret [],36
.LFE37:
	.size	_call_many_args, .-_call_many_args
	.global _direct
	.type	_direct, @function
_direct:
.LFB38:
	.loc 1 215 0
	.loc 1 216 0
#APP
# 216 "mn10300-elf.c" 1
	nop
# 0 "" 2
#NO_APP
	retf [],0
.LFE38:
	.size	_direct, .-_direct
	.global _binary
	.type	_binary, @function
_binary:
.LFB39:
	.loc 1 223 0
	.loc 1 224 0
#APP
# 224 "mn10300-elf.c" 1
	.align 4
# 0 "" 2
	.loc 1 225 0
# 225 "mn10300-elf.c" 1
	.int 0x0
# 0 "" 2
#NO_APP
	retf [],0
.LFE39:
	.size	_binary, .-_binary
	.global _main
	.type	_main, @function
_main:
.LFB40:
	.loc 1 231 0
	.loc 1 233 0
	mov 0,d0	#,
	retf [],0
.LFE40:
	.size	_main, .-_main
	.global _static_long
	.section .data
	.align 2
	.type	_static_long, @object
	.size	_static_long, 4
_static_long:
	.long	305419896
	.global _static_value
	.align 2
	.type	_static_value, @object
	.size	_static_value, 4
_static_value:
	.long	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x34
	.byte	0xc
	.uleb128 0x9
	.uleb128 0
	.byte	0xb4
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x4
	.byte	0x82
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI8-.LFB37
	.byte	0xe
	.uleb128 0x24
	.align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align 2
.LEFDE80:
	.section .text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x778
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.4byte	0x56
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0xb
	.4byte	0x56
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x10
	.4byte	0x56
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x15
	.4byte	0x56
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1a
	.4byte	0x56
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1f
	.4byte	0x56
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x24
	.4byte	0x119
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x79
	.sleb128 0
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
	.4byte	0x138
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x79
	.sleb128 0
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
	.4byte	0x119
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x33
	.4byte	0x138
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x79
	.sleb128 0
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.4byte	0x56
	.byte	0x1
	.byte	0x50
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x1ce
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.4byte	.LLST0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.byte	0x1
	.byte	0x51
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x204
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.4byte	.LLST1
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.byte	0x1
	.byte	0x51
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x246
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.4byte	.LLST2
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x51
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 12
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x271
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.4byte	0x56
	.4byte	.LLST3
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x29c
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x51
	.4byte	0x56
	.4byte	.LLST4
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x2d1
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.4byte	.LLST5
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.byte	0x1
	.byte	0x51
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x2fc
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.4byte	0x56
	.4byte	.LLST6
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x327
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x327
	.4byte	.LLST7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x32d
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x357
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x327
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x138
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x382
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x382
	.4byte	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x388
	.uleb128 0xd
	.4byte	0x138
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x3b2
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x382
	.byte	0x1
	.byte	0x50
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x3dd
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3dd
	.4byte	.LLST9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x25
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.4byte	0x3fb
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x79
	.sleb128 0
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x43e
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.4byte	0x56
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x94
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x470
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x56
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x4a6
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0x12
	.4byte	.LVL28
	.4byte	0x4a6
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x506
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x534
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x57d
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST17
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST19
	.byte	0x1
	.4byte	0x5ae
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5b4
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LVL36
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5ae
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x5f2
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST21
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST22
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x639
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST23
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST24
	.uleb128 0x19
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST25
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
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.4byte	0x6c1
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST26
	.uleb128 0xa
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST27
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x717
	.uleb128 0x14
	.4byte	.LVL51
	.4byte	0x639
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 32
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 28
	.byte	0x1
	.byte	0x36
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 24
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 20
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe6
	.4byte	0x56
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_static_value
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0x81
	.4byte	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_static_long
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
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
.LASF43:
	.string	"mn10300-elf.c"
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
