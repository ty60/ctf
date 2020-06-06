	.file	"sh-elf.c"
	.text
! GNU C (GCC) version 4.7.2 (sh-elf)
!	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
! GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
! options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="sh-elf"
! -D USE_SYSCALL_WRAPPER sh-elf.c -auxbase-strip sh-elf.s -g -O -Wall
! -fno-builtin -fverbose-asm -fomit-frame-pointer
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
	.loc 1 8 0
	.cfi_startproc
.LVL0:
	sts.l	pr,@-r15	!,
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r5	! status, status
.LVL1:
	.loc 1 9 0
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
	.loc 1 12 0
	.cfi_startproc
.LVL3:
	sts.l	pr,@-r15	!,
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! fd, fd
	mov	r5,r1	! buffer, buffer
	mov	r6,r7	! size, size
	.loc 1 13 0
	mov	#0,r4	!,
.LVL4:
	mov	r2,r5	! fd,
.LVL5:
	mov.l	.L5,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! buffer,
.LVL6:
	.loc 1 14 0
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
	.loc 1 16 0
	.cfi_startproc
.LVL7:
	sts.l	pr,@-r15	!,
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! fd, fd
	mov	r5,r1	! buffer, buffer
	mov	r6,r7	! size, size
	.loc 1 17 0
	mov	#0,r4	!,
.LVL8:
	mov	r2,r5	! fd,
.LVL9:
	mov.l	.L8,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! buffer,
.LVL10:
	.loc 1 18 0
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
	.loc 1 20 0
	.cfi_startproc
.LVL11:
	sts.l	pr,@-r15	!,
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r2	! path, path
	mov	r5,r1	! flags, flags
	mov	r6,r7	! mode, mode
	.loc 1 21 0
	mov	#0,r4	!,
.LVL12:
	mov	r2,r5	! path,
.LVL13:
	mov.l	.L11,r0	!, tmp165
	jsr	@r0	! tmp165
	mov	r1,r6	! flags,
.LVL14:
	.loc 1 22 0
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
	.loc 1 24 0
	.cfi_startproc
.LVL15:
	sts.l	pr,@-r15	!,
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	mov	r4,r5	! fd, fd
.LVL16:
	.loc 1 25 0
	mov.l	.L14,r0	!, tmp163
	jsr	@r0	! tmp163
	mov	#0,r4	!,
.LVL17:
	.loc 1 26 0
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
	.global	_exit
	.type	_exit, @function
_exit:
.LFB5:
	.loc 1 30 0
	.cfi_startproc
.LVL18:
	sts.l	pr,@-r15	!,
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	.loc 1 31 0
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
	.size	_exit, .-_exit
	.align 1
	.global	_write1
	.type	_write1, @function
_write1:
.LFB6:
	.loc 1 35 0
	.cfi_startproc
.LVL20:
	sts.l	pr,@-r15	!,
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -4
	add	#-4,r15	!,
.LCFI7:
	.cfi_def_cfa_offset 8
	mov.b	r5,@r15	! c, c
	.loc 1 36 0
	mov	r15,r5	!,
.LVL21:
	mov.l	.L20,r0	!, tmp167
	jsr	@r0	! tmp167
	mov	#1,r6	!,
.LVL22:
	.loc 1 37 0
	add	#4,r15	!,
	lds.l   @r15+,pr	!,
	rts	
	nop
.L21:
	.align 2
.L20:
	.long	___write
	.cfi_endproc
.LFE6:
	.size	_write1, .-_write1
	.align 1
	.global	_putchar
	.type	_putchar, @function
_putchar:
.LFB7:
	.loc 1 40 0
	.cfi_startproc
.LVL23:
	mov.l	r8,@-r15	!,
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	sts.l	pr,@-r15	!,
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r5,r8	! c, c
.LVL24:
	.loc 1 41 0
	mov.l	.L23,r0	!, tmp165
	jsr	@r0	! tmp165
	extu.b	r5,r5	! c,
.LVL25:
	.loc 1 43 0
	mov	r8,r0	! c,
	lds.l   @r15+,pr	!,
	mov.l   @r15+,r8	!,
.LVL26:
	rts	
	nop
.L24:
	.align 2
.L23:
	.long	_write1
	.cfi_endproc
.LFE7:
	.size	_putchar, .-_putchar
	.align 1
	.global	_puts
	.type	_puts, @function
_puts:
.LFB8:
	.loc 1 46 0
	.cfi_startproc
.LVL27:
	mov.l	r8,@-r15	!,
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	mov.l	r9,@-r15	!,
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 9, -8
	mov.l	r10,@-r15	!,
