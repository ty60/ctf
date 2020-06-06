
cr16-elf.x:     file format elf32-cr16


Disassembly of section .text:

00001400 <_start>:
    1400:	bf 5a 90 f4 	movw	$0xf490:m,r15
    1404:	00 c0 dc 00 	bal	(ra),*+0x14e0 <__startmain>:m
    1408:	02 5b       	movw	r0,r2

0000140a <___exit>:
    140a:	10 5a       	movw	$0x1:s,r0
    140c:	c8 00       	excp	bpt
    140e:	ee 0a       	jump	(ra)

00001410 <___read>:
    1410:	40 5a       	movw	$0x4:s,r0
    1412:	c8 00       	excp	bpt
    1414:	ee 0a       	jump	(ra)

00001416 <___write>:
    1416:	50 5a       	movw	$0x5:s,r0
    1418:	c8 00       	excp	bpt
    141a:	ee 0a       	jump	(ra)

0000141c <___open>:
    141c:	20 5a       	movw	$0x2:s,r0
    141e:	c8 00       	excp	bpt
    1420:	ee 0a       	jump	(ra)

00001422 <___close>:
    1422:	30 5a       	movw	$0x3:s,r0
    1424:	c8 00       	excp	bpt
    1426:	ee 0a       	jump	(ra)

00001428 <__exit>:
    1428:	ff c0 e3 ff 	bal	(ra),*-0x140a <___exit>:m

0000142c <_read>:
    142c:	1e 01       	push	RA
    142e:	ff c0 e3 ff 	bal	(ra),*-0x1410 <___read>:m

00001432 <.LVL3>:
    1432:	1e 03       	popret	RA

00001434 <_write>:
    1434:	1e 01       	push	RA
    1436:	ff c0 e1 ff 	bal	(ra),*-0x1416 <___write>:m

0000143a <.LVL5>:
    143a:	1e 03       	popret	RA

0000143c <_open>:
    143c:	1e 01       	push	RA
    143e:	ff c0 df ff 	bal	(ra),*-0x141c <___open>:m

00001442 <.LVL7>:
    1442:	1e 03       	popret	RA

00001444 <_close>:
    1444:	1e 01       	push	RA
    1446:	ff c0 dd ff 	bal	(ra),*-0x1422 <___close>:m

0000144a <.LVL9>:
    144a:	1e 03       	popret	RA

0000144c <_fstat>:
    144c:	1e 01       	push	RA
    144e:	32 55       	movd	(r4,r3),(r3,r2)
    1450:	b5 54 3c 00 	movd	$0x3c:m,(r6,r5)
    1454:	04 5a       	movw	$0x0:s,r4
    1456:	00 c0 c2 00 	bal	(ra),*+0x1518 <_memset>:m

0000145a <.LVL12>:
    145a:	00 5a       	movw	$0x0:s,r0
    145c:	1e 03       	popret	RA

0000145e <.LFE5>:
	...

00001460 <_lseek>:
    1460:	30 5b       	movw	r3,r0
    1462:	ee 0a       	jump	(ra)

00001464 <_sbrk>:
    1464:	12 00 40 b0 	loadd	0xa800 <__gp>:l,(r5,r4)
    1468:	00 a8 
    146a:	22 5e       	movxw	r2,(r3,r2)
    146c:	42 61       	addd	(r5,r4),(r3,r2)
    146e:	13 00 20 b0 	stord	(r3,r2),0xa800 <__gp>:l
    1472:	00 a8 
    1474:	40 5b       	movw	r4,r0
    1476:	51 5b       	movw	r5,r1
    1478:	ee 0a       	jump	(ra)

0000147a <.LFE7>:
	...

0000147c <_isatty>:
    147c:	10 5a       	movw	$0x1:s,r0
    147e:	ee 0a       	jump	(ra)

00001480 <__read>:
    1480:	1e 01       	push	RA
    1482:	ff c0 ab ff 	bal	(ra),*-0x142c <_read>:m

00001486 <.LVL19>:
    1486:	1e 03       	popret	RA

00001488 <__write>:
    1488:	1e 01       	push	RA
    148a:	ff c0 ab ff 	bal	(ra),*-0x1434 <_write>:m

0000148e <.LVL21>:
    148e:	1e 03       	popret	RA

00001490 <__open>:
    1490:	1e 01       	push	RA
    1492:	ff c0 ab ff 	bal	(ra),*-0x143c <_open>:m

00001496 <.LVL23>:
    1496:	1e 03       	popret	RA

00001498 <__close>:
    1498:	1e 01       	push	RA
    149a:	ff c0 ab ff 	bal	(ra),*-0x1444 <_close>:m

0000149e <.LVL25>:
    149e:	1e 03       	popret	RA

000014a0 <__fstat>:
    14a0:	1e 01       	push	RA
    14a2:	ff c0 ab ff 	bal	(ra),*-0x144c <_fstat>:m

000014a6 <.LVL27>:
    14a6:	1e 03       	popret	RA

000014a8 <__lseek>:
    14a8:	1e 01       	push	RA
    14aa:	ff c0 b7 ff 	bal	(ra),*-0x1460 <_lseek>:m

000014ae <.LVL29>:
    14ae:	1e 03       	popret	RA

000014b0 <__sbrk>:
    14b0:	1e 01       	push	RA
    14b2:	ff c0 b3 ff 	bal	(ra),*-0x1464 <_sbrk>:m

000014b6 <.LVL31>:
    14b6:	1e 03       	popret	RA

000014b8 <__isatty>:
    14b8:	1e 01       	push	RA
    14ba:	ff c0 c3 ff 	bal	(ra),*-0x147c <_isatty>:m

000014be <.LVL33>:
    14be:	1e 03       	popret	RA

000014c0 <_main>:
    14c0:	00 05 80 9e 	movd	$0x9e80:m,(r1,r0)
    14c4:	10 01       	push	$0x2,r0
    14c6:	12 00 00 b0 	loadd	0xa804 <_data_value>:l,(r1,r0)
    14ca:	04 a8 
    14cc:	10 01       	push	$0x2,r0
    14ce:	00 05 8a 9e 	movd	$0x9e8a:m,(r1,r0)
    14d2:	10 01       	push	$0x2,r0
    14d4:	00 c0 40 01 	bal	(ra),*+0x1614 <_printf>:m

000014d8 <.LVL34>:
    14d8:	02 5a       	movw	$0x0:s,r2
    14da:	00 c0 1e 00 	bal	(ra),*+0x14f8 <_exit>:m

000014de <.LFE19>:
	...

000014e0 <__startmain>:
    14e0:	20 05 5c b0 	movd	$0xb05c:m,(r3,r2)
    14e4:	00 05 88 f0 	movd	$0xf088:m,(r1,r0)
    14e8:	05 55       	movd	(r1,r0),(r6,r5)
    14ea:	14 00 25 c0 	subd	(r3,r2),(r6,r5)
    14ee:	04 5a       	movw	$0x0:s,r4
    14f0:	00 c0 28 00 	bal	(ra),*+0x1518 <_memset>:m

000014f4 <.LBE4>:
    14f4:	ff c0 cd ff 	bal	(ra),*-0x14c0 <_main>:m

000014f8 <_exit>:
    14f8:	27 5b       	movw	r2,r7
    14fa:	03 54       	movd	$0x0:s,(r4,r3)
    14fc:	00 c0 20 1e 	bal	(ra),*+0x331c <___call_exitprocs>:m

00001500 <.LFE18>:
    1500:	12 00 20 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r3,r2)
    1504:	b8 9e 
    1506:	02 af 38 00 	loadd	0x38:m(r3,r2),(r1,r0)
    150a:	00 56       	cmpd	$0x0:s,(r1,r0)
    150c:	02 10       	beq	*+0x1510 <.L2>:s
    150e:	d0 00       	jal	(r1,r0)

00001510 <.L2>:
    1510:	72 5b       	movw	r7,r2
    1512:	ff c0 17 ff 	bal	(ra),*-0x1428 <__exit>:m

00001516 <.LFE0>:
	...

00001518 <_memset>:
    1518:	1e 01       	push	RA
    151a:	37 01       	push	$0x4,r7
    151c:	28 55       	movd	(r3,r2),(r9,r8)
    151e:	4a 5b       	movw	r4,r10
    1520:	20 55       	movd	(r3,r2),(r1,r0)
    1522:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    1526:	03 00 
    1528:	00 56       	cmpd	$0x0:s,(r1,r0)
    152a:	0e 15       	beq	*+0x15e6 <.L15>:s
    152c:	52 55       	movd	(r6,r5),(r3,r2)
    152e:	92 60       	addd	$-1:s,(r3,r2)
    1530:	47 59       	movb	r4,r7
    1532:	80 55       	movd	(r9,r8),(r1,r0)
    1534:	05 56       	cmpd	$0x0:s,(r6,r5)
    1536:	17 10       	bne	*+0x1544 <.L24>:s
    1538:	e3 15       	br	*+0x15de <.L17>:s

0000153a <.L6>:
    153a:	24 55       	movd	(r3,r2),(r5,r4)
    153c:	94 60       	addd	$-1:s,(r5,r4)
    153e:	02 56       	cmpd	$0x0:s,(r3,r2)
    1540:	0f 14       	beq	*+0x15de <.L17>:s
    1542:	42 55       	movd	(r5,r4),(r3,r2)

00001544 <.L24>:
    1544:	70 f0       	storb	r7,0x0:s(r1,r0)
    1546:	10 60       	addd	$0x1:s,(r1,r0)
    1548:	04 55       	movd	(r1,r0),(r5,r4)
    154a:	44 00 00 00 	andd	$0x3:l,(r5,r4)
    154e:	03 00 
    1550:	04 56       	cmpd	$0x0:s,(r5,r4)
    1552:	14 1f       	bne	*-0x153a <.L6>:s
    1554:	32 56       	cmpd	$0x3:s,(r3,r2)
    1556:	bc 13       	bhs	*+0x15ce <.L13>:s

00001558 <.L7>:
    1558:	a4 5b       	movw	r10,r4
    155a:	b4 22 ff 00 	andw	$0xff:m,r4
    155e:	45 5b       	movw	r4,r5
    1560:	85 42       	ashuw	$8:s,r5
    1562:	54 27       	orw	r5,r4
    1564:	44 5f       	movzw	r4,(r5,r4)
    1566:	4e 55       	movd	(r5,r4),(ra)
    1568:	0e 4d       	ashud	$16:s,(ra)
    156a:	14 00 4e 90 	ord	(r5,r4),(ra)
    156e:	04 55       	movd	(r1,r0),(r5,r4)
    1570:	26 55       	movd	(r3,r2),(r7,r6)
    1572:	f2 56       	cmpd	$0xf:s,(r3,r2)
    1574:	be 13       	bhs	*+0x15f0 <.L27>:s

00001576 <.L20>:
    1576:	e4 e0       	stord	(ra),0x0:s(r5,r4)
    1578:	e4 e2       	stord	(ra),0x4:s(r5,r4)
    157a:	e4 e4       	stord	(ra),0x8:s(r5,r4)
    157c:	e4 e6       	stord	(ra),0xc:s(r5,r4)
    157e:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    1582:	b6 60 f0 ff 	addd	$0xfff0:m,(r7,r6)
    1586:	f6 56       	cmpd	$0xf:s,(r7,r6)
    1588:	a7 1f       	blo	*-0x1576 <.L20>:s
    158a:	26 55       	movd	(r3,r2),(r7,r6)
    158c:	b6 60 f0 ff 	addd	$0xfff0:m,(r7,r6)
    1590:	46 00 ff ff 	andd	$0xfffffff0:l,(r7,r6)
    1594:	f0 ff 
    1596:	b6 60 10 00 	addd	$0x10:m,(r7,r6)
    159a:	06 61       	addd	(r1,r0),(r7,r6)
    159c:	42 00 00 00 	andd	$0xf:l,(r3,r2)
    15a0:	0f 00 
    15a2:	60 55       	movd	(r7,r6),(r1,r0)
    15a4:	32 56       	cmpd	$0x3:s,(r3,r2)
    15a6:	b4 11       	bhs	*+0x15ce <.L13>:s

000015a8 <.L12>:
    15a8:	64 55       	movd	(r7,r6),(r5,r4)
    15aa:	20 55       	movd	(r3,r2),(r1,r0)

000015ac <.L10>:
    15ac:	e4 e0       	stord	(ra),0x0:s(r5,r4)
    15ae:	44 60       	addd	$0x4:s,(r5,r4)
    15b0:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    15b4:	30 56       	cmpd	$0x3:s,(r1,r0)
    15b6:	ab 1f       	blo	*-0x15ac <.L10>:s
    15b8:	20 55       	movd	(r3,r2),(r1,r0)
    15ba:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    15be:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    15c2:	fc ff 
    15c4:	40 60       	addd	$0x4:s,(r1,r0)
    15c6:	42 00 00 00 	andd	$0x3:l,(r3,r2)
    15ca:	03 00 
    15cc:	60 61       	addd	(r7,r6),(r1,r0)

000015ce <.L13>:
    15ce:	04 55       	movd	(r1,r0),(r5,r4)
    15d0:	24 61       	addd	(r3,r2),(r5,r4)
    15d2:	02 56       	cmpd	$0x0:s,(r3,r2)
    15d4:	05 10       	beq	*+0x15de <.L17>:s

000015d6 <.L19>:
    15d6:	a0 f0       	storb	r10,0x0:s(r1,r0)
    15d8:	10 60       	addd	$0x1:s,(r1,r0)
    15da:	40 57       	cmpd	(r5,r4),(r1,r0)
    15dc:	1d 1f       	bne	*-0x15d6 <.L19>:s

000015de <.L17>:
    15de:	80 5b       	movw	r8,r0
    15e0:	91 5b       	movw	r9,r1
    15e2:	37 02       	pop	$0x4,r7
    15e4:	1e 03       	popret	RA

000015e6 <.L15>:
    15e6:	20 55       	movd	(r3,r2),(r1,r0)
    15e8:	52 55       	movd	(r6,r5),(r3,r2)
    15ea:	32 56       	cmpd	$0x3:s,(r3,r2)
    15ec:	a6 1b       	blo	*-0x1558 <.L7>:s
    15ee:	e0 1f       	br	*-0x15ce <.L13>:s

000015f0 <.L27>:
    15f0:	06 55       	movd	(r1,r0),(r7,r6)
    15f2:	eb 1d       	br	*-0x15a8 <.L12>:s

000015f4 <__printf_r>:
    15f4:	1e 01       	push	RA
    15f6:	1c 01       	push	$0x2,r12
    15f8:	fc 55       	movd	(sp),(r12)
    15fa:	2f a4       	loadd	0x8:s(sp),(r3,r2)

000015fc <.LFE0>:
    15fc:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    15fe:	bc 60 10 00 	addd	$0x10:m,(r12)
    1602:	42 a4       	loadd	0x8:s(r3,r2),(r5,r4)
    1604:	1c 01       	push	$0x2,r12
    1606:	10 01       	push	$0x2,r0
    1608:	00 c0 2c 00 	bal	(ra),*+0x1634 <__vfprintf_r>:m

0000160c <.LVL2>:
    160c:	8f 60       	addd	$0x8:s,(sp)
    160e:	1c 02       	pop	$0x2,r12
    1610:	1e 03       	popret	RA

00001612 <.LFE0>:
	...

00001614 <_printf>:
    1614:	1e 01       	push	RA
    1616:	1c 01       	push	$0x2,r12
    1618:	fc 55       	movd	(sp),(r12)
    161a:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    161c:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    1620:	08 a8 
    1622:	cc 60       	addd	$0xc:s,(r12)
    1624:	42 a4       	loadd	0x8:s(r3,r2),(r5,r4)
    1626:	1c 01       	push	$0x2,r12
    1628:	10 01       	push	$0x2,r0
    162a:	00 c0 0a 00 	bal	(ra),*+0x1634 <__vfprintf_r>:m

0000162e <.LVL6>:
    162e:	8f 60       	addd	$0x8:s,(sp)
    1630:	1c 02       	pop	$0x2,r12
    1632:	1e 03       	popret	RA

00001634 <__vfprintf_r>:
    1634:	9d 01       	push	$0x2,r13,RA
    1636:	67 01       	push	$0x7,r7
    1638:	bf 60 04 fb 	addd	$0xfb04:m,(sp)
    163c:	fc 55       	movd	(sp),(r12)
    163e:	2f ef c0 04 	stord	(r3,r2),0x4c0:m(sp)
    1642:	4f ef b8 04 	stord	(r5,r4),0x4b8:m(sp)
    1646:	8f af 12 05 	loadd	0x512:m(sp),(r9,r8)
    164a:	bc 60 12 05 	addd	$0x512:m,(r12)
    164e:	cc a2       	loadd	0x4:s(r12),(r12)
    1650:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1654:	00 c0 a6 3b 	bal	(ra),*+0x51fa <__localeconv_r>:m

00001658 <.LVL1>:
    1658:	c0 a0       	loadd	0x0:s(r1,r0),(r12)
    165a:	cf ef dc 04 	stord	(r12),0x4dc:m(sp)
    165e:	c2 55       	movd	(r12),(r3,r2)
    1660:	00 c0 ac 53 	bal	(ra),*+0x6a0c <_strlen>:m

00001664 <.LVL3>:
    1664:	0f df e8 04 	storw	r0,0x4e8:m(sp)
    1668:	1f df ec 04 	storw	r1,0x4ec:m(sp)
    166c:	cf af c0 04 	loadd	0x4c0:m(sp),(r12)
    1670:	0c 56       	cmpd	$0x0:s,(r12)
    1672:	06 10       	beq	*+0x167e <.L2>:s
    1674:	0c 9f 34 00 	loadw	0x34:m(r12),r0
    1678:	00 52       	cmpw	$0x0:s,r0
    167a:	00 18 e8 05 	beq	*+0x1c62 <.L406>:m

0000167e <.L2>:
    167e:	cf af b8 04 	loadd	0x4b8:m(sp),(r12)
    1682:	2c 94       	loadw	0x8:s(r12),r2
    1684:	20 5b       	movw	r2,r0
    1686:	b0 22 00 20 	andw	$0x2000:m,r0
    168a:	00 52       	cmpw	$0x0:s,r0
    168c:	1a 10       	bne	*+0x16a0 <.L3>:s
    168e:	b2 26 00 20 	orw	$0x2000:m,r2
    1692:	2c d4       	storw	r2,0x8:s(r12)
    1694:	0c 9f 58 00 	loadw	0x58:m(r12),r0
    1698:	b0 22 ff df 	andw	$0xdfff:m,r0
    169c:	0c df 58 00 	storw	r0,0x58:m(r12)

000016a0 <.L3>:
    16a0:	20 5b       	movw	r2,r0
    16a2:	80 22       	andw	$0x8:s,r0
    16a4:	00 52       	cmpw	$0x0:s,r0
    16a6:	00 18 a8 04 	beq	*+0x1b4e <.L4>:m
    16aa:	cf af b8 04 	loadd	0x4b8:m(sp),(r12)
    16ae:	0c a6       	loadd	0xc:s(r12),(r1,r0)
    16b0:	00 56       	cmpd	$0x0:s,(r1,r0)
    16b2:	00 18 9c 04 	beq	*+0x1b4e <.L4>:m
    16b6:	20 5b       	movw	r2,r0
    16b8:	b0 22 1a 00 	andw	$0x1a:m,r0
    16bc:	a0 52       	cmpw	$0xa:s,r0
    16be:	00 18 b2 04 	beq	*+0x1b70 <.L407>:m

000016c2 <.L8>:
    16c2:	ff ef 84 04 	stord	(sp),0x484:m(sp)
    16c6:	0f c3 8a 04 	storw	$0x0:s,0x48a:m(sp)
    16ca:	0f c3 88 04 	storw	$0x0:s,0x488:m(sp)
    16ce:	8f ef b4 04 	stord	(r9,r8),0x4b4:m(sp)
    16d2:	0f c3 d6 04 	storw	$0x0:s,0x4d6:m(sp)
    16d6:	00 54       	movd	$0x0:s,(r1,r0)
    16d8:	02 54       	movd	$0x0:s,(r3,r2)
    16da:	0f ef e0 04 	stord	(r1,r0),0x4e0:m(sp)
    16de:	2f ef e4 04 	stord	(r3,r2),0x4e4:m(sp)
    16e2:	07 54       	movd	$0x0:s,(r8,r7)
    16e4:	7f ef f0 04 	stord	(r8,r7),0x4f0:m(sp)
    16e8:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    16ec:	8f df ea 04 	storw	r8,0x4ea:m(sp)
    16f0:	8f df be 04 	storw	r8,0x4be:m(sp)
    16f4:	fd 55       	movd	(sp),(r13)
    16f6:	fc 55       	movd	(sp),(r12)
    16f8:	bc 60 84 04 	addd	$0x484:m,(r12)
    16fc:	cf ef a8 04 	stord	(r12),0x4a8:m(sp)
    1700:	f7 55       	movd	(sp),(r8,r7)
    1702:	b7 60 83 04 	addd	$0x483:m,(r8,r7)
    1706:	7f ef ac 04 	stord	(r8,r7),0x4ac:m(sp)
    170a:	8f 9f a8 04 	loadw	0x4a8:m(sp),r8
    170e:	78 3b       	subw	r7,r8
    1710:	8f df ee 04 	storw	r8,0x4ee:m(sp)

00001714 <.L374>:
    1714:	cf af b4 04 	loadd	0x4b4:m(sp),(r12)
    1718:	0c b0       	loadb	0x0:s(r12),r0
    171a:	00 50       	cmpb	$0x0:s,r0
    171c:	11 08       	sne	r1
    171e:	01 52       	cmpw	$0x0:s,r1
    1720:	00 18 ec 03 	beq	*+0x1b0c <.L260>:m

00001724 <.L417>:
    1724:	b0 50 25 00 	cmpb	$0x25:m,r0
    1728:	10 08       	sne	r0
    172a:	00 52       	cmpw	$0x0:s,r0
    172c:	00 18 e0 03 	beq	*+0x1b0c <.L260>:m
    1730:	c8 55       	movd	(r12),(r9,r8)
    1732:	e5 10       	br	*+0x173c <.L13>:s

00001734 <.L408>:
    1734:	00 50       	cmpb	$0x0:s,r0
    1736:	10 08       	sne	r0
    1738:	00 52       	cmpw	$0x0:s,r0
    173a:	08 10       	beq	*+0x174a <.L280>:s

0000173c <.L13>:
    173c:	18 60       	addd	$0x1:s,(r9,r8)
    173e:	08 b0       	loadb	0x0:s(r9,r8),r0
    1740:	b0 50 25 00 	cmpb	$0x25:m,r0
    1744:	11 08       	sne	r1
    1746:	01 52       	cmpw	$0x0:s,r1
    1748:	16 1f       	bne	*-0x1734 <.L408>:s

0000174a <.L280>:
    174a:	8a 5b       	movw	r8,r10
    174c:	0f 9f b4 04 	loadw	0x4b4:m(sp),r0
    1750:	0a 3b       	subw	r0,r10
    1752:	0a 52       	cmpw	$0x0:s,r10
    1754:	09 11       	beq	*+0x1786 <.L12>:s
    1756:	1f af b4 04 	loadd	0x4b4:m(sp),(r2,r1)
    175a:	1d e0       	stord	(r2,r1),0x0:s(r13)
    175c:	a0 5e       	movxw	r10,(r1,r0)
    175e:	0d e2       	stord	(r1,r0),0x4:s(r13)
    1760:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    1764:	a7 33       	addw	r10,r7
    1766:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    176a:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    176e:	1b 32       	addw	$0x1:s,r11
    1770:	bf df 88 04 	storw	r11,0x488:m(sp)
    1774:	7b 52       	cmpw	$0x7:s,r11
    1776:	c0 18 cc 04 	blt	*+0x1c42 <.L15>:m
    177a:	8d 60       	addd	$0x8:s,(r13)

0000177c <.L16>:
    177c:	7f 9f be 04 	loadw	0x4be:m(sp),r7
    1780:	a7 33       	addw	r10,r7
    1782:	7f df be 04 	storw	r7,0x4be:m(sp)

00001786 <.L12>:
    1786:	08 b0       	loadb	0x0:s(r9,r8),r0
    1788:	00 50       	cmpb	$0x0:s,r0
    178a:	00 18 7a 04 	beq	*+0x1c04 <.L18>:m
    178e:	8c 55       	movd	(r9,r8),(r12)
    1790:	1c 60       	addd	$0x1:s,(r12)
    1792:	cf ef b4 04 	stord	(r12),0x4b4:m(sp)
    1796:	0f 83 a6 04 	storb	$0x0:s,0x4a6:m(sp)
    179a:	04 58       	movb	$0x0:s,r4
    179c:	9a 5a       	movw	$-1:s,r10
    179e:	0f c3 b2 04 	storw	$0x0:s,0x4b2:m(sp)
    17a2:	7f 9f b2 04 	loadw	0x4b2:m(sp),r7
    17a6:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    17aa:	20 05 fc 9e 	movd	$0x9efc:m,(r3,r2)
    17ae:	75 5b       	movw	r7,r5
    17b0:	c0 55       	movd	(r12),(r1,r0)

000017b2 <.L371>:
    17b2:	80 b0       	loadb	0x0:s(r1,r0),r8
    17b4:	88 5c       	movxb	r8,r8
    17b6:	10 60       	addd	$0x1:s,(r1,r0)

000017b8 <.L372>:
    17b8:	86 5b       	movw	r8,r6
    17ba:	b6 32 e0 ff 	addw	$0xffe0:m,r6
    17be:	b6 52 58 00 	cmpw	$0x58:m,r6
    17c2:	b0 18 52 03 	bhs	*+0x1b14 <.L409>:m

000017c6 <.L22>:
    17c6:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    17ca:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    17ce:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    17d2:	08 52       	cmpw	$0x0:s,r8
    17d4:	00 18 30 04 	beq	*+0x1c04 <.L18>:m
    17d8:	8f ff 5c 04 	storb	r8,0x45c:m(sp)
    17dc:	0f 83 a6 04 	storb	$0x0:s,0x4a6:m(sp)

000017e0 <.L398>:
    17e0:	0b 58       	movb	$0x0:s,r11
    17e2:	1f c3 bc 04 	storw	$0x1:s,0x4bc:m(sp)
    17e6:	7f 9f bc 04 	loadw	0x4bc:m(sp),r7
    17ea:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    17ee:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    17f2:	8f 9f d4 04 	loadw	0x4d4:m(sp),r8
    17f6:	8f df da 04 	storw	r8,0x4da:m(sp)
    17fa:	fc 55       	movd	(sp),(r12)
    17fc:	bc 60 5c 04 	addd	$0x45c:m,(r12)
    1800:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)

00001804 <.L152>:
    1804:	8f 9f b0 04 	loadw	0x4b0:m(sp),r8
    1808:	28 22       	andw	$0x2:s,r8
    180a:	8f df cc 04 	storw	r8,0x4cc:m(sp)
    180e:	08 52       	cmpw	$0x0:s,r8
    1810:	06 10       	beq	*+0x181c <.L153>:s
    1812:	9f 9f bc 04 	loadw	0x4bc:m(sp),r9
    1816:	29 32       	addw	$0x2:s,r9
    1818:	9f df bc 04 	storw	r9,0x4bc:m(sp)

0000181c <.L153>:
    181c:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1820:	b7 22 84 00 	andw	$0x84:m,r7
    1824:	7f df ce 04 	storw	r7,0x4ce:m(sp)
    1828:	07 52       	cmpw	$0x0:s,r7
    182a:	10 18 84 09 	bne	*+0x21ae <.L399>:m
    182e:	af 9f b2 04 	loadw	0x4b2:m(sp),r10
    1832:	8f 9f bc 04 	loadw	0x4bc:m(sp),r8
    1836:	8a 3b       	subw	r8,r10
    1838:	0a 52       	cmpw	$0x0:s,r10
    183a:	d0 18 74 09 	bge	*+0x21ae <.L399>:m
    183e:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    1842:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    1846:	c0 05 60 a0 	movd	$0xa060:m,(r12)
    184a:	ba 52 10 00 	cmpw	$0x10:m,r10
    184e:	d7 13       	bge	*+0x18bc <.L155>:s
    1850:	b8 54 10 00 	movd	$0x10:m,(r9,r8)
    1854:	d0 55       	movd	(r13),(r1,r0)
    1856:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    185a:	b2 5b       	movw	r11,r2
    185c:	73 5b       	movw	r7,r3
    185e:	a7 5b       	movw	r10,r7
    1860:	af af c0 04 	loadd	0x4c0:m(sp),(r11,r10)
    1864:	e7 10       	br	*+0x1872 <.L158>:s

00001866 <.L411>:
    1866:	80 60       	addd	$0x8:s,(r1,r0)
    1868:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    186c:	b7 52 10 00 	cmpw	$0x10:m,r7
    1870:	d2 12       	bge	*+0x18b4 <.L410>:s

00001872 <.L158>:
    1872:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    1874:	80 e2       	stord	(r9,r8),0x4:s(r1,r0)
    1876:	b3 32 10 00 	addw	$0x10:m,r3
    187a:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    187e:	12 32       	addw	$0x1:s,r2
    1880:	2f df 88 04 	storw	r2,0x488:m(sp)
    1884:	72 52       	cmpw	$0x7:s,r2
    1886:	d0 1f       	bge	*-0x1866 <.L411>:s
    1888:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    188c:	f0 61       	addd	(sp),(r1,r0)
    188e:	10 01       	push	$0x2,r0
    1890:	d4 55       	movd	(r13),(r5,r4)
    1892:	a2 55       	movd	(r11,r10),(r3,r2)
    1894:	00 c0 f0 51 	bal	(ra),*+0x6a84 <___sprint_r>:m

00001898 <.LVL40>:
    1898:	4f 60       	addd	$0x4:s,(sp)
    189a:	00 52       	cmpw	$0x0:s,r0
    189c:	10 18 86 03 	bne	*+0x1c22 <.L17>:m
    18a0:	f0 55       	movd	(sp),(r1,r0)
    18a2:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    18a6:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    18aa:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    18ae:	b7 52 10 00 	cmpw	$0x10:m,r7
    18b2:	c0 1e       	blt	*-0x1872 <.L158>:s

000018b4 <.L410>:
    18b4:	0d 55       	movd	(r1,r0),(r13)
    18b6:	7a 5b       	movw	r7,r10
    18b8:	2b 5b       	movw	r2,r11
    18ba:	37 5b       	movw	r3,r7

000018bc <.L155>:
    18bc:	cd e0       	stord	(r12),0x0:s(r13)
    18be:	a0 5e       	movxw	r10,(r1,r0)
    18c0:	0d e2       	stord	(r1,r0),0x4:s(r13)
    18c2:	a7 33       	addw	r10,r7
    18c4:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    18c8:	1b 32       	addw	$0x1:s,r11
    18ca:	bf df 88 04 	storw	r11,0x488:m(sp)
    18ce:	7b 52       	cmpw	$0x7:s,r11
    18d0:	c0 18 bc 08 	blt	*+0x218c <.L159>:m
    18d4:	8d 60       	addd	$0x8:s,(r13)
    18d6:	bf bf a6 04 	loadb	0x4a6:m(sp),r11

000018da <.L154>:
    18da:	0b 50       	cmpb	$0x0:s,r11
    18dc:	03 11       	beq	*+0x1902 <.L160>:s
    18de:	f0 55       	movd	(sp),(r1,r0)
    18e0:	b0 60 a6 04 	addd	$0x4a6:m,(r1,r0)
    18e4:	0d e0       	stord	(r1,r0),0x0:s(r13)
    18e6:	10 54       	movd	$0x1:s,(r1,r0)
    18e8:	0d e2       	stord	(r1,r0),0x4:s(r13)
    18ea:	17 32       	addw	$0x1:s,r7
    18ec:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    18f0:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    18f4:	1b 32       	addw	$0x1:s,r11
    18f6:	bf df 88 04 	storw	r11,0x488:m(sp)
    18fa:	7b 52       	cmpw	$0x7:s,r11
    18fc:	c0 18 d4 0b 	blt	*+0x24d0 <.L161>:m
    1900:	8d 60       	addd	$0x8:s,(r13)

00001902 <.L160>:
    1902:	8f 9f cc 04 	loadw	0x4cc:m(sp),r8
    1906:	08 52       	cmpw	$0x0:s,r8
    1908:	03 11       	beq	*+0x192e <.L162>:s
    190a:	f0 55       	movd	(sp),(r1,r0)
    190c:	b0 60 a0 04 	addd	$0x4a0:m,(r1,r0)
    1910:	0d e0       	stord	(r1,r0),0x0:s(r13)
    1912:	20 54       	movd	$0x2:s,(r1,r0)
    1914:	0d e2       	stord	(r1,r0),0x4:s(r13)
    1916:	27 32       	addw	$0x2:s,r7
    1918:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    191c:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    1920:	1b 32       	addw	$0x1:s,r11
    1922:	bf df 88 04 	storw	r11,0x488:m(sp)
    1926:	7b 52       	cmpw	$0x7:s,r11
    1928:	c0 18 ce 0b 	blt	*+0x24f6 <.L163>:m
    192c:	8d 60       	addd	$0x8:s,(r13)

0000192e <.L162>:
    192e:	8f 9f ce 04 	loadw	0x4ce:m(sp),r8
    1932:	b8 52 80 00 	cmpw	$0x80:m,r8
    1936:	00 18 90 0a 	beq	*+0x23c6 <.L412>:m

0000193a <.L164>:
    193a:	af 9f d4 04 	loadw	0x4d4:m(sp),r10
    193e:	8f 9f c4 04 	loadw	0x4c4:m(sp),r8
    1942:	8a 3b       	subw	r8,r10
    1944:	0a 52       	cmpw	$0x0:s,r10
    1946:	db 14       	bge	*+0x19dc <.L170>:s
    1948:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    194c:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    1950:	ba 52 10 00 	cmpw	$0x10:m,r10
    1954:	d7 13       	bge	*+0x19c2 <.L171>:s
    1956:	b8 54 10 00 	movd	$0x10:m,(r9,r8)
    195a:	d0 55       	movd	(r13),(r1,r0)
    195c:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    1960:	b2 5b       	movw	r11,r2
    1962:	73 5b       	movw	r7,r3
    1964:	a7 5b       	movw	r10,r7
    1966:	af af c0 04 	loadd	0x4c0:m(sp),(r11,r10)
    196a:	e7 10       	br	*+0x1978 <.L174>:s

0000196c <.L414>:
    196c:	80 60       	addd	$0x8:s,(r1,r0)
    196e:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    1972:	b7 52 10 00 	cmpw	$0x10:m,r7
    1976:	d2 12       	bge	*+0x19ba <.L413>:s

00001978 <.L174>:
    1978:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    197a:	80 e2       	stord	(r9,r8),0x4:s(r1,r0)
    197c:	b3 32 10 00 	addw	$0x10:m,r3
    1980:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    1984:	12 32       	addw	$0x1:s,r2
    1986:	2f df 88 04 	storw	r2,0x488:m(sp)
    198a:	72 52       	cmpw	$0x7:s,r2
    198c:	d0 1f       	bge	*-0x196c <.L414>:s
    198e:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    1992:	f0 61       	addd	(sp),(r1,r0)
    1994:	10 01       	push	$0x2,r0
    1996:	d4 55       	movd	(r13),(r5,r4)
    1998:	a2 55       	movd	(r11,r10),(r3,r2)
    199a:	00 c0 ea 50 	bal	(ra),*+0x6a84 <___sprint_r>:m

0000199e <.LVL60>:
    199e:	4f 60       	addd	$0x4:s,(sp)
    19a0:	00 52       	cmpw	$0x0:s,r0
    19a2:	10 18 80 02 	bne	*+0x1c22 <.L17>:m
    19a6:	f0 55       	movd	(sp),(r1,r0)
    19a8:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    19ac:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    19b0:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    19b4:	b7 52 10 00 	cmpw	$0x10:m,r7
    19b8:	c0 1e       	blt	*-0x1978 <.L174>:s

000019ba <.L413>:
    19ba:	0d 55       	movd	(r1,r0),(r13)
    19bc:	7a 5b       	movw	r7,r10
    19be:	2b 5b       	movw	r2,r11
    19c0:	37 5b       	movw	r3,r7

000019c2 <.L171>:
    19c2:	cd e0       	stord	(r12),0x0:s(r13)
    19c4:	a0 5e       	movxw	r10,(r1,r0)
    19c6:	0d e2       	stord	(r1,r0),0x4:s(r13)
    19c8:	a7 33       	addw	r10,r7
    19ca:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    19ce:	1b 32       	addw	$0x1:s,r11
    19d0:	bf df 88 04 	storw	r11,0x488:m(sp)
    19d4:	7b 52       	cmpw	$0x7:s,r11
    19d6:	c0 18 d4 0a 	blt	*+0x24aa <.L175>:m
    19da:	8d 60       	addd	$0x8:s,(r13)

000019dc <.L170>:
    19dc:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    19e0:	b0 22 00 01 	andw	$0x100:m,r0
    19e4:	00 52       	cmpw	$0x0:s,r0
    19e6:	10 18 d8 08 	bne	*+0x22be <.L176>:m
    19ea:	8f af d0 04 	loadd	0x4d0:m(sp),(r9,r8)
    19ee:	8d e0       	stord	(r9,r8),0x0:s(r13)
    19f0:	9f 9f c4 04 	loadw	0x4c4:m(sp),r9
    19f4:	90 5e       	movxw	r9,(r1,r0)
    19f6:	0d e2       	stord	(r1,r0),0x4:s(r13)
    19f8:	97 33       	addw	r9,r7
    19fa:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    19fe:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    1a02:	1b 32       	addw	$0x1:s,r11
    1a04:	bf df 88 04 	storw	r11,0x488:m(sp)
    1a08:	7b 52       	cmpw	$0x7:s,r11
    1a0a:	c0 18 68 08 	blt	*+0x2272 <.L177>:m

00001a0e <.L403>:
    1a0e:	8d 60       	addd	$0x8:s,(r13)

00001a10 <.L178>:
    1a10:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1a14:	40 22       	andw	$0x4:s,r0
    1a16:	00 52       	cmpw	$0x0:s,r0
    1a18:	00 16       	beq	*+0x1ad8 <.L247>:s
    1a1a:	8f 9f b2 04 	loadw	0x4b2:m(sp),r8
    1a1e:	9f 9f bc 04 	loadw	0x4bc:m(sp),r9
    1a22:	98 3b       	subw	r9,r8
    1a24:	08 52       	cmpw	$0x0:s,r8
    1a26:	d9 15       	bge	*+0x1ad8 <.L247>:s
    1a28:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    1a2c:	c0 05 60 a0 	movd	$0xa060:m,(r12)
    1a30:	b8 52 10 00 	cmpw	$0x10:m,r8
    1a34:	d7 13       	bge	*+0x1aa2 <.L249>:s
    1a36:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    1a3a:	d0 55       	movd	(r13),(r1,r0)
    1a3c:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    1a40:	b2 5b       	movw	r11,r2
    1a42:	8b 5b       	movw	r8,r11
    1a44:	73 5b       	movw	r7,r3
    1a46:	7f af c0 04 	loadd	0x4c0:m(sp),(r8,r7)
    1a4a:	e7 10       	br	*+0x1a58 <.L252>:s

00001a4c <.L416>:
    1a4c:	80 60       	addd	$0x8:s,(r1,r0)
    1a4e:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    1a52:	bb 52 10 00 	cmpw	$0x10:m,r11
    1a56:	d2 12       	bge	*+0x1a9a <.L415>:s

00001a58 <.L252>:
    1a58:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    1a5a:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    1a5c:	b3 32 10 00 	addw	$0x10:m,r3
    1a60:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    1a64:	12 32       	addw	$0x1:s,r2
    1a66:	2f df 88 04 	storw	r2,0x488:m(sp)
    1a6a:	72 52       	cmpw	$0x7:s,r2
    1a6c:	d0 1f       	bge	*-0x1a4c <.L416>:s
    1a6e:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    1a72:	f0 61       	addd	(sp),(r1,r0)
    1a74:	10 01       	push	$0x2,r0
    1a76:	d4 55       	movd	(r13),(r5,r4)
    1a78:	72 55       	movd	(r8,r7),(r3,r2)
    1a7a:	00 c0 0a 50 	bal	(ra),*+0x6a84 <___sprint_r>:m

00001a7e <.LVL76>:
    1a7e:	4f 60       	addd	$0x4:s,(sp)
    1a80:	00 52       	cmpw	$0x0:s,r0
    1a82:	10 18 a0 01 	bne	*+0x1c22 <.L17>:m
    1a86:	f0 55       	movd	(sp),(r1,r0)
    1a88:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    1a8c:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    1a90:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    1a94:	bb 52 10 00 	cmpw	$0x10:m,r11
    1a98:	c0 1e       	blt	*-0x1a58 <.L252>:s

00001a9a <.L415>:
    1a9a:	0d 55       	movd	(r1,r0),(r13)
    1a9c:	b8 5b       	movw	r11,r8
    1a9e:	2b 5b       	movw	r2,r11
    1aa0:	37 5b       	movw	r3,r7

00001aa2 <.L249>:
    1aa2:	cd e0       	stord	(r12),0x0:s(r13)
    1aa4:	80 5e       	movxw	r8,(r1,r0)
    1aa6:	0d e2       	stord	(r1,r0),0x4:s(r13)
    1aa8:	87 33       	addw	r8,r7
    1aaa:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    1aae:	1b 32       	addw	$0x1:s,r11
    1ab0:	bf df 88 04 	storw	r11,0x488:m(sp)
    1ab4:	7b 52       	cmpw	$0x7:s,r11
    1ab6:	d1 11       	bge	*+0x1ad8 <.L247>:s
    1ab8:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    1abc:	f1 61       	addd	(sp),(r2,r1)
    1abe:	11 01       	push	$0x2,r1
    1ac0:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    1ac4:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    1ac8:	00 c0 bc 4f 	bal	(ra),*+0x6a84 <___sprint_r>:m

00001acc <.LVL82>:
    1acc:	4f 60       	addd	$0x4:s,(sp)
    1ace:	00 52       	cmpw	$0x0:s,r0
    1ad0:	10 18 52 01 	bne	*+0x1c22 <.L17>:m
    1ad4:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7

00001ad8 <.L247>:
    1ad8:	0f 9f bc 04 	loadw	0x4bc:m(sp),r0
    1adc:	8f 9f b2 04 	loadw	0x4b2:m(sp),r8
    1ae0:	80 53       	cmpw	r8,r0
    1ae2:	72 10       	ble	*+0x1ae6 <.L253>:s
    1ae4:	80 5b       	movw	r8,r0

00001ae6 <.L253>:
    1ae6:	9f 9f be 04 	loadw	0x4be:m(sp),r9
    1aea:	09 33       	addw	r0,r9
    1aec:	9f df be 04 	storw	r9,0x4be:m(sp)
    1af0:	07 52       	cmpw	$0x0:s,r7
    1af2:	10 18 a6 07 	bne	*+0x2298 <.L254>:m
    1af6:	0f c3 88 04 	storw	$0x0:s,0x488:m(sp)
    1afa:	fd 55       	movd	(sp),(r13)

00001afc <.L425>:
    1afc:	cf af b4 04 	loadd	0x4b4:m(sp),(r12)
    1b00:	0c b0       	loadb	0x0:s(r12),r0
    1b02:	00 50       	cmpb	$0x0:s,r0
    1b04:	11 08       	sne	r1
    1b06:	01 52       	cmpw	$0x0:s,r1
    1b08:	10 18 1d fc 	bne	*-0x1724 <.L417>:m

00001b0c <.L260>:
    1b0c:	8f af b4 04 	loadd	0x4b4:m(sp),(r9,r8)
    1b10:	e0 18 77 fc 	br	*-0x1786 <.L12>:m

00001b14 <.L409>:
    1b14:	66 5f       	movzw	r6,(r7,r6)
    1b16:	26 4c       	ashud	$2:s,(r7,r6)
    1b18:	26 61       	addd	(r3,r2),(r7,r6)
    1b1a:	66 a0       	loadd	0x0:s(r7,r6),(r7,r6)
    1b1c:	e6 0a       	jump	(r7,r6)

00001b1e <.L25>:
    1b1e:	7f af c8 04 	loadd	0x4c8:m(sp),(r8,r7)
    1b22:	87 90       	loadw	0x0:s(r8,r7),r8
    1b24:	8f df b2 04 	storw	r8,0x4b2:m(sp)
    1b28:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1b2c:	2c 60       	addd	$0x2:s,(r12)
    1b2e:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1b32:	08 52       	cmpw	$0x0:s,r8
    1b34:	70 18 7f fc 	ble	*-0x17b2 <.L371>:m
    1b38:	57 5b       	movw	r5,r7
    1b3a:	87 3b       	subw	r8,r7
    1b3c:	7f df b2 04 	storw	r7,0x4b2:m(sp)

00001b40 <.L26>:
    1b40:	8f 9f b0 04 	loadw	0x4b0:m(sp),r8
    1b44:	48 26       	orw	$0x4:s,r8
    1b46:	8f df b0 04 	storw	r8,0x4b0:m(sp)
    1b4a:	e0 18 69 fc 	br	*-0x17b2 <.L371>:m

00001b4e <.L4>:
    1b4e:	4f af b8 04 	loadd	0x4b8:m(sp),(r5,r4)
    1b52:	2f af c0 04 	loadd	0x4c0:m(sp),(r3,r2)
    1b56:	00 c0 da 16 	bal	(ra),*+0x3230 <___swsetup_r>:m

00001b5a <.LVL96>:
    1b5a:	00 52       	cmpw	$0x0:s,r0
    1b5c:	1a 16       	bne	*+0x1c30 <.L258>:s
    1b5e:	cf af b8 04 	loadd	0x4b8:m(sp),(r12)
    1b62:	2c 94       	loadw	0x8:s(r12),r2
    1b64:	20 5b       	movw	r2,r0
    1b66:	b0 22 1a 00 	andw	$0x1a:m,r0
    1b6a:	a0 52       	cmpw	$0xa:s,r0
    1b6c:	10 18 57 fb 	bne	*-0x16c2 <.L8>:m

00001b70 <.L407>:
    1b70:	cf af b8 04 	loadd	0x4b8:m(sp),(r12)
    1b74:	0c 95       	loadw	0xa:s(r12),r0
    1b76:	00 52       	cmpw	$0x0:s,r0
    1b78:	60 18 4b fb 	bgt	*-0x16c2 <.L8>:m

00001b7c <.LBB12>:
    1b7c:	b2 22 fd ff 	andw	$0xfffd:m,r2
    1b80:	2f df 08 04 	storw	r2,0x408:m(sp)
    1b84:	1c 9f 58 00 	loadw	0x58:m(r12),r1
    1b88:	1f df 58 04 	storw	r1,0x458:m(sp)
    1b8c:	0f df 0a 04 	storw	r0,0x40a:m(sp)
    1b90:	0c ac       	loadd	0x18:s(r12),(r1,r0)
    1b92:	0f ef 18 04 	stord	(r1,r0),0x418:m(sp)
    1b96:	0c af 20 00 	loadd	0x20:m(r12),(r1,r0)
    1b9a:	0f ef 20 04 	stord	(r1,r0),0x420:m(sp)
    1b9e:	ff ef 00 04 	stord	(sp),0x400:m(sp)
    1ba2:	ff ef 0c 04 	stord	(sp),0x40c:m(sp)
    1ba6:	b0 5a 00 04 	movw	$0x400:m,r0
    1baa:	0f df 06 04 	storw	r0,0x406:m(sp)
    1bae:	0f df 10 04 	storw	r0,0x410:m(sp)
    1bb2:	0f c3 14 04 	storw	$0x0:s,0x414:m(sp)
    1bb6:	0f af c8 04 	loadd	0x4c8:m(sp),(r1,r0)
    1bba:	10 01       	push	$0x2,r0
    1bbc:	18 01       	push	$0x2,r8
    1bbe:	f4 55       	movd	(sp),(r5,r4)
    1bc0:	b4 60 08 04 	addd	$0x408:m,(r5,r4)
    1bc4:	2f af c8 04 	loadd	0x4c8:m(sp),(r3,r2)
    1bc8:	ff c0 6d fa 	bal	(ra),*-0x1634 <__vfprintf_r>:m

00001bcc <.LVL100>:
    1bcc:	0f df c6 04 	storw	r0,0x4c6:m(sp)
    1bd0:	8f 60       	addd	$0x8:s,(sp)
    1bd2:	00 52       	cmpw	$0x0:s,r0
    1bd4:	6b 10       	bgt	*+0x1bea <.L9>:s
    1bd6:	f4 55       	movd	(sp),(r5,r4)
    1bd8:	b4 60 00 04 	addd	$0x400:m,(r5,r4)
    1bdc:	2f af c0 04 	loadd	0x4c0:m(sp),(r3,r2)
    1be0:	00 c0 7c 2f 	bal	(ra),*+0x4b5c <__fflush_r>:m

00001be4 <.LVL103>:
    1be4:	00 52       	cmpw	$0x0:s,r0
    1be6:	10 18 70 15 	bne	*+0x3156 <.L418>:m

00001bea <.L9>:
    1bea:	0f 9f 08 04 	loadw	0x408:m(sp),r0
    1bee:	b0 22 40 00 	andw	$0x40:m,r0
    1bf2:	00 52       	cmpw	$0x0:s,r0
    1bf4:	01 12       	beq	*+0x1c36 <.L7>:s
    1bf6:	8f af b8 04 	loadd	0x4b8:m(sp),(r9,r8)
    1bfa:	08 94       	loadw	0x8:s(r9,r8),r0
    1bfc:	b0 26 40 00 	orw	$0x40:m,r0
    1c00:	08 d4       	storw	r0,0x8:s(r9,r8)
    1c02:	ea 11       	br	*+0x1c36 <.L7>:s

00001c04 <.L18>:
    1c04:	0f 9f 8a 04 	loadw	0x48a:m(sp),r0
    1c08:	00 52       	cmpw	$0x0:s,r0
    1c0a:	0c 10       	beq	*+0x1c22 <.L17>:s
    1c0c:	f0 55       	movd	(sp),(r1,r0)
    1c0e:	b0 60 84 04 	addd	$0x484:m,(r1,r0)
    1c12:	10 01       	push	$0x2,r0
    1c14:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    1c18:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    1c1c:	00 c0 68 4e 	bal	(ra),*+0x6a84 <___sprint_r>:m

00001c20 <.LVL108>:
    1c20:	4f 60       	addd	$0x4:s,(sp)

00001c22 <.L17>:
    1c22:	7f af b8 04 	loadd	0x4b8:m(sp),(r8,r7)
    1c26:	07 94       	loadw	0x8:s(r8,r7),r0
    1c28:	b0 22 40 00 	andw	$0x40:m,r0
    1c2c:	00 52       	cmpw	$0x0:s,r0
    1c2e:	04 10       	beq	*+0x1c36 <.L7>:s

00001c30 <.L258>:
    1c30:	97 5a       	movw	$-1:s,r7
    1c32:	7f df be 04 	storw	r7,0x4be:m(sp)

00001c36 <.L7>:
    1c36:	0f 9f be 04 	loadw	0x4be:m(sp),r0
    1c3a:	bf 60 fc 04 	addd	$0x4fc:m,(sp)
    1c3e:	67 02       	pop	$0x7,r7
    1c40:	9d 03       	popret	$0x2,r13,RA

00001c42 <.L15>:
    1c42:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    1c46:	f2 61       	addd	(sp),(r3,r2)
    1c48:	12 01       	push	$0x2,r2
    1c4a:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    1c4e:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    1c52:	00 c0 32 4e 	bal	(ra),*+0x6a84 <___sprint_r>:m

00001c56 <.LVL112>:
    1c56:	4f 60       	addd	$0x4:s,(sp)
    1c58:	00 52       	cmpw	$0x0:s,r0
    1c5a:	14 1e       	bne	*-0x1c22 <.L17>:s
    1c5c:	fd 55       	movd	(sp),(r13)
    1c5e:	e0 18 1f fb 	br	*-0x177c <.L16>:m

00001c62 <.L406>:
    1c62:	c2 55       	movd	(r12),(r3,r2)
    1c64:	00 c0 20 30 	bal	(ra),*+0x4c84 <___sinit>:m

00001c68 <.LVL115>:
    1c68:	e0 18 17 fa 	br	*-0x167e <.L2>:m

00001c6c <.L30>:
    1c6c:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1c70:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1c74:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    1c78:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1c7c:	b7 26 10 00 	orw	$0x10:m,r7
    1c80:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    1c84:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1c88:	b0 22 10 00 	andw	$0x10:m,r0
    1c8c:	00 52       	cmpw	$0x0:s,r0
    1c8e:	00 18 42 03 	beq	*+0x1fd0 <.L59>:m

00001c92 <.L420>:
    1c92:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1c96:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    1c98:	4c 60       	addd	$0x4:s,(r12)
    1c9a:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)

00001c9e <.L60>:
    1c9e:	08 56       	cmpd	$0x0:s,(r9,r8)
    1ca0:	60 18 da 0c 	bgt	*+0x297a <.L63>:m
    1ca4:	bf bf a6 04 	loadb	0x4a6:m(sp),r11

00001ca8 <.L393>:
    1ca8:	80 5b       	movw	r8,r0
    1caa:	90 27       	orw	r9,r0
    1cac:	00 52       	cmpw	$0x0:s,r0
    1cae:	12 08       	sne	r2
    1cb0:	10 58       	movb	$0x1:s,r0

00001cb2 <.L64>:
    1cb2:	0a 52       	cmpw	$0x0:s,r10
    1cb4:	67 10       	bgt	*+0x1cc2 <.L138>:s
    1cb6:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1cba:	b7 22 7f ff 	andw	$0xff7f:m,r7
    1cbe:	7f df b0 04 	storw	r7,0x4b0:m(sp)

00001cc2 <.L138>:
    1cc2:	0a 52       	cmpw	$0x0:s,r10
    1cc4:	11 08       	sne	r1
    1cc6:	01 52       	cmpw	$0x0:s,r1
    1cc8:	1f 12       	bne	*+0x1d26 <.L281>:s
    1cca:	02 50       	cmpb	$0x0:s,r2
    1ccc:	1d 12       	bne	*+0x1d26 <.L281>:s
    1cce:	00 50       	cmpb	$0x0:s,r0
    1cd0:	10 18 c8 07 	bne	*+0x2498 <.L278>:m
    1cd4:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1cd8:	10 22       	andw	$0x1:s,r0
    1cda:	00 52       	cmpw	$0x0:s,r0
    1cdc:	00 18 18 09 	beq	*+0x25f4 <.L279>:m
    1ce0:	b0 58 30 00 	movb	$0x30:m,r0
    1ce4:	0f ff 83 04 	storb	r0,0x483:m(sp)

00001ce8 <.L394>:
    1ce8:	9f 9f ee 04 	loadw	0x4ee:m(sp),r9
    1cec:	9f df c4 04 	storw	r9,0x4c4:m(sp)
    1cf0:	fc 55       	movd	(sp),(r12)
    1cf2:	bc 60 83 04 	addd	$0x483:m,(r12)
    1cf6:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)

00001cfa <.L146>:
    1cfa:	9f 9f c4 04 	loadw	0x4c4:m(sp),r9
    1cfe:	9f df bc 04 	storw	r9,0x4bc:m(sp)
    1d02:	a9 53       	cmpw	r10,r9
    1d04:	73 10       	ble	*+0x1d0a <.L151>:s
    1d06:	af df bc 04 	storw	r10,0x4bc:m(sp)

00001d0a <.L151>:
    1d0a:	af df d4 04 	storw	r10,0x4d4:m(sp)
    1d0e:	0f c3 da 04 	storw	$0x0:s,0x4da:m(sp)

00001d12 <.L58>:
    1d12:	0b 50       	cmpb	$0x0:s,r11
    1d14:	00 18 f1 fa 	beq	*-0x1804 <.L152>:m

00001d18 <.L373>:
    1d18:	7f 9f bc 04 	loadw	0x4bc:m(sp),r7
    1d1c:	17 32       	addw	$0x1:s,r7
    1d1e:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    1d22:	e0 18 e3 fa 	br	*-0x1804 <.L152>:m

00001d26 <.L281>:
    1d26:	10 50       	cmpb	$0x1:s,r0
    1d28:	00 18 18 09 	beq	*+0x2640 <.L142>:m
    1d2c:	20 50       	cmpb	$0x2:s,r0
    1d2e:	00 18 d8 08 	beq	*+0x2606 <.L143>:m
    1d32:	f0 55       	movd	(sp),(r1,r0)
    1d34:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    1d38:	b2 58 30 00 	movb	$0x30:m,r2

00001d3c <.L144>:
    1d3c:	06 55       	movd	(r1,r0),(r7,r6)
    1d3e:	84 55       	movd	(r9,r8),(r5,r4)
    1d40:	44 00 00 00 	andd	$0x7:l,(r5,r4)
    1d44:	07 00 
    1d46:	24 31       	addb	r2,r4
    1d48:	40 f0       	storb	r4,0x0:s(r1,r0)
    1d4a:	d8 4b       	lshd	$-3:s,(r9,r8)
    1d4c:	90 60       	addd	$-1:s,(r1,r0)
    1d4e:	08 56       	cmpd	$0x0:s,(r9,r8)
    1d50:	16 1f       	bne	*-0x1d3c <.L144>:s
    1d52:	6f ef d0 04 	stord	(r7,r6),0x4d0:m(sp)
    1d56:	62 55       	movd	(r7,r6),(r3,r2)
    1d58:	5f 9f b0 04 	loadw	0x4b0:m(sp),r5
    1d5c:	15 22       	andw	$0x1:s,r5
    1d5e:	05 52       	cmpw	$0x0:s,r5
    1d60:	10 18 f4 0b 	bne	*+0x2954 <.L145>:m
    1d64:	8f 9f a8 04 	loadw	0x4a8:m(sp),r8
    1d68:	68 3b       	subw	r6,r8
    1d6a:	8f df c4 04 	storw	r8,0x4c4:m(sp)
    1d6e:	e6 1c       	br	*-0x1cfa <.L146>:s

00001d70 <.L31>:
    1d70:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1d74:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1d78:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    1d7c:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1d80:	80 22       	andw	$0x8:s,r0
    1d82:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1d86:	00 52       	cmpw	$0x0:s,r0
    1d88:	00 18 d8 0d 	beq	*+0x2b60 <.L65>:m
    1d8c:	4c a0       	loadd	0x0:s(r12),(r5,r4)
    1d8e:	6c a2       	loadd	0x4:s(r12),(r7,r6)
    1d90:	4f ef e0 04 	stord	(r5,r4),0x4e0:m(sp)
    1d94:	6f ef e4 04 	stord	(r7,r6),0x4e4:m(sp)
    1d98:	8c 60       	addd	$0x8:s,(r12)
    1d9a:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)

00001d9e <.L66>:
    1d9e:	0f af e0 04 	loadd	0x4e0:m(sp),(r1,r0)
    1da2:	2f af e4 04 	loadd	0x4e4:m(sp),(r3,r2)
    1da6:	30 01       	push	$0x4,r0
    1da8:	00 c0 60 4a 	bal	(ra),*+0x6808 <___fpclassifyd>:m

00001dac <.LVL146>:
    1dac:	8f 60       	addd	$0x8:s,(sp)
    1dae:	10 52       	cmpw	$0x1:s,r0
    1db0:	10 18 0c 0c 	bne	*+0x29bc <.L67>:m
    1db4:	00 54       	movd	$0x0:s,(r1,r0)
    1db6:	02 54       	movd	$0x0:s,(r3,r2)
    1db8:	30 01       	push	$0x4,r0
    1dba:	2f af e8 04 	loadd	0x4e8:m(sp),(r3,r2)
    1dbe:	4f af ec 04 	loadd	0x4ec:m(sp),(r5,r4)
    1dc2:	32 01       	push	$0x4,r2
    1dc4:	00 c0 00 77 	bal	(ra),*+0x94c4 <___ltdf2>:m
    1dc8:	bf 60 10 00 	addd	$0x10:m,(sp)
    1dcc:	00 52       	cmpw	$0x0:s,r0
    1dce:	60 18 c8 10 	bgt	*+0x2e96 <.L68>:m
    1dd2:	bf bf a6 04 	loadb	0x4a6:m(sp),r11

00001dd6 <.L69>:
    1dd6:	70 05 c2 9e 	movd	$0x9ec2:m,(r8,r7)
    1dda:	7f ef d0 04 	stord	(r8,r7),0x4d0:m(sp)
    1dde:	8f 9f d8 04 	loadw	0x4d8:m(sp),r8
    1de2:	b8 52 47 00 	cmpw	$0x47:m,r8
    1de6:	d0 18 d0 0e 	bge	*+0x2cb6 <.L419>:m

00001dea <.L70>:
    1dea:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1dee:	b7 22 7f ff 	andw	$0xff7f:m,r7
    1df2:	7f df b0 04 	storw	r7,0x4b0:m(sp)

00001df6 <.L396>:
    1df6:	3f c3 bc 04 	storw	$0x3:s,0x4bc:m(sp)
    1dfa:	8f 9f bc 04 	loadw	0x4bc:m(sp),r8
    1dfe:	8f df c4 04 	storw	r8,0x4c4:m(sp)
    1e02:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    1e06:	9f 9f d4 04 	loadw	0x4d4:m(sp),r9
    1e0a:	9f df da 04 	storw	r9,0x4da:m(sp)
    1e0e:	e2 18       	br	*-0x1d12 <.L58>:s

00001e10 <.L36>:
    1e10:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1e14:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1e18:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1e1c:	0c 90       	loadw	0x0:s(r12),r0
    1e1e:	0f ff 5c 04 	storb	r0,0x45c:m(sp)
    1e22:	0f 83 a6 04 	storb	$0x0:s,0x4a6:m(sp)
    1e26:	2c 60       	addd	$0x2:s,(r12)
    1e28:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1e2c:	e0 18 b5 f9 	br	*-0x17e0 <.L398>:m

00001e30 <.L23>:
    1e30:	04 50       	cmpb	$0x0:s,r4
    1e32:	10 18 81 f9 	bne	*-0x17b2 <.L371>:m
    1e36:	b4 58 20 00 	movb	$0x20:m,r4
    1e3a:	e0 18 79 f9 	br	*-0x17b2 <.L371>:m

00001e3e <.L24>:
    1e3e:	9f 9f b0 04 	loadw	0x4b0:m(sp),r9
    1e42:	19 26       	orw	$0x1:s,r9
    1e44:	9f df b0 04 	storw	r9,0x4b0:m(sp)
    1e48:	e0 18 6b f9 	br	*-0x17b2 <.L371>:m

00001e4c <.L32>:
    1e4c:	8f 9f b0 04 	loadw	0x4b0:m(sp),r8
    1e50:	88 26       	orw	$0x8:s,r8
    1e52:	8f df b0 04 	storw	r8,0x4b0:m(sp)
    1e56:	e0 18 5d f9 	br	*-0x17b2 <.L371>:m

00001e5a <.L33>:
    1e5a:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1e5e:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1e62:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1e66:	b7 26 10 00 	orw	$0x10:m,r7
    1e6a:	7f df b0 04 	storw	r7,0x4b0:m(sp)

00001e6e <.L49>:
    1e6e:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1e72:	b0 22 10 00 	andw	$0x10:m,r0
    1e76:	00 52       	cmpw	$0x0:s,r0
    1e78:	00 18 54 08 	beq	*+0x26cc <.L119>:m
    1e7c:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1e80:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    1e82:	80 5b       	movw	r8,r0
    1e84:	90 27       	orw	r9,r0
    1e86:	00 52       	cmpw	$0x0:s,r0
    1e88:	12 08       	sne	r2
    1e8a:	4c 60       	addd	$0x4:s,(r12)
    1e8c:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1e90:	00 58       	movb	$0x0:s,r0

00001e92 <.L120>:
    1e92:	0f 83 a6 04 	storb	$0x0:s,0x4a6:m(sp)
    1e96:	0b 58       	movb	$0x0:s,r11
    1e98:	e0 18 1b fe 	br	*-0x1cb2 <.L64>:m

00001e9c <.L34>:
    1e9c:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1ea0:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1ea4:	9f 9f b0 04 	loadw	0x4b0:m(sp),r9
    1ea8:	b9 26 10 00 	orw	$0x10:m,r9
    1eac:	9f df b0 04 	storw	r9,0x4b0:m(sp)

00001eb0 <.L48>:
    1eb0:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1eb4:	b0 22 10 00 	andw	$0x10:m,r0
    1eb8:	00 52       	cmpw	$0x0:s,r0
    1eba:	00 18 3a 08 	beq	*+0x26f4 <.L132>:m
    1ebe:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1ec2:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    1ec4:	80 5b       	movw	r8,r0
    1ec6:	90 27       	orw	r9,r0
    1ec8:	00 52       	cmpw	$0x0:s,r0
    1eca:	12 08       	sne	r2
    1ecc:	4c 60       	addd	$0x4:s,(r12)
    1ece:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1ed2:	10 58       	movb	$0x1:s,r0
    1ed4:	ef 1d       	br	*-0x1e92 <.L120>:s

00001ed6 <.L35>:
    1ed6:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1eda:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1ede:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    1ee2:	80 05 ce 9e 	movd	$0x9ece:m,(r9,r8)
    1ee6:	8f ef f0 04 	stord	(r9,r8),0x4f0:m(sp)

00001eea <.L51>:
    1eea:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1eee:	b0 22 10 00 	andw	$0x10:m,r0
    1ef2:	00 52       	cmpw	$0x0:s,r0
    1ef4:	00 18 dc 01 	beq	*+0x20d0 <.L134>:m

00001ef8 <.L422>:
    1ef8:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1efc:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    1efe:	4c 60       	addd	$0x4:s,(r12)
    1f00:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1f04:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1f08:	10 22       	andw	$0x1:s,r0
    1f0a:	00 52       	cmpw	$0x0:s,r0
    1f0c:	10 18 de 01 	bne	*+0x20ea <.L137>:m

00001f10 <.L423>:
    1f10:	80 5b       	movw	r8,r0
    1f12:	90 27       	orw	r9,r0
    1f14:	00 52       	cmpw	$0x0:s,r0
    1f16:	12 08       	sne	r2
    1f18:	20 58       	movb	$0x2:s,r0
    1f1a:	ec 1b       	br	*-0x1e92 <.L120>:s

00001f1c <.L27>:
    1f1c:	80 b0       	loadb	0x0:s(r1,r0),r8
    1f1e:	88 5c       	movxb	r8,r8
    1f20:	10 60       	addd	$0x1:s,(r1,r0)
    1f22:	b8 52 2a 00 	cmpw	$0x2a:m,r8
    1f26:	00 18 aa 12 	beq	*+0x31d0 <.L53>:m
    1f2a:	86 5b       	movw	r8,r6
    1f2c:	b6 32 d0 ff 	addw	$0xffd0:m,r6
    1f30:	0a 5a       	movw	$0x0:s,r10
    1f32:	b6 52 09 00 	cmpw	$0x9:m,r6
    1f36:	a0 18 83 f8 	blo	*-0x17b8 <.L372>:m

00001f3a <.L333>:
    1f3a:	a7 5b       	movw	r10,r7
    1f3c:	a7 33       	addw	r10,r7
    1f3e:	3a 42       	ashuw	$3:s,r10
    1f40:	7a 33       	addw	r7,r10
    1f42:	6a 33       	addw	r6,r10
    1f44:	80 b0       	loadb	0x0:s(r1,r0),r8
    1f46:	88 5c       	movxb	r8,r8
    1f48:	10 60       	addd	$0x1:s,(r1,r0)
    1f4a:	86 5b       	movw	r8,r6
    1f4c:	b6 32 d0 ff 	addw	$0xffd0:m,r6
    1f50:	b6 52 09 00 	cmpw	$0x9:m,r6
    1f54:	b3 1f       	bhs	*-0x1f3a <.L333>:s
    1f56:	0a 52       	cmpw	$0x0:s,r10
    1f58:	70 18 61 f8 	ble	*-0x17b8 <.L372>:m
    1f5c:	9a 5a       	movw	$-1:s,r10
    1f5e:	e0 18 5b f8 	br	*-0x17b8 <.L372>:m

00001f62 <.L38>:
    1f62:	9f 9f b0 04 	loadw	0x4b0:m(sp),r9
    1f66:	b9 26 40 00 	orw	$0x40:m,r9
    1f6a:	9f df b0 04 	storw	r9,0x4b0:m(sp)
    1f6e:	e0 18 45 f8 	br	*-0x17b2 <.L371>:m

00001f72 <.L261>:
    1f72:	b4 58 2b 00 	movb	$0x2b:m,r4
    1f76:	e0 18 3d f8 	br	*-0x17b2 <.L371>:m

00001f7a <.L28>:
    1f7a:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1f7e:	b7 26 80 00 	orw	$0x80:m,r7
    1f82:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    1f86:	e0 18 2d f8 	br	*-0x17b2 <.L371>:m

00001f8a <.L262>:
    1f8a:	07 5a       	movw	$0x0:s,r7
    1f8c:	86 5b       	movw	r8,r6
    1f8e:	b6 32 d0 ff 	addw	$0xffd0:m,r6

00001f92 <.L29>:
    1f92:	78 5b       	movw	r7,r8
    1f94:	78 33       	addw	r7,r8
    1f96:	37 42       	ashuw	$3:s,r7
    1f98:	87 33       	addw	r8,r7
    1f9a:	67 33       	addw	r6,r7
    1f9c:	80 b0       	loadb	0x0:s(r1,r0),r8
    1f9e:	88 5c       	movxb	r8,r8
    1fa0:	10 60       	addd	$0x1:s,(r1,r0)
    1fa2:	86 5b       	movw	r8,r6
    1fa4:	b6 32 d0 ff 	addw	$0xffd0:m,r6
    1fa8:	b6 52 09 00 	cmpw	$0x9:m,r6
    1fac:	b3 1f       	bhs	*-0x1f92 <.L29>:s
    1fae:	7f df b2 04 	storw	r7,0x4b2:m(sp)
    1fb2:	e0 18 07 f8 	br	*-0x17b8 <.L372>:m

00001fb6 <.L37>:
    1fb6:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1fba:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    1fbe:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    1fc2:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    1fc6:	b0 22 10 00 	andw	$0x10:m,r0
    1fca:	00 52       	cmpw	$0x0:s,r0
    1fcc:	10 18 c7 fc 	bne	*-0x1c92 <.L420>:m

00001fd0 <.L59>:
    1fd0:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1fd4:	8c 90       	loadw	0x0:s(r12),r8
    1fd6:	2c 60       	addd	$0x2:s,(r12)
    1fd8:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    1fdc:	88 5e       	movxw	r8,(r9,r8)
    1fde:	e0 18 c1 fc 	br	*-0x1c9e <.L60>:m

00001fe2 <.L42>:
    1fe2:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    1fe6:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    1fea:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    1fec:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    1ff0:	27 26       	orw	$0x2:s,r7
    1ff2:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    1ff6:	b0 58 30 00 	movb	$0x30:m,r0
    1ffa:	0f ff a0 04 	storb	r0,0x4a0:m(sp)
    1ffe:	b0 58 78 00 	movb	$0x78:m,r0
    2002:	0f ff a1 04 	storb	r0,0x4a1:m(sp)
    2006:	80 5b       	movw	r8,r0
    2008:	90 27       	orw	r9,r0
    200a:	00 52       	cmpw	$0x0:s,r0
    200c:	12 08       	sne	r2
    200e:	4c 60       	addd	$0x4:s,(r12)
    2010:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    2014:	c0 05 e0 9e 	movd	$0x9ee0:m,(r12)
    2018:	cf ef f0 04 	stord	(r12),0x4f0:m(sp)
    201c:	20 58       	movb	$0x2:s,r0
    201e:	b7 5a 78 00 	movw	$0x78:m,r7
    2022:	7f df d8 04 	storw	r7,0x4d8:m(sp)
    2026:	e0 18 6d fe 	br	*-0x1e92 <.L120>:m

0000202a <.L43>:
    202a:	8f 9f b0 04 	loadw	0x4b0:m(sp),r8
    202e:	b8 26 10 00 	orw	$0x10:m,r8
    2032:	8f df b0 04 	storw	r8,0x4b0:m(sp)
    2036:	e0 18 7d f7 	br	*-0x17b2 <.L371>:m

0000203a <.L44>:
    203a:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    203e:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    2042:	0f 83 a6 04 	storb	$0x0:s,0x4a6:m(sp)
    2046:	8f af c8 04 	loadd	0x4c8:m(sp),(r9,r8)
    204a:	48 60       	addd	$0x4:s,(r9,r8)
    204c:	0f af c8 04 	loadd	0x4c8:m(sp),(r1,r0)
    2050:	10 a0       	loadd	0x0:s(r1,r0),(r2,r1)
    2052:	1f ef d0 04 	stord	(r2,r1),0x4d0:m(sp)
    2056:	01 56       	cmpd	$0x0:s,(r2,r1)
    2058:	00 18 f8 0d 	beq	*+0x2e50 <.L421>:m
    205c:	0a 52       	cmpw	$0x0:s,r10
    205e:	60 18 30 0d 	bgt	*+0x2d8e <.L125>:m
    2062:	a5 5e       	movxw	r10,(r6,r5)
    2064:	04 5a       	movw	$0x0:s,r4
    2066:	2f af d0 04 	loadd	0x4d0:m(sp),(r3,r2)
    206a:	00 c0 0a 3a 	bal	(ra),*+0x5a74 <_memchr>:m

0000206e <.LVL229>:
    206e:	00 56       	cmpd	$0x0:s,(r1,r0)
    2070:	00 18 fc 00 	beq	*+0x216c <.L397>:m
    2074:	07 5b       	movw	r0,r7
    2076:	2f 9f d0 04 	loadw	0x4d0:m(sp),r2
    207a:	27 3b       	subw	r2,r7
    207c:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    2080:	a7 53       	cmpw	r10,r7
    2082:	c5 17       	blt	*+0x216c <.L397>:s
    2084:	0f 9f c4 04 	loadw	0x4c4:m(sp),r0

00002088 <.L395>:
    2088:	90 2a       	xorw	$-1:s,r0
    208a:	10 43       	ashuw	$-15:s,r0
    208c:	7f 9f c4 04 	loadw	0x4c4:m(sp),r7
    2090:	07 23       	andw	r0,r7
    2092:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    2096:	bf bf a6 04 	loadb	0x4a6:m(sp),r11
    209a:	8f ef c8 04 	stord	(r9,r8),0x4c8:m(sp)
    209e:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    20a2:	8f 9f d4 04 	loadw	0x4d4:m(sp),r8
    20a6:	8f df da 04 	storw	r8,0x4da:m(sp)
    20aa:	e0 18 69 fc 	br	*-0x1d12 <.L58>:m

000020ae <.L46>:
    20ae:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    20b2:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    20b6:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    20ba:	70 05 e0 9e 	movd	$0x9ee0:m,(r8,r7)
    20be:	7f ef f0 04 	stord	(r8,r7),0x4f0:m(sp)
    20c2:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    20c6:	b0 22 10 00 	andw	$0x10:m,r0
    20ca:	00 52       	cmpw	$0x0:s,r0
    20cc:	10 18 2d fe 	bne	*-0x1ef8 <.L422>:m

000020d0 <.L134>:
    20d0:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    20d4:	8c 90       	loadw	0x0:s(r12),r8
    20d6:	88 5f       	movzw	r8,(r9,r8)
    20d8:	2c 60       	addd	$0x2:s,(r12)
    20da:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    20de:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    20e2:	10 22       	andw	$0x1:s,r0
    20e4:	00 52       	cmpw	$0x0:s,r0
    20e6:	00 18 2b fe 	beq	*-0x1f10 <.L423>:m

000020ea <.L137>:
    20ea:	08 56       	cmpd	$0x0:s,(r9,r8)
    20ec:	00 18 30 0a 	beq	*+0x2b1c <.L277>:m
    20f0:	b0 58 30 00 	movb	$0x30:m,r0
    20f4:	0f ff a0 04 	storb	r0,0x4a0:m(sp)
    20f8:	0f bf d8 04 	loadb	0x4d8:m(sp),r0
    20fc:	0f ff a1 04 	storb	r0,0x4a1:m(sp)
    2100:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    2104:	27 26       	orw	$0x2:s,r7
    2106:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    210a:	12 58       	movb	$0x1:s,r2
    210c:	20 58       	movb	$0x2:s,r0
    210e:	e0 18 85 fd 	br	*-0x1e92 <.L120>:m

00002112 <.L39>:
    2112:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    2116:	b7 26 10 00 	orw	$0x10:m,r7
    211a:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    211e:	e0 18 95 f6 	br	*-0x17b2 <.L371>:m

00002122 <.L40>:
    2122:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    2126:	4f ff a6 04 	storb	r4,0x4a6:m(sp)
    212a:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    212e:	b0 22 10 00 	andw	$0x10:m,r0
    2132:	7f af c8 04 	loadd	0x4c8:m(sp),(r8,r7)
    2136:	00 52       	cmpw	$0x0:s,r0
    2138:	00 18 ec 09 	beq	*+0x2b24 <.L116>:m
    213c:	07 a0       	loadd	0x0:s(r8,r7),(r1,r0)
    213e:	8f 9f be 04 	loadw	0x4be:m(sp),r8
    2142:	82 5e       	movxw	r8,(r3,r2)
    2144:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    2146:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    214a:	4c 60       	addd	$0x4:s,(r12)
    214c:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    2150:	e0 18 c5 f5 	br	*-0x1714 <.L374>:m

00002154 <.L389>:
    2154:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    2158:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    215c:	e0 18 13 fd 	br	*-0x1e6e <.L49>:m

00002160 <.L390>:
    2160:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    2164:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    2168:	e0 18 49 fd 	br	*-0x1eb0 <.L48>:m

0000216c <.L397>:
    216c:	af df bc 04 	storw	r10,0x4bc:m(sp)
    2170:	bf bf a6 04 	loadb	0x4a6:m(sp),r11
    2174:	af df c4 04 	storw	r10,0x4c4:m(sp)
    2178:	8f ef c8 04 	stord	(r9,r8),0x4c8:m(sp)
    217c:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    2180:	7f 9f d4 04 	loadw	0x4d4:m(sp),r7
    2184:	7f df da 04 	storw	r7,0x4da:m(sp)
    2188:	e0 18 8b fb 	br	*-0x1d12 <.L58>:m

0000218c <.L159>:
    218c:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2190:	f1 61       	addd	(sp),(r2,r1)
    2192:	11 01       	push	$0x2,r1
    2194:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2198:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    219c:	00 c0 e8 48 	bal	(ra),*+0x6a84 <___sprint_r>:m

000021a0 <.LVL250>:
    21a0:	4f 60       	addd	$0x4:s,(sp)
    21a2:	00 52       	cmpw	$0x0:s,r0
    21a4:	10 18 7f fa 	bne	*-0x1c22 <.L17>:m
    21a8:	bf bf a6 04 	loadb	0x4a6:m(sp),r11
    21ac:	fd 55       	movd	(sp),(r13)

000021ae <.L399>:
    21ae:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    21b2:	e0 18 29 f7 	br	*-0x18da <.L154>:m

000021b6 <.L179>:
    21b6:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    21ba:	18 52       	cmpw	$0x1:s,r8
    21bc:	d0 18 78 06 	bge	*+0x2834 <.L424>:m

000021c0 <.L228>:
    21c0:	8f af d0 04 	loadd	0x4d0:m(sp),(r9,r8)
    21c4:	8d e0       	stord	(r9,r8),0x0:s(r13)
    21c6:	10 54       	movd	$0x1:s,(r1,r0)
    21c8:	0d e2       	stord	(r1,r0),0x4:s(r13)
    21ca:	17 32       	addw	$0x1:s,r7
    21cc:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    21d0:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    21d4:	1b 32       	addw	$0x1:s,r11
    21d6:	bf df 88 04 	storw	r11,0x488:m(sp)
    21da:	7b 52       	cmpw	$0x7:s,r11
    21dc:	c0 18 90 06 	blt	*+0x286c <.L230>:m
    21e0:	d0 55       	movd	(r13),(r1,r0)
    21e2:	80 60       	addd	$0x8:s,(r1,r0)

000021e4 <.L231>:
    21e4:	8f af dc 04 	loadd	0x4dc:m(sp),(r9,r8)
    21e8:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    21ea:	9f 9f e8 04 	loadw	0x4e8:m(sp),r9
    21ee:	90 d2       	storw	r9,0x4:s(r1,r0)
    21f0:	cf 9f ec 04 	loadw	0x4ec:m(sp),r12
    21f4:	c0 d3       	storw	r12,0x6:s(r1,r0)
    21f6:	97 33       	addw	r9,r7
    21f8:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    21fc:	1b 32       	addw	$0x1:s,r11
    21fe:	bf df 88 04 	storw	r11,0x488:m(sp)
    2202:	7b 52       	cmpw	$0x7:s,r11
    2204:	c0 18 92 06 	blt	*+0x2896 <.L232>:m
    2208:	0d 55       	movd	(r1,r0),(r13)
    220a:	8d 60       	addd	$0x8:s,(r13)

0000220c <.L233>:
    220c:	00 54       	movd	$0x0:s,(r1,r0)
    220e:	02 54       	movd	$0x0:s,(r3,r2)
    2210:	30 01       	push	$0x4,r0
    2212:	2f af e8 04 	loadd	0x4e8:m(sp),(r3,r2)
    2216:	4f af ec 04 	loadd	0x4ec:m(sp),(r5,r4)
    221a:	32 01       	push	$0x4,r2
    221c:	00 c0 4c 71 	bal	(ra),*+0x9368 <___nedf2>:m
    2220:	bf 60 10 00 	addd	$0x10:m,(sp)
    2224:	00 52       	cmpw	$0x0:s,r0
    2226:	00 18 30 04 	beq	*+0x2656 <.L385>:m
    222a:	0f af d0 04 	loadd	0x4d0:m(sp),(r1,r0)
    222e:	10 60       	addd	$0x1:s,(r1,r0)
    2230:	0d e0       	stord	(r1,r0),0x0:s(r13)
    2232:	2f 9f d6 04 	loadw	0x4d6:m(sp),r2
    2236:	92 32       	addw	$-1:s,r2
    2238:	20 5e       	movxw	r2,(r1,r0)
    223a:	0d e2       	stord	(r1,r0),0x4:s(r13)
    223c:	27 33       	addw	r2,r7
    223e:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2242:	1b 32       	addw	$0x1:s,r11
    2244:	bf df 88 04 	storw	r11,0x488:m(sp)
    2248:	7b 52       	cmpw	$0x7:s,r11
    224a:	c0 18 24 02 	blt	*+0x246e <.L236>:m

0000224e <.L402>:
    224e:	8d 60       	addd	$0x8:s,(r13)

00002250 <.L237>:
    2250:	f0 55       	movd	(sp),(r1,r0)
    2252:	b0 60 93 04 	addd	$0x493:m,(r1,r0)
    2256:	0d e0       	stord	(r1,r0),0x0:s(r13)
    2258:	8f 9f ea 04 	loadw	0x4ea:m(sp),r8
    225c:	80 5e       	movxw	r8,(r1,r0)
    225e:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2260:	87 33       	addw	r8,r7
    2262:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2266:	1b 32       	addw	$0x1:s,r11
    2268:	bf df 88 04 	storw	r11,0x488:m(sp)
    226c:	7b 52       	cmpw	$0x7:s,r11
    226e:	d0 18 a1 f7 	bge	*-0x1a0e <.L403>:m

00002272 <.L177>:
    2272:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2276:	f0 61       	addd	(sp),(r1,r0)
    2278:	10 01       	push	$0x2,r0

0000227a <.L400>:
    227a:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    227e:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2282:	00 c0 02 48 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002286 <.LVL263>:
    2286:	4f 60       	addd	$0x4:s,(sp)
    2288:	00 52       	cmpw	$0x0:s,r0
    228a:	10 18 99 f9 	bne	*-0x1c22 <.L17>:m
    228e:	fd 55       	movd	(sp),(r13)
    2290:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2294:	e0 18 7d f7 	br	*-0x1a10 <.L178>:m

00002298 <.L254>:
    2298:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    229c:	f0 61       	addd	(sp),(r1,r0)
    229e:	10 01       	push	$0x2,r0
    22a0:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    22a4:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    22a8:	00 c0 dc 47 	bal	(ra),*+0x6a84 <___sprint_r>:m

000022ac <.LVL265>:
    22ac:	4f 60       	addd	$0x4:s,(sp)
    22ae:	00 52       	cmpw	$0x0:s,r0
    22b0:	10 18 73 f9 	bne	*-0x1c22 <.L17>:m
    22b4:	0f c3 88 04 	storw	$0x0:s,0x488:m(sp)
    22b8:	fd 55       	movd	(sp),(r13)
    22ba:	e0 18 43 f8 	br	*-0x1afc <.L425>:m

000022be <.L176>:
    22be:	8f 9f d8 04 	loadw	0x4d8:m(sp),r8
    22c2:	b8 52 65 00 	cmpw	$0x65:m,r8
    22c6:	d0 18 f1 fe 	bge	*-0x21b6 <.L179>:m
    22ca:	00 54       	movd	$0x0:s,(r1,r0)
    22cc:	02 54       	movd	$0x0:s,(r3,r2)
    22ce:	30 01       	push	$0x4,r0
    22d0:	0f af e8 04 	loadd	0x4e8:m(sp),(r1,r0)
    22d4:	2f af ec 04 	loadd	0x4ec:m(sp),(r3,r2)
    22d8:	30 01       	push	$0x4,r0
    22da:	00 c0 1a 70 	bal	(ra),*+0x92f4 <___eqdf2>:m
    22de:	bf 60 10 00 	addd	$0x10:m,(sp)
    22e2:	00 52       	cmpw	$0x0:s,r0
    22e4:	10 18 38 02 	bne	*+0x251c <.L380>:m
    22e8:	00 05 fa 9e 	movd	$0x9efa:m,(r1,r0)
    22ec:	0d e0       	stord	(r1,r0),0x0:s(r13)
    22ee:	10 54       	movd	$0x1:s,(r1,r0)
    22f0:	0d e2       	stord	(r1,r0),0x4:s(r13)
    22f2:	17 32       	addw	$0x1:s,r7
    22f4:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    22f8:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    22fc:	1b 32       	addw	$0x1:s,r11
    22fe:	bf df 88 04 	storw	r11,0x488:m(sp)
    2302:	7b 52       	cmpw	$0x7:s,r11
    2304:	c0 18 b6 08 	blt	*+0x2bba <.L182>:m
    2308:	8d 60       	addd	$0x8:s,(r13)

0000230a <.L183>:
    230a:	0f 9f a4 04 	loadw	0x4a4:m(sp),r0
    230e:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2312:	80 53       	cmpw	r8,r0
    2314:	67 10       	bgt	*+0x2322 <.L184>:s
    2316:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    231a:	10 22       	andw	$0x1:s,r0
    231c:	00 52       	cmpw	$0x0:s,r0
    231e:	00 18 f3 f6 	beq	*-0x1a10 <.L178>:m

00002322 <.L184>:
    2322:	8f af dc 04 	loadd	0x4dc:m(sp),(r9,r8)
    2326:	8d e0       	stord	(r9,r8),0x0:s(r13)
    2328:	9f 9f e8 04 	loadw	0x4e8:m(sp),r9
    232c:	9d d2       	storw	r9,0x4:s(r13)
    232e:	cf 9f ec 04 	loadw	0x4ec:m(sp),r12
    2332:	cd d3       	storw	r12,0x6:s(r13)
    2334:	97 33       	addw	r9,r7
    2336:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    233a:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    233e:	1b 32       	addw	$0x1:s,r11
    2340:	bf df 88 04 	storw	r11,0x488:m(sp)
    2344:	7b 52       	cmpw	$0x7:s,r11
    2346:	c0 18 d4 09 	blt	*+0x2d1a <.L185>:m
    234a:	8d 60       	addd	$0x8:s,(r13)

0000234c <.L186>:
    234c:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2350:	98 32       	addw	$-1:s,r8
    2352:	08 52       	cmpw	$0x0:s,r8
    2354:	d0 18 bd f6 	bge	*-0x1a10 <.L178>:m
    2358:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    235c:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    2360:	b8 52 10 00 	cmpw	$0x10:m,r8
    2364:	d0 18 34 06 	bge	*+0x2998 <.L187>:m
    2368:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    236c:	d0 55       	movd	(r13),(r1,r0)
    236e:	df af c0 04 	loadd	0x4c0:m(sp),(r13)
    2372:	b2 5b       	movw	r11,r2
    2374:	8b 5b       	movw	r8,r11
    2376:	73 5b       	movw	r7,r3
    2378:	7f af b8 04 	loadd	0x4b8:m(sp),(r8,r7)
    237c:	e8 10       	br	*+0x238c <.L190>:s

0000237e <.L427>:
    237e:	80 60       	addd	$0x8:s,(r1,r0)

00002380 <.L189>:
    2380:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    2384:	bb 52 10 00 	cmpw	$0x10:m,r11
    2388:	d0 18 08 06 	bge	*+0x2990 <.L426>:m

0000238c <.L190>:
    238c:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    238e:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    2390:	b3 32 10 00 	addw	$0x10:m,r3
    2394:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    2398:	12 32       	addw	$0x1:s,r2
    239a:	2f df 88 04 	storw	r2,0x488:m(sp)
    239e:	72 52       	cmpw	$0x7:s,r2
    23a0:	df 1e       	bge	*-0x237e <.L427>:s
    23a2:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    23a6:	f1 61       	addd	(sp),(r2,r1)
    23a8:	11 01       	push	$0x2,r1
    23aa:	74 55       	movd	(r8,r7),(r5,r4)
    23ac:	d2 55       	movd	(r13),(r3,r2)
    23ae:	00 c0 d6 46 	bal	(ra),*+0x6a84 <___sprint_r>:m

000023b2 <.LVL279>:
    23b2:	4f 60       	addd	$0x4:s,(sp)
    23b4:	00 52       	cmpw	$0x0:s,r0
    23b6:	10 18 6d f8 	bne	*-0x1c22 <.L17>:m
    23ba:	f0 55       	movd	(sp),(r1,r0)
    23bc:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    23c0:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    23c4:	ee 1d       	br	*-0x2380 <.L189>:s

000023c6 <.L412>:
    23c6:	af 9f b2 04 	loadw	0x4b2:m(sp),r10
    23ca:	9f 9f bc 04 	loadw	0x4bc:m(sp),r9
    23ce:	9a 3b       	subw	r9,r10
    23d0:	0a 52       	cmpw	$0x0:s,r10
    23d2:	d0 18 69 f5 	bge	*-0x193a <.L164>:m
    23d6:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    23da:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    23de:	ba 52 10 00 	cmpw	$0x10:m,r10
    23e2:	d7 13       	bge	*+0x2450 <.L165>:s
    23e4:	b8 54 10 00 	movd	$0x10:m,(r9,r8)
    23e8:	d0 55       	movd	(r13),(r1,r0)
    23ea:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    23ee:	b2 5b       	movw	r11,r2
    23f0:	73 5b       	movw	r7,r3
    23f2:	a7 5b       	movw	r10,r7
    23f4:	af af c0 04 	loadd	0x4c0:m(sp),(r11,r10)
    23f8:	e7 10       	br	*+0x2406 <.L168>:s

000023fa <.L429>:
    23fa:	80 60       	addd	$0x8:s,(r1,r0)
    23fc:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    2400:	b7 52 10 00 	cmpw	$0x10:m,r7
    2404:	d2 12       	bge	*+0x2448 <.L428>:s

00002406 <.L168>:
    2406:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    2408:	80 e2       	stord	(r9,r8),0x4:s(r1,r0)
    240a:	b3 32 10 00 	addw	$0x10:m,r3
    240e:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    2412:	12 32       	addw	$0x1:s,r2
    2414:	2f df 88 04 	storw	r2,0x488:m(sp)
    2418:	72 52       	cmpw	$0x7:s,r2
    241a:	d0 1f       	bge	*-0x23fa <.L429>:s
    241c:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2420:	f0 61       	addd	(sp),(r1,r0)
    2422:	10 01       	push	$0x2,r0
    2424:	d4 55       	movd	(r13),(r5,r4)
    2426:	a2 55       	movd	(r11,r10),(r3,r2)
    2428:	00 c0 5c 46 	bal	(ra),*+0x6a84 <___sprint_r>:m

0000242c <.LVL289>:
    242c:	4f 60       	addd	$0x4:s,(sp)
    242e:	00 52       	cmpw	$0x0:s,r0
    2430:	10 18 f3 f7 	bne	*-0x1c22 <.L17>:m
    2434:	f0 55       	movd	(sp),(r1,r0)
    2436:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    243a:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    243e:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    2442:	b7 52 10 00 	cmpw	$0x10:m,r7
    2446:	c0 1e       	blt	*-0x2406 <.L168>:s

00002448 <.L428>:
    2448:	0d 55       	movd	(r1,r0),(r13)
    244a:	7a 5b       	movw	r7,r10
    244c:	2b 5b       	movw	r2,r11
    244e:	37 5b       	movw	r3,r7

00002450 <.L165>:
    2450:	cd e0       	stord	(r12),0x0:s(r13)
    2452:	a0 5e       	movxw	r10,(r1,r0)
    2454:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2456:	a7 33       	addw	r10,r7
    2458:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    245c:	1b 32       	addw	$0x1:s,r11
    245e:	bf df 88 04 	storw	r11,0x488:m(sp)
    2462:	7b 52       	cmpw	$0x7:s,r11
    2464:	c0 18 ca 04 	blt	*+0x292e <.L169>:m
    2468:	8d 60       	addd	$0x8:s,(r13)
    246a:	e0 18 d1 f4 	br	*-0x193a <.L164>:m

0000246e <.L236>:
    246e:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    2472:	f3 61       	addd	(sp),(r4,r3)
    2474:	13 01       	push	$0x2,r3

00002476 <.L401>:
    2476:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    247a:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    247e:	00 c0 06 46 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002482 <.LVL297>:
    2482:	4f 60       	addd	$0x4:s,(sp)
    2484:	00 52       	cmpw	$0x0:s,r0
    2486:	10 18 9d f7 	bne	*-0x1c22 <.L17>:m
    248a:	fd 55       	movd	(sp),(r13)
    248c:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2490:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2494:	e0 18 bd fd 	br	*-0x2250 <.L237>:m

00002498 <.L278>:
    2498:	0f c3 c4 04 	storw	$0x0:s,0x4c4:m(sp)
    249c:	f7 55       	movd	(sp),(r8,r7)
    249e:	b7 60 84 04 	addd	$0x484:m,(r8,r7)
    24a2:	7f ef d0 04 	stord	(r8,r7),0x4d0:m(sp)
    24a6:	e0 18 55 f8 	br	*-0x1cfa <.L146>:m

000024aa <.L175>:
    24aa:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    24ae:	f1 61       	addd	(sp),(r2,r1)
    24b0:	11 01       	push	$0x2,r1
    24b2:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    24b6:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    24ba:	00 c0 ca 45 	bal	(ra),*+0x6a84 <___sprint_r>:m

000024be <.LVL300>:
    24be:	4f 60       	addd	$0x4:s,(sp)
    24c0:	00 52       	cmpw	$0x0:s,r0
    24c2:	10 18 61 f7 	bne	*-0x1c22 <.L17>:m
    24c6:	fd 55       	movd	(sp),(r13)
    24c8:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    24cc:	e0 18 11 f5 	br	*-0x19dc <.L170>:m

000024d0 <.L161>:
    24d0:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    24d4:	f2 61       	addd	(sp),(r3,r2)
    24d6:	12 01       	push	$0x2,r2
    24d8:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    24dc:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    24e0:	00 c0 a4 45 	bal	(ra),*+0x6a84 <___sprint_r>:m

000024e4 <.LVL303>:
    24e4:	4f 60       	addd	$0x4:s,(sp)
    24e6:	00 52       	cmpw	$0x0:s,r0
    24e8:	10 18 3b f7 	bne	*-0x1c22 <.L17>:m
    24ec:	fd 55       	movd	(sp),(r13)
    24ee:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    24f2:	e0 18 11 f4 	br	*-0x1902 <.L160>:m

000024f6 <.L163>:
    24f6:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    24fa:	f0 61       	addd	(sp),(r1,r0)
    24fc:	10 01       	push	$0x2,r0
    24fe:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2502:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2506:	00 c0 7e 45 	bal	(ra),*+0x6a84 <___sprint_r>:m

0000250a <.LVL306>:
    250a:	4f 60       	addd	$0x4:s,(sp)
    250c:	00 52       	cmpw	$0x0:s,r0
    250e:	10 18 15 f7 	bne	*-0x1c22 <.L17>:m
    2512:	fd 55       	movd	(sp),(r13)
    2514:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2518:	e0 18 17 f4 	br	*-0x192e <.L162>:m

0000251c <.L380>:
    251c:	2f 9f a4 04 	loadw	0x4a4:m(sp),r2
    2520:	02 52       	cmpw	$0x0:s,r2
    2522:	d0 18 be 06 	bge	*+0x2be0 <.L430>:m
    2526:	9f 9f d6 04 	loadw	0x4d6:m(sp),r9
    252a:	98 5e       	movxw	r9,(r9,r8)
    252c:	0f af d0 04 	loadd	0x4d0:m(sp),(r1,r0)
    2530:	80 61       	addd	(r9,r8),(r1,r0)
    2532:	0f ef c4 04 	stord	(r1,r0),0x4c4:m(sp)
    2536:	8f 9f c4 04 	loadw	0x4c4:m(sp),r8
    253a:	1f 9f d0 04 	loadw	0x4d0:m(sp),r1
    253e:	18 3b       	subw	r1,r8
    2540:	9f 9f da 04 	loadw	0x4da:m(sp),r9
    2544:	98 53       	cmpw	r9,r8
    2546:	d2 10       	bge	*+0x254a <.L206>:s
    2548:	98 5b       	movw	r9,r8

0000254a <.L206>:
    254a:	08 52       	cmpw	$0x0:s,r8
    254c:	d2 11       	bge	*+0x2570 <.L207>:s
    254e:	0f af d0 04 	loadd	0x4d0:m(sp),(r1,r0)
    2552:	0d e0       	stord	(r1,r0),0x0:s(r13)
    2554:	80 5e       	movxw	r8,(r1,r0)
    2556:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2558:	87 33       	addw	r8,r7
    255a:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    255e:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2562:	1b 32       	addw	$0x1:s,r11
    2564:	bf df 88 04 	storw	r11,0x488:m(sp)
    2568:	7b 52       	cmpw	$0x7:s,r11
    256a:	c0 18 34 08 	blt	*+0x2d9e <.L208>:m
    256e:	8d 60       	addd	$0x8:s,(r13)

00002570 <.L207>:
    2570:	80 5b       	movw	r8,r0
    2572:	90 2a       	xorw	$-1:s,r0
    2574:	10 43       	ashuw	$-15:s,r0
    2576:	08 23       	andw	r0,r8
    2578:	9f 9f da 04 	loadw	0x4da:m(sp),r9
    257c:	89 3b       	subw	r8,r9
    257e:	98 5b       	movw	r9,r8
    2580:	09 52       	cmpw	$0x0:s,r9
    2582:	d0 18 b0 01 	bge	*+0x2732 <.L210>:m
    2586:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    258a:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    258e:	b9 52 10 00 	cmpw	$0x10:m,r9
    2592:	d0 18 b0 05 	bge	*+0x2b42 <.L211>:m
    2596:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    259a:	d0 55       	movd	(r13),(r1,r0)
    259c:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    25a0:	b2 5b       	movw	r11,r2
    25a2:	8b 5b       	movw	r8,r11
    25a4:	73 5b       	movw	r7,r3
    25a6:	7f af c0 04 	loadd	0x4c0:m(sp),(r8,r7)
    25aa:	e8 10       	br	*+0x25ba <.L214>:s

000025ac <.L432>:
    25ac:	80 60       	addd	$0x8:s,(r1,r0)

000025ae <.L213>:
    25ae:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    25b2:	bb 52 10 00 	cmpw	$0x10:m,r11
    25b6:	d0 18 84 05 	bge	*+0x2b3a <.L431>:m

000025ba <.L214>:
    25ba:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    25bc:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    25be:	b3 32 10 00 	addw	$0x10:m,r3
    25c2:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    25c6:	12 32       	addw	$0x1:s,r2
    25c8:	2f df 88 04 	storw	r2,0x488:m(sp)
    25cc:	72 52       	cmpw	$0x7:s,r2
    25ce:	df 1e       	bge	*-0x25ac <.L432>:s
    25d0:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    25d4:	f0 61       	addd	(sp),(r1,r0)
    25d6:	10 01       	push	$0x2,r0
    25d8:	d4 55       	movd	(r13),(r5,r4)
    25da:	72 55       	movd	(r8,r7),(r3,r2)
    25dc:	00 c0 a8 44 	bal	(ra),*+0x6a84 <___sprint_r>:m

000025e0 <.LVL322>:
    25e0:	4f 60       	addd	$0x4:s,(sp)
    25e2:	00 52       	cmpw	$0x0:s,r0
    25e4:	10 18 3f f6 	bne	*-0x1c22 <.L17>:m
    25e8:	f0 55       	movd	(sp),(r1,r0)
    25ea:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    25ee:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    25f2:	ee 1d       	br	*-0x25ae <.L213>:s

000025f4 <.L279>:
    25f4:	0f df c4 04 	storw	r0,0x4c4:m(sp)
    25f8:	f8 55       	movd	(sp),(r9,r8)
    25fa:	b8 60 84 04 	addd	$0x484:m,(r9,r8)
    25fe:	8f ef d0 04 	stord	(r9,r8),0x4d0:m(sp)
    2602:	e0 18 f9 f6 	br	*-0x1cfa <.L146>:m

00002606 <.L143>:
    2606:	f0 55       	movd	(sp),(r1,r0)
    2608:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    260c:	4f af f0 04 	loadd	0x4f0:m(sp),(r5,r4)

00002610 <.L150>:
    2610:	02 55       	movd	(r1,r0),(r3,r2)
    2612:	80 55       	movd	(r9,r8),(r1,r0)
    2614:	40 00 00 00 	andd	$0xf:l,(r1,r0)
    2618:	0f 00 
    261a:	40 61       	addd	(r5,r4),(r1,r0)
    261c:	00 b0       	loadb	0x0:s(r1,r0),r0
    261e:	02 f0       	storb	r0,0x0:s(r3,r2)
    2620:	c8 4b       	lshd	$-4:s,(r9,r8)
    2622:	20 55       	movd	(r3,r2),(r1,r0)
    2624:	90 60       	addd	$-1:s,(r1,r0)
    2626:	08 56       	cmpd	$0x0:s,(r9,r8)
    2628:	14 1f       	bne	*-0x2610 <.L150>:s
    262a:	2f ef d0 04 	stord	(r3,r2),0x4d0:m(sp)
    262e:	0f 9f d0 04 	loadw	0x4d0:m(sp),r0
    2632:	8f 9f a8 04 	loadw	0x4a8:m(sp),r8
    2636:	08 3b       	subw	r0,r8
    2638:	8f df c4 04 	storw	r8,0x4c4:m(sp)
    263c:	e0 18 bf f6 	br	*-0x1cfa <.L146>:m

00002640 <.L142>:
    2640:	b8 56 09 00 	cmpd	$0x9:m,(r9,r8)
    2644:	a0 18 a8 02 	blo	*+0x28ec <.L148>:m
    2648:	b0 58 30 00 	movb	$0x30:m,r0
    264c:	08 31       	addb	r0,r8
    264e:	8f ff 83 04 	storb	r8,0x483:m(sp)
    2652:	e0 18 97 f6 	br	*-0x1ce8 <.L394>:m

00002656 <.L385>:
    2656:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    265a:	98 32       	addw	$-1:s,r8
    265c:	08 52       	cmpw	$0x0:s,r8
    265e:	d0 18 f3 fb 	bge	*-0x2250 <.L237>:m
    2662:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    2666:	b8 52 10 00 	cmpw	$0x10:m,r8
    266a:	d0 18 5e 02 	bge	*+0x28c8 <.L238>:m
    266e:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    2672:	d0 55       	movd	(r13),(r1,r0)
    2674:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    2678:	b2 5b       	movw	r11,r2
    267a:	8b 5b       	movw	r8,r11
    267c:	73 5b       	movw	r7,r3
    267e:	7f af c0 04 	loadd	0x4c0:m(sp),(r8,r7)
    2682:	e8 10       	br	*+0x2692 <.L241>:s

00002684 <.L434>:
    2684:	80 60       	addd	$0x8:s,(r1,r0)

00002686 <.L240>:
    2686:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    268a:	bb 52 10 00 	cmpw	$0x10:m,r11
    268e:	d0 18 32 02 	bge	*+0x28c0 <.L433>:m

00002692 <.L241>:
    2692:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    2694:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    2696:	b3 32 10 00 	addw	$0x10:m,r3
    269a:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    269e:	12 32       	addw	$0x1:s,r2
    26a0:	2f df 88 04 	storw	r2,0x488:m(sp)
    26a4:	72 52       	cmpw	$0x7:s,r2
    26a6:	df 1e       	bge	*-0x2684 <.L434>:s
    26a8:	b4 54 84 04 	movd	$0x484:m,(r5,r4)
    26ac:	f4 61       	addd	(sp),(r5,r4)
    26ae:	14 01       	push	$0x2,r4
    26b0:	d4 55       	movd	(r13),(r5,r4)
    26b2:	72 55       	movd	(r8,r7),(r3,r2)
    26b4:	00 c0 d0 43 	bal	(ra),*+0x6a84 <___sprint_r>:m

000026b8 <.LVL343>:
    26b8:	4f 60       	addd	$0x4:s,(sp)
    26ba:	00 52       	cmpw	$0x0:s,r0
    26bc:	10 18 67 f5 	bne	*-0x1c22 <.L17>:m
    26c0:	f0 55       	movd	(sp),(r1,r0)
    26c2:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    26c6:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    26ca:	ee 1d       	br	*-0x2686 <.L240>:s

000026cc <.L119>:
    26cc:	1f 9f b0 04 	loadw	0x4b0:m(sp),r1
    26d0:	b1 22 40 00 	andw	$0x40:m,r1
    26d4:	7f af c8 04 	loadd	0x4c8:m(sp),(r8,r7)
    26d8:	01 52       	cmpw	$0x0:s,r1
    26da:	00 18 9c 04 	beq	*+0x2b76 <.L121>:m
    26de:	17 90       	loadw	0x0:s(r8,r7),r1
    26e0:	18 5f       	movzw	r1,(r9,r8)
    26e2:	01 52       	cmpw	$0x0:s,r1
    26e4:	12 08       	sne	r2
    26e6:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    26ea:	2c 60       	addd	$0x2:s,(r12)
    26ec:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    26f0:	e0 18 a3 f7 	br	*-0x1e92 <.L120>:m

000026f4 <.L132>:
    26f4:	7f af c8 04 	loadd	0x4c8:m(sp),(r8,r7)
    26f8:	07 90       	loadw	0x0:s(r8,r7),r0
    26fa:	08 5f       	movzw	r0,(r9,r8)
    26fc:	00 52       	cmpw	$0x0:s,r0
    26fe:	12 08       	sne	r2
    2700:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    2704:	2c 60       	addd	$0x2:s,(r12)
    2706:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    270a:	10 58       	movb	$0x1:s,r0
    270c:	e0 18 87 f7 	br	*-0x1e92 <.L120>:m

00002710 <.L215>:
    2710:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2714:	f1 61       	addd	(sp),(r2,r1)
    2716:	11 01       	push	$0x2,r1
    2718:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    271c:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2720:	00 c0 64 43 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002724 <.LVL353>:
    2724:	4f 60       	addd	$0x4:s,(sp)
    2726:	00 52       	cmpw	$0x0:s,r0
    2728:	10 18 fb f4 	bne	*-0x1c22 <.L17>:m
    272c:	fd 55       	movd	(sp),(r13)
    272e:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7

00002732 <.L210>:
    2732:	8f 9f da 04 	loadw	0x4da:m(sp),r8
    2736:	8c 5e       	movxw	r8,(r12)
    2738:	8f af d0 04 	loadd	0x4d0:m(sp),(r9,r8)
    273c:	8c 61       	addd	(r9,r8),(r12)
    273e:	2f 9f a4 04 	loadw	0x4a4:m(sp),r2
    2742:	9f 9f d6 04 	loadw	0x4d6:m(sp),r9
    2746:	92 53       	cmpw	r9,r2
    2748:	66 10       	bgt	*+0x2754 <.L216>:s
    274a:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    274e:	10 22       	andw	$0x1:s,r0
    2750:	00 52       	cmpw	$0x0:s,r0
    2752:	06 11       	beq	*+0x277e <.L217>:s

00002754 <.L216>:
    2754:	8f af dc 04 	loadd	0x4dc:m(sp),(r9,r8)
    2758:	8d e0       	stord	(r9,r8),0x0:s(r13)
    275a:	9f 9f e8 04 	loadw	0x4e8:m(sp),r9
    275e:	9d d2       	storw	r9,0x4:s(r13)
    2760:	8f 9f ec 04 	loadw	0x4ec:m(sp),r8
    2764:	8d d3       	storw	r8,0x6:s(r13)
    2766:	97 33       	addw	r9,r7
    2768:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    276c:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2770:	1b 32       	addw	$0x1:s,r11
    2772:	bf df 88 04 	storw	r11,0x488:m(sp)
    2776:	7b 52       	cmpw	$0x7:s,r11
    2778:	c0 18 ae 06 	blt	*+0x2e26 <.L218>:m
    277c:	8d 60       	addd	$0x8:s,(r13)

0000277e <.L217>:
    277e:	0f af c4 04 	loadd	0x4c4:m(sp),(r1,r0)
    2782:	14 00 c0 c0 	subd	(r12),(r1,r0)
    2786:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    278a:	28 3b       	subw	r2,r8
    278c:	89 5b       	movw	r8,r9
    278e:	08 53       	cmpw	r0,r8
    2790:	d2 10       	bge	*+0x2794 <.L219>:s
    2792:	09 5b       	movw	r0,r9

00002794 <.L219>:
    2794:	09 52       	cmpw	$0x0:s,r9
    2796:	d0 11       	bge	*+0x27b6 <.L220>:s
    2798:	cd e0       	stord	(r12),0x0:s(r13)
    279a:	90 5e       	movxw	r9,(r1,r0)
    279c:	0d e2       	stord	(r1,r0),0x4:s(r13)
    279e:	97 33       	addw	r9,r7
    27a0:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    27a4:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    27a8:	1b 32       	addw	$0x1:s,r11
    27aa:	bf df 88 04 	storw	r11,0x488:m(sp)
    27ae:	7b 52       	cmpw	$0x7:s,r11
    27b0:	c0 18 14 06 	blt	*+0x2dc4 <.L221>:m
    27b4:	8d 60       	addd	$0x8:s,(r13)

000027b6 <.L220>:
    27b6:	90 5b       	movw	r9,r0
    27b8:	90 2a       	xorw	$-1:s,r0
    27ba:	10 43       	ashuw	$-15:s,r0
    27bc:	09 23       	andw	r0,r9
    27be:	98 3b       	subw	r9,r8
    27c0:	08 52       	cmpw	$0x0:s,r8
    27c2:	d0 18 4f f2 	bge	*-0x1a10 <.L178>:m
    27c6:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    27ca:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    27ce:	b8 52 10 00 	cmpw	$0x10:m,r8
    27d2:	d0 18 c4 03 	bge	*+0x2b96 <.L223>:m
    27d6:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    27da:	d0 55       	movd	(r13),(r1,r0)
    27dc:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    27e0:	b2 5b       	movw	r11,r2
    27e2:	8b 5b       	movw	r8,r11
    27e4:	73 5b       	movw	r7,r3
    27e6:	7f af c0 04 	loadd	0x4c0:m(sp),(r8,r7)
    27ea:	e8 10       	br	*+0x27fa <.L226>:s

000027ec <.L436>:
    27ec:	80 60       	addd	$0x8:s,(r1,r0)

000027ee <.L225>:
    27ee:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    27f2:	bb 52 10 00 	cmpw	$0x10:m,r11
    27f6:	d0 18 98 03 	bge	*+0x2b8e <.L435>:m

000027fa <.L226>:
    27fa:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    27fc:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    27fe:	b3 32 10 00 	addw	$0x10:m,r3
    2802:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    2806:	12 32       	addw	$0x1:s,r2
    2808:	2f df 88 04 	storw	r2,0x488:m(sp)
    280c:	72 52       	cmpw	$0x7:s,r2
    280e:	df 1e       	bge	*-0x27ec <.L436>:s
    2810:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    2814:	f2 61       	addd	(sp),(r3,r2)
    2816:	12 01       	push	$0x2,r2
    2818:	d4 55       	movd	(r13),(r5,r4)
    281a:	72 55       	movd	(r8,r7),(r3,r2)
    281c:	00 c0 68 42 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002820 <.LVL372>:
    2820:	4f 60       	addd	$0x4:s,(sp)
    2822:	00 52       	cmpw	$0x0:s,r0
    2824:	10 18 ff f3 	bne	*-0x1c22 <.L17>:m
    2828:	f0 55       	movd	(sp),(r1,r0)
    282a:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    282e:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    2832:	ee 1d       	br	*-0x27ee <.L225>:s

00002834 <.L424>:
    2834:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    2838:	10 22       	andw	$0x1:s,r0
    283a:	00 52       	cmpw	$0x0:s,r0
    283c:	10 18 85 f9 	bne	*-0x21c0 <.L228>:m
    2840:	8f af d0 04 	loadd	0x4d0:m(sp),(r9,r8)
    2844:	8d e0       	stord	(r9,r8),0x0:s(r13)
    2846:	10 54       	movd	$0x1:s,(r1,r0)
    2848:	0d e2       	stord	(r1,r0),0x4:s(r13)
    284a:	17 32       	addw	$0x1:s,r7
    284c:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2850:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2854:	1b 32       	addw	$0x1:s,r11
    2856:	bf df 88 04 	storw	r11,0x488:m(sp)
    285a:	7b 52       	cmpw	$0x7:s,r11
    285c:	d0 18 f3 f9 	bge	*-0x224e <.L402>:m
    2860:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2864:	f0 61       	addd	(sp),(r1,r0)
    2866:	10 01       	push	$0x2,r0
    2868:	e0 18 0f fc 	br	*-0x2476 <.L401>:m

0000286c <.L230>:
    286c:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2870:	f0 61       	addd	(sp),(r1,r0)
    2872:	10 01       	push	$0x2,r0
    2874:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2878:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    287c:	00 c0 08 42 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002880 <.LVL375>:
    2880:	4f 60       	addd	$0x4:s,(sp)
    2882:	00 52       	cmpw	$0x0:s,r0
    2884:	10 18 9f f3 	bne	*-0x1c22 <.L17>:m
    2888:	f0 55       	movd	(sp),(r1,r0)
    288a:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    288e:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2892:	e0 18 53 f9 	br	*-0x21e4 <.L231>:m

00002896 <.L232>:
    2896:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    289a:	f0 61       	addd	(sp),(r1,r0)
    289c:	10 01       	push	$0x2,r0
    289e:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    28a2:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    28a6:	00 c0 de 41 	bal	(ra),*+0x6a84 <___sprint_r>:m

000028aa <.LVL379>:
    28aa:	4f 60       	addd	$0x4:s,(sp)
    28ac:	00 52       	cmpw	$0x0:s,r0
    28ae:	10 18 75 f3 	bne	*-0x1c22 <.L17>:m
    28b2:	fd 55       	movd	(sp),(r13)
    28b4:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    28b8:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    28bc:	e0 18 51 f9 	br	*-0x220c <.L233>:m

000028c0 <.L433>:
    28c0:	0d 55       	movd	(r1,r0),(r13)
    28c2:	b8 5b       	movw	r11,r8
    28c4:	2b 5b       	movw	r2,r11
    28c6:	37 5b       	movw	r3,r7

000028c8 <.L238>:
    28c8:	cd e0       	stord	(r12),0x0:s(r13)
    28ca:	80 5e       	movxw	r8,(r1,r0)
    28cc:	0d e2       	stord	(r1,r0),0x4:s(r13)
    28ce:	87 33       	addw	r8,r7
    28d0:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    28d4:	1b 32       	addw	$0x1:s,r11
    28d6:	bf df 88 04 	storw	r11,0x488:m(sp)
    28da:	7b 52       	cmpw	$0x7:s,r11
    28dc:	d0 18 73 f9 	bge	*-0x224e <.L402>:m
    28e0:	b5 54 84 04 	movd	$0x484:m,(r6,r5)
    28e4:	f5 61       	addd	(sp),(r6,r5)
    28e6:	15 01       	push	$0x2,r5
    28e8:	e0 18 8f fb 	br	*-0x2476 <.L401>:m

000028ec <.L148>:
    28ec:	f0 55       	movd	(sp),(r1,r0)
    28ee:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    28f2:	b7 58 30 00 	movb	$0x30:m,r7

000028f6 <.L149>:
    28f6:	0c 55       	movd	(r1,r0),(r12)
    28f8:	a4 54       	movd	$0xa:s,(r5,r4)
    28fa:	82 55       	movd	(r9,r8),(r3,r2)
    28fc:	00 c0 34 6f 	bal	(ra),*+0x9830 <___umodsi3>:m
    2900:	70 31       	addb	r7,r0
    2902:	0c f0       	storb	r0,0x0:s(r12)
    2904:	a4 54       	movd	$0xa:s,(r5,r4)
    2906:	82 55       	movd	(r9,r8),(r3,r2)
    2908:	00 c0 1c 6f 	bal	(ra),*+0x9824 <___udivsi3>:m
    290c:	08 5b       	movw	r0,r8
    290e:	19 5b       	movw	r1,r9
    2910:	c0 55       	movd	(r12),(r1,r0)
    2912:	90 60       	addd	$-1:s,(r1,r0)
    2914:	08 56       	cmpd	$0x0:s,(r9,r8)
    2916:	10 1f       	bne	*-0x28f6 <.L149>:s
    2918:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)
    291c:	0f 9f d0 04 	loadw	0x4d0:m(sp),r0
    2920:	7f 9f a8 04 	loadw	0x4a8:m(sp),r7
    2924:	07 3b       	subw	r0,r7
    2926:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    292a:	e0 18 d1 f3 	br	*-0x1cfa <.L146>:m

0000292e <.L169>:
    292e:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2932:	f1 61       	addd	(sp),(r2,r1)
    2934:	11 01       	push	$0x2,r1
    2936:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    293a:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    293e:	00 c0 46 41 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002942 <.LVL394>:
    2942:	4f 60       	addd	$0x4:s,(sp)
    2944:	00 52       	cmpw	$0x0:s,r0
    2946:	10 18 dd f2 	bne	*-0x1c22 <.L17>:m
    294a:	fd 55       	movd	(sp),(r13)
    294c:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2950:	e0 18 eb ef 	br	*-0x193a <.L164>:m

00002954 <.L145>:
    2954:	b4 50 30 00 	cmpb	$0x30:m,r4
    2958:	00 18 bc 04 	beq	*+0x2e14 <.L437>:m
    295c:	0f ef d0 04 	stord	(r1,r0),0x4d0:m(sp)
    2960:	92 60       	addd	$-1:s,(r3,r2)
    2962:	b0 58 30 00 	movb	$0x30:m,r0
    2966:	02 f0       	storb	r0,0x0:s(r3,r2)
    2968:	7f 9f a8 04 	loadw	0x4a8:m(sp),r7
    296c:	8f 9f d0 04 	loadw	0x4d0:m(sp),r8
    2970:	87 3b       	subw	r8,r7
    2972:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    2976:	e0 18 85 f3 	br	*-0x1cfa <.L146>:m

0000297a <.L63>:
    297a:	00 54       	movd	$0x0:s,(r1,r0)
    297c:	02 55       	movd	(r1,r0),(r3,r2)
    297e:	14 00 82 c0 	subd	(r9,r8),(r3,r2)
    2982:	28 55       	movd	(r3,r2),(r9,r8)
    2984:	bb 58 2d 00 	movb	$0x2d:m,r11
    2988:	bf ff a6 04 	storb	r11,0x4a6:m(sp)
    298c:	e0 18 1d f3 	br	*-0x1ca8 <.L393>:m

00002990 <.L426>:
    2990:	0d 55       	movd	(r1,r0),(r13)
    2992:	b8 5b       	movw	r11,r8
    2994:	2b 5b       	movw	r2,r11
    2996:	37 5b       	movw	r3,r7

00002998 <.L187>:
    2998:	cd e0       	stord	(r12),0x0:s(r13)
    299a:	80 5e       	movxw	r8,(r1,r0)
    299c:	0d e2       	stord	(r1,r0),0x4:s(r13)
    299e:	87 33       	addw	r8,r7
    29a0:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    29a4:	1b 32       	addw	$0x1:s,r11
    29a6:	bf df 88 04 	storw	r11,0x488:m(sp)
    29aa:	7b 52       	cmpw	$0x7:s,r11
    29ac:	d0 18 63 f0 	bge	*-0x1a0e <.L403>:m
    29b0:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    29b4:	f2 61       	addd	(sp),(r3,r2)
    29b6:	12 01       	push	$0x2,r2
    29b8:	e0 18 c3 f8 	br	*-0x227a <.L400>:m

000029bc <.L67>:
    29bc:	0f af e0 04 	loadd	0x4e0:m(sp),(r1,r0)
    29c0:	2f af e4 04 	loadd	0x4e4:m(sp),(r3,r2)
    29c4:	30 01       	push	$0x4,r0
    29c6:	00 c0 42 3e 	bal	(ra),*+0x6808 <___fpclassifyd>:m

000029ca <.LVL407>:
    29ca:	8f 60       	addd	$0x8:s,(sp)
    29cc:	00 52       	cmpw	$0x0:s,r0
    29ce:	00 18 f4 02 	beq	*+0x2cc2 <.L438>:m
    29d2:	7f 9f d8 04 	loadw	0x4d8:m(sp),r7
    29d6:	b7 22 df ff 	andw	$0xffdf:m,r7
    29da:	9a 52       	cmpw	$-1:s,r10
    29dc:	00 18 44 06 	beq	*+0x3020 <.L439>:m
    29e0:	b7 52 47 00 	cmpw	$0x47:m,r7
    29e4:	14 10       	bne	*+0x29ec <.L74>:s
    29e6:	0a 52       	cmpw	$0x0:s,r10
    29e8:	12 10       	bne	*+0x29ec <.L74>:s
    29ea:	1a 5a       	movw	$0x1:s,r10

000029ec <.L74>:
    29ec:	8f 9f b0 04 	loadw	0x4b0:m(sp),r8
    29f0:	b8 26 00 01 	orw	$0x100:m,r8
    29f4:	8f df cc 04 	storw	r8,0x4cc:m(sp)

000029f8 <.LBB27>:
    29f8:	0f af e0 04 	loadd	0x4e0:m(sp),(r1,r0)
    29fc:	2f af e4 04 	loadd	0x4e4:m(sp),(r3,r2)
    2a00:	02 56       	cmpd	$0x0:s,(r3,r2)
    2a02:	60 18 24 06 	bgt	*+0x3026 <.L440>:m
    2a06:	2f af e0 04 	loadd	0x4e0:m(sp),(r3,r2)
    2a0a:	4f af e4 04 	loadd	0x4e4:m(sp),(r5,r4)
    2a0e:	2f ef f4 04 	stord	(r3,r2),0x4f4:m(sp)
    2a12:	4f ef f8 04 	stord	(r5,r4),0x4f8:m(sp)
    2a16:	0c 58       	movb	$0x0:s,r12

00002a18 <.L75>:
    2a18:	b7 52 46 00 	cmpw	$0x46:m,r7
    2a1c:	0b 08       	seq	r11
    2a1e:	0b 50       	cmpb	$0x0:s,r11
    2a20:	10 18 3e 05 	bne	*+0x2f5e <.L271>:m
    2a24:	b7 52 45 00 	cmpw	$0x45:m,r7
    2a28:	10 18 58 06 	bne	*+0x3080 <.L272>:m
    2a2c:	a8 5b       	movw	r10,r8
    2a2e:	18 32       	addw	$0x1:s,r8
    2a30:	f0 55       	movd	(sp),(r1,r0)
    2a32:	b0 60 9c 04 	addd	$0x49c:m,(r1,r0)
    2a36:	10 01       	push	$0x2,r0
    2a38:	f0 55       	movd	(sp),(r1,r0)
    2a3a:	b0 60 a6 04 	addd	$0x4a6:m,(r1,r0)
    2a3e:	10 01       	push	$0x2,r0
    2a40:	f0 55       	movd	(sp),(r1,r0)
    2a42:	b0 60 ac 04 	addd	$0x4ac:m,(r1,r0)
    2a46:	10 01       	push	$0x2,r0
    2a48:	0f af 00 05 	loadd	0x500:m(sp),(r1,r0)
    2a4c:	2f af 04 05 	loadd	0x504:m(sp),(r3,r2)
    2a50:	30 01       	push	$0x4,r0
    2a52:	85 5b       	movw	r8,r5
    2a54:	24 5a       	movw	$0x2:s,r4
    2a56:	2f af d4 04 	loadd	0x4d4:m(sp),(r3,r2)
    2a5a:	00 c0 7a 0b 	bal	(ra),*+0x35d4 <__dtoa_r>:m

00002a5e <.LVL420>:
    2a5e:	0f ef e4 04 	stord	(r1,r0),0x4e4:m(sp)
    2a62:	88 5e       	movxw	r8,(r9,r8)
    2a64:	08 61       	addd	(r1,r0),(r9,r8)
    2a66:	bf 60 14 00 	addd	$0x14:m,(sp)

00002a6a <.L77>:
    2a6a:	00 54       	movd	$0x0:s,(r1,r0)
    2a6c:	02 54       	movd	$0x0:s,(r3,r2)
    2a6e:	30 01       	push	$0x4,r0
    2a70:	2f af fc 04 	loadd	0x4fc:m(sp),(r3,r2)
    2a74:	4f af 00 05 	loadd	0x500:m(sp),(r5,r4)
    2a78:	32 01       	push	$0x4,r2
    2a7a:	00 c0 7a 68 	bal	(ra),*+0x92f4 <___eqdf2>:m
    2a7e:	bf 60 10 00 	addd	$0x10:m,(sp)
    2a82:	00 52       	cmpw	$0x0:s,r0
    2a84:	0e 10       	beq	*+0x2aa0 <.L83>:s
    2a86:	0f af 9c 04 	loadd	0x49c:m(sp),(r1,r0)
    2a8a:	08 57       	cmpd	(r1,r0),(r9,r8)
    2a8c:	b0 18 68 07 	bhs	*+0x31f4 <.L273>:m
    2a90:	b2 58 30 00 	movb	$0x30:m,r2

00002a94 <.L84>:
    2a94:	20 f0       	storb	r2,0x0:s(r1,r0)
    2a96:	10 60       	addd	$0x1:s,(r1,r0)
    2a98:	0f ef 9c 04 	stord	(r1,r0),0x49c:m(sp)
    2a9c:	80 57       	cmpd	(r9,r8),(r1,r0)
    2a9e:	1b 1f       	bne	*-0x2a94 <.L84>:s

00002aa0 <.L83>:
    2aa0:	83 5b       	movw	r8,r3
    2aa2:	4f 9f d0 04 	loadw	0x4d0:m(sp),r4
    2aa6:	43 3b       	subw	r4,r3
    2aa8:	3f df d6 04 	storw	r3,0x4d6:m(sp)
    2aac:	b7 52 47 00 	cmpw	$0x47:m,r7
    2ab0:	00 18 18 04 	beq	*+0x2ec8 <.L79>:m
    2ab4:	9f 9f d8 04 	loadw	0x4d8:m(sp),r9
    2ab8:	b9 52 65 00 	cmpw	$0x65:m,r9
    2abc:	d0 18 48 07 	bge	*+0x3204 <.L441>:m
    2ac0:	8f 9f d8 04 	loadw	0x4d8:m(sp),r8
    2ac4:	0f 9f a4 04 	loadw	0x4a4:m(sp),r0
    2ac8:	b8 52 66 00 	cmpw	$0x66:m,r8
    2acc:	00 18 ba 05 	beq	*+0x3086 <.L101>:m

00002ad0 <.L87>:
    2ad0:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2ad4:	80 53       	cmpw	r8,r0
    2ad6:	60 18 7c 05 	bgt	*+0x3052 <.L109>:m
    2ada:	1f 9f b0 04 	loadw	0x4b0:m(sp),r1
    2ade:	11 22       	andw	$0x1:s,r1
    2ae0:	01 52       	cmpw	$0x0:s,r1
    2ae2:	10 18 50 06 	bne	*+0x3132 <.L110>:m
    2ae6:	01 5b       	movw	r0,r1
    2ae8:	91 2a       	xorw	$-1:s,r1
    2aea:	11 43       	ashuw	$-15:s,r1
    2aec:	01 23       	andw	r0,r1
    2aee:	1f df bc 04 	storw	r1,0x4bc:m(sp)
    2af2:	0f df c4 04 	storw	r0,0x4c4:m(sp)
    2af6:	b9 5a 67 00 	movw	$0x67:m,r9
    2afa:	9f df d8 04 	storw	r9,0x4d8:m(sp)
    2afe:	0f df da 04 	storw	r0,0x4da:m(sp)

00002b02 <.L99>:
    2b02:	0c 50       	cmpb	$0x0:s,r12
    2b04:	10 18 9e 03 	bne	*+0x2ea2 <.L115>:m
    2b08:	bf bf a6 04 	loadb	0x4a6:m(sp),r11
    2b0c:	9f 9f cc 04 	loadw	0x4cc:m(sp),r9
    2b10:	9f df b0 04 	storw	r9,0x4b0:m(sp)
    2b14:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    2b18:	e0 18 fb f1 	br	*-0x1d12 <.L58>:m

00002b1c <.L277>:
    2b1c:	02 58       	movb	$0x0:s,r2
    2b1e:	20 58       	movb	$0x2:s,r0
    2b20:	e0 18 73 f3 	br	*-0x1e92 <.L120>:m

00002b24 <.L116>:
    2b24:	07 a0       	loadd	0x0:s(r8,r7),(r1,r0)
    2b26:	8f 9f be 04 	loadw	0x4be:m(sp),r8
    2b2a:	80 d0       	storw	r8,0x0:s(r1,r0)
    2b2c:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    2b30:	4c 60       	addd	$0x4:s,(r12)
    2b32:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    2b36:	e0 18 df eb 	br	*-0x1714 <.L374>:m

00002b3a <.L431>:
    2b3a:	0d 55       	movd	(r1,r0),(r13)
    2b3c:	b8 5b       	movw	r11,r8
    2b3e:	2b 5b       	movw	r2,r11
    2b40:	37 5b       	movw	r3,r7

00002b42 <.L211>:
    2b42:	cd e0       	stord	(r12),0x0:s(r13)
    2b44:	80 5e       	movxw	r8,(r1,r0)
    2b46:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2b48:	87 33       	addw	r8,r7
    2b4a:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2b4e:	1b 32       	addw	$0x1:s,r11
    2b50:	bf df 88 04 	storw	r11,0x488:m(sp)
    2b54:	7b 52       	cmpw	$0x7:s,r11
    2b56:	c0 18 bb fb 	blt	*-0x2710 <.L215>:m
    2b5a:	8d 60       	addd	$0x8:s,(r13)
    2b5c:	e0 18 d7 fb 	br	*-0x2732 <.L210>:m

00002b60 <.L65>:
    2b60:	0c a0       	loadd	0x0:s(r12),(r1,r0)
    2b62:	2c a2       	loadd	0x4:s(r12),(r3,r2)
    2b64:	0f ef e0 04 	stord	(r1,r0),0x4e0:m(sp)
    2b68:	2f ef e4 04 	stord	(r3,r2),0x4e4:m(sp)
    2b6c:	8c 60       	addd	$0x8:s,(r12)
    2b6e:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    2b72:	e0 18 2d f2 	br	*-0x1d9e <.L66>:m

00002b76 <.L121>:
    2b76:	07 90       	loadw	0x0:s(r8,r7),r0
    2b78:	08 5f       	movzw	r0,(r9,r8)
    2b7a:	00 52       	cmpw	$0x0:s,r0
    2b7c:	12 08       	sne	r2
    2b7e:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    2b82:	2c 60       	addd	$0x2:s,(r12)
    2b84:	cf ef c8 04 	stord	(r12),0x4c8:m(sp)
    2b88:	10 59       	movb	r1,r0
    2b8a:	e0 18 09 f3 	br	*-0x1e92 <.L120>:m

00002b8e <.L435>:
    2b8e:	0d 55       	movd	(r1,r0),(r13)
    2b90:	b8 5b       	movw	r11,r8
    2b92:	2b 5b       	movw	r2,r11
    2b94:	37 5b       	movw	r3,r7

00002b96 <.L223>:
    2b96:	cd e0       	stord	(r12),0x0:s(r13)
    2b98:	80 5e       	movxw	r8,(r1,r0)
    2b9a:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2b9c:	87 33       	addw	r8,r7
    2b9e:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2ba2:	1b 32       	addw	$0x1:s,r11
    2ba4:	bf df 88 04 	storw	r11,0x488:m(sp)
    2ba8:	7b 52       	cmpw	$0x7:s,r11
    2baa:	d0 18 65 ee 	bge	*-0x1a0e <.L403>:m
    2bae:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    2bb2:	f3 61       	addd	(sp),(r4,r3)
    2bb4:	13 01       	push	$0x2,r3
    2bb6:	e0 18 c5 f6 	br	*-0x227a <.L400>:m

00002bba <.L182>:
    2bba:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2bbe:	f1 61       	addd	(sp),(r2,r1)
    2bc0:	11 01       	push	$0x2,r1
    2bc2:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2bc6:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2bca:	00 c0 ba 3e 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002bce <.LVL450>:
    2bce:	4f 60       	addd	$0x4:s,(sp)
    2bd0:	00 52       	cmpw	$0x0:s,r0
    2bd2:	10 18 51 f0 	bne	*-0x1c22 <.L17>:m
    2bd6:	fd 55       	movd	(sp),(r13)
    2bd8:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2bdc:	e0 18 2f f7 	br	*-0x230a <.L183>:m

00002be0 <.L430>:
    2be0:	00 05 fa 9e 	movd	$0x9efa:m,(r1,r0)
    2be4:	0d e0       	stord	(r1,r0),0x0:s(r13)
    2be6:	10 54       	movd	$0x1:s,(r1,r0)
    2be8:	0d e2       	stord	(r1,r0),0x4:s(r13)
    2bea:	17 32       	addw	$0x1:s,r7
    2bec:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2bf0:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2bf4:	1b 32       	addw	$0x1:s,r11
    2bf6:	bf df 88 04 	storw	r11,0x488:m(sp)
    2bfa:	7b 52       	cmpw	$0x7:s,r11
    2bfc:	ca 17       	blt	*+0x2cf0 <.L194>:s
    2bfe:	8d 60       	addd	$0x8:s,(r13)

00002c00 <.L195>:
    2c00:	02 52       	cmpw	$0x0:s,r2
    2c02:	1b 10       	bne	*+0x2c18 <.L196>:s
    2c04:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2c08:	08 52       	cmpw	$0x0:s,r8
    2c0a:	17 10       	bne	*+0x2c18 <.L196>:s
    2c0c:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    2c10:	10 22       	andw	$0x1:s,r0
    2c12:	00 52       	cmpw	$0x0:s,r0
    2c14:	00 18 fd ed 	beq	*-0x1a10 <.L178>:m

00002c18 <.L196>:
    2c18:	8f af dc 04 	loadd	0x4dc:m(sp),(r9,r8)
    2c1c:	8d e0       	stord	(r9,r8),0x0:s(r13)
    2c1e:	9f 9f e8 04 	loadw	0x4e8:m(sp),r9
    2c22:	9d d2       	storw	r9,0x4:s(r13)
    2c24:	cf 9f ec 04 	loadw	0x4ec:m(sp),r12
    2c28:	cd d3       	storw	r12,0x6:s(r13)
    2c2a:	97 33       	addw	r9,r7
    2c2c:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2c30:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    2c34:	1b 32       	addw	$0x1:s,r11
    2c36:	bf df 88 04 	storw	r11,0x488:m(sp)
    2c3a:	7b 52       	cmpw	$0x7:s,r11
    2c3c:	c0 18 b6 03 	blt	*+0x2ff2 <.L197>:m
    2c40:	d0 55       	movd	(r13),(r1,r0)
    2c42:	80 60       	addd	$0x8:s,(r1,r0)

00002c44 <.L198>:
    2c44:	08 5a       	movw	$0x0:s,r8
    2c46:	28 3b       	subw	r2,r8
    2c48:	08 52       	cmpw	$0x0:s,r8
    2c4a:	d0 18 1c 01 	bge	*+0x2d66 <.L199>:m
    2c4e:	c0 05 70 a0 	movd	$0xa070:m,(r12)
    2c52:	b8 52 10 00 	cmpw	$0x10:m,r8
    2c56:	d0 18 a4 01 	bge	*+0x2dfa <.L200>:m
    2c5a:	b9 54 10 00 	movd	$0x10:m,(r10,r9)
    2c5e:	df af c0 04 	loadd	0x4c0:m(sp),(r13)
    2c62:	b2 5b       	movw	r11,r2
    2c64:	8b 5b       	movw	r8,r11
    2c66:	73 5b       	movw	r7,r3
    2c68:	7f af b8 04 	loadd	0x4b8:m(sp),(r8,r7)
    2c6c:	e8 10       	br	*+0x2c7c <.L203>:s

00002c6e <.L443>:
    2c6e:	80 60       	addd	$0x8:s,(r1,r0)

00002c70 <.L202>:
    2c70:	bb 32 f0 ff 	addw	$0xfff0:m,r11
    2c74:	bb 52 10 00 	cmpw	$0x10:m,r11
    2c78:	d0 18 7c 01 	bge	*+0x2df4 <.L442>:m

00002c7c <.L203>:
    2c7c:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    2c7e:	90 e2       	stord	(r10,r9),0x4:s(r1,r0)
    2c80:	b3 32 10 00 	addw	$0x10:m,r3
    2c84:	3f df 8a 04 	storw	r3,0x48a:m(sp)
    2c88:	12 32       	addw	$0x1:s,r2
    2c8a:	2f df 88 04 	storw	r2,0x488:m(sp)
    2c8e:	72 52       	cmpw	$0x7:s,r2
    2c90:	df 1e       	bge	*-0x2c6e <.L443>:s
    2c92:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2c96:	f1 61       	addd	(sp),(r2,r1)
    2c98:	11 01       	push	$0x2,r1
    2c9a:	74 55       	movd	(r8,r7),(r5,r4)
    2c9c:	d2 55       	movd	(r13),(r3,r2)
    2c9e:	00 c0 e6 3d 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002ca2 <.LVL462>:
    2ca2:	4f 60       	addd	$0x4:s,(sp)
    2ca4:	00 52       	cmpw	$0x0:s,r0
    2ca6:	10 18 7d ef 	bne	*-0x1c22 <.L17>:m
    2caa:	f0 55       	movd	(sp),(r1,r0)
    2cac:	3f 9f 8a 04 	loadw	0x48a:m(sp),r3
    2cb0:	2f 9f 88 04 	loadw	0x488:m(sp),r2
    2cb4:	ee 1d       	br	*-0x2c70 <.L202>:s

00002cb6 <.L419>:
    2cb6:	c0 05 be 9e 	movd	$0x9ebe:m,(r12)
    2cba:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)
    2cbe:	e0 18 2d f1 	br	*-0x1dea <.L70>:m

00002cc2 <.L438>:
    2cc2:	70 05 ca 9e 	movd	$0x9eca:m,(r8,r7)
    2cc6:	7f ef d0 04 	stord	(r8,r7),0x4d0:m(sp)
    2cca:	8f 9f d8 04 	loadw	0x4d8:m(sp),r8
    2cce:	b8 52 47 00 	cmpw	$0x47:m,r8
    2cd2:	c5 10       	blt	*+0x2cdc <.L72>:s
    2cd4:	c0 05 c6 9e 	movd	$0x9ec6:m,(r12)
    2cd8:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)

00002cdc <.L72>:
    2cdc:	7f 9f b0 04 	loadw	0x4b0:m(sp),r7
    2ce0:	b7 22 7f ff 	andw	$0xff7f:m,r7
    2ce4:	7f df b0 04 	storw	r7,0x4b0:m(sp)
    2ce8:	bf bf a6 04 	loadb	0x4a6:m(sp),r11
    2cec:	e0 18 0b f1 	br	*-0x1df6 <.L396>:m

00002cf0 <.L194>:
    2cf0:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    2cf4:	f3 61       	addd	(sp),(r4,r3)
    2cf6:	13 01       	push	$0x2,r3
    2cf8:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2cfc:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2d00:	00 c0 84 3d 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002d04 <.LVL469>:
    2d04:	4f 60       	addd	$0x4:s,(sp)
    2d06:	00 52       	cmpw	$0x0:s,r0
    2d08:	10 18 1b ef 	bne	*-0x1c22 <.L17>:m
    2d0c:	2f 9f a4 04 	loadw	0x4a4:m(sp),r2
    2d10:	fd 55       	movd	(sp),(r13)
    2d12:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2d16:	e0 18 eb fe 	br	*-0x2c00 <.L195>:m

00002d1a <.L185>:
    2d1a:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2d1e:	f0 61       	addd	(sp),(r1,r0)
    2d20:	10 01       	push	$0x2,r0
    2d22:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2d26:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2d2a:	00 c0 5a 3d 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002d2e <.LVL472>:
    2d2e:	4f 60       	addd	$0x4:s,(sp)
    2d30:	00 52       	cmpw	$0x0:s,r0
    2d32:	10 18 f1 ee 	bne	*-0x1c22 <.L17>:m
    2d36:	fd 55       	movd	(sp),(r13)
    2d38:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2d3c:	e0 18 11 f6 	br	*-0x234c <.L186>:m

00002d40 <.L204>:
    2d40:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    2d44:	f2 61       	addd	(sp),(r3,r2)
    2d46:	12 01       	push	$0x2,r2
    2d48:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2d4c:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2d50:	00 c0 34 3d 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002d54 <.LVL475>:
    2d54:	4f 60       	addd	$0x4:s,(sp)
    2d56:	00 52       	cmpw	$0x0:s,r0
    2d58:	10 18 cb ee 	bne	*-0x1c22 <.L17>:m
    2d5c:	f0 55       	movd	(sp),(r1,r0)
    2d5e:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2d62:	bf 9f 88 04 	loadw	0x488:m(sp),r11

00002d66 <.L199>:
    2d66:	8f af d0 04 	loadd	0x4d0:m(sp),(r9,r8)
    2d6a:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    2d6c:	9f 9f d6 04 	loadw	0x4d6:m(sp),r9
    2d70:	92 5e       	movxw	r9,(r3,r2)
    2d72:	20 e2       	stord	(r3,r2),0x4:s(r1,r0)
    2d74:	97 33       	addw	r9,r7
    2d76:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2d7a:	1b 32       	addw	$0x1:s,r11
    2d7c:	bf df 88 04 	storw	r11,0x488:m(sp)
    2d80:	7b 52       	cmpw	$0x7:s,r11
    2d82:	c0 18 f1 f4 	blt	*-0x2272 <.L177>:m
    2d86:	0d 55       	movd	(r1,r0),(r13)
    2d88:	8d 60       	addd	$0x8:s,(r13)
    2d8a:	e0 18 87 ec 	br	*-0x1a10 <.L178>:m

00002d8e <.L125>:
    2d8e:	2f af d0 04 	loadd	0x4d0:m(sp),(r3,r2)
    2d92:	00 c0 7a 3c 	bal	(ra),*+0x6a0c <_strlen>:m

00002d96 <.LVL481>:
    2d96:	0f df c4 04 	storw	r0,0x4c4:m(sp)
    2d9a:	e0 18 ef f2 	br	*-0x2088 <.L395>:m

00002d9e <.L208>:
    2d9e:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2da2:	f1 61       	addd	(sp),(r2,r1)
    2da4:	11 01       	push	$0x2,r1
    2da6:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2daa:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2dae:	00 c0 d6 3c 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002db2 <.LVL484>:
    2db2:	4f 60       	addd	$0x4:s,(sp)
    2db4:	00 52       	cmpw	$0x0:s,r0
    2db6:	10 18 6d ee 	bne	*-0x1c22 <.L17>:m
    2dba:	fd 55       	movd	(sp),(r13)
    2dbc:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2dc0:	e0 18 b1 f7 	br	*-0x2570 <.L207>:m

00002dc4 <.L221>:
    2dc4:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    2dc8:	f1 61       	addd	(sp),(r2,r1)
    2dca:	11 01       	push	$0x2,r1
    2dcc:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2dd0:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2dd4:	00 c0 b0 3c 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002dd8 <.LVL488>:
    2dd8:	4f 60       	addd	$0x4:s,(sp)
    2dda:	00 52       	cmpw	$0x0:s,r0
    2ddc:	10 18 47 ee 	bne	*-0x1c22 <.L17>:m
    2de0:	0f 9f a4 04 	loadw	0x4a4:m(sp),r0
    2de4:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2de8:	08 3b       	subw	r0,r8
    2dea:	fd 55       	movd	(sp),(r13)
    2dec:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2df0:	e0 18 c7 f9 	br	*-0x27b6 <.L220>:m

00002df4 <.L442>:
    2df4:	b8 5b       	movw	r11,r8
    2df6:	2b 5b       	movw	r2,r11
    2df8:	37 5b       	movw	r3,r7

00002dfa <.L200>:
    2dfa:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    2dfc:	82 5e       	movxw	r8,(r3,r2)
    2dfe:	20 e2       	stord	(r3,r2),0x4:s(r1,r0)
    2e00:	87 33       	addw	r8,r7
    2e02:	7f df 8a 04 	storw	r7,0x48a:m(sp)
    2e06:	1b 32       	addw	$0x1:s,r11
    2e08:	bf df 88 04 	storw	r11,0x488:m(sp)
    2e0c:	7b 52       	cmpw	$0x7:s,r11
    2e0e:	c9 19       	blt	*-0x2d40 <.L204>:s
    2e10:	80 60       	addd	$0x8:s,(r1,r0)
    2e12:	ea 1a       	br	*-0x2d66 <.L199>:s

00002e14 <.L437>:
    2e14:	9f 9f a8 04 	loadw	0x4a8:m(sp),r9
    2e18:	0f 9f d0 04 	loadw	0x4d0:m(sp),r0
    2e1c:	09 3b       	subw	r0,r9
    2e1e:	9f df c4 04 	storw	r9,0x4c4:m(sp)
    2e22:	e0 18 d9 ee 	br	*-0x1cfa <.L146>:m

00002e26 <.L218>:
    2e26:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2e2a:	f0 61       	addd	(sp),(r1,r0)
    2e2c:	10 01       	push	$0x2,r0
    2e2e:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2e32:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    2e36:	00 c0 4e 3c 	bal	(ra),*+0x6a84 <___sprint_r>:m

00002e3a <.LVL496>:
    2e3a:	4f 60       	addd	$0x4:s,(sp)
    2e3c:	00 52       	cmpw	$0x0:s,r0
    2e3e:	10 18 e5 ed 	bne	*-0x1c22 <.L17>:m
    2e42:	2f 9f a4 04 	loadw	0x4a4:m(sp),r2
    2e46:	fd 55       	movd	(sp),(r13)
    2e48:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    2e4c:	e0 18 33 f9 	br	*-0x277e <.L217>:m

00002e50 <.L421>:
    2e50:	af df c4 04 	storw	r10,0x4c4:m(sp)
    2e54:	6a 52       	cmpw	$0x6:s,r10
    2e56:	b6 11       	bhs	*+0x2e82 <.L123>:s
    2e58:	6f c3 c4 04 	storw	$0x6:s,0x4c4:m(sp)
    2e5c:	7f 9f c4 04 	loadw	0x4c4:m(sp),r7
    2e60:	7f df bc 04 	storw	r7,0x4bc:m(sp)

00002e64 <.L124>:
    2e64:	8f ef c8 04 	stord	(r9,r8),0x4c8:m(sp)
    2e68:	0b 58       	movb	$0x0:s,r11
    2e6a:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    2e6e:	8f 9f d4 04 	loadw	0x4d4:m(sp),r8
    2e72:	8f df da 04 	storw	r8,0x4da:m(sp)
    2e76:	c0 05 f2 9e 	movd	$0x9ef2:m,(r12)
    2e7a:	cf ef d0 04 	stord	(r12),0x4d0:m(sp)
    2e7e:	e0 18 87 e9 	br	*-0x1804 <.L152>:m

00002e82 <.L123>:
    2e82:	0f 9f c4 04 	loadw	0x4c4:m(sp),r0
    2e86:	90 2a       	xorw	$-1:s,r0
    2e88:	10 43       	ashuw	$-15:s,r0
    2e8a:	7f 9f c4 04 	loadw	0x4c4:m(sp),r7
    2e8e:	07 23       	andw	r0,r7
    2e90:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    2e94:	e8 1e       	br	*-0x2e64 <.L124>:s

00002e96 <.L68>:
    2e96:	bb 58 2d 00 	movb	$0x2d:m,r11
    2e9a:	bf ff a6 04 	storb	r11,0x4a6:m(sp)
    2e9e:	e0 18 39 ef 	br	*-0x1dd6 <.L69>:m

00002ea2 <.L115>:
    2ea2:	bb 58 2d 00 	movb	$0x2d:m,r11
    2ea6:	bf ff a6 04 	storb	r11,0x4a6:m(sp)
    2eaa:	cf 9f cc 04 	loadw	0x4cc:m(sp),r12
    2eae:	cf df b0 04 	storw	r12,0x4b0:m(sp)
    2eb2:	0f c3 d4 04 	storw	$0x0:s,0x4d4:m(sp)
    2eb6:	e0 18 63 ee 	br	*-0x1d18 <.L373>:m

00002eba <.L447>:
    2eba:	0f 9f 9c 04 	loadw	0x49c:m(sp),r0
    2ebe:	1f 9f d0 04 	loadw	0x4d0:m(sp),r1
    2ec2:	10 3b       	subw	r1,r0
    2ec4:	0f df d6 04 	storw	r0,0x4d6:m(sp)

00002ec8 <.L79>:
    2ec8:	7f 9f a4 04 	loadw	0x4a4:m(sp),r7
    2ecc:	70 5b       	movw	r7,r0
    2ece:	b7 52 fd ff 	cmpw	$0xfffd:m,r7
    2ed2:	64 10       	bgt	*+0x2eda <.L86>:s
    2ed4:	7a 53       	cmpw	r7,r10
    2ed6:	70 18 fb fb 	ble	*-0x2ad0 <.L87>:m

00002eda <.L86>:
    2eda:	8f 9f d8 04 	loadw	0x4d8:m(sp),r8
    2ede:	b8 32 fe ff 	addw	$0xfffe:m,r8
    2ee2:	8f df d8 04 	storw	r8,0x4d8:m(sp)

00002ee6 <.L88>:
    2ee6:	97 32       	addw	$-1:s,r7
    2ee8:	7f df a4 04 	storw	r7,0x4a4:m(sp)

00002eec <.LBB40>:
    2eec:	0f bf d8 04 	loadb	0x4d8:m(sp),r0
    2ef0:	0f ff 93 04 	storb	r0,0x493:m(sp)
    2ef4:	07 52       	cmpw	$0x0:s,r7
    2ef6:	60 18 8c 02 	bgt	*+0x3182 <.L444>:m
    2efa:	b0 58 2b 00 	movb	$0x2b:m,r0
    2efe:	0f ff 94 04 	storb	r0,0x494:m(sp)

00002f02 <.L91>:
    2f02:	b7 52 09 00 	cmpw	$0x9:m,r7
    2f06:	c0 18 a2 01 	blt	*+0x30a8 <.L445>:m
    2f0a:	b0 58 30 00 	movb	$0x30:m,r0
    2f0e:	0f ff 95 04 	storb	r0,0x495:m(sp)
    2f12:	70 31       	addb	r7,r0
    2f14:	0f ff 96 04 	storb	r0,0x496:m(sp)
    2f18:	f2 55       	movd	(sp),(r3,r2)
    2f1a:	b2 60 97 04 	addd	$0x497:m,(r3,r2)
    2f1e:	f0 55       	movd	(sp),(r1,r0)
    2f20:	b0 60 93 04 	addd	$0x493:m,(r1,r0)

00002f24 <.L94>:
    2f24:	27 5b       	movw	r2,r7
    2f26:	07 3b       	subw	r0,r7
    2f28:	7f df ea 04 	storw	r7,0x4ea:m(sp)
    2f2c:	8f 9f d6 04 	loadw	0x4d6:m(sp),r8
    2f30:	78 33       	addw	r7,r8
    2f32:	8f df c4 04 	storw	r8,0x4c4:m(sp)
    2f36:	9f 9f d6 04 	loadw	0x4d6:m(sp),r9
    2f3a:	19 52       	cmpw	$0x1:s,r9
    2f3c:	d0 18 74 02 	bge	*+0x31b0 <.L446>:m

00002f40 <.L97>:
    2f40:	7f 9f c4 04 	loadw	0x4c4:m(sp),r7
    2f44:	17 32       	addw	$0x1:s,r7
    2f46:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    2f4a:	70 5b       	movw	r7,r0
    2f4c:	90 2a       	xorw	$-1:s,r0
    2f4e:	10 43       	ashuw	$-15:s,r0
    2f50:	07 23       	andw	r0,r7
    2f52:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    2f56:	0f c3 da 04 	storw	$0x0:s,0x4da:m(sp)
    2f5a:	e0 18 a9 fb 	br	*-0x2b02 <.L99>:m

00002f5e <.L271>:
    2f5e:	34 5a       	movw	$0x3:s,r4

00002f60 <.L76>:
    2f60:	f0 55       	movd	(sp),(r1,r0)
    2f62:	b0 60 9c 04 	addd	$0x49c:m,(r1,r0)
    2f66:	10 01       	push	$0x2,r0
    2f68:	f0 55       	movd	(sp),(r1,r0)
    2f6a:	b0 60 a6 04 	addd	$0x4a6:m,(r1,r0)
    2f6e:	10 01       	push	$0x2,r0
    2f70:	f0 55       	movd	(sp),(r1,r0)
    2f72:	b0 60 ac 04 	addd	$0x4ac:m,(r1,r0)
    2f76:	10 01       	push	$0x2,r0
    2f78:	0f af 00 05 	loadd	0x500:m(sp),(r1,r0)
    2f7c:	2f af 04 05 	loadd	0x504:m(sp),(r3,r2)
    2f80:	30 01       	push	$0x4,r0
    2f82:	a5 5b       	movw	r10,r5
    2f84:	2f af d4 04 	loadd	0x4d4:m(sp),(r3,r2)
    2f88:	00 c0 4c 06 	bal	(ra),*+0x35d4 <__dtoa_r>:m

00002f8c <.LVL526>:
    2f8c:	0f ef e4 04 	stord	(r1,r0),0x4e4:m(sp)
    2f90:	bf 60 14 00 	addd	$0x14:m,(sp)
    2f94:	b7 52 47 00 	cmpw	$0x47:m,r7
    2f98:	16 10       	bne	*+0x2fa4 <.L78>:s
    2f9a:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    2f9e:	10 22       	andw	$0x1:s,r0
    2fa0:	00 52       	cmpw	$0x0:s,r0
    2fa2:	0c 18       	beq	*-0x2eba <.L447>:s

00002fa4 <.L78>:
    2fa4:	a8 5e       	movxw	r10,(r9,r8)
    2fa6:	2f af d0 04 	loadd	0x4d0:m(sp),(r3,r2)
    2faa:	28 61       	addd	(r3,r2),(r9,r8)
    2fac:	0b 50       	cmpb	$0x0:s,r11
    2fae:	00 18 bd fa 	beq	*-0x2a6a <.L77>:m
    2fb2:	02 b0       	loadb	0x0:s(r3,r2),r0
    2fb4:	b0 50 30 00 	cmpb	$0x30:m,r0
    2fb8:	07 10       	beq	*+0x2fc6 <.L80>:s

00002fba <.L392>:
    2fba:	0f 9f a4 04 	loadw	0x4a4:m(sp),r0
    2fbe:	00 5e       	movxw	r0,(r1,r0)
    2fc0:	08 61       	addd	(r1,r0),(r9,r8)
    2fc2:	e0 18 a9 fa 	br	*-0x2a6a <.L77>:m

00002fc6 <.L80>:
    2fc6:	00 54       	movd	$0x0:s,(r1,r0)
    2fc8:	02 54       	movd	$0x0:s,(r3,r2)
    2fca:	30 01       	push	$0x4,r0
    2fcc:	0f af fc 04 	loadd	0x4fc:m(sp),(r1,r0)
    2fd0:	2f af 00 05 	loadd	0x500:m(sp),(r3,r2)
    2fd4:	30 01       	push	$0x4,r0
    2fd6:	00 c0 92 63 	bal	(ra),*+0x9368 <___nedf2>:m
    2fda:	bf 60 10 00 	addd	$0x10:m,(sp)
    2fde:	00 52       	cmpw	$0x0:s,r0
    2fe0:	0d 1e       	beq	*-0x2fba <.L392>:s
    2fe2:	10 5a       	movw	$0x1:s,r0
    2fe4:	a0 3b       	subw	r10,r0
    2fe6:	0f df a4 04 	storw	r0,0x4a4:m(sp)
    2fea:	00 5e       	movxw	r0,(r1,r0)
    2fec:	08 61       	addd	(r1,r0),(r9,r8)
    2fee:	e0 18 7d fa 	br	*-0x2a6a <.L77>:m

00002ff2 <.L197>:
    2ff2:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    2ff6:	f0 61       	addd	(sp),(r1,r0)
    2ff8:	10 01       	push	$0x2,r0
    2ffa:	4f af bc 04 	loadd	0x4bc:m(sp),(r5,r4)
    2ffe:	2f af c4 04 	loadd	0x4c4:m(sp),(r3,r2)
    3002:	00 c0 82 3a 	bal	(ra),*+0x6a84 <___sprint_r>:m

00003006 <.LVL540>:
    3006:	4f 60       	addd	$0x4:s,(sp)
    3008:	00 52       	cmpw	$0x0:s,r0
    300a:	10 18 19 ec 	bne	*-0x1c22 <.L17>:m
    300e:	2f 9f a4 04 	loadw	0x4a4:m(sp),r2
    3012:	f0 55       	movd	(sp),(r1,r0)
    3014:	7f 9f 8a 04 	loadw	0x48a:m(sp),r7
    3018:	bf 9f 88 04 	loadw	0x488:m(sp),r11
    301c:	e0 18 29 fc 	br	*-0x2c44 <.L198>:m

00003020 <.L439>:
    3020:	6a 5a       	movw	$0x6:s,r10
    3022:	e0 18 cb f9 	br	*-0x29ec <.L74>:m

00003026 <.L440>:
    3026:	9f 9f e0 04 	loadw	0x4e0:m(sp),r9
    302a:	9f df f4 04 	storw	r9,0x4f4:m(sp)
    302e:	cf 9f e2 04 	loadw	0x4e2:m(sp),r12
    3032:	cf df f6 04 	storw	r12,0x4f6:m(sp)
    3036:	0f 9f e4 04 	loadw	0x4e4:m(sp),r0
    303a:	0f df f8 04 	storw	r0,0x4f8:m(sp)
    303e:	1f 9f e6 04 	loadw	0x4e6:m(sp),r1
    3042:	b1 32 00 80 	addw	$0x8000:m,r1
    3046:	1f df fa 04 	storw	r1,0x4fa:m(sp)
    304a:	bc 58 2d 00 	movb	$0x2d:m,r12
    304e:	e0 18 cb f9 	br	*-0x2a18 <.L75>:m

00003052 <.L109>:
    3052:	11 5a       	movw	$0x1:s,r1
    3054:	00 52       	cmpw	$0x0:s,r0
    3056:	d0 18 96 01 	bge	*+0x31ec <.L448>:m

0000305a <.L113>:
    305a:	9f 9f d6 04 	loadw	0x4d6:m(sp),r9
    305e:	19 33       	addw	r1,r9
    3060:	9f df c4 04 	storw	r9,0x4c4:m(sp)
    3064:	91 5b       	movw	r9,r1
    3066:	91 2a       	xorw	$-1:s,r1
    3068:	11 43       	ashuw	$-15:s,r1
    306a:	19 23       	andw	r1,r9
    306c:	9f df bc 04 	storw	r9,0x4bc:m(sp)
    3070:	b7 5a 67 00 	movw	$0x67:m,r7
    3074:	7f df d8 04 	storw	r7,0x4d8:m(sp)
    3078:	0f df da 04 	storw	r0,0x4da:m(sp)
    307c:	e0 18 87 fa 	br	*-0x2b02 <.L99>:m

00003080 <.L272>:
    3080:	24 5a       	movw	$0x2:s,r4
    3082:	e0 18 df fe 	br	*-0x2f60 <.L76>:m

00003086 <.L101>:
    3086:	00 52       	cmpw	$0x0:s,r0
    3088:	dc 16       	bge	*+0x3160 <.L102>:s
    308a:	0a 52       	cmpw	$0x0:s,r10
    308c:	14 14       	bne	*+0x3114 <.L103>:s
    308e:	1f 9f b0 04 	loadw	0x4b0:m(sp),r1
    3092:	11 22       	andw	$0x1:s,r1
    3094:	01 52       	cmpw	$0x0:s,r1
    3096:	1f 13       	bne	*+0x3114 <.L103>:s
    3098:	0f df bc 04 	storw	r0,0x4bc:m(sp)
    309c:	0f df c4 04 	storw	r0,0x4c4:m(sp)
    30a0:	0f df da 04 	storw	r0,0x4da:m(sp)
    30a4:	e0 18 5f fa 	br	*-0x2b02 <.L99>:m

000030a8 <.L445>:
    30a8:	f2 55       	movd	(sp),(r3,r2)
    30aa:	b2 60 92 04 	addd	$0x492:m,(r3,r2)
    30ae:	ba 58 30 00 	movb	$0x30:m,r10

000030b2 <.L93>:
    30b2:	28 55       	movd	(r3,r2),(r9,r8)
    30b4:	a3 5a       	movw	$0xa:s,r3
    30b6:	72 5b       	movw	r7,r2
    30b8:	00 c0 24 67 	bal	(ra),*+0x97dc <___modhi3>:m
    30bc:	a0 31       	addb	r10,r0
    30be:	08 f0       	storb	r0,0x0:s(r9,r8)
    30c0:	a3 5a       	movw	$0xa:s,r3
    30c2:	72 5b       	movw	r7,r2
    30c4:	00 c0 e0 66 	bal	(ra),*+0x97a4 <___divhi3>:m
    30c8:	07 5b       	movw	r0,r7
    30ca:	82 55       	movd	(r9,r8),(r3,r2)
    30cc:	92 60       	addd	$-1:s,(r3,r2)
    30ce:	b0 52 09 00 	cmpw	$0x9:m,r0
    30d2:	c0 1f       	blt	*-0x30b2 <.L93>:s
    30d4:	b0 58 30 00 	movb	$0x30:m,r0
    30d8:	07 31       	addb	r0,r7
    30da:	72 f0       	storb	r7,0x0:s(r3,r2)
    30dc:	f0 55       	movd	(sp),(r1,r0)
    30de:	b0 60 93 04 	addd	$0x493:m,(r1,r0)
    30e2:	20 57       	cmpd	(r3,r2),(r1,r0)
    30e4:	b0 18 16 01 	bhs	*+0x31fa <.L274>:m
    30e8:	82 55       	movd	(r9,r8),(r3,r2)
    30ea:	f4 55       	movd	(sp),(r5,r4)
    30ec:	b4 60 95 04 	addd	$0x495:m,(r5,r4)
    30f0:	e3 10       	br	*+0x30f6 <.L96>:s

000030f2 <.L95>:
    30f2:	72 b0       	loadb	0x0:s(r3,r2),r7
    30f4:	12 60       	addd	$0x1:s,(r3,r2)

000030f6 <.L96>:
    30f6:	74 f0       	storb	r7,0x0:s(r5,r4)
    30f8:	14 60       	addd	$0x1:s,(r5,r4)
    30fa:	20 57       	cmpd	(r3,r2),(r1,r0)
    30fc:	1b 1f       	bne	*-0x30f2 <.L95>:s
    30fe:	f2 55       	movd	(sp),(r3,r2)
    3100:	b2 60 94 04 	addd	$0x494:m,(r3,r2)
    3104:	14 00 82 c0 	subd	(r9,r8),(r3,r2)
    3108:	b4 54 95 04 	movd	$0x495:m,(r5,r4)
    310c:	f4 61       	addd	(sp),(r5,r4)
    310e:	42 61       	addd	(r5,r4),(r3,r2)
    3110:	e0 18 15 fe 	br	*-0x2f24 <.L94>:m

00003114 <.L103>:
    3114:	1a 32       	addw	$0x1:s,r10
    3116:	0a 33       	addw	r0,r10
    3118:	af df c4 04 	storw	r10,0x4c4:m(sp)
    311c:	a1 5b       	movw	r10,r1
    311e:	91 2a       	xorw	$-1:s,r1
    3120:	11 43       	ashuw	$-15:s,r1
    3122:	a9 5b       	movw	r10,r9
    3124:	19 23       	andw	r1,r9
    3126:	9f df bc 04 	storw	r9,0x4bc:m(sp)
    312a:	0f df da 04 	storw	r0,0x4da:m(sp)
    312e:	e0 18 d5 f9 	br	*-0x2b02 <.L99>:m

00003132 <.L110>:
    3132:	07 5b       	movw	r0,r7
    3134:	17 32       	addw	$0x1:s,r7
    3136:	7f df c4 04 	storw	r7,0x4c4:m(sp)
    313a:	71 5b       	movw	r7,r1
    313c:	91 2a       	xorw	$-1:s,r1
    313e:	11 43       	ashuw	$-15:s,r1
    3140:	17 23       	andw	r1,r7
    3142:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    3146:	b8 5a 67 00 	movw	$0x67:m,r8
    314a:	8f df d8 04 	storw	r8,0x4d8:m(sp)
    314e:	0f df da 04 	storw	r0,0x4da:m(sp)
    3152:	e0 18 b1 f9 	br	*-0x2b02 <.L99>:m

00003156 <.L418>:
    3156:	97 5a       	movw	$-1:s,r7
    3158:	7f df be 04 	storw	r7,0x4be:m(sp)
    315c:	e0 18 8f ea 	br	*-0x1bea <.L9>:m

00003160 <.L102>:
    3160:	0a 52       	cmpw	$0x0:s,r10
    3162:	19 11       	bne	*+0x3194 <.L107>:s
    3164:	1f 9f b0 04 	loadw	0x4b0:m(sp),r1
    3168:	11 22       	andw	$0x1:s,r1
    316a:	01 52       	cmpw	$0x0:s,r1
    316c:	14 11       	bne	*+0x3194 <.L107>:s
    316e:	1f c3 bc 04 	storw	$0x1:s,0x4bc:m(sp)
    3172:	8f 9f bc 04 	loadw	0x4bc:m(sp),r8
    3176:	8f df c4 04 	storw	r8,0x4c4:m(sp)
    317a:	0f df da 04 	storw	r0,0x4da:m(sp)
    317e:	e0 18 85 f9 	br	*-0x2b02 <.L99>:m

00003182 <.L444>:
    3182:	00 5a       	movw	$0x0:s,r0
    3184:	70 3b       	subw	r7,r0
    3186:	07 5b       	movw	r0,r7
    3188:	b0 58 2d 00 	movb	$0x2d:m,r0
    318c:	0f ff 94 04 	storb	r0,0x494:m(sp)
    3190:	e0 18 73 fd 	br	*-0x2f02 <.L91>:m

00003194 <.L107>:
    3194:	2a 32       	addw	$0x2:s,r10
    3196:	af df c4 04 	storw	r10,0x4c4:m(sp)
    319a:	a1 5b       	movw	r10,r1
    319c:	91 2a       	xorw	$-1:s,r1
    319e:	11 43       	ashuw	$-15:s,r1
    31a0:	a7 5b       	movw	r10,r7
    31a2:	17 23       	andw	r1,r7
    31a4:	7f df bc 04 	storw	r7,0x4bc:m(sp)
    31a8:	0f df da 04 	storw	r0,0x4da:m(sp)
    31ac:	e0 18 57 f9 	br	*-0x2b02 <.L99>:m

000031b0 <.L446>:
    31b0:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    31b4:	10 22       	andw	$0x1:s,r0
    31b6:	00 52       	cmpw	$0x0:s,r0
    31b8:	10 18 89 fd 	bne	*-0x2f40 <.L97>:m
    31bc:	81 5b       	movw	r8,r1
    31be:	91 2a       	xorw	$-1:s,r1
    31c0:	11 43       	ashuw	$-15:s,r1
    31c2:	18 23       	andw	r1,r8
    31c4:	8f df bc 04 	storw	r8,0x4bc:m(sp)
    31c8:	0f df da 04 	storw	r0,0x4da:m(sp)
    31cc:	e0 18 37 f9 	br	*-0x2b02 <.L99>:m

000031d0 <.L53>:
    31d0:	6f af c8 04 	loadd	0x4c8:m(sp),(r7,r6)
    31d4:	26 60       	addd	$0x2:s,(r7,r6)
    31d6:	cf af c8 04 	loadd	0x4c8:m(sp),(r12)
    31da:	ac 90       	loadw	0x0:s(r12),r10
    31dc:	6f ef c8 04 	stord	(r7,r6),0x4c8:m(sp)
    31e0:	0a 52       	cmpw	$0x0:s,r10
    31e2:	70 18 d1 e5 	ble	*-0x17b2 <.L371>:m
    31e6:	9a 5a       	movw	$-1:s,r10
    31e8:	e0 18 cb e5 	br	*-0x17b2 <.L371>:m

000031ec <.L448>:
    31ec:	21 5a       	movw	$0x2:s,r1
    31ee:	01 3b       	subw	r0,r1
    31f0:	e0 18 6b fe 	br	*-0x305a <.L113>:m

000031f4 <.L273>:
    31f4:	08 55       	movd	(r1,r0),(r9,r8)
    31f6:	e0 18 ab f8 	br	*-0x2aa0 <.L83>:m

000031fa <.L274>:
    31fa:	f2 55       	movd	(sp),(r3,r2)
    31fc:	b2 60 95 04 	addd	$0x495:m,(r3,r2)
    3200:	e0 18 25 fd 	br	*-0x2f24 <.L94>:m

00003204 <.L441>:
    3204:	7f 9f a4 04 	loadw	0x4a4:m(sp),r7
    3208:	e0 18 df fc 	br	*-0x2ee6 <.L88>:m

0000320c <.LFE2>:
	...

0000320e <_vfprintf>:
    320e:	1e 01       	push	RA
    3210:	1c 01       	push	$0x2,r12
    3212:	fc 55       	movd	(sp),(r12)
    3214:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    3216:	8c 60       	addd	$0x8:s,(r12)
    3218:	10 01       	push	$0x2,r0
    321a:	14 01       	push	$0x2,r4
    321c:	24 55       	movd	(r3,r2),(r5,r4)
    321e:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    3222:	08 a8 
    3224:	ff c0 11 e4 	bal	(ra),*-0x1634 <__vfprintf_r>:m

00003228 <.LVL604>:
    3228:	8f 60       	addd	$0x8:s,(sp)
    322a:	1c 02       	pop	$0x2,r12
    322c:	1e 03       	popret	RA
	...

00003230 <___swsetup_r>:
    3230:	1e 01       	push	RA
    3232:	38 01       	push	$0x4,r8
    3234:	2a 55       	movd	(r3,r2),(r11,r10)
    3236:	48 55       	movd	(r5,r4),(r9,r8)
    3238:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    323c:	08 a8 
    323e:	02 56       	cmpd	$0x0:s,(r3,r2)
    3240:	05 10       	beq	*+0x324a <.L2>:s
    3242:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    3246:	00 52       	cmpw	$0x0:s,r0
    3248:	07 14       	beq	*+0x32d6 <.L29>:s

0000324a <.L2>:
    324a:	68 94       	loadw	0x8:s(r9,r8),r6
    324c:	60 5b       	movw	r6,r0
    324e:	80 22       	andw	$0x8:s,r0
    3250:	00 52       	cmpw	$0x0:s,r0
    3252:	04 11       	beq	*+0x327a <.L3>:s
    3254:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    3256:	02 56       	cmpd	$0x0:s,(r3,r2)
    3258:	0f 11       	beq	*+0x3296 <.L30>:s

0000325a <.L11>:
    325a:	18 94       	loadw	0x8:s(r9,r8),r1
    325c:	10 5b       	movw	r1,r0
    325e:	10 22       	andw	$0x1:s,r0
    3260:	00 52       	cmpw	$0x0:s,r0
    3262:	06 12       	beq	*+0x32ae <.L12>:s
    3264:	08 c3 06 00 	storw	$0x0:s,0x6:m(r9,r8)
    3268:	08 98       	loadw	0x10:s(r9,r8),r0
    326a:	04 5a       	movw	$0x0:s,r4
    326c:	04 3b       	subw	r0,r4
    326e:	48 da       	storw	r4,0x14:s(r9,r8)

00003270 <.LFE1>:
    3270:	00 5a       	movw	$0x0:s,r0
    3272:	02 56       	cmpd	$0x0:s,(r3,r2)
    3274:	06 12       	beq	*+0x32c0 <.L31>:s

00003276 <.L6>:
    3276:	38 02       	pop	$0x4,r8
    3278:	1e 03       	popret	RA

0000327a <.L3>:
    327a:	60 5b       	movw	r6,r0
    327c:	b0 22 10 00 	andw	$0x10:m,r0
    3280:	00 52       	cmpw	$0x0:s,r0
    3282:	06 14       	beq	*+0x330e <.L32>:s
    3284:	60 5b       	movw	r6,r0
    3286:	40 22       	andw	$0x4:s,r0
    3288:	00 52       	cmpw	$0x0:s,r0
    328a:	19 12       	bne	*+0x32dc <.L7>:s
    328c:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    328e:	86 26       	orw	$0x8:s,r6
    3290:	68 d4       	storw	r6,0x8:s(r9,r8)

00003292 <.L33>:
    3292:	02 56       	cmpd	$0x0:s,(r3,r2)
    3294:	13 1e       	bne	*-0x325a <.L11>:s

00003296 <.L30>:
    3296:	08 94       	loadw	0x8:s(r9,r8),r0
    3298:	b0 22 80 02 	andw	$0x280:m,r0
    329c:	b0 52 00 02 	cmpw	$0x200:m,r0
    32a0:	0d 1d       	beq	*-0x325a <.L11>:s
    32a2:	84 55       	movd	(r9,r8),(r5,r4)
    32a4:	a2 55       	movd	(r11,r10),(r3,r2)
    32a6:	00 c0 76 1f 	bal	(ra),*+0x521c <___smakebuf_r>:m

000032aa <.LVL3>:
    32aa:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    32ac:	e7 1d       	br	*-0x325a <.L11>:s

000032ae <.L12>:
    32ae:	14 5b       	movw	r1,r4
    32b0:	24 22       	andw	$0x2:s,r4
    32b2:	04 52       	cmpw	$0x0:s,r4
    32b4:	12 10       	bne	*+0x32b8 <.L14>:s
    32b6:	08 98       	loadw	0x10:s(r9,r8),r0

000032b8 <.L14>:
    32b8:	08 d3       	storw	r0,0x6:s(r9,r8)
    32ba:	00 5a       	movw	$0x0:s,r0
    32bc:	02 56       	cmpd	$0x0:s,(r3,r2)
    32be:	1c 1d       	bne	*-0x3276 <.L6>:s

000032c0 <.L31>:
    32c0:	12 5b       	movw	r1,r2
    32c2:	b2 22 80 00 	andw	$0x80:m,r2
    32c6:	02 53       	cmpw	r0,r2
    32c8:	07 1d       	beq	*-0x3276 <.L6>:s
    32ca:	b1 26 40 00 	orw	$0x40:m,r1
    32ce:	18 d4       	storw	r1,0x8:s(r9,r8)
    32d0:	90 5a       	movw	$-1:s,r0
    32d2:	38 02       	pop	$0x4,r8
    32d4:	1e 03       	popret	RA

000032d6 <.L29>:
    32d6:	00 c0 ae 19 	bal	(ra),*+0x4c84 <___sinit>:m

000032da <.LVL5>:
    32da:	e8 1b       	br	*-0x324a <.L2>:s

000032dc <.L7>:
    32dc:	48 af 2c 00 	loadd	0x2c:m(r9,r8),(r5,r4)
    32e0:	04 56       	cmpd	$0x0:s,(r5,r4)
    32e2:	0d 10       	beq	*+0x32fc <.L9>:s
    32e4:	80 55       	movd	(r9,r8),(r1,r0)
    32e6:	b0 60 3a 00 	addd	$0x3a:m,(r1,r0)
    32ea:	04 57       	cmpd	(r1,r0),(r5,r4)
    32ec:	05 10       	beq	*+0x32f6 <.L10>:s
    32ee:	a2 55       	movd	(r11,r10),(r3,r2)
    32f0:	00 c0 90 1b 	bal	(ra),*+0x4e80 <__free_r>:m

000032f4 <.LVL6>:
    32f4:	68 94       	loadw	0x8:s(r9,r8),r6

000032f6 <.L10>:
    32f6:	00 54       	movd	$0x0:s,(r1,r0)
    32f8:	08 ef 2c 00 	stord	(r1,r0),0x2c:m(r9,r8)

000032fc <.L9>:
    32fc:	b6 22 db ff 	andw	$0xffdb:m,r6
    3300:	08 c3 04 00 	storw	$0x0:s,0x4:m(r9,r8)
    3304:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    3306:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    3308:	86 26       	orw	$0x8:s,r6
    330a:	68 d4       	storw	r6,0x8:s(r9,r8)
    330c:	e3 1c       	br	*-0x3292 <.L33>:s

0000330e <.L32>:
    330e:	9a c2       	storw	$0x9:s,0x0:s(r11,r10)
    3310:	b6 26 40 00 	orw	$0x40:m,r6
    3314:	68 d4       	storw	r6,0x8:s(r9,r8)
    3316:	90 5a       	movw	$-1:s,r0
    3318:	38 02       	pop	$0x4,r8
    331a:	1e 03       	popret	RA

0000331c <___call_exitprocs>:
    331c:	9d 01       	push	$0x2,r13,RA
    331e:	67 01       	push	$0x7,r7
    3320:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)

00003322 <.LFE0>:
    3322:	f4 ff 2f d2 	storb	r15,0xd22f:m(r5,r4)
    3326:	12 00 00 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r1,r0)
    332a:	b8 9e 
    332c:	b0 60 08 01 	addd	$0x108:m,(r1,r0)
    3330:	0f e4       	stord	(r1,r0),0x8:s(sp)
    3332:	19 5a       	movw	$0x1:s,r9
    3334:	3c 55       	movd	(r4,r3),(r12)

00003336 <.L35>:
    3336:	12 00 10 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r2,r1)
    333a:	b8 9e 
    333c:	a1 af 08 01 	loadd	0x108:m(r2,r1),(r11,r10)
    3340:	df a4       	loadd	0x8:s(sp),(r13)
    3342:	0a 56       	cmpd	$0x0:s,(r11,r10)
    3344:	08 14       	beq	*+0x33d4 <.L1>:s
    3346:	df e0       	stord	(r13),0x0:s(sp)

00003348 <.L27>:
    3348:	8a 92       	loadw	0x4:s(r11,r10),r8
    334a:	98 32       	addw	$-1:s,r8
    334c:	08 52       	cmpw	$0x0:s,r8
    334e:	7e 10       	ble	*+0x336a <.L28>:s
    3350:	ed 13       	br	*+0x33ca <.L3>:s

00003352 <.L36>:
    3352:	02 55       	movd	(r1,r0),(r3,r2)
    3354:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    3358:	22 4c       	ashud	$2:s,(r3,r2)
    335a:	a2 61       	addd	(r11,r10),(r3,r2)
    335c:	22 af 88 00 	loadd	0x88:m(r3,r2),(r3,r2)
    3360:	c2 57       	cmpd	(r12),(r3,r2)
    3362:	07 10       	beq	*+0x3370 <.L4>:s

00003364 <.L5>:
    3364:	98 32       	addw	$-1:s,r8
    3366:	98 52       	cmpw	$-1:s,r8
    3368:	01 13       	beq	*+0x33ca <.L3>:s

0000336a <.L28>:
    336a:	80 5e       	movxw	r8,(r1,r0)
    336c:	0c 56       	cmpd	$0x0:s,(r12)
    336e:	12 1f       	bne	*-0x3352 <.L36>:s

00003370 <.L4>:
    3370:	02 55       	movd	(r1,r0),(r3,r2)
    3372:	22 60       	addd	$0x2:s,(r3,r2)
    3374:	22 4c       	ashud	$2:s,(r3,r2)
    3376:	a2 61       	addd	(r11,r10),(r3,r2)
    3378:	d2 a0       	loadd	0x0:s(r3,r2),(r13)
    337a:	4a 92       	loadw	0x4:s(r11,r10),r4
    337c:	94 32       	addw	$-1:s,r4
    337e:	84 53       	cmpw	r8,r4
    3380:	0f 12       	beq	*+0x33de <.L40>:s
    3382:	04 54       	movd	$0x0:s,(r5,r4)
    3384:	42 e0       	stord	(r5,r4),0x0:s(r3,r2)

00003386 <.L7>:
    3386:	0d 56       	cmpd	$0x0:s,(r13)
    3388:	0e 1e       	beq	*-0x3364 <.L5>:s
    338a:	7a 92       	loadw	0x4:s(r11,r10),r7
    338c:	94 5b       	movw	r9,r4
    338e:	84 45       	ashuw	r8,r4
    3390:	44 5e       	movxw	r4,(r5,r4)
    3392:	2a af 88 01 	loadd	0x188:m(r11,r10),(r3,r2)
    3396:	14 00 42 b0 	andd	(r5,r4),(r3,r2)
    339a:	02 56       	cmpd	$0x0:s,(r3,r2)
    339c:	0f 11       	beq	*+0x33da <.L41>:s
    339e:	2a af 8c 01 	loadd	0x18c:m(r11,r10),(r3,r2)
    33a2:	14 00 42 b0 	andd	(r5,r4),(r3,r2)
    33a6:	20 4c       	ashud	$2:s,(r1,r0)
    33a8:	a0 61       	addd	(r11,r10),(r1,r0)
    33aa:	02 56       	cmpd	$0x0:s,(r3,r2)
    33ac:	1b 11       	bne	*+0x33e2 <.L10>:s
    33ae:	30 af 88 00 	loadd	0x88:m(r1,r0),(r4,r3)
    33b2:	2f 92       	loadw	0x4:s(sp),r2
    33b4:	dd 00       	jal	(r13)

000033b6 <.L9>:
    33b6:	0a 92       	loadw	0x4:s(r11,r10),r0
    33b8:	70 53       	cmpw	r7,r0
    33ba:	1e 1b       	bne	*-0x3336 <.L35>:s
    33bc:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    33be:	02 a0       	loadd	0x0:s(r3,r2),(r1,r0)
    33c0:	a0 57       	cmpd	(r11,r10),(r1,r0)
    33c2:	1a 1b       	bne	*-0x3336 <.L35>:s
    33c4:	98 32       	addw	$-1:s,r8
    33c6:	98 52       	cmpw	$-1:s,r8
    33c8:	11 1d       	bne	*-0x336a <.L28>:s

000033ca <.L3>:
    33ca:	73 00 00 00 	movd	$0x0:l,(r4,r3)
    33ce:	00 00 
    33d0:	03 56       	cmpd	$0x0:s,(r4,r3)
    33d2:	1c 10       	bne	*+0x33ea <.L42>:s

000033d4 <.L1>:
    33d4:	cf 60       	addd	$0xc:s,(sp)
    33d6:	67 02       	pop	$0x7,r7
    33d8:	9d 03       	popret	$0x2,r13,RA

000033da <.L41>:
    33da:	dd 00       	jal	(r13)
    33dc:	ed 1e       	br	*-0x33b6 <.L9>:s

000033de <.L40>:
    33de:	8a d2       	storw	r8,0x4:s(r11,r10)
    33e0:	e3 1d       	br	*-0x3386 <.L7>:s

000033e2 <.L10>:
    33e2:	20 af 88 00 	loadd	0x88:m(r1,r0),(r3,r2)
    33e6:	dd 00       	jal	(r13)
    33e8:	e7 1e       	br	*-0x33b6 <.L9>:s

000033ea <.L42>:
    33ea:	0a 92       	loadw	0x4:s(r11,r10),r0
    33ec:	00 52       	cmpw	$0x0:s,r0
    33ee:	10 11       	bne	*+0x340e <.L13>:s
    33f0:	0a a0       	loadd	0x0:s(r11,r10),(r1,r0)
    33f2:	00 56       	cmpd	$0x0:s,(r1,r0)
    33f4:	03 11       	beq	*+0x341a <.L17>:s
    33f6:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    33f8:	04 e0       	stord	(r1,r0),0x0:s(r5,r4)
    33fa:	a2 55       	movd	(r11,r10),(r3,r2)
    33fc:	ff c0 05 cc 	bal	(ra),*-0x0 <.Lframe0>:m

00003400 <.LVL22>:
    3400:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    3402:	a0 a0       	loadd	0x0:s(r1,r0),(r11,r10)

00003404 <.L15>:
    3404:	0a 56       	cmpd	$0x0:s,(r11,r10)
    3406:	11 1a       	bne	*-0x3348 <.L27>:s
    3408:	cf 60       	addd	$0xc:s,(sp)
    340a:	67 02       	pop	$0x7,r7
    340c:	9d 03       	popret	$0x2,r13,RA

0000340e <.L13>:
    340e:	2a 90       	loadw	0x0:s(r11,r10),r2
    3410:	0a 91       	loadw	0x2:s(r11,r10),r0

00003412 <.L14>:
    3412:	af e0       	stord	(r11,r10),0x0:s(sp)
    3414:	2a 5b       	movw	r2,r10
    3416:	0b 5b       	movw	r0,r11
    3418:	e6 1f       	br	*-0x3404 <.L15>:s

0000341a <.L17>:
    341a:	02 5b       	movw	r0,r2
    341c:	10 5b       	movw	r1,r0
    341e:	ea 1f       	br	*-0x3412 <.L14>:s

00003420 <_quorem>:
    3420:	9d 01       	push	$0x2,r13,RA
    3422:	67 01       	push	$0x7,r7
    3424:	bf 60 dc ff 	addd	$0xffdc:m,(sp)

00003428 <.LFE0>:
    3428:	2f e4       	stord	(r3,r2),0x8:s(sp)
    342a:	4f ea       	stord	(r5,r4),0x14:s(sp)
    342c:	74 95       	loadw	0xa:s(r5,r4),r7
    342e:	12 95       	loadw	0xa:s(r3,r2),r1
    3430:	00 5a       	movw	$0x0:s,r0
    3432:	17 53       	cmpw	r1,r7
    3434:	c0 18 96 01 	blt	*+0x35ca <.L2>:m
    3438:	4c 55       	movd	(r5,r4),(r12)
    343a:	cc 60       	addd	$0xc:s,(r12)
    343c:	97 32       	addw	$-1:s,r7
    343e:	70 5e       	movxw	r7,(r1,r0)
    3440:	30 60       	addd	$0x3:s,(r1,r0)
    3442:	0f ec       	stord	(r1,r0),0x18:s(sp)
    3444:	20 4c       	ashud	$2:s,(r1,r0)
    3446:	42 55       	movd	(r5,r4),(r3,r2)
    3448:	02 61       	addd	(r1,r0),(r3,r2)
    344a:	2f e8       	stord	(r3,r2),0x10:s(sp)
    344c:	ef a4       	loadd	0x8:s(sp),(ra)
    344e:	ce 60       	addd	$0xc:s,(ra)
    3450:	ef ef 1c 00 	stord	(ra),0x1c:m(sp)
    3454:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    3456:	20 61       	addd	(r3,r2),(r1,r0)
    3458:	ef a8       	loadd	0x10:s(sp),(ra)
    345a:	4e a0       	loadd	0x0:s(ra),(r5,r4)
    345c:	14 60       	addd	$0x1:s,(r5,r4)
    345e:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    3460:	00 c0 c4 63 	bal	(ra),*+0x9824 <___udivsi3>:m
    3464:	0f d0       	storw	r0,0x0:s(sp)
    3466:	1f d1       	storw	r1,0x2:s(sp)
    3468:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    346a:	00 56       	cmpd	$0x0:s,(r1,r0)
    346c:	00 16       	beq	*+0x352c <.L3>:s
    346e:	ca 55       	movd	(r12),(r11,r10)
    3470:	df af 1c 00 	loadd	0x1c:m(sp),(r13)
    3474:	08 54       	movd	$0x0:s,(r9,r8)
    3476:	8f e6       	stord	(r9,r8),0xc:s(sp)
    3478:	cf ef 20 00 	stord	(r12),0x20:m(sp)
    347c:	8c 55       	movd	(r9,r8),(r12)

0000347e <.L4>:
    347e:	1a a0       	loadd	0x0:s(r11,r10),(r2,r1)
    3480:	1f e2       	stord	(r2,r1),0x4:s(sp)
    3482:	4a 60       	addd	$0x4:s,(r11,r10)
    3484:	12 55       	movd	(r2,r1),(r3,r2)
    3486:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    348a:	ff ff 
    348c:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    348e:	00 c0 26 54 	bal	(ra),*+0x88b4 <___mulsi3>:m
    3492:	08 55       	movd	(r1,r0),(r9,r8)
    3494:	c8 61       	addd	(r12),(r9,r8)
    3496:	8c 55       	movd	(r9,r8),(r12)
    3498:	0c 4b       	lshd	$-16:s,(r12)
    349a:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    349c:	2f 93       	loadw	0x6:s(sp),r2
    349e:	03 5a       	movw	$0x0:s,r3
    34a0:	00 c0 14 54 	bal	(ra),*+0x88b4 <___mulsi3>:m
    34a4:	c0 61       	addd	(r12),(r1,r0)
    34a6:	0c 55       	movd	(r1,r0),(r12)
    34a8:	0c 4b       	lshd	$-16:s,(r12)
    34aa:	4d a0       	loadd	0x0:s(r13),(r5,r4)
    34ac:	42 55       	movd	(r5,r4),(r3,r2)
    34ae:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    34b2:	ff ff 
    34b4:	ef a6       	loadd	0xc:s(sp),(ra)
    34b6:	e2 61       	addd	(ra),(r3,r2)
    34b8:	48 00 00 00 	andd	$0xffff:l,(r9,r8)
    34bc:	ff ff 
    34be:	14 00 82 c0 	subd	(r9,r8),(r3,r2)
    34c2:	04 4b       	lshd	$-16:s,(r5,r4)
    34c4:	40 00 00 00 	andd	$0xffff:l,(r1,r0)
    34c8:	ff ff 
    34ca:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    34ce:	20 55       	movd	(r3,r2),(r1,r0)
    34d0:	00 4f       	ashud	$-16:s,(r1,r0)
    34d2:	04 61       	addd	(r1,r0),(r5,r4)
    34d4:	40 55       	movd	(r5,r4),(r1,r0)
    34d6:	00 4f       	ashud	$-16:s,(r1,r0)
    34d8:	0f e6       	stord	(r1,r0),0xc:s(sp)
    34da:	04 4d       	ashud	$16:s,(r5,r4)
    34dc:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    34e0:	ff ff 
    34e2:	14 00 24 90 	ord	(r3,r2),(r5,r4)
    34e6:	4d e0       	stord	(r5,r4),0x0:s(r13)
    34e8:	4d 60       	addd	$0x4:s,(r13)
    34ea:	1f a8       	loadd	0x10:s(sp),(r2,r1)
    34ec:	a1 57       	cmpd	(r11,r10),(r2,r1)
    34ee:	58 1c       	bls	*-0x347e <.L4>:s
    34f0:	cf af 20 00 	loadd	0x20:m(sp),(r12)
    34f4:	0f ac       	loadd	0x18:s(sp),(r1,r0)
    34f6:	20 4c       	ashud	$2:s,(r1,r0)
    34f8:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    34fa:	20 61       	addd	(r3,r2),(r1,r0)
    34fc:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    34fe:	02 56       	cmpd	$0x0:s,(r3,r2)
    3500:	16 11       	bne	*+0x352c <.L3>:s
    3502:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    3506:	ef af 1c 00 	loadd	0x1c:m(sp),(ra)
    350a:	0e 57       	cmpd	(r1,r0),(ra)
    350c:	5e 10       	bls	*+0x3528 <.L5>:s
    350e:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    3510:	02 56       	cmpd	$0x0:s,(r3,r2)
    3512:	1b 10       	bne	*+0x3528 <.L5>:s
    3514:	e4 55       	movd	(ra),(r5,r4)
    3516:	e4 10       	br	*+0x351e <.L19>:s

00003518 <.L30>:
    3518:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    351a:	02 56       	cmpd	$0x0:s,(r3,r2)
    351c:	16 10       	bne	*+0x3528 <.L5>:s

0000351e <.L19>:
    351e:	97 32       	addw	$-1:s,r7
    3520:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    3524:	04 57       	cmpd	(r1,r0),(r5,r4)
    3526:	49 1f       	bhi	*-0x3518 <.L30>:s

00003528 <.L5>:
    3528:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    352a:	70 d5       	storw	r7,0xa:s(r1,r0)

0000352c <.L3>:
    352c:	4f aa       	loadd	0x14:s(sp),(r5,r4)
    352e:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    3530:	00 c0 80 2d 	bal	(ra),*+0x62b0 <___mcmp>:m

00003534 <.LVL39>:
    3534:	00 52       	cmpw	$0x0:s,r0
    3536:	69 14       	bgt	*+0x35c8 <.L7>:s
    3538:	1f a0       	loadd	0x0:s(sp),(r2,r1)
    353a:	11 60       	addd	$0x1:s,(r2,r1)
    353c:	1f e0       	stord	(r2,r1),0x0:s(sp)
    353e:	4f af 1c 00 	loadd	0x1c:m(sp),(r5,r4)
    3542:	0e 54       	movd	$0x0:s,(ra)
    3544:	df a8       	loadd	0x10:s(sp),(r13)
    3546:	7a 5b       	movw	r7,r10

00003548 <.L8>:
    3548:	6c a0       	loadd	0x0:s(r12),(r7,r6)
    354a:	4c 60       	addd	$0x4:s,(r12)
    354c:	84 a0       	loadd	0x0:s(r5,r4),(r9,r8)
    354e:	80 55       	movd	(r9,r8),(r1,r0)
    3550:	40 00 00 00 	andd	$0xffff:l,(r1,r0)
    3554:	ff ff 
    3556:	e0 61       	addd	(ra),(r1,r0)
    3558:	62 55       	movd	(r7,r6),(r3,r2)
    355a:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    355e:	ff ff 
    3560:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    3564:	82 55       	movd	(r9,r8),(r3,r2)
    3566:	02 4b       	lshd	$-16:s,(r3,r2)
    3568:	06 4b       	lshd	$-16:s,(r7,r6)
    356a:	14 00 62 c0 	subd	(r7,r6),(r3,r2)
    356e:	06 55       	movd	(r1,r0),(r7,r6)
    3570:	06 4f       	ashud	$-16:s,(r7,r6)
    3572:	62 61       	addd	(r7,r6),(r3,r2)
    3574:	2e 55       	movd	(r3,r2),(ra)
    3576:	0e 4f       	ashud	$-16:s,(ra)
    3578:	02 4d       	ashud	$16:s,(r3,r2)
    357a:	40 00 00 00 	andd	$0xffff:l,(r1,r0)
    357e:	ff ff 
    3580:	14 00 02 90 	ord	(r1,r0),(r3,r2)
    3584:	24 e0       	stord	(r3,r2),0x0:s(r5,r4)
    3586:	44 60       	addd	$0x4:s,(r5,r4)
    3588:	cd 57       	cmpd	(r12),(r13)
    358a:	5f 1d       	bls	*-0x3548 <.L8>:s
    358c:	a7 5b       	movw	r10,r7
    358e:	a0 5e       	movxw	r10,(r1,r0)
    3590:	30 60       	addd	$0x3:s,(r1,r0)
    3592:	20 4c       	ashud	$2:s,(r1,r0)
    3594:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    3596:	20 61       	addd	(r3,r2),(r1,r0)
    3598:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    359a:	02 56       	cmpd	$0x0:s,(r3,r2)
    359c:	16 11       	bne	*+0x35c8 <.L7>:s
    359e:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    35a2:	ef af 1c 00 	loadd	0x1c:m(sp),(ra)
    35a6:	0e 57       	cmpd	(r1,r0),(ra)
    35a8:	5e 10       	bls	*+0x35c4 <.L9>:s
    35aa:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    35ac:	02 56       	cmpd	$0x0:s,(r3,r2)
    35ae:	1b 10       	bne	*+0x35c4 <.L9>:s
    35b0:	e4 55       	movd	(ra),(r5,r4)
    35b2:	e4 10       	br	*+0x35ba <.L18>:s

000035b4 <.L31>:
    35b4:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    35b6:	02 56       	cmpd	$0x0:s,(r3,r2)
    35b8:	16 10       	bne	*+0x35c4 <.L9>:s

000035ba <.L18>:
    35ba:	97 32       	addw	$-1:s,r7
    35bc:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    35c0:	04 57       	cmpd	(r1,r0),(r5,r4)
    35c2:	49 1f       	bhi	*-0x35b4 <.L31>:s

000035c4 <.L9>:
    35c4:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    35c6:	70 d5       	storw	r7,0xa:s(r1,r0)

000035c8 <.L7>:
    35c8:	0f 90       	loadw	0x0:s(sp),r0

000035ca <.L2>:
    35ca:	bf 60 24 00 	addd	$0x24:m,(sp)
    35ce:	67 02       	pop	$0x7,r7
    35d0:	9d 03       	popret	$0x2,r13,RA

000035d2 <.LFE0>:
	...

000035d4 <__dtoa_r>:
    35d4:	9d 01       	push	$0x2,r13,RA
    35d6:	67 01       	push	$0x7,r7
    35d8:	bf 60 98 ff 	addd	$0xff98:m,(sp)
    35dc:	fc 55       	movd	(sp),(r12)
    35de:	2d 55       	movd	(r3,r2),(r13)
    35e0:	4f df 1c 00 	storw	r4,0x1c:m(sp)
    35e4:	5f df 2e 00 	storw	r5,0x2e:m(sp)
    35e8:	7f af 86 00 	loadd	0x86:m(sp),(r8,r7)
    35ec:	7f ef 34 00 	stord	(r8,r7),0x34:m(sp)
    35f0:	af af 8a 00 	loadd	0x8a:m(sp),(r11,r10)
    35f4:	8f af 8e 00 	loadd	0x8e:m(sp),(r9,r8)
    35f8:	8f ef 24 00 	stord	(r9,r8),0x24:m(sp)
    35fc:	0f af 7e 00 	loadd	0x7e:m(sp),(r1,r0)
    3600:	2f af 82 00 	loadd	0x82:m(sp),(r3,r2)
    3604:	bc 60 7e 00 	addd	$0x7e:m,(r12)
    3608:	0f ea       	stord	(r1,r0),0x14:s(sp)
    360a:	2f ec       	stord	(r3,r2),0x18:s(sp)
    360c:	4d af 3c 00 	loadd	0x3c:m(r13),(r5,r4)
    3610:	04 56       	cmpd	$0x0:s,(r5,r4)
    3612:	0d 10       	beq	*+0x362c <.L33>:s
    3614:	0d 9f 40 00 	loadw	0x40:m(r13),r0
    3618:	04 d2       	storw	r0,0x4:s(r5,r4)
    361a:	11 5a       	movw	$0x1:s,r1
    361c:	01 45       	ashuw	r0,r1
    361e:	14 d3       	storw	r1,0x6:s(r5,r4)
    3620:	d2 55       	movd	(r13),(r3,r2)
    3622:	00 c0 52 26 	bal	(ra),*+0x5c74 <__Bfree>:m

00003626 <.LVL73>:
    3626:	00 54       	movd	$0x0:s,(r1,r0)
    3628:	0d ef 3c 00 	stord	(r1,r0),0x3c:m(r13)

0000362c <.L33>:
    362c:	8f ac       	loadd	0x18:s(sp),(r9,r8)
    362e:	08 56       	cmpd	$0x0:s,(r9,r8)
    3630:	68 15       	bgt	*+0x36e0 <.L331>:s
    3632:	0a c2       	storw	$0x0:s,0x0:s(r11,r10)

00003634 <.L35>:
    3634:	80 55       	movd	(r9,r8),(r1,r0)
    3636:	40 00 f0 7f 	andd	$0x7ff00000:l,(r1,r0)
    363a:	00 00 
    363c:	90 00 f0 7f 	cmpd	$0x7ff00000:l,(r1,r0)
    3640:	00 00 
    3642:	05 12       	beq	*+0x368c <.L332>:s
    3644:	0f aa       	loadd	0x14:s(sp),(r1,r0)
    3646:	2f ac       	loadd	0x18:s(sp),(r3,r2)
    3648:	0f e2       	stord	(r1,r0),0x4:s(sp)
    364a:	2f e4       	stord	(r3,r2),0x8:s(sp)
    364c:	00 54       	movd	$0x0:s,(r1,r0)
    364e:	02 54       	movd	$0x0:s,(r3,r2)
    3650:	30 01       	push	$0x4,r0
    3652:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    3654:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    3656:	32 01       	push	$0x4,r2
    3658:	00 c0 9c 5c 	bal	(ra),*+0x92f4 <___eqdf2>:m
    365c:	bf 60 10 00 	addd	$0x10:m,(sp)
    3660:	00 52       	cmpw	$0x0:s,r0
    3662:	15 14       	bne	*+0x36ec <.L314>:s
    3664:	7f af 34 00 	loadd	0x34:m(sp),(r8,r7)
    3668:	17 c2       	storw	$0x1:s,0x0:s(r8,r7)
    366a:	8f af 24 00 	loadd	0x24:m(sp),(r9,r8)
    366e:	08 56       	cmpd	$0x0:s,(r9,r8)
    3670:	00 18 8a 02 	beq	*+0x38fa <.L166>:m
    3674:	00 05 fb 9e 	movd	$0x9efb:m,(r1,r0)
    3678:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    367a:	90 05 fa 9e 	movd	$0x9efa:m,(r10,r9)
    367e:	9f e2       	stord	(r10,r9),0x4:s(sp)

00003680 <.L243>:
    3680:	0f 92       	loadw	0x4:s(sp),r0
    3682:	1f 93       	loadw	0x6:s(sp),r1
    3684:	bf 60 68 00 	addd	$0x68:m,(sp)
    3688:	67 02       	pop	$0x7,r7
    368a:	9d 03       	popret	$0x2,r13,RA

0000368c <.L332>:
    368c:	b0 5a 0f 27 	movw	$0x270f:m,r0
    3690:	af af 34 00 	loadd	0x34:m(sp),(r11,r10)
    3694:	0a d0       	storw	r0,0x0:s(r11,r10)
    3696:	a0 05 8a a0 	movd	$0xa08a:m,(r11,r10)
    369a:	af e2       	stord	(r11,r10),0x4:s(sp)
    369c:	0f aa       	loadd	0x14:s(sp),(r1,r0)
    369e:	00 56       	cmpd	$0x0:s,(r1,r0)
    36a0:	1c 10       	bne	*+0x36b8 <.L37>:s
    36a2:	48 00 0f 00 	andd	$0xfffff:l,(r9,r8)
    36a6:	ff ff 
    36a8:	a0 05 80 a0 	movd	$0xa080:m,(r11,r10)
    36ac:	af e2       	stord	(r11,r10),0x4:s(sp)
    36ae:	08 56       	cmpd	$0x0:s,(r9,r8)
    36b0:	04 10       	beq	*+0x36b8 <.L37>:s
    36b2:	70 05 8a a0 	movd	$0xa08a:m,(r8,r7)
    36b6:	7f e2       	stord	(r8,r7),0x4:s(sp)

000036b8 <.L37>:
    36b8:	8f af 24 00 	loadd	0x24:m(sp),(r9,r8)
    36bc:	08 56       	cmpd	$0x0:s,(r9,r8)
    36be:	01 1e       	beq	*-0x3680 <.L243>:s
    36c0:	9f a2       	loadd	0x4:s(sp),(r10,r9)
    36c2:	09 b3       	loadb	0x3:s(r10,r9),r0
    36c4:	00 50       	cmpb	$0x0:s,r0
    36c6:	10 18 06 02 	bne	*+0x38cc <.L333>:m
    36ca:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    36cc:	30 60       	addd	$0x3:s,(r1,r0)

000036ce <.L40>:
    36ce:	af af 24 00 	loadd	0x24:m(sp),(r11,r10)
    36d2:	0a e0       	stord	(r1,r0),0x0:s(r11,r10)
    36d4:	0f 92       	loadw	0x4:s(sp),r0
    36d6:	1f 93       	loadw	0x6:s(sp),r1
    36d8:	bf 60 68 00 	addd	$0x68:m,(sp)
    36dc:	67 02       	pop	$0x7,r7
    36de:	9d 03       	popret	$0x2,r13,RA

000036e0 <.L331>:
    36e0:	1a c2       	storw	$0x1:s,0x0:s(r11,r10)
    36e2:	48 00 ff 7f 	andd	$0x7fffffff:l,(r9,r8)
    36e6:	ff ff 
    36e8:	8f ec       	stord	(r9,r8),0x18:s(sp)
    36ea:	e5 1a       	br	*-0x3634 <.L35>:s

000036ec <.L314>:
    36ec:	f0 55       	movd	(sp),(r1,r0)
    36ee:	20 60       	addd	$0x2:s,(r1,r0)
    36f0:	10 01       	push	$0x2,r0
    36f2:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    36f4:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    36f6:	30 01       	push	$0x4,r0
    36f8:	f4 55       	movd	(sp),(r5,r4)
    36fa:	c4 60       	addd	$0xc:s,(r5,r4)
    36fc:	d2 55       	movd	(r13),(r3,r2)
    36fe:	00 c0 8e 2e 	bal	(ra),*+0x658c <___d2b>:m

00003702 <.LVL86>:
    3702:	0f ef 3c 00 	stord	(r1,r0),0x3c:m(sp)
    3706:	97 5b       	movw	r9,r7
    3708:	c7 49       	lshw	$-4:s,r7
    370a:	b7 22 ff 07 	andw	$0x7ff:m,r7
    370e:	cf 60       	addd	$0xc:s,(sp)
    3710:	07 52       	cmpw	$0x0:s,r7
    3712:	10 18 c2 01 	bne	*+0x38d4 <.L334>:m
    3716:	af 91       	loadw	0x2:s(sp),r10
    3718:	af d6       	storw	r10,0xc:s(sp)
    371a:	af 90       	loadw	0x0:s(sp),r10
    371c:	bf 96       	loadw	0xc:s(sp),r11
    371e:	ab 33       	addw	r10,r11
    3720:	bf d2       	storw	r11,0x4:s(sp)
    3722:	bb 52 ef fb 	cmpw	$0xfbef:m,r11
    3726:	60 18 50 09 	bgt	*+0x4076 <.L45>:m
    372a:	b0 5a 0e fc 	movw	$0xfc0e:m,r0
    372e:	b0 3b       	subw	r11,r0
    3730:	82 55       	movd	(r9,r8),(r3,r2)
    3732:	02 48       	ashud	r0,(r3,r2)
    3734:	b0 5b       	movw	r11,r0
    3736:	b0 32 12 04 	addw	$0x412:m,r0
    373a:	07 39       	subb	r0,r7
    373c:	0f aa       	loadd	0x14:s(sp),(r1,r0)
    373e:	70 47       	lshd	r7,(r1,r0)
    3740:	14 00 02 90 	ord	(r1,r0),(r3,r2)

00003744 <.L46>:
    3744:	00 c0 3c 5f 	bal	(ra),*+0x9680 <___floatunsidf>:m
    3748:	08 55       	movd	(r1,r0),(r9,r8)
    374a:	2a 55       	movd	(r3,r2),(r11,r10)
    374c:	2a 00 10 fe 	addd	$0xfe100000:l,(r11,r10)
    3750:	00 00 
    3752:	7f 92       	loadw	0x4:s(sp),r7
    3754:	97 32       	addw	$-1:s,r7
    3756:	7f d2       	storw	r7,0x4:s(sp)
    3758:	1f c3 54 00 	storw	$0x1:s,0x54:m(sp)

0000375c <.L44>:
    375c:	00 54       	movd	$0x0:s,(r1,r0)
    375e:	72 00 f8 3f 	movd	$0x3ff80000:l,(r3,r2)
    3762:	00 00 
    3764:	30 01       	push	$0x4,r0
    3766:	38 01       	push	$0x4,r8
    3768:	00 c0 b4 54 	bal	(ra),*+0x8c1c <___subdf3>:m
    376c:	bf 60 10 00 	addd	$0x10:m,(sp)
    3770:	78 00 6f 63 	movd	$0x636f4361:l,(r9,r8)
    3774:	61 43 
    3776:	7a 00 d2 3f 	movd	$0x3fd287a7:l,(r11,r10)
    377a:	a7 87 
    377c:	38 01       	push	$0x4,r8
    377e:	30 01       	push	$0x4,r0
    3780:	00 c0 10 55 	bal	(ra),*+0x8c90 <___muldf3>:m
    3784:	bf 60 10 00 	addd	$0x10:m,(sp)
    3788:	78 00 60 8b 	movd	$0x8b60c8b3:l,(r9,r8)
    378c:	b3 c8 
    378e:	7a 00 c6 3f 	movd	$0x3fc68a28:l,(r11,r10)
    3792:	28 8a 
    3794:	38 01       	push	$0x4,r8
    3796:	30 01       	push	$0x4,r0
    3798:	00 c0 14 54 	bal	(ra),*+0x8bac <___adddf3>:m
    379c:	bf 60 10 00 	addd	$0x10:m,(sp)
    37a0:	08 55       	movd	(r1,r0),(r9,r8)
    37a2:	2a 55       	movd	(r3,r2),(r11,r10)
    37a4:	7f 92       	loadw	0x4:s(sp),r7
    37a6:	72 5e       	movxw	r7,(r3,r2)
    37a8:	00 c0 90 5d 	bal	(ra),*+0x9538 <___floatsidf>:m
    37ac:	74 00 9f 50 	movd	$0x509f79fb:l,(r5,r4)
    37b0:	fb 79 
    37b2:	76 00 d3 3f 	movd	$0x3fd34413:l,(r7,r6)
    37b6:	13 44 
    37b8:	34 01       	push	$0x4,r4
    37ba:	30 01       	push	$0x4,r0
    37bc:	00 c0 d4 54 	bal	(ra),*+0x8c90 <___muldf3>:m
    37c0:	bf 60 10 00 	addd	$0x10:m,(sp)
    37c4:	30 01       	push	$0x4,r0
    37c6:	38 01       	push	$0x4,r8
    37c8:	00 c0 e4 53 	bal	(ra),*+0x8bac <___adddf3>:m
    37cc:	bf 60 10 00 	addd	$0x10:m,(sp)
    37d0:	08 55       	movd	(r1,r0),(r9,r8)
    37d2:	2a 55       	movd	(r3,r2),(r11,r10)
    37d4:	30 01       	push	$0x4,r0
    37d6:	00 c0 f6 5d 	bal	(ra),*+0x95cc <___fixdfsi>:m
    37da:	0f df 34 00 	storw	r0,0x34:m(sp)
    37de:	00 54       	movd	$0x0:s,(r1,r0)
    37e0:	02 54       	movd	$0x0:s,(r3,r2)
    37e2:	0f e0       	stord	(r1,r0),0x0:s(sp)
    37e4:	2f e2       	stord	(r3,r2),0x4:s(sp)
    37e6:	38 01       	push	$0x4,r8
    37e8:	00 c0 dc 5c 	bal	(ra),*+0x94c4 <___ltdf2>:m
    37ec:	bf 60 10 00 	addd	$0x10:m,(sp)
    37f0:	00 52       	cmpw	$0x0:s,r0
    37f2:	60 18 60 08 	bgt	*+0x4052 <.L335>:m

000037f6 <.L47>:
    37f6:	1f c3 3e 00 	storw	$0x1:s,0x3e:m(sp)
    37fa:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    37fe:	b8 52 16 00 	cmpw	$0x16:m,r8
    3802:	aa 11       	blo	*+0x3836 <.L50>:s
    3804:	82 5e       	movxw	r8,(r3,r2)
    3806:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    380a:	32 4c       	ashud	$3:s,(r3,r2)
    380c:	20 61       	addd	(r3,r2),(r1,r0)
    380e:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    3810:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    3812:	4f aa       	loadd	0x14:s(sp),(r5,r4)
    3814:	6f ac       	loadd	0x18:s(sp),(r7,r6)
    3816:	34 01       	push	$0x4,r4
    3818:	30 01       	push	$0x4,r0
    381a:	00 c0 c2 5b 	bal	(ra),*+0x93dc <___gtdf2>:m
    381e:	bf 60 10 00 	addd	$0x10:m,(sp)
    3822:	00 52       	cmpw	$0x0:s,r0
    3824:	d0 18 62 08 	bge	*+0x4086 <.L315>:m
    3828:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    382c:	97 32       	addw	$-1:s,r7
    382e:	7f df 2c 00 	storw	r7,0x2c:m(sp)
    3832:	0f c3 3e 00 	storw	$0x0:s,0x3e:m(sp)

00003836 <.L50>:
    3836:	0f 96       	loadw	0xc:s(sp),r0
    3838:	8f 92       	loadw	0x4:s(sp),r8
    383a:	80 3b       	subw	r8,r0
    383c:	90 32       	addw	$-1:s,r0
    383e:	00 52       	cmpw	$0x0:s,r0
    3840:	60 18 00 08 	bgt	*+0x4040 <.L336>:m
    3844:	0f df 38 00 	storw	r0,0x38:m(sp)
    3848:	0f c3 3c 00 	storw	$0x0:s,0x3c:m(sp)

0000384c <.L52>:
    384c:	af 9f 2c 00 	loadw	0x2c:m(sp),r10
    3850:	0a 52       	cmpw	$0x0:s,r10
    3852:	60 18 ce 07 	bgt	*+0x4020 <.L53>:m
    3856:	bf 9f 38 00 	loadw	0x38:m(sp),r11
    385a:	ab 33       	addw	r10,r11
    385c:	bf df 38 00 	storw	r11,0x38:m(sp)
    3860:	af df 48 00 	storw	r10,0x48:m(sp)
    3864:	0f c3 46 00 	storw	$0x0:s,0x46:m(sp)

00003868 <.L54>:
    3868:	af 9f 1c 00 	loadw	0x1c:m(sp),r10
    386c:	ba 52 09 00 	cmpw	$0x9:m,r10
    3870:	aa 14       	blo	*+0x3904 <.L170>:s
    3872:	10 58       	movb	$0x1:s,r0
    3874:	5a 52       	cmpw	$0x5:s,r10
    3876:	d6 10       	bge	*+0x3882 <.L56>:s
    3878:	ba 32 fc ff 	addw	$0xfffc:m,r10
    387c:	af df 1c 00 	storw	r10,0x1c:m(sp)
    3880:	00 58       	movb	$0x0:s,r0

00003882 <.L56>:
    3882:	bf 9f 1c 00 	loadw	0x1c:m(sp),r11
    3886:	3b 52       	cmpw	$0x3:s,r11
    3888:	00 18 94 0e 	beq	*+0x471c <.L173>:m
    388c:	3b 52       	cmpw	$0x3:s,r11
    388e:	d0 18 66 08 	bge	*+0x40f4 <.L337>:m
    3892:	7f 9f 1c 00 	loadw	0x1c:m(sp),r7
    3896:	47 52       	cmpw	$0x4:s,r7
    3898:	00 18 7c 0e 	beq	*+0x4714 <.L59>:m
    389c:	57 52       	cmpw	$0x5:s,r7
    389e:	15 13       	bne	*+0x3908 <.L55>:s
    38a0:	1f c3 4a 00 	storw	$0x1:s,0x4a:m(sp)

000038a4 <.L58>:
    38a4:	9f 9f 2e 00 	loadw	0x2e:m(sp),r9
    38a8:	af 9f 2c 00 	loadw	0x2c:m(sp),r10
    38ac:	a9 33       	addw	r10,r9
    38ae:	9f df 44 00 	storw	r9,0x44:m(sp)
    38b2:	91 5b       	movw	r9,r1
    38b4:	11 32       	addw	$0x1:s,r1
    38b6:	01 52       	cmpw	$0x0:s,r1
    38b8:	d0 18 8a 0e 	bge	*+0x4742 <.L338>:m
    38bc:	12 5e       	movxw	r1,(r3,r2)
    38be:	e1 52       	cmpw	$0xe:s,r1
    38c0:	b7 08       	shs	r7
    38c2:	07 21       	andb	r0,r7
    38c4:	1f df 40 00 	storw	r1,0x40:m(sp)
    38c8:	e0 18 50 08 	br	*+0x4118 <.L63>:m

000038cc <.L333>:
    38cc:	90 55       	movd	(r10,r9),(r1,r0)
    38ce:	80 60       	addd	$0x8:s,(r1,r0)
    38d0:	e0 18 ff fd 	br	*-0x36ce <.L40>:m

000038d4 <.L334>:
    38d4:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    38d6:	af a4       	loadd	0x8:s(sp),(r11,r10)
    38d8:	a2 55       	movd	(r11,r10),(r3,r2)
    38da:	42 00 0f 00 	andd	$0xfffff:l,(r3,r2)
    38de:	ff ff 
    38e0:	2a 55       	movd	(r3,r2),(r11,r10)
    38e2:	5a 00 f0 3f 	ord	$0x3ff00000:l,(r11,r10)
    38e6:	00 00 
    38e8:	b7 32 01 fc 	addw	$0xfc01:m,r7
    38ec:	7f d2       	storw	r7,0x4:s(sp)
    38ee:	7f 91       	loadw	0x2:s(sp),r7
    38f0:	7f d6       	storw	r7,0xc:s(sp)
    38f2:	0f c3 54 00 	storw	$0x0:s,0x54:m(sp)
    38f6:	e0 18 67 fe 	br	*-0x375c <.L44>:m

000038fa <.L166>:
    38fa:	a0 05 fa 9e 	movd	$0x9efa:m,(r11,r10)
    38fe:	af e2       	stord	(r11,r10),0x4:s(sp)
    3900:	e0 18 81 fd 	br	*-0x3680 <.L243>:m

00003904 <.L170>:
    3904:	0f c3 1c 00 	storw	$0x0:s,0x1c:m(sp)

00003908 <.L55>:
    3908:	07 58       	movb	$0x0:s,r7
    390a:	b2 54 12 00 	movd	$0x12:m,(r3,r2)
    390e:	1f c3 4a 00 	storw	$0x1:s,0x4a:m(sp)
    3912:	99 5a       	movw	$-1:s,r9
    3914:	9f df 44 00 	storw	r9,0x44:m(sp)
    3918:	9f df 40 00 	storw	r9,0x40:m(sp)
    391c:	0f c3 2e 00 	storw	$0x0:s,0x2e:m(sp)

00003920 <.L163>:
    3920:	16 5a       	movw	$0x1:s,r6
    3922:	45 5a       	movw	$0x4:s,r5

00003924 <.L66>:
    3924:	64 5b       	movw	r6,r4
    3926:	55 33       	addw	r5,r5
    3928:	16 32       	addw	$0x1:s,r6
    392a:	50 5e       	movxw	r5,(r1,r0)
    392c:	c0 60       	addd	$0xc:s,(r1,r0)
    392e:	20 57       	cmpd	(r3,r2),(r1,r0)
    3930:	ba 1f       	bhs	*-0x3924 <.L66>:s
    3932:	4d df 40 00 	storw	r4,0x40:m(r13)

00003936 <.L65>:
    3936:	d2 55       	movd	(r13),(r3,r2)
    3938:	00 c0 cc 22 	bal	(ra),*+0x5c04 <__Balloc>:m

0000393c <.LVL156>:
    393c:	0f e2       	stord	(r1,r0),0x4:s(sp)
    393e:	0d ef 3c 00 	stord	(r1,r0),0x3c:m(r13)
    3942:	07 50       	cmpb	$0x0:s,r7
    3944:	00 18 c4 02 	beq	*+0x3c08 <.L67>:m
    3948:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    394c:	07 52       	cmpw	$0x0:s,r7
    394e:	d0 18 50 09 	bge	*+0x429e <.L68>:m
    3952:	72 5b       	movw	r7,r2
    3954:	f2 22       	andw	$0xf:s,r2
    3956:	22 5e       	movxw	r2,(r3,r2)
    3958:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    395c:	32 4c       	ashud	$3:s,(r3,r2)
    395e:	20 61       	addd	(r3,r2),(r1,r0)
    3960:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    3962:	a0 a2       	loadd	0x4:s(r1,r0),(r11,r10)
    3964:	c7 43       	ashuw	$-4:s,r7
    3966:	70 5b       	movw	r7,r0
    3968:	b0 22 10 00 	andw	$0x10:m,r0
    396c:	00 52       	cmpw	$0x0:s,r0
    396e:	00 18 72 07 	beq	*+0x40e0 <.L176>:m
    3972:	f7 22       	andw	$0xf:s,r7
    3974:	12 00 00 b0 	loadd	0xa0e0 <___mprec_bigtens+0x20>:l,(r1,r0)
    3978:	e0 a0 
    397a:	12 00 20 b0 	loadd	0xa0e4 <___mprec_bigtens+0x24>:l,(r3,r2)
    397e:	e4 a0 
    3980:	30 01       	push	$0x4,r0
    3982:	0f af 1c 00 	loadd	0x1c:m(sp),(r1,r0)
    3986:	2f af 20 00 	loadd	0x20:m(sp),(r3,r2)
    398a:	30 01       	push	$0x4,r0
    398c:	00 c0 48 57 	bal	(ra),*+0x90d4 <___divdf3>:m
    3990:	bf 60 10 00 	addd	$0x10:m,(sp)
    3994:	0f ef 4c 00 	stord	(r1,r0),0x4c:m(sp)
    3998:	2f ef 50 00 	stord	(r3,r2),0x50:m(sp)
    399c:	3f c3 28 00 	storw	$0x3:s,0x28:m(sp)

000039a0 <.L69>:
    39a0:	07 52       	cmpw	$0x0:s,r7
    39a2:	04 12       	beq	*+0x39ea <.L70>:s
    39a4:	0f c3 0c 00 	storw	$0x0:s,0xc:m(sp)
    39a8:	c0 05 c0 a0 	movd	$0xa0c0:m,(r12)
    39ac:	80 55       	movd	(r9,r8),(r1,r0)
    39ae:	a2 55       	movd	(r11,r10),(r3,r2)

000039b0 <.L72>:
    39b0:	74 5b       	movw	r7,r4
    39b2:	14 22       	andw	$0x1:s,r4
    39b4:	04 52       	cmpw	$0x0:s,r4
    39b6:	02 11       	beq	*+0x39da <.L71>:s
    39b8:	8f 9f 28 00 	loadw	0x28:m(sp),r8
    39bc:	18 32       	addw	$0x1:s,r8
    39be:	8f df 28 00 	storw	r8,0x28:m(sp)
    39c2:	9f 96       	loadw	0xc:s(sp),r9
    39c4:	94 5e       	movxw	r9,(r5,r4)
    39c6:	34 4c       	ashud	$3:s,(r5,r4)
    39c8:	c4 61       	addd	(r12),(r5,r4)
    39ca:	84 a0       	loadd	0x0:s(r5,r4),(r9,r8)
    39cc:	a4 a2       	loadd	0x4:s(r5,r4),(r11,r10)
    39ce:	38 01       	push	$0x4,r8
    39d0:	30 01       	push	$0x4,r0
    39d2:	00 c0 be 52 	bal	(ra),*+0x8c90 <___muldf3>:m
    39d6:	bf 60 10 00 	addd	$0x10:m,(sp)

000039da <.L71>:
    39da:	f7 43       	ashuw	$-1:s,r7
    39dc:	af 96       	loadw	0xc:s(sp),r10
    39de:	1a 32       	addw	$0x1:s,r10
    39e0:	af d6       	storw	r10,0xc:s(sp)
    39e2:	07 52       	cmpw	$0x0:s,r7
    39e4:	16 1e       	bne	*-0x39b0 <.L72>:s
    39e6:	08 55       	movd	(r1,r0),(r9,r8)
    39e8:	2a 55       	movd	(r3,r2),(r11,r10)

000039ea <.L70>:
    39ea:	38 01       	push	$0x4,r8
    39ec:	0f af 54 00 	loadd	0x54:m(sp),(r1,r0)
    39f0:	2f af 58 00 	loadd	0x58:m(sp),(r3,r2)
    39f4:	30 01       	push	$0x4,r0
    39f6:	00 c0 de 56 	bal	(ra),*+0x90d4 <___divdf3>:m
    39fa:	bf 60 10 00 	addd	$0x10:m,(sp)
    39fe:	08 55       	movd	(r1,r0),(r9,r8)
    3a00:	2a 55       	movd	(r3,r2),(r11,r10)

00003a02 <.L73>:
    3a02:	7f 9f 3e 00 	loadw	0x3e:m(sp),r7
    3a06:	07 52       	cmpw	$0x0:s,r7
    3a08:	0e 10       	beq	*+0x3a24 <.L76>:s
    3a0a:	00 54       	movd	$0x0:s,(r1,r0)
    3a0c:	72 00 f0 3f 	movd	$0x3ff00000:l,(r3,r2)
    3a10:	00 00 
    3a12:	30 01       	push	$0x4,r0
    3a14:	38 01       	push	$0x4,r8
    3a16:	00 c0 ae 5a 	bal	(ra),*+0x94c4 <___ltdf2>:m
    3a1a:	bf 60 10 00 	addd	$0x10:m,(sp)
    3a1e:	00 52       	cmpw	$0x0:s,r0
    3a20:	60 18 5e 0d 	bgt	*+0x477e <.L339>:m

00003a24 <.L76>:
    3a24:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    3a28:	72 5e       	movxw	r7,(r3,r2)
    3a2a:	00 c0 0e 5b 	bal	(ra),*+0x9538 <___floatsidf>:m
    3a2e:	38 01       	push	$0x4,r8
    3a30:	30 01       	push	$0x4,r0
    3a32:	00 c0 5e 52 	bal	(ra),*+0x8c90 <___muldf3>:m
    3a36:	bf 60 10 00 	addd	$0x10:m,(sp)
    3a3a:	04 54       	movd	$0x0:s,(r5,r4)
    3a3c:	76 00 1c 40 	movd	$0x401c0000:l,(r7,r6)
    3a40:	00 00 
    3a42:	34 01       	push	$0x4,r4
    3a44:	30 01       	push	$0x4,r0
    3a46:	00 c0 66 51 	bal	(ra),*+0x8bac <___adddf3>:m
    3a4a:	bf 60 10 00 	addd	$0x10:m,(sp)
    3a4e:	0f e6       	stord	(r1,r0),0xc:s(sp)
    3a50:	2f e8       	stord	(r3,r2),0x10:s(sp)
    3a52:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    3a54:	20 00 c0 fc 	addd	$0xfcc00000:l,(r1,r0)
    3a58:	00 00 
    3a5a:	0f e8       	stord	(r1,r0),0x10:s(sp)
    3a5c:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    3a60:	07 52       	cmpw	$0x0:s,r7
    3a62:	00 18 fe 06 	beq	*+0x4160 <.L160>:m
    3a66:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    3a6a:	7f df 4c 00 	storw	r7,0x4c:m(sp)
    3a6e:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    3a72:	7f df 28 00 	storw	r7,0x28:m(sp)

00003a76 <.L80>:
    3a76:	7f 9f 4a 00 	loadw	0x4a:m(sp),r7
    3a7a:	2f 9f 28 00 	loadw	0x28:m(sp),r2
    3a7e:	92 32       	addw	$-1:s,r2
    3a80:	22 5e       	movxw	r2,(r3,r2)
    3a82:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    3a86:	32 4c       	ashud	$3:s,(r3,r2)
    3a88:	20 61       	addd	(r3,r2),(r1,r0)
    3a8a:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    3a8c:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    3a8e:	07 52       	cmpw	$0x0:s,r7
    3a90:	00 18 a2 08 	beq	*+0x4332 <.L83>:m
    3a94:	30 01       	push	$0x4,r0
    3a96:	00 54       	movd	$0x0:s,(r1,r0)
    3a98:	72 00 e0 3f 	movd	$0x3fe00000:l,(r3,r2)
    3a9c:	00 00 
    3a9e:	30 01       	push	$0x4,r0
    3aa0:	00 c0 34 56 	bal	(ra),*+0x90d4 <___divdf3>:m
    3aa4:	bf 60 10 00 	addd	$0x10:m,(sp)
    3aa8:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    3aaa:	6f a8       	loadd	0x10:s(sp),(r7,r6)
    3aac:	34 01       	push	$0x4,r4
    3aae:	30 01       	push	$0x4,r0
    3ab0:	00 c0 6c 51 	bal	(ra),*+0x8c1c <___subdf3>:m
    3ab4:	bf 60 10 00 	addd	$0x10:m,(sp)
    3ab8:	0f e6       	stord	(r1,r0),0xc:s(sp)
    3aba:	2f e8       	stord	(r3,r2),0x10:s(sp)
    3abc:	38 01       	push	$0x4,r8
    3abe:	00 c0 0e 5b 	bal	(ra),*+0x95cc <___fixdfsi>:m
    3ac2:	8f 60       	addd	$0x8:s,(sp)
    3ac4:	07 5b       	movw	r0,r7
    3ac6:	02 5b       	movw	r0,r2
    3ac8:	13 5b       	movw	r1,r3
    3aca:	00 c0 6e 5a 	bal	(ra),*+0x9538 <___floatsidf>:m
    3ace:	30 01       	push	$0x4,r0
    3ad0:	38 01       	push	$0x4,r8
    3ad2:	00 c0 4a 51 	bal	(ra),*+0x8c1c <___subdf3>:m
    3ad6:	bf 60 10 00 	addd	$0x10:m,(sp)
    3ada:	08 55       	movd	(r1,r0),(r9,r8)
    3adc:	2a 55       	movd	(r3,r2),(r11,r10)
    3ade:	b5 58 30 00 	movb	$0x30:m,r5
    3ae2:	57 31       	addb	r5,r7
    3ae4:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    3ae6:	70 f0       	storb	r7,0x0:s(r1,r0)
    3ae8:	0c 55       	movd	(r1,r0),(r12)
    3aea:	1c 60       	addd	$0x1:s,(r12)
    3aec:	38 01       	push	$0x4,r8
    3aee:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    3af0:	4f ac       	loadd	0x18:s(sp),(r5,r4)
    3af2:	32 01       	push	$0x4,r2
    3af4:	00 c0 e8 58 	bal	(ra),*+0x93dc <___gtdf2>:m
    3af8:	bf 60 10 00 	addd	$0x10:m,(sp)
    3afc:	00 52       	cmpw	$0x0:s,r0
    3afe:	c0 18 a6 0e 	blt	*+0x49a4 <.L182>:m
    3b02:	38 01       	push	$0x4,r8
    3b04:	00 54       	movd	$0x0:s,(r1,r0)
    3b06:	72 00 f0 3f 	movd	$0x3ff00000:l,(r3,r2)
    3b0a:	00 00 
    3b0c:	30 01       	push	$0x4,r0
    3b0e:	00 c0 0e 51 	bal	(ra),*+0x8c1c <___subdf3>:m
    3b12:	bf 60 10 00 	addd	$0x10:m,(sp)
    3b16:	30 01       	push	$0x4,r0
    3b18:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    3b1a:	4f ac       	loadd	0x18:s(sp),(r5,r4)
    3b1c:	32 01       	push	$0x4,r2
    3b1e:	00 c0 be 58 	bal	(ra),*+0x93dc <___gtdf2>:m
    3b22:	bf 60 10 00 	addd	$0x10:m,(sp)
    3b26:	00 52       	cmpw	$0x0:s,r0
    3b28:	c0 18 76 0e 	blt	*+0x499e <.L340>:m
    3b2c:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    3b30:	17 52       	cmpw	$0x1:s,r7
    3b32:	db 16       	bge	*+0x3c08 <.L67>:s
    3b34:	70 5b       	movw	r7,r0
    3b36:	b0 32 fe ff 	addw	$0xfffe:m,r0
    3b3a:	01 5f       	movzw	r0,(r2,r1)
    3b3c:	21 60       	addd	$0x2:s,(r2,r1)
    3b3e:	3f a2       	loadd	0x4:s(sp),(r4,r3)
    3b40:	13 61       	addd	(r2,r1),(r4,r3)
    3b42:	3f ef 28 00 	stord	(r4,r3),0x28:m(sp)
    3b46:	df ef 58 00 	stord	(r13),0x58:m(sp)
    3b4a:	3d 55       	movd	(r4,r3),(r13)
    3b4c:	e8 11       	br	*+0x3b7c <.L86>:s

00003b4e <.L318>:
    3b4e:	38 01       	push	$0x4,r8
    3b50:	04 54       	movd	$0x0:s,(r5,r4)
    3b52:	76 00 f0 3f 	movd	$0x3ff00000:l,(r7,r6)
    3b56:	00 00 
    3b58:	34 01       	push	$0x4,r4
    3b5a:	00 c0 c2 50 	bal	(ra),*+0x8c1c <___subdf3>:m
    3b5e:	bf 60 10 00 	addd	$0x10:m,(sp)
    3b62:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    3b64:	6f a8       	loadd	0x10:s(sp),(r7,r6)
    3b66:	34 01       	push	$0x4,r4
    3b68:	30 01       	push	$0x4,r0
    3b6a:	00 c0 5a 59 	bal	(ra),*+0x94c4 <___ltdf2>:m
    3b6e:	bf 60 10 00 	addd	$0x10:m,(sp)
    3b72:	00 52       	cmpw	$0x0:s,r0
    3b74:	60 18 02 0d 	bgt	*+0x4876 <.L341>:m
    3b78:	dc 57       	cmpd	(r13),(r12)
    3b7a:	05 14       	beq	*+0x3c04 <.L324>:s

00003b7c <.L86>:
    3b7c:	00 54       	movd	$0x0:s,(r1,r0)
    3b7e:	72 00 24 40 	movd	$0x40240000:l,(r3,r2)
    3b82:	00 00 
    3b84:	30 01       	push	$0x4,r0
    3b86:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    3b88:	4f ac       	loadd	0x18:s(sp),(r5,r4)
    3b8a:	32 01       	push	$0x4,r2
    3b8c:	00 c0 04 51 	bal	(ra),*+0x8c90 <___muldf3>:m
    3b90:	bf 60 10 00 	addd	$0x10:m,(sp)
    3b94:	0f e6       	stord	(r1,r0),0xc:s(sp)
    3b96:	2f e8       	stord	(r3,r2),0x10:s(sp)
    3b98:	04 54       	movd	$0x0:s,(r5,r4)
    3b9a:	76 00 24 40 	movd	$0x40240000:l,(r7,r6)
    3b9e:	00 00 
    3ba0:	34 01       	push	$0x4,r4
    3ba2:	38 01       	push	$0x4,r8
    3ba4:	00 c0 ec 50 	bal	(ra),*+0x8c90 <___muldf3>:m
    3ba8:	bf 60 10 00 	addd	$0x10:m,(sp)
    3bac:	08 55       	movd	(r1,r0),(r9,r8)
    3bae:	2a 55       	movd	(r3,r2),(r11,r10)
    3bb0:	30 01       	push	$0x4,r0
    3bb2:	00 c0 1a 5a 	bal	(ra),*+0x95cc <___fixdfsi>:m
    3bb6:	8f 60       	addd	$0x8:s,(sp)
    3bb8:	07 5b       	movw	r0,r7
    3bba:	02 5b       	movw	r0,r2
    3bbc:	13 5b       	movw	r1,r3
    3bbe:	00 c0 7a 59 	bal	(ra),*+0x9538 <___floatsidf>:m
    3bc2:	30 01       	push	$0x4,r0
    3bc4:	38 01       	push	$0x4,r8
    3bc6:	00 c0 56 50 	bal	(ra),*+0x8c1c <___subdf3>:m
    3bca:	bf 60 10 00 	addd	$0x10:m,(sp)
    3bce:	08 55       	movd	(r1,r0),(r9,r8)
    3bd0:	2a 55       	movd	(r3,r2),(r11,r10)
    3bd2:	b5 58 30 00 	movb	$0x30:m,r5
    3bd6:	75 31       	addb	r7,r5
    3bd8:	5f ff 28 00 	storb	r5,0x28:m(sp)
    3bdc:	5c f0       	storb	r5,0x0:s(r12)
    3bde:	1c 60       	addd	$0x1:s,(r12)
    3be0:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    3be2:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    3be4:	30 01       	push	$0x4,r0
    3be6:	38 01       	push	$0x4,r8
    3be8:	00 c0 dc 58 	bal	(ra),*+0x94c4 <___ltdf2>:m
    3bec:	bf 60 10 00 	addd	$0x10:m,(sp)
    3bf0:	00 52       	cmpw	$0x0:s,r0
    3bf2:	7e 1a       	ble	*-0x3b4e <.L318>:s
    3bf4:	df af 58 00 	loadd	0x58:m(sp),(r13)
    3bf8:	7f 9f 4c 00 	loadw	0x4c:m(sp),r7
    3bfc:	7f df 2c 00 	storw	r7,0x2c:m(sp)
    3c00:	e0 18 f0 03 	br	*+0x3ff0 <.L84>:m

00003c04 <.L324>:
    3c04:	df af 58 00 	loadd	0x58:m(sp),(r13)

00003c08 <.L67>:
    3c08:	0f 90       	loadw	0x0:s(sp),r0
    3c0a:	00 52       	cmpw	$0x0:s,r0
    3c0c:	60 18 14 02 	bgt	*+0x3e20 <.L95>:m
    3c10:	9f 9f 2c 00 	loadw	0x2c:m(sp),r9
    3c14:	e9 52       	cmpw	$0xe:s,r9
    3c16:	c0 18 0a 02 	blt	*+0x3e20 <.L95>:m
    3c1a:	92 5e       	movxw	r9,(r3,r2)
    3c1c:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    3c20:	32 4c       	ashud	$3:s,(r3,r2)
    3c22:	20 61       	addd	(r3,r2),(r1,r0)
    3c24:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    3c26:	a0 a2       	loadd	0x4:s(r1,r0),(r11,r10)
    3c28:	8f ef 1c 00 	stord	(r9,r8),0x1c:m(sp)
    3c2c:	af ef 20 00 	stord	(r11,r10),0x20:m(sp)
    3c30:	9f 9f 40 00 	loadw	0x40:m(sp),r9
    3c34:	09 52       	cmpw	$0x0:s,r9
    3c36:	d0 08       	sge	r0
    3c38:	00 52       	cmpw	$0x0:s,r0
    3c3a:	06 10       	beq	*+0x3c46 <.L209>:s
    3c3c:	af 9f 2e 00 	loadw	0x2e:m(sp),r10
    3c40:	0a 52       	cmpw	$0x0:s,r10
    3c42:	60 18 74 08 	bgt	*+0x44b6 <.L96>:m

00003c46 <.L209>:
    3c46:	8f aa       	loadd	0x14:s(sp),(r9,r8)
    3c48:	af ac       	loadd	0x18:s(sp),(r11,r10)
    3c4a:	0f af 1c 00 	loadd	0x1c:m(sp),(r1,r0)
    3c4e:	2f af 20 00 	loadd	0x20:m(sp),(r3,r2)
    3c52:	30 01       	push	$0x4,r0
    3c54:	38 01       	push	$0x4,r8
    3c56:	00 c0 7e 54 	bal	(ra),*+0x90d4 <___divdf3>:m
    3c5a:	bf 60 10 00 	addd	$0x10:m,(sp)
    3c5e:	30 01       	push	$0x4,r0
    3c60:	00 c0 6c 59 	bal	(ra),*+0x95cc <___fixdfsi>:m
    3c64:	8f 60       	addd	$0x8:s,(sp)
    3c66:	0f da       	storw	r0,0x14:s(sp)
    3c68:	1f db       	storw	r1,0x16:s(sp)
    3c6a:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    3c6c:	00 c0 cc 58 	bal	(ra),*+0x9538 <___floatsidf>:m
    3c70:	4f af 1c 00 	loadd	0x1c:m(sp),(r5,r4)
    3c74:	6f af 20 00 	loadd	0x20:m(sp),(r7,r6)
    3c78:	34 01       	push	$0x4,r4
    3c7a:	30 01       	push	$0x4,r0
    3c7c:	00 c0 14 50 	bal	(ra),*+0x8c90 <___muldf3>:m
    3c80:	bf 60 10 00 	addd	$0x10:m,(sp)
    3c84:	30 01       	push	$0x4,r0
    3c86:	38 01       	push	$0x4,r8
    3c88:	00 c0 94 4f 	bal	(ra),*+0x8c1c <___subdf3>:m
    3c8c:	bf 60 10 00 	addd	$0x10:m,(sp)
    3c90:	08 55       	movd	(r1,r0),(r9,r8)
    3c92:	2a 55       	movd	(r3,r2),(r11,r10)
    3c94:	b7 58 30 00 	movb	$0x30:m,r7
    3c98:	4f bf 14 00 	loadb	0x14:m(sp),r4
    3c9c:	74 31       	addb	r7,r4
    3c9e:	5f a2       	loadd	0x4:s(sp),(r6,r5)
    3ca0:	45 f0       	storb	r4,0x0:s(r6,r5)
    3ca2:	5c 55       	movd	(r6,r5),(r12)
    3ca4:	1c 60       	addd	$0x1:s,(r12)
    3ca6:	6f 9f 40 00 	loadw	0x40:m(sp),r6
    3caa:	16 52       	cmpw	$0x1:s,r6
    3cac:	0b 16       	beq	*+0x3d82 <.L98>:s
    3cae:	08 54       	movd	$0x0:s,(r9,r8)
    3cb0:	7a 00 24 40 	movd	$0x40240000:l,(r11,r10)
    3cb4:	00 00 
    3cb6:	38 01       	push	$0x4,r8
    3cb8:	30 01       	push	$0x4,r0
    3cba:	00 c0 d6 4f 	bal	(ra),*+0x8c90 <___muldf3>:m
    3cbe:	bf 60 10 00 	addd	$0x10:m,(sp)
    3cc2:	08 55       	movd	(r1,r0),(r9,r8)
    3cc4:	2a 55       	movd	(r3,r2),(r11,r10)
    3cc6:	00 54       	movd	$0x0:s,(r1,r0)
    3cc8:	02 54       	movd	$0x0:s,(r3,r2)
    3cca:	30 01       	push	$0x4,r0
    3ccc:	38 01       	push	$0x4,r8
    3cce:	00 c0 26 56 	bal	(ra),*+0x92f4 <___eqdf2>:m
    3cd2:	bf 60 10 00 	addd	$0x10:m,(sp)
    3cd6:	00 52       	cmpw	$0x0:s,r0
    3cd8:	00 18 18 03 	beq	*+0x3ff0 <.L84>:m
    3cdc:	0f 9f 40 00 	loadw	0x40:m(sp),r0
    3ce0:	b0 32 fe ff 	addw	$0xfffe:m,r0
    3ce4:	01 5f       	movzw	r0,(r2,r1)
    3ce6:	21 60       	addd	$0x2:s,(r2,r1)
    3ce8:	3f a2       	loadd	0x4:s(sp),(r4,r3)
    3cea:	13 61       	addd	(r2,r1),(r4,r3)
    3cec:	3f ea       	stord	(r4,r3),0x14:s(sp)
    3cee:	df e6       	stord	(r13),0xc:s(sp)
    3cf0:	e8 11       	br	*+0x3d20 <.L100>:s

00003cf2 <.L322>:
    3cf2:	04 54       	movd	$0x0:s,(r5,r4)
    3cf4:	76 00 24 40 	movd	$0x40240000:l,(r7,r6)
    3cf8:	00 00 
    3cfa:	34 01       	push	$0x4,r4
    3cfc:	30 01       	push	$0x4,r0
    3cfe:	00 c0 92 4f 	bal	(ra),*+0x8c90 <___muldf3>:m
    3d02:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d06:	08 55       	movd	(r1,r0),(r9,r8)
    3d08:	2a 55       	movd	(r3,r2),(r11,r10)
    3d0a:	00 54       	movd	$0x0:s,(r1,r0)
    3d0c:	02 54       	movd	$0x0:s,(r3,r2)
    3d0e:	30 01       	push	$0x4,r0
    3d10:	38 01       	push	$0x4,r8
    3d12:	00 c0 e2 55 	bal	(ra),*+0x92f4 <___eqdf2>:m
    3d16:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d1a:	00 52       	cmpw	$0x0:s,r0
    3d1c:	00 18 4c 0b 	beq	*+0x4868 <.L326>:m

00003d20 <.L100>:
    3d20:	2f af 1c 00 	loadd	0x1c:m(sp),(r3,r2)
    3d24:	4f af 20 00 	loadd	0x20:m(sp),(r5,r4)
    3d28:	32 01       	push	$0x4,r2
    3d2a:	38 01       	push	$0x4,r8
    3d2c:	00 c0 a8 53 	bal	(ra),*+0x90d4 <___divdf3>:m
    3d30:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d34:	30 01       	push	$0x4,r0
    3d36:	00 c0 96 58 	bal	(ra),*+0x95cc <___fixdfsi>:m
    3d3a:	8f 60       	addd	$0x8:s,(sp)
    3d3c:	03 5b       	movw	r0,r3
    3d3e:	14 5b       	movw	r1,r4
    3d40:	3d 55       	movd	(r4,r3),(r13)
    3d42:	d2 55       	movd	(r13),(r3,r2)
    3d44:	00 c0 f4 57 	bal	(ra),*+0x9538 <___floatsidf>:m
    3d48:	4f af 1c 00 	loadd	0x1c:m(sp),(r5,r4)
    3d4c:	6f af 20 00 	loadd	0x20:m(sp),(r7,r6)
    3d50:	34 01       	push	$0x4,r4
    3d52:	30 01       	push	$0x4,r0
    3d54:	00 c0 3c 4f 	bal	(ra),*+0x8c90 <___muldf3>:m
    3d58:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d5c:	30 01       	push	$0x4,r0
    3d5e:	38 01       	push	$0x4,r8
    3d60:	00 c0 bc 4e 	bal	(ra),*+0x8c1c <___subdf3>:m
    3d64:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d68:	08 55       	movd	(r1,r0),(r9,r8)
    3d6a:	2a 55       	movd	(r3,r2),(r11,r10)
    3d6c:	d5 55       	movd	(r13),(r6,r5)
    3d6e:	b7 58 30 00 	movb	$0x30:m,r7
    3d72:	75 31       	addb	r7,r5
    3d74:	5c f0       	storb	r5,0x0:s(r12)
    3d76:	1c 60       	addd	$0x1:s,(r12)
    3d78:	4f aa       	loadd	0x14:s(sp),(r5,r4)
    3d7a:	4c 57       	cmpd	(r5,r4),(r12)
    3d7c:	1b 1b       	bne	*-0x3cf2 <.L322>:s
    3d7e:	df ea       	stord	(r13),0x14:s(sp)
    3d80:	df a6       	loadd	0xc:s(sp),(r13)

00003d82 <.L98>:
    3d82:	38 01       	push	$0x4,r8
    3d84:	38 01       	push	$0x4,r8
    3d86:	00 c0 26 4e 	bal	(ra),*+0x8bac <___adddf3>:m
    3d8a:	bf 60 10 00 	addd	$0x10:m,(sp)
    3d8e:	08 55       	movd	(r1,r0),(r9,r8)
    3d90:	2a 55       	movd	(r3,r2),(r11,r10)
    3d92:	30 01       	push	$0x4,r0
    3d94:	4f af 24 00 	loadd	0x24:m(sp),(r5,r4)
    3d98:	6f af 28 00 	loadd	0x28:m(sp),(r7,r6)
    3d9c:	34 01       	push	$0x4,r4
    3d9e:	00 c0 26 57 	bal	(ra),*+0x94c4 <___ltdf2>:m
    3da2:	bf 60 10 00 	addd	$0x10:m,(sp)
    3da6:	00 52       	cmpw	$0x0:s,r0
    3da8:	65 11       	bgt	*+0x3dd2 <.L329>:s
    3daa:	38 01       	push	$0x4,r8
    3dac:	0f af 24 00 	loadd	0x24:m(sp),(r1,r0)
    3db0:	2f af 28 00 	loadd	0x28:m(sp),(r3,r2)
    3db4:	30 01       	push	$0x4,r0
    3db6:	00 c0 3e 55 	bal	(ra),*+0x92f4 <___eqdf2>:m
    3dba:	bf 60 10 00 	addd	$0x10:m,(sp)
    3dbe:	00 52       	cmpw	$0x0:s,r0
    3dc0:	10 18 30 02 	bne	*+0x3ff0 <.L84>:m
    3dc4:	0f aa       	loadd	0x14:s(sp),(r1,r0)
    3dc6:	40 00 00 00 	andd	$0x1:l,(r1,r0)
    3dca:	01 00 
    3dcc:	00 56       	cmpd	$0x0:s,(r1,r0)
    3dce:	00 18 22 02 	beq	*+0x3ff0 <.L84>:m

00003dd2 <.L329>:
    3dd2:	c0 55       	movd	(r12),(r1,r0)
    3dd4:	90 60       	addd	$-1:s,(r1,r0)
    3dd6:	70 b0       	loadb	0x0:s(r1,r0),r7
    3dd8:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    3ddc:	8f df 4c 00 	storw	r8,0x4c:m(sp)

00003de0 <.L85>:
    3de0:	c2 55       	movd	(r12),(r3,r2)
    3de2:	b2 60 fe ff 	addd	$0xfffe:m,(r3,r2)
    3de6:	78 59       	movb	r7,r8
    3de8:	6f a2       	loadd	0x4:s(sp),(r7,r6)
    3dea:	e4 10       	br	*+0x3df2 <.L105>:s

00003dec <.L343>:
    3dec:	82 b1       	loadb	0x1:s(r3,r2),r8
    3dee:	0c 55       	movd	(r1,r0),(r12)
    3df0:	90 60       	addd	$-1:s,(r1,r0)

00003df2 <.L105>:
    3df2:	04 55       	movd	(r1,r0),(r5,r4)
    3df4:	b8 50 39 00 	cmpb	$0x39:m,r8
    3df8:	10 18 8e 0a 	bne	*+0x4886 <.L342>:m
    3dfc:	92 60       	addd	$-1:s,(r3,r2)
    3dfe:	06 57       	cmpd	(r1,r0),(r7,r6)
    3e00:	16 1f       	bne	*-0x3dec <.L343>:s
    3e02:	9f 9f 4c 00 	loadw	0x4c:m(sp),r9
    3e06:	19 32       	addw	$0x1:s,r9
    3e08:	9f df 2c 00 	storw	r9,0x2c:m(sp)
    3e0c:	b0 58 30 00 	movb	$0x30:m,r0
    3e10:	af a2       	loadd	0x4:s(sp),(r11,r10)
    3e12:	0a f0       	storb	r0,0x0:s(r11,r10)
    3e14:	a4 55       	movd	(r11,r10),(r5,r4)
    3e16:	b7 58 31 00 	movb	$0x31:m,r7
    3e1a:	74 f0       	storb	r7,0x0:s(r5,r4)
    3e1c:	e0 18 d4 01 	br	*+0x3ff0 <.L84>:m

00003e20 <.L95>:
    3e20:	7f 9f 4a 00 	loadw	0x4a:m(sp),r7
    3e24:	07 52       	cmpw	$0x0:s,r7
    3e26:	10 18 68 02 	bne	*+0x408e <.L344>:m
    3e2a:	af 9f 46 00 	loadw	0x46:m(sp),r10
    3e2e:	9f 9f 3c 00 	loadw	0x3c:m(sp),r9
    3e32:	07 54       	movd	$0x0:s,(r8,r7)
    3e34:	7f ef 28 00 	stord	(r8,r7),0x28:m(sp)

00003e38 <.L109>:
    3e38:	8f 9f 38 00 	loadw	0x38:m(sp),r8
    3e3c:	08 52       	cmpw	$0x0:s,r8
    3e3e:	c0 08       	slt	r0
    3e40:	00 52       	cmpw	$0x0:s,r0
    3e42:	04 11       	beq	*+0x3e6a <.L115>:s
    3e44:	09 52       	cmpw	$0x0:s,r9
    3e46:	c0 08       	slt	r0
    3e48:	00 52       	cmpw	$0x0:s,r0
    3e4a:	00 11       	beq	*+0x3e6a <.L115>:s
    3e4c:	80 5b       	movw	r8,r0
    3e4e:	98 53       	cmpw	r9,r8
    3e50:	d2 10       	bge	*+0x3e54 <.L116>:s
    3e52:	90 5b       	movw	r9,r0

00003e54 <.L116>:
    3e54:	bf 9f 3c 00 	loadw	0x3c:m(sp),r11
    3e58:	0b 3b       	subw	r0,r11
    3e5a:	bf df 3c 00 	storw	r11,0x3c:m(sp)
    3e5e:	09 3b       	subw	r0,r9
    3e60:	7f 9f 38 00 	loadw	0x38:m(sp),r7
    3e64:	07 3b       	subw	r0,r7
    3e66:	7f df 38 00 	storw	r7,0x38:m(sp)

00003e6a <.L115>:
    3e6a:	8f 9f 46 00 	loadw	0x46:m(sp),r8
    3e6e:	08 52       	cmpw	$0x0:s,r8
    3e70:	da 12       	bge	*+0x3ec4 <.L117>:s
    3e72:	bf 9f 4a 00 	loadw	0x4a:m(sp),r11
    3e76:	0b 52       	cmpw	$0x0:s,r11
    3e78:	00 18 10 04 	beq	*+0x4288 <.L118>:m
    3e7c:	0a 52       	cmpw	$0x0:s,r10
    3e7e:	dd 11       	bge	*+0x3eb8 <.L119>:s
    3e80:	a6 5b       	movw	r10,r6
    3e82:	4f af 28 00 	loadd	0x28:m(sp),(r5,r4)
    3e86:	d2 55       	movd	(r13),(r3,r2)
    3e88:	00 c0 88 22 	bal	(ra),*+0x6110 <___pow5mult>:m

00003e8c <.LVL286>:
    3e8c:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    3e90:	7f af 30 00 	loadd	0x30:m(sp),(r8,r7)
    3e94:	17 01       	push	$0x2,r7
    3e96:	4f af 2c 00 	loadd	0x2c:m(sp),(r5,r4)
    3e9a:	d2 55       	movd	(r13),(r3,r2)
    3e9c:	00 c0 a0 20 	bal	(ra),*+0x5f3c <___multiply>:m

00003ea0 <.LVL289>:
    3ea0:	08 5b       	movw	r0,r8
    3ea2:	17 5b       	movw	r1,r7
    3ea4:	4f af 34 00 	loadd	0x34:m(sp),(r5,r4)
    3ea8:	d2 55       	movd	(r13),(r3,r2)
    3eaa:	00 c0 ca 1d 	bal	(ra),*+0x5c74 <__Bfree>:m

00003eae <.LVL291>:
    3eae:	4f 60       	addd	$0x4:s,(sp)
    3eb0:	8f df 30 00 	storw	r8,0x30:m(sp)
    3eb4:	7f df 32 00 	storw	r7,0x32:m(sp)

00003eb8 <.L119>:
    3eb8:	6f 9f 46 00 	loadw	0x46:m(sp),r6
    3ebc:	a6 3b       	subw	r10,r6
    3ebe:	06 52       	cmpw	$0x0:s,r6
    3ec0:	10 18 cc 03 	bne	*+0x428c <.L330>:m

00003ec4 <.L117>:
    3ec4:	14 5a       	movw	$0x1:s,r4
    3ec6:	d2 55       	movd	(r13),(r3,r2)
    3ec8:	00 c0 58 20 	bal	(ra),*+0x5f20 <___i2b>:m

00003ecc <.LVL296>:
    3ecc:	0a 55       	movd	(r1,r0),(r11,r10)
    3ece:	8f 9f 48 00 	loadw	0x48:m(sp),r8
    3ed2:	08 52       	cmpw	$0x0:s,r8
    3ed4:	d7 10       	bge	*+0x3ee2 <.L120>:s
    3ed6:	86 5b       	movw	r8,r6
    3ed8:	04 55       	movd	(r1,r0),(r5,r4)
    3eda:	d2 55       	movd	(r13),(r3,r2)
    3edc:	00 c0 34 22 	bal	(ra),*+0x6110 <___pow5mult>:m

00003ee0 <.LVL298>:
    3ee0:	0a 55       	movd	(r1,r0),(r11,r10)

00003ee2 <.L120>:
    3ee2:	07 5a       	movw	$0x0:s,r7
    3ee4:	8f 9f 1c 00 	loadw	0x1c:m(sp),r8
    3ee8:	18 52       	cmpw	$0x1:s,r8
    3eea:	d0 18 12 06 	bge	*+0x44fc <.L345>:m

00003eee <.L121>:
    3eee:	10 5a       	movw	$0x1:s,r0
    3ef0:	8f 9f 48 00 	loadw	0x48:m(sp),r8
    3ef4:	08 52       	cmpw	$0x0:s,r8
    3ef6:	10 18 40 05 	bne	*+0x4436 <.L346>:m

00003efa <.L122>:
    3efa:	8f 9f 38 00 	loadw	0x38:m(sp),r8
    3efe:	80 33       	addw	r8,r0
    3f00:	b0 22 1f 00 	andw	$0x1f:m,r0
    3f04:	00 52       	cmpw	$0x0:s,r0
    3f06:	00 18 60 03 	beq	*+0x4266 <.L194>:m
    3f0a:	b1 5a 20 00 	movw	$0x20:m,r1
    3f0e:	01 3b       	subw	r0,r1
    3f10:	41 52       	cmpw	$0x4:s,r1
    3f12:	d0 18 aa 0a 	bge	*+0x49bc <.L124>:m
    3f16:	b1 5a 1c 00 	movw	$0x1c:m,r1
    3f1a:	01 3b       	subw	r0,r1
    3f1c:	10 5b       	movw	r1,r0

00003f1e <.L123>:
    3f1e:	8f 9f 3c 00 	loadw	0x3c:m(sp),r8
    3f22:	08 33       	addw	r0,r8
    3f24:	8f df 3c 00 	storw	r8,0x3c:m(sp)
    3f28:	09 33       	addw	r0,r9
    3f2a:	8f 9f 38 00 	loadw	0x38:m(sp),r8
    3f2e:	08 33       	addw	r0,r8
    3f30:	8f df 38 00 	storw	r8,0x38:m(sp)

00003f34 <.L125>:
    3f34:	8f 9f 3c 00 	loadw	0x3c:m(sp),r8
    3f38:	08 52       	cmpw	$0x0:s,r8
    3f3a:	d9 10       	bge	*+0x3f4c <.L126>:s
    3f3c:	86 5b       	movw	r8,r6
    3f3e:	4f af 30 00 	loadd	0x30:m(sp),(r5,r4)
    3f42:	d2 55       	movd	(r13),(r3,r2)
    3f44:	00 c0 8c 22 	bal	(ra),*+0x61d0 <___lshift>:m

00003f48 <.LVL309>:
    3f48:	0f ef 30 00 	stord	(r1,r0),0x30:m(sp)

00003f4c <.L126>:
    3f4c:	8f 9f 38 00 	loadw	0x38:m(sp),r8
    3f50:	08 52       	cmpw	$0x0:s,r8
    3f52:	d7 10       	bge	*+0x3f60 <.L127>:s
    3f54:	86 5b       	movw	r8,r6
    3f56:	a4 55       	movd	(r11,r10),(r5,r4)
    3f58:	d2 55       	movd	(r13),(r3,r2)
    3f5a:	00 c0 76 22 	bal	(ra),*+0x61d0 <___lshift>:m

00003f5e <.LVL312>:
    3f5e:	0a 55       	movd	(r1,r0),(r11,r10)

00003f60 <.L127>:
    3f60:	8f 9f 3e 00 	loadw	0x3e:m(sp),r8
    3f64:	08 52       	cmpw	$0x0:s,r8
    3f66:	10 18 ee 04 	bne	*+0x4454 <.L347>:m

00003f6a <.L128>:
    3f6a:	8f 9f 1c 00 	loadw	0x1c:m(sp),r8
    3f6e:	28 52       	cmpw	$0x2:s,r8
    3f70:	c0 08       	slt	r0
    3f72:	00 52       	cmpw	$0x0:s,r0
    3f74:	00 18 50 02 	beq	*+0x41c4 <.L133>:m
    3f78:	8f 9f 40 00 	loadw	0x40:m(sp),r8
    3f7c:	08 52       	cmpw	$0x0:s,r8
    3f7e:	d0 08       	sge	r0
    3f80:	00 52       	cmpw	$0x0:s,r0
    3f82:	00 18 42 02 	beq	*+0x41c4 <.L133>:m

00003f86 <.L130>:
    3f86:	8f 9f 40 00 	loadw	0x40:m(sp),r8
    3f8a:	08 52       	cmpw	$0x0:s,r8
    3f8c:	10 18 26 02 	bne	*+0x41b2 <.L82>:m
    3f90:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    3f94:	08 01       	push	$0x1,r8
    3f96:	56 5a       	movw	$0x5:s,r6
    3f98:	a4 55       	movd	(r11,r10),(r5,r4)
    3f9a:	d2 55       	movd	(r13),(r3,r2)
    3f9c:	00 c0 f4 1c 	bal	(ra),*+0x5c90 <___multadd>:m

00003fa0 <.LVL316>:
    3fa0:	0a 55       	movd	(r1,r0),(r11,r10)
    3fa2:	04 55       	movd	(r1,r0),(r5,r4)
    3fa4:	2f af 34 00 	loadd	0x34:m(sp),(r3,r2)
    3fa8:	00 c0 08 23 	bal	(ra),*+0x62b0 <___mcmp>:m

00003fac <.LVL318>:
    3fac:	4f 60       	addd	$0x4:s,(sp)
    3fae:	00 52       	cmpw	$0x0:s,r0
    3fb0:	d0 18 02 02 	bge	*+0x41b2 <.L82>:m

00003fb4 <.L81>:
    3fb4:	b0 58 31 00 	movb	$0x31:m,r0
    3fb8:	7f a2       	loadd	0x4:s(sp),(r8,r7)
    3fba:	07 f0       	storb	r0,0x0:s(r8,r7)
    3fbc:	7c 55       	movd	(r8,r7),(r12)
    3fbe:	1c 60       	addd	$0x1:s,(r12)
    3fc0:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    3fc4:	18 32       	addw	$0x1:s,r8
    3fc6:	8f df 2c 00 	storw	r8,0x2c:m(sp)
    3fca:	08 54       	movd	$0x0:s,(r9,r8)

00003fcc <.L134>:
    3fcc:	a4 55       	movd	(r11,r10),(r5,r4)
    3fce:	d2 55       	movd	(r13),(r3,r2)
    3fd0:	00 c0 a4 1c 	bal	(ra),*+0x5c74 <__Bfree>:m

00003fd4 <.LVL323>:
    3fd4:	af af 28 00 	loadd	0x28:m(sp),(r11,r10)
    3fd8:	0a 56       	cmpd	$0x0:s,(r11,r10)
    3fda:	0b 10       	beq	*+0x3ff0 <.L84>:s
    3fdc:	a8 57       	cmpd	(r11,r10),(r9,r8)
    3fde:	10 08       	sne	r0
    3fe0:	00 52       	cmpw	$0x0:s,r0
    3fe2:	10 18 8c 02 	bne	*+0x426e <.L348>:m

00003fe6 <.L159>:
    3fe6:	4f af 28 00 	loadd	0x28:m(sp),(r5,r4)
    3fea:	d2 55       	movd	(r13),(r3,r2)
    3fec:	00 c0 88 1c 	bal	(ra),*+0x5c74 <__Bfree>:m

00003ff0 <.L84>:
    3ff0:	4f af 30 00 	loadd	0x30:m(sp),(r5,r4)
    3ff4:	d2 55       	movd	(r13),(r3,r2)
    3ff6:	00 c0 7e 1c 	bal	(ra),*+0x5c74 <__Bfree>:m

00003ffa <.LVL326>:
    3ffa:	0c 82       	storb	$0x0:s,0x0:s(r12)
    3ffc:	0f 9f 2c 00 	loadw	0x2c:m(sp),r0
    4000:	10 32       	addw	$0x1:s,r0
    4002:	8f af 34 00 	loadd	0x34:m(sp),(r9,r8)
    4006:	08 d0       	storw	r0,0x0:s(r9,r8)
    4008:	9f af 24 00 	loadd	0x24:m(sp),(r10,r9)
    400c:	09 56       	cmpd	$0x0:s,(r10,r9)
    400e:	00 18 73 f6 	beq	*-0x3680 <.L243>:m
    4012:	c9 e0       	stord	(r12),0x0:s(r10,r9)
    4014:	0f 92       	loadw	0x4:s(sp),r0
    4016:	1f 93       	loadw	0x6:s(sp),r1
    4018:	bf 60 68 00 	addd	$0x68:m,(sp)
    401c:	67 02       	pop	$0x7,r7
    401e:	9d 03       	popret	$0x2,r13,RA

00004020 <.L53>:
    4020:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    4024:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    4028:	87 3b       	subw	r8,r7
    402a:	7f df 3c 00 	storw	r7,0x3c:m(sp)
    402e:	00 5a       	movw	$0x0:s,r0
    4030:	09 5b       	movw	r0,r9
    4032:	89 3b       	subw	r8,r9
    4034:	9f df 46 00 	storw	r9,0x46:m(sp)
    4038:	0f df 48 00 	storw	r0,0x48:m(sp)
    403c:	e0 18 2d f8 	br	*-0x3868 <.L54>:m

00004040 <.L336>:
    4040:	01 5a       	movw	$0x0:s,r1
    4042:	19 5b       	movw	r1,r9
    4044:	09 3b       	subw	r0,r9
    4046:	9f df 3c 00 	storw	r9,0x3c:m(sp)
    404a:	1f df 38 00 	storw	r1,0x38:m(sp)
    404e:	e0 18 ff f7 	br	*-0x384c <.L52>:m

00004052 <.L335>:
    4052:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    4056:	72 5e       	movxw	r7,(r3,r2)
    4058:	00 c0 e0 54 	bal	(ra),*+0x9538 <___floatsidf>:m
    405c:	38 01       	push	$0x4,r8
    405e:	30 01       	push	$0x4,r0
    4060:	00 c0 08 53 	bal	(ra),*+0x9368 <___nedf2>:m
    4064:	bf 60 10 00 	addd	$0x10:m,(sp)
    4068:	00 52       	cmpw	$0x0:s,r0
    406a:	10 08       	sne	r0
    406c:	07 3b       	subw	r0,r7
    406e:	7f df 2c 00 	storw	r7,0x2c:m(sp)
    4072:	e0 18 85 f7 	br	*-0x37f6 <.L47>:m

00004076 <.L45>:
    4076:	b0 5a ee fb 	movw	$0xfbee:m,r0
    407a:	7f 92       	loadw	0x4:s(sp),r7
    407c:	70 3b       	subw	r7,r0
    407e:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    4080:	02 48       	ashud	r0,(r3,r2)
    4082:	e0 18 c3 f6 	br	*-0x3744 <.L46>:m

00004086 <.L315>:
    4086:	0f c3 3e 00 	storw	$0x0:s,0x3e:m(sp)
    408a:	e0 18 ad f7 	br	*-0x3836 <.L50>:m

0000408e <.L344>:
    408e:	8f 9f 1c 00 	loadw	0x1c:m(sp),r8
    4092:	18 52       	cmpw	$0x1:s,r8
    4094:	d0 18 bc 07 	bge	*+0x4850 <.L349>:m
    4098:	0f 9f 40 00 	loadw	0x40:m(sp),r0
    409c:	90 32       	addw	$-1:s,r0
    409e:	af 9f 46 00 	loadw	0x46:m(sp),r10
    40a2:	0a 53       	cmpw	r0,r10
    40a4:	60 18 be 06 	bgt	*+0x4762 <.L113>:m
    40a8:	0a 3b       	subw	r0,r10

000040aa <.L114>:
    40aa:	8f 9f 40 00 	loadw	0x40:m(sp),r8
    40ae:	9f 9f 3c 00 	loadw	0x3c:m(sp),r9
    40b2:	08 52       	cmpw	$0x0:s,r8
    40b4:	60 18 ba 07 	bgt	*+0x486e <.L350>:m
    40b8:	0f 9f 40 00 	loadw	0x40:m(sp),r0

000040bc <.L112>:
    40bc:	bf 9f 3c 00 	loadw	0x3c:m(sp),r11
    40c0:	0b 33       	addw	r0,r11
    40c2:	bf df 3c 00 	storw	r11,0x3c:m(sp)
    40c6:	7f 9f 38 00 	loadw	0x38:m(sp),r7
    40ca:	07 33       	addw	r0,r7
    40cc:	7f df 38 00 	storw	r7,0x38:m(sp)
    40d0:	14 5a       	movw	$0x1:s,r4
    40d2:	d2 55       	movd	(r13),(r3,r2)
    40d4:	00 c0 4c 1e 	bal	(ra),*+0x5f20 <___i2b>:m

000040d8 <.LVL345>:
    40d8:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    40dc:	e0 18 5d fd 	br	*-0x3e38 <.L109>:m

000040e0 <.L176>:
    40e0:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    40e2:	4f ac       	loadd	0x18:s(sp),(r5,r4)
    40e4:	2f ef 4c 00 	stord	(r3,r2),0x4c:m(sp)
    40e8:	4f ef 50 00 	stord	(r5,r4),0x50:m(sp)
    40ec:	2f c3 28 00 	storw	$0x2:s,0x28:m(sp)
    40f0:	e0 18 b1 f8 	br	*-0x39a0 <.L69>:m

000040f4 <.L337>:
    40f4:	2b 52       	cmpw	$0x2:s,r11
    40f6:	10 18 13 f8 	bne	*-0x3908 <.L55>:m
    40fa:	0f c3 4a 00 	storw	$0x0:s,0x4a:m(sp)

000040fe <.L57>:
    40fe:	8f 9f 2e 00 	loadw	0x2e:m(sp),r8
    4102:	08 52       	cmpw	$0x0:s,r8
    4104:	d0 18 20 06 	bge	*+0x4724 <.L174>:m
    4108:	82 5e       	movxw	r8,(r3,r2)
    410a:	e8 52       	cmpw	$0xe:s,r8
    410c:	b7 08       	shs	r7
    410e:	07 21       	andb	r0,r7
    4110:	8f df 44 00 	storw	r8,0x44:m(sp)
    4114:	8f df 40 00 	storw	r8,0x40:m(sp)

00004118 <.L63>:
    4118:	0d c3 40 00 	storw	$0x0:s,0x40:m(r13)
    411c:	04 5a       	movw	$0x0:s,r4
    411e:	f2 56       	cmpd	$0xf:s,(r3,r2)
    4120:	a0 18 01 f8 	blo	*-0x3920 <.L163>:m
    4124:	e0 18 13 f8 	br	*-0x3936 <.L65>:m

00004128 <.L78>:
    4128:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    412c:	72 5e       	movxw	r7,(r3,r2)
    412e:	00 c0 0a 54 	bal	(ra),*+0x9538 <___floatsidf>:m
    4132:	38 01       	push	$0x4,r8
    4134:	30 01       	push	$0x4,r0
    4136:	00 c0 5a 4b 	bal	(ra),*+0x8c90 <___muldf3>:m
    413a:	bf 60 10 00 	addd	$0x10:m,(sp)
    413e:	04 54       	movd	$0x0:s,(r5,r4)
    4140:	76 00 1c 40 	movd	$0x401c0000:l,(r7,r6)
    4144:	00 00 
    4146:	34 01       	push	$0x4,r4
    4148:	30 01       	push	$0x4,r0
    414a:	00 c0 62 4a 	bal	(ra),*+0x8bac <___adddf3>:m
    414e:	bf 60 10 00 	addd	$0x10:m,(sp)
    4152:	0f e6       	stord	(r1,r0),0xc:s(sp)
    4154:	2f e8       	stord	(r3,r2),0x10:s(sp)
    4156:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    4158:	20 00 c0 fc 	addd	$0xfcc00000:l,(r1,r0)
    415c:	00 00 
    415e:	0f e8       	stord	(r1,r0),0x10:s(sp)

00004160 <.L160>:
    4160:	00 54       	movd	$0x0:s,(r1,r0)
    4162:	72 00 14 40 	movd	$0x40140000:l,(r3,r2)
    4166:	00 00 
    4168:	30 01       	push	$0x4,r0
    416a:	38 01       	push	$0x4,r8
    416c:	00 c0 b0 4a 	bal	(ra),*+0x8c1c <___subdf3>:m
    4170:	bf 60 10 00 	addd	$0x10:m,(sp)
    4174:	08 55       	movd	(r1,r0),(r9,r8)
    4176:	2a 55       	movd	(r3,r2),(r11,r10)
    4178:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    417a:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    417c:	30 01       	push	$0x4,r0
    417e:	38 01       	push	$0x4,r8
    4180:	00 c0 5c 52 	bal	(ra),*+0x93dc <___gtdf2>:m
    4184:	bf 60 10 00 	addd	$0x10:m,(sp)
    4188:	00 52       	cmpw	$0x0:s,r0
    418a:	c0 18 9e 01 	blt	*+0x4328 <.L180>:m
    418e:	0f 96       	loadw	0xc:s(sp),r0
    4190:	1f 97       	loadw	0xe:s(sp),r1
    4192:	2f 98       	loadw	0x10:s(sp),r2
    4194:	3f 99       	loadw	0x12:s(sp),r3
    4196:	b3 32 00 80 	addw	$0x8000:m,r3
    419a:	30 01       	push	$0x4,r0
    419c:	38 01       	push	$0x4,r8
    419e:	00 c0 26 53 	bal	(ra),*+0x94c4 <___ltdf2>:m
    41a2:	bf 60 10 00 	addd	$0x10:m,(sp)
    41a6:	00 52       	cmpw	$0x0:s,r0
    41a8:	70 18 61 fa 	ble	*-0x3c08 <.L67>:m

000041ac <.L185>:
    41ac:	0a 54       	movd	$0x0:s,(r11,r10)
    41ae:	af ef 28 00 	stord	(r11,r10),0x28:m(sp)

000041b2 <.L82>:
    41b2:	9f 9f 2e 00 	loadw	0x2e:m(sp),r9
    41b6:	99 2a       	xorw	$-1:s,r9
    41b8:	9f df 2c 00 	storw	r9,0x2c:m(sp)
    41bc:	cf a2       	loadd	0x4:s(sp),(r12)
    41be:	08 54       	movd	$0x0:s,(r9,r8)
    41c0:	e0 18 0d fe 	br	*-0x3fcc <.L134>:m

000041c4 <.L133>:
    41c4:	8f 9f 4a 00 	loadw	0x4a:m(sp),r8
    41c8:	08 52       	cmpw	$0x0:s,r8
    41ca:	10 18 aa 03 	bne	*+0x4574 <.L132>:m

000041ce <.L162>:
    41ce:	cf a2       	loadd	0x4:s(sp),(r12)
    41d0:	08 5a       	movw	$0x0:s,r8
    41d2:	9f 9f 40 00 	loadw	0x40:m(sp),r9
    41d6:	8f da       	storw	r8,0x14:s(sp)
    41d8:	d7 55       	movd	(r13),(r8,r7)
    41da:	ad 55       	movd	(r11,r10),(r13)
    41dc:	ca 55       	movd	(r12),(r11,r10)
    41de:	cf af 30 00 	loadd	0x30:m(sp),(r12)
    41e2:	ec 10       	br	*+0x41fa <.L135>:s

000041e4 <.L351>:
    41e4:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    41e8:	3f 9b       	loadw	0x16:s(sp),r3
    41ea:	03 01       	push	$0x1,r3
    41ec:	a6 5a       	movw	$0xa:s,r6
    41ee:	c4 55       	movd	(r12),(r5,r4)
    41f0:	72 55       	movd	(r8,r7),(r3,r2)
    41f2:	00 c0 9e 1a 	bal	(ra),*+0x5c90 <___multadd>:m

000041f6 <.LVL372>:
    41f6:	0c 55       	movd	(r1,r0),(r12)
    41f8:	4f 60       	addd	$0x4:s,(sp)

000041fa <.L135>:
    41fa:	d4 55       	movd	(r13),(r5,r4)
    41fc:	c2 55       	movd	(r12),(r3,r2)
    41fe:	ff c0 23 f2 	bal	(ra),*-0x3420 <_quorem>:m

00004202 <.LVL375>:
    4202:	b0 32 30 00 	addw	$0x30:m,r0
    4206:	0a f0       	storb	r0,0x0:s(r11,r10)
    4208:	1a 60       	addd	$0x1:s,(r11,r10)
    420a:	a1 5b       	movw	r10,r1
    420c:	2f 92       	loadw	0x4:s(sp),r2
    420e:	21 3b       	subw	r2,r1
    4210:	91 53       	cmpw	r9,r1
    4212:	69 1e       	bgt	*-0x41e4 <.L351>:s
    4214:	cf ef 30 00 	stord	(r12),0x30:m(sp)
    4218:	ac 55       	movd	(r11,r10),(r12)
    421a:	da 55       	movd	(r13),(r11,r10)
    421c:	7d 55       	movd	(r8,r7),(r13)
    421e:	07 5b       	movw	r0,r7
    4220:	08 54       	movd	$0x0:s,(r9,r8)

00004222 <.L149>:
    4222:	16 5a       	movw	$0x1:s,r6
    4224:	4f af 30 00 	loadd	0x30:m(sp),(r5,r4)
    4228:	d2 55       	movd	(r13),(r3,r2)
    422a:	00 c0 a6 1f 	bal	(ra),*+0x61d0 <___lshift>:m

0000422e <.LVL382>:
    422e:	0f ef 30 00 	stord	(r1,r0),0x30:m(sp)
    4232:	a4 55       	movd	(r11,r10),(r5,r4)
    4234:	02 55       	movd	(r1,r0),(r3,r2)
    4236:	00 c0 7a 20 	bal	(ra),*+0x62b0 <___mcmp>:m

0000423a <.LVL384>:
    423a:	00 52       	cmpw	$0x0:s,r0
    423c:	d0 18 5c 06 	bge	*+0x4898 <.L352>:m

00004240 <.L153>:
    4240:	c0 55       	movd	(r12),(r1,r0)
    4242:	90 60       	addd	$-1:s,(r1,r0)
    4244:	40 b0       	loadb	0x0:s(r1,r0),r4

00004246 <.L148>:
    4246:	c2 55       	movd	(r12),(r3,r2)
    4248:	b2 60 fe ff 	addd	$0xfffe:m,(r3,r2)
    424c:	6f a2       	loadd	0x4:s(sp),(r7,r6)

0000424e <.L156>:
    424e:	b4 50 39 00 	cmpb	$0x39:m,r4
    4252:	10 18 9e 06 	bne	*+0x48f0 <.L353>:m
    4256:	92 60       	addd	$-1:s,(r3,r2)
    4258:	06 57       	cmpd	(r1,r0),(r7,r6)
    425a:	00 18 f2 04 	beq	*+0x474c <.L155>:m
    425e:	42 b1       	loadb	0x1:s(r3,r2),r4
    4260:	0c 55       	movd	(r1,r0),(r12)
    4262:	90 60       	addd	$-1:s,(r1,r0)
    4264:	e5 1f       	br	*-0x424e <.L156>:s

00004266 <.L194>:
    4266:	b0 5a 1c 00 	movw	$0x1c:m,r0
    426a:	e0 18 b5 fc 	br	*-0x3f1e <.L123>:m

0000426e <.L348>:
    426e:	80 5b       	movw	r8,r0
    4270:	90 27       	orw	r9,r0
    4272:	00 52       	cmpw	$0x0:s,r0
    4274:	10 08       	sne	r0
    4276:	00 52       	cmpw	$0x0:s,r0
    4278:	00 18 6f fd 	beq	*-0x3fe6 <.L159>:m
    427c:	84 55       	movd	(r9,r8),(r5,r4)
    427e:	d2 55       	movd	(r13),(r3,r2)
    4280:	00 c0 f4 19 	bal	(ra),*+0x5c74 <__Bfree>:m

00004284 <.LVL393>:
    4284:	e0 18 63 fd 	br	*-0x3fe6 <.L159>:m

00004288 <.L118>:
    4288:	6f 9f 46 00 	loadw	0x46:m(sp),r6

0000428c <.L330>:
    428c:	4f af 30 00 	loadd	0x30:m(sp),(r5,r4)
    4290:	d2 55       	movd	(r13),(r3,r2)
    4292:	00 c0 7e 1e 	bal	(ra),*+0x6110 <___pow5mult>:m

00004296 <.LVL396>:
    4296:	0f ef 30 00 	stord	(r1,r0),0x30:m(sp)
    429a:	e0 18 2b fc 	br	*-0x3ec4 <.L117>:m

0000429e <.L68>:
    429e:	0c 5a       	movw	$0x0:s,r12
    42a0:	c7 5b       	movw	r12,r7
    42a2:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    42a6:	87 3b       	subw	r8,r7
    42a8:	c7 53       	cmpw	r12,r7
    42aa:	00 18 50 05 	beq	*+0x47fa <.L177>:m
    42ae:	72 5b       	movw	r7,r2
    42b0:	f2 22       	andw	$0xf:s,r2
    42b2:	22 5e       	movxw	r2,(r3,r2)
    42b4:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    42b8:	32 4c       	ashud	$3:s,(r3,r2)
    42ba:	20 61       	addd	(r3,r2),(r1,r0)
    42bc:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    42be:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    42c0:	30 01       	push	$0x4,r0
    42c2:	0f af 1c 00 	loadd	0x1c:m(sp),(r1,r0)
    42c6:	2f af 20 00 	loadd	0x20:m(sp),(r3,r2)
    42ca:	30 01       	push	$0x4,r0
    42cc:	00 c0 c4 49 	bal	(ra),*+0x8c90 <___muldf3>:m
    42d0:	bf 60 10 00 	addd	$0x10:m,(sp)
    42d4:	08 55       	movd	(r1,r0),(r9,r8)
    42d6:	2a 55       	movd	(r3,r2),(r11,r10)
    42d8:	c7 43       	ashuw	$-4:s,r7
    42da:	2f c3 28 00 	storw	$0x2:s,0x28:m(sp)
    42de:	c7 53       	cmpw	r12,r7
    42e0:	00 18 23 f7 	beq	*-0x3a02 <.L73>:m
    42e4:	cf d6       	storw	r12,0xc:s(sp)
    42e6:	c0 05 c0 a0 	movd	$0xa0c0:m,(r12)

000042ea <.L75>:
    42ea:	74 5b       	movw	r7,r4
    42ec:	14 22       	andw	$0x1:s,r4
    42ee:	04 52       	cmpw	$0x0:s,r4
    42f0:	02 11       	beq	*+0x4314 <.L74>:s
    42f2:	8f 9f 28 00 	loadw	0x28:m(sp),r8
    42f6:	18 32       	addw	$0x1:s,r8
    42f8:	8f df 28 00 	storw	r8,0x28:m(sp)
    42fc:	9f 96       	loadw	0xc:s(sp),r9
    42fe:	94 5e       	movxw	r9,(r5,r4)
    4300:	34 4c       	ashud	$3:s,(r5,r4)
    4302:	c4 61       	addd	(r12),(r5,r4)
    4304:	84 a0       	loadd	0x0:s(r5,r4),(r9,r8)
    4306:	a4 a2       	loadd	0x4:s(r5,r4),(r11,r10)
    4308:	38 01       	push	$0x4,r8
    430a:	30 01       	push	$0x4,r0
    430c:	00 c0 84 49 	bal	(ra),*+0x8c90 <___muldf3>:m
    4310:	bf 60 10 00 	addd	$0x10:m,(sp)

00004314 <.L74>:
    4314:	f7 43       	ashuw	$-1:s,r7
    4316:	af 96       	loadw	0xc:s(sp),r10
    4318:	1a 32       	addw	$0x1:s,r10
    431a:	af d6       	storw	r10,0xc:s(sp)
    431c:	07 52       	cmpw	$0x0:s,r7
    431e:	16 1e       	bne	*-0x42ea <.L75>:s
    4320:	08 55       	movd	(r1,r0),(r9,r8)
    4322:	2a 55       	movd	(r3,r2),(r11,r10)
    4324:	e0 18 df f6 	br	*-0x3a02 <.L73>:m

00004328 <.L180>:
    4328:	0a 54       	movd	$0x0:s,(r11,r10)
    432a:	af ef 28 00 	stord	(r11,r10),0x28:m(sp)
    432e:	e0 18 87 fc 	br	*-0x3fb4 <.L81>:m

00004332 <.L83>:
    4332:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    4334:	6f a8       	loadd	0x10:s(sp),(r7,r6)
    4336:	34 01       	push	$0x4,r4
    4338:	30 01       	push	$0x4,r0
    433a:	00 c0 56 49 	bal	(ra),*+0x8c90 <___muldf3>:m
    433e:	bf 60 10 00 	addd	$0x10:m,(sp)
    4342:	0f ef 5c 00 	stord	(r1,r0),0x5c:m(sp)
    4346:	2f ef 60 00 	stord	(r3,r2),0x60:m(sp)
    434a:	38 01       	push	$0x4,r8
    434c:	00 c0 80 52 	bal	(ra),*+0x95cc <___fixdfsi>:m
    4350:	8f 60       	addd	$0x8:s,(sp)
    4352:	07 5b       	movw	r0,r7
    4354:	02 5b       	movw	r0,r2
    4356:	13 5b       	movw	r1,r3
    4358:	00 c0 e0 51 	bal	(ra),*+0x9538 <___floatsidf>:m
    435c:	30 01       	push	$0x4,r0
    435e:	38 01       	push	$0x4,r8
    4360:	00 c0 bc 48 	bal	(ra),*+0x8c1c <___subdf3>:m
    4364:	bf 60 10 00 	addd	$0x10:m,(sp)
    4368:	08 55       	movd	(r1,r0),(r9,r8)
    436a:	2a 55       	movd	(r3,r2),(r11,r10)
    436c:	b0 58 30 00 	movb	$0x30:m,r0
    4370:	07 31       	addb	r0,r7
    4372:	5f a2       	loadd	0x4:s(sp),(r6,r5)
    4374:	75 f0       	storb	r7,0x0:s(r6,r5)
    4376:	5c 55       	movd	(r6,r5),(r12)
    4378:	1c 60       	addd	$0x1:s,(r12)
    437a:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    437e:	17 52       	cmpw	$0x1:s,r7
    4380:	0f 13       	beq	*+0x43fe <.L94>:s
    4382:	1f 9f 28 00 	loadw	0x28:m(sp),r1
    4386:	b1 32 fe ff 	addw	$0xfffe:m,r1
    438a:	12 5f       	movzw	r1,(r3,r2)
    438c:	2f ef 58 00 	stord	(r3,r2),0x58:m(sp)
    4390:	22 60       	addd	$0x2:s,(r3,r2)
    4392:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    4394:	24 61       	addd	(r3,r2),(r5,r4)
    4396:	4f ef 28 00 	stord	(r5,r4),0x28:m(sp)
    439a:	cf e6       	stord	(r12),0xc:s(sp)
    439c:	cf ef 64 00 	stord	(r12),0x64:m(sp)
    43a0:	80 55       	movd	(r9,r8),(r1,r0)
    43a2:	a2 55       	movd	(r11,r10),(r3,r2)
    43a4:	4c 55       	movd	(r5,r4),(r12)

000043a6 <.L93>:
    43a6:	06 54       	movd	$0x0:s,(r7,r6)
    43a8:	78 00 24 40 	movd	$0x40240000:l,(r9,r8)
    43ac:	00 00 
    43ae:	36 01       	push	$0x4,r6
    43b0:	30 01       	push	$0x4,r0
    43b2:	00 c0 de 48 	bal	(ra),*+0x8c90 <___muldf3>:m
    43b6:	bf 60 10 00 	addd	$0x10:m,(sp)
    43ba:	08 55       	movd	(r1,r0),(r9,r8)
    43bc:	2a 55       	movd	(r3,r2),(r11,r10)
    43be:	30 01       	push	$0x4,r0
    43c0:	00 c0 0c 52 	bal	(ra),*+0x95cc <___fixdfsi>:m
    43c4:	8f 60       	addd	$0x8:s,(sp)
    43c6:	07 5b       	movw	r0,r7
    43c8:	02 5b       	movw	r0,r2
    43ca:	13 5b       	movw	r1,r3
    43cc:	00 c0 6c 51 	bal	(ra),*+0x9538 <___floatsidf>:m
    43d0:	30 01       	push	$0x4,r0
    43d2:	38 01       	push	$0x4,r8
    43d4:	00 c0 48 48 	bal	(ra),*+0x8c1c <___subdf3>:m
    43d8:	bf 60 10 00 	addd	$0x10:m,(sp)
    43dc:	b8 58 30 00 	movb	$0x30:m,r8
    43e0:	87 31       	addb	r8,r7
    43e2:	9f a6       	loadd	0xc:s(sp),(r10,r9)
    43e4:	79 f0       	storb	r7,0x0:s(r10,r9)
    43e6:	19 60       	addd	$0x1:s,(r10,r9)
    43e8:	9f e6       	stord	(r10,r9),0xc:s(sp)
    43ea:	c9 57       	cmpd	(r12),(r10,r9)
    43ec:	1d 1d       	bne	*-0x43a6 <.L93>:s
    43ee:	cf af 64 00 	loadd	0x64:m(sp),(r12)
    43f2:	08 55       	movd	(r1,r0),(r9,r8)
    43f4:	2a 55       	movd	(r3,r2),(r11,r10)
    43f6:	0f af 58 00 	loadd	0x58:m(sp),(r1,r0)
    43fa:	10 60       	addd	$0x1:s,(r1,r0)
    43fc:	0c 61       	addd	(r1,r0),(r12)

000043fe <.L94>:
    43fe:	00 54       	movd	$0x0:s,(r1,r0)
    4400:	72 00 e0 3f 	movd	$0x3fe00000:l,(r3,r2)
    4404:	00 00 
    4406:	30 01       	push	$0x4,r0
    4408:	2f af 64 00 	loadd	0x64:m(sp),(r3,r2)
    440c:	4f af 68 00 	loadd	0x68:m(sp),(r5,r4)
    4410:	32 01       	push	$0x4,r2
    4412:	00 c0 9a 47 	bal	(ra),*+0x8bac <___adddf3>:m
    4416:	bf 60 10 00 	addd	$0x10:m,(sp)
    441a:	38 01       	push	$0x4,r8
    441c:	30 01       	push	$0x4,r0
    441e:	00 c0 a6 50 	bal	(ra),*+0x94c4 <___ltdf2>:m
    4422:	bf 60 10 00 	addd	$0x10:m,(sp)
    4426:	00 52       	cmpw	$0x0:s,r0
    4428:	70 18 de 03 	ble	*+0x4806 <.L319>:m
    442c:	c0 55       	movd	(r12),(r1,r0)
    442e:	90 60       	addd	$-1:s,(r1,r0)
    4430:	70 b0       	loadb	0x0:s(r1,r0),r7
    4432:	e0 18 af f9 	br	*-0x3de0 <.L85>:m

00004436 <.L346>:
    4436:	0a 95       	loadw	0xa:s(r11,r10),r0
    4438:	90 32       	addw	$-1:s,r0
    443a:	00 5e       	movxw	r0,(r1,r0)
    443c:	30 60       	addd	$0x3:s,(r1,r0)
    443e:	20 4c       	ashud	$2:s,(r1,r0)
    4440:	a0 61       	addd	(r11,r10),(r1,r0)
    4442:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    4444:	00 c0 f4 19 	bal	(ra),*+0x5e38 <___hi0bits>:m

00004448 <.LVL448>:
    4448:	b1 5a 20 00 	movw	$0x20:m,r1
    444c:	01 3b       	subw	r0,r1
    444e:	10 5b       	movw	r1,r0
    4450:	e0 18 ab fa 	br	*-0x3efa <.L122>:m

00004454 <.L347>:
    4454:	a4 55       	movd	(r11,r10),(r5,r4)
    4456:	2f af 30 00 	loadd	0x30:m(sp),(r3,r2)
    445a:	00 c0 56 1e 	bal	(ra),*+0x62b0 <___mcmp>:m

0000445e <.LVL449>:
    445e:	00 52       	cmpw	$0x0:s,r0
    4460:	70 18 0b fb 	ble	*-0x3f6a <.L128>:m
    4464:	8f 9f 2c 00 	loadw	0x2c:m(sp),r8
    4468:	98 32       	addw	$-1:s,r8
    446a:	8f df 2c 00 	storw	r8,0x2c:m(sp)
    446e:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    4472:	08 5a       	movw	$0x0:s,r8
    4474:	08 01       	push	$0x1,r8
    4476:	a6 5a       	movw	$0xa:s,r6
    4478:	4f af 34 00 	loadd	0x34:m(sp),(r5,r4)
    447c:	d2 55       	movd	(r13),(r3,r2)
    447e:	00 c0 12 18 	bal	(ra),*+0x5c90 <___multadd>:m

00004482 <.LVL454>:
    4482:	0f ef 34 00 	stord	(r1,r0),0x34:m(sp)
    4486:	4f 60       	addd	$0x4:s,(sp)
    4488:	0f 9f 4a 00 	loadw	0x4a:m(sp),r0
    448c:	80 53       	cmpw	r8,r0
    448e:	16 15       	bne	*+0x453a <.L354>:s
    4490:	9f 9f 44 00 	loadw	0x44:m(sp),r9
    4494:	09 52       	cmpw	$0x0:s,r9
    4496:	d0 08       	sge	r0
    4498:	00 52       	cmpw	$0x0:s,r0
    449a:	08 10       	beq	*+0x44aa <.L213>:s
    449c:	7f 9f 1c 00 	loadw	0x1c:m(sp),r7
    44a0:	27 52       	cmpw	$0x2:s,r7
    44a2:	c0 08       	slt	r0
    44a4:	00 52       	cmpw	$0x0:s,r0
    44a6:	10 18 28 05 	bne	*+0x49ce <.L202>:m

000044aa <.L213>:
    44aa:	8f 9f 44 00 	loadw	0x44:m(sp),r8
    44ae:	8f df 40 00 	storw	r8,0x40:m(sp)
    44b2:	e0 18 1d fd 	br	*-0x41ce <.L162>:m

000044b6 <.L96>:
    44b6:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    44ba:	07 52       	cmpw	$0x0:s,r7
    44bc:	10 18 f1 fc 	bne	*-0x41ac <.L185>:m
    44c0:	00 54       	movd	$0x0:s,(r1,r0)
    44c2:	72 00 14 40 	movd	$0x40140000:l,(r3,r2)
    44c6:	00 00 
    44c8:	30 01       	push	$0x4,r0
    44ca:	8f af 24 00 	loadd	0x24:m(sp),(r9,r8)
    44ce:	af af 28 00 	loadd	0x28:m(sp),(r11,r10)
    44d2:	38 01       	push	$0x4,r8
    44d4:	00 c0 bc 47 	bal	(ra),*+0x8c90 <___muldf3>:m
    44d8:	bf 60 10 00 	addd	$0x10:m,(sp)
    44dc:	4f aa       	loadd	0x14:s(sp),(r5,r4)
    44de:	6f ac       	loadd	0x18:s(sp),(r7,r6)
    44e0:	34 01       	push	$0x4,r4
    44e2:	30 01       	push	$0x4,r0
    44e4:	00 c0 6c 4f 	bal	(ra),*+0x9450 <___gedf2>:m
    44e8:	bf 60 10 00 	addd	$0x10:m,(sp)
    44ec:	0a 54       	movd	$0x0:s,(r11,r10)
    44ee:	af ef 28 00 	stord	(r11,r10),0x28:m(sp)
    44f2:	00 52       	cmpw	$0x0:s,r0
    44f4:	70 18 bf fc 	ble	*-0x41b2 <.L82>:m
    44f8:	e0 18 bd fa 	br	*-0x3fb4 <.L81>:m

000044fc <.L345>:
    44fc:	0f aa       	loadd	0x14:s(sp),(r1,r0)
    44fe:	00 56       	cmpd	$0x0:s,(r1,r0)
    4500:	10 18 ef f9 	bne	*-0x3eee <.L121>:m
    4504:	0f ac       	loadd	0x18:s(sp),(r1,r0)
    4506:	02 55       	movd	(r1,r0),(r3,r2)
    4508:	42 00 0f 00 	andd	$0xfffff:l,(r3,r2)
    450c:	ff ff 
    450e:	02 56       	cmpd	$0x0:s,(r3,r2)
    4510:	10 18 df f9 	bne	*-0x3eee <.L121>:m
    4514:	40 00 f0 7f 	andd	$0x7ff00000:l,(r1,r0)
    4518:	00 00 
    451a:	00 56       	cmpd	$0x0:s,(r1,r0)
    451c:	00 18 d3 f9 	beq	*-0x3eee <.L121>:m
    4520:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    4524:	17 32       	addw	$0x1:s,r7
    4526:	7f df 3c 00 	storw	r7,0x3c:m(sp)
    452a:	8f 9f 38 00 	loadw	0x38:m(sp),r8
    452e:	18 32       	addw	$0x1:s,r8
    4530:	8f df 38 00 	storw	r8,0x38:m(sp)
    4534:	17 5a       	movw	$0x1:s,r7
    4536:	e0 18 b9 f9 	br	*-0x3eee <.L121>:m

0000453a <.L354>:
    453a:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    453e:	08 01       	push	$0x1,r8
    4540:	a6 5a       	movw	$0xa:s,r6
    4542:	4f af 2c 00 	loadd	0x2c:m(sp),(r5,r4)
    4546:	d2 55       	movd	(r13),(r3,r2)
    4548:	00 c0 48 17 	bal	(ra),*+0x5c90 <___multadd>:m

0000454c <.LVL478>:
    454c:	0f ef 2c 00 	stord	(r1,r0),0x2c:m(sp)
    4550:	4f 60       	addd	$0x4:s,(sp)
    4552:	8f 9f 44 00 	loadw	0x44:m(sp),r8
    4556:	08 52       	cmpw	$0x0:s,r8
    4558:	d0 08       	sge	r0
    455a:	00 52       	cmpw	$0x0:s,r0
    455c:	08 10       	beq	*+0x456c <.L212>:s
    455e:	8f 9f 1c 00 	loadw	0x1c:m(sp),r8
    4562:	28 52       	cmpw	$0x2:s,r8
    4564:	c0 08       	slt	r0
    4566:	00 52       	cmpw	$0x0:s,r0
    4568:	10 18 48 04 	bne	*+0x49b0 <.L195>:m

0000456c <.L212>:
    456c:	8f 9f 44 00 	loadw	0x44:m(sp),r8
    4570:	8f df 40 00 	storw	r8,0x40:m(sp)

00004574 <.L132>:
    4574:	09 52       	cmpw	$0x0:s,r9
    4576:	d9 10       	bge	*+0x4588 <.L136>:s
    4578:	96 5b       	movw	r9,r6
    457a:	4f af 28 00 	loadd	0x28:m(sp),(r5,r4)
    457e:	d2 55       	movd	(r13),(r3,r2)
    4580:	00 c0 50 1c 	bal	(ra),*+0x61d0 <___lshift>:m

00004584 <.LVL482>:
    4584:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)

00004588 <.L136>:
    4588:	8f af 28 00 	loadd	0x28:m(sp),(r9,r8)
    458c:	8f e6       	stord	(r9,r8),0xc:s(sp)
    458e:	07 52       	cmpw	$0x0:s,r7
    4590:	10 18 28 03 	bne	*+0x48b8 <.L355>:m

00004594 <.L137>:
    4594:	0f 9f 40 00 	loadw	0x40:m(sp),r0
    4598:	90 32       	addw	$-1:s,r0
    459a:	07 5f       	movzw	r0,(r8,r7)
    459c:	17 60       	addd	$0x1:s,(r8,r7)
    459e:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    45a0:	70 61       	addd	(r8,r7),(r1,r0)
    45a2:	0f ef 40 00 	stord	(r1,r0),0x40:m(sp)
    45a6:	cf a2       	loadd	0x4:s(sp),(r12)
    45a8:	8f af 28 00 	loadd	0x28:m(sp),(r9,r8)
    45ac:	1f aa       	loadd	0x14:s(sp),(r2,r1)
    45ae:	41 00 00 00 	andd	$0x1:l,(r2,r1)
    45b2:	01 00 
    45b4:	1f ea       	stord	(r2,r1),0x14:s(sp)
    45b6:	af ef 38 00 	stord	(r11,r10),0x38:m(sp)
    45ba:	da 55       	movd	(r13),(r11,r10)
    45bc:	8d 55       	movd	(r9,r8),(r13)

000045be <.L323>:
    45be:	4f af 38 00 	loadd	0x38:m(sp),(r5,r4)
    45c2:	2f af 30 00 	loadd	0x30:m(sp),(r3,r2)
    45c6:	ff c0 5b ee 	bal	(ra),*-0x3420 <_quorem>:m

000045ca <.LVL488>:
    45ca:	0f df 28 00 	storw	r0,0x28:m(sp)
    45ce:	b0 32 30 00 	addw	$0x30:m,r0
    45d2:	0f df 3c 00 	storw	r0,0x3c:m(sp)
    45d6:	d4 55       	movd	(r13),(r5,r4)
    45d8:	2f af 30 00 	loadd	0x30:m(sp),(r3,r2)
    45dc:	00 c0 d4 1c 	bal	(ra),*+0x62b0 <___mcmp>:m

000045e0 <.LVL490>:
    45e0:	0f df 2e 00 	storw	r0,0x2e:m(sp)
    45e4:	7f a6       	loadd	0xc:s(sp),(r8,r7)
    45e6:	17 01       	push	$0x2,r7
    45e8:	4f af 3c 00 	loadd	0x3c:m(sp),(r5,r4)
    45ec:	a2 55       	movd	(r11,r10),(r3,r2)
    45ee:	00 c0 06 1d 	bal	(ra),*+0x62f4 <___mdiff>:m

000045f2 <.LVL493>:
    45f2:	08 55       	movd	(r1,r0),(r9,r8)
    45f4:	4f 60       	addd	$0x4:s,(sp)
    45f6:	00 94       	loadw	0x8:s(r1,r0),r0
    45f8:	17 5a       	movw	$0x1:s,r7
    45fa:	00 52       	cmpw	$0x0:s,r0
    45fc:	08 17       	beq	*+0x46ec <.L356>:s

000045fe <.L138>:
    45fe:	84 55       	movd	(r9,r8),(r5,r4)
    4600:	a2 55       	movd	(r11,r10),(r3,r2)
    4602:	00 c0 72 16 	bal	(ra),*+0x5c74 <__Bfree>:m

00004606 <.LVL498>:
    4606:	0f 9f 1c 00 	loadw	0x1c:m(sp),r0
    460a:	70 27       	orw	r7,r0
    460c:	00 52       	cmpw	$0x0:s,r0
    460e:	15 10       	bne	*+0x4618 <.L139>:s
    4610:	8f aa       	loadd	0x14:s(sp),(r9,r8)
    4612:	08 56       	cmpd	$0x0:s,(r9,r8)
    4614:	00 18 46 03 	beq	*+0x495a <.L357>:m

00004618 <.L139>:
    4618:	8f 9f 2e 00 	loadw	0x2e:m(sp),r8
    461c:	08 52       	cmpw	$0x0:s,r8
    461e:	69 13       	bgt	*+0x4690 <.L198>:s
    4620:	80 5b       	movw	r8,r0
    4622:	9f 9f 1c 00 	loadw	0x1c:m(sp),r9
    4626:	90 27       	orw	r9,r0
    4628:	00 52       	cmpw	$0x0:s,r0
    462a:	14 10       	bne	*+0x4632 <.L143>:s
    462c:	8f aa       	loadd	0x14:s(sp),(r9,r8)
    462e:	08 56       	cmpd	$0x0:s,(r9,r8)
    4630:	00 13       	beq	*+0x4690 <.L198>:s

00004632 <.L143>:
    4632:	07 52       	cmpw	$0x0:s,r7
    4634:	c0 18 d8 02 	blt	*+0x490c <.L358>:m
    4638:	7f bf 3c 00 	loadb	0x3c:m(sp),r7
    463c:	7c f0       	storb	r7,0x0:s(r12)
    463e:	1c 60       	addd	$0x1:s,(r12)
    4640:	8f af 40 00 	loadd	0x40:m(sp),(r9,r8)
    4644:	8c 57       	cmpd	(r9,r8),(r12)
    4646:	00 18 e8 02 	beq	*+0x492e <.L199>:m
    464a:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    464e:	09 5a       	movw	$0x0:s,r9
    4650:	09 01       	push	$0x1,r9
    4652:	a6 5a       	movw	$0xa:s,r6
    4654:	4f af 34 00 	loadd	0x34:m(sp),(r5,r4)
    4658:	a2 55       	movd	(r11,r10),(r3,r2)
    465a:	00 c0 36 16 	bal	(ra),*+0x5c90 <___multadd>:m

0000465e <.LVL504>:
    465e:	0f ef 34 00 	stord	(r1,r0),0x34:m(sp)
    4662:	4f 60       	addd	$0x4:s,(sp)
    4664:	7f a6       	loadd	0xc:s(sp),(r8,r7)
    4666:	7d 57       	cmpd	(r8,r7),(r13)
    4668:	09 14       	beq	*+0x46fa <.L359>:s
    466a:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    466e:	08 5a       	movw	$0x0:s,r8
    4670:	08 01       	push	$0x1,r8
    4672:	a6 5a       	movw	$0xa:s,r6
    4674:	d4 55       	movd	(r13),(r5,r4)
    4676:	a2 55       	movd	(r11,r10),(r3,r2)
    4678:	00 c0 18 16 	bal	(ra),*+0x5c90 <___multadd>:m

0000467c <.LVL509>:
    467c:	0d 55       	movd	(r1,r0),(r13)
    467e:	8f d0       	storw	r8,0x0:s(sp)
    4680:	a6 5a       	movw	$0xa:s,r6
    4682:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    4684:	a2 55       	movd	(r11,r10),(r3,r2)
    4686:	00 c0 0a 16 	bal	(ra),*+0x5c90 <___multadd>:m

0000468a <.LVL511>:
    468a:	0f e8       	stord	(r1,r0),0x10:s(sp)
    468c:	4f 60       	addd	$0x4:s,(sp)
    468e:	e8 19       	br	*-0x45be <.L323>:s

00004690 <.L198>:
    4690:	d8 55       	movd	(r13),(r9,r8)
    4692:	7f da       	storw	r7,0x14:s(sp)
    4694:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    4698:	ad 55       	movd	(r11,r10),(r13)
    469a:	af af 38 00 	loadd	0x38:m(sp),(r11,r10)
    469e:	7f df 1c 00 	storw	r7,0x1c:m(sp)
    46a2:	4f 9f 30 00 	loadw	0x30:m(sp),r4
    46a6:	5f 9f 32 00 	loadw	0x32:m(sp),r5
    46aa:	0f 9a       	loadw	0x14:s(sp),r0
    46ac:	00 52       	cmpw	$0x0:s,r0
    46ae:	d8 11       	bge	*+0x46de <.L144>:s
    46b0:	16 5a       	movw	$0x1:s,r6
    46b2:	d2 55       	movd	(r13),(r3,r2)
    46b4:	00 c0 1c 1b 	bal	(ra),*+0x61d0 <___lshift>:m

000046b8 <.LVL518>:
    46b8:	0f ef 30 00 	stord	(r1,r0),0x30:m(sp)
    46bc:	a4 55       	movd	(r11,r10),(r5,r4)
    46be:	02 55       	movd	(r1,r0),(r3,r2)
    46c0:	00 c0 f0 1b 	bal	(ra),*+0x62b0 <___mcmp>:m

000046c4 <.LVL520>:
    46c4:	00 52       	cmpw	$0x0:s,r0
    46c6:	d0 18 c4 02 	bge	*+0x498a <.L360>:m

000046ca <.L145>:
    46ca:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    46ce:	b7 32 31 00 	addw	$0x31:m,r7
    46d2:	1f 9f 1c 00 	loadw	0x1c:m(sp),r1
    46d6:	b1 52 39 00 	cmpw	$0x39:m,r1
    46da:	00 18 6a 02 	beq	*+0x4944 <.L140>:m

000046de <.L144>:
    46de:	7c f0       	storb	r7,0x0:s(r12)
    46e0:	1c 60       	addd	$0x1:s,(r12)
    46e2:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    46e4:	2f ef 28 00 	stord	(r3,r2),0x28:m(sp)
    46e8:	e0 18 e5 f8 	br	*-0x3fcc <.L134>:m

000046ec <.L356>:
    46ec:	84 55       	movd	(r9,r8),(r5,r4)
    46ee:	2f af 30 00 	loadd	0x30:m(sp),(r3,r2)
    46f2:	00 c0 be 1b 	bal	(ra),*+0x62b0 <___mcmp>:m

000046f6 <.LVL526>:
    46f6:	07 5b       	movw	r0,r7
    46f8:	e3 18       	br	*-0x45fe <.L138>:s

000046fa <.L359>:
    46fa:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    46fe:	09 01       	push	$0x1,r9
    4700:	a6 5a       	movw	$0xa:s,r6
    4702:	d4 55       	movd	(r13),(r5,r4)
    4704:	a2 55       	movd	(r11,r10),(r3,r2)
    4706:	00 c0 8a 15 	bal	(ra),*+0x5c90 <___multadd>:m

0000470a <.LVL530>:
    470a:	0f e8       	stord	(r1,r0),0x10:s(sp)
    470c:	4f 60       	addd	$0x4:s,(sp)
    470e:	df a6       	loadd	0xc:s(sp),(r13)
    4710:	e0 18 af fe 	br	*-0x45be <.L323>:m

00004714 <.L59>:
    4714:	1f c3 4a 00 	storw	$0x1:s,0x4a:m(sp)
    4718:	e0 18 e7 f9 	br	*-0x40fe <.L57>:m

0000471c <.L173>:
    471c:	0f c3 4a 00 	storw	$0x0:s,0x4a:m(sp)
    4720:	e0 18 85 f1 	br	*-0x38a4 <.L58>:m

00004724 <.L174>:
    4724:	17 58       	movb	$0x1:s,r7
    4726:	1f c3 44 00 	storw	$0x1:s,0x44:m(sp)
    472a:	8f 9f 44 00 	loadw	0x44:m(sp),r8
    472e:	8f df 40 00 	storw	r8,0x40:m(sp)
    4732:	8f df 2e 00 	storw	r8,0x2e:m(sp)

00004736 <.L62>:
    4736:	0d c3 40 00 	storw	$0x0:s,0x40:m(r13)
    473a:	07 21       	andb	r0,r7
    473c:	04 5a       	movw	$0x0:s,r4
    473e:	e0 18 f9 f1 	br	*-0x3936 <.L65>:m

00004742 <.L338>:
    4742:	e1 52       	cmpw	$0xe:s,r1
    4744:	b7 08       	shs	r7
    4746:	1f df 40 00 	storw	r1,0x40:m(sp)
    474a:	e6 1f       	br	*-0x4736 <.L62>:s

0000474c <.L155>:
    474c:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    4750:	17 32       	addw	$0x1:s,r7
    4752:	7f df 2c 00 	storw	r7,0x2c:m(sp)
    4756:	b0 58 31 00 	movb	$0x31:m,r0
    475a:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    475c:	01 f0       	storb	r0,0x0:s(r2,r1)
    475e:	e0 18 6f f8 	br	*-0x3fcc <.L134>:m

00004762 <.L113>:
    4762:	01 5b       	movw	r0,r1
    4764:	bf 9f 46 00 	loadw	0x46:m(sp),r11
    4768:	b1 3b       	subw	r11,r1
    476a:	7f 9f 48 00 	loadw	0x48:m(sp),r7
    476e:	17 33       	addw	r1,r7
    4770:	7f df 48 00 	storw	r7,0x48:m(sp)
    4774:	0f df 46 00 	storw	r0,0x46:m(sp)
    4778:	0a 5a       	movw	$0x0:s,r10
    477a:	e0 18 31 f9 	br	*-0x40aa <.L114>:m

0000477e <.L339>:
    477e:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    4782:	07 52       	cmpw	$0x0:s,r7
    4784:	00 18 a5 f9 	beq	*-0x4128 <.L78>:m
    4788:	7f 9f 44 00 	loadw	0x44:m(sp),r7
    478c:	07 52       	cmpw	$0x0:s,r7
    478e:	d0 18 7b f4 	bge	*-0x3c08 <.L67>:m
    4792:	7f 9f 2c 00 	loadw	0x2c:m(sp),r7
    4796:	97 32       	addw	$-1:s,r7
    4798:	7f df 4c 00 	storw	r7,0x4c:m(sp)
    479c:	00 54       	movd	$0x0:s,(r1,r0)
    479e:	72 00 24 40 	movd	$0x40240000:l,(r3,r2)
    47a2:	00 00 
    47a4:	30 01       	push	$0x4,r0
    47a6:	38 01       	push	$0x4,r8
    47a8:	00 c0 e8 44 	bal	(ra),*+0x8c90 <___muldf3>:m
    47ac:	bf 60 10 00 	addd	$0x10:m,(sp)
    47b0:	08 55       	movd	(r1,r0),(r9,r8)
    47b2:	2a 55       	movd	(r3,r2),(r11,r10)
    47b4:	2f 9f 28 00 	loadw	0x28:m(sp),r2
    47b8:	12 32       	addw	$0x1:s,r2
    47ba:	22 5e       	movxw	r2,(r3,r2)
    47bc:	00 c0 7c 4d 	bal	(ra),*+0x9538 <___floatsidf>:m
    47c0:	30 01       	push	$0x4,r0
    47c2:	38 01       	push	$0x4,r8
    47c4:	00 c0 cc 44 	bal	(ra),*+0x8c90 <___muldf3>:m
    47c8:	bf 60 10 00 	addd	$0x10:m,(sp)
    47cc:	04 54       	movd	$0x0:s,(r5,r4)
    47ce:	76 00 1c 40 	movd	$0x401c0000:l,(r7,r6)
    47d2:	00 00 
    47d4:	34 01       	push	$0x4,r4
    47d6:	30 01       	push	$0x4,r0
    47d8:	00 c0 d4 43 	bal	(ra),*+0x8bac <___adddf3>:m
    47dc:	bf 60 10 00 	addd	$0x10:m,(sp)
    47e0:	0f e6       	stord	(r1,r0),0xc:s(sp)
    47e2:	2f e8       	stord	(r3,r2),0x10:s(sp)
    47e4:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    47e6:	20 00 c0 fc 	addd	$0xfcc00000:l,(r1,r0)
    47ea:	00 00 
    47ec:	0f e8       	stord	(r1,r0),0x10:s(sp)
    47ee:	7f 9f 44 00 	loadw	0x44:m(sp),r7
    47f2:	7f df 28 00 	storw	r7,0x28:m(sp)
    47f6:	e0 18 81 f2 	br	*-0x3a76 <.L80>:m

000047fa <.L177>:
    47fa:	8f aa       	loadd	0x14:s(sp),(r9,r8)
    47fc:	af ac       	loadd	0x18:s(sp),(r11,r10)
    47fe:	2f c3 28 00 	storw	$0x2:s,0x28:m(sp)
    4802:	e0 18 01 f2 	br	*-0x3a02 <.L73>:m

00004806 <.L319>:
    4806:	4f af 5c 00 	loadd	0x5c:m(sp),(r5,r4)
    480a:	6f af 60 00 	loadd	0x60:m(sp),(r7,r6)
    480e:	34 01       	push	$0x4,r4
    4810:	00 54       	movd	$0x0:s,(r1,r0)
    4812:	72 00 e0 3f 	movd	$0x3fe00000:l,(r3,r2)
    4816:	00 00 
    4818:	30 01       	push	$0x4,r0
    481a:	00 c0 02 44 	bal	(ra),*+0x8c1c <___subdf3>:m
    481e:	bf 60 10 00 	addd	$0x10:m,(sp)
    4822:	38 01       	push	$0x4,r8
    4824:	30 01       	push	$0x4,r0
    4826:	00 c0 b6 4b 	bal	(ra),*+0x93dc <___gtdf2>:m
    482a:	bf 60 10 00 	addd	$0x10:m,(sp)
    482e:	00 52       	cmpw	$0x0:s,r0
    4830:	c4 10       	blt	*+0x4838 <.L279>:s
    4832:	e0 18 d7 f3 	br	*-0x3c08 <.L67>:m

00004836 <.L184>:
    4836:	0c 55       	movd	(r1,r0),(r12)

00004838 <.L279>:
    4838:	c0 55       	movd	(r12),(r1,r0)
    483a:	90 60       	addd	$-1:s,(r1,r0)
    483c:	20 b0       	loadb	0x0:s(r1,r0),r2
    483e:	b2 50 30 00 	cmpb	$0x30:m,r2
    4842:	0a 1f       	beq	*-0x4836 <.L184>:s
    4844:	7f 9f 4c 00 	loadw	0x4c:m(sp),r7
    4848:	7f df 2c 00 	storw	r7,0x2c:m(sp)
    484c:	e0 18 a5 f7 	br	*-0x3ff0 <.L84>:m

00004850 <.L349>:
    4850:	9f 9f 54 00 	loadw	0x54:m(sp),r9
    4854:	09 52       	cmpw	$0x0:s,r9
    4856:	01 15       	beq	*+0x48f8 <.L111>:s
    4858:	b0 32 33 04 	addw	$0x433:m,r0
    485c:	af 9f 46 00 	loadw	0x46:m(sp),r10
    4860:	9f 9f 3c 00 	loadw	0x3c:m(sp),r9
    4864:	e0 18 59 f8 	br	*-0x40bc <.L112>:m

00004868 <.L326>:
    4868:	df a6       	loadd	0xc:s(sp),(r13)
    486a:	e0 18 87 f7 	br	*-0x3ff0 <.L84>:m

0000486e <.L350>:
    486e:	89 3b       	subw	r8,r9
    4870:	00 5a       	movw	$0x0:s,r0
    4872:	e0 18 4b f8 	br	*-0x40bc <.L112>:m

00004876 <.L341>:
    4876:	7f bf 28 00 	loadb	0x28:m(sp),r7
    487a:	df af 58 00 	loadd	0x58:m(sp),(r13)
    487e:	c0 55       	movd	(r12),(r1,r0)
    4880:	90 60       	addd	$-1:s,(r1,r0)
    4882:	e0 18 5f f5 	br	*-0x3de0 <.L85>:m

00004886 <.L342>:
    4886:	87 59       	movb	r8,r7
    4888:	17 30       	addb	$0x1:s,r7
    488a:	bf 9f 4c 00 	loadw	0x4c:m(sp),r11
    488e:	bf df 2c 00 	storw	r11,0x2c:m(sp)
    4892:	74 f0       	storb	r7,0x0:s(r5,r4)
    4894:	e0 18 5d f7 	br	*-0x3ff0 <.L84>:m

00004898 <.L352>:
    4898:	00 52       	cmpw	$0x0:s,r0
    489a:	17 10       	bne	*+0x48a8 <.L280>:s
    489c:	17 22       	andw	$0x1:s,r7
    489e:	07 52       	cmpw	$0x0:s,r7
    48a0:	04 10       	beq	*+0x48a8 <.L280>:s
    48a2:	e0 18 9f f9 	br	*-0x4240 <.L153>:m

000048a6 <.L201>:
    48a6:	0c 55       	movd	(r1,r0),(r12)

000048a8 <.L280>:
    48a8:	c0 55       	movd	(r12),(r1,r0)
    48aa:	90 60       	addd	$-1:s,(r1,r0)
    48ac:	20 b0       	loadb	0x0:s(r1,r0),r2
    48ae:	b2 50 30 00 	cmpb	$0x30:m,r2
    48b2:	0a 1f       	beq	*-0x48a6 <.L201>:s
    48b4:	e0 18 19 f7 	br	*-0x3fcc <.L134>:m

000048b8 <.L355>:
    48b8:	48 92       	loadw	0x4:s(r9,r8),r4
    48ba:	d2 55       	movd	(r13),(r3,r2)
    48bc:	00 c0 48 13 	bal	(ra),*+0x5c04 <__Balloc>:m

000048c0 <.LVL586>:
    48c0:	08 55       	movd	(r1,r0),(r9,r8)
    48c2:	4f af 28 00 	loadd	0x28:m(sp),(r5,r4)
    48c6:	84 60       	addd	$0x8:s,(r5,r4)
    48c8:	02 55       	movd	(r1,r0),(r3,r2)
    48ca:	82 60       	addd	$0x8:s,(r3,r2)
    48cc:	6f af 28 00 	loadd	0x28:m(sp),(r7,r6)
    48d0:	06 95       	loadw	0xa:s(r7,r6),r0
    48d2:	00 5e       	movxw	r0,(r1,r0)
    48d4:	10 60       	addd	$0x1:s,(r1,r0)
    48d6:	20 4c       	ashud	$2:s,(r1,r0)
    48d8:	10 01       	push	$0x2,r0
    48da:	00 c0 56 12 	bal	(ra),*+0x5b30 <_memcpy>:m

000048de <.LVL590>:
    48de:	16 5a       	movw	$0x1:s,r6
    48e0:	84 55       	movd	(r9,r8),(r5,r4)
    48e2:	d2 55       	movd	(r13),(r3,r2)
    48e4:	00 c0 ec 18 	bal	(ra),*+0x61d0 <___lshift>:m

000048e8 <.LVL591>:
    48e8:	0f e8       	stord	(r1,r0),0x10:s(sp)
    48ea:	4f 60       	addd	$0x4:s,(sp)
    48ec:	e0 18 a9 fc 	br	*-0x4594 <.L137>:m

000048f0 <.L353>:
    48f0:	14 30       	addb	$0x1:s,r4
    48f2:	40 f0       	storb	r4,0x0:s(r1,r0)
    48f4:	e0 18 d9 f6 	br	*-0x3fcc <.L134>:m

000048f8 <.L111>:
    48f8:	1f 91       	loadw	0x2:s(sp),r1
    48fa:	b0 5a 36 00 	movw	$0x36:m,r0
    48fe:	10 3b       	subw	r1,r0
    4900:	af 9f 46 00 	loadw	0x46:m(sp),r10
    4904:	9f 9f 3c 00 	loadw	0x3c:m(sp),r9
    4908:	e0 18 b5 f7 	br	*-0x40bc <.L112>:m

0000490c <.L358>:
    490c:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    4910:	d8 55       	movd	(r13),(r9,r8)
    4912:	ad 55       	movd	(r11,r10),(r13)
    4914:	af af 38 00 	loadd	0x38:m(sp),(r11,r10)
    4918:	b7 52 39 00 	cmpw	$0x39:m,r7
    491c:	04 11       	beq	*+0x4944 <.L140>:s
    491e:	17 30       	addb	$0x1:s,r7
    4920:	7c f0       	storb	r7,0x0:s(r12)
    4922:	1c 60       	addd	$0x1:s,(r12)
    4924:	6f a6       	loadd	0xc:s(sp),(r7,r6)
    4926:	6f ef 28 00 	stord	(r7,r6),0x28:m(sp)
    492a:	e0 18 a3 f6 	br	*-0x3fcc <.L134>:m

0000492e <.L199>:
    492e:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    4932:	d8 55       	movd	(r13),(r9,r8)
    4934:	ad 55       	movd	(r11,r10),(r13)
    4936:	af af 38 00 	loadd	0x38:m(sp),(r11,r10)
    493a:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    493c:	4f ef 28 00 	stord	(r5,r4),0x28:m(sp)
    4940:	e0 18 e3 f8 	br	*-0x4222 <.L149>:m

00004944 <.L140>:
    4944:	b4 58 39 00 	movb	$0x39:m,r4
    4948:	4c f0       	storb	r4,0x0:s(r12)
    494a:	1c 60       	addd	$0x1:s,(r12)
    494c:	5f a6       	loadd	0xc:s(sp),(r6,r5)
    494e:	5f ef 28 00 	stord	(r6,r5),0x28:m(sp)
    4952:	c0 55       	movd	(r12),(r1,r0)
    4954:	90 60       	addd	$-1:s,(r1,r0)
    4956:	e0 18 f1 f8 	br	*-0x4246 <.L148>:m

0000495a <.L357>:
    495a:	7f 9f 3c 00 	loadw	0x3c:m(sp),r7
    495e:	d8 55       	movd	(r13),(r9,r8)
    4960:	ad 55       	movd	(r11,r10),(r13)
    4962:	af af 38 00 	loadd	0x38:m(sp),(r11,r10)
    4966:	b7 52 39 00 	cmpw	$0x39:m,r7
    496a:	0d 1e       	beq	*-0x4944 <.L140>:s
    496c:	0f 9f 2e 00 	loadw	0x2e:m(sp),r0
    4970:	00 52       	cmpw	$0x0:s,r0
    4972:	d5 10       	bge	*+0x497c <.L141>:s
    4974:	7f 9f 28 00 	loadw	0x28:m(sp),r7
    4978:	b7 32 31 00 	addw	$0x31:m,r7

0000497c <.L141>:
    497c:	7c f0       	storb	r7,0x0:s(r12)
    497e:	1c 60       	addd	$0x1:s,(r12)
    4980:	1f a6       	loadd	0xc:s(sp),(r2,r1)
    4982:	1f ef 28 00 	stord	(r2,r1),0x28:m(sp)
    4986:	e0 18 47 f6 	br	*-0x3fcc <.L134>:m

0000498a <.L360>:
    498a:	00 52       	cmpw	$0x0:s,r0
    498c:	10 18 53 fd 	bne	*-0x46de <.L144>:m
    4990:	70 5b       	movw	r7,r0
    4992:	10 22       	andw	$0x1:s,r0
    4994:	00 52       	cmpw	$0x0:s,r0
    4996:	00 18 49 fd 	beq	*-0x46de <.L144>:m
    499a:	e0 18 31 fd 	br	*-0x46ca <.L145>:m

0000499e <.L340>:
    499e:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    49a0:	e0 18 41 f4 	br	*-0x3de0 <.L85>:m

000049a4 <.L182>:
    49a4:	bf 9f 4c 00 	loadw	0x4c:m(sp),r11
    49a8:	bf df 2c 00 	storw	r11,0x2c:m(sp)
    49ac:	e0 18 45 f6 	br	*-0x3ff0 <.L84>:m

000049b0 <.L195>:
    49b0:	9f 9f 44 00 	loadw	0x44:m(sp),r9
    49b4:	9f df 40 00 	storw	r9,0x40:m(sp)
    49b8:	e0 18 cf f5 	br	*-0x3f86 <.L130>:m

000049bc <.L124>:
    49bc:	41 52       	cmpw	$0x4:s,r1
    49be:	00 18 77 f5 	beq	*-0x3f34 <.L125>:m
    49c2:	b1 5a 3c 00 	movw	$0x3c:m,r1
    49c6:	01 3b       	subw	r0,r1
    49c8:	10 5b       	movw	r1,r0
    49ca:	e0 18 55 f5 	br	*-0x3f1e <.L123>:m

000049ce <.L202>:
    49ce:	7f 9f 44 00 	loadw	0x44:m(sp),r7
    49d2:	7f df 40 00 	storw	r7,0x40:m(sp)
    49d6:	e0 18 b1 f5 	br	*-0x3f86 <.L130>:m
	...

000049dc <___sflush_r>:
    49dc:	1e 01       	push	RA
    49de:	67 01       	push	$0x7,r7
    49e0:	2a 55       	movd	(r3,r2),(r11,r10)
    49e2:	48 55       	movd	(r5,r4),(r9,r8)
    49e4:	04 94       	loadw	0x8:s(r5,r4),r0
    49e6:	01 5b       	movw	r0,r1
    49e8:	81 22       	andw	$0x8:s,r1
    49ea:	01 52       	cmpw	$0x0:s,r1
    49ec:	1d 14       	bne	*+0x4a86 <.L2>:s
    49ee:	02 5b       	movw	r0,r2
    49f0:	b2 26 00 08 	orw	$0x800:m,r2
    49f4:	24 d4       	storw	r2,0x8:s(r5,r4)
    49f6:	14 92       	loadw	0x4:s(r5,r4),r1
    49f8:	01 52       	cmpw	$0x0:s,r1
    49fa:	dc 16       	bge	*+0x4ad2 <.L54>:s

000049fc <.L3>:
    49fc:	c8 af 24 00 	loadd	0x24:m(r9,r8),(r12)
    4a00:	0c 56       	cmpd	$0x0:s,(r12)
    4a02:	0f 13       	beq	*+0x4a80 <.L52>:s
    4a04:	7a 90       	loadw	0x0:s(r11,r10),r7
    4a06:	0a c2       	storw	$0x0:s,0x0:s(r11,r10)
    4a08:	b0 22 00 10 	andw	$0x1000:m,r0
    4a0c:	00 52       	cmpw	$0x0:s,r0
    4a0e:	08 16       	beq	*+0x4ade <.L6>:s
    4a10:	08 9f 4a 00 	loadw	0x4a:m(r9,r8),r0
    4a14:	00 5e       	movxw	r0,(r1,r0)

00004a16 <.L7>:
    4a16:	42 22       	andw	$0x4:s,r2
    4a18:	02 52       	cmpw	$0x0:s,r2
    4a1a:	0e 10       	beq	*+0x4a36 <.L12>:s
    4a1c:	28 92       	loadw	0x4:s(r9,r8),r2
    4a1e:	22 5e       	movxw	r2,(r3,r2)
    4a20:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    4a24:	28 af 2c 00 	loadd	0x2c:m(r9,r8),(r3,r2)
    4a28:	02 56       	cmpd	$0x0:s,(r3,r2)
    4a2a:	06 10       	beq	*+0x4a36 <.L12>:s
    4a2c:	28 9f 38 00 	loadw	0x38:m(r9,r8),r2
    4a30:	22 5e       	movxw	r2,(r3,r2)
    4a32:	14 00 20 c0 	subd	(r3,r2),(r1,r0)

00004a36 <.L12>:
    4a36:	48 ac       	loadd	0x18:s(r9,r8),(r5,r4)
    4a38:	10 01       	push	$0x2,r0
    4a3a:	06 5a       	movw	$0x0:s,r6
    4a3c:	a2 55       	movd	(r11,r10),(r3,r2)
    4a3e:	dc 00       	jal	(r12)

00004a40 <.LVL8>:
    4a40:	4f 60       	addd	$0x4:s,(sp)
    4a42:	90 56       	cmpd	$-1:s,(r1,r0)
    4a44:	0a 15       	beq	*+0x4af8 <.L55>:s
    4a46:	48 94       	loadw	0x8:s(r9,r8),r4
    4a48:	42 5b       	movw	r4,r2
    4a4a:	b2 22 ff f7 	andw	$0xf7ff:m,r2
    4a4e:	28 d4       	storw	r2,0x8:s(r9,r8)
    4a50:	08 c3 04 00 	storw	$0x0:s,0x4:m(r9,r8)
    4a54:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    4a56:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    4a58:	b4 22 00 10 	andw	$0x1000:m,r4
    4a5c:	04 52       	cmpw	$0x0:s,r4
    4a5e:	1c 15       	bne	*+0x4b16 <.L22>:s

00004a60 <.L17>:
    4a60:	7a d0       	storw	r7,0x0:s(r11,r10)
    4a62:	48 af 2c 00 	loadd	0x2c:m(r9,r8),(r5,r4)
    4a66:	04 56       	cmpd	$0x0:s,(r5,r4)
    4a68:	0c 10       	beq	*+0x4a80 <.L52>:s
    4a6a:	80 55       	movd	(r9,r8),(r1,r0)
    4a6c:	b0 60 3a 00 	addd	$0x3a:m,(r1,r0)
    4a70:	04 57       	cmpd	(r1,r0),(r5,r4)
    4a72:	04 10       	beq	*+0x4a7a <.L18>:s
    4a74:	a2 55       	movd	(r11,r10),(r3,r2)
    4a76:	00 c0 0a 04 	bal	(ra),*+0x4e80 <__free_r>:m

00004a7a <.L18>:
    4a7a:	00 54       	movd	$0x0:s,(r1,r0)
    4a7c:	08 ef 2c 00 	stord	(r1,r0),0x2c:m(r9,r8)

00004a80 <.L52>:
    4a80:	00 5a       	movw	$0x0:s,r0

00004a82 <.L49>:
    4a82:	67 02       	pop	$0x7,r7
    4a84:	1e 03       	popret	RA

00004a86 <.L2>:
    4a86:	c4 a6       	loadd	0xc:s(r5,r4),(r12)
    4a88:	0c 56       	cmpd	$0x0:s,(r12)
    4a8a:	0b 1f       	beq	*-0x4a80 <.L52>:s
    4a8c:	74 90       	loadw	0x0:s(r5,r4),r7
    4a8e:	c1 55       	movd	(r12),(r2,r1)
    4a90:	17 3b       	subw	r1,r7
    4a92:	c4 e0       	stord	(r12),0x0:s(r5,r4)
    4a94:	30 22       	andw	$0x3:s,r0
    4a96:	01 5a       	movw	$0x0:s,r1
    4a98:	10 53       	cmpw	r1,r0
    4a9a:	12 10       	bne	*+0x4a9e <.L19>:s
    4a9c:	14 98       	loadw	0x10:s(r5,r4),r1

00004a9e <.L19>:
    4a9e:	18 d3       	storw	r1,0x6:s(r9,r8)
    4aa0:	07 52       	cmpw	$0x0:s,r7
    4aa2:	c7 10       	blt	*+0x4ab0 <.L40>:s
    4aa4:	ee 1e       	br	*-0x4a80 <.L52>:s

00004aa6 <.L20>:
    4aa6:	02 5e       	movxw	r0,(r3,r2)
    4aa8:	2c 61       	addd	(r3,r2),(r12)
    4aaa:	07 3b       	subw	r0,r7
    4aac:	07 52       	cmpw	$0x0:s,r7
    4aae:	d9 1e       	bge	*-0x4a80 <.L52>:s

00004ab0 <.L40>:
    4ab0:	48 ac       	loadd	0x18:s(r9,r8),(r5,r4)
    4ab2:	1c 01       	push	$0x2,r12
    4ab4:	08 af 20 00 	loadd	0x20:m(r9,r8),(r1,r0)
    4ab8:	76 5b       	movw	r7,r6
    4aba:	a2 55       	movd	(r11,r10),(r3,r2)
    4abc:	d0 00       	jal	(r1,r0)

00004abe <.LVL20>:
    4abe:	4f 60       	addd	$0x4:s,(sp)
    4ac0:	00 52       	cmpw	$0x0:s,r0
    4ac2:	c2 1f       	blt	*-0x4aa6 <.L20>:s

00004ac4 <.L51>:
    4ac4:	08 94       	loadw	0x8:s(r9,r8),r0
    4ac6:	b0 26 40 00 	orw	$0x40:m,r0
    4aca:	08 d4       	storw	r0,0x8:s(r9,r8)
    4acc:	90 5a       	movw	$-1:s,r0
    4ace:	67 02       	pop	$0x7,r7
    4ad0:	1e 03       	popret	RA

00004ad2 <.L54>:
    4ad2:	14 9f 38 00 	loadw	0x38:m(r5,r4),r1
    4ad6:	01 52       	cmpw	$0x0:s,r1
    4ad8:	c2 19       	blt	*-0x49fc <.L3>:s
    4ada:	00 5a       	movw	$0x0:s,r0
    4adc:	e3 1d       	br	*-0x4a82 <.L49>:s

00004ade <.L6>:
    4ade:	48 ac       	loadd	0x18:s(r9,r8),(r5,r4)
    4ae0:	00 54       	movd	$0x0:s,(r1,r0)
    4ae2:	10 01       	push	$0x2,r0
    4ae4:	16 5a       	movw	$0x1:s,r6
    4ae6:	a2 55       	movd	(r11,r10),(r3,r2)
    4ae8:	dc 00       	jal	(r12)

00004aea <.LVL26>:
    4aea:	4f 60       	addd	$0x4:s,(sp)
    4aec:	90 56       	cmpd	$-1:s,(r1,r0)
    4aee:	06 12       	beq	*+0x4b3a <.L56>:s

00004af0 <.L8>:
    4af0:	28 94       	loadw	0x8:s(r9,r8),r2
    4af2:	c8 af 24 00 	loadd	0x24:m(r9,r8),(r12)
    4af6:	e0 19       	br	*-0x4a16 <.L7>:s

00004af8 <.L55>:
    4af8:	2a 90       	loadw	0x0:s(r11,r10),r2
    4afa:	02 52       	cmpw	$0x0:s,r2
    4afc:	10 11       	bne	*+0x4b1c <.L57>:s
    4afe:	48 94       	loadw	0x8:s(r9,r8),r4
    4b00:	43 5b       	movw	r4,r3
    4b02:	b3 22 ff f7 	andw	$0xf7ff:m,r3
    4b06:	38 d4       	storw	r3,0x8:s(r9,r8)
    4b08:	28 d2       	storw	r2,0x4:s(r9,r8)
    4b0a:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    4b0c:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    4b0e:	b4 22 00 10 	andw	$0x1000:m,r4
    4b12:	04 52       	cmpw	$0x0:s,r4
    4b14:	06 1a       	beq	*-0x4a60 <.L17>:s

00004b16 <.L22>:
    4b16:	08 df 4a 00 	storw	r0,0x4a:m(r9,r8)
    4b1a:	e3 1a       	br	*-0x4a60 <.L17>:s

00004b1c <.L57>:
    4b1c:	b2 52 1d 00 	cmpw	$0x1d:m,r2
    4b20:	04 10       	beq	*+0x4b28 <.L15>:s
    4b22:	b2 52 16 00 	cmpw	$0x16:m,r2
    4b26:	1f 1c       	bne	*-0x4ac4 <.L51>:s

00004b28 <.L15>:
    4b28:	08 94       	loadw	0x8:s(r9,r8),r0
    4b2a:	b0 22 ff f7 	andw	$0xf7ff:m,r0
    4b2e:	08 d4       	storw	r0,0x8:s(r9,r8)
    4b30:	08 c3 04 00 	storw	$0x0:s,0x4:m(r9,r8)
    4b34:	08 a6       	loadd	0xc:s(r9,r8),(r1,r0)
    4b36:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    4b38:	e4 19       	br	*-0x4a60 <.L17>:s

00004b3a <.L56>:
    4b3a:	2a 90       	loadw	0x0:s(r11,r10),r2
    4b3c:	02 52       	cmpw	$0x0:s,r2
    4b3e:	09 1d       	beq	*-0x4af0 <.L8>:s

00004b40 <.LBB3>:
    4b40:	b2 52 16 00 	cmpw	$0x16:m,r2
    4b44:	00 08       	seq	r0
    4b46:	00 52       	cmpw	$0x0:s,r0
    4b48:	16 10       	bne	*+0x4b54 <.L25>:s
    4b4a:	b2 52 1d 00 	cmpw	$0x1d:m,r2
    4b4e:	00 08       	seq	r0
    4b50:	00 52       	cmpw	$0x0:s,r0
    4b52:	09 1b       	beq	*-0x4ac4 <.L51>:s

00004b54 <.L25>:
    4b54:	7a d0       	storw	r7,0x0:s(r11,r10)
    4b56:	00 5a       	movw	$0x0:s,r0

00004b58 <.LBE3>:
    4b58:	67 02       	pop	$0x7,r7
    4b5a:	1e 03       	popret	RA

00004b5c <__fflush_r>:
    4b5c:	1e 01       	push	RA
    4b5e:	38 01       	push	$0x4,r8
    4b60:	28 55       	movd	(r3,r2),(r9,r8)
    4b62:	4a 55       	movd	(r5,r4),(r11,r10)
    4b64:	02 56       	cmpd	$0x0:s,(r3,r2)
    4b66:	05 10       	beq	*+0x4b70 <.L59>:s
    4b68:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    4b6c:	00 52       	cmpw	$0x0:s,r0
    4b6e:	0d 10       	beq	*+0x4b88 <.L66>:s

00004b70 <.L59>:
    4b70:	1a 94       	loadw	0x8:s(r11,r10),r1
    4b72:	00 5a       	movw	$0x0:s,r0
    4b74:	01 53       	cmpw	r0,r1
    4b76:	13 10       	bne	*+0x4b7c <.L67>:s
    4b78:	38 02       	pop	$0x4,r8
    4b7a:	1e 03       	popret	RA

00004b7c <.L67>:
    4b7c:	a4 55       	movd	(r11,r10),(r5,r4)
    4b7e:	82 55       	movd	(r9,r8),(r3,r2)
    4b80:	ff c0 5d fe 	bal	(ra),*-0x49dc <___sflush_r>:m

00004b84 <.LVL34>:
    4b84:	38 02       	pop	$0x4,r8
    4b86:	1e 03       	popret	RA

00004b88 <.L66>:
    4b88:	00 c0 fc 00 	bal	(ra),*+0x4c84 <___sinit>:m

00004b8c <.LVL36>:
    4b8c:	e2 1f       	br	*-0x4b70 <.L59>:s

00004b8e <.LFE1>:
	...

00004b90 <_fflush>:
    4b90:	1e 01       	push	RA
    4b92:	02 56       	cmpd	$0x0:s,(r3,r2)
    4b94:	08 10       	beq	*+0x4ba4 <.L71>:s
    4b96:	24 55       	movd	(r3,r2),(r5,r4)
    4b98:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    4b9c:	08 a8 
    4b9e:	ff c0 bf ff 	bal	(ra),*-0x4b5c <__fflush_r>:m

00004ba2 <.LVL39>:
    4ba2:	1e 03       	popret	RA

00004ba4 <.L71>:
    4ba4:	74 00 00 00 	movd	$0x25ae:l,(r5,r4)
    4ba8:	ae 25 
    4baa:	12 00 20 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r3,r2)
    4bae:	b8 9e 
    4bb0:	00 c0 70 05 	bal	(ra),*+0x5120 <__fwalk_reent>:m

00004bb4 <.LVL42>:
    4bb4:	1e 03       	popret	RA
	...

00004bb8 <___fp_lock>:
    4bb8:	00 5a       	movw	$0x0:s,r0
    4bba:	ee 0a       	jump	(ra)

00004bbc <___fp_unlock>:
    4bbc:	00 5a       	movw	$0x0:s,r0
    4bbe:	ee 0a       	jump	(ra)

00004bc0 <__cleanup_r>:
    4bc0:	1e 01       	push	RA
    4bc2:	74 00 00 00 	movd	$0x3d5c:l,(r5,r4)
    4bc6:	5c 3d 
    4bc8:	00 c0 00 05 	bal	(ra),*+0x50c8 <__fwalk>:m

00004bcc <.LVL3>:
    4bcc:	1e 03       	popret	RA

00004bce <.LFE2>:
	...

00004bd0 <_std.isra.0>:
    4bd0:	1e 01       	push	RA
    4bd2:	18 01       	push	$0x2,r8
    4bd4:	28 55       	movd	(r3,r2),(r9,r8)
    4bd6:	00 54       	movd	$0x0:s,(r1,r0)
    4bd8:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
    4bda:	02 c3 04 00 	storw	$0x0:s,0x4:m(r3,r2)
    4bde:	02 c3 06 00 	storw	$0x0:s,0x6:m(r3,r2)
    4be2:	42 d4       	storw	r4,0x8:s(r3,r2)
    4be4:	02 c3 58 00 	storw	$0x0:s,0x58:m(r3,r2)
    4be8:	52 d5       	storw	r5,0xa:s(r3,r2)
    4bea:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    4bec:	02 c3 10 00 	storw	$0x0:s,0x10:m(r3,r2)
    4bf0:	02 c3 14 00 	storw	$0x0:s,0x14:m(r3,r2)
    4bf4:	b2 60 52 00 	addd	$0x52:m,(r3,r2)
    4bf8:	65 54       	movd	$0x6:s,(r6,r5)
    4bfa:	04 5a       	movw	$0x0:s,r4
    4bfc:	ff c0 1d c9 	bal	(ra),*-0x1518 <_memset>:m

00004c00 <.LVL9>:
    4c00:	88 ec       	stord	(r9,r8),0x18:s(r9,r8)
    4c02:	70 00 00 00 	movd	$0x3452:l,(r1,r0)
    4c06:	52 34 
    4c08:	08 ef 1c 00 	stord	(r1,r0),0x1c:m(r9,r8)
    4c0c:	70 00 00 00 	movd	$0x3474:l,(r1,r0)
    4c10:	74 34 
    4c12:	08 ef 20 00 	stord	(r1,r0),0x20:m(r9,r8)
    4c16:	70 00 00 00 	movd	$0x349a:l,(r1,r0)
    4c1a:	9a 34 
    4c1c:	08 ef 24 00 	stord	(r1,r0),0x24:m(r9,r8)
    4c20:	70 00 00 00 	movd	$0x34c0:l,(r1,r0)
    4c24:	c0 34 
    4c26:	08 ef 28 00 	stord	(r1,r0),0x28:m(r9,r8)
    4c2a:	18 02       	pop	$0x2,r8
    4c2c:	1e 03       	popret	RA

00004c2e <.LFE14>:
	...

00004c30 <___sfmoreglue>:
    4c30:	1e 01       	push	RA
    4c32:	47 01       	push	$0x5,r7
    4c34:	28 55       	movd	(r3,r2),(r9,r8)
    4c36:	47 5b       	movw	r4,r7
    4c38:	42 5e       	movxw	r4,(r3,r2)
    4c3a:	b4 54 5c 00 	movd	$0x5c:m,(r5,r4)
    4c3e:	00 c0 76 3c 	bal	(ra),*+0x88b4 <___mulsi3>:m
    4c42:	0a 5b       	movw	r0,r10
    4c44:	1b 5b       	movw	r1,r11
    4c46:	a4 55       	movd	(r11,r10),(r5,r4)
    4c48:	c4 60       	addd	$0xc:s,(r5,r4)
    4c4a:	82 55       	movd	(r9,r8),(r3,r2)
    4c4c:	00 c0 cc 06 	bal	(ra),*+0x5318 <__malloc_r>:m

00004c50 <.LVL14>:
    4c50:	08 55       	movd	(r1,r0),(r9,r8)
    4c52:	00 56       	cmpd	$0x0:s,(r1,r0)
    4c54:	0b 10       	beq	*+0x4c6a <.L6>:s
    4c56:	02 55       	movd	(r1,r0),(r3,r2)
    4c58:	c2 60       	addd	$0xc:s,(r3,r2)
    4c5a:	00 54       	movd	$0x0:s,(r1,r0)
    4c5c:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    4c5e:	78 d2       	storw	r7,0x4:s(r9,r8)
    4c60:	28 e4       	stord	(r3,r2),0x8:s(r9,r8)
    4c62:	a5 55       	movd	(r11,r10),(r6,r5)
    4c64:	04 5a       	movw	$0x0:s,r4
    4c66:	ff c0 b3 c8 	bal	(ra),*-0x1518 <_memset>:m

00004c6a <.L6>:
    4c6a:	80 5b       	movw	r8,r0
    4c6c:	91 5b       	movw	r9,r1
    4c6e:	47 02       	pop	$0x5,r7
    4c70:	1e 03       	popret	RA

00004c72 <.LFE1>:
	...

00004c74 <__cleanup>:
    4c74:	1e 01       	push	RA
    4c76:	12 00 20 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r3,r2)
    4c7a:	b8 9e 
    4c7c:	ff c0 45 ff 	bal	(ra),*-0x4bc0 <__cleanup_r>:m

00004c80 <.LVL19>:
    4c80:	1e 03       	popret	RA

00004c82 <.LFE4>:
	...

00004c84 <___sinit>:
    4c84:	1e 01       	push	RA
    4c86:	18 01       	push	$0x2,r8
    4c88:	28 55       	movd	(r3,r2),(r9,r8)
    4c8a:	52 9f 34 00 	loadw	0x34:m(r3,r2),r5
    4c8e:	05 52       	cmpw	$0x0:s,r5
    4c90:	03 10       	beq	*+0x4c96 <.L14>:s
    4c92:	18 02       	pop	$0x2,r8
    4c94:	1e 03       	popret	RA

00004c96 <.L14>:
    4c96:	70 00 00 00 	movd	$0x25e0:l,(r1,r0)
    4c9a:	e0 25 
    4c9c:	02 ef 38 00 	stord	(r1,r0),0x38:m(r3,r2)
    4ca0:	12 c3 34 00 	storw	$0x1:s,0x34:m(r3,r2)
    4ca4:	00 54       	movd	$0x0:s,(r1,r0)
    4ca6:	02 ef a0 02 	stord	(r1,r0),0x2a0:m(r3,r2)
    4caa:	32 c3 a4 02 	storw	$0x3:s,0x2a4:m(r3,r2)
    4cae:	20 55       	movd	(r3,r2),(r1,r0)
    4cb0:	b0 60 ac 02 	addd	$0x2ac:m,(r1,r0)
    4cb4:	02 ef a8 02 	stord	(r1,r0),0x2a8:m(r3,r2)
    4cb8:	22 a2       	loadd	0x4:s(r3,r2),(r3,r2)
    4cba:	44 5a       	movw	$0x4:s,r4
    4cbc:	ff c0 15 ff 	bal	(ra),*-0x4bd0 <_std.isra.0>:m

00004cc0 <.LVL22>:
    4cc0:	28 a4       	loadd	0x8:s(r9,r8),(r3,r2)
    4cc2:	15 5a       	movw	$0x1:s,r5
    4cc4:	b4 5a 09 00 	movw	$0x9:m,r4
    4cc8:	ff c0 09 ff 	bal	(ra),*-0x4bd0 <_std.isra.0>:m

00004ccc <.LVL23>:
    4ccc:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    4cce:	25 5a       	movw	$0x2:s,r5
    4cd0:	b4 5a 12 00 	movw	$0x12:m,r4
    4cd4:	ff c0 fd fe 	bal	(ra),*-0x4bd0 <_std.isra.0>:m

00004cd8 <.LVL24>:
    4cd8:	18 02       	pop	$0x2,r8
    4cda:	1e 03       	popret	RA

00004cdc <___sfp>:
    4cdc:	1e 01       	push	RA
    4cde:	58 01       	push	$0x6,r8
    4ce0:	2c 55       	movd	(r3,r2),(r12)
    4ce2:	12 00 a0 b0 	loadd	0x9eb8 <__global_impure_ptr>:l,(r11,r10)
    4ce6:	b8 9e 
    4ce8:	0a 9f 34 00 	loadw	0x34:m(r11,r10),r0
    4cec:	00 52       	cmpw	$0x0:s,r0
    4cee:	0a 13       	beq	*+0x4d62 <.L33>:s

00004cf0 <.L16>:
    4cf0:	ba 60 a0 02 	addd	$0x2a0:m,(r11,r10)

00004cf4 <.L24>:
    4cf4:	8a a4       	loadd	0x8:s(r11,r10),(r9,r8)
    4cf6:	0a 92       	loadw	0x4:s(r11,r10),r0
    4cf8:	90 32       	addw	$-1:s,r0
    4cfa:	00 52       	cmpw	$0x0:s,r0
    4cfc:	77 10       	ble	*+0x4d0a <.L21>:s
    4cfe:	ed 12       	br	*+0x4d58 <.L17>:s

00004d00 <.L34>:
    4d00:	b8 60 5c 00 	addd	$0x5c:m,(r9,r8)
    4d04:	90 32       	addw	$-1:s,r0
    4d06:	90 52       	cmpw	$-1:s,r0
    4d08:	08 12       	beq	*+0x4d58 <.L17>:s

00004d0a <.L21>:
    4d0a:	18 94       	loadw	0x8:s(r9,r8),r1
    4d0c:	01 52       	cmpw	$0x0:s,r1
    4d0e:	19 1f       	bne	*-0x4d00 <.L34>:s

00004d10 <.L18>:
    4d10:	90 5a       	movw	$-1:s,r0
    4d12:	08 d5       	storw	r0,0xa:s(r9,r8)
    4d14:	18 c3 08 00 	storw	$0x1:s,0x8:m(r9,r8)
    4d18:	08 c3 58 00 	storw	$0x0:s,0x58:m(r9,r8)
    4d1c:	0a 54       	movd	$0x0:s,(r11,r10)
    4d1e:	a8 e0       	stord	(r11,r10),0x0:s(r9,r8)
    4d20:	08 c3 06 00 	storw	$0x0:s,0x6:m(r9,r8)
    4d24:	08 c3 04 00 	storw	$0x0:s,0x4:m(r9,r8)
    4d28:	a8 e6       	stord	(r11,r10),0xc:s(r9,r8)
    4d2a:	08 c3 10 00 	storw	$0x0:s,0x10:m(r9,r8)
    4d2e:	08 c3 14 00 	storw	$0x0:s,0x14:m(r9,r8)
    4d32:	82 55       	movd	(r9,r8),(r3,r2)
    4d34:	b2 60 52 00 	addd	$0x52:m,(r3,r2)
    4d38:	65 54       	movd	$0x6:s,(r6,r5)
    4d3a:	04 5a       	movw	$0x0:s,r4
    4d3c:	ff c0 dd c7 	bal	(ra),*-0x1518 <_memset>:m

00004d40 <.LVL35>:
    4d40:	a8 ef 2c 00 	stord	(r11,r10),0x2c:m(r9,r8)
    4d44:	08 c3 30 00 	storw	$0x0:s,0x30:m(r9,r8)
    4d48:	a8 ef 40 00 	stord	(r11,r10),0x40:m(r9,r8)
    4d4c:	08 c3 44 00 	storw	$0x0:s,0x44:m(r9,r8)

00004d50 <.L25>:
    4d50:	80 5b       	movw	r8,r0
    4d52:	91 5b       	movw	r9,r1
    4d54:	58 02       	pop	$0x6,r8
    4d56:	1e 03       	popret	RA

00004d58 <.L17>:
    4d58:	0a a0       	loadd	0x0:s(r11,r10),(r1,r0)
    4d5a:	00 56       	cmpd	$0x0:s,(r1,r0)
    4d5c:	07 10       	beq	*+0x4d6a <.L35>:s

00004d5e <.L22>:
    4d5e:	0a 55       	movd	(r1,r0),(r11,r10)
    4d60:	ea 1c       	br	*-0x4cf4 <.L24>:s

00004d62 <.L33>:
    4d62:	a2 55       	movd	(r11,r10),(r3,r2)
    4d64:	ff c0 21 ff 	bal	(ra),*-0x4c84 <___sinit>:m

00004d68 <.LVL42>:
    4d68:	e4 1c       	br	*-0x4cf0 <.L16>:s

00004d6a <.L35>:
    4d6a:	44 5a       	movw	$0x4:s,r4
    4d6c:	c2 55       	movd	(r12),(r3,r2)
    4d6e:	ff c0 c3 fe 	bal	(ra),*-0x4c30 <___sfmoreglue>:m

00004d72 <.LVL44>:
    4d72:	0a e0       	stord	(r1,r0),0x0:s(r11,r10)
    4d74:	00 56       	cmpd	$0x0:s,(r1,r0)
    4d76:	14 1f       	bne	*-0x4d5e <.L22>:s
    4d78:	cc c2       	storw	$0xc:s,0x0:s(r12)
    4d7a:	08 55       	movd	(r1,r0),(r9,r8)
    4d7c:	ea 1e       	br	*-0x4d50 <.L25>:s

00004d7e <.LFE2>:
	...

00004d80 <___sfp_lock_acquire>:
    4d80:	ee 0a       	jump	(ra)

00004d82 <.LFE6>:
	...

00004d84 <___sfp_lock_release>:
    4d84:	ee 0a       	jump	(ra)

00004d86 <.LFE7>:
	...

00004d88 <___sinit_lock_acquire>:
    4d88:	ee 0a       	jump	(ra)

00004d8a <.LFE8>:
	...

00004d8c <___sinit_lock_release>:
    4d8c:	ee 0a       	jump	(ra)

00004d8e <.LFE9>:
	...

00004d90 <___fp_lock_all>:
    4d90:	1e 01       	push	RA
    4d92:	74 00 00 00 	movd	$0x25dc:l,(r5,r4)
    4d96:	dc 25 
    4d98:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    4d9c:	08 a8 
    4d9e:	00 c0 2a 03 	bal	(ra),*+0x50c8 <__fwalk>:m

00004da2 <.LVL46>:
    4da2:	1e 03       	popret	RA

00004da4 <___fp_unlock_all>:
    4da4:	1e 01       	push	RA
    4da6:	74 00 00 00 	movd	$0x25de:l,(r5,r4)
    4daa:	de 25 
    4dac:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    4db0:	08 a8 
    4db2:	00 c0 16 03 	bal	(ra),*+0x50c8 <__fwalk>:m

00004db6 <.LVL47>:
    4db6:	1e 03       	popret	RA

00004db8 <__malloc_trim_r>:
    4db8:	9d 01       	push	$0x2,r13,RA
    4dba:	58 01       	push	$0x6,r8
    4dbc:	2a 55       	movd	(r3,r2),(r11,r10)
    4dbe:	4d 55       	movd	(r5,r4),(r13)
    4dc0:	00 c0 3c 0e 	bal	(ra),*+0x5bfc <___malloc_lock>:m

00004dc4 <.LVL2>:
    4dc4:	12 00 00 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r1,r0)
    4dc8:	58 ac 
    4dca:	c0 a2       	loadd	0x4:s(r1,r0),(r12)
    4dcc:	4c 00 ff ff 	andd	$0xfffffffc:l,(r12)
    4dd0:	fc ff 
    4dd2:	c8 55       	movd	(r12),(r9,r8)
    4dd4:	b8 60 ef 0f 	addd	$0xfef:m,(r9,r8)
    4dd8:	14 00 d8 c0 	subd	(r13),(r9,r8)
    4ddc:	48 00 ff ff 	andd	$0xfffff000:l,(r9,r8)
    4de0:	00 f0 
    4de2:	b8 60 00 f0 	addd	$0xf000:m,(r9,r8)
    4de6:	b8 56 ff 0f 	cmpd	$0xfff:m,(r9,r8)
    4dea:	db 10       	bge	*+0x4e00 <.L4>:s
    4dec:	04 54       	movd	$0x0:s,(r5,r4)
    4dee:	a2 55       	movd	(r11,r10),(r3,r2)
    4df0:	00 c0 80 1a 	bal	(ra),*+0x6870 <__sbrk_r>:m

00004df4 <.LVL5>:
    4df4:	12 00 20 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r3,r2)
    4df8:	58 ac 
    4dfa:	c2 61       	addd	(r12),(r3,r2)
    4dfc:	20 57       	cmpd	(r3,r2),(r1,r0)
    4dfe:	07 10       	beq	*+0x4e0c <.L7>:s

00004e00 <.L4>:
    4e00:	a2 55       	movd	(r11,r10),(r3,r2)
    4e02:	00 c0 fe 0d 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00004e06 <.LVL7>:
    4e06:	00 5a       	movw	$0x0:s,r0
    4e08:	58 02       	pop	$0x6,r8
    4e0a:	9d 03       	popret	$0x2,r13,RA

00004e0c <.L7>:
    4e0c:	0d 54       	movd	$0x0:s,(r13)
    4e0e:	d4 55       	movd	(r13),(r5,r4)
    4e10:	14 00 84 c0 	subd	(r9,r8),(r5,r4)
    4e14:	a2 55       	movd	(r11,r10),(r3,r2)
    4e16:	00 c0 5a 1a 	bal	(ra),*+0x6870 <__sbrk_r>:m

00004e1a <.LVL10>:
    4e1a:	90 56       	cmpd	$-1:s,(r1,r0)
    4e1c:	07 11       	beq	*+0x4e4a <.L8>:s
    4e1e:	14 00 8c c0 	subd	(r9,r8),(r12)
    4e22:	5c 00 00 00 	ord	$0x1:l,(r12)
    4e26:	01 00 
    4e28:	12 00 00 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r1,r0)
    4e2c:	58 ac 
    4e2e:	c0 e2       	stord	(r12),0x4:s(r1,r0)
    4e30:	12 00 00 f0 	loadw	0xb064 <___malloc_current_mallinfo>:l,r0
    4e34:	64 b0 
    4e36:	80 3b       	subw	r8,r0
    4e38:	13 00 00 f0 	storw	r0,0xb064 <___malloc_current_mallinfo>:l
    4e3c:	64 b0 
    4e3e:	a2 55       	movd	(r11,r10),(r3,r2)
    4e40:	00 c0 c0 0d 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00004e44 <.LVL13>:
    4e44:	10 5a       	movw	$0x1:s,r0
    4e46:	58 02       	pop	$0x6,r8
    4e48:	9d 03       	popret	$0x2,r13,RA

00004e4a <.L8>:
    4e4a:	d4 55       	movd	(r13),(r5,r4)
    4e4c:	a2 55       	movd	(r11,r10),(r3,r2)
    4e4e:	00 c0 22 1a 	bal	(ra),*+0x6870 <__sbrk_r>:m

00004e52 <.LVL15>:
    4e52:	02 5b       	movw	r0,r2
    4e54:	13 5b       	movw	r1,r3
    4e56:	12 00 40 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r5,r4)
    4e5a:	58 ac 
    4e5c:	28 55       	movd	(r3,r2),(r9,r8)
    4e5e:	14 00 48 c0 	subd	(r5,r4),(r9,r8)
    4e62:	f8 56       	cmpd	$0xf:s,(r9,r8)
    4e64:	de 1c       	bge	*-0x4e00 <.L4>:s
    4e66:	12 00 00 b0 	loadd	0xac48 <___malloc_sbrk_base>:l,(r1,r0)
    4e6a:	48 ac 
    4e6c:	14 00 02 c0 	subd	(r1,r0),(r3,r2)
    4e70:	13 00 20 f0 	storw	r2,0xb064 <___malloc_current_mallinfo>:l
    4e74:	64 b0 
    4e76:	58 00 00 00 	ord	$0x1:l,(r9,r8)
    4e7a:	01 00 
    4e7c:	84 e2       	stord	(r9,r8),0x4:s(r5,r4)
    4e7e:	e1 1c       	br	*-0x4e00 <.L4>:s

00004e80 <__free_r>:
    4e80:	9d 01       	push	$0x2,r13,RA
    4e82:	67 01       	push	$0x7,r7
    4e84:	28 55       	movd	(r3,r2),(r9,r8)
    4e86:	4a 55       	movd	(r5,r4),(r11,r10)
    4e88:	04 56       	cmpd	$0x0:s,(r5,r4)
    4e8a:	04 17       	beq	*+0x4f72 <.L9>:s
    4e8c:	00 c0 70 0d 	bal	(ra),*+0x5bfc <___malloc_lock>:m

00004e90 <.LVL22>:
    4e90:	a4 55       	movd	(r11,r10),(r5,r4)
    4e92:	b4 60 f8 ff 	addd	$0xfff8:m,(r5,r4)
    4e96:	e4 a2       	loadd	0x4:s(r5,r4),(ra)
    4e98:	e0 55       	movd	(ra),(r1,r0)
    4e9a:	40 00 ff ff 	andd	$0xfffffffe:l,(r1,r0)
    4e9e:	fe ff 
    4ea0:	46 55       	movd	(r5,r4),(r7,r6)
    4ea2:	06 61       	addd	(r1,r0),(r7,r6)
    4ea4:	a6 a2       	loadd	0x4:s(r7,r6),(r11,r10)
    4ea6:	4a 00 ff ff 	andd	$0xfffffffc:l,(r11,r10)
    4eaa:	fc ff 
    4eac:	12 00 20 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r3,r2)
    4eb0:	58 ac 
    4eb2:	62 57       	cmpd	(r7,r6),(r3,r2)
    4eb4:	00 18 00 01 	beq	*+0x4fb4 <.L39>:m
    4eb8:	a6 e2       	stord	(r11,r10),0x4:s(r7,r6)
    4eba:	e2 55       	movd	(ra),(r3,r2)
    4ebc:	42 00 00 00 	andd	$0x1:l,(r3,r2)
    4ec0:	01 00 
    4ec2:	0c 5a       	movw	$0x0:s,r12
    4ec4:	02 56       	cmpd	$0x0:s,(r3,r2)
    4ec6:	1e 10       	bne	*+0x4ee2 <.L15>:s
    4ec8:	24 a0       	loadd	0x0:s(r5,r4),(r3,r2)
    4eca:	14 00 24 c0 	subd	(r3,r2),(r5,r4)
    4ece:	20 61       	addd	(r3,r2),(r1,r0)
    4ed0:	24 a4       	loadd	0x8:s(r5,r4),(r3,r2)
    4ed2:	d0 05 58 ac 	movd	$0xac58:m,(r13)
    4ed6:	d2 57       	cmpd	(r13),(r3,r2)
    4ed8:	00 18 20 01 	beq	*+0x4ff8 <.L32>:m
    4edc:	e4 a6       	loadd	0xc:s(r5,r4),(ra)
    4ede:	e2 e6       	stord	(ra),0xc:s(r3,r2)
    4ee0:	2e e4       	stord	(r3,r2),0x8:s(ra)

00004ee2 <.L15>:
    4ee2:	62 55       	movd	(r7,r6),(r3,r2)
    4ee4:	a2 61       	addd	(r11,r10),(r3,r2)
    4ee6:	22 a2       	loadd	0x4:s(r3,r2),(r3,r2)
    4ee8:	42 00 00 00 	andd	$0x1:l,(r3,r2)
    4eec:	01 00 
    4eee:	02 56       	cmpd	$0x0:s,(r3,r2)
    4ef0:	1d 10       	bne	*+0x4f0a <.L16>:s
    4ef2:	a0 61       	addd	(r11,r10),(r1,r0)
    4ef4:	26 a4       	loadd	0x8:s(r7,r6),(r3,r2)
    4ef6:	0c 52       	cmpw	$0x0:s,r12
    4ef8:	16 10       	bne	*+0x4f04 <.L18>:s
    4efa:	a0 05 58 ac 	movd	$0xac58:m,(r11,r10)
    4efe:	a2 57       	cmpd	(r11,r10),(r3,r2)
    4f00:	00 18 fe 00 	beq	*+0x4ffe <.L40>:m

00004f04 <.L18>:
    4f04:	66 a6       	loadd	0xc:s(r7,r6),(r7,r6)
    4f06:	62 e6       	stord	(r7,r6),0xc:s(r3,r2)
    4f08:	26 e4       	stord	(r3,r2),0x8:s(r7,r6)

00004f0a <.L16>:
    4f0a:	02 55       	movd	(r1,r0),(r3,r2)
    4f0c:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    4f10:	01 00 
    4f12:	24 e2       	stord	(r3,r2),0x4:s(r5,r4)
    4f14:	42 55       	movd	(r5,r4),(r3,r2)
    4f16:	02 61       	addd	(r1,r0),(r3,r2)
    4f18:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
    4f1a:	0c 52       	cmpw	$0x0:s,r12
    4f1c:	18 12       	bne	*+0x4f6c <.L14>:s
    4f1e:	b0 56 ff 01 	cmpd	$0x1ff:m,(r1,r0)
    4f22:	ba 12       	bhs	*+0x4f76 <.L41>:s
    4f24:	0a 55       	movd	(r1,r0),(r11,r10)
    4f26:	7a 4b       	lshd	$-9:s,(r11,r10)
    4f28:	4a 56       	cmpd	$0x4:s,(r11,r10)
    4f2a:	aa 17       	blo	*+0x501e <.L21>:s
    4f2c:	0a 55       	movd	(r1,r0),(r11,r10)
    4f2e:	aa 4b       	lshd	$-6:s,(r11,r10)
    4f30:	a6 5b       	movw	r10,r6
    4f32:	b6 32 38 00 	addw	$0x38:m,r6
    4f36:	ba 32 39 00 	addw	$0x39:m,r10
    4f3a:	aa 33       	addw	r10,r10
    4f3c:	aa 5e       	movxw	r10,(r11,r10)
    4f3e:	ba 60 fe ff 	addd	$0xfffe:m,(r11,r10)

00004f42 <.L22>:
    4f42:	2a 4c       	ashud	$2:s,(r11,r10)
    4f44:	20 05 50 ac 	movd	$0xac50:m,(r3,r2)
    4f48:	2a 61       	addd	(r3,r2),(r11,r10)
    4f4a:	2a a4       	loadd	0x8:s(r11,r10),(r3,r2)
    4f4c:	a2 57       	cmpd	(r11,r10),(r3,r2)
    4f4e:	05 17       	beq	*+0x5038 <.L42>:s

00004f50 <.L36>:
    4f50:	62 a2       	loadd	0x4:s(r3,r2),(r7,r6)
    4f52:	46 00 ff ff 	andd	$0xfffffffc:l,(r7,r6)
    4f56:	fc ff 
    4f58:	60 57       	cmpd	(r7,r6),(r1,r0)
    4f5a:	54 10       	bls	*+0x4f62 <.L29>:s
    4f5c:	22 a4       	loadd	0x8:s(r3,r2),(r3,r2)
    4f5e:	2a 57       	cmpd	(r3,r2),(r11,r10)
    4f60:	18 1f       	bne	*-0x4f50 <.L36>:s

00004f62 <.L29>:
    4f62:	02 a6       	loadd	0xc:s(r3,r2),(r1,r0)

00004f64 <.L27>:
    4f64:	04 e6       	stord	(r1,r0),0xc:s(r5,r4)
    4f66:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    4f68:	40 e4       	stord	(r5,r4),0x8:s(r1,r0)
    4f6a:	42 e6       	stord	(r5,r4),0xc:s(r3,r2)

00004f6c <.L14>:
    4f6c:	82 55       	movd	(r9,r8),(r3,r2)
    4f6e:	00 c0 92 0c 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00004f72 <.L9>:
    4f72:	67 02       	pop	$0x7,r7
    4f74:	9d 03       	popret	$0x2,r13,RA

00004f76 <.L41>:
    4f76:	d0 4b       	lshd	$-3:s,(r1,r0)
    4f78:	01 5b       	movw	r0,r1
    4f7a:	e1 43       	ashuw	$-2:s,r1
    4f7c:	16 54       	movd	$0x1:s,(r7,r6)
    4f7e:	16 48       	ashud	r1,(r7,r6)
    4f80:	12 00 20 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r3,r2)
    4f84:	54 ac 
    4f86:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    4f8a:	13 00 60 b0 	stord	(r7,r6),0xac54 <___malloc_av_+0x4>:l
    4f8e:	54 ac 
    4f90:	10 32       	addw	$0x1:s,r0
    4f92:	00 33       	addw	r0,r0
    4f94:	00 5e       	movxw	r0,(r1,r0)
    4f96:	b0 60 fe ff 	addd	$0xfffe:m,(r1,r0)
    4f9a:	20 4c       	ashud	$2:s,(r1,r0)
    4f9c:	20 05 50 ac 	movd	$0xac50:m,(r3,r2)
    4fa0:	20 61       	addd	(r3,r2),(r1,r0)
    4fa2:	20 a4       	loadd	0x8:s(r1,r0),(r3,r2)
    4fa4:	04 e6       	stord	(r1,r0),0xc:s(r5,r4)
    4fa6:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    4fa8:	40 e4       	stord	(r5,r4),0x8:s(r1,r0)
    4faa:	42 e6       	stord	(r5,r4),0xc:s(r3,r2)
    4fac:	82 55       	movd	(r9,r8),(r3,r2)
    4fae:	00 c0 52 0c 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00004fb2 <.LVL56>:
    4fb2:	e0 1e       	br	*-0x4f72 <.L9>:s

00004fb4 <.L39>:
    4fb4:	a0 61       	addd	(r11,r10),(r1,r0)
    4fb6:	4e 00 00 00 	andd	$0x1:l,(ra)
    4fba:	01 00 
    4fbc:	0e 56       	cmpd	$0x0:s,(ra)
    4fbe:	19 10       	bne	*+0x4fd0 <.L12>:s
    4fc0:	24 a0       	loadd	0x0:s(r5,r4),(r3,r2)
    4fc2:	14 00 24 c0 	subd	(r3,r2),(r5,r4)
    4fc6:	20 61       	addd	(r3,r2),(r1,r0)
    4fc8:	24 a6       	loadd	0xc:s(r5,r4),(r3,r2)
    4fca:	64 a4       	loadd	0x8:s(r5,r4),(r7,r6)
    4fcc:	26 e6       	stord	(r3,r2),0xc:s(r7,r6)
    4fce:	62 e4       	stord	(r7,r6),0x8:s(r3,r2)

00004fd0 <.L12>:
    4fd0:	02 55       	movd	(r1,r0),(r3,r2)
    4fd2:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    4fd6:	01 00 
    4fd8:	24 e2       	stord	(r3,r2),0x4:s(r5,r4)
    4fda:	13 00 40 b0 	stord	(r5,r4),0xac58 <___malloc_av_+0x8>:l
    4fde:	58 ac 
    4fe0:	12 00 20 b0 	loadd	0xac4c <___malloc_trim_threshold>:l,(r3,r2)
    4fe4:	4c ac 
    4fe6:	20 57       	cmpd	(r3,r2),(r1,r0)
    4fe8:	42 1c       	bhi	*-0x4f6c <.L14>:s
    4fea:	12 00 40 b0 	loadd	0xb080 <___malloc_top_pad>:l,(r5,r4)
    4fee:	80 b0 
    4ff0:	82 55       	movd	(r9,r8),(r3,r2)
    4ff2:	ff c0 c7 fd 	bal	(ra),*-0x4db8 <__malloc_trim_r>:m

00004ff6 <.LVL67>:
    4ff6:	eb 1b       	br	*-0x4f6c <.L14>:s

00004ff8 <.L32>:
    4ff8:	1c 5a       	movw	$0x1:s,r12
    4ffa:	e0 18 e9 fe 	br	*-0x4ee2 <.L15>:m

00004ffe <.L40>:
    4ffe:	13 00 40 b0 	stord	(r5,r4),0xac64 <.LLST16+0x2>:l
    5002:	64 ac 
    5004:	13 00 40 b0 	stord	(r5,r4),0xac60 <___malloc_av_+0x10>:l
    5008:	60 ac 
    500a:	24 e6       	stord	(r3,r2),0xc:s(r5,r4)
    500c:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    500e:	02 55       	movd	(r1,r0),(r3,r2)
    5010:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    5014:	01 00 
    5016:	24 e2       	stord	(r3,r2),0x4:s(r5,r4)
    5018:	04 61       	addd	(r1,r0),(r5,r4)
    501a:	04 e0       	stord	(r1,r0),0x0:s(r5,r4)
    501c:	e8 1a       	br	*-0x4f6c <.L14>:s

0000501e <.L21>:
    501e:	ba 56 14 00 	cmpd	$0x14:m,(r11,r10)
    5022:	ac 11       	blo	*+0x505a <.L23>:s
    5024:	a6 5b       	movw	r10,r6
    5026:	b6 32 5b 00 	addw	$0x5b:m,r6
    502a:	ba 32 5c 00 	addw	$0x5c:m,r10
    502e:	aa 33       	addw	r10,r10
    5030:	aa 5e       	movxw	r10,(r11,r10)
    5032:	ba 60 fe ff 	addd	$0xfffe:m,(r11,r10)
    5036:	e6 18       	br	*-0x4f42 <.L22>:s

00005038 <.L42>:
    5038:	60 5b       	movw	r6,r0
    503a:	10 43       	ashuw	$-15:s,r0
    503c:	30 22       	andw	$0x3:s,r0
    503e:	06 33       	addw	r0,r6
    5040:	e6 43       	ashuw	$-2:s,r6
    5042:	1a 54       	movd	$0x1:s,(r11,r10)
    5044:	6a 48       	ashud	r6,(r11,r10)
    5046:	12 00 00 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r1,r0)
    504a:	54 ac 
    504c:	14 00 0a 90 	ord	(r1,r0),(r11,r10)
    5050:	13 00 a0 b0 	stord	(r11,r10),0xac54 <___malloc_av_+0x4>:l
    5054:	54 ac 
    5056:	20 55       	movd	(r3,r2),(r1,r0)
    5058:	e6 18       	br	*-0x4f64 <.L27>:s

0000505a <.L23>:
    505a:	ba 56 54 00 	cmpd	$0x54:m,(r11,r10)
    505e:	ae 10       	blo	*+0x507a <.L24>:s
    5060:	0a 55       	movd	(r1,r0),(r11,r10)
    5062:	4a 4b       	lshd	$-12:s,(r11,r10)
    5064:	a6 5b       	movw	r10,r6
    5066:	b6 32 6e 00 	addw	$0x6e:m,r6
    506a:	ba 32 6f 00 	addw	$0x6f:m,r10
    506e:	aa 33       	addw	r10,r10
    5070:	aa 5e       	movxw	r10,(r11,r10)
    5072:	ba 60 fe ff 	addd	$0xfffe:m,(r11,r10)
    5076:	e0 18 cd fe 	br	*-0x4f42 <.L22>:m

0000507a <.L24>:
    507a:	ba 56 54 01 	cmpd	$0x154:m,(r11,r10)
    507e:	ae 10       	blo	*+0x509a <.L25>:s
    5080:	0a 55       	movd	(r1,r0),(r11,r10)
    5082:	1a 4b       	lshd	$-15:s,(r11,r10)
    5084:	a6 5b       	movw	r10,r6
    5086:	b6 32 77 00 	addw	$0x77:m,r6
    508a:	ba 32 78 00 	addw	$0x78:m,r10
    508e:	aa 33       	addw	r10,r10
    5090:	aa 5e       	movxw	r10,(r11,r10)
    5092:	ba 60 fe ff 	addd	$0xfffe:m,(r11,r10)
    5096:	e0 18 ad fe 	br	*-0x4f42 <.L22>:m

0000509a <.L25>:
    509a:	ba 56 54 05 	cmpd	$0x554:m,(r11,r10)
    509e:	ae 10       	blo	*+0x50ba <.L33>:s
    50a0:	1a 5b       	movw	r1,r10
    50a2:	ea 49       	lshw	$-2:s,r10
    50a4:	a6 5b       	movw	r10,r6
    50a6:	b6 32 7c 00 	addw	$0x7c:m,r6
    50aa:	ba 32 7d 00 	addw	$0x7d:m,r10
    50ae:	aa 33       	addw	r10,r10
    50b0:	aa 5e       	movxw	r10,(r11,r10)
    50b2:	ba 60 fe ff 	addd	$0xfffe:m,(r11,r10)
    50b6:	e0 18 8d fe 	br	*-0x4f42 <.L22>:m

000050ba <.L33>:
    50ba:	ba 54 fc 00 	movd	$0xfc:m,(r11,r10)
    50be:	b6 5a 7e 00 	movw	$0x7e:m,r6
    50c2:	e0 18 81 fe 	br	*-0x4f42 <.L22>:m
	...

000050c8 <__fwalk>:
    50c8:	9d 01       	push	$0x2,r13,RA
    50ca:	67 01       	push	$0x7,r7
    50cc:	2c 55       	movd	(r3,r2),(r12)
    50ce:	4d 55       	movd	(r5,r4),(r13)
    50d0:	bc 60 a0 02 	addd	$0x2a0:m,(r12)
    50d4:	07 5a       	movw	$0x0:s,r7
    50d6:	0c 56       	cmpd	$0x0:s,(r12)
    50d8:	00 12       	beq	*+0x5118 <.L2>:s

000050da <.L6>:
    50da:	8c a4       	loadd	0x8:s(r12),(r9,r8)

000050dc <.LFE0>:
    50dc:	2c 92       	loadw	0x4:s(r12),r2
    50de:	02 52       	cmpw	$0x0:s,r2
    50e0:	d9 11       	bge	*+0x5112 <.L3>:s
    50e2:	92 32       	addw	$-1:s,r2
    50e4:	22 5f       	movzw	r2,(r3,r2)
    50e6:	12 60       	addd	$0x1:s,(r3,r2)
    50e8:	b4 54 5c 00 	movd	$0x5c:m,(r5,r4)
    50ec:	00 c0 c8 37 	bal	(ra),*+0x88b4 <___mulsi3>:m
    50f0:	0a 55       	movd	(r1,r0),(r11,r10)
    50f2:	8a 61       	addd	(r9,r8),(r11,r10)

000050f4 <.L5>:
    50f4:	08 94       	loadw	0x8:s(r9,r8),r0
    50f6:	00 52       	cmpw	$0x0:s,r0
    50f8:	09 10       	beq	*+0x510a <.L4>:s
    50fa:	10 52       	cmpw	$0x1:s,r0
    50fc:	b7 10       	bhs	*+0x510a <.L4>:s
    50fe:	08 95       	loadw	0xa:s(r9,r8),r0
    5100:	90 52       	cmpw	$-1:s,r0
    5102:	04 10       	beq	*+0x510a <.L4>:s
    5104:	82 55       	movd	(r9,r8),(r3,r2)
    5106:	dd 00       	jal	(r13)

00005108 <.LVL9>:
    5108:	07 27       	orw	r0,r7

0000510a <.L4>:
    510a:	b8 60 5c 00 	addd	$0x5c:m,(r9,r8)
    510e:	a8 57       	cmpd	(r11,r10),(r9,r8)
    5110:	12 1f       	bne	*-0x50f4 <.L5>:s

00005112 <.L3>:
    5112:	cc a0       	loadd	0x0:s(r12),(r12)
    5114:	0c 56       	cmpd	$0x0:s,(r12)
    5116:	12 1e       	bne	*-0x50da <.L6>:s

00005118 <.L2>:
    5118:	70 5b       	movw	r7,r0
    511a:	67 02       	pop	$0x7,r7
    511c:	9d 03       	popret	$0x2,r13,RA

0000511e <.LFE0>:
	...

00005120 <__fwalk_reent>:
    5120:	9d 01       	push	$0x2,r13,RA
    5122:	67 01       	push	$0x7,r7
    5124:	bf 60 f8 ff 	addd	$0xfff8:m,(sp)
    5128:	2d 55       	movd	(r3,r2),(r13)
    512a:	4f e0       	stord	(r5,r4),0x0:s(sp)
    512c:	2c 55       	movd	(r3,r2),(r12)
    512e:	bc 60 a0 02 	addd	$0x2a0:m,(r12)
    5132:	07 5a       	movw	$0x0:s,r7
    5134:	0c 56       	cmpd	$0x0:s,(r12)
    5136:	04 12       	beq	*+0x517e <.L18>:s

00005138 <.L22>:
    5138:	8c a4       	loadd	0x8:s(r12),(r9,r8)
    513a:	2c 92       	loadw	0x4:s(r12),r2
    513c:	02 52       	cmpw	$0x0:s,r2
    513e:	dd 11       	bge	*+0x5178 <.L19>:s
    5140:	92 32       	addw	$-1:s,r2
    5142:	22 5f       	movzw	r2,(r3,r2)
    5144:	12 60       	addd	$0x1:s,(r3,r2)
    5146:	b4 54 5c 00 	movd	$0x5c:m,(r5,r4)
    514a:	00 c0 6a 37 	bal	(ra),*+0x88b4 <___mulsi3>:m
    514e:	0a 55       	movd	(r1,r0),(r11,r10)
    5150:	8a 61       	addd	(r9,r8),(r11,r10)
    5152:	cf e2       	stord	(r12),0x4:s(sp)

00005154 <.L21>:
    5154:	08 94       	loadw	0x8:s(r9,r8),r0
    5156:	00 52       	cmpw	$0x0:s,r0
    5158:	0b 10       	beq	*+0x516e <.L20>:s
    515a:	10 52       	cmpw	$0x1:s,r0
    515c:	b9 10       	bhs	*+0x516e <.L20>:s
    515e:	08 95       	loadw	0xa:s(r9,r8),r0
    5160:	90 52       	cmpw	$-1:s,r0
    5162:	06 10       	beq	*+0x516e <.L20>:s
    5164:	84 55       	movd	(r9,r8),(r5,r4)
    5166:	d2 55       	movd	(r13),(r3,r2)
    5168:	cf a0       	loadd	0x0:s(sp),(r12)
    516a:	dc 00       	jal	(r12)

0000516c <.LVL24>:
    516c:	07 27       	orw	r0,r7

0000516e <.L20>:
    516e:	b8 60 5c 00 	addd	$0x5c:m,(r9,r8)
    5172:	a8 57       	cmpd	(r11,r10),(r9,r8)
    5174:	10 1f       	bne	*-0x5154 <.L21>:s
    5176:	cf a2       	loadd	0x4:s(sp),(r12)

00005178 <.L19>:
    5178:	cc a0       	loadd	0x0:s(r12),(r12)
    517a:	0c 56       	cmpd	$0x0:s,(r12)
    517c:	1e 1d       	bne	*-0x5138 <.L22>:s

0000517e <.L18>:
    517e:	70 5b       	movw	r7,r0
    5180:	8f 60       	addd	$0x8:s,(sp)
    5182:	67 02       	pop	$0x7,r7
    5184:	9d 03       	popret	$0x2,r13,RA

00005186 <.LFE1>:
	...

00005188 <__setlocale_r>:
    5188:	1e 01       	push	RA
    518a:	18 01       	push	$0x2,r8
    518c:	58 55       	movd	(r6,r5),(r9,r8)
    518e:	05 56       	cmpd	$0x0:s,(r6,r5)
    5190:	08 10       	beq	*+0x51a0 <.L4>:s
    5192:	40 05 8e a0 	movd	$0xa08e:m,(r5,r4)
    5196:	82 55       	movd	(r9,r8),(r3,r2)
    5198:	00 c0 f4 17 	bal	(ra),*+0x698c <_strcmp>:m

0000519c <.LVL3>:
    519c:	00 52       	cmpw	$0x0:s,r0
    519e:	17 10       	bne	*+0x51ac <.L13>:s

000051a0 <.L4>:
    51a0:	20 05 bc 9e 	movd	$0x9ebc:m,(r3,r2)
    51a4:	20 5b       	movw	r2,r0
    51a6:	31 5b       	movw	r3,r1
    51a8:	18 02       	pop	$0x2,r8
    51aa:	1e 03       	popret	RA

000051ac <.L13>:
    51ac:	40 05 bc 9e 	movd	$0x9ebc:m,(r5,r4)
    51b0:	82 55       	movd	(r9,r8),(r3,r2)
    51b2:	00 c0 da 17 	bal	(ra),*+0x698c <_strcmp>:m

000051b6 <.LVL4>:
    51b6:	00 52       	cmpw	$0x0:s,r0
    51b8:	04 1f       	beq	*-0x51a0 <.L4>:s
    51ba:	40 05 f8 9e 	movd	$0x9ef8:m,(r5,r4)
    51be:	82 55       	movd	(r9,r8),(r3,r2)
    51c0:	00 c0 cc 17 	bal	(ra),*+0x698c <_strcmp>:m

000051c4 <.LVL5>:
    51c4:	20 05 bc 9e 	movd	$0x9ebc:m,(r3,r2)
    51c8:	00 52       	cmpw	$0x0:s,r0
    51ca:	04 08       	seq	r4
    51cc:	44 5f       	movzw	r4,(r5,r4)
    51ce:	00 54       	movd	$0x0:s,(r1,r0)
    51d0:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    51d4:	14 00 02 b0 	andd	(r1,r0),(r3,r2)
    51d8:	20 5b       	movw	r2,r0
    51da:	31 5b       	movw	r3,r1
    51dc:	18 02       	pop	$0x2,r8
    51de:	1e 03       	popret	RA

000051e0 <.LFE0>:
	...

000051e2 <___locale_charset>:
    51e2:	00 05 ce ab 	movd	$0xabce:m,(r1,r0)
    51e6:	ee 0a       	jump	(ra)

000051e8 <___locale_mb_cur_max>:
    51e8:	12 00 00 f0 	loadw	0xabcc <___mb_cur_max>:l,r0
    51ec:	cc ab 
    51ee:	ee 0a       	jump	(ra)

000051f0 <___locale_msgcharset>:
    51f0:	00 05 ee ab 	movd	$0xabee:m,(r1,r0)
    51f4:	ee 0a       	jump	(ra)

000051f6 <___locale_cjk_lang>:
    51f6:	00 5a       	movw	$0x0:s,r0
    51f8:	ee 0a       	jump	(ra)

000051fa <__localeconv_r>:
    51fa:	00 05 10 ac 	movd	$0xac10:m,(r1,r0)
    51fe:	ee 0a       	jump	(ra)

00005200 <_setlocale>:
    5200:	1e 01       	push	RA
    5202:	35 55       	movd	(r4,r3),(r6,r5)
    5204:	24 5b       	movw	r2,r4
    5206:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    520a:	08 a8 
    520c:	ff c0 7d ff 	bal	(ra),*-0x5188 <__setlocale_r>:m

00005210 <.LVL9>:
    5210:	1e 03       	popret	RA

00005212 <.LFE6>:
	...

00005214 <_localeconv>:
    5214:	00 05 10 ac 	movd	$0xac10:m,(r1,r0)
    5218:	ee 0a       	jump	(ra)
	...

0000521c <___smakebuf_r>:
    521c:	9d 01       	push	$0x2,r13,RA
    521e:	67 01       	push	$0x7,r7
    5220:	bf 60 c4 ff 	addd	$0xffc4:m,(sp)
    5224:	2a 55       	movd	(r3,r2),(r11,r10)
    5226:	48 55       	movd	(r5,r4),(r9,r8)
    5228:	04 94       	loadw	0x8:s(r5,r4),r0
    522a:	07 5b       	movw	r0,r7

0000522c <.LFE7>:
    522c:	27 22       	andw	$0x2:s,r7
    522e:	07 52       	cmpw	$0x0:s,r7
    5230:	1a 14       	bne	*+0x52c4 <.L21>:s
    5232:	44 95       	loadw	0xa:s(r5,r4),r4
    5234:	04 52       	cmpw	$0x0:s,r4
    5236:	6c 11       	bgt	*+0x526e <.L4>:s
    5238:	f5 55       	movd	(sp),(r6,r5)
    523a:	00 c0 ae 29 	bal	(ra),*+0x7be8 <__fstat_r>:m

0000523e <.LVL2>:
    523e:	00 52       	cmpw	$0x0:s,r0
    5240:	66 11       	bgt	*+0x526c <.L23>:s
    5242:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    5244:	40 00 00 00 	andd	$0xf000:l,(r1,r0)
    5248:	00 f0 
    524a:	b0 56 00 20 	cmpd	$0x2000:m,(r1,r0)
    524e:	02 08       	seq	r2
    5250:	23 5b       	movw	r2,r3
    5252:	74 5b       	movw	r7,r4
    5254:	3d 55       	movd	(r4,r3),(r13)
    5256:	90 00 00 00 	cmpd	$0x8000:l,(r1,r0)
    525a:	00 80 
    525c:	02 14       	beq	*+0x52e0 <.L24>:s

0000525e <.L8>:
    525e:	08 94       	loadw	0x8:s(r9,r8),r0
    5260:	b0 26 00 08 	orw	$0x800:m,r0
    5264:	08 d4       	storw	r0,0x8:s(r9,r8)
    5266:	bc 54 00 04 	movd	$0x400:m,(r12)
    526a:	ed 10       	br	*+0x5284 <.L7>:s

0000526c <.L23>:
    526c:	08 94       	loadw	0x8:s(r9,r8),r0

0000526e <.L4>:
    526e:	01 5b       	movw	r0,r1
    5270:	b1 22 80 00 	andw	$0x80:m,r1
    5274:	bc 54 00 04 	movd	$0x400:m,(r12)
    5278:	01 52       	cmpw	$0x0:s,r1
    527a:	10 13       	bne	*+0x52da <.L25>:s

0000527c <.L6>:
    527c:	b0 26 00 08 	orw	$0x800:m,r0
    5280:	08 d4       	storw	r0,0x8:s(r9,r8)
    5282:	0d 54       	movd	$0x0:s,(r13)

00005284 <.L7>:
    5284:	c4 55       	movd	(r12),(r5,r4)
    5286:	a2 55       	movd	(r11,r10),(r3,r2)
    5288:	00 c0 90 00 	bal	(ra),*+0x5318 <__malloc_r>:m

0000528c <.LVL9>:
    528c:	00 56       	cmpd	$0x0:s,(r1,r0)
    528e:	03 11       	beq	*+0x52b4 <.L26>:s
    5290:	72 00 00 00 	movd	$0x25e0:l,(r3,r2)
    5294:	e0 25 
    5296:	2a ef 38 00 	stord	(r3,r2),0x38:m(r11,r10)
    529a:	28 94       	loadw	0x8:s(r9,r8),r2
    529c:	b2 26 80 00 	orw	$0x80:m,r2
    52a0:	28 d4       	storw	r2,0x8:s(r9,r8)
    52a2:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    52a4:	08 e6       	stord	(r1,r0),0xc:s(r9,r8)
    52a6:	c8 d8       	storw	r12,0x10:s(r9,r8)
    52a8:	0d 56       	cmpd	$0x0:s,(r13)
    52aa:	1d 12       	bne	*+0x5304 <.L27>:s

000052ac <.L1>:
    52ac:	bf 60 3c 00 	addd	$0x3c:m,(sp)
    52b0:	67 02       	pop	$0x7,r7
    52b2:	9d 03       	popret	$0x2,r13,RA

000052b4 <.L26>:
    52b4:	08 94       	loadw	0x8:s(r9,r8),r0
    52b6:	01 5b       	movw	r0,r1
    52b8:	b1 22 00 02 	andw	$0x200:m,r1
    52bc:	01 52       	cmpw	$0x0:s,r1
    52be:	17 1f       	bne	*-0x52ac <.L1>:s
    52c0:	20 26       	orw	$0x2:s,r0
    52c2:	08 d4       	storw	r0,0x8:s(r9,r8)

000052c4 <.L21>:
    52c4:	80 55       	movd	(r9,r8),(r1,r0)
    52c6:	b0 60 3d 00 	addd	$0x3d:m,(r1,r0)
    52ca:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    52cc:	08 e6       	stord	(r1,r0),0xc:s(r9,r8)
    52ce:	18 c3 10 00 	storw	$0x1:s,0x10:m(r9,r8)
    52d2:	bf 60 3c 00 	addd	$0x3c:m,(sp)
    52d6:	67 02       	pop	$0x7,r7
    52d8:	9d 03       	popret	$0x2,r13,RA

000052da <.L25>:
    52da:	bc 54 40 00 	movd	$0x40:m,(r12)
    52de:	ef 1c       	br	*-0x527c <.L6>:s

000052e0 <.L24>:
    52e0:	08 af 24 00 	loadd	0x24:m(r9,r8),(r1,r0)
    52e4:	73 00 00 00 	movd	$0x349a:l,(r4,r3)
    52e8:	9a 34 
    52ea:	30 57       	cmpd	(r4,r3),(r1,r0)
    52ec:	19 1b       	bne	*-0x525e <.L8>:s
    52ee:	08 94       	loadw	0x8:s(r9,r8),r0
    52f0:	b0 26 00 04 	orw	$0x400:m,r0
    52f4:	08 d4       	storw	r0,0x8:s(r9,r8)
    52f6:	b0 5a 00 04 	movw	$0x400:m,r0
    52fa:	08 df 48 00 	storw	r0,0x48:m(r9,r8)
    52fe:	bc 54 00 04 	movd	$0x400:m,(r12)
    5302:	e1 1c       	br	*-0x5284 <.L7>:s

00005304 <.L27>:
    5304:	48 95       	loadw	0xa:s(r9,r8),r4
    5306:	a2 55       	movd	(r11,r10),(r3,r2)
    5308:	00 c0 74 2c 	bal	(ra),*+0x7f7c <__isatty_r>:m

0000530c <.LVL18>:
    530c:	00 52       	cmpw	$0x0:s,r0
    530e:	0f 1c       	beq	*-0x52ac <.L1>:s
    5310:	08 94       	loadw	0x8:s(r9,r8),r0
    5312:	10 26       	orw	$0x1:s,r0
    5314:	08 d4       	storw	r0,0x8:s(r9,r8)
    5316:	eb 1c       	br	*-0x52ac <.L1>:s

00005318 <__malloc_r>:
    5318:	9d 01       	push	$0x2,r13,RA
    531a:	67 01       	push	$0x7,r7
    531c:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)

0000531e <.LFE0>:
    531e:	f4 ff 2d 55 	storb	r15,0x552d:m(r5,r4)
    5322:	4a 55       	movd	(r5,r4),(r11,r10)
    5324:	ba 60 0b 00 	addd	$0xb:m,(r11,r10)
    5328:	ba 56 16 00 	cmpd	$0x16:m,(r11,r10)
    532c:	ba 13       	bhs	*+0x53a0 <.L72>:s
    532e:	4a 00 ff ff 	andd	$0xfffffff8:l,(r11,r10)
    5332:	f8 ff 
    5334:	ba 56 ff 7f 	cmpd	$0x7fff:m,(r11,r10)
    5338:	a1 08       	slo	r1
    533a:	4a 57       	cmpd	(r5,r4),(r11,r10)
    533c:	40 08       	shi	r0
    533e:	00 52       	cmpw	$0x0:s,r0
    5340:	17 13       	bne	*+0x53ae <.L77>:s

00005342 <.L121>:
    5342:	01 50       	cmpb	$0x0:s,r1
    5344:	15 13       	bne	*+0x53ae <.L77>:s
    5346:	d2 55       	movd	(r13),(r3,r2)
    5348:	00 c0 b4 08 	bal	(ra),*+0x5bfc <___malloc_lock>:m

0000534c <.LVL3>:
    534c:	a0 55       	movd	(r11,r10),(r1,r0)
    534e:	ba 56 f7 01 	cmpd	$0x1f7:m,(r11,r10)
    5352:	a5 13       	blo	*+0x53bc <.L6>:s
    5354:	d0 4b       	lshd	$-3:s,(r1,r0)
    5356:	07 5b       	movw	r0,r7
    5358:	10 32       	addw	$0x1:s,r0
    535a:	00 33       	addw	r0,r0
    535c:	00 5e       	movxw	r0,(r1,r0)
    535e:	b0 60 fe ff 	addd	$0xfffe:m,(r1,r0)
    5362:	20 4c       	ashud	$2:s,(r1,r0)
    5364:	e0 05 50 ac 	movd	$0xac50:m,(ra)
    5368:	e0 61       	addd	(ra),(r1,r0)
    536a:	80 a6       	loadd	0xc:s(r1,r0),(r9,r8)
    536c:	08 57       	cmpd	(r1,r0),(r9,r8)
    536e:	00 18 ba 04 	beq	*+0x5828 <.L120>:m

00005372 <.L7>:
    5372:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    5374:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    5378:	fc ff 

0000537a <.L18>:
    537a:	28 a6       	loadd	0xc:s(r9,r8),(r3,r2)
    537c:	48 a4       	loadd	0x8:s(r9,r8),(r5,r4)
    537e:	24 e6       	stord	(r3,r2),0xc:s(r5,r4)
    5380:	42 e4       	stord	(r5,r4),0x8:s(r3,r2)
    5382:	80 61       	addd	(r9,r8),(r1,r0)
    5384:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    5386:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    538a:	01 00 
    538c:	20 e2       	stord	(r3,r2),0x4:s(r1,r0)
    538e:	d2 55       	movd	(r13),(r3,r2)
    5390:	00 c0 70 08 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00005394 <.LVL17>:
    5394:	88 60       	addd	$0x8:s,(r9,r8)

00005396 <.L5>:
    5396:	80 5b       	movw	r8,r0
    5398:	91 5b       	movw	r9,r1
    539a:	cf 60       	addd	$0xc:s,(sp)
    539c:	67 02       	pop	$0x7,r7
    539e:	9d 03       	popret	$0x2,r13,RA

000053a0 <.L72>:
    53a0:	01 58       	movb	$0x0:s,r1
    53a2:	ba 54 10 00 	movd	$0x10:m,(r11,r10)
    53a6:	4a 57       	cmpd	(r5,r4),(r11,r10)
    53a8:	40 08       	shi	r0
    53aa:	00 52       	cmpw	$0x0:s,r0
    53ac:	0b 1c       	beq	*-0x5342 <.L121>:s

000053ae <.L77>:
    53ae:	cd c2       	storw	$0xc:s,0x0:s(r13)
    53b0:	08 54       	movd	$0x0:s,(r9,r8)
    53b2:	80 5b       	movw	r8,r0
    53b4:	91 5b       	movw	r9,r1
    53b6:	cf 60       	addd	$0xc:s,(sp)
    53b8:	67 02       	pop	$0x7,r7
    53ba:	9d 03       	popret	$0x2,r13,RA

000053bc <.L6>:
    53bc:	70 4b       	lshd	$-9:s,(r1,r0)
    53be:	00 56       	cmpd	$0x0:s,(r1,r0)
    53c0:	00 18 b2 01 	beq	*+0x5572 <.L122>:m
    53c4:	40 56       	cmpd	$0x4:s,(r1,r0)
    53c6:	a0 18 98 03 	blo	*+0x575e <.L12>:m
    53ca:	a0 55       	movd	(r11,r10),(r1,r0)
    53cc:	a0 4b       	lshd	$-6:s,(r1,r0)
    53ce:	06 5b       	movw	r0,r6
    53d0:	b6 32 38 00 	addw	$0x38:m,r6
    53d4:	07 5b       	movw	r0,r7
    53d6:	b7 32 39 00 	addw	$0x39:m,r7
    53da:	74 5b       	movw	r7,r4
    53dc:	74 33       	addw	r7,r4
    53de:	44 5e       	movxw	r4,(r5,r4)
    53e0:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)

000053e4 <.L11>:
    53e4:	24 4c       	ashud	$2:s,(r5,r4)
    53e6:	e0 05 50 ac 	movd	$0xac50:m,(ra)
    53ea:	e4 61       	addd	(ra),(r5,r4)
    53ec:	84 a6       	loadd	0xc:s(r5,r4),(r9,r8)
    53ee:	84 57       	cmpd	(r9,r8),(r5,r4)
    53f0:	0d 11       	beq	*+0x542a <.L9>:s
    53f2:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    53f4:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    53f8:	fc ff 
    53fa:	02 55       	movd	(r1,r0),(r3,r2)
    53fc:	14 00 a2 c0 	subd	(r11,r10),(r3,r2)
    5400:	f2 56       	cmpd	$0xf:s,(r3,r2)
    5402:	c0 18 86 01 	blt	*+0x5588 <.L17>:m
    5406:	02 56       	cmpd	$0x0:s,(r3,r2)
    5408:	6e 10       	bgt	*+0x5424 <.L93>:s
    540a:	e8 1b       	br	*-0x537a <.L18>:s

0000540c <.L22>:
    540c:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    540e:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    5412:	fc ff 
    5414:	02 55       	movd	(r1,r0),(r3,r2)
    5416:	14 00 a2 c0 	subd	(r11,r10),(r3,r2)
    541a:	f2 56       	cmpd	$0xf:s,(r3,r2)
    541c:	c0 18 6c 01 	blt	*+0x5588 <.L17>:m
    5420:	02 56       	cmpd	$0x0:s,(r3,r2)
    5422:	7c 1a       	ble	*-0x537a <.L18>:s

00005424 <.L93>:
    5424:	88 a6       	loadd	0xc:s(r9,r8),(r9,r8)
    5426:	84 57       	cmpd	(r9,r8),(r5,r4)
    5428:	12 1f       	bne	*-0x540c <.L22>:s

0000542a <.L9>:
    542a:	12 00 c0 b0 	loadd	0xac60 <___malloc_av_+0x10>:l,(r12)
    542e:	60 ac 
    5430:	00 05 58 ac 	movd	$0xac58:m,(r1,r0)
    5434:	0c 57       	cmpd	(r1,r0),(r12)
    5436:	00 18 e8 03 	beq	*+0x581e <.L123>:m
    543a:	4c a2       	loadd	0x4:s(r12),(r5,r4)
    543c:	44 00 ff ff 	andd	$0xfffffffc:l,(r5,r4)
    5440:	fc ff 
    5442:	40 55       	movd	(r5,r4),(r1,r0)
    5444:	14 00 a0 c0 	subd	(r11,r10),(r1,r0)
    5448:	f0 56       	cmpd	$0xf:s,(r1,r0)
    544a:	c0 18 98 03 	blt	*+0x57e2 <.L124>:m
    544e:	20 05 58 ac 	movd	$0xac58:m,(r3,r2)
    5452:	13 00 20 b0 	stord	(r3,r2),0xac64 <.LLST16+0x2>:l
    5456:	64 ac 
    5458:	13 00 20 b0 	stord	(r3,r2),0xac60 <___malloc_av_+0x10>:l
    545c:	60 ac 
    545e:	00 56       	cmpd	$0x0:s,(r1,r0)
    5460:	70 18 2e 01 	ble	*+0x558e <.L125>:m
    5464:	b4 56 ff 01 	cmpd	$0x1ff:m,(r5,r4)
    5468:	a0 18 24 03 	blo	*+0x578c <.L27>:m
    546c:	d4 4b       	lshd	$-3:s,(r5,r4)
    546e:	40 5b       	movw	r4,r0
    5470:	e0 43       	ashuw	$-2:s,r0
    5472:	18 54       	movd	$0x1:s,(r9,r8)
    5474:	08 48       	ashud	r0,(r9,r8)
    5476:	12 00 20 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r3,r2)
    547a:	54 ac 
    547c:	14 00 28 90 	ord	(r3,r2),(r9,r8)
    5480:	13 00 80 b0 	stord	(r9,r8),0xac54 <___malloc_av_+0x4>:l
    5484:	54 ac 
    5486:	14 32       	addw	$0x1:s,r4
    5488:	44 33       	addw	r4,r4
    548a:	40 5e       	movxw	r4,(r1,r0)
    548c:	b0 60 fe ff 	addd	$0xfffe:m,(r1,r0)
    5490:	20 4c       	ashud	$2:s,(r1,r0)
    5492:	e0 61       	addd	(ra),(r1,r0)
    5494:	20 a4       	loadd	0x8:s(r1,r0),(r3,r2)
    5496:	0c e6       	stord	(r1,r0),0xc:s(r12)
    5498:	2c e4       	stord	(r3,r2),0x8:s(r12)
    549a:	c0 e4       	stord	(r12),0x8:s(r1,r0)
    549c:	c2 e6       	stord	(r12),0xc:s(r3,r2)

0000549e <.L24>:
    549e:	70 5b       	movw	r7,r0
    54a0:	10 43       	ashuw	$-15:s,r0
    54a2:	30 22       	andw	$0x3:s,r0
    54a4:	70 33       	addw	r7,r0
    54a6:	e0 43       	ashuw	$-2:s,r0
    54a8:	1c 54       	movd	$0x1:s,(r12)
    54aa:	0c 48       	ashud	r0,(r12)
    54ac:	8c 57       	cmpd	(r9,r8),(r12)
    54ae:	a0 18 00 01 	blo	*+0x55ae <.L38>:m
    54b2:	80 55       	movd	(r9,r8),(r1,r0)
    54b4:	14 00 c0 b0 	andd	(r12),(r1,r0)
    54b8:	00 56       	cmpd	$0x0:s,(r1,r0)
    54ba:	1a 10       	bne	*+0x54ce <.L111>:s
    54bc:	b7 22 fc ff 	andw	$0xfffc:m,r7

000054c0 <.L118>:
    54c0:	47 32       	addw	$0x4:s,r7
    54c2:	cc 61       	addd	(r12),(r12)
    54c4:	80 55       	movd	(r9,r8),(r1,r0)
    54c6:	14 00 c0 b0 	andd	(r12),(r1,r0)
    54ca:	00 56       	cmpd	$0x0:s,(r1,r0)
    54cc:	0a 1f       	beq	*-0x54c0 <.L118>:s

000054ce <.L111>:
    54ce:	7f d0       	storw	r7,0x0:s(sp)

000054d0 <.L101>:
    54d0:	6f 90       	loadw	0x0:s(sp),r6
    54d2:	16 32       	addw	$0x1:s,r6
    54d4:	66 33       	addw	r6,r6
    54d6:	66 5e       	movxw	r6,(r7,r6)
    54d8:	b6 60 fe ff 	addd	$0xfffe:m,(r7,r6)
    54dc:	26 4c       	ashud	$2:s,(r7,r6)
    54de:	e6 61       	addd	(ra),(r7,r6)
    54e0:	64 55       	movd	(r7,r6),(r5,r4)
    54e2:	3f 90       	loadw	0x0:s(sp),r3
    54e4:	3f d2       	storw	r3,0x4:s(sp)

000054e6 <.L48>:
    54e6:	84 a6       	loadd	0xc:s(r5,r4),(r9,r8)
    54e8:	84 57       	cmpd	(r9,r8),(r5,r4)
    54ea:	0f 11       	beq	*+0x5528 <.L41>:s
    54ec:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    54ee:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    54f2:	fc ff 
    54f4:	02 55       	movd	(r1,r0),(r3,r2)
    54f6:	14 00 a2 c0 	subd	(r11,r10),(r3,r2)
    54fa:	f2 56       	cmpd	$0xf:s,(r3,r2)
    54fc:	c0 18 3e 03 	blt	*+0x583a <.L42>:m
    5500:	02 56       	cmpd	$0x0:s,(r3,r2)
    5502:	60 11       	bgt	*+0x5522 <.L90>:s
    5504:	e0 18 78 03 	br	*+0x587c <.L43>:m

00005508 <.L47>:
    5508:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    550a:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    550e:	fc ff 
    5510:	02 55       	movd	(r1,r0),(r3,r2)
    5512:	14 00 a2 c0 	subd	(r11,r10),(r3,r2)
    5516:	f2 56       	cmpd	$0xf:s,(r3,r2)
    5518:	c0 18 22 03 	blt	*+0x583a <.L42>:m
    551c:	02 56       	cmpd	$0x0:s,(r3,r2)
    551e:	70 18 5e 03 	ble	*+0x587c <.L43>:m

00005522 <.L90>:
    5522:	88 a6       	loadd	0xc:s(r9,r8),(r9,r8)
    5524:	84 57       	cmpd	(r9,r8),(r5,r4)
    5526:	11 1f       	bne	*-0x5508 <.L47>:s

00005528 <.L41>:
    5528:	84 60       	addd	$0x8:s,(r5,r4)
    552a:	0f 92       	loadw	0x4:s(sp),r0
    552c:	10 32       	addw	$0x1:s,r0
    552e:	0f d2       	storw	r0,0x4:s(sp)
    5530:	30 22       	andw	$0x3:s,r0
    5532:	00 52       	cmpw	$0x0:s,r0
    5534:	19 1d       	bne	*-0x54e6 <.L48>:s
    5536:	2f 90       	loadw	0x0:s(sp),r2

00005538 <.L51>:
    5538:	20 5b       	movw	r2,r0
    553a:	30 22       	andw	$0x3:s,r0
    553c:	00 52       	cmpw	$0x0:s,r0
    553e:	00 18 f8 04 	beq	*+0x5a36 <.L126>:m
    5542:	92 32       	addw	$-1:s,r2
    5544:	60 55       	movd	(r7,r6),(r1,r0)
    5546:	b0 60 f8 ff 	addd	$0xfff8:m,(r1,r0)
    554a:	60 a4       	loadd	0x8:s(r1,r0),(r7,r6)
    554c:	06 57       	cmpd	(r1,r0),(r7,r6)
    554e:	05 1f       	beq	*-0x5538 <.L51>:s
    5550:	12 00 20 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r3,r2)
    5554:	54 ac 

00005556 <.L50>:
    5556:	cc 61       	addd	(r12),(r12)
    5558:	2c 57       	cmpd	(r3,r2),(r12)
    555a:	aa 12       	blo	*+0x55ae <.L38>:s
    555c:	0c 56       	cmpd	$0x0:s,(r12)
    555e:	08 12       	beq	*+0x55ae <.L38>:s
    5560:	20 55       	movd	(r3,r2),(r1,r0)
    5562:	14 00 c0 b0 	andd	(r12),(r1,r0)
    5566:	00 56       	cmpd	$0x0:s,(r1,r0)
    5568:	00 18 ea 04 	beq	*+0x5a52 <.L127>:m

0000556c <.L52>:
    556c:	1f 92       	loadw	0x4:s(sp),r1
    556e:	1f d0       	storw	r1,0x0:s(sp)
    5570:	e0 1b       	br	*-0x54d0 <.L101>:s

00005572 <.L122>:
    5572:	a6 55       	movd	(r11,r10),(r7,r6)
    5574:	d6 4b       	lshd	$-3:s,(r7,r6)
    5576:	67 5b       	movw	r6,r7
    5578:	17 32       	addw	$0x1:s,r7
    557a:	74 5b       	movw	r7,r4
    557c:	74 33       	addw	r7,r4
    557e:	44 5e       	movxw	r4,(r5,r4)
    5580:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)
    5584:	e0 18 61 fe 	br	*-0x53e4 <.L11>:m

00005588 <.L17>:
    5588:	67 5b       	movw	r6,r7
    558a:	e0 18 a1 fe 	br	*-0x542a <.L9>:m

0000558e <.L125>:
    558e:	c4 61       	addd	(r12),(r5,r4)
    5590:	04 a2       	loadd	0x4:s(r5,r4),(r1,r0)
    5592:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    5596:	01 00 
    5598:	04 e2       	stord	(r1,r0),0x4:s(r5,r4)
    559a:	d2 55       	movd	(r13),(r3,r2)
    559c:	00 c0 64 06 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

000055a0 <.LVL75>:
    55a0:	c8 55       	movd	(r12),(r9,r8)
    55a2:	88 60       	addd	$0x8:s,(r9,r8)
    55a4:	80 5b       	movw	r8,r0
    55a6:	91 5b       	movw	r9,r1
    55a8:	cf 60       	addd	$0xc:s,(sp)
    55aa:	67 02       	pop	$0x7,r7
    55ac:	9d 03       	popret	$0x2,r13,RA

000055ae <.L38>:
    55ae:	12 00 80 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r9,r8)
    55b2:	58 ac 
    55b4:	c8 a2       	loadd	0x4:s(r9,r8),(r12)
    55b6:	4c 00 ff ff 	andd	$0xfffffffc:l,(r12)
    55ba:	fc ff 
    55bc:	ca 57       	cmpd	(r12),(r11,r10)
    55be:	a7 10       	blo	*+0x55cc <.L55>:s
    55c0:	c0 55       	movd	(r12),(r1,r0)
    55c2:	14 00 a0 c0 	subd	(r11,r10),(r1,r0)
    55c6:	f0 56       	cmpd	$0xf:s,(r1,r0)
    55c8:	c0 18 6a 01 	blt	*+0x5732 <.L56>:m

000055cc <.L55>:
    55cc:	82 55       	movd	(r9,r8),(r3,r2)
    55ce:	c2 61       	addd	(r12),(r3,r2)
    55d0:	2f e4       	stord	(r3,r2),0x8:s(sp)
    55d2:	12 00 00 b0 	loadd	0xb080 <___malloc_top_pad>:l,(r1,r0)
    55d6:	80 b0 
    55d8:	a0 61       	addd	(r11,r10),(r1,r0)
    55da:	12 00 20 b0 	loadd	0xac48 <___malloc_sbrk_base>:l,(r3,r2)
    55de:	48 ac 
    55e0:	92 56       	cmpd	$-1:s,(r3,r2)
    55e2:	00 18 82 03 	beq	*+0x5964 <.L128>:m
    55e6:	04 55       	movd	(r1,r0),(r5,r4)
    55e8:	b4 60 0f 10 	addd	$0x100f:m,(r5,r4)
    55ec:	44 00 ff ff 	andd	$0xfffff000:l,(r5,r4)
    55f0:	00 f0 
    55f2:	4f e2       	stord	(r5,r4),0x4:s(sp)

000055f4 <.L58>:
    55f4:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    55f6:	d2 55       	movd	(r13),(r3,r2)
    55f8:	00 c0 78 12 	bal	(ra),*+0x6870 <__sbrk_r>:m

000055fc <.LVL85>:
    55fc:	0f e0       	stord	(r1,r0),0x0:s(sp)
    55fe:	90 56       	cmpd	$-1:s,(r1,r0)
    5600:	00 18 da 02 	beq	*+0x58da <.L116>:m
    5604:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    5606:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    5608:	20 57       	cmpd	(r3,r2),(r1,r0)
    560a:	a0 18 c6 02 	blo	*+0x58d0 <.L129>:m

0000560e <.L61>:
    560e:	12 00 20 f0 	loadw	0xb064 <___malloc_current_mallinfo>:l,r2
    5612:	64 b0 
    5614:	4f 92       	loadw	0x4:s(sp),r4
    5616:	42 33       	addw	r4,r2
    5618:	13 00 20 f0 	storw	r2,0xb064 <___malloc_current_mallinfo>:l
    561c:	64 b0 
    561e:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    5620:	3f a0       	loadd	0x0:s(sp),(r4,r3)
    5622:	30 57       	cmpd	(r4,r3),(r1,r0)
    5624:	00 18 6c 03 	beq	*+0x5990 <.L130>:m

00005628 <.L62>:
    5628:	12 00 00 b0 	loadd	0xac48 <___malloc_sbrk_base>:l,(r1,r0)
    562c:	48 ac 
    562e:	90 56       	cmpd	$-1:s,(r1,r0)
    5630:	00 18 ba 03 	beq	*+0x59ea <.L131>:m
    5634:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    5636:	3f a4       	loadd	0x8:s(sp),(r4,r3)
    5638:	14 00 30 c0 	subd	(r4,r3),(r1,r0)
    563c:	02 33       	addw	r0,r2
    563e:	13 00 20 f0 	storw	r2,0xb064 <___malloc_current_mallinfo>:l
    5642:	64 b0 

00005644 <.L65>:
    5644:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    5646:	40 00 00 00 	andd	$0x7:l,(r1,r0)
    564a:	07 00 
    564c:	b2 54 00 10 	movd	$0x1000:m,(r3,r2)
    5650:	00 56       	cmpd	$0x0:s,(r1,r0)
    5652:	0a 10       	beq	*+0x5666 <.L66>:s
    5654:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    5656:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    565a:	84 60       	addd	$0x8:s,(r5,r4)
    565c:	4f e0       	stord	(r5,r4),0x0:s(sp)
    565e:	b2 54 08 10 	movd	$0x1008:m,(r3,r2)
    5662:	14 00 02 c0 	subd	(r1,r0),(r3,r2)

00005666 <.L66>:
    5666:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    5668:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    566a:	40 61       	addd	(r5,r4),(r1,r0)
    566c:	40 00 00 00 	andd	$0xfff:l,(r1,r0)
    5670:	ff 0f 
    5672:	24 55       	movd	(r3,r2),(r5,r4)
    5674:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    5678:	4f e2       	stord	(r5,r4),0x4:s(sp)
    567a:	d2 55       	movd	(r13),(r3,r2)
    567c:	00 c0 f4 11 	bal	(ra),*+0x6870 <__sbrk_r>:m

00005680 <.LVL94>:
    5680:	90 56       	cmpd	$-1:s,(r1,r0)
    5682:	00 18 60 03 	beq	*+0x59e2 <.L76>:m
    5686:	3f 92       	loadw	0x4:s(sp),r3
    5688:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    568a:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    568e:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    5690:	40 61       	addd	(r5,r4),(r1,r0)
    5692:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    5696:	01 00 

00005698 <.L67>:
    5698:	12 00 20 f0 	loadw	0xb064 <___malloc_current_mallinfo>:l,r2
    569c:	64 b0 
    569e:	32 33       	addw	r3,r2
    56a0:	13 00 20 f0 	storw	r2,0xb064 <___malloc_current_mallinfo>:l
    56a4:	64 b0 
    56a6:	3f a0       	loadd	0x0:s(sp),(r4,r3)
    56a8:	13 00 30 b0 	stord	(r4,r3),0xac58 <___malloc_av_+0x8>:l
    56ac:	58 ac 
    56ae:	03 e2       	stord	(r1,r0),0x4:s(r4,r3)
    56b0:	40 05 50 ac 	movd	$0xac50:m,(r5,r4)
    56b4:	48 57       	cmpd	(r5,r4),(r9,r8)
    56b6:	00 18 26 03 	beq	*+0x59dc <.L132>:m
    56ba:	fc 56       	cmpd	$0xf:s,(r12)
    56bc:	b0 18 78 02 	bhs	*+0x5934 <.L133>:m
    56c0:	c0 55       	movd	(r12),(r1,r0)
    56c2:	b0 60 f4 ff 	addd	$0xfff4:m,(r1,r0)
    56c6:	40 00 ff ff 	andd	$0xfffffff8:l,(r1,r0)
    56ca:	f8 ff 
    56cc:	48 a2       	loadd	0x4:s(r9,r8),(r5,r4)
    56ce:	44 00 00 00 	andd	$0x1:l,(r5,r4)
    56d2:	01 00 
    56d4:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    56d8:	48 e2       	stord	(r5,r4),0x4:s(r9,r8)
    56da:	84 55       	movd	(r9,r8),(r5,r4)
    56dc:	04 61       	addd	(r1,r0),(r5,r4)
    56de:	5e 54       	movd	$0x5:s,(ra)
    56e0:	e4 e2       	stord	(ra),0x4:s(r5,r4)
    56e2:	e4 e4       	stord	(ra),0x8:s(r5,r4)
    56e4:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    56e6:	f0 56       	cmpd	$0xf:s,(r1,r0)
    56e8:	a0 18 da 02 	blo	*+0x59c2 <.L134>:m

000056ec <.L63>:
    56ec:	22 5e       	movxw	r2,(r3,r2)
    56ee:	12 00 00 b0 	loadd	0xb07c <___malloc_max_sbrked_mem>:l,(r1,r0)
    56f2:	7c b0 
    56f4:	02 57       	cmpd	(r1,r0),(r3,r2)
    56f6:	b4 10       	bhs	*+0x56fe <.L69>:s
    56f8:	13 00 20 b0 	stord	(r3,r2),0xb07c <___malloc_max_sbrked_mem>:l
    56fc:	7c b0 

000056fe <.L69>:
    56fe:	12 00 00 b0 	loadd	0xb078 <___malloc_max_total_mem>:l,(r1,r0)
    5702:	78 b0 
    5704:	02 57       	cmpd	(r1,r0),(r3,r2)
    5706:	b4 10       	bhs	*+0x570e <.L117>:s
    5708:	13 00 20 b0 	stord	(r3,r2),0xb078 <___malloc_max_total_mem>:l
    570c:	78 b0 

0000570e <.L117>:
    570e:	48 55       	movd	(r5,r4),(r9,r8)
    5710:	24 a2       	loadd	0x4:s(r5,r4),(r3,r2)
    5712:	42 00 ff ff 	andd	$0xfffffffc:l,(r3,r2)
    5716:	fc ff 

00005718 <.L60>:
    5718:	20 55       	movd	(r3,r2),(r1,r0)
    571a:	14 00 a0 c0 	subd	(r11,r10),(r1,r0)
    571e:	2a 57       	cmpd	(r3,r2),(r11,r10)
    5720:	a3 10       	blo	*+0x5726 <.L71>:s
    5722:	f0 56       	cmpd	$0xf:s,(r1,r0)
    5724:	c7 10       	blt	*+0x5732 <.L56>:s

00005726 <.L71>:
    5726:	d2 55       	movd	(r13),(r3,r2)
    5728:	00 c0 d8 04 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

0000572c <.LVL101>:
    572c:	08 54       	movd	$0x0:s,(r9,r8)
    572e:	e0 18 69 fc 	br	*-0x5396 <.L5>:m

00005732 <.L56>:
    5732:	a2 55       	movd	(r11,r10),(r3,r2)
    5734:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    5738:	01 00 
    573a:	28 e2       	stord	(r3,r2),0x4:s(r9,r8)
    573c:	8a 61       	addd	(r9,r8),(r11,r10)
    573e:	13 00 a0 b0 	stord	(r11,r10),0xac58 <___malloc_av_+0x8>:l
    5742:	58 ac 
    5744:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    5748:	01 00 
    574a:	0a e2       	stord	(r1,r0),0x4:s(r11,r10)
    574c:	d2 55       	movd	(r13),(r3,r2)
    574e:	00 c0 b2 04 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00005752 <.LVL105>:
    5752:	88 60       	addd	$0x8:s,(r9,r8)
    5754:	80 5b       	movw	r8,r0
    5756:	91 5b       	movw	r9,r1
    5758:	cf 60       	addd	$0xc:s,(sp)
    575a:	67 02       	pop	$0x7,r7
    575c:	9d 03       	popret	$0x2,r13,RA

0000575e <.L12>:
    575e:	b0 56 14 00 	cmpd	$0x14:m,(r1,r0)
    5762:	b0 18 3a 01 	bhs	*+0x589c <.L135>:m
    5766:	b0 56 54 00 	cmpd	$0x54:m,(r1,r0)
    576a:	a0 18 82 01 	blo	*+0x58ec <.L14>:m
    576e:	a0 55       	movd	(r11,r10),(r1,r0)
    5770:	40 4b       	lshd	$-12:s,(r1,r0)
    5772:	06 5b       	movw	r0,r6
    5774:	b6 32 6e 00 	addw	$0x6e:m,r6
    5778:	07 5b       	movw	r0,r7
    577a:	b7 32 6f 00 	addw	$0x6f:m,r7
    577e:	74 5b       	movw	r7,r4
    5780:	74 33       	addw	r7,r4
    5782:	44 5e       	movxw	r4,(r5,r4)
    5784:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)
    5788:	e0 18 5d fc 	br	*-0x53e4 <.L11>:m

0000578c <.L27>:
    578c:	40 55       	movd	(r5,r4),(r1,r0)
    578e:	70 4b       	lshd	$-9:s,(r1,r0)
    5790:	40 56       	cmpd	$0x4:s,(r1,r0)
    5792:	b0 18 24 01 	bhs	*+0x58b6 <.L136>:m
    5796:	b0 56 14 00 	cmpd	$0x14:m,(r1,r0)
    579a:	a0 18 d6 01 	blo	*+0x5970 <.L30>:m
    579e:	03 5b       	movw	r0,r3
    57a0:	b3 32 5b 00 	addw	$0x5b:m,r3
    57a4:	b0 32 5c 00 	addw	$0x5c:m,r0
    57a8:	00 33       	addw	r0,r0
    57aa:	08 5e       	movxw	r0,(r9,r8)
    57ac:	b8 60 fe ff 	addd	$0xfffe:m,(r9,r8)

000057b0 <.L29>:
    57b0:	28 4c       	ashud	$2:s,(r9,r8)
    57b2:	e8 61       	addd	(ra),(r9,r8)
    57b4:	08 a4       	loadd	0x8:s(r9,r8),(r1,r0)
    57b6:	80 57       	cmpd	(r9,r8),(r1,r0)
    57b8:	00 18 58 01 	beq	*+0x5910 <.L137>:m

000057bc <.L92>:
    57bc:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    57be:	42 00 ff ff 	andd	$0xfffffffc:l,(r3,r2)
    57c2:	fc ff 
    57c4:	24 57       	cmpd	(r3,r2),(r5,r4)
    57c6:	54 10       	bls	*+0x57ce <.L36>:s
    57c8:	00 a4       	loadd	0x8:s(r1,r0),(r1,r0)
    57ca:	08 57       	cmpd	(r1,r0),(r9,r8)
    57cc:	18 1f       	bne	*-0x57bc <.L92>:s

000057ce <.L36>:
    57ce:	20 a6       	loadd	0xc:s(r1,r0),(r3,r2)
    57d0:	12 00 80 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r9,r8)
    57d4:	54 ac 

000057d6 <.L34>:
    57d6:	2c e6       	stord	(r3,r2),0xc:s(r12)
    57d8:	0c e4       	stord	(r1,r0),0x8:s(r12)
    57da:	c2 e4       	stord	(r12),0x8:s(r3,r2)
    57dc:	c0 e6       	stord	(r12),0xc:s(r1,r0)
    57de:	e0 18 c1 fc 	br	*-0x549e <.L24>:m

000057e2 <.L124>:
    57e2:	c2 55       	movd	(r12),(r3,r2)
    57e4:	a2 61       	addd	(r11,r10),(r3,r2)
    57e6:	5a 00 00 00 	ord	$0x1:l,(r11,r10)
    57ea:	01 00 
    57ec:	ac e2       	stord	(r11,r10),0x4:s(r12)
    57ee:	13 00 20 b0 	stord	(r3,r2),0xac64 <.LLST16+0x2>:l
    57f2:	64 ac 
    57f4:	13 00 20 b0 	stord	(r3,r2),0xac60 <___malloc_av_+0x10>:l
    57f8:	60 ac 
    57fa:	40 05 58 ac 	movd	$0xac58:m,(r5,r4)
    57fe:	42 e6       	stord	(r5,r4),0xc:s(r3,r2)
    5800:	42 e4       	stord	(r5,r4),0x8:s(r3,r2)
    5802:	04 55       	movd	(r1,r0),(r5,r4)
    5804:	54 00 00 00 	ord	$0x1:l,(r5,r4)
    5808:	01 00 
    580a:	42 e2       	stord	(r5,r4),0x4:s(r3,r2)
    580c:	02 61       	addd	(r1,r0),(r3,r2)
    580e:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
    5810:	d2 55       	movd	(r13),(r3,r2)
    5812:	00 c0 ee 03 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00005816 <.LVL121>:
    5816:	c8 55       	movd	(r12),(r9,r8)
    5818:	88 60       	addd	$0x8:s,(r9,r8)
    581a:	e0 18 7d fb 	br	*-0x5396 <.L5>:m

0000581e <.L123>:
    581e:	12 00 80 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r9,r8)
    5822:	54 ac 
    5824:	e0 18 7b fc 	br	*-0x549e <.L24>:m

00005828 <.L120>:
    5828:	80 55       	movd	(r9,r8),(r1,r0)
    582a:	80 60       	addd	$0x8:s,(r1,r0)
    582c:	88 aa       	loadd	0x14:s(r9,r8),(r9,r8)
    582e:	27 32       	addw	$0x2:s,r7
    5830:	80 57       	cmpd	(r9,r8),(r1,r0)
    5832:	00 18 f9 fb 	beq	*-0x542a <.L9>:m
    5836:	e0 18 3d fb 	br	*-0x5372 <.L7>:m

0000583a <.L42>:
    583a:	80 55       	movd	(r9,r8),(r1,r0)
    583c:	a0 61       	addd	(r11,r10),(r1,r0)
    583e:	5a 00 00 00 	ord	$0x1:l,(r11,r10)
    5842:	01 00 
    5844:	a8 e2       	stord	(r11,r10),0x4:s(r9,r8)
    5846:	48 a6       	loadd	0xc:s(r9,r8),(r5,r4)
    5848:	a8 a4       	loadd	0x8:s(r9,r8),(r11,r10)
    584a:	4a e6       	stord	(r5,r4),0xc:s(r11,r10)
    584c:	a4 e4       	stord	(r11,r10),0x8:s(r5,r4)
    584e:	13 00 00 b0 	stord	(r1,r0),0xac64 <.LLST16+0x2>:l
    5852:	64 ac 
    5854:	13 00 00 b0 	stord	(r1,r0),0xac60 <___malloc_av_+0x10>:l
    5858:	60 ac 
    585a:	40 05 58 ac 	movd	$0xac58:m,(r5,r4)
    585e:	40 e6       	stord	(r5,r4),0xc:s(r1,r0)
    5860:	40 e4       	stord	(r5,r4),0x8:s(r1,r0)
    5862:	24 55       	movd	(r3,r2),(r5,r4)
    5864:	54 00 00 00 	ord	$0x1:l,(r5,r4)
    5868:	01 00 
    586a:	40 e2       	stord	(r5,r4),0x4:s(r1,r0)
    586c:	20 61       	addd	(r3,r2),(r1,r0)
    586e:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    5870:	d2 55       	movd	(r13),(r3,r2)
    5872:	00 c0 8e 03 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00005876 <.LVL137>:
    5876:	88 60       	addd	$0x8:s,(r9,r8)
    5878:	e0 18 1f fb 	br	*-0x5396 <.L5>:m

0000587c <.L43>:
    587c:	80 61       	addd	(r9,r8),(r1,r0)
    587e:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    5880:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    5884:	01 00 
    5886:	20 e2       	stord	(r3,r2),0x4:s(r1,r0)
    5888:	08 a6       	loadd	0xc:s(r9,r8),(r1,r0)
    588a:	28 a4       	loadd	0x8:s(r9,r8),(r3,r2)
    588c:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    588e:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    5890:	d2 55       	movd	(r13),(r3,r2)
    5892:	00 c0 6e 03 	bal	(ra),*+0x5c00 <___malloc_unlock>:m

00005896 <.LVL145>:
    5896:	88 60       	addd	$0x8:s,(r9,r8)
    5898:	e0 18 ff fa 	br	*-0x5396 <.L5>:m

0000589c <.L135>:
    589c:	06 5b       	movw	r0,r6
    589e:	b6 32 5b 00 	addw	$0x5b:m,r6
    58a2:	07 5b       	movw	r0,r7
    58a4:	b7 32 5c 00 	addw	$0x5c:m,r7
    58a8:	74 5b       	movw	r7,r4
    58aa:	74 33       	addw	r7,r4
    58ac:	44 5e       	movxw	r4,(r5,r4)
    58ae:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)
    58b2:	e0 18 33 fb 	br	*-0x53e4 <.L11>:m

000058b6 <.L136>:
    58b6:	48 55       	movd	(r5,r4),(r9,r8)
    58b8:	a8 4b       	lshd	$-6:s,(r9,r8)
    58ba:	83 5b       	movw	r8,r3
    58bc:	b3 32 38 00 	addw	$0x38:m,r3
    58c0:	b8 32 39 00 	addw	$0x39:m,r8
    58c4:	88 33       	addw	r8,r8
    58c6:	88 5e       	movxw	r8,(r9,r8)
    58c8:	b8 60 fe ff 	addd	$0xfffe:m,(r9,r8)
    58cc:	e0 18 e5 fe 	br	*-0x57b0 <.L29>:m

000058d0 <.L129>:
    58d0:	30 05 50 ac 	movd	$0xac50:m,(r4,r3)
    58d4:	38 57       	cmpd	(r4,r3),(r9,r8)
    58d6:	00 18 39 fd 	beq	*-0x560e <.L61>:m

000058da <.L116>:
    58da:	12 00 80 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r9,r8)
    58de:	58 ac 
    58e0:	28 a2       	loadd	0x4:s(r9,r8),(r3,r2)
    58e2:	42 00 ff ff 	andd	$0xfffffffc:l,(r3,r2)
    58e6:	fc ff 
    58e8:	e0 18 31 fe 	br	*-0x5718 <.L60>:m

000058ec <.L14>:
    58ec:	b0 56 54 01 	cmpd	$0x154:m,(r1,r0)
    58f0:	a9 12       	blo	*+0x5942 <.L15>:s
    58f2:	a0 55       	movd	(r11,r10),(r1,r0)
    58f4:	10 4b       	lshd	$-15:s,(r1,r0)
    58f6:	06 5b       	movw	r0,r6
    58f8:	b6 32 77 00 	addw	$0x77:m,r6
    58fc:	07 5b       	movw	r0,r7
    58fe:	b7 32 78 00 	addw	$0x78:m,r7
    5902:	74 5b       	movw	r7,r4
    5904:	74 33       	addw	r7,r4
    5906:	44 5e       	movxw	r4,(r5,r4)
    5908:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)
    590c:	e0 18 d9 fa 	br	*-0x53e4 <.L11>:m

00005910 <.L137>:
    5910:	32 5b       	movw	r3,r2
    5912:	12 43       	ashuw	$-15:s,r2
    5914:	32 22       	andw	$0x3:s,r2
    5916:	32 33       	addw	r3,r2
    5918:	e2 43       	ashuw	$-2:s,r2
    591a:	18 54       	movd	$0x1:s,(r9,r8)
    591c:	28 48       	ashud	r2,(r9,r8)
    591e:	12 00 20 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r3,r2)
    5922:	54 ac 
    5924:	14 00 28 90 	ord	(r3,r2),(r9,r8)
    5928:	13 00 80 b0 	stord	(r9,r8),0xac54 <___malloc_av_+0x4>:l
    592c:	54 ac 
    592e:	02 55       	movd	(r1,r0),(r3,r2)
    5930:	e0 18 a7 fe 	br	*-0x57d6 <.L34>:m

00005934 <.L133>:
    5934:	10 54       	movd	$0x1:s,(r1,r0)
    5936:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    5938:	02 e2       	stord	(r1,r0),0x4:s(r3,r2)
    593a:	28 55       	movd	(r3,r2),(r9,r8)
    593c:	02 54       	movd	$0x0:s,(r3,r2)
    593e:	e0 18 db fd 	br	*-0x5718 <.L60>:m

00005942 <.L15>:
    5942:	b0 56 54 05 	cmpd	$0x554:m,(r1,r0)
    5946:	a6 13       	blo	*+0x59b2 <.L73>:s
    5948:	b7 5b       	movw	r11,r7
    594a:	e7 49       	lshw	$-2:s,r7
    594c:	76 5b       	movw	r7,r6
    594e:	b6 32 7c 00 	addw	$0x7c:m,r6
    5952:	b7 32 7d 00 	addw	$0x7d:m,r7
    5956:	74 5b       	movw	r7,r4
    5958:	74 33       	addw	r7,r4
    595a:	44 5e       	movxw	r4,(r5,r4)
    595c:	b4 60 fe ff 	addd	$0xfffe:m,(r5,r4)
    5960:	e0 18 85 fa 	br	*-0x53e4 <.L11>:m

00005964 <.L128>:
    5964:	03 55       	movd	(r1,r0),(r4,r3)
    5966:	b3 60 10 00 	addd	$0x10:m,(r4,r3)
    596a:	3f e2       	stord	(r4,r3),0x4:s(sp)
    596c:	e0 18 89 fc 	br	*-0x55f4 <.L58>:m

00005970 <.L30>:
    5970:	b0 56 54 00 	cmpd	$0x54:m,(r1,r0)
    5974:	a1 14       	blo	*+0x59f6 <.L31>:s
    5976:	40 55       	movd	(r5,r4),(r1,r0)
    5978:	40 4b       	lshd	$-12:s,(r1,r0)
    597a:	03 5b       	movw	r0,r3
    597c:	b3 32 6e 00 	addw	$0x6e:m,r3
    5980:	b0 32 6f 00 	addw	$0x6f:m,r0
    5984:	00 33       	addw	r0,r0
    5986:	08 5e       	movxw	r0,(r9,r8)
    5988:	b8 60 fe ff 	addd	$0xfffe:m,(r9,r8)
    598c:	e0 18 25 fe 	br	*-0x57b0 <.L29>:m

00005990 <.L130>:
    5990:	40 00 00 00 	andd	$0xfff:l,(r1,r0)
    5994:	ff 0f 
    5996:	00 56       	cmpd	$0x0:s,(r1,r0)
    5998:	10 18 91 fc 	bne	*-0x5628 <.L62>:m
    599c:	12 00 40 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r5,r4)
    59a0:	58 ac 
    59a2:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    59a4:	c0 61       	addd	(r12),(r1,r0)
    59a6:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    59aa:	01 00 
    59ac:	04 e2       	stord	(r1,r0),0x4:s(r5,r4)
    59ae:	e0 18 3f fd 	br	*-0x56ec <.L63>:m

000059b2 <.L73>:
    59b2:	b4 54 fc 00 	movd	$0xfc:m,(r5,r4)
    59b6:	b7 5a 7f 00 	movw	$0x7f:m,r7
    59ba:	b6 5a 7e 00 	movw	$0x7e:m,r6
    59be:	e0 18 27 fa 	br	*-0x53e4 <.L11>:m

000059c2 <.L134>:
    59c2:	84 55       	movd	(r9,r8),(r5,r4)
    59c4:	84 60       	addd	$0x8:s,(r5,r4)
    59c6:	d2 55       	movd	(r13),(r3,r2)
    59c8:	ff c0 b9 f4 	bal	(ra),*-0x4e80 <__free_r>:m

000059cc <.LVL166>:
    59cc:	12 00 20 f0 	loadw	0xb064 <___malloc_current_mallinfo>:l,r2
    59d0:	64 b0 
    59d2:	12 00 40 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r5,r4)
    59d6:	58 ac 
    59d8:	e0 18 15 fd 	br	*-0x56ec <.L63>:m

000059dc <.L132>:
    59dc:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    59de:	e0 18 0f fd 	br	*-0x56ec <.L63>:m

000059e2 <.L76>:
    59e2:	10 54       	movd	$0x1:s,(r1,r0)
    59e4:	03 5a       	movw	$0x0:s,r3
    59e6:	e0 18 b3 fc 	br	*-0x5698 <.L67>:m

000059ea <.L131>:
    59ea:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    59ec:	13 00 40 b0 	stord	(r5,r4),0xac48 <___malloc_sbrk_base>:l
    59f0:	48 ac 
    59f2:	e0 18 53 fc 	br	*-0x5644 <.L65>:m

000059f6 <.L31>:
    59f6:	b0 56 54 01 	cmpd	$0x154:m,(r1,r0)
    59fa:	ae 10       	blo	*+0x5a16 <.L32>:s
    59fc:	40 55       	movd	(r5,r4),(r1,r0)
    59fe:	10 4b       	lshd	$-15:s,(r1,r0)
    5a00:	03 5b       	movw	r0,r3
    5a02:	b3 32 77 00 	addw	$0x77:m,r3
    5a06:	b0 32 78 00 	addw	$0x78:m,r0
    5a0a:	00 33       	addw	r0,r0
    5a0c:	08 5e       	movxw	r0,(r9,r8)
    5a0e:	b8 60 fe ff 	addd	$0xfffe:m,(r9,r8)
    5a12:	e0 18 9f fd 	br	*-0x57b0 <.L29>:m

00005a16 <.L32>:
    5a16:	b0 56 54 05 	cmpd	$0x554:m,(r1,r0)
    5a1a:	a7 12       	blo	*+0x5a68 <.L74>:s
    5a1c:	58 5b       	movw	r5,r8
    5a1e:	e8 49       	lshw	$-2:s,r8
    5a20:	83 5b       	movw	r8,r3
    5a22:	b3 32 7c 00 	addw	$0x7c:m,r3
    5a26:	b8 32 7d 00 	addw	$0x7d:m,r8
    5a2a:	88 33       	addw	r8,r8
    5a2c:	88 5e       	movxw	r8,(r9,r8)
    5a2e:	b8 60 fe ff 	addd	$0xfffe:m,(r9,r8)
    5a32:	e0 18 7f fd 	br	*-0x57b0 <.L29>:m

00005a36 <.L126>:
    5a36:	c2 55       	movd	(r12),(r3,r2)
    5a38:	62 00 ff ff 	xord	$0xffffffff:l,(r3,r2)
    5a3c:	ff ff 
    5a3e:	12 00 00 b0 	loadd	0xac54 <___malloc_av_+0x4>:l,(r1,r0)
    5a42:	54 ac 
    5a44:	14 00 02 b0 	andd	(r1,r0),(r3,r2)
    5a48:	13 00 20 b0 	stord	(r3,r2),0xac54 <___malloc_av_+0x4>:l
    5a4c:	54 ac 
    5a4e:	e0 18 09 fb 	br	*-0x5556 <.L50>:m

00005a52 <.L127>:
    5a52:	4f 92       	loadw	0x4:s(sp),r4

00005a54 <.L89>:
    5a54:	44 32       	addw	$0x4:s,r4
    5a56:	cc 61       	addd	(r12),(r12)
    5a58:	20 55       	movd	(r3,r2),(r1,r0)
    5a5a:	14 00 c0 b0 	andd	(r12),(r1,r0)
    5a5e:	00 56       	cmpd	$0x0:s,(r1,r0)
    5a60:	0a 1f       	beq	*-0x5a54 <.L89>:s
    5a62:	4f d2       	storw	r4,0x4:s(sp)
    5a64:	e0 18 09 fb 	br	*-0x556c <.L52>:m

00005a68 <.L74>:
    5a68:	b8 54 fc 00 	movd	$0xfc:m,(r9,r8)
    5a6c:	b3 5a 7e 00 	movw	$0x7e:m,r3
    5a70:	e0 18 41 fd 	br	*-0x57b0 <.L29>:m

00005a74 <_memchr>:
    5a74:	1e 01       	push	RA
    5a76:	17 01       	push	$0x2,r7
    5a78:	48 59       	movb	r4,r8
    5a7a:	20 55       	movd	(r3,r2),(r1,r0)
    5a7c:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    5a80:	03 00 
    5a82:	00 56       	cmpd	$0x0:s,(r1,r0)
    5a84:	07 11       	beq	*+0x5ab2 <.L12>:s
    5a86:	50 55       	movd	(r6,r5),(r1,r0)
    5a88:	90 60       	addd	$-1:s,(r1,r0)
    5a8a:	05 56       	cmpd	$0x0:s,(r6,r5)

00005a8c <.LFE1>:
    5a8c:	1c 10       	bne	*+0x5aa4 <.L20>:s
    5a8e:	ef 14       	br	*+0x5b2c <.L23>:s

00005a90 <.L22>:
    5a90:	12 60       	addd	$0x1:s,(r3,r2)
    5a92:	26 55       	movd	(r3,r2),(r7,r6)
    5a94:	46 00 00 00 	andd	$0x3:l,(r7,r6)
    5a98:	03 00 
    5a9a:	06 56       	cmpd	$0x0:s,(r7,r6)
    5a9c:	0c 10       	beq	*+0x5ab4 <.L2>:s
    5a9e:	00 56       	cmpd	$0x0:s,(r1,r0)
    5aa0:	00 12       	beq	*+0x5ae0 <.L16>:s
    5aa2:	90 60       	addd	$-1:s,(r1,r0)

00005aa4 <.L20>:
    5aa4:	52 b0       	loadb	0x0:s(r3,r2),r5
    5aa6:	85 51       	cmpb	r8,r5
    5aa8:	14 1f       	bne	*-0x5a90 <.L22>:s

00005aaa <.L3>:
    5aaa:	20 5b       	movw	r2,r0
    5aac:	31 5b       	movw	r3,r1
    5aae:	17 02       	pop	$0x2,r7
    5ab0:	1e 03       	popret	RA

00005ab2 <.L12>:
    5ab2:	50 55       	movd	(r6,r5),(r1,r0)

00005ab4 <.L2>:
    5ab4:	30 56       	cmpd	$0x3:s,(r1,r0)
    5ab6:	aa 11       	blo	*+0x5aea <.L7>:s

00005ab8 <.L9>:
    5ab8:	00 56       	cmpd	$0x0:s,(r1,r0)
    5aba:	03 11       	beq	*+0x5ae0 <.L16>:s
    5abc:	42 b0       	loadb	0x0:s(r3,r2),r4
    5abe:	84 51       	cmpb	r8,r4
    5ac0:	05 1f       	beq	*-0x5aaa <.L3>:s
    5ac2:	b0 60 fe ff 	addd	$0xfffe:m,(r1,r0)
    5ac6:	e5 10       	br	*+0x5ad0 <.L8>:s

00005ac8 <.L11>:
    5ac8:	90 60       	addd	$-1:s,(r1,r0)
    5aca:	42 b0       	loadb	0x0:s(r3,r2),r4
    5acc:	84 51       	cmpb	r8,r4
    5ace:	0e 1e       	beq	*-0x5aaa <.L3>:s

00005ad0 <.L8>:
    5ad0:	12 60       	addd	$0x1:s,(r3,r2)
    5ad2:	90 56       	cmpd	$-1:s,(r1,r0)
    5ad4:	1a 1f       	bne	*-0x5ac8 <.L11>:s
    5ad6:	02 54       	movd	$0x0:s,(r3,r2)
    5ad8:	20 5b       	movw	r2,r0
    5ada:	31 5b       	movw	r3,r1
    5adc:	17 02       	pop	$0x2,r7
    5ade:	1e 03       	popret	RA

00005ae0 <.L16>:
    5ae0:	02 55       	movd	(r1,r0),(r3,r2)
    5ae2:	20 5b       	movw	r2,r0
    5ae4:	31 5b       	movw	r3,r1
    5ae6:	17 02       	pop	$0x2,r7
    5ae8:	1e 03       	popret	RA

00005aea <.L7>:
    5aea:	b4 22 ff 00 	andw	$0xff:m,r4
    5aee:	45 5b       	movw	r4,r5
    5af0:	85 42       	ashuw	$8:s,r5
    5af2:	54 27       	orw	r5,r4
    5af4:	44 5e       	movxw	r4,(r5,r4)
    5af6:	46 55       	movd	(r5,r4),(r7,r6)
    5af8:	06 4d       	ashud	$16:s,(r7,r6)
    5afa:	14 00 46 90 	ord	(r5,r4),(r7,r6)

00005afe <.L10>:
    5afe:	e2 a0       	loadd	0x0:s(r3,r2),(ra)
    5b00:	14 00 6e a0 	xord	(r7,r6),(ra)
    5b04:	e4 55       	movd	(ra),(r5,r4)
    5b06:	24 00 fe fe 	addd	$0xfefefeff:l,(r5,r4)
    5b0a:	ff fe 
    5b0c:	6e 00 ff ff 	xord	$0xffffffff:l,(ra)
    5b10:	ff ff 
    5b12:	14 00 e4 b0 	andd	(ra),(r5,r4)
    5b16:	44 00 80 80 	andd	$0x80808080:l,(r5,r4)
    5b1a:	80 80 
    5b1c:	04 56       	cmpd	$0x0:s,(r5,r4)
    5b1e:	1d 1c       	bne	*-0x5ab8 <.L9>:s
    5b20:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    5b24:	42 60       	addd	$0x4:s,(r3,r2)
    5b26:	30 56       	cmpd	$0x3:s,(r1,r0)
    5b28:	ab 1e       	blo	*-0x5afe <.L10>:s
    5b2a:	e7 1c       	br	*-0x5ab8 <.L9>:s

00005b2c <.L23>:
    5b2c:	52 55       	movd	(r6,r5),(r3,r2)
    5b2e:	ee 1b       	br	*-0x5aaa <.L3>:s

00005b30 <_memcpy>:
    5b30:	9d 01       	push	$0x2,r13,RA
    5b32:	67 01       	push	$0x7,r7

00005b34 <.LFE0>:
    5b34:	fc 55       	movd	(sp),(r12)
    5b36:	0f ab       	loadd	0x16:s(sp),(r1,r0)
    5b38:	bc 60 16 00 	addd	$0x16:m,(r12)
    5b3c:	f0 56       	cmpd	$0xf:s,(r1,r0)
    5b3e:	b2 15       	bhs	*+0x5be2 <.L8>:s
    5b40:	46 55       	movd	(r5,r4),(r7,r6)
    5b42:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    5b46:	46 00 00 00 	andd	$0x3:l,(r7,r6)
    5b4a:	03 00 
    5b4c:	06 56       	cmpd	$0x0:s,(r7,r6)
    5b4e:	1e 14       	bne	*+0x5bea <.L9>:s
    5b50:	46 55       	movd	(r5,r4),(r7,r6)
    5b52:	2e 55       	movd	(r3,r2),(ra)
    5b54:	08 55       	movd	(r1,r0),(r9,r8)

00005b56 <.L4>:
    5b56:	a6 a0       	loadd	0x0:s(r7,r6),(r11,r10)
    5b58:	ae e0       	stord	(r11,r10),0x0:s(ra)
    5b5a:	a6 a2       	loadd	0x4:s(r7,r6),(r11,r10)
    5b5c:	ae e2       	stord	(r11,r10),0x4:s(ra)
    5b5e:	a6 a4       	loadd	0x8:s(r7,r6),(r11,r10)
    5b60:	ae e4       	stord	(r11,r10),0x8:s(ra)
    5b62:	a6 a6       	loadd	0xc:s(r7,r6),(r11,r10)
    5b64:	ae e6       	stord	(r11,r10),0xc:s(ra)
    5b66:	be 60 10 00 	addd	$0x10:m,(ra)
    5b6a:	b6 60 10 00 	addd	$0x10:m,(r7,r6)
    5b6e:	b8 60 f0 ff 	addd	$0xfff0:m,(r9,r8)
    5b72:	f8 56       	cmpd	$0xf:s,(r9,r8)
    5b74:	a1 1f       	blo	*-0x5b56 <.L4>:s
    5b76:	0a 55       	movd	(r1,r0),(r11,r10)
    5b78:	ba 60 f0 ff 	addd	$0xfff0:m,(r11,r10)
    5b7c:	4a 00 ff ff 	andd	$0xfffffff0:l,(r11,r10)
    5b80:	f0 ff 
    5b82:	ba 60 10 00 	addd	$0x10:m,(r11,r10)
    5b86:	2c 55       	movd	(r3,r2),(r12)
    5b88:	ac 61       	addd	(r11,r10),(r12)
    5b8a:	4a 61       	addd	(r5,r4),(r11,r10)
    5b8c:	0e 55       	movd	(r1,r0),(ra)
    5b8e:	4e 00 00 00 	andd	$0xf:l,(ra)
    5b92:	0f 00 
    5b94:	3e 56       	cmpd	$0x3:s,(ra)
    5b96:	bc 12       	bhs	*+0x5bee <.L10>:s
    5b98:	a8 55       	movd	(r11,r10),(r9,r8)
    5b9a:	c6 55       	movd	(r12),(r7,r6)
    5b9c:	e4 55       	movd	(ra),(r5,r4)

00005b9e <.L5>:
    5b9e:	d8 a0       	loadd	0x0:s(r9,r8),(r13)
    5ba0:	d6 e0       	stord	(r13),0x0:s(r7,r6)
    5ba2:	46 60       	addd	$0x4:s,(r7,r6)
    5ba4:	48 60       	addd	$0x4:s,(r9,r8)
    5ba6:	b4 60 fc ff 	addd	$0xfffc:m,(r5,r4)
    5baa:	34 56       	cmpd	$0x3:s,(r5,r4)
    5bac:	a9 1f       	blo	*-0x5b9e <.L5>:s
    5bae:	be 60 fc ff 	addd	$0xfffc:m,(ra)
    5bb2:	4e 00 ff ff 	andd	$0xfffffffc:l,(ra)
    5bb6:	fc ff 
    5bb8:	4e 60       	addd	$0x4:s,(ra)
    5bba:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    5bbe:	03 00 
    5bc0:	a4 55       	movd	(r11,r10),(r5,r4)
    5bc2:	e4 61       	addd	(ra),(r5,r4)
    5bc4:	c6 55       	movd	(r12),(r7,r6)
    5bc6:	e6 61       	addd	(ra),(r7,r6)
    5bc8:	00 56       	cmpd	$0x0:s,(r1,r0)
    5bca:	08 10       	beq	*+0x5bda <.L14>:s

00005bcc <.L3>:
    5bcc:	60 61       	addd	(r7,r6),(r1,r0)

00005bce <.L6>:
    5bce:	84 b0       	loadb	0x0:s(r5,r4),r8
    5bd0:	86 f0       	storb	r8,0x0:s(r7,r6)
    5bd2:	16 60       	addd	$0x1:s,(r7,r6)
    5bd4:	14 60       	addd	$0x1:s,(r5,r4)
    5bd6:	06 57       	cmpd	(r1,r0),(r7,r6)
    5bd8:	1b 1f       	bne	*-0x5bce <.L6>:s

00005bda <.L14>:
    5bda:	20 5b       	movw	r2,r0
    5bdc:	31 5b       	movw	r3,r1
    5bde:	67 02       	pop	$0x7,r7
    5be0:	9d 03       	popret	$0x2,r13,RA

00005be2 <.L8>:
    5be2:	26 55       	movd	(r3,r2),(r7,r6)
    5be4:	00 56       	cmpd	$0x0:s,(r1,r0)
    5be6:	13 1f       	bne	*-0x5bcc <.L3>:s
    5be8:	e9 1f       	br	*-0x5bda <.L14>:s

00005bea <.L9>:
    5bea:	26 55       	movd	(r3,r2),(r7,r6)
    5bec:	e0 1f       	br	*-0x5bcc <.L3>:s

00005bee <.L10>:
    5bee:	a4 55       	movd	(r11,r10),(r5,r4)
    5bf0:	c6 55       	movd	(r12),(r7,r6)
    5bf2:	e0 55       	movd	(ra),(r1,r0)
    5bf4:	00 56       	cmpd	$0x0:s,(r1,r0)
    5bf6:	1b 1e       	bne	*-0x5bcc <.L3>:s
    5bf8:	e1 1f       	br	*-0x5bda <.L14>:s
	...

00005bfc <___malloc_lock>:
    5bfc:	ee 0a       	jump	(ra)

00005bfe <.LFE0>:
	...

00005c00 <___malloc_unlock>:
    5c00:	ee 0a       	jump	(ra)

00005c02 <.LFE1>:
	...

00005c04 <__Balloc>:
    5c04:	1e 01       	push	RA
    5c06:	37 01       	push	$0x4,r7
    5c08:	28 55       	movd	(r3,r2),(r9,r8)
    5c0a:	4a 5b       	movw	r4,r10
    5c0c:	02 af 48 00 	loadd	0x48:m(r3,r2),(r1,r0)
    5c10:	00 56       	cmpd	$0x0:s,(r1,r0)
    5c12:	01 11       	beq	*+0x5c34 <.L11>:s

00005c14 <.L2>:
    5c14:	a2 5e       	movxw	r10,(r3,r2)
    5c16:	22 4c       	ashud	$2:s,(r3,r2)
    5c18:	02 61       	addd	(r1,r0),(r3,r2)
    5c1a:	e2 a0       	loadd	0x0:s(r3,r2),(ra)
    5c1c:	0e 56       	cmpd	$0x0:s,(ra)
    5c1e:	08 11       	beq	*+0x5c4e <.L4>:s
    5c20:	0e a0       	loadd	0x0:s(ra),(r1,r0)
    5c22:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)

00005c24 <.L5>:
    5c24:	0e c3 0a 00 	storw	$0x0:s,0xa:m(ra)
    5c28:	0e c3 08 00 	storw	$0x0:s,0x8:m(ra)

00005c2c <.L3>:
    5c2c:	e0 5b       	movw	r14,r0
    5c2e:	e1 5b       	movw	r14,r1
    5c30:	37 02       	pop	$0x4,r7
    5c32:	1e 03       	popret	RA

00005c34 <.L11>:
    5c34:	b0 54 21 00 	movd	$0x21:m,(r1,r0)
    5c38:	10 01       	push	$0x2,r0
    5c3a:	44 54       	movd	$0x4:s,(r5,r4)
    5c3c:	00 c0 18 1d 	bal	(ra),*+0x7954 <__calloc_r>:m

00005c40 <.LVL6>:
    5c40:	08 ef 48 00 	stord	(r1,r0),0x48:m(r9,r8)
    5c44:	4f 60       	addd	$0x4:s,(sp)
    5c46:	00 56       	cmpd	$0x0:s,(r1,r0)
    5c48:	16 1e       	bne	*-0x5c14 <.L2>:s

00005c4a <.L6>:
    5c4a:	0e 54       	movd	$0x0:s,(ra)
    5c4c:	e0 1f       	br	*-0x5c2c <.L3>:s

00005c4e <.L4>:
    5c4e:	17 5a       	movw	$0x1:s,r7
    5c50:	a7 45       	ashuw	r10,r7
    5c52:	70 5b       	movw	r7,r0
    5c54:	90 32       	addw	$-1:s,r0
    5c56:	00 5e       	movxw	r0,(r1,r0)
    5c58:	40 60       	addd	$0x4:s,(r1,r0)
    5c5a:	20 4c       	ashud	$2:s,(r1,r0)
    5c5c:	10 01       	push	$0x2,r0
    5c5e:	14 54       	movd	$0x1:s,(r5,r4)
    5c60:	82 55       	movd	(r9,r8),(r3,r2)
    5c62:	00 c0 f2 1c 	bal	(ra),*+0x7954 <__calloc_r>:m

00005c66 <.LVL9>:
    5c66:	0e 55       	movd	(r1,r0),(ra)
    5c68:	4f 60       	addd	$0x4:s,(sp)
    5c6a:	00 56       	cmpd	$0x0:s,(r1,r0)
    5c6c:	0f 1e       	beq	*-0x5c4a <.L6>:s
    5c6e:	a0 d2       	storw	r10,0x4:s(r1,r0)
    5c70:	70 d3       	storw	r7,0x6:s(r1,r0)
    5c72:	e9 1d       	br	*-0x5c24 <.L5>:s

00005c74 <__Bfree>:
    5c74:	1e 01       	push	RA
    5c76:	04 56       	cmpd	$0x0:s,(r5,r4)
    5c78:	0a 10       	beq	*+0x5c8c <.L12>:s
    5c7a:	e4 92       	loadw	0x4:s(r5,r4),r14
    5c7c:	ee 5e       	movxw	r14,(ra)
    5c7e:	2e 4c       	ashud	$2:s,(ra)
    5c80:	02 af 48 00 	loadd	0x48:m(r3,r2),(r1,r0)
    5c84:	e0 61       	addd	(ra),(r1,r0)
    5c86:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    5c88:	24 e0       	stord	(r3,r2),0x0:s(r5,r4)
    5c8a:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)

00005c8c <.L12>:
    5c8c:	1e 03       	popret	RA

00005c8e <.LFE1>:
	...

00005c90 <___multadd>:
    5c90:	9d 01       	push	$0x2,r13,RA
    5c92:	67 01       	push	$0x7,r7
    5c94:	bf 60 f0 ff 	addd	$0xfff0:m,(sp)
    5c98:	fc 55       	movd	(sp),(r12)
    5c9a:	bc 60 26 00 	addd	$0x26:m,(r12)
    5c9e:	2f e6       	stord	(r3,r2),0xc:s(sp)
    5ca0:	4f e4       	stord	(r5,r4),0x8:s(sp)
    5ca2:	cc 90       	loadw	0x0:s(r12),r12
    5ca4:	74 95       	loadw	0xa:s(r5,r4),r7
    5ca6:	7f d2       	storw	r7,0x4:s(sp)
    5ca8:	4d 55       	movd	(r5,r4),(r13)
    5caa:	cd 60       	addd	$0xc:s,(r13)
    5cac:	60 5e       	movxw	r6,(r1,r0)
    5cae:	0f e0       	stord	(r1,r0),0x0:s(sp)
    5cb0:	07 5a       	movw	$0x0:s,r7

00005cb2 <.L18>:
    5cb2:	ad a0       	loadd	0x0:s(r13),(r11,r10)
    5cb4:	a2 55       	movd	(r11,r10),(r3,r2)
    5cb6:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    5cba:	ff ff 
    5cbc:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    5cbe:	00 c0 f6 2b 	bal	(ra),*+0x88b4 <___mulsi3>:m
    5cc2:	08 55       	movd	(r1,r0),(r9,r8)
    5cc4:	cc 5e       	movxw	r12,(r12)
    5cc6:	c8 61       	addd	(r12),(r9,r8)
    5cc8:	8c 55       	movd	(r9,r8),(r12)
    5cca:	0c 4b       	lshd	$-16:s,(r12)
    5ccc:	4f a0       	loadd	0x0:s(sp),(r5,r4)
    5cce:	b2 5b       	movw	r11,r2
    5cd0:	03 5a       	movw	$0x0:s,r3
    5cd2:	00 c0 e2 2b 	bal	(ra),*+0x88b4 <___mulsi3>:m
    5cd6:	c0 61       	addd	(r12),(r1,r0)
    5cd8:	1c 5b       	movw	r1,r12
    5cda:	00 4d       	ashud	$16:s,(r1,r0)
    5cdc:	48 00 00 00 	andd	$0xffff:l,(r9,r8)
    5ce0:	ff ff 
    5ce2:	80 61       	addd	(r9,r8),(r1,r0)
    5ce4:	0d e0       	stord	(r1,r0),0x0:s(r13)
    5ce6:	4d 60       	addd	$0x4:s,(r13)
    5ce8:	17 32       	addw	$0x1:s,r7
    5cea:	1f 92       	loadw	0x4:s(sp),r1
    5cec:	71 53       	cmpw	r7,r1
    5cee:	c2 1e       	blt	*-0x5cb2 <.L18>:s
    5cf0:	0c 52       	cmpw	$0x0:s,r12
    5cf2:	00 11       	beq	*+0x5d12 <.L19>:s
    5cf4:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    5cf6:	02 93       	loadw	0x6:s(r3,r2),r0
    5cf8:	01 53       	cmpw	r0,r1
    5cfa:	72 11       	ble	*+0x5d1e <.L26>:s

00005cfc <.L20>:
    5cfc:	7f 92       	loadw	0x4:s(sp),r7
    5cfe:	70 5e       	movxw	r7,(r1,r0)
    5d00:	30 60       	addd	$0x3:s,(r1,r0)
    5d02:	20 4c       	ashud	$2:s,(r1,r0)
    5d04:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    5d06:	20 61       	addd	(r3,r2),(r1,r0)
    5d08:	cc 5e       	movxw	r12,(r12)
    5d0a:	c0 e0       	stord	(r12),0x0:s(r1,r0)
    5d0c:	70 5b       	movw	r7,r0
    5d0e:	10 32       	addw	$0x1:s,r0
    5d10:	02 d5       	storw	r0,0xa:s(r3,r2)

00005d12 <.L19>:
    5d12:	0f 94       	loadw	0x8:s(sp),r0
    5d14:	1f 95       	loadw	0xa:s(sp),r1
    5d16:	bf 60 10 00 	addd	$0x10:m,(sp)
    5d1a:	67 02       	pop	$0x7,r7
    5d1c:	9d 03       	popret	$0x2,r13,RA

00005d1e <.L26>:
    5d1e:	42 92       	loadw	0x4:s(r3,r2),r4
    5d20:	14 32       	addw	$0x1:s,r4
    5d22:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    5d24:	ff c0 e1 fe 	bal	(ra),*-0x5c04 <__Balloc>:m

00005d28 <.LVL38>:
    5d28:	08 55       	movd	(r1,r0),(r9,r8)
    5d2a:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    5d2c:	84 60       	addd	$0x8:s,(r5,r4)
    5d2e:	02 55       	movd	(r1,r0),(r3,r2)
    5d30:	82 60       	addd	$0x8:s,(r3,r2)
    5d32:	6f a4       	loadd	0x8:s(sp),(r7,r6)
    5d34:	06 95       	loadw	0xa:s(r7,r6),r0
    5d36:	00 5e       	movxw	r0,(r1,r0)
    5d38:	10 60       	addd	$0x1:s,(r1,r0)
    5d3a:	20 4c       	ashud	$2:s,(r1,r0)
    5d3c:	10 01       	push	$0x2,r0
    5d3e:	ff c0 f3 fd 	bal	(ra),*-0x5b30 <_memcpy>:m

00005d42 <.LBB8>:
    5d42:	4f 60       	addd	$0x4:s,(sp)
    5d44:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    5d46:	00 56       	cmpd	$0x0:s,(r1,r0)
    5d48:	0e 10       	beq	*+0x5d64 <.L21>:s
    5d4a:	20 92       	loadw	0x4:s(r1,r0),r2
    5d4c:	22 5e       	movxw	r2,(r3,r2)
    5d4e:	22 4c       	ashud	$2:s,(r3,r2)
    5d50:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    5d52:	04 af 48 00 	loadd	0x48:m(r5,r4),(r1,r0)
    5d56:	20 61       	addd	(r3,r2),(r1,r0)
    5d58:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    5d5a:	5f a4       	loadd	0x8:s(sp),(r6,r5)
    5d5c:	25 e0       	stord	(r3,r2),0x0:s(r6,r5)
    5d5e:	50 e0       	stord	(r6,r5),0x0:s(r1,r0)
    5d60:	8f e4       	stord	(r9,r8),0x8:s(sp)
    5d62:	ed 1c       	br	*-0x5cfc <.L20>:s

00005d64 <.L21>:
    5d64:	8f e4       	stord	(r9,r8),0x8:s(sp)
    5d66:	eb 1c       	br	*-0x5cfc <.L20>:s

00005d68 <___s2b>:
    5d68:	9d 01       	push	$0x2,r13,RA
    5d6a:	67 01       	push	$0x7,r7
    5d6c:	bf 60 f8 ff 	addd	$0xfff8:m,(sp)
    5d70:	f0 55       	movd	(sp),(r1,r0)
    5d72:	b0 60 1e 00 	addd	$0x1e:m,(r1,r0)
    5d76:	2c 55       	movd	(r3,r2),(r12)
    5d78:	48 55       	movd	(r5,r4),(r9,r8)
    5d7a:	6f d0       	storw	r6,0x0:s(sp)
    5d7c:	70 90       	loadw	0x0:s(r1,r0),r7
    5d7e:	a0 a1       	loadd	0x2:s(r1,r0),(r11,r10)
    5d80:	72 5b       	movw	r7,r2
    5d82:	82 32       	addw	$0x8:s,r2
    5d84:	b3 5a 09 00 	movw	$0x9:m,r3
    5d88:	00 c0 1c 3a 	bal	(ra),*+0x97a4 <___divhi3>:m
    5d8c:	00 5e       	movxw	r0,(r1,r0)
    5d8e:	10 56       	cmpd	$0x1:s,(r1,r0)
    5d90:	d2 15       	bge	*+0x5e34 <.L35>:s
    5d92:	12 54       	movd	$0x1:s,(r3,r2)
    5d94:	04 5a       	movw	$0x0:s,r4

00005d96 <.L29>:
    5d96:	22 61       	addd	(r3,r2),(r3,r2)
    5d98:	14 32       	addw	$0x1:s,r4
    5d9a:	20 57       	cmpd	(r3,r2),(r1,r0)
    5d9c:	cd 1f       	blt	*-0x5d96 <.L29>:s

00005d9e <.L28>:
    5d9e:	c2 55       	movd	(r12),(r3,r2)
    5da0:	ff c0 65 fe 	bal	(ra),*-0x5c04 <__Balloc>:m

00005da4 <.LVL52>:
    5da4:	04 55       	movd	(r1,r0),(r5,r4)
    5da6:	a0 e6       	stord	(r11,r10),0xc:s(r1,r0)
    5da8:	10 c3 0a 00 	storw	$0x1:s,0xa:m(r1,r0)
    5dac:	0f 90       	loadw	0x0:s(sp),r0
    5dae:	b0 52 09 00 	cmpw	$0x9:m,r0
    5db2:	dd 13       	bge	*+0x5e2c <.L30>:s
    5db4:	80 55       	movd	(r9,r8),(r1,r0)
    5db6:	b0 60 09 00 	addd	$0x9:m,(r1,r0)
    5dba:	0f e2       	stord	(r1,r0),0x4:s(sp)
    5dbc:	0f 90       	loadw	0x0:s(sp),r0
    5dbe:	b0 32 f6 ff 	addw	$0xfff6:m,r0
    5dc2:	0d 5f       	movzw	r0,(r13)
    5dc4:	da 55       	movd	(r13),(r11,r10)
    5dc6:	aa 60       	addd	$0xa:s,(r11,r10)
    5dc8:	8a 61       	addd	(r9,r8),(r11,r10)
    5dca:	8f a2       	loadd	0x4:s(sp),(r9,r8)

00005dcc <.L31>:
    5dcc:	08 b0       	loadb	0x0:s(r9,r8),r0
    5dce:	00 5c       	movxb	r0,r0
    5dd0:	b0 32 d0 ff 	addw	$0xffd0:m,r0
    5dd4:	18 60       	addd	$0x1:s,(r9,r8)
    5dd6:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    5dda:	00 01       	push	$0x1,r0
    5ddc:	a6 5a       	movw	$0xa:s,r6
    5dde:	c2 55       	movd	(r12),(r3,r2)
    5de0:	ff c0 b1 fe 	bal	(ra),*-0x5c90 <___multadd>:m

00005de4 <.LVL60>:
    5de4:	04 55       	movd	(r1,r0),(r5,r4)
    5de6:	4f 60       	addd	$0x4:s,(sp)
    5de8:	a8 57       	cmpd	(r11,r10),(r9,r8)
    5dea:	11 1f       	bne	*-0x5dcc <.L31>:s
    5dec:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    5dee:	d8 61       	addd	(r13),(r9,r8)
    5df0:	28 60       	addd	$0x2:s,(r9,r8)
    5df2:	0f 90       	loadw	0x0:s(sp),r0

00005df4 <.L32>:
    5df4:	07 53       	cmpw	r0,r7
    5df6:	d6 11       	bge	*+0x5e22 <.L33>:s
    5df8:	97 32       	addw	$-1:s,r7
    5dfa:	07 3b       	subw	r0,r7
    5dfc:	7a 5f       	movzw	r7,(r11,r10)
    5dfe:	1a 60       	addd	$0x1:s,(r11,r10)
    5e00:	8a 61       	addd	(r9,r8),(r11,r10)

00005e02 <.L34>:
    5e02:	08 b0       	loadb	0x0:s(r9,r8),r0
    5e04:	00 5c       	movxb	r0,r0
    5e06:	b0 32 d0 ff 	addw	$0xffd0:m,r0
    5e0a:	18 60       	addd	$0x1:s,(r9,r8)
    5e0c:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    5e10:	00 01       	push	$0x1,r0
    5e12:	a6 5a       	movw	$0xa:s,r6
    5e14:	c2 55       	movd	(r12),(r3,r2)
    5e16:	ff c0 7b fe 	bal	(ra),*-0x5c90 <___multadd>:m

00005e1a <.LVL67>:
    5e1a:	04 55       	movd	(r1,r0),(r5,r4)
    5e1c:	4f 60       	addd	$0x4:s,(sp)
    5e1e:	a8 57       	cmpd	(r11,r10),(r9,r8)
    5e20:	11 1f       	bne	*-0x5e02 <.L34>:s

00005e22 <.L33>:
    5e22:	40 5b       	movw	r4,r0
    5e24:	51 5b       	movw	r5,r1
    5e26:	8f 60       	addd	$0x8:s,(sp)
    5e28:	67 02       	pop	$0x7,r7
    5e2a:	9d 03       	popret	$0x2,r13,RA

00005e2c <.L30>:
    5e2c:	a8 60       	addd	$0xa:s,(r9,r8)
    5e2e:	b0 5a 09 00 	movw	$0x9:m,r0
    5e32:	e1 1e       	br	*-0x5df4 <.L32>:s

00005e34 <.L35>:
    5e34:	04 5a       	movw	$0x0:s,r4
    5e36:	e4 1b       	br	*-0x5d9e <.L28>:s

00005e38 <___hi0bits>:
    5e38:	24 55       	movd	(r3,r2),(r5,r4)
    5e3a:	44 00 ff ff 	andd	$0xffff0000:l,(r5,r4)
    5e3e:	00 00 
    5e40:	00 5a       	movw	$0x0:s,r0
    5e42:	04 56       	cmpd	$0x0:s,(r5,r4)
    5e44:	14 10       	bne	*+0x5e4c <.L40>:s
    5e46:	02 4d       	ashud	$16:s,(r3,r2)
    5e48:	b0 5a 10 00 	movw	$0x10:m,r0

00005e4c <.L40>:
    5e4c:	24 55       	movd	(r3,r2),(r5,r4)
    5e4e:	44 00 00 ff 	andd	$0xff000000:l,(r5,r4)
    5e52:	00 00 
    5e54:	04 56       	cmpd	$0x0:s,(r5,r4)
    5e56:	13 10       	bne	*+0x5e5c <.L41>:s
    5e58:	80 32       	addw	$0x8:s,r0
    5e5a:	82 4c       	ashud	$8:s,(r3,r2)

00005e5c <.L41>:
    5e5c:	24 55       	movd	(r3,r2),(r5,r4)
    5e5e:	44 00 00 f0 	andd	$0xf0000000:l,(r5,r4)
    5e62:	00 00 
    5e64:	04 56       	cmpd	$0x0:s,(r5,r4)
    5e66:	13 10       	bne	*+0x5e6c <.L42>:s
    5e68:	40 32       	addw	$0x4:s,r0
    5e6a:	42 4c       	ashud	$4:s,(r3,r2)

00005e6c <.L42>:
    5e6c:	24 55       	movd	(r3,r2),(r5,r4)
    5e6e:	44 00 00 c0 	andd	$0xc0000000:l,(r5,r4)
    5e72:	00 00 
    5e74:	04 56       	cmpd	$0x0:s,(r5,r4)
    5e76:	13 10       	bne	*+0x5e7c <.L43>:s
    5e78:	20 32       	addw	$0x2:s,r0
    5e7a:	22 4c       	ashud	$2:s,(r3,r2)

00005e7c <.L43>:
    5e7c:	02 56       	cmpd	$0x0:s,(r3,r2)
    5e7e:	68 10       	bgt	*+0x5e8e <.L44>:s
    5e80:	42 00 00 40 	andd	$0x40000000:l,(r3,r2)
    5e84:	00 00 
    5e86:	02 56       	cmpd	$0x0:s,(r3,r2)
    5e88:	14 10       	bne	*+0x5e90 <.L47>:s
    5e8a:	b0 5a 20 00 	movw	$0x20:m,r0

00005e8e <.L44>:
    5e8e:	ee 0a       	jump	(ra)

00005e90 <.L47>:
    5e90:	10 32       	addw	$0x1:s,r0
    5e92:	ee 0a       	jump	(ra)

00005e94 <___lo0bits>:
    5e94:	1e 01       	push	RA
    5e96:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    5e98:	40 55       	movd	(r5,r4),(r1,r0)
    5e9a:	40 00 00 00 	andd	$0x7:l,(r1,r0)
    5e9e:	07 00 
    5ea0:	00 56       	cmpd	$0x0:s,(r1,r0)
    5ea2:	02 11       	beq	*+0x5ec6 <.L49>:s
    5ea4:	4e 55       	movd	(r5,r4),(ra)
    5ea6:	4e 00 00 00 	andd	$0x1:l,(ra)
    5eaa:	01 00 
    5eac:	00 5a       	movw	$0x0:s,r0
    5eae:	0e 56       	cmpd	$0x0:s,(ra)
    5eb0:	1a 10       	bne	*+0x5ec4 <.L50>:s
    5eb2:	40 55       	movd	(r5,r4),(r1,r0)
    5eb4:	40 00 00 00 	andd	$0x2:l,(r1,r0)
    5eb8:	02 00 
    5eba:	00 56       	cmpd	$0x0:s,(r1,r0)
    5ebc:	1e 12       	bne	*+0x5f18 <.L60>:s
    5ebe:	e4 4b       	lshd	$-2:s,(r5,r4)
    5ec0:	42 e0       	stord	(r5,r4),0x0:s(r3,r2)
    5ec2:	20 5a       	movw	$0x2:s,r0

00005ec4 <.L50>:
    5ec4:	1e 03       	popret	RA

00005ec6 <.L49>:
    5ec6:	00 5a       	movw	$0x0:s,r0
    5ec8:	04 53       	cmpw	r0,r4
    5eca:	14 10       	bne	*+0x5ed2 <.L52>:s
    5ecc:	04 4b       	lshd	$-16:s,(r5,r4)
    5ece:	b0 5a 10 00 	movw	$0x10:m,r0

00005ed2 <.L52>:
    5ed2:	04 50       	cmpb	$0x0:s,r4
    5ed4:	13 10       	bne	*+0x5eda <.L53>:s
    5ed6:	80 32       	addw	$0x8:s,r0
    5ed8:	84 4b       	lshd	$-8:s,(r5,r4)

00005eda <.L53>:
    5eda:	4e 55       	movd	(r5,r4),(ra)
    5edc:	4e 00 00 00 	andd	$0xf:l,(ra)
    5ee0:	0f 00 
    5ee2:	0e 56       	cmpd	$0x0:s,(ra)
    5ee4:	13 10       	bne	*+0x5eea <.L54>:s
    5ee6:	40 32       	addw	$0x4:s,r0
    5ee8:	c4 4b       	lshd	$-4:s,(r5,r4)

00005eea <.L54>:
    5eea:	4e 55       	movd	(r5,r4),(ra)
    5eec:	4e 00 00 00 	andd	$0x3:l,(ra)
    5ef0:	03 00 
    5ef2:	0e 56       	cmpd	$0x0:s,(ra)
    5ef4:	13 10       	bne	*+0x5efa <.L55>:s
    5ef6:	20 32       	addw	$0x2:s,r0
    5ef8:	e4 4b       	lshd	$-2:s,(r5,r4)

00005efa <.L55>:
    5efa:	4e 55       	movd	(r5,r4),(ra)
    5efc:	4e 00 00 00 	andd	$0x1:l,(ra)
    5f00:	01 00 
    5f02:	0e 56       	cmpd	$0x0:s,(ra)
    5f04:	18 10       	bne	*+0x5f14 <.L56>:s
    5f06:	f4 4b       	lshd	$-1:s,(r5,r4)
    5f08:	04 56       	cmpd	$0x0:s,(r5,r4)
    5f0a:	14 10       	bne	*+0x5f12 <.L61>:s
    5f0c:	b0 5a 20 00 	movw	$0x20:m,r0
    5f10:	1e 03       	popret	RA

00005f12 <.L61>:
    5f12:	10 32       	addw	$0x1:s,r0

00005f14 <.L56>:
    5f14:	42 e0       	stord	(r5,r4),0x0:s(r3,r2)
    5f16:	1e 03       	popret	RA

00005f18 <.L60>:
    5f18:	f4 4b       	lshd	$-1:s,(r5,r4)
    5f1a:	42 e0       	stord	(r5,r4),0x0:s(r3,r2)
    5f1c:	10 5a       	movw	$0x1:s,r0
    5f1e:	1e 03       	popret	RA

00005f20 <___i2b>:
    5f20:	1e 01       	push	RA
    5f22:	07 01       	push	$0x1,r7
    5f24:	47 5b       	movw	r4,r7
    5f26:	14 5a       	movw	$0x1:s,r4
    5f28:	ff c0 dd fc 	bal	(ra),*-0x5c04 <__Balloc>:m

00005f2c <.LVL110>:
    5f2c:	02 55       	movd	(r1,r0),(r3,r2)
    5f2e:	74 5e       	movxw	r7,(r5,r4)
    5f30:	40 e6       	stord	(r5,r4),0xc:s(r1,r0)
    5f32:	10 c3 0a 00 	storw	$0x1:s,0xa:m(r1,r0)
    5f36:	31 5b       	movw	r3,r1
    5f38:	07 02       	pop	$0x1,r7
    5f3a:	1e 03       	popret	RA

00005f3c <___multiply>:
    5f3c:	9d 01       	push	$0x2,r13,RA
    5f3e:	67 01       	push	$0x7,r7
    5f40:	bf 60 d8 ff 	addd	$0xffd8:m,(sp)
    5f44:	fc 55       	movd	(sp),(r12)
    5f46:	bc 60 3e 00 	addd	$0x3e:m,(r12)
    5f4a:	48 55       	movd	(r5,r4),(r9,r8)
    5f4c:	cc a0       	loadd	0x0:s(r12),(r12)
    5f4e:	b4 95       	loadw	0xa:s(r5,r4),r11
    5f50:	ac 95       	loadw	0xa:s(r12),r10
    5f52:	ab 53       	cmpw	r10,r11
    5f54:	78 10       	ble	*+0x5f64 <.L64>:s
    5f56:	b0 5b       	movw	r11,r0
    5f58:	ab 5b       	movw	r10,r11
    5f5a:	0a 5b       	movw	r0,r10
    5f5c:	90 5b       	movw	r9,r0
    5f5e:	c8 55       	movd	(r12),(r9,r8)
    5f60:	05 5b       	movw	r0,r5
    5f62:	4c 55       	movd	(r5,r4),(r12)

00005f64 <.L64>:
    5f64:	48 92       	loadw	0x4:s(r9,r8),r4
    5f66:	b7 5b       	movw	r11,r7
    5f68:	a7 33       	addw	r10,r7
    5f6a:	08 93       	loadw	0x6:s(r9,r8),r0
    5f6c:	07 53       	cmpw	r0,r7
    5f6e:	c0 08       	slt	r0
    5f70:	04 33       	addw	r0,r4
    5f72:	ff c0 93 fc 	bal	(ra),*-0x5c04 <__Balloc>:m

00005f76 <.LVL117>:
    5f76:	0f ef 24 00 	stord	(r1,r0),0x24:m(sp)
    5f7a:	04 55       	movd	(r1,r0),(r5,r4)
    5f7c:	c4 60       	addd	$0xc:s,(r5,r4)
    5f7e:	70 5e       	movxw	r7,(r1,r0)
    5f80:	30 60       	addd	$0x3:s,(r1,r0)
    5f82:	20 4c       	ashud	$2:s,(r1,r0)
    5f84:	2f af 24 00 	loadd	0x24:m(sp),(r3,r2)
    5f88:	02 61       	addd	(r1,r0),(r3,r2)
    5f8a:	2f ef 20 00 	stord	(r3,r2),0x20:m(sp)
    5f8e:	40 55       	movd	(r5,r4),(r1,r0)
    5f90:	02 54       	movd	$0x0:s,(r3,r2)
    5f92:	df af 20 00 	loadd	0x20:m(sp),(r13)
    5f96:	d4 57       	cmpd	(r13),(r5,r4)
    5f98:	59 10       	bls	*+0x5faa <.L70>:s
    5f9a:	4d 55       	movd	(r5,r4),(r13)
    5f9c:	4f af 20 00 	loadd	0x20:m(sp),(r5,r4)

00005fa0 <.L89>:
    5fa0:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    5fa2:	40 60       	addd	$0x4:s,(r1,r0)
    5fa4:	04 57       	cmpd	(r1,r0),(r5,r4)
    5fa6:	ad 1f       	blo	*-0x5fa0 <.L89>:s
    5fa8:	d4 55       	movd	(r13),(r5,r4)

00005faa <.L70>:
    5faa:	8d 55       	movd	(r9,r8),(r13)
    5fac:	cd 60       	addd	$0xc:s,(r13)
    5fae:	df ef 1c 00 	stord	(r13),0x1c:m(sp)
    5fb2:	bd 5e       	movxw	r11,(r13)
    5fb4:	3d 60       	addd	$0x3:s,(r13)
    5fb6:	2d 4c       	ashud	$2:s,(r13)
    5fb8:	8d 61       	addd	(r9,r8),(r13)
    5fba:	df e6       	stord	(r13),0xc:s(sp)
    5fbc:	cd 55       	movd	(r12),(r13)
    5fbe:	cd 60       	addd	$0xc:s,(r13)
    5fc0:	df e8       	stord	(r13),0x10:s(sp)
    5fc2:	ad 5e       	movxw	r10,(r13)
    5fc4:	3d 60       	addd	$0x3:s,(r13)
    5fc6:	2d 4c       	ashud	$2:s,(r13)
    5fc8:	cd 61       	addd	(r12),(r13)
    5fca:	df ec       	stord	(r13),0x18:s(sp)
    5fcc:	4f ea       	stord	(r5,r4),0x14:s(sp)
    5fce:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    5fd0:	d0 57       	cmpd	(r13),(r1,r0)
    5fd2:	50 18 0c 01 	bls	*+0x60de <.L68>:m

00005fd6 <.L88>:
    5fd6:	df a8       	loadd	0x10:s(sp),(r13)
    5fd8:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    5fda:	0d 55       	movd	(r1,r0),(r13)
    5fdc:	4d 00 00 00 	andd	$0xffff:l,(r13)
    5fe0:	ff ff 
    5fe2:	df e2       	stord	(r13),0x4:s(sp)
    5fe4:	0d 56       	cmpd	$0x0:s,(r13)
    5fe6:	05 13       	beq	*+0x6050 <.L73>:s
    5fe8:	df aa       	loadd	0x14:s(sp),(r13)
    5fea:	cf af 1c 00 	loadd	0x1c:m(sp),(r12)
    5fee:	00 54       	movd	$0x0:s,(r1,r0)
    5ff0:	0f e4       	stord	(r1,r0),0x8:s(sp)

00005ff2 <.L74>:
    5ff2:	1c a0       	loadd	0x0:s(r12),(r2,r1)
    5ff4:	1f e0       	stord	(r2,r1),0x0:s(sp)
    5ff6:	ad a0       	loadd	0x0:s(r13),(r11,r10)
    5ff8:	12 55       	movd	(r2,r1),(r3,r2)
    5ffa:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    5ffe:	ff ff 
    6000:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    6002:	00 c0 b2 28 	bal	(ra),*+0x88b4 <___mulsi3>:m
    6006:	08 55       	movd	(r1,r0),(r9,r8)
    6008:	a0 55       	movd	(r11,r10),(r1,r0)
    600a:	40 00 00 00 	andd	$0xffff:l,(r1,r0)
    600e:	ff ff 
    6010:	08 61       	addd	(r1,r0),(r9,r8)
    6012:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    6014:	28 61       	addd	(r3,r2),(r9,r8)
    6016:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    6018:	2f 91       	loadw	0x2:s(sp),r2
    601a:	03 5a       	movw	$0x0:s,r3
    601c:	00 c0 98 28 	bal	(ra),*+0x88b4 <___mulsi3>:m
    6020:	0a 4b       	lshd	$-16:s,(r11,r10)
    6022:	a0 61       	addd	(r11,r10),(r1,r0)
    6024:	82 55       	movd	(r9,r8),(r3,r2)
    6026:	02 4b       	lshd	$-16:s,(r3,r2)
    6028:	20 61       	addd	(r3,r2),(r1,r0)
    602a:	4c 60       	addd	$0x4:s,(r12)
    602c:	03 55       	movd	(r1,r0),(r4,r3)
    602e:	03 4b       	lshd	$-16:s,(r4,r3)
    6030:	3f e4       	stord	(r4,r3),0x8:s(sp)
    6032:	00 4d       	ashud	$16:s,(r1,r0)
    6034:	48 00 00 00 	andd	$0xffff:l,(r9,r8)
    6038:	ff ff 
    603a:	14 00 80 90 	ord	(r9,r8),(r1,r0)
    603e:	0d e0       	stord	(r1,r0),0x0:s(r13)
    6040:	4d 60       	addd	$0x4:s,(r13)
    6042:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    6044:	c4 57       	cmpd	(r12),(r5,r4)
    6046:	a6 1d       	blo	*-0x5ff2 <.L74>:s
    6048:	5f a4       	loadd	0x8:s(sp),(r6,r5)
    604a:	5d e0       	stord	(r6,r5),0x0:s(r13)
    604c:	df a8       	loadd	0x10:s(sp),(r13)
    604e:	0d a0       	loadd	0x0:s(r13),(r1,r0)

00006050 <.L73>:
    6050:	0d 55       	movd	(r1,r0),(r13)
    6052:	0d 4b       	lshd	$-16:s,(r13)
    6054:	df e2       	stord	(r13),0x4:s(sp)
    6056:	0d 56       	cmpd	$0x0:s,(r13)
    6058:	08 13       	beq	*+0x60c8 <.L75>:s
    605a:	df aa       	loadd	0x14:s(sp),(r13)
    605c:	8d a0       	loadd	0x0:s(r13),(r9,r8)
    605e:	8f e0       	stord	(r9,r8),0x0:s(sp)
    6060:	dc 55       	movd	(r13),(r12)
    6062:	df af 1c 00 	loadd	0x1c:m(sp),(r13)
    6066:	00 54       	movd	$0x0:s,(r1,r0)
    6068:	0f e4       	stord	(r1,r0),0x8:s(sp)
    606a:	da 55       	movd	(r13),(r11,r10)
    606c:	cd 55       	movd	(r12),(r13)

0000606e <.L76>:
    606e:	2a a0       	loadd	0x0:s(r11,r10),(r3,r2)
    6070:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    6074:	ff ff 
    6076:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    6078:	00 c0 3c 28 	bal	(ra),*+0x88b4 <___mulsi3>:m
    607c:	0c 55       	movd	(r1,r0),(r12)
    607e:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    6080:	00 4b       	lshd	$-16:s,(r1,r0)
    6082:	0c 61       	addd	(r1,r0),(r12)
    6084:	1f a4       	loadd	0x8:s(sp),(r2,r1)
    6086:	1c 61       	addd	(r2,r1),(r12)
    6088:	c0 55       	movd	(r12),(r1,r0)
    608a:	00 4d       	ashud	$16:s,(r1,r0)
    608c:	48 00 00 00 	andd	$0xffff:l,(r9,r8)
    6090:	ff ff 
    6092:	14 00 80 90 	ord	(r9,r8),(r1,r0)
    6096:	0d e0       	stord	(r1,r0),0x0:s(r13)
    6098:	4d 60       	addd	$0x4:s,(r13)
    609a:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    609c:	2f e0       	stord	(r3,r2),0x0:s(sp)
    609e:	28 55       	movd	(r3,r2),(r9,r8)
    60a0:	48 00 00 00 	andd	$0xffff:l,(r9,r8)
    60a4:	ff ff 
    60a6:	2a 91       	loadw	0x2:s(r11,r10),r2
    60a8:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    60aa:	03 5a       	movw	$0x0:s,r3
    60ac:	00 c0 08 28 	bal	(ra),*+0x88b4 <___mulsi3>:m
    60b0:	08 61       	addd	(r1,r0),(r9,r8)
    60b2:	0c 4b       	lshd	$-16:s,(r12)
    60b4:	c8 61       	addd	(r12),(r9,r8)
    60b6:	4a 60       	addd	$0x4:s,(r11,r10)
    60b8:	83 55       	movd	(r9,r8),(r4,r3)
    60ba:	03 4b       	lshd	$-16:s,(r4,r3)
    60bc:	3f e4       	stord	(r4,r3),0x8:s(sp)
    60be:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    60c0:	a4 57       	cmpd	(r11,r10),(r5,r4)
    60c2:	a6 1d       	blo	*-0x606e <.L76>:s
    60c4:	dc 55       	movd	(r13),(r12)
    60c6:	8d e0       	stord	(r9,r8),0x0:s(r13)

000060c8 <.L75>:
    60c8:	df a8       	loadd	0x10:s(sp),(r13)
    60ca:	4d 60       	addd	$0x4:s,(r13)
    60cc:	df e8       	stord	(r13),0x10:s(sp)
    60ce:	df aa       	loadd	0x14:s(sp),(r13)
    60d0:	4d 60       	addd	$0x4:s,(r13)
    60d2:	df ea       	stord	(r13),0x14:s(sp)
    60d4:	0f ac       	loadd	0x18:s(sp),(r1,r0)
    60d6:	df a8       	loadd	0x10:s(sp),(r13)
    60d8:	d0 57       	cmpd	(r13),(r1,r0)
    60da:	a0 18 fd fe 	blo	*-0x5fd6 <.L88>:m

000060de <.L68>:
    60de:	07 52       	cmpw	$0x0:s,r7
    60e0:	dc 10       	bge	*+0x60f8 <.L72>:s
    60e2:	0f af 20 00 	loadd	0x20:m(sp),(r1,r0)
    60e6:	e4 10       	br	*+0x60ee <.L102>:s

000060e8 <.L103>:
    60e8:	97 32       	addw	$-1:s,r7
    60ea:	07 52       	cmpw	$0x0:s,r7
    60ec:	06 10       	beq	*+0x60f8 <.L72>:s

000060ee <.L102>:
    60ee:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    60f2:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    60f4:	02 56       	cmpd	$0x0:s,(r3,r2)
    60f6:	09 1f       	beq	*-0x60e8 <.L103>:s

000060f8 <.L72>:
    60f8:	0f af 24 00 	loadd	0x24:m(sp),(r1,r0)
    60fc:	70 d5       	storw	r7,0xa:s(r1,r0)
    60fe:	0f 9f 24 00 	loadw	0x24:m(sp),r0
    6102:	1f 9f 26 00 	loadw	0x26:m(sp),r1
    6106:	bf 60 28 00 	addd	$0x28:m,(sp)
    610a:	67 02       	pop	$0x7,r7
    610c:	9d 03       	popret	$0x2,r13,RA

0000610e <.LFE7>:
	...

00006110 <___pow5mult>:
    6110:	9d 01       	push	$0x2,r13,RA
    6112:	67 01       	push	$0x7,r7
    6114:	2d 55       	movd	(r3,r2),(r13)
    6116:	4a 55       	movd	(r5,r4),(r11,r10)
    6118:	67 5b       	movw	r6,r7
    611a:	60 5b       	movw	r6,r0
    611c:	30 22       	andw	$0x3:s,r0
    611e:	00 52       	cmpw	$0x0:s,r0
    6120:	1b 13       	bne	*+0x6196 <.L129>:s

00006122 <.L105>:
    6122:	e7 43       	ashuw	$-2:s,r7
    6124:	07 52       	cmpw	$0x0:s,r7
    6126:	07 12       	beq	*+0x6174 <.L106>:s
    6128:	cd af 44 00 	loadd	0x44:m(r13),(r12)
    612c:	0c 56       	cmpd	$0x0:s,(r12)
    612e:	19 10       	bne	*+0x6140 <.L128>:s
    6130:	e4 14       	br	*+0x61b8 <.L133>:s

00006132 <.L109>:
    6132:	f7 43       	ashuw	$-1:s,r7
    6134:	07 52       	cmpw	$0x0:s,r7
    6136:	0f 11       	beq	*+0x6174 <.L106>:s

00006138 <.L132>:
    6138:	8c a0       	loadd	0x0:s(r12),(r9,r8)
    613a:	08 56       	cmpd	$0x0:s,(r9,r8)
    613c:	00 12       	beq	*+0x617c <.L131>:s
    613e:	8c 55       	movd	(r9,r8),(r12)

00006140 <.L128>:
    6140:	70 5b       	movw	r7,r0
    6142:	10 22       	andw	$0x1:s,r0
    6144:	00 52       	cmpw	$0x0:s,r0
    6146:	06 1f       	beq	*-0x6132 <.L109>:s
    6148:	1c 01       	push	$0x2,r12
    614a:	a4 55       	movd	(r11,r10),(r5,r4)
    614c:	d2 55       	movd	(r13),(r3,r2)
    614e:	ff c0 ef fd 	bal	(ra),*-0x5f3c <___multiply>:m

00006152 <.LBB10>:
    6152:	4f 60       	addd	$0x4:s,(sp)
    6154:	0a 56       	cmpd	$0x0:s,(r11,r10)
    6156:	0d 11       	beq	*+0x6190 <.L111>:s
    6158:	4a 92       	loadw	0x4:s(r11,r10),r4
    615a:	44 5e       	movxw	r4,(r5,r4)
    615c:	24 4c       	ashud	$2:s,(r5,r4)
    615e:	2d af 48 00 	loadd	0x48:m(r13),(r3,r2)
    6162:	42 61       	addd	(r5,r4),(r3,r2)
    6164:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    6166:	4a e0       	stord	(r5,r4),0x0:s(r11,r10)
    6168:	a2 e0       	stord	(r11,r10),0x0:s(r3,r2)
    616a:	0a 5b       	movw	r0,r10
    616c:	1b 5b       	movw	r1,r11
    616e:	f7 43       	ashuw	$-1:s,r7
    6170:	07 52       	cmpw	$0x0:s,r7
    6172:	13 1e       	bne	*-0x6138 <.L132>:s

00006174 <.L106>:
    6174:	a0 5b       	movw	r10,r0
    6176:	b1 5b       	movw	r11,r1
    6178:	67 02       	pop	$0x7,r7
    617a:	9d 03       	popret	$0x2,r13,RA

0000617c <.L131>:
    617c:	1c 01       	push	$0x2,r12
    617e:	c4 55       	movd	(r12),(r5,r4)
    6180:	d2 55       	movd	(r13),(r3,r2)
    6182:	ff c0 bb fd 	bal	(ra),*-0x5f3c <___multiply>:m

00006186 <.LVL189>:
    6186:	0c e0       	stord	(r1,r0),0x0:s(r12)
    6188:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    618a:	4f 60       	addd	$0x4:s,(sp)
    618c:	0c 55       	movd	(r1,r0),(r12)
    618e:	e9 1d       	br	*-0x6140 <.L128>:s

00006190 <.L111>:
    6190:	0a 5b       	movw	r0,r10
    6192:	1b 5b       	movw	r1,r11
    6194:	ef 1c       	br	*-0x6132 <.L109>:s

00006196 <.L129>:
    6196:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    619a:	90 32       	addw	$-1:s,r0
    619c:	00 5e       	movxw	r0,(r1,r0)
    619e:	20 05 b0 a1 	movd	$0xa1b0:m,(r3,r2)
    61a2:	00 61       	addd	(r1,r0),(r1,r0)
    61a4:	02 61       	addd	(r1,r0),(r3,r2)
    61a6:	00 5a       	movw	$0x0:s,r0
    61a8:	00 01       	push	$0x1,r0
    61aa:	62 90       	loadw	0x0:s(r3,r2),r6
    61ac:	d2 55       	movd	(r13),(r3,r2)
    61ae:	ff c0 e3 fa 	bal	(ra),*-0x5c90 <___multadd>:m

000061b2 <.LVL199>:
    61b2:	0a 55       	movd	(r1,r0),(r11,r10)
    61b4:	4f 60       	addd	$0x4:s,(sp)
    61b6:	e6 1b       	br	*-0x6122 <.L105>:s

000061b8 <.L133>:
    61b8:	b4 5a 71 02 	movw	$0x271:m,r4
    61bc:	d2 55       	movd	(r13),(r3,r2)
    61be:	ff c0 63 fd 	bal	(ra),*-0x5f20 <___i2b>:m

000061c2 <.LVL202>:
    61c2:	0c 55       	movd	(r1,r0),(r12)
    61c4:	0d ef 44 00 	stord	(r1,r0),0x44:m(r13)
    61c8:	00 54       	movd	$0x0:s,(r1,r0)
    61ca:	0c e0       	stord	(r1,r0),0x0:s(r12)
    61cc:	ea 1b       	br	*-0x6140 <.L128>:s

000061ce <.LFE8>:
	...

000061d0 <___lshift>:
    61d0:	9d 01       	push	$0x2,r13,RA
    61d2:	67 01       	push	$0x7,r7
    61d4:	bf 60 f8 ff 	addd	$0xfff8:m,(sp)
    61d8:	2c 55       	movd	(r3,r2),(r12)
    61da:	4a 55       	movd	(r5,r4),(r11,r10)
    61dc:	67 5b       	movw	r6,r7
    61de:	69 5b       	movw	r6,r9
    61e0:	b9 43       	ashuw	$-5:s,r9
    61e2:	44 92       	loadw	0x4:s(r5,r4),r4
    61e4:	0a 95       	loadw	0xa:s(r11,r10),r0
    61e6:	90 33       	addw	r9,r0
    61e8:	0f d0       	storw	r0,0x0:s(sp)
    61ea:	08 5b       	movw	r0,r8
    61ec:	18 32       	addw	$0x1:s,r8
    61ee:	0a 93       	loadw	0x6:s(r11,r10),r0
    61f0:	08 53       	cmpw	r0,r8
    61f2:	d5 10       	bge	*+0x61fc <.L135>:s

000061f4 <.L151>:
    61f4:	14 32       	addw	$0x1:s,r4
    61f6:	00 33       	addw	r0,r0
    61f8:	08 53       	cmpw	r0,r8
    61fa:	cd 1f       	blt	*-0x61f4 <.L151>:s

000061fc <.L135>:
    61fc:	c2 55       	movd	(r12),(r3,r2)
    61fe:	ff c0 07 fa 	bal	(ra),*-0x5c04 <__Balloc>:m

00006202 <.LVL214>:
    6202:	0d 55       	movd	(r1,r0),(r13)
    6204:	c0 60       	addd	$0xc:s,(r1,r0)
    6206:	09 52       	cmpw	$0x0:s,r9
    6208:	dd 10       	bge	*+0x6222 <.L137>:s
    620a:	04 5a       	movw	$0x0:s,r4
    620c:	02 54       	movd	$0x0:s,(r3,r2)

0000620e <.L138>:
    620e:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    6210:	40 60       	addd	$0x4:s,(r1,r0)
    6212:	14 32       	addw	$0x1:s,r4
    6214:	94 53       	cmpw	r9,r4
    6216:	1c 1f       	bne	*-0x620e <.L138>:s
    6218:	94 32       	addw	$-1:s,r4
    621a:	40 5f       	movzw	r4,(r1,r0)
    621c:	40 60       	addd	$0x4:s,(r1,r0)
    621e:	20 4c       	ashud	$2:s,(r1,r0)
    6220:	d0 61       	addd	(r13),(r1,r0)

00006222 <.L137>:
    6222:	a2 55       	movd	(r11,r10),(r3,r2)
    6224:	c2 60       	addd	$0xc:s,(r3,r2)
    6226:	ea 95       	loadw	0xa:s(r11,r10),r14
    6228:	ee 5e       	movxw	r14,(ra)
    622a:	3e 60       	addd	$0x3:s,(ra)
    622c:	2e 4c       	ashud	$2:s,(ra)
    622e:	ae 61       	addd	(r11,r10),(ra)
    6230:	79 5b       	movw	r7,r9
    6232:	b9 22 1f 00 	andw	$0x1f:m,r9
    6236:	09 52       	cmpw	$0x0:s,r9
    6238:	0b 12       	beq	*+0x628e <.L150>:s
    623a:	06 54       	movd	$0x0:s,(r7,r6)
    623c:	b4 5a 20 00 	movw	$0x20:m,r4
    6240:	95 59       	movb	r9,r5
    6242:	45 39       	subb	r4,r5
    6244:	df e2       	stord	(r13),0x4:s(sp)
    6246:	cd 55       	movd	(r12),(r13)
    6248:	5c 59       	movb	r5,r12

0000624a <.L140>:
    624a:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    624c:	94 48       	ashud	r9,(r5,r4)
    624e:	14 00 64 90 	ord	(r7,r6),(r5,r4)
    6252:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)
    6254:	40 60       	addd	$0x4:s,(r1,r0)
    6256:	62 a0       	loadd	0x0:s(r3,r2),(r7,r6)
    6258:	c6 47       	lshd	r12,(r7,r6)
    625a:	42 60       	addd	$0x4:s,(r3,r2)
    625c:	2e 57       	cmpd	(r3,r2),(ra)
    625e:	a6 1f       	blo	*-0x624a <.L140>:s
    6260:	dc 55       	movd	(r13),(r12)
    6262:	df a2       	loadd	0x4:s(sp),(r13)
    6264:	60 e0       	stord	(r7,r6),0x0:s(r1,r0)
    6266:	06 56       	cmpd	$0x0:s,(r7,r6)
    6268:	10 12       	bne	*+0x62a8 <.L161>:s

0000626a <.L141>:
    626a:	98 32       	addw	$-1:s,r8
    626c:	8d d5       	storw	r8,0xa:s(r13)

0000626e <.LBB14>:
    626e:	0a 56       	cmpd	$0x0:s,(r11,r10)
    6270:	0a 10       	beq	*+0x6284 <.L143>:s
    6272:	0a 92       	loadw	0x4:s(r11,r10),r0
    6274:	00 5e       	movxw	r0,(r1,r0)
    6276:	20 4c       	ashud	$2:s,(r1,r0)
    6278:	2c af 48 00 	loadd	0x48:m(r12),(r3,r2)
    627c:	02 61       	addd	(r1,r0),(r3,r2)
    627e:	02 a0       	loadd	0x0:s(r3,r2),(r1,r0)
    6280:	0a e0       	stord	(r1,r0),0x0:s(r11,r10)
    6282:	a2 e0       	stord	(r11,r10),0x0:s(r3,r2)

00006284 <.L143>:
    6284:	d0 5b       	movw	r13,r0
    6286:	d1 5b       	movw	r13,r1
    6288:	8f 60       	addd	$0x8:s,(sp)
    628a:	67 02       	pop	$0x7,r7
    628c:	9d 03       	popret	$0x2,r13,RA

0000628e <.L150>:
    628e:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    6290:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)
    6292:	40 60       	addd	$0x4:s,(r1,r0)
    6294:	42 60       	addd	$0x4:s,(r3,r2)
    6296:	2e 57       	cmpd	(r3,r2),(ra)
    6298:	b9 1e       	bhs	*-0x626a <.L141>:s
    629a:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    629c:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)
    629e:	40 60       	addd	$0x4:s,(r1,r0)
    62a0:	42 60       	addd	$0x4:s,(r3,r2)
    62a2:	2e 57       	cmpd	(r3,r2),(ra)
    62a4:	a5 1f       	blo	*-0x628e <.L150>:s
    62a6:	e2 1e       	br	*-0x626a <.L141>:s

000062a8 <.L161>:
    62a8:	8f 90       	loadw	0x0:s(sp),r8
    62aa:	28 32       	addw	$0x2:s,r8
    62ac:	ef 1d       	br	*-0x626a <.L141>:s

000062ae <.LFE9>:
	...

000062b0 <___mcmp>:
    62b0:	1e 01       	push	RA
    62b2:	27 01       	push	$0x3,r7
    62b4:	02 95       	loadw	0xa:s(r3,r2),r0
    62b6:	64 95       	loadw	0xa:s(r5,r4),r6
    62b8:	60 3b       	subw	r6,r0
    62ba:	00 52       	cmpw	$0x0:s,r0
    62bc:	12 11       	bne	*+0x62e0 <.L163>:s
    62be:	28 55       	movd	(r3,r2),(r9,r8)
    62c0:	c8 60       	addd	$0xc:s,(r9,r8)
    62c2:	66 5e       	movxw	r6,(r7,r6)
    62c4:	36 60       	addd	$0x3:s,(r7,r6)
    62c6:	26 4c       	ashud	$2:s,(r7,r6)
    62c8:	62 61       	addd	(r7,r6),(r3,r2)
    62ca:	64 61       	addd	(r7,r6),(r5,r4)

000062cc <.L165>:
    62cc:	b2 60 fc ff 	addd	$0xfffc:m,(r3,r2)
    62d0:	e2 a0       	loadd	0x0:s(r3,r2),(ra)
    62d2:	b4 60 fc ff 	addd	$0xfffc:m,(r5,r4)
    62d6:	64 a0       	loadd	0x0:s(r5,r4),(r7,r6)
    62d8:	6e 57       	cmpd	(r7,r6),(ra)
    62da:	15 10       	bne	*+0x62e4 <.L168>:s
    62dc:	28 57       	cmpd	(r3,r2),(r9,r8)
    62de:	47 1f       	bhi	*-0x62cc <.L165>:s

000062e0 <.L163>:
    62e0:	27 02       	pop	$0x3,r7
    62e2:	1e 03       	popret	RA

000062e4 <.L168>:
    62e4:	e6 57       	cmpd	(ra),(r7,r6)
    62e6:	a1 08       	slo	r1
    62e8:	00 5a       	movw	$0x0:s,r0
    62ea:	10 3b       	subw	r1,r0
    62ec:	10 26       	orw	$0x1:s,r0
    62ee:	27 02       	pop	$0x3,r7
    62f0:	1e 03       	popret	RA

000062f2 <.LFE10>:
	...

000062f4 <___mdiff>:
    62f4:	9d 01       	push	$0x2,r13,RA
    62f6:	67 01       	push	$0x7,r7
    62f8:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)
    62fc:	fc 55       	movd	(sp),(r12)
    62fe:	bc 60 22 00 	addd	$0x22:m,(r12)
    6302:	2a 55       	movd	(r3,r2),(r11,r10)
    6304:	48 55       	movd	(r5,r4),(r9,r8)
    6306:	cc a0       	loadd	0x0:s(r12),(r12)
    6308:	c4 55       	movd	(r12),(r5,r4)
    630a:	82 55       	movd	(r9,r8),(r3,r2)
    630c:	ff c0 a5 ff 	bal	(ra),*-0x62b0 <___mcmp>:m

00006310 <.LVL264>:
    6310:	00 52       	cmpw	$0x0:s,r0
    6312:	00 18 06 01 	beq	*+0x6418 <.L187>:m
    6316:	00 52       	cmpw	$0x0:s,r0
    6318:	68 17       	bgt	*+0x6408 <.L178>:s
    631a:	0d 5a       	movw	$0x0:s,r13

0000631c <.L172>:
    631c:	48 92       	loadw	0x4:s(r9,r8),r4
    631e:	a2 55       	movd	(r11,r10),(r3,r2)
    6320:	ff c0 e5 f8 	bal	(ra),*-0x5c04 <__Balloc>:m

00006324 <.LVL266>:
    6324:	0f e0       	stord	(r1,r0),0x0:s(sp)
    6326:	d0 d4       	storw	r13,0x8:s(r1,r0)
    6328:	28 95       	loadw	0xa:s(r9,r8),r2
    632a:	2f d2       	storw	r2,0x4:s(sp)
    632c:	80 55       	movd	(r9,r8),(r1,r0)
    632e:	c0 60       	addd	$0xc:s,(r1,r0)
    6330:	26 5e       	movxw	r2,(r7,r6)
    6332:	36 60       	addd	$0x3:s,(r7,r6)
    6334:	26 4c       	ashud	$2:s,(r7,r6)
    6336:	86 61       	addd	(r9,r8),(r7,r6)
    6338:	ce 55       	movd	(r12),(ra)
    633a:	ce 60       	addd	$0xc:s,(ra)
    633c:	dc 95       	loadw	0xa:s(r12),r13
    633e:	dd 5e       	movxw	r13,(r13)
    6340:	3d 60       	addd	$0x3:s,(r13)
    6342:	2d 4c       	ashud	$2:s,(r13)
    6344:	cd 61       	addd	(r12),(r13)
    6346:	cf a0       	loadd	0x0:s(sp),(r12)
    6348:	cc 60       	addd	$0xc:s,(r12)
    634a:	0a 54       	movd	$0x0:s,(r11,r10)
    634c:	6f e4       	stord	(r7,r6),0x8:s(sp)

0000634e <.L173>:
    634e:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    6350:	6e a0       	loadd	0x0:s(ra),(r7,r6)
    6352:	82 55       	movd	(r9,r8),(r3,r2)
    6354:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    6358:	ff ff 
    635a:	a2 61       	addd	(r11,r10),(r3,r2)
    635c:	64 55       	movd	(r7,r6),(r5,r4)
    635e:	44 00 00 00 	andd	$0xffff:l,(r5,r4)
    6362:	ff ff 
    6364:	14 00 42 c0 	subd	(r5,r4),(r3,r2)
    6368:	08 4b       	lshd	$-16:s,(r9,r8)
    636a:	64 55       	movd	(r7,r6),(r5,r4)
    636c:	04 4b       	lshd	$-16:s,(r5,r4)
    636e:	14 00 48 c0 	subd	(r5,r4),(r9,r8)
    6372:	24 55       	movd	(r3,r2),(r5,r4)
    6374:	04 4f       	ashud	$-16:s,(r5,r4)
    6376:	48 61       	addd	(r5,r4),(r9,r8)
    6378:	40 60       	addd	$0x4:s,(r1,r0)
    637a:	4e 60       	addd	$0x4:s,(ra)
    637c:	8a 55       	movd	(r9,r8),(r11,r10)
    637e:	0a 4f       	ashud	$-16:s,(r11,r10)
    6380:	08 4d       	ashud	$16:s,(r9,r8)
    6382:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    6386:	ff ff 
    6388:	14 00 28 90 	ord	(r3,r2),(r9,r8)
    638c:	8c e0       	stord	(r9,r8),0x0:s(r12)
    638e:	4c 60       	addd	$0x4:s,(r12)
    6390:	ed 57       	cmpd	(ra),(r13)
    6392:	ae 1d       	blo	*-0x634e <.L173>:s
    6394:	6f a4       	loadd	0x8:s(sp),(r7,r6)
    6396:	cd 55       	movd	(r12),(r13)
    6398:	0e 55       	movd	(r1,r0),(ra)
    639a:	06 57       	cmpd	(r1,r0),(r7,r6)
    639c:	b2 12       	bhs	*+0x63e0 <.L174>:s

0000639e <.L182>:
    639e:	40 a0       	loadd	0x0:s(r1,r0),(r5,r4)
    63a0:	42 55       	movd	(r5,r4),(r3,r2)
    63a2:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    63a6:	ff ff 
    63a8:	a2 61       	addd	(r11,r10),(r3,r2)
    63aa:	28 55       	movd	(r3,r2),(r9,r8)
    63ac:	08 4f       	ashud	$-16:s,(r9,r8)
    63ae:	04 4b       	lshd	$-16:s,(r5,r4)
    63b0:	48 61       	addd	(r5,r4),(r9,r8)
    63b2:	40 60       	addd	$0x4:s,(r1,r0)
    63b4:	8a 55       	movd	(r9,r8),(r11,r10)
    63b6:	0a 4f       	ashud	$-16:s,(r11,r10)
    63b8:	08 4d       	ashud	$16:s,(r9,r8)
    63ba:	42 00 00 00 	andd	$0xffff:l,(r3,r2)
    63be:	ff ff 
    63c0:	14 00 28 90 	ord	(r3,r2),(r9,r8)
    63c4:	8c e0       	stord	(r9,r8),0x0:s(r12)
    63c6:	4c 60       	addd	$0x4:s,(r12)
    63c8:	06 57       	cmpd	(r1,r0),(r7,r6)
    63ca:	aa 1e       	blo	*-0x639e <.L182>:s
    63cc:	ec 55       	movd	(ra),(r12)
    63ce:	6c 00 ff ff 	xord	$0xffffffff:l,(r12)
    63d2:	ff ff 
    63d4:	6c 61       	addd	(r7,r6),(r12)
    63d6:	4c 00 ff ff 	andd	$0xfffffffc:l,(r12)
    63da:	fc ff 
    63dc:	4c 60       	addd	$0x4:s,(r12)
    63de:	dc 61       	addd	(r13),(r12)

000063e0 <.L174>:
    63e0:	bc 60 fc ff 	addd	$0xfffc:m,(r12)
    63e4:	08 56       	cmpd	$0x0:s,(r9,r8)
    63e6:	19 10       	bne	*+0x63f8 <.L176>:s
    63e8:	2f 92       	loadw	0x4:s(sp),r2

000063ea <.L181>:
    63ea:	92 32       	addw	$-1:s,r2
    63ec:	bc 60 fc ff 	addd	$0xfffc:m,(r12)
    63f0:	0c a0       	loadd	0x0:s(r12),(r1,r0)
    63f2:	00 56       	cmpd	$0x0:s,(r1,r0)
    63f4:	0b 1f       	beq	*-0x63ea <.L181>:s
    63f6:	2f d2       	storw	r2,0x4:s(sp)

000063f8 <.L176>:
    63f8:	0f 92       	loadw	0x4:s(sp),r0
    63fa:	3f a0       	loadd	0x0:s(sp),(r4,r3)
    63fc:	03 d5       	storw	r0,0xa:s(r4,r3)
    63fe:	0f 90       	loadw	0x0:s(sp),r0
    6400:	1f 91       	loadw	0x2:s(sp),r1
    6402:	cf 60       	addd	$0xc:s,(sp)
    6404:	67 02       	pop	$0x7,r7
    6406:	9d 03       	popret	$0x2,r13,RA

00006408 <.L178>:
    6408:	81 5b       	movw	r8,r1
    640a:	90 5b       	movw	r9,r0
    640c:	c8 55       	movd	(r12),(r9,r8)
    640e:	13 5b       	movw	r1,r3
    6410:	04 5b       	movw	r0,r4
    6412:	3c 55       	movd	(r4,r3),(r12)
    6414:	1d 5a       	movw	$0x1:s,r13
    6416:	e3 18       	br	*-0x631c <.L172>:s

00006418 <.L187>:
    6418:	04 5b       	movw	r0,r4
    641a:	a2 55       	movd	(r11,r10),(r3,r2)
    641c:	ff c0 e9 f7 	bal	(ra),*-0x5c04 <__Balloc>:m

00006420 <.LVL311>:
    6420:	0f e0       	stord	(r1,r0),0x0:s(sp)
    6422:	10 c3 0a 00 	storw	$0x1:s,0xa:m(r1,r0)
    6426:	00 54       	movd	$0x0:s,(r1,r0)
    6428:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    642a:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    642c:	0f 90       	loadw	0x0:s(sp),r0
    642e:	1f 91       	loadw	0x2:s(sp),r1
    6430:	cf 60       	addd	$0xc:s,(sp)
    6432:	67 02       	pop	$0x7,r7
    6434:	9d 03       	popret	$0x2,r13,RA

00006436 <.LFE11>:
	...

00006438 <___ulp>:
    6438:	1c 01       	push	$0x2,r12
    643a:	17 01       	push	$0x2,r7
    643c:	fc 55       	movd	(sp),(r12)
    643e:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    6440:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    6442:	8c 60       	addd	$0x8:s,(r12)
    6444:	20 55       	movd	(r3,r2),(r1,r0)
    6446:	40 00 f0 7f 	andd	$0x7ff00000:l,(r1,r0)
    644a:	00 00 
    644c:	20 00 c0 fc 	addd	$0xfcc00000:l,(r1,r0)
    6450:	00 00 
    6452:	00 56       	cmpd	$0x0:s,(r1,r0)
    6454:	d8 10       	bge	*+0x6464 <.L189>:s
    6456:	06 55       	movd	(r1,r0),(r7,r6)
    6458:	04 54       	movd	$0x0:s,(r5,r4)
    645a:	40 55       	movd	(r5,r4),(r1,r0)
    645c:	62 55       	movd	(r7,r6),(r3,r2)
    645e:	17 02       	pop	$0x2,r7
    6460:	1c 02       	pop	$0x2,r12
    6462:	ee 0a       	jump	(ra)

00006464 <.L189>:
    6464:	02 54       	movd	$0x0:s,(r3,r2)
    6466:	24 55       	movd	(r3,r2),(r5,r4)
    6468:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    646c:	40 55       	movd	(r5,r4),(r1,r0)
    646e:	c0 4e       	ashud	$-20:s,(r1,r0)
    6470:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    6474:	d4 11       	bge	*+0x649c <.L194>:s
    6476:	26 55       	movd	(r3,r2),(r7,r6)
    6478:	b0 60 ec ff 	addd	$0xffec:m,(r1,r0)
    647c:	12 54       	movd	$0x1:s,(r3,r2)
    647e:	b0 56 1e 00 	cmpd	$0x1e:m,(r1,r0)
    6482:	c7 10       	blt	*+0x6490 <.L192>:s
    6484:	b1 5a 1f 00 	movw	$0x1f:m,r1
    6488:	01 3b       	subw	r0,r1
    648a:	12 5a       	movw	$0x1:s,r2
    648c:	12 45       	ashuw	r1,r2
    648e:	22 5e       	movxw	r2,(r3,r2)

00006490 <.L192>:
    6490:	24 55       	movd	(r3,r2),(r5,r4)
    6492:	40 55       	movd	(r5,r4),(r1,r0)
    6494:	62 55       	movd	(r7,r6),(r3,r2)
    6496:	17 02       	pop	$0x2,r7
    6498:	1c 02       	pop	$0x2,r12
    649a:	ee 0a       	jump	(ra)

0000649c <.L194>:
    649c:	08 58       	movb	$0x0:s,r8
    649e:	08 39       	subb	r0,r8
    64a0:	08 05 00 00 	movd	$0x80000:m,(r1,r0)
    64a4:	06 55       	movd	(r1,r0),(r7,r6)
    64a6:	86 48       	ashud	r8,(r7,r6)
    64a8:	24 55       	movd	(r3,r2),(r5,r4)
    64aa:	40 55       	movd	(r5,r4),(r1,r0)
    64ac:	62 55       	movd	(r7,r6),(r3,r2)
    64ae:	17 02       	pop	$0x2,r7
    64b0:	1c 02       	pop	$0x2,r12
    64b2:	ee 0a       	jump	(ra)

000064b4 <___b2d>:
    64b4:	9d 01       	push	$0x2,r13,RA
    64b6:	67 01       	push	$0x7,r7
    64b8:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
    64bc:	4f e0       	stord	(r5,r4),0x0:s(sp)
    64be:	2a 55       	movd	(r3,r2),(r11,r10)
    64c0:	ca 60       	addd	$0xc:s,(r11,r10)
    64c2:	82 95       	loadw	0xa:s(r3,r2),r8
    64c4:	88 5e       	movxw	r8,(r9,r8)
    64c6:	38 60       	addd	$0x3:s,(r9,r8)
    64c8:	28 4c       	ashud	$2:s,(r9,r8)
    64ca:	28 61       	addd	(r3,r2),(r9,r8)
    64cc:	8d 55       	movd	(r9,r8),(r13)
    64ce:	bd 60 fc ff 	addd	$0xfffc:m,(r13)
    64d2:	cd a0       	loadd	0x0:s(r13),(r12)
    64d4:	c2 55       	movd	(r12),(r3,r2)
    64d6:	ff c0 63 f9 	bal	(ra),*-0x5e38 <___hi0bits>:m

000064da <.LVL336>:
    64da:	02 5b       	movw	r0,r2
    64dc:	b0 5a 20 00 	movw	$0x20:m,r0
    64e0:	20 3b       	subw	r2,r0
    64e2:	3f a0       	loadd	0x0:s(sp),(r4,r3)
    64e4:	03 d0       	storw	r0,0x0:s(r4,r3)
    64e6:	a2 52       	cmpw	$0xa:s,r2
    64e8:	cd 11       	blt	*+0x6522 <.L196>:s
    64ea:	b0 5a 0b 00 	movw	$0xb:m,r0
    64ee:	23 59       	movb	r2,r3
    64f0:	03 39       	subb	r0,r3
    64f2:	c0 55       	movd	(r12),(r1,r0)
    64f4:	30 47       	lshd	r3,(r1,r0)
    64f6:	06 55       	movd	(r1,r0),(r7,r6)
    64f8:	56 00 f0 3f 	ord	$0x3ff00000:l,(r7,r6)
    64fc:	00 00 
    64fe:	00 54       	movd	$0x0:s,(r1,r0)
    6500:	da 57       	cmpd	(r13),(r11,r10)
    6502:	55 10       	bls	*+0x650c <.L197>:s
    6504:	b8 60 f8 ff 	addd	$0xfff8:m,(r9,r8)
    6508:	08 a0       	loadd	0x0:s(r9,r8),(r1,r0)
    650a:	30 47       	lshd	r3,(r1,r0)

0000650c <.L197>:
    650c:	b2 32 15 00 	addw	$0x15:m,r2
    6510:	2c 48       	ashud	r2,(r12)
    6512:	04 55       	movd	(r1,r0),(r5,r4)
    6514:	14 00 c4 90 	ord	(r12),(r5,r4)

00006518 <.L198>:
    6518:	40 55       	movd	(r5,r4),(r1,r0)
    651a:	62 55       	movd	(r7,r6),(r3,r2)
    651c:	4f 60       	addd	$0x4:s,(sp)
    651e:	67 02       	pop	$0x7,r7
    6520:	9d 03       	popret	$0x2,r13,RA

00006522 <.L196>:
    6522:	00 54       	movd	$0x0:s,(r1,r0)
    6524:	da 57       	cmpd	(r13),(r11,r10)
    6526:	55 10       	bls	*+0x6530 <.L199>:s
    6528:	8d 55       	movd	(r9,r8),(r13)
    652a:	bd 60 f8 ff 	addd	$0xfff8:m,(r13)
    652e:	0d a0       	loadd	0x0:s(r13),(r1,r0)

00006530 <.L199>:
    6530:	28 5b       	movw	r2,r8
    6532:	b8 32 f5 ff 	addw	$0xfff5:m,r8
    6536:	08 52       	cmpw	$0x0:s,r8
    6538:	0f 11       	beq	*+0x6576 <.L200>:s
    653a:	8c 48       	ashud	r8,(r12)
    653c:	5c 00 f0 3f 	ord	$0x3ff00000:l,(r12)
    6540:	00 00 
    6542:	b3 5a 2b 00 	movw	$0x2b:m,r3
    6546:	29 59       	movb	r2,r9
    6548:	39 39       	subb	r3,r9
    654a:	02 55       	movd	(r1,r0),(r3,r2)
    654c:	92 47       	lshd	r9,(r3,r2)
    654e:	c6 55       	movd	(r12),(r7,r6)
    6550:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    6554:	02 54       	movd	$0x0:s,(r3,r2)
    6556:	ad 57       	cmpd	(r11,r10),(r13)
    6558:	b6 10       	bhs	*+0x6564 <.L201>:s
    655a:	d2 55       	movd	(r13),(r3,r2)
    655c:	b2 60 fc ff 	addd	$0xfffc:m,(r3,r2)
    6560:	22 a0       	loadd	0x0:s(r3,r2),(r3,r2)
    6562:	92 47       	lshd	r9,(r3,r2)

00006564 <.L201>:
    6564:	80 48       	ashud	r8,(r1,r0)
    6566:	24 55       	movd	(r3,r2),(r5,r4)
    6568:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    656c:	40 55       	movd	(r5,r4),(r1,r0)
    656e:	62 55       	movd	(r7,r6),(r3,r2)
    6570:	4f 60       	addd	$0x4:s,(sp)
    6572:	67 02       	pop	$0x7,r7
    6574:	9d 03       	popret	$0x2,r13,RA

00006576 <.L200>:
    6576:	c6 55       	movd	(r12),(r7,r6)
    6578:	56 00 f0 3f 	ord	$0x3ff00000:l,(r7,r6)
    657c:	00 00 
    657e:	04 55       	movd	(r1,r0),(r5,r4)
    6580:	40 55       	movd	(r5,r4),(r1,r0)
    6582:	62 55       	movd	(r7,r6),(r3,r2)
    6584:	4f 60       	addd	$0x4:s,(sp)
    6586:	67 02       	pop	$0x7,r7
    6588:	9d 03       	popret	$0x2,r13,RA

0000658a <.LFE13>:
	...

0000658c <___d2b>:
    658c:	9d 01       	push	$0x2,r13,RA
    658e:	67 01       	push	$0x7,r7
    6590:	bf 60 f0 ff 	addd	$0xfff0:m,(sp)
    6594:	4a 55       	movd	(r5,r4),(r11,r10)
    6596:	df af 2e 00 	loadd	0x2e:m(sp),(r13)
    659a:	4f af 26 00 	loadd	0x26:m(sp),(r5,r4)
    659e:	6f af 2a 00 	loadd	0x2a:m(sp),(r7,r6)
    65a2:	4f e4       	stord	(r5,r4),0x8:s(sp)
    65a4:	6f e6       	stord	(r7,r6),0xc:s(sp)
    65a6:	14 5a       	movw	$0x1:s,r4
    65a8:	ff c0 5d f6 	bal	(ra),*-0x5c04 <__Balloc>:m

000065ac <.LVL363>:
    65ac:	08 55       	movd	(r1,r0),(r9,r8)
    65ae:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    65b0:	02 55       	movd	(r1,r0),(r3,r2)
    65b2:	42 00 0f 00 	andd	$0xfffff:l,(r3,r2)
    65b6:	ff ff 
    65b8:	40 00 ff 7f 	andd	$0x7fffffff:l,(r1,r0)
    65bc:	ff ff 
    65be:	17 5b       	movw	r1,r7
    65c0:	c7 49       	lshw	$-4:s,r7
    65c2:	07 52       	cmpw	$0x0:s,r7
    65c4:	04 10       	beq	*+0x65cc <.L216>:s
    65c6:	52 00 10 00 	ord	$0x100000:l,(r3,r2)
    65ca:	00 00 

000065cc <.L216>:
    65cc:	2f e0       	stord	(r3,r2),0x0:s(sp)
    65ce:	5f a4       	loadd	0x8:s(sp),(r6,r5)
    65d0:	05 56       	cmpd	$0x0:s,(r6,r5)
    65d2:	09 12       	beq	*+0x6624 <.L208>:s
    65d4:	5f e2       	stord	(r6,r5),0x4:s(sp)
    65d6:	f2 55       	movd	(sp),(r3,r2)
    65d8:	42 60       	addd	$0x4:s,(r3,r2)
    65da:	ff c0 bb f8 	bal	(ra),*-0x5e94 <___lo0bits>:m

000065de <.LVL372>:
    65de:	00 52       	cmpw	$0x0:s,r0
    65e0:	1c 13       	bne	*+0x6658 <.L217>:s
    65e2:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    65e4:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    65e6:	2f a0       	loadd	0x0:s(sp),(r3,r2)

000065e8 <.L210>:
    65e8:	28 e8       	stord	(r3,r2),0x10:s(r9,r8)
    65ea:	32 27       	orw	r3,r2
    65ec:	02 52       	cmpw	$0x0:s,r2
    65ee:	01 08       	seq	r1
    65f0:	22 5a       	movw	$0x2:s,r2
    65f2:	12 3b       	subw	r1,r2
    65f4:	2c 5b       	movw	r2,r12
    65f6:	28 d5       	storw	r2,0xa:s(r9,r8)
    65f8:	07 52       	cmpw	$0x0:s,r7
    65fa:	11 12       	bne	*+0x663c <.L218>:s

000065fc <.L213>:
    65fc:	b0 32 ce fb 	addw	$0xfbce:m,r0
    6600:	0a d0       	storw	r0,0x0:s(r11,r10)
    6602:	c0 5e       	movxw	r12,(r1,r0)
    6604:	20 60       	addd	$0x2:s,(r1,r0)
    6606:	20 4c       	ashud	$2:s,(r1,r0)
    6608:	80 61       	addd	(r9,r8),(r1,r0)
    660a:	20 a0       	loadd	0x0:s(r1,r0),(r3,r2)
    660c:	ff c0 2d f8 	bal	(ra),*-0x5e38 <___hi0bits>:m

00006610 <.LVL377>:
    6610:	c1 5b       	movw	r12,r1
    6612:	51 42       	ashuw	$5:s,r1
    6614:	01 3b       	subw	r0,r1
    6616:	1d d0       	storw	r1,0x0:s(r13)
    6618:	80 5b       	movw	r8,r0
    661a:	91 5b       	movw	r9,r1
    661c:	bf 60 10 00 	addd	$0x10:m,(sp)
    6620:	67 02       	pop	$0x7,r7
    6622:	9d 03       	popret	$0x2,r13,RA

00006624 <.L208>:
    6624:	f2 55       	movd	(sp),(r3,r2)
    6626:	ff c0 6f f8 	bal	(ra),*-0x5e94 <___lo0bits>:m

0000662a <.LVL379>:
    662a:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    662c:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    662e:	18 c3 0a 00 	storw	$0x1:s,0xa:m(r9,r8)
    6632:	b0 32 20 00 	addw	$0x20:m,r0
    6636:	1c 5a       	movw	$0x1:s,r12
    6638:	07 52       	cmpw	$0x0:s,r7
    663a:	01 1e       	beq	*-0x65fc <.L213>:s

0000663c <.L218>:
    663c:	b7 32 cd fb 	addw	$0xfbcd:m,r7
    6640:	07 33       	addw	r0,r7
    6642:	7a d0       	storw	r7,0x0:s(r11,r10)
    6644:	b1 5a 35 00 	movw	$0x35:m,r1
    6648:	01 3b       	subw	r0,r1
    664a:	1d d0       	storw	r1,0x0:s(r13)
    664c:	80 5b       	movw	r8,r0
    664e:	91 5b       	movw	r9,r1
    6650:	bf 60 10 00 	addd	$0x10:m,(sp)
    6654:	67 02       	pop	$0x7,r7
    6656:	9d 03       	popret	$0x2,r13,RA

00006658 <.L217>:
    6658:	cf a0       	loadd	0x0:s(sp),(r12)
    665a:	b1 5a 20 00 	movw	$0x20:m,r1
    665e:	01 3b       	subw	r0,r1
    6660:	c2 55       	movd	(r12),(r3,r2)
    6662:	12 48       	ashud	r1,(r3,r2)
    6664:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    6666:	14 00 42 90 	ord	(r5,r4),(r3,r2)
    666a:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    666c:	01 58       	movb	$0x0:s,r1
    666e:	01 39       	subb	r0,r1
    6670:	c2 55       	movd	(r12),(r3,r2)
    6672:	12 47       	lshd	r1,(r3,r2)
    6674:	2f e0       	stord	(r3,r2),0x0:s(sp)
    6676:	e9 1b       	br	*-0x65e8 <.L210>:s

00006678 <.LFE14>:
	...

0000667a <___ratio>:
    667a:	9d 01       	push	$0x2,r13,RA
    667c:	67 01       	push	$0x7,r7
    667e:	bf 60 ec ff 	addd	$0xffec:m,(sp)
    6682:	2d 55       	movd	(r3,r2),(r13)
    6684:	4c 55       	movd	(r5,r4),(r12)
    6686:	f4 55       	movd	(sp),(r5,r4)
    6688:	24 60       	addd	$0x2:s,(r5,r4)
    668a:	ff c0 2b fe 	bal	(ra),*-0x64b4 <___b2d>:m

0000668e <.LVL390>:
    668e:	08 55       	movd	(r1,r0),(r9,r8)
    6690:	2a 55       	movd	(r3,r2),(r11,r10)
    6692:	0f e2       	stord	(r1,r0),0x4:s(sp)
    6694:	2f e4       	stord	(r3,r2),0x8:s(sp)
    6696:	f4 55       	movd	(sp),(r5,r4)
    6698:	c2 55       	movd	(r12),(r3,r2)
    669a:	ff c0 1b fe 	bal	(ra),*-0x64b4 <___b2d>:m

0000669e <.LVL391>:
    669e:	0f e6       	stord	(r1,r0),0xc:s(sp)
    66a0:	2f e8       	stord	(r3,r2),0x10:s(sp)
    66a2:	6f 90       	loadw	0x0:s(sp),r6
    66a4:	5f 91       	loadw	0x2:s(sp),r5
    66a6:	65 3b       	subw	r6,r5
    66a8:	4d 95       	loadw	0xa:s(r13),r4
    66aa:	6c 95       	loadw	0xa:s(r12),r6
    66ac:	64 3b       	subw	r6,r4
    66ae:	54 42       	ashuw	$5:s,r4
    66b0:	54 33       	addw	r5,r4
    66b2:	04 52       	cmpw	$0x0:s,r4
    66b4:	d0 11       	bge	*+0x66d4 <.L220>:s
    66b6:	44 5e       	movxw	r4,(r5,r4)
    66b8:	44 4d       	ashud	$20:s,(r5,r4)
    66ba:	6f a4       	loadd	0x8:s(sp),(r7,r6)
    66bc:	46 61       	addd	(r5,r4),(r7,r6)
    66be:	6f e4       	stord	(r7,r6),0x8:s(sp)
    66c0:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    66c2:	af a4       	loadd	0x8:s(sp),(r11,r10)
    66c4:	30 01       	push	$0x4,r0
    66c6:	38 01       	push	$0x4,r8
    66c8:	00 c0 0c 2a 	bal	(ra),*+0x90d4 <___divdf3>:m
    66cc:	bf 60 24 00 	addd	$0x24:m,(sp)
    66d0:	67 02       	pop	$0x7,r7
    66d2:	9d 03       	popret	$0x2,r13,RA

000066d4 <.L220>:
    66d4:	00 5a       	movw	$0x0:s,r0
    66d6:	40 3b       	subw	r4,r0
    66d8:	00 5e       	movxw	r0,(r1,r0)
    66da:	40 4d       	ashud	$20:s,(r1,r0)
    66dc:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    66de:	02 61       	addd	(r1,r0),(r3,r2)
    66e0:	2f e8       	stord	(r3,r2),0x10:s(sp)
    66e2:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    66e4:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    66e6:	30 01       	push	$0x4,r0
    66e8:	38 01       	push	$0x4,r8
    66ea:	00 c0 ea 29 	bal	(ra),*+0x90d4 <___divdf3>:m
    66ee:	bf 60 24 00 	addd	$0x24:m,(sp)
    66f2:	67 02       	pop	$0x7,r7
    66f4:	9d 03       	popret	$0x2,r13,RA

000066f6 <__mprec_log10>:
    66f6:	1e 01       	push	RA
    66f8:	47 01       	push	$0x5,r7
    66fa:	27 5b       	movw	r2,r7
    66fc:	00 54       	movd	$0x0:s,(r1,r0)
    66fe:	72 00 f0 3f 	movd	$0x3ff00000:l,(r3,r2)
    6702:	00 00 
    6704:	08 54       	movd	$0x0:s,(r9,r8)
    6706:	7a 00 24 40 	movd	$0x40240000:l,(r11,r10)
    670a:	00 00 
    670c:	b7 52 17 00 	cmpw	$0x17:m,r7
    6710:	dc 10       	bge	*+0x6728 <.L228>:s

00006712 <.L226>:
    6712:	38 01       	push	$0x4,r8
    6714:	30 01       	push	$0x4,r0
    6716:	00 c0 7a 25 	bal	(ra),*+0x8c90 <___muldf3>:m
    671a:	bf 60 10 00 	addd	$0x10:m,(sp)
    671e:	97 32       	addw	$-1:s,r7
    6720:	07 52       	cmpw	$0x0:s,r7
    6722:	18 1f       	bne	*-0x6712 <.L226>:s
    6724:	47 02       	pop	$0x5,r7
    6726:	1e 03       	popret	RA

00006728 <.L228>:
    6728:	72 5e       	movxw	r7,(r3,r2)
    672a:	00 05 e8 a0 	movd	$0xa0e8:m,(r1,r0)
    672e:	32 4c       	ashud	$3:s,(r3,r2)
    6730:	20 61       	addd	(r3,r2),(r1,r0)
    6732:	20 a2       	loadd	0x4:s(r1,r0),(r3,r2)
    6734:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    6736:	47 02       	pop	$0x5,r7
    6738:	1e 03       	popret	RA

0000673a <.LFE16>:
	...

0000673c <___copybits>:
    673c:	1e 01       	push	RA
    673e:	47 01       	push	$0x5,r7
    6740:	58 55       	movd	(r6,r5),(r9,r8)
    6742:	94 32       	addw	$-1:s,r4
    6744:	b4 43       	ashuw	$-5:s,r4
    6746:	44 5e       	movxw	r4,(r5,r4)
    6748:	14 60       	addd	$0x1:s,(r5,r4)
    674a:	24 4c       	ashud	$2:s,(r5,r4)
    674c:	24 61       	addd	(r3,r2),(r5,r4)
    674e:	80 55       	movd	(r9,r8),(r1,r0)
    6750:	c0 60       	addd	$0xc:s,(r1,r0)
    6752:	68 95       	loadw	0xa:s(r9,r8),r6
    6754:	66 5e       	movxw	r6,(r7,r6)
    6756:	36 60       	addd	$0x3:s,(r7,r6)
    6758:	26 4c       	ashud	$2:s,(r7,r6)
    675a:	86 61       	addd	(r9,r8),(r7,r6)
    675c:	60 57       	cmpd	(r7,r6),(r1,r0)
    675e:	51 11       	bls	*+0x6780 <.L230>:s
    6760:	2e 55       	movd	(r3,r2),(ra)

00006762 <.L231>:
    6762:	a0 a0       	loadd	0x0:s(r1,r0),(r11,r10)
    6764:	ae e0       	stord	(r11,r10),0x0:s(ra)
    6766:	4e 60       	addd	$0x4:s,(ra)
    6768:	40 60       	addd	$0x4:s,(r1,r0)
    676a:	06 57       	cmpd	(r1,r0),(r7,r6)
    676c:	ab 1f       	blo	*-0x6762 <.L231>:s
    676e:	14 00 86 c0 	subd	(r9,r8),(r7,r6)
    6772:	b6 60 f3 ff 	addd	$0xfff3:m,(r7,r6)
    6776:	46 00 ff ff 	andd	$0xfffffffc:l,(r7,r6)
    677a:	fc ff 
    677c:	46 60       	addd	$0x4:s,(r7,r6)
    677e:	62 61       	addd	(r7,r6),(r3,r2)

00006780 <.L230>:
    6780:	00 54       	movd	$0x0:s,(r1,r0)
    6782:	24 57       	cmpd	(r3,r2),(r5,r4)
    6784:	b5 10       	bhs	*+0x678e <.L229>:s

00006786 <.L235>:
    6786:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
    6788:	42 60       	addd	$0x4:s,(r3,r2)
    678a:	24 57       	cmpd	(r3,r2),(r5,r4)
    678c:	ad 1f       	blo	*-0x6786 <.L235>:s

0000678e <.L229>:
    678e:	47 02       	pop	$0x5,r7
    6790:	1e 03       	popret	RA

00006792 <.LFE17>:
	...

00006794 <___any_on>:
    6794:	1e 01       	push	RA
    6796:	47 01       	push	$0x5,r7
    6798:	2e 55       	movd	(r3,r2),(ra)
    679a:	ce 60       	addd	$0xc:s,(ra)
    679c:	62 95       	loadw	0xa:s(r3,r2),r6
    679e:	40 5b       	movw	r4,r0
    67a0:	b0 43       	ashuw	$-5:s,r0
    67a2:	06 53       	cmpw	r0,r6
    67a4:	74 11       	ble	*+0x67cc <.L239>:s
    67a6:	66 5e       	movxw	r6,(r7,r6)
    67a8:	36 60       	addd	$0x3:s,(r7,r6)

000067aa <.L240>:
    67aa:	26 4c       	ashud	$2:s,(r7,r6)
    67ac:	26 61       	addd	(r3,r2),(r7,r6)
    67ae:	6e 57       	cmpd	(r7,r6),(ra)
    67b0:	44 10       	bhi	*+0x67b8 <.L246>:s
    67b2:	e6 12       	br	*+0x67fe <.L248>:s

000067b4 <.L253>:
    67b4:	6e 57       	cmpd	(r7,r6),(ra)
    67b6:	54 12       	bls	*+0x67fe <.L248>:s

000067b8 <.L246>:
    67b8:	b6 60 fc ff 	addd	$0xfffc:m,(r7,r6)
    67bc:	06 a0       	loadd	0x0:s(r7,r6),(r1,r0)
    67be:	00 56       	cmpd	$0x0:s,(r1,r0)
    67c0:	0a 1f       	beq	*-0x67b4 <.L253>:s
    67c2:	14 54       	movd	$0x1:s,(r5,r4)

000067c4 <.L243>:
    67c4:	40 5b       	movw	r4,r0
    67c6:	51 5b       	movw	r5,r1
    67c8:	47 02       	pop	$0x5,r7
    67ca:	1e 03       	popret	RA

000067cc <.L239>:
    67cc:	06 53       	cmpw	r0,r6
    67ce:	d5 11       	bge	*+0x67f8 <.L254>:s
    67d0:	b4 22 1f 00 	andw	$0x1f:m,r4
    67d4:	06 5e       	movxw	r0,(r7,r6)
    67d6:	36 60       	addd	$0x3:s,(r7,r6)
    67d8:	04 52       	cmpw	$0x0:s,r4
    67da:	08 1e       	beq	*-0x67aa <.L240>:s
    67dc:	60 55       	movd	(r7,r6),(r1,r0)
    67de:	20 4c       	ashud	$2:s,(r1,r0)
    67e0:	20 61       	addd	(r3,r2),(r1,r0)
    67e2:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    67e4:	00 58       	movb	$0x0:s,r0
    67e6:	40 39       	subb	r4,r0
    67e8:	8a 55       	movd	(r9,r8),(r11,r10)
    67ea:	0a 47       	lshd	r0,(r11,r10)
    67ec:	a0 55       	movd	(r11,r10),(r1,r0)
    67ee:	40 48       	ashud	r4,(r1,r0)
    67f0:	14 54       	movd	$0x1:s,(r5,r4)
    67f2:	80 57       	cmpd	(r9,r8),(r1,r0)
    67f4:	18 1e       	bne	*-0x67c4 <.L243>:s
    67f6:	ea 1d       	br	*-0x67aa <.L240>:s

000067f8 <.L254>:
    67f8:	06 5e       	movxw	r0,(r7,r6)
    67fa:	36 60       	addd	$0x3:s,(r7,r6)
    67fc:	e7 1d       	br	*-0x67aa <.L240>:s

000067fe <.L248>:
    67fe:	04 54       	movd	$0x0:s,(r5,r4)
    6800:	40 5b       	movw	r4,r0
    6802:	51 5b       	movw	r5,r1
    6804:	47 02       	pop	$0x5,r7
    6806:	1e 03       	popret	RA

00006808 <___fpclassifyd>:
    6808:	1c 01       	push	$0x2,r12
    680a:	fc 55       	movd	(sp),(r12)
    680c:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    680e:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    6810:	4c 60       	addd	$0x4:s,(r12)
    6812:	24 55       	movd	(r3,r2),(r5,r4)
    6814:	02 55       	movd	(r1,r0),(r3,r2)
    6816:	14 00 42 90 	ord	(r5,r4),(r3,r2)
    681a:	26 5a       	movw	$0x2:s,r6

0000681c <.LFE18>:
    681c:	02 56       	cmpd	$0x0:s,(r3,r2)
    681e:	14 10       	bne	*+0x6826 <.L14>:s

00006820 <.L2>:
    6820:	60 5b       	movw	r6,r0
    6822:	1c 02       	pop	$0x2,r12
    6824:	ee 0a       	jump	(ra)

00006826 <.L14>:
    6826:	10 27       	orw	r1,r0
    6828:	00 52       	cmpw	$0x0:s,r0
    682a:	00 08       	seq	r0
    682c:	00 50       	cmpb	$0x0:s,r0
    682e:	07 10       	beq	*+0x683c <.L8>:s
    6830:	94 00 00 80 	cmpd	$0x80000000:l,(r5,r4)
    6834:	00 00 
    6836:	01 08       	seq	r1
    6838:	01 52       	cmpw	$0x0:s,r1
    683a:	13 1f       	bne	*-0x6820 <.L2>:s

0000683c <.L8>:
    683c:	44 00 ff 7f 	andd	$0x7fffffff:l,(r5,r4)
    6840:	ff ff 
    6842:	42 55       	movd	(r5,r4),(r3,r2)
    6844:	22 00 f0 ff 	addd	$0xfff00000:l,(r3,r2)
    6848:	00 00 
    684a:	46 5a       	movw	$0x4:s,r6
    684c:	92 00 df 7f 	cmpd	$0x7fdfffff:l,(r3,r2)
    6850:	ff ff 
    6852:	b7 1e       	bhs	*-0x6820 <.L2>:s
    6854:	36 5a       	movw	$0x3:s,r6
    6856:	94 00 0f 00 	cmpd	$0xfffff:l,(r5,r4)
    685a:	ff ff 
    685c:	b2 1e       	bhs	*-0x6820 <.L2>:s
    685e:	94 00 f0 7f 	cmpd	$0x7ff00000:l,(r5,r4)
    6862:	00 00 
    6864:	06 08       	seq	r6
    6866:	06 23       	andw	r0,r6
    6868:	60 5b       	movw	r6,r0
    686a:	1c 02       	pop	$0x2,r12
    686c:	ee 0a       	jump	(ra)

0000686e <.LFE0>:
	...

00006870 <__sbrk_r>:
    6870:	1e 01       	push	RA
    6872:	18 01       	push	$0x2,r8
    6874:	28 55       	movd	(r3,r2),(r9,r8)
    6876:	42 55       	movd	(r5,r4),(r3,r2)
    6878:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    687c:	86 b0 
    687e:	ff c0 33 ac 	bal	(ra),*-0x14b0 <__sbrk>:m

00006882 <.LVL2>:
    6882:	04 55       	movd	(r1,r0),(r5,r4)
    6884:	90 56       	cmpd	$-1:s,(r1,r0)
    6886:	05 10       	beq	*+0x6890 <.L7>:s

00006888 <.L2>:
    6888:	40 5b       	movw	r4,r0
    688a:	51 5b       	movw	r5,r1
    688c:	18 02       	pop	$0x2,r8
    688e:	1e 03       	popret	RA

00006890 <.L7>:
    6890:	12 00 00 f0 	loadw	0xb086 <_errno>:l,r0
    6894:	86 b0 
    6896:	00 52       	cmpw	$0x0:s,r0
    6898:	08 1f       	beq	*-0x6888 <.L2>:s
    689a:	08 d0       	storw	r0,0x0:s(r9,r8)
    689c:	40 5b       	movw	r4,r0
    689e:	51 5b       	movw	r5,r1
    68a0:	18 02       	pop	$0x2,r8
    68a2:	1e 03       	popret	RA

000068a4 <___sread>:
    68a4:	1e 01       	push	RA
    68a6:	1c 01       	push	$0x2,r12
    68a8:	27 01       	push	$0x3,r7
    68aa:	fc 55       	movd	(sp),(r12)
    68ac:	48 55       	movd	(r5,r4),(r9,r8)
    68ae:	0f a7       	loadd	0xe:s(sp),(r1,r0)
    68b0:	ec 60       	addd	$0xe:s,(r12)
    68b2:	44 95       	loadw	0xa:s(r5,r4),r4
    68b4:	66 5e       	movxw	r6,(r7,r6)
    68b6:	16 01       	push	$0x2,r6
    68b8:	05 55       	movd	(r1,r0),(r6,r5)
    68ba:	00 c0 2a 18 	bal	(ra),*+0x80e4 <__read_r>:m

000068be <.LVL3>:
    68be:	4f 60       	addd	$0x4:s,(sp)
    68c0:	00 52       	cmpw	$0x0:s,r0
    68c2:	69 10       	bgt	*+0x68d4 <.L2>:s
    68c4:	18 9f 4a 00 	loadw	0x4a:m(r9,r8),r1
    68c8:	01 33       	addw	r0,r1
    68ca:	18 df 4a 00 	storw	r1,0x4a:m(r9,r8)
    68ce:	27 02       	pop	$0x3,r7
    68d0:	1c 02       	pop	$0x2,r12
    68d2:	1e 03       	popret	RA

000068d4 <.L2>:
    68d4:	18 94       	loadw	0x8:s(r9,r8),r1
    68d6:	b1 22 ff ef 	andw	$0xefff:m,r1
    68da:	18 d4       	storw	r1,0x8:s(r9,r8)
    68dc:	27 02       	pop	$0x3,r7
    68de:	1c 02       	pop	$0x2,r12
    68e0:	1e 03       	popret	RA

000068e2 <.LFE0>:
	...

000068e4 <___seofread>:
    68e4:	00 5a       	movw	$0x0:s,r0
    68e6:	ee 0a       	jump	(ra)

000068e8 <___swrite>:
    68e8:	1e 01       	push	RA
    68ea:	67 01       	push	$0x7,r7
    68ec:	fc 55       	movd	(sp),(r12)
    68ee:	bc 60 12 00 	addd	$0x12:m,(r12)
    68f2:	2a 55       	movd	(r3,r2),(r11,r10)
    68f4:	48 55       	movd	(r5,r4),(r9,r8)
    68f6:	cc a0       	loadd	0x0:s(r12),(r12)
    68f8:	67 5b       	movw	r6,r7
    68fa:	04 94       	loadw	0x8:s(r5,r4),r0
    68fc:	01 5b       	movw	r0,r1
    68fe:	b1 22 00 01 	andw	$0x100:m,r1
    6902:	01 52       	cmpw	$0x0:s,r1
    6904:	0b 10       	beq	*+0x691a <.L7>:s
    6906:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    690a:	44 95       	loadw	0xa:s(r5,r4),r4
    690c:	20 5a       	movw	$0x2:s,r0
    690e:	00 01       	push	$0x1,r0
    6910:	05 54       	movd	$0x0:s,(r6,r5)
    6912:	00 c0 96 16 	bal	(ra),*+0x7fa8 <__lseek_r>:m

00006916 <.LVL8>:
    6916:	08 94       	loadw	0x8:s(r9,r8),r0
    6918:	4f 60       	addd	$0x4:s,(sp)

0000691a <.L7>:
    691a:	b0 22 ff ef 	andw	$0xefff:m,r0
    691e:	08 d4       	storw	r0,0x8:s(r9,r8)
    6920:	48 95       	loadw	0xa:s(r9,r8),r4
    6922:	76 5e       	movxw	r7,(r7,r6)
    6924:	16 01       	push	$0x2,r6
    6926:	c5 55       	movd	(r12),(r6,r5)
    6928:	a2 55       	movd	(r11,r10),(r3,r2)
    692a:	00 c0 ea 0f 	bal	(ra),*+0x7914 <__write_r>:m

0000692e <.LVL9>:
    692e:	4f 60       	addd	$0x4:s,(sp)
    6930:	67 02       	pop	$0x7,r7
    6932:	1e 03       	popret	RA

00006934 <___sseek>:
    6934:	1e 01       	push	RA
    6936:	1c 01       	push	$0x2,r12
    6938:	18 01       	push	$0x2,r8
    693a:	fc 55       	movd	(sp),(r12)
    693c:	48 55       	movd	(r5,r4),(r9,r8)
    693e:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    6940:	cc 60       	addd	$0xc:s,(r12)
    6942:	bf 60 fe ff 	addd	$0xfffe:m,(sp)
    6946:	44 95       	loadw	0xa:s(r5,r4),r4
    6948:	06 01       	push	$0x1,r6
    694a:	05 55       	movd	(r1,r0),(r6,r5)
    694c:	00 c0 5c 16 	bal	(ra),*+0x7fa8 <__lseek_r>:m

00006950 <.LVL13>:
    6950:	02 55       	movd	(r1,r0),(r3,r2)
    6952:	4f 60       	addd	$0x4:s,(sp)
    6954:	08 94       	loadw	0x8:s(r9,r8),r0
    6956:	92 56       	cmpd	$-1:s,(r3,r2)
    6958:	0b 10       	beq	*+0x696e <.L14>:s
    695a:	b0 26 00 10 	orw	$0x1000:m,r0
    695e:	08 d4       	storw	r0,0x8:s(r9,r8)
    6960:	28 df 4a 00 	storw	r2,0x4a:m(r9,r8)
    6964:	20 5b       	movw	r2,r0
    6966:	31 5b       	movw	r3,r1
    6968:	18 02       	pop	$0x2,r8
    696a:	1c 02       	pop	$0x2,r12
    696c:	1e 03       	popret	RA

0000696e <.L14>:
    696e:	b0 22 ff ef 	andw	$0xefff:m,r0
    6972:	08 d4       	storw	r0,0x8:s(r9,r8)
    6974:	20 5b       	movw	r2,r0
    6976:	31 5b       	movw	r3,r1
    6978:	18 02       	pop	$0x2,r8
    697a:	1c 02       	pop	$0x2,r12
    697c:	1e 03       	popret	RA

0000697e <.LFE3>:
	...

00006980 <___sclose>:
    6980:	1e 01       	push	RA
    6982:	44 95       	loadw	0xa:s(r5,r4),r4
    6984:	00 c0 64 10 	bal	(ra),*+0x79e8 <__close_r>:m

00006988 <.LVL19>:
    6988:	1e 03       	popret	RA

0000698a <.LFE4>:
	...

0000698c <_strcmp>:
    698c:	1e 01       	push	RA
    698e:	40 55       	movd	(r5,r4),(r1,r0)
    6990:	14 00 20 90 	ord	(r3,r2),(r1,r0)
    6994:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    6998:	03 00 
    699a:	00 56       	cmpd	$0x0:s,(r1,r0)
    699c:	1e 12       	bne	*+0x69f8 <.L22>:s
    699e:	e2 a0       	loadd	0x0:s(r3,r2),(ra)
    69a0:	04 a0       	loadd	0x0:s(r5,r4),(r1,r0)
    69a2:	0e 57       	cmpd	(r1,r0),(ra)
    69a4:	1a 12       	bne	*+0x69f8 <.L22>:s
    69a6:	e0 55       	movd	(ra),(r1,r0)
    69a8:	20 00 fe fe 	addd	$0xfefefeff:l,(r1,r0)
    69ac:	ff fe 
    69ae:	6e 00 ff ff 	xord	$0xffffffff:l,(ra)
    69b2:	ff ff 
    69b4:	14 00 e0 b0 	andd	(ra),(r1,r0)
    69b8:	40 00 80 80 	andd	$0x80808080:l,(r1,r0)
    69bc:	80 80 
    69be:	00 56       	cmpd	$0x0:s,(r1,r0)
    69c0:	15 11       	bne	*+0x69ea <.L11>:s

000069c2 <.L24>:
    69c2:	42 60       	addd	$0x4:s,(r3,r2)
    69c4:	44 60       	addd	$0x4:s,(r5,r4)
    69c6:	e2 a0       	loadd	0x0:s(r3,r2),(ra)
    69c8:	04 a0       	loadd	0x0:s(r5,r4),(r1,r0)
    69ca:	0e 57       	cmpd	(r1,r0),(ra)
    69cc:	16 11       	bne	*+0x69f8 <.L22>:s
    69ce:	e0 55       	movd	(ra),(r1,r0)
    69d0:	20 00 fe fe 	addd	$0xfefefeff:l,(r1,r0)
    69d4:	ff fe 
    69d6:	6e 00 ff ff 	xord	$0xffffffff:l,(ra)
    69da:	ff ff 
    69dc:	14 00 e0 b0 	andd	(ra),(r1,r0)
    69e0:	40 00 80 80 	andd	$0x80808080:l,(r1,r0)
    69e4:	80 80 
    69e6:	00 56       	cmpd	$0x0:s,(r1,r0)
    69e8:	0d 1e       	beq	*-0x69c2 <.L24>:s

000069ea <.L11>:
    69ea:	00 5a       	movw	$0x0:s,r0
    69ec:	1e 03       	popret	RA

000069ee <.L25>:
    69ee:	14 b0       	loadb	0x0:s(r5,r4),r1
    69f0:	10 51       	cmpb	r1,r0
    69f2:	16 10       	bne	*+0x69fe <.L5>:s
    69f4:	12 60       	addd	$0x1:s,(r3,r2)
    69f6:	14 60       	addd	$0x1:s,(r5,r4)

000069f8 <.L22>:
    69f8:	02 b0       	loadb	0x0:s(r3,r2),r0
    69fa:	00 50       	cmpb	$0x0:s,r0
    69fc:	19 1f       	bne	*-0x69ee <.L25>:s

000069fe <.L5>:
    69fe:	02 b0       	loadb	0x0:s(r3,r2),r0
    6a00:	00 5d       	movzb	r0,r0
    6a02:	14 b0       	loadb	0x0:s(r5,r4),r1
    6a04:	11 5d       	movzb	r1,r1
    6a06:	10 3b       	subw	r1,r0
    6a08:	1e 03       	popret	RA

00006a0a <.LFE0>:
	...

00006a0c <_strlen>:
    6a0c:	1e 01       	push	RA
    6a0e:	20 55       	movd	(r3,r2),(r1,r0)
    6a10:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    6a14:	03 00 
    6a16:	00 56       	cmpd	$0x0:s,(r1,r0)
    6a18:	0f 12       	beq	*+0x6a76 <.L12>:s
    6a1a:	02 b0       	loadb	0x0:s(r3,r2),r0
    6a1c:	00 50       	cmpb	$0x0:s,r0
    6a1e:	0e 12       	beq	*+0x6a7a <.L13>:s
    6a20:	20 55       	movd	(r3,r2),(r1,r0)
    6a22:	e4 10       	br	*+0x6a2a <.L5>:s

00006a24 <.L7>:
    6a24:	40 b0       	loadb	0x0:s(r1,r0),r4
    6a26:	04 50       	cmpb	$0x0:s,r4
    6a28:	00 12       	beq	*+0x6a68 <.L23>:s

00006a2a <.L5>:
    6a2a:	10 60       	addd	$0x1:s,(r1,r0)
    6a2c:	04 55       	movd	(r1,r0),(r5,r4)
    6a2e:	44 00 00 00 	andd	$0x3:l,(r5,r4)
    6a32:	03 00 
    6a34:	04 56       	cmpd	$0x0:s,(r5,r4)
    6a36:	17 1f       	bne	*-0x6a24 <.L7>:s
    6a38:	e2 10       	br	*+0x6a3c <.L2>:s

00006a3a <.L26>:
    6a3a:	40 60       	addd	$0x4:s,(r1,r0)

00006a3c <.L2>:
    6a3c:	e0 a0       	loadd	0x0:s(r1,r0),(ra)
    6a3e:	e4 55       	movd	(ra),(r5,r4)
    6a40:	24 00 fe fe 	addd	$0xfefefeff:l,(r5,r4)
    6a44:	ff fe 
    6a46:	6e 00 ff ff 	xord	$0xffffffff:l,(ra)
    6a4a:	ff ff 
    6a4c:	14 00 e4 b0 	andd	(ra),(r5,r4)
    6a50:	44 00 80 80 	andd	$0x80808080:l,(r5,r4)
    6a54:	80 80 
    6a56:	04 56       	cmpd	$0x0:s,(r5,r4)
    6a58:	01 1f       	beq	*-0x6a3a <.L26>:s
    6a5a:	40 b0       	loadb	0x0:s(r1,r0),r4
    6a5c:	04 50       	cmpb	$0x0:s,r4
    6a5e:	05 10       	beq	*+0x6a68 <.L23>:s

00006a60 <.L11>:
    6a60:	10 60       	addd	$0x1:s,(r1,r0)
    6a62:	40 b0       	loadb	0x0:s(r1,r0),r4
    6a64:	04 50       	cmpb	$0x0:s,r4
    6a66:	1d 1f       	bne	*-0x6a60 <.L11>:s

00006a68 <.L23>:
    6a68:	04 55       	movd	(r1,r0),(r5,r4)
    6a6a:	14 00 24 c0 	subd	(r3,r2),(r5,r4)
    6a6e:	42 55       	movd	(r5,r4),(r3,r2)
    6a70:	20 5b       	movw	r2,r0
    6a72:	31 5b       	movw	r3,r1
    6a74:	1e 03       	popret	RA

00006a76 <.L12>:
    6a76:	20 55       	movd	(r3,r2),(r1,r0)
    6a78:	e2 1e       	br	*-0x6a3c <.L2>:s

00006a7a <.L13>:
    6a7a:	02 54       	movd	$0x0:s,(r3,r2)
    6a7c:	20 5b       	movw	r2,r0
    6a7e:	31 5b       	movw	r3,r1
    6a80:	1e 03       	popret	RA

00006a82 <.LFE0>:
	...

00006a84 <___sprint_r>:
    6a84:	9d 01       	push	$0x2,r13,RA
    6a86:	67 01       	push	$0x7,r7
    6a88:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)
    6a8c:	fc 55       	movd	(sp),(r12)
    6a8e:	bc 60 22 00 	addd	$0x22:m,(r12)
    6a92:	2f e0       	stord	(r3,r2),0x0:s(sp)
    6a94:	4d 55       	movd	(r5,r4),(r13)
    6a96:	cc a0       	loadd	0x0:s(r12),(r12)
    6a98:	cf e2       	stord	(r12),0x4:s(sp)
    6a9a:	0c 93       	loadw	0x6:s(r12),r0
    6a9c:	00 52       	cmpw	$0x0:s,r0
    6a9e:	07 13       	beq	*+0x6b0c <.L14>:s

00006aa0 <.LBB6>:
    6aa0:	14 9f 58 00 	loadw	0x58:m(r5,r4),r1
    6aa4:	b1 22 00 20 	andw	$0x2000:m,r1
    6aa8:	01 52       	cmpw	$0x0:s,r1
    6aaa:	05 13       	beq	*+0x6b14 <.L4>:s
    6aac:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    6aae:	11 a0       	loadd	0x0:s(r2,r1),(r2,r1)
    6ab0:	1f e4       	stord	(r2,r1),0x8:s(sp)

00006ab2 <.L6>:
    6ab2:	1f a4       	loadd	0x8:s(sp),(r2,r1)
    6ab4:	c1 a0       	loadd	0x0:s(r2,r1),(r12)
    6ab6:	a1 a2       	loadd	0x4:s(r2,r1),(r11,r10)
    6ab8:	fa 4b       	lshd	$-1:s,(r11,r10)
    6aba:	a7 5b       	movw	r10,r7
    6abc:	0a 52       	cmpw	$0x0:s,r10
    6abe:	dd 11       	bge	*+0x6af8 <.L9>:s
    6ac0:	9a 32       	addw	$-1:s,r10
    6ac2:	aa 5f       	movzw	r10,(r11,r10)
    6ac4:	1a 60       	addd	$0x1:s,(r11,r10)
    6ac6:	aa 61       	addd	(r11,r10),(r11,r10)
    6ac8:	08 54       	movd	$0x0:s,(r9,r8)
    6aca:	e4 10       	br	*+0x6ad2 <.L8>:s

00006acc <.L16>:
    6acc:	28 60       	addd	$0x2:s,(r9,r8)
    6ace:	a8 57       	cmpd	(r11,r10),(r9,r8)
    6ad0:	02 11       	beq	*+0x6af4 <.L15>:s

00006ad2 <.L8>:
    6ad2:	c0 55       	movd	(r12),(r1,r0)
    6ad4:	80 61       	addd	(r9,r8),(r1,r0)
    6ad6:	d5 55       	movd	(r13),(r6,r5)
    6ad8:	40 90       	loadw	0x0:s(r1,r0),r4
    6ada:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    6adc:	00 c0 ec 0f 	bal	(ra),*+0x7ac8 <__fputwc_r>:m

00006ae0 <.LVL8>:
    6ae0:	90 52       	cmpw	$-1:s,r0
    6ae2:	15 1f       	bne	*-0x6acc <.L16>:s

00006ae4 <.L7>:
    6ae4:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    6ae6:	01 c3 06 00 	storw	$0x0:s,0x6:m(r2,r1)
    6aea:	01 c3 04 00 	storw	$0x0:s,0x4:m(r2,r1)

00006aee <.L3>:
    6aee:	cf 60       	addd	$0xc:s,(sp)
    6af0:	67 02       	pop	$0x7,r7
    6af2:	9d 03       	popret	$0x2,r13,RA

00006af4 <.L15>:
    6af4:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    6af6:	01 93       	loadw	0x6:s(r2,r1),r0

00006af8 <.L9>:
    6af8:	77 33       	addw	r7,r7
    6afa:	70 3b       	subw	r7,r0
    6afc:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    6afe:	01 d3       	storw	r0,0x6:s(r2,r1)
    6b00:	1f a4       	loadd	0x8:s(sp),(r2,r1)
    6b02:	81 60       	addd	$0x8:s,(r2,r1)
    6b04:	1f e4       	stord	(r2,r1),0x8:s(sp)
    6b06:	00 52       	cmpw	$0x0:s,r0
    6b08:	15 1d       	bne	*-0x6ab2 <.L6>:s
    6b0a:	ed 1e       	br	*-0x6ae4 <.L7>:s

00006b0c <.L14>:
    6b0c:	0c d2       	storw	r0,0x4:s(r12)
    6b0e:	cf 60       	addd	$0xc:s,(sp)
    6b10:	67 02       	pop	$0x7,r7
    6b12:	9d 03       	popret	$0x2,r13,RA

00006b14 <.L4>:
    6b14:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    6b16:	10 01       	push	$0x2,r0
    6b18:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    6b1a:	00 c0 fa 10 	bal	(ra),*+0x7c14 <___sfvwrite_r>:m

00006b1e <.LVL17>:
    6b1e:	4f 60       	addd	$0x4:s,(sp)
    6b20:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    6b22:	01 c3 06 00 	storw	$0x0:s,0x6:m(r2,r1)
    6b26:	01 c3 04 00 	storw	$0x0:s,0x4:m(r2,r1)
    6b2a:	e2 1e       	br	*-0x6aee <.L3>:s

00006b2c <__vfiprintf_r>:
    6b2c:	9d 01       	push	$0x2,r13,RA
    6b2e:	67 01       	push	$0x7,r7
    6b30:	bf 60 34 fb 	addd	$0xfb34:m,(sp)
    6b34:	fc 55       	movd	(sp),(r12)
    6b36:	2f ef ac 04 	stord	(r3,r2),0x4ac:m(sp)
    6b3a:	4f ef a4 04 	stord	(r5,r4),0x4a4:m(sp)
    6b3e:	8f af e2 04 	loadd	0x4e2:m(sp),(r9,r8)
    6b42:	bc 60 e2 04 	addd	$0x4e2:m,(r12)
    6b46:	cc a2       	loadd	0x4:s(r12),(r12)
    6b48:	cf ef b4 04 	stord	(r12),0x4b4:m(sp)
    6b4c:	02 56       	cmpd	$0x0:s,(r3,r2)
    6b4e:	06 10       	beq	*+0x6b5a <.L18>:s
    6b50:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    6b54:	00 52       	cmpw	$0x0:s,r0
    6b56:	00 18 1a 0b 	beq	*+0x7670 <.L243>:m

00006b5a <.L18>:
    6b5a:	0f af a4 04 	loadd	0x4a4:m(sp),(r1,r0)
    6b5e:	20 94       	loadw	0x8:s(r1,r0),r2
    6b60:	20 5b       	movw	r2,r0
    6b62:	b0 22 00 20 	andw	$0x2000:m,r0
    6b66:	00 52       	cmpw	$0x0:s,r0
    6b68:	1c 10       	bne	*+0x6b80 <.L19>:s
    6b6a:	b2 26 00 20 	orw	$0x2000:m,r2
    6b6e:	3f af a4 04 	loadd	0x4a4:m(sp),(r4,r3)
    6b72:	23 d4       	storw	r2,0x8:s(r4,r3)
    6b74:	03 9f 58 00 	loadw	0x58:m(r4,r3),r0
    6b78:	b0 22 ff df 	andw	$0xdfff:m,r0
    6b7c:	03 df 58 00 	storw	r0,0x58:m(r4,r3)

00006b80 <.L19>:
    6b80:	20 5b       	movw	r2,r0
    6b82:	80 22       	andw	$0x8:s,r0
    6b84:	00 52       	cmpw	$0x0:s,r0
    6b86:	00 18 90 09 	beq	*+0x7516 <.L20>:m
    6b8a:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    6b8e:	0d a6       	loadd	0xc:s(r13),(r1,r0)
    6b90:	00 56       	cmpd	$0x0:s,(r1,r0)
    6b92:	00 18 84 09 	beq	*+0x7516 <.L20>:m
    6b96:	20 5b       	movw	r2,r0
    6b98:	b0 22 1a 00 	andw	$0x1a:m,r0
    6b9c:	a0 52       	cmpw	$0xa:s,r0
    6b9e:	00 18 9a 09 	beq	*+0x7538 <.L244>:m

00006ba2 <.L24>:
    6ba2:	ff ef 84 04 	stord	(sp),0x484:m(sp)
    6ba6:	0f c3 8a 04 	storw	$0x0:s,0x48a:m(sp)
    6baa:	0f c3 88 04 	storw	$0x0:s,0x488:m(sp)
    6bae:	8d 55       	movd	(r9,r8),(r13)
    6bb0:	03 54       	movd	$0x0:s,(r4,r3)
    6bb2:	3f ef c0 04 	stord	(r4,r3),0x4c0:m(sp)
    6bb6:	0f c3 b0 04 	storw	$0x0:s,0x4b0:m(sp)
    6bba:	fc 55       	movd	(sp),(r12)
    6bbc:	f0 55       	movd	(sp),(r1,r0)
    6bbe:	b0 60 84 04 	addd	$0x484:m,(r1,r0)
    6bc2:	0f ef 90 04 	stord	(r1,r0),0x490:m(sp)
    6bc6:	f1 55       	movd	(sp),(r2,r1)
    6bc8:	b1 60 83 04 	addd	$0x483:m,(r2,r1)
    6bcc:	1f ef 94 04 	stord	(r2,r1),0x494:m(sp)
    6bd0:	10 3b       	subw	r1,r0
    6bd2:	0f df c8 04 	storw	r0,0x4c8:m(sp)

00006bd6 <.L226>:
    6bd6:	0d b0       	loadb	0x0:s(r13),r0
    6bd8:	d8 55       	movd	(r13),(r9,r8)
    6bda:	b0 50 25 00 	cmpb	$0x25:m,r0
    6bde:	11 08       	sne	r1
    6be0:	01 52       	cmpw	$0x0:s,r1
    6be2:	0c 12       	beq	*+0x6c3a <.L28>:s
    6be4:	00 50       	cmpb	$0x0:s,r0
    6be6:	10 08       	sne	r0
    6be8:	00 52       	cmpw	$0x0:s,r0
    6bea:	16 10       	bne	*+0x6bf6 <.L29>:s
    6bec:	e7 12       	br	*+0x6c3a <.L28>:s

00006bee <.L245>:
    6bee:	00 50       	cmpb	$0x0:s,r0
    6bf0:	10 08       	sne	r0
    6bf2:	00 52       	cmpw	$0x0:s,r0
    6bf4:	08 10       	beq	*+0x6c04 <.L162>:s

00006bf6 <.L29>:
    6bf6:	18 60       	addd	$0x1:s,(r9,r8)
    6bf8:	08 b0       	loadb	0x0:s(r9,r8),r0
    6bfa:	b0 50 25 00 	cmpb	$0x25:m,r0
    6bfe:	11 08       	sne	r1
    6c00:	01 52       	cmpw	$0x0:s,r1
    6c02:	16 1f       	bne	*-0x6bee <.L245>:s

00006c04 <.L162>:
    6c04:	8a 5b       	movw	r8,r10
    6c06:	d2 55       	movd	(r13),(r3,r2)
    6c08:	2a 3b       	subw	r2,r10
    6c0a:	0a 52       	cmpw	$0x0:s,r10
    6c0c:	07 11       	beq	*+0x6c3a <.L28>:s
    6c0e:	dc e0       	stord	(r13),0x0:s(r12)
    6c10:	a0 5e       	movxw	r10,(r1,r0)
    6c12:	0c e2       	stord	(r1,r0),0x4:s(r12)
    6c14:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    6c18:	a2 33       	addw	r10,r2
    6c1a:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    6c1e:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    6c22:	13 32       	addw	$0x1:s,r3
    6c24:	3f df 88 04 	storw	r3,0x488:m(sp)
    6c28:	73 52       	cmpw	$0x7:s,r3
    6c2a:	c0 18 a6 09 	blt	*+0x75d0 <.L31>:m
    6c2e:	8c 60       	addd	$0x8:s,(r12)

00006c30 <.L32>:
    6c30:	4f 9f b0 04 	loadw	0x4b0:m(sp),r4
    6c34:	a4 33       	addw	r10,r4
    6c36:	4f df b0 04 	storw	r4,0x4b0:m(sp)

00006c3a <.L28>:
    6c3a:	08 b0       	loadb	0x0:s(r9,r8),r0
    6c3c:	00 50       	cmpb	$0x0:s,r0
    6c3e:	00 18 ca 0b 	beq	*+0x7808 <.L34>:m
    6c42:	8d 55       	movd	(r9,r8),(r13)
    6c44:	1d 60       	addd	$0x1:s,(r13)
    6c46:	0f 83 8e 04 	storb	$0x0:s,0x48e:m(sp)
    6c4a:	04 58       	movb	$0x0:s,r4
    6c4c:	9a 5a       	movw	$-1:s,r10
    6c4e:	0f c3 a0 04 	storw	$0x0:s,0x4a0:m(sp)
    6c52:	0f 9f a0 04 	loadw	0x4a0:m(sp),r0
    6c56:	0f df 98 04 	storw	r0,0x498:m(sp)
    6c5a:	20 05 b8 a1 	movd	$0xa1b8:m,(r3,r2)
    6c5e:	06 5b       	movw	r0,r6
    6c60:	d8 55       	movd	(r13),(r9,r8)

00006c62 <.L224>:
    6c62:	58 b0       	loadb	0x0:s(r9,r8),r5
    6c64:	55 5c       	movxb	r5,r5
    6c66:	18 60       	addd	$0x1:s,(r9,r8)

00006c68 <.L225>:
    6c68:	50 5b       	movw	r5,r0
    6c6a:	b0 32 e0 ff 	addw	$0xffe0:m,r0
    6c6e:	b0 52 58 00 	cmpw	$0x58:m,r0
    6c72:	ba 11       	bhs	*+0x6ca6 <.L246>:s

00006c74 <.L38>:
    6c74:	8d 55       	movd	(r9,r8),(r13)
    6c76:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    6c7a:	05 52       	cmpw	$0x0:s,r5
    6c7c:	00 18 8c 0b 	beq	*+0x7808 <.L34>:m
    6c80:	5f ff 5c 04 	storb	r5,0x45c:m(sp)
    6c84:	0f 83 8e 04 	storb	$0x0:s,0x48e:m(sp)
    6c88:	1f c3 9c 04 	storw	$0x1:s,0x49c:m(sp)
    6c8c:	3f 9f 9c 04 	loadw	0x49c:m(sp),r3
    6c90:	3f df a2 04 	storw	r3,0x4a2:m(sp)
    6c94:	f0 55       	movd	(sp),(r1,r0)
    6c96:	b0 60 5c 04 	addd	$0x45c:m,(r1,r0)
    6c9a:	0f ef bc 04 	stord	(r1,r0),0x4bc:m(sp)
    6c9e:	0f c3 a8 04 	storw	$0x0:s,0x4a8:m(sp)
    6ca2:	e0 18 68 01 	br	*+0x6e0a <.L112>:m

00006ca6 <.L246>:
    6ca6:	00 5f       	movzw	r0,(r1,r0)
    6ca8:	20 4c       	ashud	$2:s,(r1,r0)
    6caa:	20 61       	addd	(r3,r2),(r1,r0)
    6cac:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    6cae:	e0 0a       	jump	(r1,r0)

00006cb0 <.L41>:
    6cb0:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    6cb4:	10 90       	loadw	0x0:s(r1,r0),r1
    6cb6:	1f df a0 04 	storw	r1,0x4a0:m(sp)
    6cba:	df af b4 04 	loadd	0x4b4:m(sp),(r13)
    6cbe:	2d 60       	addd	$0x2:s,(r13)
    6cc0:	df ef b4 04 	stord	(r13),0x4b4:m(sp)
    6cc4:	01 52       	cmpw	$0x0:s,r1
    6cc6:	7e 1c       	ble	*-0x6c62 <.L224>:s
    6cc8:	60 5b       	movw	r6,r0
    6cca:	10 3b       	subw	r1,r0
    6ccc:	0f df a0 04 	storw	r0,0x4a0:m(sp)

00006cd0 <.L42>:
    6cd0:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    6cd4:	41 26       	orw	$0x4:s,r1
    6cd6:	1f df 98 04 	storw	r1,0x498:m(sp)
    6cda:	e4 1c       	br	*-0x6c62 <.L224>:s

00006cdc <.L43>:
    6cdc:	58 b0       	loadb	0x0:s(r9,r8),r5
    6cde:	55 5c       	movxb	r5,r5
    6ce0:	18 60       	addd	$0x1:s,(r9,r8)
    6ce2:	b5 52 2a 00 	cmpw	$0x2a:m,r5
    6ce6:	00 18 e6 0b 	beq	*+0x78cc <.L67>:m
    6cea:	50 5b       	movw	r5,r0
    6cec:	b0 32 d0 ff 	addw	$0xffd0:m,r0
    6cf0:	0a 5a       	movw	$0x0:s,r10
    6cf2:	b0 52 09 00 	cmpw	$0x9:m,r0
    6cf6:	a9 1b       	blo	*-0x6c68 <.L225>:s

00006cf8 <.L199>:
    6cf8:	a1 5b       	movw	r10,r1
    6cfa:	a1 33       	addw	r10,r1
    6cfc:	3a 42       	ashuw	$3:s,r10
    6cfe:	1a 33       	addw	r1,r10
    6d00:	0a 33       	addw	r0,r10
    6d02:	58 b0       	loadb	0x0:s(r9,r8),r5
    6d04:	55 5c       	movxb	r5,r5
    6d06:	18 60       	addd	$0x1:s,(r9,r8)
    6d08:	50 5b       	movw	r5,r0
    6d0a:	b0 32 d0 ff 	addw	$0xffd0:m,r0
    6d0e:	b0 52 09 00 	cmpw	$0x9:m,r0
    6d12:	b3 1f       	bhs	*-0x6cf8 <.L199>:s
    6d14:	0a 52       	cmpw	$0x0:s,r10
    6d16:	79 1a       	ble	*-0x6c68 <.L225>:s
    6d18:	9a 5a       	movw	$-1:s,r10
    6d1a:	e7 1a       	br	*-0x6c68 <.L225>:s

00006d1c <.L154>:
    6d1c:	01 5a       	movw	$0x0:s,r1
    6d1e:	50 5b       	movw	r5,r0
    6d20:	b0 32 d0 ff 	addw	$0xffd0:m,r0

00006d24 <.L45>:
    6d24:	15 5b       	movw	r1,r5
    6d26:	15 33       	addw	r1,r5
    6d28:	31 42       	ashuw	$3:s,r1
    6d2a:	51 33       	addw	r5,r1
    6d2c:	01 33       	addw	r0,r1
    6d2e:	58 b0       	loadb	0x0:s(r9,r8),r5
    6d30:	55 5c       	movxb	r5,r5
    6d32:	18 60       	addd	$0x1:s,(r9,r8)
    6d34:	50 5b       	movw	r5,r0
    6d36:	b0 32 d0 ff 	addw	$0xffd0:m,r0
    6d3a:	b0 52 09 00 	cmpw	$0x9:m,r0
    6d3e:	b3 1f       	bhs	*-0x6d24 <.L45>:s
    6d40:	1f df a0 04 	storw	r1,0x4a0:m(sp)
    6d44:	e2 19       	br	*-0x6c68 <.L225>:s

00006d46 <.L44>:
    6d46:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6d4a:	b0 26 80 00 	orw	$0x80:m,r0
    6d4e:	0f df 98 04 	storw	r0,0x498:m(sp)
    6d52:	e8 18       	br	*-0x6c62 <.L224>:s

00006d54 <.L60>:
    6d54:	8d 55       	movd	(r9,r8),(r13)
    6d56:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    6d5a:	00 05 e0 9e 	movd	$0x9ee0:m,(r1,r0)
    6d5e:	0f ef c0 04 	stord	(r1,r0),0x4c0:m(sp)

00006d62 <.L65>:
    6d62:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6d66:	b0 22 10 00 	andw	$0x10:m,r0
    6d6a:	00 52       	cmpw	$0x0:s,r0
    6d6c:	00 18 a2 02 	beq	*+0x700e <.L94>:m

00006d70 <.L251>:
    6d70:	1f af b4 04 	loadd	0x4b4:m(sp),(r2,r1)
    6d74:	81 a0       	loadd	0x0:s(r2,r1),(r9,r8)
    6d76:	41 60       	addd	$0x4:s,(r2,r1)
    6d78:	1f ef b4 04 	stord	(r2,r1),0x4b4:m(sp)

00006d7c <.L95>:
    6d7c:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6d80:	10 22       	andw	$0x1:s,r0
    6d82:	00 52       	cmpw	$0x0:s,r0
    6d84:	10 18 b2 02 	bne	*+0x7036 <.L97>:m

00006d88 <.L252>:
    6d88:	80 5b       	movw	r8,r0
    6d8a:	90 27       	orw	r9,r0
    6d8c:	00 52       	cmpw	$0x0:s,r0
    6d8e:	12 08       	sne	r2
    6d90:	20 58       	movb	$0x2:s,r0

00006d92 <.L83>:
    6d92:	0f 83 8e 04 	storb	$0x0:s,0x48e:m(sp)
    6d96:	0b 58       	movb	$0x0:s,r11

00006d98 <.L78>:
    6d98:	0a 52       	cmpw	$0x0:s,r10
    6d9a:	67 10       	bgt	*+0x6da8 <.L98>:s
    6d9c:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    6da0:	b1 22 7f ff 	andw	$0xff7f:m,r1
    6da4:	1f df 98 04 	storw	r1,0x498:m(sp)

00006da8 <.L98>:
    6da8:	0a 52       	cmpw	$0x0:s,r10
    6daa:	11 08       	sne	r1
    6dac:	01 52       	cmpw	$0x0:s,r1
    6dae:	10 18 2e 01 	bne	*+0x6edc <.L163>:m
    6db2:	02 50       	cmpb	$0x0:s,r2
    6db4:	10 18 28 01 	bne	*+0x6edc <.L163>:m
    6db8:	00 50       	cmpb	$0x0:s,r0
    6dba:	10 18 4a 07 	bne	*+0x7504 <.L160>:m
    6dbe:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6dc2:	10 22       	andw	$0x1:s,r0
    6dc4:	00 52       	cmpw	$0x0:s,r0
    6dc6:	00 18 b2 08 	beq	*+0x7678 <.L161>:m
    6dca:	b0 58 30 00 	movb	$0x30:m,r0
    6dce:	0f ff 83 04 	storb	r0,0x483:m(sp)

00006dd2 <.L238>:
    6dd2:	3f 9f c8 04 	loadw	0x4c8:m(sp),r3
    6dd6:	3f df a2 04 	storw	r3,0x4a2:m(sp)
    6dda:	f0 55       	movd	(sp),(r1,r0)
    6ddc:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    6de0:	0f ef bc 04 	stord	(r1,r0),0x4bc:m(sp)

00006de4 <.L106>:
    6de4:	af df a8 04 	storw	r10,0x4a8:m(sp)

00006de8 <.L91>:
    6de8:	1f 9f a2 04 	loadw	0x4a2:m(sp),r1
    6dec:	1f df 9c 04 	storw	r1,0x49c:m(sp)
    6df0:	2f 9f a8 04 	loadw	0x4a8:m(sp),r2
    6df4:	21 53       	cmpw	r2,r1
    6df6:	73 10       	ble	*+0x6dfc <.L111>:s
    6df8:	2f df 9c 04 	storw	r2,0x49c:m(sp)

00006dfc <.L111>:
    6dfc:	0b 50       	cmpb	$0x0:s,r11
    6dfe:	10 08       	sne	r0
    6e00:	3f 9f 9c 04 	loadw	0x49c:m(sp),r3
    6e04:	03 33       	addw	r0,r3
    6e06:	3f df 9c 04 	storw	r3,0x49c:m(sp)

00006e0a <.L112>:
    6e0a:	4f 9f 98 04 	loadw	0x498:m(sp),r4
    6e0e:	24 22       	andw	$0x2:s,r4
    6e10:	4f df b8 04 	storw	r4,0x4b8:m(sp)
    6e14:	04 52       	cmpw	$0x0:s,r4
    6e16:	06 10       	beq	*+0x6e22 <.L113>:s
    6e18:	0f 9f 9c 04 	loadw	0x49c:m(sp),r0
    6e1c:	20 32       	addw	$0x2:s,r0
    6e1e:	0f df 9c 04 	storw	r0,0x49c:m(sp)

00006e22 <.L113>:
    6e22:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    6e26:	b1 22 84 00 	andw	$0x84:m,r1
    6e2a:	1f df b2 04 	storw	r1,0x4b2:m(sp)
    6e2e:	01 52       	cmpw	$0x0:s,r1
    6e30:	10 18 ee 03 	bne	*+0x721e <.L241>:m
    6e34:	7f 9f a0 04 	loadw	0x4a0:m(sp),r7
    6e38:	2f 9f 9c 04 	loadw	0x49c:m(sp),r2
    6e3c:	27 3b       	subw	r2,r7
    6e3e:	07 52       	cmpw	$0x0:s,r7
    6e40:	d0 18 de 03 	bge	*+0x721e <.L241>:m
    6e44:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    6e48:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    6e4c:	80 05 1c a3 	movd	$0xa31c:m,(r9,r8)
    6e50:	b7 52 10 00 	cmpw	$0x10:m,r7
    6e54:	d5 13       	bge	*+0x6ebe <.L115>:s
    6e56:	ba 54 10 00 	movd	$0x10:m,(r11,r10)
    6e5a:	df ef c4 04 	stord	(r13),0x4c4:m(sp)
    6e5e:	c0 55       	movd	(r12),(r1,r0)
    6e60:	cf af ac 04 	loadd	0x4ac:m(sp),(r12)
    6e64:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    6e68:	e7 10       	br	*+0x6e76 <.L118>:s

00006e6a <.L248>:
    6e6a:	80 60       	addd	$0x8:s,(r1,r0)
    6e6c:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    6e70:	b7 52 10 00 	cmpw	$0x10:m,r7
    6e74:	d2 12       	bge	*+0x6eb8 <.L247>:s

00006e76 <.L118>:
    6e76:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    6e78:	a0 e2       	stord	(r11,r10),0x4:s(r1,r0)
    6e7a:	b2 32 10 00 	addw	$0x10:m,r2
    6e7e:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    6e82:	13 32       	addw	$0x1:s,r3
    6e84:	3f df 88 04 	storw	r3,0x488:m(sp)
    6e88:	73 52       	cmpw	$0x7:s,r3
    6e8a:	d0 1f       	bge	*-0x6e6a <.L248>:s
    6e8c:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    6e90:	f3 61       	addd	(sp),(r4,r3)
    6e92:	13 01       	push	$0x2,r3
    6e94:	d4 55       	movd	(r13),(r5,r4)
    6e96:	c2 55       	movd	(r12),(r3,r2)
    6e98:	ff c0 ed fb 	bal	(ra),*-0x6a84 <___sprint_r>:m

00006e9c <.LVL96>:
    6e9c:	4f 60       	addd	$0x4:s,(sp)
    6e9e:	00 52       	cmpw	$0x0:s,r0
    6ea0:	10 18 82 05 	bne	*+0x7422 <.L33>:m
    6ea4:	f0 55       	movd	(sp),(r1,r0)
    6ea6:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    6eaa:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    6eae:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    6eb2:	b7 52 10 00 	cmpw	$0x10:m,r7
    6eb6:	c0 1e       	blt	*-0x6e76 <.L118>:s

00006eb8 <.L247>:
    6eb8:	df af c4 04 	loadd	0x4c4:m(sp),(r13)
    6ebc:	0c 55       	movd	(r1,r0),(r12)

00006ebe <.L115>:
    6ebe:	8c e0       	stord	(r9,r8),0x0:s(r12)
    6ec0:	70 5e       	movxw	r7,(r1,r0)
    6ec2:	0c e2       	stord	(r1,r0),0x4:s(r12)
    6ec4:	72 33       	addw	r7,r2
    6ec6:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    6eca:	13 32       	addw	$0x1:s,r3
    6ecc:	3f df 88 04 	storw	r3,0x488:m(sp)
    6ed0:	73 52       	cmpw	$0x7:s,r3
    6ed2:	c0 18 2e 03 	blt	*+0x7200 <.L119>:m
    6ed6:	8c 60       	addd	$0x8:s,(r12)
    6ed8:	e0 18 4e 03 	br	*+0x7226 <.L114>:m

00006edc <.L163>:
    6edc:	10 50       	cmpb	$0x1:s,r0
    6ede:	00 18 e6 07 	beq	*+0x76c4 <.L102>:m
    6ee2:	20 50       	cmpb	$0x2:s,r0
    6ee4:	00 18 a6 07 	beq	*+0x768a <.L103>:m
    6ee8:	f0 55       	movd	(sp),(r1,r0)
    6eea:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    6eee:	b2 58 30 00 	movb	$0x30:m,r2

00006ef2 <.L104>:
    6ef2:	06 55       	movd	(r1,r0),(r7,r6)
    6ef4:	84 55       	movd	(r9,r8),(r5,r4)
    6ef6:	44 00 00 00 	andd	$0x7:l,(r5,r4)
    6efa:	07 00 
    6efc:	24 31       	addb	r2,r4
    6efe:	40 f0       	storb	r4,0x0:s(r1,r0)
    6f00:	d8 4b       	lshd	$-3:s,(r9,r8)
    6f02:	90 60       	addd	$-1:s,(r1,r0)
    6f04:	08 56       	cmpd	$0x0:s,(r9,r8)
    6f06:	16 1f       	bne	*-0x6ef2 <.L104>:s
    6f08:	6f ef bc 04 	stord	(r7,r6),0x4bc:m(sp)
    6f0c:	62 55       	movd	(r7,r6),(r3,r2)
    6f0e:	5f 9f 98 04 	loadw	0x498:m(sp),r5
    6f12:	15 22       	andw	$0x1:s,r5
    6f14:	05 52       	cmpw	$0x0:s,r5
    6f16:	00 18 76 08 	beq	*+0x778c <.L249>:m
    6f1a:	b4 50 30 00 	cmpb	$0x30:m,r4
    6f1e:	00 18 7c 09 	beq	*+0x789a <.L250>:m
    6f22:	0f ef bc 04 	stord	(r1,r0),0x4bc:m(sp)
    6f26:	92 60       	addd	$-1:s,(r3,r2)
    6f28:	b0 58 30 00 	movb	$0x30:m,r0
    6f2c:	02 f0       	storb	r0,0x0:s(r3,r2)
    6f2e:	1f 9f 90 04 	loadw	0x490:m(sp),r1
    6f32:	2f 9f bc 04 	loadw	0x4bc:m(sp),r2
    6f36:	21 3b       	subw	r2,r1
    6f38:	1f df a2 04 	storw	r1,0x4a2:m(sp)
    6f3c:	e0 18 a9 fe 	br	*-0x6de4 <.L106>:m

00006f40 <.L153>:
    6f40:	b4 58 2b 00 	movb	$0x2b:m,r4
    6f44:	e0 18 1f fd 	br	*-0x6c62 <.L224>:m

00006f48 <.L40>:
    6f48:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6f4c:	10 26       	orw	$0x1:s,r0
    6f4e:	0f df 98 04 	storw	r0,0x498:m(sp)
    6f52:	e0 18 11 fd 	br	*-0x6c62 <.L224>:m

00006f56 <.L39>:
    6f56:	04 50       	cmpb	$0x0:s,r4
    6f58:	10 18 0b fd 	bne	*-0x6c62 <.L224>:m
    6f5c:	b4 58 20 00 	movb	$0x20:m,r4
    6f60:	e0 18 03 fd 	br	*-0x6c62 <.L224>:m

00006f64 <.L53>:
    6f64:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6f68:	b0 26 10 00 	orw	$0x10:m,r0
    6f6c:	0f df 98 04 	storw	r0,0x498:m(sp)
    6f70:	e0 18 f3 fc 	br	*-0x6c62 <.L224>:m

00006f74 <.L52>:
    6f74:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    6f78:	b1 26 40 00 	orw	$0x40:m,r1
    6f7c:	1f df 98 04 	storw	r1,0x498:m(sp)
    6f80:	e0 18 e3 fc 	br	*-0x6c62 <.L224>:m

00006f84 <.L51>:
    6f84:	8d 55       	movd	(r9,r8),(r13)
    6f86:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    6f8a:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    6f8e:	b0 22 10 00 	andw	$0x10:m,r0
    6f92:	00 52       	cmpw	$0x0:s,r0
    6f94:	00 18 5a 01 	beq	*+0x70ee <.L73>:m

00006f98 <.L253>:
    6f98:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    6f9c:	82 a0       	loadd	0x0:s(r3,r2),(r9,r8)
    6f9e:	42 60       	addd	$0x4:s,(r3,r2)
    6fa0:	2f ef b4 04 	stord	(r3,r2),0x4b4:m(sp)
    6fa4:	08 56       	cmpd	$0x0:s,(r9,r8)
    6fa6:	60 18 6a 01 	bgt	*+0x7110 <.L77>:m

00006faa <.L254>:
    6faa:	bf bf 8e 04 	loadb	0x48e:m(sp),r11

00006fae <.L237>:
    6fae:	80 5b       	movw	r8,r0
    6fb0:	90 27       	orw	r9,r0
    6fb2:	00 52       	cmpw	$0x0:s,r0
    6fb4:	12 08       	sne	r2
    6fb6:	10 58       	movb	$0x1:s,r0
    6fb8:	e0 18 e1 fd 	br	*-0x6d98 <.L78>:m

00006fbc <.L50>:
    6fbc:	8d 55       	movd	(r9,r8),(r13)
    6fbe:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    6fc2:	02 90       	loadw	0x0:s(r3,r2),r0
    6fc4:	0f ff 5c 04 	storb	r0,0x45c:m(sp)
    6fc8:	0f 83 8e 04 	storb	$0x0:s,0x48e:m(sp)
    6fcc:	22 60       	addd	$0x2:s,(r3,r2)
    6fce:	2f ef b4 04 	stord	(r3,r2),0x4b4:m(sp)
    6fd2:	1f c3 9c 04 	storw	$0x1:s,0x49c:m(sp)
    6fd6:	3f 9f 9c 04 	loadw	0x49c:m(sp),r3
    6fda:	3f df a2 04 	storw	r3,0x4a2:m(sp)
    6fde:	f0 55       	movd	(sp),(r1,r0)
    6fe0:	b0 60 5c 04 	addd	$0x45c:m,(r1,r0)
    6fe4:	0f ef bc 04 	stord	(r1,r0),0x4bc:m(sp)
    6fe8:	0f c3 a8 04 	storw	$0x0:s,0x4a8:m(sp)
    6fec:	e0 18 1f fe 	br	*-0x6e0a <.L112>:m

00006ff0 <.L49>:
    6ff0:	8d 55       	movd	(r9,r8),(r13)
    6ff2:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    6ff6:	71 00 00 00 	movd	$0x9ece:l,(r2,r1)
    6ffa:	ce 9e 
    6ffc:	1f ef c0 04 	stord	(r2,r1),0x4c0:m(sp)
    7000:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    7004:	b0 22 10 00 	andw	$0x10:m,r0
    7008:	00 52       	cmpw	$0x0:s,r0
    700a:	10 18 67 fd 	bne	*-0x6d70 <.L251>:m

0000700e <.L94>:
    700e:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    7012:	b0 22 40 00 	andw	$0x40:m,r0
    7016:	00 52       	cmpw	$0x0:s,r0
    7018:	00 18 9e 07 	beq	*+0x77b6 <.L96>:m
    701c:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    7020:	82 90       	loadw	0x0:s(r3,r2),r8
    7022:	88 5f       	movzw	r8,(r9,r8)
    7024:	22 60       	addd	$0x2:s,(r3,r2)
    7026:	2f ef b4 04 	stord	(r3,r2),0x4b4:m(sp)
    702a:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    702e:	10 22       	andw	$0x1:s,r0
    7030:	00 52       	cmpw	$0x0:s,r0
    7032:	00 18 57 fd 	beq	*-0x6d88 <.L252>:m

00007036 <.L97>:
    7036:	08 56       	cmpd	$0x0:s,(r9,r8)
    7038:	00 18 a8 07 	beq	*+0x77e0 <.L159>:m
    703c:	b0 58 30 00 	movb	$0x30:m,r0
    7040:	0f ff 8c 04 	storb	r0,0x48c:m(sp)
    7044:	5f ff 8d 04 	storb	r5,0x48d:m(sp)
    7048:	4f 9f 98 04 	loadw	0x498:m(sp),r4
    704c:	24 26       	orw	$0x2:s,r4
    704e:	4f df 98 04 	storw	r4,0x498:m(sp)
    7052:	12 58       	movb	$0x1:s,r2
    7054:	20 58       	movb	$0x2:s,r0
    7056:	e0 18 3d fd 	br	*-0x6d92 <.L83>:m

0000705a <.L48>:
    705a:	8d 55       	movd	(r9,r8),(r13)
    705c:	4f 9f 98 04 	loadw	0x498:m(sp),r4
    7060:	b4 26 10 00 	orw	$0x10:m,r4
    7064:	4f df 98 04 	storw	r4,0x498:m(sp)

00007068 <.L62>:
    7068:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    706c:	b0 22 10 00 	andw	$0x10:m,r0
    7070:	00 52       	cmpw	$0x0:s,r0
    7072:	00 18 a6 06 	beq	*+0x7718 <.L92>:m
    7076:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    707a:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    707c:	80 5b       	movw	r8,r0
    707e:	90 27       	orw	r9,r0
    7080:	00 52       	cmpw	$0x0:s,r0
    7082:	12 08       	sne	r2
    7084:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    7088:	43 60       	addd	$0x4:s,(r4,r3)
    708a:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    708e:	10 58       	movb	$0x1:s,r0
    7090:	e0 18 03 fd 	br	*-0x6d92 <.L83>:m

00007094 <.L47>:
    7094:	8d 55       	movd	(r9,r8),(r13)
    7096:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    709a:	b1 26 10 00 	orw	$0x10:m,r1
    709e:	1f df 98 04 	storw	r1,0x498:m(sp)

000070a2 <.L63>:
    70a2:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    70a6:	b0 22 10 00 	andw	$0x10:m,r0
    70aa:	00 52       	cmpw	$0x0:s,r0
    70ac:	00 18 88 06 	beq	*+0x7734 <.L82>:m
    70b0:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    70b4:	82 a0       	loadd	0x0:s(r3,r2),(r9,r8)
    70b6:	80 5b       	movw	r8,r0
    70b8:	90 27       	orw	r9,r0
    70ba:	00 52       	cmpw	$0x0:s,r0
    70bc:	12 08       	sne	r2
    70be:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    70c2:	43 60       	addd	$0x4:s,(r4,r3)
    70c4:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    70c8:	00 58       	movb	$0x0:s,r0
    70ca:	e0 18 c9 fc 	br	*-0x6d92 <.L83>:m

000070ce <.L46>:
    70ce:	8d 55       	movd	(r9,r8),(r13)
    70d0:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    70d4:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    70d8:	b1 26 10 00 	orw	$0x10:m,r1
    70dc:	1f df 98 04 	storw	r1,0x498:m(sp)
    70e0:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    70e4:	b0 22 10 00 	andw	$0x10:m,r0
    70e8:	00 52       	cmpw	$0x0:s,r0
    70ea:	10 18 af fe 	bne	*-0x6f98 <.L253>:m

000070ee <.L73>:
    70ee:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    70f2:	b0 22 40 00 	andw	$0x40:m,r0
    70f6:	00 52       	cmpw	$0x0:s,r0
    70f8:	00 18 a6 06 	beq	*+0x779e <.L75>:m
    70fc:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    7100:	83 90       	loadw	0x0:s(r4,r3),r8
    7102:	23 60       	addd	$0x2:s,(r4,r3)
    7104:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    7108:	88 5e       	movxw	r8,(r9,r8)

0000710a <.L266>:
    710a:	08 56       	cmpd	$0x0:s,(r9,r8)
    710c:	70 18 9f fe 	ble	*-0x6faa <.L254>:m

00007110 <.L77>:
    7110:	00 54       	movd	$0x0:s,(r1,r0)
    7112:	02 55       	movd	(r1,r0),(r3,r2)
    7114:	14 00 82 c0 	subd	(r9,r8),(r3,r2)
    7118:	28 55       	movd	(r3,r2),(r9,r8)
    711a:	bb 58 2d 00 	movb	$0x2d:m,r11
    711e:	bf ff 8e 04 	storb	r11,0x48e:m(sp)
    7122:	e0 18 8d fe 	br	*-0x6fae <.L237>:m

00007126 <.L58>:
    7126:	8d 55       	movd	(r9,r8),(r13)
    7128:	0f 83 8e 04 	storb	$0x0:s,0x48e:m(sp)
    712c:	8f af b4 04 	loadd	0x4b4:m(sp),(r9,r8)
    7130:	48 60       	addd	$0x4:s,(r9,r8)
    7132:	1f af b4 04 	loadd	0x4b4:m(sp),(r2,r1)
    7136:	21 a0       	loadd	0x0:s(r2,r1),(r3,r2)
    7138:	2f ef bc 04 	stord	(r3,r2),0x4bc:m(sp)
    713c:	02 56       	cmpd	$0x0:s,(r3,r2)
    713e:	00 18 34 07 	beq	*+0x7872 <.L255>:m
    7142:	0a 52       	cmpw	$0x0:s,r10
    7144:	60 18 12 07 	bgt	*+0x7856 <.L88>:m
    7148:	a5 5e       	movxw	r10,(r6,r5)
    714a:	04 5a       	movw	$0x0:s,r4
    714c:	2f af bc 04 	loadd	0x4bc:m(sp),(r3,r2)
    7150:	ff c0 25 e9 	bal	(ra),*-0x5a74 <_memchr>:m

00007154 <.LVL162>:
    7154:	00 56       	cmpd	$0x0:s,(r1,r0)
    7156:	00 18 6a 07 	beq	*+0x78c0 <.L89>:m
    715a:	02 5b       	movw	r0,r2
    715c:	3f 9f bc 04 	loadw	0x4bc:m(sp),r3
    7160:	32 3b       	subw	r3,r2
    7162:	2f df a2 04 	storw	r2,0x4a2:m(sp)
    7166:	bf bf 8e 04 	loadb	0x48e:m(sp),r11
    716a:	a2 53       	cmpw	r10,r2
    716c:	d3 10       	bge	*+0x7172 <.L240>:s
    716e:	af df a2 04 	storw	r10,0x4a2:m(sp)

00007172 <.L240>:
    7172:	8f ef b4 04 	stord	(r9,r8),0x4b4:m(sp)
    7176:	0f c3 a8 04 	storw	$0x0:s,0x4a8:m(sp)
    717a:	e0 18 6f fc 	br	*-0x6de8 <.L91>:m

0000717e <.L57>:
    717e:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    7182:	b1 26 10 00 	orw	$0x10:m,r1
    7186:	1f df 98 04 	storw	r1,0x498:m(sp)
    718a:	e0 18 d9 fa 	br	*-0x6c62 <.L224>:m

0000718e <.L56>:
    718e:	8d 55       	movd	(r9,r8),(r13)
    7190:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    7194:	80 a0       	loadd	0x0:s(r1,r0),(r9,r8)
    7196:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    719a:	21 26       	orw	$0x2:s,r1
    719c:	1f df 98 04 	storw	r1,0x498:m(sp)
    71a0:	b0 58 30 00 	movb	$0x30:m,r0
    71a4:	0f ff 8c 04 	storb	r0,0x48c:m(sp)
    71a8:	b0 58 78 00 	movb	$0x78:m,r0
    71ac:	0f ff 8d 04 	storb	r0,0x48d:m(sp)
    71b0:	80 5b       	movw	r8,r0
    71b2:	90 27       	orw	r9,r0
    71b4:	00 52       	cmpw	$0x0:s,r0
    71b6:	12 08       	sne	r2
    71b8:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    71bc:	43 60       	addd	$0x4:s,(r4,r3)
    71be:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    71c2:	00 05 e0 9e 	movd	$0x9ee0:m,(r1,r0)
    71c6:	0f ef c0 04 	stord	(r1,r0),0x4c0:m(sp)
    71ca:	20 58       	movb	$0x2:s,r0
    71cc:	e0 18 c7 fb 	br	*-0x6d92 <.L83>:m

000071d0 <.L54>:
    71d0:	8d 55       	movd	(r9,r8),(r13)
    71d2:	4f ff 8e 04 	storb	r4,0x48e:m(sp)
    71d6:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    71da:	b0 22 10 00 	andw	$0x10:m,r0
    71de:	00 52       	cmpw	$0x0:s,r0
    71e0:	00 18 0e 06 	beq	*+0x77ee <.L79>:m
    71e4:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    71e8:	03 a0       	loadd	0x0:s(r4,r3),(r1,r0)
    71ea:	4f 9f b0 04 	loadw	0x4b0:m(sp),r4
    71ee:	42 5e       	movxw	r4,(r3,r2)
    71f0:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    71f2:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    71f6:	40 60       	addd	$0x4:s,(r1,r0)
    71f8:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    71fc:	e0 18 db f9 	br	*-0x6bd6 <.L226>:m

00007200 <.L119>:
    7200:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    7204:	f0 61       	addd	(sp),(r1,r0)
    7206:	10 01       	push	$0x2,r0
    7208:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    720c:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    7210:	ff c0 75 f8 	bal	(ra),*-0x6a84 <___sprint_r>:m

00007214 <.LVL177>:
    7214:	4f 60       	addd	$0x4:s,(sp)
    7216:	00 52       	cmpw	$0x0:s,r0
    7218:	10 18 0a 02 	bne	*+0x7422 <.L33>:m
    721c:	fc 55       	movd	(sp),(r12)

0000721e <.L241>:
    721e:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    7222:	3f 9f 88 04 	loadw	0x488:m(sp),r3

00007226 <.L114>:
    7226:	0f bf 8e 04 	loadb	0x48e:m(sp),r0
    722a:	00 50       	cmpb	$0x0:s,r0
    722c:	01 11       	beq	*+0x724e <.L120>:s
    722e:	f0 55       	movd	(sp),(r1,r0)
    7230:	b0 60 8e 04 	addd	$0x48e:m,(r1,r0)
    7234:	0c e0       	stord	(r1,r0),0x0:s(r12)
    7236:	10 54       	movd	$0x1:s,(r1,r0)
    7238:	0c e2       	stord	(r1,r0),0x4:s(r12)
    723a:	12 32       	addw	$0x1:s,r2
    723c:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    7240:	13 32       	addw	$0x1:s,r3
    7242:	3f df 88 04 	storw	r3,0x488:m(sp)
    7246:	73 52       	cmpw	$0x7:s,r3
    7248:	c0 18 d4 03 	blt	*+0x761c <.L121>:m
    724c:	8c 60       	addd	$0x8:s,(r12)

0000724e <.L120>:
    724e:	4f 9f b8 04 	loadw	0x4b8:m(sp),r4
    7252:	04 52       	cmpw	$0x0:s,r4
    7254:	01 11       	beq	*+0x7276 <.L122>:s
    7256:	f0 55       	movd	(sp),(r1,r0)
    7258:	b0 60 8c 04 	addd	$0x48c:m,(r1,r0)
    725c:	0c e0       	stord	(r1,r0),0x0:s(r12)
    725e:	20 54       	movd	$0x2:s,(r1,r0)
    7260:	0c e2       	stord	(r1,r0),0x4:s(r12)
    7262:	22 32       	addw	$0x2:s,r2
    7264:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    7268:	13 32       	addw	$0x1:s,r3
    726a:	3f df 88 04 	storw	r3,0x488:m(sp)
    726e:	73 52       	cmpw	$0x7:s,r3
    7270:	c0 18 d6 03 	blt	*+0x7646 <.L123>:m
    7274:	8c 60       	addd	$0x8:s,(r12)

00007276 <.L122>:
    7276:	1f 9f b2 04 	loadw	0x4b2:m(sp),r1
    727a:	b1 52 80 00 	cmpw	$0x80:m,r1
    727e:	00 18 c4 01 	beq	*+0x7442 <.L256>:m

00007282 <.L124>:
    7282:	7f 9f a8 04 	loadw	0x4a8:m(sp),r7
    7286:	4f 9f a2 04 	loadw	0x4a2:m(sp),r4
    728a:	47 3b       	subw	r4,r7
    728c:	07 52       	cmpw	$0x0:s,r7
    728e:	d7 14       	bge	*+0x731c <.L130>:s
    7290:	80 05 2c a3 	movd	$0xa32c:m,(r9,r8)
    7294:	b7 52 10 00 	cmpw	$0x10:m,r7
    7298:	d5 13       	bge	*+0x7302 <.L131>:s
    729a:	ba 54 10 00 	movd	$0x10:m,(r11,r10)
    729e:	df ef a8 04 	stord	(r13),0x4a8:m(sp)
    72a2:	c0 55       	movd	(r12),(r1,r0)
    72a4:	cf af ac 04 	loadd	0x4ac:m(sp),(r12)
    72a8:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    72ac:	e7 10       	br	*+0x72ba <.L134>:s

000072ae <.L258>:
    72ae:	80 60       	addd	$0x8:s,(r1,r0)
    72b0:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    72b4:	b7 52 10 00 	cmpw	$0x10:m,r7
    72b8:	d2 12       	bge	*+0x72fc <.L257>:s

000072ba <.L134>:
    72ba:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    72bc:	a0 e2       	stord	(r11,r10),0x4:s(r1,r0)
    72be:	b2 32 10 00 	addw	$0x10:m,r2
    72c2:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    72c6:	13 32       	addw	$0x1:s,r3
    72c8:	3f df 88 04 	storw	r3,0x488:m(sp)
    72cc:	73 52       	cmpw	$0x7:s,r3
    72ce:	d0 1f       	bge	*-0x72ae <.L258>:s
    72d0:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    72d4:	f0 61       	addd	(sp),(r1,r0)
    72d6:	10 01       	push	$0x2,r0
    72d8:	d4 55       	movd	(r13),(r5,r4)
    72da:	c2 55       	movd	(r12),(r3,r2)
    72dc:	ff c0 a9 f7 	bal	(ra),*-0x6a84 <___sprint_r>:m

000072e0 <.LVL192>:
    72e0:	4f 60       	addd	$0x4:s,(sp)
    72e2:	00 52       	cmpw	$0x0:s,r0
    72e4:	10 18 3e 01 	bne	*+0x7422 <.L33>:m
    72e8:	f0 55       	movd	(sp),(r1,r0)
    72ea:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    72ee:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    72f2:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    72f6:	b7 52 10 00 	cmpw	$0x10:m,r7
    72fa:	c0 1e       	blt	*-0x72ba <.L134>:s

000072fc <.L257>:
    72fc:	df af a8 04 	loadd	0x4a8:m(sp),(r13)
    7300:	0c 55       	movd	(r1,r0),(r12)

00007302 <.L131>:
    7302:	8c e0       	stord	(r9,r8),0x0:s(r12)
    7304:	70 5e       	movxw	r7,(r1,r0)
    7306:	0c e2       	stord	(r1,r0),0x4:s(r12)
    7308:	72 33       	addw	r7,r2
    730a:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    730e:	13 32       	addw	$0x1:s,r3
    7310:	3f df 88 04 	storw	r3,0x488:m(sp)
    7314:	73 52       	cmpw	$0x7:s,r3
    7316:	c0 18 dc 02 	blt	*+0x75f2 <.L135>:m
    731a:	8c 60       	addd	$0x8:s,(r12)

0000731c <.L130>:
    731c:	0f af bc 04 	loadd	0x4bc:m(sp),(r1,r0)
    7320:	0c e0       	stord	(r1,r0),0x0:s(r12)
    7322:	4f 9f a2 04 	loadw	0x4a2:m(sp),r4
    7326:	40 5e       	movxw	r4,(r1,r0)
    7328:	0c e2       	stord	(r1,r0),0x4:s(r12)
    732a:	42 33       	addw	r4,r2
    732c:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    7330:	13 32       	addw	$0x1:s,r3
    7332:	3f df 88 04 	storw	r3,0x488:m(sp)
    7336:	73 52       	cmpw	$0x7:s,r3
    7338:	c0 18 a8 01 	blt	*+0x74e0 <.L136>:m
    733c:	8c 60       	addd	$0x8:s,(r12)

0000733e <.L137>:
    733e:	0f 9f 98 04 	loadw	0x498:m(sp),r0
    7342:	40 22       	andw	$0x4:s,r0
    7344:	00 52       	cmpw	$0x0:s,r0
    7346:	0e 14       	beq	*+0x73e2 <.L139>:s
    7348:	7f 9f a0 04 	loadw	0x4a0:m(sp),r7
    734c:	1f 9f 9c 04 	loadw	0x49c:m(sp),r1
    7350:	17 3b       	subw	r1,r7
    7352:	07 52       	cmpw	$0x0:s,r7
    7354:	d7 14       	bge	*+0x73e2 <.L139>:s
    7356:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    735a:	80 05 1c a3 	movd	$0xa31c:m,(r9,r8)
    735e:	b7 52 10 00 	cmpw	$0x10:m,r7
    7362:	d4 13       	bge	*+0x73ca <.L141>:s
    7364:	ba 54 10 00 	movd	$0x10:m,(r11,r10)
    7368:	df ef 98 04 	stord	(r13),0x498:m(sp)
    736c:	c0 55       	movd	(r12),(r1,r0)
    736e:	cf af ac 04 	loadd	0x4ac:m(sp),(r12)
    7372:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    7376:	e7 10       	br	*+0x7384 <.L144>:s

00007378 <.L260>:
    7378:	80 60       	addd	$0x8:s,(r1,r0)
    737a:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    737e:	b7 52 10 00 	cmpw	$0x10:m,r7
    7382:	d1 12       	bge	*+0x73c4 <.L259>:s

00007384 <.L144>:
    7384:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    7386:	a0 e2       	stord	(r11,r10),0x4:s(r1,r0)
    7388:	b2 32 10 00 	addw	$0x10:m,r2
    738c:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    7390:	13 32       	addw	$0x1:s,r3
    7392:	3f df 88 04 	storw	r3,0x488:m(sp)
    7396:	73 52       	cmpw	$0x7:s,r3
    7398:	d0 1f       	bge	*-0x7378 <.L260>:s
    739a:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    739e:	f2 61       	addd	(sp),(r3,r2)
    73a0:	12 01       	push	$0x2,r2
    73a2:	d4 55       	movd	(r13),(r5,r4)
    73a4:	c2 55       	movd	(r12),(r3,r2)
    73a6:	ff c0 df f6 	bal	(ra),*-0x6a84 <___sprint_r>:m

000073aa <.LVL207>:
    73aa:	4f 60       	addd	$0x4:s,(sp)
    73ac:	00 52       	cmpw	$0x0:s,r0
    73ae:	1a 13       	bne	*+0x7422 <.L33>:s
    73b0:	f0 55       	movd	(sp),(r1,r0)
    73b2:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    73b6:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    73ba:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    73be:	b7 52 10 00 	cmpw	$0x10:m,r7
    73c2:	c1 1e       	blt	*-0x7384 <.L144>:s

000073c4 <.L259>:
    73c4:	df af 98 04 	loadd	0x498:m(sp),(r13)
    73c8:	0c 55       	movd	(r1,r0),(r12)

000073ca <.L141>:
    73ca:	8c e0       	stord	(r9,r8),0x0:s(r12)
    73cc:	70 5e       	movxw	r7,(r1,r0)
    73ce:	0c e2       	stord	(r1,r0),0x4:s(r12)
    73d0:	72 33       	addw	r7,r2
    73d2:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    73d6:	13 32       	addw	$0x1:s,r3
    73d8:	3f df 88 04 	storw	r3,0x488:m(sp)
    73dc:	73 52       	cmpw	$0x7:s,r3
    73de:	c0 18 7c 03 	blt	*+0x775a <.L261>:m

000073e2 <.L139>:
    73e2:	0f 9f 9c 04 	loadw	0x49c:m(sp),r0
    73e6:	4f 9f a0 04 	loadw	0x4a0:m(sp),r4
    73ea:	40 53       	cmpw	r4,r0
    73ec:	72 10       	ble	*+0x73f0 <.L145>:s
    73ee:	40 5b       	movw	r4,r0

000073f0 <.L145>:
    73f0:	1f 9f b0 04 	loadw	0x4b0:m(sp),r1
    73f4:	01 33       	addw	r0,r1
    73f6:	1f df b0 04 	storw	r1,0x4b0:m(sp)
    73fa:	02 52       	cmpw	$0x0:s,r2
    73fc:	16 10       	bne	*+0x7408 <.L146>:s

000073fe <.L147>:
    73fe:	0f c3 88 04 	storw	$0x0:s,0x488:m(sp)
    7402:	fc 55       	movd	(sp),(r12)
    7404:	e0 18 d3 f7 	br	*-0x6bd6 <.L226>:m

00007408 <.L146>:
    7408:	b2 54 84 04 	movd	$0x484:m,(r3,r2)
    740c:	f2 61       	addd	(sp),(r3,r2)
    740e:	12 01       	push	$0x2,r2
    7410:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    7414:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    7418:	ff c0 6d f6 	bal	(ra),*-0x6a84 <___sprint_r>:m

0000741c <.LVL217>:
    741c:	4f 60       	addd	$0x4:s,(sp)
    741e:	00 52       	cmpw	$0x0:s,r0
    7420:	0f 1e       	beq	*-0x73fe <.L147>:s

00007422 <.L33>:
    7422:	3f af a4 04 	loadd	0x4a4:m(sp),(r4,r3)
    7426:	03 94       	loadw	0x8:s(r4,r3),r0
    7428:	b0 22 40 00 	andw	$0x40:m,r0
    742c:	00 52       	cmpw	$0x0:s,r0
    742e:	04 10       	beq	*+0x7436 <.L178>:s

00007430 <.L150>:
    7430:	90 5a       	movw	$-1:s,r0
    7432:	0f df b0 04 	storw	r0,0x4b0:m(sp)

00007436 <.L178>:
    7436:	0f 9f b0 04 	loadw	0x4b0:m(sp),r0
    743a:	bf 60 cc 04 	addd	$0x4cc:m,(sp)
    743e:	67 02       	pop	$0x7,r7
    7440:	9d 03       	popret	$0x2,r13,RA

00007442 <.L256>:
    7442:	7f 9f a0 04 	loadw	0x4a0:m(sp),r7
    7446:	4f 9f 9c 04 	loadw	0x49c:m(sp),r4
    744a:	47 3b       	subw	r4,r7
    744c:	07 52       	cmpw	$0x0:s,r7
    744e:	d0 18 35 fe 	bge	*-0x7282 <.L124>:m
    7452:	80 05 2c a3 	movd	$0xa32c:m,(r9,r8)
    7456:	b7 52 10 00 	cmpw	$0x10:m,r7
    745a:	d4 13       	bge	*+0x74c2 <.L125>:s
    745c:	ba 54 10 00 	movd	$0x10:m,(r11,r10)
    7460:	df ef b8 04 	stord	(r13),0x4b8:m(sp)
    7464:	c0 55       	movd	(r12),(r1,r0)
    7466:	cf af ac 04 	loadd	0x4ac:m(sp),(r12)
    746a:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    746e:	e7 10       	br	*+0x747c <.L128>:s

00007470 <.L263>:
    7470:	80 60       	addd	$0x8:s,(r1,r0)
    7472:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    7476:	b7 52 10 00 	cmpw	$0x10:m,r7
    747a:	d1 12       	bge	*+0x74bc <.L262>:s

0000747c <.L128>:
    747c:	80 e0       	stord	(r9,r8),0x0:s(r1,r0)
    747e:	a0 e2       	stord	(r11,r10),0x4:s(r1,r0)
    7480:	b2 32 10 00 	addw	$0x10:m,r2
    7484:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    7488:	13 32       	addw	$0x1:s,r3
    748a:	3f df 88 04 	storw	r3,0x488:m(sp)
    748e:	73 52       	cmpw	$0x7:s,r3
    7490:	d0 1f       	bge	*-0x7470 <.L263>:s
    7492:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    7496:	f0 61       	addd	(sp),(r1,r0)
    7498:	10 01       	push	$0x2,r0
    749a:	d4 55       	movd	(r13),(r5,r4)
    749c:	c2 55       	movd	(r12),(r3,r2)
    749e:	ff c0 e7 f5 	bal	(ra),*-0x6a84 <___sprint_r>:m

000074a2 <.LVL229>:
    74a2:	4f 60       	addd	$0x4:s,(sp)
    74a4:	00 52       	cmpw	$0x0:s,r0
    74a6:	1e 1b       	bne	*-0x7422 <.L33>:s
    74a8:	f0 55       	movd	(sp),(r1,r0)
    74aa:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    74ae:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    74b2:	b7 32 f0 ff 	addw	$0xfff0:m,r7
    74b6:	b7 52 10 00 	cmpw	$0x10:m,r7
    74ba:	c1 1e       	blt	*-0x747c <.L128>:s

000074bc <.L262>:
    74bc:	df af b8 04 	loadd	0x4b8:m(sp),(r13)
    74c0:	0c 55       	movd	(r1,r0),(r12)

000074c2 <.L125>:
    74c2:	8c e0       	stord	(r9,r8),0x0:s(r12)
    74c4:	70 5e       	movxw	r7,(r1,r0)
    74c6:	0c e2       	stord	(r1,r0),0x4:s(r12)
    74c8:	72 33       	addw	r7,r2
    74ca:	2f df 8a 04 	storw	r2,0x48a:m(sp)
    74ce:	13 32       	addw	$0x1:s,r3
    74d0:	3f df 88 04 	storw	r3,0x488:m(sp)
    74d4:	73 52       	cmpw	$0x7:s,r3
    74d6:	c0 18 56 03 	blt	*+0x782c <.L129>:m
    74da:	8c 60       	addd	$0x8:s,(r12)
    74dc:	e0 18 a7 fd 	br	*-0x7282 <.L124>:m

000074e0 <.L136>:
    74e0:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    74e4:	f0 61       	addd	(sp),(r1,r0)
    74e6:	10 01       	push	$0x2,r0
    74e8:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    74ec:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    74f0:	ff c0 95 f5 	bal	(ra),*-0x6a84 <___sprint_r>:m

000074f4 <.LVL236>:
    74f4:	4f 60       	addd	$0x4:s,(sp)
    74f6:	00 52       	cmpw	$0x0:s,r0
    74f8:	15 19       	bne	*-0x7422 <.L33>:s
    74fa:	fc 55       	movd	(sp),(r12)
    74fc:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    7500:	e0 18 3f fe 	br	*-0x733e <.L137>:m

00007504 <.L160>:
    7504:	0f c3 a2 04 	storw	$0x0:s,0x4a2:m(sp)
    7508:	f1 55       	movd	(sp),(r2,r1)
    750a:	b1 60 84 04 	addd	$0x484:m,(r2,r1)
    750e:	1f ef bc 04 	stord	(r2,r1),0x4bc:m(sp)
    7512:	e0 18 d3 f8 	br	*-0x6de4 <.L106>:m

00007516 <.L20>:
    7516:	4f af a4 04 	loadd	0x4a4:m(sp),(r5,r4)
    751a:	2f af ac 04 	loadd	0x4ac:m(sp),(r3,r2)
    751e:	ff c0 13 bd 	bal	(ra),*-0x3230 <___swsetup_r>:m

00007522 <.LVL240>:
    7522:	00 52       	cmpw	$0x0:s,r0
    7524:	16 18       	bne	*-0x7430 <.L150>:s
    7526:	3f af a4 04 	loadd	0x4a4:m(sp),(r4,r3)
    752a:	23 94       	loadw	0x8:s(r4,r3),r2
    752c:	20 5b       	movw	r2,r0
    752e:	b0 22 1a 00 	andw	$0x1a:m,r0
    7532:	a0 52       	cmpw	$0xa:s,r0
    7534:	10 18 6f f6 	bne	*-0x6ba2 <.L24>:m

00007538 <.L244>:
    7538:	df af a4 04 	loadd	0x4a4:m(sp),(r13)
    753c:	0d 95       	loadw	0xa:s(r13),r0
    753e:	00 52       	cmpw	$0x0:s,r0
    7540:	60 18 63 f6 	bgt	*-0x6ba2 <.L24>:m

00007544 <.LBB22>:
    7544:	b2 22 fd ff 	andw	$0xfffd:m,r2
    7548:	2f df 08 04 	storw	r2,0x408:m(sp)
    754c:	1d 9f 58 00 	loadw	0x58:m(r13),r1
    7550:	1f df 58 04 	storw	r1,0x458:m(sp)
    7554:	0f df 0a 04 	storw	r0,0x40a:m(sp)
    7558:	0d ac       	loadd	0x18:s(r13),(r1,r0)
    755a:	0f ef 18 04 	stord	(r1,r0),0x418:m(sp)
    755e:	0d af 20 00 	loadd	0x20:m(r13),(r1,r0)
    7562:	0f ef 20 04 	stord	(r1,r0),0x420:m(sp)
    7566:	ff ef 00 04 	stord	(sp),0x400:m(sp)
    756a:	ff ef 0c 04 	stord	(sp),0x40c:m(sp)
    756e:	b0 5a 00 04 	movw	$0x400:m,r0
    7572:	0f df 06 04 	storw	r0,0x406:m(sp)
    7576:	0f df 10 04 	storw	r0,0x410:m(sp)
    757a:	0f c3 14 04 	storw	$0x0:s,0x414:m(sp)
    757e:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    7582:	10 01       	push	$0x2,r0
    7584:	18 01       	push	$0x2,r8
    7586:	f4 55       	movd	(sp),(r5,r4)
    7588:	b4 60 08 04 	addd	$0x408:m,(r5,r4)
    758c:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    7590:	ff c0 9d f5 	bal	(ra),*-0x6b2c <__vfiprintf_r>:m

00007594 <.LVL244>:
    7594:	0f df b8 04 	storw	r0,0x4b8:m(sp)
    7598:	8f 60       	addd	$0x8:s,(sp)
    759a:	00 52       	cmpw	$0x0:s,r0
    759c:	6b 10       	bgt	*+0x75b2 <.L25>:s
    759e:	f4 55       	movd	(sp),(r5,r4)
    75a0:	b4 60 00 04 	addd	$0x400:m,(r5,r4)
    75a4:	2f af ac 04 	loadd	0x4ac:m(sp),(r3,r2)
    75a8:	ff c0 b5 d5 	bal	(ra),*-0x4b5c <__fflush_r>:m

000075ac <.LVL247>:
    75ac:	00 52       	cmpw	$0x0:s,r0
    75ae:	10 18 3a 03 	bne	*+0x78e8 <.L264>:m

000075b2 <.L25>:
    75b2:	0f 9f 08 04 	loadw	0x408:m(sp),r0
    75b6:	b0 22 40 00 	andw	$0x40:m,r0
    75ba:	00 52       	cmpw	$0x0:s,r0
    75bc:	00 18 7b fe 	beq	*-0x7436 <.L178>:m
    75c0:	2f af a4 04 	loadd	0x4a4:m(sp),(r3,r2)
    75c4:	02 94       	loadw	0x8:s(r3,r2),r0
    75c6:	b0 26 40 00 	orw	$0x40:m,r0
    75ca:	02 d4       	storw	r0,0x8:s(r3,r2)
    75cc:	e0 18 6b fe 	br	*-0x7436 <.L178>:m

000075d0 <.L31>:
    75d0:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    75d4:	f3 61       	addd	(sp),(r4,r3)
    75d6:	13 01       	push	$0x2,r3
    75d8:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    75dc:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    75e0:	ff c0 a5 f4 	bal	(ra),*-0x6a84 <___sprint_r>:m

000075e4 <.LVL251>:
    75e4:	4f 60       	addd	$0x4:s,(sp)
    75e6:	00 52       	cmpw	$0x0:s,r0
    75e8:	10 18 3b fe 	bne	*-0x7422 <.L33>:m
    75ec:	fc 55       	movd	(sp),(r12)
    75ee:	e0 18 43 f6 	br	*-0x6c30 <.L32>:m

000075f2 <.L135>:
    75f2:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    75f6:	f1 61       	addd	(sp),(r2,r1)
    75f8:	11 01       	push	$0x2,r1
    75fa:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    75fe:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    7602:	ff c0 83 f4 	bal	(ra),*-0x6a84 <___sprint_r>:m

00007606 <.LVL255>:
    7606:	4f 60       	addd	$0x4:s,(sp)
    7608:	00 52       	cmpw	$0x0:s,r0
    760a:	10 18 19 fe 	bne	*-0x7422 <.L33>:m
    760e:	fc 55       	movd	(sp),(r12)
    7610:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    7614:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    7618:	e0 18 05 fd 	br	*-0x731c <.L130>:m

0000761c <.L121>:
    761c:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    7620:	f1 61       	addd	(sp),(r2,r1)
    7622:	11 01       	push	$0x2,r1
    7624:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    7628:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    762c:	ff c0 59 f4 	bal	(ra),*-0x6a84 <___sprint_r>:m

00007630 <.LVL258>:
    7630:	4f 60       	addd	$0x4:s,(sp)
    7632:	00 52       	cmpw	$0x0:s,r0
    7634:	10 18 ef fd 	bne	*-0x7422 <.L33>:m
    7638:	fc 55       	movd	(sp),(r12)
    763a:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    763e:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    7642:	e0 18 0d fc 	br	*-0x724e <.L120>:m

00007646 <.L123>:
    7646:	b0 54 84 04 	movd	$0x484:m,(r1,r0)
    764a:	f0 61       	addd	(sp),(r1,r0)
    764c:	10 01       	push	$0x2,r0
    764e:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    7652:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    7656:	ff c0 2f f4 	bal	(ra),*-0x6a84 <___sprint_r>:m

0000765a <.LVL261>:
    765a:	4f 60       	addd	$0x4:s,(sp)
    765c:	00 52       	cmpw	$0x0:s,r0
    765e:	10 18 c5 fd 	bne	*-0x7422 <.L33>:m
    7662:	fc 55       	movd	(sp),(r12)
    7664:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    7668:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    766c:	e0 18 0b fc 	br	*-0x7276 <.L122>:m

00007670 <.L243>:
    7670:	ff c0 15 d6 	bal	(ra),*-0x4c84 <___sinit>:m

00007674 <.LVL264>:
    7674:	e0 18 e7 f4 	br	*-0x6b5a <.L18>:m

00007678 <.L161>:
    7678:	0f df a2 04 	storw	r0,0x4a2:m(sp)
    767c:	f2 55       	movd	(sp),(r3,r2)
    767e:	b2 60 84 04 	addd	$0x484:m,(r3,r2)
    7682:	2f ef bc 04 	stord	(r3,r2),0x4bc:m(sp)
    7686:	e0 18 5f f7 	br	*-0x6de4 <.L106>:m

0000768a <.L103>:
    768a:	f0 55       	movd	(sp),(r1,r0)
    768c:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    7690:	4f af c0 04 	loadd	0x4c0:m(sp),(r5,r4)

00007694 <.L110>:
    7694:	02 55       	movd	(r1,r0),(r3,r2)
    7696:	80 55       	movd	(r9,r8),(r1,r0)
    7698:	40 00 00 00 	andd	$0xf:l,(r1,r0)
    769c:	0f 00 
    769e:	40 61       	addd	(r5,r4),(r1,r0)
    76a0:	00 b0       	loadb	0x0:s(r1,r0),r0
    76a2:	02 f0       	storb	r0,0x0:s(r3,r2)
    76a4:	c8 4b       	lshd	$-4:s,(r9,r8)
    76a6:	20 55       	movd	(r3,r2),(r1,r0)
    76a8:	90 60       	addd	$-1:s,(r1,r0)
    76aa:	08 56       	cmpd	$0x0:s,(r9,r8)
    76ac:	14 1f       	bne	*-0x7694 <.L110>:s
    76ae:	2f ef bc 04 	stord	(r3,r2),0x4bc:m(sp)
    76b2:	0f 9f bc 04 	loadw	0x4bc:m(sp),r0
    76b6:	2f 9f 90 04 	loadw	0x490:m(sp),r2
    76ba:	02 3b       	subw	r0,r2
    76bc:	2f df a2 04 	storw	r2,0x4a2:m(sp)
    76c0:	e0 18 25 f7 	br	*-0x6de4 <.L106>:m

000076c4 <.L102>:
    76c4:	b8 56 09 00 	cmpd	$0x9:m,(r9,r8)
    76c8:	bb 15       	bhs	*+0x777e <.L265>:s
    76ca:	f0 55       	movd	(sp),(r1,r0)
    76cc:	b0 60 83 04 	addd	$0x483:m,(r1,r0)
    76d0:	b7 58 30 00 	movb	$0x30:m,r7
    76d4:	df ef 9c 04 	stord	(r13),0x49c:m(sp)
    76d8:	cd 55       	movd	(r12),(r13)

000076da <.L109>:
    76da:	0c 55       	movd	(r1,r0),(r12)
    76dc:	a4 54       	movd	$0xa:s,(r5,r4)
    76de:	82 55       	movd	(r9,r8),(r3,r2)
    76e0:	00 c0 50 21 	bal	(ra),*+0x9830 <___umodsi3>:m
    76e4:	70 31       	addb	r7,r0
    76e6:	0c f0       	storb	r0,0x0:s(r12)
    76e8:	a4 54       	movd	$0xa:s,(r5,r4)
    76ea:	82 55       	movd	(r9,r8),(r3,r2)
    76ec:	00 c0 38 21 	bal	(ra),*+0x9824 <___udivsi3>:m
    76f0:	08 5b       	movw	r0,r8
    76f2:	19 5b       	movw	r1,r9
    76f4:	c0 55       	movd	(r12),(r1,r0)
    76f6:	90 60       	addd	$-1:s,(r1,r0)
    76f8:	08 56       	cmpd	$0x0:s,(r9,r8)
    76fa:	10 1f       	bne	*-0x76da <.L109>:s
    76fc:	cf ef bc 04 	stord	(r12),0x4bc:m(sp)
    7700:	dc 55       	movd	(r13),(r12)
    7702:	df af 9c 04 	loadd	0x49c:m(sp),(r13)
    7706:	0f 9f bc 04 	loadw	0x4bc:m(sp),r0
    770a:	1f 9f 90 04 	loadw	0x490:m(sp),r1
    770e:	01 3b       	subw	r0,r1
    7710:	1f df a2 04 	storw	r1,0x4a2:m(sp)
    7714:	e0 18 d1 f6 	br	*-0x6de4 <.L106>:m

00007718 <.L92>:
    7718:	1f af b4 04 	loadd	0x4b4:m(sp),(r2,r1)
    771c:	01 90       	loadw	0x0:s(r2,r1),r0
    771e:	08 5f       	movzw	r0,(r9,r8)
    7720:	00 52       	cmpw	$0x0:s,r0
    7722:	12 08       	sne	r2
    7724:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    7728:	23 60       	addd	$0x2:s,(r4,r3)
    772a:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    772e:	10 58       	movb	$0x1:s,r0
    7730:	e0 18 63 f6 	br	*-0x6d92 <.L83>:m

00007734 <.L82>:
    7734:	1f 9f 98 04 	loadw	0x498:m(sp),r1
    7738:	b1 22 40 00 	andw	$0x40:m,r1
    773c:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    7740:	01 52       	cmpw	$0x0:s,r1
    7742:	03 14       	beq	*+0x77c8 <.L84>:s
    7744:	12 90       	loadw	0x0:s(r3,r2),r1
    7746:	18 5f       	movzw	r1,(r9,r8)
    7748:	01 52       	cmpw	$0x0:s,r1
    774a:	12 08       	sne	r2
    774c:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    7750:	23 60       	addd	$0x2:s,(r4,r3)
    7752:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    7756:	e0 18 3d f6 	br	*-0x6d92 <.L83>:m

0000775a <.L261>:
    775a:	b3 54 84 04 	movd	$0x484:m,(r4,r3)
    775e:	f3 61       	addd	(sp),(r4,r3)
    7760:	13 01       	push	$0x2,r3
    7762:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    7766:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    776a:	ff c0 1b f3 	bal	(ra),*-0x6a84 <___sprint_r>:m

0000776e <.LVL293>:
    776e:	4f 60       	addd	$0x4:s,(sp)
    7770:	00 52       	cmpw	$0x0:s,r0
    7772:	10 18 b1 fc 	bne	*-0x7422 <.L33>:m
    7776:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    777a:	e0 18 69 fc 	br	*-0x73e2 <.L139>:m

0000777e <.L265>:
    777e:	b0 58 30 00 	movb	$0x30:m,r0
    7782:	08 31       	addb	r0,r8
    7784:	8f ff 83 04 	storb	r8,0x483:m(sp)
    7788:	e0 18 4b f6 	br	*-0x6dd2 <.L238>:m

0000778c <.L249>:
    778c:	2f 9f 90 04 	loadw	0x490:m(sp),r2
    7790:	3f 9f bc 04 	loadw	0x4bc:m(sp),r3
    7794:	32 3b       	subw	r3,r2
    7796:	2f df a2 04 	storw	r2,0x4a2:m(sp)
    779a:	e0 18 4b f6 	br	*-0x6de4 <.L106>:m

0000779e <.L75>:
    779e:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    77a2:	80 90       	loadw	0x0:s(r1,r0),r8
    77a4:	20 60       	addd	$0x2:s,(r1,r0)
    77a6:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    77aa:	88 5e       	movxw	r8,(r9,r8)
    77ac:	e0 18 5f f9 	br	*-0x710a <.L266>:m

000077b0 <.L234>:
    77b0:	8d 55       	movd	(r9,r8),(r13)
    77b2:	e0 18 f1 f8 	br	*-0x70a2 <.L63>:m

000077b6 <.L96>:
    77b6:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    77ba:	83 90       	loadw	0x0:s(r4,r3),r8
    77bc:	88 5f       	movzw	r8,(r9,r8)
    77be:	23 60       	addd	$0x2:s,(r4,r3)
    77c0:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    77c4:	e0 18 b9 f5 	br	*-0x6d7c <.L95>:m

000077c8 <.L84>:
    77c8:	02 90       	loadw	0x0:s(r3,r2),r0
    77ca:	08 5f       	movzw	r0,(r9,r8)
    77cc:	00 52       	cmpw	$0x0:s,r0
    77ce:	12 08       	sne	r2
    77d0:	3f af b4 04 	loadd	0x4b4:m(sp),(r4,r3)
    77d4:	23 60       	addd	$0x2:s,(r4,r3)
    77d6:	3f ef b4 04 	stord	(r4,r3),0x4b4:m(sp)
    77da:	10 59       	movb	r1,r0
    77dc:	e0 18 b7 f5 	br	*-0x6d92 <.L83>:m

000077e0 <.L159>:
    77e0:	02 58       	movb	$0x0:s,r2
    77e2:	20 58       	movb	$0x2:s,r0
    77e4:	e0 18 af f5 	br	*-0x6d92 <.L83>:m

000077e8 <.L235>:
    77e8:	8d 55       	movd	(r9,r8),(r13)
    77ea:	e0 18 7f f8 	br	*-0x7068 <.L62>:m

000077ee <.L79>:
    77ee:	2f af b4 04 	loadd	0x4b4:m(sp),(r3,r2)
    77f2:	02 a0       	loadd	0x0:s(r3,r2),(r1,r0)
    77f4:	3f 9f b0 04 	loadw	0x4b0:m(sp),r3
    77f8:	30 d0       	storw	r3,0x0:s(r1,r0)
    77fa:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    77fe:	40 60       	addd	$0x4:s,(r1,r0)
    7800:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    7804:	e0 18 d3 f3 	br	*-0x6bd6 <.L226>:m

00007808 <.L34>:
    7808:	0f 9f 8a 04 	loadw	0x48a:m(sp),r0
    780c:	00 52       	cmpw	$0x0:s,r0
    780e:	00 18 15 fc 	beq	*-0x7422 <.L33>:m
    7812:	f0 55       	movd	(sp),(r1,r0)
    7814:	b0 60 84 04 	addd	$0x484:m,(r1,r0)
    7818:	10 01       	push	$0x2,r0
    781a:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    781e:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    7822:	ff c0 63 f2 	bal	(ra),*-0x6a84 <___sprint_r>:m

00007826 <.LVL314>:
    7826:	4f 60       	addd	$0x4:s,(sp)
    7828:	e0 18 fb fb 	br	*-0x7422 <.L33>:m

0000782c <.L129>:
    782c:	b1 54 84 04 	movd	$0x484:m,(r2,r1)
    7830:	f1 61       	addd	(sp),(r2,r1)
    7832:	11 01       	push	$0x2,r1
    7834:	4f af a8 04 	loadd	0x4a8:m(sp),(r5,r4)
    7838:	2f af b0 04 	loadd	0x4b0:m(sp),(r3,r2)
    783c:	ff c0 49 f2 	bal	(ra),*-0x6a84 <___sprint_r>:m

00007840 <.LVL317>:
    7840:	4f 60       	addd	$0x4:s,(sp)
    7842:	00 52       	cmpw	$0x0:s,r0
    7844:	10 18 df fb 	bne	*-0x7422 <.L33>:m
    7848:	fc 55       	movd	(sp),(r12)
    784a:	2f 9f 8a 04 	loadw	0x48a:m(sp),r2
    784e:	3f 9f 88 04 	loadw	0x488:m(sp),r3
    7852:	e0 18 31 fa 	br	*-0x7282 <.L124>:m

00007856 <.L88>:
    7856:	2f af bc 04 	loadd	0x4bc:m(sp),(r3,r2)
    785a:	ff c0 b3 f1 	bal	(ra),*-0x6a0c <_strlen>:m

0000785e <.LVL321>:
    785e:	0f df a2 04 	storw	r0,0x4a2:m(sp)
    7862:	bf bf 8e 04 	loadb	0x48e:m(sp),r11
    7866:	8f ef b4 04 	stord	(r9,r8),0x4b4:m(sp)
    786a:	0f c3 a8 04 	storw	$0x0:s,0x4a8:m(sp)
    786e:	e0 18 7b f5 	br	*-0x6de8 <.L91>:m

00007872 <.L255>:
    7872:	af df a2 04 	storw	r10,0x4a2:m(sp)
    7876:	6a 52       	cmpw	$0x6:s,r10
    7878:	ba 11       	bhs	*+0x78ac <.L86>:s
    787a:	6f c3 a2 04 	storw	$0x6:s,0x4a2:m(sp)
    787e:	3f 9f a2 04 	loadw	0x4a2:m(sp),r3
    7882:	3f df 9c 04 	storw	r3,0x49c:m(sp)

00007886 <.L87>:
    7886:	8f ef b4 04 	stord	(r9,r8),0x4b4:m(sp)
    788a:	00 05 f2 9e 	movd	$0x9ef2:m,(r1,r0)
    788e:	0f ef bc 04 	stord	(r1,r0),0x4bc:m(sp)
    7892:	0f c3 a8 04 	storw	$0x0:s,0x4a8:m(sp)
    7896:	e0 18 75 f5 	br	*-0x6e0a <.L112>:m

0000789a <.L250>:
    789a:	4f 9f 90 04 	loadw	0x490:m(sp),r4
    789e:	0f 9f bc 04 	loadw	0x4bc:m(sp),r0
    78a2:	04 3b       	subw	r0,r4
    78a4:	4f df a2 04 	storw	r4,0x4a2:m(sp)
    78a8:	e0 18 3d f5 	br	*-0x6de4 <.L106>:m

000078ac <.L86>:
    78ac:	0f 9f a2 04 	loadw	0x4a2:m(sp),r0
    78b0:	90 2a       	xorw	$-1:s,r0
    78b2:	10 43       	ashuw	$-15:s,r0
    78b4:	4f 9f a2 04 	loadw	0x4a2:m(sp),r4
    78b8:	04 23       	andw	r0,r4
    78ba:	4f df 9c 04 	storw	r4,0x49c:m(sp)
    78be:	e4 1e       	br	*-0x7886 <.L87>:s

000078c0 <.L89>:
    78c0:	bf bf 8e 04 	loadb	0x48e:m(sp),r11
    78c4:	af df a2 04 	storw	r10,0x4a2:m(sp)
    78c8:	e0 18 ab f8 	br	*-0x7172 <.L240>:m

000078cc <.L67>:
    78cc:	0f af b4 04 	loadd	0x4b4:m(sp),(r1,r0)
    78d0:	20 60       	addd	$0x2:s,(r1,r0)
    78d2:	df af b4 04 	loadd	0x4b4:m(sp),(r13)
    78d6:	ad 90       	loadw	0x0:s(r13),r10
    78d8:	0f ef b4 04 	stord	(r1,r0),0x4b4:m(sp)
    78dc:	0a 52       	cmpw	$0x0:s,r10
    78de:	70 18 85 f3 	ble	*-0x6c62 <.L224>:m
    78e2:	9a 5a       	movw	$-1:s,r10
    78e4:	e0 18 7f f3 	br	*-0x6c62 <.L224>:m

000078e8 <.L264>:
    78e8:	91 5a       	movw	$-1:s,r1
    78ea:	1f df b0 04 	storw	r1,0x4b0:m(sp)
    78ee:	e0 18 c5 fc 	br	*-0x75b2 <.L25>:m

000078f2 <_vfiprintf>:
    78f2:	1e 01       	push	RA
    78f4:	1c 01       	push	$0x2,r12
    78f6:	fc 55       	movd	(sp),(r12)
    78f8:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    78fa:	8c 60       	addd	$0x8:s,(r12)
    78fc:	10 01       	push	$0x2,r0
    78fe:	14 01       	push	$0x2,r4
    7900:	24 55       	movd	(r3,r2),(r5,r4)
    7902:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    7906:	08 a8 
    7908:	ff c0 25 f2 	bal	(ra),*-0x6b2c <__vfiprintf_r>:m

0000790c <.LVL336>:
    790c:	8f 60       	addd	$0x8:s,(sp)
    790e:	1c 02       	pop	$0x2,r12
    7910:	1e 03       	popret	RA
	...

00007914 <__write_r>:
    7914:	1e 01       	push	RA
    7916:	1c 01       	push	$0x2,r12
    7918:	18 01       	push	$0x2,r8
    791a:	fc 55       	movd	(sp),(r12)
    791c:	28 55       	movd	(r3,r2),(r9,r8)
    791e:	42 5b       	movw	r4,r2
    7920:	53 55       	movd	(r6,r5),(r4,r3)
    7922:	5f a6       	loadd	0xc:s(sp),(r6,r5)
    7924:	cc 60       	addd	$0xc:s,(r12)
    7926:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    792a:	86 b0 
    792c:	ff c0 5d 9b 	bal	(ra),*-0x1488 <__write>:m

00007930 <.LVL3>:
    7930:	04 5e       	movxw	r0,(r5,r4)
    7932:	94 56       	cmpd	$-1:s,(r5,r4)
    7934:	05 10       	beq	*+0x793e <.L7>:s

00007936 <.L2>:
    7936:	51 5b       	movw	r5,r1
    7938:	18 02       	pop	$0x2,r8
    793a:	1c 02       	pop	$0x2,r12

0000793c <.LFE2>:
    793c:	1e 03       	popret	RA

0000793e <.L7>:
    793e:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    7942:	86 b0 
    7944:	01 52       	cmpw	$0x0:s,r1
    7946:	08 1f       	beq	*-0x7936 <.L2>:s
    7948:	18 d0       	storw	r1,0x0:s(r9,r8)
    794a:	51 5b       	movw	r5,r1
    794c:	18 02       	pop	$0x2,r8
    794e:	1c 02       	pop	$0x2,r12
    7950:	1e 03       	popret	RA

00007952 <.LFE0>:
	...

00007954 <__calloc_r>:
    7954:	1e 01       	push	RA
    7956:	1c 01       	push	$0x2,r12
    7958:	18 01       	push	$0x2,r8
    795a:	fc 55       	movd	(sp),(r12)
    795c:	28 55       	movd	(r3,r2),(r9,r8)
    795e:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    7960:	cc 60       	addd	$0xc:s,(r12)
    7962:	00 c0 52 0f 	bal	(ra),*+0x88b4 <___mulsi3>:m
    7966:	04 55       	movd	(r1,r0),(r5,r4)
    7968:	82 55       	movd	(r9,r8),(r3,r2)
    796a:	ff c0 af d9 	bal	(ra),*-0x5318 <__malloc_r>:m

0000796e <.LVL4>:
    796e:	08 55       	movd	(r1,r0),(r9,r8)
    7970:	00 56       	cmpd	$0x0:s,(r1,r0)
    7972:	04 11       	beq	*+0x799a <.L2>:s
    7974:	b0 60 f8 ff 	addd	$0xfff8:m,(r1,r0)
    7978:	00 a2       	loadd	0x4:s(r1,r0),(r1,r0)
    797a:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    797e:	fc ff 
    7980:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    7984:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    7988:	ad 11       	blo	*+0x79c2 <.L3>:s
    798a:	82 55       	movd	(r9,r8),(r3,r2)
    798c:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    7990:	aa 10       	blo	*+0x79a4 <.L12>:s

00007992 <.L4>:
    7992:	00 54       	movd	$0x0:s,(r1,r0)
    7994:	02 e0       	stord	(r1,r0),0x0:s(r3,r2)
    7996:	02 e2       	stord	(r1,r0),0x4:s(r3,r2)
    7998:	02 e4       	stord	(r1,r0),0x8:s(r3,r2)

0000799a <.L2>:
    799a:	80 5b       	movw	r8,r0
    799c:	91 5b       	movw	r9,r1
    799e:	18 02       	pop	$0x2,r8
    79a0:	1c 02       	pop	$0x2,r12
    79a2:	1e 03       	popret	RA

000079a4 <.L12>:
    79a4:	02 54       	movd	$0x0:s,(r3,r2)
    79a6:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    79a8:	28 e2       	stord	(r3,r2),0x4:s(r9,r8)
    79aa:	b0 56 1b 00 	cmpd	$0x1b:m,(r1,r0)
    79ae:	b4 11       	bhs	*+0x79d6 <.L13>:s
    79b0:	28 e4       	stord	(r3,r2),0x8:s(r9,r8)
    79b2:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    79b4:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    79b8:	02 11       	beq	*+0x79dc <.L6>:s
    79ba:	82 55       	movd	(r9,r8),(r3,r2)
    79bc:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    79c0:	e9 1e       	br	*-0x7992 <.L4>:s

000079c2 <.L3>:
    79c2:	05 55       	movd	(r1,r0),(r6,r5)
    79c4:	04 5a       	movw	$0x0:s,r4
    79c6:	82 55       	movd	(r9,r8),(r3,r2)
    79c8:	ff c0 51 9b 	bal	(ra),*-0x1518 <_memset>:m

000079cc <.LVL24>:
    79cc:	80 5b       	movw	r8,r0
    79ce:	91 5b       	movw	r9,r1
    79d0:	18 02       	pop	$0x2,r8
    79d2:	1c 02       	pop	$0x2,r12
    79d4:	1e 03       	popret	RA

000079d6 <.L13>:
    79d6:	82 55       	movd	(r9,r8),(r3,r2)
    79d8:	82 60       	addd	$0x8:s,(r3,r2)
    79da:	ec 1d       	br	*-0x7992 <.L4>:s

000079dc <.L6>:
    79dc:	28 e8       	stord	(r3,r2),0x10:s(r9,r8)
    79de:	28 ea       	stord	(r3,r2),0x14:s(r9,r8)
    79e0:	82 55       	movd	(r9,r8),(r3,r2)
    79e2:	b2 60 18 00 	addd	$0x18:m,(r3,r2)
    79e6:	e6 1d       	br	*-0x7992 <.L4>:s

000079e8 <__close_r>:
    79e8:	1e 01       	push	RA
    79ea:	18 01       	push	$0x2,r8
    79ec:	28 55       	movd	(r3,r2),(r9,r8)
    79ee:	42 5b       	movw	r4,r2
    79f0:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    79f4:	86 b0 
    79f6:	ff c0 a3 9a 	bal	(ra),*-0x1498 <__close>:m

000079fa <.LVL2>:
    79fa:	90 52       	cmpw	$-1:s,r0
    79fc:	03 10       	beq	*+0x7a02 <.L7>:s

000079fe <.L2>:
    79fe:	18 02       	pop	$0x2,r8
    7a00:	1e 03       	popret	RA

00007a02 <.L7>:
    7a02:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    7a06:	86 b0 
    7a08:	01 52       	cmpw	$0x0:s,r1
    7a0a:	0a 1f       	beq	*-0x79fe <.L2>:s
    7a0c:	18 d0       	storw	r1,0x0:s(r9,r8)
    7a0e:	18 02       	pop	$0x2,r8
    7a10:	1e 03       	popret	RA

00007a12 <.LFE0>:
	...

00007a14 <__fclose_r>:
    7a14:	1e 01       	push	RA
    7a16:	47 01       	push	$0x5,r7
    7a18:	2a 55       	movd	(r3,r2),(r11,r10)
    7a1a:	48 55       	movd	(r5,r4),(r9,r8)
    7a1c:	04 56       	cmpd	$0x0:s,(r5,r4)
    7a1e:	0a 10       	beq	*+0x7a32 <.L5>:s
    7a20:	02 56       	cmpd	$0x0:s,(r3,r2)
    7a22:	05 10       	beq	*+0x7a2c <.L4>:s
    7a24:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    7a28:	00 52       	cmpw	$0x0:s,r0
    7a2a:	0d 13       	beq	*+0x7aa4 <.L31>:s

00007a2c <.L4>:
    7a2c:	08 94       	loadw	0x8:s(r9,r8),r0
    7a2e:	00 52       	cmpw	$0x0:s,r0
    7a30:	15 10       	bne	*+0x7a3a <.L32>:s

00007a32 <.L5>:
    7a32:	07 5a       	movw	$0x0:s,r7
    7a34:	70 5b       	movw	r7,r0
    7a36:	47 02       	pop	$0x5,r7
    7a38:	1e 03       	popret	RA

00007a3a <.L32>:
    7a3a:	84 55       	movd	(r9,r8),(r5,r4)
    7a3c:	a2 55       	movd	(r11,r10),(r3,r2)
    7a3e:	ff c0 1f d1 	bal	(ra),*-0x4b5c <__fflush_r>:m

00007a42 <.LVL2>:
    7a42:	07 5b       	movw	r0,r7
    7a44:	08 af 28 00 	loadd	0x28:m(r9,r8),(r1,r0)
    7a48:	00 56       	cmpd	$0x0:s,(r1,r0)
    7a4a:	06 10       	beq	*+0x7a56 <.L6>:s
    7a4c:	48 ac       	loadd	0x18:s(r9,r8),(r5,r4)
    7a4e:	a2 55       	movd	(r11,r10),(r3,r2)
    7a50:	d0 00       	jal	(r1,r0)

00007a52 <.LVL5>:
    7a52:	00 52       	cmpw	$0x0:s,r0
    7a54:	6b 12       	bgt	*+0x7aaa <.L33>:s

00007a56 <.L6>:
    7a56:	08 94       	loadw	0x8:s(r9,r8),r0
    7a58:	b0 22 80 00 	andw	$0x80:m,r0
    7a5c:	00 52       	cmpw	$0x0:s,r0
    7a5e:	18 12       	bne	*+0x7aae <.L34>:s

00007a60 <.L7>:
    7a60:	48 af 2c 00 	loadd	0x2c:m(r9,r8),(r5,r4)
    7a64:	04 56       	cmpd	$0x0:s,(r5,r4)
    7a66:	0c 10       	beq	*+0x7a7e <.L8>:s
    7a68:	80 55       	movd	(r9,r8),(r1,r0)
    7a6a:	b0 60 3a 00 	addd	$0x3a:m,(r1,r0)
    7a6e:	04 57       	cmpd	(r1,r0),(r5,r4)
    7a70:	04 10       	beq	*+0x7a78 <.L9>:s
    7a72:	a2 55       	movd	(r11,r10),(r3,r2)
    7a74:	ff c0 0d d4 	bal	(ra),*-0x4e80 <__free_r>:m

00007a78 <.L9>:
    7a78:	00 54       	movd	$0x0:s,(r1,r0)
    7a7a:	08 ef 2c 00 	stord	(r1,r0),0x2c:m(r9,r8)

00007a7e <.L8>:
    7a7e:	48 af 40 00 	loadd	0x40:m(r9,r8),(r5,r4)
    7a82:	04 56       	cmpd	$0x0:s,(r5,r4)
    7a84:	07 10       	beq	*+0x7a92 <.L10>:s
    7a86:	a2 55       	movd	(r11,r10),(r3,r2)
    7a88:	ff c0 f9 d3 	bal	(ra),*-0x4e80 <__free_r>:m

00007a8c <.LVL8>:
    7a8c:	00 54       	movd	$0x0:s,(r1,r0)
    7a8e:	08 ef 40 00 	stord	(r1,r0),0x40:m(r9,r8)

00007a92 <.L10>:
    7a92:	ff c0 ef d2 	bal	(ra),*-0x4d80 <___sfp_lock_acquire>:m

00007a96 <.LVL9>:
    7a96:	08 c3 08 00 	storw	$0x0:s,0x8:m(r9,r8)
    7a9a:	ff c0 eb d2 	bal	(ra),*-0x4d84 <___sfp_lock_release>:m

00007a9e <.LVL10>:
    7a9e:	70 5b       	movw	r7,r0
    7aa0:	47 02       	pop	$0x5,r7
    7aa2:	1e 03       	popret	RA

00007aa4 <.L31>:
    7aa4:	ff c0 e1 d1 	bal	(ra),*-0x4c84 <___sinit>:m

00007aa8 <.LVL12>:
    7aa8:	e2 1c       	br	*-0x7a2c <.L4>:s

00007aaa <.L33>:
    7aaa:	97 5a       	movw	$-1:s,r7
    7aac:	e5 1d       	br	*-0x7a56 <.L6>:s

00007aae <.L34>:
    7aae:	48 a6       	loadd	0xc:s(r9,r8),(r5,r4)
    7ab0:	a2 55       	movd	(r11,r10),(r3,r2)
    7ab2:	ff c0 cf d3 	bal	(ra),*-0x4e80 <__free_r>:m

00007ab6 <.LVL16>:
    7ab6:	e5 1d       	br	*-0x7a60 <.L7>:s

00007ab8 <_fclose>:
    7ab8:	1e 01       	push	RA
    7aba:	24 55       	movd	(r3,r2),(r5,r4)
    7abc:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    7ac0:	08 a8 
    7ac2:	ff c0 53 ff 	bal	(ra),*-0x7a14 <__fclose_r>:m

00007ac6 <.LVL19>:
    7ac6:	1e 03       	popret	RA

00007ac8 <__fputwc_r>:
    7ac8:	9d 01       	push	$0x2,r13,RA
    7aca:	67 01       	push	$0x7,r7
    7acc:	bf 60 f8 ff 	addd	$0xfff8:m,(sp)
    7ad0:	2f e2       	stord	(r3,r2),0x4:s(sp)
    7ad2:	47 5b       	movw	r4,r7
    7ad4:	58 55       	movd	(r6,r5),(r9,r8)
    7ad6:	05 94       	loadw	0x8:s(r6,r5),r0
    7ad8:	01 5b       	movw	r0,r1
    7ada:	b1 22 00 20 	andw	$0x2000:m,r1
    7ade:	01 52       	cmpw	$0x0:s,r1
    7ae0:	1a 10       	bne	*+0x7af4 <.L2>:s
    7ae2:	b0 26 00 20 	orw	$0x2000:m,r0
    7ae6:	05 d4       	storw	r0,0x8:s(r6,r5)
    7ae8:	05 9f 58 00 	loadw	0x58:m(r6,r5),r0
    7aec:	b0 26 00 20 	orw	$0x2000:m,r0
    7af0:	05 df 58 00 	storw	r0,0x58:m(r6,r5)

00007af4 <.L2>:
    7af4:	ff c0 f5 d6 	bal	(ra),*-0x51e8 <___locale_mb_cur_max>:m

00007af8 <.LVL2>:
    7af8:	10 52       	cmpw	$0x1:s,r0
    7afa:	09 14       	beq	*+0x7b8c <.L17>:s

00007afc <.L3>:
    7afc:	80 55       	movd	(r9,r8),(r1,r0)
    7afe:	b0 60 52 00 	addd	$0x52:m,(r1,r0)
    7b02:	10 01       	push	$0x2,r0
    7b04:	76 5b       	movw	r7,r6
    7b06:	f4 55       	movd	(sp),(r5,r4)
    7b08:	44 60       	addd	$0x4:s,(r5,r4)
    7b0a:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    7b0c:	00 c0 80 0c 	bal	(ra),*+0x878c <__wcrtomb_r>:m

00007b10 <.LVL4>:
    7b10:	0d 55       	movd	(r1,r0),(r13)
    7b12:	4f 60       	addd	$0x4:s,(sp)
    7b14:	90 56       	cmpd	$-1:s,(r1,r0)
    7b16:	08 12       	beq	*+0x7b66 <.L18>:s
    7b18:	00 56       	cmpd	$0x0:s,(r1,r0)
    7b1a:	01 14       	beq	*+0x7b9c <.L15>:s

00007b1c <.L7>:
    7b1c:	fa 55       	movd	(sp),(r11,r10)
    7b1e:	0c 54       	movd	$0x0:s,(r12)
    7b20:	eb 10       	br	*+0x7b36 <.L4>:s

00007b22 <.L8>:
    7b22:	08 a0       	loadd	0x0:s(r9,r8),(r1,r0)
    7b24:	2a b0       	loadb	0x0:s(r11,r10),r2
    7b26:	20 f0       	storb	r2,0x0:s(r1,r0)
    7b28:	08 a0       	loadd	0x0:s(r9,r8),(r1,r0)
    7b2a:	10 60       	addd	$0x1:s,(r1,r0)
    7b2c:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)

00007b2e <.L12>:
    7b2e:	1c 60       	addd	$0x1:s,(r12)
    7b30:	1a 60       	addd	$0x1:s,(r11,r10)
    7b32:	dc 57       	cmpd	(r13),(r12)
    7b34:	54 13       	bls	*+0x7b9c <.L15>:s

00007b36 <.L4>:
    7b36:	08 93       	loadw	0x6:s(r9,r8),r0
    7b38:	90 32       	addw	$-1:s,r0
    7b3a:	08 d3       	storw	r0,0x6:s(r9,r8)
    7b3c:	00 52       	cmpw	$0x0:s,r0
    7b3e:	72 1f       	ble	*-0x7b22 <.L8>:s
    7b40:	18 9a       	loadw	0x14:s(r9,r8),r1
    7b42:	10 53       	cmpw	r1,r0
    7b44:	69 11       	bgt	*+0x7b76 <.L9>:s
    7b46:	08 a0       	loadd	0x0:s(r9,r8),(r1,r0)
    7b48:	2a b0       	loadb	0x0:s(r11,r10),r2
    7b4a:	20 f0       	storb	r2,0x0:s(r1,r0)
    7b4c:	08 a0       	loadd	0x0:s(r9,r8),(r1,r0)
    7b4e:	20 b0       	loadb	0x0:s(r1,r0),r2
    7b50:	a2 50       	cmpb	$0xa:s,r2
    7b52:	09 12       	beq	*+0x7ba4 <.L10>:s
    7b54:	02 58       	movb	$0x0:s,r2
    7b56:	10 60       	addd	$0x1:s,(r1,r0)
    7b58:	08 e0       	stord	(r1,r0),0x0:s(r9,r8)
    7b5a:	02 50       	cmpb	$0x0:s,r2
    7b5c:	09 1e       	beq	*-0x7b2e <.L12>:s

00007b5e <.L13>:
    7b5e:	90 5a       	movw	$-1:s,r0
    7b60:	8f 60       	addd	$0x8:s,(sp)
    7b62:	67 02       	pop	$0x7,r7
    7b64:	9d 03       	popret	$0x2,r13,RA

00007b66 <.L18>:
    7b66:	08 94       	loadw	0x8:s(r9,r8),r0
    7b68:	b0 26 40 00 	orw	$0x40:m,r0
    7b6c:	08 d4       	storw	r0,0x8:s(r9,r8)
    7b6e:	90 5a       	movw	$-1:s,r0
    7b70:	8f 60       	addd	$0x8:s,(sp)
    7b72:	67 02       	pop	$0x7,r7
    7b74:	9d 03       	popret	$0x2,r13,RA

00007b76 <.L9>:
    7b76:	4a b0       	loadb	0x0:s(r11,r10),r4
    7b78:	44 5d       	movzb	r4,r4
    7b7a:	85 55       	movd	(r9,r8),(r6,r5)
    7b7c:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    7b7e:	00 c0 22 0b 	bal	(ra),*+0x86a0 <___swbuf_r>:m

00007b82 <.LVL16>:
    7b82:	90 52       	cmpw	$-1:s,r0
    7b84:	02 08       	seq	r2
    7b86:	02 50       	cmpb	$0x0:s,r2
    7b88:	03 1d       	beq	*-0x7b2e <.L12>:s
    7b8a:	ea 1e       	br	*-0x7b5e <.L13>:s

00007b8c <.L17>:
    7b8c:	70 5b       	movw	r7,r0
    7b8e:	90 32       	addw	$-1:s,r0
    7b90:	b0 52 fe 00 	cmpw	$0xfe:m,r0
    7b94:	a4 1b       	blo	*-0x7afc <.L3>:s
    7b96:	7f f0       	storb	r7,0x0:s(sp)
    7b98:	1d 54       	movd	$0x1:s,(r13)
    7b9a:	e1 1c       	br	*-0x7b1c <.L7>:s

00007b9c <.L15>:
    7b9c:	70 5b       	movw	r7,r0
    7b9e:	8f 60       	addd	$0x8:s,(sp)
    7ba0:	67 02       	pop	$0x7,r7
    7ba2:	9d 03       	popret	$0x2,r13,RA

00007ba4 <.L10>:
    7ba4:	85 55       	movd	(r9,r8),(r6,r5)
    7ba6:	a4 5a       	movw	$0xa:s,r4
    7ba8:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    7baa:	00 c0 f6 0a 	bal	(ra),*+0x86a0 <___swbuf_r>:m

00007bae <.LVL20>:
    7bae:	90 52       	cmpw	$-1:s,r0
    7bb0:	02 08       	seq	r2
    7bb2:	02 50       	cmpb	$0x0:s,r2
    7bb4:	0d 1b       	beq	*-0x7b2e <.L12>:s
    7bb6:	e4 1d       	br	*-0x7b5e <.L13>:s

00007bb8 <_fputwc>:
    7bb8:	1e 01       	push	RA
    7bba:	27 01       	push	$0x3,r7
    7bbc:	27 5b       	movw	r2,r7
    7bbe:	38 55       	movd	(r4,r3),(r9,r8)
    7bc0:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    7bc4:	08 a8 
    7bc6:	02 56       	cmpd	$0x0:s,(r3,r2)
    7bc8:	0a 10       	beq	*+0x7bdc <.L20>:s
    7bca:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    7bce:	00 52       	cmpw	$0x0:s,r0
    7bd0:	16 10       	bne	*+0x7bdc <.L20>:s
    7bd2:	ff c0 b3 d0 	bal	(ra),*-0x4c84 <___sinit>:m

00007bd6 <.LVL23>:
    7bd6:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    7bda:	08 a8 

00007bdc <.L20>:
    7bdc:	85 55       	movd	(r9,r8),(r6,r5)
    7bde:	74 5b       	movw	r7,r4
    7be0:	ff c0 e9 fe 	bal	(ra),*-0x7ac8 <__fputwc_r>:m

00007be4 <.LVL24>:
    7be4:	27 02       	pop	$0x3,r7
    7be6:	1e 03       	popret	RA

00007be8 <__fstat_r>:
    7be8:	1e 01       	push	RA
    7bea:	18 01       	push	$0x2,r8
    7bec:	28 55       	movd	(r3,r2),(r9,r8)
    7bee:	42 5b       	movw	r4,r2

00007bf0 <.LFE2>:
    7bf0:	53 55       	movd	(r6,r5),(r4,r3)
    7bf2:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    7bf6:	86 b0 
    7bf8:	ff c0 a9 98 	bal	(ra),*-0x14a0 <__fstat>:m

00007bfc <.LVL2>:
    7bfc:	90 52       	cmpw	$-1:s,r0
    7bfe:	03 10       	beq	*+0x7c04 <.L7>:s

00007c00 <.L2>:
    7c00:	18 02       	pop	$0x2,r8
    7c02:	1e 03       	popret	RA

00007c04 <.L7>:
    7c04:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    7c08:	86 b0 
    7c0a:	01 52       	cmpw	$0x0:s,r1
    7c0c:	0a 1f       	beq	*-0x7c00 <.L2>:s
    7c0e:	18 d0       	storw	r1,0x0:s(r9,r8)
    7c10:	18 02       	pop	$0x2,r8
    7c12:	1e 03       	popret	RA

00007c14 <___sfvwrite_r>:
    7c14:	9d 01       	push	$0x2,r13,RA
    7c16:	67 01       	push	$0x7,r7
    7c18:	bf 60 e8 ff 	addd	$0xffe8:m,(sp)
    7c1c:	fc 55       	movd	(sp),(r12)
    7c1e:	bc 60 2e 00 	addd	$0x2e:m,(r12)
    7c22:	2f e8       	stord	(r3,r2),0x10:s(sp)
    7c24:	4d 55       	movd	(r5,r4),(r13)
    7c26:	cc a0       	loadd	0x0:s(r12),(r12)
    7c28:	cf e4       	stord	(r12),0x8:s(sp)
    7c2a:	0c 93       	loadw	0x6:s(r12),r0
    7c2c:	00 52       	cmpw	$0x0:s,r0
    7c2e:	0c 12       	beq	*+0x7c86 <.L12>:s
    7c30:	64 94       	loadw	0x8:s(r5,r4),r6
    7c32:	60 5b       	movw	r6,r0
    7c34:	80 22       	andw	$0x8:s,r0
    7c36:	00 52       	cmpw	$0x0:s,r0
    7c38:	0c 12       	beq	*+0x7c90 <.L4>:s
    7c3a:	04 a6       	loadd	0xc:s(r5,r4),(r1,r0)
    7c3c:	00 56       	cmpd	$0x0:s,(r1,r0)
    7c3e:	09 12       	beq	*+0x7c90 <.L4>:s
    7c40:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    7c42:	c0 a0       	loadd	0x0:s(r1,r0),(r12)
    7c44:	67 5b       	movw	r6,r7
    7c46:	27 22       	andw	$0x2:s,r7
    7c48:	07 52       	cmpw	$0x0:s,r7
    7c4a:	01 13       	beq	*+0x7cac <.L63>:s

00007c4c <.L40>:
    7c4c:	0a 54       	movd	$0x0:s,(r11,r10)
    7c4e:	a8 55       	movd	(r11,r10),(r9,r8)

00007c50 <.L53>:
    7c50:	08 56       	cmpd	$0x0:s,(r9,r8)
    7c52:	0a 16       	beq	*+0x7d26 <.L8>:s
    7c54:	86 55       	movd	(r9,r8),(r7,r6)
    7c56:	b8 56 00 04 	cmpd	$0x400:m,(r9,r8)
    7c5a:	b3 10       	bhs	*+0x7c60 <.L9>:s
    7c5c:	b6 54 00 04 	movd	$0x400:m,(r7,r6)

00007c60 <.L9>:
    7c60:	4d ac       	loadd	0x18:s(r13),(r5,r4)
    7c62:	1a 01       	push	$0x2,r10
    7c64:	0d af 20 00 	loadd	0x20:m(r13),(r1,r0)
    7c68:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7c6a:	d0 00       	jal	(r1,r0)

00007c6c <.LVL5>:
    7c6c:	4f 60       	addd	$0x4:s,(sp)
    7c6e:	00 52       	cmpw	$0x0:s,r0
    7c70:	d1 16       	bge	*+0x7d32 <.L24>:s
    7c72:	02 5e       	movxw	r0,(r3,r2)
    7c74:	2a 61       	addd	(r3,r2),(r11,r10)
    7c76:	14 00 28 c0 	subd	(r3,r2),(r9,r8)
    7c7a:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    7c7c:	12 93       	loadw	0x6:s(r3,r2),r1
    7c7e:	01 3b       	subw	r0,r1
    7c80:	12 d3       	storw	r1,0x6:s(r3,r2)
    7c82:	01 52       	cmpw	$0x0:s,r1
    7c84:	16 1e       	bne	*-0x7c50 <.L53>:s

00007c86 <.L12>:
    7c86:	00 5a       	movw	$0x0:s,r0

00007c88 <.L3>:
    7c88:	bf 60 18 00 	addd	$0x18:m,(sp)
    7c8c:	67 02       	pop	$0x7,r7
    7c8e:	9d 03       	popret	$0x2,r13,RA

00007c90 <.L4>:
    7c90:	d4 55       	movd	(r13),(r5,r4)
    7c92:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7c94:	ff c0 9d b5 	bal	(ra),*-0x3230 <___swsetup_r>:m

00007c98 <.LVL12>:
    7c98:	00 52       	cmpw	$0x0:s,r0
    7c9a:	10 18 da 02 	bne	*+0x7f74 <.L39>:m
    7c9e:	6d 94       	loadw	0x8:s(r13),r6
    7ca0:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    7ca2:	c0 a0       	loadd	0x0:s(r1,r0),(r12)
    7ca4:	67 5b       	movw	r6,r7
    7ca6:	27 22       	andw	$0x2:s,r7
    7ca8:	07 52       	cmpw	$0x0:s,r7
    7caa:	11 1d       	bne	*-0x7c4c <.L40>:s

00007cac <.L63>:
    7cac:	60 5b       	movw	r6,r0
    7cae:	10 22       	andw	$0x1:s,r0
    7cb0:	00 52       	cmpw	$0x0:s,r0
    7cb2:	19 14       	bne	*+0x7d44 <.L64>:s
    7cb4:	02 54       	movd	$0x0:s,(r3,r2)
    7cb6:	2f e0       	stord	(r3,r2),0x0:s(sp)
    7cb8:	2a 55       	movd	(r3,r2),(r11,r10)
    7cba:	c8 55       	movd	(r12),(r9,r8)

00007cbc <.L56>:
    7cbc:	0a 56       	cmpd	$0x0:s,(r11,r10)
    7cbe:	0f 12       	beq	*+0x7d1c <.L15>:s

00007cc0 <.L65>:
    7cc0:	7d 93       	loadw	0x6:s(r13),r7
    7cc2:	60 5b       	movw	r6,r0
    7cc4:	b0 22 00 02 	andw	$0x200:m,r0
    7cc8:	00 52       	cmpw	$0x0:s,r0
    7cca:	00 18 2e 01 	beq	*+0x7df8 <.L16>:m
    7cce:	70 5e       	movxw	r7,(r1,r0)
    7cd0:	0f e2       	stord	(r1,r0),0x4:s(sp)
    7cd2:	0a 57       	cmpd	(r1,r0),(r11,r10)
    7cd4:	50 18 78 01 	bls	*+0x7e4c <.L17>:m
    7cd8:	af d6       	storw	r10,0xc:s(sp)
    7cda:	a1 5e       	movxw	r10,(r2,r1)
    7cdc:	1f e2       	stord	(r2,r1),0x4:s(sp)
    7cde:	2d a0       	loadd	0x0:s(r13),(r3,r2)

00007ce0 <.L18>:
    7ce0:	cf a2       	loadd	0x4:s(sp),(r12)
    7ce2:	7f 96       	loadw	0xc:s(sp),r7

00007ce4 <.L20>:
    7ce4:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    7ce6:	10 01       	push	$0x2,r0
    7ce8:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    7cea:	00 c0 fe 02 	bal	(ra),*+0x7fe8 <_memmove>:m

00007cee <.LVL20>:
    7cee:	0d 93       	loadw	0x6:s(r13),r0
    7cf0:	1f 98       	loadw	0x10:s(sp),r1
    7cf2:	10 3b       	subw	r1,r0
    7cf4:	0d d3       	storw	r0,0x6:s(r13)
    7cf6:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7cf8:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    7cfa:	20 61       	addd	(r3,r2),(r1,r0)
    7cfc:	0d e0       	stord	(r1,r0),0x0:s(r13)
    7cfe:	4f 60       	addd	$0x4:s,(sp)

00007d00 <.L26>:
    7d00:	1f a0       	loadd	0x0:s(sp),(r2,r1)
    7d02:	c1 61       	addd	(r12),(r2,r1)
    7d04:	1f e0       	stord	(r2,r1),0x0:s(sp)
    7d06:	14 00 ca c0 	subd	(r12),(r11,r10)
    7d0a:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    7d0c:	02 93       	loadw	0x6:s(r3,r2),r0
    7d0e:	70 3b       	subw	r7,r0
    7d10:	02 d3       	storw	r0,0x6:s(r3,r2)
    7d12:	00 52       	cmpw	$0x0:s,r0
    7d14:	09 1b       	beq	*-0x7c86 <.L12>:s
    7d16:	6d 94       	loadw	0x8:s(r13),r6
    7d18:	0a 56       	cmpd	$0x0:s,(r11,r10)
    7d1a:	13 1d       	bne	*-0x7cc0 <.L65>:s

00007d1c <.L15>:
    7d1c:	18 a0       	loadd	0x0:s(r9,r8),(r2,r1)
    7d1e:	1f e0       	stord	(r2,r1),0x0:s(sp)
    7d20:	a8 a2       	loadd	0x4:s(r9,r8),(r11,r10)
    7d22:	88 60       	addd	$0x8:s,(r9,r8)
    7d24:	ec 1c       	br	*-0x7cbc <.L56>:s

00007d26 <.L8>:
    7d26:	ac a0       	loadd	0x0:s(r12),(r11,r10)
    7d28:	8c a2       	loadd	0x4:s(r12),(r9,r8)
    7d2a:	8c 60       	addd	$0x8:s,(r12)
    7d2c:	e2 19       	br	*-0x7c50 <.L53>:s

00007d2e <.L71>:
    7d2e:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    7d30:	c0 c2       	storw	$0xc:s,0x0:s(r1,r0)

00007d32 <.L24>:
    7d32:	0d 94       	loadw	0x8:s(r13),r0
    7d34:	b0 26 40 00 	orw	$0x40:m,r0
    7d38:	0d d4       	storw	r0,0x8:s(r13)
    7d3a:	90 5a       	movw	$-1:s,r0
    7d3c:	bf 60 18 00 	addd	$0x18:m,(sp)
    7d40:	67 02       	pop	$0x7,r7
    7d42:	9d 03       	popret	$0x2,r13,RA

00007d44 <.L64>:
    7d44:	7f d2       	storw	r7,0x4:s(sp)
    7d46:	00 54       	movd	$0x0:s,(r1,r0)
    7d48:	0f e0       	stord	(r1,r0),0x0:s(sp)
    7d4a:	08 55       	movd	(r1,r0),(r9,r8)

00007d4c <.L54>:
    7d4c:	08 56       	cmpd	$0x0:s,(r9,r8)
    7d4e:	02 13       	beq	*+0x7db2 <.L30>:s

00007d50 <.L69>:
    7d50:	1f 92       	loadw	0x4:s(sp),r1
    7d52:	01 52       	cmpw	$0x0:s,r1
    7d54:	00 18 2c 01 	beq	*+0x7e80 <.L66>:m

00007d58 <.L31>:
    7d58:	70 5e       	movxw	r7,(r1,r0)
    7d5a:	80 57       	cmpd	(r9,r8),(r1,r0)
    7d5c:	b2 10       	bhs	*+0x7d60 <.L33>:s
    7d5e:	80 55       	movd	(r9,r8),(r1,r0)

00007d60 <.L33>:
    7d60:	0b 5b       	movw	r0,r11
    7d62:	ad 93       	loadw	0x6:s(r13),r10
    7d64:	6d 98       	loadw	0x10:s(r13),r6
    7d66:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    7d68:	0d a6       	loadd	0xc:s(r13),(r1,r0)
    7d6a:	02 57       	cmpd	(r1,r0),(r3,r2)
    7d6c:	b4 10       	bhs	*+0x7d74 <.L34>:s
    7d6e:	6a 33       	addw	r6,r10
    7d70:	ab 53       	cmpw	r10,r11
    7d72:	c7 12       	blt	*+0x7dc0 <.L67>:s

00007d74 <.L34>:
    7d74:	6b 53       	cmpw	r6,r11
    7d76:	6b 15       	bgt	*+0x7e2c <.L36>:s
    7d78:	4d ac       	loadd	0x18:s(r13),(r5,r4)
    7d7a:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    7d7c:	10 01       	push	$0x2,r0
    7d7e:	0d af 20 00 	loadd	0x20:m(r13),(r1,r0)
    7d82:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7d84:	d0 00       	jal	(r1,r0)

00007d86 <.LVL45>:
    7d86:	0a 5b       	movw	r0,r10
    7d88:	4f 60       	addd	$0x4:s,(sp)
    7d8a:	00 52       	cmpw	$0x0:s,r0
    7d8c:	d3 1d       	bge	*-0x7d32 <.L24>:s

00007d8e <.L35>:
    7d8e:	a7 3b       	subw	r10,r7
    7d90:	07 52       	cmpw	$0x0:s,r7
    7d92:	0b 12       	beq	*+0x7de8 <.L68>:s

00007d94 <.L37>:
    7d94:	a0 5e       	movxw	r10,(r1,r0)
    7d96:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    7d98:	02 61       	addd	(r1,r0),(r3,r2)
    7d9a:	2f e0       	stord	(r3,r2),0x0:s(sp)
    7d9c:	14 00 08 c0 	subd	(r1,r0),(r9,r8)
    7da0:	1f a4       	loadd	0x8:s(sp),(r2,r1)
    7da2:	01 93       	loadw	0x6:s(r2,r1),r0
    7da4:	a0 3b       	subw	r10,r0
    7da6:	01 d3       	storw	r0,0x6:s(r2,r1)
    7da8:	00 52       	cmpw	$0x0:s,r0
    7daa:	00 18 dd fe 	beq	*-0x7c86 <.L12>:m
    7dae:	08 56       	cmpd	$0x0:s,(r9,r8)
    7db0:	10 1d       	bne	*-0x7d50 <.L69>:s

00007db2 <.L30>:
    7db2:	0c a0       	loadd	0x0:s(r12),(r1,r0)
    7db4:	0f e0       	stord	(r1,r0),0x0:s(sp)
    7db6:	8c a2       	loadd	0x4:s(r12),(r9,r8)
    7db8:	8c 60       	addd	$0x8:s,(r12)
    7dba:	0f c3 04 00 	storw	$0x0:s,0x4:m(sp)
    7dbe:	e7 1c       	br	*-0x7d4c <.L54>:s

00007dc0 <.L67>:
    7dc0:	a0 5e       	movxw	r10,(r1,r0)
    7dc2:	0f e6       	stord	(r1,r0),0xc:s(sp)
    7dc4:	10 01       	push	$0x2,r0
    7dc6:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    7dc8:	00 c0 20 02 	bal	(ra),*+0x7fe8 <_memmove>:m

00007dcc <.LVL59>:
    7dcc:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7dce:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7dd0:	20 61       	addd	(r3,r2),(r1,r0)
    7dd2:	0d e0       	stord	(r1,r0),0x0:s(r13)
    7dd4:	d4 55       	movd	(r13),(r5,r4)
    7dd6:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7dd8:	ff c0 85 cd 	bal	(ra),*-0x4b5c <__fflush_r>:m

00007ddc <.LVL60>:
    7ddc:	4f 60       	addd	$0x4:s,(sp)
    7dde:	00 52       	cmpw	$0x0:s,r0
    7de0:	19 1a       	bne	*-0x7d32 <.L24>:s
    7de2:	a7 3b       	subw	r10,r7
    7de4:	07 52       	cmpw	$0x0:s,r7
    7de6:	17 1d       	bne	*-0x7d94 <.L37>:s

00007de8 <.L68>:
    7de8:	d4 55       	movd	(r13),(r5,r4)
    7dea:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7dec:	ff c0 71 cd 	bal	(ra),*-0x4b5c <__fflush_r>:m

00007df0 <.LVL64>:
    7df0:	00 52       	cmpw	$0x0:s,r0
    7df2:	10 1a       	bne	*-0x7d32 <.L24>:s
    7df4:	7f d2       	storw	r7,0x4:s(sp)
    7df6:	ef 1c       	br	*-0x7d94 <.L37>:s

00007df8 <.L16>:
    7df8:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    7dfa:	0d a6       	loadd	0xc:s(r13),(r1,r0)
    7dfc:	02 57       	cmpd	(r1,r0),(r3,r2)
    7dfe:	b5 10       	bhs	*+0x7e08 <.L27>:s
    7e00:	7c 5e       	movxw	r7,(r12)
    7e02:	ca 57       	cmpd	(r12),(r11,r10)
    7e04:	a0 18 20 01 	blo	*+0x7f24 <.L70>:m

00007e08 <.L27>:
    7e08:	6d 98       	loadw	0x10:s(r13),r6
    7e0a:	60 5e       	movxw	r6,(r1,r0)
    7e0c:	0a 57       	cmpd	(r1,r0),(r11,r10)
    7e0e:	4a 12       	bhi	*+0x7e62 <.L28>:s
    7e10:	4d ac       	loadd	0x18:s(r13),(r5,r4)
    7e12:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    7e14:	10 01       	push	$0x2,r0
    7e16:	0d af 20 00 	loadd	0x20:m(r13),(r1,r0)
    7e1a:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7e1c:	d0 00       	jal	(r1,r0)

00007e1e <.LVL67>:
    7e1e:	07 5b       	movw	r0,r7
    7e20:	4f 60       	addd	$0x4:s,(sp)
    7e22:	00 52       	cmpw	$0x0:s,r0
    7e24:	d7 18       	bge	*-0x7d32 <.L24>:s
    7e26:	0c 5e       	movxw	r0,(r12)
    7e28:	e0 18 d9 fe 	br	*-0x7d00 <.L26>:m

00007e2c <.L36>:
    7e2c:	b0 5e       	movxw	r11,(r1,r0)
    7e2e:	0f e6       	stord	(r1,r0),0xc:s(sp)
    7e30:	10 01       	push	$0x2,r0
    7e32:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    7e34:	00 c0 b4 01 	bal	(ra),*+0x7fe8 <_memmove>:m

00007e38 <.LVL71>:
    7e38:	0d 93       	loadw	0x6:s(r13),r0
    7e3a:	b0 3b       	subw	r11,r0
    7e3c:	0d d3       	storw	r0,0x6:s(r13)
    7e3e:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7e40:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7e42:	20 61       	addd	(r3,r2),(r1,r0)
    7e44:	0d e0       	stord	(r1,r0),0x0:s(r13)
    7e46:	4f 60       	addd	$0x4:s,(sp)
    7e48:	ba 5b       	movw	r11,r10
    7e4a:	e2 1a       	br	*-0x7d8e <.L35>:s

00007e4c <.L17>:
    7e4c:	60 5b       	movw	r6,r0
    7e4e:	b0 22 80 04 	andw	$0x480:m,r0
    7e52:	00 52       	cmpw	$0x0:s,r0
    7e54:	15 12       	bne	*+0x7e9e <.L19>:s
    7e56:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    7e58:	ac 5e       	movxw	r10,(r12)
    7e5a:	7f d6       	storw	r7,0xc:s(sp)
    7e5c:	a7 5b       	movw	r10,r7
    7e5e:	e0 18 87 fe 	br	*-0x7ce4 <.L20>:m

00007e62 <.L28>:
    7e62:	a7 5b       	movw	r10,r7
    7e64:	ac 5e       	movxw	r10,(r12)
    7e66:	1c 01       	push	$0x2,r12
    7e68:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    7e6a:	00 c0 7e 01 	bal	(ra),*+0x7fe8 <_memmove>:m

00007e6e <.LVL77>:
    7e6e:	0d 93       	loadw	0x6:s(r13),r0
    7e70:	a0 3b       	subw	r10,r0
    7e72:	0d d3       	storw	r0,0x6:s(r13)
    7e74:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7e76:	c0 61       	addd	(r12),(r1,r0)
    7e78:	0d e0       	stord	(r1,r0),0x0:s(r13)
    7e7a:	4f 60       	addd	$0x4:s,(sp)
    7e7c:	e0 18 85 fe 	br	*-0x7d00 <.L26>:m

00007e80 <.L66>:
    7e80:	85 55       	movd	(r9,r8),(r6,r5)
    7e82:	a4 5a       	movw	$0xa:s,r4
    7e84:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    7e86:	ff c0 ef db 	bal	(ra),*-0x5a74 <_memchr>:m

00007e8a <.LVL79>:
    7e8a:	00 56       	cmpd	$0x0:s,(r1,r0)
    7e8c:	0e 16       	beq	*+0x7f68 <.L32>:s
    7e8e:	10 60       	addd	$0x1:s,(r1,r0)
    7e90:	07 5b       	movw	r0,r7
    7e92:	2f 90       	loadw	0x0:s(sp),r2
    7e94:	27 3b       	subw	r2,r7
    7e96:	1f c3 04 00 	storw	$0x1:s,0x4:m(sp)
    7e9a:	e0 18 bf fe 	br	*-0x7d58 <.L31>:m

00007e9e <.L19>:
    7e9e:	cd a6       	loadd	0xc:s(r13),(r12)
    7ea0:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7ea2:	14 00 c0 c0 	subd	(r12),(r1,r0)
    7ea6:	0f da       	storw	r0,0x14:s(sp)
    7ea8:	2d 98       	loadw	0x10:s(r13),r2
    7eaa:	27 5b       	movw	r2,r7
    7eac:	27 33       	addw	r2,r7
    7eae:	72 33       	addw	r7,r2
    7eb0:	27 5b       	movw	r2,r7
    7eb2:	17 49       	lshw	$-15:s,r7
    7eb4:	72 33       	addw	r7,r2
    7eb6:	27 5b       	movw	r2,r7
    7eb8:	f7 43       	ashuw	$-1:s,r7
    7eba:	74 5e       	movxw	r7,(r5,r4)
    7ebc:	02 5e       	movxw	r0,(r3,r2)
    7ebe:	2f e2       	stord	(r3,r2),0x4:s(sp)
    7ec0:	12 60       	addd	$0x1:s,(r3,r2)
    7ec2:	a2 61       	addd	(r11,r10),(r3,r2)
    7ec4:	24 57       	cmpd	(r3,r2),(r5,r4)
    7ec6:	55 10       	bls	*+0x7ed0 <.L21>:s
    7ec8:	07 5b       	movw	r0,r7
    7eca:	17 32       	addw	$0x1:s,r7
    7ecc:	a7 33       	addw	r10,r7
    7ece:	74 5e       	movxw	r7,(r5,r4)

00007ed0 <.L21>:
    7ed0:	b6 22 00 04 	andw	$0x400:m,r6
    7ed4:	06 52       	cmpw	$0x0:s,r6
    7ed6:	08 13       	beq	*+0x7f46 <.L22>:s
    7ed8:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7eda:	ff c0 3f d4 	bal	(ra),*-0x5318 <__malloc_r>:m

00007ede <.LVL88>:
    7ede:	0c 55       	movd	(r1,r0),(r12)
    7ee0:	00 56       	cmpd	$0x0:s,(r1,r0)
    7ee2:	00 18 4d fe 	beq	*-0x7d2e <.L71>:m
    7ee6:	4d a6       	loadd	0xc:s(r13),(r5,r4)
    7ee8:	1f a2       	loadd	0x4:s(sp),(r2,r1)
    7eea:	11 01       	push	$0x2,r1
    7eec:	c2 55       	movd	(r12),(r3,r2)
    7eee:	ff c0 43 dc 	bal	(ra),*-0x5b30 <_memcpy>:m

00007ef2 <.LVL91>:
    7ef2:	0d 94       	loadw	0x8:s(r13),r0
    7ef4:	b0 22 7f fb 	andw	$0xfb7f:m,r0
    7ef8:	b0 26 80 00 	orw	$0x80:m,r0
    7efc:	0d d4       	storw	r0,0x8:s(r13)
    7efe:	4f 60       	addd	$0x4:s,(sp)

00007f00 <.L25>:
    7f00:	cd e6       	stord	(r12),0xc:s(r13)
    7f02:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    7f04:	c2 61       	addd	(r12),(r3,r2)
    7f06:	2d e0       	stord	(r3,r2),0x0:s(r13)
    7f08:	7d d8       	storw	r7,0x10:s(r13)
    7f0a:	af d6       	storw	r10,0xc:s(sp)
    7f0c:	0f 9a       	loadw	0x14:s(sp),r0
    7f0e:	07 3b       	subw	r0,r7
    7f10:	7d d3       	storw	r7,0x6:s(r13)
    7f12:	a0 5e       	movxw	r10,(r1,r0)
    7f14:	0f e2       	stord	(r1,r0),0x4:s(sp)
    7f16:	0c 55       	movd	(r1,r0),(r12)
    7f18:	a7 5b       	movw	r10,r7
    7f1a:	0a 57       	cmpd	(r1,r0),(r11,r10)
    7f1c:	50 18 c9 fd 	bls	*-0x7ce4 <.L20>:m
    7f20:	e0 18 c1 fd 	br	*-0x7ce0 <.L18>:m

00007f24 <.L70>:
    7f24:	1c 01       	push	$0x2,r12
    7f26:	4f a2       	loadd	0x4:s(sp),(r5,r4)
    7f28:	00 c0 c0 00 	bal	(ra),*+0x7fe8 <_memmove>:m

00007f2c <.LVL97>:
    7f2c:	0d a0       	loadd	0x0:s(r13),(r1,r0)
    7f2e:	c0 61       	addd	(r12),(r1,r0)
    7f30:	0d e0       	stord	(r1,r0),0x0:s(r13)
    7f32:	d4 55       	movd	(r13),(r5,r4)
    7f34:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7f36:	ff c0 27 cc 	bal	(ra),*-0x4b5c <__fflush_r>:m

00007f3a <.LVL98>:
    7f3a:	4f 60       	addd	$0x4:s,(sp)
    7f3c:	00 52       	cmpw	$0x0:s,r0
    7f3e:	00 18 c3 fd 	beq	*-0x7d00 <.L26>:m
    7f42:	e0 18 f1 fd 	br	*-0x7d32 <.L24>:m

00007f46 <.L22>:
    7f46:	14 01       	push	$0x2,r4
    7f48:	c4 55       	movd	(r12),(r5,r4)
    7f4a:	2f aa       	loadd	0x14:s(sp),(r3,r2)
    7f4c:	00 c0 d8 01 	bal	(ra),*+0x8124 <__realloc_r>:m

00007f50 <.LVL100>:
    7f50:	0c 55       	movd	(r1,r0),(r12)
    7f52:	4f 60       	addd	$0x4:s,(sp)
    7f54:	00 56       	cmpd	$0x0:s,(r1,r0)
    7f56:	15 1d       	bne	*-0x7f00 <.L25>:s
    7f58:	4d a6       	loadd	0xc:s(r13),(r5,r4)
    7f5a:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7f5c:	ff c0 25 cf 	bal	(ra),*-0x4e80 <__free_r>:m

00007f60 <.LVL103>:
    7f60:	2f a8       	loadd	0x10:s(sp),(r3,r2)
    7f62:	c2 c2       	storw	$0xc:s,0x0:s(r3,r2)
    7f64:	e0 18 cf fd 	br	*-0x7d32 <.L24>:m

00007f68 <.L32>:
    7f68:	87 5b       	movw	r8,r7
    7f6a:	17 32       	addw	$0x1:s,r7
    7f6c:	1f c3 04 00 	storw	$0x1:s,0x4:m(sp)
    7f70:	e0 18 e9 fd 	br	*-0x7d58 <.L31>:m

00007f74 <.L39>:
    7f74:	90 5a       	movw	$-1:s,r0
    7f76:	e0 18 13 fd 	br	*-0x7c88 <.L3>:m
	...

00007f7c <__isatty_r>:
    7f7c:	1e 01       	push	RA
    7f7e:	18 01       	push	$0x2,r8
    7f80:	28 55       	movd	(r3,r2),(r9,r8)
    7f82:	42 5b       	movw	r4,r2
    7f84:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    7f88:	86 b0 
    7f8a:	ff c0 2f 95 	bal	(ra),*-0x14b8 <__isatty>:m

00007f8e <.LVL2>:
    7f8e:	90 52       	cmpw	$-1:s,r0

00007f90 <.LFE0>:
    7f90:	03 10       	beq	*+0x7f96 <.L7>:s

00007f92 <.L2>:
    7f92:	18 02       	pop	$0x2,r8
    7f94:	1e 03       	popret	RA

00007f96 <.L7>:
    7f96:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    7f9a:	86 b0 
    7f9c:	01 52       	cmpw	$0x0:s,r1
    7f9e:	0a 1f       	beq	*-0x7f92 <.L2>:s
    7fa0:	18 d0       	storw	r1,0x0:s(r9,r8)
    7fa2:	18 02       	pop	$0x2,r8
    7fa4:	1e 03       	popret	RA

00007fa6 <.LFE0>:
	...

00007fa8 <__lseek_r>:
    7fa8:	1e 01       	push	RA
    7faa:	1c 01       	push	$0x2,r12
    7fac:	18 01       	push	$0x2,r8
    7fae:	fc 55       	movd	(sp),(r12)
    7fb0:	28 55       	movd	(r3,r2),(r9,r8)
    7fb2:	42 5b       	movw	r4,r2
    7fb4:	53 55       	movd	(r6,r5),(r4,r3)
    7fb6:	5f 96       	loadw	0xc:s(sp),r5
    7fb8:	cc 60       	addd	$0xc:s,(r12)
    7fba:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    7fbe:	86 b0 
    7fc0:	ff c0 e9 94 	bal	(ra),*-0x14a8 <__lseek>:m

00007fc4 <.LVL3>:
    7fc4:	04 5e       	movxw	r0,(r5,r4)
    7fc6:	94 56       	cmpd	$-1:s,(r5,r4)
    7fc8:	05 10       	beq	*+0x7fd2 <.L7>:s

00007fca <.L2>:
    7fca:	51 5b       	movw	r5,r1
    7fcc:	18 02       	pop	$0x2,r8
    7fce:	1c 02       	pop	$0x2,r12
    7fd0:	1e 03       	popret	RA

00007fd2 <.L7>:
    7fd2:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    7fd6:	86 b0 
    7fd8:	01 52       	cmpw	$0x0:s,r1
    7fda:	08 1f       	beq	*-0x7fca <.L2>:s
    7fdc:	18 d0       	storw	r1,0x0:s(r9,r8)
    7fde:	51 5b       	movw	r5,r1
    7fe0:	18 02       	pop	$0x2,r8
    7fe2:	1c 02       	pop	$0x2,r12
    7fe4:	1e 03       	popret	RA

00007fe6 <.LFE0>:
	...

00007fe8 <_memmove>:
    7fe8:	9d 01       	push	$0x2,r13,RA
    7fea:	67 01       	push	$0x7,r7
    7fec:	fc 55       	movd	(sp),(r12)
    7fee:	8f ab       	loadd	0x16:s(sp),(r9,r8)
    7ff0:	bc 60 16 00 	addd	$0x16:m,(r12)
    7ff4:	42 57       	cmpd	(r5,r4),(r3,r2)
    7ff6:	b6 11       	bhs	*+0x8022 <.L2>:s
    7ff8:	46 55       	movd	(r5,r4),(r7,r6)
    7ffa:	86 61       	addd	(r9,r8),(r7,r6)
    7ffc:	62 57       	cmpd	(r7,r6),(r3,r2)
    7ffe:	52 11       	bls	*+0x8022 <.L2>:s
    8000:	20 55       	movd	(r3,r2),(r1,r0)
    8002:	80 61       	addd	(r9,r8),(r1,r0)
    8004:	04 55       	movd	(r1,r0),(r5,r4)
    8006:	14 00 84 c0 	subd	(r9,r8),(r5,r4)
    800a:	08 56       	cmpd	$0x0:s,(r9,r8)
    800c:	07 10       	beq	*+0x801a <.L15>:s

0000800e <.L17>:
    800e:	90 60       	addd	$-1:s,(r1,r0)
    8010:	96 60       	addd	$-1:s,(r7,r6)
    8012:	86 b0       	loadb	0x0:s(r7,r6),r8
    8014:	80 f0       	storb	r8,0x0:s(r1,r0)
    8016:	40 57       	cmpd	(r5,r4),(r1,r0)
    8018:	1b 1f       	bne	*-0x800e <.L17>:s

0000801a <.L15>:
    801a:	20 5b       	movw	r2,r0
    801c:	31 5b       	movw	r3,r1
    801e:	67 02       	pop	$0x7,r7
    8020:	9d 03       	popret	$0x2,r13,RA

00008022 <.L2>:
    8022:	f8 56       	cmpd	$0xf:s,(r9,r8)
    8024:	b3 15       	bhs	*+0x80ca <.L11>:s
    8026:	40 55       	movd	(r5,r4),(r1,r0)
    8028:	14 00 20 90 	ord	(r3,r2),(r1,r0)
    802c:	40 00 00 00 	andd	$0x3:l,(r1,r0)
    8030:	03 00 
    8032:	00 56       	cmpd	$0x0:s,(r1,r0)
    8034:	1f 14       	bne	*+0x80d2 <.L12>:s
    8036:	4e 55       	movd	(r5,r4),(ra)
    8038:	8a 55       	movd	(r9,r8),(r11,r10)
    803a:	ba 60 f0 ff 	addd	$0xfff0:m,(r11,r10)
    803e:	ca 4b       	lshd	$-4:s,(r11,r10)
    8040:	40 55       	movd	(r5,r4),(r1,r0)
    8042:	b0 60 10 00 	addd	$0x10:m,(r1,r0)
    8046:	a6 55       	movd	(r11,r10),(r7,r6)
    8048:	46 4c       	ashud	$4:s,(r7,r6)
    804a:	60 61       	addd	(r7,r6),(r1,r0)
    804c:	26 55       	movd	(r3,r2),(r7,r6)

0000804e <.L8>:
    804e:	ce a0       	loadd	0x0:s(ra),(r12)
    8050:	c6 e0       	stord	(r12),0x0:s(r7,r6)
    8052:	ce a2       	loadd	0x4:s(ra),(r12)
    8054:	c6 e2       	stord	(r12),0x4:s(r7,r6)
    8056:	ce a4       	loadd	0x8:s(ra),(r12)
    8058:	c6 e4       	stord	(r12),0x8:s(r7,r6)
    805a:	ce a6       	loadd	0xc:s(ra),(r12)
    805c:	c6 e6       	stord	(r12),0xc:s(r7,r6)
    805e:	b6 60 10 00 	addd	$0x10:m,(r7,r6)
    8062:	be 60 10 00 	addd	$0x10:m,(ra)
    8066:	0e 57       	cmpd	(r1,r0),(ra)
    8068:	13 1f       	bne	*-0x804e <.L8>:s
    806a:	1a 60       	addd	$0x1:s,(r11,r10)
    806c:	4a 4c       	ashud	$4:s,(r11,r10)
    806e:	2c 55       	movd	(r3,r2),(r12)
    8070:	ac 61       	addd	(r11,r10),(r12)
    8072:	4a 61       	addd	(r5,r4),(r11,r10)
    8074:	8e 55       	movd	(r9,r8),(ra)
    8076:	4e 00 00 00 	andd	$0xf:l,(ra)
    807a:	0f 00 
    807c:	3e 56       	cmpd	$0x3:s,(ra)
    807e:	bc 12       	bhs	*+0x80d6 <.L13>:s
    8080:	a6 55       	movd	(r11,r10),(r7,r6)
    8082:	c4 55       	movd	(r12),(r5,r4)
    8084:	e0 55       	movd	(ra),(r1,r0)

00008086 <.L9>:
    8086:	d6 a0       	loadd	0x0:s(r7,r6),(r13)
    8088:	d4 e0       	stord	(r13),0x0:s(r5,r4)
    808a:	44 60       	addd	$0x4:s,(r5,r4)
    808c:	46 60       	addd	$0x4:s,(r7,r6)
    808e:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    8092:	30 56       	cmpd	$0x3:s,(r1,r0)
    8094:	a9 1f       	blo	*-0x8086 <.L9>:s
    8096:	be 60 fc ff 	addd	$0xfffc:m,(ra)
    809a:	4e 00 ff ff 	andd	$0xfffffffc:l,(ra)
    809e:	fc ff 
    80a0:	4e 60       	addd	$0x4:s,(ra)
    80a2:	48 00 00 00 	andd	$0x3:l,(r9,r8)
    80a6:	03 00 
    80a8:	a4 55       	movd	(r11,r10),(r5,r4)
    80aa:	e4 61       	addd	(ra),(r5,r4)
    80ac:	c0 55       	movd	(r12),(r1,r0)
    80ae:	e0 61       	addd	(ra),(r1,r0)
    80b0:	08 56       	cmpd	$0x0:s,(r9,r8)
    80b2:	04 1b       	beq	*-0x801a <.L15>:s

000080b4 <.L7>:
    80b4:	08 61       	addd	(r1,r0),(r9,r8)

000080b6 <.L10>:
    80b6:	64 b0       	loadb	0x0:s(r5,r4),r6
    80b8:	60 f0       	storb	r6,0x0:s(r1,r0)
    80ba:	10 60       	addd	$0x1:s,(r1,r0)
    80bc:	14 60       	addd	$0x1:s,(r5,r4)
    80be:	80 57       	cmpd	(r9,r8),(r1,r0)
    80c0:	1b 1f       	bne	*-0x80b6 <.L10>:s
    80c2:	20 5b       	movw	r2,r0
    80c4:	31 5b       	movw	r3,r1
    80c6:	67 02       	pop	$0x7,r7
    80c8:	9d 03       	popret	$0x2,r13,RA

000080ca <.L11>:
    80ca:	20 55       	movd	(r3,r2),(r1,r0)
    80cc:	08 56       	cmpd	$0x0:s,(r9,r8)
    80ce:	13 1f       	bne	*-0x80b4 <.L7>:s
    80d0:	e5 1a       	br	*-0x801a <.L15>:s

000080d2 <.L12>:
    80d2:	20 55       	movd	(r3,r2),(r1,r0)
    80d4:	e0 1f       	br	*-0x80b4 <.L7>:s

000080d6 <.L13>:
    80d6:	a4 55       	movd	(r11,r10),(r5,r4)
    80d8:	c0 55       	movd	(r12),(r1,r0)
    80da:	e8 55       	movd	(ra),(r9,r8)
    80dc:	08 56       	cmpd	$0x0:s,(r9,r8)
    80de:	1b 1e       	bne	*-0x80b4 <.L7>:s
    80e0:	ed 19       	br	*-0x801a <.L15>:s
	...

000080e4 <__read_r>:
    80e4:	1e 01       	push	RA
    80e6:	1c 01       	push	$0x2,r12
    80e8:	18 01       	push	$0x2,r8
    80ea:	fc 55       	movd	(sp),(r12)

000080ec <.LFE0>:
    80ec:	28 55       	movd	(r3,r2),(r9,r8)
    80ee:	42 5b       	movw	r4,r2
    80f0:	53 55       	movd	(r6,r5),(r4,r3)
    80f2:	5f a6       	loadd	0xc:s(sp),(r6,r5)
    80f4:	cc 60       	addd	$0xc:s,(r12)
    80f6:	13 00 00 30 	storw	$0x0:s,0xb086 <_errno>:l
    80fa:	86 b0 
    80fc:	ff c0 85 93 	bal	(ra),*-0x1480 <__read>:m

00008100 <.LVL3>:
    8100:	04 5e       	movxw	r0,(r5,r4)
    8102:	94 56       	cmpd	$-1:s,(r5,r4)
    8104:	05 10       	beq	*+0x810e <.L7>:s

00008106 <.L2>:
    8106:	51 5b       	movw	r5,r1
    8108:	18 02       	pop	$0x2,r8
    810a:	1c 02       	pop	$0x2,r12
    810c:	1e 03       	popret	RA

0000810e <.L7>:
    810e:	12 00 10 f0 	loadw	0xb086 <_errno>:l,r1
    8112:	86 b0 
    8114:	01 52       	cmpw	$0x0:s,r1
    8116:	08 1f       	beq	*-0x8106 <.L2>:s
    8118:	18 d0       	storw	r1,0x0:s(r9,r8)
    811a:	51 5b       	movw	r5,r1
    811c:	18 02       	pop	$0x2,r8
    811e:	1c 02       	pop	$0x2,r12
    8120:	1e 03       	popret	RA

00008122 <.LFE0>:
	...

00008124 <__realloc_r>:
    8124:	9d 01       	push	$0x2,r13,RA
    8126:	67 01       	push	$0x7,r7
    8128:	bf 60 ec ff 	addd	$0xffec:m,(sp)
    812c:	fc 55       	movd	(sp),(r12)
    812e:	bc 60 2a 00 	addd	$0x2a:m,(r12)
    8132:	2f e0       	stord	(r3,r2),0x0:s(sp)
    8134:	4d 55       	movd	(r5,r4),(r13)
    8136:	cc a0       	loadd	0x0:s(r12),(r12)
    8138:	cf e4       	stord	(r12),0x8:s(sp)
    813a:	04 56       	cmpd	$0x0:s,(r5,r4)
    813c:	00 18 62 02 	beq	*+0x839e <.L57>:m
    8140:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    8142:	ff c0 bb da 	bal	(ra),*-0x5bfc <___malloc_lock>:m

00008146 <.LVL1>:
    8146:	dc 55       	movd	(r13),(r12)
    8148:	bc 60 f8 ff 	addd	$0xfff8:m,(r12)
    814c:	ec a2       	loadd	0x4:s(r12),(ra)
    814e:	e8 55       	movd	(ra),(r9,r8)
    8150:	48 00 ff ff 	andd	$0xfffffffc:l,(r9,r8)
    8154:	fc ff 
    8156:	8f e2       	stord	(r9,r8),0x4:s(sp)
    8158:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    815a:	b0 60 0b 00 	addd	$0xb:m,(r1,r0)
    815e:	b0 56 16 00 	cmpd	$0x16:m,(r1,r0)
    8162:	a0 17       	blo	*+0x8242 <.L58>:s
    8164:	01 58       	movb	$0x0:s,r1
    8166:	ba 54 10 00 	movd	$0x10:m,(r11,r10)

0000816a <.L4>:
    816a:	8f a4       	loadd	0x8:s(sp),(r9,r8)
    816c:	8a 57       	cmpd	(r9,r8),(r11,r10)
    816e:	40 08       	shi	r0
    8170:	00 52       	cmpw	$0x0:s,r0
    8172:	10 18 40 02 	bne	*+0x83b2 <.L44>:m
    8176:	01 50       	cmpb	$0x0:s,r1
    8178:	10 18 3a 02 	bne	*+0x83b2 <.L44>:m
    817c:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    817e:	a8 57       	cmpd	(r11,r10),(r9,r8)
    8180:	79 16       	ble	*+0x8252 <.L7>:s
    8182:	84 55       	movd	(r9,r8),(r5,r4)
    8184:	c4 61       	addd	(r12),(r5,r4)
    8186:	12 00 20 b0 	loadd	0xac58 <___malloc_av_+0x8>:l,(r3,r2)
    818a:	58 ac 
    818c:	42 57       	cmpd	(r5,r4),(r3,r2)
    818e:	00 18 2e 02 	beq	*+0x83bc <.L8>:m
    8192:	64 a2       	loadd	0x4:s(r5,r4),(r7,r6)
    8194:	60 55       	movd	(r7,r6),(r1,r0)
    8196:	40 00 ff ff 	andd	$0xfffffffe:l,(r1,r0)
    819a:	fe ff 
    819c:	40 61       	addd	(r5,r4),(r1,r0)
    819e:	00 a2       	loadd	0x4:s(r1,r0),(r1,r0)
    81a0:	40 00 00 00 	andd	$0x1:l,(r1,r0)
    81a4:	01 00 
    81a6:	00 56       	cmpd	$0x0:s,(r1,r0)
    81a8:	02 17       	beq	*+0x828c <.L9>:s
    81aa:	06 54       	movd	$0x0:s,(r7,r6)
    81ac:	64 55       	movd	(r7,r6),(r5,r4)

000081ae <.L10>:
    81ae:	4e 00 00 00 	andd	$0x1:l,(ra)
    81b2:	01 00 
    81b4:	0e 56       	cmpd	$0x0:s,(ra)
    81b6:	10 18 22 01 	bne	*+0x82d8 <.L12>:m
    81ba:	0c a0       	loadd	0x0:s(r12),(r1,r0)
    81bc:	c8 55       	movd	(r12),(r9,r8)
    81be:	14 00 08 c0 	subd	(r1,r0),(r9,r8)
    81c2:	8f e6       	stord	(r9,r8),0xc:s(sp)
    81c4:	08 a2       	loadd	0x4:s(r9,r8),(r1,r0)
    81c6:	40 00 ff ff 	andd	$0xfffffffc:l,(r1,r0)
    81ca:	fc ff 
    81cc:	04 56       	cmpd	$0x0:s,(r5,r4)
    81ce:	00 18 6e 01 	beq	*+0x833c <.L13>:m
    81d2:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    81d4:	08 61       	addd	(r1,r0),(r9,r8)
    81d6:	68 61       	addd	(r7,r6),(r9,r8)
    81d8:	24 57       	cmpd	(r3,r2),(r5,r4)
    81da:	00 18 74 02 	beq	*+0x844e <.L59>:m
    81de:	8a 57       	cmpd	(r9,r8),(r11,r10)
    81e0:	c0 18 5c 01 	blt	*+0x833c <.L13>:m
    81e4:	04 a6       	loadd	0xc:s(r5,r4),(r1,r0)
    81e6:	24 a4       	loadd	0x8:s(r5,r4),(r3,r2)
    81e8:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    81ea:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    81ec:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    81ee:	04 a6       	loadd	0xc:s(r5,r4),(r1,r0)
    81f0:	24 a4       	loadd	0x8:s(r5,r4),(r3,r2)
    81f2:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    81f4:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    81f6:	4c 55       	movd	(r5,r4),(r12)
    81f8:	8c 60       	addd	$0x8:s,(r12)

000081fa <.LBB2>:
    81fa:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    81fc:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    8200:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    8204:	a0 18 f2 01 	blo	*+0x83f6 <.L24>:m

00008208 <.LBB3>:
    8208:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    820c:	b0 18 e4 01 	bhs	*+0x83f0 <.L42>:m
    8210:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    8212:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    8214:	2d a2       	loadd	0x4:s(r13),(r3,r2)
    8216:	24 e6       	stord	(r3,r2),0xc:s(r5,r4)
    8218:	b0 56 1b 00 	cmpd	$0x1b:m,(r1,r0)
    821c:	b0 18 60 01 	bhs	*+0x837c <.L54>:m

00008220 <.L26>:
    8220:	2d a4       	loadd	0x8:s(r13),(r3,r2)
    8222:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    8224:	24 e8       	stord	(r3,r2),0x10:s(r5,r4)
    8226:	2d a6       	loadd	0xc:s(r13),(r3,r2)
    8228:	24 ea       	stord	(r3,r2),0x14:s(r5,r4)
    822a:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    822e:	00 18 ec 02 	beq	*+0x851a <.L27>:m
    8232:	40 55       	movd	(r5,r4),(r1,r0)
    8234:	b0 60 18 00 	addd	$0x18:m,(r1,r0)
    8238:	d2 55       	movd	(r13),(r3,r2)
    823a:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    823e:	e0 18 48 01 	br	*+0x8386 <.L25>:m

00008242 <.L58>:
    8242:	0a 55       	movd	(r1,r0),(r11,r10)
    8244:	4a 00 ff ff 	andd	$0xfffffff8:l,(r11,r10)
    8248:	f8 ff 
    824a:	ba 56 ff 7f 	cmpd	$0x7fff:m,(r11,r10)
    824e:	a1 08       	slo	r1
    8250:	ed 18       	br	*-0x816a <.L4>:s

00008252 <.L7>:
    8252:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    8254:	c0 55       	movd	(r12),(r1,r0)

00008256 <.L11>:
    8256:	82 55       	movd	(r9,r8),(r3,r2)
    8258:	14 00 a2 c0 	subd	(r11,r10),(r3,r2)
    825c:	f2 56       	cmpd	$0xf:s,(r3,r2)
    825e:	a4 12       	blo	*+0x82a6 <.L60>:s
    8260:	4e 00 00 00 	andd	$0x1:l,(ra)
    8264:	01 00 
    8266:	14 00 8e 90 	ord	(r9,r8),(ra)
    826a:	e0 e2       	stord	(ra),0x4:s(r1,r0)
    826c:	08 61       	addd	(r1,r0),(r9,r8)
    826e:	28 a2       	loadd	0x4:s(r9,r8),(r3,r2)
    8270:	52 00 00 00 	ord	$0x1:l,(r3,r2)
    8274:	01 00 
    8276:	28 e2       	stord	(r3,r2),0x4:s(r9,r8)

00008278 <.L36>:
    8278:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    827a:	ff c0 87 d9 	bal	(ra),*-0x5c00 <___malloc_unlock>:m

0000827e <.LVL38>:
    827e:	d8 55       	movd	(r13),(r9,r8)

00008280 <.L51>:
    8280:	80 5b       	movw	r8,r0
    8282:	91 5b       	movw	r9,r1
    8284:	bf 60 14 00 	addd	$0x14:m,(sp)
    8288:	67 02       	pop	$0x7,r7
    828a:	9d 03       	popret	$0x2,r13,RA

0000828c <.L9>:
    828c:	46 00 ff ff 	andd	$0xfffffffc:l,(r7,r6)
    8290:	fc ff 
    8292:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    8294:	68 61       	addd	(r7,r6),(r9,r8)
    8296:	8a 57       	cmpd	(r9,r8),(r11,r10)
    8298:	cb 18       	blt	*-0x81ae <.L10>:s
    829a:	04 a6       	loadd	0xc:s(r5,r4),(r1,r0)
    829c:	24 a4       	loadd	0x8:s(r5,r4),(r3,r2)
    829e:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    82a0:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    82a2:	c0 55       	movd	(r12),(r1,r0)
    82a4:	e9 1d       	br	*-0x8256 <.L11>:s

000082a6 <.L60>:
    82a6:	04 55       	movd	(r1,r0),(r5,r4)
    82a8:	a4 61       	addd	(r11,r10),(r5,r4)
    82aa:	e8 55       	movd	(ra),(r9,r8)
    82ac:	48 00 00 00 	andd	$0x1:l,(r9,r8)
    82b0:	01 00 
    82b2:	14 00 a8 90 	ord	(r11,r10),(r9,r8)
    82b6:	80 e2       	stord	(r9,r8),0x4:s(r1,r0)
    82b8:	20 55       	movd	(r3,r2),(r1,r0)
    82ba:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    82be:	01 00 
    82c0:	04 e2       	stord	(r1,r0),0x4:s(r5,r4)
    82c2:	42 61       	addd	(r5,r4),(r3,r2)
    82c4:	02 a2       	loadd	0x4:s(r3,r2),(r1,r0)
    82c6:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    82ca:	01 00 
    82cc:	02 e2       	stord	(r1,r0),0x4:s(r3,r2)
    82ce:	84 60       	addd	$0x8:s,(r5,r4)
    82d0:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    82d2:	ff c0 af cb 	bal	(ra),*-0x4e80 <__free_r>:m

000082d6 <.LVL51>:
    82d6:	e1 1d       	br	*-0x8278 <.L36>:s

000082d8 <.L12>:
    82d8:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    82da:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    82dc:	ff c0 3d d0 	bal	(ra),*-0x5318 <__malloc_r>:m

000082e0 <.LVL54>:
    82e0:	08 55       	movd	(r1,r0),(r9,r8)
    82e2:	00 56       	cmpd	$0x0:s,(r1,r0)
    82e4:	03 12       	beq	*+0x832a <.L52>:s
    82e6:	ec a2       	loadd	0x4:s(r12),(ra)
    82e8:	02 55       	movd	(r1,r0),(r3,r2)
    82ea:	b2 60 f8 ff 	addd	$0xfff8:m,(r3,r2)
    82ee:	e0 55       	movd	(ra),(r1,r0)
    82f0:	40 00 ff ff 	andd	$0xfffffffe:l,(r1,r0)
    82f4:	fe ff 
    82f6:	c0 61       	addd	(r12),(r1,r0)
    82f8:	02 57       	cmpd	(r1,r0),(r3,r2)
    82fa:	00 18 f6 01 	beq	*+0x84f0 <.L61>:m
    82fe:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    8300:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    8304:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    8308:	a0 18 36 01 	blo	*+0x843e <.L30>:m
    830c:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    8310:	a4 16       	blo	*+0x83d8 <.L62>:s
    8312:	80 55       	movd	(r9,r8),(r1,r0)
    8314:	d4 55       	movd	(r13),(r5,r4)

00008316 <.L31>:
    8316:	24 a0       	loadd	0x0:s(r5,r4),(r3,r2)
    8318:	20 e0       	stord	(r3,r2),0x0:s(r1,r0)
    831a:	24 a2       	loadd	0x4:s(r5,r4),(r3,r2)
    831c:	20 e2       	stord	(r3,r2),0x4:s(r1,r0)
    831e:	24 a4       	loadd	0x8:s(r5,r4),(r3,r2)
    8320:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)

00008322 <.L34>:
    8322:	d4 55       	movd	(r13),(r5,r4)
    8324:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    8326:	ff c0 5b cb 	bal	(ra),*-0x4e80 <__free_r>:m

0000832a <.L52>:
    832a:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    832c:	ff c0 d5 d8 	bal	(ra),*-0x5c00 <___malloc_unlock>:m

00008330 <.LVL67>:
    8330:	80 5b       	movw	r8,r0
    8332:	91 5b       	movw	r9,r1
    8334:	bf 60 14 00 	addd	$0x14:m,(sp)
    8338:	67 02       	pop	$0x7,r7
    833a:	9d 03       	popret	$0x2,r13,RA

0000833c <.L13>:
    833c:	8f a6       	loadd	0xc:s(sp),(r9,r8)
    833e:	08 56       	cmpd	$0x0:s,(r9,r8)
    8340:	0c 1c       	beq	*-0x82d8 <.L12>:s
    8342:	8f a2       	loadd	0x4:s(sp),(r9,r8)
    8344:	08 61       	addd	(r1,r0),(r9,r8)
    8346:	8a 57       	cmpd	(r9,r8),(r11,r10)
    8348:	c8 1c       	blt	*-0x82d8 <.L12>:s
    834a:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    834c:	02 a6       	loadd	0xc:s(r3,r2),(r1,r0)
    834e:	22 a4       	loadd	0x8:s(r3,r2),(r3,r2)
    8350:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    8352:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    8354:	cf a6       	loadd	0xc:s(sp),(r12)
    8356:	8c 60       	addd	$0x8:s,(r12)
    8358:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    835a:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    835e:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    8362:	aa 14       	blo	*+0x83f6 <.L24>:s
    8364:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    8368:	b4 14       	bhs	*+0x83f0 <.L42>:s
    836a:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    836c:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    836e:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    8370:	2d a2       	loadd	0x4:s(r13),(r3,r2)
    8372:	24 e6       	stord	(r3,r2),0xc:s(r5,r4)
    8374:	b0 56 1b 00 	cmpd	$0x1b:m,(r1,r0)
    8378:	a0 18 a9 fe 	blo	*-0x8220 <.L26>:m

0000837c <.L54>:
    837c:	40 55       	movd	(r5,r4),(r1,r0)
    837e:	b0 60 10 00 	addd	$0x10:m,(r1,r0)
    8382:	d2 55       	movd	(r13),(r3,r2)
    8384:	82 60       	addd	$0x8:s,(r3,r2)

00008386 <.L25>:
    8386:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    8388:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)
    838a:	42 a2       	loadd	0x4:s(r3,r2),(r5,r4)
    838c:	40 e2       	stord	(r5,r4),0x4:s(r1,r0)
    838e:	22 a4       	loadd	0x8:s(r3,r2),(r3,r2)
    8390:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    8392:	3f a6       	loadd	0xc:s(sp),(r4,r3)
    8394:	e3 a2       	loadd	0x4:s(r4,r3),(ra)
    8396:	cd 55       	movd	(r12),(r13)
    8398:	30 55       	movd	(r4,r3),(r1,r0)
    839a:	e0 18 bd fe 	br	*-0x8256 <.L11>:m

0000839e <.L57>:
    839e:	c4 55       	movd	(r12),(r5,r4)
    83a0:	ff c0 79 cf 	bal	(ra),*-0x5318 <__malloc_r>:m

000083a4 <.LVL90>:
    83a4:	08 55       	movd	(r1,r0),(r9,r8)
    83a6:	80 5b       	movw	r8,r0
    83a8:	91 5b       	movw	r9,r1
    83aa:	bf 60 14 00 	addd	$0x14:m,(sp)
    83ae:	67 02       	pop	$0x7,r7
    83b0:	9d 03       	popret	$0x2,r13,RA

000083b2 <.L44>:
    83b2:	8f a0       	loadd	0x0:s(sp),(r9,r8)
    83b4:	c8 c2       	storw	$0xc:s,0x0:s(r9,r8)
    83b6:	08 54       	movd	$0x0:s,(r9,r8)
    83b8:	e0 18 c9 fe 	br	*-0x8280 <.L51>:m

000083bc <.L8>:
    83bc:	62 a2       	loadd	0x4:s(r3,r2),(r7,r6)
    83be:	46 00 ff ff 	andd	$0xfffffffc:l,(r7,r6)
    83c2:	fc ff 
    83c4:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    83c6:	60 61       	addd	(r7,r6),(r1,r0)
    83c8:	a4 55       	movd	(r11,r10),(r5,r4)
    83ca:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    83ce:	40 57       	cmpd	(r5,r4),(r1,r0)
    83d0:	7f 11       	ble	*+0x840e <.L38>:s
    83d2:	24 55       	movd	(r3,r2),(r5,r4)
    83d4:	e0 18 db fd 	br	*-0x81ae <.L10>:m

000083d8 <.L62>:
    83d8:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    83da:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    83dc:	2d a2       	loadd	0x4:s(r13),(r3,r2)
    83de:	28 e2       	stord	(r3,r2),0x4:s(r9,r8)
    83e0:	b0 56 1b 00 	cmpd	$0x1b:m,(r1,r0)
    83e4:	a7 17       	blo	*+0x84d2 <.L32>:s
    83e6:	80 55       	movd	(r9,r8),(r1,r0)
    83e8:	80 60       	addd	$0x8:s,(r1,r0)
    83ea:	d4 55       	movd	(r13),(r5,r4)
    83ec:	84 60       	addd	$0x8:s,(r5,r4)
    83ee:	e4 19       	br	*-0x8316 <.L31>:s

000083f0 <.L42>:
    83f0:	c0 55       	movd	(r12),(r1,r0)
    83f2:	d2 55       	movd	(r13),(r3,r2)
    83f4:	e9 1c       	br	*-0x8386 <.L25>:s

000083f6 <.L24>:
    83f6:	10 01       	push	$0x2,r0
    83f8:	d4 55       	movd	(r13),(r5,r4)
    83fa:	c2 55       	movd	(r12),(r3,r2)
    83fc:	ff c0 ed fb 	bal	(ra),*-0x7fe8 <_memmove>:m

00008400 <.LVL108>:
    8400:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    8402:	e4 a2       	loadd	0x4:s(r5,r4),(ra)
    8404:	4f 60       	addd	$0x4:s,(sp)
    8406:	cd 55       	movd	(r12),(r13)
    8408:	0f a6       	loadd	0xc:s(sp),(r1,r0)
    840a:	e0 18 4d fe 	br	*-0x8256 <.L11>:m

0000840e <.L38>:
    840e:	c2 55       	movd	(r12),(r3,r2)
    8410:	a2 61       	addd	(r11,r10),(r3,r2)
    8412:	13 00 20 b0 	stord	(r3,r2),0xac58 <___malloc_av_+0x8>:l
    8416:	58 ac 
    8418:	14 00 a0 c0 	subd	(r11,r10),(r1,r0)
    841c:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    8420:	01 00 
    8422:	02 e2       	stord	(r1,r0),0x4:s(r3,r2)
    8424:	0c a2       	loadd	0x4:s(r12),(r1,r0)
    8426:	40 00 00 00 	andd	$0x1:l,(r1,r0)
    842a:	01 00 
    842c:	14 00 a0 90 	ord	(r11,r10),(r1,r0)
    8430:	0c e2       	stord	(r1,r0),0x4:s(r12)
    8432:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    8434:	ff c0 cd d7 	bal	(ra),*-0x5c00 <___malloc_unlock>:m

00008438 <.LVL113>:
    8438:	d8 55       	movd	(r13),(r9,r8)
    843a:	e0 18 47 fe 	br	*-0x8280 <.L51>:m

0000843e <.L30>:
    843e:	10 01       	push	$0x2,r0
    8440:	d4 55       	movd	(r13),(r5,r4)
    8442:	82 55       	movd	(r9,r8),(r3,r2)
    8444:	ff c0 a5 fb 	bal	(ra),*-0x7fe8 <_memmove>:m

00008448 <.LVL118>:
    8448:	4f 60       	addd	$0x4:s,(sp)
    844a:	e0 18 d9 fe 	br	*-0x8322 <.L34>:m

0000844e <.L59>:
    844e:	8f e8       	stord	(r9,r8),0x10:s(sp)
    8450:	a2 55       	movd	(r11,r10),(r3,r2)
    8452:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    8456:	28 57       	cmpd	(r3,r2),(r9,r8)
    8458:	60 18 e5 fe 	bgt	*-0x833c <.L13>:m
    845c:	8f a6       	loadd	0xc:s(sp),(r9,r8)
    845e:	08 a6       	loadd	0xc:s(r9,r8),(r1,r0)
    8460:	28 a4       	loadd	0x8:s(r9,r8),(r3,r2)
    8462:	02 e6       	stord	(r1,r0),0xc:s(r3,r2)
    8464:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)
    8466:	88 60       	addd	$0x8:s,(r9,r8)
    8468:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    846a:	b0 60 fc ff 	addd	$0xfffc:m,(r1,r0)
    846e:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    8472:	a5 16       	blo	*+0x853c <.L15>:s
    8474:	b0 56 13 00 	cmpd	$0x13:m,(r1,r0)
    8478:	bf 15       	bhs	*+0x8536 <.L40>:s
    847a:	2d a0       	loadd	0x0:s(r13),(r3,r2)
    847c:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    847e:	24 e4       	stord	(r3,r2),0x8:s(r5,r4)
    8480:	2d a2       	loadd	0x4:s(r13),(r3,r2)
    8482:	24 e6       	stord	(r3,r2),0xc:s(r5,r4)
    8484:	b0 56 1b 00 	cmpd	$0x1b:m,(r1,r0)
    8488:	a1 16       	blo	*+0x854a <.L17>:s
    848a:	40 55       	movd	(r5,r4),(r1,r0)
    848c:	b0 60 10 00 	addd	$0x10:m,(r1,r0)
    8490:	d2 55       	movd	(r13),(r3,r2)
    8492:	82 60       	addd	$0x8:s,(r3,r2)

00008494 <.L16>:
    8494:	42 a0       	loadd	0x0:s(r3,r2),(r5,r4)
    8496:	40 e0       	stord	(r5,r4),0x0:s(r1,r0)
    8498:	42 a2       	loadd	0x4:s(r3,r2),(r5,r4)
    849a:	40 e2       	stord	(r5,r4),0x4:s(r1,r0)
    849c:	22 a4       	loadd	0x8:s(r3,r2),(r3,r2)
    849e:	20 e4       	stord	(r3,r2),0x8:s(r1,r0)

000084a0 <.L19>:
    84a0:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    84a2:	a2 61       	addd	(r11,r10),(r3,r2)
    84a4:	13 00 20 b0 	stord	(r3,r2),0xac58 <___malloc_av_+0x8>:l
    84a8:	58 ac 
    84aa:	0f a8       	loadd	0x10:s(sp),(r1,r0)
    84ac:	14 00 a0 c0 	subd	(r11,r10),(r1,r0)
    84b0:	50 00 00 00 	ord	$0x1:l,(r1,r0)
    84b4:	01 00 
    84b6:	02 e2       	stord	(r1,r0),0x4:s(r3,r2)
    84b8:	3f a6       	loadd	0xc:s(sp),(r4,r3)
    84ba:	03 a2       	loadd	0x4:s(r4,r3),(r1,r0)
    84bc:	40 00 00 00 	andd	$0x1:l,(r1,r0)
    84c0:	01 00 
    84c2:	14 00 a0 90 	ord	(r11,r10),(r1,r0)
    84c6:	03 e2       	stord	(r1,r0),0x4:s(r4,r3)
    84c8:	2f a0       	loadd	0x0:s(sp),(r3,r2)
    84ca:	ff c0 37 d7 	bal	(ra),*-0x5c00 <___malloc_unlock>:m

000084ce <.LVL139>:
    84ce:	e0 18 b3 fd 	br	*-0x8280 <.L51>:m

000084d2 <.L32>:
    84d2:	2d a4       	loadd	0x8:s(r13),(r3,r2)
    84d4:	28 e4       	stord	(r3,r2),0x8:s(r9,r8)
    84d6:	2d a6       	loadd	0xc:s(r13),(r3,r2)
    84d8:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    84da:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    84de:	02 11       	beq	*+0x8502 <.L33>:s
    84e0:	80 55       	movd	(r9,r8),(r1,r0)
    84e2:	b0 60 10 00 	addd	$0x10:m,(r1,r0)
    84e6:	d4 55       	movd	(r13),(r5,r4)
    84e8:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    84ec:	e0 18 2b fe 	br	*-0x8316 <.L31>:m

000084f0 <.L61>:
    84f0:	82 a2       	loadd	0x4:s(r3,r2),(r9,r8)
    84f2:	48 00 ff ff 	andd	$0xfffffffc:l,(r9,r8)
    84f6:	fc ff 
    84f8:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    84fa:	08 61       	addd	(r1,r0),(r9,r8)
    84fc:	c0 55       	movd	(r12),(r1,r0)
    84fe:	e0 18 59 fd 	br	*-0x8256 <.L11>:m

00008502 <.L33>:
    8502:	0d a8       	loadd	0x10:s(r13),(r1,r0)
    8504:	08 e8       	stord	(r1,r0),0x10:s(r9,r8)
    8506:	0d aa       	loadd	0x14:s(r13),(r1,r0)
    8508:	08 ea       	stord	(r1,r0),0x14:s(r9,r8)
    850a:	80 55       	movd	(r9,r8),(r1,r0)
    850c:	b0 60 18 00 	addd	$0x18:m,(r1,r0)
    8510:	d4 55       	movd	(r13),(r5,r4)
    8512:	b4 60 18 00 	addd	$0x18:m,(r5,r4)
    8516:	e0 18 01 fe 	br	*-0x8316 <.L31>:m

0000851a <.L27>:
    851a:	0d a8       	loadd	0x10:s(r13),(r1,r0)
    851c:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    851e:	02 ec       	stord	(r1,r0),0x18:s(r3,r2)
    8520:	0d aa       	loadd	0x14:s(r13),(r1,r0)
    8522:	02 ef 1c 00 	stord	(r1,r0),0x1c:m(r3,r2)
    8526:	20 55       	movd	(r3,r2),(r1,r0)
    8528:	b0 60 20 00 	addd	$0x20:m,(r1,r0)
    852c:	d2 55       	movd	(r13),(r3,r2)
    852e:	b2 60 18 00 	addd	$0x18:m,(r3,r2)
    8532:	e0 18 55 fe 	br	*-0x8386 <.L25>:m

00008536 <.L40>:
    8536:	80 55       	movd	(r9,r8),(r1,r0)
    8538:	d2 55       	movd	(r13),(r3,r2)
    853a:	ed 1a       	br	*-0x8494 <.L16>:s

0000853c <.L15>:
    853c:	10 01       	push	$0x2,r0
    853e:	d4 55       	movd	(r13),(r5,r4)
    8540:	82 55       	movd	(r9,r8),(r3,r2)
    8542:	ff c0 a7 fa 	bal	(ra),*-0x7fe8 <_memmove>:m

00008546 <.LVL165>:
    8546:	4f 60       	addd	$0x4:s,(sp)
    8548:	ec 1a       	br	*-0x84a0 <.L19>:s

0000854a <.L17>:
    854a:	2d a4       	loadd	0x8:s(r13),(r3,r2)
    854c:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    854e:	24 e8       	stord	(r3,r2),0x10:s(r5,r4)
    8550:	2d a6       	loadd	0xc:s(r13),(r3,r2)
    8552:	24 ea       	stord	(r3,r2),0x14:s(r5,r4)
    8554:	b0 56 24 00 	cmpd	$0x24:m,(r1,r0)
    8558:	08 10       	beq	*+0x8568 <.L18>:s
    855a:	40 55       	movd	(r5,r4),(r1,r0)
    855c:	b0 60 18 00 	addd	$0x18:m,(r1,r0)
    8560:	d2 55       	movd	(r13),(r3,r2)
    8562:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    8566:	e7 19       	br	*-0x8494 <.L16>:s

00008568 <.L18>:
    8568:	0d a8       	loadd	0x10:s(r13),(r1,r0)
    856a:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    856c:	02 ec       	stord	(r1,r0),0x18:s(r3,r2)
    856e:	0d aa       	loadd	0x14:s(r13),(r1,r0)
    8570:	02 ef 1c 00 	stord	(r1,r0),0x1c:m(r3,r2)
    8574:	20 55       	movd	(r3,r2),(r1,r0)
    8576:	b0 60 20 00 	addd	$0x20:m,(r1,r0)
    857a:	d2 55       	movd	(r13),(r3,r2)
    857c:	b2 60 18 00 	addd	$0x18:m,(r3,r2)
    8580:	ea 18       	br	*-0x8494 <.L16>:s
	...

00008584 <_cleanup_glue>:
    8584:	1e 01       	push	RA
    8586:	38 01       	push	$0x4,r8
    8588:	2a 55       	movd	(r3,r2),(r11,r10)
    858a:	48 55       	movd	(r5,r4),(r9,r8)
    858c:	44 a0       	loadd	0x0:s(r5,r4),(r5,r4)
    858e:	04 56       	cmpd	$0x0:s,(r5,r4)
    8590:	03 10       	beq	*+0x8596 <.L2>:s
    8592:	ff c0 f3 ff 	bal	(ra),*-0x8584 <_cleanup_glue>:m

00008596 <.L2>:
    8596:	84 55       	movd	(r9,r8),(r5,r4)
    8598:	a2 55       	movd	(r11,r10),(r3,r2)
    859a:	ff c0 e7 c8 	bal	(ra),*-0x4e80 <__free_r>:m

0000859e <.LVL3>:
    859e:	38 02       	pop	$0x4,r8
    85a0:	1e 03       	popret	RA

000085a2 <.LFE0>:
	...

000085a4 <__reclaim_reent>:
    85a4:	1e 01       	push	RA
    85a6:	67 01       	push	$0x7,r7
    85a8:	28 55       	movd	(r3,r2),(r9,r8)
    85aa:	12 00 00 b0 	loadd	0xa808 <__impure_ptr>:l,(r1,r0)
    85ae:	08 a8 
    85b0:	02 57       	cmpd	(r1,r0),(r3,r2)
    85b2:	02 14       	beq	*+0x8636 <.L7>:s
    85b4:	22 af 48 00 	loadd	0x48:m(r3,r2),(r3,r2)
    85b8:	02 56       	cmpd	$0x0:s,(r3,r2)
    85ba:	0a 11       	beq	*+0x85ee <.L10>:s
    85bc:	0a 54       	movd	$0x0:s,(r11,r10)

000085be <.L13>:
    85be:	20 55       	movd	(r3,r2),(r1,r0)
    85c0:	a0 61       	addd	(r11,r10),(r1,r0)
    85c2:	40 a0       	loadd	0x0:s(r1,r0),(r5,r4)
    85c4:	04 56       	cmpd	$0x0:s,(r5,r4)
    85c6:	0c 10       	beq	*+0x85de <.L11>:s

000085c8 <.L32>:
    85c8:	c4 90       	loadw	0x0:s(r5,r4),r12
    85ca:	74 91       	loadw	0x2:s(r5,r4),r7
    85cc:	82 55       	movd	(r9,r8),(r3,r2)
    85ce:	ff c0 b3 c8 	bal	(ra),*-0x4e80 <__free_r>:m

000085d2 <.LVL9>:
    85d2:	c4 5b       	movw	r12,r4
    85d4:	75 5b       	movw	r7,r5
    85d6:	04 56       	cmpd	$0x0:s,(r5,r4)
    85d8:	18 1f       	bne	*-0x85c8 <.L32>:s
    85da:	28 af 48 00 	loadd	0x48:m(r9,r8),(r3,r2)

000085de <.L11>:
    85de:	4a 60       	addd	$0x4:s,(r11,r10)

000085e0 <.LBE3>:
    85e0:	ba 56 80 00 	cmpd	$0x80:m,(r11,r10)
    85e4:	1d 1e       	bne	*-0x85be <.L13>:s
    85e6:	24 55       	movd	(r3,r2),(r5,r4)
    85e8:	82 55       	movd	(r9,r8),(r3,r2)
    85ea:	ff c0 97 c8 	bal	(ra),*-0x4e80 <__free_r>:m

000085ee <.L10>:
    85ee:	48 af 3c 00 	loadd	0x3c:m(r9,r8),(r5,r4)
    85f2:	04 56       	cmpd	$0x0:s,(r5,r4)
    85f4:	04 10       	beq	*+0x85fc <.L14>:s
    85f6:	82 55       	movd	(r9,r8),(r3,r2)
    85f8:	ff c0 89 c8 	bal	(ra),*-0x4e80 <__free_r>:m

000085fc <.L14>:
    85fc:	48 af 08 01 	loadd	0x108:m(r9,r8),(r5,r4)
    8600:	04 56       	cmpd	$0x0:s,(r5,r4)
    8602:	0f 10       	beq	*+0x8620 <.L18>:s
    8604:	8a 55       	movd	(r9,r8),(r11,r10)
    8606:	ba 60 0c 01 	addd	$0x10c:m,(r11,r10)
    860a:	a4 57       	cmpd	(r11,r10),(r5,r4)
    860c:	0a 10       	beq	*+0x8620 <.L18>:s

0000860e <.L31>:
    860e:	c4 90       	loadw	0x0:s(r5,r4),r12
    8610:	74 91       	loadw	0x2:s(r5,r4),r7
    8612:	82 55       	movd	(r9,r8),(r3,r2)
    8614:	ff c0 6d c8 	bal	(ra),*-0x4e80 <__free_r>:m

00008618 <.LVL15>:
    8618:	c4 5b       	movw	r12,r4
    861a:	75 5b       	movw	r7,r5
    861c:	4a 57       	cmpd	(r5,r4),(r11,r10)
    861e:	18 1f       	bne	*-0x860e <.L31>:s

00008620 <.L18>:
    8620:	48 af 50 00 	loadd	0x50:m(r9,r8),(r5,r4)
    8624:	04 56       	cmpd	$0x0:s,(r5,r4)
    8626:	04 10       	beq	*+0x862e <.L17>:s
    8628:	82 55       	movd	(r9,r8),(r3,r2)
    862a:	ff c0 57 c8 	bal	(ra),*-0x4e80 <__free_r>:m

0000862e <.L17>:
    862e:	08 9f 34 00 	loadw	0x34:m(r9,r8),r0
    8632:	00 52       	cmpw	$0x0:s,r0
    8634:	13 10       	bne	*+0x863a <.L41>:s

00008636 <.L7>:
    8636:	67 02       	pop	$0x7,r7
    8638:	1e 03       	popret	RA

0000863a <.L41>:
    863a:	08 af 38 00 	loadd	0x38:m(r9,r8),(r1,r0)
    863e:	82 55       	movd	(r9,r8),(r3,r2)
    8640:	d0 00       	jal	(r1,r0)

00008642 <.LVL18>:
    8642:	48 af a0 02 	loadd	0x2a0:m(r9,r8),(r5,r4)
    8646:	04 56       	cmpd	$0x0:s,(r5,r4)
    8648:	07 1f       	beq	*-0x8636 <.L7>:s
    864a:	82 55       	movd	(r9,r8),(r3,r2)
    864c:	ff c0 39 ff 	bal	(ra),*-0x8584 <_cleanup_glue>:m

00008650 <.LVL19>:
    8650:	67 02       	pop	$0x7,r7
    8652:	1e 03       	popret	RA

00008654 <.LFE1>:
	...

00008656 <__wrapup_reent>:
    8656:	1e 01       	push	RA
    8658:	47 01       	push	$0x5,r7
    865a:	2a 55       	movd	(r3,r2),(r11,r10)
    865c:	02 56       	cmpd	$0x0:s,(r3,r2)
    865e:	0d 11       	beq	*+0x8698 <.L56>:s

00008660 <.L43>:
    8660:	8a af 08 01 	loadd	0x108:m(r11,r10),(r9,r8)
    8664:	08 56       	cmpd	$0x0:s,(r9,r8)
    8666:	01 11       	beq	*+0x8688 <.L49>:s

00008668 <.L52>:
    8668:	78 92       	loadw	0x4:s(r9,r8),r7
    866a:	97 32       	addw	$-1:s,r7
    866c:	07 52       	cmpw	$0x0:s,r7
    866e:	6a 10       	bgt	*+0x8682 <.L51>:s

00008670 <.L53>:
    8670:	70 5e       	movxw	r7,(r1,r0)
    8672:	20 60       	addd	$0x2:s,(r1,r0)
    8674:	20 4c       	ashud	$2:s,(r1,r0)
    8676:	80 61       	addd	(r9,r8),(r1,r0)
    8678:	00 a0       	loadd	0x0:s(r1,r0),(r1,r0)
    867a:	d0 00       	jal	(r1,r0)
    867c:	97 32       	addw	$-1:s,r7
    867e:	97 52       	cmpw	$-1:s,r7
    8680:	18 1f       	bne	*-0x8670 <.L53>:s

00008682 <.L51>:
    8682:	88 a0       	loadd	0x0:s(r9,r8),(r9,r8)
    8684:	08 56       	cmpd	$0x0:s,(r9,r8)
    8686:	11 1f       	bne	*-0x8668 <.L52>:s

00008688 <.L49>:
    8688:	0a af 38 00 	loadd	0x38:m(r11,r10),(r1,r0)
    868c:	00 56       	cmpd	$0x0:s,(r1,r0)
    868e:	03 10       	beq	*+0x8694 <.L42>:s
    8690:	a2 55       	movd	(r11,r10),(r3,r2)
    8692:	d0 00       	jal	(r1,r0)

00008694 <.L42>:
    8694:	47 02       	pop	$0x5,r7
    8696:	1e 03       	popret	RA

00008698 <.L56>:
    8698:	12 00 a0 b0 	loadd	0xa808 <__impure_ptr>:l,(r11,r10)
    869c:	08 a8 
    869e:	e1 1e       	br	*-0x8660 <.L43>:s

000086a0 <___swbuf_r>:
    86a0:	1e 01       	push	RA

000086a2 <.LFE2>:
    86a2:	47 01       	push	$0x5,r7
    86a4:	2a 55       	movd	(r3,r2),(r11,r10)
    86a6:	47 5b       	movw	r4,r7
    86a8:	58 55       	movd	(r6,r5),(r9,r8)
    86aa:	02 56       	cmpd	$0x0:s,(r3,r2)
    86ac:	05 10       	beq	*+0x86b6 <.L2>:s
    86ae:	02 9f 34 00 	loadw	0x34:m(r3,r2),r0
    86b2:	00 52       	cmpw	$0x0:s,r0
    86b4:	00 16       	beq	*+0x8774 <.L22>:s

000086b6 <.L2>:
    86b6:	08 9a       	loadw	0x14:s(r9,r8),r0
    86b8:	08 d3       	storw	r0,0x6:s(r9,r8)
    86ba:	28 94       	loadw	0x8:s(r9,r8),r2
    86bc:	20 5b       	movw	r2,r0
    86be:	80 22       	andw	$0x8:s,r0
    86c0:	00 52       	cmpw	$0x0:s,r0
    86c2:	00 15       	beq	*+0x8762 <.L3>:s
    86c4:	08 a6       	loadd	0xc:s(r9,r8),(r1,r0)
    86c6:	00 56       	cmpd	$0x0:s,(r1,r0)
    86c8:	0d 14       	beq	*+0x8762 <.L3>:s

000086ca <.L4>:
    86ca:	b7 22 ff 00 	andw	$0xff:m,r7
    86ce:	23 5b       	movw	r2,r3
    86d0:	b3 22 00 20 	andw	$0x2000:m,r3
    86d4:	03 52       	cmpw	$0x0:s,r3
    86d6:	0b 11       	beq	*+0x870c <.L23>:s
    86d8:	28 a0       	loadd	0x0:s(r9,r8),(r3,r2)
    86da:	24 5b       	movw	r2,r4
    86dc:	04 3b       	subw	r0,r4
    86de:	40 5b       	movw	r4,r0
    86e0:	18 98       	loadw	0x10:s(r9,r8),r1
    86e2:	14 53       	cmpw	r1,r4
    86e4:	74 12       	ble	*+0x872c <.L8>:s

000086e6 <.L24>:
    86e6:	10 32       	addw	$0x1:s,r0
    86e8:	18 93       	loadw	0x6:s(r9,r8),r1
    86ea:	91 32       	addw	$-1:s,r1
    86ec:	18 d3       	storw	r1,0x6:s(r9,r8)
    86ee:	72 f0       	storb	r7,0x0:s(r3,r2)
    86f0:	12 60       	addd	$0x1:s,(r3,r2)
    86f2:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    86f4:	18 98       	loadw	0x10:s(r9,r8),r1
    86f6:	01 53       	cmpw	r0,r1
    86f8:	0b 12       	beq	*+0x874e <.L11>:s

000086fa <.L25>:
    86fa:	08 94       	loadw	0x8:s(r9,r8),r0
    86fc:	10 22       	andw	$0x1:s,r0
    86fe:	00 52       	cmpw	$0x0:s,r0
    8700:	03 10       	beq	*+0x8706 <.L6>:s
    8702:	a7 52       	cmpw	$0xa:s,r7
    8704:	05 12       	beq	*+0x874e <.L11>:s

00008706 <.L6>:
    8706:	70 5b       	movw	r7,r0
    8708:	47 02       	pop	$0x5,r7
    870a:	1e 03       	popret	RA

0000870c <.L23>:
    870c:	b2 26 00 20 	orw	$0x2000:m,r2
    8710:	28 d4       	storw	r2,0x8:s(r9,r8)
    8712:	28 9f 58 00 	loadw	0x58:m(r9,r8),r2
    8716:	b2 22 ff df 	andw	$0xdfff:m,r2
    871a:	28 df 58 00 	storw	r2,0x58:m(r9,r8)
    871e:	28 a0       	loadd	0x0:s(r9,r8),(r3,r2)
    8720:	24 5b       	movw	r2,r4
    8722:	04 3b       	subw	r0,r4
    8724:	40 5b       	movw	r4,r0
    8726:	18 98       	loadw	0x10:s(r9,r8),r1
    8728:	14 53       	cmpw	r1,r4
    872a:	6e 1d       	bgt	*-0x86e6 <.L24>:s

0000872c <.L8>:
    872c:	84 55       	movd	(r9,r8),(r5,r4)
    872e:	a2 55       	movd	(r11,r10),(r3,r2)
    8730:	ff c0 2d c4 	bal	(ra),*-0x4b5c <__fflush_r>:m

00008734 <.LVL8>:
    8734:	00 52       	cmpw	$0x0:s,r0
    8736:	12 11       	bne	*+0x875a <.L10>:s
    8738:	28 a0       	loadd	0x0:s(r9,r8),(r3,r2)
    873a:	10 5a       	movw	$0x1:s,r0
    873c:	18 93       	loadw	0x6:s(r9,r8),r1
    873e:	91 32       	addw	$-1:s,r1
    8740:	18 d3       	storw	r1,0x6:s(r9,r8)
    8742:	72 f0       	storb	r7,0x0:s(r3,r2)
    8744:	12 60       	addd	$0x1:s,(r3,r2)
    8746:	28 e0       	stord	(r3,r2),0x0:s(r9,r8)
    8748:	18 98       	loadw	0x10:s(r9,r8),r1
    874a:	01 53       	cmpw	r0,r1
    874c:	17 1d       	bne	*-0x86fa <.L25>:s

0000874e <.L11>:
    874e:	84 55       	movd	(r9,r8),(r5,r4)
    8750:	a2 55       	movd	(r11,r10),(r3,r2)
    8752:	ff c0 0b c4 	bal	(ra),*-0x4b5c <__fflush_r>:m

00008756 <.LVL11>:
    8756:	00 52       	cmpw	$0x0:s,r0
    8758:	07 1d       	beq	*-0x8706 <.L6>:s

0000875a <.L10>:
    875a:	97 5a       	movw	$-1:s,r7
    875c:	70 5b       	movw	r7,r0
    875e:	47 02       	pop	$0x5,r7
    8760:	1e 03       	popret	RA

00008762 <.L3>:
    8762:	84 55       	movd	(r9,r8),(r5,r4)
    8764:	a2 55       	movd	(r11,r10),(r3,r2)
    8766:	ff c0 cb aa 	bal	(ra),*-0x3230 <___swsetup_r>:m

0000876a <.LVL14>:
    876a:	00 52       	cmpw	$0x0:s,r0
    876c:	17 1f       	bne	*-0x875a <.L10>:s
    876e:	28 94       	loadw	0x8:s(r9,r8),r2
    8770:	08 a6       	loadd	0xc:s(r9,r8),(r1,r0)
    8772:	ec 1a       	br	*-0x86ca <.L4>:s

00008774 <.L22>:
    8774:	ff c0 11 c5 	bal	(ra),*-0x4c84 <___sinit>:m

00008778 <.LVL16>:
    8778:	ef 19       	br	*-0x86b6 <.L2>:s

0000877a <___swbuf>:
    877a:	1e 01       	push	RA
    877c:	35 55       	movd	(r4,r3),(r6,r5)
    877e:	24 5b       	movw	r2,r4
    8780:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    8784:	08 a8 
    8786:	ff c0 1b ff 	bal	(ra),*-0x86a0 <___swbuf_r>:m

0000878a <.LVL19>:
    878a:	1e 03       	popret	RA

0000878c <__wcrtomb_r>:
    878c:	9d 01       	push	$0x2,r13,RA
    878e:	67 01       	push	$0x7,r7
    8790:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)
    8794:	fc 55       	movd	(sp),(r12)

00008796 <.LFE1>:
    8796:	bc 60 22 00 	addd	$0x22:m,(r12)
    879a:	28 55       	movd	(r3,r2),(r9,r8)
    879c:	4d 55       	movd	(r5,r4),(r13)
    879e:	67 5b       	movw	r6,r7
    87a0:	cc a0       	loadd	0x0:s(r12),(r12)
    87a2:	12 00 a0 b0 	loadd	0xb058 <___wctomb>:l,(r11,r10)
    87a6:	58 b0 
    87a8:	04 56       	cmpd	$0x0:s,(r5,r4)
    87aa:	07 11       	beq	*+0x87d8 <.L7>:s
    87ac:	ff c0 37 ca 	bal	(ra),*-0x51e2 <___locale_charset>:m

000087b0 <.LVL2>:
    87b0:	1c 01       	push	$0x2,r12
    87b2:	10 01       	push	$0x2,r0
    87b4:	76 5b       	movw	r7,r6
    87b6:	d4 55       	movd	(r13),(r5,r4)
    87b8:	82 55       	movd	(r9,r8),(r3,r2)
    87ba:	da 00       	jal	(r11,r10)

000087bc <.LVL3>:
    87bc:	8f 60       	addd	$0x8:s,(sp)

000087be <.L3>:
    87be:	02 5e       	movxw	r0,(r3,r2)
    87c0:	90 52       	cmpw	$-1:s,r0
    87c2:	16 10       	bne	*+0x87ce <.L5>:s
    87c4:	0c c2       	storw	$0x0:s,0x0:s(r12)
    87c6:	b0 5a 8a 00 	movw	$0x8a:m,r0
    87ca:	08 d0       	storw	r0,0x0:s(r9,r8)
    87cc:	92 54       	movd	$-1:s,(r3,r2)

000087ce <.L5>:
    87ce:	20 5b       	movw	r2,r0
    87d0:	31 5b       	movw	r3,r1
    87d2:	cf 60       	addd	$0xc:s,(sp)
    87d4:	67 02       	pop	$0x7,r7
    87d6:	9d 03       	popret	$0x2,r13,RA

000087d8 <.L7>:
    87d8:	ff c0 0b ca 	bal	(ra),*-0x51e2 <___locale_charset>:m

000087dc <.LVL7>:
    87dc:	1c 01       	push	$0x2,r12
    87de:	10 01       	push	$0x2,r0
    87e0:	06 5a       	movw	$0x0:s,r6
    87e2:	f4 55       	movd	(sp),(r5,r4)
    87e4:	84 60       	addd	$0x8:s,(r5,r4)
    87e6:	82 55       	movd	(r9,r8),(r3,r2)
    87e8:	da 00       	jal	(r11,r10)

000087ea <.LVL8>:
    87ea:	8f 60       	addd	$0x8:s,(sp)
    87ec:	e9 1e       	br	*-0x87be <.L3>:s

000087ee <.LFE0>:
	...

000087f0 <_wcrtomb>:
    87f0:	1e 01       	push	RA
    87f2:	67 01       	push	$0x7,r7
    87f4:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)
    87f8:	28 55       	movd	(r3,r2),(r9,r8)
    87fa:	47 5b       	movw	r4,r7
    87fc:	5c 55       	movd	(r6,r5),(r12)
    87fe:	02 56       	cmpd	$0x0:s,(r3,r2)
    8800:	0f 11       	beq	*+0x883e <.L13>:s
    8802:	12 00 a0 b0 	loadd	0xb058 <___wctomb>:l,(r11,r10)
    8806:	58 b0 
    8808:	ff c0 db c9 	bal	(ra),*-0x51e2 <___locale_charset>:m

0000880c <.LVL11>:
    880c:	1c 01       	push	$0x2,r12
    880e:	10 01       	push	$0x2,r0
    8810:	76 5b       	movw	r7,r6
    8812:	84 55       	movd	(r9,r8),(r5,r4)
    8814:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    8818:	08 a8 
    881a:	da 00       	jal	(r11,r10)

0000881c <.LVL12>:
    881c:	8f 60       	addd	$0x8:s,(sp)

0000881e <.L10>:
    881e:	02 5e       	movxw	r0,(r3,r2)
    8820:	90 52       	cmpw	$-1:s,r0
    8822:	19 10       	bne	*+0x8834 <.L12>:s
    8824:	0c c2       	storw	$0x0:s,0x0:s(r12)
    8826:	b2 5a 8a 00 	movw	$0x8a:m,r2
    882a:	12 00 00 b0 	loadd	0xa808 <__impure_ptr>:l,(r1,r0)
    882e:	08 a8 
    8830:	20 d0       	storw	r2,0x0:s(r1,r0)
    8832:	92 54       	movd	$-1:s,(r3,r2)

00008834 <.L12>:
    8834:	20 5b       	movw	r2,r0
    8836:	31 5b       	movw	r3,r1
    8838:	cf 60       	addd	$0xc:s,(sp)
    883a:	67 02       	pop	$0x7,r7
    883c:	1e 03       	popret	RA

0000883e <.L13>:
    883e:	12 00 80 b0 	loadd	0xb058 <___wctomb>:l,(r9,r8)
    8842:	58 b0 
    8844:	ff c0 9f c9 	bal	(ra),*-0x51e2 <___locale_charset>:m

00008848 <.LVL16>:
    8848:	1c 01       	push	$0x2,r12
    884a:	10 01       	push	$0x2,r0
    884c:	06 5a       	movw	$0x0:s,r6
    884e:	f4 55       	movd	(sp),(r5,r4)
    8850:	84 60       	addd	$0x8:s,(r5,r4)
    8852:	12 00 20 b0 	loadd	0xa808 <__impure_ptr>:l,(r3,r2)
    8856:	08 a8 
    8858:	d8 00       	jal	(r9,r8)

0000885a <.LVL17>:
    885a:	8f 60       	addd	$0x8:s,(sp)
    885c:	e1 1e       	br	*-0x881e <.L10>:s

0000885e <.LFE1>:
	...

00008860 <___ascii_wctomb>:
    8860:	04 56       	cmpd	$0x0:s,(r5,r4)
    8862:	07 10       	beq	*+0x8870 <.L4>:s
    8864:	b6 52 ff 00 	cmpw	$0xff:m,r6
    8868:	a6 10       	blo	*+0x8874 <.L6>:s
    886a:	64 f0       	storb	r6,0x0:s(r5,r4)
    886c:	10 5a       	movw	$0x1:s,r0
    886e:	ee 0a       	jump	(ra)

00008870 <.L4>:
    8870:	00 5a       	movw	$0x0:s,r0
    8872:	ee 0a       	jump	(ra)

00008874 <.L6>:
    8874:	b0 5a 8a 00 	movw	$0x8a:m,r0
    8878:	02 d0       	storw	r0,0x0:s(r3,r2)
    887a:	90 5a       	movw	$-1:s,r0
    887c:	ee 0a       	jump	(ra)

0000887e <.LFE1>:
	...

00008880 <__wctomb_r>:
    8880:	9d 01       	push	$0x2,r13,RA
    8882:	67 01       	push	$0x7,r7
    8884:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
    8888:	fc 55       	movd	(sp),(r12)
    888a:	2f e0       	stord	(r3,r2),0x0:s(sp)
    888c:	4d 55       	movd	(r5,r4),(r13)
    888e:	67 5b       	movw	r6,r7
    8890:	af ad       	loadd	0x1a:s(sp),(r11,r10)
    8892:	bc 60 1a 00 	addd	$0x1a:m,(r12)
    8896:	12 00 80 b0 	loadd	0xb058 <___wctomb>:l,(r9,r8)
    889a:	58 b0 
    889c:	ff c0 47 c9 	bal	(ra),*-0x51e2 <___locale_charset>:m

000088a0 <.LVL2>:
    88a0:	1a 01       	push	$0x2,r10
    88a2:	10 01       	push	$0x2,r0
    88a4:	76 5b       	movw	r7,r6
    88a6:	d4 55       	movd	(r13),(r5,r4)
    88a8:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    88aa:	d8 00       	jal	(r9,r8)

000088ac <.LVL5>:
    88ac:	cf 60       	addd	$0xc:s,(sp)
    88ae:	67 02       	pop	$0x7,r7
    88b0:	9d 03       	popret	$0x2,r13,RA

000088b2 <.LFE0>:
	...

000088b4 <___mulsi3>:
    88b4:	40 5b       	movw	r4,r0
    88b6:	21 5b       	movw	r2,r1
    88b8:	10 63       	muluw	r1,(r1,r0)
    88ba:	25 67       	mulw	r2,r5
    88bc:	34 67       	mulw	r3,r4
    88be:	41 33       	addw	r4,r1
    88c0:	51 33       	addw	r5,r1
    88c2:	ee 0a       	jump	(ra)

000088c4 <__fpadd_parts>:
    88c4:	9d 01       	push	$0x2,r13,RA
    88c6:	67 01       	push	$0x7,r7
    88c8:	bf 60 e8 ff 	addd	$0xffe8:m,(sp)
    88cc:	fc 55       	movd	(sp),(r12)
    88ce:	bc 60 2e 00 	addd	$0x2e:m,(r12)
    88d2:	28 55       	movd	(r3,r2),(r9,r8)
    88d4:	4d 55       	movd	(r5,r4),(r13)
    88d6:	cc a0       	loadd	0x0:s(r12),(r12)
    88d8:	12 90       	loadw	0x0:s(r3,r2),r1
    88da:	11 52       	cmpw	$0x1:s,r1
    88dc:	b0 18 84 01 	bhs	*+0x8a60 <.L2>:m
    88e0:	04 90       	loadw	0x0:s(r5,r4),r0
    88e2:	10 52       	cmpw	$0x1:s,r0
    88e4:	b0 18 f2 01 	bhs	*+0x8ad6 <.L21>:m
    88e8:	41 52       	cmpw	$0x4:s,r1
    88ea:	00 18 a8 02 	beq	*+0x8b92 <.L36>:m
    88ee:	40 52       	cmpw	$0x4:s,r0
    88f0:	00 18 e6 01 	beq	*+0x8ad6 <.L21>:m
    88f4:	20 52       	cmpw	$0x2:s,r0
    88f6:	00 18 b2 01 	beq	*+0x8aa8 <.L37>:m
    88fa:	21 52       	cmpw	$0x2:s,r1
    88fc:	00 18 da 01 	beq	*+0x8ad6 <.L21>:m
    8900:	b2 92       	loadw	0x4:s(r3,r2),r11
    8902:	24 92       	loadw	0x4:s(r5,r4),r2
    8904:	48 a4       	loadd	0x8:s(r9,r8),(r5,r4)
    8906:	68 a6       	loadd	0xc:s(r9,r8),(r7,r6)
    8908:	4f e4       	stord	(r5,r4),0x8:s(sp)
    890a:	6f e6       	stord	(r7,r6),0xc:s(sp)
    890c:	4d a4       	loadd	0x8:s(r13),(r5,r4)
    890e:	6d a6       	loadd	0xc:s(r13),(r7,r6)
    8910:	4f e0       	stord	(r5,r4),0x0:s(sp)
    8912:	6f e2       	stord	(r7,r6),0x4:s(sp)
    8914:	b0 5b       	movw	r11,r0
    8916:	20 3b       	subw	r2,r0
    8918:	01 5b       	movw	r0,r1
    891a:	11 43       	ashuw	$-15:s,r1
    891c:	1a 5b       	movw	r1,r10
    891e:	0a 2b       	xorw	r0,r10
    8920:	1a 3b       	subw	r1,r10
    8922:	ba 52 3f 00 	cmpw	$0x3f:m,r10
    8926:	c0 18 46 01 	blt	*+0x8a6c <.L5>:m
    892a:	00 52       	cmpw	$0x0:s,r0
    892c:	d0 18 d2 01 	bge	*+0x8afe <.L6>:m
    8930:	34 01       	push	$0x4,r4
    8932:	a2 5b       	movw	r10,r2
    8934:	00 c0 08 0f 	bal	(ra),*+0x983c <___lshrdi3>:m
    8938:	0f dc       	storw	r0,0x18:s(sp)
    893a:	1f dd       	storw	r1,0x1a:s(sp)
    893c:	2f df 1c 00 	storw	r2,0x1c:m(sp)
    8940:	3f df 1e 00 	storw	r3,0x1e:m(sp)
    8944:	10 54       	movd	$0x1:s,(r1,r0)
    8946:	02 54       	movd	$0x0:s,(r3,r2)
    8948:	0f e0       	stord	(r1,r0),0x0:s(sp)
    894a:	2f e2       	stord	(r3,r2),0x4:s(sp)
    894c:	a2 5b       	movw	r10,r2
    894e:	00 c0 f6 0f 	bal	(ra),*+0x9944 <___ashldi3>:m
    8952:	14 54       	movd	$0x1:s,(r5,r4)
    8954:	06 54       	movd	$0x0:s,(r7,r6)
    8956:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    895a:	62 3f       	subcw	r6,r2
    895c:	73 3f       	subcw	r7,r3
    895e:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    8960:	6f a6       	loadd	0xc:s(sp),(r7,r6)
    8962:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    8966:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    896a:	04 54       	movd	$0x0:s,(r5,r4)
    896c:	06 54       	movd	$0x0:s,(r7,r6)
    896e:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    8972:	26 3f       	subcw	r2,r6
    8974:	37 3f       	subcw	r3,r7
    8976:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    897a:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    897e:	4f e0       	stord	(r5,r4),0x0:s(sp)
    8980:	6f e2       	stord	(r7,r6),0x4:s(sp)
    8982:	b2 5a 3f 00 	movw	$0x3f:m,r2
    8986:	00 c0 b6 0e 	bal	(ra),*+0x983c <___lshrdi3>:m
    898a:	8f 60       	addd	$0x8:s,(sp)
    898c:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    898e:	6f aa       	loadd	0x14:s(sp),(r7,r6)
    8990:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    8994:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    8998:	4f e0       	stord	(r5,r4),0x0:s(sp)
    899a:	6f e2       	stord	(r7,r6),0x4:s(sp)

0000899c <.L7>:
    899c:	88 91       	loadw	0x2:s(r9,r8),r8
    899e:	1d 91       	loadw	0x2:s(r13),r1
    89a0:	18 53       	cmpw	r1,r8
    89a2:	0f 16       	beq	*+0x8a80 <.L8>:s

000089a4 <.L41>:
    89a4:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    89a6:	6f a6       	loadd	0xc:s(sp),(r7,r6)
    89a8:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    89aa:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    89ac:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    89b0:	26 3f       	subcw	r2,r6
    89b2:	37 3f       	subcw	r3,r7
    89b4:	08 52       	cmpw	$0x0:s,r8
    89b6:	09 10       	beq	*+0x89c8 <.L10>:s
    89b8:	04 55       	movd	(r1,r0),(r5,r4)
    89ba:	26 55       	movd	(r3,r2),(r7,r6)
    89bc:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    89be:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    89c0:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    89c4:	26 3f       	subcw	r2,r6
    89c6:	37 3f       	subcw	r3,r7

000089c8 <.L10>:
    89c8:	07 52       	cmpw	$0x0:s,r7
    89ca:	60 18 1a 01 	bgt	*+0x8ae4 <.L11>:m
    89ce:	0c c3 02 00 	storw	$0x0:s,0x2:m(r12)
    89d2:	bc d2       	storw	r11,0x4:s(r12)
    89d4:	40 55       	movd	(r5,r4),(r1,r0)
    89d6:	62 55       	movd	(r7,r6),(r3,r2)
    89d8:	4c e4       	stord	(r5,r4),0x8:s(r12)
    89da:	6c e6       	stord	(r7,r6),0xc:s(r12)

000089dc <.L13>:
    89dc:	98 54       	movd	$-1:s,(r9,r8)
    89de:	9a 54       	movd	$-1:s,(r11,r10)
    89e0:	08 61       	addd	(r1,r0),(r9,r8)
    89e2:	2a 37       	addcw	r2,r10
    89e4:	3b 37       	addcw	r3,r11
    89e6:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    89ea:	a2 12       	blo	*+0x8a2e <.L14>:s
    89ec:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    89f0:	00 18 8a 01 	beq	*+0x8b7a <.L38>:m

000089f4 <.L24>:
    89f4:	4c 92       	loadw	0x4:s(r12),r4
    89f6:	94 32       	addw	$-1:s,r4
    89f8:	4f d0       	storw	r4,0x0:s(sp)
    89fa:	94 54       	movd	$-1:s,(r5,r4)
    89fc:	96 54       	movd	$-1:s,(r7,r6)
    89fe:	e4 10       	br	*+0x8a06 <.L33>:s

00008a00 <.L40>:
    8a00:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    8a04:	0a 14       	beq	*+0x8a98 <.L39>:s

00008a06 <.L33>:
    8a06:	00 61       	addd	(r1,r0),(r1,r0)
    8a08:	22 37       	addcw	r2,r2
    8a0a:	33 37       	addcw	r3,r3
    8a0c:	df 90       	loadw	0x0:s(sp),r13
    8a0e:	d8 5b       	movw	r13,r8
    8a10:	98 32       	addw	$-1:s,r8
    8a12:	8f d0       	storw	r8,0x0:s(sp)
    8a14:	08 55       	movd	(r1,r0),(r9,r8)
    8a16:	2a 55       	movd	(r3,r2),(r11,r10)
    8a18:	48 61       	addd	(r5,r4),(r9,r8)
    8a1a:	6a 37       	addcw	r6,r10
    8a1c:	7b 37       	addcw	r7,r11
    8a1e:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    8a22:	bf 1e       	bhs	*-0x8a00 <.L40>:s

00008a24 <.L25>:
    8a24:	0c d4       	storw	r0,0x8:s(r12)
    8a26:	1c d5       	storw	r1,0xa:s(r12)
    8a28:	2c d6       	storw	r2,0xc:s(r12)
    8a2a:	3c d7       	storw	r3,0xe:s(r12)
    8a2c:	dc d2       	storw	r13,0x4:s(r12)

00008a2e <.L14>:
    8a2e:	3c c2       	storw	$0x3:s,0x0:s(r12)
    8a30:	b3 52 ff 1f 	cmpw	$0x1fff:m,r3
    8a34:	b5 11       	bhs	*+0x8a5e <.L34>:s
    8a36:	18 54       	movd	$0x1:s,(r9,r8)
    8a38:	0a 54       	movd	$0x0:s,(r11,r10)
    8a3a:	14 00 08 b0 	andd	(r1,r0),(r9,r8)
    8a3e:	14 00 2a b0 	andd	(r3,r2),(r11,r10)
    8a42:	30 01       	push	$0x4,r0
    8a44:	12 5a       	movw	$0x1:s,r2
    8a46:	00 c0 f6 0d 	bal	(ra),*+0x983c <___lshrdi3>:m
    8a4a:	8f 60       	addd	$0x8:s,(sp)
    8a4c:	14 00 80 90 	ord	(r9,r8),(r1,r0)
    8a50:	14 00 a2 90 	ord	(r11,r10),(r3,r2)
    8a54:	0c e4       	stord	(r1,r0),0x8:s(r12)
    8a56:	2c e6       	stord	(r3,r2),0xc:s(r12)
    8a58:	0c 92       	loadw	0x4:s(r12),r0
    8a5a:	10 32       	addw	$0x1:s,r0
    8a5c:	0c d2       	storw	r0,0x4:s(r12)

00008a5e <.L34>:
    8a5e:	c8 55       	movd	(r12),(r9,r8)

00008a60 <.L2>:
    8a60:	80 5b       	movw	r8,r0
    8a62:	91 5b       	movw	r9,r1
    8a64:	bf 60 18 00 	addd	$0x18:m,(sp)
    8a68:	67 02       	pop	$0x7,r7
    8a6a:	9d 03       	popret	$0x2,r13,RA

00008a6c <.L5>:
    8a6c:	2b 53       	cmpw	r2,r11
    8a6e:	dd 12       	bge	*+0x8ac8 <.L22>:s
    8a70:	00 54       	movd	$0x0:s,(r1,r0)
    8a72:	02 54       	movd	$0x0:s,(r3,r2)
    8a74:	0f e0       	stord	(r1,r0),0x0:s(sp)
    8a76:	2f e2       	stord	(r3,r2),0x4:s(sp)
    8a78:	88 91       	loadw	0x2:s(r9,r8),r8
    8a7a:	1d 91       	loadw	0x2:s(r13),r1
    8a7c:	18 53       	cmpw	r1,r8
    8a7e:	13 19       	bne	*-0x89a4 <.L41>:s

00008a80 <.L8>:
    8a80:	8c d1       	storw	r8,0x2:s(r12)
    8a82:	bc d2       	storw	r11,0x4:s(r12)
    8a84:	0f a0       	loadd	0x0:s(sp),(r1,r0)
    8a86:	2f a2       	loadd	0x4:s(sp),(r3,r2)
    8a88:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    8a8a:	6f a6       	loadd	0xc:s(sp),(r7,r6)
    8a8c:	40 61       	addd	(r5,r4),(r1,r0)
    8a8e:	62 37       	addcw	r6,r2
    8a90:	73 37       	addcw	r7,r3
    8a92:	0c e4       	stord	(r1,r0),0x8:s(r12)
    8a94:	2c e6       	stord	(r3,r2),0xc:s(r12)
    8a96:	ec 1c       	br	*-0x8a2e <.L14>:s

00008a98 <.L39>:
    8a98:	9a 52       	cmpw	$-1:s,r10
    8a9a:	16 1b       	bne	*-0x8a06 <.L33>:s
    8a9c:	99 52       	cmpw	$-1:s,r9
    8a9e:	14 1b       	bne	*-0x8a06 <.L33>:s
    8aa0:	b8 52 fe ff 	cmpw	$0xfffe:m,r8
    8aa4:	b1 1b       	bhs	*-0x8a06 <.L33>:s
    8aa6:	ef 1b       	br	*-0x8a24 <.L25>:s

00008aa8 <.L37>:
    8aa8:	21 52       	cmpw	$0x2:s,r1
    8aaa:	1b 1d       	bne	*-0x8a60 <.L2>:s
    8aac:	02 a0       	loadd	0x0:s(r3,r2),(r1,r0)
    8aae:	0c e0       	stord	(r1,r0),0x0:s(r12)
    8ab0:	02 a2       	loadd	0x4:s(r3,r2),(r1,r0)
    8ab2:	0c e2       	stord	(r1,r0),0x4:s(r12)
    8ab4:	02 a4       	loadd	0x8:s(r3,r2),(r1,r0)
    8ab6:	0c e4       	stord	(r1,r0),0x8:s(r12)
    8ab8:	02 a6       	loadd	0xc:s(r3,r2),(r1,r0)
    8aba:	0c e6       	stord	(r1,r0),0xc:s(r12)
    8abc:	14 91       	loadw	0x2:s(r5,r4),r1
    8abe:	02 91       	loadw	0x2:s(r3,r2),r0
    8ac0:	10 23       	andw	r1,r0
    8ac2:	0c d1       	storw	r0,0x2:s(r12)
    8ac4:	c8 55       	movd	(r12),(r9,r8)
    8ac6:	ed 1c       	br	*-0x8a60 <.L2>:s

00008ac8 <.L22>:
    8ac8:	2b 5b       	movw	r2,r11
    8aca:	02 54       	movd	$0x0:s,(r3,r2)
    8acc:	04 54       	movd	$0x0:s,(r5,r4)
    8ace:	2f e4       	stord	(r3,r2),0x8:s(sp)
    8ad0:	4f e6       	stord	(r5,r4),0xc:s(sp)
    8ad2:	e0 18 cb fe 	br	*-0x899c <.L7>:m

00008ad6 <.L21>:
    8ad6:	d8 55       	movd	(r13),(r9,r8)
    8ad8:	80 5b       	movw	r8,r0
    8ada:	91 5b       	movw	r9,r1
    8adc:	bf 60 18 00 	addd	$0x18:m,(sp)
    8ae0:	67 02       	pop	$0x7,r7
    8ae2:	9d 03       	popret	$0x2,r13,RA

00008ae4 <.L11>:
    8ae4:	1c c3 02 00 	storw	$0x1:s,0x2:m(r12)
    8ae8:	bc d2       	storw	r11,0x4:s(r12)
    8aea:	00 54       	movd	$0x0:s,(r1,r0)
    8aec:	02 54       	movd	$0x0:s,(r3,r2)
    8aee:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    8af2:	62 3f       	subcw	r6,r2
    8af4:	73 3f       	subcw	r7,r3
    8af6:	0c e4       	stord	(r1,r0),0x8:s(r12)
    8af8:	2c e6       	stord	(r3,r2),0xc:s(r12)
    8afa:	e0 18 e3 fe 	br	*-0x89dc <.L13>:m

00008afe <.L6>:
    8afe:	00 52       	cmpw	$0x0:s,r0
    8b00:	00 18 9d fe 	beq	*-0x899c <.L7>:m
    8b04:	ab 33       	addw	r10,r11
    8b06:	0f a4       	loadd	0x8:s(sp),(r1,r0)
    8b08:	2f a6       	loadd	0xc:s(sp),(r3,r2)
    8b0a:	30 01       	push	$0x4,r0
    8b0c:	a2 5b       	movw	r10,r2
    8b0e:	00 c0 2e 0d 	bal	(ra),*+0x983c <___lshrdi3>:m
    8b12:	0f dc       	storw	r0,0x18:s(sp)
    8b14:	1f dd       	storw	r1,0x1a:s(sp)
    8b16:	2f df 1c 00 	storw	r2,0x1c:m(sp)
    8b1a:	3f df 1e 00 	storw	r3,0x1e:m(sp)
    8b1e:	12 54       	movd	$0x1:s,(r3,r2)
    8b20:	04 54       	movd	$0x0:s,(r5,r4)
    8b22:	2f e0       	stord	(r3,r2),0x0:s(sp)
    8b24:	4f e2       	stord	(r5,r4),0x4:s(sp)
    8b26:	a2 5b       	movw	r10,r2
    8b28:	00 c0 1c 0e 	bal	(ra),*+0x9944 <___ashldi3>:m
    8b2c:	14 54       	movd	$0x1:s,(r5,r4)
    8b2e:	06 54       	movd	$0x0:s,(r7,r6)
    8b30:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    8b34:	62 3f       	subcw	r6,r2
    8b36:	73 3f       	subcw	r7,r3
    8b38:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    8b3a:	6f aa       	loadd	0x14:s(sp),(r7,r6)
    8b3c:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    8b40:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    8b44:	04 54       	movd	$0x0:s,(r5,r4)
    8b46:	06 54       	movd	$0x0:s,(r7,r6)
    8b48:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    8b4c:	26 3f       	subcw	r2,r6
    8b4e:	37 3f       	subcw	r3,r7
    8b50:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    8b54:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    8b58:	4f e0       	stord	(r5,r4),0x0:s(sp)
    8b5a:	6f e2       	stord	(r7,r6),0x4:s(sp)
    8b5c:	b2 5a 3f 00 	movw	$0x3f:m,r2
    8b60:	00 c0 dc 0c 	bal	(ra),*+0x983c <___lshrdi3>:m
    8b64:	8f 60       	addd	$0x8:s,(sp)
    8b66:	4f a8       	loadd	0x10:s(sp),(r5,r4)
    8b68:	6f aa       	loadd	0x14:s(sp),(r7,r6)
    8b6a:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    8b6e:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    8b72:	4f e4       	stord	(r5,r4),0x8:s(sp)
    8b74:	6f e6       	stord	(r7,r6),0xc:s(sp)
    8b76:	e0 18 27 fe 	br	*-0x899c <.L7>:m

00008b7a <.L38>:
    8b7a:	9a 52       	cmpw	$-1:s,r10
    8b7c:	10 18 79 fe 	bne	*-0x89f4 <.L24>:m
    8b80:	99 52       	cmpw	$-1:s,r9
    8b82:	10 18 73 fe 	bne	*-0x89f4 <.L24>:m
    8b86:	b8 52 fe ff 	cmpw	$0xfffe:m,r8
    8b8a:	b0 18 6b fe 	bhs	*-0x89f4 <.L24>:m
    8b8e:	e0 18 a1 fe 	br	*-0x8a2e <.L14>:m

00008b92 <.L36>:
    8b92:	40 52       	cmpw	$0x4:s,r0
    8b94:	10 18 cd fe 	bne	*-0x8a60 <.L2>:m
    8b98:	12 91       	loadw	0x2:s(r3,r2),r1
    8b9a:	04 91       	loadw	0x2:s(r5,r4),r0
    8b9c:	01 53       	cmpw	r0,r1
    8b9e:	00 18 c3 fe 	beq	*-0x8a60 <.L2>:m
    8ba2:	80 05 3c a3 	movd	$0xa33c:m,(r9,r8)
    8ba6:	e0 18 bb fe 	br	*-0x8a60 <.L2>:m

00008baa <.LFE6>:
	...

00008bac <___adddf3>:
    8bac:	bc 01       	push	$0x4,r12,RA
    8bae:	07 01       	push	$0x1,r7
    8bb0:	bf 60 c0 ff 	addd	$0xffc0:m,(sp)
    8bb4:	fd 55       	movd	(sp),(r13)
    8bb6:	0d af 4e 00 	loadd	0x4e:m(r13),(r1,r0)
    8bba:	2d af 52 00 	loadd	0x52:m(r13),(r3,r2)
    8bbe:	4d af 56 00 	loadd	0x56:m(r13),(r5,r4)
    8bc2:	6d af 5a 00 	loadd	0x5a:m(r13),(r7,r6)
    8bc6:	4d ef 30 00 	stord	(r5,r4),0x30:m(r13)
    8bca:	6d ef 34 00 	stord	(r7,r6),0x34:m(r13)
    8bce:	0d ef 38 00 	stord	(r1,r0),0x38:m(r13)
    8bd2:	2d ef 3c 00 	stord	(r3,r2),0x3c:m(r13)
    8bd6:	d4 55       	movd	(r13),(r5,r4)
    8bd8:	b4 60 20 00 	addd	$0x20:m,(r5,r4)
    8bdc:	d2 55       	movd	(r13),(r3,r2)
    8bde:	b2 60 38 00 	addd	$0x38:m,(r3,r2)
    8be2:	00 c0 96 10 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008be6 <.LVL46>:
    8be6:	d4 55       	movd	(r13),(r5,r4)
    8be8:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    8bec:	d2 55       	movd	(r13),(r3,r2)
    8bee:	b2 60 30 00 	addd	$0x30:m,(r3,r2)
    8bf2:	00 c0 86 10 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008bf6 <.LVL47>:
    8bf6:	1d 01       	push	$0x2,r13
    8bf8:	d4 55       	movd	(r13),(r5,r4)
    8bfa:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    8bfe:	d2 55       	movd	(r13),(r3,r2)
    8c00:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    8c04:	ff c0 c1 fc 	bal	(ra),*-0x88c4 <__fpadd_parts>:m

00008c08 <.LVL48>:
    8c08:	02 55       	movd	(r1,r0),(r3,r2)
    8c0a:	00 c0 36 0e 	bal	(ra),*+0x9a40 <___pack_d>:m

00008c0e <.LVL49>:
    8c0e:	4f 60       	addd	$0x4:s,(sp)
    8c10:	df 55       	movd	(r13),(sp)
    8c12:	bf 60 40 00 	addd	$0x40:m,(sp)
    8c16:	07 02       	pop	$0x1,r7
    8c18:	bc 03       	popret	$0x4,r12,RA

00008c1a <.LFE7>:
	...

00008c1c <___subdf3>:
    8c1c:	bc 01       	push	$0x4,r12,RA
    8c1e:	07 01       	push	$0x1,r7
    8c20:	bf 60 c0 ff 	addd	$0xffc0:m,(sp)
    8c24:	fd 55       	movd	(sp),(r13)
    8c26:	0d af 4e 00 	loadd	0x4e:m(r13),(r1,r0)
    8c2a:	2d af 52 00 	loadd	0x52:m(r13),(r3,r2)
    8c2e:	4d af 56 00 	loadd	0x56:m(r13),(r5,r4)
    8c32:	6d af 5a 00 	loadd	0x5a:m(r13),(r7,r6)
    8c36:	4d ef 30 00 	stord	(r5,r4),0x30:m(r13)
    8c3a:	6d ef 34 00 	stord	(r7,r6),0x34:m(r13)
    8c3e:	0d ef 38 00 	stord	(r1,r0),0x38:m(r13)
    8c42:	2d ef 3c 00 	stord	(r3,r2),0x3c:m(r13)
    8c46:	d4 55       	movd	(r13),(r5,r4)
    8c48:	b4 60 20 00 	addd	$0x20:m,(r5,r4)
    8c4c:	d2 55       	movd	(r13),(r3,r2)
    8c4e:	b2 60 38 00 	addd	$0x38:m,(r3,r2)
    8c52:	00 c0 26 10 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008c56 <.LVL51>:
    8c56:	d4 55       	movd	(r13),(r5,r4)
    8c58:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    8c5c:	d2 55       	movd	(r13),(r3,r2)
    8c5e:	b2 60 30 00 	addd	$0x30:m,(r3,r2)
    8c62:	00 c0 16 10 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008c66 <.LVL52>:
    8c66:	0d 99       	loadw	0x12:s(r13),r0
    8c68:	10 2a       	xorw	$0x1:s,r0
    8c6a:	0d d9       	storw	r0,0x12:s(r13)
    8c6c:	1d 01       	push	$0x2,r13
    8c6e:	d4 55       	movd	(r13),(r5,r4)
    8c70:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    8c74:	d2 55       	movd	(r13),(r3,r2)
    8c76:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    8c7a:	ff c0 4b fc 	bal	(ra),*-0x88c4 <__fpadd_parts>:m

00008c7e <.LVL53>:
    8c7e:	02 55       	movd	(r1,r0),(r3,r2)
    8c80:	00 c0 c0 0d 	bal	(ra),*+0x9a40 <___pack_d>:m

00008c84 <.LVL54>:
    8c84:	4f 60       	addd	$0x4:s,(sp)
    8c86:	df 55       	movd	(r13),(sp)
    8c88:	bf 60 40 00 	addd	$0x40:m,(sp)
    8c8c:	07 02       	pop	$0x1,r7
    8c8e:	bc 03       	popret	$0x4,r12,RA

00008c90 <___muldf3>:
    8c90:	1e 01       	push	RA
    8c92:	67 01       	push	$0x7,r7
    8c94:	bf 60 98 ff 	addd	$0xff98:m,(sp)
    8c98:	fc 55       	movd	(sp),(r12)
    8c9a:	0f af 7a 00 	loadd	0x7a:m(sp),(r1,r0)
    8c9e:	2f af 7e 00 	loadd	0x7e:m(sp),(r3,r2)

00008ca0 <.LFE8>:
    8ca0:	7e 00 4f af 	movd	$0xaf4f0082:l,(ra)
    8ca4:	82 00 
    8ca6:	6f af 86 00 	loadd	0x86:m(sp),(r7,r6)
    8caa:	bc 60 7a 00 	addd	$0x7a:m,(r12)
    8cae:	0f ef 38 00 	stord	(r1,r0),0x38:m(sp)
    8cb2:	2f ef 3c 00 	stord	(r3,r2),0x3c:m(sp)
    8cb6:	4f ef 30 00 	stord	(r5,r4),0x30:m(sp)
    8cba:	6f ef 34 00 	stord	(r7,r6),0x34:m(sp)
    8cbe:	f4 55       	movd	(sp),(r5,r4)
    8cc0:	b4 60 20 00 	addd	$0x20:m,(r5,r4)
    8cc4:	f2 55       	movd	(sp),(r3,r2)
    8cc6:	b2 60 38 00 	addd	$0x38:m,(r3,r2)
    8cca:	00 c0 ae 0f 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008cce <.LVL1>:
    8cce:	f4 55       	movd	(sp),(r5,r4)
    8cd0:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    8cd4:	f2 55       	movd	(sp),(r3,r2)
    8cd6:	b2 60 30 00 	addd	$0x30:m,(r3,r2)
    8cda:	00 c0 9e 0f 	bal	(ra),*+0x9c78 <___unpack_d>:m

00008cde <.LBB28>:
    8cde:	0f 9f 20 00 	loadw	0x20:m(sp),r0
    8ce2:	10 52       	cmpw	$0x1:s,r0
    8ce4:	a1 11       	blo	*+0x8d06 <.L2>:s

00008ce6 <.L48>:
    8ce6:	0f 99       	loadw	0x12:s(sp),r0
    8ce8:	1f 9f 22 00 	loadw	0x22:m(sp),r1
    8cec:	01 53       	cmpw	r0,r1
    8cee:	10 08       	sne	r0
    8cf0:	0f df 22 00 	storw	r0,0x22:m(sp)
    8cf4:	f2 55       	movd	(sp),(r3,r2)
    8cf6:	b2 60 20 00 	addd	$0x20:m,(r3,r2)

00008cfa <.L3>:
    8cfa:	00 c0 46 0d 	bal	(ra),*+0x9a40 <___pack_d>:m

00008cfe <.LVL4>:
    8cfe:	bf 60 68 00 	addd	$0x68:m,(sp)
    8d02:	67 02       	pop	$0x7,r7
    8d04:	1e 03       	popret	RA

00008d06 <.L2>:
    8d06:	1f 98       	loadw	0x10:s(sp),r1
    8d08:	11 52       	cmpw	$0x1:s,r1
    8d0a:	a0 11       	blo	*+0x8d2a <.L4>:s

00008d0c <.L47>:
    8d0c:	0f 99       	loadw	0x12:s(sp),r0
    8d0e:	1f 9f 22 00 	loadw	0x22:m(sp),r1
    8d12:	01 53       	cmpw	r0,r1
    8d14:	10 08       	sne	r0
    8d16:	0f d9       	storw	r0,0x12:s(sp)
    8d18:	f2 55       	movd	(sp),(r3,r2)
    8d1a:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    8d1e:	00 c0 22 0d 	bal	(ra),*+0x9a40 <___pack_d>:m

00008d22 <.LVL6>:
    8d22:	bf 60 68 00 	addd	$0x68:m,(sp)
    8d26:	67 02       	pop	$0x7,r7
    8d28:	1e 03       	popret	RA

00008d2a <.L4>:
    8d2a:	40 52       	cmpw	$0x4:s,r0
    8d2c:	16 10       	bne	*+0x8d38 <.L5>:s
    8d2e:	20 05 3c a3 	movd	$0xa33c:m,(r3,r2)
    8d32:	21 52       	cmpw	$0x2:s,r1
    8d34:	03 1e       	beq	*-0x8cfa <.L3>:s
    8d36:	e8 1d       	br	*-0x8ce6 <.L48>:s

00008d38 <.L5>:
    8d38:	41 52       	cmpw	$0x4:s,r1
    8d3a:	16 10       	bne	*+0x8d46 <.L6>:s
    8d3c:	20 05 3c a3 	movd	$0xa33c:m,(r3,r2)
    8d40:	20 52       	cmpw	$0x2:s,r0
    8d42:	0c 1d       	beq	*-0x8cfa <.L3>:s
    8d44:	e4 1e       	br	*-0x8d0c <.L47>:s

00008d46 <.L6>:
    8d46:	20 52       	cmpw	$0x2:s,r0
    8d48:	0f 1c       	beq	*-0x8ce6 <.L48>:s
    8d4a:	21 52       	cmpw	$0x2:s,r1
    8d4c:	00 1e       	beq	*-0x8d0c <.L47>:s
    8d4e:	0f af 28 00 	loadd	0x28:m(sp),(r1,r0)
    8d52:	2f af 2c 00 	loadd	0x2c:m(sp),(r3,r2)
    8d56:	0f ef 58 00 	stord	(r1,r0),0x58:m(sp)
    8d5a:	2f ef 5c 00 	stord	(r3,r2),0x5c:m(sp)
    8d5e:	8f ac       	loadd	0x18:s(sp),(r9,r8)
    8d60:	af af 1c 00 	loadd	0x1c:m(sp),(r11,r10)
    8d64:	92 54       	movd	$-1:s,(r3,r2)
    8d66:	04 54       	movd	$0x0:s,(r5,r4)
    8d68:	14 00 82 b0 	andd	(r9,r8),(r3,r2)
    8d6c:	14 00 a4 b0 	andd	(r11,r10),(r5,r4)
    8d70:	2f ef 60 00 	stord	(r3,r2),0x60:m(sp)
    8d74:	4f ef 64 00 	stord	(r5,r4),0x64:m(sp)
    8d78:	4f af 58 00 	loadd	0x58:m(sp),(r5,r4)
    8d7c:	6f af 5c 00 	loadd	0x5c:m(sp),(r7,r6)
    8d80:	90 54       	movd	$-1:s,(r1,r0)
    8d82:	02 54       	movd	$0x0:s,(r3,r2)
    8d84:	14 00 04 b0 	andd	(r1,r0),(r5,r4)
    8d88:	14 00 26 b0 	andd	(r3,r2),(r7,r6)
    8d8c:	4f ef 48 00 	stord	(r5,r4),0x48:m(sp)
    8d90:	6f ef 4c 00 	stord	(r7,r6),0x4c:m(sp)
    8d94:	2f af 60 00 	loadd	0x60:m(sp),(r3,r2)
    8d98:	4f af 64 00 	loadd	0x64:m(sp),(r5,r4)
    8d9c:	32 01       	push	$0x4,r2
    8d9e:	4f af 50 00 	loadd	0x50:m(sp),(r5,r4)
    8da2:	6f af 54 00 	loadd	0x54:m(sp),(r7,r6)
    8da6:	34 01       	push	$0x4,r4
    8da8:	00 c0 e0 0a 	bal	(ra),*+0x9888 <___muldi3>:m
    8dac:	bf 60 10 00 	addd	$0x10:m,(sp)
    8db0:	0f df 40 00 	storw	r0,0x40:m(sp)
    8db4:	1f df 42 00 	storw	r1,0x42:m(sp)
    8db8:	2f df 44 00 	storw	r2,0x44:m(sp)
    8dbc:	3f df 46 00 	storw	r3,0x46:m(sp)
    8dc0:	38 01       	push	$0x4,r8
    8dc2:	b2 5a 20 00 	movw	$0x20:m,r2
    8dc6:	00 c0 76 0a 	bal	(ra),*+0x983c <___lshrdi3>:m
    8dca:	94 54       	movd	$-1:s,(r5,r4)
    8dcc:	06 54       	movd	$0x0:s,(r7,r6)
    8dce:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    8dd2:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    8dd6:	0f ef 58 00 	stord	(r1,r0),0x58:m(sp)
    8dda:	2f ef 5c 00 	stord	(r3,r2),0x5c:m(sp)
    8dde:	0f af 50 00 	loadd	0x50:m(sp),(r1,r0)
    8de2:	2f af 54 00 	loadd	0x54:m(sp),(r3,r2)
    8de6:	0f e0       	stord	(r1,r0),0x0:s(sp)
    8de8:	2f e2       	stord	(r3,r2),0x4:s(sp)
    8dea:	2f af 58 00 	loadd	0x58:m(sp),(r3,r2)
    8dee:	4f af 5c 00 	loadd	0x5c:m(sp),(r5,r4)
    8df2:	32 01       	push	$0x4,r2
    8df4:	00 c0 94 0a 	bal	(ra),*+0x9888 <___muldi3>:m
    8df8:	bf 60 10 00 	addd	$0x10:m,(sp)
    8dfc:	0f df 48 00 	storw	r0,0x48:m(sp)
    8e00:	1f df 4a 00 	storw	r1,0x4a:m(sp)
    8e04:	2f df 4c 00 	storw	r2,0x4c:m(sp)
    8e08:	3f df 4e 00 	storw	r3,0x4e:m(sp)
    8e0c:	4f af 58 00 	loadd	0x58:m(sp),(r5,r4)
    8e10:	6f af 5c 00 	loadd	0x5c:m(sp),(r7,r6)
    8e14:	34 01       	push	$0x4,r4
    8e16:	b2 5a 20 00 	movw	$0x20:m,r2
    8e1a:	00 c0 22 0a 	bal	(ra),*+0x983c <___lshrdi3>:m
    8e1e:	08 55       	movd	(r1,r0),(r9,r8)
    8e20:	2a 55       	movd	(r3,r2),(r11,r10)
    8e22:	90 54       	movd	$-1:s,(r1,r0)
    8e24:	02 54       	movd	$0x0:s,(r3,r2)
    8e26:	14 00 08 b0 	andd	(r1,r0),(r9,r8)
    8e2a:	14 00 2a b0 	andd	(r3,r2),(r11,r10)
    8e2e:	2f af 58 00 	loadd	0x58:m(sp),(r3,r2)
    8e32:	4f af 5c 00 	loadd	0x5c:m(sp),(r5,r4)
    8e36:	2f e0       	stord	(r3,r2),0x0:s(sp)
    8e38:	4f e2       	stord	(r5,r4),0x4:s(sp)
    8e3a:	38 01       	push	$0x4,r8
    8e3c:	00 c0 4c 0a 	bal	(ra),*+0x9888 <___muldi3>:m
    8e40:	bf 60 10 00 	addd	$0x10:m,(sp)
    8e44:	0f df 50 00 	storw	r0,0x50:m(sp)
    8e48:	1f df 52 00 	storw	r1,0x52:m(sp)
    8e4c:	2f df 54 00 	storw	r2,0x54:m(sp)
    8e50:	3f df 56 00 	storw	r3,0x56:m(sp)
    8e54:	4f af 60 00 	loadd	0x60:m(sp),(r5,r4)
    8e58:	6f af 64 00 	loadd	0x64:m(sp),(r7,r6)
    8e5c:	34 01       	push	$0x4,r4
    8e5e:	38 01       	push	$0x4,r8
    8e60:	00 c0 28 0a 	bal	(ra),*+0x9888 <___muldi3>:m
    8e64:	bf 60 10 00 	addd	$0x10:m,(sp)
    8e68:	08 55       	movd	(r1,r0),(r9,r8)
    8e6a:	2a 55       	movd	(r3,r2),(r11,r10)
    8e6c:	0f af 48 00 	loadd	0x48:m(sp),(r1,r0)
    8e70:	2f af 4c 00 	loadd	0x4c:m(sp),(r3,r2)
    8e74:	08 61       	addd	(r1,r0),(r9,r8)
    8e76:	2a 37       	addcw	r2,r10
    8e78:	3b 37       	addcw	r3,r11
    8e7a:	b3 53       	cmpw	r11,r3
    8e7c:	a0 18 ea 01 	blo	*+0x9066 <.L29>:m
    8e80:	1f 9f 4e 00 	loadw	0x4e:m(sp),r1
    8e84:	b1 53       	cmpw	r11,r1
    8e86:	12 11       	bne	*+0x8eaa <.L30>:s
    8e88:	a2 53       	cmpw	r10,r2
    8e8a:	a0 18 dc 01 	blo	*+0x9066 <.L29>:m
    8e8e:	2f 9f 4c 00 	loadw	0x4c:m(sp),r2
    8e92:	a2 53       	cmpw	r10,r2
    8e94:	1b 10       	bne	*+0x8eaa <.L30>:s
    8e96:	3f 9f 4a 00 	loadw	0x4a:m(sp),r3
    8e9a:	93 53       	cmpw	r9,r3
    8e9c:	a0 18 ca 01 	blo	*+0x9066 <.L29>:m
    8ea0:	93 53       	cmpw	r9,r3
    8ea2:	14 10       	bne	*+0x8eaa <.L30>:s
    8ea4:	80 53       	cmpw	r8,r0
    8ea6:	a0 18 c0 01 	blo	*+0x9066 <.L29>:m

00008eaa <.L30>:
    8eaa:	00 54       	movd	$0x0:s,(r1,r0)
    8eac:	02 54       	movd	$0x0:s,(r3,r2)
    8eae:	0f ef 58 00 	stord	(r1,r0),0x58:m(sp)
    8eb2:	2f ef 5c 00 	stord	(r3,r2),0x5c:m(sp)

00008eb6 <.L9>:
    8eb6:	90 54       	movd	$-1:s,(r1,r0)
    8eb8:	02 54       	movd	$0x0:s,(r3,r2)
    8eba:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    8ebe:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    8ec2:	30 01       	push	$0x4,r0
    8ec4:	b2 5a 20 00 	movw	$0x20:m,r2
    8ec8:	00 c0 7c 0a 	bal	(ra),*+0x9944 <___ashldi3>:m
    8ecc:	8f 60       	addd	$0x8:s,(sp)
    8ece:	4f af 40 00 	loadd	0x40:m(sp),(r5,r4)
    8ed2:	6f af 44 00 	loadd	0x44:m(sp),(r7,r6)
    8ed6:	40 61       	addd	(r5,r4),(r1,r0)
    8ed8:	62 37       	addcw	r6,r2
    8eda:	73 37       	addcw	r7,r3
    8edc:	0f ef 48 00 	stord	(r1,r0),0x48:m(sp)
    8ee0:	2f ef 4c 00 	stord	(r3,r2),0x4c:m(sp)
    8ee4:	37 53       	cmpw	r3,r7
    8ee6:	ad 11       	blo	*+0x8f20 <.L31>:s
    8ee8:	5f 9f 46 00 	loadw	0x46:m(sp),r5
    8eec:	6f 9f 4e 00 	loadw	0x4e:m(sp),r6
    8ef0:	65 53       	cmpw	r6,r5
    8ef2:	14 12       	bne	*+0x8f3a <.L11>:s
    8ef4:	7f 9f 44 00 	loadw	0x44:m(sp),r7
    8ef8:	27 53       	cmpw	r2,r7
    8efa:	a3 11       	blo	*+0x8f20 <.L31>:s
    8efc:	1f 9f 4c 00 	loadw	0x4c:m(sp),r1
    8f00:	17 53       	cmpw	r1,r7
    8f02:	1c 11       	bne	*+0x8f3a <.L11>:s
    8f04:	2f 9f 42 00 	loadw	0x42:m(sp),r2
    8f08:	3f 9f 4a 00 	loadw	0x4a:m(sp),r3
    8f0c:	32 53       	cmpw	r3,r2
    8f0e:	a9 10       	blo	*+0x8f20 <.L31>:s
    8f10:	32 53       	cmpw	r3,r2
    8f12:	14 11       	bne	*+0x8f3a <.L11>:s
    8f14:	6f 9f 40 00 	loadw	0x40:m(sp),r6
    8f18:	7f 9f 48 00 	loadw	0x48:m(sp),r7
    8f1c:	76 53       	cmpw	r7,r6
    8f1e:	be 10       	bhs	*+0x8f3a <.L11>:s

00008f20 <.L31>:
    8f20:	10 54       	movd	$0x1:s,(r1,r0)
    8f22:	02 54       	movd	$0x0:s,(r3,r2)
    8f24:	4f af 58 00 	loadd	0x58:m(sp),(r5,r4)
    8f28:	6f af 5c 00 	loadd	0x5c:m(sp),(r7,r6)
    8f2c:	04 61       	addd	(r1,r0),(r5,r4)
    8f2e:	26 37       	addcw	r2,r6
    8f30:	37 37       	addcw	r3,r7
    8f32:	4f ef 58 00 	stord	(r5,r4),0x58:m(sp)
    8f36:	6f ef 5c 00 	stord	(r7,r6),0x5c:m(sp)

00008f3a <.L11>:
    8f3a:	38 01       	push	$0x4,r8
    8f3c:	b2 5a 20 00 	movw	$0x20:m,r2
    8f40:	00 c0 fc 08 	bal	(ra),*+0x983c <___lshrdi3>:m
    8f44:	8f 60       	addd	$0x8:s,(sp)
    8f46:	08 55       	movd	(r1,r0),(r9,r8)
    8f48:	2a 55       	movd	(r3,r2),(r11,r10)
    8f4a:	0f af 50 00 	loadd	0x50:m(sp),(r1,r0)
    8f4e:	2f af 54 00 	loadd	0x54:m(sp),(r3,r2)
    8f52:	08 61       	addd	(r1,r0),(r9,r8)
    8f54:	2a 37       	addcw	r2,r10
    8f56:	3b 37       	addcw	r3,r11
    8f58:	2f af 58 00 	loadd	0x58:m(sp),(r3,r2)
    8f5c:	4f af 5c 00 	loadd	0x5c:m(sp),(r5,r4)
    8f60:	28 61       	addd	(r3,r2),(r9,r8)
    8f62:	4a 37       	addcw	r4,r10
    8f64:	5b 37       	addcw	r5,r11
    8f66:	0f 9a       	loadw	0x14:s(sp),r0
    8f68:	7f 9f 24 00 	loadw	0x24:m(sp),r7
    8f6c:	07 33       	addw	r0,r7
    8f6e:	70 5b       	movw	r7,r0
    8f70:	40 32       	addw	$0x4:s,r0
    8f72:	0f d2       	storw	r0,0x4:s(sp)
    8f74:	0f 99       	loadw	0x12:s(sp),r0
    8f76:	1f 9f 22 00 	loadw	0x22:m(sp),r1
    8f7a:	01 53       	cmpw	r0,r1
    8f7c:	10 08       	sne	r0
    8f7e:	0f d1       	storw	r0,0x2:s(sp)
    8f80:	57 32       	addw	$0x5:s,r7
    8f82:	bb 52 ff 1f 	cmpw	$0x1fff:m,r11
    8f86:	b8 13       	bhs	*+0x8ff6 <.L13>:s
    8f88:	7f df 40 00 	storw	r7,0x40:m(sp)

00008f8c <.L40>:
    8f8c:	cf 9f 40 00 	loadw	0x40:m(sp),r12
    8f90:	10 54       	movd	$0x1:s,(r1,r0)
    8f92:	02 54       	movd	$0x0:s,(r3,r2)
    8f94:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    8f98:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    8f9c:	04 5b       	movw	r0,r4
    8f9e:	14 27       	orw	r1,r4
    8fa0:	24 27       	orw	r2,r4
    8fa2:	34 27       	orw	r3,r4
    8fa4:	04 52       	cmpw	$0x0:s,r4
    8fa6:	06 11       	beq	*+0x8fd2 <.L15>:s
    8fa8:	4f af 48 00 	loadd	0x48:m(sp),(r5,r4)
    8fac:	6f af 4c 00 	loadd	0x4c:m(sp),(r7,r6)
    8fb0:	34 01       	push	$0x4,r4
    8fb2:	12 5a       	movw	$0x1:s,r2
    8fb4:	00 c0 88 08 	bal	(ra),*+0x983c <___lshrdi3>:m
    8fb8:	8f 60       	addd	$0x8:s,(sp)
    8fba:	04 54       	movd	$0x0:s,(r5,r4)
    8fbc:	76 00 00 80 	movd	$0x80000000:l,(r7,r6)
    8fc0:	00 00 
    8fc2:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    8fc6:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    8fca:	4f ef 48 00 	stord	(r5,r4),0x48:m(sp)
    8fce:	6f ef 4c 00 	stord	(r7,r6),0x4c:m(sp)

00008fd2 <.L15>:
    8fd2:	38 01       	push	$0x4,r8
    8fd4:	12 5a       	movw	$0x1:s,r2
    8fd6:	00 c0 66 08 	bal	(ra),*+0x983c <___lshrdi3>:m
    8fda:	8f 60       	addd	$0x8:s,(sp)
    8fdc:	08 5b       	movw	r0,r8
    8fde:	19 5b       	movw	r1,r9
    8fe0:	2a 5b       	movw	r2,r10
    8fe2:	3b 5b       	movw	r3,r11
    8fe4:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    8fe8:	17 32       	addw	$0x1:s,r7
    8fea:	7f df 40 00 	storw	r7,0x40:m(sp)
    8fee:	b3 52 ff 1f 	cmpw	$0x1fff:m,r3
    8ff2:	ad 1c       	blo	*-0x8f8c <.L40>:s
    8ff4:	cf d2       	storw	r12,0x4:s(sp)

00008ff6 <.L13>:
    8ff6:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    8ffa:	a6 12       	blo	*+0x9046 <.L19>:s
    8ffc:	4f 92       	loadw	0x4:s(sp),r4
    8ffe:	94 32       	addw	$-1:s,r4
    9000:	4f df 40 00 	storw	r4,0x40:m(sp)
    9004:	4f af 48 00 	loadd	0x48:m(sp),(r5,r4)
    9008:	6f af 4c 00 	loadd	0x4c:m(sp),(r7,r6)

0000900c <.L23>:
    900c:	cf 9f 40 00 	loadw	0x40:m(sp),r12
    9010:	88 61       	addd	(r9,r8),(r9,r8)
    9012:	aa 37       	addcw	r10,r10
    9014:	bb 37       	addcw	r11,r11
    9016:	07 52       	cmpw	$0x0:s,r7
    9018:	77 10       	ble	*+0x9026 <.L21>:s
    901a:	10 54       	movd	$0x1:s,(r1,r0)
    901c:	02 54       	movd	$0x0:s,(r3,r2)
    901e:	14 00 08 90 	ord	(r1,r0),(r9,r8)
    9022:	14 00 2a 90 	ord	(r3,r2),(r11,r10)

00009026 <.L21>:
    9026:	44 61       	addd	(r5,r4),(r5,r4)
    9028:	66 37       	addcw	r6,r6
    902a:	77 37       	addcw	r7,r7
    902c:	1f 9f 40 00 	loadw	0x40:m(sp),r1
    9030:	91 32       	addw	$-1:s,r1
    9032:	1f df 40 00 	storw	r1,0x40:m(sp)
    9036:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    903a:	b9 1e       	bhs	*-0x900c <.L23>:s
    903c:	4f ef 48 00 	stord	(r5,r4),0x48:m(sp)
    9040:	6f ef 4c 00 	stord	(r7,r6),0x4c:m(sp)
    9044:	cf d2       	storw	r12,0x4:s(sp)

00009046 <.L19>:
    9046:	b0 54 ff 00 	movd	$0xff:m,(r1,r0)
    904a:	02 54       	movd	$0x0:s,(r3,r2)
    904c:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9050:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9054:	b0 52 80 00 	cmpw	$0x80:m,r0
    9058:	0f 10       	beq	*+0x9076 <.L50>:s

0000905a <.L25>:
    905a:	8f e4       	stord	(r9,r8),0x8:s(sp)
    905c:	af e6       	stord	(r11,r10),0xc:s(sp)
    905e:	3f c2       	storw	$0x3:s,0x0:s(sp)
    9060:	f2 55       	movd	(sp),(r3,r2)
    9062:	e0 18 99 fc 	br	*-0x8cfa <.L3>:m

00009066 <.L29>:
    9066:	02 54       	movd	$0x0:s,(r3,r2)
    9068:	14 54       	movd	$0x1:s,(r5,r4)
    906a:	2f ef 58 00 	stord	(r3,r2),0x58:m(sp)
    906e:	4f ef 5c 00 	stord	(r5,r4),0x5c:m(sp)
    9072:	e0 18 45 fe 	br	*-0x8eb6 <.L9>:m

00009076 <.L50>:
    9076:	01 52       	cmpw	$0x0:s,r1
    9078:	11 1f       	bne	*-0x905a <.L25>:s
    907a:	02 52       	cmpw	$0x0:s,r2
    907c:	1f 1e       	bne	*-0x905a <.L25>:s
    907e:	03 52       	cmpw	$0x0:s,r3
    9080:	1d 1e       	bne	*-0x905a <.L25>:s
    9082:	b0 54 00 01 	movd	$0x100:m,(r1,r0)
    9086:	02 54       	movd	$0x0:s,(r3,r2)
    9088:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    908c:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9090:	04 5b       	movw	r0,r4
    9092:	14 27       	orw	r1,r4
    9094:	24 27       	orw	r2,r4
    9096:	34 27       	orw	r3,r4
    9098:	04 52       	cmpw	$0x0:s,r4
    909a:	10 1e       	bne	*-0x905a <.L25>:s
    909c:	0f 9f 48 00 	loadw	0x48:m(sp),r0
    90a0:	2f 9f 4a 00 	loadw	0x4a:m(sp),r2
    90a4:	20 27       	orw	r2,r0
    90a6:	3f 9f 4c 00 	loadw	0x4c:m(sp),r3
    90aa:	30 27       	orw	r3,r0
    90ac:	4f 9f 4e 00 	loadw	0x4e:m(sp),r4
    90b0:	40 27       	orw	r4,r0
    90b2:	00 52       	cmpw	$0x0:s,r0
    90b4:	03 1d       	beq	*-0x905a <.L25>:s
    90b6:	b0 54 80 00 	movd	$0x80:m,(r1,r0)
    90ba:	02 54       	movd	$0x0:s,(r3,r2)
    90bc:	08 61       	addd	(r1,r0),(r9,r8)
    90be:	2a 37       	addcw	r2,r10
    90c0:	3b 37       	addcw	r3,r11
    90c2:	b0 54 00 ff 	movd	$0xff00:m,(r1,r0)
    90c6:	92 54       	movd	$-1:s,(r3,r2)
    90c8:	14 00 08 b0 	andd	(r1,r0),(r9,r8)
    90cc:	14 00 2a b0 	andd	(r3,r2),(r11,r10)
    90d0:	e5 1c       	br	*-0x905a <.L25>:s
	...

000090d4 <___divdf3>:
    90d4:	1e 01       	push	RA

000090d6 <.LFE7>:
    90d6:	67 01       	push	$0x7,r7
    90d8:	bf 60 bc ff 	addd	$0xffbc:m,(sp)
    90dc:	fc 55       	movd	(sp),(r12)
    90de:	0f af 56 00 	loadd	0x56:m(sp),(r1,r0)
    90e2:	2f af 5a 00 	loadd	0x5a:m(sp),(r3,r2)
    90e6:	4f af 5e 00 	loadd	0x5e:m(sp),(r5,r4)
    90ea:	6f af 62 00 	loadd	0x62:m(sp),(r7,r6)
    90ee:	bc 60 56 00 	addd	$0x56:m,(r12)
    90f2:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    90f6:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    90fa:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    90fe:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    9102:	f4 55       	movd	(sp),(r5,r4)
    9104:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    9108:	f2 55       	movd	(sp),(r3,r2)
    910a:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    910e:	00 c0 6a 0b 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009112 <.LVL1>:
    9112:	f4 55       	movd	(sp),(r5,r4)
    9114:	f2 55       	movd	(sp),(r3,r2)
    9116:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    911a:	00 c0 5e 0b 	bal	(ra),*+0x9c78 <___unpack_d>:m

0000911e <.LBB20>:
    911e:	0f 98       	loadw	0x10:s(sp),r0
    9120:	10 52       	cmpw	$0x1:s,r0
    9122:	aa 10       	blo	*+0x9136 <.L2>:s

00009124 <.L27>:
    9124:	f2 55       	movd	(sp),(r3,r2)
    9126:	b2 60 10 00 	addd	$0x10:m,(r3,r2)

0000912a <.L3>:
    912a:	00 c0 16 09 	bal	(ra),*+0x9a40 <___pack_d>:m

0000912e <.LVL4>:
    912e:	bf 60 44 00 	addd	$0x44:m,(sp)
    9132:	67 02       	pop	$0x7,r7
    9134:	1e 03       	popret	RA

00009136 <.L2>:
    9136:	1f 90       	loadw	0x0:s(sp),r1
    9138:	f2 55       	movd	(sp),(r3,r2)
    913a:	11 52       	cmpw	$0x1:s,r1
    913c:	b7 1f       	bhs	*-0x912a <.L3>:s
    913e:	2f 91       	loadw	0x2:s(sp),r2
    9140:	3f 99       	loadw	0x12:s(sp),r3
    9142:	32 2b       	xorw	r3,r2
    9144:	2f d9       	storw	r2,0x12:s(sp)
    9146:	40 52       	cmpw	$0x4:s,r0
    9148:	03 10       	beq	*+0x914e <.L4>:s
    914a:	20 52       	cmpw	$0x2:s,r0
    914c:	16 10       	bne	*+0x9158 <.L5>:s

0000914e <.L4>:
    914e:	10 53       	cmpw	r1,r0
    9150:	1a 1e       	bne	*-0x9124 <.L27>:s
    9152:	20 05 3c a3 	movd	$0xa33c:m,(r3,r2)
    9156:	ea 1e       	br	*-0x912a <.L3>:s

00009158 <.L5>:
    9158:	41 52       	cmpw	$0x4:s,r1
    915a:	00 18 1a 01 	beq	*+0x9274 <.L29>:m
    915e:	21 52       	cmpw	$0x2:s,r1
    9160:	00 18 2c 01 	beq	*+0x928c <.L30>:m
    9164:	1f 92       	loadw	0x4:s(sp),r1
    9166:	0f 9a       	loadw	0x14:s(sp),r0
    9168:	10 3b       	subw	r1,r0
    916a:	0f da       	storw	r0,0x14:s(sp)
    916c:	8f ac       	loadd	0x18:s(sp),(r9,r8)
    916e:	af af 1c 00 	loadd	0x1c:m(sp),(r11,r10)
    9172:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    9174:	4f a6       	loadd	0xc:s(sp),(r5,r4)
    9176:	2f ef 30 00 	stord	(r3,r2),0x30:m(sp)
    917a:	4f ef 34 00 	stord	(r5,r4),0x34:m(sp)
    917e:	b5 53       	cmpw	r11,r5
    9180:	a3 11       	blo	*+0x91a6 <.L18>:s
    9182:	3f 9f 36 00 	loadw	0x36:m(sp),r3
    9186:	b3 53       	cmpw	r11,r3
    9188:	14 11       	bne	*+0x91b0 <.L9>:s
    918a:	a4 53       	cmpw	r10,r4
    918c:	ad 10       	blo	*+0x91a6 <.L18>:s
    918e:	4f 9f 34 00 	loadw	0x34:m(sp),r4
    9192:	a4 53       	cmpw	r10,r4
    9194:	1e 10       	bne	*+0x91b0 <.L9>:s
    9196:	5f 9f 32 00 	loadw	0x32:m(sp),r5
    919a:	95 53       	cmpw	r9,r5
    919c:	a5 10       	blo	*+0x91a6 <.L18>:s
    919e:	95 53       	cmpw	r9,r5
    91a0:	18 10       	bne	*+0x91b0 <.L9>:s
    91a2:	82 53       	cmpw	r8,r2
    91a4:	b6 10       	bhs	*+0x91b0 <.L9>:s

000091a6 <.L18>:
    91a6:	88 61       	addd	(r9,r8),(r9,r8)
    91a8:	aa 37       	addcw	r10,r10
    91aa:	bb 37       	addcw	r11,r11
    91ac:	90 32       	addw	$-1:s,r0
    91ae:	0f da       	storw	r0,0x14:s(sp)

000091b0 <.L9>:
    91b0:	b7 5a 3d 00 	movw	$0x3d:m,r7
    91b4:	7f df 40 00 	storw	r7,0x40:m(sp)
    91b8:	00 54       	movd	$0x0:s,(r1,r0)
    91ba:	72 00 00 10 	movd	$0x10000000:l,(r3,r2)
    91be:	00 00 
    91c0:	04 54       	movd	$0x0:s,(r5,r4)
    91c2:	06 54       	movd	$0x0:s,(r7,r6)
    91c4:	4f ef 38 00 	stord	(r5,r4),0x38:m(sp)
    91c8:	6f ef 3c 00 	stord	(r7,r6),0x3c:m(sp)

000091cc <.L13>:
    91cc:	5f 9f 36 00 	loadw	0x36:m(sp),r5
    91d0:	b5 53       	cmpw	r11,r5
    91d2:	a7 12       	blo	*+0x9220 <.L11>:s
    91d4:	b5 53       	cmpw	r11,r5
    91d6:	11 11       	bne	*+0x91f8 <.L19>:s
    91d8:	7f 9f 34 00 	loadw	0x34:m(sp),r7
    91dc:	a7 53       	cmpw	r10,r7
    91de:	a1 12       	blo	*+0x9220 <.L11>:s
    91e0:	a7 53       	cmpw	r10,r7
    91e2:	1b 10       	bne	*+0x91f8 <.L19>:s
    91e4:	5f 9f 32 00 	loadw	0x32:m(sp),r5
    91e8:	95 53       	cmpw	r9,r5
    91ea:	ab 11       	blo	*+0x9220 <.L11>:s
    91ec:	95 53       	cmpw	r9,r5
    91ee:	15 10       	bne	*+0x91f8 <.L19>:s
    91f0:	7f 9f 30 00 	loadw	0x30:m(sp),r7
    91f4:	87 53       	cmpw	r8,r7
    91f6:	a5 11       	blo	*+0x9220 <.L11>:s

000091f8 <.L19>:
    91f8:	4f af 38 00 	loadd	0x38:m(sp),(r5,r4)
    91fc:	6f af 3c 00 	loadd	0x3c:m(sp),(r7,r6)
    9200:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    9204:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    9208:	4f ef 38 00 	stord	(r5,r4),0x38:m(sp)
    920c:	6f ef 3c 00 	stord	(r7,r6),0x3c:m(sp)
    9210:	4f af 30 00 	loadd	0x30:m(sp),(r5,r4)
    9214:	6f af 34 00 	loadd	0x34:m(sp),(r7,r6)
    9218:	14 00 48 c0 	subd	(r5,r4),(r9,r8)
    921c:	6a 3f       	subcw	r6,r10
    921e:	7b 3f       	subcw	r7,r11

00009220 <.L11>:
    9220:	30 01       	push	$0x4,r0
    9222:	12 5a       	movw	$0x1:s,r2
    9224:	00 c0 18 06 	bal	(ra),*+0x983c <___lshrdi3>:m
    9228:	8f 60       	addd	$0x8:s,(sp)
    922a:	3c 5b       	movw	r3,r12
    922c:	88 61       	addd	(r9,r8),(r9,r8)
    922e:	aa 37       	addcw	r10,r10
    9230:	bb 37       	addcw	r11,r11
    9232:	7f 9f 40 00 	loadw	0x40:m(sp),r7
    9236:	97 32       	addw	$-1:s,r7
    9238:	7f df 40 00 	storw	r7,0x40:m(sp)
    923c:	07 52       	cmpw	$0x0:s,r7
    923e:	17 1c       	bne	*-0x91cc <.L13>:s
    9240:	b0 54 ff 00 	movd	$0xff:m,(r1,r0)
    9244:	02 54       	movd	$0x0:s,(r3,r2)
    9246:	4f af 38 00 	loadd	0x38:m(sp),(r5,r4)
    924a:	6f af 3c 00 	loadd	0x3c:m(sp),(r7,r6)
    924e:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    9252:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    9256:	b0 52 80 00 	cmpw	$0x80:m,r0
    925a:	0d 11       	beq	*+0x9294 <.L31>:s

0000925c <.L14>:
    925c:	0f af 38 00 	loadd	0x38:m(sp),(r1,r0)
    9260:	2f af 3c 00 	loadd	0x3c:m(sp),(r3,r2)
    9264:	0f ec       	stord	(r1,r0),0x18:s(sp)
    9266:	2f ef 1c 00 	stord	(r3,r2),0x1c:m(sp)
    926a:	f2 55       	movd	(sp),(r3,r2)
    926c:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    9270:	e0 18 bb fe 	br	*-0x912a <.L3>:m

00009274 <.L29>:
    9274:	00 54       	movd	$0x0:s,(r1,r0)
    9276:	02 54       	movd	$0x0:s,(r3,r2)
    9278:	0f ec       	stord	(r1,r0),0x18:s(sp)
    927a:	2f ef 1c 00 	stord	(r3,r2),0x1c:m(sp)
    927e:	0f c3 14 00 	storw	$0x0:s,0x14:m(sp)
    9282:	f2 55       	movd	(sp),(r3,r2)
    9284:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    9288:	e0 18 a3 fe 	br	*-0x912a <.L3>:m

0000928c <.L30>:
    928c:	4f c3 10 00 	storw	$0x4:s,0x10:m(sp)
    9290:	e0 18 95 fe 	br	*-0x9124 <.L27>:m

00009294 <.L31>:
    9294:	01 52       	cmpw	$0x0:s,r1
    9296:	13 1e       	bne	*-0x925c <.L14>:s
    9298:	02 52       	cmpw	$0x0:s,r2
    929a:	11 1e       	bne	*-0x925c <.L14>:s
    929c:	03 52       	cmpw	$0x0:s,r3
    929e:	1f 1d       	bne	*-0x925c <.L14>:s
    92a0:	b0 54 00 01 	movd	$0x100:m,(r1,r0)
    92a4:	02 54       	movd	$0x0:s,(r3,r2)
    92a6:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    92aa:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    92ae:	04 5b       	movw	r0,r4
    92b0:	14 27       	orw	r1,r4
    92b2:	24 27       	orw	r2,r4
    92b4:	34 27       	orw	r3,r4
    92b6:	04 52       	cmpw	$0x0:s,r4
    92b8:	12 1d       	bne	*-0x925c <.L14>:s
    92ba:	80 5b       	movw	r8,r0
    92bc:	90 27       	orw	r9,r0
    92be:	a0 27       	orw	r10,r0
    92c0:	b0 27       	orw	r11,r0
    92c2:	00 52       	cmpw	$0x0:s,r0
    92c4:	0c 1c       	beq	*-0x925c <.L14>:s
    92c6:	b0 54 80 00 	movd	$0x80:m,(r1,r0)
    92ca:	02 54       	movd	$0x0:s,(r3,r2)
    92cc:	4f af 38 00 	loadd	0x38:m(sp),(r5,r4)
    92d0:	6f af 3c 00 	loadd	0x3c:m(sp),(r7,r6)
    92d4:	04 61       	addd	(r1,r0),(r5,r4)
    92d6:	26 37       	addcw	r2,r6
    92d8:	37 37       	addcw	r3,r7
    92da:	b0 54 00 ff 	movd	$0xff00:m,(r1,r0)
    92de:	92 54       	movd	$-1:s,(r3,r2)
    92e0:	14 00 04 b0 	andd	(r1,r0),(r5,r4)
    92e4:	14 00 26 b0 	andd	(r3,r2),(r7,r6)
    92e8:	4f ef 38 00 	stord	(r5,r4),0x38:m(sp)
    92ec:	6f ef 3c 00 	stord	(r7,r6),0x3c:m(sp)
    92f0:	e6 1b       	br	*-0x925c <.L14>:s
	...

000092f4 <___eqdf2>:
    92f4:	1e 01       	push	RA

000092f6 <.LFE7>:
    92f6:	1c 01       	push	$0x2,r12
    92f8:	07 01       	push	$0x1,r7
    92fa:	bf 60 d0 ff 	addd	$0xffd0:m,(sp)
    92fe:	fc 55       	movd	(sp),(r12)
    9300:	0f af 3a 00 	loadd	0x3a:m(sp),(r1,r0)
    9304:	2f af 3e 00 	loadd	0x3e:m(sp),(r3,r2)
    9308:	4f af 42 00 	loadd	0x42:m(sp),(r5,r4)
    930c:	6f af 46 00 	loadd	0x46:m(sp),(r7,r6)
    9310:	bc 60 3a 00 	addd	$0x3a:m,(r12)
    9314:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    9318:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    931c:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    9320:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    9324:	f4 55       	movd	(sp),(r5,r4)
    9326:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    932a:	f2 55       	movd	(sp),(r3,r2)
    932c:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    9330:	00 c0 48 09 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009334 <.LVL1>:
    9334:	f4 55       	movd	(sp),(r5,r4)
    9336:	f2 55       	movd	(sp),(r3,r2)
    9338:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    933c:	00 c0 3c 09 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009340 <.LVL2>:
    9340:	0f 98       	loadw	0x10:s(sp),r0
    9342:	10 52       	cmpw	$0x1:s,r0
    9344:	bf 10       	bhs	*+0x9362 <.L4>:s
    9346:	0f 90       	loadw	0x0:s(sp),r0
    9348:	10 52       	cmpw	$0x1:s,r0
    934a:	bc 10       	bhs	*+0x9362 <.L4>:s
    934c:	f4 55       	movd	(sp),(r5,r4)
    934e:	f2 55       	movd	(sp),(r3,r2)
    9350:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    9354:	00 c0 00 0a 	bal	(ra),*+0x9d54 <___fpcmp_parts_d>:m

00009358 <.L2>:
    9358:	bf 60 30 00 	addd	$0x30:m,(sp)
    935c:	07 02       	pop	$0x1,r7
    935e:	1c 02       	pop	$0x2,r12
    9360:	1e 03       	popret	RA

00009362 <.L4>:
    9362:	10 5a       	movw	$0x1:s,r0
    9364:	ea 1f       	br	*-0x9358 <.L2>:s

00009366 <.LFE6>:
	...

00009368 <___nedf2>:
    9368:	1e 01       	push	RA
    936a:	1c 01       	push	$0x2,r12
    936c:	07 01       	push	$0x1,r7
    936e:	bf 60 d0 ff 	addd	$0xffd0:m,(sp)
    9372:	fc 55       	movd	(sp),(r12)
    9374:	0f af 3a 00 	loadd	0x3a:m(sp),(r1,r0)
    9378:	2f af 3e 00 	loadd	0x3e:m(sp),(r3,r2)
    937c:	4f af 42 00 	loadd	0x42:m(sp),(r5,r4)
    9380:	6f af 46 00 	loadd	0x46:m(sp),(r7,r6)
    9384:	bc 60 3a 00 	addd	$0x3a:m,(r12)
    9388:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    938c:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    9390:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    9394:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    9398:	f4 55       	movd	(sp),(r5,r4)
    939a:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    939e:	f2 55       	movd	(sp),(r3,r2)
    93a0:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    93a4:	00 c0 d4 08 	bal	(ra),*+0x9c78 <___unpack_d>:m

000093a8 <.LVL1>:
    93a8:	f4 55       	movd	(sp),(r5,r4)
    93aa:	f2 55       	movd	(sp),(r3,r2)
    93ac:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    93b0:	00 c0 c8 08 	bal	(ra),*+0x9c78 <___unpack_d>:m

000093b4 <.LVL2>:
    93b4:	0f 98       	loadw	0x10:s(sp),r0
    93b6:	10 52       	cmpw	$0x1:s,r0
    93b8:	bf 10       	bhs	*+0x93d6 <.L4>:s
    93ba:	0f 90       	loadw	0x0:s(sp),r0
    93bc:	10 52       	cmpw	$0x1:s,r0
    93be:	bc 10       	bhs	*+0x93d6 <.L4>:s
    93c0:	f4 55       	movd	(sp),(r5,r4)
    93c2:	f2 55       	movd	(sp),(r3,r2)
    93c4:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    93c8:	00 c0 8c 09 	bal	(ra),*+0x9d54 <___fpcmp_parts_d>:m

000093cc <.L2>:
    93cc:	bf 60 30 00 	addd	$0x30:m,(sp)
    93d0:	07 02       	pop	$0x1,r7
    93d2:	1c 02       	pop	$0x2,r12
    93d4:	1e 03       	popret	RA

000093d6 <.L4>:
    93d6:	10 5a       	movw	$0x1:s,r0
    93d8:	ea 1f       	br	*-0x93cc <.L2>:s

000093da <.LFE6>:
	...

000093dc <___gtdf2>:
    93dc:	1e 01       	push	RA
    93de:	1c 01       	push	$0x2,r12
    93e0:	07 01       	push	$0x1,r7
    93e2:	bf 60 d0 ff 	addd	$0xffd0:m,(sp)
    93e6:	fc 55       	movd	(sp),(r12)
    93e8:	0f af 3a 00 	loadd	0x3a:m(sp),(r1,r0)
    93ec:	2f af 3e 00 	loadd	0x3e:m(sp),(r3,r2)
    93f0:	4f af 42 00 	loadd	0x42:m(sp),(r5,r4)
    93f4:	6f af 46 00 	loadd	0x46:m(sp),(r7,r6)
    93f8:	bc 60 3a 00 	addd	$0x3a:m,(r12)
    93fc:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    9400:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    9404:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    9408:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    940c:	f4 55       	movd	(sp),(r5,r4)
    940e:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    9412:	f2 55       	movd	(sp),(r3,r2)
    9414:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    9418:	00 c0 60 08 	bal	(ra),*+0x9c78 <___unpack_d>:m

0000941c <.LVL1>:
    941c:	f4 55       	movd	(sp),(r5,r4)
    941e:	f2 55       	movd	(sp),(r3,r2)
    9420:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    9424:	00 c0 54 08 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009428 <.LVL2>:
    9428:	0f 98       	loadw	0x10:s(sp),r0
    942a:	10 52       	cmpw	$0x1:s,r0
    942c:	bf 10       	bhs	*+0x944a <.L4>:s
    942e:	0f 90       	loadw	0x0:s(sp),r0
    9430:	10 52       	cmpw	$0x1:s,r0
    9432:	bc 10       	bhs	*+0x944a <.L4>:s
    9434:	f4 55       	movd	(sp),(r5,r4)
    9436:	f2 55       	movd	(sp),(r3,r2)
    9438:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    943c:	00 c0 18 09 	bal	(ra),*+0x9d54 <___fpcmp_parts_d>:m

00009440 <.L2>:
    9440:	bf 60 30 00 	addd	$0x30:m,(sp)
    9444:	07 02       	pop	$0x1,r7
    9446:	1c 02       	pop	$0x2,r12
    9448:	1e 03       	popret	RA

0000944a <.L4>:
    944a:	90 5a       	movw	$-1:s,r0
    944c:	ea 1f       	br	*-0x9440 <.L2>:s

0000944e <.LFE6>:
	...

00009450 <___gedf2>:
    9450:	1e 01       	push	RA
    9452:	1c 01       	push	$0x2,r12
    9454:	07 01       	push	$0x1,r7
    9456:	bf 60 d0 ff 	addd	$0xffd0:m,(sp)
    945a:	fc 55       	movd	(sp),(r12)
    945c:	0f af 3a 00 	loadd	0x3a:m(sp),(r1,r0)
    9460:	2f af 3e 00 	loadd	0x3e:m(sp),(r3,r2)
    9464:	4f af 42 00 	loadd	0x42:m(sp),(r5,r4)
    9468:	6f af 46 00 	loadd	0x46:m(sp),(r7,r6)
    946c:	bc 60 3a 00 	addd	$0x3a:m,(r12)
    9470:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    9474:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    9478:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    947c:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    9480:	f4 55       	movd	(sp),(r5,r4)
    9482:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    9486:	f2 55       	movd	(sp),(r3,r2)
    9488:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    948c:	00 c0 ec 07 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009490 <.LVL1>:
    9490:	f4 55       	movd	(sp),(r5,r4)
    9492:	f2 55       	movd	(sp),(r3,r2)
    9494:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    9498:	00 c0 e0 07 	bal	(ra),*+0x9c78 <___unpack_d>:m

0000949c <.LVL2>:
    949c:	0f 98       	loadw	0x10:s(sp),r0
    949e:	10 52       	cmpw	$0x1:s,r0
    94a0:	bf 10       	bhs	*+0x94be <.L4>:s
    94a2:	0f 90       	loadw	0x0:s(sp),r0
    94a4:	10 52       	cmpw	$0x1:s,r0
    94a6:	bc 10       	bhs	*+0x94be <.L4>:s
    94a8:	f4 55       	movd	(sp),(r5,r4)
    94aa:	f2 55       	movd	(sp),(r3,r2)
    94ac:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    94b0:	00 c0 a4 08 	bal	(ra),*+0x9d54 <___fpcmp_parts_d>:m

000094b4 <.L2>:
    94b4:	bf 60 30 00 	addd	$0x30:m,(sp)
    94b8:	07 02       	pop	$0x1,r7
    94ba:	1c 02       	pop	$0x2,r12
    94bc:	1e 03       	popret	RA

000094be <.L4>:
    94be:	90 5a       	movw	$-1:s,r0
    94c0:	ea 1f       	br	*-0x94b4 <.L2>:s

000094c2 <.LFE6>:
	...

000094c4 <___ltdf2>:
    94c4:	1e 01       	push	RA
    94c6:	1c 01       	push	$0x2,r12
    94c8:	07 01       	push	$0x1,r7
    94ca:	bf 60 d0 ff 	addd	$0xffd0:m,(sp)
    94ce:	fc 55       	movd	(sp),(r12)
    94d0:	0f af 3a 00 	loadd	0x3a:m(sp),(r1,r0)
    94d4:	2f af 3e 00 	loadd	0x3e:m(sp),(r3,r2)
    94d8:	4f af 42 00 	loadd	0x42:m(sp),(r5,r4)
    94dc:	6f af 46 00 	loadd	0x46:m(sp),(r7,r6)
    94e0:	bc 60 3a 00 	addd	$0x3a:m,(r12)
    94e4:	4f ef 20 00 	stord	(r5,r4),0x20:m(sp)
    94e8:	6f ef 24 00 	stord	(r7,r6),0x24:m(sp)
    94ec:	0f ef 28 00 	stord	(r1,r0),0x28:m(sp)
    94f0:	2f ef 2c 00 	stord	(r3,r2),0x2c:m(sp)
    94f4:	f4 55       	movd	(sp),(r5,r4)
    94f6:	b4 60 10 00 	addd	$0x10:m,(r5,r4)
    94fa:	f2 55       	movd	(sp),(r3,r2)
    94fc:	b2 60 28 00 	addd	$0x28:m,(r3,r2)
    9500:	00 c0 78 07 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009504 <.LVL1>:
    9504:	f4 55       	movd	(sp),(r5,r4)
    9506:	f2 55       	movd	(sp),(r3,r2)
    9508:	b2 60 20 00 	addd	$0x20:m,(r3,r2)
    950c:	00 c0 6c 07 	bal	(ra),*+0x9c78 <___unpack_d>:m

00009510 <.LVL2>:
    9510:	0f 98       	loadw	0x10:s(sp),r0
    9512:	10 52       	cmpw	$0x1:s,r0
    9514:	bf 10       	bhs	*+0x9532 <.L4>:s
    9516:	0f 90       	loadw	0x0:s(sp),r0
    9518:	10 52       	cmpw	$0x1:s,r0
    951a:	bc 10       	bhs	*+0x9532 <.L4>:s
    951c:	f4 55       	movd	(sp),(r5,r4)
    951e:	f2 55       	movd	(sp),(r3,r2)
    9520:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    9524:	00 c0 30 08 	bal	(ra),*+0x9d54 <___fpcmp_parts_d>:m

00009528 <.L2>:
    9528:	bf 60 30 00 	addd	$0x30:m,(sp)
    952c:	07 02       	pop	$0x1,r7
    952e:	1c 02       	pop	$0x2,r12
    9530:	1e 03       	popret	RA

00009532 <.L4>:
    9532:	10 5a       	movw	$0x1:s,r0
    9534:	ea 1f       	br	*-0x9528 <.L2>:s

00009536 <.LFE6>:
	...

00009538 <___floatsidf>:
    9538:	1e 01       	push	RA
    953a:	47 01       	push	$0x5,r7
    953c:	bf 60 f0 ff 	addd	$0xfff0:m,(sp)
    9540:	3f c2       	storw	$0x3:s,0x0:s(sp)
    9542:	30 5b       	movw	r3,r0
    9544:	10 49       	lshw	$-15:s,r0
    9546:	0f d1       	storw	r0,0x2:s(sp)
    9548:	02 56       	cmpd	$0x0:s,(r3,r2)
    954a:	19 10       	bne	*+0x955c <.L2>:s
    954c:	2f c2       	storw	$0x2:s,0x0:s(sp)

0000954e <.L3>:
    954e:	f2 55       	movd	(sp),(r3,r2)
    9550:	00 c0 f0 04 	bal	(ra),*+0x9a40 <___pack_d>:m

00009554 <.L5>:
    9554:	bf 60 10 00 	addd	$0x10:m,(sp)
    9558:	47 02       	pop	$0x5,r7
    955a:	1e 03       	popret	RA

0000955c <.L2>:
    955c:	b1 5a 3c 00 	movw	$0x3c:m,r1
    9560:	1f d2       	storw	r1,0x4:s(sp)
    9562:	00 52       	cmpw	$0x0:s,r0
    9564:	19 11       	bne	*+0x9596 <.L10>:s
    9566:	20 55       	movd	(r3,r2),(r1,r0)
    9568:	08 55       	movd	(r1,r0),(r9,r8)
    956a:	0a 5a       	movw	$0x0:s,r10
    956c:	ab 5b       	movw	r10,r11

0000956e <.LBB6>:
    956e:	02 55       	movd	(r1,r0),(r3,r2)
    9570:	00 c0 40 04 	bal	(ra),*+0x99b0 <___clzsi2>:m
    9574:	07 5b       	movw	r0,r7
    9576:	b7 32 1d 00 	addw	$0x1d:m,r7
    957a:	a7 53       	cmpw	r10,r7
    957c:	df 11       	bge	*+0x95ba <.L11>:s

0000957e <.L7>:
    957e:	38 01       	push	$0x4,r8
    9580:	72 5b       	movw	r7,r2
    9582:	00 c0 c2 03 	bal	(ra),*+0x9944 <___ashldi3>:m
    9586:	8f 60       	addd	$0x8:s,(sp)
    9588:	0f e4       	stord	(r1,r0),0x8:s(sp)
    958a:	2f e6       	stord	(r3,r2),0xc:s(sp)
    958c:	b0 5a 3c 00 	movw	$0x3c:m,r0
    9590:	70 3b       	subw	r7,r0
    9592:	0f d2       	storw	r0,0x4:s(sp)
    9594:	ed 1d       	br	*-0x954e <.L3>:s

00009596 <.L10>:
    9596:	92 00 00 80 	cmpd	$0x80000000:l,(r3,r2)
    959a:	00 00 
    959c:	02 11       	beq	*+0x95c0 <.L8>:s
    959e:	00 54       	movd	$0x0:s,(r1,r0)
    95a0:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    95a4:	08 55       	movd	(r1,r0),(r9,r8)
    95a6:	0a 5a       	movw	$0x0:s,r10
    95a8:	ab 5b       	movw	r10,r11
    95aa:	02 55       	movd	(r1,r0),(r3,r2)
    95ac:	00 c0 04 04 	bal	(ra),*+0x99b0 <___clzsi2>:m
    95b0:	07 5b       	movw	r0,r7
    95b2:	b7 32 1d 00 	addw	$0x1d:m,r7
    95b6:	a7 53       	cmpw	r10,r7
    95b8:	c3 1e       	blt	*-0x957e <.L7>:s

000095ba <.L11>:
    95ba:	8f e4       	stord	(r9,r8),0x8:s(sp)
    95bc:	af e6       	stord	(r11,r10),0xc:s(sp)
    95be:	e8 1c       	br	*-0x954e <.L3>:s

000095c0 <.L8>:
    95c0:	00 54       	movd	$0x0:s,(r1,r0)
    95c2:	72 00 e0 c1 	movd	$0xc1e00000:l,(r3,r2)
    95c6:	00 00 
    95c8:	e6 1c       	br	*-0x9554 <.L5>:s

000095ca <.LBE5>:
	...

000095cc <___fixdfsi>:
    95cc:	1e 01       	push	RA
    95ce:	1c 01       	push	$0x2,r12
    95d0:	07 01       	push	$0x1,r7
    95d2:	bf 60 e8 ff 	addd	$0xffe8:m,(sp)
    95d6:	fc 55       	movd	(sp),(r12)
    95d8:	0f af 22 00 	loadd	0x22:m(sp),(r1,r0)
    95dc:	2f af 26 00 	loadd	0x26:m(sp),(r3,r2)
    95e0:	bc 60 22 00 	addd	$0x22:m,(r12)
    95e4:	0f e8       	stord	(r1,r0),0x10:s(sp)
    95e6:	2f ea       	stord	(r3,r2),0x14:s(sp)
    95e8:	f4 55       	movd	(sp),(r5,r4)
    95ea:	f2 55       	movd	(sp),(r3,r2)
    95ec:	b2 60 10 00 	addd	$0x10:m,(r3,r2)
    95f0:	00 c0 88 06 	bal	(ra),*+0x9c78 <___unpack_d>:m

000095f4 <.LVL1>:
    95f4:	0f 90       	loadw	0x0:s(sp),r0
    95f6:	20 52       	cmpw	$0x2:s,r0
    95f8:	02 13       	beq	*+0x965c <.L8>:s
    95fa:	10 52       	cmpw	$0x1:s,r0
    95fc:	b0 13       	bhs	*+0x965c <.L8>:s
    95fe:	40 52       	cmpw	$0x4:s,r0
    9600:	07 10       	beq	*+0x960e <.L4>:s
    9602:	0f 92       	loadw	0x4:s(sp),r0
    9604:	00 52       	cmpw	$0x0:s,r0
    9606:	6b 12       	bgt	*+0x965c <.L8>:s
    9608:	b0 52 1e 00 	cmpw	$0x1e:m,r0
    960c:	de 10       	bge	*+0x9628 <.L14>:s

0000960e <.L4>:
    960e:	72 00 ff 7f 	movd	$0x7fffffff:l,(r3,r2)
    9612:	ff ff 
    9614:	0f 91       	loadw	0x2:s(sp),r0
    9616:	00 52       	cmpw	$0x0:s,r0
    9618:	1a 12       	bne	*+0x966c <.L15>:s

0000961a <.L2>:
    961a:	20 5b       	movw	r2,r0
    961c:	31 5b       	movw	r3,r1
    961e:	bf 60 18 00 	addd	$0x18:m,(sp)
    9622:	07 02       	pop	$0x1,r7
    9624:	1c 02       	pop	$0x2,r12
    9626:	1e 03       	popret	RA

00009628 <.L14>:
    9628:	b4 5a 3c 00 	movw	$0x3c:m,r4
    962c:	42 5b       	movw	r4,r2
    962e:	02 3b       	subw	r0,r2
    9630:	4f a4       	loadd	0x8:s(sp),(r5,r4)
    9632:	6f a6       	loadd	0xc:s(sp),(r7,r6)
    9634:	34 01       	push	$0x4,r4
    9636:	00 c0 06 02 	bal	(ra),*+0x983c <___lshrdi3>:m
    963a:	8f 60       	addd	$0x8:s,(sp)
    963c:	02 55       	movd	(r1,r0),(r3,r2)
    963e:	0f 91       	loadw	0x2:s(sp),r0
    9640:	00 52       	cmpw	$0x0:s,r0
    9642:	0c 1e       	beq	*-0x961a <.L2>:s
    9644:	00 54       	movd	$0x0:s,(r1,r0)
    9646:	05 55       	movd	(r1,r0),(r6,r5)
    9648:	14 00 25 c0 	subd	(r3,r2),(r6,r5)
    964c:	52 55       	movd	(r6,r5),(r3,r2)
    964e:	20 5b       	movw	r2,r0
    9650:	31 5b       	movw	r3,r1
    9652:	bf 60 18 00 	addd	$0x18:m,(sp)
    9656:	07 02       	pop	$0x1,r7
    9658:	1c 02       	pop	$0x2,r12
    965a:	1e 03       	popret	RA

0000965c <.L8>:
    965c:	02 54       	movd	$0x0:s,(r3,r2)
    965e:	20 5b       	movw	r2,r0
    9660:	31 5b       	movw	r3,r1
    9662:	bf 60 18 00 	addd	$0x18:m,(sp)
    9666:	07 02       	pop	$0x1,r7
    9668:	1c 02       	pop	$0x2,r12
    966a:	1e 03       	popret	RA

0000966c <.L15>:
    966c:	72 00 00 80 	movd	$0x80000000:l,(r3,r2)
    9670:	00 00 
    9672:	20 5b       	movw	r2,r0
    9674:	31 5b       	movw	r3,r1
    9676:	bf 60 18 00 	addd	$0x18:m,(sp)
    967a:	07 02       	pop	$0x1,r7
    967c:	1c 02       	pop	$0x2,r12
    967e:	1e 03       	popret	RA

00009680 <___floatunsidf>:
    9680:	9d 01       	push	$0x2,r13,RA
    9682:	67 01       	push	$0x7,r7
    9684:	bf 60 e4 ff 	addd	$0xffe4:m,(sp)
    9688:	0f c3 02 00 	storw	$0x0:s,0x2:m(sp)
    968c:	02 56       	cmpd	$0x0:s,(r3,r2)
    968e:	04 12       	beq	*+0x96d6 <.L8>:s
    9690:	3f c2       	storw	$0x3:s,0x0:s(sp)
    9692:	bc 5a 3c 00 	movw	$0x3c:m,r12
    9696:	cf d2       	storw	r12,0x4:s(sp)
    9698:	28 55       	movd	(r3,r2),(r9,r8)
    969a:	0a 5a       	movw	$0x0:s,r10
    969c:	ab 5b       	movw	r10,r11

0000969e <.LBB7>:
    969e:	00 c0 12 03 	bal	(ra),*+0x99b0 <___clzsi2>:m

000096a2 <.LBE7>:
    96a2:	b0 32 1d 00 	addw	$0x1d:m,r0
    96a6:	0f d8       	storw	r0,0x10:s(sp)
    96a8:	a0 53       	cmpw	r10,r0
    96aa:	6e 11       	bgt	*+0x96e6 <.L9>:s
    96ac:	7f 98       	loadw	0x10:s(sp),r7
    96ae:	07 52       	cmpw	$0x0:s,r7
    96b0:	03 15       	beq	*+0x9756 <.L10>:s
    96b2:	38 01       	push	$0x4,r8
    96b4:	2f 9c       	loadw	0x18:s(sp),r2
    96b6:	00 c0 8e 02 	bal	(ra),*+0x9944 <___ashldi3>:m
    96ba:	8f 60       	addd	$0x8:s,(sp)

000096bc <.L6>:
    96bc:	0f e4       	stord	(r1,r0),0x8:s(sp)
    96be:	2f e6       	stord	(r3,r2),0xc:s(sp)
    96c0:	c0 5b       	movw	r12,r0
    96c2:	7f 98       	loadw	0x10:s(sp),r7
    96c4:	70 3b       	subw	r7,r0
    96c6:	0f d2       	storw	r0,0x4:s(sp)

000096c8 <.L3>:
    96c8:	f2 55       	movd	(sp),(r3,r2)
    96ca:	00 c0 76 03 	bal	(ra),*+0x9a40 <___pack_d>:m

000096ce <.LVL6>:
    96ce:	bf 60 1c 00 	addd	$0x1c:m,(sp)
    96d2:	67 02       	pop	$0x7,r7
    96d4:	9d 03       	popret	$0x2,r13,RA

000096d6 <.L8>:
    96d6:	2f c2       	storw	$0x2:s,0x0:s(sp)
    96d8:	f2 55       	movd	(sp),(r3,r2)
    96da:	00 c0 66 03 	bal	(ra),*+0x9a40 <___pack_d>:m

000096de <.LVL9>:
    96de:	bf 60 1c 00 	addd	$0x1c:m,(sp)
    96e2:	67 02       	pop	$0x7,r7
    96e4:	9d 03       	popret	$0x2,r13,RA

000096e6 <.L9>:
    96e6:	a1 5b       	movw	r10,r1
    96e8:	01 3b       	subw	r0,r1
    96ea:	1d 5b       	movw	r1,r13
    96ec:	12 54       	movd	$0x1:s,(r3,r2)
    96ee:	04 54       	movd	$0x0:s,(r5,r4)
    96f0:	32 01       	push	$0x4,r2
    96f2:	12 5b       	movw	r1,r2
    96f4:	00 c0 50 02 	bal	(ra),*+0x9944 <___ashldi3>:m
    96f8:	14 54       	movd	$0x1:s,(r5,r4)
    96fa:	06 54       	movd	$0x0:s,(r7,r6)
    96fc:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    9700:	62 3f       	subcw	r6,r2
    9702:	73 3f       	subcw	r7,r3
    9704:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9708:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    970c:	04 54       	movd	$0x0:s,(r5,r4)
    970e:	06 54       	movd	$0x0:s,(r7,r6)
    9710:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    9714:	26 3f       	subcw	r2,r6
    9716:	37 3f       	subcw	r3,r7
    9718:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    971c:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    9720:	4f e0       	stord	(r5,r4),0x0:s(sp)
    9722:	6f e2       	stord	(r7,r6),0x4:s(sp)
    9724:	b2 5a 3f 00 	movw	$0x3f:m,r2
    9728:	00 c0 14 01 	bal	(ra),*+0x983c <___lshrdi3>:m
    972c:	0f df 1c 00 	storw	r0,0x1c:m(sp)
    9730:	1f df 1e 00 	storw	r1,0x1e:m(sp)
    9734:	2f df 20 00 	storw	r2,0x20:m(sp)
    9738:	3f df 22 00 	storw	r3,0x22:m(sp)
    973c:	8f e0       	stord	(r9,r8),0x0:s(sp)
    973e:	af e2       	stord	(r11,r10),0x4:s(sp)
    9740:	d2 5b       	movw	r13,r2
    9742:	00 c0 fa 00 	bal	(ra),*+0x983c <___lshrdi3>:m
    9746:	8f 60       	addd	$0x8:s,(sp)
    9748:	4f aa       	loadd	0x14:s(sp),(r5,r4)
    974a:	6f ac       	loadd	0x18:s(sp),(r7,r6)
    974c:	14 00 40 90 	ord	(r5,r4),(r1,r0)
    9750:	14 00 62 90 	ord	(r7,r6),(r3,r2)
    9754:	e4 1b       	br	*-0x96bc <.L6>:s

00009756 <.L10>:
    9756:	8f e4       	stord	(r9,r8),0x8:s(sp)
    9758:	af e6       	stord	(r11,r10),0xc:s(sp)
    975a:	e7 1b       	br	*-0x96c8 <.L3>:s

0000975c <_udivmodhi4>:
    975c:	20 5b       	movw	r2,r0
    975e:	11 5a       	movw	$0x1:s,r1
    9760:	23 53       	cmpw	r2,r3

00009762 <.LFE6>:
    9762:	53 11       	bls	*+0x9788 <.L2>:s
    9764:	03 52       	cmpw	$0x0:s,r3
    9766:	78 10       	ble	*+0x9776 <.L16>:s
    9768:	e0 11       	br	*+0x9788 <.L2>:s

0000976a <.L21>:
    976a:	01 52       	cmpw	$0x0:s,r1
    976c:	12 08       	sne	r2
    976e:	02 52       	cmpw	$0x0:s,r2
    9770:	09 10       	beq	*+0x9782 <.L13>:s
    9772:	03 52       	cmpw	$0x0:s,r3
    9774:	6a 10       	bgt	*+0x9788 <.L2>:s

00009776 <.L16>:
    9776:	33 33       	addw	r3,r3
    9778:	11 33       	addw	r1,r1
    977a:	30 53       	cmpw	r3,r0
    977c:	a2 08       	slo	r2
    977e:	02 52       	cmpw	$0x0:s,r2
    9780:	15 1f       	bne	*-0x976a <.L21>:s

00009782 <.L13>:
    9782:	12 5b       	movw	r1,r2
    9784:	01 52       	cmpw	$0x0:s,r1
    9786:	0a 10       	beq	*+0x979a <.L7>:s

00009788 <.L2>:
    9788:	02 5a       	movw	$0x0:s,r2

0000978a <.L4>:
    978a:	30 53       	cmpw	r3,r0
    978c:	43 10       	bhi	*+0x9792 <.L9>:s
    978e:	30 3b       	subw	r3,r0
    9790:	12 27       	orw	r1,r2

00009792 <.L9>:
    9792:	f1 49       	lshw	$-1:s,r1
    9794:	f3 49       	lshw	$-1:s,r3
    9796:	01 52       	cmpw	$0x0:s,r1
    9798:	19 1f       	bne	*-0x978a <.L4>:s

0000979a <.L7>:
    979a:	04 52       	cmpw	$0x0:s,r4
    979c:	12 10       	bne	*+0x97a0 <.L10>:s
    979e:	20 5b       	movw	r2,r0

000097a0 <.L10>:
    97a0:	ee 0a       	jump	(ra)

000097a2 <.LFE0>:
	...

000097a4 <___divhi3>:
    97a4:	1e 01       	push	RA
    97a6:	07 01       	push	$0x1,r7
    97a8:	07 5a       	movw	$0x0:s,r7
    97aa:	72 53       	cmpw	r7,r2
    97ac:	6d 10       	bgt	*+0x97c6 <.L30>:s
    97ae:	03 52       	cmpw	$0x0:s,r3
    97b0:	60 11       	bgt	*+0x97d0 <.L31>:s

000097b2 <.L24>:
    97b2:	04 5a       	movw	$0x0:s,r4
    97b4:	ff c0 a9 ff 	bal	(ra),*-0x975c <_udivmodhi4>:m

000097b8 <.LVL17>:
    97b8:	07 52       	cmpw	$0x0:s,r7
    97ba:	04 10       	beq	*+0x97c2 <.L25>:s
    97bc:	01 5a       	movw	$0x0:s,r1
    97be:	01 3b       	subw	r0,r1
    97c0:	10 5b       	movw	r1,r0

000097c2 <.L25>:
    97c2:	07 02       	pop	$0x1,r7
    97c4:	1e 03       	popret	RA

000097c6 <.L30>:
    97c6:	27 3b       	subw	r2,r7
    97c8:	72 5b       	movw	r7,r2
    97ca:	17 5a       	movw	$0x1:s,r7
    97cc:	03 52       	cmpw	$0x0:s,r3
    97ce:	72 1f       	ble	*-0x97b2 <.L24>:s

000097d0 <.L31>:
    97d0:	00 5a       	movw	$0x0:s,r0
    97d2:	30 3b       	subw	r3,r0
    97d4:	03 5b       	movw	r0,r3
    97d6:	17 2a       	xorw	$0x1:s,r7
    97d8:	ed 1e       	br	*-0x97b2 <.L24>:s

000097da <.LFE1>:
	...

000097dc <___modhi3>:
    97dc:	1e 01       	push	RA
    97de:	07 01       	push	$0x1,r7
    97e0:	30 5b       	movw	r3,r0
    97e2:	10 43       	ashuw	$-15:s,r0
    97e4:	03 2b       	xorw	r0,r3
    97e6:	03 3b       	subw	r0,r3
    97e8:	02 52       	cmpw	$0x0:s,r2
    97ea:	66 10       	bgt	*+0x97f6 <.L36>:s
    97ec:	14 5a       	movw	$0x1:s,r4
    97ee:	ff c0 6f ff 	bal	(ra),*-0x975c <_udivmodhi4>:m

000097f2 <.LVL28>:
    97f2:	07 02       	pop	$0x1,r7
    97f4:	1e 03       	popret	RA

000097f6 <.L36>:
    97f6:	07 5a       	movw	$0x0:s,r7
    97f8:	70 5b       	movw	r7,r0
    97fa:	20 3b       	subw	r2,r0
    97fc:	02 5b       	movw	r0,r2
    97fe:	14 5a       	movw	$0x1:s,r4
    9800:	ff c0 5d ff 	bal	(ra),*-0x975c <_udivmodhi4>:m

00009804 <.LVL31>:
    9804:	07 3b       	subw	r0,r7
    9806:	70 5b       	movw	r7,r0
    9808:	07 02       	pop	$0x1,r7
    980a:	1e 03       	popret	RA

0000980c <___udivhi3>:
    980c:	1e 01       	push	RA
    980e:	04 5a       	movw	$0x0:s,r4
    9810:	ff c0 4d ff 	bal	(ra),*-0x975c <_udivmodhi4>:m

00009814 <.LVL34>:
    9814:	1e 03       	popret	RA

00009816 <.LFE3>:
	...

00009818 <___umodhi3>:
    9818:	1e 01       	push	RA
    981a:	14 5a       	movw	$0x1:s,r4
    981c:	ff c0 41 ff 	bal	(ra),*-0x975c <_udivmodhi4>:m

00009820 <.LVL36>:
    9820:	1e 03       	popret	RA

00009822 <.LFE4>:
	...

00009824 <___udivsi3>:
    9824:	1e 01       	push	RA
    9826:	06 5a       	movw	$0x0:s,r6
    9828:	00 c0 04 06 	bal	(ra),*+0x9e2c <_udivmodsi4>:m

0000982c <.LVL1>:
    982c:	1e 03       	popret	RA

0000982e <.LFE0>:
	...

00009830 <___umodsi3>:
    9830:	1e 01       	push	RA
    9832:	16 5a       	movw	$0x1:s,r6
    9834:	00 c0 f8 05 	bal	(ra),*+0x9e2c <_udivmodsi4>:m

00009838 <.LVL3>:
    9838:	1e 03       	popret	RA

0000983a <.LFE1>:
	...

0000983c <___lshrdi3>:
    983c:	27 01       	push	$0x3,r7
    983e:	26 5b       	movw	r2,r6
    9840:	0f a3       	loadd	0x6:s(sp),(r1,r0)
    9842:	2f a5       	loadd	0xa:s(sp),(r3,r2)
    9844:	96 2a       	xorw	$-1:s,r6
    9846:	16 32       	addw	$0x1:s,r6
    9848:	67 5b       	movw	r6,r7
    984a:	f6 06       	tbit	$0xf:s,r6
    984c:	8f 10       	bfs	*+0x986a <L2>:s
    984e:	08 55       	movd	(r1,r0),(r9,r8)
    9850:	b7 3a 20 00 	subw	$0x20:m,r7
    9854:	78 47       	lshd	r7,(r9,r8)
    9856:	b6 52 20 00 	cmpw	$0x20:m,r6
    985a:	c5 10       	blt	*+0x9864 <L1>:s
    985c:	62 47       	lshd	r6,(r3,r2)
    985e:	60 47       	lshd	r6,(r1,r0)
    9860:	82 61       	addd	(r9,r8),(r3,r2)
    9862:	27 03       	popret	$0x3,r7

00009864 <L1>:
    9864:	00 54       	movd	$0x0:s,(r1,r0)
    9866:	82 55       	movd	(r9,r8),(r3,r2)
    9868:	27 03       	popret	$0x3,r7

0000986a <L2>:
    986a:	28 55       	movd	(r3,r2),(r9,r8)
    986c:	b7 32 20 00 	addw	$0x20:m,r7
    9870:	78 47       	lshd	r7,(r9,r8)
    9872:	b6 52 e0 ff 	cmpw	$0xffe0:m,r6
    9876:	65 10       	bgt	*+0x9880 <L3>:s
    9878:	60 47       	lshd	r6,(r1,r0)
    987a:	62 47       	lshd	r6,(r3,r2)
    987c:	80 61       	addd	(r9,r8),(r1,r0)
    987e:	27 03       	popret	$0x3,r7

00009880 <L3>:
    9880:	02 54       	movd	$0x0:s,(r3,r2)
    9882:	80 55       	movd	(r9,r8),(r1,r0)
    9884:	27 03       	popret	$0x3,r7
	...

00009888 <___muldi3>:
    9888:	1d 01       	push	$0x2,r13
    988a:	67 01       	push	$0x7,r7
    988c:	0f a9       	loadd	0x12:s(sp),(r1,r0)
    988e:	2f ab       	loadd	0x16:s(sp),(r3,r2)
    9890:	4f ad       	loadd	0x1a:s(sp),(r5,r4)
    9892:	6f af 1e 00 	loadd	0x1e:m(sp),(r7,r6)
    9896:	0c 54       	movd	$0x0:s,(r12)
    9898:	0d 54       	movd	$0x0:s,(r13)
    989a:	0a 5a       	movw	$0x0:s,r10
    989c:	03 52       	cmpw	$0x0:s,r3
    989e:	7a 10       	ble	*+0x98b2 <L1>:s
    98a0:	98 54       	movd	$-1:s,(r9,r8)
    98a2:	14 00 80 a0 	xord	(r9,r8),(r1,r0)
    98a6:	14 00 82 a0 	xord	(r9,r8),(r3,r2)
    98aa:	10 60       	addd	$0x1:s,(r1,r0)
    98ac:	1a 2a       	xorw	$0x1:s,r10
    98ae:	32 10       	bcc	*+0x98b2 <L1>:s
    98b0:	12 60       	addd	$0x1:s,(r3,r2)

000098b2 <L1>:
    98b2:	07 52       	cmpw	$0x0:s,r7
    98b4:	7a 10       	ble	*+0x98c8 <L2>:s
    98b6:	98 54       	movd	$-1:s,(r9,r8)
    98b8:	14 00 84 a0 	xord	(r9,r8),(r5,r4)
    98bc:	14 00 86 a0 	xord	(r9,r8),(r7,r6)
    98c0:	14 60       	addd	$0x1:s,(r5,r4)
    98c2:	1a 2a       	xorw	$0x1:s,r10
    98c4:	32 10       	bcc	*+0x98c8 <L2>:s
    98c6:	16 60       	addd	$0x1:s,(r7,r6)

000098c8 <L2>:
    98c8:	af d9       	storw	r10,0x12:s(sp)
    98ca:	14 00 04 ec 	macuw	r0,r4,(r12)
    98ce:	08 54       	movd	$0x0:s,(r9,r8)
    98d0:	14 00 14 e8 	macuw	r1,r4,(r9,r8)
    98d4:	9a 5b       	movw	r9,r10
    98d6:	08 4d       	ashud	$16:s,(r9,r8)
    98d8:	0b 5a       	movw	$0x0:s,r11
    98da:	8c 61       	addd	(r9,r8),(r12)
    98dc:	32 10       	bcc	*+0x98e0 <L3>:s
    98de:	1d 60       	addd	$0x1:s,(r13)

000098e0 <L3>:
    98e0:	ad 61       	addd	(r11,r10),(r13)
    98e2:	08 54       	movd	$0x0:s,(r9,r8)
    98e4:	14 00 05 e8 	macuw	r0,r5,(r9,r8)
    98e8:	9a 5b       	movw	r9,r10
    98ea:	08 4d       	ashud	$16:s,(r9,r8)
    98ec:	8c 61       	addd	(r9,r8),(r12)
    98ee:	32 10       	bcc	*+0x98f2 <L4>:s
    98f0:	1d 60       	addd	$0x1:s,(r13)

000098f2 <L4>:
    98f2:	ad 61       	addd	(r11,r10),(r13)
    98f4:	08 54       	movd	$0x0:s,(r9,r8)
    98f6:	14 00 15 e8 	macuw	r1,r5,(r9,r8)
    98fa:	8d 61       	addd	(r9,r8),(r13)
    98fc:	0a 54       	movd	$0x0:s,(r11,r10)
    98fe:	14 00 24 ea 	macuw	r2,r4,(r11,r10)
    9902:	da 61       	addd	(r13),(r11,r10)
    9904:	08 54       	movd	$0x0:s,(r9,r8)
    9906:	14 00 25 e8 	macuw	r2,r5,(r9,r8)
    990a:	8b 33       	addw	r8,r11
    990c:	34 63       	muluw	r3,(r5,r4)
    990e:	4b 33       	addw	r4,r11
    9910:	08 54       	movd	$0x0:s,(r9,r8)
    9912:	14 00 06 e8 	macuw	r0,r6,(r9,r8)
    9916:	8a 61       	addd	(r9,r8),(r11,r10)
    9918:	08 54       	movd	$0x0:s,(r9,r8)
    991a:	14 00 07 e8 	macuw	r0,r7,(r9,r8)
    991e:	8b 33       	addw	r8,r11
    9920:	8f 99       	loadw	0x12:s(sp),r8
    9922:	16 63       	muluw	r1,(r7,r6)
    9924:	6b 33       	addw	r6,r11

00009926 <E1>:
    9926:	a2 55       	movd	(r11,r10),(r3,r2)
    9928:	c0 55       	movd	(r12),(r1,r0)
    992a:	08 52       	cmpw	$0x0:s,r8
    992c:	09 10       	beq	*+0x993e <Lexit__>:s
    992e:	98 54       	movd	$-1:s,(r9,r8)
    9930:	14 00 80 a0 	xord	(r9,r8),(r1,r0)
    9934:	14 00 82 a0 	xord	(r9,r8),(r3,r2)
    9938:	10 60       	addd	$0x1:s,(r1,r0)
    993a:	32 10       	bcc	*+0x993e <Lexit__>:s
    993c:	12 60       	addd	$0x1:s,(r3,r2)

0000993e <Lexit__>:
    993e:	67 02       	pop	$0x7,r7
    9940:	1d 03       	popret	$0x2,r13
	...

00009944 <___ashldi3>:
    9944:	1e 01       	push	RA
    9946:	67 01       	push	$0x7,r7
    9948:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
    994c:	fc 55       	movd	(sp),(r12)
    994e:	0f 9b       	loadw	0x16:s(sp),r0
    9950:	1f 9c       	loadw	0x18:s(sp),r1
    9952:	ef 9d       	loadw	0x1a:s(sp),r14
    9954:	3f 9f 1c 00 	loadw	0x1c:m(sp),r3
    9958:	bc 60 16 00 	addd	$0x16:m,(r12)
    995c:	02 52       	cmpw	$0x0:s,r2
    995e:	0e 11       	beq	*+0x999a <.L2>:s
    9960:	04 5b       	movw	r0,r4
    9962:	15 5b       	movw	r1,r5
    9964:	e6 5b       	movw	r14,r6
    9966:	37 5b       	movw	r3,r7
    9968:	b3 5a 20 00 	movw	$0x20:m,r3
    996c:	23 3b       	subw	r2,r3
    996e:	3f d0       	storw	r3,0x0:s(sp)
    9970:	03 52       	cmpw	$0x0:s,r3
    9972:	d8 11       	bge	*+0x99a2 <.L9>:s

00009974 <.LBB2>:
    9974:	4e 55       	movd	(r5,r4),(ra)
    9976:	e8 55       	movd	(ra),(r9,r8)
    9978:	28 48       	ashud	r2,(r9,r8)
    997a:	0c 58       	movb	$0x0:s,r12
    997c:	c0 59       	movb	r12,r0
    997e:	1f b0       	loadb	0x0:s(sp),r1
    9980:	10 39       	subb	r1,r0
    9982:	0c 59       	movb	r0,r12
    9984:	e0 55       	movd	(ra),(r1,r0)
    9986:	c0 47       	lshd	r12,(r1,r0)
    9988:	6c 55       	movd	(r7,r6),(r12)
    998a:	2c 48       	ashud	r2,(r12)
    998c:	0a 55       	movd	(r1,r0),(r11,r10)
    998e:	14 00 ca 90 	ord	(r12),(r11,r10)

00009992 <.L4>:
    9992:	80 5b       	movw	r8,r0
    9994:	91 5b       	movw	r9,r1
    9996:	ae 5b       	movw	r10,r14
    9998:	b3 5b       	movw	r11,r3

0000999a <.L2>:
    999a:	e2 5b       	movw	r14,r2
    999c:	4f 60       	addd	$0x4:s,(sp)
    999e:	67 02       	pop	$0x7,r7
    99a0:	1e 03       	popret	RA

000099a2 <.L9>:
    99a2:	08 54       	movd	$0x0:s,(r9,r8)
    99a4:	0a 54       	movd	$0x0:s,(r11,r10)
    99a6:	00 5a       	movw	$0x0:s,r0
    99a8:	30 3b       	subw	r3,r0
    99aa:	4a 55       	movd	(r5,r4),(r11,r10)
    99ac:	0a 48       	ashud	r0,(r11,r10)
    99ae:	e2 1f       	br	*-0x9992 <.L4>:s

000099b0 <___clzsi2>:
    99b0:	92 00 00 00 	cmpd	$0xffff:l,(r3,r2)
    99b4:	ff ff 
    99b6:	a3 11       	blo	*+0x99dc <.L2>:s
    99b8:	b2 56 ff 00 	cmpd	$0xff:m,(r3,r2)
    99bc:	b3 13       	bhs	*+0x9a22 <.L7>:s
    99be:	b0 54 18 00 	movd	$0x18:m,(r1,r0)
    99c2:	85 5a       	movw	$0x8:s,r5
    99c4:	04 58       	movb	$0x0:s,r4
    99c6:	54 39       	subb	r5,r4
    99c8:	42 47       	lshd	r4,(r3,r2)
    99ca:	40 05 4c a3 	movd	$0xa34c:m,(r5,r4)
    99ce:	24 61       	addd	(r3,r2),(r5,r4)
    99d0:	24 b0       	loadb	0x0:s(r5,r4),r2
    99d2:	22 5d       	movzb	r2,r2
    99d4:	22 5f       	movzw	r2,(r3,r2)
    99d6:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    99da:	ee 0a       	jump	(ra)

000099dc <.L2>:
    99dc:	92 00 ff 00 	cmpd	$0xffffff:l,(r3,r2)
    99e0:	ff ff 
    99e2:	a1 11       	blo	*+0x9a04 <.L5>:s
    99e4:	b0 54 10 00 	movd	$0x10:m,(r1,r0)
    99e8:	b5 5a 10 00 	movw	$0x10:m,r5
    99ec:	04 58       	movb	$0x0:s,r4
    99ee:	54 39       	subb	r5,r4
    99f0:	42 47       	lshd	r4,(r3,r2)
    99f2:	40 05 4c a3 	movd	$0xa34c:m,(r5,r4)
    99f6:	24 61       	addd	(r3,r2),(r5,r4)
    99f8:	24 b0       	loadb	0x0:s(r5,r4),r2
    99fa:	22 5d       	movzb	r2,r2
    99fc:	22 5f       	movzw	r2,(r3,r2)
    99fe:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    9a02:	ee 0a       	jump	(ra)

00009a04 <.L5>:
    9a04:	80 54       	movd	$0x8:s,(r1,r0)
    9a06:	b5 5a 18 00 	movw	$0x18:m,r5
    9a0a:	04 58       	movb	$0x0:s,r4
    9a0c:	54 39       	subb	r5,r4
    9a0e:	42 47       	lshd	r4,(r3,r2)
    9a10:	40 05 4c a3 	movd	$0xa34c:m,(r5,r4)
    9a14:	24 61       	addd	(r3,r2),(r5,r4)
    9a16:	24 b0       	loadb	0x0:s(r5,r4),r2
    9a18:	22 5d       	movzb	r2,r2
    9a1a:	22 5f       	movzw	r2,(r3,r2)
    9a1c:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    9a20:	ee 0a       	jump	(ra)

00009a22 <.L7>:
    9a22:	b0 54 20 00 	movd	$0x20:m,(r1,r0)
    9a26:	05 5a       	movw	$0x0:s,r5
    9a28:	04 58       	movb	$0x0:s,r4
    9a2a:	54 39       	subb	r5,r4
    9a2c:	42 47       	lshd	r4,(r3,r2)
    9a2e:	40 05 4c a3 	movd	$0xa34c:m,(r5,r4)
    9a32:	24 61       	addd	(r3,r2),(r5,r4)
    9a34:	24 b0       	loadb	0x0:s(r5,r4),r2
    9a36:	22 5d       	movzb	r2,r2
    9a38:	22 5f       	movzw	r2,(r3,r2)
    9a3a:	14 00 20 c0 	subd	(r3,r2),(r1,r0)
    9a3e:	ee 0a       	jump	(ra)

00009a40 <___pack_d>:
    9a40:	1e 01       	push	RA
    9a42:	47 01       	push	$0x5,r7
    9a44:	bf 60 f4 ff 	addd	$0xfff4:m,(sp)

00009a48 <.LFE0>:
    9a48:	82 a4       	loadd	0x8:s(r3,r2),(r9,r8)
    9a4a:	a2 a6       	loadd	0xc:s(r3,r2),(r11,r10)
    9a4c:	72 91       	loadw	0x2:s(r3,r2),r7
    9a4e:	7f d0       	storw	r7,0x0:s(sp)
    9a50:	02 90       	loadw	0x0:s(r3,r2),r0
    9a52:	10 52       	cmpw	$0x1:s,r0
    9a54:	b0 18 12 01 	bhs	*+0x9b66 <.L30>:m
    9a58:	40 52       	cmpw	$0x4:s,r0
    9a5a:	00 18 02 01 	beq	*+0x9b5c <.L21>:m
    9a5e:	20 52       	cmpw	$0x2:s,r0
    9a60:	00 16       	beq	*+0x9b20 <.L18>:s
    9a62:	87 5b       	movw	r8,r7
    9a64:	97 27       	orw	r9,r7
    9a66:	a7 27       	orw	r10,r7
    9a68:	b7 27       	orw	r11,r7
    9a6a:	07 52       	cmpw	$0x0:s,r7
    9a6c:	0a 14       	beq	*+0x9b00 <.L19>:s
    9a6e:	72 92       	loadw	0x4:s(r3,r2),r7
    9a70:	b7 52 02 fc 	cmpw	$0xfc02:m,r7
    9a74:	60 18 14 01 	bgt	*+0x9b88 <.L31>:m
    9a78:	b7 52 ff 03 	cmpw	$0x3ff:m,r7
    9a7c:	c0 17       	blt	*+0x9b5c <.L21>:s
    9a7e:	b0 54 ff 00 	movd	$0xff:m,(r1,r0)
    9a82:	02 54       	movd	$0x0:s,(r3,r2)
    9a84:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9a88:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9a8c:	b0 52 80 00 	cmpw	$0x80:m,r0
    9a90:	0c 14       	beq	*+0x9b28 <.L32>:s

00009a92 <.L11>:
    9a92:	b0 54 7f 00 	movd	$0x7f:m,(r1,r0)
    9a96:	02 54       	movd	$0x0:s,(r3,r2)
    9a98:	08 61       	addd	(r1,r0),(r9,r8)
    9a9a:	2a 37       	addcw	r2,r10
    9a9c:	3b 37       	addcw	r3,r11

00009a9e <.L12>:
    9a9e:	bb 52 ff 1f 	cmpw	$0x1fff:m,r11
    9aa2:	a3 13       	blo	*+0x9b08 <.L14>:s
    9aa4:	b7 32 ff 03 	addw	$0x3ff:m,r7

00009aa8 <.L16>:
    9aa8:	38 01       	push	$0x4,r8
    9aaa:	82 5a       	movw	$0x8:s,r2
    9aac:	ff c0 91 fd 	bal	(ra),*-0x983c <___lshrdi3>:m
    9ab0:	8f 60       	addd	$0x8:s,(sp)
    9ab2:	98 54       	movd	$-1:s,(r9,r8)
    9ab4:	af 05 ff ff 	movd	$0xfffff:m,(r11,r10)
    9ab8:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9abc:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9ac0:	78 5b       	movw	r7,r8
    9ac2:	b8 22 ff 07 	andw	$0x7ff:m,r8

00009ac6 <.L3>:
    9ac6:	04 54       	movd	$0x0:s,(r5,r4)
    9ac8:	06 54       	movd	$0x0:s,(r7,r6)
    9aca:	04 5b       	movw	r0,r4
    9acc:	15 5b       	movw	r1,r5
    9ace:	26 5b       	movw	r2,r6
    9ad0:	30 5b       	movw	r3,r0
    9ad2:	f0 22       	andw	$0xf:s,r0
    9ad4:	71 5b       	movw	r7,r1
    9ad6:	b1 22 f0 ff 	andw	$0xfff0:m,r1
    9ada:	01 27       	orw	r0,r1
    9adc:	b8 22 ff 07 	andw	$0x7ff:m,r8
    9ae0:	48 42       	ashuw	$4:s,r8
    9ae2:	10 5b       	movw	r1,r0
    9ae4:	b0 22 0f 80 	andw	$0x800f:m,r0
    9ae8:	80 27       	orw	r8,r0
    9aea:	1f 90       	loadw	0x0:s(sp),r1
    9aec:	f1 42       	ashuw	$15:s,r1
    9aee:	b0 22 ff 7f 	andw	$0x7fff:m,r0
    9af2:	07 5b       	movw	r0,r7
    9af4:	17 27       	orw	r1,r7
    9af6:	40 55       	movd	(r5,r4),(r1,r0)
    9af8:	62 55       	movd	(r7,r6),(r3,r2)
    9afa:	cf 60       	addd	$0xc:s,(sp)
    9afc:	47 02       	pop	$0x5,r7
    9afe:	1e 03       	popret	RA

00009b00 <.L19>:
    9b00:	78 5b       	movw	r7,r8
    9b02:	00 54       	movd	$0x0:s,(r1,r0)
    9b04:	02 54       	movd	$0x0:s,(r3,r2)
    9b06:	e0 1e       	br	*-0x9ac6 <.L3>:s

00009b08 <.L14>:
    9b08:	38 01       	push	$0x4,r8
    9b0a:	12 5a       	movw	$0x1:s,r2
    9b0c:	ff c0 31 fd 	bal	(ra),*-0x983c <___lshrdi3>:m
    9b10:	8f 60       	addd	$0x8:s,(sp)
    9b12:	08 5b       	movw	r0,r8
    9b14:	19 5b       	movw	r1,r9
    9b16:	2a 5b       	movw	r2,r10
    9b18:	3b 5b       	movw	r3,r11
    9b1a:	b7 32 00 04 	addw	$0x400:m,r7
    9b1e:	e5 1c       	br	*-0x9aa8 <.L16>:s

00009b20 <.L18>:
    9b20:	08 5a       	movw	$0x0:s,r8
    9b22:	00 54       	movd	$0x0:s,(r1,r0)
    9b24:	02 54       	movd	$0x0:s,(r3,r2)
    9b26:	e0 1d       	br	*-0x9ac6 <.L3>:s

00009b28 <.L32>:
    9b28:	01 52       	cmpw	$0x0:s,r1
    9b2a:	14 1b       	bne	*-0x9a92 <.L11>:s
    9b2c:	02 52       	cmpw	$0x0:s,r2
    9b2e:	12 1b       	bne	*-0x9a92 <.L11>:s
    9b30:	03 52       	cmpw	$0x0:s,r3
    9b32:	10 1b       	bne	*-0x9a92 <.L11>:s
    9b34:	b0 54 00 01 	movd	$0x100:m,(r1,r0)
    9b38:	02 54       	movd	$0x0:s,(r3,r2)
    9b3a:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9b3e:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9b42:	04 5b       	movw	r0,r4
    9b44:	14 27       	orw	r1,r4
    9b46:	24 27       	orw	r2,r4
    9b48:	34 27       	orw	r3,r4
    9b4a:	04 52       	cmpw	$0x0:s,r4
    9b4c:	09 1a       	beq	*-0x9a9e <.L12>:s
    9b4e:	b0 54 80 00 	movd	$0x80:m,(r1,r0)
    9b52:	02 54       	movd	$0x0:s,(r3,r2)
    9b54:	08 61       	addd	(r1,r0),(r9,r8)
    9b56:	2a 37       	addcw	r2,r10
    9b58:	3b 37       	addcw	r3,r11
    9b5a:	e2 1a       	br	*-0x9a9e <.L12>:s

00009b5c <.L21>:
    9b5c:	b8 5a ff 07 	movw	$0x7ff:m,r8
    9b60:	00 54       	movd	$0x0:s,(r1,r0)
    9b62:	02 54       	movd	$0x0:s,(r3,r2)
    9b64:	e1 1b       	br	*-0x9ac6 <.L3>:s

00009b66 <.L30>:
    9b66:	00 54       	movd	$0x0:s,(r1,r0)
    9b68:	28 05 00 00 	movd	$0x80000:m,(r3,r2)
    9b6c:	14 00 80 90 	ord	(r9,r8),(r1,r0)
    9b70:	14 00 a2 90 	ord	(r11,r10),(r3,r2)
    9b74:	94 54       	movd	$-1:s,(r5,r4)
    9b76:	6f 05 ff ff 	movd	$0xfffff:m,(r7,r6)
    9b7a:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    9b7e:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    9b82:	b8 5a ff 07 	movw	$0x7ff:m,r8
    9b86:	e0 1a       	br	*-0x9ac6 <.L3>:s

00009b88 <.L31>:
    9b88:	b0 5a 02 fc 	movw	$0xfc02:m,r0
    9b8c:	70 3b       	subw	r7,r0
    9b8e:	07 5b       	movw	r0,r7
    9b90:	b0 52 38 00 	cmpw	$0x38:m,r0
    9b94:	c9 16       	blt	*+0x9c66 <.L20>:s

00009b96 <.LBB11>:
    9b96:	38 01       	push	$0x4,r8
    9b98:	02 5b       	movw	r0,r2
    9b9a:	ff c0 a3 fc 	bal	(ra),*-0x983c <___lshrdi3>:m
    9b9e:	0f d6       	storw	r0,0xc:s(sp)
    9ba0:	1f d7       	storw	r1,0xe:s(sp)
    9ba2:	2f d8       	storw	r2,0x10:s(sp)
    9ba4:	3f d9       	storw	r3,0x12:s(sp)
    9ba6:	10 54       	movd	$0x1:s,(r1,r0)
    9ba8:	02 54       	movd	$0x0:s,(r3,r2)
    9baa:	0f e0       	stord	(r1,r0),0x0:s(sp)
    9bac:	2f e2       	stord	(r3,r2),0x4:s(sp)
    9bae:	72 5b       	movw	r7,r2
    9bb0:	ff c0 95 fd 	bal	(ra),*-0x9944 <___ashldi3>:m
    9bb4:	14 54       	movd	$0x1:s,(r5,r4)
    9bb6:	06 54       	movd	$0x0:s,(r7,r6)
    9bb8:	14 00 40 c0 	subd	(r5,r4),(r1,r0)
    9bbc:	62 3f       	subcw	r6,r2
    9bbe:	73 3f       	subcw	r7,r3
    9bc0:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9bc4:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9bc8:	04 54       	movd	$0x0:s,(r5,r4)
    9bca:	06 54       	movd	$0x0:s,(r7,r6)
    9bcc:	14 00 04 c0 	subd	(r1,r0),(r5,r4)
    9bd0:	26 3f       	subcw	r2,r6
    9bd2:	37 3f       	subcw	r3,r7
    9bd4:	14 00 04 90 	ord	(r1,r0),(r5,r4)
    9bd8:	14 00 26 90 	ord	(r3,r2),(r7,r6)
    9bdc:	4f e0       	stord	(r5,r4),0x0:s(sp)
    9bde:	6f e2       	stord	(r7,r6),0x4:s(sp)
    9be0:	b2 5a 3f 00 	movw	$0x3f:m,r2
    9be4:	ff c0 59 fc 	bal	(ra),*-0x983c <___lshrdi3>:m
    9be8:	8f 60       	addd	$0x8:s,(sp)
    9bea:	08 5b       	movw	r0,r8
    9bec:	19 5b       	movw	r1,r9
    9bee:	2a 5b       	movw	r2,r10
    9bf0:	3b 5b       	movw	r3,r11
    9bf2:	0f a2       	loadd	0x4:s(sp),(r1,r0)
    9bf4:	2f a4       	loadd	0x8:s(sp),(r3,r2)
    9bf6:	14 00 08 90 	ord	(r1,r0),(r9,r8)
    9bfa:	14 00 2a 90 	ord	(r3,r2),(r11,r10)

00009bfe <.LBE11>:
    9bfe:	b0 54 ff 00 	movd	$0xff:m,(r1,r0)
    9c02:	02 54       	movd	$0x0:s,(r3,r2)
    9c04:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9c08:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9c0c:	b0 52 80 00 	cmpw	$0x80:m,r0
    9c10:	1d 12       	bne	*+0x9c6a <.L6>:s
    9c12:	01 52       	cmpw	$0x0:s,r1
    9c14:	1b 12       	bne	*+0x9c6a <.L6>:s
    9c16:	02 52       	cmpw	$0x0:s,r2
    9c18:	19 12       	bne	*+0x9c6a <.L6>:s
    9c1a:	03 52       	cmpw	$0x0:s,r3
    9c1c:	17 12       	bne	*+0x9c6a <.L6>:s
    9c1e:	b0 54 00 01 	movd	$0x100:m,(r1,r0)
    9c22:	02 54       	movd	$0x0:s,(r3,r2)
    9c24:	14 00 80 b0 	andd	(r9,r8),(r1,r0)
    9c28:	14 00 a2 b0 	andd	(r11,r10),(r3,r2)
    9c2c:	04 5b       	movw	r0,r4
    9c2e:	14 27       	orw	r1,r4
    9c30:	24 27       	orw	r2,r4
    9c32:	34 27       	orw	r3,r4
    9c34:	04 52       	cmpw	$0x0:s,r4
    9c36:	07 10       	beq	*+0x9c44 <.L7>:s
    9c38:	b0 54 80 00 	movd	$0x80:m,(r1,r0)
    9c3c:	02 54       	movd	$0x0:s,(r3,r2)
    9c3e:	08 61       	addd	(r1,r0),(r9,r8)
    9c40:	2a 37       	addcw	r2,r10
    9c42:	3b 37       	addcw	r3,r11

00009c44 <.L7>:
    9c44:	38 01       	push	$0x4,r8
    9c46:	82 5a       	movw	$0x8:s,r2
    9c48:	ff c0 f5 fb 	bal	(ra),*-0x983c <___lshrdi3>:m
    9c4c:	8f 60       	addd	$0x8:s,(sp)
    9c4e:	94 54       	movd	$-1:s,(r5,r4)
    9c50:	6f 05 ff ff 	movd	$0xfffff:m,(r7,r6)
    9c54:	14 00 40 b0 	andd	(r5,r4),(r1,r0)
    9c58:	14 00 62 b0 	andd	(r7,r6),(r3,r2)
    9c5c:	bb 52 ff 0f 	cmpw	$0xfff:m,r11
    9c60:	a8 08       	slo	r8
    9c62:	e0 18 65 fe 	br	*-0x9ac6 <.L3>:m

00009c66 <.L20>:
    9c66:	08 54       	movd	$0x0:s,(r9,r8)
    9c68:	0a 54       	movd	$0x0:s,(r11,r10)

00009c6a <.L6>:
    9c6a:	b0 54 7f 00 	movd	$0x7f:m,(r1,r0)
    9c6e:	02 54       	movd	$0x0:s,(r3,r2)
    9c70:	08 61       	addd	(r1,r0),(r9,r8)
    9c72:	2a 37       	addcw	r2,r10
    9c74:	3b 37       	addcw	r3,r11
    9c76:	e7 1e       	br	*-0x9c44 <.L7>:s

00009c78 <___unpack_d>:
    9c78:	1e 01       	push	RA
    9c7a:	37 01       	push	$0x4,r7
    9c7c:	26 55       	movd	(r3,r2),(r7,r6)
    9c7e:	48 55       	movd	(r5,r4),(r9,r8)
    9c80:	02 90       	loadw	0x0:s(r3,r2),r0
    9c82:	12 91       	loadw	0x2:s(r3,r2),r1
    9c84:	22 92       	loadw	0x4:s(r3,r2),r2
    9c86:	56 93       	loadw	0x6:s(r7,r6),r5
    9c88:	53 5b       	movw	r5,r3
    9c8a:	f3 22       	andw	$0xf:s,r3
    9c8c:	54 5b       	movw	r5,r4
    9c8e:	c4 49       	lshw	$-4:s,r4

00009c90 <.LBE10>:
    9c90:	b4 22 ff 07 	andw	$0x7ff:m,r4
    9c94:	15 49       	lshw	$-15:s,r5
    9c96:	58 d1       	storw	r5,0x2:s(r9,r8)
    9c98:	04 52       	cmpw	$0x0:s,r4
    9c9a:	16 12       	bne	*+0x9ce6 <.L2>:s
    9c9c:	04 5b       	movw	r0,r4
    9c9e:	14 27       	orw	r1,r4
    9ca0:	24 27       	orw	r2,r4
    9ca2:	34 27       	orw	r3,r4
    9ca4:	04 52       	cmpw	$0x0:s,r4
    9ca6:	08 13       	beq	*+0x9d16 <.L17>:s
    9ca8:	b4 5a 02 fc 	movw	$0xfc02:m,r4
    9cac:	48 d2       	storw	r4,0x4:s(r9,r8)
    9cae:	30 01       	push	$0x4,r0
    9cb0:	82 5a       	movw	$0x8:s,r2
    9cb2:	ff c0 93 fc 	bal	(ra),*-0x9944 <___ashldi3>:m
    9cb6:	8f 60       	addd	$0x8:s,(sp)
    9cb8:	04 5b       	movw	r0,r4
    9cba:	15 5b       	movw	r1,r5
    9cbc:	26 5b       	movw	r2,r6
    9cbe:	37 5b       	movw	r3,r7
    9cc0:	38 c2       	storw	$0x3:s,0x0:s(r9,r8)
    9cc2:	b3 52 ff 0f 	cmpw	$0xfff:m,r3
    9cc6:	ac 10       	blo	*+0x9cde <.L5>:s
    9cc8:	b0 5a 01 fc 	movw	$0xfc01:m,r0

00009ccc <.L7>:
    9ccc:	44 61       	addd	(r5,r4),(r5,r4)
    9cce:	66 37       	addcw	r6,r6
    9cd0:	77 37       	addcw	r7,r7
    9cd2:	01 5b       	movw	r0,r1
    9cd4:	90 32       	addw	$-1:s,r0
    9cd6:	b7 52 ff 0f 	cmpw	$0xfff:m,r7
    9cda:	b9 1f       	bhs	*-0x9ccc <.L7>:s
    9cdc:	18 d2       	storw	r1,0x4:s(r9,r8)

00009cde <.L5>:
    9cde:	48 e4       	stord	(r5,r4),0x8:s(r9,r8)
    9ce0:	68 e6       	stord	(r7,r6),0xc:s(r9,r8)
    9ce2:	37 02       	pop	$0x4,r7
    9ce4:	1e 03       	popret	RA

00009ce6 <.L2>:
    9ce6:	b4 52 ff 07 	cmpw	$0x7ff:m,r4
    9cea:	09 11       	beq	*+0x9d1c <.L18>:s
    9cec:	b4 32 01 fc 	addw	$0xfc01:m,r4
    9cf0:	48 d2       	storw	r4,0x4:s(r9,r8)
    9cf2:	38 c2       	storw	$0x3:s,0x0:s(r9,r8)
    9cf4:	30 01       	push	$0x4,r0
    9cf6:	82 5a       	movw	$0x8:s,r2
    9cf8:	ff c0 4d fc 	bal	(ra),*-0x9944 <___ashldi3>:m
    9cfc:	8f 60       	addd	$0x8:s,(sp)
    9cfe:	04 54       	movd	$0x0:s,(r5,r4)
    9d00:	76 00 00 10 	movd	$0x10000000:l,(r7,r6)
    9d04:	00 00 
    9d06:	14 00 40 90 	ord	(r5,r4),(r1,r0)
    9d0a:	14 00 62 90 	ord	(r7,r6),(r3,r2)
    9d0e:	08 e4       	stord	(r1,r0),0x8:s(r9,r8)
    9d10:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    9d12:	37 02       	pop	$0x4,r7
    9d14:	1e 03       	popret	RA

00009d16 <.L17>:
    9d16:	28 c2       	storw	$0x2:s,0x0:s(r9,r8)
    9d18:	37 02       	pop	$0x4,r7
    9d1a:	1e 03       	popret	RA

00009d1c <.L18>:
    9d1c:	04 5b       	movw	r0,r4
    9d1e:	14 27       	orw	r1,r4
    9d20:	24 27       	orw	r2,r4
    9d22:	34 27       	orw	r3,r4
    9d24:	04 52       	cmpw	$0x0:s,r4
    9d26:	03 11       	beq	*+0x9d4c <.L19>:s
    9d28:	04 54       	movd	$0x0:s,(r5,r4)
    9d2a:	68 05 00 00 	movd	$0x80000:m,(r7,r6)
    9d2e:	14 00 04 b0 	andd	(r1,r0),(r5,r4)
    9d32:	14 00 26 b0 	andd	(r3,r2),(r7,r6)
    9d36:	4a 5b       	movw	r4,r10
    9d38:	5a 27       	orw	r5,r10
    9d3a:	6a 27       	orw	r6,r10
    9d3c:	7a 27       	orw	r7,r10
    9d3e:	0a 52       	cmpw	$0x0:s,r10
    9d40:	14 08       	sne	r4
    9d42:	48 d0       	storw	r4,0x0:s(r9,r8)
    9d44:	08 e4       	stord	(r1,r0),0x8:s(r9,r8)
    9d46:	28 e6       	stord	(r3,r2),0xc:s(r9,r8)
    9d48:	37 02       	pop	$0x4,r7
    9d4a:	1e 03       	popret	RA

00009d4c <.L19>:
    9d4c:	48 c2       	storw	$0x4:s,0x0:s(r9,r8)
    9d4e:	37 02       	pop	$0x4,r7
    9d50:	1e 03       	popret	RA

00009d52 <.LFE6>:
	...

00009d54 <___fpcmp_parts_d>:
    9d54:	1e 01       	push	RA
    9d56:	27 01       	push	$0x3,r7
    9d58:	02 90       	loadw	0x0:s(r3,r2),r0
    9d5a:	10 52       	cmpw	$0x1:s,r0
    9d5c:	b2 11       	bhs	*+0x9d80 <.L27>:s
    9d5e:	14 90       	loadw	0x0:s(r5,r4),r1
    9d60:	11 52       	cmpw	$0x1:s,r1
    9d62:	bf 10       	bhs	*+0x9d80 <.L27>:s
    9d64:	40 52       	cmpw	$0x4:s,r0
    9d66:	0b 15       	beq	*+0x9e1c <.L33>:s
    9d68:	41 52       	cmpw	$0x4:s,r1
    9d6a:	00 11       	beq	*+0x9d8a <.L9>:s
    9d6c:	20 52       	cmpw	$0x2:s,r0
    9d6e:	0c 10       	beq	*+0x9d86 <.L34>:s
    9d70:	21 52       	cmpw	$0x2:s,r1
    9d72:	02 11       	beq	*+0x9d96 <.L6>:s
    9d74:	02 91       	loadw	0x2:s(r3,r2),r0
    9d76:	14 91       	loadw	0x2:s(r5,r4),r1
    9d78:	10 53       	cmpw	r1,r0
    9d7a:	04 11       	beq	*+0x9da2 <.L10>:s
    9d7c:	00 52       	cmpw	$0x0:s,r0
    9d7e:	19 10       	bne	*+0x9d90 <.L29>:s

00009d80 <.L27>:
    9d80:	10 5a       	movw	$0x1:s,r0

00009d82 <.L3>:
    9d82:	27 02       	pop	$0x3,r7
    9d84:	1e 03       	popret	RA

00009d86 <.L34>:
    9d86:	21 52       	cmpw	$0x2:s,r1
    9d88:	0f 13       	beq	*+0x9e06 <.L19>:s

00009d8a <.L9>:
    9d8a:	04 91       	loadw	0x2:s(r5,r4),r0
    9d8c:	00 52       	cmpw	$0x0:s,r0
    9d8e:	19 1f       	bne	*-0x9d80 <.L27>:s

00009d90 <.L29>:
    9d90:	90 5a       	movw	$-1:s,r0

00009d92 <.L36>:
    9d92:	27 02       	pop	$0x3,r7
    9d94:	1e 03       	popret	RA

00009d96 <.L6>:
    9d96:	12 91       	loadw	0x2:s(r3,r2),r1
    9d98:	10 5a       	movw	$0x1:s,r0
    9d9a:	01 52       	cmpw	$0x0:s,r1
    9d9c:	1a 1f       	bne	*-0x9d90 <.L29>:s
    9d9e:	27 02       	pop	$0x3,r7
    9da0:	1e 03       	popret	RA

00009da2 <.L10>:
    9da2:	62 92       	loadw	0x4:s(r3,r2),r6
    9da4:	14 92       	loadw	0x4:s(r5,r4),r1
    9da6:	16 53       	cmpw	r1,r6
    9da8:	d5 10       	bge	*+0x9db2 <.L12>:s
    9daa:	00 52       	cmpw	$0x0:s,r0
    9dac:	12 1f       	bne	*-0x9d90 <.L29>:s
    9dae:	10 5a       	movw	$0x1:s,r0
    9db0:	e9 1e       	br	*-0x9d82 <.L3>:s

00009db2 <.L12>:
    9db2:	16 53       	cmpw	r1,r6
    9db4:	6c 12       	bgt	*+0x9e0c <.L35>:s
    9db6:	82 94       	loadw	0x8:s(r3,r2),r8
    9db8:	e2 95       	loadw	0xa:s(r3,r2),r14
    9dba:	62 96       	loadw	0xc:s(r3,r2),r6
    9dbc:	12 97       	loadw	0xe:s(r3,r2),r1
    9dbe:	94 94       	loadw	0x8:s(r5,r4),r9
    9dc0:	74 95       	loadw	0xa:s(r5,r4),r7
    9dc2:	34 96       	loadw	0xc:s(r5,r4),r3
    9dc4:	24 97       	loadw	0xe:s(r5,r4),r2
    9dc6:	21 53       	cmpw	r2,r1
    9dc8:	ad 10       	blo	*+0x9de2 <.L20>:s
    9dca:	21 53       	cmpw	r2,r1
    9dcc:	1f 10       	bne	*+0x9dea <.L14>:s
    9dce:	36 53       	cmpw	r3,r6
    9dd0:	a9 10       	blo	*+0x9de2 <.L20>:s
    9dd2:	36 53       	cmpw	r3,r6
    9dd4:	1b 10       	bne	*+0x9dea <.L14>:s
    9dd6:	7e 53       	cmpw	r7,r14
    9dd8:	a5 10       	blo	*+0x9de2 <.L20>:s
    9dda:	7e 53       	cmpw	r7,r14
    9ddc:	17 10       	bne	*+0x9dea <.L14>:s
    9dde:	98 53       	cmpw	r9,r8
    9de0:	b5 10       	bhs	*+0x9dea <.L14>:s

00009de2 <.L20>:
    9de2:	00 52       	cmpw	$0x0:s,r0
    9de4:	16 1d       	bne	*-0x9d90 <.L29>:s
    9de6:	10 5a       	movw	$0x1:s,r0
    9de8:	ed 1c       	br	*-0x9d82 <.L3>:s

00009dea <.L14>:
    9dea:	12 53       	cmpw	r1,r2
    9dec:	a4 11       	blo	*+0x9e14 <.L21>:s
    9dee:	12 53       	cmpw	r1,r2
    9df0:	1b 10       	bne	*+0x9e06 <.L19>:s
    9df2:	63 53       	cmpw	r6,r3
    9df4:	a0 11       	blo	*+0x9e14 <.L21>:s
    9df6:	63 53       	cmpw	r6,r3
    9df8:	17 10       	bne	*+0x9e06 <.L19>:s
    9dfa:	e7 53       	cmpw	r14,r7
    9dfc:	ac 10       	blo	*+0x9e14 <.L21>:s
    9dfe:	e7 53       	cmpw	r14,r7
    9e00:	13 10       	bne	*+0x9e06 <.L19>:s
    9e02:	89 53       	cmpw	r8,r9
    9e04:	a8 10       	blo	*+0x9e14 <.L21>:s

00009e06 <.L19>:
    9e06:	00 5a       	movw	$0x0:s,r0
    9e08:	27 02       	pop	$0x3,r7
    9e0a:	1e 03       	popret	RA

00009e0c <.L35>:
    9e0c:	00 52       	cmpw	$0x0:s,r0
    9e0e:	19 1b       	bne	*-0x9d80 <.L27>:s
    9e10:	90 5a       	movw	$-1:s,r0
    9e12:	e0 1c       	br	*-0x9d92 <.L36>:s

00009e14 <.L21>:
    9e14:	00 52       	cmpw	$0x0:s,r0
    9e16:	0d 1b       	beq	*-0x9d90 <.L29>:s
    9e18:	10 5a       	movw	$0x1:s,r0
    9e1a:	e4 1b       	br	*-0x9d82 <.L3>:s

00009e1c <.L33>:
    9e1c:	41 52       	cmpw	$0x4:s,r1
    9e1e:	1c 1b       	bne	*-0x9d96 <.L6>:s
    9e20:	04 91       	loadw	0x2:s(r5,r4),r0
    9e22:	12 91       	loadw	0x2:s(r3,r2),r1
    9e24:	10 3b       	subw	r1,r0
    9e26:	27 02       	pop	$0x3,r7
    9e28:	1e 03       	popret	RA
	...

00009e2c <_udivmodsi4>:
    9e2c:	18 01       	push	$0x2,r8
    9e2e:	18 54       	movd	$0x1:s,(r9,r8)
    9e30:	24 57       	cmpd	(r3,r2),(r5,r4)
    9e32:	55 11       	bls	*+0x9e5c <.L2>:s
    9e34:	04 56       	cmpd	$0x0:s,(r5,r4)

00009e36 <.LFE6>:
    9e36:	7a 10       	ble	*+0x9e4a <.L16>:s
    9e38:	e2 11       	br	*+0x9e5c <.L2>:s

00009e3a <.L21>:
    9e3a:	80 5b       	movw	r8,r0
    9e3c:	90 27       	orw	r9,r0
    9e3e:	00 52       	cmpw	$0x0:s,r0
    9e40:	10 08       	sne	r0
    9e42:	00 52       	cmpw	$0x0:s,r0
    9e44:	09 10       	beq	*+0x9e56 <.L13>:s
    9e46:	04 56       	cmpd	$0x0:s,(r5,r4)
    9e48:	6a 10       	bgt	*+0x9e5c <.L2>:s

00009e4a <.L16>:
    9e4a:	44 61       	addd	(r5,r4),(r5,r4)
    9e4c:	88 61       	addd	(r9,r8),(r9,r8)
    9e4e:	42 57       	cmpd	(r5,r4),(r3,r2)
    9e50:	a0 08       	slo	r0
    9e52:	00 52       	cmpw	$0x0:s,r0
    9e54:	13 1f       	bne	*-0x9e3a <.L21>:s

00009e56 <.L13>:
    9e56:	80 55       	movd	(r9,r8),(r1,r0)
    9e58:	08 56       	cmpd	$0x0:s,(r9,r8)
    9e5a:	0c 10       	beq	*+0x9e72 <.L7>:s

00009e5c <.L2>:
    9e5c:	00 54       	movd	$0x0:s,(r1,r0)

00009e5e <.L4>:
    9e5e:	42 57       	cmpd	(r5,r4),(r3,r2)
    9e60:	45 10       	bhi	*+0x9e6a <.L9>:s
    9e62:	14 00 42 c0 	subd	(r5,r4),(r3,r2)
    9e66:	14 00 80 90 	ord	(r9,r8),(r1,r0)

00009e6a <.L9>:
    9e6a:	f8 4b       	lshd	$-1:s,(r9,r8)
    9e6c:	f4 4b       	lshd	$-1:s,(r5,r4)
    9e6e:	08 56       	cmpd	$0x0:s,(r9,r8)
    9e70:	17 1f       	bne	*-0x9e5e <.L4>:s

00009e72 <.L7>:
    9e72:	06 52       	cmpw	$0x0:s,r6
    9e74:	12 10       	bne	*+0x9e78 <.L10>:s
    9e76:	02 55       	movd	(r1,r0),(r3,r2)

00009e78 <.L10>:
    9e78:	20 5b       	movw	r2,r0
    9e7a:	31 5b       	movw	r3,r1
    9e7c:	18 02       	pop	$0x2,r8
    9e7e:	ee 0a       	jump	(ra)
