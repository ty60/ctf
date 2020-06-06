
avr-elf.x:     file format elf32-avr


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	08 95       	ret

00fe1402 <return_zero>:
  fe1402:	80 e0       	ldi	r24, 0x00	; 0
  fe1404:	90 e0       	ldi	r25, 0x00	; 0
  fe1406:	08 95       	ret

00fe1408 <return_one>:
  fe1408:	81 e0       	ldi	r24, 0x01	; 1
  fe140a:	90 e0       	ldi	r25, 0x00	; 0
  fe140c:	08 95       	ret

00fe140e <return_int_size>:
  fe140e:	82 e0       	ldi	r24, 0x02	; 2
  fe1410:	90 e0       	ldi	r25, 0x00	; 0
  fe1412:	08 95       	ret

00fe1414 <return_pointer_size>:
  fe1414:	82 e0       	ldi	r24, 0x02	; 2
  fe1416:	90 e0       	ldi	r25, 0x00	; 0
  fe1418:	08 95       	ret

00fe141a <return_short_size>:
  fe141a:	82 e0       	ldi	r24, 0x02	; 2
  fe141c:	90 e0       	ldi	r25, 0x00	; 0
  fe141e:	08 95       	ret

00fe1420 <return_long_size>:
  fe1420:	84 e0       	ldi	r24, 0x04	; 4
  fe1422:	90 e0       	ldi	r25, 0x00	; 0
  fe1424:	08 95       	ret

00fe1426 <return_short>:
  fe1426:	88 e8       	ldi	r24, 0x88	; 136
  fe1428:	97 e7       	ldi	r25, 0x77	; 119
  fe142a:	08 95       	ret

00fe142c <return_long>:
  fe142c:	6a ea       	ldi	r22, 0xAA	; 170
  fe142e:	79 e9       	ldi	r23, 0x99	; 153
  fe1430:	88 e8       	ldi	r24, 0x88	; 136
  fe1432:	97 e7       	ldi	r25, 0x77	; 119
  fe1434:	08 95       	ret

00fe1436 <return_short_upper>:
  fe1436:	8e ee       	ldi	r24, 0xEE	; 238
  fe1438:	9f ef       	ldi	r25, 0xFF	; 255
  fe143a:	08 95       	ret

00fe143c <return_long_upper>:
  fe143c:	6c ec       	ldi	r22, 0xCC	; 204
  fe143e:	7d ed       	ldi	r23, 0xDD	; 221
  fe1440:	8e ee       	ldi	r24, 0xEE	; 238
  fe1442:	9f ef       	ldi	r25, 0xFF	; 255
  fe1444:	08 95       	ret

00fe1446 <return_arg1>:
  fe1446:	08 95       	ret

00fe1448 <return_arg2>:
  fe1448:	86 2f       	mov	r24, r22
  fe144a:	97 2f       	mov	r25, r23
  fe144c:	08 95       	ret

00fe144e <add>:
  fe144e:	68 0f       	add	r22, r24
  fe1450:	79 1f       	adc	r23, r25
  fe1452:	86 2f       	mov	r24, r22
  fe1454:	97 2f       	mov	r25, r23
  fe1456:	08 95       	ret

00fe1458 <add3>:
  fe1458:	86 0f       	add	r24, r22
  fe145a:	97 1f       	adc	r25, r23
  fe145c:	48 0f       	add	r20, r24
  fe145e:	59 1f       	adc	r21, r25
  fe1460:	84 2f       	mov	r24, r20
  fe1462:	95 2f       	mov	r25, r21
  fe1464:	08 95       	ret

00fe1466 <add_two>:
  fe1466:	28 2f       	mov	r18, r24
  fe1468:	39 2f       	mov	r19, r25
  fe146a:	2e 5f       	subi	r18, 0xFE	; 254
  fe146c:	3f 4f       	sbci	r19, 0xFF	; 255
  fe146e:	82 2f       	mov	r24, r18
  fe1470:	93 2f       	mov	r25, r19
  fe1472:	08 95       	ret

