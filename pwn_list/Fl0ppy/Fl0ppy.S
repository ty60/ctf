
Fl0ppy:     file format elf32-i386


Disassembly of section .init:

000008d0 <.init>:
 8d0:	53                   	push   ebx
 8d1:	83 ec 08             	sub    esp,0x8
 8d4:	e8 77 01 00 00       	call   a50 <__isoc99_scanf@plt+0x50>
 8d9:	81 c3 1f 1e 00 00    	add    ebx,0x1e1f
 8df:	8b 83 f0 ff ff ff    	mov    eax,DWORD PTR [ebx-0x10]
 8e5:	85 c0                	test   eax,eax
 8e7:	74 05                	je     8ee <read@plt-0x22>
 8e9:	e8 a2 00 00 00       	call   990 <__gmon_start__@plt>
 8ee:	83 c4 08             	add    esp,0x8
 8f1:	5b                   	pop    ebx
 8f2:	c3                   	ret    

Disassembly of section .plt:

00000900 <read@plt-0x10>:
 900:	ff b3 04 00 00 00    	push   DWORD PTR [ebx+0x4]
 906:	ff a3 08 00 00 00    	jmp    DWORD PTR [ebx+0x8]
 90c:	00 00                	add    BYTE PTR [eax],al
	...

00000910 <read@plt>:
 910:	ff a3 0c 00 00 00    	jmp    DWORD PTR [ebx+0xc]
 916:	68 00 00 00 00       	push   0x0
 91b:	e9 e0 ff ff ff       	jmp    900 <read@plt-0x10>

00000920 <printf@plt>:
 920:	ff a3 10 00 00 00    	jmp    DWORD PTR [ebx+0x10]
 926:	68 08 00 00 00       	push   0x8
 92b:	e9 d0 ff ff ff       	jmp    900 <read@plt-0x10>

00000930 <signal@plt>:
 930:	ff a3 14 00 00 00    	jmp    DWORD PTR [ebx+0x14]
 936:	68 10 00 00 00       	push   0x10
 93b:	e9 c0 ff ff ff       	jmp    900 <read@plt-0x10>

00000940 <_IO_getc@plt>:
 940:	ff a3 18 00 00 00    	jmp    DWORD PTR [ebx+0x18]
 946:	68 18 00 00 00       	push   0x18
 94b:	e9 b0 ff ff ff       	jmp    900 <read@plt-0x10>

00000950 <__cxa_finalize@plt>:
 950:	ff a3 1c 00 00 00    	jmp    DWORD PTR [ebx+0x1c]
 956:	68 20 00 00 00       	push   0x20
 95b:	e9 a0 ff ff ff       	jmp    900 <read@plt-0x10>

00000960 <strcpy@plt>:
 960:	ff a3 20 00 00 00    	jmp    DWORD PTR [ebx+0x20]
 966:	68 28 00 00 00       	push   0x28
 96b:	e9 90 ff ff ff       	jmp    900 <read@plt-0x10>

00000970 <malloc@plt>:
 970:	ff a3 24 00 00 00    	jmp    DWORD PTR [ebx+0x24]
 976:	68 30 00 00 00       	push   0x30
 97b:	e9 80 ff ff ff       	jmp    900 <read@plt-0x10>

00000980 <puts@plt>:
 980:	ff a3 28 00 00 00    	jmp    DWORD PTR [ebx+0x28]
 986:	68 38 00 00 00       	push   0x38
 98b:	e9 70 ff ff ff       	jmp    900 <read@plt-0x10>

00000990 <__gmon_start__@plt>:
 990:	ff a3 2c 00 00 00    	jmp    DWORD PTR [ebx+0x2c]
 996:	68 40 00 00 00       	push   0x40
 99b:	e9 60 ff ff ff       	jmp    900 <read@plt-0x10>

000009a0 <exit@plt>:
 9a0:	ff a3 30 00 00 00    	jmp    DWORD PTR [ebx+0x30]
 9a6:	68 48 00 00 00       	push   0x48
 9ab:	e9 50 ff ff ff       	jmp    900 <read@plt-0x10>

000009b0 <strlen@plt>:
 9b0:	ff a3 34 00 00 00    	jmp    DWORD PTR [ebx+0x34]
 9b6:	68 50 00 00 00       	push   0x50
 9bb:	e9 40 ff ff ff       	jmp    900 <read@plt-0x10>

000009c0 <__libc_start_main@plt>:
 9c0:	ff a3 38 00 00 00    	jmp    DWORD PTR [ebx+0x38]
 9c6:	68 58 00 00 00       	push   0x58
 9cb:	e9 30 ff ff ff       	jmp    900 <read@plt-0x10>

000009d0 <setvbuf@plt>:
 9d0:	ff a3 3c 00 00 00    	jmp    DWORD PTR [ebx+0x3c]
 9d6:	68 60 00 00 00       	push   0x60
 9db:	e9 20 ff ff ff       	jmp    900 <read@plt-0x10>

000009e0 <memset@plt>:
 9e0:	ff a3 40 00 00 00    	jmp    DWORD PTR [ebx+0x40]
 9e6:	68 68 00 00 00       	push   0x68
 9eb:	e9 10 ff ff ff       	jmp    900 <read@plt-0x10>

000009f0 <strncpy@plt>:
 9f0:	ff a3 44 00 00 00    	jmp    DWORD PTR [ebx+0x44]
 9f6:	68 70 00 00 00       	push   0x70
 9fb:	e9 00 ff ff ff       	jmp    900 <read@plt-0x10>

