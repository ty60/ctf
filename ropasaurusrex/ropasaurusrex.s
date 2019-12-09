
ropasaurusrex:     file format elf32-i386


Disassembly of section .interp:

08048114 <.interp>:
 8048114:	2f                   	das    
 8048115:	6c                   	ins    BYTE PTR es:[edi],dx
 8048116:	69 62 2f 6c 64 2d 6c 	imul   esp,DWORD PTR [edx+0x2f],0x6c2d646c
 804811d:	69 6e 75 78 2e 73 6f 	imul   ebp,DWORD PTR [esi+0x75],0x6f732e78
 8048124:	2e 32 00             	xor    al,BYTE PTR cs:[eax]

Disassembly of section .note.ABI-tag:

08048128 <.note.ABI-tag>:
 8048128:	04 00                	add    al,0x0
 804812a:	00 00                	add    BYTE PTR [eax],al
 804812c:	10 00                	adc    BYTE PTR [eax],al
 804812e:	00 00                	add    BYTE PTR [eax],al
 8048130:	01 00                	add    DWORD PTR [eax],eax
 8048132:	00 00                	add    BYTE PTR [eax],al
 8048134:	47                   	inc    edi
 8048135:	4e                   	dec    esi
 8048136:	55                   	push   ebp
 8048137:	00 00                	add    BYTE PTR [eax],al
 8048139:	00 00                	add    BYTE PTR [eax],al
 804813b:	00 02                	add    BYTE PTR [edx],al
 804813d:	00 00                	add    BYTE PTR [eax],al
 804813f:	00 06                	add    BYTE PTR [esi],al
 8048141:	00 00                	add    BYTE PTR [eax],al
 8048143:	00 12                	add    BYTE PTR [edx],dl
 8048145:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .note.gnu.build-id:

08048148 <.note.gnu.build-id>:
 8048148:	04 00                	add    al,0x0
 804814a:	00 00                	add    BYTE PTR [eax],al
 804814c:	14 00                	adc    al,0x0
 804814e:	00 00                	add    BYTE PTR [eax],al
 8048150:	03 00                	add    eax,DWORD PTR [eax]
 8048152:	00 00                	add    BYTE PTR [eax],al
 8048154:	47                   	inc    edi
 8048155:	4e                   	dec    esi
 8048156:	55                   	push   ebp
 8048157:	00 96 99 7a ac d6    	add    BYTE PTR [esi-0x29538567],dl
 804815d:	ee                   	out    dx,al
 804815e:	78 89                	js     80480e9 <__gmon_start__@plt-0x213>
 8048160:	b9 9d c1 56 d8       	mov    ecx,0xd856c19d
 8048165:	3c 9d                	cmp    al,0x9d
 8048167:	20 5e b5             	and    BYTE PTR [esi-0x4b],bl
 804816a:	80                   	.byte 0x80
 804816b:	92                   	xchg   edx,eax

Disassembly of section .hash:

0804816c <.hash>:
 804816c:	03 00                	add    eax,DWORD PTR [eax]
 804816e:	00 00                	add    BYTE PTR [eax],al
 8048170:	06                   	push   es
 8048171:	00 00                	add    BYTE PTR [eax],al
 8048173:	00 02                	add    BYTE PTR [edx],al
 8048175:	00 00                	add    BYTE PTR [eax],al
 8048177:	00 04 00             	add    BYTE PTR [eax+eax*1],al
 804817a:	00 00                	add    BYTE PTR [eax],al
 804817c:	05 00 00 00 00       	add    eax,0x0
 8048181:	00 00                	add    BYTE PTR [eax],al
 8048183:	00 00                	add    BYTE PTR [eax],al
 8048185:	00 00                	add    BYTE PTR [eax],al
 8048187:	00 01                	add    BYTE PTR [ecx],al
 8048189:	00 00                	add    BYTE PTR [eax],al
 804818b:	00 00                	add    BYTE PTR [eax],al
 804818d:	00 00                	add    BYTE PTR [eax],al
 804818f:	00 03                	add    BYTE PTR [ebx],al
 8048191:	00 00                	add    BYTE PTR [eax],al
 8048193:	00 00                	add    BYTE PTR [eax],al
 8048195:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .gnu.hash:

08048198 <.gnu.hash>:
 8048198:	02 00                	add    al,BYTE PTR [eax]
 804819a:	00 00                	add    BYTE PTR [eax],al
 804819c:	05 00 00 00 01       	add    eax,0x1000000
 80481a1:	00 00                	add    BYTE PTR [eax],al
 80481a3:	00 05 00 00 00 00    	add    BYTE PTR ds:0x0,al
 80481a9:	20 00                	and    BYTE PTR [eax],al
 80481ab:	20 00                	and    BYTE PTR [eax],al
 80481ad:	00 00                	add    BYTE PTR [eax],al
 80481af:	00 05 00 00 00 ad    	add    BYTE PTR ds:0xad000000,al
 80481b5:	4b                   	dec    ebx
 80481b6:	e3 c0                	jecxz  8048178 <__gmon_start__@plt-0x184>

Disassembly of section .dynsym:

080481b8 <.dynsym>:
	...
 80481c8:	01 00                	add    DWORD PTR [eax],eax
	...
 80481d2:	00 00                	add    BYTE PTR [eax],al
 80481d4:	20 00                	and    BYTE PTR [eax],al
 80481d6:	00 00                	add    BYTE PTR [eax],al
 80481d8:	40                   	inc    eax
	...
 80481e1:	00 00                	add    BYTE PTR [eax],al
 80481e3:	00 12                	add    BYTE PTR [edx],dl
 80481e5:	00 00                	add    BYTE PTR [eax],al
 80481e7:	00 2e                	add    BYTE PTR [esi],ch
	...
 80481f1:	00 00                	add    BYTE PTR [eax],al
 80481f3:	00 12                	add    BYTE PTR [edx],dl
 80481f5:	00 00                	add    BYTE PTR [eax],al
 80481f7:	00 29                	add    BYTE PTR [ecx],ch
	...
 8048201:	00 00                	add    BYTE PTR [eax],al
 8048203:	00 12                	add    BYTE PTR [edx],dl
 8048205:	00 00                	add    BYTE PTR [eax],al
 8048207:	00 1a                	add    BYTE PTR [edx],bl
 8048209:	00 00                	add    BYTE PTR [eax],al
 804820b:	00 0c 85 04 08 04 00 	add    BYTE PTR [eax*4+0x40804],cl
 8048212:	00 00                	add    BYTE PTR [eax],al
 8048214:	11 00                	adc    DWORD PTR [eax],eax
 8048216:	10 00                	adc    BYTE PTR [eax],al

Disassembly of section .dynstr:

08048218 <.dynstr>:
 8048218:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 804821b:	67 6d                	ins    DWORD PTR es:[di],dx
 804821d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804821e:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804821f:	5f                   	pop    edi
 8048220:	73 74                	jae    8048296 <__gmon_start__@plt-0x66>
 8048222:	61                   	popa   
 8048223:	72 74                	jb     8048299 <__gmon_start__@plt-0x63>
 8048225:	5f                   	pop    edi
 8048226:	5f                   	pop    edi
 8048227:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
 804822b:	63 2e                	arpl   WORD PTR [esi],bp
 804822d:	73 6f                	jae    804829e <__gmon_start__@plt-0x5e>
 804822f:	2e 36 00 5f 49       	cs add BYTE PTR ss:[edi+0x49],bl
 8048234:	4f                   	dec    edi
 8048235:	5f                   	pop    edi
 8048236:	73 74                	jae    80482ac <__gmon_start__@plt-0x50>
 8048238:	64 69 6e 5f 75 73 65 	imul   ebp,DWORD PTR fs:[esi+0x5f],0x64657375
 804823f:	64 
 8048240:	00 72 65             	add    BYTE PTR [edx+0x65],dh
 8048243:	61                   	popa   
 8048244:	64 00 5f 5f          	add    BYTE PTR fs:[edi+0x5f],bl
 8048248:	6c                   	ins    BYTE PTR es:[edi],dx
 8048249:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [edx+0x63],0x6174735f
 8048250:	72 74                	jb     80482c6 <__gmon_start__@plt-0x36>
 8048252:	5f                   	pop    edi
 8048253:	6d                   	ins    DWORD PTR es:[edi],dx
 8048254:	61                   	popa   
 8048255:	69 6e 00 77 72 69 74 	imul   ebp,DWORD PTR [esi+0x0],0x74697277
 804825c:	65 00 47 4c          	add    BYTE PTR gs:[edi+0x4c],al
 8048260:	49                   	dec    ecx
 8048261:	42                   	inc    edx
 8048262:	43                   	inc    ebx
 8048263:	5f                   	pop    edi
 8048264:	32 2e                	xor    ch,BYTE PTR [esi]
 8048266:	30 00                	xor    BYTE PTR [eax],al