00fe1474 <inc>:
  fe1474:	28 2f       	mov	r18, r24
  fe1476:	39 2f       	mov	r19, r25
  fe1478:	2f 5f       	subi	r18, 0xFF	; 255
  fe147a:	3f 4f       	sbci	r19, 0xFF	; 255
  fe147c:	82 2f       	mov	r24, r18
  fe147e:	93 2f       	mov	r25, r19
  fe1480:	08 95       	ret

00fe1482 <or>:
  fe1482:	68 2b       	or	r22, r24
  fe1484:	79 2b       	or	r23, r25
  fe1486:	86 2f       	mov	r24, r22
  fe1488:	97 2f       	mov	r25, r23
  fe148a:	08 95       	ret

00fe148c <or_one>:
  fe148c:	28 2f       	mov	r18, r24
  fe148e:	39 2f       	mov	r19, r25
  fe1490:	21 60       	ori	r18, 0x01	; 1
  fe1492:	82 2f       	mov	r24, r18
  fe1494:	93 2f       	mov	r25, r19
  fe1496:	08 95       	ret

00fe1498 <load>:
  fe1498:	e8 2f       	mov	r30, r24
  fe149a:	f9 2f       	mov	r31, r25
  fe149c:	20 81       	ld	r18, Z
  fe149e:	31 81       	ldd	r19, Z+1	; 0x01
  fe14a0:	82 2f       	mov	r24, r18
  fe14a2:	93 2f       	mov	r25, r19
  fe14a4:	08 95       	ret

00fe14a6 <store>:
  fe14a6:	2f ef       	ldi	r18, 0xFF	; 255
  fe14a8:	30 e0       	ldi	r19, 0x00	; 0
  fe14aa:	e8 2f       	mov	r30, r24
  fe14ac:	f9 2f       	mov	r31, r25
  fe14ae:	31 83       	std	Z+1, r19	; 0x01
  fe14b0:	20 83       	st	Z, r18
  fe14b2:	08 95       	ret

00fe14b4 <load_long>:
  fe14b4:	0f 93       	push	r16
  fe14b6:	1f 93       	push	r17
  fe14b8:	e8 2f       	mov	r30, r24
  fe14ba:	f9 2f       	mov	r31, r25
  fe14bc:	00 81       	ld	r16, Z
  fe14be:	11 81       	ldd	r17, Z+1	; 0x01
  fe14c0:	22 81       	ldd	r18, Z+2	; 0x02
  fe14c2:	33 81       	ldd	r19, Z+3	; 0x03
  fe14c4:	60 2f       	mov	r22, r16
  fe14c6:	71 2f       	mov	r23, r17
  fe14c8:	82 2f       	mov	r24, r18
  fe14ca:	93 2f       	mov	r25, r19
  fe14cc:	1f 91       	pop	r17
  fe14ce:	0f 91       	pop	r16
  fe14d0:	08 95       	ret

00fe14d2 <store_long>:
  fe14d2:	44 e4       	ldi	r20, 0x44	; 68
  fe14d4:	53 e3       	ldi	r21, 0x33	; 51
  fe14d6:	62 e2       	ldi	r22, 0x22	; 34
  fe14d8:	71 e1       	ldi	r23, 0x11	; 17
  fe14da:	e8 2f       	mov	r30, r24
  fe14dc:	f9 2f       	mov	r31, r25
  fe14de:	40 83       	st	Z, r20
  fe14e0:	51 83       	std	Z+1, r21	; 0x01
  fe14e2:	62 83       	std	Z+2, r22	; 0x02
  fe14e4:	73 83       	std	Z+3, r23	; 0x03
  fe14e6:	08 95       	ret

00fe14e8 <member>:
  fe14e8:	e8 2f       	mov	r30, r24
  fe14ea:	f9 2f       	mov	r31, r25
  fe14ec:	81 e0       	ldi	r24, 0x01	; 1
  fe14ee:	90 e0       	ldi	r25, 0x00	; 0
  fe14f0:	93 83       	std	Z+3, r25	; 0x03
  fe14f2:	82 83       	std	Z+2, r24	; 0x02
  fe14f4:	84 81       	ldd	r24, Z+4	; 0x04
  fe14f6:	95 81       	ldd	r25, Z+5	; 0x05
  fe14f8:	08 95       	ret

