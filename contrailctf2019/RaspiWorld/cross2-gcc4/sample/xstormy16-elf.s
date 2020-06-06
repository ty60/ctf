	.file	"xstormy16-elf.c"
; GNU C (GCC) version 4.7.2 (xstormy16-elf)
;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -nostdinc xstormy16-elf.c -auxbase-strip xstormy16-elf.s
; -g -O -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
; options enabled:  -fauto-inc-dec -fbranch-count-reg
; -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
; -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
; -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
; -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
; -fif-conversion -fif-conversion2 -finline -finline-atomics
; -finline-functions-called-once -fipa-profile -fipa-pure-const
; -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
; -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
; -fsched-critical-path-heuristic -fsched-dep-count-heuristic
; -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
; -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
; -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
; -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
; -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
; -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
; -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
; -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
; -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
; -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
; -ftree-vect-loop-version -funit-at-a-time -fvar-tracking
; -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss

.text
.Ltext0:
	.p2align 1
	.globl null
	.type	null, @function
null:
.LFB0:
	.file 1 "xstormy16-elf.c"
	.loc 1 2 0
	ret
.LFE0:
	.size	null, .-null
	.p2align 1
	.globl return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
	.loc 1 7 0
	.loc 1 9 0
	mov.w r2,#0	;,
	ret
.LFE1:
	.size	return_zero, .-return_zero
	.p2align 1
	.globl return_one
	.type	return_one, @function
return_one:
.LFB2:
	.loc 1 12 0
	.loc 1 14 0
	mov.w r2,#1	;,
	ret
.LFE2:
	.size	return_one, .-return_one
	.p2align 1
	.globl return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
	.loc 1 17 0
	.loc 1 19 0
	mov.w r2,#2	;,
	ret
.LFE3:
	.size	return_int_size, .-return_int_size
	.p2align 1
	.globl return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
	.loc 1 22 0
	.loc 1 24 0
	mov.w r2,#2	;,
	ret
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.p2align 1
	.globl return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
	.loc 1 27 0
	.loc 1 29 0
	mov.w r2,#2	;,
	ret
.LFE5:
	.size	return_short_size, .-return_short_size
	.p2align 1
	.globl return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
	.loc 1 32 0
	.loc 1 34 0
	mov.w r2,#4	;,
	ret
.LFE6:
	.size	return_long_size, .-return_long_size
	.p2align 1
	.globl return_short
	.type	return_short, @function
return_short:
.LFB7:
	.loc 1 37 0
	.loc 1 39 0
	mov.w r2,#30600	;,
	ret
.LFE7:
	.size	return_short, .-return_short
	.p2align 1
	.globl return_long
	.type	return_long, @function
return_long:
.LFB8:
	.loc 1 42 0
	.loc 1 44 0
	mov.w r2,#-26198	;,
	mov.w r3,#30600	;,
	ret
.LFE8:
	.size	return_long, .-return_long
	.p2align 1
	.globl return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
	.loc 1 47 0
	.loc 1 49 0
	mov.w r2,#-18	;,
	ret
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.p2align 1
	.globl return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
	.loc 1 52 0
	.loc 1 54 0
	mov.w r2,#-8756	;,
	mov.w r3,#-18	;,
	ret
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.p2align 1
	.globl return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
	.loc 1 57 0
.LVL0:
	.loc 1 59 0
	ret
.LFE11:
	.size	return_arg1, .-return_arg1
	.p2align 1
	.globl return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
	.loc 1 62 0
.LVL1:
	.loc 1 64 0
	mov r2,r3	;, b
.LVL2:
	ret
.LFE12:
	.size	return_arg2, .-return_arg2
	.p2align 1
	.globl add
	.type	add, @function
add:
.LFB13:
	.loc 1 67 0
.LVL3:
	.loc 1 68 0
	add r2,r3	; tmp29, b
.LVL4:
	.loc 1 69 0
	ret
.LFE13:
	.size	add, .-add
	.p2align 1
	.globl add3
	.type	add3, @function
add3:
.LFB14:
	.loc 1 72 0
.LVL5:
	.loc 1 73 0
	add r3,r2	; tmp32, a
.LVL6:
	mov r2,r3	; tmp31, tmp32
.LVL7:
	add r2,r4	; tmp31, c
	.loc 1 74 0
	ret
.LFE14:
	.size	add3, .-add3
	.p2align 1
	.globl add_two
	.type	add_two, @function
add_two:
.LFB15:
	.loc 1 77 0
.LVL8:
	.loc 1 78 0
	inc r2,#1	; tmp28,
