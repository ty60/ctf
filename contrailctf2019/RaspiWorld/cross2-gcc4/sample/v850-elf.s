	.file	"v850-elf.c"
# GNU C (GCC) version 4.7.2 (v850-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -D__v850__ v850-elf.c
# -auxbase-strip v850-elf.s -g -O -Wall -fno-builtin -fverbose-asm
# -fomit-frame-pointer
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
# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
# -fverbose-asm -fzero-initialized-in-bss -mapp-regs -mprolog-function
# -mv850

	.stabs	"/home/hiroaki/cross2-gcc4/sample/",100,0,2,.Ltext0
	.stabs	"v850-elf.c",100,0,2,.Ltext0
	.section .text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-2147483648;2147483647;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=r(0,3);-2147483648;2147483647;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;037777777777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=r(0,5);0;037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=@s16;r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=@s16;r(0,9);0;65535;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);8;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);8;0;",128,0,0,0
	.stabs	"void:t(0,15)=(0,15)",128,0,0,0
	.stabs	"structure:T(0,16)=s12a:(0,1),0,32;b:(0,1),32,32;c:(0,1),64,32;;",128,0,0,0
	.align 2
	.stabs	"null:F(0,15)",36,0,1,_null
	.global _null
	.type	_null, @function
_null:
	.stabd	46,0,0
	.stabn	68,0,2,.LM0-.LFBB1
.LM0:
.LFBB1:
	.stabn	68,0,4,.LM1-.LFBB1
.LM1:
	jmp [r31]
	.size	_null, .-_null
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.align 2
	.stabs	"return_zero:F(0,1)",36,0,6,_return_zero
	.global _return_zero
	.type	_return_zero, @function
_return_zero:
	.stabd	46,0,0
	.stabn	68,0,7,.LM2-.LFBB2
.LM2:
.LFBB2:
	.stabn	68,0,9,.LM3-.LFBB2
.LM3:
	mov 0,r10	#,
	jmp [r31]
	.size	_return_zero, .-_return_zero
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.align 2
	.stabs	"return_one:F(0,1)",36,0,11,_return_one
	.global _return_one
	.type	_return_one, @function
_return_one:
	.stabd	46,0,0
	.stabn	68,0,12,.LM4-.LFBB3
.LM4:
.LFBB3:
	.stabn	68,0,14,.LM5-.LFBB3
.LM5:
	mov 1,r10	#,
	jmp [r31]
	.size	_return_one, .-_return_one
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.align 2
	.stabs	"return_int_size:F(0,1)",36,0,16,_return_int_size
	.global _return_int_size
	.type	_return_int_size, @function
_return_int_size:
	.stabd	46,0,0
	.stabn	68,0,17,.LM6-.LFBB4
.LM6:
.LFBB4:
	.stabn	68,0,19,.LM7-.LFBB4
.LM7:
	mov 4,r10	#,
	jmp [r31]
	.size	_return_int_size, .-_return_int_size
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.align 2
	.stabs	"return_pointer_size:F(0,1)",36,0,21,_return_pointer_size
	.global _return_pointer_size
	.type	_return_pointer_size, @function
_return_pointer_size:
	.stabd	46,0,0
	.stabn	68,0,22,.LM8-.LFBB5
.LM8:
.LFBB5:
	.stabn	68,0,24,.LM9-.LFBB5
.LM9:
	mov 4,r10	#,
	jmp [r31]
	.size	_return_pointer_size, .-_return_pointer_size
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.align 2
	.stabs	"return_short_size:F(0,1)",36,0,26,_return_short_size
	.global _return_short_size
	.type	_return_short_size, @function
_return_short_size:
	.stabd	46,0,0
	.stabn	68,0,27,.LM10-.LFBB6
.LM10:
.LFBB6:
	.stabn	68,0,29,.LM11-.LFBB6
.LM11:
	mov 2,r10	#,
	jmp [r31]
	.size	_return_short_size, .-_return_short_size
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.align 2
	.stabs	"return_long_size:F(0,1)",36,0,31,_return_long_size
	.global _return_long_size
	.type	_return_long_size, @function
