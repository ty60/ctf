	.file	"i386-elf.c"
	.text
.Ltext0:
	.globl	exit
	.type	exit, @function
exit:
.LFB0:
	.file 1 "i386-elf.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	subl	$28, %esp
.LCFI0:
	.cfi_def_cfa_offset 32
	.loc 1 31 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__exit
.LVL1:
	.cfi_endproc
.LFE0:
	.size	exit, .-exit
	.globl	write1
	.type	write1, @function
write1:
.LFB1:
	.loc 1 35 0
	.cfi_startproc
.LVL2:
	subl	$44, %esp
.LCFI1:
	.cfi_def_cfa_offset 48
	movl	52(%esp), %eax
	movb	%al, 28(%esp)
	.loc 1 36 0
	movl	$1, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__write
.LVL3:
	.loc 1 37 0
	addl	$44, %esp
.LCFI2:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	write1, .-write1
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB2:
	.loc 1 40 0
	.cfi_startproc
.LVL4:
	subl	$28, %esp
.LCFI3:
	.cfi_def_cfa_offset 32
	.loc 1 41 0
	movzbl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	write1
.LVL5:
	.loc 1 43 0
	movl	36(%esp), %eax
	addl	$28, %esp
.LCFI4:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	putchar, .-putchar
	.globl	puts
	.type	puts, @function
puts:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
.LVL6:
	pushl	%esi
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
.LCFI6:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
.LCFI7:
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
.LVL7:
	.loc 1 47 0
	movb	(%ebx), %al
	testb	%al, %al
	je	.L8
.L10:
	.loc 1 48 0 discriminator 2
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	putchar
.LVL8:
	.loc 1 47 0 discriminator 2
	incl	%ebx
.LVL9:
	movb	(%ebx), %al
	testb	%al, %al
	jne	.L10
.L8:
	.loc 1 50 0
	movl	$0, %eax
	addl	$20, %esp
.LCFI8:
	.cfi_def_cfa_offset 12
	popl	%ebx
.LCFI9:
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL10:
	popl	%esi
.LCFI10:
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	puts, .-puts
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0123456789abcdef"
	.text
	.globl	putxval
	.type	putxval, @function
putxval:
.LFB4:
	.loc 1 83 0
	.cfi_startproc
.LVL11:
	pushl	%ebx
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
.LCFI12:
	.cfi_def_cfa_offset 64
	movl	68(%esp), %edx
	movl	72(%esp), %ecx
.LVL12:
	.loc 1 88 0
	movb	$0, 47(%esp)
.LVL13:
	.loc 1 90 0
	testl	%edx, %edx
	jne	.L14
	.loc 1 90 0 is_stmt 0 discriminator 1
	testl	%ecx, %ecx
	jne	.L14
	.loc 1 91 0 is_stmt 1
	movb	$1, %cl
.L14:
	.loc 1 82 0 discriminator 1
	leal	45(%esp), %eax
	jmp	.L15
.LVL14:
.L17:
	.loc 1 94 0
	movl	%edx, %ebx
.LVL15:
	andl	$15, %ebx
	movb	.LC0(%ebx), %bl
	movb	%bl, 1(%eax)
.LVL16:
	.loc 1 95 0
	shrl	$4, %edx
.LVL17:
	.loc 1 96 0
	testl	%ecx, %ecx
	je	.L16
.LVL18:
.L19:
	.loc 1 96 0 is_stmt 0 discriminator 1
	decl	%ecx
.LVL19:
.L16:
	decl	%eax
.LVL20:
.L15:
	.loc 1 82 0 is_stmt 1 discriminator 1
	leal	1(%eax), %ebx
.LVL21:
	.loc 1 93 0 discriminator 1
	testl	%edx, %edx
	jne	.L17
	.loc 1 93 0 is_stmt 0 discriminator 2
	testl	%ecx, %ecx
	je	.L22
	.loc 1 94 0 is_stmt 1
	movb	$48, 1(%eax)
.LVL22:
	jmp	.L19
.LVL23:
.L22:
	.loc 1 99 0
	incl	%ebx
.LVL24:
	movl	%ebx, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	puts
.LVL25:
	.loc 1 102 0
	movl	$0, %eax
	addl	$56, %esp
.LCFI13:
	.cfi_def_cfa_offset 8
	popl	%ebx
.LCFI14:
	.cfi_restore 3
	.cfi_def_cfa_offset 4
.LVL26:
	ret
	.cfi_endproc
.LFE4:
	.size	putxval, .-putxval
	.section	.rodata.str1.1
