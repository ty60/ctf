
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
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40108f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401090 <puts@plt>:
  401090:	f3 0f 1e fa          	endbr64 
  401094:	f2 ff 25 7d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f7d]        # 404018 <puts@GLIBC_2.2.5>
  40109b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010a0 <system@plt>:
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 404020 <system@GLIBC_2.2.5>
  4010ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010b0 <printf@plt>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	f2 ff 25 6d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6d]        # 404028 <printf@GLIBC_2.2.5>
  4010bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010c0 <alarm@plt>:
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	f2 ff 25 65 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f65]        # 404030 <alarm@GLIBC_2.2.5>
  4010cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010d0 <read@plt>:
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	f2 ff 25 5d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f5d]        # 404038 <read@GLIBC_2.2.5>
  4010db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010e0 <setvbuf@plt>:
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	f2 ff 25 55 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f55]        # 404040 <setvbuf@GLIBC_2.2.5>
  4010eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

00000000004010f0 <_start>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	31 ed                	xor    ebp,ebp
  4010f6:	49 89 d1             	mov    r9,rdx
  4010f9:	5e                   	pop    rsi
  4010fa:	48 89 e2             	mov    rdx,rsp
  4010fd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401101:	50                   	push   rax
  401102:	54                   	push   rsp
  401103:	49 c7 c0 60 14 40 00 	mov    r8,0x401460
  40110a:	48 c7 c1 f0 13 40 00 	mov    rcx,0x4013f0
  401111:	48 c7 c7 ed 11 40 00 	mov    rdi,0x4011ed
  401118:	ff 15 d2 2e 00 00    	call   QWORD PTR [rip+0x2ed2]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40111e:	f4                   	hlt    
  40111f:	90                   	nop

0000000000401120 <_dl_relocate_static_pie>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	c3                   	ret    
  401125:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40112c:	00 00 00 
  40112f:	90                   	nop

0000000000401130 <deregister_tm_clones>:
  401130:	b8 58 40 40 00       	mov    eax,0x404058
  401135:	48 3d 58 40 40 00    	cmp    rax,0x404058
  40113b:	74 13                	je     401150 <deregister_tm_clones+0x20>
  40113d:	b8 00 00 00 00       	mov    eax,0x0
  401142:	48 85 c0             	test   rax,rax
  401145:	74 09                	je     401150 <deregister_tm_clones+0x20>
  401147:	bf 58 40 40 00       	mov    edi,0x404058
  40114c:	ff e0                	jmp    rax
  40114e:	66 90                	xchg   ax,ax
  401150:	c3                   	ret    
  401151:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401158:	00 00 00 00 
  40115c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401160 <register_tm_clones>:
  401160:	be 58 40 40 00       	mov    esi,0x404058
  401165:	48 81 ee 58 40 40 00 	sub    rsi,0x404058
  40116c:	48 89 f0             	mov    rax,rsi
  40116f:	48 c1 ee 3f          	shr    rsi,0x3f
  401173:	48 c1 f8 03          	sar    rax,0x3
  401177:	48 01 c6             	add    rsi,rax
  40117a:	48 d1 fe             	sar    rsi,1
  40117d:	74 11                	je     401190 <register_tm_clones+0x30>
  40117f:	b8 00 00 00 00       	mov    eax,0x0
  401184:	48 85 c0             	test   rax,rax
  401187:	74 07                	je     401190 <register_tm_clones+0x30>
  401189:	bf 58 40 40 00       	mov    edi,0x404058
  40118e:	ff e0                	jmp    rax
  401190:	c3                   	ret    
  401191:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401198:	00 00 00 00 
  40119c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011a0 <__do_global_dtors_aux>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	80 3d cd 2e 00 00 00 	cmp    BYTE PTR [rip+0x2ecd],0x0        # 404078 <completed.0>
  4011ab:	75 13                	jne    4011c0 <__do_global_dtors_aux+0x20>
  4011ad:	55                   	push   rbp
  4011ae:	48 89 e5             	mov    rbp,rsp
  4011b1:	e8 7a ff ff ff       	call   401130 <deregister_tm_clones>
  4011b6:	c6 05 bb 2e 00 00 01 	mov    BYTE PTR [rip+0x2ebb],0x1        # 404078 <completed.0>
  4011bd:	5d                   	pop    rbp
  4011be:	c3                   	ret    
  4011bf:	90                   	nop
  4011c0:	c3                   	ret    
  4011c1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011c8:	00 00 00 00 
  4011cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004011d0 <frame_dummy>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	eb 8a                	jmp    401160 <register_tm_clones>

