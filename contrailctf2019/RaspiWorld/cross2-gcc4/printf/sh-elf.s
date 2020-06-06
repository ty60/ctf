	.file	"sh-elf.c"
	.text
! GNU C (GCC) version 4.7.2 (sh-elf)
!	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
! GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
! options passed:  -D ___FreeBSD___ -D ARCH="sh-elf" -D USE_SYSCALL_WRAPPER
! -D USE_UNDERLINE_WRAPPER -D USE_ORIGINAL_ERRNO sh-elf.c
! -auxbase-strip sh-elf.s -g -O -Wall -fno-builtin -fverbose-asm
! -fomit-frame-pointer
! options enabled:  -fauto-inc-dec -fbranch-count-reg
! -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
! -fdebug-types-section -fdefer-pop -fdelayed-branch
! -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
! -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
! -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
! -fif-conversion -fif-conversion2 -finline -finline-atomics
! -finline-functions-called-once -fipa-profile -fipa-pure-const
! -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
! -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
! -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
! -fpeephole -fprefetch-loop-arrays -freg-struct-return
! -fsched-critical-path-heuristic -fsched-dep-count-heuristic
! -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
! -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
! -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
! -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
! -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
! -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
! -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
! -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
! -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
! -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
! -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
! -fvar-tracking -fvar-tracking-assignments -fverbose-asm
! -fzero-initialized-in-bss -maccumulate-outgoing-args -mb

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 1
	.global	___exit
	.type	___exit, @function
___exit:
.LFB0:
	.file 1 "sh-elf.c"
	.loc 1 17 0
	.cfi_startproc
.LVL0:
	sts.l	pr,@-r15	!,
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r5	! status, status
.LVL1:
	.loc 1 18 0
	mov.l	.L2,r1	!, tmp161
	jsr	@r1	! tmp161
	mov	#0,r4	!,
.LVL2:
.L3:
	.align 2
.L2:
	.long	___r_exit
	.cfi_endproc
.LFE0:
	.size	___exit, .-___exit
	.align 1
	.global	___read
	.type	___read, @function
___read:
.LFB1:
	.loc 1 21 0
	.cfi_startproc
.LVL3:
	sts.l	pr,@-r15	!,
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! fd, fd
	mov	r5,r1	! buffer, buffer
	mov	r6,r7	! size, size
	.loc 1 22 0
	mov	#0,r4	!,
.LVL4:
	mov	r2,r5	! fd,
.LVL5:
	mov.l	.L5,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! buffer,
.LVL6:
	.loc 1 23 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L6:
	.align 2
.L5:
	.long	___r_read
	.cfi_endproc
.LFE1:
	.size	___read, .-___read
	.align 1
	.global	___write
	.type	___write, @function
___write:
.LFB2:
	.loc 1 25 0
	.cfi_startproc
.LVL7:
	sts.l	pr,@-r15	!,
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! fd, fd
	mov	r5,r1	! buffer, buffer
	mov	r6,r7	! size, size
	.loc 1 26 0
	mov	#0,r4	!,
.LVL8:
	mov	r2,r5	! fd,
.LVL9:
	mov.l	.L8,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! buffer,
.LVL10:
	.loc 1 27 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L9:
	.align 2
.L8:
	.long	___r_write
	.cfi_endproc
.LFE2:
	.size	___write, .-___write
	.align 1
	.global	___open
	.type	___open, @function
___open:
.LFB3:
	.loc 1 29 0
	.cfi_startproc
.LVL11:
	sts.l	pr,@-r15	!,
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! path, path
	mov	r5,r1	! flags, flags
	mov	r6,r7	! mode, mode
	.loc 1 30 0
	mov	#0,r4	!,
.LVL12:
	mov	r2,r5	! path,
.LVL13:
	mov.l	.L11,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! flags,
.LVL14:
	.loc 1 31 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L12:
	.align 2
.L11:
	.long	___r_open
	.cfi_endproc
.LFE3:
	.size	___open, .-___open
	.align 1
	.global	___close
	.type	___close, @function
___close:
.LFB4:
	.loc 1 33 0
	.cfi_startproc
.LVL15:
	sts.l	pr,@-r15	!,
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r5	! fd, fd
.LVL16:
	.loc 1 34 0
	mov.l	.L14,r0	!, tmp163
	jsr	@r0	! tmp163
	mov	#0,r4	!,
.LVL17:
	.loc 1 35 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L15:
	.align 2
.L14:
	.long	___r_close
	.cfi_endproc
.LFE4:
	.size	___close, .-___close
	.align 1
	.global	__exit
	.type	__exit, @function
__exit:
.LFB5:
	.loc 1 39 0
	.cfi_startproc
.LVL18:
	sts.l	pr,@-r15	!,
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 40 0
	mov.l	.L17,r1	!, tmp161
	jsr	@r1
	nop	! tmp161
.LVL19:
.L18:
	.align 2
.L17:
	.long	___exit
	.cfi_endproc
.LFE5:
	.size	__exit, .-__exit
	.align 1
	.global	_read
	.type	_read, @function
_read:
.LFB6:
	.loc 1 44 0
	.cfi_startproc
.LVL20:
	sts.l	pr,@-r15	!,
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 45 0
	mov.l	.L20,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL21:
	.loc 1 46 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L21:
	.align 2
.L20:
	.long	___read
	.cfi_endproc
.LFE6:
	.size	_read, .-_read
	.align 1
	.global	_write
	.type	_write, @function
_write:
.LFB7:
	.loc 1 48 0
	.cfi_startproc
.LVL22:
	sts.l	pr,@-r15	!,
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 49 0
	mov.l	.L23,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL23:
	.loc 1 50 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L24:
	.align 2
