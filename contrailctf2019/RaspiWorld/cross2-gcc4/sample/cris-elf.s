	.file	"cris-elf.c"
;# GNU C (GCC) version 4.7.2 (cris-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc cris-elf.c -melf -auxbase-strip cris-elf.s -g
;# -O -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
;# -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
;# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
;# -mconst-align -mdata-align -melf -mmul-bug-workaround
;# -mprologue-epilogue -mside-effects -mstack-align

	.text
.Ltext0:
	.align 1
	.global _null
	.type	_null, @function
_null:
.LFB0:
	.file 1 "cris-elf.c"
	.loc 1 2 0
	ret
	nop
.LFE0:
	.size	_null, .-_null
	.align 1
	.global _return_zero
	.type	_return_zero, @function
_return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 9 0
	ret
	clear.d $r10	;#

.LFE1:
	.size	_return_zero, .-_return_zero
	.align 1
	.global _return_one
	.type	_return_one, @function
_return_one:
.LFB2:
	.loc 1 12 0
	.loc 1 14 0
	ret
	moveq 1,$r10	;#,

.LFE2:
	.size	_return_one, .-_return_one
	.align 1
	.global _return_int_size
	.type	_return_int_size, @function
_return_int_size:
.LFB3:
	.loc 1 17 0
	.loc 1 19 0
	ret
	moveq 4,$r10	;#,

.LFE3:
	.size	_return_int_size, .-_return_int_size
	.align 1
	.global _return_pointer_size
	.type	_return_pointer_size, @function
_return_pointer_size:
.LFB4:
	.loc 1 22 0
	.loc 1 24 0
	ret
	moveq 4,$r10	;#,

.LFE4:
	.size	_return_pointer_size, .-_return_pointer_size
	.align 1
	.global _return_short_size
	.type	_return_short_size, @function
_return_short_size:
.LFB5:
	.loc 1 27 0
	.loc 1 29 0
	ret
	moveq 2,$r10	;#,

.LFE5:
	.size	_return_short_size, .-_return_short_size
	.align 1
	.global _return_long_size
	.type	_return_long_size, @function
_return_long_size:
.LFB6:
	.loc 1 32 0
	.loc 1 34 0
	ret
	moveq 4,$r10	;#,

.LFE6:
	.size	_return_long_size, .-_return_long_size
	.align 1
	.global _return_short
	.type	_return_short, @function
_return_short:
.LFB7:
	.loc 1 37 0
	.loc 1 39 0
	move.w 30600,$r10	;#,
	ret
	nop
.LFE7:
	.size	_return_short, .-_return_short
	.align 1
	.global _return_long
	.type	_return_long, @function
_return_long:
.LFB8:
	.loc 1 42 0
	.loc 1 44 0
	move.d 2005440938,$r10	;#,
	ret
	nop
.LFE8:
	.size	_return_long, .-_return_long
	.align 1
	.global _return_short_upper
	.type	_return_short_upper, @function
_return_short_upper:
.LFB9:
	.loc 1 47 0
	.loc 1 49 0
	ret
	moveq -18,$r10	;#,

.LFE9:
	.size	_return_short_upper, .-_return_short_upper
	.align 1
	.global _return_long_upper
	.type	_return_long_upper, @function
_return_long_upper:
.LFB10:
	.loc 1 52 0
	.loc 1 54 0
	move.d -1122868,$r10	;#,
	ret
	nop
.LFE10:
	.size	_return_long_upper, .-_return_long_upper
	.align 1
	.global _return_arg1
	.type	_return_arg1, @function
_return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	.loc 1 59 0
	ret
	nop
.LFE11:
	.size	_return_arg1, .-_return_arg1
	.align 1
	.global _return_arg2
	.type	_return_arg2, @function
_return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	.loc 1 64 0
	ret
	move.d $r11,$r10	;# b,

.LFE12:
	.size	_return_arg2, .-_return_arg2
	.align 1
	.global _add
	.type	_add, @function
_add:
.LFB13:
	.loc 1 67 0
.LVL2:
	.loc 1 69 0
	ret
	add.d $r11,$r10	;# b,

.LFE13:
	.size	_add, .-_add
	.align 1
	.global _add3
	.type	_add3, @function
_add3:
.LFB14:
	.loc 1 72 0
.LVL3:
	.loc 1 73 0
	add.d $r11,$r10	;# b, tmp33
.LVL4:
	.loc 1 74 0
	ret
	add.d $r12,$r10	;# c,

.LFE14:
	.size	_add3, .-_add3
	.align 1
	.global _add_two
	.type	_add_two, @function
_add_two:
.LFB15:
	.loc 1 77 0
.LVL5:
	.loc 1 79 0
	ret
	addq 2,$r10	;#,

.LFE15:
	.size	_add_two, .-_add_two
	.align 1
	.global _inc
	.type	_inc, @function
_inc:
.LFB16:
	.loc 1 82 0
.LVL6:
	.loc 1 84 0
	ret
	addq 1,$r10	;#,

