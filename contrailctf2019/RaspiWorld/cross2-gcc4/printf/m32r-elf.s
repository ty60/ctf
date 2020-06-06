	.file	"m32r-elf.c"
; M32R/D special options: -G 8
; GNU C (GCC) version 4.7.2 (m32r-elf)
;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -D ___FreeBSD___ -D ARCH="m32r-elf"
; -D USE_SYSCALL_WRAPPER -D USE_UNDERLINE_WRAPPER m32r-elf.c
; -auxbase-strip m32r-elf.s -g -O -Wall -fno-builtin -fverbose-asm
; -fomit-frame-pointer
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
	.global	_exit
	.type	_exit, @function
_exit:
.LFB5:
.LM15:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL21:
	push lr	;
.LM16:
	bl __exit	;
.LVL22:
.LFE5:
	.size	_exit, .-_exit
	.balign 4
	.global	read
	.type	read, @function
read:
.LFB6:
.LM17:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL23:
	push lr	;
.LM18:
	bl __read	;
.LVL24:
.LM19:
	pop lr	;
	jmp lr
.LFE6:
	.size	read, .-read
	.balign 4
	.global	write
	.type	write, @function
write:
.LFB7:
.LM20:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL25:
	push lr	;
.LM21:
	bl __write	;
.LVL26:
.LM22:
	pop lr	;
	jmp lr
.LFE7:
	.size	write, .-write
	.balign 4
	.global	open
	.type	open, @function
open:
.LFB8:
.LM23:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL27:
	push lr	;
.LM24:
	bl __open	;
.LVL28:
.LM25:
	pop lr	;
	jmp lr
.LFE8:
	.size	open, .-open
	.balign 4
	.global	close
	.type	close, @function
close:
.LFB9:
.LM26:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL29:
	push lr	;
.LM27:
	bl __close	;
.LVL30:
.LM28:
	pop lr	;
	jmp lr
.LFE9:
	.size	close, .-close
	.balign 4
	.global	fstat
	.type	fstat, @function
fstat:
.LFB10:
.LM29:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL31:
	push lr	;
.LM30:
	mv r0,r1	;, sb
.LVL32:
	ldi r1,#0	; 0	;,
.LVL33:
	ldi r2,#60	; 0x3c	;,
	bl memset	;
.LVL34:
.LM31:
	ldi r0,#0	; 0	;,
	pop lr	;
	jmp lr
.LFE10:
	.size	fstat, .-fstat
	.balign 4
	.global	lseek
	.type	lseek, @function
lseek:
.LFB11:
.LM32:
	; PROLOGUE, vars= 0, regs= 0, args= 0, extra= 0
.LVL35:
.LM33:
	mv r0,r1	;, offset
.LVL36:
	jmp lr
.LFE11:
	.size	lseek, .-lseek
	.balign 4
	.global	sbrk
	.type	sbrk, @function
sbrk:
.LFB12:
.LM34:
	; PROLOGUE, vars= 0, regs= 0, args= 0, extra= 0
.LVL37:
.LM35:
	ld24 r5,#sbrk_top	; tmp31,
	ld r4,@(r5)	; old_top, sbrk_top
.LVL38:
.LM36:
	add r0,r4	; tmp33, old_top
.LVL39:
	st r0,@(r5)	; tmp33, sbrk_top
.LM37:
	mv r0,r4	;, old_top
	jmp lr
.LFE12:
	.size	sbrk, .-sbrk
	.balign 4
	.global	isatty
	.type	isatty, @function
isatty:
.LFB13:
.LM38:
	; PROLOGUE, vars= 0, regs= 0, args= 0, extra= 0
.LVL40:
.LM39:
	ldi r0,#1	; 0x1	;,
.LVL41:
	jmp lr
.LFE13:
	.size	isatty, .-isatty
	.balign 4
	.global	_read
	.type	_read, @function
_read:
.LFB14:
.LM40:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL42:
	push lr	;
.LM41:
	bl read	;
.LVL43:
.LM42:
	pop lr	;
	jmp lr
