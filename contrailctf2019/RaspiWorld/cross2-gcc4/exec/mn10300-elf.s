	.file	"mn10300-elf.c"
# GNU C (GCC) version 4.7.2 (mn10300-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="mn10300-elf"
# -D USE_SYSCALL_WRAPPER mn10300-elf.c -auxbase-strip mn10300-elf.s -g -O
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
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
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
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss -mliw
# -mmult-bug -mreturn-pointer-on-d0 -msetlb

	.section .text
.Ltext0:
	.global ___exit
	.type	___exit, @function
___exit:
.LFB0:
	.file 1 "mn10300-elf.c"
	.loc 1 8 0
.LVL0:
	add -12,sp	#,
.LCFI0:
	mov d0,d1	# status, status
	.loc 1 9 0
	mov 0,d0	#,
.LVL1:
	call ___r_exit,[],0	#
.LVL2:
.LFE0:
	.size	___exit, .-___exit
	.global ___read
	.type	___read, @function
___read:
.LFB1:
	.loc 1 12 0
.LVL3:
	add -20,sp	#,
.LCFI1:
	mov d0,a0	# fd, fd
	.loc 1 13 0
	mov d1,(12,sp)	# buffer,
	mov (32,sp),d0	# size, size
.LVL4:
	mov d0,(16,sp)	# size,
	mov 0,d0	#,
	mov a0,d1	# fd,
.LVL5:
	call ___r_read,[],0	#
.LVL6:
	.loc 1 14 0
	ret [],20
.LFE1:
	.size	___read, .-___read
	.global ___write
	.type	___write, @function
___write:
.LFB2:
	.loc 1 16 0
.LVL7:
	add -20,sp	#,
.LCFI2:
	mov d0,a0	# fd, fd
	.loc 1 17 0
	mov d1,(12,sp)	# buffer,
	mov (32,sp),d0	# size, size
.LVL8:
	mov d0,(16,sp)	# size,
	mov 0,d0	#,
	mov a0,d1	# fd,
.LVL9:
	call ___r_write,[],0	#
.LVL10:
	.loc 1 18 0
	ret [],20
.LFE2:
	.size	___write, .-___write
	.global ___open
	.type	___open, @function
___open:
.LFB3:
	.loc 1 20 0
.LVL11:
	add -20,sp	#,
.LCFI3:
	mov d0,a0	# path, path
	.loc 1 21 0
	mov d1,(12,sp)	# flags,
	mov (32,sp),d0	# mode, mode
.LVL12:
	mov d0,(16,sp)	# mode,
	mov 0,d0	#,
	mov a0,d1	# path,
.LVL13:
	call ___r_open,[],0	#
.LVL14:
	.loc 1 22 0
	ret [],20
.LFE3:
	.size	___open, .-___open
	.global ___close
	.type	___close, @function
___close:
.LFB4:
	.loc 1 24 0
.LVL15:
	add -12,sp	#,
.LCFI4:
	mov d0,d1	# fd, fd
	.loc 1 25 0
	mov 0,d0	#,
.LVL16:
	call ___r_close,[],0	#
.LVL17:
	.loc 1 26 0
	ret [],12
.LFE4:
	.size	___close, .-___close
	.global _exit
	.type	_exit, @function
_exit:
.LFB5:
	.loc 1 30 0
.LVL18:
	add -12,sp	#,
.LCFI5:
	.loc 1 31 0
	call ___exit,[],0	#
.LVL19:
.LFE5:
	.size	_exit, .-_exit
	.global _write1
	.type	_write1, @function
_write1:
.LFB6:
	.loc 1 35 0
.LVL20:
	add -16,sp	#,
.LCFI6:
	movbu d1,(24,sp)	# c, c
	.loc 1 36 0
	mov 1,d1	#, tmp63
.LVL21:
	mov d1,(12,sp)	# tmp63,
	mov sp,a0	#,
	add 24,a0	#,
	mov a0,d1	#,
	call ___write,[],0	#
.LVL22:
	.loc 1 37 0
	ret [],16
.LFE6:
	.size	_write1, .-_write1
	.global _putchar
	.type	_putchar, @function
_putchar:
.LFB7:
	.loc 1 40 0
.LVL23:
	movm [d2],(sp)
.LCFI7:
	add -12,sp	#,
.LCFI8:
	mov d1,d2	# c, c
	.loc 1 41 0
	extbu d1	#
.LVL24:
	call _write1,[],0	#
.LVL25:
	.loc 1 43 0
	mov d2,d0	# c,
	ret [d2],16
.LFE7:
	.size	_putchar, .-_putchar
	.global _puts
	.type	_puts, @function
_puts:
.LFB8:
	.loc 1 46 0
