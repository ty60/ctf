	.file	"moxie-elf.c"
# GNU C (GCC) version 4.7.2 (moxie-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc moxie-elf.c -auxbase-strip moxie-elf.s -g -O
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
# -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
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
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss

	.text
.Ltext0:
	.p2align	1
	.global	null
	.type	null, @function
null:
.LFB0:
.LM1:
.LM2:
	ret
.LFE0:
	.size	null, .-null
	.p2align	1
	.global	return_zero
	.type	return_zero, @function
return_zero:
.LFB1:
.LM3:
.LM4:
	xor    $r0, $r0	#
	ret
.LFE1:
	.size	return_zero, .-return_zero
	.p2align	1
	.global	return_one
	.type	return_one, @function
return_one:
.LFB2:
.LM5:
.LM6:
	ldi.l  $r0, 1	#,
	ret
.LFE2:
	.size	return_one, .-return_one
	.p2align	1
	.global	return_int_size
	.type	return_int_size, @function
return_int_size:
.LFB3:
.LM7:
.LM8:
	ldi.l  $r0, 4	#,
	ret
.LFE3:
	.size	return_int_size, .-return_int_size
	.p2align	1
	.global	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
.LFB4:
.LM9:
.LM10:
	ldi.l  $r0, 4	#,
	ret
.LFE4:
	.size	return_pointer_size, .-return_pointer_size
	.p2align	1
	.global	return_short_size
	.type	return_short_size, @function
return_short_size:
.LFB5:
.LM11:
.LM12:
	ldi.l  $r0, 2	#,
	ret
.LFE5:
	.size	return_short_size, .-return_short_size
	.p2align	1
	.global	return_long_size
	.type	return_long_size, @function
return_long_size:
.LFB6:
.LM13:
.LM14:
	ldi.l  $r0, 4	#,
	ret
.LFE6:
	.size	return_long_size, .-return_long_size
	.p2align	1
	.global	return_short
	.type	return_short, @function
return_short:
.LFB7:
.LM15:
.LM16:
	ldi.s  $r0, 30600	#,
	ret
.LFE7:
	.size	return_short, .-return_short
	.p2align	1
	.global	return_long
	.type	return_long, @function
return_long:
.LFB8:
.LM17:
.LM18:
	ldi.l  $r0, 2005440938	#,
	ret
.LFE8:
	.size	return_long, .-return_long
	.p2align	1
	.global	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
.LFB9:
.LM19:
.LM20:
	ldi.s  $r0, -18	#,
	ret
.LFE9:
	.size	return_short_upper, .-return_short_upper
	.p2align	1
	.global	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
.LFB10:
.LM21:
.LM22:
	ldi.l  $r0, -1122868	#,
	ret
.LFE10:
	.size	return_long_upper, .-return_long_upper
	.p2align	1
	.global	return_arg1
	.type	return_arg1, @function
return_arg1:
.LFB11:
.LM23:
.LVL0:
.LM24:
	ret
.LFE11:
	.size	return_arg1, .-return_arg1
	.p2align	1
	.global	return_arg2
	.type	return_arg2, @function
return_arg2:
.LFB12:
.LM25:
.LVL1:
.LM26:
	mov    $r0, $r1	#, b
.LVL2:
	ret
.LFE12:
	.size	return_arg2, .-return_arg2
	.p2align	1
	.global	add
	.type	add, @function
add:
.LFB13:
.LM27:
.LVL3:
.LM28:
	add.l  $r0, $r1	#, b
.LVL4:
	ret
.LFE13:
	.size	add, .-add
	.p2align	1
	.global	add3
	.type	add3, @function
add3:
.LFB14:
.LM29:
.LVL5:
.LM30:
	add.l  $r0, $r1	# tmp33, b
.LVL6:
.LM31:
	add.l  $r0, $r2	#, c
	ret
.LFE14:
	.size	add3, .-add3
	.p2align	1
	.global	add_two
	.type	add_two, @function
add_two:
.LFB15:
.LM32:
.LVL7:
.LM33:
	inc    $r0, 2	#,
.LVL8:
	ret
.LFE15:
	.size	add_two, .-add_two
	.p2align	1
	.global	inc
	.type	inc, @function
inc:
.LFB16:
.LM34:
.LVL9:
.LM35:
	inc    $r0, 1	#,
.LVL10:
	ret
.LFE16:
	.size	inc, .-inc
	.p2align	1
	.global	or
	.type	or, @function
or:
.LFB17:
.LM36:
.LVL11:
.LM37:
	or     $r1, $r0	# b, a
.LVL12:
	mov    $r0, $r1	#, b
