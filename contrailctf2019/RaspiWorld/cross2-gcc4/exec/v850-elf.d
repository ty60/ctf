
v850-elf.x:     file format elf32-v850


Disassembly of section .text:

00001400 <_start>:
    1400:	40 1e 00 00 	movhi	0, r0, sp
    1404:	23 1e 10 1c 	movea	7184, sp, sp
    1408:	40 26 00 00 	movhi	0, r0, gp
    140c:	24 26 00 18 	movea	6144, gp, gp
    1410:	80 ff d4 01 	jarl	15e4 <_main>, lp
    1414:	0a 38       	mov	r10, r7

00001416 <___r_exit>:
    1416:	01 32       	mov	1, r6
    1418:	ff 07 00 01 	trap	31
    141c:	7f 00       	jmp	[lp]

0000141e <___r_read>:
    141e:	03 32       	mov	3, r6
    1420:	ff 07 00 01 	trap	31
    1424:	7f 00       	jmp	[lp]

00001426 <___r_write>:
    1426:	04 32       	mov	4, r6
    1428:	ff 07 00 01 	trap	31
    142c:	7f 00       	jmp	[lp]

0000142e <___r_open>:
    142e:	05 32       	mov	5, r6
    1430:	ff 07 00 01 	trap	31
    1434:	7f 00       	jmp	[lp]

00001436 <___r_close>:
    1436:	06 32       	mov	6, r6
    1438:	ff 07 00 01 	trap	31
    143c:	7f 00       	jmp	[lp]

0000143e <__save_r28_r31>:
    143e:	03 1e f4 ff 	addi	-12, sp, sp
    1442:	63 ef 01 00 	st.w	r29, 0[sp]
    1446:	63 e7 05 00 	st.w	r28, 4[sp]
    144a:	63 ff 09 00 	st.w	lp, 8[sp]
    144e:	6a 00       	jmp	[r10]

00001450 <__save_r29_r31>:
    1450:	03 1e f8 ff 	addi	-8, sp, sp
    1454:	63 ef 01 00 	st.w	r29, 0[sp]
    1458:	63 ff 05 00 	st.w	lp, 4[sp]
    145c:	6a 00       	jmp	[r10]

0000145e <__save_r31>:
    145e:	03 1e fc ff 	addi	-4, sp, sp
    1462:	63 ff 01 00 	st.w	lp, 0[sp]
    1466:	6a 00       	jmp	[r10]

00001468 <__return_r28_r31>:
    1468:	23 ef 01 00 	ld.w	0[sp], r29
    146c:	23 e7 05 00 	ld.w	4[sp], r28
    1470:	23 ff 09 00 	ld.w	8[sp], lp
    1474:	03 1e 0c 00 	addi	12, sp, sp
    1478:	7f 00       	jmp	[lp]

0000147a <__return_r29_r31>:
    147a:	23 ef 01 00 	ld.w	0[sp], r29
    147e:	23 ff 05 00 	ld.w	4[sp], lp
    1482:	03 1e 08 00 	addi	8, sp, sp
    1486:	7f 00       	jmp	[lp]

00001488 <__return_r31>:
    1488:	23 ff 01 00 	ld.w	0[sp], lp
    148c:	03 1e 04 00 	addi	4, sp, sp
    1490:	7f 00       	jmp	[lp]
	...

00001494 <___exit>:
    1494:	5c 1a       	add	-4, sp
    1496:	63 ff 01 00 	st.w	lp, 0[sp]
    149a:	06 38       	mov	r6, r7
    149c:	00 32       	mov	0, r6
    149e:	bf ff 78 ff 	jarl	1416 <___r_exit>, lp
	...

000014a4 <___read>:
    14a4:	5c 1a       	add	-4, sp
    14a6:	63 ff 01 00 	st.w	lp, 0[sp]
    14aa:	06 58       	mov	r6, r11
    14ac:	07 50       	mov	r7, r10
    14ae:	08 48       	mov	r8, r9
    14b0:	00 32       	mov	0, r6
    14b2:	0b 38       	mov	r11, r7
    14b4:	0a 40       	mov	r10, r8
    14b6:	bf ff 68 ff 	jarl	141e <___r_read>, lp
    14ba:	bf 07 ce ff 	jr	1488 <__return_r31>
	...

