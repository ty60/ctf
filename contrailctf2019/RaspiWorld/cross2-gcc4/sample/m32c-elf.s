	.file	"m32c-elf.c"
; GNU C (GCC) version 4.7.2 (m32c-elf)
;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -nostdinc m32c-elf.c -auxbase-strip m32c-elf.s -g -O
; -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
; options enabled:  -fauto-inc-dec -fbranch-count-reg -fcommon
; -fcompare-elim -fcprop-registers -fdebug-types-section -fdefer-pop
; -fdelete-null-pointer-checks -fearly-inlining
; -feliminate-unused-debug-types -fforward-propagate -fgcse-lm
; -fgnu-runtime -fguess-branch-probability -fident -fif-conversion
; -fif-conversion2 -finline -finline-atomics -finline-functions-called-once
; -fipa-profile -fipa-pure-const -fipa-reference -fira-share-save-slots
; -fira-share-spill-slots -fivopts -fkeep-static-consts
; -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
; -fmove-loop-invariants -fomit-frame-pointer -fpcc-struct-return
; -fpeephole -fprefetch-loop-arrays -fsched-critical-path-heuristic
; -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
; -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
; -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
; -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
; -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
; -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
; -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop
; -ftree-fre -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
; -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
; -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
; -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
; -fvar-tracking -fvar-tracking-assignments -fverbose-asm
; -fzero-initialized-in-bss

.text
.Ltext0:
	.global	_null
	.type	_null, @function
_null:
.LFB0:
	.file 1 "m32c-elf.c"
	.loc 1 2 0
	.loc 1 4 0
	rts
.LFE0:
	.size	_null, .-_null
	.global	_return_zero
	.type	_return_zero, @function
_return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 9 0
	mov.w	#0,r0	;,
	rts
.LFE1:
	.size	_return_zero, .-_return_zero
	.global	_return_one
	.type	_return_one, @function
_return_one:
.LFB2:
	.loc 1 12 0
	.loc 1 14 0
	mov.w	#1,r0	;,
	rts
.LFE2:
	.size	_return_one, .-_return_one
	.global	_return_int_size
	.type	_return_int_size, @function
_return_int_size:
.LFB3:
	.loc 1 17 0
	.loc 1 19 0
	mov.w	#2,r0	;,
	rts
.LFE3:
	.size	_return_int_size, .-_return_int_size
	.global	_return_pointer_size
	.type	_return_pointer_size, @function
_return_pointer_size:
.LFB4:
	.loc 1 22 0
	.loc 1 24 0
	mov.w	#2,r0	;,
	rts
.LFE4:
	.size	_return_pointer_size, .-_return_pointer_size
	.global	_return_short_size
	.type	_return_short_size, @function
_return_short_size:
.LFB5:
	.loc 1 27 0
	.loc 1 29 0
	mov.w	#2,r0	;,
	rts
.LFE5:
	.size	_return_short_size, .-_return_short_size
	.global	_return_long_size
	.type	_return_long_size, @function
_return_long_size:
.LFB6:
	.loc 1 32 0
	.loc 1 34 0
	mov.w	#4,r0	;,
	rts
.LFE6:
	.size	_return_long_size, .-_return_long_size
	.global	_return_short
	.type	_return_short, @function
_return_short:
.LFB7:
	.loc 1 37 0
	.loc 1 39 0
	mov.w	#30600,r0	;,
	rts
.LFE7:
	.size	_return_short, .-_return_short
	.global	_return_long
	.type	_return_long, @function
_return_long:
.LFB8:
	.loc 1 42 0
	.loc 1 44 0
	mov.w	#30600,mem2	;,
	mov.w	#-26198,mem0	;,
	rts
.LFE8:
	.size	_return_long, .-_return_long
	.global	_return_short_upper
	.type	_return_short_upper, @function
_return_short_upper:
.LFB9:
	.loc 1 47 0
	.loc 1 49 0
	mov.w	#-18,r0	;,
	rts
.LFE9:
	.size	_return_short_upper, .-_return_short_upper
	.global	_return_long_upper
	.type	_return_long_upper, @function
