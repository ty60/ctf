.global main


main:
push %rbp
mov %rsp, %rbp

mov $str, %rdi
call printf

leave
ret


str: .string "hello world\n"
