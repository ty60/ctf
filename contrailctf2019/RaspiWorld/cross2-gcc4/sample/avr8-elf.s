	.file	"avr8-elf.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (GCC) version 4.7.2 (avr-elf)
 ; 	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -nostdinc avr8-elf.c -mint8 -auxbase-strip avr8-elf.s
 ;  -g -O -Wall -w -fno-builtin -fverbose-asm -fomit-frame-pointer
 ;  options enabled:  -fauto-inc-dec -fbranch-count-reg
 ;  -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 ;  -fdebug-types-section -fdefer-pop -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
 ;  -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
 ;  -fif-conversion -fif-conversion2 -finline -finline-atomics
 ;  -finline-functions-called-once -fipa-profile -fipa-pure-const
 ;  -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
 ;  -fkeep-static-consts -fleading-underscore -fmath-errno
 ;  -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
 ;  -fomit-frame-pointer -fpeephole -fprefetch-loop-arrays
 ;  -freg-struct-return -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fshow-column
 ;  -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
 ;  -fstrict-volatile-bitfields -ftoplevel-reorder -ftrapping-math
 ;  -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename
 ;  -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 ;  -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 ;  -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
 ;  -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 ;  -ftree-slp-vectorize -ftree-sra -ftree-ter -ftree-vect-loop-version
 ;  -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss -mint8

	.stabs	"/home/hiroaki/cross2-gcc4/sample/",100,0,2,.Ltext0
	.stabs	"avr8-elf.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-128;127;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=@s16;r(0,3);0100000;077777;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;0377;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=@s16;r(0,5);0;0177777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s32;r(0,6);020000000000;017777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s32;r(0,7);0;037777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-128;127;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0;0377;",128,0,0,0
	.stabs	"signed char:t(0,10)=r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=r(0,11);0;0377;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"void:t(0,15)=(0,15)",128,0,0,0
	.stabs	"structure:T(0,16)=s3a:(0,1),0,8;b:(0,1),8,8;c:(0,1),16,8;;",128,0,0,0
	.stabs	"null:F(0,15)",36,0,1,null
.global	null
	.type	null, @function
null:
	.stabd	46,0,0
	.stabn	68,0,2,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.size	null, .-null
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.stabs	"return_zero:F(0,1)",36,0,6,return_zero
.global	return_zero
	.type	return_zero, @function
return_zero:
	.stabd	46,0,0
	.stabn	68,0,7,.LM1-.LFBB2
.LM1:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,9,.LM2-.LFBB2
.LM2:
	ldi r24,0	 ; 
	ret
	.size	return_zero, .-return_zero
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.stabs	"return_one:F(0,1)",36,0,11,return_one
.global	return_one
	.type	return_one, @function
return_one:
	.stabd	46,0,0
	.stabn	68,0,12,.LM3-.LFBB3
.LM3:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,14,.LM4-.LFBB3
.LM4:
	ldi r24,lo8(1)	 ; ,
	ret
	.size	return_one, .-return_one
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.stabs	"return_int_size:F(0,1)",36,0,16,return_int_size
.global	return_int_size
	.type	return_int_size, @function
return_int_size:
	.stabd	46,0,0
	.stabn	68,0,17,.LM5-.LFBB4
.LM5:
.LFBB4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,19,.LM6-.LFBB4
.LM6:
	ldi r24,lo8(1)	 ; ,
	ret
	.size	return_int_size, .-return_int_size
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.stabs	"return_pointer_size:F(0,1)",36,0,21,return_pointer_size
.global	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
	.stabd	46,0,0
	.stabn	68,0,22,.LM7-.LFBB5
.LM7:
.LFBB5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,24,.LM8-.LFBB5
.LM8:
	ldi r24,lo8(2)	 ; ,
	ret
	.size	return_pointer_size, .-return_pointer_size
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.stabs	"return_short_size:F(0,1)",36,0,26,return_short_size
.global	return_short_size
	.type	return_short_size, @function
return_short_size:
	.stabd	46,0,0
	.stabn	68,0,27,.LM9-.LFBB6
.LM9:
.LFBB6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,29,.LM10-.LFBB6
.LM10:
	ldi r24,lo8(1)	 ; ,
	ret
	.size	return_short_size, .-return_short_size
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.stabs	"return_long_size:F(0,1)",36,0,31,return_long_size
.global	return_long_size
	.type	return_long_size, @function