_return_long_upper:
.LFB10:
	.loc 1 52 0
	.loc 1 54 0
	mov.w	#-18,mem2	;,
	mov.w	#-8756,mem0	;,
	rts
.LFE10:
	.size	_return_long_upper, .-_return_long_upper
	.global	_return_arg1
	.type	_return_arg1, @function
_return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	mov.w	r1,r0	; a, a
	.loc 1 59 0
	rts
.LFE11:
	.size	_return_arg1, .-_return_arg1
	.global	_return_arg2
	.type	_return_arg2, @function
_return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	mov.w	r2,r0	; b, b
	.loc 1 64 0
	rts
.LFE12:
	.size	_return_arg2, .-_return_arg2
	.global	_add
	.type	_add, @function
_add:
.LFB13:
	.loc 1 67 0
.LVL2:
	.loc 1 68 0
	mov.w	r1,r0	; a, tmp30
	add.w	r2,r0	; b, tmp30
	.loc 1 69 0
	rts
.LFE13:
	.size	_add, .-_add
	.global	_add3
	.type	_add3, @function
_add3:
.LFB14:
	.loc 1 72 0
.LVL3:
	enter	#0
.LCFI0:
	.loc 1 73 0
	add.w	r2,r1	; b, tmp33
.LVL4:
	mov.w	r1,r0	; tmp33, tmp32
	add.w	5[fb],r0	; c, tmp32
	.loc 1 74 0
	exitd
.LFE14:
	.size	_add3, .-_add3
	.global	_add_two
	.type	_add_two, @function
_add_two:
.LFB15:
	.loc 1 77 0
.LVL5:
	.loc 1 78 0
	mov.w	r1,r0	; a, tmp29
	add.w	#2,r0	;, tmp29
	.loc 1 79 0
	rts
.LFE15:
	.size	_add_two, .-_add_two
	.global	_inc
	.type	_inc, @function
_inc:
.LFB16:
	.loc 1 82 0
.LVL6:
	.loc 1 83 0
	mov.w	r1,r0	; a, tmp29
	add.w	#1,r0	;, tmp29
.LVL7:
	.loc 1 84 0
	rts
.LFE16:
	.size	_inc, .-_inc
	.global	_or
	.type	_or, @function
_or:
.LFB17:
	.loc 1 87 0
.LVL8:
	.loc 1 88 0
	mov.w	r2,r0	; b, tmp30
	or.w	r1,r0	; a, tmp30
	.loc 1 89 0
	rts
.LFE17:
	.size	_or, .-_or
	.global	_or_one
	.type	_or_one, @function
_or_one:
.LFB18:
	.loc 1 92 0
.LVL9:
	.loc 1 93 0
	mov.w	r1,r0	; a, tmp29
	bset	0,r0	;, tmp29
	.loc 1 94 0
	rts
.LFE18:
	.size	_or_one, .-_or_one
	.global	_load
	.type	_load, @function
_load:
.LFB19:
	.loc 1 97 0
.LVL10:
	.loc 1 98 0
	mov.w	r1,a0	; p,
	mov.w	[a0],r0	; *p_1(D), D.1028
	.loc 1 99 0
	rts
.LFE19:
	.size	_load, .-_load
	.global	_store
	.type	_store, @function
_store:
.LFB20:
	.loc 1 102 0
.LVL11:
	.loc 1 103 0
	mov.w	r1,a0	; p,
	mov.w	#255,[a0]	;, *p_1(D)
	.loc 1 104 0
	rts
.LFE20:
	.size	_store, .-_store
	.global	_load_long
	.type	_load_long, @function
_load_long:
.LFB21:
	.loc 1 107 0
.LVL12:
	.loc 1 108 0
	mov.w	r1,a0	; p,
	add.w	#2,a0	;,
	mov.w	[a0],r0	; *p_1(D), D.1026
	mov.w	r1,a0	; p,
	mov.w	[a0],r2	; *p_1(D), D.1026
	.loc 1 109 0
	mov.w	r2,mem0	; D.1026,
	mov.w	r0,mem2	; D.1026,
	rts