Disassembly of section .gnu.version:

08048268 <.gnu.version>:
 8048268:	00 00                	add    BYTE PTR [eax],al
 804826a:	00 00                	add    BYTE PTR [eax],al
 804826c:	02 00                	add    al,BYTE PTR [eax]
 804826e:	02 00                	add    al,BYTE PTR [eax]
 8048270:	02 00                	add    al,BYTE PTR [eax]
 8048272:	01 00                	add    DWORD PTR [eax],eax

Disassembly of section .gnu.version_r:

08048274 <.gnu.version_r>:
 8048274:	01 00                	add    DWORD PTR [eax],eax
 8048276:	01 00                	add    DWORD PTR [eax],eax
 8048278:	10 00                	adc    BYTE PTR [eax],al
 804827a:	00 00                	add    BYTE PTR [eax],al
 804827c:	10 00                	adc    BYTE PTR [eax],al
 804827e:	00 00                	add    BYTE PTR [eax],al
 8048280:	00 00                	add    BYTE PTR [eax],al
 8048282:	00 00                	add    BYTE PTR [eax],al
 8048284:	10 69 69             	adc    BYTE PTR [ecx+0x69],ch
 8048287:	0d 00 00 02 00       	or     eax,0x20000
 804828c:	46                   	inc    esi
 804828d:	00 00                	add    BYTE PTR [eax],al
 804828f:	00 00                	add    BYTE PTR [eax],al
 8048291:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .rel.dyn:

08048294 <.rel.dyn>:
 8048294:	00 96 04 08 06 01    	add    BYTE PTR [esi+0x1060804],dl
	...

Disassembly of section .rel.plt:

0804829c <.rel.plt>:
 804829c:	10 96 04 08 07 01    	adc    BYTE PTR [esi+0x1070804],dl
 80482a2:	00 00                	add    BYTE PTR [eax],al
 80482a4:	14 96                	adc    al,0x96
 80482a6:	04 08                	add    al,0x8
 80482a8:	07                   	pop    es
 80482a9:	02 00                	add    al,BYTE PTR [eax]
 80482ab:	00 18                	add    BYTE PTR [eax],bl
 80482ad:	96                   	xchg   esi,eax
 80482ae:	04 08                	add    al,0x8
 80482b0:	07                   	pop    es
 80482b1:	03 00                	add    eax,DWORD PTR [eax]
 80482b3:	00 1c 96             	add    BYTE PTR [esi+edx*4],bl
 80482b6:	04 08                	add    al,0x8
 80482b8:	07                   	pop    es
 80482b9:	04 00                	add    al,0x0
	...

Disassembly of section .init:

080482bc <.init>:
 80482bc:	55                   	push   ebp
 80482bd:	89 e5                	mov    ebp,esp
 80482bf:	53                   	push   ebx
 80482c0:	83 ec 04             	sub    esp,0x4
 80482c3:	e8 00 00 00 00       	call   80482c8 <__gmon_start__@plt-0x34>
 80482c8:	5b                   	pop    ebx
 80482c9:	81 c3 3c 13 00 00    	add    ebx,0x133c
 80482cf:	8b 93 fc ff ff ff    	mov    edx,DWORD PTR [ebx-0x4]
 80482d5:	85 d2                	test   edx,edx
 80482d7:	74 05                	je     80482de <__gmon_start__@plt-0x1e>
 80482d9:	e8 1e 00 00 00       	call   80482fc <__gmon_start__@plt>
 80482de:	e8 ed 00 00 00       	call   80483d0 <read@plt+0xa4>
 80482e3:	e8 d8 01 00 00       	call   80484c0 <read@plt+0x194>
 80482e8:	58                   	pop    eax
 80482e9:	5b                   	pop    ebx
 80482ea:	c9                   	leave  
 80482eb:	c3                   	ret    

Disassembly of section .plt:

080482ec <__gmon_start__@plt-0x10>:
 80482ec:	ff 35 08 96 04 08    	push   DWORD PTR ds:0x8049608
 80482f2:	ff 25 0c 96 04 08    	jmp    DWORD PTR ds:0x804960c
 80482f8:	00 00                	add    BYTE PTR [eax],al
	...

