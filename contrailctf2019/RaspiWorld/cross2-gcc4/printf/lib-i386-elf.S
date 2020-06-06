/*
 * Use FreeBSD/NetBSD/Linux system call.
 */

#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

/*
 * System call arguments format:
 * FreeBSD: arg1..4(%esp), arg2..8(%esp), arg3..12(%esp)  (by stack)
 * Linux:   arg1..%ebx,    arg2..%ecx,    arg3..%edx      (by registers)
 * Below save/restore code sets arguments to both of stack and registers,
 * So can run the executable object on FreeBSD and Linux without conversion.
 */

#define SAVE \
	/* save registers */ \
	push	%edx ; \
	push	%ecx ; \
	push	%ebx ; \
	/* save system call code */ \
	push	%eax ; \
	/* setup system call arguments to registers for Linux */ \
	mov	28(%esp), %edx ; \
	mov	24(%esp), %ecx ; \
	mov	20(%esp), %ebx ; \
	/* load return address */ \
	mov	16(%esp), %eax ; \
	/* setup system call arguments to stack for FreeBSD/NetBSD */ \
	push	%edx ; \
	push	%ecx ; \
	push	%ebx ; \
	/* setup return address to stack */ \
	push	%eax ; \
	/* restore system call code */ \
	mov	16(%esp), %eax

#define RESTORE \
	/* discard stack used by return address */ \
	pop	%ebx ; \
	/* discard stack used by system call arguments */ \
	pop	%ebx ; \
	pop	%ebx ; \
	pop	%ebx ; \
	/* discard stack used by system call code */ \
	pop	%ebx ; \
	/* restore registers */ \
	pop	%ebx ; \
	pop	%ecx ; \
	pop	%edx

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	mov	$_estack, %esp
	call	_startmain

	push	%eax
	call	__exit

	.globl	__exit
	.type	__exit, @function
__exit:
	mov	$SYS_exit, %eax
	jmp	_syscall

	.globl	__read
	.type	__read, @function
__read:
	mov	$SYS_read, %eax
	jmp	_syscall

	.globl	__write
	.type	__write, @function
__write:
	mov	$SYS_write, %eax
	jmp	_syscall

	.globl	__open
	.type	__open, @function
__open:
	mov	$SYS_open, %eax
	jmp	_syscall

	.globl	__close
	.type	__close, @function
__close:
	mov	$SYS_close, %eax
	jmp	_syscall

_syscall:
	SAVE
	clc
	int	$0x80
	jnc	ret
	cmpl	$0, %eax
	jle	ret
	neg	%eax
ret:
	RESTORE
	ret
