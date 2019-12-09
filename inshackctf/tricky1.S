
tricky1:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x8bb>
  400248:	78 38                	js     400282 <_init-0x8ae>
  40024a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
  400250:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400251:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    al,0x0
  400256:	00 00                	add    BYTE PTR [rax],al
  400258:	10 00                	adc    BYTE PTR [rax],al
  40025a:	00 00                	add    BYTE PTR [rax],al
  40025c:	01 00                	add    DWORD PTR [rax],eax
  40025e:	00 00                	add    BYTE PTR [rax],al
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push rbp
  400263:	00 00                	add    BYTE PTR [rax],al
  400265:	00 00                	add    BYTE PTR [rax],al
  400267:	00 02                	add    BYTE PTR [rdx],al
  400269:	00 00                	add    BYTE PTR [rax],al
  40026b:	00 06                	add    BYTE PTR [rsi],al
  40026d:	00 00                	add    BYTE PTR [rax],al
  40026f:	00 18                	add    BYTE PTR [rax],bl
  400271:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    al,0x0
  400276:	00 00                	add    BYTE PTR [rax],al
  400278:	14 00                	adc    al,0x0
  40027a:	00 00                	add    BYTE PTR [rax],al
  40027c:	03 00                	add    eax,DWORD PTR [rax]
  40027e:	00 00                	add    BYTE PTR [rax],al
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push rbp
  400283:	00 b5 57 05 87 67    	add    BYTE PTR [rbp+0x67870557],dh
  400289:	53                   	push   rbx
  40028a:	b1 60                	mov    cl,0x60
  40028c:	d3                   	(bad)  
  40028d:	35 75 d8 f1 10       	xor    eax,0x10f1d875
  400292:	2e 51                	cs push rcx
  400294:	66 da e7             	data16 (bad) 
  400297:	b2                   	.byte 0xb2

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    eax,DWORD PTR [rax]
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	17                   	(bad)  
  40029d:	00 00                	add    BYTE PTR [rax],al
  40029f:	00 01                	add    BYTE PTR [rcx],al
  4002a1:	00 00                	add    BYTE PTR [rax],al
  4002a3:	00 06                	add    BYTE PTR [rsi],al
  4002a5:	00 00                	add    BYTE PTR [rax],al
  4002a7:	00 00                	add    BYTE PTR [rax],al
  4002a9:	00 50 02             	add    BYTE PTR [rax+0x2],dl
  4002ac:	25 01 14 01 17       	and    eax,0x17011401
  4002b1:	00 00                	add    BYTE PTR [rax],al
  4002b3:	00 19                	add    BYTE PTR [rcx],bl
  4002b5:	00 00                	add    BYTE PTR [rax],al
  4002b7:	00 1a                	add    BYTE PTR [rdx],bl
  4002b9:	00 00                	add    BYTE PTR [rax],al
  4002bb:	00 72 96             	add    BYTE PTR [rdx-0x6a],dh
  4002be:	07                   	(bad)  
  4002bf:	02 a3 25 91 79 21    	add    ah,BYTE PTR [rbx+0x21799125]
  4002c5:	fd                   	std    
  4002c6:	f4                   	hlt    
  4002c7:	09 28                	or     DWORD PTR [rax],ebp
  4002c9:	45 d5                	rex.RB (bad) 
  4002cb:	4c 14 98             	rex.WR adc al,0x98
  4002ce:	0c 43                	or     al,0x43
  4002d0:	79 49                	jns    40031b <_init-0x815>
  4002d2:	6b                   	.byte 0x6b
  4002d3:	b6                   	.byte 0xb6

Disassembly of section .dynsym:

