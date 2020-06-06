
avr8-elf.x:     file format elf32-avr


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	08 95       	ret

00fe1402 <return_zero>:
  fe1402:	80 e0       	ldi	r24, 0x00	; 0
  fe1404:	08 95       	ret

00fe1406 <return_one>:
  fe1406:	81 e0       	ldi	r24, 0x01	; 1
  fe1408:	08 95       	ret

00fe140a <return_int_size>:
  fe140a:	81 e0       	ldi	r24, 0x01	; 1
  fe140c:	08 95       	ret

00fe140e <return_pointer_size>:
  fe140e:	82 e0       	ldi	r24, 0x02	; 2
  fe1410:	08 95       	ret

00fe1412 <return_short_size>:
  fe1412:	81 e0       	ldi	r24, 0x01	; 1
  fe1414:	08 95       	ret

00fe1416 <return_long_size>:
  fe1416:	82 e0       	ldi	r24, 0x02	; 2
  fe1418:	08 95       	ret

00fe141a <return_short>:
  fe141a:	88 e8       	ldi	r24, 0x88	; 136
  fe141c:	08 95       	ret

00fe141e <return_long>:
  fe141e:	8a ea       	ldi	r24, 0xAA	; 170
  fe1420:	99 e9       	ldi	r25, 0x99	; 153
  fe1422:	08 95       	ret

00fe1424 <return_short_upper>:
  fe1424:	8e ee       	ldi	r24, 0xEE	; 238
  fe1426:	08 95       	ret

00fe1428 <return_long_upper>:
  fe1428:	8c ec       	ldi	r24, 0xCC	; 204
  fe142a:	9d ed       	ldi	r25, 0xDD	; 221
  fe142c:	08 95       	ret

00fe142e <return_arg1>:
  fe142e:	08 95       	ret

00fe1430 <return_arg2>:
  fe1430:	86 2f       	mov	r24, r22
  fe1432:	08 95       	ret

00fe1434 <add>:
  fe1434:	86 0f       	add	r24, r22
  fe1436:	08 95       	ret

00fe1438 <add3>:
  fe1438:	86 0f       	add	r24, r22
  fe143a:	84 0f       	add	r24, r20
  fe143c:	08 95       	ret

00fe143e <add_two>:
  fe143e:	8e 5f       	subi	r24, 0xFE	; 254
  fe1440:	08 95       	ret

00fe1442 <inc>:
  fe1442:	8f 5f       	subi	r24, 0xFF	; 255
  fe1444:	08 95       	ret

00fe1446 <or>:
  fe1446:	86 2b       	or	r24, r22
  fe1448:	08 95       	ret

00fe144a <or_one>:
  fe144a:	81 60       	ori	r24, 0x01	; 1
  fe144c:	08 95       	ret

00fe144e <load>:
  fe144e:	e8 2f       	mov	r30, r24
  fe1450:	f9 2f       	mov	r31, r25
  fe1452:	80 81       	ld	r24, Z
  fe1454:	08 95       	ret

00fe1456 <store>:
  fe1456:	2f ef       	ldi	r18, 0xFF	; 255
  fe1458:	e8 2f       	mov	r30, r24
  fe145a:	f9 2f       	mov	r31, r25
  fe145c:	20 83       	st	Z, r18
  fe145e:	08 95       	ret

00fe1460 <load_long>:
  fe1460:	e8 2f       	mov	r30, r24
  fe1462:	f9 2f       	mov	r31, r25
  fe1464:	20 81       	ld	r18, Z
  fe1466:	31 81       	ldd	r19, Z+1	; 0x01
  fe1468:	82 2f       	mov	r24, r18
  fe146a:	93 2f       	mov	r25, r19
  fe146c:	08 95       	ret

00fe146e <store_long>:
  fe146e:	24 e4       	ldi	r18, 0x44	; 68
  fe1470:	33 e3       	ldi	r19, 0x33	; 51
  fe1472:	e8 2f       	mov	r30, r24
  fe1474:	f9 2f       	mov	r31, r25
  fe1476:	31 83       	std	Z+1, r19	; 0x01
  fe1478:	20 83       	st	Z, r18
  fe147a:	08 95       	ret

