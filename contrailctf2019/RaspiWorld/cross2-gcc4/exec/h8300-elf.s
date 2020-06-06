	.file	"h8300-elf.c"
;# GNU C (GCC) version 4.7.2 (h8300-elf)
;#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="h8300-elf"
;# h8300-elf.c -auxbase-strip h8300-elf.s -O -Wall -fno-builtin
;# -fverbose-asm -fomit-frame-pointer
;# options enabled:  -fauto-inc-dec -fbranch-count-reg
;# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
;# -fdebug-types-section -fdefer-pop -fdelayed-branch
;# -fdelete-null-pointer-checks -fearly-inlining
;# -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
;# -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
;# -fif-conversion -fif-conversion2 -finline -finline-atomics
;# -finline-functions-called-once -fipa-profile -fipa-pure-const
;# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
;# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;# -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
;# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
;# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
;# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
;# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
;# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
;# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
;# -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
;# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
;# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
;# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
;# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-ter
;# -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
;# -fzero-initialized-in-bss

	.section .text
	.align 1
	.global _exit
_exit:
	jsr	@___exit	;# __exit
	.size	_exit, .-_exit
	.align 1
	.global _write1
_write1:
	subs	#2,r7	;#,
	mov.w	r7,r3	;#, tmp21
	adds	#2,r3	;#, tmp21
	mov.b	r1l,@-r3	;# c, c
	mov.w	#1,r2	;#,
	mov.w	r3,r1	;# tmp21,
	jsr	@___write	;# __write
	adds	#2,r7	;#,
	rts
	.size	_write1, .-_write1
	.align 1
	.global _putchar
_putchar:
	mov.w	r4,@-r7	;#,
	mov.w	r1,r4	;# c, c
	jsr	@_write1	;# write1
	mov.w	r4,r0	;# c,
	mov.w	@r7+,r4	;#,
	rts
	.size	_putchar, .-_putchar
	.align 1
	.global _puts
_puts:
	mov.w	r4,@-r7	;#,
	mov.w	r5,@-r7	;#,
	mov.w	r0,r5	;# fd, fd
	mov.w	r1,r4	;# str, str
	mov.b	@r1,r1l	;# *str_2(D), D.929
	beq	.L5	;#,
.L7:
	mov.b	#0,r1h	;#
	mov.w	r5,r0	;# fd,
	jsr	@_putchar	;# putchar
	adds	#1,r4	;#, str
	mov.b	@r4,r1l	;# MEM[base: str_7, offset: 0B], D.929
	bne	.L7	;#,
.L5:
	sub.w	r0,r0	;#
	mov.w	@r7+,r5	;#,
	mov.w	@r7+,r4	;#,
	rts
	.size	_puts, .-_puts
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0123456789abcdef"
	.section .text
	.align 1
	.global _putxval
_putxval:
	mov.w	r4,@-r7	;#,
	mov.w	r5,@-r7	;#,
	mov.w	r6,@-r7	;#,
	mov.w	#-20,r3	;#,
	add.w	r3,r7	;#,
	mov.w	r0,@r7	;# fd, %sfp
	mov.w	r2,r3	;# value, value
	mov.w	r1,r2	;# value, value
	mov.w	@(28,r7),r5	;# column, column
	sub.b	r0l,r0l	;# tmp29
	mov.b	r0l,@(19,r7)	;# tmp29, MEM[(char *)&buf + 16B]
	mov.w	r2,r0	;# value, tmp30
	or	r3l,r0l	;# value, tmp30
	or	r3h,r0h	;# value, tmp30
	mov.w	r0,r0	;# tmp30
	bne	.L10	;#,
	mov.w	r5,r5	;# column
	bne	.L10	;#,
	mov.b	#1,r5l	;#,
.L10:
	mov.w	r7,r4	;#, ivtmp___23
	add.b	#18,r4l	;#, ivtmp___23
	addx	#0,r4h	;#, ivtmp___23
	mov.w	#.LC0,r6	;#, tmp42
	bra	.L11	;#
.L13:
	mov.w	r2,r0	;# value, tmp32
	mov.w	r3,r1	;# value, tmp32
	and	#15,r1l	;#, tmp32
	and	#0,r1h	;#, tmp32
	sub.w	r0,r0	;# tmp32
	mov.w	r6,r0	;# tmp42, tmp34
	add.w	r1,r0	;# tmp32, tmp34
	mov.b	@r0,r0l	;#, tmp35
	mov.b	r0l,@r4	;# tmp35, MEM[base: p_3, offset: 0B]
	mov.b	#4,r0l
.Llt1:
	shlr	r2h	;# value
	rotxr	r2l	;# value
	rotxr	r3h	;# value
	rotxr	r3l	;# value
	add	#0xff,r0l	;#
	bne	.Llt1
	mov.w	r5,r5	;# column
	beq	.L12	;#,
.L15:
	subs	#1,r5	;#, column
.L12:
	subs	#1,r4	;#, ivtmp___23
.L11:
	mov.w	r4,r1	;# ivtmp___23, p
	mov.w	r2,r0	;# value, tmp37
	or	r3l,r0l	;# value, tmp37
	or	r3h,r0h	;# value, tmp37
	mov.w	r0,r0	;# tmp37
	bne	.L13	;#,
	mov.w	r5,r5	;# column
	beq	.L18	;#,
	mov.b	#48,r0l	;#,
	mov.b	r0l,@r4	;#, MEM[base: p_3, offset: 0B]
	bra	.L15	;#
.L18:
	adds	#1,r1	;#,
	mov.w	@r7,r0	;# %sfp,
	jsr	@_puts	;# puts
	sub.w	r0,r0	;#
	mov.w	#20,r3	;#,
	add.w	r3,r7	;#,
	mov.w	@r7+,r6	;#,
	mov.w	@r7+,r5	;#,
	mov.w	@r7+,r4	;#,
	rts
	.size	_putxval, .-_putxval
	.section	.rodata.str1.1
.LC1:
	.string	"Hello World! "
.LC2:
	.string	" This architecture is h8300-elf\n"
	.section .text
	.align 1
	.global _main
_main:
	mov.w	#.LC1,r1	;#,
	mov.w	#1,r0	;#,
	jsr	@_puts	;# puts
	sub.w	r2,r2	;# tmp22
	mov.w	r2,@-r7	;# tmp22,
	mov.w	@_data_value,r1	;# data_value,
	mov.w	@_data_value+2,r2	;# data_value,
	mov.w	#1,r0	;#,
	jsr	@_putxval	;# putxval
	mov.w	#.LC2,r1	;#,
	mov.w	#1,r0	;#,
	jsr	@_puts	;# puts
	sub.w	r0,r0	;#
	jsr	@_exit	;# exit
	.size	_main, .-_main
	.comm	_bss_value,2,2
	.global _data_value
	.section .data
	.align 1
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.word	-21587
	.word	-1330
	.ident	"GCC: (GNU) 4.7.2"
	.end
