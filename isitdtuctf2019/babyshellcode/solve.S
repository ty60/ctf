.intel_syntax noprefix
.text
    .global _start

_start:
    mov rax, 0xcafe000
    mov rbx, 0xcafe028
    mov rcx, [rbx]
    xor [rax], rcx
    xor [rax + 0x8],  rcx
    xor [rax + 0x10], rcx
    xor [rax + 0x18], rcx
    xor [rax + 0x20], rcx
    xor [rax + 0x28], rcx
    mov rcx, [rax + 0x2]
    mov rdx, 0x6a
    and rcx, 0xff
    and rdx, 0xff
loop:
    cmp rdx, rcx
    je loop
