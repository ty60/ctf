	.file	"rx-elf.c"
 ; GNU C (GCC) version 4.7.2 (rx-elf)
 ;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ; options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="rx-elf" rx-elf.c
 ; -auxbase-strip rx-elf.s -g -O -Wall -fno-builtin -fverbose-asm
 ; -fomit-frame-pointer
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
	.global	_exit
	.type	_exit, @function
_exit:
.LFB0:
.LM1:
.LVL0:
.LM2:
	bsr	___exit	 ;
.LVL1:
.LFE0:
	.size	_exit, .-_exit
	.global	_write1
	.type	_write1, @function
_write1:
.LFB1:
.LM3:
.LVL2:
	sub	#4, r0	 ;,
.LCFI0:
	mov.B	r2, [r0]	 ; c, c
.LM4:
	mov.L	r0, r2	 ;,
.LVL3:
	mov.L	#1, r3	 ;,
	bsr	___write	 ;
.LVL4:
.LM5:
	rtsd	#4	 ;
.LFE1:
	.size	_write1, .-_write1
	.global	_putchar
	.type	_putchar, @function
_putchar:
.LFB2:
.LM6:
.LVL5:
	push.l	r7	 ;
.LCFI1:
	mov.L	r2, r7	 ; c, c
.LM7:
	bsr	_write1	 ;
.LVL6:
.LM8:
	mov.L	r7, r1	 ; c,
	rtsd	#4, r7-r7
.LFE2:
	.size	_putchar, .-_putchar
	.global	_puts
	.type	_puts, @function
_puts:
.LFB3:
.LM9:
.LVL7:
	pushm	r7-r11
.LCFI2:
.LM10:
	mov.B	[r2], r14	 ; *str_2(D),
	movu.B	r14, r7	 ; D.944, D.944
	cmp	#0, r7	 ;, D.944
	beq	.L7	 ;,
	mov.L	r1, r10	 ; fd, fd
.LM11:
	add	#1, r2, r7	 ;, str, ivtmp.15
.LM12:
	mov.L	#_putchar, r11	 ;, tmp53
.LVL8:
	.balign 2,3,1
.L8:
.LM13:
	mov.L	r10, r1	 ; fd,
	movu.B	r14, r2	 ; D.944,
	jsr	r11	 ; tmp53
.LVL9:
.LM14:
	mov.B	[r7+], r14	 ; MEM[base: D.977_19, offset: 0B],
	movu.B	r14, r4	 ; D.944, D.944
	cmp	#0, r4	 ;, D.944
	bne	.L8	 ;,
.LVL10:
	.balign 2,3,2
.L7:
.LM15:
	mov.L	#0, r1	 ;,
	rtsd	#20, r7-r11
.LFE3:
	.size	_puts, .-_puts
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0123456789abcdef"
	.section P,"ax"
	.global	_putxval
	.type	_putxval, @function
_putxval:
.LFB4:
.LM16:
.LVL11:
	add	#-20, r0	 ;,
.LCFI3:
.LVL12:
.LM17:
	mov.B	#0, 16[r0]	 ;, MEM[(char *)&buf + 16B]
.LVL13:
.LM18:
	cmp	#0, r2	 ;, value
	bne	.L12	 ;,
.LM19:
	cmp	#0, r3	 ;, column
	bne	.L12	 ;,
.LM20:
	mov.L	#1, r3	 ;, column
.LVL14:
	.balign 2,3,2
.L12:
.LM21:
	add	#14, r0, r14	 ;,, ivtmp.21
.LM22:
	mov.L	#.LC0, r5	 ;, tmp43
	bra	.L13	 ;
.LVL15:
.L15:
.LM23:
	mov.L	r2, r4	 ; value, tmp38
.LVL16:
	and	#15, r4	 ;, tmp38
	mov.B	[r4,r5], r4	 ;,
	mov.B	r4, 1[r14]	 ;, MEM[base: D.983_24, offset: 1B]
.LVL17:
.LM24:
	shlr	#4, r2	 ;, value
.LVL18:
.LM25:
	cmp	#0, r3	 ;, column
	beq	.L14	 ;,
.LVL19:
	.balign 2,3,1
.L17:
.LM26:
	sub	#1, r3	 ;, column
.LVL20:
	.balign 2,3,1
.L14:
	sub	#1, r14	 ;, ivtmp.21
.LVL21:
	.balign 2,3,2
.L13:
.LM27:
	add	#1, r14, r4	 ;, ivtmp.21, p
.LVL22:
.LM28:
	cmp	#0, r2	 ;, value
	bne	.L15	 ;,