_return_long_size:
	.stabd	46,0,0
	.stabn	68,0,32,.LM12-.LFBB7
.LM12:
.LFBB7:
	.stabn	68,0,34,.LM13-.LFBB7
.LM13:
	mov 4,r10	#,
	jmp [r31]
	.size	_return_long_size, .-_return_long_size
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
	.align 2
	.stabs	"return_short:F(0,8)",36,0,36,_return_short
	.global _return_short
	.type	_return_short, @function
_return_short:
	.stabd	46,0,0
	.stabn	68,0,37,.LM14-.LFBB8
.LM14:
.LFBB8:
	.stabn	68,0,39,.LM15-.LFBB8
.LM15:
	movea 30600,r0,r10	#,
	jmp [r31]
	.size	_return_short, .-_return_short
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabd	78,0,0
	.align 2
	.stabs	"return_long:F(0,3)",36,0,41,_return_long
	.global _return_long
	.type	_return_long, @function
_return_long:
	.stabd	46,0,0
	.stabn	68,0,42,.LM16-.LFBB9
.LM16:
.LFBB9:
	.stabn	68,0,44,.LM17-.LFBB9
.LM17:
	movhi hi(2005440938),r0,r10	#, tmp44
	movea lo(2005440938),r10,r10	#, tmp44,
	jmp [r31]
	.size	_return_long, .-_return_long
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabd	78,0,0
	.align 2
	.stabs	"return_short_upper:F(0,8)",36,0,46,_return_short_upper
	.global _return_short_upper
	.type	_return_short_upper, @function
_return_short_upper:
	.stabd	46,0,0
	.stabn	68,0,47,.LM18-.LFBB10
.LM18:
.LFBB10:
	.stabn	68,0,49,.LM19-.LFBB10
.LM19:
	movea -18,r0,r10	#,
	jmp [r31]
	.size	_return_short_upper, .-_return_short_upper
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabd	78,0,0
	.align 2
	.stabs	"return_long_upper:F(0,3)",36,0,51,_return_long_upper
	.global _return_long_upper
	.type	_return_long_upper, @function
_return_long_upper:
	.stabd	46,0,0
	.stabn	68,0,52,.LM20-.LFBB11
.LM20:
.LFBB11:
	.stabn	68,0,54,.LM21-.LFBB11
.LM21:
	movhi hi(-1122868),r0,r10	#, tmp44
	movea lo(-1122868),r10,r10	#, tmp44,
	jmp [r31]
	.size	_return_long_upper, .-_return_long_upper
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabd	78,0,0
	.align 2
	.stabs	"return_arg1:F(0,1)",36,0,56,_return_arg1
	.stabs	"a:P(0,1)",64,0,56,6
	.global _return_arg1
	.type	_return_arg1, @function
_return_arg1:
	.stabd	46,0,0
	.stabn	68,0,57,.LM22-.LFBB12
.LM22:
.LFBB12:
	.stabn	68,0,59,.LM23-.LFBB12
.LM23:
	mov r6,r10	# a,
	jmp [r31]
	.size	_return_arg1, .-_return_arg1
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabd	78,0,0
	.align 2
	.stabs	"return_arg2:F(0,1)",36,0,61,_return_arg2
	.stabs	"a:P(0,1)",64,0,61,6
	.stabs	"b:P(0,1)",64,0,61,7
	.global _return_arg2
	.type	_return_arg2, @function
_return_arg2:
	.stabd	46,0,0
	.stabn	68,0,62,.LM24-.LFBB13
.LM24:
.LFBB13:
	.stabn	68,0,64,.LM25-.LFBB13
.LM25:
	mov r7,r10	# b,
	jmp [r31]
	.size	_return_arg2, .-_return_arg2
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabd	78,0,0
	.align 2
	.stabs	"add:F(0,1)",36,0,66,_add
	.stabs	"a:P(0,1)",64,0,66,6
	.stabs	"b:P(0,1)",64,0,66,7
	.global _add
	.type	_add, @function
