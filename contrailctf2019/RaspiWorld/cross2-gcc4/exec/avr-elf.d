
avr-elf.x:     file format elf32-avr


Disassembly of section .text:

00001400 <_start>:
    1400:	c0 e1       	ldi	r28, 0x10	; 16
    1402:	d0 e2       	ldi	r29, 0x20	; 32
    1404:	cd bf       	out	0x3d, r28	; 61
    1406:	de bf       	out	0x3e, r29	; 62
    1408:	11 24       	eor	r1, r1
    140a:	a3 d0       	rcall	.+326    	; 0x1552 <main>

0000140c <__exit>:
    140c:	8f bd       	out	0x2f, r24	; 47
    140e:	08 95       	ret

00001410 <__read>:
    1410:	08 95       	ret

00001412 <__write>:
    1412:	e6 2f       	mov	r30, r22
    1414:	f7 2f       	mov	r31, r23
    1416:	80 81       	ld	r24, Z
    1418:	82 bf       	out	0x32, r24	; 50
    141a:	08 95       	ret

0000141c <__open>:
    141c:	08 95       	ret

0000141e <__close>:
    141e:	08 95       	ret

00001420 <exit>:
    1420:	f5 df       	rcall	.-22     	; 0x140c <__exit>

00001422 <write1>:
    1422:	cf 93       	push	r28
    1424:	df 93       	push	r29
    1426:	1f 92       	push	r1
    1428:	cd b7       	in	r28, 0x3d	; 61
    142a:	de b7       	in	r29, 0x3e	; 62
    142c:	69 83       	std	Y+1, r22	; 0x01
    142e:	41 e0       	ldi	r20, 0x01	; 1
    1430:	50 e0       	ldi	r21, 0x00	; 0
    1432:	6c 2f       	mov	r22, r28
    1434:	7d 2f       	mov	r23, r29
    1436:	6f 5f       	subi	r22, 0xFF	; 255
    1438:	7f 4f       	sbci	r23, 0xFF	; 255
    143a:	eb df       	rcall	.-42     	; 0x1412 <__write>
    143c:	0f 90       	pop	r0
    143e:	df 91       	pop	r29
    1440:	cf 91       	pop	r28
    1442:	08 95       	ret

00001444 <putchar>:
    1444:	cf 93       	push	r28
    1446:	df 93       	push	r29
    1448:	c6 2f       	mov	r28, r22
    144a:	d7 2f       	mov	r29, r23
    144c:	ea df       	rcall	.-44     	; 0x1422 <write1>
    144e:	8c 2f       	mov	r24, r28
    1450:	9d 2f       	mov	r25, r29
    1452:	df 91       	pop	r29
    1454:	cf 91       	pop	r28
    1456:	08 95       	ret

00001458 <puts>:
    1458:	0f 93       	push	r16
    145a:	1f 93       	push	r17
    145c:	cf 93       	push	r28
    145e:	df 93       	push	r29
    1460:	08 2f       	mov	r16, r24
    1462:	19 2f       	mov	r17, r25
    1464:	c6 2f       	mov	r28, r22
    1466:	d7 2f       	mov	r29, r23
    1468:	68 81       	ld	r22, Y
    146a:	66 23       	and	r22, r22
    146c:	51 f0       	breq	.+20     	; 0x1482 <puts+0x2a>
    146e:	21 96       	adiw	r28, 0x01	; 1
    1470:	77 27       	eor	r23, r23
    1472:	67 fd       	sbrc	r22, 7
    1474:	70 95       	com	r23
    1476:	80 2f       	mov	r24, r16
    1478:	91 2f       	mov	r25, r17
    147a:	e4 df       	rcall	.-56     	; 0x1444 <putchar>
    147c:	69 91       	ld	r22, Y+
    147e:	61 11       	cpse	r22, r1
    1480:	f7 cf       	rjmp	.-18     	; 0x1470 <puts+0x18>
    1482:	80 e0       	ldi	r24, 0x00	; 0
    1484:	90 e0       	ldi	r25, 0x00	; 0
    1486:	df 91       	pop	r29
    1488:	cf 91       	pop	r28
    148a:	1f 91       	pop	r17
    148c:	0f 91       	pop	r16
    148e:	08 95       	ret