return_long_size:
	.stabd	46,0,0
	.stabn	68,0,32,.LM11-.LFBB7
.LM11:
.LFBB7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,34,.LM12-.LFBB7
.LM12:
	ldi r24,lo8(2)	 ; ,
	ret
	.size	return_long_size, .-return_long_size
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
	.stabs	"return_short:F(0,8)",36,0,36,return_short
.global	return_short
	.type	return_short, @function
return_short:
	.stabd	46,0,0
	.stabn	68,0,37,.LM13-.LFBB8
.LM13:
.LFBB8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,39,.LM14-.LFBB8
.LM14:
	ldi r24,lo8(-120)	 ; ,
	ret
	.size	return_short, .-return_short
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabd	78,0,0
	.stabs	"return_long:F(0,3)",36,0,41,return_long
.global	return_long
	.type	return_long, @function
return_long:
	.stabd	46,0,0
	.stabn	68,0,42,.LM15-.LFBB9
.LM15:
.LFBB9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,44,.LM16-.LFBB9
.LM16:
	ldi r24,lo8(-86)	 ; ,
	ldi r25,lo8(-103)	 ; ,
	ret
	.size	return_long, .-return_long
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabd	78,0,0
	.stabs	"return_short_upper:F(0,8)",36,0,46,return_short_upper
.global	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
	.stabd	46,0,0
	.stabn	68,0,47,.LM17-.LFBB10
.LM17:
.LFBB10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,49,.LM18-.LFBB10
.LM18:
	ldi r24,lo8(-18)	 ; ,
	ret
	.size	return_short_upper, .-return_short_upper
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabd	78,0,0
	.stabs	"return_long_upper:F(0,3)",36,0,51,return_long_upper
.global	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
	.stabd	46,0,0
	.stabn	68,0,52,.LM19-.LFBB11
.LM19:
.LFBB11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,54,.LM20-.LFBB11
.LM20:
	ldi r24,lo8(-52)	 ; ,
	ldi r25,lo8(-35)	 ; ,
	ret
	.size	return_long_upper, .-return_long_upper
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabd	78,0,0
	.stabs	"return_arg1:F(0,1)",36,0,56,return_arg1
	.stabs	"a:P(0,1)",64,0,56,24
.global	return_arg1
	.type	return_arg1, @function
return_arg1:
	.stabd	46,0,0
	.stabn	68,0,57,.LM21-.LFBB12
.LM21:
.LFBB12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,59,.LM22-.LFBB12
.LM22:
	ret
	.size	return_arg1, .-return_arg1
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabd	78,0,0
	.stabs	"return_arg2:F(0,1)",36,0,61,return_arg2
	.stabs	"a:P(0,1)",64,0,61,24
	.stabs	"b:P(0,1)",64,0,61,24
.global	return_arg2
	.type	return_arg2, @function
return_arg2:
	.stabd	46,0,0
	.stabn	68,0,62,.LM23-.LFBB13
.LM23:
.LFBB13:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r24,r22	 ;  b, b
	.stabn	68,0,64,.LM24-.LFBB13
.LM24:
	ret
	.size	return_arg2, .-return_arg2
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabd	78,0,0
	.stabs	"add:F(0,1)",36,0,66,add
	.stabs	"a:P(0,1)",64,0,66,24
	.stabs	"b:P(0,1)",64,0,66,22
.global	add
	.type	add, @function
add:
	.stabd	46,0,0
	.stabn	68,0,67,.LM25-.LFBB14
.LM25:
.LFBB14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,69,.LM26-.LFBB14
.LM26:
	add r24,r22	 ; , b
	ret
	.size	add, .-add
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabd	78,0,0
	.stabs	"add3:F(0,1)",36,0,71,add3
	.stabs	"a:P(0,1)",64,0,71,24
	.stabs	"b:P(0,1)",64,0,71,22
	.stabs	"c:P(0,1)",64,0,71,20
.global	add3
	.type	add3, @function
add3:
	.stabd	46,0,0
	.stabn	68,0,72,.LM27-.LFBB15
