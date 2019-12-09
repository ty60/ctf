
./product_key:     file format elf64-x86-64


Disassembly of section .init:

0000000000000760 <_init>:
 760:	48 83 ec 08          	sub    rsp,0x8
 764:	48 8b 05 7d 18 20 00 	mov    rax,QWORD PTR [rip+0x20187d]        # 201fe8 <_GLOBAL_OFFSET_TABLE_+0x70>
 76b:	48 85 c0             	test   rax,rax
 76e:	74 02                	je     772 <_init+0x12>
 770:	ff d0                	call   rax
 772:	48 83 c4 08          	add    rsp,0x8
 776:	c3                   	ret    

Disassembly of section .plt:

0000000000000780 <strncmp@plt-0x10>:
 780:	ff 35 fa 17 20 00    	push   QWORD PTR [rip+0x2017fa]        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x8>
 786:	ff 25 fc 17 20 00    	jmp    QWORD PTR [rip+0x2017fc]        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x10>
 78c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000790 <strncmp@plt>:
 790:	ff 25 fa 17 20 00    	jmp    QWORD PTR [rip+0x2017fa]        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x18>
 796:	68 00 00 00 00       	push   0x0
 79b:	e9 e0 ff ff ff       	jmp    780 <_init+0x20>

00000000000007a0 <puts@plt>:
 7a0:	ff 25 f2 17 20 00    	jmp    QWORD PTR [rip+0x2017f2]        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x20>
 7a6:	68 01 00 00 00       	push   0x1
 7ab:	e9 d0 ff ff ff       	jmp    780 <_init+0x20>

00000000000007b0 <strlen@plt>:
 7b0:	ff 25 ea 17 20 00    	jmp    QWORD PTR [rip+0x2017ea]        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x28>
 7b6:	68 02 00 00 00       	push   0x2
 7bb:	e9 c0 ff ff ff       	jmp    780 <_init+0x20>

00000000000007c0 <__stack_chk_fail@plt>:
 7c0:	ff 25 e2 17 20 00    	jmp    QWORD PTR [rip+0x2017e2]        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x30>
 7c6:	68 03 00 00 00       	push   0x3
 7cb:	e9 b0 ff ff ff       	jmp    780 <_init+0x20>

00000000000007d0 <__printf_chk@plt>:
 7d0:	ff 25 da 17 20 00    	jmp    QWORD PTR [rip+0x2017da]        # 201fb0 <_GLOBAL_OFFSET_TABLE_+0x38>
 7d6:	68 04 00 00 00       	push   0x4
 7db:	e9 a0 ff ff ff       	jmp    780 <_init+0x20>

00000000000007e0 <strtok@plt>:
 7e0:	ff 25 d2 17 20 00    	jmp    QWORD PTR [rip+0x2017d2]        # 201fb8 <_GLOBAL_OFFSET_TABLE_+0x40>
 7e6:	68 05 00 00 00       	push   0x5
 7eb:	e9 90 ff ff ff       	jmp    780 <_init+0x20>

00000000000007f0 <fwrite@plt>:
 7f0:	ff 25 ca 17 20 00    	jmp    QWORD PTR [rip+0x2017ca]        # 201fc0 <_GLOBAL_OFFSET_TABLE_+0x48>
 7f6:	68 06 00 00 00       	push   0x6
 7fb:	e9 80 ff ff ff       	jmp    780 <_init+0x20>

0000000000000800 <__fprintf_chk@plt>:
 800:	ff 25 c2 17 20 00    	jmp    QWORD PTR [rip+0x2017c2]        # 201fc8 <_GLOBAL_OFFSET_TABLE_+0x50>
 806:	68 07 00 00 00       	push   0x7
 80b:	e9 70 ff ff ff       	jmp    780 <_init+0x20>

0000000000000810 <__strncat_chk@plt>:
 810:	ff 25 ba 17 20 00    	jmp    QWORD PTR [rip+0x2017ba]        # 201fd0 <_GLOBAL_OFFSET_TABLE_+0x58>
 816:	68 08 00 00 00       	push   0x8
 81b:	e9 60 ff ff ff       	jmp    780 <_init+0x20>

Disassembly of section .plt.got:

0000000000000820 <.plt.got>:
 820:	ff 25 d2 17 20 00    	jmp    QWORD PTR [rip+0x2017d2]        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x80>
 826:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000830 <main>:
 830:	55                   	push   rbp
 831:	53                   	push   rbx
 832:	66 0f ef c0          	pxor   xmm0,xmm0
 836:	48 83 ec 58          	sub    rsp,0x58
 83a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 841:	00 00 
 843:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
 848:	31 c0                	xor    eax,eax
 84a:	83 ff 01             	cmp    edi,0x1
 84d:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
 852:	0f 29 44 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm0
 857:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
 85c:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
 860:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
 865:	0f 8e 58 01 00 00    	jle    9c3 <main+0x193>
 86b:	48 8b 5e 08          	mov    rbx,QWORD PTR [rsi+0x8]
 86f:	48 89 df             	mov    rdi,rbx
 872:	e8 39 ff ff ff       	call   7b0 <strlen@plt>
 877:	48 83 f8 27          	cmp    rax,0x27
 87b:	74 3f                	je     8bc <main+0x8c>
 87d:	48 8b 0d 9c 17 20 00 	mov    rcx,QWORD PTR [rip+0x20179c]        # 202020 <__TMC_END__>
 884:	48 8d 3d 32 05 00 00 	lea    rdi,[rip+0x532]        # dbd <_IO_stdin_used+0x1d>
 88b:	ba 14 00 00 00       	mov    edx,0x14
 890:	be 01 00 00 00       	mov    esi,0x1
 895:	bd 01 00 00 00       	mov    ebp,0x1
 89a:	e8 51 ff ff ff       	call   7f0 <fwrite@plt>
 89f:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
 8a4:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
 8ab:	00 00 
 8ad:	89 e8                	mov    eax,ebp
 8af:	0f 85 4e 01 00 00    	jne    a03 <main+0x1d3>
 8b5:	48 83 c4 58          	add    rsp,0x58
 8b9:	5b                   	pop    rbx
 8ba:	5d                   	pop    rbp
 8bb:	c3                   	ret    
 8bc:	48 8d 35 0f 05 00 00 	lea    rsi,[rip+0x50f]        # dd2 <_IO_stdin_used+0x32>
 8c3:	48 89 df             	mov    rdi,rbx
 8c6:	48 8d 2d 05 05 00 00 	lea    rbp,[rip+0x505]        # dd2 <_IO_stdin_used+0x32>
 8cd:	48 8d 5c 24 20       	lea    rbx,[rsp+0x20]
 8d2:	e8 09 ff ff ff       	call   7e0 <strtok@plt>
 8d7:	48 85 c0             	test   rax,rax
 8da:	74 28                	je     904 <main+0xd4>
 8dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 8e0:	b9 21 00 00 00       	mov    ecx,0x21
 8e5:	ba 04 00 00 00       	mov    edx,0x4
 8ea:	48 89 c6             	mov    rsi,rax
 8ed:	48 89 df             	mov    rdi,rbx
 8f0:	e8 1b ff ff ff       	call   810 <__strncat_chk@plt>
 8f5:	31 ff                	xor    edi,edi
 8f7:	48 89 ee             	mov    rsi,rbp
 8fa:	e8 e1 fe ff ff       	call   7e0 <strtok@plt>
 8ff:	48 85 c0             	test   rax,rax
 902:	75 dc                	jne    8e0 <main+0xb0>
 904:	48 8b 35 0d 17 20 00 	mov    rsi,QWORD PTR [rip+0x20170d]        # 202018 <table>
 90b:	31 c0                	xor    eax,eax
 90d:	48 83 c9 ff          	or     rcx,0xffffffffffffffff
 911:	48 89 f7             	mov    rdi,rsi
 914:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
 916:	48 89 c8             	mov    rax,rcx
 919:	48 f7 d0             	not    rax
 91c:	48 83 e8 01          	sub    rax,0x1
 920:	85 c0                	test   eax,eax
 922:	7e 25                	jle    949 <main+0x119>
 924:	8d 48 ff             	lea    ecx,[rax-0x1]
 927:	48 8d 3d 12 17 20 00 	lea    rdi,[rip+0x201712]        # 202040 <inv_table>
 92e:	31 c0                	xor    eax,eax
 930:	48 83 c1 01          	add    rcx,0x1
 934:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 938:	48 0f be 14 06       	movsx  rdx,BYTE PTR [rsi+rax*1]
 93d:	88 04 17             	mov    BYTE PTR [rdi+rdx*1],al
 940:	48 83 c0 01          	add    rax,0x1
 944:	48 39 c1             	cmp    rcx,rax
 947:	75 ef                	jne    938 <main+0x108>
 949:	48 89 e5             	mov    rbp,rsp
 94c:	48 89 df             	mov    rdi,rbx
 94f:	48 89 ee             	mov    rsi,rbp
 952:	e8 09 02 00 00       	call   b60 <decode>
 957:	48 8d 75 10          	lea    rsi,[rbp+0x10]
 95b:	48 89 ea             	mov    rdx,rbp
 95e:	31 c0                	xor    eax,eax
 960:	89 c1                	mov    ecx,eax
 962:	48 83 c2 01          	add    rdx,0x1
 966:	c1 e1 05             	shl    ecx,0x5
 969:	29 c1                	sub    ecx,eax
 96b:	0f be 42 ff          	movsx  eax,BYTE PTR [rdx-0x1]
 96f:	01 c8                	add    eax,ecx
 971:	48 39 d6             	cmp    rsi,rdx
 974:	75 ea                	jne    960 <main+0x130>
 976:	39 44 24 10          	cmp    DWORD PTR [rsp+0x10],eax
 97a:	0f 85 fd fe ff ff    	jne    87d <main+0x4d>
 980:	48 8d 35 4d 04 00 00 	lea    rsi,[rip+0x44d]        # dd4 <_IO_stdin_used+0x34>
 987:	48 89 ea             	mov    rdx,rbp
 98a:	bf 01 00 00 00       	mov    edi,0x1
 98f:	31 c0                	xor    eax,eax
 991:	e8 3a fe ff ff       	call   7d0 <__printf_chk@plt>
 996:	48 8d 35 46 04 00 00 	lea    rsi,[rip+0x446]        # de3 <_IO_stdin_used+0x43>
 99d:	48 89 ef             	mov    rdi,rbp
 9a0:	ba 10 00 00 00       	mov    edx,0x10
 9a5:	e8 e6 fd ff ff       	call   790 <strncmp@plt>
 9aa:	85 c0                	test   eax,eax
 9ac:	89 c5                	mov    ebp,eax
 9ae:	74 38                	je     9e8 <main+0x1b8>
 9b0:	48 8d 3d 3d 04 00 00 	lea    rdi,[rip+0x43d]        # df4 <_IO_stdin_used+0x54>
 9b7:	31 ed                	xor    ebp,ebp
 9b9:	e8 e2 fd ff ff       	call   7a0 <puts@plt>
 9be:	e9 dc fe ff ff       	jmp    89f <main+0x6f>
 9c3:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
 9c6:	48 8b 3d 53 16 20 00 	mov    rdi,QWORD PTR [rip+0x201653]        # 202020 <__TMC_END__>
 9cd:	48 8d 15 d0 03 00 00 	lea    rdx,[rip+0x3d0]        # da4 <_IO_stdin_used+0x4>
 9d4:	be 01 00 00 00       	mov    esi,0x1
 9d9:	bd 01 00 00 00       	mov    ebp,0x1
 9de:	e8 1d fe ff ff       	call   800 <__fprintf_chk@plt>
 9e3:	e9 b7 fe ff ff       	jmp    89f <main+0x6f>
 9e8:	48 8d 35 19 04 00 00 	lea    rsi,[rip+0x419]        # e08 <_IO_stdin_used+0x68>
 9ef:	48 89 da             	mov    rdx,rbx
 9f2:	bf 01 00 00 00       	mov    edi,0x1
 9f7:	31 c0                	xor    eax,eax
 9f9:	e8 d2 fd ff ff       	call   7d0 <__printf_chk@plt>
 9fe:	e9 9c fe ff ff       	jmp    89f <main+0x6f>
 a03:	e8 b8 fd ff ff       	call   7c0 <__stack_chk_fail@plt>
 a08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 a0f:	00 

