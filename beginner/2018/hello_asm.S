.global hello_asm

hello_asm:
    push %ebp
    mov %esp, %ebp

    mov 8(%ebp), %eax
    push %eax
    call printf

    leave
    ret
