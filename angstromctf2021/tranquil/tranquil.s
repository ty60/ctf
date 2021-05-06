
tranquil:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 e1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe1]        # 403ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <puts@plt-0x10>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <puts@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <setbuf@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <setbuf@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <printf@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <printf@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <fgets@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404030 <fgets@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <strcmp@plt>:
  401070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 404038 <strcmp@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <gets@plt>:
  401080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 404040 <gets@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <fopen@plt>:
  401090:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 404048 <fopen@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <exit@plt>:
  4010a0:	ff 25 aa 2f 00 00    	jmp    QWORD PTR [rip+0x2faa]        # 404050 <exit@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

00000000004010b0 <_start>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	31 ed                	xor    ebp,ebp
  4010b6:	49 89 d1             	mov    r9,rdx
  4010b9:	5e                   	pop    rsi
  4010ba:	48 89 e2             	mov    rdx,rsp
  4010bd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4010c1:	50                   	push   rax
  4010c2:	54                   	push   rsp
  4010c3:	49 c7 c0 10 13 40 00 	mov    r8,0x401310
  4010ca:	48 c7 c1 a0 12 40 00 	mov    rcx,0x4012a0
  4010d1:	48 c7 c7 61 12 40 00 	mov    rdi,0x401261
  4010d8:	ff 15 0a 2f 00 00    	call   QWORD PTR [rip+0x2f0a]        # 403fe8 <__libc_start_main@GLIBC_2.2.5>
  4010de:	f4                   	hlt    
  4010df:	90                   	nop

00000000004010e0 <_dl_relocate_static_pie>:
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	c3                   	ret    
  4010e5:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4010ec:	00 00 00 
  4010ef:	90                   	nop

00000000004010f0 <deregister_tm_clones>:
  4010f0:	b8 68 40 40 00       	mov    eax,0x404068
  4010f5:	48 3d 68 40 40 00    	cmp    rax,0x404068
  4010fb:	74 13                	je     401110 <deregister_tm_clones+0x20>
  4010fd:	48 8b 05 dc 2e 00 00 	mov    rax,QWORD PTR [rip+0x2edc]        # 403fe0 <_ITM_deregisterTMCloneTable>
  401104:	48 85 c0             	test   rax,rax
  401107:	74 07                	je     401110 <deregister_tm_clones+0x20>
  401109:	bf 68 40 40 00       	mov    edi,0x404068
  40110e:	ff e0                	jmp    rax
  401110:	c3                   	ret    
  401111:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401118:	00 00 00 00 
  40111c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401120 <register_tm_clones>:
  401120:	be 68 40 40 00       	mov    esi,0x404068
  401125:	48 81 ee 68 40 40 00 	sub    rsi,0x404068
  40112c:	48 89 f0             	mov    rax,rsi
  40112f:	48 c1 ee 3f          	shr    rsi,0x3f
  401133:	48 c1 f8 03          	sar    rax,0x3
  401137:	48 01 c6             	add    rsi,rax
  40113a:	48 d1 fe             	sar    rsi,1
  40113d:	74 19                	je     401158 <register_tm_clones+0x38>
  40113f:	48 8b 05 b2 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eb2]        # 403ff8 <_ITM_registerTMCloneTable>
  401146:	48 85 c0             	test   rax,rax
  401149:	74 0d                	je     401158 <register_tm_clones+0x38>
  40114b:	bf 68 40 40 00       	mov    edi,0x404068
  401150:	ff e0                	jmp    rax
  401152:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401158:	c3                   	ret    
  401159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401160 <__do_global_dtors_aux>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	80 3d 3d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f3d],0x0        # 4040a8 <completed.0>
  40116b:	75 13                	jne    401180 <__do_global_dtors_aux+0x20>
  40116d:	55                   	push   rbp
  40116e:	48 89 e5             	mov    rbp,rsp
  401171:	e8 7a ff ff ff       	call   4010f0 <deregister_tm_clones>
  401176:	c6 05 2b 2f 00 00 01 	mov    BYTE PTR [rip+0x2f2b],0x1        # 4040a8 <completed.0>
  40117d:	5d                   	pop    rbp
  40117e:	c3                   	ret    
  40117f:	90                   	nop
  401180:	c3                   	ret    
  401181:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401188:	00 00 00 00 
  40118c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401190 <frame_dummy>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	eb 8a                	jmp    401120 <register_tm_clones>

0000000000401196 <win>:
  401196:	55                   	push   rbp
  401197:	48 89 e5             	mov    rbp,rsp
  40119a:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  4011a1:	48 8d 35 60 0e 00 00 	lea    rsi,[rip+0xe60]        # 402008 <_IO_stdin_used+0x8>
  4011a8:	48 8d 3d 5b 0e 00 00 	lea    rdi,[rip+0xe5b]        # 40200a <_IO_stdin_used+0xa>
  4011af:	e8 dc fe ff ff       	call   401090 <fopen@plt>
  4011b4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4011b8:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4011bd:	75 1b                	jne    4011da <win+0x44>
  4011bf:	48 8d 3d 52 0e 00 00 	lea    rdi,[rip+0xe52]        # 402018 <_IO_stdin_used+0x18>
  4011c6:	b8 00 00 00 00       	mov    eax,0x0
  4011cb:	e8 80 fe ff ff       	call   401050 <printf@plt>
  4011d0:	bf 01 00 00 00       	mov    edi,0x1
  4011d5:	e8 c6 fe ff ff       	call   4010a0 <exit@plt>
  4011da:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  4011de:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4011e5:	be 80 00 00 00       	mov    esi,0x80
  4011ea:	48 89 c7             	mov    rdi,rax
  4011ed:	e8 6e fe ff ff       	call   401060 <fgets@plt>
  4011f2:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  4011f9:	48 89 c7             	mov    rdi,rax
  4011fc:	e8 2f fe ff ff       	call   401030 <puts@plt>
  401201:	90                   	nop
  401202:	c9                   	leave  
  401203:	c3                   	ret    

