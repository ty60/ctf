	.file	"avr-elf.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (GCC) version 4.7.2 (avr-elf)
 ; 	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -nostdinc avr-elf.c -auxbase-strip avr-elf.s -g -O
 ;  -Wall -fno-builtin -fverbose-asm -fomit-frame-pointer
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
 ;  -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss

	.stabs	"/home/hiroaki/cross2-gcc4/sample/",100,0,2,.Ltext0
	.stabs	"avr-elf.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=@s32;r(0,3);020000000000;017777777777;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;0177777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=@s32;r(0,5);0;037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0;0177777;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"void:t(0,15)=(0,15)",128,0,0,0
	.stabs	"structure:T(0,16)=s6a:(0,1),0,16;b:(0,1),16,16;c:(0,1),32,16;;",128,0,0,0
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
	ldi r25,0	 ; 
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
	ldi r25,0	 ; 
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
	ldi r24,lo8(2)	 ; ,
	ldi r25,0	 ; 
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
	ldi r25,0	 ; 
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
	ldi r24,lo8(2)	 ; ,
	ldi r25,0	 ; 
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
	ldi r24,lo8(4)	 ; ,
	ldi r25,0	 ; 
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
	ldi r25,lo8(119)	 ; ,
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
	ldi r22,lo8(-86)	 ; ,
	ldi r23,lo8(-103)	 ; ,
	ldi r24,lo8(-120)	 ; ,
	ldi r25,lo8(119)	 ; ,
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
	ldi r25,lo8(-1)	 ; ,
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
	ldi r22,lo8(-52)	 ; ,
	ldi r23,lo8(-35)	 ; ,
	ldi r24,lo8(-18)	 ; ,
	ldi r25,lo8(-1)	 ; ,
	ret
	.size	return_long_upper, .-return_long_upper
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabd	78,0,0
	.stabs	"return_arg1:F(0,1)",36,0,56,return_arg1
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
	mov r25,r23	 ;  b, b
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
	.stabn	68,0,68,.LM26-.LFBB14
.LM26:
	add r22,r24	 ;  tmp46, a
	adc r23,r25	 ;  tmp46, a
	.stabn	68,0,69,.LM27-.LFBB14
.LM27:
	mov r24,r22	 ; , tmp46
	mov r25,r23	 ; ,
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
	.stabn	68,0,72,.LM28-.LFBB15
.LM28:
.LFBB15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,73,.LM29-.LFBB15
.LM29:
	add r24,r22	 ;  tmp49, b
	adc r25,r23	 ;  tmp49, b
	add r20,r24	 ;  tmp48, tmp49
	adc r21,r25	 ;  tmp48, tmp49
	.stabn	68,0,74,.LM30-.LFBB15
.LM30:
	mov r24,r20	 ; , tmp48
	mov r25,r21	 ; ,
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
	.stabn	68,0,77,.LM31-.LFBB16
.LM31:
.LFBB16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,78,.LM32-.LFBB16
.LM32:
	mov r18,r24	 ;  tmp45, a
	mov r19,r25	 ;  tmp45, a
	subi r18,-2	 ;  tmp45,
	sbci r19,-1	 ; ,
	.stabn	68,0,79,.LM33-.LFBB16
.LM33:
	mov r24,r18	 ; , tmp45
	mov r25,r19	 ; ,
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
	.stabn	68,0,82,.LM34-.LFBB17
.LM34:
.LFBB17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,83,.LM35-.LFBB17
.LM35:
	mov r18,r24	 ;  tmp45, a
	mov r19,r25	 ;  tmp45, a
	subi r18,-1	 ;  tmp45,
	sbci r19,-1	 ; ,
	.stabn	68,0,84,.LM36-.LFBB17
.LM36:
	mov r24,r18	 ; , tmp45
	mov r25,r19	 ; ,
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
	.stabn	68,0,87,.LM37-.LFBB18
