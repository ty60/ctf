.intel_syntax noprefix

#include <sys/syscall.h>

.global open
.global lseek
.global read
.global write
.global close
.global exit
.global socket
.global pause
.global execve
// .global shell
.global userloop

open:
	mov rax, SYS_open
	syscall
	ret

lseek:
	mov rax, SYS_lseek
	syscall
	ret

read:
	mov rax, SYS_read
	syscall
	ret

write:
	mov rax, SYS_write
	syscall
	ret

close:
	mov rax, SYS_close
	syscall
	ret

exit:
	mov rax, SYS_exit
	syscall
	ret

socket:
	mov rax, SYS_socket
	syscall
	ret

pause:
	mov rax, SYS_pause
	syscall
	ret

execve:
	mov rax, SYS_execve
	syscall
	ret


shell:
	lea rdi, [rip + sh]
	xor esi, esi
	xor edx, edx
	jmp execve
sh:
	.asciz "/bin/sh"

userloop:
	jmp userloop