.L23:
	.long	___write
	.cfi_endproc
.LFE7:
	.size	_write, .-_write
	.align 1
	.global	_open
	.type	_open, @function
_open:
.LFB8:
	.loc 1 52 0
	.cfi_startproc
.LVL24:
	sts.l	pr,@-r15	!,
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 53 0
	mov.l	.L26,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL25:
	.loc 1 54 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L27:
	.align 2
.L26:
	.long	___open
	.cfi_endproc
.LFE8:
	.size	_open, .-_open
	.align 1
	.global	_close
	.type	_close, @function
_close:
.LFB9:
	.loc 1 56 0
	.cfi_startproc
.LVL26:
	sts.l	pr,@-r15	!,
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 57 0
	mov.l	.L29,r0	!, tmp163
	jsr	@r0
	nop	! tmp163
.LVL27:
	.loc 1 58 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L30:
	.align 2
.L29:
	.long	___close
	.cfi_endproc
.LFE9:
	.size	_close, .-_close
	.align 1
	.global	_fstat
	.type	_fstat, @function
_fstat:
.LFB10:
	.loc 1 63 0
	.cfi_startproc
.LVL28:
	sts.l	pr,@-r15	!,
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 64 0
	mov	r5,r4	! sb,
.LVL29:
	mov	#0,r5	!,
.LVL30:
	mov.l	.L32,r0	!, tmp163
	jsr	@r0	! tmp163
	mov	#60,r6	!,
.LVL31:
	.loc 1 66 0
	mov	#0,r0	!,
	lds.l   @r15+,pr	!,
	rts	
	nop
.L33:
	.align 2
.L32:
	.long	_memset
	.cfi_endproc
.LFE10:
	.size	_fstat, .-_fstat
	.align 1
	.global	_lseek
	.type	_lseek, @function
_lseek:
.LFB11:
	.loc 1 69 0
	.cfi_startproc
.LVL32:
	.loc 1 71 0
	rts	
	mov	r5,r0	! offset,
	.cfi_endproc
.LFE11:
	.size	_lseek, .-_lseek
	.align 1
	.global	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB12:
	.loc 1 77 0
	.cfi_startproc
.LVL33:
	.loc 1 79 0
	mov.l	.L36,r1	!, tmp165
	mov.l	@r1,r0	! sbrk_top, old_top
.LVL34:
	.loc 1 80 0
	add	r0,r4	! old_top, tmp167
.LVL35:
	.loc 1 82 0
	rts	
	mov.l	r4,@r1	! tmp167, sbrk_top
.L37:
	.align 2
.L36:
	.long	_sbrk_top
	.cfi_endproc
.LFE12:
	.size	_sbrk, .-_sbrk
	.align 1
	.global	_isatty
	.type	_isatty, @function
_isatty:
.LFB13:
	.loc 1 85 0
	.cfi_startproc
.LVL36:
	.loc 1 87 0
	rts	
	mov	#1,r0	!,
	.cfi_endproc
.LFE13:
	.size	_isatty, .-_isatty
	.align 1
	.global	__read
	.type	__read, @function
__read:
.LFB14:
	.loc 1 91 0
	.cfi_startproc
.LVL37:
	sts.l	pr,@-r15	!,
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 92 0
	mov.l	.L40,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL38:
	.loc 1 93 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L41:
	.align 2
.L40:
	.long	_read
	.cfi_endproc
.LFE14:
	.size	__read, .-__read
	.align 1
	.global	__write
	.type	__write, @function
__write:
.LFB15:
	.loc 1 95 0
	.cfi_startproc
.LVL39:
	sts.l	pr,@-r15	!,
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 96 0
	mov.l	.L43,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL40:
	.loc 1 97 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L44:
	.align 2
.L43:
	.long	_write
	.cfi_endproc
.LFE15:
	.size	__write, .-__write
	.align 1
	.global	__open
	.type	__open, @function
__open:
.LFB16:
	.loc 1 99 0
	.cfi_startproc
.LVL41:
	sts.l	pr,@-r15	!,
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 100 0
	mov.l	.L46,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL42:
	.loc 1 101 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L47:
	.align 2
.L46:
	.long	_open
	.cfi_endproc
.LFE16:
	.size	__open, .-__open
	.align 1
	.global	__close
	.type	__close, @function
__close:
.LFB17:
	.loc 1 103 0
	.cfi_startproc
.LVL43:
	sts.l	pr,@-r15	!,
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 104 0
	mov.l	.L49,r0	!, tmp163
	jsr	@r0
	nop	! tmp163
.LVL44:
	.loc 1 105 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L50:
	.align 2
.L49:
	.long	_close
	.cfi_endproc
.LFE17:
	.size	__close, .-__close
	.align 1
	.global	__fstat
	.type	__fstat, @function
__fstat:
.LFB18:
	.loc 1 107 0
	.cfi_startproc
.LVL45:
	sts.l	pr,@-r15	!,
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 108 0
	mov.l	.L52,r0	!, tmp164
	jsr	@r0
	nop	! tmp164
.LVL46:
	.loc 1 109 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L53:
	.align 2
.L52:
	.long	_fstat
	.cfi_endproc
.LFE18:
	.size	__fstat, .-__fstat
	.align 1
	.global	__lseek
	.type	__lseek, @function
__lseek:
.LFB19:
	.loc 1 111 0
	.cfi_startproc
.LVL47:
	sts.l	pr,@-r15	!,
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 112 0
	mov.l	.L55,r0	!, tmp165
	jsr	@r0
	nop	! tmp165
.LVL48:
	.loc 1 113 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L56:
	.align 2