.LVL13:
	ret
.LFE17:
	.size	or, .-or
	.p2align	1
	.global	or_one
	.type	or_one, @function
or_one:
.LFB18:
.LM38:
.LVL14:
.LM39:
	ldi.l  $r1, 1	# tmp30,
	or     $r0, $r1	#, tmp30
.LVL15:
	ret
.LFE18:
	.size	or_one, .-or_one
	.p2align	1
	.global	load
	.type	load, @function
load:
.LFB19:
.LM40:
.LVL16:
.LM41:
	ld.l   $r0, ($r0)	# D.1028, *p_1(D)
.LVL17:
.LM42:
	ret
.LFE19:
	.size	load, .-load
	.p2align	1
	.global	store
	.type	store, @function
store:
.LFB20:
.LM43:
.LVL18:
.LM44:
	ldi.l  $r1, 255	# tmp27,
	st.l   ($r0), $r1	# *p_1(D), tmp27
.LM45:
	ret
.LFE20:
	.size	store, .-store
	.p2align	1
	.global	load_long
	.type	load_long, @function
load_long:
.LFB21:
.LM46:
.LVL19:
.LM47:
	ld.l   $r0, ($r0)	# D.1026, *p_1(D)
.LVL20:
.LM48:
	ret
.LFE21:
	.size	load_long, .-load_long
	.p2align	1
	.global	store_long
	.type	store_long, @function
store_long:
.LFB22:
.LM49:
.LVL21:
.LM50:
	ldi.l  $r1, 287454020	# tmp27,
	st.l   ($r0), $r1	# *p_1(D), tmp27
.LM51:
	ret
.LFE22:
	.size	store_long, .-store_long
	.p2align	1
	.global	member
	.type	member, @function
member:
.LFB23:
.LM52:
.LVL22:
.LM53:
	ldi.l  $r1, 1	# tmp29,
	sto.l  4($r0), $r1	# p_1(D)->b, tmp29
.LM54:
	ldo.l  $r0, 8($r0)	#, p_1(D)->c
.LVL23:
	ret
.LFE23:
	.size	member, .-member
	.p2align	1
	.global	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
.LFB24:
.LM55:
.LM56:
	ldi.l  $r0, static_value	#,
	ret
.LFE24:
	.size	get_static_value_addr, .-get_static_value_addr
	.p2align	1
	.global	get_static_value
	.type	get_static_value, @function
get_static_value:
.LFB25:
.LM57:
.LM58:
	lda.l  $r0, static_value	#, static_value
	ret
.LFE25:
	.size	get_static_value, .-get_static_value
	.p2align	1
	.global	set_static_value
	.type	set_static_value, @function
set_static_value:
.LFB26:
.LM59:
.LVL24:
.LM60:
	sta.l  static_value, $r0	# static_value, a
.LM61:
	ret
.LFE26:
	.size	set_static_value, .-set_static_value
	.p2align	1
	.global	set_stack
	.type	set_stack, @function
set_stack:
.LFB27:
.LM62:
	dec    $sp, 8	#,
.LCFI0:
.LM63:
	ldi.l  $r0, 254	# tmp26,
	sto.l  -4($fp), $r0	# a, tmp26
.LVL25:
.LM64:
	ldi.l  $r0, 255	# tmp27,
	sto.l  -8($fp), $r0	# b, tmp27
.LVL26:
.LM65:
	ret
.LFE27:
	.size	set_stack, .-set_stack
	.p2align	1
	.global	use_stack
	.type	use_stack, @function
use_stack:
.LFB28:
.LM66:
	dec    $sp, 8	#,
.LCFI1:
.LM67:
	ldi.l  $r0, 254	# tmp30,
	sto.l  -4($fp), $r0	# a, tmp30
.LVL27:
.LM68:
	ldi.l  $r0, 255	# tmp31,
	sto.l  -8($fp), $r0	# b, tmp31
.LVL28:
.LM69:
	ldo.l  $r0, -4($fp)	# a.1, a
	ldo.l  $r1, -8($fp)	# b.2, b
.LM70:
	add.l  $r0, $r1	#, b.2
	ret
.LFE28:
	.size	use_stack, .-use_stack
	.p2align	1
	.global	call_self
	.type	call_self, @function
call_self:
.LFB29:
.LM71:
	dec    $sp, 24	#,
.LCFI2:
.LM72:
	jsra   call_self	#
.LVL29:
.LM73:
	ret
.LFE29:
	.size	call_self, .-call_self
	.p2align	1
	.global	call_simple
	.type	call_simple, @function
