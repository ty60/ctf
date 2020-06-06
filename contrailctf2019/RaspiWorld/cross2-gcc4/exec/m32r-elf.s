	.file	"m32r-elf.c"
; M32R/D special options: -G 8
; GNU C (GCC) version 4.7.2 (m32r-elf)
;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="m32r-elf"
; -D USE_SYSCALL_WRAPPER m32r-elf.c -auxbase-strip m32r-elf.s -g -O -Wall
; -fno-builtin -fverbose-asm -fomit-frame-pointer
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
; -foptimize-register-move -fpeephole -fprefetch-loop-arrays
; -freg-struct-return -fregmove -fsched-critical-path-heuristic
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
; -fzero-initialized-in-bss -mbranch-cost=2 -missue-rate=2

	.section .text
.Ltext0:
	.balign 4
	.global	__exit
	.type	__exit, @function
__exit:
.LFB0:
.LM1:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL0:
	push lr	;
	mv r1,r0	; status, status
.LM2:
	ldi r0,#0	; 0	;,
.LVL1:
	bl __r_exit	;
.LVL2:
.LFE0:
	.size	__exit, .-__exit
	.balign 4
	.global	__read
	.type	__read, @function
__read:
.LFB1:
.LM3:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL3:
	push lr	;
	mv r5,r0	; fd, fd
	mv r4,r1	; buffer, buffer
	mv r3,r2	; size, size
.LM4:
	ldi r0,#0	; 0	;,
.LVL4:
	mv r1,r5	;, fd
.LVL5:
	mv r2,r4	;, buffer
.LVL6:
	bl __r_read	;
.LVL7:
.LM5:
	pop lr	;
	jmp lr
.LFE1:
	.size	__read, .-__read
	.balign 4
	.global	__write
	.type	__write, @function
__write:
.LFB2:
.LM6:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL8:
	push lr	;
	mv r5,r0	; fd, fd
	mv r4,r1	; buffer, buffer
	mv r3,r2	; size, size
.LM7:
	ldi r0,#0	; 0	;,
.LVL9:
	mv r1,r5	;, fd
.LVL10:
	mv r2,r4	;, buffer
.LVL11:
	bl __r_write	;
.LVL12:
.LM8:
	pop lr	;
	jmp lr
.LFE2:
	.size	__write, .-__write
	.balign 4
	.global	__open
	.type	__open, @function
__open:
.LFB3:
.LM9:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL13:
	push lr	;
	mv r5,r0	; path, path
	mv r4,r1	; flags, flags
	mv r3,r2	; mode, mode
.LM10:
	ldi r0,#0	; 0	;,
.LVL14:
	mv r1,r5	;, path
.LVL15:
	mv r2,r4	;, flags
.LVL16:
	bl __r_open	;
.LVL17:
.LM11:
	pop lr	;
	jmp lr
.LFE3:
	.size	__open, .-__open
	.balign 4
	.global	__close
	.type	__close, @function
__close:
.LFB4:
.LM12:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL18:
	push lr	;
	mv r1,r0	; fd, fd
.LM13:
	ldi r0,#0	; 0	;,
.LVL19:
	bl __r_close	;
.LVL20:
.LM14:
	pop lr	;
	jmp lr
.LFE4:
	.size	__close, .-__close
	.balign 4
	.global	exit
	.type	exit, @function
exit:
.LFB5:
.LM15:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL21:
	push lr	;
.LM16:
	bl __exit	;
.LVL22:
.LFE5:
	.size	exit, .-exit
	.balign 4
	.global	write1
	.type	write1, @function
write1:
.LFB6:
.LM17:
	; PROLOGUE, vars= 4, regs= 1, args= 0, extra= 0
.LVL23:
	push lr	;
	addi sp,#-4	;,
	stb r1,@(sp)	; c, c
.LM18:
	mv r1,sp	;,
.LVL24:
	ldi r2,#1	; 0x1	;,
	bl __write	;
.LVL25:
.LM19:
	addi sp,#4	;,
	pop lr	;
	jmp lr
.LFE6:
	.size	write1, .-write1
	.balign 4
	.global	putchar
	.type	putchar, @function
putchar:
.LFB7:
.LM20:
	; PROLOGUE, vars= 0, regs= 2, args= 0, extra= 0
.LVL26:
	push r8	;
	push lr	;
	mv r8,r1	; c, c
.LM21:
	and3 r1,r1,#255	;, c
.LVL27:
	bl write1	;
.LVL28:
.LM22:
	mv r0,r8	;, c
	pop lr	;
	pop r8	;
.LVL29:
	jmp lr
.LFE7:
	.size	putchar, .-putchar
	.balign 4
	.global	puts
	.type	puts, @function
