bits 64


section .text

global _start


_start:
    mov rsi, rax
    xor edi, edi
    xor eax, eax
    syscall