call_simple:
.LFB30:
.LM74:
.LVL30:
	dec    $sp, 24	#,
.LCFI3:
.LM75:
	jsra   return_arg1	#
.LVL31:
.LM76:
	ret
.LFE30:
	.size	call_simple, .-call_simple
	.p2align	1
	.global	call_complex1
	.type	call_complex1, @function
call_complex1:
.LFB31:
.LM77:
	dec    $sp, 24	#,
.LCFI4:
.LM78:
	ldi.l  $r0, 254	#,
	jsra   return_arg1	#
.LVL32:
.LM79:
	inc    $r0, 1	#,
	ret
.LFE31:
	.size	call_complex1, .-call_complex1
	.p2align	1
	.global	call_complex2
	.type	call_complex2, @function
call_complex2:
.LFB32:
.LM80:
.LVL33:
	push   $sp, $r6	#
.LCFI5:
	dec    $sp, 24	#,
.LCFI6:
	mov    $r6, $r1	# b, b
.LM81:
	mov    $r0, $r1	#, b
.LVL34:
	jsra   return_arg1	#
.LVL35:
	sta.l  static_value, $r0	# static_value,
.LM82:
	mov    $r0, $r6	#, b
	mov    $r5, $fp	#,
	dec    $r5, 4	#,
	pop    $r5, $r6	#,
.LVL36:
	ret
.LFE32:
	.size	call_complex2, .-call_complex2
	.p2align	1
	.global	call_pointer
	.type	call_pointer, @function
call_pointer:
.LFB33:
.LM83:
.LVL37:
	dec    $sp, 24	#,
.LCFI7:
.LM84:
	jsr    $r0	# f
.LVL38:
.LM85:
	ret
.LFE33:
	.size	call_pointer, .-call_pointer
	.p2align	1
	.global	condition
	.type	condition, @function
condition:
.LFB34:
.LM86:
.LVL39:
	push   $sp, $r9	#
.LCFI8:
.LM87:
	cmp    $r0, $r1	# a, b
	bne   .L36	#
.LM88:
	ldi.l  $r1, 1	# b,
.LVL40:
.L36:
.LM89:
	mov    $r0, $r1	#, b
.LVL41:
	inc    $r0, 1	#,
	mov    $r5, $fp	#,
	dec    $r5, 4	#,
	pop    $r5, $r9	#,
	ret
.LFE34:
	.size	condition, .-condition
	.p2align	1
	.global	loop
	.type	loop, @function
loop:
.LFB35:
.LM90:
.LVL42:
	push   $sp, $r9	#
.LCFI9:
	mov    $r2, $r0	# n, n
.LVL43:
.LM91:
	xor    $r0, $r0	# tmp31
.LVL44:
	cmp    $r2, $r0	# n, tmp31
	ble   .L41	#
.LM92:
	mov    $r1, $r0	# i, sum
.LVL45:
.L40:
.LM93:
	add.l  $r0, $r1	# sum, i
.LVL46:
.LM94:
	inc    $r1, 1	# i,
.LVL47:
	cmp    $r1, $r2	# i, n
	bne   .L40	#
	jmpa   .L39	#
.LVL48:
.L41:
.LM95:
	xor    $r0, $r0	# sum
.LVL49:
.L39:
.LM96:
	mov    $r5, $fp	#,
	dec    $r5, 4	#,
	pop    $r5, $r9	#,
	ret
.LFE35:
	.size	loop, .-loop
	.p2align	1
	.global	many_args
	.type	many_args, @function
many_args:
.LFB36:
.LM97:
.LVL50:
.LM98:
	add.l  $r0, $r3	# tmp39, a3
.LVL51:
	add.l  $r0, $r5	# tmp40, a5
.LM99:
	ldo.l  $r1, 40($fp)	# a7, a7
.LVL52:
	add.l  $r0, $r1	#, a7
	ret
.LFE36:
	.size	many_args, .-many_args
	.p2align	1
	.global	call_many_args
	.type	call_many_args, @function
call_many_args:
.LFB37:
.LM100:
	dec    $sp, 32	#,
.LCFI10:
.LM101:
	ldi.l  $r0, 6	# tmp28,
	sto.l  24($sp), $r0	#, tmp28
	ldi.l  $r0, 7	# tmp29,
	sto.l  28($sp), $r0	#, tmp29
	xor    $r0, $r0	#
	ldi.l  $r1, 1	#,
	ldi.l  $r2, 2	#,
	ldi.l  $r3, 3	#,
	ldi.l  $r4, 4	#,
	ldi.l  $r5, 5	#,
	jsra   many_args	#
