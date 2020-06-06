	.file	"rx-elf.c"
 ; GNU C (GCC) version 4.7.2 (rx-elf)
 ;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ; options passed:  -nostdinc rx-elf.c -auxbase-strip rx-elf.s -g -O -Wall
 ; -fno-builtin -fverbose-asm -fomit-frame-pointer
 ; options enabled:  -fauto-inc-dec -fbranch-count-reg
 ; -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 ; -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
 ; -fearly-inlining -feliminate-unused-debug-types -ffinite-math-only
 ; -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime
 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
 ; -finline -finline-atomics -finline-functions-called-once -fipa-profile
 ; -fipa-pure-const -fipa-reference -fira-share-save-slots
 ; -fira-share-spill-slots -fivopts -fkeep-static-consts
 ; -fleading-underscore -fmath-errno -fmerge-constants
 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 ; -fpeephole -fprefetch-loop-arrays -fpu -freg-struct-return
 ; -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ; -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ; -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ; -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 ; -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
 ; -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
 ; -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
 ; -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 ; -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 ; -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
 ; -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
 ; -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
 ; -fvar-tracking -fvar-tracking-assignments -fverbose-asm
 ; -fzero-initialized-in-bss -m32bit-doubles -mlittle-endian-data

	.section P,"ax"
.Ltext0:
	.global	_null
	.type	_null, @function
_null:
.LFB0:
.LM1:
	rts
.LFE0:
	.size	_null, .-_null
	.global	_return_zero
	.type	_return_zero, @function
_return_zero:
.LFB1:
.LM2:
.LM3:
	mov.L	#0, r1	 ;,
	rts
.LFE1:
	.size	_return_zero, .-_return_zero
	.global	_return_one
	.type	_return_one, @function
_return_one:
.LFB2:
.LM4:
.LM5:
	mov.L	#1, r1	 ;,
	rts
.LFE2:
	.size	_return_one, .-_return_one
	.global	_return_int_size
	.type	_return_int_size, @function
_return_int_size:
.LFB3:
.LM6:
.LM7:
	mov.L	#4, r1	 ;,
	rts
.LFE3:
	.size	_return_int_size, .-_return_int_size
	.global	_return_pointer_size
	.type	_return_pointer_size, @function
_return_pointer_size:
.LFB4:
.LM8:
.LM9:
	mov.L	#4, r1	 ;,
	rts
.LFE4:
	.size	_return_pointer_size, .-_return_pointer_size
	.global	_return_short_size
	.type	_return_short_size, @function
_return_short_size:
.LFB5:
.LM10:
.LM11:
	mov.L	#2, r1	 ;,
	rts
.LFE5:
	.size	_return_short_size, .-_return_short_size
	.global	_return_long_size
	.type	_return_long_size, @function
_return_long_size:
.LFB6:
.LM12:
.LM13:
	mov.L	#4, r1	 ;,
	rts
.LFE6:
	.size	_return_long_size, .-_return_long_size
	.global	_return_short
	.type	_return_short, @function
_return_short:
.LFB7:
.LM14:
.LM15:
	mov.L	#0x7788, r1	 ;,
	rts
.LFE7:
	.size	_return_short, .-_return_short
	.global	_return_long
	.type	_return_long, @function
_return_long:
.LFB8:
.LM16:
.LM17:
	mov.L	#0x778899aa, r1	 ;,
	rts
.LFE8:
	.size	_return_long, .-_return_long
	.global	_return_short_upper
	.type	_return_short_upper, @function
_return_short_upper:
.LFB9:
.LM18:
.LM19:
	mov.L	#-18, r1	 ;,
	rts
.LFE9:
	.size	_return_short_upper, .-_return_short_upper
	.global	_return_long_upper
	.type	_return_long_upper, @function
_return_long_upper:
.LFB10:
.LM20:
.LM21:
	mov.L	#0xffeeddcc, r1	 ;,
	rts
.LFE10:
	.size	_return_long_upper, .-_return_long_upper
	.global	_return_arg1
	.type	_return_arg1, @function
_return_arg1:
.LFB11:
.LM22:
.LVL0:
.LM23:
	rts
.LFE11:
	.size	_return_arg1, .-_return_arg1
	.global	_return_arg2
	.type	_return_arg2, @function
_return_arg2:
.LFB12:
.LM24:
.LVL1:
.LM25:
	mov.L	r2, r1	 ; b,
.LVL2:
	rts
