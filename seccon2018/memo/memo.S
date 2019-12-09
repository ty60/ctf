
memo:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000200 <.interp>:
 200:	2f                   	(bad)  
 201:	6c                   	ins    BYTE PTR es:[rdi],dx
 202:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 209:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 20e:	78 2d                	js     23d <_init-0x673>
 210:	78 38                	js     24a <_init-0x666>
 212:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 218:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 219:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

000000000000021c <.note.ABI-tag>:
 21c:	04 00                	add    al,0x0
 21e:	00 00                	add    BYTE PTR [rax],al
 220:	10 00                	adc    BYTE PTR [rax],al
 222:	00 00                	add    BYTE PTR [rax],al
 224:	01 00                	add    DWORD PTR [rax],eax
 226:	00 00                	add    BYTE PTR [rax],al
 228:	47                   	rex.RXB
 229:	4e 55                	rex.WRX push rbp
 22b:	00 00                	add    BYTE PTR [rax],al
 22d:	00 00                	add    BYTE PTR [rax],al
 22f:	00 02                	add    BYTE PTR [rdx],al
 231:	00 00                	add    BYTE PTR [rax],al
 233:	00 06                	add    BYTE PTR [rsi],al
 235:	00 00                	add    BYTE PTR [rax],al
 237:	00 20                	add    BYTE PTR [rax],ah
 239:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

000000000000023c <.note.gnu.build-id>:
 23c:	04 00                	add    al,0x0
 23e:	00 00                	add    BYTE PTR [rax],al
 240:	14 00                	adc    al,0x0
 242:	00 00                	add    BYTE PTR [rax],al
 244:	03 00                	add    eax,DWORD PTR [rax]
 246:	00 00                	add    BYTE PTR [rax],al
 248:	47                   	rex.RXB
 249:	4e 55                	rex.WRX push rbp
 24b:	00 ba f7 03 86 1d    	add    BYTE PTR [rdx+0x1d8603f7],bh
 251:	71 55                	jno    2a8 <_init-0x608>
 253:	d6                   	(bad)  
 254:	44 33 c3             	xor    r8d,ebx
 257:	b0 58                	mov    al,0x58
 259:	03 4d f0             	add    ecx,DWORD PTR [rbp-0x10]
 25c:	e3 a8                	jrcxz  206 <_init-0x6aa>
 25e:	f4                   	hlt    
 25f:	07                   	(bad)  

Disassembly of section .gnu.hash:

0000000000000260 <.gnu.hash>:
 260:	03 00                	add    eax,DWORD PTR [rax]
 262:	00 00                	add    BYTE PTR [rax],al
 264:	13 00                	adc    eax,DWORD PTR [rax]
 266:	00 00                	add    BYTE PTR [rax],al
 268:	01 00                	add    DWORD PTR [rax],eax
 26a:	00 00                	add    BYTE PTR [rax],al
 26c:	06                   	(bad)  
 26d:	00 00                	add    BYTE PTR [rax],al
 26f:	00 88 41 20 01 80    	add    BYTE PTR [rax-0x7ffedfbf],cl
 275:	01 10                	add    DWORD PTR [rax],edx
 277:	0a 13                	or     dl,BYTE PTR [rbx]
 279:	00 00                	add    BYTE PTR [rax],al
 27b:	00 16                	add    BYTE PTR [rsi],dl
 27d:	00 00                	add    BYTE PTR [rax],al
 27f:	00 00                	add    BYTE PTR [rax],al
 281:	00 00                	add    BYTE PTR [rax],al
 283:	00 28                	add    BYTE PTR [rax],ch
 285:	1d 8c 1c 42 45       	sbb    eax,0x45421c8c
 28a:	d5                   	(bad)  
 28b:	ec                   	in     al,dx
 28c:	bb e3 92 7c 66       	mov    ebx,0x667c92e3
 291:	55                   	push   rbp
 292:	61                   	(bad)  
 293:	10 d8                	adc    al,bl
 295:	71 58                	jno    2ef <_init-0x5c1>
 297:	1c 39                	sbb    al,0x39
 299:	f2                   	repnz
 29a:	8b                   	.byte 0x8b
 29b:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000000002a0 <.dynsym>:
	...
 2bc:	03 00                	add    eax,DWORD PTR [rax]
 2be:	0b 00                	or     eax,DWORD PTR [rax]
 2c0:	b0 08                	mov    al,0x8
	...
 2ce:	00 00                	add    BYTE PTR [rax],al
 2d0:	8a 00                	mov    al,BYTE PTR [rax]
 2d2:	00 00                	add    BYTE PTR [rax],al
 2d4:	12 00                	adc    al,BYTE PTR [rax]
	...
 2e6:	00 00                	add    BYTE PTR [rax],al
 2e8:	a7                   	cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
 2e9:	00 00                	add    BYTE PTR [rax],al
 2eb:	00 20                	add    BYTE PTR [rax],ah
	...
 2fd:	00 00                	add    BYTE PTR [rax],al
 2ff:	00 12                	add    BYTE PTR [rdx],dl
 301:	00 00                	add    BYTE PTR [rax],al
 303:	00 12                	add    BYTE PTR [rdx],dl
	...
 315:	00 00                	add    BYTE PTR [rax],al
 317:	00 17                	add    BYTE PTR [rdi],dl
 319:	00 00                	add    BYTE PTR [rax],al
 31b:	00 12                	add    BYTE PTR [rdx],dl
	...
 32d:	00 00                	add    BYTE PTR [rax],al
 32f:	00 71 00             	add    BYTE PTR [rcx+0x0],dh
 332:	00 00                	add    BYTE PTR [rax],al
 334:	12 00                	adc    al,BYTE PTR [rax]
	...
 346:	00 00                	add    BYTE PTR [rax],al
 348:	5b                   	pop    rbx
 349:	00 00                	add    BYTE PTR [rax],al
 34b:	00 12                	add    BYTE PTR [rdx],dl
	...
 35d:	00 00                	add    BYTE PTR [rax],al
 35f:	00 2e                	add    BYTE PTR [rsi],ch
 361:	00 00                	add    BYTE PTR [rax],al
 363:	00 12                	add    BYTE PTR [rdx],dl
	...
 375:	00 00                	add    BYTE PTR [rax],al
 377:	00 78 00             	add    BYTE PTR [rax+0x0],bh
 37a:	00 00                	add    BYTE PTR [rax],al
 37c:	12 00                	adc    al,BYTE PTR [rax]
	...
 38e:	00 00                	add    BYTE PTR [rax],al
 390:	35 00 00 00 12       	xor    eax,0x12000000
	...
 3a5:	00 00                	add    BYTE PTR [rax],al
 3a7:	00 3b                	add    BYTE PTR [rbx],bh
 3a9:	00 00                	add    BYTE PTR [rax],al
 3ab:	00 12                	add    BYTE PTR [rdx],dl
	...
 3bd:	00 00                	add    BYTE PTR [rax],al
 3bf:	00 c3                	add    bl,al
 3c1:	00 00                	add    BYTE PTR [rax],al
 3c3:	00 20                	add    BYTE PTR [rax],ah
	...
 3d5:	00 00                	add    BYTE PTR [rax],al
 3d7:	00 42 00             	add    BYTE PTR [rdx+0x0],al
 3da:	00 00                	add    BYTE PTR [rax],al
 3dc:	12 00                	adc    al,BYTE PTR [rax]
	...
 3ee:	00 00                	add    BYTE PTR [rax],al
 3f0:	0b 00                	or     eax,DWORD PTR [rax]
 3f2:	00 00                	add    BYTE PTR [rax],al
 3f4:	12 00                	adc    al,BYTE PTR [rax]
	...
 406:	00 00                	add    BYTE PTR [rax],al
 408:	d2 00                	rol    BYTE PTR [rax],cl
 40a:	00 00                	add    BYTE PTR [rax],al
 40c:	20 00                	and    BYTE PTR [rax],al
	...
 41e:	00 00                	add    BYTE PTR [rax],al
 420:	56                   	push   rsi
 421:	00 00                	add    BYTE PTR [rax],al
 423:	00 12                	add    BYTE PTR [rdx],dl
	...
 435:	00 00                	add    BYTE PTR [rax],al
 437:	00 e6                	add    dh,ah
 439:	00 00                	add    BYTE PTR [rax],al
 43b:	00 20                	add    BYTE PTR [rax],ah
	...
 44d:	00 00                	add    BYTE PTR [rax],al
 44f:	00 62 00             	add    BYTE PTR [rdx+0x0],ah
 452:	00 00                	add    BYTE PTR [rax],al
 454:	22 00                	and    al,BYTE PTR [rax]
	...
 466:	00 00                	add    BYTE PTR [rax],al
 468:	48 00 00             	rex.W add BYTE PTR [rax],al
 46b:	00 11                	add    BYTE PTR [rcx],dl
 46d:	00 1a                	add    BYTE PTR [rdx],bl
 46f:	00 e0                	add    al,ah
 471:	16                   	(bad)  
 472:	20 00                	and    BYTE PTR [rax],al
 474:	00 00                	add    BYTE PTR [rax],al
 476:	00 00                	add    BYTE PTR [rax],al
 478:	08 00                	or     BYTE PTR [rax],al
 47a:	00 00                	add    BYTE PTR [rax],al
 47c:	00 00                	add    BYTE PTR [rax],al
 47e:	00 00                	add    BYTE PTR [rax],al
 480:	8f 00                	pop    QWORD PTR [rax]
 482:	00 00                	add    BYTE PTR [rax],al
 484:	10 00                	adc    BYTE PTR [rax],al
 486:	19 00                	sbb    DWORD PTR [rax],eax
 488:	d0 16                	rcl    BYTE PTR [rsi],1
 48a:	20 00                	and    BYTE PTR [rax],al
	...
 498:	a2 00 00 00 10 00 1a 	movabs ds:0x10001a0010000000,al
 49f:	00 10 
 4a1:	17                   	(bad)  
 4a2:	20 00                	and    BYTE PTR [rax],al
	...
 4b0:	28 00                	sub    BYTE PTR [rax],al
 4b2:	00 00                	add    BYTE PTR [rax],al
 4b4:	11 00                	adc    DWORD PTR [rax],eax
 4b6:	1a 00                	sbb    al,BYTE PTR [rax]
 4b8:	f0 16                	lock (bad) 
 4ba:	20 00                	and    BYTE PTR [rax],al
 4bc:	00 00                	add    BYTE PTR [rax],al
 4be:	00 00                	add    BYTE PTR [rax],al
 4c0:	08 00                	or     BYTE PTR [rax],al
 4c2:	00 00                	add    BYTE PTR [rax],al
 4c4:	00 00                	add    BYTE PTR [rax],al
 4c6:	00 00                	add    BYTE PTR [rax],al
 4c8:	96                   	xchg   esi,eax
 4c9:	00 00                	add    BYTE PTR [rax],al
 4cb:	00 10                	add    BYTE PTR [rax],dl
 4cd:	00 1a                	add    BYTE PTR [rdx],bl
 4cf:	00 d0                	add    al,dl
 4d1:	16                   	(bad)  
 4d2:	20 00                	and    BYTE PTR [rax],al
	...
 4e0:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 4e3:	00 11                	add    BYTE PTR [rcx],dl
 4e5:	00 1a                	add    BYTE PTR [rdx],bl
 4e7:	00 00                	add    BYTE PTR [rax],al
 4e9:	17                   	(bad)  
 4ea:	20 00                	and    BYTE PTR [rax],al
 4ec:	00 00                	add    BYTE PTR [rax],al
 4ee:	00 00                	add    BYTE PTR [rax],al
 4f0:	08 00                	or     BYTE PTR [rax],al
 4f2:	00 00                	add    BYTE PTR [rax],al
 4f4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000000004f8 <.dynstr>:
 4f8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 4fc:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 4fe:	73 6f                	jae    56f <_init-0x341>
 500:	2e 36 00 70 65       	cs add BYTE PTR ss:[rax+0x65],dh
 505:	72 72                	jb     579 <_init-0x337>
 507:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 508:	72 00                	jb     50a <_init-0x3a6>
 50a:	70 75                	jo     581 <_init-0x32f>
 50c:	74 73                	je     581 <_init-0x32f>
 50e:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 511:	73 74                	jae    587 <_init-0x329>
 513:	61                   	(bad)  
 514:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 517:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 51a:	5f                   	pop    rdi
 51b:	66 61                	data16 (bad) 
 51d:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
 524:	6e 
 525:	00 70 72             	add    BYTE PTR [rax+0x72],dh
 528:	69 6e 74 66 00 66 67 	imul   ebp,DWORD PTR [rsi+0x74],0x67660066
 52f:	65 74 73             	gs je  5a5 <_init-0x30b>
 532:	00 63 61             	add    BYTE PTR [rbx+0x61],ah
 535:	6c                   	ins    BYTE PTR es:[rdi],dx
 536:	6c                   	ins    BYTE PTR es:[rdi],dx
 537:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 538:	63 00                	movsxd eax,DWORD PTR [rax]
 53a:	70 72                	jo     5ae <_init-0x302>
 53c:	63 74 6c 00          	movsxd esi,DWORD PTR [rsp+rbp*2+0x0]
 540:	73 74                	jae    5b6 <_init-0x2fa>
 542:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 544:	75 74                	jne    5ba <_init-0x2f6>
 546:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 549:	64 65 72 72          	fs gs jb 5bf <_init-0x2f1>
 54d:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
 550:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 551:	69 00 73 74 72 63    	imul   eax,DWORD PTR [rax],0x63727473
 557:	68 72 00 5f 5f       	push   0x5f5f0072
 55c:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 55f:	5f                   	pop    rdi
 560:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 566:	7a 65                	jp     5cd <_init-0x2e3>
 568:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
 56b:	74 62                	je     5cf <_init-0x2e1>
 56d:	75 66                	jne    5d5 <_init-0x2db>
 56f:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 572:	6c                   	ins    BYTE PTR es:[rdi],dx
 573:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 57a:	72 74                	jb     5f0 <_init-0x2c0>
 57c:	5f                   	pop    rdi
 57d:	6d                   	ins    DWORD PTR es:[rdi],dx
 57e:	61                   	(bad)  
 57f:	69 6e 00 66 72 65 65 	imul   ebp,DWORD PTR [rsi+0x0],0x65657266
 586:	00 5f 65             	add    BYTE PTR [rdi+0x65],bl
 589:	64 61                	fs (bad) 
 58b:	74 61                	je     5ee <_init-0x2c2>
 58d:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 590:	62 73                	(bad)  
 592:	73 5f                	jae    5f3 <_init-0x2bd>
 594:	73 74                	jae    60a <_init-0x2a6>
 596:	61                   	(bad)  
 597:	72 74                	jb     60d <_init-0x2a3>
 599:	00 5f 65             	add    BYTE PTR [rdi+0x65],bl
 59c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 59d:	64 00 5f 49          	add    BYTE PTR fs:[rdi+0x49],bl
 5a1:	54                   	push   rsp
 5a2:	4d 5f                	rex.WRB pop r15
 5a4:	64 65 72 65          	fs gs jb 60d <_init-0x2a3>
 5a8:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 5af:	4d 
 5b0:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 5b2:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5b3:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 5b4:	65 54                	gs push rsp
 5b6:	61                   	(bad)  
 5b7:	62                   	(bad)  
 5b8:	6c                   	ins    BYTE PTR es:[rdi],dx
 5b9:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 5bd:	67 6d                	ins    DWORD PTR es:[edi],dx
 5bf:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5c0:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 5c1:	5f                   	pop    rdi
 5c2:	73 74                	jae    638 <_init-0x278>
 5c4:	61                   	(bad)  
 5c5:	72 74                	jb     63b <_init-0x275>
 5c7:	5f                   	pop    rdi
 5c8:	5f                   	pop    rdi
 5c9:	00 5f 4a             	add    BYTE PTR [rdi+0x4a],bl
 5cc:	76 5f                	jbe    62d <_init-0x283>
 5ce:	52                   	push   rdx
 5cf:	65 67 69 73 74 65 72 	imul   esi,DWORD PTR gs:[ebx+0x74],0x6c437265
 5d6:	43 6c 
 5d8:	61                   	(bad)  
 5d9:	73 73                	jae    64e <_init-0x262>
 5db:	65 73 00             	gs jae 5de <_init-0x2d2>
 5de:	5f                   	pop    rdi
 5df:	49 54                	rex.WB push r12
 5e1:	4d 5f                	rex.WRB pop r15
 5e3:	72 65                	jb     64a <_init-0x266>
 5e5:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 5ec:	4d 
 5ed:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 5ef:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5f0:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 5f1:	65 54                	gs push rsp
 5f3:	61                   	(bad)  
 5f4:	62                   	(bad)  
 5f5:	6c                   	ins    BYTE PTR es:[rdi],dx
 5f6:	65 00 47 4c          	add    BYTE PTR gs:[rdi+0x4c],al
 5fa:	49                   	rex.WB
 5fb:	42                   	rex.X
 5fc:	43 5f                	rex.XB pop r15
 5fe:	32 2e                	xor    ch,BYTE PTR [rsi]
 600:	34 00                	xor    al,0x0
 602:	47                   	rex.RXB
 603:	4c                   	rex.WR
 604:	49                   	rex.WB
 605:	42                   	rex.X
 606:	43 5f                	rex.XB pop r15
 608:	32 2e                	xor    ch,BYTE PTR [rsi]
 60a:	32 2e                	xor    ch,BYTE PTR [rsi]
 60c:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000000060e <.gnu.version>:
 60e:	00 00                	add    BYTE PTR [rax],al
 610:	00 00                	add    BYTE PTR [rax],al
 612:	02 00                	add    al,BYTE PTR [rax]
 614:	00 00                	add    BYTE PTR [rax],al
 616:	02 00                	add    al,BYTE PTR [rax]
 618:	03 00                	add    eax,DWORD PTR [rax]
 61a:	02 00                	add    al,BYTE PTR [rax]
 61c:	02 00                	add    al,BYTE PTR [rax]
 61e:	02 00                	add    al,BYTE PTR [rax]
 620:	02 00                	add    al,BYTE PTR [rax]
 622:	02 00                	add    al,BYTE PTR [rax]
 624:	02 00                	add    al,BYTE PTR [rax]
 626:	00 00                	add    BYTE PTR [rax],al
 628:	02 00                	add    al,BYTE PTR [rax]
 62a:	02 00                	add    al,BYTE PTR [rax]
 62c:	00 00                	add    BYTE PTR [rax],al
 62e:	02 00                	add    al,BYTE PTR [rax]
 630:	00 00                	add    BYTE PTR [rax],al
 632:	02 00                	add    al,BYTE PTR [rax]
 634:	02 00                	add    al,BYTE PTR [rax]
 636:	01 00                	add    DWORD PTR [rax],eax
 638:	01 00                	add    DWORD PTR [rax],eax
 63a:	02 00                	add    al,BYTE PTR [rax]
 63c:	01 00                	add    DWORD PTR [rax],eax
 63e:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000640 <.gnu.version_r>:
 640:	01 00                	add    DWORD PTR [rax],eax
 642:	02 00                	add    al,BYTE PTR [rax]
 644:	01 00                	add    DWORD PTR [rax],eax
 646:	00 00                	add    BYTE PTR [rax],al
 648:	10 00                	adc    BYTE PTR [rax],al
 64a:	00 00                	add    BYTE PTR [rax],al
 64c:	00 00                	add    BYTE PTR [rax],al
 64e:	00 00                	add    BYTE PTR [rax],al
 650:	14 69                	adc    al,0x69
 652:	69 0d 00 00 03 00 00 	imul   ecx,DWORD PTR [rip+0x30000],0x100        # 3065c <__FRAME_END__+0x2f244>
 659:	01 00 00 
 65c:	10 00                	adc    BYTE PTR [rax],al
 65e:	00 00                	add    BYTE PTR [rax],al
 660:	75 1a                	jne    67c <_init-0x234>
 662:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 668:	0a 01                	or     al,BYTE PTR [rcx]
 66a:	00 00                	add    BYTE PTR [rax],al
 66c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000670 <.rela.dyn>:
 670:	20 14 20             	and    BYTE PTR [rax+riz*1],dl
 673:	00 00                	add    BYTE PTR [rax],al
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 08                	add    BYTE PTR [rax],cl
 679:	00 00                	add    BYTE PTR [rax],al
 67b:	00 00                	add    BYTE PTR [rax],al
 67d:	00 00                	add    BYTE PTR [rax],al
 67f:	00 b0 0a 00 00 00    	add    BYTE PTR [rax+0xa],dh
 685:	00 00                	add    BYTE PTR [rax],al
 687:	00 28                	add    BYTE PTR [rax],ch
 689:	14 20                	adc    al,0x20
 68b:	00 00                	add    BYTE PTR [rax],al
 68d:	00 00                	add    BYTE PTR [rax],al
 68f:	00 08                	add    BYTE PTR [rax],cl
 691:	00 00                	add    BYTE PTR [rax],al
 693:	00 00                	add    BYTE PTR [rax],al
 695:	00 00                	add    BYTE PTR [rax],al
 697:	00 e0                	add    al,ah
 699:	0a 00                	or     al,BYTE PTR [rax]
 69b:	00 00                	add    BYTE PTR [rax],al
 69d:	00 00                	add    BYTE PTR [rax],al
 69f:	00 30                	add    BYTE PTR [rax],dh
 6a1:	14 20                	adc    al,0x20
 6a3:	00 00                	add    BYTE PTR [rax],al
 6a5:	00 00                	add    BYTE PTR [rax],al
 6a7:	00 08                	add    BYTE PTR [rax],cl
 6a9:	00 00                	add    BYTE PTR [rax],al
 6ab:	00 00                	add    BYTE PTR [rax],al
 6ad:	00 00                	add    BYTE PTR [rax],al
 6af:	00 70 0a             	add    BYTE PTR [rax+0xa],dh
 6b2:	00 00                	add    BYTE PTR [rax],al
 6b4:	00 00                	add    BYTE PTR [rax],al
 6b6:	00 00                	add    BYTE PTR [rax],al
 6b8:	c8 16 20 00          	enter  0x2016,0x0
 6bc:	00 00                	add    BYTE PTR [rax],al
 6be:	00 00                	add    BYTE PTR [rax],al
 6c0:	08 00                	or     BYTE PTR [rax],al
 6c2:	00 00                	add    BYTE PTR [rax],al
 6c4:	00 00                	add    BYTE PTR [rax],al
 6c6:	00 00                	add    BYTE PTR [rax],al
 6c8:	c8 16 20 00          	enter  0x2016,0x0
 6cc:	00 00                	add    BYTE PTR [rax],al
 6ce:	00 00                	add    BYTE PTR [rax],al
 6d0:	20 16                	and    BYTE PTR [rsi],dl
 6d2:	20 00                	and    BYTE PTR [rax],al
 6d4:	00 00                	add    BYTE PTR [rax],al
 6d6:	00 00                	add    BYTE PTR [rax],al
 6d8:	06                   	(bad)  
 6d9:	00 00                	add    BYTE PTR [rax],al
 6db:	00 03                	add    BYTE PTR [rbx],al
	...
 6e5:	00 00                	add    BYTE PTR [rax],al
 6e7:	00 28                	add    BYTE PTR [rax],ch
 6e9:	16                   	(bad)  
 6ea:	20 00                	and    BYTE PTR [rax],al
 6ec:	00 00                	add    BYTE PTR [rax],al
 6ee:	00 00                	add    BYTE PTR [rax],al
 6f0:	06                   	(bad)  
 6f1:	00 00                	add    BYTE PTR [rax],al
 6f3:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 6fe:	00 00                	add    BYTE PTR [rax],al
 700:	30 16                	xor    BYTE PTR [rsi],dl
 702:	20 00                	and    BYTE PTR [rax],al
 704:	00 00                	add    BYTE PTR [rax],al
 706:	00 00                	add    BYTE PTR [rax],al
 708:	06                   	(bad)  
 709:	00 00                	add    BYTE PTR [rax],al
 70b:	00 0f                	add    BYTE PTR [rdi],cl
	...
 715:	00 00                	add    BYTE PTR [rax],al
 717:	00 38                	add    BYTE PTR [rax],bh
 719:	16                   	(bad)  
 71a:	20 00                	and    BYTE PTR [rax],al
 71c:	00 00                	add    BYTE PTR [rax],al
 71e:	00 00                	add    BYTE PTR [rax],al
 720:	06                   	(bad)  
 721:	00 00                	add    BYTE PTR [rax],al
 723:	00 11                	add    BYTE PTR [rcx],dl
	...
 72d:	00 00                	add    BYTE PTR [rax],al
 72f:	00 40 16             	add    BYTE PTR [rax+0x16],al
 732:	20 00                	and    BYTE PTR [rax],al
 734:	00 00                	add    BYTE PTR [rax],al
 736:	00 00                	add    BYTE PTR [rax],al
 738:	06                   	(bad)  
 739:	00 00                	add    BYTE PTR [rax],al
 73b:	00 12                	add    BYTE PTR [rdx],dl
	...
 745:	00 00                	add    BYTE PTR [rax],al
 747:	00 e0                	add    al,ah
 749:	16                   	(bad)  
 74a:	20 00                	and    BYTE PTR [rax],al
 74c:	00 00                	add    BYTE PTR [rax],al
 74e:	00 00                	add    BYTE PTR [rax],al
 750:	05 00 00 00 13       	add    eax,0x13000000
	...
 75d:	00 00                	add    BYTE PTR [rax],al
 75f:	00 f0                	add    al,dh
 761:	16                   	(bad)  
 762:	20 00                	and    BYTE PTR [rax],al
 764:	00 00                	add    BYTE PTR [rax],al
 766:	00 00                	add    BYTE PTR [rax],al
 768:	05 00 00 00 16       	add    eax,0x16000000
	...
 779:	17                   	(bad)  
 77a:	20 00                	and    BYTE PTR [rax],al
 77c:	00 00                	add    BYTE PTR [rax],al
 77e:	00 00                	add    BYTE PTR [rax],al
 780:	05 00 00 00 18       	add    eax,0x18000000
	...