.L55:
	.long	_lseek
	.cfi_endproc
.LFE19:
	.size	__lseek, .-__lseek
	.align 1
	.global	__sbrk
	.type	__sbrk, @function
__sbrk:
.LFB20:
	.loc 1 115 0
	.cfi_startproc
.LVL49:
	sts.l	pr,@-r15	!,
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 116 0
	mov.l	.L58,r0	!, tmp163
	jsr	@r0
	nop	! tmp163
.LVL50:
	.loc 1 117 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L59:
	.align 2
.L58:
	.long	_sbrk
	.cfi_endproc
.LFE20:
	.size	__sbrk, .-__sbrk
	.align 1
	.global	__isatty
	.type	__isatty, @function
__isatty:
.LFB21:
	.loc 1 119 0
	.cfi_startproc
.LVL51:
	sts.l	pr,@-r15	!,
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 120 0
	mov.l	.L61,r0	!, tmp163
	jsr	@r0
	nop	! tmp163
.LVL52:
	.loc 1 121 0
	lds.l   @r15+,pr	!,
	rts	
	nop
.L62:
	.align 2
.L61:
	.long	_isatty
	.cfi_endproc
.LFE21:
	.size	__isatty, .-__isatty
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
	.align 2
.LC1:
	.string	"sh-elf"
	.text
	.align 1
	.global	_main
	.type	_main, @function
_main:
.LFB24:
	.loc 1 173 0
	.cfi_startproc
	sts.l	pr,@-r15	!,
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 174 0
	mov.l	.L64,r4	!,
	mov.l	.L65,r1	!, tmp163
	mov.l	.L66,r6	!,
	mov.l	.L67,r0	!, tmp165
	jsr	@r0	! tmp165
	mov.l	@r1,r5	! data_value,
.LVL53:
	.loc 1 175 0
	mov.l	.L68,r1	!, tmp166
	jsr	@r1	! tmp166
	mov	#0,r4	!,
.LVL54:
.L69:
	.align 2
.L64:
	.long	.LC0
.L65:
	.long	_data_value
.L66:
	.long	.LC1
.L67:
	.long	_printf
.L68:
	.long	_exit
	.cfi_endproc
.LFE24:
	.size	_main, .-_main
	.align 1
	.global	__startmain
	.type	__startmain, @function
__startmain:
.LFB23:
	.loc 1 166 0
	.cfi_startproc
	sts.l	pr,@-r15	!,
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
.LBB4:
.LBB5:
	.loc 1 159 0
	mov.l	.L71,r1	!, tmp165
	mov	r1,r4	! tmp165,
	mov	#0,r5	!,
	mov.l	.L72,r6	!, tmp167
	mov.l	.L73,r0	!, tmp169
	jsr	@r0	! tmp169
	sub	r1,r6	! tmp165,
.LVL55:
.LBE5:
.LBE4:
	.loc 1 168 0
	mov.l	.L74,r0	!, tmp170
	jsr	@r0
	nop	! tmp170
.LVL56:
.L75:
	.align 2
.L71:
	.long	__bss_start
.L72:
	.long	__ebss
.L73:
	.long	_memset
.L74:
	.long	_main
	.cfi_endproc