0000000000000a10 <_start>:
 a10:	31 ed                	xor    ebp,ebp
 a12:	49 89 d1             	mov    r9,rdx
 a15:	5e                   	pop    rsi
 a16:	48 89 e2             	mov    rdx,rsp
 a19:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 a1d:	50                   	push   rax
 a1e:	54                   	push   rsp
 a1f:	4c 8d 05 6a 03 00 00 	lea    r8,[rip+0x36a]        # d90 <__libc_csu_fini>
 a26:	48 8d 0d f3 02 00 00 	lea    rcx,[rip+0x2f3]        # d20 <__libc_csu_init>
 a2d:	48 8d 3d fc fd ff ff 	lea    rdi,[rip+0xfffffffffffffdfc]        # 830 <main>
 a34:	ff 15 a6 15 20 00    	call   QWORD PTR [rip+0x2015a6]        # 201fe0 <_GLOBAL_OFFSET_TABLE_+0x68>
 a3a:	f4                   	hlt    
 a3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000a40 <deregister_tm_clones>:
 a40:	48 8d 3d d9 15 20 00 	lea    rdi,[rip+0x2015d9]        # 202020 <__TMC_END__>
 a47:	55                   	push   rbp
 a48:	48 8d 05 d1 15 20 00 	lea    rax,[rip+0x2015d1]        # 202020 <__TMC_END__>
 a4f:	48 39 f8             	cmp    rax,rdi
 a52:	48 89 e5             	mov    rbp,rsp
 a55:	74 19                	je     a70 <deregister_tm_clones+0x30>
 a57:	48 8b 05 7a 15 20 00 	mov    rax,QWORD PTR [rip+0x20157a]        # 201fd8 <_GLOBAL_OFFSET_TABLE_+0x60>
 a5e:	48 85 c0             	test   rax,rax
 a61:	74 0d                	je     a70 <deregister_tm_clones+0x30>
 a63:	5d                   	pop    rbp
 a64:	ff e0                	jmp    rax
 a66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 a6d:	00 00 00 
 a70:	5d                   	pop    rbp
 a71:	c3                   	ret    
 a72:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 a76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 a7d:	00 00 00 

