	.file	"v850-elf.c"
# GNU C (GCC) version 4.7.2 (v850-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -D__v850__ -D ___FreeBSD___ -D ARCH="v850-elf"
# -D USE_SYSCALL_WRAPPER v850-elf.c -auxbase-strip v850-elf.s -g -O -Wall
# -fno-builtin -fverbose-asm -fomit-frame-pointer
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

	.stabs	"/home/hiroaki/cross2-gcc4/exec/",100,0,2,.Ltext0
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
	.align 2
	.stabs	"__exit:F(0,15)",36,0,7,___exit
	.stabs	"status:P(0,1)",64,0,7,7
	.global ___exit
	.type	___exit, @function
___exit:
	.stabd	46,0,0
	.stabn	68,0,8,.LM0-.LFBB1
.LM0:
.LFBB1:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r7	# status, status
	.stabn	68,0,9,.LM1-.LFBB1
.LM1:
	mov 0,r6	#,
	jarl ___r_exit,r31	#
	.size	___exit, .-___exit
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.align 2
	.stabs	"__read:F(0,1)",36,0,11,___read
	.stabs	"fd:P(0,1)",64,0,11,11
	.stabs	"buffer:P(0,16)=*(0,15)",64,0,11,10
	.stabs	"size:P(0,1)",64,0,11,9
	.global ___read
	.type	___read, @function
___read:
	.stabd	46,0,0
	.stabn	68,0,12,.LM2-.LFBB2
.LM2:
.LFBB2:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# fd, fd
	mov r7,r10	# buffer, buffer
	mov r8,r9	# size, size
	.stabn	68,0,13,.LM3-.LFBB2
.LM3:
	mov 0,r6	#,
	mov r11,r7	# fd,
	mov r10,r8	# buffer,
	jarl ___r_read,r31	#
	.stabn	68,0,14,.LM4-.LFBB2
.LM4:
	jr __return_r31
	.size	___read, .-___read
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.align 2
	.stabs	"__write:F(0,1)",36,0,15,___write
	.stabs	"fd:P(0,1)",64,0,15,11
	.stabs	"buffer:P(0,17)=*(0,18)=k(0,15)",64,0,15,10
	.stabs	"size:P(0,1)",64,0,15,9
	.global ___write
	.type	___write, @function
___write:
	.stabd	46,0,0
	.stabn	68,0,16,.LM5-.LFBB3
.LM5:
.LFBB3:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# fd, fd
	mov r7,r10	# buffer, buffer
	mov r8,r9	# size, size
	.stabn	68,0,17,.LM6-.LFBB3
.LM6:
	mov 0,r6	#,
	mov r11,r7	# fd,
	mov r10,r8	# buffer,
	jarl ___r_write,r31	#
	.stabn	68,0,18,.LM7-.LFBB3
.LM7:
	jr __return_r31
	.size	___write, .-___write
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.align 2
	.stabs	"__open:F(0,1)",36,0,19,___open
	.stabs	"path:P(0,19)=*(0,20)=k(0,2)",64,0,19,11
	.stabs	"flags:P(0,1)",64,0,19,10
	.stabs	"mode:P(0,1)",64,0,19,9
	.global ___open
	.type	___open, @function
___open:
	.stabd	46,0,0
	.stabn	68,0,20,.LM8-.LFBB4
.LM8:
.LFBB4:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# path, path
	mov r7,r10	# flags, flags
	mov r8,r9	# mode, mode
	.stabn	68,0,21,.LM9-.LFBB4
.LM9:
	mov 0,r6	#,
	mov r11,r7	# path,
	mov r10,r8	# flags,
	jarl ___r_open,r31	#
	.stabn	68,0,22,.LM10-.LFBB4
.LM10:
	jr __return_r31
	.size	___open, .-___open
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.align 2
	.stabs	"__close:F(0,1)",36,0,23,___close
	.stabs	"fd:P(0,1)",64,0,23,7
	.global ___close
	.type	___close, @function
___close:
	.stabd	46,0,0
	.stabn	68,0,24,.LM11-.LFBB5
.LM11:
.LFBB5:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r7	# fd, fd
	.stabn	68,0,25,.LM12-.LFBB5
.LM12:
	mov 0,r6	#,
	jarl ___r_close,r31	#
	.stabn	68,0,26,.LM13-.LFBB5
.LM13:
	jr __return_r31
	.size	___close, .-___close
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.align 2
	.stabs	"exit:F(0,15)",36,0,29,_exit
	.stabs	"status:P(0,1)",64,0,29,6
	.global _exit
	.type	_exit, @function
