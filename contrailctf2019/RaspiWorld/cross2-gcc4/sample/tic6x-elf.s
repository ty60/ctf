	.file	"tic6x-elf.c"
	.c6xabi_attribute Tag_ABI_array_object_alignment, 0
	.c6xabi_attribute Tag_ABI_array_object_align_expected, 0
	.c6xabi_attribute Tag_ABI_stack_align_needed, 0
	.c6xabi_attribute Tag_ABI_stack_align_preserved, 0
	.c6xabi_attribute Tag_ABI_conformance, "1.0"
;# GNU C (GCC) version 4.7.2 (tic6x-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc tic6x-elf.c -auxbase-strip tic6x-elf.s -g -O
;# -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
;# options enabled:  -fauto-inc-dec -fbranch-count-reg
;# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
;# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
;# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
;# -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime
;# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
;# -finline -finline-atomics -finline-functions-called-once -fipa-profile
;# -fipa-pure-const -fipa-reference -fira-share-save-slots
;# -fira-share-spill-slots -fivopts -fkeep-static-consts
;# -fleading-underscore -fmath-errno -fmerge-constants
;# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;# -fpeephole -fprefetch-loop-arrays -freciprocal-math -freg-struct-return
;# -frename-registers -fsched-critical-path-heuristic
;# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
;# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
;# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
;# -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
;# -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
;# -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
;# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
;# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
;# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
;# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
;# -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
;# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
;# -mlittle-endian

.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	null
	.cfi_sections .debug_frame
	.type	null, @function
null:
.LFB0:
	.file 1 "tic6x-elf.c"
	.loc 1 2 0
	.cfi_startproc
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE0:
	.size	null, .-null
	.align	2
	.global	return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
	.loc 1 7 0
	.cfi_startproc
	.loc 1 9 0
		mvk	.d1	0, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE1:
	.size	return_zero, .-return_zero
	.align	2
	.global	return_one
	.type	return_one, @function
return_one:
.LFB2:
	.loc 1 12 0
	.cfi_startproc
	.loc 1 14 0
		mvk	.d1	1, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE2:
	.size	return_one, .-return_one
	.align	2
	.global	return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
	.loc 1 17 0
	.cfi_startproc
	.loc 1 19 0
		mvk	.d1	4, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE3:
	.size	return_int_size, .-return_int_size
	.align	2
	.global	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
	.loc 1 22 0
	.cfi_startproc
	.loc 1 24 0
		mvk	.d1	4, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.align	2
	.global	return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
	.loc 1 27 0
	.cfi_startproc
	.loc 1 29 0
		mvk	.d1	2, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE5:
	.size	return_short_size, .-return_short_size
	.align	2
	.global	return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
	.loc 1 32 0
	.cfi_startproc
	.loc 1 34 0
		mvk	.d1	4, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE6:
	.size	return_long_size, .-return_long_size
	.align	2
	.global	return_short
	.type	return_short, @function
return_short:
.LFB7:
	.loc 1 37 0
	.cfi_startproc
	.loc 1 39 0
		mvk	.s1	30600, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE7:
	.size	return_short, .-return_short
	.align	2
	.global	return_long
	.type	return_long, @function
return_long:
.LFB8:
	.loc 1 42 0
	.cfi_startproc
	.loc 1 44 0
		mvk	.s1	-26198, A4	;#,
		mvklh	.s1	30600, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE8:
	.size	return_long, .-return_long
	.align	2
	.global	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
	.loc 1 47 0
	.cfi_startproc
	.loc 1 49 0
		mvk	.s1	-18, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.align	2
	.global	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
	.loc 1 52 0
	.cfi_startproc
	.loc 1 54 0
		mvk	.s1	-8756, A4	;#,
		mvklh	.s1	65518, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.align	2
	.global	return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	.loc 1 59 0
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE11:
	.size	return_arg1, .-return_arg1
	.align	2
	.global	return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
	.loc 1 62 0
	.cfi_startproc
.LVL1:
	.loc 1 64 0
		mv	.l1x	B4, A4	;# b,
.LVL2:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE12:
	.size	return_arg2, .-return_arg2
	.align	2
	.global	add
	.type	add, @function