.LM37:
.LFBB18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,88,.LM38-.LFBB18
.LM38:
	or r22,r24	 ;  tmp46, a
	or r23,r25	 ;  tmp46, a
	.stabn	68,0,89,.LM39-.LFBB18
.LM39:
	mov r24,r22	 ; , tmp46
	mov r25,r23	 ; ,
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
	.stabn	68,0,92,.LM40-.LFBB19
.LM40:
.LFBB19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,93,.LM41-.LFBB19
.LM41:
	mov r18,r24	 ;  tmp45, a
	mov r19,r25	 ;  tmp45, a
	ori r18,1	 ;  tmp45,
	.stabn	68,0,94,.LM42-.LFBB19
.LM42:
	mov r24,r18	 ; , tmp45
	mov r25,r19	 ; ,
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
	.stabn	68,0,97,.LM43-.LFBB20
.LM43:
.LFBB20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,98,.LM44-.LFBB20
.LM44:
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	ld r18,Z	 ;  D.1040, *p_1(D)
	ldd r19,Z+1	 ;  D.1040, *p_1(D)
	.stabn	68,0,99,.LM45-.LFBB20
.LM45:
	mov r24,r18	 ; , D.1040
	mov r25,r19	 ; , D.1040
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
	.stabn	68,0,102,.LM46-.LFBB21
.LM46:
.LFBB21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,103,.LM47-.LFBB21
.LM47:
	ldi r18,lo8(-1)	 ;  tmp43,
	ldi r19,0	 ; 
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	std Z+1,r19	 ;  *p_1(D), tmp43
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
	.stabn	68,0,107,.LM48-.LFBB22
.LM48:
.LFBB22:
	push r16	 ; 
	push r17	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.stabn	68,0,108,.LM49-.LFBB22
.LM49:
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	ld r16,Z	 ;  D.1038, *p_1(D)
	ldd r17,Z+1	 ;  D.1038, *p_1(D)
	ldd r18,Z+2	 ;  D.1038, *p_1(D)
	ldd r19,Z+3	 ;  D.1038, *p_1(D)
	.stabn	68,0,109,.LM50-.LFBB22
.LM50:
	mov r22,r16	 ; , D.1038
	mov r23,r17	 ; , D.1038
	mov r24,r18	 ; , D.1038
	mov r25,r19	 ; , D.1038
/* epilogue start */
	pop r17	 ; 
	pop r16	 ; 
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
	.stabn	68,0,112,.LM51-.LFBB23
.LM51:
.LFBB23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,113,.LM52-.LFBB23
.LM52:
	ldi r20,lo8(68)	 ;  tmp43,
	ldi r21,lo8(51)	 ; ,
	ldi r22,lo8(34)	 ; ,
	ldi r23,lo8(17)	 ; ,
	mov r30,r24	 ; , p
	mov r31,r25	 ; , p
	st Z,r20	 ;  *p_1(D), tmp43
	std Z+1,r21	 ;  *p_1(D), tmp43
	std Z+2,r22	 ;  *p_1(D), tmp43
	std Z+3,r23	 ;  *p_1(D), tmp43
	ret
	.size	store_long, .-store_long
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabd	78,0,0
	.stabs	"member:F(0,1)",36,0,122,member
	.stabs	"p:P(0,21)=*(0,16)",64,0,122,30
.global	member
	.type	member, @function
member:
	.stabd	46,0,0
	.stabn	68,0,123,.LM53-.LFBB24
.LM53:
.LFBB24:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24	 ;  p, p
	mov r31,r25	 ;  p, p
	.stabn	68,0,124,.LM54-.LFBB24
.LM54:
	ldi r24,lo8(1)	 ;  tmp45,
	ldi r25,0	 ; 
	std Z+3,r25	 ;  p_1(D)->b, tmp45
	std Z+2,r24	 ;  p_1(D)->b, tmp45
	.stabn	68,0,126,.LM55-.LFBB24
