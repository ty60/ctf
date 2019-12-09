
./flip:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x423>
  400248:	78 38                	js     400282 <_init-0x416>
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
  400267:	00 03                	add    BYTE PTR [rbx],al
  400269:	00 00                	add    BYTE PTR [rax],al
  40026b:	00 02                	add    BYTE PTR [rdx],al
  40026d:	00 00                	add    BYTE PTR [rax],al
  40026f:	00 00                	add    BYTE PTR [rax],al
  400271:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

0000000000400278 <.gnu.hash>:
  400278:	02 00                	add    al,BYTE PTR [rax]
  40027a:	00 00                	add    BYTE PTR [rax],al
  40027c:	0e                   	(bad)  
  40027d:	00 00                	add    BYTE PTR [rax],al
  40027f:	00 01                	add    BYTE PTR [rcx],al
  400281:	00 00                	add    BYTE PTR [rax],al
  400283:	00 06                	add    BYTE PTR [rsi],al
  400285:	00 00                	add    BYTE PTR [rax],al
  400287:	00 00                	add    BYTE PTR [rax],al
  400289:	00 20                	add    BYTE PTR [rax],ah
  40028b:	00 80 01 10 00 0e    	add    BYTE PTR [rax+0xe001001],al
  400291:	00 00                	add    BYTE PTR [rax],al
  400293:	00 0f                	add    BYTE PTR [rdi],cl
  400295:	00 00                	add    BYTE PTR [rax],al
  400297:	00 29                	add    BYTE PTR [rcx],ch
  400299:	1d 8c 1c 67 55       	sbb    eax,0x55671c8c
  40029e:	61                   	(bad)  
  40029f:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000004002a0 <.dynsym>:
	...
  4002b8:	51                   	push   rcx
  4002b9:	00 00                	add    BYTE PTR [rax],al
  4002bb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4002cd:	00 00                	add    BYTE PTR [rax],al
  4002cf:	00 3b                	add    BYTE PTR [rbx],bh
  4002d1:	00 00                	add    BYTE PTR [rax],al
  4002d3:	00 12                	add    BYTE PTR [rdx],dl
	...
  4002e5:	00 00                	add    BYTE PTR [rax],al
  4002e7:	00 10                	add    BYTE PTR [rax],dl
  4002e9:	00 00                	add    BYTE PTR [rax],al
  4002eb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4002fd:	00 00                	add    BYTE PTR [rax],al
  4002ff:	00 15 00 00 00 12    	add    BYTE PTR [rip+0x12000000],dl        # 12400305 <_end+0x11dff1d5>
	...
  400315:	00 00                	add    BYTE PTR [rax],al
  400317:	00 2c 00             	add    BYTE PTR [rax+rax*1],ch
  40031a:	00 00                	add    BYTE PTR [rax],al
  40031c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40032e:	00 00                	add    BYTE PTR [rax],al
  400330:	77 00                	ja     400332 <_init-0x366>
  400332:	00 00                	add    BYTE PTR [rax],al
  400334:	12 00                	adc    al,BYTE PTR [rax]
	...
  400346:	00 00                	add    BYTE PTR [rax],al
  400348:	75 00                	jne    40034a <_init-0x34e>
  40034a:	00 00                	add    BYTE PTR [rax],al
  40034c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40035e:	00 00                	add    BYTE PTR [rax],al
  400360:	4b 00 00             	rex.WXB add BYTE PTR [r8],al
  400363:	00 12                	add    BYTE PTR [rdx],dl
	...
  400375:	00 00                	add    BYTE PTR [rax],al
  400377:	00 63 00             	add    BYTE PTR [rbx+0x0],ah
  40037a:	00 00                	add    BYTE PTR [rax],al
  40037c:	12 00                	adc    al,BYTE PTR [rax]
	...
  40038e:	00 00                	add    BYTE PTR [rax],al
  400390:	9e                   	sahf   
  400391:	00 00                	add    BYTE PTR [rax],al
  400393:	00 20                	add    BYTE PTR [rax],ah
	...
  4003a5:	00 00                	add    BYTE PTR [rax],al
  4003a7:	00 2f                	add    BYTE PTR [rdi],ch
  4003a9:	00 00                	add    BYTE PTR [rax],al
  4003ab:	00 12                	add    BYTE PTR [rdx],dl
	...
  4003bd:	00 00                	add    BYTE PTR [rax],al
  4003bf:	00 5b 00             	add    BYTE PTR [rbx+0x0],bl
  4003c2:	00 00                	add    BYTE PTR [rax],al
  4003c4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003d6:	00 00                	add    BYTE PTR [rax],al
  4003d8:	0b 00                	or     eax,DWORD PTR [rax]
  4003da:	00 00                	add    BYTE PTR [rax],al
  4003dc:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003ee:	00 00                	add    BYTE PTR [rax],al
  4003f0:	34 00                	xor    al,0x0
  4003f2:	00 00                	add    BYTE PTR [rax],al
  4003f4:	11 00                	adc    DWORD PTR [rax],eax
  4003f6:	17                   	(bad)  
  4003f7:	00 90 10 60 00 00    	add    BYTE PTR [rax+0x6010],dl
  4003fd:	00 00                	add    BYTE PTR [rax],al
  4003ff:	00 08                	add    BYTE PTR [rax],cl
  400401:	00 00                	add    BYTE PTR [rax],al
  400403:	00 00                	add    BYTE PTR [rax],al
  400405:	00 00                	add    BYTE PTR [rax],al
  400407:	00 26                	add    BYTE PTR [rsi],ah
  400409:	00 00                	add    BYTE PTR [rax],al
  40040b:	00 11                	add    BYTE PTR [rcx],dl
  40040d:	00 17                	add    BYTE PTR [rdi],dl
  40040f:	00 a0 10 60 00 00    	add    BYTE PTR [rax+0x6010],ah
  400415:	00 00                	add    BYTE PTR [rax],al
  400417:	00 08                	add    BYTE PTR [rax],cl
  400419:	00 00                	add    BYTE PTR [rax],al
  40041b:	00 00                	add    BYTE PTR [rax],al
  40041d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000400420 <.dynstr>:
  400420:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  400424:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  400426:	73 6f                	jae    400497 <_init-0x201>
  400428:	2e 36 00 65 78       	cs add BYTE PTR ss:[rbp+0x78],ah
  40042d:	69 74 00 70 75 74 73 	imul   esi,DWORD PTR [rax+rax*1+0x70],0x737475
  400434:	00 
  400435:	5f                   	pop    rdi
  400436:	5f                   	pop    rdi
  400437:	73 74                	jae    4004ad <_init-0x1eb>
  400439:	61                   	(bad)  
  40043a:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
  40043d:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
  400440:	5f                   	pop    rdi
  400441:	66 61                	data16 (bad) 
  400443:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
  40044a:	6e 
  40044b:	00 61 73             	add    BYTE PTR [rcx+0x73],ah
  40044e:	63 74 69 6d          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6d]
  400452:	65 00 73 74          	add    BYTE PTR gs:[rbx+0x74],dh
  400456:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  400458:	75 74                	jne    4004ce <_init-0x1ca>
  40045a:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  40045d:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [rbx+0x6f],0x5f393963
  400464:	66 73 63             	data16 jae 4004ca <_init-0x1ce>
  400467:	61                   	(bad)  
  400468:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400469:	66 00 61 6c          	data16 add BYTE PTR [rcx+0x6c],ah
  40046d:	61                   	(bad)  
  40046e:	72 6d                	jb     4004dd <_init-0x1bb>
  400470:	00 6c 6f 63          	add    BYTE PTR [rdi+rbp*2+0x63],ch
  400474:	61                   	(bad)  
  400475:	6c                   	ins    BYTE PTR es:[rdi],dx
  400476:	74 69                	je     4004e1 <_init-0x1b7>
  400478:	6d                   	ins    DWORD PTR es:[rdi],dx
  400479:	65 00 73 65          	add    BYTE PTR gs:[rbx+0x65],dh
  40047d:	74 76                	je     4004f5 <_init-0x1a3>
  40047f:	62                   	(bad)  
  400480:	75 66                	jne    4004e8 <_init-0x1b0>
  400482:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  400485:	6c                   	ins    BYTE PTR es:[rdi],dx
  400486:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  40048d:	72 74                	jb     400503 <_init-0x195>
  40048f:	5f                   	pop    rdi
  400490:	6d                   	ins    DWORD PTR es:[rdi],dx
  400491:	61                   	(bad)  
  400492:	69 6e 00 73 6e 70 72 	imul   ebp,DWORD PTR [rsi+0x0],0x72706e73
  400499:	69 6e 74 66 00 47 4c 	imul   ebp,DWORD PTR [rsi+0x74],0x4c470066
  4004a0:	49                   	rex.WB
  4004a1:	42                   	rex.X
  4004a2:	43 5f                	rex.XB pop r15
  4004a4:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004a6:	34 00                	xor    al,0x0
  4004a8:	47                   	rex.RXB
  4004a9:	4c                   	rex.WR
  4004aa:	49                   	rex.WB
  4004ab:	42                   	rex.X
  4004ac:	43 5f                	rex.XB pop r15
  4004ae:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004b0:	37                   	(bad)  
  4004b1:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
  4004b4:	49                   	rex.WB
  4004b5:	42                   	rex.X
  4004b6:	43 5f                	rex.XB pop r15
  4004b8:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004ba:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004bc:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  4004c1:	6d                   	ins    DWORD PTR es:[rdi],dx
  4004c2:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4004c3:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4004c4:	5f                   	pop    rdi
  4004c5:	73 74                	jae    40053b <_init-0x15d>
  4004c7:	61                   	(bad)  
  4004c8:	72 74                	jb     40053e <_init-0x15a>
  4004ca:	5f                   	pop    rdi
  4004cb:	5f                   	pop    rdi
	...

