	.file	"i386-elf.c"
	.text
.Ltext0:
	.globl	_exit
	.type	_exit, @function
_exit:
.LFB0:
	.file 1 "i386-elf.c"
	.loc 1 39 0
	.cfi_startproc
.LVL0:
	subl	$28, %esp
.LCFI0:
	.cfi_def_cfa_offset 32
	.loc 1 40 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__exit
.LVL1:
	.cfi_endproc
.LFE0:
	.size	_exit, .-_exit
	.globl	read
	.type	read, @function
read:
.LFB1:
	.loc 1 44 0
	.cfi_startproc
.LVL2:
	subl	$28, %esp
.LCFI1:
	.cfi_def_cfa_offset 32
	.loc 1 45 0
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__read
.LVL3:
	.loc 1 46 0
	addl	$28, %esp
.LCFI2:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	read, .-read
	.globl	write
	.type	write, @function
write:
.LFB2:
	.loc 1 48 0
	.cfi_startproc
.LVL4:
	subl	$28, %esp
.LCFI3:
	.cfi_def_cfa_offset 32
	.loc 1 49 0
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__write
.LVL5:
	.loc 1 50 0
	addl	$28, %esp
.LCFI4:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	write, .-write
	.globl	open
	.type	open, @function
open:
.LFB3:
	.loc 1 52 0
	.cfi_startproc
.LVL6:
	subl	$28, %esp
.LCFI5:
	.cfi_def_cfa_offset 32
	.loc 1 53 0
	movl	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__open
.LVL7:
	.loc 1 54 0
	addl	$28, %esp
.LCFI6:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	open, .-open
	.globl	close
	.type	close, @function
close:
.LFB4:
	.loc 1 56 0
	.cfi_startproc
.LVL8:
	subl	$28, %esp
.LCFI7:
	.cfi_def_cfa_offset 32
	.loc 1 57 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__close
.LVL9:
	.loc 1 58 0
	addl	$28, %esp
.LCFI8:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	close, .-close
	.globl	fstat
	.type	fstat, @function
fstat:
.LFB5:
	.loc 1 63 0
	.cfi_startproc
.LVL10:
	subl	$28, %esp
.LCFI9:
	.cfi_def_cfa_offset 32
	.loc 1 64 0
	movl	$60, 8(%esp)
	movl	$0, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	memset
.LVL11:
	.loc 1 66 0
	movl	$0, %eax
	addl	$28, %esp
.LCFI10:
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE5:
	.size	fstat, .-fstat
	.globl	lseek
	.type	lseek, @function
lseek:
.LFB6:
	.loc 1 69 0
	.cfi_startproc
.LVL12:
	.loc 1 71 0
	movl	8(%esp), %eax
	ret
	.cfi_endproc
.LFE6:
	.size	lseek, .-lseek
	.globl	sbrk
	.type	sbrk, @function
sbrk:
.LFB7:
	.loc 1 77 0
	.cfi_startproc
.LVL13:
	.loc 1 79 0
	movl	sbrk_top, %eax
.LVL14:
	.loc 1 80 0
	movl	%eax, %edx
	addl	4(%esp), %edx
	movl	%edx, sbrk_top
	.loc 1 82 0
	ret
	.cfi_endproc
.LFE7:
	.size	sbrk, .-sbrk
	.globl	isatty
	.type	isatty, @function
isatty:
.LFB8:
	.loc 1 85 0
	.cfi_startproc
.LVL15:
	.loc 1 87 0
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	isatty, .-isatty
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i386-elf"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"Hello World! %08lx This architecture is %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.loc 1 173 0
	.cfi_startproc
	pushl	%ebp
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
.LCFI12:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	.loc 1 174 0
	movl	$.LC0, 8(%esp)
	movl	data_value, %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	printf
.LVL16:
	.loc 1 175 0
	movl	$0, (%esp)
	call	exit
.LVL17:
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.globl	_startmain
	.type	_startmain, @function