add:
.LFB13:
	.loc 1 67 0
	.cfi_startproc
.LVL3:
	.loc 1 69 0
		add	.d1x	A4, B4, A4	;# a, b,
.LVL4:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE13:
	.size	add, .-add
	.align	2
	.global	add3
	.type	add3, @function
add3:
.LFB14:
	.loc 1 72 0
	.cfi_startproc
.LVL5:
	.loc 1 73 0
		add	.d1x	A4, B4, A4	;# a, b, tmp80
.LVL6:
	.loc 1 74 0
		add	.d1	A4, A6, A4	;# tmp80, c,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE14:
	.size	add3, .-add3
	.align	2
	.global	add_two
	.type	add_two, @function
add_two:
.LFB15:
	.loc 1 77 0
	.cfi_startproc
.LVL7:
	.loc 1 79 0
		add	.d1	A4, 2, A4	;# a,,
.LVL8:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE15:
	.size	add_two, .-add_two
	.align	2
	.global	inc
	.type	inc, @function
inc:
.LFB16:
	.loc 1 82 0
	.cfi_startproc
.LVL9:
	.loc 1 84 0
		add	.d1	A4, 1, A4	;# a,,
.LVL10:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE16:
	.size	inc, .-inc
	.align	2
	.global	or
	.type	or, @function
or:
.LFB17:
	.loc 1 87 0
	.cfi_startproc
.LVL11:
	.loc 1 89 0
		or	.d1x	A4, B4, A4	;# a, b,
.LVL12:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE17:
	.size	or, .-or
	.align	2
	.global	or_one
	.type	or_one, @function
or_one:
.LFB18:
	.loc 1 92 0
	.cfi_startproc
.LVL13:
	.loc 1 94 0
		or	.d1	1, A4, A4	;#, a,
.LVL14:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE18:
	.size	or_one, .-or_one
	.align	2
	.global	load
	.type	load, @function
load:
.LFB19:
	.loc 1 97 0
	.cfi_startproc
.LVL15:
	.loc 1 98 0
		ldw	.d1t1	*A4, A4	;# *p_1(D), D.1112
		nop	4	;#
.LVL16:
	.loc 1 99 0
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE19:
	.size	load, .-load
	.align	2
	.global	store
	.type	store, @function
store:
.LFB20:
	.loc 1 102 0
	.cfi_startproc
.LVL17:
	.loc 1 103 0
		mvk	.s1	255, A3	;#, tmp74
		stw	.d1t1	A3, *A4	;# tmp74, *p_1(D)
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE20:
	.size	store, .-store
	.align	2
	.global	load_long
	.type	load_long, @function
load_long:
.LFB21:
	.loc 1 107 0
	.cfi_startproc
.LVL18:
	.loc 1 108 0
		ldw	.d1t1	*A4, A4	;# *p_1(D), D.1110
		nop	4	;#
.LVL19:
	.loc 1 109 0
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE21:
	.size	load_long, .-load_long
	.align	2
	.global	store_long
	.type	store_long, @function
store_long:
.LFB22:
	.loc 1 112 0
	.cfi_startproc
.LVL20:
	.loc 1 113 0
		mvk	.s1	13124, A3	;#, tmp74
		mvklh	.s1	4386, A3	;#, tmp74
		stw	.d1t1	A3, *A4	;# tmp74, *p_1(D)
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE22:
	.size	store_long, .-store_long
	.align	2
	.global	member
	.type	member, @function
member:
.LFB23:
	.loc 1 123 0
	.cfi_startproc
.LVL21:
	.loc 1 124 0
		mvk	.d1	1, A3	;#, tmp76
		stw	.d1t1	A3, *+A4(4)	;# tmp76, p_1(D)->b
	.loc 1 126 0
		ldw	.d1t1	*+A4(8), A4	;# p_1(D)->c,
		nop	4	;#
.LVL22:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE23:
	.size	member, .-member
	.align	2
	.global	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.cfi_startproc
	.loc 1 134 0
		addaw	.d1x	B14, (static_value), A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.align	2
	.global	get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
	.loc 1 137 0
	.cfi_startproc
	.loc 1 139 0
		ldw	.d2t1	*+B14(static_value), A4	;# static_value,
		nop	4	;#
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE25:
	.size	get_static_value, .-get_static_value
	.align	2
	.global	set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
	.loc 1 142 0
	.cfi_startproc