00000000004011d6 <help>:
  4011d6:	f3 0f 1e fa          	endbr64 
  4011da:	55                   	push   rbp
  4011db:	48 89 e5             	mov    rbp,rsp
  4011de:	48 8d 3d 23 0e 00 00 	lea    rdi,[rip+0xe23]        # 402008 <_IO_stdin_used+0x8>
  4011e5:	e8 b6 fe ff ff       	call   4010a0 <system@plt>
  4011ea:	90                   	nop
  4011eb:	5d                   	pop    rbp
  4011ec:	c3                   	ret    

00000000004011ed <main>:
  4011ed:	f3 0f 1e fa          	endbr64 
  4011f1:	55                   	push   rbp
  4011f2:	48 89 e5             	mov    rbp,rsp
  4011f5:	b8 00 00 00 00       	mov    eax,0x0
  4011fa:	e8 07 00 00 00       	call   401206 <vuln>
  4011ff:	b8 00 00 00 00       	mov    eax,0x0
  401204:	5d                   	pop    rbp
  401205:	c3                   	ret    

0000000000401206 <vuln>:
  401206:	f3 0f 1e fa          	endbr64 
  40120a:	55                   	push   rbp
  40120b:	48 89 e5             	mov    rbp,rsp
  40120e:	48 83 ec 10          	sub    rsp,0x10
  401212:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  401219:	00 
  40121a:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  401221:	00 
  401222:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  401226:	48 89 c7             	mov    rdi,rax
  401229:	e8 49 00 00 00       	call   401277 <show_stack>
  40122e:	48 8d 3d e3 0d 00 00 	lea    rdi,[rip+0xde3]        # 402018 <_IO_stdin_used+0x18>
  401235:	e8 56 fe ff ff       	call   401090 <puts@plt>
  40123a:	48 8d 3d 12 0e 00 00 	lea    rdi,[rip+0xe12]        # 402053 <_IO_stdin_used+0x53>
  401241:	e8 4a fe ff ff       	call   401090 <puts@plt>
  401246:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  40124a:	ba 30 00 00 00       	mov    edx,0x30
  40124f:	48 89 c6             	mov    rsi,rax
  401252:	bf 00 00 00 00       	mov    edi,0x0
  401257:	e8 74 fe ff ff       	call   4010d0 <read@plt>
  40125c:	48 8d 3d 04 0e 00 00 	lea    rdi,[rip+0xe04]        # 402067 <_IO_stdin_used+0x67>
  401263:	e8 28 fe ff ff       	call   401090 <puts@plt>
  401268:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  40126c:	48 89 c7             	mov    rdi,rax
  40126f:	e8 03 00 00 00       	call   401277 <show_stack>
  401274:	90                   	nop
  401275:	c9                   	leave  
  401276:	c3                   	ret    

