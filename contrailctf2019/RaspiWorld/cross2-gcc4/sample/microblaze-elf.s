 # GNU C (GCC) version 4.7.2 (microblaze-elf)
 #	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -nostdinc microblaze-elf.c
 # -auxbase-strip microblaze-elf.s -O -Wall -fno-builtin -fverbose-asm
 # -fomit-frame-pointer
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
	.globl	null
	.ent	null
	.type	null, @function
null:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	null
$Lfe1:
	.size	null,$Lfe1-null
	.align	2
	.globl	return_zero
	.ent	return_zero
	.type	return_zero, @function
return_zero:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r0,r0	 #
	.end	return_zero
$Lfe2:
	.size	return_zero,$Lfe2-return_zero
	.align	2
	.globl	return_one
	.ent	return_one
	.type	return_one, @function
return_one:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,1	# 0x1	 #,
	.end	return_one
$Lfe3:
	.size	return_one,$Lfe3-return_one
	.align	2
	.globl	return_int_size
	.ent	return_int_size
	.type	return_int_size, @function
return_int_size:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,4	# 0x4	 #,
	.end	return_int_size
$Lfe4:
	.size	return_int_size,$Lfe4-return_int_size
	.align	2
	.globl	return_pointer_size
	.ent	return_pointer_size
	.type	return_pointer_size, @function
return_pointer_size:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,4	# 0x4	 #,
	.end	return_pointer_size
$Lfe5:
	.size	return_pointer_size,$Lfe5-return_pointer_size
	.align	2
	.globl	return_short_size
	.ent	return_short_size
	.type	return_short_size, @function
return_short_size:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,2	# 0x2	 #,
	.end	return_short_size
$Lfe6:
	.size	return_short_size,$Lfe6-return_short_size
	.align	2
	.globl	return_long_size
	.ent	return_long_size
	.type	return_long_size, @function
return_long_size:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,4	# 0x4	 #,
	.end	return_long_size
$Lfe7:
	.size	return_long_size,$Lfe7-return_long_size
	.align	2
	.globl	return_short
	.ent	return_short
	.type	return_short, @function
return_short:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,30600	# 0x7788	 #,
	.end	return_short
$Lfe8:
	.size	return_short,$Lfe8-return_short
	.align	2
	.globl	return_long
	.ent	return_long
	.type	return_long, @function
return_long:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,2005440938	 #,
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	return_long
$Lfe9:
	.size	return_long,$Lfe9-return_long
	.align	2
	.globl	return_short_upper
	.ent	return_short_upper
	.type	return_short_upper, @function
return_short_upper:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r0,-18	# 0xffffffee	 #,
	.end	return_short_upper
$Lfe10:
	.size	return_short_upper,$Lfe10-return_short_upper
	.align	2
	.globl	return_long_upper
	.ent	return_long_upper
	.type	return_long_upper, @function
return_long_upper:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,-1122868	 #,
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	return_long_upper
$Lfe11:
	.size	return_long_upper,$Lfe11-return_long_upper
	.align	2
	.globl	return_arg1
	.ent	return_arg1
	.type	return_arg1, @function
return_arg1:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r5,r0	 #, a
	.end	return_arg1
$Lfe12:
	.size	return_arg1,$Lfe12-return_arg1
	.align	2
	.globl	return_arg2
	.ent	return_arg2
	.type	return_arg2, @function
return_arg2:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r6,r0	 #, b
	.end	return_arg2
$Lfe13:
	.size	return_arg2,$Lfe13-return_arg2
	.align	2
	.globl	add
	.ent	add
	.type	add, @function
add:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r5,r6	 #, a, b
	.end	add
$Lfe14:
	.size	add,$Lfe14-add
	.align	2
	.globl	add3
	.ent	add3
	.type	add3, @function
add3:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r3,r5,r6	 # tmp49, a, b
	rtsd	r15, 8
	
	addk	r3,r3,r7	 #, tmp49, c
	.end	add3
$Lfe15:
	.size	add3,$Lfe15-add3
	.align	2
	.globl	add_two
	.ent	add_two
	.type	add_two, @function
add_two:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r5,2	 #, a,
	.end	add_two
$Lfe16:
	.size	add_two,$Lfe16-add_two
	.align	2
	.globl	inc
	.ent	inc
	.type	inc, @function
inc:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addik	r3,r5,1	 #, a,
	.end	inc
$Lfe17:
	.size	inc,$Lfe17-inc
	.align	2
	.globl	or
	.ent	or
	.type	or, @function
or:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	or	r3,r6,r5	 #, b, a
	.end	or
$Lfe18:
	.size	or,$Lfe18-or
	.align	2
	.globl	or_one
	.ent	or_one
	.type	or_one, @function
or_one:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	ori	r3,r5,1	 #, a,
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	or_one
$Lfe19:
	.size	or_one,$Lfe19-or_one
	.align	2
	.globl	load
	.ent	load
	.type	load, @function
load:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r3,r5,0	 # *p_1(D), D.1028
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	load
$Lfe20:
	.size	load,$Lfe20-load
	.align	2
	.globl	store
	.ent	store
	.type	store, @function
store:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,255	# 0xff	 # tmp43,
	swi	r3,r5,0	 # *p_1(D), tmp43
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	store
$Lfe21:
	.size	store,$Lfe21-store
	.align	2
	.globl	load_long
	.ent	load_long
	.type	load_long, @function
load_long:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r3,r5,0	 # *p_1(D), D.1026
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	load_long
$Lfe22:
	.size	load_long,$Lfe22-load_long
	.align	2
	.globl	store_long
	.ent	store_long
	.type	store_long, @function
store_long:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,287454020	 # tmp43,
	swi	r3,r5,0	 # *p_1(D), tmp43
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	store_long
$Lfe23:
	.size	store_long,$Lfe23-store_long
	.align	2
	.globl	member
	.ent	member
	.type	member, @function
member:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,1	# 0x1	 # tmp45,
	swi	r3,r5,4	 # p_1(D)->b, tmp45
	rtsd	r15, 8
	
	lwi	r3,r5,8	 # p_1(D)->c,
	.end	member
$Lfe24:
	.size	member,$Lfe24-member
	.align	2
	.globl	get_static_value_addr
	.ent	get_static_value_addr
	.type	get_static_value_addr, @function
get_static_value_addr:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addik	r3,r0,static_value	 #,
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	get_static_value_addr
$Lfe25:
	.size	get_static_value_addr,$Lfe25-get_static_value_addr
	.align	2
	.globl	get_static_value
	.ent	get_static_value
	.type	get_static_value, @function
get_static_value:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	lwi	r3,r0,static_value	 # static_value,
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	get_static_value
$Lfe26:
	.size	get_static_value,$Lfe26-get_static_value
	.align	2
	.globl	set_static_value
	.ent	set_static_value
	.type	set_static_value, @function
set_static_value:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	swi	r5,r0,static_value	 # static_value, a
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	set_static_value
$Lfe27:
	.size	set_static_value,$Lfe27-set_static_value
	.align	2
	.globl	set_stack
	.ent	set_stack
	.type	set_stack, @function
set_stack:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12	 #,,
	addik	r3,r0,254	# 0xfe	 # tmp42,
	swi	r3,r1,4	 # a, tmp42
	addik	r3,r0,255	# 0xff	 # tmp43,
	swi	r3,r1,8	 # b, tmp43
	rtsd	r15,8 
	
	addik	r1,r1,12	 #,,
	.end	set_stack
$Lfe28:
	.size	set_stack,$Lfe28-set_stack
	.align	2
	.globl	use_stack
	.ent	use_stack
	.type	use_stack, @function
use_stack:
	.frame	r1,12,r15		# vars= 8, regs= 0, args= 0
	.mask	0x00000000
	addik	r1,r1,-12	 #,,
	addik	r3,r0,254	# 0xfe	 # tmp46,
	swi	r3,r1,4	 # a, tmp46
	addik	r3,r0,255	# 0xff	 # tmp47,
	swi	r3,r1,8	 # b, tmp47
	lwi	r4,r1,4	 # a, a.1
	lwi	r3,r1,8	 # b, b.2
	addk	r3,r4,r3	 #, a.1, b.2
	rtsd	r15,8 
	
	addik	r1,r1,12	 #,,
	.end	use_stack
$Lfe29:
	.size	use_stack,$Lfe29-use_stack
	.align	2
	.globl	call_self
	.ent	call_self
	.type	call_self, @function
call_self:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,call_self	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	call_self
$Lfe30:
	.size	call_self,$Lfe30-call_self
	.align	2
	.globl	call_simple
	.ent	call_simple
	.type	call_simple, @function
call_simple:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,return_arg1	 #
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	call_simple
$Lfe31:
	.size	call_simple,$Lfe31-call_simple
	.align	2
	.globl	call_complex1
	.ent	call_complex1
	.type	call_complex1, @function
call_complex1:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brlid	r15,return_arg1	 #
	
	addik	r5,r0,254	# 0xfe	 #,
	addik	r3,r3,1	 #,,
	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	call_complex1
$Lfe32:
	.size	call_complex1,$Lfe32-call_complex1
	.align	2
	.globl	call_complex2
	.ent	call_complex2
	.type	call_complex2, @function
call_complex2:
	.frame	r1,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32	 #,,
	swi	r15,r1,0	 #,
	swi	r19,r1,28	 #,
	addk	r19,r6,r0	 # b, b
	brlid	r15,return_arg1	 #
	
	addk	r5,r6,r0	 #, b
	swi	r3,r0,static_value	 # static_value,
	addk	r3,r19,r0	 #, b
	lwi	r15,r1,0	 #,
	lwi	r19,r1,28	 #,
	rtsd	r15,8 
	
	addik	r1,r1,32	 #,,
	.end	call_complex2