.LFE12:
	.size	_return_arg2, .-_return_arg2
	.global	_add
	.type	_add, @function
_add:
.LFB13:
.LM26:
.LVL3:
.LM27:
	add	r2, r1	 ; b,
.LVL4:
	rts
.LFE13:
	.size	_add, .-_add
	.global	_add3
	.type	_add3, @function
_add3:
.LFB14:
.LM28:
.LVL5:
.LM29:
	add	r2, r1	 ; b, tmp31
.LVL6:
.LM30:
	add	r3, r1	 ; c,
	rts
.LFE14:
	.size	_add3, .-_add3
	.global	_add_two
	.type	_add_two, @function
_add_two:
.LFB15:
.LM31:
.LVL7:
.LM32:
	add	#2, r1	 ;,
.LVL8:
	rts
.LFE15:
	.size	_add_two, .-_add_two
	.global	_inc
	.type	_inc, @function
_inc:
.LFB16:
.LM33:
.LVL9:
.LM34:
	add	#1, r1	 ;,
.LVL10:
	rts
.LFE16:
	.size	_inc, .-_inc
	.global	_or
	.type	_or, @function
_or:
.LFB17:
.LM35:
.LVL11:
.LM36:
	or	r2, r1	 ; b,
.LVL12:
	rts
.LFE17:
	.size	_or, .-_or
	.global	_or_one
	.type	_or_one, @function
_or_one:
.LFB18:
.LM37:
.LVL13:
.LM38:
	or	#1, r1	 ;,
.LVL14:
	rts
.LFE18:
	.size	_or_one, .-_or_one
	.global	_load
	.type	_load, @function
_load:
.LFB19:
.LM39:
.LVL15:
.LM40:
	mov.L	[r1], r1	 ; *p_1(D), D.1046
.LVL16:
.LM41:
	rts
.LFE19:
	.size	_load, .-_load
	.global	_store
	.type	_store, @function
_store:
.LFB20:
.LM42:
.LVL17:
.LM43:
	mov.L	#0xff, [r1]	 ;, *p_1(D)
	rts
.LFE20:
	.size	_store, .-_store
	.global	_load_long
	.type	_load_long, @function
_load_long:
.LFB21:
.LM44:
.LVL18:
.LM45:
	mov.L	[r1], r1	 ; *p_1(D), D.1044
.LVL19:
.LM46:
	rts
.LFE21:
	.size	_load_long, .-_load_long
	.global	_store_long
	.type	_store_long, @function
_store_long:
.LFB22:
.LM47:
.LVL20:
.LM48:
	mov.L	#0x11223344, [r1]	 ;, *p_1(D)
	rts
.LFE22:
	.size	_store_long, .-_store_long
	.global	_member
	.type	_member, @function
_member:
.LFB23:
.LM49:
.LVL21:
.LM50:
	mov.L	#1, 4[r1]	 ;, p_1(D)->b
.LM51:
	mov.L	8[r1], r1	 ; p_1(D)->c,
.LVL22:
	rts
.LFE23:
	.size	_member, .-_member
	.global	_get_static_value_addr
	.type	_get_static_value_addr, @function
_get_static_value_addr:
.LFB24:
.LM52:
.LM53:
	mov.L	#_static_value, r1	 ;,
	rts
.LFE24:
	.size	_get_static_value_addr, .-_get_static_value_addr
	.global	_get_static_value
	.type	_get_static_value, @function
_get_static_value:
.LFB25:
.LM54:
.LM55:
	mov.L	#_static_value, r14	 ;, tmp27
	mov.L	[r14], r1	 ; static_value,
	rts
.LFE25:
	.size	_get_static_value, .-_get_static_value
	.global	_set_static_value
	.type	_set_static_value, @function
_set_static_value:
.LFB26:
.LM56:
.LVL23:
.LM57:
	mov.L	#_static_value, r14	 ;, tmp25
	mov.L	r1, [r14]	 ; a, static_value
	rts
.LFE26:
	.size	_set_static_value, .-_set_static_value
	.global	_set_stack
	.type	_set_stack, @function
_set_stack:
.LFB27:
.LM58:
	sub	#8, r0	 ;,
.LCFI0:
.LM59:
	mov.L	#0xfe, [r0]	 ;, a
.LVL24:
.LM60:
	mov.L	#0xff, 4[r0]	 ;, b
.LVL25:
.LM61:
	rtsd	#8	 ;