080482fc <__gmon_start__@plt>:
 80482fc:	ff 25 10 96 04 08    	jmp    DWORD PTR ds:0x8049610
 8048302:	68 00 00 00 00       	push   0x0
 8048307:	e9 e0 ff ff ff       	jmp    80482ec <__gmon_start__@plt-0x10>

0804830c <write@plt>:
 804830c:	ff 25 14 96 04 08    	jmp    DWORD PTR ds:0x8049614
 8048312:	68 08 00 00 00       	push   0x8
 8048317:	e9 d0 ff ff ff       	jmp    80482ec <__gmon_start__@plt-0x10>

0804831c <__libc_start_main@plt>:
 804831c:	ff 25 18 96 04 08    	jmp    DWORD PTR ds:0x8049618
 8048322:	68 10 00 00 00       	push   0x10
 8048327:	e9 c0 ff ff ff       	jmp    80482ec <__gmon_start__@plt-0x10>

0804832c <read@plt>:
 804832c:	ff 25 1c 96 04 08    	jmp    DWORD PTR ds:0x804961c
 8048332:	68 18 00 00 00       	push   0x18
 8048337:	e9 b0 ff ff ff       	jmp    80482ec <__gmon_start__@plt-0x10>

Disassembly of section .text:

08048340 <.text>:
 8048340:	31 ed                	xor    ebp,ebp
 8048342:	5e                   	pop    esi
 8048343:	89 e1                	mov    ecx,esp
 8048345:	83 e4 f0             	and    esp,0xfffffff0
 8048348:	50                   	push   eax
 8048349:	54                   	push   esp
 804834a:	52                   	push   edx
 804834b:	68 50 84 04 08       	push   0x8048450
 8048350:	68 60 84 04 08       	push   0x8048460
 8048355:	51                   	push   ecx
 8048356:	56                   	push   esi
 8048357:	68 1d 84 04 08       	push   0x804841d
 804835c:	e8 bb ff ff ff       	call   804831c <__libc_start_main@plt>
 8048361:	f4                   	hlt    
 8048362:	90                   	nop
 8048363:	90                   	nop
 8048364:	90                   	nop
 8048365:	90                   	nop
 8048366:	90                   	nop
 8048367:	90                   	nop
 8048368:	90                   	nop
 8048369:	90                   	nop
 804836a:	90                   	nop
 804836b:	90                   	nop
 804836c:	90                   	nop
 804836d:	90                   	nop
 804836e:	90                   	nop
 804836f:	90                   	nop
 8048370:	55                   	push   ebp
 8048371:	89 e5                	mov    ebp,esp
 8048373:	53                   	push   ebx
 8048374:	83 ec 04             	sub    esp,0x4
 8048377:	80 3d 28 96 04 08 00 	cmp    BYTE PTR ds:0x8049628,0x0
 804837e:	75 3f                	jne    80483bf <read@plt+0x93>
 8048380:	a1 2c 96 04 08       	mov    eax,ds:0x804962c
 8048385:	bb 28 95 04 08       	mov    ebx,0x8049528
 804838a:	81 eb 24 95 04 08    	sub    ebx,0x8049524
 8048390:	c1 fb 02             	sar    ebx,0x2
 8048393:	83 eb 01             	sub    ebx,0x1
 8048396:	39 d8                	cmp    eax,ebx
 8048398:	73 1e                	jae    80483b8 <read@plt+0x8c>
 804839a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80483a0:	83 c0 01             	add    eax,0x1
 80483a3:	a3 2c 96 04 08       	mov    ds:0x804962c,eax
 80483a8:	ff 14 85 24 95 04 08 	call   DWORD PTR [eax*4+0x8049524]
 80483af:	a1 2c 96 04 08       	mov    eax,ds:0x804962c
 80483b4:	39 d8                	cmp    eax,ebx
 80483b6:	72 e8                	jb     80483a0 <read@plt+0x74>
 80483b8:	c6 05 28 96 04 08 01 	mov    BYTE PTR ds:0x8049628,0x1
 80483bf:	83 c4 04             	add    esp,0x4
 80483c2:	5b                   	pop    ebx
 80483c3:	5d                   	pop    ebp
 80483c4:	c3                   	ret    
 80483c5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80483c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 80483d0:	55                   	push   ebp
 80483d1:	89 e5                	mov    ebp,esp
 80483d3:	83 ec 18             	sub    esp,0x18
 80483d6:	a1 2c 95 04 08       	mov    eax,ds:0x804952c
 80483db:	85 c0                	test   eax,eax
 80483dd:	74 12                	je     80483f1 <read@plt+0xc5>
 80483df:	b8 00 00 00 00       	mov    eax,0x0
 80483e4:	85 c0                	test   eax,eax
 80483e6:	74 09                	je     80483f1 <read@plt+0xc5>
 80483e8:	c7 04 24 2c 95 04 08 	mov    DWORD PTR [esp],0x804952c
 80483ef:	ff d0                	call   eax
 80483f1:	c9                   	leave  
 80483f2:	c3                   	ret    
 80483f3:	90                   	nop
 80483f4:	55                   	push   ebp
 80483f5:	89 e5                	mov    ebp,esp
 80483f7:	81 ec 98 00 00 00    	sub    esp,0x98
 80483fd:	c7 44 24 08 00 01 00 	mov    DWORD PTR [esp+0x8],0x100
 8048404:	00 
 8048405:	8d 85 78 ff ff ff    	lea    eax,[ebp-0x88]
 804840b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804840f:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8048416:	e8 11 ff ff ff       	call   804832c <read@plt>
 804841b:	c9                   	leave  
 804841c:	c3                   	ret    
 804841d:	55                   	push   ebp
 804841e:	89 e5                	mov    ebp,esp
 8048420:	83 e4 f0             	and    esp,0xfffffff0
 8048423:	83 ec 10             	sub    esp,0x10
 8048426:	e8 c9 ff ff ff       	call   80483f4 <read@plt+0xc8>
 804842b:	c7 44 24 08 04 00 00 	mov    DWORD PTR [esp+0x8],0x4
 8048432:	00 
 8048433:	c7 44 24 04 10 85 04 	mov    DWORD PTR [esp+0x4],0x8048510
 804843a:	08 
 804843b:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048442:	e8 c5 fe ff ff       	call   804830c <write@plt>
 8048447:	c9                   	leave  
 8048448:	c3                   	ret    
 8048449:	90                   	nop
 804844a:	90                   	nop
 804844b:	90                   	nop
 804844c:	90                   	nop
 804844d:	90                   	nop
 804844e:	90                   	nop
 804844f:	90                   	nop
 8048450:	55                   	push   ebp
 8048451:	89 e5                	mov    ebp,esp
 8048453:	5d                   	pop    ebp
 8048454:	c3                   	ret    
 8048455:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048459:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 8048460:	55                   	push   ebp
 8048461:	89 e5                	mov    ebp,esp
 8048463:	57                   	push   edi
 8048464:	56                   	push   esi
 8048465:	53                   	push   ebx
 8048466:	e8 4f 00 00 00       	call   80484ba <read@plt+0x18e>
 804846b:	81 c3 99 11 00 00    	add    ebx,0x1199
 8048471:	83 ec 1c             	sub    esp,0x1c
 8048474:	e8 43 fe ff ff       	call   80482bc <__gmon_start__@plt-0x40>
 8048479:	8d bb 18 ff ff ff    	lea    edi,[ebx-0xe8]
 804847f:	8d 83 18 ff ff ff    	lea    eax,[ebx-0xe8]
 8048485:	29 c7                	sub    edi,eax
 8048487:	c1 ff 02             	sar    edi,0x2
 804848a:	85 ff                	test   edi,edi
 804848c:	74 24                	je     80484b2 <read@plt+0x186>
 804848e:	31 f6                	xor    esi,esi
 8048490:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048493:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048497:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804849a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804849e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80484a1:	89 04 24             	mov    DWORD PTR [esp],eax
 80484a4:	ff 94 b3 18 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe8]
 80484ab:	83 c6 01             	add    esi,0x1
 80484ae:	39 fe                	cmp    esi,edi
 80484b0:	72 de                	jb     8048490 <read@plt+0x164>
 80484b2:	83 c4 1c             	add    esp,0x1c
 80484b5:	5b                   	pop    ebx
 80484b6:	5e                   	pop    esi
 80484b7:	5f                   	pop    edi
 80484b8:	5d                   	pop    ebp
 80484b9:	c3                   	ret    
 80484ba:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80484bd:	c3                   	ret    
 80484be:	90                   	nop
 80484bf:	90                   	nop
 80484c0:	55                   	push   ebp
 80484c1:	89 e5                	mov    ebp,esp
 80484c3:	53                   	push   ebx
 80484c4:	83 ec 04             	sub    esp,0x4
 80484c7:	a1 1c 95 04 08       	mov    eax,ds:0x804951c
 80484cc:	83 f8 ff             	cmp    eax,0xffffffff
 80484cf:	74 13                	je     80484e4 <read@plt+0x1b8>
 80484d1:	bb 1c 95 04 08       	mov    ebx,0x804951c
 80484d6:	66 90                	xchg   ax,ax
 80484d8:	83 eb 04             	sub    ebx,0x4
 80484db:	ff d0                	call   eax
 80484dd:	8b 03                	mov    eax,DWORD PTR [ebx]
 80484df:	83 f8 ff             	cmp    eax,0xffffffff
 80484e2:	75 f4                	jne    80484d8 <read@plt+0x1ac>
 80484e4:	83 c4 04             	add    esp,0x4
 80484e7:	5b                   	pop    ebx
 80484e8:	5d                   	pop    ebp
 80484e9:	c3                   	ret    
 80484ea:	90                   	nop
 80484eb:	90                   	nop