000014c0 <___write>:
    14c0:	5c 1a       	add	-4, sp
    14c2:	63 ff 01 00 	st.w	lp, 0[sp]
    14c6:	06 58       	mov	r6, r11
    14c8:	07 50       	mov	r7, r10
    14ca:	08 48       	mov	r8, r9
    14cc:	00 32       	mov	0, r6
    14ce:	0b 38       	mov	r11, r7
    14d0:	0a 40       	mov	r10, r8
    14d2:	bf ff 54 ff 	jarl	1426 <___r_write>, lp
    14d6:	bf 07 b2 ff 	jr	1488 <__return_r31>
	...

000014dc <___open>:
    14dc:	5c 1a       	add	-4, sp
    14de:	63 ff 01 00 	st.w	lp, 0[sp]
    14e2:	06 58       	mov	r6, r11
    14e4:	07 50       	mov	r7, r10
    14e6:	08 48       	mov	r8, r9
    14e8:	00 32       	mov	0, r6
    14ea:	0b 38       	mov	r11, r7
    14ec:	0a 40       	mov	r10, r8
    14ee:	bf ff 40 ff 	jarl	142e <___r_open>, lp
    14f2:	bf 07 96 ff 	jr	1488 <__return_r31>
	...

000014f8 <___close>:
    14f8:	5c 1a       	add	-4, sp
    14fa:	63 ff 01 00 	st.w	lp, 0[sp]
    14fe:	06 38       	mov	r6, r7
    1500:	00 32       	mov	0, r6
    1502:	bf ff 34 ff 	jarl	1436 <___r_close>, lp
    1506:	bf 07 82 ff 	jr	1488 <__return_r31>
	...

0000150c <_exit>:
    150c:	5c 1a       	add	-4, sp
    150e:	63 ff 01 00 	st.w	lp, 0[sp]
    1512:	bf ff 82 ff 	jarl	1494 <___exit>, lp
	...

00001518 <_write1>:
    1518:	58 1a       	add	-8, sp
    151a:	63 ff 05 00 	st.w	lp, 4[sp]
    151e:	43 3f 00 00 	st.b	r7, 0[sp]
    1522:	03 38       	mov	sp, r7
    1524:	01 42       	mov	1, r8
    1526:	bf ff 9a ff 	jarl	14c0 <___write>, lp
    152a:	44 1a       	add	4, sp
    152c:	bf 07 5c ff 	jr	1488 <__return_r31>

00001530 <_putchar>:
    1530:	58 1a       	add	-8, sp
    1532:	63 ff 05 00 	st.w	lp, 4[sp]
    1536:	63 ef 01 00 	st.w	r29, 0[sp]
    153a:	07 e8       	mov	r7, r29
    153c:	c7 3e ff 00 	andi	255, r7, r7
    1540:	bf ff d8 ff 	jarl	1518 <_write1>, lp
    1544:	1d 50       	mov	r29, r10
    1546:	bf 07 34 ff 	jr	147a <__return_r29_r31>
	...

0000154c <_puts>:
    154c:	54 1a       	add	-12, sp
    154e:	63 ff 09 00 	st.w	lp, 8[sp]
    1552:	63 e7 05 00 	st.w	r28, 4[sp]
    1556:	63 ef 01 00 	st.w	r29, 0[sp]
    155a:	06 e0       	mov	r6, r28
    155c:	07 e8       	mov	r7, r29
    155e:	07 3f 00 00 	ld.b	0[r7], r7
    1562:	d8 3a       	shl	24, r7
    1564:	b8 3a       	sar	24, r7
    1566:	a2 0d       	be	157a <_puts+0x2e>
    1568:	1c 30       	mov	r28, r6
    156a:	bf ff c6 ff 	jarl	1530 <_putchar>, lp
    156e:	41 ea       	add	1, r29
    1570:	1d 3f 00 00 	ld.b	0[r29], r7
    1574:	d8 3a       	shl	24, r7
    1576:	b8 3a       	sar	24, r7
    1578:	8a fd       	bne	1568 <_puts+0x1c>
    157a:	00 52       	mov	0, r10
    157c:	bf 07 ec fe 	jr	1468 <__return_r28_r31>

