
zerostorage:     file format elf64-x86-64


Disassembly of section .init:

0000000000000ac0 <.init>:
 ac0:	48 83 ec 08          	sub    rsp,0x8
 ac4:	48 8b 05 0d 25 20 00 	mov    rax,QWORD PTR [rip+0x20250d]        # 202fd8 <__cxa_finalize@plt+0x2023a8>
 acb:	48 85 c0             	test   rax,rax
 ace:	74 05                	je     ad5 <free@plt-0x1b>
 ad0:	e8 cb 00 00 00       	call   ba0 <__gmon_start__@plt>
 ad5:	48 83 c4 08          	add    rsp,0x8
 ad9:	c3                   	ret    

Disassembly of section .plt:

0000000000000ae0 <free@plt-0x10>:
 ae0:	ff 35 22 24 20 00    	push   QWORD PTR [rip+0x202422]        # 202f08 <__cxa_finalize@plt+0x2022d8>
 ae6:	ff 25 24 24 20 00    	jmp    QWORD PTR [rip+0x202424]        # 202f10 <__cxa_finalize@plt+0x2022e0>
 aec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000af0 <free@plt>:
 af0:	ff 25 22 24 20 00    	jmp    QWORD PTR [rip+0x202422]        # 202f18 <__cxa_finalize@plt+0x2022e8>
 af6:	68 00 00 00 00       	push   0x0
 afb:	e9 e0 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b00 <__errno_location@plt>:
 b00:	ff 25 1a 24 20 00    	jmp    QWORD PTR [rip+0x20241a]        # 202f20 <__cxa_finalize@plt+0x2022f0>
 b06:	68 01 00 00 00       	push   0x1
 b0b:	e9 d0 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b10 <puts@plt>:
 b10:	ff 25 12 24 20 00    	jmp    QWORD PTR [rip+0x202412]        # 202f28 <__cxa_finalize@plt+0x2022f8>
 b16:	68 02 00 00 00       	push   0x2
 b1b:	e9 c0 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b20 <fread@plt>:
 b20:	ff 25 0a 24 20 00    	jmp    QWORD PTR [rip+0x20240a]        # 202f30 <__cxa_finalize@plt+0x202300>
 b26:	68 03 00 00 00       	push   0x3
 b2b:	e9 b0 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b30 <write@plt>:
 b30:	ff 25 02 24 20 00    	jmp    QWORD PTR [rip+0x202402]        # 202f38 <__cxa_finalize@plt+0x202308>
 b36:	68 04 00 00 00       	push   0x4
 b3b:	e9 a0 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b40 <fclose@plt>:
 b40:	ff 25 fa 23 20 00    	jmp    QWORD PTR [rip+0x2023fa]        # 202f40 <__cxa_finalize@plt+0x202310>
 b46:	68 05 00 00 00       	push   0x5
 b4b:	e9 90 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b50 <__stack_chk_fail@plt>:
 b50:	ff 25 f2 23 20 00    	jmp    QWORD PTR [rip+0x2023f2]        # 202f48 <__cxa_finalize@plt+0x202318>
 b56:	68 06 00 00 00       	push   0x6
 b5b:	e9 80 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b60 <alarm@plt>:
 b60:	ff 25 ea 23 20 00    	jmp    QWORD PTR [rip+0x2023ea]        # 202f50 <__cxa_finalize@plt+0x202320>
 b66:	68 07 00 00 00       	push   0x7
 b6b:	e9 70 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b70 <read@plt>:
 b70:	ff 25 e2 23 20 00    	jmp    QWORD PTR [rip+0x2023e2]        # 202f58 <__cxa_finalize@plt+0x202328>
 b76:	68 08 00 00 00       	push   0x8
 b7b:	e9 60 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b80 <__libc_start_main@plt>:
 b80:	ff 25 da 23 20 00    	jmp    QWORD PTR [rip+0x2023da]        # 202f60 <__cxa_finalize@plt+0x202330>
 b86:	68 09 00 00 00       	push   0x9
 b8b:	e9 50 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000b90 <calloc@plt>:
 b90:	ff 25 d2 23 20 00    	jmp    QWORD PTR [rip+0x2023d2]        # 202f68 <__cxa_finalize@plt+0x202338>
 b96:	68 0a 00 00 00       	push   0xa
 b9b:	e9 40 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000ba0 <__gmon_start__@plt>:
 ba0:	ff 25 ca 23 20 00    	jmp    QWORD PTR [rip+0x2023ca]        # 202f70 <__cxa_finalize@plt+0x202340>
 ba6:	68 0b 00 00 00       	push   0xb
 bab:	e9 30 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000bb0 <strtol@plt>:
 bb0:	ff 25 c2 23 20 00    	jmp    QWORD PTR [rip+0x2023c2]        # 202f78 <__cxa_finalize@plt+0x202348>
 bb6:	68 0c 00 00 00       	push   0xc
 bbb:	e9 20 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000bc0 <memcpy@plt>:
 bc0:	ff 25 ba 23 20 00    	jmp    QWORD PTR [rip+0x2023ba]        # 202f80 <__cxa_finalize@plt+0x202350>
 bc6:	68 0d 00 00 00       	push   0xd
 bcb:	e9 10 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000bd0 <realloc@plt>:
 bd0:	ff 25 b2 23 20 00    	jmp    QWORD PTR [rip+0x2023b2]        # 202f88 <__cxa_finalize@plt+0x202358>
 bd6:	68 0e 00 00 00       	push   0xe
 bdb:	e9 00 ff ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000be0 <__printf_chk@plt>:
 be0:	ff 25 aa 23 20 00    	jmp    QWORD PTR [rip+0x2023aa]        # 202f90 <__cxa_finalize@plt+0x202360>
 be6:	68 0f 00 00 00       	push   0xf
 beb:	e9 f0 fe ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000bf0 <setvbuf@plt>:
 bf0:	ff 25 a2 23 20 00    	jmp    QWORD PTR [rip+0x2023a2]        # 202f98 <__cxa_finalize@plt+0x202368>
 bf6:	68 10 00 00 00       	push   0x10
 bfb:	e9 e0 fe ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000c00 <fopen@plt>:
 c00:	ff 25 9a 23 20 00    	jmp    QWORD PTR [rip+0x20239a]        # 202fa0 <__cxa_finalize@plt+0x202370>
 c06:	68 11 00 00 00       	push   0x11
 c0b:	e9 d0 fe ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000c10 <exit@plt>:
 c10:	ff 25 92 23 20 00    	jmp    QWORD PTR [rip+0x202392]        # 202fa8 <__cxa_finalize@plt+0x202378>
 c16:	68 12 00 00 00       	push   0x12
 c1b:	e9 c0 fe ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000c20 <fwrite@plt>:
 c20:	ff 25 8a 23 20 00    	jmp    QWORD PTR [rip+0x20238a]        # 202fb0 <__cxa_finalize@plt+0x202380>
 c26:	68 13 00 00 00       	push   0x13
 c2b:	e9 b0 fe ff ff       	jmp    ae0 <free@plt-0x10>

0000000000000c30 <__cxa_finalize@plt>:
 c30:	ff 25 82 23 20 00    	jmp    QWORD PTR [rip+0x202382]        # 202fb8 <__cxa_finalize@plt+0x202388>
 c36:	68 14 00 00 00       	push   0x14
 c3b:	e9 a0 fe ff ff       	jmp    ae0 <free@plt-0x10>

Disassembly of section .text:

0000000000000c40 <.text>:
     c40:	53                   	push   rbx
     c41:	48 8d 1d b8 0f 00 00 	lea    rbx,[rip+0xfb8]        # 1c00 <__cxa_finalize@plt+0xfd0>
     c48:	31 c0                	xor    eax,eax
     c4a:	e8 d1 02 00 00       	call   f20 <__cxa_finalize@plt+0x2f0>
     c4f:	90                   	nop
     c50:	48 8d 3d 3d 0d 00 00 	lea    rdi,[rip+0xd3d]        # 1994 <__cxa_finalize@plt+0xd64>
     c57:	e8 b4 fe ff ff       	call   b10 <puts@plt>
     c5c:	48 8d 3d 44 0d 00 00 	lea    rdi,[rip+0xd44]        # 19a7 <__cxa_finalize@plt+0xd77>
     c63:	e8 a8 fe ff ff       	call   b10 <puts@plt>
     c68:	48 8d 3d 42 0d 00 00 	lea    rdi,[rip+0xd42]        # 19b1 <__cxa_finalize@plt+0xd81>
     c6f:	e8 9c fe ff ff       	call   b10 <puts@plt>
     c74:	48 8d 3d 40 0d 00 00 	lea    rdi,[rip+0xd40]        # 19bb <__cxa_finalize@plt+0xd8b>
     c7b:	e8 90 fe ff ff       	call   b10 <puts@plt>
     c80:	48 8d 3d 3d 0d 00 00 	lea    rdi,[rip+0xd3d]        # 19c4 <__cxa_finalize@plt+0xd94>
     c87:	e8 84 fe ff ff       	call   b10 <puts@plt>
     c8c:	48 8d 3d 3b 0d 00 00 	lea    rdi,[rip+0xd3b]        # 19ce <__cxa_finalize@plt+0xd9e>
     c93:	e8 78 fe ff ff       	call   b10 <puts@plt>
     c98:	48 8d 3d 37 0d 00 00 	lea    rdi,[rip+0xd37]        # 19d6 <__cxa_finalize@plt+0xda6>
     c9f:	e8 6c fe ff ff       	call   b10 <puts@plt>
     ca4:	48 8d 3d 33 0d 00 00 	lea    rdi,[rip+0xd33]        # 19de <__cxa_finalize@plt+0xdae>
     cab:	e8 60 fe ff ff       	call   b10 <puts@plt>
     cb0:	48 8d 3d 2f 0d 00 00 	lea    rdi,[rip+0xd2f]        # 19e6 <__cxa_finalize@plt+0xdb6>
     cb7:	e8 54 fe ff ff       	call   b10 <puts@plt>
     cbc:	48 8d 35 36 0d 00 00 	lea    rsi,[rip+0xd36]        # 19f9 <__cxa_finalize@plt+0xdc9>
     cc3:	bf 01 00 00 00       	mov    edi,0x1
     cc8:	31 c0                	xor    eax,eax
     cca:	e8 11 ff ff ff       	call   be0 <__printf_chk@plt>
     ccf:	31 c0                	xor    eax,eax
     cd1:	e8 aa 0b 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
     cd6:	83 f8 07             	cmp    eax,0x7
     cd9:	0f 87 81 00 00 00    	ja     d60 <__cxa_finalize@plt+0x130>
     cdf:	89 c0                	mov    eax,eax
     ce1:	48 63 04 83          	movsxd rax,DWORD PTR [rbx+rax*4]
     ce5:	48 01 d8             	add    rax,rbx
     ce8:	ff e0                	jmp    rax
     cea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     cf0:	48 8d 3d 15 0e 00 00 	lea    rdi,[rip+0xe15]        # 1b0c <__cxa_finalize@plt+0xedc>
     cf7:	e8 14 fe ff ff       	call   b10 <puts@plt>
     cfc:	31 c0                	xor    eax,eax
     cfe:	5b                   	pop    rbx
     cff:	c3                   	ret    
     d00:	31 c0                	xor    eax,eax
     d02:	e8 a9 09 00 00       	call   16b0 <__cxa_finalize@plt+0xa80>
     d07:	e9 44 ff ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d10:	31 c0                	xor    eax,eax
     d12:	e8 e9 08 00 00       	call   1600 <__cxa_finalize@plt+0x9d0>
     d17:	e9 34 ff ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d20:	31 c0                	xor    eax,eax
     d22:	e8 09 08 00 00       	call   1530 <__cxa_finalize@plt+0x900>
     d27:	e9 24 ff ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d30:	31 c0                	xor    eax,eax
     d32:	e8 89 05 00 00       	call   12c0 <__cxa_finalize@plt+0x690>
     d37:	e9 14 ff ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d40:	31 c0                	xor    eax,eax
     d42:	e8 d9 03 00 00       	call   1120 <__cxa_finalize@plt+0x4f0>
     d47:	e9 04 ff ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d50:	31 c0                	xor    eax,eax
     d52:	e8 79 02 00 00       	call   fd0 <__cxa_finalize@plt+0x3a0>
     d57:	e9 f4 fe ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     d60:	48 8d 3d a9 0d 00 00 	lea    rdi,[rip+0xda9]        # 1b10 <__cxa_finalize@plt+0xee0>
     d67:	e8 a4 fd ff ff       	call   b10 <puts@plt>
     d6c:	e9 df fe ff ff       	jmp    c50 <__cxa_finalize@plt+0x20>
     d71:	31 ed                	xor    ebp,ebp
     d73:	49 89 d1             	mov    r9,rdx
     d76:	5e                   	pop    rsi
     d77:	48 89 e2             	mov    rdx,rsp
     d7a:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     d7e:	50                   	push   rax
     d7f:	54                   	push   rsp
     d80:	4c 8d 05 f9 0b 00 00 	lea    r8,[rip+0xbf9]        # 1980 <__cxa_finalize@plt+0xd50>
     d87:	48 8d 0d 82 0b 00 00 	lea    rcx,[rip+0xb82]        # 1910 <__cxa_finalize@plt+0xce0>
     d8e:	48 8d 3d ab fe ff ff 	lea    rdi,[rip+0xfffffffffffffeab]        # c40 <__cxa_finalize@plt+0x10>
     d95:	e8 e6 fd ff ff       	call   b80 <__libc_start_main@plt>
     d9a:	f4                   	hlt    
     d9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
     da0:	48 8d 05 70 22 20 00 	lea    rax,[rip+0x202270]        # 203017 <_edata@@Base+0x7>
     da7:	48 8d 3d 62 22 20 00 	lea    rdi,[rip+0x202262]        # 203010 <_edata@@Base>
     dae:	55                   	push   rbp
     daf:	48 29 f8             	sub    rax,rdi
     db2:	48 89 e5             	mov    rbp,rsp
     db5:	48 83 f8 0e          	cmp    rax,0xe
     db9:	77 02                	ja     dbd <__cxa_finalize@plt+0x18d>
     dbb:	5d                   	pop    rbp
     dbc:	c3                   	ret    
     dbd:	48 8b 05 fc 21 20 00 	mov    rax,QWORD PTR [rip+0x2021fc]        # 202fc0 <__cxa_finalize@plt+0x202390>
     dc4:	48 85 c0             	test   rax,rax
     dc7:	74 f2                	je     dbb <__cxa_finalize@plt+0x18b>
     dc9:	5d                   	pop    rbp
     dca:	ff e0                	jmp    rax
     dcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     dd0:	48 8d 05 39 22 20 00 	lea    rax,[rip+0x202239]        # 203010 <_edata@@Base>
     dd7:	48 8d 3d 32 22 20 00 	lea    rdi,[rip+0x202232]        # 203010 <_edata@@Base>
     dde:	55                   	push   rbp
     ddf:	48 29 f8             	sub    rax,rdi
     de2:	48 89 e5             	mov    rbp,rsp
     de5:	48 c1 f8 03          	sar    rax,0x3
     de9:	48 89 c2             	mov    rdx,rax
     dec:	48 c1 ea 3f          	shr    rdx,0x3f
     df0:	48 01 d0             	add    rax,rdx
     df3:	48 d1 f8             	sar    rax,1
     df6:	75 02                	jne    dfa <__cxa_finalize@plt+0x1ca>
     df8:	5d                   	pop    rbp
     df9:	c3                   	ret    
     dfa:	48 8b 15 e7 21 20 00 	mov    rdx,QWORD PTR [rip+0x2021e7]        # 202fe8 <__cxa_finalize@plt+0x2023b8>
     e01:	48 85 d2             	test   rdx,rdx
     e04:	74 f2                	je     df8 <__cxa_finalize@plt+0x1c8>
     e06:	5d                   	pop    rbp
     e07:	48 89 c6             	mov    rsi,rax
     e0a:	ff e2                	jmp    rdx
     e0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     e10:	80 3d 09 22 20 00 00 	cmp    BYTE PTR [rip+0x202209],0x0        # 203020 <_edata@@Base+0x10>
     e17:	75 27                	jne    e40 <__cxa_finalize@plt+0x210>
     e19:	48 83 3d cf 21 20 00 	cmp    QWORD PTR [rip+0x2021cf],0x0        # 202ff0 <__cxa_finalize@plt+0x2023c0>
     e20:	00 
     e21:	55                   	push   rbp
     e22:	48 89 e5             	mov    rbp,rsp
     e25:	74 0c                	je     e33 <__cxa_finalize@plt+0x203>
     e27:	48 8b 3d da 21 20 00 	mov    rdi,QWORD PTR [rip+0x2021da]        # 203008 <__cxa_finalize@plt+0x2023d8>
     e2e:	e8 fd fd ff ff       	call   c30 <__cxa_finalize@plt>
     e33:	e8 68 ff ff ff       	call   da0 <__cxa_finalize@plt+0x170>
     e38:	5d                   	pop    rbp
     e39:	c6 05 e0 21 20 00 01 	mov    BYTE PTR [rip+0x2021e0],0x1        # 203020 <_edata@@Base+0x10>
     e40:	f3 c3                	repz ret 
     e42:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
     e49:	1f 84 00 00 00 00 00 
     e50:	48 83 3d b0 1e 20 00 	cmp    QWORD PTR [rip+0x201eb0],0x0        # 202d08 <__cxa_finalize@plt+0x2020d8>
     e57:	00 
     e58:	74 26                	je     e80 <__cxa_finalize@plt+0x250>
     e5a:	48 8b 05 7f 21 20 00 	mov    rax,QWORD PTR [rip+0x20217f]        # 202fe0 <__cxa_finalize@plt+0x2023b0>
     e61:	48 85 c0             	test   rax,rax
     e64:	74 1a                	je     e80 <__cxa_finalize@plt+0x250>
     e66:	55                   	push   rbp
     e67:	48 8d 3d 9a 1e 20 00 	lea    rdi,[rip+0x201e9a]        # 202d08 <__cxa_finalize@plt+0x2020d8>
     e6e:	48 89 e5             	mov    rbp,rsp
     e71:	ff d0                	call   rax
     e73:	5d                   	pop    rbp
     e74:	e9 57 ff ff ff       	jmp    dd0 <__cxa_finalize@plt+0x1a0>
     e79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     e80:	e9 4b ff ff ff       	jmp    dd0 <__cxa_finalize@plt+0x1a0>
     e85:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     e8c:	00 00 00 
     e8f:	90                   	nop
     e90:	48 8d 3d fd 0a 00 00 	lea    rdi,[rip+0xafd]        # 1994 <__cxa_finalize@plt+0xd64>
     e97:	48 83 ec 08          	sub    rsp,0x8
     e9b:	e8 70 fc ff ff       	call   b10 <puts@plt>
     ea0:	48 8d 3d 00 0b 00 00 	lea    rdi,[rip+0xb00]        # 19a7 <__cxa_finalize@plt+0xd77>
     ea7:	e8 64 fc ff ff       	call   b10 <puts@plt>
     eac:	48 8d 3d fe 0a 00 00 	lea    rdi,[rip+0xafe]        # 19b1 <__cxa_finalize@plt+0xd81>
     eb3:	e8 58 fc ff ff       	call   b10 <puts@plt>
     eb8:	48 8d 3d fc 0a 00 00 	lea    rdi,[rip+0xafc]        # 19bb <__cxa_finalize@plt+0xd8b>
     ebf:	e8 4c fc ff ff       	call   b10 <puts@plt>
     ec4:	48 8d 3d f9 0a 00 00 	lea    rdi,[rip+0xaf9]        # 19c4 <__cxa_finalize@plt+0xd94>
     ecb:	e8 40 fc ff ff       	call   b10 <puts@plt>
     ed0:	48 8d 3d f7 0a 00 00 	lea    rdi,[rip+0xaf7]        # 19ce <__cxa_finalize@plt+0xd9e>
     ed7:	e8 34 fc ff ff       	call   b10 <puts@plt>
     edc:	48 8d 3d f3 0a 00 00 	lea    rdi,[rip+0xaf3]        # 19d6 <__cxa_finalize@plt+0xda6>
     ee3:	e8 28 fc ff ff       	call   b10 <puts@plt>
     ee8:	48 8d 3d ef 0a 00 00 	lea    rdi,[rip+0xaef]        # 19de <__cxa_finalize@plt+0xdae>
     eef:	e8 1c fc ff ff       	call   b10 <puts@plt>
     ef4:	48 8d 3d eb 0a 00 00 	lea    rdi,[rip+0xaeb]        # 19e6 <__cxa_finalize@plt+0xdb6>
     efb:	e8 10 fc ff ff       	call   b10 <puts@plt>
     f00:	48 8d 35 f2 0a 00 00 	lea    rsi,[rip+0xaf2]        # 19f9 <__cxa_finalize@plt+0xdc9>
     f07:	bf 01 00 00 00       	mov    edi,0x1
     f0c:	31 c0                	xor    eax,eax
     f0e:	e8 cd fc ff ff       	call   be0 <__printf_chk@plt>
     f13:	31 c0                	xor    eax,eax
     f15:	e8 66 09 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
     f1a:	48 83 c4 08          	add    rsp,0x8
     f1e:	c3                   	ret    
     f1f:	90                   	nop
     f20:	48 8b 05 a9 20 20 00 	mov    rax,QWORD PTR [rip+0x2020a9]        # 202fd0 <__cxa_finalize@plt+0x2023a0>
     f27:	53                   	push   rbx
     f28:	31 c9                	xor    ecx,ecx
     f2a:	31 f6                	xor    esi,esi
     f2c:	ba 02 00 00 00       	mov    edx,0x2
     f31:	48 8b 38             	mov    rdi,QWORD PTR [rax]
     f34:	e8 b7 fc ff ff       	call   bf0 <setvbuf@plt>
     f39:	48 8b 05 88 20 20 00 	mov    rax,QWORD PTR [rip+0x202088]        # 202fc8 <__cxa_finalize@plt+0x202398>
     f40:	31 c9                	xor    ecx,ecx
     f42:	31 f6                	xor    esi,esi
     f44:	ba 02 00 00 00       	mov    edx,0x2
     f49:	48 8b 38             	mov    rdi,QWORD PTR [rax]
     f4c:	e8 9f fc ff ff       	call   bf0 <setvbuf@plt>
     f51:	bf 3c 00 00 00       	mov    edi,0x3c
     f56:	e8 05 fc ff ff       	call   b60 <alarm@plt>
     f5b:	48 8d 35 a5 0a 00 00 	lea    rsi,[rip+0xaa5]        # 1a07 <__cxa_finalize@plt+0xdd7>
     f62:	48 8d 3d a1 0a 00 00 	lea    rdi,[rip+0xaa1]        # 1a0a <__cxa_finalize@plt+0xdda>
     f69:	e8 92 fc ff ff       	call   c00 <fopen@plt>
     f6e:	48 85 c0             	test   rax,rax
     f71:	48 89 c3             	mov    rbx,rax
     f74:	74 28                	je     f9e <__cxa_finalize@plt+0x36e>
     f76:	48 8d 3d cb 20 20 00 	lea    rdi,[rip+0x2020cb]        # 203048 <_edata@@Base+0x38>
     f7d:	48 89 c1             	mov    rcx,rax
     f80:	ba 08 00 00 00       	mov    edx,0x8
     f85:	be 01 00 00 00       	mov    esi,0x1
     f8a:	e8 91 fb ff ff       	call   b20 <fread@plt>
     f8f:	48 83 f8 08          	cmp    rax,0x8
     f93:	75 09                	jne    f9e <__cxa_finalize@plt+0x36e>
     f95:	48 89 df             	mov    rdi,rbx
     f98:	5b                   	pop    rbx
     f99:	e9 a2 fb ff ff       	jmp    b40 <fclose@plt>
     f9e:	48 8b 05 53 20 20 00 	mov    rax,QWORD PTR [rip+0x202053]        # 202ff8 <__cxa_finalize@plt+0x2023c8>
     fa5:	48 8d 3d 6b 0a 00 00 	lea    rdi,[rip+0xa6b]        # 1a17 <__cxa_finalize@plt+0xde7>
     fac:	ba 0b 00 00 00       	mov    edx,0xb
     fb1:	be 01 00 00 00       	mov    esi,0x1
     fb6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
     fb9:	e8 62 fc ff ff       	call   c20 <fwrite@plt>
     fbe:	83 cf ff             	or     edi,0xffffffff
     fc1:	e8 4a fc ff ff       	call   c10 <exit@plt>
     fc6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     fcd:	00 00 00 
     fd0:	41 55                	push   r13
     fd2:	41 54                	push   r12
     fd4:	55                   	push   rbp
     fd5:	53                   	push   rbx
     fd6:	31 db                	xor    ebx,ebx
     fd8:	48 83 ec 08          	sub    rsp,0x8
     fdc:	4c 8d 25 7d 20 20 00 	lea    r12,[rip+0x20207d]        # 203060 <_edata@@Base+0x50>
     fe3:	4c 89 e0             	mov    rax,r12
     fe6:	eb 18                	jmp    1000 <__cxa_finalize@plt+0x3d0>
     fe8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     fef:	00 
     ff0:	83 c3 01             	add    ebx,0x1
     ff3:	48 83 c0 18          	add    rax,0x18
     ff7:	83 fb 20             	cmp    ebx,0x20
     ffa:	0f 84 d8 00 00 00    	je     10d8 <__cxa_finalize@plt+0x4a8>
    1000:	8b 10                	mov    edx,DWORD PTR [rax]
    1002:	85 d2                	test   edx,edx
    1004:	75 ea                	jne    ff0 <__cxa_finalize@plt+0x3c0>
    1006:	48 8d 35 16 0a 00 00 	lea    rsi,[rip+0xa16]        # 1a23 <__cxa_finalize@plt+0xdf3>
    100d:	bf 01 00 00 00       	mov    edi,0x1
    1012:	31 c0                	xor    eax,eax
    1014:	e8 c7 fb ff ff       	call   be0 <__printf_chk@plt>
    1019:	31 c0                	xor    eax,eax
    101b:	e8 60 08 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    1020:	85 c0                	test   eax,eax
    1022:	48 8d 3d 10 0a 00 00 	lea    rdi,[rip+0xa10]        # 1a39 <__cxa_finalize@plt+0xe09>
    1029:	0f 8e b0 00 00 00    	jle    10df <__cxa_finalize@plt+0x4af>
    102f:	3d 00 10 00 00       	cmp    eax,0x1000
    1034:	bd 00 10 00 00       	mov    ebp,0x1000
    1039:	bf 80 00 00 00       	mov    edi,0x80
    103e:	0f 4e e8             	cmovle ebp,eax
    1041:	be 01 00 00 00       	mov    esi,0x1
    1046:	81 fd 80 00 00 00    	cmp    ebp,0x80
    104c:	0f 4d fd             	cmovge edi,ebp
    104f:	48 63 ff             	movsxd rdi,edi
    1052:	e8 39 fb ff ff       	call   b90 <calloc@plt>
    1057:	48 85 c0             	test   rax,rax
    105a:	49 89 c5             	mov    r13,rax
    105d:	0f 84 8b 00 00 00    	je     10ee <__cxa_finalize@plt+0x4be>
    1063:	48 8d 35 ee 09 00 00 	lea    rsi,[rip+0x9ee]        # 1a58 <__cxa_finalize@plt+0xe28>
    106a:	48 63 ed             	movsxd rbp,ebp
    106d:	bf 01 00 00 00       	mov    edi,0x1
    1072:	31 c0                	xor    eax,eax
    1074:	e8 67 fb ff ff       	call   be0 <__printf_chk@plt>
    1079:	48 89 ee             	mov    rsi,rbp
    107c:	4c 89 ef             	mov    rdi,r13
    107f:	e8 cc 06 00 00       	call   1750 <__cxa_finalize@plt+0xb20>
    1084:	48 8d 15 bd 1f 20 00 	lea    rdx,[rip+0x201fbd]        # 203048 <_edata@@Base+0x38>
    108b:	48 63 c3             	movsxd rax,ebx
    108e:	48 8d 35 8b 0a 00 00 	lea    rsi,[rip+0xa8b]        # 1b20 <__cxa_finalize@plt+0xef0>
    1095:	48 8d 04 40          	lea    rax,[rax+rax*2]
    1099:	bf 01 00 00 00       	mov    edi,0x1
    109e:	4c 33 2a             	xor    r13,QWORD PTR [rdx]
    10a1:	49 8d 04 c4          	lea    rax,[r12+rax*8]
    10a5:	89 da                	mov    edx,ebx
    10a7:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    10ad:	48 89 68 08          	mov    QWORD PTR [rax+0x8],rbp
    10b1:	4c 89 68 10          	mov    QWORD PTR [rax+0x10],r13
    10b5:	48 8d 05 84 1f 20 00 	lea    rax,[rip+0x201f84]        # 203040 <_edata@@Base+0x30>
    10bc:	48 83 00 01          	add    QWORD PTR [rax],0x1
    10c0:	48 83 c4 08          	add    rsp,0x8
    10c4:	31 c0                	xor    eax,eax
    10c6:	5b                   	pop    rbx
    10c7:	5d                   	pop    rbp
    10c8:	41 5c                	pop    r12
    10ca:	41 5d                	pop    r13
    10cc:	e9 0f fb ff ff       	jmp    be0 <__printf_chk@plt>
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	48 8d 3d 69 0a 00 00 	lea    rdi,[rip+0xa69]        # 1b48 <__cxa_finalize@plt+0xf18>
    10df:	48 83 c4 08          	add    rsp,0x8
    10e3:	5b                   	pop    rbx
    10e4:	5d                   	pop    rbp
    10e5:	41 5c                	pop    r12
    10e7:	41 5d                	pop    r13
    10e9:	e9 22 fa ff ff       	jmp    b10 <puts@plt>
    10ee:	48 8b 05 03 1f 20 00 	mov    rax,QWORD PTR [rip+0x201f03]        # 202ff8 <__cxa_finalize@plt+0x2023c8>
    10f5:	48 8d 3d 4d 09 00 00 	lea    rdi,[rip+0x94d]        # 1a49 <__cxa_finalize@plt+0xe19>
    10fc:	ba 0e 00 00 00       	mov    edx,0xe
    1101:	be 01 00 00 00       	mov    esi,0x1
    1106:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    1109:	e8 12 fb ff ff       	call   c20 <fwrite@plt>
    110e:	bf ff ff ff ff       	mov    edi,0xffffffff
    1113:	e8 f8 fa ff ff       	call   c10 <exit@plt>
    1118:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    111f:	00 
    1120:	48 8d 05 19 1f 20 00 	lea    rax,[rip+0x201f19]        # 203040 <_edata@@Base+0x30>
    1127:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
    112b:	74 6b                	je     1198 <__cxa_finalize@plt+0x568>
    112d:	41 57                	push   r15
    112f:	48 8d 35 9e 09 00 00 	lea    rsi,[rip+0x99e]        # 1ad4 <__cxa_finalize@plt+0xea4>
    1136:	bf 01 00 00 00       	mov    edi,0x1
    113b:	31 c0                	xor    eax,eax
    113d:	41 56                	push   r14
    113f:	41 55                	push   r13
    1141:	41 54                	push   r12
    1143:	55                   	push   rbp
    1144:	53                   	push   rbx
    1145:	48 83 ec 08          	sub    rsp,0x8
    1149:	e8 92 fa ff ff       	call   be0 <__printf_chk@plt>
    114e:	31 c0                	xor    eax,eax
    1150:	e8 2b 07 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    1155:	83 f8 1f             	cmp    eax,0x1f
    1158:	48 89 c3             	mov    rbx,rax
    115b:	77 1a                	ja     1177 <__cxa_finalize@plt+0x547>
    115d:	48 63 e8             	movsxd rbp,eax
    1160:	48 8d 0d f9 1e 20 00 	lea    rcx,[rip+0x201ef9]        # 203060 <_edata@@Base+0x50>
    1167:	48 8d 44 6d 00       	lea    rax,[rbp+rbp*2+0x0]
    116c:	4c 8d 24 c1          	lea    r12,[rcx+rax*8]
    1170:	41 83 3c 24 01       	cmp    DWORD PTR [r12],0x1
    1175:	74 31                	je     11a8 <__cxa_finalize@plt+0x578>
    1177:	48 8d 3d ec 08 00 00 	lea    rdi,[rip+0x8ec]        # 1a6a <__cxa_finalize@plt+0xe3a>
    117e:	48 83 c4 08          	add    rsp,0x8
    1182:	5b                   	pop    rbx
    1183:	5d                   	pop    rbp
    1184:	41 5c                	pop    r12
    1186:	41 5d                	pop    r13
    1188:	41 5e                	pop    r14
    118a:	41 5f                	pop    r15
    118c:	e9 7f f9 ff ff       	jmp    b10 <puts@plt>
    1191:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1198:	48 8d 3d e9 08 00 00 	lea    rdi,[rip+0x8e9]        # 1a88 <__cxa_finalize@plt+0xe58>
    119f:	e9 6c f9 ff ff       	jmp    b10 <puts@plt>
    11a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    11a8:	48 8d 35 c7 08 00 00 	lea    rsi,[rip+0x8c7]        # 1a76 <__cxa_finalize@plt+0xe46>
    11af:	bf 01 00 00 00       	mov    edi,0x1
    11b4:	31 c0                	xor    eax,eax
    11b6:	e8 25 fa ff ff       	call   be0 <__printf_chk@plt>
    11bb:	31 c0                	xor    eax,eax
    11bd:	e8 be 06 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    11c2:	85 c0                	test   eax,eax
    11c4:	0f 8e b8 00 00 00    	jle    1282 <__cxa_finalize@plt+0x652>
    11ca:	3d 00 10 00 00       	cmp    eax,0x1000
    11cf:	41 bd 00 10 00 00    	mov    r13d,0x1000
    11d5:	4c 8d 3d 6c 1e 20 00 	lea    r15,[rip+0x201e6c]        # 203048 <_edata@@Base+0x38>
    11dc:	44 0f 4e e8          	cmovle r13d,eax
    11e0:	be 80 00 00 00       	mov    esi,0x80
    11e5:	4d 8b 74 24 10       	mov    r14,QWORD PTR [r12+0x10]
    11ea:	41 81 fd 80 00 00 00 	cmp    r13d,0x80
    11f1:	b8 80 00 00 00       	mov    eax,0x80
    11f6:	41 0f 4d f5          	cmovge esi,r13d
    11fa:	4d 33 37             	xor    r14,QWORD PTR [r15]
    11fd:	49 81 7c 24 08 80 00 	cmp    QWORD PTR [r12+0x8],0x80
    1204:	00 00 
    1206:	49 0f 43 44 24 08    	cmovae rax,QWORD PTR [r12+0x8]
    120c:	39 c6                	cmp    esi,eax
    120e:	74 13                	je     1223 <__cxa_finalize@plt+0x5f3>
    1210:	4c 89 f7             	mov    rdi,r14
    1213:	48 63 f6             	movsxd rsi,esi
    1216:	e8 b5 f9 ff ff       	call   bd0 <realloc@plt>
    121b:	48 85 c0             	test   rax,rax
    121e:	49 89 c6             	mov    r14,rax
    1221:	74 6b                	je     128e <__cxa_finalize@plt+0x65e>
    1223:	48 8d 35 2e 08 00 00 	lea    rsi,[rip+0x82e]        # 1a58 <__cxa_finalize@plt+0xe28>
    122a:	4d 63 e5             	movsxd r12,r13d
    122d:	bf 01 00 00 00       	mov    edi,0x1
    1232:	31 c0                	xor    eax,eax
    1234:	e8 a7 f9 ff ff       	call   be0 <__printf_chk@plt>
    1239:	4c 89 e6             	mov    rsi,r12
    123c:	4c 89 f7             	mov    rdi,r14
    123f:	e8 0c 05 00 00       	call   1750 <__cxa_finalize@plt+0xb20>
    1244:	48 8d 15 15 1e 20 00 	lea    rdx,[rip+0x201e15]        # 203060 <_edata@@Base+0x50>
    124b:	4d 33 37             	xor    r14,QWORD PTR [r15]
    124e:	48 8d 44 6d 00       	lea    rax,[rbp+rbp*2+0x0]
    1253:	48 8d 35 0e 09 00 00 	lea    rsi,[rip+0x90e]        # 1b68 <__cxa_finalize@plt+0xf38>
    125a:	bf 01 00 00 00       	mov    edi,0x1
    125f:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
    1263:	89 da                	mov    edx,ebx
    1265:	4c 89 70 10          	mov    QWORD PTR [rax+0x10],r14
    1269:	4c 89 60 08          	mov    QWORD PTR [rax+0x8],r12
    126d:	48 83 c4 08          	add    rsp,0x8
    1271:	5b                   	pop    rbx
    1272:	5d                   	pop    rbp
    1273:	41 5c                	pop    r12
    1275:	41 5d                	pop    r13
    1277:	41 5e                	pop    r14
    1279:	41 5f                	pop    r15
    127b:	31 c0                	xor    eax,eax
    127d:	e9 5e f9 ff ff       	jmp    be0 <__printf_chk@plt>
    1282:	48 8d 3d b0 07 00 00 	lea    rdi,[rip+0x7b0]        # 1a39 <__cxa_finalize@plt+0xe09>
    1289:	e9 f0 fe ff ff       	jmp    117e <__cxa_finalize@plt+0x54e>
    128e:	48 8b 05 63 1d 20 00 	mov    rax,QWORD PTR [rip+0x201d63]        # 202ff8 <__cxa_finalize@plt+0x2023c8>
    1295:	48 8d 3d ad 07 00 00 	lea    rdi,[rip+0x7ad]        # 1a49 <__cxa_finalize@plt+0xe19>
    129c:	ba 0e 00 00 00       	mov    edx,0xe
    12a1:	be 01 00 00 00       	mov    esi,0x1
    12a6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    12a9:	e8 72 f9 ff ff       	call   c20 <fwrite@plt>
    12ae:	83 cf ff             	or     edi,0xffffffff
    12b1:	e8 5a f9 ff ff       	call   c10 <exit@plt>
    12b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    12bd:	00 00 00 
    12c0:	48 8d 05 79 1d 20 00 	lea    rax,[rip+0x201d79]        # 203040 <_edata@@Base+0x30>
    12c7:	48 83 38 01          	cmp    QWORD PTR [rax],0x1
    12cb:	0f 86 1f 02 00 00    	jbe    14f0 <__cxa_finalize@plt+0x8c0>
    12d1:	41 57                	push   r15
    12d3:	41 56                	push   r14
    12d5:	41 55                	push   r13
    12d7:	41 54                	push   r12
    12d9:	55                   	push   rbp
    12da:	53                   	push   rbx
    12db:	31 db                	xor    ebx,ebx
    12dd:	48 83 ec 28          	sub    rsp,0x28
    12e1:	48 8d 2d 78 1d 20 00 	lea    rbp,[rip+0x201d78]        # 203060 <_edata@@Base+0x50>
    12e8:	48 89 e8             	mov    rax,rbp
    12eb:	eb 0f                	jmp    12fc <__cxa_finalize@plt+0x6cc>
    12ed:	0f 1f 00             	nop    DWORD PTR [rax]
    12f0:	83 c3 01             	add    ebx,0x1
    12f3:	48 83 c0 18          	add    rax,0x18
    12f7:	83 fb 20             	cmp    ebx,0x20
    12fa:	74 5c                	je     1358 <__cxa_finalize@plt+0x728>
    12fc:	8b 10                	mov    edx,DWORD PTR [rax]
    12fe:	85 d2                	test   edx,edx
    1300:	75 ee                	jne    12f0 <__cxa_finalize@plt+0x6c0>
    1302:	48 8d 35 c0 07 00 00 	lea    rsi,[rip+0x7c0]        # 1ac9 <__cxa_finalize@plt+0xe99>
    1309:	bf 01 00 00 00       	mov    edi,0x1
    130e:	31 c0                	xor    eax,eax
    1310:	e8 cb f8 ff ff       	call   be0 <__printf_chk@plt>
    1315:	31 c0                	xor    eax,eax
    1317:	e8 64 05 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    131c:	83 f8 1f             	cmp    eax,0x1f
    131f:	49 89 c4             	mov    r12,rax
    1322:	77 13                	ja     1337 <__cxa_finalize@plt+0x707>
    1324:	4d 63 ec             	movsxd r13,r12d
    1327:	4b 8d 44 6d 00       	lea    rax,[r13+r13*2+0x0]
    132c:	4c 8d 74 c5 00       	lea    r14,[rbp+rax*8+0x0]
    1331:	41 83 3e 01          	cmp    DWORD PTR [r14],0x1
    1335:	74 2a                	je     1361 <__cxa_finalize@plt+0x731>
    1337:	48 8d 3d 2c 07 00 00 	lea    rdi,[rip+0x72c]        # 1a6a <__cxa_finalize@plt+0xe3a>
    133e:	48 83 c4 28          	add    rsp,0x28
    1342:	5b                   	pop    rbx
    1343:	5d                   	pop    rbp
    1344:	41 5c                	pop    r12
    1346:	41 5d                	pop    r13
    1348:	41 5e                	pop    r14
    134a:	41 5f                	pop    r15
    134c:	e9 bf f7 ff ff       	jmp    b10 <puts@plt>
    1351:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1358:	48 8d 3d e9 07 00 00 	lea    rdi,[rip+0x7e9]        # 1b48 <__cxa_finalize@plt+0xf18>
    135f:	eb dd                	jmp    133e <__cxa_finalize@plt+0x70e>
    1361:	48 8d 35 4d 07 00 00 	lea    rsi,[rip+0x74d]        # 1ab5 <__cxa_finalize@plt+0xe85>
    1368:	bf 01 00 00 00       	mov    edi,0x1
    136d:	31 c0                	xor    eax,eax
    136f:	e8 6c f8 ff ff       	call   be0 <__printf_chk@plt>
    1374:	31 c0                	xor    eax,eax
    1376:	e8 05 05 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    137b:	83 f8 1f             	cmp    eax,0x1f
    137e:	49 89 c7             	mov    r15,rax
    1381:	77 b4                	ja     1337 <__cxa_finalize@plt+0x707>
    1383:	48 63 c8             	movsxd rcx,eax
    1386:	48 8d 04 49          	lea    rax,[rcx+rcx*2]
    138a:	4c 8d 44 c5 00       	lea    r8,[rbp+rax*8+0x0]
    138f:	41 83 38 01          	cmp    DWORD PTR [r8],0x1
    1393:	75 a2                	jne    1337 <__cxa_finalize@plt+0x707>
    1395:	49 8b 40 08          	mov    rax,QWORD PTR [r8+0x8]
    1399:	49 8b 7e 08          	mov    rdi,QWORD PTR [r14+0x8]
    139d:	ba 80 00 00 00       	mov    edx,0x80
    13a2:	4c 8d 1d 9f 1c 20 00 	lea    r11,[rip+0x201c9f]        # 203048 <_edata@@Base+0x38>
    13a9:	48 89 d6             	mov    rsi,rdx
    13ac:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    13b1:	4c 8d 14 07          	lea    r10,[rdi+rax*1]
    13b5:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
    13b8:	49 81 fa 80 00 00 00 	cmp    r10,0x80
    13bf:	49 0f 4d f2          	cmovge rsi,r10
    13c3:	4d 89 d9             	mov    r9,r11
    13c6:	4d 33 48 10          	xor    r9,QWORD PTR [r8+0x10]
    13ca:	48 3d 80 00 00 00    	cmp    rax,0x80
    13d0:	48 0f 43 d0          	cmovae rdx,rax
    13d4:	48 39 d6             	cmp    rsi,rdx
    13d7:	0f 84 1f 01 00 00    	je     14fc <__cxa_finalize@plt+0x8cc>
    13dd:	4c 89 cf             	mov    rdi,r9
    13e0:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    13e5:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    13ea:	e8 e1 f7 ff ff       	call   bd0 <realloc@plt>
    13ef:	48 85 c0             	test   rax,rax
    13f2:	49 89 c1             	mov    r9,rax
    13f5:	0f 84 09 01 00 00    	je     1504 <__cxa_finalize@plt+0x8d4>
    13fb:	48 8d 0d 46 1c 20 00 	lea    rcx,[rip+0x201c46]        # 203048 <_edata@@Base+0x38>
    1402:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    1407:	49 8b 56 08          	mov    rdx,QWORD PTR [r14+0x8]
    140b:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    1410:	4c 8b 19             	mov    r11,QWORD PTR [rcx]
    1413:	49 8b 40 08          	mov    rax,QWORD PTR [r8+0x8]
    1417:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    141c:	49 8d 3c 01          	lea    rdi,[r9+rax*1]
    1420:	4b 8d 44 6d 00       	lea    rax,[r13+r13*2+0x0]
    1425:	4c 89 de             	mov    rsi,r11
    1428:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    142d:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    1432:	4c 8d 6c c5 00       	lea    r13,[rbp+rax*8+0x0]
    1437:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    143c:	49 33 75 10          	xor    rsi,QWORD PTR [r13+0x10]
    1440:	e8 7b f7 ff ff       	call   bc0 <memcpy@plt>
    1445:	48 8d 05 fc 1b 20 00 	lea    rax,[rip+0x201bfc]        # 203048 <_edata@@Base+0x38>
    144c:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    1451:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    1456:	48 8b 38             	mov    rdi,QWORD PTR [rax]
    1459:	48 63 c3             	movsxd rax,ebx
    145c:	48 8d 04 40          	lea    rax,[rax+rax*2]
    1460:	48 8d 44 c5 00       	lea    rax,[rbp+rax*8+0x0]
    1465:	49 31 f9             	xor    r9,rdi
    1468:	4c 89 48 10          	mov    QWORD PTR [rax+0x10],r9
    146c:	49 33 7d 10          	xor    rdi,QWORD PTR [r13+0x10]
    1470:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    1476:	4c 89 50 08          	mov    QWORD PTR [rax+0x8],r10
    147a:	41 c7 45 00 00 00 00 	mov    DWORD PTR [r13+0x0],0x0
    1481:	00 
    1482:	49 c7 45 08 00 00 00 	mov    QWORD PTR [r13+0x8],0x0
    1489:	00 
    148a:	e8 61 f6 ff ff       	call   af0 <free@plt>
    148f:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    1494:	49 c7 45 10 00 00 00 	mov    QWORD PTR [r13+0x10],0x0
    149b:	00 
    149c:	41 89 d8             	mov    r8d,ebx
    149f:	44 89 fa             	mov    edx,r15d
    14a2:	48 8d 35 e7 06 00 00 	lea    rsi,[rip+0x6e7]        # 1b90 <__cxa_finalize@plt+0xf60>
    14a9:	bf 01 00 00 00       	mov    edi,0x1
    14ae:	48 8d 04 49          	lea    rax,[rcx+rcx*2]
    14b2:	44 89 e1             	mov    ecx,r12d
    14b5:	48 8d 44 c5 00       	lea    rax,[rbp+rax*8+0x0]
    14ba:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
    14c0:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
    14c7:	00 
    14c8:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
    14cf:	00 
    14d0:	48 8d 05 69 1b 20 00 	lea    rax,[rip+0x201b69]        # 203040 <_edata@@Base+0x30>
    14d7:	48 83 28 01          	sub    QWORD PTR [rax],0x1
    14db:	48 83 c4 28          	add    rsp,0x28
    14df:	31 c0                	xor    eax,eax
    14e1:	5b                   	pop    rbx
    14e2:	5d                   	pop    rbp
    14e3:	41 5c                	pop    r12
    14e5:	41 5d                	pop    r13
    14e7:	41 5e                	pop    r14
    14e9:	41 5f                	pop    r15
    14eb:	e9 f0 f6 ff ff       	jmp    be0 <__printf_chk@plt>
    14f0:	48 8d 3d a1 05 00 00 	lea    rdi,[rip+0x5a1]        # 1a98 <__cxa_finalize@plt+0xe68>
    14f7:	e9 14 f6 ff ff       	jmp    b10 <puts@plt>
    14fc:	48 89 fa             	mov    rdx,rdi
    14ff:	e9 18 ff ff ff       	jmp    141c <__cxa_finalize@plt+0x7ec>
    1504:	48 8b 05 ed 1a 20 00 	mov    rax,QWORD PTR [rip+0x201aed]        # 202ff8 <__cxa_finalize@plt+0x2023c8>
    150b:	48 8d 3d 37 05 00 00 	lea    rdi,[rip+0x537]        # 1a49 <__cxa_finalize@plt+0xe19>
    1512:	ba 0e 00 00 00       	mov    edx,0xe
    1517:	be 01 00 00 00       	mov    esi,0x1
    151c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    151f:	e8 fc f6 ff ff       	call   c20 <fwrite@plt>
    1524:	bf ff ff ff ff       	mov    edi,0xffffffff
    1529:	e8 e2 f6 ff ff       	call   c10 <exit@plt>
    152e:	66 90                	xchg   ax,ax
    1530:	55                   	push   rbp
    1531:	53                   	push   rbx
    1532:	48 83 ec 18          	sub    rsp,0x18
    1536:	48 8d 1d 03 1b 20 00 	lea    rbx,[rip+0x201b03]        # 203040 <_edata@@Base+0x30>
    153d:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
    1541:	74 4d                	je     1590 <__cxa_finalize@plt+0x960>
    1543:	48 8d 35 8a 05 00 00 	lea    rsi,[rip+0x58a]        # 1ad4 <__cxa_finalize@plt+0xea4>
    154a:	bf 01 00 00 00       	mov    edi,0x1
    154f:	31 c0                	xor    eax,eax
    1551:	e8 8a f6 ff ff       	call   be0 <__printf_chk@plt>
    1556:	31 c0                	xor    eax,eax
    1558:	e8 23 03 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    155d:	83 f8 1f             	cmp    eax,0x1f
    1560:	77 18                	ja     157a <__cxa_finalize@plt+0x94a>
    1562:	48 63 d0             	movsxd rdx,eax
    1565:	48 8d 2c 52          	lea    rbp,[rdx+rdx*2]
    1569:	48 8d 15 f0 1a 20 00 	lea    rdx,[rip+0x201af0]        # 203060 <_edata@@Base+0x50>
    1570:	48 8d 2c ea          	lea    rbp,[rdx+rbp*8]
    1574:	83 7d 00 01          	cmp    DWORD PTR [rbp+0x0],0x1
    1578:	74 2e                	je     15a8 <__cxa_finalize@plt+0x978>
    157a:	48 83 c4 18          	add    rsp,0x18
    157e:	48 8d 3d e5 04 00 00 	lea    rdi,[rip+0x4e5]        # 1a6a <__cxa_finalize@plt+0xe3a>
    1585:	5b                   	pop    rbx
    1586:	5d                   	pop    rbp
    1587:	e9 84 f5 ff ff       	jmp    b10 <puts@plt>
    158c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1590:	48 83 c4 18          	add    rsp,0x18
    1594:	48 8d 3d ed 04 00 00 	lea    rdi,[rip+0x4ed]        # 1a88 <__cxa_finalize@plt+0xe58>
    159b:	5b                   	pop    rbx
    159c:	5d                   	pop    rbp
    159d:	e9 6e f5 ff ff       	jmp    b10 <puts@plt>
    15a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    15a8:	48 8d 15 99 1a 20 00 	lea    rdx,[rip+0x201a99]        # 203048 <_edata@@Base+0x38>
    15af:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
    15b3:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
    15ba:	48 c7 45 08 00 00 00 	mov    QWORD PTR [rbp+0x8],0x0
    15c1:	00 
    15c2:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    15c7:	48 83 2b 01          	sub    QWORD PTR [rbx],0x1
    15cb:	48 33 3a             	xor    rdi,QWORD PTR [rdx]
    15ce:	e8 1d f5 ff ff       	call   af0 <free@plt>
    15d3:	48 c7 45 10 00 00 00 	mov    QWORD PTR [rbp+0x10],0x0
    15da:	00 
    15db:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    15e0:	48 83 c4 18          	add    rsp,0x18
    15e4:	5b                   	pop    rbx
    15e5:	5d                   	pop    rbp
    15e6:	48 8d 35 eb 05 00 00 	lea    rsi,[rip+0x5eb]        # 1bd8 <__cxa_finalize@plt+0xfa8>
    15ed:	89 c2                	mov    edx,eax
    15ef:	bf 01 00 00 00       	mov    edi,0x1
    15f4:	31 c0                	xor    eax,eax
    15f6:	e9 e5 f5 ff ff       	jmp    be0 <__printf_chk@plt>
    15fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1600:	48 8d 05 39 1a 20 00 	lea    rax,[rip+0x201a39]        # 203040 <_edata@@Base+0x30>
    1607:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
    160b:	74 4b                	je     1658 <__cxa_finalize@plt+0xa28>
    160d:	53                   	push   rbx
    160e:	48 8d 35 bf 04 00 00 	lea    rsi,[rip+0x4bf]        # 1ad4 <__cxa_finalize@plt+0xea4>
    1615:	bf 01 00 00 00       	mov    edi,0x1
    161a:	31 c0                	xor    eax,eax
    161c:	e8 bf f5 ff ff       	call   be0 <__printf_chk@plt>
    1621:	31 c0                	xor    eax,eax
    1623:	e8 58 02 00 00       	call   1880 <__cxa_finalize@plt+0xc50>
    1628:	83 f8 1f             	cmp    eax,0x1f
    162b:	77 17                	ja     1644 <__cxa_finalize@plt+0xa14>
    162d:	48 63 d0             	movsxd rdx,eax
    1630:	48 8d 1c 52          	lea    rbx,[rdx+rdx*2]
    1634:	48 8d 15 25 1a 20 00 	lea    rdx,[rip+0x201a25]        # 203060 <_edata@@Base+0x50>
    163b:	48 8d 1c da          	lea    rbx,[rdx+rbx*8]
    163f:	83 3b 01             	cmp    DWORD PTR [rbx],0x1
    1642:	74 24                	je     1668 <__cxa_finalize@plt+0xa38>
    1644:	5b                   	pop    rbx
    1645:	48 8d 3d 1e 04 00 00 	lea    rdi,[rip+0x41e]        # 1a6a <__cxa_finalize@plt+0xe3a>
    164c:	e9 bf f4 ff ff       	jmp    b10 <puts@plt>
    1651:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1658:	48 8d 3d 29 04 00 00 	lea    rdi,[rip+0x429]        # 1a88 <__cxa_finalize@plt+0xe58>
    165f:	e9 ac f4 ff ff       	jmp    b10 <puts@plt>
    1664:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1668:	48 8d 35 70 04 00 00 	lea    rsi,[rip+0x470]        # 1adf <__cxa_finalize@plt+0xeaf>
    166f:	89 c2                	mov    edx,eax
    1671:	bf 01 00 00 00       	mov    edi,0x1
    1676:	31 c0                	xor    eax,eax
    1678:	e8 63 f5 ff ff       	call   be0 <__printf_chk@plt>
    167d:	48 8d 05 c4 19 20 00 	lea    rax,[rip+0x2019c4]        # 203048 <_edata@@Base+0x38>
    1684:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
    1688:	48 8b 73 08          	mov    rsi,QWORD PTR [rbx+0x8]
    168c:	48 33 38             	xor    rdi,QWORD PTR [rax]
    168f:	e8 8c 01 00 00       	call   1820 <__cxa_finalize@plt+0xbf0>
    1694:	5b                   	pop    rbx
    1695:	48 8d 3d 86 03 00 00 	lea    rdi,[rip+0x386]        # 1a22 <__cxa_finalize@plt+0xdf2>
    169c:	e9 6f f4 ff ff       	jmp    b10 <puts@plt>
    16a1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
    16a8:	0f 1f 84 00 00 00 00 
    16af:	00 
    16b0:	48 8d 05 89 19 20 00 	lea    rax,[rip+0x201989]        # 203040 <_edata@@Base+0x30>
    16b7:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
    16bb:	0f 84 7f 00 00 00    	je     1740 <__cxa_finalize@plt+0xb10>
    16c1:	55                   	push   rbp
    16c2:	48 8d 3d 24 04 00 00 	lea    rdi,[rip+0x424]        # 1aed <__cxa_finalize@plt+0xebd>
    16c9:	53                   	push   rbx
    16ca:	31 db                	xor    ebx,ebx
    16cc:	48 83 ec 08          	sub    rsp,0x8
    16d0:	e8 3b f4 ff ff       	call   b10 <puts@plt>
    16d5:	48 8d 3d 1c 04 00 00 	lea    rdi,[rip+0x41c]        # 1af8 <__cxa_finalize@plt+0xec8>
    16dc:	e8 2f f4 ff ff       	call   b10 <puts@plt>
    16e1:	48 8d 2d 78 19 20 00 	lea    rbp,[rip+0x201978]        # 203060 <_edata@@Base+0x50>
    16e8:	eb 12                	jmp    16fc <__cxa_finalize@plt+0xacc>
    16ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    16f0:	83 c3 01             	add    ebx,0x1
    16f3:	48 83 c5 18          	add    rbp,0x18
    16f7:	83 fb 20             	cmp    ebx,0x20
    16fa:	74 34                	je     1730 <__cxa_finalize@plt+0xb00>
    16fc:	83 7d 00 01          	cmp    DWORD PTR [rbp+0x0],0x1
    1700:	75 ee                	jne    16f0 <__cxa_finalize@plt+0xac0>
    1702:	48 8b 4d 08          	mov    rcx,QWORD PTR [rbp+0x8]
    1706:	48 8d 35 f5 03 00 00 	lea    rsi,[rip+0x3f5]        # 1b02 <__cxa_finalize@plt+0xed2>
    170d:	89 da                	mov    edx,ebx
    170f:	31 c0                	xor    eax,eax
    1711:	bf 01 00 00 00       	mov    edi,0x1
    1716:	83 c3 01             	add    ebx,0x1
    1719:	48 83 c5 18          	add    rbp,0x18
    171d:	e8 be f4 ff ff       	call   be0 <__printf_chk@plt>
    1722:	83 fb 20             	cmp    ebx,0x20
    1725:	75 d5                	jne    16fc <__cxa_finalize@plt+0xacc>
    1727:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    172e:	00 00 
    1730:	48 83 c4 08          	add    rsp,0x8
    1734:	5b                   	pop    rbx
    1735:	5d                   	pop    rbp
    1736:	c3                   	ret    
    1737:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    173e:	00 00 
    1740:	48 8d 3d 41 03 00 00 	lea    rdi,[rip+0x341]        # 1a88 <__cxa_finalize@plt+0xe58>
    1747:	e9 c4 f3 ff ff       	jmp    b10 <puts@plt>
    174c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1750:	41 54                	push   r12
    1752:	31 c0                	xor    eax,eax
    1754:	48 85 f6             	test   rsi,rsi
    1757:	55                   	push   rbp
    1758:	48 89 f5             	mov    rbp,rsi
    175b:	53                   	push   rbx
    175c:	74 3c                	je     179a <__cxa_finalize@plt+0xb6a>
    175e:	49 89 fc             	mov    r12,rdi
    1761:	31 db                	xor    ebx,ebx
    1763:	eb 0b                	jmp    1770 <__cxa_finalize@plt+0xb40>
    1765:	0f 1f 00             	nop    DWORD PTR [rax]
    1768:	48 01 c3             	add    rbx,rax
    176b:	48 39 dd             	cmp    rbp,rbx
    176e:	76 27                	jbe    1797 <__cxa_finalize@plt+0xb67>
    1770:	48 89 ea             	mov    rdx,rbp
    1773:	49 8d 34 1c          	lea    rsi,[r12+rbx*1]
    1777:	31 ff                	xor    edi,edi
    1779:	48 29 da             	sub    rdx,rbx
    177c:	e8 ef f3 ff ff       	call   b70 <read@plt>
    1781:	48 85 c0             	test   rax,rax
    1784:	7f e2                	jg     1768 <__cxa_finalize@plt+0xb38>
    1786:	e8 75 f3 ff ff       	call   b00 <__errno_location@plt>
    178b:	8b 00                	mov    eax,DWORD PTR [rax]
    178d:	83 f8 04             	cmp    eax,0x4
    1790:	74 d9                	je     176b <__cxa_finalize@plt+0xb3b>
    1792:	83 f8 0b             	cmp    eax,0xb
    1795:	74 d4                	je     176b <__cxa_finalize@plt+0xb3b>
    1797:	48 89 d8             	mov    rax,rbx
    179a:	5b                   	pop    rbx
    179b:	5d                   	pop    rbp
    179c:	41 5c                	pop    r12
    179e:	c3                   	ret    
    179f:	90                   	nop
    17a0:	31 c0                	xor    eax,eax
    17a2:	48 85 f6             	test   rsi,rsi
    17a5:	74 5b                	je     1802 <__cxa_finalize@plt+0xbd2>
    17a7:	41 55                	push   r13
    17a9:	41 54                	push   r12
    17ab:	49 89 fc             	mov    r12,rdi
    17ae:	55                   	push   rbp
    17af:	48 8d 6e ff          	lea    rbp,[rsi-0x1]
    17b3:	53                   	push   rbx
    17b4:	31 db                	xor    ebx,ebx
    17b6:	48 83 ec 18          	sub    rsp,0x18
    17ba:	49 89 e5             	mov    r13,rsp
    17bd:	48 39 eb             	cmp    rbx,rbp
    17c0:	73 2e                	jae    17f0 <__cxa_finalize@plt+0xbc0>
    17c2:	31 ff                	xor    edi,edi
    17c4:	ba 01 00 00 00       	mov    edx,0x1
    17c9:	4c 89 ee             	mov    rsi,r13
    17cc:	e8 9f f3 ff ff       	call   b70 <read@plt>
    17d1:	48 85 c0             	test   rax,rax
    17d4:	7e 32                	jle    1808 <__cxa_finalize@plt+0xbd8>
    17d6:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    17da:	3c 0a                	cmp    al,0xa
    17dc:	74 12                	je     17f0 <__cxa_finalize@plt+0xbc0>
    17de:	41 88 04 1c          	mov    BYTE PTR [r12+rbx*1],al
    17e2:	48 83 c3 01          	add    rbx,0x1
    17e6:	48 39 eb             	cmp    rbx,rbp
    17e9:	72 d7                	jb     17c2 <__cxa_finalize@plt+0xb92>
    17eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    17f0:	41 c6 04 1c 00       	mov    BYTE PTR [r12+rbx*1],0x0
    17f5:	48 83 c4 18          	add    rsp,0x18
    17f9:	48 89 d8             	mov    rax,rbx
    17fc:	5b                   	pop    rbx
    17fd:	5d                   	pop    rbp
    17fe:	41 5c                	pop    r12
    1800:	41 5d                	pop    r13
    1802:	f3 c3                	repz ret 
    1804:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1808:	e8 f3 f2 ff ff       	call   b00 <__errno_location@plt>
    180d:	8b 00                	mov    eax,DWORD PTR [rax]
    180f:	83 f8 04             	cmp    eax,0x4
    1812:	74 a9                	je     17bd <__cxa_finalize@plt+0xb8d>
    1814:	83 f8 0b             	cmp    eax,0xb
    1817:	75 d7                	jne    17f0 <__cxa_finalize@plt+0xbc0>
    1819:	eb a2                	jmp    17bd <__cxa_finalize@plt+0xb8d>
    181b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1820:	41 54                	push   r12
    1822:	48 85 f6             	test   rsi,rsi
    1825:	55                   	push   rbp
    1826:	48 89 f5             	mov    rbp,rsi
    1829:	53                   	push   rbx
    182a:	74 46                	je     1872 <__cxa_finalize@plt+0xc42>
    182c:	49 89 fc             	mov    r12,rdi
    182f:	31 db                	xor    ebx,ebx
    1831:	eb 0d                	jmp    1840 <__cxa_finalize@plt+0xc10>
    1833:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1838:	48 01 c3             	add    rbx,rax
    183b:	48 39 eb             	cmp    rbx,rbp
    183e:	73 2a                	jae    186a <__cxa_finalize@plt+0xc3a>
    1840:	48 89 ea             	mov    rdx,rbp
    1843:	49 8d 34 1c          	lea    rsi,[r12+rbx*1]
    1847:	bf 01 00 00 00       	mov    edi,0x1
    184c:	48 29 da             	sub    rdx,rbx
    184f:	e8 dc f2 ff ff       	call   b30 <write@plt>
    1854:	48 85 c0             	test   rax,rax
    1857:	7f df                	jg     1838 <__cxa_finalize@plt+0xc08>
    1859:	e8 a2 f2 ff ff       	call   b00 <__errno_location@plt>
    185e:	8b 00                	mov    eax,DWORD PTR [rax]
    1860:	83 f8 04             	cmp    eax,0x4
    1863:	74 d6                	je     183b <__cxa_finalize@plt+0xc0b>
    1865:	83 f8 0b             	cmp    eax,0xb
    1868:	74 d1                	je     183b <__cxa_finalize@plt+0xc0b>
    186a:	48 89 d8             	mov    rax,rbx
    186d:	5b                   	pop    rbx
    186e:	5d                   	pop    rbp
    186f:	41 5c                	pop    r12
    1871:	c3                   	ret    
    1872:	31 c0                	xor    eax,eax
    1874:	eb f7                	jmp    186d <__cxa_finalize@plt+0xc3d>
    1876:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    187d:	00 00 00 
    1880:	55                   	push   rbp
    1881:	53                   	push   rbx
    1882:	31 db                	xor    ebx,ebx
    1884:	48 83 ec 48          	sub    rsp,0x48
    1888:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    188f:	00 00 
    1891:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    1896:	31 c0                	xor    eax,eax
    1898:	48 89 e5             	mov    rbp,rsp
    189b:	eb 19                	jmp    18b6 <__cxa_finalize@plt+0xc86>
    189d:	0f 1f 00             	nop    DWORD PTR [rax]
    18a0:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    18a4:	3c 0a                	cmp    al,0xa
    18a6:	74 33                	je     18db <__cxa_finalize@plt+0xcab>
    18a8:	88 44 1c 10          	mov    BYTE PTR [rsp+rbx*1+0x10],al
    18ac:	48 83 c3 01          	add    rbx,0x1
    18b0:	48 83 fb 1e          	cmp    rbx,0x1e
    18b4:	77 25                	ja     18db <__cxa_finalize@plt+0xcab>
    18b6:	31 ff                	xor    edi,edi
    18b8:	ba 01 00 00 00       	mov    edx,0x1
    18bd:	48 89 ee             	mov    rsi,rbp
    18c0:	e8 ab f2 ff ff       	call   b70 <read@plt>
    18c5:	48 85 c0             	test   rax,rax
    18c8:	7f d6                	jg     18a0 <__cxa_finalize@plt+0xc70>
    18ca:	e8 31 f2 ff ff       	call   b00 <__errno_location@plt>
    18cf:	8b 00                	mov    eax,DWORD PTR [rax]
    18d1:	83 f8 04             	cmp    eax,0x4
    18d4:	74 da                	je     18b0 <__cxa_finalize@plt+0xc80>
    18d6:	83 f8 0b             	cmp    eax,0xb
    18d9:	74 d5                	je     18b0 <__cxa_finalize@plt+0xc80>
    18db:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
    18e0:	31 f6                	xor    esi,esi
    18e2:	ba 0a 00 00 00       	mov    edx,0xa
    18e7:	c6 44 1c 10 00       	mov    BYTE PTR [rsp+rbx*1+0x10],0x0
    18ec:	e8 bf f2 ff ff       	call   bb0 <strtol@plt>
    18f1:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    18f6:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    18fd:	00 00 
    18ff:	75 07                	jne    1908 <__cxa_finalize@plt+0xcd8>
    1901:	48 83 c4 48          	add    rsp,0x48
    1905:	5b                   	pop    rbx
    1906:	5d                   	pop    rbp
    1907:	c3                   	ret    
    1908:	e8 43 f2 ff ff       	call   b50 <__stack_chk_fail@plt>
    190d:	0f 1f 00             	nop    DWORD PTR [rax]
    1910:	41 57                	push   r15
    1912:	41 89 ff             	mov    r15d,edi
    1915:	41 56                	push   r14
    1917:	49 89 f6             	mov    r14,rsi
    191a:	41 55                	push   r13
    191c:	49 89 d5             	mov    r13,rdx
    191f:	41 54                	push   r12
    1921:	4c 8d 25 d0 13 20 00 	lea    r12,[rip+0x2013d0]        # 202cf8 <__cxa_finalize@plt+0x2020c8>
    1928:	55                   	push   rbp
    1929:	48 8d 2d d0 13 20 00 	lea    rbp,[rip+0x2013d0]        # 202d00 <__cxa_finalize@plt+0x2020d0>
    1930:	53                   	push   rbx
    1931:	4c 29 e5             	sub    rbp,r12
    1934:	31 db                	xor    ebx,ebx
    1936:	48 c1 fd 03          	sar    rbp,0x3
    193a:	48 83 ec 08          	sub    rsp,0x8
    193e:	e8 7d f1 ff ff       	call   ac0 <free@plt-0x30>
    1943:	48 85 ed             	test   rbp,rbp
    1946:	74 1e                	je     1966 <__cxa_finalize@plt+0xd36>
    1948:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    194f:	00 
    1950:	4c 89 ea             	mov    rdx,r13
    1953:	4c 89 f6             	mov    rsi,r14
    1956:	44 89 ff             	mov    edi,r15d
    1959:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    195d:	48 83 c3 01          	add    rbx,0x1
    1961:	48 39 eb             	cmp    rbx,rbp
    1964:	75 ea                	jne    1950 <__cxa_finalize@plt+0xd20>
    1966:	48 83 c4 08          	add    rsp,0x8
    196a:	5b                   	pop    rbx
    196b:	5d                   	pop    rbp
    196c:	41 5c                	pop    r12
    196e:	41 5d                	pop    r13
    1970:	41 5e                	pop    r14
    1972:	41 5f                	pop    r15
    1974:	c3                   	ret    
    1975:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    197c:	00 00 00 00 
    1980:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000001984 <.fini>:
    1984:	48 83 ec 08          	sub    rsp,0x8
    1988:	48 83 c4 08          	add    rsp,0x8
    198c:	c3                   	ret    