.LM55:
	ldd r24,Z+4	 ; , p_1(D)->c
	ldd r25,Z+5	 ; , p_1(D)->c
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
	.stabn	68,0,132,.LM56-.LFBB25
.LM56:
.LFBB25:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,134,.LM57-.LFBB25
.LM57:
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
	.stabn	68,0,137,.LM58-.LFBB26
.LM58:
.LFBB26:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,139,.LM59-.LFBB26
.LM59:
	lds r24,static_value	 ; , static_value
	lds r25,static_value+1	 ; , static_value
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
	.stabn	68,0,142,.LM60-.LFBB27
.LM60:
.LFBB27:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,143,.LM61-.LFBB27
.LM61:
	sts static_value+1,r25	 ;  static_value, a
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
	.stabn	68,0,149,.LM62-.LFBB28
.LM62:
.LFBB28:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	.stabn	68,0,150,.LM63-.LFBB28
.LM63:
	ldi r24,lo8(-2)	 ;  tmp42,
	ldi r25,0	 ; 
	std Y+2,r25	 ;  a, tmp42
	std Y+1,r24	 ;  a, tmp42
	.stabn	68,0,151,.LM64-.LFBB28
.LM64:
	ldi r24,lo8(-1)	 ;  tmp43,
	ldi r25,0	 ; 
	std Y+4,r25	 ;  b, tmp43
	std Y+3,r24	 ;  b, tmp43
/* epilogue start */
	.stabn	68,0,152,.LM65-.LFBB28
.LM65:
	 ; SP += 4	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	set_stack, .-set_stack
	.stabs	"a:(0,18)",128,0,150,1
	.stabs	"b:(0,18)",128,0,151,3
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
	.stabn	68,0,155,.LM66-.LFBB29
.LM66:
.LFBB29:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	.stabn	68,0,156,.LM67-.LFBB29
.LM67:
	ldi r24,lo8(-2)	 ;  tmp46,
	ldi r25,0	 ; 
	std Y+2,r25	 ;  a, tmp46
	std Y+1,r24	 ;  a, tmp46
	.stabn	68,0,157,.LM68-.LFBB29
.LM68:
	ldi r24,lo8(-1)	 ;  tmp47,
	ldi r25,0	 ; 
	std Y+4,r25	 ;  b, tmp47
	std Y+3,r24	 ;  b, tmp47
	.stabn	68,0,158,.LM69-.LFBB29
.LM69:
	ldd r18,Y+1	 ;  a.1, a
	ldd r19,Y+2	 ;  a.1, a
	ldd r24,Y+3	 ;  b.2, b
	ldd r25,Y+4	 ;  b.2, b
	add r18,r24	 ;  tmp48, b.2
	adc r19,r25	 ;  tmp48, b.2
	.stabn	68,0,159,.LM70-.LFBB29
.LM70:
	mov r24,r18	 ; , tmp48
	mov r25,r19	 ; ,
/* epilogue start */
	 ; SP += 4	 ; 
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	use_stack, .-use_stack
	.stabs	"a:(0,18)",128,0,156,1
	.stabs	"b:(0,18)",128,0,157,3
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
	.stabn	68,0,162,.LM71-.LFBB30
.LM71:
.LFBB30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,163,.LM72-.LFBB30
.LM72:
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
	.stabn	68,0,167,.LM73-.LFBB31
.LM73:
.LFBB31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,168,.LM74-.LFBB31
.LM74:
	rcall return_arg1	 ; 
	.stabn	68,0,169,.LM75-.LFBB31
.LM75:
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
	.stabn	68,0,172,.LM76-.LFBB32
