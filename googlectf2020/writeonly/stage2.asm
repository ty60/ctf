bits 64


global _start

section .text


_start:
    sub rsp, 0x100
    ; mov rax, 0x67616c662f7265
    ; push rax
    ; mov rax, 0x73752f656d6f682f
    ; push rax
    ; write(1, "/home/user/flag", 15) // for debug
    mov rax, 1
    mov rdi, 1
    ; lea rsi, rsp
    lea rsi, [rel path]
    mov rdx, 15
    syscall
    ; open("/home/user/flag", 2)
    mov rax, 2
    lea rdi, [rel path]
    mov rsi, 2
    syscall
    ; read(fd, buf, 0x50)
    mov rdi, rax
    mov rax, 0
    mov rsi, rsp
    mov rdx, 0x10
    syscall
    ; write(1, buf, 0x50)
    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 0x50
    ; syscall

path:
    db "/home/user/flag", 0x0
