
h8300h-elf.x:     file format elf32-h8300


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	54 70       	rts	

00fe1402 <_return_zero>:
  fe1402:	1a 80       	sub.l	er0,er0
  fe1404:	54 70       	rts	

00fe1406 <_return_one>:
  fe1406:	1a 80       	sub.l	er0,er0
  fe1408:	88 01       	add.b	#0x1,r0l
  fe140a:	54 70       	rts	

00fe140c <_return_int_size>:
  fe140c:	1a 80       	sub.l	er0,er0
  fe140e:	88 04       	add.b	#0x4,r0l
  fe1410:	54 70       	rts	

00fe1412 <_return_pointer_size>:
  fe1412:	1a 80       	sub.l	er0,er0
  fe1414:	88 04       	add.b	#0x4,r0l
  fe1416:	54 70       	rts	

00fe1418 <_return_short_size>:
  fe1418:	1a 80       	sub.l	er0,er0
  fe141a:	88 02       	add.b	#0x2,r0l
  fe141c:	54 70       	rts	

00fe141e <_return_long_size>:
  fe141e:	1a 80       	sub.l	er0,er0
  fe1420:	88 04       	add.b	#0x4,r0l
  fe1422:	54 70       	rts	

00fe1424 <_return_short>:
  fe1424:	79 00 77 88 	mov.w	#0x7788,r0
  fe1428:	54 70       	rts	

00fe142a <_return_long>:
  fe142a:	7a 00 77 88 	mov.l	#0x778899aa,er0
  fe142e:	99 aa 
  fe1430:	54 70       	rts	

00fe1432 <_return_short_upper>:
  fe1432:	79 00 ff ee 	mov.w	#0xffee,r0
  fe1436:	54 70       	rts	

00fe1438 <_return_long_upper>:
  fe1438:	7a 00 ff ee 	mov.l	#0xffeeddcc,er0
  fe143c:	dd cc 
  fe143e:	54 70       	rts	

00fe1440 <_return_arg1>:
  fe1440:	54 70       	rts	

00fe1442 <_return_arg2>:
  fe1442:	0f 90       	mov.l	er1,er0
  fe1444:	54 70       	rts	

00fe1446 <_add>:
  fe1446:	0a 90       	add.l	er1,er0
  fe1448:	54 70       	rts	

00fe144a <_add3>:
  fe144a:	0a 90       	add.l	er1,er0
  fe144c:	0a a0       	add.l	er2,er0
  fe144e:	54 70       	rts	

00fe1450 <_add_two>:
  fe1450:	0b 80       	adds	#2,er0
  fe1452:	54 70       	rts	

00fe1454 <_inc>:
  fe1454:	0b 00       	adds	#1,er0
  fe1456:	54 70       	rts	

00fe1458 <_or>:
  fe1458:	01 f0 64 10 	or.l	er1,er0
  fe145c:	54 70       	rts	

00fe145e <_or_one>:
  fe145e:	c8 01       	or.b	#0x1,r0l
  fe1460:	54 70       	rts	

00fe1462 <_load>:
  fe1462:	01 00 69 00 	mov.l	@er0,er0
  fe1466:	54 70       	rts	

00fe1468 <_store>:
  fe1468:	1a a2       	sub.l	er2,er2
  fe146a:	8a ff       	add.b	#0xff,r2l
  fe146c:	01 00 69 82 	mov.l	er2,@er0
  fe1470:	54 70       	rts	

00fe1472 <_load_long>:
  fe1472:	01 00 69 00 	mov.l	@er0,er0
  fe1476:	54 70       	rts	

00fe1478 <_store_long>:
  fe1478:	7a 02 11 22 	mov.l	#0x11223344,er2
  fe147c:	33 44 
  fe147e:	01 00 69 82 	mov.l	er2,@er0
  fe1482:	54 70       	rts	