00000000004002d8 <.dynsym>:
	...
  4002f0:	d9 01                	fld    DWORD PTR [rcx]
  4002f2:	00 00                	add    BYTE PTR [rax],al
  4002f4:	12 00                	adc    al,BYTE PTR [rax]
	...
  400306:	00 00                	add    BYTE PTR [rax],al
  400308:	10 00                	adc    BYTE PTR [rax],al
  40030a:	00 00                	add    BYTE PTR [rax],al
  40030c:	20 00                	and    BYTE PTR [rax],al
	...
  40031e:	00 00                	add    BYTE PTR [rax],al
  400320:	1f                   	(bad)  
  400321:	00 00                	add    BYTE PTR [rax],al
  400323:	00 20                	add    BYTE PTR [rax],ah
	...
  400335:	00 00                	add    BYTE PTR [rax],al
  400337:	00 7e 00             	add    BYTE PTR [rsi+0x0],bh
  40033a:	00 00                	add    BYTE PTR [rax],al
  40033c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40034e:	00 00                	add    BYTE PTR [rax],al
  400350:	01 02                	add    DWORD PTR [rdx],eax
  400352:	00 00                	add    BYTE PTR [rax],al
  400354:	12 00                	adc    al,BYTE PTR [rax]
	...
  400366:	00 00                	add    BYTE PTR [rax],al
  400368:	5b                   	pop    rbx
  400369:	02 00                	add    al,BYTE PTR [rax]
  40036b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40037d:	00 00                	add    BYTE PTR [rax],al
  40037f:	00 f4                	add    ah,dh
  400381:	01 00                	add    DWORD PTR [rax],eax
  400383:	00 12                	add    BYTE PTR [rdx],dl
	...
  400395:	00 00                	add    BYTE PTR [rax],al
  400397:	00 40 02             	add    BYTE PTR [rax+0x2],al
  40039a:	00 00                	add    BYTE PTR [rax],al
  40039c:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003ae:	00 00                	add    BYTE PTR [rax],al
  4003b0:	33 00                	xor    eax,DWORD PTR [rax]
  4003b2:	00 00                	add    BYTE PTR [rax],al
  4003b4:	20 00                	and    BYTE PTR [rax],al
	...
  4003c6:	00 00                	add    BYTE PTR [rax],al
  4003c8:	4b 01 00             	rex.WXB add QWORD PTR [r8],rax
  4003cb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4003dd:	00 00                	add    BYTE PTR [rax],al
  4003df:	00 e1                	add    cl,ah
  4003e1:	00 00                	add    BYTE PTR [rax],al
  4003e3:	00 12                	add    BYTE PTR [rdx],dl
	...
  4003f5:	00 00                	add    BYTE PTR [rax],al
  4003f7:	00 4f 00             	add    BYTE PTR [rdi+0x0],cl
  4003fa:	00 00                	add    BYTE PTR [rax],al
  4003fc:	20 00                	and    BYTE PTR [rax],al
	...
  40040e:	00 00                	add    BYTE PTR [rax],al
  400410:	ae                   	scas   al,BYTE PTR es:[rdi]
  400411:	00 00                	add    BYTE PTR [rax],al
  400413:	00 12                	add    BYTE PTR [rdx],dl
	...
  400425:	00 00                	add    BYTE PTR [rax],al
  400427:	00 54 02 00          	add    BYTE PTR [rdx+rax*1+0x0],dl
  40042b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40043d:	00 00                	add    BYTE PTR [rax],al
  40043f:	00 ce                	add    dh,cl
  400441:	00 00                	add    BYTE PTR [rax],al
  400443:	00 12                	add    BYTE PTR [rdx],dl
	...
  400455:	00 00                	add    BYTE PTR [rax],al
  400457:	00 be 01 00 00 12    	add    BYTE PTR [rsi+0x12000001],bh
	...
  40046d:	00 00                	add    BYTE PTR [rax],al
  40046f:	00 cc                	add    ah,cl
  400471:	01 00                	add    DWORD PTR [rax],eax
  400473:	00 12                	add    BYTE PTR [rdx],dl
	...
  400485:	00 00                	add    BYTE PTR [rax],al
  400487:	00 69 00             	add    BYTE PTR [rcx+0x0],ch
  40048a:	00 00                	add    BYTE PTR [rax],al
  40048c:	20 00                	and    BYTE PTR [rax],al
	...
  40049e:	00 00                	add    BYTE PTR [rax],al
  4004a0:	4d 02 00             	rex.WRB add r8b,BYTE PTR [r8]
  4004a3:	00 12                	add    BYTE PTR [rdx],dl
	...
  4004b5:	00 00                	add    BYTE PTR [rax],al
  4004b7:	00 e3                	add    bl,ah
  4004b9:	01 00                	add    DWORD PTR [rax],eax
  4004bb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4004cd:	00 00                	add    BYTE PTR [rax],al
  4004cf:	00 c1                	add    cl,al
  4004d1:	00 00                	add    BYTE PTR [rax],al
  4004d3:	00 12                	add    BYTE PTR [rdx],dl
	...
  4004e5:	00 00                	add    BYTE PTR [rax],al
  4004e7:	00 27                	add    BYTE PTR [rdi],ah
  4004e9:	02 00                	add    al,BYTE PTR [rax]
  4004eb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4004fd:	00 00                	add    BYTE PTR [rax],al
  4004ff:	00 d8                	add    al,bl
  400501:	00 00                	add    BYTE PTR [rax],al
  400503:	00 11                	add    BYTE PTR [rcx],dl
  400505:	00 1a                	add    BYTE PTR [rdx],bl
  400507:	00 e0                	add    al,ah
  400509:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  40050c:	00 00                	add    BYTE PTR [rax],al
  40050e:	00 00                	add    BYTE PTR [rax],al
  400510:	18 01                	sbb    BYTE PTR [rcx],al
  400512:	00 00                	add    BYTE PTR [rax],al
  400514:	00 00                	add    BYTE PTR [rax],al
  400516:	00 00                	add    BYTE PTR [rax],al
  400518:	8c 00                	mov    WORD PTR [rax],es
  40051a:	00 00                	add    BYTE PTR [rax],al
  40051c:	12 00                	adc    al,BYTE PTR [rax]
  40051e:	00 00                	add    BYTE PTR [rax],al
  400520:	00 0c 40             	add    BYTE PTR [rax+rax*2],cl
	...
  40052f:	00 83 01 00 00 12    	add    BYTE PTR [rbx+0x12000001],al
  400535:	00 00                	add    BYTE PTR [rax],al
  400537:	00 80 0c 40 00 00    	add    BYTE PTR [rax+0x400c],al
	...
  400545:	00 00                	add    BYTE PTR [rax],al
  400547:	00 96 00 00 00 12    	add    BYTE PTR [rsi+0x12000000],dl
  40054d:	00 00                	add    BYTE PTR [rax],al
  40054f:	00 d0                	add    al,dl
  400551:	0b 40 00             	or     eax,DWORD PTR [rax+0x0]
	...
  400560:	41 01 00             	add    DWORD PTR [r8],eax
  400563:	00 11                	add    BYTE PTR [rcx],dl
  400565:	00 1a                	add    BYTE PTR [rdx],bl
  400567:	00 00                	add    BYTE PTR [rax],al
  400569:	22 60 00             	and    ah,BYTE PTR [rax+0x0]
  40056c:	00 00                	add    BYTE PTR [rax],al
  40056e:	00 00                	add    BYTE PTR [rax],al
  400570:	10 01                	adc    BYTE PTR [rcx],al
  400572:	00 00                	add    BYTE PTR [rax],al
  400574:	00 00                	add    BYTE PTR [rax],al
  400576:	00 00                	add    BYTE PTR [rax],al
  400578:	2c 01                	sub    al,0x1
  40057a:	00 00                	add    BYTE PTR [rax],al
  40057c:	12 00                	adc    al,BYTE PTR [rax]
  40057e:	00 00                	add    BYTE PTR [rax],al
  400580:	a0 0c 40 00 00 00 00 	movabs al,ds:0x400c
  400587:	00 00 
  400589:	00 00                	add    BYTE PTR [rax],al
  40058b:	00 00                	add    BYTE PTR [rax],al
  40058d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000400590 <.dynstr>:
  400590:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  400594:	73 74                	jae    40060a <_init-0x526>
  400596:	64 63 2b             	movsxd ebp,DWORD PTR fs:[rbx]
  400599:	2b 2e                	sub    ebp,DWORD PTR [rsi]
  40059b:	73 6f                	jae    40060c <_init-0x524>
  40059d:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
  4005a2:	67 6d                	ins    DWORD PTR es:[edi],dx
  4005a4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4005a5:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4005a6:	5f                   	pop    rdi
  4005a7:	73 74                	jae    40061d <_init-0x513>
  4005a9:	61                   	(bad)  
  4005aa:	72 74                	jb     400620 <_init-0x510>
  4005ac:	5f                   	pop    rdi
  4005ad:	5f                   	pop    rdi
  4005ae:	00 5f 4a             	add    BYTE PTR [rdi+0x4a],bl
  4005b1:	76 5f                	jbe    400612 <_init-0x51e>
  4005b3:	52                   	push   rdx
  4005b4:	65 67 69 73 74 65 72 	imul   esi,DWORD PTR gs:[ebx+0x74],0x6c437265
  4005bb:	43 6c 
  4005bd:	61                   	(bad)  
  4005be:	73 73                	jae    400633 <_init-0x4fd>
  4005c0:	65 73 00             	gs jae 4005c3 <_init-0x56d>
  4005c3:	5f                   	pop    rdi
  4005c4:	49 54                	rex.WB push r12
  4005c6:	4d 5f                	rex.WRB pop r15
  4005c8:	64 65 72 65          	fs gs jb 400631 <_init-0x4ff>
  4005cc:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
  4005d3:	4d 
  4005d4:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
  4005d6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4005d7:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4005d8:	65 54                	gs push rsp
  4005da:	61                   	(bad)  
  4005db:	62                   	(bad)  
  4005dc:	6c                   	ins    BYTE PTR es:[rdi],dx
  4005dd:	65 00 5f 49          	add    BYTE PTR gs:[rdi+0x49],bl
  4005e1:	54                   	push   rsp
  4005e2:	4d 5f                	rex.WRB pop r15
  4005e4:	72 65                	jb     40064b <_init-0x4e5>
  4005e6:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
  4005ed:	4d 
  4005ee:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
  4005f0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4005f1:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4005f2:	65 54                	gs push rsp
  4005f4:	61                   	(bad)  
  4005f5:	62                   	(bad)  
  4005f6:	6c                   	ins    BYTE PTR es:[rdi],dx
  4005f7:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
  4005fb:	70 74                	jo     400671 <_init-0x4bf>
  4005fd:	68 72 65 61 64       	push   0x64616572
  400602:	5f                   	pop    rdi
  400603:	6b 65 79 5f          	imul   esp,DWORD PTR [rbp+0x79],0x5f
  400607:	63 72 65             	movsxd esi,DWORD PTR [rdx+0x65]
  40060a:	61                   	(bad)  
  40060b:	74 65                	je     400672 <_init-0x4be>
  40060d:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400610:	4e                   	rex.WRX
  400611:	4b 53                	rex.WXB push r11
  400613:	73 34                	jae    400649 <_init-0x4e7>
  400615:	73 69                	jae    400680 <_init-0x4b0>
  400617:	7a 65                	jp     40067e <_init-0x4b2>
  400619:	45 76 00             	rex.RB jbe 40061c <_init-0x514>
  40061c:	5f                   	pop    rdi
  40061d:	5a                   	pop    rdx
  40061e:	4e 53                	rex.WRX push rbx
  400620:	73 44                	jae    400666 <_init-0x4ca>
  400622:	31 45 76             	xor    DWORD PTR [rbp+0x76],eax
  400625:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400628:	4e 53                	rex.WRX push rbx
  40062a:	74 38                	je     400664 <_init-0x4cc>
  40062c:	69 6f 73 5f 62 61 73 	imul   ebp,DWORD PTR [rdi+0x73],0x7361625f
  400633:	65 34 49             	gs xor al,0x49
  400636:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400637:	69 74 44 31 45 76 00 	imul   esi,DWORD PTR [rsp+rax*2+0x31],0x5f007645
  40063e:	5f 
  40063f:	5a                   	pop    rdx
  400640:	4e 53                	rex.WRX push rbx
  400642:	73 43                	jae    400687 <_init-0x4a9>
  400644:	31 45 50             	xor    DWORD PTR [rbp+0x50],eax
  400647:	4b 63 52 4b          	rex.WXB movsxd rdx,DWORD PTR [r10+0x4b]
  40064b:	53                   	push   rbx
  40064c:	61                   	(bad)  
  40064d:	49 63 45 00          	movsxd rax,DWORD PTR [r13+0x0]
  400651:	5f                   	pop    rdi
  400652:	5a                   	pop    rdx
  400653:	4e 53                	rex.WRX push rbx
  400655:	61                   	(bad)  
  400656:	49 63 45 43          	movsxd rax,DWORD PTR [r13+0x43]
  40065a:	31 45 76             	xor    DWORD PTR [rbp+0x76],eax
  40065d:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400660:	4e 53                	rex.WRX push rbx
  400662:	73 69                	jae    4006cd <_init-0x463>
  400664:	78 45                	js     4006ab <_init-0x485>
  400666:	6d                   	ins    DWORD PTR es:[rdi],dx
  400667:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  40066a:	53                   	push   rbx
  40066b:	74 33                	je     4006a0 <_init-0x490>
  40066d:	63 69 6e             	movsxd ebp,DWORD PTR [rcx+0x6e]
  400670:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400673:	53                   	push   rbx
  400674:	74 72                	je     4006e8 <_init-0x448>
  400676:	73 49                	jae    4006c1 <_init-0x46f>
  400678:	63 53 74             	movsxd edx,DWORD PTR [rbx+0x74]
  40067b:	31 31                	xor    DWORD PTR [rcx],esi
  40067d:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
  400680:	72 5f                	jb     4006e1 <_init-0x44f>
  400682:	74 72                	je     4006f6 <_init-0x43a>
  400684:	61                   	(bad)  
  400685:	69 74 73 49 63 45 53 	imul   esi,DWORD PTR [rbx+rsi*2+0x49],0x61534563
  40068c:	61 
  40068d:	49 63 45 45          	movsxd rax,DWORD PTR [r13+0x45]
  400691:	52                   	push   rdx
  400692:	53                   	push   rbx
  400693:	74 31                	je     4006c6 <_init-0x46a>
  400695:	33 62 61             	xor    esp,DWORD PTR [rdx+0x61]
  400698:	73 69                	jae    400703 <_init-0x42d>
  40069a:	63 5f 69             	movsxd ebx,DWORD PTR [rdi+0x69]
  40069d:	73 74                	jae    400713 <_init-0x41d>
  40069f:	72 65                	jb     400706 <_init-0x42a>
  4006a1:	61                   	(bad)  
  4006a2:	6d                   	ins    DWORD PTR es:[rdi],dx
  4006a3:	49 54                	rex.WB push r12
  4006a5:	5f                   	pop    rdi
  4006a6:	54                   	push   rsp
  4006a7:	30 5f 45             	xor    BYTE PTR [rdi+0x45],bl
  4006aa:	53                   	push   rbx
  4006ab:	37                   	(bad)  
  4006ac:	5f                   	pop    rdi
  4006ad:	52                   	push   rdx
  4006ae:	53                   	push   rbx
  4006af:	62                   	(bad)  
  4006b0:	49 53                	rex.WB push r11
  4006b2:	34 5f                	xor    al,0x5f
  4006b4:	53                   	push   rbx
  4006b5:	35 5f 54 31 5f       	xor    eax,0x5f31545f
  4006ba:	45 00 5f 5f          	add    BYTE PTR [r15+0x5f],r11b
  4006be:	67 78 78             	addr32 js 400739 <_init-0x3f7>
  4006c1:	5f                   	pop    rdi
  4006c2:	70 65                	jo     400729 <_init-0x407>
  4006c4:	72 73                	jb     400739 <_init-0x3f7>
  4006c6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4006c7:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4006c8:	61                   	(bad)  
  4006c9:	6c                   	ins    BYTE PTR es:[rdi],dx
  4006ca:	69 74 79 5f 76 30 00 	imul   esi,DWORD PTR [rcx+rdi*2+0x5f],0x5f003076
  4006d1:	5f 
  4006d2:	5a                   	pop    rdx
  4006d3:	53                   	push   rbx
  4006d4:	74 34                	je     40070a <_init-0x426>
  4006d6:	63 6f 75             	movsxd ebp,DWORD PTR [rdi+0x75]
  4006d9:	74 00                	je     4006db <_init-0x455>
  4006db:	5f                   	pop    rdi
  4006dc:	5a                   	pop    rdx
  4006dd:	53                   	push   rbx
  4006de:	74 6c                	je     40074c <_init-0x3e4>
  4006e0:	73 49                	jae    40072b <_init-0x405>
  4006e2:	53                   	push   rbx
  4006e3:	74 31                	je     400716 <_init-0x41a>
  4006e5:	31 63 68             	xor    DWORD PTR [rbx+0x68],esp
  4006e8:	61                   	(bad)  
  4006e9:	72 5f                	jb     40074a <_init-0x3e6>
  4006eb:	74 72                	je     40075f <_init-0x3d1>
  4006ed:	61                   	(bad)  
  4006ee:	69 74 73 49 63 45 45 	imul   esi,DWORD PTR [rbx+rsi*2+0x49],0x52454563
  4006f5:	52 
  4006f6:	53                   	push   rbx
  4006f7:	74 31                	je     40072a <_init-0x406>
  4006f9:	33 62 61             	xor    esp,DWORD PTR [rdx+0x61]
  4006fc:	73 69                	jae    400767 <_init-0x3c9>
  4006fe:	63 5f 6f             	movsxd ebx,DWORD PTR [rdi+0x6f]
  400701:	73 74                	jae    400777 <_init-0x3b9>
  400703:	72 65                	jb     40076a <_init-0x3c6>
  400705:	61                   	(bad)  
  400706:	6d                   	ins    DWORD PTR es:[rdi],dx
  400707:	49 63 54 5f 45       	movsxd rdx,DWORD PTR [r15+rbx*2+0x45]
  40070c:	53                   	push   rbx
  40070d:	35 5f 50 4b 63       	xor    eax,0x634b505f
  400712:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400715:	53                   	push   rbx
  400716:	74 34                	je     40074c <_init-0x3e4>
  400718:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  40071a:	64 6c                	fs ins BYTE PTR es:[rdi],dx
  40071c:	49 63 53 74          	movsxd rdx,DWORD PTR [r11+0x74]
  400720:	31 31                	xor    DWORD PTR [rcx],esi
  400722:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
  400725:	72 5f                	jb     400786 <_init-0x3aa>
  400727:	74 72                	je     40079b <_init-0x395>
  400729:	61                   	(bad)  
  40072a:	69 74 73 49 63 45 45 	imul   esi,DWORD PTR [rbx+rsi*2+0x49],0x52454563
  400731:	52 
  400732:	53                   	push   rbx
  400733:	74 31                	je     400766 <_init-0x3ca>
  400735:	33 62 61             	xor    esp,DWORD PTR [rdx+0x61]
  400738:	73 69                	jae    4007a3 <_init-0x38d>
  40073a:	63 5f 6f             	movsxd ebx,DWORD PTR [rdi+0x6f]
  40073d:	73 74                	jae    4007b3 <_init-0x37d>
  40073f:	72 65                	jb     4007a6 <_init-0x38a>
  400741:	61                   	(bad)  
  400742:	6d                   	ins    DWORD PTR es:[rdi],dx
  400743:	49 54                	rex.WB push r12
  400745:	5f                   	pop    rdi
  400746:	54                   	push   rsp
  400747:	30 5f 45             	xor    BYTE PTR [rdi+0x45],bl
  40074a:	53                   	push   rbx
  40074b:	36 5f                	ss pop rdi
  40074d:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400750:	4e                   	rex.WRX
  400751:	4b 53                	rex.WXB push r11
  400753:	73 34                	jae    400789 <_init-0x3a7>
  400755:	64 61                	fs (bad) 
  400757:	74 61                	je     4007ba <_init-0x376>
  400759:	45 76 00             	rex.RB jbe 40075c <_init-0x3d4>
  40075c:	5f                   	pop    rdi
  40075d:	5a                   	pop    rdx
  40075e:	4e 53                	rex.WRX push rbx
  400760:	61                   	(bad)  
  400761:	49 63 45 44          	movsxd rax,DWORD PTR [r13+0x44]
  400765:	31 45 76             	xor    DWORD PTR [rbp+0x76],eax
  400768:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  40076b:	4e 53                	rex.WRX push rbx
  40076d:	73 43                	jae    4007b2 <_init-0x37e>
  40076f:	31 45 76             	xor    DWORD PTR [rbp+0x76],eax
  400772:	00 5f 5a             	add    BYTE PTR [rdi+0x5a],bl
  400775:	4e 53                	rex.WRX push rbx
  400777:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400778:	6c                   	ins    BYTE PTR es:[rdi],dx
  400779:	73 45                	jae    4007c0 <_init-0x370>
  40077b:	50                   	push   rax
  40077c:	46 52                	rex.RX push rdx
  40077e:	53                   	push   rbx
  40077f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400780:	53                   	push   rbx
  400781:	5f                   	pop    rdi
  400782:	45 00 5f 5a          	add    BYTE PTR [r15+0x5a],r11b
  400786:	4e 53                	rex.WRX push rbx
  400788:	73 43                	jae    4007cd <_init-0x363>
  40078a:	31 45 52             	xor    DWORD PTR [rbp+0x52],eax
  40078d:	4b 53                	rex.WXB push r11
  40078f:	73 00                	jae    400791 <_init-0x39f>
  400791:	5f                   	pop    rdi
  400792:	5a                   	pop    rdx
  400793:	4e 53                	rex.WRX push rbx
  400795:	74 38                	je     4007cf <_init-0x361>
  400797:	69 6f 73 5f 62 61 73 	imul   ebp,DWORD PTR [rdi+0x73],0x7361625f
  40079e:	65 34 49             	gs xor al,0x49
  4007a1:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4007a2:	69 74 43 31 45 76 00 	imul   esi,DWORD PTR [rbx+rax*2+0x31],0x6c007645
  4007a9:	6c 
  4007aa:	69 62 67 63 63 5f 73 	imul   esp,DWORD PTR [rdx+0x67],0x735f6363
  4007b1:	2e 73 6f             	cs jae 400823 <_init-0x30d>
  4007b4:	2e 31 00             	xor    DWORD PTR cs:[rax],eax
  4007b7:	5f                   	pop    rdi
  4007b8:	55                   	push   rbp
  4007b9:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4007ba:	77 69                	ja     400825 <_init-0x30b>
  4007bc:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4007bd:	64 5f                	fs pop rdi
  4007bf:	52                   	push   rdx
  4007c0:	65 73 75             	gs jae 400838 <_init-0x2f8>
  4007c3:	6d                   	ins    DWORD PTR es:[rdi],dx
  4007c4:	65 00 6c 69 62       	add    BYTE PTR gs:[rcx+rbp*2+0x62],ch
  4007c9:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4007cb:	73 6f                	jae    40083c <_init-0x2f4>
  4007cd:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
  4007d2:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
  4007d5:	5f                   	pop    rdi
  4007d6:	61                   	(bad)  
  4007d7:	74 65                	je     40083e <_init-0x2f2>
  4007d9:	78 69                	js     400844 <_init-0x2ec>
  4007db:	74 00                	je     4007dd <_init-0x353>
  4007dd:	6d                   	ins    DWORD PTR es:[rdi],dx
  4007de:	65 6d                	gs ins DWORD PTR es:[rdi],dx
  4007e0:	63 6d 70             	movsxd ebp,DWORD PTR [rbp+0x70]
  4007e3:	00 70 74             	add    BYTE PTR [rax+0x74],dh
  4007e6:	72 61                	jb     400849 <_init-0x2e7>
  4007e8:	63 65 00             	movsxd esp,DWORD PTR [rbp+0x0]
  4007eb:	5f                   	pop    rdi
  4007ec:	5f                   	pop    rdi
  4007ed:	6c                   	ins    BYTE PTR es:[rdi],dx
  4007ee:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4007f5:	72 74                	jb     40086b <_init-0x2c5>
  4007f7:	5f                   	pop    rdi
  4007f8:	6d                   	ins    DWORD PTR es:[rdi],dx
  4007f9:	61                   	(bad)  
  4007fa:	69 6e 00 47 43 43 5f 	imul   ebp,DWORD PTR [rsi+0x0],0x5f434347
  400801:	33 2e                	xor    ebp,DWORD PTR [rsi]
  400803:	30 00                	xor    BYTE PTR [rax],al
  400805:	47                   	rex.RXB
  400806:	4c                   	rex.WR
  400807:	49                   	rex.WB
  400808:	42                   	rex.X
  400809:	43 5f                	rex.XB pop r15
  40080b:	32 2e                	xor    ch,BYTE PTR [rsi]
  40080d:	32 2e                	xor    ch,BYTE PTR [rsi]
  40080f:	35 00 43 58 58       	xor    eax,0x58584300
  400814:	41                   	rex.B
  400815:	42                   	rex.X
  400816:	49 5f                	rex.WB pop r15
  400818:	31 2e                	xor    DWORD PTR [rsi],ebp
  40081a:	33 00                	xor    eax,DWORD PTR [rax]
  40081c:	47                   	rex.RXB
  40081d:	4c                   	rex.WR
  40081e:	49                   	rex.WB
  40081f:	42                   	rex.X
  400820:	43 58                	rex.XB pop r8
  400822:	58                   	pop    rax
  400823:	5f                   	pop    rdi
  400824:	33 2e                	xor    ebp,DWORD PTR [rsi]
  400826:	34 00                	xor    al,0x0