.LFE16:
	.size	_inc, .-_inc
	.align 1
	.global _or
	.type	_or, @function
_or:
.LFB17:
	.loc 1 87 0
.LVL7:
	.loc 1 89 0
	ret
	or.d $r11,$r10	;# b,

.LFE17:
	.size	_or, .-_or
	.align 1
	.global _or_one
	.type	_or_one, @function
_or_one:
.LFB18:
	.loc 1 92 0
.LVL8:
	.loc 1 94 0
	ret
	orq 1,$r10	;#,

.LFE18:
	.size	_or_one, .-_or_one
	.align 1
	.global _load
	.type	_load, @function
_load:
.LFB19:
	.loc 1 97 0
.LVL9:
	.loc 1 98 0
	move.d [$r10],$r10	;# *p_1(D), D.1033
.LVL10:
	.loc 1 99 0
	ret
	nop
.LFE19:
	.size	_load, .-_load
	.align 1
	.global _store
	.type	_store, @function
_store:
.LFB20:
	.loc 1 102 0
.LVL11:
	.loc 1 103 0
	movu.b 255,$r9	;#,
	move.d $r9,[$r10]	;#, *p_1(D)
	ret
	nop
.LFE20:
	.size	_store, .-_store
	.align 1
	.global _load_long
	.type	_load_long, @function
_load_long:
.LFB21:
	.loc 1 107 0
.LVL12:
	.loc 1 108 0
	move.d [$r10],$r10	;# *p_1(D), D.1031
.LVL13:
	.loc 1 109 0
	ret
	nop
.LFE21:
	.size	_load_long, .-_load_long
	.align 1
	.global _store_long
	.type	_store_long, @function
_store_long:
.LFB22:
	.loc 1 112 0
.LVL14:
	.loc 1 113 0
	move.d 287454020,$r9	;#,
	move.d $r9,[$r10]	;#, *p_1(D)
	ret
	nop
.LFE22:
	.size	_store_long, .-_store_long
	.align 1
	.global _member
	.type	_member, @function
_member:
.LFB23:
	.loc 1 123 0
.LVL15:
	.loc 1 124 0
	moveq 1,$r9	;#,
	move.d $r9,[$r10+4]	;#, p_1(D)->b
	.loc 1 126 0
	move.d [$r10+8],$r10	;# p_1(D)->c,
.LVL16:
	ret
	nop
.LFE23:
	.size	_member, .-_member
	.align 1
	.global _get_static_value_addr
	.type	_get_static_value_addr, @function
_get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.loc 1 134 0
	move.d _static_value,$r10	;#,
	ret
	nop
.LFE24:
	.size	_get_static_value_addr, .-_get_static_value_addr
	.align 1
	.global _get_static_value
	.type	_get_static_value, @function
_get_static_value:
.LFB25:
	.loc 1 137 0
	.loc 1 139 0
	move.d _static_value,$r10	;#,
	ret
	move.d [$r10],$r10	;# static_value,

.LFE25:
	.size	_get_static_value, .-_get_static_value
	.align 1
	.global _set_static_value
	.type	_set_static_value, @function
_set_static_value:
.LFB26:
	.loc 1 142 0
.LVL17:
	.loc 1 143 0
	move.d $r10,[_static_value]	;# a, static_value
	ret
	nop
.LFE26:
	.size	_set_static_value, .-_set_static_value
	.align 1
	.global _set_stack
	.type	_set_stack, @function
_set_stack:
.LFB27:
	.loc 1 149 0
	subq 8,$sp	;#,
.LCFI0:
	.loc 1 150 0
	movu.b 254,$r9	;#,
	move.d $r9,[$sp+4]	;#, a
.LVL18:
	.loc 1 151 0
	move.b -1,$r9	;#,
	move.d $r9,[$sp]	;#, b
.LVL19:
	.loc 1 152 0
	ret
	addq 8,$sp	;#,

.LFE27:
	.size	_set_stack, .-_set_stack
	.align 1
	.global _use_stack
	.type	_use_stack, @function
_use_stack:
.LFB28:
	.loc 1 155 0
	subq 8,$sp	;#,
.LCFI1:
	.loc 1 156 0
	movu.b 254,$r9	;#,
	move.d $r9,[$sp+4]	;#, a
.LVL20:
	.loc 1 157 0
	move.b -1,$r9	;#,
	move.d $r9,[$sp]	;#, b
.LVL21:
	.loc 1 158 0
	move.d [$sp+4],$r10	;# a, a.1
	move.d [$sp],$r9	;# b, b.2
	.loc 1 159 0
	add.d $r9,$r10	;# b.2,
	ret
	addq 8,$sp	;#,

.LFE28:
	.size	_use_stack, .-_use_stack
	.align 1
	.global _call_self
	.type	_call_self, @function
_call_self:
.LFB29:
	.loc 1 162 0
	subq 4,$sp	;#,
.LCFI2:
	move $srp,[$sp]	;#,
.LCFI3:
	.loc 1 163 0
	jsr _call_self	;#
