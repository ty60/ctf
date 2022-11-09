
chall:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fe3]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nop    DWORD PTR [rax]
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401080 <setbuf@plt>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	f2 ff 25 8d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f8d]        # 404018 <setbuf@GLIBC_2.2.5>
  40108b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401090 <printf@plt>:
  401090:	f3 0f 1e fa          	endbr64 
  401094:	f2 ff 25 85 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f85]        # 404020 <printf@GLIBC_2.2.5>
  40109b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010a0 <alarm@plt>:
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	f2 ff 25 7d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f7d]        # 404028 <alarm@GLIBC_2.2.5>
  4010ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010b0 <__isoc99_scanf@plt>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 404030 <__isoc99_scanf@GLIBC_2.7>
  4010bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010c0 <exit@plt>:
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	f2 ff 25 6d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6d]        # 404038 <exit@GLIBC_2.2.5>
  4010cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

00000000004010d0 <_start>:
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	31 ed                	xor    ebp,ebp
  4010d6:	49 89 d1             	mov    r9,rdx
  4010d9:	5e                   	pop    rsi
  4010da:	48 89 e2             	mov    rdx,rsp
  4010dd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4010e1:	50                   	push   rax
  4010e2:	54                   	push   rsp
  4010e3:	49 c7 c0 f0 13 40 00 	mov    r8,0x4013f0
  4010ea:	48 c7 c1 80 13 40 00 	mov    rcx,0x401380
  4010f1:	48 c7 c7 b6 11 40 00 	mov    rdi,0x4011b6
  4010f8:	ff 15 f2 2e 00 00    	call   QWORD PTR [rip+0x2ef2]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4010fe:	f4                   	hlt    
  4010ff:	90                   	nop

0000000000401100 <_dl_relocate_static_pie>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	c3                   	ret    
  401105:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40110c:	00 00 00 
  40110f:	90                   	nop

0000000000401110 <deregister_tm_clones>:
  401110:	b8 50 40 40 00       	mov    eax,0x404050
  401115:	48 3d 50 40 40 00    	cmp    rax,0x404050
  40111b:	74 13                	je     401130 <deregister_tm_clones+0x20>
  40111d:	b8 00 00 00 00       	mov    eax,0x0
  401122:	48 85 c0             	test   rax,rax
  401125:	74 09                	je     401130 <deregister_tm_clones+0x20>
  401127:	bf 50 40 40 00       	mov    edi,0x404050
  40112c:	ff e0                	jmp    rax
  40112e:	66 90                	xchg   ax,ax
  401130:	c3                   	ret    
  401131:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401140 <register_tm_clones>:
  401140:	be 50 40 40 00       	mov    esi,0x404050
  401145:	48 81 ee 50 40 40 00 	sub    rsi,0x404050
  40114c:	48 89 f0             	mov    rax,rsi
  40114f:	48 c1 ee 3f          	shr    rsi,0x3f
  401153:	48 c1 f8 03          	sar    rax,0x3
  401157:	48 01 c6             	add    rsi,rax
  40115a:	48 d1 fe             	sar    rsi,1
  40115d:	74 11                	je     401170 <register_tm_clones+0x30>
  40115f:	b8 00 00 00 00       	mov    eax,0x0
  401164:	48 85 c0             	test   rax,rax
  401167:	74 07                	je     401170 <register_tm_clones+0x30>
  401169:	bf 50 40 40 00       	mov    edi,0x404050
  40116e:	ff e0                	jmp    rax
  401170:	c3                   	ret    
  401171:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401178:	00 00 00 00 
  40117c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401180 <__do_global_dtors_aux>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	80 3d dd 2e 00 00 00 	cmp    BYTE PTR [rip+0x2edd],0x0        # 404068 <completed.0>
  40118b:	75 13                	jne    4011a0 <__do_global_dtors_aux+0x20>
  40118d:	55                   	push   rbp
  40118e:	48 89 e5             	mov    rbp,rsp
  401191:	e8 7a ff ff ff       	call   401110 <deregister_tm_clones>
  401196:	c6 05 cb 2e 00 00 01 	mov    BYTE PTR [rip+0x2ecb],0x1        # 404068 <completed.0>
  40119d:	5d                   	pop    rbp
  40119e:	c3                   	ret    
  40119f:	90                   	nop
  4011a0:	c3                   	ret    
  4011a1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011a8:	00 00 00 00 
  4011ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011b0 <frame_dummy>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	eb 8a                	jmp    401140 <register_tm_clones>