.LVL53:
.LM102:
	ret
.LFE37:
	.size	call_many_args, .-call_many_args
	.p2align	1
	.global	direct
	.type	direct, @function
direct:
.LFB38:
.LM103:
.LM104:
# 216 "moxie-elf.c" 1
	nop
# 0 "" 2
.LM105:
	ret
.LFE38:
	.size	direct, .-direct
	.p2align	1
	.global	binary
	.type	binary, @function
binary:
.LFB39:
.LM106:
.LM107:
# 224 "moxie-elf.c" 1
	.align 4
# 0 "" 2
.LM108:
# 225 "moxie-elf.c" 1
	.int 0x0
# 0 "" 2
.LM109:
	ret
.LFE39:
	.size	binary, .-binary
	.p2align	1
	.global	main
	.type	main, @function
main:
.LFB40:
.LM110:
.LM111:
	xor    $r0, $r0	#
	ret
.LFE40:
	.size	main, .-main
	.global	static_long
	.data
	.p2align	2
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.long	305419896
	.global	static_value
	.p2align	2
	.type	static_value, @object
	.size	static_value, 4
static_value:
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
	.byte	0x14
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.byte	0x11
	.uleb128 0x14
	.sleb128 -1
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
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x8
	.p2align	2
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
	.p2align	2
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
	.uleb128 0x18
	.p2align	2
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
	.uleb128 0x18
	.p2align	2
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
	.uleb128 0x18
	.p2align	2
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
	.byte	0x88
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x1c
	.p2align	2
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
	.uleb128 0x18
	.p2align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x4
	.byte	0x8b
	.uleb128 0x1
	.p2align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x4
	.byte	0x8b
	.uleb128 0x1
	.p2align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.p2align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x20
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
	.4byte	0x773
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x2
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.4byte	0x2d2
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.4byte	.LLST5
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x56
	.4byte	0x56
	.4byte	.LLST6
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x4
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x4
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x4
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
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
	.sleb128 0
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
	.byte	0x70
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x97
	.4byte	0x32e
	.byte	0x2
	.byte	0x70
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
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x4a7
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x9c
	.4byte	0x32e
	.byte	0x2
	.byte	0x70
	.sleb128 -4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x9d
	.4byte	0x32e
	.byte	0x2
	.byte	0x70
	.sleb128 -8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x4ca
	.uleb128 0x12
	.4byte	.LVL29
	.4byte	0x4a7
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
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x507
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xa6
	.4byte	0x56
	.4byte	.LLST15
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
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x56
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x535
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
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST17
	.byte	0x1
	.4byte	0x57e
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST18
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xb0
	.4byte	0x56
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LVL35
	.4byte	0x16f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x78
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
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x5af
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x5b5
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LVL38
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.byte	0x4
	.4byte	0x5af
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST22
	.byte	0x1
	.4byte	0x5f4
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST23
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.4byte	0x56
	.4byte	.LLST24
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST25
	.byte	0x1
	.4byte	0x63c
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.4byte	0x56
	.4byte	.LLST26
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST27
	.uleb128 0x19
	.string	"sum"
	.byte	0x1
	.byte	0xc4
	.4byte	0x56
	.4byte	.LLST28
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
	.byte	0x71
	.sleb128 0
	.byte	0x1
	.4byte	0x6c0
	.uleb128 0xa
	.string	"a0"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST29
	.uleb128 0xa
	.string	"a1"
	.byte	0x1
	.byte	0xca
	.4byte	0x56
	.4byte	.LLST30
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
	.uleb128 0x9
	.string	"a5"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"a6"
	.byte	0x1
	.byte	0xcb
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 24
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
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x712
	.uleb128 0x14
	.4byte	.LVL53
	.4byte	0x63c
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x15
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x15
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.uleb128 0x15
	.byte	0x2
	.byte	0x71
	.sleb128 28
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x2
	.byte	0x71
	.sleb128 24
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
	.byte	0x2
	.byte	0x71
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
	.byte	0x71
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
	.byte	0x71
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
	.4byte	static_value
	.uleb128 0x1a
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
.LLST3:
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
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
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
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST15:
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
.LLST16:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST18:
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
.LLST19:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST21:
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
.LLST22:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST23:
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
.LLST24:
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
.LLST25:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
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
.LLST30:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE37-.Ltext0
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
	.string	"moxie-elf.c"
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x1a
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
	.byte	0x1c
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
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x1a
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x1a
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
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM106
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM107
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM111
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
.LASF43:
	.string	"moxie-elf.c"
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
	.ident	"GCC: (GNU) 4.7.2"