.LVL22:
	jump [$sp+]
.LFE29:
	.size	_call_self, .-_call_self
	.align 1
	.global _call_simple
	.type	_call_simple, @function
_call_simple:
.LFB30:
	.loc 1 167 0
.LVL23:
	subq 4,$sp	;#,
.LCFI4:
	move $srp,[$sp]	;#,
.LCFI5:
	.loc 1 168 0
	Jsr _return_arg1	;#
.LVL24:
	.loc 1 169 0
	jump [$sp+]
.LFE30:
	.size	_call_simple, .-_call_simple
	.align 1
	.global _call_complex1
	.type	_call_complex1, @function
_call_complex1:
.LFB31:
	.loc 1 172 0
	subq 4,$sp	;#,
.LCFI6:
	move $srp,[$sp]	;#,
.LCFI7:
	.loc 1 173 0
	movu.b 254,$r10	;#,
	Jsr _return_arg1	;#
.LVL25:
	.loc 1 174 0
	addq 1,$r10	;#,
	jump [$sp+]
.LFE31:
	.size	_call_complex1, .-_call_complex1
	.align 1
	.global _call_complex2
	.type	_call_complex2, @function
_call_complex2:
.LFB32:
	.loc 1 177 0
.LVL26:
	subq 4,$sp	;#,
.LCFI8:
	move $srp,[$sp]	;#,
	subq 4,$sp	;#,
.LCFI9:
	move.d $r0,[$sp]	;#,
.LCFI10:
	move.d $r11,$r0	;# b, b
	.loc 1 178 0
	move.d $r11,$r10	;# b,
.LVL27:
	Jsr _return_arg1	;#
.LVL28:
	move.d $r10,[_static_value]	;#, static_value
	.loc 1 180 0
	move.d $r0,$r10	;# b,
	move.d [$sp+],$r0	;#,
.LVL29:
	jump [$sp+]
.LFE32:
	.size	_call_complex2, .-_call_complex2
	.align 1
	.global _call_pointer
	.type	_call_pointer, @function
_call_pointer:
.LFB33:
	.loc 1 183 0
.LVL30:
	subq 4,$sp	;#,
.LCFI11:
	move $srp,[$sp]	;#,
.LCFI12:
	.loc 1 184 0
	Jsr $r10	;# f
.LVL31:
	jump [$sp+]
.LFE33:
	.size	_call_pointer, .-_call_pointer
	.align 1
	.global _condition
	.type	_condition, @function
_condition:
.LFB34:
	.loc 1 188 0
.LVL32:
	.loc 1 189 0
	cmp.d $r11,$r10	;# b, a
	bne .L36
	nop	;#
	.loc 1 190 0
	moveq 1,$r11	;#, b
.LVL33:
.L36:
	.loc 1 192 0
	move.d $r11,$r10	;# b,
.LVL34:
	ret
	addq 1,$r10	;#,

.LFE34:
	.size	_condition, .-_condition
	.align 1
	.global _loop
	.type	_loop, @function
_loop:
.LFB35:
	.loc 1 195 0
.LVL35:
	.loc 1 197 0
	test.d $r10	;# n
	ble .L41	;#
	clear.d $r13	;# sum

	.loc 1 197 0 is_stmt 0 discriminator 2
	clear.d $r9	;# i
.LVL36:
	.loc 1 198 0 is_stmt 1 discriminator 2
	add.d $r9,$r13	;# i, sum
.LVL37:
.L44:
	.loc 1 197 0 discriminator 2
	addq 1,$r9	;#, i
.LVL38:
	cmp.d $r10,$r9	;# n, i
	bne .L44	;#
	add.d $r9,$r13	;# i, sum

	sub.d $r9,$r13	;# i, sum
	.loc 1 200 0
	ret
	move.d $r13,$r10	;# sum,

.LVL39:
.L41:
	move.d $r13,$r10	;# sum,
.LVL40:
	ret
	nop
.LFE35:
	.size	_loop, .-_loop
	.align 1
	.global _many_args
	.type	_many_args, @function
_many_args:
.LFB36:
	.loc 1 204 0
.LVL41:
	.loc 1 205 0
	add.d $r13,$r10	;# a3, tmp39
.LVL42:
	add.d [$sp+4],$r10	;# a5, tmp40
	.loc 1 206 0
	add.d [$sp+12],$r10	;# a7,
	ret
	nop
.LFE36:
	.size	_many_args, .-_many_args
	.align 1
	.global _call_many_args
	.type	_call_many_args, @function
_call_many_args:
.LFB37:
	.loc 1 209 0
	subq 4,$sp	;#,
.LCFI13:
	move $srp,[$sp]	;#,
	subq 16,$sp	;#,
.LCFI14:
	.loc 1 210 0
	moveq 4,$r9	;#,
	move.d $r9,[$sp]	;#,
	move.b 5,$r9	;#,
	move.d $r9,[$sp+4]	;#,
	move.b 6,$r9	;#,
	move.d $r9,[$sp+8]	;#,
	move.b 7,$r9	;#,
	move.d $r9,[$sp+12]	;#,
	clear.d $r10	;#
	moveq 1,$r11	;#,
	moveq 2,$r12	;#,
	moveq 3,$r13	;#,
	Jsr _many_args	;#
