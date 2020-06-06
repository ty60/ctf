
arm-elf.x:     file format elf32-littlearm


Disassembly of section .text:

00001400 <_start>:
    1400:	e59fd038 	ldr	sp, [pc, #56]	; 1440 <_stack_addr>
    1404:	eb00004c 	bl	153c <main>

00001408 <__exit>:
    1408:	ef000011 	svc	0x00000011
    140c:	e1a0f00e 	mov	pc, lr

00001410 <__read>:
    1410:	ef00006a 	svc	0x0000006a
    1414:	e1a0f00e 	mov	pc, lr

00001418 <__write>:
    1418:	ef000069 	svc	0x00000069
    141c:	e1a0f00e 	mov	pc, lr

00001420 <__open>:
    1420:	e3a01006 	mov	r1, #6
    1424:	ef000066 	svc	0x00000066
    1428:	e1a0f00e 	mov	pc, lr

0000142c <__close>:
    142c:	ef000068 	svc	0x00000068
    1430:	e1a0f00e 	mov	pc, lr
    1434:	e1a00000 	nop			; (mov r0, r0)
    1438:	e1a00000 	nop			; (mov r0, r0)
    143c:	e1a00000 	nop			; (mov r0, r0)

00001440 <_stack_addr>:
    1440:	00001c10 	.word	0x00001c10
    1444:	e1a00000 	nop			; (mov r0, r0)
    1448:	e1a00000 	nop			; (mov r0, r0)
    144c:	e1a00000 	nop			; (mov r0, r0)

00001450 <exit>:
    1450:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1454:	ebffffeb 	bl	1408 <__exit>

00001458 <write1>:
    1458:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    145c:	e24dd004 	sub	sp, sp, #4
    1460:	e28d3004 	add	r3, sp, #4
    1464:	e5631004 	strb	r1, [r3, #-4]!
    1468:	e1a0100d 	mov	r1, sp
    146c:	e3a02001 	mov	r2, #1
    1470:	ebffffe8 	bl	1418 <__write>
    1474:	e28dd004 	add	sp, sp, #4
    1478:	e8bd8000 	ldmfd	sp!, {pc}

0000147c <putchar>:
    147c:	e92d4010 	push	{r4, lr}
    1480:	e1a04001 	mov	r4, r1
    1484:	e20110ff 	and	r1, r1, #255	; 0xff
    1488:	ebfffff2 	bl	1458 <write1>
    148c:	e1a00004 	mov	r0, r4
    1490:	e8bd8010 	pop	{r4, pc}

00001494 <puts>:
    1494:	e92d4030 	push	{r4, r5, lr}
    1498:	e1a05000 	mov	r5, r0
    149c:	e1a04001 	mov	r4, r1
    14a0:	e5d11000 	ldrb	r1, [r1]
    14a4:	e3510000 	cmp	r1, #0
    14a8:	0a000004 	beq	14c0 <puts+0x2c>
    14ac:	e1a00005 	mov	r0, r5
    14b0:	ebfffff1 	bl	147c <putchar>
    14b4:	e5f41001 	ldrb	r1, [r4, #1]!
    14b8:	e3510000 	cmp	r1, #0
    14bc:	1afffffa 	bne	14ac <puts+0x18>
    14c0:	e3a00000 	mov	r0, #0
    14c4:	e8bd8030 	pop	{r4, r5, pc}

000014c8 <putxval>:
    14c8:	e92d4010 	push	{r4, lr}
    14cc:	e24dd014 	sub	sp, sp, #20
    14d0:	e3a03000 	mov	r3, #0
    14d4:	e5cd3010 	strb	r3, [sp, #16]
    14d8:	e1a0c002 	mov	ip, r2
    14dc:	e1a03001 	mov	r3, r1
    14e0:	e3520000 	cmp	r2, #0
    14e4:	03510000 	cmpeq	r1, #0
    14e8:	0282c001 	addeq	ip, r2, #1
    14ec:	e28d100f 	add	r1, sp, #15
    14f0:	e59f4040 	ldr	r4, [pc, #64]	; 1538 <putxval+0x70>
    14f4:	ea000005 	b	1510 <putxval+0x48>
    14f8:	e203e00f 	and	lr, r3, #15
    14fc:	e7d4e00e 	ldrb	lr, [r4, lr]
    1500:	e441e001 	strb	lr, [r1], #-1
    1504:	e1a03223 	lsr	r3, r3, #4
    1508:	e3520000 	cmp	r2, #0
    150c:	124cc001 	subne	ip, ip, #1
    1510:	e29c2000 	adds	r2, ip, #0
    1514:	13a02001 	movne	r2, #1
    1518:	e35c0000 	cmp	ip, #0
    151c:	03530000 	cmpeq	r3, #0
    1520:	1afffff4 	bne	14f8 <putxval+0x30>
    1524:	e2811001 	add	r1, r1, #1
    1528:	ebffffd9 	bl	1494 <puts>
    152c:	e3a00000 	mov	r0, #0
    1530:	e28dd014 	add	sp, sp, #20
    1534:	e8bd8010 	pop	{r4, pc}
    1538:	00001580 	.word	0x00001580

0000153c <main>:
    153c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1540:	e3a00001 	mov	r0, #1
    1544:	e59f1028 	ldr	r1, [pc, #40]	; 1574 <main+0x38>
    1548:	ebffffd1 	bl	1494 <puts>
    154c:	e3a00001 	mov	r0, #1
    1550:	e59f3020 	ldr	r3, [pc, #32]	; 1578 <main+0x3c>
    1554:	e5931000 	ldr	r1, [r3]
    1558:	e3a02000 	mov	r2, #0
    155c:	ebffffd9 	bl	14c8 <putxval>
    1560:	e3a00001 	mov	r0, #1
    1564:	e59f1010 	ldr	r1, [pc, #16]	; 157c <main+0x40>
    1568:	ebffffc9 	bl	1494 <puts>
    156c:	e3a00000 	mov	r0, #0
    1570:	ebffffb6 	bl	1450 <exit>
    1574:	00001594 	.word	0x00001594
    1578:	00001800 	.word	0x00001800
    157c:	000015a4 	.word	0x000015a4