.LVL23:
	.loc 1 143 0
		stw	.d2t1	A4, *+B14(static_value)	;# a, static_value
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE26:
	.size	set_static_value, .-set_static_value
	.align	2
	.global	set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
	.loc 1 149 0
	.cfi_startproc
		sub	.d2	B15, 16, B15	;#,,
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 150 0
		mvk	.s1	254, A3	;#, tmp73
		stw	.d2t1	A3, *+B15(12)	;# tmp73, a
.LVL24:
	.loc 1 151 0
		mvk	.s1	255, A4	;#, tmp74
		stw	.d2t1	A4, *+B15(8)	;# tmp74, b
.LVL25:
	.loc 1 152 0
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE27:
	.size	set_stack, .-set_stack
	.align	2
	.global	use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
	.loc 1 155 0
	.cfi_startproc
		sub	.d2	B15, 16, B15	;#,,
.LCFI1:
	.cfi_def_cfa_offset 16
	.loc 1 156 0
		mvk	.s1	254, A3	;#, tmp77
		stw	.d2t1	A3, *+B15(12)	;# tmp77, a
.LVL26:
	.loc 1 157 0
		mvk	.s1	255, A4	;#, tmp78
		stw	.d2t1	A4, *+B15(8)	;# tmp78, b
.LVL27:
	.loc 1 158 0
		ldw	.d2t1	*+B15(12), A5	;# a, a.1
		nop	4	;#
		ldw	.d2t1	*+B15(8), A6	;# b, b.2
		nop	4	;#
	.loc 1 159 0
		add	.d1	A5, A6, A4	;# a.1, b.2,
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE28:
	.size	use_stack, .-use_stack
	.align	2
	.global	call_self
	.type	call_self, @function
call_self:
.LFB29:
	.loc 1 162 0
	.cfi_startproc
		sub	.d2	B15, 16, B15	;#,,
.LCFI2:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B3, *+B15(12)	;#,
	.cfi_offset 19, -4
	.loc 1 163 0
		callp	.s2	(call_self), B3	;#
.LVL28:
	.loc 1 164 0
		ldw	.d2t2	*+B15(12), B3	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE29:
	.size	call_self, .-call_self
	.align	2
	.global	call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
	.loc 1 167 0
	.cfi_startproc
.LVL29:
		sub	.d2	B15, 16, B15	;#,,
.LCFI3:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B3, *+B15(12)	;#,
	.cfi_offset 19, -4
	.loc 1 168 0
		callp	.s2	(return_arg1), B3	;#
.LVL30:
	.loc 1 169 0
		ldw	.d2t2	*+B15(12), B3	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE30:
	.size	call_simple, .-call_simple
	.align	2
	.global	call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
	.loc 1 172 0
	.cfi_startproc
		sub	.d2	B15, 16, B15	;#,,
.LCFI4:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B3, *+B15(12)	;#,
	.cfi_offset 19, -4
	.loc 1 173 0
		mvk	.s1	254, A4	;#,
		callp	.s2	(return_arg1), B3	;#
.LVL31:
	.loc 1 174 0
		add	.d1	A4, 1, A4	;#,,
		ldw	.d2t2	*+B15(12), B3	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE31:
	.size	call_complex1, .-call_complex1
	.align	2
	.global	call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
	.loc 1 177 0
	.cfi_startproc
.LVL32:
		sub	.d2	B15, 16, B15	;#,,
.LCFI5:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B3, *+B15(16)	;#,
		stw	.d2t1	A10, *+B15(12)	;#,
	.cfi_offset 19, 0
	.cfi_offset 10, -4
		mv	.l1x	B4, A10	;# b, b
	.loc 1 178 0
		mv	.l1x	B4, A4	;# b,
.LVL33:
		callp	.s2	(return_arg1), B3	;#