_startmain:
.LFB10:
	.loc 1 166 0
	.cfi_startproc
	subl	$28, %esp
.LCFI13:
	.cfi_def_cfa_offset 32
.LBB4:
.LBB5:
	.loc 1 159 0
	movl	$_ebss, %eax
	subl	$_bss_start, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_bss_start, (%esp)
	call	memset
.LVL18:
.LBE5:
.LBE4:
	.loc 1 168 0
	call	main
.LVL19:
	.cfi_endproc
.LFE10:
	.size	_startmain, .-_startmain
	.globl	sbrk_top
	.data
	.align 4
	.type	sbrk_top, @object
	.size	sbrk_top, 4
sbrk_top:
	.long	_heap
	.comm	bss_value,4,4
	.globl	data_value
	.align 4
	.type	data_value, @object
	.size	data_value, 4
data_value:
	.long	-1414661426
	.text
.Letext0:
	.file 2 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/include/stddef.h"
	.file 3 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/sys/_types.h"
	.file 4 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/sys/types.h"
	.file 5 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/sys/stat.h"
	.file 6 "syscall.h"
	.file 7 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/string.h"
	.file 8 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/stdio.h"
	.file 9 "/usr/local/cross2-gcc4/lib/gcc/i386-elf/4.7.2/../../../../i386-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6cc
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.long	.LASF74
	.long	.LASF75
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0xd5
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x10
	.long	0x81
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x18
	.long	0x4c
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x1d
	.long	0x53
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x20
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.uleb128 0x6
	.byte	0x4
	.long	0xbe
	.uleb128 0x7
	.long	0x37
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x6e
	.long	0x81
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x86
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xa3
	.long	0x76
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xa4
	.long	0x88
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xa5
	.long	0x93
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.byte	0xa6
	.long	0x9e
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0xc4
	.long	0x61
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0xc9
	.long	0x53
	.uleb128 0x8
	.long	.LASF76
	.byte	0x3c
	.byte	0x5
	.byte	0x19
	.long	0x216
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x1b
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x1c
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x1d
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x1e
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x1f
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x20
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x21
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x22
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x30
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x31
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x32
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x33
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x34
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x35
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x36
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x37
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x38
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.long	0x81
	.long	0x226
	.uleb128 0xb
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x261
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x26
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL1
	.long	0x5f2
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x5a
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.byte	0x1
	.long	0x2cb
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x2b
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.long	.LVL3
	.long	0x606
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x5a
	.long	.LFB2
	.long	.LFE2
	.long	.LLST2
	.byte	0x1
	.long	0x335
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2f
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.byte	0x2f
	.long	0x335
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.byte	0x2f
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.long	.LVL5
	.long	0x628
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x33b
	.uleb128 0x12
	.uleb128 0x10
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x5a
	.long	.LFB3
	.long	.LFE3
	.long	.LLST3
	.byte	0x1
	.long	0x3a7
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x33
	.long	0xb8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.long	.LVL7
	.long	0x64a
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x5a
	.long	.LFB4
	.long	.LFE4
	.long	.LLST4
	.byte	0x1
	.long	0x3e5
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL9
	.long	0x66c
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.long	0x5a
	.long	.LFB5
	.long	.LFE5
	.long	.LLST5
	.byte	0x1
	.long	0x43d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"sb"
	.byte	0x1
	.byte	0x3e
	.long	0x43d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LVL11
	.long	0x684
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x11b
	.uleb128 0x13
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x5a
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x1
	.long	0x48a
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0x44
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x44
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0xb0
	.long	.LFB7
	.long	.LFE7
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x1
	.long	0x4c3
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x4c
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x4e
	.long	0xb0
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0x5a
	.long	.LFB8
	.long	.LFE8
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x1
	.long	0x4ee
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x54
	.long	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0xac
	.long	0x5a
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.byte	0x1
	.long	0x53e
	.uleb128 0x16
	.long	.LVL16
	.long	0x6a6
	.long	0x52d
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 8
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0xe
	.long	.LVL17
	.long	0x6bf
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x9d
	.long	0x5a
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0xa5
	.long	0x5a
	.long	.LFB10
	.long	.LFE10
	.long	.LLST7
	.byte	0x1
	.long	0x595
	.uleb128 0x18
	.long	0x53e
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0xa7
	.long	0x58b
	.uleb128 0xe
	.long	.LVL18
	.long	0x684
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LVL19
	.long	0x4ee
	.byte	0
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x8
	.long	0x81
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	data_value
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0x9
	.long	0x5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bss_value
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.byte	0x49
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.byte	0x4a
	.long	0xb2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sbrk_top
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x1
	.byte	0x9a
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x9b
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF79
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.long	0x606
	.uleb128 0x1d
	.long	0x5a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF67
	.byte	0x6
	.byte	0x5
	.byte	0x1
	.long	0x5a
	.byte	0x1
	.long	0x628
	.uleb128 0x1d
	.long	0x5a
	.uleb128 0x1d
	.long	0xb0
	.uleb128 0x1d
	.long	0x5a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF68
	.byte	0x6
	.byte	0x6
	.byte	0x1
	.long	0x5a
	.byte	0x1
	.long	0x64a
	.uleb128 0x1d
	.long	0x5a
	.uleb128 0x1d
	.long	0x335
	.uleb128 0x1d
	.long	0x5a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF69
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.long	0x5a
	.byte	0x1
	.long	0x66c
	.uleb128 0x1d
	.long	0xb8
	.uleb128 0x1d
	.long	0x5a
	.uleb128 0x1d
	.long	0x5a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF70
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.long	0x5a
	.byte	0x1
	.long	0x684
	.uleb128 0x1d
	.long	0x5a
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF71
	.byte	0x7
	.byte	0x1b
	.byte	0x1
	.long	0xb0
	.byte	0x1
	.long	0x6a6
	.uleb128 0x1d
	.long	0xb0
	.uleb128 0x1d
	.long	0x5a
	.uleb128 0x1d
	.long	0x25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF72
	.byte	0x8
	.byte	0xb6
	.byte	0x1
	.long	0x5a
	.byte	0x1
	.long	0x6bf
	.uleb128 0x1d
	.long	0xb8
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF80
	.byte	0x9
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0x5a
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
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
	.sleb128 32
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
	.sleb128 32
	.long	.LCFI6-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LFB4-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI8-.Ltext0
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LFB5-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
	.long	.LCFI10-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LFB10-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 32
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
.LASF72:
	.string	"printf"