_exit:
	.stabd	46,0,0
	.stabn	68,0,30,.LM14-.LFBB6
.LM14:
.LFBB6:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,31,.LM15-.LFBB6
.LM15:
	jarl ___exit,r31	#
	.size	_exit, .-_exit
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.align 2
	.stabs	"write1:F(0,1)",36,0,34,_write1
	.stabs	"fd:P(0,1)",64,0,34,6
	.stabs	"c:p(0,11)",160,0,34,0
	.global _write1
	.type	_write1, @function
_write1:
	.stabd	46,0,0
	.stabn	68,0,35,.LM16-.LFBB7
.LM16:
.LFBB7:
	add -8,sp	#,
	st.w r31,4[sp]	#,
	st.b r7,0[sp]	# c, c
	.stabn	68,0,36,.LM17-.LFBB7
.LM17:
	mov sp,r7	#,
	mov 1,r8	#,
	jarl ___write,r31	#
	.stabn	68,0,37,.LM18-.LFBB7
.LM18:
	add 4,sp	#,
	jr __return_r31
	.size	_write1, .-_write1
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
	.align 2
	.stabs	"putchar:F(0,1)",36,0,39,_putchar
	.stabs	"fd:P(0,1)",64,0,39,6
	.stabs	"c:P(0,1)",64,0,39,29
	.global _putchar
	.type	_putchar, @function
_putchar:
	.stabd	46,0,0
	.stabn	68,0,40,.LM19-.LFBB8
.LM19:
.LFBB8:
	add -8,sp	#,
	st.w r31,4[sp]	#,
	st.w r29,0[sp]	#,
	mov r7,r29	# c, c
	.stabn	68,0,41,.LM20-.LFBB8
.LM20:
	andi 255,r7,r7	#, c,
	jarl _write1,r31	#
	.stabn	68,0,43,.LM21-.LFBB8
.LM21:
	mov r29,r10	# c,
	jr __return_r29_r31
	.size	_putchar, .-_putchar
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabd	78,0,0
	.align 2
	.stabs	"puts:F(0,1)",36,0,45,_puts
	.stabs	"fd:P(0,1)",64,0,45,28
	.stabs	"str:P(0,21)=*(0,2)",64,0,45,29
	.global _puts
	.type	_puts, @function
_puts:
	.stabd	46,0,0
	.stabn	68,0,46,.LM22-.LFBB9
.LM22:
.LFBB9:
	add -12,sp	#,
	st.w r31,8[sp]	#,
	st.w r28,4[sp]	#,
	st.w r29,0[sp]	#,
	mov r6,r28	# fd, fd
	mov r7,r29	# str, str
	.stabn	68,0,47,.LM23-.LFBB9
.LM23:
	ld.b 0[r7],r7	# *str_2(D), *str_2(D)
	shl 24,r7	#, tmp68
	sar 24,r7	#, D.968
	be .L10	#,
.L12:
	.stabn	68,0,48,.LM24-.LFBB9
.LM24:
	mov r28,r6	# fd,
	jarl _putchar,r31	#
	.stabn	68,0,47,.LM25-.LFBB9
.LM25:
	add 1,r29	#, str
	ld.b 0[r29],r7	# MEM[base: str_7, offset: 0B], MEM[base: str_7, offset: 0B]
	shl 24,r7	#, tmp72
	sar 24,r7	#, D.968
	bne .L12	#,
.L10:
	.stabn	68,0,50,.LM26-.LFBB9
.LM26:
	mov 0,r10	#,
	jr __return_r28_r31
	.size	_puts, .-_puts
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabd	78,0,0
	.section	.rodata
.LC0:
	.string	"0123456789abcdef"
	.section .text
	.align 2
	.stabs	"putxval:F(0,1)",36,0,82,_putxval
	.stabs	"fd:P(0,1)",64,0,82,6
	.stabs	"value:P(0,5)",64,0,82,7
	.stabs	"column:P(0,1)",64,0,82,8
	.global _putxval
	.type	_putxval, @function
_putxval:
	.stabd	46,0,0
	.stabn	68,0,83,.LM27-.LFBB10
.LM27:
.LFBB10:
	addi -24,sp,sp	#,,
	st.w r31,20[sp]	#,
	.stabn	68,0,88,.LM28-.LFBB10
.LM28:
	st.b r0,19[sp]	# MEM[(char *)&buf + 16B]
	.stabn	68,0,90,.LM29-.LFBB10
.LM29:
	cmp 0,r7	#, value
	bne .L15	#,
	.stabn	68,0,90,.LM30-.LFBB10
.LM30:
	cmp 0,r8	#, column
	bne .L15	#,
	.stabn	68,0,91,.LM31-.LFBB10