.LM27:
.LFBB15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,73,.LM28-.LFBB15
.LM28:
	add r24,r22	 ;  tmp49, b
	.stabn	68,0,74,.LM29-.LFBB15
.LM29:
	add r24,r20	 ; , c
	ret
	.size	add3, .-add3
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabd	78,0,0
	.stabs	"add_two:F(0,1)",36,0,76,add_two
	.stabs	"a:P(0,1)",64,0,76,24
.global	add_two
	.type	add_two, @function
add_two:
	.stabd	46,0,0
	.stabn	68,0,77,.LM30-.LFBB16
.LM30:
.LFBB16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,79,.LM31-.LFBB16
.LM31:
	subi r24,lo8(-(2))	 ; ,
	ret
	.size	add_two, .-add_two
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabd	78,0,0
	.stabs	"inc:F(0,1)",36,0,81,inc
	.stabs	"a:P(0,1)",64,0,81,24
.global	inc
	.type	inc, @function
inc:
	.stabd	46,0,0
	.stabn	68,0,82,.LM32-.LFBB17
.LM32:
.LFBB17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,84,.LM33-.LFBB17
.LM33:
	subi r24,lo8(-(1))	 ; ,
	ret
	.size	inc, .-inc
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
	.stabd	78,0,0
	.stabs	"or:F(0,1)",36,0,86,or
	.stabs	"a:P(0,1)",64,0,86,24
	.stabs	"b:P(0,1)",64,0,86,22
.global	or
	.type	or, @function
or:
	.stabd	46,0,0
	.stabn	68,0,87,.LM34-.LFBB18
.LM34:
.LFBB18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,89,.LM35-.LFBB18
.LM35:
	or r24,r22	 ; , b
	ret
	.size	or, .-or
.Lscope18:
	.stabs	"",36,0,0,.Lscope18-.LFBB18
	.stabd	78,0,0
	.stabs	"or_one:F(0,1)",36,0,91,or_one
	.stabs	"a:P(0,1)",64,0,91,24
.global	or_one
	.type	or_one, @function
or_one:
	.stabd	46,0,0
	.stabn	68,0,92,.LM36-.LFBB19
.LM36:
.LFBB19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,94,.LM37-.LFBB19
.LM37:
	ori r24,lo8(1)	 ; ,
	ret
	.size	or_one, .-or_one
.Lscope19:
	.stabs	"",36,0,0,.Lscope19-.LFBB19
	.stabd	78,0,0
	.stabs	"load:F(0,1)",36,0,96,load
	.stabs	"p:P(0,17)=*(0,18)=B(0,1)",64,0,96,24
.global	load
	.type	load, @function
load:
	.stabd	46,0,0
	.stabn	68,0,97,.LM38-.LFBB20
.LM38:
.LFBB20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,98,.LM39-.LFBB20
.LM39:
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	ld r24,Z	 ;  D.1040, *p_1(D)
	.stabn	68,0,99,.LM40-.LFBB20
.LM40:
	ret
	.size	load, .-load
.Lscope20:
	.stabs	"",36,0,0,.Lscope20-.LFBB20
	.stabd	78,0,0
	.stabs	"store:F(0,15)",36,0,101,store
	.stabs	"p:P(0,17)",64,0,101,24
.global	store
	.type	store, @function
store:
	.stabd	46,0,0
	.stabn	68,0,102,.LM41-.LFBB21
.LM41:
.LFBB21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,103,.LM42-.LFBB21
.LM42:
	ldi r18,lo8(-1)	 ;  tmp43,
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	st Z,r18	 ;  *p_1(D), tmp43
	ret
	.size	store, .-store
.Lscope21:
	.stabs	"",36,0,0,.Lscope21-.LFBB21
	.stabd	78,0,0
	.stabs	"load_long:F(0,3)",36,0,106,load_long
	.stabs	"p:P(0,19)=*(0,20)=B(0,3)",64,0,106,24
.global	load_long
	.type	load_long, @function
load_long:
	.stabd	46,0,0
	.stabn	68,0,107,.LM43-.LFBB22
.LM43:
.LFBB22:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,108,.LM44-.LFBB22
.LM44:
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	ld r18,Z	 ;  D.1038, *p_1(D)
	ldd r19,Z+1	 ;  D.1038, *p_1(D)
	.stabn	68,0,109,.LM45-.LFBB22
