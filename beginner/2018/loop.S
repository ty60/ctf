.global main


main:
    push %ebp
    mov %esp, %ebp

    mov $0, %ebx
    mov $0, %ecx

    loop:
    add %ebx, %ecx
    add $1, %ebx
    cmp $10, %ebx
    jl loop

    push %ecx
    push $str
    call printf

    leave
    ret


str: .string "%d\n"