00000000004011b6 <main>:
  4011b6:	f3 0f 1e fa          	endbr64 
  4011ba:	55                   	push   rbp
  4011bb:	48 89 e5             	mov    rbp,rsp
  4011be:	48 83 ec 20          	sub    rsp,0x20
  4011c2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4011c9:	00 00 
  4011cb:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4011cf:	31 c0                	xor    eax,eax
  4011d1:	48 8d 3d 2c 0e 00 00 	lea    rdi,[rip+0xe2c]        # 402004 <_IO_stdin_used+0x4>
  4011d8:	b8 00 00 00 00       	mov    eax,0x0
  4011dd:	e8 ae fe ff ff       	call   401090 <printf@plt>
  4011e2:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4011e6:	48 89 c6             	mov    rsi,rax
  4011e9:	48 8d 3d 1b 0e 00 00 	lea    rdi,[rip+0xe1b]        # 40200b <_IO_stdin_used+0xb>
  4011f0:	b8 00 00 00 00       	mov    eax,0x0
  4011f5:	e8 b6 fe ff ff       	call   4010b0 <__isoc99_scanf@plt>
  4011fa:	83 f8 01             	cmp    eax,0x1
  4011fd:	75 13                	jne    401212 <main+0x5c>
  4011ff:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401203:	48 85 c0             	test   rax,rax
  401206:	78 0a                	js     401212 <main+0x5c>
  401208:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40120c:	48 83 f8 05          	cmp    rax,0x5
  401210:	7e 0a                	jle    40121c <main+0x66>
  401212:	bf 00 00 00 00       	mov    edi,0x0
  401217:	e8 a4 fe ff ff       	call   4010c0 <exit@plt>
  40121c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401220:	48 83 c0 08          	add    rax,0x8
  401224:	48 8d 50 08          	lea    rdx,[rax+0x8]
  401228:	b8 10 00 00 00       	mov    eax,0x10
  40122d:	48 83 e8 01          	sub    rax,0x1
  401231:	48 01 d0             	add    rax,rdx
  401234:	be 10 00 00 00       	mov    esi,0x10
  401239:	ba 00 00 00 00       	mov    edx,0x0
  40123e:	48 f7 f6             	div    rsi
  401241:	48 6b c0 10          	imul   rax,rax,0x10
  401245:	48 89 c1             	mov    rcx,rax
  401248:	48 81 e1 00 f0 ff ff 	and    rcx,0xfffffffffffff000
  40124f:	48 89 e2             	mov    rdx,rsp
  401252:	48 29 ca             	sub    rdx,rcx
  401255:	48 39 d4             	cmp    rsp,rdx
  401258:	74 12                	je     40126c <main+0xb6>
  40125a:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  401261:	48 83 8c 24 f8 0f 00 	or     QWORD PTR [rsp+0xff8],0x0
  401268:	00 00 
  40126a:	eb e9                	jmp    401255 <main+0x9f>
  40126c:	48 89 c2             	mov    rdx,rax
  40126f:	81 e2 ff 0f 00 00    	and    edx,0xfff
  401275:	48 29 d4             	sub    rsp,rdx
  401278:	48 89 c2             	mov    rdx,rax
  40127b:	81 e2 ff 0f 00 00    	and    edx,0xfff
  401281:	48 85 d2             	test   rdx,rdx
  401284:	74 10                	je     401296 <main+0xe0>
  401286:	25 ff 0f 00 00       	and    eax,0xfff
  40128b:	48 83 e8 08          	sub    rax,0x8
  40128f:	48 01 e0             	add    rax,rsp
  401292:	48 83 08 00          	or     QWORD PTR [rax],0x0
  401296:	48 89 e0             	mov    rax,rsp
  401299:	48 83 c0 0f          	add    rax,0xf
  40129d:	48 c1 e8 04          	shr    rax,0x4
  4012a1:	48 c1 e0 04          	shl    rax,0x4
  4012a5:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4012a9:	48 8d 3d 5f 0d 00 00 	lea    rdi,[rip+0xd5f]        # 40200f <_IO_stdin_used+0xf>
  4012b0:	b8 00 00 00 00       	mov    eax,0x0
  4012b5:	e8 d6 fd ff ff       	call   401090 <printf@plt>
  4012ba:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  4012be:	48 89 c6             	mov    rsi,rax
  4012c1:	48 8d 3d 43 0d 00 00 	lea    rdi,[rip+0xd43]        # 40200b <_IO_stdin_used+0xb>
  4012c8:	b8 00 00 00 00       	mov    eax,0x0
  4012cd:	e8 de fd ff ff       	call   4010b0 <__isoc99_scanf@plt>
  4012d2:	83 f8 01             	cmp    eax,0x1
  4012d5:	75 16                	jne    4012ed <main+0x137>
  4012d7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4012db:	48 85 c0             	test   rax,rax
  4012de:	78 0d                	js     4012ed <main+0x137>
  4012e0:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4012e4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4012e8:	48 39 c2             	cmp    rdx,rax
  4012eb:	7c 0a                	jl     4012f7 <main+0x141>
  4012ed:	bf 00 00 00 00       	mov    edi,0x0
  4012f2:	e8 c9 fd ff ff       	call   4010c0 <exit@plt>
  4012f7:	48 8d 3d 19 0d 00 00 	lea    rdi,[rip+0xd19]        # 402017 <_IO_stdin_used+0x17>
  4012fe:	b8 00 00 00 00       	mov    eax,0x0
  401303:	e8 88 fd ff ff       	call   401090 <printf@plt>
  401308:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40130c:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  401313:	00 
  401314:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401318:	48 01 d0             	add    rax,rdx
  40131b:	48 89 c6             	mov    rsi,rax
  40131e:	48 8d 3d e6 0c 00 00 	lea    rdi,[rip+0xce6]        # 40200b <_IO_stdin_used+0xb>
  401325:	b8 00 00 00 00       	mov    eax,0x0
  40132a:	e8 81 fd ff ff       	call   4010b0 <__isoc99_scanf@plt>
  40132f:	e9 75 ff ff ff       	jmp    4012a9 <main+0xf3>