.LM76:
.LFBB32:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,173,.LM77-.LFBB32
.LM77:
	ldi r24,lo8(-2)	 ; ,
	ldi r25,0	 ; 
	rcall return_arg1	 ; 
	mov r18,r24	 ;  tmp45,
	mov r19,r25	 ;  tmp45,
	subi r18,-1	 ;  tmp45,
	sbci r19,-1	 ; ,
	.stabn	68,0,174,.LM78-.LFBB32
.LM78:
	mov r24,r18	 ; , tmp45
	mov r25,r19	 ; ,
	ret
	.size	call_complex1, .-call_complex1
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.stabd	78,0,0
	.stabs	"call_complex2:F(0,1)",36,0,176,call_complex2
	.stabs	"a:P(0,1)",64,0,176,24
.global	call_complex2
	.type	call_complex2, @function
call_complex2:
	.stabd	46,0,0
	.stabn	68,0,177,.LM79-.LFBB33
.LM79:
.LFBB33:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r22	 ;  b, b
	mov r28,r23	 ;  b, b
	.stabn	68,0,178,.LM80-.LFBB33
.LM80:
	mov r24,r22	 ; , b
	mov r25,r23	 ; , b
	rcall return_arg1	 ; 
	sts static_value+1,r25	 ;  static_value,
	sts static_value,r24	 ;  static_value,
	.stabn	68,0,180,.LM81-.LFBB33
.LM81:
	mov r24,r29	 ; , b
	mov r25,r28	 ; , b
/* epilogue start */
	pop r29	 ; 
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
	.stabn	68,0,183,.LM82-.LFBB34
.LM82:
.LFBB34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,184,.LM83-.LFBB34
.LM83:
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
	.stabn	68,0,188,.LM84-.LFBB35
.LM84:
.LFBB35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,189,.LM85-.LFBB35
.LM85:
	cp r24,r22	 ;  a, b
	cpc r25,r23	 ;  a, b
	brne .L36	 ; ,
	.stabn	68,0,190,.LM86-.LFBB35
.LM86:
	ldi r22,lo8(1)	 ;  b,
	ldi r23,0	 ;  b
.L36:
	.stabn	68,0,191,.LM87-.LFBB35
.LM87:
	subi r22,-1	 ;  tmp46,
	sbci r23,-1	 ; ,
	.stabn	68,0,192,.LM88-.LFBB35
.LM88:
	mov r24,r22	 ; , tmp46
	mov r25,r23	 ; ,
	ret
	.size	condition, .-condition
.Lscope35:
	.stabs	"",36,0,0,.Lscope35-.LFBB35
	.stabd	78,0,0
	.stabs	"loop:F(0,1)",36,0,194,loop
	.stabs	"n:P(0,1)",64,0,194,24
.global	loop
	.type	loop, @function
loop:
	.stabd	46,0,0
	.stabn	68,0,195,.LM89-.LFBB36
.LM89:
.LFBB36:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,197,.LM90-.LFBB36
.LM90:
	cp __zero_reg__,r24	 ;  n
	cpc __zero_reg__,r25	 ;  n
	brge .L41	 ; ,
	.stabn	68,0,196,.LM91-.LFBB36
.LM91:
	ldi r20,0	 ;  sum
	ldi r21,0	 ;  sum
	.stabn	68,0,197,.LM92-.LFBB36
.LM92:
	ldi r18,0	 ;  i
	ldi r19,0	 ;  i
.L40:
	.stabn	68,0,198,.LM93-.LFBB36
.LM93:
	add r20,r18	 ;  sum, i
	adc r21,r19	 ;  sum, i
	.stabn	68,0,197,.LM94-.LFBB36
.LM94:
	subi r18,-1	 ;  i,
	sbci r19,-1	 ;  i,
	cp r18,r24	 ;  i, n
	cpc r19,r25	 ;  i, n
	brne .L40	 ; ,
	rjmp .L39	 ; 
.L41:
	.stabn	68,0,196,.LM95-.LFBB36
.LM95:
	ldi r20,0	 ;  sum
	ldi r21,0	 ;  sum
