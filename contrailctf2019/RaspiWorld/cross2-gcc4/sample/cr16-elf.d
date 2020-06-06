
cr16-elf.x:     file format elf32-cr16


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	ee 0a       	jump	(ra)

00fe1402 <.LFE0>:
	...

00fe1404 <_return_zero>:
  fe1404:	00 5a       	movw	$0x0:s,r0
  fe1406:	ee 0a       	jump	(ra)

00fe1408 <_return_one>:
  fe1408:	10 5a       	movw	$0x1:s,r0
  fe140a:	ee 0a       	jump	(ra)

00fe140c <_return_int_size>:
  fe140c:	20 5a       	movw	$0x2:s,r0
  fe140e:	ee 0a       	jump	(ra)

00fe1410 <_return_pointer_size>:
  fe1410:	40 5a       	movw	$0x4:s,r0
  fe1412:	ee 0a       	jump	(ra)

00fe1414 <_return_short_size>:
  fe1414:	20 5a       	movw	$0x2:s,r0
  fe1416:	ee 0a       	jump	(ra)

00fe1418 <_return_long_size>:
  fe1418:	40 5a       	movw	$0x4:s,r0
  fe141a:	ee 0a       	jump	(ra)

00fe141c <_return_short>:
  fe141c:	b0 5a 88 77 	movw	$0x7788:m,r0
  fe1420:	ee 0a       	jump	(ra)

00fe1422 <.LFE7>:
	...

00fe1424 <_return_long>:
  fe1424:	70 00 88 77 	movd	$0x778899aa:l,(r1,r0)
  fe1428:	aa 99 
  fe142a:	ee 0a       	jump	(ra)

00fe142c <_return_short_upper>:
  fe142c:	b0 5a ee ff 	movw	$0xffee:m,r0
  fe1430:	ee 0a       	jump	(ra)

00fe1432 <.LFE9>:
	...

00fe1434 <_return_long_upper>:
  fe1434:	70 00 ee ff 	movd	$0xffeeddcc:l,(r1,r0)
  fe1438:	cc dd 
  fe143a:	ee 0a       	jump	(ra)

00fe143c <_return_arg1>:
  fe143c:	20 5b       	movw	r2,r0
  fe143e:	ee 0a       	jump	(ra)

00fe1440 <_return_arg2>:
  fe1440:	30 5b       	movw	r3,r0
  fe1442:	ee 0a       	jump	(ra)

00fe1444 <_add>:
  fe1444:	20 5b       	movw	r2,r0
  fe1446:	30 33       	addw	r3,r0
  fe1448:	ee 0a       	jump	(ra)

00fe144a <.LFE13>:
	...

00fe144c <_add3>:
  fe144c:	32 33       	addw	r3,r2
  fe144e:	20 5b       	movw	r2,r0
  fe1450:	40 33       	addw	r4,r0
  fe1452:	ee 0a       	jump	(ra)

00fe1454 <_add_two>:
  fe1454:	20 5b       	movw	r2,r0
  fe1456:	20 32       	addw	$0x2:s,r0
  fe1458:	ee 0a       	jump	(ra)

00fe145a <.LFE15>:
	...

00fe145c <_inc>:
  fe145c:	20 5b       	movw	r2,r0
  fe145e:	10 32       	addw	$0x1:s,r0
  fe1460:	ee 0a       	jump	(ra)

00fe1462 <.LFE16>:
	...

00fe1464 <_or>:
  fe1464:	30 5b       	movw	r3,r0
  fe1466:	20 27       	orw	r2,r0
  fe1468:	ee 0a       	jump	(ra)

00fe146a <.LFE17>:
	...

00fe146c <_or_one>:
  fe146c:	20 5b       	movw	r2,r0
  fe146e:	10 26       	orw	$0x1:s,r0
  fe1470:	ee 0a       	jump	(ra)

00fe1472 <.LFE18>:
	...

00fe1474 <_load>:
  fe1474:	02 90       	loadw	0x0:s(r3,r2),r0
  fe1476:	ee 0a       	jump	(ra)

00fe1478 <_store>:
  fe1478:	b0 5a ff 00 	movw	$0xff:m,r0
  fe147c:	02 d0       	storw	r0,0x0:s(r3,r2)
  fe147e:	ee 0a       	jump	(ra)

