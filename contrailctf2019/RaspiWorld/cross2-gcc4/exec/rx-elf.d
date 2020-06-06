
rx-elf.x:     file format elf32-rx-le


Disassembly of section .text:

00001400 <_start>:
    1400:	fb 02 10 1c 00 00             	mov.l	#0x1c10, r0
    1406:	05 b3 00 00                   	bsr.a	14b9 <_main>

0000140a <___exit>:
    140a:	66 15                         	mov.l	#1, r5
    140c:	75 60 ff                      	int #255
    140f:	02                            	rts

00001410 <___read>:
    1410:	66 45                         	mov.l	#4, r5
    1412:	75 60 ff                      	int #255
    1415:	02                            	rts

00001416 <___write>:
    1416:	66 55                         	mov.l	#5, r5
    1418:	75 60 ff                      	int #255
    141b:	02                            	rts

0000141c <___open>:
    141c:	66 25                         	mov.l	#2, r5
    141e:	75 60 ff                      	int #255
    1421:	02                            	rts

00001422 <___close>:
    1422:	66 35                         	mov.l	#3, r5
    1424:	75 60 ff                      	int #255
    1427:	02                            	rts

Disassembly of section P:

00001428 <_exit>:
    1428:	05 e2 ff ff                   	bsr.a	140a <___exit>

0000142c <_write1>:
    142c:	60 40                         	sub	#4, r0
    142e:	c3 02                         	mov.b	r2, [r0]

00001430 <.LM4>:
    1430:	ef 02                         	mov.l	r0, r2
    1432:	66 13                         	mov.l	#1, r3
    1434:	05 e2 ff ff                   	bsr.a	1416 <___write>

00001438 <.LM5>:
    1438:	67 01                         	rtsd	#4

0000143a <_putchar>:
    143a:	7e a7                         	push.l	r7
    143c:	ef 27                         	mov.l	r2, r7

0000143e <.LM7>:
    143e:	05 ee ff ff                   	bsr.a	142c <_write1>

00001442 <.LM8>:
    1442:	ef 71                         	mov.l	r7, r1
    1444:	3f 77 01                      	rtsd	#4, r7-r7

00001447 <_puts>:
    1447:	6e 7b                         	pushm	r7-r11

00001449 <.LM10>:
    1449:	cc 2e                         	mov.b	[r2], r14
    144b:	5b e7                         	movu.b	r14, r7
    144d:	61 07                         	cmp	#0, r7
    144f:	20 1d                         	beq.b	146c <.LM15>
    1451:	ef 1a                         	mov.l	r1, r10

00001453 <.LM11>:
    1453:	71 27 01                      	add	#1, r2, r7

00001456 <.LM12>:
    1456:	fb b2 3a 14 00 00             	mov.l	#0x143a, r11

0000145c <.LM13>:
    145c:	ef a1                         	mov.l	r10, r1
    145e:	5b e2                         	movu.b	r14, r2
    1460:	7f 1b                         	jsr	r11

00001462 <.LM14>:
    1462:	fd 28 7e                      	mov.b	[r7+], r14
    1465:	5b e4                         	movu.b	r14, r4
    1467:	61 04                         	cmp	#0, r4
    1469:	21 f3                         	bne.b	145c <.LM13>
    146b:	03                            	nop

0000146c <.LM15>:
    146c:	66 01                         	mov.l	#0, r1
    146e:	3f 7b 05                      	rtsd	#20, r7-r11

00001471 <_putxval>:
    1471:	71 00 ec                      	add	#-20, r0, r0

00001474 <.LM17>:
    1474:	3c 80 00                      	mov.b	#0, 16[r0]

00001477 <.LM18>:
    1477:	61 02                         	cmp	#0, r2
    1479:	1f                            	bne.s	1480 <.LM21>

0000147a <.LM19>:
    147a:	61 03                         	cmp	#0, r3
    147c:	1c                            	bne.s	1480 <.LM21>

0000147d <.LM20>:
    147d:	66 13                         	mov.l	#1, r3
    147f:	03                            	nop

00001480 <.LM21>:
    1480:	71 0e 0e                      	add	#14, r0, r14

00001483 <.LM22>:
    1483:	fb 52 ec 14 00 00             	mov.l	#0x14ec, r5
    1489:	2e 15                         	bra.b	149e <.LM27>

0000148b <.LM23>:
    148b:	ef 24                         	mov.l	r2, r4
    148d:	64 f4                         	and	#15, r4
    148f:	fe 44 54                      	mov.b	[r4, r5], r4
    1492:	c7 e4 01                      	mov.b	r4, 1[r14]

00001495 <.LM24>:
    1495:	68 42                         	shlr	#4, r2

00001497 <.LM25>:
    1497:	61 03                         	cmp	#0, r3
    1499:	13                            	beq.s	149c <.LM26+0x2>

0000149a <.LM26>:
    149a:	60 13                         	sub	#1, r3
    149c:	60 1e                         	sub	#1, r14

0000149e <.LM27>:
    149e:	71 e4 01                      	add	#1, r14, r4

000014a1 <.LM28>:
    14a1:	61 02                         	cmp	#0, r2
    14a3:	21 e8                         	bne.b	148b <.LM23>

000014a5 <.LM29>:
    14a5:	61 03                         	cmp	#0, r3
    14a7:	17                            	beq.s	14ae <.LM31>

000014a8 <.LM30>:
    14a8:	f9 e4 01 30                   	mov.b	#48, 1[r14]
    14ac:	2e ee                         	bra.b	149a <.LM26>

000014ae <.LM31>:
    14ae:	71 42 01                      	add	#1, r4, r2
    14b1:	05 96 ff ff                   	bsr.a	1447 <_puts>

000014b5 <.LM32>:
    14b5:	66 01                         	mov.l	#0, r1
    14b7:	67 05                         	rtsd	#20

000014b9 <_main>:
    14b9:	7e a7                         	push.l	r7

000014bb <.LM34>:
    14bb:	fb 72 47 14 00 00             	mov.l	#0x1447, r7
    14c1:	66 11                         	mov.l	#1, r1
    14c3:	fb 22 fd 14 00 00             	mov.l	#0x14fd, r2
    14c9:	7f 17                         	jsr	r7

000014cb <.LM35>:
    14cb:	66 11                         	mov.l	#1, r1
    14cd:	fb e2 00 18 00 00             	mov.l	#0x1800, r14
    14d3:	ec e2                         	mov.l	[r14], r2
    14d5:	66 03                         	mov.l	#0, r3
    14d7:	05 9a ff ff                   	bsr.a	1471 <_putxval>

000014db <.LM36>:
    14db:	66 11                         	mov.l	#1, r1
    14dd:	fb 22 0b 15 00 00             	mov.l	#0x150b, r2
    14e3:	7f 17                         	jsr	r7

000014e5 <.LM37>:
    14e5:	66 01                         	mov.l	#0, r1
    14e7:	05 41 ff ff                   	bsr.a	1428 <_exit>

000014eb <.LFE5>:
    14eb:	03                            	nop