00001490 <putxval>:
    1490:	cf 92       	push	r12
    1492:	df 92       	push	r13
    1494:	ff 92       	push	r15
    1496:	0f 93       	push	r16
    1498:	1f 93       	push	r17
    149a:	cf 93       	push	r28
    149c:	df 93       	push	r29
    149e:	cd b7       	in	r28, 0x3d	; 61
    14a0:	de b7       	in	r29, 0x3e	; 62
    14a2:	61 97       	sbiw	r28, 0x11	; 17
    14a4:	0f b6       	in	r0, 0x3f	; 63
    14a6:	f8 94       	cli
    14a8:	de bf       	out	0x3e, r29	; 62
    14aa:	0f be       	out	0x3f, r0	; 63
    14ac:	cd bf       	out	0x3d, r28	; 61
    14ae:	c2 2e       	mov	r12, r18
    14b0:	d3 2e       	mov	r13, r19
    14b2:	19 8a       	std	Y+17, r1	; 0x11
    14b4:	41 15       	cp	r20, r1
    14b6:	51 05       	cpc	r21, r1
    14b8:	61 05       	cpc	r22, r1
    14ba:	71 05       	cpc	r23, r1
    14bc:	31 f4       	brne	.+12     	; 0x14ca <putxval+0x3a>
    14be:	21 15       	cp	r18, r1
    14c0:	31 05       	cpc	r19, r1
    14c2:	19 f4       	brne	.+6      	; 0x14ca <putxval+0x3a>
    14c4:	cc 24       	eor	r12, r12
    14c6:	c3 94       	inc	r12
    14c8:	d1 2c       	mov	r13, r1
    14ca:	ec 2f       	mov	r30, r28
    14cc:	fd 2f       	mov	r31, r29
    14ce:	70 96       	adiw	r30, 0x10	; 16
    14d0:	0f 2e       	mov	r0, r31
    14d2:	f0 e3       	ldi	r31, 0x30	; 48
    14d4:	ff 2e       	mov	r15, r31
    14d6:	f0 2d       	mov	r31, r0
    14d8:	1d c0       	rjmp	.+58     	; 0x1514 <putxval+0x84>
    14da:	04 2f       	mov	r16, r20
    14dc:	15 2f       	mov	r17, r21
    14de:	26 2f       	mov	r18, r22
    14e0:	37 2f       	mov	r19, r23
    14e2:	0f 70       	andi	r16, 0x0F	; 15
    14e4:	11 27       	eor	r17, r17
    14e6:	22 27       	eor	r18, r18
    14e8:	33 27       	eor	r19, r19
    14ea:	00 50       	subi	r16, 0x00	; 0
    14ec:	18 4e       	sbci	r17, 0xE8	; 232
    14ee:	a0 2f       	mov	r26, r16
    14f0:	b1 2f       	mov	r27, r17
    14f2:	2c 91       	ld	r18, X
    14f4:	20 83       	st	Z, r18
    14f6:	68 94       	set
    14f8:	13 f8       	bld	r1, 3
    14fa:	76 95       	lsr	r23
    14fc:	67 95       	ror	r22
    14fe:	57 95       	ror	r21
    1500:	47 95       	ror	r20
    1502:	16 94       	lsr	r1
    1504:	d1 f7       	brne	.-12     	; 0x14fa <putxval+0x6a>
    1506:	c1 14       	cp	r12, r1
    1508:	d1 04       	cpc	r13, r1
    150a:	19 f0       	breq	.+6      	; 0x1512 <putxval+0x82>
    150c:	b1 e0       	ldi	r27, 0x01	; 1
    150e:	cb 1a       	sub	r12, r27
    1510:	d1 08       	sbc	r13, r1
    1512:	31 97       	sbiw	r30, 0x01	; 1
    1514:	41 15       	cp	r20, r1
    1516:	51 05       	cpc	r21, r1
    1518:	61 05       	cpc	r22, r1
    151a:	71 05       	cpc	r23, r1
    151c:	f1 f6       	brne	.-68     	; 0x14da <putxval+0x4a>
    151e:	c1 14       	cp	r12, r1
    1520:	d1 04       	cpc	r13, r1
    1522:	11 f0       	breq	.+4      	; 0x1528 <putxval+0x98>
    1524:	f0 82       	st	Z, r15
    1526:	f2 cf       	rjmp	.-28     	; 0x150c <putxval+0x7c>
    1528:	6e 2f       	mov	r22, r30
    152a:	7f 2f       	mov	r23, r31
    152c:	6f 5f       	subi	r22, 0xFF	; 255
    152e:	7f 4f       	sbci	r23, 0xFF	; 255
    1530:	93 df       	rcall	.-218    	; 0x1458 <puts>
    1532:	80 e0       	ldi	r24, 0x00	; 0
    1534:	90 e0       	ldi	r25, 0x00	; 0
    1536:	61 96       	adiw	r28, 0x11	; 17
    1538:	0f b6       	in	r0, 0x3f	; 63
    153a:	f8 94       	cli
    153c:	de bf       	out	0x3e, r29	; 62
    153e:	0f be       	out	0x3f, r0	; 63
    1540:	cd bf       	out	0x3d, r28	; 61
    1542:	df 91       	pop	r29
    1544:	cf 91       	pop	r28
    1546:	1f 91       	pop	r17
    1548:	0f 91       	pop	r16
    154a:	ff 90       	pop	r15
    154c:	df 90       	pop	r13
    154e:	cf 90       	pop	r12
    1550:	08 95       	ret

00001552 <main>:
    1552:	61 e1       	ldi	r22, 0x11	; 17
    1554:	78 e1       	ldi	r23, 0x18	; 24
    1556:	81 e0       	ldi	r24, 0x01	; 1
    1558:	90 e0       	ldi	r25, 0x00	; 0
    155a:	7e df       	rcall	.-260    	; 0x1458 <puts>
    155c:	40 91 00 1c 	lds	r20, 0x1C00
    1560:	50 91 01 1c 	lds	r21, 0x1C01
    1564:	60 91 02 1c 	lds	r22, 0x1C02
    1568:	70 91 03 1c 	lds	r23, 0x1C03
    156c:	20 e0       	ldi	r18, 0x00	; 0
    156e:	30 e0       	ldi	r19, 0x00	; 0
    1570:	81 e0       	ldi	r24, 0x01	; 1
    1572:	90 e0       	ldi	r25, 0x00	; 0
    1574:	8d df       	rcall	.-230    	; 0x1490 <putxval>
    1576:	6f e1       	ldi	r22, 0x1F	; 31
    1578:	78 e1       	ldi	r23, 0x18	; 24
    157a:	81 e0       	ldi	r24, 0x01	; 1
    157c:	90 e0       	ldi	r25, 0x00	; 0
    157e:	6c df       	rcall	.-296    	; 0x1458 <puts>
    1580:	80 e0       	ldi	r24, 0x00	; 0
    1582:	90 e0       	ldi	r25, 0x00	; 0
    1584:	4d df       	rcall	.-358    	; 0x1420 <exit>
