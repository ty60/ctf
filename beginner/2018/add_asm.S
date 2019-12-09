.global main


main:
    push %ebp
    mov %esp, %ebp

    push $10
    push $20
    call add

    push %eax
    push $str
    call printf

    leave
    ret


str: .string "%d\n"