00000a00 <__isoc99_scanf@plt>:
 a00:	ff a3 48 00 00 00    	jmp    DWORD PTR [ebx+0x48]
 a06:	68 78 00 00 00       	push   0x78
 a0b:	e9 f0 fe ff ff       	jmp    900 <read@plt-0x10>

Disassembly of section .text:

00000a10 <main@@Base-0x54a>:
     a10:	31 ed                	xor    ebp,ebp
     a12:	5e                   	pop    esi
     a13:	89 e1                	mov    ecx,esp
     a15:	83 e4 f0             	and    esp,0xfffffff0
     a18:	50                   	push   eax
     a19:	54                   	push   esp
     a1a:	52                   	push   edx
     a1b:	e8 22 00 00 00       	call   a42 <__isoc99_scanf@plt+0x42>
     a20:	81 c3 d8 1c 00 00    	add    ebx,0x1cd8
     a26:	8d 83 d8 ea ff ff    	lea    eax,[ebx-0x1528]
     a2c:	50                   	push   eax
     a2d:	8d 83 68 ea ff ff    	lea    eax,[ebx-0x1598]
     a33:	50                   	push   eax
     a34:	51                   	push   ecx
     a35:	56                   	push   esi
     a36:	ff b3 f4 ff ff ff    	push   DWORD PTR [ebx-0xc]
     a3c:	e8 7f ff ff ff       	call   9c0 <__libc_start_main@plt>
     a41:	f4                   	hlt    
     a42:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
     a45:	c3                   	ret    
     a46:	66 90                	xchg   ax,ax
     a48:	66 90                	xchg   ax,ax
     a4a:	66 90                	xchg   ax,ax
     a4c:	66 90                	xchg   ax,ax
     a4e:	66 90                	xchg   ax,ax
     a50:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
     a53:	c3                   	ret    
     a54:	66 90                	xchg   ax,ax
     a56:	66 90                	xchg   ax,ax
     a58:	66 90                	xchg   ax,ax
     a5a:	66 90                	xchg   ax,ax
     a5c:	66 90                	xchg   ax,ax
     a5e:	66 90                	xchg   ax,ax
     a60:	55                   	push   ebp
     a61:	89 e5                	mov    ebp,esp
     a63:	53                   	push   ebx
     a64:	e8 e7 ff ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
     a69:	81 c3 8f 1c 00 00    	add    ebx,0x1c8f
     a6f:	83 ec 04             	sub    esp,0x4
     a72:	8d 93 54 00 00 00    	lea    edx,[ebx+0x54]
     a78:	8d 83 57 00 00 00    	lea    eax,[ebx+0x57]
     a7e:	29 d0                	sub    eax,edx
     a80:	83 f8 06             	cmp    eax,0x6
     a83:	76 13                	jbe    a98 <__isoc99_scanf@plt+0x98>
     a85:	8b 83 e8 ff ff ff    	mov    eax,DWORD PTR [ebx-0x18]
     a8b:	85 c0                	test   eax,eax
     a8d:	74 09                	je     a98 <__isoc99_scanf@plt+0x98>
     a8f:	83 ec 0c             	sub    esp,0xc
     a92:	52                   	push   edx
     a93:	ff d0                	call   eax
     a95:	83 c4 10             	add    esp,0x10
     a98:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
     a9b:	c9                   	leave  
     a9c:	c3                   	ret    
     a9d:	8d 76 00             	lea    esi,[esi+0x0]
     aa0:	55                   	push   ebp
     aa1:	89 e5                	mov    ebp,esp
     aa3:	53                   	push   ebx
     aa4:	e8 a7 ff ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
     aa9:	81 c3 4f 1c 00 00    	add    ebx,0x1c4f
     aaf:	83 ec 04             	sub    esp,0x4
     ab2:	8d 93 54 00 00 00    	lea    edx,[ebx+0x54]
     ab8:	8d 83 54 00 00 00    	lea    eax,[ebx+0x54]
     abe:	29 d0                	sub    eax,edx
     ac0:	c1 f8 02             	sar    eax,0x2
     ac3:	89 c1                	mov    ecx,eax
     ac5:	c1 e9 1f             	shr    ecx,0x1f
     ac8:	01 c8                	add    eax,ecx
     aca:	d1 f8                	sar    eax,1
     acc:	74 14                	je     ae2 <__isoc99_scanf@plt+0xe2>
     ace:	8b 8b fc ff ff ff    	mov    ecx,DWORD PTR [ebx-0x4]
     ad4:	85 c9                	test   ecx,ecx
     ad6:	74 0a                	je     ae2 <__isoc99_scanf@plt+0xe2>
     ad8:	83 ec 08             	sub    esp,0x8
     adb:	50                   	push   eax
     adc:	52                   	push   edx
     add:	ff d1                	call   ecx
     adf:	83 c4 10             	add    esp,0x10
     ae2:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
     ae5:	c9                   	leave  
     ae6:	c3                   	ret    
     ae7:	89 f6                	mov    esi,esi
     ae9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
     af0:	55                   	push   ebp
     af1:	89 e5                	mov    ebp,esp
     af3:	53                   	push   ebx
     af4:	e8 57 ff ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
     af9:	81 c3 ff 1b 00 00    	add    ebx,0x1bff
     aff:	83 ec 04             	sub    esp,0x4
     b02:	80 bb 54 00 00 00 00 	cmp    BYTE PTR [ebx+0x54],0x0
     b09:	75 27                	jne    b32 <__isoc99_scanf@plt+0x132>
     b0b:	8b 83 ec ff ff ff    	mov    eax,DWORD PTR [ebx-0x14]
     b11:	85 c0                	test   eax,eax
     b13:	74 11                	je     b26 <__isoc99_scanf@plt+0x126>
     b15:	83 ec 0c             	sub    esp,0xc
     b18:	ff b3 50 00 00 00    	push   DWORD PTR [ebx+0x50]
     b1e:	e8 2d fe ff ff       	call   950 <__cxa_finalize@plt>
     b23:	83 c4 10             	add    esp,0x10
     b26:	e8 35 ff ff ff       	call   a60 <__isoc99_scanf@plt+0x60>
     b2b:	c6 83 54 00 00 00 01 	mov    BYTE PTR [ebx+0x54],0x1
     b32:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
     b35:	c9                   	leave  
     b36:	c3                   	ret    
     b37:	89 f6                	mov    esi,esi
     b39:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
     b40:	55                   	push   ebp
     b41:	89 e5                	mov    ebp,esp
     b43:	53                   	push   ebx
     b44:	e8 07 ff ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
     b49:	81 c3 af 1b 00 00    	add    ebx,0x1baf
     b4f:	83 ec 04             	sub    esp,0x4
     b52:	8d 83 f4 fe ff ff    	lea    eax,[ebx-0x10c]
     b58:	8b 10                	mov    edx,DWORD PTR [eax]
     b5a:	85 d2                	test   edx,edx
     b5c:	75 12                	jne    b70 <__isoc99_scanf@plt+0x170>
     b5e:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
     b61:	c9                   	leave  
     b62:	e9 39 ff ff ff       	jmp    aa0 <__isoc99_scanf@plt+0xa0>
     b67:	89 f6                	mov    esi,esi
     b69:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
     b70:	8b 93 f8 ff ff ff    	mov    edx,DWORD PTR [ebx-0x8]
     b76:	85 d2                	test   edx,edx
     b78:	74 e4                	je     b5e <__isoc99_scanf@plt+0x15e>
     b7a:	83 ec 0c             	sub    esp,0xc
     b7d:	50                   	push   eax
     b7e:	ff d2                	call   edx
     b80:	83 c4 10             	add    esp,0x10
     b83:	eb d9                	jmp    b5e <__isoc99_scanf@plt+0x15e>
     b85:	55                   	push   ebp
     b86:	89 e5                	mov    ebp,esp
     b88:	83 ec 18             	sub    esp,0x18
     b8b:	83 ec 0c             	sub    esp,0xc
     b8e:	68 f0 11 00 00       	push   0x11f0
     b93:	e8 fc ff ff ff       	call   b94 <__isoc99_scanf@plt+0x194>
     b98:	83 c4 10             	add    esp,0x10
     b9b:	83 ec 0c             	sub    esp,0xc
     b9e:	68 3d 12 00 00       	push   0x123d
     ba3:	e8 fc ff ff ff       	call   ba4 <__isoc99_scanf@plt+0x1a4>
     ba8:	83 c4 10             	add    esp,0x10
     bab:	83 ec 0c             	sub    esp,0xc
     bae:	68 4f 12 00 00       	push   0x124f
     bb3:	e8 fc ff ff ff       	call   bb4 <__isoc99_scanf@plt+0x1b4>
     bb8:	83 c4 10             	add    esp,0x10
     bbb:	83 ec 0c             	sub    esp,0xc
     bbe:	68 59 12 00 00       	push   0x1259
     bc3:	e8 fc ff ff ff       	call   bc4 <__isoc99_scanf@plt+0x1c4>
     bc8:	83 c4 10             	add    esp,0x10
     bcb:	83 ec 0c             	sub    esp,0xc
     bce:	68 62 12 00 00       	push   0x1262
     bd3:	e8 fc ff ff ff       	call   bd4 <__isoc99_scanf@plt+0x1d4>
     bd8:	83 c4 10             	add    esp,0x10
     bdb:	83 ec 0c             	sub    esp,0xc
     bde:	68 6d 12 00 00       	push   0x126d
     be3:	e8 fc ff ff ff       	call   be4 <__isoc99_scanf@plt+0x1e4>
     be8:	83 c4 10             	add    esp,0x10
     beb:	83 ec 0c             	sub    esp,0xc
     bee:	68 76 12 00 00       	push   0x1276
     bf3:	e8 fc ff ff ff       	call   bf4 <__isoc99_scanf@plt+0x1f4>
     bf8:	83 c4 10             	add    esp,0x10
     bfb:	83 ec 08             	sub    esp,0x8
     bfe:	8d 45 f4             	lea    eax,[ebp-0xc]
     c01:	50                   	push   eax
     c02:	68 78 12 00 00       	push   0x1278
     c07:	e8 fc ff ff ff       	call   c08 <__isoc99_scanf@plt+0x208>
     c0c:	83 c4 10             	add    esp,0x10
     c0f:	83 ec 0c             	sub    esp,0xc
     c12:	68 f0 11 00 00       	push   0x11f0
     c17:	e8 fc ff ff ff       	call   c18 <__isoc99_scanf@plt+0x218>
     c1c:	83 c4 10             	add    esp,0x10
     c1f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     c22:	c9                   	leave  
     c23:	c3                   	ret    
     c24:	55                   	push   ebp
     c25:	89 e5                	mov    ebp,esp
     c27:	83 ec 08             	sub    esp,0x8
     c2a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     c2d:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
     c34:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     c37:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
     c3e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     c41:	83 c0 08             	add    eax,0x8
     c44:	83 ec 04             	sub    esp,0x4
     c47:	6a 0a                	push   0xa
     c49:	6a 00                	push   0x0
     c4b:	50                   	push   eax
     c4c:	e8 fc ff ff ff       	call   c4d <__isoc99_scanf@plt+0x24d>
     c51:	83 c4 10             	add    esp,0x10
     c54:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     c57:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
     c5d:	c9                   	leave  
     c5e:	c3                   	ret    
     c5f:	55                   	push   ebp
     c60:	89 e5                	mov    ebp,esp
     c62:	81 ec 68 02 00 00    	sub    esp,0x268
     c68:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
     c6c:	75 1a                	jne    c88 <__isoc99_scanf@plt+0x288>
     c6e:	83 ec 0c             	sub    esp,0xc
     c71:	68 7b 12 00 00       	push   0x127b
     c76:	e8 fc ff ff ff       	call   c77 <__isoc99_scanf@plt+0x277>
     c7b:	83 c4 10             	add    esp,0x10
     c7e:	83 ec 0c             	sub    esp,0xc
     c81:	6a ff                	push   0xffffffff
     c83:	e8 fc ff ff ff       	call   c84 <__isoc99_scanf@plt+0x284>
     c88:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     c8b:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     c8e:	85 c0                	test   eax,eax
     c90:	0f 85 b5 00 00 00    	jne    d4b <__isoc99_scanf@plt+0x34b>
     c96:	83 ec 0c             	sub    esp,0xc
     c99:	68 97 12 00 00       	push   0x1297
     c9e:	e8 fc ff ff ff       	call   c9f <__isoc99_scanf@plt+0x29f>
     ca3:	83 c4 10             	add    esp,0x10
     ca6:	83 ec 0c             	sub    esp,0xc
     ca9:	68 00 02 00 00       	push   0x200
     cae:	e8 fc ff ff ff       	call   caf <__isoc99_scanf@plt+0x2af>
     cb3:	83 c4 10             	add    esp,0x10
     cb6:	89 c2                	mov    edx,eax
     cb8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     cbb:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
     cbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     cc1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     cc4:	83 ec 04             	sub    esp,0x4
     cc7:	68 00 02 00 00       	push   0x200
     ccc:	6a 00                	push   0x0
     cce:	50                   	push   eax
     ccf:	e8 fc ff ff ff       	call   cd0 <__isoc99_scanf@plt+0x2d0>
     cd4:	83 c4 10             	add    esp,0x10
     cd7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     cda:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     cdd:	83 ec 04             	sub    esp,0x4
     ce0:	68 00 02 00 00       	push   0x200
     ce5:	50                   	push   eax
     ce6:	6a 00                	push   0x0
     ce8:	e8 fc ff ff ff       	call   ce9 <__isoc99_scanf@plt+0x2e9>
     ced:	83 c4 10             	add    esp,0x10
     cf0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     cf3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     cf6:	83 ec 0c             	sub    esp,0xc
     cf9:	50                   	push   eax
     cfa:	e8 fc ff ff ff       	call   cfb <__isoc99_scanf@plt+0x2fb>
     cff:	83 c4 10             	add    esp,0x10
     d02:	89 c2                	mov    edx,eax
     d04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     d07:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
     d0a:	83 ec 0c             	sub    esp,0xc
     d0d:	68 aa 12 00 00       	push   0x12aa
     d12:	e8 fc ff ff ff       	call   d13 <__isoc99_scanf@plt+0x313>
     d17:	83 c4 10             	add    esp,0x10
     d1a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     d1d:	83 c0 08             	add    eax,0x8
     d20:	83 ec 04             	sub    esp,0x4
     d23:	6a 0a                	push   0xa
     d25:	50                   	push   eax
     d26:	6a 00                	push   0x0
     d28:	e8 fc ff ff ff       	call   d29 <__isoc99_scanf@plt+0x329>
     d2d:	83 c4 10             	add    esp,0x10
     d30:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     d33:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
     d39:	83 ec 0c             	sub    esp,0xc
     d3c:	68 bc 12 00 00       	push   0x12bc
     d41:	e8 fc ff ff ff       	call   d42 <__isoc99_scanf@plt+0x342>
     d46:	83 c4 10             	add    esp,0x10
     d49:	eb 10                	jmp    d5b <__isoc99_scanf@plt+0x35b>
     d4b:	83 ec 0c             	sub    esp,0xc
     d4e:	68 dd 12 00 00       	push   0x12dd
     d53:	e8 fc ff ff ff       	call   d54 <__isoc99_scanf@plt+0x354>
     d58:	83 c4 10             	add    esp,0x10
     d5b:	c9                   	leave  
     d5c:	c3                   	ret    
     d5d:	55                   	push   ebp
     d5e:	89 e5                	mov    ebp,esp
     d60:	83 ec 08             	sub    esp,0x8
     d63:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
     d67:	75 1a                	jne    d83 <__isoc99_scanf@plt+0x383>
     d69:	83 ec 0c             	sub    esp,0xc
     d6c:	68 7b 12 00 00       	push   0x127b
     d71:	e8 fc ff ff ff       	call   d72 <__isoc99_scanf@plt+0x372>
     d76:	83 c4 10             	add    esp,0x10
     d79:	83 ec 0c             	sub    esp,0xc
     d7c:	6a ff                	push   0xffffffff
     d7e:	e8 fc ff ff ff       	call   d7f <__isoc99_scanf@plt+0x37f>
     d83:	83 ec 0c             	sub    esp,0xc
     d86:	68 f0 11 00 00       	push   0x11f0
     d8b:	e8 fc ff ff ff       	call   d8c <__isoc99_scanf@plt+0x38c>
     d90:	83 c4 10             	add    esp,0x10
     d93:	83 ec 08             	sub    esp,0x8
     d96:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
     d99:	68 fb 12 00 00       	push   0x12fb
     d9e:	e8 fc ff ff ff       	call   d9f <__isoc99_scanf@plt+0x39f>
     da3:	83 c4 10             	add    esp,0x10
     da6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     da9:	83 c0 08             	add    eax,0x8
     dac:	83 ec 08             	sub    esp,0x8
     daf:	50                   	push   eax
     db0:	68 05 13 00 00       	push   0x1305
     db5:	e8 fc ff ff ff       	call   db6 <__isoc99_scanf@plt+0x3b6>
     dba:	83 c4 10             	add    esp,0x10
     dbd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     dc0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     dc3:	83 ec 08             	sub    esp,0x8
     dc6:	50                   	push   eax
     dc7:	68 16 13 00 00       	push   0x1316
     dcc:	e8 fc ff ff ff       	call   dcd <__isoc99_scanf@plt+0x3cd>
     dd1:	83 c4 10             	add    esp,0x10
     dd4:	83 ec 0c             	sub    esp,0xc
     dd7:	68 f0 11 00 00       	push   0x11f0
     ddc:	e8 fc ff ff ff       	call   ddd <__isoc99_scanf@plt+0x3dd>
     de1:	83 c4 10             	add    esp,0x10
     de4:	c9                   	leave  
     de5:	c3                   	ret    
     de6:	55                   	push   ebp
     de7:	89 e5                	mov    ebp,esp
     de9:	81 ec 18 04 00 00    	sub    esp,0x418
     def:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
     df6:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
     dfd:	83 ec 04             	sub    esp,0x4
     e00:	68 00 04 00 00       	push   0x400
     e05:	6a 00                	push   0x0
     e07:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     e0d:	50                   	push   eax
     e0e:	e8 fc ff ff ff       	call   e0f <__isoc99_scanf@plt+0x40f>
     e13:	83 c4 10             	add    esp,0x10
     e16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     e19:	8b 00                	mov    eax,DWORD PTR [eax]
     e1b:	85 c0                	test   eax,eax
     e1d:	75 1a                	jne    e39 <__isoc99_scanf@plt+0x439>
     e1f:	83 ec 0c             	sub    esp,0xc
     e22:	68 20 13 00 00       	push   0x1320
     e27:	e8 fc ff ff ff       	call   e28 <__isoc99_scanf@plt+0x428>
     e2c:	83 c4 10             	add    esp,0x10
     e2f:	83 ec 0c             	sub    esp,0xc
     e32:	6a ff                	push   0xffffffff
     e34:	e8 fc ff ff ff       	call   e35 <__isoc99_scanf@plt+0x435>
     e39:	83 ec 0c             	sub    esp,0xc
     e3c:	68 3c 13 00 00       	push   0x133c
     e41:	e8 fc ff ff ff       	call   e42 <__isoc99_scanf@plt+0x442>
     e46:	83 c4 10             	add    esp,0x10
     e49:	83 ec 08             	sub    esp,0x8
     e4c:	8d 45 f0             	lea    eax,[ebp-0x10]
     e4f:	50                   	push   eax
     e50:	68 78 12 00 00       	push   0x1278
     e55:	e8 fc ff ff ff       	call   e56 <__isoc99_scanf@plt+0x456>
     e5a:	83 c4 10             	add    esp,0x10
     e5d:	a1 00 00 00 00       	mov    eax,ds:0x0
     e62:	83 ec 0c             	sub    esp,0xc
     e65:	50                   	push   eax
     e66:	e8 fc ff ff ff       	call   e67 <__isoc99_scanf@plt+0x467>
     e6b:	83 c4 10             	add    esp,0x10
     e6e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     e71:	83 f8 01             	cmp    eax,0x1
     e74:	75 62                	jne    ed8 <__isoc99_scanf@plt+0x4d8>
     e76:	83 ec 0c             	sub    esp,0xc
     e79:	68 75 13 00 00       	push   0x1375
     e7e:	e8 fc ff ff ff       	call   e7f <__isoc99_scanf@plt+0x47f>
     e83:	83 c4 10             	add    esp,0x10
     e86:	83 ec 04             	sub    esp,0x4
     e89:	6a 25                	push   0x25
     e8b:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     e91:	50                   	push   eax
     e92:	6a 00                	push   0x0
     e94:	e8 fc ff ff ff       	call   e95 <__isoc99_scanf@plt+0x495>
     e99:	83 c4 10             	add    esp,0x10
     e9c:	83 ec 0c             	sub    esp,0xc
     e9f:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     ea5:	50                   	push   eax
     ea6:	e8 fc ff ff ff       	call   ea7 <__isoc99_scanf@plt+0x4a7>
     eab:	83 c4 10             	add    esp,0x10
     eae:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
     eb1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     eb4:	83 e8 01             	sub    eax,0x1
     eb7:	89 c1                	mov    ecx,eax
     eb9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     ebc:	8d 50 08             	lea    edx,[eax+0x8]
     ebf:	83 ec 04             	sub    esp,0x4
     ec2:	51                   	push   ecx
     ec3:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     ec9:	50                   	push   eax
     eca:	52                   	push   edx
     ecb:	e8 fc ff ff ff       	call   ecc <__isoc99_scanf@plt+0x4cc>
     ed0:	83 c4 10             	add    esp,0x10
     ed3:	e9 80 00 00 00       	jmp    f58 <__isoc99_scanf@plt+0x558>
     ed8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     edb:	83 f8 02             	cmp    eax,0x2
     ede:	75 5e                	jne    f3e <__isoc99_scanf@plt+0x53e>
     ee0:	83 ec 0c             	sub    esp,0xc
     ee3:	68 8a 13 00 00       	push   0x138a
     ee8:	e8 fc ff ff ff       	call   ee9 <__isoc99_scanf@plt+0x4e9>
     eed:	83 c4 10             	add    esp,0x10
     ef0:	83 ec 04             	sub    esp,0x4
     ef3:	68 00 02 00 00       	push   0x200
     ef8:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     efe:	50                   	push   eax
     eff:	6a 00                	push   0x0
     f01:	e8 fc ff ff ff       	call   f02 <__isoc99_scanf@plt+0x502>
     f06:	83 c4 10             	add    esp,0x10
     f09:	83 ec 0c             	sub    esp,0xc
     f0c:	8d 85 f0 fb ff ff    	lea    eax,[ebp-0x410]
     f12:	50                   	push   eax
     f13:	e8 fc ff ff ff       	call   f14 <__isoc99_scanf@plt+0x514>
     f18:	83 c4 10             	add    esp,0x10
     f1b:	89 c2                	mov    edx,eax
     f1d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     f20:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
     f23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     f26:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
     f29:	83 ec 08             	sub    esp,0x8
     f2c:	8d 95 f0 fb ff ff    	lea    edx,[ebp-0x410]
     f32:	52                   	push   edx
     f33:	50                   	push   eax
     f34:	e8 fc ff ff ff       	call   f35 <__isoc99_scanf@plt+0x535>
     f39:	83 c4 10             	add    esp,0x10
     f3c:	eb 1a                	jmp    f58 <__isoc99_scanf@plt+0x558>
     f3e:	83 ec 0c             	sub    esp,0xc
     f41:	68 97 13 00 00       	push   0x1397
     f46:	e8 fc ff ff ff       	call   f47 <__isoc99_scanf@plt+0x547>
     f4b:	83 c4 10             	add    esp,0x10
     f4e:	83 ec 0c             	sub    esp,0xc
     f51:	6a ff                	push   0xffffffff
     f53:	e8 fc ff ff ff       	call   f54 <__isoc99_scanf@plt+0x554>
     f58:	c9                   	leave  
     f59:	c3                   	ret    

