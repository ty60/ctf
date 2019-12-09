
./fruitretailer:     file format elf64-x86-64


Disassembly of section .init:

0000000000000948 <.init>:
 948:	48 83 ec 08          	sub    rsp,0x8
 94c:	48 8b 05 65 16 20 00 	mov    rax,QWORD PTR [rip+0x201665]        # 201fb8 <_edata@@Base-0x58>
 953:	48 85 c0             	test   rax,rax
 956:	74 05                	je     95d <_edata@@Base-0x2016b3>
 958:	e8 6b 00 00 00       	call   9c8 <_edata@@Base-0x201648>
 95d:	48 83 c4 08          	add    rsp,0x8
 961:	c3                   	ret    

Disassembly of section .plt:

0000000000000970 <.plt>:
 970:	ff 35 e2 15 20 00    	push   QWORD PTR [rip+0x2015e2]        # 201f58 <_edata@@Base-0xb8>
 976:	ff 25 e4 15 20 00    	jmp    QWORD PTR [rip+0x2015e4]        # 201f60 <_edata@@Base-0xb0>
 97c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

Disassembly of section .plt.got:

0000000000000980 <.plt.got>:
 980:	ff 25 e2 15 20 00    	jmp    QWORD PTR [rip+0x2015e2]        # 201f68 <_edata@@Base-0xa8>
 986:	66 90                	xchg   ax,ax
 988:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201f78 <_edata@@Base-0x98>
 98e:	66 90                	xchg   ax,ax
 990:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201f80 <_edata@@Base-0x90>
 996:	66 90                	xchg   ax,ax
 998:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201f88 <_edata@@Base-0x88>
 99e:	66 90                	xchg   ax,ax
 9a0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201f90 <_edata@@Base-0x80>
 9a6:	66 90                	xchg   ax,ax
 9a8:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201f98 <_edata@@Base-0x78>
 9ae:	66 90                	xchg   ax,ax
 9b0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fa0 <_edata@@Base-0x70>
 9b6:	66 90                	xchg   ax,ax
 9b8:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fa8 <_edata@@Base-0x68>
 9be:	66 90                	xchg   ax,ax
 9c0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fb0 <_edata@@Base-0x60>
 9c6:	66 90                	xchg   ax,ax
 9c8:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fb8 <_edata@@Base-0x58>
 9ce:	66 90                	xchg   ax,ax
 9d0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fc0 <_edata@@Base-0x50>
 9d6:	66 90                	xchg   ax,ax
 9d8:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fc8 <_edata@@Base-0x48>
 9de:	66 90                	xchg   ax,ax
 9e0:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fd0 <_edata@@Base-0x40>
 9e6:	66 90                	xchg   ax,ax
 9e8:	ff 25 ea 15 20 00    	jmp    QWORD PTR [rip+0x2015ea]        # 201fd8 <_edata@@Base-0x38>
 9ee:	66 90                	xchg   ax,ax
 9f0:	ff 25 f2 15 20 00    	jmp    QWORD PTR [rip+0x2015f2]        # 201fe8 <_edata@@Base-0x28>
 9f6:	66 90                	xchg   ax,ax
 9f8:	ff 25 fa 15 20 00    	jmp    QWORD PTR [rip+0x2015fa]        # 201ff8 <_edata@@Base-0x18>
 9fe:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000a00 <.text>:
     a00:	31 ed                	xor    ebp,ebp
     a02:	49 89 d1             	mov    r9,rdx
     a05:	5e                   	pop    rsi
     a06:	48 89 e2             	mov    rdx,rsp
     a09:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     a0d:	50                   	push   rax
     a0e:	54                   	push   rsp
     a0f:	4c 8d 05 2a 0b 00 00 	lea    r8,[rip+0xb2a]        # 1540 <_edata@@Base-0x200ad0>
     a16:	48 8d 0d b3 0a 00 00 	lea    rcx,[rip+0xab3]        # 14d0 <_edata@@Base-0x200b40>
     a1d:	48 8d 3d 38 0a 00 00 	lea    rdi,[rip+0xa38]        # 145c <_edata@@Base-0x200bb4>
     a24:	e8 8f ff ff ff       	call   9b8 <_edata@@Base-0x201658>
     a29:	f4                   	hlt    
     a2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     a30:	48 8d 3d d9 15 20 00 	lea    rdi,[rip+0x2015d9]        # 202010 <_edata@@Base>
     a37:	48 8d 05 d9 15 20 00 	lea    rax,[rip+0x2015d9]        # 202017 <_edata@@Base+0x7>
     a3e:	55                   	push   rbp
     a3f:	48 29 f8             	sub    rax,rdi
     a42:	48 89 e5             	mov    rbp,rsp
     a45:	48 83 f8 0e          	cmp    rax,0xe
     a49:	76 15                	jbe    a60 <_edata@@Base-0x2015b0>
     a4b:	48 8b 05 1e 15 20 00 	mov    rax,QWORD PTR [rip+0x20151e]        # 201f70 <_edata@@Base-0xa0>
     a52:	48 85 c0             	test   rax,rax
     a55:	74 09                	je     a60 <_edata@@Base-0x2015b0>
     a57:	5d                   	pop    rbp
     a58:	ff e0                	jmp    rax
     a5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     a60:	5d                   	pop    rbp
     a61:	c3                   	ret    
     a62:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a6d:	00 00 00 
     a70:	48 8d 3d 99 15 20 00 	lea    rdi,[rip+0x201599]        # 202010 <_edata@@Base>
     a77:	48 8d 35 92 15 20 00 	lea    rsi,[rip+0x201592]        # 202010 <_edata@@Base>
     a7e:	55                   	push   rbp
     a7f:	48 29 fe             	sub    rsi,rdi
     a82:	48 89 e5             	mov    rbp,rsp
     a85:	48 c1 fe 03          	sar    rsi,0x3
     a89:	48 89 f0             	mov    rax,rsi
     a8c:	48 c1 e8 3f          	shr    rax,0x3f
     a90:	48 01 c6             	add    rsi,rax
     a93:	48 d1 fe             	sar    rsi,1
     a96:	74 18                	je     ab0 <_edata@@Base-0x201560>
     a98:	48 8b 05 51 15 20 00 	mov    rax,QWORD PTR [rip+0x201551]        # 201ff0 <_edata@@Base-0x20>
     a9f:	48 85 c0             	test   rax,rax
     aa2:	74 0c                	je     ab0 <_edata@@Base-0x201560>
     aa4:	5d                   	pop    rbp
     aa5:	ff e0                	jmp    rax
     aa7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     aae:	00 00 
     ab0:	5d                   	pop    rbp
     ab1:	c3                   	ret    
     ab2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     ab6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     abd:	00 00 00 
     ac0:	80 3d 81 15 20 00 00 	cmp    BYTE PTR [rip+0x201581],0x0        # 202048 <stderr@@GLIBC_2.2.5+0x8>
     ac7:	75 27                	jne    af0 <_edata@@Base-0x201520>
     ac9:	48 83 3d 27 15 20 00 	cmp    QWORD PTR [rip+0x201527],0x0        # 201ff8 <_edata@@Base-0x18>
     ad0:	00 
     ad1:	55                   	push   rbp
     ad2:	48 89 e5             	mov    rbp,rsp
     ad5:	74 0c                	je     ae3 <_edata@@Base-0x20152d>
     ad7:	48 8b 3d 2a 15 20 00 	mov    rdi,QWORD PTR [rip+0x20152a]        # 202008 <_edata@@Base-0x8>
     ade:	e8 15 ff ff ff       	call   9f8 <_edata@@Base-0x201618>
     ae3:	e8 48 ff ff ff       	call   a30 <_edata@@Base-0x2015e0>
     ae8:	5d                   	pop    rbp
     ae9:	c6 05 58 15 20 00 01 	mov    BYTE PTR [rip+0x201558],0x1        # 202048 <stderr@@GLIBC_2.2.5+0x8>
     af0:	f3 c3                	repz ret 
     af2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     af6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     afd:	00 00 00 
     b00:	48 8d 3d 81 12 20 00 	lea    rdi,[rip+0x201281]        # 201d88 <_edata@@Base-0x288>
     b07:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
     b0b:	75 0b                	jne    b18 <_edata@@Base-0x2014f8>
     b0d:	e9 5e ff ff ff       	jmp    a70 <_edata@@Base-0x2015a0>
     b12:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     b18:	48 8b 05 c1 14 20 00 	mov    rax,QWORD PTR [rip+0x2014c1]        # 201fe0 <_edata@@Base-0x30>
     b1f:	48 85 c0             	test   rax,rax
     b22:	74 e9                	je     b0d <_edata@@Base-0x201503>
     b24:	55                   	push   rbp
     b25:	48 89 e5             	mov    rbp,rsp
     b28:	ff d0                	call   rax
     b2a:	5d                   	pop    rbp
     b2b:	e9 40 ff ff ff       	jmp    a70 <_edata@@Base-0x2015a0>
     b30:	55                   	push   rbp
     b31:	48 89 e5             	mov    rbp,rsp
     b34:	48 83 ec 10          	sub    rsp,0x10
     b38:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
     b3c:	48 8b 05 dd 14 20 00 	mov    rax,QWORD PTR [rip+0x2014dd]        # 202020 <stdout@@GLIBC_2.2.5>
     b43:	b9 00 00 00 00       	mov    ecx,0x0
     b48:	ba 02 00 00 00       	mov    edx,0x2
     b4d:	be 00 00 00 00       	mov    esi,0x0
     b52:	48 89 c7             	mov    rdi,rax
     b55:	e8 7e fe ff ff       	call   9d8 <_edata@@Base-0x201638>
     b5a:	48 8b 05 df 14 20 00 	mov    rax,QWORD PTR [rip+0x2014df]        # 202040 <stderr@@GLIBC_2.2.5>
     b61:	b9 00 00 00 00       	mov    ecx,0x0
     b66:	ba 02 00 00 00       	mov    edx,0x2
     b6b:	be 00 00 00 00       	mov    esi,0x0
     b70:	48 89 c7             	mov    rdi,rax
     b73:	e8 60 fe ff ff       	call   9d8 <_edata@@Base-0x201638>
     b78:	bf f4 01 00 00       	mov    edi,0x1f4
     b7d:	e8 2e fe ff ff       	call   9b0 <_edata@@Base-0x201660>
     b82:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     b86:	48 89 c7             	mov    rdi,rax
     b89:	b8 00 00 00 00       	mov    eax,0x0
     b8e:	e8 15 fe ff ff       	call   9a8 <_edata@@Base-0x201668>
     b93:	48 8d 3d be 09 00 00 	lea    rdi,[rip+0x9be]        # 1558 <_edata@@Base-0x200ab8>
     b9a:	e8 e9 fd ff ff       	call   988 <_edata@@Base-0x201688>
     b9f:	90                   	nop
     ba0:	c9                   	leave  
     ba1:	c3                   	ret    
     ba2:	55                   	push   rbp
     ba3:	48 89 e5             	mov    rbp,rsp
     ba6:	48 83 ec 20          	sub    rsp,0x20
     baa:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
     bae:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     bb5:	00 00 
     bb7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     bbb:	31 c0                	xor    eax,eax
     bbd:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
     bc2:	74 18                	je     bdc <_edata@@Base-0x201434>
     bc4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     bc8:	48 89 c6             	mov    rsi,rax
     bcb:	48 8d 3d e3 09 00 00 	lea    rdi,[rip+0x9e3]        # 15b5 <_edata@@Base-0x200a5b>
     bd2:	b8 00 00 00 00       	mov    eax,0x0
     bd7:	e8 cc fd ff ff       	call   9a8 <_edata@@Base-0x201668>
     bdc:	48 8d 45 f4          	lea    rax,[rbp-0xc]
     be0:	48 89 c6             	mov    rsi,rax
     be3:	48 8d 3d cf 09 00 00 	lea    rdi,[rip+0x9cf]        # 15b9 <_edata@@Base-0x200a57>
     bea:	b8 00 00 00 00       	mov    eax,0x0
     bef:	e8 ec fd ff ff       	call   9e0 <_edata@@Base-0x201630>
     bf4:	85 c0                	test   eax,eax
     bf6:	0f 9e c0             	setle  al
     bf9:	84 c0                	test   al,al
     bfb:	74 16                	je     c13 <_edata@@Base-0x2013fd>
     bfd:	48 8d 3d bb 09 00 00 	lea    rdi,[rip+0x9bb]        # 15bf <_edata@@Base-0x200a51>
     c04:	e8 7f fd ff ff       	call   988 <_edata@@Base-0x201688>
     c09:	bf 00 00 00 00       	mov    edi,0x0
     c0e:	e8 dd fd ff ff       	call   9f0 <_edata@@Base-0x201620>
     c13:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
     c16:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
     c1a:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
     c21:	00 00 
     c23:	74 05                	je     c2a <_edata@@Base-0x2013e6>
     c25:	e8 6e fd ff ff       	call   998 <_edata@@Base-0x201678>
     c2a:	c9                   	leave  
     c2b:	c3                   	ret    
     c2c:	55                   	push   rbp
     c2d:	48 89 e5             	mov    rbp,rsp
     c30:	48 8d 3d 97 09 00 00 	lea    rdi,[rip+0x997]        # 15ce <_edata@@Base-0x200a42>
     c37:	e8 4c fd ff ff       	call   988 <_edata@@Base-0x201688>
     c3c:	48 8d 3d a1 09 00 00 	lea    rdi,[rip+0x9a1]        # 15e4 <_edata@@Base-0x200a2c>
     c43:	e8 40 fd ff ff       	call   988 <_edata@@Base-0x201688>
     c48:	48 8d 3d a6 09 00 00 	lea    rdi,[rip+0x9a6]        # 15f5 <_edata@@Base-0x200a1b>
     c4f:	e8 34 fd ff ff       	call   988 <_edata@@Base-0x201688>
     c54:	48 8d 3d a7 09 00 00 	lea    rdi,[rip+0x9a7]        # 1602 <_edata@@Base-0x200a0e>
     c5b:	e8 28 fd ff ff       	call   988 <_edata@@Base-0x201688>
     c60:	48 8d 3d ad 09 00 00 	lea    rdi,[rip+0x9ad]        # 1614 <_edata@@Base-0x2009fc>
     c67:	e8 1c fd ff ff       	call   988 <_edata@@Base-0x201688>
     c6c:	48 8d 3d b1 09 00 00 	lea    rdi,[rip+0x9b1]        # 1624 <_edata@@Base-0x2009ec>
     c73:	e8 10 fd ff ff       	call   988 <_edata@@Base-0x201688>
     c78:	48 8d 3d b7 09 00 00 	lea    rdi,[rip+0x9b7]        # 1636 <_edata@@Base-0x2009da>
     c7f:	e8 04 fd ff ff       	call   988 <_edata@@Base-0x201688>
     c84:	48 8d 3d b3 09 00 00 	lea    rdi,[rip+0x9b3]        # 163e <_edata@@Base-0x2009d2>
     c8b:	e8 12 ff ff ff       	call   ba2 <_edata@@Base-0x20146e>
     c90:	5d                   	pop    rbp
     c91:	c3                   	ret    
     c92:	55                   	push   rbp
     c93:	48 89 e5             	mov    rbp,rsp
     c96:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
     c9d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     ca4:	00 00 
     ca6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     caa:	31 c0                	xor    eax,eax
     cac:	48 8d 35 97 09 00 00 	lea    rsi,[rip+0x997]        # 164a <_edata@@Base-0x2009c6>
     cb3:	48 8d 3d 93 09 00 00 	lea    rdi,[rip+0x993]        # 164d <_edata@@Base-0x2009c3>
     cba:	e8 29 fd ff ff       	call   9e8 <_edata@@Base-0x201628>
     cbf:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
     cc6:	48 83 bd 68 ff ff ff 	cmp    QWORD PTR [rbp-0x98],0x0
     ccd:	00 
     cce:	74 39                	je     d09 <_edata@@Base-0x201307>
     cd0:	48 8b 95 68 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x98]
     cd7:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     cde:	be 80 00 00 00       	mov    esi,0x80
     ce3:	48 89 c7             	mov    rdi,rax
     ce6:	e8 d5 fc ff ff       	call   9c0 <_edata@@Base-0x201650>
     ceb:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     cf2:	48 89 c7             	mov    rdi,rax
     cf5:	e8 8e fc ff ff       	call   988 <_edata@@Base-0x201688>
     cfa:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
     d01:	48 89 c7             	mov    rdi,rax
     d04:	e8 87 fc ff ff       	call   990 <_edata@@Base-0x201680>
     d09:	bf 00 00 00 00       	mov    edi,0x0
     d0e:	e8 dd fc ff ff       	call   9f0 <_edata@@Base-0x201620>
     d13:	55                   	push   rbp
     d14:	48 89 e5             	mov    rbp,rsp
     d17:	48 83 ec 50          	sub    rsp,0x50
     d1b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     d22:	00 00 
     d24:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     d28:	31 c0                	xor    eax,eax
     d2a:	48 8d 3d 27 09 00 00 	lea    rdi,[rip+0x927]        # 1658 <_edata@@Base-0x2009b8>
     d31:	e8 6c fe ff ff       	call   ba2 <_edata@@Base-0x20146e>
     d36:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
     d39:	48 c7 45 c0 00 00 00 	mov    QWORD PTR [rbp-0x40],0x0
     d40:	00 
     d41:	83 7d b8 01          	cmp    DWORD PTR [rbp-0x48],0x1
     d45:	0f 85 33 01 00 00    	jne    e7e <_edata@@Base-0x201192>
     d4b:	bf 9c 00 00 00       	mov    edi,0x9c
     d50:	e8 7b fc ff ff       	call   9d0 <_edata@@Base-0x201640>
     d55:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
     d59:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     d5d:	c6 40 10 00          	mov    BYTE PTR [rax+0x10],0x0
     d61:	48 8d 3d 1f 09 00 00 	lea    rdi,[rip+0x91f]        # 1687 <_edata@@Base-0x200989>
     d68:	e8 35 fe ff ff       	call   ba2 <_edata@@Base-0x20146e>
     d6d:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
     d70:	81 7d bc 55 55 00 00 	cmp    DWORD PTR [rbp-0x44],0x5555
     d77:	7e 11                	jle    d8a <_edata@@Base-0x201286>
     d79:	48 8d 3d 16 09 00 00 	lea    rdi,[rip+0x916]        # 1696 <_edata@@Base-0x20097a>
     d80:	e8 03 fc ff ff       	call   988 <_edata@@Base-0x201688>
     d85:	e9 da 02 00 00       	jmp    1064 <_edata@@Base-0x200fac>
     d8a:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
     d8d:	89 c2                	mov    edx,eax
     d8f:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     d93:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
     d97:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     d9b:	48 8d 48 0e          	lea    rcx,[rax+0xe]
     d9f:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
     da2:	89 d0                	mov    eax,edx
     da4:	01 c0                	add    eax,eax
     da6:	01 d0                	add    eax,edx
     da8:	89 01                	mov    DWORD PTR [rcx],eax
     daa:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     dae:	48 83 c0 11          	add    rax,0x11
     db2:	48 be 6f 72 67 61 6e 	movabs rsi,0x63696e6167726f
     db9:	69 63 00 
     dbc:	48 89 30             	mov    QWORD PTR [rax],rsi
     dbf:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     dc3:	48 83 c0 5c          	add    rax,0x5c
     dc7:	48 b9 41 70 70 6c 65 	movabs rcx,0x724620656c707041
     dce:	20 46 72 
     dd1:	48 89 08             	mov    QWORD PTR [rax],rcx
     dd4:	48 be 6f 6d 20 47 72 	movabs rsi,0x6b65657247206d6f
     ddb:	65 65 6b 
     dde:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
     de2:	66 c7 40 10 2e 00    	mov    WORD PTR [rax+0x10],0x2e
     de8:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     dec:	c6 40 1b 00          	mov    BYTE PTR [rax+0x1b],0x0
     df0:	48 8d 3d b9 08 00 00 	lea    rdi,[rip+0x8b9]        # 16b0 <_edata@@Base-0x200960>
     df7:	b8 00 00 00 00       	mov    eax,0x0
     dfc:	e8 a7 fb ff ff       	call   9a8 <_edata@@Base-0x201668>
     e01:	48 8b 15 28 12 20 00 	mov    rdx,QWORD PTR [rip+0x201228]        # 202030 <stdin@@GLIBC_2.2.5>
     e08:	b9 05 00 00 00       	mov    ecx,0x5
     e0d:	48 8d 45 f0          	lea    rax,[rbp-0x10]
     e11:	89 ce                	mov    esi,ecx
     e13:	48 89 c7             	mov    rdi,rax
     e16:	e8 a5 fb ff ff       	call   9c0 <_edata@@Base-0x201650>
     e1b:	0f b6 45 f0          	movzx  eax,BYTE PTR [rbp-0x10]
     e1f:	3c 59                	cmp    al,0x59
     e21:	74 08                	je     e2b <_edata@@Base-0x2011e5>
     e23:	0f b6 45 f0          	movzx  eax,BYTE PTR [rbp-0x10]
     e27:	3c 79                	cmp    al,0x79
     e29:	75 46                	jne    e71 <_edata@@Base-0x20119f>
     e2b:	48 8b 05 fe 11 20 00 	mov    rax,QWORD PTR [rip+0x2011fe]        # 202030 <stdin@@GLIBC_2.2.5>
     e32:	be 40 00 00 00       	mov    esi,0x40
     e37:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
     e3b:	48 8d 4a 1c          	lea    rcx,[rdx+0x1c]
     e3f:	48 89 c2             	mov    rdx,rax
     e42:	48 89 cf             	mov    rdi,rcx
     e45:	e8 76 fb ff ff       	call   9c0 <_edata@@Base-0x201650>
     e4a:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     e4e:	48 83 c0 1c          	add    rax,0x1c
     e52:	be 0a 00 00 00       	mov    esi,0xa
     e57:	48 89 c7             	mov    rdi,rax
     e5a:	e8 41 fb ff ff       	call   9a0 <_edata@@Base-0x201670>
     e5f:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
     e63:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
     e68:	74 07                	je     e71 <_edata@@Base-0x20119f>
     e6a:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
     e6e:	c6 00 00             	mov    BYTE PTR [rax],0x0
     e71:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
     e75:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
     e79:	e9 44 01 00 00       	jmp    fc2 <_edata@@Base-0x20104e>
     e7e:	83 7d b8 02          	cmp    DWORD PTR [rbp-0x48],0x2
     e82:	0f 85 3a 01 00 00    	jne    fc2 <_edata@@Base-0x20104e>
     e88:	bf 9c 00 00 00       	mov    edi,0x9c
     e8d:	e8 3e fb ff ff       	call   9d0 <_edata@@Base-0x201640>
     e92:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
     e96:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     e9a:	c6 40 10 00          	mov    BYTE PTR [rax+0x10],0x0
     e9e:	48 8d 3d e2 07 00 00 	lea    rdi,[rip+0x7e2]        # 1687 <_edata@@Base-0x200989>
     ea5:	e8 f8 fc ff ff       	call   ba2 <_edata@@Base-0x20146e>
     eaa:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
     ead:	81 7d bc 33 33 00 00 	cmp    DWORD PTR [rbp-0x44],0x3333
     eb4:	7e 11                	jle    ec7 <_edata@@Base-0x201149>
     eb6:	48 8d 3d d9 07 00 00 	lea    rdi,[rip+0x7d9]        # 1696 <_edata@@Base-0x20097a>
     ebd:	e8 c6 fa ff ff       	call   988 <_edata@@Base-0x201688>
     ec2:	e9 9d 01 00 00       	jmp    1064 <_edata@@Base-0x200fac>
     ec7:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
     eca:	89 c2                	mov    edx,eax
     ecc:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     ed0:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
     ed4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     ed8:	48 8d 48 0e          	lea    rcx,[rax+0xe]
     edc:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
     edf:	89 d0                	mov    eax,edx
     ee1:	c1 e0 02             	shl    eax,0x2
     ee4:	01 d0                	add    eax,edx
     ee6:	89 01                	mov    DWORD PTR [rcx],eax
     ee8:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     eec:	48 83 c0 11          	add    rax,0x11
     ef0:	48 b9 6f 72 67 61 6e 	movabs rcx,0x63696e6167726f
     ef7:	69 63 00 
     efa:	48 89 08             	mov    QWORD PTR [rax],rcx
     efd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     f01:	48 83 c0 7c          	add    rax,0x7c
     f05:	48 be 42 61 6e 61 6e 	movabs rsi,0x6620616e616e6142
     f0c:	61 20 66 
     f0f:	48 89 30             	mov    QWORD PTR [rax],rsi
     f12:	48 b9 72 6f 6d 20 41 	movabs rcx,0x74737541206d6f72
     f19:	75 73 74 
     f1c:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
     f20:	c7 40 10 72 61 6c 69 	mov    DWORD PTR [rax+0x10],0x696c6172
     f27:	66 c7 40 14 61 2e    	mov    WORD PTR [rax+0x14],0x2e61
     f2d:	c6 40 16 00          	mov    BYTE PTR [rax+0x16],0x0
     f31:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     f35:	c6 40 1b 01          	mov    BYTE PTR [rax+0x1b],0x1
     f39:	48 8d 3d 70 07 00 00 	lea    rdi,[rip+0x770]        # 16b0 <_edata@@Base-0x200960>
     f40:	b8 00 00 00 00       	mov    eax,0x0
     f45:	e8 5e fa ff ff       	call   9a8 <_edata@@Base-0x201668>
     f4a:	48 8b 15 df 10 20 00 	mov    rdx,QWORD PTR [rip+0x2010df]        # 202030 <stdin@@GLIBC_2.2.5>
     f51:	b9 05 00 00 00       	mov    ecx,0x5
     f56:	48 8d 45 f0          	lea    rax,[rbp-0x10]
     f5a:	89 ce                	mov    esi,ecx
     f5c:	48 89 c7             	mov    rdi,rax
     f5f:	e8 5c fa ff ff       	call   9c0 <_edata@@Base-0x201650>
     f64:	0f b6 45 f0          	movzx  eax,BYTE PTR [rbp-0x10]
     f68:	3c 59                	cmp    al,0x59
     f6a:	74 08                	je     f74 <_edata@@Base-0x20109c>
     f6c:	0f b6 45 f0          	movzx  eax,BYTE PTR [rbp-0x10]
     f70:	3c 79                	cmp    al,0x79
     f72:	75 46                	jne    fba <_edata@@Base-0x201056>
     f74:	48 8b 05 b5 10 20 00 	mov    rax,QWORD PTR [rip+0x2010b5]        # 202030 <stdin@@GLIBC_2.2.5>
     f7b:	be 60 00 00 00       	mov    esi,0x60
     f80:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
     f84:	48 8d 4a 1c          	lea    rcx,[rdx+0x1c]
     f88:	48 89 c2             	mov    rdx,rax
     f8b:	48 89 cf             	mov    rdi,rcx
     f8e:	e8 2d fa ff ff       	call   9c0 <_edata@@Base-0x201650>
     f93:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     f97:	48 83 c0 1c          	add    rax,0x1c
     f9b:	be 0a 00 00 00       	mov    esi,0xa
     fa0:	48 89 c7             	mov    rdi,rax
     fa3:	e8 f8 f9 ff ff       	call   9a0 <_edata@@Base-0x201670>
     fa8:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
     fac:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
     fb1:	74 07                	je     fba <_edata@@Base-0x201056>
     fb3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     fb7:	c6 00 00             	mov    BYTE PTR [rax],0x0
     fba:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
     fbe:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
     fc2:	48 83 7d c0 00       	cmp    QWORD PTR [rbp-0x40],0x0
     fc7:	0f 84 8b 00 00 00    	je     1058 <_edata@@Base-0x200fb8>
     fcd:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
     fd1:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
     fd8:	8b 05 72 10 20 00    	mov    eax,DWORD PTR [rip+0x201072]        # 202050 <stderr@@GLIBC_2.2.5+0x10>
     fde:	83 c0 01             	add    eax,0x1
     fe1:	89 05 69 10 20 00    	mov    DWORD PTR [rip+0x201069],eax        # 202050 <stderr@@GLIBC_2.2.5+0x10>
     fe7:	8b 15 63 10 20 00    	mov    edx,DWORD PTR [rip+0x201063]        # 202050 <stderr@@GLIBC_2.2.5+0x10>
     fed:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
     ff1:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
     ff4:	48 8b 05 5d 10 20 00 	mov    rax,QWORD PTR [rip+0x20105d]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
     ffb:	48 85 c0             	test   rax,rax
     ffe:	75 0d                	jne    100d <_edata@@Base-0x201003>
    1000:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    1004:	48 89 05 4d 10 20 00 	mov    QWORD PTR [rip+0x20104d],rax        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    100b:	eb 2f                	jmp    103c <_edata@@Base-0x200fd4>
    100d:	48 8b 05 44 10 20 00 	mov    rax,QWORD PTR [rip+0x201044]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    1014:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1018:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    101c:	48 8b 00             	mov    rax,QWORD PTR [rax]
    101f:	48 85 c0             	test   rax,rax
    1022:	74 0d                	je     1031 <_edata@@Base-0x200fdf>
    1024:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1028:	48 8b 00             	mov    rax,QWORD PTR [rax]
    102b:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    102f:	eb e7                	jmp    1018 <_edata@@Base-0x200ff8>
    1031:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1035:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
    1039:	48 89 10             	mov    QWORD PTR [rax],rdx
    103c:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
    1040:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
    1043:	89 c6                	mov    esi,eax
    1045:	48 8d 3d 9a 06 00 00 	lea    rdi,[rip+0x69a]        # 16e6 <_edata@@Base-0x20092a>
    104c:	b8 00 00 00 00       	mov    eax,0x0
    1051:	e8 52 f9 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1056:	eb 0c                	jmp    1064 <_edata@@Base-0x200fac>
    1058:	48 8d 3d 9a 06 00 00 	lea    rdi,[rip+0x69a]        # 16f9 <_edata@@Base-0x200917>
    105f:	e8 24 f9 ff ff       	call   988 <_edata@@Base-0x201688>
    1064:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1068:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    106f:	00 00 
    1071:	74 05                	je     1078 <_edata@@Base-0x200f98>
    1073:	e8 20 f9 ff ff       	call   998 <_edata@@Base-0x201678>
    1078:	c9                   	leave  
    1079:	c3                   	ret    
    107a:	55                   	push   rbp
    107b:	48 89 e5             	mov    rbp,rsp
    107e:	48 83 ec 10          	sub    rsp,0x10
    1082:	48 8b 05 cf 0f 20 00 	mov    rax,QWORD PTR [rip+0x200fcf]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    1089:	48 85 c0             	test   rax,rax
    108c:	75 11                	jne    109f <_edata@@Base-0x200f71>
    108e:	48 8d 3d 83 06 00 00 	lea    rdi,[rip+0x683]        # 1718 <_edata@@Base-0x2008f8>
    1095:	e8 ee f8 ff ff       	call   988 <_edata@@Base-0x201688>
    109a:	e9 05 02 00 00       	jmp    12a4 <_edata@@Base-0x200d6c>
    109f:	48 8d 3d 93 06 00 00 	lea    rdi,[rip+0x693]        # 1739 <_edata@@Base-0x2008d7>
    10a6:	e8 dd f8 ff ff       	call   988 <_edata@@Base-0x201688>
    10ab:	48 8d 35 8f 06 00 00 	lea    rsi,[rip+0x68f]        # 1741 <_edata@@Base-0x2008cf>
    10b2:	48 8d 3d 91 06 00 00 	lea    rdi,[rip+0x691]        # 174a <_edata@@Base-0x2008c6>
    10b9:	b8 00 00 00 00       	mov    eax,0x0
    10be:	e8 e5 f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    10c3:	48 8d 35 86 06 00 00 	lea    rsi,[rip+0x686]        # 1750 <_edata@@Base-0x2008c0>
    10ca:	48 8d 3d 79 06 00 00 	lea    rdi,[rip+0x679]        # 174a <_edata@@Base-0x2008c6>
    10d1:	b8 00 00 00 00       	mov    eax,0x0
    10d6:	e8 cd f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    10db:	48 8d 35 74 06 00 00 	lea    rsi,[rip+0x674]        # 1756 <_edata@@Base-0x2008ba>
    10e2:	48 8d 3d 61 06 00 00 	lea    rdi,[rip+0x661]        # 174a <_edata@@Base-0x2008c6>
    10e9:	b8 00 00 00 00       	mov    eax,0x0
    10ee:	e8 b5 f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    10f3:	48 8d 35 62 06 00 00 	lea    rsi,[rip+0x662]        # 175c <_edata@@Base-0x2008b4>
    10fa:	48 8d 3d 49 06 00 00 	lea    rdi,[rip+0x649]        # 174a <_edata@@Base-0x2008c6>
    1101:	b8 00 00 00 00       	mov    eax,0x0
    1106:	e8 9d f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    110b:	48 8d 35 55 06 00 00 	lea    rsi,[rip+0x655]        # 1767 <_edata@@Base-0x2008a9>
    1112:	48 8d 3d 31 06 00 00 	lea    rdi,[rip+0x631]        # 174a <_edata@@Base-0x2008c6>
    1119:	b8 00 00 00 00       	mov    eax,0x0
    111e:	e8 85 f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1123:	48 8d 35 43 06 00 00 	lea    rsi,[rip+0x643]        # 176d <_edata@@Base-0x2008a3>
    112a:	48 8d 3d 54 06 00 00 	lea    rdi,[rip+0x654]        # 1785 <_edata@@Base-0x20088b>
    1131:	b8 00 00 00 00       	mov    eax,0x0
    1136:	e8 6d f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    113b:	48 8b 05 16 0f 20 00 	mov    rax,QWORD PTR [rip+0x200f16]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    1142:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1146:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    114b:	0f 84 49 01 00 00    	je     129a <_edata@@Base-0x200d76>
    1151:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1155:	0f b7 40 0c          	movzx  eax,WORD PTR [rax+0xc]
    1159:	0f b7 c0             	movzx  eax,ax
    115c:	89 c6                	mov    esi,eax
    115e:	48 8d 3d 24 06 00 00 	lea    rdi,[rip+0x624]        # 1789 <_edata@@Base-0x200887>
    1165:	b8 00 00 00 00       	mov    eax,0x0
    116a:	e8 39 f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    116f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1173:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    1177:	3c 01                	cmp    al,0x1
    1179:	75 09                	jne    1184 <_edata@@Base-0x200e8c>
    117b:	48 8d 05 0d 06 00 00 	lea    rax,[rip+0x60d]        # 178f <_edata@@Base-0x200881>
    1182:	eb 07                	jmp    118b <_edata@@Base-0x200e85>
    1184:	48 8d 05 0b 06 00 00 	lea    rax,[rip+0x60b]        # 1796 <_edata@@Base-0x20087a>
    118b:	48 89 c6             	mov    rsi,rax
    118e:	48 8d 3d b5 05 00 00 	lea    rdi,[rip+0x5b5]        # 174a <_edata@@Base-0x2008c6>
    1195:	b8 00 00 00 00       	mov    eax,0x0
    119a:	e8 09 f8 ff ff       	call   9a8 <_edata@@Base-0x201668>
    119f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11a3:	48 83 c0 11          	add    rax,0x11
    11a7:	48 89 c6             	mov    rsi,rax
    11aa:	48 8d 3d 99 05 00 00 	lea    rdi,[rip+0x599]        # 174a <_edata@@Base-0x2008c6>
    11b1:	b8 00 00 00 00       	mov    eax,0x0
    11b6:	e8 ed f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    11bb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11bf:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    11c3:	3c 01                	cmp    al,0x1
    11c5:	75 07                	jne    11ce <_edata@@Base-0x200e42>
    11c7:	b8 05 00 00 00       	mov    eax,0x5
    11cc:	eb 05                	jmp    11d3 <_edata@@Base-0x200e3d>
    11ce:	b8 03 00 00 00       	mov    eax,0x3
    11d3:	89 c6                	mov    esi,eax
    11d5:	48 8d 3d ad 05 00 00 	lea    rdi,[rip+0x5ad]        # 1789 <_edata@@Base-0x200887>
    11dc:	b8 00 00 00 00       	mov    eax,0x0
    11e1:	e8 c2 f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    11e6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11ea:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
    11ee:	0f b7 c0             	movzx  eax,ax
    11f1:	89 c6                	mov    esi,eax
    11f3:	48 8d 3d a2 05 00 00 	lea    rdi,[rip+0x5a2]        # 179c <_edata@@Base-0x200874>
    11fa:	b8 00 00 00 00       	mov    eax,0x0
    11ff:	e8 a4 f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1204:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1208:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    120c:	84 c0                	test   al,al
    120e:	75 31                	jne    1241 <_edata@@Base-0x200dcf>
    1210:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1214:	48 83 c0 5c          	add    rax,0x5c
    1218:	48 89 c7             	mov    rdi,rax
    121b:	b8 00 00 00 00       	mov    eax,0x0
    1220:	e8 83 f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1225:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1229:	48 83 c0 1c          	add    rax,0x1c
    122d:	48 89 c6             	mov    rsi,rax
    1230:	48 8d 3d 6c 05 00 00 	lea    rdi,[rip+0x56c]        # 17a3 <_edata@@Base-0x20086d>
    1237:	b8 00 00 00 00       	mov    eax,0x0
    123c:	e8 67 f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1241:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1245:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    1249:	3c 01                	cmp    al,0x1
    124b:	75 31                	jne    127e <_edata@@Base-0x200d92>
    124d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1251:	48 83 c0 7c          	add    rax,0x7c
    1255:	48 89 c7             	mov    rdi,rax
    1258:	b8 00 00 00 00       	mov    eax,0x0
    125d:	e8 46 f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1262:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1266:	48 83 c0 1c          	add    rax,0x1c
    126a:	48 89 c6             	mov    rsi,rax
    126d:	48 8d 3d 2f 05 00 00 	lea    rdi,[rip+0x52f]        # 17a3 <_edata@@Base-0x20086d>
    1274:	b8 00 00 00 00       	mov    eax,0x0
    1279:	e8 2a f7 ff ff       	call   9a8 <_edata@@Base-0x201668>
    127e:	48 8d 3d 21 05 00 00 	lea    rdi,[rip+0x521]        # 17a6 <_edata@@Base-0x20086a>
    1285:	e8 fe f6 ff ff       	call   988 <_edata@@Base-0x201688>
    128a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    128e:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1291:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1295:	e9 ac fe ff ff       	jmp    1146 <_edata@@Base-0x200eca>
    129a:	bf 0a 00 00 00       	mov    edi,0xa
    129f:	e8 dc f6 ff ff       	call   980 <_edata@@Base-0x201690>
    12a4:	c9                   	leave  
    12a5:	c3                   	ret    
    12a6:	55                   	push   rbp
    12a7:	48 89 e5             	mov    rbp,rsp
    12aa:	48 83 ec 10          	sub    rsp,0x10
    12ae:	48 8b 05 a3 0d 20 00 	mov    rax,QWORD PTR [rip+0x200da3]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    12b5:	48 85 c0             	test   rax,rax
    12b8:	75 11                	jne    12cb <_edata@@Base-0x200d45>
    12ba:	48 8d 3d 57 04 00 00 	lea    rdi,[rip+0x457]        # 1718 <_edata@@Base-0x2008f8>
    12c1:	e8 c2 f6 ff ff       	call   988 <_edata@@Base-0x201688>
    12c6:	e9 91 00 00 00       	jmp    135c <_edata@@Base-0x200cb4>
    12cb:	48 8d 3d d6 04 00 00 	lea    rdi,[rip+0x4d6]        # 17a8 <_edata@@Base-0x200868>
    12d2:	e8 cb f8 ff ff       	call   ba2 <_edata@@Base-0x20146e>
    12d7:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    12da:	48 8b 05 77 0d 20 00 	mov    rax,QWORD PTR [rip+0x200d77]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    12e1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    12e5:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    12ea:	74 64                	je     1350 <_edata@@Base-0x200cc0>
    12ec:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    12f0:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
    12f3:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    12f6:	39 c2                	cmp    edx,eax
    12f8:	75 49                	jne    1343 <_edata@@Base-0x200ccd>
    12fa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    12fe:	0f b6 40 10          	movzx  eax,BYTE PTR [rax+0x10]
    1302:	84 c0                	test   al,al
    1304:	74 2f                	je     1335 <_edata@@Base-0x200cdb>
    1306:	48 8d 3d bb 04 00 00 	lea    rdi,[rip+0x4bb]        # 17c8 <_edata@@Base-0x200848>
    130d:	b8 00 00 00 00       	mov    eax,0x0
    1312:	e8 91 f6 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1317:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    131b:	48 83 c0 11          	add    rax,0x11
    131f:	48 89 c6             	mov    rsi,rax
    1322:	48 8d 3d b0 04 00 00 	lea    rdi,[rip+0x4b0]        # 17d9 <_edata@@Base-0x200837>
    1329:	b8 00 00 00 00       	mov    eax,0x0
    132e:	e8 ad f6 ff ff       	call   9e0 <_edata@@Base-0x201630>
    1333:	eb 27                	jmp    135c <_edata@@Base-0x200cb4>
    1335:	48 8d 3d a2 04 00 00 	lea    rdi,[rip+0x4a2]        # 17de <_edata@@Base-0x200832>
    133c:	e8 47 f6 ff ff       	call   988 <_edata@@Base-0x201688>
    1341:	eb 19                	jmp    135c <_edata@@Base-0x200cb4>
    1343:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1347:	48 8b 00             	mov    rax,QWORD PTR [rax]
    134a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    134e:	eb 95                	jmp    12e5 <_edata@@Base-0x200d2b>
    1350:	48 8d 3d a5 04 00 00 	lea    rdi,[rip+0x4a5]        # 17fc <_edata@@Base-0x200814>
    1357:	e8 2c f6 ff ff       	call   988 <_edata@@Base-0x201688>
    135c:	c9                   	leave  
    135d:	c3                   	ret    
    135e:	55                   	push   rbp
    135f:	48 89 e5             	mov    rbp,rsp
    1362:	48 83 ec 10          	sub    rsp,0x10
    1366:	48 8b 05 eb 0c 20 00 	mov    rax,QWORD PTR [rip+0x200ceb]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    136d:	48 85 c0             	test   rax,rax
    1370:	75 11                	jne    1383 <_edata@@Base-0x200c8d>
    1372:	48 8d 3d 9f 03 00 00 	lea    rdi,[rip+0x39f]        # 1718 <_edata@@Base-0x2008f8>
    1379:	e8 0a f6 ff ff       	call   988 <_edata@@Base-0x201688>
    137e:	e9 d7 00 00 00       	jmp    145a <_edata@@Base-0x200bb6>
    1383:	48 8d 3d 1e 04 00 00 	lea    rdi,[rip+0x41e]        # 17a8 <_edata@@Base-0x200868>
    138a:	e8 13 f8 ff ff       	call   ba2 <_edata@@Base-0x20146e>
    138f:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1392:	48 8b 05 bf 0c 20 00 	mov    rax,QWORD PTR [rip+0x200cbf]        # 202058 <stderr@@GLIBC_2.2.5+0x18>
    1399:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    139d:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
    13a2:	0f 84 a6 00 00 00    	je     144e <_edata@@Base-0x200bc2>
    13a8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    13ac:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
    13af:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    13b2:	39 c2                	cmp    edx,eax
    13b4:	0f 85 84 00 00 00    	jne    143e <_edata@@Base-0x200bd2>
    13ba:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    13be:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    13c2:	84 c0                	test   al,al
    13c4:	75 2f                	jne    13f5 <_edata@@Base-0x200c1b>
    13c6:	48 8d 3d 3f 04 00 00 	lea    rdi,[rip+0x43f]        # 180c <_edata@@Base-0x200804>
    13cd:	b8 00 00 00 00       	mov    eax,0x0
    13d2:	e8 d1 f5 ff ff       	call   9a8 <_edata@@Base-0x201668>
    13d7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    13db:	48 83 c0 1c          	add    rax,0x1c
    13df:	48 89 c6             	mov    rsi,rax
    13e2:	48 8d 3d 36 04 00 00 	lea    rdi,[rip+0x436]        # 181f <_edata@@Base-0x2007f1>
    13e9:	b8 00 00 00 00       	mov    eax,0x0
    13ee:	e8 ed f5 ff ff       	call   9e0 <_edata@@Base-0x201630>
    13f3:	eb 65                	jmp    145a <_edata@@Base-0x200bb6>
    13f5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    13f9:	0f b6 40 1b          	movzx  eax,BYTE PTR [rax+0x1b]
    13fd:	3c 01                	cmp    al,0x1
    13ff:	75 2f                	jne    1430 <_edata@@Base-0x200be0>
    1401:	48 8d 3d 04 04 00 00 	lea    rdi,[rip+0x404]        # 180c <_edata@@Base-0x200804>
    1408:	b8 00 00 00 00       	mov    eax,0x0
    140d:	e8 96 f5 ff ff       	call   9a8 <_edata@@Base-0x201668>
    1412:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1416:	48 83 c0 1c          	add    rax,0x1c
    141a:	48 89 c6             	mov    rsi,rax
    141d:	48 8d 3d 00 04 00 00 	lea    rdi,[rip+0x400]        # 1824 <_edata@@Base-0x2007ec>
    1424:	b8 00 00 00 00       	mov    eax,0x0
    1429:	e8 b2 f5 ff ff       	call   9e0 <_edata@@Base-0x201630>
    142e:	eb 2a                	jmp    145a <_edata@@Base-0x200bb6>
    1430:	48 8d 3d a7 03 00 00 	lea    rdi,[rip+0x3a7]        # 17de <_edata@@Base-0x200832>
    1437:	e8 4c f5 ff ff       	call   988 <_edata@@Base-0x201688>
    143c:	eb 1c                	jmp    145a <_edata@@Base-0x200bb6>
    143e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1442:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1445:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1449:	e9 4f ff ff ff       	jmp    139d <_edata@@Base-0x200c73>
    144e:	48 8d 3d a7 03 00 00 	lea    rdi,[rip+0x3a7]        # 17fc <_edata@@Base-0x200814>
    1455:	e8 2e f5 ff ff       	call   988 <_edata@@Base-0x201688>
    145a:	c9                   	leave  
    145b:	c3                   	ret    
    145c:	55                   	push   rbp
    145d:	48 89 e5             	mov    rbp,rsp
    1460:	48 83 ec 10          	sub    rsp,0x10
    1464:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1467:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    146b:	48 8d 3d b7 03 00 00 	lea    rdi,[rip+0x3b7]        # 1829 <_edata@@Base-0x2007e7>
    1472:	e8 b9 f6 ff ff       	call   b30 <_edata@@Base-0x2014e0>
    1477:	e8 b0 f7 ff ff       	call   c2c <_edata@@Base-0x2013e4>
    147c:	83 f8 05             	cmp    eax,0x5
    147f:	77 46                	ja     14c7 <_edata@@Base-0x200b49>
    1481:	89 c0                	mov    eax,eax
    1483:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    148a:	00 
    148b:	48 8d 05 a6 03 00 00 	lea    rax,[rip+0x3a6]        # 1838 <_edata@@Base-0x2007d8>
    1492:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    1495:	48 63 d0             	movsxd rdx,eax
    1498:	48 8d 05 99 03 00 00 	lea    rax,[rip+0x399]        # 1838 <_edata@@Base-0x2007d8>
    149f:	48 01 d0             	add    rax,rdx
    14a2:	ff e0                	jmp    rax
    14a4:	e8 6a f8 ff ff       	call   d13 <_edata@@Base-0x2012fd>
    14a9:	eb 1d                	jmp    14c8 <_edata@@Base-0x200b48>
    14ab:	e8 ca fb ff ff       	call   107a <_edata@@Base-0x200f96>
    14b0:	eb 16                	jmp    14c8 <_edata@@Base-0x200b48>
    14b2:	e8 ef fd ff ff       	call   12a6 <_edata@@Base-0x200d6a>
    14b7:	eb 0f                	jmp    14c8 <_edata@@Base-0x200b48>
    14b9:	e8 a0 fe ff ff       	call   135e <_edata@@Base-0x200cb2>
    14be:	eb 08                	jmp    14c8 <_edata@@Base-0x200b48>
    14c0:	b8 2a 00 00 00       	mov    eax,0x2a
    14c5:	eb 03                	jmp    14ca <_edata@@Base-0x200b46>
    14c7:	90                   	nop
    14c8:	eb ad                	jmp    1477 <_edata@@Base-0x200b99>
    14ca:	c9                   	leave  
    14cb:	c3                   	ret    
    14cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    14d0:	41 57                	push   r15
    14d2:	41 56                	push   r14
    14d4:	41 89 ff             	mov    r15d,edi
    14d7:	41 55                	push   r13
    14d9:	41 54                	push   r12
    14db:	4c 8d 25 96 08 20 00 	lea    r12,[rip+0x200896]        # 201d78 <_edata@@Base-0x298>
    14e2:	55                   	push   rbp
    14e3:	48 8d 2d 96 08 20 00 	lea    rbp,[rip+0x200896]        # 201d80 <_edata@@Base-0x290>
    14ea:	53                   	push   rbx
    14eb:	49 89 f6             	mov    r14,rsi
    14ee:	49 89 d5             	mov    r13,rdx
    14f1:	4c 29 e5             	sub    rbp,r12
    14f4:	48 83 ec 08          	sub    rsp,0x8
    14f8:	48 c1 fd 03          	sar    rbp,0x3
    14fc:	e8 47 f4 ff ff       	call   948 <_edata@@Base-0x2016c8>
    1501:	48 85 ed             	test   rbp,rbp
    1504:	74 20                	je     1526 <_edata@@Base-0x200aea>
    1506:	31 db                	xor    ebx,ebx
    1508:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    150f:	00 
    1510:	4c 89 ea             	mov    rdx,r13
    1513:	4c 89 f6             	mov    rsi,r14
    1516:	44 89 ff             	mov    edi,r15d
    1519:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    151d:	48 83 c3 01          	add    rbx,0x1
    1521:	48 39 eb             	cmp    rbx,rbp
    1524:	75 ea                	jne    1510 <_edata@@Base-0x200b00>
    1526:	48 83 c4 08          	add    rsp,0x8
    152a:	5b                   	pop    rbx
    152b:	5d                   	pop    rbp
    152c:	41 5c                	pop    r12
    152e:	41 5d                	pop    r13
    1530:	41 5e                	pop    r14
    1532:	41 5f                	pop    r15
    1534:	c3                   	ret    
    1535:	90                   	nop
    1536:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    153d:	00 00 00 
    1540:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000001544 <.fini>:
    1544:	48 83 ec 08          	sub    rsp,0x8
    1548:	48 83 c4 08          	add    rsp,0x8
    154c:	c3                   	ret    