0000000000000a80 <register_tm_clones>:
 a80:	48 8d 3d 99 15 20 00 	lea    rdi,[rip+0x201599]        # 202020 <__TMC_END__>
 a87:	48 8d 35 92 15 20 00 	lea    rsi,[rip+0x201592]        # 202020 <__TMC_END__>
 a8e:	55                   	push   rbp
 a8f:	48 29 fe             	sub    rsi,rdi
 a92:	48 89 e5             	mov    rbp,rsp
 a95:	48 c1 fe 03          	sar    rsi,0x3
 a99:	48 89 f0             	mov    rax,rsi
 a9c:	48 c1 e8 3f          	shr    rax,0x3f
 aa0:	48 01 c6             	add    rsi,rax
 aa3:	48 d1 fe             	sar    rsi,1
 aa6:	74 18                	je     ac0 <register_tm_clones+0x40>
 aa8:	48 8b 05 41 15 20 00 	mov    rax,QWORD PTR [rip+0x201541]        # 201ff0 <_GLOBAL_OFFSET_TABLE_+0x78>
 aaf:	48 85 c0             	test   rax,rax
 ab2:	74 0c                	je     ac0 <register_tm_clones+0x40>
 ab4:	5d                   	pop    rbp
 ab5:	ff e0                	jmp    rax
 ab7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 abe:	00 00 
 ac0:	5d                   	pop    rbp
 ac1:	c3                   	ret    
 ac2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 ac6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 acd:	00 00 00 