.LM45:
	mov r24,r18	 ; , D.1038
	mov r25,r19	 ; , D.1038
	ret
	.size	load_long, .-load_long
.Lscope22:
	.stabs	"",36,0,0,.Lscope22-.LFBB22
	.stabd	78,0,0
	.stabs	"store_long:F(0,15)",36,0,111,store_long
	.stabs	"p:P(0,19)",64,0,111,24
.global	store_long
	.type	store_long, @function
store_long:
	.stabd	46,0,0
	.stabn	68,0,112,.LM46-.LFBB23
.LM46:
.LFBB23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,113,.LM47-.LFBB23
.LM47:
	ldi r18,lo8(68)	 ;  tmp43,
	ldi r19,lo8(51)	 ; ,
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	std Z+1,r19	 ;  *p_1(D), tmp43
	st Z,r18	 ;  *p_1(D), tmp43
	ret
	.size	store_long, .-store_long
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabd	78,0,0
	.stabs	"member:F(0,1)",36,0,122,member
	.stabs	"p:P(0,21)=*(0,16)",64,0,122,24
.global	member
	.type	member, @function
member:
	.stabd	46,0,0
	.stabn	68,0,123,.LM48-.LFBB24
.LM48:
.LFBB24:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,124,.LM49-.LFBB24
.LM49:
	ldi r18,lo8(1)	 ;  tmp45,
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	std Z+1,r18	 ;  p_1(D)->b, tmp45
	.stabn	68,0,126,.LM50-.LFBB24
.LM50:
	ldd r24,Z+2	 ; , p_1(D)->c
	ret
	.size	member, .-member
.Lscope24:
	.stabs	"",36,0,0,.Lscope24-.LFBB24
	.stabd	78,0,0
	.stabs	"get_static_value_addr:F(0,22)=*(0,1)",36,0,131,get_static_value_addr
.global	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
	.stabd	46,0,0
	.stabn	68,0,132,.LM51-.LFBB25
.LM51:
.LFBB25:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,134,.LM52-.LFBB25
.LM52:
	ldi r24,lo8(static_value)	 ; ,
	ldi r25,hi8(static_value)	 ; ,
	ret
	.size	get_static_value_addr, .-get_static_value_addr
.Lscope25:
	.stabs	"",36,0,0,.Lscope25-.LFBB25
	.stabd	78,0,0
	.stabs	"get_static_value:F(0,1)",36,0,136,get_static_value
.global	get_static_value
	.type	get_static_value, @function
get_static_value:
	.stabd	46,0,0
	.stabn	68,0,137,.LM53-.LFBB26
.LM53:
.LFBB26:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,139,.LM54-.LFBB26
.LM54:
	lds r24,static_value	 ; , static_value
	ret
	.size	get_static_value, .-get_static_value
.Lscope26:
	.stabs	"",36,0,0,.Lscope26-.LFBB26
	.stabd	78,0,0
	.stabs	"set_static_value:F(0,15)",36,0,141,set_static_value
	.stabs	"a:P(0,1)",64,0,141,24
.global	set_static_value
	.type	set_static_value, @function
set_static_value:
	.stabd	46,0,0
	.stabn	68,0,142,.LM55-.LFBB27
.LM55:
.LFBB27:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,143,.LM56-.LFBB27
.LM56:
	sts static_value,r24	 ;  static_value, a
	ret
	.size	set_static_value, .-set_static_value
.Lscope27:
	.stabs	"",36,0,0,.Lscope27-.LFBB27
	.stabd	78,0,0
	.stabs	"set_stack:F(0,15)",36,0,148,set_stack
.global	set_stack
	.type	set_stack, @function
set_stack:
	.stabd	46,0,0
	.stabn	68,0,149,.LM57-.LFBB28
.LM57:
.LFBB28:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 2	 ; 
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	.stabn	68,0,150,.LM58-.LFBB28
.LM58:
	ldi r24,lo8(-2)	 ;  tmp42,
	std Y+1,r24	 ;  a, tmp42
	.stabn	68,0,151,.LM59-.LFBB28
.LM59:
	ldi r24,lo8(-1)	 ;  tmp43,
	std Y+2,r24	 ;  b, tmp43
/* epilogue start */
	.stabn	68,0,152,.LM60-.LFBB28