.LVL26:
	movm [d2,d3,a2],(sp)
.LCFI9:
	add -12,sp	#,
.LCFI10:
	mov d0,d3	# fd, fd
	mov d1,a2	# str, str
	.loc 1 47 0
	movbu (a2),d1	# *str_2(D),
.LVL27:
	mov d1,d0	# D.968,
.LVL28:
	extbu d0	# D.968
	cmp 0,d0	#, D.968
	beq .L10	#,
.L12:
	.loc 1 48 0 discriminator 2
	mov d3,d0	# fd,
	extbu d1	#
	call _putchar,[],0	#
.LVL29:
	.loc 1 47 0 discriminator 2
	inc a2	# str
.LVL30:
	movbu (a2),d1	# MEM[base: str_7, offset: 0B],
	mov d1,d2	# D.968,
	extbu d2	# D.968
	cmp 0,d2	#, D.968
	bne .L12	#,
.L10:
	.loc 1 50 0
	mov 0,d0	#,
	ret [d2,d3,a2],24
.LFE8:
	.size	_puts, .-_puts
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0123456789abcdef"
	.section .text
	.global _putxval
	.type	_putxval, @function
_putxval:
.LFB9:
	.loc 1 83 0
.LVL31:
	movm [d2,d3,a2,a3],(sp)
.LCFI11:
	add -32,sp	#,
.LCFI12:
	mov d0,a3	# fd, fd
	mov (60,sp),a1	# column, column
.LVL32:
	.loc 1 88 0
	mov 0,d2	#, tmp71
	movbu d2,(31,sp)	# tmp71, MEM[(char *)&buf + 16B]
.LVL33:
	.loc 1 90 0
	cmp 0,d1	#, value
	bne .L15	#,
	.loc 1 90 0 is_stmt 0 discriminator 1
	cmp 0,a1	#, column
	bne .L15	#,
	.loc 1 91 0 is_stmt 1
	mov 1,a1	#, column
.L15:
	.loc 1 82 0 discriminator 1
	mov sp,a0	#, ivtmp.28
	add 29,a0	#, ivtmp.28
	.loc 1 94 0 discriminator 1
	mov 48,d0	#, tmp80
.LVL34:
	mov .LC0,d3	#, tmp81
	jmp .L16	#
.LVL35:
.L18:
	.loc 1 94 0 is_stmt 0
	mov d1,d2	# value, tmp73
.LVL36:
	and 15,d2	#, tmp73
	mov d2,a2	# tmp73, tmp75
	add d3,a2	# tmp81, tmp75
	movbu (a2),d2	#,
	movbu d2,(1,a0)	# tmp76, MEM[base: D.1026_24, offset: 1B]
.LVL37:
	.loc 1 95 0 is_stmt 1
	lsr 4,d1	#, value
.LVL38:
	.loc 1 96 0
	cmp 0,a1	#, column
	beq .L17	#,
.LVL39:
.L20:
	.loc 1 96 0 is_stmt 0 discriminator 1
	add -1,a1	#, column
.LVL40:
.L17:
	add -1,a0	#, ivtmp.28
.LVL41:
.L16:
	.loc 1 82 0 is_stmt 1 discriminator 1
	mov a0,d2	# ivtmp.28, p
	inc d2	# p
.LVL42:
	.loc 1 93 0 discriminator 1
	cmp 0,d1	#, value
	bne .L18	#,
	.loc 1 93 0 is_stmt 0 discriminator 2
	cmp 0,a1	#, column
	beq .L23	#,
	.loc 1 94 0 is_stmt 1
	movbu d0,(1,a0)	# tmp80, MEM[base: D.1027_5, offset: 1B]
.LVL43:
	jmp .L20	#
.LVL44:
.L23:
	.loc 1 99 0
	mov a3,d0	# fd,
	mov d2,d1	# p,
.LVL45:
	inc d1	#
	call _puts,[],0	#
.LVL46:
	.loc 1 102 0
	mov 0,d0	#,
	ret [d2,d3,a2,a3],48
.LFE9:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.1
.LC1:
	.string	"Hello World! "
.LC2:
	.string	" This architecture is mn10300-elf\n"
	.section .text
	.global _main
	.type	_main, @function
_main:
.LFB10:
	.loc 1 105 0
	movm [d2],(sp)
.LCFI13:
	add -16,sp	#,
.LCFI14:
.LVL47:
	.loc 1 107 0
	mov 1,d0	#,
	mov .LC1,d1	#,
	call _puts,[],0	#
.LVL48:
	.loc 1 108 0
	mov 0,d2	#, tmp63
	mov d2,(12,sp)	# tmp63,
	mov 1,d0	#,
	mov (_data_value),d1	# data_value,
	call _putxval,[],0	#