Disassembly of section .gnu.version:

0000000000400828 <.gnu.version>:
  400828:	00 00                	add    BYTE PTR [rax],al
  40082a:	02 00                	add    al,BYTE PTR [rax]
  40082c:	00 00                	add    BYTE PTR [rax],al
  40082e:	00 00                	add    BYTE PTR [rax],al
  400830:	02 00                	add    al,BYTE PTR [rax]
  400832:	02 00                	add    al,BYTE PTR [rax]
  400834:	03 00                	add    eax,DWORD PTR [rax]
  400836:	02 00                	add    al,BYTE PTR [rax]
  400838:	03 00                	add    eax,DWORD PTR [rax]
  40083a:	00 00                	add    BYTE PTR [rax],al
  40083c:	02 00                	add    al,BYTE PTR [rax]
  40083e:	02 00                	add    al,BYTE PTR [rax]
  400840:	00 00                	add    BYTE PTR [rax],al
  400842:	02 00                	add    al,BYTE PTR [rax]
  400844:	03 00                	add    eax,DWORD PTR [rax]
  400846:	02 00                	add    al,BYTE PTR [rax]
  400848:	02 00                	add    al,BYTE PTR [rax]
  40084a:	02 00                	add    al,BYTE PTR [rax]
  40084c:	00 00                	add    BYTE PTR [rax],al
  40084e:	03 00                	add    eax,DWORD PTR [rax]
  400850:	02 00                	add    al,BYTE PTR [rax]
  400852:	02 00                	add    al,BYTE PTR [rax]
  400854:	05 00 02 00 02       	add    eax,0x2000200
  400859:	00 02                	add    BYTE PTR [rdx],al
  40085b:	00 02                	add    BYTE PTR [rdx],al
  40085d:	00 02                	add    BYTE PTR [rdx],al
  40085f:	00 04 00             	add    BYTE PTR [rax+rax*1],al

Disassembly of section .gnu.version_r:

0000000000400868 <.gnu.version_r>:
  400868:	01 00                	add    DWORD PTR [rax],eax
  40086a:	01 00                	add    DWORD PTR [rax],eax
  40086c:	19 02                	sbb    DWORD PTR [rdx],eax
  40086e:	00 00                	add    BYTE PTR [rax],al
  400870:	10 00                	adc    BYTE PTR [rax],al
  400872:	00 00                	add    BYTE PTR [rax],al
  400874:	20 00                	and    BYTE PTR [rax],al
  400876:	00 00                	add    BYTE PTR [rax],al
  400878:	50                   	push   rax
  400879:	26 79 0b             	es jns 400887 <_init-0x2a9>
  40087c:	00 00                	add    BYTE PTR [rax],al
  40087e:	05 00 6d 02 00       	add    eax,0x26d00
  400883:	00 00                	add    BYTE PTR [rax],al
  400885:	00 00                	add    BYTE PTR [rax],al
  400887:	00 01                	add    BYTE PTR [rcx],al
  400889:	00 01                	add    BYTE PTR [rcx],al
  40088b:	00 36                	add    BYTE PTR [rsi],dh
  40088d:	02 00                	add    al,BYTE PTR [rax]
  40088f:	00 10                	add    BYTE PTR [rax],dl
  400891:	00 00                	add    BYTE PTR [rax],al
  400893:	00 20                	add    BYTE PTR [rax],ah
  400895:	00 00                	add    BYTE PTR [rax],al
  400897:	00 75 1a             	add    BYTE PTR [rbp+0x1a],dh
  40089a:	69 09 00 00 03 00    	imul   ecx,DWORD PTR [rcx],0x30000
  4008a0:	75 02                	jne    4008a4 <_init-0x28c>
  4008a2:	00 00                	add    BYTE PTR [rax],al
  4008a4:	00 00                	add    BYTE PTR [rax],al
  4008a6:	00 00                	add    BYTE PTR [rax],al
  4008a8:	01 00                	add    DWORD PTR [rax],eax
  4008aa:	02 00                	add    al,BYTE PTR [rax]
  4008ac:	01 00                	add    DWORD PTR [rax],eax
  4008ae:	00 00                	add    BYTE PTR [rax],al
  4008b0:	10 00                	adc    BYTE PTR [rax],al
  4008b2:	00 00                	add    BYTE PTR [rax],al
  4008b4:	00 00                	add    BYTE PTR [rax],al
  4008b6:	00 00                	add    BYTE PTR [rax],al
  4008b8:	d3 af 6b 05 00 00    	shr    DWORD PTR [rdi+0x56b],cl
  4008be:	04 00                	add    al,0x0
  4008c0:	81 02 00 00 10 00    	add    DWORD PTR [rdx],0x100000
  4008c6:	00 00                	add    BYTE PTR [rax],al
  4008c8:	74 29                	je     4008f3 <_init-0x23d>
  4008ca:	92                   	xchg   edx,eax
  4008cb:	08 00                	or     BYTE PTR [rax],al
  4008cd:	00 02                	add    BYTE PTR [rdx],al
  4008cf:	00 8c 02 00 00 00 00 	add    BYTE PTR [rdx+rax*1+0x0],cl
	...

Disassembly of section .rela.dyn:

00000000004008d8 <.rela.dyn>:
  4008d8:	f8                   	clc    
  4008d9:	1f                   	(bad)  
  4008da:	60                   	(bad)  
  4008db:	00 00                	add    BYTE PTR [rax],al
  4008dd:	00 00                	add    BYTE PTR [rax],al
  4008df:	00 06                	add    BYTE PTR [rsi],al
  4008e1:	00 00                	add    BYTE PTR [rax],al
  4008e3:	00 02                	add    BYTE PTR [rdx],al
	...
  4008ed:	00 00                	add    BYTE PTR [rax],al
  4008ef:	00 e0                	add    al,ah
  4008f1:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  4008f4:	00 00                	add    BYTE PTR [rax],al
  4008f6:	00 00                	add    BYTE PTR [rax],al
  4008f8:	05 00 00 00 17       	add    eax,0x17000000
	...
  400909:	22 60 00             	and    ah,BYTE PTR [rax+0x0]
  40090c:	00 00                	add    BYTE PTR [rax],al
  40090e:	00 00                	add    BYTE PTR [rax],al
  400910:	05 00 00 00 1b       	add    eax,0x1b000000
	...

Disassembly of section .rela.plt:

0000000000400920 <.rela.plt>:
  400920:	18 20                	sbb    BYTE PTR [rax],ah
  400922:	60                   	(bad)  
  400923:	00 00                	add    BYTE PTR [rax],al
  400925:	00 00                	add    BYTE PTR [rax],al
  400927:	00 07                	add    BYTE PTR [rdi],al
  400929:	00 00                	add    BYTE PTR [rax],al
  40092b:	00 01                	add    BYTE PTR [rcx],al
	...
  400935:	00 00                	add    BYTE PTR [rax],al
  400937:	00 20                	add    BYTE PTR [rax],ah
  400939:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  40093c:	00 00                	add    BYTE PTR [rax],al
  40093e:	00 00                	add    BYTE PTR [rax],al
  400940:	07                   	(bad)  
  400941:	00 00                	add    BYTE PTR [rax],al
  400943:	00 02                	add    BYTE PTR [rdx],al
	...
  40094d:	00 00                	add    BYTE PTR [rax],al
  40094f:	00 28                	add    BYTE PTR [rax],ch
  400951:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  400954:	00 00                	add    BYTE PTR [rax],al
  400956:	00 00                	add    BYTE PTR [rax],al
  400958:	07                   	(bad)  
  400959:	00 00                	add    BYTE PTR [rax],al
  40095b:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  400966:	00 00                	add    BYTE PTR [rax],al
  400968:	30 20                	xor    BYTE PTR [rax],ah
  40096a:	60                   	(bad)  
  40096b:	00 00                	add    BYTE PTR [rax],al
  40096d:	00 00                	add    BYTE PTR [rax],al
  40096f:	00 07                	add    BYTE PTR [rdi],al
  400971:	00 00                	add    BYTE PTR [rax],al
  400973:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400979 <_init-0x1b7>
  400979:	00 00                	add    BYTE PTR [rax],al
  40097b:	00 00                	add    BYTE PTR [rax],al
  40097d:	00 00                	add    BYTE PTR [rax],al
  40097f:	00 38                	add    BYTE PTR [rax],bh
  400981:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  400984:	00 00                	add    BYTE PTR [rax],al
  400986:	00 00                	add    BYTE PTR [rax],al
  400988:	07                   	(bad)  
  400989:	00 00                	add    BYTE PTR [rax],al
  40098b:	00 06                	add    BYTE PTR [rsi],al
	...
  400995:	00 00                	add    BYTE PTR [rax],al
  400997:	00 40 20             	add    BYTE PTR [rax+0x20],al
  40099a:	60                   	(bad)  
  40099b:	00 00                	add    BYTE PTR [rax],al
  40099d:	00 00                	add    BYTE PTR [rax],al
  40099f:	00 07                	add    BYTE PTR [rdi],al
  4009a1:	00 00                	add    BYTE PTR [rax],al
  4009a3:	00 07                	add    BYTE PTR [rdi],al
	...
  4009ad:	00 00                	add    BYTE PTR [rax],al
  4009af:	00 48 20             	add    BYTE PTR [rax+0x20],cl
  4009b2:	60                   	(bad)  
  4009b3:	00 00                	add    BYTE PTR [rax],al
  4009b5:	00 00                	add    BYTE PTR [rax],al
  4009b7:	00 07                	add    BYTE PTR [rdi],al
  4009b9:	00 00                	add    BYTE PTR [rax],al
  4009bb:	00 08                	add    BYTE PTR [rax],cl
	...
  4009c5:	00 00                	add    BYTE PTR [rax],al
  4009c7:	00 50 20             	add    BYTE PTR [rax+0x20],dl
  4009ca:	60                   	(bad)  
  4009cb:	00 00                	add    BYTE PTR [rax],al
  4009cd:	00 00                	add    BYTE PTR [rax],al
  4009cf:	00 07                	add    BYTE PTR [rdi],al
  4009d1:	00 00                	add    BYTE PTR [rax],al
  4009d3:	00 1a                	add    BYTE PTR [rdx],bl
	...
  4009dd:	00 00                	add    BYTE PTR [rax],al
  4009df:	00 58 20             	add    BYTE PTR [rax+0x20],bl
  4009e2:	60                   	(bad)  
  4009e3:	00 00                	add    BYTE PTR [rax],al
  4009e5:	00 00                	add    BYTE PTR [rax],al
  4009e7:	00 07                	add    BYTE PTR [rdi],al
  4009e9:	00 00                	add    BYTE PTR [rax],al
  4009eb:	00 0a                	add    BYTE PTR [rdx],cl
	...
  4009f5:	00 00                	add    BYTE PTR [rax],al
  4009f7:	00 60 20             	add    BYTE PTR [rax+0x20],ah
  4009fa:	60                   	(bad)  
  4009fb:	00 00                	add    BYTE PTR [rax],al
  4009fd:	00 00                	add    BYTE PTR [rax],al
  4009ff:	00 07                	add    BYTE PTR [rdi],al
  400a01:	00 00                	add    BYTE PTR [rax],al
  400a03:	00 0b                	add    BYTE PTR [rbx],cl
	...
  400a0d:	00 00                	add    BYTE PTR [rax],al
  400a0f:	00 68 20             	add    BYTE PTR [rax+0x20],ch
  400a12:	60                   	(bad)  
  400a13:	00 00                	add    BYTE PTR [rax],al
  400a15:	00 00                	add    BYTE PTR [rax],al
  400a17:	00 07                	add    BYTE PTR [rdi],al
  400a19:	00 00                	add    BYTE PTR [rax],al
  400a1b:	00 18                	add    BYTE PTR [rax],bl
	...
  400a25:	00 00                	add    BYTE PTR [rax],al
  400a27:	00 70 20             	add    BYTE PTR [rax+0x20],dh
  400a2a:	60                   	(bad)  
  400a2b:	00 00                	add    BYTE PTR [rax],al
  400a2d:	00 00                	add    BYTE PTR [rax],al
  400a2f:	00 07                	add    BYTE PTR [rdi],al
  400a31:	00 00                	add    BYTE PTR [rax],al
  400a33:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 400a39 <_init-0xf7>
  400a39:	00 00                	add    BYTE PTR [rax],al
  400a3b:	00 00                	add    BYTE PTR [rax],al
  400a3d:	00 00                	add    BYTE PTR [rax],al
  400a3f:	00 78 20             	add    BYTE PTR [rax+0x20],bh
  400a42:	60                   	(bad)  
  400a43:	00 00                	add    BYTE PTR [rax],al
  400a45:	00 00                	add    BYTE PTR [rax],al
  400a47:	00 07                	add    BYTE PTR [rdi],al
  400a49:	00 00                	add    BYTE PTR [rax],al
  400a4b:	00 0e                	add    BYTE PTR [rsi],cl
	...
  400a55:	00 00                	add    BYTE PTR [rax],al
  400a57:	00 80 20 60 00 00    	add    BYTE PTR [rax+0x6020],al
  400a5d:	00 00                	add    BYTE PTR [rax],al
  400a5f:	00 07                	add    BYTE PTR [rdi],al
  400a61:	00 00                	add    BYTE PTR [rax],al
  400a63:	00 0f                	add    BYTE PTR [rdi],cl
	...
  400a6d:	00 00                	add    BYTE PTR [rax],al
  400a6f:	00 88 20 60 00 00    	add    BYTE PTR [rax+0x6020],cl
  400a75:	00 00                	add    BYTE PTR [rax],al
  400a77:	00 07                	add    BYTE PTR [rdi],al
  400a79:	00 00                	add    BYTE PTR [rax],al
  400a7b:	00 10                	add    BYTE PTR [rax],dl
	...
  400a85:	00 00                	add    BYTE PTR [rax],al
  400a87:	00 90 20 60 00 00    	add    BYTE PTR [rax+0x6020],dl
  400a8d:	00 00                	add    BYTE PTR [rax],al
  400a8f:	00 07                	add    BYTE PTR [rdi],al
  400a91:	00 00                	add    BYTE PTR [rax],al
  400a93:	00 11                	add    BYTE PTR [rcx],dl
	...
  400a9d:	00 00                	add    BYTE PTR [rax],al
  400a9f:	00 98 20 60 00 00    	add    BYTE PTR [rax+0x6020],bl
  400aa5:	00 00                	add    BYTE PTR [rax],al
  400aa7:	00 07                	add    BYTE PTR [rdi],al
  400aa9:	00 00                	add    BYTE PTR [rax],al
  400aab:	00 13                	add    BYTE PTR [rbx],dl
	...
  400ab5:	00 00                	add    BYTE PTR [rax],al
  400ab7:	00 a0 20 60 00 00    	add    BYTE PTR [rax+0x6020],ah
  400abd:	00 00                	add    BYTE PTR [rax],al
  400abf:	00 07                	add    BYTE PTR [rdi],al
  400ac1:	00 00                	add    BYTE PTR [rax],al
  400ac3:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
	...
  400ace:	00 00                	add    BYTE PTR [rax],al
  400ad0:	a8 20                	test   al,0x20
  400ad2:	60                   	(bad)  
  400ad3:	00 00                	add    BYTE PTR [rax],al
  400ad5:	00 00                	add    BYTE PTR [rax],al
  400ad7:	00 07                	add    BYTE PTR [rdi],al
  400ad9:	00 00                	add    BYTE PTR [rax],al
  400adb:	00 19                	add    BYTE PTR [rcx],bl
	...
  400ae5:	00 00                	add    BYTE PTR [rax],al
  400ae7:	00 b0 20 60 00 00    	add    BYTE PTR [rax+0x6020],dh
  400aed:	00 00                	add    BYTE PTR [rax],al
  400aef:	00 07                	add    BYTE PTR [rdi],al
  400af1:	00 00                	add    BYTE PTR [rax],al
  400af3:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 400af9 <_init-0x37>
  400af9:	00 00                	add    BYTE PTR [rax],al
  400afb:	00 00                	add    BYTE PTR [rax],al
  400afd:	00 00                	add    BYTE PTR [rax],al
  400aff:	00 b8 20 60 00 00    	add    BYTE PTR [rax+0x6020],bh
  400b05:	00 00                	add    BYTE PTR [rax],al
  400b07:	00 07                	add    BYTE PTR [rdi],al
  400b09:	00 00                	add    BYTE PTR [rax],al
  400b0b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
	...
  400b16:	00 00                	add    BYTE PTR [rax],al
  400b18:	c0 20 60             	shl    BYTE PTR [rax],0x60
  400b1b:	00 00                	add    BYTE PTR [rax],al
  400b1d:	00 00                	add    BYTE PTR [rax],al
  400b1f:	00 07                	add    BYTE PTR [rdi],al
  400b21:	00 00                	add    BYTE PTR [rax],al
  400b23:	00 16                	add    BYTE PTR [rsi],dl
	...