.LM60:
	 ; SP += 2	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	set_stack, .-set_stack
	.stabs	"a:(0,18)",128,0,150,1
	.stabs	"b:(0,18)",128,0,151,2
	.stabn	192,0,0,.LFBB28-.LFBB28
	.stabn	224,0,0,.Lscope28-.LFBB28
.Lscope28:
	.stabs	"",36,0,0,.Lscope28-.LFBB28
	.stabd	78,0,0
	.stabs	"use_stack:F(0,1)",36,0,154,use_stack
.global	use_stack
	.type	use_stack, @function
use_stack:
	.stabd	46,0,0
	.stabn	68,0,155,.LM61-.LFBB29
.LM61:
.LFBB29:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 2	 ; 
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	.stabn	68,0,156,.LM62-.LFBB29
.LM62:
	ldi r24,lo8(-2)	 ;  tmp46,
	std Y+1,r24	 ;  a, tmp46
	.stabn	68,0,157,.LM63-.LFBB29
.LM63:
	ldi r24,lo8(-1)	 ;  tmp47,
	std Y+2,r24	 ;  b, tmp47
	.stabn	68,0,158,.LM64-.LFBB29
.LM64:
	ldd r25,Y+1	 ;  a.1, a
	ldd r24,Y+2	 ;  b.2, b
	.stabn	68,0,159,.LM65-.LFBB29
.LM65:
	add r24,r25	 ; , a.1
/* epilogue start */
	 ; SP += 2	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	use_stack, .-use_stack
	.stabs	"a:(0,18)",128,0,156,1
	.stabs	"b:(0,18)",128,0,157,2
	.stabn	192,0,0,.LFBB29-.LFBB29
	.stabn	224,0,0,.Lscope29-.LFBB29
.Lscope29:
	.stabs	"",36,0,0,.Lscope29-.LFBB29
	.stabd	78,0,0
	.stabs	"call_self:F(0,15)",36,0,161,call_self
.global	call_self
	.type	call_self, @function
call_self:
	.stabd	46,0,0
	.stabn	68,0,162,.LM66-.LFBB30
.LM66:
.LFBB30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,163,.LM67-.LFBB30
.LM67:
	rcall call_self	 ; 
	ret
	.size	call_self, .-call_self
.Lscope30:
	.stabs	"",36,0,0,.Lscope30-.LFBB30
	.stabd	78,0,0
	.stabs	"call_simple:F(0,1)",36,0,166,call_simple
	.stabs	"a:P(0,1)",64,0,166,24
.global	call_simple
	.type	call_simple, @function
call_simple:
	.stabd	46,0,0
	.stabn	68,0,167,.LM68-.LFBB31
.LM68:
.LFBB31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,168,.LM69-.LFBB31
.LM69:
	rcall return_arg1	 ; 
	.stabn	68,0,169,.LM70-.LFBB31
.LM70:
	ret
	.size	call_simple, .-call_simple
.Lscope31:
	.stabs	"",36,0,0,.Lscope31-.LFBB31
	.stabd	78,0,0
	.stabs	"call_complex1:F(0,1)",36,0,171,call_complex1
.global	call_complex1
	.type	call_complex1, @function
call_complex1:
	.stabd	46,0,0
	.stabn	68,0,172,.LM71-.LFBB32
.LM71:
.LFBB32:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,173,.LM72-.LFBB32
.LM72:
	ldi r24,lo8(-2)	 ; ,
	rcall return_arg1	 ; 
	.stabn	68,0,174,.LM73-.LFBB32
.LM73:
	subi r24,lo8(-(1))	 ; ,
	ret
	.size	call_complex1, .-call_complex1
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.stabd	78,0,0
	.stabs	"call_complex2:F(0,1)",36,0,176,call_complex2
	.stabs	"a:P(0,1)",64,0,176,24
	.stabs	"b:P(0,1)",64,0,176,28
.global	call_complex2
	.type	call_complex2, @function
call_complex2:
	.stabd	46,0,0
	.stabn	68,0,177,.LM74-.LFBB33
.LM74:
.LFBB33:
	push r28	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22	 ;  b, b
	.stabn	68,0,178,.LM75-.LFBB33
