        0x40070e                  inc    eax ; eax is pointer to flag
        0x400710                  mov    rdi, rdx ; rdx is pointer to flag
        0x400713                  xor    al, al
        0x400715                  xor    ecx, ecx
        0x400717                  dec    rcx
        0x40071a                  repne scasb al, byte ptr [rdi]
        0x40071c                  not    ecx
        0x40071e                  dec    ecx
        0x400720                  mov    eax, 0x92185987
        0x400725                  xor    eax, 0x32963a85
        0x40072a                  jns    0x4006b7
        0x40072c                  mov    eax, 0xc3bc42d9
        0x400731                  xor    eax, 0x1ed2c907
        0x400736                  jns    0x400742
        0x400738                  push   0x50
        0x40073a                  pop    r9
        0x40073c                  xor    r8d, r8d
        0x40073f                  cmp    r8d, 0x539
        0x400746                  jl     0x400763
        0x400748                  jmp    0x400774
        0x40074a                  dec    eax
        0x40074c                  jmp    0x40074d
        0x40074e                  rol    byte ptr [rcx - 0x7d], 0xc0
        0x400752                  add    dword ptr [rax + 0x669ec28e], edi
        0x400758                  add    eax, 0x99613d72
        0x40075d                  inc    eax
        0x40075f                  jae    0x400724
        0x400761                  jmp    0x40073f
        0x400763                  mov    eax, 0xe72b5c52
        0x400768                  add    eax, 0x18d4a3ae
        0x40076d                  jne    0x400747
        0x40076f                  xor    r11d, r11d
        0x400772                  jmp    0x4007ac
        0x400774                  mov    eax, 0xea3e6566
        0x400779                  xor    eax, 0x5f69faeb
        0x40077e                  jns    0x4007b6
        0x400780                  lea    rax, [rip + 0x164]
        0x400787                  lea    r8, [rax]
        0x40078a                  mov    eax, 0xb5de3358
        0x40078f                  xor    eax, 0x459f236e
        0x400794                  jns    0x400797
        0x400796                  dec    eax
        0x400798                  jmp    0x400799
        0x40079a                  shr    byte ptr [rdx + 1], 0x41
        0x40079e                  pop    rdx
        0x40079f                  dec    eax
        0x4007a1                  jmp    0x4007a2
        0x4007a3                  rol    byte ptr [rbp + 0x33], 0xc9
        0x4007a7                  jmp    0x400834
        0x4007ac                  dec    eax
        0x4007ae                  jmp    0x4007af
        0x4007b0                  rol    byte ptr [rbx + rdi - 0x27], 0x7c
        0x4007b5                  add    ch, bl
        0x4007b7                  xchg   eax, edx
        0x4007b8                  mov    eax, 0x2b71234a
        0x4007bd                  add    eax, 0xd48edcb6
        0x4007c2                  inc    eax
        0x4007c4                  jae    0x400774
        0x4007c6                  movsxd r10, r11d
        0x4007c9                  mov    eax, 0xef8ac85b
        0x4007ce                  xor    eax, 0xe71ae312
        0x4007d3                  js     0x4007ff
        0x4007d5                  mov    rbx, rdx
        0x4007d8                  add    rbx, r10
        0x4007db                  mov    eax, 0x46d3a79d
        0x4007e0                  add    eax, 0xb92c5863
        0x4007e5                  jne    0x4007ee
        0x4007e7                  movsxd r10, r11d
        0x4007ea                  mov    eax, 0xf45102a7
        0x4007ef                  xor    eax, 0xae9accbc
        0x4007f4                  js     0x40085f
        0x4007f6                  mov    rax, rdx
        0x4007f9                  add    rax, r10
        0x4007fc                  mov    al, byte ptr [rax]
        0x4007fe                  xor    al, r9b
        0x400801                  mov    byte ptr [rbx], al
        0x400803                  movsxd r10, r11d
        0x400806                  mov    rax, rdx
        0x400809                  add    rax, r10
        0x40080c                  mov    al, byte ptr [rax]
        0x40080e                  xor    r9b, al
        0x400811                  mov    eax, 0x91ecf78
        0x400816                  add    eax, 0xf6e13088
        0x40081b                  inc    eax
        0x40081d                  jae    0x4007be
        0x40081f                  add    r11d, 1
        0x400823                  mov    eax, 0x15690edd
        0x400828                  xor    eax, 0xd68c1903
        0x40082d                  jns    0x400888
        0x40082f                  jmp    0x4007ac
        0x400834                  mov    eax, 0x4759bfd0
        0x400839                  add    eax, 0xb8a64030
        0x40083e                  inc    eax
        0x400840                  jae    0x400847
        0x400842                  cmp    r9d, ecx
        0x400845                  jl     0x400849
        0x400847                  jmp    0x400850
        0x400849                  test   r10b, r10b
        0x40084c                  jne    0x400857
        0x40084e                  jmp    0x40089f
        0x400850                  mov    al, r10b
        0x400853                  leave
        0x400854                  pop    rdi
        0x400855                  pop    rbx
        0x400856                  ret
