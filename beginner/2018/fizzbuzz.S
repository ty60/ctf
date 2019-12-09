.global main


main:
    push %ebp
    mov %esp, %ebp

    mov $0, %edi

fizzbuzz:
    mov %edi, %eax
    mov $0, %edx

    mov $15, %ebx
    div %ebx
    test %edx, %edx
    jnz fizz

    push %edi
    push $str_fb
    call printf
    jmp end

fizz:
    mov %edi, %eax
    mov $0, %edx

    mov $3, %ebx
    div %ebx
    test %edx, %edx
    jnz buzz

    push %edi
    push $str_f
    call printf
    jmp end

buzz:
    mov %edi, %eax
    mov $0, %edx

    mov $5, %ebx
    div %ebx
    test %edx, %edx
    jnz none

    push %edi
    push $str_b
    call printf

none:
    push %edi
    push $str
    call printf

end:
    add $1, %edi
    cmp $100, %edi
    jl fizzbuzz

leave
ret


str: .string "%d\n"
str_fb: .string "%d fizz buzz\n"
str_f: .string "%d fizz\n"
str_b: .string "%d buzz\n"