Disassembly of section .rela.plt:

0000000000000790 <.rela.plt>:
 790:	60                   	(bad)  
 791:	16                   	(bad)  
 792:	20 00                	and    BYTE PTR [rax],al
 794:	00 00                	add    BYTE PTR [rax],al
 796:	00 00                	add    BYTE PTR [rax],al
 798:	07                   	(bad)  
 799:	00 00                	add    BYTE PTR [rax],al
 79b:	00 02                	add    BYTE PTR [rdx],al
	...
 7a5:	00 00                	add    BYTE PTR [rax],al
 7a7:	00 68 16             	add    BYTE PTR [rax+0x16],ch
 7aa:	20 00                	and    BYTE PTR [rax],al
 7ac:	00 00                	add    BYTE PTR [rax],al
 7ae:	00 00                	add    BYTE PTR [rax],al
 7b0:	07                   	(bad)  
 7b1:	00 00                	add    BYTE PTR [rax],al
 7b3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 7be:	00 00                	add    BYTE PTR [rax],al
 7c0:	70 16                	jo     7d8 <_init-0xd8>
 7c2:	20 00                	and    BYTE PTR [rax],al
 7c4:	00 00                	add    BYTE PTR [rax],al
 7c6:	00 00                	add    BYTE PTR [rax],al
 7c8:	07                   	(bad)  
 7c9:	00 00                	add    BYTE PTR [rax],al
 7cb:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 7d1 <_init-0xdf>
 7d1:	00 00                	add    BYTE PTR [rax],al
 7d3:	00 00                	add    BYTE PTR [rax],al
 7d5:	00 00                	add    BYTE PTR [rax],al
 7d7:	00 78 16             	add    BYTE PTR [rax+0x16],bh
 7da:	20 00                	and    BYTE PTR [rax],al
 7dc:	00 00                	add    BYTE PTR [rax],al
 7de:	00 00                	add    BYTE PTR [rax],al
 7e0:	07                   	(bad)  
 7e1:	00 00                	add    BYTE PTR [rax],al
 7e3:	00 06                	add    BYTE PTR [rsi],al
	...
 7ed:	00 00                	add    BYTE PTR [rax],al
 7ef:	00 80 16 20 00 00    	add    BYTE PTR [rax+0x2016],al
 7f5:	00 00                	add    BYTE PTR [rax],al
 7f7:	00 07                	add    BYTE PTR [rdi],al
 7f9:	00 00                	add    BYTE PTR [rax],al
 7fb:	00 07                	add    BYTE PTR [rdi],al
	...
 805:	00 00                	add    BYTE PTR [rax],al
 807:	00 88 16 20 00 00    	add    BYTE PTR [rax+0x2016],cl
 80d:	00 00                	add    BYTE PTR [rax],al
 80f:	00 07                	add    BYTE PTR [rdi],al
 811:	00 00                	add    BYTE PTR [rax],al
 813:	00 08                	add    BYTE PTR [rax],cl
	...
 81d:	00 00                	add    BYTE PTR [rax],al
 81f:	00 90 16 20 00 00    	add    BYTE PTR [rax+0x2016],dl
 825:	00 00                	add    BYTE PTR [rax],al
 827:	00 07                	add    BYTE PTR [rdi],al
 829:	00 00                	add    BYTE PTR [rax],al
 82b:	00 09                	add    BYTE PTR [rcx],cl
	...
 835:	00 00                	add    BYTE PTR [rax],al
 837:	00 98 16 20 00 00    	add    BYTE PTR [rax+0x2016],bl
 83d:	00 00                	add    BYTE PTR [rax],al
 83f:	00 07                	add    BYTE PTR [rdi],al
 841:	00 00                	add    BYTE PTR [rax],al
 843:	00 0a                	add    BYTE PTR [rdx],cl
	...
 84d:	00 00                	add    BYTE PTR [rax],al
 84f:	00 a0 16 20 00 00    	add    BYTE PTR [rax+0x2016],ah
 855:	00 00                	add    BYTE PTR [rax],al
 857:	00 07                	add    BYTE PTR [rdi],al
 859:	00 00                	add    BYTE PTR [rax],al
 85b:	00 0b                	add    BYTE PTR [rbx],cl
	...
 865:	00 00                	add    BYTE PTR [rax],al
 867:	00 a8 16 20 00 00    	add    BYTE PTR [rax+0x2016],ch
 86d:	00 00                	add    BYTE PTR [rax],al
 86f:	00 07                	add    BYTE PTR [rdi],al
 871:	00 00                	add    BYTE PTR [rax],al
 873:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 879 <_init-0x37>
 879:	00 00                	add    BYTE PTR [rax],al
 87b:	00 00                	add    BYTE PTR [rax],al
 87d:	00 00                	add    BYTE PTR [rax],al
 87f:	00 b0 16 20 00 00    	add    BYTE PTR [rax+0x2016],dh
 885:	00 00                	add    BYTE PTR [rax],al
 887:	00 07                	add    BYTE PTR [rdi],al
 889:	00 00                	add    BYTE PTR [rax],al
 88b:	00 0e                	add    BYTE PTR [rsi],cl
	...
 895:	00 00                	add    BYTE PTR [rax],al
 897:	00 b8 16 20 00 00    	add    BYTE PTR [rax+0x2016],bh
 89d:	00 00                	add    BYTE PTR [rax],al
 89f:	00 07                	add    BYTE PTR [rdi],al
 8a1:	00 00                	add    BYTE PTR [rax],al
 8a3:	00 10                	add    BYTE PTR [rax],dl
	...

Disassembly of section .init:

00000000000008b0 <_init>:
 8b0:	48 83 ec 08          	sub    rsp,0x8
 8b4:	48 8b 05 6d 0d 20 00 	mov    rax,QWORD PTR [rip+0x200d6d]        # 201628 <_DYNAMIC+0x1e8>
 8bb:	48 85 c0             	test   rax,rax
 8be:	74 05                	je     8c5 <_init+0x15>
 8c0:	e8 db 00 00 00       	call   9a0 <atoi@plt+0x10>
 8c5:	48 83 c4 08          	add    rsp,0x8
 8c9:	c3                   	ret    

Disassembly of section .plt:

00000000000008d0 <free@plt-0x10>:
 8d0:	ff 35 7a 0d 20 00    	push   QWORD PTR [rip+0x200d7a]        # 201650 <_GLOBAL_OFFSET_TABLE_+0x8>
 8d6:	ff 25 7c 0d 20 00    	jmp    QWORD PTR [rip+0x200d7c]        # 201658 <_GLOBAL_OFFSET_TABLE_+0x10>
 8dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000008e0 <free@plt>:
 8e0:	ff 25 7a 0d 20 00    	jmp    QWORD PTR [rip+0x200d7a]        # 201660 <_GLOBAL_OFFSET_TABLE_+0x18>
 8e6:	68 00 00 00 00       	push   0x0
 8eb:	e9 e0 ff ff ff       	jmp    8d0 <_init+0x20>

00000000000008f0 <puts@plt>:
 8f0:	ff 25 72 0d 20 00    	jmp    QWORD PTR [rip+0x200d72]        # 201668 <_GLOBAL_OFFSET_TABLE_+0x20>
 8f6:	68 01 00 00 00       	push   0x1
 8fb:	e9 d0 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000900 <__stack_chk_fail@plt>:
 900:	ff 25 6a 0d 20 00    	jmp    QWORD PTR [rip+0x200d6a]        # 201670 <_GLOBAL_OFFSET_TABLE_+0x28>
 906:	68 02 00 00 00       	push   0x2
 90b:	e9 c0 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000910 <setbuf@plt>:
 910:	ff 25 62 0d 20 00    	jmp    QWORD PTR [rip+0x200d62]        # 201678 <_GLOBAL_OFFSET_TABLE_+0x30>
 916:	68 03 00 00 00       	push   0x3
 91b:	e9 b0 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000920 <strchr@plt>:
 920:	ff 25 5a 0d 20 00    	jmp    QWORD PTR [rip+0x200d5a]        # 201680 <_GLOBAL_OFFSET_TABLE_+0x38>
 926:	68 04 00 00 00       	push   0x4
 92b:	e9 a0 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000930 <printf@plt>:
 930:	ff 25 52 0d 20 00    	jmp    QWORD PTR [rip+0x200d52]        # 201688 <_GLOBAL_OFFSET_TABLE_+0x40>
 936:	68 05 00 00 00       	push   0x5
 93b:	e9 90 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000940 <__libc_start_main@plt>:
 940:	ff 25 4a 0d 20 00    	jmp    QWORD PTR [rip+0x200d4a]        # 201690 <_GLOBAL_OFFSET_TABLE_+0x48>
 946:	68 06 00 00 00       	push   0x6
 94b:	e9 80 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000950 <fgets@plt>:
 950:	ff 25 42 0d 20 00    	jmp    QWORD PTR [rip+0x200d42]        # 201698 <_GLOBAL_OFFSET_TABLE_+0x50>
 956:	68 07 00 00 00       	push   0x7
 95b:	e9 70 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000960 <calloc@plt>:
 960:	ff 25 3a 0d 20 00    	jmp    QWORD PTR [rip+0x200d3a]        # 2016a0 <_GLOBAL_OFFSET_TABLE_+0x58>
 966:	68 08 00 00 00       	push   0x8
 96b:	e9 60 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000970 <prctl@plt>:
 970:	ff 25 32 0d 20 00    	jmp    QWORD PTR [rip+0x200d32]        # 2016a8 <_GLOBAL_OFFSET_TABLE_+0x60>
 976:	68 09 00 00 00       	push   0x9
 97b:	e9 50 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000980 <perror@plt>:
 980:	ff 25 2a 0d 20 00    	jmp    QWORD PTR [rip+0x200d2a]        # 2016b0 <_GLOBAL_OFFSET_TABLE_+0x68>
 986:	68 0a 00 00 00       	push   0xa
 98b:	e9 40 ff ff ff       	jmp    8d0 <_init+0x20>

0000000000000990 <atoi@plt>:
 990:	ff 25 22 0d 20 00    	jmp    QWORD PTR [rip+0x200d22]        # 2016b8 <_GLOBAL_OFFSET_TABLE_+0x70>
 996:	68 0b 00 00 00       	push   0xb
 99b:	e9 30 ff ff ff       	jmp    8d0 <_init+0x20>

Disassembly of section .plt.got:

00000000000009a0 <.plt.got>:
 9a0:	ff 25 82 0c 20 00    	jmp    QWORD PTR [rip+0x200c82]        # 201628 <_DYNAMIC+0x1e8>
 9a6:	66 90                	xchg   ax,ax
 9a8:	ff 25 92 0c 20 00    	jmp    QWORD PTR [rip+0x200c92]        # 201640 <_DYNAMIC+0x200>
 9ae:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000009b0 <_start>:
     9b0:	31 ed                	xor    ebp,ebp
     9b2:	49 89 d1             	mov    r9,rdx
     9b5:	5e                   	pop    rsi
     9b6:	48 89 e2             	mov    rdx,rsp
     9b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     9bd:	50                   	push   rax
     9be:	54                   	push   rsp
     9bf:	4c 8d 05 ca 06 00 00 	lea    r8,[rip+0x6ca]        # 1090 <__libc_csu_fini>
     9c6:	48 8d 0d 53 06 00 00 	lea    rcx,[rip+0x653]        # 1020 <__libc_csu_init>
     9cd:	48 8d 3d c3 02 00 00 	lea    rdi,[rip+0x2c3]        # c97 <main>
     9d4:	e8 67 ff ff ff       	call   940 <__libc_start_main@plt>
     9d9:	f4                   	hlt    
     9da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000009e0 <deregister_tm_clones>:
     9e0:	48 8d 3d e9 0c 20 00 	lea    rdi,[rip+0x200ce9]        # 2016d0 <__TMC_END__>
     9e7:	48 8d 05 e9 0c 20 00 	lea    rax,[rip+0x200ce9]        # 2016d7 <__TMC_END__+0x7>
     9ee:	55                   	push   rbp
     9ef:	48 29 f8             	sub    rax,rdi
     9f2:	48 89 e5             	mov    rbp,rsp
     9f5:	48 83 f8 0e          	cmp    rax,0xe
     9f9:	76 15                	jbe    a10 <deregister_tm_clones+0x30>
     9fb:	48 8b 05 1e 0c 20 00 	mov    rax,QWORD PTR [rip+0x200c1e]        # 201620 <_DYNAMIC+0x1e0>
     a02:	48 85 c0             	test   rax,rax
     a05:	74 09                	je     a10 <deregister_tm_clones+0x30>
     a07:	5d                   	pop    rbp
     a08:	ff e0                	jmp    rax
     a0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     a10:	5d                   	pop    rbp
     a11:	c3                   	ret    
     a12:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a1d:	00 00 00 

