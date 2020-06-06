global _start
section .text
_start:
  mov rsi, [rax]
  add rsi, 0x14
  mov rdx, 0x50
  xor rax, rax
  syscall