_add:
	.stabd	46,0,0
	.stabn	68,0,67,.LM26-.LFBB14
.LM26:
.LFBB14:
	.stabn	68,0,69,.LM27-.LFBB14
.LM27:
	mov r6,r10	# a,
	add r7,r10	# b,
	jmp [r31]
	.size	_add, .-_add
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabd	78,0,0
	.align 2
	.stabs	"add3:F(0,1)",36,0,71,_add3
	.stabs	"a:P(0,1)",64,0,71,6
	.stabs	"b:P(0,1)",64,0,71,7
	.stabs	"c:P(0,1)",64,0,71,8
	.global _add3
	.type	_add3, @function
_add3:
	.stabd	46,0,0
	.stabn	68,0,72,.LM28-.LFBB15
.LM28:
.LFBB15:
	.stabn	68,0,73,.LM29-.LFBB15
.LM29:
	mov r6,r10	# a, tmp49
	add r7,r10	# b, tmp49
	.stabn	68,0,74,.LM30-.LFBB15
.LM30:
	add r8,r10	# c,
	jmp [r31]
	.size	_add3, .-_add3
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabd	78,0,0
	.align 2
	.stabs	"add_two:F(0,1)",36,0,76,_add_two
	.stabs	"a:P(0,1)",64,0,76,6
	.global _add_two
	.type	_add_two, @function
_add_two:
	.stabd	46,0,0
	.stabn	68,0,77,.LM31-.LFBB16
.LM31:
.LFBB16:
	.stabn	68,0,79,.LM32-.LFBB16
.LM32:
	addi 2,r6,r10	#, a,
	jmp [r31]
	.size	_add_two, .-_add_two
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabd	78,0,0
	.align 2
	.stabs	"inc:F(0,1)",36,0,81,_inc
	.stabs	"a:P(0,1)",64,0,81,6
	.global _inc
	.type	_inc, @function
_inc:
	.stabd	46,0,0
	.stabn	68,0,82,.LM33-.LFBB17
.LM33:
.LFBB17:
	.stabn	68,0,84,.LM34-.LFBB17
.LM34:
	addi 1,r6,r10	#, a,
	jmp [r31]
	.size	_inc, .-_inc
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
	.stabd	78,0,0
	.align 2
	.stabs	"or:F(0,1)",36,0,86,_or
	.stabs	"a:P(0,1)",64,0,86,6
	.stabs	"b:P(0,1)",64,0,86,7
	.global _or
	.type	_or, @function
_or:
	.stabd	46,0,0
	.stabn	68,0,87,.LM35-.LFBB18
.LM35:
.LFBB18:
	.stabn	68,0,89,.LM36-.LFBB18
.LM36:
	mov r7,r10	# b,
	or r6,r10	# a,
	jmp [r31]
	.size	_or, .-_or
.Lscope18:
	.stabs	"",36,0,0,.Lscope18-.LFBB18
	.stabd	78,0,0
	.align 2
	.stabs	"or_one:F(0,1)",36,0,91,_or_one
	.stabs	"a:P(0,1)",64,0,91,6
	.global _or_one
	.type	_or_one, @function
_or_one:
	.stabd	46,0,0
	.stabn	68,0,92,.LM37-.LFBB19
.LM37:
.LFBB19:
	.stabn	68,0,94,.LM38-.LFBB19
.LM38:
	ori 1,r6,r10	#, a,
	jmp [r31]
	.size	_or_one, .-_or_one
.Lscope19:
	.stabs	"",36,0,0,.Lscope19-.LFBB19
	.stabd	78,0,0
	.align 2
	.stabs	"load:F(0,1)",36,0,96,_load
	.stabs	"p:P(0,17)=*(0,18)=B(0,1)",64,0,96,6
	.global _load
	.type	_load, @function
_load:
	.stabd	46,0,0
	.stabn	68,0,97,.LM39-.LFBB20