.LM75:
	mov r24,r22	 ; , b
	rcall return_arg1	 ; 
	sts static_value,r24	 ;  static_value,
	.stabn	68,0,180,.LM76-.LFBB33
.LM76:
	mov r24,r28	 ; , b
/* epilogue start */
	pop r28	 ; 
	ret
	.size	call_complex2, .-call_complex2
.Lscope33:
	.stabs	"",36,0,0,.Lscope33-.LFBB33
	.stabd	78,0,0
	.stabs	"call_pointer:F(0,15)",36,0,182,call_pointer
	.stabs	"f:P(0,23)=*(0,24)=f(0,1)",64,0,182,24
.global	call_pointer
	.type	call_pointer, @function
call_pointer:
	.stabd	46,0,0
	.stabn	68,0,183,.LM77-.LFBB34
.LM77:
.LFBB34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,184,.LM78-.LFBB34
.LM78:
	mov r30,r24	 ; , f
	mov r31,r25	 ; , f
	icall
	ret
	.size	call_pointer, .-call_pointer
.Lscope34:
	.stabs	"",36,0,0,.Lscope34-.LFBB34
	.stabd	78,0,0
	.stabs	"condition:F(0,1)",36,0,187,condition
	.stabs	"a:P(0,1)",64,0,187,24
	.stabs	"b:P(0,1)",64,0,187,22
.global	condition
	.type	condition, @function
condition:
	.stabd	46,0,0
	.stabn	68,0,188,.LM79-.LFBB35
.LM79:
.LFBB35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,189,.LM80-.LFBB35
.LM80:
	cpse r24,r22	 ;  a, b
	rjmp .L36	 ; 
	.stabn	68,0,190,.LM81-.LFBB35
.LM81:
	ldi r22,lo8(1)	 ;  b,
.L36:
	.stabn	68,0,192,.LM82-.LFBB35
.LM82:
	mov r24,r22	 ; , b
	subi r24,lo8(-(1))	 ; ,
	ret
	.size	condition, .-condition
.Lscope35:
	.stabs	"",36,0,0,.Lscope35-.LFBB35
	.stabd	78,0,0
	.stabs	"loop:F(0,1)",36,0,194,loop
	.stabs	"n:P(0,1)",64,0,194,18
.global	loop
	.type	loop, @function
loop:
	.stabd	46,0,0
	.stabn	68,0,195,.LM83-.LFBB36
.LM83:
.LFBB36:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24	 ;  n, n
	.stabn	68,0,197,.LM84-.LFBB36
.LM84:
	cp __zero_reg__,r24	 ;  n
	brge .L41	 ; ,
	.stabn	68,0,196,.LM85-.LFBB36
.LM85:
	ldi r24,0	 ;  sum
	.stabn	68,0,197,.LM86-.LFBB36
.LM86:
	ldi r25,0	 ;  i
.L40:
	.stabn	68,0,198,.LM87-.LFBB36
.LM87:
	add r24,r25	 ;  sum, i
	.stabn	68,0,197,.LM88-.LFBB36
.LM88:
	subi r25,lo8(-(1))	 ;  i,
	cpse r25,r18	 ;  i, n
	rjmp .L40	 ; 
	ret
.L41:
	.stabn	68,0,196,.LM89-.LFBB36
.LM89:
	ldi r24,0	 ;  sum
	.stabn	68,0,200,.LM90-.LFBB36
.LM90:
	ret
	.size	loop, .-loop
	.stabs	"i:r(0,1)",64,0,196,25
	.stabs	"sum:r(0,1)",64,0,196,24
	.stabn	192,0,0,.LFBB36-.LFBB36
	.stabn	224,0,0,.Lscope36-.LFBB36
.Lscope36:
	.stabs	"",36,0,0,.Lscope36-.LFBB36
	.stabd	78,0,0
	.stabs	"many_args:F(0,1)",36,0,202,many_args
	.stabs	"a0:P(0,1)",64,0,202,24
	.stabs	"a1:P(0,1)",64,0,202,22
	.stabs	"a2:P(0,1)",64,0,202,20
	.stabs	"a3:P(0,1)",64,0,202,18
	.stabs	"a4:P(0,1)",64,0,203,16
	.stabs	"a5:P(0,1)",64,0,203,14
	.stabs	"a6:P(0,1)",64,0,203,12
	.stabs	"a7:P(0,1)",64,0,203,10