0000000000000a20 <register_tm_clones>:
     a20:	48 8d 3d a9 0c 20 00 	lea    rdi,[rip+0x200ca9]        # 2016d0 <__TMC_END__>
     a27:	48 8d 35 a2 0c 20 00 	lea    rsi,[rip+0x200ca2]        # 2016d0 <__TMC_END__>
     a2e:	55                   	push   rbp
     a2f:	48 29 fe             	sub    rsi,rdi
     a32:	48 89 e5             	mov    rbp,rsp
     a35:	48 c1 fe 03          	sar    rsi,0x3
     a39:	48 89 f0             	mov    rax,rsi
     a3c:	48 c1 e8 3f          	shr    rax,0x3f
     a40:	48 01 c6             	add    rsi,rax
     a43:	48 d1 fe             	sar    rsi,1
     a46:	74 18                	je     a60 <register_tm_clones+0x40>
     a48:	48 8b 05 e9 0b 20 00 	mov    rax,QWORD PTR [rip+0x200be9]        # 201638 <_DYNAMIC+0x1f8>
     a4f:	48 85 c0             	test   rax,rax
     a52:	74 0c                	je     a60 <register_tm_clones+0x40>
     a54:	5d                   	pop    rbp
     a55:	ff e0                	jmp    rax
     a57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     a5e:	00 00 
     a60:	5d                   	pop    rbp
     a61:	c3                   	ret    
     a62:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a6d:	00 00 00 

0000000000000a70 <__do_global_dtors_aux>:
     a70:	80 3d 91 0c 20 00 00 	cmp    BYTE PTR [rip+0x200c91],0x0        # 201708 <completed.7594>
     a77:	75 27                	jne    aa0 <__do_global_dtors_aux+0x30>
     a79:	48 83 3d bf 0b 20 00 	cmp    QWORD PTR [rip+0x200bbf],0x0        # 201640 <_DYNAMIC+0x200>
     a80:	00 
     a81:	55                   	push   rbp
     a82:	48 89 e5             	mov    rbp,rsp
     a85:	74 0c                	je     a93 <__do_global_dtors_aux+0x23>
     a87:	48 8b 3d 3a 0c 20 00 	mov    rdi,QWORD PTR [rip+0x200c3a]        # 2016c8 <__dso_handle>
     a8e:	e8 15 ff ff ff       	call   9a8 <atoi@plt+0x18>
     a93:	e8 48 ff ff ff       	call   9e0 <deregister_tm_clones>
     a98:	5d                   	pop    rbp
     a99:	c6 05 68 0c 20 00 01 	mov    BYTE PTR [rip+0x200c68],0x1        # 201708 <completed.7594>
     aa0:	f3 c3                	repz ret 
     aa2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     aa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     aad:	00 00 00 

0000000000000ab0 <frame_dummy>:
     ab0:	48 8d 3d 81 09 20 00 	lea    rdi,[rip+0x200981]        # 201438 <__JCR_END__>
     ab7:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
     abb:	75 0b                	jne    ac8 <frame_dummy+0x18>
     abd:	e9 5e ff ff ff       	jmp    a20 <register_tm_clones>
     ac2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     ac8:	48 8b 05 61 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b61]        # 201630 <_DYNAMIC+0x1f0>
     acf:	48 85 c0             	test   rax,rax
     ad2:	74 e9                	je     abd <frame_dummy+0xd>
     ad4:	55                   	push   rbp
     ad5:	48 89 e5             	mov    rbp,rsp
     ad8:	ff d0                	call   rax
     ada:	5d                   	pop    rbp
     adb:	e9 40 ff ff ff       	jmp    a20 <register_tm_clones>

0000000000000ae0 <init>:
     ae0:	55                   	push   rbp
     ae1:	48 89 e5             	mov    rbp,rsp
     ae4:	48 8b 05 f5 0b 20 00 	mov    rax,QWORD PTR [rip+0x200bf5]        # 2016e0 <stdout@@GLIBC_2.2.5>
     aeb:	be 00 00 00 00       	mov    esi,0x0
     af0:	48 89 c7             	mov    rdi,rax
     af3:	e8 18 fe ff ff       	call   910 <setbuf@plt>
     af8:	48 8b 05 01 0c 20 00 	mov    rax,QWORD PTR [rip+0x200c01]        # 201700 <stderr@@GLIBC_2.2.5>
     aff:	be 00 00 00 00       	mov    esi,0x0
     b04:	48 89 c7             	mov    rdi,rax
     b07:	e8 04 fe ff ff       	call   910 <setbuf@plt>
     b0c:	e8 07 00 00 00       	call   b18 <set_seccomp>
     b11:	b8 00 00 00 00       	mov    eax,0x0
     b16:	5d                   	pop    rbp
     b17:	c3                   	ret    

0000000000000b18 <set_seccomp>:
     b18:	55                   	push   rbp
     b19:	48 89 e5             	mov    rbp,rsp
     b1c:	48 83 ec 70          	sub    rsp,0x70
     b20:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     b27:	00 00 
     b29:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     b2d:	31 c0                	xor    eax,eax
     b2f:	66 c7 45 a0 20 00    	mov    WORD PTR [rbp-0x60],0x20
     b35:	c6 45 a2 00          	mov    BYTE PTR [rbp-0x5e],0x0
     b39:	c6 45 a3 00          	mov    BYTE PTR [rbp-0x5d],0x0
     b3d:	c7 45 a4 04 00 00 00 	mov    DWORD PTR [rbp-0x5c],0x4
     b44:	66 c7 45 a8 15 00    	mov    WORD PTR [rbp-0x58],0x15
     b4a:	c6 45 aa 01          	mov    BYTE PTR [rbp-0x56],0x1
     b4e:	c6 45 ab 00          	mov    BYTE PTR [rbp-0x55],0x0
     b52:	c7 45 ac 3e 00 00 c0 	mov    DWORD PTR [rbp-0x54],0xc000003e
     b59:	66 c7 45 b0 06 00    	mov    WORD PTR [rbp-0x50],0x6
     b5f:	c6 45 b2 00          	mov    BYTE PTR [rbp-0x4e],0x0
     b63:	c6 45 b3 00          	mov    BYTE PTR [rbp-0x4d],0x0
     b67:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x0
     b6e:	66 c7 45 b8 20 00    	mov    WORD PTR [rbp-0x48],0x20
     b74:	c6 45 ba 00          	mov    BYTE PTR [rbp-0x46],0x0
     b78:	c6 45 bb 00          	mov    BYTE PTR [rbp-0x45],0x0
     b7c:	c7 45 bc 00 00 00 00 	mov    DWORD PTR [rbp-0x44],0x0
     b83:	66 c7 45 c0 35 00    	mov    WORD PTR [rbp-0x40],0x35
     b89:	c6 45 c2 00          	mov    BYTE PTR [rbp-0x3e],0x0
     b8d:	c6 45 c3 01          	mov    BYTE PTR [rbp-0x3d],0x1
     b91:	c7 45 c4 00 00 00 40 	mov    DWORD PTR [rbp-0x3c],0x40000000
     b98:	66 c7 45 c8 06 00    	mov    WORD PTR [rbp-0x38],0x6
     b9e:	c6 45 ca 00          	mov    BYTE PTR [rbp-0x36],0x0
     ba2:	c6 45 cb 00          	mov    BYTE PTR [rbp-0x35],0x0
     ba6:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
     bad:	66 c7 45 d0 15 00    	mov    WORD PTR [rbp-0x30],0x15
     bb3:	c6 45 d2 01          	mov    BYTE PTR [rbp-0x2e],0x1
     bb7:	c6 45 d3 00          	mov    BYTE PTR [rbp-0x2d],0x0
     bbb:	c7 45 d4 02 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x2
     bc2:	66 c7 45 d8 15 00    	mov    WORD PTR [rbp-0x28],0x15
     bc8:	c6 45 da 00          	mov    BYTE PTR [rbp-0x26],0x0
     bcc:	c6 45 db 01          	mov    BYTE PTR [rbp-0x25],0x1
     bd0:	c7 45 dc 01 01 00 00 	mov    DWORD PTR [rbp-0x24],0x101
     bd7:	66 c7 45 e0 06 00    	mov    WORD PTR [rbp-0x20],0x6
     bdd:	c6 45 e2 00          	mov    BYTE PTR [rbp-0x1e],0x0
     be1:	c6 45 e3 00          	mov    BYTE PTR [rbp-0x1d],0x0
     be5:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
     bec:	66 c7 45 e8 06 00    	mov    WORD PTR [rbp-0x18],0x6
     bf2:	c6 45 ea 00          	mov    BYTE PTR [rbp-0x16],0x0
     bf6:	c6 45 eb 00          	mov    BYTE PTR [rbp-0x15],0x0
     bfa:	c7 45 ec 00 00 ff 7f 	mov    DWORD PTR [rbp-0x14],0x7fff0000
     c01:	66 c7 45 90 0a 00    	mov    WORD PTR [rbp-0x70],0xa
     c07:	48 8d 45 a0          	lea    rax,[rbp-0x60]
     c0b:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
     c0f:	41 b8 00 00 00 00    	mov    r8d,0x0
     c15:	b9 00 00 00 00       	mov    ecx,0x0
     c1a:	ba 00 00 00 00       	mov    edx,0x0
     c1f:	be 01 00 00 00       	mov    esi,0x1
     c24:	bf 26 00 00 00       	mov    edi,0x26
     c29:	b8 00 00 00 00       	mov    eax,0x0
     c2e:	e8 3d fd ff ff       	call   970 <prctl@plt>
     c33:	85 c0                	test   eax,eax
     c35:	74 13                	je     c4a <set_seccomp+0x132>
     c37:	48 8d 3d 6a 04 00 00 	lea    rdi,[rip+0x46a]        # 10a8 <_IO_stdin_used+0x8>
     c3e:	e8 3d fd ff ff       	call   980 <perror@plt>
     c43:	b8 ff ff ff ff       	mov    eax,0xffffffff
     c48:	eb 37                	jmp    c81 <set_seccomp+0x169>
     c4a:	48 8d 45 90          	lea    rax,[rbp-0x70]
     c4e:	48 89 c2             	mov    rdx,rax
     c51:	be 02 00 00 00       	mov    esi,0x2
     c56:	bf 16 00 00 00       	mov    edi,0x16
     c5b:	b8 00 00 00 00       	mov    eax,0x0
     c60:	e8 0b fd ff ff       	call   970 <prctl@plt>
     c65:	85 c0                	test   eax,eax
     c67:	74 13                	je     c7c <set_seccomp+0x164>
     c69:	48 8d 3d 52 04 00 00 	lea    rdi,[rip+0x452]        # 10c2 <_IO_stdin_used+0x22>
     c70:	e8 0b fd ff ff       	call   980 <perror@plt>
     c75:	b8 ff ff ff ff       	mov    eax,0xffffffff
     c7a:	eb 05                	jmp    c81 <set_seccomp+0x169>
     c7c:	b8 00 00 00 00       	mov    eax,0x0
     c81:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
     c85:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
     c8c:	00 00 
     c8e:	74 05                	je     c95 <set_seccomp+0x17d>
     c90:	e8 6b fc ff ff       	call   900 <__stack_chk_fail@plt>
     c95:	c9                   	leave  
     c96:	c3                   	ret    