.LM39:
.LFBB20:
	.stabn	68,0,98,.LM40-.LFBB20
.LM40:
	ld.w 0[r6],r10	# *p_1(D), D.1028
	.stabn	68,0,99,.LM41-.LFBB20
.LM41:
	jmp [r31]
	.size	_load, .-_load
.Lscope20:
	.stabs	"",36,0,0,.Lscope20-.LFBB20
	.stabd	78,0,0
	.align 2
	.stabs	"store:F(0,15)",36,0,101,_store
	.stabs	"p:P(0,17)",64,0,101,6
	.global _store
	.type	_store, @function
_store:
	.stabd	46,0,0
	.stabn	68,0,102,.LM42-.LFBB21
.LM42:
.LFBB21:
	.stabn	68,0,103,.LM43-.LFBB21
.LM43:
	movea 255,r0,r10	#, tmp43
	st.w r10,0[r6]	# *p_1(D), tmp43
	.stabn	68,0,104,.LM44-.LFBB21
.LM44:
	jmp [r31]
	.size	_store, .-_store
.Lscope21:
	.stabs	"",36,0,0,.Lscope21-.LFBB21
	.stabd	78,0,0
	.align 2
	.stabs	"load_long:F(0,3)",36,0,106,_load_long
	.stabs	"p:P(0,19)=*(0,20)=B(0,3)",64,0,106,6
	.global _load_long
	.type	_load_long, @function
_load_long:
	.stabd	46,0,0
	.stabn	68,0,107,.LM45-.LFBB22
.LM45:
.LFBB22:
	.stabn	68,0,108,.LM46-.LFBB22
.LM46:
	ld.w 0[r6],r10	# *p_1(D), D.1026
	.stabn	68,0,109,.LM47-.LFBB22
.LM47:
	jmp [r31]
	.size	_load_long, .-_load_long
.Lscope22:
	.stabs	"",36,0,0,.Lscope22-.LFBB22
	.stabd	78,0,0
	.align 2
	.stabs	"store_long:F(0,15)",36,0,111,_store_long
	.stabs	"p:P(0,19)",64,0,111,6
	.global _store_long
	.type	_store_long, @function
_store_long:
	.stabd	46,0,0
	.stabn	68,0,112,.LM48-.LFBB23
.LM48:
.LFBB23:
	.stabn	68,0,113,.LM49-.LFBB23
.LM49:
	movhi hi(287454020),r0,r10	#, tmp44
	movea lo(287454020),r10,r10	#, tmp44, tmp43
	st.w r10,0[r6]	# *p_1(D), tmp43
	.stabn	68,0,114,.LM50-.LFBB23
.LM50:
	jmp [r31]
	.size	_store_long, .-_store_long
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabd	78,0,0
	.align 2
	.stabs	"member:F(0,1)",36,0,122,_member
	.stabs	"p:P(0,21)=*(0,16)",64,0,122,6
	.global _member
	.type	_member, @function
_member:
	.stabd	46,0,0
	.stabn	68,0,123,.LM51-.LFBB24
.LM51:
.LFBB24:
	.stabn	68,0,124,.LM52-.LFBB24
.LM52:
	mov 1,r10	#, tmp45
	st.w r10,4[r6]	# p_1(D)->b, tmp45
	.stabn	68,0,126,.LM53-.LFBB24
.LM53:
	ld.w 8[r6],r10	# p_1(D)->c,
	jmp [r31]
	.size	_member, .-_member
.Lscope24:
	.stabs	"",36,0,0,.Lscope24-.LFBB24
	.stabd	78,0,0
	.align 2
	.stabs	"get_static_value_addr:F(0,22)=*(0,1)",36,0,131,_get_static_value_addr
	.global _get_static_value_addr
	.type	_get_static_value_addr, @function
_get_static_value_addr:
	.stabd	46,0,0
	.stabn	68,0,132,.LM54-.LFBB25
.LM54:
.LFBB25:
	.stabn	68,0,134,.LM55-.LFBB25
