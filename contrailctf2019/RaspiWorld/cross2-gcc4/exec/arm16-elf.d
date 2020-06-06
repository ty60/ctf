
arm16-elf.x:     file format elf32-littlearm


Disassembly of section .text:

00001400 <_start>:
    1400:	e51ff004 	ldr	pc, [pc, #-4]	; 1404 <_thumb_addr>

00001404 <_thumb_addr>:
    1404:	00001409 	.word	0x00001409

00001408 <_thumb_start>:
    1408:	480d      	ldr	r0, [pc, #52]	; (1440 <_stack_addr>)
    140a:	4685      	mov	sp, r0
    140c:	f000 f876 	bl	14fc <main>
    1410:	f000 e800 	blx	1414 <__exit>

00001414 <__exit>:
    1414:	ef000011 	svc	0x00000011
    1418:	e12fff1e 	bx	lr

0000141c <__read>:
    141c:	ef00006a 	svc	0x0000006a
    1420:	e12fff1e 	bx	lr

00001424 <__write>:
    1424:	ef000069 	svc	0x00000069
    1428:	e12fff1e 	bx	lr

0000142c <__open>:
    142c:	e3b01006 	movs	r1, #6
    1430:	ef000066 	svc	0x00000066
    1434:	e12fff1e 	bx	lr

00001438 <__close>:
    1438:	ef000068 	svc	0x00000068
    143c:	e12fff1e 	bx	lr

00001440 <_stack_addr>:
    1440:	00001c10 	.word	0x00001c10
    1444:	e1a00000 	nop			; (mov r0, r0)
    1448:	e1a00000 	nop			; (mov r0, r0)
    144c:	e1a00000 	nop			; (mov r0, r0)

00001450 <exit>:
    1450:	b500      	push	{lr}
    1452:	f000 f871 	bl	1538 <____exit_from_thumb>
    1456:	46c0      	nop			; (mov r8, r8)

00001458 <write1>:
    1458:	b500      	push	{lr}
    145a:	b081      	sub	sp, #4
    145c:	466b      	mov	r3, sp
    145e:	7019      	strb	r1, [r3, #0]
    1460:	4669      	mov	r1, sp
    1462:	2201      	movs	r2, #1
    1464:	f000 f864 	bl	1530 <____write_from_thumb>
    1468:	b001      	add	sp, #4
    146a:	bc02      	pop	{r1}
    146c:	4708      	bx	r1
    146e:	46c0      	nop			; (mov r8, r8)

00001470 <putchar>:
    1470:	b510      	push	{r4, lr}
    1472:	1c0c      	adds	r4, r1, #0
    1474:	21ff      	movs	r1, #255	; 0xff
    1476:	4021      	ands	r1, r4
    1478:	f7ff ffee 	bl	1458 <write1>
    147c:	1c20      	adds	r0, r4, #0
    147e:	bc10      	pop	{r4}
    1480:	bc02      	pop	{r1}
    1482:	4708      	bx	r1

00001484 <puts>:
    1484:	b530      	push	{r4, r5, lr}
    1486:	1c05      	adds	r5, r0, #0
    1488:	1c0c      	adds	r4, r1, #0
    148a:	7809      	ldrb	r1, [r1, #0]
    148c:	2900      	cmp	r1, #0
    148e:	d006      	beq.n	149e <puts+0x1a>
    1490:	1c28      	adds	r0, r5, #0
    1492:	f7ff ffed 	bl	1470 <putchar>
    1496:	3401      	adds	r4, #1
    1498:	7821      	ldrb	r1, [r4, #0]
    149a:	2900      	cmp	r1, #0
    149c:	d1f8      	bne.n	1490 <puts+0xc>
    149e:	2000      	movs	r0, #0
    14a0:	bc30      	pop	{r4, r5}
    14a2:	bc02      	pop	{r1}
    14a4:	4708      	bx	r1
    14a6:	46c0      	nop			; (mov r8, r8)

000014a8 <putxval>:
    14a8:	b5f0      	push	{r4, r5, r6, r7, lr}
    14aa:	b085      	sub	sp, #20
    14ac:	2400      	movs	r4, #0
    14ae:	ab04      	add	r3, sp, #16
    14b0:	701c      	strb	r4, [r3, #0]
    14b2:	2a00      	cmp	r2, #0
    14b4:	d102      	bne.n	14bc <putxval+0x14>
    14b6:	424b      	negs	r3, r1
    14b8:	414b      	adcs	r3, r1
    14ba:	18d2      	adds	r2, r2, r3
    14bc:	466b      	mov	r3, sp
    14be:	330f      	adds	r3, #15
    14c0:	4f0d      	ldr	r7, [pc, #52]	; (14f8 <putxval+0x50>)
    14c2:	260f      	movs	r6, #15
    14c4:	e008      	b.n	14d8 <putxval+0x30>
    14c6:	1c35      	adds	r5, r6, #0
    14c8:	400d      	ands	r5, r1
    14ca:	5d7d      	ldrb	r5, [r7, r5]
    14cc:	701d      	strb	r5, [r3, #0]
    14ce:	3b01      	subs	r3, #1
    14d0:	0909      	lsrs	r1, r1, #4
    14d2:	1e65      	subs	r5, r4, #1
    14d4:	41ac      	sbcs	r4, r5
    14d6:	1b12      	subs	r2, r2, r4
    14d8:	1c14      	adds	r4, r2, #0
    14da:	1e65      	subs	r5, r4, #1
    14dc:	41ac      	sbcs	r4, r5
    14de:	2c00      	cmp	r4, #0
    14e0:	d1f1      	bne.n	14c6 <putxval+0x1e>
    14e2:	2900      	cmp	r1, #0
    14e4:	d1ef      	bne.n	14c6 <putxval+0x1e>
    14e6:	1c59      	adds	r1, r3, #1
    14e8:	f7ff ffcc 	bl	1484 <puts>
    14ec:	2000      	movs	r0, #0
    14ee:	b005      	add	sp, #20
    14f0:	bcf0      	pop	{r4, r5, r6, r7}
    14f2:	bc02      	pop	{r1}
    14f4:	4708      	bx	r1
    14f6:	46c0      	nop			; (mov r8, r8)
    14f8:	00001540 	.word	0x00001540

000014fc <main>:
    14fc:	b500      	push	{lr}
    14fe:	2001      	movs	r0, #1
    1500:	4907      	ldr	r1, [pc, #28]	; (1520 <main+0x24>)
    1502:	f7ff ffbf 	bl	1484 <puts>
    1506:	4b07      	ldr	r3, [pc, #28]	; (1524 <main+0x28>)
    1508:	6819      	ldr	r1, [r3, #0]
    150a:	2001      	movs	r0, #1
    150c:	2200      	movs	r2, #0
    150e:	f7ff ffcb 	bl	14a8 <putxval>
    1512:	2001      	movs	r0, #1
    1514:	4904      	ldr	r1, [pc, #16]	; (1528 <main+0x2c>)
    1516:	f7ff ffb5 	bl	1484 <puts>
    151a:	2000      	movs	r0, #0
    151c:	f7ff ff98 	bl	1450 <exit>
    1520:	00001554 	.word	0x00001554
    1524:	00001800 	.word	0x00001800
    1528:	00001564 	.word	0x00001564
    152c:	00000000 	.word	0x00000000

00001530 <____write_from_thumb>:
    1530:	4778      	bx	pc
    1532:	46c0      	nop			; (mov r8, r8)
    1534:	eaffffba 	b	1424 <__write>

00001538 <____exit_from_thumb>:
    1538:	4778      	bx	pc
    153a:	46c0      	nop			; (mov r8, r8)
    153c:	eaffffb4 	b	1414 <__exit>