.LFE21:
	.size	_load_long, .-_load_long
	.global	_store_long
	.type	_store_long, @function
_store_long:
.LFB22:
	.loc 1 112 0
.LVL13:
	.loc 1 113 0
	mov.w	#4386,r0	;,
	mov.w	r1,a0	; p,
	mov.w	r0,2[a0]	;, *p_1(D)
	mov.w	#13124,[a0]	;, *p_1(D)
	.loc 1 114 0
	rts
.LFE22:
	.size	_store_long, .-_store_long
	.global	_member
	.type	_member, @function
_member:
.LFB23:
	.loc 1 123 0
.LVL14:
	.loc 1 124 0
	mov.w	#1,r0	;,
	mov.w	r1,a0	; p,
	mov.w	r0,2[a0]	;, p_1(D)->b
	.loc 1 125 0
	add.w	#4,a0	;,
	mov.w	[a0],r0	; p_1(D)->c, p_1(D)->c
	.loc 1 126 0
	rts
.LFE23:
	.size	_member, .-_member
	.global	_get_static_value_addr
	.type	_get_static_value_addr, @function
_get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.loc 1 134 0
	mov.w	#_static_value,r0	;,
	rts
.LFE24:
	.size	_get_static_value_addr, .-_get_static_value_addr
	.global	_get_static_value
	.type	_get_static_value, @function
_get_static_value:
.LFB25:
	.loc 1 137 0
	.loc 1 139 0
	mov.w	_static_value,r0	; static_value,
	rts
.LFE25:
	.size	_get_static_value, .-_get_static_value
	.global	_set_static_value
	.type	_set_static_value, @function
_set_static_value:
.LFB26:
	.loc 1 142 0
.LVL15:
	.loc 1 143 0
	mov.w	r1,_static_value	; a, static_value
	.loc 1 144 0
	rts
.LFE26:
	.size	_set_static_value, .-_set_static_value
	.global	_set_stack
	.type	_set_stack, @function
_set_stack:
.LFB27:
	.loc 1 149 0
	enter	#6-2	;
.LCFI1:
	.loc 1 150 0
	mov.w	#254,-2[fb]	;, a
.LVL16:
	.loc 1 151 0
	mov.w	#255,-4[fb]	;, b
.LVL17:
	.loc 1 152 0
	exitd
.LFE27:
	.size	_set_stack, .-_set_stack
	.global	_use_stack
	.type	_use_stack, @function
_use_stack:
.LFB28:
	.loc 1 155 0
	enter	#6-2	;
.LCFI2:
	.loc 1 156 0
	mov.w	#254,-2[fb]	;, a
.LVL18:
	.loc 1 157 0
	mov.w	#255,-4[fb]	;, b
.LVL19:
	.loc 1 158 0
	mov.w	-2[fb],r0	; a, tmp30
	add.w	-4[fb],r0	; b, tmp30
	.loc 1 159 0
	exitd
.LFE28:
	.size	_use_stack, .-_use_stack
	.global	_call_self
	.type	_call_self, @function
_call_self:
.LFB29:
	.loc 1 162 0
	.loc 1 163 0
	jsr.a	_call_self	; call_self
.LVL20:
	.loc 1 164 0
	rts
.LFE29:
	.size	_call_self, .-_call_self
	.global	_call_simple
	.type	_call_simple, @function
_call_simple:
.LFB30:
	.loc 1 167 0
.LVL21:
	.loc 1 168 0
	jsr.a	_return_arg1	; return_arg1
.LVL22:
	.loc 1 169 0
	rts
.LFE30:
	.size	_call_simple, .-_call_simple
	.global	_call_complex1
	.type	_call_complex1, @function
_call_complex1:
.LFB31:
	.loc 1 172 0
	.loc 1 173 0
	mov.w	#254,r1	;,
	jsr.a	_return_arg1	; return_arg1
.LVL23:
	add.w	#1,r0	;, tmp29
	.loc 1 174 0
	rts
.LFE31:
	.size	_call_complex1, .-_call_complex1
	.global	_call_complex2
	.type	_call_complex2, @function
