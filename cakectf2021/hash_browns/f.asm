bits 64
section .text
global f

f:
    push   rbp
    mov    rbp,rsp
    sub    rsp,0x30
    mov    dword [rbp-0x14],edi
    mov    dword [rbp-0x18],esi
    mov    [rbp-0x20],rdx
    mov    [rbp-0x28],rcx
    cmp    dword  [rbp-0x18],0x0
    jne    L1
    mov    rax,[rbp-0x20]
    mov    dword [rax],0x1
    mov    rax,[rbp-0x28]
    mov    dword [rax],0x0
    mov    eax,[rbp-0x14]
    jmp    L2
L1:
    mov    eax,[rbp-0x14]
    cdq
    idiv   dword [rbp-0x18]
    mov    esi,edx
    mov    rcx,[rbp-0x20]
    mov    rdx,[rbp-0x28]
    mov    eax,[rbp-0x18]
    mov    edi,eax
    call   f
    mov    [rbp-0x4],eax
    mov    rax,[rbp-0x28]
    mov    ecx,[rax]
    mov    eax,[rbp-0x14]
    cdq
    idiv   dword [rbp-0x18]
    mov    edx,eax
    mov    rax,[rbp-0x20]
    mov    eax,[rax]
    imul   eax,edx
    sub    ecx,eax
    mov    edx,ecx
    mov    rax,[rbp-0x28]
    mov    dword [rax],edx
    mov    eax,[rbp-0x4]
L2:
    leave
    ret
