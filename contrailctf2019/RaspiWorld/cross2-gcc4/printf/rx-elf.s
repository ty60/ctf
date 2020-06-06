	.file	"rx-elf.c"
 ; GNU C (GCC) version 4.7.2 (rx-elf)
 ;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ; options passed:  -D ___FreeBSD___ -D ARCH="rx-elf" rx-elf.c
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
	.global	__exit
	.type	__exit, @function
__exit:
.LFB0:
.LM1:
.LVL0:
.LM2:
	bsr	___exit	 ;
.LVL1:
.LFE0:
	.size	__exit, .-__exit
	.global	_read
	.type	_read, @function
_read:
.LFB1:
.LM3:
.LVL2:
.LM4:
	bsr	___read	 ;
.LVL3:
.LM5:
	rts
.LFE1:
	.size	_read, .-_read
	.global	_write
	.type	_write, @function
_write:
.LFB2:
.LM6:
.LVL4:
.LM7:
	bsr	___write	 ;
.LVL5:
.LM8:
	rts
.LFE2:
	.size	_write, .-_write
	.global	_open
	.type	_open, @function
_open:
.LFB3:
.LM9:
.LVL6:
.LM10:
	bsr	___open	 ;
.LVL7:
.LM11:
	rts
.LFE3:
	.size	_open, .-_open
	.global	_close
	.type	_close, @function
_close:
.LFB4:
.LM12:
.LVL8:
.LM13:
	bsr	___close	 ;
.LVL9:
.LM14:
	rts
.LFE4:
	.size	_close, .-_close
	.global	_fstat
	.type	_fstat, @function
_fstat:
.LFB5:
.LM15:
.LVL10:
.LM16:
	mov.L	r2, r1	 ; sb,
.LVL11:
	mov.L	#0, r2	 ;,
.LVL12:
	mov.L	#60, r3	 ;,
	bsr	_memset	 ;
.LVL13:
.LM17:
	mov.L	#0, r1	 ;,
	rts
.LFE5:
	.size	_fstat, .-_fstat
	.global	_lseek
	.type	_lseek, @function
_lseek:
.LFB6:
.LM18:
.LVL14:
.LM19:
	mov.L	r2, r1	 ; offset,
.LVL15:
	rts
.LFE6:
	.size	_lseek, .-_lseek
	.global	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB7:
.LM20:
.LVL16:
.LM21:
	mov.L	#_sbrk_top, r4	 ;, tmp29
	mov.L	[r4], r14	 ; sbrk_top, old_top
.LVL17:
.LM22:
	add	r14, r1	 ; old_top, tmp31
.LVL18:
	mov.L	r1, [r4]	 ; tmp31, sbrk_top
.LM23:
	mov.L	r14, r1	 ; old_top,
	rts
.LFE7:
	.size	_sbrk, .-_sbrk
	.global	_isatty
	.type	_isatty, @function
_isatty:
.LFB8:
.LM24:
.LVL19:
.LM25:
	mov.L	#1, r1	 ;,
.LVL20:
	rts
.LFE8:
	.size	_isatty, .-_isatty
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
.LC1:
	.string	"rx-elf"
	.section P,"ax"
	.global	_main
	.type	_main, @function
_main:
.LFB11:
.LM26:
	sub	#12, r0	 ;,
.LCFI0:
.LM27:
	mov.L	#.LC0, [r0]	 ;,
	mov.L	#_data_value, r14	 ;, tmp26
	mov.L	[r14], r14	 ; data_value,
	mov.L	r14, 4[r0]	 ;,
	mov.L	#.LC1, 8[r0]	 ;,
	bsr	_printf	 ;
.LVL21:
.LM28:
	mov.L	#0, r1	 ;,
	bsr	_exit	 ;
.LVL22:
.LFE11:
	.size	_main, .-_main
	.global	__startmain
	.type	__startmain, @function
__startmain:
.LFB10:
.LM29:
	push.l	r7	 ;
.LCFI1:
.LBB4:
.LBB5:
.LM30:
	mov.L	#__bss_start, r1	 ;,
	mov.L	#0, r2	 ;,
	mov.L	#__ebss, r3	 ;, tmp30
	mov.L	#.LC2, r7	 ;,
	sub	[r7].L, r3	 ;,
	bsr	_memset	 ;
.LVL23:
.LBE5:
.LBE4:
.LM31:
	bsr	_main	 ;
.LVL24:
.LFE10:
	.size	__startmain, .-__startmain
	.global	_sbrk_top
	.section D,"aw",@progbits
	.p2align 2
	.balign 4
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_bss_value,4,4
	.global	_data_value
	.balign 4
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	0xabadface
	.section	.rodata.cst4,"aM",@progbits,4
	.balign 4
.LC2:
	.long	__bss_start
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x10
	.balign 4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x87
	.uleb128 0x1
	.balign 4
