
sh-elf.x:     file format elf32-sh


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	00 0b       	rts	
  fe1402:	00 09       	nop	

00fe1404 <_return_zero>:
  fe1404:	00 0b       	rts	
  fe1406:	e0 00       	mov	#0,r0

00fe1408 <_return_one>:
  fe1408:	00 0b       	rts	
  fe140a:	e0 01       	mov	#1,r0

00fe140c <_return_int_size>:
  fe140c:	00 0b       	rts	
  fe140e:	e0 04       	mov	#4,r0

00fe1410 <_return_pointer_size>:
  fe1410:	00 0b       	rts	
  fe1412:	e0 04       	mov	#4,r0

00fe1414 <_return_short_size>:
  fe1414:	00 0b       	rts	
  fe1416:	e0 02       	mov	#2,r0

00fe1418 <_return_long_size>:
  fe1418:	00 0b       	rts	
  fe141a:	e0 04       	mov	#4,r0

00fe141c <_return_short>:
  fe141c:	90 01       	mov.w	fe1422 <_return_short+0x6>,r0	! 7788
  fe141e:	00 0b       	rts	
  fe1420:	00 09       	nop	
  fe1422:	77 88       	add	#-120,r7

00fe1424 <_return_long>:
  fe1424:	d0 01       	mov.l	fe142c <_return_long+0x8>,r0	! 778899aa
  fe1426:	00 0b       	rts	
  fe1428:	00 09       	nop	
  fe142a:	00 09       	nop	
  fe142c:	77 88       	add	#-120,r7
  fe142e:	99 aa       	mov.w	fe1586 <_call_many_args+0x4>,r9	! e104

00fe1430 <_return_short_upper>:
  fe1430:	00 0b       	rts	
  fe1432:	e0 ee       	mov	#-18,r0

00fe1434 <_return_long_upper>:
  fe1434:	d0 01       	mov.l	fe143c <_return_long_upper+0x8>,r0	! ffeeddcc
  fe1436:	00 0b       	rts	
  fe1438:	00 09       	nop	
  fe143a:	00 09       	nop	
  fe143c:	ff ee       	.word 0xffee
  fe143e:	dd cc       	mov.l	fe1770 <_erodata+0x15c>,r13

00fe1440 <_return_arg1>:
  fe1440:	00 0b       	rts	
  fe1442:	60 43       	mov	r4,r0

00fe1444 <_return_arg2>:
  fe1444:	00 0b       	rts	
  fe1446:	60 53       	mov	r5,r0

00fe1448 <_add>:
  fe1448:	60 43       	mov	r4,r0
  fe144a:	00 0b       	rts	
  fe144c:	30 5c       	add	r5,r0

00fe144e <_add3>:
  fe144e:	35 4c       	add	r4,r5
  fe1450:	60 53       	mov	r5,r0
  fe1452:	00 0b       	rts	
  fe1454:	30 6c       	add	r6,r0

00fe1456 <_add_two>:
  fe1456:	60 43       	mov	r4,r0
  fe1458:	00 0b       	rts	
  fe145a:	70 02       	add	#2,r0

00fe145c <_inc>:
  fe145c:	60 43       	mov	r4,r0
  fe145e:	00 0b       	rts	
  fe1460:	70 01       	add	#1,r0

00fe1462 <_or>:
  fe1462:	60 53       	mov	r5,r0
  fe1464:	00 0b       	rts	
  fe1466:	20 4b       	or	r4,r0

00fe1468 <_or_one>:
  fe1468:	60 43       	mov	r4,r0
  fe146a:	00 0b       	rts	
  fe146c:	cb 01       	or	#1,r0

00fe146e <_load>:
  fe146e:	60 42       	mov.l	@r4,r0
  fe1470:	00 0b       	rts	
  fe1472:	00 09       	nop	

00fe1474 <_store>:
  fe1474:	91 02       	mov.w	fe147c <_store+0x8>,r1	! ff
  fe1476:	24 12       	mov.l	r1,@r4
  fe1478:	00 0b       	rts	
  fe147a:	00 09       	nop	
  fe147c:	00 ff       	.word 0x00ff

00fe147e <_load_long>:
  fe147e:	60 42       	mov.l	@r4,r0
  fe1480:	00 0b       	rts	
  fe1482:	00 09       	nop	

00fe1484 <_store_long>:
  fe1484:	d1 01       	mov.l	fe148c <_store_long+0x8>,r1	! 11223344
  fe1486:	24 12       	mov.l	r1,@r4
  fe1488:	00 0b       	rts	
  fe148a:	00 09       	nop	
  fe148c:	11 22       	mov.l	r2,@(8,r1)
  fe148e:	33 44       	div1	r4,r3

00fe1490 <_member>:
  fe1490:	e1 01       	mov	#1,r1
  fe1492:	14 11       	mov.l	r1,@(4,r4)
  fe1494:	00 0b       	rts	
  fe1496:	50 42       	mov.l	@(8,r4),r0

