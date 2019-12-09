.global mul

mul:
    push %ebp
    mov %esp, %ebp

    mov 8(%ebp), %ebx
    mov 12(%ebp), %ecx
    mov $1, %eax


    mul %ebx
    mul %ecx

    leave
    ret