.LFE27:
	.size	_set_stack, .-_set_stack
	.global	_use_stack
	.type	_use_stack, @function
_use_stack:
.LFB28:
.LM62:
	sub	#8, r0	 ;,
.LCFI1:
.LM63:
	mov.L	#0xfe, [r0]	 ;, a
.LVL26:
.LM64:
	mov.L	#0xff, 4[r0]	 ;, b
.LVL27:
.LM65:
	mov.L	[r0], r1	 ; a, a.1
.LM66:
	add	4[r0].L, r1	 ; b,
	rtsd	#8	 ;
.LFE28:
	.size	_use_stack, .-_use_stack
	.global	_call_self
	.type	_call_self, @function
_call_self:
.LFB29:
.LM67:
.LM68:
	bsr	_call_self	 ;
.LVL28:
	rts
.LFE29:
	.size	_call_self, .-_call_self
	.global	_call_simple
	.type	_call_simple, @function
_call_simple:
.LFB30:
.LM69:
.LVL29:
.LM70:
	bsr	_return_arg1	 ;
.LVL30:
.LM71:
	rts
.LFE30:
	.size	_call_simple, .-_call_simple
	.global	_call_complex1
	.type	_call_complex1, @function
_call_complex1:
.LFB31:
.LM72:
.LM73:
	mov.L	#0xfe, r1	 ;,
	bsr	_return_arg1	 ;
.LVL31:
.LM74:
	add	#1, r1	 ;,
	rts
.LFE31:
	.size	_call_complex1, .-_call_complex1
	.global	_call_complex2
	.type	_call_complex2, @function
_call_complex2:
.LFB32:
.LM75:
.LVL32:
	push.l	r7	 ;
.LCFI2:
	mov.L	r2, r7	 ; b, b
.LM76:
	mov.L	r2, r1	 ; b,
.LVL33:
	bsr	_return_arg1	 ;
.LVL34:
	mov.L	#_static_value, r14	 ;, tmp29
	mov.L	r1, [r14]	 ;, static_value
.LM77:
	mov.L	r7, r1	 ; b,
	rtsd	#4, r7-r7
.LFE32:
	.size	_call_complex2, .-_call_complex2
	.global	_call_pointer
	.type	_call_pointer, @function
_call_pointer:
.LFB33:
.LM78:
.LVL35:
.LM79:
	jsr	r1	 ; f
.LVL36:
	rts
.LFE33:
	.size	_call_pointer, .-_call_pointer
	.global	_condition
	.type	_condition, @function
_condition:
.LFB34:
.LM80:
.LVL37:
.LM81:
	cmp	r2, r1	 ; b, a
	bne	.L39	 ;,
.LM82:
	mov.L	#1, r2	 ;, b
.LVL38:
	.balign 2,3,2
.L39:
.LM83:
	add	#1, r2, r1	 ;, b,
.LVL39:
	rts
.LFE34:
	.size	_condition, .-_condition
	.global	_loop
	.type	_loop, @function
_loop:
.LFB35:
.LM84:
.LVL40:
.LM85:
	cmp	#0, r1	 ;, n
	ble	.L44	 ;,
.LM86:
	mov.L	#0, r4	 ;, sum
.LM87:
	mov.L	r4, r14	 ; sum, i
.LVL41:
	.balign 2,3,1
.L43:
.LM88:
	add	r14, r4	 ; i, sum
.LVL42:
.LM89:
	add	#1, r14	 ;, i
.LVL43:
	cmp	r1, r14	 ; n, i
	bne	.L43	 ;,
	bra	.L42	 ;
.LVL44:
.L44:
.LM90:
	mov.L	#0, r4	 ;, sum
.LVL45:
	.balign 2,3,1
.L42:
.LM91:
	mov.L	r4, r1	 ; sum,
.LVL46:
	rts
.LFE35:
	.size	_loop, .-_loop
	.global	_many_args
	.type	_many_args, @function
_many_args:
.LFB36:
.LM92:
.LVL47:
	add	#-16, r0	 ;,
.LCFI3:
.LM93:
	add	r4, r1	 ; a3, tmp37
.LVL48:
	add	24[r0].L, r1	 ; a5, tmp38
.LM94:
	add	32[r0].L, r1	 ; a7,
	rtsd	#16	 ;
.LFE36:
	.size	_many_args, .-_many_args
	.global	_call_many_args
	.type	_call_many_args, @function
_call_many_args:
.LFB37:
.LM95:
	add	#-16, r0	 ;,