00fe14fa <get_static_value_addr>:
  fe14fa:	84 e0       	ldi	r24, 0x04	; 4
  fe14fc:	98 e1       	ldi	r25, 0x18	; 24
  fe14fe:	08 95       	ret

00fe1500 <get_static_value>:
  fe1500:	80 91 04 18 	lds	r24, 0x1804
  fe1504:	90 91 05 18 	lds	r25, 0x1805
  fe1508:	08 95       	ret

00fe150a <set_static_value>:
  fe150a:	90 93 05 18 	sts	0x1805, r25
  fe150e:	80 93 04 18 	sts	0x1804, r24
  fe1512:	08 95       	ret

00fe1514 <set_stack>:
  fe1514:	cf 93       	push	r28
  fe1516:	df 93       	push	r29
  fe1518:	00 d0       	rcall	.+0      	; 0xfe151a <set_stack+0x6>
  fe151a:	00 d0       	rcall	.+0      	; 0xfe151c <set_stack+0x8>
  fe151c:	cd b7       	in	r28, 0x3d	; 61
  fe151e:	de b7       	in	r29, 0x3e	; 62
  fe1520:	8e ef       	ldi	r24, 0xFE	; 254
  fe1522:	90 e0       	ldi	r25, 0x00	; 0
  fe1524:	9a 83       	std	Y+2, r25	; 0x02
  fe1526:	89 83       	std	Y+1, r24	; 0x01
  fe1528:	8f ef       	ldi	r24, 0xFF	; 255
  fe152a:	90 e0       	ldi	r25, 0x00	; 0
  fe152c:	9c 83       	std	Y+4, r25	; 0x04
  fe152e:	8b 83       	std	Y+3, r24	; 0x03
  fe1530:	0f 90       	pop	r0
  fe1532:	0f 90       	pop	r0
  fe1534:	0f 90       	pop	r0
  fe1536:	0f 90       	pop	r0
  fe1538:	df 91       	pop	r29
  fe153a:	cf 91       	pop	r28
  fe153c:	08 95       	ret

00fe153e <use_stack>:
  fe153e:	cf 93       	push	r28
  fe1540:	df 93       	push	r29
  fe1542:	00 d0       	rcall	.+0      	; 0xfe1544 <use_stack+0x6>
  fe1544:	00 d0       	rcall	.+0      	; 0xfe1546 <use_stack+0x8>
  fe1546:	cd b7       	in	r28, 0x3d	; 61
  fe1548:	de b7       	in	r29, 0x3e	; 62
  fe154a:	8e ef       	ldi	r24, 0xFE	; 254
  fe154c:	90 e0       	ldi	r25, 0x00	; 0
  fe154e:	9a 83       	std	Y+2, r25	; 0x02
  fe1550:	89 83       	std	Y+1, r24	; 0x01
  fe1552:	8f ef       	ldi	r24, 0xFF	; 255
  fe1554:	90 e0       	ldi	r25, 0x00	; 0
  fe1556:	9c 83       	std	Y+4, r25	; 0x04
  fe1558:	8b 83       	std	Y+3, r24	; 0x03
  fe155a:	29 81       	ldd	r18, Y+1	; 0x01
  fe155c:	3a 81       	ldd	r19, Y+2	; 0x02
  fe155e:	8b 81       	ldd	r24, Y+3	; 0x03
  fe1560:	9c 81       	ldd	r25, Y+4	; 0x04
  fe1562:	28 0f       	add	r18, r24
  fe1564:	39 1f       	adc	r19, r25
  fe1566:	82 2f       	mov	r24, r18
  fe1568:	93 2f       	mov	r25, r19
  fe156a:	0f 90       	pop	r0
  fe156c:	0f 90       	pop	r0
  fe156e:	0f 90       	pop	r0
  fe1570:	0f 90       	pop	r0
  fe1572:	df 91       	pop	r29
  fe1574:	cf 91       	pop	r28
  fe1576:	08 95       	ret