Disassembly of section .fini:

080484ec <.fini>:
 80484ec:	55                   	push   ebp
 80484ed:	89 e5                	mov    ebp,esp
 80484ef:	53                   	push   ebx
 80484f0:	83 ec 04             	sub    esp,0x4
 80484f3:	e8 00 00 00 00       	call   80484f8 <read@plt+0x1cc>
 80484f8:	5b                   	pop    ebx
 80484f9:	81 c3 0c 11 00 00    	add    ebx,0x110c
 80484ff:	e8 6c fe ff ff       	call   8048370 <read@plt+0x44>
 8048504:	59                   	pop    ecx
 8048505:	5b                   	pop    ebx
 8048506:	c9                   	leave  
 8048507:	c3                   	ret    

Disassembly of section .rodata:

08048508 <_IO_stdin_used@@Base-0x4>:
 8048508:	03 00                	add    eax,DWORD PTR [eax]
	...

0804850c <_IO_stdin_used@@Base>:
 804850c:	01 00                	add    DWORD PTR [eax],eax
 804850e:	02 00                	add    al,BYTE PTR [eax]
 8048510:	57                   	push   edi
 8048511:	49                   	dec    ecx
 8048512:	4e                   	dec    esi
 8048513:	0a 00                	or     al,BYTE PTR [eax]