.LM55:
	movhi hi(_static_value),r0,r10	#, tmp44
	movea lo(_static_value),r10,r10	#, tmp44,
	jmp [r31]
	.size	_get_static_value_addr, .-_get_static_value_addr
.Lscope25:
	.stabs	"",36,0,0,.Lscope25-.LFBB25
	.stabd	78,0,0
	.align 2
	.stabs	"get_static_value:F(0,1)",36,0,136,_get_static_value
	.global _get_static_value
	.type	_get_static_value, @function
_get_static_value:
	.stabd	46,0,0
	.stabn	68,0,137,.LM56-.LFBB26
.LM56:
.LFBB26:
	.stabn	68,0,139,.LM57-.LFBB26
.LM57:
	movhi hi(_static_value),r0,r10	#, tmp46
	ld.w lo(_static_value)[r10],r10	# static_value,
	jmp [r31]
	.size	_get_static_value, .-_get_static_value
.Lscope26:
	.stabs	"",36,0,0,.Lscope26-.LFBB26
	.stabd	78,0,0
	.align 2
	.stabs	"set_static_value:F(0,15)",36,0,141,_set_static_value
	.stabs	"a:P(0,1)",64,0,141,6
	.global _set_static_value
	.type	_set_static_value, @function
_set_static_value:
	.stabd	46,0,0
	.stabn	68,0,142,.LM58-.LFBB27
.LM58:
.LFBB27:
	.stabn	68,0,143,.LM59-.LFBB27
.LM59:
	movhi hi(_static_value),r0,r10	#, tmp44
	st.w r6,lo(_static_value)[r10]	# static_value, a
	.stabn	68,0,144,.LM60-.LFBB27
.LM60:
	jmp [r31]
	.size	_set_static_value, .-_set_static_value
.Lscope27:
	.stabs	"",36,0,0,.Lscope27-.LFBB27
	.stabd	78,0,0
	.align 2
	.stabs	"set_stack:F(0,15)",36,0,148,_set_stack
	.global _set_stack
	.type	_set_stack, @function
_set_stack:
	.stabd	46,0,0
	.stabn	68,0,149,.LM61-.LFBB28
.LM61:
.LFBB28:
	add -8,sp	#,
	.stabn	68,0,150,.LM62-.LFBB28
.LM62:
	movea 254,r0,r10	#, tmp42
	st.w r10,4[sp]	# a, tmp42
	.stabn	68,0,151,.LM63-.LFBB28
.LM63:
	movea 255,r0,r10	#, tmp43
	st.w r10,0[sp]	# b, tmp43
	.stabn	68,0,152,.LM64-.LFBB28
.LM64:
	add 8,sp	#,
	jmp [r31]
	.size	_set_stack, .-_set_stack
	.stabs	"a:(0,18)",128,0,150,4
	.stabs	"b:(0,18)",128,0,151,0
	.stabn	192,0,0,.LFBB28-.LFBB28
	.stabn	224,0,0,.Lscope28-.LFBB28
.Lscope28:
	.stabs	"",36,0,0,.Lscope28-.LFBB28
	.stabd	78,0,0
	.align 2
	.stabs	"use_stack:F(0,1)",36,0,154,_use_stack
	.global _use_stack
	.type	_use_stack, @function
_use_stack:
	.stabd	46,0,0
	.stabn	68,0,155,.LM65-.LFBB29
.LM65:
.LFBB29:
	add -8,sp	#,
	.stabn	68,0,156,.LM66-.LFBB29
.LM66:
	movea 254,r0,r10	#, tmp46
	st.w r10,4[sp]	# a, tmp46
	.stabn	68,0,157,.LM67-.LFBB29
.LM67:
	movea 255,r0,r10	#, tmp47
	st.w r10,0[sp]	# b, tmp47
	.stabn	68,0,158,.LM68-.LFBB29
.LM68:
	ld.w 4[sp],r11	# a, a___1
	ld.w 0[sp],r10	# b, b___2
	.stabn	68,0,159,.LM69-.LFBB29