.LC1:
	.string	"Hello World! "
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	" This architecture is i386-elf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	pushl	%ebp
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
.LCFI16:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
.LVL27:
	.loc 1 107 0
	movl	$.LC1, 4(%esp)
	movl	$1, (%esp)
	call	puts
.LVL28:
	.loc 1 108 0
	movl	$0, 8(%esp)
	movl	data_value, %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	putxval
.LVL29:
	.loc 1 109 0
	movl	$.LC2, 4(%esp)
	movl	$1, (%esp)
	call	puts
.LVL30:
	.loc 1 110 0
	movl	$0, (%esp)
	call	exit
.LVL31:
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.comm	bss_value,4,4
	.globl	data_value
	.data
	.align 4
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.long	-1414661426
	.text
.Letext0:
	.file 2 "syscall.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x303
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0x1
	.long	.LASF17
	.long	.LASF18
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x60
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x1d
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.long	.LVL1
	.long	0x2c9
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x1
	.long	.LASF2
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	0x60
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.byte	0x1
	.long	0xbe
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x22
	.long	0xbe
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.long	.LVL3
	.long	0x2dd
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF3
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x60
	.long	.LFB2
	.long	.LFE2
	.long	.LLST2
	.byte	0x1
	.long	0x11a
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x27
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x27
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.long	.LVL5
	.long	0x67
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0x60
	.long	.LFB3
	.long	.LFE3
	.long	.LLST3
	.byte	0x1
	.long	0x166
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x2d
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"str"
	.byte	0x1
	.byte	0x2d
	.long	0x166
	.long	.LLST4
	.uleb128 0x4
	.long	.LVL8
	.long	0xc5
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x16c
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.long	.LASF6
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0x60
	.long	.LFB4
	.long	.LFE4
	.long	.LLST5
	.byte	0x1
	.long	0x1f1
	.uleb128 0x8
	.string	"fd"
	.byte	0x1
	.byte	0x52
	.long	0x60
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF7
	.byte	0x1
	.byte	0x52
	.long	0x1f1
	.long	.LLST6
	.uleb128 0xc
	.long	.LASF8
	.byte	0x1
	.byte	0x52
	.long	0x60
	.long	.LLST7
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.long	0x1f8
	.byte	0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x55
	.long	0x166
	.long	.LLST8
	.uleb128 0x4
	.long	.LVL25
	.long	0x11a
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xf
	.long	0x16c
	.long	0x208
	.uleb128 0x10
	.long	0x208
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x11
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x68
	.long	0x60
	.long	.LFB5
	.long	.LFE5
	.long	.LLST9
	.byte	0x1
	.long	0x29e
	.uleb128 0x12
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.long	0x60
	.byte	0x1
	.uleb128 0x13
	.long	.LVL28
	.long	0x11a
	.long	0x255
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0x13
	.long	.LVL29
	.long	0x173
	.long	0x26f
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LVL30
	.long	0x11a
	.long	0x28d
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.uleb128 0x4
	.long	.LVL31
	.long	0x25
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF14
	.byte	0x1
	.byte	0x3
	.long	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	data_value
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.long	.LASF13
	.uleb128 0x14
	.long	.LASF15
	.byte	0x1
	.byte	0x4
	.long	0x60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bss_value
	.uleb128 0x15
	.byte	0x1
	.long	.LASF19
	.byte	0x2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x60
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF20
	.byte	0x2
	.byte	0x6
	.byte	0x1
	.long	0x60
	.byte	0x1
	.long	0x2ff
	.uleb128 0x16
	.long	0x60
	.uleb128 0x16
	.long	0x2ff
	.uleb128 0x16
	.long	0x60
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x305
	.uleb128 0x18
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	0
	.long	0
.LLST1:
	.long	.LFB1-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 48
	.long	.LCFI2-.Ltext0
	.long	.LFE1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LFB2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI4-.Ltext0
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LFB3-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL7-.Ltext0
	.long	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LFB4-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 64
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL11-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL14-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x52
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23-.Ltext0
	.long	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL11-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL14-.Ltext0
	.long	.LVL20-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LVL21-.Ltext0
	.long	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST8:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL16-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.value	0x1
	.byte	0x50
	.long	.LVL23-.Ltext0
	.long	.LVL24-.Ltext0
	.value	0x1
	.byte	0x53
	.long	.LVL24-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB5-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
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
.LASF5:
	.string	"char"
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
.LASF7:
	.string	"value"
.LASF11:
	.string	"exit"
.LASF17:
	.string	"i386-elf.c"
	.ident	"GCC: (GNU) 4.7.2"
