
h8300-elf.x:     file format elf32-h8300


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	54 70       	rts	

00fe1402 <_return_zero>:
  fe1402:	19 00       	sub.w	r0,r0
  fe1404:	54 70       	rts	

00fe1406 <_return_one>:
  fe1406:	79 00 00 01 	mov.w	#0x1,r0
  fe140a:	54 70       	rts	

00fe140c <_return_int_size>:
  fe140c:	79 00 00 02 	mov.w	#0x2,r0
  fe1410:	54 70       	rts	

00fe1412 <_return_pointer_size>:
  fe1412:	79 00 00 02 	mov.w	#0x2,r0
  fe1416:	54 70       	rts	

00fe1418 <_return_short_size>:
  fe1418:	79 00 00 02 	mov.w	#0x2,r0
  fe141c:	54 70       	rts	

00fe141e <_return_long_size>:
  fe141e:	79 00 00 04 	mov.w	#0x4,r0
  fe1422:	54 70       	rts	

00fe1424 <_return_short>:
  fe1424:	79 00 77 88 	mov.w	#0x7788,r0
  fe1428:	54 70       	rts	

00fe142a <_return_long>:
  fe142a:	79 00 77 88 	mov.w	#0x7788,r0
  fe142e:	79 01 99 aa 	mov.w	#0x99aa,r1
  fe1432:	54 70       	rts	

00fe1434 <_return_short_upper>:
  fe1434:	79 00 ff ee 	mov.w	#0xffee,r0
  fe1438:	54 70       	rts	

00fe143a <_return_long_upper>:
  fe143a:	79 00 ff ee 	mov.w	#0xffee,r0
  fe143e:	79 01 dd cc 	mov.w	#0xddcc,r1
  fe1442:	54 70       	rts	

00fe1444 <_return_arg1>:
  fe1444:	54 70       	rts	

00fe1446 <_return_arg2>:
  fe1446:	0d 10       	mov.w	r1,r0
  fe1448:	54 70       	rts	

00fe144a <_add>:
  fe144a:	09 10       	add.w	r1,r0
  fe144c:	54 70       	rts	

00fe144e <_add3>:
  fe144e:	09 10       	add.w	r1,r0
  fe1450:	09 20       	add.w	r2,r0
  fe1452:	54 70       	rts	

00fe1454 <_add_two>:
  fe1454:	0b 80       	adds	#2,r0
  fe1456:	54 70       	rts	

00fe1458 <_inc>:
  fe1458:	0b 00       	adds	#1,r0
  fe145a:	54 70       	rts	

00fe145c <_or>:
  fe145c:	14 98       	or.b	r1l,r0l
  fe145e:	14 10       	or.b	r1h,r0h
  fe1460:	54 70       	rts	

00fe1462 <_or_one>:
  fe1462:	c8 01       	or.b	#0x1,r0l
  fe1464:	54 70       	rts	

00fe1466 <_load>:
  fe1466:	69 00       	mov.w	@r0,r0
  fe1468:	54 70       	rts	

00fe146a <_store>:
  fe146a:	79 02 00 ff 	mov.w	#0xff,r2
  fe146e:	69 82       	mov.w	r2,@r0
  fe1470:	54 70       	rts	

00fe1472 <_load_long>:
  fe1472:	6f 01 00 02 	mov.w	@(0x2:16,r0),r1
  fe1476:	69 00       	mov.w	@r0,r0
  fe1478:	54 70       	rts	

00fe147a <_store_long>:
  fe147a:	79 02 11 22 	mov.w	#0x1122,r2
  fe147e:	79 03 33 44 	mov.w	#0x3344,r3
  fe1482:	69 82       	mov.w	r2,@r0
  fe1484:	6f 83 00 02 	mov.w	r3,@(0x2:16,r0)
  fe1488:	54 70       	rts	

00fe148a <_member>:
  fe148a:	79 02 00 01 	mov.w	#0x1,r2
  fe148e:	6f 82 00 02 	mov.w	r2,@(0x2:16,r0)
  fe1492:	6f 00 00 04 	mov.w	@(0x4:16,r0),r0
  fe1496:	54 70       	rts	

00fe1498 <_get_static_value_addr>:
  fe1498:	79 00 18 04 	mov.w	#0x1804,r0
  fe149c:	54 70       	rts	

00fe149e <_get_static_value>:
  fe149e:	6b 00 18 04 	mov.w	@0x1804:16,r0
  fe14a2:	54 70       	rts	

00fe14a4 <_set_static_value>:
  fe14a4:	6b 80 18 04 	mov.w	r0,@0x1804:16
  fe14a8:	54 70       	rts	

00fe14aa <_set_stack>:
  fe14aa:	1b 87       	subs	#2,r7
  fe14ac:	1b 87       	subs	#2,r7
  fe14ae:	79 02 00 fe 	mov.w	#0xfe,r2
  fe14b2:	6f f2 00 02 	mov.w	r2,@(0x2:16,r7)
  fe14b6:	fa ff       	mov.b	#0xff,r2l
  fe14b8:	69 f2       	mov.w	r2,@r7
  fe14ba:	0b 87       	adds	#2,r7
  fe14bc:	0b 87       	adds	#2,r7
  fe14be:	54 70       	rts	