.LCFI12:
	.cfi_def_cfa_offset 12
	.cfi_offset 10, -12
	sts.l	pr,@-r15	!,
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -16
	mov	r4,r9	! fd, fd
	mov	r5,r8	! str, str
	.loc 1 47 0
	mov.b	@r5,r5	! *str_2(D), D.1000
.LVL28:
	tst	r5,r5	! D.1000
	bt	.L26	!
	.loc 1 45 0
	add	#1,r8	!, ivtmp.25
.LVL29:
	.loc 1 48 0
	mov.l	.L29,r10	!, tmp198
.LVL30:
.L27:
	.loc 1 48 0 is_stmt 0 discriminator 2
	jsr	@r10	! tmp198
	mov	r9,r4	! fd,
.LVL31:
	.loc 1 47 0 is_stmt 1 discriminator 2
	mov.b	@r8+,r5	! MEM[base: D.1057_19, offset: 0B], D.1000
	tst	r5,r5	! D.1000
	bf	.L27	!
.L26:
	.loc 1 50 0
	mov	#0,r0	!,
	lds.l   @r15+,pr	!,
	mov.l   @r15+,r10	!,
	mov.l   @r15+,r9	!,
.LVL32:
	mov.l   @r15+,r8	!,
	rts	
	nop
.L30:
	.align 2
.L29:
	.long	_putchar
	.cfi_endproc
.LFE8:
	.size	_puts, .-_puts
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"0123456789abcdef"
	.text
	.align 1
	.global	_putxval
	.type	_putxval, @function
_putxval:
.LFB9:
	.loc 1 83 0
	.cfi_startproc
.LVL33:
	mov.l	r8,@-r15	!,
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	sts.l	pr,@-r15	!,
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-20,r15	!,
.LCFI16:
	.cfi_def_cfa_offset 28
	mov	r5,r8	! value, value
.LVL34:
	.loc 1 88 0
	mov	#0,r2	!, tmp179
	mov	r15,r1	!, tmp178
	add	#16,r1	!, tmp178
	mov.b	r2,@r1	! tmp179, MEM[(char *)&buf + 16B]
.LVL35:
	.loc 1 90 0
	tst	r6,r6	! column
	bf	.L32	!
	tst	r5,r5	! value
	.loc 1 91 0
	movt	r1	! tmp208
	add	r1,r6	! tmp208, column
.LVL36:
.L32:
	.loc 1 88 0 discriminator 1
	mov	r15,r5	!, p
.LVL37:
	add	#15,r5	!, p
	.loc 1 94 0 discriminator 1
	mov.l	.L39,r7	!, tmp206
	.loc 1 93 0 discriminator 1
	bra	.L38	!
	mov	#-1,r2	!, tmp205
.LVL38:
	.align 1
.L35:
	.loc 1 94 0
	mov	#15,r3	!, tmp187
	and	r8,r3	! value, tmp187
	mov	r3,r0	! tmp187,
	mov.b	@(r0,r7),r3	!,
	mov.b	r3,@r5	! tmp188, MEM[base: p_3, offset: 0B]
	add	#-1,r5	!, p
.LVL39:
	.loc 1 95 0
	shlr2	r8	!, value
.LVL40:
	shlr2	r8	!, value
.LVL41:
	.loc 1 96 0
	tst	r1,r1	! D.994
	bt	.L38	!
	.loc 1 96 0 is_stmt 0 discriminator 1
	add	#-1,r6	!, column
.LVL42:
.L38:
	.loc 1 93 0 is_stmt 1 discriminator 1
	tst	r6,r6	! column
	negc	r2,r1	! tmp205, tmp190
	extu.b	r1,r1	! tmp190, D.994
	tst	r1,r1	! D.994
	bf	.L35	!
	tst	r8,r8	! value
	negc	r2,r3	! tmp205, tmp193
	extu.b	r3,r3	! tmp193, tmp195
	tst	r3,r3	! tmp195
	bf	.L35	!
.LVL43:
	.loc 1 99 0
	mov.l	.L40,r0	!, tmp197
	jsr	@r0	! tmp197
	add	#1,r5	!,
.LVL44:
	.loc 1 102 0
	mov	#0,r0	!,
	add	#20,r15	!,
	lds.l   @r15+,pr	!,
	mov.l   @r15+,r8	!,
.LVL45:
	rts	
	nop
.L41:
	.align 2
.L39:
	.long	.LC0
.L40:
	.long	_puts
	.cfi_endproc