.global	many_args
	.type	many_args, @function
many_args:
	.stabd	46,0,0
	.stabn	68,0,204,.LM91-.LFBB37
.LM91:
.LFBB37:
	push r10	 ; 
	push r14	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.stabn	68,0,205,.LM92-.LFBB37
.LM92:
	add r24,r18	 ;  tmp55, a3
	add r24,r14	 ;  tmp56, a5
	.stabn	68,0,206,.LM93-.LFBB37
.LM93:
	add r24,r10	 ; , a7
/* epilogue start */
	pop r14	 ; 
	pop r10	 ; 
	ret
	.size	many_args, .-many_args
.Lscope37:
	.stabs	"",36,0,0,.Lscope37-.LFBB37
	.stabd	78,0,0
	.stabs	"call_many_args:F(0,1)",36,0,208,call_many_args
.global	call_many_args
	.type	call_many_args, @function
call_many_args:
	.stabd	46,0,0
	.stabn	68,0,209,.LM94-.LFBB38
.LM94:
.LFBB38:
	push r10	 ; 
	push r12	 ; 
	push r14	 ; 
	push r16	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.stabn	68,0,210,.LM95-.LFBB38
.LM95:
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(7)	 ; ,
	mov r10,r31	 ; ,
	mov r31,__tmp_reg__	 ; 
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(6)	 ; ,
	mov r12,r31	 ; ,
	mov r31,__tmp_reg__	 ; 
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(5)	 ; ,
	mov r14,r31	 ; ,
	mov r31,__tmp_reg__	 ; 
	ldi r16,lo8(4)	 ; ,
	ldi r18,lo8(3)	 ; ,
	ldi r20,lo8(2)	 ; ,
	ldi r22,lo8(1)	 ; ,
	ldi r24,0	 ; 
	rcall many_args	 ; 
/* epilogue start */
	.stabn	68,0,211,.LM96-.LFBB38
.LM96:
	pop r16	 ; 
	pop r14	 ; 
	pop r12	 ; 
	pop r10	 ; 
	ret
	.size	call_many_args, .-call_many_args
.Lscope38:
	.stabs	"",36,0,0,.Lscope38-.LFBB38
	.stabd	78,0,0
	.stabs	"direct:F(0,15)",36,0,214,direct
.global	direct
	.type	direct, @function
direct:
	.stabd	46,0,0
	.stabn	68,0,215,.LM97-.LFBB39
.LM97:
.LFBB39:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,216,.LM98-.LFBB39
.LM98:
/* #APP */
 ;  216 "avr8-elf.c" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	direct, .-direct
.Lscope39:
	.stabs	"",36,0,0,.Lscope39-.LFBB39
	.stabd	78,0,0
	.stabs	"binary:F(0,15)",36,0,222,binary
.global	binary
	.type	binary, @function
binary:
	.stabd	46,0,0
	.stabn	68,0,223,.LM99-.LFBB40
.LM99:
.LFBB40:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,224,.LM100-.LFBB40
.LM100:
/* #APP */
 ;  224 "avr8-elf.c" 1
	.align 4
 ;  0 "" 2
	.stabn	68,0,225,.LM101-.LFBB40
.LM101:
 ;  225 "avr8-elf.c" 1
	.int 0x0
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	binary, .-binary
.Lscope40:
	.stabs	"",36,0,0,.Lscope40-.LFBB40
	.stabd	78,0,0
	.stabs	"main:F(0,1)",36,0,230,main
.global	main
	.type	main, @function
main:
	.stabd	46,0,0
	.stabn	68,0,231,.LM102-.LFBB41
.LM102:
.LFBB41:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,233,.LM103-.LFBB41
.LM103:
	ldi r24,0	 ; 
	ret
	.size	main, .-main
.Lscope41:
	.stabs	"",36,0,0,.Lscope41-.LFBB41
	.stabd	78,0,0
.global	static_long
	.data
	.type	static_long, @object
	.size	static_long, 2
static_long:
	.word	22136
.global	static_value
	.type	static_value, @object
	.size	static_value, 1
static_value:
	.byte	10
	.stabs	"static_value:G(0,1)",32,0,128,0
	.stabs	"static_long:G(0,3)",32,0,129,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