.LVL9:
	.loc 1 79 0
	ret
.LFE15:
	.size	add_two, .-add_two
	.p2align 1
	.globl inc
	.type	inc, @function
inc:
.LFB16:
	.loc 1 82 0
.LVL10:
	.loc 1 83 0
	inc r2,#0	; tmp28,
.LVL11:
	.loc 1 84 0
	ret
.LFE16:
	.size	inc, .-inc
	.p2align 1
	.globl or
	.type	or, @function
or:
.LFB17:
	.loc 1 87 0
.LVL12:
	.loc 1 88 0
	or r2,r3	; tmp29, b
.LVL13:
	.loc 1 89 0
	ret
.LFE17:
	.size	or, .-or
	.p2align 1
	.globl or_one
	.type	or_one, @function
or_one:
.LFB18:
	.loc 1 92 0
.LVL14:
	.loc 1 93 0
	set1 r2,#0	; tmp28,
.LVL15:
	.loc 1 94 0
	ret
.LFE18:
	.size	or_one, .-or_one
	.p2align 1
	.globl load
	.type	load, @function
load:
.LFB19:
	.loc 1 97 0
.LVL16:
	.loc 1 98 0
	mov.w r2,(r2)	; D.1035, *p_1(D)
.LVL17:
	.loc 1 99 0
	ret
.LFE19:
	.size	load, .-load
	.p2align 1
	.globl store
	.type	store, @function
store:
.LFB20:
	.loc 1 102 0
.LVL18:
	.loc 1 103 0
	mov.w r7,#255	;,
	mov.w (r2),r7	; *p_1(D),
	ret
.LFE20:
	.size	store, .-store
	.p2align 1
	.globl load_long
	.type	load_long, @function
load_long:
.LFB21:
	.loc 1 107 0
.LVL19:
	.loc 1 108 0
	mov.w r6,(r2)	; D.1033, *p_1(D)
	mov.w r7,(r2,2)	; D.1033, *p_1(D)
	.loc 1 109 0
	mov r2,r6	;, D.1033
.LVL20:
	mov r3,r7	;, D.1033
	ret
.LFE21:
	.size	load_long, .-load_long
	.p2align 1
	.globl store_long
	.type	store_long, @function
store_long:
.LFB22:
	.loc 1 112 0
.LVL21:
	.loc 1 113 0
	mov.w r6,#13124	;,
	mov.w r7,#4386	;,
	mov.w (r2),r6	; *p_1(D),
	mov.w (r2,2),r7	; *p_1(D),
	ret
.LFE22:
	.size	store_long, .-store_long
	.p2align 1
	.globl member
	.type	member, @function
member:
.LFB23:
	.loc 1 123 0
.LVL22:
	.loc 1 124 0
	mov.w r7,#1	;,
	mov.w (r2,2),r7	; p_1(D)->b,
	.loc 1 125 0
	mov.w r2,(r2,4)	; p_1(D)->c, p_1(D)->c
.LVL23:
	.loc 1 126 0
	ret
.LFE23:
	.size	member, .-member
	.p2align 1
	.globl get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
	.loc 1 132 0
	.loc 1 134 0
	mov.w r2,#static_value	;,
	ret
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.p2align 1
	.globl get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
	.loc 1 137 0
	.loc 1 138 0
	mov.w r7,#static_value	; tmp28,
	mov.w r2,(r7)	; static_value, static_value
	.loc 1 139 0
	ret
.LFE25:
	.size	get_static_value, .-get_static_value
	.p2align 1
	.globl set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
	.loc 1 142 0
.LVL24:
	.loc 1 143 0
	mov.w r7,#static_value	; tmp26,
	mov.w (r7),r2	; static_value, a
	ret
.LFE26:
	.size	set_static_value, .-set_static_value
	.p2align 1
	.globl set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
	.loc 1 149 0
	inc sp,#3	;,
.LCFI0:
	.loc 1 150 0
	mov.w r7,#254	;,
	mov.w (sp,-4),r7	; a,
.LVL25:
	.loc 1 151 0
	mov.w r7,#255	;,
	mov.w (sp,-2),r7	; b,
.LVL26:
	.loc 1 152 0
	dec sp,#3	;,
	ret
.LFE27:
	.size	set_stack, .-set_stack
	.p2align 1
	.globl use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
	.loc 1 155 0
	inc sp,#3	;,
.LCFI1:
	.loc 1 156 0
	mov.w r7,#254	;,
	mov.w (sp,-4),r7	; a,