.LFE23:
	.size	__startmain, .-__startmain
	.global	_sbrk_top
	.data
	.align 2
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_errno,4,4
	.comm	_bss_value,4,4
	.global	_data_value
	.align 2
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.text
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/sh-elf/4.7.2/../../../../sh-elf/include/sys/_types.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/sh-elf/4.7.2/../../../../sh-elf/include/sys/types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/sh-elf/4.7.2/../../../../sh-elf/include/sys/stat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.ualong	0xa6e
	.uaword	0x2
	.ualong	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ualong	.LASF80
	.byte	0x1
	.ualong	.LASF81
	.ualong	.LASF82
	.ualong	.Ltext0
	.ualong	.Letext0
	.ualong	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ualong	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ualong	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ualong	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ualong	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ualong	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ualong	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ualong	.LASF6
	.uleb128 0x4
	.ualong	.LASF8
	.byte	0x2
	.byte	0x10
	.ualong	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ualong	.LASF7
	.uleb128 0x4
	.ualong	.LASF9
	.byte	0x2
	.byte	0x18
	.ualong	0x3a
	.uleb128 0x4
	.ualong	.LASF10
	.byte	0x2
	.byte	0x1d
	.ualong	0x41
	.uleb128 0x4
	.ualong	.LASF11
	.byte	0x2
	.byte	0x20
	.ualong	0x41
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ualong	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ualong	.LASF13
	.uleb128 0x6
	.byte	0x4
	.ualong	0xa6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ualong	.LASF14
	.uleb128 0x6
	.byte	0x4
	.ualong	0xb3
	.uleb128 0x7
	.ualong	0xa6
	.uleb128 0x4
	.ualong	.LASF15
	.byte	0x3
	.byte	0x6e
	.ualong	0x68
	.uleb128 0x4
	.ualong	.LASF16
	.byte	0x3
	.byte	0x86
	.ualong	0x41
	.uleb128 0x4
	.ualong	.LASF17
	.byte	0x3
	.byte	0xa3
	.ualong	0x5d
	.uleb128 0x4
	.ualong	.LASF18
	.byte	0x3
	.byte	0xa4
	.ualong	0x6f
	.uleb128 0x4
	.ualong	.LASF19
	.byte	0x3
	.byte	0xa5
	.ualong	0x7a
	.uleb128 0x4
	.ualong	.LASF20
	.byte	0x3
	.byte	0xa6
	.ualong	0x85
	.uleb128 0x4
	.ualong	.LASF21
	.byte	0x3
	.byte	0xc4
	.ualong	0x25
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0x3
	.byte	0xc9
	.ualong	0x41
	.uleb128 0x8
	.ualong	.LASF83
	.byte	0x3c
	.byte	0x4
	.byte	0x19
	.ualong	0x20b
	.uleb128 0x9
	.ualong	.LASF23
	.byte	0x4
	.byte	0x1b
	.ualong	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ualong	.LASF24
	.byte	0x4
	.byte	0x1c
	.ualong	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.ualong	.LASF25
	.byte	0x4
	.byte	0x1d
	.ualong	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.ualong	.LASF26
	.byte	0x4
	.byte	0x1e
	.ualong	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.ualong	.LASF27
	.byte	0x4
	.byte	0x1f
	.ualong	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.ualong	.LASF28
	.byte	0x4
	.byte	0x20
	.ualong	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ualong	.LASF29
	.byte	0x4
	.byte	0x21
	.ualong	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.ualong	.LASF30
	.byte	0x4
	.byte	0x22
	.ualong	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ualong	.LASF31
	.byte	0x4
	.byte	0x30
	.ualong	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.ualong	.LASF32
	.byte	0x4
	.byte	0x31
	.ualong	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.ualong	.LASF33
	.byte	0x4
	.byte	0x32
	.ualong	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.ualong	.LASF34
	.byte	0x4
	.byte	0x33
	.ualong	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.ualong	.LASF35
	.byte	0x4
	.byte	0x34
	.ualong	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.ualong	.LASF36
	.byte	0x4
	.byte	0x35
	.ualong	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.ualong	.LASF37
	.byte	0x4
	.byte	0x36
	.ualong	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.ualong	.LASF38
	.byte	0x4
	.byte	0x37
	.ualong	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.ualong	.LASF39
	.byte	0x4
	.byte	0x38
	.ualong	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.ualong	0x68
	.ualong	0x21b
	.uleb128 0xb
	.ualong	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ualong	.LASF50
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.ualong	.LFB0
	.ualong	.LFE0
	.ualong	.LLST0
	.byte	0x1
	.ualong	0x257
	.uleb128 0xd
	.ualong	.LASF40
	.byte	0x1
	.byte	0x10
	.ualong	0x48
	.ualong	.LLST1
	.uleb128 0xe
	.ualong	.LVL2
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF43
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB1
	.ualong	.LFE1
	.ualong	.LLST2
	.byte	0x1
	.ualong	0x2c2
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x14
	.ualong	0x48
	.ualong	.LLST3
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x14
	.ualong	0x97
	.ualong	.LLST4
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x14
	.ualong	0x48
	.ualong	.LLST5
	.uleb128 0xe
	.ualong	.LVL6
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF44
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB2
	.ualong	.LFE2
	.ualong	.LLST6
	.byte	0x1
	.ualong	0x32d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x18
	.ualong	0x48
	.ualong	.LLST7
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x18
	.ualong	0x32d
	.ualong	.LLST8
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x18
	.ualong	0x48
	.ualong	.LLST9
	.uleb128 0xe
	.ualong	.LVL10
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.ualong	0x333
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF45
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB3
	.ualong	.LFE3
	.ualong	.LLST10
	.byte	0x1
	.ualong	0x3a0
	.uleb128 0xd
	.ualong	.LASF46
	.byte	0x1
	.byte	0x1c
	.ualong	0xad
	.ualong	.LLST11
	.uleb128 0xd
	.ualong	.LASF47
	.byte	0x1
	.byte	0x1c
	.ualong	0x48
	.ualong	.LLST12
	.uleb128 0xd
	.ualong	.LASF48
	.byte	0x1
	.byte	0x1c
	.ualong	0x48
	.ualong	.LLST13
	.uleb128 0xe
	.ualong	.LVL14
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF49
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB4
	.ualong	.LFE4
	.ualong	.LLST14
	.byte	0x1
	.ualong	0x3df
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x20
	.ualong	0x48
	.ualong	.LLST15
	.uleb128 0xe
	.ualong	.LVL17
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ualong	.LASF51
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.ualong	.LFB5
	.ualong	.LFE5
	.ualong	.LLST16
	.byte	0x1
	.ualong	0x41c
	.uleb128 0xd
	.ualong	.LASF40
	.byte	0x1
	.byte	0x26
	.ualong	0x48
	.ualong	.LLST17
	.uleb128 0x13
	.ualong	.LVL19
	.byte	0x5
	.byte	0x3
	.ualong	___exit
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF52
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB6
	.ualong	.LFE6
	.ualong	.LLST18
	.byte	0x1
	.ualong	0x488
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.ualong	0x48
	.ualong	.LLST19
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x2b
	.ualong	0x97
	.ualong	.LLST20
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x2b
	.ualong	0x48
	.ualong	.LLST21
	.uleb128 0x13
	.ualong	.LVL21
	.byte	0x5
	.byte	0x3
	.ualong	___read
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF53
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB7
	.ualong	.LFE7
	.ualong	.LLST22
	.byte	0x1
	.ualong	0x4f4
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.ualong	0x48
	.ualong	.LLST23
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x2f
	.ualong	0x32d
	.ualong	.LLST24
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x2f
	.ualong	0x48
	.ualong	.LLST25
	.uleb128 0x13
	.ualong	.LVL23
	.byte	0x5
	.byte	0x3
	.ualong	___write
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF54
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB8
	.ualong	.LFE8
	.ualong	.LLST26
	.byte	0x1
	.ualong	0x561
	.uleb128 0xd
	.ualong	.LASF46
	.byte	0x1
	.byte	0x33
	.ualong	0xad
	.ualong	.LLST27
	.uleb128 0xd
	.ualong	.LASF47
	.byte	0x1
	.byte	0x33
	.ualong	0x48
	.ualong	.LLST28
	.uleb128 0xd
	.ualong	.LASF48
	.byte	0x1
	.byte	0x33
	.ualong	0x48
	.ualong	.LLST29
	.uleb128 0x13
	.ualong	.LVL25
	.byte	0x5
	.byte	0x3
	.ualong	___open
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF55
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB9
	.ualong	.LFE9
	.ualong	.LLST30
	.byte	0x1
	.ualong	0x5a1
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.ualong	0x48
	.ualong	.LLST31
	.uleb128 0x13
	.ualong	.LVL27
	.byte	0x5
	.byte	0x3
	.ualong	___close
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF56
	.byte	0x4
	.byte	0x93
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB10
	.ualong	.LFE10
	.ualong	.LLST32
	.byte	0x1
	.ualong	0x5f4
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.ualong	0x48
	.ualong	.LLST33
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.ualong	0x5f4
	.ualong	.LLST34
	.uleb128 0xe
	.ualong	.LVL31
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.ualong	0x110
	.uleb128 0x14
	.byte	0x1
	.ualong	.LASF57
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB11
	.ualong	.LFE11
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.ualong	0x63e
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.ualong	0x48
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.ualong	.LASF58
	.byte	0x1
	.byte	0x44
	.ualong	0x48
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.ualong	.LASF59
	.byte	0x1
	.byte	0x44
	.ualong	0x48
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.ualong	.LASF60
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.ualong	0x97
	.ualong	.LFB12
	.ualong	.LFE12
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.ualong	0x678
	.uleb128 0xd
	.ualong	.LASF61
	.byte	0x1
	.byte	0x4c
	.ualong	0x48
	.ualong	.LLST35
	.uleb128 0x17
	.ualong	.LASF84
	.byte	0x1
	.byte	0x4e
	.ualong	0x97
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.ualong	.LASF62
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB13
	.ualong	.LFE13
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.ualong	0x6a2
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.ualong	0x48
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF63
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB14
	.ualong	.LFE14
	.ualong	.LLST36
	.byte	0x1
	.ualong	0x70e
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5a
	.ualong	0x48
	.ualong	.LLST37
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x5a
	.ualong	0x97
	.ualong	.LLST38
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x5a
	.ualong	0x48
	.ualong	.LLST39
	.uleb128 0x13
	.ualong	.LVL38
	.byte	0x5
	.byte	0x3
	.ualong	_read
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF64
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB15
	.ualong	.LFE15
	.ualong	.LLST40
	.byte	0x1
	.ualong	0x77a
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.ualong	0x48
	.ualong	.LLST41
	.uleb128 0xd
	.ualong	.LASF41
	.byte	0x1
	.byte	0x5e
	.ualong	0x32d
	.ualong	.LLST42
	.uleb128 0xd
	.ualong	.LASF42
	.byte	0x1
	.byte	0x5e
	.ualong	0x48
	.ualong	.LLST43
	.uleb128 0x13
	.ualong	.LVL40
	.byte	0x5
	.byte	0x3
	.ualong	_write
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF65
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB16
	.ualong	.LFE16
	.ualong	.LLST44
	.byte	0x1
	.ualong	0x7e7
	.uleb128 0xd
	.ualong	.LASF46
	.byte	0x1
	.byte	0x62
	.ualong	0xad
	.ualong	.LLST45
	.uleb128 0xd
	.ualong	.LASF47
	.byte	0x1
	.byte	0x62
	.ualong	0x48
	.ualong	.LLST46
	.uleb128 0xd
	.ualong	.LASF48
	.byte	0x1
	.byte	0x62
	.ualong	0x48
	.ualong	.LLST47
	.uleb128 0x13
	.ualong	.LVL42
	.byte	0x5
	.byte	0x3
	.ualong	_open
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF66
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB17
	.ualong	.LFE17
	.ualong	.LLST48
	.byte	0x1
	.ualong	0x827
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x66
	.ualong	0x48
	.ualong	.LLST49
	.uleb128 0x13
	.ualong	.LVL44
	.byte	0x5
	.byte	0x3
	.ualong	_close
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF67
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB18
	.ualong	.LFE18
	.ualong	.LLST50
	.byte	0x1
	.ualong	0x87c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.ualong	0x48
	.ualong	.LLST51
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x6a
	.ualong	0x5f4
	.ualong	.LLST52
	.uleb128 0x13
	.ualong	.LVL46
	.byte	0x5
	.byte	0x3
	.ualong	_fstat
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF68
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB19
	.ualong	.LFE19
	.ualong	.LLST53
	.byte	0x1
	.ualong	0x8e8
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.ualong	0x48
	.ualong	.LLST54
	.uleb128 0xd
	.ualong	.LASF58
	.byte	0x1
	.byte	0x6e
	.ualong	0x48
	.ualong	.LLST55
	.uleb128 0xd
	.ualong	.LASF59
	.byte	0x1
	.byte	0x6e
	.ualong	0x48
	.ualong	.LLST56
	.uleb128 0x13
	.ualong	.LVL48
	.byte	0x5
	.byte	0x3
	.ualong	_lseek
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF69
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.ualong	0x97
	.ualong	.LFB20
	.ualong	.LFE20
	.ualong	.LLST57
	.byte	0x1
	.ualong	0x929
	.uleb128 0xd
	.ualong	.LASF61
	.byte	0x1
	.byte	0x72
	.ualong	0x48
	.ualong	.LLST58
	.uleb128 0x13
	.ualong	.LVL50
	.byte	0x5
	.byte	0x3
	.ualong	_sbrk
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ualong	.LASF70
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.ualong	0x48
	.ualong	.LFB21
	.ualong	.LFE21
	.ualong	.LLST59
	.byte	0x1
	.ualong	0x969
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x76
	.ualong	0x48
	.ualong	.LLST60
	.uleb128 0x13
	.ualong	.LVL52
	.byte	0x5
	.byte	0x3
	.ualong	_isatty
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.ualong	.LASF71
	.byte	0x1
	.byte	0xac
	.ualong	0x48
	.ualong	.LFB24
	.ualong	.LFE24
	.ualong	.LLST61
	.byte	0x1
	.ualong	0x9ae
	.uleb128 0x19
	.ualong	.LVL53
	.ualong	0x9a2
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0x3
	.ualong	.LC1
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.ualong	.LC0
	.byte	0
	.uleb128 0xe
	.ualong	.LVL54
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ualong	.LASF85
	.byte	0x1
	.byte	0x9d
	.ualong	0x48
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.ualong	.LASF72
	.byte	0x1
	.byte	0xa5
	.ualong	0x48
	.ualong	.LFB23
	.ualong	.LFE23
	.ualong	.LLST62
	.byte	0x1
	.ualong	0xa02
	.uleb128 0x1b
	.ualong	0x9ae
	.ualong	.LBB4
	.ualong	.LBE4
	.byte	0x1
	.byte	0xa7
	.ualong	0x9f6
	.uleb128 0xe
	.ualong	.LVL55
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ualong	.LVL56
	.byte	0x5
	.byte	0x3
	.ualong	_main
	.byte	0
	.uleb128 0x1d
	.ualong	.LASF73
	.byte	0x1
	.byte	0x8
	.ualong	0x68
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_data_value
	.uleb128 0x1d
	.ualong	.LASF74
	.byte	0x1
	.byte	0x9
	.ualong	0x48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_bss_value
	.uleb128 0x1d
	.ualong	.LASF75
	.byte	0x1
	.byte	0xc
	.ualong	0x48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_errno
	.uleb128 0x1e
	.ualong	.LASF76
	.byte	0x1
	.byte	0x49
	.ualong	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ualong	.LASF77
	.byte	0x1
	.byte	0x4a
	.ualong	0xa0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_sbrk_top
	.uleb128 0x1e
	.ualong	.LASF78
	.byte	0x1
	.byte	0x9a
	.ualong	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.ualong	.LASF79
	.byte	0x1
	.byte	0x9b
	.ualong	0xa6
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.ualong	.LFB0-.Ltext0
	.ualong	.LCFI0-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI0-.Ltext0
	.ualong	.LFE0-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST1:
	.ualong	.LVL0-.Ltext0
	.ualong	.LVL1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL1-.Ltext0
	.ualong	.LVL2-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL2-1-.Ltext0
	.ualong	.LFE0-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST2:
	.ualong	.LFB1-.Ltext0
	.ualong	.LCFI1-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI1-.Ltext0
	.ualong	.LFE1-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST3:
	.ualong	.LVL3-.Ltext0
	.ualong	.LVL4-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL4-.Ltext0
	.ualong	.LVL6-1-.Ltext0
	.uaword	0x1
	.byte	0x52
	.ualong	.LVL6-1-.Ltext0
	.ualong	.LFE1-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST4:
	.ualong	.LVL3-.Ltext0
	.ualong	.LVL5-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL5-.Ltext0
	.ualong	.LVL6-1-.Ltext0
	.uaword	0x1
	.byte	0x51
	.ualong	.LVL6-1-.Ltext0
	.ualong	.LFE1-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST5:
	.ualong	.LVL3-.Ltext0
	.ualong	.LVL5-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL5-.Ltext0
	.ualong	.LVL6-1-.Ltext0
	.uaword	0x1
	.byte	0x57
	.ualong	.LVL6-1-.Ltext0
	.ualong	.LFE1-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST6:
	.ualong	.LFB2-.Ltext0
	.ualong	.LCFI2-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI2-.Ltext0
	.ualong	.LFE2-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST7:
	.ualong	.LVL7-.Ltext0
	.ualong	.LVL8-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL8-.Ltext0
	.ualong	.LVL10-1-.Ltext0
	.uaword	0x1
	.byte	0x52
	.ualong	.LVL10-1-.Ltext0
	.ualong	.LFE2-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST8:
	.ualong	.LVL7-.Ltext0
	.ualong	.LVL9-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL9-.Ltext0
	.ualong	.LVL10-1-.Ltext0
	.uaword	0x1
	.byte	0x51
	.ualong	.LVL10-1-.Ltext0
	.ualong	.LFE2-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST9:
	.ualong	.LVL7-.Ltext0
	.ualong	.LVL9-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL9-.Ltext0
	.ualong	.LVL10-1-.Ltext0
	.uaword	0x1
	.byte	0x57
	.ualong	.LVL10-1-.Ltext0
	.ualong	.LFE2-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST10:
	.ualong	.LFB3-.Ltext0
	.ualong	.LCFI3-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI3-.Ltext0
	.ualong	.LFE3-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST11:
	.ualong	.LVL11-.Ltext0
	.ualong	.LVL12-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL12-.Ltext0
	.ualong	.LVL14-1-.Ltext0
	.uaword	0x1
	.byte	0x52
	.ualong	.LVL14-1-.Ltext0
	.ualong	.LFE3-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST12:
	.ualong	.LVL11-.Ltext0
	.ualong	.LVL13-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL13-.Ltext0
	.ualong	.LVL14-1-.Ltext0
	.uaword	0x1
	.byte	0x51
	.ualong	.LVL14-1-.Ltext0
	.ualong	.LFE3-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST13:
	.ualong	.LVL11-.Ltext0
	.ualong	.LVL13-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL13-.Ltext0
	.ualong	.LVL14-1-.Ltext0
	.uaword	0x1
	.byte	0x57
	.ualong	.LVL14-1-.Ltext0
	.ualong	.LFE3-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST14:
	.ualong	.LFB4-.Ltext0
	.ualong	.LCFI4-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI4-.Ltext0
	.ualong	.LFE4-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST15:
	.ualong	.LVL15-.Ltext0
	.ualong	.LVL16-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL16-.Ltext0
	.ualong	.LVL17-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL17-1-.Ltext0
	.ualong	.LFE4-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST16:
	.ualong	.LFB5-.Ltext0
	.ualong	.LCFI5-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI5-.Ltext0
	.ualong	.LFE5-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST17:
	.ualong	.LVL18-.Ltext0
	.ualong	.LVL19-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL19-1-.Ltext0
	.ualong	.LFE5-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST18:
	.ualong	.LFB6-.Ltext0
	.ualong	.LCFI6-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI6-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST19:
	.ualong	.LVL20-.Ltext0
	.ualong	.LVL21-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL21-1-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST20:
	.ualong	.LVL20-.Ltext0
	.ualong	.LVL21-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL21-1-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST21:
	.ualong	.LVL20-.Ltext0
	.ualong	.LVL21-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL21-1-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST22:
	.ualong	.LFB7-.Ltext0
	.ualong	.LCFI7-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI7-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST23:
	.ualong	.LVL22-.Ltext0
	.ualong	.LVL23-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL23-1-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST24:
	.ualong	.LVL22-.Ltext0
	.ualong	.LVL23-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL23-1-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST25:
	.ualong	.LVL22-.Ltext0
	.ualong	.LVL23-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL23-1-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST26:
	.ualong	.LFB8-.Ltext0
	.ualong	.LCFI8-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI8-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST27:
	.ualong	.LVL24-.Ltext0
	.ualong	.LVL25-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL25-1-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST28:
	.ualong	.LVL24-.Ltext0
	.ualong	.LVL25-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL25-1-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST29:
	.ualong	.LVL24-.Ltext0
	.ualong	.LVL25-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL25-1-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST30:
	.ualong	.LFB9-.Ltext0
	.ualong	.LCFI9-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI9-.Ltext0
	.ualong	.LFE9-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST31:
	.ualong	.LVL26-.Ltext0
	.ualong	.LVL27-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL27-1-.Ltext0
	.ualong	.LFE9-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST32:
	.ualong	.LFB10-.Ltext0
	.ualong	.LCFI10-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI10-.Ltext0
	.ualong	.LFE10-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST33:
	.ualong	.LVL28-.Ltext0
	.ualong	.LVL29-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL29-.Ltext0
	.ualong	.LFE10-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST34:
	.ualong	.LVL28-.Ltext0
	.ualong	.LVL30-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL30-.Ltext0
	.ualong	.LVL31-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL31-1-.Ltext0
	.ualong	.LFE10-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST35:
	.ualong	.LVL33-.Ltext0
	.ualong	.LVL35-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL35-.Ltext0
	.ualong	.LFE12-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST36:
	.ualong	.LFB14-.Ltext0
	.ualong	.LCFI11-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI11-.Ltext0
	.ualong	.LFE14-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST37:
	.ualong	.LVL37-.Ltext0
	.ualong	.LVL38-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL38-1-.Ltext0
	.ualong	.LFE14-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST38:
	.ualong	.LVL37-.Ltext0
	.ualong	.LVL38-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL38-1-.Ltext0
	.ualong	.LFE14-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST39:
	.ualong	.LVL37-.Ltext0
	.ualong	.LVL38-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL38-1-.Ltext0
	.ualong	.LFE14-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST40:
	.ualong	.LFB15-.Ltext0
	.ualong	.LCFI12-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI12-.Ltext0
	.ualong	.LFE15-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST41:
	.ualong	.LVL39-.Ltext0
	.ualong	.LVL40-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL40-1-.Ltext0
	.ualong	.LFE15-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST42:
	.ualong	.LVL39-.Ltext0
	.ualong	.LVL40-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL40-1-.Ltext0
	.ualong	.LFE15-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST43:
	.ualong	.LVL39-.Ltext0
	.ualong	.LVL40-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL40-1-.Ltext0
	.ualong	.LFE15-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST44:
	.ualong	.LFB16-.Ltext0
	.ualong	.LCFI13-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI13-.Ltext0
	.ualong	.LFE16-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST45:
	.ualong	.LVL41-.Ltext0
	.ualong	.LVL42-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL42-1-.Ltext0
	.ualong	.LFE16-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST46:
	.ualong	.LVL41-.Ltext0
	.ualong	.LVL42-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL42-1-.Ltext0
	.ualong	.LFE16-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST47:
	.ualong	.LVL41-.Ltext0
	.ualong	.LVL42-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL42-1-.Ltext0
	.ualong	.LFE16-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST48:
	.ualong	.LFB17-.Ltext0
	.ualong	.LCFI14-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI14-.Ltext0
	.ualong	.LFE17-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST49:
	.ualong	.LVL43-.Ltext0
	.ualong	.LVL44-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL44-1-.Ltext0
	.ualong	.LFE17-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST50:
	.ualong	.LFB18-.Ltext0
	.ualong	.LCFI15-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI15-.Ltext0
	.ualong	.LFE18-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST51:
	.ualong	.LVL45-.Ltext0
	.ualong	.LVL46-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL46-1-.Ltext0
	.ualong	.LFE18-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST52:
	.ualong	.LVL45-.Ltext0
	.ualong	.LVL46-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL46-1-.Ltext0
	.ualong	.LFE18-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST53:
	.ualong	.LFB19-.Ltext0
	.ualong	.LCFI16-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI16-.Ltext0
	.ualong	.LFE19-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST54:
	.ualong	.LVL47-.Ltext0
	.ualong	.LVL48-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL48-1-.Ltext0
	.ualong	.LFE19-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST55:
	.ualong	.LVL47-.Ltext0
	.ualong	.LVL48-1-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL48-1-.Ltext0
	.ualong	.LFE19-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST56:
	.ualong	.LVL47-.Ltext0
	.ualong	.LVL48-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL48-1-.Ltext0
	.ualong	.LFE19-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST57:
	.ualong	.LFB20-.Ltext0
	.ualong	.LCFI17-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI17-.Ltext0
	.ualong	.LFE20-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST58:
	.ualong	.LVL49-.Ltext0
	.ualong	.LVL50-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL50-1-.Ltext0
	.ualong	.LFE20-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST59:
	.ualong	.LFB21-.Ltext0
	.ualong	.LCFI18-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI18-.Ltext0
	.ualong	.LFE21-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST60:
	.ualong	.LVL51-.Ltext0
	.ualong	.LVL52-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL52-1-.Ltext0
	.ualong	.LFE21-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST61:
	.ualong	.LFB24-.Ltext0
	.ualong	.LCFI19-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI19-.Ltext0
	.ualong	.LFE24-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