00fe1480 <_load_long>:
  fe1480:	22 a0       	loadd	0x0:s(r3,r2),(r3,r2)
  fe1482:	20 5b       	movw	r2,r0
  fe1484:	31 5b       	movw	r3,r1
  fe1486:	ee 0a       	jump	(ra)

00fe1488 <_store_long>:
  fe1488:	70 00 22 11 	movd	$0x11223344:l,(r1,r0)
  fe148c:	44 33 
  fe148e:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
  fe1490:	ee 0a       	jump	(ra)

00fe1492 <.LFE22>:
	...

00fe1494 <_member>:
  fe1494:	12 c3 02 00 	storw	$0x1:s,0x2:m(r3,r2)
  fe1498:	02 92       	loadw	0x4:s(r3,r2),r0
  fe149a:	ee 0a       	jump	(ra)

00fe149c <_get_static_value_addr>:
  fe149c:	70 00 fe 00 	movd	$0xfe1804:l,(r1,r0)
  fe14a0:	04 18 
  fe14a2:	ee 0a       	jump	(ra)

00fe14a4 <_get_static_value>:
  fe14a4:	12 00 0f fe 	loadw	0xfe1804 <_static_value>:l,r0
  fe14a8:	04 18 
  fe14aa:	ee 0a       	jump	(ra)

00fe14ac <_set_static_value>:
  fe14ac:	13 00 2f fe 	storw	r2,0xfe1804 <_static_value>:l
  fe14b0:	04 18 
  fe14b2:	ee 0a       	jump	(ra)

00fe14b4 <_set_stack>:
  fe14b4:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
  fe14b8:	b0 5a fe 00 	movw	$0xfe:m,r0
  fe14bc:	0f d0       	storw	r0,0x0:s(sp)
  fe14be:	b0 5a ff 00 	movw	$0xff:m,r0
  fe14c2:	0f d1       	storw	r0,0x2:s(sp)
  fe14c4:	4f 60       	addd	$0x4:s,(sp)
  fe14c6:	ee 0a       	jump	(ra)

00fe14c8 <_use_stack>:
  fe14c8:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
  fe14cc:	b0 5a fe 00 	movw	$0xfe:m,r0
  fe14d0:	0f d0       	storw	r0,0x0:s(sp)
  fe14d2:	b0 5a ff 00 	movw	$0xff:m,r0
  fe14d6:	0f d1       	storw	r0,0x2:s(sp)
  fe14d8:	1f 90       	loadw	0x0:s(sp),r1
  fe14da:	0f 91       	loadw	0x2:s(sp),r0
  fe14dc:	10 33       	addw	r1,r0
  fe14de:	4f 60       	addd	$0x4:s,(sp)
  fe14e0:	ee 0a       	jump	(ra)

00fe14e2 <.LFE28>:
	...

00fe14e4 <_call_self>:
  fe14e4:	1e 01       	push	RA
  fe14e6:	ff c0 ff ff 	bal	(ra),*-0xfe14e4 <_call_self>:m

00fe14ea <.LVL21>:
  fe14ea:	1e 03       	popret	RA

00fe14ec <_call_simple>:
  fe14ec:	1e 01       	push	RA
  fe14ee:	ff c0 4f ff 	bal	(ra),*-0xfe143c <_return_arg1>:m

00fe14f2 <.LVL23>:
  fe14f2:	1e 03       	popret	RA

00fe14f4 <_call_complex1>:
  fe14f4:	1e 01       	push	RA
  fe14f6:	b2 5a fe 00 	movw	$0xfe:m,r2
  fe14fa:	ff c0 43 ff 	bal	(ra),*-0xfe143c <_return_arg1>:m

00fe14fe <.LVL24>:
  fe14fe:	10 32       	addw	$0x1:s,r0
  fe1500:	1e 03       	popret	RA

00fe1502 <.LFE31>:
	...

00fe1504 <_call_complex2>:
  fe1504:	1e 01       	push	RA
  fe1506:	07 01       	push	$0x1,r7
  fe1508:	37 5b       	movw	r3,r7
  fe150a:	32 5b       	movw	r3,r2
  fe150c:	ff c0 31 ff 	bal	(ra),*-0xfe143c <_return_arg1>:m