.LFE9:
	.size	_putxval, .-_putxval
	.section	.rodata.str1.4
	.align 2
.LC1:
	.string	"Hello World! "
	.align 2
.LC2:
	.string	" This architecture is sh-elf\n"
	.text
	.align 1
	.global	_main
	.type	_main, @function
_main:
.LFB10:
	.loc 1 105 0
	.cfi_startproc
	mov.l	r8,@-r15	!,
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	sts.l	pr,@-r15	!,
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
.LVL46:
	.loc 1 107 0
	mov.l	.L43,r8	!, tmp164
	mov.l	.L44,r5	!,
	jsr	@r8	! tmp164
	mov	#1,r4	!,
.LVL47:
	.loc 1 108 0
	mov	#1,r4	!,
	mov.l	.L45,r1	!, tmp165
	mov.l	@r1,r5	! data_value,
	mov.l	.L46,r0	!, tmp166
	jsr	@r0	! tmp166
	mov	#0,r6	!,
.LVL48:
	.loc 1 109 0
	mov.l	.L47,r5	!,
	jsr	@r8	! tmp164
	mov	#1,r4	!,
.LVL49:
	.loc 1 110 0
	mov.l	.L48,r1	!, tmp169
	jsr	@r1	! tmp169
	mov	#0,r4	!,
.LVL50:
.L49:
	.align 2
.L43:
	.long	_puts
.L44:
	.long	.LC1
.L45:
	.long	_data_value
.L46:
	.long	_putxval
.L47:
	.long	.LC2
.L48:
	.long	_exit
	.cfi_endproc