0000000000000ad0 <__do_global_dtors_aux>:
 ad0:	80 3d 51 15 20 00 00 	cmp    BYTE PTR [rip+0x201551],0x0        # 202028 <completed.7696>
 ad7:	75 2f                	jne    b08 <__do_global_dtors_aux+0x38>
 ad9:	48 83 3d 17 15 20 00 	cmp    QWORD PTR [rip+0x201517],0x0        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x80>
 ae0:	00 
 ae1:	55                   	push   rbp
 ae2:	48 89 e5             	mov    rbp,rsp
 ae5:	74 0c                	je     af3 <__do_global_dtors_aux+0x23>
 ae7:	48 8b 3d 1a 15 20 00 	mov    rdi,QWORD PTR [rip+0x20151a]        # 202008 <__dso_handle>
 aee:	e8 2d fd ff ff       	call   820 <__strncat_chk@plt+0x10>
 af3:	e8 48 ff ff ff       	call   a40 <deregister_tm_clones>
 af8:	c6 05 29 15 20 00 01 	mov    BYTE PTR [rip+0x201529],0x1        # 202028 <completed.7696>
 aff:	5d                   	pop    rbp
 b00:	c3                   	ret    
 b01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 b08:	f3 c3                	repz ret 
 b0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000b10 <frame_dummy>:
 b10:	55                   	push   rbp
 b11:	48 89 e5             	mov    rbp,rsp
 b14:	5d                   	pop    rbp
 b15:	e9 66 ff ff ff       	jmp    a80 <register_tm_clones>
 b1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000b20 <hash>:
 b20:	85 f6                	test   esi,esi
 b22:	7e 2c                	jle    b50 <hash+0x30>
 b24:	8d 46 ff             	lea    eax,[rsi-0x1]
 b27:	48 8d 4c 07 01       	lea    rcx,[rdi+rax*1+0x1]
 b2c:	31 c0                	xor    eax,eax
 b2e:	66 90                	xchg   ax,ax
 b30:	89 c2                	mov    edx,eax
 b32:	48 83 c7 01          	add    rdi,0x1
 b36:	c1 e2 05             	shl    edx,0x5
 b39:	29 c2                	sub    edx,eax
 b3b:	0f be 47 ff          	movsx  eax,BYTE PTR [rdi-0x1]
 b3f:	01 d0                	add    eax,edx
 b41:	48 39 cf             	cmp    rdi,rcx
 b44:	75 ea                	jne    b30 <hash+0x10>
 b46:	f3 c3                	repz ret 
 b48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 b4f:	00 
 b50:	31 c0                	xor    eax,eax
 b52:	c3                   	ret    
 b53:	0f 1f 00             	nop    DWORD PTR [rax]
 b56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 b5d:	00 00 00 