.LVL43:
	.loc 1 211 0
	addq 16,$sp	;#,
	jump [$sp+]
.LFE37:
	.size	_call_many_args, .-_call_many_args
	.align 1
	.global _direct
	.type	_direct, @function
_direct:
.LFB38:
	.loc 1 215 0
	.loc 1 216 0
#APP
;# 216 "cris-elf.c" 1
	nop
;# 0 "" 2
#NO_APP
	ret
	nop
.LFE38:
	.size	_direct, .-_direct
	.align 1
	.global _binary
	.type	_binary, @function
_binary:
.LFB39:
	.loc 1 223 0
	.loc 1 224 0
#APP
;# 224 "cris-elf.c" 1
	.align 4
;# 0 "" 2
	.loc 1 225 0
;# 225 "cris-elf.c" 1
	.int 0x0
;# 0 "" 2
#NO_APP
	ret
	nop
.LFE39:
	.size	_binary, .-_binary
	.align 1
	.global _main
	.type	_main, @function
_main:
.LFB40:
	.loc 1 231 0
	.loc 1 233 0
	ret
	clear.d $r10	;#

.LFE40:
	.size	_main, .-_main
	.global _static_long
	.data
	.align 1
	.type	_static_long, @object
	.size	_static_long, 4
_static_long:
	.dword	305419896
	.global _static_value
	.align 1
	.type	_static_value, @object
	.size	_static_value, 4
_static_value:
	.dword	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.dword	.LECIE0-.LSCIE0
.LSCIE0:
	.dword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x10
	.byte	0xc
	.uleb128 0xe
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.dword	.LEFDE0-.LASFDE0
.LASFDE0:
	.dword	.Lframe0
	.dword	.LFB0
	.dword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.dword	.LEFDE2-.LASFDE2
.LASFDE2:
	.dword	.Lframe0
	.dword	.LFB1
	.dword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.dword	.LEFDE4-.LASFDE4
.LASFDE4:
	.dword	.Lframe0
	.dword	.LFB2
	.dword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.dword	.LEFDE6-.LASFDE6
.LASFDE6:
	.dword	.Lframe0
	.dword	.LFB3
	.dword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.dword	.LEFDE8-.LASFDE8
.LASFDE8:
	.dword	.Lframe0
	.dword	.LFB4
	.dword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.dword	.LEFDE10-.LASFDE10
.LASFDE10:
	.dword	.Lframe0
	.dword	.LFB5
	.dword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.dword	.LEFDE12-.LASFDE12
.LASFDE12:
	.dword	.Lframe0
	.dword	.LFB6
	.dword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.dword	.LEFDE14-.LASFDE14
.LASFDE14:
	.dword	.Lframe0
	.dword	.LFB7
	.dword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.dword	.LEFDE16-.LASFDE16
.LASFDE16:
	.dword	.Lframe0
	.dword	.LFB8
	.dword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.dword	.LEFDE18-.LASFDE18
.LASFDE18:
	.dword	.Lframe0
	.dword	.LFB9
	.dword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.dword	.LEFDE20-.LASFDE20
.LASFDE20:
	.dword	.Lframe0
	.dword	.LFB10
	.dword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.dword	.LEFDE22-.LASFDE22
.LASFDE22:
	.dword	.Lframe0
	.dword	.LFB11
	.dword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.dword	.LEFDE24-.LASFDE24
.LASFDE24:
	.dword	.Lframe0
	.dword	.LFB12
	.dword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.dword	.LEFDE26-.LASFDE26
.LASFDE26:
	.dword	.Lframe0
	.dword	.LFB13
	.dword	.LFE13-.LFB13
	.align 2
.LEFDE26:
.LSFDE28:
	.dword	.LEFDE28-.LASFDE28
.LASFDE28:
	.dword	.Lframe0
	.dword	.LFB14
	.dword	.LFE14-.LFB14
	.align 2
.LEFDE28:
.LSFDE30:
	.dword	.LEFDE30-.LASFDE30
.LASFDE30:
	.dword	.Lframe0
	.dword	.LFB15
	.dword	.LFE15-.LFB15
	.align 2
.LEFDE30:
.LSFDE32:
	.dword	.LEFDE32-.LASFDE32
.LASFDE32:
	.dword	.Lframe0
	.dword	.LFB16
	.dword	.LFE16-.LFB16
	.align 2
.LEFDE32:
.LSFDE34:
	.dword	.LEFDE34-.LASFDE34
.LASFDE34:
	.dword	.Lframe0
	.dword	.LFB17
	.dword	.LFE17-.LFB17
	.align 2
.LEFDE34:
.LSFDE36:
	.dword	.LEFDE36-.LASFDE36
.LASFDE36:
	.dword	.Lframe0
	.dword	.LFB18
	.dword	.LFE18-.LFB18
	.align 2