.LVL27:
	.loc 1 157 0
	mov.w r7,#255	;,
	mov.w (sp,-2),r7	; b,
.LVL28:
	.loc 1 158 0
	mov.w r2,(sp,-4)	; a.1, a
	mov.w r7,(sp,-2)	; b.2, b
	add r2,r7	; tmp31, b.2
	.loc 1 159 0
	dec sp,#3	;,
	ret
.LFE28:
	.size	use_stack, .-use_stack
	.p2align 1
	.globl call_self
	.type	call_self, @function
call_self:
.LFB29:
	.loc 1 162 0
	.loc 1 163 0
	callf call_self	;
.LVL29:
	ret
.LFE29:
	.size	call_self, .-call_self
	.p2align 1
	.globl call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
	.loc 1 167 0
.LVL30:
	.loc 1 168 0
	callf return_arg1	;
.LVL31:
	.loc 1 169 0
	ret
.LFE30:
	.size	call_simple, .-call_simple
	.p2align 1
	.globl call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
	.loc 1 172 0
	.loc 1 173 0
	mov.w r2,#254	;,
	callf return_arg1	;
.LVL32:
	inc r2,#0	; tmp28,
	.loc 1 174 0
	ret
.LFE31:
	.size	call_complex1, .-call_complex1
	.p2align 1
	.globl call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
	.loc 1 177 0
.LVL33:
	push r10	;
.LCFI2:
	mov r10,r3	; b, b
	.loc 1 178 0
	mov r2,r3	;, b
.LVL34:
	callf return_arg1	;
.LVL35:
	mov.w r7,#static_value	; tmp29,
	mov.w (r7),r2	; static_value, static_value.0
	.loc 1 180 0
	mov r2,r10	;, b
	pop r10	;
.LVL36:
	ret
.LFE32:
	.size	call_complex2, .-call_complex2
	.p2align 1
	.globl call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
	.loc 1 183 0
.LVL37:
	.loc 1 184 0
	mov.w r9,#0	;,
	call r9,r2	;, f
.LVL38:
	ret
.LFE33:
	.size	call_pointer, .-call_pointer
	.p2align 1
	.globl condition
	.type	condition, @function
condition:
.LFB34:
	.loc 1 188 0
.LVL39:
	.loc 1 189 0
	bnz r2,r3,.L36	; a, b,
	.loc 1 190 0
	mov.w r3,#1	; b,
.LVL40:
.L36:
	.loc 1 191 0
	mov r2,r3	; tmp29, b
.LVL41:
	inc r2,#0	; tmp29,
	.loc 1 192 0
	ret
.LFE34:
	.size	condition, .-condition
	.p2align 1
	.globl loop
	.type	loop, @function
loop:
.LFB35:
	.loc 1 195 0
.LVL42:
	.loc 1 196 0
	mov.w r6,#0	; sum,
	.loc 1 197 0
	ble r2,r6,.L39	; n,,
	.loc 1 197 0 is_stmt 0 discriminator 2
	mov r7,r6	; i, sum
.LVL43:
.L40:
	.loc 1 198 0 is_stmt 1 discriminator 2
	add r6,r7	; sum, i
.LVL44:
	.loc 1 197 0 discriminator 2
	inc r7,#0	; i,
.LVL45:
	bnz r7,r2,.L40	; i, n,
.LVL46:
.L39:
	.loc 1 200 0
	mov r2,r6	;, sum
.LVL47:
	ret
.LFE35:
	.size	loop, .-loop
	.p2align 1
	.globl many_args
	.type	many_args, @function
many_args:
.LFB36:
	.loc 1 204 0
.LVL48:
	.loc 1 205 0
	add r5,r2	; tmp38, a0
.LVL49:
	add r7,r5	; tmp39, tmp38
.LVL50:
	mov.w r6,(sp,-8)	; a7, a7
.LVL51:
	mov r2,r7	; tmp37, tmp39
.LVL52:
	add r2,r6	; tmp37, a7
	.loc 1 206 0
	ret
.LFE36:
	.size	many_args, .-many_args
	.p2align 1
	.globl call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
	.loc 1 209 0
	.loc 1 210 0
	mov.w r7,#7	; tmp27,
	push r7	; tmp27
.LCFI3:
	mov.w r7,#6	; tmp28,
	push r7	; tmp28
.LCFI4:
	mov.w r7,#5	;,
	mov.w r6,#4	;,
	mov.w r5,#3	;,
	mov.w r4,#2	;,
	mov.w r3,#1	;,
	mov.w r2,#0	;,
	callf many_args	;
.LVL53:
	dec sp,#3	;,
