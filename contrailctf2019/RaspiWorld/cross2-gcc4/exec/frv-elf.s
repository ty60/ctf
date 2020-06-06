	.file	"frv-elf.c"
; GNU C (GCC) version 4.7.2 (frv-elf)
;	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="frv-elf" frv-elf.c
; -mno-cond-exec -auxbase-strip frv-elf.s -g -O -Wall -fno-builtin
; -fverbose-asm -fomit-frame-pointer
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
; -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
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
; -fzero-initialized-in-bss -macc-8 -malloc-cc -mcond-move -mdword -mfpr-64
; -mgpr-64 -mhard-float -mlinked-fp -mmedia -mmulti-cond-exec
; -mnested-cond-exec -moptimize-membar -mpack -mscc -mtls -mvliw-branch

	.text
.Ltext0:
	.p2align 4
	.globl exit
	.type	exit, @function
exit:
.LFB0:
.LM1:
.LVL0:
	addi sp,#-16,sp	;,,
.LCFI0:
	sti fp, @(sp,0)	;,
.LCFI1:
	mov sp, fp	;,
.LCFI2:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
.LCFI3:
.LM2:
	call __exit	;
.LVL1:
.LFE0:
	.size	exit, .-exit
	.p2align 4
	.globl write1
	.type	write1, @function
write1:
.LFB1:
.LM3:
.LVL2:
	addi sp,#-24,sp	;,,
.LCFI4:
	sti fp, @(sp,8)	;,
.LCFI5:
	addi sp,#8,fp	;,,
.LCFI6:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
.LCFI7:
	stbi gr9, @(fp,-1)	; c, c
.LM4:
	addi fp,#-1,gr9	;,,
.LVL3:
	setlos #1, gr10	;,
	call __write	;
.LVL4:
.LM5:
	ldi @(fp,8), gr5	;,
	ld @(fp,gr0), fp	;,
	addi sp,#24,sp	;,,
	jmpl @(gr5,gr0)	;
.LFE1:
	.size	write1, .-write1
	.p2align 4
	.globl putchar
	.type	putchar, @function
putchar:
.LFB2:
.LM6:
.LVL5:
	addi sp,#-24,sp	;,,
.LCFI8:
	sti fp, @(sp,8)	;,
.LCFI9:
	addi sp,#8,fp	;,,
.LCFI10:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
	sti gr18, @(sp,0)	;,
.LCFI11:
	mov gr9, gr18	; c, c
.LM7:
	call write1	;
.LVL6:
.LM8:
	mov gr18, gr8	; c,
	ldi @(sp,0), gr18	;,
.LVL7:
	ldi @(fp,8), gr5	;,
	ld @(fp,gr0), fp	;,
	addi sp,#24,sp	;,,
	jmpl @(gr5,gr0)	;
.LFE2:
	.size	putchar, .-putchar
	.p2align 4
	.globl puts
	.type	puts, @function
puts:
.LFB3:
.LM9:
.LVL8:
	addi sp,#-24,sp	;,,
.LCFI12:
	sti fp, @(sp,8)	;,
.LCFI13:
	addi sp,#8,fp	;,,
.LCFI14:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
	stdi gr18, @(sp,0)	;,
.LCFI15:
	mov gr8, gr19	; fd, fd
	mov gr9, gr18	; str, str
.LM10:
	ldsb @(gr9,gr0),gr9	; *str_2(D), D.1070
.LVL9:
	cmpi gr9, #0, icc0	; D.1070, tmp210
	beq icc0,0,.L5	;, tmp210,
.LVL10:
.L7:
.LM11:
	mov gr19, gr8	; fd,
	call putchar	;
.LVL11:
.LM12:
	addi gr18,#1,gr18	;, str, str
.LVL12:
	ldsb @(gr18,gr0),gr9	; MEM[base: str_7, offset: 0B], D.1070
	cmpi gr9, #0, icc0	; D.1070, tmp211
	bne icc0,2,.L7	;, tmp211,
.L5:
.LM13:
	setlos #0, gr8	;,
	lddi @(sp,0), gr18	;,
.LVL13:
	ldi @(fp,8), gr5	;,
	ld @(fp,gr0), fp	;,
	addi sp,#24,sp	;,,
	jmpl @(gr5,gr0)	;
.LFE3:
	.size	puts, .-puts
	.section	.rodata.str1.4,"aMS",@progbits,1
	.p2align 2
.LC0:
	.string	"0123456789abcdef"
	.text
	.p2align 4
	.globl putxval
	.type	putxval, @function
putxval:
.LFB4:
.LM14:
.LVL14:
	addi sp,#-40,sp	;,,
.LCFI16:
	sti fp, @(sp,24)	;,
.LCFI17:
	addi sp,#24,fp	;,,
.LCFI18:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
.LCFI19:
.LVL15:
.LM15:
	stbi gr0, @(fp,-1)	; MEM[(char *)&buf + 16B]
.LVL16:
.LM16:
	cmpi gr9, #0, icc0	; value, tmp192
	bne icc0,2,.L10	;, tmp192,
.LM17:
	cmpi gr10, #0, icc0	; column, tmp204
	setlos #1, gr4	;, tmp205
	ckne icc0, cc4	;, tmp204, tmp206
	cmov gr4, gr10, cc4, 0	; tmp205, column, tmp206,
.LVL17:
.L10:
.LM18:
	addi fp,#-3,gr4	;,, ivtmp.18
.LM19:
	setlos #48, gr7	;, tmp207
	sethi #hi(.LC0), gr6	;, tmp208
	setlo #lo(.LC0), gr6	;, tmp208
	bra .L11	;
.LVL18:
.L13:
.LM20:
	andi gr9, #15, gr5	;, value, tmp196
