.global main


mul3:
    push %ebp
    mov %esp, %ebp

    mov 8(%ebp), %eax

    mov $3, %ebx
    mul %ebx

    leave
    ret


main:
    push %ebp
    mov %esp, %ebp

    push $9
    call mul3

    push %eax
    push $str
    call printf

    leave
    ret


str: .string "%d\n"