00fe1484 <_member>:
  fe1484:	1a a2       	sub.l	er2,er2
  fe1486:	8a 01       	add.b	#0x1,r2l
  fe1488:	01 00 6f 82 	mov.l	er2,@(0x4:16,er0)
  fe148c:	00 04 
  fe148e:	01 00 6f 00 	mov.l	@(0x8:16,er0),er0
  fe1492:	00 08 
  fe1494:	54 70       	rts	

00fe1496 <_get_static_value_addr>:
  fe1496:	7a 00 00 fe 	mov.l	#0xfe1804,er0
  fe149a:	18 04 
  fe149c:	54 70       	rts	

00fe149e <_get_static_value>:
  fe149e:	01 00 6b 20 	mov.l	@0xfe1804:32,er0
  fe14a2:	00 fe 18 04 
  fe14a6:	54 70       	rts	

00fe14a8 <_set_static_value>:
  fe14a8:	01 00 6b a0 	mov.l	er0,@0xfe1804:32
  fe14ac:	00 fe 18 04 
  fe14b0:	54 70       	rts	

00fe14b2 <_set_stack>:
  fe14b2:	7a 37 00 00 	sub.l	#0x8,er7
  fe14b6:	00 08 
  fe14b8:	1a a2       	sub.l	er2,er2
  fe14ba:	8a fe       	add.b	#0xfe,r2l
  fe14bc:	01 00 6f f2 	mov.l	er2,@(0x4:16,er7)
  fe14c0:	00 04 
  fe14c2:	fa ff       	mov.b	#0xff,r2l
  fe14c4:	01 00 69 f2 	mov.l	er2,@er7
  fe14c8:	0b 97       	adds	#4,er7
  fe14ca:	0b 97       	adds	#4,er7
  fe14cc:	54 70       	rts	

00fe14ce <_use_stack>:
  fe14ce:	7a 37 00 00 	sub.l	#0x8,er7
  fe14d2:	00 08 
  fe14d4:	1a a2       	sub.l	er2,er2
  fe14d6:	8a fe       	add.b	#0xfe,r2l
  fe14d8:	01 00 6f f2 	mov.l	er2,@(0x4:16,er7)
  fe14dc:	00 04 
  fe14de:	fa ff       	mov.b	#0xff,r2l
  fe14e0:	01 00 69 f2 	mov.l	er2,@er7
  fe14e4:	01 00 6f 70 	mov.l	@(0x4:16,er7),er0
  fe14e8:	00 04 
  fe14ea:	01 00 69 72 	mov.l	@er7,er2
  fe14ee:	0a a0       	add.l	er2,er0
  fe14f0:	0b 97       	adds	#4,er7
  fe14f2:	0b 97       	adds	#4,er7
  fe14f4:	54 70       	rts	

00fe14f6 <_call_self>:
  fe14f6:	5e fe 14 f6 	jsr	@0xfe14f6:24
  fe14fa:	54 70       	rts	

00fe14fc <_call_simple>:
  fe14fc:	5e fe 14 40 	jsr	@0xfe1440:24
  fe1500:	54 70       	rts	

00fe1502 <_call_complex1>:
  fe1502:	1a 80       	sub.l	er0,er0
  fe1504:	88 fe       	add.b	#0xfe,r0l
  fe1506:	5e fe 14 40 	jsr	@0xfe1440:24
  fe150a:	0b 00       	adds	#1,er0
  fe150c:	54 70       	rts	

00fe150e <_call_complex2>:
  fe150e:	01 00 6d f4 	mov.l	er4,@-er7
  fe1512:	0f 94       	mov.l	er1,er4
  fe1514:	0f 90       	mov.l	er1,er0
  fe1516:	5e fe 14 40 	jsr	@0xfe1440:24
  fe151a:	01 00 6b a0 	mov.l	er0,@0xfe1804:32
  fe151e:	00 fe 18 04 
  fe1522:	0f c0       	mov.l	er4,er0
  fe1524:	01 00 6d 74 	mov.l	@er7+,er4
  fe1528:	54 70       	rts	