Disassembly of section .init:

0000000000400b30 <_init>:
  400b30:	48 83 ec 08          	sub    rsp,0x8
  400b34:	48 8b 05 bd 14 20 00 	mov    rax,QWORD PTR [rip+0x2014bd]        # 601ff8 <_DYNAMIC+0x1f0>
  400b3b:	48 85 c0             	test   rax,rax
  400b3e:	74 05                	je     400b45 <_init+0x15>
  400b40:	e8 2b 00 00 00       	call   400b70 <__gmon_start__@plt>
  400b45:	48 83 c4 08          	add    rsp,0x8
  400b49:	c3                   	ret    

Disassembly of section .plt:

0000000000400b50 <_ZNSsC1Ev@plt-0x10>:
  400b50:	ff 35 b2 14 20 00    	push   QWORD PTR [rip+0x2014b2]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b56:	ff 25 b4 14 20 00    	jmp    QWORD PTR [rip+0x2014b4]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400b60 <_ZNSsC1Ev@plt>:
  400b60:	ff 25 b2 14 20 00    	jmp    QWORD PTR [rip+0x2014b2]        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b66:	68 00 00 00 00       	push   0x0
  400b6b:	e9 e0 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400b70 <__gmon_start__@plt>:
  400b70:	ff 25 aa 14 20 00    	jmp    QWORD PTR [rip+0x2014aa]        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b76:	68 01 00 00 00       	push   0x1
  400b7b:	e9 d0 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400b80 <_ZNKSs4sizeEv@plt>:
  400b80:	ff 25 a2 14 20 00    	jmp    QWORD PTR [rip+0x2014a2]        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b86:	68 02 00 00 00       	push   0x2
  400b8b:	e9 c0 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400b90 <_ZNSt8ios_base4InitC1Ev@plt>:
  400b90:	ff 25 9a 14 20 00    	jmp    QWORD PTR [rip+0x20149a]        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b96:	68 03 00 00 00       	push   0x3
  400b9b:	e9 b0 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400ba0 <__libc_start_main@plt>:
  400ba0:	ff 25 92 14 20 00    	jmp    QWORD PTR [rip+0x201492]        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ba6:	68 04 00 00 00       	push   0x4
  400bab:	e9 a0 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400bb0 <_ZNSsC1ERKSs@plt>:
  400bb0:	ff 25 8a 14 20 00    	jmp    QWORD PTR [rip+0x20148a]        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bb6:	68 05 00 00 00       	push   0x5
  400bbb:	e9 90 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400bc0 <__cxa_atexit@plt>:
  400bc0:	ff 25 82 14 20 00    	jmp    QWORD PTR [rip+0x201482]        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400bc6:	68 06 00 00 00       	push   0x6
  400bcb:	e9 80 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400bd0 <_ZNSt8ios_base4InitD1Ev@plt>:
  400bd0:	ff 25 7a 14 20 00    	jmp    QWORD PTR [rip+0x20147a]        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400bd6:	68 07 00 00 00       	push   0x7
  400bdb:	e9 70 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400be0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400be0:	ff 25 72 14 20 00    	jmp    QWORD PTR [rip+0x201472]        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400be6:	68 08 00 00 00       	push   0x8
  400beb:	e9 60 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400bf0 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E@plt>:
  400bf0:	ff 25 6a 14 20 00    	jmp    QWORD PTR [rip+0x20146a]        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bf6:	68 09 00 00 00       	push   0x9
  400bfb:	e9 50 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c00 <_ZNSsD1Ev@plt>:
  400c00:	ff 25 62 14 20 00    	jmp    QWORD PTR [rip+0x201462]        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c06:	68 0a 00 00 00       	push   0xa
  400c0b:	e9 40 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c10 <_ZNSsC1EPKcRKSaIcE@plt>:
  400c10:	ff 25 5a 14 20 00    	jmp    QWORD PTR [rip+0x20145a]        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c16:	68 0b 00 00 00       	push   0xb
  400c1b:	e9 30 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c20 <ptrace@plt>:
  400c20:	ff 25 52 14 20 00    	jmp    QWORD PTR [rip+0x201452]        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c26:	68 0c 00 00 00       	push   0xc
  400c2b:	e9 20 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c30 <_ZNSsixEm@plt>:
  400c30:	ff 25 4a 14 20 00    	jmp    QWORD PTR [rip+0x20144a]        # 602080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c36:	68 0d 00 00 00       	push   0xd
  400c3b:	e9 10 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c40 <_ZNKSs4dataEv@plt>:
  400c40:	ff 25 42 14 20 00    	jmp    QWORD PTR [rip+0x201442]        # 602088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c46:	68 0e 00 00 00       	push   0xe
  400c4b:	e9 00 ff ff ff       	jmp    400b50 <_init+0x20>

0000000000400c50 <_ZNSaIcED1Ev@plt>:
  400c50:	ff 25 3a 14 20 00    	jmp    QWORD PTR [rip+0x20143a]        # 602090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c56:	68 0f 00 00 00       	push   0xf
  400c5b:	e9 f0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400c60 <memcmp@plt>:
  400c60:	ff 25 32 14 20 00    	jmp    QWORD PTR [rip+0x201432]        # 602098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c66:	68 10 00 00 00       	push   0x10
  400c6b:	e9 e0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400c70 <_ZNSolsEPFRSoS_E@plt>:
  400c70:	ff 25 2a 14 20 00    	jmp    QWORD PTR [rip+0x20142a]        # 6020a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c76:	68 11 00 00 00       	push   0x11
  400c7b:	e9 d0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400c80 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400c80:	ff 25 22 14 20 00    	jmp    QWORD PTR [rip+0x201422]        # 6020a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c86:	68 12 00 00 00       	push   0x12
  400c8b:	e9 c0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400c90 <_ZNSaIcEC1Ev@plt>:
  400c90:	ff 25 1a 14 20 00    	jmp    QWORD PTR [rip+0x20141a]        # 6020b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c96:	68 13 00 00 00       	push   0x13
  400c9b:	e9 b0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400ca0 <__gxx_personality_v0@plt>:
  400ca0:	ff 25 12 14 20 00    	jmp    QWORD PTR [rip+0x201412]        # 6020b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ca6:	68 14 00 00 00       	push   0x14
  400cab:	e9 a0 fe ff ff       	jmp    400b50 <_init+0x20>

0000000000400cb0 <_Unwind_Resume@plt>:
  400cb0:	ff 25 0a 14 20 00    	jmp    QWORD PTR [rip+0x20140a]        # 6020c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cb6:	68 15 00 00 00       	push   0x15
  400cbb:	e9 90 fe ff ff       	jmp    400b50 <_init+0x20>

Disassembly of section .text:

0000000000400cc0 <_start>:
  400cc0:	31 ed                	xor    ebp,ebp
  400cc2:	49 89 d1             	mov    r9,rdx
  400cc5:	5e                   	pop    rsi
  400cc6:	48 89 e2             	mov    rdx,rsp
  400cc9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400ccd:	50                   	push   rax
  400cce:	54                   	push   rsp
  400ccf:	49 c7 c0 c0 11 40 00 	mov    r8,0x4011c0
  400cd6:	48 c7 c1 50 11 40 00 	mov    rcx,0x401150
  400cdd:	48 c7 c7 be 0e 40 00 	mov    rdi,0x400ebe
  400ce4:	e8 b7 fe ff ff       	call   400ba0 <__libc_start_main@plt>
  400ce9:	f4                   	hlt    
  400cea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400cf0 <deregister_tm_clones>:
  400cf0:	b8 df 20 60 00       	mov    eax,0x6020df
  400cf5:	55                   	push   rbp
  400cf6:	48 2d d8 20 60 00    	sub    rax,0x6020d8
  400cfc:	48 83 f8 0e          	cmp    rax,0xe
  400d00:	48 89 e5             	mov    rbp,rsp
  400d03:	77 02                	ja     400d07 <deregister_tm_clones+0x17>
  400d05:	5d                   	pop    rbp
  400d06:	c3                   	ret    
  400d07:	b8 00 00 00 00       	mov    eax,0x0
  400d0c:	48 85 c0             	test   rax,rax
  400d0f:	74 f4                	je     400d05 <deregister_tm_clones+0x15>
  400d11:	5d                   	pop    rbp
  400d12:	bf d8 20 60 00       	mov    edi,0x6020d8
  400d17:	ff e0                	jmp    rax
  400d19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400d20 <register_tm_clones>:
  400d20:	b8 d8 20 60 00       	mov    eax,0x6020d8
  400d25:	55                   	push   rbp
  400d26:	48 2d d8 20 60 00    	sub    rax,0x6020d8
  400d2c:	48 c1 f8 03          	sar    rax,0x3
  400d30:	48 89 e5             	mov    rbp,rsp
  400d33:	48 89 c2             	mov    rdx,rax
  400d36:	48 c1 ea 3f          	shr    rdx,0x3f
  400d3a:	48 01 d0             	add    rax,rdx
  400d3d:	48 d1 f8             	sar    rax,1
  400d40:	75 02                	jne    400d44 <register_tm_clones+0x24>
  400d42:	5d                   	pop    rbp
  400d43:	c3                   	ret    
  400d44:	ba 00 00 00 00       	mov    edx,0x0
  400d49:	48 85 d2             	test   rdx,rdx
  400d4c:	74 f4                	je     400d42 <register_tm_clones+0x22>
  400d4e:	5d                   	pop    rbp
  400d4f:	48 89 c6             	mov    rsi,rax
  400d52:	bf d8 20 60 00       	mov    edi,0x6020d8
  400d57:	ff e2                	jmp    rdx
  400d59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400d60 <__do_global_dtors_aux>:
  400d60:	80 3d a9 15 20 00 00 	cmp    BYTE PTR [rip+0x2015a9],0x0        # 602310 <completed.6973>
  400d67:	75 11                	jne    400d7a <__do_global_dtors_aux+0x1a>
  400d69:	55                   	push   rbp
  400d6a:	48 89 e5             	mov    rbp,rsp
  400d6d:	e8 7e ff ff ff       	call   400cf0 <deregister_tm_clones>
  400d72:	5d                   	pop    rbp
  400d73:	c6 05 96 15 20 00 01 	mov    BYTE PTR [rip+0x201596],0x1        # 602310 <completed.6973>
  400d7a:	f3 c3                	repz ret 
  400d7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400d80 <frame_dummy>:
  400d80:	48 83 3d 78 10 20 00 	cmp    QWORD PTR [rip+0x201078],0x0        # 601e00 <__JCR_END__>
  400d87:	00 
  400d88:	74 1e                	je     400da8 <frame_dummy+0x28>
  400d8a:	b8 00 00 00 00       	mov    eax,0x0
  400d8f:	48 85 c0             	test   rax,rax
  400d92:	74 14                	je     400da8 <frame_dummy+0x28>
  400d94:	55                   	push   rbp
  400d95:	bf 00 1e 60 00       	mov    edi,0x601e00
  400d9a:	48 89 e5             	mov    rbp,rsp
  400d9d:	ff d0                	call   rax
  400d9f:	5d                   	pop    rbp
  400da0:	e9 7b ff ff ff       	jmp    400d20 <register_tm_clones>
  400da5:	0f 1f 00             	nop    DWORD PTR [rax]
  400da8:	e9 73 ff ff ff       	jmp    400d20 <register_tm_clones>

