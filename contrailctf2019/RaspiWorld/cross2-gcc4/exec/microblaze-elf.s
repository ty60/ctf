 # GNU C (GCC) version 4.7.2 (microblaze-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -nostdinc -D ___FreeBSD___ -D ARCH="microblaze-elf"
 # microblaze-elf.c -auxbase-strip microblaze-elf.s -O -Wall -fno-builtin
 # -fverbose-asm -fomit-frame-pointer
 # options enabled:  -fauto-inc-dec -fbranch-count-reg
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fdebug-types-section -fdefer-pop -fdelayed-branch
 # -fdelete-null-pointer-checks -fearly-inlining
 # -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
 # -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
 # -fif-conversion -fif-conversion2 -finline -finline-atomics
 # -finline-functions-called-once -fipa-profile -fipa-pure-const
 # -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -fpcc-struct-return -fpeephole -fprefetch-loop-arrays
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
 # -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
 # -fzero-initialized-in-bss -msoft-float

	.text
	.align	2
	.globl	exit
	.ent	exit
	.type	exit, @function
exit:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__exit	 #
	nop		# Unfilled delay slot

	.end	exit
$Lfe1:
	.size	exit,$Lfe1-exit
	.align	2
	.globl	write1
	.ent	write1
	.type	write1, @function
write1:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	sbi	r6,r1,36	 # c, c
	addik	r6,r1,36	 #,,
	brlid	r15,__write	 #
	
	addik	r7,r0,1	# 0x1	 #,
	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	write1
$Lfe2:
	.size	write1,$Lfe2-write1
	.align	2
	.globl	putchar
	.ent	putchar
	.type	putchar, @function
putchar:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32	 #,,
	swi	r15,r1,0	 #,
	swi	r19,r1,28	 #,
	addk	r19,r6,r0	 # c, c
	brlid	r15,write1	 #
	
	andi	r6,r6,0x00ff	 #, c
	addk	r3,r19,r0	 #, c
	lwi	r15,r1,0	 #,
	lwi	r19,r1,28	 #,
	rtsd	r15,8 
	
	addik	r1,r1,32	 #,,
	.end	putchar
$Lfe3:
	.size	putchar,$Lfe3-putchar
	.align	2
	.globl	puts
	.ent	puts
	.type	puts, @function
puts:
	.frame	r1,36,r15		# vars= 0, regs= 2, args= 24
	.mask	0x00488000
	addik	r1,r1,-36	 #,,
	swi	r15,r1,0	 #,
	swi	r19,r1,28	 #,
	swi	r22,r1,32	 #,
	addk	r19,r6,r0	 # str, str
	lbui	r6,r6,0	 # *str_2(D),
	sext8	r6,r6	 # D.929, *str_2(D)
	beqid	r6,$L8	 #, D.929,
	addk	r22,r5,r0	 # fd, fd
$L10:
	brlid	r15,putchar	 #
	
	addk	r5,r22,r0	 #, fd
	addik	r19,r19,1	 # str, str,
	lbui	r6,r19,0	 # MEM[base: str_7, offset: 0B],
	sext8	r6,r6	 # D.929, MEM[base: str_7, offset: 0B]
	bnei	r6,$L10	 #, D.929,
$L8:
	addk	r3,r0,r0	 #
	lwi	r15,r1,0	 #,
	lwi	r19,r1,28	 #,
	lwi	r22,r1,32	 #,
	rtsd	r15,8 
	
	addik	r1,r1,36	 #,,
	.end	puts
$Lfe4:
	.size	puts,$Lfe4-puts
	.rodata
	.align	2
$LC0:
	.ascii "0123456789abcdef\0"
	.text
	.align	2
	.globl	putxval
	.ent	putxval
	.type	putxval, @function
putxval:
	.frame	r1,52,r15		# vars= 24, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-52	 #,,
	swi	r15,r1,0	 #,
	rsubk	r3,r7,r0	 # tmp58, column
	or	r3,r3,r7	 # tmp59, tmp58, column
	bltid	r3,$L14	 #, tmp59,
	sbi	r0,r1,44	 # MEM[(char *)&buf + 16B],
	rsubk	r4,r6,r0	 # tmp65, value
	or	r4,r4,r6	 # tmp66, tmp65, value
	xori	r4,r4,-1	 # tmp92, tmp66
	addk	r3,r0,r4	 # tmp91, tmp92
	srl	r3,r4	 # tmp91, tmp92
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	srl	r3,r3	 # tmp91
	addk	r7,r7,r3	 # column, column, tmp91
$L14:
	addik	r9,r0,$LC0	 # tmp90,
	brid	$L20	 #
	addik	r3,r1,43	 # p,,
$L17:
$L22:
	lbu	r8,r8,r9	 #,
	sbi	r8,r3,0	 # MEM[base: p_3, offset: 0B],
	addik	r3,r3,-1	 # p, p,
	addk	r8,r0,r6	 #, value
	srl	r8,r6	 #, value
	srl	r8,r8	 #
	srl	r8,r8	 #
	srl	r8,r8	 #
	swi	r8,r1,48	 #,
	beqid	r4,$L20	 #, D.923,
	addk	r6,r8,r0	 # value,
	addik	r7,r7,-1	 # column, column,
$L20:
	rsubk	r8,r7,r0	 # tmp76, column
	or	r8,r8,r7	 # tmp77, tmp76, column
	addk	r4,r0,r8	 # D.923, tmp77
	srl	r4,r8	 # D.923, tmp77
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	srl	r4,r4	 # D.923
	bneid	r4,$L22	 #, D.923,
	andi	r8,r6,15 #and1	 # tmp71, value,
	rsubk	r8,r6,r0	 # tmp81, value
	or	r8,r8,r6	 # tmp82, tmp81, value
	bltid	r8,$L17	 #, tmp82,
	andi	r8,r6,15 #and1	 # tmp71, value,
	brlid	r15,puts	 #
	
	addik	r6,r3,1	 #, p,
	addk	r3,r0,r0	 #
	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,52	 #,,
	.end	putxval
$Lfe5:
	.size	putxval,$Lfe5-putxval
	.rodata
	.align	2
$LC1:
	.ascii "Hello World! \0"
	.align	2
$LC2:
	.ascii " This architecture is microblaze-elf\12\0"
	.text
	.align	2
	.globl	main
	.ent	main
	.type	main, @function
main:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	addik	r6,r0,$LC1	 #,
	brlid	r15,puts	 #
	
	addik	r5,r0,1	# 0x1	 #,
	addik	r5,r0,1	# 0x1	 #,
	lwi	r6,r0,data_value	 # data_value,
	brlid	r15,putxval	 #
	
	addk	r7,r0,r0	 #
	addik	r6,r0,$LC2	 #,
	brlid	r15,puts	 #
	
	addik	r5,r0,1	# 0x1	 #,
	brlid	r15,exit	 #
	
	addk	r5,r0,r0	 #
	.end	main
$Lfe6:
	.size	main,$Lfe6-main
	.bss
	.comm	bss_value,4,4
	.type	bss_value, @object
	.globl	data_value
	.data
	.align	2
	.type	data_value,@object
	.size	data_value,4
data_value:
	.long	-1414661426