0000000000000b60 <decode>:
 b60:	55                   	push   rbp
 b61:	53                   	push   rbx
 b62:	48 89 f5             	mov    rbp,rsi
 b65:	48 89 fb             	mov    rbx,rdi
 b68:	48 83 ec 08          	sub    rsp,0x8
 b6c:	e8 3f fc ff ff       	call   7b0 <strlen@plt>
 b71:	8d 14 80             	lea    edx,[rax+rax*4]
 b74:	44 8d 52 07          	lea    r10d,[rdx+0x7]
 b78:	85 d2                	test   edx,edx
 b7a:	44 0f 49 d2          	cmovns r10d,edx
 b7e:	41 c1 fa 03          	sar    r10d,0x3
 b82:	85 c0                	test   eax,eax
 b84:	7e 33                	jle    bb9 <decode+0x59>
 b86:	83 e8 01             	sub    eax,0x1
 b89:	48 89 da             	mov    rdx,rbx
 b8c:	48 8d 44 03 01       	lea    rax,[rbx+rax*1+0x1]
 b91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 b98:	0f b6 35 71 14 20 00 	movzx  esi,BYTE PTR [rip+0x201471]        # 202010 <padding>
 b9f:	40 38 32             	cmp    BYTE PTR [rdx],sil
 ba2:	75 0c                	jne    bb0 <decode+0x50>
 ba4:	48 8b 0d 6d 14 20 00 	mov    rcx,QWORD PTR [rip+0x20146d]        # 202018 <table>
 bab:	0f b6 09             	movzx  ecx,BYTE PTR [rcx]
 bae:	88 0a                	mov    BYTE PTR [rdx],cl
 bb0:	48 83 c2 01          	add    rdx,0x1
 bb4:	48 39 c2             	cmp    rdx,rax
 bb7:	75 df                	jne    b98 <decode+0x38>
 bb9:	45 85 d2             	test   r10d,r10d
 bbc:	0f 8e a3 00 00 00    	jle    c65 <decode+0x105>
 bc2:	41 8d 72 ff          	lea    esi,[r10-0x1]
 bc6:	31 c9                	xor    ecx,ecx
 bc8:	4c 8d 0d 71 14 20 00 	lea    r9,[rip+0x201471]        # 202040 <inv_table>
 bcf:	41 bb cd cc cc cc    	mov    r11d,0xcccccccd
 bd5:	48 83 c6 01          	add    rsi,0x1
 bd9:	eb 30                	jmp    c0b <decode+0xab>
 bdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
 be0:	83 fa 03             	cmp    edx,0x3
 be3:	0f 84 c7 00 00 00    	je     cb0 <decode+0x150>
 be9:	83 fa 04             	cmp    edx,0x4
 bec:	0f 85 9e 00 00 00    	jne    c90 <decode+0x130>
 bf2:	41 c1 e0 05          	shl    r8d,0x5
 bf6:	48 83 c3 02          	add    rbx,0x2
 bfa:	44 09 c7             	or     edi,r8d
 bfd:	40 88 7c 0d 00       	mov    BYTE PTR [rbp+rcx*1+0x0],dil
 c02:	48 83 c1 01          	add    rcx,0x1
 c06:	48 39 f1             	cmp    rcx,rsi
 c09:	74 5a                	je     c65 <decode+0x105>
 c0b:	48 0f be 03          	movsx  rax,BYTE PTR [rbx]
 c0f:	45 0f b6 04 01       	movzx  r8d,BYTE PTR [r9+rax*1]
 c14:	48 0f be 43 01       	movsx  rax,BYTE PTR [rbx+0x1]
 c19:	41 0f b6 3c 01       	movzx  edi,BYTE PTR [r9+rax*1]
 c1e:	89 c8                	mov    eax,ecx
 c20:	41 f7 e3             	mul    r11d
 c23:	c1 ea 02             	shr    edx,0x2
 c26:	8d 04 92             	lea    eax,[rdx+rdx*4]
 c29:	89 ca                	mov    edx,ecx
 c2b:	29 c2                	sub    edx,eax
 c2d:	83 fa 02             	cmp    edx,0x2
 c30:	74 46                	je     c78 <decode+0x118>
 c32:	7f ac                	jg     be0 <decode+0x80>
 c34:	83 fa 01             	cmp    edx,0x1
 c37:	75 57                	jne    c90 <decode+0x130>
 c39:	48 0f be 43 02       	movsx  rax,BYTE PTR [rbx+0x2]
 c3e:	41 c1 e0 06          	shl    r8d,0x6
 c42:	01 ff                	add    edi,edi
 c44:	44 09 c7             	or     edi,r8d
 c47:	48 83 c3 02          	add    rbx,0x2
 c4b:	45 0f b6 04 01       	movzx  r8d,BYTE PTR [r9+rax*1]
 c50:	41 c0 e8 04          	shr    r8b,0x4
 c54:	44 09 c7             	or     edi,r8d
 c57:	40 88 7c 0d 00       	mov    BYTE PTR [rbp+rcx*1+0x0],dil
 c5c:	48 83 c1 01          	add    rcx,0x1
 c60:	48 39 f1             	cmp    rcx,rsi
 c63:	75 a6                	jne    c0b <decode+0xab>
 c65:	4d 63 d2             	movsxd r10,r10d
 c68:	42 c6 44 15 00 00    	mov    BYTE PTR [rbp+r10*1+0x0],0x0
 c6e:	48 83 c4 08          	add    rsp,0x8
 c72:	5b                   	pop    rbx
 c73:	5d                   	pop    rbp
 c74:	c3                   	ret    
 c75:	0f 1f 00             	nop    DWORD PTR [rax]
 c78:	41 c1 e0 04          	shl    r8d,0x4
 c7c:	40 d0 ef             	shr    dil,1
 c7f:	48 83 c3 01          	add    rbx,0x1
 c83:	44 09 c7             	or     edi,r8d
 c86:	40 88 7c 0d 00       	mov    BYTE PTR [rbp+rcx*1+0x0],dil
 c8b:	e9 72 ff ff ff       	jmp    c02 <decode+0xa2>
 c90:	41 c1 e0 03          	shl    r8d,0x3
 c94:	40 c0 ef 02          	shr    dil,0x2
 c98:	48 83 c3 01          	add    rbx,0x1
 c9c:	44 09 c7             	or     edi,r8d
 c9f:	40 88 7c 0d 00       	mov    BYTE PTR [rbp+rcx*1+0x0],dil
 ca4:	e9 59 ff ff ff       	jmp    c02 <decode+0xa2>
 ca9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 cb0:	48 0f be 43 02       	movsx  rax,BYTE PTR [rbx+0x2]
 cb5:	41 c1 e0 07          	shl    r8d,0x7
 cb9:	c1 e7 02             	shl    edi,0x2
 cbc:	44 09 c7             	or     edi,r8d
 cbf:	48 83 c3 02          	add    rbx,0x2
 cc3:	45 0f b6 04 01       	movzx  r8d,BYTE PTR [r9+rax*1]
 cc8:	41 c0 e8 03          	shr    r8b,0x3
 ccc:	44 09 c7             	or     edi,r8d
 ccf:	40 88 7c 0d 00       	mov    BYTE PTR [rbp+rcx*1+0x0],dil
 cd4:	e9 29 ff ff ff       	jmp    c02 <decode+0xa2>
 cd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000000ce0 <init_table>:
 ce0:	53                   	push   rbx
 ce1:	48 89 fb             	mov    rbx,rdi
 ce4:	e8 c7 fa ff ff       	call   7b0 <strlen@plt>
 ce9:	85 c0                	test   eax,eax
 ceb:	7e 24                	jle    d11 <init_table+0x31>
 ced:	8d 48 ff             	lea    ecx,[rax-0x1]
 cf0:	48 8d 35 49 13 20 00 	lea    rsi,[rip+0x201349]        # 202040 <inv_table>
 cf7:	31 c0                	xor    eax,eax
 cf9:	48 83 c1 01          	add    rcx,0x1
 cfd:	0f 1f 00             	nop    DWORD PTR [rax]
 d00:	48 0f be 14 03       	movsx  rdx,BYTE PTR [rbx+rax*1]
 d05:	88 04 16             	mov    BYTE PTR [rsi+rdx*1],al
 d08:	48 83 c0 01          	add    rax,0x1
 d0c:	48 39 c8             	cmp    rax,rcx
 d0f:	75 ef                	jne    d00 <init_table+0x20>
 d11:	5b                   	pop    rbx
 d12:	c3                   	ret    
 d13:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 d1a:	00 00 00 
 d1d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000d20 <__libc_csu_init>:
 d20:	41 57                	push   r15
 d22:	41 56                	push   r14
 d24:	49 89 d7             	mov    r15,rdx
 d27:	41 55                	push   r13
 d29:	41 54                	push   r12
 d2b:	4c 8d 25 46 10 20 00 	lea    r12,[rip+0x201046]        # 201d78 <__frame_dummy_init_array_entry>
 d32:	55                   	push   rbp
 d33:	48 8d 2d 46 10 20 00 	lea    rbp,[rip+0x201046]        # 201d80 <__init_array_end>
 d3a:	53                   	push   rbx
 d3b:	41 89 fd             	mov    r13d,edi
 d3e:	49 89 f6             	mov    r14,rsi
 d41:	4c 29 e5             	sub    rbp,r12
 d44:	48 83 ec 08          	sub    rsp,0x8
 d48:	48 c1 fd 03          	sar    rbp,0x3
 d4c:	e8 0f fa ff ff       	call   760 <_init>
 d51:	48 85 ed             	test   rbp,rbp
 d54:	74 20                	je     d76 <__libc_csu_init+0x56>
 d56:	31 db                	xor    ebx,ebx
 d58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 d5f:	00 
 d60:	4c 89 fa             	mov    rdx,r15
 d63:	4c 89 f6             	mov    rsi,r14
 d66:	44 89 ef             	mov    edi,r13d
 d69:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 d6d:	48 83 c3 01          	add    rbx,0x1
 d71:	48 39 dd             	cmp    rbp,rbx
 d74:	75 ea                	jne    d60 <__libc_csu_init+0x40>
 d76:	48 83 c4 08          	add    rsp,0x8
 d7a:	5b                   	pop    rbx
 d7b:	5d                   	pop    rbp
 d7c:	41 5c                	pop    r12
 d7e:	41 5d                	pop    r13
 d80:	41 5e                	pop    r14
 d82:	41 5f                	pop    r15
 d84:	c3                   	ret    
 d85:	90                   	nop
 d86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 d8d:	00 00 00 

0000000000000d90 <__libc_csu_fini>:
 d90:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000d94 <_fini>:
 d94:	48 83 ec 08          	sub    rsp,0x8
 d98:	48 83 c4 08          	add    rsp,0x8
 d9c:	c3                   	ret    