Disassembly of section .eh_frame:

08048518 <.eh_frame>:
 8048518:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .ctors:

0804951c <.ctors>:
 804951c:	ff                   	(bad)  
 804951d:	ff                   	(bad)  
 804951e:	ff                   	(bad)  
 804951f:	ff 00                	inc    DWORD PTR [eax]
 8049521:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .dtors:

08049524 <.dtors>:
 8049524:	ff                   	(bad)  
 8049525:	ff                   	(bad)  
 8049526:	ff                   	(bad)  
 8049527:	ff 00                	inc    DWORD PTR [eax]
 8049529:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .jcr:

0804952c <.jcr>:
 804952c:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .dynamic:

08049530 <.dynamic>:
 8049530:	01 00                	add    DWORD PTR [eax],eax
 8049532:	00 00                	add    BYTE PTR [eax],al
 8049534:	10 00                	adc    BYTE PTR [eax],al
 8049536:	00 00                	add    BYTE PTR [eax],al
 8049538:	0c 00                	or     al,0x0
 804953a:	00 00                	add    BYTE PTR [eax],al
 804953c:	bc 82 04 08 0d       	mov    esp,0xd080482
 8049541:	00 00                	add    BYTE PTR [eax],al
 8049543:	00 ec                	add    ah,ch
 8049545:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
 8049548:	04 00                	add    al,0x0
 804954a:	00 00                	add    BYTE PTR [eax],al
 804954c:	6c                   	ins    BYTE PTR es:[edi],dx
 804954d:	81 04 08 f5 fe ff 6f 	add    DWORD PTR [eax+ecx*1],0x6ffffef5
 8049554:	98                   	cwde   
 8049555:	81 04 08 05 00 00 00 	add    DWORD PTR [eax+ecx*1],0x5
 804955c:	18 82 04 08 06 00    	sbb    BYTE PTR [edx+0x60804],al
 8049562:	00 00                	add    BYTE PTR [eax],al
 8049564:	b8 81 04 08 0a       	mov    eax,0xa080481
 8049569:	00 00                	add    BYTE PTR [eax],al
 804956b:	00 50 00             	add    BYTE PTR [eax+0x0],dl
 804956e:	00 00                	add    BYTE PTR [eax],al
 8049570:	0b 00                	or     eax,DWORD PTR [eax]
 8049572:	00 00                	add    BYTE PTR [eax],al
 8049574:	10 00                	adc    BYTE PTR [eax],al
 8049576:	00 00                	add    BYTE PTR [eax],al
 8049578:	15 00 00 00 00       	adc    eax,0x0
 804957d:	00 00                	add    BYTE PTR [eax],al
 804957f:	00 03                	add    BYTE PTR [ebx],al
 8049581:	00 00                	add    BYTE PTR [eax],al
 8049583:	00 04 96             	add    BYTE PTR [esi+edx*4],al
 8049586:	04 08                	add    al,0x8
 8049588:	02 00                	add    al,BYTE PTR [eax]
 804958a:	00 00                	add    BYTE PTR [eax],al
 804958c:	20 00                	and    BYTE PTR [eax],al
 804958e:	00 00                	add    BYTE PTR [eax],al
 8049590:	14 00                	adc    al,0x0
 8049592:	00 00                	add    BYTE PTR [eax],al
 8049594:	11 00                	adc    DWORD PTR [eax],eax
 8049596:	00 00                	add    BYTE PTR [eax],al
 8049598:	17                   	pop    ss
 8049599:	00 00                	add    BYTE PTR [eax],al
 804959b:	00 9c 82 04 08 11 00 	add    BYTE PTR [edx+eax*4+0x110804],bl
 80495a2:	00 00                	add    BYTE PTR [eax],al
 80495a4:	94                   	xchg   esp,eax
 80495a5:	82                   	(bad)  
 80495a6:	04 08                	add    al,0x8
 80495a8:	12 00                	adc    al,BYTE PTR [eax]
 80495aa:	00 00                	add    BYTE PTR [eax],al
 80495ac:	08 00                	or     BYTE PTR [eax],al
 80495ae:	00 00                	add    BYTE PTR [eax],al
 80495b0:	13 00                	adc    eax,DWORD PTR [eax]
 80495b2:	00 00                	add    BYTE PTR [eax],al
 80495b4:	08 00                	or     BYTE PTR [eax],al
 80495b6:	00 00                	add    BYTE PTR [eax],al
 80495b8:	fe                   	(bad)  
 80495b9:	ff                   	(bad)  
 80495ba:	ff 6f 74             	jmp    FWORD PTR [edi+0x74]
 80495bd:	82                   	(bad)  
 80495be:	04 08                	add    al,0x8
 80495c0:	ff                   	(bad)  
 80495c1:	ff                   	(bad)  
 80495c2:	ff 6f 01             	jmp    FWORD PTR [edi+0x1]
 80495c5:	00 00                	add    BYTE PTR [eax],al
 80495c7:	00 f0                	add    al,dh
 80495c9:	ff                   	(bad)  
 80495ca:	ff 6f 68             	jmp    FWORD PTR [edi+0x68]
 80495cd:	82                   	(bad)  
 80495ce:	04 08                	add    al,0x8
	...

