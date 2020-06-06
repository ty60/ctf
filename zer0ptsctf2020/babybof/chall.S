
./chall:     file format elf64-x86-64


Disassembly of section .interp:

00000000004001c8 <.interp>:
  4001c8:	2f                   	(bad)  
  4001c9:	6c                   	ins    BYTE PTR es:[rdi],dx
  4001ca:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  4001d1:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  4001d6:	78 2d                	js     400205 <.plt-0x1eb>
  4001d8:	78 38                	js     400212 <.plt-0x1de>
  4001da:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
  4001e0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4001e1:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .hash:

00000000004001e8 <.hash>:
  4001e8:	03 00                	add    eax,DWORD PTR [rax]
  4001ea:	00 00                	add    BYTE PTR [rax],al
  4001ec:	07                   	(bad)  
  4001ed:	00 00                	add    BYTE PTR [rax],al
  4001ef:	00 06                	add    BYTE PTR [rsi],al
  4001f1:	00 00                	add    BYTE PTR [rax],al
  4001f3:	00 03                	add    BYTE PTR [rbx],al
	...
  400201:	00 00                	add    BYTE PTR [rax],al
  400203:	00 01                	add    BYTE PTR [rcx],al
  400205:	00 00                	add    BYTE PTR [rax],al
  400207:	00 02                	add    BYTE PTR [rdx],al
  400209:	00 00                	add    BYTE PTR [rax],al
  40020b:	00 00                	add    BYTE PTR [rax],al
  40020d:	00 00                	add    BYTE PTR [rax],al
  40020f:	00 04 00             	add    BYTE PTR [rax+rax*1],al
  400212:	00 00                	add    BYTE PTR [rax],al
  400214:	05                   	.byte 0x5
  400215:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

0000000000400218 <.gnu.hash>:
  400218:	03 00                	add    eax,DWORD PTR [rax]
  40021a:	00 00                	add    BYTE PTR [rax],al
  40021c:	04 00                	add    al,0x0
  40021e:	00 00                	add    BYTE PTR [rax],al
  400220:	01 00                	add    DWORD PTR [rax],eax
  400222:	00 00                	add    BYTE PTR [rax],al
  400224:	06                   	(bad)  
  400225:	00 00                	add    BYTE PTR [rax],al
  400227:	00 00                	add    BYTE PTR [rax],al
  400229:	01 20                	add    DWORD PTR [rax],esp
  40022b:	00 80 01 10 02 04    	add    BYTE PTR [rax+0x4021001],al
  400231:	00 00                	add    BYTE PTR [rax],al
  400233:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400239 <.plt-0x1b7>
  400239:	00 00                	add    BYTE PTR [rax],al
  40023b:	00 29                	add    BYTE PTR [rcx],ch
  40023d:	1d 8c 1c 66 55       	sbb    eax,0x55661c8c
  400242:	61                   	(bad)  
  400243:	10 39                	adc    BYTE PTR [rcx],bh
  400245:	f2                   	repnz
  400246:	8b                   	.byte 0x8b
  400247:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