.LEFDE20:
	.section P,"ax"
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6ba
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x1
	.4byte	.LASF74
	.4byte	.LASF75
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
	.byte	0x8
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
	.4byte	.LASF76
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
	.4byte	.LASF58
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x260
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x5e0
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x2c9
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.4byte	0xa9
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x5f4
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x332
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0x332
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2f
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x616
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x338
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x3a3
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST7
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x33
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0x638
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x65a
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x436
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.4byte	0x53
	.4byte	.LLST11
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.4byte	0x436
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x672
	.uleb128 0xf
	.byte	0x1
	.byte	0x53
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x482
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.4byte	.LLST13
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x4bc
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x53
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4e
	.4byte	0xa9
	.byte	0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x70
	.sleb128 4
	.byte	0x1
	.4byte	0x4e8
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.4byte	0x53
	.4byte	.LLST15
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xac
	.4byte	0x53
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x52d
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x694
	.4byte	0x51d
	.uleb128 0xf
	.byte	0x2
	.byte	0x70
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x6ad
	.uleb128 0xf
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9d
	.4byte	0x53
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST17
	.byte	0x1
	.4byte	0x583
	.uleb128 0x18
	.4byte	0x52d
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xa7
	.4byte	0x579
	.uleb128 0xe
	.4byte	.LVL23
	.4byte	0x672
	.uleb128 0xf
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x4e8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9
	.4byte	0x53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_bss_value
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sbrk_top
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF79
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x5f4
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x616
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0xa9
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF68
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x638
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x332
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF69
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x65a
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF70
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x672
	.uleb128 0x1d
	.4byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF71
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.4byte	0xa9
	.byte	0x1
	.4byte	0x694
	.uleb128 0x1d
	.4byte	0xa9
	.uleb128 0x1d
	.4byte	0x53
	.uleb128 0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.4byte	0x53
	.byte	0x1
	.4byte	0x6ad
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF80
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
	.uleb128 0x6
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE10-.Ltext0
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
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/rx-elf/4.7.2/../../../../rx-e"
	.ascii	"lf/include"
	.byte	0
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/rx-elf/4.7.2/../../../../rx-e"
	.ascii	"lf/include/sys"
	.byte	0
	.ascii	"/usr/local/cross2-gcc4/lib/gcc/rx-elf/4.7.2/include"
	.byte	0
	.byte	0
	.string	"rx-elf.c"
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
	.byte	0x3d
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
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x18
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
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x19
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
	.byte	0x6d
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
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
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
.LASF72:
	.string	"printf"
.LASF13:
	.string	"__gid_t"
.LASF8:
	.string	"size_t"
.LASF45:
	.string	"write"
.LASF50:
	.string	"close"
.LASF47:
	.string	"path"
.LASF7:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF76:
	.string	"stat"
.LASF58:
	.string	"_exit"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"st_ino"
.LASF10:
	.string	"long int"
.LASF23:
	.string	"nlink_t"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF56:
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
.LASF0:
	.string	"long unsigned int"
.LASF54:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF43:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF52:
	.string	"lseek"
.LASF63:
	.string	"_heap"
.LASF32:
	.string	"st_atime"
.LASF31:
	.string	"st_size"
.LASF26:
	.string	"st_mode"
.LASF62:
	.string	"bss_value"
.LASF57:
	.string	"isatty"
.LASF14:
	.string	"sizetype"
.LASF46:
	.string	"open"
.LASF73:
	.string	"GNU C 4.7.2"
.LASF9:
	.string	"_off_t"
.LASF65:
	.string	"_bss_start"
.LASF19:
	.string	"dev_t"
.LASF16:
	.string	"time_t"
.LASF67:
	.string	"__read"
.LASF55:
	.string	"sbrk"
.LASF27:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF60:
	.string	"_startmain"
.LASF38:
	.string	"st_blksize"
.LASF66:
	.string	"_ebss"
.LASF79:
	.string	"__exit"
.LASF36:
	.string	"st_ctime"
.LASF80:
	.string	"exit"
.LASF61:
	.string	"data_value"
.LASF30:
	.string	"st_rdev"
.LASF77:
	.string	"old_top"
.LASF15:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF70:
	.string	"__close"
.LASF69:
	.string	"__open"
.LASF42:
	.string	"buffer"
.LASF12:
	.string	"__uid_t"
.LASF74:
	.string	"rx-elf.c"
.LASF53:
	.string	"offset"
.LASF29:
	.string	"st_gid"
.LASF78:
	.string	"_init"
.LASF71:
	.string	"memset"
.LASF41:
	.string	"status"
.LASF22:
	.string	"mode_t"
.LASF24:
	.string	"st_dev"
.LASF64:
	.string	"sbrk_top"
.LASF68:
	.string	"__write"
.LASF48:
	.string	"flags"
.LASF51:
	.string	"fstat"
.LASF44:
	.string	"read"
.LASF75:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF59:
	.string	"main"
.LASF34:
	.string	"st_mtime"
.LASF17:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