0000000000400dad <_Z11stack_checkv>:
  400dad:	55                   	push   rbp
  400dae:	48 89 e5             	mov    rbp,rsp
  400db1:	53                   	push   rbx
  400db2:	48 83 ec 38          	sub    rsp,0x38
  400db6:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  400dba:	48 8d 45 db          	lea    rax,[rbp-0x25]
  400dbe:	48 89 c7             	mov    rdi,rax
  400dc1:	e8 ca fe ff ff       	call   400c90 <_ZNSaIcEC1Ev@plt>
  400dc6:	48 8d 55 db          	lea    rdx,[rbp-0x25]
  400dca:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400dce:	be d8 11 40 00       	mov    esi,0x4011d8
  400dd3:	48 89 c7             	mov    rdi,rax
  400dd6:	e8 35 fe ff ff       	call   400c10 <_ZNSsC1EPKcRKSaIcE@plt>
  400ddb:	48 8d 45 db          	lea    rax,[rbp-0x25]
  400ddf:	48 89 c7             	mov    rdi,rax
  400de2:	e8 69 fe ff ff       	call   400c50 <_ZNSaIcED1Ev@plt>
  400de7:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [rbp-0x24],0x0
  400dee:	eb 55                	jmp    400e45 <_Z11stack_checkv+0x98>
  400df0:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400df3:	48 63 d8             	movsxd rbx,eax
  400df6:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400dfa:	48 89 c7             	mov    rdi,rax
  400dfd:	e8 7e fd ff ff       	call   400b80 <_ZNKSs4sizeEv@plt>
  400e02:	48 89 c1             	mov    rcx,rax
  400e05:	48 89 d8             	mov    rax,rbx
  400e08:	ba 00 00 00 00       	mov    edx,0x0
  400e0d:	48 f7 f1             	div    rcx
  400e10:	48 89 d1             	mov    rcx,rdx
  400e13:	48 89 ca             	mov    rdx,rcx
  400e16:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400e1a:	48 89 d6             	mov    rsi,rdx
  400e1d:	48 89 c7             	mov    rdi,rax
  400e20:	e8 0b fe ff ff       	call   400c30 <_ZNSsixEm@plt>
  400e25:	0f b6 18             	movzx  ebx,BYTE PTR [rax]
  400e28:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400e2b:	48 98                	cdqe   
  400e2d:	48 89 c6             	mov    rsi,rax
  400e30:	bf 18 23 60 00       	mov    edi,0x602318
  400e35:	e8 f6 fd ff ff       	call   400c30 <_ZNSsixEm@plt>
  400e3a:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  400e3d:	31 da                	xor    edx,ebx
  400e3f:	88 10                	mov    BYTE PTR [rax],dl
  400e41:	83 45 dc 01          	add    DWORD PTR [rbp-0x24],0x1
  400e45:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400e48:	48 63 d8             	movsxd rbx,eax
  400e4b:	bf 18 23 60 00       	mov    edi,0x602318
  400e50:	e8 2b fd ff ff       	call   400b80 <_ZNKSs4sizeEv@plt>
  400e55:	48 39 c3             	cmp    rbx,rax
  400e58:	0f 92 c0             	setb   al
  400e5b:	84 c0                	test   al,al
  400e5d:	75 91                	jne    400df0 <_Z11stack_checkv+0x43>
  400e5f:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400e63:	be 18 23 60 00       	mov    esi,0x602318
  400e68:	48 89 c7             	mov    rdi,rax
  400e6b:	e8 40 fd ff ff       	call   400bb0 <_ZNSsC1ERKSs@plt>
  400e70:	90                   	nop
  400e71:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400e75:	48 89 c7             	mov    rdi,rax
  400e78:	e8 83 fd ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400e7d:	eb 34                	jmp    400eb3 <_Z11stack_checkv+0x106>
  400e7f:	48 89 c3             	mov    rbx,rax
  400e82:	48 8d 45 db          	lea    rax,[rbp-0x25]
  400e86:	48 89 c7             	mov    rdi,rax
  400e89:	e8 c2 fd ff ff       	call   400c50 <_ZNSaIcED1Ev@plt>
  400e8e:	48 89 d8             	mov    rax,rbx
  400e91:	48 89 c7             	mov    rdi,rax
  400e94:	e8 17 fe ff ff       	call   400cb0 <_Unwind_Resume@plt>
  400e99:	48 89 c3             	mov    rbx,rax
  400e9c:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400ea0:	48 89 c7             	mov    rdi,rax
  400ea3:	e8 58 fd ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400ea8:	48 89 d8             	mov    rax,rbx
  400eab:	48 89 c7             	mov    rdi,rax
  400eae:	e8 fd fd ff ff       	call   400cb0 <_Unwind_Resume@plt>
  400eb3:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400eb7:	48 83 c4 38          	add    rsp,0x38
  400ebb:	5b                   	pop    rbx
  400ebc:	5d                   	pop    rbp
  400ebd:	c3                   	ret    

0000000000400ebe <main>:
  400ebe:	55                   	push   rbp
  400ebf:	48 89 e5             	mov    rbp,rsp
  400ec2:	53                   	push   rbx
  400ec3:	48 83 ec 28          	sub    rsp,0x28
  400ec7:	b9 00 00 00 00       	mov    ecx,0x0
  400ecc:	ba 01 00 00 00       	mov    edx,0x1
  400ed1:	be 00 00 00 00       	mov    esi,0x0
  400ed6:	bf 00 00 00 00       	mov    edi,0x0
  400edb:	b8 00 00 00 00       	mov    eax,0x0
  400ee0:	e8 3b fd ff ff       	call   400c20 <ptrace@plt>
  400ee5:	48 c1 e8 3f          	shr    rax,0x3f
  400ee9:	84 c0                	test   al,al
  400eeb:	74 19                	je     400f06 <main+0x48>
  400eed:	be dc 11 40 00       	mov    esi,0x4011dc
  400ef2:	bf 00 22 60 00       	mov    edi,0x602200
  400ef7:	e8 e4 fc ff ff       	call   400be0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400efc:	bb 2a 00 00 00       	mov    ebx,0x2a
  400f01:	e9 a8 00 00 00       	jmp    400fae <main+0xf0>
  400f06:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400f0a:	48 89 c7             	mov    rdi,rax
  400f0d:	e8 4e fc ff ff       	call   400b60 <_ZNSsC1Ev@plt>
  400f12:	be f7 11 40 00       	mov    esi,0x4011f7
  400f17:	bf 00 22 60 00       	mov    edi,0x602200
  400f1c:	e8 bf fc ff ff       	call   400be0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400f21:	48 8d 45 d0          	lea    rax,[rbp-0x30] # Input around here
  400f25:	48 89 c6             	mov    rsi,rax
  400f28:	bf e0 20 60 00       	mov    edi,0x6020e0
  400f2d:	e8 be fc ff ff       	call   400bf0 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E@plt>
  400f32:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400f36:	48 89 c7             	mov    rdi,rax
  400f39:	e8 6f fe ff ff       	call   400dad <_Z11stack_checkv>
  400f3e:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  400f42:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400f46:	48 89 d6             	mov    rsi,rdx
  400f49:	48 89 c7             	mov    rdi,rax
  400f4c:	e8 7a 01 00 00       	call   4010cb <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_>
  400f51:	89 c3                	mov    ebx,eax
  400f53:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400f57:	48 89 c7             	mov    rdi,rax
  400f5a:	e8 a1 fc ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400f5f:	84 db                	test   bl,bl
  400f61:	74 1e                	je     400f81 <main+0xc3>
  400f63:	be 10 12 40 00       	mov    esi,0x401210
  400f68:	bf 00 22 60 00       	mov    edi,0x602200
  400f6d:	e8 6e fc ff ff       	call   400be0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400f72:	be 80 0c 40 00       	mov    esi,0x400c80
  400f77:	48 89 c7             	mov    rdi,rax
  400f7a:	e8 f1 fc ff ff       	call   400c70 <_ZNSolsEPFRSoS_E@plt>
  400f7f:	eb 1c                	jmp    400f9d <main+0xdf>
  400f81:	be 50 12 40 00       	mov    esi,0x401250
  400f86:	bf 00 22 60 00       	mov    edi,0x602200
  400f8b:	e8 50 fc ff ff       	call   400be0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400f90:	be 80 0c 40 00       	mov    esi,0x400c80
  400f95:	48 89 c7             	mov    rdi,rax
  400f98:	e8 d3 fc ff ff       	call   400c70 <_ZNSolsEPFRSoS_E@plt>
  400f9d:	bb 00 00 00 00       	mov    ebx,0x0
  400fa2:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400fa6:	48 89 c7             	mov    rdi,rax
  400fa9:	e8 52 fc ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400fae:	89 d8                	mov    eax,ebx
  400fb0:	eb 2b                	jmp    400fdd <main+0x11f>
  400fb2:	48 89 c3             	mov    rbx,rax
  400fb5:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400fb9:	48 89 c7             	mov    rdi,rax
  400fbc:	e8 3f fc ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400fc1:	eb 03                	jmp    400fc6 <main+0x108>
  400fc3:	48 89 c3             	mov    rbx,rax
  400fc6:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400fca:	48 89 c7             	mov    rdi,rax
  400fcd:	e8 2e fc ff ff       	call   400c00 <_ZNSsD1Ev@plt>
  400fd2:	48 89 d8             	mov    rax,rbx
  400fd5:	48 89 c7             	mov    rdi,rax
  400fd8:	e8 d3 fc ff ff       	call   400cb0 <_Unwind_Resume@plt>
  400fdd:	48 83 c4 28          	add    rsp,0x28
  400fe1:	5b                   	pop    rbx
  400fe2:	5d                   	pop    rbp
  400fe3:	c3                   	ret    

0000000000400fe4 <_Z41__static_initialization_and_destruction_0ii>:
  400fe4:	55                   	push   rbp
  400fe5:	48 89 e5             	mov    rbp,rsp
  400fe8:	53                   	push   rbx
  400fe9:	48 83 ec 28          	sub    rsp,0x28
  400fed:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
  400ff0:	89 75 d8             	mov    DWORD PTR [rbp-0x28],esi
  400ff3:	83 7d dc 01          	cmp    DWORD PTR [rbp-0x24],0x1
  400ff7:	0f 85 85 00 00 00    	jne    401082 <_Z41__static_initialization_and_destruction_0ii+0x9e>
  400ffd:	81 7d d8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x28],0xffff
  401004:	75 7c                	jne    401082 <_Z41__static_initialization_and_destruction_0ii+0x9e>
  401006:	bf 20 23 60 00       	mov    edi,0x602320
  40100b:	e8 80 fb ff ff       	call   400b90 <_ZNSt8ios_base4InitC1Ev@plt>
  401010:	ba d0 20 60 00       	mov    edx,0x6020d0
  401015:	be 20 23 60 00       	mov    esi,0x602320
  40101a:	bf d0 0b 40 00       	mov    edi,0x400bd0
  40101f:	e8 9c fb ff ff       	call   400bc0 <__cxa_atexit@plt>
  401024:	48 8d 45 ef          	lea    rax,[rbp-0x11]
  401028:	48 89 c7             	mov    rdi,rax
  40102b:	e8 60 fc ff ff       	call   400c90 <_ZNSaIcEC1Ev@plt>
  401030:	48 8d 45 ef          	lea    rax,[rbp-0x11]
  401034:	48 89 c2             	mov    rdx,rax
  401037:	be 78 12 40 00       	mov    esi,0x401278
  40103c:	bf 18 23 60 00       	mov    edi,0x602318
  401041:	e8 ca fb ff ff       	call   400c10 <_ZNSsC1EPKcRKSaIcE@plt>
  401046:	48 8d 45 ef          	lea    rax,[rbp-0x11]
  40104a:	48 89 c7             	mov    rdi,rax
  40104d:	e8 fe fb ff ff       	call   400c50 <_ZNSaIcED1Ev@plt>
  401052:	ba d0 20 60 00       	mov    edx,0x6020d0
  401057:	be 18 23 60 00       	mov    esi,0x602318
  40105c:	bf 00 0c 40 00       	mov    edi,0x400c00
  401061:	e8 5a fb ff ff       	call   400bc0 <__cxa_atexit@plt>
  401066:	eb 1a                	jmp    401082 <_Z41__static_initialization_and_destruction_0ii+0x9e>
  401068:	48 89 c3             	mov    rbx,rax
  40106b:	48 8d 45 ef          	lea    rax,[rbp-0x11]
  40106f:	48 89 c7             	mov    rdi,rax
  401072:	e8 d9 fb ff ff       	call   400c50 <_ZNSaIcED1Ev@plt>
  401077:	48 89 d8             	mov    rax,rbx
  40107a:	48 89 c7             	mov    rdi,rax
  40107d:	e8 2e fc ff ff       	call   400cb0 <_Unwind_Resume@plt>
  401082:	48 83 c4 28          	add    rsp,0x28
  401086:	5b                   	pop    rbx
  401087:	5d                   	pop    rbp
  401088:	c3                   	ret    

0000000000401089 <_GLOBAL__sub_I_base>:
  401089:	55                   	push   rbp
  40108a:	48 89 e5             	mov    rbp,rsp
  40108d:	be ff ff 00 00       	mov    esi,0xffff
  401092:	bf 01 00 00 00       	mov    edi,0x1
  401097:	e8 48 ff ff ff       	call   400fe4 <_Z41__static_initialization_and_destruction_0ii>
  40109c:	5d                   	pop    rbp
  40109d:	c3                   	ret    

000000000040109e <_ZNSt11char_traitsIcE7compareEPKcS2_m>:
  40109e:	55                   	push   rbp
  40109f:	48 89 e5             	mov    rbp,rsp
  4010a2:	48 83 ec 20          	sub    rsp,0x20
  4010a6:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4010aa:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4010ae:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4010b2:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4010b6:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  4010ba:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4010be:	48 89 ce             	mov    rsi,rcx
  4010c1:	48 89 c7             	mov    rdi,rax
  4010c4:	e8 97 fb ff ff       	call   400c60 <memcmp@plt>
  4010c9:	c9                   	leave  
  4010ca:	c3                   	ret    