Disassembly of section .gnu.version:

00000000004004ce <.gnu.version>:
  4004ce:	00 00                	add    BYTE PTR [rax],al
  4004d0:	02 00                	add    al,BYTE PTR [rax]
  4004d2:	03 00                	add    eax,DWORD PTR [rax]
  4004d4:	02 00                	add    al,BYTE PTR [rax]
  4004d6:	04 00                	add    al,0x0
  4004d8:	02 00                	add    al,BYTE PTR [rax]
  4004da:	02 00                	add    al,BYTE PTR [rax]
  4004dc:	02 00                	add    al,BYTE PTR [rax]
  4004de:	02 00                	add    al,BYTE PTR [rax]
  4004e0:	02 00                	add    al,BYTE PTR [rax]
  4004e2:	00 00                	add    BYTE PTR [rax],al
  4004e4:	02 00                	add    al,BYTE PTR [rax]
  4004e6:	02 00                	add    al,BYTE PTR [rax]
  4004e8:	02 00                	add    al,BYTE PTR [rax]
  4004ea:	02 00                	add    al,BYTE PTR [rax]
  4004ec:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

00000000004004f0 <.gnu.version_r>:
  4004f0:	01 00                	add    DWORD PTR [rax],eax
  4004f2:	03 00                	add    eax,DWORD PTR [rax]
  4004f4:	01 00                	add    DWORD PTR [rax],eax
  4004f6:	00 00                	add    BYTE PTR [rax],al
  4004f8:	10 00                	adc    BYTE PTR [rax],al
  4004fa:	00 00                	add    BYTE PTR [rax],al
  4004fc:	00 00                	add    BYTE PTR [rax],al
  4004fe:	00 00                	add    BYTE PTR [rax],al
  400500:	14 69                	adc    al,0x69
  400502:	69 0d 00 00 04 00 7e 	imul   ecx,DWORD PTR [rip+0x40000],0x7e        # 44050c <__FRAME_END__+0x3f7f8>
  400509:	00 00 00 
  40050c:	10 00                	adc    BYTE PTR [rax],al
  40050e:	00 00                	add    BYTE PTR [rax],al
  400510:	17                   	(bad)  
  400511:	69 69 0d 00 00 03 00 	imul   ebp,DWORD PTR [rcx+0xd],0x30000
  400518:	88 00                	mov    BYTE PTR [rax],al
  40051a:	00 00                	add    BYTE PTR [rax],al
  40051c:	10 00                	adc    BYTE PTR [rax],al
  40051e:	00 00                	add    BYTE PTR [rax],al
  400520:	75 1a                	jne    40053c <_init-0x15c>
  400522:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400528:	92                   	xchg   edx,eax
  400529:	00 00                	add    BYTE PTR [rax],al
  40052b:	00 00                	add    BYTE PTR [rax],al
  40052d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400530 <.rela.dyn>:
  400530:	f0 0f 60 00          	lock punpcklbw mm0,DWORD PTR [rax]
  400534:	00 00                	add    BYTE PTR [rax],al
  400536:	00 00                	add    BYTE PTR [rax],al
  400538:	06                   	(bad)  
  400539:	00 00                	add    BYTE PTR [rax],al
  40053b:	00 09                	add    BYTE PTR [rcx],cl
	...
  400545:	00 00                	add    BYTE PTR [rax],al
  400547:	00 f8                	add    al,bh
  400549:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  40054c:	00 00                	add    BYTE PTR [rax],al
  40054e:	00 00                	add    BYTE PTR [rax],al
  400550:	06                   	(bad)  
  400551:	00 00                	add    BYTE PTR [rax],al
  400553:	00 0a                	add    BYTE PTR [rdx],cl
	...
  40055d:	00 00                	add    BYTE PTR [rax],al
  40055f:	00 90 10 60 00 00    	add    BYTE PTR [rax+0x6010],dl
  400565:	00 00                	add    BYTE PTR [rax],al
  400567:	00 05 00 00 00 0e    	add    BYTE PTR [rip+0xe000000],al        # e40056d <_end+0xddff43d>
	...
  400575:	00 00                	add    BYTE PTR [rax],al
  400577:	00 a0 10 60 00 00    	add    BYTE PTR [rax+0x6010],ah
  40057d:	00 00                	add    BYTE PTR [rax],al
  40057f:	00 05 00 00 00 0f    	add    BYTE PTR [rip+0xf000000],al        # f400585 <_end+0xedff455>
	...

Disassembly of section .rela.plt:

0000000000400590 <.rela.plt>:
  400590:	18 10                	sbb    BYTE PTR [rax],dl
  400592:	60                   	(bad)  
  400593:	00 00                	add    BYTE PTR [rax],al
  400595:	00 00                	add    BYTE PTR [rax],al
  400597:	00 07                	add    BYTE PTR [rdi],al
  400599:	00 00                	add    BYTE PTR [rax],al
  40059b:	00 01                	add    BYTE PTR [rcx],al
	...
  4005a5:	00 00                	add    BYTE PTR [rax],al
  4005a7:	00 20                	add    BYTE PTR [rax],ah
  4005a9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4005ac:	00 00                	add    BYTE PTR [rax],al
  4005ae:	00 00                	add    BYTE PTR [rax],al
  4005b0:	07                   	(bad)  
  4005b1:	00 00                	add    BYTE PTR [rax],al
  4005b3:	00 02                	add    BYTE PTR [rdx],al
	...
  4005bd:	00 00                	add    BYTE PTR [rax],al
  4005bf:	00 28                	add    BYTE PTR [rax],ch
  4005c1:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4005c4:	00 00                	add    BYTE PTR [rax],al
  4005c6:	00 00                	add    BYTE PTR [rax],al
  4005c8:	07                   	(bad)  
  4005c9:	00 00                	add    BYTE PTR [rax],al
  4005cb:	00 03                	add    BYTE PTR [rbx],al
	...
  4005d5:	00 00                	add    BYTE PTR [rax],al
  4005d7:	00 30                	add    BYTE PTR [rax],dh
  4005d9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4005dc:	00 00                	add    BYTE PTR [rax],al
  4005de:	00 00                	add    BYTE PTR [rax],al
  4005e0:	07                   	(bad)  
  4005e1:	00 00                	add    BYTE PTR [rax],al
  4005e3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  4005ee:	00 00                	add    BYTE PTR [rax],al
  4005f0:	38 10                	cmp    BYTE PTR [rax],dl
  4005f2:	60                   	(bad)  
  4005f3:	00 00                	add    BYTE PTR [rax],al
  4005f5:	00 00                	add    BYTE PTR [rax],al
  4005f7:	00 07                	add    BYTE PTR [rdi],al
  4005f9:	00 00                	add    BYTE PTR [rax],al
  4005fb:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400601 <_init-0x97>
  400601:	00 00                	add    BYTE PTR [rax],al
  400603:	00 00                	add    BYTE PTR [rax],al
  400605:	00 00                	add    BYTE PTR [rax],al
  400607:	00 40 10             	add    BYTE PTR [rax+0x10],al
  40060a:	60                   	(bad)  
  40060b:	00 00                	add    BYTE PTR [rax],al
  40060d:	00 00                	add    BYTE PTR [rax],al
  40060f:	00 07                	add    BYTE PTR [rdi],al
  400611:	00 00                	add    BYTE PTR [rax],al
  400613:	00 06                	add    BYTE PTR [rsi],al
	...
  40061d:	00 00                	add    BYTE PTR [rax],al
  40061f:	00 48 10             	add    BYTE PTR [rax+0x10],cl
  400622:	60                   	(bad)  
  400623:	00 00                	add    BYTE PTR [rax],al
  400625:	00 00                	add    BYTE PTR [rax],al
  400627:	00 07                	add    BYTE PTR [rdi],al
  400629:	00 00                	add    BYTE PTR [rax],al
  40062b:	00 07                	add    BYTE PTR [rdi],al
	...
  400635:	00 00                	add    BYTE PTR [rax],al
  400637:	00 50 10             	add    BYTE PTR [rax+0x10],dl
  40063a:	60                   	(bad)  
  40063b:	00 00                	add    BYTE PTR [rax],al
  40063d:	00 00                	add    BYTE PTR [rax],al
  40063f:	00 07                	add    BYTE PTR [rdi],al
  400641:	00 00                	add    BYTE PTR [rax],al
  400643:	00 08                	add    BYTE PTR [rax],cl
	...
  40064d:	00 00                	add    BYTE PTR [rax],al
  40064f:	00 58 10             	add    BYTE PTR [rax+0x10],bl
  400652:	60                   	(bad)  
  400653:	00 00                	add    BYTE PTR [rax],al
  400655:	00 00                	add    BYTE PTR [rax],al
  400657:	00 07                	add    BYTE PTR [rdi],al
  400659:	00 00                	add    BYTE PTR [rax],al
  40065b:	00 0b                	add    BYTE PTR [rbx],cl
	...
  400665:	00 00                	add    BYTE PTR [rax],al
  400667:	00 60 10             	add    BYTE PTR [rax+0x10],ah
  40066a:	60                   	(bad)  
  40066b:	00 00                	add    BYTE PTR [rax],al
  40066d:	00 00                	add    BYTE PTR [rax],al
  40066f:	00 07                	add    BYTE PTR [rdi],al
  400671:	00 00                	add    BYTE PTR [rax],al
  400673:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
  40067e:	00 00                	add    BYTE PTR [rax],al
  400680:	68 10 60 00 00       	push   0x6010
  400685:	00 00                	add    BYTE PTR [rax],al
  400687:	00 07                	add    BYTE PTR [rdi],al
  400689:	00 00                	add    BYTE PTR [rax],al
  40068b:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 400691 <_init-0x7>
  400691:	00 00                	add    BYTE PTR [rax],al
  400693:	00 00                	add    BYTE PTR [rax],al
  400695:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init:

0000000000400698 <_init>:
  400698:	48 83 ec 08          	sub    rsp,0x8
  40069c:	48 8b 05 55 09 20 00 	mov    rax,QWORD PTR [rip+0x200955]        # 600ff8 <_DYNAMIC+0x1d8>
  4006a3:	48 85 c0             	test   rax,rax
  4006a6:	74 02                	je     4006aa <_init+0x12>
  4006a8:	ff d0                	call   rax
  4006aa:	48 83 c4 08          	add    rsp,0x8
  4006ae:	c3                   	ret    

Disassembly of section .plt:

00000000004006b0 <localtime@plt-0x10>:
  4006b0:	ff 35 52 09 20 00    	push   QWORD PTR [rip+0x200952]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006b6:	ff 25 54 09 20 00    	jmp    QWORD PTR [rip+0x200954]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006c0 <localtime@plt>:
  4006c0:	ff 25 52 09 20 00    	jmp    QWORD PTR [rip+0x200952]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4006c6:	68 00 00 00 00       	push   0x0
  4006cb:	e9 e0 ff ff ff       	jmp    4006b0 <_init+0x18>

