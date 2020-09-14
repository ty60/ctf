call   7b0 <citizen_secret@plt>
mov    QWORD PTR [rbp-0x8],rax
mov    BYTE PTR [rbp-0x17],0x0
mov    BYTE PTR [rbp-0x16],0x0
mov    DWORD PTR [rbp-0x14],0x0
jmp    b67 <emperor_flag+0x142>
movzx  eax,BYTE PTR [rbp-0x17]
add    eax,0x1
mov    BYTE PTR [rbp-0x17],al
movzx  edx,BYTE PTR [rbp-0x17]
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rdx
movzx  eax,BYTE PTR [rax]
add    BYTE PTR [rbp-0x16],al
movzx  edx,BYTE PTR [rbp-0x17]
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rdx
movzx  eax,BYTE PTR [rax]
mov    BYTE PTR [rbp-0x15],al
movzx  edx,BYTE PTR [rbp-0x16]
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rdx
movzx  ecx,BYTE PTR [rbp-0x17]
mov    rdx,QWORD PTR [rbp-0x8]
add    rdx,rcx
movzx  eax,BYTE PTR [rax]
mov    BYTE PTR [rdx],al
movzx  edx,BYTE PTR [rbp-0x16]
mov    rax,QWORD PTR [rbp-0x8]
add    rdx,rax
movzx  eax,BYTE PTR [rbp-0x15]
mov    BYTE PTR [rdx],al
mov    rdx,QWORD PTR [rip+0x2014bc]
mov    eax,DWORD PTR [rbp-0x14]
cdqe   
movzx  esi,BYTE PTR [rdx+rax*1]
movzx  edx,BYTE PTR [rbp-0x17]
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rdx
movzx  eax,BYTE PTR [rax]
movzx  edx,al
movzx  ecx,BYTE PTR [rbp-0x16]
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rcx
movzx  eax,BYTE PTR [rax]
movzx  eax,al
add    eax,edx
cdqe   
movzx  edx,al
mov    rax,QWORD PTR [rbp-0x8]
add    rax,rdx
movzx  ecx,BYTE PTR [rax]
mov    eax,DWORD PTR [rbp-0x14]
movsxd rdx,eax
mov    rax,QWORD PTR [rbp-0x10]
add    rax,rdx
xor    esi,ecx
mov    edx,esi
mov    BYTE PTR [rax],dl
add    DWORD PTR [rbp-0x14],0x1
cmp    DWORD PTR [rbp-0x14],0x12
jle    ab5 <emperor_flag+0x90>
mov    rax,QWORD PTR [rbp-0x10]
leave  
ret    