.LM29:
	cmp	#0, r3	 ;, column
	beq	.L20	 ;,
.LM30:
	mov.B	#48, 1[r14]	 ;, MEM[base: D.984_5, offset: 1B]
.LVL23:
	bra	.L17	 ;
.LVL24:
.L20:
.LM31:
	add	#1, r4, r2	 ;, p,
.LVL25:
	bsr	_puts	 ;
.LVL26:
.LM32:
	mov.L	#0, r1	 ;,
	rtsd	#20	 ;
.LFE4:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.1
.LC1:
	.string	"Hello World! "
.LC2:
	.string	" This architecture is rx-elf\n"
	.section P,"ax"
	.global	_main
	.type	_main, @function
_main:
.LFB5:
.LM33:
	push.l	r7	 ;
.LCFI4:
.LVL27:
.LM34:
	mov.L	#_puts, r7	 ;, tmp27
	mov.L	#1, r1	 ;,
	mov.L	#.LC1, r2	 ;,
	jsr	r7	 ; tmp27
.LVL28:
.LM35:
	mov.L	#1, r1	 ;,
	mov.L	#_data_value, r14	 ;, tmp28
	mov.L	[r14], r2	 ; data_value,
	mov.L	#0, r3	 ;,
	bsr	_putxval	 ;
.LVL29:
.LM36:
	mov.L	#1, r1	 ;,
	mov.L	#.LC2, r2	 ;,
	jsr	r7	 ; tmp27
.LVL30:
.LM37:
	mov.L	#0, r1	 ;,
	bsr	_exit	 ;
.LVL31:
.LFE5:
	.size	_main, .-_main
	.comm	_bss_value,4,4
	.global	_data_value
	.section D,"aw",@progbits
	.p2align 2
	.balign 4
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	0xabadface
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
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x8
	.balign 4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x87
	.uleb128 0x1
	.balign 4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8a
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x6
	.balign 4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x18
	.balign 4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x87
	.uleb128 0x1
	.balign 4
.LEFDE10:
	.section P,"ax"
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x5f
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.4byte	0x5f
	.4byte	.LLST0
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	0x2a7
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.4byte	0x5f
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xbc
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.4byte	0x5f
	.4byte	.LLST2
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0xbc
	.4byte	.LLST3
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	0x2bb
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x70
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x5f
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x114
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.4byte	0x5f
	.4byte	.LLST5
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x5f
	.4byte	.LLST6
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	0x66
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	0x5f
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x15c
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.4byte	0x5f
	.4byte	.LLST8
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.4byte	0x15c
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LVL9
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x162
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x5f
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x1d8
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.4byte	0x5f
	.4byte	.LLST11
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x52
	.4byte	0x1d8
	.4byte	.LLST12
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x52
	.4byte	0x5f
	.4byte	.LLST13
	.uleb128 0xc
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x1df
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x15c
	.4byte	.LLST14
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x114
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xf
	.4byte	0x162
	.4byte	0x1ef
	.uleb128 0x10
	.4byte	0x1ef
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x68
	.4byte	0x5f
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x27c
	.uleb128 0x12
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x5f
	.byte	0x1
	.uleb128 0x13
	.4byte	.LVL28
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x239
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL29
	.4byte	0x169
	.4byte	0x251
	.uleb128 0x5
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.4byte	.LVL30
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL31
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.4byte	0x28e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x15
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4
	.4byte	0x5f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_bss_value
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x2bb
	.uleb128 0x17
	.4byte	0x5f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.4byte	0x5f
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x17
	.4byte	0x5f
	.uleb128 0x17
	.4byte	0x2dd
	.uleb128 0x17
	.4byte	0x5f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0x19
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
	.uleb128 0x6
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 15
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 8
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
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x1b
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
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x6
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
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x6
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x1a
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
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
.LASF18:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF4:
	.string	"puts"
.LASF12:
	.string	"main"
.LASF15:
	.string	"bss_value"
.LASF16:
	.string	"GNU C 4.7.2"
.LASF0:
	.string	"status"
.LASF20:
	.string	"__write"
.LASF9:
	.string	"long unsigned int"
.LASF2:
	.string	"write1"
.LASF14:
	.string	"data_value"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"__exit"
.LASF13:
	.string	"long int"
.LASF6:
	.string	"putxval"
.LASF17:
	.string	"rx-elf.c"
.LASF3:
	.string	"putchar"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"column"
.LASF7:
	.string	"value"
.LASF11:
	.string	"exit"
.LASF5:
	.string	"char"
	.ident	"GCC: (GNU) 4.7.2"