0000000000401277 <show_stack>:
  401277:	f3 0f 1e fa          	endbr64 
  40127b:	55                   	push   rbp
  40127c:	48 89 e5             	mov    rbp,rsp
  40127f:	48 83 ec 20          	sub    rsp,0x20
  401283:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401287:	48 8d 3d de 0d 00 00 	lea    rdi,[rip+0xdde]        # 40206c <_IO_stdin_used+0x6c>
  40128e:	e8 fd fd ff ff       	call   401090 <puts@plt>
  401293:	48 8d 15 e0 0d 00 00 	lea    rdx,[rip+0xde0]        # 40207a <_IO_stdin_used+0x7a>
  40129a:	48 8d 35 e1 0d 00 00 	lea    rsi,[rip+0xde1]        # 402082 <_IO_stdin_used+0x82>
  4012a1:	48 8d 3d e2 0d 00 00 	lea    rdi,[rip+0xde2]        # 40208a <_IO_stdin_used+0x8a>
  4012a8:	b8 00 00 00 00       	mov    eax,0x0
  4012ad:	e8 fe fd ff ff       	call   4010b0 <printf@plt>
  4012b2:	48 8d 3d de 0d 00 00 	lea    rdi,[rip+0xdde]        # 402097 <_IO_stdin_used+0x97>
  4012b9:	e8 d2 fd ff ff       	call   401090 <puts@plt>
  4012be:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4012c5:	e9 aa 00 00 00       	jmp    401374 <show_stack+0xfd>
  4012ca:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4012cd:	48 98                	cdqe   
  4012cf:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4012d6:	00 
  4012d7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4012db:	48 01 d0             	add    rax,rdx
  4012de:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4012e2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4012e6:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4012e9:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4012ec:	89 c6                	mov    esi,eax
  4012ee:	48 8d 3d bf 0d 00 00 	lea    rdi,[rip+0xdbf]        # 4020b4 <_IO_stdin_used+0xb4>
  4012f5:	b8 00 00 00 00       	mov    eax,0x0
  4012fa:	e8 b1 fd ff ff       	call   4010b0 <printf@plt>
  4012ff:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401303:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  401307:	75 11                	jne    40131a <show_stack+0xa3>
  401309:	48 8d 3d b6 0d 00 00 	lea    rdi,[rip+0xdb6]        # 4020c6 <_IO_stdin_used+0xc6>
  401310:	b8 00 00 00 00       	mov    eax,0x0
  401315:	e8 96 fd ff ff       	call   4010b0 <printf@plt>
  40131a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40131e:	48 83 c0 10          	add    rax,0x10
  401322:	48 89 c2             	mov    rdx,rax
  401325:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401329:	48 39 c2             	cmp    rdx,rax
  40132c:	75 11                	jne    40133f <show_stack+0xc8>
  40132e:	48 8d 3d 99 0d 00 00 	lea    rdi,[rip+0xd99]        # 4020ce <_IO_stdin_used+0xce>
  401335:	b8 00 00 00 00       	mov    eax,0x0
  40133a:	e8 71 fd ff ff       	call   4010b0 <printf@plt>
  40133f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401343:	48 83 c0 18          	add    rax,0x18
  401347:	48 89 c2             	mov    rdx,rax
  40134a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40134e:	48 39 c2             	cmp    rdx,rax
  401351:	75 11                	jne    401364 <show_stack+0xed>
  401353:	48 8d 3d 82 0d 00 00 	lea    rdi,[rip+0xd82]        # 4020dc <_IO_stdin_used+0xdc>
  40135a:	b8 00 00 00 00       	mov    eax,0x0
  40135f:	e8 4c fd ff ff       	call   4010b0 <printf@plt>
  401364:	48 8d 3d 84 0d 00 00 	lea    rdi,[rip+0xd84]        # 4020ef <_IO_stdin_used+0xef>
  40136b:	e8 20 fd ff ff       	call   401090 <puts@plt>
  401370:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401374:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
  401378:	0f 8e 4c ff ff ff    	jle    4012ca <show_stack+0x53>
  40137e:	48 8d 3d 6b 0d 00 00 	lea    rdi,[rip+0xd6b]        # 4020f0 <_IO_stdin_used+0xf0>
  401385:	e8 06 fd ff ff       	call   401090 <puts@plt>
  40138a:	90                   	nop
  40138b:	c9                   	leave  
  40138c:	c3                   	ret    