.L39:
	.stabn	68,0,200,.LM96-.LFBB36
.LM96:
	mov r24,r20	 ; , sum
	mov r25,r21	 ; , sum
	ret
	.size	loop, .-loop
	.stabs	"i:r(0,1)",64,0,196,18
	.stabs	"sum:r(0,1)",64,0,196,20
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
	.stabn	68,0,204,.LM97-.LFBB37
.LM97:
.LFBB37:
	push r10	 ; 
	push r11	 ; 
	push r14	 ; 
	push r15	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.stabn	68,0,205,.LM98-.LFBB37
.LM98:
	add r24,r18	 ;  tmp55, a3
	adc r25,r19	 ;  tmp55, a3
	add r14,r24	 ;  tmp56, tmp55
	adc r15,r25	 ;  tmp56, tmp55
	add r10,r14	 ;  tmp54, tmp56
	adc r11,r15	 ;  tmp54, tmp56
	.stabn	68,0,206,.LM99-.LFBB37
.LM99:
	mov r24,r10	 ; , tmp54
	mov r25,r11	 ; ,
/* epilogue start */
	pop r15	 ; 
	pop r14	 ; 
	pop r11	 ; 
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
	.stabn	68,0,209,.LM100-.LFBB38
.LM100:
.LFBB38:
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.stabn	68,0,210,.LM101-.LFBB38
.LM101:
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(7)	 ; ,
	mov r10,r31	 ; ,
	mov r11,__zero_reg__	 ; 
	mov r31,__tmp_reg__	 ; 
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(6)	 ; ,
	mov r12,r31	 ; ,
	mov r13,__zero_reg__	 ; 
	mov r31,__tmp_reg__	 ; 
	mov __tmp_reg__,r31	 ; 
	ldi r31,lo8(5)	 ; ,
	mov r14,r31	 ; ,
	mov r15,__zero_reg__	 ; 
	mov r31,__tmp_reg__	 ; 
	ldi r16,lo8(4)	 ; ,
	ldi r17,0	 ; 
	ldi r18,lo8(3)	 ; ,
	ldi r19,0	 ; 
	ldi r20,lo8(2)	 ; ,
	ldi r21,0	 ; 
	ldi r22,lo8(1)	 ; ,
	ldi r23,0	 ; 
	ldi r24,0	 ; 
	ldi r25,0	 ; 
	rcall many_args	 ; 
/* epilogue start */
	.stabn	68,0,211,.LM102-.LFBB38
.LM102:
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
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
	.stabn	68,0,215,.LM103-.LFBB39
.LM103:
.LFBB39:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,216,.LM104-.LFBB39
.LM104:
/* #APP */
 ;  216 "avr-elf.c" 1
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
	.stabn	68,0,223,.LM105-.LFBB40
.LM105:
.LFBB40:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,224,.LM106-.LFBB40
.LM106:
/* #APP */
 ;  224 "avr-elf.c" 1
	.align 4
 ;  0 "" 2
	.stabn	68,0,225,.LM107-.LFBB40
.LM107:
 ;  225 "avr-elf.c" 1
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
	.stabn	68,0,231,.LM108-.LFBB41
.LM108:
.LFBB41:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,233,.LM109-.LFBB41
.LM109:
	ldi r24,0	 ; 
	ldi r25,0	 ; 
	ret
	.size	main, .-main
.Lscope41:
	.stabs	"",36,0,0,.Lscope41-.LFBB41
	.stabd	78,0,0
.global	static_long
	.data
	.type	static_long, @object
	.size	static_long, 4
static_long:
	.byte	120
	.byte	86
	.byte	52
	.byte	18
.global	static_value
	.type	static_value, @object
	.size	static_value, 2
static_value:
	.word	10
	.stabs	"static_value:G(0,1)",32,0,128,0
	.stabs	"static_long:G(0,3)",32,0,129,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