0000000000400248 <.dynsym>:
	...
  400260:	15 00 00 00 12       	adc    eax,0x12000000
	...
  400275:	00 00                	add    BYTE PTR [rax],al
  400277:	00 0b                	add    BYTE PTR [rbx],cl
  400279:	00 00                	add    BYTE PTR [rax],al
  40027b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40028d:	00 00                	add    BYTE PTR [rax],al
  40028f:	00 10                	add    BYTE PTR [rax],dl
  400291:	00 00                	add    BYTE PTR [rax],al
  400293:	00 12                	add    BYTE PTR [rdx],dl
	...
  4002a5:	00 00                	add    BYTE PTR [rax],al
  4002a7:	00 22                	add    BYTE PTR [rdx],ah
  4002a9:	00 00                	add    BYTE PTR [rax],al
  4002ab:	00 11                	add    BYTE PTR [rcx],dl
  4002ad:	00 0f                	add    BYTE PTR [rdi],cl
  4002af:	00 20                	add    BYTE PTR [rax],ah
  4002b1:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4002b4:	00 00                	add    BYTE PTR [rax],al
  4002b6:	00 00                	add    BYTE PTR [rax],al
  4002b8:	08 00                	or     BYTE PTR [rax],al
  4002ba:	00 00                	add    BYTE PTR [rax],al
  4002bc:	00 00                	add    BYTE PTR [rax],al
  4002be:	00 00                	add    BYTE PTR [rax],al
  4002c0:	1c 00                	sbb    al,0x0
  4002c2:	00 00                	add    BYTE PTR [rax],al
  4002c4:	11 00                	adc    DWORD PTR [rax],eax
  4002c6:	0f 00                	(bad)  
  4002c8:	30 10                	xor    BYTE PTR [rax],dl
  4002ca:	60                   	(bad)  
  4002cb:	00 00                	add    BYTE PTR [rax],al
  4002cd:	00 00                	add    BYTE PTR [rax],al
  4002cf:	00 08                	add    BYTE PTR [rax],cl
  4002d1:	00 00                	add    BYTE PTR [rax],al
  4002d3:	00 00                	add    BYTE PTR [rax],al
  4002d5:	00 00                	add    BYTE PTR [rax],al
  4002d7:	00 29                	add    BYTE PTR [rcx],ch
  4002d9:	00 00                	add    BYTE PTR [rax],al
  4002db:	00 11                	add    BYTE PTR [rcx],dl
  4002dd:	00 0f                	add    BYTE PTR [rdi],cl
  4002df:	00 40 10             	add    BYTE PTR [rax+0x10],al
  4002e2:	60                   	(bad)  
  4002e3:	00 00                	add    BYTE PTR [rax],al
  4002e5:	00 00                	add    BYTE PTR [rax],al
  4002e7:	00 08                	add    BYTE PTR [rax],cl
  4002e9:	00 00                	add    BYTE PTR [rax],al
  4002eb:	00 00                	add    BYTE PTR [rax],al
  4002ed:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000004002f0 <.dynstr>:
  4002f0:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4002f4:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4002f6:	73 6f                	jae    400367 <.plt-0x89>
  4002f8:	2e 36 00 72 65       	cs add BYTE PTR ss:[rdx+0x65],dh
  4002fd:	61                   	(bad)  
  4002fe:	64 00 65 78          	add    BYTE PTR fs:[rbp+0x78],ah
  400302:	69 74 00 73 65 74 62 	imul   esi,DWORD PTR [rax+rax*1+0x73],0x75627465
  400309:	75 
  40030a:	66 00 73 74          	data16 add BYTE PTR [rbx+0x74],dh
  40030e:	64 69 6e 00 73 74 64 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x6f647473
  400315:	6f 
  400316:	75 74                	jne    40038c <.plt-0x64>
  400318:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  40031b:	64 65 72 72          	fs gs jb 400391 <.plt-0x5f>
  40031f:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
  400322:	49                   	rex.WB
  400323:	42                   	rex.X
  400324:	43 5f                	rex.XB pop r15
  400326:	32 2e                	xor    ch,BYTE PTR [rsi]
  400328:	32 2e                	xor    ch,BYTE PTR [rsi]
  40032a:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040032c <.gnu.version>:
  40032c:	00 00                	add    BYTE PTR [rax],al
  40032e:	02 00                	add    al,BYTE PTR [rax]
  400330:	02 00                	add    al,BYTE PTR [rax]
  400332:	02 00                	add    al,BYTE PTR [rax]
  400334:	02 00                	add    al,BYTE PTR [rax]
  400336:	02 00                	add    al,BYTE PTR [rax]
  400338:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400340 <.gnu.version_r>:
  400340:	01 00                	add    DWORD PTR [rax],eax
  400342:	01 00                	add    DWORD PTR [rax],eax
  400344:	01 00                	add    DWORD PTR [rax],eax
  400346:	00 00                	add    BYTE PTR [rax],al
  400348:	10 00                	adc    BYTE PTR [rax],al
  40034a:	00 00                	add    BYTE PTR [rax],al
  40034c:	00 00                	add    BYTE PTR [rax],al
  40034e:	00 00                	add    BYTE PTR [rax],al
  400350:	75 1a                	jne    40036c <.plt-0x84>
  400352:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400358:	30 00                	xor    BYTE PTR [rax],al
  40035a:	00 00                	add    BYTE PTR [rax],al
  40035c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400360 <.rela.dyn>:
  400360:	20 10                	and    BYTE PTR [rax],dl
  400362:	60                   	(bad)  
  400363:	00 00                	add    BYTE PTR [rax],al
  400365:	00 00                	add    BYTE PTR [rax],al
  400367:	00 05 00 00 00 04    	add    BYTE PTR [rip+0x4000000],al        # 440036d <_end+0x3dff325>
	...
  400375:	00 00                	add    BYTE PTR [rax],al
  400377:	00 30                	add    BYTE PTR [rax],dh
  400379:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  40037c:	00 00                	add    BYTE PTR [rax],al
  40037e:	00 00                	add    BYTE PTR [rax],al
  400380:	05 00 00 00 05       	add    eax,0x5000000
	...
  40038d:	00 00                	add    BYTE PTR [rax],al
  40038f:	00 40 10             	add    BYTE PTR [rax+0x10],al
  400392:	60                   	(bad)  
  400393:	00 00                	add    BYTE PTR [rax],al
  400395:	00 00                	add    BYTE PTR [rax],al
  400397:	00 05 00 00 00 06    	add    BYTE PTR [rip+0x6000000],al        # 640039d <_end+0x5dff355>
	...