000000000040138d <init>:
  40138d:	f3 0f 1e fa          	endbr64 
  401391:	55                   	push   rbp
  401392:	48 89 e5             	mov    rbp,rsp
  401395:	48 8b 05 d4 2c 00 00 	mov    rax,QWORD PTR [rip+0x2cd4]        # 404070 <stdin@@GLIBC_2.2.5>
  40139c:	b9 00 00 00 00       	mov    ecx,0x0
  4013a1:	ba 02 00 00 00       	mov    edx,0x2
  4013a6:	be 00 00 00 00       	mov    esi,0x0
  4013ab:	48 89 c7             	mov    rdi,rax
  4013ae:	e8 2d fd ff ff       	call   4010e0 <setvbuf@plt>
  4013b3:	48 8b 05 a6 2c 00 00 	mov    rax,QWORD PTR [rip+0x2ca6]        # 404060 <stdout@@GLIBC_2.2.5>
  4013ba:	b9 00 00 00 00       	mov    ecx,0x0
  4013bf:	ba 02 00 00 00       	mov    edx,0x2
  4013c4:	be 00 00 00 00       	mov    esi,0x0
  4013c9:	48 89 c7             	mov    rdi,rax
  4013cc:	e8 0f fd ff ff       	call   4010e0 <setvbuf@plt>
  4013d1:	b8 00 00 00 00       	mov    eax,0x0
  4013d6:	e8 fb fd ff ff       	call   4011d6 <help>
  4013db:	bf 3c 00 00 00       	mov    edi,0x3c
  4013e0:	e8 db fc ff ff       	call   4010c0 <alarm@plt>
  4013e5:	90                   	nop
  4013e6:	5d                   	pop    rbp
  4013e7:	c3                   	ret    
  4013e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4013ef:	00 

00000000004013f0 <__libc_csu_init>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	41 57                	push   r15
  4013f6:	4c 8d 3d 0b 2a 00 00 	lea    r15,[rip+0x2a0b]        # 403e08 <__frame_dummy_init_array_entry>
  4013fd:	41 56                	push   r14
  4013ff:	49 89 d6             	mov    r14,rdx
  401402:	41 55                	push   r13
  401404:	49 89 f5             	mov    r13,rsi
  401407:	41 54                	push   r12
  401409:	41 89 fc             	mov    r12d,edi
  40140c:	55                   	push   rbp
  40140d:	48 8d 2d 04 2a 00 00 	lea    rbp,[rip+0x2a04]        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  401414:	53                   	push   rbx
  401415:	4c 29 fd             	sub    rbp,r15
  401418:	48 83 ec 08          	sub    rsp,0x8
  40141c:	e8 df fb ff ff       	call   401000 <_init>
  401421:	48 c1 fd 03          	sar    rbp,0x3
  401425:	74 1f                	je     401446 <__libc_csu_init+0x56>
  401427:	31 db                	xor    ebx,ebx
  401429:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401430:	4c 89 f2             	mov    rdx,r14
  401433:	4c 89 ee             	mov    rsi,r13
  401436:	44 89 e7             	mov    edi,r12d
  401439:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  40143d:	48 83 c3 01          	add    rbx,0x1
  401441:	48 39 dd             	cmp    rbp,rbx
  401444:	75 ea                	jne    401430 <__libc_csu_init+0x40>
  401446:	48 83 c4 08          	add    rsp,0x8
  40144a:	5b                   	pop    rbx
  40144b:	5d                   	pop    rbp
  40144c:	41 5c                	pop    r12
  40144e:	41 5d                	pop    r13
  401450:	41 5e                	pop    r14
  401452:	41 5f                	pop    r15
  401454:	c3                   	ret    
  401455:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40145c:	00 00 00 00 

0000000000401460 <__libc_csu_fini>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	c3                   	ret    

Disassembly of section .fini:

0000000000401468 <_fini>:
  401468:	f3 0f 1e fa          	endbr64 
  40146c:	48 83 ec 08          	sub    rsp,0x8
  401470:	48 83 c4 08          	add    rsp,0x8
  401474:	c3                   	ret    