00fe1510 <.LVL27>:
  fe1510:	13 00 0f fe 	storw	r0,0xfe1804 <_static_value>:l
  fe1514:	04 18 
  fe1516:	70 5b       	movw	r7,r0
  fe1518:	07 02       	pop	$0x1,r7
  fe151a:	1e 03       	popret	RA

00fe151c <_call_pointer>:
  fe151c:	1e 01       	push	RA
  fe151e:	d2 00       	jal	(r3,r2)

00fe1520 <.LVL29>:
  fe1520:	1e 03       	popret	RA

00fe1522 <.LFE33>:
	...

00fe1524 <_condition>:
  fe1524:	32 53       	cmpw	r3,r2
  fe1526:	12 10       	bne	*+0xfe152a <.L36>:s
  fe1528:	13 5a       	movw	$0x1:s,r3

00fe152a <.L36>:
  fe152a:	30 5b       	movw	r3,r0
  fe152c:	10 32       	addw	$0x1:s,r0
  fe152e:	ee 0a       	jump	(ra)

00fe1530 <_loop>:
  fe1530:	02 52       	cmpw	$0x0:s,r2
  fe1532:	d8 10       	bge	*+0xfe1542 <.L41>:s
  fe1534:	00 5a       	movw	$0x0:s,r0
  fe1536:	01 5b       	movw	r0,r1

00fe1538 <.L40>:
  fe1538:	10 33       	addw	r1,r0
  fe153a:	11 32       	addw	$0x1:s,r1
  fe153c:	21 53       	cmpw	r2,r1
  fe153e:	1d 1f       	bne	*-0xfe1538 <.L40>:s
  fe1540:	e2 10       	br	*+0xfe1544 <.L39>:s

00fe1542 <.L41>:
  fe1542:	00 5a       	movw	$0x0:s,r0

00fe1544 <.L39>:
  fe1544:	ee 0a       	jump	(ra)

00fe1546 <.LFE35>:
	...

00fe1548 <_many_args>:
  fe1548:	1c 01       	push	$0x2,r12
  fe154a:	fc 55       	movd	(sp),(r12)
  fe154c:	1f 92       	loadw	0x4:s(sp),r1
  fe154e:	0f 94       	loadw	0x8:s(sp),r0
  fe1550:	4c 60       	addd	$0x4:s,(r12)
  fe1552:	25 33       	addw	r2,r5
  fe1554:	52 5b       	movw	r5,r2
  fe1556:	12 33       	addw	r1,r2
  fe1558:	20 33       	addw	r2,r0
  fe155a:	1c 02       	pop	$0x2,r12
  fe155c:	ee 0a       	jump	(ra)

00fe155e <.LFE36>:
	...

00fe1560 <_call_many_args>:
  fe1560:	1e 01       	push	RA
  fe1562:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
  fe1566:	70 5a       	movw	$0x7:s,r0
  fe1568:	00 01       	push	$0x1,r0
  fe156a:	60 5a       	movw	$0x6:s,r0
  fe156c:	00 01       	push	$0x1,r0
  fe156e:	50 5a       	movw	$0x5:s,r0
  fe1570:	00 01       	push	$0x1,r0
  fe1572:	46 5a       	movw	$0x4:s,r6
  fe1574:	35 5a       	movw	$0x3:s,r5
  fe1576:	24 5a       	movw	$0x2:s,r4
  fe1578:	13 5a       	movw	$0x1:s,r3
  fe157a:	02 5a       	movw	$0x0:s,r2
  fe157c:	ff c0 cd ff 	bal	(ra),*-0xfe1548 <_many_args>:m

00fe1580 <.LVL41>:
  fe1580:	8f 60       	addd	$0x8:s,(sp)
  fe1582:	1e 03       	popret	RA

00fe1584 <_direct>:
  fe1584:	00 2c       	nop
  fe1586:	ee 0a       	jump	(ra)

00fe1588 <_binary>:
  fe1588:	00 00       	illegal 
  fe158a:	00 00       	illegal 
  fe158c:	ee 0a       	jump	(ra)

00fe158e <.LFE39>:
	...

00fe1590 <_main>:
  fe1590:	00 5a       	movw	$0x0:s,r0
  fe1592:	ee 0a       	jump	(ra)
