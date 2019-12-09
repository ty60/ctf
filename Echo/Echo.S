
./Echo:     file format elf64-x86-64


Disassembly of section .init:

0000000000000770 <.init>:
 770:	48 83 ec 08          	sub    rsp,0x8
 774:	48 8b 05 65 18 20 00 	mov    rax,QWORD PTR [rip+0x201865]        # 201fe0 <fwrite@plt+0x2017c0>
 77b:	48 85 c0             	test   rax,rax
 77e:	74 02                	je     782 <putchar@plt-0x1e>
 780:	ff d0                	call   rax
 782:	48 83 c4 08          	add    rsp,0x8
 786:	c3                   	ret    

Disassembly of section .plt:

0000000000000790 <putchar@plt-0x10>:
 790:	ff 35 72 18 20 00    	push   QWORD PTR [rip+0x201872]        # 202008 <fwrite@plt+0x2017e8>
 796:	ff 25 74 18 20 00    	jmp    QWORD PTR [rip+0x201874]        # 202010 <fwrite@plt+0x2017f0>
 79c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000007a0 <putchar@plt>:
 7a0:	ff 25 72 18 20 00    	jmp    QWORD PTR [rip+0x201872]        # 202018 <fwrite@plt+0x2017f8>
 7a6:	68 00 00 00 00       	push   0x0
 7ab:	e9 e0 ff ff ff       	jmp    790 <putchar@plt-0x10>

00000000000007b0 <strncmp@plt>:
 7b0:	ff 25 6a 18 20 00    	jmp    QWORD PTR [rip+0x20186a]        # 202020 <fwrite@plt+0x201800>
 7b6:	68 01 00 00 00       	push   0x1
 7bb:	e9 d0 ff ff ff       	jmp    790 <putchar@plt-0x10>

00000000000007c0 <read@plt>:
 7c0:	ff 25 62 18 20 00    	jmp    QWORD PTR [rip+0x201862]        # 202028 <fwrite@plt+0x201808>
 7c6:	68 02 00 00 00       	push   0x2
 7cb:	e9 c0 ff ff ff       	jmp    790 <putchar@plt-0x10>

00000000000007d0 <getchar@plt>:
 7d0:	ff 25 5a 18 20 00    	jmp    QWORD PTR [rip+0x20185a]        # 202030 <fwrite@plt+0x201810>
 7d6:	68 03 00 00 00       	push   0x3
 7db:	e9 b0 ff ff ff       	jmp    790 <putchar@plt-0x10>

00000000000007e0 <fprintf@plt>:
 7e0:	ff 25 52 18 20 00    	jmp    QWORD PTR [rip+0x201852]        # 202038 <fwrite@plt+0x201818>
 7e6:	68 04 00 00 00       	push   0x4
 7eb:	e9 a0 ff ff ff       	jmp    790 <putchar@plt-0x10>

00000000000007f0 <fflush@plt>:
 7f0:	ff 25 4a 18 20 00    	jmp    QWORD PTR [rip+0x20184a]        # 202040 <fwrite@plt+0x201820>
 7f6:	68 05 00 00 00       	push   0x5
 7fb:	e9 90 ff ff ff       	jmp    790 <putchar@plt-0x10>

0000000000000800 <open@plt>:
 800:	ff 25 42 18 20 00    	jmp    QWORD PTR [rip+0x201842]        # 202048 <fwrite@plt+0x201828>
 806:	68 06 00 00 00       	push   0x6
 80b:	e9 80 ff ff ff       	jmp    790 <putchar@plt-0x10>

0000000000000810 <exit@plt>:
 810:	ff 25 3a 18 20 00    	jmp    QWORD PTR [rip+0x20183a]        # 202050 <fwrite@plt+0x201830>
 816:	68 07 00 00 00       	push   0x7
 81b:	e9 70 ff ff ff       	jmp    790 <putchar@plt-0x10>

0000000000000820 <fwrite@plt>:
 820:	ff 25 32 18 20 00    	jmp    QWORD PTR [rip+0x201832]        # 202058 <fwrite@plt+0x201838>
 826:	68 08 00 00 00       	push   0x8
 82b:	e9 60 ff ff ff       	jmp    790 <putchar@plt-0x10>

Disassembly of section .plt.got:

0000000000000830 <.plt.got>:
 830:	ff 25 c2 17 20 00    	jmp    QWORD PTR [rip+0x2017c2]        # 201ff8 <fwrite@plt+0x2017d8>
 836:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000840 <.text>:
     840:	31 ed                	xor    ebp,ebp
     842:	49 89 d1             	mov    r9,rdx
     845:	5e                   	pop    rsi
     846:	48 89 e2             	mov    rdx,rsp
     849:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     84d:	50                   	push   rax
     84e:	54                   	push   rsp
     84f:	4c 8d 05 8a 09 00 00 	lea    r8,[rip+0x98a]        # 11e0 <fwrite@plt+0x9c0>
     856:	48 8d 0d 13 09 00 00 	lea    rcx,[rip+0x913]        # 1170 <fwrite@plt+0x950>
     85d:	48 8d 3d 18 05 00 00 	lea    rdi,[rip+0x518]        # d7c <fwrite@plt+0x55c>
     864:	ff 15 6e 17 20 00    	call   QWORD PTR [rip+0x20176e]        # 201fd8 <fwrite@plt+0x2017b8>
     86a:	f4                   	hlt    
     86b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
     870:	48 8d 3d f9 17 20 00 	lea    rdi,[rip+0x2017f9]        # 202070 <fwrite@plt+0x201850>
     877:	48 8d 05 f9 17 20 00 	lea    rax,[rip+0x2017f9]        # 202077 <fwrite@plt+0x201857>
     87e:	55                   	push   rbp
     87f:	48 29 f8             	sub    rax,rdi
     882:	48 89 e5             	mov    rbp,rsp
     885:	48 83 f8 0e          	cmp    rax,0xe
     889:	76 15                	jbe    8a0 <fwrite@plt+0x80>
     88b:	48 8b 05 3e 17 20 00 	mov    rax,QWORD PTR [rip+0x20173e]        # 201fd0 <fwrite@plt+0x2017b0>
     892:	48 85 c0             	test   rax,rax
     895:	74 09                	je     8a0 <fwrite@plt+0x80>
     897:	5d                   	pop    rbp
     898:	ff e0                	jmp    rax
     89a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     8a0:	5d                   	pop    rbp
     8a1:	c3                   	ret    
     8a2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     8a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     8ad:	00 00 00 
     8b0:	48 8d 3d b9 17 20 00 	lea    rdi,[rip+0x2017b9]        # 202070 <fwrite@plt+0x201850>
     8b7:	48 8d 35 b2 17 20 00 	lea    rsi,[rip+0x2017b2]        # 202070 <fwrite@plt+0x201850>
     8be:	55                   	push   rbp
     8bf:	48 29 fe             	sub    rsi,rdi
     8c2:	48 89 e5             	mov    rbp,rsp
     8c5:	48 c1 fe 03          	sar    rsi,0x3
     8c9:	48 89 f0             	mov    rax,rsi
     8cc:	48 c1 e8 3f          	shr    rax,0x3f
     8d0:	48 01 c6             	add    rsi,rax
     8d3:	48 d1 fe             	sar    rsi,1
     8d6:	74 18                	je     8f0 <fwrite@plt+0xd0>
     8d8:	48 8b 05 11 17 20 00 	mov    rax,QWORD PTR [rip+0x201711]        # 201ff0 <fwrite@plt+0x2017d0>
     8df:	48 85 c0             	test   rax,rax
     8e2:	74 0c                	je     8f0 <fwrite@plt+0xd0>
     8e4:	5d                   	pop    rbp
     8e5:	ff e0                	jmp    rax
     8e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     8ee:	00 00 
     8f0:	5d                   	pop    rbp
     8f1:	c3                   	ret    
     8f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     8f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     8fd:	00 00 00 
     900:	80 3d a1 17 20 00 00 	cmp    BYTE PTR [rip+0x2017a1],0x0        # 2020a8 <stderr@@GLIBC_2.2.5+0x8>
     907:	75 27                	jne    930 <fwrite@plt+0x110>
     909:	48 83 3d e7 16 20 00 	cmp    QWORD PTR [rip+0x2016e7],0x0        # 201ff8 <fwrite@plt+0x2017d8>
     910:	00 
     911:	55                   	push   rbp
     912:	48 89 e5             	mov    rbp,rsp
     915:	74 0c                	je     923 <fwrite@plt+0x103>
     917:	48 8b 3d 4a 17 20 00 	mov    rdi,QWORD PTR [rip+0x20174a]        # 202068 <fwrite@plt+0x201848>
     91e:	e8 0d ff ff ff       	call   830 <fwrite@plt+0x10>
     923:	e8 48 ff ff ff       	call   870 <fwrite@plt+0x50>
     928:	5d                   	pop    rbp
     929:	c6 05 78 17 20 00 01 	mov    BYTE PTR [rip+0x201778],0x1        # 2020a8 <stderr@@GLIBC_2.2.5+0x8>
     930:	f3 c3                	repz ret 
     932:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     936:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     93d:	00 00 00 
     940:	48 8d 3d a1 14 20 00 	lea    rdi,[rip+0x2014a1]        # 201de8 <fwrite@plt+0x2015c8>
     947:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
     94b:	75 0b                	jne    958 <fwrite@plt+0x138>
     94d:	e9 5e ff ff ff       	jmp    8b0 <fwrite@plt+0x90>
     952:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     958:	48 8b 05 89 16 20 00 	mov    rax,QWORD PTR [rip+0x201689]        # 201fe8 <fwrite@plt+0x2017c8>
     95f:	48 85 c0             	test   rax,rax
     962:	74 e9                	je     94d <fwrite@plt+0x12d>
     964:	55                   	push   rbp
     965:	48 89 e5             	mov    rbp,rsp
     968:	ff d0                	call   rax
     96a:	5d                   	pop    rbp
     96b:	e9 40 ff ff ff       	jmp    8b0 <fwrite@plt+0x90>
     970:	55                   	push   rbp
     971:	48 89 e5             	mov    rbp,rsp
     974:	48 83 ec 70          	sub    rsp,0x70
     978:	48 89 bd 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rdi
     97f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
     986:	48 b8 3e 3e 5b 3c 2b 	movabs rax,0x3e2b3c2b3c5b3e3e
     98d:	3c 2b 3e 
     990:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
     994:	48 b8 3e 2d 5d 3c 3c 	movabs rax,0x3e2d5b3c3c5d2d3e
     99b:	5b 2d 3e 
     99e:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
     9a2:	c7 45 d0 3e 2b 3c 3c 	mov    DWORD PTR [rbp-0x30],0x3c3c2b3e
     9a9:	66 c7 45 d4 5d 3e    	mov    WORD PTR [rbp-0x2c],0x3e5d
     9af:	c6 45 d6 00          	mov    BYTE PTR [rbp-0x2a],0x0
     9b3:	48 b8 3e 3e 3e 5b 3c 	movabs rax,0x3c2b3c3c5b3e3e3e
     9ba:	3c 2b 3c 
     9bd:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
     9c1:	48 b8 2b 3e 3e 3e 2d 	movabs rax,0x3c3c5d2d3e3e3e2b
     9c8:	5d 3c 3c 
     9cb:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
     9cf:	48 b8 3c 5b 2d 3e 3e 	movabs rax,0x3c2b3e3e3e2d5b3c
     9d6:	3e 2b 3c 
     9d9:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
     9dd:	c7 45 b8 3c 3c 5d 3e 	mov    DWORD PTR [rbp-0x48],0x3e5d3c3c
     9e4:	c6 45 bc 00          	mov    BYTE PTR [rbp-0x44],0x0
     9e8:	48 b8 3e 3e 3e 3e 5b 	movabs rax,0x3c3c3c5b3e3e3e3e
     9ef:	3c 3c 3c 
     9f2:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
     9f9:	48 b8 2b 3c 2b 3e 3e 	movabs rax,0x2d3e3e3e3e2b3c2b
     a00:	3e 3e 2d 
     a03:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
     a0a:	48 b8 5d 3c 3c 3c 3c 	movabs rax,0x3e2d5b3c3c3c3c5d
     a11:	5b 2d 3e 
     a14:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
     a18:	48 b8 3e 3e 3e 2b 3c 	movabs rax,0x3c3c3c3c2b3e3e3e
     a1f:	3c 3c 3c 
     a22:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
     a26:	66 c7 45 90 5d 3e    	mov    WORD PTR [rbp-0x70],0x3e5d
     a2c:	c6 45 92 00          	mov    BYTE PTR [rbp-0x6e],0x0
     a30:	48 b8 3e 3e 3e 3e 3e 	movabs rax,0x3c3c5b3e3e3e3e3e
     a37:	5b 3c 3c 
     a3a:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
     a41:	48 b8 3c 3c 2b 3c 2b 	movabs rax,0x3e3e3e2b3c2b3c3c
     a48:	3e 3e 3e 
     a4b:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
     a52:	48 b8 3e 3e 2d 5d 3c 	movabs rax,0x3c3c3c3c5d2d3e3e
     a59:	3c 3c 3c 
     a5c:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
     a63:	48 b8 3c 5b 2d 3e 3e 	movabs rax,0x3e3e3e3e3e2d5b3c
     a6a:	3e 3e 3e 
     a6d:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
     a74:	48 b8 2b 3c 3c 3c 3c 	movabs rax,0x3e5d3c3c3c3c3c2b
     a7b:	3c 5d 3e 
     a7e:	48 89 85 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rax
     a85:	c6 85 68 ff ff ff 00 	mov    BYTE PTR [rbp-0x98],0x0
     a8c:	48 8d 45 c0          	lea    rax,[rbp-0x40]
     a90:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
     a97:	48 8d 45 a0          	lea    rax,[rbp-0x60]
     a9b:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
     aa2:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     aa9:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
     ab0:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
     ab7:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
     abe:	c7 45 f8 06 00 00 00 	mov    DWORD PTR [rbp-0x8],0x6
     ac5:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
     acc:	e9 50 01 00 00       	jmp    c21 <fwrite@plt+0x401>
     ad1:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
     ad8:	eb 34                	jmp    b0e <fwrite@plt+0x2ee>
     ada:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     add:	8d 50 01             	lea    edx,[rax+0x1]
     ae0:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     ae3:	48 63 d0             	movsxd rdx,eax
     ae6:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     aed:	48 01 c2             	add    rdx,rax
     af0:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     af3:	48 98                	cdqe   
     af5:	48 8b 8c c5 20 ff ff 	mov    rcx,QWORD PTR [rbp+rax*8-0xe0]
     afc:	ff 
     afd:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
     b00:	48 98                	cdqe   
     b02:	48 01 c8             	add    rax,rcx
     b05:	0f b6 00             	movzx  eax,BYTE PTR [rax]
     b08:	88 02                	mov    BYTE PTR [rdx],al
     b0a:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
     b0e:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     b11:	48 98                	cdqe   
     b13:	48 8b 94 c5 20 ff ff 	mov    rdx,QWORD PTR [rbp+rax*8-0xe0]
     b1a:	ff 
     b1b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
     b1e:	48 98                	cdqe   
     b20:	48 01 d0             	add    rax,rdx
     b23:	0f b6 00             	movzx  eax,BYTE PTR [rax]
     b26:	84 c0                	test   al,al
     b28:	75 b0                	jne    ada <fwrite@plt+0x2ba>
     b2a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b2d:	8d 50 01             	lea    edx,[rax+0x1]
     b30:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     b33:	48 63 d0             	movsxd rdx,eax
     b36:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     b3d:	48 01 d0             	add    rax,rdx
     b40:	c6 00 5b             	mov    BYTE PTR [rax],0x5b
     b43:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [rbp-0x14],0x1
     b4a:	eb 1d                	jmp    b69 <fwrite@plt+0x349>
     b4c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b4f:	8d 50 01             	lea    edx,[rax+0x1]
     b52:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     b55:	48 63 d0             	movsxd rdx,eax
     b58:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     b5f:	48 01 d0             	add    rax,rdx
     b62:	c6 00 3e             	mov    BYTE PTR [rax],0x3e
     b65:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
     b69:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     b6c:	3b 45 f8             	cmp    eax,DWORD PTR [rbp-0x8]
     b6f:	7c db                	jl     b4c <fwrite@plt+0x32c>
     b71:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b74:	8d 50 01             	lea    edx,[rax+0x1]
     b77:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     b7a:	48 63 d0             	movsxd rdx,eax
     b7d:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     b84:	48 01 d0             	add    rax,rdx
     b87:	c6 00 2b             	mov    BYTE PTR [rax],0x2b
     b8a:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [rbp-0x18],0x1
     b91:	eb 1d                	jmp    bb0 <fwrite@plt+0x390>
     b93:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b96:	8d 50 01             	lea    edx,[rax+0x1]
     b99:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     b9c:	48 63 d0             	movsxd rdx,eax
     b9f:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     ba6:	48 01 d0             	add    rax,rdx
     ba9:	c6 00 3c             	mov    BYTE PTR [rax],0x3c
     bac:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
     bb0:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
     bb3:	3b 45 f8             	cmp    eax,DWORD PTR [rbp-0x8]
     bb6:	7c db                	jl     b93 <fwrite@plt+0x373>
     bb8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     bbb:	8d 50 01             	lea    edx,[rax+0x1]
     bbe:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     bc1:	48 63 d0             	movsxd rdx,eax
     bc4:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     bcb:	48 01 d0             	add    rax,rdx
     bce:	c6 00 2d             	mov    BYTE PTR [rax],0x2d
     bd1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     bd4:	8d 50 01             	lea    edx,[rax+0x1]
     bd7:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     bda:	48 63 d0             	movsxd rdx,eax
     bdd:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     be4:	48 01 d0             	add    rax,rdx
     be7:	c6 00 5d             	mov    BYTE PTR [rax],0x5d
     bea:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     bed:	8d 50 01             	lea    edx,[rax+0x1]
     bf0:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     bf3:	48 63 d0             	movsxd rdx,eax
     bf6:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     bfd:	48 01 d0             	add    rax,rdx
     c00:	c6 00 3c             	mov    BYTE PTR [rax],0x3c
     c03:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
     c07:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     c0a:	8d 50 01             	lea    edx,[rax+0x1]
     c0d:	89 d0                	mov    eax,edx
     c0f:	c1 f8 1f             	sar    eax,0x1f
     c12:	c1 e8 1e             	shr    eax,0x1e
     c15:	01 c2                	add    edx,eax
     c17:	83 e2 03             	and    edx,0x3
     c1a:	29 c2                	sub    edx,eax
     c1c:	89 d0                	mov    eax,edx
     c1e:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
     c21:	83 7d f8 1f          	cmp    DWORD PTR [rbp-0x8],0x1f
     c25:	0f 8e a6 fe ff ff    	jle    ad1 <fwrite@plt+0x2b1>
     c2b:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
     c32:	eb 1d                	jmp    c51 <fwrite@plt+0x431>
     c34:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     c37:	8d 50 01             	lea    edx,[rax+0x1]
     c3a:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     c3d:	48 63 d0             	movsxd rdx,eax
     c40:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     c47:	48 01 d0             	add    rax,rdx
     c4a:	c6 00 3e             	mov    BYTE PTR [rax],0x3e
     c4d:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
     c51:	83 7d e4 06          	cmp    DWORD PTR [rbp-0x1c],0x6
     c55:	7e dd                	jle    c34 <fwrite@plt+0x414>
     c57:	c7 45 e0 07 00 00 00 	mov    DWORD PTR [rbp-0x20],0x7
     c5e:	eb 68                	jmp    cc8 <fwrite@plt+0x4a8>
     c60:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     c63:	8d 50 01             	lea    edx,[rax+0x1]
     c66:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     c69:	48 63 d0             	movsxd rdx,eax
     c6c:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     c73:	48 01 d0             	add    rax,rdx
     c76:	c6 00 5b             	mov    BYTE PTR [rax],0x5b
     c79:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     c7c:	8d 50 01             	lea    edx,[rax+0x1]
     c7f:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     c82:	48 63 d0             	movsxd rdx,eax
     c85:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     c8c:	48 01 d0             	add    rax,rdx
     c8f:	c6 00 2b             	mov    BYTE PTR [rax],0x2b
     c92:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     c95:	8d 50 01             	lea    edx,[rax+0x1]
     c98:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     c9b:	48 63 d0             	movsxd rdx,eax
     c9e:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     ca5:	48 01 d0             	add    rax,rdx
     ca8:	c6 00 5d             	mov    BYTE PTR [rax],0x5d
     cab:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cae:	8d 50 01             	lea    edx,[rax+0x1]
     cb1:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     cb4:	48 63 d0             	movsxd rdx,eax
     cb7:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     cbe:	48 01 d0             	add    rax,rdx
     cc1:	c6 00 3e             	mov    BYTE PTR [rax],0x3e
     cc4:	83 45 e0 01          	add    DWORD PTR [rbp-0x20],0x1
     cc8:	83 7d e0 1f          	cmp    DWORD PTR [rbp-0x20],0x1f
     ccc:	7e 92                	jle    c60 <fwrite@plt+0x440>
     cce:	c7 45 dc 07 00 00 00 	mov    DWORD PTR [rbp-0x24],0x7
     cd5:	eb 1d                	jmp    cf4 <fwrite@plt+0x4d4>
     cd7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cda:	8d 50 01             	lea    edx,[rax+0x1]
     cdd:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     ce0:	48 63 d0             	movsxd rdx,eax
     ce3:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     cea:	48 01 d0             	add    rax,rdx
     ced:	c6 00 3c             	mov    BYTE PTR [rax],0x3c
     cf0:	83 45 dc 01          	add    DWORD PTR [rbp-0x24],0x1
     cf4:	83 7d dc 1f          	cmp    DWORD PTR [rbp-0x24],0x1f
     cf8:	7e dd                	jle    cd7 <fwrite@plt+0x4b7>
     cfa:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cfd:	8d 50 01             	lea    edx,[rax+0x1]
     d00:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     d03:	48 63 d0             	movsxd rdx,eax
     d06:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     d0d:	48 01 d0             	add    rax,rdx
     d10:	c6 00 2c             	mov    BYTE PTR [rax],0x2c
     d13:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d16:	8d 50 01             	lea    edx,[rax+0x1]
     d19:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     d1c:	48 63 d0             	movsxd rdx,eax
     d1f:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     d26:	48 01 d0             	add    rax,rdx
     d29:	c6 00 5b             	mov    BYTE PTR [rax],0x5b
     d2c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d2f:	8d 50 01             	lea    edx,[rax+0x1]
     d32:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     d35:	48 63 d0             	movsxd rdx,eax
     d38:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     d3f:	48 01 d0             	add    rax,rdx
     d42:	c6 00 2e             	mov    BYTE PTR [rax],0x2e
     d45:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d48:	8d 50 01             	lea    edx,[rax+0x1]
     d4b:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     d4e:	48 63 d0             	movsxd rdx,eax
     d51:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     d58:	48 01 d0             	add    rax,rdx
     d5b:	c6 00 2c             	mov    BYTE PTR [rax],0x2c
     d5e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d61:	8d 50 01             	lea    edx,[rax+0x1]
     d64:	89 55 fc             	mov    DWORD PTR [rbp-0x4],edx
     d67:	48 63 d0             	movsxd rdx,eax
     d6a:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
     d71:	48 01 d0             	add    rax,rdx
     d74:	c6 00 5d             	mov    BYTE PTR [rax],0x5d
     d77:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d7a:	c9                   	leave  
     d7b:	c3                   	ret    
     d7c:	55                   	push   rbp
     d7d:	48 89 e5             	mov    rbp,rsp
     d80:	48 81 ec 60 27 00 00 	sub    rsp,0x2760
     d87:	89 bd ac d8 ff ff    	mov    DWORD PTR [rbp-0x2754],edi
     d8d:	48 89 b5 a0 d8 ff ff 	mov    QWORD PTR [rbp-0x2760],rsi
     d94:	48 8d 95 40 ec ff ff 	lea    rdx,[rbp-0x13c0]
     d9b:	b8 00 00 00 00       	mov    eax,0x0
     da0:	b9 71 02 00 00       	mov    ecx,0x271
     da5:	48 89 d7             	mov    rdi,rdx
     da8:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
     dab:	48 8d 95 b0 d8 ff ff 	lea    rdx,[rbp-0x2750]
     db2:	b8 00 00 00 00       	mov    eax,0x0
     db7:	b9 71 02 00 00       	mov    ecx,0x271
     dbc:	48 89 d7             	mov    rdi,rdx
     dbf:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
     dc2:	c6 85 b6 d8 ff ff 15 	mov    BYTE PTR [rbp-0x274a],0x15
     dc9:	c6 85 b7 d8 ff ff f3 	mov    BYTE PTR [rbp-0x2749],0xf3
     dd0:	c6 85 b8 d8 ff ff 01 	mov    BYTE PTR [rbp-0x2748],0x1
     dd7:	c6 85 b9 d8 ff ff eb 	mov    BYTE PTR [rbp-0x2747],0xeb
     dde:	c6 85 ba d8 ff ff ce 	mov    BYTE PTR [rbp-0x2746],0xce
     de5:	c6 85 bb d8 ff ff c5 	mov    BYTE PTR [rbp-0x2745],0xc5
     dec:	c6 85 bc d8 ff ff 0d 	mov    BYTE PTR [rbp-0x2744],0xd
     df3:	c6 85 bd d8 ff ff c6 	mov    BYTE PTR [rbp-0x2743],0xc6
     dfa:	c6 85 be d8 ff ff c7 	mov    BYTE PTR [rbp-0x2742],0xc7
     e01:	c6 85 bf d8 ff ff c1 	mov    BYTE PTR [rbp-0x2741],0xc1
     e08:	c6 85 c0 d8 ff ff cb 	mov    BYTE PTR [rbp-0x2740],0xcb
     e0f:	c6 85 c1 d8 ff ff f4 	mov    BYTE PTR [rbp-0x273f],0xf4
     e16:	c6 85 c2 d8 ff ff d8 	mov    BYTE PTR [rbp-0x273e],0xd8
     e1d:	c6 85 c3 d8 ff ff c2 	mov    BYTE PTR [rbp-0x273d],0xc2
     e24:	c6 85 c4 d8 ff ff db 	mov    BYTE PTR [rbp-0x273c],0xdb
     e2b:	c6 85 c5 d8 ff ff f6 	mov    BYTE PTR [rbp-0x273b],0xf6
     e32:	c6 85 c6 d8 ff ff c6 	mov    BYTE PTR [rbp-0x273a],0xc6
     e39:	c6 85 c7 d8 ff ff bf 	mov    BYTE PTR [rbp-0x2739],0xbf
     e40:	c6 85 c8 d8 ff ff fe 	mov    BYTE PTR [rbp-0x2738],0xfe
     e47:	c6 85 c9 d8 ff ff ff 	mov    BYTE PTR [rbp-0x2737],0xff
     e4e:	c6 85 ca d8 ff ff 12 	mov    BYTE PTR [rbp-0x2736],0x12
     e55:	c6 85 cb d8 ff ff 0c 	mov    BYTE PTR [rbp-0x2735],0xc
     e5c:	c6 85 cc d8 ff ff ea 	mov    BYTE PTR [rbp-0x2734],0xea
     e63:	c6 85 cd d8 ff ff f8 	mov    BYTE PTR [rbp-0x2733],0xf8
     e6a:	c6 85 ce d8 ff ff f9 	mov    BYTE PTR [rbp-0x2732],0xf9
     e71:	c6 85 cf d8 ff ff 11 	mov    BYTE PTR [rbp-0x2731],0x11
     e78:	c6 85 b2 d8 ff ff 66 	mov    BYTE PTR [rbp-0x274e],0x66
     e7f:	c6 85 b3 d8 ff ff 6c 	mov    BYTE PTR [rbp-0x274d],0x6c
     e86:	c6 85 b4 d8 ff ff 61 	mov    BYTE PTR [rbp-0x274c],0x61
     e8d:	c6 85 b5 d8 ff ff 67 	mov    BYTE PTR [rbp-0x274b],0x67
     e94:	48 8d 85 40 ec ff ff 	lea    rax,[rbp-0x13c0]
     e9b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     e9f:	48 8d 85 b0 d8 ff ff 	lea    rax,[rbp-0x2750]
     ea6:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
     eaa:	48 8d 85 40 ec ff ff 	lea    rax,[rbp-0x13c0]
     eb1:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
     eb5:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
     ebc:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
     ec3:	00 
     ec4:	48 c7 45 d8 88 13 00 	mov    QWORD PTR [rbp-0x28],0x1388
     ecb:	00 
     ecc:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
     ed3:	00 
     ed4:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
     edb:	83 bd ac d8 ff ff 01 	cmp    DWORD PTR [rbp-0x2754],0x1
     ee2:	7f 2a                	jg     f0e <fwrite@plt+0x6ee>
     ee4:	48 8b 05 b5 11 20 00 	mov    rax,QWORD PTR [rip+0x2011b5]        # 2020a0 <stderr@@GLIBC_2.2.5>
     eeb:	48 89 c1             	mov    rcx,rax
     eee:	ba 11 00 00 00       	mov    edx,0x11
     ef3:	be 01 00 00 00       	mov    esi,0x1
     ef8:	48 8d 3d f5 02 00 00 	lea    rdi,[rip+0x2f5]        # 11f4 <fwrite@plt+0x9d4>
     eff:	e8 1c f9 ff ff       	call   820 <fwrite@plt>
     f04:	bf 01 00 00 00       	mov    edi,0x1
     f09:	e8 02 f9 ff ff       	call   810 <exit@plt>
     f0e:	48 8b 85 a0 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2760]
     f15:	48 83 c0 08          	add    rax,0x8
     f19:	48 8b 00             	mov    rax,QWORD PTR [rax]
     f1c:	ba 0a 00 00 00       	mov    edx,0xa
     f21:	48 8d 35 de 02 00 00 	lea    rsi,[rip+0x2de]        # 1206 <fwrite@plt+0x9e6>
     f28:	48 89 c7             	mov    rdi,rax
     f2b:	e8 80 f8 ff ff       	call   7b0 <strncmp@plt>
     f30:	85 c0                	test   eax,eax
     f32:	75 17                	jne    f4b <fwrite@plt+0x72b>
     f34:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     f38:	48 89 c7             	mov    rdi,rax
     f3b:	e8 30 fa ff ff       	call   970 <fwrite@plt+0x150>
     f40:	48 98                	cdqe   
     f42:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
     f46:	e9 f9 01 00 00       	jmp    1144 <fwrite@plt+0x924>
     f4b:	48 8b 85 a0 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2760]
     f52:	48 83 c0 08          	add    rax,0x8
     f56:	48 8b 00             	mov    rax,QWORD PTR [rax]
     f59:	be 00 00 00 00       	mov    esi,0x0
     f5e:	48 89 c7             	mov    rdi,rax
     f61:	b8 00 00 00 00       	mov    eax,0x0
     f66:	e8 95 f8 ff ff       	call   800 <open@plt>
     f6b:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
     f6e:	83 7d c8 00          	cmp    DWORD PTR [rbp-0x38],0x0
     f72:	79 33                	jns    fa7 <fwrite@plt+0x787>
     f74:	48 8b 85 a0 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2760]
     f7b:	48 83 c0 08          	add    rax,0x8
     f7f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
     f82:	48 8b 05 17 11 20 00 	mov    rax,QWORD PTR [rip+0x201117]        # 2020a0 <stderr@@GLIBC_2.2.5>
     f89:	48 8d 35 81 02 00 00 	lea    rsi,[rip+0x281]        # 1211 <fwrite@plt+0x9f1>
     f90:	48 89 c7             	mov    rdi,rax
     f93:	b8 00 00 00 00       	mov    eax,0x0
     f98:	e8 43 f8 ff ff       	call   7e0 <fprintf@plt>
     f9d:	bf 01 00 00 00       	mov    edi,0x1
     fa2:	e8 69 f8 ff ff       	call   810 <exit@plt>
     fa7:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
     fab:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
     faf:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
     fb2:	48 89 ce             	mov    rsi,rcx
     fb5:	89 c7                	mov    edi,eax
     fb7:	e8 04 f8 ff ff       	call   7c0 <read@plt>
     fbc:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
     fc0:	eb 31                	jmp    ff3 <fwrite@plt+0x7d3>
     fc2:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     fc6:	48 29 45 d8          	sub    QWORD PTR [rbp-0x28],rax
     fca:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     fce:	48 01 45 e0          	add    QWORD PTR [rbp-0x20],rax
     fd2:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     fd6:	48 01 45 e8          	add    QWORD PTR [rbp-0x18],rax
     fda:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
     fde:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
     fe2:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
     fe5:	48 89 ce             	mov    rsi,rcx
     fe8:	89 c7                	mov    edi,eax
     fea:	e8 d1 f7 ff ff       	call   7c0 <read@plt>
     fef:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
     ff3:	48 83 7d d0 00       	cmp    QWORD PTR [rbp-0x30],0x0
     ff8:	0f 84 46 01 00 00    	je     1144 <fwrite@plt+0x924>
     ffe:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1002:	48 3d 87 13 00 00    	cmp    rax,0x1387
    1008:	76 b8                	jbe    fc2 <fwrite@plt+0x7a2>
    100a:	e9 35 01 00 00       	jmp    1144 <fwrite@plt+0x924>
    100f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1013:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1016:	0f b6 c0             	movzx  eax,al
    1019:	83 e8 2b             	sub    eax,0x2b
    101c:	83 f8 32             	cmp    eax,0x32
    101f:	0f 87 1a 01 00 00    	ja     113f <fwrite@plt+0x91f>
    1025:	89 c0                	mov    eax,eax
    1027:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    102e:	00 
    102f:	48 8d 05 ee 01 00 00 	lea    rax,[rip+0x1ee]        # 1224 <fwrite@plt+0xa04>
    1036:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1039:	48 63 d0             	movsxd rdx,eax
    103c:	48 8d 05 e1 01 00 00 	lea    rax,[rip+0x1e1]        # 1224 <fwrite@plt+0xa04>
    1043:	48 01 d0             	add    rax,rdx
    1046:	ff e0                	jmp    rax
    1048:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
    104d:	e9 ed 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    1052:	48 83 6d f0 01       	sub    QWORD PTR [rbp-0x10],0x1
    1057:	e9 e3 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    105c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1060:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1063:	8d 50 01             	lea    edx,[rax+0x1]
    1066:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    106a:	88 10                	mov    BYTE PTR [rax],dl
    106c:	e9 ce 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    1071:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1075:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1078:	8d 50 ff             	lea    edx,[rax-0x1]
    107b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    107f:	88 10                	mov    BYTE PTR [rax],dl
    1081:	e9 b9 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    1086:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    108a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    108d:	0f b6 c0             	movzx  eax,al
    1090:	89 c7                	mov    edi,eax
    1092:	e8 09 f7 ff ff       	call   7a0 <putchar@plt>
    1097:	48 8b 05 e2 0f 20 00 	mov    rax,QWORD PTR [rip+0x200fe2]        # 202080 <stdout@@GLIBC_2.2.5>
    109e:	48 89 c7             	mov    rdi,rax
    10a1:	e8 4a f7 ff ff       	call   7f0 <fflush@plt>
    10a6:	e9 94 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    10ab:	e8 20 f7 ff ff       	call   7d0 <getchar@plt>
    10b0:	89 c2                	mov    edx,eax
    10b2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    10b6:	88 10                	mov    BYTE PTR [rax],dl
    10b8:	e9 82 00 00 00       	jmp    113f <fwrite@plt+0x91f>
    10bd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    10c1:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    10c4:	84 c0                	test   al,al
    10c6:	75 73                	jne    113b <fwrite@plt+0x91b>
    10c8:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [rbp-0x34],0x1
    10cf:	eb 23                	jmp    10f4 <fwrite@plt+0x8d4>
    10d1:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
    10d6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    10da:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    10dd:	3c 5b                	cmp    al,0x5b
    10df:	75 04                	jne    10e5 <fwrite@plt+0x8c5>
    10e1:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
    10e5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    10e9:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    10ec:	3c 5d                	cmp    al,0x5d
    10ee:	75 04                	jne    10f4 <fwrite@plt+0x8d4>
    10f0:	83 6d cc 01          	sub    DWORD PTR [rbp-0x34],0x1
    10f4:	83 7d cc 00          	cmp    DWORD PTR [rbp-0x34],0x0
    10f8:	75 d7                	jne    10d1 <fwrite@plt+0x8b1>
    10fa:	eb 3f                	jmp    113b <fwrite@plt+0x91b>
    10fc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1100:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1103:	84 c0                	test   al,al
    1105:	74 37                	je     113e <fwrite@plt+0x91e>
    1107:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [rbp-0x34],0x1
    110e:	eb 23                	jmp    1133 <fwrite@plt+0x913>
    1110:	48 83 6d f8 01       	sub    QWORD PTR [rbp-0x8],0x1
    1115:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1119:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    111c:	3c 5d                	cmp    al,0x5d
    111e:	75 04                	jne    1124 <fwrite@plt+0x904>
    1120:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
    1124:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1128:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    112b:	3c 5b                	cmp    al,0x5b
    112d:	75 04                	jne    1133 <fwrite@plt+0x913>
    112f:	83 6d cc 01          	sub    DWORD PTR [rbp-0x34],0x1
    1133:	83 7d cc 00          	cmp    DWORD PTR [rbp-0x34],0x0
    1137:	75 d7                	jne    1110 <fwrite@plt+0x8f0>
    1139:	eb 03                	jmp    113e <fwrite@plt+0x91e>
    113b:	90                   	nop
    113c:	eb 01                	jmp    113f <fwrite@plt+0x91f>
    113e:	90                   	nop
    113f:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
    1144:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20] # HERE
    1148:	48 8d 95 40 ec ff ff 	lea    rdx,[rbp-0x13c0]
    114f:	48 01 d0             	add    rax,rdx
    1152:	48 3b 45 f8          	cmp    rax,QWORD PTR [rbp-0x8]
    1156:	0f 87 b3 fe ff ff    	ja     100f <fwrite@plt+0x7ef>
    115c:	b8 00 00 00 00       	mov    eax,0x0
    1161:	c9                   	leave  
    1162:	c3                   	ret    
    1163:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    116a:	00 00 00 
    116d:	0f 1f 00             	nop    DWORD PTR [rax]
    1170:	41 57                	push   r15
    1172:	41 56                	push   r14
    1174:	49 89 d7             	mov    r15,rdx
    1177:	41 55                	push   r13
    1179:	41 54                	push   r12
    117b:	4c 8d 25 56 0c 20 00 	lea    r12,[rip+0x200c56]        # 201dd8 <fwrite@plt+0x2015b8>
    1182:	55                   	push   rbp
    1183:	48 8d 2d 56 0c 20 00 	lea    rbp,[rip+0x200c56]        # 201de0 <fwrite@plt+0x2015c0>
    118a:	53                   	push   rbx
    118b:	41 89 fd             	mov    r13d,edi
    118e:	49 89 f6             	mov    r14,rsi
    1191:	4c 29 e5             	sub    rbp,r12
    1194:	48 83 ec 08          	sub    rsp,0x8
    1198:	48 c1 fd 03          	sar    rbp,0x3
    119c:	e8 cf f5 ff ff       	call   770 <putchar@plt-0x30>
    11a1:	48 85 ed             	test   rbp,rbp
    11a4:	74 20                	je     11c6 <fwrite@plt+0x9a6>
    11a6:	31 db                	xor    ebx,ebx
    11a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    11af:	00 
    11b0:	4c 89 fa             	mov    rdx,r15
    11b3:	4c 89 f6             	mov    rsi,r14
    11b6:	44 89 ef             	mov    edi,r13d
    11b9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    11bd:	48 83 c3 01          	add    rbx,0x1
    11c1:	48 39 dd             	cmp    rbp,rbx
    11c4:	75 ea                	jne    11b0 <fwrite@plt+0x990>
    11c6:	48 83 c4 08          	add    rsp,0x8
    11ca:	5b                   	pop    rbx
    11cb:	5d                   	pop    rbp
    11cc:	41 5c                	pop    r12
    11ce:	41 5d                	pop    r13
    11d0:	41 5e                	pop    r14
    11d2:	41 5f                	pop    r15
    11d4:	c3                   	ret    
    11d5:	90                   	nop
    11d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11dd:	00 00 00 
    11e0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000000011e4 <.fini>:
    11e4:	48 83 ec 08          	sub    rsp,0x8
    11e8:	48 83 c4 08          	add    rsp,0x8
    11ec:	c3                   	ret    