.LEFDE36:
.LSFDE38:
	.dword	.LEFDE38-.LASFDE38
.LASFDE38:
	.dword	.Lframe0
	.dword	.LFB19
	.dword	.LFE19-.LFB19
	.align 2
.LEFDE38:
.LSFDE40:
	.dword	.LEFDE40-.LASFDE40
.LASFDE40:
	.dword	.Lframe0
	.dword	.LFB20
	.dword	.LFE20-.LFB20
	.align 2
.LEFDE40:
.LSFDE42:
	.dword	.LEFDE42-.LASFDE42
.LASFDE42:
	.dword	.Lframe0
	.dword	.LFB21
	.dword	.LFE21-.LFB21
	.align 2
.LEFDE42:
.LSFDE44:
	.dword	.LEFDE44-.LASFDE44
.LASFDE44:
	.dword	.Lframe0
	.dword	.LFB22
	.dword	.LFE22-.LFB22
	.align 2
.LEFDE44:
.LSFDE46:
	.dword	.LEFDE46-.LASFDE46
.LASFDE46:
	.dword	.Lframe0
	.dword	.LFB23
	.dword	.LFE23-.LFB23
	.align 2
.LEFDE46:
.LSFDE48:
	.dword	.LEFDE48-.LASFDE48
.LASFDE48:
	.dword	.Lframe0
	.dword	.LFB24
	.dword	.LFE24-.LFB24
	.align 2
.LEFDE48:
.LSFDE50:
	.dword	.LEFDE50-.LASFDE50
.LASFDE50:
	.dword	.Lframe0
	.dword	.LFB25
	.dword	.LFE25-.LFB25
	.align 2
.LEFDE50:
.LSFDE52:
	.dword	.LEFDE52-.LASFDE52
.LASFDE52:
	.dword	.Lframe0
	.dword	.LFB26
	.dword	.LFE26-.LFB26
	.align 2
.LEFDE52:
.LSFDE54:
	.dword	.LEFDE54-.LASFDE54
.LASFDE54:
	.dword	.Lframe0
	.dword	.LFB27
	.dword	.LFE27-.LFB27
	.byte	0x4
	.dword	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE54:
.LSFDE56:
	.dword	.LEFDE56-.LASFDE56
.LASFDE56:
	.dword	.Lframe0
	.dword	.LFB28
	.dword	.LFE28-.LFB28
	.byte	0x4
	.dword	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE56:
.LSFDE58:
	.dword	.LEFDE58-.LASFDE58
.LASFDE58:
	.dword	.Lframe0
	.dword	.LFB29
	.dword	.LFE29-.LFB29
	.byte	0x4
	.dword	.LCFI2-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI3-.LCFI2
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE58:
.LSFDE60:
	.dword	.LEFDE60-.LASFDE60
.LASFDE60:
	.dword	.Lframe0
	.dword	.LFB30
	.dword	.LFE30-.LFB30
	.byte	0x4
	.dword	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI5-.LCFI4
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE60:
.LSFDE62:
	.dword	.LEFDE62-.LASFDE62
.LASFDE62:
	.dword	.Lframe0
	.dword	.LFB31
	.dword	.LFE31-.LFB31
	.byte	0x4
	.dword	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI7-.LCFI6
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE62:
.LSFDE64:
	.dword	.LEFDE64-.LASFDE64
.LASFDE64:
	.dword	.Lframe0
	.dword	.LFB32
	.dword	.LFE32-.LFB32
	.byte	0x4
	.dword	.LCFI8-.LFB32
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI10-.LCFI9
	.byte	0x80
	.uleb128 0x8
	.align 2
.LEFDE64:
.LSFDE66:
	.dword	.LEFDE66-.LASFDE66
.LASFDE66:
	.dword	.Lframe0
	.dword	.LFB33
	.dword	.LFE33-.LFB33
	.byte	0x4
	.dword	.LCFI11-.LFB33
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI12-.LCFI11
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE66:
.LSFDE68:
	.dword	.LEFDE68-.LASFDE68
.LASFDE68:
	.dword	.Lframe0
	.dword	.LFB34
	.dword	.LFE34-.LFB34
	.align 2
.LEFDE68:
.LSFDE70:
	.dword	.LEFDE70-.LASFDE70
.LASFDE70:
	.dword	.Lframe0
	.dword	.LFB35
	.dword	.LFE35-.LFB35
	.align 2
.LEFDE70:
.LSFDE72:
	.dword	.LEFDE72-.LASFDE72
.LASFDE72:
	.dword	.Lframe0
	.dword	.LFB36
	.dword	.LFE36-.LFB36
	.align 2
.LEFDE72:
.LSFDE74:
	.dword	.LEFDE74-.LASFDE74
.LASFDE74:
	.dword	.Lframe0
	.dword	.LFB37
	.dword	.LFE37-.LFB37
	.byte	0x4
	.dword	.LCFI13-.LFB37
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.dword	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x14
	.byte	0x90
	.uleb128 0x4
	.align 2