.LM69:
	add r11,r10	# a___1,
	add 8,sp	#,
	jmp [r31]
	.size	_use_stack, .-_use_stack
	.stabs	"a:(0,18)",128,0,156,4
	.stabs	"b:(0,18)",128,0,157,0
	.stabn	192,0,0,.LFBB29-.LFBB29
	.stabn	224,0,0,.Lscope29-.LFBB29
.Lscope29:
	.stabs	"",36,0,0,.Lscope29-.LFBB29
	.stabd	78,0,0
	.align 2
	.stabs	"call_self:F(0,15)",36,0,161,_call_self
	.global _call_self
	.type	_call_self, @function
_call_self:
	.stabd	46,0,0
	.stabn	68,0,162,.LM70-.LFBB30
.LM70:
.LFBB30:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,163,.LM71-.LFBB30
.LM71:
	jarl _call_self,r31	#
	.stabn	68,0,164,.LM72-.LFBB30
.LM72:
	jr __return_r31
	.size	_call_self, .-_call_self
.Lscope30:
	.stabs	"",36,0,0,.Lscope30-.LFBB30
	.stabd	78,0,0
	.align 2
	.stabs	"call_simple:F(0,1)",36,0,166,_call_simple
	.stabs	"a:P(0,1)",64,0,166,6
	.global _call_simple
	.type	_call_simple, @function
_call_simple:
	.stabd	46,0,0
	.stabn	68,0,167,.LM73-.LFBB31
.LM73:
.LFBB31:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,168,.LM74-.LFBB31
.LM74:
	jarl _return_arg1,r31	#
	.stabn	68,0,169,.LM75-.LFBB31
.LM75:
	jr __return_r31
	.size	_call_simple, .-_call_simple
.Lscope31:
	.stabs	"",36,0,0,.Lscope31-.LFBB31
	.stabd	78,0,0
	.align 2
	.stabs	"call_complex1:F(0,1)",36,0,171,_call_complex1
	.global _call_complex1
	.type	_call_complex1, @function
_call_complex1:
	.stabd	46,0,0
	.stabn	68,0,172,.LM76-.LFBB32
.LM76:
.LFBB32:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,173,.LM77-.LFBB32
.LM77:
	movea 254,r0,r6	#,
	jarl _return_arg1,r31	#
	.stabn	68,0,174,.LM78-.LFBB32
.LM78:
	add 1,r10	#,
	jr __return_r31
	.size	_call_complex1, .-_call_complex1
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.stabd	78,0,0
	.align 2
	.stabs	"call_complex2:F(0,1)",36,0,176,_call_complex2
	.stabs	"a:P(0,1)",64,0,176,6
	.stabs	"b:P(0,1)",64,0,176,29
	.global _call_complex2
	.type	_call_complex2, @function
_call_complex2:
	.stabd	46,0,0
	.stabn	68,0,177,.LM79-.LFBB33
.LM79:
.LFBB33:
	add -8,sp	#,
	st.w r31,4[sp]	#,
	st.w r29,0[sp]	#,
	mov r7,r29	# b, b
	.stabn	68,0,178,.LM80-.LFBB33
.LM80:
	mov r7,r6	# b,
	jarl _return_arg1,r31	#
	movhi hi(_static_value),r0,r11	#, tmp49
	st.w r10,lo(_static_value)[r11]	# static_value,
	.stabn	68,0,180,.LM81-.LFBB33
.LM81:
	mov r29,r10	# b,
	jr __return_r29_r31
	.size	_call_complex2, .-_call_complex2
.Lscope33:
	.stabs	"",36,0,0,.Lscope33-.LFBB33
	.stabd	78,0,0
	.align 2
	.stabs	"call_pointer:F(0,15)",36,0,182,_call_pointer
	.stabs	"f:P(0,23)=*(0,24)=f(0,1)",64,0,182,6
	.global _call_pointer
	.type	_call_pointer, @function
_call_pointer:
	.stabd	46,0,0
	.stabn	68,0,183,.LM82-.LFBB34