00fe1498 <_get_static_value_addr>:
  fe1498:	d0 01       	mov.l	fe14a0 <_get_static_value_addr+0x8>,r0	! fe1804 <_static_value>
  fe149a:	00 0b       	rts	
  fe149c:	00 09       	nop	
  fe149e:	00 09       	nop	
  fe14a0:	00 fe       	mov.l	@(r0,r15),r0
  fe14a2:	18 04       	mov.l	r0,@(16,r8)

00fe14a4 <_get_static_value>:
  fe14a4:	d1 01       	mov.l	fe14ac <_get_static_value+0x8>,r1	! fe1804 <_static_value>
  fe14a6:	00 0b       	rts	
  fe14a8:	60 12       	mov.l	@r1,r0
  fe14aa:	00 09       	nop	
  fe14ac:	00 fe       	mov.l	@(r0,r15),r0
  fe14ae:	18 04       	mov.l	r0,@(16,r8)

00fe14b0 <_set_static_value>:
  fe14b0:	d1 01       	mov.l	fe14b8 <_set_static_value+0x8>,r1	! fe1804 <_static_value>
  fe14b2:	00 0b       	rts	
  fe14b4:	21 42       	mov.l	r4,@r1
  fe14b6:	00 09       	nop	
  fe14b8:	00 fe       	mov.l	@(r0,r15),r0
  fe14ba:	18 04       	mov.l	r0,@(16,r8)

00fe14bc <_set_stack>:
  fe14bc:	7f f8       	add	#-8,r15
  fe14be:	91 04       	mov.w	fe14ca <_set_stack+0xe>,r1	! fe
  fe14c0:	1f 11       	mov.l	r1,@(4,r15)
  fe14c2:	71 01       	add	#1,r1
  fe14c4:	2f 12       	mov.l	r1,@r15
  fe14c6:	00 0b       	rts	
  fe14c8:	7f 08       	add	#8,r15
  fe14ca:	00 fe       	mov.l	@(r0,r15),r0

00fe14cc <_use_stack>:
  fe14cc:	7f f8       	add	#-8,r15
  fe14ce:	91 07       	mov.w	fe14e0 <_use_stack+0x14>,r1	! fe
  fe14d0:	1f 11       	mov.l	r1,@(4,r15)
  fe14d2:	71 01       	add	#1,r1
  fe14d4:	2f 12       	mov.l	r1,@r15
  fe14d6:	50 f1       	mov.l	@(4,r15),r0
  fe14d8:	61 f2       	mov.l	@r15,r1
  fe14da:	30 1c       	add	r1,r0
  fe14dc:	00 0b       	rts	
  fe14de:	7f 08       	add	#8,r15
  fe14e0:	00 fe       	mov.l	@(r0,r15),r0

00fe14e2 <_call_self>:
  fe14e2:	4f 22       	sts.l	pr,@-r15
  fe14e4:	d1 02       	mov.l	fe14f0 <_call_self+0xe>,r1	! fe14e2 <_call_self>
  fe14e6:	41 0b       	jsr	@r1
  fe14e8:	00 09       	nop	
  fe14ea:	4f 26       	lds.l	@r15+,pr
  fe14ec:	00 0b       	rts	
  fe14ee:	00 09       	nop	
  fe14f0:	00 fe       	mov.l	@(r0,r15),r0
  fe14f2:	14 e2       	mov.l	r14,@(8,r4)

00fe14f4 <_call_simple>:
  fe14f4:	4f 22       	sts.l	pr,@-r15
  fe14f6:	d0 03       	mov.l	fe1504 <_call_simple+0x10>,r0	! fe1440 <_return_arg1>
  fe14f8:	40 0b       	jsr	@r0
  fe14fa:	00 09       	nop	
  fe14fc:	4f 26       	lds.l	@r15+,pr
  fe14fe:	00 0b       	rts	
  fe1500:	00 09       	nop	
  fe1502:	00 09       	nop	
  fe1504:	00 fe       	mov.l	@(r0,r15),r0
  fe1506:	14 40       	mov.l	r4,@(0,r4)

00fe1508 <_call_complex1>:
  fe1508:	4f 22       	sts.l	pr,@-r15
  fe150a:	94 06       	mov.w	fe151a <_call_complex1+0x12>,r4	! fe
  fe150c:	d0 03       	mov.l	fe151c <_call_complex1+0x14>,r0	! fe1440 <_return_arg1>
  fe150e:	40 0b       	jsr	@r0
  fe1510:	00 09       	nop	
  fe1512:	70 01       	add	#1,r0
  fe1514:	4f 26       	lds.l	@r15+,pr
  fe1516:	00 0b       	rts	
  fe1518:	00 09       	nop	
  fe151a:	00 fe       	mov.l	@(r0,r15),r0
  fe151c:	00 fe       	mov.l	@(r0,r15),r0
  fe151e:	14 40       	mov.l	r4,@(0,r4)