00000f5a <main@@Base>:
     f5a:	8d 4c 24 04          	lea    ecx,[esp+0x4]
     f5e:	83 e4 f0             	and    esp,0xfffffff0
     f61:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
     f64:	55                   	push   ebp
     f65:	89 e5                	mov    ebp,esp
     f67:	53                   	push   ebx
     f68:	51                   	push   ecx
     f69:	83 ec 40             	sub    esp,0x40
     f6c:	89 cb                	mov    ebx,ecx
     f6e:	a1 00 00 00 00       	mov    eax,ds:0x0
     f73:	6a 00                	push   0x0
     f75:	6a 02                	push   0x2
     f77:	6a 00                	push   0x0
     f79:	50                   	push   eax
     f7a:	e8 fc ff ff ff       	call   f7b <main@@Base+0x21>
     f7f:	83 c4 10             	add    esp,0x10
     f82:	83 ec 08             	sub    esp,0x8
     f85:	6a 01                	push   0x1
     f87:	6a 0d                	push   0xd
     f89:	e8 fc ff ff ff       	call   f8a <main@@Base+0x30>
     f8e:	83 c4 10             	add    esp,0x10
     f91:	83 ec 0c             	sub    esp,0xc
     f94:	8d 45 dc             	lea    eax,[ebp-0x24]
     f97:	50                   	push   eax
     f98:	e8 87 fc ff ff       	call   c24 <__isoc99_scanf@plt+0x224>
     f9d:	83 c4 10             	add    esp,0x10
     fa0:	83 ec 0c             	sub    esp,0xc
     fa3:	8d 45 c4             	lea    eax,[ebp-0x3c]
     fa6:	50                   	push   eax
     fa7:	e8 78 fc ff ff       	call   c24 <__isoc99_scanf@plt+0x224>
     fac:	83 c4 10             	add    esp,0x10
     faf:	83 3b 02             	cmp    DWORD PTR [ebx],0x2
     fb2:	7e 0a                	jle    fbe <main@@Base+0x64>
     fb4:	b8 00 00 00 00       	mov    eax,0x0
     fb9:	e9 98 01 00 00       	jmp    1156 <main@@Base+0x1fc>
     fbe:	e8 c2 fb ff ff       	call   b85 <__isoc99_scanf@plt+0x185>
     fc3:	83 f8 02             	cmp    eax,0x2
     fc6:	0f 84 9a 00 00 00    	je     1066 <main@@Base+0x10c>
     fcc:	83 f8 02             	cmp    eax,0x2
     fcf:	7f 0a                	jg     fdb <main@@Base+0x81>
     fd1:	83 f8 01             	cmp    eax,0x1
     fd4:	74 1c                	je     ff2 <main@@Base+0x98>
     fd6:	e9 6f 01 00 00       	jmp    114a <main@@Base+0x1f0>
     fdb:	83 f8 03             	cmp    eax,0x3
     fde:	0f 84 ba 00 00 00    	je     109e <main@@Base+0x144>
     fe4:	83 f8 04             	cmp    eax,0x4
     fe7:	0f 84 09 01 00 00    	je     10f6 <main@@Base+0x19c>
     fed:	e9 58 01 00 00       	jmp    114a <main@@Base+0x1f0>
     ff2:	83 ec 0c             	sub    esp,0xc
     ff5:	68 a8 13 00 00       	push   0x13a8
     ffa:	e8 fc ff ff ff       	call   ffb <main@@Base+0xa1>
     fff:	83 c4 10             	add    esp,0x10
    1002:	83 ec 08             	sub    esp,0x8
    1005:	8d 45 c0             	lea    eax,[ebp-0x40]
    1008:	50                   	push   eax
    1009:	68 78 12 00 00       	push   0x1278
    100e:	e8 fc ff ff ff       	call   100f <main@@Base+0xb5>
    1013:	83 c4 10             	add    esp,0x10
    1016:	a1 00 00 00 00       	mov    eax,ds:0x0
    101b:	83 ec 0c             	sub    esp,0xc
    101e:	50                   	push   eax
    101f:	e8 fc ff ff ff       	call   1020 <main@@Base+0xc6>
    1024:	83 c4 10             	add    esp,0x10
    1027:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
    102a:	83 f8 01             	cmp    eax,0x1
    102d:	75 08                	jne    1037 <main@@Base+0xdd>
    102f:	8d 45 dc             	lea    eax,[ebp-0x24]
    1032:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    1035:	eb 2a                	jmp    1061 <main@@Base+0x107>
    1037:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
    103a:	83 f8 02             	cmp    eax,0x2
    103d:	75 08                	jne    1047 <main@@Base+0xed>
    103f:	8d 45 c4             	lea    eax,[ebp-0x3c]
    1042:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    1045:	eb 1a                	jmp    1061 <main@@Base+0x107>
    1047:	83 ec 0c             	sub    esp,0xc
    104a:	68 d2 13 00 00       	push   0x13d2
    104f:	e8 fc ff ff ff       	call   1050 <main@@Base+0xf6>
    1054:	83 c4 10             	add    esp,0x10
    1057:	83 ec 0c             	sub    esp,0xc
    105a:	6a ff                	push   0xffffffff
    105c:	e8 fc ff ff ff       	call   105d <main@@Base+0x103>
    1061:	e9 eb 00 00 00       	jmp    1151 <main@@Base+0x1f7>
    1066:	8d 45 dc             	lea    eax,[ebp-0x24]
    1069:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    106c:	74 08                	je     1076 <main@@Base+0x11c>
    106e:	8d 45 c4             	lea    eax,[ebp-0x3c]
    1071:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    1074:	75 13                	jne    1089 <main@@Base+0x12f>
    1076:	83 ec 0c             	sub    esp,0xc
    1079:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    107c:	e8 de fb ff ff       	call   c5f <__isoc99_scanf@plt+0x25f>
    1081:	83 c4 10             	add    esp,0x10
    1084:	e9 c8 00 00 00       	jmp    1151 <main@@Base+0x1f7>
    1089:	83 ec 0c             	sub    esp,0xc
    108c:	68 eb 13 00 00       	push   0x13eb
    1091:	e8 fc ff ff ff       	call   1092 <main@@Base+0x138>
    1096:	83 c4 10             	add    esp,0x10
    1099:	e9 b3 00 00 00       	jmp    1151 <main@@Base+0x1f7>
    109e:	8d 45 dc             	lea    eax,[ebp-0x24]
    10a1:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    10a4:	74 08                	je     10ae <main@@Base+0x154>
    10a6:	8d 45 c4             	lea    eax,[ebp-0x3c]
    10a9:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    10ac:	75 34                	jne    10e2 <main@@Base+0x188>
    10ae:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    10b1:	85 c0                	test   eax,eax
    10b3:	75 07                	jne    10bc <main@@Base+0x162>
    10b5:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    10b8:	85 c0                	test   eax,eax
    10ba:	74 14                	je     10d0 <main@@Base+0x176>
    10bc:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
    10bf:	83 ec 08             	sub    esp,0x8
    10c2:	50                   	push   eax
    10c3:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    10c6:	e8 92 fc ff ff       	call   d5d <__isoc99_scanf@plt+0x35d>
    10cb:	83 c4 10             	add    esp,0x10
    10ce:	eb 24                	jmp    10f4 <main@@Base+0x19a>
    10d0:	83 ec 0c             	sub    esp,0xc
    10d3:	68 08 14 00 00       	push   0x1408
    10d8:	e8 fc ff ff ff       	call   10d9 <main@@Base+0x17f>
    10dd:	83 c4 10             	add    esp,0x10
    10e0:	eb 12                	jmp    10f4 <main@@Base+0x19a>
    10e2:	83 ec 0c             	sub    esp,0xc
    10e5:	68 eb 13 00 00       	push   0x13eb
    10ea:	e8 fc ff ff ff       	call   10eb <main@@Base+0x191>
    10ef:	83 c4 10             	add    esp,0x10
    10f2:	eb 5d                	jmp    1151 <main@@Base+0x1f7>
    10f4:	eb 5b                	jmp    1151 <main@@Base+0x1f7>
    10f6:	8d 45 dc             	lea    eax,[ebp-0x24]
    10f9:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    10fc:	74 08                	je     1106 <main@@Base+0x1ac>
    10fe:	8d 45 c4             	lea    eax,[ebp-0x3c]
    1101:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    1104:	75 30                	jne    1136 <main@@Base+0x1dc>
    1106:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    1109:	85 c0                	test   eax,eax
    110b:	75 07                	jne    1114 <main@@Base+0x1ba>
    110d:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    1110:	85 c0                	test   eax,eax
    1112:	74 10                	je     1124 <main@@Base+0x1ca>
    1114:	83 ec 0c             	sub    esp,0xc
    1117:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    111a:	e8 c7 fc ff ff       	call   de6 <__isoc99_scanf@plt+0x3e6>
    111f:	83 c4 10             	add    esp,0x10
    1122:	eb 24                	jmp    1148 <main@@Base+0x1ee>
    1124:	83 ec 0c             	sub    esp,0xc
    1127:	68 08 14 00 00       	push   0x1408
    112c:	e8 fc ff ff ff       	call   112d <main@@Base+0x1d3>
    1131:	83 c4 10             	add    esp,0x10
    1134:	eb 12                	jmp    1148 <main@@Base+0x1ee>
    1136:	83 ec 0c             	sub    esp,0xc
    1139:	68 eb 13 00 00       	push   0x13eb
    113e:	e8 fc ff ff ff       	call   113f <main@@Base+0x1e5>
    1143:	83 c4 10             	add    esp,0x10
    1146:	eb 09                	jmp    1151 <main@@Base+0x1f7>
    1148:	eb 07                	jmp    1151 <main@@Base+0x1f7>
    114a:	b8 00 00 00 00       	mov    eax,0x0
    114f:	eb 05                	jmp    1156 <main@@Base+0x1fc>
    1151:	e9 68 fe ff ff       	jmp    fbe <main@@Base+0x64>
    1156:	8d 65 f8             	lea    esp,[ebp-0x8]
    1159:	59                   	pop    ecx
    115a:	5b                   	pop    ebx
    115b:	5d                   	pop    ebp
    115c:	8d 61 fc             	lea    esp,[ecx-0x4]
    115f:	c3                   	ret    
    1160:	55                   	push   ebp
    1161:	57                   	push   edi
    1162:	31 ff                	xor    edi,edi
    1164:	56                   	push   esi
    1165:	53                   	push   ebx
    1166:	e8 e5 f8 ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
    116b:	81 c3 8d 15 00 00    	add    ebx,0x158d
    1171:	83 ec 1c             	sub    esp,0x1c
    1174:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
    1178:	8d b3 f0 fe ff ff    	lea    esi,[ebx-0x110]
    117e:	e8 4d f7 ff ff       	call   8d0 <read@plt-0x40>
    1183:	8d 83 ec fe ff ff    	lea    eax,[ebx-0x114]
    1189:	29 c6                	sub    esi,eax
    118b:	c1 fe 02             	sar    esi,0x2
    118e:	85 f6                	test   esi,esi
    1190:	74 27                	je     11b9 <main@@Base+0x25f>
    1192:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
    1198:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
    119c:	89 2c 24             	mov    DWORD PTR [esp],ebp
    119f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    11a3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
    11a7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    11ab:	ff 94 bb ec fe ff ff 	call   DWORD PTR [ebx+edi*4-0x114]
    11b2:	83 c7 01             	add    edi,0x1
    11b5:	39 f7                	cmp    edi,esi
    11b7:	75 df                	jne    1198 <main@@Base+0x23e>
    11b9:	83 c4 1c             	add    esp,0x1c
    11bc:	5b                   	pop    ebx
    11bd:	5e                   	pop    esi
    11be:	5f                   	pop    edi
    11bf:	5d                   	pop    ebp
    11c0:	c3                   	ret    
    11c1:	eb 0d                	jmp    11d0 <main@@Base+0x276>
    11c3:	90                   	nop
    11c4:	90                   	nop
    11c5:	90                   	nop
    11c6:	90                   	nop
    11c7:	90                   	nop
    11c8:	90                   	nop
    11c9:	90                   	nop
    11ca:	90                   	nop
    11cb:	90                   	nop
    11cc:	90                   	nop
    11cd:	90                   	nop
    11ce:	90                   	nop
    11cf:	90                   	nop
    11d0:	f3 c3                	repz ret 

Disassembly of section .fini:

000011d4 <.fini>:
    11d4:	53                   	push   ebx
    11d5:	83 ec 08             	sub    esp,0x8
    11d8:	e8 73 f8 ff ff       	call   a50 <__isoc99_scanf@plt+0x50>
    11dd:	81 c3 1b 15 00 00    	add    ebx,0x151b
    11e3:	83 c4 08             	add    esp,0x8
    11e6:	5b                   	pop    ebx
    11e7:	c3                   	ret    