.LVL34:
		stw	.d2t1	A4, *+B14(static_value)	;#, static_value
	.loc 1 180 0
		mv	.d1	A10, A4	;# b,
		ldw	.d2t1	*+B15(12), A10	;#,
		nop	4	;#
.LVL35:
		ldw	.d2t2	*+B15(16), B3	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE32:
	.size	call_complex2, .-call_complex2
	.align	2
	.global	call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
	.loc 1 183 0
	.cfi_startproc
.LVL36:
		sub	.d2	B15, 16, B15	;#,,
.LCFI6:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B3, *+B15(12)	;#,
	.cfi_offset 19, -4
	.loc 1 184 0
		call	.s2x	A4	;# f
		addkpc	.s2	.L39, B3, 4	;#,,
.L39:
	.loc 1 185 0
		ldw	.d2t2	*+B15(12), B3	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE33:
	.size	call_pointer, .-call_pointer
	.align	2
	.global	condition
	.type	condition, @function
condition:
.LFB34:
	.loc 1 188 0
	.cfi_startproc
.LVL37:
	.loc 1 189 0
		mv	.l1x	B4, A3	;# b,
		cmpeq	.l1	A3, A4, A0	;#,, a, tmp77
	.loc 1 190 0
	[A0]	mvk	.d2	1, B4	;#, b
.LVL38:
	.loc 1 192 0
		add	.l1x	1, B4, A4	;#, b,
.LVL39:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE34:
	.size	condition, .-condition
	.align	2
	.global	loop
	.type	loop, @function
loop:
.LFB35:
	.loc 1 195 0
	.cfi_startproc
.LVL40:
	.loc 1 197 0
		cmplt	.l1	0, A4, A0	;#,, n, tmp78
	.loc 1 196 0
	[!A0]	mvk	.d1	0, A3	;#, sum
	.loc 1 197 0
	[!A0]	b	.s2	.L44	;#,
		nop	5	;#
	.loc 1 196 0 discriminator 2
		mvk	.d1	0, A3	;#, sum
	.loc 1 197 0 discriminator 2
		mvk	.d1	0, A5	;#, i
		sub	.d1	A4, A5, A1	;# n, i, tmp81
.LVL41:
.L45:
		sub	.d1	A1, 1, A1	;# tmp81,, tmp81
	.loc 1 198 0 discriminator 2
		add	.d1	A3, A5, A3	;# sum, i, sum
.LVL42:
	.loc 1 197 0 discriminator 2
		add	.d1	A5, 1, A5	;# i,, i
.LVL43:
	[A1]	b	.s2	.L45	;#,
		nop	5	;#
.LVL44:
.L44:
	.loc 1 200 0
		mv	.d1	A3, A4	;# sum,
.LVL45:
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE35:
	.size	loop, .-loop
	.align	2
	.global	many_args
	.type	many_args, @function
many_args:
.LFB36:
	.loc 1 204 0
	.cfi_startproc
.LVL46:
		sub	.d2	B15, 8, B15	;#,,
.LCFI7:
	.cfi_def_cfa_offset 8
		stw	.d2t2	B10, *+B15(8)	;#,
	.cfi_offset 26, 0
	.loc 1 205 0
		add	.d2x	B6, A4, B6	;# a3, a0, tmp86
.LVL47:
		add	.d2	B6, B8, B8	;# tmp86, a5, tmp87
.LVL48:
	.loc 1 206 0
		add	.d2	B8, B10, B4	;# tmp87, a7,
.LVL49:
		mv	.l1x	B4, A4	;#,
.LVL50:
		ldw	.d2t2	*+B15(8), B10	;#,
		nop	4	;#
		add	.d2	B15, 8, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE36:
	.size	many_args, .-many_args
	.align	2
	.global	call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
	.loc 1 209 0
	.cfi_startproc
		sub	.d2	B15, 16, B15	;#,,
.LCFI8:
	.cfi_def_cfa_offset 16
		stw	.d2t2	B10, *+B15(16)	;#,
		stw	.d2t2	B3, *+B15(12)	;#,
		stw	.d2t1	A10, *+B15(8)	;#,
	.cfi_offset 26, 0
	.cfi_offset 19, -4
	.cfi_offset 10, -8
	.loc 1 210 0
		mvk	.d1	0, A4	;#,
		mvk	.d2	1, B4	;#,
		mvk	.d1	2, A6	;#,
		mvk	.d2	3, B6	;#,
		mvk	.d1	4, A8	;#,
		mvk	.d2	5, B8	;#,
		mvk	.d1	6, A10	;#,
		mvk	.d2	7, B10	;#,
		callp	.s2	(many_args), B3	;#