.LFE10:
	.size	_main, .-_main
	.comm	_bss_value,4,4
	.global	_data_value
	.data
	.align 2
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.ualong	0x485
	.uaword	0x2
	.ualong	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ualong	.LASF26
	.byte	0x1
	.ualong	.LASF27
	.ualong	.LASF28
	.ualong	.Ltext0
	.ualong	.Letext0
	.ualong	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.ualong	.LASF11
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.ualong	.LFB0
	.ualong	.LFE0
	.ualong	.LLST0
	.byte	0x1
	.ualong	0x61
	.uleb128 0x3
	.ualong	.LASF0
	.byte	0x1
	.byte	0x7
	.ualong	0x61
	.ualong	.LLST1
	.uleb128 0x4
	.ualong	.LVL2
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
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
	.ualong	.LASF3
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB1
	.ualong	.LFE1
	.ualong	.LLST2
	.byte	0x1
	.ualong	0xd3
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xb
	.ualong	0x61
	.ualong	.LLST3
	.uleb128 0x3
	.ualong	.LASF1
	.byte	0x1
	.byte	0xb
	.ualong	0xd3
	.ualong	.LLST4
	.uleb128 0x3
	.ualong	.LASF2
	.byte	0x1
	.byte	0xb
	.ualong	0x61
	.ualong	.LLST5
	.uleb128 0x4
	.ualong	.LVL6
	.uleb128 0x5
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x5
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF4
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB2
	.ualong	.LFE2
	.ualong	.LLST6
	.byte	0x1
	.ualong	0x140
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0xf
	.ualong	0x61
	.ualong	.LLST7
	.uleb128 0x3
	.ualong	.LASF1
	.byte	0x1
	.byte	0xf
	.ualong	0x140
	.ualong	.LLST8
	.uleb128 0x3
	.ualong	.LASF2
	.byte	0x1
	.byte	0xf
	.ualong	0x61
	.ualong	.LLST9
	.uleb128 0x4
	.ualong	.LVL10
	.uleb128 0x5
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x5
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.ualong	0x146
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF5
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB3
	.ualong	.LFE3
	.ualong	.LLST10
	.byte	0x1
	.ualong	0x1b3
	.uleb128 0x3
	.ualong	.LASF6
	.byte	0x1
	.byte	0x13
	.ualong	0x1b3
	.ualong	.LLST11
	.uleb128 0x3
	.ualong	.LASF7
	.byte	0x1
	.byte	0x13
	.ualong	0x61
	.ualong	.LLST12
	.uleb128 0x3
	.ualong	.LASF8
	.byte	0x1
	.byte	0x13
	.ualong	0x61
	.ualong	.LLST13
	.uleb128 0x4
	.ualong	.LVL14
	.uleb128 0x5
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x5
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.ualong	0x1b9
	.uleb128 0xc
	.ualong	0x1be
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.ualong	.LASF9
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF10
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB4
	.ualong	.LFE4
	.ualong	.LLST14
	.byte	0x1
	.ualong	0x204
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x17
	.ualong	0x61
	.ualong	.LLST15
	.uleb128 0x4
	.ualong	.LVL17
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.ualong	.LASF12
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.ualong	.LFB5
	.ualong	.LFE5
	.ualong	.LLST16
	.byte	0x1
	.ualong	0x241
	.uleb128 0x3
	.ualong	.LASF0
	.byte	0x1
	.byte	0x1d
	.ualong	0x61
	.ualong	.LLST17
	.uleb128 0xe
	.ualong	.LVL19
	.byte	0x5
	.byte	0x3
	.ualong	___exit
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB6
	.ualong	.LFE6
	.ualong	.LLST18
	.byte	0x1
	.ualong	0x299
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.ualong	0x61
	.ualong	.LLST19
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.ualong	0x299
	.ualong	.LLST20
	.uleb128 0xe
	.ualong	.LVL22
	.byte	0x5
	.byte	0x3
	.ualong	___write
	.uleb128 0x5
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.ualong	.LASF14
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF15
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB7
	.ualong	.LFE7
	.ualong	.LLST21
	.byte	0x1
	.ualong	0x2f6
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.ualong	0x61
	.ualong	.LLST22
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.ualong	0x61
	.ualong	.LLST23
	.uleb128 0xe
	.ualong	.LVL25
	.byte	0x5
	.byte	0x3
	.ualong	_write1
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF16
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB8
	.ualong	.LFE8
	.ualong	.LLST24
	.byte	0x1
	.ualong	0x33e
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.ualong	0x61
	.ualong	.LLST25
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.ualong	0x33e
	.ualong	.LLST26
	.uleb128 0x4
	.ualong	.LVL31
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.ualong	0x1be
	.uleb128 0x7
	.byte	0x1
	.ualong	.LASF17
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.ualong	0x61
	.ualong	.LFB9
	.ualong	.LFE9
	.ualong	.LLST27
	.byte	0x1
	.ualong	0x3b5
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.ualong	0x61
	.ualong	.LLST28
	.uleb128 0x3
	.ualong	.LASF18
	.byte	0x1
	.byte	0x52
	.ualong	0x3b5
	.ualong	.LLST29
	.uleb128 0x3
	.ualong	.LASF19
	.byte	0x1
	.byte	0x52
	.ualong	0x61
	.ualong	.LLST30
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.ualong	0x3bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x55
	.ualong	0x33e
	.ualong	.LLST31
	.uleb128 0x11
	.ualong	.LVL44
	.byte	0x5
	.byte	0x3
	.ualong	_puts
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.ualong	.LASF20
	.uleb128 0x12
	.ualong	0x1be
	.ualong	0x3cc
	.uleb128 0x13
	.ualong	0x3cc
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.ualong	.LASF21
	.uleb128 0x14
	.byte	0x1
	.ualong	.LASF22
	.byte	0x1
	.byte	0x68
	.ualong	0x61
	.ualong	.LFB10
	.ualong	.LFE10
	.ualong	.LLST32
	.byte	0x1
	.ualong	0x45d
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.ualong	0x61
	.byte	0x1
	.uleb128 0x16
	.ualong	.LVL47
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.ualong	0x416
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x3
	.ualong	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.ualong	.LVL48
	.byte	0x5
	.byte	0x3
	.ualong	_putxval
	.ualong	0x430
	.uleb128 0x5
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.ualong	.LVL49
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.ualong	0x44b
	.uleb128 0x5
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x3
	.ualong	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.ualong	.LVL50
	.byte	0x5
	.byte	0x3
	.ualong	_exit
	.uleb128 0x5
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.ualong	.LASF24
	.byte	0x1
	.byte	0x3
	.ualong	0x46f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_data_value
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.ualong	.LASF23
	.uleb128 0x17
	.ualong	.LASF25
	.byte	0x1
	.byte	0x4
	.ualong	0x61
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.ualong	_bss_value
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.ualong	.LCFI7-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI7-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST19:
	.ualong	.LVL20-.Ltext0
	.ualong	.LVL22-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL22-1-.Ltext0
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
	.ualong	.LVL21-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL21-.Ltext0
	.ualong	.LFE6-.Ltext0
	.uaword	0x2
	.byte	0x91
	.sleb128 -8
	.ualong	0
	.ualong	0
.LLST21:
	.ualong	.LFB7-.Ltext0
	.ualong	.LCFI8-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI8-.Ltext0
	.ualong	.LCFI9-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI9-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	0
	.ualong	0