00fe152a <_call_pointer>:
  fe152a:	5d 00       	jsr	@er0
  fe152c:	54 70       	rts	

00fe152e <_condition>:
  fe152e:	1f 90       	cmp.l	er1,er0
  fe1530:	46 04       	bne	.+4 (0xfe1536)
  fe1532:	1a 91       	sub.l	er1,er1
  fe1534:	89 01       	add.b	#0x1,r1l

00fe1536 <.L36>:
  fe1536:	0f 90       	mov.l	er1,er0
  fe1538:	0b 00       	adds	#1,er0
  fe153a:	54 70       	rts	

00fe153c <_loop>:
  fe153c:	0f 80       	mov.l	er0,er0
  fe153e:	4f 0e       	ble	.+14 (0xfe154e)
  fe1540:	1a b3       	sub.l	er3,er3
  fe1542:	1a a2       	sub.l	er2,er2

00fe1544 <.L40>:
  fe1544:	0a a3       	add.l	er2,er3
  fe1546:	0b 02       	adds	#1,er2
  fe1548:	1f 82       	cmp.l	er0,er2
  fe154a:	46 f8       	bne	.-8 (0xfe1544)
  fe154c:	40 02       	bra	.+2 (0xfe1550)

00fe154e <.L41>:
  fe154e:	1a b3       	sub.l	er3,er3

00fe1550 <.L39>:
  fe1550:	0f b0       	mov.l	er3,er0
  fe1552:	54 70       	rts	

00fe1554 <_many_args>:
  fe1554:	01 00 6f 72 	mov.l	@(0x4:16,er7),er2
  fe1558:	00 04 
  fe155a:	0a a0       	add.l	er2,er0
  fe155c:	01 00 6f 73 	mov.l	@(0xc:16,er7),er3
  fe1560:	00 0c 
  fe1562:	0a b0       	add.l	er3,er0
  fe1564:	01 00 6f 73 	mov.l	@(0x14:16,er7),er3
  fe1568:	00 14 
  fe156a:	0a b0       	add.l	er3,er0
  fe156c:	54 70       	rts	

00fe156e <_call_many_args>:
  fe156e:	1a a2       	sub.l	er2,er2
  fe1570:	8a 07       	add.b	#0x7,r2l
  fe1572:	01 00 6d f2 	mov.l	er2,@-er7
  fe1576:	fa 06       	mov.b	#0x6,r2l
  fe1578:	01 00 6d f2 	mov.l	er2,@-er7
  fe157c:	fa 05       	mov.b	#0x5,r2l
  fe157e:	01 00 6d f2 	mov.l	er2,@-er7
  fe1582:	fa 04       	mov.b	#0x4,r2l
  fe1584:	01 00 6d f2 	mov.l	er2,@-er7
  fe1588:	fa 03       	mov.b	#0x3,r2l
  fe158a:	01 00 6d f2 	mov.l	er2,@-er7
  fe158e:	fa 02       	mov.b	#0x2,r2l
  fe1590:	1a 91       	sub.l	er1,er1
  fe1592:	89 01       	add.b	#0x1,r1l
  fe1594:	1a 80       	sub.l	er0,er0
  fe1596:	5e fe 15 54 	jsr	@0xfe1554:24
  fe159a:	7a 17 00 00 	add.l	#0x14,er7
  fe159e:	00 14 
  fe15a0:	54 70       	rts	

00fe15a2 <_direct>:
  fe15a2:	00 00       	nop	
  fe15a4:	54 70       	rts	

00fe15a6 <_binary>:
	...
  fe15b2:	00 00       	nop	
  fe15b4:	54 70       	rts	

00fe15b6 <_main>:
  fe15b6:	1a 80       	sub.l	er0,er0
  fe15b8:	54 70       	rts	
  fe15ba:	00 00       	nop	
  fe15bc:	00 00       	nop	
	...