.LLST62:
	.ualong	.LFB23-.Ltext0
	.ualong	.LCFI20-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI20-.Ltext0
	.ualong	.LFE23-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	0
	.ualong	0
	.section	.debug_aranges,"",@progbits
	.ualong	0x1c
	.uaword	0x2
	.ualong	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uaword	0
	.uaword	0
	.ualong	.Ltext0
	.ualong	.Letext0-.Ltext0
	.ualong	0
	.ualong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"__gid_t"
.LASF53:
	.string	"write"
.LASF55:
	.string	"close"
.LASF46:
	.string	"path"
.LASF6:
	.string	"long long unsigned int"
.LASF38:
	.string	"st_blocks"
.LASF83:
	.string	"stat"
.LASF51:
	.string	"_exit"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF24:
	.string	"st_ino"
.LASF7:
	.string	"long int"
.LASF65:
	.string	"_open"
.LASF68:
	.string	"_lseek"
.LASF67:
	.string	"_fstat"
.LASF71:
	.string	"main"
.LASF22:
	.string	"nlink_t"
.LASF17:
	.string	"off_t"
.LASF20:
	.string	"gid_t"
.LASF61:
	.string	"incr"
.LASF9:
	.string	"__dev_t"
.LASF27:
	.string	"st_uid"