0000000000401204 <vuln>:
  401204:	55                   	push   rbp
  401205:	48 89 e5             	mov    rbp,rsp
  401208:	48 83 ec 40          	sub    rsp,0x40
  40120c:	48 8d 3d 43 0e 00 00 	lea    rdi,[rip+0xe43]        # 402056 <_IO_stdin_used+0x56>
  401213:	e8 18 fe ff ff       	call   401030 <puts@plt>
  401218:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40121c:	48 89 c7             	mov    rdi,rax
  40121f:	b8 00 00 00 00       	mov    eax,0x0
  401224:	e8 57 fe ff ff       	call   401080 <gets@plt>
  401229:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40122d:	48 8d 35 3a 0e 00 00 	lea    rsi,[rip+0xe3a]        # 40206e <_IO_stdin_used+0x6e>
  401234:	48 89 c7             	mov    rdi,rax
  401237:	e8 34 fe ff ff       	call   401070 <strcmp@plt>
  40123c:	85 c0                	test   eax,eax
  40123e:	75 0e                	jne    40124e <vuln+0x4a>
  401240:	48 8d 3d 39 0e 00 00 	lea    rdi,[rip+0xe39]        # 402080 <_IO_stdin_used+0x80>
  401247:	e8 e4 fd ff ff       	call   401030 <puts@plt>
  40124c:	eb 0c                	jmp    40125a <vuln+0x56>
  40124e:	48 8d 3d 5b 0e 00 00 	lea    rdi,[rip+0xe5b]        # 4020b0 <_IO_stdin_used+0xb0>
  401255:	e8 d6 fd ff ff       	call   401030 <puts@plt>
  40125a:	b8 00 00 00 00       	mov    eax,0x0
  40125f:	c9                   	leave  
  401260:	c3                   	ret    

0000000000401261 <main>:
  401261:	55                   	push   rbp
  401262:	48 89 e5             	mov    rbp,rsp
  401265:	48 8b 05 14 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e14]        # 404080 <stdout@@GLIBC_2.2.5>
  40126c:	be 00 00 00 00       	mov    esi,0x0
  401271:	48 89 c7             	mov    rdi,rax
  401274:	e8 c7 fd ff ff       	call   401040 <setbuf@plt>
  401279:	48 8b 05 20 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e20]        # 4040a0 <stderr@@GLIBC_2.2.5>
  401280:	be 00 00 00 00       	mov    esi,0x0
  401285:	48 89 c7             	mov    rdi,rax
  401288:	e8 b3 fd ff ff       	call   401040 <setbuf@plt>
  40128d:	b8 00 00 00 00       	mov    eax,0x0
  401292:	e8 6d ff ff ff       	call   401204 <vuln>
  401297:	b8 00 00 00 00       	mov    eax,0x0
  40129c:	5d                   	pop    rbp
  40129d:	c3                   	ret    
  40129e:	66 90                	xchg   ax,ax

00000000004012a0 <__libc_csu_init>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	41 57                	push   r15
  4012a6:	4c 8d 3d 53 2b 00 00 	lea    r15,[rip+0x2b53]        # 403e00 <__frame_dummy_init_array_entry>
  4012ad:	41 56                	push   r14
  4012af:	49 89 d6             	mov    r14,rdx
  4012b2:	41 55                	push   r13
  4012b4:	49 89 f5             	mov    r13,rsi
  4012b7:	41 54                	push   r12
  4012b9:	41 89 fc             	mov    r12d,edi
  4012bc:	55                   	push   rbp
  4012bd:	48 8d 2d 44 2b 00 00 	lea    rbp,[rip+0x2b44]        # 403e08 <__init_array_end>
  4012c4:	53                   	push   rbx
  4012c5:	4c 29 fd             	sub    rbp,r15
  4012c8:	48 83 ec 08          	sub    rsp,0x8
  4012cc:	e8 2f fd ff ff       	call   401000 <_init>
  4012d1:	48 c1 fd 03          	sar    rbp,0x3
  4012d5:	74 1f                	je     4012f6 <__libc_csu_init+0x56>
  4012d7:	31 db                	xor    ebx,ebx
  4012d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4012e0:	4c 89 f2             	mov    rdx,r14
  4012e3:	4c 89 ee             	mov    rsi,r13
  4012e6:	44 89 e7             	mov    edi,r12d
  4012e9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
  4012ed:	48 83 c3 01          	add    rbx,0x1
  4012f1:	48 39 dd             	cmp    rbp,rbx
  4012f4:	75 ea                	jne    4012e0 <__libc_csu_init+0x40>
  4012f6:	48 83 c4 08          	add    rsp,0x8
  4012fa:	5b                   	pop    rbx
  4012fb:	5d                   	pop    rbp
  4012fc:	41 5c                	pop    r12
  4012fe:	41 5d                	pop    r13
  401300:	41 5e                	pop    r14
  401302:	41 5f                	pop    r15
  401304:	c3                   	ret    
  401305:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40130c:	00 00 00 00 

0000000000401310 <__libc_csu_fini>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	c3                   	ret    

Disassembly of section .fini:

0000000000401318 <_fini>:
  401318:	f3 0f 1e fa          	endbr64 
  40131c:	48 83 ec 08          	sub    rsp,0x8
  401320:	48 83 c4 08          	add    rsp,0x8
  401324:	c3                   	ret    