puts:
.LFB8:
.LM23:
	; PROLOGUE, vars= 0, regs= 3, args= 0, extra= 0
.LVL30:
	push r8	;
	push r9	;
	push lr	;
	mv r9,r0	; fd, fd
	mv r8,r1	; str, str
.LM24:
	ldb r1,@(r1)	; D.968, *str_2(D)
.LVL31:
	beqz r1,.L10	; D.968,
.LVL32:
	.balign 4
.L12:
.LM25:
	mv r0,r9	;, fd
	bl putchar	;
.LVL33:
.LM26:
	addi r8,#1	; str,
.LVL34:
	ldb r1,@(r8)	; D.968, MEM[base: str_7, offset: 0B]
	bnez r1,.L12	; D.968,
	.balign 4
.L10:
.LM27:
	ldi r0,#0	; 0	;,
	pop lr	;
	pop r9	;
.LVL35:
	pop r8	;
.LVL36:
	jmp lr
.LFE8:
	.size	puts, .-puts
	.section	.rodata.str1.4,"aMS",@progbits,1
	.balign 4
.LC0:
	.string	"0123456789abcdef"
	.section .text
	.balign 4
	.global	putxval
	.type	putxval, @function
putxval:
.LFB9:
.LM28:
	; PROLOGUE, vars= 20, regs= 1, args= 0, extra= 0
.LVL37:
	push lr	;
	addi sp,#-20	;,
.LVL38:
.LM29:
	ldi r4,#0	; tmp39,
	stb r4,@(16,sp)	; tmp39, MEM[(char *)&buf + 16B]
.LVL39:
.LM30:
	bnez r1,.L15	; value,
.LM31:
	bnez r2,.L15	; column,
.LM32:
	ldi r2,#1	; 0x1	; column,
.LVL40:
	.balign 4
.L15:
.LM33:
	add3 r4,sp,#14	; ivtmp.34,,
.LM34:
	ldi r7,#48	; tmp47,
	ld24 r6,#.LC0	; tmp48,
	bra .L16	;
.LVL41:
	.balign 4
.L18:
.LM35:
	and3 r5,r1,#0xf	; tmp42, value,
.LVL42:
	add r5,r6	; tmp42, tmp48
	ldub r5,@(r5)	;,
	stb r5,@(1,r4)	; tmp43, MEM[base: D.1032_24, offset: 1B]
.LVL43:
.LM36:
	srli r1,#4	; value,
.LVL44:
.LM37:
	beqz r2,.L17	; column,
.LVL45:
	.balign 4
.L20:
.LM38:
	addi r2,#-1	; column,
.LVL46:
	.balign 4
.L17:
	addi r4,#-1	; ivtmp.34,
.LVL47:
	.balign 4
.L16:
.LM39:
	add3 r5,r4,#1	; p, ivtmp.34,
.LVL48:
.LM40:
	bnez r1,.L18	; value,
.LM41:
	beqz r2,.L23	; column,
.LM42:
	stb r7,@(1,r4)	; tmp47, MEM[base: D.1033_5, offset: 1B]
.LVL49:
	bra .L20	;
.LVL50:
	.balign 4
.L23:
.LM43:
	add3 r1,r5,#1	;, p,
.LVL51:
	bl puts	;
.LVL52:
.LM44:
	ldi r0,#0	; 0	;,
	addi sp,#20	;,
	pop lr	;
	jmp lr
.LFE9:
	.size	putxval, .-putxval
	.section	.rodata.str1.4
	.balign 4
.LC1:
	.string	"Hello World! "
	.balign 4
.LC2:
	.string	" This architecture is m32r-elf\n"
	.section .text
	.balign 4
	.global	main
	.type	main, @function
main:
.LFB10:
.LM45:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
	push lr	;
.LVL53:
.LM46:
	ldi r0,#1	; 0x1	;,
	ld24 r1,#.LC1	;,
	bl puts	;
.LVL54:
.LM47:
	ldi r0,#1	; 0x1	;,
	ld24 r4,#data_value	; tmp29,
	ld r1,@(r4)	;, data_value
	ldi r2,#0	; 0	;,
	bl putxval	;
.LVL55:
.LM48:
	ldi r0,#1	; 0x1	;,
	ld24 r1,#.LC2	;,
	bl puts	;
.LVL56:
.LM49:
	ldi r0,#0	; 0	;,
	bl exit	;