0000000000401334 <setup>:
  401334:	f3 0f 1e fa          	endbr64 
  401338:	55                   	push   rbp
  401339:	48 89 e5             	mov    rbp,rsp
  40133c:	bf b4 00 00 00       	mov    edi,0xb4
  401341:	e8 5a fd ff ff       	call   4010a0 <alarm@plt>
  401346:	48 8b 05 13 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d13]        # 404060 <stdin@@GLIBC_2.2.5>
  40134d:	be 00 00 00 00       	mov    esi,0x0
  401352:	48 89 c7             	mov    rdi,rax
  401355:	e8 26 fd ff ff       	call   401080 <setbuf@plt>
  40135a:	48 8b 05 ef 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cef]        # 404050 <stdout@@GLIBC_2.2.5>
  401361:	be 00 00 00 00       	mov    esi,0x0
  401366:	48 89 c7             	mov    rdi,rax
  401369:	e8 12 fd ff ff       	call   401080 <setbuf@plt>
  40136e:	90                   	nop
  40136f:	5d                   	pop    rbp
  401370:	c3                   	ret    
  401371:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401378:	00 00 00 
  40137b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401380 <__libc_csu_init>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	41 57                	push   r15
  401386:	4c 8d 3d 7b 2a 00 00 	lea    r15,[rip+0x2a7b]        # 403e08 <__frame_dummy_init_array_entry>
  40138d:	41 56                	push   r14
  40138f:	49 89 d6             	mov    r14,rdx
  401392:	41 55                	push   r13
  401394:	49 89 f5             	mov    r13,rsi
  401397:	41 54                	push   r12
  401399:	41 89 fc             	mov    r12d,edi
  40139c:	55                   	push   rbp
  40139d:	48 8d 2d 74 2a 00 00 	lea    rbp,[rip+0x2a74]        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  4013a4:	53                   	push   rbx
  4013a5:	4c 29 fd             	sub    rbp,r15
  4013a8:	48 83 ec 08          	sub    rsp,0x8
  4013ac:	e8 4f fc ff ff       	call   401000 <_init>
  4013b1:	48 c1 fd 03          	sar    rbp,0x3
  4013b5:	74 1f                	je     4013d6 <__libc_csu_init+0x56>
  4013b7:	31 db                	xor    ebx,ebx
  4013b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4013c0:	4c 89 f2             	mov    rdx,r14
  4013c3:	4c 89 ee             	mov    rsi,r13
  4013c6:	44 89 e7             	mov    edi,r12d
  4013c9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  4013cd:	48 83 c3 01          	add    rbx,0x1
  4013d1:	48 39 dd             	cmp    rbp,rbx
  4013d4:	75 ea                	jne    4013c0 <__libc_csu_init+0x40>
  4013d6:	48 83 c4 08          	add    rsp,0x8
  4013da:	5b                   	pop    rbx
  4013db:	5d                   	pop    rbp
  4013dc:	41 5c                	pop    r12
  4013de:	41 5d                	pop    r13
  4013e0:	41 5e                	pop    r14
  4013e2:	41 5f                	pop    r15
  4013e4:	c3                   	ret    
  4013e5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4013ec:	00 00 00 00 

00000000004013f0 <__libc_csu_fini>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	c3                   	ret    

Disassembly of section .fini:

00000000004013f8 <_fini>:
  4013f8:	f3 0f 1e fa          	endbr64 
  4013fc:	48 83 ec 08          	sub    rsp,0x8
  401400:	48 83 c4 08          	add    rsp,0x8
  401404:	c3                   	ret    