.LFE14:
	.size	_read, .-_read
	.balign 4
	.global	_write
	.type	_write, @function
_write:
.LFB15:
.LM43:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL44:
	push lr	;
.LM44:
	bl write	;
.LVL45:
.LM45:
	pop lr	;
	jmp lr
.LFE15:
	.size	_write, .-_write
	.balign 4
	.global	_open
	.type	_open, @function
_open:
.LFB16:
.LM46:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL46:
	push lr	;
.LM47:
	bl open	;
.LVL47:
.LM48:
	pop lr	;
	jmp lr
.LFE16:
	.size	_open, .-_open
	.balign 4
	.global	_close
	.type	_close, @function
_close:
.LFB17:
.LM49:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL48:
	push lr	;
.LM50:
	bl close	;
.LVL49:
.LM51:
	pop lr	;
	jmp lr
.LFE17:
	.size	_close, .-_close
	.balign 4
	.global	_fstat
	.type	_fstat, @function
_fstat:
.LFB18:
.LM52:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL50:
	push lr	;
.LM53:
	bl fstat	;
.LVL51:
.LM54:
	pop lr	;
	jmp lr
.LFE18:
	.size	_fstat, .-_fstat
	.balign 4
	.global	_lseek
	.type	_lseek, @function
_lseek:
.LFB19:
.LM55:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL52:
	push lr	;
.LM56:
	bl lseek	;
.LVL53:
.LM57:
	pop lr	;
	jmp lr
.LFE19:
	.size	_lseek, .-_lseek
	.balign 4
	.global	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB20:
.LM58:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL54:
	push lr	;
.LM59:
	bl sbrk	;
.LVL55:
.LM60:
	pop lr	;
	jmp lr
.LFE20:
	.size	_sbrk, .-_sbrk
	.balign 4
	.global	_isatty
	.type	_isatty, @function
_isatty:
.LFB21:
.LM61:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
.LVL56:
	push lr	;
.LM62:
	bl isatty	;
.LVL57:
.LM63:
	pop lr	;
	jmp lr
.LFE21:
	.size	_isatty, .-_isatty
	.section	.rodata.str1.4,"aMS",@progbits,1
	.balign 4
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
	.balign 4
.LC1:
	.string	"m32r-elf"
	.section .text
	.balign 4
	.global	main
	.type	main, @function
main:
.LFB24:
.LM64:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
	push lr	;
.LM65:
	ld24 r0,#.LC0	;,
	ld24 r4,#data_value	; tmp28,
	ld r1,@(r4)	;, data_value
	ld24 r2,#.LC1	;,
	bl printf	;
.LVL58:
.LM66:
	ldi r0,#0	; 0	;,
	bl exit	;
.LVL59:
.LFE24:
	.size	main, .-main
	.balign 4
	.global	_startmain
	.type	_startmain, @function
_startmain:
.LFB23:
.LM67:
	; PROLOGUE, vars= 0, regs= 1, args= 0, extra= 0
	push lr	;
.LBB4:
.LBB5:
.LM68:
	ld24 r4,#_bss_start	; tmp33,
	mv r0,r4	;, tmp33
	ldi r1,#0	; 0	;,
	ld24 r2,#_ebss	; tmp32,
	sub r2,r4	;, tmp33
	bl memset	;
.LVL60:
.LBE5:
.LBE4:
.LM69:
	bl main	;
.LVL61:
.LFE23:
	.size	_startmain, .-_startmain
	.global	sbrk_top
	.section .data
	.balign 4
	.type	sbrk_top, @object
	.size	sbrk_top, 4