.LVL57:
.LFE10:
	.size	main, .-main
	.comm	bss_value,4,4
	.global	data_value
	.section .data
	.balign 4
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.word	-1414661426
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
	.uleb128 0xf
	.uleb128 0
	.byte	0x9
	.uleb128 0x14
	.uleb128 0xe
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
	.section .text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x52f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x64
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x7
	.4byte	0x64
	.4byte	.LLST0
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	0x48b
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0xd9
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xb
	.4byte	0x64
	.4byte	.LLST1
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0xb
	.4byte	0xd9
	.4byte	.LLST2
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0xb
	.4byte	0x64
	.4byte	.LLST3
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	0x4a4
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x149
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xf
	.4byte	0x64
	.4byte	.LLST4
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0xf
	.4byte	0x149
	.4byte	.LLST5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0xf
	.4byte	0x64
	.4byte	.LLST6
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x14f
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x1bf
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x13
	.4byte	0x1bf
	.4byte	.LLST7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x13
	.4byte	0x64
	.4byte	.LLST8
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x13
	.4byte	0x64
	.4byte	.LLST9
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	0x4f2
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1c5
	.uleb128 0xc
	.4byte	0x1ca
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x213
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x17
	.4byte	0x64
	.4byte	.LLST10
	.uleb128 0x4
	.4byte	.LVL20
	.4byte	0x519
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x24d
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.4byte	0x64
	.4byte	.LLST11
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x2a2
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.4byte	0x64
	.4byte	.LLST12
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0x2a2
	.4byte	.LLST13
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	0xdb
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x2fc
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.4byte	0x64
	.4byte	.LLST14
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x64
	.4byte	.LLST15
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x347
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.4byte	0x64
	.4byte	.LLST16
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.4byte	0x347
	.4byte	.LLST17
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	0x2a9
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ca
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x64
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x3bb
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.4byte	0x64
	.4byte	.LLST18
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0x52
	.4byte	0x3bb
	.4byte	.LLST19
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x1
	.byte	0x52
	.4byte	0x64
	.4byte	.LLST20
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x3c2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x347
	.4byte	.LLST21
	.uleb128 0x10
	.4byte	.LVL52
	.4byte	0x2fc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x11
	.4byte	0x1ca
	.4byte	0x3d2
	.uleb128 0x12
	.4byte	0x3d2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x68
	.4byte	0x64
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x460
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x64
	.byte	0x1
	.uleb128 0x15
	.4byte	.LVL54
	.4byte	0x2fc
	.4byte	0x41c
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0x34d
	.4byte	0x434
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL56
	.4byte	0x2fc
	.4byte	0x450
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL57
	.4byte	0x213
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3
	.4byte	0x472
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4
	.4byte	0x64
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF29
	.byte	0x2
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.4byte	0x4a4
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x64
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc
	.byte	0x1
	.4byte	0x64
	.byte	0x1
	.4byte	0x4cb
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0xd9
	.uleb128 0x18
	.4byte	0x64
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.4byte	0x64
	.byte	0x1
	.4byte	0x4f2
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x149
	.uleb128 0x18
	.4byte	0x64
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0xe
	.byte	0x1
	.4byte	0x64
	.byte	0x1
	.4byte	0x519
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x1bf
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x64
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF30
	.byte	0x2
	.byte	0xf
	.byte	0x1
	.4byte	0x64
	.byte	0x1
	.uleb128 0x18
	.4byte	0x64
	.uleb128 0x18
	.4byte	0x64
	.byte	0
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x4
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -9
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x55
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
	.string	"m32r-elf.c"
	.uleb128 0
	.uleb128 0
	.uleb128 0
	.string	"syscall.h"
	.uleb128 0
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x6
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x19
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF2:
	.string	"size"
.LASF28:
	.string	"__r_open"
.LASF16:
	.string	"puts"
.LASF6:
	.string	"path"
.LASF8:
	.string	"mode"
.LASF7:
	.string	"flags"
.LASF22:
	.string	"main"
.LASF25:
	.string	"bss_value"
.LASF31:
	.string	"GNU C 4.7.2"
.LASF0:
	.string	"status"
.LASF4:
	.string	"__write"
.LASF20:
	.string	"long unsigned int"
.LASF26:
	.string	"__r_read"
.LASF3:
	.string	"__read"
.LASF27:
	.string	"__r_write"
.LASF13:
	.string	"write1"
.LASF24:
	.string	"data_value"
.LASF14:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF11:
	.string	"__exit"
.LASF23:
	.string	"long int"
.LASF17:
	.string	"putxval"
.LASF15:
	.string	"putchar"
.LASF5:
	.string	"__open"
.LASF32:
	.string	"m32r-elf.c"
.LASF10:
	.string	"__close"
.LASF30:
	.string	"__r_close"
.LASF29:
	.string	"__r_exit"
.LASF18:
	.string	"value"
.LASF12:
	.string	"exit"
.LASF19:
	.string	"column"
.LASF1:
	.string	"buffer"
.LASF21:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.7.2"