.LCFI4:
.LM96:
	mov.L	#4, [r0]	 ;,
	mov.L	#5, 4[r0]	 ;,
	mov.L	#6, 8[r0]	 ;,
	mov.L	#7, 12[r0]	 ;,
	mov.L	#0, r1	 ;,
	mov.L	#1, r2	 ;,
	mov.L	#2, r3	 ;,
	mov.L	#3, r4	 ;,
	bsr	_many_args	 ;
.LVL49:
.LM97:
	rtsd	#16	 ;
.LFE37:
	.size	_call_many_args, .-_call_many_args
	.global	_direct
	.type	_direct, @function
_direct:
.LFB38:
.LM98:
.LM99:
 ; 216 "rx-elf.c" 1
	nop
 ; 0 "" 2
	rts
.LFE38:
	.size	_direct, .-_direct
	.global	_binary
	.type	_binary, @function
_binary:
.LFB39:
.LM100:
.LM101:
 ; 224 "rx-elf.c" 1
	.align 4
 ; 0 "" 2
.LM102:
 ; 225 "rx-elf.c" 1
	.int 0x0
 ; 0 "" 2
	rts
.LFE39:
	.size	_binary, .-_binary
	.global	_main
	.type	_main, @function
_main:
.LFB40:
.LM103:
.LM104:
	mov.L	#0, r1	 ;,
	rts
.LFE40:
	.size	_main, .-_main
	.global	_static_long
	.section D,"aw",@progbits
	.p2align 2
	.balign 4
	.type	_static_long, @object
	.size	_static_long, 4
_static_long:
	.long	0x12345678
	.global	_static_value
	.balign 4
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
	.byte	0x11
	.byte	0xc
	.uleb128 0
	.uleb128 0x4
	.byte	0x91
	.uleb128 0x1
	.balign 4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.balign 4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.balign 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.balign 4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.balign 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.balign 4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.balign 4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.balign 4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.balign 4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.balign 4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.balign 4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.balign 4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.balign 4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.balign 4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.balign 4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.balign 4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.balign 4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.balign 4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.balign 4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.balign 4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.balign 4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.balign 4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.balign 4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.balign 4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.balign 4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.balign 4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.balign 4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.balign 4
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
	.uleb128 0xc
	.balign 4
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
	.uleb128 0xc
	.balign 4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.balign 4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.balign 4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.balign 4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x87
	.uleb128 0x1
	.balign 4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.balign 4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.balign 4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.balign 4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x14
	.balign 4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI4-.LFB37
	.byte	0xe
	.uleb128 0x14
	.balign 4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.balign 4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.balign 4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.balign 4
.LEFDE80:
	.section P,"ax"
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x762
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x198
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.4byte	0x56
	.byte	0x1
	.byte	0x51
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x52
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x52
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x52
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x47
	.4byte	0x56
	.byte	0x1
	.byte	0x53
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x52
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x356
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x65
	.4byte	0x326
	.byte	0x1
	.byte	0x51
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x3b1
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.4byte	0x381
	.byte	0x1
	.byte	0x51
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x43d
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x8d
	.4byte	0x56
	.byte	0x1
	.byte	0x51
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
	.byte	0x70
	.sleb128 0
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x32c
	.byte	0x2
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 0
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x32c
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x4c7
	.uleb128 0x13
	.4byte	.LVL28
	.4byte	0x4a5
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x503
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x530
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
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
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x579
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST14
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST15
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x77
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x5a9
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5af
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LVL36
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5a9
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x5ed
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST17
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST18
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x634
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST19
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST20
	.uleb128 0x1a
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST21
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x6b3
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
	.byte	0x52
	.uleb128 0x9
	.string	"a2"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x53
	.uleb128 0x9
	.string	"a3"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"a4"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.uleb128 0x9
	.string	"a7"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.4byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x701
	.uleb128 0x14
	.4byte	.LVL49
	.4byte	0x634
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x2
	.byte	0x70
	.sleb128 12
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x2
	.byte	0x70
	.sleb128 8
	.byte	0x1
	.byte	0x36
	.uleb128 0x15
	.byte	0x2
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xde
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x70
	.sleb128 4
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
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x80
	.4byte	0x56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_static_value
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 20
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
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.string	"rx-elf.c"
	.uleb128 0
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM102
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM103
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
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
.LASF27:
	.string	"call_self"
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
.LASF43:
	.string	"rx-elf.c"
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