0000000000000c97 <main>:
     c97:	55                   	push   rbp
     c98:	48 89 e5             	mov    rbp,rsp
     c9b:	48 81 ec 90 00 00 00 	sub    rsp,0x90
     ca2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     ca9:	00 00 
     cab:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     caf:	31 c0                	xor    eax,eax
     cb1:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
     cb8:	b8 00 00 00 00       	mov    eax,0x0
     cbd:	b9 10 00 00 00       	mov    ecx,0x10
     cc2:	48 89 d7             	mov    rdi,rdx
     cc5:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
     cc8:	48 8d 3d 08 04 00 00 	lea    rdi,[rip+0x408]        # 10d7 <_IO_stdin_used+0x37>
     ccf:	e8 1c fc ff ff       	call   8f0 <puts@plt>
     cd4:	e8 85 00 00 00       	call   d5e <menu>
     cd9:	83 f8 01             	cmp    eax,0x1
     cdc:	74 17                	je     cf5 <main+0x5e>
     cde:	83 f8 01             	cmp    eax,0x1
     ce1:	7f 06                	jg     ce9 <main+0x52>
     ce3:	85 c0                	test   eax,eax
     ce5:	74 4f                	je     d36 <main+0x9f>
     ce7:	eb 3f                	jmp    d28 <main+0x91>
     ce9:	83 f8 02             	cmp    eax,0x2
     cec:	74 18                	je     d06 <main+0x6f>
     cee:	83 f8 03             	cmp    eax,0x3
     cf1:	74 24                	je     d17 <main+0x80>
     cf3:	eb 33                	jmp    d28 <main+0x91>
     cf5:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     cfc:	48 89 c7             	mov    rdi,rax
     cff:	e8 76 00 00 00       	call   d7a <add>
     d04:	eb 2e                	jmp    d34 <main+0x9d>
     d06:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     d0d:	48 89 c7             	mov    rdi,rax
     d10:	e8 31 01 00 00       	call   e46 <show>
     d15:	eb 1d                	jmp    d34 <main+0x9d>
     d17:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     d1e:	48 89 c7             	mov    rdi,rax
     d21:	e8 9e 01 00 00       	call   ec4 <delete>
     d26:	eb 0c                	jmp    d34 <main+0x9d>
     d28:	48 8d 3d c6 03 00 00 	lea    rdi,[rip+0x3c6]        # 10f5 <_IO_stdin_used+0x55>
     d2f:	e8 bc fb ff ff       	call   8f0 <puts@plt>
     d34:	eb 9e                	jmp    cd4 <main+0x3d>
     d36:	90                   	nop
     d37:	48 8d 3d c4 03 00 00 	lea    rdi,[rip+0x3c4]        # 1102 <_IO_stdin_used+0x62>
     d3e:	e8 ad fb ff ff       	call   8f0 <puts@plt>
     d43:	b8 00 00 00 00       	mov    eax,0x0
     d48:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
     d4c:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
     d53:	00 00 
     d55:	74 05                	je     d5c <main+0xc5>
     d57:	e8 a4 fb ff ff       	call   900 <__stack_chk_fail@plt>
     d5c:	c9                   	leave  
     d5d:	c3                   	ret    

0000000000000d5e <menu>:
     d5e:	55                   	push   rbp
     d5f:	48 89 e5             	mov    rbp,rsp
     d62:	48 8d 3d 9f 03 00 00 	lea    rdi,[rip+0x39f]        # 1108 <_IO_stdin_used+0x68>
     d69:	b8 00 00 00 00       	mov    eax,0x0
     d6e:	e8 bd fb ff ff       	call   930 <printf@plt>
     d73:	e8 4b 02 00 00       	call   fc3 <getint>
     d78:	5d                   	pop    rbp
     d79:	c3                   	ret    

0000000000000d7a <add>:
     d7a:	55                   	push   rbp
     d7b:	48 89 e5             	mov    rbp,rsp
     d7e:	53                   	push   rbx
     d7f:	48 83 ec 28          	sub    rsp,0x28
     d83:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
     d87:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
     d8e:	eb 20                	jmp    db0 <add+0x36>
     d90:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     d93:	48 98                	cdqe   
     d95:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     d9c:	00 
     d9d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
     da1:	48 01 d0             	add    rax,rdx
     da4:	48 8b 00             	mov    rax,QWORD PTR [rax]
     da7:	48 85 c0             	test   rax,rax
     daa:	74 0c                	je     db8 <add+0x3e>
     dac:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
     db0:	83 7d ec 0f          	cmp    DWORD PTR [rbp-0x14],0xf
     db4:	7e da                	jle    d90 <add+0x16>
     db6:	eb 01                	jmp    db9 <add+0x3f>
     db8:	90                   	nop
     db9:	83 7d ec 0f          	cmp    DWORD PTR [rbp-0x14],0xf
     dbd:	7e 0e                	jle    dcd <add+0x53>
     dbf:	48 8d 3d 6c 03 00 00 	lea    rdi,[rip+0x36c]        # 1132 <_IO_stdin_used+0x92>
     dc6:	e8 25 fb ff ff       	call   8f0 <puts@plt>
     dcb:	eb 72                	jmp    e3f <add+0xc5>
     dcd:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     dd0:	48 98                	cdqe   
     dd2:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     dd9:	00 
     dda:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
     dde:	48 8d 1c 02          	lea    rbx,[rdx+rax*1]
     de2:	be 01 00 00 00       	mov    esi,0x1
     de7:	bf 28 00 00 00       	mov    edi,0x28
     dec:	e8 6f fb ff ff       	call   960 <calloc@plt>
     df1:	48 89 03             	mov    QWORD PTR [rbx],rax
     df4:	48 8d 3d 48 03 00 00 	lea    rdi,[rip+0x348]        # 1143 <_IO_stdin_used+0xa3>
     dfb:	b8 00 00 00 00       	mov    eax,0x0
     e00:	e8 2b fb ff ff       	call   930 <printf@plt>
     e05:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     e08:	48 98                	cdqe   
     e0a:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     e11:	00 
     e12:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
     e16:	48 01 d0             	add    rax,rdx
     e19:	48 8b 00             	mov    rax,QWORD PTR [rax]
     e1c:	be 28 00 00 00       	mov    esi,0x28
     e21:	48 89 c7             	mov    rdi,rax
     e24:	e8 3c 01 00 00       	call   f65 <getnline>
     e29:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
     e2c:	89 c6                	mov    esi,eax
     e2e:	48 8d 3d 1c 03 00 00 	lea    rdi,[rip+0x31c]        # 1151 <_IO_stdin_used+0xb1>
     e35:	b8 00 00 00 00       	mov    eax,0x0
     e3a:	e8 f1 fa ff ff       	call   930 <printf@plt>
     e3f:	48 83 c4 28          	add    rsp,0x28
     e43:	5b                   	pop    rbx
     e44:	5d                   	pop    rbp
     e45:	c3                   	ret    

0000000000000e46 <show>:
     e46:	55                   	push   rbp
     e47:	48 89 e5             	mov    rbp,rsp
     e4a:	48 83 ec 20          	sub    rsp,0x20
     e4e:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
     e52:	48 8d 3d 07 03 00 00 	lea    rdi,[rip+0x307]        # 1160 <_IO_stdin_used+0xc0>
     e59:	b8 00 00 00 00       	mov    eax,0x0
     e5e:	e8 cd fa ff ff       	call   930 <printf@plt>
     e63:	e8 5b 01 00 00       	call   fc3 <getint>
     e68:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
     e6b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     e6e:	48 98                	cdqe   
     e70:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     e77:	00 
     e78:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     e7c:	48 01 d0             	add    rax,rdx
     e7f:	48 8b 00             	mov    rax,QWORD PTR [rax]
     e82:	48 85 c0             	test   rax,rax
     e85:	75 0e                	jne    e95 <show+0x4f>
     e87:	48 8d 3d de 02 00 00 	lea    rdi,[rip+0x2de]        # 116c <_IO_stdin_used+0xcc>
     e8e:	e8 5d fa ff ff       	call   8f0 <puts@plt>
     e93:	eb 2d                	jmp    ec2 <show+0x7c>
     e95:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     e98:	48 98                	cdqe   
     e9a:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     ea1:	00 
     ea2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     ea6:	48 01 d0             	add    rax,rdx
     ea9:	48 8b 10             	mov    rdx,QWORD PTR [rax]
     eac:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     eaf:	89 c6                	mov    esi,eax
     eb1:	48 8d 3d cc 02 00 00 	lea    rdi,[rip+0x2cc]        # 1184 <_IO_stdin_used+0xe4>
     eb8:	b8 00 00 00 00       	mov    eax,0x0
     ebd:	e8 6e fa ff ff       	call   930 <printf@plt>
     ec2:	c9                   	leave  
     ec3:	c3                   	ret    

0000000000000ec4 <delete>:
     ec4:	55                   	push   rbp
     ec5:	48 89 e5             	mov    rbp,rsp
     ec8:	48 83 ec 20          	sub    rsp,0x20
     ecc:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
     ed0:	48 8d 3d 89 02 00 00 	lea    rdi,[rip+0x289]        # 1160 <_IO_stdin_used+0xc0>
     ed7:	b8 00 00 00 00       	mov    eax,0x0
     edc:	e8 4f fa ff ff       	call   930 <printf@plt>
     ee1:	e8 dd 00 00 00       	call   fc3 <getint>
     ee6:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
     ee9:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     eec:	48 98                	cdqe   
     eee:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     ef5:	00 
     ef6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     efa:	48 01 d0             	add    rax,rdx
     efd:	48 8b 00             	mov    rax,QWORD PTR [rax]
     f00:	48 85 c0             	test   rax,rax
     f03:	75 0e                	jne    f13 <delete+0x4f>
     f05:	48 8d 3d 60 02 00 00 	lea    rdi,[rip+0x260]        # 116c <_IO_stdin_used+0xcc>
     f0c:	e8 df f9 ff ff       	call   8f0 <puts@plt>
     f11:	eb 50                	jmp    f63 <delete+0x9f>
     f13:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     f16:	48 98                	cdqe   
     f18:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     f1f:	00 
     f20:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     f24:	48 01 d0             	add    rax,rdx
     f27:	48 8b 00             	mov    rax,QWORD PTR [rax]
     f2a:	48 89 c7             	mov    rdi,rax
     f2d:	e8 ae f9 ff ff       	call   8e0 <free@plt>
     f32:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     f35:	48 98                	cdqe   
     f37:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     f3e:	00 
     f3f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     f43:	48 01 d0             	add    rax,rdx
     f46:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
     f4d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     f50:	89 c6                	mov    esi,eax
     f52:	48 8d 3d 3c 02 00 00 	lea    rdi,[rip+0x23c]        # 1195 <_IO_stdin_used+0xf5>
     f59:	b8 00 00 00 00       	mov    eax,0x0
     f5e:	e8 cd f9 ff ff       	call   930 <printf@plt>
     f63:	c9                   	leave  
     f64:	c3                   	ret    

0000000000000f65 <getnline>:
     f65:	55                   	push   rbp
     f66:	48 89 e5             	mov    rbp,rsp
     f69:	48 83 ec 20          	sub    rsp,0x20
     f6d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
     f71:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
     f74:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
     f78:	79 07                	jns    f81 <getnline+0x1c>
     f7a:	b8 00 00 00 00       	mov    eax,0x0
     f7f:	eb 40                	jmp    fc1 <getnline+0x5c>
     f81:	48 8b 15 68 07 20 00 	mov    rdx,QWORD PTR [rip+0x200768]        # 2016f0 <stdin@@GLIBC_2.2.5>
     f88:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
     f8b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     f8f:	89 ce                	mov    esi,ecx
     f91:	48 89 c7             	mov    rdi,rax
     f94:	e8 b7 f9 ff ff       	call   950 <fgets@plt>
     f99:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
     f9d:	be 0a 00 00 00       	mov    esi,0xa
     fa2:	48 89 c7             	mov    rdi,rax
     fa5:	e8 76 f9 ff ff       	call   920 <strchr@plt>
     faa:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     fae:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
     fb3:	74 07                	je     fbc <getnline+0x57>
     fb5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     fb9:	c6 00 00             	mov    BYTE PTR [rax],0x0
     fbc:	b8 01 00 00 00       	mov    eax,0x1
     fc1:	c9                   	leave  
     fc2:	c3                   	ret    

0000000000000fc3 <getint>:
     fc3:	55                   	push   rbp
     fc4:	48 89 e5             	mov    rbp,rsp
     fc7:	48 81 ec 90 00 00 00 	sub    rsp,0x90
     fce:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     fd5:	00 00 
     fd7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     fdb:	31 c0                	xor    eax,eax
     fdd:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     fe4:	be 80 00 00 00       	mov    esi,0x80
     fe9:	48 89 c7             	mov    rdi,rax
     fec:	e8 74 ff ff ff       	call   f65 <getnline>
     ff1:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
     ff8:	48 89 c7             	mov    rdi,rax
     ffb:	e8 90 f9 ff ff       	call   990 <atoi@plt>
    1000:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
    1004:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
    100b:	00 00 
    100d:	74 05                	je     1014 <getint+0x51>
    100f:	e8 ec f8 ff ff       	call   900 <__stack_chk_fail@plt>
    1014:	c9                   	leave  
    1015:	c3                   	ret    
    1016:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    101d:	00 00 00 