00fe1578 <call_self>:
  fe1578:	ff df       	rcall	.-2      	; 0xfe1578 <call_self>
  fe157a:	08 95       	ret

00fe157c <call_simple>:
  fe157c:	64 df       	rcall	.-312    	; 0xfe1446 <return_arg1>
  fe157e:	08 95       	ret

00fe1580 <call_complex1>:
  fe1580:	8e ef       	ldi	r24, 0xFE	; 254
  fe1582:	90 e0       	ldi	r25, 0x00	; 0
  fe1584:	60 df       	rcall	.-320    	; 0xfe1446 <return_arg1>
  fe1586:	28 2f       	mov	r18, r24
  fe1588:	39 2f       	mov	r19, r25
  fe158a:	2f 5f       	subi	r18, 0xFF	; 255
  fe158c:	3f 4f       	sbci	r19, 0xFF	; 255
  fe158e:	82 2f       	mov	r24, r18
  fe1590:	93 2f       	mov	r25, r19
  fe1592:	08 95       	ret

00fe1594 <call_complex2>:
  fe1594:	cf 93       	push	r28
  fe1596:	df 93       	push	r29
  fe1598:	d6 2f       	mov	r29, r22
  fe159a:	c7 2f       	mov	r28, r23
  fe159c:	86 2f       	mov	r24, r22
  fe159e:	97 2f       	mov	r25, r23
  fe15a0:	52 df       	rcall	.-348    	; 0xfe1446 <return_arg1>
  fe15a2:	90 93 05 18 	sts	0x1805, r25
  fe15a6:	80 93 04 18 	sts	0x1804, r24
  fe15aa:	8d 2f       	mov	r24, r29
  fe15ac:	9c 2f       	mov	r25, r28
  fe15ae:	df 91       	pop	r29
  fe15b0:	cf 91       	pop	r28
  fe15b2:	08 95       	ret

00fe15b4 <call_pointer>:
  fe15b4:	e8 2f       	mov	r30, r24
  fe15b6:	f9 2f       	mov	r31, r25
  fe15b8:	09 95       	icall
  fe15ba:	08 95       	ret

00fe15bc <condition>:
  fe15bc:	86 17       	cp	r24, r22
  fe15be:	97 07       	cpc	r25, r23
  fe15c0:	11 f4       	brne	.+4      	; 0xfe15c6 <condition+0xa>
  fe15c2:	61 e0       	ldi	r22, 0x01	; 1
  fe15c4:	70 e0       	ldi	r23, 0x00	; 0
  fe15c6:	6f 5f       	subi	r22, 0xFF	; 255
  fe15c8:	7f 4f       	sbci	r23, 0xFF	; 255
  fe15ca:	86 2f       	mov	r24, r22
  fe15cc:	97 2f       	mov	r25, r23
  fe15ce:	08 95       	ret

00fe15d0 <loop>:
  fe15d0:	18 16       	cp	r1, r24
  fe15d2:	19 06       	cpc	r1, r25
  fe15d4:	64 f4       	brge	.+24     	; 0xfe15ee <loop+0x1e>
  fe15d6:	40 e0       	ldi	r20, 0x00	; 0
  fe15d8:	50 e0       	ldi	r21, 0x00	; 0
  fe15da:	20 e0       	ldi	r18, 0x00	; 0
  fe15dc:	30 e0       	ldi	r19, 0x00	; 0
  fe15de:	42 0f       	add	r20, r18
  fe15e0:	53 1f       	adc	r21, r19
  fe15e2:	2f 5f       	subi	r18, 0xFF	; 255
  fe15e4:	3f 4f       	sbci	r19, 0xFF	; 255
  fe15e6:	28 17       	cp	r18, r24
  fe15e8:	39 07       	cpc	r19, r25
  fe15ea:	c9 f7       	brne	.-14     	; 0xfe15de <loop+0xe>
  fe15ec:	02 c0       	rjmp	.+4      	; 0xfe15f2 <loop+0x22>
  fe15ee:	40 e0       	ldi	r20, 0x00	; 0
  fe15f0:	50 e0       	ldi	r21, 0x00	; 0
  fe15f2:	84 2f       	mov	r24, r20
  fe15f4:	95 2f       	mov	r25, r21
  fe15f6:	08 95       	ret