.LEFDE74:
.LSFDE76:
	.dword	.LEFDE76-.LASFDE76
.LASFDE76:
	.dword	.Lframe0
	.dword	.LFB38
	.dword	.LFE38-.LFB38
	.align 2
.LEFDE76:
.LSFDE78:
	.dword	.LEFDE78-.LASFDE78
.LASFDE78:
	.dword	.Lframe0
	.dword	.LFB39
	.dword	.LFE39-.LFB39
	.align 2
.LEFDE78:
.LSFDE80:
	.dword	.LEFDE80-.LASFDE80
.LASFDE80:
	.dword	.Lframe0
	.dword	.LFB40
	.dword	.LFE40-.LFB40
	.align 2
.LEFDE80:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.dword	0x75f
	.word	0x2
	.dword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.dword	.LASF42
	.byte	0x1
	.dword	.LASF43
	.dword	.LASF44
	.dword	.Ltext0
	.dword	.Letext0
	.dword	.Ldebug_line0
	.uleb128 0x2
	.dword	.LASF45
	.byte	0xc
	.byte	0x1
	.byte	0x74
	.dword	0x56
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x75
	.dword	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x76
	.dword	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x77
	.dword	0x56
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
	.dword	.LASF36
	.byte	0x1
	.byte	0x1
	.dword	.LFB0
	.dword	.LFE0
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF0
	.byte	0x1
	.byte	0x6
	.dword	0x56
	.dword	.LFB1
	.dword	.LFE1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF1
	.byte	0x1
	.byte	0xb
	.dword	0x56
	.dword	.LFB2
	.dword	.LFE2
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF2
	.byte	0x1
	.byte	0x10
	.dword	0x56
	.dword	.LFB3
	.dword	.LFE3
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF3
	.byte	0x1
	.byte	0x15
	.dword	0x56
	.dword	.LFB4
	.dword	.LFE4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF4
	.byte	0x1
	.byte	0x1a
	.dword	0x56
	.dword	.LFB5
	.dword	.LFE5
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF5
	.byte	0x1
	.byte	0x1f
	.dword	0x56
	.dword	.LFB6
	.dword	.LFE6
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF6
	.byte	0x1
	.byte	0x24
	.dword	0x119
	.dword	.LFB7
	.dword	.LFE7
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.dword	.LASF7
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF8
	.byte	0x1
	.byte	0x29
	.dword	0x138
	.dword	.LFB8
	.dword	.LFE8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.dword	.LASF9
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF10
	.byte	0x1
	.byte	0x2e
	.dword	0x119
	.dword	.LFB9
	.dword	.LFE9
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF11
	.byte	0x1
	.byte	0x33
	.dword	0x138
	.dword	.LFB10
	.dword	.LFE10
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF12
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.dword	0x56
	.dword	.LFB11
	.dword	.LFE11
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.dword	0x56
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF13
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.dword	0x56
	.dword	.LFB12
	.dword	.LFE12
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x1ce
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.dword	0x56
	.dword	.LLST0
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.dword	0x56
	.byte	0x1
	.byte	0x5b
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"add"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.dword	0x56
	.dword	.LFB13
	.dword	.LFE13
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x204
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x42
	.dword	0x56
	.dword	.LLST1
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.dword	0x56
	.byte	0x1
	.byte	0x5b
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF14
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.dword	0x56
	.dword	.LFB14
	.dword	.LFE14
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x245
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x47
	.dword	0x56
	.dword	.LLST2
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.dword	0x56
	.byte	0x1
	.byte	0x5b
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.dword	0x56
	.byte	0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.dword	0x56
	.dword	.LFB15
	.dword	.LFE15
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x270
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.dword	0x56
	.dword	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"inc"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.dword	0x56
	.dword	.LFB16
	.dword	.LFE16
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x29b
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x51
	.dword	0x56
	.dword	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"or"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.dword	0x56
	.dword	.LFB17
	.dword	.LFE17
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x2d0
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.dword	0x56
	.dword	.LLST5
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.dword	0x56
	.byte	0x1
	.byte	0x5b
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.dword	0x56
	.dword	.LFB18
	.dword	.LFE18
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x2fb
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.dword	0x56
	.dword	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF17
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.dword	0x56
	.dword	.LFB19
	.dword	.LFE19
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x326
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.dword	0x326
	.dword	.LLST7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.dword	0x32c
	.uleb128 0xd
	.dword	0x56
	.uleb128 0xe
	.byte	0x1
	.dword	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.dword	.LFB20
	.dword	.LFE20
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x356
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.dword	0x326
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF18
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.dword	0x138
	.dword	.LFB21
	.dword	.LFE21
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x381
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.dword	0x381
	.dword	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.dword	0x387
	.uleb128 0xd
	.dword	0x138
	.uleb128 0xe
	.byte	0x1
	.dword	.LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.dword	.LFB22
	.dword	.LFE22
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x3b1
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.dword	0x381
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF21
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.dword	0x56
	.dword	.LFB23
	.dword	.LFE23
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x3dc
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.dword	0x3dc
	.dword	.LLST9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.dword	0x25
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF22
	.byte	0x1
	.byte	0x83
	.dword	0x3fa
	.dword	.LFB24
	.dword	.LFE24
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.byte	0x4
	.dword	0x56
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF23
	.byte	0x1
	.byte	0x88
	.dword	0x56
	.dword	.LFB25
	.dword	.LFE25
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.dword	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.dword	.LFB26
	.dword	.LFE26
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x43d
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.dword	0x56
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.dword	.LASF26
	.byte	0x1
	.byte	0x94
	.dword	.LFB27
	.dword	.LFE27
	.dword	.LLST10
	.byte	0x1
	.dword	0x46f
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.dword	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.dword	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.dword	.LASF25
	.byte	0x1
	.byte	0x9a
	.dword	0x56
	.dword	.LFB28
	.dword	.LFE28
	.dword	.LLST11
	.byte	0x1
	.dword	0x4a5
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.dword	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.dword	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.dword	.LASF27
	.byte	0x1
	.byte	0xa1
	.dword	.LFB29
	.dword	.LFE29
	.dword	.LLST12
	.byte	0x1
	.dword	0x4c8
	.uleb128 0x12
	.dword	.LVL22
	.dword	0x4a5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.dword	.LASF28
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.dword	0x56
	.dword	.LFB30
	.dword	.LFE30
	.dword	.LLST13
	.byte	0x1
	.dword	0x505
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.dword	0x56
	.dword	.LLST14
	.uleb128 0x14
	.dword	.LVL24
	.dword	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.dword	.LASF29
	.byte	0x1
	.byte	0xab
	.dword	0x56
	.dword	.LFB31
	.dword	.LFE31
	.dword	.LLST15
	.byte	0x1
	.dword	0x533
	.uleb128 0x14
	.dword	.LVL25
	.dword	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.dword	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.dword	0x56
	.dword	.LFB32
	.dword	.LFE32
	.dword	.LLST16
	.byte	0x1
	.dword	0x57c
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.dword	0x56
	.dword	.LLST17
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.dword	0x56
	.dword	.LLST18
	.uleb128 0x14
	.dword	.LVL28
	.dword	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.dword	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.dword	.LFB33
	.dword	.LFE33
	.dword	.LLST19
	.byte	0x1
	.dword	0x5ad
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.dword	0x5b3
	.dword	.LLST20
	.uleb128 0x17
	.dword	.LVL31
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.dword	0x56
	.uleb128 0xc
	.byte	0x4
	.dword	0x5ad
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.dword	0x56
	.dword	.LFB34
	.dword	.LFE34
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x5f1
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.dword	0x56
	.dword	.LLST21
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.dword	0x56
	.dword	.LLST22
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF33
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.dword	0x56
	.dword	.LFB35
	.dword	.LFE35
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x638
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.dword	0x56
	.dword	.LLST23
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.dword	0x56
	.dword	.LLST24
	.uleb128 0x19
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.dword	0x56
	.dword	.LLST25
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.dword	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.dword	0x56
	.dword	.LFB36
	.dword	.LFE36
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.dword	0x6bc
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.dword	0x56
	.dword	.LLST26
	.uleb128 0x9
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.dword	0x56
	.byte	0x1
	.byte	0x5b
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.dword	0x56
	.byte	0x1
	.byte	0x5c
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.dword	0x56
	.byte	0x1
	.byte	0x5d
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.dword	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.dword	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.dword	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.dword	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.dword	.LASF35
	.byte	0x1
	.byte	0xd0
	.dword	0x56
	.dword	.LFB37
	.dword	.LFE37
	.dword	.LLST27
	.byte	0x1
	.dword	0x6fe
	.uleb128 0x14
	.dword	.LVL43
	.dword	0x638
	.uleb128 0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.dword	.LASF37
	.byte	0x1
	.byte	0xd6
	.dword	.LFB38
	.dword	.LFE38
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.dword	.LASF38
	.byte	0x1
	.byte	0xde
	.dword	.LFB39
	.dword	.LFE39
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.dword	.LASF39
	.byte	0x1
	.byte	0xe6
	.dword	0x56
	.dword	.LFB40
	.dword	.LFE40
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.dword	.LASF40
	.byte	0x1
	.byte	0x80
	.dword	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_static_value
	.uleb128 0x1a
	.dword	.LASF41
	.byte	0x1
	.byte	0x81
	.dword	0x138
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.dword	_static_long
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
	.dword	.LVL1-.Ltext0
	.dword	.LVL1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL1-.Ltext0
	.dword	.LFE12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST1:
	.dword	.LVL2-.Ltext0
	.dword	.LVL2-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL2-.Ltext0
	.dword	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST2:
	.dword	.LVL3-.Ltext0
	.dword	.LVL4-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL4-.Ltext0
	.dword	.LFE14-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST3:
	.dword	.LVL5-.Ltext0
	.dword	.LVL5-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL5-.Ltext0
	.dword	.LFE15-.Ltext0
	.word	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.dword	0
	.dword	0