_call_complex2:
.LFB32:
	.loc 1 177 0
.LVL24:
	enter	#4-2	;
.LCFI3:
	mov.w	r2,-2[fb]	; b, %sfp
	.loc 1 178 0
	mov.w	r2,r1	; b,
.LVL25:
	jsr.a	_return_arg1	; return_arg1
.LVL26:
	mov.w	r0,_static_value	; static_value.0, static_value
	.loc 1 180 0
	mov.w	-2[fb],r0	; %sfp,
	exitd
.LFE32:
	.size	_call_complex2, .-_call_complex2
	.global	_call_pointer
	.type	_call_pointer, @function
_call_pointer:
.LFB33:
	.loc 1 183 0
.LVL27:
	.loc 1 184 0
	mov.w	r1,a0	; f,
	push.w a0 | jsr.a	m32c_jsri16	; *f_1(D)
.LVL28:
	.loc 1 185 0
	rts
.LFE33:
	.size	_call_pointer, .-_call_pointer
	.global	_condition
	.type	_condition, @function
_condition:
.LFB34:
	.loc 1 188 0
.LVL29:
	.loc 1 189 0
	cmp.w	r2,r1	; b, a
	jne	.L36	;,
	.loc 1 190 0
	mov.w	#1,r2	;, b
.LVL30:
.L36:
	.loc 1 191 0
	mov.w	r2,r0	; b, tmp30
	add.w	#1,r0	;, tmp30
	.loc 1 192 0
	rts
.LFE34:
	.size	_condition, .-_condition
	.global	_loop
	.type	_loop, @function
_loop:
.LFB35:
	.loc 1 195 0
.LVL31:
	.loc 1 197 0
	cmp.w	#0,r1	;, n
	jle	.L41	;,
	.loc 1 196 0 discriminator 2
	mov.w	#0,r0	;, sum
	.loc 1 197 0 discriminator 2
	mov.w	r0,r2	; sum, i
.LVL32:
.L40:
	.loc 1 198 0 discriminator 2
	add.w	r2,r0	; i, sum
.LVL33:
	.loc 1 197 0 discriminator 2
	add.w	#1,r2	;, i
.LVL34:
	cmp.w	r1,r2	; n, i
	jne	.L40	;,
	jmp.a	.L39	;
.LVL35:
.L41:
	.loc 1 196 0
	mov.w	#0,r0	;, sum
.LVL36:
.L39:
	.loc 1 200 0
	rts
.LFE35:
	.size	_loop, .-_loop
	.global	_many_args
	.type	_many_args, @function
_many_args:
.LFB36:
	.loc 1 204 0
.LVL37:
	enter	#0
.LCFI4:
	.loc 1 205 0
	mov.w	r1,r0	; a0, tmp39
	add.w	7[fb],r0	; a3, tmp39
	add.w	11[fb],r0	; a5, tmp40
	add.w	15[fb],r0	; a7, tmp38
	.loc 1 206 0
	exitd
.LFE36:
	.size	_many_args, .-_many_args
	.global	_call_many_args
	.type	_call_many_args, @function
_call_many_args:
.LFB37:
	.loc 1 209 0
	enter	#0
.LCFI5:
	.loc 1 210 0
	push.w	#7	;
	push.w	#6	;
	push.w	#5	;
	push.w	#4	;
	push.w	#3	;
	push.w	#2	;
	mov.w	#1,r2	;,
	mov.w	#0,r1	;,
	jsr.a	_many_args	; many_args
.LVL38:
	add.w	#12,sp	;,
	.loc 1 211 0
	exitd
.LFE37:
	.size	_call_many_args, .-_call_many_args
	.global	_direct
	.type	_direct, @function
_direct:
.LFB38:
	.loc 1 215 0
	.loc 1 216 0
; 216 "m32c-elf.c" 1
	nop
; 0 "" 2
	.loc 1 218 0
	rts
.LFE38:
	.size	_direct, .-_direct
	.global	_binary
	.type	_binary, @function
_binary:
.LFB39:
	.loc 1 223 0
	.loc 1 224 0