$Lfe33:
	.size	call_complex2,$Lfe33-call_complex2
	.align	2
	.globl	call_pointer
	.ent	call_pointer
	.type	call_pointer, @function
call_pointer:
	.frame	r1,28,r15		# vars= 0, regs= 0, args= 24
	.mask	0x00008000
	addik	r1,r1,-28	 #,,
	swi	r15,r1,0	 #,
	brald	r15,r5	 # f
	nop		# Unfilled delay slot

	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,28	 #,,
	.end	call_pointer
$Lfe34:
	.size	call_pointer,$Lfe34-call_pointer
	.align	2
	.globl	condition
	.ent	condition
	.type	condition, @function
condition:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	xor	r5,r5,r6	 # tmp46, a, b
	bnei	r5,$L43	 #, tmp46,
	addik	r6,r0,1	# 0x1	 # b,
$L43:
	rtsd	r15, 8
	
	addik	r3,r6,1	 #, b,
	.end	condition
$Lfe35:
	.size	condition,$Lfe35-condition
	.align	2
	.globl	loop
	.ent	loop
	.type	loop, @function
loop:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	blei	r5,$L48	 #, n,
	addk	r3,r0,r0	 # sum
	addk	r4,r3,r0	 # i, sum
	addk	r3,r3,r4	 # sum, sum, i
$L50:
	addik	r4,r4,1	 # i, i,
	xor	r6,r4,r5	 # tmp48, i, n
	bneid	r6,$L50	 #, tmp48,
	addk	r3,r3,r4	 # sum, sum, i
	rtsd	r15, 8
	
	rsubk	r3,r4,r3	 # sum, i, sum
$L48:
	rtsd	r15, 8
	
	addk	r3,r0,r0	 # sum
	.end	loop
$Lfe36:
	.size	loop,$Lfe36-loop
	.align	2
	.globl	many_args
	.ent	many_args
	.type	many_args, @function
many_args:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	addk	r5,r5,r8	 # tmp55, a0, a3
	addk	r10,r5,r10	 # tmp56, tmp55, a5
	lwi	r3,r1,32	 # a7, a7
	rtsd	r15, 8
	
	addk	r3,r10,r3	 #, tmp56, a7
	.end	many_args
$Lfe37:
	.size	many_args,$Lfe37-many_args
	.align	2
	.globl	call_many_args
	.ent	call_many_args
	.type	call_many_args, @function
call_many_args:
	.frame	r1,36,r15		# vars= 0, regs= 0, args= 32
	.mask	0x00008000
	addik	r1,r1,-36	 #,,
	swi	r15,r1,0	 #,
	addik	r3,r0,6	# 0x6	 # tmp44,
	swi	r3,r1,28	 #, tmp44
	addik	r3,r0,7	# 0x7	 # tmp45,
	swi	r3,r1,32	 #, tmp45
	addk	r5,r0,r0	 #
	addik	r6,r0,1	# 0x1	 #,
	addik	r7,r0,2	# 0x2	 #,
	addik	r8,r0,3	# 0x3	 #,
	addik	r9,r0,4	# 0x4	 #,
	brlid	r15,many_args	 #
	
	addik	r10,r0,5	# 0x5	 #,
	lwi	r15,r1,0	 #,
	rtsd	r15,8 
	
	addik	r1,r1,36	 #,,
	.end	call_many_args
$Lfe38:
	.size	call_many_args,$Lfe38-call_many_args
	.align	2
	.globl	direct
	.ent	direct
	.type	direct, @function
direct:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
 #APP
 # 216 "microblaze-elf.c" 1
	nop
 # 0 "" 2
 #NO_APP
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	direct
$Lfe39:
	.size	direct,$Lfe39-direct
	.align	2
	.globl	binary
	.ent	binary
	.type	binary, @function
binary:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
 #APP
 # 224 "microblaze-elf.c" 1
	.align 4
 # 0 "" 2
 # 225 "microblaze-elf.c" 1
	.int 0x0
 # 0 "" 2
 #NO_APP
	rtsd	r15, 8
	nop		# Unfilled delay slot

	.end	binary
$Lfe40:
	.size	binary,$Lfe40-binary
	.align	2
	.globl	main
	.ent	main
	.type	main, @function
main:
	.frame	r1,0,r15		# vars= 0, regs= 0, args= 0
	.mask	0x00000000
	rtsd	r15, 8
	
	addk	r3,r0,r0	 #
	.end	main
$Lfe41:
	.size	main,$Lfe41-main
	.globl	static_long
	.data
	.align	2
	.type	static_long,@object
	.size	static_long,4
static_long:
	.long	305419896
	.globl	static_value
	.align	2
	.type	static_value,@object
	.size	static_value,4
static_value:
	.long	10