.LLST4:
	.dword	.LVL6-.Ltext0
	.dword	.LVL6-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL6-.Ltext0
	.dword	.LFE16-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	0
	.dword	0
.LLST5:
	.dword	.LVL7-.Ltext0
	.dword	.LVL7-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL7-.Ltext0
	.dword	.LFE17-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST6:
	.dword	.LVL8-.Ltext0
	.dword	.LVL8-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL8-.Ltext0
	.dword	.LFE18-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST7:
	.dword	.LVL9-.Ltext0
	.dword	.LVL10-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL10-.Ltext0
	.dword	.LFE19-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST8:
	.dword	.LVL12-.Ltext0
	.dword	.LVL13-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL13-.Ltext0
	.dword	.LFE21-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST9:
	.dword	.LVL15-.Ltext0
	.dword	.LVL16-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL16-.Ltext0
	.dword	.LFE23-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST10:
	.dword	.LFB27-.Ltext0
	.dword	.LCFI0-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI0-.Ltext0
	.dword	.LFE27-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 8
	.dword	0
	.dword	0
.LLST11:
	.dword	.LFB28-.Ltext0
	.dword	.LCFI1-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI1-.Ltext0
	.dword	.LFE28-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 8
	.dword	0
	.dword	0
.LLST12:
	.dword	.LFB29-.Ltext0
	.dword	.LCFI2-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI2-.Ltext0
	.dword	.LFE29-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST13:
	.dword	.LFB30-.Ltext0
	.dword	.LCFI4-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI4-.Ltext0
	.dword	.LFE30-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST14:
	.dword	.LVL23-.Ltext0
	.dword	.LVL24-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL24-1-.Ltext0
	.dword	.LFE30-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST15:
	.dword	.LFB31-.Ltext0
	.dword	.LCFI6-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI6-.Ltext0
	.dword	.LFE31-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST16:
	.dword	.LFB32-.Ltext0
	.dword	.LCFI8-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI8-.Ltext0
	.dword	.LCFI9-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI9-.Ltext0
	.dword	.LFE32-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 8
	.dword	0
	.dword	0