.LM31:
	mov 1,r8	#, column
.L15:
	.stabn	68,0,82,.LM32-.LFBB10
.LM32:
	addi 17,sp,r10	#,, ivtmp___28
	.stabn	68,0,94,.LM33-.LFBB10
.LM33:
	movea 48,r0,r13	#, tmp68
	movhi hi(.LC0),r0,r12	#, tmp69
	movea lo(.LC0),r12,r12	#, tmp69, tmp70
	br .L16	#
.L18:
	.stabn	68,0,94,.LM34-.LFBB10
.LM34:
	andi 15,r7,r11	#, value, tmp60
	add r12,r11	# tmp70, tmp61
	ld.b 0[r11],r11	#, tmp62
	st.b r11,1[r10]	# MEM[base: D.1026_24, offset: 1B], tmp62
	.stabn	68,0,95,.LM35-.LFBB10
.LM35:
	shr 4,r7	#, value
	.stabn	68,0,96,.LM36-.LFBB10
.LM36:
	cmp 0,r8	#, column
	be .L17	#,
.L20:
	.stabn	68,0,96,.LM37-.LFBB10
.LM37:
	add -1,r8	#, column
.L17:
	add -1,r10	#, ivtmp___28
.L16:
	.stabn	68,0,82,.LM38-.LFBB10
.LM38:
	addi 1,r10,r11	#, ivtmp___28, p
	.stabn	68,0,93,.LM39-.LFBB10
.LM39:
	cmp 0,r7	#, value
	bne .L18	#,
	.stabn	68,0,93,.LM40-.LFBB10
.LM40:
	cmp 0,r8	#, column
	be .L23	#,
	.stabn	68,0,94,.LM41-.LFBB10
.LM41:
	st.b r13,1[r10]	# MEM[base: D.1027_5, offset: 1B], tmp68
	br .L20	#
.L23:
	.stabn	68,0,99,.LM42-.LFBB10
.LM42:
	addi 1,r11,r7	#, p,
	jarl _puts,r31	#
	.stabn	68,0,102,.LM43-.LFBB10
.LM43:
	mov 0,r10	#,
	addi 20,sp,sp	#,,
	jr __return_r31
	.size	_putxval, .-_putxval
	.stabs	"buf:(0,22)=ar(0,23)=r(0,23);0;037777777777;;0;16;(0,2)",128,0,84,3
	.stabs	"p:r(0,21)",64,0,85,11
	.stabn	192,0,0,.LFBB10-.LFBB10
	.stabn	224,0,0,.Lscope10-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabd	78,0,0
	.section	.rodata
.LC1:
	.string	"Hello World! "
.LC2:
	.string	" This architecture is v850-elf\n"
	.section .text
	.align 2
	.stabs	"main:F(0,1)",36,0,104,_main
	.global _main
	.type	_main, @function
_main:
	.stabd	46,0,0
	.stabn	68,0,105,.LM44-.LFBB11
.LM44:
.LFBB11:
	add -8,sp	#,
	st.w r31,4[sp]	#,
	st.w r29,0[sp]	#,
	.stabn	68,0,107,.LM45-.LFBB11
.LM45:
	mov 1,r6	#,
	movhi hi(.LC1),r0,r7	#, tmp46
	movea lo(.LC1),r7,r7	#, tmp46,
	movhi hi(_puts),r0,r29	#, tmp48
	movea lo(_puts),r29,r29	#, tmp48, tmp47
	jarl .+4,r31 ; add 4,r31 ; jmp r29	# tmp47
	.stabn	68,0,108,.LM46-.LFBB11
.LM46:
	mov 1,r6	#,
	movhi hi(_data_value),r0,r10	#, tmp50
	ld.w lo(_data_value)[r10],r7	# data_value,
	mov 0,r8	#,
	jarl _putxval,r31	#
	.stabn	68,0,109,.LM47-.LFBB11
.LM47:
	mov 1,r6	#,
	movhi hi(.LC2),r0,r7	#, tmp54
	movea lo(.LC2),r7,r7	#, tmp54,
	jarl .+4,r31 ; add 4,r31 ; jmp r29	# tmp47
	.stabn	68,0,110,.LM48-.LFBB11
.LM48:
	mov 0,r6	#,
	jarl _exit,r31	#
	.size	_main, .-_main
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabd	78,0,0
	.comm	_bss_value,4,4
	.global _data_value
	.section .data
	.align 2
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.stabs	"data_value:G(0,3)",32,0,3,0
	.stabs	"bss_value:G(0,1)",32,0,4,0
	.section .text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