.LLST22:
	.ualong	.LVL23-.Ltext0
	.ualong	.LVL25-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL25-1-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST23:
	.ualong	.LVL23-.Ltext0
	.ualong	.LVL24-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL24-.Ltext0
	.ualong	.LVL26-.Ltext0
	.uaword	0x1
	.byte	0x58
	.ualong	.LVL26-.Ltext0
	.ualong	.LFE7-.Ltext0
	.uaword	0x1
	.byte	0x50
	.ualong	0
	.ualong	0
.LLST24:
	.ualong	.LFB8-.Ltext0
	.ualong	.LCFI10-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI10-.Ltext0
	.ualong	.LCFI11-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI11-.Ltext0
	.ualong	.LCFI12-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI12-.Ltext0
	.ualong	.LCFI13-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 12
	.ualong	.LCFI13-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 16
	.ualong	0
	.ualong	0
.LLST25:
	.ualong	.LVL27-.Ltext0
	.ualong	.LVL30-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL30-.Ltext0
	.ualong	.LVL32-.Ltext0
	.uaword	0x1
	.byte	0x59
	.ualong	.LVL32-.Ltext0
	.ualong	.LFE8-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST26:
	.ualong	.LVL27-.Ltext0
	.ualong	.LVL28-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL28-.Ltext0
	.ualong	.LVL29-.Ltext0
	.uaword	0x1
	.byte	0x58
	.ualong	.LVL29-.Ltext0
	.ualong	.LVL30-.Ltext0
	.uaword	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST27:
	.ualong	.LFB9-.Ltext0
	.ualong	.LCFI14-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI14-.Ltext0
	.ualong	.LCFI15-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI15-.Ltext0
	.ualong	.LCFI16-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
	.ualong	.LCFI16-.Ltext0
	.ualong	.LFE9-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 28
	.ualong	0
	.ualong	0
.LLST28:
	.ualong	.LVL33-.Ltext0
	.ualong	.LVL44-1-.Ltext0
	.uaword	0x1
	.byte	0x54
	.ualong	.LVL44-1-.Ltext0
	.ualong	.LFE9-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST29:
	.ualong	.LVL33-.Ltext0
	.ualong	.LVL37-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL37-.Ltext0
	.ualong	.LVL40-.Ltext0
	.uaword	0x1
	.byte	0x58
	.ualong	.LVL41-.Ltext0
	.ualong	.LVL45-.Ltext0
	.uaword	0x1
	.byte	0x58
	.ualong	0
	.ualong	0
.LLST30:
	.ualong	.LVL33-.Ltext0
	.ualong	.LVL36-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	.LVL36-.Ltext0
	.ualong	.LVL38-.Ltext0
	.uaword	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.ualong	.LVL38-.Ltext0
	.ualong	.LVL44-1-.Ltext0
	.uaword	0x1
	.byte	0x56
	.ualong	0
	.ualong	0
.LLST31:
	.ualong	.LVL34-.Ltext0
	.ualong	.LVL35-.Ltext0
	.uaword	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x9f
	.ualong	.LVL35-.Ltext0
	.ualong	.LVL38-.Ltext0
	.uaword	0x3
	.byte	0x91
	.sleb128 -13
	.byte	0x9f
	.ualong	.LVL38-.Ltext0
	.ualong	.LVL43-.Ltext0
	.uaword	0x1
	.byte	0x55
	.ualong	.LVL43-.Ltext0
	.ualong	.LVL44-1-.Ltext0
	.uaword	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.ualong	0
	.ualong	0
.LLST32:
	.ualong	.LFB10-.Ltext0
	.ualong	.LCFI17-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 0
	.ualong	.LCFI17-.Ltext0
	.ualong	.LCFI18-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 4
	.ualong	.LCFI18-.Ltext0
	.ualong	.LFE10-.Ltext0
	.uaword	0x2
	.byte	0x7f
	.sleb128 8
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
.LASF28:
	.string	"/home/hiroaki/cross2-gcc4/exec"
.LASF2:
	.string	"size"
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
.LASF26:
	.string	"GNU C 4.7.2"
.LASF0:
	.string	"status"
.LASF4:
	.string	"__write"
.LASF20:
	.string	"long unsigned int"
.LASF3:
	.string	"__read"
.LASF13:
	.string	"write1"
.LASF24:
	.string	"data_value"
.LASF14:
	.string	"unsigned char"
.LASF27:
	.string	"sh-elf.c"
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
.LASF18:
	.string	"value"
.LASF12:
	.string	"exit"
.LASF1:
	.string	"buffer"
.LASF21:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.7.2"