00fe147c <member>:
  fe147c:	21 e0       	ldi	r18, 0x01	; 1
  fe147e:	e8 2f       	mov	r30, r24
  fe1480:	f9 2f       	mov	r31, r25
  fe1482:	21 83       	std	Z+1, r18	; 0x01
  fe1484:	82 81       	ldd	r24, Z+2	; 0x02
  fe1486:	08 95       	ret

00fe1488 <get_static_value_addr>:
  fe1488:	82 e0       	ldi	r24, 0x02	; 2
  fe148a:	98 e1       	ldi	r25, 0x18	; 24
  fe148c:	08 95       	ret

00fe148e <get_static_value>:
  fe148e:	80 91 02 18 	lds	r24, 0x1802
  fe1492:	08 95       	ret

00fe1494 <set_static_value>:
  fe1494:	80 93 02 18 	sts	0x1802, r24
  fe1498:	08 95       	ret

00fe149a <set_stack>:
  fe149a:	cf 93       	push	r28
  fe149c:	df 93       	push	r29
  fe149e:	00 d0       	rcall	.+0      	; 0xfe14a0 <set_stack+0x6>
  fe14a0:	cd b7       	in	r28, 0x3d	; 61
  fe14a2:	de b7       	in	r29, 0x3e	; 62
  fe14a4:	8e ef       	ldi	r24, 0xFE	; 254
  fe14a6:	89 83       	std	Y+1, r24	; 0x01
  fe14a8:	8f ef       	ldi	r24, 0xFF	; 255
  fe14aa:	8a 83       	std	Y+2, r24	; 0x02
  fe14ac:	0f 90       	pop	r0
  fe14ae:	0f 90       	pop	r0
  fe14b0:	df 91       	pop	r29
  fe14b2:	cf 91       	pop	r28
  fe14b4:	08 95       	ret

00fe14b6 <use_stack>:
  fe14b6:	cf 93       	push	r28
  fe14b8:	df 93       	push	r29
  fe14ba:	00 d0       	rcall	.+0      	; 0xfe14bc <use_stack+0x6>
  fe14bc:	cd b7       	in	r28, 0x3d	; 61
  fe14be:	de b7       	in	r29, 0x3e	; 62
  fe14c0:	8e ef       	ldi	r24, 0xFE	; 254
  fe14c2:	89 83       	std	Y+1, r24	; 0x01
  fe14c4:	8f ef       	ldi	r24, 0xFF	; 255
  fe14c6:	8a 83       	std	Y+2, r24	; 0x02
  fe14c8:	99 81       	ldd	r25, Y+1	; 0x01
  fe14ca:	8a 81       	ldd	r24, Y+2	; 0x02
  fe14cc:	89 0f       	add	r24, r25
  fe14ce:	0f 90       	pop	r0
  fe14d0:	0f 90       	pop	r0
  fe14d2:	df 91       	pop	r29
  fe14d4:	cf 91       	pop	r28
  fe14d6:	08 95       	ret

00fe14d8 <call_self>:
  fe14d8:	ff df       	rcall	.-2      	; 0xfe14d8 <call_self>
  fe14da:	08 95       	ret

00fe14dc <call_simple>:
  fe14dc:	a8 df       	rcall	.-176    	; 0xfe142e <return_arg1>
  fe14de:	08 95       	ret

00fe14e0 <call_complex1>:
  fe14e0:	8e ef       	ldi	r24, 0xFE	; 254
  fe14e2:	a5 df       	rcall	.-182    	; 0xfe142e <return_arg1>
  fe14e4:	8f 5f       	subi	r24, 0xFF	; 255
  fe14e6:	08 95       	ret

00fe14e8 <call_complex2>:
  fe14e8:	cf 93       	push	r28
  fe14ea:	c6 2f       	mov	r28, r22
  fe14ec:	86 2f       	mov	r24, r22
  fe14ee:	9f df       	rcall	.-194    	; 0xfe142e <return_arg1>
  fe14f0:	80 93 02 18 	sts	0x1802, r24
  fe14f4:	8c 2f       	mov	r24, r28
  fe14f6:	cf 91       	pop	r28
  fe14f8:	08 95       	ret