00000000004006d0 <__isoc99_fscanf@plt>:
  4006d0:	ff 25 4a 09 20 00    	jmp    QWORD PTR [rip+0x20094a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4006d6:	68 01 00 00 00       	push   0x1
  4006db:	e9 d0 ff ff ff       	jmp    4006b0 <_init+0x18>

00000000004006e0 <puts@plt>:
  4006e0:	ff 25 42 09 20 00    	jmp    QWORD PTR [rip+0x200942]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4006e6:	68 02 00 00 00       	push   0x2
  4006eb:	e9 c0 ff ff ff       	jmp    4006b0 <_init+0x18>

00000000004006f0 <__stack_chk_fail@plt>:
  4006f0:	ff 25 3a 09 20 00    	jmp    QWORD PTR [rip+0x20093a]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4006f6:	68 03 00 00 00       	push   0x3
  4006fb:	e9 b0 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400700 <asctime@plt>:
  400700:	ff 25 32 09 20 00    	jmp    QWORD PTR [rip+0x200932]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400706:	68 04 00 00 00       	push   0x4
  40070b:	e9 a0 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400710 <printf@plt>:
  400710:	ff 25 2a 09 20 00    	jmp    QWORD PTR [rip+0x20092a]        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400716:	68 05 00 00 00       	push   0x5
  40071b:	e9 90 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400720 <snprintf@plt>:
  400720:	ff 25 22 09 20 00    	jmp    QWORD PTR [rip+0x200922]        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400726:	68 06 00 00 00       	push   0x6
  40072b:	e9 80 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400730 <alarm@plt>:
  400730:	ff 25 1a 09 20 00    	jmp    QWORD PTR [rip+0x20091a]        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400736:	68 07 00 00 00       	push   0x7
  40073b:	e9 70 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400740 <time@plt>:
  400740:	ff 25 12 09 20 00    	jmp    QWORD PTR [rip+0x200912]        # 601058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400746:	68 08 00 00 00       	push   0x8
  40074b:	e9 60 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400750 <setvbuf@plt>:
  400750:	ff 25 0a 09 20 00    	jmp    QWORD PTR [rip+0x20090a]        # 601060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400756:	68 09 00 00 00       	push   0x9
  40075b:	e9 50 ff ff ff       	jmp    4006b0 <_init+0x18>

0000000000400760 <exit@plt>:
  400760:	ff 25 02 09 20 00    	jmp    QWORD PTR [rip+0x200902]        # 601068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400766:	68 0a 00 00 00       	push   0xa
  40076b:	e9 40 ff ff ff       	jmp    4006b0 <_init+0x18>

Disassembly of section .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    ebp,ebp
  400772:	49 89 d1             	mov    r9,rdx
  400775:	5e                   	pop    rsi
  400776:	48 89 e2             	mov    rdx,rsp
  400779:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40077d:	50                   	push   rax
  40077e:	54                   	push   rsp
  40077f:	49 c7 c0 e0 0a 40 00 	mov    r8,0x400ae0
  400786:	48 c7 c1 70 0a 40 00 	mov    rcx,0x400a70
  40078d:	48 c7 c7 40 09 40 00 	mov    rdi,0x400940
  400794:	ff 15 56 08 20 00    	call   QWORD PTR [rip+0x200856]        # 600ff0 <_DYNAMIC+0x1d0>
  40079a:	f4                   	hlt    
  40079b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004007a0 <_dl_relocate_static_pie>:
  4007a0:	f3 c3                	repz ret 
  4007a2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4007a9:	00 00 00 
  4007ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004007b0 <deregister_tm_clones>:
  4007b0:	55                   	push   rbp
  4007b1:	b8 88 10 60 00       	mov    eax,0x601088
  4007b6:	48 3d 88 10 60 00    	cmp    rax,0x601088
  4007bc:	48 89 e5             	mov    rbp,rsp
  4007bf:	74 17                	je     4007d8 <deregister_tm_clones+0x28>
  4007c1:	b8 00 00 00 00       	mov    eax,0x0
  4007c6:	48 85 c0             	test   rax,rax
  4007c9:	74 0d                	je     4007d8 <deregister_tm_clones+0x28>
  4007cb:	5d                   	pop    rbp
  4007cc:	bf 88 10 60 00       	mov    edi,0x601088
  4007d1:	ff e0                	jmp    rax
  4007d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007d8:	5d                   	pop    rbp
  4007d9:	c3                   	ret    
  4007da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007e0 <register_tm_clones>:
  4007e0:	be 88 10 60 00       	mov    esi,0x601088
  4007e5:	55                   	push   rbp
  4007e6:	48 81 ee 88 10 60 00 	sub    rsi,0x601088
  4007ed:	48 89 e5             	mov    rbp,rsp
  4007f0:	48 c1 fe 03          	sar    rsi,0x3
  4007f4:	48 89 f0             	mov    rax,rsi
  4007f7:	48 c1 e8 3f          	shr    rax,0x3f
  4007fb:	48 01 c6             	add    rsi,rax
  4007fe:	48 d1 fe             	sar    rsi,1
  400801:	74 15                	je     400818 <register_tm_clones+0x38>
  400803:	b8 00 00 00 00       	mov    eax,0x0
  400808:	48 85 c0             	test   rax,rax
  40080b:	74 0b                	je     400818 <register_tm_clones+0x38>
  40080d:	5d                   	pop    rbp
  40080e:	bf 88 10 60 00       	mov    edi,0x601088
  400813:	ff e0                	jmp    rax
  400815:	0f 1f 00             	nop    DWORD PTR [rax]
  400818:	5d                   	pop    rbp
  400819:	c3                   	ret    
  40081a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 81 08 20 00 00 	cmp    BYTE PTR [rip+0x200881],0x0        # 6010a8 <completed.7696>
  400827:	75 17                	jne    400840 <__do_global_dtors_aux+0x20>
  400829:	55                   	push   rbp
  40082a:	48 89 e5             	mov    rbp,rsp
  40082d:	e8 7e ff ff ff       	call   4007b0 <deregister_tm_clones>
  400832:	c6 05 6f 08 20 00 01 	mov    BYTE PTR [rip+0x20086f],0x1        # 6010a8 <completed.7696>
  400839:	5d                   	pop    rbp
  40083a:	c3                   	ret    
  40083b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400840:	f3 c3                	repz ret 
  400842:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400846:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40084d:	00 00 00 

0000000000400850 <frame_dummy>:
  400850:	55                   	push   rbp
  400851:	48 89 e5             	mov    rbp,rsp
  400854:	5d                   	pop    rbp
  400855:	eb 89                	jmp    4007e0 <register_tm_clones>
  400857:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40085e:	00 00 

0000000000400860 <initialize>:
  400860:	55                   	push   rbp
  400861:	48 89 e5             	mov    rbp,rsp
  400864:	48 83 ec 50          	sub    rsp,0x50
  400868:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40086f:	00 00 
  400871:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400875:	48 8b 3d 14 08 20 00 	mov    rdi,QWORD PTR [rip+0x200814]        # 601090 <stdout@@GLIBC_2.2.5>
  40087c:	31 c9                	xor    ecx,ecx
  40087e:	89 c8                	mov    eax,ecx
  400880:	ba 02 00 00 00       	mov    edx,0x2
  400885:	48 89 c6             	mov    rsi,rax
  400888:	89 55 e4             	mov    DWORD PTR [rbp-0x1c],edx
  40088b:	89 4d e0             	mov    DWORD PTR [rbp-0x20],ecx
  40088e:	48 89 c1             	mov    rcx,rax
  400891:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  400895:	e8 b6 fe ff ff       	call   400750 <setvbuf@plt>
  40089a:	48 8b 3d ff 07 20 00 	mov    rdi,QWORD PTR [rip+0x2007ff]        # 6010a0 <stdin@@GLIBC_2.2.5>
  4008a1:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
  4008a5:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  4008a8:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  4008ac:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  4008af:	e8 9c fe ff ff       	call   400750 <setvbuf@plt>
  4008b4:	bf 28 00 00 00       	mov    edi,0x28
  4008b9:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  4008bc:	e8 6f fe ff ff       	call   400730 <alarm@plt>
  4008c1:	48 8b 7d d8          	mov    rdi,QWORD PTR [rbp-0x28]
  4008c5:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  4008c8:	e8 73 fe ff ff       	call   400740 <time@plt>
  4008cd:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4008d1:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
  4008d5:	e8 e6 fd ff ff       	call   4006c0 <localtime@plt>
  4008da:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4008de:	48 8b 15 9b 07 20 00 	mov    rdx,QWORD PTR [rip+0x20079b]        # 601080 <welcome_str>
  4008e5:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
  4008e9:	48 89 55 c0          	mov    QWORD PTR [rbp-0x40],rdx
  4008ed:	e8 0e fe ff ff       	call   400700 <asctime@plt>
  4008f2:	41 b8 b0 10 60 00    	mov    r8d,0x6010b0
  4008f8:	44 89 c7             	mov    edi,r8d
  4008fb:	41 b8 7f 00 00 00    	mov    r8d,0x7f
  400901:	44 89 c6             	mov    esi,r8d
  400904:	44 8b 45 e0          	mov    r8d,DWORD PTR [rbp-0x20]
  400908:	45 88 c1             	mov    r9b,r8b
  40090b:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  40090f:	48 89 c1             	mov    rcx,rax
  400912:	44 88 c8             	mov    al,r9b
  400915:	e8 06 fe ff ff       	call   400720 <snprintf@plt>
  40091a:	64 48 8b 0c 25 28 00 	mov    rcx,QWORD PTR fs:0x28
  400921:	00 00 
  400923:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400927:	48 39 d1             	cmp    rcx,rdx
  40092a:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  40092d:	0f 85 06 00 00 00    	jne    400939 <initialize+0xd9>
  400933:	48 83 c4 50          	add    rsp,0x50
  400937:	5d                   	pop    rbp
  400938:	c3                   	ret    
  400939:	e8 b2 fd ff ff       	call   4006f0 <__stack_chk_fail@plt>
  40093e:	66 90                	xchg   ax,ax

0000000000400940 <main>:
  400940:	55                   	push   rbp
  400941:	48 89 e5             	mov    rbp,rsp
  400944:	48 83 ec 20          	sub    rsp,0x20
  400948:	48 bf b0 10 60 00 00 	movabs rdi,0x6010b0
  40094f:	00 00 00 
  400952:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  400959:	e8 82 fd ff ff       	call   4006e0 <puts@plt>
  40095e:	48 bf f4 0a 40 00 00 	movabs rdi,0x400af4
  400965:	00 00 00 
  400968:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  40096b:	b0 00                	mov    al,0x0
  40096d:	e8 9e fd ff ff       	call   400710 <printf@plt>
  400972:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  400979:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  40097c:	83 7d f8 05          	cmp    DWORD PTR [rbp-0x8],0x5
  400980:	0f 8d 13 00 00 00    	jge    400999 <main+0x59>
  400986:	e8 35 00 00 00       	call   4009c0 <do_flip>
  40098b:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  40098e:	83 c0 01             	add    eax,0x1
  400991:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  400994:	e9 e3 ff ff ff       	jmp    40097c <main+0x3c>
  400999:	48 bf 1e 0b 40 00 00 	movabs rdi,0x400b1e
  4009a0:	00 00 00 
  4009a3:	b0 00                	mov    al,0x0
  4009a5:	e8 66 fd ff ff       	call   400710 <printf@plt>
  4009aa:	31 ff                	xor    edi,edi
  4009ac:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  4009af:	e8 ac fd ff ff       	call   400760 <exit@plt>
  4009b4:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4009bb:	00 00 00 00 00 

00000000004009c0 <do_flip>:
  4009c0:	55                   	push   rbp
  4009c1:	48 89 e5             	mov    rbp,rsp
  4009c4:	48 83 ec 20          	sub    rsp,0x20
  4009c8:	48 bf 71 0b 40 00 00 	movabs rdi,0x400b71
  4009cf:	00 00 00 
  4009d2:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4009d9:	00 00 
  4009db:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4009df:	b0 00                	mov    al,0x0
  4009e1:	e8 2a fd ff ff       	call   400710 <printf@plt>
  4009e6:	48 be 8a 0b 40 00 00 	movabs rsi,0x400b8a
  4009ed:	00 00 00 
  4009f0:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  4009f4:	48 8d 4d ec          	lea    rcx,[rbp-0x14]
  4009f8:	48 8b 3c 25 a0 10 60 	mov    rdi,QWORD PTR ds:0x6010a0
  4009ff:	00 
  400a00:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  400a03:	b0 00                	mov    al,0x0
  400a05:	e8 c6 fc ff ff       	call   4006d0 <__isoc99_fscanf@plt>
  400a0a:	83 7d ec 07          	cmp    DWORD PTR [rbp-0x14],0x7
  400a0e:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  400a11:	0f 86 0a 00 00 00    	jbe    400a21 <do_flip+0x61>
  400a17:	bf 01 00 00 00       	mov    edi,0x1
  400a1c:	e8 3f fd ff ff       	call   400760 <exit@plt>
  400a21:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a25:	8a 08                	mov    cl,BYTE PTR [rax]
  400a27:	88 4d eb             	mov    BYTE PTR [rbp-0x15],cl
  400a2a:	8a 4d ec             	mov    cl,BYTE PTR [rbp-0x14]
  400a2d:	ba 01 00 00 00       	mov    edx,0x1
  400a32:	d3 e2                	shl    edx,cl
  400a34:	0f b6 75 eb          	movzx  esi,BYTE PTR [rbp-0x15]
  400a38:	31 d6                	xor    esi,edx
  400a3a:	40 88 f1             	mov    cl,sil
  400a3d:	88 4d eb             	mov    BYTE PTR [rbp-0x15],cl
  400a40:	8a 4d eb             	mov    cl,BYTE PTR [rbp-0x15]
  400a43:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a47:	88 08                	mov    BYTE PTR [rax],cl
  400a49:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400a50:	00 00 
  400a52:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
  400a56:	48 39 f8             	cmp    rax,rdi
  400a59:	0f 85 06 00 00 00    	jne    400a65 <do_flip+0xa5>
  400a5f:	48 83 c4 20          	add    rsp,0x20
  400a63:	5d                   	pop    rbp
  400a64:	c3                   	ret    
  400a65:	e8 86 fc ff ff       	call   4006f0 <__stack_chk_fail@plt>
  400a6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400a70 <__libc_csu_init>:
  400a70:	41 57                	push   r15
  400a72:	41 56                	push   r14
  400a74:	49 89 d7             	mov    r15,rdx
  400a77:	41 55                	push   r13
  400a79:	41 54                	push   r12
  400a7b:	4c 8d 25 86 03 20 00 	lea    r12,[rip+0x200386]        # 600e08 <__frame_dummy_init_array_entry>
  400a82:	55                   	push   rbp
  400a83:	48 8d 2d 8e 03 20 00 	lea    rbp,[rip+0x20038e]        # 600e18 <__init_array_end>
  400a8a:	53                   	push   rbx
  400a8b:	41 89 fd             	mov    r13d,edi
  400a8e:	49 89 f6             	mov    r14,rsi
  400a91:	4c 29 e5             	sub    rbp,r12
  400a94:	48 83 ec 08          	sub    rsp,0x8
  400a98:	48 c1 fd 03          	sar    rbp,0x3
  400a9c:	e8 f7 fb ff ff       	call   400698 <_init>
  400aa1:	48 85 ed             	test   rbp,rbp
  400aa4:	74 20                	je     400ac6 <__libc_csu_init+0x56>
  400aa6:	31 db                	xor    ebx,ebx
  400aa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400aaf:	00 
  400ab0:	4c 89 fa             	mov    rdx,r15
  400ab3:	4c 89 f6             	mov    rsi,r14
  400ab6:	44 89 ef             	mov    edi,r13d
  400ab9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400abd:	48 83 c3 01          	add    rbx,0x1
  400ac1:	48 39 dd             	cmp    rbp,rbx
  400ac4:	75 ea                	jne    400ab0 <__libc_csu_init+0x40>
  400ac6:	48 83 c4 08          	add    rsp,0x8
  400aca:	5b                   	pop    rbx
  400acb:	5d                   	pop    rbp
  400acc:	41 5c                	pop    r12
  400ace:	41 5d                	pop    r13
  400ad0:	41 5e                	pop    r14
  400ad2:	41 5f                	pop    r15
  400ad4:	c3                   	ret    
  400ad5:	90                   	nop
  400ad6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400add:	00 00 00 

0000000000400ae0 <__libc_csu_fini>:
  400ae0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400ae4 <_fini>:
  400ae4:	48 83 ec 08          	sub    rsp,0x8
  400ae8:	48 83 c4 08          	add    rsp,0x8
  400aec:	c3                   	ret    

Disassembly of section .rodata:

0000000000400af0 <_IO_stdin_used>:
  400af0:	01 00                	add    DWORD PTR [rax],eax
  400af2:	02 00                	add    al,BYTE PTR [rax]
  400af4:	49 27                	rex.WB (bad) 
  400af6:	6c                   	ins    BYTE PTR es:[rdi],dx
  400af7:	6c                   	ins    BYTE PTR es:[rdi],dx
  400af8:	20 6c 65 74          	and    BYTE PTR [rbp+riz*2+0x74],ch
  400afc:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
  400aff:	75 20                	jne    400b21 <_IO_stdin_used+0x31>
  400b01:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
  400b03:	69 70 20 35 20 62 69 	imul   esi,DWORD PTR [rax+0x20],0x69622035
  400b0a:	74 73                	je     400b7f <_IO_stdin_used+0x8f>
  400b0c:	2c 20                	sub    al,0x20
  400b0e:	62                   	(bad)  
  400b0f:	75 74                	jne    400b85 <_IO_stdin_used+0x95>
  400b11:	20 74 68 61          	and    BYTE PTR [rax+rbp*2+0x61],dh
  400b15:	74 27                	je     400b3e <_IO_stdin_used+0x4e>
  400b17:	73 20                	jae    400b39 <_IO_stdin_used+0x49>
  400b19:	69 74 21 0a 00 54 68 	imul   esi,DWORD PTR [rcx+riz*1+0xa],0x61685400
  400b20:	61 
  400b21:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400b22:	6b 20 79             	imul   esp,DWORD PTR [rax],0x79
  400b25:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400b26:	75 20                	jne    400b48 <_IO_stdin_used+0x58>
  400b28:	66 6f                	outs   dx,WORD PTR ds:[rsi]
  400b2a:	72 20                	jb     400b4c <_IO_stdin_used+0x5c>
  400b2c:	66 6c                	data16 ins BYTE PTR es:[rdi],dx
  400b2e:	69 70 70 69 6e 67 20 	imul   esi,DWORD PTR [rax+0x70],0x20676e69
  400b35:	75 73                	jne    400baa <__GNU_EH_FRAME_HDR+0x1a>
  400b37:	20 6f 66             	and    BYTE PTR [rdi+0x66],ch
  400b3a:	66 21 0a             	and    WORD PTR [rdx],cx
  400b3d:	48 61                	rex.W (bad) 
  400b3f:	76 65                	jbe    400ba6 <__GNU_EH_FRAME_HDR+0x16>
  400b41:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
  400b44:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400b45:	69 63 65 20 64 61 79 	imul   esp,DWORD PTR [rbx+0x65],0x79616420
  400b4c:	20 3a                	and    BYTE PTR [rdx],bh
  400b4e:	29 0a                	sub    DWORD PTR [rdx],ecx
  400b50:	00 57 65             	add    BYTE PTR [rdi+0x65],dl
  400b53:	6c                   	ins    BYTE PTR es:[rdi],dx
  400b54:	63 6f 6d             	movsxd ebp,DWORD PTR [rdi+0x6d]
  400b57:	65 21 20             	and    DWORD PTR gs:[rax],esp
  400b5a:	54                   	push   rsp
  400b5b:	68 65 20 63 75       	push   0x75632065
  400b60:	72 72                	jb     400bd4 <__GNU_EH_FRAME_HDR+0x44>
  400b62:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  400b64:	74 20                	je     400b86 <_IO_stdin_used+0x96>
  400b66:	74 69                	je     400bd1 <__GNU_EH_FRAME_HDR+0x41>
  400b68:	6d                   	ins    DWORD PTR es:[rdi],dx
  400b69:	65 20 69 73          	and    BYTE PTR gs:[rcx+0x73],ch
  400b6d:	20 25 73 00 45 6e    	and    BYTE PTR [rip+0x6e450073],ah        # 6e850be6 <_end+0x6e24fab6>
  400b73:	74 65                	je     400bda <__GNU_EH_FRAME_HDR+0x4a>
  400b75:	72 20                	jb     400b97 <__GNU_EH_FRAME_HDR+0x7>
  400b77:	61                   	(bad)  
  400b78:	64 64 72 3a          	fs fs jb 400bb6 <__GNU_EH_FRAME_HDR+0x26>
  400b7c:	62                   	(bad)  
  400b7d:	69 74 20 74 6f 20 66 	imul   esi,DWORD PTR [rax+riz*1+0x74],0x6c66206f
  400b84:	6c 
  400b85:	69 70 3a 20 00 25 70 	imul   esi,DWORD PTR [rax+0x3a],0x70250020
  400b8c:	3a                   	.byte 0x3a
  400b8d:	25                   	.byte 0x25
  400b8e:	75 00                	jne    400b90 <__GNU_EH_FRAME_HDR>

Disassembly of section .eh_frame_hdr:

0000000000400b90 <__GNU_EH_FRAME_HDR>:
  400b90:	01 1b                	add    DWORD PTR [rbx],ebx
  400b92:	03 3b                	add    edi,DWORD PTR [rbx]
  400b94:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
  400b97:	00 08                	add    BYTE PTR [rax],cl
  400b99:	00 00                	add    BYTE PTR [rax],al
  400b9b:	00 20                	add    BYTE PTR [rax],ah
  400b9d:	fb                   	sti    
  400b9e:	ff                   	(bad)  
  400b9f:	ff a8 00 00 00 e0    	jmp    FWORD PTR [rax-0x20000000]
  400ba5:	fb                   	sti    
  400ba6:	ff                   	(bad)  
  400ba7:	ff 68 00             	jmp    FWORD PTR [rax+0x0]
  400baa:	00 00                	add    BYTE PTR [rax],al
  400bac:	10 fc                	adc    ah,bh
  400bae:	ff                   	(bad)  
  400baf:	ff 94 00 00 00 d0 fc 	call   QWORD PTR [rax+rax*1-0x3300000]
  400bb6:	ff                   	(bad)  
  400bb7:	ff d0                	call   rax
  400bb9:	00 00                	add    BYTE PTR [rax],al
  400bbb:	00 b0 fd ff ff ec    	add    BYTE PTR [rax-0x13000003],dh
  400bc1:	00 00                	add    BYTE PTR [rax],al
  400bc3:	00 30                	add    BYTE PTR [rax],dh
  400bc5:	fe                   	(bad)  
  400bc6:	ff                   	(bad)  
  400bc7:	ff 08                	dec    DWORD PTR [rax]
  400bc9:	01 00                	add    DWORD PTR [rax],eax
  400bcb:	00 e0                	add    al,ah
  400bcd:	fe                   	(bad)  
  400bce:	ff                   	(bad)  
  400bcf:	ff 28                	jmp    FWORD PTR [rax]
  400bd1:	01 00                	add    DWORD PTR [rax],eax
  400bd3:	00 50 ff             	add    BYTE PTR [rax-0x1],dl
  400bd6:	ff                   	(bad)  
  400bd7:	ff 70 01             	push   QWORD PTR [rax+0x1]
	...

Disassembly of section .eh_frame:

0000000000400be0 <__FRAME_END__-0x134>:
  400be0:	14 00                	adc    al,0x0
  400be2:	00 00                	add    BYTE PTR [rax],al
  400be4:	00 00                	add    BYTE PTR [rax],al
  400be6:	00 00                	add    BYTE PTR [rax],al
  400be8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  400beb:	00 01                	add    BYTE PTR [rcx],al
  400bed:	78 10                	js     400bff <__GNU_EH_FRAME_HDR+0x6f>
  400bef:	01 1b                	add    DWORD PTR [rbx],ebx
  400bf1:	0c 07                	or     al,0x7
  400bf3:	08 90 01 07 10 10    	or     BYTE PTR [rax+0x10100701],dl
  400bf9:	00 00                	add    BYTE PTR [rax],al
  400bfb:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400bfe:	00 00                	add    BYTE PTR [rax],al
  400c00:	70 fb                	jo     400bfd <__GNU_EH_FRAME_HDR+0x6d>
  400c02:	ff                   	(bad)  
  400c03:	ff 2b                	jmp    FWORD PTR [rbx]
  400c05:	00 00                	add    BYTE PTR [rax],al
  400c07:	00 00                	add    BYTE PTR [rax],al
  400c09:	00 00                	add    BYTE PTR [rax],al
  400c0b:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  400c0e:	00 00                	add    BYTE PTR [rax],al
  400c10:	00 00                	add    BYTE PTR [rax],al
  400c12:	00 00                	add    BYTE PTR [rax],al
  400c14:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  400c17:	00 01                	add    BYTE PTR [rcx],al
  400c19:	78 10                	js     400c2b <__GNU_EH_FRAME_HDR+0x9b>
  400c1b:	01 1b                	add    DWORD PTR [rbx],ebx
  400c1d:	0c 07                	or     al,0x7
  400c1f:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  400c25:	00 00                	add    BYTE PTR [rax],al
  400c27:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400c2a:	00 00                	add    BYTE PTR [rax],al
  400c2c:	74 fb                	je     400c29 <__GNU_EH_FRAME_HDR+0x99>
  400c2e:	ff                   	(bad)  
  400c2f:	ff 02                	inc    DWORD PTR [rdx]
  400c31:	00 00                	add    BYTE PTR [rax],al
  400c33:	00 00                	add    BYTE PTR [rax],al
  400c35:	00 00                	add    BYTE PTR [rax],al
  400c37:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  400c3a:	00 00                	add    BYTE PTR [rax],al
  400c3c:	30 00                	xor    BYTE PTR [rax],al
  400c3e:	00 00                	add    BYTE PTR [rax],al
  400c40:	70 fa                	jo     400c3c <__GNU_EH_FRAME_HDR+0xac>
  400c42:	ff                   	(bad)  
  400c43:	ff c0                	inc    eax
  400c45:	00 00                	add    BYTE PTR [rax],al
  400c47:	00 00                	add    BYTE PTR [rax],al
  400c49:	0e                   	(bad)  
  400c4a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  400c4d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  400c50:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  400c53:	80 00 3f             	add    BYTE PTR [rax],0x3f
  400c56:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  400c58:	2a 33                	sub    dh,BYTE PTR [rbx]
  400c5a:	24 22                	and    al,0x22
  400c5c:	00 00                	add    BYTE PTR [rax],al
  400c5e:	00 00                	add    BYTE PTR [rax],al
  400c60:	18 00                	sbb    BYTE PTR [rax],al
  400c62:	00 00                	add    BYTE PTR [rax],al
  400c64:	58                   	pop    rax
  400c65:	00 00                	add    BYTE PTR [rax],al
  400c67:	00 f8                	add    al,bh
  400c69:	fb                   	sti    
  400c6a:	ff                   	(bad)  
  400c6b:	ff                   	(bad)  
  400c6c:	de 00                	fiadd  WORD PTR [rax]
  400c6e:	00 00                	add    BYTE PTR [rax],al
  400c70:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  400c73:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400c79:	00 00                	add    BYTE PTR [rax],al
  400c7b:	00 18                	add    BYTE PTR [rax],bl
  400c7d:	00 00                	add    BYTE PTR [rax],al
  400c7f:	00 74 00 00          	add    BYTE PTR [rax+rax*1+0x0],dh
  400c83:	00 bc fc ff ff 74 00 	add    BYTE PTR [rsp+rdi*8+0x74ffff],bh
  400c8a:	00 00                	add    BYTE PTR [rax],al
  400c8c:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  400c8f:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400c95:	00 00                	add    BYTE PTR [rax],al
  400c97:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400c9a:	00 00                	add    BYTE PTR [rax],al
  400c9c:	90                   	nop
  400c9d:	00 00                	add    BYTE PTR [rax],al
  400c9f:	00 20                	add    BYTE PTR [rax],ah
  400ca1:	fd                   	std    
  400ca2:	ff                   	(bad)  
  400ca3:	ff aa 00 00 00 00    	jmp    FWORD PTR [rdx+0x0]
  400ca9:	41 0e                	rex.B (bad) 
  400cab:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400cb1:	00 00                	add    BYTE PTR [rax],al
  400cb3:	00 00                	add    BYTE PTR [rax],al
  400cb5:	00 00                	add    BYTE PTR [rax],al
  400cb7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
  400cbb:	00 b0 00 00 00 b0    	add    BYTE PTR [rax-0x50000000],dh
  400cc1:	fd                   	std    
  400cc2:	ff                   	(bad)  
  400cc3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  400cc6:	00 00                	add    BYTE PTR [rax],al
  400cc8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
  400ccb:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
  400cd1:	8e 03                	mov    es,WORD PTR [rbx]
  400cd3:	45 0e                	rex.RB (bad) 
  400cd5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
  400cdb:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86701b29 <_end+0xffffffff861009f9>
  400ce1:	06                   	(bad)  
  400ce2:	48 0e                	rex.W (bad) 
  400ce4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  400cea:	72 0e                	jb     400cfa <__GNU_EH_FRAME_HDR+0x16a>
  400cec:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  400cef:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  400cf2:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  400cf5:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  400cf8:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  400cfb:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  400cfe:	08 00                	or     BYTE PTR [rax],al
  400d00:	10 00                	adc    BYTE PTR [rax],al
  400d02:	00 00                	add    BYTE PTR [rax],al
  400d04:	f8                   	clc    
  400d05:	00 00                	add    BYTE PTR [rax],al
  400d07:	00 d8                	add    al,bl
  400d09:	fd                   	std    
  400d0a:	ff                   	(bad)  
  400d0b:	ff 02                	inc    DWORD PTR [rdx]
  400d0d:	00 00                	add    BYTE PTR [rax],al
  400d0f:	00 00                	add    BYTE PTR [rax],al
  400d11:	00 00                	add    BYTE PTR [rax],al
	...

0000000000400d14 <__FRAME_END__>:
  400d14:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000600e08 <__frame_dummy_init_array_entry>:
  600e08:	50                   	push   rax
  600e09:	08 40 00             	or     BYTE PTR [rax+0x0],al
  600e0c:	00 00                	add    BYTE PTR [rax],al
  600e0e:	00 00                	add    BYTE PTR [rax],al
  600e10:	60                   	(bad)  
  600e11:	08 40 00             	or     BYTE PTR [rax+0x0],al
  600e14:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	20 08                	and    BYTE PTR [rax],cl
  600e1a:	40 00 00             	add    BYTE PTR [rax],al
  600e1d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000600e20 <_DYNAMIC>:
  600e20:	01 00                	add    DWORD PTR [rax],eax
  600e22:	00 00                	add    BYTE PTR [rax],al
  600e24:	00 00                	add    BYTE PTR [rax],al
  600e26:	00 00                	add    BYTE PTR [rax],al
  600e28:	01 00                	add    DWORD PTR [rax],eax
  600e2a:	00 00                	add    BYTE PTR [rax],al
  600e2c:	00 00                	add    BYTE PTR [rax],al
  600e2e:	00 00                	add    BYTE PTR [rax],al
  600e30:	0c 00                	or     al,0x0
  600e32:	00 00                	add    BYTE PTR [rax],al
  600e34:	00 00                	add    BYTE PTR [rax],al
  600e36:	00 00                	add    BYTE PTR [rax],al
  600e38:	98                   	cwde   
  600e39:	06                   	(bad)  
  600e3a:	40 00 00             	add    BYTE PTR [rax],al
  600e3d:	00 00                	add    BYTE PTR [rax],al
  600e3f:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 600e45 <_DYNAMIC+0x25>
  600e45:	00 00                	add    BYTE PTR [rax],al
  600e47:	00 e4                	add    ah,ah
  600e49:	0a 40 00             	or     al,BYTE PTR [rax+0x0]
  600e4c:	00 00                	add    BYTE PTR [rax],al
  600e4e:	00 00                	add    BYTE PTR [rax],al
  600e50:	19 00                	sbb    DWORD PTR [rax],eax
  600e52:	00 00                	add    BYTE PTR [rax],al
  600e54:	00 00                	add    BYTE PTR [rax],al
  600e56:	00 00                	add    BYTE PTR [rax],al
  600e58:	08 0e                	or     BYTE PTR [rsi],cl
  600e5a:	60                   	(bad)  
  600e5b:	00 00                	add    BYTE PTR [rax],al
  600e5d:	00 00                	add    BYTE PTR [rax],al
  600e5f:	00 1b                	add    BYTE PTR [rbx],bl
  600e61:	00 00                	add    BYTE PTR [rax],al
  600e63:	00 00                	add    BYTE PTR [rax],al
  600e65:	00 00                	add    BYTE PTR [rax],al
  600e67:	00 10                	add    BYTE PTR [rax],dl
  600e69:	00 00                	add    BYTE PTR [rax],al
  600e6b:	00 00                	add    BYTE PTR [rax],al
  600e6d:	00 00                	add    BYTE PTR [rax],al
  600e6f:	00 1a                	add    BYTE PTR [rdx],bl
  600e71:	00 00                	add    BYTE PTR [rax],al
  600e73:	00 00                	add    BYTE PTR [rax],al
  600e75:	00 00                	add    BYTE PTR [rax],al
  600e77:	00 18                	add    BYTE PTR [rax],bl
  600e79:	0e                   	(bad)  
  600e7a:	60                   	(bad)  
  600e7b:	00 00                	add    BYTE PTR [rax],al
  600e7d:	00 00                	add    BYTE PTR [rax],al
  600e7f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  600e82:	00 00                	add    BYTE PTR [rax],al
  600e84:	00 00                	add    BYTE PTR [rax],al
  600e86:	00 00                	add    BYTE PTR [rax],al
  600e88:	08 00                	or     BYTE PTR [rax],al
  600e8a:	00 00                	add    BYTE PTR [rax],al
  600e8c:	00 00                	add    BYTE PTR [rax],al
  600e8e:	00 00                	add    BYTE PTR [rax],al
  600e90:	f5                   	cmc    
  600e91:	fe                   	(bad)  
  600e92:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600e95:	00 00                	add    BYTE PTR [rax],al
  600e97:	00 78 02             	add    BYTE PTR [rax+0x2],bh
  600e9a:	40 00 00             	add    BYTE PTR [rax],al
  600e9d:	00 00                	add    BYTE PTR [rax],al
  600e9f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 600ea5 <_DYNAMIC+0x85>
  600ea5:	00 00                	add    BYTE PTR [rax],al
  600ea7:	00 20                	add    BYTE PTR [rax],ah
  600ea9:	04 40                	add    al,0x40
  600eab:	00 00                	add    BYTE PTR [rax],al
  600ead:	00 00                	add    BYTE PTR [rax],al
  600eaf:	00 06                	add    BYTE PTR [rsi],al
  600eb1:	00 00                	add    BYTE PTR [rax],al
  600eb3:	00 00                	add    BYTE PTR [rax],al
  600eb5:	00 00                	add    BYTE PTR [rax],al
  600eb7:	00 a0 02 40 00 00    	add    BYTE PTR [rax+0x4002],ah
  600ebd:	00 00                	add    BYTE PTR [rax],al
  600ebf:	00 0a                	add    BYTE PTR [rdx],cl
  600ec1:	00 00                	add    BYTE PTR [rax],al
  600ec3:	00 00                	add    BYTE PTR [rax],al
  600ec5:	00 00                	add    BYTE PTR [rax],al
  600ec7:	00 ad 00 00 00 00    	add    BYTE PTR [rbp+0x0],ch
  600ecd:	00 00                	add    BYTE PTR [rax],al
  600ecf:	00 0b                	add    BYTE PTR [rbx],cl
  600ed1:	00 00                	add    BYTE PTR [rax],al
  600ed3:	00 00                	add    BYTE PTR [rax],al
  600ed5:	00 00                	add    BYTE PTR [rax],al
  600ed7:	00 18                	add    BYTE PTR [rax],bl
  600ed9:	00 00                	add    BYTE PTR [rax],al
  600edb:	00 00                	add    BYTE PTR [rax],al
  600edd:	00 00                	add    BYTE PTR [rax],al
  600edf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 600ee5 <_DYNAMIC+0xc5>
	...
  600eed:	00 00                	add    BYTE PTR [rax],al
  600eef:	00 03                	add    BYTE PTR [rbx],al
	...
  600ef9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  600efc:	00 00                	add    BYTE PTR [rax],al
  600efe:	00 00                	add    BYTE PTR [rax],al
  600f00:	02 00                	add    al,BYTE PTR [rax]
  600f02:	00 00                	add    BYTE PTR [rax],al
  600f04:	00 00                	add    BYTE PTR [rax],al
  600f06:	00 00                	add    BYTE PTR [rax],al
  600f08:	08 01                	or     BYTE PTR [rcx],al
  600f0a:	00 00                	add    BYTE PTR [rax],al
  600f0c:	00 00                	add    BYTE PTR [rax],al
  600f0e:	00 00                	add    BYTE PTR [rax],al
  600f10:	14 00                	adc    al,0x0
  600f12:	00 00                	add    BYTE PTR [rax],al
  600f14:	00 00                	add    BYTE PTR [rax],al
  600f16:	00 00                	add    BYTE PTR [rax],al
  600f18:	07                   	(bad)  
  600f19:	00 00                	add    BYTE PTR [rax],al
  600f1b:	00 00                	add    BYTE PTR [rax],al
  600f1d:	00 00                	add    BYTE PTR [rax],al
  600f1f:	00 17                	add    BYTE PTR [rdi],dl
  600f21:	00 00                	add    BYTE PTR [rax],al
  600f23:	00 00                	add    BYTE PTR [rax],al
  600f25:	00 00                	add    BYTE PTR [rax],al
  600f27:	00 90 05 40 00 00    	add    BYTE PTR [rax+0x4005],dl
  600f2d:	00 00                	add    BYTE PTR [rax],al
  600f2f:	00 07                	add    BYTE PTR [rdi],al
  600f31:	00 00                	add    BYTE PTR [rax],al
  600f33:	00 00                	add    BYTE PTR [rax],al
  600f35:	00 00                	add    BYTE PTR [rax],al
  600f37:	00 30                	add    BYTE PTR [rax],dh
  600f39:	05 40 00 00 00       	add    eax,0x40
  600f3e:	00 00                	add    BYTE PTR [rax],al
  600f40:	08 00                	or     BYTE PTR [rax],al
  600f42:	00 00                	add    BYTE PTR [rax],al
  600f44:	00 00                	add    BYTE PTR [rax],al
  600f46:	00 00                	add    BYTE PTR [rax],al
  600f48:	60                   	(bad)  
  600f49:	00 00                	add    BYTE PTR [rax],al
  600f4b:	00 00                	add    BYTE PTR [rax],al
  600f4d:	00 00                	add    BYTE PTR [rax],al
  600f4f:	00 09                	add    BYTE PTR [rcx],cl
  600f51:	00 00                	add    BYTE PTR [rax],al
  600f53:	00 00                	add    BYTE PTR [rax],al
  600f55:	00 00                	add    BYTE PTR [rax],al
  600f57:	00 18                	add    BYTE PTR [rax],bl
  600f59:	00 00                	add    BYTE PTR [rax],al
  600f5b:	00 00                	add    BYTE PTR [rax],al
  600f5d:	00 00                	add    BYTE PTR [rax],al
  600f5f:	00 fe                	add    dh,bh
  600f61:	ff                   	(bad)  
  600f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f65:	00 00                	add    BYTE PTR [rax],al
  600f67:	00 f0                	add    al,dh
  600f69:	04 40                	add    al,0x40
  600f6b:	00 00                	add    BYTE PTR [rax],al
  600f6d:	00 00                	add    BYTE PTR [rax],al
  600f6f:	00 ff                	add    bh,bh
  600f71:	ff                   	(bad)  
  600f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f75:	00 00                	add    BYTE PTR [rax],al
  600f77:	00 01                	add    BYTE PTR [rcx],al
  600f79:	00 00                	add    BYTE PTR [rax],al
  600f7b:	00 00                	add    BYTE PTR [rax],al
  600f7d:	00 00                	add    BYTE PTR [rax],al
  600f7f:	00 f0                	add    al,dh
  600f81:	ff                   	(bad)  
  600f82:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f85:	00 00                	add    BYTE PTR [rax],al
  600f87:	00 ce                	add    dh,cl
  600f89:	04 40                	add    al,0x40
	...

Disassembly of section .got:

0000000000600ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	20 0e                	and    BYTE PTR [rsi],cl
  601002:	60                   	(bad)  
	...
  601017:	00 c6                	add    dh,al
  601019:	06                   	(bad)  
  60101a:	40 00 00             	add    BYTE PTR [rax],al
  60101d:	00 00                	add    BYTE PTR [rax],al
  60101f:	00 d6                	add    dh,dl
  601021:	06                   	(bad)  
  601022:	40 00 00             	add    BYTE PTR [rax],al
  601025:	00 00                	add    BYTE PTR [rax],al
  601027:	00 e6                	add    dh,ah
  601029:	06                   	(bad)  
  60102a:	40 00 00             	add    BYTE PTR [rax],al
  60102d:	00 00                	add    BYTE PTR [rax],al
  60102f:	00 f6                	add    dh,dh
  601031:	06                   	(bad)  
  601032:	40 00 00             	add    BYTE PTR [rax],al
  601035:	00 00                	add    BYTE PTR [rax],al
  601037:	00 06                	add    BYTE PTR [rsi],al
  601039:	07                   	(bad)  
  60103a:	40 00 00             	add    BYTE PTR [rax],al
  60103d:	00 00                	add    BYTE PTR [rax],al
  60103f:	00 16                	add    BYTE PTR [rsi],dl
  601041:	07                   	(bad)  
  601042:	40 00 00             	add    BYTE PTR [rax],al
  601045:	00 00                	add    BYTE PTR [rax],al
  601047:	00 26                	add    BYTE PTR [rsi],ah
  601049:	07                   	(bad)  
  60104a:	40 00 00             	add    BYTE PTR [rax],al
  60104d:	00 00                	add    BYTE PTR [rax],al
  60104f:	00 36                	add    BYTE PTR [rsi],dh
  601051:	07                   	(bad)  
  601052:	40 00 00             	add    BYTE PTR [rax],al
  601055:	00 00                	add    BYTE PTR [rax],al
  601057:	00 46 07             	add    BYTE PTR [rsi+0x7],al
  60105a:	40 00 00             	add    BYTE PTR [rax],al
  60105d:	00 00                	add    BYTE PTR [rax],al
  60105f:	00 56 07             	add    BYTE PTR [rsi+0x7],dl
  601062:	40 00 00             	add    BYTE PTR [rax],al
  601065:	00 00                	add    BYTE PTR [rax],al
  601067:	00 66 07             	add    BYTE PTR [rsi+0x7],ah
  60106a:	40 00 00             	add    BYTE PTR [rax],al
  60106d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000601070 <__data_start>:
	...

0000000000601078 <__dso_handle>:
	...

0000000000601080 <welcome_str>:
  601080:	51                   	push   rcx
  601081:	0b 40 00             	or     eax,DWORD PTR [rax+0x0]
  601084:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000601090 <stdout@@GLIBC_2.2.5>:
	...

00000000006010a0 <stdin@@GLIBC_2.2.5>:
	...

00000000006010a8 <completed.7696>:
	...

00000000006010b0 <buf>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x400620>
   a:	74 75                	je     81 <_init-0x400617>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 33 2e             	xor    ebp,DWORD PTR cs:[rsi]
  11:	30 2d 32 37 75 62    	xor    BYTE PTR [rip+0x62753732],ch        # 62753749 <_end+0x62152619>
  17:	75 6e                	jne    87 <_init-0x400611>
  19:	74 75                	je     90 <_init-0x400608>
  1b:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1e:	38 2e                	cmp    BYTE PTR [rsi],ch
  20:	30 34 29             	xor    BYTE PTR [rcx+rbp*1],dh
  23:	20 37                	and    BYTE PTR [rdi],dh
  25:	2e 33 2e             	xor    ebp,DWORD PTR cs:[rsi]
  28:	30 00                	xor    BYTE PTR [rax],al
  2a:	63 6c 61 6e          	movsxd ebp,DWORD PTR [rcx+riz*2+0x6e]
  2e:	67 20 76 65          	and    BYTE PTR [esi+0x65],dh
  32:	72 73                	jb     a7 <_init-0x4005f1>
  34:	69 6f 6e 20 36 2e 30 	imul   ebp,DWORD PTR [rdi+0x6e],0x302e3620
  3b:	2e 30 2d 31 75 62 75 	xor    BYTE PTR cs:[rip+0x75627531],ch        # 75627573 <_end+0x75026443>
  42:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  43:	74 75                	je     ba <_init-0x4005de>
  45:	32 20                	xor    ah,BYTE PTR [rax]
  47:	28 74 61 67          	sub    BYTE PTR [rcx+riz*2+0x67],dh
  4b:	73 2f                	jae    7c <_init-0x40061c>
  4d:	52                   	push   rdx
  4e:	45                   	rex.RB
  4f:	4c                   	rex.WR
  50:	45                   	rex.RB
  51:	41 53                	push   r11
  53:	45 5f                	rex.RB pop r15
  55:	36 30 30             	xor    BYTE PTR ss:[rax],dh
  58:	2f                   	(bad)  
  59:	66 69 6e 61 6c 29    	imul   bp,WORD PTR [rsi+0x61],0x296c
	...