00fe14c0 <_use_stack>:
  fe14c0:	1b 87       	subs	#2,r7
  fe14c2:	1b 87       	subs	#2,r7
  fe14c4:	79 02 00 fe 	mov.w	#0xfe,r2
  fe14c8:	6f f2 00 02 	mov.w	r2,@(0x2:16,r7)
  fe14cc:	fa ff       	mov.b	#0xff,r2l
  fe14ce:	69 f2       	mov.w	r2,@r7
  fe14d0:	6f 70 00 02 	mov.w	@(0x2:16,r7),r0
  fe14d4:	69 72       	mov.w	@r7,r2
  fe14d6:	09 20       	add.w	r2,r0
  fe14d8:	0b 87       	adds	#2,r7
  fe14da:	0b 87       	adds	#2,r7
  fe14dc:	54 70       	rts	

00fe14de <_call_self>:
  fe14de:	5e fe 14 de 	jsr	@0xfe14de:24
  fe14e2:	54 70       	rts	

00fe14e4 <_call_simple>:
  fe14e4:	5e fe 14 44 	jsr	@0xfe1444:24
  fe14e8:	54 70       	rts	

00fe14ea <_call_complex1>:
  fe14ea:	79 00 00 fe 	mov.w	#0xfe,r0
  fe14ee:	5e fe 14 44 	jsr	@0xfe1444:24
  fe14f2:	0b 00       	adds	#1,r0
  fe14f4:	54 70       	rts	

00fe14f6 <_call_complex2>:
  fe14f6:	6d f4       	mov.w	r4,@-r7
  fe14f8:	0d 14       	mov.w	r1,r4
  fe14fa:	0d 10       	mov.w	r1,r0
  fe14fc:	5e fe 14 44 	jsr	@0xfe1444:24
  fe1500:	6b 80 18 04 	mov.w	r0,@0x1804:16
  fe1504:	0d 40       	mov.w	r4,r0
  fe1506:	6d 74       	mov.w	@r7+,r4
  fe1508:	54 70       	rts	

00fe150a <_call_pointer>:
  fe150a:	5d 00       	jsr	@r0
  fe150c:	54 70       	rts	

00fe150e <_condition>:
  fe150e:	1d 10       	cmp.w	r1,r0
  fe1510:	46 04       	bne	.+4 (0xfe1516)
  fe1512:	79 01 00 01 	mov.w	#0x1,r1

00fe1516 <.L36>:
  fe1516:	0d 10       	mov.w	r1,r0
  fe1518:	0b 00       	adds	#1,r0
  fe151a:	54 70       	rts	

00fe151c <_loop>:
  fe151c:	0d 00       	mov.w	r0,r0
  fe151e:	4f 0e       	ble	.+14 (0xfe152e)
  fe1520:	19 33       	sub.w	r3,r3
  fe1522:	19 22       	sub.w	r2,r2

00fe1524 <.L40>:
  fe1524:	09 23       	add.w	r2,r3
  fe1526:	0b 02       	adds	#1,r2
  fe1528:	1d 02       	cmp.w	r0,r2
  fe152a:	46 f8       	bne	.-8 (0xfe1524)
  fe152c:	40 02       	bra	.+2 (0xfe1530)

00fe152e <.L41>:
  fe152e:	19 33       	sub.w	r3,r3

00fe1530 <.L39>:
  fe1530:	0d 30       	mov.w	r3,r0
  fe1532:	54 70       	rts	

00fe1534 <_many_args>:
  fe1534:	6f 72 00 02 	mov.w	@(0x2:16,r7),r2
  fe1538:	09 20       	add.w	r2,r0
  fe153a:	6f 73 00 06 	mov.w	@(0x6:16,r7),r3
  fe153e:	09 30       	add.w	r3,r0
  fe1540:	6f 73 00 0a 	mov.w	@(0xa:16,r7),r3
  fe1544:	09 30       	add.w	r3,r0
  fe1546:	54 70       	rts	

00fe1548 <_call_many_args>:
  fe1548:	79 02 00 07 	mov.w	#0x7,r2
  fe154c:	6d f2       	mov.w	r2,@-r7
  fe154e:	fa 06       	mov.b	#0x6,r2l
  fe1550:	6d f2       	mov.w	r2,@-r7
  fe1552:	fa 05       	mov.b	#0x5,r2l
  fe1554:	6d f2       	mov.w	r2,@-r7
  fe1556:	fa 04       	mov.b	#0x4,r2l
  fe1558:	6d f2       	mov.w	r2,@-r7
  fe155a:	fa 03       	mov.b	#0x3,r2l
  fe155c:	6d f2       	mov.w	r2,@-r7
  fe155e:	fa 02       	mov.b	#0x2,r2l
  fe1560:	79 01 00 01 	mov.w	#0x1,r1
  fe1564:	19 00       	sub.w	r0,r0
  fe1566:	5e fe 15 34 	jsr	@0xfe1534:24
  fe156a:	0b 87       	adds	#2,r7
  fe156c:	0b 87       	adds	#2,r7
  fe156e:	0b 87       	adds	#2,r7
  fe1570:	0b 87       	adds	#2,r7
  fe1572:	0b 87       	adds	#2,r7
  fe1574:	54 70       	rts	

00fe1576 <_direct>:
  fe1576:	00 00       	nop	
  fe1578:	54 70       	rts	

00fe157a <_binary>:
	...
  fe1582:	54 70       	rts	

00fe1584 <_main>:
  fe1584:	19 00       	sub.w	r0,r0
  fe1586:	54 70       	rts	
	...