Disassembly of section .rela.plt:

00000000004003a8 <.rela.plt>:
  4003a8:	e8 0f 60 00 00       	call   4063bc <_gift+0x5f21>
  4003ad:	00 00                	add    BYTE PTR [rax],al
  4003af:	00 07                	add    BYTE PTR [rdi],al
  4003b1:	00 00                	add    BYTE PTR [rax],al
  4003b3:	00 01                	add    BYTE PTR [rcx],al
	...
  4003bd:	00 00                	add    BYTE PTR [rax],al
  4003bf:	00 f0                	add    al,dh
  4003c1:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  4003c4:	00 00                	add    BYTE PTR [rax],al
  4003c6:	00 00                	add    BYTE PTR [rax],al
  4003c8:	07                   	(bad)  
  4003c9:	00 00                	add    BYTE PTR [rax],al
  4003cb:	00 02                	add    BYTE PTR [rdx],al
	...
  4003d5:	00 00                	add    BYTE PTR [rax],al
  4003d7:	00 f8                	add    al,bh
  4003d9:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  4003dc:	00 00                	add    BYTE PTR [rax],al
  4003de:	00 00                	add    BYTE PTR [rax],al
  4003e0:	07                   	(bad)  
  4003e1:	00 00                	add    BYTE PTR [rax],al
  4003e3:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .plt:

00000000004003f0 <.plt>:
  4003f0:	ff 35 e2 0b 20 00    	push   QWORD PTR [rip+0x200be2]        # 600fd8 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003f6:	ff 25 e4 0b 20 00    	jmp    QWORD PTR [rip+0x200be4]        # 600fe0 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400400 <setbuf@plt>:
  400400:	ff 25 e2 0b 20 00    	jmp    QWORD PTR [rip+0x200be2]        # 600fe8 <setbuf@GLIBC_2.2.5>
  400406:	68 00 00 00 00       	push   0x0
  40040b:	e9 e0 ff ff ff       	jmp    4003f0 <.plt>

0000000000400410 <read@plt>:
  400410:	ff 25 da 0b 20 00    	jmp    QWORD PTR [rip+0x200bda]        # 600ff0 <read@GLIBC_2.2.5>
  400416:	68 01 00 00 00       	push   0x1
  40041b:	e9 d0 ff ff ff       	jmp    4003f0 <.plt>

0000000000400420 <exit@plt>:
  400420:	ff 25 d2 0b 20 00    	jmp    QWORD PTR [rip+0x200bd2]        # 600ff8 <exit@GLIBC_2.2.5>
  400426:	68 02 00 00 00       	push   0x2
  40042b:	e9 c0 ff ff ff       	jmp    4003f0 <.plt>