00fe1520 <_call_complex2>:
  fe1520:	2f 86       	mov.l	r8,@-r15
  fe1522:	4f 22       	sts.l	pr,@-r15
  fe1524:	68 53       	mov	r5,r8
  fe1526:	d0 05       	mov.l	fe153c <_call_complex2+0x1c>,r0	! fe1440 <_return_arg1>
  fe1528:	40 0b       	jsr	@r0
  fe152a:	64 53       	mov	r5,r4
  fe152c:	d1 04       	mov.l	fe1540 <_call_complex2+0x20>,r1	! fe1804 <_static_value>
  fe152e:	21 02       	mov.l	r0,@r1
  fe1530:	60 83       	mov	r8,r0
  fe1532:	4f 26       	lds.l	@r15+,pr
  fe1534:	68 f6       	mov.l	@r15+,r8
  fe1536:	00 0b       	rts	
  fe1538:	00 09       	nop	
  fe153a:	00 09       	nop	
  fe153c:	00 fe       	mov.l	@(r0,r15),r0
  fe153e:	14 40       	mov.l	r4,@(0,r4)
  fe1540:	00 fe       	mov.l	@(r0,r15),r0
  fe1542:	18 04       	mov.l	r0,@(16,r8)

00fe1544 <_call_pointer>:
  fe1544:	4f 22       	sts.l	pr,@-r15
  fe1546:	44 0b       	jsr	@r4
  fe1548:	00 09       	nop	
  fe154a:	4f 26       	lds.l	@r15+,pr
  fe154c:	00 0b       	rts	
  fe154e:	00 09       	nop	

00fe1550 <_condition>:
  fe1550:	34 50       	cmp/eq	r5,r4
  fe1552:	8b 00       	bf	fe1556 <_condition+0x6>
  fe1554:	e5 01       	mov	#1,r5
  fe1556:	60 53       	mov	r5,r0
  fe1558:	00 0b       	rts	
  fe155a:	70 01       	add	#1,r0

00fe155c <_loop>:
  fe155c:	44 15       	cmp/pl	r4
  fe155e:	8b 07       	bf	fe1570 <_loop+0x14>
  fe1560:	e0 00       	mov	#0,r0
  fe1562:	e1 00       	mov	#0,r1
  fe1564:	30 1c       	add	r1,r0
  fe1566:	71 01       	add	#1,r1
  fe1568:	31 40       	cmp/eq	r4,r1
  fe156a:	8b fb       	bf	fe1564 <_loop+0x8>
  fe156c:	00 0b       	rts	
  fe156e:	00 09       	nop	
  fe1570:	00 0b       	rts	
  fe1572:	e0 00       	mov	#0,r0

00fe1574 <_many_args>:
  fe1574:	37 4c       	add	r4,r7
  fe1576:	51 f1       	mov.l	@(4,r15),r1
  fe1578:	60 73       	mov	r7,r0
  fe157a:	30 1c       	add	r1,r0
  fe157c:	51 f3       	mov.l	@(12,r15),r1
  fe157e:	00 0b       	rts	
  fe1580:	30 1c       	add	r1,r0

00fe1582 <_call_many_args>:
  fe1582:	4f 22       	sts.l	pr,@-r15
  fe1584:	7f f0       	add	#-16,r15
  fe1586:	e1 04       	mov	#4,r1
  fe1588:	2f 12       	mov.l	r1,@r15
  fe158a:	e1 05       	mov	#5,r1
  fe158c:	1f 11       	mov.l	r1,@(4,r15)
  fe158e:	e1 06       	mov	#6,r1
  fe1590:	1f 12       	mov.l	r1,@(8,r15)
  fe1592:	e1 07       	mov	#7,r1
  fe1594:	1f 13       	mov.l	r1,@(12,r15)
  fe1596:	e4 00       	mov	#0,r4
  fe1598:	e5 01       	mov	#1,r5
  fe159a:	e6 02       	mov	#2,r6
  fe159c:	d0 03       	mov.l	fe15ac <_call_many_args+0x2a>,r0	! fe1574 <_many_args>
  fe159e:	40 0b       	jsr	@r0
  fe15a0:	e7 03       	mov	#3,r7
  fe15a2:	7f 10       	add	#16,r15
  fe15a4:	4f 26       	lds.l	@r15+,pr
  fe15a6:	00 0b       	rts	
  fe15a8:	00 09       	nop	
  fe15aa:	00 09       	nop	
  fe15ac:	00 fe       	mov.l	@(r0,r15),r0
  fe15ae:	15 74       	mov.l	r7,@(16,r5)

00fe15b0 <_direct>:
  fe15b0:	00 09       	nop	
  fe15b2:	00 0b       	rts	
  fe15b4:	00 09       	nop	

00fe15b6 <_binary>:
  fe15b6:	00 09       	nop	
  fe15b8:	00 09       	nop	
  fe15ba:	00 09       	nop	
  fe15bc:	00 09       	nop	
  fe15be:	00 09       	nop	
  fe15c0:	00 00       	.word 0x0000
  fe15c2:	00 00       	.word 0x0000
  fe15c4:	00 0b       	rts	
  fe15c6:	00 09       	nop	

00fe15c8 <_main>:
  fe15c8:	00 0b       	rts	
  fe15ca:	e0 00       	mov	#0,r0
  fe15cc:	00 09       	nop	
  fe15ce:	00 09       	nop	