.LVL49:
	.loc 1 109 0
	mov 1,d0	#,
	mov .LC2,d1	#,
	call _puts,[],0	#
.LVL50:
	.loc 1 110 0
	mov d2,d0	# tmp63,
	call _exit,[],0	#
.LVL51:
.LFE10:
	.size	_main, .-_main
	.comm	_bss_value,4,4
	.global _data_value
	.section .data
	.align 2
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x34
	.byte	0xc
	.uleb128 0x9
	.uleb128 0
	.byte	0xb4
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0xc
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x82
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0xc
	.byte	0x82
	.uleb128 0x1
	.byte	0x83
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI11-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x82
	.uleb128 0x1
	.byte	0x83
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x82
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x14
	.align 2
.LEFDE20:
	.section .text
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54e
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
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x7
	.4byte	0x65
	.4byte	.LLST1
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	0x4aa
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
	.4byte	0x65
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0xdc
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xb
	.4byte	0x65
	.4byte	.LLST3
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0xb
	.4byte	0xdc
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF2
	.byte	0x1
	.byte	0xb
	.4byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	0x4c3
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
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x14e
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xf
	.4byte	0x65
	.4byte	.LLST6
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0xf
	.4byte	0x14e
	.4byte	.LLST7
	.uleb128 0x9
	.4byte	.LASF2
	.byte	0x1
	.byte	0xf
	.4byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	0x4ea
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
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x154
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x1c6
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x13
	.4byte	0x1c6
	.4byte	.LLST9
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x13
	.4byte	0x65
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x1
	.byte	0x13
	.4byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4
	.4byte	.LVL14
	.4byte	0x511
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
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 16
	.byte	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0xd
	.4byte	0x1d1
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x21b
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x17
	.4byte	0x65
	.4byte	.LLST12
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	0x538
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
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x256
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.4byte	0x65
	.4byte	.LLST14
	.uleb128 0x4
	.4byte	.LVL19
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
	.4byte	0x65
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x2ad
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.4byte	0x65
	.4byte	.LLST16
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0x2ad
	.4byte	.LLST17
	.uleb128 0x4
	.4byte	.LVL22
	.4byte	0xde
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x79
	.sleb128 24
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x308
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.4byte	0x65
	.4byte	.LLST19
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x65
	.4byte	.LLST20
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	0x256
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x72
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
	.4byte	0x65
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x354
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.4byte	0x65
	.4byte	.LLST22
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.4byte	0x354
	.4byte	.LLST23
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	0x2b4
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x65
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x3d6
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.4byte	0x65
	.4byte	.LLST25
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0x52
	.4byte	0x3d6
	.4byte	.LLST26
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x1
	.byte	0x52
	.4byte	0x65
	.4byte	.LLST27
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x3dd
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x354
	.4byte	.LLST28
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	0x308
	.uleb128 0x5
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x72
	.sleb128 1
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x11
	.4byte	0x1d1
	.4byte	0x3ed
	.uleb128 0x12
	.4byte	0x3ed
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x68
	.4byte	0x65
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST29
	.byte	0x1
	.4byte	0x47f
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x65
	.byte	0x1
	.uleb128 0x15
	.4byte	.LVL48
	.4byte	0x308
	.4byte	0x438
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
	.4byte	.LVL49
	.4byte	0x35a
	.4byte	0x452
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.sleb128 12
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x308
	.4byte	0x46e
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
	.4byte	.LVL51
	.4byte	0x21b
	.uleb128 0x5
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3
	.4byte	0x491
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_data_value
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4
	.4byte	0x65
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_bss_value
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF29
	.byte	0x2
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.4byte	0x4c3
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.4byte	0x4ea
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0xdc
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF27
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.4byte	0x511
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x14e
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0xe
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.4byte	0x538
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x1c6
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x65
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF30
	.byte	0x2
	.byte	0xf
	.byte	0x1
	.4byte	0x65
	.byte	0x1
	.uleb128 0x18
	.4byte	0x65
	.uleb128 0x18
	.4byte	0x65
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
	.uleb128 0x6
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST1:
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
.LLST2:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x79
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
.LASF32:
	.string	"mn10300-elf.c"
.LASF7:
	.string	"flags"
.LASF8:
	.string	"mode"
.LASF29:
	.string	"__r_exit"
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
.LASF19:
	.string	"column"
.LASF10:
	.string	"__close"
.LASF30:
	.string	"__r_close"
.LASF22:
	.string	"main"
.LASF18:
	.string	"value"
.LASF12:
	.string	"exit"
.LASF27:
	.string	"__r_write"
.LASF1:
	.string	"buffer"
.LASF21:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.7.2"