00fe15f8 <many_args>:
  fe15f8:	af 92       	push	r10
  fe15fa:	bf 92       	push	r11
  fe15fc:	ef 92       	push	r14
  fe15fe:	ff 92       	push	r15
  fe1600:	82 0f       	add	r24, r18
  fe1602:	93 1f       	adc	r25, r19
  fe1604:	e8 0e       	add	r14, r24
  fe1606:	f9 1e       	adc	r15, r25
  fe1608:	ae 0c       	add	r10, r14
  fe160a:	bf 1c       	adc	r11, r15
  fe160c:	8a 2d       	mov	r24, r10
  fe160e:	9b 2d       	mov	r25, r11
  fe1610:	ff 90       	pop	r15
  fe1612:	ef 90       	pop	r14
  fe1614:	bf 90       	pop	r11
  fe1616:	af 90       	pop	r10
  fe1618:	08 95       	ret

00fe161a <call_many_args>:
  fe161a:	af 92       	push	r10
  fe161c:	bf 92       	push	r11
  fe161e:	cf 92       	push	r12
  fe1620:	df 92       	push	r13
  fe1622:	ef 92       	push	r14
  fe1624:	ff 92       	push	r15
  fe1626:	0f 93       	push	r16
  fe1628:	1f 93       	push	r17
  fe162a:	0f 2e       	mov	r0, r31
  fe162c:	f7 e0       	ldi	r31, 0x07	; 7
  fe162e:	af 2e       	mov	r10, r31
  fe1630:	b1 2c       	mov	r11, r1
  fe1632:	f0 2d       	mov	r31, r0
  fe1634:	0f 2e       	mov	r0, r31
  fe1636:	f6 e0       	ldi	r31, 0x06	; 6
  fe1638:	cf 2e       	mov	r12, r31
  fe163a:	d1 2c       	mov	r13, r1
  fe163c:	f0 2d       	mov	r31, r0
  fe163e:	0f 2e       	mov	r0, r31
  fe1640:	f5 e0       	ldi	r31, 0x05	; 5
  fe1642:	ef 2e       	mov	r14, r31
  fe1644:	f1 2c       	mov	r15, r1
  fe1646:	f0 2d       	mov	r31, r0
  fe1648:	04 e0       	ldi	r16, 0x04	; 4
  fe164a:	10 e0       	ldi	r17, 0x00	; 0
  fe164c:	23 e0       	ldi	r18, 0x03	; 3
  fe164e:	30 e0       	ldi	r19, 0x00	; 0
  fe1650:	42 e0       	ldi	r20, 0x02	; 2
  fe1652:	50 e0       	ldi	r21, 0x00	; 0
  fe1654:	61 e0       	ldi	r22, 0x01	; 1
  fe1656:	70 e0       	ldi	r23, 0x00	; 0
  fe1658:	80 e0       	ldi	r24, 0x00	; 0
  fe165a:	90 e0       	ldi	r25, 0x00	; 0
  fe165c:	cd df       	rcall	.-102    	; 0xfe15f8 <many_args>
  fe165e:	1f 91       	pop	r17
  fe1660:	0f 91       	pop	r16
  fe1662:	ff 90       	pop	r15
  fe1664:	ef 90       	pop	r14
  fe1666:	df 90       	pop	r13
  fe1668:	cf 90       	pop	r12
  fe166a:	bf 90       	pop	r11
  fe166c:	af 90       	pop	r10
  fe166e:	08 95       	ret

00fe1670 <direct>:
  fe1670:	00 00       	nop
  fe1672:	08 95       	ret

00fe1674 <binary>:
	...
  fe1684:	08 95       	ret

00fe1686 <main>:
  fe1686:	80 e0       	ldi	r24, 0x00	; 0
  fe1688:	90 e0       	ldi	r25, 0x00	; 0
  fe168a:	08 95       	ret
  fe168c:	00 00       	nop
	...