.LASF32:
	.string	"st_spare1"
.LASF34:
	.string	"st_spare2"
.LASF36:
	.string	"st_spare3"
.LASF39:
	.string	"st_spare4"
.LASF0:
	.string	"unsigned int"
.LASF66:
	.string	"_close"
.LASF13:
	.string	"long unsigned int"
.LASF59:
	.string	"whence"
.LASF19:
	.string	"uid_t"
.LASF42:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF57:
	.string	"lseek"
.LASF76:
	.string	"_heap"
.LASF70:
	.string	"_isatty"
.LASF31:
	.string	"st_atime"
.LASF75:
	.string	"errno"
.LASF30:
	.string	"st_size"
.LASF64:
	.string	"_write"
.LASF25:
	.string	"st_mode"
.LASF74:
	.string	"bss_value"
.LASF45:
	.string	"__open"
.LASF12:
	.string	"sizetype"
.LASF54:
	.string	"open"
.LASF80:
	.string	"GNU C 4.7.2"
.LASF8:
	.string	"_off_t"
.LASF78:
	.string	"_bss_start"
.LASF18:
	.string	"dev_t"
.LASF15:
	.string	"time_t"
.LASF43:
	.string	"__read"
.LASF60:
	.string	"sbrk"
.LASF63:
	.string	"_read"