00000000004010cb <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_>:
  4010cb:	55                   	push   rbp
  4010cc:	48 89 e5             	mov    rbp,rsp
  4010cf:	41 54                	push   r12
  4010d1:	53                   	push   rbx
  4010d2:	48 83 ec 10          	sub    rsp,0x10
  4010d6:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4010da:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4010de:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4010e2:	48 89 c7             	mov    rdi,rax
  4010e5:	e8 96 fa ff ff       	call   400b80 <_ZNKSs4sizeEv@plt>
  4010ea:	48 89 c3             	mov    rbx,rax
  4010ed:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4010f1:	48 89 c7             	mov    rdi,rax
  4010f4:	e8 87 fa ff ff       	call   400b80 <_ZNKSs4sizeEv@plt>
  4010f9:	48 39 c3             	cmp    rbx,rax
  4010fc:	75 43                	jne    401141 <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_+0x76>
  4010fe:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401102:	48 89 c7             	mov    rdi,rax
  401105:	e8 76 fa ff ff       	call   400b80 <_ZNKSs4sizeEv@plt>
  40110a:	49 89 c4             	mov    r12,rax
  40110d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  401111:	48 89 c7             	mov    rdi,rax
  401114:	e8 27 fb ff ff       	call   400c40 <_ZNKSs4dataEv@plt>
  401119:	48 89 c3             	mov    rbx,rax
  40111c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401120:	48 89 c7             	mov    rdi,rax
  401123:	e8 18 fb ff ff       	call   400c40 <_ZNKSs4dataEv@plt>
  401128:	4c 89 e2             	mov    rdx,r12
  40112b:	48 89 de             	mov    rsi,rbx
  40112e:	48 89 c7             	mov    rdi,rax
  401131:	e8 68 ff ff ff       	call   40109e <_ZNSt11char_traitsIcE7compareEPKcS2_m>
  401136:	85 c0                	test   eax,eax
  401138:	75 07                	jne    401141 <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_+0x76>
  40113a:	b8 01 00 00 00       	mov    eax,0x1
  40113f:	eb 05                	jmp    401146 <_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKSbIS3_St11char_traitsIS3_ESaIS3_EESC_+0x7b>
  401141:	b8 00 00 00 00       	mov    eax,0x0
  401146:	48 83 c4 10          	add    rsp,0x10
  40114a:	5b                   	pop    rbx
  40114b:	41 5c                	pop    r12
  40114d:	5d                   	pop    rbp
  40114e:	c3                   	ret    
  40114f:	90                   	nop

0000000000401150 <__libc_csu_init>:
  401150:	41 57                	push   r15
  401152:	41 89 ff             	mov    r15d,edi
  401155:	41 56                	push   r14
  401157:	49 89 f6             	mov    r14,rsi
  40115a:	41 55                	push   r13
  40115c:	49 89 d5             	mov    r13,rdx
  40115f:	41 54                	push   r12
  401161:	4c 8d 25 80 0c 20 00 	lea    r12,[rip+0x200c80]        # 601de8 <__frame_dummy_init_array_entry>
  401168:	55                   	push   rbp
  401169:	48 8d 2d 88 0c 20 00 	lea    rbp,[rip+0x200c88]        # 601df8 <__init_array_end>
  401170:	53                   	push   rbx
  401171:	4c 29 e5             	sub    rbp,r12
  401174:	31 db                	xor    ebx,ebx
  401176:	48 c1 fd 03          	sar    rbp,0x3
  40117a:	48 83 ec 08          	sub    rsp,0x8
  40117e:	e8 ad f9 ff ff       	call   400b30 <_init>
  401183:	48 85 ed             	test   rbp,rbp
  401186:	74 1e                	je     4011a6 <__libc_csu_init+0x56>
  401188:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40118f:	00 
  401190:	4c 89 ea             	mov    rdx,r13
  401193:	4c 89 f6             	mov    rsi,r14
  401196:	44 89 ff             	mov    edi,r15d
  401199:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40119d:	48 83 c3 01          	add    rbx,0x1
  4011a1:	48 39 eb             	cmp    rbx,rbp
  4011a4:	75 ea                	jne    401190 <__libc_csu_init+0x40>
  4011a6:	48 83 c4 08          	add    rsp,0x8
  4011aa:	5b                   	pop    rbx
  4011ab:	5d                   	pop    rbp
  4011ac:	41 5c                	pop    r12
  4011ae:	41 5d                	pop    r13
  4011b0:	41 5e                	pop    r14
  4011b2:	41 5f                	pop    r15
  4011b4:	c3                   	ret    
  4011b5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4011bc:	00 00 00 00 

00000000004011c0 <__libc_csu_fini>:
  4011c0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004011c4 <_fini>:
  4011c4:	48 83 ec 08          	sub    rsp,0x8
  4011c8:	48 83 c4 08          	add    rsp,0x8
  4011cc:	c3                   	ret    

Disassembly of section .rodata:

00000000004011d0 <_IO_stdin_used>:
  4011d0:	01 00                	add    DWORD PTR [rax],eax
  4011d2:	02 00                	add    al,BYTE PTR [rax]
  4011d4:	00 00                	add    BYTE PTR [rax],al
  4011d6:	00 00                	add    BYTE PTR [rax],al
  4011d8:	47                   	rex.RXB
  4011d9:	44                   	rex.R
  4011da:	42 00 4f 68          	rex.X add BYTE PTR [rdi+0x68],cl
  4011de:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
  4011e1:	2c 20                	sub    al,0x20
  4011e3:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  4011e5:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4011e6:	27                   	(bad)  
  4011e7:	74 20                	je     401209 <_IO_stdin_used+0x39>
  4011e9:	64 65 62             	fs gs (bad) 
  4011ec:	75 67                	jne    401255 <_IO_stdin_used+0x85>
  4011ee:	20 6d 65             	and    BYTE PTR [rbp+0x65],ch
  4011f1:	20 70 6c             	and    BYTE PTR [rax+0x6c],dh
  4011f4:	7a 0a                	jp     401200 <_IO_stdin_used+0x30>
  4011f6:	00 45 6e             	add    BYTE PTR [rbp+0x6e],al
  4011f9:	74 65                	je     401260 <_IO_stdin_used+0x90>
  4011fb:	72 20                	jb     40121d <_IO_stdin_used+0x4d>
  4011fd:	79 6f                	jns    40126e <_IO_stdin_used+0x9e>
  4011ff:	75 72                	jne    401273 <_IO_stdin_used+0xa3>
  401201:	20 66 6c             	and    BYTE PTR [rsi+0x6c],ah
  401204:	61                   	(bad)  
  401205:	67 20 3a             	and    BYTE PTR [edx],bh
  401208:	20 00                	and    BYTE PTR [rax],al
  40120a:	00 00                	add    BYTE PTR [rax],al
  40120c:	00 00                	add    BYTE PTR [rax],al
  40120e:	00 00                	add    BYTE PTR [rax],al
  401210:	43 6f                	rex.XB outs dx,DWORD PTR ds:[rsi]
  401212:	72 72                	jb     401286 <_IO_stdin_used+0xb6>
  401214:	65 63 74 20 62       	movsxd esi,DWORD PTR gs:[rax+riz*1+0x62]
  401219:	75 74                	jne    40128f <_IO_stdin_used+0xbf>
  40121b:	20 74 68 69          	and    BYTE PTR [rax+rbp*2+0x69],dh
  40121f:	73 20                	jae    401241 <_IO_stdin_used+0x71>
  401221:	69 73 20 6a 75 73 74 	imul   esi,DWORD PTR [rbx+0x20],0x7473756a
  401228:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
  40122c:	20 66 69             	and    BYTE PTR [rsi+0x69],ah
  40122f:	72 73                	jb     4012a4 <_IO_stdin_used+0xd4>
  401231:	74 20                	je     401253 <_IO_stdin_used+0x83>
  401233:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  401234:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  401235:	65 0a 56 61          	or     dl,BYTE PTR gs:[rsi+0x61]
  401239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40123a:	69 64 61 74 65 20 77 	imul   esp,DWORD PTR [rcx+riz*2+0x74],0x69772065
  401241:	69 
  401242:	74 68                	je     4012ac <_IO_stdin_used+0xdc>
  401244:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
  401248:	20 66 6c             	and    BYTE PTR [rsi+0x6c],ah
  40124b:	61                   	(bad)  
  40124c:	67 00 00             	add    BYTE PTR [eax],al
  40124f:	00 53 6f             	add    BYTE PTR [rbx+0x6f],dl
  401252:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  401253:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  401254:	20 62 61             	and    BYTE PTR [rdx+0x61],ah
  401257:	64 2e 20 41 72       	fs and BYTE PTR cs:[rcx+0x72],al
  40125c:	65 20 79 6f          	and    BYTE PTR gs:[rcx+0x6f],bh
  401260:	75 20                	jne    401282 <_IO_stdin_used+0xb2>
  401262:	74 72                	je     4012d6 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x1e>
  401264:	79 69                	jns    4012cf <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x17>
  401266:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  401267:	67 20 74 6f 20       	and    BYTE PTR [edi+ebp*2+0x20],dh
  40126c:	74 72                	je     4012e0 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x28>
  40126e:	69 63 6b 20 6d 65 20 	imul   esp,DWORD PTR [rbx+0x6b],0x20656d20
  401275:	3f                   	(bad)  
  401276:	00 00                	add    BYTE PTR [rax],al
  401278:	0e                   	(bad)  
  401279:	0a 11                	or     dl,BYTE PTR [rcx]
  40127b:	06                   	(bad)  
  40127c:	3f                   	(bad)  
  40127d:	01 1f                	add    DWORD PTR [rdi],ebx
  40127f:	1c 1d                	sbb    al,0x1d
  401281:	76 37                	jbe    4012ba <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x2>
  401283:	1d 2f 70 30 23       	sbb    eax,0x2330702f
  401288:	77 30                	ja     4012ba <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x2>
  40128a:	18 22                	sbb    BYTE PTR [rdx],ah
  40128c:	72 35                	jb     4012c3 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0xb>
  40128e:	1b 31                	sbb    esi,DWORD PTR [rcx]
  401290:	33 70 36             	xor    esi,DWORD PTR [rax+0x36]
  401293:	76 27                	jbe    4012bc <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x4>
  401295:	1d 73 2a 76 2b       	sbb    eax,0x2b762a73
  40129a:	75 31                	jne    4012cd <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x15>
  40129c:	3e 37                	ds (bad) 
  40129e:	1d 30 2c 71 29       	sbb    eax,0x29712c30
  4012a3:	1b 26                	sbb    esp,DWORD PTR [rsi]
  4012a5:	74 26                	je     4012cd <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x15>
  4012a7:	37                   	(bad)  
  4012a8:	20 23                	and    BYTE PTR [rbx],ah
  4012aa:	71 35                	jno    4012e1 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x29>
  4012ac:	1b 24 73             	sbb    esp,DWORD PTR [rbx+rsi*2]
  4012af:	75 2e                	jne    4012df <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x27>
  4012b1:	34 39                	xor    al,0x39
  4012b3:	00 00                	add    BYTE PTR [rax],al
  4012b5:	00 00                	add    BYTE PTR [rax],al
	...

00000000004012b8 <_ZZL18__gthread_active_pvE20__gthread_active_ptr>:
	...

Disassembly of section .eh_frame_hdr:

00000000004012c0 <.eh_frame_hdr>:
  4012c0:	01 1b                	add    DWORD PTR [rbx],ebx
  4012c2:	03 3b                	add    edi,DWORD PTR [rbx]
  4012c4:	5c                   	pop    rsp
  4012c5:	00 00                	add    BYTE PTR [rax],al
  4012c7:	00 0a                	add    BYTE PTR [rdx],cl
  4012c9:	00 00                	add    BYTE PTR [rax],al
  4012cb:	00 90 f8 ff ff a8    	add    BYTE PTR [rax-0x57000008],dl
  4012d1:	00 00                	add    BYTE PTR [rax],al
  4012d3:	00 00                	add    BYTE PTR [rax],al
  4012d5:	fa                   	cli    
  4012d6:	ff                   	(bad)  
  4012d7:	ff                   	(bad)  
  4012d8:	78 00                	js     4012da <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x22>
  4012da:	00 00                	add    BYTE PTR [rax],al
  4012dc:	ed                   	in     eax,dx
  4012dd:	fa                   	cli    
  4012de:	ff                   	(bad)  
  4012df:	ff 10                	call   QWORD PTR [rax]
  4012e1:	01 00                	add    DWORD PTR [rax],eax
  4012e3:	00 fe                	add    dh,bh
  4012e5:	fb                   	sti    
  4012e6:	ff                   	(bad)  
  4012e7:	ff                   	(bad)  
  4012e8:	38 01                	cmp    BYTE PTR [rcx],al
  4012ea:	00 00                	add    BYTE PTR [rax],al
  4012ec:	24 fd                	and    al,0xfd
  4012ee:	ff                   	(bad)  
  4012ef:	ff 88 01 00 00 c9    	dec    DWORD PTR [rax-0x36ffffff]
  4012f5:	fd                   	std    
  4012f6:	ff                   	(bad)  
  4012f7:	ff b0 01 00 00 de    	push   QWORD PTR [rax-0x21ffffff]
  4012fd:	fd                   	std    
  4012fe:	ff                   	(bad)  
  4012ff:	ff d0                	call   rax
  401301:	00 00                	add    BYTE PTR [rax],al
  401303:	00 0b                	add    BYTE PTR [rbx],cl
  401305:	fe                   	(bad)  
  401306:	ff                   	(bad)  
  401307:	ff 60 01             	jmp    QWORD PTR [rax+0x1]
  40130a:	00 00                	add    BYTE PTR [rax],al
  40130c:	90                   	nop
  40130d:	fe                   	(bad)  
  40130e:	ff                   	(bad)  
  40130f:	ff d0                	call   rax
  401311:	01 00                	add    DWORD PTR [rax],eax
  401313:	00 00                	add    BYTE PTR [rax],al
  401315:	ff                   	(bad)  
  401316:	ff                   	(bad)  
  401317:	ff 18                	call   FWORD PTR [rax]
  401319:	02 00                	add    al,BYTE PTR [rax]
	...

Disassembly of section .eh_frame:

0000000000401320 <__FRAME_END__-0x1d0>:
  401320:	14 00                	adc    al,0x0
  401322:	00 00                	add    BYTE PTR [rax],al
  401324:	00 00                	add    BYTE PTR [rax],al
  401326:	00 00                	add    BYTE PTR [rax],al
  401328:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  40132b:	00 01                	add    BYTE PTR [rcx],al
  40132d:	78 10                	js     40133f <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x87>
  40132f:	01 1b                	add    DWORD PTR [rbx],ebx
  401331:	0c 07                	or     al,0x7
  401333:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
  401339:	00 00                	add    BYTE PTR [rax],al
  40133b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  40133e:	00 00                	add    BYTE PTR [rax],al
  401340:	80 f9 ff             	cmp    cl,0xff
  401343:	ff 2a                	jmp    FWORD PTR [rdx]
	...
  40134d:	00 00                	add    BYTE PTR [rax],al
  40134f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  401352:	00 00                	add    BYTE PTR [rax],al
  401354:	00 00                	add    BYTE PTR [rax],al
  401356:	00 00                	add    BYTE PTR [rax],al
  401358:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  40135b:	00 01                	add    BYTE PTR [rcx],al
  40135d:	78 10                	js     40136f <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0xb7>
  40135f:	01 1b                	add    DWORD PTR [rbx],ebx
  401361:	0c 07                	or     al,0x7
  401363:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
  401369:	00 00                	add    BYTE PTR [rax],al
  40136b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  40136e:	00 00                	add    BYTE PTR [rax],al
  401370:	e0 f7                	loopne 401369 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0xb1>
  401372:	ff                   	(bad)  
  401373:	ff 70 01             	push   QWORD PTR [rax+0x1]
  401376:	00 00                	add    BYTE PTR [rax],al
  401378:	00 0e                	add    BYTE PTR [rsi],cl
  40137a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  40137d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  401380:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  401383:	80 00 3f             	add    BYTE PTR [rax],0x3f
  401386:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  401388:	2a 33                	sub    dh,BYTE PTR [rbx]
  40138a:	24 22                	and    al,0x22
  40138c:	00 00                	add    BYTE PTR [rax],al
  40138e:	00 00                	add    BYTE PTR [rax],al
  401390:	1c 00                	sbb    al,0x0
  401392:	00 00                	add    BYTE PTR [rax],al
  401394:	44 00 00             	add    BYTE PTR [rax],r8b
  401397:	00 06                	add    BYTE PTR [rsi],al
  401399:	fd                   	std    
  40139a:	ff                   	(bad)  
  40139b:	ff 2d 00 00 00 00    	jmp    FWORD PTR [rip+0x0]        # 4013a1 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0xe9>
  4013a1:	41 0e                	rex.B (bad) 
  4013a3:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  4013a9:	68 0c 07 08 00       	push   0x8070c
  4013ae:	00 00                	add    BYTE PTR [rax],al
  4013b0:	1c 00                	sbb    al,0x0
  4013b2:	00 00                	add    BYTE PTR [rax],al
  4013b4:	00 00                	add    BYTE PTR [rax],al
  4013b6:	00 00                	add    BYTE PTR [rax],al
  4013b8:	01 7a 50             	add    DWORD PTR [rdx+0x50],edi
  4013bb:	4c 52                	rex.WR push rdx
  4013bd:	00 01                	add    BYTE PTR [rcx],al
  4013bf:	78 10                	js     4013d1 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x119>
  4013c1:	07                   	(bad)  
  4013c2:	03 a0 0c 40 00 03    	add    esp,DWORD PTR [rax+0x300400c]
  4013c8:	1b 0c 07             	sbb    ecx,DWORD PTR [rdi+rax*1]
  4013cb:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
  4013d1:	00 00                	add    BYTE PTR [rax],al
  4013d3:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  4013d6:	00 00                	add    BYTE PTR [rax],al
  4013d8:	d5                   	(bad)  
  4013d9:	f9                   	stc    
  4013da:	ff                   	(bad)  
  4013db:	ff 11                	call   QWORD PTR [rcx]
  4013dd:	01 00                	add    DWORD PTR [rax],eax
  4013df:	00 04 f4             	add    BYTE PTR [rsp+rsi*8],al
  4013e2:	14 40                	adc    al,0x40
  4013e4:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  4013e7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  4013ed:	45 83 03 03          	rex.RB add DWORD PTR [r11],0x3
  4013f1:	07                   	(bad)  
  4013f2:	01 0c 07             	add    DWORD PTR [rdi+rax*1],ecx
  4013f5:	08 00                	or     BYTE PTR [rax],al
  4013f7:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  4013fa:	00 00                	add    BYTE PTR [rax],al
  4013fc:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
  4013ff:	00 be fa ff ff 26    	add    BYTE PTR [rsi+0x26fffffa],bh
  401405:	01 00                	add    DWORD PTR [rax],eax
  401407:	00 04 0c             	add    BYTE PTR [rsp+rcx*1],al
  40140a:	15 40 00 41 0e       	adc    eax,0xe410040
  40140f:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  401415:	45 83 03 03          	rex.RB add DWORD PTR [r11],0x3
  401419:	1c 01                	sbb    al,0x1
  40141b:	0c 07                	or     al,0x7
  40141d:	08 00                	or     BYTE PTR [rax],al
  40141f:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  401422:	00 00                	add    BYTE PTR [rax],al
  401424:	d4                   	(bad)  
  401425:	00 00                	add    BYTE PTR [rax],al
  401427:	00 a3 fc ff ff 84    	add    BYTE PTR [rbx-0x7b000004],ah
  40142d:	00 00                	add    BYTE PTR [rax],al
  40142f:	00 00                	add    BYTE PTR [rax],al
  401431:	41 0e                	rex.B (bad) 
  401433:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  401439:	47 8c 03             	rex.RXB mov WORD PTR [r11],es
  40143c:	83 04 02 78          	add    DWORD PTR [rdx+rax*1],0x78
  401440:	0c 07                	or     al,0x7
  401442:	08 00                	or     BYTE PTR [rax],al
  401444:	00 00                	add    BYTE PTR [rax],al
  401446:	00 00                	add    BYTE PTR [rax],al
  401448:	24 00                	and    al,0x0
  40144a:	00 00                	add    BYTE PTR [rax],al
  40144c:	9c                   	pushf  
  40144d:	00 00                	add    BYTE PTR [rax],al
  40144f:	00 94 fb ff ff a5 00 	add    BYTE PTR [rbx+rdi*8+0xa5ffff],dl
  401456:	00 00                	add    BYTE PTR [rax],al
  401458:	04 2f                	add    al,0x2f
  40145a:	15 40 00 41 0e       	adc    eax,0xe410040
  40145f:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  401465:	45 83 03 02          	rex.RB add DWORD PTR [r11],0x2
  401469:	9b                   	fwait
  40146a:	0c 07                	or     al,0x7
  40146c:	08 00                	or     BYTE PTR [rax],al
  40146e:	00 00                	add    BYTE PTR [rax],al
  401470:	1c 00                	sbb    al,0x0
  401472:	00 00                	add    BYTE PTR [rax],al
  401474:	24 01                	and    al,0x1
  401476:	00 00                	add    BYTE PTR [rax],al
  401478:	11 fc                	adc    esp,edi
  40147a:	ff                   	(bad)  
  40147b:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 401481 <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x1c9>
  401481:	41 0e                	rex.B (bad) 
  401483:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  401489:	50                   	push   rax
  40148a:	0c 07                	or     al,0x7
  40148c:	08 00                	or     BYTE PTR [rax],al
  40148e:	00 00                	add    BYTE PTR [rax],al
  401490:	44 00 00             	add    BYTE PTR [rax],r8b
  401493:	00 44 01 00          	add    BYTE PTR [rcx+rax*1+0x0],al
  401497:	00 b8 fc ff ff 65    	add    BYTE PTR [rax+0x65fffffc],bh
  40149d:	00 00                	add    BYTE PTR [rax],al
  40149f:	00 00                	add    BYTE PTR [rax],al
  4014a1:	42 0e                	rex.X (bad) 
  4014a3:	10 8f 02 45 0e 18    	adc    BYTE PTR [rdi+0x180e4502],cl
  4014a9:	8e 03                	mov    es,WORD PTR [rbx]
  4014ab:	45 0e                	rex.RB (bad) 
  4014ad:	20 8d 04 45 0e 28    	and    BYTE PTR [rbp+0x280e4504],cl
  4014b3:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86702301 <_end+0xffffffff860fffd9>
  4014b9:	06                   	(bad)  
  4014ba:	48 0e                	rex.W (bad) 
  4014bc:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  4014c2:	6c                   	ins    BYTE PTR es:[rdi],dx
  4014c3:	0e                   	(bad)  
  4014c4:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  4014c7:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  4014ca:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  4014cd:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  4014d0:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  4014d3:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  4014d6:	08 00                	or     BYTE PTR [rax],al
  4014d8:	14 00                	adc    al,0x0
  4014da:	00 00                	add    BYTE PTR [rax],al
  4014dc:	8c 01                	mov    WORD PTR [rcx],es
  4014de:	00 00                	add    BYTE PTR [rax],al
  4014e0:	e0 fc                	loopne 4014de <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x226>
  4014e2:	ff                   	(bad)  
  4014e3:	ff 02                	inc    DWORD PTR [rdx]
	...

00000000004014f0 <__FRAME_END__>:
  4014f0:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gcc_except_table:

00000000004014f4 <.gcc_except_table>:
  4014f4:	ff                   	(bad)  
  4014f5:	ff 01                	inc    DWORD PTR [rcx]
  4014f7:	14 29                	adc    al,0x29
  4014f9:	05 d2 01 00 50       	add    eax,0x500001d2
  4014fe:	73 ec                	jae    4014ec <_ZZL18__gthread_active_pvE20__gthread_active_ptr+0x234>
  401500:	01 00                	add    DWORD PTR [rax],eax
  401502:	cb                   	retf   
  401503:	01 21                	add    DWORD PTR [rcx],esp
  401505:	00 00                	add    BYTE PTR [rax],al
  401507:	81 02 05 00 00 ff    	add    DWORD PTR [rdx],0xff000005
  40150d:	ff 01                	inc    DWORD PTR [rcx]
  40150f:	1f                   	(bad)  
  401510:	39 1b                	cmp    DWORD PTR [rbx],ebx
  401512:	00 00                	add    BYTE PTR [rax],al
  401514:	5e                   	pop    rsi
  401515:	22 85 02 00 8e 01    	and    al,BYTE PTR [rbp+0x18e0002]
  40151b:	05 f4 01 00 9c       	add    eax,0x9c0001f4
  401520:	01 43 85             	add    DWORD PTR [rbx-0x7b],eax
  401523:	02 00                	add    al,BYTE PTR [rax]
  401525:	eb 01                	jmp    401528 <__FRAME_END__+0x38>
  401527:	05 00 00 9a 02       	add    eax,0x29a0000
  40152c:	05 00 00 ff ff       	add    eax,0xffff0000
  401531:	01 0e                	add    DWORD PTR [rsi],ecx
  401533:	27                   	(bad)  
  401534:	05 00 00 5d 05       	add    eax,0x55d0000
  401539:	84 01                	test   BYTE PTR [rcx],al
  40153b:	00 99 01 05 00 00    	add    BYTE PTR [rcx+0x501],bl

Disassembly of section .init_array:

0000000000601de8 <__frame_dummy_init_array_entry>:
  601de8:	80 0d 40 00 00 00 00 	or     BYTE PTR [rip+0x40],0x0        # 601e2f <_DYNAMIC+0x27>
  601def:	00 89 10 40 00 00    	add    BYTE PTR [rcx+0x4010],cl
  601df5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000601df8 <__do_global_dtors_aux_fini_array_entry>:
  601df8:	60                   	(bad)  
  601df9:	0d 40 00 00 00       	or     eax,0x40
	...

Disassembly of section .jcr:

0000000000601e00 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000601e08 <_DYNAMIC>:
  601e08:	01 00                	add    DWORD PTR [rax],eax
  601e0a:	00 00                	add    BYTE PTR [rax],al
  601e0c:	00 00                	add    BYTE PTR [rax],al
  601e0e:	00 00                	add    BYTE PTR [rax],al
  601e10:	01 00                	add    DWORD PTR [rax],eax
  601e12:	00 00                	add    BYTE PTR [rax],al
  601e14:	00 00                	add    BYTE PTR [rax],al
  601e16:	00 00                	add    BYTE PTR [rax],al
  601e18:	01 00                	add    DWORD PTR [rax],eax
  601e1a:	00 00                	add    BYTE PTR [rax],al
  601e1c:	00 00                	add    BYTE PTR [rax],al
  601e1e:	00 00                	add    BYTE PTR [rax],al
  601e20:	19 02                	sbb    DWORD PTR [rdx],eax
  601e22:	00 00                	add    BYTE PTR [rax],al
  601e24:	00 00                	add    BYTE PTR [rax],al
  601e26:	00 00                	add    BYTE PTR [rax],al
  601e28:	01 00                	add    DWORD PTR [rax],eax
  601e2a:	00 00                	add    BYTE PTR [rax],al
  601e2c:	00 00                	add    BYTE PTR [rax],al
  601e2e:	00 00                	add    BYTE PTR [rax],al
  601e30:	36 02 00             	add    al,BYTE PTR ss:[rax]
  601e33:	00 00                	add    BYTE PTR [rax],al
  601e35:	00 00                	add    BYTE PTR [rax],al
  601e37:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
  601e3a:	00 00                	add    BYTE PTR [rax],al
  601e3c:	00 00                	add    BYTE PTR [rax],al
  601e3e:	00 00                	add    BYTE PTR [rax],al
  601e40:	30 0b                	xor    BYTE PTR [rbx],cl
  601e42:	40 00 00             	add    BYTE PTR [rax],al
  601e45:	00 00                	add    BYTE PTR [rax],al
  601e47:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 601e4d <_DYNAMIC+0x45>
  601e4d:	00 00                	add    BYTE PTR [rax],al
  601e4f:	00 c4                	add    ah,al
  601e51:	11 40 00             	adc    DWORD PTR [rax+0x0],eax
  601e54:	00 00                	add    BYTE PTR [rax],al
  601e56:	00 00                	add    BYTE PTR [rax],al
  601e58:	19 00                	sbb    DWORD PTR [rax],eax
  601e5a:	00 00                	add    BYTE PTR [rax],al
  601e5c:	00 00                	add    BYTE PTR [rax],al
  601e5e:	00 00                	add    BYTE PTR [rax],al
  601e60:	e8 1d 60 00 00       	call   607e82 <_end+0x5b5a>
  601e65:	00 00                	add    BYTE PTR [rax],al
  601e67:	00 1b                	add    BYTE PTR [rbx],bl
  601e69:	00 00                	add    BYTE PTR [rax],al
  601e6b:	00 00                	add    BYTE PTR [rax],al
  601e6d:	00 00                	add    BYTE PTR [rax],al
  601e6f:	00 10                	add    BYTE PTR [rax],dl
  601e71:	00 00                	add    BYTE PTR [rax],al
  601e73:	00 00                	add    BYTE PTR [rax],al
  601e75:	00 00                	add    BYTE PTR [rax],al
  601e77:	00 1a                	add    BYTE PTR [rdx],bl
  601e79:	00 00                	add    BYTE PTR [rax],al
  601e7b:	00 00                	add    BYTE PTR [rax],al
  601e7d:	00 00                	add    BYTE PTR [rax],al
  601e7f:	00 f8                	add    al,bh
  601e81:	1d 60 00 00 00       	sbb    eax,0x60
  601e86:	00 00                	add    BYTE PTR [rax],al
  601e88:	1c 00                	sbb    al,0x0
  601e8a:	00 00                	add    BYTE PTR [rax],al
  601e8c:	00 00                	add    BYTE PTR [rax],al
  601e8e:	00 00                	add    BYTE PTR [rax],al
  601e90:	08 00                	or     BYTE PTR [rax],al
  601e92:	00 00                	add    BYTE PTR [rax],al
  601e94:	00 00                	add    BYTE PTR [rax],al
  601e96:	00 00                	add    BYTE PTR [rax],al
  601e98:	f5                   	cmc    
  601e99:	fe                   	(bad)  
  601e9a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601e9d:	00 00                	add    BYTE PTR [rax],al
  601e9f:	00 98 02 40 00 00    	add    BYTE PTR [rax+0x4002],bl
  601ea5:	00 00                	add    BYTE PTR [rax],al
  601ea7:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 601ead <_DYNAMIC+0xa5>
  601ead:	00 00                	add    BYTE PTR [rax],al
  601eaf:	00 90 05 40 00 00    	add    BYTE PTR [rax+0x4005],dl
  601eb5:	00 00                	add    BYTE PTR [rax],al
  601eb7:	00 06                	add    BYTE PTR [rsi],al
  601eb9:	00 00                	add    BYTE PTR [rax],al
  601ebb:	00 00                	add    BYTE PTR [rax],al
  601ebd:	00 00                	add    BYTE PTR [rax],al
  601ebf:	00 d8                	add    al,bl
  601ec1:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  601ec4:	00 00                	add    BYTE PTR [rax],al
  601ec6:	00 00                	add    BYTE PTR [rax],al
  601ec8:	0a 00                	or     al,BYTE PTR [rax]
  601eca:	00 00                	add    BYTE PTR [rax],al
  601ecc:	00 00                	add    BYTE PTR [rax],al
  601ece:	00 00                	add    BYTE PTR [rax],al
  601ed0:	98                   	cwde   
  601ed1:	02 00                	add    al,BYTE PTR [rax]
  601ed3:	00 00                	add    BYTE PTR [rax],al
  601ed5:	00 00                	add    BYTE PTR [rax],al
  601ed7:	00 0b                	add    BYTE PTR [rbx],cl
  601ed9:	00 00                	add    BYTE PTR [rax],al
  601edb:	00 00                	add    BYTE PTR [rax],al
  601edd:	00 00                	add    BYTE PTR [rax],al
  601edf:	00 18                	add    BYTE PTR [rax],bl
  601ee1:	00 00                	add    BYTE PTR [rax],al
  601ee3:	00 00                	add    BYTE PTR [rax],al
  601ee5:	00 00                	add    BYTE PTR [rax],al
  601ee7:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 601eed <_DYNAMIC+0xe5>
	...
  601ef5:	00 00                	add    BYTE PTR [rax],al
  601ef7:	00 03                	add    BYTE PTR [rbx],al
	...
  601f01:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  601f04:	00 00                	add    BYTE PTR [rax],al
  601f06:	00 00                	add    BYTE PTR [rax],al
  601f08:	02 00                	add    al,BYTE PTR [rax]
  601f0a:	00 00                	add    BYTE PTR [rax],al
  601f0c:	00 00                	add    BYTE PTR [rax],al
  601f0e:	00 00                	add    BYTE PTR [rax],al
  601f10:	10 02                	adc    BYTE PTR [rdx],al
  601f12:	00 00                	add    BYTE PTR [rax],al
  601f14:	00 00                	add    BYTE PTR [rax],al
  601f16:	00 00                	add    BYTE PTR [rax],al
  601f18:	14 00                	adc    al,0x0
  601f1a:	00 00                	add    BYTE PTR [rax],al
  601f1c:	00 00                	add    BYTE PTR [rax],al
  601f1e:	00 00                	add    BYTE PTR [rax],al
  601f20:	07                   	(bad)  
  601f21:	00 00                	add    BYTE PTR [rax],al
  601f23:	00 00                	add    BYTE PTR [rax],al
  601f25:	00 00                	add    BYTE PTR [rax],al
  601f27:	00 17                	add    BYTE PTR [rdi],dl
  601f29:	00 00                	add    BYTE PTR [rax],al
  601f2b:	00 00                	add    BYTE PTR [rax],al
  601f2d:	00 00                	add    BYTE PTR [rax],al
  601f2f:	00 20                	add    BYTE PTR [rax],ah
  601f31:	09 40 00             	or     DWORD PTR [rax+0x0],eax
  601f34:	00 00                	add    BYTE PTR [rax],al
  601f36:	00 00                	add    BYTE PTR [rax],al
  601f38:	07                   	(bad)  
  601f39:	00 00                	add    BYTE PTR [rax],al
  601f3b:	00 00                	add    BYTE PTR [rax],al
  601f3d:	00 00                	add    BYTE PTR [rax],al
  601f3f:	00 d8                	add    al,bl
  601f41:	08 40 00             	or     BYTE PTR [rax+0x0],al
  601f44:	00 00                	add    BYTE PTR [rax],al
  601f46:	00 00                	add    BYTE PTR [rax],al
  601f48:	08 00                	or     BYTE PTR [rax],al
  601f4a:	00 00                	add    BYTE PTR [rax],al
  601f4c:	00 00                	add    BYTE PTR [rax],al
  601f4e:	00 00                	add    BYTE PTR [rax],al
  601f50:	48 00 00             	rex.W add BYTE PTR [rax],al
  601f53:	00 00                	add    BYTE PTR [rax],al
  601f55:	00 00                	add    BYTE PTR [rax],al
  601f57:	00 09                	add    BYTE PTR [rcx],cl
  601f59:	00 00                	add    BYTE PTR [rax],al
  601f5b:	00 00                	add    BYTE PTR [rax],al
  601f5d:	00 00                	add    BYTE PTR [rax],al
  601f5f:	00 18                	add    BYTE PTR [rax],bl
  601f61:	00 00                	add    BYTE PTR [rax],al
  601f63:	00 00                	add    BYTE PTR [rax],al
  601f65:	00 00                	add    BYTE PTR [rax],al
  601f67:	00 fe                	add    dh,bh
  601f69:	ff                   	(bad)  
  601f6a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f6d:	00 00                	add    BYTE PTR [rax],al
  601f6f:	00 68 08             	add    BYTE PTR [rax+0x8],ch
  601f72:	40 00 00             	add    BYTE PTR [rax],al
  601f75:	00 00                	add    BYTE PTR [rax],al
  601f77:	00 ff                	add    bh,bh
  601f79:	ff                   	(bad)  
  601f7a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f7d:	00 00                	add    BYTE PTR [rax],al
  601f7f:	00 03                	add    BYTE PTR [rbx],al
  601f81:	00 00                	add    BYTE PTR [rax],al
  601f83:	00 00                	add    BYTE PTR [rax],al
  601f85:	00 00                	add    BYTE PTR [rax],al
  601f87:	00 f0                	add    al,dh
  601f89:	ff                   	(bad)  
  601f8a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f8d:	00 00                	add    BYTE PTR [rax],al
  601f8f:	00 28                	add    BYTE PTR [rax],ch
  601f91:	08 40 00             	or     BYTE PTR [rax+0x0],al
	...

Disassembly of section .got:

0000000000601ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000602000 <_GLOBAL_OFFSET_TABLE_>:
  602000:	08 1e                	or     BYTE PTR [rsi],bl
  602002:	60                   	(bad)  
	...
  602017:	00 66 0b             	add    BYTE PTR [rsi+0xb],ah
  60201a:	40 00 00             	add    BYTE PTR [rax],al
  60201d:	00 00                	add    BYTE PTR [rax],al
  60201f:	00 76 0b             	add    BYTE PTR [rsi+0xb],dh
  602022:	40 00 00             	add    BYTE PTR [rax],al
  602025:	00 00                	add    BYTE PTR [rax],al
  602027:	00 86 0b 40 00 00    	add    BYTE PTR [rsi+0x400b],al
  60202d:	00 00                	add    BYTE PTR [rax],al
  60202f:	00 96 0b 40 00 00    	add    BYTE PTR [rsi+0x400b],dl
  602035:	00 00                	add    BYTE PTR [rax],al
  602037:	00 a6 0b 40 00 00    	add    BYTE PTR [rsi+0x400b],ah
  60203d:	00 00                	add    BYTE PTR [rax],al
  60203f:	00 b6 0b 40 00 00    	add    BYTE PTR [rsi+0x400b],dh
  602045:	00 00                	add    BYTE PTR [rax],al
  602047:	00 c6                	add    dh,al
  602049:	0b 40 00             	or     eax,DWORD PTR [rax+0x0]
  60204c:	00 00                	add    BYTE PTR [rax],al
  60204e:	00 00                	add    BYTE PTR [rax],al
  602050:	d6                   	(bad)  
  602051:	0b 40 00             	or     eax,DWORD PTR [rax+0x0]
  602054:	00 00                	add    BYTE PTR [rax],al
  602056:	00 00                	add    BYTE PTR [rax],al
  602058:	e6 0b                	out    0xb,al
  60205a:	40 00 00             	add    BYTE PTR [rax],al
  60205d:	00 00                	add    BYTE PTR [rax],al
  60205f:	00 f6                	add    dh,dh
  602061:	0b 40 00             	or     eax,DWORD PTR [rax+0x0]
  602064:	00 00                	add    BYTE PTR [rax],al
  602066:	00 00                	add    BYTE PTR [rax],al
  602068:	06                   	(bad)  
  602069:	0c 40                	or     al,0x40
  60206b:	00 00                	add    BYTE PTR [rax],al
  60206d:	00 00                	add    BYTE PTR [rax],al
  60206f:	00 16                	add    BYTE PTR [rsi],dl
  602071:	0c 40                	or     al,0x40
  602073:	00 00                	add    BYTE PTR [rax],al
  602075:	00 00                	add    BYTE PTR [rax],al
  602077:	00 26                	add    BYTE PTR [rsi],ah
  602079:	0c 40                	or     al,0x40
  60207b:	00 00                	add    BYTE PTR [rax],al
  60207d:	00 00                	add    BYTE PTR [rax],al
  60207f:	00 36                	add    BYTE PTR [rsi],dh
  602081:	0c 40                	or     al,0x40
  602083:	00 00                	add    BYTE PTR [rax],al
  602085:	00 00                	add    BYTE PTR [rax],al
  602087:	00 46 0c             	add    BYTE PTR [rsi+0xc],al
  60208a:	40 00 00             	add    BYTE PTR [rax],al
  60208d:	00 00                	add    BYTE PTR [rax],al
  60208f:	00 56 0c             	add    BYTE PTR [rsi+0xc],dl
  602092:	40 00 00             	add    BYTE PTR [rax],al
  602095:	00 00                	add    BYTE PTR [rax],al
  602097:	00 66 0c             	add    BYTE PTR [rsi+0xc],ah
  60209a:	40 00 00             	add    BYTE PTR [rax],al
  60209d:	00 00                	add    BYTE PTR [rax],al
  60209f:	00 76 0c             	add    BYTE PTR [rsi+0xc],dh
  6020a2:	40 00 00             	add    BYTE PTR [rax],al
  6020a5:	00 00                	add    BYTE PTR [rax],al
  6020a7:	00 86 0c 40 00 00    	add    BYTE PTR [rsi+0x400c],al
  6020ad:	00 00                	add    BYTE PTR [rax],al
  6020af:	00 96 0c 40 00 00    	add    BYTE PTR [rsi+0x400c],dl
  6020b5:	00 00                	add    BYTE PTR [rax],al
  6020b7:	00 a6 0c 40 00 00    	add    BYTE PTR [rsi+0x400c],ah
  6020bd:	00 00                	add    BYTE PTR [rax],al
  6020bf:	00 b6 0c 40 00 00    	add    BYTE PTR [rsi+0x400c],dh
  6020c5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

00000000006020c8 <__data_start>:
	...

00000000006020d0 <__dso_handle>:
	...

Disassembly of section .bss:

00000000006020e0 <_ZSt3cin@@GLIBCXX_3.4>:
	...

0000000000602200 <_ZSt4cout@@GLIBCXX_3.4>:
	...

0000000000602310 <completed.6973>:
	...

0000000000602318 <base>:
	...

0000000000602320 <_ZStL8__ioinit>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x400ab8>
   a:	74 75                	je     81 <_init-0x400aaf>
   c:	20 34 2e             	and    BYTE PTR [rsi+rbp*1],dh
   f:	38 2e                	cmp    BYTE PTR [rsi],ch
  11:	34 2d                	xor    al,0x2d
  13:	32 75 62             	xor    dh,BYTE PTR [rbp+0x62]
  16:	75 6e                	jne    86 <_init-0x400aaa>
  18:	74 75                	je     8f <_init-0x400aa1>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	34 2e                	xor    al,0x2e
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	33 29                	xor    ebp,DWORD PTR [rcx]
  24:	20 34 2e             	and    BYTE PTR [rsi+rbp*1],dh
  27:	38 2e                	cmp    BYTE PTR [rsi],ch
  29:	34 00                	xor    al,0x0