.LVL51:
	.loc 1 211 0
		ldw	.d2t1	*+B15(8), A10	;#,
		nop	4	;#
		ldw	.d2t2	*+B15(12), B3	;#,
		nop	4	;#
		ldw	.d2t2	*+B15(16), B10	;#,
		nop	4	;#
		add	.d2	B15, 16, B15	;#,,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE37:
	.size	call_many_args, .-call_many_args
	.align	2
	.global	direct
	.type	direct, @function
direct:
.LFB38:
	.loc 1 215 0
	.cfi_startproc
	.loc 1 216 0
	; #APP 
;# 216 "tic6x-elf.c" 1
	nop
;# 0 "" 2
	; #NO_APP 
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE38:
	.size	direct, .-direct
	.align	2
	.global	binary
	.type	binary, @function
binary:
.LFB39:
	.loc 1 223 0
	.cfi_startproc
	.loc 1 224 0
	; #APP 
;# 224 "tic6x-elf.c" 1
	.align 4
;# 0 "" 2
	.loc 1 225 0
;# 225 "tic6x-elf.c" 1
	.int 0x0
;# 0 "" 2
	; #NO_APP 
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE39:
	.size	binary, .-binary
	.align	2
	.global	main
	.type	main, @function
main:
.LFB40:
	.loc 1 231 0
	.cfi_startproc
	.loc 1 233 0
		mvk	.d1	0, A4	;#,
		ret	.s2	B3	;#
		nop	5	;#
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.global	static_long
	.section	.neardata,"aw",@progbits
	.align	2
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.long	305419896
	.global	static_value
	.align	2
	.type	static_value, @object
	.size	static_value, 4
static_value:
	.long	10
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x767
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.4byte	0x56
	.byte	0x1
	.byte	0x54
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
	.byte	0x8f
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
	.byte	0x64
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
	.byte	0x8f
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
	.byte	0x64
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x245
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
	.byte	0x64
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x56
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x270
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x29b
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x2d0
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
	.byte	0x64
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x2fb
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x326
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x326
	.4byte	.LLST7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x32c
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x356
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x326
	.byte	0x1
	.byte	0x54
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x381
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x381
	.4byte	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x387
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x3b1
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x381
	.byte	0x1
	.byte	0x54
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x3dc
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3dc
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
	.4byte	0x3fa
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x43d
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.4byte	0x56
	.byte	0x1
	.byte	0x54
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
	.4byte	0x46f
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.4byte	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x32c
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
	.4byte	0x4a5
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x32c
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x32c
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
	.4byte	0x4c8
	.uleb128 0x12
	.4byte	.LVL28
	.4byte	0x4a5
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
	.4byte	0x505
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
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.4byte	0x533
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
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
	.4byte	0x57c
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
	.byte	0x54
	.byte	0x2
	.byte	0x7a
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
	.4byte	0x5a2
	.uleb128 0x9
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5a8
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5a2
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x5e6
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST20
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST21
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.4byte	0x62d
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST22
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST23
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST24
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST25
	.byte	0x1
	.4byte	0x6b4
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
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST28
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x1
	.byte	0x58
	.uleb128 0xa
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.4byte	.LLST29
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x1
	.byte	0x5a
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x1
	.byte	0x6a
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x706
	.uleb128 0x14
	.4byte	.LVL51
	.4byte	0x62d
	.uleb128 0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
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
	.byte	0x8f
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
	.byte	0x8f
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
	.byte	0x8f
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	static_value
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x81
	.4byte	0x138
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x8f
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
.LASF43:
	.string	"tic6x-elf.c"
.LASF24:
	.string	"set_static_value"
.LASF22:
	.string	"get_static_value_addr"
	.ident	"GCC: (GNU) 4.7.2"