sbrk_top:
	.word	_heap
	.comm	bss_value,4,4
	.global	data_value
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.section .text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb54
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.4byte	.LASF87
	.4byte	.LASF88
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd5
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x10
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1d
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6e
	.4byte	0x7a
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x86
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa3
	.4byte	0x6f
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa4
	.4byte	0x81
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa5
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa6
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc4
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0x4c
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.4byte	0x216
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1b
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1c
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1d
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1e
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x20
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x21
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x22
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x30
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x31
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x32
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x33
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x34
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x35
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5
	.byte	0x36
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x37
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x38
	.4byte	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x226
	.uleb128 0xb
	.4byte	0xa2
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x265
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x10
	.4byte	0x53
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0xa61
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x2d3
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x14
	.4byte	0x53
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x14
	.4byte	0xa9
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x14
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0xa7a
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x341
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x18
	.4byte	0x53
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x18
	.4byte	0x341
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LVL12
	.4byte	0xaa1
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x347
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x3b7
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1c
	.4byte	0xb8
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1c
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1c
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0xac8
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x3f9
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x20
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0xaef
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x433
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.4byte	.LLST11
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x226
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x49c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST12
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xa9
	.4byte	.LLST13
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST14
	.uleb128 0xe
	.4byte	.LVL24
	.4byte	0x265
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x505
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0x341
	.4byte	.LLST16
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST17
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x2d3
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x56f
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST18
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST20
	.uleb128 0xe
	.4byte	.LVL28
	.4byte	0x348
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x5ac
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.4byte	.LLST21
	.uleb128 0xe
	.4byte	.LVL30
	.4byte	0x3b7
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF57
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x602
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x53
	.4byte	.LLST22
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.4byte	0x602
	.4byte	.LLST23
	.uleb128 0xe
	.4byte	.LVL34
	.4byte	0xb0c
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x64e
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x688
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4c
	.4byte	0x53
	.4byte	.LLST25
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4e
	.4byte	0xa9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x6b4
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST26
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x71d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LLST27
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5a
	.4byte	0xa9
	.4byte	.LLST28
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LLST29
	.uleb128 0xe
	.4byte	.LVL43
	.4byte	0x433
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x786
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.4byte	.LLST30
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5e
	.4byte	0x341
	.4byte	.LLST31
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.4byte	0x53
	.4byte	.LLST32
	.uleb128 0xe
	.4byte	.LVL45
	.4byte	0x49c
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x7f0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.4byte	0xb8
	.4byte	.LLST33
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.4byte	.LLST34
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.4byte	0x53
	.4byte	.LLST35
	.uleb128 0xe
	.4byte	.LVL47
	.4byte	0x505
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x82d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.4byte	0x53
	.4byte	.LLST36
	.uleb128 0xe
	.4byte	.LVL49
	.4byte	0x56f
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x87f
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x53
	.4byte	.LLST37
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.4byte	0x602
	.4byte	.LLST38
	.uleb128 0xe
	.4byte	.LVL51
	.4byte	0x5ac
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x8e8
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST39
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST40
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0x6e
	.4byte	0x53
	.4byte	.LLST41
	.uleb128 0xe
	.4byte	.LVL53
	.4byte	0x608
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x926
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x72
	.4byte	0x53
	.4byte	.LLST42
	.uleb128 0xe
	.4byte	.LVL55
	.4byte	0x64e
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x963
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.4byte	0x53
	.4byte	.LLST43
	.uleb128 0xe
	.4byte	.LVL57
	.4byte	0x688
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0xac
	.4byte	0x53
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x9af
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0xb2e
	.4byte	0x99f
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL59
	.4byte	0xb47
	.uleb128 0xf
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0x9d
	.4byte	0x53
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0xa04
	.uleb128 0x18
	.4byte	0x9af
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0x9fa
	.uleb128 0xe
	.4byte	.LVL60
	.4byte	0xb0c
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL61
	.4byte	0x963
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9
	.4byte	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sbrk_top
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF92
	.byte	0x6
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.4byte	0xa7a
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xaa1
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0xa9
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xac8
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x341
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF82
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xaef
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF83
	.byte	0x6
	.byte	0xf
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xb0c
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF84
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0xa9
	.byte	0x1
	.4byte	0xb2e
	.uleb128 0x1d
	.4byte	0xa9
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF85
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0xb47
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF93
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x53
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-1-.Ltext0
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
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-1-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-1-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51-1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-1-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
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
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/m32r-elf/4.7.2/../../../../m3"
	.ascii	"2r-elf/include"
	.byte	0
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/m32r-elf/4.7.2/../../../../m3"
	.ascii	"2r-elf/include/sys"
	.byte	0
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/m32r-elf/4.7.2/include"
	.byte	0
	.byte	0
	.string	"m32r-elf.c"
	.uleb128 0
	.uleb128 0
	.uleb128 0
	.string	"stddef.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.string	"sys/_types.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"sys/types.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"sys/stat.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"syscall.h"
	.uleb128 0
	.uleb128 0
	.uleb128 0
	.string	"string.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdio.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdlib.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x27
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x19
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
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
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
	.byte	0x1b
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
	.byte	0x19
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
	.byte	0x19
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x19
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x4b
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
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"printf"
.LASF13:
	.string	"__gid_t"