.LCFI5:
	.loc 1 211 0
	ret
.LFE37:
	.size	call_many_args, .-call_many_args
	.p2align 1
	.globl direct
	.type	direct, @function
direct:
.LFB38:
	.loc 1 215 0
	.loc 1 216 0
#APP
; 216 "xstormy16-elf.c" 1
	nop
; 0 "" 2
#NO_APP
	ret
.LFE38:
	.size	direct, .-direct
	.p2align 1
	.globl binary
	.type	binary, @function
binary:
.LFB39:
	.loc 1 223 0
	.loc 1 224 0
#APP
; 224 "xstormy16-elf.c" 1
	.align 4
; 0 "" 2
	.loc 1 225 0
; 225 "xstormy16-elf.c" 1
	.int 0x0
; 0 "" 2
#NO_APP
	ret
.LFE39:
	.size	binary, .-binary
	.p2align 1
	.globl main
	.type	main, @function
main:
.LFB40:
	.loc 1 231 0
	.loc 1 233 0
	mov.w r2,#0	;,
	ret
.LFE40:
	.size	main, .-main
	.globl static_long
.data
	.p2align 1
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.hword	22136
	.hword	4660
	.globl static_value
	.p2align 1
	.type	static_value, @object
	.size	static_value, 2
static_value:
	.hword	10
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 1
	.byte	0x13
	.byte	0x12
	.uleb128 0xf
	.sleb128 -4
	.byte	0x93
	.uleb128 0
	.p2align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.p2align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.p2align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.p2align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.p2align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.p2align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.p2align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.p2align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.p2align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.p2align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.p2align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.p2align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.p2align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.p2align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.p2align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.p2align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.p2align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.p2align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.p2align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.p2align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.p2align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.p2align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.p2align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.p2align 2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.p2align 2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.p2align 2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.p2align 2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.p2align 2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0x13
	.sleb128 -8
	.p2align 2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0x13
	.sleb128 -8
	.p2align 2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.p2align 2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.p2align 2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.p2align 2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.p2align 2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.p2align 2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.p2align 2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.p2align 2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.p2align 2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -4
	.p2align 2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.p2align 2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.p2align 2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.p2align 2
.LEFDE80:
.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x765
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x198
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x247
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.4byte	.LLST2
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.4byte	.LLST3
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x272
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4c
	.4byte	0x56
	.4byte	.LLST4
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x29d
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x51
	.4byte	0x56
	.4byte	.LLST5
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x2d2
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.4byte	.LLST6
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x2fd
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5b
	.4byte	0x56
	.4byte	.LLST7
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x328
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x328
	.4byte	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0x32e
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x358
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x328
	.byte	0x1
	.byte	0x52
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x383
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.4byte	0x383
	.4byte	.LLST9
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0x389
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x3b3
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x383
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x3de
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.4byte	0x3de
	.4byte	.LLST10
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0x25
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.4byte	0x3fc
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.uleb128 0xc
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
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x43f
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
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x471
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x96
	.4byte	0x32e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x32e
	.byte	0x2
	.byte	0x91
	.sleb128 6
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x56
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x4a7
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x32e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x32e
	.byte	0x2
	.byte	0x91
	.sleb128 6
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0x13
	.4byte	.LVL29
	.4byte	0x4a7
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x505
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST13
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x56
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x532
	.uleb128 0x14
	.4byte	.LVL32
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x57b
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST15
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LVL35
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7a
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
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x5ab
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5b1
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LVL38
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x2
	.4byte	0x5ab
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x5ef
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST18
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST19
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x636
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST20
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST21
	.uleb128 0x1a
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST22
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.4byte	0x6be
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST23
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
	.uleb128 0xa
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST24
	.uleb128 0xa
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.4byte	.LLST25
	.uleb128 0xa
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.4byte	.LLST26
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST27
	.byte	0x1
	.4byte	0x704
	.uleb128 0x14
	.4byte	.LVL53
	.4byte	0x636
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x7f
	.sleb128 -4
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
	.byte	0x7f
	.sleb128 -4
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	static_value
	.uleb128 0x1b
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
.LLST1:
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
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
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
.LLST6:
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
.LLST7:
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
.LLST8:
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
.LLST9:
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
.LLST10:
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
.LLST11:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -6
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -6
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
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
.LASF24:
	.string	"set_static_value"
.LASF22:
	.string	"get_static_value_addr"
.LASF43:
	.string	"xstormy16-elf.c"
	.ident	"GCC: (GNU) 4.7.2"