; 224 "m32c-elf.c" 1
	.align 4
; 0 "" 2
	.loc 1 225 0
; 225 "m32c-elf.c" 1
	.int 0x0
; 0 "" 2
	.loc 1 227 0
	rts
.LFE39:
	.size	_binary, .-_binary
	.global	_main
	.type	_main, @function
_main:
.LFB40:
	.loc 1 231 0
	.loc 1 233 0
	mov.w	#0,r0	;,
	rts
.LFE40:
	.size	_main, .-_main
	.global	_static_long
.data
	.type	_static_long, @object
	.size	_static_long, 4
_static_long:
	.short	22136
	.short	4660
	.global	_static_value
	.type	_static_value, @object
	.size	_static_value, 2
_static_value:
	.short	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0xd
	.byte	0xc
	.uleb128 0xc
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x3
	.p2align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.p2align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.p2align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.p2align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.p2align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.p2align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.p2align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.p2align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.p2align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.p2align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.p2align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.p2align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.p2align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.p2align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.p2align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.p2align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.p2align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.p2align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.p2align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.p2align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.p2align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.p2align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.p2align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.p2align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.p2align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.p2align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.p2align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.p2align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.p2align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.p2align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.p2align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.p2align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.p2align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI4-.LFB36
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI5-.LFB37
	.byte	0x8b
	.uleb128 0x5
	.byte	0xc
	.uleb128 0xb
	.uleb128 0x5
	.p2align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.p2align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.p2align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.p2align	2
.LEFDE80:
.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x73c
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
	.byte	0x6
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
	.uleb128 0x2
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x77
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x2
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.4byte	0x56
	.byte	0x1
	.byte	0x56
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x1cc
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.4byte	0x56
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"add"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x200
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x42
	.4byte	0x56
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x243
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.4byte	.LLST1
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x26c
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"inc"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x297
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x51
	.4byte	0x56
	.4byte	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"or"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x2ca
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"b"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.byte	0x1
	.byte	0x57
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x2f3
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.4byte	0x56
	.byte	0x1
	.byte	0x56
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x31c
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x31c
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.4byte	0x322
	.uleb128 0xe
	.4byte	0x56
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x34c
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x31c
	.byte	0x1
	.byte	0x56
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x375
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x375
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.4byte	0x37b
	.uleb128 0xe
	.4byte	0x138
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x3a5
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x375
	.byte	0x1
	.byte	0x56
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x3ce
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3ce
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xd
	.byte	0x2
	.4byte	0x25
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.4byte	0x3ec
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.uleb128 0xd
	.byte	0x2
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x42f
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x94
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x461
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x96
	.4byte	0x322
	.byte	0x2
	.byte	0x91
	.sleb128 -7
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x322
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x56
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x497
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x322
	.byte	0x2
	.byte	0x91
	.sleb128 -7
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x322
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x4b9
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x497
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
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x4f5
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0x16f
	.uleb128 0x16
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x56
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x522
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x16f
	.uleb128 0x16
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x56d
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST7
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x16f
	.uleb128 0x16
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x91
	.sleb128 -7
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x2
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x59d
	.uleb128 0xc
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5a3
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LVL28
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x56
	.uleb128 0xd
	.byte	0x2
	.4byte	0x59d
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x5df
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST10
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.4byte	0x624
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST11
	.uleb128 0x1a
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST12
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x6a9
	.uleb128 0x9
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.uleb128 0x9
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 2
	.uleb128 0x9
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 6
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 10
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x6db
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x624
	.uleb128 0x16
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x7c
	.sleb128 3
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
	.byte	0x7c
	.sleb128 3
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_static_value
	.uleb128 0x1b
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -7
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7c
	.sleb128 3
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 5
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
.LASF2:
	.string	"return_int_size"
.LASF6:
	.string	"return_short"
.LASF39:
	.string	"main"
.LASF38:
	.string	"binary"
.LASF3:
	.string	"return_pointer_size"
.LASF30:
	.string	"call_complex2"
.LASF45:
	.string	"structure"
.LASF43:
	.string	"m32c-elf.c"
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