.LASF83:
	.string	"__r_close"
.LASF8:
	.string	"size_t"
.LASF54:
	.string	"write"
.LASF56:
	.string	"close"
.LASF47:
	.string	"path"
.LASF7:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF89:
	.string	"stat"
.LASF52:
	.string	"_exit"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF81:
	.string	"__r_write"
.LASF25:
	.string	"st_ino"
.LASF10:
	.string	"long int"
.LASF66:
	.string	"_open"
.LASF69:
	.string	"_lseek"
.LASF68:
	.string	"_fstat"
.LASF23:
	.string	"nlink_t"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF62:
	.string	"incr"
.LASF11:
	.string	"__dev_t"
.LASF28:
	.string	"st_uid"
.LASF33:
	.string	"st_spare1"
.LASF35:
	.string	"st_spare2"
.LASF37:
	.string	"st_spare3"
.LASF40:
	.string	"st_spare4"
.LASF5:
	.string	"unsigned int"
.LASF67:
	.string	"_close"
.LASF0:
	.string	"long unsigned int"
.LASF60:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF43:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF87:
	.string	"m32r-elf.c"
.LASF76:
	.string	"_heap"
.LASF71:
	.string	"_isatty"
.LASF32:
	.string	"st_atime"
.LASF31:
	.string	"st_size"
.LASF65:
	.string	"_write"
.LASF26:
	.string	"st_mode"
.LASF75:
	.string	"bss_value"
.LASF46:
	.string	"__open"
.LASF14:
	.string	"sizetype"
.LASF55:
	.string	"open"
.LASF86:
	.string	"GNU C 4.7.2"
.LASF9:
	.string	"_off_t"
.LASF78:
	.string	"_bss_start"
.LASF19:
	.string	"dev_t"
.LASF16:
	.string	"time_t"
.LASF82:
	.string	"__r_open"
.LASF44:
	.string	"__read"
.LASF61:
	.string	"sbrk"
.LASF64:
	.string	"_read"
.LASF27:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF73:
	.string	"_startmain"
.LASF38:
	.string	"st_blksize"
.LASF79:
	.string	"_ebss"
.LASF51:
	.string	"__exit"
.LASF36:
	.string	"st_ctime"
.LASF80:
	.string	"__r_read"
.LASF93:
	.string	"exit"
.LASF74:
	.string	"data_value"
.LASF30:
	.string	"st_rdev"
.LASF90:
	.string	"old_top"
.LASF15:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF50:
	.string	"__close"
.LASF92:
	.string	"__r_exit"
.LASF42:
	.string	"buffer"
.LASF12:
	.string	"__uid_t"
.LASF59:
	.string	"offset"
.LASF29:
	.string	"st_gid"
.LASF91:
	.string	"_init"
.LASF84:
	.string	"memset"
.LASF58:
	.string	"lseek"
.LASF41:
	.string	"status"
.LASF22:
	.string	"mode_t"
.LASF24:
	.string	"st_dev"
.LASF77:
	.string	"sbrk_top"
.LASF45:
	.string	"__write"
.LASF48:
	.string	"flags"
.LASF57:
	.string	"fstat"
.LASF53:
	.string	"read"
.LASF88:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF72:
	.string	"main"
.LASF63:
	.string	"isatty"
.LASF34:
	.string	"st_mtime"
.LASF70:
	.string	"_sbrk"
.LASF17:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
