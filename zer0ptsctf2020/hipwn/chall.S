
./chall:     file format elf64-x86-64


Disassembly of section .init:

0000000000400120 <.init>:
  400120:	50                   	push   rax
  400121:	58                   	pop    rax
  400122:	c3                   	ret    

Disassembly of section .text:

0000000000400130 <.text>:
  400130:	48 83 ec 18          	sub    rsp,0x18
  400134:	89 7c 24 0c          	mov    DWORD PTR [rsp+0xc],edi
  400138:	e8 8d 03 00 00       	call   0x4004ca
  40013d:	e8 89 03 00 00       	call   0x4004cb
  400142:	31 c0                	xor    eax,eax
  400144:	e8 cf 2a 00 00       	call   0x402c18
  400149:	8b 7c 24 0c          	mov    edi,DWORD PTR [rsp+0xc]
  40014d:	e8 85 21 00 00       	call   0x4022d7
  400152:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400159:	00 00 00 
  40015c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400160:	53                   	push   rbx
  400161:	48 8d 3d 58 2d 00 00 	lea    rdi,[rip+0x2d58]        # 0x402ec0
  400168:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  40016f:	48 89 e3             	mov    rbx,rsp
  400172:	e8 b8 04 00 00       	call   0x40062f
  400177:	48 89 df             	mov    rdi,rbx
  40017a:	31 c0                	xor    eax,eax
  40017c:	e8 6d 03 00 00       	call   0x4004ee
  400181:	48 8d 3d 50 2d 00 00 	lea    rdi,[rip+0x2d50]        # 0x402ed8
  400188:	48 89 de             	mov    rsi,rbx
  40018b:	31 c0                	xor    eax,eax
  40018d:	e8 ff 03 00 00       	call   0x400591
  400192:	48 81 c4 00 01 00 00 	add    rsp,0x100
  400199:	31 c0                	xor    eax,eax
  40019b:	5b                   	pop    rbx
  40019c:	c3                   	ret    
  40019d:	48 31 ed             	xor    rbp,rbp
  4001a0:	48 89 e7             	mov    rdi,rsp
  4001a3:	48 8d 35 56 fe bf ff 	lea    rsi,[rip+0xffffffffffbffe56]        # 0x0
  4001aa:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4001ae:	e8 00 00 00 00       	call   0x4001b3
  4001b3:	48 8d 57 08          	lea    rdx,[rdi+0x8]
  4001b7:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
  4001ba:	49 c7 c0 a4 2e 40 00 	mov    r8,0x402ea4
  4001c1:	48 c7 c1 20 01 40 00 	mov    rcx,0x400120
  4001c8:	48 c7 c7 60 01 40 00 	mov    rdi,0x400160
  4001cf:	45 31 c9             	xor    r9d,r9d
  4001d2:	e9 b9 02 00 00       	jmp    0x400490
  4001d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4001de:	00 00 
  4001e0:	48 8d 3d 49 40 20 00 	lea    rdi,[rip+0x204049]        # 0x604230
  4001e7:	55                   	push   rbp
  4001e8:	48 8d 05 41 40 20 00 	lea    rax,[rip+0x204041]        # 0x604230
  4001ef:	48 39 f8             	cmp    rax,rdi
  4001f2:	48 89 e5             	mov    rbp,rsp
  4001f5:	74 19                	je     0x400210
  4001f7:	48 c7 c0 00 00 00 00 	mov    rax,0x0
  4001fe:	48 85 c0             	test   rax,rax
  400201:	74 0d                	je     0x400210
  400203:	5d                   	pop    rbp
  400204:	ff e0                	jmp    rax
  400206:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40020d:	00 00 00 
  400210:	5d                   	pop    rbp
  400211:	c3                   	ret    
  400212:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400216:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40021d:	00 00 00 
  400220:	48 8d 3d 09 40 20 00 	lea    rdi,[rip+0x204009]        # 0x604230
  400227:	48 8d 35 02 40 20 00 	lea    rsi,[rip+0x204002]        # 0x604230
  40022e:	55                   	push   rbp
  40022f:	48 29 fe             	sub    rsi,rdi
  400232:	48 89 e5             	mov    rbp,rsp
  400235:	48 c1 fe 03          	sar    rsi,0x3
  400239:	48 89 f0             	mov    rax,rsi
  40023c:	48 c1 e8 3f          	shr    rax,0x3f
  400240:	48 01 c6             	add    rsi,rax
  400243:	48 d1 fe             	sar    rsi,1
  400246:	74 18                	je     0x400260
  400248:	48 c7 c0 00 00 00 00 	mov    rax,0x0
  40024f:	48 85 c0             	test   rax,rax
  400252:	74 0c                	je     0x400260
  400254:	5d                   	pop    rbp
  400255:	ff e0                	jmp    rax
  400257:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40025e:	00 00 
  400260:	5d                   	pop    rbp
  400261:	c3                   	ret    
  400262:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400266:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40026d:	00 00 00 
  400270:	80 3d c9 3f 20 00 00 	cmp    BYTE PTR [rip+0x203fc9],0x0        # 0x604240
  400277:	75 2f                	jne    0x4002a8
  400279:	48 83 3d 77 3d 20 00 	cmp    QWORD PTR [rip+0x203d77],0x0        # 0x603ff8
  400280:	00 
  400281:	55                   	push   rbp
  400282:	48 89 e5             	mov    rbp,rsp
  400285:	74 0c                	je     0x400293
  400287:	48 8b 3d 92 3d 20 00 	mov    rdi,QWORD PTR [rip+0x203d92]        # 0x604020
  40028e:	e8 6d fd bf ff       	call   0x0
  400293:	e8 48 ff ff ff       	call   0x4001e0
  400298:	c6 05 a1 3f 20 00 01 	mov    BYTE PTR [rip+0x203fa1],0x1        # 0x604240
  40029f:	5d                   	pop    rbp
  4002a0:	c3                   	ret    
  4002a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4002a8:	f3 c3                	repz ret 
  4002aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4002b0:	55                   	push   rbp
  4002b1:	48 89 e5             	mov    rbp,rsp
  4002b4:	5d                   	pop    rbp
  4002b5:	e9 66 ff ff ff       	jmp    0x400220
  4002ba:	c3                   	ret    
  4002bb:	c3                   	ret    
  4002bc:	53                   	push   rbx
  4002bd:	48 89 fa             	mov    rdx,rdi
  4002c0:	31 c0                	xor    eax,eax
  4002c2:	b9 4c 00 00 00       	mov    ecx,0x4c
  4002c7:	48 81 ec 50 01 00 00 	sub    rsp,0x150
  4002ce:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
  4002d3:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  4002d5:	48 c7 c0 88 4a 60 00 	mov    rax,0x604a88
  4002dc:	48 89 10             	mov    QWORD PTR [rax],rdx
  4002df:	31 c0                	xor    eax,eax
  4002e1:	48 8b 0c c2          	mov    rcx,QWORD PTR [rdx+rax*8]
  4002e5:	48 ff c0             	inc    rax
  4002e8:	48 85 c9             	test   rcx,rcx
  4002eb:	75 f4                	jne    0x4002e1
  4002ed:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  4002f1:	48 89 05 b8 49 20 00 	mov    QWORD PTR [rip+0x2049b8],rax        # 0x604cb0
  4002f8:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  4002fb:	48 85 db             	test   rbx,rbx
  4002fe:	74 15                	je     0x400315
  400300:	48 83 fb 25          	cmp    rbx,0x25
  400304:	77 09                	ja     0x40030f
  400306:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  40030a:	48 89 54 dc 20       	mov    QWORD PTR [rsp+rbx*8+0x20],rdx
  40030f:	48 83 c0 10          	add    rax,0x10
  400313:	eb e3                	jmp    0x4002f8
  400315:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
  40031c:	00 
  40031d:	48 89 05 5c 49 20 00 	mov    QWORD PTR [rip+0x20495c],rax        # 0x604c80
  400324:	48 8b 84 24 20 01 00 	mov    rax,QWORD PTR [rsp+0x120]
  40032b:	00 
  40032c:	48 85 c0             	test   rax,rax
  40032f:	74 07                	je     0x400338
  400331:	48 89 05 28 49 20 00 	mov    QWORD PTR [rip+0x204928],rax        # 0x604c60
  400338:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  40033d:	48 85 f6             	test   rsi,rsi
  400340:	48 89 05 91 49 20 00 	mov    QWORD PTR [rip+0x204991],rax        # 0x604cd8
  400347:	75 16                	jne    0x40035f
  400349:	48 8b b4 24 18 01 00 	mov    rsi,QWORD PTR [rsp+0x118]
  400350:	00 
  400351:	48 8d 05 31 2c 00 00 	lea    rax,[rip+0x2c31]        # 0x402f89
  400358:	48 85 f6             	test   rsi,rsi
  40035b:	48 0f 44 f0          	cmove  rsi,rax
  40035f:	48 c7 c0 48 42 60 00 	mov    rax,0x604248
  400366:	48 c7 c2 50 42 60 00 	mov    rdx,0x604250
  40036d:	48 89 30             	mov    QWORD PTR [rax],rsi
  400370:	48 89 32             	mov    QWORD PTR [rdx],rsi
  400373:	48 ff c6             	inc    rsi
  400376:	8a 46 ff             	mov    al,BYTE PTR [rsi-0x1]
  400379:	84 c0                	test   al,al
  40037b:	74 06                	je     0x400383
  40037d:	3c 2f                	cmp    al,0x2f
  40037f:	75 f2                	jne    0x400373
  400381:	eb ed                	jmp    0x400370
  400383:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
  400388:	e8 63 1d 00 00       	call   0x4020f0
  40038d:	48 8b bc 24 e8 00 00 	mov    rdi,QWORD PTR [rsp+0xe8]
  400394:	00 
  400395:	e8 21 ff ff ff       	call   0x4002bb
  40039a:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  4003a1:	00 
  4003a2:	48 39 44 24 78       	cmp    QWORD PTR [rsp+0x78],rax
  4003a7:	75 1d                	jne    0x4003c6
  4003a9:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  4003b0:	00 
  4003b1:	48 39 84 24 88 00 00 	cmp    QWORD PTR [rsp+0x88],rax
  4003b8:	00 
  4003b9:	75 0b                	jne    0x4003c6
  4003bb:	48 83 bc 24 d8 00 00 	cmp    QWORD PTR [rsp+0xd8],0x0
  4003c2:	00 00 
  4003c4:	74 6f                	je     0x400435
  4003c6:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  4003cb:	ba 06 00 00 00       	mov    edx,0x6
  4003d0:	31 c0                	xor    eax,eax
  4003d2:	48 89 d1             	mov    rcx,rdx
  4003d5:	4c 8d 44 24 08       	lea    r8,[rsp+0x8]
  4003da:	be 03 00 00 00       	mov    esi,0x3
  4003df:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  4003e1:	c7 44 24 10 01 00 00 	mov    DWORD PTR [rsp+0x10],0x1
  4003e8:	00 
  4003e9:	c7 44 24 18 02 00 00 	mov    DWORD PTR [rsp+0x18],0x2
  4003f0:	00 
  4003f1:	b8 07 00 00 00       	mov    eax,0x7
  4003f6:	4c 89 c7             	mov    rdi,r8
  4003f9:	48 89 ca             	mov    rdx,rcx
  4003fc:	0f 05                	syscall 
  4003fe:	85 c0                	test   eax,eax
  400400:	79 01                	jns    0x400403
  400402:	f4                   	hlt    
  400403:	48 8d 3d f6 2a 00 00 	lea    rdi,[rip+0x2af6]        # 0x402f00
  40040a:	be 02 00 00 00       	mov    esi,0x2
  40040f:	41 f6 44 d8 06 20    	test   BYTE PTR [r8+rbx*8+0x6],0x20
  400415:	74 0b                	je     0x400422
  400417:	48 89 f0             	mov    rax,rsi
  40041a:	0f 05                	syscall 
  40041c:	48 85 c0             	test   rax,rax
  40041f:	79 01                	jns    0x400422
  400421:	f4                   	hlt    
  400422:	48 ff c3             	inc    rbx
  400425:	48 83 fb 03          	cmp    rbx,0x3
  400429:	75 e4                	jne    0x40040f
  40042b:	c7 05 73 48 20 00 01 	mov    DWORD PTR [rip+0x204873],0x1        # 0x604ca8
  400432:	00 00 00 
  400435:	48 81 c4 50 01 00 00 	add    rsp,0x150
  40043c:	5b                   	pop    rbx
  40043d:	c3                   	ret    
  40043e:	53                   	push   rbx
  40043f:	e8 dc fc ff ff       	call   0x400120
  400444:	48 c7 c3 d8 3f 60 00 	mov    rbx,0x603fd8
  40044b:	48 81 fb e0 3f 60 00 	cmp    rbx,0x603fe0
  400452:	73 08                	jae    0x40045c
  400454:	ff 13                	call   QWORD PTR [rbx]
  400456:	48 83 c3 08          	add    rbx,0x8
  40045a:	eb ef                	jmp    0x40044b
  40045c:	5b                   	pop    rbx
  40045d:	c3                   	ret    
  40045e:	41 55                	push   r13
  400460:	48 63 c6             	movsxd rax,esi
  400463:	41 54                	push   r12
  400465:	55                   	push   rbp
  400466:	53                   	push   rbx
  400467:	4c 8d 6c c2 08       	lea    r13,[rdx+rax*8+0x8]
  40046c:	48 89 c3             	mov    rbx,rax
  40046f:	48 89 d5             	mov    rbp,rdx
  400472:	49 89 fc             	mov    r12,rdi
  400475:	48 83 ec 08          	sub    rsp,0x8
  400479:	e8 c0 ff ff ff       	call   0x40043e
  40047e:	89 df                	mov    edi,ebx
  400480:	4c 89 ea             	mov    rdx,r13
  400483:	48 89 ee             	mov    rsi,rbp
  400486:	41 ff d4             	call   r12
  400489:	89 c7                	mov    edi,eax
  40048b:	e8 a0 fc ff ff       	call   0x400130
  400490:	55                   	push   rbp
  400491:	53                   	push   rbx
  400492:	48 63 c6             	movsxd rax,esi
  400495:	48 89 fd             	mov    rbp,rdi
  400498:	48 8d 7c c2 08       	lea    rdi,[rdx+rax*8+0x8]
  40049d:	48 89 c3             	mov    rbx,rax
  4004a0:	48 83 ec 18          	sub    rsp,0x18
  4004a4:	48 8b 32             	mov    rsi,QWORD PTR [rdx]
  4004a7:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  4004ac:	e8 0b fe ff ff       	call   0x4002bc
  4004b1:	48 8d 05 a6 ff ff ff 	lea    rax,[rip+0xffffffffffffffa6]        # 0x40045e
  4004b8:	89 de                	mov    esi,ebx
  4004ba:	48 89 ef             	mov    rdi,rbp
  4004bd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  4004c2:	48 83 c4 18          	add    rsp,0x18
  4004c6:	5b                   	pop    rbx
  4004c7:	5d                   	pop    rbp
  4004c8:	ff e0                	jmp    rax
  4004ca:	c3                   	ret    
  4004cb:	53                   	push   rbx
  4004cc:	48 c7 c3 e8 3f 60 00 	mov    rbx,0x603fe8
  4004d3:	48 81 fb e0 3f 60 00 	cmp    rbx,0x603fe0
  4004da:	76 0a                	jbe    0x4004e6
  4004dc:	48 83 eb 08          	sub    rbx,0x8
  4004e0:	31 c0                	xor    eax,eax
  4004e2:	ff 13                	call   QWORD PTR [rbx]
  4004e4:	eb ed                	jmp    0x4004d3
  4004e6:	5b                   	pop    rbx
  4004e7:	31 c0                	xor    eax,eax
  4004e9:	e9 b6 29 00 00       	jmp    0x402ea4
  4004ee:	41 55                	push   r13
  4004f0:	41 54                	push   r12
  4004f2:	45 31 e4             	xor    r12d,r12d
  4004f5:	55                   	push   rbp
  4004f6:	53                   	push   rbx
  4004f7:	48 89 fd             	mov    rbp,rdi
  4004fa:	48 83 ec 08          	sub    rsp,0x8
  4004fe:	8b 05 c8 3b 20 00    	mov    eax,DWORD PTR [rip+0x203bc8]        # 0x6040cc
  400504:	85 c0                	test   eax,eax
  400506:	78 0f                	js     0x400517
  400508:	48 8d 3d 31 3b 20 00 	lea    rdi,[rip+0x203b31]        # 0x604040
  40050f:	e8 e6 1e 00 00       	call   0x4023fa
  400514:	41 89 c4             	mov    r12d,eax
  400517:	4c 8d 2d 22 3b 20 00 	lea    r13,[rip+0x203b22]        # 0x604040
  40051e:	31 db                	xor    ebx,ebx
  400520:	48 8b 05 21 3b 20 00 	mov    rax,QWORD PTR [rip+0x203b21]        # 0x604048
  400527:	48 3b 05 22 3b 20 00 	cmp    rax,QWORD PTR [rip+0x203b22]        # 0x604050
  40052e:	74 10                	je     0x400540
  400530:	48 8d 50 01          	lea    rdx,[rax+0x1]
  400534:	48 89 15 0d 3b 20 00 	mov    QWORD PTR [rip+0x203b0d],rdx        # 0x604048
  40053b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40053e:	eb 0d                	jmp    0x40054d
  400540:	4c 89 ef             	mov    rdi,r13
  400543:	e8 83 21 00 00       	call   0x4026cb
  400548:	83 f8 ff             	cmp    eax,0xffffffff
  40054b:	74 0e                	je     0x40055b
  40054d:	83 f8 0a             	cmp    eax,0xa
  400550:	74 09                	je     0x40055b
  400552:	48 ff c3             	inc    rbx
  400555:	88 44 1d ff          	mov    BYTE PTR [rbp+rbx*1-0x1],al
  400559:	eb c5                	jmp    0x400520
  40055b:	83 f8 0a             	cmp    eax,0xa
  40055e:	c6 44 1d 00 00       	mov    BYTE PTR [rbp+rbx*1+0x0],0x0
  400563:	74 10                	je     0x400575
  400565:	f6 05 d4 3a 20 00 10 	test   BYTE PTR [rip+0x203ad4],0x10        # 0x604040
  40056c:	74 05                	je     0x400573
  40056e:	48 85 db             	test   rbx,rbx
  400571:	75 02                	jne    0x400575
  400573:	31 ed                	xor    ebp,ebp
  400575:	45 85 e4             	test   r12d,r12d
  400578:	74 0c                	je     0x400586
  40057a:	48 8d 3d bf 3a 20 00 	lea    rdi,[rip+0x203abf]        # 0x604040
  400581:	e8 1e 1f 00 00       	call   0x4024a4
  400586:	5a                   	pop    rdx
  400587:	48 89 e8             	mov    rax,rbp
  40058a:	5b                   	pop    rbx
  40058b:	5d                   	pop    rbp
  40058c:	41 5c                	pop    r12
  40058e:	41 5d                	pop    r13
  400590:	c3                   	ret    
  400591:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  400598:	84 c0                	test   al,al
  40059a:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  40059f:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  4005a4:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  4005a9:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  4005ae:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  4005b3:	74 37                	je     0x4005ec
  4005b5:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  4005ba:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  4005bf:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  4005c4:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  4005cb:	00 
  4005cc:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  4005d3:	00 
  4005d4:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  4005db:	00 
  4005dc:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  4005e3:	00 
  4005e4:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  4005eb:	00 
  4005ec:	48 8d 84 24 e0 00 00 	lea    rax,[rsp+0xe0]
  4005f3:	00 
  4005f4:	48 8d 54 24 08       	lea    rdx,[rsp+0x8]
  4005f9:	48 89 fe             	mov    rsi,rdi
  4005fc:	48 8d 3d 3d 3b 20 00 	lea    rdi,[rip+0x203b3d]        # 0x604140
  400603:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  400608:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  40060d:	c7 44 24 08 08 00 00 	mov    DWORD PTR [rsp+0x8],0x8
  400614:	00 
  400615:	c7 44 24 0c 30 00 00 	mov    DWORD PTR [rsp+0xc],0x30
  40061c:	00 
  40061d:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  400622:	e8 55 17 00 00       	call   0x401d7c
  400627:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
  40062e:	c3                   	ret    
  40062f:	55                   	push   rbp
  400630:	53                   	push   rbx
  400631:	31 db                	xor    ebx,ebx
  400633:	48 89 fd             	mov    rbp,rdi
  400636:	48 83 ec 08          	sub    rsp,0x8
  40063a:	8b 05 8c 3b 20 00    	mov    eax,DWORD PTR [rip+0x203b8c]        # 0x6041cc
  400640:	85 c0                	test   eax,eax
  400642:	78 0e                	js     0x400652
  400644:	48 8d 3d f5 3a 20 00 	lea    rdi,[rip+0x203af5]        # 0x604140
  40064b:	e8 aa 1d 00 00       	call   0x4023fa
  400650:	89 c3                	mov    ebx,eax
  400652:	48 8d 35 e7 3a 20 00 	lea    rsi,[rip+0x203ae7]        # 0x604140
  400659:	48 89 ef             	mov    rdi,rbp
  40065c:	e8 a0 20 00 00       	call   0x402701
  400661:	85 c0                	test   eax,eax
  400663:	ba 01 00 00 00       	mov    edx,0x1
  400668:	78 41                	js     0x4006ab
  40066a:	83 3d 5f 3b 20 00 0a 	cmp    DWORD PTR [rip+0x203b5f],0xa        # 0x6041d0
  400671:	74 22                	je     0x400695
  400673:	48 8b 05 ee 3a 20 00 	mov    rax,QWORD PTR [rip+0x203aee]        # 0x604168
  40067a:	48 3b 05 df 3a 20 00 	cmp    rax,QWORD PTR [rip+0x203adf]        # 0x604160
  400681:	74 12                	je     0x400695
  400683:	48 8d 50 01          	lea    rdx,[rax+0x1]
  400687:	48 89 15 da 3a 20 00 	mov    QWORD PTR [rip+0x203ada],rdx        # 0x604168
  40068e:	c6 00 0a             	mov    BYTE PTR [rax],0xa
  400691:	31 d2                	xor    edx,edx
  400693:	eb 16                	jmp    0x4006ab
  400695:	48 8d 3d a4 3a 20 00 	lea    rdi,[rip+0x203aa4]        # 0x604140
  40069c:	be 0a 00 00 00       	mov    esi,0xa
  4006a1:	e8 3a 1e 00 00       	call   0x4024e0
  4006a6:	c1 e8 1f             	shr    eax,0x1f
  4006a9:	89 c2                	mov    edx,eax
  4006ab:	f7 da                	neg    edx
  4006ad:	85 db                	test   ebx,ebx
  4006af:	89 d5                	mov    ebp,edx
  4006b1:	74 0c                	je     0x4006bf
  4006b3:	48 8d 3d 86 3a 20 00 	lea    rdi,[rip+0x203a86]        # 0x604140
  4006ba:	e8 e5 1d 00 00       	call   0x4024a4
  4006bf:	89 e8                	mov    eax,ebp
  4006c1:	5a                   	pop    rdx
  4006c2:	5b                   	pop    rbx
  4006c3:	5d                   	pop    rbp
  4006c4:	c3                   	ret    
  4006c5:	83 ee 09             	sub    esi,0x9
  4006c8:	83 fe 11             	cmp    esi,0x11
  4006cb:	0f 87 61 01 00 00    	ja     0x400832
  4006d1:	48 8d 0d 34 28 00 00 	lea    rcx,[rip+0x2834]        # 0x402f0c
  4006d8:	48 63 04 b1          	movsxd rax,DWORD PTR [rcx+rsi*4]
  4006dc:	48 01 c8             	add    rax,rcx
  4006df:	ff e0                	jmp    rax
  4006e1:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  4006e3:	83 f9 2f             	cmp    ecx,0x2f
  4006e6:	77 0d                	ja     0x4006f5
  4006e8:	89 c8                	mov    eax,ecx
  4006ea:	83 c1 08             	add    ecx,0x8
  4006ed:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  4006f1:	89 0a                	mov    DWORD PTR [rdx],ecx
  4006f3:	eb 0c                	jmp    0x400701
  4006f5:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  4006f9:	48 8d 48 08          	lea    rcx,[rax+0x8]
  4006fd:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  400701:	48 63 00             	movsxd rax,DWORD PTR [rax]
  400704:	48 89 07             	mov    QWORD PTR [rdi],rax
  400707:	c3                   	ret    
  400708:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  40070a:	83 f9 2f             	cmp    ecx,0x2f
  40070d:	77 0d                	ja     0x40071c
  40070f:	89 c8                	mov    eax,ecx
  400711:	83 c1 08             	add    ecx,0x8
  400714:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  400718:	89 0a                	mov    DWORD PTR [rdx],ecx
  40071a:	eb 0c                	jmp    0x400728
  40071c:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  400720:	48 8d 48 08          	lea    rcx,[rax+0x8]
  400724:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  400728:	8b 00                	mov    eax,DWORD PTR [rax]
  40072a:	eb d8                	jmp    0x400704
  40072c:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  40072e:	83 f9 2f             	cmp    ecx,0x2f
  400731:	77 0d                	ja     0x400740
  400733:	89 c8                	mov    eax,ecx
  400735:	83 c1 08             	add    ecx,0x8
  400738:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  40073c:	89 0a                	mov    DWORD PTR [rdx],ecx
  40073e:	eb 0c                	jmp    0x40074c
  400740:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  400744:	48 8d 48 08          	lea    rcx,[rax+0x8]
  400748:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  40074c:	48 0f bf 00          	movsx  rax,WORD PTR [rax]
  400750:	eb b2                	jmp    0x400704
  400752:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  400754:	83 f9 2f             	cmp    ecx,0x2f
  400757:	77 0d                	ja     0x400766
  400759:	89 c8                	mov    eax,ecx
  40075b:	83 c1 08             	add    ecx,0x8
  40075e:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  400762:	89 0a                	mov    DWORD PTR [rdx],ecx
  400764:	eb 0c                	jmp    0x400772
  400766:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  40076a:	48 8d 48 08          	lea    rcx,[rax+0x8]
  40076e:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  400772:	0f b7 00             	movzx  eax,WORD PTR [rax]
  400775:	eb 8d                	jmp    0x400704
  400777:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  400779:	83 f9 2f             	cmp    ecx,0x2f
  40077c:	77 0d                	ja     0x40078b
  40077e:	89 c8                	mov    eax,ecx
  400780:	83 c1 08             	add    ecx,0x8
  400783:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  400787:	89 0a                	mov    DWORD PTR [rdx],ecx
  400789:	eb 0c                	jmp    0x400797
  40078b:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  40078f:	48 8d 48 08          	lea    rcx,[rax+0x8]
  400793:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  400797:	48 0f be 00          	movsx  rax,BYTE PTR [rax]
  40079b:	e9 64 ff ff ff       	jmp    0x400704
  4007a0:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  4007a2:	83 f9 2f             	cmp    ecx,0x2f
  4007a5:	77 0d                	ja     0x4007b4
  4007a7:	89 c8                	mov    eax,ecx
  4007a9:	83 c1 08             	add    ecx,0x8
  4007ac:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  4007b0:	89 0a                	mov    DWORD PTR [rdx],ecx
  4007b2:	eb 0c                	jmp    0x4007c0
  4007b4:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  4007b8:	48 8d 48 08          	lea    rcx,[rax+0x8]
  4007bc:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  4007c0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4007c3:	e9 3c ff ff ff       	jmp    0x400704
  4007c8:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  4007ca:	83 f9 2f             	cmp    ecx,0x2f
  4007cd:	77 0d                	ja     0x4007dc
  4007cf:	89 c8                	mov    eax,ecx
  4007d1:	83 c1 08             	add    ecx,0x8
  4007d4:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  4007d8:	89 0a                	mov    DWORD PTR [rdx],ecx
  4007da:	eb 0c                	jmp    0x4007e8
  4007dc:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  4007e0:	48 8d 48 08          	lea    rcx,[rax+0x8]
  4007e4:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  4007e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4007eb:	e9 14 ff ff ff       	jmp    0x400704
  4007f0:	8b 4a 04             	mov    ecx,DWORD PTR [rdx+0x4]
  4007f3:	81 f9 af 00 00 00    	cmp    ecx,0xaf
  4007f9:	77 0e                	ja     0x400809
  4007fb:	89 c8                	mov    eax,ecx
  4007fd:	83 c1 10             	add    ecx,0x10
  400800:	48 03 42 10          	add    rax,QWORD PTR [rdx+0x10]
  400804:	89 4a 04             	mov    DWORD PTR [rdx+0x4],ecx
  400807:	eb 0c                	jmp    0x400815
  400809:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  40080d:	48 8d 48 08          	lea    rcx,[rax+0x8]
  400811:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  400815:	dd 00                	fld    QWORD PTR [rax]
  400817:	db 3f                	fstp   TBYTE PTR [rdi]
  400819:	c3                   	ret    
  40081a:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  40081e:	48 83 c0 0f          	add    rax,0xf
  400822:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
  400826:	48 8d 48 10          	lea    rcx,[rax+0x10]
  40082a:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
  40082e:	db 28                	fld    TBYTE PTR [rax]
  400830:	db 3f                	fstp   TBYTE PTR [rdi]
  400832:	c3                   	ret    
  400833:	48 89 f8             	mov    rax,rdi
  400836:	b9 0a 00 00 00       	mov    ecx,0xa
  40083b:	48 85 c0             	test   rax,rax
  40083e:	74 0f                	je     0x40084f
  400840:	31 d2                	xor    edx,edx
  400842:	48 ff ce             	dec    rsi
  400845:	48 f7 f1             	div    rcx
  400848:	83 c2 30             	add    edx,0x30
  40084b:	88 16                	mov    BYTE PTR [rsi],dl
  40084d:	eb ec                	jmp    0x40083b
  40084f:	48 89 f0             	mov    rax,rsi
  400852:	c3                   	ret    
  400853:	31 c0                	xor    eax,eax
  400855:	41 83 c8 ff          	or     r8d,0xffffffff
  400859:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
  40085c:	0f be 11             	movsx  edx,BYTE PTR [rcx]
  40085f:	83 ea 30             	sub    edx,0x30
  400862:	83 fa 09             	cmp    edx,0x9
  400865:	77 26                	ja     0x40088d
  400867:	3d cc cc cc 0c       	cmp    eax,0xccccccc
  40086c:	77 14                	ja     0x400882
  40086e:	6b f0 f6             	imul   esi,eax,0xfffffff6
  400871:	81 c6 ff ff ff 7f    	add    esi,0x7fffffff
  400877:	39 f2                	cmp    edx,esi
  400879:	7f 07                	jg     0x400882
  40087b:	6b c0 0a             	imul   eax,eax,0xa
  40087e:	01 d0                	add    eax,edx
  400880:	eb 03                	jmp    0x400885
  400882:	44 89 c0             	mov    eax,r8d
  400885:	48 ff c1             	inc    rcx
  400888:	48 89 0f             	mov    QWORD PTR [rdi],rcx
  40088b:	eb cc                	jmp    0x400859
  40088d:	c3                   	ret    
  40088e:	f6 07 20             	test   BYTE PTR [rdi],0x20
  400891:	48 89 f0             	mov    rax,rsi
  400894:	48 89 d6             	mov    rsi,rdx
  400897:	75 0b                	jne    0x4008a4
  400899:	48 89 fa             	mov    rdx,rdi
  40089c:	48 89 c7             	mov    rdi,rax
  40089f:	e9 92 1e 00 00       	jmp    0x402736
  4008a4:	c3                   	ret    
  4008a5:	41 81 e0 00 20 01 00 	and    r8d,0x12000
  4008ac:	0f 85 88 00 00 00    	jne    0x40093a
  4008b2:	39 d1                	cmp    ecx,edx
  4008b4:	0f 8d 80 00 00 00    	jge    0x40093a
  4008ba:	41 55                	push   r13
  4008bc:	41 54                	push   r12
  4008be:	40 0f be f6          	movsx  esi,sil
  4008c2:	55                   	push   rbp
  4008c3:	53                   	push   rbx
  4008c4:	89 d3                	mov    ebx,edx
  4008c6:	29 cb                	sub    ebx,ecx
  4008c8:	ba 00 01 00 00       	mov    edx,0x100
  4008cd:	48 89 fd             	mov    rbp,rdi
  4008d0:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  4008d7:	81 fb 00 01 00 00    	cmp    ebx,0x100
  4008dd:	41 89 dd             	mov    r13d,ebx
  4008e0:	49 89 e4             	mov    r12,rsp
  4008e3:	48 0f 46 d3          	cmovbe rdx,rbx
  4008e7:	4c 89 e7             	mov    rdi,r12
  4008ea:	e8 4e 16 00 00       	call   0x401f3d
  4008ef:	81 fb ff 00 00 00    	cmp    ebx,0xff
  4008f5:	76 18                	jbe    0x40090f
  4008f7:	ba 00 01 00 00       	mov    edx,0x100
  4008fc:	4c 89 e6             	mov    rsi,r12
  4008ff:	48 89 ef             	mov    rdi,rbp
  400902:	e8 87 ff ff ff       	call   0x40088e
  400907:	81 eb 00 01 00 00    	sub    ebx,0x100
  40090d:	eb e0                	jmp    0x4008ef
  40090f:	44 89 ea             	mov    edx,r13d
  400912:	4c 89 e6             	mov    rsi,r12
  400915:	48 89 ef             	mov    rdi,rbp
  400918:	c1 ea 08             	shr    edx,0x8
  40091b:	69 d2 00 ff ff ff    	imul   edx,edx,0xffffff00
  400921:	44 01 ea             	add    edx,r13d
  400924:	48 63 d2             	movsxd rdx,edx
  400927:	e8 62 ff ff ff       	call   0x40088e
  40092c:	48 81 c4 08 01 00 00 	add    rsp,0x108
  400933:	5b                   	pop    rbx
  400934:	5d                   	pop    rbp
  400935:	41 5c                	pop    r12
  400937:	41 5d                	pop    r13
  400939:	c3                   	ret    
  40093a:	c3                   	ret    
  40093b:	41 57                	push   r15
  40093d:	41 56                	push   r14
  40093f:	41 55                	push   r13
  400941:	41 54                	push   r12
  400943:	49 89 fc             	mov    r12,rdi
  400946:	55                   	push   rbp
  400947:	53                   	push   rbx
  400948:	89 d3                	mov    ebx,edx
  40094a:	48 81 ec 58 1d 00 00 	sub    rsp,0x1d58
  400951:	db ac 24 90 1d 00 00 	fld    TBYTE PTR [rsp+0x1d90]
  400958:	89 74 24 30          	mov    DWORD PTR [rsp+0x30],esi
  40095c:	89 4c 24 1c          	mov    DWORD PTR [rsp+0x1c],ecx
  400960:	44 89 44 24 34       	mov    DWORD PTR [rsp+0x34],r8d
  400965:	c7 44 24 78 00 00 00 	mov    DWORD PTR [rsp+0x78],0x0
  40096c:	00 
  40096d:	d9 c0                	fld    st(0)
  40096f:	db 3c 24             	fstp   TBYTE PTR [rsp]
  400972:	db 7c 24 20          	fstp   TBYTE PTR [rsp+0x20]
  400976:	e8 d8 19 00 00       	call   0x402353
  40097b:	85 c0                	test   eax,eax
  40097d:	5f                   	pop    rdi
  40097e:	41 58                	pop    r8
  400980:	db 6c 24 10          	fld    TBYTE PTR [rsp+0x10]
  400984:	74 11                	je     0x400997
  400986:	41 bd 01 00 00 00    	mov    r13d,0x1
  40098c:	48 8d 05 c1 25 00 00 	lea    rax,[rip+0x25c1]        # 0x402f54
  400993:	d9 e0                	fchs   
  400995:	eb 35                	jmp    0x4009cc
  400997:	48 8d 05 b9 25 00 00 	lea    rax,[rip+0x25b9]        # 0x402f57
  40099e:	41 bd 01 00 00 00    	mov    r13d,0x1
  4009a4:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  4009a9:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  4009ad:	0f ba e0 0b          	bt     eax,0xb
  4009b1:	72 1e                	jb     0x4009d1
  4009b3:	48 8d 15 9b 25 00 00 	lea    rdx,[rip+0x259b]        # 0x402f55
  4009ba:	45 31 ed             	xor    r13d,r13d
  4009bd:	83 e0 01             	and    eax,0x1
  4009c0:	41 0f 95 c5          	setne  r13b
  4009c4:	48 8d 42 05          	lea    rax,[rdx+0x5]
  4009c8:	48 0f 44 c2          	cmove  rax,rdx
  4009cc:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  4009d1:	48 83 ec 10          	sub    rsp,0x10
  4009d5:	d9 c0                	fld    st(0)
  4009d7:	db 3c 24             	fstp   TBYTE PTR [rsp]
  4009da:	db 7c 24 20          	fstp   TBYTE PTR [rsp+0x20]
  4009de:	e8 2c 19 00 00       	call   0x40230f
  4009e3:	ff c8                	dec    eax
  4009e5:	59                   	pop    rcx
  4009e6:	5e                   	pop    rsi
  4009e7:	db 6c 24 10          	fld    TBYTE PTR [rsp+0x10]
  4009eb:	7f 75                	jg     0x400a62
  4009ed:	44 8b 44 24 24       	mov    r8d,DWORD PTR [rsp+0x24]
  4009f2:	48 8d 1d 72 25 00 00 	lea    rbx,[rip+0x2572]        # 0x402f6b
  4009f9:	48 8d 05 67 25 00 00 	lea    rax,[rip+0x2567]        # 0x402f67
  400a00:	41 83 e0 20          	and    r8d,0x20
  400a04:	48 0f 45 d8          	cmovne rbx,rax
  400a08:	df e8                	fucomip st,st(0)
  400a0a:	7b 15                	jnp    0x400a21
  400a0c:	48 8d 1d 5c 25 00 00 	lea    rbx,[rip+0x255c]        # 0x402f6f
  400a13:	48 8d 05 59 25 00 00 	lea    rax,[rip+0x2559]        # 0x402f73
  400a1a:	45 85 c0             	test   r8d,r8d
  400a1d:	48 0f 45 d8          	cmovne rbx,rax
  400a21:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  400a26:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  400a2a:	45 8d 7d 03          	lea    r15d,[r13+0x3]
  400a2e:	be 20 00 00 00       	mov    esi,0x20
  400a33:	4c 89 e7             	mov    rdi,r12
  400a36:	44 89 f9             	mov    ecx,r15d
  400a39:	41 81 e0 ff ff fe ff 	and    r8d,0xfffeffff
  400a40:	e8 60 fe ff ff       	call   0x4008a5
  400a45:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  400a4a:	49 63 d5             	movsxd rdx,r13d
  400a4d:	4c 89 e7             	mov    rdi,r12
  400a50:	e8 39 fe ff ff       	call   0x40088e
  400a55:	ba 03 00 00 00       	mov    edx,0x3
  400a5a:	48 89 de             	mov    rsi,rbx
  400a5d:	e9 4a 02 00 00       	jmp    0x400cac
  400a62:	48 8d 7c 24 68       	lea    rdi,[rsp+0x68]
  400a67:	48 83 ec 10          	sub    rsp,0x10
  400a6b:	db 3c 24             	fstp   TBYTE PTR [rsp]
  400a6e:	e8 ec 18 00 00       	call   0x40235f
  400a73:	d8 c0                	fadd   st,st(0)
  400a75:	58                   	pop    rax
  400a76:	5a                   	pop    rdx
  400a77:	d9 ee                	fldz   
  400a79:	d9 c9                	fxch   st(1)
  400a7b:	db e9                	fucomi st,st(1)
  400a7d:	7a 02                	jp     0x400a81
  400a7f:	74 04                	je     0x400a85
  400a81:	ff 4c 24 68          	dec    DWORD PTR [rsp+0x68]
  400a85:	44 8b 4c 24 24       	mov    r9d,DWORD PTR [rsp+0x24]
  400a8a:	41 83 c9 20          	or     r9d,0x20
  400a8e:	41 83 f9 61          	cmp    r9d,0x61
  400a92:	0f 85 4e 02 00 00    	jne    0x400ce6
  400a98:	f6 44 24 24 20       	test   BYTE PTR [rsp+0x24],0x20
  400a9d:	74 06                	je     0x400aa5
  400a9f:	48 83 44 24 28 09    	add    QWORD PTR [rsp+0x28],0x9
  400aa5:	41 83 c5 02          	add    r13d,0x2
  400aa9:	83 fb 0e             	cmp    ebx,0xe
  400aac:	d9 05 ce 27 00 00    	fld    DWORD PTR [rip+0x27ce]        # 0x403280
  400ab2:	77 36                	ja     0x400aea
  400ab4:	b8 0f 00 00 00       	mov    eax,0xf
  400ab9:	d9 05 b1 27 00 00    	fld    DWORD PTR [rip+0x27b1]        # 0x403270
  400abf:	29 d8                	sub    eax,ebx
  400ac1:	ff c8                	dec    eax
  400ac3:	83 f8 ff             	cmp    eax,0xffffffff
  400ac6:	74 04                	je     0x400acc
  400ac8:	d8 c9                	fmul   st,st(1)
  400aca:	eb f5                	jmp    0x400ac1
  400acc:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  400ad1:	80 38 2d             	cmp    BYTE PTR [rax],0x2d
  400ad4:	75 10                	jne    0x400ae6
  400ad6:	d9 ca                	fxch   st(2)
  400ad8:	d9 e0                	fchs   
  400ada:	d8 e2                	fsub   st,st(2)
  400adc:	de c2                	faddp  st(2),st
  400ade:	d9 c9                	fxch   st(1)
  400ae0:	d9 e0                	fchs   
  400ae2:	d9 c9                	fxch   st(1)
  400ae4:	eb 04                	jmp    0x400aea
  400ae6:	dc c2                	fadd   st(2),st
  400ae8:	de ea                	fsubrp st(2),st
  400aea:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
  400aee:	d9 c9                	fxch   st(1)
  400af0:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  400af4:	8b 7c 24 68          	mov    edi,DWORD PTR [rsp+0x68]
  400af8:	4c 8d 4c 24 6f       	lea    r9,[rsp+0x6f]
  400afd:	4d 8d 41 0c          	lea    r8,[r9+0xc]
  400b01:	c1 f8 1f             	sar    eax,0x1f
  400b04:	31 c7                	xor    edi,eax
  400b06:	4c 89 c6             	mov    rsi,r8
  400b09:	29 c7                	sub    edi,eax
  400b0b:	48 63 ff             	movsxd rdi,edi
  400b0e:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
  400b12:	db 7c 24 10          	fstp   TBYTE PTR [rsp+0x10]
  400b16:	e8 18 fd ff ff       	call   0x400833
  400b1b:	4c 39 c0             	cmp    rax,r8
  400b1e:	db 6c 24 10          	fld    TBYTE PTR [rsp+0x10]
  400b22:	db 6c 24 30          	fld    TBYTE PTR [rsp+0x30]
  400b26:	db 6c 24 40          	fld    TBYTE PTR [rsp+0x40]
  400b2a:	75 09                	jne    0x400b35
  400b2c:	49 8d 41 0b          	lea    rax,[r9+0xb]
  400b30:	c6 44 24 7a 30       	mov    BYTE PTR [rsp+0x7a],0x30
  400b35:	d9 ca                	fxch   st(2)
  400b37:	8b 54 24 68          	mov    edx,DWORD PTR [rsp+0x68]
  400b3b:	40 8a 74 24 24       	mov    sil,BYTE PTR [rsp+0x24]
  400b40:	4c 8d 50 fe          	lea    r10,[rax-0x2]
  400b44:	44 8a 44 24 24       	mov    r8b,BYTE PTR [rsp+0x24]
  400b49:	44 8b 5c 24 0c       	mov    r11d,DWORD PTR [rsp+0xc]
  400b4e:	40 b7 01             	mov    dil,0x1
  400b51:	c1 fa 1f             	sar    edx,0x1f
  400b54:	83 e2 02             	and    edx,0x2
  400b57:	41 83 e0 20          	and    r8d,0x20
  400b5b:	41 83 e3 08          	and    r11d,0x8
  400b5f:	83 c2 2b             	add    edx,0x2b
  400b62:	88 50 ff             	mov    BYTE PTR [rax-0x1],dl
  400b65:	8d 56 0f             	lea    edx,[rsi+0xf]
  400b68:	48 8d 35 21 25 00 00 	lea    rsi,[rip+0x2521]        # 0x403090
  400b6f:	88 50 fe             	mov    BYTE PTR [rax-0x2],dl
  400b72:	d9 7c 24 5e          	fnstcw WORD PTR [rsp+0x5e]
  400b76:	66 8b 54 24 5e       	mov    dx,WORD PTR [rsp+0x5e]
  400b7b:	48 8d 44 24 7b       	lea    rax,[rsp+0x7b]
  400b80:	80 ce 0c             	or     dh,0xc
  400b83:	48 89 c1             	mov    rcx,rax
  400b86:	66 89 54 24 5c       	mov    WORD PTR [rsp+0x5c],dx
  400b8b:	d9 c0                	fld    st(0)
  400b8d:	d9 6c 24 5c          	fldcw  WORD PTR [rsp+0x5c]
  400b91:	db 5c 24 10          	fistp  DWORD PTR [rsp+0x10]
  400b95:	d9 6c 24 5e          	fldcw  WORD PTR [rsp+0x5e]
  400b99:	48 8d 68 01          	lea    rbp,[rax+0x1]
  400b9d:	48 63 54 24 10       	movsxd rdx,DWORD PTR [rsp+0x10]
  400ba2:	da 64 24 10          	fisub  DWORD PTR [rsp+0x10]
  400ba6:	44 8a 3c 16          	mov    r15b,BYTE PTR [rsi+rdx*1]
  400baa:	45 09 c7             	or     r15d,r8d
  400bad:	48 39 c8             	cmp    rax,rcx
  400bb0:	44 88 38             	mov    BYTE PTR [rax],r15b
  400bb3:	d8 ca                	fmul   st,st(2)
  400bb5:	75 1d                	jne    0x400bd4
  400bb7:	db e9                	fucomi st,st(1)
  400bb9:	0f 9a c2             	setp   dl
  400bbc:	0f 45 d7             	cmovne edx,edi
  400bbf:	84 d2                	test   dl,dl
  400bc1:	75 09                	jne    0x400bcc
  400bc3:	85 db                	test   ebx,ebx
  400bc5:	7f 05                	jg     0x400bcc
  400bc7:	45 85 db             	test   r11d,r11d
  400bca:	74 08                	je     0x400bd4
  400bcc:	48 8d 68 02          	lea    rbp,[rax+0x2]
  400bd0:	c6 40 01 2e          	mov    BYTE PTR [rax+0x1],0x2e
  400bd4:	db e9                	fucomi st,st(1)
  400bd6:	7b 05                	jnp    0x400bdd
  400bd8:	48 89 e8             	mov    rax,rbp
  400bdb:	eb ae                	jmp    0x400b8b
  400bdd:	75 f9                	jne    0x400bd8
  400bdf:	dd d8                	fstp   st(0)
  400be1:	dd d8                	fstp   st(0)
  400be3:	dd d8                	fstp   st(0)
  400be5:	49 83 c1 0c          	add    r9,0xc
  400be9:	b8 fd ff ff 7f       	mov    eax,0x7ffffffd
  400bee:	49 63 f5             	movsxd rsi,r13d
  400bf1:	4d 29 d1             	sub    r9,r10
  400bf4:	48 63 d3             	movsxd rdx,ebx
  400bf7:	4c 29 c8             	sub    rax,r9
  400bfa:	4d 89 ce             	mov    r14,r9
  400bfd:	48 29 f0             	sub    rax,rsi
  400c00:	48 39 c2             	cmp    rdx,rax
  400c03:	7e 08                	jle    0x400c0d
  400c05:	83 c8 ff             	or     eax,0xffffffff
  400c08:	e9 ff 07 00 00       	jmp    0x40140c
  400c0d:	48 29 cd             	sub    rbp,rcx
  400c10:	85 db                	test   ebx,ebx
  400c12:	74 0e                	je     0x400c22
  400c14:	48 8d 45 ff          	lea    rax,[rbp-0x1]
  400c18:	42 8d 5c 0b 02       	lea    ebx,[rbx+r9*1+0x2]
  400c1d:	48 39 c2             	cmp    rdx,rax
  400c20:	7d 04                	jge    0x400c26
  400c22:	41 8d 1c 2e          	lea    ebx,[r14+rbp*1]
  400c26:	46 8d 3c 2b          	lea    r15d,[rbx+r13*1]
  400c2a:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  400c2f:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  400c33:	be 20 00 00 00       	mov    esi,0x20
  400c38:	4c 89 e7             	mov    rdi,r12
  400c3b:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
  400c40:	44 89 f9             	mov    ecx,r15d
  400c43:	44 29 f3             	sub    ebx,r14d
  400c46:	e8 5a fc ff ff       	call   0x4008a5
  400c4b:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  400c50:	49 63 d5             	movsxd rdx,r13d
  400c53:	4c 89 e7             	mov    rdi,r12
  400c56:	e8 33 fc ff ff       	call   0x40088e
  400c5b:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  400c60:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  400c64:	44 89 f9             	mov    ecx,r15d
  400c67:	be 30 00 00 00       	mov    esi,0x30
  400c6c:	4c 89 e7             	mov    rdi,r12
  400c6f:	41 81 f0 00 00 01 00 	xor    r8d,0x10000
  400c76:	e8 2a fc ff ff       	call   0x4008a5
  400c7b:	48 8d 74 24 7b       	lea    rsi,[rsp+0x7b]
  400c80:	48 89 ea             	mov    rdx,rbp
  400c83:	4c 89 e7             	mov    rdi,r12
  400c86:	e8 03 fc ff ff       	call   0x40088e
  400c8b:	89 da                	mov    edx,ebx
  400c8d:	be 30 00 00 00       	mov    esi,0x30
  400c92:	45 31 c0             	xor    r8d,r8d
  400c95:	29 ea                	sub    edx,ebp
  400c97:	31 c9                	xor    ecx,ecx
  400c99:	4c 89 e7             	mov    rdi,r12
  400c9c:	e8 04 fc ff ff       	call   0x4008a5
  400ca1:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
  400ca6:	4c 89 f2             	mov    rdx,r14
  400ca9:	4c 89 d6             	mov    rsi,r10
  400cac:	4c 89 e7             	mov    rdi,r12
  400caf:	e8 da fb ff ff       	call   0x40088e
  400cb4:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  400cb9:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  400cbd:	44 89 f9             	mov    ecx,r15d
  400cc0:	be 20 00 00 00       	mov    esi,0x20
  400cc5:	4c 89 e7             	mov    rdi,r12
  400cc8:	41 81 f0 00 20 00 00 	xor    r8d,0x2000
  400ccf:	e8 d1 fb ff ff       	call   0x4008a5
  400cd4:	44 3b 7c 24 20       	cmp    r15d,DWORD PTR [rsp+0x20]
  400cd9:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  400cdd:	41 0f 4d c7          	cmovge eax,r15d
  400ce1:	e9 26 07 00 00       	jmp    0x40140c
  400ce6:	85 db                	test   ebx,ebx
  400ce8:	79 05                	jns    0x400cef
  400cea:	bb 06 00 00 00       	mov    ebx,0x6
  400cef:	db e9                	fucomi st,st(1)
  400cf1:	7a 02                	jp     0x400cf5
  400cf3:	74 0b                	je     0x400d00
  400cf5:	d8 0d 89 25 00 00    	fmul   DWORD PTR [rip+0x2589]        # 0x403284
  400cfb:	83 6c 24 68 1c       	sub    DWORD PTR [rsp+0x68],0x1c
  400d00:	8b 74 24 68          	mov    esi,DWORD PTR [rsp+0x68]
  400d04:	48 8d 84 24 94 00 00 	lea    rax,[rsp+0x94]
  400d0b:	00 
  400d0c:	85 f6                	test   esi,esi
  400d0e:	78 06                	js     0x400d16
  400d10:	48 05 a8 1b 00 00    	add    rax,0x1ba8
  400d16:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  400d1b:	d9 7c 24 5e          	fnstcw WORD PTR [rsp+0x5e]
  400d1f:	66 8b 44 24 5e       	mov    ax,WORD PTR [rsp+0x5e]
  400d24:	4c 8b 74 24 10       	mov    r14,QWORD PTR [rsp+0x10]
  400d29:	80 cc 0c             	or     ah,0xc
  400d2c:	66 89 44 24 5c       	mov    WORD PTR [rsp+0x5c],ax
  400d31:	d9 c0                	fld    st(0)
  400d33:	d9 6c 24 5c          	fldcw  WORD PTR [rsp+0x5c]
  400d37:	df 7c 24 50          	fistp  QWORD PTR [rsp+0x50]
  400d3b:	d9 6c 24 5e          	fldcw  WORD PTR [rsp+0x5e]
  400d3f:	49 83 c6 04          	add    r14,0x4
  400d43:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  400d48:	41 89 46 fc          	mov    DWORD PTR [r14-0x4],eax
  400d4c:	89 c0                	mov    eax,eax
  400d4e:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  400d53:	df 6c 24 40          	fild   QWORD PTR [rsp+0x40]
  400d57:	de e9                	fsubrp st(1),st
  400d59:	d8 0d 29 25 00 00    	fmul   DWORD PTR [rip+0x2529]        # 0x403288
  400d5f:	db e9                	fucomi st,st(1)
  400d61:	7a ce                	jp     0x400d31
  400d63:	75 cc                	jne    0x400d31
  400d65:	dd d8                	fstp   st(0)
  400d67:	dd d8                	fstp   st(0)
  400d69:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  400d6e:	31 c0                	xor    eax,eax
  400d70:	41 b8 1d 00 00 00    	mov    r8d,0x1d
  400d76:	41 bb 00 ca 9a 3b    	mov    r11d,0x3b9aca00
  400d7c:	85 f6                	test   esi,esi
  400d7e:	7e 4f                	jle    0x400dcf
  400d80:	83 fe 1d             	cmp    esi,0x1d
  400d83:	44 89 c1             	mov    ecx,r8d
  400d86:	49 8d 7e fc          	lea    rdi,[r14-0x4]
  400d8a:	0f 4e ce             	cmovle ecx,esi
  400d8d:	31 c0                	xor    eax,eax
  400d8f:	48 39 fd             	cmp    rbp,rdi
  400d92:	77 18                	ja     0x400dac
  400d94:	8b 17                	mov    edx,DWORD PTR [rdi]
  400d96:	89 c0                	mov    eax,eax
  400d98:	48 83 ef 04          	sub    rdi,0x4
  400d9c:	48 d3 e2             	shl    rdx,cl
  400d9f:	48 01 d0             	add    rax,rdx
  400da2:	31 d2                	xor    edx,edx
  400da4:	49 f7 f3             	div    r11
  400da7:	89 57 04             	mov    DWORD PTR [rdi+0x4],edx
  400daa:	eb e3                	jmp    0x400d8f
  400dac:	85 c0                	test   eax,eax
  400dae:	74 14                	je     0x400dc4
  400db0:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400db3:	48 83 ed 04          	sub    rbp,0x4
  400db7:	eb 0b                	jmp    0x400dc4
  400db9:	41 83 7e fc 00       	cmp    DWORD PTR [r14-0x4],0x0
  400dbe:	75 09                	jne    0x400dc9
  400dc0:	49 83 ee 04          	sub    r14,0x4
  400dc4:	49 39 ee             	cmp    r14,rbp
  400dc7:	77 f0                	ja     0x400db9
  400dc9:	29 ce                	sub    esi,ecx
  400dcb:	b0 01                	mov    al,0x1
  400dcd:	eb ad                	jmp    0x400d7c
  400dcf:	84 c0                	test   al,al
  400dd1:	74 04                	je     0x400dd7
  400dd3:	89 74 24 68          	mov    DWORD PTR [rsp+0x68],esi
  400dd7:	8d 43 1d             	lea    eax,[rbx+0x1d]
  400dda:	b9 09 00 00 00       	mov    ecx,0x9
  400ddf:	31 d2                	xor    edx,edx
  400de1:	f7 f1                	div    ecx
  400de3:	31 d2                	xor    edx,edx
  400de5:	44 8d 58 01          	lea    r11d,[rax+0x1]
  400de9:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  400ded:	4e 8d 14 9d 00 00 00 	lea    r10,[r11*4+0x0]
  400df4:	00 
  400df5:	85 c0                	test   eax,eax
  400df7:	0f 89 8b 00 00 00    	jns    0x400e88
  400dfd:	83 f8 f7             	cmp    eax,0xfffffff7
  400e00:	b9 09 00 00 00       	mov    ecx,0x9
  400e05:	7c 04                	jl     0x400e0b
  400e07:	89 c1                	mov    ecx,eax
  400e09:	f7 d9                	neg    ecx
  400e0b:	41 b8 01 00 00 00    	mov    r8d,0x1
  400e11:	be 00 ca 9a 3b       	mov    esi,0x3b9aca00
  400e16:	48 89 ea             	mov    rdx,rbp
  400e19:	d3 fe                	sar    esi,cl
  400e1b:	41 d3 e0             	shl    r8d,cl
  400e1e:	89 74 24 40          	mov    DWORD PTR [rsp+0x40],esi
  400e22:	41 ff c8             	dec    r8d
  400e25:	31 f6                	xor    esi,esi
  400e27:	4c 39 f2             	cmp    rdx,r14
  400e2a:	73 1e                	jae    0x400e4a
  400e2c:	8b 3a                	mov    edi,DWORD PTR [rdx]
  400e2e:	48 83 c2 04          	add    rdx,0x4
  400e32:	41 89 ff             	mov    r15d,edi
  400e35:	44 21 c7             	and    edi,r8d
  400e38:	41 d3 ef             	shr    r15d,cl
  400e3b:	44 01 fe             	add    esi,r15d
  400e3e:	89 72 fc             	mov    DWORD PTR [rdx-0x4],esi
  400e41:	8b 74 24 40          	mov    esi,DWORD PTR [rsp+0x40]
  400e45:	0f af f7             	imul   esi,edi
  400e48:	eb dd                	jmp    0x400e27
  400e4a:	83 7d 00 00          	cmp    DWORD PTR [rbp+0x0],0x0
  400e4e:	75 04                	jne    0x400e54
  400e50:	48 83 c5 04          	add    rbp,0x4
  400e54:	85 f6                	test   esi,esi
  400e56:	74 07                	je     0x400e5f
  400e58:	41 89 36             	mov    DWORD PTR [r14],esi
  400e5b:	49 83 c6 04          	add    r14,0x4
  400e5f:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  400e64:	41 83 f9 66          	cmp    r9d,0x66
  400e68:	4c 89 f2             	mov    rdx,r14
  400e6b:	48 0f 45 f5          	cmovne rsi,rbp
  400e6f:	48 29 f2             	sub    rdx,rsi
  400e72:	48 c1 fa 02          	sar    rdx,0x2
  400e76:	4c 39 da             	cmp    rdx,r11
  400e79:	7e 04                	jle    0x400e7f
  400e7b:	4e 8d 34 16          	lea    r14,[rsi+r10*1]
  400e7f:	01 c8                	add    eax,ecx
  400e81:	b2 01                	mov    dl,0x1
  400e83:	e9 6d ff ff ff       	jmp    0x400df5
  400e88:	84 d2                	test   dl,dl
  400e8a:	74 04                	je     0x400e90
  400e8c:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  400e90:	45 31 c0             	xor    r8d,r8d
  400e93:	4c 39 f5             	cmp    rbp,r14
  400e96:	73 24                	jae    0x400ebc
  400e98:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
  400e9d:	8b 55 00             	mov    edx,DWORD PTR [rbp+0x0]
  400ea0:	b8 0a 00 00 00       	mov    eax,0xa
  400ea5:	49 29 e8             	sub    r8,rbp
  400ea8:	49 c1 f8 02          	sar    r8,0x2
  400eac:	47 8d 04 c0          	lea    r8d,[r8+r8*8]
  400eb0:	39 c2                	cmp    edx,eax
  400eb2:	72 08                	jb     0x400ebc
  400eb4:	6b c0 0a             	imul   eax,eax,0xa
  400eb7:	41 ff c0             	inc    r8d
  400eba:	eb f4                	jmp    0x400eb0
  400ebc:	31 c0                	xor    eax,eax
  400ebe:	41 83 f9 66          	cmp    r9d,0x66
  400ec2:	89 df                	mov    edi,ebx
  400ec4:	0f 95 c0             	setne  al
  400ec7:	41 0f af c0          	imul   eax,r8d
  400ecb:	29 c7                	sub    edi,eax
  400ecd:	41 83 f9 67          	cmp    r9d,0x67
  400ed1:	0f 94 c2             	sete   dl
  400ed4:	31 c9                	xor    ecx,ecx
  400ed6:	85 db                	test   ebx,ebx
  400ed8:	0f 95 c1             	setne  cl
  400edb:	89 f8                	mov    eax,edi
  400edd:	21 d1                	and    ecx,edx
  400edf:	4c 89 f2             	mov    rdx,r14
  400ee2:	48 2b 54 24 10       	sub    rdx,QWORD PTR [rsp+0x10]
  400ee7:	29 c8                	sub    eax,ecx
  400ee9:	48 63 c8             	movsxd rcx,eax
  400eec:	48 c1 fa 02          	sar    rdx,0x2
  400ef0:	48 ff ca             	dec    rdx
  400ef3:	48 8d 14 d2          	lea    rdx,[rdx+rdx*8]
  400ef7:	48 39 d1             	cmp    rcx,rdx
  400efa:	0f 8d 23 01 00 00    	jge    0x401023
  400f00:	05 00 40 02 00       	add    eax,0x24000
  400f05:	b9 09 00 00 00       	mov    ecx,0x9
  400f0a:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  400f0f:	99                   	cdq    
  400f10:	f7 f9                	idiv   ecx
  400f12:	48 98                	cdqe   
  400f14:	48 8d 8c 86 04 00 ff 	lea    rcx,[rsi+rax*4-0xfffc]
  400f1b:	ff 
  400f1c:	8d 42 01             	lea    eax,[rdx+0x1]
  400f1f:	be 0a 00 00 00       	mov    esi,0xa
  400f24:	83 f8 09             	cmp    eax,0x9
  400f27:	74 07                	je     0x400f30
  400f29:	6b f6 0a             	imul   esi,esi,0xa
  400f2c:	ff c0                	inc    eax
  400f2e:	eb f4                	jmp    0x400f24
  400f30:	8b 39                	mov    edi,DWORD PTR [rcx]
  400f32:	31 d2                	xor    edx,edx
  400f34:	89 f8                	mov    eax,edi
  400f36:	f7 f6                	div    esi
  400f38:	85 d2                	test   edx,edx
  400f3a:	75 0d                	jne    0x400f49
  400f3c:	4c 8d 59 04          	lea    r11,[rcx+0x4]
  400f40:	4d 39 de             	cmp    r14,r11
  400f43:	0f 84 c2 00 00 00    	je     0x40100b
  400f49:	a8 01                	test   al,0x1
  400f4b:	75 13                	jne    0x400f60
  400f4d:	81 fe 00 ca 9a 3b    	cmp    esi,0x3b9aca00
  400f53:	75 13                	jne    0x400f68
  400f55:	48 39 cd             	cmp    rbp,rcx
  400f58:	73 0e                	jae    0x400f68
  400f5a:	f6 41 fc 01          	test   BYTE PTR [rcx-0x4],0x1
  400f5e:	74 08                	je     0x400f68
  400f60:	db 2d 2a 23 00 00    	fld    TBYTE PTR [rip+0x232a]        # 0x403290
  400f66:	eb 06                	jmp    0x400f6e
  400f68:	d9 05 06 23 00 00    	fld    DWORD PTR [rip+0x2306]        # 0x403274
  400f6e:	89 f0                	mov    eax,esi
  400f70:	d1 f8                	sar    eax,1
  400f72:	39 d0                	cmp    eax,edx
  400f74:	77 0f                	ja     0x400f85
  400f76:	75 17                	jne    0x400f8f
  400f78:	48 8d 41 04          	lea    rax,[rcx+0x4]
  400f7c:	d9 e8                	fld1   
  400f7e:	49 39 c6             	cmp    r14,rax
  400f81:	75 0a                	jne    0x400f8d
  400f83:	eb 10                	jmp    0x400f95
  400f85:	d9 05 ed 22 00 00    	fld    DWORD PTR [rip+0x22ed]        # 0x403278
  400f8b:	eb 08                	jmp    0x400f95
  400f8d:	dd d8                	fstp   st(0)
  400f8f:	d9 05 e7 22 00 00    	fld    DWORD PTR [rip+0x22e7]        # 0x40327c
  400f95:	45 85 ed             	test   r13d,r13d
  400f98:	74 12                	je     0x400fac
  400f9a:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  400f9f:	80 38 2d             	cmp    BYTE PTR [rax],0x2d
  400fa2:	75 08                	jne    0x400fac
  400fa4:	d9 c9                	fxch   st(1)
  400fa6:	d9 e0                	fchs   
  400fa8:	d9 c9                	fxch   st(1)
  400faa:	d9 e0                	fchs   
  400fac:	d8 c1                	fadd   st,st(1)
  400fae:	29 d7                	sub    edi,edx
  400fb0:	df e9                	fucomip st,st(1)
  400fb2:	dd d8                	fstp   st(0)
  400fb4:	7a 06                	jp     0x400fbc
  400fb6:	75 04                	jne    0x400fbc
  400fb8:	89 39                	mov    DWORD PTR [rcx],edi
  400fba:	eb 4f                	jmp    0x40100b
  400fbc:	01 fe                	add    esi,edi
  400fbe:	89 31                	mov    DWORD PTR [rcx],esi
  400fc0:	81 39 ff c9 9a 3b    	cmp    DWORD PTR [rcx],0x3b9ac9ff
  400fc6:	76 1f                	jbe    0x400fe7
  400fc8:	48 83 e9 04          	sub    rcx,0x4
  400fcc:	c7 41 04 00 00 00 00 	mov    DWORD PTR [rcx+0x4],0x0
  400fd3:	48 39 cd             	cmp    rbp,rcx
  400fd6:	76 0b                	jbe    0x400fe3
  400fd8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  400fdf:	48 83 ed 04          	sub    rbp,0x4
  400fe3:	ff 01                	inc    DWORD PTR [rcx]
  400fe5:	eb d9                	jmp    0x400fc0
  400fe7:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
  400fec:	8b 55 00             	mov    edx,DWORD PTR [rbp+0x0]
  400fef:	b8 0a 00 00 00       	mov    eax,0xa
  400ff4:	49 29 e8             	sub    r8,rbp
  400ff7:	49 c1 f8 02          	sar    r8,0x2
  400ffb:	47 8d 04 c0          	lea    r8d,[r8+r8*8]
  400fff:	39 c2                	cmp    edx,eax
  401001:	72 08                	jb     0x40100b
  401003:	6b c0 0a             	imul   eax,eax,0xa
  401006:	41 ff c0             	inc    r8d
  401009:	eb f4                	jmp    0x400fff
  40100b:	48 83 c1 04          	add    rcx,0x4
  40100f:	49 39 ce             	cmp    r14,rcx
  401012:	4c 0f 47 f1          	cmova  r14,rcx
  401016:	eb 0b                	jmp    0x401023
  401018:	41 83 7e fc 00       	cmp    DWORD PTR [r14-0x4],0x0
  40101d:	75 09                	jne    0x401028
  40101f:	49 83 ee 04          	sub    r14,0x4
  401023:	49 39 ee             	cmp    r14,rbp
  401026:	77 f0                	ja     0x401018
  401028:	41 83 f9 67          	cmp    r9d,0x67
  40102c:	0f 85 9e 00 00 00    	jne    0x4010d0
  401032:	85 db                	test   ebx,ebx
  401034:	75 05                	jne    0x40103b
  401036:	bb 01 00 00 00       	mov    ebx,0x1
  40103b:	44 39 c3             	cmp    ebx,r8d
  40103e:	7e 12                	jle    0x401052
  401040:	41 83 f8 fc          	cmp    r8d,0xfffffffc
  401044:	7c 0c                	jl     0x401052
  401046:	41 8d 40 01          	lea    eax,[r8+0x1]
  40104a:	ff 4c 24 24          	dec    DWORD PTR [rsp+0x24]
  40104e:	29 c3                	sub    ebx,eax
  401050:	eb 07                	jmp    0x401059
  401052:	83 6c 24 24 02       	sub    DWORD PTR [rsp+0x24],0x2
  401057:	ff cb                	dec    ebx
  401059:	f6 44 24 0c 08       	test   BYTE PTR [rsp+0xc],0x8
  40105e:	75 70                	jne    0x4010d0
  401060:	49 39 ee             	cmp    r14,rbp
  401063:	b9 09 00 00 00       	mov    ecx,0x9
  401068:	76 20                	jbe    0x40108a
  40106a:	41 8b 7e fc          	mov    edi,DWORD PTR [r14-0x4]
  40106e:	85 ff                	test   edi,edi
  401070:	74 18                	je     0x40108a
  401072:	31 c9                	xor    ecx,ecx
  401074:	be 0a 00 00 00       	mov    esi,0xa
  401079:	31 d2                	xor    edx,edx
  40107b:	89 f8                	mov    eax,edi
  40107d:	f7 f6                	div    esi
  40107f:	85 d2                	test   edx,edx
  401081:	75 07                	jne    0x40108a
  401083:	6b f6 0a             	imul   esi,esi,0xa
  401086:	ff c1                	inc    ecx
  401088:	eb ef                	jmp    0x401079
  40108a:	4c 89 f0             	mov    rax,r14
  40108d:	48 2b 44 24 10       	sub    rax,QWORD PTR [rsp+0x10]
  401092:	48 63 c9             	movsxd rcx,ecx
  401095:	48 63 d3             	movsxd rdx,ebx
  401098:	48 c1 f8 02          	sar    rax,0x2
  40109c:	48 ff c8             	dec    rax
  40109f:	48 8d 34 c0          	lea    rsi,[rax+rax*8]
  4010a3:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4010a7:	83 c8 20             	or     eax,0x20
  4010aa:	83 f8 66             	cmp    eax,0x66
  4010ad:	75 05                	jne    0x4010b4
  4010af:	48 89 f0             	mov    rax,rsi
  4010b2:	eb 06                	jmp    0x4010ba
  4010b4:	49 63 c0             	movsxd rax,r8d
  4010b7:	48 01 f0             	add    rax,rsi
  4010ba:	48 29 c8             	sub    rax,rcx
  4010bd:	b9 00 00 00 00       	mov    ecx,0x0
  4010c2:	48 0f 48 c1          	cmovs  rax,rcx
  4010c6:	48 39 d0             	cmp    rax,rdx
  4010c9:	48 0f 4e d0          	cmovle rdx,rax
  4010cd:	48 89 d3             	mov    rbx,rdx
  4010d0:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  4010d4:	ba 01 00 00 00       	mov    edx,0x1
  4010d9:	c1 e8 03             	shr    eax,0x3
  4010dc:	83 e0 01             	and    eax,0x1
  4010df:	85 db                	test   ebx,ebx
  4010e1:	0f 45 c2             	cmovne eax,edx
  4010e4:	ba fe ff ff 7f       	mov    edx,0x7ffffffe
  4010e9:	29 c2                	sub    edx,eax
  4010eb:	39 da                	cmp    edx,ebx
  4010ed:	0f 8c 12 fb ff ff    	jl     0x400c05
  4010f3:	44 8d 4c 18 01       	lea    r9d,[rax+rbx*1+0x1]
  4010f8:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  4010fc:	41 bb ff ff ff 7f    	mov    r11d,0x7fffffff
  401102:	45 29 cb             	sub    r11d,r9d
  401105:	83 c8 20             	or     eax,0x20
  401108:	83 f8 66             	cmp    eax,0x66
  40110b:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  40110f:	75 13                	jne    0x401124
  401111:	45 39 d8             	cmp    r8d,r11d
  401114:	0f 8f eb fa ff ff    	jg     0x400c05
  40111a:	45 85 c0             	test   r8d,r8d
  40111d:	7e 67                	jle    0x401186
  40111f:	45 01 c1             	add    r9d,r8d
  401122:	eb 62                	jmp    0x401186
  401124:	44 89 c0             	mov    eax,r8d
  401127:	4c 8d 7c 24 7b       	lea    r15,[rsp+0x7b]
  40112c:	c1 f8 1f             	sar    eax,0x1f
  40112f:	89 c7                	mov    edi,eax
  401131:	4c 89 fe             	mov    rsi,r15
  401134:	44 31 c7             	xor    edi,r8d
  401137:	29 c7                	sub    edi,eax
  401139:	48 63 ff             	movsxd rdi,edi
  40113c:	e8 f2 f6 ff ff       	call   0x400833
  401141:	4c 89 f9             	mov    rcx,r15
  401144:	48 29 c1             	sub    rcx,rax
  401147:	48 ff c9             	dec    rcx
  40114a:	7f 08                	jg     0x401154
  40114c:	48 ff c8             	dec    rax
  40114f:	c6 00 30             	mov    BYTE PTR [rax],0x30
  401152:	eb ed                	jmp    0x401141
  401154:	48 8d 78 fe          	lea    rdi,[rax-0x2]
  401158:	41 c1 f8 1f          	sar    r8d,0x1f
  40115c:	8a 4c 24 24          	mov    cl,BYTE PTR [rsp+0x24]
  401160:	41 83 e0 02          	and    r8d,0x2
  401164:	4d 63 db             	movsxd r11,r11d
  401167:	49 29 ff             	sub    r15,rdi
  40116a:	41 83 c0 2b          	add    r8d,0x2b
  40116e:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
  401173:	4d 39 df             	cmp    r15,r11
  401176:	44 88 40 ff          	mov    BYTE PTR [rax-0x1],r8b
  40117a:	88 48 fe             	mov    BYTE PTR [rax-0x2],cl
  40117d:	0f 8f 82 fa ff ff    	jg     0x400c05
  401183:	45 01 f9             	add    r9d,r15d
  401186:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  40118b:	44 29 e8             	sub    eax,r13d
  40118e:	44 39 c8             	cmp    eax,r9d
  401191:	0f 8c 6e fa ff ff    	jl     0x400c05
  401197:	43 8d 04 29          	lea    eax,[r9+r13*1]
  40119b:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  4011a0:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  4011a4:	be 20 00 00 00       	mov    esi,0x20
  4011a9:	4c 89 e7             	mov    rdi,r12
  4011ac:	89 c1                	mov    ecx,eax
  4011ae:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  4011b2:	e8 ee f6 ff ff       	call   0x4008a5
  4011b7:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  4011bc:	49 63 d5             	movsxd rdx,r13d
  4011bf:	4c 89 e7             	mov    rdi,r12
  4011c2:	e8 c7 f6 ff ff       	call   0x40088e
  4011c7:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  4011cc:	8b 4c 24 24          	mov    ecx,DWORD PTR [rsp+0x24]
  4011d0:	be 30 00 00 00       	mov    esi,0x30
  4011d5:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  4011d9:	4c 89 e7             	mov    rdi,r12
  4011dc:	41 81 f0 00 00 01 00 	xor    r8d,0x10000
  4011e3:	e8 bd f6 ff ff       	call   0x4008a5
  4011e8:	83 7c 24 40 66       	cmp    DWORD PTR [rsp+0x40],0x66
  4011ed:	0f 85 eb 00 00 00    	jne    0x4012de
  4011f3:	48 39 6c 24 10       	cmp    QWORD PTR [rsp+0x10],rbp
  4011f8:	4c 8d 7c 24 7b       	lea    r15,[rsp+0x7b]
  4011fd:	48 0f 46 6c 24 10    	cmovbe rbp,QWORD PTR [rsp+0x10]
  401203:	49 89 ed             	mov    r13,rbp
  401206:	4c 3b 6c 24 10       	cmp    r13,QWORD PTR [rsp+0x10]
  40120b:	77 4b                	ja     0x401258
  40120d:	41 8b 7d 00          	mov    edi,DWORD PTR [r13+0x0]
  401211:	4d 8d 47 09          	lea    r8,[r15+0x9]
  401215:	4c 89 c6             	mov    rsi,r8
  401218:	e8 16 f6 ff ff       	call   0x400833
  40121d:	4c 39 ed             	cmp    rbp,r13
  401220:	74 0d                	je     0x40122f
  401222:	4c 39 f8             	cmp    rax,r15
  401225:	76 19                	jbe    0x401240
  401227:	48 ff c8             	dec    rax
  40122a:	c6 00 30             	mov    BYTE PTR [rax],0x30
  40122d:	eb f3                	jmp    0x401222
  40122f:	4c 39 c0             	cmp    rax,r8
  401232:	75 0c                	jne    0x401240
  401234:	49 8d 47 08          	lea    rax,[r15+0x8]
  401238:	c6 84 24 83 00 00 00 	mov    BYTE PTR [rsp+0x83],0x30
  40123f:	30 
  401240:	49 8d 57 09          	lea    rdx,[r15+0x9]
  401244:	48 89 c6             	mov    rsi,rax
  401247:	4c 89 e7             	mov    rdi,r12
  40124a:	49 83 c5 04          	add    r13,0x4
  40124e:	48 29 c2             	sub    rdx,rax
  401251:	e8 38 f6 ff ff       	call   0x40088e
  401256:	eb ae                	jmp    0x401206
  401258:	85 db                	test   ebx,ebx
  40125a:	75 07                	jne    0x401263
  40125c:	f6 44 24 0c 08       	test   BYTE PTR [rsp+0xc],0x8
  401261:	74 5e                	je     0x4012c1
  401263:	48 8d 35 0d 1d 00 00 	lea    rsi,[rip+0x1d0d]        # 0x402f77
  40126a:	48 8d 6c 24 7b       	lea    rbp,[rsp+0x7b]
  40126f:	ba 01 00 00 00       	mov    edx,0x1
  401274:	4c 89 e7             	mov    rdi,r12
  401277:	e8 12 f6 ff ff       	call   0x40088e
  40127c:	4d 39 f5             	cmp    r13,r14
  40127f:	73 40                	jae    0x4012c1
  401281:	85 db                	test   ebx,ebx
  401283:	7e 3c                	jle    0x4012c1
  401285:	41 8b 7d 00          	mov    edi,DWORD PTR [r13+0x0]
  401289:	48 8d 75 09          	lea    rsi,[rbp+0x9]
  40128d:	e8 a1 f5 ff ff       	call   0x400833
  401292:	48 39 e8             	cmp    rax,rbp
  401295:	76 08                	jbe    0x40129f
  401297:	48 ff c8             	dec    rax
  40129a:	c6 00 30             	mov    BYTE PTR [rax],0x30
  40129d:	eb f3                	jmp    0x401292
  40129f:	83 fb 09             	cmp    ebx,0x9
  4012a2:	ba 09 00 00 00       	mov    edx,0x9
  4012a7:	48 89 c6             	mov    rsi,rax
  4012aa:	0f 4e d3             	cmovle edx,ebx
  4012ad:	4c 89 e7             	mov    rdi,r12
  4012b0:	49 83 c5 04          	add    r13,0x4
  4012b4:	48 63 d2             	movsxd rdx,edx
  4012b7:	83 eb 09             	sub    ebx,0x9
  4012ba:	e8 cf f5 ff ff       	call   0x40088e
  4012bf:	eb bb                	jmp    0x40127c
  4012c1:	8d 53 09             	lea    edx,[rbx+0x9]
  4012c4:	45 31 c0             	xor    r8d,r8d
  4012c7:	b9 09 00 00 00       	mov    ecx,0x9
  4012cc:	be 30 00 00 00       	mov    esi,0x30
  4012d1:	4c 89 e7             	mov    rdi,r12
  4012d4:	e8 cc f5 ff ff       	call   0x4008a5
  4012d9:	e9 fe 00 00 00       	jmp    0x4013dc
  4012de:	49 39 ee             	cmp    r14,rbp
  4012e1:	77 04                	ja     0x4012e7
  4012e3:	4c 8d 75 04          	lea    r14,[rbp+0x4]
  4012e7:	4c 8d 7c 24 7b       	lea    r15,[rsp+0x7b]
  4012ec:	49 89 ed             	mov    r13,rbp
  4012ef:	4d 39 f5             	cmp    r13,r14
  4012f2:	0f 83 b5 00 00 00    	jae    0x4013ad
  4012f8:	85 db                	test   ebx,ebx
  4012fa:	0f 88 ad 00 00 00    	js     0x4013ad
  401300:	41 8b 7d 00          	mov    edi,DWORD PTR [r13+0x0]
  401304:	4d 8d 47 09          	lea    r8,[r15+0x9]
  401308:	4c 89 c6             	mov    rsi,r8
  40130b:	e8 23 f5 ff ff       	call   0x400833
  401310:	4c 39 c0             	cmp    rax,r8
  401313:	75 0c                	jne    0x401321
  401315:	49 8d 47 08          	lea    rax,[r15+0x8]
  401319:	c6 84 24 83 00 00 00 	mov    BYTE PTR [rsp+0x83],0x30
  401320:	30 
  401321:	49 39 ed             	cmp    r13,rbp
  401324:	48 89 c1             	mov    rcx,rax
  401327:	74 0d                	je     0x401336
  401329:	4c 39 f9             	cmp    rcx,r15
  40132c:	76 4e                	jbe    0x40137c
  40132e:	48 ff c9             	dec    rcx
  401331:	c6 01 30             	mov    BYTE PTR [rcx],0x30
  401334:	eb f3                	jmp    0x401329
  401336:	48 ff c1             	inc    rcx
  401339:	ba 01 00 00 00       	mov    edx,0x1
  40133e:	48 89 c6             	mov    rsi,rax
  401341:	4c 89 e7             	mov    rdi,r12
  401344:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  401349:	e8 40 f5 ff ff       	call   0x40088e
  40134e:	85 db                	test   ebx,ebx
  401350:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
  401355:	75 07                	jne    0x40135e
  401357:	f6 44 24 0c 08       	test   BYTE PTR [rsp+0xc],0x8
  40135c:	74 1e                	je     0x40137c
  40135e:	48 8d 35 12 1c 00 00 	lea    rsi,[rip+0x1c12]        # 0x402f77
  401365:	ba 01 00 00 00       	mov    edx,0x1
  40136a:	4c 89 e7             	mov    rdi,r12
  40136d:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  401372:	e8 17 f5 ff ff       	call   0x40088e
  401377:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
  40137c:	49 8d 47 09          	lea    rax,[r15+0x9]
  401380:	48 63 d3             	movsxd rdx,ebx
  401383:	48 89 ce             	mov    rsi,rcx
  401386:	4c 89 e7             	mov    rdi,r12
  401389:	48 29 c8             	sub    rax,rcx
  40138c:	48 39 c2             	cmp    rdx,rax
  40138f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401394:	48 0f 4f d0          	cmovg  rdx,rax
  401398:	49 83 c5 04          	add    r13,0x4
  40139c:	e8 ed f4 ff ff       	call   0x40088e
  4013a1:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  4013a6:	29 c3                	sub    ebx,eax
  4013a8:	e9 42 ff ff ff       	jmp    0x4012ef
  4013ad:	8d 53 12             	lea    edx,[rbx+0x12]
  4013b0:	be 30 00 00 00       	mov    esi,0x30
  4013b5:	4c 89 e7             	mov    rdi,r12
  4013b8:	45 31 c0             	xor    r8d,r8d
  4013bb:	b9 12 00 00 00       	mov    ecx,0x12
  4013c0:	e8 e0 f4 ff ff       	call   0x4008a5
  4013c5:	48 8d 54 24 7b       	lea    rdx,[rsp+0x7b]
  4013ca:	48 2b 54 24 30       	sub    rdx,QWORD PTR [rsp+0x30]
  4013cf:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  4013d4:	4c 89 e7             	mov    rdi,r12
  4013d7:	e8 b2 f4 ff ff       	call   0x40088e
  4013dc:	44 8b 44 24 0c       	mov    r8d,DWORD PTR [rsp+0xc]
  4013e1:	8b 4c 24 24          	mov    ecx,DWORD PTR [rsp+0x24]
  4013e5:	be 20 00 00 00       	mov    esi,0x20
  4013ea:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  4013ee:	4c 89 e7             	mov    rdi,r12
  4013f1:	41 81 f0 00 20 00 00 	xor    r8d,0x2000
  4013f8:	e8 a8 f4 ff ff       	call   0x4008a5
  4013fd:	8b 5c 24 20          	mov    ebx,DWORD PTR [rsp+0x20]
  401401:	39 5c 24 24          	cmp    DWORD PTR [rsp+0x24],ebx
  401405:	89 d8                	mov    eax,ebx
  401407:	0f 4d 44 24 24       	cmovge eax,DWORD PTR [rsp+0x24]
  40140c:	48 81 c4 48 1d 00 00 	add    rsp,0x1d48
  401413:	5b                   	pop    rbx
  401414:	5d                   	pop    rbp
  401415:	41 5c                	pop    r12
  401417:	41 5d                	pop    r13
  401419:	41 5e                	pop    r14
  40141b:	41 5f                	pop    r15
  40141d:	c3                   	ret    
  40141e:	41 57                	push   r15
  401420:	41 56                	push   r14
  401422:	45 31 ff             	xor    r15d,r15d
  401425:	41 55                	push   r13
  401427:	41 54                	push   r12
  401429:	55                   	push   rbp
  40142a:	53                   	push   rbx
  40142b:	31 db                	xor    ebx,ebx
  40142d:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
  401434:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
  401438:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  40143d:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  401442:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  401447:	48 89 74 24 50       	mov    QWORD PTR [rsp+0x50],rsi
  40144c:	c7 44 24 14 00 00 00 	mov    DWORD PTR [rsp+0x14],0x0
  401453:	00 
  401454:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  401459:	44 29 f8             	sub    eax,r15d
  40145c:	39 d8                	cmp    eax,ebx
  40145e:	0f 8c 53 08 00 00    	jl     0x401cb7
  401464:	4c 8b 6c 24 50       	mov    r13,QWORD PTR [rsp+0x50]
  401469:	41 01 df             	add    r15d,ebx
  40146c:	41 80 7d 00 00       	cmp    BYTE PTR [r13+0x0],0x0
  401471:	0f 84 d3 07 00 00    	je     0x401c4a
  401477:	4c 8b 64 24 50       	mov    r12,QWORD PTR [rsp+0x50]
  40147c:	41 8a 04 24          	mov    al,BYTE PTR [r12]
  401480:	84 c0                	test   al,al
  401482:	74 20                	je     0x4014a4
  401484:	3c 25                	cmp    al,0x25
  401486:	74 1c                	je     0x4014a4
  401488:	49 ff c4             	inc    r12
  40148b:	4c 89 64 24 50       	mov    QWORD PTR [rsp+0x50],r12
  401490:	eb e5                	jmp    0x401477
  401492:	80 78 01 25          	cmp    BYTE PTR [rax+0x1],0x25
  401496:	75 16                	jne    0x4014ae
  401498:	48 83 c0 02          	add    rax,0x2
  40149c:	49 ff c4             	inc    r12
  40149f:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  4014a4:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  4014a9:	80 38 25             	cmp    BYTE PTR [rax],0x25
  4014ac:	74 e4                	je     0x401492
  4014ae:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  4014b3:	4d 29 ec             	sub    r12,r13
  4014b6:	44 29 f8             	sub    eax,r15d
  4014b9:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  4014bd:	48 98                	cdqe   
  4014bf:	49 39 c4             	cmp    r12,rax
  4014c2:	0f 8f ef 07 00 00    	jg     0x401cb7
  4014c8:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  4014cd:	44 89 e3             	mov    ebx,r12d
  4014d0:	74 0f                	je     0x4014e1
  4014d2:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  4014d6:	49 63 d4             	movsxd rdx,r12d
  4014d9:	4c 89 ee             	mov    rsi,r13
  4014dc:	e8 ad f3 ff ff       	call   0x40088e
  4014e1:	45 85 e4             	test   r12d,r12d
  4014e4:	0f 85 6a ff ff ff    	jne    0x401454
  4014ea:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  4014ef:	44 0f be 58 01       	movsx  r11d,BYTE PTR [rax+0x1]
  4014f4:	41 83 eb 30          	sub    r11d,0x30
  4014f8:	41 83 fb 09          	cmp    r11d,0x9
  4014fc:	77 19                	ja     0x401517
  4014fe:	80 78 02 24          	cmp    BYTE PTR [rax+0x2],0x24
  401502:	75 13                	jne    0x401517
  401504:	48 83 c0 03          	add    rax,0x3
  401508:	c7 44 24 14 01 00 00 	mov    DWORD PTR [rsp+0x14],0x1
  40150f:	00 
  401510:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401515:	eb 0c                	jmp    0x401523
  401517:	48 ff c0             	inc    rax
  40151a:	41 83 cb ff          	or     r11d,0xffffffff
  40151e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401523:	31 ed                	xor    ebp,ebp
  401525:	be 89 28 01 00       	mov    esi,0x12889
  40152a:	bf 01 00 00 00       	mov    edi,0x1
  40152f:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  401534:	0f be 08             	movsx  ecx,BYTE PTR [rax]
  401537:	89 ca                	mov    edx,ecx
  401539:	83 e9 20             	sub    ecx,0x20
  40153c:	83 f9 1f             	cmp    ecx,0x1f
  40153f:	77 15                	ja     0x401556
  401541:	0f a3 ce             	bt     esi,ecx
  401544:	73 10                	jae    0x401556
  401546:	89 fa                	mov    edx,edi
  401548:	48 ff c0             	inc    rax
  40154b:	d3 e2                	shl    edx,cl
  40154d:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401552:	09 d5                	or     ebp,edx
  401554:	eb d9                	jmp    0x40152f
  401556:	80 fa 2a             	cmp    dl,0x2a
  401559:	0f 85 ba 00 00 00    	jne    0x401619
  40155f:	48 0f be 48 01       	movsx  rcx,BYTE PTR [rax+0x1]
  401564:	48 89 ca             	mov    rdx,rcx
  401567:	83 e9 30             	sub    ecx,0x30
  40156a:	83 f9 09             	cmp    ecx,0x9
  40156d:	77 3f                	ja     0x4015ae
  40156f:	80 78 02 24          	cmp    BYTE PTR [rax+0x2],0x24
  401573:	75 39                	jne    0x4015ae
  401575:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  40157a:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  40157f:	48 83 c0 03          	add    rax,0x3
  401583:	c7 44 24 14 01 00 00 	mov    DWORD PTR [rsp+0x14],0x1
  40158a:	00 
  40158b:	c7 84 97 40 ff ff ff 	mov    DWORD PTR [rdi+rdx*4-0xc0],0xa
  401592:	0a 00 00 00 
  401596:	48 0f be 50 fe       	movsx  rdx,BYTE PTR [rax-0x2]
  40159b:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  4015a0:	48 c1 e2 04          	shl    rdx,0x4
  4015a4:	44 8b b4 16 00 fd ff 	mov    r14d,DWORD PTR [rsi+rdx*1-0x300]
  4015ab:	ff 
  4015ac:	eb 5b                	jmp    0x401609
  4015ae:	83 7c 24 14 00       	cmp    DWORD PTR [rsp+0x14],0x0
  4015b3:	74 10                	je     0x4015c5
  4015b5:	e8 be 0c 00 00       	call   0x402278
  4015ba:	c7 00 16 00 00 00    	mov    DWORD PTR [rax],0x16
  4015c0:	e9 fd 06 00 00       	jmp    0x401cc2
  4015c5:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  4015ca:	45 89 e6             	mov    r14d,r12d
  4015cd:	74 32                	je     0x401601
  4015cf:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4015d4:	8b 0f                	mov    ecx,DWORD PTR [rdi]
  4015d6:	83 f9 2f             	cmp    ecx,0x2f
  4015d9:	77 0d                	ja     0x4015e8
  4015db:	89 ca                	mov    edx,ecx
  4015dd:	83 c1 08             	add    ecx,0x8
  4015e0:	48 03 57 10          	add    rdx,QWORD PTR [rdi+0x10]
  4015e4:	89 0f                	mov    DWORD PTR [rdi],ecx
  4015e6:	eb 16                	jmp    0x4015fe
  4015e8:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  4015ed:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  4015f2:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  4015f6:	48 8d 4a 08          	lea    rcx,[rdx+0x8]
  4015fa:	48 89 4e 08          	mov    QWORD PTR [rsi+0x8],rcx
  4015fe:	44 8b 32             	mov    r14d,DWORD PTR [rdx]
  401601:	48 ff c0             	inc    rax
  401604:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401609:	45 85 f6             	test   r14d,r14d
  40160c:	79 20                	jns    0x40162e
  40160e:	81 cd 00 20 00 00    	or     ebp,0x2000
  401614:	41 f7 de             	neg    r14d
  401617:	eb 15                	jmp    0x40162e
  401619:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
  40161e:	e8 30 f2 ff ff       	call   0x400853
  401623:	85 c0                	test   eax,eax
  401625:	41 89 c6             	mov    r14d,eax
  401628:	0f 88 89 06 00 00    	js     0x401cb7
  40162e:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  401633:	80 38 2e             	cmp    BYTE PTR [rax],0x2e
  401636:	0f 85 c6 00 00 00    	jne    0x401702
  40163c:	80 78 01 2a          	cmp    BYTE PTR [rax+0x1],0x2a
  401640:	0f 85 9f 00 00 00    	jne    0x4016e5
  401646:	48 0f be 48 02       	movsx  rcx,BYTE PTR [rax+0x2]
  40164b:	48 89 ca             	mov    rdx,rcx
  40164e:	83 e9 30             	sub    ecx,0x30
  401651:	83 f9 09             	cmp    ecx,0x9
  401654:	77 32                	ja     0x401688
  401656:	80 78 03 24          	cmp    BYTE PTR [rax+0x3],0x24
  40165a:	75 2c                	jne    0x401688
  40165c:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
  401661:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401666:	48 83 c0 04          	add    rax,0x4
  40166a:	c7 84 91 40 ff ff ff 	mov    DWORD PTR [rcx+rdx*4-0xc0],0xa
  401671:	0a 00 00 00 
  401675:	48 0f be 50 fe       	movsx  rdx,BYTE PTR [rax-0x2]
  40167a:	48 c1 e2 04          	shl    rdx,0x4
  40167e:	4c 63 8c 17 00 fd ff 	movsxd r9,DWORD PTR [rdi+rdx*1-0x300]
  401685:	ff 
  401686:	eb 4b                	jmp    0x4016d3
  401688:	83 7c 24 14 00       	cmp    DWORD PTR [rsp+0x14],0x0
  40168d:	0f 85 22 ff ff ff    	jne    0x4015b5
  401693:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  401698:	4d 63 cc             	movsxd r9,r12d
  40169b:	74 32                	je     0x4016cf
  40169d:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4016a2:	8b 0f                	mov    ecx,DWORD PTR [rdi]
  4016a4:	83 f9 2f             	cmp    ecx,0x2f
  4016a7:	77 0d                	ja     0x4016b6
  4016a9:	89 ca                	mov    edx,ecx
  4016ab:	83 c1 08             	add    ecx,0x8
  4016ae:	48 03 57 10          	add    rdx,QWORD PTR [rdi+0x10]
  4016b2:	89 0f                	mov    DWORD PTR [rdi],ecx
  4016b4:	eb 16                	jmp    0x4016cc
  4016b6:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  4016bb:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  4016c0:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  4016c4:	48 8d 4a 08          	lea    rcx,[rdx+0x8]
  4016c8:	48 89 4e 08          	mov    QWORD PTR [rsi+0x8],rcx
  4016cc:	4c 63 0a             	movsxd r9,DWORD PTR [rdx]
  4016cf:	48 83 c0 02          	add    rax,0x2
  4016d3:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  4016d8:	44 89 c8             	mov    eax,r9d
  4016db:	f7 d0                	not    eax
  4016dd:	c1 e8 1f             	shr    eax,0x1f
  4016e0:	41 89 c2             	mov    r10d,eax
  4016e3:	eb 24                	jmp    0x401709
  4016e5:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
  4016ea:	48 ff c0             	inc    rax
  4016ed:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  4016f2:	e8 5c f1 ff ff       	call   0x400853
  4016f7:	41 ba 01 00 00 00    	mov    r10d,0x1
  4016fd:	4c 63 c8             	movsxd r9,eax
  401700:	eb 07                	jmp    0x401709
  401702:	45 89 e2             	mov    r10d,r12d
  401705:	49 83 c9 ff          	or     r9,0xffffffffffffffff
  401709:	31 c9                	xor    ecx,ecx
  40170b:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  401710:	0f be 10             	movsx  edx,BYTE PTR [rax]
  401713:	83 ea 41             	sub    edx,0x41
  401716:	83 fa 39             	cmp    edx,0x39
  401719:	0f 87 96 fe ff ff    	ja     0x4015b5
  40171f:	48 8d 50 01          	lea    rdx,[rax+0x1]
  401723:	48 8d 3d 76 19 00 00 	lea    rdi,[rip+0x1976]        # 0x4030a0
  40172a:	48 89 54 24 50       	mov    QWORD PTR [rsp+0x50],rdx
  40172f:	89 ca                	mov    edx,ecx
  401731:	0f be 00             	movsx  eax,BYTE PTR [rax]
  401734:	48 6b d2 3a          	imul   rdx,rdx,0x3a
  401738:	83 e8 41             	sub    eax,0x41
  40173b:	48 98                	cdqe   
  40173d:	48 01 fa             	add    rdx,rdi
  401740:	0f b6 34 02          	movzx  esi,BYTE PTR [rdx+rax*1]
  401744:	8d 46 ff             	lea    eax,[rsi-0x1]
  401747:	83 f8 07             	cmp    eax,0x7
  40174a:	77 04                	ja     0x401750
  40174c:	89 f1                	mov    ecx,esi
  40174e:	eb bb                	jmp    0x40170b
  401750:	85 f6                	test   esi,esi
  401752:	0f 84 5d fe ff ff    	je     0x4015b5
  401758:	83 fe 1b             	cmp    esi,0x1b
  40175b:	75 0a                	jne    0x401767
  40175d:	45 85 db             	test   r11d,r11d
  401760:	78 5d                	js     0x4017bf
  401762:	e9 4e fe ff ff       	jmp    0x4015b5
  401767:	45 85 db             	test   r11d,r11d
  40176a:	78 21                	js     0x40178d
  40176c:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401771:	4d 63 db             	movsxd r11,r11d
  401774:	42 89 34 98          	mov    DWORD PTR [rax+r11*4],esi
  401778:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  40177d:	49 c1 e3 04          	shl    r11,0x4
  401781:	42 0f 28 04 18       	movaps xmm0,XMMWORD PTR [rax+r11*1]
  401786:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  40178b:	eb 32                	jmp    0x4017bf
  40178d:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  401792:	75 08                	jne    0x40179c
  401794:	45 31 ff             	xor    r15d,r15d
  401797:	e9 cb 05 00 00       	jmp    0x401d67
  40179c:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  4017a1:	48 8d 7c 24 60       	lea    rdi,[rsp+0x60]
  4017a6:	89 4c 24 30          	mov    DWORD PTR [rsp+0x30],ecx
  4017aa:	44 89 4c 24 10       	mov    DWORD PTR [rsp+0x10],r9d
  4017af:	e8 11 ef ff ff       	call   0x4006c5
  4017b4:	4c 63 4c 24 10       	movsxd r9,DWORD PTR [rsp+0x10]
  4017b9:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
  4017bd:	eb 0b                	jmp    0x4017ca
  4017bf:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  4017c4:	0f 84 8a fc ff ff    	je     0x401454
  4017ca:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  4017cf:	85 c9                	test   ecx,ecx
  4017d1:	44 0f be 40 ff       	movsx  r8d,BYTE PTR [rax-0x1]
  4017d6:	45 89 c3             	mov    r11d,r8d
  4017d9:	74 12                	je     0x4017ed
  4017db:	44 88 c0             	mov    al,r8b
  4017de:	83 e0 0f             	and    eax,0xf
  4017e1:	3c 03                	cmp    al,0x3
  4017e3:	75 08                	jne    0x4017ed
  4017e5:	41 83 e3 df          	and    r11d,0xffffffdf
  4017e9:	45 0f be c3          	movsx  r8d,r11b
  4017ed:	0f ba e5 0d          	bt     ebp,0xd
  4017f1:	73 06                	jae    0x4017f9
  4017f3:	81 e5 ff ff fe ff    	and    ebp,0xfffeffff
  4017f9:	41 8d 40 bf          	lea    eax,[r8-0x41]
  4017fd:	83 f8 37             	cmp    eax,0x37
  401800:	0f 87 49 03 00 00    	ja     0x401b4f
  401806:	48 8d 15 7f 17 00 00 	lea    rdx,[rip+0x177f]        # 0x402f8c
  40180d:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
  401811:	48 01 d0             	add    rax,rdx
  401814:	ff e0                	jmp    rax
  401816:	83 f9 07             	cmp    ecx,0x7
  401819:	0f 87 35 fc ff ff    	ja     0x401454
  40181f:	48 8d 15 46 18 00 00 	lea    rdx,[rip+0x1846]        # 0x40306c
  401826:	41 89 ce             	mov    r14d,ecx
  401829:	4a 63 04 b2          	movsxd rax,DWORD PTR [rdx+r14*4]
  40182d:	48 01 d0             	add    rax,rdx
  401830:	ff e0                	jmp    rax
  401832:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401837:	44 89 38             	mov    DWORD PTR [rax],r15d
  40183a:	e9 15 fc ff ff       	jmp    0x401454
  40183f:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401844:	66 44 89 38          	mov    WORD PTR [rax],r15w
  401848:	e9 07 fc ff ff       	jmp    0x401454
  40184d:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401852:	44 88 38             	mov    BYTE PTR [rax],r15b
  401855:	e9 fa fb ff ff       	jmp    0x401454
  40185a:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  40185f:	49 63 c7             	movsxd rax,r15d
  401862:	48 89 02             	mov    QWORD PTR [rdx],rax
  401865:	e9 ea fb ff ff       	jmp    0x401454
  40186a:	41 83 f9 10          	cmp    r9d,0x10
  40186e:	b8 10 00 00 00       	mov    eax,0x10
  401873:	41 b8 78 00 00 00    	mov    r8d,0x78
  401879:	44 0f 42 c8          	cmovb  r9d,eax
  40187d:	83 cd 08             	or     ebp,0x8
  401880:	48 8b 54 24 60       	mov    rdx,QWORD PTR [rsp+0x60]
  401885:	44 89 c1             	mov    ecx,r8d
  401888:	4c 8d ac 24 a0 00 00 	lea    r13,[rsp+0xa0]
  40188f:	00 
  401890:	48 8d 35 f9 17 00 00 	lea    rsi,[rip+0x17f9]        # 0x403090
  401897:	83 e1 20             	and    ecx,0x20
  40189a:	48 89 d0             	mov    rax,rdx
  40189d:	48 85 c0             	test   rax,rax
  4018a0:	74 18                	je     0x4018ba
  4018a2:	48 89 c7             	mov    rdi,rax
  4018a5:	49 ff cd             	dec    r13
  4018a8:	48 c1 e8 04          	shr    rax,0x4
  4018ac:	83 e7 0f             	and    edi,0xf
  4018af:	8a 1c 3e             	mov    bl,BYTE PTR [rsi+rdi*1]
  4018b2:	09 cb                	or     ebx,ecx
  4018b4:	41 88 5d 00          	mov    BYTE PTR [r13+0x0],bl
  4018b8:	eb e3                	jmp    0x40189d
  4018ba:	48 85 d2             	test   rdx,rdx
  4018bd:	44 89 e3             	mov    ebx,r12d
  4018c0:	4c 8d 1d b2 16 00 00 	lea    r11,[rip+0x16b2]        # 0x402f79
  4018c7:	0f 84 e7 00 00 00    	je     0x4019b4
  4018cd:	40 f6 c5 08          	test   bpl,0x8
  4018d1:	0f 84 dd 00 00 00    	je     0x4019b4
  4018d7:	41 c1 f8 04          	sar    r8d,0x4
  4018db:	bb 02 00 00 00       	mov    ebx,0x2
  4018e0:	4d 63 c0             	movsxd r8,r8d
  4018e3:	4d 01 c3             	add    r11,r8
  4018e6:	e9 c9 00 00 00       	jmp    0x4019b4
  4018eb:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  4018f0:	4c 8d ac 24 a0 00 00 	lea    r13,[rsp+0xa0]
  4018f7:	00 
  4018f8:	48 85 c0             	test   rax,rax
  4018fb:	74 15                	je     0x401912
  4018fd:	88 c2                	mov    dl,al
  4018ff:	49 ff cd             	dec    r13
  401902:	48 c1 e8 03          	shr    rax,0x3
  401906:	83 e2 07             	and    edx,0x7
  401909:	83 c2 30             	add    edx,0x30
  40190c:	41 88 55 00          	mov    BYTE PTR [r13+0x0],dl
  401910:	eb e6                	jmp    0x4018f8
  401912:	40 f6 c5 08          	test   bpl,0x8
  401916:	44 89 e3             	mov    ebx,r12d
  401919:	4c 8d 1d 59 16 00 00 	lea    r11,[rip+0x1659]        # 0x402f79
  401920:	0f 84 8e 00 00 00    	je     0x4019b4
  401926:	48 8d 94 24 a0 00 00 	lea    rdx,[rsp+0xa0]
  40192d:	00 
  40192e:	49 63 c1             	movsxd rax,r9d
  401931:	4c 29 ea             	sub    rdx,r13
  401934:	48 39 c2             	cmp    rdx,rax
  401937:	7c 7b                	jl     0x4019b4
  401939:	44 8d 4a 01          	lea    r9d,[rdx+0x1]
  40193d:	eb 75                	jmp    0x4019b4
  40193f:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401944:	48 85 c0             	test   rax,rax
  401947:	79 0f                	jns    0x401958
  401949:	48 f7 d8             	neg    rax
  40194c:	bb 01 00 00 00       	mov    ebx,0x1
  401951:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  401956:	eb 2c                	jmp    0x401984
  401958:	0f ba e5 0b          	bt     ebp,0xb
  40195c:	bb 01 00 00 00       	mov    ebx,0x1
  401961:	4c 8d 1d 12 16 00 00 	lea    r11,[rip+0x1612]        # 0x402f7a
  401968:	72 21                	jb     0x40198b
  40196a:	89 e8                	mov    eax,ebp
  40196c:	83 e0 01             	and    eax,0x1
  40196f:	49 8d 43 01          	lea    rax,[r11+0x1]
  401973:	4d 8d 5b ff          	lea    r11,[r11-0x1]
  401977:	41 0f 44 dc          	cmove  ebx,r12d
  40197b:	4c 0f 45 d8          	cmovne r11,rax
  40197f:	eb 0a                	jmp    0x40198b
  401981:	44 89 e3             	mov    ebx,r12d
  401984:	4c 8d 1d ee 15 00 00 	lea    r11,[rip+0x15ee]        # 0x402f79
  40198b:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
  401990:	48 8d b4 24 a0 00 00 	lea    rsi,[rsp+0xa0]
  401997:	00 
  401998:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
  40199d:	44 89 4c 24 10       	mov    DWORD PTR [rsp+0x10],r9d
  4019a2:	e8 8c ee ff ff       	call   0x400833
  4019a7:	44 8b 4c 24 10       	mov    r9d,DWORD PTR [rsp+0x10]
  4019ac:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  4019b1:	49 89 c5             	mov    r13,rax
  4019b4:	45 85 c9             	test   r9d,r9d
  4019b7:	79 0a                	jns    0x4019c3
  4019b9:	41 f6 c2 01          	test   r10b,0x1
  4019bd:	0f 85 f4 02 00 00    	jne    0x401cb7
  4019c3:	45 85 d2             	test   r10d,r10d
  4019c6:	74 06                	je     0x4019ce
  4019c8:	81 e5 ff ff fe ff    	and    ebp,0xfffeffff
  4019ce:	48 83 7c 24 60 00    	cmp    QWORD PTR [rsp+0x60],0x0
  4019d4:	0f 94 c2             	sete   dl
  4019d7:	45 85 c9             	test   r9d,r9d
  4019da:	75 08                	jne    0x4019e4
  4019dc:	84 d2                	test   dl,dl
  4019de:	0f 85 7c 01 00 00    	jne    0x401b60
  4019e4:	48 8d 84 24 a0 00 00 	lea    rax,[rsp+0xa0]
  4019eb:	00 
  4019ec:	0f b6 d2             	movzx  edx,dl
  4019ef:	4d 63 c9             	movsxd r9,r9d
  4019f2:	4c 29 e8             	sub    rax,r13
  4019f5:	48 01 d0             	add    rax,rdx
  4019f8:	4c 39 c8             	cmp    rax,r9
  4019fb:	4c 0f 4d c8          	cmovge r9,rax
  4019ff:	e9 52 01 00 00       	jmp    0x401b56
  401a04:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401a09:	81 e5 ff ff fe ff    	and    ebp,0xfffeffff
  401a0f:	4c 8d 1d 63 15 00 00 	lea    r11,[rip+0x1563]        # 0x402f79
  401a16:	41 b9 01 00 00 00    	mov    r9d,0x1
  401a1c:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  401a23:	00 
  401a24:	4c 8d ac 24 9f 00 00 	lea    r13,[rsp+0x9f]
  401a2b:	00 
  401a2c:	88 84 24 9f 00 00 00 	mov    BYTE PTR [rsp+0x9f],al
  401a33:	e9 36 01 00 00       	jmp    0x401b6e
  401a38:	44 89 4c 24 10       	mov    DWORD PTR [rsp+0x10],r9d
  401a3d:	e8 36 08 00 00       	call   0x402278
  401a42:	8b 38                	mov    edi,DWORD PTR [rax]
  401a44:	e8 79 08 00 00       	call   0x4022c2
  401a49:	4c 63 4c 24 10       	movsxd r9,DWORD PTR [rsp+0x10]
  401a4e:	49 89 c5             	mov    r13,rax
  401a51:	eb 11                	jmp    0x401a64
  401a53:	4c 8b 6c 24 60       	mov    r13,QWORD PTR [rsp+0x60]
  401a58:	4d 85 ed             	test   r13,r13
  401a5b:	75 07                	jne    0x401a64
  401a5d:	4c 8d 2d 1f 15 00 00 	lea    r13,[rip+0x151f]        # 0x402f83
  401a64:	45 85 c9             	test   r9d,r9d
  401a67:	be ff ff ff 7f       	mov    esi,0x7fffffff
  401a6c:	4c 89 ef             	mov    rdi,r13
  401a6f:	49 0f 49 f1          	cmovns rsi,r9
  401a73:	44 89 4c 24 10       	mov    DWORD PTR [rsp+0x10],r9d
  401a78:	e8 93 04 00 00       	call   0x401f10
  401a7d:	44 8b 4c 24 10       	mov    r9d,DWORD PTR [rsp+0x10]
  401a82:	4d 8d 64 05 00       	lea    r12,[r13+rax*1+0x0]
  401a87:	45 85 c9             	test   r9d,r9d
  401a8a:	79 0b                	jns    0x401a97
  401a8c:	41 80 3c 24 00       	cmp    BYTE PTR [r12],0x0
  401a91:	0f 85 20 02 00 00    	jne    0x401cb7
  401a97:	41 89 c1             	mov    r9d,eax
  401a9a:	81 e5 ff ff fe ff    	and    ebp,0xfffeffff
  401aa0:	4c 8d 1d d2 14 00 00 	lea    r11,[rip+0x14d2]        # 0x402f79
  401aa7:	e9 c2 00 00 00       	jmp    0x401b6e
  401aac:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  401ab1:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
  401ab8:	00 
  401ab9:	41 83 c9 ff          	or     r9d,0xffffffff
  401abd:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  401ac1:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
  401ac6:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  401acb:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  401ad0:	45 31 e4             	xor    r12d,r12d
  401ad3:	4d 63 e9             	movsxd r13,r9d
  401ad6:	4d 39 e5             	cmp    r13,r12
  401ad9:	0f 86 ec 01 00 00    	jbe    0x401ccb
  401adf:	8b 33                	mov    esi,DWORD PTR [rbx]
  401ae1:	85 f6                	test   esi,esi
  401ae3:	0f 84 e2 01 00 00    	je     0x401ccb
  401ae9:	48 8d 7c 24 4c       	lea    rdi,[rsp+0x4c]
  401aee:	48 83 c3 04          	add    rbx,0x4
  401af2:	e8 ee 08 00 00       	call   0x4023e5
  401af7:	85 c0                	test   eax,eax
  401af9:	0f 88 c3 01 00 00    	js     0x401cc2
  401aff:	4c 89 ea             	mov    rdx,r13
  401b02:	48 98                	cdqe   
  401b04:	4c 29 e2             	sub    rdx,r12
  401b07:	48 39 d0             	cmp    rax,rdx
  401b0a:	0f 87 bb 01 00 00    	ja     0x401ccb
  401b10:	49 01 c4             	add    r12,rax
  401b13:	eb c1                	jmp    0x401ad6
  401b15:	45 85 c9             	test   r9d,r9d
  401b18:	79 0a                	jns    0x401b24
  401b1a:	41 80 e2 01          	and    r10b,0x1
  401b1e:	0f 85 93 01 00 00    	jne    0x401cb7
  401b24:	ff 74 24 68          	push   QWORD PTR [rsp+0x68]
  401b28:	ff 74 24 68          	push   QWORD PTR [rsp+0x68]
  401b2c:	44 89 ca             	mov    edx,r9d
  401b2f:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  401b34:	89 e9                	mov    ecx,ebp
  401b36:	44 89 f6             	mov    esi,r14d
  401b39:	e8 fd ed ff ff       	call   0x40093b
  401b3e:	89 c3                	mov    ebx,eax
  401b40:	85 db                	test   ebx,ebx
  401b42:	58                   	pop    rax
  401b43:	5a                   	pop    rdx
  401b44:	0f 89 0a f9 ff ff    	jns    0x401454
  401b4a:	e9 68 01 00 00       	jmp    0x401cb7
  401b4f:	4c 8d 1d 23 14 00 00 	lea    r11,[rip+0x1423]        # 0x402f79
  401b56:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  401b5d:	00 
  401b5e:	eb 0e                	jmp    0x401b6e
  401b60:	45 89 e1             	mov    r9d,r12d
  401b63:	4c 8d a4 24 a0 00 00 	lea    r12,[rsp+0xa0]
  401b6a:	00 
  401b6b:	4d 89 e5             	mov    r13,r12
  401b6e:	49 63 c1             	movsxd rax,r9d
  401b71:	4d 29 ec             	sub    r12,r13
  401b74:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
  401b79:	4c 39 e0             	cmp    rax,r12
  401b7c:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  401b81:	45 0f 4c cc          	cmovl  r9d,r12d
  401b85:	29 d8                	sub    eax,ebx
  401b87:	44 39 c8             	cmp    eax,r9d
  401b8a:	0f 8c 27 01 00 00    	jl     0x401cb7
  401b90:	41 8d 04 19          	lea    eax,[r9+rbx*1]
  401b94:	44 89 4c 24 30       	mov    DWORD PTR [rsp+0x30],r9d
  401b99:	44 39 f0             	cmp    eax,r14d
  401b9c:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
  401ba0:	44 0f 4d f0          	cmovge r14d,eax
  401ba4:	44 39 74 24 28       	cmp    DWORD PTR [rsp+0x28],r14d
  401ba9:	0f 8c 08 01 00 00    	jl     0x401cb7
  401baf:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401bb3:	89 c1                	mov    ecx,eax
  401bb5:	41 89 e8             	mov    r8d,ebp
  401bb8:	44 89 f2             	mov    edx,r14d
  401bbb:	be 20 00 00 00       	mov    esi,0x20
  401bc0:	e8 e0 ec ff ff       	call   0x4008a5
  401bc5:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
  401bca:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401bce:	48 63 d3             	movsxd rdx,ebx
  401bd1:	44 89 f3             	mov    ebx,r14d
  401bd4:	4c 89 de             	mov    rsi,r11
  401bd7:	e8 b2 ec ff ff       	call   0x40088e
  401bdc:	8b 4c 24 10          	mov    ecx,DWORD PTR [rsp+0x10]
  401be0:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401be4:	41 89 e8             	mov    r8d,ebp
  401be7:	41 81 f0 00 00 01 00 	xor    r8d,0x10000
  401bee:	44 89 f2             	mov    edx,r14d
  401bf1:	be 30 00 00 00       	mov    esi,0x30
  401bf6:	e8 aa ec ff ff       	call   0x4008a5
  401bfb:	44 8b 4c 24 30       	mov    r9d,DWORD PTR [rsp+0x30]
  401c00:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401c04:	45 31 c0             	xor    r8d,r8d
  401c07:	44 89 e1             	mov    ecx,r12d
  401c0a:	be 30 00 00 00       	mov    esi,0x30
  401c0f:	44 89 ca             	mov    edx,r9d
  401c12:	e8 8e ec ff ff       	call   0x4008a5
  401c17:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401c1b:	4c 89 e2             	mov    rdx,r12
  401c1e:	4c 89 ee             	mov    rsi,r13
  401c21:	e8 68 ec ff ff       	call   0x40088e
  401c26:	8b 4c 24 10          	mov    ecx,DWORD PTR [rsp+0x10]
  401c2a:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401c2e:	41 89 e8             	mov    r8d,ebp
  401c31:	41 81 f0 00 20 00 00 	xor    r8d,0x2000
  401c38:	44 89 f2             	mov    edx,r14d
  401c3b:	be 20 00 00 00       	mov    esi,0x20
  401c40:	e8 60 ec ff ff       	call   0x4008a5
  401c45:	e9 0a f8 ff ff       	jmp    0x401454
  401c4a:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  401c4f:	0f 85 12 01 00 00    	jne    0x401d67
  401c55:	83 7c 24 14 00       	cmp    DWORD PTR [rsp+0x14],0x0
  401c5a:	41 b8 01 00 00 00    	mov    r8d,0x1
  401c60:	0f 84 2e fb ff ff    	je     0x401794
  401c66:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401c6b:	42 8b 34 80          	mov    esi,DWORD PTR [rax+r8*4]
  401c6f:	85 f6                	test   esi,esi
  401c71:	74 33                	je     0x401ca6
  401c73:	4c 89 c7             	mov    rdi,r8
  401c76:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  401c7b:	48 c1 e7 04          	shl    rdi,0x4
  401c7f:	48 03 7c 24 20       	add    rdi,QWORD PTR [rsp+0x20]
  401c84:	e8 3c ea ff ff       	call   0x4006c5
  401c89:	49 ff c0             	inc    r8
  401c8c:	49 83 f8 0a          	cmp    r8,0xa
  401c90:	75 d4                	jne    0x401c66
  401c92:	41 bf 01 00 00 00    	mov    r15d,0x1
  401c98:	e9 ca 00 00 00       	jmp    0x401d67
  401c9d:	49 ff c0             	inc    r8
  401ca0:	49 83 f8 0a          	cmp    r8,0xa
  401ca4:	74 ec                	je     0x401c92
  401ca6:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401cab:	42 83 3c 80 00       	cmp    DWORD PTR [rax+r8*4],0x0
  401cb0:	74 eb                	je     0x401c9d
  401cb2:	e9 fe f8 ff ff       	jmp    0x4015b5
  401cb7:	e8 bc 05 00 00       	call   0x402278
  401cbc:	c7 00 4b 00 00 00    	mov    DWORD PTR [rax],0x4b
  401cc2:	41 83 cf ff          	or     r15d,0xffffffff
  401cc6:	e9 9c 00 00 00       	jmp    0x401d67
  401ccb:	49 81 fc ff ff ff 7f 	cmp    r12,0x7fffffff
  401cd2:	77 e3                	ja     0x401cb7
  401cd4:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401cd8:	41 89 e8             	mov    r8d,ebp
  401cdb:	44 89 e1             	mov    ecx,r12d
  401cde:	44 89 f2             	mov    edx,r14d
  401ce1:	be 20 00 00 00       	mov    esi,0x20
  401ce6:	44 89 64 24 10       	mov    DWORD PTR [rsp+0x10],r12d
  401ceb:	45 31 ed             	xor    r13d,r13d
  401cee:	e8 b2 eb ff ff       	call   0x4008a5
  401cf3:	48 8d 44 24 4c       	lea    rax,[rsp+0x4c]
  401cf8:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  401cfd:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  401d02:	4d 39 ec             	cmp    r12,r13
  401d05:	77 31                	ja     0x401d38
  401d07:	8b 4c 24 10          	mov    ecx,DWORD PTR [rsp+0x10]
  401d0b:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401d0f:	41 89 e8             	mov    r8d,ebp
  401d12:	41 81 f0 00 20 00 00 	xor    r8d,0x2000
  401d19:	44 89 f2             	mov    edx,r14d
  401d1c:	be 20 00 00 00       	mov    esi,0x20
  401d21:	e8 7f eb ff ff       	call   0x4008a5
  401d26:	44 3b 74 24 10       	cmp    r14d,DWORD PTR [rsp+0x10]
  401d2b:	8b 5c 24 10          	mov    ebx,DWORD PTR [rsp+0x10]
  401d2f:	41 0f 4d de          	cmovge ebx,r14d
  401d33:	e9 1c f7 ff ff       	jmp    0x401454
  401d38:	8b 33                	mov    esi,DWORD PTR [rbx]
  401d3a:	85 f6                	test   esi,esi
  401d3c:	74 c9                	je     0x401d07
  401d3e:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  401d43:	48 83 c3 04          	add    rbx,0x4
  401d47:	e8 99 06 00 00       	call   0x4023e5
  401d4c:	48 63 d0             	movsxd rdx,eax
  401d4f:	49 01 d5             	add    r13,rdx
  401d52:	4d 39 e5             	cmp    r13,r12
  401d55:	77 b0                	ja     0x401d07
  401d57:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
  401d5c:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
  401d60:	e8 29 eb ff ff       	call   0x40088e
  401d65:	eb 9b                	jmp    0x401d02
  401d67:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
  401d6e:	44 89 f8             	mov    eax,r15d
  401d71:	5b                   	pop    rbx
  401d72:	5d                   	pop    rbp
  401d73:	41 5c                	pop    r12
  401d75:	41 5d                	pop    r13
  401d77:	41 5e                	pop    r14
  401d79:	41 5f                	pop    r15
  401d7b:	c3                   	ret    
  401d7c:	41 57                	push   r15
  401d7e:	41 56                	push   r14
  401d80:	31 c0                	xor    eax,eax
  401d82:	41 55                	push   r13
  401d84:	41 54                	push   r12
  401d86:	49 89 fd             	mov    r13,rdi
  401d89:	55                   	push   rbp
  401d8a:	53                   	push   rbx
  401d8b:	b9 0a 00 00 00       	mov    ecx,0xa
  401d90:	41 83 cc ff          	or     r12d,0xffffffff
  401d94:	48 81 ec 58 01 00 00 	sub    rsp,0x158
  401d9b:	48 8d 7c 24 38       	lea    rdi,[rsp+0x38]
  401da0:	4c 8d 74 24 38       	lea    r14,[rsp+0x38]
  401da5:	4c 8d bc 24 b0 00 00 	lea    r15,[rsp+0xb0]
  401dac:	00 
  401dad:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  401db2:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
  401db4:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  401db9:	31 ff                	xor    edi,edi
  401dbb:	4d 89 f0             	mov    r8,r14
  401dbe:	4c 89 f9             	mov    rcx,r15
  401dc1:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401dc6:	0f 10 02             	movups xmm0,XMMWORD PTR [rdx]
  401dc9:	0f 11 44 24 20       	movups XMMWORD PTR [rsp+0x20],xmm0
  401dce:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  401dd2:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
  401dd7:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  401ddc:	e8 3d f6 ff ff       	call   0x40141e
  401de1:	85 c0                	test   eax,eax
  401de3:	0f 88 04 01 00 00    	js     0x401eed
  401de9:	41 8b 85 8c 00 00 00 	mov    eax,DWORD PTR [r13+0x8c]
  401df0:	31 ed                	xor    ebp,ebp
  401df2:	85 c0                	test   eax,eax
  401df4:	78 0a                	js     0x401e00
  401df6:	4c 89 ef             	mov    rdi,r13
  401df9:	e8 fc 05 00 00       	call   0x4023fa
  401dfe:	89 c5                	mov    ebp,eax
  401e00:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
  401e04:	89 c1                	mov    ecx,eax
  401e06:	83 e1 20             	and    ecx,0x20
  401e09:	41 83 bd 88 00 00 00 	cmp    DWORD PTR [r13+0x88],0x0
  401e10:	00 
  401e11:	89 4c 24 1c          	mov    DWORD PTR [rsp+0x1c],ecx
  401e15:	7f 07                	jg     0x401e1e
  401e17:	83 e0 df             	and    eax,0xffffffdf
  401e1a:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
  401e1e:	31 db                	xor    ebx,ebx
  401e20:	49 83 7d 60 00       	cmp    QWORD PTR [r13+0x60],0x0
  401e25:	75 2d                	jne    0x401e54
  401e27:	48 8d 44 24 60       	lea    rax,[rsp+0x60]
  401e2c:	49 8b 5d 58          	mov    rbx,QWORD PTR [r13+0x58]
  401e30:	49 c7 45 60 50 00 00 	mov    QWORD PTR [r13+0x60],0x50
  401e37:	00 
  401e38:	49 c7 45 20 00 00 00 	mov    QWORD PTR [r13+0x20],0x0
  401e3f:	00 
  401e40:	49 c7 45 38 00 00 00 	mov    QWORD PTR [r13+0x38],0x0
  401e47:	00 
  401e48:	49 89 45 58          	mov    QWORD PTR [r13+0x58],rax
  401e4c:	49 c7 45 28 00 00 00 	mov    QWORD PTR [r13+0x28],0x0
  401e53:	00 
  401e54:	49 83 7d 20 00       	cmp    QWORD PTR [r13+0x20],0x0
  401e59:	74 1d                	je     0x401e78
  401e5b:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
  401e60:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
  401e65:	4d 89 f0             	mov    r8,r14
  401e68:	4c 89 f9             	mov    rcx,r15
  401e6b:	4c 89 ef             	mov    rdi,r13
  401e6e:	e8 ab f5 ff ff       	call   0x40141e
  401e73:	41 89 c4             	mov    r12d,eax
  401e76:	eb 10                	jmp    0x401e88
  401e78:	4c 89 ef             	mov    rdi,r13
  401e7b:	e8 ff 07 00 00       	call   0x40267f
  401e80:	85 c0                	test   eax,eax
  401e82:	74 d7                	je     0x401e5b
  401e84:	41 83 cc ff          	or     r12d,0xffffffff
  401e88:	48 85 db             	test   rbx,rbx
  401e8b:	74 3d                	je     0x401eca
  401e8d:	31 d2                	xor    edx,edx
  401e8f:	31 f6                	xor    esi,esi
  401e91:	4c 89 ef             	mov    rdi,r13
  401e94:	41 ff 55 48          	call   QWORD PTR [r13+0x48]
  401e98:	49 83 7d 28 00       	cmp    QWORD PTR [r13+0x28],0x0
  401e9d:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401ea2:	49 89 5d 58          	mov    QWORD PTR [r13+0x58],rbx
  401ea6:	49 c7 45 60 00 00 00 	mov    QWORD PTR [r13+0x60],0x0
  401ead:	00 
  401eae:	49 c7 45 20 00 00 00 	mov    QWORD PTR [r13+0x20],0x0
  401eb5:	00 
  401eb6:	49 c7 45 38 00 00 00 	mov    QWORD PTR [r13+0x38],0x0
  401ebd:	00 
  401ebe:	49 c7 45 28 00 00 00 	mov    QWORD PTR [r13+0x28],0x0
  401ec5:	00 
  401ec6:	44 0f 44 e0          	cmove  r12d,eax
  401eca:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
  401ece:	ba ff ff ff ff       	mov    edx,0xffffffff
  401ed3:	a8 20                	test   al,0x20
  401ed5:	44 0f 45 e2          	cmovne r12d,edx
  401ed9:	0b 44 24 1c          	or     eax,DWORD PTR [rsp+0x1c]
  401edd:	85 ed                	test   ebp,ebp
  401edf:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
  401ee3:	74 08                	je     0x401eed
  401ee5:	4c 89 ef             	mov    rdi,r13
  401ee8:	e8 b7 05 00 00       	call   0x4024a4
  401eed:	48 81 c4 58 01 00 00 	add    rsp,0x158
  401ef4:	44 89 e0             	mov    eax,r12d
  401ef7:	5b                   	pop    rbx
  401ef8:	5d                   	pop    rbp
  401ef9:	41 5c                	pop    r12
  401efb:	41 5d                	pop    r13
  401efd:	41 5e                	pop    r14
  401eff:	41 5f                	pop    r15
  401f01:	c3                   	ret    
  401f02:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401f09:	00 00 00 
  401f0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401f10:	55                   	push   rbp
  401f11:	53                   	push   rbx
  401f12:	48 89 f2             	mov    rdx,rsi
  401f15:	48 89 f3             	mov    rbx,rsi
  401f18:	31 f6                	xor    esi,esi
  401f1a:	48 89 fd             	mov    rbp,rdi
  401f1d:	48 83 ec 08          	sub    rsp,0x8
  401f21:	e8 4a 09 00 00       	call   0x402870
  401f26:	48 89 c2             	mov    rdx,rax
  401f29:	48 29 ea             	sub    rdx,rbp
  401f2c:	48 85 c0             	test   rax,rax
  401f2f:	48 89 d8             	mov    rax,rbx
  401f32:	48 0f 45 c2          	cmovne rax,rdx
  401f36:	48 83 c4 08          	add    rsp,0x8
  401f3a:	5b                   	pop    rbx
  401f3b:	5d                   	pop    rbp
  401f3c:	c3                   	ret    
  401f3d:	48 0f b6 c6          	movzx  rax,sil
  401f41:	49 b8 01 01 01 01 01 	movabs r8,0x101010101010101
  401f48:	01 01 01 
  401f4b:	49 0f af c0          	imul   rax,r8
  401f4f:	48 83 fa 7e          	cmp    rdx,0x7e
  401f53:	77 78                	ja     0x401fcd
  401f55:	85 d2                	test   edx,edx
  401f57:	74 70                	je     0x401fc9
  401f59:	40 88 37             	mov    BYTE PTR [rdi],sil
  401f5c:	40 88 74 17 ff       	mov    BYTE PTR [rdi+rdx*1-0x1],sil
  401f61:	83 fa 02             	cmp    edx,0x2
  401f64:	76 63                	jbe    0x401fc9
  401f66:	66 89 47 01          	mov    WORD PTR [rdi+0x1],ax
  401f6a:	66 89 44 17 fd       	mov    WORD PTR [rdi+rdx*1-0x3],ax
  401f6f:	83 fa 06             	cmp    edx,0x6
  401f72:	76 55                	jbe    0x401fc9
  401f74:	89 47 03             	mov    DWORD PTR [rdi+0x3],eax
  401f77:	89 44 17 f9          	mov    DWORD PTR [rdi+rdx*1-0x7],eax
  401f7b:	83 fa 0e             	cmp    edx,0xe
  401f7e:	76 49                	jbe    0x401fc9
  401f80:	48 89 47 07          	mov    QWORD PTR [rdi+0x7],rax
  401f84:	48 89 44 17 f1       	mov    QWORD PTR [rdi+rdx*1-0xf],rax
  401f89:	83 fa 1e             	cmp    edx,0x1e
  401f8c:	76 3b                	jbe    0x401fc9
  401f8e:	48 89 47 0f          	mov    QWORD PTR [rdi+0xf],rax
  401f92:	48 89 47 17          	mov    QWORD PTR [rdi+0x17],rax
  401f96:	48 89 44 17 e1       	mov    QWORD PTR [rdi+rdx*1-0x1f],rax
  401f9b:	48 89 44 17 e9       	mov    QWORD PTR [rdi+rdx*1-0x17],rax
  401fa0:	83 fa 3e             	cmp    edx,0x3e
  401fa3:	76 24                	jbe    0x401fc9
  401fa5:	48 89 47 1f          	mov    QWORD PTR [rdi+0x1f],rax
  401fa9:	48 89 47 27          	mov    QWORD PTR [rdi+0x27],rax
  401fad:	48 89 47 2f          	mov    QWORD PTR [rdi+0x2f],rax
  401fb1:	48 89 47 37          	mov    QWORD PTR [rdi+0x37],rax
  401fb5:	48 89 44 17 c1       	mov    QWORD PTR [rdi+rdx*1-0x3f],rax
  401fba:	48 89 44 17 c9       	mov    QWORD PTR [rdi+rdx*1-0x37],rax
  401fbf:	48 89 44 17 d1       	mov    QWORD PTR [rdi+rdx*1-0x2f],rax
  401fc4:	48 89 44 17 d9       	mov    QWORD PTR [rdi+rdx*1-0x27],rax
  401fc9:	48 89 f8             	mov    rax,rdi
  401fcc:	c3                   	ret    
  401fcd:	f7 c7 0f 00 00 00    	test   edi,0xf
  401fd3:	49 89 f8             	mov    r8,rdi
  401fd6:	48 89 44 17 f8       	mov    QWORD PTR [rdi+rdx*1-0x8],rax
  401fdb:	48 89 d1             	mov    rcx,rdx
  401fde:	75 0b                	jne    0x401feb
  401fe0:	48 c1 e9 03          	shr    rcx,0x3
  401fe4:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401fe7:	4c 89 c0             	mov    rax,r8
  401fea:	c3                   	ret    
  401feb:	31 d2                	xor    edx,edx
  401fed:	29 fa                	sub    edx,edi
  401fef:	83 e2 0f             	and    edx,0xf
  401ff2:	48 89 07             	mov    QWORD PTR [rdi],rax
  401ff5:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  401ff9:	48 29 d1             	sub    rcx,rdx
  401ffc:	48 01 d7             	add    rdi,rdx
  401fff:	eb df                	jmp    0x401fe0
  402001:	53                   	push   rbx
  402002:	48 89 3f             	mov    QWORD PTR [rdi],rdi
  402005:	48 89 fb             	mov    rbx,rdi
  402008:	e8 58 0a 00 00       	call   0x402a65
  40200d:	83 ca ff             	or     edx,0xffffffff
  402010:	85 c0                	test   eax,eax
  402012:	78 55                	js     0x402069
  402014:	75 0a                	jne    0x402020
  402016:	c7 05 80 2c 20 00 01 	mov    DWORD PTR [rip+0x202c80],0x1        # 0x604ca0
  40201d:	00 00 00 
  402020:	c7 43 40 01 00 00 00 	mov    DWORD PTR [rbx+0x40],0x1
  402027:	b8 da 00 00 00       	mov    eax,0xda
  40202c:	48 8d 3d dd 2c 20 00 	lea    rdi,[rip+0x202cdd]        # 0x604d10
  402033:	0f 05                	syscall 
  402035:	89 43 38             	mov    DWORD PTR [rbx+0x38],eax
  402038:	48 8d 05 a1 2c 20 00 	lea    rax,[rip+0x202ca1]        # 0x604ce0
  40203f:	48 89 5b 10          	mov    QWORD PTR [rbx+0x10],rbx
  402043:	48 89 5b 18          	mov    QWORD PTR [rbx+0x18],rbx
  402047:	31 d2                	xor    edx,edx
  402049:	48 89 83 b0 00 00 00 	mov    QWORD PTR [rbx+0xb0],rax
  402050:	48 8d 83 90 00 00 00 	lea    rax,[rbx+0x90]
  402057:	48 89 83 90 00 00 00 	mov    QWORD PTR [rbx+0x90],rax
  40205e:	48 8b 05 fb 2b 20 00 	mov    rax,QWORD PTR [rip+0x202bfb]        # 0x604c60
  402065:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  402069:	89 d0                	mov    eax,edx
  40206b:	5b                   	pop    rbx
  40206c:	c3                   	ret    
  40206d:	41 55                	push   r13
  40206f:	41 54                	push   r12
  402071:	4c 8d 6f 08          	lea    r13,[rdi+0x8]
  402075:	55                   	push   rbp
  402076:	53                   	push   rbx
  402077:	49 89 fc             	mov    r12,rdi
  40207a:	48 83 ec 08          	sub    rsp,0x8
  40207e:	48 8b 05 3b 2c 20 00 	mov    rax,QWORD PTR [rip+0x202c3b]        # 0x604cc0
  402085:	48 8b 1d 3c 2c 20 00 	mov    rbx,QWORD PTR [rip+0x202c3c]        # 0x604cc8
  40208c:	48 8b 2d 25 2c 20 00 	mov    rbp,QWORD PTR [rip+0x202c25]        # 0x604cb8
  402093:	48 8d 84 07 20 ff ff 	lea    rax,[rdi+rax*1-0xe0]
  40209a:	ff 
  40209b:	48 f7 db             	neg    rbx
  40209e:	48 21 c3             	and    rbx,rax
  4020a1:	48 85 ed             	test   rbp,rbp
  4020a4:	74 29                	je     0x4020cf
  4020a6:	48 89 d8             	mov    rax,rbx
  4020a9:	48 2b 45 28          	sub    rax,QWORD PTR [rbp+0x28]
  4020ad:	48 89 df             	mov    rdi,rbx
  4020b0:	48 8b 75 08          	mov    rsi,QWORD PTR [rbp+0x8]
  4020b4:	49 83 c5 08          	add    r13,0x8
  4020b8:	49 89 45 f8          	mov    QWORD PTR [r13-0x8],rax
  4020bc:	48 2b 7d 28          	sub    rdi,QWORD PTR [rbp+0x28]
  4020c0:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  4020c4:	e8 6a 09 00 00       	call   0x402a33
  4020c9:	48 8b 6d 00          	mov    rbp,QWORD PTR [rbp+0x0]
  4020cd:	eb d2                	jmp    0x4020a1
  4020cf:	48 8b 05 fa 2b 20 00 	mov    rax,QWORD PTR [rip+0x202bfa]        # 0x604cd0
  4020d6:	49 89 04 24          	mov    QWORD PTR [r12],rax
  4020da:	4c 89 a3 d8 00 00 00 	mov    QWORD PTR [rbx+0xd8],r12
  4020e1:	48 89 d8             	mov    rax,rbx
  4020e4:	4c 89 63 08          	mov    QWORD PTR [rbx+0x8],r12
  4020e8:	5a                   	pop    rdx
  4020e9:	5b                   	pop    rbx
  4020ea:	5d                   	pop    rbp
  4020eb:	41 5c                	pop    r12
  4020ed:	41 5d                	pop    r13
  4020ef:	c3                   	ret    
  4020f0:	55                   	push   rbp
  4020f1:	53                   	push   rbx
  4020f2:	45 31 d2             	xor    r10d,r10d
  4020f5:	31 c9                	xor    ecx,ecx
  4020f7:	31 d2                	xor    edx,edx
  4020f9:	bb 00 00 80 00       	mov    ebx,0x800000
  4020fe:	48 83 ec 08          	sub    rsp,0x8
  402102:	4c 8b 5f 18          	mov    r11,QWORD PTR [rdi+0x18]
  402106:	4c 8b 4f 28          	mov    r9,QWORD PTR [rdi+0x28]
  40210a:	44 8b 05 1b 21 20 00 	mov    r8d,DWORD PTR [rip+0x20211b]        # 0x60422c
  402111:	4c 89 d8             	mov    rax,r11
  402114:	4d 85 c9             	test   r9,r9
  402117:	74 5e                	je     0x402177
  402119:	8b 30                	mov    esi,DWORD PTR [rax]
  40211b:	83 fe 06             	cmp    esi,0x6
  40211e:	75 05                	jne    0x402125
  402120:	4c 89 d9             	mov    rcx,r11
  402123:	eb 14                	jmp    0x402139
  402125:	83 fe 02             	cmp    esi,0x2
  402128:	75 15                	jne    0x40213f
  40212a:	48 c7 c6 00 00 00 00 	mov    rsi,0x0
  402131:	48 85 f6             	test   rsi,rsi
  402134:	74 38                	je     0x40216e
  402136:	48 89 f1             	mov    rcx,rsi
  402139:	48 2b 48 10          	sub    rcx,QWORD PTR [rax+0x10]
  40213d:	eb 2f                	jmp    0x40216e
  40213f:	83 fe 07             	cmp    esi,0x7
  402142:	74 27                	je     0x40216b
  402144:	81 fe 51 e5 74 64    	cmp    esi,0x6474e551
  40214a:	75 22                	jne    0x40216e
  40214c:	48 8b 70 28          	mov    rsi,QWORD PTR [rax+0x28]
  402150:	44 89 c5             	mov    ebp,r8d
  402153:	48 39 ee             	cmp    rsi,rbp
  402156:	76 16                	jbe    0x40216e
  402158:	48 81 fe 00 00 80 00 	cmp    rsi,0x800000
  40215f:	41 b2 01             	mov    r10b,0x1
  402162:	48 0f 47 f3          	cmova  rsi,rbx
  402166:	49 89 f0             	mov    r8,rsi
  402169:	eb 03                	jmp    0x40216e
  40216b:	48 89 c2             	mov    rdx,rax
  40216e:	49 ff c9             	dec    r9
  402171:	48 03 47 20          	add    rax,QWORD PTR [rdi+0x20]
  402175:	eb 9d                	jmp    0x402114
  402177:	45 84 d2             	test   r10b,r10b
  40217a:	74 07                	je     0x402183
  40217c:	44 89 05 a9 20 20 00 	mov    DWORD PTR [rip+0x2020a9],r8d        # 0x60422c
  402183:	48 85 d2             	test   rdx,rdx
  402186:	74 45                	je     0x4021cd
  402188:	48 8b 42 20          	mov    rax,QWORD PTR [rdx+0x20]
  40218c:	48 03 4a 10          	add    rcx,QWORD PTR [rdx+0x10]
  402190:	48 89 05 19 29 20 00 	mov    QWORD PTR [rip+0x202919],rax        # 0x604ab0
  402197:	48 8b 42 28          	mov    rax,QWORD PTR [rdx+0x28]
  40219b:	48 89 0d 06 29 20 00 	mov    QWORD PTR [rip+0x202906],rcx        # 0x604aa8
  4021a2:	48 89 05 0f 29 20 00 	mov    QWORD PTR [rip+0x20290f],rax        # 0x604ab8
  4021a9:	48 8b 42 30          	mov    rax,QWORD PTR [rdx+0x30]
  4021ad:	48 c7 05 18 2b 20 00 	mov    QWORD PTR [rip+0x202b18],0x1        # 0x604cd0
  4021b4:	01 00 00 00 
  4021b8:	48 89 05 01 29 20 00 	mov    QWORD PTR [rip+0x202901],rax        # 0x604ac0
  4021bf:	48 8d 05 da 28 20 00 	lea    rax,[rip+0x2028da]        # 0x604aa0
  4021c6:	48 89 05 eb 2a 20 00 	mov    QWORD PTR [rip+0x202aeb],rax        # 0x604cb8
  4021cd:	48 8b 0d e4 28 20 00 	mov    rcx,QWORD PTR [rip+0x2028e4]        # 0x604ab8
  4021d4:	48 8b 15 e5 28 20 00 	mov    rdx,QWORD PTR [rip+0x2028e5]        # 0x604ac0
  4021db:	48 8b 05 c6 28 20 00 	mov    rax,QWORD PTR [rip+0x2028c6]        # 0x604aa8
  4021e2:	48 8d 72 ff          	lea    rsi,[rdx-0x1]
  4021e6:	48 01 c8             	add    rax,rcx
  4021e9:	48 f7 d8             	neg    rax
  4021ec:	48 21 f0             	and    rax,rsi
  4021ef:	48 01 c8             	add    rax,rcx
  4021f2:	48 83 fa 07          	cmp    rdx,0x7
  4021f6:	48 89 05 bb 28 20 00 	mov    QWORD PTR [rip+0x2028bb],rax        # 0x604ab8
  4021fd:	48 89 05 c4 28 20 00 	mov    QWORD PTR [rip+0x2028c4],rax        # 0x604ac8
  402204:	77 0b                	ja     0x402211
  402206:	48 c7 05 af 28 20 00 	mov    QWORD PTR [rip+0x2028af],0x8        # 0x604ac0
  40220d:	08 00 00 00 
  402211:	48 8b 15 a8 28 20 00 	mov    rdx,QWORD PTR [rip+0x2028a8]        # 0x604ac0
  402218:	48 8d 3d c1 28 20 00 	lea    rdi,[rip+0x2028c1]        # 0x604ae0
  40221f:	48 8d 84 10 f7 00 00 	lea    rax,[rax+rdx*1+0xf7]
  402226:	00 
  402227:	48 89 15 9a 2a 20 00 	mov    QWORD PTR [rip+0x202a9a],rdx        # 0x604cc8
  40222e:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
  402232:	48 3d 68 01 00 00    	cmp    rax,0x168
  402238:	48 89 c6             	mov    rsi,rax
  40223b:	48 89 05 7e 2a 20 00 	mov    QWORD PTR [rip+0x202a7e],rax        # 0x604cc0
  402242:	76 1e                	jbe    0x402262
  402244:	41 ba 22 00 00 00    	mov    r10d,0x22
  40224a:	49 83 c8 ff          	or     r8,0xffffffffffffffff
  40224e:	45 31 c9             	xor    r9d,r9d
  402251:	b8 09 00 00 00       	mov    eax,0x9
  402256:	31 ff                	xor    edi,edi
  402258:	ba 03 00 00 00       	mov    edx,0x3
  40225d:	0f 05                	syscall 
  40225f:	48 89 c7             	mov    rdi,rax
  402262:	e8 06 fe ff ff       	call   0x40206d
  402267:	48 89 c7             	mov    rdi,rax
  40226a:	e8 92 fd ff ff       	call   0x402001
  40226f:	85 c0                	test   eax,eax
  402271:	79 01                	jns    0x402274
  402273:	f4                   	hlt    
  402274:	58                   	pop    rax
  402275:	5b                   	pop    rbx
  402276:	5d                   	pop    rbp
  402277:	c3                   	ret    
  402278:	64 48 8b 04 25 00 00 	mov    rax,QWORD PTR fs:0x0
  40227f:	00 00 
  402281:	48 83 c0 3c          	add    rax,0x3c
  402285:	c3                   	ret    
  402286:	4c 8d 05 33 17 00 00 	lea    r8,[rip+0x1733]        # 0x4039c0
  40228d:	31 d2                	xor    edx,edx
  40228f:	41 0f b6 04 10       	movzx  eax,BYTE PTR [r8+rdx*1]
  402294:	89 d1                	mov    ecx,edx
  402296:	84 c0                	test   al,al
  402298:	74 07                	je     0x4022a1
  40229a:	48 ff c2             	inc    rdx
  40229d:	39 f8                	cmp    eax,edi
  40229f:	75 ee                	jne    0x40228f
  4022a1:	48 8d 3d f8 0f 00 00 	lea    rdi,[rip+0xff8]        # 0x4032a0
  4022a8:	85 c9                	test   ecx,ecx
  4022aa:	74 0d                	je     0x4022b9
  4022ac:	8a 07                	mov    al,BYTE PTR [rdi]
  4022ae:	48 ff c7             	inc    rdi
  4022b1:	84 c0                	test   al,al
  4022b3:	75 f7                	jne    0x4022ac
  4022b5:	ff c9                	dec    ecx
  4022b7:	eb ef                	jmp    0x4022a8
  4022b9:	48 8b 76 28          	mov    rsi,QWORD PTR [rsi+0x28]
  4022bd:	e9 2f 00 00 00       	jmp    0x4022f1
  4022c2:	64 48 8b 04 25 00 00 	mov    rax,QWORD PTR fs:0x0
  4022c9:	00 00 
  4022cb:	48 8b b0 b0 00 00 00 	mov    rsi,QWORD PTR [rax+0xb0]
  4022d2:	e9 af ff ff ff       	jmp    0x402286
  4022d7:	48 63 ff             	movsxd rdi,edi
  4022da:	b8 e7 00 00 00       	mov    eax,0xe7
  4022df:	0f 05                	syscall 
  4022e1:	ba 3c 00 00 00       	mov    edx,0x3c
  4022e6:	48 89 d0             	mov    rax,rdx
  4022e9:	0f 05                	syscall 
  4022eb:	eb f9                	jmp    0x4022e6
  4022ed:	48 89 f8             	mov    rax,rdi
  4022f0:	c3                   	ret    
  4022f1:	e9 f7 ff ff ff       	jmp    0x4022ed
  4022f6:	64 48 8b 04 25 00 00 	mov    rax,QWORD PTR fs:0x0
  4022fd:	00 00 
  4022ff:	48 8b 80 b0 00 00 00 	mov    rax,QWORD PTR [rax+0xb0]
  402306:	48 8b 70 28          	mov    rsi,QWORD PTR [rax+0x28]
  40230a:	e9 de ff ff ff       	jmp    0x4022ed
  40230f:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
  402314:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  402319:	66 25 ff 7f          	and    ax,0x7fff
  40231d:	48 89 d1             	mov    rcx,rdx
  402320:	48 c1 e9 3f          	shr    rcx,0x3f
  402324:	0f b7 f0             	movzx  esi,ax
  402327:	09 ce                	or     esi,ecx
  402329:	75 0a                	jne    0x402335
  40232b:	48 83 fa 01          	cmp    rdx,0x1
  40232f:	19 c0                	sbb    eax,eax
  402331:	83 c0 03             	add    eax,0x3
  402334:	c3                   	ret    
  402335:	66 3d ff 7f          	cmp    ax,0x7fff
  402339:	75 10                	jne    0x40234b
  40233b:	31 c0                	xor    eax,eax
  40233d:	48 85 c9             	test   rcx,rcx
  402340:	74 10                	je     0x402352
  402342:	31 c0                	xor    eax,eax
  402344:	48 01 d2             	add    rdx,rdx
  402347:	0f 94 c0             	sete   al
  40234a:	c3                   	ret    
  40234b:	89 c8                	mov    eax,ecx
  40234d:	f7 d8                	neg    eax
  40234f:	83 e0 04             	and    eax,0x4
  402352:	c3                   	ret    
  402353:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
  402357:	66 c1 e8 0f          	shr    ax,0xf
  40235b:	0f b7 c0             	movzx  eax,ax
  40235e:	c3                   	ret    
  40235f:	53                   	push   rbx
  402360:	48 83 ec 10          	sub    rsp,0x10
  402364:	db 6c 24 20          	fld    TBYTE PTR [rsp+0x20]
  402368:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  40236d:	89 c1                	mov    ecx,eax
  40236f:	66 81 e1 ff 7f       	and    cx,0x7fff
  402374:	d9 c0                	fld    st(0)
  402376:	db 3c 24             	fstp   TBYTE PTR [rsp]
  402379:	75 38                	jne    0x4023b3
  40237b:	d9 ee                	fldz   
  40237d:	d9 c9                	fxch   st(1)
  40237f:	df e9                	fucomip st,st(1)
  402381:	dd d8                	fstp   st(0)
  402383:	7a 02                	jp     0x402387
  402385:	74 24                	je     0x4023ab
  402387:	db 6c 24 20          	fld    TBYTE PTR [rsp+0x20]
  40238b:	48 83 ec 10          	sub    rsp,0x10
  40238f:	48 89 fb             	mov    rbx,rdi
  402392:	d8 0d 84 16 00 00    	fmul   DWORD PTR [rip+0x1684]        # 0x403a1c
  402398:	db 3c 24             	fstp   TBYTE PTR [rsp]
  40239b:	e8 bf ff ff ff       	call   0x40235f
  4023a0:	83 2b 78             	sub    DWORD PTR [rbx],0x78
  4023a3:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
  4023a7:	59                   	pop    rcx
  4023a8:	5e                   	pop    rsi
  4023a9:	eb 30                	jmp    0x4023db
  4023ab:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
  4023b1:	eb 28                	jmp    0x4023db
  4023b3:	dd d8                	fstp   st(0)
  4023b5:	66 81 f9 ff 7f       	cmp    cx,0x7fff
  4023ba:	0f b7 d1             	movzx  edx,cx
  4023bd:	74 1c                	je     0x4023db
  4023bf:	66 25 00 80          	and    ax,0x8000
  4023c3:	81 ea fe 3f 00 00    	sub    edx,0x3ffe
  4023c9:	66 0d fe 3f          	or     ax,0x3ffe
  4023cd:	89 17                	mov    DWORD PTR [rdi],edx
  4023cf:	66 89 44 24 08       	mov    WORD PTR [rsp+0x8],ax
  4023d4:	db 2c 24             	fld    TBYTE PTR [rsp]
  4023d7:	db 7c 24 20          	fstp   TBYTE PTR [rsp+0x20]
  4023db:	db 6c 24 20          	fld    TBYTE PTR [rsp+0x20]
  4023df:	48 83 c4 10          	add    rsp,0x10
  4023e3:	5b                   	pop    rbx
  4023e4:	c3                   	ret    
  4023e5:	48 85 ff             	test   rdi,rdi
  4023e8:	74 0d                	je     0x4023f7
  4023ea:	48 83 ec 08          	sub    rsp,0x8
  4023ee:	31 d2                	xor    edx,edx
  4023f0:	e8 c3 06 00 00       	call   0x402ab8
  4023f5:	5a                   	pop    rdx
  4023f6:	c3                   	ret    
  4023f7:	31 c0                	xor    eax,eax
  4023f9:	c3                   	ret    
  4023fa:	8b 8f 8c 00 00 00    	mov    ecx,DWORD PTR [rdi+0x8c]
  402400:	64 48 8b 04 25 00 00 	mov    rax,QWORD PTR fs:0x0
  402407:	00 00 
  402409:	8b 50 38             	mov    edx,DWORD PTR [rax+0x38]
  40240c:	31 c0                	xor    eax,eax
  40240e:	81 e1 ff ff ff bf    	and    ecx,0xbfffffff
  402414:	39 d1                	cmp    ecx,edx
  402416:	0f 84 87 00 00 00    	je     0x4024a3
  40241c:	4c 8d 8f 8c 00 00 00 	lea    r9,[rdi+0x8c]
  402423:	f0 0f b1 97 8c 00 00 	lock cmpxchg DWORD PTR [rdi+0x8c],edx
  40242a:	00 
  40242b:	85 c0                	test   eax,eax
  40242d:	74 6f                	je     0x40249e
  40242f:	81 ca 00 00 00 40    	or     edx,0x40000000
  402435:	41 54                	push   r12
  402437:	41 bc 80 00 00 00    	mov    r12d,0x80
  40243d:	55                   	push   rbp
  40243e:	41 89 d0             	mov    r8d,edx
  402441:	53                   	push   rbx
  402442:	bd ca 00 00 00       	mov    ebp,0xca
  402447:	31 db                	xor    ebx,ebx
  402449:	89 d8                	mov    eax,ebx
  40244b:	f0 45 0f b1 01       	lock cmpxchg DWORD PTR [r9],r8d
  402450:	85 c0                	test   eax,eax
  402452:	89 c1                	mov    ecx,eax
  402454:	75 0a                	jne    0x402460
  402456:	5b                   	pop    rbx
  402457:	b8 01 00 00 00       	mov    eax,0x1
  40245c:	5d                   	pop    rbp
  40245d:	41 5c                	pop    r12
  40245f:	c3                   	ret    
  402460:	89 ca                	mov    edx,ecx
  402462:	81 ca 00 00 00 40    	or     edx,0x40000000
  402468:	0f ba e1 1e          	bt     ecx,0x1e
  40246c:	73 23                	jae    0x402491
  40246e:	48 63 d2             	movsxd rdx,edx
  402471:	45 31 d2             	xor    r10d,r10d
  402474:	48 89 e8             	mov    rax,rbp
  402477:	4c 89 cf             	mov    rdi,r9
  40247a:	4c 89 e6             	mov    rsi,r12
  40247d:	0f 05                	syscall 
  40247f:	48 83 f8 da          	cmp    rax,0xffffffffffffffda
  402483:	75 c4                	jne    0x402449
  402485:	45 31 d2             	xor    r10d,r10d
  402488:	31 f6                	xor    esi,esi
  40248a:	48 89 e8             	mov    rax,rbp
  40248d:	0f 05                	syscall 
  40248f:	eb b8                	jmp    0x402449
  402491:	89 c8                	mov    eax,ecx
  402493:	f0 41 0f b1 11       	lock cmpxchg DWORD PTR [r9],edx
  402498:	39 c8                	cmp    eax,ecx
  40249a:	75 ad                	jne    0x402449
  40249c:	eb d0                	jmp    0x40246e
  40249e:	b8 01 00 00 00       	mov    eax,0x1
  4024a3:	c3                   	ret    
  4024a4:	4c 8d 8f 8c 00 00 00 	lea    r9,[rdi+0x8c]
  4024ab:	31 c0                	xor    eax,eax
  4024ad:	87 87 8c 00 00 00    	xchg   DWORD PTR [rdi+0x8c],eax
  4024b3:	0f ba e0 1e          	bt     eax,0x1e
  4024b7:	73 26                	jae    0x4024df
  4024b9:	41 b8 ca 00 00 00    	mov    r8d,0xca
  4024bf:	ba 01 00 00 00       	mov    edx,0x1
  4024c4:	be 81 00 00 00       	mov    esi,0x81
  4024c9:	4c 89 c0             	mov    rax,r8
  4024cc:	4c 89 cf             	mov    rdi,r9
  4024cf:	0f 05                	syscall 
  4024d1:	48 83 f8 da          	cmp    rax,0xffffffffffffffda
  4024d5:	75 08                	jne    0x4024df
  4024d7:	4c 89 c0             	mov    rax,r8
  4024da:	48 89 d6             	mov    rsi,rdx
  4024dd:	0f 05                	syscall 
  4024df:	c3                   	ret    
  4024e0:	53                   	push   rbx
  4024e1:	48 89 fb             	mov    rbx,rdi
  4024e4:	48 83 ec 10          	sub    rsp,0x10
  4024e8:	48 83 7f 20 00       	cmp    QWORD PTR [rdi+0x20],0x0
  4024ed:	40 88 74 24 0f       	mov    BYTE PTR [rsp+0xf],sil
  4024f2:	74 0c                	je     0x402500
  4024f4:	48 8b 53 28          	mov    rdx,QWORD PTR [rbx+0x28]
  4024f8:	48 3b 53 20          	cmp    rdx,QWORD PTR [rbx+0x20]
  4024fc:	74 29                	je     0x402527
  4024fe:	eb 0e                	jmp    0x40250e
  402500:	e8 7a 01 00 00       	call   0x40267f
  402505:	85 c0                	test   eax,eax
  402507:	74 eb                	je     0x4024f4
  402509:	83 c8 ff             	or     eax,0xffffffff
  40250c:	eb 33                	jmp    0x402541
  40250e:	0f b6 44 24 0f       	movzx  eax,BYTE PTR [rsp+0xf]
  402513:	3b 83 90 00 00 00    	cmp    eax,DWORD PTR [rbx+0x90]
  402519:	74 0c                	je     0x402527
  40251b:	48 8d 72 01          	lea    rsi,[rdx+0x1]
  40251f:	48 89 73 28          	mov    QWORD PTR [rbx+0x28],rsi
  402523:	88 02                	mov    BYTE PTR [rdx],al
  402525:	eb 1a                	jmp    0x402541
  402527:	48 8d 74 24 0f       	lea    rsi,[rsp+0xf]
  40252c:	ba 01 00 00 00       	mov    edx,0x1
  402531:	48 89 df             	mov    rdi,rbx
  402534:	ff 53 48             	call   QWORD PTR [rbx+0x48]
  402537:	48 ff c8             	dec    rax
  40253a:	75 cd                	jne    0x402509
  40253c:	0f b6 44 24 0f       	movzx  eax,BYTE PTR [rsp+0xf]
  402541:	48 83 c4 10          	add    rsp,0x10
  402545:	5b                   	pop    rbx
  402546:	c3                   	ret    
  402547:	89 f8                	mov    eax,edi
  402549:	c3                   	ret    
  40254a:	48 83 ec 08          	sub    rsp,0x8
  40254e:	8b 7f 78             	mov    edi,DWORD PTR [rdi+0x78]
  402551:	e8 f1 ff ff ff       	call   0x402547
  402556:	48 63 f8             	movsxd rdi,eax
  402559:	b8 03 00 00 00       	mov    eax,0x3
  40255e:	0f 05                	syscall 
  402560:	48 89 c7             	mov    rdi,rax
  402563:	e8 28 05 00 00       	call   0x402a90
  402568:	5a                   	pop    rdx
  402569:	c3                   	ret    
  40256a:	41 54                	push   r12
  40256c:	55                   	push   rbp
  40256d:	48 89 d5             	mov    rbp,rdx
  402570:	53                   	push   rbx
  402571:	31 c0                	xor    eax,eax
  402573:	49 89 f4             	mov    r12,rsi
  402576:	48 89 e9             	mov    rcx,rbp
  402579:	48 89 fb             	mov    rbx,rdi
  40257c:	48 83 ec 20          	sub    rsp,0x20
  402580:	48 8b 57 60          	mov    rdx,QWORD PTR [rdi+0x60]
  402584:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  402588:	48 8b 77 58          	mov    rsi,QWORD PTR [rdi+0x58]
  40258c:	48 63 7f 78          	movsxd rdi,DWORD PTR [rdi+0x78]
  402590:	48 85 d2             	test   rdx,rdx
  402593:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
  402598:	0f 95 c0             	setne  al
  40259b:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  4025a0:	48 29 c1             	sub    rcx,rax
  4025a3:	48 85 c9             	test   rcx,rcx
  4025a6:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  4025ab:	48 89 c8             	mov    rax,rcx
  4025ae:	74 0d                	je     0x4025bd
  4025b0:	48 89 e6             	mov    rsi,rsp
  4025b3:	b8 13 00 00 00       	mov    eax,0x13
  4025b8:	ba 02 00 00 00       	mov    edx,0x2
  4025bd:	0f 05                	syscall 
  4025bf:	48 89 c7             	mov    rdi,rax
  4025c2:	e8 c9 04 00 00       	call   0x402a90
  4025c7:	48 83 f8 00          	cmp    rax,0x0
  4025cb:	7f 12                	jg     0x4025df
  4025cd:	48 83 f8 01          	cmp    rax,0x1
  4025d1:	19 c0                	sbb    eax,eax
  4025d3:	31 ed                	xor    ebp,ebp
  4025d5:	83 e0 f0             	and    eax,0xfffffff0
  4025d8:	83 c0 20             	add    eax,0x20
  4025db:	09 03                	or     DWORD PTR [rbx],eax
  4025dd:	eb 37                	jmp    0x402616
  4025df:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  4025e4:	48 39 c1             	cmp    rcx,rax
  4025e7:	73 2a                	jae    0x402613
  4025e9:	48 8b 53 58          	mov    rdx,QWORD PTR [rbx+0x58]
  4025ed:	48 29 c8             	sub    rax,rcx
  4025f0:	48 01 d0             	add    rax,rdx
  4025f3:	48 83 7b 60 00       	cmp    QWORD PTR [rbx+0x60],0x0
  4025f8:	48 89 53 08          	mov    QWORD PTR [rbx+0x8],rdx
  4025fc:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  402600:	74 14                	je     0x402616
  402602:	48 8d 42 01          	lea    rax,[rdx+0x1]
  402606:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  40260a:	8a 02                	mov    al,BYTE PTR [rdx]
  40260c:	41 88 44 2c ff       	mov    BYTE PTR [r12+rbp*1-0x1],al
  402611:	eb 03                	jmp    0x402616
  402613:	48 89 c5             	mov    rbp,rax
  402616:	48 83 c4 20          	add    rsp,0x20
  40261a:	48 89 e8             	mov    rax,rbp
  40261d:	5b                   	pop    rbx
  40261e:	5d                   	pop    rbp
  40261f:	41 5c                	pop    r12
  402621:	c3                   	ret    
  402622:	8b 7f 78             	mov    edi,DWORD PTR [rdi+0x78]
  402625:	e9 4b 04 00 00       	jmp    0x402a75
  40262a:	48 83 ec 18          	sub    rsp,0x18
  40262e:	f6 07 40             	test   BYTE PTR [rdi],0x40
  402631:	48 8d 05 21 06 00 00 	lea    rax,[rip+0x621]        # 0x402c59
  402638:	49 89 f8             	mov    r8,rdi
  40263b:	49 89 f1             	mov    r9,rsi
  40263e:	49 89 d2             	mov    r10,rdx
  402641:	48 89 47 48          	mov    QWORD PTR [rdi+0x48],rax
  402645:	75 25                	jne    0x40266c
  402647:	48 63 7f 78          	movsxd rdi,DWORD PTR [rdi+0x78]
  40264b:	48 8d 54 24 08       	lea    rdx,[rsp+0x8]
  402650:	b8 10 00 00 00       	mov    eax,0x10
  402655:	be 13 54 00 00       	mov    esi,0x5413
  40265a:	0f 05                	syscall 
  40265c:	48 85 c0             	test   rax,rax
  40265f:	74 0b                	je     0x40266c
  402661:	41 c7 80 90 00 00 00 	mov    DWORD PTR [r8+0x90],0xffffffff
  402668:	ff ff ff ff 
  40266c:	4c 89 d2             	mov    rdx,r10
  40266f:	4c 89 ce             	mov    rsi,r9
  402672:	4c 89 c7             	mov    rdi,r8
  402675:	e8 df 05 00 00       	call   0x402c59
  40267a:	48 83 c4 18          	add    rsp,0x18
  40267e:	c3                   	ret    
  40267f:	8b 97 88 00 00 00    	mov    edx,DWORD PTR [rdi+0x88]
  402685:	8d 42 ff             	lea    eax,[rdx-0x1]
  402688:	09 d0                	or     eax,edx
  40268a:	89 87 88 00 00 00    	mov    DWORD PTR [rdi+0x88],eax
  402690:	8b 07                	mov    eax,DWORD PTR [rdi]
  402692:	a8 08                	test   al,0x8
  402694:	74 09                	je     0x40269f
  402696:	83 c8 20             	or     eax,0x20
  402699:	89 07                	mov    DWORD PTR [rdi],eax
  40269b:	83 c8 ff             	or     eax,0xffffffff
  40269e:	c3                   	ret    
  40269f:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  4026a3:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
  4026aa:	00 
  4026ab:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
  4026b2:	00 
  4026b3:	48 89 47 38          	mov    QWORD PTR [rdi+0x38],rax
  4026b7:	48 89 47 28          	mov    QWORD PTR [rdi+0x28],rax
  4026bb:	48 03 47 60          	add    rax,QWORD PTR [rdi+0x60]
  4026bf:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
  4026c3:	31 c0                	xor    eax,eax
  4026c5:	c3                   	ret    
  4026c6:	e9 4d 05 00 00       	jmp    0x402c18
  4026cb:	53                   	push   rbx
  4026cc:	48 89 fb             	mov    rbx,rdi
  4026cf:	48 83 ec 10          	sub    rsp,0x10
  4026d3:	e8 5e 06 00 00       	call   0x402d36
  4026d8:	85 c0                	test   eax,eax
  4026da:	74 05                	je     0x4026e1
  4026dc:	83 c8 ff             	or     eax,0xffffffff
  4026df:	eb 1a                	jmp    0x4026fb
  4026e1:	48 8d 74 24 0f       	lea    rsi,[rsp+0xf]
  4026e6:	ba 01 00 00 00       	mov    edx,0x1
  4026eb:	48 89 df             	mov    rdi,rbx
  4026ee:	ff 53 40             	call   QWORD PTR [rbx+0x40]
  4026f1:	48 ff c8             	dec    rax
  4026f4:	75 e6                	jne    0x4026dc
  4026f6:	0f b6 44 24 0f       	movzx  eax,BYTE PTR [rsp+0xf]
  4026fb:	48 83 c4 10          	add    rsp,0x10
  4026ff:	5b                   	pop    rbx
  402700:	c3                   	ret    
  402701:	41 54                	push   r12
  402703:	55                   	push   rbp
  402704:	49 89 f4             	mov    r12,rsi
  402707:	53                   	push   rbx
  402708:	48 89 fd             	mov    rbp,rdi
  40270b:	e8 b0 02 00 00       	call   0x4029c0
  402710:	4c 89 e1             	mov    rcx,r12
  402713:	48 89 c3             	mov    rbx,rax
  402716:	48 89 ef             	mov    rdi,rbp
  402719:	48 89 c2             	mov    rdx,rax
  40271c:	be 01 00 00 00       	mov    esi,0x1
  402721:	e8 bb 00 00 00       	call   0x4027e1
  402726:	48 39 d8             	cmp    rax,rbx
  402729:	0f 95 c0             	setne  al
  40272c:	0f b6 c0             	movzx  eax,al
  40272f:	5b                   	pop    rbx
  402730:	f7 d8                	neg    eax
  402732:	5d                   	pop    rbp
  402733:	41 5c                	pop    r12
  402735:	c3                   	ret    
  402736:	41 55                	push   r13
  402738:	41 54                	push   r12
  40273a:	49 89 fd             	mov    r13,rdi
  40273d:	55                   	push   rbp
  40273e:	53                   	push   rbx
  40273f:	49 89 f4             	mov    r12,rsi
  402742:	48 89 d3             	mov    rbx,rdx
  402745:	48 83 ec 08          	sub    rsp,0x8
  402749:	48 83 7a 20 00       	cmp    QWORD PTR [rdx+0x20],0x0
  40274e:	74 23                	je     0x402773
  402750:	48 8b 43 20          	mov    rax,QWORD PTR [rbx+0x20]
  402754:	48 2b 43 28          	sub    rax,QWORD PTR [rbx+0x28]
  402758:	4c 39 e0             	cmp    rax,r12
  40275b:	73 26                	jae    0x402783
  40275d:	48 8b 43 48          	mov    rax,QWORD PTR [rbx+0x48]
  402761:	4c 89 e2             	mov    rdx,r12
  402764:	4c 89 ee             	mov    rsi,r13
  402767:	59                   	pop    rcx
  402768:	48 89 df             	mov    rdi,rbx
  40276b:	5b                   	pop    rbx
  40276c:	5d                   	pop    rbp
  40276d:	41 5c                	pop    r12
  40276f:	41 5d                	pop    r13
  402771:	ff e0                	jmp    rax
  402773:	48 89 d7             	mov    rdi,rdx
  402776:	e8 04 ff ff ff       	call   0x40267f
  40277b:	85 c0                	test   eax,eax
  40277d:	74 d1                	je     0x402750
  40277f:	31 c0                	xor    eax,eax
  402781:	eb 56                	jmp    0x4027d9
  402783:	83 bb 90 00 00 00 00 	cmp    DWORD PTR [rbx+0x90],0x0
  40278a:	4c 89 e5             	mov    rbp,r12
  40278d:	78 16                	js     0x4027a5
  40278f:	48 85 ed             	test   rbp,rbp
  402792:	74 13                	je     0x4027a7
  402794:	41 80 7c 2d ff 0a    	cmp    BYTE PTR [r13+rbp*1-0x1],0xa
  40279a:	48 8d 45 ff          	lea    rax,[rbp-0x1]
  40279e:	74 20                	je     0x4027c0
  4027a0:	48 89 c5             	mov    rbp,rax
  4027a3:	eb ea                	jmp    0x40278f
  4027a5:	31 ed                	xor    ebp,ebp
  4027a7:	48 8b 7b 28          	mov    rdi,QWORD PTR [rbx+0x28]
  4027ab:	4c 89 e2             	mov    rdx,r12
  4027ae:	4c 89 ee             	mov    rsi,r13
  4027b1:	e8 7d 02 00 00       	call   0x402a33
  4027b6:	4c 01 63 28          	add    QWORD PTR [rbx+0x28],r12
  4027ba:	49 8d 04 2c          	lea    rax,[r12+rbp*1]
  4027be:	eb 19                	jmp    0x4027d9
  4027c0:	48 89 ea             	mov    rdx,rbp
  4027c3:	4c 89 ee             	mov    rsi,r13
  4027c6:	48 89 df             	mov    rdi,rbx
  4027c9:	ff 53 48             	call   QWORD PTR [rbx+0x48]
  4027cc:	48 39 c5             	cmp    rbp,rax
  4027cf:	77 08                	ja     0x4027d9
  4027d1:	49 01 ed             	add    r13,rbp
  4027d4:	49 29 ec             	sub    r12,rbp
  4027d7:	eb ce                	jmp    0x4027a7
  4027d9:	5a                   	pop    rdx
  4027da:	5b                   	pop    rbx
  4027db:	5d                   	pop    rbp
  4027dc:	41 5c                	pop    r12
  4027de:	41 5d                	pop    r13
  4027e0:	c3                   	ret    
  4027e1:	41 57                	push   r15
  4027e3:	41 56                	push   r14
  4027e5:	b8 00 00 00 00       	mov    eax,0x0
  4027ea:	41 55                	push   r13
  4027ec:	41 54                	push   r12
  4027ee:	49 89 f5             	mov    r13,rsi
  4027f1:	55                   	push   rbp
  4027f2:	53                   	push   rbx
  4027f3:	48 89 d3             	mov    rbx,rdx
  4027f6:	4c 0f af ea          	imul   r13,rdx
  4027fa:	49 89 ff             	mov    r15,rdi
  4027fd:	48 89 f5             	mov    rbp,rsi
  402800:	48 83 ec 18          	sub    rsp,0x18
  402804:	48 85 f6             	test   rsi,rsi
  402807:	49 89 cc             	mov    r12,rcx
  40280a:	48 0f 44 d8          	cmove  rbx,rax
  40280e:	8b 81 8c 00 00 00    	mov    eax,DWORD PTR [rcx+0x8c]
  402814:	45 31 f6             	xor    r14d,r14d
  402817:	85 c0                	test   eax,eax
  402819:	78 0b                	js     0x402826
  40281b:	48 89 cf             	mov    rdi,rcx
  40281e:	e8 d7 fb ff ff       	call   0x4023fa
  402823:	41 89 c6             	mov    r14d,eax
  402826:	4c 89 e2             	mov    rdx,r12
  402829:	4c 89 ee             	mov    rsi,r13
  40282c:	4c 89 ff             	mov    rdi,r15
  40282f:	e8 02 ff ff ff       	call   0x402736
  402834:	45 85 f6             	test   r14d,r14d
  402837:	74 12                	je     0x40284b
  402839:	4c 89 e7             	mov    rdi,r12
  40283c:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  402841:	e8 5e fc ff ff       	call   0x4024a4
  402846:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  40284b:	49 39 c5             	cmp    r13,rax
  40284e:	74 08                	je     0x402858
  402850:	31 d2                	xor    edx,edx
  402852:	48 f7 f5             	div    rbp
  402855:	48 89 c3             	mov    rbx,rax
  402858:	48 83 c4 18          	add    rsp,0x18
  40285c:	48 89 d8             	mov    rax,rbx
  40285f:	5b                   	pop    rbx
  402860:	5d                   	pop    rbp
  402861:	41 5c                	pop    r12
  402863:	41 5d                	pop    r13
  402865:	41 5e                	pop    r14
  402867:	41 5f                	pop    r15
  402869:	c3                   	ret    
  40286a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402870:	40 f6 c7 07          	test   dil,0x7
  402874:	40 0f b6 f6          	movzx  esi,sil
  402878:	75 1f                	jne    0x402899
  40287a:	eb 2c                	jmp    0x4028a8
  40287c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402880:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  402883:	39 f0                	cmp    eax,esi
  402885:	0f 84 15 01 00 00    	je     0x4029a0
  40288b:	48 83 c7 01          	add    rdi,0x1
  40288f:	48 83 ea 01          	sub    rdx,0x1
  402893:	40 f6 c7 07          	test   dil,0x7
  402897:	74 0f                	je     0x4028a8
  402899:	48 85 d2             	test   rdx,rdx
  40289c:	75 e2                	jne    0x402880
  40289e:	31 c0                	xor    eax,eax
  4028a0:	c3                   	ret    
  4028a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4028a8:	31 c0                	xor    eax,eax
  4028aa:	48 85 d2             	test   rdx,rdx
  4028ad:	0f 84 b5 00 00 00    	je     0x402968
  4028b3:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  4028b6:	39 f0                	cmp    eax,esi
  4028b8:	0f 84 e2 00 00 00    	je     0x4029a0
  4028be:	4c 63 ce             	movsxd r9,esi
  4028c1:	49 b8 01 01 01 01 01 	movabs r8,0x101010101010101
  4028c8:	01 01 01 
  4028cb:	4d 0f af c8          	imul   r9,r8
  4028cf:	48 83 fa 07          	cmp    rdx,0x7
  4028d3:	0f 86 97 00 00 00    	jbe    0x402970
  4028d9:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  4028dc:	49 ba 80 80 80 80 80 	movabs r10,0x8080808080808080
  4028e3:	80 80 80 
  4028e6:	4c 31 c8             	xor    rax,r9
  4028e9:	48 89 c1             	mov    rcx,rax
  4028ec:	4c 29 c0             	sub    rax,r8
  4028ef:	48 f7 d1             	not    rcx
  4028f2:	48 21 c8             	and    rax,rcx
  4028f5:	4c 85 d0             	test   rax,r10
  4028f8:	75 76                	jne    0x402970
  4028fa:	48 8d 4a f8          	lea    rcx,[rdx-0x8]
  4028fe:	53                   	push   rbx
  4028ff:	48 bb ff fe fe fe fe 	movabs rbx,0xfefefefefefefeff
  402906:	fe fe fe 
  402909:	49 89 cb             	mov    r11,rcx
  40290c:	41 83 e3 07          	and    r11d,0x7
  402910:	eb 1f                	jmp    0x402931
  402912:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402918:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  40291b:	4c 31 c8             	xor    rax,r9
  40291e:	4c 8d 04 18          	lea    r8,[rax+rbx*1]
  402922:	48 f7 d0             	not    rax
  402925:	4c 21 c0             	and    rax,r8
  402928:	4c 85 d0             	test   rax,r10
  40292b:	75 10                	jne    0x40293d
  40292d:	48 83 e9 08          	sub    rcx,0x8
  402931:	48 83 c7 08          	add    rdi,0x8
  402935:	4c 39 d9             	cmp    rcx,r11
  402938:	48 89 ca             	mov    rdx,rcx
  40293b:	75 db                	jne    0x402918
  40293d:	48 85 c9             	test   rcx,rcx
  402940:	74 73                	je     0x4029b5
  402942:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  402945:	39 c6                	cmp    esi,eax
  402947:	74 67                	je     0x4029b0
  402949:	48 8d 4f 01          	lea    rcx,[rdi+0x1]
  40294d:	48 01 d7             	add    rdi,rdx
  402950:	48 39 cf             	cmp    rdi,rcx
  402953:	48 89 c8             	mov    rax,rcx
  402956:	74 5d                	je     0x4029b5
  402958:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  40295b:	48 83 c1 01          	add    rcx,0x1
  40295f:	39 f2                	cmp    edx,esi
  402961:	75 ed                	jne    0x402950
  402963:	5b                   	pop    rbx
  402964:	c3                   	ret    
  402965:	0f 1f 00             	nop    DWORD PTR [rax]
  402968:	f3 c3                	repz ret 
  40296a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402970:	48 8d 4f 01          	lea    rcx,[rdi+0x1]
  402974:	48 01 d7             	add    rdi,rdx
  402977:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40297e:	00 00 
  402980:	48 39 cf             	cmp    rdi,rcx
  402983:	48 89 c8             	mov    rax,rcx
  402986:	0f 84 12 ff ff ff    	je     0x40289e
  40298c:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  40298f:	48 83 c1 01          	add    rcx,0x1
  402993:	39 f2                	cmp    edx,esi
  402995:	75 e9                	jne    0x402980
  402997:	f3 c3                	repz ret 
  402999:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4029a0:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
  4029a3:	39 c6                	cmp    esi,eax
  4029a5:	75 c9                	jne    0x402970
  4029a7:	48 89 f8             	mov    rax,rdi
  4029aa:	c3                   	ret    
  4029ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4029b0:	48 89 f8             	mov    rax,rdi
  4029b3:	5b                   	pop    rbx
  4029b4:	c3                   	ret    
  4029b5:	31 c0                	xor    eax,eax
  4029b7:	5b                   	pop    rbx
  4029b8:	c3                   	ret    
  4029b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4029c0:	40 f6 c7 07          	test   dil,0x7
  4029c4:	49 89 f8             	mov    r8,rdi
  4029c7:	74 16                	je     0x4029df
  4029c9:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  4029cc:	75 07                	jne    0x4029d5
  4029ce:	eb 60                	jmp    0x402a30
  4029d0:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  4029d3:	74 54                	je     0x402a29
  4029d5:	48 83 c7 01          	add    rdi,0x1
  4029d9:	40 f6 c7 07          	test   dil,0x7
  4029dd:	75 f1                	jne    0x4029d0
  4029df:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  4029e2:	48 be ff fe fe fe fe 	movabs rsi,0xfefefefefefefeff
  4029e9:	fe fe fe 
  4029ec:	48 b9 80 80 80 80 80 	movabs rcx,0x8080808080808080
  4029f3:	80 80 80 
  4029f6:	48 8d 14 30          	lea    rdx,[rax+rsi*1]
  4029fa:	48 f7 d0             	not    rax
  4029fd:	48 21 d0             	and    rax,rdx
  402a00:	48 85 c8             	test   rax,rcx
  402a03:	75 1f                	jne    0x402a24
  402a05:	0f 1f 00             	nop    DWORD PTR [rax]
  402a08:	48 83 c7 08          	add    rdi,0x8
  402a0c:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  402a0f:	48 8d 14 30          	lea    rdx,[rax+rsi*1]
  402a13:	48 f7 d0             	not    rax
  402a16:	48 21 d0             	and    rax,rdx
  402a19:	48 85 c8             	test   rax,rcx
  402a1c:	74 ea                	je     0x402a08
  402a1e:	eb 04                	jmp    0x402a24
  402a20:	48 83 c7 01          	add    rdi,0x1
  402a24:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
  402a27:	75 f7                	jne    0x402a20
  402a29:	48 89 f8             	mov    rax,rdi
  402a2c:	4c 29 c0             	sub    rax,r8
  402a2f:	c3                   	ret    
  402a30:	31 c0                	xor    eax,eax
  402a32:	c3                   	ret    
  402a33:	48 89 f8             	mov    rax,rdi
  402a36:	48 83 fa 08          	cmp    rdx,0x8
  402a3a:	72 14                	jb     0x402a50
  402a3c:	f7 c7 07 00 00 00    	test   edi,0x7
  402a42:	74 0c                	je     0x402a50
  402a44:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  402a45:	48 ff ca             	dec    rdx
  402a48:	f7 c7 07 00 00 00    	test   edi,0x7
  402a4e:	75 f4                	jne    0x402a44
  402a50:	48 89 d1             	mov    rcx,rdx
  402a53:	48 c1 e9 03          	shr    rcx,0x3
  402a57:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  402a5a:	83 e2 07             	and    edx,0x7
  402a5d:	74 05                	je     0x402a64
  402a5f:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  402a60:	ff ca                	dec    edx
  402a62:	75 fb                	jne    0x402a5f
  402a64:	c3                   	ret    
  402a65:	48 89 fe             	mov    rsi,rdi
  402a68:	bf 02 10 00 00       	mov    edi,0x1002
  402a6d:	b8 9e 00 00 00       	mov    eax,0x9e
  402a72:	0f 05                	syscall 
  402a74:	c3                   	ret    
  402a75:	48 63 ff             	movsxd rdi,edi
  402a78:	48 63 d2             	movsxd rdx,edx
  402a7b:	b8 08 00 00 00       	mov    eax,0x8
  402a80:	0f 05                	syscall 
  402a82:	48 89 c7             	mov    rdi,rax
  402a85:	e9 06 00 00 00       	jmp    0x402a90
  402a8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402a90:	48 81 ff 00 f0 ff ff 	cmp    rdi,0xfffffffffffff000
  402a97:	77 07                	ja     0x402aa0
  402a99:	48 89 f8             	mov    rax,rdi
  402a9c:	c3                   	ret    
  402a9d:	0f 1f 00             	nop    DWORD PTR [rax]
  402aa0:	53                   	push   rbx
  402aa1:	48 89 fb             	mov    rbx,rdi
  402aa4:	e8 cf f7 ff ff       	call   0x402278
  402aa9:	89 df                	mov    edi,ebx
  402aab:	f7 df                	neg    edi
  402aad:	89 38                	mov    DWORD PTR [rax],edi
  402aaf:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  402ab6:	5b                   	pop    rbx
  402ab7:	c3                   	ret    
  402ab8:	48 85 ff             	test   rdi,rdi
  402abb:	b8 01 00 00 00       	mov    eax,0x1
  402ac0:	0f 84 03 01 00 00    	je     0x402bc9
  402ac6:	83 fe 7f             	cmp    esi,0x7f
  402ac9:	0f 86 f2 00 00 00    	jbe    0x402bc1
  402acf:	48 83 ec 08          	sub    rsp,0x8
  402ad3:	89 f0                	mov    eax,esi
  402ad5:	48 89 fa             	mov    rdx,rdi
  402ad8:	64 48 8b 0c 25 00 00 	mov    rcx,QWORD PTR fs:0x0
  402adf:	00 00 
  402ae1:	48 8b 89 b0 00 00 00 	mov    rcx,QWORD PTR [rcx+0xb0]
  402ae8:	48 83 39 00          	cmp    QWORD PTR [rcx],0x0
  402aec:	75 1b                	jne    0x402b09
  402aee:	2d 80 df 00 00       	sub    eax,0xdf80
  402af3:	83 f8 7f             	cmp    eax,0x7f
  402af6:	0f 87 b4 00 00 00    	ja     0x402bb0
  402afc:	40 88 37             	mov    BYTE PTR [rdi],sil
  402aff:	b8 01 00 00 00       	mov    eax,0x1
  402b04:	e9 b6 00 00 00       	jmp    0x402bbf
  402b09:	81 fe ff 07 00 00    	cmp    esi,0x7ff
  402b0f:	77 1d                	ja     0x402b2e
  402b11:	89 f1                	mov    ecx,esi
  402b13:	83 e0 3f             	and    eax,0x3f
  402b16:	c1 f9 06             	sar    ecx,0x6
  402b19:	83 c8 80             	or     eax,0xffffff80
  402b1c:	83 c9 c0             	or     ecx,0xffffffc0
  402b1f:	88 47 01             	mov    BYTE PTR [rdi+0x1],al
  402b22:	b8 02 00 00 00       	mov    eax,0x2
  402b27:	88 0f                	mov    BYTE PTR [rdi],cl
  402b29:	e9 91 00 00 00       	jmp    0x402bbf
  402b2e:	8d 8e 00 20 ff ff    	lea    ecx,[rsi-0xe000]
  402b34:	81 f9 ff 1f 00 00    	cmp    ecx,0x1fff
  402b3a:	76 08                	jbe    0x402b44
  402b3c:	81 fe ff d7 00 00    	cmp    esi,0xd7ff
  402b42:	77 28                	ja     0x402b6c
  402b44:	89 c1                	mov    ecx,eax
  402b46:	c1 f9 0c             	sar    ecx,0xc
  402b49:	83 c9 e0             	or     ecx,0xffffffe0
  402b4c:	88 0a                	mov    BYTE PTR [rdx],cl
  402b4e:	89 c1                	mov    ecx,eax
  402b50:	83 e0 3f             	and    eax,0x3f
  402b53:	c1 f9 06             	sar    ecx,0x6
  402b56:	83 c8 80             	or     eax,0xffffff80
  402b59:	83 e1 3f             	and    ecx,0x3f
  402b5c:	88 42 02             	mov    BYTE PTR [rdx+0x2],al
  402b5f:	b8 03 00 00 00       	mov    eax,0x3
  402b64:	83 c9 80             	or     ecx,0xffffff80
  402b67:	88 4a 01             	mov    BYTE PTR [rdx+0x1],cl
  402b6a:	eb 53                	jmp    0x402bbf
  402b6c:	8d 8e 00 00 ff ff    	lea    ecx,[rsi-0x10000]
  402b72:	81 f9 ff ff 0f 00    	cmp    ecx,0xfffff
  402b78:	77 36                	ja     0x402bb0
  402b7a:	89 f1                	mov    ecx,esi
  402b7c:	83 e0 3f             	and    eax,0x3f
  402b7f:	c1 f9 12             	sar    ecx,0x12
  402b82:	83 c8 80             	or     eax,0xffffff80
  402b85:	83 c9 f0             	or     ecx,0xfffffff0
  402b88:	88 47 03             	mov    BYTE PTR [rdi+0x3],al
  402b8b:	b8 04 00 00 00       	mov    eax,0x4
  402b90:	88 0f                	mov    BYTE PTR [rdi],cl
  402b92:	89 f1                	mov    ecx,esi
  402b94:	c1 f9 0c             	sar    ecx,0xc
  402b97:	83 e1 3f             	and    ecx,0x3f
  402b9a:	83 c9 80             	or     ecx,0xffffff80
  402b9d:	88 4f 01             	mov    BYTE PTR [rdi+0x1],cl
  402ba0:	89 f1                	mov    ecx,esi
  402ba2:	c1 f9 06             	sar    ecx,0x6
  402ba5:	83 e1 3f             	and    ecx,0x3f
  402ba8:	83 c9 80             	or     ecx,0xffffff80
  402bab:	88 4f 02             	mov    BYTE PTR [rdi+0x2],cl
  402bae:	eb 0f                	jmp    0x402bbf
  402bb0:	e8 c3 f6 ff ff       	call   0x402278
  402bb5:	c7 00 54 00 00 00    	mov    DWORD PTR [rax],0x54
  402bbb:	48 83 c8 ff          	or     rax,0xffffffffffffffff
  402bbf:	5a                   	pop    rdx
  402bc0:	c3                   	ret    
  402bc1:	40 88 37             	mov    BYTE PTR [rdi],sil
  402bc4:	b8 01 00 00 00       	mov    eax,0x1
  402bc9:	c3                   	ret    
  402bca:	48 85 ff             	test   rdi,rdi
  402bcd:	74 48                	je     0x402c17
  402bcf:	53                   	push   rbx
  402bd0:	8b 87 8c 00 00 00    	mov    eax,DWORD PTR [rdi+0x8c]
  402bd6:	48 89 fb             	mov    rbx,rdi
  402bd9:	85 c0                	test   eax,eax
  402bdb:	78 05                	js     0x402be2
  402bdd:	e8 18 f8 ff ff       	call   0x4023fa
  402be2:	48 8b 43 38          	mov    rax,QWORD PTR [rbx+0x38]
  402be6:	48 39 43 28          	cmp    QWORD PTR [rbx+0x28],rax
  402bea:	74 0a                	je     0x402bf6
  402bec:	31 d2                	xor    edx,edx
  402bee:	31 f6                	xor    esi,esi
  402bf0:	48 89 df             	mov    rdi,rbx
  402bf3:	ff 53 48             	call   QWORD PTR [rbx+0x48]
  402bf6:	48 8b 73 08          	mov    rsi,QWORD PTR [rbx+0x8]
  402bfa:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
  402bfe:	48 39 c6             	cmp    rsi,rax
  402c01:	74 12                	je     0x402c15
  402c03:	48 29 c6             	sub    rsi,rax
  402c06:	48 89 df             	mov    rdi,rbx
  402c09:	48 8b 43 50          	mov    rax,QWORD PTR [rbx+0x50]
  402c0d:	5b                   	pop    rbx
  402c0e:	ba 01 00 00 00       	mov    edx,0x1
  402c13:	ff e0                	jmp    rax
  402c15:	5b                   	pop    rbx
  402c16:	c3                   	ret    
  402c17:	c3                   	ret    
  402c18:	53                   	push   rbx
  402c19:	e8 83 01 00 00       	call   0x402da1
  402c1e:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  402c21:	48 85 db             	test   rbx,rbx
  402c24:	74 0e                	je     0x402c34
  402c26:	48 89 df             	mov    rdi,rbx
  402c29:	e8 9c ff ff ff       	call   0x402bca
  402c2e:	48 8b 5b 70          	mov    rbx,QWORD PTR [rbx+0x70]
  402c32:	eb ed                	jmp    0x402c21
  402c34:	48 8b 3d ed 13 20 00 	mov    rdi,QWORD PTR [rip+0x2013ed]        # 0x604028
  402c3b:	e8 8a ff ff ff       	call   0x402bca
  402c40:	48 8b 3d e1 14 20 00 	mov    rdi,QWORD PTR [rip+0x2014e1]        # 0x604128
  402c47:	e8 7e ff ff ff       	call   0x402bca
  402c4c:	5b                   	pop    rbx
  402c4d:	48 8b 3d f4 1f 20 00 	mov    rdi,QWORD PTR [rip+0x201ff4]        # 0x604c48
  402c54:	e9 71 ff ff ff       	jmp    0x402bca
  402c59:	41 57                	push   r15
  402c5b:	41 56                	push   r14
  402c5d:	49 89 d7             	mov    r15,rdx
  402c60:	41 55                	push   r13
  402c62:	41 54                	push   r12
  402c64:	41 bd 02 00 00 00    	mov    r13d,0x2
  402c6a:	55                   	push   rbp
  402c6b:	53                   	push   rbx
  402c6c:	41 be 14 00 00 00    	mov    r14d,0x14
  402c72:	48 89 fb             	mov    rbx,rdi
  402c75:	48 83 ec 28          	sub    rsp,0x28
  402c79:	48 8b 47 38          	mov    rax,QWORD PTR [rdi+0x38]
  402c7d:	4c 8b 67 28          	mov    r12,QWORD PTR [rdi+0x28]
  402c81:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  402c86:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
  402c8b:	48 89 e5             	mov    rbp,rsp
  402c8e:	49 29 c4             	sub    r12,rax
  402c91:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  402c95:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  402c9a:	49 01 d4             	add    r12,rdx
  402c9d:	48 63 7b 78          	movsxd rdi,DWORD PTR [rbx+0x78]
  402ca1:	49 63 d5             	movsxd rdx,r13d
  402ca4:	4c 89 f0             	mov    rax,r14
  402ca7:	48 89 ee             	mov    rsi,rbp
  402caa:	0f 05                	syscall 
  402cac:	48 89 c7             	mov    rdi,rax
  402caf:	e8 dc fd ff ff       	call   0x402a90
  402cb4:	4c 39 e0             	cmp    rax,r12
  402cb7:	75 19                	jne    0x402cd2
  402cb9:	48 8b 43 58          	mov    rax,QWORD PTR [rbx+0x58]
  402cbd:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  402cc1:	48 01 c2             	add    rdx,rax
  402cc4:	48 89 43 38          	mov    QWORD PTR [rbx+0x38],rax
  402cc8:	48 89 43 28          	mov    QWORD PTR [rbx+0x28],rax
  402ccc:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
  402cd0:	eb 52                	jmp    0x402d24
  402cd2:	48 85 c0             	test   rax,rax
  402cd5:	79 27                	jns    0x402cfe
  402cd7:	83 0b 20             	or     DWORD PTR [rbx],0x20
  402cda:	41 83 fd 02          	cmp    r13d,0x2
  402cde:	48 c7 43 20 00 00 00 	mov    QWORD PTR [rbx+0x20],0x0
  402ce5:	00 
  402ce6:	48 c7 43 38 00 00 00 	mov    QWORD PTR [rbx+0x38],0x0
  402ced:	00 
  402cee:	48 c7 43 28 00 00 00 	mov    QWORD PTR [rbx+0x28],0x0
  402cf5:	00 
  402cf6:	74 29                	je     0x402d21
  402cf8:	4c 2b 7d 08          	sub    r15,QWORD PTR [rbp+0x8]
  402cfc:	eb 26                	jmp    0x402d24
  402cfe:	48 8b 55 08          	mov    rdx,QWORD PTR [rbp+0x8]
  402d02:	49 29 c4             	sub    r12,rax
  402d05:	48 39 d0             	cmp    rax,rdx
  402d08:	76 0a                	jbe    0x402d14
  402d0a:	48 29 d0             	sub    rax,rdx
  402d0d:	48 83 c5 10          	add    rbp,0x10
  402d11:	41 ff cd             	dec    r13d
  402d14:	48 01 45 00          	add    QWORD PTR [rbp+0x0],rax
  402d18:	48 29 45 08          	sub    QWORD PTR [rbp+0x8],rax
  402d1c:	e9 7c ff ff ff       	jmp    0x402c9d
  402d21:	45 31 ff             	xor    r15d,r15d
  402d24:	48 83 c4 28          	add    rsp,0x28
  402d28:	4c 89 f8             	mov    rax,r15
  402d2b:	5b                   	pop    rbx
  402d2c:	5d                   	pop    rbp
  402d2d:	41 5c                	pop    r12
  402d2f:	41 5d                	pop    r13
  402d31:	41 5e                	pop    r14
  402d33:	41 5f                	pop    r15
  402d35:	c3                   	ret    
  402d36:	8b 97 88 00 00 00    	mov    edx,DWORD PTR [rdi+0x88]
  402d3c:	53                   	push   rbx
  402d3d:	48 89 fb             	mov    rbx,rdi
  402d40:	8d 42 ff             	lea    eax,[rdx-0x1]
  402d43:	09 d0                	or     eax,edx
  402d45:	89 87 88 00 00 00    	mov    DWORD PTR [rdi+0x88],eax
  402d4b:	48 8b 47 38          	mov    rax,QWORD PTR [rdi+0x38]
  402d4f:	48 39 47 28          	cmp    QWORD PTR [rdi+0x28],rax
  402d53:	74 07                	je     0x402d5c
  402d55:	31 d2                	xor    edx,edx
  402d57:	31 f6                	xor    esi,esi
  402d59:	ff 57 48             	call   QWORD PTR [rdi+0x48]
  402d5c:	8b 03                	mov    eax,DWORD PTR [rbx]
  402d5e:	48 c7 43 20 00 00 00 	mov    QWORD PTR [rbx+0x20],0x0
  402d65:	00 
  402d66:	48 c7 43 38 00 00 00 	mov    QWORD PTR [rbx+0x38],0x0
  402d6d:	00 
  402d6e:	48 c7 43 28 00 00 00 	mov    QWORD PTR [rbx+0x28],0x0
  402d75:	00 
  402d76:	a8 04                	test   al,0x4
  402d78:	74 0a                	je     0x402d84
  402d7a:	83 c8 20             	or     eax,0x20
  402d7d:	89 03                	mov    DWORD PTR [rbx],eax
  402d7f:	83 c8 ff             	or     eax,0xffffffff
  402d82:	eb 16                	jmp    0x402d9a
  402d84:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  402d88:	48 03 53 58          	add    rdx,QWORD PTR [rbx+0x58]
  402d8c:	c1 e0 1b             	shl    eax,0x1b
  402d8f:	c1 f8 1f             	sar    eax,0x1f
  402d92:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
  402d96:	48 89 53 08          	mov    QWORD PTR [rbx+0x8],rdx
  402d9a:	5b                   	pop    rbx
  402d9b:	c3                   	ret    
  402d9c:	e9 77 fe ff ff       	jmp    0x402c18
  402da1:	48 8d 3d a8 1e 20 00 	lea    rdi,[rip+0x201ea8]        # 0x604c50
  402da8:	48 83 ec 08          	sub    rsp,0x8
  402dac:	e8 15 00 00 00       	call   0x402dc6
  402db1:	48 8d 05 a0 1e 20 00 	lea    rax,[rip+0x201ea0]        # 0x604c58
  402db8:	5a                   	pop    rdx
  402db9:	c3                   	ret    
  402dba:	48 8d 3d 8f 1e 20 00 	lea    rdi,[rip+0x201e8f]        # 0x604c50
  402dc1:	e9 a4 00 00 00       	jmp    0x402e6a
  402dc6:	8b 05 e0 1e 20 00    	mov    eax,DWORD PTR [rip+0x201ee0]        # 0x604cac
  402dcc:	85 c0                	test   eax,eax
  402dce:	0f 84 95 00 00 00    	je     0x402e69
  402dd4:	31 c0                	xor    eax,eax
  402dd6:	ba 01 00 00 80       	mov    edx,0x80000001
  402ddb:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
  402ddf:	85 c0                	test   eax,eax
  402de1:	89 c2                	mov    edx,eax
  402de3:	0f 84 80 00 00 00    	je     0x402e69
  402de9:	be 0a 00 00 00       	mov    esi,0xa
  402dee:	85 d2                	test   edx,edx
  402df0:	79 06                	jns    0x402df8
  402df2:	81 c2 ff ff ff 7f    	add    edx,0x7fffffff
  402df8:	8d 8a 01 00 00 80    	lea    ecx,[rdx-0x7fffffff]
  402dfe:	89 d0                	mov    eax,edx
  402e00:	f0 0f b1 0f          	lock cmpxchg DWORD PTR [rdi],ecx
  402e04:	39 c2                	cmp    edx,eax
  402e06:	74 61                	je     0x402e69
  402e08:	ff ce                	dec    esi
  402e0a:	89 c2                	mov    edx,eax
  402e0c:	75 e0                	jne    0x402dee
  402e0e:	53                   	push   rbx
  402e0f:	41 b8 01 00 00 00    	mov    r8d,0x1
  402e15:	f0 44 0f c1 07       	lock xadd DWORD PTR [rdi],r8d
  402e1a:	41 b9 ca 00 00 00    	mov    r9d,0xca
  402e20:	41 ff c0             	inc    r8d
  402e23:	bb 80 00 00 00       	mov    ebx,0x80
  402e28:	45 85 c0             	test   r8d,r8d
  402e2b:	44 89 c2             	mov    edx,r8d
  402e2e:	79 22                	jns    0x402e52
  402e30:	49 63 d0             	movsxd rdx,r8d
  402e33:	45 31 d2             	xor    r10d,r10d
  402e36:	4c 89 c8             	mov    rax,r9
  402e39:	48 89 de             	mov    rsi,rbx
  402e3c:	0f 05                	syscall 
  402e3e:	48 83 f8 da          	cmp    rax,0xffffffffffffffda
  402e42:	75 07                	jne    0x402e4b
  402e44:	31 f6                	xor    esi,esi
  402e46:	4c 89 c8             	mov    rax,r9
  402e49:	0f 05                	syscall 
  402e4b:	41 8d 90 ff ff ff 7f 	lea    edx,[r8+0x7fffffff]
  402e52:	44 8d 82 00 00 00 80 	lea    r8d,[rdx-0x80000000]
  402e59:	89 d0                	mov    eax,edx
  402e5b:	f0 44 0f b1 07       	lock cmpxchg DWORD PTR [rdi],r8d
  402e60:	39 c2                	cmp    edx,eax
  402e62:	41 89 c0             	mov    r8d,eax
  402e65:	75 c1                	jne    0x402e28
  402e67:	5b                   	pop    rbx
  402e68:	c3                   	ret    
  402e69:	c3                   	ret    
  402e6a:	8b 07                	mov    eax,DWORD PTR [rdi]
  402e6c:	85 c0                	test   eax,eax
  402e6e:	79 33                	jns    0x402ea3
  402e70:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  402e75:	f0 0f c1 07          	lock xadd DWORD PTR [rdi],eax
  402e79:	3d 01 00 00 80       	cmp    eax,0x80000001
  402e7e:	74 23                	je     0x402ea3
  402e80:	41 b8 ca 00 00 00    	mov    r8d,0xca
  402e86:	ba 01 00 00 00       	mov    edx,0x1
  402e8b:	be 81 00 00 00       	mov    esi,0x81
  402e90:	4c 89 c0             	mov    rax,r8
  402e93:	0f 05                	syscall 
  402e95:	48 83 f8 da          	cmp    rax,0xffffffffffffffda
  402e99:	75 08                	jne    0x402ea3
  402e9b:	4c 89 c0             	mov    rax,r8
  402e9e:	48 89 d6             	mov    rsi,rdx
  402ea1:	0f 05                	syscall 
  402ea3:	c3                   	ret    

Disassembly of section .fini:

0000000000402ea4 <.fini>:
  402ea4:	50                   	push   rax
  402ea5:	58                   	pop    rax
  402ea6:	c3                   	ret    