.LASF14:
	.string	"__gid_t"
.LASF9:
	.string	"size_t"
.LASF45:
	.string	"write"
.LASF50:
	.string	"close"
.LASF47:
	.string	"path"
.LASF8:
	.string	"long long unsigned int"
.LASF39:
	.string	"st_blocks"
.LASF76:
	.string	"stat"
.LASF58:
	.string	"_exit"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"st_ino"
.LASF11:
	.string	"long int"
.LASF23:
	.string	"nlink_t"
.LASF18:
	.string	"off_t"
.LASF21:
	.string	"gid_t"
.LASF56:
	.string	"incr"
.LASF12:
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
.LASF6:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF54:
	.string	"whence"
.LASF20:
	.string	"uid_t"
.LASF43:
	.string	"size"
.LASF5:
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
.LASF15:
	.string	"sizetype"
.LASF46:
	.string	"open"
.LASF73:
	.string	"GNU C 4.7.2"
.LASF10:
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
.LASF3:
	.string	"unsigned char"
.LASF4:
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
.LASF1:
	.string	"char"
.LASF49:
	.string	"mode"
.LASF74:
	.string	"i386-elf.c"
.LASF70:
	.string	"__close"
.LASF69:
	.string	"__open"
.LASF42:
	.string	"buffer"
.LASF13:
	.string	"__uid_t"
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