00001580 <_putxval>:
    1580:	03 1e e8 ff 	addi	-24, sp, sp
    1584:	63 ff 15 00 	st.w	lp, 20[sp]
    1588:	43 07 13 00 	st.b	r0, 19[sp]
    158c:	60 3a       	cmp	0, r7
    158e:	ca 05       	bne	1596 <_putxval+0x16>
    1590:	60 42       	cmp	0, r8
    1592:	aa 05       	bne	1596 <_putxval+0x16>
    1594:	01 42       	mov	1, r8
    1596:	03 56 11 00 	addi	17, sp, r10
    159a:	20 6e 30 00 	movea	48, r0, r13
    159e:	40 66 00 00 	movhi	0, r0, r12
    15a2:	2c 66 30 16 	movea	5680, r12, r12
    15a6:	d5 0d       	br	15c0 <_putxval+0x40>
    15a8:	c7 5e 0f 00 	andi	15, r7, r11
    15ac:	cc 59       	add	r12, r11
    15ae:	0b 5f 00 00 	ld.b	0[r11], r11
    15b2:	4a 5f 01 00 	st.b	r11, 1[r10]
    15b6:	84 3a       	shr	4, r7
    15b8:	60 42       	cmp	0, r8
    15ba:	a2 05       	be	15be <_putxval+0x3e>
    15bc:	5f 42       	add	-1, r8
    15be:	5f 52       	add	-1, r10
    15c0:	0a 5e 01 00 	addi	1, r10, r11
    15c4:	60 3a       	cmp	0, r7
    15c6:	9a f5       	bne	15a8 <_putxval+0x28>
    15c8:	60 42       	cmp	0, r8
    15ca:	c2 05       	be	15d2 <_putxval+0x52>
    15cc:	4a 6f 01 00 	st.b	r13, 1[r10]
    15d0:	e5 f5       	br	15bc <_putxval+0x3c>
    15d2:	0b 3e 01 00 	addi	1, r11, r7
    15d6:	bf ff 76 ff 	jarl	154c <_puts>, lp
    15da:	00 52       	mov	0, r10
    15dc:	03 1e 14 00 	addi	20, sp, sp
    15e0:	bf 07 a8 fe 	jr	1488 <__return_r31>

000015e4 <_main>:
    15e4:	58 1a       	add	-8, sp
    15e6:	63 ff 05 00 	st.w	lp, 4[sp]
    15ea:	63 ef 01 00 	st.w	r29, 0[sp]
    15ee:	01 32       	mov	1, r6
    15f0:	40 3e 00 00 	movhi	0, r0, r7
    15f4:	27 3e 41 16 	movea	5697, r7, r7
    15f8:	40 ee 00 00 	movhi	0, r0, r29
    15fc:	3d ee 4c 15 	movea	5452, r29, r29
    1600:	80 ff 04 00 	jarl	1604 <_main+0x20>, lp
    1604:	44 fa       	add	4, lp
    1606:	7d 00       	jmp	[r29]
    1608:	01 32       	mov	1, r6
    160a:	40 56 00 00 	movhi	0, r0, r10
    160e:	2a 3f 01 18 	ld.w	6144[r10], r7
    1612:	00 42       	mov	0, r8
    1614:	bf ff 6c ff 	jarl	1580 <_putxval>, lp
    1618:	01 32       	mov	1, r6
    161a:	40 3e 00 00 	movhi	0, r0, r7
    161e:	27 3e 4f 16 	movea	5711, r7, r7
    1622:	80 ff 04 00 	jarl	1626 <_main+0x42>, lp
    1626:	44 fa       	add	4, lp
    1628:	7d 00       	jmp	[r29]
    162a:	00 32       	mov	0, r6
    162c:	bf ff e0 fe 	jarl	150c <_exit>, lp