.LM82:
.LFBB34:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,184,.LM83-.LFBB34
.LM83:
	jarl .+4,r31 ; add 4,r31 ; jmp r6	# f
	.stabn	68,0,185,.LM84-.LFBB34
.LM84:
	jr __return_r31
	.size	_call_pointer, .-_call_pointer
.Lscope34:
	.stabs	"",36,0,0,.Lscope34-.LFBB34
	.stabd	78,0,0
	.align 2
	.stabs	"condition:F(0,1)",36,0,187,_condition
	.stabs	"a:P(0,1)",64,0,187,6
	.stabs	"b:P(0,1)",64,0,187,7
	.global _condition
	.type	_condition, @function
_condition:
	.stabd	46,0,0
	.stabn	68,0,188,.LM85-.LFBB35
.LM85:
.LFBB35:
	.stabn	68,0,189,.LM86-.LFBB35
.LM86:
	cmp r7,r6	# b, a
	bne .L36	#,
	.stabn	68,0,190,.LM87-.LFBB35
.LM87:
	mov 1,r7	#, b
.L36:
	.stabn	68,0,192,.LM88-.LFBB35
.LM88:
	addi 1,r7,r10	#, b,
	jmp [r31]
	.size	_condition, .-_condition
.Lscope35:
	.stabs	"",36,0,0,.Lscope35-.LFBB35
	.stabd	78,0,0
	.align 2
	.stabs	"loop:F(0,1)",36,0,194,_loop
	.stabs	"n:P(0,1)",64,0,194,6
	.global _loop
	.type	_loop, @function
_loop:
	.stabd	46,0,0
	.stabn	68,0,195,.LM89-.LFBB36
.LM89:
.LFBB36:
	.stabn	68,0,197,.LM90-.LFBB36
.LM90:
	cmp 0,r6	#, n
	ble .L41	#,
	.stabn	68,0,196,.LM91-.LFBB36
.LM91:
	mov 0,r10	#, sum
	.stabn	68,0,197,.LM92-.LFBB36
.LM92:
	mov 0,r11	#, i
.L40:
	.stabn	68,0,198,.LM93-.LFBB36
.LM93:
	add r11,r10	# i, sum
	.stabn	68,0,197,.LM94-.LFBB36
.LM94:
	add 1,r11	#, i
	cmp r6,r11	# n, i
	bne .L40	#,
	br .L39	#
.L41:
	.stabn	68,0,196,.LM95-.LFBB36
.LM95:
	mov 0,r10	#, sum
.L39:
	.stabn	68,0,200,.LM96-.LFBB36
.LM96:
	jmp [r31]
	.size	_loop, .-_loop
	.stabs	"i:r(0,1)",64,0,196,11
	.stabs	"sum:r(0,1)",64,0,196,10
	.stabn	192,0,0,.LFBB36-.LFBB36
	.stabn	224,0,0,.Lscope36-.LFBB36
.Lscope36:
	.stabs	"",36,0,0,.Lscope36-.LFBB36
	.stabd	78,0,0
	.align 2
	.stabs	"many_args:F(0,1)",36,0,202,_many_args
	.stabs	"a0:P(0,1)",64,0,202,6
	.stabs	"a1:P(0,1)",64,0,202,7
	.stabs	"a2:P(0,1)",64,0,202,8
	.stabs	"a3:P(0,1)",64,0,202,9
	.stabs	"a4:p(0,1)",160,0,203,0
	.stabs	"a5:p(0,1)",160,0,203,4
	.stabs	"a6:p(0,1)",160,0,203,8
	.stabs	"a7:p(0,1)",160,0,203,12
	.global _many_args
	.type	_many_args, @function
_many_args:
	.stabd	46,0,0
	.stabn	68,0,204,.LM97-.LFBB37
.LM97:
.LFBB37:
	.stabn	68,0,205,.LM98-.LFBB37
.LM98:
	add r9,r6	# a3, tmp55
	ld.w 4[sp],r10	# a5, a5
	add r10,r6	# a5, tmp56
	.stabn	68,0,206,.LM99-.LFBB37