0000000000001020 <__libc_csu_init>:
    1020:	41 57                	push   r15
    1022:	41 56                	push   r14
    1024:	41 89 ff             	mov    r15d,edi
    1027:	41 55                	push   r13
    1029:	41 54                	push   r12
    102b:	4c 8d 25 ee 03 20 00 	lea    r12,[rip+0x2003ee]        # 201420 <__frame_dummy_init_array_entry>
    1032:	55                   	push   rbp
    1033:	48 8d 2d f6 03 20 00 	lea    rbp,[rip+0x2003f6]        # 201430 <__init_array_end>
    103a:	53                   	push   rbx
    103b:	49 89 f6             	mov    r14,rsi
    103e:	49 89 d5             	mov    r13,rdx
    1041:	4c 29 e5             	sub    rbp,r12
    1044:	48 83 ec 08          	sub    rsp,0x8
    1048:	48 c1 fd 03          	sar    rbp,0x3
    104c:	e8 5f f8 ff ff       	call   8b0 <_init>
    1051:	48 85 ed             	test   rbp,rbp
    1054:	74 20                	je     1076 <__libc_csu_init+0x56>
    1056:	31 db                	xor    ebx,ebx
    1058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    105f:	00 
    1060:	4c 89 ea             	mov    rdx,r13
    1063:	4c 89 f6             	mov    rsi,r14
    1066:	44 89 ff             	mov    edi,r15d
    1069:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    106d:	48 83 c3 01          	add    rbx,0x1
    1071:	48 39 eb             	cmp    rbx,rbp
    1074:	75 ea                	jne    1060 <__libc_csu_init+0x40>
    1076:	48 83 c4 08          	add    rsp,0x8
    107a:	5b                   	pop    rbx
    107b:	5d                   	pop    rbp
    107c:	41 5c                	pop    r12
    107e:	41 5d                	pop    r13
    1080:	41 5e                	pop    r14
    1082:	41 5f                	pop    r15
    1084:	c3                   	ret    
    1085:	90                   	nop
    1086:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    108d:	00 00 00 

0000000000001090 <__libc_csu_fini>:
    1090:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000001094 <_fini>:
    1094:	48 83 ec 08          	sub    rsp,0x8
    1098:	48 83 c4 08          	add    rsp,0x8
    109c:	c3                   	ret    

Disassembly of section .rodata:

00000000000010a0 <_IO_stdin_used>:
    10a0:	01 00                	add    DWORD PTR [rax],eax
    10a2:	02 00                	add    al,BYTE PTR [rax]
    10a4:	00 00                	add    BYTE PTR [rax],al
    10a6:	00 00                	add    BYTE PTR [rax],al
    10a8:	70 72                	jo     111c <_IO_stdin_used+0x7c>
    10aa:	63 74 6c 20          	movsxd esi,DWORD PTR [rsp+rbp*2+0x20]
    10ae:	50                   	push   rax
    10af:	52                   	push   rdx
    10b0:	5f                   	pop    rdi
    10b1:	53                   	push   rbx
    10b2:	45 54                	rex.RB push r12
    10b4:	5f                   	pop    rdi
    10b5:	4e                   	rex.WRX
    10b6:	4f 5f                	rex.WRXB pop r15
    10b8:	4e                   	rex.WRX
    10b9:	45 57                	rex.RB push r15
    10bb:	5f                   	pop    rdi
    10bc:	50                   	push   rax
    10bd:	52                   	push   rdx
    10be:	49 56                	rex.WB push r14
    10c0:	53                   	push   rbx
    10c1:	00 70 72             	add    BYTE PTR [rax+0x72],dh
    10c4:	63 74 6c 20          	movsxd esi,DWORD PTR [rsp+rbp*2+0x20]
    10c8:	50                   	push   rax
    10c9:	52                   	push   rdx
    10ca:	5f                   	pop    rdi
    10cb:	53                   	push   rbx
    10cc:	45 54                	rex.RB push r12
    10ce:	5f                   	pop    rdi
    10cf:	53                   	push   rbx
    10d0:	45                   	rex.RB
    10d1:	43                   	rex.XB
    10d2:	43                   	rex.XB
    10d3:	4f                   	rex.WRXB
    10d4:	4d 50                	rex.WRB push r8
    10d6:	00 3c 3c             	add    BYTE PTR [rsp+rdi*1],bh
    10d9:	3c 3c                	cmp    al,0x3c
    10db:	20 73 69             	and    BYTE PTR [rbx+0x69],dh
    10de:	6d                   	ins    DWORD PTR es:[rdi],dx
    10df:	70 6c                	jo     114d <_IO_stdin_used+0xad>
    10e1:	65 20 6d 65          	and    BYTE PTR gs:[rbp+0x65],ch
    10e5:	6d                   	ins    DWORD PTR es:[rdi],dx
    10e6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    10e7:	20 73 65             	and    BYTE PTR [rbx+0x65],dh
    10ea:	72 76                	jb     1162 <_IO_stdin_used+0xc2>
    10ec:	69 63 65 20 3e 3e 3e 	imul   esp,DWORD PTR [rbx+0x65],0x3e3e3e20
    10f3:	3e 00 57 72          	add    BYTE PTR ds:[rdi+0x72],dl
    10f7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    10f8:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    10f9:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
    10fd:	70 75                	jo     1174 <_IO_stdin_used+0xd4>
    10ff:	74 2e                	je     112f <_IO_stdin_used+0x8f>
    1101:	00 42 79             	add    BYTE PTR [rdx+0x79],al
    1104:	65 21 00             	and    DWORD PTR gs:[rax],eax
    1107:	00 0a                	add    BYTE PTR [rdx],cl
    1109:	4d                   	rex.WRB
    110a:	45                   	rex.RB
    110b:	4e 55                	rex.WRX push rbp
    110d:	0a 31                	or     dh,BYTE PTR [rcx]
    110f:	2e 20 41 64          	and    BYTE PTR cs:[rcx+0x64],al
    1113:	64 0a 32             	or     dh,BYTE PTR fs:[rdx]
    1116:	2e 20 53 68          	and    BYTE PTR cs:[rbx+0x68],dl
    111a:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    111b:	77 0a                	ja     1127 <_IO_stdin_used+0x87>
    111d:	33 2e                	xor    ebp,DWORD PTR [rsi]
    111f:	20 52 65             	and    BYTE PTR [rdx+0x65],dl
    1122:	6d                   	ins    DWORD PTR es:[rdi],dx
    1123:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1124:	76 65                	jbe    118b <_IO_stdin_used+0xeb>
    1126:	0a 30                	or     dh,BYTE PTR [rax]
    1128:	2e 20 45 78          	and    BYTE PTR cs:[rbp+0x78],al
    112c:	69 74 0a 3e 20 00 45 	imul   esi,DWORD PTR [rdx+rcx*1+0x3e],0x6e450020
    1133:	6e 
    1134:	74 72                	je     11a8 <__GNU_EH_FRAME_HDR>
    1136:	79 20                	jns    1158 <_IO_stdin_used+0xb8>
    1138:	69 73 20 46 55 4c 4c 	imul   esi,DWORD PTR [rbx+0x20],0x4c4c5546
    113f:	2e 2e 2e 00 49 6e    	cs cs add BYTE PTR cs:[rcx+0x6e],cl
    1145:	70 75                	jo     11bc <__GNU_EH_FRAME_HDR+0x14>
    1147:	74 20                	je     1169 <_IO_stdin_used+0xc9>
    1149:	6d                   	ins    DWORD PTR es:[rdi],dx
    114a:	65 6d                	gs ins DWORD PTR es:[rdi],dx
    114c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    114d:	20 3e                	and    BYTE PTR [rsi],bh
    114f:	20 00                	and    BYTE PTR [rax],al
    1151:	41                   	rex.B
    1152:	64 64 65 64 20 69 64 	fs fs gs and BYTE PTR fs:[rcx+0x64],ch
    1159:	3a 25 30 32 64 0a    	cmp    ah,BYTE PTR [rip+0xa643230]        # a64438f <_end+0xa442c7f>
    115f:	00 49 6e             	add    BYTE PTR [rcx+0x6e],cl
    1162:	70 75                	jo     11d9 <__GNU_EH_FRAME_HDR+0x31>
    1164:	74 20                	je     1186 <_IO_stdin_used+0xe6>
    1166:	69 64 20 3e 20 00 45 	imul   esp,DWORD PTR [rax+riz*1+0x3e],0x6e450020
    116d:	6e 
    116e:	74 72                	je     11e2 <__GNU_EH_FRAME_HDR+0x3a>
    1170:	79 20                	jns    1192 <_IO_stdin_used+0xf2>
    1172:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
    1174:	65 73 20             	gs jae 1197 <_IO_stdin_used+0xf7>
    1177:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1178:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1179:	74 20                	je     119b <_IO_stdin_used+0xfb>
    117b:	65 78 69             	gs js  11e7 <__GNU_EH_FRAME_HDR+0x3f>
    117e:	73 74                	jae    11f4 <__GNU_EH_FRAME_HDR+0x4c>
    1180:	2e 2e 2e 00 53 68    	cs cs add BYTE PTR cs:[rbx+0x68],dl
    1186:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1187:	77 20                	ja     11a9 <__GNU_EH_FRAME_HDR+0x1>
    1189:	69 64 3a 25 30 32 64 	imul   esp,DWORD PTR [rdx+rdi*1+0x25],0xa643230
    1190:	0a 
    1191:	25 73 0a 00 44       	and    eax,0x44000a73
    1196:	65 6c                	gs ins BYTE PTR es:[rdi],dx
    1198:	65 74 65             	gs je  1200 <__GNU_EH_FRAME_HDR+0x58>
    119b:	64 20 69 64          	and    BYTE PTR fs:[rcx+0x64],ch
    119f:	3a 25 30 32 64 0a    	cmp    ah,BYTE PTR [rip+0xa643230]        # a6443d5 <_end+0xa442cc5>
	...

Disassembly of section .eh_frame_hdr:

00000000000011a8 <__GNU_EH_FRAME_HDR>:
    11a8:	01 1b                	add    DWORD PTR [rbx],ebx
    11aa:	03 3b                	add    edi,DWORD PTR [rbx]
    11ac:	74 00                	je     11ae <__GNU_EH_FRAME_HDR+0x6>
    11ae:	00 00                	add    BYTE PTR [rax],al
    11b0:	0d 00 00 00 28       	or     eax,0x28000000
    11b5:	f7 ff                	idiv   edi
    11b7:	ff c0                	inc    eax
    11b9:	00 00                	add    BYTE PTR [rax],al
    11bb:	00 08                	add    BYTE PTR [rax],cl
    11bd:	f8                   	clc    
    11be:	ff                   	(bad)  
    11bf:	ff 90 00 00 00 38    	call   QWORD PTR [rax+0x38000000]
    11c5:	f9                   	stc    
    11c6:	ff                   	(bad)  
    11c7:	ff                   	(bad)  
    11c8:	e8 00 00 00 70       	call   700011cd <_end+0x6fdffabd>
    11cd:	f9                   	stc    
    11ce:	ff                   	(bad)  
    11cf:	ff 08                	dec    DWORD PTR [rax]
    11d1:	01 00                	add    DWORD PTR [rax],eax
    11d3:	00 ef                	add    bh,ch
    11d5:	fa                   	cli    
    11d6:	ff                   	(bad)  
    11d7:	ff 28                	jmp    FWORD PTR [rax]
    11d9:	01 00                	add    DWORD PTR [rax],eax
    11db:	00 b6 fb ff ff 48    	add    BYTE PTR [rsi+0x48fffffb],dh
    11e1:	01 00                	add    DWORD PTR [rax],eax
    11e3:	00 d2                	add    dl,dl
    11e5:	fb                   	sti    
    11e6:	ff                   	(bad)  
    11e7:	ff 68 01             	jmp    FWORD PTR [rax+0x1]
    11ea:	00 00                	add    BYTE PTR [rax],al
    11ec:	9e                   	sahf   
    11ed:	fc                   	cld    
    11ee:	ff                   	(bad)  
    11ef:	ff 90 01 00 00 1c    	call   QWORD PTR [rax+0x1c000001]
    11f5:	fd                   	std    
    11f6:	ff                   	(bad)  
    11f7:	ff b0 01 00 00 bd    	push   QWORD PTR [rax-0x42ffffff]
    11fd:	fd                   	std    
    11fe:	ff                   	(bad)  
    11ff:	ff d0                	call   rax
    1201:	01 00                	add    DWORD PTR [rax],eax
    1203:	00 1b                	add    BYTE PTR [rbx],bl
    1205:	fe                   	(bad)  
    1206:	ff                   	(bad)  
    1207:	ff f0                	push   rax
    1209:	01 00                	add    DWORD PTR [rax],eax
    120b:	00 78 fe             	add    BYTE PTR [rax-0x2],bh
    120e:	ff                   	(bad)  
    120f:	ff 10                	call   QWORD PTR [rax]
    1211:	02 00                	add    al,BYTE PTR [rax]
    1213:	00 e8                	add    al,ch
    1215:	fe                   	(bad)  
    1216:	ff                   	(bad)  
    1217:	ff 58 02             	call   FWORD PTR [rax+0x2]
	...

Disassembly of section .eh_frame:

0000000000001220 <__FRAME_END__-0x1f8>:
    1220:	14 00                	adc    al,0x0
    1222:	00 00                	add    BYTE PTR [rax],al
    1224:	00 00                	add    BYTE PTR [rax],al
    1226:	00 00                	add    BYTE PTR [rax],al
    1228:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    122b:	00 01                	add    BYTE PTR [rcx],al
    122d:	78 10                	js     123f <__GNU_EH_FRAME_HDR+0x97>
    122f:	01 1b                	add    DWORD PTR [rbx],ebx
    1231:	0c 07                	or     al,0x7
    1233:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
    1239:	00 00                	add    BYTE PTR [rax],al
    123b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    123e:	00 00                	add    BYTE PTR [rax],al
    1240:	70 f7                	jo     1239 <__GNU_EH_FRAME_HDR+0x91>
    1242:	ff                   	(bad)  
    1243:	ff 2a                	jmp    FWORD PTR [rdx]
	...
    124d:	00 00                	add    BYTE PTR [rax],al
    124f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    1252:	00 00                	add    BYTE PTR [rax],al
    1254:	00 00                	add    BYTE PTR [rax],al
    1256:	00 00                	add    BYTE PTR [rax],al
    1258:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    125b:	00 01                	add    BYTE PTR [rcx],al
    125d:	78 10                	js     126f <__GNU_EH_FRAME_HDR+0xc7>
    125f:	01 1b                	add    DWORD PTR [rbx],ebx
    1261:	0c 07                	or     al,0x7
    1263:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
    1269:	00 00                	add    BYTE PTR [rax],al
    126b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    126e:	00 00                	add    BYTE PTR [rax],al
    1270:	60                   	(bad)  
    1271:	f6 ff                	idiv   bh
    1273:	ff d0                	call   rax
    1275:	00 00                	add    BYTE PTR [rax],al
    1277:	00 00                	add    BYTE PTR [rax],al
    1279:	0e                   	(bad)  
    127a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    127d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    1280:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    1283:	80 00 3f             	add    BYTE PTR [rax],0x3f
    1286:	1a 3b                	sbb    bh,BYTE PTR [rbx]
    1288:	2a 33                	sub    dh,BYTE PTR [rbx]
    128a:	24 22                	and    al,0x22
    128c:	00 00                	add    BYTE PTR [rax],al
    128e:	00 00                	add    BYTE PTR [rax],al
    1290:	1c 00                	sbb    al,0x0
    1292:	00 00                	add    BYTE PTR [rax],al
    1294:	44 00 00             	add    BYTE PTR [rax],r8b
    1297:	00 48 f8             	add    BYTE PTR [rax-0x8],cl
    129a:	ff                   	(bad)  
    129b:	ff                   	(bad)  
    129c:	38 00                	cmp    BYTE PTR [rax],al
    129e:	00 00                	add    BYTE PTR [rax],al
    12a0:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    12a3:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    12a9:	73 0c                	jae    12b7 <__GNU_EH_FRAME_HDR+0x10f>
    12ab:	07                   	(bad)  
    12ac:	08 00                	or     BYTE PTR [rax],al
    12ae:	00 00                	add    BYTE PTR [rax],al
    12b0:	1c 00                	sbb    al,0x0
    12b2:	00 00                	add    BYTE PTR [rax],al
    12b4:	64 00 00             	add    BYTE PTR fs:[rax],al
    12b7:	00 60 f8             	add    BYTE PTR [rax-0x8],ah
    12ba:	ff                   	(bad)  
    12bb:	ff                   	(bad)  
    12bc:	7f 01                	jg     12bf <__GNU_EH_FRAME_HDR+0x117>
    12be:	00 00                	add    BYTE PTR [rax],al
    12c0:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    12c3:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    12c9:	03 7a 01             	add    edi,DWORD PTR [rdx+0x1]
    12cc:	0c 07                	or     al,0x7
    12ce:	08 00                	or     BYTE PTR [rax],al
    12d0:	1c 00                	sbb    al,0x0
    12d2:	00 00                	add    BYTE PTR [rax],al
    12d4:	84 00                	test   BYTE PTR [rax],al
    12d6:	00 00                	add    BYTE PTR [rax],al
    12d8:	bf f9 ff ff c7       	mov    edi,0xc7fffff9
    12dd:	00 00                	add    BYTE PTR [rax],al
    12df:	00 00                	add    BYTE PTR [rax],al
    12e1:	41 0e                	rex.B (bad) 
    12e3:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    12e9:	02 c2                	add    al,dl
    12eb:	0c 07                	or     al,0x7
    12ed:	08 00                	or     BYTE PTR [rax],al
    12ef:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    12f2:	00 00                	add    BYTE PTR [rax],al
    12f4:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    12f5:	00 00                	add    BYTE PTR [rax],al
    12f7:	00 66 fa             	add    BYTE PTR [rsi-0x6],ah
    12fa:	ff                   	(bad)  
    12fb:	ff 1c 00             	call   FWORD PTR [rax+rax*1]
    12fe:	00 00                	add    BYTE PTR [rax],al
    1300:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    1303:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1309:	57                   	push   rdi
    130a:	0c 07                	or     al,0x7
    130c:	08 00                	or     BYTE PTR [rax],al
    130e:	00 00                	add    BYTE PTR [rax],al
    1310:	24 00                	and    al,0x0
    1312:	00 00                	add    BYTE PTR [rax],al
    1314:	c4                   	(bad)  
    1315:	00 00                	add    BYTE PTR [rax],al
    1317:	00 62 fa             	add    BYTE PTR [rdx-0x6],ah
    131a:	ff                   	(bad)  
    131b:	ff cc                	dec    esp
    131d:	00 00                	add    BYTE PTR [rax],al
    131f:	00 00                	add    BYTE PTR [rax],al
    1321:	41 0e                	rex.B (bad) 
    1323:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1329:	45 83 03 02          	rex.RB add DWORD PTR [r11],0x2
    132d:	c2 0c 07             	ret    0x70c
    1330:	08 00                	or     BYTE PTR [rax],al
    1332:	00 00                	add    BYTE PTR [rax],al
    1334:	00 00                	add    BYTE PTR [rax],al
    1336:	00 00                	add    BYTE PTR [rax],al
    1338:	1c 00                	sbb    al,0x0
    133a:	00 00                	add    BYTE PTR [rax],al
    133c:	ec                   	in     al,dx
    133d:	00 00                	add    BYTE PTR [rax],al
    133f:	00 06                	add    BYTE PTR [rsi],al
    1341:	fb                   	sti    
    1342:	ff                   	(bad)  
    1343:	ff                   	(bad)  
    1344:	7e 00                	jle    1346 <__GNU_EH_FRAME_HDR+0x19e>
    1346:	00 00                	add    BYTE PTR [rax],al
    1348:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    134b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1351:	02 79 0c             	add    bh,BYTE PTR [rcx+0xc]
    1354:	07                   	(bad)  
    1355:	08 00                	or     BYTE PTR [rax],al
    1357:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    135a:	00 00                	add    BYTE PTR [rax],al
    135c:	0c 01                	or     al,0x1
    135e:	00 00                	add    BYTE PTR [rax],al
    1360:	64 fb                	fs sti 
    1362:	ff                   	(bad)  
    1363:	ff a1 00 00 00 00    	jmp    QWORD PTR [rcx+0x0]
    1369:	41 0e                	rex.B (bad) 
    136b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1371:	02 9c 0c 07 08 00 00 	add    bl,BYTE PTR [rsp+rcx*1+0x807]
    1378:	1c 00                	sbb    al,0x0
    137a:	00 00                	add    BYTE PTR [rax],al
    137c:	2c 01                	sub    al,0x1
    137e:	00 00                	add    BYTE PTR [rax],al
    1380:	e5 fb                	in     eax,0xfb
    1382:	ff                   	(bad)  
    1383:	ff 5e 00             	call   FWORD PTR [rsi+0x0]
    1386:	00 00                	add    BYTE PTR [rax],al
    1388:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    138b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1391:	02 59 0c             	add    bl,BYTE PTR [rcx+0xc]
    1394:	07                   	(bad)  
    1395:	08 00                	or     BYTE PTR [rax],al
    1397:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    139a:	00 00                	add    BYTE PTR [rax],al
    139c:	4c 01 00             	add    QWORD PTR [rax],r8
    139f:	00 23                	add    BYTE PTR [rbx],ah
    13a1:	fc                   	cld    
    13a2:	ff                   	(bad)  
    13a3:	ff 53 00             	call   QWORD PTR [rbx+0x0]
    13a6:	00 00                	add    BYTE PTR [rax],al
    13a8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    13ab:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    13b1:	02 4e 0c             	add    cl,BYTE PTR [rsi+0xc]
    13b4:	07                   	(bad)  
    13b5:	08 00                	or     BYTE PTR [rax],al
    13b7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
    13bb:	00 6c 01 00          	add    BYTE PTR [rcx+rax*1+0x0],ch
    13bf:	00 60 fc             	add    BYTE PTR [rax-0x4],ah
    13c2:	ff                   	(bad)  
    13c3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
    13c6:	00 00                	add    BYTE PTR [rax],al
    13c8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
    13cb:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
    13d1:	8e 03                	mov    es,WORD PTR [rbx]
    13d3:	45 0e                	rex.RB (bad) 
    13d5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
    13db:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86302229 <_end+0xffffffff86100b19>
    13e1:	06                   	(bad)  
    13e2:	48 0e                	rex.W (bad) 
    13e4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
    13ea:	72 0e                	jb     13fa <__GNU_EH_FRAME_HDR+0x252>
    13ec:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
    13ef:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    13f2:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    13f5:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    13f8:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    13fb:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    13fe:	08 00                	or     BYTE PTR [rax],al
    1400:	14 00                	adc    al,0x0
    1402:	00 00                	add    BYTE PTR [rax],al
    1404:	b4 01                	mov    ah,0x1
    1406:	00 00                	add    BYTE PTR [rax],al
    1408:	88 fc                	mov    ah,bh
    140a:	ff                   	(bad)  
    140b:	ff 02                	inc    DWORD PTR [rdx]
	...

0000000000001418 <__FRAME_END__>:
    1418:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000201420 <__frame_dummy_init_array_entry>:
  201420:	b0 0a                	mov    al,0xa
  201422:	00 00                	add    BYTE PTR [rax],al
  201424:	00 00                	add    BYTE PTR [rax],al
  201426:	00 00                	add    BYTE PTR [rax],al
  201428:	e0 0a                	loopne 201434 <__init_array_end+0x4>
  20142a:	00 00                	add    BYTE PTR [rax],al
  20142c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000201430 <__do_global_dtors_aux_fini_array_entry>:
  201430:	70 0a                	jo     20143c <__JCR_END__+0x4>
  201432:	00 00                	add    BYTE PTR [rax],al
  201434:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .jcr:

0000000000201438 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000201440 <_DYNAMIC>:
  201440:	01 00                	add    DWORD PTR [rax],eax
  201442:	00 00                	add    BYTE PTR [rax],al
  201444:	00 00                	add    BYTE PTR [rax],al
  201446:	00 00                	add    BYTE PTR [rax],al
  201448:	01 00                	add    DWORD PTR [rax],eax
  20144a:	00 00                	add    BYTE PTR [rax],al
  20144c:	00 00                	add    BYTE PTR [rax],al
  20144e:	00 00                	add    BYTE PTR [rax],al
  201450:	0c 00                	or     al,0x0
  201452:	00 00                	add    BYTE PTR [rax],al
  201454:	00 00                	add    BYTE PTR [rax],al
  201456:	00 00                	add    BYTE PTR [rax],al
  201458:	b0 08                	mov    al,0x8
  20145a:	00 00                	add    BYTE PTR [rax],al
  20145c:	00 00                	add    BYTE PTR [rax],al
  20145e:	00 00                	add    BYTE PTR [rax],al
  201460:	0d 00 00 00 00       	or     eax,0x0
  201465:	00 00                	add    BYTE PTR [rax],al
  201467:	00 94 10 00 00 00 00 	add    BYTE PTR [rax+rdx*1+0x0],dl
  20146e:	00 00                	add    BYTE PTR [rax],al
  201470:	19 00                	sbb    DWORD PTR [rax],eax
  201472:	00 00                	add    BYTE PTR [rax],al
  201474:	00 00                	add    BYTE PTR [rax],al
  201476:	00 00                	add    BYTE PTR [rax],al
  201478:	20 14 20             	and    BYTE PTR [rax+riz*1],dl
  20147b:	00 00                	add    BYTE PTR [rax],al
  20147d:	00 00                	add    BYTE PTR [rax],al
  20147f:	00 1b                	add    BYTE PTR [rbx],bl
  201481:	00 00                	add    BYTE PTR [rax],al
  201483:	00 00                	add    BYTE PTR [rax],al
  201485:	00 00                	add    BYTE PTR [rax],al
  201487:	00 10                	add    BYTE PTR [rax],dl
  201489:	00 00                	add    BYTE PTR [rax],al
  20148b:	00 00                	add    BYTE PTR [rax],al
  20148d:	00 00                	add    BYTE PTR [rax],al
  20148f:	00 1a                	add    BYTE PTR [rdx],bl
  201491:	00 00                	add    BYTE PTR [rax],al
  201493:	00 00                	add    BYTE PTR [rax],al
  201495:	00 00                	add    BYTE PTR [rax],al
  201497:	00 30                	add    BYTE PTR [rax],dh
  201499:	14 20                	adc    al,0x20
  20149b:	00 00                	add    BYTE PTR [rax],al
  20149d:	00 00                	add    BYTE PTR [rax],al
  20149f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  2014a2:	00 00                	add    BYTE PTR [rax],al
  2014a4:	00 00                	add    BYTE PTR [rax],al
  2014a6:	00 00                	add    BYTE PTR [rax],al
  2014a8:	08 00                	or     BYTE PTR [rax],al
  2014aa:	00 00                	add    BYTE PTR [rax],al
  2014ac:	00 00                	add    BYTE PTR [rax],al
  2014ae:	00 00                	add    BYTE PTR [rax],al
  2014b0:	f5                   	cmc    
  2014b1:	fe                   	(bad)  
  2014b2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  2014b5:	00 00                	add    BYTE PTR [rax],al
  2014b7:	00 60 02             	add    BYTE PTR [rax+0x2],ah
  2014ba:	00 00                	add    BYTE PTR [rax],al
  2014bc:	00 00                	add    BYTE PTR [rax],al
  2014be:	00 00                	add    BYTE PTR [rax],al
  2014c0:	05 00 00 00 00       	add    eax,0x0
  2014c5:	00 00                	add    BYTE PTR [rax],al
  2014c7:	00 f8                	add    al,bh
  2014c9:	04 00                	add    al,0x0
  2014cb:	00 00                	add    BYTE PTR [rax],al
  2014cd:	00 00                	add    BYTE PTR [rax],al
  2014cf:	00 06                	add    BYTE PTR [rsi],al
  2014d1:	00 00                	add    BYTE PTR [rax],al
  2014d3:	00 00                	add    BYTE PTR [rax],al
  2014d5:	00 00                	add    BYTE PTR [rax],al
  2014d7:	00 a0 02 00 00 00    	add    BYTE PTR [rax+0x2],ah
  2014dd:	00 00                	add    BYTE PTR [rax],al
  2014df:	00 0a                	add    BYTE PTR [rdx],cl
  2014e1:	00 00                	add    BYTE PTR [rax],al
  2014e3:	00 00                	add    BYTE PTR [rax],al
  2014e5:	00 00                	add    BYTE PTR [rax],al
  2014e7:	00 16                	add    BYTE PTR [rsi],dl
  2014e9:	01 00                	add    DWORD PTR [rax],eax
  2014eb:	00 00                	add    BYTE PTR [rax],al
  2014ed:	00 00                	add    BYTE PTR [rax],al
  2014ef:	00 0b                	add    BYTE PTR [rbx],cl
  2014f1:	00 00                	add    BYTE PTR [rax],al
  2014f3:	00 00                	add    BYTE PTR [rax],al
  2014f5:	00 00                	add    BYTE PTR [rax],al
  2014f7:	00 18                	add    BYTE PTR [rax],bl
  2014f9:	00 00                	add    BYTE PTR [rax],al
  2014fb:	00 00                	add    BYTE PTR [rax],al
  2014fd:	00 00                	add    BYTE PTR [rax],al
  2014ff:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 201505 <_DYNAMIC+0xc5>
	...
  20150d:	00 00                	add    BYTE PTR [rax],al
  20150f:	00 03                	add    BYTE PTR [rbx],al
  201511:	00 00                	add    BYTE PTR [rax],al
  201513:	00 00                	add    BYTE PTR [rax],al
  201515:	00 00                	add    BYTE PTR [rax],al
  201517:	00 48 16             	add    BYTE PTR [rax+0x16],cl
  20151a:	20 00                	and    BYTE PTR [rax],al
  20151c:	00 00                	add    BYTE PTR [rax],al
  20151e:	00 00                	add    BYTE PTR [rax],al
  201520:	02 00                	add    al,BYTE PTR [rax]
  201522:	00 00                	add    BYTE PTR [rax],al
  201524:	00 00                	add    BYTE PTR [rax],al
  201526:	00 00                	add    BYTE PTR [rax],al
  201528:	20 01                	and    BYTE PTR [rcx],al
  20152a:	00 00                	add    BYTE PTR [rax],al
  20152c:	00 00                	add    BYTE PTR [rax],al
  20152e:	00 00                	add    BYTE PTR [rax],al
  201530:	14 00                	adc    al,0x0
  201532:	00 00                	add    BYTE PTR [rax],al
  201534:	00 00                	add    BYTE PTR [rax],al
  201536:	00 00                	add    BYTE PTR [rax],al
  201538:	07                   	(bad)  
  201539:	00 00                	add    BYTE PTR [rax],al
  20153b:	00 00                	add    BYTE PTR [rax],al
  20153d:	00 00                	add    BYTE PTR [rax],al
  20153f:	00 17                	add    BYTE PTR [rdi],dl
  201541:	00 00                	add    BYTE PTR [rax],al
  201543:	00 00                	add    BYTE PTR [rax],al
  201545:	00 00                	add    BYTE PTR [rax],al
  201547:	00 90 07 00 00 00    	add    BYTE PTR [rax+0x7],dl
  20154d:	00 00                	add    BYTE PTR [rax],al
  20154f:	00 07                	add    BYTE PTR [rdi],al
  201551:	00 00                	add    BYTE PTR [rax],al
  201553:	00 00                	add    BYTE PTR [rax],al
  201555:	00 00                	add    BYTE PTR [rax],al
  201557:	00 70 06             	add    BYTE PTR [rax+0x6],dh
  20155a:	00 00                	add    BYTE PTR [rax],al
  20155c:	00 00                	add    BYTE PTR [rax],al
  20155e:	00 00                	add    BYTE PTR [rax],al
  201560:	08 00                	or     BYTE PTR [rax],al
  201562:	00 00                	add    BYTE PTR [rax],al
  201564:	00 00                	add    BYTE PTR [rax],al
  201566:	00 00                	add    BYTE PTR [rax],al
  201568:	20 01                	and    BYTE PTR [rcx],al
  20156a:	00 00                	add    BYTE PTR [rax],al
  20156c:	00 00                	add    BYTE PTR [rax],al
  20156e:	00 00                	add    BYTE PTR [rax],al
  201570:	09 00                	or     DWORD PTR [rax],eax
  201572:	00 00                	add    BYTE PTR [rax],al
  201574:	00 00                	add    BYTE PTR [rax],al
  201576:	00 00                	add    BYTE PTR [rax],al
  201578:	18 00                	sbb    BYTE PTR [rax],al
  20157a:	00 00                	add    BYTE PTR [rax],al
  20157c:	00 00                	add    BYTE PTR [rax],al
  20157e:	00 00                	add    BYTE PTR [rax],al
  201580:	fb                   	sti    
  201581:	ff                   	(bad)  
  201582:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201585:	00 00                	add    BYTE PTR [rax],al
  201587:	00 00                	add    BYTE PTR [rax],al
  201589:	00 00                	add    BYTE PTR [rax],al
  20158b:	08 00                	or     BYTE PTR [rax],al
  20158d:	00 00                	add    BYTE PTR [rax],al
  20158f:	00 fe                	add    dh,bh
  201591:	ff                   	(bad)  
  201592:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201595:	00 00                	add    BYTE PTR [rax],al
  201597:	00 40 06             	add    BYTE PTR [rax+0x6],al
  20159a:	00 00                	add    BYTE PTR [rax],al
  20159c:	00 00                	add    BYTE PTR [rax],al
  20159e:	00 00                	add    BYTE PTR [rax],al
  2015a0:	ff                   	(bad)  
  2015a1:	ff                   	(bad)  
  2015a2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  2015a5:	00 00                	add    BYTE PTR [rax],al
  2015a7:	00 01                	add    BYTE PTR [rcx],al
  2015a9:	00 00                	add    BYTE PTR [rax],al
  2015ab:	00 00                	add    BYTE PTR [rax],al
  2015ad:	00 00                	add    BYTE PTR [rax],al
  2015af:	00 f0                	add    al,dh
  2015b1:	ff                   	(bad)  
  2015b2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  2015b5:	00 00                	add    BYTE PTR [rax],al
  2015b7:	00 0e                	add    BYTE PTR [rsi],cl
  2015b9:	06                   	(bad)  
  2015ba:	00 00                	add    BYTE PTR [rax],al
  2015bc:	00 00                	add    BYTE PTR [rax],al
  2015be:	00 00                	add    BYTE PTR [rax],al
  2015c0:	f9                   	stc    
  2015c1:	ff                   	(bad)  
  2015c2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  2015c5:	00 00                	add    BYTE PTR [rax],al
  2015c7:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...

Disassembly of section .got:

0000000000201620 <.got>:
	...

Disassembly of section .got.plt:

0000000000201648 <_GLOBAL_OFFSET_TABLE_>:
  201648:	40 14 20             	adc    al,0x20
	...
  20165f:	00 e6                	add    dh,ah
  201661:	08 00                	or     BYTE PTR [rax],al
  201663:	00 00                	add    BYTE PTR [rax],al
  201665:	00 00                	add    BYTE PTR [rax],al
  201667:	00 f6                	add    dh,dh
  201669:	08 00                	or     BYTE PTR [rax],al
  20166b:	00 00                	add    BYTE PTR [rax],al
  20166d:	00 00                	add    BYTE PTR [rax],al
  20166f:	00 06                	add    BYTE PTR [rsi],al
  201671:	09 00                	or     DWORD PTR [rax],eax
  201673:	00 00                	add    BYTE PTR [rax],al
  201675:	00 00                	add    BYTE PTR [rax],al
  201677:	00 16                	add    BYTE PTR [rsi],dl
  201679:	09 00                	or     DWORD PTR [rax],eax
  20167b:	00 00                	add    BYTE PTR [rax],al
  20167d:	00 00                	add    BYTE PTR [rax],al
  20167f:	00 26                	add    BYTE PTR [rsi],ah
  201681:	09 00                	or     DWORD PTR [rax],eax
  201683:	00 00                	add    BYTE PTR [rax],al
  201685:	00 00                	add    BYTE PTR [rax],al
  201687:	00 36                	add    BYTE PTR [rsi],dh
  201689:	09 00                	or     DWORD PTR [rax],eax
  20168b:	00 00                	add    BYTE PTR [rax],al
  20168d:	00 00                	add    BYTE PTR [rax],al
  20168f:	00 46 09             	add    BYTE PTR [rsi+0x9],al
  201692:	00 00                	add    BYTE PTR [rax],al
  201694:	00 00                	add    BYTE PTR [rax],al
  201696:	00 00                	add    BYTE PTR [rax],al
  201698:	56                   	push   rsi
  201699:	09 00                	or     DWORD PTR [rax],eax
  20169b:	00 00                	add    BYTE PTR [rax],al
  20169d:	00 00                	add    BYTE PTR [rax],al
  20169f:	00 66 09             	add    BYTE PTR [rsi+0x9],ah
  2016a2:	00 00                	add    BYTE PTR [rax],al
  2016a4:	00 00                	add    BYTE PTR [rax],al
  2016a6:	00 00                	add    BYTE PTR [rax],al
  2016a8:	76 09                	jbe    2016b3 <_GLOBAL_OFFSET_TABLE_+0x6b>
  2016aa:	00 00                	add    BYTE PTR [rax],al
  2016ac:	00 00                	add    BYTE PTR [rax],al
  2016ae:	00 00                	add    BYTE PTR [rax],al
  2016b0:	86 09                	xchg   BYTE PTR [rcx],cl
  2016b2:	00 00                	add    BYTE PTR [rax],al
  2016b4:	00 00                	add    BYTE PTR [rax],al
  2016b6:	00 00                	add    BYTE PTR [rax],al
  2016b8:	96                   	xchg   esi,eax
  2016b9:	09 00                	or     DWORD PTR [rax],eax
  2016bb:	00 00                	add    BYTE PTR [rax],al
  2016bd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

00000000002016c0 <__data_start>:
	...

00000000002016c8 <__dso_handle>:
  2016c8:	c8 16 20 00          	enter  0x2016,0x0
  2016cc:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

00000000002016e0 <stdout@@GLIBC_2.2.5>:
	...

00000000002016f0 <stdin@@GLIBC_2.2.5>:
	...

0000000000201700 <stderr@@GLIBC_2.2.5>:
	...

0000000000201708 <completed.7594>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x838>
   a:	74 75                	je     81 <_init-0x82f>
   c:	20 35 2e 34 2e 30    	and    BYTE PTR [rip+0x302e342e],dh        # 302e3440 <_end+0x300e1d30>
  12:	2d 36 75 62 75       	sub    eax,0x75627536
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x821>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	36 2e 30 34 2e       	ss xor BYTE PTR cs:[rsi+rbp*1],dh
  22:	31 30                	xor    DWORD PTR [rax],esi
  24:	29 20                	sub    DWORD PTR [rax],esp
  26:	35 2e 34 2e 30       	xor    eax,0x302e342e
  2b:	20 32                	and    BYTE PTR [rdx],dh
  2d:	30 31                	xor    BYTE PTR [rcx],dh
  2f:	36 30 36             	xor    BYTE PTR ss:[rsi],dh
  32:	30 39                	xor    BYTE PTR [rcx],bh
	...