Disassembly of section .text:

0000000000400430 <_start>:
  400430:	e8 0a 00 00 00       	call   40043f <setup>
  400435:	e8 44 00 00 00       	call   40047e <main>
  40043a:	e8 e1 ff ff ff       	call   400420 <exit@plt>

000000000040043f <setup>:
  40043f:	55                   	push   rbp
  400440:	48 89 e5             	mov    rbp,rsp
  400443:	48 31 f6             	xor    rsi,rsi
  400446:	48 b8 30 10 60 00 00 	movabs rax,0x601030
  40044d:	00 00 00 
  400450:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  400453:	e8 a8 ff ff ff       	call   400400 <setbuf@plt>
  400458:	48 b8 20 10 60 00 00 	movabs rax,0x601020
  40045f:	00 00 00 
  400462:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  400465:	e8 96 ff ff ff       	call   400400 <setbuf@plt>
  40046a:	48 b8 40 10 60 00 00 	movabs rax,0x601040
  400471:	00 00 00 
  400474:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  400477:	e8 84 ff ff ff       	call   400400 <setbuf@plt>
  40047c:	5d                   	pop    rbp
  40047d:	c3                   	ret    

000000000040047e <main>:
  40047e:	55                   	push   rbp
  40047f:	48 89 e5             	mov    rbp,rsp
  400482:	48 83 ec 20          	sub    rsp,0x20
  400486:	ba 00 02 00 00       	mov    edx,0x200
  40048b:	48 8d 75 e0          	lea    rsi,[rbp-0x20]
  40048f:	bf 00 00 00 00       	mov    edi,0x0
  400494:	e8 77 ff ff ff       	call   400410 <read@plt>
  400499:	c9                   	leave  
  40049a:	c3                   	ret    

000000000040049b <_gift>:
  40049b:	41 5f                	pop    r15
  40049d:	c3                   	ret    
  40049e:	5e                   	pop    rsi
  40049f:	c3                   	ret    

Disassembly of section .dynamic:

0000000000600e30 <_DYNAMIC>:
  600e30:	01 00                	add    DWORD PTR [rax],eax
  600e32:	00 00                	add    BYTE PTR [rax],al
  600e34:	00 00                	add    BYTE PTR [rax],al
  600e36:	00 00                	add    BYTE PTR [rax],al
  600e38:	01 00                	add    DWORD PTR [rax],eax
  600e3a:	00 00                	add    BYTE PTR [rax],al
  600e3c:	00 00                	add    BYTE PTR [rax],al
  600e3e:	00 00                	add    BYTE PTR [rax],al
  600e40:	04 00                	add    al,0x0
  600e42:	00 00                	add    BYTE PTR [rax],al
  600e44:	00 00                	add    BYTE PTR [rax],al
  600e46:	00 00                	add    BYTE PTR [rax],al
  600e48:	e8 01 40 00 00       	call   604e4e <_end+0x3e06>
  600e4d:	00 00                	add    BYTE PTR [rax],al
  600e4f:	00 f5                	add    ch,dh
  600e51:	fe                   	(bad)  
  600e52:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600e55:	00 00                	add    BYTE PTR [rax],al
  600e57:	00 18                	add    BYTE PTR [rax],bl
  600e59:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  600e5c:	00 00                	add    BYTE PTR [rax],al
  600e5e:	00 00                	add    BYTE PTR [rax],al
  600e60:	05 00 00 00 00       	add    eax,0x0
  600e65:	00 00                	add    BYTE PTR [rax],al
  600e67:	00 f0                	add    al,dh
  600e69:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  600e6c:	00 00                	add    BYTE PTR [rax],al
  600e6e:	00 00                	add    BYTE PTR [rax],al
  600e70:	06                   	(bad)  
  600e71:	00 00                	add    BYTE PTR [rax],al
  600e73:	00 00                	add    BYTE PTR [rax],al
  600e75:	00 00                	add    BYTE PTR [rax],al
  600e77:	00 48 02             	add    BYTE PTR [rax+0x2],cl
  600e7a:	40 00 00             	add    BYTE PTR [rax],al
  600e7d:	00 00                	add    BYTE PTR [rax],al
  600e7f:	00 0a                	add    BYTE PTR [rdx],cl
  600e81:	00 00                	add    BYTE PTR [rax],al
  600e83:	00 00                	add    BYTE PTR [rax],al
  600e85:	00 00                	add    BYTE PTR [rax],al
  600e87:	00 3c 00             	add    BYTE PTR [rax+rax*1],bh
  600e8a:	00 00                	add    BYTE PTR [rax],al
  600e8c:	00 00                	add    BYTE PTR [rax],al
  600e8e:	00 00                	add    BYTE PTR [rax],al
  600e90:	0b 00                	or     eax,DWORD PTR [rax]
  600e92:	00 00                	add    BYTE PTR [rax],al
  600e94:	00 00                	add    BYTE PTR [rax],al
  600e96:	00 00                	add    BYTE PTR [rax],al
  600e98:	18 00                	sbb    BYTE PTR [rax],al
  600e9a:	00 00                	add    BYTE PTR [rax],al
  600e9c:	00 00                	add    BYTE PTR [rax],al
  600e9e:	00 00                	add    BYTE PTR [rax],al
  600ea0:	15 00 00 00 00       	adc    eax,0x0
	...
  600ead:	00 00                	add    BYTE PTR [rax],al
  600eaf:	00 03                	add    BYTE PTR [rbx],al
  600eb1:	00 00                	add    BYTE PTR [rax],al
  600eb3:	00 00                	add    BYTE PTR [rax],al
  600eb5:	00 00                	add    BYTE PTR [rax],al
  600eb7:	00 d0                	add    al,dl
  600eb9:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  600ebc:	00 00                	add    BYTE PTR [rax],al
  600ebe:	00 00                	add    BYTE PTR [rax],al
  600ec0:	02 00                	add    al,BYTE PTR [rax]
  600ec2:	00 00                	add    BYTE PTR [rax],al
  600ec4:	00 00                	add    BYTE PTR [rax],al
  600ec6:	00 00                	add    BYTE PTR [rax],al
  600ec8:	48 00 00             	rex.W add BYTE PTR [rax],al
  600ecb:	00 00                	add    BYTE PTR [rax],al
  600ecd:	00 00                	add    BYTE PTR [rax],al
  600ecf:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  600ed2:	00 00                	add    BYTE PTR [rax],al
  600ed4:	00 00                	add    BYTE PTR [rax],al
  600ed6:	00 00                	add    BYTE PTR [rax],al
  600ed8:	07                   	(bad)  
  600ed9:	00 00                	add    BYTE PTR [rax],al
  600edb:	00 00                	add    BYTE PTR [rax],al
  600edd:	00 00                	add    BYTE PTR [rax],al
  600edf:	00 17                	add    BYTE PTR [rdi],dl
  600ee1:	00 00                	add    BYTE PTR [rax],al
  600ee3:	00 00                	add    BYTE PTR [rax],al
  600ee5:	00 00                	add    BYTE PTR [rax],al
  600ee7:	00 a8 03 40 00 00    	add    BYTE PTR [rax+0x4003],ch
  600eed:	00 00                	add    BYTE PTR [rax],al
  600eef:	00 07                	add    BYTE PTR [rdi],al
  600ef1:	00 00                	add    BYTE PTR [rax],al
  600ef3:	00 00                	add    BYTE PTR [rax],al
  600ef5:	00 00                	add    BYTE PTR [rax],al
  600ef7:	00 60 03             	add    BYTE PTR [rax+0x3],ah
  600efa:	40 00 00             	add    BYTE PTR [rax],al
  600efd:	00 00                	add    BYTE PTR [rax],al
  600eff:	00 08                	add    BYTE PTR [rax],cl
  600f01:	00 00                	add    BYTE PTR [rax],al
  600f03:	00 00                	add    BYTE PTR [rax],al
  600f05:	00 00                	add    BYTE PTR [rax],al
  600f07:	00 48 00             	add    BYTE PTR [rax+0x0],cl
  600f0a:	00 00                	add    BYTE PTR [rax],al
  600f0c:	00 00                	add    BYTE PTR [rax],al
  600f0e:	00 00                	add    BYTE PTR [rax],al
  600f10:	09 00                	or     DWORD PTR [rax],eax
  600f12:	00 00                	add    BYTE PTR [rax],al
  600f14:	00 00                	add    BYTE PTR [rax],al
  600f16:	00 00                	add    BYTE PTR [rax],al
  600f18:	18 00                	sbb    BYTE PTR [rax],al
  600f1a:	00 00                	add    BYTE PTR [rax],al
  600f1c:	00 00                	add    BYTE PTR [rax],al
  600f1e:	00 00                	add    BYTE PTR [rax],al
  600f20:	1e                   	(bad)  
  600f21:	00 00                	add    BYTE PTR [rax],al
  600f23:	00 00                	add    BYTE PTR [rax],al
  600f25:	00 00                	add    BYTE PTR [rax],al
  600f27:	00 08                	add    BYTE PTR [rax],cl
  600f29:	00 00                	add    BYTE PTR [rax],al
  600f2b:	00 00                	add    BYTE PTR [rax],al
  600f2d:	00 00                	add    BYTE PTR [rax],al
  600f2f:	00 fb                	add    bl,bh
  600f31:	ff                   	(bad)  
  600f32:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f35:	00 00                	add    BYTE PTR [rax],al
  600f37:	00 01                	add    BYTE PTR [rcx],al
  600f39:	00 00                	add    BYTE PTR [rax],al
  600f3b:	00 00                	add    BYTE PTR [rax],al
  600f3d:	00 00                	add    BYTE PTR [rax],al
  600f3f:	00 fe                	add    dh,bh
  600f41:	ff                   	(bad)  
  600f42:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f45:	00 00                	add    BYTE PTR [rax],al
  600f47:	00 40 03             	add    BYTE PTR [rax+0x3],al
  600f4a:	40 00 00             	add    BYTE PTR [rax],al
  600f4d:	00 00                	add    BYTE PTR [rax],al
  600f4f:	00 ff                	add    bh,bh
  600f51:	ff                   	(bad)  
  600f52:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f55:	00 00                	add    BYTE PTR [rax],al
  600f57:	00 01                	add    BYTE PTR [rcx],al
  600f59:	00 00                	add    BYTE PTR [rax],al
  600f5b:	00 00                	add    BYTE PTR [rax],al
  600f5d:	00 00                	add    BYTE PTR [rax],al
  600f5f:	00 f0                	add    al,dh
  600f61:	ff                   	(bad)  
  600f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f65:	00 00                	add    BYTE PTR [rax],al
  600f67:	00 2c 03             	add    BYTE PTR [rbx+rax*1],ch
  600f6a:	40 00 00             	add    BYTE PTR [rax],al
	...

Disassembly of section .got:

0000000000600fd0 <_GLOBAL_OFFSET_TABLE_>:
  600fd0:	30 0e                	xor    BYTE PTR [rsi],cl
  600fd2:	60                   	(bad)  
	...
  600fe7:	00 06                	add    BYTE PTR [rsi],al
  600fe9:	04 40                	add    al,0x40
  600feb:	00 00                	add    BYTE PTR [rax],al
  600fed:	00 00                	add    BYTE PTR [rax],al
  600fef:	00 16                	add    BYTE PTR [rsi],dl
  600ff1:	04 40                	add    al,0x40
  600ff3:	00 00                	add    BYTE PTR [rax],al
  600ff5:	00 00                	add    BYTE PTR [rax],al
  600ff7:	00 26                	add    BYTE PTR [rsi],ah
  600ff9:	04 40                	add    al,0x40
  600ffb:	00 00                	add    BYTE PTR [rax],al
  600ffd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000601010 <__bss_start+0x10>:
	...

0000000000601020 <stdout@@GLIBC_2.2.5>:
	...

0000000000601030 <stdin@@GLIBC_2.2.5>:
	...

0000000000601040 <stderr@@GLIBC_2.2.5>:
	...