.LM99:
	ld.w 12[sp],r10	# a7, a7
	add r6,r10	# tmp56,
	jmp [r31]
	.size	_many_args, .-_many_args
	.stabs	"a5:r(0,1)",64,0,203,10
	.stabs	"a7:r(0,1)",64,0,203,10
.Lscope37:
	.stabs	"",36,0,0,.Lscope37-.LFBB37
	.stabd	78,0,0
	.align 2
	.stabs	"call_many_args:F(0,1)",36,0,208,_call_many_args
	.global _call_many_args
	.type	_call_many_args, @function
_call_many_args:
	.stabd	46,0,0
	.stabn	68,0,209,.LM100-.LFBB38
.LM100:
.LFBB38:
	addi -20,sp,sp	#,,
	st.w r31,16[sp]	#,
	.stabn	68,0,210,.LM101-.LFBB38
.LM101:
	mov 4,r10	#, tmp44
	st.w r10,0[sp]	#, tmp44
	mov 5,r10	#, tmp45
	st.w r10,4[sp]	#, tmp45
	mov 6,r10	#, tmp46
	st.w r10,8[sp]	#, tmp46
	mov 7,r10	#, tmp47
	st.w r10,12[sp]	#, tmp47
	mov 0,r6	#,
	mov 1,r7	#,
	mov 2,r8	#,
	mov 3,r9	#,
	jarl _many_args,r31	#
	.stabn	68,0,211,.LM102-.LFBB38
.LM102:
	addi 16,sp,sp	#,,
	jr __return_r31
	.size	_call_many_args, .-_call_many_args
.Lscope38:
	.stabs	"",36,0,0,.Lscope38-.LFBB38
	.stabd	78,0,0
	.align 2
	.stabs	"direct:F(0,15)",36,0,214,_direct
	.global _direct
	.type	_direct, @function
_direct:
	.stabd	46,0,0
	.stabn	68,0,215,.LM103-.LFBB39
.LM103:
.LFBB39:
	.stabn	68,0,216,.LM104-.LFBB39
.LM104:
#APP
# 216 "v850-elf.c" 1
	nop
# 0 "" 2
	.stabn	68,0,218,.LM105-.LFBB39
.LM105:
#NO_APP
	jmp [r31]
	.size	_direct, .-_direct
.Lscope39:
	.stabs	"",36,0,0,.Lscope39-.LFBB39
	.stabd	78,0,0
	.align 2
	.stabs	"binary:F(0,15)",36,0,222,_binary
	.global _binary
	.type	_binary, @function
_binary:
	.stabd	46,0,0
	.stabn	68,0,223,.LM106-.LFBB40
.LM106:
.LFBB40:
	.stabn	68,0,224,.LM107-.LFBB40
.LM107:
#APP
# 224 "v850-elf.c" 1
	.align 4
# 0 "" 2
	.stabn	68,0,225,.LM108-.LFBB40
.LM108:
# 225 "v850-elf.c" 1
	.int 0x0
# 0 "" 2
	.stabn	68,0,227,.LM109-.LFBB40
.LM109:
#NO_APP
	jmp [r31]
	.size	_binary, .-_binary
.Lscope40:
	.stabs	"",36,0,0,.Lscope40-.LFBB40
	.stabd	78,0,0
	.align 2
	.stabs	"main:F(0,1)",36,0,230,_main
	.global _main
	.type	_main, @function
_main:
	.stabd	46,0,0
	.stabn	68,0,231,.LM110-.LFBB41
.LM110:
.LFBB41:
	.stabn	68,0,233,.LM111-.LFBB41
.LM111:
	mov 0,r10	#,
	jmp [r31]
	.size	_main, .-_main
.Lscope41:
	.stabs	"",36,0,0,.Lscope41-.LFBB41
	.stabd	78,0,0
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
	.stabs	"static_value:G(0,1)",32,0,128,0
	.stabs	"static_long:G(0,3)",32,0,129,0
	.section .text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