.LVL19:
	ldsb @(gr6,gr5),gr5	;,
	stbi gr5, @(gr4,1)	; MEM[base: D.1104_24, offset: 1B], tmp197
.LVL20:
.LM21:
	srli gr9, #4, gr9	;, value, value
.LVL21:
.LM22:
	cmpi gr10, #0, icc0	; column, tmp198
	beq icc0,2,.L12	;, tmp198,
.LVL22:
.L15:
.LM23:
	addi gr10,#-1,gr10	;, column, column
.LVL23:
.L12:
	addi gr4,#-1,gr4	;, ivtmp.18, ivtmp.18
.LVL24:
.L11:
.LM24:
	addi gr4,#1,gr5	;, ivtmp.18, p
.LVL25:
.LM25:
	cmpi gr9, #0, icc0	; value, tmp199
	bne icc0,2,.L13	;, tmp199,
.LM26:
	cmpi gr10, #0, icc0	; column, tmp200
	beq icc0,0,.L18	;, tmp200,
.LM27:
	stbi gr7, @(gr4,1)	; MEM[base: D.1105_5, offset: 1B], tmp207
.LVL26:
	bra .L15	;
.LVL27:
.L18:
.LM28:
	addi gr5,#1,gr9	;, p, tmp201
.LVL28:
	call puts	;
.LVL29:
.LM29:
	setlos #0, gr8	;,
	ldi @(fp,8), gr5	;,
	ld @(fp,gr0), fp	;,
	addi sp,#40,sp	;,,
	jmpl @(gr5,gr0)	;
.LFE4:
	.size	putxval, .-putxval
	.globl __main
	.section	.rodata.str1.4
	.p2align 2
.LC1:
	.string	"Hello World! "
	.p2align 2
.LC2:
	.string	" This architecture is frv-elf\n"
	.text
	.p2align 4
	.globl main
	.type	main, @function
main:
.LFB5:
.LM30:
	addi sp,#-16,sp	;,,
.LCFI20:
	sti fp, @(sp,0)	;,
.LCFI21:
	mov sp, fp	;,
.LCFI22:
	movsg lr, gr5	;,
	sti gr5, @(fp,8)	;,
.LCFI23:
.LM31:
	call __main	;
.LVL30:
.LM32:
	setlos #1, gr8	;,
	sethi #hi(.LC1), gr9	;,
	setlo #lo(.LC1), gr9	;,
	call puts	;
.LVL31:
.LM33:
	ldi @(gr16,#gprel12(data_value)), gr9	; data_value, data_value
	setlos #1, gr8	;,
	setlos #0, gr10	;,
	call putxval	;
.LVL32:
.LM34:
	setlos #1, gr8	;,
	sethi #hi(.LC2), gr9	;,
	setlo #lo(.LC2), gr9	;,
	call puts	;
.LVL33:
.LM35:
	setlos #0, gr8	;,
	call exit	;
.LVL34:
.LFE5:
	.size	main, .-main
	.comm	bss_value,4,4
	.globl data_value
	.section	.sdata,"aw",@progbits
	.p2align 2
	.type	data_value, @object
	.size	data_value, 4
data_value:
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
	.byte	0xa9
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.p2align 2
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.p2align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xc
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.p2align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI8-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xc
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.byte	0x92
	.uleb128 0x6
	.p2align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI12-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.byte	0x92
	.uleb128 0x6
	.byte	0x93
	.uleb128 0x5
	.p2align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI16-.LFB4
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xc
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.p2align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI20-.LFB5
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x82
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x5
	.uleb128 0xa9
	.uleb128 0x2
	.p2align 2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e8
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
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.4byte	0x60
	.4byte	.LLST1
	.uleb128 0x4
	.4byte	.LVL1
	.4byte	0x2ae
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
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
	.4byte	0x60
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0xbd
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.4byte	0x60
	.4byte	.LLST3
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.4byte	0xbd
	.4byte	.LLST4
	.uleb128 0x4
	.4byte	.LVL4
	.4byte	0x2c2
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
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
	.4byte	0x60
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x115
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST6
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x60
	.4byte	.LLST7
	.uleb128 0x4
	.4byte	.LVL6
	.4byte	0x67
	.uleb128 0x5
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x161
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.4byte	0x60
	.4byte	.LLST9
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.4byte	0x161
	.4byte	.LLST10
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x167
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0x60
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x1dd
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST12
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x52
	.4byte	0x1dd
	.4byte	.LLST13
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x52
	.4byte	0x60
	.4byte	.LLST14
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x1e4
	.byte	0x2
	.byte	0x72
	.sleb128 -17
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x55
	.4byte	0x161
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LVL29
	.4byte	0x115
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0xe
	.4byte	0x167
	.4byte	0x1f4
	.uleb128 0xf
	.4byte	0x1f4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x68
	.4byte	0x60
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x283
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.4byte	0x60
	.byte	0x1
	.uleb128 0x12
	.4byte	.LVL31
	.4byte	0x115
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0x16e
	.4byte	0x257
	.uleb128 0x5
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL33
	.4byte	0x115
	.4byte	0x273
	.uleb128 0x5
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.4byte	0x295
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4
	.4byte	0x60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bss_value
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x2c2
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.4byte	0x60
	.byte	0x1
	.4byte	0x2e4
	.uleb128 0x15
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x2e4
	.uleb128 0x15
	.4byte	0x60
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0x17
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -17
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 16
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
	.string	"frv-elf.c"
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
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x6
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
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x6
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
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
.LASF17:
	.string	"frv-elf.c"
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
.LASF3:
	.string	"putchar"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"column"
.LASF12:
	.string	"main"
.LASF7:
	.string	"value"
.LASF11:
	.string	"exit"
.LASF5:
	.string	"char"
	.ident	"GCC: (GNU) 4.7.2"