00fe14fa <call_pointer>:
  fe14fa:	e8 2f       	mov	r30, r24
  fe14fc:	f9 2f       	mov	r31, r25
  fe14fe:	09 95       	icall
  fe1500:	08 95       	ret

00fe1502 <condition>:
  fe1502:	86 13       	cpse	r24, r22
  fe1504:	01 c0       	rjmp	.+2      	; 0xfe1508 <condition+0x6>
  fe1506:	61 e0       	ldi	r22, 0x01	; 1
  fe1508:	86 2f       	mov	r24, r22
  fe150a:	8f 5f       	subi	r24, 0xFF	; 255
  fe150c:	08 95       	ret

00fe150e <loop>:
  fe150e:	28 2f       	mov	r18, r24
  fe1510:	18 16       	cp	r1, r24
  fe1512:	3c f4       	brge	.+14     	; 0xfe1522 <loop+0x14>
  fe1514:	80 e0       	ldi	r24, 0x00	; 0
  fe1516:	90 e0       	ldi	r25, 0x00	; 0
  fe1518:	89 0f       	add	r24, r25
  fe151a:	9f 5f       	subi	r25, 0xFF	; 255
  fe151c:	92 13       	cpse	r25, r18
  fe151e:	fc cf       	rjmp	.-8      	; 0xfe1518 <loop+0xa>
  fe1520:	08 95       	ret
  fe1522:	80 e0       	ldi	r24, 0x00	; 0
  fe1524:	08 95       	ret

00fe1526 <many_args>:
  fe1526:	af 92       	push	r10
  fe1528:	ef 92       	push	r14
  fe152a:	82 0f       	add	r24, r18
  fe152c:	8e 0d       	add	r24, r14
  fe152e:	8a 0d       	add	r24, r10
  fe1530:	ef 90       	pop	r14
  fe1532:	af 90       	pop	r10
  fe1534:	08 95       	ret

00fe1536 <call_many_args>:
  fe1536:	af 92       	push	r10
  fe1538:	cf 92       	push	r12
  fe153a:	ef 92       	push	r14
  fe153c:	0f 93       	push	r16
  fe153e:	0f 2e       	mov	r0, r31
  fe1540:	f7 e0       	ldi	r31, 0x07	; 7
  fe1542:	af 2e       	mov	r10, r31
  fe1544:	f0 2d       	mov	r31, r0
  fe1546:	0f 2e       	mov	r0, r31
  fe1548:	f6 e0       	ldi	r31, 0x06	; 6
  fe154a:	cf 2e       	mov	r12, r31
  fe154c:	f0 2d       	mov	r31, r0
  fe154e:	0f 2e       	mov	r0, r31
  fe1550:	f5 e0       	ldi	r31, 0x05	; 5
  fe1552:	ef 2e       	mov	r14, r31
  fe1554:	f0 2d       	mov	r31, r0
  fe1556:	04 e0       	ldi	r16, 0x04	; 4
  fe1558:	23 e0       	ldi	r18, 0x03	; 3
  fe155a:	42 e0       	ldi	r20, 0x02	; 2
  fe155c:	61 e0       	ldi	r22, 0x01	; 1
  fe155e:	80 e0       	ldi	r24, 0x00	; 0
  fe1560:	e2 df       	rcall	.-60     	; 0xfe1526 <many_args>
  fe1562:	0f 91       	pop	r16
  fe1564:	ef 90       	pop	r14
  fe1566:	cf 90       	pop	r12
  fe1568:	af 90       	pop	r10
  fe156a:	08 95       	ret

00fe156c <direct>:
  fe156c:	00 00       	nop
  fe156e:	08 95       	ret

00fe1570 <binary>:
  fe1570:	00 00       	nop
  fe1572:	00 00       	nop
  fe1574:	08 95       	ret

00fe1576 <main>:
  fe1576:	80 e0       	ldi	r24, 0x00	; 0
  fe1578:	08 95       	ret
  fe157a:	00 00       	nop
  fe157c:	00 00       	nop
	...