Disassembly of section .got:

08049600 <.got>:
 8049600:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .got.plt:

08049604 <.got.plt>:
 8049604:	30 95 04 08 00 00    	xor    BYTE PTR [ebp+0x804],dl
 804960a:	00 00                	add    BYTE PTR [eax],al
 804960c:	00 00                	add    BYTE PTR [eax],al
 804960e:	00 00                	add    BYTE PTR [eax],al
 8049610:	02 83 04 08 12 83    	add    al,BYTE PTR [ebx-0x7cedf7fc]
 8049616:	04 08                	add    al,0x8
 8049618:	22 83 04 08 32 83    	and    al,BYTE PTR [ebx-0x7ccdf7fc]
 804961e:	04 08                	add    al,0x8

Disassembly of section .data:

08049620 <.data>:
	...

Disassembly of section .bss:

08049628 <.bss>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 44 65 62          	sub    BYTE PTR [ebp+eiz*2+0x62],al
   9:	69 61 6e 20 34 2e 34 	imul   esp,DWORD PTR [ecx+0x6e],0x342e3420
  10:	2e 35 2d 38 29 20    	cs xor eax,0x2029382d
  16:	34 2e                	xor    al,0x2e
  18:	34 2e                	xor    al,0x2e
  1a:	35                   	.byte 0x35
	...