.LLST17:
	.dword	.LVL26-.Ltext0
	.dword	.LVL27-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL27-.Ltext0
	.dword	.LFE32-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST18:
	.dword	.LVL26-.Ltext0
	.dword	.LVL28-1-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL28-1-.Ltext0
	.dword	.LVL29-.Ltext0
	.word	0x1
	.byte	0x50
	.dword	.LVL29-.Ltext0
	.dword	.LFE32-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	0
	.dword	0
.LLST19:
	.dword	.LFB33-.Ltext0
	.dword	.LCFI11-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI11-.Ltext0
	.dword	.LFE33-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	0
	.dword	0
.LLST20:
	.dword	.LVL30-.Ltext0
	.dword	.LVL31-1-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL31-1-.Ltext0
	.dword	.LFE33-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST21:
	.dword	.LVL32-.Ltext0
	.dword	.LVL34-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL34-.Ltext0
	.dword	.LFE34-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST22:
	.dword	.LVL32-.Ltext0
	.dword	.LVL33-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	.LVL33-.Ltext0
	.dword	.LFE34-.Ltext0
	.word	0x1
	.byte	0x5b
	.dword	0
	.dword	0
.LLST23:
	.dword	.LVL35-.Ltext0
	.dword	.LVL40-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL40-.Ltext0
	.dword	.LFE35-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST24:
	.dword	.LVL35-.Ltext0
	.dword	.LVL36-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.dword	.LVL38-.Ltext0
	.dword	.LVL39-.Ltext0
	.word	0x1
	.byte	0x59
	.dword	0
	.dword	0
.LLST25:
	.dword	.LVL35-.Ltext0
	.dword	.LVL36-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.dword	.LVL37-.Ltext0
	.dword	.LVL39-.Ltext0
	.word	0x1
	.byte	0x5d
	.dword	0
	.dword	0
.LLST26:
	.dword	.LVL41-.Ltext0
	.dword	.LVL42-.Ltext0
	.word	0x1
	.byte	0x5a
	.dword	.LVL42-.Ltext0
	.dword	.LFE36-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.dword	0
	.dword	0
.LLST27:
	.dword	.LFB37-.Ltext0
	.dword	.LCFI13-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.dword	.LCFI13-.Ltext0
	.dword	.LCFI14-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 4
	.dword	.LCFI14-.Ltext0
	.dword	.LFE37-.Ltext0
	.word	0x2
	.byte	0x7e
	.sleb128 20
	.dword	0
	.dword	0
	.section	.debug_aranges,"",@progbits
	.dword	0x1c
	.word	0x2
	.dword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.dword	.Ltext0
	.dword	.Letext0-.Ltext0
	.dword	0
	.dword	0
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
.LASF43:
	.string	"cris-elf.c"
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