.LASF26:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"short int"
.LASF72:
	.string	"_startmain"
.LASF37:
	.string	"st_blksize"
.LASF79:
	.string	"_ebss"
.LASF50:
	.string	"__exit"
.LASF35:
	.string	"st_ctime"
.LASF73:
	.string	"data_value"
.LASF29:
	.string	"st_rdev"
.LASF84:
	.string	"old_top"
.LASF14:
	.string	"char"
.LASF48:
	.string	"mode"
.LASF49:
	.string	"__close"
.LASF41:
	.string	"buffer"
.LASF10:
	.string	"__uid_t"
.LASF58:
	.string	"offset"
.LASF28:
	.string	"st_gid"
.LASF85:
	.string	"_init"
.LASF40:
	.string	"status"
.LASF21:
	.string	"mode_t"
.LASF23:
	.string	"st_dev"
.LASF77:
	.string	"sbrk_top"
.LASF44:
	.string	"__write"
.LASF47:
	.string	"flags"
.LASF56:
	.string	"fstat"
.LASF52:
	.string	"read"
.LASF82:
	.string	"/home/hiroaki/cross2-gcc4/printf"
.LASF81:
	.string	"sh-elf.c"
.LASF62:
	.string	"isatty"
.LASF33:
	.string	"st_mtime"
.LASF69:
	.string	"_sbrk"
.LASF16:
	.string	"ino_t"
	.ident	"GCC: (GNU) 4.7.2"
