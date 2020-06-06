 # GNU C (GCC) version 4.7.2 (microblaze-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -D ___FreeBSD___ -D ARCH="microblaze-elf"
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
	.globl	_exit
	.ent	_exit
	.type	_exit, @function
_exit:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__exit	 #
	nop		# Unfilled delay slot

	.end	_exit
$Lfe1:
	.size	_exit,$Lfe1-_exit
	.align	2
	.globl	read
	.ent	read
	.type	read, @function
read:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__read	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	read
$Lfe2:
	.size	read,$Lfe2-read
	.align	2
	.globl	write
	.ent	write
	.type	write, @function
write:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__write	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	write
$Lfe3:
	.size	write,$Lfe3-write
	.align	2
	.globl	open
	.ent	open
	.type	open, @function
open:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__open	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	open
$Lfe4:
	.size	open,$Lfe4-open
	.align	2
	.globl	close
	.ent	close
	.type	close, @function
close:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,__close	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	close
$Lfe5:
	.size	close,$Lfe5-close
	.align	2
	.globl	fstat
	.ent	fstat
	.type	fstat, @function
fstat:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	addk	r5,r6,r0	 #, sb
	addk	r6,r0,r0	 #
	brlid	r15,memset	 #
	
	addik	r7,r0,60	# 0x3c	 #,
	addk	r3,r0,r0	 #
	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	fstat
$Lfe6:
	.size	fstat,$Lfe6-fstat
	.align	2
	.globl	lseek
	.ent	lseek
	.type	lseek, @function
lseek:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r6,r0	 #, offset
	.end	lseek
$Lfe7:
	.size	lseek,$Lfe7-lseek
	.align	2
	.globl	sbrk
	.ent	sbrk
	.type	sbrk, @function
sbrk:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r3,r0,sbrk_top	 # sbrk_top, old_top
	addk	r5,r3,r5	 # tmp47, old_top, incr
	swi	r5,r0,sbrk_top	 # sbrk_top, tmp47
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	sbrk
$Lfe8:
	.size	sbrk,$Lfe8-sbrk
	.align	2
	.globl	isatty
	.ent	isatty
	.type	isatty, @function
isatty:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,1	# 0x1	 #,
	.end	isatty
$Lfe9:
	.size	isatty,$Lfe9-isatty
	.rodata
	.align	2
$LC0:
	.ascii "Hello World! %08lx This architecture is %s\12\0"
	.align	2
$LC1:
	.ascii "microblaze-elf\0"
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
	addik	r5,r0,$LC0	 #,
	lwi	r6,r0,data_value	 # data_value,
	addik	r7,r0,$LC1	 #,
	brlid	r15,printf	 #
	nop		# Unfilled delay slot

	brlid	r15,exit	 #
	
	addk	r5,r0,r0	 #
	.end	main
$Lfe10:
	.size	main,$Lfe10-main
	.align	2
	.globl	_startmain
	.ent	_startmain
	.type	_startmain, @function
_startmain:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	addik	r3,r0,_bss_start	 # tmp49,
	addk	r5,r3,r0	 #, tmp49
	addk	r6,r0,r0	 #
	addik	r7,r0,_ebss	 # tmp48,
	brlid	r15,memset	 #
	
	rsubk	r7,r3,r7	 #, tmp49, tmp48
	brlid	r15,main	 #
	nop		# Unfilled delay slot

	.end	_startmain
$Lfe11:
	.size	_startmain,$Lfe11-_startmain
	.globl	sbrk_top
	.data
	.align	2
	.type	sbrk_top,@object
	.size	sbrk_top,4
sbrk_top:
	.long	_heap
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
