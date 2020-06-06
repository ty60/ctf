
sh-elf.x:     file format elf32-sh


Disassembly of section .text:

00001400 <_start>:
    1400:	df 0f       	mov.l	1440 <_stack_addr>,r15	! f110 <__end>
    1402:	d1 10       	mov.l	1444 <_main_addr>,r1	! 161c <__startmain>
    1404:	41 0b       	jsr	@r1
    1406:	00 09       	nop	
    1408:	65 03       	mov	r0,r5

0000140a <___r_exit>:
    140a:	e4 01       	mov	#1,r4
    140c:	c3 22       	trapa	#34
    140e:	00 0b       	rts	
    1410:	00 09       	nop	

00001412 <___r_read>:
    1412:	e4 03       	mov	#3,r4
    1414:	c3 22       	trapa	#34
    1416:	00 0b       	rts	
    1418:	00 09       	nop	

0000141a <___r_write>:
    141a:	e4 04       	mov	#4,r4
    141c:	c3 22       	trapa	#34
    141e:	00 0b       	rts	
    1420:	00 09       	nop	

00001422 <___r_open>:
    1422:	e4 05       	mov	#5,r4
    1424:	c3 22       	trapa	#34
    1426:	00 0b       	rts	
    1428:	00 09       	nop	

0000142a <___r_close>:
    142a:	e4 06       	mov	#6,r4
    142c:	c3 22       	trapa	#34
    142e:	00 0b       	rts	
    1430:	00 09       	nop	
    1432:	00 09       	nop	
    1434:	00 09       	nop	
    1436:	00 09       	nop	
    1438:	00 09       	nop	
    143a:	00 09       	nop	
    143c:	00 09       	nop	
    143e:	00 09       	nop	

00001440 <_stack_addr>:
    1440:	00 00       	.word 0x0000
    1442:	f1 10       	.word 0xf110

00001444 <_main_addr>:
    1444:	00 00       	.word 0x0000
    1446:	16 1c       	mov.l	r1,@(48,r6)
    1448:	00 09       	nop	
    144a:	00 09       	nop	
    144c:	00 09       	nop	
    144e:	00 09       	nop	

00001450 <___exit>:
    1450:	4f 22       	sts.l	pr,@-r15
    1452:	65 43       	mov	r4,r5
    1454:	d1 01       	mov.l	145c <___exit+0xc>,r1	! 140a <___r_exit>
    1456:	41 0b       	jsr	@r1
    1458:	e4 00       	mov	#0,r4
    145a:	00 09       	nop	
    145c:	00 00       	.word 0x0000
    145e:	14 0a       	mov.l	r0,@(40,r4)

00001460 <___read>:
    1460:	4f 22       	sts.l	pr,@-r15
    1462:	62 43       	mov	r4,r2
    1464:	61 53       	mov	r5,r1
    1466:	67 63       	mov	r6,r7
    1468:	e4 00       	mov	#0,r4
    146a:	65 23       	mov	r2,r5
    146c:	d0 02       	mov.l	1478 <___read+0x18>,r0	! 1412 <___r_read>
    146e:	40 0b       	jsr	@r0
    1470:	66 13       	mov	r1,r6
    1472:	4f 26       	lds.l	@r15+,pr
    1474:	00 0b       	rts	
    1476:	00 09       	nop	
    1478:	00 00       	.word 0x0000
    147a:	14 12       	mov.l	r1,@(8,r4)

0000147c <___write>:
    147c:	4f 22       	sts.l	pr,@-r15
    147e:	62 43       	mov	r4,r2
    1480:	61 53       	mov	r5,r1
    1482:	67 63       	mov	r6,r7
    1484:	e4 00       	mov	#0,r4
    1486:	65 23       	mov	r2,r5
    1488:	d0 02       	mov.l	1494 <___write+0x18>,r0	! 141a <___r_write>
    148a:	40 0b       	jsr	@r0
    148c:	66 13       	mov	r1,r6
    148e:	4f 26       	lds.l	@r15+,pr
    1490:	00 0b       	rts	
    1492:	00 09       	nop	
    1494:	00 00       	.word 0x0000
    1496:	14 1a       	mov.l	r1,@(40,r4)

00001498 <___open>:
    1498:	4f 22       	sts.l	pr,@-r15
    149a:	62 43       	mov	r4,r2
    149c:	61 53       	mov	r5,r1
    149e:	67 63       	mov	r6,r7
    14a0:	e4 00       	mov	#0,r4
    14a2:	65 23       	mov	r2,r5
    14a4:	d0 02       	mov.l	14b0 <___open+0x18>,r0	! 1422 <___r_open>
    14a6:	40 0b       	jsr	@r0
    14a8:	66 13       	mov	r1,r6
    14aa:	4f 26       	lds.l	@r15+,pr
    14ac:	00 0b       	rts	
    14ae:	00 09       	nop	
    14b0:	00 00       	.word 0x0000
    14b2:	14 22       	mov.l	r2,@(8,r4)

000014b4 <___close>:
    14b4:	4f 22       	sts.l	pr,@-r15
    14b6:	65 43       	mov	r4,r5
    14b8:	d0 02       	mov.l	14c4 <___close+0x10>,r0	! 142a <___r_close>
    14ba:	40 0b       	jsr	@r0
    14bc:	e4 00       	mov	#0,r4
    14be:	4f 26       	lds.l	@r15+,pr
    14c0:	00 0b       	rts	
    14c2:	00 09       	nop	
    14c4:	00 00       	.word 0x0000
    14c6:	14 2a       	mov.l	r2,@(40,r4)

000014c8 <__exit>:
    14c8:	4f 22       	sts.l	pr,@-r15
    14ca:	d1 01       	mov.l	14d0 <__exit+0x8>,r1	! 1450 <___exit>
    14cc:	41 0b       	jsr	@r1
    14ce:	00 09       	nop	
    14d0:	00 00       	.word 0x0000
    14d2:	14 50       	mov.l	r5,@(0,r4)

000014d4 <_read>:
    14d4:	4f 22       	sts.l	pr,@-r15
    14d6:	d0 03       	mov.l	14e4 <_read+0x10>,r0	! 1460 <___read>
    14d8:	40 0b       	jsr	@r0
    14da:	00 09       	nop	
    14dc:	4f 26       	lds.l	@r15+,pr
    14de:	00 0b       	rts	
    14e0:	00 09       	nop	
    14e2:	00 09       	nop	
    14e4:	00 00       	.word 0x0000
    14e6:	14 60       	mov.l	r6,@(0,r4)

000014e8 <_write>:
    14e8:	4f 22       	sts.l	pr,@-r15
    14ea:	d0 03       	mov.l	14f8 <_write+0x10>,r0	! 147c <___write>
    14ec:	40 0b       	jsr	@r0
    14ee:	00 09       	nop	
    14f0:	4f 26       	lds.l	@r15+,pr
    14f2:	00 0b       	rts	
    14f4:	00 09       	nop	
    14f6:	00 09       	nop	
    14f8:	00 00       	.word 0x0000
    14fa:	14 7c       	mov.l	r7,@(48,r4)

000014fc <_open>:
    14fc:	4f 22       	sts.l	pr,@-r15
    14fe:	d0 03       	mov.l	150c <_open+0x10>,r0	! 1498 <___open>
    1500:	40 0b       	jsr	@r0
    1502:	00 09       	nop	
    1504:	4f 26       	lds.l	@r15+,pr
    1506:	00 0b       	rts	
    1508:	00 09       	nop	
    150a:	00 09       	nop	
    150c:	00 00       	.word 0x0000
    150e:	14 98       	mov.l	r9,@(32,r4)

00001510 <_close>:
    1510:	4f 22       	sts.l	pr,@-r15
    1512:	d0 03       	mov.l	1520 <_close+0x10>,r0	! 14b4 <___close>
    1514:	40 0b       	jsr	@r0
    1516:	00 09       	nop	
    1518:	4f 26       	lds.l	@r15+,pr
    151a:	00 0b       	rts	
    151c:	00 09       	nop	
    151e:	00 09       	nop	
    1520:	00 00       	.word 0x0000
    1522:	14 b4       	mov.l	r11,@(16,r4)

00001524 <_fstat>:
    1524:	4f 22       	sts.l	pr,@-r15
    1526:	64 53       	mov	r5,r4
    1528:	e5 00       	mov	#0,r5
    152a:	d0 03       	mov.l	1538 <_fstat+0x14>,r0	! 1670 <_memset>
    152c:	40 0b       	jsr	@r0
    152e:	e6 3c       	mov	#60,r6
    1530:	e0 00       	mov	#0,r0
    1532:	4f 26       	lds.l	@r15+,pr
    1534:	00 0b       	rts	
    1536:	00 09       	nop	
    1538:	00 00       	.word 0x0000
    153a:	16 70       	mov.l	r7,@(0,r6)

0000153c <_lseek>:
    153c:	00 0b       	rts	
    153e:	60 53       	mov	r5,r0

00001540 <_sbrk>:
    1540:	d1 02       	mov.l	154c <_sbrk+0xc>,r1	! a400 <__gp>
    1542:	60 12       	mov.l	@r1,r0
    1544:	34 0c       	add	r0,r4
    1546:	00 0b       	rts	
    1548:	21 42       	mov.l	r4,@r1
    154a:	00 09       	nop	
    154c:	00 00       	.word 0x0000
    154e:	a4 00       	bra	1d52 <__vfprintf_r+0x64a>

00001550 <_isatty>:
    1550:	00 0b       	rts	
    1552:	e0 01       	mov	#1,r0

00001554 <__read>:
    1554:	4f 22       	sts.l	pr,@-r15
    1556:	d0 03       	mov.l	1564 <__read+0x10>,r0	! 14d4 <_read>
    1558:	40 0b       	jsr	@r0
    155a:	00 09       	nop	
    155c:	4f 26       	lds.l	@r15+,pr
    155e:	00 0b       	rts	
    1560:	00 09       	nop	
    1562:	00 09       	nop	
    1564:	00 00       	.word 0x0000
    1566:	14 d4       	mov.l	r13,@(16,r4)

00001568 <__write>:
    1568:	4f 22       	sts.l	pr,@-r15
    156a:	d0 03       	mov.l	1578 <__write+0x10>,r0	! 14e8 <_write>
    156c:	40 0b       	jsr	@r0
    156e:	00 09       	nop	
    1570:	4f 26       	lds.l	@r15+,pr
    1572:	00 0b       	rts	
    1574:	00 09       	nop	
    1576:	00 09       	nop	
    1578:	00 00       	.word 0x0000
    157a:	14 e8       	mov.l	r14,@(32,r4)

0000157c <__open>:
    157c:	4f 22       	sts.l	pr,@-r15
    157e:	d0 03       	mov.l	158c <__open+0x10>,r0	! 14fc <_open>
    1580:	40 0b       	jsr	@r0
    1582:	00 09       	nop	
    1584:	4f 26       	lds.l	@r15+,pr
    1586:	00 0b       	rts	
    1588:	00 09       	nop	
    158a:	00 09       	nop	
    158c:	00 00       	.word 0x0000
    158e:	14 fc       	mov.l	r15,@(48,r4)

00001590 <__close>:
    1590:	4f 22       	sts.l	pr,@-r15
    1592:	d0 03       	mov.l	15a0 <__close+0x10>,r0	! 1510 <_close>
    1594:	40 0b       	jsr	@r0
    1596:	00 09       	nop	
    1598:	4f 26       	lds.l	@r15+,pr
    159a:	00 0b       	rts	
    159c:	00 09       	nop	
    159e:	00 09       	nop	
    15a0:	00 00       	.word 0x0000
    15a2:	15 10       	mov.l	r1,@(0,r5)

000015a4 <__fstat>:
    15a4:	4f 22       	sts.l	pr,@-r15
    15a6:	d0 03       	mov.l	15b4 <__fstat+0x10>,r0	! 1524 <_fstat>
    15a8:	40 0b       	jsr	@r0
    15aa:	00 09       	nop	
    15ac:	4f 26       	lds.l	@r15+,pr
    15ae:	00 0b       	rts	
    15b0:	00 09       	nop	
    15b2:	00 09       	nop	
    15b4:	00 00       	.word 0x0000
    15b6:	15 24       	mov.l	r2,@(16,r5)

000015b8 <__lseek>:
    15b8:	4f 22       	sts.l	pr,@-r15
    15ba:	d0 03       	mov.l	15c8 <__lseek+0x10>,r0	! 153c <_lseek>
    15bc:	40 0b       	jsr	@r0
    15be:	00 09       	nop	
    15c0:	4f 26       	lds.l	@r15+,pr
    15c2:	00 0b       	rts	
    15c4:	00 09       	nop	
    15c6:	00 09       	nop	
    15c8:	00 00       	.word 0x0000
    15ca:	15 3c       	mov.l	r3,@(48,r5)

000015cc <__sbrk>:
    15cc:	4f 22       	sts.l	pr,@-r15
    15ce:	d0 03       	mov.l	15dc <__sbrk+0x10>,r0	! 1540 <_sbrk>
    15d0:	40 0b       	jsr	@r0
    15d2:	00 09       	nop	
    15d4:	4f 26       	lds.l	@r15+,pr
    15d6:	00 0b       	rts	
    15d8:	00 09       	nop	
    15da:	00 09       	nop	
    15dc:	00 00       	.word 0x0000
    15de:	15 40       	mov.l	r4,@(0,r5)

000015e0 <__isatty>:
    15e0:	4f 22       	sts.l	pr,@-r15
    15e2:	d0 03       	mov.l	15f0 <__isatty+0x10>,r0	! 1550 <_isatty>
    15e4:	40 0b       	jsr	@r0
    15e6:	00 09       	nop	
    15e8:	4f 26       	lds.l	@r15+,pr
    15ea:	00 0b       	rts	
    15ec:	00 09       	nop	
    15ee:	00 09       	nop	
    15f0:	00 00       	.word 0x0000
    15f2:	15 50       	mov.l	r5,@(0,r5)

000015f4 <_main>:
    15f4:	4f 22       	sts.l	pr,@-r15
    15f6:	d4 04       	mov.l	1608 <_main+0x14>,r4	! 9df8 <__etext>
    15f8:	d1 04       	mov.l	160c <_main+0x18>,r1	! a404 <_data_value>
    15fa:	d6 05       	mov.l	1610 <_main+0x1c>,r6	! 9e24
    15fc:	d0 05       	mov.l	1614 <_main+0x20>,r0	! 16d8 <_printf>
    15fe:	40 0b       	jsr	@r0
    1600:	65 12       	mov.l	@r1,r5
    1602:	d1 05       	mov.l	1618 <_main+0x24>,r1	! 1644 <_exit>
    1604:	41 0b       	jsr	@r1
    1606:	e4 00       	mov	#0,r4
    1608:	00 00       	.word 0x0000
    160a:	9d f8       	mov.w	17fe <__vfprintf_r+0xf6>,r13	! 9
    160c:	00 00       	.word 0x0000
    160e:	a4 04       	bra	1e1a <__vfprintf_r+0x712>
    1610:	00 00       	.word 0x0000
    1612:	9e 24       	mov.w	165e <_exit+0x1a>,r14	! d103
    1614:	00 00       	.word 0x0000
    1616:	16 d8       	mov.l	r13,@(32,r6)
    1618:	00 00       	.word 0x0000
    161a:	16 44       	mov.l	r4,@(16,r6)

0000161c <__startmain>:
    161c:	4f 22       	sts.l	pr,@-r15
    161e:	d1 05       	mov.l	1634 <__startmain+0x18>,r1	! acc0 <__edata>
    1620:	64 13       	mov	r1,r4
    1622:	e5 00       	mov	#0,r5
    1624:	d6 04       	mov.l	1638 <__startmain+0x1c>,r6	! ed08 <__ebss>
    1626:	d0 05       	mov.l	163c <__startmain+0x20>,r0	! 1670 <_memset>
    1628:	40 0b       	jsr	@r0
    162a:	36 18       	sub	r1,r6
    162c:	d0 04       	mov.l	1640 <__startmain+0x24>,r0	! 15f4 <_main>
    162e:	40 0b       	jsr	@r0
    1630:	00 09       	nop	
    1632:	00 09       	nop	
    1634:	00 00       	.word 0x0000
    1636:	ac c0       	bra	fba <_.tmp+0xf7a>
    1638:	00 00       	.word 0x0000
    163a:	ed 08       	mov	#8,r13
    163c:	00 00       	.word 0x0000
    163e:	16 70       	mov.l	r7,@(0,r6)
    1640:	00 00       	.word 0x0000
    1642:	15 f4       	mov.l	r15,@(16,r5)

00001644 <_exit>:
    1644:	d1 07       	mov.l	1664 <_exit+0x20>,r1	! 3204 <___call_exitprocs>
    1646:	e5 00       	mov	#0,r5
    1648:	2f 86       	mov.l	r8,@-r15
    164a:	4f 22       	sts.l	pr,@-r15
    164c:	41 0b       	jsr	@r1
    164e:	68 43       	mov	r4,r8
    1650:	d1 05       	mov.l	1668 <_exit+0x24>,r1	! 9e2c <__global_impure_ptr>
    1652:	64 12       	mov.l	@r1,r4
    1654:	51 4f       	mov.l	@(60,r4),r1
    1656:	21 18       	tst	r1,r1
    1658:	89 01       	bt	165e <_exit+0x1a>
    165a:	41 0b       	jsr	@r1
    165c:	00 09       	nop	
    165e:	d1 03       	mov.l	166c <_exit+0x28>,r1	! 14c8 <__exit>
    1660:	41 0b       	jsr	@r1
    1662:	64 83       	mov	r8,r4
    1664:	00 00       	.word 0x0000
    1666:	32 04       	div1	r0,r2
    1668:	00 00       	.word 0x0000
    166a:	9e 2c       	mov.w	16c6 <__printf_r+0x16>,r14	! 400b
    166c:	00 00       	.word 0x0000
    166e:	14 c8       	mov.l	r12,@(32,r4)

00001670 <_memset>:
    1670:	e0 0c       	mov	#12,r0
    1672:	30 67       	cmp/gt	r6,r0
    1674:	60 43       	mov	r4,r0
    1676:	36 4c       	add	r4,r6
    1678:	89 12       	bt	16a0 <L_store_byte_loop_check0>
    167a:	c8 03       	tst	#3,r0
    167c:	65 5c       	extu.b	r5,r5
    167e:	89 03       	bt	1688 <L_dup_bytes>

00001680 <L_align_loop>:
    1680:	20 50       	mov.b	r5,@r0
    1682:	70 01       	add	#1,r0
    1684:	c8 03       	tst	#3,r0
    1686:	8b fb       	bf	1680 <L_align_loop>

00001688 <L_dup_bytes>:
    1688:	62 58       	swap.b	r5,r2
    168a:	25 2b       	or	r2,r5
    168c:	62 59       	swap.w	r5,r2
    168e:	25 2b       	or	r2,r5
    1690:	76 f0       	add	#-16,r6
    1692:	00 09       	nop	

00001694 <L_store_long_loop>:
    1694:	20 52       	mov.l	r5,@r0
    1696:	30 62       	cmp/hs	r6,r0
    1698:	10 51       	mov.l	r5,@(4,r0)
    169a:	70 08       	add	#8,r0
    169c:	8b fa       	bf	1694 <L_store_long_loop>
    169e:	76 10       	add	#16,r6

000016a0 <L_store_byte_loop_check0>:
    16a0:	30 60       	cmp/eq	r6,r0
    16a2:	89 03       	bt	16ac <L_exit>

000016a4 <L_store_byte_loop>:
    16a4:	20 50       	mov.b	r5,@r0
    16a6:	70 01       	add	#1,r0
    16a8:	30 60       	cmp/eq	r6,r0
    16aa:	8b fb       	bf	16a4 <L_store_byte_loop>

000016ac <L_exit>:
    16ac:	00 0b       	rts	
    16ae:	60 43       	mov	r4,r0

000016b0 <__printf_r>:
    16b0:	2f 76       	mov.l	r7,@-r15
    16b2:	61 43       	mov	r4,r1
    16b4:	2f 66       	mov.l	r6,@-r15
    16b6:	e2 08       	mov	#8,r2
    16b8:	4f 22       	sts.l	pr,@-r15
    16ba:	66 53       	mov	r5,r6
    16bc:	d0 05       	mov.l	16d4 <__printf_r+0x24>,r0	! 1708 <__vfprintf_r>
    16be:	7f fc       	add	#-4,r15
    16c0:	55 12       	mov.l	@(8,r1),r5
    16c2:	32 fc       	add	r15,r2
    16c4:	2f 22       	mov.l	r2,@r15
    16c6:	40 0b       	jsr	@r0
    16c8:	67 23       	mov	r2,r7
    16ca:	7f 04       	add	#4,r15
    16cc:	4f 26       	lds.l	@r15+,pr
    16ce:	00 0b       	rts	
    16d0:	7f 08       	add	#8,r15
    16d2:	00 09       	nop	
    16d4:	00 00       	.word 0x0000
    16d6:	17 08       	mov.l	r0,@(32,r7)

000016d8 <_printf>:
    16d8:	2f 76       	mov.l	r7,@-r15
    16da:	e2 08       	mov	#8,r2
    16dc:	2f 66       	mov.l	r6,@-r15
    16de:	66 43       	mov	r4,r6
    16e0:	2f 56       	mov.l	r5,@-r15
    16e2:	d1 07       	mov.l	1700 <_printf+0x28>,r1	! a408 <__impure_ptr>
    16e4:	4f 22       	sts.l	pr,@-r15
    16e6:	61 12       	mov.l	@r1,r1
    16e8:	7f fc       	add	#-4,r15
    16ea:	d0 06       	mov.l	1704 <_printf+0x2c>,r0	! 1708 <__vfprintf_r>
    16ec:	32 fc       	add	r15,r2
    16ee:	55 12       	mov.l	@(8,r1),r5
    16f0:	64 13       	mov	r1,r4
    16f2:	2f 22       	mov.l	r2,@r15
    16f4:	40 0b       	jsr	@r0
    16f6:	67 23       	mov	r2,r7
    16f8:	7f 04       	add	#4,r15
    16fa:	4f 26       	lds.l	@r15+,pr
    16fc:	00 0b       	rts	
    16fe:	7f 0c       	add	#12,r15
    1700:	00 00       	.word 0x0000
    1702:	a4 08       	bra	1f16 <__vfprintf_r+0x80e>
    1704:	00 00       	.word 0x0000
    1706:	17 08       	mov.l	r0,@(32,r7)

00001708 <__vfprintf_r>:
    1708:	2f 86       	mov.l	r8,@-r15
    170a:	68 63       	mov	r6,r8
    170c:	2f 96       	mov.l	r9,@-r15
    170e:	2f a6       	mov.l	r10,@-r15
    1710:	2f b6       	mov.l	r11,@-r15
    1712:	2f c6       	mov.l	r12,@-r15
    1714:	2f d6       	mov.l	r13,@-r15
    1716:	2f e6       	mov.l	r14,@-r15
    1718:	91 6b       	mov.w	17f2 <__vfprintf_r+0xea>,r1	! 540
    171a:	4f 22       	sts.l	pr,@-r15
    171c:	d0 38       	mov.l	1800 <__vfprintf_r+0xf8>,r0	! 503c <__localeconv_r>
    171e:	3f 18       	sub	r1,r15
    1720:	1f 58       	mov.l	r5,@(32,r15)
    1722:	1f 47       	mov.l	r4,@(28,r15)
    1724:	40 0b       	jsr	@r0
    1726:	1f 7d       	mov.l	r7,@(52,r15)
    1728:	60 02       	mov.l	@r0,r0
    172a:	e1 40       	mov	#64,r1
    172c:	d2 35       	mov.l	1804 <__vfprintf_r+0xfc>,r2	! 66b0 <_strlen>
    172e:	31 fc       	add	r15,r1
    1730:	64 03       	mov	r0,r4
    1732:	42 0b       	jsr	@r2
    1734:	11 05       	mov.l	r0,@(20,r1)
    1736:	e3 40       	mov	#64,r3
    1738:	33 fc       	add	r15,r3
    173a:	13 08       	mov.l	r0,@(32,r3)
    173c:	e4 00       	mov	#0,r4
    173e:	50 f7       	mov.l	@(28,r15),r0
    1740:	e5 00       	mov	#0,r5
    1742:	13 4a       	mov.l	r4,@(40,r3)
    1744:	20 08       	tst	r0,r0
    1746:	13 5b       	mov.l	r5,@(44,r3)
    1748:	89 04       	bt	1754 <__vfprintf_r+0x4c>
    174a:	51 0e       	mov.l	@(56,r0),r1
    174c:	21 18       	tst	r1,r1
    174e:	8b 01       	bf	1754 <__vfprintf_r+0x4c>
    1750:	a2 ce       	bra	1cf0 <__vfprintf_r+0x5e8>
    1752:	00 09       	nop	
    1754:	52 f8       	mov.l	@(32,r15),r2
    1756:	e0 44       	mov	#68,r0
    1758:	91 4c       	mov.w	17f4 <__vfprintf_r+0xec>,r1	! 2000
    175a:	72 0c       	add	#12,r2
    175c:	67 21       	mov.w	@r2,r7
    175e:	0f 26       	mov.l	r2,@(r0,r15)
    1760:	27 18       	tst	r1,r7
    1762:	8b 07       	bf	1774 <__vfprintf_r+0x6c>
    1764:	27 1b       	or	r1,r7
    1766:	22 71       	mov.w	r7,@r2
    1768:	52 f8       	mov.l	@(32,r15),r2
    176a:	93 44       	mov.w	17f6 <__vfprintf_r+0xee>,r3	! dfff
    176c:	72 40       	add	#64,r2
    176e:	51 29       	mov.l	@(36,r2),r1
    1770:	21 39       	and	r3,r1
    1772:	12 19       	mov.l	r1,@(36,r2)
    1774:	60 73       	mov	r7,r0
    1776:	c8 08       	tst	#8,r0
    1778:	89 03       	bt	1782 <__vfprintf_r+0x7a>
    177a:	52 f8       	mov.l	@(32,r15),r2
    177c:	51 24       	mov.l	@(16,r2),r1
    177e:	21 18       	tst	r1,r1
    1780:	8b 02       	bf	1788 <__vfprintf_r+0x80>
    1782:	a2 3d       	bra	1c00 <__vfprintf_r+0x4f8>
    1784:	54 f7       	mov.l	@(28,r15),r4
    1786:	00 09       	nop	
    1788:	e1 1a       	mov	#26,r1
    178a:	21 79       	and	r7,r1
    178c:	60 13       	mov	r1,r0
    178e:	88 0a       	cmp/eq	#10,r0
    1790:	8b 02       	bf	1798 <__vfprintf_r+0x90>
    1792:	a2 43       	bra	1c1c <__vfprintf_r+0x514>
    1794:	51 f8       	mov.l	@(32,r15),r1
    1796:	00 09       	nop	
    1798:	91 2e       	mov.w	17f8 <__vfprintf_r+0xf0>,r1	! a4
    179a:	e4 40       	mov	#64,r4
    179c:	92 2d       	mov.w	17fa <__vfprintf_r+0xf2>,r2	! 140
    179e:	31 fc       	add	r15,r1
    17a0:	34 fc       	add	r15,r4
    17a2:	32 fc       	add	r15,r2
    17a4:	21 22       	mov.l	r2,@r1
    17a6:	6c 23       	mov	r2,r12
    17a8:	92 28       	mov.w	17fc <__vfprintf_r+0xf4>,r2	! b0
    17aa:	e3 00       	mov	#0,r3
    17ac:	11 32       	mov.l	r3,@(8,r1)
    17ae:	32 fc       	add	r15,r2
    17b0:	14 20       	mov.l	r2,@(0,r4)
    17b2:	72 28       	add	#40,r2
    17b4:	11 31       	mov.l	r3,@(4,r1)
    17b6:	e0 00       	mov	#0,r0
    17b8:	14 36       	mov.l	r3,@(24,r4)
    17ba:	14 34       	mov.l	r3,@(16,r4)
    17bc:	14 3c       	mov.l	r3,@(48,r4)
    17be:	53 40       	mov.l	@(0,r4),r3
    17c0:	14 23       	mov.l	r2,@(12,r4)
    17c2:	73 27       	add	#39,r3
    17c4:	32 38       	sub	r3,r2
    17c6:	1f 0c       	mov.l	r0,@(48,r15)
    17c8:	14 39       	mov.l	r3,@(36,r4)
    17ca:	14 2f       	mov.l	r2,@(60,r4)
    17cc:	1f 86       	mov.l	r8,@(24,r15)
    17ce:	54 f6       	mov.l	@(24,r15),r4
    17d0:	e1 ff       	mov	#-1,r1
    17d2:	62 40       	mov.b	@r4,r2
    17d4:	60 23       	mov	r2,r0
    17d6:	88 25       	cmp/eq	#37,r0
    17d8:	60 1a       	negc	r1,r0
    17da:	c8 ff       	tst	#-1,r0
    17dc:	89 03       	bt	17e6 <__vfprintf_r+0xde>
    17de:	22 28       	tst	r2,r2
    17e0:	60 1a       	negc	r1,r0
    17e2:	c8 ff       	tst	#-1,r0
    17e4:	8b 02       	bf	17ec <__vfprintf_r+0xe4>
    17e6:	a1 8c       	bra	1b02 <__vfprintf_r+0x3fa>
    17e8:	58 f6       	mov.l	@(24,r15),r8
    17ea:	00 09       	nop	
    17ec:	62 43       	mov	r4,r2
    17ee:	a0 0f       	bra	1810 <__vfprintf_r+0x108>
    17f0:	72 01       	add	#1,r2
    17f2:	05 40       	.word 0x0540
    17f4:	20 00       	mov.b	r0,@r0
    17f6:	df ff       	mov.l	1bf4 <__vfprintf_r+0x4ec>,r15	! 50f5cb04
    17f8:	00 a4       	mov.b	r10,@(r0,r0)
    17fa:	01 40       	.word 0x0140
    17fc:	00 b0       	.word 0x00b0
    17fe:	00 09       	nop	
    1800:	00 00       	.word 0x0000
    1802:	50 3c       	mov.l	@(48,r3),r0
    1804:	00 00       	.word 0x0000
    1806:	66 b0       	mov.b	@r11,r6
    1808:	23 38       	tst	r3,r3
    180a:	60 1a       	negc	r1,r0
    180c:	c8 ff       	tst	#-1,r0
    180e:	89 06       	bt	181e <__vfprintf_r+0x116>
    1810:	68 23       	mov	r2,r8
    1812:	63 24       	mov.b	@r2+,r3
    1814:	60 33       	mov	r3,r0
    1816:	88 25       	cmp/eq	#37,r0
    1818:	60 1a       	negc	r1,r0
    181a:	c8 ff       	tst	#-1,r0
    181c:	8b f4       	bf	1808 <__vfprintf_r+0x100>
    181e:	51 f6       	mov.l	@(24,r15),r1
    1820:	69 83       	mov	r8,r9
    1822:	39 18       	sub	r1,r9
    1824:	29 98       	tst	r9,r9
    1826:	89 13       	bt	1850 <__vfprintf_r+0x148>
    1828:	96 6c       	mov.w	1904 <__vfprintf_r+0x1fc>,r6	! a4
    182a:	e2 07       	mov	#7,r2
    182c:	2c 12       	mov.l	r1,@r12
    182e:	36 fc       	add	r15,r6
    1830:	51 62       	mov.l	@(8,r6),r1
    1832:	1c 91       	mov.l	r9,@(4,r12)
    1834:	31 9c       	add	r9,r1
    1836:	16 12       	mov.l	r1,@(8,r6)
    1838:	51 61       	mov.l	@(4,r6),r1
    183a:	71 01       	add	#1,r1
    183c:	16 11       	mov.l	r1,@(4,r6)
    183e:	31 27       	cmp/gt	r2,r1
    1840:	8b 02       	bf	1848 <__vfprintf_r+0x140>
    1842:	a2 4d       	bra	1ce0 <__vfprintf_r+0x5d8>
    1844:	54 f7       	mov.l	@(28,r15),r4
    1846:	00 09       	nop	
    1848:	7c 08       	add	#8,r12
    184a:	50 fc       	mov.l	@(48,r15),r0
    184c:	30 9c       	add	r9,r0
    184e:	1f 0c       	mov.l	r0,@(48,r15)
    1850:	61 80       	mov.b	@r8,r1
    1852:	21 18       	tst	r1,r1
    1854:	89 1b       	bt	188e <__vfprintf_r+0x186>
    1856:	90 56       	mov.w	1906 <__vfprintf_r+0x1fe>,r0	! 83
    1858:	e2 00       	mov	#0,r2
    185a:	78 01       	add	#1,r8
    185c:	0f 24       	mov.b	r2,@(r0,r15)
    185e:	e0 00       	mov	#0,r0
    1860:	97 52       	mov.w	1908 <__vfprintf_r+0x200>,r7	! fb43
    1862:	e2 00       	mov	#0,r2
    1864:	1f 86       	mov.l	r8,@(24,r15)
    1866:	ee ff       	mov	#-1,r14
    1868:	69 80       	mov.b	@r8,r9
    186a:	e1 58       	mov	#88,r1
    186c:	1f 05       	mov.l	r0,@(20,r15)
    186e:	e6 2b       	mov	#43,r6
    1870:	1f 2e       	mov.l	r2,@(56,r15)
    1872:	e5 20       	mov	#32,r5
    1874:	e2 09       	mov	#9,r2
    1876:	63 83       	mov	r8,r3
    1878:	73 01       	add	#1,r3
    187a:	64 93       	mov	r9,r4
    187c:	74 e0       	add	#-32,r4
    187e:	34 16       	cmp/hi	r1,r4
    1880:	89 02       	bt	1888 <__vfprintf_r+0x180>
    1882:	a1 41       	bra	1b08 <__vfprintf_r+0x400>
    1884:	00 09       	nop	
    1886:	00 09       	nop	
    1888:	1f 36       	mov.l	r3,@(24,r15)
    188a:	29 98       	tst	r9,r9
    188c:	8b 02       	bf	1894 <__vfprintf_r+0x18c>
    188e:	a2 09       	bra	1ca4 <__vfprintf_r+0x59c>
    1890:	00 09       	nop	
    1892:	00 09       	nop	
    1894:	95 39       	mov.w	190a <__vfprintf_r+0x202>,r5	! 540
    1896:	e2 00       	mov	#0,r2
    1898:	90 38       	mov.w	190c <__vfprintf_r+0x204>,r0	! fb70
    189a:	35 fc       	add	r15,r5
    189c:	05 94       	mov.b	r9,@(r0,r5)
    189e:	90 32       	mov.w	1906 <__vfprintf_r+0x1fe>,r0	! 83
    18a0:	0f 24       	mov.b	r2,@(r0,r15)
    18a2:	e0 01       	mov	#1,r0
    18a4:	e1 01       	mov	#1,r1
    18a6:	1f 0b       	mov.l	r0,@(44,r15)
    18a8:	e0 40       	mov	#64,r0
    18aa:	1f 19       	mov.l	r1,@(36,r15)
    18ac:	01 fe       	mov.l	@(r0,r15),r1
    18ae:	1f 1f       	mov.l	r1,@(60,r15)
    18b0:	e3 40       	mov	#64,r3
    18b2:	e4 00       	mov	#0,r4
    18b4:	33 fc       	add	r15,r3
    18b6:	13 42       	mov.l	r4,@(8,r3)
    18b8:	13 47       	mov.l	r4,@(28,r3)
    18ba:	5b f5       	mov.l	@(20,r15),r11
    18bc:	e2 02       	mov	#2,r2
    18be:	2b 29       	and	r2,r11
    18c0:	2b b8       	tst	r11,r11
    18c2:	89 02       	bt	18ca <__vfprintf_r+0x1c2>
    18c4:	53 f9       	mov.l	@(36,r15),r3
    18c6:	73 02       	add	#2,r3
    18c8:	1f 39       	mov.l	r3,@(36,r15)
    18ca:	50 f5       	mov.l	@(20,r15),r0
    18cc:	c9 84       	and	#-124,r0
    18ce:	1f 0a       	mov.l	r0,@(40,r15)
    18d0:	20 08       	tst	r0,r0
    18d2:	8b 54       	bf	197e <__vfprintf_r+0x276>
    18d4:	5e fe       	mov.l	@(56,r15),r14
    18d6:	51 f9       	mov.l	@(36,r15),r1
    18d8:	3e 18       	sub	r1,r14
    18da:	4e 15       	cmp/pl	r14
    18dc:	8b 4f       	bf	197e <__vfprintf_r+0x276>
    18de:	e2 10       	mov	#16,r2
    18e0:	3e 27       	cmp/gt	r2,r14
    18e2:	d3 0b       	mov.l	1910 <__vfprintf_r+0x208>,r3	! 9e78 <_blanks.4040>
    18e4:	8b 3a       	bf	195c <__vfprintf_r+0x254>
    18e6:	98 0d       	mov.w	1904 <__vfprintf_r+0x1fc>,r8	! a4
    18e8:	e2 40       	mov	#64,r2
    18ea:	32 fc       	add	r15,r2
    18ec:	38 fc       	add	r15,r8
    18ee:	12 9d       	mov.l	r9,@(52,r2)
    18f0:	67 c3       	mov	r12,r7
    18f2:	12 be       	mov.l	r11,@(56,r2)
    18f4:	ea 10       	mov	#16,r10
    18f6:	6b e3       	mov	r14,r11
    18f8:	ed 07       	mov	#7,r13
    18fa:	6e 83       	mov	r8,r14
    18fc:	59 f8       	mov.l	@(32,r15),r9
    18fe:	6c 33       	mov	r3,r12
    1900:	a0 0c       	bra	191c <__vfprintf_r+0x214>
    1902:	58 f7       	mov.l	@(28,r15),r8
    1904:	00 a4       	mov.b	r10,@(r0,r0)
    1906:	00 83       	.word 0x0083
    1908:	fb 43       	.word 0xfb43
    190a:	05 40       	.word 0x0540
    190c:	fb 70       	.word 0xfb70
    190e:	00 09       	nop	
    1910:	00 00       	.word 0x0000
    1912:	9e 78       	mov.w	1a06 <__vfprintf_r+0x2fe>,r14	! 59f8
    1914:	7b f0       	add	#-16,r11
    1916:	3b a7       	cmp/gt	r10,r11
    1918:	77 08       	add	#8,r7
    191a:	8b 18       	bf	194e <__vfprintf_r+0x246>
    191c:	51 e2       	mov.l	@(8,r14),r1
    191e:	27 c2       	mov.l	r12,@r7
    1920:	71 10       	add	#16,r1
    1922:	17 a1       	mov.l	r10,@(4,r7)
    1924:	1e 12       	mov.l	r1,@(8,r14)
    1926:	51 e1       	mov.l	@(4,r14),r1
    1928:	71 01       	add	#1,r1
    192a:	1e 11       	mov.l	r1,@(4,r14)
    192c:	31 d7       	cmp/gt	r13,r1
    192e:	8b f1       	bf	1914 <__vfprintf_r+0x20c>
    1930:	d3 39       	mov.l	1a18 <__vfprintf_r+0x310>,r3	! 66d0 <___sprint_r>
    1932:	64 83       	mov	r8,r4
    1934:	65 93       	mov	r9,r5
    1936:	43 0b       	jsr	@r3
    1938:	66 e3       	mov	r14,r6
    193a:	20 08       	tst	r0,r0
    193c:	89 02       	bt	1944 <__vfprintf_r+0x23c>
    193e:	a1 bc       	bra	1cba <__vfprintf_r+0x5b2>
    1940:	e0 44       	mov	#68,r0
    1942:	00 09       	nop	
    1944:	97 62       	mov.w	1a0c <__vfprintf_r+0x304>,r7	! 140
    1946:	7b f0       	add	#-16,r11
    1948:	3b a7       	cmp/gt	r10,r11
    194a:	37 fc       	add	r15,r7
    194c:	89 e6       	bt	191c <__vfprintf_r+0x214>
    194e:	e4 40       	mov	#64,r4
    1950:	34 fc       	add	r15,r4
    1952:	6e b3       	mov	r11,r14
    1954:	59 4d       	mov.l	@(52,r4),r9
    1956:	63 c3       	mov	r12,r3
    1958:	5b 4e       	mov.l	@(56,r4),r11
    195a:	6c 73       	mov	r7,r12
    195c:	96 57       	mov.w	1a0e <__vfprintf_r+0x306>,r6	! a4
    195e:	2c 32       	mov.l	r3,@r12
    1960:	36 fc       	add	r15,r6
    1962:	52 62       	mov.l	@(8,r6),r2
    1964:	51 61       	mov.l	@(4,r6),r1
    1966:	32 ec       	add	r14,r2
    1968:	1c e1       	mov.l	r14,@(4,r12)
    196a:	71 01       	add	#1,r1
    196c:	16 22       	mov.l	r2,@(8,r6)
    196e:	e2 07       	mov	#7,r2
    1970:	16 11       	mov.l	r1,@(4,r6)
    1972:	31 27       	cmp/gt	r2,r1
    1974:	8b 02       	bf	197c <__vfprintf_r+0x274>
    1976:	a6 55       	bra	2624 <__vfprintf_r+0xf1c>
    1978:	54 f7       	mov.l	@(28,r15),r4
    197a:	00 09       	nop	
    197c:	7c 08       	add	#8,r12
    197e:	91 47       	mov.w	1a10 <__vfprintf_r+0x308>,r1	! 83
    1980:	31 fc       	add	r15,r1
    1982:	62 10       	mov.b	@r1,r2
    1984:	22 28       	tst	r2,r2
    1986:	89 10       	bt	19aa <__vfprintf_r+0x2a2>
    1988:	96 41       	mov.w	1a0e <__vfprintf_r+0x306>,r6	! a4
    198a:	e2 07       	mov	#7,r2
    198c:	2c 12       	mov.l	r1,@r12
    198e:	36 fc       	add	r15,r6
    1990:	e1 01       	mov	#1,r1
    1992:	1c 11       	mov.l	r1,@(4,r12)
    1994:	51 62       	mov.l	@(8,r6),r1
    1996:	71 01       	add	#1,r1
    1998:	16 12       	mov.l	r1,@(8,r6)
    199a:	51 61       	mov.l	@(4,r6),r1
    199c:	71 01       	add	#1,r1
    199e:	16 11       	mov.l	r1,@(4,r6)
    19a0:	31 27       	cmp/gt	r2,r1
    19a2:	8b 01       	bf	19a8 <__vfprintf_r+0x2a0>
    19a4:	a5 6a       	bra	247c <__vfprintf_r+0xd74>
    19a6:	54 f7       	mov.l	@(28,r15),r4
    19a8:	7c 08       	add	#8,r12
    19aa:	2b b8       	tst	r11,r11
    19ac:	89 13       	bt	19d6 <__vfprintf_r+0x2ce>
    19ae:	91 30       	mov.w	1a12 <__vfprintf_r+0x30a>,r1	! 84
    19b0:	e2 07       	mov	#7,r2
    19b2:	96 2c       	mov.w	1a0e <__vfprintf_r+0x306>,r6	! a4
    19b4:	31 fc       	add	r15,r1
    19b6:	2c 12       	mov.l	r1,@r12
    19b8:	36 fc       	add	r15,r6
    19ba:	e1 02       	mov	#2,r1
    19bc:	1c 11       	mov.l	r1,@(4,r12)
    19be:	51 62       	mov.l	@(8,r6),r1
    19c0:	71 02       	add	#2,r1
    19c2:	16 12       	mov.l	r1,@(8,r6)
    19c4:	51 61       	mov.l	@(4,r6),r1
    19c6:	71 01       	add	#1,r1
    19c8:	16 11       	mov.l	r1,@(4,r6)
    19ca:	31 27       	cmp/gt	r2,r1
    19cc:	8b 02       	bf	19d4 <__vfprintf_r+0x2cc>
    19ce:	a5 5d       	bra	248c <__vfprintf_r+0xd84>
    19d0:	54 f7       	mov.l	@(28,r15),r4
    19d2:	00 09       	nop	
    19d4:	7c 08       	add	#8,r12
    19d6:	91 1d       	mov.w	1a14 <__vfprintf_r+0x30c>,r1	! 80
    19d8:	50 fa       	mov.l	@(40,r15),r0
    19da:	30 10       	cmp/eq	r1,r0
    19dc:	8b 02       	bf	19e4 <__vfprintf_r+0x2dc>
    19de:	a4 7d       	bra	22dc <__vfprintf_r+0xbd4>
    19e0:	5e fe       	mov.l	@(56,r15),r14
    19e2:	00 09       	nop	
    19e4:	e0 48       	mov	#72,r0
    19e6:	0e fe       	mov.l	@(r0,r15),r14
    19e8:	53 fb       	mov.l	@(44,r15),r3
    19ea:	3e 38       	sub	r3,r14
    19ec:	4e 15       	cmp/pl	r14
    19ee:	8b 48       	bf	1a82 <__vfprintf_r+0x37a>
    19f0:	e1 10       	mov	#16,r1
    19f2:	3e 17       	cmp/gt	r1,r14
    19f4:	d8 09       	mov.l	1a1c <__vfprintf_r+0x314>,r8	! 9e88 <_zeroes.4041>
    19f6:	8b 33       	bf	1a60 <__vfprintf_r+0x358>
    19f8:	9d 09       	mov.w	1a0e <__vfprintf_r+0x306>,r13	! a4
    19fa:	62 c3       	mov	r12,r2
    19fc:	1f 9a       	mov.l	r9,@(40,r15)
    19fe:	6c 83       	mov	r8,r12
    1a00:	ea 10       	mov	#16,r10
    1a02:	3d fc       	add	r15,r13
    1a04:	eb 07       	mov	#7,r11
    1a06:	59 f8       	mov.l	@(32,r15),r9
    1a08:	a0 0e       	bra	1a28 <__vfprintf_r+0x320>
    1a0a:	58 f7       	mov.l	@(28,r15),r8
    1a0c:	01 40       	.word 0x0140
    1a0e:	00 a4       	mov.b	r10,@(r0,r0)
    1a10:	00 83       	.word 0x0083
    1a12:	00 84       	mov.b	r8,@(r0,r0)
    1a14:	00 80       	.word 0x0080
    1a16:	00 09       	nop	
    1a18:	00 00       	.word 0x0000
    1a1a:	66 d0       	mov.b	@r13,r6
    1a1c:	00 00       	.word 0x0000
    1a1e:	9e 88       	mov.w	1b32 <__vfprintf_r+0x42a>,r14	! fd64
    1a20:	7e f0       	add	#-16,r14
    1a22:	3e a7       	cmp/gt	r10,r14
    1a24:	72 08       	add	#8,r2
    1a26:	8b 18       	bf	1a5a <__vfprintf_r+0x352>
    1a28:	51 d2       	mov.l	@(8,r13),r1
    1a2a:	22 c2       	mov.l	r12,@r2
    1a2c:	71 10       	add	#16,r1
    1a2e:	12 a1       	mov.l	r10,@(4,r2)
    1a30:	1d 12       	mov.l	r1,@(8,r13)
    1a32:	51 d1       	mov.l	@(4,r13),r1
    1a34:	71 01       	add	#1,r1
    1a36:	1d 11       	mov.l	r1,@(4,r13)
    1a38:	31 b7       	cmp/gt	r11,r1
    1a3a:	8b f1       	bf	1a20 <__vfprintf_r+0x318>
    1a3c:	d7 38       	mov.l	1b20 <__vfprintf_r+0x418>,r7	! 66d0 <___sprint_r>
    1a3e:	64 83       	mov	r8,r4
    1a40:	65 93       	mov	r9,r5
    1a42:	47 0b       	jsr	@r7
    1a44:	66 d3       	mov	r13,r6
    1a46:	20 08       	tst	r0,r0
    1a48:	89 02       	bt	1a50 <__vfprintf_r+0x348>
    1a4a:	a1 36       	bra	1cba <__vfprintf_r+0x5b2>
    1a4c:	e0 44       	mov	#68,r0
    1a4e:	00 09       	nop	
    1a50:	92 60       	mov.w	1b14 <__vfprintf_r+0x40c>,r2	! 140
    1a52:	7e f0       	add	#-16,r14
    1a54:	3e a7       	cmp/gt	r10,r14
    1a56:	32 fc       	add	r15,r2
    1a58:	89 e6       	bt	1a28 <__vfprintf_r+0x320>
    1a5a:	59 fa       	mov.l	@(40,r15),r9
    1a5c:	68 c3       	mov	r12,r8
    1a5e:	6c 23       	mov	r2,r12
    1a60:	96 59       	mov.w	1b16 <__vfprintf_r+0x40e>,r6	! a4
    1a62:	e2 07       	mov	#7,r2
    1a64:	2c 82       	mov.l	r8,@r12
    1a66:	36 fc       	add	r15,r6
    1a68:	51 62       	mov.l	@(8,r6),r1
    1a6a:	1c e1       	mov.l	r14,@(4,r12)
    1a6c:	31 ec       	add	r14,r1
    1a6e:	16 12       	mov.l	r1,@(8,r6)
    1a70:	51 61       	mov.l	@(4,r6),r1
    1a72:	71 01       	add	#1,r1
    1a74:	16 11       	mov.l	r1,@(4,r6)
    1a76:	31 27       	cmp/gt	r2,r1
    1a78:	8b 02       	bf	1a80 <__vfprintf_r+0x378>
    1a7a:	a4 f7       	bra	246c <__vfprintf_r+0xd64>
    1a7c:	54 f7       	mov.l	@(28,r15),r4
    1a7e:	00 09       	nop	
    1a80:	7c 08       	add	#8,r12
    1a82:	91 49       	mov.w	1b18 <__vfprintf_r+0x410>,r1	! 100
    1a84:	50 f5       	mov.l	@(20,r15),r0
    1a86:	20 18       	tst	r1,r0
    1a88:	89 02       	bt	1a90 <__vfprintf_r+0x388>
    1a8a:	a3 45       	bra	2118 <__vfprintf_r+0xa10>
    1a8c:	e1 65       	mov	#101,r1
    1a8e:	00 09       	nop	
    1a90:	50 ff       	mov.l	@(60,r15),r0
    1a92:	96 40       	mov.w	1b16 <__vfprintf_r+0x40e>,r6	! a4
    1a94:	2c 02       	mov.l	r0,@r12
    1a96:	36 fc       	add	r15,r6
    1a98:	50 fb       	mov.l	@(44,r15),r0
    1a9a:	51 62       	mov.l	@(8,r6),r1
    1a9c:	1c 01       	mov.l	r0,@(4,r12)
    1a9e:	31 0c       	add	r0,r1
    1aa0:	16 12       	mov.l	r1,@(8,r6)
    1aa2:	e2 07       	mov	#7,r2
    1aa4:	51 61       	mov.l	@(4,r6),r1
    1aa6:	71 01       	add	#1,r1
    1aa8:	16 11       	mov.l	r1,@(4,r6)
    1aaa:	31 27       	cmp/gt	r2,r1
    1aac:	8b 02       	bf	1ab4 <__vfprintf_r+0x3ac>
    1aae:	a4 c5       	bra	243c <__vfprintf_r+0xd34>
    1ab0:	00 09       	nop	
    1ab2:	00 09       	nop	
    1ab4:	7c 08       	add	#8,r12
    1ab6:	50 f5       	mov.l	@(20,r15),r0
    1ab8:	c8 04       	tst	#4,r0
    1aba:	89 01       	bt	1ac0 <__vfprintf_r+0x3b8>
    1abc:	a3 ae       	bra	221c <__vfprintf_r+0xb14>
    1abe:	5b fe       	mov.l	@(56,r15),r11
    1ac0:	91 2b       	mov.w	1b1a <__vfprintf_r+0x412>,r1	! 540
    1ac2:	90 2b       	mov.w	1b1c <__vfprintf_r+0x414>,r0	! fb6c
    1ac4:	31 fc       	add	r15,r1
    1ac6:	02 1e       	mov.l	@(r0,r1),r2
    1ac8:	51 f9       	mov.l	@(36,r15),r1
    1aca:	54 fe       	mov.l	@(56,r15),r4
    1acc:	31 43       	cmp/ge	r4,r1
    1ace:	89 00       	bt	1ad2 <__vfprintf_r+0x3ca>
    1ad0:	61 43       	mov	r4,r1
    1ad2:	50 fc       	mov.l	@(48,r15),r0
    1ad4:	22 28       	tst	r2,r2
    1ad6:	30 1c       	add	r1,r0
    1ad8:	1f 0c       	mov.l	r0,@(48,r15)
    1ada:	89 01       	bt	1ae0 <__vfprintf_r+0x3d8>
    1adc:	a4 b8       	bra	2450 <__vfprintf_r+0xd48>
    1ade:	54 f7       	mov.l	@(28,r15),r4
    1ae0:	90 1d       	mov.w	1b1e <__vfprintf_r+0x416>,r0	! a8
    1ae2:	e2 00       	mov	#0,r2
    1ae4:	54 f6       	mov.l	@(24,r15),r4
    1ae6:	e1 ff       	mov	#-1,r1
    1ae8:	0f 26       	mov.l	r2,@(r0,r15)
    1aea:	62 40       	mov.b	@r4,r2
    1aec:	60 23       	mov	r2,r0
    1aee:	9c 11       	mov.w	1b14 <__vfprintf_r+0x40c>,r12	! 140
    1af0:	88 25       	cmp/eq	#37,r0
    1af2:	60 1a       	negc	r1,r0
    1af4:	c8 ff       	tst	#-1,r0
    1af6:	3c fc       	add	r15,r12
    1af8:	89 02       	bt	1b00 <__vfprintf_r+0x3f8>
    1afa:	ae 71       	bra	17e0 <__vfprintf_r+0xd8>
    1afc:	22 28       	tst	r2,r2
    1afe:	00 09       	nop	
    1b00:	58 f6       	mov.l	@(24,r15),r8
    1b02:	ae a6       	bra	1852 <__vfprintf_r+0x14a>
    1b04:	61 80       	mov.b	@r8,r1
    1b06:	00 09       	nop	
    1b08:	c7 06       	mova	1b24 <__vfprintf_r+0x41c>,r0
    1b0a:	34 4c       	add	r4,r4
    1b0c:	04 4d       	mov.w	@(r0,r4),r4
    1b0e:	34 0c       	add	r0,r4
    1b10:	44 2b       	jmp	@r4
    1b12:	00 09       	nop	
    1b14:	01 40       	.word 0x0140
    1b16:	00 a4       	mov.b	r10,@(r0,r0)
    1b18:	01 00       	.word 0x0100
    1b1a:	05 40       	.word 0x0540
    1b1c:	fb 6c       	.word 0xfb6c
    1b1e:	00 a8       	.word 0x00a8
    1b20:	00 00       	.word 0x0000
    1b22:	66 d0       	mov.b	@r13,r6
    1b24:	04 a4       	mov.b	r10,@(r0,r4)
    1b26:	fd 64       	.word 0xfd64
    1b28:	fd 64       	.word 0xfd64
    1b2a:	04 bc       	mov.b	@(r0,r11),r4
    1b2c:	fd 64       	.word 0xfd64
    1b2e:	fd 64       	.word 0xfd64
    1b30:	fd 64       	.word 0xfd64
    1b32:	fd 64       	.word 0xfd64
    1b34:	fd 64       	.word 0xfd64
    1b36:	fd 64       	.word 0xfd64
    1b38:	00 b4       	mov.b	r11,@(r0,r0)
    1b3a:	04 6c       	mov.b	@(r0,r6),r4
    1b3c:	fd 64       	.word 0xfd64
    1b3e:	00 d0       	.word 0x00d0
    1b40:	04 28       	.word 0x0428
    1b42:	fd 64       	.word 0xfd64
    1b44:	04 78       	.word 0x0478
    1b46:	04 84       	mov.b	r8,@(r0,r4)
    1b48:	04 84       	mov.b	r8,@(r0,r4)
    1b4a:	04 84       	mov.b	r8,@(r0,r4)
    1b4c:	04 84       	mov.b	r8,@(r0,r4)
    1b4e:	04 84       	mov.b	r8,@(r0,r4)
    1b50:	04 84       	mov.b	r8,@(r0,r4)
    1b52:	04 84       	mov.b	r8,@(r0,r4)
    1b54:	04 84       	mov.b	r8,@(r0,r4)
    1b56:	04 84       	mov.b	r8,@(r0,r4)
    1b58:	fd 64       	.word 0xfd64
    1b5a:	fd 64       	.word 0xfd64
    1b5c:	fd 64       	.word 0xfd64
    1b5e:	fd 64       	.word 0xfd64
    1b60:	fd 64       	.word 0xfd64
    1b62:	fd 64       	.word 0xfd64
    1b64:	fd 64       	.word 0xfd64
    1b66:	fd 64       	.word 0xfd64
    1b68:	fd 64       	.word 0xfd64
    1b6a:	fd 64       	.word 0xfd64
    1b6c:	01 f8       	.word 0x01f8
    1b6e:	02 d8       	.word 0x02d8
    1b70:	fd 64       	.word 0xfd64
    1b72:	02 d8       	.word 0x02d8
    1b74:	fd 64       	.word 0xfd64
    1b76:	fd 64       	.word 0xfd64
    1b78:	fd 64       	.word 0xfd64
    1b7a:	fd 64       	.word 0xfd64
    1b7c:	03 50       	.word 0x0350
    1b7e:	fd 64       	.word 0xfd64
    1b80:	fd 64       	.word 0xfd64
    1b82:	03 c8       	.word 0x03c8
    1b84:	fd 64       	.word 0xfd64
    1b86:	fd 64       	.word 0xfd64
    1b88:	fd 64       	.word 0xfd64
    1b8a:	fd 64       	.word 0xfd64
    1b8c:	fd 64       	.word 0xfd64
    1b8e:	03 f8       	.word 0x03f8
    1b90:	fd 64       	.word 0xfd64
    1b92:	fd 64       	.word 0xfd64
    1b94:	03 6c       	mov.b	@(r0,r6),r3
    1b96:	fd 64       	.word 0xfd64
    1b98:	fd 64       	.word 0xfd64
    1b9a:	fd 64       	.word 0xfd64
    1b9c:	fd 64       	.word 0xfd64
    1b9e:	fd 64       	.word 0xfd64
    1ba0:	fd 64       	.word 0xfd64
    1ba2:	fd 64       	.word 0xfd64
    1ba4:	fd 64       	.word 0xfd64
    1ba6:	fd 64       	.word 0xfd64
    1ba8:	fd 64       	.word 0xfd64
    1baa:	03 ac       	mov.b	@(r0,r10),r3
    1bac:	05 dc       	mov.b	@(r0,r13),r5
    1bae:	02 d8       	.word 0x02d8
    1bb0:	02 d8       	.word 0x02d8
    1bb2:	02 d8       	.word 0x02d8
    1bb4:	05 d0       	.word 0x05d0
    1bb6:	05 dc       	mov.b	@(r0,r13),r5
    1bb8:	fd 64       	.word 0xfd64
    1bba:	fd 64       	.word 0xfd64
    1bbc:	05 98       	.word 0x0598
    1bbe:	fd 64       	.word 0xfd64
    1bc0:	05 ac       	mov.b	@(r0,r10),r5
    1bc2:	05 e0       	.word 0x05e0
    1bc4:	04 d0       	.word 0x04d0
    1bc6:	05 04       	mov.b	r0,@(r0,r5)
    1bc8:	fd 64       	.word 0xfd64
    1bca:	05 10       	.word 0x0510
    1bcc:	fd 64       	.word 0xfd64
    1bce:	05 e4       	mov.b	r14,@(r0,r5)
    1bd0:	fd 64       	.word 0xfd64
    1bd2:	fd 64       	.word 0xfd64
    1bd4:	05 6c       	mov.b	@(r0,r6),r5
    1bd6:	00 09       	nop	
    1bd8:	50 fd       	mov.l	@(52,r15),r0
    1bda:	54 fd       	mov.l	@(52,r15),r4
    1bdc:	60 02       	mov.l	@r0,r0
    1bde:	74 04       	add	#4,r4
    1be0:	1f 0e       	mov.l	r0,@(56,r15)
    1be2:	40 11       	cmp/pz	r0
    1be4:	8b 02       	bf	1bec <__vfprintf_r+0x4e4>
    1be6:	a1 d1       	bra	1f8c <__vfprintf_r+0x884>
    1be8:	69 30       	mov.b	@r3,r9
    1bea:	00 09       	nop	
    1bec:	50 fe       	mov.l	@(56,r15),r0
    1bee:	1f 4d       	mov.l	r4,@(52,r15)
    1bf0:	60 0b       	neg	r0,r0
    1bf2:	1f 0e       	mov.l	r0,@(56,r15)
    1bf4:	50 f5       	mov.l	@(20,r15),r0
    1bf6:	cb 04       	or	#4,r0
    1bf8:	1f 05       	mov.l	r0,@(20,r15)
    1bfa:	ae 3d       	bra	1878 <__vfprintf_r+0x170>
    1bfc:	69 30       	mov.b	@r3,r9
    1bfe:	00 09       	nop	
    1c00:	d0 41       	mov.l	1d08 <__vfprintf_r+0x600>,r0	! 3108 <___swsetup_r>
    1c02:	40 0b       	jsr	@r0
    1c04:	55 f8       	mov.l	@(32,r15),r5
    1c06:	20 08       	tst	r0,r0
    1c08:	8b 5b       	bf	1cc2 <__vfprintf_r+0x5ba>
    1c0a:	e0 44       	mov	#68,r0
    1c0c:	01 fe       	mov.l	@(r0,r15),r1
    1c0e:	67 11       	mov.w	@r1,r7
    1c10:	e1 1a       	mov	#26,r1
    1c12:	21 79       	and	r7,r1
    1c14:	60 13       	mov	r1,r0
    1c16:	88 0a       	cmp/eq	#10,r0
    1c18:	8b 04       	bf	1c24 <__vfprintf_r+0x51c>
    1c1a:	51 f8       	mov.l	@(32,r15),r1
    1c1c:	71 0e       	add	#14,r1
    1c1e:	61 11       	mov.w	@r1,r1
    1c20:	41 11       	cmp/pz	r1
    1c22:	89 01       	bt	1c28 <__vfprintf_r+0x520>
    1c24:	ad b8       	bra	1798 <__vfprintf_r+0x90>
    1c26:	00 09       	nop	
    1c28:	e3 fd       	mov	#-3,r3
    1c2a:	60 73       	mov	r7,r0
    1c2c:	20 39       	and	r3,r0
    1c2e:	99 64       	mov.w	1cfa <__vfprintf_r+0x5f2>,r9	! d8
    1c30:	66 83       	mov	r8,r6
    1c32:	53 f8       	mov.l	@(32,r15),r3
    1c34:	39 fc       	add	r15,r9
    1c36:	62 93       	mov	r9,r2
    1c38:	73 40       	add	#64,r3
    1c3a:	53 39       	mov.l	@(36,r3),r3
    1c3c:	72 0c       	add	#12,r2
    1c3e:	22 01       	mov.w	r0,@r2
    1c40:	72 34       	add	#52,r2
    1c42:	12 39       	mov.l	r3,@(36,r2)
    1c44:	72 ce       	add	#-50,r2
    1c46:	22 11       	mov.w	r1,@r2
    1c48:	65 93       	mov	r9,r5
    1c4a:	52 f8       	mov.l	@(32,r15),r2
    1c4c:	d0 2f       	mov.l	1d0c <__vfprintf_r+0x604>,r0	! 1708 <__vfprintf_r>
    1c4e:	51 27       	mov.l	@(28,r2),r1
    1c50:	54 f7       	mov.l	@(28,r15),r4
    1c52:	19 17       	mov.l	r1,@(28,r9)
    1c54:	51 29       	mov.l	@(36,r2),r1
    1c56:	57 fd       	mov.l	@(52,r15),r7
    1c58:	19 19       	mov.l	r1,@(36,r9)
    1c5a:	91 4f       	mov.w	1cfc <__vfprintf_r+0x5f4>,r1	! 140
    1c5c:	31 fc       	add	r15,r1
    1c5e:	29 12       	mov.l	r1,@r9
    1c60:	19 14       	mov.l	r1,@(16,r9)
    1c62:	91 4c       	mov.w	1cfe <__vfprintf_r+0x5f6>,r1	! 400
    1c64:	19 12       	mov.l	r1,@(8,r9)
    1c66:	19 15       	mov.l	r1,@(20,r9)
    1c68:	e1 00       	mov	#0,r1
    1c6a:	40 0b       	jsr	@r0
    1c6c:	19 16       	mov.l	r1,@(24,r9)
    1c6e:	1f 0c       	mov.l	r0,@(48,r15)
    1c70:	40 11       	cmp/pz	r0
    1c72:	8b 0b       	bf	1c8c <__vfprintf_r+0x584>
    1c74:	d0 26       	mov.l	1d10 <__vfprintf_r+0x608>,r0	! 4940 <__fflush_r>
    1c76:	65 93       	mov	r9,r5
    1c78:	40 0b       	jsr	@r0
    1c7a:	54 f7       	mov.l	@(28,r15),r4
    1c7c:	20 08       	tst	r0,r0
    1c7e:	89 05       	bt	1c8c <__vfprintf_r+0x584>
    1c80:	d0 01       	mov.l	1c88 <__vfprintf_r+0x580>,r0	! 30b8
    1c82:	40 2b       	jmp	@r0
    1c84:	e0 ff       	mov	#-1,r0
    1c86:	00 09       	nop	
    1c88:	00 00       	.word 0x0000
    1c8a:	30 b8       	sub	r11,r0
    1c8c:	91 38       	mov.w	1d00 <__vfprintf_r+0x5f8>,r1	! 540
    1c8e:	90 38       	mov.w	1d02 <__vfprintf_r+0x5fa>,r0	! fba4
    1c90:	31 fc       	add	r15,r1
    1c92:	00 1d       	mov.w	@(r0,r1),r0
    1c94:	c8 40       	tst	#64,r0
    1c96:	89 16       	bt	1cc6 <__vfprintf_r+0x5be>
    1c98:	e0 44       	mov	#68,r0
    1c9a:	02 fe       	mov.l	@(r0,r15),r2
    1c9c:	60 21       	mov.w	@r2,r0
    1c9e:	cb 40       	or	#64,r0
    1ca0:	a0 11       	bra	1cc6 <__vfprintf_r+0x5be>
    1ca2:	22 01       	mov.w	r0,@r2
    1ca4:	96 2e       	mov.w	1d04 <__vfprintf_r+0x5fc>,r6	! a4
    1ca6:	36 fc       	add	r15,r6
    1ca8:	51 62       	mov.l	@(8,r6),r1
    1caa:	21 18       	tst	r1,r1
    1cac:	89 04       	bt	1cb8 <__vfprintf_r+0x5b0>
    1cae:	d0 19       	mov.l	1d14 <__vfprintf_r+0x60c>,r0	! 66d0 <___sprint_r>
    1cb0:	54 f7       	mov.l	@(28,r15),r4
    1cb2:	40 0b       	jsr	@r0
    1cb4:	55 f8       	mov.l	@(32,r15),r5
    1cb6:	00 09       	nop	
    1cb8:	e0 44       	mov	#68,r0
    1cba:	02 fe       	mov.l	@(r0,r15),r2
    1cbc:	60 21       	mov.w	@r2,r0
    1cbe:	c8 40       	tst	#64,r0
    1cc0:	89 01       	bt	1cc6 <__vfprintf_r+0x5be>
    1cc2:	e0 ff       	mov	#-1,r0
    1cc4:	1f 0c       	mov.l	r0,@(48,r15)
    1cc6:	50 fc       	mov.l	@(48,r15),r0
    1cc8:	97 1a       	mov.w	1d00 <__vfprintf_r+0x5f8>,r7	! 540
    1cca:	3f 7c       	add	r7,r15
    1ccc:	4f 26       	lds.l	@r15+,pr
    1cce:	6e f6       	mov.l	@r15+,r14
    1cd0:	6d f6       	mov.l	@r15+,r13
    1cd2:	6c f6       	mov.l	@r15+,r12
    1cd4:	6b f6       	mov.l	@r15+,r11
    1cd6:	6a f6       	mov.l	@r15+,r10
    1cd8:	69 f6       	mov.l	@r15+,r9
    1cda:	68 f6       	mov.l	@r15+,r8
    1cdc:	00 0b       	rts	
    1cde:	00 09       	nop	
    1ce0:	d0 0c       	mov.l	1d14 <__vfprintf_r+0x60c>,r0	! 66d0 <___sprint_r>
    1ce2:	40 0b       	jsr	@r0
    1ce4:	55 f8       	mov.l	@(32,r15),r5
    1ce6:	20 08       	tst	r0,r0
    1ce8:	8b e6       	bf	1cb8 <__vfprintf_r+0x5b0>
    1cea:	9c 07       	mov.w	1cfc <__vfprintf_r+0x5f4>,r12	! 140
    1cec:	ad ad       	bra	184a <__vfprintf_r+0x142>
    1cee:	3c fc       	add	r15,r12
    1cf0:	d1 09       	mov.l	1d18 <__vfprintf_r+0x610>,r1	! 4a90 <___sinit>
    1cf2:	41 0b       	jsr	@r1
    1cf4:	64 03       	mov	r0,r4
    1cf6:	ad 2e       	bra	1756 <__vfprintf_r+0x4e>
    1cf8:	52 f8       	mov.l	@(32,r15),r2
    1cfa:	00 d8       	.word 0x00d8
    1cfc:	01 40       	.word 0x0140
    1cfe:	04 00       	.word 0x0400
    1d00:	05 40       	.word 0x0540
    1d02:	fb a4       	.word 0xfba4
    1d04:	00 a4       	mov.b	r10,@(r0,r0)
    1d06:	00 09       	nop	
    1d08:	00 00       	.word 0x0000
    1d0a:	31 08       	sub	r0,r1
    1d0c:	00 00       	.word 0x0000
    1d0e:	17 08       	mov.l	r0,@(32,r7)
    1d10:	00 00       	.word 0x0000
    1d12:	49 40       	.word 0x4940
    1d14:	00 00       	.word 0x0000
    1d16:	66 d0       	mov.b	@r13,r6
    1d18:	00 00       	.word 0x0000
    1d1a:	4a 90       	.word 0x4a90
    1d1c:	50 f5       	mov.l	@(20,r15),r0
    1d1e:	1f 36       	mov.l	r3,@(24,r15)
    1d20:	cb 10       	or	#16,r0
    1d22:	1f 05       	mov.l	r0,@(20,r15)
    1d24:	50 f5       	mov.l	@(20,r15),r0
    1d26:	c9 20       	and	#32,r0
    1d28:	20 08       	tst	r0,r0
    1d2a:	8b 01       	bf	1d30 <__vfprintf_r+0x628>
    1d2c:	a4 d6       	bra	26dc <__vfprintf_r+0xfd4>
    1d2e:	51 f5       	mov.l	@(20,r15),r1
    1d30:	52 fd       	mov.l	@(52,r15),r2
    1d32:	61 22       	mov.l	@r2,r1
    1d34:	5d 21       	mov.l	@(4,r2),r13
    1d36:	72 08       	add	#8,r2
    1d38:	1f 2d       	mov.l	r2,@(52,r15)
    1d3a:	6b 13       	mov	r1,r11
    1d3c:	41 11       	cmp/pz	r1
    1d3e:	89 01       	bt	1d44 <__vfprintf_r+0x63c>
    1d40:	a5 c6       	bra	28d0 <__vfprintf_r+0x11c8>
    1d42:	00 08       	clrt	
    1d44:	61 b3       	mov	r11,r1
    1d46:	21 db       	or	r13,r1
    1d48:	21 18       	tst	r1,r1
    1d4a:	e1 ff       	mov	#-1,r1
    1d4c:	61 1a       	negc	r1,r1
    1d4e:	63 1c       	extu.b	r1,r3
    1d50:	e2 01       	mov	#1,r2
    1d52:	4e 11       	cmp/pz	r14
    1d54:	8b 03       	bf	1d5e <__vfprintf_r+0x656>
    1d56:	50 f5       	mov.l	@(20,r15),r0
    1d58:	91 91       	mov.w	1e7e <__vfprintf_r+0x776>,r1	! ff7f
    1d5a:	20 19       	and	r1,r0
    1d5c:	1f 05       	mov.l	r0,@(20,r15)
    1d5e:	2e e8       	tst	r14,r14
    1d60:	e0 ff       	mov	#-1,r0
    1d62:	60 0a       	negc	r0,r0
    1d64:	c8 ff       	tst	#-1,r0
    1d66:	8b 03       	bf	1d70 <__vfprintf_r+0x668>
    1d68:	23 38       	tst	r3,r3
    1d6a:	8b 01       	bf	1d70 <__vfprintf_r+0x668>
    1d6c:	a2 46       	bra	21fc <__vfprintf_r+0xaf4>
    1d6e:	22 28       	tst	r2,r2
    1d70:	60 23       	mov	r2,r0
    1d72:	88 01       	cmp/eq	#1,r0
    1d74:	8b 02       	bf	1d7c <__vfprintf_r+0x674>
    1d76:	a4 25       	bra	25c4 <__vfprintf_r+0xebc>
    1d78:	2b b8       	tst	r11,r11
    1d7a:	00 09       	nop	
    1d7c:	88 02       	cmp/eq	#2,r0
    1d7e:	e0 4c       	mov	#76,r0
    1d80:	8b 02       	bf	1d88 <__vfprintf_r+0x680>
    1d82:	a3 f7       	bra	2574 <__vfprintf_r+0xe6c>
    1d84:	02 fe       	mov.l	@(r0,r15),r2
    1d86:	00 09       	nop	
    1d88:	01 fe       	mov.l	@(r0,r15),r1
    1d8a:	60 d3       	mov	r13,r0
    1d8c:	63 13       	mov	r1,r3
    1d8e:	67 b3       	mov	r11,r7
    1d90:	47 28       	shll16	r7
    1d92:	47 01       	shlr	r7
    1d94:	61 03       	mov	r0,r1
    1d96:	47 09       	shlr2	r7
    1d98:	41 09       	shlr2	r1
    1d9a:	47 28       	shll16	r7
    1d9c:	41 01       	shlr	r1
    1d9e:	21 7b       	or	r7,r1
    1da0:	e2 07       	mov	#7,r2
    1da2:	67 b3       	mov	r11,r7
    1da4:	22 09       	and	r0,r2
    1da6:	47 09       	shlr2	r7
    1da8:	47 01       	shlr	r7
    1daa:	72 30       	add	#48,r2
    1dac:	23 24       	mov.b	r2,@-r3
    1dae:	27 78       	tst	r7,r7
    1db0:	6b 73       	mov	r7,r11
    1db2:	60 13       	mov	r1,r0
    1db4:	8b eb       	bf	1d8e <__vfprintf_r+0x686>
    1db6:	21 18       	tst	r1,r1
    1db8:	8b e9       	bf	1d8e <__vfprintf_r+0x686>
    1dba:	50 f5       	mov.l	@(20,r15),r0
    1dbc:	61 33       	mov	r3,r1
    1dbe:	1f 3f       	mov.l	r3,@(60,r15)
    1dc0:	c8 01       	tst	#1,r0
    1dc2:	89 01       	bt	1dc8 <__vfprintf_r+0x6c0>
    1dc4:	a5 74       	bra	28b0 <__vfprintf_r+0x11a8>
    1dc6:	60 23       	mov	r2,r0
    1dc8:	e0 4c       	mov	#76,r0
    1dca:	00 fe       	mov.l	@(r0,r15),r0
    1dcc:	30 38       	sub	r3,r0
    1dce:	1f 0b       	mov.l	r0,@(44,r15)
    1dd0:	50 fb       	mov.l	@(44,r15),r0
    1dd2:	1f 09       	mov.l	r0,@(36,r15)
    1dd4:	30 e3       	cmp/ge	r14,r0
    1dd6:	89 00       	bt	1dda <__vfprintf_r+0x6d2>
    1dd8:	1f e9       	mov.l	r14,@(36,r15)
    1dda:	92 51       	mov.w	1e80 <__vfprintf_r+0x778>,r2	! 540
    1ddc:	e3 40       	mov	#64,r3
    1dde:	90 50       	mov.w	1e82 <__vfprintf_r+0x77a>,r0	! fb43
    1de0:	33 fc       	add	r15,r3
    1de2:	32 fc       	add	r15,r2
    1de4:	e4 00       	mov	#0,r4
    1de6:	01 2c       	mov.b	@(r0,r2),r1
    1de8:	13 e2       	mov.l	r14,@(8,r3)
    1dea:	13 47       	mov.l	r4,@(28,r3)
    1dec:	21 18       	tst	r1,r1
    1dee:	89 02       	bt	1df6 <__vfprintf_r+0x6ee>
    1df0:	51 f9       	mov.l	@(36,r15),r1
    1df2:	71 01       	add	#1,r1
    1df4:	1f 19       	mov.l	r1,@(36,r15)
    1df6:	ad 61       	bra	18bc <__vfprintf_r+0x1b4>
    1df8:	5b f5       	mov.l	@(20,r15),r11
    1dfa:	00 09       	nop	
    1dfc:	50 f5       	mov.l	@(20,r15),r0
    1dfe:	1f 36       	mov.l	r3,@(24,r15)
    1e00:	c8 08       	tst	#8,r0
    1e02:	8b 01       	bf	1e08 <__vfprintf_r+0x700>
    1e04:	a6 3a       	bra	2a7c <__vfprintf_r+0x1374>
    1e06:	55 fd       	mov.l	@(52,r15),r5
    1e08:	51 fd       	mov.l	@(52,r15),r1
    1e0a:	e4 40       	mov	#64,r4
    1e0c:	34 fc       	add	r15,r4
    1e0e:	6b 12       	mov.l	@r1,r11
    1e10:	58 11       	mov.l	@(4,r1),r8
    1e12:	71 08       	add	#8,r1
    1e14:	14 ba       	mov.l	r11,@(40,r4)
    1e16:	14 8b       	mov.l	r8,@(44,r4)
    1e18:	1f 1d       	mov.l	r1,@(52,r15)
    1e1a:	da 1a       	mov.l	1e84 <__vfprintf_r+0x77c>,r10	! 64f4 <___fpclassifyd>
    1e1c:	64 b3       	mov	r11,r4
    1e1e:	4a 0b       	jsr	@r10
    1e20:	65 83       	mov	r8,r5
    1e22:	88 01       	cmp/eq	#1,r0
    1e24:	64 b3       	mov	r11,r4
    1e26:	65 83       	mov	r8,r5
    1e28:	89 02       	bt	1e30 <__vfprintf_r+0x728>
    1e2a:	a5 5f       	bra	28ec <__vfprintf_r+0x11e4>
    1e2c:	00 09       	nop	
    1e2e:	00 09       	nop	
    1e30:	d0 15       	mov.l	1e88 <__vfprintf_r+0x780>,r0	! 9658 <___ltdf2>
    1e32:	e6 00       	mov	#0,r6
    1e34:	40 0b       	jsr	@r0
    1e36:	e7 00       	mov	#0,r7
    1e38:	40 11       	cmp/pz	r0
    1e3a:	89 05       	bt	1e48 <__vfprintf_r+0x740>
    1e3c:	d3 01       	mov.l	1e44 <__vfprintf_r+0x73c>,r3	! 2e20
    1e3e:	43 2b       	jmp	@r3
    1e40:	e1 2d       	mov	#45,r1
    1e42:	00 09       	nop	
    1e44:	00 00       	.word 0x0000
    1e46:	2e 20       	mov.b	r2,@r14
    1e48:	92 1a       	mov.w	1e80 <__vfprintf_r+0x778>,r2	! 540
    1e4a:	90 1a       	mov.w	1e82 <__vfprintf_r+0x77a>,r0	! fb43
    1e4c:	32 fc       	add	r15,r2
    1e4e:	01 2c       	mov.b	@(r0,r2),r1
    1e50:	e2 47       	mov	#71,r2
    1e52:	39 27       	cmp/gt	r2,r9
    1e54:	89 02       	bt	1e5c <__vfprintf_r+0x754>
    1e56:	a6 c5       	bra	2be4 <__vfprintf_r+0x14dc>
    1e58:	00 09       	nop	
    1e5a:	00 09       	nop	
    1e5c:	d0 0b       	mov.l	1e8c <__vfprintf_r+0x784>,r0	! 9e38
    1e5e:	1f 0f       	mov.l	r0,@(60,r15)
    1e60:	92 0d       	mov.w	1e7e <__vfprintf_r+0x776>,r2	! ff7f
    1e62:	50 f5       	mov.l	@(20,r15),r0
    1e64:	20 29       	and	r2,r0
    1e66:	1f 05       	mov.l	r0,@(20,r15)
    1e68:	e2 03       	mov	#3,r2
    1e6a:	e0 03       	mov	#3,r0
    1e6c:	1f 29       	mov.l	r2,@(36,r15)
    1e6e:	a6 b3       	bra	2bd8 <__vfprintf_r+0x14d0>
    1e70:	1f 0b       	mov.l	r0,@(44,r15)
    1e72:	00 09       	nop	
    1e74:	50 f5       	mov.l	@(20,r15),r0
    1e76:	cb 08       	or	#8,r0
    1e78:	1f 05       	mov.l	r0,@(20,r15)
    1e7a:	ac fd       	bra	1878 <__vfprintf_r+0x170>
    1e7c:	69 30       	mov.b	@r3,r9
    1e7e:	ff 7f       	.word 0xff7f
    1e80:	05 40       	.word 0x0540
    1e82:	fb 43       	.word 0xfb43
    1e84:	00 00       	.word 0x0000
    1e86:	64 f4       	mov.b	@r15+,r4
    1e88:	00 00       	.word 0x0000
    1e8a:	96 58       	mov.w	1f3e <__vfprintf_r+0x836>,r6	! 21db
    1e8c:	00 00       	.word 0x0000
    1e8e:	9e 38       	mov.w	1f02 <__vfprintf_r+0x7fa>,r14	! 52fd
    1e90:	d1 57       	mov.l	1ff0 <__vfprintf_r+0x8e8>,r1	! 9e44
    1e92:	e0 50       	mov	#80,r0
    1e94:	1f 36       	mov.l	r3,@(24,r15)
    1e96:	0f 16       	mov.l	r1,@(r0,r15)
    1e98:	50 f5       	mov.l	@(20,r15),r0
    1e9a:	c8 20       	tst	#32,r0
    1e9c:	8b 02       	bf	1ea4 <__vfprintf_r+0x79c>
    1e9e:	a1 03       	bra	20a8 <__vfprintf_r+0x9a0>
    1ea0:	c8 10       	tst	#16,r0
    1ea2:	00 09       	nop	
    1ea4:	51 fd       	mov.l	@(52,r15),r1
    1ea6:	6b 12       	mov.l	@r1,r11
    1ea8:	5d 11       	mov.l	@(4,r1),r13
    1eaa:	71 08       	add	#8,r1
    1eac:	1f 1d       	mov.l	r1,@(52,r15)
    1eae:	50 f5       	mov.l	@(20,r15),r0
    1eb0:	c8 01       	tst	#1,r0
    1eb2:	89 01       	bt	1eb8 <__vfprintf_r+0x7b0>
    1eb4:	a3 f0       	bra	2698 <__vfprintf_r+0xf90>
    1eb6:	2b b8       	tst	r11,r11
    1eb8:	61 b3       	mov	r11,r1
    1eba:	21 db       	or	r13,r1
    1ebc:	21 18       	tst	r1,r1
    1ebe:	e1 ff       	mov	#-1,r1
    1ec0:	61 1a       	negc	r1,r1
    1ec2:	63 1c       	extu.b	r1,r3
    1ec4:	e2 02       	mov	#2,r2
    1ec6:	00 09       	nop	
    1ec8:	90 8f       	mov.w	1fea <__vfprintf_r+0x8e2>,r0	! 83
    1eca:	e7 00       	mov	#0,r7
    1ecc:	af 41       	bra	1d52 <__vfprintf_r+0x64a>
    1ece:	0f 74       	mov.b	r7,@(r0,r15)
    1ed0:	52 fd       	mov.l	@(52,r15),r2
    1ed2:	1f 36       	mov.l	r3,@(24,r15)
    1ed4:	93 8a       	mov.w	1fec <__vfprintf_r+0x8e4>,r3	! 540
    1ed6:	61 22       	mov.l	@r2,r1
    1ed8:	33 fc       	add	r15,r3
    1eda:	90 88       	mov.w	1fee <__vfprintf_r+0x8e6>,r0	! fb70
    1edc:	e2 00       	mov	#0,r2
    1ede:	54 fd       	mov.l	@(52,r15),r4
    1ee0:	03 14       	mov.b	r1,@(r0,r3)
    1ee2:	74 04       	add	#4,r4
    1ee4:	90 81       	mov.w	1fea <__vfprintf_r+0x8e2>,r0	! 83
    1ee6:	1f 4d       	mov.l	r4,@(52,r15)
    1ee8:	ac db       	bra	18a2 <__vfprintf_r+0x19a>
    1eea:	0f 24       	mov.b	r2,@(r0,r15)
    1eec:	50 f5       	mov.l	@(20,r15),r0
    1eee:	1f 36       	mov.l	r3,@(24,r15)
    1ef0:	cb 10       	or	#16,r0
    1ef2:	1f 05       	mov.l	r0,@(20,r15)
    1ef4:	50 f5       	mov.l	@(20,r15),r0
    1ef6:	c8 20       	tst	#32,r0
    1ef8:	8b 02       	bf	1f00 <__vfprintf_r+0x7f8>
    1efa:	a3 fd       	bra	26f8 <__vfprintf_r+0xff0>
    1efc:	c8 10       	tst	#16,r0
    1efe:	00 09       	nop	
    1f00:	51 fd       	mov.l	@(52,r15),r1
    1f02:	52 fd       	mov.l	@(52,r15),r2
    1f04:	6b 12       	mov.l	@r1,r11
    1f06:	72 08       	add	#8,r2
    1f08:	5d 11       	mov.l	@(4,r1),r13
    1f0a:	61 b3       	mov	r11,r1
    1f0c:	1f 2d       	mov.l	r2,@(52,r15)
    1f0e:	21 db       	or	r13,r1
    1f10:	21 18       	tst	r1,r1
    1f12:	e1 ff       	mov	#-1,r1
    1f14:	61 1a       	negc	r1,r1
    1f16:	63 1c       	extu.b	r1,r3
    1f18:	af d6       	bra	1ec8 <__vfprintf_r+0x7c0>
    1f1a:	e2 00       	mov	#0,r2
    1f1c:	50 f5       	mov.l	@(20,r15),r0
    1f1e:	1f 36       	mov.l	r3,@(24,r15)
    1f20:	cb 10       	or	#16,r0
    1f22:	1f 05       	mov.l	r0,@(20,r15)
    1f24:	50 f5       	mov.l	@(20,r15),r0
    1f26:	c8 20       	tst	#32,r0
    1f28:	8b 02       	bf	1f30 <__vfprintf_r+0x828>
    1f2a:	a3 c7       	bra	26bc <__vfprintf_r+0xfb4>
    1f2c:	c8 10       	tst	#16,r0
    1f2e:	00 09       	nop	
    1f30:	51 fd       	mov.l	@(52,r15),r1
    1f32:	52 fd       	mov.l	@(52,r15),r2
    1f34:	6b 12       	mov.l	@r1,r11
    1f36:	72 08       	add	#8,r2
    1f38:	5d 11       	mov.l	@(4,r1),r13
    1f3a:	61 b3       	mov	r11,r1
    1f3c:	1f 2d       	mov.l	r2,@(52,r15)
    1f3e:	21 db       	or	r13,r1
    1f40:	21 18       	tst	r1,r1
    1f42:	e1 ff       	mov	#-1,r1
    1f44:	61 1a       	negc	r1,r1
    1f46:	63 1c       	extu.b	r1,r3
    1f48:	af be       	bra	1ec8 <__vfprintf_r+0x7c0>
    1f4a:	e2 01       	mov	#1,r2
    1f4c:	69 34       	mov.b	@r3+,r9
    1f4e:	60 93       	mov	r9,r0
    1f50:	88 2a       	cmp/eq	#42,r0
    1f52:	8b 05       	bf	1f60 <__vfprintf_r+0x858>
    1f54:	d0 01       	mov.l	1f5c <__vfprintf_r+0x854>,r0	! 3094
    1f56:	40 2b       	jmp	@r0
    1f58:	50 fd       	mov.l	@(52,r15),r0
    1f5a:	00 09       	nop	
    1f5c:	00 00       	.word 0x0000
    1f5e:	30 94       	div1	r9,r0
    1f60:	64 93       	mov	r9,r4
    1f62:	74 d0       	add	#-48,r4
    1f64:	34 26       	cmp/hi	r2,r4
    1f66:	60 33       	mov	r3,r0
    1f68:	ee 00       	mov	#0,r14
    1f6a:	89 0d       	bt	1f88 <__vfprintf_r+0x880>
    1f6c:	63 e3       	mov	r14,r3
    1f6e:	43 08       	shll2	r3
    1f70:	3e 3c       	add	r3,r14
    1f72:	69 04       	mov.b	@r0+,r9
    1f74:	3e ec       	add	r14,r14
    1f76:	3e 4c       	add	r4,r14
    1f78:	64 93       	mov	r9,r4
    1f7a:	74 d0       	add	#-48,r4
    1f7c:	34 26       	cmp/hi	r2,r4
    1f7e:	63 03       	mov	r0,r3
    1f80:	8b f4       	bf	1f6c <__vfprintf_r+0x864>
    1f82:	4e 11       	cmp/pz	r14
    1f84:	89 00       	bt	1f88 <__vfprintf_r+0x880>
    1f86:	ee ff       	mov	#-1,r14
    1f88:	ac 78       	bra	187c <__vfprintf_r+0x174>
    1f8a:	64 93       	mov	r9,r4
    1f8c:	ac 74       	bra	1878 <__vfprintf_r+0x170>
    1f8e:	1f 4d       	mov.l	r4,@(52,r15)
    1f90:	94 2c       	mov.w	1fec <__vfprintf_r+0x8e4>,r4	! 540
    1f92:	60 73       	mov	r7,r0
    1f94:	34 fc       	add	r15,r4
    1f96:	04 64       	mov.b	r6,@(r0,r4)
    1f98:	ac 6e       	bra	1878 <__vfprintf_r+0x170>
    1f9a:	69 30       	mov.b	@r3,r9
    1f9c:	50 f5       	mov.l	@(20,r15),r0
    1f9e:	cb 80       	or	#-128,r0
    1fa0:	1f 05       	mov.l	r0,@(20,r15)
    1fa2:	ac 69       	bra	1878 <__vfprintf_r+0x170>
    1fa4:	69 30       	mov.b	@r3,r9
    1fa6:	00 09       	nop	
    1fa8:	60 33       	mov	r3,r0
    1faa:	e4 00       	mov	#0,r4
    1fac:	63 43       	mov	r4,r3
    1fae:	43 08       	shll2	r3
    1fb0:	34 3c       	add	r3,r4
    1fb2:	79 d0       	add	#-48,r9
    1fb4:	34 4c       	add	r4,r4
    1fb6:	34 9c       	add	r9,r4
    1fb8:	69 04       	mov.b	@r0+,r9
    1fba:	68 93       	mov	r9,r8
    1fbc:	78 d0       	add	#-48,r8
    1fbe:	38 26       	cmp/hi	r2,r8
    1fc0:	63 03       	mov	r0,r3
    1fc2:	8b f3       	bf	1fac <__vfprintf_r+0x8a4>
    1fc4:	ac 59       	bra	187a <__vfprintf_r+0x172>
    1fc6:	1f 4e       	mov.l	r4,@(56,r15)
    1fc8:	94 0f       	mov.w	1fea <__vfprintf_r+0x8e2>,r4	! 83
    1fca:	34 fc       	add	r15,r4
    1fcc:	60 40       	mov.b	@r4,r0
    1fce:	20 08       	tst	r0,r0
    1fd0:	89 02       	bt	1fd8 <__vfprintf_r+0x8d0>
    1fd2:	a5 1f       	bra	2a14 <__vfprintf_r+0x130c>
    1fd4:	69 30       	mov.b	@r3,r9
    1fd6:	00 09       	nop	
    1fd8:	24 50       	mov.b	r5,@r4
    1fda:	ac 4d       	bra	1878 <__vfprintf_r+0x170>
    1fdc:	69 30       	mov.b	@r3,r9
    1fde:	00 09       	nop	
    1fe0:	50 f5       	mov.l	@(20,r15),r0
    1fe2:	cb 01       	or	#1,r0
    1fe4:	1f 05       	mov.l	r0,@(20,r15)
    1fe6:	ac 47       	bra	1878 <__vfprintf_r+0x170>
    1fe8:	69 30       	mov.b	@r3,r9
    1fea:	00 83       	.word 0x0083
    1fec:	05 40       	.word 0x0540
    1fee:	fb 70       	.word 0xfb70
    1ff0:	00 00       	.word 0x0000
    1ff2:	9e 44       	mov.w	207e <__vfprintf_r+0x976>,r14	! e700
    1ff4:	55 fd       	mov.l	@(52,r15),r5
    1ff6:	e2 30       	mov	#48,r2
    1ff8:	91 88       	mov.w	210c <__vfprintf_r+0xa04>,r1	! 84
    1ffa:	eb 00       	mov	#0,r11
    1ffc:	6d 52       	mov.l	@r5,r13
    1ffe:	31 fc       	add	r15,r1
    2000:	50 f5       	mov.l	@(20,r15),r0
    2002:	2d d8       	tst	r13,r13
    2004:	21 20       	mov.b	r2,@r1
    2006:	71 01       	add	#1,r1
    2008:	e2 78       	mov	#120,r2
    200a:	21 20       	mov.b	r2,@r1
    200c:	cb 02       	or	#2,r0
    200e:	d2 40       	mov.l	2110 <__vfprintf_r+0xa08>,r2	! 9e58
    2010:	e1 ff       	mov	#-1,r1
    2012:	1f 05       	mov.l	r0,@(20,r15)
    2014:	61 1a       	negc	r1,r1
    2016:	75 04       	add	#4,r5
    2018:	e0 50       	mov	#80,r0
    201a:	1f 36       	mov.l	r3,@(24,r15)
    201c:	e9 78       	mov	#120,r9
    201e:	0f 26       	mov.l	r2,@(r0,r15)
    2020:	63 1c       	extu.b	r1,r3
    2022:	1f 5d       	mov.l	r5,@(52,r15)
    2024:	af 50       	bra	1ec8 <__vfprintf_r+0x7c0>
    2026:	e2 02       	mov	#2,r2
    2028:	50 f5       	mov.l	@(20,r15),r0
    202a:	cb 20       	or	#32,r0
    202c:	1f 05       	mov.l	r0,@(20,r15)
    202e:	ac 23       	bra	1878 <__vfprintf_r+0x170>
    2030:	69 30       	mov.b	@r3,r9
    2032:	00 09       	nop	
    2034:	98 6b       	mov.w	210e <__vfprintf_r+0xa06>,r8	! 83
    2036:	e1 00       	mov	#0,r1
    2038:	1f 36       	mov.l	r3,@(24,r15)
    203a:	38 fc       	add	r15,r8
    203c:	53 fd       	mov.l	@(52,r15),r3
    203e:	28 10       	mov.b	r1,@r8
    2040:	63 32       	mov.l	@r3,r3
    2042:	5a fd       	mov.l	@(52,r15),r10
    2044:	23 38       	tst	r3,r3
    2046:	1f 3f       	mov.l	r3,@(60,r15)
    2048:	7a 04       	add	#4,r10
    204a:	8b 01       	bf	2050 <__vfprintf_r+0x948>
    204c:	a6 ac       	bra	2da8 <__vfprintf_r+0x16a0>
    204e:	e1 06       	mov	#6,r1
    2050:	4e 11       	cmp/pz	r14
    2052:	54 ff       	mov.l	@(60,r15),r4
    2054:	89 02       	bt	205c <__vfprintf_r+0x954>
    2056:	a6 4d       	bra	2cf4 <__vfprintf_r+0x15ec>
    2058:	00 09       	nop	
    205a:	00 09       	nop	
    205c:	d0 2d       	mov.l	2114 <__vfprintf_r+0xa0c>,r0	! 574c <_memchr>
    205e:	e5 00       	mov	#0,r5
    2060:	40 0b       	jsr	@r0
    2062:	66 e3       	mov	r14,r6
    2064:	20 08       	tst	r0,r0
    2066:	8b 01       	bf	206c <__vfprintf_r+0x964>
    2068:	a7 5e       	bra	2f28 <__vfprintf_r+0x1820>
    206a:	1f e9       	mov.l	r14,@(36,r15)
    206c:	54 ff       	mov.l	@(60,r15),r4
    206e:	30 48       	sub	r4,r0
    2070:	1f 0b       	mov.l	r0,@(44,r15)
    2072:	30 e7       	cmp/gt	r14,r0
    2074:	89 02       	bt	207c <__vfprintf_r+0x974>
    2076:	a5 a9       	bra	2bcc <__vfprintf_r+0x14c4>
    2078:	50 fb       	mov.l	@(44,r15),r0
    207a:	00 09       	nop	
    207c:	e5 40       	mov	#64,r5
    207e:	e7 00       	mov	#0,r7
    2080:	35 fc       	add	r15,r5
    2082:	1f e9       	mov.l	r14,@(36,r15)
    2084:	61 80       	mov.b	@r8,r1
    2086:	1f eb       	mov.l	r14,@(44,r15)
    2088:	1f ad       	mov.l	r10,@(52,r15)
    208a:	15 72       	mov.l	r7,@(8,r5)
    208c:	ae ae       	bra	1dec <__vfprintf_r+0x6e4>
    208e:	15 77       	mov.l	r7,@(28,r5)
    2090:	d7 1f       	mov.l	2110 <__vfprintf_r+0xa08>,r7	! 9e58
    2092:	e0 50       	mov	#80,r0
    2094:	1f 36       	mov.l	r3,@(24,r15)
    2096:	0f 76       	mov.l	r7,@(r0,r15)
    2098:	50 f5       	mov.l	@(20,r15),r0
    209a:	c8 20       	tst	#32,r0
    209c:	89 02       	bt	20a4 <__vfprintf_r+0x99c>
    209e:	af 02       	bra	1ea6 <__vfprintf_r+0x79e>
    20a0:	51 fd       	mov.l	@(52,r15),r1
    20a2:	00 09       	nop	
    20a4:	50 f5       	mov.l	@(20,r15),r0
    20a6:	c8 10       	tst	#16,r0
    20a8:	8b 02       	bf	20b0 <__vfprintf_r+0x9a8>
    20aa:	a5 0d       	bra	2ac8 <__vfprintf_r+0x13c0>
    20ac:	50 f5       	mov.l	@(20,r15),r0
    20ae:	00 09       	nop	
    20b0:	51 fd       	mov.l	@(52,r15),r1
    20b2:	eb 00       	mov	#0,r11
    20b4:	6d 16       	mov.l	@r1+,r13
    20b6:	ae fa       	bra	1eae <__vfprintf_r+0x7a6>
    20b8:	1f 1d       	mov.l	r1,@(52,r15)
    20ba:	00 09       	nop	
    20bc:	69 30       	mov.b	@r3,r9
    20be:	60 93       	mov	r9,r0
    20c0:	88 6c       	cmp/eq	#108,r0
    20c2:	8b 01       	bf	20c8 <__vfprintf_r+0x9c0>
    20c4:	a5 e4       	bra	2c90 <__vfprintf_r+0x1588>
    20c6:	50 f5       	mov.l	@(20,r15),r0
    20c8:	50 f5       	mov.l	@(20,r15),r0
    20ca:	cb 10       	or	#16,r0
    20cc:	ab d4       	bra	1878 <__vfprintf_r+0x170>
    20ce:	1f 05       	mov.l	r0,@(20,r15)
    20d0:	50 f5       	mov.l	@(20,r15),r0
    20d2:	1f 36       	mov.l	r3,@(24,r15)
    20d4:	c8 20       	tst	#32,r0
    20d6:	8b 01       	bf	20dc <__vfprintf_r+0x9d4>
    20d8:	a4 e2       	bra	2aa0 <__vfprintf_r+0x1398>
    20da:	50 f5       	mov.l	@(20,r15),r0
    20dc:	52 fd       	mov.l	@(52,r15),r2
    20de:	50 fc       	mov.l	@(48,r15),r0
    20e0:	61 22       	mov.l	@r2,r1
    20e2:	62 03       	mov	r0,r2
    20e4:	42 00       	shll	r2
    20e6:	32 2a       	subc	r2,r2
    20e8:	11 01       	mov.l	r0,@(4,r1)
    20ea:	21 22       	mov.l	r2,@r1
    20ec:	51 fd       	mov.l	@(52,r15),r1
    20ee:	71 04       	add	#4,r1
    20f0:	ab 6d       	bra	17ce <__vfprintf_r+0xc6>
    20f2:	1f 1d       	mov.l	r1,@(52,r15)
    20f4:	50 f5       	mov.l	@(20,r15),r0
    20f6:	cb 40       	or	#64,r0
    20f8:	1f 05       	mov.l	r0,@(20,r15)
    20fa:	ab bd       	bra	1878 <__vfprintf_r+0x170>
    20fc:	69 30       	mov.b	@r3,r9
    20fe:	00 09       	nop	
    2100:	ae 10       	bra	1d24 <__vfprintf_r+0x61c>
    2102:	1f 36       	mov.l	r3,@(24,r15)
    2104:	ae f6       	bra	1ef4 <__vfprintf_r+0x7ec>
    2106:	1f 36       	mov.l	r3,@(24,r15)
    2108:	af 0c       	bra	1f24 <__vfprintf_r+0x81c>
    210a:	1f 36       	mov.l	r3,@(24,r15)
    210c:	00 84       	mov.b	r8,@(r0,r0)
    210e:	00 83       	.word 0x0083
    2110:	00 00       	.word 0x0000
    2112:	9e 58       	mov.w	21c6 <__vfprintf_r+0xabe>,r14	! 5cf8
    2114:	00 00       	.word 0x0000
    2116:	57 4c       	mov.l	@(48,r4),r7
    2118:	39 17       	cmp/gt	r1,r9
    211a:	89 01       	bt	2120 <__vfprintf_r+0xa18>
    211c:	a1 2a       	bra	2374 <__vfprintf_r+0xc6c>
    211e:	e0 58       	mov	#88,r0
    2120:	d0 4b       	mov.l	2250 <__vfprintf_r+0xb48>,r0	! 9508 <___eqdf2>
    2122:	e1 40       	mov	#64,r1
    2124:	31 fc       	add	r15,r1
    2126:	54 1a       	mov.l	@(40,r1),r4
    2128:	e6 00       	mov	#0,r6
    212a:	55 1b       	mov.l	@(44,r1),r5
    212c:	40 0b       	jsr	@r0
    212e:	e7 00       	mov	#0,r7
    2130:	20 08       	tst	r0,r0
    2132:	89 01       	bt	2138 <__vfprintf_r+0xa30>
    2134:	a1 c2       	bra	24bc <__vfprintf_r+0xdb4>
    2136:	00 09       	nop	
    2138:	d1 46       	mov.l	2254 <__vfprintf_r+0xb4c>,r1	! 9e74
    213a:	e2 07       	mov	#7,r2
    213c:	96 82       	mov.w	2244 <__vfprintf_r+0xb3c>,r6	! a4
    213e:	2c 12       	mov.l	r1,@r12
    2140:	36 fc       	add	r15,r6
    2142:	e1 01       	mov	#1,r1
    2144:	1c 11       	mov.l	r1,@(4,r12)
    2146:	51 62       	mov.l	@(8,r6),r1
    2148:	71 01       	add	#1,r1
    214a:	16 12       	mov.l	r1,@(8,r6)
    214c:	51 61       	mov.l	@(4,r6),r1
    214e:	71 01       	add	#1,r1
    2150:	16 11       	mov.l	r1,@(4,r6)
    2152:	31 27       	cmp/gt	r2,r1
    2154:	8b 02       	bf	215c <__vfprintf_r+0xa54>
    2156:	a4 c9       	bra	2aec <__vfprintf_r+0x13e4>
    2158:	54 f7       	mov.l	@(28,r15),r4
    215a:	00 09       	nop	
    215c:	7c 08       	add	#8,r12
    215e:	92 72       	mov.w	2246 <__vfprintf_r+0xb3e>,r2	! 540
    2160:	90 72       	mov.w	2248 <__vfprintf_r+0xb40>,r0	! fb48
    2162:	32 fc       	add	r15,r2
    2164:	01 2e       	mov.l	@(r0,r2),r1
    2166:	e0 58       	mov	#88,r0
    2168:	03 fe       	mov.l	@(r0,r15),r3
    216a:	31 33       	cmp/ge	r3,r1
    216c:	8b 02       	bf	2174 <__vfprintf_r+0xa6c>
    216e:	50 f5       	mov.l	@(20,r15),r0
    2170:	c8 01       	tst	#1,r0
    2172:	89 19       	bt	21a8 <__vfprintf_r+0xaa0>
    2174:	e0 54       	mov	#84,r0
    2176:	96 65       	mov.w	2244 <__vfprintf_r+0xb3c>,r6	! a4
    2178:	01 fe       	mov.l	@(r0,r15),r1
    217a:	36 fc       	add	r15,r6
    217c:	e0 60       	mov	#96,r0
    217e:	2c 12       	mov.l	r1,@r12
    2180:	02 fe       	mov.l	@(r0,r15),r2
    2182:	51 62       	mov.l	@(8,r6),r1
    2184:	1c 21       	mov.l	r2,@(4,r12)
    2186:	31 2c       	add	r2,r1
    2188:	16 12       	mov.l	r1,@(8,r6)
    218a:	e2 07       	mov	#7,r2
    218c:	51 61       	mov.l	@(4,r6),r1
    218e:	71 01       	add	#1,r1
    2190:	16 11       	mov.l	r1,@(4,r6)
    2192:	31 27       	cmp/gt	r2,r1
    2194:	8b 02       	bf	219c <__vfprintf_r+0xa94>
    2196:	a5 83       	bra	2ca0 <__vfprintf_r+0x1598>
    2198:	54 f7       	mov.l	@(28,r15),r4
    219a:	00 09       	nop	
    219c:	7c 08       	add	#8,r12
    219e:	e0 58       	mov	#88,r0
    21a0:	0d fe       	mov.l	@(r0,r15),r13
    21a2:	7d ff       	add	#-1,r13
    21a4:	4d 15       	cmp/pl	r13
    21a6:	89 01       	bt	21ac <__vfprintf_r+0xaa4>
    21a8:	ac 86       	bra	1ab8 <__vfprintf_r+0x3b0>
    21aa:	50 f5       	mov.l	@(20,r15),r0
    21ac:	e1 10       	mov	#16,r1
    21ae:	3d 17       	cmp/gt	r1,r13
    21b0:	d8 29       	mov.l	2258 <__vfprintf_r+0xb50>,r8	! 9e88 <_zeroes.4041>
    21b2:	89 01       	bt	21b8 <__vfprintf_r+0xab0>
    21b4:	a2 bf       	bra	2736 <__vfprintf_r+0x102e>
    21b6:	00 09       	nop	
    21b8:	9b 44       	mov.w	2244 <__vfprintf_r+0xb3c>,r11	! a4
    21ba:	62 c3       	mov	r12,r2
    21bc:	ee 10       	mov	#16,r14
    21be:	3b fc       	add	r15,r11
    21c0:	ea 07       	mov	#7,r10
    21c2:	d9 26       	mov.l	225c <__vfprintf_r+0xb54>,r9	! 66d0 <___sprint_r>
    21c4:	a0 06       	bra	21d4 <__vfprintf_r+0xacc>
    21c6:	5c f8       	mov.l	@(32,r15),r12
    21c8:	72 08       	add	#8,r2
    21ca:	7d f0       	add	#-16,r13
    21cc:	3d e7       	cmp/gt	r14,r13
    21ce:	89 01       	bt	21d4 <__vfprintf_r+0xacc>
    21d0:	a2 b1       	bra	2736 <__vfprintf_r+0x102e>
    21d2:	6c 23       	mov	r2,r12
    21d4:	51 b2       	mov.l	@(8,r11),r1
    21d6:	22 82       	mov.l	r8,@r2
    21d8:	71 10       	add	#16,r1
    21da:	12 e1       	mov.l	r14,@(4,r2)
    21dc:	1b 12       	mov.l	r1,@(8,r11)
    21de:	51 b1       	mov.l	@(4,r11),r1
    21e0:	71 01       	add	#1,r1
    21e2:	1b 11       	mov.l	r1,@(4,r11)
    21e4:	31 a7       	cmp/gt	r10,r1
    21e6:	8b ef       	bf	21c8 <__vfprintf_r+0xac0>
    21e8:	54 f7       	mov.l	@(28,r15),r4
    21ea:	65 c3       	mov	r12,r5
    21ec:	49 0b       	jsr	@r9
    21ee:	66 b3       	mov	r11,r6
    21f0:	20 08       	tst	r0,r0
    21f2:	8b 67       	bf	22c4 <__vfprintf_r+0xbbc>
    21f4:	92 29       	mov.w	224a <__vfprintf_r+0xb42>,r2	! 140
    21f6:	af e8       	bra	21ca <__vfprintf_r+0xac2>
    21f8:	32 fc       	add	r15,r2
    21fa:	00 09       	nop	
    21fc:	8b 68       	bf	22d0 <__vfprintf_r+0xbc8>
    21fe:	50 f5       	mov.l	@(20,r15),r0
    2200:	c8 01       	tst	#1,r0
    2202:	89 65       	bt	22d0 <__vfprintf_r+0xbc8>
    2204:	92 1f       	mov.w	2246 <__vfprintf_r+0xb3e>,r2	! 540
    2206:	e1 30       	mov	#48,r1
    2208:	90 20       	mov.w	224c <__vfprintf_r+0xb44>,r0	! fb97
    220a:	32 fc       	add	r15,r2
    220c:	02 14       	mov.b	r1,@(r0,r2)
    220e:	e0 7c       	mov	#124,r0
    2210:	03 fe       	mov.l	@(r0,r15),r3
    2212:	e0 64       	mov	#100,r0
    2214:	04 fe       	mov.l	@(r0,r15),r4
    2216:	1f 3b       	mov.l	r3,@(44,r15)
    2218:	ad da       	bra	1dd0 <__vfprintf_r+0x6c8>
    221a:	1f 4f       	mov.l	r4,@(60,r15)
    221c:	52 f9       	mov.l	@(36,r15),r2
    221e:	3b 28       	sub	r2,r11
    2220:	4b 15       	cmp/pl	r11
    2222:	89 01       	bt	2228 <__vfprintf_r+0xb20>
    2224:	a1 44       	bra	24b0 <__vfprintf_r+0xda8>
    2226:	00 09       	nop	
    2228:	e1 10       	mov	#16,r1
    222a:	3b 17       	cmp/gt	r1,r11
    222c:	d3 0c       	mov.l	2260 <__vfprintf_r+0xb58>,r3	! 9e78 <_blanks.4040>
    222e:	8b 35       	bf	229c <__vfprintf_r+0xb94>
    2230:	9a 08       	mov.w	2244 <__vfprintf_r+0xb3c>,r10	! a4
    2232:	67 c3       	mov	r12,r7
    2234:	ed 10       	mov	#16,r13
    2236:	3a fc       	add	r15,r10
    2238:	6c a3       	mov	r10,r12
    223a:	ee 07       	mov	#7,r14
    223c:	6a b3       	mov	r11,r10
    223e:	d8 07       	mov.l	225c <__vfprintf_r+0xb54>,r8	! 66d0 <___sprint_r>
    2240:	a0 14       	bra	226c <__vfprintf_r+0xb64>
    2242:	6b 33       	mov	r3,r11
    2244:	00 a4       	mov.b	r10,@(r0,r0)
    2246:	05 40       	.word 0x0540
    2248:	fb 48       	.word 0xfb48
    224a:	01 40       	.word 0x0140
    224c:	fb 97       	.word 0xfb97
    224e:	00 09       	nop	
    2250:	00 00       	.word 0x0000
    2252:	95 08       	mov.w	2266 <__vfprintf_r+0xb5e>,r5	! 3ad7
    2254:	00 00       	.word 0x0000
    2256:	9e 74       	mov.w	2342 <__vfprintf_r+0xc3a>,r14	! e207
    2258:	00 00       	.word 0x0000
    225a:	9e 88       	mov.w	236e <__vfprintf_r+0xc66>,r14	! 66d0 <___sprint_r>
    225c:	00 00       	.word 0x0000
    225e:	66 d0       	mov.b	@r13,r6
    2260:	00 00       	.word 0x0000
    2262:	9e 78       	mov.w	2356 <__vfprintf_r+0xc4e>,r14	! 3127
    2264:	7a f0       	add	#-16,r10
    2266:	3a d7       	cmp/gt	r13,r10
    2268:	77 08       	add	#8,r7
    226a:	8b 14       	bf	2296 <__vfprintf_r+0xb8e>
    226c:	51 c2       	mov.l	@(8,r12),r1
    226e:	27 b2       	mov.l	r11,@r7
    2270:	71 10       	add	#16,r1
    2272:	17 d1       	mov.l	r13,@(4,r7)
    2274:	1c 12       	mov.l	r1,@(8,r12)
    2276:	51 c1       	mov.l	@(4,r12),r1
    2278:	71 01       	add	#1,r1
    227a:	1c 11       	mov.l	r1,@(4,r12)
    227c:	31 e7       	cmp/gt	r14,r1
    227e:	8b f1       	bf	2264 <__vfprintf_r+0xb5c>
    2280:	54 f7       	mov.l	@(28,r15),r4
    2282:	66 c3       	mov	r12,r6
    2284:	48 0b       	jsr	@r8
    2286:	55 f8       	mov.l	@(32,r15),r5
    2288:	20 08       	tst	r0,r0
    228a:	8b 1b       	bf	22c4 <__vfprintf_r+0xbbc>
    228c:	97 6b       	mov.w	2366 <__vfprintf_r+0xc5e>,r7	! 140
    228e:	7a f0       	add	#-16,r10
    2290:	3a d7       	cmp/gt	r13,r10
    2292:	37 fc       	add	r15,r7
    2294:	89 ea       	bt	226c <__vfprintf_r+0xb64>
    2296:	63 b3       	mov	r11,r3
    2298:	6c 73       	mov	r7,r12
    229a:	6b a3       	mov	r10,r11
    229c:	98 64       	mov.w	2368 <__vfprintf_r+0xc60>,r8	! a4
    229e:	2c 32       	mov.l	r3,@r12
    22a0:	38 fc       	add	r15,r8
    22a2:	52 82       	mov.l	@(8,r8),r2
    22a4:	e3 07       	mov	#7,r3
    22a6:	51 81       	mov.l	@(4,r8),r1
    22a8:	32 bc       	add	r11,r2
    22aa:	1c b1       	mov.l	r11,@(4,r12)
    22ac:	71 01       	add	#1,r1
    22ae:	18 22       	mov.l	r2,@(8,r8)
    22b0:	31 37       	cmp/gt	r3,r1
    22b2:	18 11       	mov.l	r1,@(4,r8)
    22b4:	8b 09       	bf	22ca <__vfprintf_r+0xbc2>
    22b6:	d0 2d       	mov.l	236c <__vfprintf_r+0xc64>,r0	! 66d0 <___sprint_r>
    22b8:	66 83       	mov	r8,r6
    22ba:	54 f7       	mov.l	@(28,r15),r4
    22bc:	40 0b       	jsr	@r0
    22be:	55 f8       	mov.l	@(32,r15),r5
    22c0:	20 08       	tst	r0,r0
    22c2:	89 01       	bt	22c8 <__vfprintf_r+0xbc0>
    22c4:	ac f9       	bra	1cba <__vfprintf_r+0x5b2>
    22c6:	e0 44       	mov	#68,r0
    22c8:	52 82       	mov.l	@(8,r8),r2
    22ca:	ab fe       	bra	1aca <__vfprintf_r+0x3c2>
    22cc:	51 f9       	mov.l	@(36,r15),r1
    22ce:	00 09       	nop	
    22d0:	e0 00       	mov	#0,r0
    22d2:	1f 0b       	mov.l	r0,@(44,r15)
    22d4:	e0 4c       	mov	#76,r0
    22d6:	01 fe       	mov.l	@(r0,r15),r1
    22d8:	ad 7a       	bra	1dd0 <__vfprintf_r+0x6c8>
    22da:	1f 1f       	mov.l	r1,@(60,r15)
    22dc:	51 f9       	mov.l	@(36,r15),r1
    22de:	3e 18       	sub	r1,r14
    22e0:	4e 15       	cmp/pl	r14
    22e2:	8b 3e       	bf	2362 <__vfprintf_r+0xc5a>
    22e4:	e1 10       	mov	#16,r1
    22e6:	3e 17       	cmp/gt	r1,r14
    22e8:	d8 21       	mov.l	2370 <__vfprintf_r+0xc68>,r8	! 9e88 <_zeroes.4041>
    22ea:	8b 29       	bf	2340 <__vfprintf_r+0xc38>
    22ec:	9d 3c       	mov.w	2368 <__vfprintf_r+0xc60>,r13	! a4
    22ee:	62 c3       	mov	r12,r2
    22f0:	1f 9a       	mov.l	r9,@(40,r15)
    22f2:	6c 83       	mov	r8,r12
    22f4:	ea 10       	mov	#16,r10
    22f6:	3d fc       	add	r15,r13
    22f8:	eb 07       	mov	#7,r11
    22fa:	59 f8       	mov.l	@(32,r15),r9
    22fc:	a0 04       	bra	2308 <__vfprintf_r+0xc00>
    22fe:	58 f7       	mov.l	@(28,r15),r8
    2300:	7e f0       	add	#-16,r14
    2302:	3e a7       	cmp/gt	r10,r14
    2304:	72 08       	add	#8,r2
    2306:	8b 18       	bf	233a <__vfprintf_r+0xc32>
    2308:	51 d2       	mov.l	@(8,r13),r1
    230a:	22 c2       	mov.l	r12,@r2
    230c:	71 10       	add	#16,r1
    230e:	12 a1       	mov.l	r10,@(4,r2)
    2310:	1d 12       	mov.l	r1,@(8,r13)
    2312:	51 d1       	mov.l	@(4,r13),r1
    2314:	71 01       	add	#1,r1
    2316:	1d 11       	mov.l	r1,@(4,r13)
    2318:	31 b7       	cmp/gt	r11,r1
    231a:	8b f1       	bf	2300 <__vfprintf_r+0xbf8>
    231c:	d2 13       	mov.l	236c <__vfprintf_r+0xc64>,r2	! 66d0 <___sprint_r>
    231e:	64 83       	mov	r8,r4
    2320:	65 93       	mov	r9,r5
    2322:	42 0b       	jsr	@r2
    2324:	66 d3       	mov	r13,r6
    2326:	20 08       	tst	r0,r0
    2328:	89 02       	bt	2330 <__vfprintf_r+0xc28>
    232a:	ac c6       	bra	1cba <__vfprintf_r+0x5b2>
    232c:	e0 44       	mov	#68,r0
    232e:	00 09       	nop	
    2330:	92 19       	mov.w	2366 <__vfprintf_r+0xc5e>,r2	! 140
    2332:	7e f0       	add	#-16,r14
    2334:	3e a7       	cmp/gt	r10,r14
    2336:	32 fc       	add	r15,r2
    2338:	89 e6       	bt	2308 <__vfprintf_r+0xc00>
    233a:	59 fa       	mov.l	@(40,r15),r9
    233c:	68 c3       	mov	r12,r8
    233e:	6c 23       	mov	r2,r12
    2340:	96 12       	mov.w	2368 <__vfprintf_r+0xc60>,r6	! a4
    2342:	e2 07       	mov	#7,r2
    2344:	2c 82       	mov.l	r8,@r12
    2346:	36 fc       	add	r15,r6
    2348:	51 62       	mov.l	@(8,r6),r1
    234a:	1c e1       	mov.l	r14,@(4,r12)
    234c:	31 ec       	add	r14,r1
    234e:	16 12       	mov.l	r1,@(8,r6)
    2350:	51 61       	mov.l	@(4,r6),r1
    2352:	71 01       	add	#1,r1
    2354:	16 11       	mov.l	r1,@(4,r6)
    2356:	31 27       	cmp/gt	r2,r1
    2358:	8b 02       	bf	2360 <__vfprintf_r+0xc58>
    235a:	a2 9d       	bra	2898 <__vfprintf_r+0x1190>
    235c:	54 f7       	mov.l	@(28,r15),r4
    235e:	00 09       	nop	
    2360:	7c 08       	add	#8,r12
    2362:	ab 40       	bra	19e6 <__vfprintf_r+0x2de>
    2364:	e0 48       	mov	#72,r0
    2366:	01 40       	.word 0x0140
    2368:	00 a4       	mov.b	r10,@(r0,r0)
    236a:	00 09       	nop	
    236c:	00 00       	.word 0x0000
    236e:	66 d0       	mov.b	@r13,r6
    2370:	00 00       	.word 0x0000
    2372:	9e 88       	mov.w	2486 <__vfprintf_r+0xd7e>,r14	! 9c0b
    2374:	04 fe       	mov.l	@(r0,r15),r4
    2376:	e1 01       	mov	#1,r1
    2378:	34 17       	cmp/gt	r1,r4
    237a:	89 01       	bt	2380 <__vfprintf_r+0xc78>
    237c:	a2 58       	bra	2830 <__vfprintf_r+0x1128>
    237e:	50 f5       	mov.l	@(20,r15),r0
    2380:	96 8c       	mov.w	249c <__vfprintf_r+0xd94>,r6	! a4
    2382:	e1 01       	mov	#1,r1
    2384:	1c 11       	mov.l	r1,@(4,r12)
    2386:	36 fc       	add	r15,r6
    2388:	51 62       	mov.l	@(8,r6),r1
    238a:	e2 07       	mov	#7,r2
    238c:	50 ff       	mov.l	@(60,r15),r0
    238e:	71 01       	add	#1,r1
    2390:	2c 02       	mov.l	r0,@r12
    2392:	16 12       	mov.l	r1,@(8,r6)
    2394:	51 61       	mov.l	@(4,r6),r1
    2396:	71 01       	add	#1,r1
    2398:	16 11       	mov.l	r1,@(4,r6)
    239a:	31 27       	cmp/gt	r2,r1
    239c:	8b 02       	bf	23a4 <__vfprintf_r+0xc9c>
    239e:	a2 63       	bra	2868 <__vfprintf_r+0x1160>
    23a0:	54 f7       	mov.l	@(28,r15),r4
    23a2:	00 09       	nop	
    23a4:	7c 08       	add	#8,r12
    23a6:	e0 54       	mov	#84,r0
    23a8:	96 78       	mov.w	249c <__vfprintf_r+0xd94>,r6	! a4
    23aa:	01 fe       	mov.l	@(r0,r15),r1
    23ac:	36 fc       	add	r15,r6
    23ae:	e0 60       	mov	#96,r0
    23b0:	2c 12       	mov.l	r1,@r12
    23b2:	02 fe       	mov.l	@(r0,r15),r2
    23b4:	51 62       	mov.l	@(8,r6),r1
    23b6:	1c 21       	mov.l	r2,@(4,r12)
    23b8:	31 2c       	add	r2,r1
    23ba:	16 12       	mov.l	r1,@(8,r6)
    23bc:	e2 07       	mov	#7,r2
    23be:	51 61       	mov.l	@(4,r6),r1
    23c0:	71 01       	add	#1,r1
    23c2:	16 11       	mov.l	r1,@(4,r6)
    23c4:	31 27       	cmp/gt	r2,r1
    23c6:	8b 01       	bf	23cc <__vfprintf_r+0xcc4>
    23c8:	a2 56       	bra	2878 <__vfprintf_r+0x1170>
    23ca:	54 f7       	mov.l	@(28,r15),r4
    23cc:	7c 08       	add	#8,r12
    23ce:	d0 36       	mov.l	24a8 <__vfprintf_r+0xda0>,r0	! 955c <___nedf2>
    23d0:	e7 40       	mov	#64,r7
    23d2:	37 fc       	add	r15,r7
    23d4:	54 7a       	mov.l	@(40,r7),r4
    23d6:	e6 00       	mov	#0,r6
    23d8:	55 7b       	mov.l	@(44,r7),r5
    23da:	40 0b       	jsr	@r0
    23dc:	e7 00       	mov	#0,r7
    23de:	20 08       	tst	r0,r0
    23e0:	8b 02       	bf	23e8 <__vfprintf_r+0xce0>
    23e2:	a1 2b       	bra	263c <__vfprintf_r+0xf34>
    23e4:	e0 58       	mov	#88,r0
    23e6:	00 09       	nop	
    23e8:	51 ff       	mov.l	@(60,r15),r1
    23ea:	e0 58       	mov	#88,r0
    23ec:	96 56       	mov.w	249c <__vfprintf_r+0xd94>,r6	! a4
    23ee:	71 01       	add	#1,r1
    23f0:	02 fe       	mov.l	@(r0,r15),r2
    23f2:	36 fc       	add	r15,r6
    23f4:	2c 12       	mov.l	r1,@r12
    23f6:	72 ff       	add	#-1,r2
    23f8:	51 62       	mov.l	@(8,r6),r1
    23fa:	1c 21       	mov.l	r2,@(4,r12)
    23fc:	31 2c       	add	r2,r1
    23fe:	16 12       	mov.l	r1,@(8,r6)
    2400:	e2 07       	mov	#7,r2
    2402:	51 61       	mov.l	@(4,r6),r1
    2404:	71 01       	add	#1,r1
    2406:	16 11       	mov.l	r1,@(4,r6)
    2408:	31 27       	cmp/gt	r2,r1
    240a:	8b 01       	bf	2410 <__vfprintf_r+0xd08>
    240c:	a2 3c       	bra	2888 <__vfprintf_r+0x1180>
    240e:	54 f7       	mov.l	@(28,r15),r4
    2410:	7c 08       	add	#8,r12
    2412:	91 44       	mov.w	249e <__vfprintf_r+0xd96>,r1	! 94
    2414:	e0 70       	mov	#112,r0
    2416:	96 41       	mov.w	249c <__vfprintf_r+0xd94>,r6	! a4
    2418:	31 fc       	add	r15,r1
    241a:	2c 12       	mov.l	r1,@r12
    241c:	36 fc       	add	r15,r6
    241e:	01 fe       	mov.l	@(r0,r15),r1
    2420:	02 fe       	mov.l	@(r0,r15),r2
    2422:	1c 11       	mov.l	r1,@(4,r12)
    2424:	51 62       	mov.l	@(8,r6),r1
    2426:	31 2c       	add	r2,r1
    2428:	16 12       	mov.l	r1,@(8,r6)
    242a:	e2 07       	mov	#7,r2
    242c:	51 61       	mov.l	@(4,r6),r1
    242e:	71 01       	add	#1,r1
    2430:	16 11       	mov.l	r1,@(4,r6)
    2432:	31 27       	cmp/gt	r2,r1
    2434:	89 02       	bt	243c <__vfprintf_r+0xd34>
    2436:	ab 3e       	bra	1ab6 <__vfprintf_r+0x3ae>
    2438:	7c 08       	add	#8,r12
    243a:	00 09       	nop	
    243c:	d0 1b       	mov.l	24ac <__vfprintf_r+0xda4>,r0	! 66d0 <___sprint_r>
    243e:	54 f7       	mov.l	@(28,r15),r4
    2440:	40 0b       	jsr	@r0
    2442:	55 f8       	mov.l	@(32,r15),r5
    2444:	20 08       	tst	r0,r0
    2446:	8b 0f       	bf	2468 <__vfprintf_r+0xd60>
    2448:	9c 2a       	mov.w	24a0 <__vfprintf_r+0xd98>,r12	! 140
    244a:	ab 34       	bra	1ab6 <__vfprintf_r+0x3ae>
    244c:	3c fc       	add	r15,r12
    244e:	00 09       	nop	
    2450:	91 27       	mov.w	24a2 <__vfprintf_r+0xd9a>,r1	! 540
    2452:	96 27       	mov.w	24a4 <__vfprintf_r+0xd9c>,r6	! fb64
    2454:	31 fc       	add	r15,r1
    2456:	d0 15       	mov.l	24ac <__vfprintf_r+0xda4>,r0	! 66d0 <___sprint_r>
    2458:	36 1c       	add	r1,r6
    245a:	40 0b       	jsr	@r0
    245c:	55 f8       	mov.l	@(32,r15),r5
    245e:	20 08       	tst	r0,r0
    2460:	8b 02       	bf	2468 <__vfprintf_r+0xd60>
    2462:	ab 3d       	bra	1ae0 <__vfprintf_r+0x3d8>
    2464:	00 09       	nop	
    2466:	00 09       	nop	
    2468:	ac 27       	bra	1cba <__vfprintf_r+0x5b2>
    246a:	e0 44       	mov	#68,r0
    246c:	d0 0f       	mov.l	24ac <__vfprintf_r+0xda4>,r0	! 66d0 <___sprint_r>
    246e:	40 0b       	jsr	@r0
    2470:	55 f8       	mov.l	@(32,r15),r5
    2472:	20 08       	tst	r0,r0
    2474:	8b f8       	bf	2468 <__vfprintf_r+0xd60>
    2476:	9c 13       	mov.w	24a0 <__vfprintf_r+0xd98>,r12	! 140
    2478:	ab 03       	bra	1a82 <__vfprintf_r+0x37a>
    247a:	3c fc       	add	r15,r12
    247c:	d0 0b       	mov.l	24ac <__vfprintf_r+0xda4>,r0	! 66d0 <___sprint_r>
    247e:	40 0b       	jsr	@r0
    2480:	55 f8       	mov.l	@(32,r15),r5
    2482:	20 08       	tst	r0,r0
    2484:	8b f0       	bf	2468 <__vfprintf_r+0xd60>
    2486:	9c 0b       	mov.w	24a0 <__vfprintf_r+0xd98>,r12	! 140
    2488:	aa 8f       	bra	19aa <__vfprintf_r+0x2a2>
    248a:	3c fc       	add	r15,r12
    248c:	d0 07       	mov.l	24ac <__vfprintf_r+0xda4>,r0	! 66d0 <___sprint_r>
    248e:	40 0b       	jsr	@r0
    2490:	55 f8       	mov.l	@(32,r15),r5
    2492:	20 08       	tst	r0,r0
    2494:	8b e8       	bf	2468 <__vfprintf_r+0xd60>
    2496:	9c 03       	mov.w	24a0 <__vfprintf_r+0xd98>,r12	! 140
    2498:	aa 9d       	bra	19d6 <__vfprintf_r+0x2ce>
    249a:	3c fc       	add	r15,r12
    249c:	00 a4       	mov.b	r10,@(r0,r0)
    249e:	00 94       	mov.b	r9,@(r0,r0)
    24a0:	01 40       	.word 0x0140
    24a2:	05 40       	.word 0x0540
    24a4:	fb 64       	.word 0xfb64
    24a6:	00 09       	nop	
    24a8:	00 00       	.word 0x0000
    24aa:	95 5c       	mov.w	2566 <__vfprintf_r+0xe5e>,r5	! 66b3
    24ac:	00 00       	.word 0x0000
    24ae:	66 d0       	mov.b	@r13,r6
    24b0:	93 7f       	mov.w	25b2 <__vfprintf_r+0xeaa>,r3	! 540
    24b2:	90 7f       	mov.w	25b4 <__vfprintf_r+0xeac>,r0	! fb6c
    24b4:	33 fc       	add	r15,r3
    24b6:	ab 07       	bra	1ac8 <__vfprintf_r+0x3c0>
    24b8:	02 3e       	mov.l	@(r0,r3),r2
    24ba:	00 09       	nop	
    24bc:	98 7b       	mov.w	25b6 <__vfprintf_r+0xeae>,r8	! 80
    24be:	38 fc       	add	r15,r8
    24c0:	5a 82       	mov.l	@(8,r8),r10
    24c2:	4a 15       	cmp/pl	r10
    24c4:	89 02       	bt	24cc <__vfprintf_r+0xdc4>
    24c6:	a3 19       	bra	2afc <__vfprintf_r+0x13f4>
    24c8:	e2 07       	mov	#7,r2
    24ca:	00 09       	nop	
    24cc:	e0 58       	mov	#88,r0
    24ce:	04 fe       	mov.l	@(r0,r15),r4
    24d0:	55 ff       	mov.l	@(60,r15),r5
    24d2:	50 ff       	mov.l	@(60,r15),r0
    24d4:	35 4c       	add	r4,r5
    24d6:	68 53       	mov	r5,r8
    24d8:	38 08       	sub	r0,r8
    24da:	e0 5c       	mov	#92,r0
    24dc:	01 fe       	mov.l	@(r0,r15),r1
    24de:	1f 5b       	mov.l	r5,@(44,r15)
    24e0:	38 17       	cmp/gt	r1,r8
    24e2:	8b 00       	bf	24e6 <__vfprintf_r+0xdde>
    24e4:	68 13       	mov	r1,r8
    24e6:	48 15       	cmp/pl	r8
    24e8:	8b 11       	bf	250e <__vfprintf_r+0xe06>
    24ea:	96 65       	mov.w	25b8 <__vfprintf_r+0xeb0>,r6	! a4
    24ec:	e2 07       	mov	#7,r2
    24ee:	50 ff       	mov.l	@(60,r15),r0
    24f0:	36 fc       	add	r15,r6
    24f2:	51 62       	mov.l	@(8,r6),r1
    24f4:	2c 02       	mov.l	r0,@r12
    24f6:	31 8c       	add	r8,r1
    24f8:	1c 81       	mov.l	r8,@(4,r12)
    24fa:	16 12       	mov.l	r1,@(8,r6)
    24fc:	51 61       	mov.l	@(4,r6),r1
    24fe:	71 01       	add	#1,r1
    2500:	16 11       	mov.l	r1,@(4,r6)
    2502:	31 27       	cmp/gt	r2,r1
    2504:	8b 02       	bf	250c <__vfprintf_r+0xe04>
    2506:	a4 05       	bra	2d14 <__vfprintf_r+0x160c>
    2508:	54 f7       	mov.l	@(28,r15),r4
    250a:	00 09       	nop	
    250c:	7c 08       	add	#8,r12
    250e:	e0 5c       	mov	#92,r0
    2510:	48 11       	cmp/pz	r8
    2512:	0d fe       	mov.l	@(r0,r15),r13
    2514:	31 1a       	subc	r1,r1
    2516:	28 19       	and	r1,r8
    2518:	3d 88       	sub	r8,r13
    251a:	4d 15       	cmp/pl	r13
    251c:	89 02       	bt	2524 <__vfprintf_r+0xe1c>
    251e:	a1 1b       	bra	2758 <__vfprintf_r+0x1050>
    2520:	00 09       	nop	
    2522:	00 09       	nop	
    2524:	e1 10       	mov	#16,r1
    2526:	3d 17       	cmp/gt	r1,r13
    2528:	d8 24       	mov.l	25bc <__vfprintf_r+0xeb4>,r8	! 9e88 <_zeroes.4041>
    252a:	89 01       	bt	2530 <__vfprintf_r+0xe28>
    252c:	a2 78       	bra	2a20 <__vfprintf_r+0x1318>
    252e:	00 09       	nop	
    2530:	9b 42       	mov.w	25b8 <__vfprintf_r+0xeb0>,r11	! a4
    2532:	62 c3       	mov	r12,r2
    2534:	ee 10       	mov	#16,r14
    2536:	3b fc       	add	r15,r11
    2538:	ea 07       	mov	#7,r10
    253a:	d9 21       	mov.l	25c0 <__vfprintf_r+0xeb8>,r9	! 66d0 <___sprint_r>
    253c:	a0 06       	bra	254c <__vfprintf_r+0xe44>
    253e:	5c f8       	mov.l	@(32,r15),r12
    2540:	72 08       	add	#8,r2
    2542:	7d f0       	add	#-16,r13
    2544:	3d e7       	cmp/gt	r14,r13
    2546:	89 01       	bt	254c <__vfprintf_r+0xe44>
    2548:	a2 6a       	bra	2a20 <__vfprintf_r+0x1318>
    254a:	6c 23       	mov	r2,r12
    254c:	51 b2       	mov.l	@(8,r11),r1
    254e:	22 82       	mov.l	r8,@r2
    2550:	71 10       	add	#16,r1
    2552:	12 e1       	mov.l	r14,@(4,r2)
    2554:	1b 12       	mov.l	r1,@(8,r11)
    2556:	51 b1       	mov.l	@(4,r11),r1
    2558:	71 01       	add	#1,r1
    255a:	1b 11       	mov.l	r1,@(4,r11)
    255c:	31 a7       	cmp/gt	r10,r1
    255e:	8b ef       	bf	2540 <__vfprintf_r+0xe38>
    2560:	54 f7       	mov.l	@(28,r15),r4
    2562:	65 c3       	mov	r12,r5
    2564:	49 0b       	jsr	@r9
    2566:	66 b3       	mov	r11,r6
    2568:	20 08       	tst	r0,r0
    256a:	8b 60       	bf	262e <__vfprintf_r+0xf26>
    256c:	92 25       	mov.w	25ba <__vfprintf_r+0xeb2>,r2	! 140
    256e:	af e8       	bra	2542 <__vfprintf_r+0xe3a>
    2570:	32 fc       	add	r15,r2
    2572:	00 09       	nop	
    2574:	1f 2f       	mov.l	r2,@(60,r15)
    2576:	e0 50       	mov	#80,r0
    2578:	00 fe       	mov.l	@(r0,r15),r0
    257a:	e1 0f       	mov	#15,r1
    257c:	21 d9       	and	r13,r1
    257e:	01 1c       	mov.b	@(r0,r1),r1
    2580:	63 b3       	mov	r11,r3
    2582:	43 28       	shll16	r3
    2584:	22 14       	mov.b	r1,@-r2
    2586:	43 18       	shll8	r3
    2588:	61 d3       	mov	r13,r1
    258a:	43 08       	shll2	r3
    258c:	41 09       	shlr2	r1
    258e:	43 08       	shll2	r3
    2590:	41 09       	shlr2	r1
    2592:	21 3b       	or	r3,r1
    2594:	63 b3       	mov	r11,r3
    2596:	43 09       	shlr2	r3
    2598:	43 09       	shlr2	r3
    259a:	23 38       	tst	r3,r3
    259c:	6b 33       	mov	r3,r11
    259e:	6d 13       	mov	r1,r13
    25a0:	8b e9       	bf	2576 <__vfprintf_r+0xe6e>
    25a2:	21 18       	tst	r1,r1
    25a4:	8b e7       	bf	2576 <__vfprintf_r+0xe6e>
    25a6:	e0 4c       	mov	#76,r0
    25a8:	00 fe       	mov.l	@(r0,r15),r0
    25aa:	1f 2f       	mov.l	r2,@(60,r15)
    25ac:	30 28       	sub	r2,r0
    25ae:	ac 0f       	bra	1dd0 <__vfprintf_r+0x6c8>
    25b0:	1f 0b       	mov.l	r0,@(44,r15)
    25b2:	05 40       	.word 0x0540
    25b4:	fb 6c       	.word 0xfb6c
    25b6:	00 80       	.word 0x0080
    25b8:	00 a4       	mov.b	r10,@(r0,r0)
    25ba:	01 40       	.word 0x0140
    25bc:	00 00       	.word 0x0000
    25be:	9e 88       	mov.w	26d2 <__vfprintf_r+0xfca>,r14	! 1f2d
    25c0:	00 00       	.word 0x0000
    25c2:	66 d0       	mov.b	@r13,r6
    25c4:	8b 02       	bf	25cc <__vfprintf_r+0xec4>
    25c6:	e1 09       	mov	#9,r1
    25c8:	3d 16       	cmp/hi	r1,r13
    25ca:	8b 1f       	bf	260c <__vfprintf_r+0xf04>
    25cc:	e0 4c       	mov	#76,r0
    25ce:	07 fe       	mov.l	@(r0,r15),r7
    25d0:	da 54       	mov.l	2724 <__vfprintf_r+0x101c>,r10	! 8a78 <___umoddi3>
    25d2:	d8 55       	mov.l	2728 <__vfprintf_r+0x1020>,r8	! 875c <___udivdi3>
    25d4:	1f 7f       	mov.l	r7,@(60,r15)
    25d6:	64 b3       	mov	r11,r4
    25d8:	65 d3       	mov	r13,r5
    25da:	e6 00       	mov	#0,r6
    25dc:	4a 0b       	jsr	@r10
    25de:	e7 0a       	mov	#10,r7
    25e0:	50 ff       	mov.l	@(60,r15),r0
    25e2:	71 30       	add	#48,r1
    25e4:	64 b3       	mov	r11,r4
    25e6:	20 14       	mov.b	r1,@-r0
    25e8:	65 d3       	mov	r13,r5
    25ea:	1f 0f       	mov.l	r0,@(60,r15)
    25ec:	e6 00       	mov	#0,r6
    25ee:	48 0b       	jsr	@r8
    25f0:	e7 0a       	mov	#10,r7
    25f2:	6b 03       	mov	r0,r11
    25f4:	2b b8       	tst	r11,r11
    25f6:	6d 13       	mov	r1,r13
    25f8:	8b ed       	bf	25d6 <__vfprintf_r+0xece>
    25fa:	21 18       	tst	r1,r1
    25fc:	8b eb       	bf	25d6 <__vfprintf_r+0xece>
    25fe:	e0 4c       	mov	#76,r0
    2600:	00 fe       	mov.l	@(r0,r15),r0
    2602:	51 ff       	mov.l	@(60,r15),r1
    2604:	30 18       	sub	r1,r0
    2606:	ab e3       	bra	1dd0 <__vfprintf_r+0x6c8>
    2608:	1f 0b       	mov.l	r0,@(44,r15)
    260a:	00 09       	nop	
    260c:	93 84       	mov.w	2718 <__vfprintf_r+0x1010>,r3	! 540
    260e:	7d 30       	add	#48,r13
    2610:	90 83       	mov.w	271a <__vfprintf_r+0x1012>,r0	! fb97
    2612:	33 fc       	add	r15,r3
    2614:	03 d4       	mov.b	r13,@(r0,r3)
    2616:	e0 7c       	mov	#124,r0
    2618:	04 fe       	mov.l	@(r0,r15),r4
    261a:	e0 64       	mov	#100,r0
    261c:	05 fe       	mov.l	@(r0,r15),r5
    261e:	1f 4b       	mov.l	r4,@(44,r15)
    2620:	ab d6       	bra	1dd0 <__vfprintf_r+0x6c8>
    2622:	1f 5f       	mov.l	r5,@(60,r15)
    2624:	d0 41       	mov.l	272c <__vfprintf_r+0x1024>,r0	! 66d0 <___sprint_r>
    2626:	40 0b       	jsr	@r0
    2628:	55 f8       	mov.l	@(32,r15),r5
    262a:	20 08       	tst	r0,r0
    262c:	89 02       	bt	2634 <__vfprintf_r+0xf2c>
    262e:	ab 44       	bra	1cba <__vfprintf_r+0x5b2>
    2630:	e0 44       	mov	#68,r0
    2632:	00 09       	nop	
    2634:	9c 72       	mov.w	271c <__vfprintf_r+0x1014>,r12	! 140
    2636:	a9 a2       	bra	197e <__vfprintf_r+0x276>
    2638:	3c fc       	add	r15,r12
    263a:	00 09       	nop	
    263c:	0d fe       	mov.l	@(r0,r15),r13
    263e:	7d ff       	add	#-1,r13
    2640:	4d 15       	cmp/pl	r13
    2642:	89 01       	bt	2648 <__vfprintf_r+0xf40>
    2644:	ae e5       	bra	2412 <__vfprintf_r+0xd0a>
    2646:	00 09       	nop	
    2648:	e1 10       	mov	#16,r1
    264a:	3d 17       	cmp/gt	r1,r13
    264c:	d8 38       	mov.l	2730 <__vfprintf_r+0x1028>,r8	! 9e88 <_zeroes.4041>
    264e:	89 01       	bt	2654 <__vfprintf_r+0xf4c>
    2650:	a0 fa       	bra	2848 <__vfprintf_r+0x1140>
    2652:	00 09       	nop	
    2654:	9b 63       	mov.w	271e <__vfprintf_r+0x1016>,r11	! a4
    2656:	62 c3       	mov	r12,r2
    2658:	ee 10       	mov	#16,r14
    265a:	3b fc       	add	r15,r11
    265c:	ea 07       	mov	#7,r10
    265e:	d9 33       	mov.l	272c <__vfprintf_r+0x1024>,r9	! 66d0 <___sprint_r>
    2660:	a0 06       	bra	2670 <__vfprintf_r+0xf68>
    2662:	5c f8       	mov.l	@(32,r15),r12
    2664:	72 08       	add	#8,r2
    2666:	7d f0       	add	#-16,r13
    2668:	3d e7       	cmp/gt	r14,r13
    266a:	89 01       	bt	2670 <__vfprintf_r+0xf68>
    266c:	a0 ec       	bra	2848 <__vfprintf_r+0x1140>
    266e:	6c 23       	mov	r2,r12
    2670:	51 b2       	mov.l	@(8,r11),r1
    2672:	22 82       	mov.l	r8,@r2
    2674:	71 10       	add	#16,r1
    2676:	12 e1       	mov.l	r14,@(4,r2)
    2678:	1b 12       	mov.l	r1,@(8,r11)
    267a:	51 b1       	mov.l	@(4,r11),r1
    267c:	71 01       	add	#1,r1
    267e:	1b 11       	mov.l	r1,@(4,r11)
    2680:	31 a7       	cmp/gt	r10,r1
    2682:	8b ef       	bf	2664 <__vfprintf_r+0xf5c>
    2684:	54 f7       	mov.l	@(28,r15),r4
    2686:	65 c3       	mov	r12,r5
    2688:	49 0b       	jsr	@r9
    268a:	66 b3       	mov	r11,r6
    268c:	20 08       	tst	r0,r0
    268e:	8b 5e       	bf	274e <__vfprintf_r+0x1046>
    2690:	92 44       	mov.w	271c <__vfprintf_r+0x1014>,r2	! 140
    2692:	af e8       	bra	2666 <__vfprintf_r+0xf5e>
    2694:	32 fc       	add	r15,r2
    2696:	00 09       	nop	
    2698:	8b 04       	bf	26a4 <__vfprintf_r+0xf9c>
    269a:	2d d8       	tst	r13,r13
    269c:	8b 02       	bf	26a4 <__vfprintf_r+0xf9c>
    269e:	e3 00       	mov	#0,r3
    26a0:	ac 12       	bra	1ec8 <__vfprintf_r+0x7c0>
    26a2:	e2 02       	mov	#2,r2
    26a4:	91 3c       	mov.w	2720 <__vfprintf_r+0x1018>,r1	! 84
    26a6:	e2 30       	mov	#48,r2
    26a8:	50 f5       	mov.l	@(20,r15),r0
    26aa:	31 fc       	add	r15,r1
    26ac:	21 20       	mov.b	r2,@r1
    26ae:	cb 02       	or	#2,r0
    26b0:	71 01       	add	#1,r1
    26b2:	21 90       	mov.b	r9,@r1
    26b4:	e3 01       	mov	#1,r3
    26b6:	1f 05       	mov.l	r0,@(20,r15)
    26b8:	ac 06       	bra	1ec8 <__vfprintf_r+0x7c0>
    26ba:	e2 02       	mov	#2,r2
    26bc:	8b 02       	bf	26c4 <__vfprintf_r+0xfbc>
    26be:	a1 e7       	bra	2a90 <__vfprintf_r+0x1388>
    26c0:	50 f5       	mov.l	@(20,r15),r0
    26c2:	00 09       	nop	
    26c4:	51 fd       	mov.l	@(52,r15),r1
    26c6:	6d 12       	mov.l	@r1,r13
    26c8:	52 fd       	mov.l	@(52,r15),r2
    26ca:	2d d8       	tst	r13,r13
    26cc:	e1 ff       	mov	#-1,r1
    26ce:	72 04       	add	#4,r2
    26d0:	61 1a       	negc	r1,r1
    26d2:	1f 2d       	mov.l	r2,@(52,r15)
    26d4:	eb 00       	mov	#0,r11
    26d6:	63 1c       	extu.b	r1,r3
    26d8:	ab f6       	bra	1ec8 <__vfprintf_r+0x7c0>
    26da:	e2 01       	mov	#1,r2
    26dc:	e3 10       	mov	#16,r3
    26de:	21 39       	and	r3,r1
    26e0:	21 18       	tst	r1,r1
    26e2:	8b 01       	bf	26e8 <__vfprintf_r+0xfe0>
    26e4:	a1 ba       	bra	2a5c <__vfprintf_r+0x1354>
    26e6:	50 f5       	mov.l	@(20,r15),r0
    26e8:	54 fd       	mov.l	@(52,r15),r4
    26ea:	6d 46       	mov.l	@r4+,r13
    26ec:	1f 4d       	mov.l	r4,@(52,r15)
    26ee:	30 d7       	cmp/gt	r13,r0
    26f0:	31 1a       	subc	r1,r1
    26f2:	ab 23       	bra	1d3c <__vfprintf_r+0x634>
    26f4:	6b 13       	mov	r1,r11
    26f6:	00 09       	nop	
    26f8:	8b 02       	bf	2700 <__vfprintf_r+0xff8>
    26fa:	a1 ef       	bra	2adc <__vfprintf_r+0x13d4>
    26fc:	50 f5       	mov.l	@(20,r15),r0
    26fe:	00 09       	nop	
    2700:	51 fd       	mov.l	@(52,r15),r1
    2702:	6d 12       	mov.l	@r1,r13
    2704:	52 fd       	mov.l	@(52,r15),r2
    2706:	2d d8       	tst	r13,r13
    2708:	e1 ff       	mov	#-1,r1
    270a:	72 04       	add	#4,r2
    270c:	61 1a       	negc	r1,r1
    270e:	1f 2d       	mov.l	r2,@(52,r15)
    2710:	eb 00       	mov	#0,r11
    2712:	63 1c       	extu.b	r1,r3
    2714:	ab d8       	bra	1ec8 <__vfprintf_r+0x7c0>
    2716:	e2 00       	mov	#0,r2
    2718:	05 40       	.word 0x0540
    271a:	fb 97       	.word 0xfb97
    271c:	01 40       	.word 0x0140
    271e:	00 a4       	mov.b	r10,@(r0,r0)
    2720:	00 84       	mov.b	r8,@(r0,r0)
    2722:	00 09       	nop	
    2724:	00 00       	.word 0x0000
    2726:	8a 78       	.word 0x8a78
    2728:	00 00       	.word 0x0000
    272a:	87 5c       	.word 0x875c
    272c:	00 00       	.word 0x0000
    272e:	66 d0       	mov.b	@r13,r6
    2730:	00 00       	.word 0x0000
    2732:	9e 88       	mov.w	2846 <__vfprintf_r+0x113e>,r14	! 7101
    2734:	6c 23       	mov	r2,r12
    2736:	96 8e       	mov.w	2856 <__vfprintf_r+0x114e>,r6	! a4
    2738:	1c d1       	mov.l	r13,@(4,r12)
    273a:	36 fc       	add	r15,r6
    273c:	51 62       	mov.l	@(8,r6),r1
    273e:	2c 82       	mov.l	r8,@r12
    2740:	a9 ae       	bra	1aa0 <__vfprintf_r+0x398>
    2742:	31 dc       	add	r13,r1
    2744:	d0 46       	mov.l	2860 <__vfprintf_r+0x1158>,r0	! 66d0 <___sprint_r>
    2746:	40 0b       	jsr	@r0
    2748:	55 f8       	mov.l	@(32,r15),r5
    274a:	20 08       	tst	r0,r0
    274c:	89 02       	bt	2754 <__vfprintf_r+0x104c>
    274e:	aa b4       	bra	1cba <__vfprintf_r+0x5b2>
    2750:	e0 44       	mov	#68,r0
    2752:	00 09       	nop	
    2754:	9c 80       	mov.w	2858 <__vfprintf_r+0x1150>,r12	! 140
    2756:	3c fc       	add	r15,r12
    2758:	e0 5c       	mov	#92,r0
    275a:	93 7e       	mov.w	285a <__vfprintf_r+0x1152>,r3	! 540
    275c:	02 fe       	mov.l	@(r0,r15),r2
    275e:	33 fc       	add	r15,r3
    2760:	90 7c       	mov.w	285c <__vfprintf_r+0x1154>,r0	! fb48
    2762:	59 ff       	mov.l	@(60,r15),r9
    2764:	39 2c       	add	r2,r9
    2766:	02 3e       	mov.l	@(r0,r3),r2
    2768:	e0 58       	mov	#88,r0
    276a:	04 fe       	mov.l	@(r0,r15),r4
    276c:	32 43       	cmp/ge	r4,r2
    276e:	8b 02       	bf	2776 <__vfprintf_r+0x106e>
    2770:	50 f5       	mov.l	@(20,r15),r0
    2772:	c8 01       	tst	#1,r0
    2774:	89 13       	bt	279e <__vfprintf_r+0x1096>
    2776:	e0 54       	mov	#84,r0
    2778:	96 6d       	mov.w	2856 <__vfprintf_r+0x114e>,r6	! a4
    277a:	01 fe       	mov.l	@(r0,r15),r1
    277c:	36 fc       	add	r15,r6
    277e:	e0 60       	mov	#96,r0
    2780:	2c 12       	mov.l	r1,@r12
    2782:	03 fe       	mov.l	@(r0,r15),r3
    2784:	51 62       	mov.l	@(8,r6),r1
    2786:	1c 31       	mov.l	r3,@(4,r12)
    2788:	31 3c       	add	r3,r1
    278a:	16 12       	mov.l	r1,@(8,r6)
    278c:	e3 07       	mov	#7,r3
    278e:	51 61       	mov.l	@(4,r6),r1
    2790:	71 01       	add	#1,r1
    2792:	16 11       	mov.l	r1,@(4,r6)
    2794:	31 37       	cmp/gt	r3,r1
    2796:	8b 01       	bf	279c <__vfprintf_r+0x1094>
    2798:	a2 da       	bra	2d50 <__vfprintf_r+0x1648>
    279a:	54 f7       	mov.l	@(28,r15),r4
    279c:	7c 08       	add	#8,r12
    279e:	e0 58       	mov	#88,r0
    27a0:	51 fb       	mov.l	@(44,r15),r1
    27a2:	0d fe       	mov.l	@(r0,r15),r13
    27a4:	31 98       	sub	r9,r1
    27a6:	3d 28       	sub	r2,r13
    27a8:	3d 17       	cmp/gt	r1,r13
    27aa:	68 d3       	mov	r13,r8
    27ac:	8b 00       	bf	27b0 <__vfprintf_r+0x10a8>
    27ae:	68 13       	mov	r1,r8
    27b0:	48 15       	cmp/pl	r8
    27b2:	8b 10       	bf	27d6 <__vfprintf_r+0x10ce>
    27b4:	96 4f       	mov.w	2856 <__vfprintf_r+0x114e>,r6	! a4
    27b6:	e2 07       	mov	#7,r2
    27b8:	2c 92       	mov.l	r9,@r12
    27ba:	36 fc       	add	r15,r6
    27bc:	51 62       	mov.l	@(8,r6),r1
    27be:	1c 81       	mov.l	r8,@(4,r12)
    27c0:	31 8c       	add	r8,r1
    27c2:	16 12       	mov.l	r1,@(8,r6)
    27c4:	51 61       	mov.l	@(4,r6),r1
    27c6:	71 01       	add	#1,r1
    27c8:	16 11       	mov.l	r1,@(4,r6)
    27ca:	31 27       	cmp/gt	r2,r1
    27cc:	8b 02       	bf	27d4 <__vfprintf_r+0x10cc>
    27ce:	a2 d7       	bra	2d80 <__vfprintf_r+0x1678>
    27d0:	54 f7       	mov.l	@(28,r15),r4
    27d2:	00 09       	nop	
    27d4:	7c 08       	add	#8,r12
    27d6:	48 11       	cmp/pz	r8
    27d8:	31 1a       	subc	r1,r1
    27da:	28 19       	and	r1,r8
    27dc:	3d 88       	sub	r8,r13
    27de:	4d 15       	cmp/pl	r13
    27e0:	89 02       	bt	27e8 <__vfprintf_r+0x10e0>
    27e2:	a9 69       	bra	1ab8 <__vfprintf_r+0x3b0>
    27e4:	50 f5       	mov.l	@(20,r15),r0
    27e6:	00 09       	nop	
    27e8:	e1 10       	mov	#16,r1
    27ea:	3d 17       	cmp/gt	r1,r13
    27ec:	d8 1d       	mov.l	2864 <__vfprintf_r+0x115c>,r8	! 9e88 <_zeroes.4041>
    27ee:	8b a2       	bf	2736 <__vfprintf_r+0x102e>
    27f0:	9b 31       	mov.w	2856 <__vfprintf_r+0x114e>,r11	! a4
    27f2:	62 c3       	mov	r12,r2
    27f4:	ee 10       	mov	#16,r14
    27f6:	3b fc       	add	r15,r11
    27f8:	e9 07       	mov	#7,r9
    27fa:	da 19       	mov.l	2860 <__vfprintf_r+0x1158>,r10	! 66d0 <___sprint_r>
    27fc:	a0 04       	bra	2808 <__vfprintf_r+0x1100>
    27fe:	5c f8       	mov.l	@(32,r15),r12
    2800:	72 08       	add	#8,r2
    2802:	7d f0       	add	#-16,r13
    2804:	3d e7       	cmp/gt	r14,r13
    2806:	8b 95       	bf	2734 <__vfprintf_r+0x102c>
    2808:	51 b2       	mov.l	@(8,r11),r1
    280a:	22 82       	mov.l	r8,@r2
    280c:	71 10       	add	#16,r1
    280e:	12 e1       	mov.l	r14,@(4,r2)
    2810:	1b 12       	mov.l	r1,@(8,r11)
    2812:	51 b1       	mov.l	@(4,r11),r1
    2814:	71 01       	add	#1,r1
    2816:	1b 11       	mov.l	r1,@(4,r11)
    2818:	31 97       	cmp/gt	r9,r1
    281a:	8b f1       	bf	2800 <__vfprintf_r+0x10f8>
    281c:	54 f7       	mov.l	@(28,r15),r4
    281e:	65 c3       	mov	r12,r5
    2820:	4a 0b       	jsr	@r10
    2822:	66 b3       	mov	r11,r6
    2824:	20 08       	tst	r0,r0
    2826:	8b 3c       	bf	28a2 <__vfprintf_r+0x119a>
    2828:	92 16       	mov.w	2858 <__vfprintf_r+0x1150>,r2	! 140
    282a:	af ea       	bra	2802 <__vfprintf_r+0x10fa>
    282c:	32 fc       	add	r15,r2
    282e:	00 09       	nop	
    2830:	c8 01       	tst	#1,r0
    2832:	89 01       	bt	2838 <__vfprintf_r+0x1130>
    2834:	ad a4       	bra	2380 <__vfprintf_r+0xc78>
    2836:	00 09       	nop	
    2838:	96 0d       	mov.w	2856 <__vfprintf_r+0x114e>,r6	! a4
    283a:	50 ff       	mov.l	@(60,r15),r0
    283c:	36 fc       	add	r15,r6
    283e:	1c 11       	mov.l	r1,@(4,r12)
    2840:	51 62       	mov.l	@(8,r6),r1
    2842:	2c 02       	mov.l	r0,@r12
    2844:	ad db       	bra	23fe <__vfprintf_r+0xcf6>
    2846:	71 01       	add	#1,r1
    2848:	96 05       	mov.w	2856 <__vfprintf_r+0x114e>,r6	! a4
    284a:	2c 82       	mov.l	r8,@r12
    284c:	36 fc       	add	r15,r6
    284e:	51 62       	mov.l	@(8,r6),r1
    2850:	1c d1       	mov.l	r13,@(4,r12)
    2852:	ad d4       	bra	23fe <__vfprintf_r+0xcf6>
    2854:	31 dc       	add	r13,r1
    2856:	00 a4       	mov.b	r10,@(r0,r0)
    2858:	01 40       	.word 0x0140
    285a:	05 40       	.word 0x0540
    285c:	fb 48       	.word 0xfb48
    285e:	00 09       	nop	
    2860:	00 00       	.word 0x0000
    2862:	66 d0       	mov.b	@r13,r6
    2864:	00 00       	.word 0x0000
    2866:	9e 88       	mov.w	297a <__vfprintf_r+0x1272>,r14	! 1fe
    2868:	d0 1f       	mov.l	28e8 <__vfprintf_r+0x11e0>,r0	! 66d0 <___sprint_r>
    286a:	40 0b       	jsr	@r0
    286c:	55 f8       	mov.l	@(32,r15),r5
    286e:	20 08       	tst	r0,r0
    2870:	8b 17       	bf	28a2 <__vfprintf_r+0x119a>
    2872:	9c 35       	mov.w	28e0 <__vfprintf_r+0x11d8>,r12	! 140
    2874:	ad 97       	bra	23a6 <__vfprintf_r+0xc9e>
    2876:	3c fc       	add	r15,r12
    2878:	d0 1b       	mov.l	28e8 <__vfprintf_r+0x11e0>,r0	! 66d0 <___sprint_r>
    287a:	40 0b       	jsr	@r0
    287c:	55 f8       	mov.l	@(32,r15),r5
    287e:	20 08       	tst	r0,r0
    2880:	8b 0f       	bf	28a2 <__vfprintf_r+0x119a>
    2882:	9c 2d       	mov.w	28e0 <__vfprintf_r+0x11d8>,r12	! 140
    2884:	ad a3       	bra	23ce <__vfprintf_r+0xcc6>
    2886:	3c fc       	add	r15,r12
    2888:	d0 17       	mov.l	28e8 <__vfprintf_r+0x11e0>,r0	! 66d0 <___sprint_r>
    288a:	40 0b       	jsr	@r0
    288c:	55 f8       	mov.l	@(32,r15),r5
    288e:	20 08       	tst	r0,r0
    2890:	8b 07       	bf	28a2 <__vfprintf_r+0x119a>
    2892:	9c 25       	mov.w	28e0 <__vfprintf_r+0x11d8>,r12	! 140
    2894:	ad bd       	bra	2412 <__vfprintf_r+0xd0a>
    2896:	3c fc       	add	r15,r12
    2898:	d0 13       	mov.l	28e8 <__vfprintf_r+0x11e0>,r0	! 66d0 <___sprint_r>
    289a:	40 0b       	jsr	@r0
    289c:	55 f8       	mov.l	@(32,r15),r5
    289e:	20 08       	tst	r0,r0
    28a0:	89 02       	bt	28a8 <__vfprintf_r+0x11a0>
    28a2:	aa 0a       	bra	1cba <__vfprintf_r+0x5b2>
    28a4:	e0 44       	mov	#68,r0
    28a6:	00 09       	nop	
    28a8:	9c 1a       	mov.w	28e0 <__vfprintf_r+0x11d8>,r12	! 140
    28aa:	a8 9b       	bra	19e4 <__vfprintf_r+0x2dc>
    28ac:	3c fc       	add	r15,r12
    28ae:	00 09       	nop	
    28b0:	88 30       	cmp/eq	#48,r0
    28b2:	8b 01       	bf	28b8 <__vfprintf_r+0x11b0>
    28b4:	ae a4       	bra	2600 <__vfprintf_r+0xef8>
    28b6:	e0 4c       	mov	#76,r0
    28b8:	71 ff       	add	#-1,r1
    28ba:	e2 30       	mov	#48,r2
    28bc:	21 20       	mov.b	r2,@r1
    28be:	e1 40       	mov	#64,r1
    28c0:	50 ff       	mov.l	@(60,r15),r0
    28c2:	31 fc       	add	r15,r1
    28c4:	52 13       	mov.l	@(12,r1),r2
    28c6:	70 ff       	add	#-1,r0
    28c8:	1f 0f       	mov.l	r0,@(60,r15)
    28ca:	32 08       	sub	r0,r2
    28cc:	aa 80       	bra	1dd0 <__vfprintf_r+0x6c8>
    28ce:	1f 2b       	mov.l	r2,@(44,r15)
    28d0:	92 07       	mov.w	28e2 <__vfprintf_r+0x11da>,r2	! 540
    28d2:	90 07       	mov.w	28e4 <__vfprintf_r+0x11dc>,r0	! fb43
    28d4:	6d da       	negc	r13,r13
    28d6:	e1 2d       	mov	#45,r1
    28d8:	32 fc       	add	r15,r2
    28da:	6b ba       	negc	r11,r11
    28dc:	aa 32       	bra	1d44 <__vfprintf_r+0x63c>
    28de:	02 14       	mov.b	r1,@(r0,r2)
    28e0:	01 40       	.word 0x0140
    28e2:	05 40       	.word 0x0540
    28e4:	fb 43       	.word 0xfb43
    28e6:	00 09       	nop	
    28e8:	00 00       	.word 0x0000
    28ea:	66 d0       	mov.b	@r13,r6
    28ec:	4a 0b       	jsr	@r10
    28ee:	00 09       	nop	
    28f0:	20 08       	tst	r0,r0
    28f2:	8b 01       	bf	28f8 <__vfprintf_r+0x11f0>
    28f4:	a1 ae       	bra	2c54 <__vfprintf_r+0x154c>
    28f6:	e1 47       	mov	#71,r1
    28f8:	60 e3       	mov	r14,r0
    28fa:	ea df       	mov	#-33,r10
    28fc:	88 ff       	cmp/eq	#-1,r0
    28fe:	2a 99       	and	r9,r10
    2900:	8b 02       	bf	2908 <__vfprintf_r+0x1200>
    2902:	a0 07       	bra	2914 <__vfprintf_r+0x120c>
    2904:	ee 06       	mov	#6,r14
    2906:	00 09       	nop	
    2908:	60 a3       	mov	r10,r0
    290a:	88 47       	cmp/eq	#71,r0
    290c:	8b 02       	bf	2914 <__vfprintf_r+0x120c>
    290e:	2e e8       	tst	r14,r14
    2910:	8b 00       	bf	2914 <__vfprintf_r+0x120c>
    2912:	ee 01       	mov	#1,r14
    2914:	91 96       	mov.w	2a44 <__vfprintf_r+0x133c>,r1	! 100
    2916:	e4 00       	mov	#0,r4
    2918:	52 f5       	mov.l	@(20,r15),r2
    291a:	e0 48       	mov	#72,r0
    291c:	4b 11       	cmp/pz	r11
    291e:	22 1b       	or	r1,r2
    2920:	1f 2a       	mov.l	r2,@(40,r15)
    2922:	0f 46       	mov.l	r4,@(r0,r15)
    2924:	89 02       	bt	292c <__vfprintf_r+0x1224>
    2926:	a3 15       	bra	2f54 <__vfprintf_r+0x184c>
    2928:	e5 2d       	mov	#45,r5
    292a:	00 09       	nop	
    292c:	60 a3       	mov	r10,r0
    292e:	88 46       	cmp/eq	#70,r0
    2930:	03 29       	movt	r3
    2932:	8b 01       	bf	2938 <__vfprintf_r+0x1230>
    2934:	a2 4a       	bra	2dcc <__vfprintf_r+0x16c4>
    2936:	e7 03       	mov	#3,r7
    2938:	88 45       	cmp/eq	#69,r0
    293a:	89 01       	bt	2940 <__vfprintf_r+0x1238>
    293c:	a2 46       	bra	2dcc <__vfprintf_r+0x16c4>
    293e:	e7 02       	mov	#2,r7
    2940:	93 81       	mov.w	2a46 <__vfprintf_r+0x133e>,r3	! 88
    2942:	6d e3       	mov	r14,r13
    2944:	d0 43       	mov.l	2a54 <__vfprintf_r+0x134c>,r0	! 34cc <__dtoa_r>
    2946:	33 fc       	add	r15,r3
    2948:	1f 31       	mov.l	r3,@(4,r15)
    294a:	7d 01       	add	#1,r13
    294c:	93 7c       	mov.w	2a48 <__vfprintf_r+0x1340>,r3	! 8c
    294e:	65 b3       	mov	r11,r5
    2950:	2f d2       	mov.l	r13,@r15
    2952:	33 fc       	add	r15,r3
    2954:	1f 32       	mov.l	r3,@(8,r15)
    2956:	66 83       	mov	r8,r6
    2958:	93 77       	mov.w	2a4a <__vfprintf_r+0x1342>,r3	! 90
    295a:	e7 02       	mov	#2,r7
    295c:	54 f7       	mov.l	@(28,r15),r4
    295e:	33 fc       	add	r15,r3
    2960:	40 0b       	jsr	@r0
    2962:	1f 33       	mov.l	r3,@(12,r15)
    2964:	1f 0f       	mov.l	r0,@(60,r15)
    2966:	3d 0c       	add	r0,r13
    2968:	d0 3b       	mov.l	2a58 <__vfprintf_r+0x1350>,r0	! 9508 <___eqdf2>
    296a:	64 b3       	mov	r11,r4
    296c:	65 83       	mov	r8,r5
    296e:	e6 00       	mov	#0,r6
    2970:	40 0b       	jsr	@r0
    2972:	e7 00       	mov	#0,r7
    2974:	20 08       	tst	r0,r0
    2976:	89 0d       	bt	2994 <__vfprintf_r+0x128c>
    2978:	90 67       	mov.w	2a4a <__vfprintf_r+0x1342>,r0	! 90
    297a:	01 fe       	mov.l	@(r0,r15),r1
    297c:	3d 16       	cmp/hi	r1,r13
    297e:	89 01       	bt	2984 <__vfprintf_r+0x127c>
    2980:	a3 a8       	bra	30d4 <__vfprintf_r+0x19cc>
    2982:	6d 13       	mov	r1,r13
    2984:	e7 30       	mov	#48,r7
    2986:	00 09       	nop	
    2988:	90 5f       	mov.w	2a4a <__vfprintf_r+0x1342>,r0	! 90
    298a:	21 70       	mov.b	r7,@r1
    298c:	71 01       	add	#1,r1
    298e:	0f 16       	mov.l	r1,@(r0,r15)
    2990:	3d 10       	cmp/eq	r1,r13
    2992:	8b f9       	bf	2988 <__vfprintf_r+0x1280>
    2994:	53 ff       	mov.l	@(60,r15),r3
    2996:	e0 58       	mov	#88,r0
    2998:	3d 38       	sub	r3,r13
    299a:	0f d6       	mov.l	r13,@(r0,r15)
    299c:	60 a3       	mov	r10,r0
    299e:	88 47       	cmp/eq	#71,r0
    29a0:	8b 02       	bf	29a8 <__vfprintf_r+0x12a0>
    29a2:	a2 7a       	bra	2e9a <__vfprintf_r+0x1792>
    29a4:	00 09       	nop	
    29a6:	00 09       	nop	
    29a8:	e1 65       	mov	#101,r1
    29aa:	39 17       	cmp/gt	r1,r9
    29ac:	89 02       	bt	29b4 <__vfprintf_r+0x12ac>
    29ae:	a2 80       	bra	2eb2 <__vfprintf_r+0x17aa>
    29b0:	00 09       	nop	
    29b2:	00 09       	nop	
    29b4:	60 93       	mov	r9,r0
    29b6:	88 66       	cmp/eq	#102,r0
    29b8:	90 48       	mov.w	2a4c <__vfprintf_r+0x1344>,r0	! fb48
    29ba:	8b 01       	bf	29c0 <__vfprintf_r+0x12b8>
    29bc:	a2 dc       	bra	2f78 <__vfprintf_r+0x1870>
    29be:	00 09       	nop	
    29c0:	92 45       	mov.w	2a4e <__vfprintf_r+0x1346>,r2	! 540
    29c2:	32 fc       	add	r15,r2
    29c4:	01 2e       	mov.l	@(r0,r2),r1
    29c6:	e0 58       	mov	#88,r0
    29c8:	04 fe       	mov.l	@(r0,r15),r4
    29ca:	31 43       	cmp/ge	r4,r1
    29cc:	89 02       	bt	29d4 <__vfprintf_r+0x12cc>
    29ce:	a2 c5       	bra	2f5c <__vfprintf_r+0x1854>
    29d0:	41 15       	cmp/pl	r1
    29d2:	00 09       	nop	
    29d4:	50 f5       	mov.l	@(20,r15),r0
    29d6:	c8 01       	tst	#1,r0
    29d8:	89 02       	bt	29e0 <__vfprintf_r+0x12d8>
    29da:	a3 2f       	bra	303c <__vfprintf_r+0x1934>
    29dc:	60 13       	mov	r1,r0
    29de:	00 09       	nop	
    29e0:	41 11       	cmp/pz	r1
    29e2:	32 2a       	subc	r2,r2
    29e4:	22 19       	and	r1,r2
    29e6:	1f 29       	mov.l	r2,@(36,r15)
    29e8:	e9 67       	mov	#103,r9
    29ea:	1f 1b       	mov.l	r1,@(44,r15)
    29ec:	e0 5c       	mov	#92,r0
    29ee:	0f 16       	mov.l	r1,@(r0,r15)
    29f0:	e0 48       	mov	#72,r0
    29f2:	03 fe       	mov.l	@(r0,r15),r3
    29f4:	23 38       	tst	r3,r3
    29f6:	8b 01       	bf	29fc <__vfprintf_r+0x12f4>
    29f8:	a2 20       	bra	2e3c <__vfprintf_r+0x1734>
    29fa:	e5 00       	mov	#0,r5
    29fc:	94 27       	mov.w	2a4e <__vfprintf_r+0x1346>,r4	! 540
    29fe:	e1 2d       	mov	#45,r1
    2a00:	90 26       	mov.w	2a50 <__vfprintf_r+0x1348>,r0	! fb43
    2a02:	34 fc       	add	r15,r4
    2a04:	55 fa       	mov.l	@(40,r15),r5
    2a06:	e7 40       	mov	#64,r7
    2a08:	04 14       	mov.b	r1,@(r0,r4)
    2a0a:	37 fc       	add	r15,r7
    2a0c:	e0 00       	mov	#0,r0
    2a0e:	1f 55       	mov.l	r5,@(20,r15)
    2a10:	a9 ee       	bra	1df0 <__vfprintf_r+0x6e8>
    2a12:	17 02       	mov.l	r0,@(8,r7)
    2a14:	d4 01       	mov.l	2a1c <__vfprintf_r+0x1314>,r4	! 187a
    2a16:	44 2b       	jmp	@r4
    2a18:	73 01       	add	#1,r3
    2a1a:	00 09       	nop	
    2a1c:	00 00       	.word 0x0000
    2a1e:	18 7a       	mov.l	r7,@(40,r8)
    2a20:	96 17       	mov.w	2a52 <__vfprintf_r+0x134a>,r6	! a4
    2a22:	e2 07       	mov	#7,r2
    2a24:	2c 82       	mov.l	r8,@r12
    2a26:	36 fc       	add	r15,r6
    2a28:	51 62       	mov.l	@(8,r6),r1
    2a2a:	1c d1       	mov.l	r13,@(4,r12)
    2a2c:	31 dc       	add	r13,r1
    2a2e:	16 12       	mov.l	r1,@(8,r6)
    2a30:	51 61       	mov.l	@(4,r6),r1
    2a32:	71 01       	add	#1,r1
    2a34:	16 11       	mov.l	r1,@(4,r6)
    2a36:	31 27       	cmp/gt	r2,r1
    2a38:	8b 02       	bf	2a40 <__vfprintf_r+0x1338>
    2a3a:	ae 83       	bra	2744 <__vfprintf_r+0x103c>
    2a3c:	54 f7       	mov.l	@(28,r15),r4
    2a3e:	00 09       	nop	
    2a40:	ae 8a       	bra	2758 <__vfprintf_r+0x1050>
    2a42:	7c 08       	add	#8,r12
    2a44:	01 00       	.word 0x0100
    2a46:	00 88       	.word 0x0088
    2a48:	00 8c       	mov.b	@(r0,r8),r0
    2a4a:	00 90       	.word 0x0090
    2a4c:	fb 48       	.word 0xfb48
    2a4e:	05 40       	.word 0x0540
    2a50:	fb 43       	.word 0xfb43
    2a52:	00 a4       	mov.b	r10,@(r0,r0)
    2a54:	00 00       	.word 0x0000
    2a56:	34 cc       	add	r12,r4
    2a58:	00 00       	.word 0x0000
    2a5a:	95 08       	mov.w	2a6e <__vfprintf_r+0x1366>,r5	! 622f
    2a5c:	c9 40       	and	#64,r0
    2a5e:	20 08       	tst	r0,r0
    2a60:	8b 02       	bf	2a68 <__vfprintf_r+0x1360>
    2a62:	a0 f1       	bra	2c48 <__vfprintf_r+0x1540>
    2a64:	57 fd       	mov.l	@(52,r15),r7
    2a66:	00 09       	nop	
    2a68:	55 fd       	mov.l	@(52,r15),r5
    2a6a:	62 56       	mov.l	@r5+,r2
    2a6c:	1f 5d       	mov.l	r5,@(52,r15)
    2a6e:	62 2f       	exts.w	r2,r2
    2a70:	31 27       	cmp/gt	r2,r1
    2a72:	31 1a       	subc	r1,r1
    2a74:	6d 23       	mov	r2,r13
    2a76:	a9 61       	bra	1d3c <__vfprintf_r+0x634>
    2a78:	6b 13       	mov	r1,r11
    2a7a:	00 09       	nop	
    2a7c:	e7 40       	mov	#64,r7
    2a7e:	37 fc       	add	r15,r7
    2a80:	6b 52       	mov.l	@r5,r11
    2a82:	58 51       	mov.l	@(4,r5),r8
    2a84:	75 08       	add	#8,r5
    2a86:	17 ba       	mov.l	r11,@(40,r7)
    2a88:	17 8b       	mov.l	r8,@(44,r7)
    2a8a:	a9 c6       	bra	1e1a <__vfprintf_r+0x712>
    2a8c:	1f 5d       	mov.l	r5,@(52,r15)
    2a8e:	00 09       	nop	
    2a90:	c8 40       	tst	#64,r0
    2a92:	8b 01       	bf	2a98 <__vfprintf_r+0x1390>
    2a94:	a0 c2       	bra	2c1c <__vfprintf_r+0x1514>
    2a96:	53 fd       	mov.l	@(52,r15),r3
    2a98:	51 fd       	mov.l	@(52,r15),r1
    2a9a:	6d 12       	mov.l	@r1,r13
    2a9c:	ae 14       	bra	26c8 <__vfprintf_r+0xfc0>
    2a9e:	6d dd       	extu.w	r13,r13
    2aa0:	c8 10       	tst	#16,r0
    2aa2:	89 01       	bt	2aa8 <__vfprintf_r+0x13a0>
    2aa4:	a0 b2       	bra	2c0c <__vfprintf_r+0x1504>
    2aa6:	52 fd       	mov.l	@(52,r15),r2
    2aa8:	50 f5       	mov.l	@(20,r15),r0
    2aaa:	c8 40       	tst	#64,r0
    2aac:	8b 02       	bf	2ab4 <__vfprintf_r+0x13ac>
    2aae:	a1 d3       	bra	2e58 <__vfprintf_r+0x1750>
    2ab0:	54 fd       	mov.l	@(52,r15),r4
    2ab2:	00 09       	nop	
    2ab4:	52 fd       	mov.l	@(52,r15),r2
    2ab6:	e0 32       	mov	#50,r0
    2ab8:	03 fd       	mov.w	@(r0,r15),r3
    2aba:	61 26       	mov.l	@r2+,r1
    2abc:	1f 2d       	mov.l	r2,@(52,r15)
    2abe:	d4 01       	mov.l	2ac4 <__vfprintf_r+0x13bc>,r4	! 17ce
    2ac0:	44 2b       	jmp	@r4
    2ac2:	21 31       	mov.w	r3,@r1
    2ac4:	00 00       	.word 0x0000
    2ac6:	17 ce       	mov.l	r12,@(56,r7)
    2ac8:	c8 40       	tst	#64,r0
    2aca:	8b 01       	bf	2ad0 <__vfprintf_r+0x13c8>
    2acc:	a0 9a       	bra	2c04 <__vfprintf_r+0x14fc>
    2ace:	52 fd       	mov.l	@(52,r15),r2
    2ad0:	51 fd       	mov.l	@(52,r15),r1
    2ad2:	eb 00       	mov	#0,r11
    2ad4:	6d 16       	mov.l	@r1+,r13
    2ad6:	1f 1d       	mov.l	r1,@(52,r15)
    2ad8:	a9 e9       	bra	1eae <__vfprintf_r+0x7a6>
    2ada:	6d dd       	extu.w	r13,r13
    2adc:	c8 40       	tst	#64,r0
    2ade:	8b 01       	bf	2ae4 <__vfprintf_r+0x13dc>
    2ae0:	a0 84       	bra	2bec <__vfprintf_r+0x14e4>
    2ae2:	53 fd       	mov.l	@(52,r15),r3
    2ae4:	51 fd       	mov.l	@(52,r15),r1
    2ae6:	6d 12       	mov.l	@r1,r13
    2ae8:	ae 0c       	bra	2704 <__vfprintf_r+0xffc>
    2aea:	6d dd       	extu.w	r13,r13
    2aec:	d0 52       	mov.l	2c38 <__vfprintf_r+0x1530>,r0	! 66d0 <___sprint_r>
    2aee:	40 0b       	jsr	@r0
    2af0:	55 f8       	mov.l	@(32,r15),r5
    2af2:	20 08       	tst	r0,r0
    2af4:	8b 64       	bf	2bc0 <__vfprintf_r+0x14b8>
    2af6:	9c 9c       	mov.w	2c32 <__vfprintf_r+0x152a>,r12	! 140
    2af8:	ab 31       	bra	215e <__vfprintf_r+0xa56>
    2afa:	3c fc       	add	r15,r12
    2afc:	d1 4f       	mov.l	2c3c <__vfprintf_r+0x1534>,r1	! 9e74
    2afe:	96 99       	mov.w	2c34 <__vfprintf_r+0x152c>,r6	! a4
    2b00:	2c 12       	mov.l	r1,@r12
    2b02:	36 fc       	add	r15,r6
    2b04:	e1 01       	mov	#1,r1
    2b06:	1c 11       	mov.l	r1,@(4,r12)
    2b08:	51 62       	mov.l	@(8,r6),r1
    2b0a:	71 01       	add	#1,r1
    2b0c:	16 12       	mov.l	r1,@(8,r6)
    2b0e:	51 61       	mov.l	@(4,r6),r1
    2b10:	71 01       	add	#1,r1
    2b12:	16 11       	mov.l	r1,@(4,r6)
    2b14:	31 27       	cmp/gt	r2,r1
    2b16:	8b 01       	bf	2b1c <__vfprintf_r+0x1414>
    2b18:	a0 b0       	bra	2c7c <__vfprintf_r+0x1574>
    2b1a:	54 f7       	mov.l	@(28,r15),r4
    2b1c:	7c 08       	add	#8,r12
    2b1e:	2a a8       	tst	r10,r10
    2b20:	8b 0c       	bf	2b3c <__vfprintf_r+0x1434>
    2b22:	e0 58       	mov	#88,r0
    2b24:	05 fe       	mov.l	@(r0,r15),r5
    2b26:	25 58       	tst	r5,r5
    2b28:	8b 08       	bf	2b3c <__vfprintf_r+0x1434>
    2b2a:	50 f5       	mov.l	@(20,r15),r0
    2b2c:	c8 01       	tst	#1,r0
    2b2e:	8b 05       	bf	2b3c <__vfprintf_r+0x1434>
    2b30:	d0 01       	mov.l	2b38 <__vfprintf_r+0x1430>,r0	! 1ab8
    2b32:	40 2b       	jmp	@r0
    2b34:	50 f5       	mov.l	@(20,r15),r0
    2b36:	00 09       	nop	
    2b38:	00 00       	.word 0x0000
    2b3a:	1a b8       	mov.l	r11,@(32,r10)
    2b3c:	e0 54       	mov	#84,r0
    2b3e:	96 79       	mov.w	2c34 <__vfprintf_r+0x152c>,r6	! a4
    2b40:	01 fe       	mov.l	@(r0,r15),r1
    2b42:	36 fc       	add	r15,r6
    2b44:	e0 60       	mov	#96,r0
    2b46:	2c 12       	mov.l	r1,@r12
    2b48:	02 fe       	mov.l	@(r0,r15),r2
    2b4a:	51 62       	mov.l	@(8,r6),r1
    2b4c:	1c 21       	mov.l	r2,@(4,r12)
    2b4e:	31 2c       	add	r2,r1
    2b50:	16 12       	mov.l	r1,@(8,r6)
    2b52:	e2 07       	mov	#7,r2
    2b54:	51 61       	mov.l	@(4,r6),r1
    2b56:	71 01       	add	#1,r1
    2b58:	16 11       	mov.l	r1,@(4,r6)
    2b5a:	31 27       	cmp/gt	r2,r1
    2b5c:	8b 02       	bf	2b64 <__vfprintf_r+0x145c>
    2b5e:	a1 e7       	bra	2f30 <__vfprintf_r+0x1828>
    2b60:	54 f7       	mov.l	@(28,r15),r4
    2b62:	00 09       	nop	
    2b64:	62 c3       	mov	r12,r2
    2b66:	72 08       	add	#8,r2
    2b68:	6a ab       	neg	r10,r10
    2b6a:	4a 15       	cmp/pl	r10
    2b6c:	89 02       	bt	2b74 <__vfprintf_r+0x146c>
    2b6e:	a0 a8       	bra	2cc2 <__vfprintf_r+0x15ba>
    2b70:	50 ff       	mov.l	@(60,r15),r0
    2b72:	00 09       	nop	
    2b74:	e1 10       	mov	#16,r1
    2b76:	3a 17       	cmp/gt	r1,r10
    2b78:	d8 31       	mov.l	2c40 <__vfprintf_r+0x1538>,r8	! 9e88 <_zeroes.4041>
    2b7a:	89 01       	bt	2b80 <__vfprintf_r+0x1478>
    2b7c:	a0 d9       	bra	2d32 <__vfprintf_r+0x162a>
    2b7e:	00 09       	nop	
    2b80:	99 58       	mov.w	2c34 <__vfprintf_r+0x152c>,r9	! a4
    2b82:	eb 10       	mov	#16,r11
    2b84:	ed 07       	mov	#7,r13
    2b86:	39 fc       	add	r15,r9
    2b88:	61 93       	mov	r9,r1
    2b8a:	de 2b       	mov.l	2c38 <__vfprintf_r+0x1530>,r14	! 66d0 <___sprint_r>
    2b8c:	69 83       	mov	r8,r9
    2b8e:	68 a3       	mov	r10,r8
    2b90:	a0 06       	bra	2ba0 <__vfprintf_r+0x1498>
    2b92:	6a 13       	mov	r1,r10
    2b94:	72 08       	add	#8,r2
    2b96:	78 f0       	add	#-16,r8
    2b98:	38 b7       	cmp/gt	r11,r8
    2b9a:	89 01       	bt	2ba0 <__vfprintf_r+0x1498>
    2b9c:	a0 c8       	bra	2d30 <__vfprintf_r+0x1628>
    2b9e:	6a 83       	mov	r8,r10
    2ba0:	51 a2       	mov.l	@(8,r10),r1
    2ba2:	22 92       	mov.l	r9,@r2
    2ba4:	71 10       	add	#16,r1
    2ba6:	12 b1       	mov.l	r11,@(4,r2)
    2ba8:	1a 12       	mov.l	r1,@(8,r10)
    2baa:	51 a1       	mov.l	@(4,r10),r1
    2bac:	71 01       	add	#1,r1
    2bae:	1a 11       	mov.l	r1,@(4,r10)
    2bb0:	31 d7       	cmp/gt	r13,r1
    2bb2:	8b ef       	bf	2b94 <__vfprintf_r+0x148c>
    2bb4:	54 f7       	mov.l	@(28,r15),r4
    2bb6:	66 a3       	mov	r10,r6
    2bb8:	4e 0b       	jsr	@r14
    2bba:	55 f8       	mov.l	@(32,r15),r5
    2bbc:	20 08       	tst	r0,r0
    2bbe:	89 01       	bt	2bc4 <__vfprintf_r+0x14bc>
    2bc0:	a8 7b       	bra	1cba <__vfprintf_r+0x5b2>
    2bc2:	e0 44       	mov	#68,r0
    2bc4:	92 35       	mov.w	2c32 <__vfprintf_r+0x152a>,r2	! 140
    2bc6:	af e6       	bra	2b96 <__vfprintf_r+0x148e>
    2bc8:	32 fc       	add	r15,r2
    2bca:	00 09       	nop	
    2bcc:	40 11       	cmp/pz	r0
    2bce:	31 1a       	subc	r1,r1
    2bd0:	20 19       	and	r1,r0
    2bd2:	1f 09       	mov.l	r0,@(36,r15)
    2bd4:	61 80       	mov.b	@r8,r1
    2bd6:	1f ad       	mov.l	r10,@(52,r15)
    2bd8:	e2 40       	mov	#64,r2
    2bda:	e3 00       	mov	#0,r3
    2bdc:	32 fc       	add	r15,r2
    2bde:	12 32       	mov.l	r3,@(8,r2)
    2be0:	a9 04       	bra	1dec <__vfprintf_r+0x6e4>
    2be2:	12 37       	mov.l	r3,@(28,r2)
    2be4:	d0 17       	mov.l	2c44 <__vfprintf_r+0x153c>,r0	! 9e34
    2be6:	a9 3b       	bra	1e60 <__vfprintf_r+0x758>
    2be8:	1f 0f       	mov.l	r0,@(60,r15)
    2bea:	00 09       	nop	
    2bec:	e1 ff       	mov	#-1,r1
    2bee:	54 fd       	mov.l	@(52,r15),r4
    2bf0:	eb 00       	mov	#0,r11
    2bf2:	6d 32       	mov.l	@r3,r13
    2bf4:	74 04       	add	#4,r4
    2bf6:	1f 4d       	mov.l	r4,@(52,r15)
    2bf8:	2d d8       	tst	r13,r13
    2bfa:	61 1a       	negc	r1,r1
    2bfc:	63 1c       	extu.b	r1,r3
    2bfe:	a9 63       	bra	1ec8 <__vfprintf_r+0x7c0>
    2c00:	e2 00       	mov	#0,r2
    2c02:	00 09       	nop	
    2c04:	eb 00       	mov	#0,r11
    2c06:	6d 26       	mov.l	@r2+,r13
    2c08:	a9 51       	bra	1eae <__vfprintf_r+0x7a6>
    2c0a:	1f 2d       	mov.l	r2,@(52,r15)
    2c0c:	50 fc       	mov.l	@(48,r15),r0
    2c0e:	61 26       	mov.l	@r2+,r1
    2c10:	1f 2d       	mov.l	r2,@(52,r15)
    2c12:	d4 01       	mov.l	2c18 <__vfprintf_r+0x1510>,r4	! 17ce
    2c14:	44 2b       	jmp	@r4
    2c16:	21 02       	mov.l	r0,@r1
    2c18:	00 00       	.word 0x0000
    2c1a:	17 ce       	mov.l	r12,@(56,r7)
    2c1c:	e1 ff       	mov	#-1,r1
    2c1e:	54 fd       	mov.l	@(52,r15),r4
    2c20:	eb 00       	mov	#0,r11
    2c22:	6d 32       	mov.l	@r3,r13
    2c24:	74 04       	add	#4,r4
    2c26:	1f 4d       	mov.l	r4,@(52,r15)
    2c28:	2d d8       	tst	r13,r13
    2c2a:	61 1a       	negc	r1,r1
    2c2c:	63 1c       	extu.b	r1,r3
    2c2e:	a9 4b       	bra	1ec8 <__vfprintf_r+0x7c0>
    2c30:	e2 01       	mov	#1,r2
    2c32:	01 40       	.word 0x0140
    2c34:	00 a4       	mov.b	r10,@(r0,r0)
    2c36:	00 09       	nop	
    2c38:	00 00       	.word 0x0000
    2c3a:	66 d0       	mov.b	@r13,r6
    2c3c:	00 00       	.word 0x0000
    2c3e:	9e 74       	mov.w	2d2a <__vfprintf_r+0x1622>,r14	! abf0
    2c40:	00 00       	.word 0x0000
    2c42:	9e 88       	mov.w	2d56 <__vfprintf_r+0x164e>,r14	! 2008
    2c44:	00 00       	.word 0x0000
    2c46:	9e 34       	mov.w	2cb2 <__vfprintf_r+0x15aa>,r14	! 54f7
    2c48:	6d 76       	mov.l	@r7+,r13
    2c4a:	1f 7d       	mov.l	r7,@(52,r15)
    2c4c:	30 d7       	cmp/gt	r13,r0
    2c4e:	31 1a       	subc	r1,r1
    2c50:	a8 74       	bra	1d3c <__vfprintf_r+0x634>
    2c52:	6b 13       	mov	r1,r11
    2c54:	39 17       	cmp/gt	r1,r9
    2c56:	8b 01       	bf	2c5c <__vfprintf_r+0x1554>
    2c58:	a0 ec       	bra	2e34 <__vfprintf_r+0x172c>
    2c5a:	00 09       	nop	
    2c5c:	d0 45       	mov.l	2d74 <__vfprintf_r+0x166c>,r0	! 9e3c
    2c5e:	1f 0f       	mov.l	r0,@(60,r15)
    2c60:	91 82       	mov.w	2d68 <__vfprintf_r+0x1660>,r1	! ff7f
    2c62:	e3 03       	mov	#3,r3
    2c64:	50 f5       	mov.l	@(20,r15),r0
    2c66:	92 80       	mov.w	2d6a <__vfprintf_r+0x1662>,r2	! 540
    2c68:	20 19       	and	r1,r0
    2c6a:	1f 05       	mov.l	r0,@(20,r15)
    2c6c:	32 fc       	add	r15,r2
    2c6e:	90 7d       	mov.w	2d6c <__vfprintf_r+0x1664>,r0	! fb43
    2c70:	1f 39       	mov.l	r3,@(36,r15)
    2c72:	01 2c       	mov.b	@(r0,r2),r1
    2c74:	e0 03       	mov	#3,r0
    2c76:	af af       	bra	2bd8 <__vfprintf_r+0x14d0>
    2c78:	1f 0b       	mov.l	r0,@(44,r15)
    2c7a:	00 09       	nop	
    2c7c:	d0 3e       	mov.l	2d78 <__vfprintf_r+0x1670>,r0	! 66d0 <___sprint_r>
    2c7e:	40 0b       	jsr	@r0
    2c80:	55 f8       	mov.l	@(32,r15),r5
    2c82:	20 08       	tst	r0,r0
    2c84:	8b 4b       	bf	2d1e <__vfprintf_r+0x1616>
    2c86:	9c 72       	mov.w	2d6e <__vfprintf_r+0x1666>,r12	! 140
    2c88:	5a 82       	mov.l	@(8,r8),r10
    2c8a:	af 48       	bra	2b1e <__vfprintf_r+0x1416>
    2c8c:	3c fc       	add	r15,r12
    2c8e:	00 09       	nop	
    2c90:	73 01       	add	#1,r3
    2c92:	69 30       	mov.b	@r3,r9
    2c94:	cb 20       	or	#32,r0
    2c96:	d4 01       	mov.l	2c9c <__vfprintf_r+0x1594>,r4	! 1878
    2c98:	44 2b       	jmp	@r4
    2c9a:	1f 05       	mov.l	r0,@(20,r15)
    2c9c:	00 00       	.word 0x0000
    2c9e:	18 78       	mov.l	r7,@(32,r8)
    2ca0:	d0 35       	mov.l	2d78 <__vfprintf_r+0x1670>,r0	! 66d0 <___sprint_r>
    2ca2:	40 0b       	jsr	@r0
    2ca4:	55 f8       	mov.l	@(32,r15),r5
    2ca6:	20 08       	tst	r0,r0
    2ca8:	8b 39       	bf	2d1e <__vfprintf_r+0x1616>
    2caa:	9c 60       	mov.w	2d6e <__vfprintf_r+0x1666>,r12	! 140
    2cac:	aa 77       	bra	219e <__vfprintf_r+0xa96>
    2cae:	3c fc       	add	r15,r12
    2cb0:	d0 31       	mov.l	2d78 <__vfprintf_r+0x1670>,r0	! 66d0 <___sprint_r>
    2cb2:	54 f7       	mov.l	@(28,r15),r4
    2cb4:	40 0b       	jsr	@r0
    2cb6:	55 f8       	mov.l	@(32,r15),r5
    2cb8:	20 08       	tst	r0,r0
    2cba:	8b 30       	bf	2d1e <__vfprintf_r+0x1616>
    2cbc:	92 57       	mov.w	2d6e <__vfprintf_r+0x1666>,r2	! 140
    2cbe:	32 fc       	add	r15,r2
    2cc0:	50 ff       	mov.l	@(60,r15),r0
    2cc2:	96 55       	mov.w	2d70 <__vfprintf_r+0x1668>,r6	! a4
    2cc4:	22 02       	mov.l	r0,@r2
    2cc6:	e0 58       	mov	#88,r0
    2cc8:	01 fe       	mov.l	@(r0,r15),r1
    2cca:	36 fc       	add	r15,r6
    2ccc:	03 fe       	mov.l	@(r0,r15),r3
    2cce:	12 11       	mov.l	r1,@(4,r2)
    2cd0:	51 62       	mov.l	@(8,r6),r1
    2cd2:	31 3c       	add	r3,r1
    2cd4:	16 12       	mov.l	r1,@(8,r6)
    2cd6:	e3 07       	mov	#7,r3
    2cd8:	51 61       	mov.l	@(4,r6),r1
    2cda:	71 01       	add	#1,r1
    2cdc:	16 11       	mov.l	r1,@(4,r6)
    2cde:	31 37       	cmp/gt	r3,r1
    2ce0:	8b 02       	bf	2ce8 <__vfprintf_r+0x15e0>
    2ce2:	ab ab       	bra	243c <__vfprintf_r+0xd34>
    2ce4:	00 09       	nop	
    2ce6:	00 09       	nop	
    2ce8:	6c 23       	mov	r2,r12
    2cea:	d0 01       	mov.l	2cf0 <__vfprintf_r+0x15e8>,r0	! 1ab6
    2cec:	40 2b       	jmp	@r0
    2cee:	7c 08       	add	#8,r12
    2cf0:	00 00       	.word 0x0000
    2cf2:	1a b6       	mov.l	r11,@(24,r10)
    2cf4:	d5 21       	mov.l	2d7c <__vfprintf_r+0x1674>,r5	! 66b0 <_strlen>
    2cf6:	45 0b       	jsr	@r5
    2cf8:	00 09       	nop	
    2cfa:	40 11       	cmp/pz	r0
    2cfc:	31 1a       	subc	r1,r1
    2cfe:	1f 0b       	mov.l	r0,@(44,r15)
    2d00:	e7 40       	mov	#64,r7
    2d02:	20 19       	and	r1,r0
    2d04:	37 fc       	add	r15,r7
    2d06:	1f 09       	mov.l	r0,@(36,r15)
    2d08:	e0 00       	mov	#0,r0
    2d0a:	61 80       	mov.b	@r8,r1
    2d0c:	1f ad       	mov.l	r10,@(52,r15)
    2d0e:	17 02       	mov.l	r0,@(8,r7)
    2d10:	a8 6c       	bra	1dec <__vfprintf_r+0x6e4>
    2d12:	17 07       	mov.l	r0,@(28,r7)
    2d14:	d0 18       	mov.l	2d78 <__vfprintf_r+0x1670>,r0	! 66d0 <___sprint_r>
    2d16:	40 0b       	jsr	@r0
    2d18:	55 f8       	mov.l	@(32,r15),r5
    2d1a:	20 08       	tst	r0,r0
    2d1c:	89 04       	bt	2d28 <__vfprintf_r+0x1620>
    2d1e:	d0 01       	mov.l	2d24 <__vfprintf_r+0x161c>,r0	! 1cba
    2d20:	40 2b       	jmp	@r0
    2d22:	e0 44       	mov	#68,r0
    2d24:	00 00       	.word 0x0000
    2d26:	1c ba       	mov.l	r11,@(40,r12)
    2d28:	9c 21       	mov.w	2d6e <__vfprintf_r+0x1666>,r12	! 140
    2d2a:	ab f0       	bra	250e <__vfprintf_r+0xe06>
    2d2c:	3c fc       	add	r15,r12
    2d2e:	00 09       	nop	
    2d30:	68 93       	mov	r9,r8
    2d32:	96 1d       	mov.w	2d70 <__vfprintf_r+0x1668>,r6	! a4
    2d34:	e3 07       	mov	#7,r3
    2d36:	22 82       	mov.l	r8,@r2
    2d38:	36 fc       	add	r15,r6
    2d3a:	51 62       	mov.l	@(8,r6),r1
    2d3c:	12 a1       	mov.l	r10,@(4,r2)
    2d3e:	31 ac       	add	r10,r1
    2d40:	16 12       	mov.l	r1,@(8,r6)
    2d42:	51 61       	mov.l	@(4,r6),r1
    2d44:	71 01       	add	#1,r1
    2d46:	16 11       	mov.l	r1,@(4,r6)
    2d48:	31 37       	cmp/gt	r3,r1
    2d4a:	89 b1       	bt	2cb0 <__vfprintf_r+0x15a8>
    2d4c:	af b8       	bra	2cc0 <__vfprintf_r+0x15b8>
    2d4e:	72 08       	add	#8,r2
    2d50:	d0 09       	mov.l	2d78 <__vfprintf_r+0x1670>,r0	! 66d0 <___sprint_r>
    2d52:	40 0b       	jsr	@r0
    2d54:	55 f8       	mov.l	@(32,r15),r5
    2d56:	20 08       	tst	r0,r0
    2d58:	8b 17       	bf	2d8a <__vfprintf_r+0x1682>
    2d5a:	95 06       	mov.w	2d6a <__vfprintf_r+0x1662>,r5	! 540
    2d5c:	90 09       	mov.w	2d72 <__vfprintf_r+0x166a>,r0	! fb48
    2d5e:	35 fc       	add	r15,r5
    2d60:	9c 05       	mov.w	2d6e <__vfprintf_r+0x1666>,r12	! 140
    2d62:	02 5e       	mov.l	@(r0,r5),r2
    2d64:	ad 1b       	bra	279e <__vfprintf_r+0x1096>
    2d66:	3c fc       	add	r15,r12
    2d68:	ff 7f       	.word 0xff7f
    2d6a:	05 40       	.word 0x0540
    2d6c:	fb 43       	.word 0xfb43
    2d6e:	01 40       	.word 0x0140
    2d70:	00 a4       	mov.b	r10,@(r0,r0)
    2d72:	fb 48       	.word 0xfb48
    2d74:	00 00       	.word 0x0000
    2d76:	9e 3c       	mov.w	2df2 <__vfprintf_r+0x16ea>,r14	! 53f4
    2d78:	00 00       	.word 0x0000
    2d7a:	66 d0       	mov.b	@r13,r6
    2d7c:	00 00       	.word 0x0000
    2d7e:	66 b0       	mov.b	@r11,r6
    2d80:	d0 3d       	mov.l	2e78 <__vfprintf_r+0x1770>,r0	! 66d0 <___sprint_r>
    2d82:	40 0b       	jsr	@r0
    2d84:	55 f8       	mov.l	@(32,r15),r5
    2d86:	20 08       	tst	r0,r0
    2d88:	89 04       	bt	2d94 <__vfprintf_r+0x168c>
    2d8a:	d0 01       	mov.l	2d90 <__vfprintf_r+0x1688>,r0	! 1cba
    2d8c:	40 2b       	jmp	@r0
    2d8e:	e0 44       	mov	#68,r0
    2d90:	00 00       	.word 0x0000
    2d92:	1c ba       	mov.l	r11,@(40,r12)
    2d94:	92 68       	mov.w	2e68 <__vfprintf_r+0x1760>,r2	! 540
    2d96:	90 68       	mov.w	2e6a <__vfprintf_r+0x1762>,r0	! fb48
    2d98:	32 fc       	add	r15,r2
    2d9a:	9c 67       	mov.w	2e6c <__vfprintf_r+0x1764>,r12	! 140
    2d9c:	01 2e       	mov.l	@(r0,r2),r1
    2d9e:	e0 58       	mov	#88,r0
    2da0:	0d fe       	mov.l	@(r0,r15),r13
    2da2:	3c fc       	add	r15,r12
    2da4:	ad 17       	bra	27d6 <__vfprintf_r+0x10ce>
    2da6:	3d 18       	sub	r1,r13
    2da8:	1f eb       	mov.l	r14,@(44,r15)
    2daa:	3e 16       	cmp/hi	r1,r14
    2dac:	8b 01       	bf	2db2 <__vfprintf_r+0x16aa>
    2dae:	e0 06       	mov	#6,r0
    2db0:	1f 0b       	mov.l	r0,@(44,r15)
    2db2:	50 fb       	mov.l	@(44,r15),r0
    2db4:	1f ad       	mov.l	r10,@(52,r15)
    2db6:	40 11       	cmp/pz	r0
    2db8:	31 1a       	subc	r1,r1
    2dba:	20 19       	and	r1,r0
    2dbc:	1f 09       	mov.l	r0,@(36,r15)
    2dbe:	d0 2f       	mov.l	2e7c <__vfprintf_r+0x1774>,r0	! 9e6c
    2dc0:	d3 01       	mov.l	2dc8 <__vfprintf_r+0x16c0>,r3	! 18b0
    2dc2:	43 2b       	jmp	@r3
    2dc4:	1f 0f       	mov.l	r0,@(60,r15)
    2dc6:	00 09       	nop	
    2dc8:	00 00       	.word 0x0000
    2dca:	18 b0       	mov.l	r11,@(0,r8)
    2dcc:	92 4f       	mov.w	2e6e <__vfprintf_r+0x1766>,r2	! 88
    2dce:	65 b3       	mov	r11,r5
    2dd0:	d0 2b       	mov.l	2e80 <__vfprintf_r+0x1778>,r0	! 34cc <__dtoa_r>
    2dd2:	32 fc       	add	r15,r2
    2dd4:	1f 21       	mov.l	r2,@(4,r15)
    2dd6:	66 83       	mov	r8,r6
    2dd8:	92 4a       	mov.w	2e70 <__vfprintf_r+0x1768>,r2	! 8c
    2dda:	1f 34       	mov.l	r3,@(16,r15)
    2ddc:	32 fc       	add	r15,r2
    2dde:	1f 22       	mov.l	r2,@(8,r15)
    2de0:	92 47       	mov.w	2e72 <__vfprintf_r+0x176a>,r2	! 90
    2de2:	2f e2       	mov.l	r14,@r15
    2de4:	32 fc       	add	r15,r2
    2de6:	1f 23       	mov.l	r2,@(12,r15)
    2de8:	40 0b       	jsr	@r0
    2dea:	54 f7       	mov.l	@(28,r15),r4
    2dec:	1f 0f       	mov.l	r0,@(60,r15)
    2dee:	60 a3       	mov	r10,r0
    2df0:	88 47       	cmp/eq	#71,r0
    2df2:	53 f4       	mov.l	@(16,r15),r3
    2df4:	8b 02       	bf	2dfc <__vfprintf_r+0x16f4>
    2df6:	50 f5       	mov.l	@(20,r15),r0
    2df8:	c8 01       	tst	#1,r0
    2dfa:	89 45       	bt	2e88 <__vfprintf_r+0x1780>
    2dfc:	5d ff       	mov.l	@(60,r15),r13
    2dfe:	23 38       	tst	r3,r3
    2e00:	3d ec       	add	r14,r13
    2e02:	89 0a       	bt	2e1a <__vfprintf_r+0x1712>
    2e04:	53 ff       	mov.l	@(60,r15),r3
    2e06:	60 30       	mov.b	@r3,r0
    2e08:	88 30       	cmp/eq	#48,r0
    2e0a:	8b 01       	bf	2e10 <__vfprintf_r+0x1708>
    2e0c:	a0 fe       	bra	300c <__vfprintf_r+0x1904>
    2e0e:	64 b3       	mov	r11,r4
    2e10:	94 2a       	mov.w	2e68 <__vfprintf_r+0x1760>,r4	! 540
    2e12:	90 2a       	mov.w	2e6a <__vfprintf_r+0x1762>,r0	! fb48
    2e14:	34 fc       	add	r15,r4
    2e16:	03 4e       	mov.l	@(r0,r4),r3
    2e18:	3d 3c       	add	r3,r13
    2e1a:	ad a5       	bra	2968 <__vfprintf_r+0x1260>
    2e1c:	00 09       	nop	
    2e1e:	00 09       	nop	
    2e20:	93 22       	mov.w	2e68 <__vfprintf_r+0x1760>,r3	! 540
    2e22:	90 27       	mov.w	2e74 <__vfprintf_r+0x176c>,r0	! fb43
    2e24:	33 fc       	add	r15,r3
    2e26:	03 14       	mov.b	r1,@(r0,r3)
    2e28:	d2 01       	mov.l	2e30 <__vfprintf_r+0x1728>,r2	! 1e50
    2e2a:	42 2b       	jmp	@r2
    2e2c:	e1 2d       	mov	#45,r1
    2e2e:	00 09       	nop	
    2e30:	00 00       	.word 0x0000
    2e32:	1e 50       	mov.l	r5,@(0,r14)
    2e34:	d0 13       	mov.l	2e84 <__vfprintf_r+0x177c>,r0	! 9e40
    2e36:	af 13       	bra	2c60 <__vfprintf_r+0x1558>
    2e38:	1f 0f       	mov.l	r0,@(60,r15)
    2e3a:	00 09       	nop	
    2e3c:	92 14       	mov.w	2e68 <__vfprintf_r+0x1760>,r2	! 540
    2e3e:	90 19       	mov.w	2e74 <__vfprintf_r+0x176c>,r0	! fb43
    2e40:	32 fc       	add	r15,r2
    2e42:	53 fa       	mov.l	@(40,r15),r3
    2e44:	01 2c       	mov.b	@(r0,r2),r1
    2e46:	e0 48       	mov	#72,r0
    2e48:	1f 35       	mov.l	r3,@(20,r15)
    2e4a:	0f 56       	mov.l	r5,@(r0,r15)
    2e4c:	2f d6       	mov.l	r13,@-r15
    2e4e:	dd 01       	mov.l	2e54 <__vfprintf_r+0x174c>,r13	! 1dec
    2e50:	4d 2b       	jmp	@r13
    2e52:	6d f6       	mov.l	@r15+,r13
    2e54:	00 00       	.word 0x0000
    2e56:	1d ec       	mov.l	r14,@(48,r13)
    2e58:	50 fc       	mov.l	@(48,r15),r0
    2e5a:	61 46       	mov.l	@r4+,r1
    2e5c:	1f 4d       	mov.l	r4,@(52,r15)
    2e5e:	d4 01       	mov.l	2e64 <__vfprintf_r+0x175c>,r4	! 17ce
    2e60:	44 2b       	jmp	@r4
    2e62:	21 02       	mov.l	r0,@r1
    2e64:	00 00       	.word 0x0000
    2e66:	17 ce       	mov.l	r12,@(56,r7)
    2e68:	05 40       	.word 0x0540
    2e6a:	fb 48       	.word 0xfb48
    2e6c:	01 40       	.word 0x0140
    2e6e:	00 88       	.word 0x0088
    2e70:	00 8c       	mov.b	@(r0,r8),r0
    2e72:	00 90       	.word 0x0090
    2e74:	fb 43       	.word 0xfb43
    2e76:	00 09       	nop	
    2e78:	00 00       	.word 0x0000
    2e7a:	66 d0       	mov.b	@r13,r6
    2e7c:	00 00       	.word 0x0000
    2e7e:	9e 6c       	mov.w	2f5a <__vfprintf_r+0x1852>,r14	! 2b2a
    2e80:	00 00       	.word 0x0000
    2e82:	34 cc       	add	r12,r4
    2e84:	00 00       	.word 0x0000
    2e86:	9e 40       	mov.w	2f0a <__vfprintf_r+0x1802>,r14	! 8901
    2e88:	91 83       	mov.w	2f92 <__vfprintf_r+0x188a>,r1	! 540
    2e8a:	90 83       	mov.w	2f94 <__vfprintf_r+0x188c>,r0	! fb50
    2e8c:	31 fc       	add	r15,r1
    2e8e:	52 ff       	mov.l	@(60,r15),r2
    2e90:	00 1e       	mov.l	@(r0,r1),r0
    2e92:	e1 40       	mov	#64,r1
    2e94:	31 fc       	add	r15,r1
    2e96:	30 28       	sub	r2,r0
    2e98:	11 06       	mov.l	r0,@(24,r1)
    2e9a:	92 7a       	mov.w	2f92 <__vfprintf_r+0x188a>,r2	! 540
    2e9c:	90 7b       	mov.w	2f96 <__vfprintf_r+0x188e>,r0	! fb48
    2e9e:	32 fc       	add	r15,r2
    2ea0:	01 2e       	mov.l	@(r0,r2),r1
    2ea2:	e2 fd       	mov	#-3,r2
    2ea4:	31 23       	cmp/ge	r2,r1
    2ea6:	8b 03       	bf	2eb0 <__vfprintf_r+0x17a8>
    2ea8:	3e 13       	cmp/ge	r1,r14
    2eaa:	8b 01       	bf	2eb0 <__vfprintf_r+0x17a8>
    2eac:	ad 8c       	bra	29c8 <__vfprintf_r+0x12c0>
    2eae:	e0 58       	mov	#88,r0
    2eb0:	79 fe       	add	#-2,r9
    2eb2:	91 71       	mov.w	2f98 <__vfprintf_r+0x1890>,r1	! 80
    2eb4:	31 fc       	add	r15,r1
    2eb6:	57 12       	mov.l	@(8,r1),r7
    2eb8:	62 13       	mov	r1,r2
    2eba:	72 14       	add	#20,r2
    2ebc:	77 ff       	add	#-1,r7
    2ebe:	11 72       	mov.l	r7,@(8,r1)
    2ec0:	47 11       	cmp/pz	r7
    2ec2:	22 90       	mov.b	r9,@r2
    2ec4:	89 02       	bt	2ecc <__vfprintf_r+0x17c4>
    2ec6:	a0 e1       	bra	308c <__vfprintf_r+0x1984>
    2ec8:	71 15       	add	#21,r1
    2eca:	00 09       	nop	
    2ecc:	71 15       	add	#21,r1
    2ece:	e2 2b       	mov	#43,r2
    2ed0:	21 20       	mov.b	r2,@r1
    2ed2:	e1 09       	mov	#9,r1
    2ed4:	37 17       	cmp/gt	r1,r7
    2ed6:	89 67       	bt	2fa8 <__vfprintf_r+0x18a0>
    2ed8:	91 5e       	mov.w	2f98 <__vfprintf_r+0x1890>,r1	! 80
    2eda:	77 30       	add	#48,r7
    2edc:	e3 30       	mov	#48,r3
    2ede:	31 fc       	add	r15,r1
    2ee0:	62 13       	mov	r1,r2
    2ee2:	71 17       	add	#23,r1
    2ee4:	21 70       	mov.b	r7,@r1
    2ee6:	72 16       	add	#22,r2
    2ee8:	97 53       	mov.w	2f92 <__vfprintf_r+0x188a>,r7	! 540
    2eea:	91 56       	mov.w	2f9a <__vfprintf_r+0x1892>,r1	! fb58
    2eec:	37 fc       	add	r15,r7
    2eee:	22 30       	mov.b	r3,@r2
    2ef0:	31 7c       	add	r7,r1
    2ef2:	92 53       	mov.w	2f9c <__vfprintf_r+0x1894>,r2	! 94
    2ef4:	e3 40       	mov	#64,r3
    2ef6:	33 fc       	add	r15,r3
    2ef8:	32 fc       	add	r15,r2
    2efa:	50 36       	mov.l	@(24,r3),r0
    2efc:	31 28       	sub	r2,r1
    2efe:	52 36       	mov.l	@(24,r3),r2
    2f00:	30 1c       	add	r1,r0
    2f02:	13 1c       	mov.l	r1,@(48,r3)
    2f04:	e1 01       	mov	#1,r1
    2f06:	1f 0b       	mov.l	r0,@(44,r15)
    2f08:	32 17       	cmp/gt	r1,r2
    2f0a:	89 01       	bt	2f10 <__vfprintf_r+0x1808>
    2f0c:	a0 98       	bra	3040 <__vfprintf_r+0x1938>
    2f0e:	50 f5       	mov.l	@(20,r15),r0
    2f10:	50 fb       	mov.l	@(44,r15),r0
    2f12:	e2 00       	mov	#0,r2
    2f14:	70 01       	add	#1,r0
    2f16:	40 11       	cmp/pz	r0
    2f18:	31 1a       	subc	r1,r1
    2f1a:	1f 0b       	mov.l	r0,@(44,r15)
    2f1c:	20 19       	and	r1,r0
    2f1e:	1f 09       	mov.l	r0,@(36,r15)
    2f20:	e0 5c       	mov	#92,r0
    2f22:	ad 65       	bra	29f0 <__vfprintf_r+0x12e8>
    2f24:	0f 26       	mov.l	r2,@(r0,r15)
    2f26:	00 09       	nop	
    2f28:	61 80       	mov.b	@r8,r1
    2f2a:	ae 54       	bra	2bd6 <__vfprintf_r+0x14ce>
    2f2c:	1f eb       	mov.l	r14,@(44,r15)
    2f2e:	00 09       	nop	
    2f30:	d0 1b       	mov.l	2fa0 <__vfprintf_r+0x1898>,r0	! 66d0 <___sprint_r>
    2f32:	40 0b       	jsr	@r0
    2f34:	55 f8       	mov.l	@(32,r15),r5
    2f36:	20 08       	tst	r0,r0
    2f38:	89 04       	bt	2f44 <__vfprintf_r+0x183c>
    2f3a:	d0 01       	mov.l	2f40 <__vfprintf_r+0x1838>,r0	! 1cba
    2f3c:	40 2b       	jmp	@r0
    2f3e:	e0 44       	mov	#68,r0
    2f40:	00 00       	.word 0x0000
    2f42:	1c ba       	mov.l	r11,@(40,r12)
    2f44:	94 25       	mov.w	2f92 <__vfprintf_r+0x188a>,r4	! 540
    2f46:	90 26       	mov.w	2f96 <__vfprintf_r+0x188e>,r0	! fb48
    2f48:	34 fc       	add	r15,r4
    2f4a:	92 28       	mov.w	2f9e <__vfprintf_r+0x1896>,r2	! 140
    2f4c:	0a 4e       	mov.l	@(r0,r4),r10
    2f4e:	ae 0b       	bra	2b68 <__vfprintf_r+0x1460>
    2f50:	32 fc       	add	r15,r2
    2f52:	00 09       	nop	
    2f54:	d2 13       	mov.l	2fa4 <__vfprintf_r+0x189c>,r2	! 80000000
    2f56:	0f 56       	mov.l	r5,@(r0,r15)
    2f58:	ac e8       	bra	292c <__vfprintf_r+0x1224>
    2f5a:	2b 2a       	xor	r2,r11
    2f5c:	e2 01       	mov	#1,r2
    2f5e:	89 01       	bt	2f64 <__vfprintf_r+0x185c>
    2f60:	a0 b0       	bra	30c4 <__vfprintf_r+0x19bc>
    2f62:	62 1b       	neg	r1,r2
    2f64:	e0 58       	mov	#88,r0
    2f66:	00 fe       	mov.l	@(r0,r15),r0
    2f68:	30 2c       	add	r2,r0
    2f6a:	40 11       	cmp/pz	r0
    2f6c:	32 2a       	subc	r2,r2
    2f6e:	1f 0b       	mov.l	r0,@(44,r15)
    2f70:	20 29       	and	r2,r0
    2f72:	1f 09       	mov.l	r0,@(36,r15)
    2f74:	ad 3a       	bra	29ec <__vfprintf_r+0x12e4>
    2f76:	e9 67       	mov	#103,r9
    2f78:	93 0b       	mov.w	2f92 <__vfprintf_r+0x188a>,r3	! 540
    2f7a:	33 fc       	add	r15,r3
    2f7c:	01 3e       	mov.l	@(r0,r3),r1
    2f7e:	41 15       	cmp/pl	r1
    2f80:	8b 6a       	bf	3058 <__vfprintf_r+0x1950>
    2f82:	2e e8       	tst	r14,r14
    2f84:	8b 50       	bf	3028 <__vfprintf_r+0x1920>
    2f86:	50 f5       	mov.l	@(20,r15),r0
    2f88:	c8 01       	tst	#1,r0
    2f8a:	8b 4d       	bf	3028 <__vfprintf_r+0x1920>
    2f8c:	1f 19       	mov.l	r1,@(36,r15)
    2f8e:	ad 2d       	bra	29ec <__vfprintf_r+0x12e4>
    2f90:	1f 1b       	mov.l	r1,@(44,r15)
    2f92:	05 40       	.word 0x0540
    2f94:	fb 50       	.word 0xfb50
    2f96:	fb 48       	.word 0xfb48
    2f98:	00 80       	.word 0x0080
    2f9a:	fb 58       	.word 0xfb58
    2f9c:	00 94       	mov.b	r9,@(r0,r0)
    2f9e:	01 40       	.word 0x0140
    2fa0:	00 00       	.word 0x0000
    2fa2:	66 d0       	mov.b	@r13,r6
    2fa4:	80 00       	mov.b	r0,@(0,r0)
    2fa6:	00 00       	.word 0x0000
    2fa8:	93 96       	mov.w	30d8 <__vfprintf_r+0x19d0>,r3	! 540
    2faa:	ea 09       	mov	#9,r10
    2fac:	96 95       	mov.w	30da <__vfprintf_r+0x19d2>,r6	! fb63
    2fae:	33 fc       	add	r15,r3
    2fb0:	d8 4c       	mov.l	30e4 <__vfprintf_r+0x19dc>,r8	! 864e <___sdivsi3>
    2fb2:	36 3c       	add	r3,r6
    2fb4:	64 73       	mov	r7,r4
    2fb6:	48 0b       	jsr	@r8
    2fb8:	e5 0a       	mov	#10,r5
    2fba:	61 03       	mov	r0,r1
    2fbc:	41 08       	shll2	r1
    2fbe:	31 0c       	add	r0,r1
    2fc0:	31 1c       	add	r1,r1
    2fc2:	37 18       	sub	r1,r7
    2fc4:	77 30       	add	#48,r7
    2fc6:	26 74       	mov.b	r7,@-r6
    2fc8:	30 a7       	cmp/gt	r10,r0
    2fca:	67 03       	mov	r0,r7
    2fcc:	89 f2       	bt	2fb4 <__vfprintf_r+0x18ac>
    2fce:	63 03       	mov	r0,r3
    2fd0:	94 82       	mov.w	30d8 <__vfprintf_r+0x19d0>,r4	! 540
    2fd2:	73 30       	add	#48,r3
    2fd4:	97 81       	mov.w	30da <__vfprintf_r+0x19d2>,r7	! fb63
    2fd6:	61 63       	mov	r6,r1
    2fd8:	63 3e       	exts.b	r3,r3
    2fda:	21 34       	mov.b	r3,@-r1
    2fdc:	34 fc       	add	r15,r4
    2fde:	37 4c       	add	r4,r7
    2fe0:	37 16       	cmp/hi	r1,r7
    2fe2:	89 01       	bt	2fe8 <__vfprintf_r+0x18e0>
    2fe4:	a0 70       	bra	30c8 <__vfprintf_r+0x19c0>
    2fe6:	00 09       	nop	
    2fe8:	91 78       	mov.w	30dc <__vfprintf_r+0x19d4>,r1	! fb56
    2fea:	62 63       	mov	r6,r2
    2fec:	a0 01       	bra	2ff2 <__vfprintf_r+0x18ea>
    2fee:	31 4c       	add	r4,r1
    2ff0:	63 24       	mov.b	@r2+,r3
    2ff2:	21 30       	mov.b	r3,@r1
    2ff4:	32 70       	cmp/eq	r7,r2
    2ff6:	71 01       	add	#1,r1
    2ff8:	8b fa       	bf	2ff0 <__vfprintf_r+0x18e8>
    2ffa:	95 6d       	mov.w	30d8 <__vfprintf_r+0x19d0>,r5	! 540
    2ffc:	92 6f       	mov.w	30de <__vfprintf_r+0x19d6>,r2	! fb64
    2ffe:	35 fc       	add	r15,r5
    3000:	91 6c       	mov.w	30dc <__vfprintf_r+0x19d4>,r1	! fb56
    3002:	32 5c       	add	r5,r2
    3004:	32 68       	sub	r6,r2
    3006:	31 5c       	add	r5,r1
    3008:	af 73       	bra	2ef2 <__vfprintf_r+0x17ea>
    300a:	31 2c       	add	r2,r1
    300c:	d0 36       	mov.l	30e8 <__vfprintf_r+0x19e0>,r0	! 955c <___nedf2>
    300e:	65 83       	mov	r8,r5
    3010:	e6 00       	mov	#0,r6
    3012:	40 0b       	jsr	@r0
    3014:	e7 00       	mov	#0,r7
    3016:	20 08       	tst	r0,r0
    3018:	8b 28       	bf	306c <__vfprintf_r+0x1964>
    301a:	95 5d       	mov.w	30d8 <__vfprintf_r+0x19d0>,r5	! 540
    301c:	90 60       	mov.w	30e0 <__vfprintf_r+0x19d8>,r0	! fb48
    301e:	35 fc       	add	r15,r5
    3020:	03 5e       	mov.l	@(r0,r5),r3
    3022:	ac a1       	bra	2968 <__vfprintf_r+0x1260>
    3024:	3d 3c       	add	r3,r13
    3026:	00 09       	nop	
    3028:	7e 01       	add	#1,r14
    302a:	60 e3       	mov	r14,r0
    302c:	30 1c       	add	r1,r0
    302e:	40 11       	cmp/pz	r0
    3030:	32 2a       	subc	r2,r2
    3032:	1f 0b       	mov.l	r0,@(44,r15)
    3034:	20 29       	and	r2,r0
    3036:	ac d9       	bra	29ec <__vfprintf_r+0x12e4>
    3038:	1f 09       	mov.l	r0,@(36,r15)
    303a:	00 09       	nop	
    303c:	af 95       	bra	2f6a <__vfprintf_r+0x1862>
    303e:	70 01       	add	#1,r0
    3040:	c8 01       	tst	#1,r0
    3042:	89 01       	bt	3048 <__vfprintf_r+0x1940>
    3044:	af 65       	bra	2f12 <__vfprintf_r+0x180a>
    3046:	50 fb       	mov.l	@(44,r15),r0
    3048:	50 fb       	mov.l	@(44,r15),r0
    304a:	40 11       	cmp/pz	r0
    304c:	31 1a       	subc	r1,r1
    304e:	20 19       	and	r1,r0
    3050:	e1 00       	mov	#0,r1
    3052:	1f 09       	mov.l	r0,@(36,r15)
    3054:	ac cc       	bra	29f0 <__vfprintf_r+0x12e8>
    3056:	13 17       	mov.l	r1,@(28,r3)
    3058:	2e e8       	tst	r14,r14
    305a:	8b 0f       	bf	307c <__vfprintf_r+0x1974>
    305c:	50 f5       	mov.l	@(20,r15),r0
    305e:	c8 01       	tst	#1,r0
    3060:	8b 0c       	bf	307c <__vfprintf_r+0x1974>
    3062:	e2 01       	mov	#1,r2
    3064:	e0 01       	mov	#1,r0
    3066:	1f 29       	mov.l	r2,@(36,r15)
    3068:	ac c0       	bra	29ec <__vfprintf_r+0x12e4>
    306a:	1f 0b       	mov.l	r0,@(44,r15)
    306c:	97 34       	mov.w	30d8 <__vfprintf_r+0x19d0>,r7	! 540
    306e:	63 eb       	neg	r14,r3
    3070:	90 36       	mov.w	30e0 <__vfprintf_r+0x19d8>,r0	! fb48
    3072:	73 01       	add	#1,r3
    3074:	37 fc       	add	r15,r7
    3076:	07 36       	mov.l	r3,@(r0,r7)
    3078:	ac 76       	bra	2968 <__vfprintf_r+0x1260>
    307a:	3d 3c       	add	r3,r13
    307c:	7e 02       	add	#2,r14
    307e:	4e 11       	cmp/pz	r14
    3080:	32 2a       	subc	r2,r2
    3082:	63 e3       	mov	r14,r3
    3084:	23 29       	and	r2,r3
    3086:	1f eb       	mov.l	r14,@(44,r15)
    3088:	ac b0       	bra	29ec <__vfprintf_r+0x12e4>
    308a:	1f 39       	mov.l	r3,@(36,r15)
    308c:	e2 2d       	mov	#45,r2
    308e:	67 7b       	neg	r7,r7
    3090:	af 1f       	bra	2ed2 <__vfprintf_r+0x17ca>
    3092:	21 20       	mov.b	r2,@r1
    3094:	54 fd       	mov.l	@(52,r15),r4
    3096:	6e 02       	mov.l	@r0,r14
    3098:	74 04       	add	#4,r4
    309a:	4e 11       	cmp/pz	r14
    309c:	8b 04       	bf	30a8 <__vfprintf_r+0x19a0>
    309e:	d9 01       	mov.l	30a4 <__vfprintf_r+0x199c>,r9	! 1f8c
    30a0:	49 2b       	jmp	@r9
    30a2:	69 30       	mov.b	@r3,r9
    30a4:	00 00       	.word 0x0000
    30a6:	1f 8c       	mov.l	r8,@(48,r15)
    30a8:	69 30       	mov.b	@r3,r9
    30aa:	1f 4d       	mov.l	r4,@(52,r15)
    30ac:	d4 01       	mov.l	30b4 <__vfprintf_r+0x19ac>,r4	! 1878
    30ae:	44 2b       	jmp	@r4
    30b0:	ee ff       	mov	#-1,r14
    30b2:	00 09       	nop	
    30b4:	00 00       	.word 0x0000
    30b6:	18 78       	mov.l	r7,@(32,r8)
    30b8:	d1 01       	mov.l	30c0 <__vfprintf_r+0x19b8>,r1	! 1c8c
    30ba:	41 2b       	jmp	@r1
    30bc:	1f 0c       	mov.l	r0,@(48,r15)
    30be:	00 09       	nop	
    30c0:	00 00       	.word 0x0000
    30c2:	1c 8c       	mov.l	r8,@(48,r12)
    30c4:	af 4e       	bra	2f64 <__vfprintf_r+0x185c>
    30c6:	72 02       	add	#2,r2
    30c8:	90 06       	mov.w	30d8 <__vfprintf_r+0x19d0>,r0	! 540
    30ca:	91 07       	mov.w	30dc <__vfprintf_r+0x19d4>,r1	! fb56
    30cc:	30 fc       	add	r15,r0
    30ce:	af 10       	bra	2ef2 <__vfprintf_r+0x17ea>
    30d0:	31 0c       	add	r0,r1
    30d2:	00 09       	nop	
    30d4:	ac 5f       	bra	2996 <__vfprintf_r+0x128e>
    30d6:	53 ff       	mov.l	@(60,r15),r3
    30d8:	05 40       	.word 0x0540
    30da:	fb 63       	.word 0xfb63
    30dc:	fb 56       	.word 0xfb56
    30de:	fb 64       	.word 0xfb64
    30e0:	fb 48       	.word 0xfb48
    30e2:	00 09       	nop	
    30e4:	00 00       	.word 0x0000
    30e6:	86 4e       	.word 0x864e
    30e8:	00 00       	.word 0x0000
    30ea:	95 5c       	mov.w	31a6 <___swsetup_r+0x9e>,r5	! d115

000030ec <_vfprintf>:
    30ec:	d3 04       	mov.l	3100 <_vfprintf+0x14>,r3	! a408 <__impure_ptr>
    30ee:	62 43       	mov	r4,r2
    30f0:	d0 04       	mov.l	3104 <_vfprintf+0x18>,r0	! 1708 <__vfprintf_r>
    30f2:	61 53       	mov	r5,r1
    30f4:	67 63       	mov	r6,r7
    30f6:	64 32       	mov.l	@r3,r4
    30f8:	65 23       	mov	r2,r5
    30fa:	40 2b       	jmp	@r0
    30fc:	66 13       	mov	r1,r6
    30fe:	00 09       	nop	
    3100:	00 00       	.word 0x0000
    3102:	a4 08       	bra	3916 <__dtoa_r+0x44a>
    3104:	00 00       	.word 0x0000
    3106:	17 08       	mov.l	r0,@(32,r7)

00003108 <___swsetup_r>:
    3108:	2f 86       	mov.l	r8,@-r15
    310a:	68 53       	mov	r5,r8
    310c:	2f 96       	mov.l	r9,@-r15
    310e:	2f a6       	mov.l	r10,@-r15
    3110:	6a 43       	mov	r4,r10
    3112:	d1 38       	mov.l	31f4 <___swsetup_r+0xec>,r1	! a408 <__impure_ptr>
    3114:	4f 22       	sts.l	pr,@-r15
    3116:	64 12       	mov.l	@r1,r4
    3118:	24 48       	tst	r4,r4
    311a:	89 02       	bt	3122 <___swsetup_r+0x1a>
    311c:	52 4e       	mov.l	@(56,r4),r2
    311e:	22 28       	tst	r2,r2
    3120:	89 34       	bt	318c <___swsetup_r+0x84>
    3122:	69 83       	mov	r8,r9
    3124:	79 0c       	add	#12,r9
    3126:	60 91       	mov.w	@r9,r0
    3128:	c8 08       	tst	#8,r0
    312a:	89 13       	bt	3154 <___swsetup_r+0x4c>
    312c:	51 84       	mov.l	@(16,r8),r1
    312e:	21 18       	tst	r1,r1
    3130:	89 48       	bt	31c4 <___swsetup_r+0xbc>
    3132:	c8 01       	tst	#1,r0
    3134:	89 1a       	bt	316c <___swsetup_r+0x64>
    3136:	e2 00       	mov	#0,r2
    3138:	18 22       	mov.l	r2,@(8,r8)
    313a:	21 18       	tst	r1,r1
    313c:	52 85       	mov.l	@(20,r8),r2
    313e:	62 2b       	neg	r2,r2
    3140:	18 26       	mov.l	r2,@(24,r8)
    3142:	e2 00       	mov	#0,r2
    3144:	89 1a       	bt	317c <___swsetup_r+0x74>
    3146:	60 23       	mov	r2,r0
    3148:	4f 26       	lds.l	@r15+,pr
    314a:	6a f6       	mov.l	@r15+,r10
    314c:	69 f6       	mov.l	@r15+,r9
    314e:	68 f6       	mov.l	@r15+,r8
    3150:	00 0b       	rts	
    3152:	00 09       	nop	
    3154:	c8 10       	tst	#16,r0
    3156:	89 45       	bt	31e4 <___swsetup_r+0xdc>
    3158:	c8 04       	tst	#4,r0
    315a:	8b 1d       	bf	3198 <___swsetup_r+0x90>
    315c:	cb 08       	or	#8,r0
    315e:	51 84       	mov.l	@(16,r8),r1
    3160:	29 01       	mov.w	r0,@r9
    3162:	21 18       	tst	r1,r1
    3164:	8b e5       	bf	3132 <___swsetup_r+0x2a>
    3166:	a0 2d       	bra	31c4 <___swsetup_r+0xbc>
    3168:	00 09       	nop	
    316a:	00 09       	nop	
    316c:	c8 02       	tst	#2,r0
    316e:	e2 00       	mov	#0,r2
    3170:	8b 00       	bf	3174 <___swsetup_r+0x6c>
    3172:	52 85       	mov.l	@(20,r8),r2
    3174:	18 22       	mov.l	r2,@(8,r8)
    3176:	21 18       	tst	r1,r1
    3178:	e2 00       	mov	#0,r2
    317a:	8b e4       	bf	3146 <___swsetup_r+0x3e>
    317c:	61 91       	mov.w	@r9,r1
    317e:	60 13       	mov	r1,r0
    3180:	c8 80       	tst	#-128,r0
    3182:	89 e0       	bt	3146 <___swsetup_r+0x3e>
    3184:	cb 40       	or	#64,r0
    3186:	29 01       	mov.w	r0,@r9
    3188:	af dd       	bra	3146 <___swsetup_r+0x3e>
    318a:	e2 ff       	mov	#-1,r2
    318c:	d1 1a       	mov.l	31f8 <___swsetup_r+0xf0>,r1	! 4a90 <___sinit>
    318e:	41 0b       	jsr	@r1
    3190:	69 83       	mov	r8,r9
    3192:	af c8       	bra	3126 <___swsetup_r+0x1e>
    3194:	79 0c       	add	#12,r9
    3196:	00 09       	nop	
    3198:	55 8c       	mov.l	@(48,r8),r5
    319a:	25 58       	tst	r5,r5
    319c:	89 09       	bt	31b2 <___swsetup_r+0xaa>
    319e:	61 83       	mov	r8,r1
    31a0:	71 40       	add	#64,r1
    31a2:	35 10       	cmp/eq	r1,r5
    31a4:	89 03       	bt	31ae <___swsetup_r+0xa6>
    31a6:	d1 15       	mov.l	31fc <___swsetup_r+0xf4>,r1	! 4cc8 <__free_r>
    31a8:	41 0b       	jsr	@r1
    31aa:	64 a3       	mov	r10,r4
    31ac:	60 91       	mov.w	@r9,r0
    31ae:	e1 00       	mov	#0,r1
    31b0:	18 1c       	mov.l	r1,@(48,r8)
    31b2:	e1 db       	mov	#-37,r1
    31b4:	20 19       	and	r1,r0
    31b6:	e1 00       	mov	#0,r1
    31b8:	18 11       	mov.l	r1,@(4,r8)
    31ba:	cb 08       	or	#8,r0
    31bc:	51 84       	mov.l	@(16,r8),r1
    31be:	29 01       	mov.w	r0,@r9
    31c0:	af cf       	bra	3162 <___swsetup_r+0x5a>
    31c2:	28 12       	mov.l	r1,@r8
    31c4:	93 14       	mov.w	31f0 <___swsetup_r+0xe8>,r3	! 280
    31c6:	92 14       	mov.w	31f2 <___swsetup_r+0xea>,r2	! 200
    31c8:	23 09       	and	r0,r3
    31ca:	33 20       	cmp/eq	r2,r3
    31cc:	89 b1       	bt	3132 <___swsetup_r+0x2a>
    31ce:	d1 0c       	mov.l	3200 <___swsetup_r+0xf8>,r1	! 506c <___smakebuf_r>
    31d0:	64 a3       	mov	r10,r4
    31d2:	41 0b       	jsr	@r1
    31d4:	65 83       	mov	r8,r5
    31d6:	60 91       	mov.w	@r9,r0
    31d8:	c8 01       	tst	#1,r0
    31da:	51 84       	mov.l	@(16,r8),r1
    31dc:	89 c6       	bt	316c <___swsetup_r+0x64>
    31de:	af ab       	bra	3138 <___swsetup_r+0x30>
    31e0:	e2 00       	mov	#0,r2
    31e2:	00 09       	nop	
    31e4:	e1 09       	mov	#9,r1
    31e6:	2a 12       	mov.l	r1,@r10
    31e8:	cb 40       	or	#64,r0
    31ea:	29 01       	mov.w	r0,@r9
    31ec:	af ab       	bra	3146 <___swsetup_r+0x3e>
    31ee:	e2 ff       	mov	#-1,r2
    31f0:	02 80       	.word 0x0280
    31f2:	02 00       	.word 0x0200
    31f4:	00 00       	.word 0x0000
    31f6:	a4 08       	bra	3a0a <__dtoa_r+0x53e>
    31f8:	00 00       	.word 0x0000
    31fa:	4a 90       	.word 0x4a90
    31fc:	00 00       	.word 0x0000
    31fe:	4c c8       	.word 0x4cc8
    3200:	00 00       	.word 0x0000
    3202:	50 6c       	mov.l	@(48,r6),r0

00003204 <___call_exitprocs>:
    3204:	2f 86       	mov.l	r8,@-r15
    3206:	2f 96       	mov.l	r9,@-r15
    3208:	2f a6       	mov.l	r10,@-r15
    320a:	2f b6       	mov.l	r11,@-r15
    320c:	2f c6       	mov.l	r12,@-r15
    320e:	2f d6       	mov.l	r13,@-r15
    3210:	6d 53       	mov	r5,r13
    3212:	d1 46       	mov.l	332c <___call_exitprocs+0x128>,r1	! 9e2c <__global_impure_ptr>
    3214:	2f e6       	mov.l	r14,@-r15
    3216:	61 12       	mov.l	@r1,r1
    3218:	4f 22       	sts.l	pr,@-r15
    321a:	7f ec       	add	#-20,r15
    321c:	1f 44       	mov.l	r4,@(16,r15)
    321e:	1f 13       	mov.l	r1,@(12,r15)
    3220:	51 f3       	mov.l	@(12,r15),r1
    3222:	90 7d       	mov.w	3320 <___call_exitprocs+0x11c>,r0	! 13c
    3224:	5c f3       	mov.l	@(12,r15),r12
    3226:	31 0c       	add	r0,r1
    3228:	59 13       	mov.l	@(12,r1),r9
    322a:	91 7a       	mov.w	3322 <___call_exitprocs+0x11e>,r1	! 148
    322c:	29 98       	tst	r9,r9
    322e:	3c 1c       	add	r1,r12
    3230:	89 27       	bt	3282 <___call_exitprocs+0x7e>
    3232:	9e 77       	mov.w	3324 <___call_exitprocs+0x120>,r14	! 80
    3234:	61 d3       	mov	r13,r1
    3236:	6b 93       	mov	r9,r11
    3238:	6d c3       	mov	r12,r13
    323a:	6c 13       	mov	r1,r12
    323c:	58 b1       	mov.l	@(4,r11),r8
    323e:	78 ff       	add	#-1,r8
    3240:	48 11       	cmp/pz	r8
    3242:	8b 1b       	bf	327c <___call_exitprocs+0x78>
    3244:	91 6f       	mov.w	3326 <___call_exitprocs+0x122>,r1	! 88
    3246:	6a 83       	mov	r8,r10
    3248:	92 6e       	mov.w	3328 <___call_exitprocs+0x124>,r2	! fc
    324a:	31 bc       	add	r11,r1
    324c:	69 13       	mov	r1,r9
    324e:	39 2c       	add	r2,r9
    3250:	4a 08       	shll2	r10
    3252:	3a 1c       	add	r1,r10
    3254:	1f 12       	mov.l	r1,@(8,r15)
    3256:	61 93       	mov	r9,r1
    3258:	69 c3       	mov	r12,r9
    325a:	6c d3       	mov	r13,r12
    325c:	6d b3       	mov	r11,r13
    325e:	6b 13       	mov	r1,r11
    3260:	29 98       	tst	r9,r9
    3262:	89 19       	bt	3298 <___call_exitprocs+0x94>
    3264:	60 e3       	mov	r14,r0
    3266:	02 ae       	mov.l	@(r0,r10),r2
    3268:	32 90       	cmp/eq	r9,r2
    326a:	89 15       	bt	3298 <___call_exitprocs+0x94>
    326c:	78 ff       	add	#-1,r8
    326e:	60 83       	mov	r8,r0
    3270:	88 ff       	cmp/eq	#-1,r0
    3272:	7a fc       	add	#-4,r10
    3274:	8b f4       	bf	3260 <___call_exitprocs+0x5c>
    3276:	6b d3       	mov	r13,r11
    3278:	6d c3       	mov	r12,r13
    327a:	6c 93       	mov	r9,r12
    327c:	d1 2c       	mov.l	3330 <___call_exitprocs+0x12c>,r1	! 0
    327e:	21 18       	tst	r1,r1
    3280:	8b 3c       	bf	32fc <___call_exitprocs+0xf8>
    3282:	7f 14       	add	#20,r15
    3284:	4f 26       	lds.l	@r15+,pr
    3286:	6e f6       	mov.l	@r15+,r14
    3288:	6d f6       	mov.l	@r15+,r13
    328a:	6c f6       	mov.l	@r15+,r12
    328c:	6b f6       	mov.l	@r15+,r11
    328e:	6a f6       	mov.l	@r15+,r10
    3290:	69 f6       	mov.l	@r15+,r9
    3292:	68 f6       	mov.l	@r15+,r8
    3294:	00 0b       	rts	
    3296:	00 09       	nop	
    3298:	51 f2       	mov.l	@(8,r15),r1
    329a:	62 a3       	mov	r10,r2
    329c:	57 d1       	mov.l	@(4,r13),r7
    329e:	32 18       	sub	r1,r2
    32a0:	32 dc       	add	r13,r2
    32a2:	77 ff       	add	#-1,r7
    32a4:	37 80       	cmp/eq	r8,r7
    32a6:	56 22       	mov.l	@(8,r2),r6
    32a8:	89 22       	bt	32f0 <___call_exitprocs+0xec>
    32aa:	e7 00       	mov	#0,r7
    32ac:	12 72       	mov.l	r7,@(8,r2)
    32ae:	26 68       	tst	r6,r6
    32b0:	89 dc       	bt	326c <___call_exitprocs+0x68>
    32b2:	52 d1       	mov.l	@(4,r13),r2
    32b4:	e4 01       	mov	#1,r4
    32b6:	d0 1f       	mov.l	3334 <___call_exitprocs+0x130>,r0	! 8514 <___ashlsi3>
    32b8:	65 83       	mov	r8,r5
    32ba:	1f 21       	mov.l	r2,@(4,r15)
    32bc:	40 0b       	jsr	@r0
    32be:	2f 62       	mov.l	r6,@r15
    32c0:	52 b1       	mov.l	@(4,r11),r2
    32c2:	66 f2       	mov.l	@r15,r6
    32c4:	20 28       	tst	r2,r0
    32c6:	89 0f       	bt	32e8 <___call_exitprocs+0xe4>
    32c8:	52 b2       	mov.l	@(8,r11),r2
    32ca:	20 28       	tst	r2,r0
    32cc:	8b 12       	bf	32f4 <___call_exitprocs+0xf0>
    32ce:	54 f4       	mov.l	@(16,r15),r4
    32d0:	46 0b       	jsr	@r6
    32d2:	65 a2       	mov.l	@r10,r5
    32d4:	52 d1       	mov.l	@(4,r13),r2
    32d6:	51 f1       	mov.l	@(4,r15),r1
    32d8:	32 10       	cmp/eq	r1,r2
    32da:	8b 02       	bf	32e2 <___call_exitprocs+0xde>
    32dc:	62 c2       	mov.l	@r12,r2
    32de:	32 d0       	cmp/eq	r13,r2
    32e0:	89 c4       	bt	326c <___call_exitprocs+0x68>
    32e2:	af 9d       	bra	3220 <___call_exitprocs+0x1c>
    32e4:	6d 93       	mov	r9,r13
    32e6:	00 09       	nop	
    32e8:	46 0b       	jsr	@r6
    32ea:	00 09       	nop	
    32ec:	af f3       	bra	32d6 <___call_exitprocs+0xd2>
    32ee:	52 d1       	mov.l	@(4,r13),r2
    32f0:	af dd       	bra	32ae <___call_exitprocs+0xaa>
    32f2:	1d 81       	mov.l	r8,@(4,r13)
    32f4:	46 0b       	jsr	@r6
    32f6:	64 a2       	mov.l	@r10,r4
    32f8:	af ed       	bra	32d6 <___call_exitprocs+0xd2>
    32fa:	52 d1       	mov.l	@(4,r13),r2
    32fc:	52 b1       	mov.l	@(4,r11),r2
    32fe:	22 28       	tst	r2,r2
    3300:	62 b2       	mov.l	@r11,r2
    3302:	8b 0a       	bf	331a <___call_exitprocs+0x116>
    3304:	22 28       	tst	r2,r2
    3306:	89 07       	bt	3318 <___call_exitprocs+0x114>
    3308:	64 b3       	mov	r11,r4
    330a:	41 0b       	jsr	@r1
    330c:	2d 22       	mov.l	r2,@r13
    330e:	6b d2       	mov.l	@r13,r11
    3310:	2b b8       	tst	r11,r11
    3312:	8b 93       	bf	323c <___call_exitprocs+0x38>
    3314:	af b5       	bra	3282 <___call_exitprocs+0x7e>
    3316:	00 09       	nop	
    3318:	e2 00       	mov	#0,r2
    331a:	6d b3       	mov	r11,r13
    331c:	af f8       	bra	3310 <___call_exitprocs+0x10c>
    331e:	6b 23       	mov	r2,r11
    3320:	01 3c       	mov.b	@(r0,r3),r1
    3322:	01 48       	.word 0x0148
    3324:	00 80       	.word 0x0080
    3326:	00 88       	.word 0x0088
    3328:	00 fc       	mov.b	@(r0,r15),r0
    332a:	00 09       	nop	
    332c:	00 00       	.word 0x0000
    332e:	9e 2c       	mov.w	338a <_quorem+0x52>,r14	! 6e93
    3330:	00 00       	.word 0x0000
    3332:	00 00       	.word 0x0000
    3334:	00 00       	.word 0x0000
    3336:	85 14       	mov.w	@(8,r1),r0

00003338 <_quorem>:
    3338:	2f 86       	mov.l	r8,@-r15
    333a:	e0 00       	mov	#0,r0
    333c:	2f 96       	mov.l	r9,@-r15
    333e:	2f a6       	mov.l	r10,@-r15
    3340:	2f b6       	mov.l	r11,@-r15
    3342:	2f c6       	mov.l	r12,@-r15
    3344:	2f d6       	mov.l	r13,@-r15
    3346:	2f e6       	mov.l	r14,@-r15
    3348:	4f 22       	sts.l	pr,@-r15
    334a:	51 54       	mov.l	@(16,r5),r1
    334c:	7f e8       	add	#-24,r15
    334e:	52 44       	mov.l	@(16,r4),r2
    3350:	1f 41       	mov.l	r4,@(4,r15)
    3352:	31 27       	cmp/gt	r2,r1
    3354:	1f 52       	mov.l	r5,@(8,r15)
    3356:	8b 01       	bf	335c <_quorem+0x24>
    3358:	a0 a4       	bra	34a4 <_quorem+0x16c>
    335a:	00 09       	nop	
    335c:	60 13       	mov	r1,r0
    335e:	70 04       	add	#4,r0
    3360:	40 08       	shll2	r0
    3362:	6d 53       	mov	r5,r13
    3364:	3d 0c       	add	r0,r13
    3366:	69 53       	mov	r5,r9
    3368:	6a 13       	mov	r1,r10
    336a:	65 d2       	mov.l	@r13,r5
    336c:	66 43       	mov	r4,r6
    336e:	d1 53       	mov.l	34bc <_quorem+0x184>,r1	! 870e <___udivsi3>
    3370:	76 14       	add	#20,r6
    3372:	04 4e       	mov.l	@(r0,r4),r4
    3374:	41 0b       	jsr	@r1
    3376:	75 01       	add	#1,r5
    3378:	1f 63       	mov.l	r6,@(12,r15)
    337a:	20 08       	tst	r0,r0
    337c:	2f 02       	mov.l	r0,@r15
    337e:	79 14       	add	#20,r9
    3380:	7a ff       	add	#-1,r10
    3382:	89 4c       	bt	341e <_quorem+0xe6>
    3384:	5c f3       	mov.l	@(12,r15),r12
    3386:	e1 00       	mov	#0,r1
    3388:	d7 4d       	mov.l	34c0 <_quorem+0x188>,r7	! ffff
    338a:	6e 93       	mov	r9,r14
    338c:	1f 94       	mov.l	r9,@(16,r15)
    338e:	eb 00       	mov	#0,r11
    3390:	1f a5       	mov.l	r10,@(20,r15)
    3392:	6a 13       	mov	r1,r10
    3394:	69 e6       	mov.l	@r14+,r9
    3396:	d0 4b       	mov.l	34c4 <_quorem+0x18c>,r0	! 862c <___mulsi3>
    3398:	64 93       	mov	r9,r4
    339a:	24 79       	and	r7,r4
    339c:	40 0b       	jsr	@r0
    339e:	65 f2       	mov.l	@r15,r5
    33a0:	64 93       	mov	r9,r4
    33a2:	d9 48       	mov.l	34c4 <_quorem+0x18c>,r9	! 862c <___mulsi3>
    33a4:	68 03       	mov	r0,r8
    33a6:	49 0b       	jsr	@r9
    33a8:	44 29       	shlr16	r4
    33aa:	62 c2       	mov.l	@r12,r2
    33ac:	38 ac       	add	r10,r8
    33ae:	66 83       	mov	r8,r6
    33b0:	61 23       	mov	r2,r1
    33b2:	21 79       	and	r7,r1
    33b4:	31 bc       	add	r11,r1
    33b6:	46 29       	shlr16	r6
    33b8:	28 79       	and	r7,r8
    33ba:	36 0c       	add	r0,r6
    33bc:	31 88       	sub	r8,r1
    33be:	6a 63       	mov	r6,r10
    33c0:	63 19       	swap.w	r1,r3
    33c2:	42 29       	shlr16	r2
    33c4:	26 79       	and	r7,r6
    33c6:	32 68       	sub	r6,r2
    33c8:	63 3f       	exts.w	r3,r3
    33ca:	32 3c       	add	r3,r2
    33cc:	6b 29       	swap.w	r2,r11
    33ce:	21 79       	and	r7,r1
    33d0:	42 28       	shll16	r2
    33d2:	22 1b       	or	r1,r2
    33d4:	2c 22       	mov.l	r2,@r12
    33d6:	3d e2       	cmp/hs	r14,r13
    33d8:	4a 29       	shlr16	r10
    33da:	6b bf       	exts.w	r11,r11
    33dc:	7c 04       	add	#4,r12
    33de:	89 d9       	bt	3394 <_quorem+0x5c>
    33e0:	5a f5       	mov.l	@(20,r15),r10
    33e2:	56 f1       	mov.l	@(4,r15),r6
    33e4:	62 a3       	mov	r10,r2
    33e6:	72 05       	add	#5,r2
    33e8:	42 08       	shll2	r2
    33ea:	32 6c       	add	r6,r2
    33ec:	61 22       	mov.l	@r2,r1
    33ee:	59 f4       	mov.l	@(16,r15),r9
    33f0:	21 18       	tst	r1,r1
    33f2:	8b 14       	bf	341e <_quorem+0xe6>
    33f4:	56 f3       	mov.l	@(12,r15),r6
    33f6:	61 23       	mov	r2,r1
    33f8:	71 fc       	add	#-4,r1
    33fa:	36 12       	cmp/hs	r1,r6
    33fc:	89 0d       	bt	341a <_quorem+0xe2>
    33fe:	72 c0       	add	#-64,r2
    3400:	52 2f       	mov.l	@(60,r2),r2
    3402:	22 28       	tst	r2,r2
    3404:	8b 09       	bf	341a <_quorem+0xe2>
    3406:	a0 04       	bra	3412 <_quorem+0xda>
    3408:	63 63       	mov	r6,r3
    340a:	00 09       	nop	
    340c:	62 12       	mov.l	@r1,r2
    340e:	22 28       	tst	r2,r2
    3410:	8b 03       	bf	341a <_quorem+0xe2>
    3412:	71 fc       	add	#-4,r1
    3414:	33 12       	cmp/hs	r1,r3
    3416:	7a ff       	add	#-1,r10
    3418:	8b f8       	bf	340c <_quorem+0xd4>
    341a:	56 f1       	mov.l	@(4,r15),r6
    341c:	16 a4       	mov.l	r10,@(16,r6)
    341e:	d0 2a       	mov.l	34c8 <_quorem+0x190>,r0	! 5efc <___mcmp>
    3420:	54 f1       	mov.l	@(4,r15),r4
    3422:	40 0b       	jsr	@r0
    3424:	55 f2       	mov.l	@(8,r15),r5
    3426:	40 11       	cmp/pz	r0
    3428:	8b 3b       	bf	34a2 <_quorem+0x16a>
    342a:	60 f2       	mov.l	@r15,r0
    342c:	e7 00       	mov	#0,r7
    342e:	56 f3       	mov.l	@(12,r15),r6
    3430:	70 01       	add	#1,r0
    3432:	d3 23       	mov.l	34c0 <_quorem+0x188>,r3	! ffff
    3434:	2f 02       	mov.l	r0,@r15
    3436:	00 09       	nop	
    3438:	62 62       	mov.l	@r6,r2
    343a:	65 96       	mov.l	@r9+,r5
    343c:	61 23       	mov	r2,r1
    343e:	21 39       	and	r3,r1
    3440:	31 7c       	add	r7,r1
    3442:	67 53       	mov	r5,r7
    3444:	27 39       	and	r3,r7
    3446:	31 78       	sub	r7,r1
    3448:	67 53       	mov	r5,r7
    344a:	47 29       	shlr16	r7
    344c:	27 39       	and	r3,r7
    344e:	42 29       	shlr16	r2
    3450:	32 78       	sub	r7,r2
    3452:	67 19       	swap.w	r1,r7
    3454:	67 7f       	exts.w	r7,r7
    3456:	32 7c       	add	r7,r2
    3458:	67 29       	swap.w	r2,r7
    345a:	21 39       	and	r3,r1
    345c:	42 28       	shll16	r2
    345e:	22 1b       	or	r1,r2
    3460:	26 22       	mov.l	r2,@r6
    3462:	3d 92       	cmp/hs	r9,r13
    3464:	67 7f       	exts.w	r7,r7
    3466:	76 04       	add	#4,r6
    3468:	89 e6       	bt	3438 <_quorem+0x100>
    346a:	62 a3       	mov	r10,r2
    346c:	56 f1       	mov.l	@(4,r15),r6
    346e:	72 05       	add	#5,r2
    3470:	42 08       	shll2	r2
    3472:	32 6c       	add	r6,r2
    3474:	61 22       	mov.l	@r2,r1
    3476:	21 18       	tst	r1,r1
    3478:	8b 13       	bf	34a2 <_quorem+0x16a>
    347a:	59 f3       	mov.l	@(12,r15),r9
    347c:	61 23       	mov	r2,r1
    347e:	71 fc       	add	#-4,r1
    3480:	39 12       	cmp/hs	r1,r9
    3482:	89 0c       	bt	349e <_quorem+0x166>
    3484:	72 c0       	add	#-64,r2
    3486:	52 2f       	mov.l	@(60,r2),r2
    3488:	22 28       	tst	r2,r2
    348a:	8b 08       	bf	349e <_quorem+0x166>
    348c:	a0 03       	bra	3496 <_quorem+0x15e>
    348e:	63 93       	mov	r9,r3
    3490:	62 12       	mov.l	@r1,r2
    3492:	22 28       	tst	r2,r2
    3494:	8b 03       	bf	349e <_quorem+0x166>
    3496:	71 fc       	add	#-4,r1
    3498:	33 12       	cmp/hs	r1,r3
    349a:	7a ff       	add	#-1,r10
    349c:	8b f8       	bf	3490 <_quorem+0x158>
    349e:	56 f1       	mov.l	@(4,r15),r6
    34a0:	16 a4       	mov.l	r10,@(16,r6)
    34a2:	60 f2       	mov.l	@r15,r0
    34a4:	7f 18       	add	#24,r15
    34a6:	4f 26       	lds.l	@r15+,pr
    34a8:	6e f6       	mov.l	@r15+,r14
    34aa:	6d f6       	mov.l	@r15+,r13
    34ac:	6c f6       	mov.l	@r15+,r12
    34ae:	6b f6       	mov.l	@r15+,r11
    34b0:	6a f6       	mov.l	@r15+,r10
    34b2:	69 f6       	mov.l	@r15+,r9
    34b4:	68 f6       	mov.l	@r15+,r8
    34b6:	00 0b       	rts	
    34b8:	00 09       	nop	
    34ba:	00 09       	nop	
    34bc:	00 00       	.word 0x0000
    34be:	87 0e       	.word 0x870e
    34c0:	00 00       	.word 0x0000
    34c2:	ff ff       	.word 0xffff
    34c4:	00 00       	.word 0x0000
    34c6:	86 2c       	.word 0x862c
    34c8:	00 00       	.word 0x0000
    34ca:	5e fc       	mov.l	@(48,r15),r14

000034cc <__dtoa_r>:
    34cc:	2f 86       	mov.l	r8,@-r15
    34ce:	2f 96       	mov.l	r9,@-r15
    34d0:	2f a6       	mov.l	r10,@-r15
    34d2:	6a 43       	mov	r4,r10
    34d4:	2f b6       	mov.l	r11,@-r15
    34d6:	7a 40       	add	#64,r10
    34d8:	2f c6       	mov.l	r12,@-r15
    34da:	2f d6       	mov.l	r13,@-r15
    34dc:	6d 53       	mov	r5,r13
    34de:	2f e6       	mov.l	r14,@-r15
    34e0:	6e 63       	mov	r6,r14
    34e2:	4f 22       	sts.l	pr,@-r15
    34e4:	5b a0       	mov.l	@(0,r10),r11
    34e6:	7f 90       	add	#-112,r15
    34e8:	90 64       	mov.w	35b4 <__dtoa_r+0xe8>,r0	! 98
    34ea:	2b b8       	tst	r11,r11
    34ec:	1f 42       	mov.l	r4,@(8,r15)
    34ee:	1f 73       	mov.l	r7,@(12,r15)
    34f0:	09 fe       	mov.l	@(r0,r15),r9
    34f2:	89 0b       	bt	350c <__dtoa_r+0x40>
    34f4:	55 a1       	mov.l	@(4,r10),r5
    34f6:	e4 01       	mov	#1,r4
    34f8:	d0 30       	mov.l	35bc <__dtoa_r+0xf0>,r0	! 8514 <___ashlsi3>
    34fa:	d8 31       	mov.l	35c0 <__dtoa_r+0xf4>,r8	! 5918 <__Bfree>
    34fc:	40 0b       	jsr	@r0
    34fe:	1b 51       	mov.l	r5,@(4,r11)
    3500:	1b 02       	mov.l	r0,@(8,r11)
    3502:	65 b3       	mov	r11,r5
    3504:	48 0b       	jsr	@r8
    3506:	54 f2       	mov.l	@(8,r15),r4
    3508:	e1 00       	mov	#0,r1
    350a:	1a 10       	mov.l	r1,@(0,r10)
    350c:	4d 11       	cmp/pz	r13
    350e:	6c d3       	mov	r13,r12
    3510:	8b 4a       	bf	35a8 <__dtoa_r+0xdc>
    3512:	e2 00       	mov	#0,r2
    3514:	29 22       	mov.l	r2,@r9
    3516:	d2 2b       	mov.l	35c4 <__dtoa_r+0xf8>,r2	! 7ff00000
    3518:	63 c3       	mov	r12,r3
    351a:	23 29       	and	r2,r3
    351c:	33 20       	cmp/eq	r2,r3
    351e:	89 21       	bt	3564 <__dtoa_r+0x98>
    3520:	d1 29       	mov.l	35c8 <__dtoa_r+0xfc>,r1	! 9508 <___eqdf2>
    3522:	64 d3       	mov	r13,r4
    3524:	65 e3       	mov	r14,r5
    3526:	e6 00       	mov	#0,r6
    3528:	41 0b       	jsr	@r1
    352a:	e7 00       	mov	#0,r7
    352c:	20 08       	tst	r0,r0
    352e:	8b 53       	bf	35d8 <__dtoa_r+0x10c>
    3530:	90 41       	mov.w	35b6 <__dtoa_r+0xea>,r0	! 94
    3532:	e1 01       	mov	#1,r1
    3534:	02 fe       	mov.l	@(r0,r15),r2
    3536:	70 08       	add	#8,r0
    3538:	03 fe       	mov.l	@(r0,r15),r3
    353a:	22 12       	mov.l	r1,@r2
    353c:	23 38       	tst	r3,r3
    353e:	8b 01       	bf	3544 <__dtoa_r+0x78>
    3540:	a1 46       	bra	37d0 <__dtoa_r+0x304>
    3542:	00 09       	nop	
    3544:	d1 21       	mov.l	35cc <__dtoa_r+0x100>,r1	! 9e75
    3546:	6d 13       	mov	r1,r13
    3548:	23 12       	mov.l	r1,@r3
    354a:	7d ff       	add	#-1,r13
    354c:	60 d3       	mov	r13,r0
    354e:	7f 70       	add	#112,r15
    3550:	4f 26       	lds.l	@r15+,pr
    3552:	6e f6       	mov.l	@r15+,r14
    3554:	6d f6       	mov.l	@r15+,r13
    3556:	6c f6       	mov.l	@r15+,r12
    3558:	6b f6       	mov.l	@r15+,r11
    355a:	6a f6       	mov.l	@r15+,r10
    355c:	69 f6       	mov.l	@r15+,r9
    355e:	68 f6       	mov.l	@r15+,r8
    3560:	00 0b       	rts	
    3562:	00 09       	nop	
    3564:	90 27       	mov.w	35b6 <__dtoa_r+0xea>,r0	! 94
    3566:	2e e8       	tst	r14,r14
    3568:	92 26       	mov.w	35b8 <__dtoa_r+0xec>,r2	! 270f
    356a:	01 fe       	mov.l	@(r0,r15),r1
    356c:	21 22       	mov.l	r2,@r1
    356e:	8b 01       	bf	3574 <__dtoa_r+0xa8>
    3570:	a0 fe       	bra	3770 <__dtoa_r+0x2a4>
    3572:	00 09       	nop	
    3574:	dd 16       	mov.l	35d0 <__dtoa_r+0x104>,r13	! 9ea4
    3576:	90 20       	mov.w	35ba <__dtoa_r+0xee>,r0	! 9c
    3578:	02 fe       	mov.l	@(r0,r15),r2
    357a:	22 28       	tst	r2,r2
    357c:	89 e6       	bt	354c <__dtoa_r+0x80>
    357e:	62 d3       	mov	r13,r2
    3580:	72 03       	add	#3,r2
    3582:	63 20       	mov.b	@r2,r3
    3584:	23 38       	tst	r3,r3
    3586:	89 00       	bt	358a <__dtoa_r+0xbe>
    3588:	72 05       	add	#5,r2
    358a:	90 16       	mov.w	35ba <__dtoa_r+0xee>,r0	! 9c
    358c:	03 fe       	mov.l	@(r0,r15),r3
    358e:	60 d3       	mov	r13,r0
    3590:	23 22       	mov.l	r2,@r3
    3592:	7f 70       	add	#112,r15
    3594:	4f 26       	lds.l	@r15+,pr
    3596:	6e f6       	mov.l	@r15+,r14
    3598:	6d f6       	mov.l	@r15+,r13
    359a:	6c f6       	mov.l	@r15+,r12
    359c:	6b f6       	mov.l	@r15+,r11
    359e:	6a f6       	mov.l	@r15+,r10
    35a0:	69 f6       	mov.l	@r15+,r9
    35a2:	68 f6       	mov.l	@r15+,r8
    35a4:	00 0b       	rts	
    35a6:	00 09       	nop	
    35a8:	e2 01       	mov	#1,r2
    35aa:	29 22       	mov.l	r2,@r9
    35ac:	d2 09       	mov.l	35d4 <__dtoa_r+0x108>,r2	! 7fffffff
    35ae:	2c 29       	and	r2,r12
    35b0:	af b1       	bra	3516 <__dtoa_r+0x4a>
    35b2:	6d c3       	mov	r12,r13
    35b4:	00 98       	.word 0x0098
    35b6:	00 94       	mov.b	r9,@(r0,r0)
    35b8:	27 0f       	muls.w	r0,r7
    35ba:	00 9c       	mov.b	@(r0,r9),r0
    35bc:	00 00       	.word 0x0000
    35be:	85 14       	mov.w	@(8,r1),r0
    35c0:	00 00       	.word 0x0000
    35c2:	59 18       	mov.l	@(32,r1),r9
    35c4:	7f f0       	add	#-16,r15
    35c6:	00 00       	.word 0x0000
    35c8:	00 00       	.word 0x0000
    35ca:	95 08       	mov.w	35de <__dtoa_r+0x112>,r5	! 67f3
    35cc:	00 00       	.word 0x0000
    35ce:	9e 75       	mov.w	36bc <__dtoa_r+0x1f0>,r14	! 1f2d
    35d0:	00 00       	.word 0x0000
    35d2:	9e a4       	mov.w	371e <__dtoa_r+0x252>,r14	! 9
    35d4:	7f ff       	add	#-1,r15
    35d6:	ff ff       	.word 0xffff
    35d8:	d0 51       	mov.l	3720 <__dtoa_r+0x254>,r0	! 6204 <___d2b>
    35da:	62 f3       	mov	r15,r2
    35dc:	72 68       	add	#104,r2
    35de:	67 f3       	mov	r15,r7
    35e0:	2f 22       	mov.l	r2,@r15
    35e2:	65 d3       	mov	r13,r5
    35e4:	54 f2       	mov.l	@(8,r15),r4
    35e6:	66 e3       	mov	r14,r6
    35e8:	40 0b       	jsr	@r0
    35ea:	77 6c       	add	#108,r7
    35ec:	62 c3       	mov	r12,r2
    35ee:	32 2c       	add	r2,r2
    35f0:	42 29       	shlr16	r2
    35f2:	42 09       	shlr2	r2
    35f4:	42 01       	shlr	r2
    35f6:	42 09       	shlr2	r2
    35f8:	1f 0c       	mov.l	r0,@(48,r15)
    35fa:	22 28       	tst	r2,r2
    35fc:	8b 02       	bf	3604 <__dtoa_r+0x138>
    35fe:	a0 c1       	bra	3784 <__dtoa_r+0x2b8>
    3600:	62 f3       	mov	r15,r2
    3602:	00 09       	nop	
    3604:	d7 47       	mov.l	3724 <__dtoa_r+0x258>,r7	! fffff
    3606:	e0 00       	mov	#0,r0
    3608:	9b 88       	mov.w	371c <__dtoa_r+0x250>,r11	! fc01
    360a:	27 d9       	and	r13,r7
    360c:	d3 46       	mov.l	3728 <__dtoa_r+0x25c>,r3	! 3ff00000
    360e:	3b 2c       	add	r2,r11
    3610:	62 f3       	mov	r15,r2
    3612:	64 73       	mov	r7,r4
    3614:	72 30       	add	#48,r2
    3616:	24 3b       	or	r3,r4
    3618:	53 2e       	mov.l	@(56,r2),r3
    361a:	e7 40       	mov	#64,r7
    361c:	37 fc       	add	r15,r7
    361e:	1f 2b       	mov.l	r2,@(44,r15)
    3620:	65 e3       	mov	r14,r5
    3622:	1f 34       	mov.l	r3,@(16,r15)
    3624:	17 07       	mov.l	r0,@(28,r7)
    3626:	d2 41       	mov.l	372c <__dtoa_r+0x260>,r2	! 90f4 <___subdf3>
    3628:	d6 41       	mov.l	3730 <__dtoa_r+0x264>,r6	! 3ff80000
    362a:	42 0b       	jsr	@r2
    362c:	e7 00       	mov	#0,r7
    362e:	d3 41       	mov.l	3734 <__dtoa_r+0x268>,r3	! 914c <___muldf3>
    3630:	64 03       	mov	r0,r4
    3632:	d6 41       	mov.l	3738 <__dtoa_r+0x26c>,r6	! 3fd287a7
    3634:	d7 41       	mov.l	373c <__dtoa_r+0x270>,r7	! 636f4361
    3636:	43 0b       	jsr	@r3
    3638:	65 13       	mov	r1,r5
    363a:	d2 41       	mov.l	3740 <__dtoa_r+0x274>,r2	! 90a4 <___adddf3>
    363c:	65 13       	mov	r1,r5
    363e:	d6 41       	mov.l	3744 <__dtoa_r+0x278>,r6	! 3fc68a28
    3640:	d7 41       	mov.l	3748 <__dtoa_r+0x27c>,r7	! 8b60c8b3
    3642:	42 0b       	jsr	@r2
    3644:	64 03       	mov	r0,r4
    3646:	d3 41       	mov.l	374c <__dtoa_r+0x280>,r3	! 96ac <___floatsidf>
    3648:	68 03       	mov	r0,r8
    364a:	69 13       	mov	r1,r9
    364c:	43 0b       	jsr	@r3
    364e:	64 b3       	mov	r11,r4
    3650:	d2 38       	mov.l	3734 <__dtoa_r+0x268>,r2	! 914c <___muldf3>
    3652:	64 03       	mov	r0,r4
    3654:	d6 3e       	mov.l	3750 <__dtoa_r+0x284>,r6	! 3fd34413
    3656:	d7 3f       	mov.l	3754 <__dtoa_r+0x288>,r7	! 509f79fb
    3658:	42 0b       	jsr	@r2
    365a:	65 13       	mov	r1,r5
    365c:	d3 38       	mov.l	3740 <__dtoa_r+0x274>,r3	! 90a4 <___adddf3>
    365e:	64 83       	mov	r8,r4
    3660:	65 93       	mov	r9,r5
    3662:	66 03       	mov	r0,r6
    3664:	43 0b       	jsr	@r3
    3666:	67 13       	mov	r1,r7
    3668:	d7 3b       	mov.l	3758 <__dtoa_r+0x28c>,r7	! 9748 <___fixdfsi>
    366a:	68 03       	mov	r0,r8
    366c:	69 13       	mov	r1,r9
    366e:	65 13       	mov	r1,r5
    3670:	47 0b       	jsr	@r7
    3672:	64 83       	mov	r8,r4
    3674:	d1 39       	mov.l	375c <__dtoa_r+0x290>,r1	! 9658 <___ltdf2>
    3676:	64 83       	mov	r8,r4
    3678:	1f 05       	mov.l	r0,@(20,r15)
    367a:	65 93       	mov	r9,r5
    367c:	e6 00       	mov	#0,r6
    367e:	41 0b       	jsr	@r1
    3680:	e7 00       	mov	#0,r7
    3682:	40 11       	cmp/pz	r0
    3684:	89 02       	bt	368c <__dtoa_r+0x1c0>
    3686:	a2 b7       	bra	3bf8 <__dtoa_r+0x72c>
    3688:	00 09       	nop	
    368a:	00 09       	nop	
    368c:	50 f5       	mov.l	@(20,r15),r0
    368e:	e1 16       	mov	#22,r1
    3690:	e2 01       	mov	#1,r2
    3692:	30 16       	cmp/hi	r1,r0
    3694:	1f 2d       	mov.l	r2,@(52,r15)
    3696:	89 14       	bt	36c2 <__dtoa_r+0x1f6>
    3698:	62 03       	mov	r0,r2
    369a:	d1 31       	mov.l	3760 <__dtoa_r+0x294>,r1	! 9f04 <___mprec_tens>
    369c:	42 08       	shll2	r2
    369e:	d0 31       	mov.l	3764 <__dtoa_r+0x298>,r0	! 95b0 <___gtdf2>
    36a0:	32 2c       	add	r2,r2
    36a2:	31 2c       	add	r2,r1
    36a4:	64 12       	mov.l	@r1,r4
    36a6:	66 d3       	mov	r13,r6
    36a8:	55 11       	mov.l	@(4,r1),r5
    36aa:	40 0b       	jsr	@r0
    36ac:	67 e3       	mov	r14,r7
    36ae:	40 15       	cmp/pl	r0
    36b0:	89 02       	bt	36b8 <__dtoa_r+0x1ec>
    36b2:	a2 b7       	bra	3c24 <__dtoa_r+0x758>
    36b4:	e3 00       	mov	#0,r3
    36b6:	00 09       	nop	
    36b8:	50 f5       	mov.l	@(20,r15),r0
    36ba:	e2 00       	mov	#0,r2
    36bc:	1f 2d       	mov.l	r2,@(52,r15)
    36be:	70 ff       	add	#-1,r0
    36c0:	1f 05       	mov.l	r0,@(20,r15)
    36c2:	5c f4       	mov.l	@(16,r15),r12
    36c4:	3c b8       	sub	r11,r12
    36c6:	7c ff       	add	#-1,r12
    36c8:	4c 11       	cmp/pz	r12
    36ca:	89 01       	bt	36d0 <__dtoa_r+0x204>
    36cc:	a2 90       	bra	3bf0 <__dtoa_r+0x724>
    36ce:	6c cb       	neg	r12,r12
    36d0:	e3 00       	mov	#0,r3
    36d2:	1f c7       	mov.l	r12,@(28,r15)
    36d4:	1f 3a       	mov.l	r3,@(40,r15)
    36d6:	50 f5       	mov.l	@(20,r15),r0
    36d8:	40 11       	cmp/pz	r0
    36da:	89 01       	bt	36e0 <__dtoa_r+0x214>
    36dc:	a2 80       	bra	3be0 <__dtoa_r+0x714>
    36de:	e7 00       	mov	#0,r7
    36e0:	52 f7       	mov.l	@(28,r15),r2
    36e2:	e3 40       	mov	#64,r3
    36e4:	33 fc       	add	r15,r3
    36e6:	32 0c       	add	r0,r2
    36e8:	1f 27       	mov.l	r2,@(28,r15)
    36ea:	e2 00       	mov	#0,r2
    36ec:	13 01       	mov.l	r0,@(4,r3)
    36ee:	1f 2e       	mov.l	r2,@(56,r15)
    36f0:	52 f3       	mov.l	@(12,r15),r2
    36f2:	e1 09       	mov	#9,r1
    36f4:	32 16       	cmp/hi	r1,r2
    36f6:	89 6f       	bt	37d8 <__dtoa_r+0x30c>
    36f8:	e1 05       	mov	#5,r1
    36fa:	32 17       	cmp/gt	r1,r2
    36fc:	e1 01       	mov	#1,r1
    36fe:	8b 02       	bf	3706 <__dtoa_r+0x23a>
    3700:	72 fc       	add	#-4,r2
    3702:	1f 23       	mov.l	r2,@(12,r15)
    3704:	e1 00       	mov	#0,r1
    3706:	52 f3       	mov.l	@(12,r15),r2
    3708:	e3 03       	mov	#3,r3
    370a:	72 fe       	add	#-2,r2
    370c:	32 36       	cmp/hi	r3,r2
    370e:	89 65       	bt	37dc <__dtoa_r+0x310>
    3710:	c7 15       	mova	3768 <__dtoa_r+0x29c>,r0
    3712:	32 2c       	add	r2,r2
    3714:	02 2d       	mov.w	@(r0,r2),r2
    3716:	32 0c       	add	r0,r2
    3718:	42 2b       	jmp	@r2
    371a:	00 09       	nop	
    371c:	fc 01       	.word 0xfc01
    371e:	00 09       	nop	
    3720:	00 00       	.word 0x0000
    3722:	62 04       	mov.b	@r0+,r2
    3724:	00 0f       	.word 0x000f
    3726:	ff ff       	.word 0xffff
    3728:	3f f0       	cmp/eq	r15,r15
    372a:	00 00       	.word 0x0000
    372c:	00 00       	.word 0x0000
    372e:	90 f4       	mov.w	391a <__dtoa_r+0x44e>,r0	! e600
    3730:	3f f8       	sub	r15,r15
    3732:	00 00       	.word 0x0000
    3734:	00 00       	.word 0x0000
    3736:	91 4c       	mov.w	37d2 <__dtoa_r+0x306>,r1	! aebc
    3738:	3f d2       	cmp/hs	r13,r15
    373a:	87 a7       	.word 0x87a7
    373c:	63 6f       	exts.w	r6,r3
    373e:	43 61       	.word 0x4361
    3740:	00 00       	.word 0x0000
    3742:	90 a4       	mov.w	388e <__dtoa_r+0x3c2>,r0	! 8974
    3744:	3f c6       	cmp/hi	r12,r15
    3746:	8a 28       	.word 0x8a28
    3748:	8b 60       	bf	380c <__dtoa_r+0x340>
    374a:	c8 b3       	tst	#-77,r0
    374c:	00 00       	.word 0x0000
    374e:	96 ac       	mov.w	38aa <__dtoa_r+0x3de>,r6	! a720
    3750:	3f d3       	cmp/ge	r13,r15
    3752:	44 13       	stc.l	gbr,@-r4
    3754:	50 9f       	mov.l	@(60,r9),r0
    3756:	79 fb       	add	#-5,r9
    3758:	00 00       	.word 0x0000
    375a:	97 48       	mov.w	37ee <__dtoa_r+0x322>,r7	! e201
    375c:	00 00       	.word 0x0000
    375e:	96 58       	mov.w	3812 <__dtoa_r+0x346>,r6	! 3027
    3760:	00 00       	.word 0x0000
    3762:	9f 04       	mov.w	376e <__dtoa_r+0x2a2>,r15	! 82c
    3764:	00 00       	.word 0x0000
    3766:	95 b0       	mov.w	38ca <__dtoa_r+0x3fe>,r5	! 9e98
    3768:	05 30       	.word 0x0530
    376a:	08 00       	.word 0x0800
    376c:	07 f8       	.word 0x07f8
    376e:	08 2c       	mov.b	@(r0,r2),r8
    3770:	d2 54       	mov.l	38c4 <__dtoa_r+0x3f8>,r2	! fffff
    3772:	2c 28       	tst	r2,r12
    3774:	89 02       	bt	377c <__dtoa_r+0x2b0>
    3776:	ae fd       	bra	3574 <__dtoa_r+0xa8>
    3778:	00 09       	nop	
    377a:	00 09       	nop	
    377c:	dd 52       	mov.l	38c8 <__dtoa_r+0x3fc>,r13	! 9e98
    377e:	ae fa       	bra	3576 <__dtoa_r+0xaa>
    3780:	00 09       	nop	
    3782:	00 09       	nop	
    3784:	72 30       	add	#48,r2
    3786:	53 2e       	mov.l	@(56,r2),r3
    3788:	5b 2f       	mov.l	@(60,r2),r11
    378a:	1f 2b       	mov.l	r2,@(44,r15)
    378c:	3b 3c       	add	r3,r11
    378e:	92 94       	mov.w	38ba <__dtoa_r+0x3ee>,r2	! fbef
    3790:	1f 34       	mov.l	r3,@(16,r15)
    3792:	3b 23       	cmp/ge	r2,r11
    3794:	89 02       	bt	379c <__dtoa_r+0x2d0>
    3796:	a2 3f       	bra	3c18 <__dtoa_r+0x74c>
    3798:	64 e3       	mov	r14,r4
    379a:	00 09       	nop	
    379c:	95 8e       	mov.w	38bc <__dtoa_r+0x3f0>,r5	! fc0e
    379e:	64 c3       	mov	r12,r4
    37a0:	d0 4a       	mov.l	38cc <__dtoa_r+0x400>,r0	! 8514 <___ashlsi3>
    37a2:	40 0b       	jsr	@r0
    37a4:	35 b8       	sub	r11,r5
    37a6:	68 03       	mov	r0,r8
    37a8:	95 89       	mov.w	38be <__dtoa_r+0x3f2>,r5	! 412
    37aa:	64 e3       	mov	r14,r4
    37ac:	d0 48       	mov.l	38d0 <__dtoa_r+0x404>,r0	! 85a0 <___lshrsi3>
    37ae:	40 0b       	jsr	@r0
    37b0:	35 bc       	add	r11,r5
    37b2:	64 03       	mov	r0,r4
    37b4:	24 8b       	or	r8,r4
    37b6:	d0 47       	mov.l	38d4 <__dtoa_r+0x408>,r0	! 97c0 <___floatunsidf>
    37b8:	40 0b       	jsr	@r0
    37ba:	7b ff       	add	#-1,r11
    37bc:	d2 46       	mov.l	38d8 <__dtoa_r+0x40c>,r2	! fe100000
    37be:	e7 40       	mov	#64,r7
    37c0:	64 03       	mov	r0,r4
    37c2:	37 fc       	add	r15,r7
    37c4:	e0 01       	mov	#1,r0
    37c6:	65 13       	mov	r1,r5
    37c8:	34 2c       	add	r2,r4
    37ca:	af 2c       	bra	3626 <__dtoa_r+0x15a>
    37cc:	17 07       	mov.l	r0,@(28,r7)
    37ce:	00 09       	nop	
    37d0:	dd 42       	mov.l	38dc <__dtoa_r+0x410>,r13	! 9e74
    37d2:	ae bc       	bra	354e <__dtoa_r+0x82>
    37d4:	60 d3       	mov	r13,r0
    37d6:	00 09       	nop	
    37d8:	e2 00       	mov	#0,r2
    37da:	1f 23       	mov.l	r2,@(12,r15)
    37dc:	d7 40       	mov.l	38e0 <__dtoa_r+0x414>,r7	! 58a0 <__Balloc>
    37de:	e1 00       	mov	#0,r1
    37e0:	e0 4c       	mov	#76,r0
    37e2:	1a 11       	mov.l	r1,@(4,r10)
    37e4:	e5 00       	mov	#0,r5
    37e6:	0f 76       	mov.l	r7,@(r0,r15)
    37e8:	47 0b       	jsr	@r7
    37ea:	54 f2       	mov.l	@(8,r15),r4
    37ec:	1f 04       	mov.l	r0,@(16,r15)
    37ee:	e2 01       	mov	#1,r2
    37f0:	1a 00       	mov.l	r0,@(0,r10)
    37f2:	e0 40       	mov	#64,r0
    37f4:	30 fc       	add	r15,r0
    37f6:	e1 ff       	mov	#-1,r1
    37f8:	10 22       	mov.l	r2,@(8,r0)
    37fa:	e2 00       	mov	#0,r2
    37fc:	10 14       	mov.l	r1,@(16,r0)
    37fe:	e0 ff       	mov	#-1,r0
    3800:	1f 09       	mov.l	r0,@(36,r15)
    3802:	90 5d       	mov.w	38c0 <__dtoa_r+0x3f4>,r0	! 90
    3804:	0f 26       	mov.l	r2,@(r0,r15)
    3806:	52 fb       	mov.l	@(44,r15),r2
    3808:	51 2f       	mov.l	@(60,r2),r1
    380a:	41 11       	cmp/pz	r1
    380c:	8b 03       	bf	3816 <__dtoa_r+0x34a>
    380e:	50 f5       	mov.l	@(20,r15),r0
    3810:	e2 0e       	mov	#14,r2
    3812:	30 27       	cmp/gt	r2,r0
    3814:	8b 02       	bf	381c <__dtoa_r+0x350>
    3816:	a0 fb       	bra	3a10 <__dtoa_r+0x544>
    3818:	e0 48       	mov	#72,r0
    381a:	00 09       	nop	
    381c:	62 03       	mov	r0,r2
    381e:	d1 31       	mov.l	38e4 <__dtoa_r+0x418>,r1	! 9f04 <___mprec_tens>
    3820:	42 08       	shll2	r2
    3822:	32 2c       	add	r2,r2
    3824:	31 2c       	add	r2,r1
    3826:	62 12       	mov.l	@r1,r2
    3828:	53 11       	mov.l	@(4,r1),r3
    382a:	50 f9       	mov.l	@(36,r15),r0
    382c:	1f 27       	mov.l	r2,@(28,r15)
    382e:	40 15       	cmp/pl	r0
    3830:	1f 38       	mov.l	r3,@(32,r15)
    3832:	89 05       	bt	3840 <__dtoa_r+0x374>
    3834:	90 44       	mov.w	38c0 <__dtoa_r+0x3f4>,r0	! 90
    3836:	01 fe       	mov.l	@(r0,r15),r1
    3838:	41 11       	cmp/pz	r1
    383a:	89 01       	bt	3840 <__dtoa_r+0x374>
    383c:	a5 5c       	bra	42f8 <__dtoa_r+0xe2c>
    383e:	50 f9       	mov.l	@(36,r15),r0
    3840:	68 d3       	mov	r13,r8
    3842:	dd 29       	mov.l	38e8 <__dtoa_r+0x41c>,r13	! 93a0 <___divdf3>
    3844:	65 e3       	mov	r14,r5
    3846:	56 f7       	mov.l	@(28,r15),r6
    3848:	64 83       	mov	r8,r4
    384a:	4d 0b       	jsr	@r13
    384c:	57 f8       	mov.l	@(32,r15),r7
    384e:	d2 27       	mov.l	38ec <__dtoa_r+0x420>,r2	! 9748 <___fixdfsi>
    3850:	65 13       	mov	r1,r5
    3852:	42 0b       	jsr	@r2
    3854:	64 03       	mov	r0,r4
    3856:	d3 26       	mov.l	38f0 <__dtoa_r+0x424>,r3	! 96ac <___floatsidf>
    3858:	6a 03       	mov	r0,r10
    385a:	db 26       	mov.l	38f4 <__dtoa_r+0x428>,r11	! 914c <___muldf3>
    385c:	43 0b       	jsr	@r3
    385e:	64 03       	mov	r0,r4
    3860:	64 03       	mov	r0,r4
    3862:	65 13       	mov	r1,r5
    3864:	56 f7       	mov.l	@(28,r15),r6
    3866:	4b 0b       	jsr	@r11
    3868:	57 f8       	mov.l	@(32,r15),r7
    386a:	d2 23       	mov.l	38f8 <__dtoa_r+0x42c>,r2	! 90f4 <___subdf3>
    386c:	65 e3       	mov	r14,r5
    386e:	64 83       	mov	r8,r4
    3870:	66 03       	mov	r0,r6
    3872:	42 0b       	jsr	@r2
    3874:	67 13       	mov	r1,r7
    3876:	64 03       	mov	r0,r4
    3878:	50 f4       	mov.l	@(16,r15),r0
    387a:	62 a3       	mov	r10,r2
    387c:	72 30       	add	#48,r2
    387e:	6e 03       	mov	r0,r14
    3880:	20 20       	mov.b	r2,@r0
    3882:	65 13       	mov	r1,r5
    3884:	50 f9       	mov.l	@(36,r15),r0
    3886:	66 43       	mov	r4,r6
    3888:	67 13       	mov	r1,r7
    388a:	88 01       	cmp/eq	#1,r0
    388c:	7e 01       	add	#1,r14
    388e:	89 74       	bt	397a <__dtoa_r+0x4ae>
    3890:	d6 1a       	mov.l	38fc <__dtoa_r+0x430>,r6	! 40240000
    3892:	4b 0b       	jsr	@r11
    3894:	e7 00       	mov	#0,r7
    3896:	d3 1a       	mov.l	3900 <__dtoa_r+0x434>,r3	! 9508 <___eqdf2>
    3898:	68 03       	mov	r0,r8
    389a:	69 13       	mov	r1,r9
    389c:	64 83       	mov	r8,r4
    389e:	65 13       	mov	r1,r5
    38a0:	e6 00       	mov	#0,r6
    38a2:	43 0b       	jsr	@r3
    38a4:	e7 00       	mov	#0,r7
    38a6:	20 08       	tst	r0,r0
    38a8:	8b 02       	bf	38b0 <__dtoa_r+0x3e4>
    38aa:	a7 20       	bra	46ee <__dtoa_r+0x1222>
    38ac:	5d f4       	mov.l	@(16,r15),r13
    38ae:	00 09       	nop	
    38b0:	1f b3       	mov.l	r11,@(12,r15)
    38b2:	6c e3       	mov	r14,r12
    38b4:	5a f7       	mov.l	@(28,r15),r10
    38b6:	a0 37       	bra	3928 <__dtoa_r+0x45c>
    38b8:	5b f8       	mov.l	@(32,r15),r11
    38ba:	fb ef       	.word 0xfbef
    38bc:	fc 0e       	.word 0xfc0e
    38be:	04 12       	stc	gbr,r4
    38c0:	00 90       	.word 0x0090
    38c2:	00 09       	nop	
    38c4:	00 0f       	.word 0x000f
    38c6:	ff ff       	.word 0xffff
    38c8:	00 00       	.word 0x0000
    38ca:	9e 98       	mov.w	39fe <__dtoa_r+0x532>,r14	! 914c <___muldf3>
    38cc:	00 00       	.word 0x0000
    38ce:	85 14       	mov.w	@(8,r1),r0
    38d0:	00 00       	.word 0x0000
    38d2:	85 a0       	mov.w	@(0,r10),r0
    38d4:	00 00       	.word 0x0000
    38d6:	97 c0       	mov.w	3a5a <__dtoa_r+0x58e>,r7	! 54f2
    38d8:	fe 10       	.word 0xfe10
    38da:	00 00       	.word 0x0000
    38dc:	00 00       	.word 0x0000
    38de:	9e 74       	mov.w	39ca <__dtoa_r+0x4fe>,r14	! a64d
    38e0:	00 00       	.word 0x0000
    38e2:	58 a0       	mov.l	@(0,r10),r8
    38e4:	00 00       	.word 0x0000
    38e6:	9f 04       	mov.w	38f2 <__dtoa_r+0x426>,r15	! 96ac <___floatsidf>
    38e8:	00 00       	.word 0x0000
    38ea:	93 a0       	mov.w	3a2e <__dtoa_r+0x562>,r3	! 3297
    38ec:	00 00       	.word 0x0000
    38ee:	97 48       	mov.w	3982 <__dtoa_r+0x4b6>,r7	! d321
    38f0:	00 00       	.word 0x0000
    38f2:	96 ac       	mov.w	3a4e <__dtoa_r+0x582>,r6	! 9
    38f4:	00 00       	.word 0x0000
    38f6:	91 4c       	mov.w	3992 <__dtoa_r+0x4c6>,r1	! 4011
    38f8:	00 00       	.word 0x0000
    38fa:	90 f4       	mov.w	3ae6 <__dtoa_r+0x61a>,r0	! e204
    38fc:	40 24       	rotcl	r0
    38fe:	00 00       	.word 0x0000
    3900:	00 00       	.word 0x0000
    3902:	95 08       	mov.w	3916 <__dtoa_r+0x44a>,r5	! 6483
    3904:	52 f3       	mov.l	@(12,r15),r2
    3906:	64 83       	mov	r8,r4
    3908:	65 93       	mov	r9,r5
    390a:	d6 38       	mov.l	39ec <__dtoa_r+0x520>,r6	! 40240000
    390c:	42 0b       	jsr	@r2
    390e:	e7 00       	mov	#0,r7
    3910:	d3 37       	mov.l	39f0 <__dtoa_r+0x524>,r3	! 9508 <___eqdf2>
    3912:	68 03       	mov	r0,r8
    3914:	69 13       	mov	r1,r9
    3916:	64 83       	mov	r8,r4
    3918:	65 13       	mov	r1,r5
    391a:	e6 00       	mov	#0,r6
    391c:	43 0b       	jsr	@r3
    391e:	e7 00       	mov	#0,r7
    3920:	20 08       	tst	r0,r0
    3922:	8b 01       	bf	3928 <__dtoa_r+0x45c>
    3924:	a6 96       	bra	4654 <__dtoa_r+0x1188>
    3926:	5d f4       	mov.l	@(16,r15),r13
    3928:	66 a3       	mov	r10,r6
    392a:	64 83       	mov	r8,r4
    392c:	65 93       	mov	r9,r5
    392e:	4d 0b       	jsr	@r13
    3930:	67 b3       	mov	r11,r7
    3932:	d7 30       	mov.l	39f4 <__dtoa_r+0x528>,r7	! 9748 <___fixdfsi>
    3934:	65 13       	mov	r1,r5
    3936:	47 0b       	jsr	@r7
    3938:	64 03       	mov	r0,r4
    393a:	d2 2f       	mov.l	39f8 <__dtoa_r+0x52c>,r2	! 96ac <___floatsidf>
    393c:	6e 03       	mov	r0,r14
    393e:	42 0b       	jsr	@r2
    3940:	64 03       	mov	r0,r4
    3942:	d3 2e       	mov.l	39fc <__dtoa_r+0x530>,r3	! 914c <___muldf3>
    3944:	64 03       	mov	r0,r4
    3946:	65 13       	mov	r1,r5
    3948:	66 a3       	mov	r10,r6
    394a:	43 0b       	jsr	@r3
    394c:	67 b3       	mov	r11,r7
    394e:	d2 2c       	mov.l	3a00 <__dtoa_r+0x534>,r2	! 90f4 <___subdf3>
    3950:	64 83       	mov	r8,r4
    3952:	65 93       	mov	r9,r5
    3954:	66 03       	mov	r0,r6
    3956:	42 0b       	jsr	@r2
    3958:	67 13       	mov	r1,r7
    395a:	63 e3       	mov	r14,r3
    395c:	68 03       	mov	r0,r8
    395e:	73 30       	add	#48,r3
    3960:	50 f4       	mov.l	@(16,r15),r0
    3962:	69 13       	mov	r1,r9
    3964:	2c 30       	mov.b	r3,@r12
    3966:	7c 01       	add	#1,r12
    3968:	63 c3       	mov	r12,r3
    396a:	33 08       	sub	r0,r3
    396c:	50 f9       	mov.l	@(36,r15),r0
    396e:	66 83       	mov	r8,r6
    3970:	67 13       	mov	r1,r7
    3972:	30 30       	cmp/eq	r3,r0
    3974:	8b c6       	bf	3904 <__dtoa_r+0x438>
    3976:	6a e3       	mov	r14,r10
    3978:	6e c3       	mov	r12,r14
    397a:	d2 22       	mov.l	3a04 <__dtoa_r+0x538>,r2	! 90a4 <___adddf3>
    397c:	64 63       	mov	r6,r4
    397e:	42 0b       	jsr	@r2
    3980:	65 73       	mov	r7,r5
    3982:	d3 21       	mov.l	3a08 <__dtoa_r+0x53c>,r3	! 9658 <___ltdf2>
    3984:	68 03       	mov	r0,r8
    3986:	69 13       	mov	r1,r9
    3988:	54 f7       	mov.l	@(28,r15),r4
    398a:	66 83       	mov	r8,r6
    398c:	55 f8       	mov.l	@(32,r15),r5
    398e:	43 0b       	jsr	@r3
    3990:	67 13       	mov	r1,r7
    3992:	40 11       	cmp/pz	r0
    3994:	8b 02       	bf	399c <__dtoa_r+0x4d0>
    3996:	a6 95       	bra	46c4 <__dtoa_r+0x11f8>
    3998:	66 83       	mov	r8,r6
    399a:	00 09       	nop	
    399c:	50 f5       	mov.l	@(20,r15),r0
    399e:	61 e3       	mov	r14,r1
    39a0:	e7 40       	mov	#64,r7
    39a2:	71 ff       	add	#-1,r1
    39a4:	37 fc       	add	r15,r7
    39a6:	5d f4       	mov.l	@(16,r15),r13
    39a8:	6c 10       	mov.b	@r1,r12
    39aa:	1f e4       	mov.l	r14,@(16,r15)
    39ac:	17 08       	mov.l	r0,@(32,r7)
    39ae:	52 f4       	mov.l	@(16,r15),r2
    39b0:	60 c3       	mov	r12,r0
    39b2:	51 f4       	mov.l	@(16,r15),r1
    39b4:	72 ff       	add	#-1,r2
    39b6:	a0 05       	bra	39c4 <__dtoa_r+0x4f8>
    39b8:	63 23       	mov	r2,r3
    39ba:	00 09       	nop	
    39bc:	73 ff       	add	#-1,r3
    39be:	60 30       	mov.b	@r3,r0
    39c0:	61 23       	mov	r2,r1
    39c2:	72 ff       	add	#-1,r2
    39c4:	88 39       	cmp/eq	#57,r0
    39c6:	67 23       	mov	r2,r7
    39c8:	89 02       	bt	39d0 <__dtoa_r+0x504>
    39ca:	a6 4d       	bra	4668 <__dtoa_r+0x119c>
    39cc:	6c 03       	mov	r0,r12
    39ce:	00 09       	nop	
    39d0:	3d 20       	cmp/eq	r2,r13
    39d2:	8b f3       	bf	39bc <__dtoa_r+0x4f0>
    39d4:	e0 60       	mov	#96,r0
    39d6:	00 fe       	mov.l	@(r0,r15),r0
    39d8:	e2 30       	mov	#48,r2
    39da:	2d 20       	mov.b	r2,@r13
    39dc:	70 01       	add	#1,r0
    39de:	67 d3       	mov	r13,r7
    39e0:	e2 31       	mov	#49,r2
    39e2:	1f 14       	mov.l	r1,@(16,r15)
    39e4:	1f 05       	mov.l	r0,@(20,r15)
    39e6:	d8 09       	mov.l	3a0c <__dtoa_r+0x540>,r8	! 5918 <__Bfree>
    39e8:	a0 d9       	bra	3b9e <__dtoa_r+0x6d2>
    39ea:	27 20       	mov.b	r2,@r7
    39ec:	40 24       	rotcl	r0
    39ee:	00 00       	.word 0x0000
    39f0:	00 00       	.word 0x0000
    39f2:	95 08       	mov.w	3a06 <__dtoa_r+0x53a>,r5	! 90a4 <___adddf3>
    39f4:	00 00       	.word 0x0000
    39f6:	97 48       	mov.w	3a8a <__dtoa_r+0x5be>,r7	! 2668
    39f8:	00 00       	.word 0x0000
    39fa:	96 ac       	mov.w	3b56 <__dtoa_r+0x68a>,r6	! 6503
    39fc:	00 00       	.word 0x0000
    39fe:	91 4c       	mov.w	3a9a <__dtoa_r+0x5ce>,r1	! 6b03
    3a00:	00 00       	.word 0x0000
    3a02:	90 f4       	mov.w	3bee <__dtoa_r+0x722>,r0	! f76
    3a04:	00 00       	.word 0x0000
    3a06:	90 a4       	mov.w	3b52 <__dtoa_r+0x686>,r0	! 400b
    3a08:	00 00       	.word 0x0000
    3a0a:	96 58       	mov.w	3abe <__dtoa_r+0x5f2>,r6	! 9
    3a0c:	00 00       	.word 0x0000
    3a0e:	59 18       	mov.l	@(32,r1),r9
    3a10:	02 fe       	mov.l	@(r0,r15),r2
    3a12:	22 28       	tst	r2,r2
    3a14:	89 02       	bt	3a1c <__dtoa_r+0x550>
    3a16:	a1 07       	bra	3c28 <__dtoa_r+0x75c>
    3a18:	53 f3       	mov.l	@(12,r15),r3
    3a1a:	00 09       	nop	
    3a1c:	5b fe       	mov.l	@(56,r15),r11
    3a1e:	ec 00       	mov	#0,r12
    3a20:	59 fa       	mov.l	@(40,r15),r9
    3a22:	da 93       	mov.l	3c70 <__dtoa_r+0x7a4>,r10	! 5b74 <___i2b>
    3a24:	52 f7       	mov.l	@(28,r15),r2
    3a26:	42 15       	cmp/pl	r2
    3a28:	8b 0c       	bf	3a44 <__dtoa_r+0x578>
    3a2a:	49 15       	cmp/pl	r9
    3a2c:	8b 0a       	bf	3a44 <__dtoa_r+0x578>
    3a2e:	32 97       	cmp/gt	r9,r2
    3a30:	61 23       	mov	r2,r1
    3a32:	8b 00       	bf	3a36 <__dtoa_r+0x56a>
    3a34:	61 93       	mov	r9,r1
    3a36:	53 fa       	mov.l	@(40,r15),r3
    3a38:	39 18       	sub	r1,r9
    3a3a:	52 f7       	mov.l	@(28,r15),r2
    3a3c:	33 18       	sub	r1,r3
    3a3e:	1f 3a       	mov.l	r3,@(40,r15)
    3a40:	32 18       	sub	r1,r2
    3a42:	1f 27       	mov.l	r2,@(28,r15)
    3a44:	53 fe       	mov.l	@(56,r15),r3
    3a46:	43 15       	cmp/pl	r3
    3a48:	89 02       	bt	3a50 <__dtoa_r+0x584>
    3a4a:	a3 64       	bra	4116 <__dtoa_r+0xc4a>
    3a4c:	00 09       	nop	
    3a4e:	00 09       	nop	
    3a50:	e0 48       	mov	#72,r0
    3a52:	07 fe       	mov.l	@(r0,r15),r7
    3a54:	27 78       	tst	r7,r7
    3a56:	8b 01       	bf	3a5c <__dtoa_r+0x590>
    3a58:	a3 58       	bra	410c <__dtoa_r+0xc40>
    3a5a:	54 f2       	mov.l	@(8,r15),r4
    3a5c:	4b 15       	cmp/pl	r11
    3a5e:	d8 85       	mov.l	3c74 <__dtoa_r+0x7a8>,r8	! 5918 <__Bfree>
    3a60:	8b 11       	bf	3a86 <__dtoa_r+0x5ba>
    3a62:	d0 85       	mov.l	3c78 <__dtoa_r+0x7ac>,r0	! 5d2c <___pow5mult>
    3a64:	65 c3       	mov	r12,r5
    3a66:	54 f2       	mov.l	@(8,r15),r4
    3a68:	40 0b       	jsr	@r0
    3a6a:	66 b3       	mov	r11,r6
    3a6c:	65 03       	mov	r0,r5
    3a6e:	6c 03       	mov	r0,r12
    3a70:	d0 82       	mov.l	3c7c <__dtoa_r+0x7b0>,r0	! 5b94 <___multiply>
    3a72:	d8 80       	mov.l	3c74 <__dtoa_r+0x7a8>,r8	! 5918 <__Bfree>
    3a74:	56 fc       	mov.l	@(48,r15),r6
    3a76:	40 0b       	jsr	@r0
    3a78:	54 f2       	mov.l	@(8,r15),r4
    3a7a:	1f 01       	mov.l	r0,@(4,r15)
    3a7c:	54 f2       	mov.l	@(8,r15),r4
    3a7e:	48 0b       	jsr	@r8
    3a80:	55 fc       	mov.l	@(48,r15),r5
    3a82:	50 f1       	mov.l	@(4,r15),r0
    3a84:	1f 0c       	mov.l	r0,@(48,r15)
    3a86:	56 fe       	mov.l	@(56,r15),r6
    3a88:	36 b8       	sub	r11,r6
    3a8a:	26 68       	tst	r6,r6
    3a8c:	89 02       	bt	3a94 <__dtoa_r+0x5c8>
    3a8e:	a5 b3       	bra	45f8 <__dtoa_r+0x112c>
    3a90:	54 f2       	mov.l	@(8,r15),r4
    3a92:	00 09       	nop	
    3a94:	54 f2       	mov.l	@(8,r15),r4
    3a96:	4a 0b       	jsr	@r10
    3a98:	e5 01       	mov	#1,r5
    3a9a:	6b 03       	mov	r0,r11
    3a9c:	e0 44       	mov	#68,r0
    3a9e:	00 fe       	mov.l	@(r0,r15),r0
    3aa0:	40 15       	cmp/pl	r0
    3aa2:	8b 05       	bf	3ab0 <__dtoa_r+0x5e4>
    3aa4:	66 03       	mov	r0,r6
    3aa6:	d0 74       	mov.l	3c78 <__dtoa_r+0x7ac>,r0	! 5d2c <___pow5mult>
    3aa8:	65 b3       	mov	r11,r5
    3aaa:	40 0b       	jsr	@r0
    3aac:	54 f2       	mov.l	@(8,r15),r4
    3aae:	6b 03       	mov	r0,r11
    3ab0:	52 f3       	mov.l	@(12,r15),r2
    3ab2:	e1 01       	mov	#1,r1
    3ab4:	ea 00       	mov	#0,r10
    3ab6:	32 17       	cmp/gt	r1,r2
    3ab8:	89 02       	bt	3ac0 <__dtoa_r+0x5f4>
    3aba:	a4 37       	bra	432c <__dtoa_r+0xe60>
    3abc:	2e e8       	tst	r14,r14
    3abe:	00 09       	nop	
    3ac0:	e0 44       	mov	#68,r0
    3ac2:	03 fe       	mov.l	@(r0,r15),r3
    3ac4:	e1 01       	mov	#1,r1
    3ac6:	23 38       	tst	r3,r3
    3ac8:	89 02       	bt	3ad0 <__dtoa_r+0x604>
    3aca:	a3 df       	bra	428c <__dtoa_r+0xdc0>
    3acc:	50 b4       	mov.l	@(16,r11),r0
    3ace:	00 09       	nop	
    3ad0:	50 f7       	mov.l	@(28,r15),r0
    3ad2:	30 1c       	add	r1,r0
    3ad4:	c9 1f       	and	#31,r0
    3ad6:	20 08       	tst	r0,r0
    3ad8:	8b 02       	bf	3ae0 <__dtoa_r+0x614>
    3ada:	a2 ef       	bra	40bc <__dtoa_r+0xbf0>
    3adc:	e0 1c       	mov	#28,r0
    3ade:	00 09       	nop	
    3ae0:	63 0b       	neg	r0,r3
    3ae2:	61 33       	mov	r3,r1
    3ae4:	71 20       	add	#32,r1
    3ae6:	e2 04       	mov	#4,r2
    3ae8:	31 27       	cmp/gt	r2,r1
    3aea:	89 01       	bt	3af0 <__dtoa_r+0x624>
    3aec:	a6 62       	bra	47b4 <__dtoa_r+0x12e8>
    3aee:	60 13       	mov	r1,r0
    3af0:	60 33       	mov	r3,r0
    3af2:	70 1c       	add	#28,r0
    3af4:	52 fa       	mov.l	@(40,r15),r2
    3af6:	39 0c       	add	r0,r9
    3af8:	53 f7       	mov.l	@(28,r15),r3
    3afa:	32 0c       	add	r0,r2
    3afc:	1f 2a       	mov.l	r2,@(40,r15)
    3afe:	33 0c       	add	r0,r3
    3b00:	1f 37       	mov.l	r3,@(28,r15)
    3b02:	52 fa       	mov.l	@(40,r15),r2
    3b04:	42 15       	cmp/pl	r2
    3b06:	8b 05       	bf	3b14 <__dtoa_r+0x648>
    3b08:	d0 5d       	mov.l	3c80 <__dtoa_r+0x7b4>,r0	! 5e00 <___lshift>
    3b0a:	66 23       	mov	r2,r6
    3b0c:	54 f2       	mov.l	@(8,r15),r4
    3b0e:	40 0b       	jsr	@r0
    3b10:	55 fc       	mov.l	@(48,r15),r5
    3b12:	1f 0c       	mov.l	r0,@(48,r15)
    3b14:	53 f7       	mov.l	@(28,r15),r3
    3b16:	43 15       	cmp/pl	r3
    3b18:	8b 05       	bf	3b26 <__dtoa_r+0x65a>
    3b1a:	d0 59       	mov.l	3c80 <__dtoa_r+0x7b4>,r0	! 5e00 <___lshift>
    3b1c:	65 b3       	mov	r11,r5
    3b1e:	54 f2       	mov.l	@(8,r15),r4
    3b20:	40 0b       	jsr	@r0
    3b22:	66 33       	mov	r3,r6
    3b24:	6b 03       	mov	r0,r11
    3b26:	52 fd       	mov.l	@(52,r15),r2
    3b28:	22 28       	tst	r2,r2
    3b2a:	89 01       	bt	3b30 <__dtoa_r+0x664>
    3b2c:	a3 b8       	bra	42a0 <__dtoa_r+0xdd4>
    3b2e:	65 b3       	mov	r11,r5
    3b30:	52 f3       	mov.l	@(12,r15),r2
    3b32:	e1 02       	mov	#2,r1
    3b34:	32 17       	cmp/gt	r1,r2
    3b36:	8b 02       	bf	3b3e <__dtoa_r+0x672>
    3b38:	50 f9       	mov.l	@(36,r15),r0
    3b3a:	40 15       	cmp/pl	r0
    3b3c:	8b 02       	bf	3b44 <__dtoa_r+0x678>
    3b3e:	a2 6b       	bra	4018 <__dtoa_r+0xb4c>
    3b40:	e0 48       	mov	#72,r0
    3b42:	00 09       	nop	
    3b44:	50 f9       	mov.l	@(36,r15),r0
    3b46:	20 08       	tst	r0,r0
    3b48:	8b 0c       	bf	3b64 <__dtoa_r+0x698>
    3b4a:	d0 4e       	mov.l	3c84 <__dtoa_r+0x7b8>,r0	! 5930 <___multadd>
    3b4c:	65 b3       	mov	r11,r5
    3b4e:	54 f2       	mov.l	@(8,r15),r4
    3b50:	e6 05       	mov	#5,r6
    3b52:	40 0b       	jsr	@r0
    3b54:	e7 00       	mov	#0,r7
    3b56:	65 03       	mov	r0,r5
    3b58:	6b 03       	mov	r0,r11
    3b5a:	d0 4b       	mov.l	3c88 <__dtoa_r+0x7bc>,r0	! 5efc <___mcmp>
    3b5c:	40 0b       	jsr	@r0
    3b5e:	54 fc       	mov.l	@(48,r15),r4
    3b60:	40 15       	cmp/pl	r0
    3b62:	89 01       	bt	3b68 <__dtoa_r+0x69c>
    3b64:	a2 51       	bra	400a <__dtoa_r+0xb3e>
    3b66:	00 09       	nop	
    3b68:	50 f4       	mov.l	@(16,r15),r0
    3b6a:	e1 31       	mov	#49,r1
    3b6c:	5d f4       	mov.l	@(16,r15),r13
    3b6e:	e9 00       	mov	#0,r9
    3b70:	20 10       	mov.b	r1,@r0
    3b72:	50 f5       	mov.l	@(20,r15),r0
    3b74:	70 01       	add	#1,r0
    3b76:	1f 05       	mov.l	r0,@(20,r15)
    3b78:	60 d3       	mov	r13,r0
    3b7a:	70 01       	add	#1,r0
    3b7c:	1f 04       	mov.l	r0,@(16,r15)
    3b7e:	54 f2       	mov.l	@(8,r15),r4
    3b80:	48 0b       	jsr	@r8
    3b82:	65 b3       	mov	r11,r5
    3b84:	2c c8       	tst	r12,r12
    3b86:	89 0a       	bt	3b9e <__dtoa_r+0x6d2>
    3b88:	39 c0       	cmp/eq	r12,r9
    3b8a:	e2 ff       	mov	#-1,r2
    3b8c:	60 2a       	negc	r2,r0
    3b8e:	c8 ff       	tst	#-1,r0
    3b90:	89 02       	bt	3b98 <__dtoa_r+0x6cc>
    3b92:	a2 cd       	bra	4130 <__dtoa_r+0xc64>
    3b94:	29 98       	tst	r9,r9
    3b96:	00 09       	nop	
    3b98:	54 f2       	mov.l	@(8,r15),r4
    3b9a:	48 0b       	jsr	@r8
    3b9c:	65 c3       	mov	r12,r5
    3b9e:	54 f2       	mov.l	@(8,r15),r4
    3ba0:	48 0b       	jsr	@r8
    3ba2:	55 fc       	mov.l	@(48,r15),r5
    3ba4:	50 f4       	mov.l	@(16,r15),r0
    3ba6:	e2 00       	mov	#0,r2
    3ba8:	e1 7c       	mov	#124,r1
    3baa:	20 20       	mov.b	r2,@r0
    3bac:	31 fc       	add	r15,r1
    3bae:	52 f5       	mov.l	@(20,r15),r2
    3bb0:	51 16       	mov.l	@(24,r1),r1
    3bb2:	72 01       	add	#1,r2
    3bb4:	21 22       	mov.l	r2,@r1
    3bb6:	e2 7c       	mov	#124,r2
    3bb8:	32 fc       	add	r15,r2
    3bba:	52 28       	mov.l	@(32,r2),r2
    3bbc:	22 28       	tst	r2,r2
    3bbe:	8b 01       	bf	3bc4 <__dtoa_r+0x6f8>
    3bc0:	ac c5       	bra	354e <__dtoa_r+0x82>
    3bc2:	60 d3       	mov	r13,r0
    3bc4:	22 02       	mov.l	r0,@r2
    3bc6:	60 d3       	mov	r13,r0
    3bc8:	7f 70       	add	#112,r15
    3bca:	4f 26       	lds.l	@r15+,pr
    3bcc:	6e f6       	mov.l	@r15+,r14
    3bce:	6d f6       	mov.l	@r15+,r13
    3bd0:	6c f6       	mov.l	@r15+,r12
    3bd2:	6b f6       	mov.l	@r15+,r11
    3bd4:	6a f6       	mov.l	@r15+,r10
    3bd6:	69 f6       	mov.l	@r15+,r9
    3bd8:	68 f6       	mov.l	@r15+,r8
    3bda:	00 0b       	rts	
    3bdc:	00 09       	nop	
    3bde:	00 09       	nop	
    3be0:	53 fa       	mov.l	@(40,r15),r3
    3be2:	62 0b       	neg	r0,r2
    3be4:	1f 2e       	mov.l	r2,@(56,r15)
    3be6:	33 08       	sub	r0,r3
    3be8:	e0 44       	mov	#68,r0
    3bea:	1f 3a       	mov.l	r3,@(40,r15)
    3bec:	ad 80       	bra	36f0 <__dtoa_r+0x224>
    3bee:	0f 76       	mov.l	r7,@(r0,r15)
    3bf0:	e2 00       	mov	#0,r2
    3bf2:	1f ca       	mov.l	r12,@(40,r15)
    3bf4:	ad 6f       	bra	36d6 <__dtoa_r+0x20a>
    3bf6:	1f 27       	mov.l	r2,@(28,r15)
    3bf8:	d2 24       	mov.l	3c8c <__dtoa_r+0x7c0>,r2	! 96ac <___floatsidf>
    3bfa:	42 0b       	jsr	@r2
    3bfc:	54 f5       	mov.l	@(20,r15),r4
    3bfe:	64 03       	mov	r0,r4
    3c00:	d0 23       	mov.l	3c90 <__dtoa_r+0x7c4>,r0	! 955c <___nedf2>
    3c02:	65 13       	mov	r1,r5
    3c04:	66 83       	mov	r8,r6
    3c06:	40 0b       	jsr	@r0
    3c08:	67 93       	mov	r9,r7
    3c0a:	20 08       	tst	r0,r0
    3c0c:	89 02       	bt	3c14 <__dtoa_r+0x748>
    3c0e:	50 f5       	mov.l	@(20,r15),r0
    3c10:	70 ff       	add	#-1,r0
    3c12:	1f 05       	mov.l	r0,@(20,r15)
    3c14:	ad 3b       	bra	368e <__dtoa_r+0x1c2>
    3c16:	50 f5       	mov.l	@(20,r15),r0
    3c18:	95 29       	mov.w	3c6e <__dtoa_r+0x7a2>,r5	! fbee
    3c1a:	d0 1e       	mov.l	3c94 <__dtoa_r+0x7c8>,r0	! 8514 <___ashlsi3>
    3c1c:	40 0b       	jsr	@r0
    3c1e:	35 b8       	sub	r11,r5
    3c20:	ad c9       	bra	37b6 <__dtoa_r+0x2ea>
    3c22:	64 03       	mov	r0,r4
    3c24:	ad 4d       	bra	36c2 <__dtoa_r+0x1f6>
    3c26:	1f 3d       	mov.l	r3,@(52,r15)
    3c28:	e2 01       	mov	#1,r2
    3c2a:	33 27       	cmp/gt	r2,r3
    3c2c:	89 02       	bt	3c34 <__dtoa_r+0x768>
    3c2e:	a5 09       	bra	4644 <__dtoa_r+0x1178>
    3c30:	e0 5c       	mov	#92,r0
    3c32:	00 09       	nop	
    3c34:	51 f9       	mov.l	@(36,r15),r1
    3c36:	52 fe       	mov.l	@(56,r15),r2
    3c38:	71 ff       	add	#-1,r1
    3c3a:	32 13       	cmp/ge	r1,r2
    3c3c:	89 02       	bt	3c44 <__dtoa_r+0x778>
    3c3e:	a4 7f       	bra	4540 <__dtoa_r+0x1074>
    3c40:	53 fe       	mov.l	@(56,r15),r3
    3c42:	00 09       	nop	
    3c44:	6b 23       	mov	r2,r11
    3c46:	3b 18       	sub	r1,r11
    3c48:	50 f9       	mov.l	@(36,r15),r0
    3c4a:	59 fa       	mov.l	@(40,r15),r9
    3c4c:	40 11       	cmp/pz	r0
    3c4e:	89 01       	bt	3c54 <__dtoa_r+0x788>
    3c50:	a5 04       	bra	465c <__dtoa_r+0x1190>
    3c52:	39 08       	sub	r0,r9
    3c54:	52 f9       	mov.l	@(36,r15),r2
    3c56:	53 fa       	mov.l	@(40,r15),r3
    3c58:	e5 01       	mov	#1,r5
    3c5a:	da 05       	mov.l	3c70 <__dtoa_r+0x7a4>,r10	! 5b74 <___i2b>
    3c5c:	33 2c       	add	r2,r3
    3c5e:	1f 3a       	mov.l	r3,@(40,r15)
    3c60:	53 f7       	mov.l	@(28,r15),r3
    3c62:	54 f2       	mov.l	@(8,r15),r4
    3c64:	33 2c       	add	r2,r3
    3c66:	4a 0b       	jsr	@r10
    3c68:	1f 37       	mov.l	r3,@(28,r15)
    3c6a:	ae db       	bra	3a24 <__dtoa_r+0x558>
    3c6c:	6c 03       	mov	r0,r12
    3c6e:	fb ee       	.word 0xfbee
    3c70:	00 00       	.word 0x0000
    3c72:	5b 74       	mov.l	@(16,r7),r11
    3c74:	00 00       	.word 0x0000
    3c76:	59 18       	mov.l	@(32,r1),r9
    3c78:	00 00       	.word 0x0000
    3c7a:	5d 2c       	mov.l	@(48,r2),r13
    3c7c:	00 00       	.word 0x0000
    3c7e:	5b 94       	mov.l	@(16,r9),r11
    3c80:	00 00       	.word 0x0000
    3c82:	5e 00       	mov.l	@(0,r0),r14
    3c84:	00 00       	.word 0x0000
    3c86:	59 30       	mov.l	@(0,r3),r9
    3c88:	00 00       	.word 0x0000
    3c8a:	5e fc       	mov.l	@(48,r15),r14
    3c8c:	00 00       	.word 0x0000
    3c8e:	96 ac       	mov.w	3dea <__dtoa_r+0x91e>,r6	! 9
    3c90:	00 00       	.word 0x0000
    3c92:	95 5c       	mov.w	3d4e <__dtoa_r+0x882>,r5	! 8913
    3c94:	00 00       	.word 0x0000
    3c96:	85 14       	mov.w	@(8,r1),r0
    3c98:	e3 00       	mov	#0,r3
    3c9a:	e0 48       	mov	#72,r0
    3c9c:	0f 36       	mov.l	r3,@(r0,r15)
    3c9e:	90 bb       	mov.w	3e18 <__dtoa_r+0x94c>,r0	! 90
    3ca0:	07 fe       	mov.l	@(r0,r15),r7
    3ca2:	47 15       	cmp/pl	r7
    3ca4:	89 02       	bt	3cac <__dtoa_r+0x7e0>
    3ca6:	a4 3b       	bra	4520 <__dtoa_r+0x1054>
    3ca8:	e0 50       	mov	#80,r0
    3caa:	00 09       	nop	
    3cac:	e2 0e       	mov	#14,r2
    3cae:	32 72       	cmp/hs	r7,r2
    3cb0:	00 29       	movt	r0
    3cb2:	68 03       	mov	r0,r8
    3cb4:	e0 50       	mov	#80,r0
    3cb6:	0f 76       	mov.l	r7,@(r0,r15)
    3cb8:	28 19       	and	r1,r8
    3cba:	1f 79       	mov.l	r7,@(36,r15)
    3cbc:	e1 00       	mov	#0,r1
    3cbe:	1a 11       	mov.l	r1,@(4,r10)
    3cc0:	e1 17       	mov	#23,r1
    3cc2:	37 16       	cmp/hi	r1,r7
    3cc4:	e5 00       	mov	#0,r5
    3cc6:	8b 09       	bf	3cdc <__dtoa_r+0x810>
    3cc8:	e2 01       	mov	#1,r2
    3cca:	e1 04       	mov	#4,r1
    3ccc:	31 1c       	add	r1,r1
    3cce:	63 13       	mov	r1,r3
    3cd0:	73 14       	add	#20,r3
    3cd2:	33 76       	cmp/hi	r7,r3
    3cd4:	65 23       	mov	r2,r5
    3cd6:	72 01       	add	#1,r2
    3cd8:	8b f8       	bf	3ccc <__dtoa_r+0x800>
    3cda:	1a 51       	mov.l	r5,@(4,r10)
    3cdc:	d7 4f       	mov.l	3e1c <__dtoa_r+0x950>,r7	! 58a0 <__Balloc>
    3cde:	e0 4c       	mov	#76,r0
    3ce0:	54 f2       	mov.l	@(8,r15),r4
    3ce2:	47 0b       	jsr	@r7
    3ce4:	0f 76       	mov.l	r7,@(r0,r15)
    3ce6:	1f 04       	mov.l	r0,@(16,r15)
    3ce8:	28 88       	tst	r8,r8
    3cea:	1a 00       	mov.l	r0,@(0,r10)
    3cec:	8b 02       	bf	3cf4 <__dtoa_r+0x828>
    3cee:	ad 8b       	bra	3808 <__dtoa_r+0x33c>
    3cf0:	52 fb       	mov.l	@(44,r15),r2
    3cf2:	00 09       	nop	
    3cf4:	e0 40       	mov	#64,r0
    3cf6:	30 fc       	add	r15,r0
    3cf8:	10 d5       	mov.l	r13,@(20,r0)
    3cfa:	10 e6       	mov.l	r14,@(24,r0)
    3cfc:	50 f5       	mov.l	@(20,r15),r0
    3cfe:	40 15       	cmp/pl	r0
    3d00:	89 02       	bt	3d08 <__dtoa_r+0x83c>
    3d02:	a2 23       	bra	414c <__dtoa_r+0xc80>
    3d04:	68 0b       	neg	r0,r8
    3d06:	00 09       	nop	
    3d08:	5e f5       	mov.l	@(20,r15),r14
    3d0a:	c9 0f       	and	#15,r0
    3d0c:	d1 44       	mov.l	3e20 <__dtoa_r+0x954>,r1	! 9f04 <___mprec_tens>
    3d0e:	4e 21       	shar	r14
    3d10:	4e 21       	shar	r14
    3d12:	4e 21       	shar	r14
    3d14:	40 08       	shll2	r0
    3d16:	30 0c       	add	r0,r0
    3d18:	4e 21       	shar	r14
    3d1a:	31 0c       	add	r0,r1
    3d1c:	60 e3       	mov	r14,r0
    3d1e:	c8 10       	tst	#16,r0
    3d20:	68 12       	mov.l	@r1,r8
    3d22:	59 11       	mov.l	@(4,r1),r9
    3d24:	8b 02       	bf	3d2c <__dtoa_r+0x860>
    3d26:	a1 f9       	bra	411c <__dtoa_r+0xc50>
    3d28:	e0 40       	mov	#64,r0
    3d2a:	00 09       	nop	
    3d2c:	e1 0f       	mov	#15,r1
    3d2e:	2e 19       	and	r1,r14
    3d30:	dd 3c       	mov.l	3e24 <__dtoa_r+0x958>,r13	! 93a0 <___divdf3>
    3d32:	e2 40       	mov	#64,r2
    3d34:	d1 3c       	mov.l	3e28 <__dtoa_r+0x95c>,r1	! 9edc <___mprec_bigtens>
    3d36:	32 fc       	add	r15,r2
    3d38:	54 25       	mov.l	@(20,r2),r4
    3d3a:	ec 03       	mov	#3,r12
    3d3c:	55 26       	mov.l	@(24,r2),r5
    3d3e:	56 18       	mov.l	@(32,r1),r6
    3d40:	4d 0b       	jsr	@r13
    3d42:	57 19       	mov.l	@(36,r1),r7
    3d44:	e3 3c       	mov	#60,r3
    3d46:	33 fc       	add	r15,r3
    3d48:	23 02       	mov.l	r0,@r3
    3d4a:	13 11       	mov.l	r1,@(4,r3)
    3d4c:	2e e8       	tst	r14,r14
    3d4e:	89 13       	bt	3d78 <__dtoa_r+0x8ac>
    3d50:	da 35       	mov.l	3e28 <__dtoa_r+0x95c>,r10	! 9edc <___mprec_bigtens>
    3d52:	64 83       	mov	r8,r4
    3d54:	65 93       	mov	r9,r5
    3d56:	00 09       	nop	
    3d58:	60 e3       	mov	r14,r0
    3d5a:	c8 01       	tst	#1,r0
    3d5c:	89 06       	bt	3d6c <__dtoa_r+0x8a0>
    3d5e:	d2 33       	mov.l	3e2c <__dtoa_r+0x960>,r2	! 914c <___muldf3>
    3d60:	7c 01       	add	#1,r12
    3d62:	66 a2       	mov.l	@r10,r6
    3d64:	42 0b       	jsr	@r2
    3d66:	57 a1       	mov.l	@(4,r10),r7
    3d68:	64 03       	mov	r0,r4
    3d6a:	65 13       	mov	r1,r5
    3d6c:	4e 21       	shar	r14
    3d6e:	2e e8       	tst	r14,r14
    3d70:	7a 08       	add	#8,r10
    3d72:	8b f1       	bf	3d58 <__dtoa_r+0x88c>
    3d74:	68 43       	mov	r4,r8
    3d76:	69 53       	mov	r5,r9
    3d78:	e3 3c       	mov	#60,r3
    3d7a:	33 fc       	add	r15,r3
    3d7c:	64 32       	mov.l	@r3,r4
    3d7e:	66 83       	mov	r8,r6
    3d80:	55 31       	mov.l	@(4,r3),r5
    3d82:	4d 0b       	jsr	@r13
    3d84:	67 93       	mov	r9,r7
    3d86:	6a 03       	mov	r0,r10
    3d88:	6b 13       	mov	r1,r11
    3d8a:	52 fd       	mov.l	@(52,r15),r2
    3d8c:	22 28       	tst	r2,r2
    3d8e:	89 09       	bt	3da4 <__dtoa_r+0x8d8>
    3d90:	d3 27       	mov.l	3e30 <__dtoa_r+0x964>,r3	! 9658 <___ltdf2>
    3d92:	64 a3       	mov	r10,r4
    3d94:	65 b3       	mov	r11,r5
    3d96:	d6 27       	mov.l	3e34 <__dtoa_r+0x968>,r6	! 3ff00000
    3d98:	43 0b       	jsr	@r3
    3d9a:	e7 00       	mov	#0,r7
    3d9c:	40 11       	cmp/pz	r0
    3d9e:	89 01       	bt	3da4 <__dtoa_r+0x8d8>
    3da0:	a3 da       	bra	4558 <__dtoa_r+0x108c>
    3da2:	50 f9       	mov.l	@(36,r15),r0
    3da4:	d2 24       	mov.l	3e38 <__dtoa_r+0x96c>,r2	! 96ac <___floatsidf>
    3da6:	42 0b       	jsr	@r2
    3da8:	64 c3       	mov	r12,r4
    3daa:	d3 20       	mov.l	3e2c <__dtoa_r+0x960>,r3	! 914c <___muldf3>
    3dac:	64 03       	mov	r0,r4
    3dae:	65 13       	mov	r1,r5
    3db0:	66 a3       	mov	r10,r6
    3db2:	43 0b       	jsr	@r3
    3db4:	67 b3       	mov	r11,r7
    3db6:	d2 21       	mov.l	3e3c <__dtoa_r+0x970>,r2	! 90a4 <___adddf3>
    3db8:	64 03       	mov	r0,r4
    3dba:	65 13       	mov	r1,r5
    3dbc:	d6 20       	mov.l	3e40 <__dtoa_r+0x974>,r6	! 401c0000
    3dbe:	42 0b       	jsr	@r2
    3dc0:	e7 00       	mov	#0,r7
    3dc2:	6c 03       	mov	r0,r12
    3dc4:	50 f9       	mov.l	@(36,r15),r0
    3dc6:	6d 13       	mov	r1,r13
    3dc8:	d1 1e       	mov.l	3e44 <__dtoa_r+0x978>,r1	! fcc00000
    3dca:	20 08       	tst	r0,r0
    3dcc:	3c 1c       	add	r1,r12
    3dce:	8b 01       	bf	3dd4 <__dtoa_r+0x908>
    3dd0:	a0 fa       	bra	3fc8 <__dtoa_r+0xafc>
    3dd2:	00 09       	nop	
    3dd4:	50 f5       	mov.l	@(20,r15),r0
    3dd6:	e7 40       	mov	#64,r7
    3dd8:	37 fc       	add	r15,r7
    3dda:	53 f9       	mov.l	@(36,r15),r3
    3ddc:	17 08       	mov.l	r0,@(32,r7)
    3dde:	e0 48       	mov	#72,r0
    3de0:	01 fe       	mov.l	@(r0,r15),r1
    3de2:	21 18       	tst	r1,r1
    3de4:	8b 02       	bf	3dec <__dtoa_r+0x920>
    3de6:	a1 e7       	bra	41b8 <__dtoa_r+0xcec>
    3de8:	60 33       	mov	r3,r0
    3dea:	00 09       	nop	
    3dec:	62 33       	mov	r3,r2
    3dee:	d1 0c       	mov.l	3e20 <__dtoa_r+0x954>,r1	! 9f04 <___mprec_tens>
    3df0:	72 ff       	add	#-1,r2
    3df2:	42 08       	shll2	r2
    3df4:	d0 0b       	mov.l	3e24 <__dtoa_r+0x958>,r0	! 93a0 <___divdf3>
    3df6:	32 2c       	add	r2,r2
    3df8:	31 2c       	add	r2,r1
    3dfa:	1f 31       	mov.l	r3,@(4,r15)
    3dfc:	e5 00       	mov	#0,r5
    3dfe:	d4 12       	mov.l	3e48 <__dtoa_r+0x97c>,r4	! 3fe00000
    3e00:	66 12       	mov.l	@r1,r6
    3e02:	40 0b       	jsr	@r0
    3e04:	57 11       	mov.l	@(4,r1),r7
    3e06:	d2 11       	mov.l	3e4c <__dtoa_r+0x980>,r2	! 90f4 <___subdf3>
    3e08:	66 c3       	mov	r12,r6
    3e0a:	67 d3       	mov	r13,r7
    3e0c:	64 03       	mov	r0,r4
    3e0e:	42 0b       	jsr	@r2
    3e10:	65 13       	mov	r1,r5
    3e12:	d7 0f       	mov.l	3e50 <__dtoa_r+0x984>,r7	! 9748 <___fixdfsi>
    3e14:	a0 1e       	bra	3e54 <__dtoa_r+0x988>
    3e16:	65 b3       	mov	r11,r5
    3e18:	00 90       	.word 0x0090
    3e1a:	00 09       	nop	
    3e1c:	00 00       	.word 0x0000
    3e1e:	58 a0       	mov.l	@(0,r10),r8
    3e20:	00 00       	.word 0x0000
    3e22:	9f 04       	mov.w	3e2e <__dtoa_r+0x962>,r15	! 914c <___muldf3>
    3e24:	00 00       	.word 0x0000
    3e26:	93 a0       	mov.w	3f6a <__dtoa_r+0xa9e>,r3	! e048
    3e28:	00 00       	.word 0x0000
    3e2a:	9e dc       	mov.w	3fe6 <__dtoa_r+0xb1a>,r14	! 8b01
    3e2c:	00 00       	.word 0x0000
    3e2e:	91 4c       	mov.w	3eca <__dtoa_r+0x9fe>,r1	! 9
    3e30:	00 00       	.word 0x0000
    3e32:	96 58       	mov.w	3ee6 <__dtoa_r+0xa1a>,r6	! a3bb
    3e34:	3f f0       	cmp/eq	r15,r15
    3e36:	00 00       	.word 0x0000
    3e38:	00 00       	.word 0x0000
    3e3a:	96 ac       	mov.w	3f96 <__dtoa_r+0xaca>,r6	! e001
    3e3c:	00 00       	.word 0x0000
    3e3e:	90 a4       	mov.w	3f8a <__dtoa_r+0xabe>,r0	! 229
    3e40:	40 1c       	.word 0x401c
    3e42:	00 00       	.word 0x0000
    3e44:	fc c0       	.word 0xfcc0
    3e46:	00 00       	.word 0x0000
    3e48:	3f e0       	cmp/eq	r14,r15
    3e4a:	00 00       	.word 0x0000
    3e4c:	00 00       	.word 0x0000
    3e4e:	90 f4       	mov.w	403a <__dtoa_r+0xb6e>,r0	! 58fc
    3e50:	00 00       	.word 0x0000
    3e52:	97 48       	mov.w	3ee6 <__dtoa_r+0xa1a>,r7	! a3bb
    3e54:	6e 13       	mov	r1,r14
    3e56:	64 a3       	mov	r10,r4
    3e58:	47 0b       	jsr	@r7
    3e5a:	6d 03       	mov	r0,r13
    3e5c:	d2 99       	mov.l	40c4 <__dtoa_r+0xbf8>,r2	! 96ac <___floatsidf>
    3e5e:	6c 03       	mov	r0,r12
    3e60:	42 0b       	jsr	@r2
    3e62:	64 03       	mov	r0,r4
    3e64:	d2 98       	mov.l	40c8 <__dtoa_r+0xbfc>,r2	! 90f4 <___subdf3>
    3e66:	64 a3       	mov	r10,r4
    3e68:	65 b3       	mov	r11,r5
    3e6a:	66 03       	mov	r0,r6
    3e6c:	42 0b       	jsr	@r2
    3e6e:	67 13       	mov	r1,r7
    3e70:	68 03       	mov	r0,r8
    3e72:	da 96       	mov.l	40cc <__dtoa_r+0xc00>,r10	! 95b0 <___gtdf2>
    3e74:	7c 30       	add	#48,r12
    3e76:	50 f4       	mov.l	@(16,r15),r0
    3e78:	6c ce       	exts.b	r12,r12
    3e7a:	69 13       	mov	r1,r9
    3e7c:	6b 03       	mov	r0,r11
    3e7e:	20 c0       	mov.b	r12,@r0
    3e80:	64 d3       	mov	r13,r4
    3e82:	65 e3       	mov	r14,r5
    3e84:	66 83       	mov	r8,r6
    3e86:	4a 0b       	jsr	@r10
    3e88:	67 13       	mov	r1,r7
    3e8a:	40 15       	cmp/pl	r0
    3e8c:	7b 01       	add	#1,r11
    3e8e:	8b 01       	bf	3e94 <__dtoa_r+0x9c8>
    3e90:	a4 8a       	bra	47a8 <__dtoa_r+0x12dc>
    3e92:	e0 60       	mov	#96,r0
    3e94:	d2 8c       	mov.l	40c8 <__dtoa_r+0xbfc>,r2	! 90f4 <___subdf3>
    3e96:	e5 00       	mov	#0,r5
    3e98:	d4 8d       	mov.l	40d0 <__dtoa_r+0xc04>,r4	! 3ff00000
    3e9a:	66 83       	mov	r8,r6
    3e9c:	42 0b       	jsr	@r2
    3e9e:	67 93       	mov	r9,r7
    3ea0:	64 d3       	mov	r13,r4
    3ea2:	65 e3       	mov	r14,r5
    3ea4:	66 03       	mov	r0,r6
    3ea6:	4a 0b       	jsr	@r10
    3ea8:	67 13       	mov	r1,r7
    3eaa:	40 15       	cmp/pl	r0
    3eac:	53 f1       	mov.l	@(4,r15),r3
    3eae:	8b 01       	bf	3eb4 <__dtoa_r+0x9e8>
    3eb0:	a4 78       	bra	47a4 <__dtoa_r+0x12d8>
    3eb2:	5d f4       	mov.l	@(16,r15),r13
    3eb4:	e1 01       	mov	#1,r1
    3eb6:	33 17       	cmp/gt	r1,r3
    3eb8:	8b 1b       	bf	3ef2 <__dtoa_r+0xa26>
    3eba:	57 f4       	mov.l	@(16,r15),r7
    3ebc:	6a b3       	mov	r11,r10
    3ebe:	6c d3       	mov	r13,r12
    3ec0:	37 3c       	add	r3,r7
    3ec2:	1f 7f       	mov.l	r7,@(60,r15)
    3ec4:	db 80       	mov.l	40c8 <__dtoa_r+0xbfc>,r11	! 90f4 <___subdf3>
    3ec6:	a0 17       	bra	3ef8 <__dtoa_r+0xa2c>
    3ec8:	6d e3       	mov	r14,r13
    3eca:	00 09       	nop	
    3ecc:	d4 80       	mov.l	40d0 <__dtoa_r+0xc04>,r4	! 3ff00000
    3ece:	e5 00       	mov	#0,r5
    3ed0:	66 83       	mov	r8,r6
    3ed2:	4b 0b       	jsr	@r11
    3ed4:	67 93       	mov	r9,r7
    3ed6:	65 13       	mov	r1,r5
    3ed8:	d1 7e       	mov.l	40d4 <__dtoa_r+0xc08>,r1	! 9658 <___ltdf2>
    3eda:	64 03       	mov	r0,r4
    3edc:	66 c3       	mov	r12,r6
    3ede:	41 0b       	jsr	@r1
    3ee0:	67 d3       	mov	r13,r7
    3ee2:	40 11       	cmp/pz	r0
    3ee4:	89 02       	bt	3eec <__dtoa_r+0xa20>
    3ee6:	a3 bb       	bra	4660 <__dtoa_r+0x1194>
    3ee8:	5d f4       	mov.l	@(16,r15),r13
    3eea:	00 09       	nop	
    3eec:	52 ff       	mov.l	@(60,r15),r2
    3eee:	3a 20       	cmp/eq	r2,r10
    3ef0:	8b 02       	bf	3ef8 <__dtoa_r+0xa2c>
    3ef2:	a1 27       	bra	4144 <__dtoa_r+0xc78>
    3ef4:	e7 40       	mov	#64,r7
    3ef6:	00 09       	nop	
    3ef8:	d3 77       	mov.l	40d8 <__dtoa_r+0xc0c>,r3	! 914c <___muldf3>
    3efa:	64 c3       	mov	r12,r4
    3efc:	65 d3       	mov	r13,r5
    3efe:	d6 77       	mov.l	40dc <__dtoa_r+0xc10>,r6	! 40240000
    3f00:	43 0b       	jsr	@r3
    3f02:	e7 00       	mov	#0,r7
    3f04:	d2 74       	mov.l	40d8 <__dtoa_r+0xc0c>,r2	! 914c <___muldf3>
    3f06:	64 83       	mov	r8,r4
    3f08:	d6 74       	mov.l	40dc <__dtoa_r+0xc10>,r6	! 40240000
    3f0a:	65 93       	mov	r9,r5
    3f0c:	e7 00       	mov	#0,r7
    3f0e:	6c 03       	mov	r0,r12
    3f10:	42 0b       	jsr	@r2
    3f12:	6d 13       	mov	r1,r13
    3f14:	d3 72       	mov.l	40e0 <__dtoa_r+0xc14>,r3	! 9748 <___fixdfsi>
    3f16:	68 03       	mov	r0,r8
    3f18:	69 13       	mov	r1,r9
    3f1a:	64 83       	mov	r8,r4
    3f1c:	43 0b       	jsr	@r3
    3f1e:	65 13       	mov	r1,r5
    3f20:	d7 68       	mov.l	40c4 <__dtoa_r+0xbf8>,r7	! 96ac <___floatsidf>
    3f22:	6e 03       	mov	r0,r14
    3f24:	47 0b       	jsr	@r7
    3f26:	64 03       	mov	r0,r4
    3f28:	d2 67       	mov.l	40c8 <__dtoa_r+0xbfc>,r2	! 90f4 <___subdf3>
    3f2a:	64 83       	mov	r8,r4
    3f2c:	65 93       	mov	r9,r5
    3f2e:	66 03       	mov	r0,r6
    3f30:	42 0b       	jsr	@r2
    3f32:	67 13       	mov	r1,r7
    3f34:	d3 67       	mov.l	40d4 <__dtoa_r+0xc08>,r3	! 9658 <___ltdf2>
    3f36:	7e 30       	add	#48,r14
    3f38:	68 03       	mov	r0,r8
    3f3a:	6e ee       	exts.b	r14,r14
    3f3c:	2a e0       	mov.b	r14,@r10
    3f3e:	69 13       	mov	r1,r9
    3f40:	64 83       	mov	r8,r4
    3f42:	65 13       	mov	r1,r5
    3f44:	66 c3       	mov	r12,r6
    3f46:	43 0b       	jsr	@r3
    3f48:	67 d3       	mov	r13,r7
    3f4a:	40 11       	cmp/pz	r0
    3f4c:	7a 01       	add	#1,r10
    3f4e:	89 bd       	bt	3ecc <__dtoa_r+0xa00>
    3f50:	e0 60       	mov	#96,r0
    3f52:	02 fe       	mov.l	@(r0,r15),r2
    3f54:	5d f4       	mov.l	@(16,r15),r13
    3f56:	1f 25       	mov.l	r2,@(20,r15)
    3f58:	d8 62       	mov.l	40e4 <__dtoa_r+0xc18>,r8	! 5918 <__Bfree>
    3f5a:	ae 20       	bra	3b9e <__dtoa_r+0x6d2>
    3f5c:	1f a4       	mov.l	r10,@(16,r15)
    3f5e:	00 09       	nop	
    3f60:	e3 01       	mov	#1,r3
    3f62:	e0 48       	mov	#72,r0
    3f64:	ae 9b       	bra	3c9e <__dtoa_r+0x7d2>
    3f66:	0f 36       	mov.l	r3,@(r0,r15)
    3f68:	e7 00       	mov	#0,r7
    3f6a:	e0 48       	mov	#72,r0
    3f6c:	0f 76       	mov.l	r7,@(r0,r15)
    3f6e:	90 a7       	mov.w	40c0 <__dtoa_r+0xbf4>,r0	! 90
    3f70:	02 fe       	mov.l	@(r0,r15),r2
    3f72:	50 f5       	mov.l	@(20,r15),r0
    3f74:	32 0c       	add	r0,r2
    3f76:	67 23       	mov	r2,r7
    3f78:	e0 50       	mov	#80,r0
    3f7a:	77 01       	add	#1,r7
    3f7c:	0f 26       	mov.l	r2,@(r0,r15)
    3f7e:	47 15       	cmp/pl	r7
    3f80:	e2 0e       	mov	#14,r2
    3f82:	89 01       	bt	3f88 <__dtoa_r+0xabc>
    3f84:	a2 c4       	bra	4510 <__dtoa_r+0x1044>
    3f86:	32 72       	cmp/hs	r7,r2
    3f88:	32 72       	cmp/hs	r7,r2
    3f8a:	02 29       	movt	r2
    3f8c:	68 23       	mov	r2,r8
    3f8e:	28 19       	and	r1,r8
    3f90:	ae 94       	bra	3cbc <__dtoa_r+0x7f0>
    3f92:	1f 79       	mov.l	r7,@(36,r15)
    3f94:	e7 40       	mov	#64,r7
    3f96:	e0 01       	mov	#1,r0
    3f98:	37 fc       	add	r15,r7
    3f9a:	af e8       	bra	3f6e <__dtoa_r+0xaa2>
    3f9c:	17 02       	mov.l	r0,@(8,r7)
    3f9e:	00 09       	nop	
    3fa0:	d7 48       	mov.l	40c4 <__dtoa_r+0xbf8>,r7	! 96ac <___floatsidf>
    3fa2:	47 0b       	jsr	@r7
    3fa4:	64 c3       	mov	r12,r4
    3fa6:	d2 4c       	mov.l	40d8 <__dtoa_r+0xc0c>,r2	! 914c <___muldf3>
    3fa8:	64 03       	mov	r0,r4
    3faa:	65 13       	mov	r1,r5
    3fac:	66 a3       	mov	r10,r6
    3fae:	42 0b       	jsr	@r2
    3fb0:	67 b3       	mov	r11,r7
    3fb2:	d3 4d       	mov.l	40e8 <__dtoa_r+0xc1c>,r3	! 90a4 <___adddf3>
    3fb4:	64 03       	mov	r0,r4
    3fb6:	65 13       	mov	r1,r5
    3fb8:	d6 4c       	mov.l	40ec <__dtoa_r+0xc20>,r6	! 401c0000
    3fba:	43 0b       	jsr	@r3
    3fbc:	e7 00       	mov	#0,r7
    3fbe:	6d 13       	mov	r1,r13
    3fc0:	d1 4b       	mov.l	40f0 <__dtoa_r+0xc24>,r1	! fcc00000
    3fc2:	6c 03       	mov	r0,r12
    3fc4:	3c 1c       	add	r1,r12
    3fc6:	00 09       	nop	
    3fc8:	d2 3f       	mov.l	40c8 <__dtoa_r+0xbfc>,r2	! 90f4 <___subdf3>
    3fca:	64 a3       	mov	r10,r4
    3fcc:	65 b3       	mov	r11,r5
    3fce:	d6 49       	mov.l	40f4 <__dtoa_r+0xc28>,r6	! 40140000
    3fd0:	42 0b       	jsr	@r2
    3fd2:	e7 00       	mov	#0,r7
    3fd4:	6a 03       	mov	r0,r10
    3fd6:	d0 3d       	mov.l	40cc <__dtoa_r+0xc00>,r0	! 95b0 <___gtdf2>
    3fd8:	6b 13       	mov	r1,r11
    3fda:	64 a3       	mov	r10,r4
    3fdc:	65 13       	mov	r1,r5
    3fde:	66 c3       	mov	r12,r6
    3fe0:	40 0b       	jsr	@r0
    3fe2:	67 d3       	mov	r13,r7
    3fe4:	40 15       	cmp/pl	r0
    3fe6:	8b 01       	bf	3fec <__dtoa_r+0xb20>
    3fe8:	a0 e2       	bra	41b0 <__dtoa_r+0xce4>
    3fea:	eb 00       	mov	#0,r11
    3fec:	d1 42       	mov.l	40f8 <__dtoa_r+0xc2c>,r1	! 80000000
    3fee:	66 c3       	mov	r12,r6
    3ff0:	d3 38       	mov.l	40d4 <__dtoa_r+0xc08>,r3	! 9658 <___ltdf2>
    3ff2:	64 a3       	mov	r10,r4
    3ff4:	65 b3       	mov	r11,r5
    3ff6:	26 1a       	xor	r1,r6
    3ff8:	43 0b       	jsr	@r3
    3ffa:	67 d3       	mov	r13,r7
    3ffc:	40 11       	cmp/pz	r0
    3ffe:	8b 01       	bf	4004 <__dtoa_r+0xb38>
    4000:	a0 a0       	bra	4144 <__dtoa_r+0xc78>
    4002:	e7 40       	mov	#64,r7
    4004:	d8 37       	mov.l	40e4 <__dtoa_r+0xc18>,r8	! 5918 <__Bfree>
    4006:	eb 00       	mov	#0,r11
    4008:	ec 00       	mov	#0,r12
    400a:	90 59       	mov.w	40c0 <__dtoa_r+0xbf4>,r0	! 90
    400c:	e9 00       	mov	#0,r9
    400e:	5d f4       	mov.l	@(16,r15),r13
    4010:	01 fe       	mov.l	@(r0,r15),r1
    4012:	61 17       	not	r1,r1
    4014:	ad b3       	bra	3b7e <__dtoa_r+0x6b2>
    4016:	1f 15       	mov.l	r1,@(20,r15)
    4018:	01 fe       	mov.l	@(r0,r15),r1
    401a:	21 18       	tst	r1,r1
    401c:	89 02       	bt	4024 <__dtoa_r+0xb58>
    401e:	a1 bd       	bra	439c <__dtoa_r+0xed0>
    4020:	00 09       	nop	
    4022:	00 09       	nop	
    4024:	d2 35       	mov.l	40fc <__dtoa_r+0xc30>,r2	! 5efc <___mcmp>
    4026:	1f 2a       	mov.l	r2,@(40,r15)
    4028:	5a f4       	mov.l	@(16,r15),r10
    402a:	d1 35       	mov.l	4100 <__dtoa_r+0xc34>,r1	! 3338 <_quorem>
    402c:	1f c3       	mov.l	r12,@(12,r15)
    402e:	6d 13       	mov	r1,r13
    4030:	1f 86       	mov.l	r8,@(24,r15)
    4032:	6c a3       	mov	r10,r12
    4034:	d9 33       	mov.l	4104 <__dtoa_r+0xc38>,r9	! 5930 <___multadd>
    4036:	5e f9       	mov.l	@(36,r15),r14
    4038:	a0 06       	bra	4048 <__dtoa_r+0xb7c>
    403a:	58 fc       	mov.l	@(48,r15),r8
    403c:	65 83       	mov	r8,r5
    403e:	54 f2       	mov.l	@(8,r15),r4
    4040:	e6 0a       	mov	#10,r6
    4042:	49 0b       	jsr	@r9
    4044:	e7 00       	mov	#0,r7
    4046:	68 03       	mov	r0,r8
    4048:	64 83       	mov	r8,r4
    404a:	4d 0b       	jsr	@r13
    404c:	65 b3       	mov	r11,r5
    404e:	70 30       	add	#48,r0
    4050:	2c 00       	mov.b	r0,@r12
    4052:	7c 01       	add	#1,r12
    4054:	63 c3       	mov	r12,r3
    4056:	33 a8       	sub	r10,r3
    4058:	3e 37       	cmp/gt	r3,r14
    405a:	89 ef       	bt	403c <__dtoa_r+0xb70>
    405c:	5e f9       	mov.l	@(36,r15),r14
    405e:	6d 03       	mov	r0,r13
    4060:	1f 8c       	mov.l	r8,@(48,r15)
    4062:	4e 15       	cmp/pl	r14
    4064:	5c f3       	mov.l	@(12,r15),r12
    4066:	58 f6       	mov.l	@(24,r15),r8
    4068:	89 02       	bt	4070 <__dtoa_r+0xba4>
    406a:	a3 6f       	bra	474c <__dtoa_r+0x1280>
    406c:	ee 01       	mov	#1,r14
    406e:	00 09       	nop	
    4070:	50 f4       	mov.l	@(16,r15),r0
    4072:	e9 00       	mov	#0,r9
    4074:	3e 0c       	add	r0,r14
    4076:	d0 24       	mov.l	4108 <__dtoa_r+0xc3c>,r0	! 5e00 <___lshift>
    4078:	e6 01       	mov	#1,r6
    407a:	54 f2       	mov.l	@(8,r15),r4
    407c:	40 0b       	jsr	@r0
    407e:	55 fc       	mov.l	@(48,r15),r5
    4080:	51 fa       	mov.l	@(40,r15),r1
    4082:	64 03       	mov	r0,r4
    4084:	1f 0c       	mov.l	r0,@(48,r15)
    4086:	41 0b       	jsr	@r1
    4088:	65 b3       	mov	r11,r5
    408a:	40 15       	cmp/pl	r0
    408c:	89 02       	bt	4094 <__dtoa_r+0xbc8>
    408e:	a2 f5       	bra	467c <__dtoa_r+0x11b0>
    4090:	20 08       	tst	r0,r0
    4092:	00 09       	nop	
    4094:	6a e3       	mov	r14,r10
    4096:	7a ff       	add	#-1,r10
    4098:	52 f4       	mov.l	@(16,r15),r2
    409a:	61 a3       	mov	r10,r1
    409c:	60 a0       	mov.b	@r10,r0
    409e:	00 09       	nop	
    40a0:	88 39       	cmp/eq	#57,r0
    40a2:	89 01       	bt	40a8 <__dtoa_r+0xbdc>
    40a4:	a3 26       	bra	46f4 <__dtoa_r+0x1228>
    40a6:	70 01       	add	#1,r0
    40a8:	32 a0       	cmp/eq	r10,r2
    40aa:	8b 01       	bf	40b0 <__dtoa_r+0xbe4>
    40ac:	a2 40       	bra	4530 <__dtoa_r+0x1064>
    40ae:	50 f5       	mov.l	@(20,r15),r0
    40b0:	71 ff       	add	#-1,r1
    40b2:	6e a3       	mov	r10,r14
    40b4:	60 10       	mov.b	@r1,r0
    40b6:	af f3       	bra	40a0 <__dtoa_r+0xbd4>
    40b8:	7a ff       	add	#-1,r10
    40ba:	00 09       	nop	
    40bc:	ad 1b       	bra	3af6 <__dtoa_r+0x62a>
    40be:	52 fa       	mov.l	@(40,r15),r2
    40c0:	00 90       	.word 0x0090
    40c2:	00 09       	nop	
    40c4:	00 00       	.word 0x0000
    40c6:	96 ac       	mov.w	4222 <__dtoa_r+0xd56>,r6	! 6513
    40c8:	00 00       	.word 0x0000
    40ca:	90 f4       	mov.w	42b6 <__dtoa_r+0xdea>,r0	! 70ff
    40cc:	00 00       	.word 0x0000
    40ce:	95 b0       	mov.w	4232 <__dtoa_r+0xd66>,r5	! 6b03
    40d0:	3f f0       	cmp/eq	r15,r15
    40d2:	00 00       	.word 0x0000
    40d4:	00 00       	.word 0x0000
    40d6:	96 58       	mov.w	418a <__dtoa_r+0xcbe>,r6	! 6513
    40d8:	00 00       	.word 0x0000
    40da:	91 4c       	mov.w	4176 <__dtoa_r+0xcaa>,r1	! 5711
    40dc:	40 24       	rotcl	r0
    40de:	00 00       	.word 0x0000
    40e0:	00 00       	.word 0x0000
    40e2:	97 48       	mov.w	4176 <__dtoa_r+0xcaa>,r7	! 5711
    40e4:	00 00       	.word 0x0000
    40e6:	59 18       	mov.l	@(32,r1),r9
    40e8:	00 00       	.word 0x0000
    40ea:	90 a4       	mov.w	4236 <__dtoa_r+0xd6a>,r0	! 6403
    40ec:	40 1c       	.word 0x401c
    40ee:	00 00       	.word 0x0000
    40f0:	fc c0       	.word 0xfcc0
    40f2:	00 00       	.word 0x0000
    40f4:	40 14       	.word 0x4014
    40f6:	00 00       	.word 0x0000
    40f8:	80 00       	mov.b	r0,@(0,r0)
    40fa:	00 00       	.word 0x0000
    40fc:	00 00       	.word 0x0000
    40fe:	5e fc       	mov.l	@(48,r15),r14
    4100:	00 00       	.word 0x0000
    4102:	33 38       	sub	r3,r3
    4104:	00 00       	.word 0x0000
    4106:	59 30       	mov.l	@(0,r3),r9
    4108:	00 00       	.word 0x0000
    410a:	5e 00       	mov.l	@(0,r0),r14
    410c:	d0 8f       	mov.l	434c <__dtoa_r+0xe80>,r0	! 5d2c <___pow5mult>
    410e:	55 fc       	mov.l	@(48,r15),r5
    4110:	40 0b       	jsr	@r0
    4112:	56 fe       	mov.l	@(56,r15),r6
    4114:	1f 0c       	mov.l	r0,@(48,r15)
    4116:	d8 8e       	mov.l	4350 <__dtoa_r+0xe84>,r8	! 5918 <__Bfree>
    4118:	ac bd       	bra	3a96 <__dtoa_r+0x5ca>
    411a:	54 f2       	mov.l	@(8,r15),r4
    411c:	30 fc       	add	r15,r0
    411e:	51 06       	mov.l	@(24,r0),r1
    4120:	e2 3c       	mov	#60,r2
    4122:	50 05       	mov.l	@(20,r0),r0
    4124:	32 fc       	add	r15,r2
    4126:	12 11       	mov.l	r1,@(4,r2)
    4128:	ec 02       	mov	#2,r12
    412a:	dd 8a       	mov.l	4354 <__dtoa_r+0xe88>,r13	! 93a0 <___divdf3>
    412c:	ae 0e       	bra	3d4c <__dtoa_r+0x880>
    412e:	22 02       	mov.l	r0,@r2
    4130:	60 2a       	negc	r2,r0
    4132:	c8 ff       	tst	#-1,r0
    4134:	89 03       	bt	413e <__dtoa_r+0xc72>
    4136:	d2 86       	mov.l	4350 <__dtoa_r+0xe84>,r2	! 5918 <__Bfree>
    4138:	65 93       	mov	r9,r5
    413a:	42 0b       	jsr	@r2
    413c:	54 f2       	mov.l	@(8,r15),r4
    413e:	ad 2c       	bra	3b9a <__dtoa_r+0x6ce>
    4140:	54 f2       	mov.l	@(8,r15),r4
    4142:	00 09       	nop	
    4144:	37 fc       	add	r15,r7
    4146:	5d 75       	mov.l	@(20,r7),r13
    4148:	ab 5d       	bra	3806 <__dtoa_r+0x33a>
    414a:	5e 76       	mov.l	@(24,r7),r14
    414c:	28 88       	tst	r8,r8
    414e:	8b 01       	bf	4154 <__dtoa_r+0xc88>
    4150:	a2 2e       	bra	45b0 <__dtoa_r+0x10e4>
    4152:	e3 40       	mov	#64,r3
    4154:	60 83       	mov	r8,r0
    4156:	d1 80       	mov.l	4358 <__dtoa_r+0xe8c>,r1	! 9f04 <___mprec_tens>
    4158:	c9 0f       	and	#15,r0
    415a:	48 21       	shar	r8
    415c:	40 08       	shll2	r0
    415e:	d3 7f       	mov.l	435c <__dtoa_r+0xe90>,r3	! 914c <___muldf3>
    4160:	30 0c       	add	r0,r0
    4162:	48 21       	shar	r8
    4164:	e2 40       	mov	#64,r2
    4166:	31 0c       	add	r0,r1
    4168:	32 fc       	add	r15,r2
    416a:	48 21       	shar	r8
    416c:	54 25       	mov.l	@(20,r2),r4
    416e:	48 21       	shar	r8
    4170:	55 26       	mov.l	@(24,r2),r5
    4172:	66 12       	mov.l	@r1,r6
    4174:	43 0b       	jsr	@r3
    4176:	57 11       	mov.l	@(4,r1),r7
    4178:	28 88       	tst	r8,r8
    417a:	6a 03       	mov	r0,r10
    417c:	6b 13       	mov	r1,r11
    417e:	8b 01       	bf	4184 <__dtoa_r+0xcb8>
    4180:	a2 f8       	bra	4774 <__dtoa_r+0x12a8>
    4182:	ec 02       	mov	#2,r12
    4184:	d9 76       	mov.l	4360 <__dtoa_r+0xe94>,r9	! 9edc <___mprec_bigtens>
    4186:	ec 02       	mov	#2,r12
    4188:	64 a3       	mov	r10,r4
    418a:	65 13       	mov	r1,r5
    418c:	60 83       	mov	r8,r0
    418e:	c8 01       	tst	#1,r0
    4190:	89 06       	bt	41a0 <__dtoa_r+0xcd4>
    4192:	d2 72       	mov.l	435c <__dtoa_r+0xe90>,r2	! 914c <___muldf3>
    4194:	7c 01       	add	#1,r12
    4196:	66 92       	mov.l	@r9,r6
    4198:	42 0b       	jsr	@r2
    419a:	57 91       	mov.l	@(4,r9),r7
    419c:	64 03       	mov	r0,r4
    419e:	65 13       	mov	r1,r5
    41a0:	48 21       	shar	r8
    41a2:	28 88       	tst	r8,r8
    41a4:	79 08       	add	#8,r9
    41a6:	8b f1       	bf	418c <__dtoa_r+0xcc0>
    41a8:	6a 43       	mov	r4,r10
    41aa:	ad ee       	bra	3d8a <__dtoa_r+0x8be>
    41ac:	6b 53       	mov	r5,r11
    41ae:	00 09       	nop	
    41b0:	d8 67       	mov.l	4350 <__dtoa_r+0xe84>,r8	! 5918 <__Bfree>
    41b2:	ac d9       	bra	3b68 <__dtoa_r+0x69c>
    41b4:	ec 00       	mov	#0,r12
    41b6:	00 09       	nop	
    41b8:	70 ff       	add	#-1,r0
    41ba:	62 03       	mov	r0,r2
    41bc:	d1 66       	mov.l	4358 <__dtoa_r+0xe8c>,r1	! 9f04 <___mprec_tens>
    41be:	42 08       	shll2	r2
    41c0:	32 2c       	add	r2,r2
    41c2:	31 2c       	add	r2,r1
    41c4:	e7 40       	mov	#64,r7
    41c6:	d2 65       	mov.l	435c <__dtoa_r+0xe90>,r2	! 914c <___muldf3>
    41c8:	37 fc       	add	r15,r7
    41ca:	17 09       	mov.l	r0,@(36,r7)
    41cc:	66 c3       	mov	r12,r6
    41ce:	1f 31       	mov.l	r3,@(4,r15)
    41d0:	67 d3       	mov	r13,r7
    41d2:	64 12       	mov.l	@r1,r4
    41d4:	42 0b       	jsr	@r2
    41d6:	55 11       	mov.l	@(4,r1),r5
    41d8:	d7 62       	mov.l	4364 <__dtoa_r+0xe98>,r7	! 9748 <___fixdfsi>
    41da:	64 a3       	mov	r10,r4
    41dc:	65 b3       	mov	r11,r5
    41de:	6d 13       	mov	r1,r13
    41e0:	47 0b       	jsr	@r7
    41e2:	6c 03       	mov	r0,r12
    41e4:	d2 60       	mov.l	4368 <__dtoa_r+0xe9c>,r2	! 96ac <___floatsidf>
    41e6:	6e 03       	mov	r0,r14
    41e8:	42 0b       	jsr	@r2
    41ea:	64 03       	mov	r0,r4
    41ec:	d2 5f       	mov.l	436c <__dtoa_r+0xea0>,r2	! 90f4 <___subdf3>
    41ee:	64 a3       	mov	r10,r4
    41f0:	65 b3       	mov	r11,r5
    41f2:	66 03       	mov	r0,r6
    41f4:	42 0b       	jsr	@r2
    41f6:	67 13       	mov	r1,r7
    41f8:	68 03       	mov	r0,r8
    41fa:	50 f4       	mov.l	@(16,r15),r0
    41fc:	6a e3       	mov	r14,r10
    41fe:	7a 30       	add	#48,r10
    4200:	20 a0       	mov.b	r10,@r0
    4202:	70 01       	add	#1,r0
    4204:	53 f1       	mov.l	@(4,r15),r3
    4206:	69 13       	mov	r1,r9
    4208:	5e f4       	mov.l	@(16,r15),r14
    420a:	1f 0f       	mov.l	r0,@(60,r15)
    420c:	60 33       	mov	r3,r0
    420e:	88 01       	cmp/eq	#1,r0
    4210:	3e 3c       	add	r3,r14
    4212:	5a ff       	mov.l	@(60,r15),r10
    4214:	60 83       	mov	r8,r0
    4216:	89 21       	bt	425c <__dtoa_r+0xd90>
    4218:	d2 50       	mov.l	435c <__dtoa_r+0xe90>,r2	! 914c <___muldf3>
    421a:	e7 00       	mov	#0,r7
    421c:	d6 54       	mov.l	4370 <__dtoa_r+0xea4>,r6	! 40240000
    421e:	64 03       	mov	r0,r4
    4220:	42 0b       	jsr	@r2
    4222:	65 13       	mov	r1,r5
    4224:	d3 4f       	mov.l	4364 <__dtoa_r+0xe98>,r3	! 9748 <___fixdfsi>
    4226:	68 03       	mov	r0,r8
    4228:	69 13       	mov	r1,r9
    422a:	65 13       	mov	r1,r5
    422c:	43 0b       	jsr	@r3
    422e:	64 83       	mov	r8,r4
    4230:	d7 4d       	mov.l	4368 <__dtoa_r+0xe9c>,r7	! 96ac <___floatsidf>
    4232:	6b 03       	mov	r0,r11
    4234:	47 0b       	jsr	@r7
    4236:	64 03       	mov	r0,r4
    4238:	d2 4c       	mov.l	436c <__dtoa_r+0xea0>,r2	! 90f4 <___subdf3>
    423a:	7b 30       	add	#48,r11
    423c:	64 83       	mov	r8,r4
    423e:	65 93       	mov	r9,r5
    4240:	66 03       	mov	r0,r6
    4242:	42 0b       	jsr	@r2
    4244:	67 13       	mov	r1,r7
    4246:	2a b0       	mov.b	r11,@r10
    4248:	7a 01       	add	#1,r10
    424a:	3a e0       	cmp/eq	r14,r10
    424c:	8b e4       	bf	4218 <__dtoa_r+0xd4c>
    424e:	68 03       	mov	r0,r8
    4250:	e0 64       	mov	#100,r0
    4252:	52 ff       	mov.l	@(60,r15),r2
    4254:	69 13       	mov	r1,r9
    4256:	03 fe       	mov.l	@(r0,r15),r3
    4258:	32 3c       	add	r3,r2
    425a:	1f 2f       	mov.l	r2,@(60,r15)
    425c:	d2 45       	mov.l	4374 <__dtoa_r+0xea8>,r2	! 90a4 <___adddf3>
    425e:	64 c3       	mov	r12,r4
    4260:	65 d3       	mov	r13,r5
    4262:	d6 45       	mov.l	4378 <__dtoa_r+0xeac>,r6	! 3fe00000
    4264:	42 0b       	jsr	@r2
    4266:	e7 00       	mov	#0,r7
    4268:	d3 44       	mov.l	437c <__dtoa_r+0xeb0>,r3	! 9658 <___ltdf2>
    426a:	64 03       	mov	r0,r4
    426c:	65 13       	mov	r1,r5
    426e:	66 83       	mov	r8,r6
    4270:	43 0b       	jsr	@r3
    4272:	67 93       	mov	r9,r7
    4274:	40 11       	cmp/pz	r0
    4276:	8b 01       	bf	427c <__dtoa_r+0xdb0>
    4278:	a1 a0       	bra	45bc <__dtoa_r+0x10f0>
    427a:	e5 00       	mov	#0,r5
    427c:	51 ff       	mov.l	@(60,r15),r1
    427e:	52 ff       	mov.l	@(60,r15),r2
    4280:	71 ff       	add	#-1,r1
    4282:	5d f4       	mov.l	@(16,r15),r13
    4284:	6c 10       	mov.b	@r1,r12
    4286:	ab 92       	bra	39ae <__dtoa_r+0x4e2>
    4288:	1f 24       	mov.l	r2,@(16,r15)
    428a:	00 09       	nop	
    428c:	70 04       	add	#4,r0
    428e:	40 08       	shll2	r0
    4290:	04 be       	mov.l	@(r0,r11),r4
    4292:	d0 3b       	mov.l	4380 <__dtoa_r+0xeb4>,r0	! 5ab8 <___hi0bits>
    4294:	40 0b       	jsr	@r0
    4296:	00 09       	nop	
    4298:	61 0b       	neg	r0,r1
    429a:	ac 19       	bra	3ad0 <__dtoa_r+0x604>
    429c:	71 20       	add	#32,r1
    429e:	00 09       	nop	
    42a0:	d3 38       	mov.l	4384 <__dtoa_r+0xeb8>,r3	! 5efc <___mcmp>
    42a2:	54 fc       	mov.l	@(48,r15),r4
    42a4:	43 0b       	jsr	@r3
    42a6:	1f 3a       	mov.l	r3,@(40,r15)
    42a8:	40 11       	cmp/pz	r0
    42aa:	8b 01       	bf	42b0 <__dtoa_r+0xde4>
    42ac:	ac 41       	bra	3b32 <__dtoa_r+0x666>
    42ae:	52 f3       	mov.l	@(12,r15),r2
    42b0:	50 f5       	mov.l	@(20,r15),r0
    42b2:	e6 0a       	mov	#10,r6
    42b4:	d1 34       	mov.l	4388 <__dtoa_r+0xebc>,r1	! 5930 <___multadd>
    42b6:	70 ff       	add	#-1,r0
    42b8:	1f 05       	mov.l	r0,@(20,r15)
    42ba:	e7 00       	mov	#0,r7
    42bc:	1f 11       	mov.l	r1,@(4,r15)
    42be:	54 f2       	mov.l	@(8,r15),r4
    42c0:	41 0b       	jsr	@r1
    42c2:	55 fc       	mov.l	@(48,r15),r5
    42c4:	1f 0c       	mov.l	r0,@(48,r15)
    42c6:	e0 48       	mov	#72,r0
    42c8:	02 fe       	mov.l	@(r0,r15),r2
    42ca:	51 f1       	mov.l	@(4,r15),r1
    42cc:	22 28       	tst	r2,r2
    42ce:	89 01       	bt	42d4 <__dtoa_r+0xe08>
    42d0:	a2 52       	bra	4778 <__dtoa_r+0x12ac>
    42d2:	65 c3       	mov	r12,r5
    42d4:	e0 48       	mov	#72,r0
    42d6:	07 fe       	mov.l	@(r0,r15),r7
    42d8:	e0 50       	mov	#80,r0
    42da:	03 fe       	mov.l	@(r0,r15),r3
    42dc:	e0 50       	mov	#80,r0
    42de:	37 33       	cmp/ge	r3,r7
    42e0:	8b 06       	bf	42f0 <__dtoa_r+0xe24>
    42e2:	52 f3       	mov.l	@(12,r15),r2
    42e4:	e1 02       	mov	#2,r1
    42e6:	32 17       	cmp/gt	r1,r2
    42e8:	8b 02       	bf	42f0 <__dtoa_r+0xe24>
    42ea:	a2 6b       	bra	47c4 <__dtoa_r+0x12f8>
    42ec:	02 fe       	mov.l	@(r0,r15),r2
    42ee:	00 09       	nop	
    42f0:	03 fe       	mov.l	@(r0,r15),r3
    42f2:	ae 99       	bra	4028 <__dtoa_r+0xb5c>
    42f4:	1f 39       	mov.l	r3,@(36,r15)
    42f6:	00 09       	nop	
    42f8:	20 08       	tst	r0,r0
    42fa:	89 01       	bt	4300 <__dtoa_r+0xe34>
    42fc:	ae 82       	bra	4004 <__dtoa_r+0xb38>
    42fe:	00 09       	nop	
    4300:	d2 16       	mov.l	435c <__dtoa_r+0xe90>,r2	! 914c <___muldf3>
    4302:	e7 00       	mov	#0,r7
    4304:	54 f7       	mov.l	@(28,r15),r4
    4306:	eb 00       	mov	#0,r11
    4308:	55 f8       	mov.l	@(32,r15),r5
    430a:	d6 20       	mov.l	438c <__dtoa_r+0xec0>,r6	! 40140000
    430c:	42 0b       	jsr	@r2
    430e:	ec 00       	mov	#0,r12
    4310:	64 03       	mov	r0,r4
    4312:	d0 1f       	mov.l	4390 <__dtoa_r+0xec4>,r0	! 9604 <___gedf2>
    4314:	65 13       	mov	r1,r5
    4316:	66 d3       	mov	r13,r6
    4318:	40 0b       	jsr	@r0
    431a:	67 e3       	mov	r14,r7
    431c:	40 11       	cmp/pz	r0
    431e:	d8 0c       	mov.l	4350 <__dtoa_r+0xe84>,r8	! 5918 <__Bfree>
    4320:	8b 02       	bf	4328 <__dtoa_r+0xe5c>
    4322:	ae 72       	bra	400a <__dtoa_r+0xb3e>
    4324:	00 09       	nop	
    4326:	00 09       	nop	
    4328:	ac 1f       	bra	3b6a <__dtoa_r+0x69e>
    432a:	50 f4       	mov.l	@(16,r15),r0
    432c:	8b 0c       	bf	4348 <__dtoa_r+0xe7c>
    432e:	d2 19       	mov.l	4394 <__dtoa_r+0xec8>,r2	! fffff
    4330:	2d 28       	tst	r2,r13
    4332:	8b 09       	bf	4348 <__dtoa_r+0xe7c>
    4334:	d2 18       	mov.l	4398 <__dtoa_r+0xecc>,r2	! 7ff00000
    4336:	2d 28       	tst	r2,r13
    4338:	89 06       	bt	4348 <__dtoa_r+0xe7c>
    433a:	53 fa       	mov.l	@(40,r15),r3
    433c:	ea 01       	mov	#1,r10
    433e:	52 f7       	mov.l	@(28,r15),r2
    4340:	73 01       	add	#1,r3
    4342:	1f 3a       	mov.l	r3,@(40,r15)
    4344:	72 01       	add	#1,r2
    4346:	1f 27       	mov.l	r2,@(28,r15)
    4348:	ab bb       	bra	3ac2 <__dtoa_r+0x5f6>
    434a:	e0 44       	mov	#68,r0
    434c:	00 00       	.word 0x0000
    434e:	5d 2c       	mov.l	@(48,r2),r13
    4350:	00 00       	.word 0x0000
    4352:	59 18       	mov.l	@(32,r1),r9
    4354:	00 00       	.word 0x0000
    4356:	93 a0       	mov.w	449a <__dtoa_r+0xfce>,r3	! 8b14
    4358:	00 00       	.word 0x0000
    435a:	9f 04       	mov.w	4366 <__dtoa_r+0xe9a>,r15	! 9748 <___fixdfsi>
    435c:	00 00       	.word 0x0000
    435e:	91 4c       	mov.w	43fa <__dtoa_r+0xf2e>,r1	! 64d3
    4360:	00 00       	.word 0x0000
    4362:	9e dc       	mov.w	451e <__dtoa_r+0x1052>,r14	! 9
    4364:	00 00       	.word 0x0000
    4366:	97 48       	mov.w	43fa <__dtoa_r+0xf2e>,r7	! 64d3
    4368:	00 00       	.word 0x0000
    436a:	96 ac       	mov.w	44c6 <__dtoa_r+0xffa>,r6	! 2ad0
    436c:	00 00       	.word 0x0000
    436e:	90 f4       	mov.w	455a <__dtoa_r+0x108e>,r0	! 8b01
    4370:	40 24       	rotcl	r0
    4372:	00 00       	.word 0x0000
    4374:	00 00       	.word 0x0000
    4376:	90 a4       	mov.w	44c2 <__dtoa_r+0xff6>,r0	! 7d31
    4378:	3f e0       	cmp/eq	r14,r15
    437a:	00 00       	.word 0x0000
    437c:	00 00       	.word 0x0000
    437e:	96 58       	mov.w	4432 <__dtoa_r+0xf66>,r6	! 53fe
    4380:	00 00       	.word 0x0000
    4382:	5a b8       	mov.l	@(32,r11),r10
    4384:	00 00       	.word 0x0000
    4386:	5e fc       	mov.l	@(48,r15),r14
    4388:	00 00       	.word 0x0000
    438a:	59 30       	mov.l	@(0,r3),r9
    438c:	40 14       	.word 0x4014
    438e:	00 00       	.word 0x0000
    4390:	00 00       	.word 0x0000
    4392:	96 04       	mov.w	439e <__dtoa_r+0xed2>,r6	! 1f3a
    4394:	00 0f       	.word 0x000f
    4396:	ff ff       	.word 0xffff
    4398:	7f f0       	add	#-16,r15
    439a:	00 00       	.word 0x0000
    439c:	d3 99       	mov.l	4604 <__dtoa_r+0x1138>,r3	! 5efc <___mcmp>
    439e:	1f 3a       	mov.l	r3,@(40,r15)
    43a0:	49 15       	cmp/pl	r9
    43a2:	8b 05       	bf	43b0 <__dtoa_r+0xee4>
    43a4:	d0 98       	mov.l	4608 <__dtoa_r+0x113c>,r0	! 5e00 <___lshift>
    43a6:	65 c3       	mov	r12,r5
    43a8:	54 f2       	mov.l	@(8,r15),r4
    43aa:	40 0b       	jsr	@r0
    43ac:	66 93       	mov	r9,r6
    43ae:	6c 03       	mov	r0,r12
    43b0:	2a a8       	tst	r10,r10
    43b2:	62 c3       	mov	r12,r2
    43b4:	89 02       	bt	43bc <__dtoa_r+0xef0>
    43b6:	a1 6f       	bra	4698 <__dtoa_r+0x11cc>
    43b8:	e0 4c       	mov	#76,r0
    43ba:	00 09       	nop	
    43bc:	5a f4       	mov.l	@(16,r15),r10
    43be:	69 c3       	mov	r12,r9
    43c0:	50 f9       	mov.l	@(36,r15),r0
    43c2:	63 a3       	mov	r10,r3
    43c4:	73 ff       	add	#-1,r3
    43c6:	d1 91       	mov.l	460c <__dtoa_r+0x1140>,r1	! 3338 <_quorem>
    43c8:	33 0c       	add	r0,r3
    43ca:	60 e3       	mov	r14,r0
    43cc:	c9 01       	and	#1,r0
    43ce:	1f 89       	mov.l	r8,@(36,r15)
    43d0:	5d f2       	mov.l	@(8,r15),r13
    43d2:	58 fc       	mov.l	@(48,r15),r8
    43d4:	1f 3d       	mov.l	r3,@(52,r15)
    43d6:	1f 1b       	mov.l	r1,@(44,r15)
    43d8:	1f 0e       	mov.l	r0,@(56,r15)
    43da:	1f b6       	mov.l	r11,@(24,r15)
    43dc:	6b 23       	mov	r2,r11
    43de:	00 09       	nop	
    43e0:	51 fb       	mov.l	@(44,r15),r1
    43e2:	64 83       	mov	r8,r4
    43e4:	41 0b       	jsr	@r1
    43e6:	55 f6       	mov.l	@(24,r15),r5
    43e8:	51 fa       	mov.l	@(40,r15),r1
    43ea:	6e 03       	mov	r0,r14
    43ec:	70 30       	add	#48,r0
    43ee:	64 83       	mov	r8,r4
    43f0:	65 93       	mov	r9,r5
    43f2:	41 0b       	jsr	@r1
    43f4:	1f 07       	mov.l	r0,@(28,r15)
    43f6:	d2 86       	mov.l	4610 <__dtoa_r+0x1144>,r2	! 5f30 <___mdiff>
    43f8:	6c 03       	mov	r0,r12
    43fa:	64 d3       	mov	r13,r4
    43fc:	55 f6       	mov.l	@(24,r15),r5
    43fe:	42 0b       	jsr	@r2
    4400:	66 b3       	mov	r11,r6
    4402:	52 03       	mov.l	@(12,r0),r2
    4404:	61 03       	mov	r0,r1
    4406:	e0 01       	mov	#1,r0
    4408:	22 28       	tst	r2,r2
    440a:	89 73       	bt	44f4 <__dtoa_r+0x1028>
    440c:	65 13       	mov	r1,r5
    440e:	51 f9       	mov.l	@(36,r15),r1
    4410:	64 d3       	mov	r13,r4
    4412:	41 0b       	jsr	@r1
    4414:	1f 01       	mov.l	r0,@(4,r15)
    4416:	50 f1       	mov.l	@(4,r15),r0
    4418:	51 f3       	mov.l	@(12,r15),r1
    441a:	21 0b       	or	r0,r1
    441c:	21 18       	tst	r1,r1
    441e:	8b 02       	bf	4426 <__dtoa_r+0xf5a>
    4420:	52 fe       	mov.l	@(56,r15),r2
    4422:	22 28       	tst	r2,r2
    4424:	89 56       	bt	44d4 <__dtoa_r+0x1008>
    4426:	4c 11       	cmp/pz	r12
    4428:	8b 30       	bf	448c <__dtoa_r+0xfc0>
    442a:	52 f3       	mov.l	@(12,r15),r2
    442c:	2c 2b       	or	r2,r12
    442e:	2c c8       	tst	r12,r12
    4430:	8b 02       	bf	4438 <__dtoa_r+0xf6c>
    4432:	53 fe       	mov.l	@(56,r15),r3
    4434:	23 38       	tst	r3,r3
    4436:	89 29       	bt	448c <__dtoa_r+0xfc0>
    4438:	40 15       	cmp/pl	r0
    443a:	8b 01       	bf	4440 <__dtoa_r+0xf74>
    443c:	a1 66       	bra	470c <__dtoa_r+0x1240>
    443e:	5d f7       	mov.l	@(28,r15),r13
    4440:	e0 1f       	mov	#31,r0
    4442:	52 fd       	mov.l	@(52,r15),r2
    4444:	6c a3       	mov	r10,r12
    4446:	01 fc       	mov.b	@(r0,r15),r1
    4448:	7c 01       	add	#1,r12
    444a:	2a 10       	mov.b	r1,@r10
    444c:	3a 20       	cmp/eq	r2,r10
    444e:	6e c3       	mov	r12,r14
    4450:	8b 02       	bf	4458 <__dtoa_r+0xf8c>
    4452:	a1 6b       	bra	472c <__dtoa_r+0x1260>
    4454:	62 b3       	mov	r11,r2
    4456:	00 09       	nop	
    4458:	d3 6e       	mov.l	4614 <__dtoa_r+0x1148>,r3	! 5930 <___multadd>
    445a:	65 83       	mov	r8,r5
    445c:	64 d3       	mov	r13,r4
    445e:	e6 0a       	mov	#10,r6
    4460:	43 0b       	jsr	@r3
    4462:	e7 00       	mov	#0,r7
    4464:	39 b0       	cmp/eq	r11,r9
    4466:	68 03       	mov	r0,r8
    4468:	64 d3       	mov	r13,r4
    446a:	65 93       	mov	r9,r5
    446c:	e6 0a       	mov	#10,r6
    446e:	e7 00       	mov	#0,r7
    4470:	89 48       	bt	4504 <__dtoa_r+0x1038>
    4472:	d2 68       	mov.l	4614 <__dtoa_r+0x1148>,r2	! 5930 <___multadd>
    4474:	42 0b       	jsr	@r2
    4476:	6a c3       	mov	r12,r10
    4478:	d3 66       	mov.l	4614 <__dtoa_r+0x1148>,r3	! 5930 <___multadd>
    447a:	65 b3       	mov	r11,r5
    447c:	69 03       	mov	r0,r9
    447e:	64 d3       	mov	r13,r4
    4480:	e6 0a       	mov	#10,r6
    4482:	43 0b       	jsr	@r3
    4484:	e7 00       	mov	#0,r7
    4486:	af ab       	bra	43e0 <__dtoa_r+0xf14>
    4488:	6b 03       	mov	r0,r11
    448a:	00 09       	nop	
    448c:	5d f7       	mov.l	@(28,r15),r13
    448e:	40 15       	cmp/pl	r0
    4490:	1f 8c       	mov.l	r8,@(48,r15)
    4492:	62 b3       	mov	r11,r2
    4494:	58 f9       	mov.l	@(36,r15),r8
    4496:	6c d3       	mov	r13,r12
    4498:	5b f6       	mov.l	@(24,r15),r11
    449a:	8b 14       	bf	44c6 <__dtoa_r+0xffa>
    449c:	d0 5a       	mov.l	4608 <__dtoa_r+0x113c>,r0	! 5e00 <___lshift>
    449e:	e6 01       	mov	#1,r6
    44a0:	1f 21       	mov.l	r2,@(4,r15)
    44a2:	54 f2       	mov.l	@(8,r15),r4
    44a4:	40 0b       	jsr	@r0
    44a6:	55 fc       	mov.l	@(48,r15),r5
    44a8:	51 fa       	mov.l	@(40,r15),r1
    44aa:	64 03       	mov	r0,r4
    44ac:	1f 0c       	mov.l	r0,@(48,r15)
    44ae:	41 0b       	jsr	@r1
    44b0:	65 b3       	mov	r11,r5
    44b2:	40 15       	cmp/pl	r0
    44b4:	52 f1       	mov.l	@(4,r15),r2
    44b6:	89 01       	bt	44bc <__dtoa_r+0xff0>
    44b8:	a1 54       	bra	4764 <__dtoa_r+0x1298>
    44ba:	20 08       	tst	r0,r0
    44bc:	60 c3       	mov	r12,r0
    44be:	6d e3       	mov	r14,r13
    44c0:	88 39       	cmp/eq	#57,r0
    44c2:	7d 31       	add	#49,r13
    44c4:	89 0e       	bt	44e4 <__dtoa_r+0x1018>
    44c6:	2a d0       	mov.b	r13,@r10
    44c8:	7a 01       	add	#1,r10
    44ca:	5d f4       	mov.l	@(16,r15),r13
    44cc:	6c 23       	mov	r2,r12
    44ce:	ab 56       	bra	3b7e <__dtoa_r+0x6b2>
    44d0:	1f a4       	mov.l	r10,@(16,r15)
    44d2:	00 09       	nop	
    44d4:	5d f7       	mov.l	@(28,r15),r13
    44d6:	62 b3       	mov	r11,r2
    44d8:	1f 8c       	mov.l	r8,@(48,r15)
    44da:	60 d3       	mov	r13,r0
    44dc:	88 39       	cmp/eq	#57,r0
    44de:	5b f6       	mov.l	@(24,r15),r11
    44e0:	58 f9       	mov.l	@(36,r15),r8
    44e2:	8b 01       	bf	44e8 <__dtoa_r+0x101c>
    44e4:	a1 35       	bra	4752 <__dtoa_r+0x1286>
    44e6:	e1 39       	mov	#57,r1
    44e8:	4c 15       	cmp/pl	r12
    44ea:	8b ec       	bf	44c6 <__dtoa_r+0xffa>
    44ec:	6d e3       	mov	r14,r13
    44ee:	af ea       	bra	44c6 <__dtoa_r+0xffa>
    44f0:	7d 31       	add	#49,r13
    44f2:	00 09       	nop	
    44f4:	d3 43       	mov.l	4604 <__dtoa_r+0x1138>,r3	! 5efc <___mcmp>
    44f6:	65 13       	mov	r1,r5
    44f8:	1f 11       	mov.l	r1,@(4,r15)
    44fa:	43 0b       	jsr	@r3
    44fc:	64 83       	mov	r8,r4
    44fe:	af 85       	bra	440c <__dtoa_r+0xf40>
    4500:	51 f1       	mov.l	@(4,r15),r1
    4502:	00 09       	nop	
    4504:	d1 43       	mov.l	4614 <__dtoa_r+0x1148>,r1	! 5930 <___multadd>
    4506:	41 0b       	jsr	@r1
    4508:	6a c3       	mov	r12,r10
    450a:	69 03       	mov	r0,r9
    450c:	af 68       	bra	43e0 <__dtoa_r+0xf14>
    450e:	6b 03       	mov	r0,r11
    4510:	1f 79       	mov.l	r7,@(36,r15)
    4512:	08 29       	movt	r8
    4514:	e2 00       	mov	#0,r2
    4516:	1a 21       	mov.l	r2,@(4,r10)
    4518:	28 19       	and	r1,r8
    451a:	ab df       	bra	3cdc <__dtoa_r+0x810>
    451c:	e5 00       	mov	#0,r5
    451e:	00 09       	nop	
    4520:	e8 01       	mov	#1,r8
    4522:	e2 7c       	mov	#124,r2
    4524:	0f 86       	mov.l	r8,@(r0,r15)
    4526:	32 fc       	add	r15,r2
    4528:	e0 01       	mov	#1,r0
    452a:	1f 09       	mov.l	r0,@(36,r15)
    452c:	af f2       	bra	4514 <__dtoa_r+0x1048>
    452e:	12 05       	mov.l	r0,@(20,r2)
    4530:	e1 31       	mov	#49,r1
    4532:	70 01       	add	#1,r0
    4534:	1f 05       	mov.l	r0,@(20,r15)
    4536:	50 f4       	mov.l	@(16,r15),r0
    4538:	1f e4       	mov.l	r14,@(16,r15)
    453a:	6d 03       	mov	r0,r13
    453c:	ab 1f       	bra	3b7e <__dtoa_r+0x6b2>
    453e:	20 10       	mov.b	r1,@r0
    4540:	e0 44       	mov	#68,r0
    4542:	00 fe       	mov.l	@(r0,r15),r0
    4544:	62 13       	mov	r1,r2
    4546:	32 38       	sub	r3,r2
    4548:	e7 40       	mov	#64,r7
    454a:	30 2c       	add	r2,r0
    454c:	37 fc       	add	r15,r7
    454e:	17 01       	mov.l	r0,@(4,r7)
    4550:	eb 00       	mov	#0,r11
    4552:	ab 79       	bra	3c48 <__dtoa_r+0x77c>
    4554:	1f 1e       	mov.l	r1,@(56,r15)
    4556:	00 09       	nop	
    4558:	20 08       	tst	r0,r0
    455a:	8b 01       	bf	4560 <__dtoa_r+0x1094>
    455c:	ad 20       	bra	3fa0 <__dtoa_r+0xad4>
    455e:	00 09       	nop	
    4560:	e0 50       	mov	#80,r0
    4562:	01 fe       	mov.l	@(r0,r15),r1
    4564:	41 15       	cmp/pl	r1
    4566:	8b 36       	bf	45d6 <__dtoa_r+0x110a>
    4568:	50 f5       	mov.l	@(20,r15),r0
    456a:	e2 40       	mov	#64,r2
    456c:	32 fc       	add	r15,r2
    456e:	70 ff       	add	#-1,r0
    4570:	12 08       	mov.l	r0,@(32,r2)
    4572:	65 b3       	mov	r11,r5
    4574:	d2 28       	mov.l	4618 <__dtoa_r+0x114c>,r2	! 914c <___muldf3>
    4576:	64 a3       	mov	r10,r4
    4578:	d6 28       	mov.l	461c <__dtoa_r+0x1150>,r6	! 40240000
    457a:	42 0b       	jsr	@r2
    457c:	e7 00       	mov	#0,r7
    457e:	d3 28       	mov.l	4620 <__dtoa_r+0x1154>,r3	! 96ac <___floatsidf>
    4580:	64 c3       	mov	r12,r4
    4582:	6a 03       	mov	r0,r10
    4584:	6b 13       	mov	r1,r11
    4586:	43 0b       	jsr	@r3
    4588:	74 01       	add	#1,r4
    458a:	d2 23       	mov.l	4618 <__dtoa_r+0x114c>,r2	! 914c <___muldf3>
    458c:	64 a3       	mov	r10,r4
    458e:	65 b3       	mov	r11,r5
    4590:	66 03       	mov	r0,r6
    4592:	42 0b       	jsr	@r2
    4594:	67 13       	mov	r1,r7
    4596:	d3 23       	mov.l	4624 <__dtoa_r+0x1158>,r3	! 90a4 <___adddf3>
    4598:	64 03       	mov	r0,r4
    459a:	65 13       	mov	r1,r5
    459c:	d6 22       	mov.l	4628 <__dtoa_r+0x115c>,r6	! 401c0000
    459e:	43 0b       	jsr	@r3
    45a0:	e7 00       	mov	#0,r7
    45a2:	6d 13       	mov	r1,r13
    45a4:	d1 21       	mov.l	462c <__dtoa_r+0x1160>,r1	! fcc00000
    45a6:	6c 03       	mov	r0,r12
    45a8:	e0 50       	mov	#80,r0
    45aa:	3c 1c       	add	r1,r12
    45ac:	ac 17       	bra	3dde <__dtoa_r+0x912>
    45ae:	03 fe       	mov.l	@(r0,r15),r3
    45b0:	33 fc       	add	r15,r3
    45b2:	5a 35       	mov.l	@(20,r3),r10
    45b4:	ec 02       	mov	#2,r12
    45b6:	ab e8       	bra	3d8a <__dtoa_r+0x8be>
    45b8:	5b 36       	mov.l	@(24,r3),r11
    45ba:	00 09       	nop	
    45bc:	d3 1c       	mov.l	4630 <__dtoa_r+0x1164>,r3	! 90f4 <___subdf3>
    45be:	d4 1d       	mov.l	4634 <__dtoa_r+0x1168>,r4	! 3fe00000
    45c0:	66 c3       	mov	r12,r6
    45c2:	43 0b       	jsr	@r3
    45c4:	67 d3       	mov	r13,r7
    45c6:	64 03       	mov	r0,r4
    45c8:	d0 1b       	mov.l	4638 <__dtoa_r+0x116c>,r0	! 95b0 <___gtdf2>
    45ca:	65 13       	mov	r1,r5
    45cc:	66 83       	mov	r8,r6
    45ce:	40 0b       	jsr	@r0
    45d0:	67 93       	mov	r9,r7
    45d2:	40 15       	cmp/pl	r0
    45d4:	89 02       	bt	45dc <__dtoa_r+0x1110>
    45d6:	ad b5       	bra	4144 <__dtoa_r+0xc78>
    45d8:	e7 40       	mov	#64,r7
    45da:	00 09       	nop	
    45dc:	5d ff       	mov.l	@(60,r15),r13
    45de:	00 09       	nop	
    45e0:	62 d3       	mov	r13,r2
    45e2:	7d ff       	add	#-1,r13
    45e4:	60 d0       	mov.b	@r13,r0
    45e6:	88 30       	cmp/eq	#48,r0
    45e8:	89 fa       	bt	45e0 <__dtoa_r+0x1114>
    45ea:	e0 60       	mov	#96,r0
    45ec:	07 fe       	mov.l	@(r0,r15),r7
    45ee:	5d f4       	mov.l	@(16,r15),r13
    45f0:	1f 75       	mov.l	r7,@(20,r15)
    45f2:	d8 12       	mov.l	463c <__dtoa_r+0x1170>,r8	! 5918 <__Bfree>
    45f4:	aa d3       	bra	3b9e <__dtoa_r+0x6d2>
    45f6:	1f 24       	mov.l	r2,@(16,r15)
    45f8:	d0 11       	mov.l	4640 <__dtoa_r+0x1174>,r0	! 5d2c <___pow5mult>
    45fa:	40 0b       	jsr	@r0
    45fc:	55 fc       	mov.l	@(48,r15),r5
    45fe:	aa 49       	bra	3a94 <__dtoa_r+0x5c8>
    4600:	1f 0c       	mov.l	r0,@(48,r15)
    4602:	00 09       	nop	
    4604:	00 00       	.word 0x0000
    4606:	5e fc       	mov.l	@(48,r15),r14
    4608:	00 00       	.word 0x0000
    460a:	5e 00       	mov.l	@(0,r0),r14
    460c:	00 00       	.word 0x0000
    460e:	33 38       	sub	r3,r3
    4610:	00 00       	.word 0x0000
    4612:	5f 30       	mov.l	@(0,r3),r15
    4614:	00 00       	.word 0x0000
    4616:	59 30       	mov.l	@(0,r3),r9
    4618:	00 00       	.word 0x0000
    461a:	91 4c       	mov.w	46b6 <__dtoa_r+0x11ea>,r1	! 6593
    461c:	40 24       	rotcl	r0
    461e:	00 00       	.word 0x0000
    4620:	00 00       	.word 0x0000
    4622:	96 ac       	mov.w	477e <__dtoa_r+0x12b2>,r6	! e700
    4624:	00 00       	.word 0x0000
    4626:	90 a4       	mov.w	4772 <__dtoa_r+0x12a6>,r0	! 60c3
    4628:	40 1c       	.word 0x401c
    462a:	00 00       	.word 0x0000
    462c:	fc c0       	.word 0xfcc0
    462e:	00 00       	.word 0x0000
    4630:	00 00       	.word 0x0000
    4632:	90 f4       	mov.w	481e <___sflush_r+0x52>,r0	! 64b3
    4634:	3f e0       	cmp/eq	r14,r15
    4636:	00 00       	.word 0x0000
    4638:	00 00       	.word 0x0000
    463a:	95 b0       	mov.w	479e <__dtoa_r+0x12d2>,r5	! adff
    463c:	00 00       	.word 0x0000
    463e:	59 18       	mov.l	@(32,r1),r9
    4640:	00 00       	.word 0x0000
    4642:	5d 2c       	mov.l	@(48,r2),r13
    4644:	07 fe       	mov.l	@(r0,r15),r7
    4646:	27 78       	tst	r7,r7
    4648:	89 58       	bt	46fc <__dtoa_r+0x1230>
    464a:	92 75       	mov.w	4738 <__dtoa_r+0x126c>,r2	! 433
    464c:	5b fe       	mov.l	@(56,r15),r11
    464e:	32 1c       	add	r1,r2
    4650:	ab 01       	bra	3c56 <__dtoa_r+0x78a>
    4652:	59 fa       	mov.l	@(40,r15),r9
    4654:	d8 39       	mov.l	473c <__dtoa_r+0x1270>,r8	! 5918 <__Bfree>
    4656:	aa a2       	bra	3b9e <__dtoa_r+0x6d2>
    4658:	1f c4       	mov.l	r12,@(16,r15)
    465a:	00 09       	nop	
    465c:	aa fb       	bra	3c56 <__dtoa_r+0x78a>
    465e:	e2 00       	mov	#0,r2
    4660:	6c e3       	mov	r14,r12
    4662:	a9 a4       	bra	39ae <__dtoa_r+0x4e2>
    4664:	1f a4       	mov.l	r10,@(16,r15)
    4666:	00 09       	nop	
    4668:	e0 60       	mov	#96,r0
    466a:	1f 14       	mov.l	r1,@(16,r15)
    466c:	7c 01       	add	#1,r12
    466e:	01 fe       	mov.l	@(r0,r15),r1
    4670:	62 ce       	exts.b	r12,r2
    4672:	27 20       	mov.b	r2,@r7
    4674:	d8 31       	mov.l	473c <__dtoa_r+0x1270>,r8	! 5918 <__Bfree>
    4676:	aa 92       	bra	3b9e <__dtoa_r+0x6d2>
    4678:	1f 15       	mov.l	r1,@(20,r15)
    467a:	00 09       	nop	
    467c:	8b 04       	bf	4688 <__dtoa_r+0x11bc>
    467e:	60 d3       	mov	r13,r0
    4680:	c8 01       	tst	#1,r0
    4682:	89 01       	bt	4688 <__dtoa_r+0x11bc>
    4684:	ad 07       	bra	4096 <__dtoa_r+0xbca>
    4686:	6a e3       	mov	r14,r10
    4688:	62 e3       	mov	r14,r2
    468a:	7e ff       	add	#-1,r14
    468c:	60 e0       	mov.b	@r14,r0
    468e:	88 30       	cmp/eq	#48,r0
    4690:	89 fa       	bt	4688 <__dtoa_r+0x11bc>
    4692:	5d f4       	mov.l	@(16,r15),r13
    4694:	aa 73       	bra	3b7e <__dtoa_r+0x6b2>
    4696:	1f 24       	mov.l	r2,@(16,r15)
    4698:	02 fe       	mov.l	@(r0,r15),r2
    469a:	54 f2       	mov.l	@(8,r15),r4
    469c:	42 0b       	jsr	@r2
    469e:	55 c1       	mov.l	@(4,r12),r5
    46a0:	56 c4       	mov.l	@(16,r12),r6
    46a2:	69 03       	mov	r0,r9
    46a4:	64 03       	mov	r0,r4
    46a6:	d0 26       	mov.l	4740 <__dtoa_r+0x1274>,r0	! 5804 <_memcpy>
    46a8:	76 02       	add	#2,r6
    46aa:	65 c3       	mov	r12,r5
    46ac:	74 0c       	add	#12,r4
    46ae:	75 0c       	add	#12,r5
    46b0:	40 0b       	jsr	@r0
    46b2:	46 08       	shll2	r6
    46b4:	d0 23       	mov.l	4744 <__dtoa_r+0x1278>,r0	! 5e00 <___lshift>
    46b6:	65 93       	mov	r9,r5
    46b8:	54 f2       	mov.l	@(8,r15),r4
    46ba:	40 0b       	jsr	@r0
    46bc:	e6 01       	mov	#1,r6
    46be:	ae 7d       	bra	43bc <__dtoa_r+0xef0>
    46c0:	62 03       	mov	r0,r2
    46c2:	00 09       	nop	
    46c4:	d1 20       	mov.l	4748 <__dtoa_r+0x127c>,r1	! 9508 <___eqdf2>
    46c6:	54 f7       	mov.l	@(28,r15),r4
    46c8:	67 93       	mov	r9,r7
    46ca:	41 0b       	jsr	@r1
    46cc:	55 f8       	mov.l	@(32,r15),r5
    46ce:	20 08       	tst	r0,r0
    46d0:	8b 0c       	bf	46ec <__dtoa_r+0x1220>
    46d2:	60 a3       	mov	r10,r0
    46d4:	c8 01       	tst	#1,r0
    46d6:	89 09       	bt	46ec <__dtoa_r+0x1220>
    46d8:	61 e3       	mov	r14,r1
    46da:	71 ff       	add	#-1,r1
    46dc:	50 f5       	mov.l	@(20,r15),r0
    46de:	6c 10       	mov.b	@r1,r12
    46e0:	e1 40       	mov	#64,r1
    46e2:	31 fc       	add	r15,r1
    46e4:	5d f4       	mov.l	@(16,r15),r13
    46e6:	11 08       	mov.l	r0,@(32,r1)
    46e8:	a9 61       	bra	39ae <__dtoa_r+0x4e2>
    46ea:	1f e4       	mov.l	r14,@(16,r15)
    46ec:	5d f4       	mov.l	@(16,r15),r13
    46ee:	d8 13       	mov.l	473c <__dtoa_r+0x1270>,r8	! 5918 <__Bfree>
    46f0:	aa 55       	bra	3b9e <__dtoa_r+0x6d2>
    46f2:	1f e4       	mov.l	r14,@(16,r15)
    46f4:	5d f4       	mov.l	@(16,r15),r13
    46f6:	2a 00       	mov.b	r0,@r10
    46f8:	aa 41       	bra	3b7e <__dtoa_r+0x6b2>
    46fa:	1f e4       	mov.l	r14,@(16,r15)
    46fc:	53 fb       	mov.l	@(44,r15),r3
    46fe:	5b fe       	mov.l	@(56,r15),r11
    4700:	52 3e       	mov.l	@(56,r3),r2
    4702:	59 fa       	mov.l	@(40,r15),r9
    4704:	62 2b       	neg	r2,r2
    4706:	aa a6       	bra	3c56 <__dtoa_r+0x78a>
    4708:	72 36       	add	#54,r2
    470a:	00 09       	nop	
    470c:	62 b3       	mov	r11,r2
    470e:	1f 8c       	mov.l	r8,@(48,r15)
    4710:	60 d3       	mov	r13,r0
    4712:	88 39       	cmp/eq	#57,r0
    4714:	5b f6       	mov.l	@(24,r15),r11
    4716:	58 f9       	mov.l	@(36,r15),r8
    4718:	89 1a       	bt	4750 <__dtoa_r+0x1284>
    471a:	61 d3       	mov	r13,r1
    471c:	71 01       	add	#1,r1
    471e:	2a 10       	mov.b	r1,@r10
    4720:	7a 01       	add	#1,r10
    4722:	5d f4       	mov.l	@(16,r15),r13
    4724:	6c 23       	mov	r2,r12
    4726:	aa 2a       	bra	3b7e <__dtoa_r+0x6b2>
    4728:	1f a4       	mov.l	r10,@(16,r15)
    472a:	00 09       	nop	
    472c:	1f 8c       	mov.l	r8,@(48,r15)
    472e:	6c 23       	mov	r2,r12
    4730:	5d f7       	mov.l	@(28,r15),r13
    4732:	5b f6       	mov.l	@(24,r15),r11
    4734:	ac 9f       	bra	4076 <__dtoa_r+0xbaa>
    4736:	58 f9       	mov.l	@(36,r15),r8
    4738:	04 33       	.word 0x0433
    473a:	00 09       	nop	
    473c:	00 00       	.word 0x0000
    473e:	59 18       	mov.l	@(32,r1),r9
    4740:	00 00       	.word 0x0000
    4742:	58 04       	mov.l	@(16,r0),r8
    4744:	00 00       	.word 0x0000
    4746:	5e 00       	mov.l	@(0,r0),r14
    4748:	00 00       	.word 0x0000
    474a:	95 08       	mov.w	475e <__dtoa_r+0x1292>,r5	! ac9f
    474c:	ac 91       	bra	4072 <__dtoa_r+0xba6>
    474e:	50 f4       	mov.l	@(16,r15),r0
    4750:	e1 39       	mov	#57,r1
    4752:	6e a3       	mov	r10,r14
    4754:	2a 10       	mov.b	r1,@r10
    4756:	6c 23       	mov	r2,r12
    4758:	7e 01       	add	#1,r14
    475a:	e0 39       	mov	#57,r0
    475c:	61 a3       	mov	r10,r1
    475e:	ac 9f       	bra	40a0 <__dtoa_r+0xbd4>
    4760:	52 f4       	mov.l	@(16,r15),r2
    4762:	00 09       	nop	
    4764:	8b 02       	bf	476c <__dtoa_r+0x12a0>
    4766:	60 d3       	mov	r13,r0
    4768:	c8 01       	tst	#1,r0
    476a:	8b 01       	bf	4770 <__dtoa_r+0x12a4>
    476c:	ae ac       	bra	44c8 <__dtoa_r+0xffc>
    476e:	2a d0       	mov.b	r13,@r10
    4770:	ae a5       	bra	44be <__dtoa_r+0xff2>
    4772:	60 c3       	mov	r12,r0
    4774:	ab 0a       	bra	3d8c <__dtoa_r+0x8c0>
    4776:	52 fd       	mov.l	@(52,r15),r2
    4778:	54 f2       	mov.l	@(8,r15),r4
    477a:	e6 0a       	mov	#10,r6
    477c:	41 0b       	jsr	@r1
    477e:	e7 00       	mov	#0,r7
    4780:	6c 03       	mov	r0,r12
    4782:	e0 50       	mov	#80,r0
    4784:	03 fe       	mov.l	@(r0,r15),r3
    4786:	e0 50       	mov	#80,r0
    4788:	43 15       	cmp/pl	r3
    478a:	89 07       	bt	479c <__dtoa_r+0x12d0>
    478c:	52 f3       	mov.l	@(12,r15),r2
    478e:	e1 02       	mov	#2,r1
    4790:	32 17       	cmp/gt	r1,r2
    4792:	8b 03       	bf	479c <__dtoa_r+0x12d0>
    4794:	01 fe       	mov.l	@(r0,r15),r1
    4796:	a9 d5       	bra	3b44 <__dtoa_r+0x678>
    4798:	1f 19       	mov.l	r1,@(36,r15)
    479a:	00 09       	nop	
    479c:	03 fe       	mov.l	@(r0,r15),r3
    479e:	ad ff       	bra	43a0 <__dtoa_r+0xed4>
    47a0:	1f 39       	mov.l	r3,@(36,r15)
    47a2:	00 09       	nop	
    47a4:	a9 03       	bra	39ae <__dtoa_r+0x4e2>
    47a6:	1f b4       	mov.l	r11,@(16,r15)
    47a8:	01 fe       	mov.l	@(r0,r15),r1
    47aa:	5d f4       	mov.l	@(16,r15),r13
    47ac:	1f 15       	mov.l	r1,@(20,r15)
    47ae:	d8 06       	mov.l	47c8 <__dtoa_r+0x12fc>,r8	! 5918 <__Bfree>
    47b0:	a9 f5       	bra	3b9e <__dtoa_r+0x6d2>
    47b2:	1f b4       	mov.l	r11,@(16,r15)
    47b4:	88 04       	cmp/eq	#4,r0
    47b6:	8b 01       	bf	47bc <__dtoa_r+0x12f0>
    47b8:	a9 a4       	bra	3b04 <__dtoa_r+0x638>
    47ba:	52 fa       	mov.l	@(40,r15),r2
    47bc:	60 33       	mov	r3,r0
    47be:	a9 99       	bra	3af4 <__dtoa_r+0x628>
    47c0:	70 3c       	add	#60,r0
    47c2:	00 09       	nop	
    47c4:	a9 be       	bra	3b44 <__dtoa_r+0x678>
    47c6:	1f 29       	mov.l	r2,@(36,r15)
    47c8:	00 00       	.word 0x0000
    47ca:	59 18       	mov.l	@(32,r1),r9

000047cc <___sflush_r>:
    47cc:	2f 86       	mov.l	r8,@-r15
    47ce:	2f 96       	mov.l	r9,@-r15
    47d0:	69 53       	mov	r5,r9
    47d2:	2f a6       	mov.l	r10,@-r15
    47d4:	2f b6       	mov.l	r11,@-r15
    47d6:	6b 43       	mov	r4,r11
    47d8:	2f c6       	mov.l	r12,@-r15
    47da:	6c 53       	mov	r5,r12
    47dc:	4f 22       	sts.l	pr,@-r15
    47de:	7c 0c       	add	#12,r12
    47e0:	60 c1       	mov.w	@r12,r0
    47e2:	c8 08       	tst	#8,r0
    47e4:	8b 42       	bf	486c <___sflush_r+0xa0>
    47e6:	91 a5       	mov.w	4934 <___sflush_r+0x168>,r1	! 800
    47e8:	52 51       	mov.l	@(4,r5),r2
    47ea:	21 0b       	or	r0,r1
    47ec:	2c 11       	mov.w	r1,@r12
    47ee:	42 15       	cmp/pl	r2
    47f0:	8b 64       	bf	48bc <___sflush_r+0xf0>
    47f2:	52 9a       	mov.l	@(40,r9),r2
    47f4:	22 28       	tst	r2,r2
    47f6:	89 30       	bt	485a <___sflush_r+0x8e>
    47f8:	e3 00       	mov	#0,r3
    47fa:	68 b2       	mov.l	@r11,r8
    47fc:	2b 32       	mov.l	r3,@r11
    47fe:	93 9a       	mov.w	4936 <___sflush_r+0x16a>,r3	! 1000
    4800:	20 38       	tst	r3,r0
    4802:	89 61       	bt	48c8 <___sflush_r+0xfc>
    4804:	63 93       	mov	r9,r3
    4806:	73 40       	add	#64,r3
    4808:	56 34       	mov.l	@(16,r3),r6
    480a:	60 13       	mov	r1,r0
    480c:	c8 04       	tst	#4,r0
    480e:	89 06       	bt	481e <___sflush_r+0x52>
    4810:	51 91       	mov.l	@(4,r9),r1
    4812:	36 18       	sub	r1,r6
    4814:	51 9c       	mov.l	@(48,r9),r1
    4816:	21 18       	tst	r1,r1
    4818:	89 01       	bt	481e <___sflush_r+0x52>
    481a:	51 9f       	mov.l	@(60,r9),r1
    481c:	36 18       	sub	r1,r6
    481e:	64 b3       	mov	r11,r4
    4820:	55 97       	mov.l	@(28,r9),r5
    4822:	42 0b       	jsr	@r2
    4824:	e7 00       	mov	#0,r7
    4826:	88 ff       	cmp/eq	#-1,r0
    4828:	89 5a       	bt	48e0 <___sflush_r+0x114>
    482a:	92 85       	mov.w	4938 <___sflush_r+0x16c>,r2	! f7ff
    482c:	61 c1       	mov.w	@r12,r1
    482e:	22 19       	and	r1,r2
    4830:	2c 21       	mov.w	r2,@r12
    4832:	e2 00       	mov	#0,r2
    4834:	19 21       	mov.l	r2,@(4,r9)
    4836:	52 94       	mov.l	@(16,r9),r2
    4838:	29 22       	mov.l	r2,@r9
    483a:	92 7c       	mov.w	4936 <___sflush_r+0x16a>,r2	! 1000
    483c:	21 28       	tst	r2,r1
    483e:	8b 5c       	bf	48fa <___sflush_r+0x12e>
    4840:	55 9c       	mov.l	@(48,r9),r5
    4842:	2b 82       	mov.l	r8,@r11
    4844:	25 58       	tst	r5,r5
    4846:	89 08       	bt	485a <___sflush_r+0x8e>
    4848:	61 93       	mov	r9,r1
    484a:	71 40       	add	#64,r1
    484c:	35 10       	cmp/eq	r1,r5
    484e:	89 02       	bt	4856 <___sflush_r+0x8a>
    4850:	d1 3a       	mov.l	493c <___sflush_r+0x170>,r1	! 4cc8 <__free_r>
    4852:	41 0b       	jsr	@r1
    4854:	64 b3       	mov	r11,r4
    4856:	e1 00       	mov	#0,r1
    4858:	19 1c       	mov.l	r1,@(48,r9)
    485a:	e0 00       	mov	#0,r0
    485c:	4f 26       	lds.l	@r15+,pr
    485e:	6c f6       	mov.l	@r15+,r12
    4860:	6b f6       	mov.l	@r15+,r11
    4862:	6a f6       	mov.l	@r15+,r10
    4864:	69 f6       	mov.l	@r15+,r9
    4866:	68 f6       	mov.l	@r15+,r8
    4868:	00 0b       	rts	
    486a:	00 09       	nop	
    486c:	5a 54       	mov.l	@(16,r5),r10
    486e:	2a a8       	tst	r10,r10
    4870:	89 f3       	bt	485a <___sflush_r+0x8e>
    4872:	68 52       	mov.l	@r5,r8
    4874:	c8 03       	tst	#3,r0
    4876:	25 a2       	mov.l	r10,@r5
    4878:	38 a8       	sub	r10,r8
    487a:	e1 00       	mov	#0,r1
    487c:	8b 00       	bf	4880 <___sflush_r+0xb4>
    487e:	51 55       	mov.l	@(20,r5),r1
    4880:	19 12       	mov.l	r1,@(8,r9)
    4882:	48 15       	cmp/pl	r8
    4884:	89 06       	bt	4894 <___sflush_r+0xc8>
    4886:	af e9       	bra	485c <___sflush_r+0x90>
    4888:	e0 00       	mov	#0,r0
    488a:	00 09       	nop	
    488c:	38 08       	sub	r0,r8
    488e:	48 15       	cmp/pl	r8
    4890:	3a 0c       	add	r0,r10
    4892:	8b e2       	bf	485a <___sflush_r+0x8e>
    4894:	50 99       	mov.l	@(36,r9),r0
    4896:	64 b3       	mov	r11,r4
    4898:	55 97       	mov.l	@(28,r9),r5
    489a:	66 a3       	mov	r10,r6
    489c:	40 0b       	jsr	@r0
    489e:	67 83       	mov	r8,r7
    48a0:	40 15       	cmp/pl	r0
    48a2:	89 f3       	bt	488c <___sflush_r+0xc0>
    48a4:	60 c1       	mov.w	@r12,r0
    48a6:	cb 40       	or	#64,r0
    48a8:	2c 01       	mov.w	r0,@r12
    48aa:	e0 ff       	mov	#-1,r0
    48ac:	4f 26       	lds.l	@r15+,pr
    48ae:	6c f6       	mov.l	@r15+,r12
    48b0:	6b f6       	mov.l	@r15+,r11
    48b2:	6a f6       	mov.l	@r15+,r10
    48b4:	69 f6       	mov.l	@r15+,r9
    48b6:	68 f6       	mov.l	@r15+,r8
    48b8:	00 0b       	rts	
    48ba:	00 09       	nop	
    48bc:	52 5f       	mov.l	@(60,r5),r2
    48be:	42 15       	cmp/pl	r2
    48c0:	89 97       	bt	47f2 <___sflush_r+0x26>
    48c2:	af cb       	bra	485c <___sflush_r+0x90>
    48c4:	e0 00       	mov	#0,r0
    48c6:	00 09       	nop	
    48c8:	e6 00       	mov	#0,r6
    48ca:	64 b3       	mov	r11,r4
    48cc:	55 97       	mov.l	@(28,r9),r5
    48ce:	42 0b       	jsr	@r2
    48d0:	e7 01       	mov	#1,r7
    48d2:	88 ff       	cmp/eq	#-1,r0
    48d4:	66 03       	mov	r0,r6
    48d6:	89 23       	bt	4920 <___sflush_r+0x154>
    48d8:	61 c1       	mov.w	@r12,r1
    48da:	af 96       	bra	480a <___sflush_r+0x3e>
    48dc:	52 9a       	mov.l	@(40,r9),r2
    48de:	00 09       	nop	
    48e0:	61 b2       	mov.l	@r11,r1
    48e2:	21 18       	tst	r1,r1
    48e4:	8b 0e       	bf	4904 <___sflush_r+0x138>
    48e6:	19 11       	mov.l	r1,@(4,r9)
    48e8:	51 94       	mov.l	@(16,r9),r1
    48ea:	93 25       	mov.w	4938 <___sflush_r+0x16c>,r3	! f7ff
    48ec:	62 c1       	mov.w	@r12,r2
    48ee:	29 12       	mov.l	r1,@r9
    48f0:	23 29       	and	r2,r3
    48f2:	91 20       	mov.w	4936 <___sflush_r+0x16a>,r1	! 1000
    48f4:	2c 31       	mov.w	r3,@r12
    48f6:	22 18       	tst	r1,r2
    48f8:	89 a2       	bt	4840 <___sflush_r+0x74>
    48fa:	61 93       	mov	r9,r1
    48fc:	71 40       	add	#64,r1
    48fe:	af 9f       	bra	4840 <___sflush_r+0x74>
    4900:	11 04       	mov.l	r0,@(16,r1)
    4902:	00 09       	nop	
    4904:	60 13       	mov	r1,r0
    4906:	88 1d       	cmp/eq	#29,r0
    4908:	89 01       	bt	490e <___sflush_r+0x142>
    490a:	88 16       	cmp/eq	#22,r0
    490c:	8b ca       	bf	48a4 <___sflush_r+0xd8>
    490e:	91 13       	mov.w	4938 <___sflush_r+0x16c>,r1	! f7ff
    4910:	62 c1       	mov.w	@r12,r2
    4912:	21 29       	and	r2,r1
    4914:	2c 11       	mov.w	r1,@r12
    4916:	e1 00       	mov	#0,r1
    4918:	19 11       	mov.l	r1,@(4,r9)
    491a:	51 94       	mov.l	@(16,r9),r1
    491c:	af 90       	bra	4840 <___sflush_r+0x74>
    491e:	29 12       	mov.l	r1,@r9
    4920:	60 b2       	mov.l	@r11,r0
    4922:	20 08       	tst	r0,r0
    4924:	89 d8       	bt	48d8 <___sflush_r+0x10c>
    4926:	88 16       	cmp/eq	#22,r0
    4928:	89 01       	bt	492e <___sflush_r+0x162>
    492a:	88 1d       	cmp/eq	#29,r0
    492c:	8b ba       	bf	48a4 <___sflush_r+0xd8>
    492e:	2b 82       	mov.l	r8,@r11
    4930:	af 94       	bra	485c <___sflush_r+0x90>
    4932:	e0 00       	mov	#0,r0
    4934:	08 00       	.word 0x0800
    4936:	10 00       	mov.l	r0,@(0,r0)
    4938:	f7 ff       	.word 0xf7ff
    493a:	00 09       	nop	
    493c:	00 00       	.word 0x0000
    493e:	4c c8       	.word 0x4cc8

00004940 <__fflush_r>:
    4940:	2f 86       	mov.l	r8,@-r15
    4942:	24 48       	tst	r4,r4
    4944:	4f 22       	sts.l	pr,@-r15
    4946:	68 43       	mov	r4,r8
    4948:	7f fc       	add	#-4,r15
    494a:	89 02       	bt	4952 <__fflush_r+0x12>
    494c:	51 4e       	mov.l	@(56,r4),r1
    494e:	21 18       	tst	r1,r1
    4950:	89 12       	bt	4978 <__fflush_r+0x38>
    4952:	61 53       	mov	r5,r1
    4954:	71 0c       	add	#12,r1
    4956:	61 11       	mov.w	@r1,r1
    4958:	21 18       	tst	r1,r1
    495a:	8b 05       	bf	4968 <__fflush_r+0x28>
    495c:	e0 00       	mov	#0,r0
    495e:	7f 04       	add	#4,r15
    4960:	4f 26       	lds.l	@r15+,pr
    4962:	68 f6       	mov.l	@r15+,r8
    4964:	00 0b       	rts	
    4966:	00 09       	nop	
    4968:	d0 06       	mov.l	4984 <__fflush_r+0x44>,r0	! 47cc <___sflush_r>
    496a:	64 83       	mov	r8,r4
    496c:	7f 04       	add	#4,r15
    496e:	4f 26       	lds.l	@r15+,pr
    4970:	68 f6       	mov.l	@r15+,r8
    4972:	40 2b       	jmp	@r0
    4974:	00 09       	nop	
    4976:	00 09       	nop	
    4978:	d1 03       	mov.l	4988 <__fflush_r+0x48>,r1	! 4a90 <___sinit>
    497a:	41 0b       	jsr	@r1
    497c:	2f 52       	mov.l	r5,@r15
    497e:	af e8       	bra	4952 <__fflush_r+0x12>
    4980:	65 f2       	mov.l	@r15,r5
    4982:	00 09       	nop	
    4984:	00 00       	.word 0x0000
    4986:	47 cc       	.word 0x47cc
    4988:	00 00       	.word 0x0000
    498a:	4a 90       	.word 0x4a90

0000498c <_fflush>:
    498c:	24 48       	tst	r4,r4
    498e:	65 43       	mov	r4,r5
    4990:	89 04       	bt	499c <_fflush+0x10>
    4992:	d1 05       	mov.l	49a8 <_fflush+0x1c>,r1	! a408 <__impure_ptr>
    4994:	d0 05       	mov.l	49ac <_fflush+0x20>,r0	! 4940 <__fflush_r>
    4996:	40 2b       	jmp	@r0
    4998:	64 12       	mov.l	@r1,r4
    499a:	00 09       	nop	
    499c:	d1 04       	mov.l	49b0 <_fflush+0x24>,r1	! 9e2c <__global_impure_ptr>
    499e:	d0 05       	mov.l	49b4 <_fflush+0x28>,r0	! 4f44 <__fwalk_reent>
    49a0:	d5 02       	mov.l	49ac <_fflush+0x20>,r5	! 4940 <__fflush_r>
    49a2:	40 2b       	jmp	@r0
    49a4:	64 12       	mov.l	@r1,r4
    49a6:	00 09       	nop	
    49a8:	00 00       	.word 0x0000
    49aa:	a4 08       	bra	51be <__malloc_r+0x32>
    49ac:	00 00       	.word 0x0000
    49ae:	49 40       	.word 0x4940
    49b0:	00 00       	.word 0x0000
    49b2:	9e 2c       	mov.w	4a0e <_std.isra.0+0x3e>,r14	! 4f26
    49b4:	00 00       	.word 0x0000
    49b6:	4f 44       	.word 0x4f44

000049b8 <___fp_lock>:
    49b8:	00 0b       	rts	
    49ba:	e0 00       	mov	#0,r0

000049bc <___fp_unlock>:
    49bc:	00 0b       	rts	
    49be:	e0 00       	mov	#0,r0

000049c0 <__cleanup_r>:
    49c0:	d0 01       	mov.l	49c8 <__cleanup_r+0x8>,r0	! 4ed4 <__fwalk>
    49c2:	d5 02       	mov.l	49cc <__cleanup_r+0xc>,r5	! 7700 <_fclose>
    49c4:	40 2b       	jmp	@r0
    49c6:	00 09       	nop	
    49c8:	00 00       	.word 0x0000
    49ca:	4e d4       	.word 0x4ed4
    49cc:	00 00       	.word 0x0000
    49ce:	77 00       	add	#0,r7

000049d0 <_std.isra.0>:
    49d0:	2f 86       	mov.l	r8,@-r15
    49d2:	62 43       	mov	r4,r2
    49d4:	4f 22       	sts.l	pr,@-r15
    49d6:	72 0c       	add	#12,r2
    49d8:	d0 0f       	mov.l	4a18 <_std.isra.0+0x48>,r0	! 1670 <_memset>
    49da:	e1 00       	mov	#0,r1
    49dc:	22 51       	mov.w	r5,@r2
    49de:	72 34       	add	#52,r2
    49e0:	12 19       	mov.l	r1,@(36,r2)
    49e2:	72 ce       	add	#-50,r2
    49e4:	68 43       	mov	r4,r8
    49e6:	24 12       	mov.l	r1,@r4
    49e8:	e5 00       	mov	#0,r5
    49ea:	14 11       	mov.l	r1,@(4,r4)
    49ec:	14 12       	mov.l	r1,@(8,r4)
    49ee:	22 61       	mov.w	r6,@r2
    49f0:	e6 08       	mov	#8,r6
    49f2:	14 14       	mov.l	r1,@(16,r4)
    49f4:	14 15       	mov.l	r1,@(20,r4)
    49f6:	14 16       	mov.l	r1,@(24,r4)
    49f8:	40 0b       	jsr	@r0
    49fa:	74 5c       	add	#92,r4
    49fc:	d1 07       	mov.l	4a1c <_std.isra.0+0x4c>,r1	! 6590 <___sread>
    49fe:	18 87       	mov.l	r8,@(28,r8)
    4a00:	18 18       	mov.l	r1,@(32,r8)
    4a02:	d1 07       	mov.l	4a20 <_std.isra.0+0x50>,r1	! 65d0 <___swrite>
    4a04:	18 19       	mov.l	r1,@(36,r8)
    4a06:	d1 07       	mov.l	4a24 <_std.isra.0+0x54>,r1	! 662c <___sseek>
    4a08:	18 1a       	mov.l	r1,@(40,r8)
    4a0a:	d1 07       	mov.l	4a28 <_std.isra.0+0x58>,r1	! 6674 <___sclose>
    4a0c:	18 1b       	mov.l	r1,@(44,r8)
    4a0e:	4f 26       	lds.l	@r15+,pr
    4a10:	68 f6       	mov.l	@r15+,r8
    4a12:	00 0b       	rts	
    4a14:	00 09       	nop	
    4a16:	00 09       	nop	
    4a18:	00 00       	.word 0x0000
    4a1a:	16 70       	mov.l	r7,@(0,r6)
    4a1c:	00 00       	.word 0x0000
    4a1e:	65 90       	mov.b	@r9,r5
    4a20:	00 00       	.word 0x0000
    4a22:	65 d0       	mov.b	@r13,r5
    4a24:	00 00       	.word 0x0000
    4a26:	66 2c       	extu.b	r2,r6
    4a28:	00 00       	.word 0x0000
    4a2a:	66 74       	mov.b	@r7+,r6

00004a2c <___sfmoreglue>:
    4a2c:	2f 86       	mov.l	r8,@-r15
    4a2e:	68 53       	mov	r5,r8
    4a30:	38 8c       	add	r8,r8
    4a32:	38 5c       	add	r5,r8
    4a34:	48 08       	shll2	r8
    4a36:	2f 96       	mov.l	r9,@-r15
    4a38:	38 5c       	add	r5,r8
    4a3a:	48 08       	shll2	r8
    4a3c:	d0 0d       	mov.l	4a74 <___sfmoreglue+0x48>,r0	! 518c <__malloc_r>
    4a3e:	38 8c       	add	r8,r8
    4a40:	2f a6       	mov.l	r10,@-r15
    4a42:	6a 53       	mov	r5,r10
    4a44:	65 83       	mov	r8,r5
    4a46:	4f 22       	sts.l	pr,@-r15
    4a48:	40 0b       	jsr	@r0
    4a4a:	75 0c       	add	#12,r5
    4a4c:	20 08       	tst	r0,r0
    4a4e:	69 03       	mov	r0,r9
    4a50:	89 09       	bt	4a66 <___sfmoreglue+0x3a>
    4a52:	64 03       	mov	r0,r4
    4a54:	74 0c       	add	#12,r4
    4a56:	e1 00       	mov	#0,r1
    4a58:	20 12       	mov.l	r1,@r0
    4a5a:	e5 00       	mov	#0,r5
    4a5c:	10 a1       	mov.l	r10,@(4,r0)
    4a5e:	10 42       	mov.l	r4,@(8,r0)
    4a60:	d0 05       	mov.l	4a78 <___sfmoreglue+0x4c>,r0	! 1670 <_memset>
    4a62:	40 0b       	jsr	@r0
    4a64:	66 83       	mov	r8,r6
    4a66:	60 93       	mov	r9,r0
    4a68:	4f 26       	lds.l	@r15+,pr
    4a6a:	6a f6       	mov.l	@r15+,r10
    4a6c:	69 f6       	mov.l	@r15+,r9
    4a6e:	68 f6       	mov.l	@r15+,r8
    4a70:	00 0b       	rts	
    4a72:	00 09       	nop	
    4a74:	00 00       	.word 0x0000
    4a76:	51 8c       	mov.l	@(48,r8),r1
    4a78:	00 00       	.word 0x0000
    4a7a:	16 70       	mov.l	r7,@(0,r6)

00004a7c <__cleanup>:
    4a7c:	d1 02       	mov.l	4a88 <__cleanup+0xc>,r1	! 9e2c <__global_impure_ptr>
    4a7e:	64 12       	mov.l	@r1,r4
    4a80:	d1 02       	mov.l	4a8c <__cleanup+0x10>,r1	! 49c0 <__cleanup_r>
    4a82:	41 2b       	jmp	@r1
    4a84:	00 09       	nop	
    4a86:	00 09       	nop	
    4a88:	00 00       	.word 0x0000
    4a8a:	9e 2c       	mov.w	4ae6 <___sinit+0x56>,r14	! 2ec
    4a8c:	00 00       	.word 0x0000
    4a8e:	49 c0       	.word 0x49c0

00004a90 <___sinit>:
    4a90:	2f 86       	mov.l	r8,@-r15
    4a92:	68 43       	mov	r4,r8
    4a94:	2f 96       	mov.l	r9,@-r15
    4a96:	4f 22       	sts.l	pr,@-r15
    4a98:	51 4e       	mov.l	@(56,r4),r1
    4a9a:	21 18       	tst	r1,r1
    4a9c:	89 04       	bt	4aa8 <___sinit+0x18>
    4a9e:	4f 26       	lds.l	@r15+,pr
    4aa0:	69 f6       	mov.l	@r15+,r9
    4aa2:	68 f6       	mov.l	@r15+,r8
    4aa4:	00 0b       	rts	
    4aa6:	00 09       	nop	
    4aa8:	d2 0f       	mov.l	4ae8 <___sinit+0x58>,r2	! 49c0 <__cleanup_r>
    4aaa:	e5 04       	mov	#4,r5
    4aac:	d9 0f       	mov.l	4aec <___sinit+0x5c>,r9	! 49d0 <_std.isra.0>
    4aae:	e6 00       	mov	#0,r6
    4ab0:	14 2f       	mov.l	r2,@(60,r4)
    4ab2:	e2 01       	mov	#1,r2
    4ab4:	14 2e       	mov.l	r2,@(56,r4)
    4ab6:	92 15       	mov.w	4ae4 <___sinit+0x54>,r2	! 2bc
    4ab8:	32 4c       	add	r4,r2
    4aba:	12 19       	mov.l	r1,@(36,r2)
    4abc:	e1 03       	mov	#3,r1
    4abe:	12 1a       	mov.l	r1,@(40,r2)
    4ac0:	91 11       	mov.w	4ae6 <___sinit+0x56>,r1	! 2ec
    4ac2:	31 4c       	add	r4,r1
    4ac4:	12 1b       	mov.l	r1,@(44,r2)
    4ac6:	49 0b       	jsr	@r9
    4ac8:	54 41       	mov.l	@(4,r4),r4
    4aca:	54 82       	mov.l	@(8,r8),r4
    4acc:	e5 09       	mov	#9,r5
    4ace:	49 0b       	jsr	@r9
    4ad0:	e6 01       	mov	#1,r6
    4ad2:	54 83       	mov.l	@(12,r8),r4
    4ad4:	e5 12       	mov	#18,r5
    4ad6:	e6 02       	mov	#2,r6
    4ad8:	61 93       	mov	r9,r1
    4ada:	4f 26       	lds.l	@r15+,pr
    4adc:	69 f6       	mov.l	@r15+,r9
    4ade:	68 f6       	mov.l	@r15+,r8
    4ae0:	41 2b       	jmp	@r1
    4ae2:	00 09       	nop	
    4ae4:	02 bc       	mov.b	@(r0,r11),r2
    4ae6:	02 ec       	mov.b	@(r0,r14),r2
    4ae8:	00 00       	.word 0x0000
    4aea:	49 c0       	.word 0x49c0
    4aec:	00 00       	.word 0x0000
    4aee:	49 d0       	.word 0x49d0

00004af0 <___sfp>:
    4af0:	2f 86       	mov.l	r8,@-r15
    4af2:	2f 96       	mov.l	r9,@-r15
    4af4:	d1 2b       	mov.l	4ba4 <___sfp+0xb4>,r1	! 9e2c <__global_impure_ptr>
    4af6:	2f a6       	mov.l	r10,@-r15
    4af8:	6a 43       	mov	r4,r10
    4afa:	2f b6       	mov.l	r11,@-r15
    4afc:	68 12       	mov.l	@r1,r8
    4afe:	4f 22       	sts.l	pr,@-r15
    4b00:	51 8e       	mov.l	@(56,r8),r1
    4b02:	21 18       	tst	r1,r1
    4b04:	89 3c       	bt	4b80 <___sfp+0x90>
    4b06:	99 4b       	mov.w	4ba0 <___sfp+0xb0>,r9	! 2e0
    4b08:	db 27       	mov.l	4ba8 <___sfp+0xb8>,r11	! 4a2c <___sfmoreglue>
    4b0a:	39 8c       	add	r8,r9
    4b0c:	50 91       	mov.l	@(4,r9),r0
    4b0e:	58 92       	mov.l	@(8,r9),r8
    4b10:	70 ff       	add	#-1,r0
    4b12:	40 11       	cmp/pz	r0
    4b14:	89 06       	bt	4b24 <___sfp+0x34>
    4b16:	a0 2e       	bra	4b76 <___sfp+0x86>
    4b18:	60 92       	mov.l	@r9,r0
    4b1a:	00 09       	nop	
    4b1c:	70 ff       	add	#-1,r0
    4b1e:	88 ff       	cmp/eq	#-1,r0
    4b20:	78 68       	add	#104,r8
    4b22:	89 27       	bt	4b74 <___sfp+0x84>
    4b24:	61 83       	mov	r8,r1
    4b26:	71 0c       	add	#12,r1
    4b28:	62 11       	mov.w	@r1,r2
    4b2a:	22 28       	tst	r2,r2
    4b2c:	8b f6       	bf	4b1c <___sfp+0x2c>
    4b2e:	62 83       	mov	r8,r2
    4b30:	d0 1e       	mov.l	4bac <___sfp+0xbc>,r0	! 1670 <_memset>
    4b32:	72 0e       	add	#14,r2
    4b34:	e3 ff       	mov	#-1,r3
    4b36:	6a 83       	mov	r8,r10
    4b38:	e9 00       	mov	#0,r9
    4b3a:	7a 40       	add	#64,r10
    4b3c:	22 31       	mov.w	r3,@r2
    4b3e:	64 83       	mov	r8,r4
    4b40:	e2 01       	mov	#1,r2
    4b42:	21 21       	mov.w	r2,@r1
    4b44:	74 5c       	add	#92,r4
    4b46:	1a 99       	mov.l	r9,@(36,r10)
    4b48:	e5 00       	mov	#0,r5
    4b4a:	28 92       	mov.l	r9,@r8
    4b4c:	e6 08       	mov	#8,r6
    4b4e:	18 92       	mov.l	r9,@(8,r8)
    4b50:	18 91       	mov.l	r9,@(4,r8)
    4b52:	18 94       	mov.l	r9,@(16,r8)
    4b54:	18 95       	mov.l	r9,@(20,r8)
    4b56:	40 0b       	jsr	@r0
    4b58:	18 96       	mov.l	r9,@(24,r8)
    4b5a:	18 9c       	mov.l	r9,@(48,r8)
    4b5c:	18 9d       	mov.l	r9,@(52,r8)
    4b5e:	1a 91       	mov.l	r9,@(4,r10)
    4b60:	1a 92       	mov.l	r9,@(8,r10)
    4b62:	60 83       	mov	r8,r0
    4b64:	4f 26       	lds.l	@r15+,pr
    4b66:	6b f6       	mov.l	@r15+,r11
    4b68:	6a f6       	mov.l	@r15+,r10
    4b6a:	69 f6       	mov.l	@r15+,r9
    4b6c:	68 f6       	mov.l	@r15+,r8
    4b6e:	00 0b       	rts	
    4b70:	00 09       	nop	
    4b72:	00 09       	nop	
    4b74:	60 92       	mov.l	@r9,r0
    4b76:	20 08       	tst	r0,r0
    4b78:	89 08       	bt	4b8c <___sfp+0x9c>
    4b7a:	af c7       	bra	4b0c <___sfp+0x1c>
    4b7c:	69 03       	mov	r0,r9
    4b7e:	00 09       	nop	
    4b80:	d1 0b       	mov.l	4bb0 <___sfp+0xc0>,r1	! 4a90 <___sinit>
    4b82:	41 0b       	jsr	@r1
    4b84:	64 83       	mov	r8,r4
    4b86:	af be       	bra	4b06 <___sfp+0x16>
    4b88:	00 09       	nop	
    4b8a:	00 09       	nop	
    4b8c:	64 a3       	mov	r10,r4
    4b8e:	4b 0b       	jsr	@r11
    4b90:	e5 04       	mov	#4,r5
    4b92:	29 02       	mov.l	r0,@r9
    4b94:	20 08       	tst	r0,r0
    4b96:	8b f0       	bf	4b7a <___sfp+0x8a>
    4b98:	e1 0c       	mov	#12,r1
    4b9a:	2a 12       	mov.l	r1,@r10
    4b9c:	af e1       	bra	4b62 <___sfp+0x72>
    4b9e:	e8 00       	mov	#0,r8
    4ba0:	02 e0       	.word 0x02e0
    4ba2:	00 09       	nop	
    4ba4:	00 00       	.word 0x0000
    4ba6:	9e 2c       	mov.w	4c02 <__malloc_trim_r+0xe>,r14	! db2c
    4ba8:	00 00       	.word 0x0000
    4baa:	4a 2c       	.word 0x4a2c
    4bac:	00 00       	.word 0x0000
    4bae:	16 70       	mov.l	r7,@(0,r6)
    4bb0:	00 00       	.word 0x0000
    4bb2:	4a 90       	.word 0x4a90

00004bb4 <___sfp_lock_acquire>:
    4bb4:	00 0b       	rts	
    4bb6:	00 09       	nop	

00004bb8 <___sfp_lock_release>:
    4bb8:	00 0b       	rts	
    4bba:	00 09       	nop	

00004bbc <___sinit_lock_acquire>:
    4bbc:	00 0b       	rts	
    4bbe:	00 09       	nop	

00004bc0 <___sinit_lock_release>:
    4bc0:	00 0b       	rts	
    4bc2:	00 09       	nop	

00004bc4 <___fp_lock_all>:
    4bc4:	d1 02       	mov.l	4bd0 <___fp_lock_all+0xc>,r1	! a408 <__impure_ptr>
    4bc6:	d0 03       	mov.l	4bd4 <___fp_lock_all+0x10>,r0	! 4ed4 <__fwalk>
    4bc8:	d5 03       	mov.l	4bd8 <___fp_lock_all+0x14>,r5	! 49b8 <___fp_lock>
    4bca:	40 2b       	jmp	@r0
    4bcc:	64 12       	mov.l	@r1,r4
    4bce:	00 09       	nop	
    4bd0:	00 00       	.word 0x0000
    4bd2:	a4 08       	bra	53e6 <__malloc_r+0x25a>
    4bd4:	00 00       	.word 0x0000
    4bd6:	4e d4       	.word 0x4ed4
    4bd8:	00 00       	.word 0x0000
    4bda:	49 b8       	.word 0x49b8

00004bdc <___fp_unlock_all>:
    4bdc:	d1 02       	mov.l	4be8 <___fp_unlock_all+0xc>,r1	! a408 <__impure_ptr>
    4bde:	d0 03       	mov.l	4bec <___fp_unlock_all+0x10>,r0	! 4ed4 <__fwalk>
    4be0:	d5 03       	mov.l	4bf0 <___fp_unlock_all+0x14>,r5	! 49bc <___fp_unlock>
    4be2:	40 2b       	jmp	@r0
    4be4:	64 12       	mov.l	@r1,r4
    4be6:	00 09       	nop	
    4be8:	00 00       	.word 0x0000
    4bea:	a4 08       	bra	53fe <__malloc_r+0x272>
    4bec:	00 00       	.word 0x0000
    4bee:	4e d4       	.word 0x4ed4
    4bf0:	00 00       	.word 0x0000
    4bf2:	49 bc       	.word 0x49bc

00004bf4 <__malloc_trim_r>:
    4bf4:	2f 86       	mov.l	r8,@-r15
    4bf6:	2f 96       	mov.l	r9,@-r15
    4bf8:	2f a6       	mov.l	r10,@-r15
    4bfa:	6a 43       	mov	r4,r10
    4bfc:	2f b6       	mov.l	r11,@-r15
    4bfe:	d1 2c       	mov.l	4cb0 <__malloc_trim_r+0xbc>,r1	! 5898 <___malloc_lock>
    4c00:	2f c6       	mov.l	r12,@-r15
    4c02:	db 2c       	mov.l	4cb4 <__malloc_trim_r+0xc0>,r11	! a8b4 <___malloc_av_>
    4c04:	4f 22       	sts.l	pr,@-r15
    4c06:	41 0b       	jsr	@r1
    4c08:	6c 53       	mov	r5,r12
    4c0a:	51 b2       	mov.l	@(8,r11),r1
    4c0c:	98 4e       	mov.w	4cac <__malloc_trim_r+0xb8>,r8	! fef
    4c0e:	59 11       	mov.l	@(4,r1),r9
    4c10:	e1 fc       	mov	#-4,r1
    4c12:	29 19       	and	r1,r9
    4c14:	38 9c       	add	r9,r8
    4c16:	38 c8       	sub	r12,r8
    4c18:	48 19       	shlr8	r8
    4c1a:	48 09       	shlr2	r8
    4c1c:	48 09       	shlr2	r8
    4c1e:	78 ff       	add	#-1,r8
    4c20:	48 18       	shll8	r8
    4c22:	91 44       	mov.w	4cae <__malloc_trim_r+0xba>,r1	! fff
    4c24:	48 08       	shll2	r8
    4c26:	48 08       	shll2	r8
    4c28:	38 17       	cmp/gt	r1,r8
    4c2a:	8b 07       	bf	4c3c <__malloc_trim_r+0x48>
    4c2c:	dc 22       	mov.l	4cb8 <__malloc_trim_r+0xc4>,r12	! 6550 <__sbrk_r>
    4c2e:	64 a3       	mov	r10,r4
    4c30:	4c 0b       	jsr	@r12
    4c32:	e5 00       	mov	#0,r5
    4c34:	51 b2       	mov.l	@(8,r11),r1
    4c36:	31 9c       	add	r9,r1
    4c38:	30 10       	cmp/eq	r1,r0
    4c3a:	89 0b       	bt	4c54 <__malloc_trim_r+0x60>
    4c3c:	d1 1f       	mov.l	4cbc <__malloc_trim_r+0xc8>,r1	! 589c <___malloc_unlock>
    4c3e:	41 0b       	jsr	@r1
    4c40:	64 a3       	mov	r10,r4
    4c42:	e0 00       	mov	#0,r0
    4c44:	4f 26       	lds.l	@r15+,pr
    4c46:	6c f6       	mov.l	@r15+,r12
    4c48:	6b f6       	mov.l	@r15+,r11
    4c4a:	6a f6       	mov.l	@r15+,r10
    4c4c:	69 f6       	mov.l	@r15+,r9
    4c4e:	68 f6       	mov.l	@r15+,r8
    4c50:	00 0b       	rts	
    4c52:	00 09       	nop	
    4c54:	64 a3       	mov	r10,r4
    4c56:	4c 0b       	jsr	@r12
    4c58:	65 8b       	neg	r8,r5
    4c5a:	88 ff       	cmp/eq	#-1,r0
    4c5c:	89 14       	bt	4c88 <__malloc_trim_r+0x94>
    4c5e:	51 b2       	mov.l	@(8,r11),r1
    4c60:	60 93       	mov	r9,r0
    4c62:	d2 17       	mov.l	4cc0 <__malloc_trim_r+0xcc>,r2	! accc <___malloc_current_mallinfo>
    4c64:	30 88       	sub	r8,r0
    4c66:	cb 01       	or	#1,r0
    4c68:	11 01       	mov.l	r0,@(4,r1)
    4c6a:	61 22       	mov.l	@r2,r1
    4c6c:	31 88       	sub	r8,r1
    4c6e:	22 12       	mov.l	r1,@r2
    4c70:	d1 12       	mov.l	4cbc <__malloc_trim_r+0xc8>,r1	! 589c <___malloc_unlock>
    4c72:	41 0b       	jsr	@r1
    4c74:	64 a3       	mov	r10,r4
    4c76:	e0 01       	mov	#1,r0
    4c78:	4f 26       	lds.l	@r15+,pr
    4c7a:	6c f6       	mov.l	@r15+,r12
    4c7c:	6b f6       	mov.l	@r15+,r11
    4c7e:	6a f6       	mov.l	@r15+,r10
    4c80:	69 f6       	mov.l	@r15+,r9
    4c82:	68 f6       	mov.l	@r15+,r8
    4c84:	00 0b       	rts	
    4c86:	00 09       	nop	
    4c88:	64 a3       	mov	r10,r4
    4c8a:	4c 0b       	jsr	@r12
    4c8c:	e5 00       	mov	#0,r5
    4c8e:	51 b2       	mov.l	@(8,r11),r1
    4c90:	62 03       	mov	r0,r2
    4c92:	e3 0f       	mov	#15,r3
    4c94:	32 18       	sub	r1,r2
    4c96:	32 37       	cmp/gt	r3,r2
    4c98:	8b d0       	bf	4c3c <__malloc_trim_r+0x48>
    4c9a:	d3 0a       	mov.l	4cc4 <__malloc_trim_r+0xd0>,r3	! a8ac <___malloc_sbrk_base>
    4c9c:	63 32       	mov.l	@r3,r3
    4c9e:	30 38       	sub	r3,r0
    4ca0:	d3 07       	mov.l	4cc0 <__malloc_trim_r+0xcc>,r3	! accc <___malloc_current_mallinfo>
    4ca2:	23 02       	mov.l	r0,@r3
    4ca4:	60 23       	mov	r2,r0
    4ca6:	cb 01       	or	#1,r0
    4ca8:	af c8       	bra	4c3c <__malloc_trim_r+0x48>
    4caa:	11 01       	mov.l	r0,@(4,r1)
    4cac:	0f ef       	.word 0x0fef
    4cae:	0f ff       	.word 0x0fff
    4cb0:	00 00       	.word 0x0000
    4cb2:	58 98       	mov.l	@(32,r9),r8
    4cb4:	00 00       	.word 0x0000
    4cb6:	a8 b4       	bra	3e22 <__dtoa_r+0x956>
    4cb8:	00 00       	.word 0x0000
    4cba:	65 50       	mov.b	@r5,r5
    4cbc:	00 00       	.word 0x0000
    4cbe:	58 9c       	mov.l	@(48,r9),r8
    4cc0:	00 00       	.word 0x0000
    4cc2:	ac cc       	bra	465e <__dtoa_r+0x1192>
    4cc4:	00 00       	.word 0x0000
    4cc6:	a8 ac       	bra	3e22 <__dtoa_r+0x956>

00004cc8 <__free_r>:
    4cc8:	2f 86       	mov.l	r8,@-r15
    4cca:	25 58       	tst	r5,r5
    4ccc:	2f 96       	mov.l	r9,@-r15
    4cce:	68 53       	mov	r5,r8
    4cd0:	2f a6       	mov.l	r10,@-r15
    4cd2:	6a 43       	mov	r4,r10
    4cd4:	2f b6       	mov.l	r11,@-r15
    4cd6:	4f 22       	sts.l	pr,@-r15
    4cd8:	89 62       	bt	4da0 <__free_r+0xd8>
    4cda:	d1 76       	mov.l	4eb4 <__free_r+0x1ec>,r1	! 5898 <___malloc_lock>
    4cdc:	d9 76       	mov.l	4eb8 <__free_r+0x1f0>,r9	! a8b4 <___malloc_av_>
    4cde:	41 0b       	jsr	@r1
    4ce0:	78 f8       	add	#-8,r8
    4ce2:	50 81       	mov.l	@(4,r8),r0
    4ce4:	e1 fe       	mov	#-2,r1
    4ce6:	62 83       	mov	r8,r2
    4ce8:	21 09       	and	r0,r1
    4cea:	32 1c       	add	r1,r2
    4cec:	53 21       	mov.l	@(4,r2),r3
    4cee:	e7 fc       	mov	#-4,r7
    4cf0:	23 79       	and	r7,r3
    4cf2:	57 92       	mov.l	@(8,r9),r7
    4cf4:	37 20       	cmp/eq	r2,r7
    4cf6:	89 79       	bt	4dec <__free_r+0x124>
    4cf8:	12 31       	mov.l	r3,@(4,r2)
    4cfa:	c8 01       	tst	#1,r0
    4cfc:	e7 00       	mov	#0,r7
    4cfe:	8b 0c       	bf	4d1a <__free_r+0x52>
    4d00:	66 82       	mov.l	@r8,r6
    4d02:	65 93       	mov	r9,r5
    4d04:	75 08       	add	#8,r5
    4d06:	38 68       	sub	r6,r8
    4d08:	31 6c       	add	r6,r1
    4d0a:	56 82       	mov.l	@(8,r8),r6
    4d0c:	36 50       	cmp/eq	r5,r6
    4d0e:	8b 01       	bf	4d14 <__free_r+0x4c>
    4d10:	a0 86       	bra	4e20 <__free_r+0x158>
    4d12:	e7 01       	mov	#1,r7
    4d14:	55 83       	mov.l	@(12,r8),r5
    4d16:	16 53       	mov.l	r5,@(12,r6)
    4d18:	15 62       	mov.l	r6,@(8,r5)
    4d1a:	66 23       	mov	r2,r6
    4d1c:	36 3c       	add	r3,r6
    4d1e:	50 61       	mov.l	@(4,r6),r0
    4d20:	c8 01       	tst	#1,r0
    4d22:	8b 09       	bf	4d38 <__free_r+0x70>
    4d24:	27 78       	tst	r7,r7
    4d26:	31 3c       	add	r3,r1
    4d28:	53 22       	mov.l	@(8,r2),r3
    4d2a:	8b 02       	bf	4d32 <__free_r+0x6a>
    4d2c:	d6 63       	mov.l	4ebc <__free_r+0x1f4>,r6	! a8bc
    4d2e:	33 60       	cmp/eq	r6,r3
    4d30:	89 78       	bt	4e24 <__free_r+0x15c>
    4d32:	52 23       	mov.l	@(12,r2),r2
    4d34:	13 23       	mov.l	r2,@(12,r3)
    4d36:	12 32       	mov.l	r3,@(8,r2)
    4d38:	60 13       	mov	r1,r0
    4d3a:	cb 01       	or	#1,r0
    4d3c:	18 01       	mov.l	r0,@(4,r8)
    4d3e:	60 13       	mov	r1,r0
    4d40:	08 16       	mov.l	r1,@(r0,r8)
    4d42:	27 78       	tst	r7,r7
    4d44:	8b 22       	bf	4d8c <__free_r+0xc4>
    4d46:	92 b0       	mov.w	4eaa <__free_r+0x1e2>,r2	! 1ff
    4d48:	31 26       	cmp/hi	r2,r1
    4d4a:	8b 31       	bf	4db0 <__free_r+0xe8>
    4d4c:	62 13       	mov	r1,r2
    4d4e:	42 19       	shlr8	r2
    4d50:	42 01       	shlr	r2
    4d52:	e3 04       	mov	#4,r3
    4d54:	32 36       	cmp/hi	r3,r2
    4d56:	89 6f       	bt	4e38 <__free_r+0x170>
    4d58:	62 13       	mov	r1,r2
    4d5a:	42 09       	shlr2	r2
    4d5c:	42 09       	shlr2	r2
    4d5e:	42 09       	shlr2	r2
    4d60:	72 38       	add	#56,r2
    4d62:	63 23       	mov	r2,r3
    4d64:	33 3c       	add	r3,r3
    4d66:	43 08       	shll2	r3
    4d68:	33 9c       	add	r9,r3
    4d6a:	59 32       	mov.l	@(8,r3),r9
    4d6c:	e7 fc       	mov	#-4,r7
    4d6e:	db 52       	mov.l	4eb8 <__free_r+0x1f0>,r11	! a8b4 <___malloc_av_>
    4d70:	39 30       	cmp/eq	r3,r9
    4d72:	89 69       	bt	4e48 <__free_r+0x180>
    4d74:	52 91       	mov.l	@(4,r9),r2
    4d76:	22 79       	and	r7,r2
    4d78:	31 22       	cmp/hs	r2,r1
    4d7a:	89 02       	bt	4d82 <__free_r+0xba>
    4d7c:	59 92       	mov.l	@(8,r9),r9
    4d7e:	33 90       	cmp/eq	r9,r3
    4d80:	8b f8       	bf	4d74 <__free_r+0xac>
    4d82:	51 93       	mov.l	@(12,r9),r1
    4d84:	18 13       	mov.l	r1,@(12,r8)
    4d86:	18 92       	mov.l	r9,@(8,r8)
    4d88:	11 82       	mov.l	r8,@(8,r1)
    4d8a:	19 83       	mov.l	r8,@(12,r9)
    4d8c:	d1 4c       	mov.l	4ec0 <__free_r+0x1f8>,r1	! 589c <___malloc_unlock>
    4d8e:	64 a3       	mov	r10,r4
    4d90:	4f 26       	lds.l	@r15+,pr
    4d92:	6b f6       	mov.l	@r15+,r11
    4d94:	6a f6       	mov.l	@r15+,r10
    4d96:	69 f6       	mov.l	@r15+,r9
    4d98:	68 f6       	mov.l	@r15+,r8
    4d9a:	41 2b       	jmp	@r1
    4d9c:	00 09       	nop	
    4d9e:	00 09       	nop	
    4da0:	4f 26       	lds.l	@r15+,pr
    4da2:	6b f6       	mov.l	@r15+,r11
    4da4:	6a f6       	mov.l	@r15+,r10
    4da6:	69 f6       	mov.l	@r15+,r9
    4da8:	68 f6       	mov.l	@r15+,r8
    4daa:	00 0b       	rts	
    4dac:	00 09       	nop	
    4dae:	00 09       	nop	
    4db0:	6b 13       	mov	r1,r11
    4db2:	4b 09       	shlr2	r11
    4db4:	d0 43       	mov.l	4ec4 <__free_r+0x1fc>,r0	! 8514 <___ashlsi3>
    4db6:	4b 01       	shlr	r11
    4db8:	65 b3       	mov	r11,r5
    4dba:	e4 01       	mov	#1,r4
    4dbc:	40 0b       	jsr	@r0
    4dbe:	45 09       	shlr2	r5
    4dc0:	51 91       	mov.l	@(4,r9),r1
    4dc2:	64 a3       	mov	r10,r4
    4dc4:	20 1b       	or	r1,r0
    4dc6:	61 b3       	mov	r11,r1
    4dc8:	41 08       	shll2	r1
    4dca:	31 1c       	add	r1,r1
    4dcc:	31 9c       	add	r9,r1
    4dce:	52 12       	mov.l	@(8,r1),r2
    4dd0:	18 13       	mov.l	r1,@(12,r8)
    4dd2:	18 22       	mov.l	r2,@(8,r8)
    4dd4:	11 82       	mov.l	r8,@(8,r1)
    4dd6:	d1 3a       	mov.l	4ec0 <__free_r+0x1f8>,r1	! 589c <___malloc_unlock>
    4dd8:	19 01       	mov.l	r0,@(4,r9)
    4dda:	12 83       	mov.l	r8,@(12,r2)
    4ddc:	4f 26       	lds.l	@r15+,pr
    4dde:	6b f6       	mov.l	@r15+,r11
    4de0:	6a f6       	mov.l	@r15+,r10
    4de2:	69 f6       	mov.l	@r15+,r9
    4de4:	68 f6       	mov.l	@r15+,r8
    4de6:	41 2b       	jmp	@r1
    4de8:	00 09       	nop	
    4dea:	00 09       	nop	
    4dec:	c8 01       	tst	#1,r0
    4dee:	31 3c       	add	r3,r1
    4df0:	8b 06       	bf	4e00 <__free_r+0x138>
    4df2:	62 82       	mov.l	@r8,r2
    4df4:	38 28       	sub	r2,r8
    4df6:	53 82       	mov.l	@(8,r8),r3
    4df8:	31 2c       	add	r2,r1
    4dfa:	52 83       	mov.l	@(12,r8),r2
    4dfc:	13 23       	mov.l	r2,@(12,r3)
    4dfe:	12 32       	mov.l	r3,@(8,r2)
    4e00:	d2 31       	mov.l	4ec8 <__free_r+0x200>,r2	! a8b0 <___malloc_trim_threshold>
    4e02:	60 13       	mov	r1,r0
    4e04:	cb 01       	or	#1,r0
    4e06:	62 22       	mov.l	@r2,r2
    4e08:	18 01       	mov.l	r0,@(4,r8)
    4e0a:	31 22       	cmp/hs	r2,r1
    4e0c:	19 82       	mov.l	r8,@(8,r9)
    4e0e:	8b bd       	bf	4d8c <__free_r+0xc4>
    4e10:	d1 2e       	mov.l	4ecc <__free_r+0x204>,r1	! acfc <___malloc_top_pad>
    4e12:	64 a3       	mov	r10,r4
    4e14:	d0 2e       	mov.l	4ed0 <__free_r+0x208>,r0	! 4bf4 <__malloc_trim_r>
    4e16:	40 0b       	jsr	@r0
    4e18:	65 12       	mov.l	@r1,r5
    4e1a:	af b7       	bra	4d8c <__free_r+0xc4>
    4e1c:	00 09       	nop	
    4e1e:	00 09       	nop	
    4e20:	af 7c       	bra	4d1c <__free_r+0x54>
    4e22:	66 23       	mov	r2,r6
    4e24:	60 13       	mov	r1,r0
    4e26:	cb 01       	or	#1,r0
    4e28:	19 85       	mov.l	r8,@(20,r9)
    4e2a:	19 84       	mov.l	r8,@(16,r9)
    4e2c:	18 01       	mov.l	r0,@(4,r8)
    4e2e:	60 13       	mov	r1,r0
    4e30:	18 33       	mov.l	r3,@(12,r8)
    4e32:	18 32       	mov.l	r3,@(8,r8)
    4e34:	af aa       	bra	4d8c <__free_r+0xc4>
    4e36:	08 16       	mov.l	r1,@(r0,r8)
    4e38:	e3 14       	mov	#20,r3
    4e3a:	32 36       	cmp/hi	r3,r2
    4e3c:	89 10       	bt	4e60 <__free_r+0x198>
    4e3e:	72 5b       	add	#91,r2
    4e40:	63 23       	mov	r2,r3
    4e42:	af 90       	bra	4d66 <__free_r+0x9e>
    4e44:	33 3c       	add	r3,r3
    4e46:	00 09       	nop	
    4e48:	d0 1e       	mov.l	4ec4 <__free_r+0x1fc>,r0	! 8514 <___ashlsi3>
    4e4a:	65 23       	mov	r2,r5
    4e4c:	45 21       	shar	r5
    4e4e:	e4 01       	mov	#1,r4
    4e50:	40 0b       	jsr	@r0
    4e52:	45 21       	shar	r5
    4e54:	51 b1       	mov.l	@(4,r11),r1
    4e56:	20 1b       	or	r1,r0
    4e58:	1b 01       	mov.l	r0,@(4,r11)
    4e5a:	af 93       	bra	4d84 <__free_r+0xbc>
    4e5c:	61 93       	mov	r9,r1
    4e5e:	00 09       	nop	
    4e60:	e3 54       	mov	#84,r3
    4e62:	32 36       	cmp/hi	r3,r2
    4e64:	89 08       	bt	4e78 <__free_r+0x1b0>
    4e66:	62 13       	mov	r1,r2
    4e68:	42 19       	shlr8	r2
    4e6a:	42 09       	shlr2	r2
    4e6c:	42 09       	shlr2	r2
    4e6e:	72 6e       	add	#110,r2
    4e70:	63 23       	mov	r2,r3
    4e72:	af 78       	bra	4d66 <__free_r+0x9e>
    4e74:	33 3c       	add	r3,r3
    4e76:	00 09       	nop	
    4e78:	93 18       	mov.w	4eac <__free_r+0x1e4>,r3	! 154
    4e7a:	32 36       	cmp/hi	r3,r2
    4e7c:	89 08       	bt	4e90 <__free_r+0x1c8>
    4e7e:	62 13       	mov	r1,r2
    4e80:	42 19       	shlr8	r2
    4e82:	32 2c       	add	r2,r2
    4e84:	42 19       	shlr8	r2
    4e86:	72 77       	add	#119,r2
    4e88:	63 23       	mov	r2,r3
    4e8a:	af 6c       	bra	4d66 <__free_r+0x9e>
    4e8c:	33 3c       	add	r3,r3
    4e8e:	00 09       	nop	
    4e90:	93 0d       	mov.w	4eae <__free_r+0x1e6>,r3	! 554
    4e92:	32 36       	cmp/hi	r3,r2
    4e94:	89 06       	bt	4ea4 <__free_r+0x1dc>
    4e96:	62 13       	mov	r1,r2
    4e98:	42 29       	shlr16	r2
    4e9a:	42 09       	shlr2	r2
    4e9c:	72 7c       	add	#124,r2
    4e9e:	63 23       	mov	r2,r3
    4ea0:	af 61       	bra	4d66 <__free_r+0x9e>
    4ea2:	33 3c       	add	r3,r3
    4ea4:	93 04       	mov.w	4eb0 <__free_r+0x1e8>,r3	! fc
    4ea6:	af 5e       	bra	4d66 <__free_r+0x9e>
    4ea8:	e2 7e       	mov	#126,r2
    4eaa:	01 ff       	.word 0x01ff
    4eac:	01 54       	mov.b	r5,@(r0,r1)
    4eae:	05 54       	mov.b	r5,@(r0,r5)
    4eb0:	00 fc       	mov.b	@(r0,r15),r0
    4eb2:	00 09       	nop	
    4eb4:	00 00       	.word 0x0000
    4eb6:	58 98       	mov.l	@(32,r9),r8
    4eb8:	00 00       	.word 0x0000
    4eba:	a8 b4       	bra	4026 <__dtoa_r+0xb5a>
    4ebc:	00 00       	.word 0x0000
    4ebe:	a8 bc       	bra	403a <__dtoa_r+0xb6e>
    4ec0:	00 00       	.word 0x0000
    4ec2:	58 9c       	mov.l	@(48,r9),r8
    4ec4:	00 00       	.word 0x0000
    4ec6:	85 14       	mov.w	@(8,r1),r0
    4ec8:	00 00       	.word 0x0000
    4eca:	a8 b0       	bra	402e <__dtoa_r+0xb62>
    4ecc:	00 00       	.word 0x0000
    4ece:	ac fc       	bra	48ca <___sflush_r+0xfe>
    4ed0:	00 00       	.word 0x0000
    4ed2:	4b f4       	.word 0x4bf4

00004ed4 <__fwalk>:
    4ed4:	2f 86       	mov.l	r8,@-r15
    4ed6:	2f 96       	mov.l	r9,@-r15
    4ed8:	2f a6       	mov.l	r10,@-r15
    4eda:	6a 53       	mov	r5,r10
    4edc:	2f b6       	mov.l	r11,@-r15
    4ede:	9b 2f       	mov.w	4f40 <__fwalk+0x6c>,r11	! 2e0
    4ee0:	2f c6       	mov.l	r12,@-r15
    4ee2:	3b 4c       	add	r4,r11
    4ee4:	2f d6       	mov.l	r13,@-r15
    4ee6:	2b b8       	tst	r11,r11
    4ee8:	4f 22       	sts.l	pr,@-r15
    4eea:	ed 00       	mov	#0,r13
    4eec:	89 1e       	bt	4f2c <__fwalk+0x58>
    4eee:	ec 01       	mov	#1,r12
    4ef0:	59 b1       	mov.l	@(4,r11),r9
    4ef2:	58 b2       	mov.l	@(8,r11),r8
    4ef4:	79 ff       	add	#-1,r9
    4ef6:	49 11       	cmp/pz	r9
    4ef8:	8b 15       	bf	4f26 <__fwalk+0x52>
    4efa:	00 09       	nop	
    4efc:	61 83       	mov	r8,r1
    4efe:	71 0c       	add	#12,r1
    4f00:	61 11       	mov.w	@r1,r1
    4f02:	21 18       	tst	r1,r1
    4f04:	89 0a       	bt	4f1c <__fwalk+0x48>
    4f06:	61 1d       	extu.w	r1,r1
    4f08:	31 c6       	cmp/hi	r12,r1
    4f0a:	8b 07       	bf	4f1c <__fwalk+0x48>
    4f0c:	61 83       	mov	r8,r1
    4f0e:	71 0e       	add	#14,r1
    4f10:	60 11       	mov.w	@r1,r0
    4f12:	88 ff       	cmp/eq	#-1,r0
    4f14:	89 02       	bt	4f1c <__fwalk+0x48>
    4f16:	4a 0b       	jsr	@r10
    4f18:	64 83       	mov	r8,r4
    4f1a:	2d 0b       	or	r0,r13
    4f1c:	79 ff       	add	#-1,r9
    4f1e:	60 93       	mov	r9,r0
    4f20:	88 ff       	cmp/eq	#-1,r0
    4f22:	78 68       	add	#104,r8
    4f24:	8b ea       	bf	4efc <__fwalk+0x28>
    4f26:	6b b2       	mov.l	@r11,r11
    4f28:	2b b8       	tst	r11,r11
    4f2a:	8b e1       	bf	4ef0 <__fwalk+0x1c>
    4f2c:	60 d3       	mov	r13,r0
    4f2e:	4f 26       	lds.l	@r15+,pr
    4f30:	6d f6       	mov.l	@r15+,r13
    4f32:	6c f6       	mov.l	@r15+,r12
    4f34:	6b f6       	mov.l	@r15+,r11
    4f36:	6a f6       	mov.l	@r15+,r10
    4f38:	69 f6       	mov.l	@r15+,r9
    4f3a:	68 f6       	mov.l	@r15+,r8
    4f3c:	00 0b       	rts	
    4f3e:	00 09       	nop	
    4f40:	02 e0       	.word 0x02e0
    4f42:	00 09       	nop	

00004f44 <__fwalk_reent>:
    4f44:	2f 86       	mov.l	r8,@-r15
    4f46:	2f 96       	mov.l	r9,@-r15
    4f48:	2f a6       	mov.l	r10,@-r15
    4f4a:	6a 43       	mov	r4,r10
    4f4c:	2f b6       	mov.l	r11,@-r15
    4f4e:	6b 53       	mov	r5,r11
    4f50:	2f c6       	mov.l	r12,@-r15
    4f52:	9c 32       	mov.w	4fba <__fwalk_reent+0x76>,r12	! 2e0
    4f54:	2f d6       	mov.l	r13,@-r15
    4f56:	3c 4c       	add	r4,r12
    4f58:	2f e6       	mov.l	r14,@-r15
    4f5a:	2c c8       	tst	r12,r12
    4f5c:	4f 22       	sts.l	pr,@-r15
    4f5e:	ee 00       	mov	#0,r14
    4f60:	89 20       	bt	4fa4 <__fwalk_reent+0x60>
    4f62:	ed 01       	mov	#1,r13
    4f64:	59 c1       	mov.l	@(4,r12),r9
    4f66:	58 c2       	mov.l	@(8,r12),r8
    4f68:	79 ff       	add	#-1,r9
    4f6a:	49 11       	cmp/pz	r9
    4f6c:	8b 17       	bf	4f9e <__fwalk_reent+0x5a>
    4f6e:	00 09       	nop	
    4f70:	61 83       	mov	r8,r1
    4f72:	71 0c       	add	#12,r1
    4f74:	61 11       	mov.w	@r1,r1
    4f76:	21 18       	tst	r1,r1
    4f78:	89 0c       	bt	4f94 <__fwalk_reent+0x50>
    4f7a:	61 1d       	extu.w	r1,r1
    4f7c:	31 d6       	cmp/hi	r13,r1
    4f7e:	8b 09       	bf	4f94 <__fwalk_reent+0x50>
    4f80:	61 83       	mov	r8,r1
    4f82:	71 0e       	add	#14,r1
    4f84:	60 11       	mov.w	@r1,r0
    4f86:	88 ff       	cmp/eq	#-1,r0
    4f88:	89 04       	bt	4f94 <__fwalk_reent+0x50>
    4f8a:	64 a3       	mov	r10,r4
    4f8c:	4b 0b       	jsr	@r11
    4f8e:	65 83       	mov	r8,r5
    4f90:	2e 0b       	or	r0,r14
    4f92:	00 09       	nop	
    4f94:	79 ff       	add	#-1,r9
    4f96:	60 93       	mov	r9,r0
    4f98:	88 ff       	cmp/eq	#-1,r0
    4f9a:	78 68       	add	#104,r8
    4f9c:	8b e8       	bf	4f70 <__fwalk_reent+0x2c>
    4f9e:	6c c2       	mov.l	@r12,r12
    4fa0:	2c c8       	tst	r12,r12
    4fa2:	8b df       	bf	4f64 <__fwalk_reent+0x20>
    4fa4:	60 e3       	mov	r14,r0
    4fa6:	4f 26       	lds.l	@r15+,pr
    4fa8:	6e f6       	mov.l	@r15+,r14
    4faa:	6d f6       	mov.l	@r15+,r13
    4fac:	6c f6       	mov.l	@r15+,r12
    4fae:	6b f6       	mov.l	@r15+,r11
    4fb0:	6a f6       	mov.l	@r15+,r10
    4fb2:	69 f6       	mov.l	@r15+,r9
    4fb4:	68 f6       	mov.l	@r15+,r8
    4fb6:	00 0b       	rts	
    4fb8:	00 09       	nop	
    4fba:	02 e0       	.word 0x02e0

00004fbc <__setlocale_r>:
    4fbc:	2f 86       	mov.l	r8,@-r15
    4fbe:	26 68       	tst	r6,r6
    4fc0:	2f 96       	mov.l	r9,@-r15
    4fc2:	68 63       	mov	r6,r8
    4fc4:	4f 22       	sts.l	pr,@-r15
    4fc6:	89 05       	bt	4fd4 <__setlocale_r+0x18>
    4fc8:	d9 0e       	mov.l	5004 <__setlocale_r+0x48>,r9	! 6680 <_strcmp>
    4fca:	d5 0f       	mov.l	5008 <__setlocale_r+0x4c>,r5	! 9ea8
    4fcc:	49 0b       	jsr	@r9
    4fce:	64 63       	mov	r6,r4
    4fd0:	20 08       	tst	r0,r0
    4fd2:	8b 05       	bf	4fe0 <__setlocale_r+0x24>
    4fd4:	d0 0d       	mov.l	500c <__setlocale_r+0x50>,r0	! 9e30
    4fd6:	4f 26       	lds.l	@r15+,pr
    4fd8:	69 f6       	mov.l	@r15+,r9
    4fda:	68 f6       	mov.l	@r15+,r8
    4fdc:	00 0b       	rts	
    4fde:	00 09       	nop	
    4fe0:	d5 0a       	mov.l	500c <__setlocale_r+0x50>,r5	! 9e30
    4fe2:	49 0b       	jsr	@r9
    4fe4:	64 83       	mov	r8,r4
    4fe6:	20 08       	tst	r0,r0
    4fe8:	89 f4       	bt	4fd4 <__setlocale_r+0x18>
    4fea:	d5 09       	mov.l	5010 <__setlocale_r+0x54>,r5	! 9e54
    4fec:	49 0b       	jsr	@r9
    4fee:	64 83       	mov	r8,r4
    4ff0:	20 08       	tst	r0,r0
    4ff2:	d0 06       	mov.l	500c <__setlocale_r+0x50>,r0	! 9e30
    4ff4:	31 1a       	subc	r1,r1
    4ff6:	20 19       	and	r1,r0
    4ff8:	4f 26       	lds.l	@r15+,pr
    4ffa:	69 f6       	mov.l	@r15+,r9
    4ffc:	68 f6       	mov.l	@r15+,r8
    4ffe:	00 0b       	rts	
    5000:	00 09       	nop	
    5002:	00 09       	nop	
    5004:	00 00       	.word 0x0000
    5006:	66 80       	mov.b	@r8,r6
    5008:	00 00       	.word 0x0000
    500a:	9e a8       	mov.w	515e <___smakebuf_r+0xf2>,r14	! cb01
    500c:	00 00       	.word 0x0000
    500e:	9e 30       	mov.w	5072 <___smakebuf_r+0x6>,r14	! 6953
    5010:	00 00       	.word 0x0000
    5012:	9e 54       	mov.w	50be <___smakebuf_r+0x52>,r14	! c880

00005014 <___locale_charset>:
    5014:	d0 01       	mov.l	501c <___locale_charset+0x8>,r0	! a834 <_lc_ctype_charset>
    5016:	00 0b       	rts	
    5018:	00 09       	nop	
    501a:	00 09       	nop	
    501c:	00 00       	.word 0x0000
    501e:	a8 34       	bra	408a <__dtoa_r+0xbbe>

00005020 <___locale_mb_cur_max>:
    5020:	d1 01       	mov.l	5028 <___locale_mb_cur_max+0x8>,r1	! a830 <___mb_cur_max>
    5022:	00 0b       	rts	
    5024:	60 12       	mov.l	@r1,r0
    5026:	00 09       	nop	
    5028:	00 00       	.word 0x0000
    502a:	a8 30       	bra	408e <__dtoa_r+0xbc2>

0000502c <___locale_msgcharset>:
    502c:	d0 01       	mov.l	5034 <___locale_msgcharset+0x8>,r0	! a854 <_lc_message_charset>
    502e:	00 0b       	rts	
    5030:	00 09       	nop	
    5032:	00 09       	nop	
    5034:	00 00       	.word 0x0000
    5036:	a8 54       	bra	40e2 <__dtoa_r+0xc16>

00005038 <___locale_cjk_lang>:
    5038:	00 0b       	rts	
    503a:	e0 00       	mov	#0,r0

0000503c <__localeconv_r>:
    503c:	d0 01       	mov.l	5044 <__localeconv_r+0x8>,r0	! a874 <_lconv>
    503e:	00 0b       	rts	
    5040:	00 09       	nop	
    5042:	00 09       	nop	
    5044:	00 00       	.word 0x0000
    5046:	a8 74       	bra	4132 <__dtoa_r+0xc66>

00005048 <_setlocale>:
    5048:	d2 03       	mov.l	5058 <_setlocale+0x10>,r2	! a408 <__impure_ptr>
    504a:	61 43       	mov	r4,r1
    504c:	d0 03       	mov.l	505c <_setlocale+0x14>,r0	! 4fbc <__setlocale_r>
    504e:	66 53       	mov	r5,r6
    5050:	64 22       	mov.l	@r2,r4
    5052:	40 2b       	jmp	@r0
    5054:	65 13       	mov	r1,r5
    5056:	00 09       	nop	
    5058:	00 00       	.word 0x0000
    505a:	a4 08       	bra	586e <L_odddst+0x8>
    505c:	00 00       	.word 0x0000
    505e:	4f bc       	.word 0x4fbc

00005060 <_localeconv>:
    5060:	d0 01       	mov.l	5068 <_localeconv+0x8>,r0	! a874 <_lconv>
    5062:	00 0b       	rts	
    5064:	00 09       	nop	
    5066:	00 09       	nop	
    5068:	00 00       	.word 0x0000
    506a:	a8 74       	bra	4156 <__dtoa_r+0xc8a>

0000506c <___smakebuf_r>:
    506c:	2f 86       	mov.l	r8,@-r15
    506e:	68 53       	mov	r5,r8
    5070:	2f 96       	mov.l	r9,@-r15
    5072:	69 53       	mov	r5,r9
    5074:	2f a6       	mov.l	r10,@-r15
    5076:	79 0c       	add	#12,r9
    5078:	2f b6       	mov.l	r11,@-r15
    507a:	6a 43       	mov	r4,r10
    507c:	2f c6       	mov.l	r12,@-r15
    507e:	2f d6       	mov.l	r13,@-r15
    5080:	4f 22       	sts.l	pr,@-r15
    5082:	60 91       	mov.w	@r9,r0
    5084:	7f c4       	add	#-60,r15
    5086:	c8 02       	tst	#2,r0
    5088:	8b 42       	bf	5110 <___smakebuf_r+0xa4>
    508a:	6c 53       	mov	r5,r12
    508c:	7c 0e       	add	#14,r12
    508e:	65 c1       	mov.w	@r12,r5
    5090:	45 11       	cmp/pz	r5
    5092:	8b 14       	bf	50be <___smakebuf_r+0x52>
    5094:	d0 36       	mov.l	5170 <___smakebuf_r+0x104>,r0	! 788c <__fstat_r>
    5096:	40 0b       	jsr	@r0
    5098:	66 f3       	mov	r15,r6
    509a:	40 11       	cmp/pz	r0
    509c:	8b 0e       	bf	50bc <___smakebuf_r+0x50>
    509e:	d2 35       	mov.l	5174 <___smakebuf_r+0x108>,r2	! f000
    50a0:	51 f1       	mov.l	@(4,r15),r1
    50a2:	21 29       	and	r2,r1
    50a4:	92 5e       	mov.w	5164 <___smakebuf_r+0xf8>,r2	! 2000
    50a6:	31 20       	cmp/eq	r2,r1
    50a8:	d2 33       	mov.l	5178 <___smakebuf_r+0x10c>,r2	! 8000
    50aa:	0d 29       	movt	r13
    50ac:	31 20       	cmp/eq	r2,r1
    50ae:	89 43       	bt	5138 <___smakebuf_r+0xcc>
    50b0:	91 59       	mov.w	5166 <___smakebuf_r+0xfa>,r1	! 800
    50b2:	62 91       	mov.w	@r9,r2
    50b4:	21 2b       	or	r2,r1
    50b6:	9b 57       	mov.w	5168 <___smakebuf_r+0xfc>,r11	! 400
    50b8:	a0 08       	bra	50cc <___smakebuf_r+0x60>
    50ba:	29 11       	mov.w	r1,@r9
    50bc:	60 91       	mov.w	@r9,r0
    50be:	c8 80       	tst	#-128,r0
    50c0:	eb 40       	mov	#64,r11
    50c2:	89 35       	bt	5130 <___smakebuf_r+0xc4>
    50c4:	91 4f       	mov.w	5166 <___smakebuf_r+0xfa>,r1	! 800
    50c6:	ed 00       	mov	#0,r13
    50c8:	21 0b       	or	r0,r1
    50ca:	29 11       	mov.w	r1,@r9
    50cc:	d0 2b       	mov.l	517c <___smakebuf_r+0x110>,r0	! 518c <__malloc_r>
    50ce:	64 a3       	mov	r10,r4
    50d0:	40 0b       	jsr	@r0
    50d2:	65 b3       	mov	r11,r5
    50d4:	20 08       	tst	r0,r0
    50d6:	89 15       	bt	5104 <___smakebuf_r+0x98>
    50d8:	d1 29       	mov.l	5180 <___smakebuf_r+0x114>,r1	! 49c0 <__cleanup_r>
    50da:	2d d8       	tst	r13,r13
    50dc:	92 45       	mov.w	516a <___smakebuf_r+0xfe>,r2	! 80
    50de:	1a 1f       	mov.l	r1,@(60,r10)
    50e0:	61 91       	mov.w	@r9,r1
    50e2:	21 2b       	or	r2,r1
    50e4:	29 11       	mov.w	r1,@r9
    50e6:	28 02       	mov.l	r0,@r8
    50e8:	18 04       	mov.l	r0,@(16,r8)
    50ea:	18 b5       	mov.l	r11,@(20,r8)
    50ec:	8b 30       	bf	5150 <___smakebuf_r+0xe4>
    50ee:	7f 3c       	add	#60,r15
    50f0:	4f 26       	lds.l	@r15+,pr
    50f2:	6d f6       	mov.l	@r15+,r13
    50f4:	6c f6       	mov.l	@r15+,r12
    50f6:	6b f6       	mov.l	@r15+,r11
    50f8:	6a f6       	mov.l	@r15+,r10
    50fa:	69 f6       	mov.l	@r15+,r9
    50fc:	68 f6       	mov.l	@r15+,r8
    50fe:	00 0b       	rts	
    5100:	00 09       	nop	
    5102:	00 09       	nop	
    5104:	91 32       	mov.w	516c <___smakebuf_r+0x100>,r1	! 200
    5106:	60 91       	mov.w	@r9,r0
    5108:	20 18       	tst	r1,r0
    510a:	8b f0       	bf	50ee <___smakebuf_r+0x82>
    510c:	cb 02       	or	#2,r0
    510e:	29 01       	mov.w	r0,@r9
    5110:	61 83       	mov	r8,r1
    5112:	71 43       	add	#67,r1
    5114:	28 12       	mov.l	r1,@r8
    5116:	18 14       	mov.l	r1,@(16,r8)
    5118:	e1 01       	mov	#1,r1
    511a:	18 15       	mov.l	r1,@(20,r8)
    511c:	7f 3c       	add	#60,r15
    511e:	4f 26       	lds.l	@r15+,pr
    5120:	6d f6       	mov.l	@r15+,r13
    5122:	6c f6       	mov.l	@r15+,r12
    5124:	6b f6       	mov.l	@r15+,r11
    5126:	6a f6       	mov.l	@r15+,r10
    5128:	69 f6       	mov.l	@r15+,r9
    512a:	68 f6       	mov.l	@r15+,r8
    512c:	00 0b       	rts	
    512e:	00 09       	nop	
    5130:	9b 1a       	mov.w	5168 <___smakebuf_r+0xfc>,r11	! 400
    5132:	af c7       	bra	50c4 <___smakebuf_r+0x58>
    5134:	00 09       	nop	
    5136:	00 09       	nop	
    5138:	52 8a       	mov.l	@(40,r8),r2
    513a:	d1 12       	mov.l	5184 <___smakebuf_r+0x118>,r1	! 662c <___sseek>
    513c:	32 10       	cmp/eq	r1,r2
    513e:	8b b7       	bf	50b0 <___smakebuf_r+0x44>
    5140:	9b 12       	mov.w	5168 <___smakebuf_r+0xfc>,r11	! 400
    5142:	61 91       	mov.w	@r9,r1
    5144:	21 bb       	or	r11,r1
    5146:	29 11       	mov.w	r1,@r9
    5148:	61 83       	mov	r8,r1
    514a:	71 40       	add	#64,r1
    514c:	af be       	bra	50cc <___smakebuf_r+0x60>
    514e:	11 b3       	mov.l	r11,@(12,r1)
    5150:	d0 0d       	mov.l	5188 <___smakebuf_r+0x11c>,r0	! 7c18 <__isatty_r>
    5152:	64 a3       	mov	r10,r4
    5154:	40 0b       	jsr	@r0
    5156:	65 c1       	mov.w	@r12,r5
    5158:	20 08       	tst	r0,r0
    515a:	89 c8       	bt	50ee <___smakebuf_r+0x82>
    515c:	60 91       	mov.w	@r9,r0
    515e:	cb 01       	or	#1,r0
    5160:	af c5       	bra	50ee <___smakebuf_r+0x82>
    5162:	29 01       	mov.w	r0,@r9
    5164:	20 00       	mov.b	r0,@r0
    5166:	08 00       	.word 0x0800
    5168:	04 00       	.word 0x0400
    516a:	00 80       	.word 0x0080
    516c:	02 00       	.word 0x0200
    516e:	00 09       	nop	
    5170:	00 00       	.word 0x0000
    5172:	78 8c       	add	#-116,r8
    5174:	00 00       	.word 0x0000
    5176:	f0 00       	.word 0xf000
    5178:	00 00       	.word 0x0000
    517a:	80 00       	mov.b	r0,@(0,r0)
    517c:	00 00       	.word 0x0000
    517e:	51 8c       	mov.l	@(48,r8),r1
    5180:	00 00       	.word 0x0000
    5182:	49 c0       	.word 0x49c0
    5184:	00 00       	.word 0x0000
    5186:	66 2c       	extu.b	r2,r6
    5188:	00 00       	.word 0x0000
    518a:	7c 18       	add	#24,r12

0000518c <__malloc_r>:
    518c:	2f 86       	mov.l	r8,@-r15
    518e:	61 53       	mov	r5,r1
    5190:	2f 96       	mov.l	r9,@-r15
    5192:	71 0b       	add	#11,r1
    5194:	2f a6       	mov.l	r10,@-r15
    5196:	e2 16       	mov	#22,r2
    5198:	2f b6       	mov.l	r11,@-r15
    519a:	31 26       	cmp/hi	r2,r1
    519c:	2f c6       	mov.l	r12,@-r15
    519e:	6a 43       	mov	r4,r10
    51a0:	2f d6       	mov.l	r13,@-r15
    51a2:	2f e6       	mov.l	r14,@-r15
    51a4:	4f 22       	sts.l	pr,@-r15
    51a6:	7f f4       	add	#-12,r15
    51a8:	8b 36       	bf	5218 <__malloc_r+0x8c>
    51aa:	e9 f8       	mov	#-8,r9
    51ac:	29 19       	and	r1,r9
    51ae:	61 93       	mov	r9,r1
    51b0:	41 04       	rotl	r1
    51b2:	01 29       	movt	r1
    51b4:	35 96       	cmp/hi	r9,r5
    51b6:	89 33       	bt	5220 <__malloc_r+0x94>
    51b8:	21 18       	tst	r1,r1
    51ba:	8b 31       	bf	5220 <__malloc_r+0x94>
    51bc:	d1 65       	mov.l	5354 <__malloc_r+0x1c8>,r1	! 5898 <___malloc_lock>
    51be:	64 a3       	mov	r10,r4
    51c0:	41 0b       	jsr	@r1
    51c2:	6d 93       	mov	r9,r13
    51c4:	91 c3       	mov.w	534e <__malloc_r+0x1c2>,r1	! 1f7
    51c6:	39 16       	cmp/hi	r1,r9
    51c8:	89 38       	bt	523c <__malloc_r+0xb0>
    51ca:	db 63       	mov.l	5358 <__malloc_r+0x1cc>,r11	! a8b4 <___malloc_av_>
    51cc:	4d 09       	shlr2	r13
    51ce:	4d 01       	shlr	r13
    51d0:	61 b3       	mov	r11,r1
    51d2:	31 9c       	add	r9,r1
    51d4:	58 13       	mov.l	@(12,r1),r8
    51d6:	38 10       	cmp/eq	r1,r8
    51d8:	8b 02       	bf	51e0 <__malloc_r+0x54>
    51da:	a2 05       	bra	55e8 <__malloc_r+0x45c>
    51dc:	61 83       	mov	r8,r1
    51de:	00 09       	nop	
    51e0:	51 81       	mov.l	@(4,r8),r1
    51e2:	e2 fc       	mov	#-4,r2
    51e4:	21 29       	and	r2,r1
    51e6:	52 83       	mov.l	@(12,r8),r2
    51e8:	31 8c       	add	r8,r1
    51ea:	53 82       	mov.l	@(8,r8),r3
    51ec:	50 11       	mov.l	@(4,r1),r0
    51ee:	13 23       	mov.l	r2,@(12,r3)
    51f0:	cb 01       	or	#1,r0
    51f2:	12 32       	mov.l	r3,@(8,r2)
    51f4:	11 01       	mov.l	r0,@(4,r1)
    51f6:	d1 59       	mov.l	535c <__malloc_r+0x1d0>,r1	! 589c <___malloc_unlock>
    51f8:	41 0b       	jsr	@r1
    51fa:	64 a3       	mov	r10,r4
    51fc:	60 83       	mov	r8,r0
    51fe:	70 08       	add	#8,r0
    5200:	7f 0c       	add	#12,r15
    5202:	4f 26       	lds.l	@r15+,pr
    5204:	6e f6       	mov.l	@r15+,r14
    5206:	6d f6       	mov.l	@r15+,r13
    5208:	6c f6       	mov.l	@r15+,r12
    520a:	6b f6       	mov.l	@r15+,r11
    520c:	6a f6       	mov.l	@r15+,r10
    520e:	69 f6       	mov.l	@r15+,r9
    5210:	68 f6       	mov.l	@r15+,r8
    5212:	00 0b       	rts	
    5214:	00 09       	nop	
    5216:	00 09       	nop	
    5218:	e9 10       	mov	#16,r9
    521a:	35 96       	cmp/hi	r9,r5
    521c:	e1 00       	mov	#0,r1
    521e:	8b cb       	bf	51b8 <__malloc_r+0x2c>
    5220:	e1 0c       	mov	#12,r1
    5222:	e0 00       	mov	#0,r0
    5224:	2a 12       	mov.l	r1,@r10
    5226:	7f 0c       	add	#12,r15
    5228:	4f 26       	lds.l	@r15+,pr
    522a:	6e f6       	mov.l	@r15+,r14
    522c:	6d f6       	mov.l	@r15+,r13
    522e:	6c f6       	mov.l	@r15+,r12
    5230:	6b f6       	mov.l	@r15+,r11
    5232:	6a f6       	mov.l	@r15+,r10
    5234:	69 f6       	mov.l	@r15+,r9
    5236:	68 f6       	mov.l	@r15+,r8
    5238:	00 0b       	rts	
    523a:	00 09       	nop	
    523c:	4d 19       	shlr8	r13
    523e:	4d 01       	shlr	r13
    5240:	2d d8       	tst	r13,r13
    5242:	8b 01       	bf	5248 <__malloc_r+0xbc>
    5244:	a0 ae       	bra	53a4 <__malloc_r+0x218>
    5246:	6d 93       	mov	r9,r13
    5248:	e1 04       	mov	#4,r1
    524a:	3d 16       	cmp/hi	r1,r13
    524c:	8b 02       	bf	5254 <__malloc_r+0xc8>
    524e:	a1 6f       	bra	5530 <__malloc_r+0x3a4>
    5250:	e1 14       	mov	#20,r1
    5252:	00 09       	nop	
    5254:	6d 93       	mov	r9,r13
    5256:	4d 09       	shlr2	r13
    5258:	4d 09       	shlr2	r13
    525a:	4d 09       	shlr2	r13
    525c:	7d 38       	add	#56,r13
    525e:	63 d3       	mov	r13,r3
    5260:	33 3c       	add	r3,r3
    5262:	db 3d       	mov.l	5358 <__malloc_r+0x1cc>,r11	! a8b4 <___malloc_av_>
    5264:	43 08       	shll2	r3
    5266:	33 bc       	add	r11,r3
    5268:	58 33       	mov.l	@(12,r3),r8
    526a:	33 80       	cmp/eq	r8,r3
    526c:	89 1b       	bt	52a6 <__malloc_r+0x11a>
    526e:	51 81       	mov.l	@(4,r8),r1
    5270:	e2 fc       	mov	#-4,r2
    5272:	e7 0f       	mov	#15,r7
    5274:	21 29       	and	r2,r1
    5276:	62 13       	mov	r1,r2
    5278:	32 98       	sub	r9,r2
    527a:	32 77       	cmp/gt	r7,r2
    527c:	89 0c       	bt	5298 <__malloc_r+0x10c>
    527e:	42 11       	cmp/pz	r2
    5280:	e6 fc       	mov	#-4,r6
    5282:	e7 0f       	mov	#15,r7
    5284:	8b 0c       	bf	52a0 <__malloc_r+0x114>
    5286:	af af       	bra	51e8 <__malloc_r+0x5c>
    5288:	52 83       	mov.l	@(12,r8),r2
    528a:	00 09       	nop	
    528c:	51 81       	mov.l	@(4,r8),r1
    528e:	21 69       	and	r6,r1
    5290:	62 13       	mov	r1,r2
    5292:	32 98       	sub	r9,r2
    5294:	32 77       	cmp/gt	r7,r2
    5296:	8b 01       	bf	529c <__malloc_r+0x110>
    5298:	a0 8a       	bra	53b0 <__malloc_r+0x224>
    529a:	7d ff       	add	#-1,r13
    529c:	42 11       	cmp/pz	r2
    529e:	89 a2       	bt	51e6 <__malloc_r+0x5a>
    52a0:	58 83       	mov.l	@(12,r8),r8
    52a2:	33 80       	cmp/eq	r8,r3
    52a4:	8b f2       	bf	528c <__malloc_r+0x100>
    52a6:	7d 01       	add	#1,r13
    52a8:	dc 2b       	mov.l	5358 <__malloc_r+0x1cc>,r12	! a8b4 <___malloc_av_>
    52aa:	58 b4       	mov.l	@(16,r11),r8
    52ac:	6e c3       	mov	r12,r14
    52ae:	7e 08       	add	#8,r14
    52b0:	38 e0       	cmp/eq	r14,r8
    52b2:	8b 01       	bf	52b8 <__malloc_r+0x12c>
    52b4:	a1 94       	bra	55e0 <__malloc_r+0x454>
    52b6:	51 c1       	mov.l	@(4,r12),r1
    52b8:	52 81       	mov.l	@(4,r8),r2
    52ba:	e1 fc       	mov	#-4,r1
    52bc:	22 19       	and	r1,r2
    52be:	60 23       	mov	r2,r0
    52c0:	30 98       	sub	r9,r0
    52c2:	e1 0f       	mov	#15,r1
    52c4:	30 17       	cmp/gt	r1,r0
    52c6:	8b 01       	bf	52cc <__malloc_r+0x140>
    52c8:	a1 7e       	bra	55c8 <__malloc_r+0x43c>
    52ca:	e2 01       	mov	#1,r2
    52cc:	1c e5       	mov.l	r14,@(20,r12)
    52ce:	40 11       	cmp/pz	r0
    52d0:	1c e4       	mov.l	r14,@(16,r12)
    52d2:	89 6f       	bt	53b4 <__malloc_r+0x228>
    52d4:	91 3c       	mov.w	5350 <__malloc_r+0x1c4>,r1	! 1ff
    52d6:	32 16       	cmp/hi	r1,r2
    52d8:	8b 02       	bf	52e0 <__malloc_r+0x154>
    52da:	a1 39       	bra	5550 <__malloc_r+0x3c4>
    52dc:	61 23       	mov	r2,r1
    52de:	00 09       	nop	
    52e0:	d3 1f       	mov.l	5360 <__malloc_r+0x1d4>,r3	! 8514 <___ashlsi3>
    52e2:	42 09       	shlr2	r2
    52e4:	42 01       	shlr	r2
    52e6:	65 23       	mov	r2,r5
    52e8:	1f 22       	mov.l	r2,@(8,r15)
    52ea:	e4 01       	mov	#1,r4
    52ec:	2f 32       	mov.l	r3,@r15
    52ee:	43 0b       	jsr	@r3
    52f0:	45 09       	shlr2	r5
    52f2:	52 f2       	mov.l	@(8,r15),r2
    52f4:	61 03       	mov	r0,r1
    52f6:	57 c1       	mov.l	@(4,r12),r7
    52f8:	42 08       	shll2	r2
    52fa:	32 2c       	add	r2,r2
    52fc:	32 cc       	add	r12,r2
    52fe:	21 7b       	or	r7,r1
    5300:	57 22       	mov.l	@(8,r2),r7
    5302:	18 23       	mov.l	r2,@(12,r8)
    5304:	18 72       	mov.l	r7,@(8,r8)
    5306:	63 f2       	mov.l	@r15,r3
    5308:	1c 11       	mov.l	r1,@(4,r12)
    530a:	12 82       	mov.l	r8,@(8,r2)
    530c:	17 83       	mov.l	r8,@(12,r7)
    530e:	65 d3       	mov	r13,r5
    5310:	45 21       	shar	r5
    5312:	45 21       	shar	r5
    5314:	1f 12       	mov.l	r1,@(8,r15)
    5316:	43 0b       	jsr	@r3
    5318:	e4 01       	mov	#1,r4
    531a:	51 f2       	mov.l	@(8,r15),r1
    531c:	63 03       	mov	r0,r3
    531e:	30 16       	cmp/hi	r1,r0
    5320:	89 66       	bt	53f0 <__malloc_r+0x264>
    5322:	21 08       	tst	r0,r1
    5324:	8b 06       	bf	5334 <__malloc_r+0x1a8>
    5326:	e2 fc       	mov	#-4,r2
    5328:	2d 29       	and	r2,r13
    532a:	00 09       	nop	
    532c:	33 3c       	add	r3,r3
    532e:	21 38       	tst	r3,r1
    5330:	7d 04       	add	#4,r13
    5332:	89 fb       	bt	532c <__malloc_r+0x1a0>
    5334:	e5 fc       	mov	#-4,r5
    5336:	e6 0f       	mov	#15,r6
    5338:	64 d3       	mov	r13,r4
    533a:	44 08       	shll2	r4
    533c:	34 4c       	add	r4,r4
    533e:	34 bc       	add	r11,r4
    5340:	67 43       	mov	r4,r7
    5342:	6c d3       	mov	r13,r12
    5344:	58 73       	mov.l	@(12,r7),r8
    5346:	37 80       	cmp/eq	r8,r7
    5348:	8b 13       	bf	5372 <__malloc_r+0x1e6>
    534a:	a0 3a       	bra	53c2 <__malloc_r+0x236>
    534c:	7c 01       	add	#1,r12
    534e:	01 f7       	.word 0x01f7
    5350:	01 ff       	.word 0x01ff
    5352:	00 09       	nop	
    5354:	00 00       	.word 0x0000
    5356:	58 98       	mov.l	@(32,r9),r8
    5358:	00 00       	.word 0x0000
    535a:	a8 b4       	bra	44c6 <__dtoa_r+0xffa>
    535c:	00 00       	.word 0x0000
    535e:	58 9c       	mov.l	@(48,r9),r8
    5360:	00 00       	.word 0x0000
    5362:	85 14       	mov.w	@(8,r1),r0
    5364:	42 11       	cmp/pz	r2
    5366:	8b 01       	bf	536c <__malloc_r+0x1e0>
    5368:	a1 48       	bra	55fc <__malloc_r+0x470>
    536a:	31 8c       	add	r8,r1
    536c:	58 83       	mov.l	@(12,r8),r8
    536e:	37 80       	cmp/eq	r8,r7
    5370:	89 26       	bt	53c0 <__malloc_r+0x234>
    5372:	51 81       	mov.l	@(4,r8),r1
    5374:	21 59       	and	r5,r1
    5376:	62 13       	mov	r1,r2
    5378:	32 98       	sub	r9,r2
    537a:	32 67       	cmp/gt	r6,r2
    537c:	8b f2       	bf	5364 <__malloc_r+0x1d8>
    537e:	53 83       	mov.l	@(12,r8),r3
    5380:	60 93       	mov	r9,r0
    5382:	57 82       	mov.l	@(8,r8),r7
    5384:	cb 01       	or	#1,r0
    5386:	18 01       	mov.l	r0,@(4,r8)
    5388:	61 83       	mov	r8,r1
    538a:	60 23       	mov	r2,r0
    538c:	31 9c       	add	r9,r1
    538e:	17 33       	mov.l	r3,@(12,r7)
    5390:	cb 01       	or	#1,r0
    5392:	13 72       	mov.l	r7,@(8,r3)
    5394:	1b 15       	mov.l	r1,@(20,r11)
    5396:	1b 14       	mov.l	r1,@(16,r11)
    5398:	11 01       	mov.l	r0,@(4,r1)
    539a:	60 23       	mov	r2,r0
    539c:	11 e3       	mov.l	r14,@(12,r1)
    539e:	11 e2       	mov.l	r14,@(8,r1)
    53a0:	af 29       	bra	51f6 <__malloc_r+0x6a>
    53a2:	01 26       	mov.l	r2,@(r0,r1)
    53a4:	4d 09       	shlr2	r13
    53a6:	4d 01       	shlr	r13
    53a8:	63 d3       	mov	r13,r3
    53aa:	af 5a       	bra	5262 <__malloc_r+0xd6>
    53ac:	33 3c       	add	r3,r3
    53ae:	00 09       	nop	
    53b0:	af 7a       	bra	52a8 <__malloc_r+0x11c>
    53b2:	7d 01       	add	#1,r13
    53b4:	32 8c       	add	r8,r2
    53b6:	50 21       	mov.l	@(4,r2),r0
    53b8:	cb 01       	or	#1,r0
    53ba:	af 1c       	bra	51f6 <__malloc_r+0x6a>
    53bc:	12 01       	mov.l	r0,@(4,r2)
    53be:	00 09       	nop	
    53c0:	7c 01       	add	#1,r12
    53c2:	60 c3       	mov	r12,r0
    53c4:	c8 03       	tst	#3,r0
    53c6:	77 08       	add	#8,r7
    53c8:	8b bc       	bf	5344 <__malloc_r+0x1b8>
    53ca:	60 d3       	mov	r13,r0
    53cc:	c8 03       	tst	#3,r0
    53ce:	8b 01       	bf	53d4 <__malloc_r+0x248>
    53d0:	a1 a6       	bra	5720 <__malloc_r+0x594>
    53d2:	52 b1       	mov.l	@(4,r11),r2
    53d4:	61 43       	mov	r4,r1
    53d6:	64 42       	mov.l	@r4,r4
    53d8:	71 f8       	add	#-8,r1
    53da:	70 ff       	add	#-1,r0
    53dc:	34 10       	cmp/eq	r1,r4
    53de:	89 f5       	bt	53cc <__malloc_r+0x240>
    53e0:	51 b1       	mov.l	@(4,r11),r1
    53e2:	33 3c       	add	r3,r3
    53e4:	33 16       	cmp/hi	r1,r3
    53e6:	89 03       	bt	53f0 <__malloc_r+0x264>
    53e8:	23 38       	tst	r3,r3
    53ea:	89 01       	bt	53f0 <__malloc_r+0x264>
    53ec:	a1 27       	bra	563e <__malloc_r+0x4b2>
    53ee:	21 38       	tst	r3,r1
    53f0:	58 b2       	mov.l	@(8,r11),r8
    53f2:	e1 fc       	mov	#-4,r1
    53f4:	5c 81       	mov.l	@(4,r8),r12
    53f6:	2c 19       	and	r1,r12
    53f8:	39 c6       	cmp/hi	r12,r9
    53fa:	89 07       	bt	540c <__malloc_r+0x280>
    53fc:	60 c3       	mov	r12,r0
    53fe:	30 98       	sub	r9,r0
    5400:	e1 0f       	mov	#15,r1
    5402:	30 17       	cmp/gt	r1,r0
    5404:	8b 02       	bf	540c <__malloc_r+0x280>
    5406:	a0 8c       	bra	5522 <__malloc_r+0x396>
    5408:	e1 01       	mov	#1,r1
    540a:	00 09       	nop	
    540c:	d7 65       	mov.l	55a4 <__malloc_r+0x418>,r7	! a8ac <___malloc_sbrk_base>
    540e:	63 83       	mov	r8,r3
    5410:	d1 65       	mov.l	55a8 <__malloc_r+0x41c>,r1	! acfc <___malloc_top_pad>
    5412:	33 cc       	add	r12,r3
    5414:	60 72       	mov.l	@r7,r0
    5416:	61 12       	mov.l	@r1,r1
    5418:	88 ff       	cmp/eq	#-1,r0
    541a:	31 9c       	add	r9,r1
    541c:	8b 02       	bf	5424 <__malloc_r+0x298>
    541e:	a1 3f       	bra	56a0 <__malloc_r+0x514>
    5420:	6e 13       	mov	r1,r14
    5422:	00 09       	nop	
    5424:	9e b9       	mov.w	559a <__malloc_r+0x40e>,r14	! 100f
    5426:	3e 1c       	add	r1,r14
    5428:	91 b8       	mov.w	559c <__malloc_r+0x410>,r1	! f000
    542a:	2e 19       	and	r1,r14
    542c:	d6 5f       	mov.l	55ac <__malloc_r+0x420>,r6	! 6550 <__sbrk_r>
    542e:	64 a3       	mov	r10,r4
    5430:	2f 32       	mov.l	r3,@r15
    5432:	65 e3       	mov	r14,r5
    5434:	1f 61       	mov.l	r6,@(4,r15)
    5436:	46 0b       	jsr	@r6
    5438:	1f 72       	mov.l	r7,@(8,r15)
    543a:	88 ff       	cmp/eq	#-1,r0
    543c:	6d 03       	mov	r0,r13
    543e:	63 f2       	mov.l	@r15,r3
    5440:	56 f1       	mov.l	@(4,r15),r6
    5442:	57 f2       	mov.l	@(8,r15),r7
    5444:	89 5c       	bt	5500 <__malloc_r+0x374>
    5446:	33 06       	cmp/hi	r0,r3
    5448:	8b 02       	bf	5450 <__malloc_r+0x2c4>
    544a:	a0 eb       	bra	5624 <__malloc_r+0x498>
    544c:	38 b0       	cmp/eq	r11,r8
    544e:	00 09       	nop	
    5450:	d2 57       	mov.l	55b0 <__malloc_r+0x424>,r2	! accc <___malloc_current_mallinfo>
    5452:	33 d0       	cmp/eq	r13,r3
    5454:	61 22       	mov.l	@r2,r1
    5456:	31 ec       	add	r14,r1
    5458:	22 12       	mov.l	r1,@r2
    545a:	8b 01       	bf	5460 <__malloc_r+0x2d4>
    545c:	a1 2c       	bra	56b8 <__malloc_r+0x52c>
    545e:	00 09       	nop	
    5460:	60 72       	mov.l	@r7,r0
    5462:	88 ff       	cmp/eq	#-1,r0
    5464:	8b 02       	bf	546c <__malloc_r+0x2e0>
    5466:	a1 37       	bra	56d8 <__malloc_r+0x54c>
    5468:	00 09       	nop	
    546a:	00 09       	nop	
    546c:	67 d3       	mov	r13,r7
    546e:	37 38       	sub	r3,r7
    5470:	63 73       	mov	r7,r3
    5472:	33 1c       	add	r1,r3
    5474:	22 32       	mov.l	r3,@r2
    5476:	60 d3       	mov	r13,r0
    5478:	c9 07       	and	#7,r0
    547a:	20 08       	tst	r0,r0
    547c:	8b 02       	bf	5484 <__malloc_r+0x2f8>
    547e:	a0 ed       	bra	565c <__malloc_r+0x4d0>
    5480:	00 09       	nop	
    5482:	00 09       	nop	
    5484:	93 8b       	mov.w	559e <__malloc_r+0x412>,r3	! 1008
    5486:	3d 08       	sub	r0,r13
    5488:	7d 08       	add	#8,r13
    548a:	33 08       	sub	r0,r3
    548c:	97 88       	mov.w	55a0 <__malloc_r+0x414>,r7	! fff
    548e:	61 d3       	mov	r13,r1
    5490:	31 ec       	add	r14,r1
    5492:	21 79       	and	r7,r1
    5494:	6e 33       	mov	r3,r14
    5496:	3e 18       	sub	r1,r14
    5498:	1f 22       	mov.l	r2,@(8,r15)
    549a:	64 a3       	mov	r10,r4
    549c:	46 0b       	jsr	@r6
    549e:	65 e3       	mov	r14,r5
    54a0:	88 ff       	cmp/eq	#-1,r0
    54a2:	52 f2       	mov.l	@(8,r15),r2
    54a4:	8b 02       	bf	54ac <__malloc_r+0x320>
    54a6:	a1 1b       	bra	56e0 <__malloc_r+0x554>
    54a8:	e0 01       	mov	#1,r0
    54aa:	00 09       	nop	
    54ac:	30 d8       	sub	r13,r0
    54ae:	30 ec       	add	r14,r0
    54b0:	cb 01       	or	#1,r0
    54b2:	61 22       	mov.l	@r2,r1
    54b4:	38 b0       	cmp/eq	r11,r8
    54b6:	1b d2       	mov.l	r13,@(8,r11)
    54b8:	31 ec       	add	r14,r1
    54ba:	22 12       	mov.l	r1,@r2
    54bc:	1d 01       	mov.l	r0,@(4,r13)
    54be:	89 15       	bt	54ec <__malloc_r+0x360>
    54c0:	e2 0f       	mov	#15,r2
    54c2:	3c 26       	cmp/hi	r2,r12
    54c4:	89 02       	bt	54cc <__malloc_r+0x340>
    54c6:	a0 cd       	bra	5664 <__malloc_r+0x4d8>
    54c8:	e1 01       	mov	#1,r1
    54ca:	00 09       	nop	
    54cc:	50 81       	mov.l	@(4,r8),r0
    54ce:	e3 f8       	mov	#-8,r3
    54d0:	7c f4       	add	#-12,r12
    54d2:	2c 39       	and	r3,r12
    54d4:	c9 01       	and	#1,r0
    54d6:	20 cb       	or	r12,r0
    54d8:	63 83       	mov	r8,r3
    54da:	18 01       	mov.l	r0,@(4,r8)
    54dc:	33 cc       	add	r12,r3
    54de:	e7 05       	mov	#5,r7
    54e0:	13 71       	mov.l	r7,@(4,r3)
    54e2:	3c 26       	cmp/hi	r2,r12
    54e4:	13 72       	mov.l	r7,@(8,r3)
    54e6:	8b 01       	bf	54ec <__malloc_r+0x360>
    54e8:	a0 fc       	bra	56e4 <__malloc_r+0x558>
    54ea:	65 83       	mov	r8,r5
    54ec:	d2 31       	mov.l	55b4 <__malloc_r+0x428>,r2	! acf8 <___malloc_max_sbrked_mem>
    54ee:	63 22       	mov.l	@r2,r3
    54f0:	31 36       	cmp/hi	r3,r1
    54f2:	8b 00       	bf	54f6 <__malloc_r+0x36a>
    54f4:	22 12       	mov.l	r1,@r2
    54f6:	d2 30       	mov.l	55b8 <__malloc_r+0x42c>,r2	! acf4 <___malloc_max_total_mem>
    54f8:	63 22       	mov.l	@r2,r3
    54fa:	31 36       	cmp/hi	r3,r1
    54fc:	8b 00       	bf	5500 <__malloc_r+0x374>
    54fe:	22 12       	mov.l	r1,@r2
    5500:	58 b2       	mov.l	@(8,r11),r8
    5502:	e2 fc       	mov	#-4,r2
    5504:	51 81       	mov.l	@(4,r8),r1
    5506:	21 29       	and	r2,r1
    5508:	60 13       	mov	r1,r0
    550a:	39 16       	cmp/hi	r1,r9
    550c:	30 98       	sub	r9,r0
    550e:	89 02       	bt	5516 <__malloc_r+0x38a>
    5510:	e1 0f       	mov	#15,r1
    5512:	30 17       	cmp/gt	r1,r0
    5514:	89 04       	bt	5520 <__malloc_r+0x394>
    5516:	d1 29       	mov.l	55bc <__malloc_r+0x430>,r1	! 589c <___malloc_unlock>
    5518:	41 0b       	jsr	@r1
    551a:	64 a3       	mov	r10,r4
    551c:	ae 70       	bra	5200 <__malloc_r+0x74>
    551e:	e0 00       	mov	#0,r0
    5520:	e1 01       	mov	#1,r1
    5522:	21 9b       	or	r9,r1
    5524:	18 11       	mov.l	r1,@(4,r8)
    5526:	39 8c       	add	r8,r9
    5528:	cb 01       	or	#1,r0
    552a:	1b 92       	mov.l	r9,@(8,r11)
    552c:	ae 63       	bra	51f6 <__malloc_r+0x6a>
    552e:	19 01       	mov.l	r0,@(4,r9)
    5530:	3d 16       	cmp/hi	r1,r13
    5532:	8b 6b       	bf	560c <__malloc_r+0x480>
    5534:	e1 54       	mov	#84,r1
    5536:	3d 16       	cmp/hi	r1,r13
    5538:	8b 02       	bf	5540 <__malloc_r+0x3b4>
    553a:	a0 83       	bra	5644 <__malloc_r+0x4b8>
    553c:	00 09       	nop	
    553e:	00 09       	nop	
    5540:	6d 93       	mov	r9,r13
    5542:	4d 19       	shlr8	r13
    5544:	4d 09       	shlr2	r13
    5546:	4d 09       	shlr2	r13
    5548:	7d 6e       	add	#110,r13
    554a:	63 d3       	mov	r13,r3
    554c:	ae 89       	bra	5262 <__malloc_r+0xd6>
    554e:	33 3c       	add	r3,r3
    5550:	41 19       	shlr8	r1
    5552:	41 01       	shlr	r1
    5554:	e3 04       	mov	#4,r3
    5556:	31 36       	cmp/hi	r3,r1
    5558:	8b 5c       	bf	5614 <__malloc_r+0x488>
    555a:	e3 14       	mov	#20,r3
    555c:	31 36       	cmp/hi	r3,r1
    555e:	8b 01       	bf	5564 <__malloc_r+0x3d8>
    5560:	a0 a0       	bra	56a4 <__malloc_r+0x518>
    5562:	e3 54       	mov	#84,r3
    5564:	71 5b       	add	#91,r1
    5566:	63 13       	mov	r1,r3
    5568:	33 3c       	add	r3,r3
    556a:	43 08       	shll2	r3
    556c:	33 bc       	add	r11,r3
    556e:	5c 32       	mov.l	@(8,r3),r12
    5570:	e7 fc       	mov	#-4,r7
    5572:	d6 13       	mov.l	55c0 <__malloc_r+0x434>,r6	! a8b4 <___malloc_av_>
    5574:	3c 30       	cmp/eq	r3,r12
    5576:	8b 01       	bf	557c <__malloc_r+0x3f0>
    5578:	a0 78       	bra	566c <__malloc_r+0x4e0>
    557a:	65 13       	mov	r1,r5
    557c:	51 c1       	mov.l	@(4,r12),r1
    557e:	21 79       	and	r7,r1
    5580:	32 12       	cmp/hs	r1,r2
    5582:	89 02       	bt	558a <__malloc_r+0x3fe>
    5584:	5c c2       	mov.l	@(8,r12),r12
    5586:	33 c0       	cmp/eq	r12,r3
    5588:	8b f8       	bf	557c <__malloc_r+0x3f0>
    558a:	52 c3       	mov.l	@(12,r12),r2
    558c:	51 b1       	mov.l	@(4,r11),r1
    558e:	d3 0d       	mov.l	55c4 <__malloc_r+0x438>,r3	! 8514 <___ashlsi3>
    5590:	18 23       	mov.l	r2,@(12,r8)
    5592:	18 c2       	mov.l	r12,@(8,r8)
    5594:	12 82       	mov.l	r8,@(8,r2)
    5596:	ae ba       	bra	530e <__malloc_r+0x182>
    5598:	1c 83       	mov.l	r8,@(12,r12)
    559a:	10 0f       	mov.l	r0,@(60,r0)
    559c:	f0 00       	.word 0xf000
    559e:	10 08       	mov.l	r0,@(32,r0)
    55a0:	0f ff       	.word 0x0fff
    55a2:	00 09       	nop	
    55a4:	00 00       	.word 0x0000
    55a6:	a8 ac       	bra	4702 <__dtoa_r+0x1236>
    55a8:	00 00       	.word 0x0000
    55aa:	ac fc       	bra	4fa6 <__fwalk_reent+0x62>
    55ac:	00 00       	.word 0x0000
    55ae:	65 50       	mov.b	@r5,r5
    55b0:	00 00       	.word 0x0000
    55b2:	ac cc       	bra	4f4e <__fwalk_reent+0xa>
    55b4:	00 00       	.word 0x0000
    55b6:	ac f8       	bra	4faa <__fwalk_reent+0x66>
    55b8:	00 00       	.word 0x0000
    55ba:	ac f4       	bra	4fa6 <__fwalk_reent+0x62>
    55bc:	00 00       	.word 0x0000
    55be:	58 9c       	mov.l	@(48,r9),r8
    55c0:	00 00       	.word 0x0000
    55c2:	a8 b4       	bra	472e <__dtoa_r+0x1262>
    55c4:	00 00       	.word 0x0000
    55c6:	85 14       	mov.w	@(8,r1),r0
    55c8:	61 83       	mov	r8,r1
    55ca:	31 9c       	add	r9,r1
    55cc:	29 2b       	or	r2,r9
    55ce:	18 91       	mov.l	r9,@(4,r8)
    55d0:	22 0b       	or	r0,r2
    55d2:	1c 15       	mov.l	r1,@(20,r12)
    55d4:	1c 14       	mov.l	r1,@(16,r12)
    55d6:	11 e3       	mov.l	r14,@(12,r1)
    55d8:	11 e2       	mov.l	r14,@(8,r1)
    55da:	11 21       	mov.l	r2,@(4,r1)
    55dc:	ae 0b       	bra	51f6 <__malloc_r+0x6a>
    55de:	01 06       	mov.l	r0,@(r0,r1)
    55e0:	d3 55       	mov.l	5738 <__malloc_r+0x5ac>,r3	! 8514 <___ashlsi3>
    55e2:	ae 95       	bra	5310 <__malloc_r+0x184>
    55e4:	65 d3       	mov	r13,r5
    55e6:	00 09       	nop	
    55e8:	58 85       	mov.l	@(20,r8),r8
    55ea:	71 08       	add	#8,r1
    55ec:	7d 02       	add	#2,r13
    55ee:	31 80       	cmp/eq	r8,r1
    55f0:	8b 02       	bf	55f8 <__malloc_r+0x46c>
    55f2:	ae 59       	bra	52a8 <__malloc_r+0x11c>
    55f4:	00 09       	nop	
    55f6:	00 09       	nop	
    55f8:	ad f3       	bra	51e2 <__malloc_r+0x56>
    55fa:	51 81       	mov.l	@(4,r8),r1
    55fc:	50 11       	mov.l	@(4,r1),r0
    55fe:	52 82       	mov.l	@(8,r8),r2
    5600:	cb 01       	or	#1,r0
    5602:	11 01       	mov.l	r0,@(4,r1)
    5604:	51 83       	mov.l	@(12,r8),r1
    5606:	12 13       	mov.l	r1,@(12,r2)
    5608:	ad f5       	bra	51f6 <__malloc_r+0x6a>
    560a:	11 22       	mov.l	r2,@(8,r1)
    560c:	7d 5b       	add	#91,r13
    560e:	63 d3       	mov	r13,r3
    5610:	ae 27       	bra	5262 <__malloc_r+0xd6>
    5612:	33 3c       	add	r3,r3
    5614:	61 23       	mov	r2,r1
    5616:	41 09       	shlr2	r1
    5618:	41 09       	shlr2	r1
    561a:	41 09       	shlr2	r1
    561c:	71 38       	add	#56,r1
    561e:	63 13       	mov	r1,r3
    5620:	af a3       	bra	556a <__malloc_r+0x3de>
    5622:	33 3c       	add	r3,r3
    5624:	8b 02       	bf	562c <__malloc_r+0x4a0>
    5626:	af 13       	bra	5450 <__malloc_r+0x2c4>
    5628:	00 09       	nop	
    562a:	00 09       	nop	
    562c:	d1 43       	mov.l	573c <__malloc_r+0x5b0>,r1	! a8b4 <___malloc_av_>
    562e:	e2 fc       	mov	#-4,r2
    5630:	58 12       	mov.l	@(8,r1),r8
    5632:	51 81       	mov.l	@(4,r8),r1
    5634:	af 68       	bra	5508 <__malloc_r+0x37c>
    5636:	21 29       	and	r2,r1
    5638:	7c 04       	add	#4,r12
    563a:	33 3c       	add	r3,r3
    563c:	21 38       	tst	r3,r1
    563e:	89 fb       	bt	5638 <__malloc_r+0x4ac>
    5640:	ae 7a       	bra	5338 <__malloc_r+0x1ac>
    5642:	6d c3       	mov	r12,r13
    5644:	91 73       	mov.w	572e <__malloc_r+0x5a2>,r1	! 154
    5646:	3d 16       	cmp/hi	r1,r13
    5648:	89 20       	bt	568c <__malloc_r+0x500>
    564a:	6d 93       	mov	r9,r13
    564c:	4d 19       	shlr8	r13
    564e:	3d dc       	add	r13,r13
    5650:	4d 19       	shlr8	r13
    5652:	7d 77       	add	#119,r13
    5654:	63 d3       	mov	r13,r3
    5656:	ae 04       	bra	5262 <__malloc_r+0xd6>
    5658:	33 3c       	add	r3,r3
    565a:	00 09       	nop	
    565c:	93 68       	mov.w	5730 <__malloc_r+0x5a4>,r3	! 1000
    565e:	af 15       	bra	548c <__malloc_r+0x300>
    5660:	00 09       	nop	
    5662:	00 09       	nop	
    5664:	1d 11       	mov.l	r1,@(4,r13)
    5666:	68 d3       	mov	r13,r8
    5668:	af 4e       	bra	5508 <__malloc_r+0x37c>
    566a:	e1 00       	mov	#0,r1
    566c:	d3 32       	mov.l	5738 <__malloc_r+0x5ac>,r3	! 8514 <___ashlsi3>
    566e:	45 21       	shar	r5
    5670:	2f 32       	mov.l	r3,@r15
    5672:	e4 01       	mov	#1,r4
    5674:	1f 61       	mov.l	r6,@(4,r15)
    5676:	43 0b       	jsr	@r3
    5678:	45 21       	shar	r5
    567a:	56 f1       	mov.l	@(4,r15),r6
    567c:	61 03       	mov	r0,r1
    567e:	63 f2       	mov.l	@r15,r3
    5680:	52 61       	mov.l	@(4,r6),r2
    5682:	21 2b       	or	r2,r1
    5684:	16 11       	mov.l	r1,@(4,r6)
    5686:	af 83       	bra	5590 <__malloc_r+0x404>
    5688:	62 c3       	mov	r12,r2
    568a:	00 09       	nop	
    568c:	91 51       	mov.w	5732 <__malloc_r+0x5a6>,r1	! 554
    568e:	3d 16       	cmp/hi	r1,r13
    5690:	89 1e       	bt	56d0 <__malloc_r+0x544>
    5692:	6d 93       	mov	r9,r13
    5694:	4d 29       	shlr16	r13
    5696:	4d 09       	shlr2	r13
    5698:	7d 7c       	add	#124,r13
    569a:	63 d3       	mov	r13,r3
    569c:	ad e1       	bra	5262 <__malloc_r+0xd6>
    569e:	33 3c       	add	r3,r3
    56a0:	ae c4       	bra	542c <__malloc_r+0x2a0>
    56a2:	7e 10       	add	#16,r14
    56a4:	31 36       	cmp/hi	r3,r1
    56a6:	89 25       	bt	56f4 <__malloc_r+0x568>
    56a8:	61 23       	mov	r2,r1
    56aa:	41 19       	shlr8	r1
    56ac:	41 09       	shlr2	r1
    56ae:	41 09       	shlr2	r1
    56b0:	71 6e       	add	#110,r1
    56b2:	63 13       	mov	r1,r3
    56b4:	af 59       	bra	556a <__malloc_r+0x3de>
    56b6:	33 3c       	add	r3,r3
    56b8:	95 3c       	mov.w	5734 <__malloc_r+0x5a8>,r5	! fff
    56ba:	23 58       	tst	r5,r3
    56bc:	89 02       	bt	56c4 <__malloc_r+0x538>
    56be:	ae d0       	bra	5462 <__malloc_r+0x2d6>
    56c0:	60 72       	mov.l	@r7,r0
    56c2:	00 09       	nop	
    56c4:	52 b2       	mov.l	@(8,r11),r2
    56c6:	60 e3       	mov	r14,r0
    56c8:	30 cc       	add	r12,r0
    56ca:	cb 01       	or	#1,r0
    56cc:	af 0e       	bra	54ec <__malloc_r+0x360>
    56ce:	12 01       	mov.l	r0,@(4,r2)
    56d0:	93 31       	mov.w	5736 <__malloc_r+0x5aa>,r3	! fc
    56d2:	ad c6       	bra	5262 <__malloc_r+0xd6>
    56d4:	ed 7e       	mov	#126,r13
    56d6:	00 09       	nop	
    56d8:	d1 19       	mov.l	5740 <__malloc_r+0x5b4>,r1	! a8ac <___malloc_sbrk_base>
    56da:	ae cc       	bra	5476 <__malloc_r+0x2ea>
    56dc:	21 d2       	mov.l	r13,@r1
    56de:	00 09       	nop	
    56e0:	ae e7       	bra	54b2 <__malloc_r+0x326>
    56e2:	ee 00       	mov	#0,r14
    56e4:	d1 17       	mov.l	5744 <__malloc_r+0x5b8>,r1	! 4cc8 <__free_r>
    56e6:	64 a3       	mov	r10,r4
    56e8:	41 0b       	jsr	@r1
    56ea:	75 08       	add	#8,r5
    56ec:	d1 16       	mov.l	5748 <__malloc_r+0x5bc>,r1	! accc <___malloc_current_mallinfo>
    56ee:	ae fd       	bra	54ec <__malloc_r+0x360>
    56f0:	61 12       	mov.l	@r1,r1
    56f2:	00 09       	nop	
    56f4:	93 1b       	mov.w	572e <__malloc_r+0x5a2>,r3	! 154
    56f6:	31 36       	cmp/hi	r3,r1
    56f8:	89 08       	bt	570c <__malloc_r+0x580>
    56fa:	61 23       	mov	r2,r1
    56fc:	41 19       	shlr8	r1
    56fe:	31 1c       	add	r1,r1
    5700:	41 19       	shlr8	r1
    5702:	71 77       	add	#119,r1
    5704:	63 13       	mov	r1,r3
    5706:	af 30       	bra	556a <__malloc_r+0x3de>
    5708:	33 3c       	add	r3,r3
    570a:	00 09       	nop	
    570c:	93 11       	mov.w	5732 <__malloc_r+0x5a6>,r3	! 554
    570e:	31 36       	cmp/hi	r3,r1
    5710:	89 0a       	bt	5728 <__malloc_r+0x59c>
    5712:	61 23       	mov	r2,r1
    5714:	41 29       	shlr16	r1
    5716:	41 09       	shlr2	r1
    5718:	71 7c       	add	#124,r1
    571a:	63 13       	mov	r1,r3
    571c:	af 25       	bra	556a <__malloc_r+0x3de>
    571e:	33 3c       	add	r3,r3
    5720:	61 37       	not	r3,r1
    5722:	21 29       	and	r2,r1
    5724:	ae 5d       	bra	53e2 <__malloc_r+0x256>
    5726:	1b 11       	mov.l	r1,@(4,r11)
    5728:	93 05       	mov.w	5736 <__malloc_r+0x5aa>,r3	! fc
    572a:	af 1e       	bra	556a <__malloc_r+0x3de>
    572c:	e1 7e       	mov	#126,r1
    572e:	01 54       	mov.b	r5,@(r0,r1)
    5730:	10 00       	mov.l	r0,@(0,r0)
    5732:	05 54       	mov.b	r5,@(r0,r5)
    5734:	0f ff       	.word 0x0fff
    5736:	00 fc       	mov.b	@(r0,r15),r0
    5738:	00 00       	.word 0x0000
    573a:	85 14       	mov.w	@(8,r1),r0
    573c:	00 00       	.word 0x0000
    573e:	a8 b4       	bra	48aa <___sflush_r+0xde>
    5740:	00 00       	.word 0x0000
    5742:	a8 ac       	bra	489e <___sflush_r+0xd2>
    5744:	00 00       	.word 0x0000
    5746:	4c c8       	.word 0x4cc8
    5748:	00 00       	.word 0x0000
    574a:	ac cc       	bra	50e6 <___smakebuf_r+0x7a>

0000574c <_memchr>:
    574c:	2f 86       	mov.l	r8,@-r15
    574e:	60 43       	mov	r4,r0
    5750:	2f 96       	mov.l	r9,@-r15
    5752:	c8 03       	tst	#3,r0
    5754:	65 5c       	extu.b	r5,r5
    5756:	89 4b       	bt	57f0 <_memchr+0xa4>
    5758:	61 63       	mov	r6,r1
    575a:	26 68       	tst	r6,r6
    575c:	71 ff       	add	#-1,r1
    575e:	89 25       	bt	57ac <_memchr+0x60>
    5760:	62 40       	mov.b	@r4,r2
    5762:	62 2c       	extu.b	r2,r2
    5764:	32 50       	cmp/eq	r5,r2
    5766:	89 47       	bt	57f8 <_memchr+0xac>
    5768:	a0 08       	bra	577c <_memchr+0x30>
    576a:	70 01       	add	#1,r0
    576c:	21 18       	tst	r1,r1
    576e:	89 1d       	bt	57ac <_memchr+0x60>
    5770:	63 20       	mov.b	@r2,r3
    5772:	70 01       	add	#1,r0
    5774:	63 3c       	extu.b	r3,r3
    5776:	33 50       	cmp/eq	r5,r3
    5778:	71 ff       	add	#-1,r1
    577a:	89 18       	bt	57ae <_memchr+0x62>
    577c:	c8 03       	tst	#3,r0
    577e:	62 03       	mov	r0,r2
    5780:	8b f4       	bf	576c <_memchr+0x20>
    5782:	e3 03       	mov	#3,r3
    5784:	31 36       	cmp/hi	r3,r1
    5786:	89 17       	bt	57b8 <_memchr+0x6c>
    5788:	21 18       	tst	r1,r1
    578a:	89 0f       	bt	57ac <_memchr+0x60>
    578c:	63 20       	mov.b	@r2,r3
    578e:	63 3c       	extu.b	r3,r3
    5790:	33 50       	cmp/eq	r5,r3
    5792:	89 0c       	bt	57ae <_memchr+0x62>
    5794:	63 23       	mov	r2,r3
    5796:	73 01       	add	#1,r3
    5798:	a0 05       	bra	57a6 <_memchr+0x5a>
    579a:	31 2c       	add	r2,r1
    579c:	67 20       	mov.b	@r2,r7
    579e:	73 01       	add	#1,r3
    57a0:	67 7c       	extu.b	r7,r7
    57a2:	37 50       	cmp/eq	r5,r7
    57a4:	89 03       	bt	57ae <_memchr+0x62>
    57a6:	33 10       	cmp/eq	r1,r3
    57a8:	62 33       	mov	r3,r2
    57aa:	8b f7       	bf	579c <_memchr+0x50>
    57ac:	e2 00       	mov	#0,r2
    57ae:	69 f6       	mov.l	@r15+,r9
    57b0:	68 f6       	mov.l	@r15+,r8
    57b2:	00 0b       	rts	
    57b4:	60 23       	mov	r2,r0
    57b6:	00 09       	nop	
    57b8:	63 53       	mov	r5,r3
    57ba:	43 18       	shll8	r3
    57bc:	23 5b       	or	r5,r3
    57be:	64 33       	mov	r3,r4
    57c0:	d8 0e       	mov.l	57fc <_memchr+0xb0>,r8	! fefefeff
    57c2:	44 28       	shll16	r4
    57c4:	d0 0e       	mov.l	5800 <_memchr+0xb4>,r0	! 80808080
    57c6:	24 3b       	or	r3,r4
    57c8:	e9 03       	mov	#3,r9
    57ca:	00 09       	nop	
    57cc:	66 23       	mov	r2,r6
    57ce:	67 62       	mov.l	@r6,r7
    57d0:	72 04       	add	#4,r2
    57d2:	27 4a       	xor	r4,r7
    57d4:	63 73       	mov	r7,r3
    57d6:	33 8c       	add	r8,r3
    57d8:	67 77       	not	r7,r7
    57da:	23 79       	and	r7,r3
    57dc:	23 08       	tst	r0,r3
    57de:	8b 05       	bf	57ec <_memchr+0xa0>
    57e0:	71 fc       	add	#-4,r1
    57e2:	31 96       	cmp/hi	r9,r1
    57e4:	89 f2       	bt	57cc <_memchr+0x80>
    57e6:	af d0       	bra	578a <_memchr+0x3e>
    57e8:	21 18       	tst	r1,r1
    57ea:	00 09       	nop	
    57ec:	af cc       	bra	5788 <_memchr+0x3c>
    57ee:	62 63       	mov	r6,r2
    57f0:	62 43       	mov	r4,r2
    57f2:	af c6       	bra	5782 <_memchr+0x36>
    57f4:	61 63       	mov	r6,r1
    57f6:	00 09       	nop	
    57f8:	af d9       	bra	57ae <_memchr+0x62>
    57fa:	62 43       	mov	r4,r2
    57fc:	fe fe       	.word 0xfefe
    57fe:	fe ff       	.word 0xfeff
    5800:	80 80       	mov.b	r0,@(0,r8)
    5802:	80 80       	mov.b	r0,@(0,r8)

00005804 <_memcpy>:
    5804:	60 43       	mov	r4,r0
    5806:	30 6c       	add	r6,r0
    5808:	35 48       	sub	r4,r5
    580a:	e1 0b       	mov	#11,r1
    580c:	36 12       	cmp/hs	r1,r6
    580e:	75 ff       	add	#-1,r5
    5810:	8b 39       	bf	5886 <L_cleanup>
    5812:	63 53       	mov	r5,r3
    5814:	33 0c       	add	r0,r3
    5816:	43 01       	shlr	r3
    5818:	67 43       	mov	r4,r7
    581a:	89 02       	bt	5822 <L_even>
    581c:	02 5c       	mov.b	@(r0,r5),r2
    581e:	73 ff       	add	#-1,r3
    5820:	20 24       	mov.b	r2,@-r0

00005822 <L_even>:
    5822:	c8 01       	tst	#1,r0
    5824:	75 ff       	add	#-1,r5
    5826:	77 08       	add	#8,r7
    5828:	8b 1d       	bf	5866 <L_odddst>
    582a:	c8 02       	tst	#2,r0
    582c:	89 02       	bt	5834 <L_al4dst>
    582e:	73 ff       	add	#-1,r3
    5830:	01 5d       	mov.w	@(r0,r5),r1
    5832:	20 15       	mov.w	r1,@-r0

00005834 <L_al4dst>:
    5834:	43 01       	shlr	r3
    5836:	89 0e       	bt	5856 <L_al4both>
    5838:	01 5d       	mov.w	@(r0,r5),r1
    583a:	61 19       	swap.w	r1,r1
    583c:	77 04       	add	#4,r7
    583e:	75 fc       	add	#-4,r5

00005840 <L_2l_loop>:
    5840:	02 5e       	mov.l	@(r0,r5),r2
    5842:	21 2d       	xtrct	r2,r1
    5844:	20 16       	mov.l	r1,@-r0
    5846:	30 72       	cmp/hs	r7,r0
    5848:	01 5e       	mov.l	@(r0,r5),r1
    584a:	22 1d       	xtrct	r1,r2
    584c:	20 26       	mov.l	r2,@-r0
    584e:	89 f7       	bt	5840 <L_2l_loop>
    5850:	a0 19       	bra	5886 <L_cleanup>
    5852:	75 05       	add	#5,r5
    5854:	00 09       	nop	

00005856 <L_al4both>:
    5856:	75 fe       	add	#-2,r5

00005858 <L_al4both_loop>:
    5858:	01 5e       	mov.l	@(r0,r5),r1
    585a:	30 72       	cmp/hs	r7,r0
    585c:	20 16       	mov.l	r1,@-r0
    585e:	89 fb       	bt	5858 <L_al4both_loop>
    5860:	a0 11       	bra	5886 <L_cleanup>
    5862:	75 03       	add	#3,r5
    5864:	00 09       	nop	

00005866 <L_odddst>:
    5866:	43 01       	shlr	r3
    5868:	89 03       	bt	5872 <L_al4src>
    586a:	01 5d       	mov.w	@(r0,r5),r1
    586c:	20 14       	mov.b	r1,@-r0
    586e:	41 19       	shlr8	r1
    5870:	20 14       	mov.b	r1,@-r0

00005872 <L_al4src>:
    5872:	75 fe       	add	#-2,r5

00005874 <L_odd_loop>:
    5874:	02 5e       	mov.l	@(r0,r5),r2
    5876:	30 72       	cmp/hs	r7,r0
    5878:	20 24       	mov.b	r2,@-r0
    587a:	42 19       	shlr8	r2
    587c:	20 25       	mov.w	r2,@-r0
    587e:	42 29       	shlr16	r2
    5880:	20 24       	mov.b	r2,@-r0
    5882:	89 f7       	bt	5874 <L_odd_loop>
    5884:	75 03       	add	#3,r5

00005886 <L_cleanup>:
    5886:	30 40       	cmp/eq	r4,r0
    5888:	89 04       	bt	5894 <L_ready>
    588a:	74 01       	add	#1,r4

0000588c <L_cleanup_loop>:
    588c:	02 5c       	mov.b	@(r0,r5),r2
    588e:	30 40       	cmp/eq	r4,r0
    5890:	20 24       	mov.b	r2,@-r0
    5892:	8b fb       	bf	588c <L_cleanup_loop>

00005894 <L_ready>:
    5894:	00 0b       	rts	
    5896:	60 03       	mov	r0,r0

00005898 <___malloc_lock>:
    5898:	00 0b       	rts	
    589a:	00 09       	nop	

0000589c <___malloc_unlock>:
    589c:	00 0b       	rts	
    589e:	00 09       	nop	

000058a0 <__Balloc>:
    58a0:	2f 86       	mov.l	r8,@-r15
    58a2:	68 43       	mov	r4,r8
    58a4:	2f 96       	mov.l	r9,@-r15
    58a6:	69 53       	mov	r5,r9
    58a8:	2f a6       	mov.l	r10,@-r15
    58aa:	6a 43       	mov	r4,r10
    58ac:	4f 22       	sts.l	pr,@-r15
    58ae:	7a 40       	add	#64,r10
    58b0:	50 a3       	mov.l	@(12,r10),r0
    58b2:	20 08       	tst	r0,r0
    58b4:	89 10       	bt	58d8 <__Balloc+0x38>
    58b6:	61 93       	mov	r9,r1
    58b8:	41 08       	shll2	r1
    58ba:	31 0c       	add	r0,r1
    58bc:	60 12       	mov.l	@r1,r0
    58be:	20 08       	tst	r0,r0
    58c0:	89 14       	bt	58ec <__Balloc+0x4c>
    58c2:	62 02       	mov.l	@r0,r2
    58c4:	21 22       	mov.l	r2,@r1
    58c6:	e1 00       	mov	#0,r1
    58c8:	10 14       	mov.l	r1,@(16,r0)
    58ca:	10 13       	mov.l	r1,@(12,r0)
    58cc:	4f 26       	lds.l	@r15+,pr
    58ce:	6a f6       	mov.l	@r15+,r10
    58d0:	69 f6       	mov.l	@r15+,r9
    58d2:	68 f6       	mov.l	@r15+,r8
    58d4:	00 0b       	rts	
    58d6:	00 09       	nop	
    58d8:	d0 0d       	mov.l	5910 <__Balloc+0x70>,r0	! 7550 <__calloc_r>
    58da:	e5 04       	mov	#4,r5
    58dc:	40 0b       	jsr	@r0
    58de:	e6 21       	mov	#33,r6
    58e0:	1a 03       	mov.l	r0,@(12,r10)
    58e2:	20 08       	tst	r0,r0
    58e4:	8b e7       	bf	58b6 <__Balloc+0x16>
    58e6:	af f1       	bra	58cc <__Balloc+0x2c>
    58e8:	e0 00       	mov	#0,r0
    58ea:	00 09       	nop	
    58ec:	d0 09       	mov.l	5914 <__Balloc+0x74>,r0	! 8514 <___ashlsi3>
    58ee:	e4 01       	mov	#1,r4
    58f0:	40 0b       	jsr	@r0
    58f2:	65 93       	mov	r9,r5
    58f4:	66 03       	mov	r0,r6
    58f6:	6a 03       	mov	r0,r10
    58f8:	d0 05       	mov.l	5910 <__Balloc+0x70>,r0	! 7550 <__calloc_r>
    58fa:	76 05       	add	#5,r6
    58fc:	64 83       	mov	r8,r4
    58fe:	e5 01       	mov	#1,r5
    5900:	40 0b       	jsr	@r0
    5902:	46 08       	shll2	r6
    5904:	20 08       	tst	r0,r0
    5906:	89 ee       	bt	58e6 <__Balloc+0x46>
    5908:	10 91       	mov.l	r9,@(4,r0)
    590a:	af dc       	bra	58c6 <__Balloc+0x26>
    590c:	10 a2       	mov.l	r10,@(8,r0)
    590e:	00 09       	nop	
    5910:	00 00       	.word 0x0000
    5912:	75 50       	add	#80,r5
    5914:	00 00       	.word 0x0000
    5916:	85 14       	mov.w	@(8,r1),r0

00005918 <__Bfree>:
    5918:	25 58       	tst	r5,r5
    591a:	89 07       	bt	592c <__Bfree+0x14>
    591c:	52 51       	mov.l	@(4,r5),r2
    591e:	74 40       	add	#64,r4
    5920:	51 43       	mov.l	@(12,r4),r1
    5922:	42 08       	shll2	r2
    5924:	31 2c       	add	r2,r1
    5926:	62 12       	mov.l	@r1,r2
    5928:	25 22       	mov.l	r2,@r5
    592a:	21 52       	mov.l	r5,@r1
    592c:	00 0b       	rts	
    592e:	00 09       	nop	

00005930 <___multadd>:
    5930:	2f 86       	mov.l	r8,@-r15
    5932:	2f 96       	mov.l	r9,@-r15
    5934:	2f a6       	mov.l	r10,@-r15
    5936:	6a 53       	mov	r5,r10
    5938:	2f b6       	mov.l	r11,@-r15
    593a:	7a 14       	add	#20,r10
    593c:	2f c6       	mov.l	r12,@-r15
    593e:	eb 00       	mov	#0,r11
    5940:	2f d6       	mov.l	r13,@-r15
    5942:	2f e6       	mov.l	r14,@-r15
    5944:	4f 22       	sts.l	pr,@-r15
    5946:	50 54       	mov.l	@(16,r5),r0
    5948:	7f f4       	add	#-12,r15
    594a:	de 2b       	mov.l	59f8 <___multadd+0xc8>,r14	! 862c <___mulsi3>
    594c:	dd 2b       	mov.l	59fc <___multadd+0xcc>,r13	! ffff
    594e:	1f 42       	mov.l	r4,@(8,r15)
    5950:	1f 51       	mov.l	r5,@(4,r15)
    5952:	2f 02       	mov.l	r0,@r15
    5954:	6c a2       	mov.l	@r10,r12
    5956:	65 63       	mov	r6,r5
    5958:	7b 01       	add	#1,r11
    595a:	64 c3       	mov	r12,r4
    595c:	4e 0b       	jsr	@r14
    595e:	24 d9       	and	r13,r4
    5960:	68 03       	mov	r0,r8
    5962:	38 7c       	add	r7,r8
    5964:	69 83       	mov	r8,r9
    5966:	64 c3       	mov	r12,r4
    5968:	49 29       	shlr16	r9
    596a:	4e 0b       	jsr	@r14
    596c:	44 29       	shlr16	r4
    596e:	39 0c       	add	r0,r9
    5970:	61 f2       	mov.l	@r15,r1
    5972:	6c 93       	mov	r9,r12
    5974:	28 d9       	and	r13,r8
    5976:	49 28       	shll16	r9
    5978:	39 8c       	add	r8,r9
    597a:	4c 29       	shlr16	r12
    597c:	2a 92       	mov.l	r9,@r10
    597e:	31 b7       	cmp/gt	r11,r1
    5980:	67 c3       	mov	r12,r7
    5982:	7a 04       	add	#4,r10
    5984:	89 e6       	bt	5954 <___multadd+0x24>
    5986:	2c c8       	tst	r12,r12
    5988:	89 0d       	bt	59a6 <___multadd+0x76>
    598a:	50 f1       	mov.l	@(4,r15),r0
    598c:	62 f2       	mov.l	@r15,r2
    598e:	51 02       	mov.l	@(8,r0),r1
    5990:	32 13       	cmp/ge	r1,r2
    5992:	89 15       	bt	59c0 <___multadd+0x90>
    5994:	60 f2       	mov.l	@r15,r0
    5996:	51 f1       	mov.l	@(4,r15),r1
    5998:	70 05       	add	#5,r0
    599a:	40 08       	shll2	r0
    599c:	01 c6       	mov.l	r12,@(r0,r1)
    599e:	61 f2       	mov.l	@r15,r1
    59a0:	50 f1       	mov.l	@(4,r15),r0
    59a2:	71 01       	add	#1,r1
    59a4:	10 14       	mov.l	r1,@(16,r0)
    59a6:	50 f1       	mov.l	@(4,r15),r0
    59a8:	7f 0c       	add	#12,r15
    59aa:	4f 26       	lds.l	@r15+,pr
    59ac:	6e f6       	mov.l	@r15+,r14
    59ae:	6d f6       	mov.l	@r15+,r13
    59b0:	6c f6       	mov.l	@r15+,r12
    59b2:	6b f6       	mov.l	@r15+,r11
    59b4:	6a f6       	mov.l	@r15+,r10
    59b6:	69 f6       	mov.l	@r15+,r9
    59b8:	68 f6       	mov.l	@r15+,r8
    59ba:	00 0b       	rts	
    59bc:	00 09       	nop	
    59be:	00 09       	nop	
    59c0:	55 01       	mov.l	@(4,r0),r5
    59c2:	d0 0f       	mov.l	5a00 <___multadd+0xd0>,r0	! 58a0 <__Balloc>
    59c4:	75 01       	add	#1,r5
    59c6:	40 0b       	jsr	@r0
    59c8:	54 f2       	mov.l	@(8,r15),r4
    59ca:	68 03       	mov	r0,r8
    59cc:	50 f1       	mov.l	@(4,r15),r0
    59ce:	64 83       	mov	r8,r4
    59d0:	74 0c       	add	#12,r4
    59d2:	56 04       	mov.l	@(16,r0),r6
    59d4:	65 03       	mov	r0,r5
    59d6:	d0 0b       	mov.l	5a04 <___multadd+0xd4>,r0	! 5804 <_memcpy>
    59d8:	76 02       	add	#2,r6
    59da:	75 0c       	add	#12,r5
    59dc:	40 0b       	jsr	@r0
    59de:	46 08       	shll2	r6
    59e0:	50 f1       	mov.l	@(4,r15),r0
    59e2:	51 f2       	mov.l	@(8,r15),r1
    59e4:	52 01       	mov.l	@(4,r0),r2
    59e6:	71 40       	add	#64,r1
    59e8:	51 13       	mov.l	@(12,r1),r1
    59ea:	42 08       	shll2	r2
    59ec:	1f 81       	mov.l	r8,@(4,r15)
    59ee:	31 2c       	add	r2,r1
    59f0:	62 12       	mov.l	@r1,r2
    59f2:	20 22       	mov.l	r2,@r0
    59f4:	af ce       	bra	5994 <___multadd+0x64>
    59f6:	21 02       	mov.l	r0,@r1
    59f8:	00 00       	.word 0x0000
    59fa:	86 2c       	.word 0x862c
    59fc:	00 00       	.word 0x0000
    59fe:	ff ff       	.word 0xffff
    5a00:	00 00       	.word 0x0000
    5a02:	58 a0       	mov.l	@(0,r10),r8
    5a04:	00 00       	.word 0x0000
    5a06:	58 04       	mov.l	@(16,r0),r8

00005a08 <___s2b>:
    5a08:	2f 86       	mov.l	r8,@-r15
    5a0a:	68 53       	mov	r5,r8
    5a0c:	2f 96       	mov.l	r9,@-r15
    5a0e:	69 43       	mov	r4,r9
    5a10:	2f a6       	mov.l	r10,@-r15
    5a12:	64 73       	mov	r7,r4
    5a14:	2f b6       	mov.l	r11,@-r15
    5a16:	e5 09       	mov	#9,r5
    5a18:	2f c6       	mov.l	r12,@-r15
    5a1a:	74 08       	add	#8,r4
    5a1c:	2f d6       	mov.l	r13,@-r15
    5a1e:	6b 63       	mov	r6,r11
    5a20:	d0 22       	mov.l	5aac <___s2b+0xa4>,r0	! 864e <___sdivsi3>
    5a22:	2f e6       	mov.l	r14,@-r15
    5a24:	4f 22       	sts.l	pr,@-r15
    5a26:	40 0b       	jsr	@r0
    5a28:	6a 73       	mov	r7,r10
    5a2a:	e1 01       	mov	#1,r1
    5a2c:	30 17       	cmp/gt	r1,r0
    5a2e:	e5 00       	mov	#0,r5
    5a30:	8b 04       	bf	5a3c <___s2b+0x34>
    5a32:	00 09       	nop	
    5a34:	31 1c       	add	r1,r1
    5a36:	30 17       	cmp/gt	r1,r0
    5a38:	75 01       	add	#1,r5
    5a3a:	89 fb       	bt	5a34 <___s2b+0x2c>
    5a3c:	d0 1c       	mov.l	5ab0 <___s2b+0xa8>,r0	! 58a0 <__Balloc>
    5a3e:	40 0b       	jsr	@r0
    5a40:	64 93       	mov	r9,r4
    5a42:	51 f8       	mov.l	@(32,r15),r1
    5a44:	65 03       	mov	r0,r5
    5a46:	10 15       	mov.l	r1,@(20,r0)
    5a48:	e1 01       	mov	#1,r1
    5a4a:	10 14       	mov.l	r1,@(16,r0)
    5a4c:	e1 09       	mov	#9,r1
    5a4e:	3b 17       	cmp/gt	r1,r11
    5a50:	8b 28       	bf	5aa4 <___s2b+0x9c>
    5a52:	6d 83       	mov	r8,r13
    5a54:	dc 17       	mov.l	5ab4 <___s2b+0xac>,r12	! 5930 <___multadd>
    5a56:	7d 09       	add	#9,r13
    5a58:	38 bc       	add	r11,r8
    5a5a:	6e d3       	mov	r13,r14
    5a5c:	67 e4       	mov.b	@r14+,r7
    5a5e:	64 93       	mov	r9,r4
    5a60:	e6 0a       	mov	#10,r6
    5a62:	4c 0b       	jsr	@r12
    5a64:	77 d0       	add	#-48,r7
    5a66:	3e 80       	cmp/eq	r8,r14
    5a68:	65 03       	mov	r0,r5
    5a6a:	8b f7       	bf	5a5c <___s2b+0x54>
    5a6c:	68 d3       	mov	r13,r8
    5a6e:	38 bc       	add	r11,r8
    5a70:	78 f8       	add	#-8,r8
    5a72:	3a b7       	cmp/gt	r11,r10
    5a74:	8b 0a       	bf	5a8c <___s2b+0x84>
    5a76:	dc 0f       	mov.l	5ab4 <___s2b+0xac>,r12	! 5930 <___multadd>
    5a78:	3a b8       	sub	r11,r10
    5a7a:	3a 8c       	add	r8,r10
    5a7c:	67 84       	mov.b	@r8+,r7
    5a7e:	64 93       	mov	r9,r4
    5a80:	e6 0a       	mov	#10,r6
    5a82:	4c 0b       	jsr	@r12
    5a84:	77 d0       	add	#-48,r7
    5a86:	38 a0       	cmp/eq	r10,r8
    5a88:	65 03       	mov	r0,r5
    5a8a:	8b f7       	bf	5a7c <___s2b+0x74>
    5a8c:	60 53       	mov	r5,r0
    5a8e:	4f 26       	lds.l	@r15+,pr
    5a90:	6e f6       	mov.l	@r15+,r14
    5a92:	6d f6       	mov.l	@r15+,r13
    5a94:	6c f6       	mov.l	@r15+,r12
    5a96:	6b f6       	mov.l	@r15+,r11
    5a98:	6a f6       	mov.l	@r15+,r10
    5a9a:	69 f6       	mov.l	@r15+,r9
    5a9c:	68 f6       	mov.l	@r15+,r8
    5a9e:	00 0b       	rts	
    5aa0:	00 09       	nop	
    5aa2:	00 09       	nop	
    5aa4:	78 0a       	add	#10,r8
    5aa6:	af e4       	bra	5a72 <___s2b+0x6a>
    5aa8:	eb 09       	mov	#9,r11
    5aaa:	00 09       	nop	
    5aac:	00 00       	.word 0x0000
    5aae:	86 4e       	.word 0x864e
    5ab0:	00 00       	.word 0x0000
    5ab2:	58 a0       	mov.l	@(0,r10),r8
    5ab4:	00 00       	.word 0x0000
    5ab6:	59 30       	mov.l	@(0,r3),r9

00005ab8 <___hi0bits>:
    5ab8:	d1 0f       	mov.l	5af8 <___hi0bits+0x40>,r1	! ffff0000
    5aba:	e0 00       	mov	#0,r0
    5abc:	24 18       	tst	r1,r4
    5abe:	8b 01       	bf	5ac4 <___hi0bits+0xc>
    5ac0:	44 28       	shll16	r4
    5ac2:	e0 10       	mov	#16,r0
    5ac4:	d1 0d       	mov.l	5afc <___hi0bits+0x44>,r1	! ff000000
    5ac6:	24 18       	tst	r1,r4
    5ac8:	8b 01       	bf	5ace <___hi0bits+0x16>
    5aca:	70 08       	add	#8,r0
    5acc:	44 18       	shll8	r4
    5ace:	d1 0c       	mov.l	5b00 <___hi0bits+0x48>,r1	! f0000000
    5ad0:	24 18       	tst	r1,r4
    5ad2:	8b 02       	bf	5ada <___hi0bits+0x22>
    5ad4:	44 08       	shll2	r4
    5ad6:	70 04       	add	#4,r0
    5ad8:	44 08       	shll2	r4
    5ada:	d1 0a       	mov.l	5b04 <___hi0bits+0x4c>,r1	! c0000000
    5adc:	24 18       	tst	r1,r4
    5ade:	8b 01       	bf	5ae4 <___hi0bits+0x2c>
    5ae0:	70 02       	add	#2,r0
    5ae2:	44 08       	shll2	r4
    5ae4:	44 11       	cmp/pz	r4
    5ae6:	8b 03       	bf	5af0 <___hi0bits+0x38>
    5ae8:	d1 07       	mov.l	5b08 <___hi0bits+0x50>,r1	! 40000000
    5aea:	24 18       	tst	r1,r4
    5aec:	8b 02       	bf	5af4 <___hi0bits+0x3c>
    5aee:	e0 20       	mov	#32,r0
    5af0:	00 0b       	rts	
    5af2:	00 09       	nop	
    5af4:	00 0b       	rts	
    5af6:	70 01       	add	#1,r0
    5af8:	ff ff       	.word 0xffff
    5afa:	00 00       	.word 0x0000
    5afc:	ff 00       	.word 0xff00
    5afe:	00 00       	.word 0x0000
    5b00:	f0 00       	.word 0xf000
    5b02:	00 00       	.word 0x0000
    5b04:	c0 00       	mov.b	r0,@(0,gbr)
    5b06:	00 00       	.word 0x0000
    5b08:	40 00       	shll	r0
	...

00005b0c <___lo0bits>:
    5b0c:	60 42       	mov.l	@r4,r0
    5b0e:	c8 07       	tst	#7,r0
    5b10:	89 0a       	bt	5b28 <___lo0bits+0x1c>
    5b12:	c8 01       	tst	#1,r0
    5b14:	e1 00       	mov	#0,r1
    5b16:	8b 04       	bf	5b22 <___lo0bits+0x16>
    5b18:	c8 02       	tst	#2,r0
    5b1a:	8b 25       	bf	5b68 <___lo0bits+0x5c>
    5b1c:	40 09       	shlr2	r0
    5b1e:	24 02       	mov.l	r0,@r4
    5b20:	e1 02       	mov	#2,r1
    5b22:	00 0b       	rts	
    5b24:	60 13       	mov	r1,r0
    5b26:	00 09       	nop	
    5b28:	61 0d       	extu.w	r0,r1
    5b2a:	21 18       	tst	r1,r1
    5b2c:	e1 00       	mov	#0,r1
    5b2e:	8b 01       	bf	5b34 <___lo0bits+0x28>
    5b30:	40 29       	shlr16	r0
    5b32:	e1 10       	mov	#16,r1
    5b34:	c8 ff       	tst	#-1,r0
    5b36:	8b 01       	bf	5b3c <___lo0bits+0x30>
    5b38:	71 08       	add	#8,r1
    5b3a:	40 19       	shlr8	r0
    5b3c:	c8 0f       	tst	#15,r0
    5b3e:	8b 02       	bf	5b46 <___lo0bits+0x3a>
    5b40:	40 09       	shlr2	r0
    5b42:	71 04       	add	#4,r1
    5b44:	40 09       	shlr2	r0
    5b46:	c8 03       	tst	#3,r0
    5b48:	8b 01       	bf	5b4e <___lo0bits+0x42>
    5b4a:	71 02       	add	#2,r1
    5b4c:	40 09       	shlr2	r0
    5b4e:	c8 01       	tst	#1,r0
    5b50:	8b 07       	bf	5b62 <___lo0bits+0x56>
    5b52:	40 01       	shlr	r0
    5b54:	20 08       	tst	r0,r0
    5b56:	8b 03       	bf	5b60 <___lo0bits+0x54>
    5b58:	e1 20       	mov	#32,r1
    5b5a:	00 0b       	rts	
    5b5c:	60 13       	mov	r1,r0
    5b5e:	00 09       	nop	
    5b60:	71 01       	add	#1,r1
    5b62:	24 02       	mov.l	r0,@r4
    5b64:	00 0b       	rts	
    5b66:	60 13       	mov	r1,r0
    5b68:	40 01       	shlr	r0
    5b6a:	e1 01       	mov	#1,r1
    5b6c:	24 02       	mov.l	r0,@r4
    5b6e:	00 0b       	rts	
    5b70:	60 13       	mov	r1,r0
    5b72:	00 09       	nop	

00005b74 <___i2b>:
    5b74:	d0 06       	mov.l	5b90 <___i2b+0x1c>,r0	! 58a0 <__Balloc>
    5b76:	2f 86       	mov.l	r8,@-r15
    5b78:	68 53       	mov	r5,r8
    5b7a:	4f 22       	sts.l	pr,@-r15
    5b7c:	40 0b       	jsr	@r0
    5b7e:	e5 01       	mov	#1,r5
    5b80:	e1 01       	mov	#1,r1
    5b82:	10 85       	mov.l	r8,@(20,r0)
    5b84:	10 14       	mov.l	r1,@(16,r0)
    5b86:	4f 26       	lds.l	@r15+,pr
    5b88:	68 f6       	mov.l	@r15+,r8
    5b8a:	00 0b       	rts	
    5b8c:	00 09       	nop	
    5b8e:	00 09       	nop	
    5b90:	00 00       	.word 0x0000
    5b92:	58 a0       	mov.l	@(0,r10),r8

00005b94 <___multiply>:
    5b94:	2f 86       	mov.l	r8,@-r15
    5b96:	68 53       	mov	r5,r8
    5b98:	2f 96       	mov.l	r9,@-r15
    5b9a:	2f a6       	mov.l	r10,@-r15
    5b9c:	6a 63       	mov	r6,r10
    5b9e:	2f b6       	mov.l	r11,@-r15
    5ba0:	2f c6       	mov.l	r12,@-r15
    5ba2:	2f d6       	mov.l	r13,@-r15
    5ba4:	2f e6       	mov.l	r14,@-r15
    5ba6:	4f 22       	sts.l	pr,@-r15
    5ba8:	59 54       	mov.l	@(16,r5),r9
    5baa:	7f dc       	add	#-36,r15
    5bac:	5b 64       	mov.l	@(16,r6),r11
    5bae:	39 b3       	cmp/ge	r11,r9
    5bb0:	89 04       	bt	5bbc <___multiply+0x28>
    5bb2:	61 93       	mov	r9,r1
    5bb4:	68 63       	mov	r6,r8
    5bb6:	69 b3       	mov	r11,r9
    5bb8:	6a 53       	mov	r5,r10
    5bba:	6b 13       	mov	r1,r11
    5bbc:	51 82       	mov.l	@(8,r8),r1
    5bbe:	60 93       	mov	r9,r0
    5bc0:	30 bc       	add	r11,r0
    5bc2:	30 17       	cmp/gt	r1,r0
    5bc4:	55 81       	mov.l	@(4,r8),r5
    5bc6:	01 29       	movt	r1
    5bc8:	1f 07       	mov.l	r0,@(28,r15)
    5bca:	d0 55       	mov.l	5d20 <___multiply+0x18c>,r0	! 58a0 <__Balloc>
    5bcc:	40 0b       	jsr	@r0
    5bce:	35 1c       	add	r1,r5
    5bd0:	51 f7       	mov.l	@(28,r15),r1
    5bd2:	63 03       	mov	r0,r3
    5bd4:	1f 08       	mov.l	r0,@(32,r15)
    5bd6:	71 05       	add	#5,r1
    5bd8:	41 08       	shll2	r1
    5bda:	30 1c       	add	r1,r0
    5bdc:	73 14       	add	#20,r3
    5bde:	1f 06       	mov.l	r0,@(24,r15)
    5be0:	33 02       	cmp/hs	r0,r3
    5be2:	61 33       	mov	r3,r1
    5be4:	e2 00       	mov	#0,r2
    5be6:	57 f6       	mov.l	@(24,r15),r7
    5be8:	89 04       	bt	5bf4 <___multiply+0x60>
    5bea:	00 09       	nop	
    5bec:	21 22       	mov.l	r2,@r1
    5bee:	71 04       	add	#4,r1
    5bf0:	37 16       	cmp/hi	r1,r7
    5bf2:	89 fb       	bt	5bec <___multiply+0x58>
    5bf4:	62 83       	mov	r8,r2
    5bf6:	72 14       	add	#20,r2
    5bf8:	79 05       	add	#5,r9
    5bfa:	7b 05       	add	#5,r11
    5bfc:	1f 25       	mov.l	r2,@(20,r15)
    5bfe:	60 93       	mov	r9,r0
    5c00:	62 b3       	mov	r11,r2
    5c02:	40 08       	shll2	r0
    5c04:	61 a3       	mov	r10,r1
    5c06:	42 08       	shll2	r2
    5c08:	71 14       	add	#20,r1
    5c0a:	32 ac       	add	r10,r2
    5c0c:	30 8c       	add	r8,r0
    5c0e:	1f 01       	mov.l	r0,@(4,r15)
    5c10:	31 22       	cmp/hs	r2,r1
    5c12:	1f 12       	mov.l	r1,@(8,r15)
    5c14:	1f 24       	mov.l	r2,@(16,r15)
    5c16:	1f 33       	mov.l	r3,@(12,r15)
    5c18:	89 5f       	bt	5cda <___multiply+0x146>
    5c1a:	d8 42       	mov.l	5d24 <___multiply+0x190>,r8	! ffff
    5c1c:	de 42       	mov.l	5d28 <___multiply+0x194>,r14	! 862c <___mulsi3>
    5c1e:	00 09       	nop	
    5c20:	52 f2       	mov.l	@(8,r15),r2
    5c22:	61 22       	mov.l	@r2,r1
    5c24:	6c 13       	mov	r1,r12
    5c26:	2c 89       	and	r8,r12
    5c28:	2c c8       	tst	r12,r12
    5c2a:	89 23       	bt	5c74 <___multiply+0xe0>
    5c2c:	59 f5       	mov.l	@(20,r15),r9
    5c2e:	ed 00       	mov	#0,r13
    5c30:	56 f3       	mov.l	@(12,r15),r6
    5c32:	00 09       	nop	
    5c34:	6b 96       	mov.l	@r9+,r11
    5c36:	65 c3       	mov	r12,r5
    5c38:	6a 62       	mov.l	@r6,r10
    5c3a:	64 b3       	mov	r11,r4
    5c3c:	4e 0b       	jsr	@r14
    5c3e:	24 89       	and	r8,r4
    5c40:	61 a3       	mov	r10,r1
    5c42:	21 89       	and	r8,r1
    5c44:	67 03       	mov	r0,r7
    5c46:	37 1c       	add	r1,r7
    5c48:	64 b3       	mov	r11,r4
    5c4a:	37 dc       	add	r13,r7
    5c4c:	4e 0b       	jsr	@r14
    5c4e:	44 29       	shlr16	r4
    5c50:	61 73       	mov	r7,r1
    5c52:	4a 29       	shlr16	r10
    5c54:	41 29       	shlr16	r1
    5c56:	30 ac       	add	r10,r0
    5c58:	30 1c       	add	r1,r0
    5c5a:	51 f1       	mov.l	@(4,r15),r1
    5c5c:	6d 03       	mov	r0,r13
    5c5e:	27 89       	and	r8,r7
    5c60:	40 28       	shll16	r0
    5c62:	20 7b       	or	r7,r0
    5c64:	26 02       	mov.l	r0,@r6
    5c66:	31 96       	cmp/hi	r9,r1
    5c68:	4d 29       	shlr16	r13
    5c6a:	76 04       	add	#4,r6
    5c6c:	89 e2       	bt	5c34 <___multiply+0xa0>
    5c6e:	52 f2       	mov.l	@(8,r15),r2
    5c70:	26 d2       	mov.l	r13,@r6
    5c72:	61 22       	mov.l	@r2,r1
    5c74:	6d 13       	mov	r1,r13
    5c76:	4d 29       	shlr16	r13
    5c78:	2d d8       	tst	r13,r13
    5c7a:	89 25       	bt	5cc8 <___multiply+0x134>
    5c7c:	50 f3       	mov.l	@(12,r15),r0
    5c7e:	ec 00       	mov	#0,r12
    5c80:	5a f5       	mov.l	@(20,r15),r10
    5c82:	69 03       	mov	r0,r9
    5c84:	67 02       	mov.l	@r0,r7
    5c86:	2f d2       	mov.l	r13,@r15
    5c88:	6b 73       	mov	r7,r11
    5c8a:	00 09       	nop	
    5c8c:	6d a3       	mov	r10,r13
    5c8e:	64 a6       	mov.l	@r10+,r4
    5c90:	4b 29       	shlr16	r11
    5c92:	65 f2       	mov.l	@r15,r5
    5c94:	4e 0b       	jsr	@r14
    5c96:	24 89       	and	r8,r4
    5c98:	66 03       	mov	r0,r6
    5c9a:	36 bc       	add	r11,r6
    5c9c:	36 cc       	add	r12,r6
    5c9e:	61 63       	mov	r6,r1
    5ca0:	27 89       	and	r8,r7
    5ca2:	41 28       	shll16	r1
    5ca4:	21 7b       	or	r7,r1
    5ca6:	29 12       	mov.l	r1,@r9
    5ca8:	79 04       	add	#4,r9
    5caa:	6b 92       	mov.l	@r9,r11
    5cac:	46 29       	shlr16	r6
    5cae:	64 d2       	mov.l	@r13,r4
    5cb0:	67 b3       	mov	r11,r7
    5cb2:	27 89       	and	r8,r7
    5cb4:	4e 0b       	jsr	@r14
    5cb6:	44 29       	shlr16	r4
    5cb8:	51 f1       	mov.l	@(4,r15),r1
    5cba:	37 0c       	add	r0,r7
    5cbc:	37 6c       	add	r6,r7
    5cbe:	6c 73       	mov	r7,r12
    5cc0:	31 a6       	cmp/hi	r10,r1
    5cc2:	4c 29       	shlr16	r12
    5cc4:	89 e2       	bt	5c8c <___multiply+0xf8>
    5cc6:	29 72       	mov.l	r7,@r9
    5cc8:	52 f2       	mov.l	@(8,r15),r2
    5cca:	50 f3       	mov.l	@(12,r15),r0
    5ccc:	72 04       	add	#4,r2
    5cce:	51 f4       	mov.l	@(16,r15),r1
    5cd0:	70 04       	add	#4,r0
    5cd2:	1f 22       	mov.l	r2,@(8,r15)
    5cd4:	31 26       	cmp/hi	r2,r1
    5cd6:	1f 03       	mov.l	r0,@(12,r15)
    5cd8:	89 a2       	bt	5c20 <___multiply+0x8c>
    5cda:	50 f7       	mov.l	@(28,r15),r0
    5cdc:	40 15       	cmp/pl	r0
    5cde:	8b 11       	bf	5d04 <___multiply+0x170>
    5ce0:	52 f6       	mov.l	@(24,r15),r2
    5ce2:	51 f6       	mov.l	@(24,r15),r1
    5ce4:	72 c0       	add	#-64,r2
    5ce6:	52 2f       	mov.l	@(60,r2),r2
    5ce8:	71 fc       	add	#-4,r1
    5cea:	22 28       	tst	r2,r2
    5cec:	8b 0a       	bf	5d04 <___multiply+0x170>
    5cee:	a0 05       	bra	5cfc <___multiply+0x168>
    5cf0:	52 f7       	mov.l	@(28,r15),r2
    5cf2:	00 09       	nop	
    5cf4:	71 fc       	add	#-4,r1
    5cf6:	63 12       	mov.l	@r1,r3
    5cf8:	23 38       	tst	r3,r3
    5cfa:	8b 02       	bf	5d02 <___multiply+0x16e>
    5cfc:	72 ff       	add	#-1,r2
    5cfe:	22 28       	tst	r2,r2
    5d00:	8b f8       	bf	5cf4 <___multiply+0x160>
    5d02:	1f 27       	mov.l	r2,@(28,r15)
    5d04:	50 f8       	mov.l	@(32,r15),r0
    5d06:	51 f7       	mov.l	@(28,r15),r1
    5d08:	10 14       	mov.l	r1,@(16,r0)
    5d0a:	7f 24       	add	#36,r15
    5d0c:	4f 26       	lds.l	@r15+,pr
    5d0e:	6e f6       	mov.l	@r15+,r14
    5d10:	6d f6       	mov.l	@r15+,r13
    5d12:	6c f6       	mov.l	@r15+,r12
    5d14:	6b f6       	mov.l	@r15+,r11
    5d16:	6a f6       	mov.l	@r15+,r10
    5d18:	69 f6       	mov.l	@r15+,r9
    5d1a:	68 f6       	mov.l	@r15+,r8
    5d1c:	00 0b       	rts	
    5d1e:	00 09       	nop	
    5d20:	00 00       	.word 0x0000
    5d22:	58 a0       	mov.l	@(0,r10),r8
    5d24:	00 00       	.word 0x0000
    5d26:	ff ff       	.word 0xffff
    5d28:	00 00       	.word 0x0000
    5d2a:	86 2c       	.word 0x862c

00005d2c <___pow5mult>:
    5d2c:	2f 86       	mov.l	r8,@-r15
    5d2e:	60 63       	mov	r6,r0
    5d30:	2f 96       	mov.l	r9,@-r15
    5d32:	c9 03       	and	#3,r0
    5d34:	2f a6       	mov.l	r10,@-r15
    5d36:	20 08       	tst	r0,r0
    5d38:	2f b6       	mov.l	r11,@-r15
    5d3a:	68 63       	mov	r6,r8
    5d3c:	2f c6       	mov.l	r12,@-r15
    5d3e:	6b 53       	mov	r5,r11
    5d40:	2f d6       	mov.l	r13,@-r15
    5d42:	6c 43       	mov	r4,r12
    5d44:	2f e6       	mov.l	r14,@-r15
    5d46:	4f 22       	sts.l	pr,@-r15
    5d48:	8b 3e       	bf	5dc8 <___pow5mult+0x9c>
    5d4a:	48 21       	shar	r8
    5d4c:	48 21       	shar	r8
    5d4e:	28 88       	tst	r8,r8
    5d50:	89 24       	bt	5d9c <___pow5mult+0x70>
    5d52:	6e c3       	mov	r12,r14
    5d54:	7e 40       	add	#64,r14
    5d56:	5a e2       	mov.l	@(8,r14),r10
    5d58:	2a a8       	tst	r10,r10
    5d5a:	89 3f       	bt	5ddc <___pow5mult+0xb0>
    5d5c:	dd 24       	mov.l	5df0 <___pow5mult+0xc4>,r13	! 5b94 <___multiply>
    5d5e:	a0 09       	bra	5d74 <___pow5mult+0x48>
    5d60:	60 83       	mov	r8,r0
    5d62:	00 09       	nop	
    5d64:	48 21       	shar	r8
    5d66:	28 88       	tst	r8,r8
    5d68:	89 18       	bt	5d9c <___pow5mult+0x70>
    5d6a:	69 a2       	mov.l	@r10,r9
    5d6c:	29 98       	tst	r9,r9
    5d6e:	89 21       	bt	5db4 <___pow5mult+0x88>
    5d70:	6a 93       	mov	r9,r10
    5d72:	60 83       	mov	r8,r0
    5d74:	c8 01       	tst	#1,r0
    5d76:	89 f5       	bt	5d64 <___pow5mult+0x38>
    5d78:	64 c3       	mov	r12,r4
    5d7a:	65 b3       	mov	r11,r5
    5d7c:	4d 0b       	jsr	@r13
    5d7e:	66 a3       	mov	r10,r6
    5d80:	2b b8       	tst	r11,r11
    5d82:	89 1f       	bt	5dc4 <___pow5mult+0x98>
    5d84:	52 b1       	mov.l	@(4,r11),r2
    5d86:	48 21       	shar	r8
    5d88:	51 e3       	mov.l	@(12,r14),r1
    5d8a:	42 08       	shll2	r2
    5d8c:	28 88       	tst	r8,r8
    5d8e:	31 2c       	add	r2,r1
    5d90:	62 12       	mov.l	@r1,r2
    5d92:	2b 22       	mov.l	r2,@r11
    5d94:	21 b2       	mov.l	r11,@r1
    5d96:	6b 03       	mov	r0,r11
    5d98:	8b e7       	bf	5d6a <___pow5mult+0x3e>
    5d9a:	00 09       	nop	
    5d9c:	60 b3       	mov	r11,r0
    5d9e:	4f 26       	lds.l	@r15+,pr
    5da0:	6e f6       	mov.l	@r15+,r14
    5da2:	6d f6       	mov.l	@r15+,r13
    5da4:	6c f6       	mov.l	@r15+,r12
    5da6:	6b f6       	mov.l	@r15+,r11
    5da8:	6a f6       	mov.l	@r15+,r10
    5daa:	69 f6       	mov.l	@r15+,r9
    5dac:	68 f6       	mov.l	@r15+,r8
    5dae:	00 0b       	rts	
    5db0:	00 09       	nop	
    5db2:	00 09       	nop	
    5db4:	65 a3       	mov	r10,r5
    5db6:	66 a3       	mov	r10,r6
    5db8:	4d 0b       	jsr	@r13
    5dba:	64 c3       	mov	r12,r4
    5dbc:	2a 02       	mov.l	r0,@r10
    5dbe:	6a 03       	mov	r0,r10
    5dc0:	af d7       	bra	5d72 <___pow5mult+0x46>
    5dc2:	20 92       	mov.l	r9,@r0
    5dc4:	af ce       	bra	5d64 <___pow5mult+0x38>
    5dc6:	6b 03       	mov	r0,r11
    5dc8:	d1 0a       	mov.l	5df4 <___pow5mult+0xc8>,r1	! 9fcc <_p05.2538>
    5dca:	70 ff       	add	#-1,r0
    5dcc:	40 08       	shll2	r0
    5dce:	06 1e       	mov.l	@(r0,r1),r6
    5dd0:	d0 09       	mov.l	5df8 <___pow5mult+0xcc>,r0	! 5930 <___multadd>
    5dd2:	40 0b       	jsr	@r0
    5dd4:	e7 00       	mov	#0,r7
    5dd6:	af b8       	bra	5d4a <___pow5mult+0x1e>
    5dd8:	6b 03       	mov	r0,r11
    5dda:	00 09       	nop	
    5ddc:	d0 07       	mov.l	5dfc <___pow5mult+0xd0>,r0	! 5b74 <___i2b>
    5dde:	95 06       	mov.w	5dee <___pow5mult+0xc2>,r5	! 271
    5de0:	40 0b       	jsr	@r0
    5de2:	64 c3       	mov	r12,r4
    5de4:	1e 02       	mov.l	r0,@(8,r14)
    5de6:	e1 00       	mov	#0,r1
    5de8:	6a 03       	mov	r0,r10
    5dea:	af b7       	bra	5d5c <___pow5mult+0x30>
    5dec:	20 12       	mov.l	r1,@r0
    5dee:	02 71       	.word 0x0271
    5df0:	00 00       	.word 0x0000
    5df2:	5b 94       	mov.l	@(16,r9),r11
    5df4:	00 00       	.word 0x0000
    5df6:	9f cc       	mov.w	5f92 <___mdiff+0x62>,r15	! 2279
    5df8:	00 00       	.word 0x0000
    5dfa:	59 30       	mov.l	@(0,r3),r9
    5dfc:	00 00       	.word 0x0000
    5dfe:	5b 74       	mov.l	@(16,r7),r11

00005e00 <___lshift>:
    5e00:	2f 86       	mov.l	r8,@-r15
    5e02:	2f 96       	mov.l	r9,@-r15
    5e04:	69 63       	mov	r6,r9
    5e06:	2f a6       	mov.l	r10,@-r15
    5e08:	6a 63       	mov	r6,r10
    5e0a:	2f b6       	mov.l	r11,@-r15
    5e0c:	4a 21       	shar	r10
    5e0e:	2f c6       	mov.l	r12,@-r15
    5e10:	4a 21       	shar	r10
    5e12:	2f d6       	mov.l	r13,@-r15
    5e14:	6d 53       	mov	r5,r13
    5e16:	2f e6       	mov.l	r14,@-r15
    5e18:	4a 21       	shar	r10
    5e1a:	51 d4       	mov.l	@(16,r13),r1
    5e1c:	4a 21       	shar	r10
    5e1e:	4f 22       	sts.l	pr,@-r15
    5e20:	4a 21       	shar	r10
    5e22:	31 ac       	add	r10,r1
    5e24:	7f f0       	add	#-16,r15
    5e26:	6e 13       	mov	r1,r14
    5e28:	1f 12       	mov.l	r1,@(8,r15)
    5e2a:	7e 01       	add	#1,r14
    5e2c:	51 d2       	mov.l	@(8,r13),r1
    5e2e:	1f 43       	mov.l	r4,@(12,r15)
    5e30:	3e 17       	cmp/gt	r1,r14
    5e32:	55 51       	mov.l	@(4,r5),r5
    5e34:	8b 04       	bf	5e40 <___lshift+0x40>
    5e36:	00 09       	nop	
    5e38:	31 1c       	add	r1,r1
    5e3a:	3e 17       	cmp/gt	r1,r14
    5e3c:	75 01       	add	#1,r5
    5e3e:	89 fb       	bt	5e38 <___lshift+0x38>
    5e40:	d0 2b       	mov.l	5ef0 <___lshift+0xf0>,r0	! 58a0 <__Balloc>
    5e42:	40 0b       	jsr	@r0
    5e44:	54 f3       	mov.l	@(12,r15),r4
    5e46:	68 03       	mov	r0,r8
    5e48:	1f 01       	mov.l	r0,@(4,r15)
    5e4a:	4a 15       	cmp/pl	r10
    5e4c:	78 14       	add	#20,r8
    5e4e:	8b 0b       	bf	5e68 <___lshift+0x68>
    5e50:	e1 00       	mov	#0,r1
    5e52:	e7 00       	mov	#0,r7
    5e54:	71 01       	add	#1,r1
    5e56:	28 72       	mov.l	r7,@r8
    5e58:	31 a0       	cmp/eq	r10,r1
    5e5a:	78 04       	add	#4,r8
    5e5c:	8b fa       	bf	5e54 <___lshift+0x54>
    5e5e:	68 13       	mov	r1,r8
    5e60:	51 f1       	mov.l	@(4,r15),r1
    5e62:	78 05       	add	#5,r8
    5e64:	48 08       	shll2	r8
    5e66:	38 1c       	add	r1,r8
    5e68:	5c d4       	mov.l	@(16,r13),r12
    5e6a:	e1 1f       	mov	#31,r1
    5e6c:	29 19       	and	r1,r9
    5e6e:	7c 05       	add	#5,r12
    5e70:	6a d3       	mov	r13,r10
    5e72:	4c 08       	shll2	r12
    5e74:	29 98       	tst	r9,r9
    5e76:	7a 14       	add	#20,r10
    5e78:	3c dc       	add	r13,r12
    5e7a:	89 2f       	bt	5edc <___lshift+0xdc>
    5e7c:	61 9b       	neg	r9,r1
    5e7e:	71 20       	add	#32,r1
    5e80:	2f 12       	mov.l	r1,@r15
    5e82:	eb 00       	mov	#0,r11
    5e84:	d1 1b       	mov.l	5ef4 <___lshift+0xf4>,r1	! 8514 <___ashlsi3>
    5e86:	65 93       	mov	r9,r5
    5e88:	41 0b       	jsr	@r1
    5e8a:	64 a2       	mov.l	@r10,r4
    5e8c:	20 bb       	or	r11,r0
    5e8e:	d1 1a       	mov.l	5ef8 <___lshift+0xf8>,r1	! 85a0 <___lshrsi3>
    5e90:	28 02       	mov.l	r0,@r8
    5e92:	78 04       	add	#4,r8
    5e94:	64 a6       	mov.l	@r10+,r4
    5e96:	41 0b       	jsr	@r1
    5e98:	65 f2       	mov.l	@r15,r5
    5e9a:	3c a6       	cmp/hi	r10,r12
    5e9c:	6b 03       	mov	r0,r11
    5e9e:	89 f1       	bt	5e84 <___lshift+0x84>
    5ea0:	28 02       	mov.l	r0,@r8
    5ea2:	20 08       	tst	r0,r0
    5ea4:	89 01       	bt	5eaa <___lshift+0xaa>
    5ea6:	5e f2       	mov.l	@(8,r15),r14
    5ea8:	7e 02       	add	#2,r14
    5eaa:	51 f1       	mov.l	@(4,r15),r1
    5eac:	63 e3       	mov	r14,r3
    5eae:	5e f3       	mov.l	@(12,r15),r14
    5eb0:	73 ff       	add	#-1,r3
    5eb2:	11 34       	mov.l	r3,@(16,r1)
    5eb4:	7e 40       	add	#64,r14
    5eb6:	53 d1       	mov.l	@(4,r13),r3
    5eb8:	51 e3       	mov.l	@(12,r14),r1
    5eba:	43 08       	shll2	r3
    5ebc:	50 f1       	mov.l	@(4,r15),r0
    5ebe:	31 3c       	add	r3,r1
    5ec0:	63 12       	mov.l	@r1,r3
    5ec2:	2d 32       	mov.l	r3,@r13
    5ec4:	21 d2       	mov.l	r13,@r1
    5ec6:	7f 10       	add	#16,r15
    5ec8:	4f 26       	lds.l	@r15+,pr
    5eca:	6e f6       	mov.l	@r15+,r14
    5ecc:	6d f6       	mov.l	@r15+,r13
    5ece:	6c f6       	mov.l	@r15+,r12
    5ed0:	6b f6       	mov.l	@r15+,r11
    5ed2:	6a f6       	mov.l	@r15+,r10
    5ed4:	69 f6       	mov.l	@r15+,r9
    5ed6:	68 f6       	mov.l	@r15+,r8
    5ed8:	00 0b       	rts	
    5eda:	00 09       	nop	
    5edc:	61 a3       	mov	r10,r1
    5ede:	00 09       	nop	
    5ee0:	66 16       	mov.l	@r1+,r6
    5ee2:	3c 16       	cmp/hi	r1,r12
    5ee4:	28 62       	mov.l	r6,@r8
    5ee6:	78 04       	add	#4,r8
    5ee8:	89 fa       	bt	5ee0 <___lshift+0xe0>
    5eea:	af df       	bra	5eac <___lshift+0xac>
    5eec:	51 f1       	mov.l	@(4,r15),r1
    5eee:	00 09       	nop	
    5ef0:	00 00       	.word 0x0000
    5ef2:	58 a0       	mov.l	@(0,r10),r8
    5ef4:	00 00       	.word 0x0000
    5ef6:	85 14       	mov.w	@(8,r1),r0
    5ef8:	00 00       	.word 0x0000
    5efa:	85 a0       	mov.w	@(0,r10),r0

00005efc <___mcmp>:
    5efc:	50 44       	mov.l	@(16,r4),r0
    5efe:	51 54       	mov.l	@(16,r5),r1
    5f00:	30 18       	sub	r1,r0
    5f02:	20 08       	tst	r0,r0
    5f04:	8b 0e       	bf	5f24 <___mcmp+0x28>
    5f06:	71 05       	add	#5,r1
    5f08:	63 43       	mov	r4,r3
    5f0a:	41 08       	shll2	r1
    5f0c:	73 14       	add	#20,r3
    5f0e:	34 1c       	add	r1,r4
    5f10:	35 1c       	add	r1,r5
    5f12:	00 09       	nop	
    5f14:	74 fc       	add	#-4,r4
    5f16:	75 fc       	add	#-4,r5
    5f18:	61 42       	mov.l	@r4,r1
    5f1a:	62 52       	mov.l	@r5,r2
    5f1c:	31 20       	cmp/eq	r2,r1
    5f1e:	8b 03       	bf	5f28 <___mcmp+0x2c>
    5f20:	33 42       	cmp/hs	r4,r3
    5f22:	8b f7       	bf	5f14 <___mcmp+0x18>
    5f24:	00 0b       	rts	
    5f26:	00 09       	nop	
    5f28:	32 16       	cmp/hi	r1,r2
    5f2a:	30 0a       	subc	r0,r0
    5f2c:	00 0b       	rts	
    5f2e:	cb 01       	or	#1,r0

00005f30 <___mdiff>:
    5f30:	2f 86       	mov.l	r8,@-r15
    5f32:	68 53       	mov	r5,r8
    5f34:	2f 96       	mov.l	r9,@-r15
    5f36:	2f a6       	mov.l	r10,@-r15
    5f38:	6a 43       	mov	r4,r10
    5f3a:	2f b6       	mov.l	r11,@-r15
    5f3c:	64 53       	mov	r5,r4
    5f3e:	d0 3f       	mov.l	603c <___mdiff+0x10c>,r0	! 5efc <___mcmp>
    5f40:	6b 63       	mov	r6,r11
    5f42:	2f c6       	mov.l	r12,@-r15
    5f44:	4f 22       	sts.l	pr,@-r15
    5f46:	40 0b       	jsr	@r0
    5f48:	65 63       	mov	r6,r5
    5f4a:	20 08       	tst	r0,r0
    5f4c:	69 03       	mov	r0,r9
    5f4e:	89 65       	bt	601c <___mdiff+0xec>
    5f50:	40 11       	cmp/pz	r0
    5f52:	8b 5d       	bf	6010 <___mdiff+0xe0>
    5f54:	e9 00       	mov	#0,r9
    5f56:	d0 3a       	mov.l	6040 <___mdiff+0x110>,r0	! 58a0 <__Balloc>
    5f58:	64 a3       	mov	r10,r4
    5f5a:	40 0b       	jsr	@r0
    5f5c:	55 81       	mov.l	@(4,r8),r5
    5f5e:	10 93       	mov.l	r9,@(12,r0)
    5f60:	66 b3       	mov	r11,r6
    5f62:	5c b4       	mov.l	@(16,r11),r12
    5f64:	64 83       	mov	r8,r4
    5f66:	59 84       	mov.l	@(16,r8),r9
    5f68:	7c 05       	add	#5,r12
    5f6a:	4c 08       	shll2	r12
    5f6c:	6a 93       	mov	r9,r10
    5f6e:	7a 05       	add	#5,r10
    5f70:	d7 34       	mov.l	6044 <___mdiff+0x114>,r7	! ffff
    5f72:	4a 08       	shll2	r10
    5f74:	3c bc       	add	r11,r12
    5f76:	6b 03       	mov	r0,r11
    5f78:	3a 8c       	add	r8,r10
    5f7a:	74 14       	add	#20,r4
    5f7c:	76 14       	add	#20,r6
    5f7e:	7b 14       	add	#20,r11
    5f80:	e2 00       	mov	#0,r2
    5f82:	00 09       	nop	
    5f84:	61 46       	mov.l	@r4+,r1
    5f86:	68 43       	mov	r4,r8
    5f88:	65 66       	mov.l	@r6+,r5
    5f8a:	63 13       	mov	r1,r3
    5f8c:	23 79       	and	r7,r3
    5f8e:	33 2c       	add	r2,r3
    5f90:	62 53       	mov	r5,r2
    5f92:	22 79       	and	r7,r2
    5f94:	33 28       	sub	r2,r3
    5f96:	62 39       	swap.w	r3,r2
    5f98:	41 29       	shlr16	r1
    5f9a:	45 29       	shlr16	r5
    5f9c:	62 2f       	exts.w	r2,r2
    5f9e:	31 58       	sub	r5,r1
    5fa0:	31 2c       	add	r2,r1
    5fa2:	62 19       	swap.w	r1,r2
    5fa4:	23 79       	and	r7,r3
    5fa6:	41 28       	shll16	r1
    5fa8:	21 3b       	or	r3,r1
    5faa:	63 b3       	mov	r11,r3
    5fac:	2b 12       	mov.l	r1,@r11
    5fae:	73 04       	add	#4,r3
    5fb0:	3c 66       	cmp/hi	r6,r12
    5fb2:	62 2f       	exts.w	r2,r2
    5fb4:	6b 33       	mov	r3,r11
    5fb6:	89 e5       	bt	5f84 <___mdiff+0x54>
    5fb8:	3a 46       	cmp/hi	r4,r10
    5fba:	8b 18       	bf	5fee <___mdiff+0xbe>
    5fbc:	d5 21       	mov.l	6044 <___mdiff+0x114>,r5	! ffff
    5fbe:	00 09       	nop	
    5fc0:	66 86       	mov.l	@r8+,r6
    5fc2:	3a 86       	cmp/hi	r8,r10
    5fc4:	67 63       	mov	r6,r7
    5fc6:	27 59       	and	r5,r7
    5fc8:	37 2c       	add	r2,r7
    5fca:	61 79       	swap.w	r7,r1
    5fcc:	61 1f       	exts.w	r1,r1
    5fce:	46 29       	shlr16	r6
    5fd0:	31 6c       	add	r6,r1
    5fd2:	62 19       	swap.w	r1,r2
    5fd4:	27 59       	and	r5,r7
    5fd6:	41 28       	shll16	r1
    5fd8:	21 7b       	or	r7,r1
    5fda:	23 12       	mov.l	r1,@r3
    5fdc:	62 2f       	exts.w	r2,r2
    5fde:	73 04       	add	#4,r3
    5fe0:	89 ee       	bt	5fc0 <___mdiff+0x90>
    5fe2:	63 47       	not	r4,r3
    5fe4:	33 ac       	add	r10,r3
    5fe6:	43 09       	shlr2	r3
    5fe8:	73 01       	add	#1,r3
    5fea:	43 08       	shll2	r3
    5fec:	33 bc       	add	r11,r3
    5fee:	21 18       	tst	r1,r1
    5ff0:	73 fc       	add	#-4,r3
    5ff2:	8b 04       	bf	5ffe <___mdiff+0xce>
    5ff4:	73 fc       	add	#-4,r3
    5ff6:	61 32       	mov.l	@r3,r1
    5ff8:	79 ff       	add	#-1,r9
    5ffa:	21 18       	tst	r1,r1
    5ffc:	89 fa       	bt	5ff4 <___mdiff+0xc4>
    5ffe:	10 94       	mov.l	r9,@(16,r0)
    6000:	4f 26       	lds.l	@r15+,pr
    6002:	6c f6       	mov.l	@r15+,r12
    6004:	6b f6       	mov.l	@r15+,r11
    6006:	6a f6       	mov.l	@r15+,r10
    6008:	69 f6       	mov.l	@r15+,r9
    600a:	68 f6       	mov.l	@r15+,r8
    600c:	00 0b       	rts	
    600e:	00 09       	nop	
    6010:	61 83       	mov	r8,r1
    6012:	e9 01       	mov	#1,r9
    6014:	68 b3       	mov	r11,r8
    6016:	af 9e       	bra	5f56 <___mdiff+0x26>
    6018:	6b 13       	mov	r1,r11
    601a:	00 09       	nop	
    601c:	d0 08       	mov.l	6040 <___mdiff+0x110>,r0	! 58a0 <__Balloc>
    601e:	64 a3       	mov	r10,r4
    6020:	40 0b       	jsr	@r0
    6022:	e5 00       	mov	#0,r5
    6024:	e1 01       	mov	#1,r1
    6026:	10 14       	mov.l	r1,@(16,r0)
    6028:	10 95       	mov.l	r9,@(20,r0)
    602a:	4f 26       	lds.l	@r15+,pr
    602c:	6c f6       	mov.l	@r15+,r12
    602e:	6b f6       	mov.l	@r15+,r11
    6030:	6a f6       	mov.l	@r15+,r10
    6032:	69 f6       	mov.l	@r15+,r9
    6034:	68 f6       	mov.l	@r15+,r8
    6036:	00 0b       	rts	
    6038:	00 09       	nop	
    603a:	00 09       	nop	
    603c:	00 00       	.word 0x0000
    603e:	5e fc       	mov.l	@(48,r15),r14
    6040:	00 00       	.word 0x0000
    6042:	58 a0       	mov.l	@(0,r10),r8
    6044:	00 00       	.word 0x0000
    6046:	ff ff       	.word 0xffff

00006048 <___ulp>:
    6048:	d1 1b       	mov.l	60b8 <___ulp+0x70>,r1	! 7ff00000
    604a:	2f 86       	mov.l	r8,@-r15
    604c:	24 19       	and	r1,r4
    604e:	d1 1b       	mov.l	60bc <___ulp+0x74>,r1	! fcc00000
    6050:	2f 96       	mov.l	r9,@-r15
    6052:	34 1c       	add	r1,r4
    6054:	4f 22       	sts.l	pr,@-r15
    6056:	44 15       	cmp/pl	r4
    6058:	8b 08       	bf	606c <___ulp+0x24>
    605a:	68 43       	mov	r4,r8
    605c:	e9 00       	mov	#0,r9
    605e:	60 83       	mov	r8,r0
    6060:	61 93       	mov	r9,r1
    6062:	4f 26       	lds.l	@r15+,pr
    6064:	69 f6       	mov.l	@r15+,r9
    6066:	68 f6       	mov.l	@r15+,r8
    6068:	00 0b       	rts	
    606a:	00 09       	nop	
    606c:	d1 14       	mov.l	60c0 <___ulp+0x78>,r1	! 845c <___ashiftrt_r4_20>
    606e:	41 0b       	jsr	@r1
    6070:	64 4b       	neg	r4,r4
    6072:	e1 13       	mov	#19,r1
    6074:	34 17       	cmp/gt	r1,r4
    6076:	65 43       	mov	r4,r5
    6078:	8b 12       	bf	60a0 <___ulp+0x58>
    607a:	e1 32       	mov	#50,r1
    607c:	34 17       	cmp/gt	r1,r4
    607e:	e8 00       	mov	#0,r8
    6080:	e0 01       	mov	#1,r0
    6082:	89 04       	bt	608e <___ulp+0x46>
    6084:	d0 0f       	mov.l	60c4 <___ulp+0x7c>,r0	! 8514 <___ashlsi3>
    6086:	65 4b       	neg	r4,r5
    6088:	75 33       	add	#51,r5
    608a:	40 0b       	jsr	@r0
    608c:	e4 01       	mov	#1,r4
    608e:	69 03       	mov	r0,r9
    6090:	61 93       	mov	r9,r1
    6092:	60 83       	mov	r8,r0
    6094:	4f 26       	lds.l	@r15+,pr
    6096:	69 f6       	mov.l	@r15+,r9
    6098:	68 f6       	mov.l	@r15+,r8
    609a:	00 0b       	rts	
    609c:	00 09       	nop	
    609e:	00 09       	nop	
    60a0:	d0 09       	mov.l	60c8 <___ulp+0x80>,r0	! 8490 <___ashrsi3>
    60a2:	d4 0a       	mov.l	60cc <___ulp+0x84>,r4	! 80000
    60a4:	40 0b       	jsr	@r0
    60a6:	e9 00       	mov	#0,r9
    60a8:	68 03       	mov	r0,r8
    60aa:	60 83       	mov	r8,r0
    60ac:	61 93       	mov	r9,r1
    60ae:	4f 26       	lds.l	@r15+,pr
    60b0:	69 f6       	mov.l	@r15+,r9
    60b2:	68 f6       	mov.l	@r15+,r8
    60b4:	00 0b       	rts	
    60b6:	00 09       	nop	
    60b8:	7f f0       	add	#-16,r15
    60ba:	00 00       	.word 0x0000
    60bc:	fc c0       	.word 0xfcc0
    60be:	00 00       	.word 0x0000
    60c0:	00 00       	.word 0x0000
    60c2:	84 5c       	mov.b	@(12,r5),r0
    60c4:	00 00       	.word 0x0000
    60c6:	85 14       	mov.w	@(8,r1),r0
    60c8:	00 00       	.word 0x0000
    60ca:	84 90       	mov.b	@(0,r9),r0
    60cc:	00 08       	clrt	
	...

000060d0 <___b2d>:
    60d0:	2f 86       	mov.l	r8,@-r15
    60d2:	2f 96       	mov.l	r9,@-r15
    60d4:	69 53       	mov	r5,r9
    60d6:	2f a6       	mov.l	r10,@-r15
    60d8:	2f b6       	mov.l	r11,@-r15
    60da:	2f c6       	mov.l	r12,@-r15
    60dc:	2f d6       	mov.l	r13,@-r15
    60de:	6d 43       	mov	r4,r13
    60e0:	2f e6       	mov.l	r14,@-r15
    60e2:	7d 14       	add	#20,r13
    60e4:	4f 22       	sts.l	pr,@-r15
    60e6:	58 44       	mov.l	@(16,r4),r8
    60e8:	7f f4       	add	#-12,r15
    60ea:	d0 42       	mov.l	61f4 <___b2d+0x124>,r0	! 5ab8 <___hi0bits>
    60ec:	78 05       	add	#5,r8
    60ee:	48 08       	shll2	r8
    60f0:	38 4c       	add	r4,r8
    60f2:	6c 83       	mov	r8,r12
    60f4:	7c c0       	add	#-64,r12
    60f6:	5a cf       	mov.l	@(60,r12),r10
    60f8:	6b 83       	mov	r8,r11
    60fa:	7b fc       	add	#-4,r11
    60fc:	40 0b       	jsr	@r0
    60fe:	64 a3       	mov	r10,r4
    6100:	61 0b       	neg	r0,r1
    6102:	62 13       	mov	r1,r2
    6104:	72 20       	add	#32,r2
    6106:	29 22       	mov.l	r2,@r9
    6108:	e2 0a       	mov	#10,r2
    610a:	30 27       	cmp/gt	r2,r0
    610c:	6e 03       	mov	r0,r14
    610e:	89 27       	bt	6160 <___b2d+0x90>
    6110:	d2 39       	mov.l	61f8 <___b2d+0x128>,r2	! 85a0 <___lshrsi3>
    6112:	71 0b       	add	#11,r1
    6114:	65 13       	mov	r1,r5
    6116:	1f 11       	mov.l	r1,@(4,r15)
    6118:	64 a3       	mov	r10,r4
    611a:	42 0b       	jsr	@r2
    611c:	2f 22       	mov.l	r2,@r15
    611e:	d3 37       	mov.l	61fc <___b2d+0x12c>,r3	! 3ff00000
    6120:	68 03       	mov	r0,r8
    6122:	3d b2       	cmp/hs	r11,r13
    6124:	28 3b       	or	r3,r8
    6126:	eb 00       	mov	#0,r11
    6128:	51 f1       	mov.l	@(4,r15),r1
    612a:	62 f2       	mov.l	@r15,r2
    612c:	89 03       	bt	6136 <___b2d+0x66>
    612e:	54 ce       	mov.l	@(56,r12),r4
    6130:	42 0b       	jsr	@r2
    6132:	65 13       	mov	r1,r5
    6134:	6b 03       	mov	r0,r11
    6136:	d0 32       	mov.l	6200 <___b2d+0x130>,r0	! 8514 <___ashlsi3>
    6138:	65 e3       	mov	r14,r5
    613a:	64 a3       	mov	r10,r4
    613c:	75 15       	add	#21,r5
    613e:	40 0b       	jsr	@r0
    6140:	69 b3       	mov	r11,r9
    6142:	29 0b       	or	r0,r9
    6144:	61 93       	mov	r9,r1
    6146:	60 83       	mov	r8,r0
    6148:	7f 0c       	add	#12,r15
    614a:	4f 26       	lds.l	@r15+,pr
    614c:	6e f6       	mov.l	@r15+,r14
    614e:	6d f6       	mov.l	@r15+,r13
    6150:	6c f6       	mov.l	@r15+,r12
    6152:	6b f6       	mov.l	@r15+,r11
    6154:	6a f6       	mov.l	@r15+,r10
    6156:	69 f6       	mov.l	@r15+,r9
    6158:	68 f6       	mov.l	@r15+,r8
    615a:	00 0b       	rts	
    615c:	00 09       	nop	
    615e:	00 09       	nop	
    6160:	3d b2       	cmp/hs	r11,r13
    6162:	e2 00       	mov	#0,r2
    6164:	89 02       	bt	616c <___b2d+0x9c>
    6166:	52 ce       	mov.l	@(56,r12),r2
    6168:	6b 83       	mov	r8,r11
    616a:	7b f8       	add	#-8,r11
    616c:	7e f5       	add	#-11,r14
    616e:	2e e8       	tst	r14,r14
    6170:	89 2e       	bt	61d0 <___b2d+0x100>
    6172:	dc 23       	mov.l	6200 <___b2d+0x130>,r12	! 8514 <___ashlsi3>
    6174:	71 2b       	add	#43,r1
    6176:	64 a3       	mov	r10,r4
    6178:	1f 12       	mov.l	r1,@(8,r15)
    617a:	65 e3       	mov	r14,r5
    617c:	4c 0b       	jsr	@r12
    617e:	2f 22       	mov.l	r2,@r15
    6180:	d1 1e       	mov.l	61fc <___b2d+0x12c>,r1	! 3ff00000
    6182:	6a 03       	mov	r0,r10
    6184:	62 f2       	mov.l	@r15,r2
    6186:	2a 1b       	or	r1,r10
    6188:	d1 1b       	mov.l	61f8 <___b2d+0x128>,r1	! 85a0 <___lshrsi3>
    618a:	64 23       	mov	r2,r4
    618c:	55 f2       	mov.l	@(8,r15),r5
    618e:	68 a3       	mov	r10,r8
    6190:	41 0b       	jsr	@r1
    6192:	1f 11       	mov.l	r1,@(4,r15)
    6194:	3b d6       	cmp/hi	r13,r11
    6196:	28 0b       	or	r0,r8
    6198:	ea 00       	mov	#0,r10
    619a:	51 f1       	mov.l	@(4,r15),r1
    619c:	62 f2       	mov.l	@r15,r2
    619e:	8b 05       	bf	61ac <___b2d+0xdc>
    61a0:	7b c0       	add	#-64,r11
    61a2:	54 bf       	mov.l	@(60,r11),r4
    61a4:	41 0b       	jsr	@r1
    61a6:	55 f2       	mov.l	@(8,r15),r5
    61a8:	62 f2       	mov.l	@r15,r2
    61aa:	6a 03       	mov	r0,r10
    61ac:	64 23       	mov	r2,r4
    61ae:	65 e3       	mov	r14,r5
    61b0:	4c 0b       	jsr	@r12
    61b2:	69 a3       	mov	r10,r9
    61b4:	29 0b       	or	r0,r9
    61b6:	61 93       	mov	r9,r1
    61b8:	60 83       	mov	r8,r0
    61ba:	7f 0c       	add	#12,r15
    61bc:	4f 26       	lds.l	@r15+,pr
    61be:	6e f6       	mov.l	@r15+,r14
    61c0:	6d f6       	mov.l	@r15+,r13
    61c2:	6c f6       	mov.l	@r15+,r12
    61c4:	6b f6       	mov.l	@r15+,r11
    61c6:	6a f6       	mov.l	@r15+,r10
    61c8:	69 f6       	mov.l	@r15+,r9
    61ca:	68 f6       	mov.l	@r15+,r8
    61cc:	00 0b       	rts	
    61ce:	00 09       	nop	
    61d0:	d1 0a       	mov.l	61fc <___b2d+0x12c>,r1	! 3ff00000
    61d2:	68 a3       	mov	r10,r8
    61d4:	69 23       	mov	r2,r9
    61d6:	28 1b       	or	r1,r8
    61d8:	60 83       	mov	r8,r0
    61da:	61 93       	mov	r9,r1
    61dc:	7f 0c       	add	#12,r15
    61de:	4f 26       	lds.l	@r15+,pr
    61e0:	6e f6       	mov.l	@r15+,r14
    61e2:	6d f6       	mov.l	@r15+,r13
    61e4:	6c f6       	mov.l	@r15+,r12
    61e6:	6b f6       	mov.l	@r15+,r11
    61e8:	6a f6       	mov.l	@r15+,r10
    61ea:	69 f6       	mov.l	@r15+,r9
    61ec:	68 f6       	mov.l	@r15+,r8
    61ee:	00 0b       	rts	
    61f0:	00 09       	nop	
    61f2:	00 09       	nop	
    61f4:	00 00       	.word 0x0000
    61f6:	5a b8       	mov.l	@(32,r11),r10
    61f8:	00 00       	.word 0x0000
    61fa:	85 a0       	mov.w	@(0,r10),r0
    61fc:	3f f0       	cmp/eq	r15,r15
    61fe:	00 00       	.word 0x0000
    6200:	00 00       	.word 0x0000
    6202:	85 14       	mov.w	@(8,r1),r0

00006204 <___d2b>:
    6204:	2f 86       	mov.l	r8,@-r15
    6206:	68 53       	mov	r5,r8
    6208:	2f 96       	mov.l	r9,@-r15
    620a:	e5 01       	mov	#1,r5
    620c:	2f a6       	mov.l	r10,@-r15
    620e:	6a 83       	mov	r8,r10
    6210:	2f b6       	mov.l	r11,@-r15
    6212:	3a ac       	add	r10,r10
    6214:	2f c6       	mov.l	r12,@-r15
    6216:	4a 29       	shlr16	r10
    6218:	2f d6       	mov.l	r13,@-r15
    621a:	6c 73       	mov	r7,r12
    621c:	d0 3a       	mov.l	6308 <___d2b+0x104>,r0	! 58a0 <__Balloc>
    621e:	69 63       	mov	r6,r9
    6220:	4f 22       	sts.l	pr,@-r15
    6222:	4a 09       	shlr2	r10
    6224:	40 0b       	jsr	@r0
    6226:	7f f8       	add	#-8,r15
    6228:	4a 01       	shlr	r10
    622a:	d2 38       	mov.l	630c <___d2b+0x108>,r2	! fffff
    622c:	4a 09       	shlr2	r10
    622e:	6d f3       	mov	r15,r13
    6230:	2a a8       	tst	r10,r10
    6232:	6b 03       	mov	r0,r11
    6234:	22 89       	and	r8,r2
    6236:	7d c8       	add	#-56,r13
    6238:	8b 2e       	bf	6298 <___d2b+0x94>
    623a:	1d 2f       	mov.l	r2,@(60,r13)
    623c:	29 98       	tst	r9,r9
    623e:	89 30       	bt	62a2 <___d2b+0x9e>
    6240:	d0 33       	mov.l	6310 <___d2b+0x10c>,r0	! 5b0c <___lo0bits>
    6242:	64 f3       	mov	r15,r4
    6244:	40 0b       	jsr	@r0
    6246:	1d 9e       	mov.l	r9,@(56,r13)
    6248:	20 08       	tst	r0,r0
    624a:	68 03       	mov	r0,r8
    624c:	8b 4a       	bf	62e4 <___d2b+0xe0>
    624e:	51 de       	mov.l	@(56,r13),r1
    6250:	50 df       	mov.l	@(60,r13),r0
    6252:	1b 15       	mov.l	r1,@(20,r11)
    6254:	20 08       	tst	r0,r0
    6256:	39 9a       	subc	r9,r9
    6258:	79 02       	add	#2,r9
    625a:	1b 06       	mov.l	r0,@(24,r11)
    625c:	2a a8       	tst	r10,r10
    625e:	1b 94       	mov.l	r9,@(16,r11)
    6260:	8b 2c       	bf	62bc <___d2b+0xb8>
    6262:	60 93       	mov	r9,r0
    6264:	70 04       	add	#4,r0
    6266:	40 08       	shll2	r0
    6268:	91 4b       	mov.w	6302 <___d2b+0xfe>,r1	! fbce
    626a:	49 08       	shll2	r9
    626c:	04 be       	mov.l	@(r0,r11),r4
    626e:	31 8c       	add	r8,r1
    6270:	d0 28       	mov.l	6314 <___d2b+0x110>,r0	! 5ab8 <___hi0bits>
    6272:	39 9c       	add	r9,r9
    6274:	40 0b       	jsr	@r0
    6276:	2c 12       	mov.l	r1,@r12
    6278:	51 f9       	mov.l	@(36,r15),r1
    627a:	49 08       	shll2	r9
    627c:	39 08       	sub	r0,r9
    627e:	60 b3       	mov	r11,r0
    6280:	21 92       	mov.l	r9,@r1
    6282:	7f 08       	add	#8,r15
    6284:	4f 26       	lds.l	@r15+,pr
    6286:	6d f6       	mov.l	@r15+,r13
    6288:	6c f6       	mov.l	@r15+,r12
    628a:	6b f6       	mov.l	@r15+,r11
    628c:	6a f6       	mov.l	@r15+,r10
    628e:	69 f6       	mov.l	@r15+,r9
    6290:	68 f6       	mov.l	@r15+,r8
    6292:	00 0b       	rts	
    6294:	00 09       	nop	
    6296:	00 09       	nop	
    6298:	d1 1f       	mov.l	6318 <___d2b+0x114>,r1	! 100000
    629a:	29 98       	tst	r9,r9
    629c:	21 2b       	or	r2,r1
    629e:	1d 1f       	mov.l	r1,@(60,r13)
    62a0:	8b ce       	bf	6240 <___d2b+0x3c>
    62a2:	d0 1b       	mov.l	6310 <___d2b+0x10c>,r0	! 5b0c <___lo0bits>
    62a4:	64 f3       	mov	r15,r4
    62a6:	40 0b       	jsr	@r0
    62a8:	74 04       	add	#4,r4
    62aa:	51 df       	mov.l	@(60,r13),r1
    62ac:	68 03       	mov	r0,r8
    62ae:	2a a8       	tst	r10,r10
    62b0:	1b 15       	mov.l	r1,@(20,r11)
    62b2:	e1 01       	mov	#1,r1
    62b4:	1b 14       	mov.l	r1,@(16,r11)
    62b6:	78 20       	add	#32,r8
    62b8:	e9 01       	mov	#1,r9
    62ba:	89 d2       	bt	6262 <___d2b+0x5e>
    62bc:	91 22       	mov.w	6304 <___d2b+0x100>,r1	! fbcd
    62be:	60 b3       	mov	r11,r0
    62c0:	31 ac       	add	r10,r1
    62c2:	31 8c       	add	r8,r1
    62c4:	2c 12       	mov.l	r1,@r12
    62c6:	68 8b       	neg	r8,r8
    62c8:	51 f9       	mov.l	@(36,r15),r1
    62ca:	78 35       	add	#53,r8
    62cc:	21 82       	mov.l	r8,@r1
    62ce:	7f 08       	add	#8,r15
    62d0:	4f 26       	lds.l	@r15+,pr
    62d2:	6d f6       	mov.l	@r15+,r13
    62d4:	6c f6       	mov.l	@r15+,r12
    62d6:	6b f6       	mov.l	@r15+,r11
    62d8:	6a f6       	mov.l	@r15+,r10
    62da:	69 f6       	mov.l	@r15+,r9
    62dc:	68 f6       	mov.l	@r15+,r8
    62de:	00 0b       	rts	
    62e0:	00 09       	nop	
    62e2:	00 09       	nop	
    62e4:	59 df       	mov.l	@(60,r13),r9
    62e6:	65 0b       	neg	r0,r5
    62e8:	d0 0c       	mov.l	631c <___d2b+0x118>,r0	! 8514 <___ashlsi3>
    62ea:	64 93       	mov	r9,r4
    62ec:	40 0b       	jsr	@r0
    62ee:	75 20       	add	#32,r5
    62f0:	51 de       	mov.l	@(56,r13),r1
    62f2:	64 93       	mov	r9,r4
    62f4:	20 1b       	or	r1,r0
    62f6:	1b 05       	mov.l	r0,@(20,r11)
    62f8:	d0 09       	mov.l	6320 <___d2b+0x11c>,r0	! 85a0 <___lshrsi3>
    62fa:	40 0b       	jsr	@r0
    62fc:	65 83       	mov	r8,r5
    62fe:	af a9       	bra	6254 <___d2b+0x50>
    6300:	1d 0f       	mov.l	r0,@(60,r13)
    6302:	fb ce       	.word 0xfbce
    6304:	fb cd       	.word 0xfbcd
    6306:	00 09       	nop	
    6308:	00 00       	.word 0x0000
    630a:	58 a0       	mov.l	@(0,r10),r8
    630c:	00 0f       	.word 0x000f
    630e:	ff ff       	.word 0xffff
    6310:	00 00       	.word 0x0000
    6312:	5b 0c       	mov.l	@(48,r0),r11
    6314:	00 00       	.word 0x0000
    6316:	5a b8       	mov.l	@(32,r11),r10
    6318:	00 10       	.word 0x0010
    631a:	00 00       	.word 0x0000
    631c:	00 00       	.word 0x0000
    631e:	85 14       	mov.w	@(8,r1),r0
    6320:	00 00       	.word 0x0000
    6322:	85 a0       	mov.w	@(0,r10),r0

00006324 <___ratio>:
    6324:	2f 86       	mov.l	r8,@-r15
    6326:	2f 96       	mov.l	r9,@-r15
    6328:	2f a6       	mov.l	r10,@-r15
    632a:	2f b6       	mov.l	r11,@-r15
    632c:	2f c6       	mov.l	r12,@-r15
    632e:	6c 53       	mov	r5,r12
    6330:	2f d6       	mov.l	r13,@-r15
    6332:	6d 43       	mov	r4,r13
    6334:	2f e6       	mov.l	r14,@-r15
    6336:	de 19       	mov.l	639c <___ratio+0x78>,r14	! 60d0 <___b2d>
    6338:	4f 22       	sts.l	pr,@-r15
    633a:	7f f8       	add	#-8,r15
    633c:	4e 0b       	jsr	@r14
    633e:	65 f3       	mov	r15,r5
    6340:	65 f3       	mov	r15,r5
    6342:	68 03       	mov	r0,r8
    6344:	75 04       	add	#4,r5
    6346:	69 13       	mov	r1,r9
    6348:	4e 0b       	jsr	@r14
    634a:	64 c3       	mov	r12,r4
    634c:	56 f1       	mov.l	@(4,r15),r6
    634e:	6a 83       	mov	r8,r10
    6350:	67 f2       	mov.l	@r15,r7
    6352:	62 03       	mov	r0,r2
    6354:	55 c4       	mov.l	@(16,r12),r5
    6356:	37 68       	sub	r6,r7
    6358:	56 d4       	mov.l	@(16,r13),r6
    635a:	36 58       	sub	r5,r6
    635c:	46 08       	shll2	r6
    635e:	36 6c       	add	r6,r6
    6360:	46 08       	shll2	r6
    6362:	37 6c       	add	r6,r7
    6364:	47 15       	cmp/pl	r7
    6366:	47 28       	shll16	r7
    6368:	47 08       	shll2	r7
    636a:	47 08       	shll2	r7
    636c:	8b 12       	bf	6394 <___ratio+0x70>
    636e:	3a 7c       	add	r7,r10
    6370:	68 a3       	mov	r10,r8
    6372:	66 03       	mov	r0,r6
    6374:	d0 0a       	mov.l	63a0 <___ratio+0x7c>,r0	! 93a0 <___divdf3>
    6376:	64 83       	mov	r8,r4
    6378:	65 93       	mov	r9,r5
    637a:	40 0b       	jsr	@r0
    637c:	67 13       	mov	r1,r7
    637e:	7f 08       	add	#8,r15
    6380:	4f 26       	lds.l	@r15+,pr
    6382:	6e f6       	mov.l	@r15+,r14
    6384:	6d f6       	mov.l	@r15+,r13
    6386:	6c f6       	mov.l	@r15+,r12
    6388:	6b f6       	mov.l	@r15+,r11
    638a:	6a f6       	mov.l	@r15+,r10
    638c:	69 f6       	mov.l	@r15+,r9
    638e:	68 f6       	mov.l	@r15+,r8
    6390:	00 0b       	rts	
    6392:	00 09       	nop	
    6394:	32 78       	sub	r7,r2
    6396:	af ec       	bra	6372 <___ratio+0x4e>
    6398:	60 23       	mov	r2,r0
    639a:	00 09       	nop	
    639c:	00 00       	.word 0x0000
    639e:	60 d0       	mov.b	@r13,r0
    63a0:	00 00       	.word 0x0000
    63a2:	93 a0       	mov.w	64e6 <___any_on+0x9e>,r3	! b

000063a4 <__mprec_log10>:
    63a4:	2f 86       	mov.l	r8,@-r15
    63a6:	e1 17       	mov	#23,r1
    63a8:	2f 96       	mov.l	r9,@-r15
    63aa:	34 17       	cmp/gt	r1,r4
    63ac:	4f 22       	sts.l	pr,@-r15
    63ae:	68 43       	mov	r4,r8
    63b0:	8b 10       	bf	63d4 <__mprec_log10+0x30>
    63b2:	d0 0e       	mov.l	63ec <__mprec_log10+0x48>,r0	! 3ff00000
    63b4:	e1 00       	mov	#0,r1
    63b6:	d9 0e       	mov.l	63f0 <__mprec_log10+0x4c>,r9	! 914c <___muldf3>
    63b8:	64 03       	mov	r0,r4
    63ba:	65 13       	mov	r1,r5
    63bc:	d6 0d       	mov.l	63f4 <__mprec_log10+0x50>,r6	! 40240000
    63be:	e7 00       	mov	#0,r7
    63c0:	49 0b       	jsr	@r9
    63c2:	78 ff       	add	#-1,r8
    63c4:	28 88       	tst	r8,r8
    63c6:	8b f7       	bf	63b8 <__mprec_log10+0x14>
    63c8:	4f 26       	lds.l	@r15+,pr
    63ca:	69 f6       	mov.l	@r15+,r9
    63cc:	68 f6       	mov.l	@r15+,r8
    63ce:	00 0b       	rts	
    63d0:	00 09       	nop	
    63d2:	00 09       	nop	
    63d4:	d1 08       	mov.l	63f8 <__mprec_log10+0x54>,r1	! 9f04 <___mprec_tens>
    63d6:	48 08       	shll2	r8
    63d8:	38 8c       	add	r8,r8
    63da:	31 8c       	add	r8,r1
    63dc:	60 12       	mov.l	@r1,r0
    63de:	51 11       	mov.l	@(4,r1),r1
    63e0:	4f 26       	lds.l	@r15+,pr
    63e2:	69 f6       	mov.l	@r15+,r9
    63e4:	68 f6       	mov.l	@r15+,r8
    63e6:	00 0b       	rts	
    63e8:	00 09       	nop	
    63ea:	00 09       	nop	
    63ec:	3f f0       	cmp/eq	r15,r15
    63ee:	00 00       	.word 0x0000
    63f0:	00 00       	.word 0x0000
    63f2:	91 4c       	mov.w	648e <___any_on+0x46>,r1	! 8923
    63f4:	40 24       	rotcl	r0
    63f6:	00 00       	.word 0x0000
    63f8:	00 00       	.word 0x0000
    63fa:	9f 04       	mov.w	6406 <___copybits+0xa>,r15	! 4521

000063fc <___copybits>:
    63fc:	75 ff       	add	#-1,r5
    63fe:	45 21       	shar	r5
    6400:	57 64       	mov.l	@(16,r6),r7
    6402:	45 21       	shar	r5
    6404:	45 21       	shar	r5
    6406:	45 21       	shar	r5
    6408:	77 05       	add	#5,r7
    640a:	45 21       	shar	r5
    640c:	62 63       	mov	r6,r2
    640e:	47 08       	shll2	r7
    6410:	75 01       	add	#1,r5
    6412:	72 14       	add	#20,r2
    6414:	37 6c       	add	r6,r7
    6416:	45 08       	shll2	r5
    6418:	32 72       	cmp/hs	r7,r2
    641a:	35 4c       	add	r4,r5
    641c:	89 0b       	bt	6436 <___copybits+0x3a>
    641e:	61 43       	mov	r4,r1
    6420:	63 26       	mov.l	@r2+,r3
    6422:	37 26       	cmp/hi	r2,r7
    6424:	21 32       	mov.l	r3,@r1
    6426:	71 04       	add	#4,r1
    6428:	89 fa       	bt	6420 <___copybits+0x24>
    642a:	37 68       	sub	r6,r7
    642c:	77 eb       	add	#-21,r7
    642e:	47 09       	shlr2	r7
    6430:	77 01       	add	#1,r7
    6432:	47 08       	shll2	r7
    6434:	34 7c       	add	r7,r4
    6436:	35 46       	cmp/hi	r4,r5
    6438:	e1 00       	mov	#0,r1
    643a:	8b 03       	bf	6444 <___copybits+0x48>
    643c:	24 12       	mov.l	r1,@r4
    643e:	74 04       	add	#4,r4
    6440:	35 46       	cmp/hi	r4,r5
    6442:	89 fb       	bt	643c <___copybits+0x40>
    6444:	00 0b       	rts	
    6446:	00 09       	nop	

00006448 <___any_on>:
    6448:	2f 86       	mov.l	r8,@-r15
    644a:	61 53       	mov	r5,r1
    644c:	2f 96       	mov.l	r9,@-r15
    644e:	41 21       	shar	r1
    6450:	2f a6       	mov.l	r10,@-r15
    6452:	41 21       	shar	r1
    6454:	2f b6       	mov.l	r11,@-r15
    6456:	41 21       	shar	r1
    6458:	2f c6       	mov.l	r12,@-r15
    645a:	41 21       	shar	r1
    645c:	4f 22       	sts.l	pr,@-r15
    645e:	41 21       	shar	r1
    6460:	52 44       	mov.l	@(16,r4),r2
    6462:	68 43       	mov	r4,r8
    6464:	69 43       	mov	r4,r9
    6466:	32 13       	cmp/ge	r1,r2
    6468:	78 14       	add	#20,r8
    646a:	6c 23       	mov	r2,r12
    646c:	8b 02       	bf	6474 <___any_on+0x2c>
    646e:	32 17       	cmp/gt	r1,r2
    6470:	6c 13       	mov	r1,r12
    6472:	89 1b       	bt	64ac <___any_on+0x64>
    6474:	62 c3       	mov	r12,r2
    6476:	72 05       	add	#5,r2
    6478:	42 08       	shll2	r2
    647a:	32 9c       	add	r9,r2
    647c:	38 22       	cmp/hs	r2,r8
    647e:	89 2b       	bt	64d8 <___any_on+0x90>
    6480:	61 23       	mov	r2,r1
    6482:	72 c0       	add	#-64,r2
    6484:	52 2f       	mov.l	@(60,r2),r2
    6486:	71 fc       	add	#-4,r1
    6488:	22 28       	tst	r2,r2
    648a:	8b 05       	bf	6498 <___any_on+0x50>
    648c:	38 12       	cmp/hs	r1,r8
    648e:	89 23       	bt	64d8 <___any_on+0x90>
    6490:	71 fc       	add	#-4,r1
    6492:	62 12       	mov.l	@r1,r2
    6494:	22 28       	tst	r2,r2
    6496:	89 f9       	bt	648c <___any_on+0x44>
    6498:	e0 01       	mov	#1,r0
    649a:	4f 26       	lds.l	@r15+,pr
    649c:	6c f6       	mov.l	@r15+,r12
    649e:	6b f6       	mov.l	@r15+,r11
    64a0:	6a f6       	mov.l	@r15+,r10
    64a2:	69 f6       	mov.l	@r15+,r9
    64a4:	68 f6       	mov.l	@r15+,r8
    64a6:	00 0b       	rts	
    64a8:	00 09       	nop	
    64aa:	00 09       	nop	
    64ac:	ea 1f       	mov	#31,r10
    64ae:	2a 59       	and	r5,r10
    64b0:	2a a8       	tst	r10,r10
    64b2:	6c 13       	mov	r1,r12
    64b4:	89 de       	bt	6474 <___any_on+0x2c>
    64b6:	60 13       	mov	r1,r0
    64b8:	70 05       	add	#5,r0
    64ba:	40 08       	shll2	r0
    64bc:	0b 4e       	mov.l	@(r0,r4),r11
    64be:	65 a3       	mov	r10,r5
    64c0:	d0 0a       	mov.l	64ec <___any_on+0xa4>,r0	! 85a0 <___lshrsi3>
    64c2:	40 0b       	jsr	@r0
    64c4:	64 b3       	mov	r11,r4
    64c6:	64 03       	mov	r0,r4
    64c8:	d0 09       	mov.l	64f0 <___any_on+0xa8>,r0	! 8514 <___ashlsi3>
    64ca:	40 0b       	jsr	@r0
    64cc:	65 a3       	mov	r10,r5
    64ce:	30 b0       	cmp/eq	r11,r0
    64d0:	e0 01       	mov	#1,r0
    64d2:	8b e2       	bf	649a <___any_on+0x52>
    64d4:	af cf       	bra	6476 <___any_on+0x2e>
    64d6:	62 c3       	mov	r12,r2
    64d8:	e0 00       	mov	#0,r0
    64da:	4f 26       	lds.l	@r15+,pr
    64dc:	6c f6       	mov.l	@r15+,r12
    64de:	6b f6       	mov.l	@r15+,r11
    64e0:	6a f6       	mov.l	@r15+,r10
    64e2:	69 f6       	mov.l	@r15+,r9
    64e4:	68 f6       	mov.l	@r15+,r8
    64e6:	00 0b       	rts	
    64e8:	00 09       	nop	
    64ea:	00 09       	nop	
    64ec:	00 00       	.word 0x0000
    64ee:	85 a0       	mov.w	@(0,r10),r0
    64f0:	00 00       	.word 0x0000
    64f2:	85 14       	mov.w	@(8,r1),r0

000064f4 <___fpclassifyd>:
    64f4:	63 53       	mov	r5,r3
    64f6:	23 4b       	or	r4,r3
    64f8:	23 38       	tst	r3,r3
    64fa:	62 43       	mov	r4,r2
    64fc:	e0 02       	mov	#2,r0
    64fe:	8b 01       	bf	6504 <___fpclassifyd+0x10>
    6500:	00 0b       	rts	
    6502:	00 09       	nop	
    6504:	25 58       	tst	r5,r5
    6506:	03 29       	movt	r3
    6508:	8b 02       	bf	6510 <___fpclassifyd+0x1c>
    650a:	d1 0b       	mov.l	6538 <___fpclassifyd+0x44>,r1	! 80000000
    650c:	34 10       	cmp/eq	r1,r4
    650e:	89 f7       	bt	6500 <___fpclassifyd+0xc>
    6510:	d1 0a       	mov.l	653c <___fpclassifyd+0x48>,r1	! 7fffffff
    6512:	e0 04       	mov	#4,r0
    6514:	d7 0a       	mov.l	6540 <___fpclassifyd+0x4c>,r7	! 7fdfffff
    6516:	22 19       	and	r1,r2
    6518:	d1 0a       	mov.l	6544 <___fpclassifyd+0x50>,r1	! fff00000
    651a:	31 2c       	add	r2,r1
    651c:	31 76       	cmp/hi	r7,r1
    651e:	8b ef       	bf	6500 <___fpclassifyd+0xc>
    6520:	d1 09       	mov.l	6548 <___fpclassifyd+0x54>,r1	! fffff
    6522:	e0 03       	mov	#3,r0
    6524:	32 16       	cmp/hi	r1,r2
    6526:	8b eb       	bf	6500 <___fpclassifyd+0xc>
    6528:	d1 08       	mov.l	654c <___fpclassifyd+0x58>,r1	! 7ff00000
    652a:	32 10       	cmp/eq	r1,r2
    652c:	01 29       	movt	r1
    652e:	60 13       	mov	r1,r0
    6530:	23 09       	and	r0,r3
    6532:	00 0b       	rts	
    6534:	60 3c       	extu.b	r3,r0
    6536:	00 09       	nop	
    6538:	80 00       	mov.b	r0,@(0,r0)
    653a:	00 00       	.word 0x0000
    653c:	7f ff       	add	#-1,r15
    653e:	ff ff       	.word 0xffff
    6540:	7f df       	add	#-33,r15
    6542:	ff ff       	.word 0xffff
    6544:	ff f0       	.word 0xfff0
    6546:	00 00       	.word 0x0000
    6548:	00 0f       	.word 0x000f
    654a:	ff ff       	.word 0xffff
    654c:	7f f0       	add	#-16,r15
	...

00006550 <__sbrk_r>:
    6550:	2f 86       	mov.l	r8,@-r15
    6552:	e1 00       	mov	#0,r1
    6554:	d8 0c       	mov.l	6588 <__sbrk_r+0x38>,r8	! ad04 <_errno>
    6556:	d0 0d       	mov.l	658c <__sbrk_r+0x3c>,r0	! 15cc <__sbrk>
    6558:	2f 96       	mov.l	r9,@-r15
    655a:	69 43       	mov	r4,r9
    655c:	4f 22       	sts.l	pr,@-r15
    655e:	64 53       	mov	r5,r4
    6560:	40 0b       	jsr	@r0
    6562:	28 12       	mov.l	r1,@r8
    6564:	88 ff       	cmp/eq	#-1,r0
    6566:	89 05       	bt	6574 <__sbrk_r+0x24>
    6568:	4f 26       	lds.l	@r15+,pr
    656a:	69 f6       	mov.l	@r15+,r9
    656c:	68 f6       	mov.l	@r15+,r8
    656e:	00 0b       	rts	
    6570:	00 09       	nop	
    6572:	00 09       	nop	
    6574:	61 82       	mov.l	@r8,r1
    6576:	21 18       	tst	r1,r1
    6578:	89 f6       	bt	6568 <__sbrk_r+0x18>
    657a:	29 12       	mov.l	r1,@r9
    657c:	4f 26       	lds.l	@r15+,pr
    657e:	69 f6       	mov.l	@r15+,r9
    6580:	68 f6       	mov.l	@r15+,r8
    6582:	00 0b       	rts	
    6584:	00 09       	nop	
    6586:	00 09       	nop	
    6588:	00 00       	.word 0x0000
    658a:	ad 04       	bra	5f96 <___mdiff+0x66>
    658c:	00 00       	.word 0x0000
    658e:	15 cc       	mov.l	r12,@(48,r5)

00006590 <___sread>:
    6590:	2f 86       	mov.l	r8,@-r15
    6592:	61 53       	mov	r5,r1
    6594:	d0 0c       	mov.l	65c8 <___sread+0x38>,r0	! 7d7c <__read_r>
    6596:	71 0e       	add	#14,r1
    6598:	4f 22       	sts.l	pr,@-r15
    659a:	68 53       	mov	r5,r8
    659c:	40 0b       	jsr	@r0
    659e:	65 11       	mov.w	@r1,r5
    65a0:	40 11       	cmp/pz	r0
    65a2:	8b 07       	bf	65b4 <___sread+0x24>
    65a4:	78 40       	add	#64,r8
    65a6:	51 84       	mov.l	@(16,r8),r1
    65a8:	31 0c       	add	r0,r1
    65aa:	18 14       	mov.l	r1,@(16,r8)
    65ac:	4f 26       	lds.l	@r15+,pr
    65ae:	68 f6       	mov.l	@r15+,r8
    65b0:	00 0b       	rts	
    65b2:	00 09       	nop	
    65b4:	78 0c       	add	#12,r8
    65b6:	91 06       	mov.w	65c6 <___sread+0x36>,r1	! efff
    65b8:	62 81       	mov.w	@r8,r2
    65ba:	21 29       	and	r2,r1
    65bc:	28 11       	mov.w	r1,@r8
    65be:	4f 26       	lds.l	@r15+,pr
    65c0:	68 f6       	mov.l	@r15+,r8
    65c2:	00 0b       	rts	
    65c4:	00 09       	nop	
    65c6:	ef ff       	mov	#-1,r15
    65c8:	00 00       	.word 0x0000
    65ca:	7d 7c       	add	#124,r13

000065cc <___seofread>:
    65cc:	00 0b       	rts	
    65ce:	e0 00       	mov	#0,r0

000065d0 <___swrite>:
    65d0:	2f 86       	mov.l	r8,@-r15
    65d2:	68 53       	mov	r5,r8
    65d4:	2f 96       	mov.l	r9,@-r15
    65d6:	78 0c       	add	#12,r8
    65d8:	2f a6       	mov.l	r10,@-r15
    65da:	69 53       	mov	r5,r9
    65dc:	2f b6       	mov.l	r11,@-r15
    65de:	6a 43       	mov	r4,r10
    65e0:	2f c6       	mov.l	r12,@-r15
    65e2:	6b 73       	mov	r7,r11
    65e4:	4f 22       	sts.l	pr,@-r15
    65e6:	6c 63       	mov	r6,r12
    65e8:	92 19       	mov.w	661e <___swrite+0x4e>,r2	! 100
    65ea:	79 0e       	add	#14,r9
    65ec:	61 81       	mov.w	@r8,r1
    65ee:	21 28       	tst	r2,r1
    65f0:	89 05       	bt	65fe <___swrite+0x2e>
    65f2:	d0 0c       	mov.l	6624 <___swrite+0x54>,r0	! 7c58 <__lseek_r>
    65f4:	e6 00       	mov	#0,r6
    65f6:	65 91       	mov.w	@r9,r5
    65f8:	40 0b       	jsr	@r0
    65fa:	e7 02       	mov	#2,r7
    65fc:	61 81       	mov.w	@r8,r1
    65fe:	92 0f       	mov.w	6620 <___swrite+0x50>,r2	! efff
    6600:	64 a3       	mov	r10,r4
    6602:	d0 09       	mov.l	6628 <___swrite+0x58>,r0	! 750c <__write_r>
    6604:	21 29       	and	r2,r1
    6606:	65 91       	mov.w	@r9,r5
    6608:	66 c3       	mov	r12,r6
    660a:	67 b3       	mov	r11,r7
    660c:	28 11       	mov.w	r1,@r8
    660e:	4f 26       	lds.l	@r15+,pr
    6610:	6c f6       	mov.l	@r15+,r12
    6612:	6b f6       	mov.l	@r15+,r11
    6614:	6a f6       	mov.l	@r15+,r10
    6616:	69 f6       	mov.l	@r15+,r9
    6618:	68 f6       	mov.l	@r15+,r8
    661a:	40 2b       	jmp	@r0
    661c:	00 09       	nop	
    661e:	01 00       	.word 0x0100
    6620:	ef ff       	mov	#-1,r15
    6622:	00 09       	nop	
    6624:	00 00       	.word 0x0000
    6626:	7c 58       	add	#88,r12
    6628:	00 00       	.word 0x0000
    662a:	75 0c       	add	#12,r5

0000662c <___sseek>:
    662c:	2f 86       	mov.l	r8,@-r15
    662e:	61 53       	mov	r5,r1
    6630:	d0 0f       	mov.l	6670 <___sseek+0x44>,r0	! 7c58 <__lseek_r>
    6632:	71 0e       	add	#14,r1
    6634:	4f 22       	sts.l	pr,@-r15
    6636:	68 53       	mov	r5,r8
    6638:	40 0b       	jsr	@r0
    663a:	65 11       	mov.w	@r1,r5
    663c:	88 ff       	cmp/eq	#-1,r0
    663e:	89 0b       	bt	6658 <___sseek+0x2c>
    6640:	62 83       	mov	r8,r2
    6642:	72 0c       	add	#12,r2
    6644:	91 11       	mov.w	666a <___sseek+0x3e>,r1	! 1000
    6646:	78 40       	add	#64,r8
    6648:	63 21       	mov.w	@r2,r3
    664a:	21 3b       	or	r3,r1
    664c:	22 11       	mov.w	r1,@r2
    664e:	18 04       	mov.l	r0,@(16,r8)
    6650:	4f 26       	lds.l	@r15+,pr
    6652:	68 f6       	mov.l	@r15+,r8
    6654:	00 0b       	rts	
    6656:	00 09       	nop	
    6658:	78 0c       	add	#12,r8
    665a:	91 07       	mov.w	666c <___sseek+0x40>,r1	! efff
    665c:	62 81       	mov.w	@r8,r2
    665e:	21 29       	and	r2,r1
    6660:	28 11       	mov.w	r1,@r8
    6662:	4f 26       	lds.l	@r15+,pr
    6664:	68 f6       	mov.l	@r15+,r8
    6666:	00 0b       	rts	
    6668:	00 09       	nop	
    666a:	10 00       	mov.l	r0,@(0,r0)
    666c:	ef ff       	mov	#-1,r15
    666e:	00 09       	nop	
    6670:	00 00       	.word 0x0000
    6672:	7c 58       	add	#88,r12

00006674 <___sclose>:
    6674:	d0 01       	mov.l	667c <___sclose+0x8>,r0	! 75e8 <__close_r>
    6676:	75 0e       	add	#14,r5
    6678:	40 2b       	jmp	@r0
    667a:	65 51       	mov.w	@r5,r5
    667c:	00 00       	.word 0x0000
    667e:	75 e8       	add	#-24,r5

00006680 <_strcmp>:
    6680:	60 43       	mov	r4,r0
    6682:	20 5b       	or	r5,r0
    6684:	c8 03       	tst	#3,r0
    6686:	8b 09       	bf	669c <L_char_loop>
    6688:	e0 00       	mov	#0,r0
    668a:	00 09       	nop	

0000668c <Longword_loop>:
    668c:	61 46       	mov.l	@r4+,r1
    668e:	62 56       	mov.l	@r5+,r2
    6690:	21 0c       	cmp/str	r0,r1
    6692:	89 01       	bt	6698 <Longword_loop_end>
    6694:	32 10       	cmp/eq	r1,r2
    6696:	89 f9       	bt	668c <Longword_loop>

00006698 <Longword_loop_end>:
    6698:	74 fc       	add	#-4,r4
    669a:	75 fc       	add	#-4,r5

0000669c <L_char_loop>:
    669c:	60 44       	mov.b	@r4+,r0
    669e:	61 54       	mov.b	@r5+,r1
    66a0:	20 08       	tst	r0,r0
    66a2:	89 01       	bt	66a8 <L_return>
    66a4:	31 00       	cmp/eq	r0,r1
    66a6:	89 f9       	bt	669c <L_char_loop>

000066a8 <L_return>:
    66a8:	60 0c       	extu.b	r0,r0
    66aa:	61 1c       	extu.b	r1,r1
    66ac:	00 0b       	rts	
    66ae:	30 18       	sub	r1,r0

000066b0 <_strlen>:
    66b0:	e1 03       	mov	#3,r1
    66b2:	21 49       	and	r4,r1
    66b4:	21 18       	tst	r1,r1
    66b6:	60 43       	mov	r4,r0
    66b8:	8b 03       	bf	66c2 <L_char_loop>

000066ba <L_word_loop>:
    66ba:	63 06       	mov.l	@r0+,r3
    66bc:	23 1c       	cmp/str	r1,r3
    66be:	8b fc       	bf	66ba <L_word_loop>
    66c0:	70 fc       	add	#-4,r0

000066c2 <L_char_loop>:
    66c2:	63 04       	mov.b	@r0+,r3
    66c4:	23 38       	tst	r3,r3
    66c6:	8b fc       	bf	66c2 <L_char_loop>
    66c8:	70 ff       	add	#-1,r0
    66ca:	00 0b       	rts	
    66cc:	30 48       	sub	r4,r0
    66ce:	00 09       	nop	

000066d0 <___sprint_r>:
    66d0:	2f 86       	mov.l	r8,@-r15
    66d2:	2f 96       	mov.l	r9,@-r15
    66d4:	2f a6       	mov.l	r10,@-r15
    66d6:	6a 53       	mov	r5,r10
    66d8:	2f b6       	mov.l	r11,@-r15
    66da:	6b 43       	mov	r4,r11
    66dc:	2f c6       	mov.l	r12,@-r15
    66de:	2f d6       	mov.l	r13,@-r15
    66e0:	6d 63       	mov	r6,r13
    66e2:	2f e6       	mov.l	r14,@-r15
    66e4:	4f 22       	sts.l	pr,@-r15
    66e6:	52 62       	mov.l	@(8,r6),r2
    66e8:	7f f8       	add	#-8,r15
    66ea:	22 28       	tst	r2,r2
    66ec:	89 38       	bt	6760 <___sprint_r+0x90>
    66ee:	61 53       	mov	r5,r1
    66f0:	71 40       	add	#64,r1
    66f2:	53 19       	mov.l	@(36,r1),r3
    66f4:	91 47       	mov.w	6786 <___sprint_r+0xb6>,r1	! 2000
    66f6:	23 18       	tst	r1,r3
    66f8:	89 40       	bt	677c <___sprint_r+0xac>
    66fa:	61 62       	mov.l	@r6,r1
    66fc:	dc 22       	mov.l	6788 <___sprint_r+0xb8>,r12	! 7714 <__fputwc_r>
    66fe:	1f 11       	mov.l	r1,@(4,r15)
    6700:	51 f1       	mov.l	@(4,r15),r1
    6702:	e8 00       	mov	#0,r8
    6704:	61 12       	mov.l	@r1,r1
    6706:	2f 12       	mov.l	r1,@r15
    6708:	51 f1       	mov.l	@(4,r15),r1
    670a:	6e f2       	mov.l	@r15,r14
    670c:	59 11       	mov.l	@(4,r1),r9
    670e:	49 09       	shlr2	r9
    6710:	49 15       	cmp/pl	r9
    6712:	89 04       	bt	671e <___sprint_r+0x4e>
    6714:	a0 1b       	bra	674e <___sprint_r+0x7e>
    6716:	49 08       	shll2	r9
    6718:	78 01       	add	#1,r8
    671a:	39 80       	cmp/eq	r8,r9
    671c:	89 14       	bt	6748 <___sprint_r+0x78>
    671e:	64 b3       	mov	r11,r4
    6720:	65 e6       	mov.l	@r14+,r5
    6722:	4c 0b       	jsr	@r12
    6724:	66 a3       	mov	r10,r6
    6726:	88 ff       	cmp/eq	#-1,r0
    6728:	8b f6       	bf	6718 <___sprint_r+0x48>
    672a:	e0 ff       	mov	#-1,r0
    672c:	e1 00       	mov	#0,r1
    672e:	1d 12       	mov.l	r1,@(8,r13)
    6730:	1d 11       	mov.l	r1,@(4,r13)
    6732:	7f 08       	add	#8,r15
    6734:	4f 26       	lds.l	@r15+,pr
    6736:	6e f6       	mov.l	@r15+,r14
    6738:	6d f6       	mov.l	@r15+,r13
    673a:	6c f6       	mov.l	@r15+,r12
    673c:	6b f6       	mov.l	@r15+,r11
    673e:	6a f6       	mov.l	@r15+,r10
    6740:	69 f6       	mov.l	@r15+,r9
    6742:	68 f6       	mov.l	@r15+,r8
    6744:	00 0b       	rts	
    6746:	00 09       	nop	
    6748:	52 d2       	mov.l	@(8,r13),r2
    674a:	51 f1       	mov.l	@(4,r15),r1
    674c:	49 08       	shll2	r9
    674e:	32 98       	sub	r9,r2
    6750:	71 08       	add	#8,r1
    6752:	1d 22       	mov.l	r2,@(8,r13)
    6754:	22 28       	tst	r2,r2
    6756:	1f 11       	mov.l	r1,@(4,r15)
    6758:	8b d2       	bf	6700 <___sprint_r+0x30>
    675a:	af e7       	bra	672c <___sprint_r+0x5c>
    675c:	e0 00       	mov	#0,r0
    675e:	00 09       	nop	
    6760:	e0 00       	mov	#0,r0
    6762:	16 21       	mov.l	r2,@(4,r6)
    6764:	7f 08       	add	#8,r15
    6766:	4f 26       	lds.l	@r15+,pr
    6768:	6e f6       	mov.l	@r15+,r14
    676a:	6d f6       	mov.l	@r15+,r13
    676c:	6c f6       	mov.l	@r15+,r12
    676e:	6b f6       	mov.l	@r15+,r11
    6770:	6a f6       	mov.l	@r15+,r10
    6772:	69 f6       	mov.l	@r15+,r9
    6774:	68 f6       	mov.l	@r15+,r8
    6776:	00 0b       	rts	
    6778:	00 09       	nop	
    677a:	00 09       	nop	
    677c:	d0 03       	mov.l	678c <___sprint_r+0xbc>,r0	! 78cc <___sfvwrite_r>
    677e:	40 0b       	jsr	@r0
    6780:	00 09       	nop	
    6782:	af d4       	bra	672e <___sprint_r+0x5e>
    6784:	e1 00       	mov	#0,r1
    6786:	20 00       	mov.b	r0,@r0
    6788:	00 00       	.word 0x0000
    678a:	77 14       	add	#20,r7
    678c:	00 00       	.word 0x0000
    678e:	78 cc       	add	#-52,r8

00006790 <__vfiprintf_r>:
    6790:	2f 86       	mov.l	r8,@-r15
    6792:	24 48       	tst	r4,r4
    6794:	2f 96       	mov.l	r9,@-r15
    6796:	68 63       	mov	r6,r8
    6798:	2f a6       	mov.l	r10,@-r15
    679a:	2f b6       	mov.l	r11,@-r15
    679c:	2f c6       	mov.l	r12,@-r15
    679e:	2f d6       	mov.l	r13,@-r15
    67a0:	2f e6       	mov.l	r14,@-r15
    67a2:	91 54       	mov.w	684e <__vfiprintf_r+0xbe>,r1	! 4f0
    67a4:	4f 22       	sts.l	pr,@-r15
    67a6:	3f 18       	sub	r1,r15
    67a8:	1f 46       	mov.l	r4,@(24,r15)
    67aa:	1f 51       	mov.l	r5,@(4,r15)
    67ac:	1f 77       	mov.l	r7,@(28,r15)
    67ae:	89 05       	bt	67bc <__vfiprintf_r+0x2c>
    67b0:	51 4e       	mov.l	@(56,r4),r1
    67b2:	21 18       	tst	r1,r1
    67b4:	8b 02       	bf	67bc <__vfiprintf_r+0x2c>
    67b6:	a5 93       	bra	72e0 <__vfiprintf_r+0xb50>
    67b8:	00 09       	nop	
    67ba:	00 09       	nop	
    67bc:	52 f1       	mov.l	@(4,r15),r2
    67be:	91 47       	mov.w	6850 <__vfiprintf_r+0xc0>,r1	! 2000
    67c0:	72 0c       	add	#12,r2
    67c2:	67 21       	mov.w	@r2,r7
    67c4:	1f 2d       	mov.l	r2,@(52,r15)
    67c6:	27 18       	tst	r1,r7
    67c8:	8b 07       	bf	67da <__vfiprintf_r+0x4a>
    67ca:	27 1b       	or	r1,r7
    67cc:	22 71       	mov.w	r7,@r2
    67ce:	52 f1       	mov.l	@(4,r15),r2
    67d0:	93 3f       	mov.w	6852 <__vfiprintf_r+0xc2>,r3	! dfff
    67d2:	72 40       	add	#64,r2
    67d4:	51 29       	mov.l	@(36,r2),r1
    67d6:	21 39       	and	r3,r1
    67d8:	12 19       	mov.l	r1,@(36,r2)
    67da:	60 73       	mov	r7,r0
    67dc:	c8 08       	tst	#8,r0
    67de:	89 03       	bt	67e8 <__vfiprintf_r+0x58>
    67e0:	52 f1       	mov.l	@(4,r15),r2
    67e2:	51 24       	mov.l	@(16,r2),r1
    67e4:	21 18       	tst	r1,r1
    67e6:	8b 01       	bf	67ec <__vfiprintf_r+0x5c>
    67e8:	a4 fc       	bra	71e4 <__vfiprintf_r+0xa54>
    67ea:	54 f6       	mov.l	@(24,r15),r4
    67ec:	e1 1a       	mov	#26,r1
    67ee:	21 79       	and	r7,r1
    67f0:	60 13       	mov	r1,r0
    67f2:	88 0a       	cmp/eq	#10,r0
    67f4:	8b 02       	bf	67fc <__vfiprintf_r+0x6c>
    67f6:	a5 05       	bra	7204 <__vfiprintf_r+0xa74>
    67f8:	51 f1       	mov.l	@(4,r15),r1
    67fa:	00 09       	nop	
    67fc:	61 f3       	mov	r15,r1
    67fe:	e3 00       	mov	#0,r3
    6800:	71 54       	add	#84,r1
    6802:	92 27       	mov.w	6854 <__vfiprintf_r+0xc4>,r2	! f0
    6804:	e0 00       	mov	#0,r0
    6806:	11 32       	mov.l	r3,@(8,r1)
    6808:	32 fc       	add	r15,r2
    680a:	11 31       	mov.l	r3,@(4,r1)
    680c:	6c 23       	mov	r2,r12
    680e:	1f 3f       	mov.l	r3,@(60,r15)
    6810:	63 f3       	mov	r15,r3
    6812:	73 60       	add	#96,r3
    6814:	1f 3c       	mov.l	r3,@(48,r15)
    6816:	73 28       	add	#40,r3
    6818:	21 22       	mov.l	r2,@r1
    681a:	6b 83       	mov	r8,r11
    681c:	52 fc       	mov.l	@(48,r15),r2
    681e:	1f 05       	mov.l	r0,@(20,r15)
    6820:	72 27       	add	#39,r2
    6822:	e0 40       	mov	#64,r0
    6824:	30 fc       	add	r15,r0
    6826:	1f 3e       	mov.l	r3,@(56,r15)
    6828:	33 28       	sub	r2,r3
    682a:	10 20       	mov.l	r2,@(0,r0)
    682c:	10 32       	mov.l	r3,@(8,r0)
    682e:	62 b0       	mov.b	@r11,r2
    6830:	e1 ff       	mov	#-1,r1
    6832:	60 23       	mov	r2,r0
    6834:	88 25       	cmp/eq	#37,r0
    6836:	60 1a       	negc	r1,r0
    6838:	c8 ff       	tst	#-1,r0
    683a:	89 03       	bt	6844 <__vfiprintf_r+0xb4>
    683c:	22 28       	tst	r2,r2
    683e:	60 1a       	negc	r1,r0
    6840:	c8 ff       	tst	#-1,r0
    6842:	8b 01       	bf	6848 <__vfiprintf_r+0xb8>
    6844:	a4 29       	bra	709a <__vfiprintf_r+0x90a>
    6846:	68 b3       	mov	r11,r8
    6848:	62 b3       	mov	r11,r2
    684a:	a0 09       	bra	6860 <__vfiprintf_r+0xd0>
    684c:	72 01       	add	#1,r2
    684e:	04 f0       	.word 0x04f0
    6850:	20 00       	mov.b	r0,@r0
    6852:	df ff       	mov.l	6c50 <__vfiprintf_r+0x4c0>,r15	! 7101e207
    6854:	00 f0       	.word 0x00f0
    6856:	00 09       	nop	
    6858:	23 38       	tst	r3,r3
    685a:	60 1a       	negc	r1,r0
    685c:	c8 ff       	tst	#-1,r0
    685e:	89 06       	bt	686e <__vfiprintf_r+0xde>
    6860:	68 23       	mov	r2,r8
    6862:	63 24       	mov.b	@r2+,r3
    6864:	60 33       	mov	r3,r0
    6866:	88 25       	cmp/eq	#37,r0
    6868:	60 1a       	negc	r1,r0
    686a:	c8 ff       	tst	#-1,r0
    686c:	8b f4       	bf	6858 <__vfiprintf_r+0xc8>
    686e:	69 83       	mov	r8,r9
    6870:	39 b8       	sub	r11,r9
    6872:	29 98       	tst	r9,r9
    6874:	89 12       	bt	689c <__vfiprintf_r+0x10c>
    6876:	66 f3       	mov	r15,r6
    6878:	76 54       	add	#84,r6
    687a:	51 62       	mov.l	@(8,r6),r1
    687c:	e2 07       	mov	#7,r2
    687e:	2c b2       	mov.l	r11,@r12
    6880:	31 9c       	add	r9,r1
    6882:	16 12       	mov.l	r1,@(8,r6)
    6884:	51 61       	mov.l	@(4,r6),r1
    6886:	1c 91       	mov.l	r9,@(4,r12)
    6888:	71 01       	add	#1,r1
    688a:	16 11       	mov.l	r1,@(4,r6)
    688c:	31 27       	cmp/gt	r2,r1
    688e:	8b 01       	bf	6894 <__vfiprintf_r+0x104>
    6890:	a4 f8       	bra	7284 <__vfiprintf_r+0xaf4>
    6892:	54 f6       	mov.l	@(24,r15),r4
    6894:	7c 08       	add	#8,r12
    6896:	50 f5       	mov.l	@(20,r15),r0
    6898:	30 9c       	add	r9,r0
    689a:	1f 05       	mov.l	r0,@(20,r15)
    689c:	61 80       	mov.b	@r8,r1
    689e:	21 18       	tst	r1,r1
    68a0:	89 1a       	bt	68d8 <__vfiprintf_r+0x148>
    68a2:	6b 83       	mov	r8,r11
    68a4:	7b 01       	add	#1,r11
    68a6:	61 f3       	mov	r15,r1
    68a8:	e2 00       	mov	#0,r2
    68aa:	71 4f       	add	#79,r1
    68ac:	60 b0       	mov.b	@r11,r0
    68ae:	e3 00       	mov	#0,r3
    68b0:	21 20       	mov.b	r2,@r1
    68b2:	e2 00       	mov	#0,r2
    68b4:	1f 28       	mov.l	r2,@(32,r15)
    68b6:	e6 00       	mov	#0,r6
    68b8:	2f 32       	mov.l	r3,@r15
    68ba:	ee ff       	mov	#-1,r14
    68bc:	e2 58       	mov	#88,r2
    68be:	e7 09       	mov	#9,r7
    68c0:	63 03       	mov	r0,r3
    68c2:	61 33       	mov	r3,r1
    68c4:	7b 01       	add	#1,r11
    68c6:	63 13       	mov	r1,r3
    68c8:	73 e0       	add	#-32,r3
    68ca:	33 26       	cmp/hi	r2,r3
    68cc:	8b 16       	bf	68fc <__vfiprintf_r+0x16c>
    68ce:	62 f3       	mov	r15,r2
    68d0:	72 4f       	add	#79,r2
    68d2:	22 60       	mov.b	r6,@r2
    68d4:	21 18       	tst	r1,r1
    68d6:	8b 01       	bf	68dc <__vfiprintf_r+0x14c>
    68d8:	a3 f2       	bra	70c0 <__vfiprintf_r+0x930>
    68da:	66 f3       	mov	r15,r6
    68dc:	93 14       	mov.w	6908 <__vfiprintf_r+0x178>,r3	! 4f0
    68de:	90 14       	mov.w	690a <__vfiprintf_r+0x17a>,r0	! fb70
    68e0:	33 fc       	add	r15,r3
    68e2:	03 14       	mov.b	r1,@(r0,r3)
    68e4:	e1 00       	mov	#0,r1
    68e6:	22 10       	mov.b	r1,@r2
    68e8:	e0 01       	mov	#1,r0
    68ea:	52 fc       	mov.l	@(48,r15),r2
    68ec:	e1 01       	mov	#1,r1
    68ee:	e3 00       	mov	#0,r3
    68f0:	1f 12       	mov.l	r1,@(8,r15)
    68f2:	1f 03       	mov.l	r0,@(12,r15)
    68f4:	1f 2a       	mov.l	r2,@(40,r15)
    68f6:	a0 d1       	bra	6a9c <__vfiprintf_r+0x30c>
    68f8:	1f 34       	mov.l	r3,@(16,r15)
    68fa:	00 09       	nop	
    68fc:	c7 03       	mova	690c <__vfiprintf_r+0x17c>,r0
    68fe:	33 3c       	add	r3,r3
    6900:	03 3d       	mov.w	@(r0,r3),r3
    6902:	33 0c       	add	r0,r3
    6904:	43 2b       	jmp	@r3
    6906:	00 09       	nop	
    6908:	04 f0       	.word 0x04f0
    690a:	fb 70       	.word 0xfb70
    690c:	06 a0       	.word 0x06a0
    690e:	ff c2       	.word 0xffc2
    6910:	ff c2       	.word 0xffc2
    6912:	06 94       	mov.b	r9,@(r0,r6)
    6914:	ff c2       	.word 0xffc2
    6916:	ff c2       	.word 0xffc2
    6918:	ff c2       	.word 0xffc2
    691a:	ff c2       	.word 0xffc2
    691c:	ff c2       	.word 0xffc2
    691e:	ff c2       	.word 0xffc2
    6920:	04 64       	mov.b	r6,@(r0,r4)
    6922:	06 8c       	mov.b	@(r0,r8),r6
    6924:	ff c2       	.word 0xffc2
    6926:	04 80       	.word 0x0480
    6928:	06 dc       	mov.b	@(r0,r13),r6
    692a:	ff c2       	.word 0xffc2
    692c:	06 d0       	.word 0x06d0
    692e:	06 ac       	mov.b	@(r0,r10),r6
    6930:	06 ac       	mov.b	@(r0,r10),r6
    6932:	06 ac       	mov.b	@(r0,r10),r6
    6934:	06 ac       	mov.b	@(r0,r10),r6
    6936:	06 ac       	mov.b	@(r0,r10),r6
    6938:	06 ac       	mov.b	@(r0,r10),r6
    693a:	06 ac       	mov.b	@(r0,r10),r6
    693c:	06 ac       	mov.b	@(r0,r10),r6
    693e:	06 ac       	mov.b	@(r0,r10),r6
    6940:	ff c2       	.word 0xffc2
    6942:	ff c2       	.word 0xffc2
    6944:	ff c2       	.word 0xffc2
    6946:	ff c2       	.word 0xffc2
    6948:	ff c2       	.word 0xffc2
    694a:	ff c2       	.word 0xffc2
    694c:	ff c2       	.word 0xffc2
    694e:	ff c2       	.word 0xffc2
    6950:	ff c2       	.word 0xffc2
    6952:	ff c2       	.word 0xffc2
    6954:	06 24       	mov.b	r2,@(r0,r6)
    6956:	ff c2       	.word 0xffc2
    6958:	ff c2       	.word 0xffc2
    695a:	ff c2       	.word 0xffc2
    695c:	ff c2       	.word 0xffc2
    695e:	ff c2       	.word 0xffc2
    6960:	ff c2       	.word 0xffc2
    6962:	ff c2       	.word 0xffc2
    6964:	ff c2       	.word 0xffc2
    6966:	ff c2       	.word 0xffc2
    6968:	ff c2       	.word 0xffc2
    696a:	04 38       	.word 0x0438
    696c:	ff c2       	.word 0xffc2
    696e:	ff c2       	.word 0xffc2
    6970:	ff c2       	.word 0xffc2
    6972:	ff c2       	.word 0xffc2
    6974:	ff c2       	.word 0xffc2
    6976:	00 b4       	mov.b	r11,@(r0,r0)
    6978:	ff c2       	.word 0xffc2
    697a:	ff c2       	.word 0xffc2
    697c:	05 dc       	mov.b	@(r0,r13),r5
    697e:	ff c2       	.word 0xffc2
    6980:	ff c2       	.word 0xffc2
    6982:	ff c2       	.word 0xffc2
    6984:	ff c2       	.word 0xffc2
    6986:	ff c2       	.word 0xffc2
    6988:	ff c2       	.word 0xffc2
    698a:	ff c2       	.word 0xffc2
    698c:	ff c2       	.word 0xffc2
    698e:	ff c2       	.word 0xffc2
    6990:	ff c2       	.word 0xffc2
    6992:	05 b0       	.word 0x05b0
    6994:	05 78       	.word 0x0578
    6996:	ff c2       	.word 0xffc2
    6998:	ff c2       	.word 0xffc2
    699a:	ff c2       	.word 0xffc2
    699c:	05 6c       	mov.b	@(r0,r6),r5
    699e:	05 78       	.word 0x0578
    69a0:	ff c2       	.word 0xffc2
    69a2:	ff c2       	.word 0xffc2
    69a4:	05 58       	.word 0x0558
    69a6:	ff c2       	.word 0xffc2
    69a8:	07 18       	.word 0x0718
    69aa:	04 3e       	mov.l	@(r0,r3),r4
    69ac:	05 28       	.word 0x0528
    69ae:	05 1c       	mov.b	@(r0,r1),r5
    69b0:	ff c2       	.word 0xffc2
    69b2:	04 8c       	mov.b	@(r0,r8),r4
    69b4:	ff c2       	.word 0xffc2
    69b6:	00 ba       	.word 0x00ba
    69b8:	ff c2       	.word 0xffc2
    69ba:	ff c2       	.word 0xffc2
    69bc:	04 e0       	.word 0x04e0
    69be:	00 09       	nop	
    69c0:	60 f2       	mov.l	@r15,r0
    69c2:	cb 10       	or	#16,r0
    69c4:	2f 02       	mov.l	r0,@r15
    69c6:	60 f2       	mov.l	@r15,r0
    69c8:	c8 20       	tst	#32,r0
    69ca:	8b 01       	bf	69d0 <__vfiprintf_r+0x240>
    69cc:	a4 ac       	bra	7328 <__vfiprintf_r+0xb98>
    69ce:	c8 10       	tst	#16,r0
    69d0:	52 f7       	mov.l	@(28,r15),r2
    69d2:	e3 01       	mov	#1,r3
    69d4:	68 22       	mov.l	@r2,r8
    69d6:	59 21       	mov.l	@(4,r2),r9
    69d8:	61 83       	mov	r8,r1
    69da:	72 08       	add	#8,r2
    69dc:	21 9b       	or	r9,r1
    69de:	21 18       	tst	r1,r1
    69e0:	e1 ff       	mov	#-1,r1
    69e2:	61 1a       	negc	r1,r1
    69e4:	1f 27       	mov.l	r2,@(28,r15)
    69e6:	67 1c       	extu.b	r1,r7
    69e8:	61 f3       	mov	r15,r1
    69ea:	71 4f       	add	#79,r1
    69ec:	e6 00       	mov	#0,r6
    69ee:	21 60       	mov.b	r6,@r1
    69f0:	ea 00       	mov	#0,r10
    69f2:	4e 11       	cmp/pz	r14
    69f4:	8b 03       	bf	69fe <__vfiprintf_r+0x26e>
    69f6:	60 f2       	mov.l	@r15,r0
    69f8:	91 71       	mov.w	6ade <__vfiprintf_r+0x34e>,r1	! ff7f
    69fa:	20 19       	and	r1,r0
    69fc:	2f 02       	mov.l	r0,@r15
    69fe:	2e e8       	tst	r14,r14
    6a00:	e0 ff       	mov	#-1,r0
    6a02:	60 0a       	negc	r0,r0
    6a04:	c8 ff       	tst	#-1,r0
    6a06:	8b 03       	bf	6a10 <__vfiprintf_r+0x280>
    6a08:	27 78       	tst	r7,r7
    6a0a:	8b 01       	bf	6a10 <__vfiprintf_r+0x280>
    6a0c:	a3 48       	bra	70a0 <__vfiprintf_r+0x910>
    6a0e:	23 38       	tst	r3,r3
    6a10:	60 33       	mov	r3,r0
    6a12:	88 01       	cmp/eq	#1,r0
    6a14:	8b 02       	bf	6a1c <__vfiprintf_r+0x28c>
    6a16:	a4 69       	bra	72ec <__vfiprintf_r+0xb5c>
    6a18:	28 88       	tst	r8,r8
    6a1a:	00 09       	nop	
    6a1c:	88 02       	cmp/eq	#2,r0
    6a1e:	8b 01       	bf	6a24 <__vfiprintf_r+0x294>
    6a20:	a1 6e       	bra	6d00 <__vfiprintf_r+0x570>
    6a22:	53 fe       	mov.l	@(56,r15),r3
    6a24:	52 fe       	mov.l	@(56,r15),r2
    6a26:	60 93       	mov	r9,r0
    6a28:	1f 2a       	mov.l	r2,@(40,r15)
    6a2a:	67 83       	mov	r8,r7
    6a2c:	47 28       	shll16	r7
    6a2e:	47 01       	shlr	r7
    6a30:	61 03       	mov	r0,r1
    6a32:	47 09       	shlr2	r7
    6a34:	41 09       	shlr2	r1
    6a36:	47 28       	shll16	r7
    6a38:	41 01       	shlr	r1
    6a3a:	21 7b       	or	r7,r1
    6a3c:	e3 07       	mov	#7,r3
    6a3e:	67 83       	mov	r8,r7
    6a40:	23 09       	and	r0,r3
    6a42:	47 09       	shlr2	r7
    6a44:	47 01       	shlr	r7
    6a46:	73 30       	add	#48,r3
    6a48:	22 34       	mov.b	r3,@-r2
    6a4a:	27 78       	tst	r7,r7
    6a4c:	68 73       	mov	r7,r8
    6a4e:	60 13       	mov	r1,r0
    6a50:	8b eb       	bf	6a2a <__vfiprintf_r+0x29a>
    6a52:	21 18       	tst	r1,r1
    6a54:	8b e9       	bf	6a2a <__vfiprintf_r+0x29a>
    6a56:	60 f2       	mov.l	@r15,r0
    6a58:	61 23       	mov	r2,r1
    6a5a:	1f 2a       	mov.l	r2,@(40,r15)
    6a5c:	c8 01       	tst	#1,r0
    6a5e:	8b 01       	bf	6a64 <__vfiprintf_r+0x2d4>
    6a60:	a1 68       	bra	6d34 <__vfiprintf_r+0x5a4>
    6a62:	51 fe       	mov.l	@(56,r15),r1
    6a64:	60 33       	mov	r3,r0
    6a66:	88 30       	cmp/eq	#48,r0
    6a68:	8b 02       	bf	6a70 <__vfiprintf_r+0x2e0>
    6a6a:	a5 21       	bra	74b0 <__vfiprintf_r+0xd20>
    6a6c:	51 fe       	mov.l	@(56,r15),r1
    6a6e:	00 09       	nop	
    6a70:	53 fa       	mov.l	@(40,r15),r3
    6a72:	71 ff       	add	#-1,r1
    6a74:	50 fe       	mov.l	@(56,r15),r0
    6a76:	73 ff       	add	#-1,r3
    6a78:	e2 30       	mov	#48,r2
    6a7a:	30 38       	sub	r3,r0
    6a7c:	1f 3a       	mov.l	r3,@(40,r15)
    6a7e:	21 20       	mov.b	r2,@r1
    6a80:	1f 03       	mov.l	r0,@(12,r15)
    6a82:	00 09       	nop	
    6a84:	1f e4       	mov.l	r14,@(16,r15)
    6a86:	50 f3       	mov.l	@(12,r15),r0
    6a88:	51 f4       	mov.l	@(16,r15),r1
    6a8a:	1f 02       	mov.l	r0,@(8,r15)
    6a8c:	30 13       	cmp/ge	r1,r0
    6a8e:	89 00       	bt	6a92 <__vfiprintf_r+0x302>
    6a90:	1f 12       	mov.l	r1,@(8,r15)
    6a92:	2a a8       	tst	r10,r10
    6a94:	89 02       	bt	6a9c <__vfiprintf_r+0x30c>
    6a96:	52 f2       	mov.l	@(8,r15),r2
    6a98:	72 01       	add	#1,r2
    6a9a:	1f 22       	mov.l	r2,@(8,r15)
    6a9c:	60 f2       	mov.l	@r15,r0
    6a9e:	c9 02       	and	#2,r0
    6aa0:	1f 09       	mov.l	r0,@(36,r15)
    6aa2:	20 08       	tst	r0,r0
    6aa4:	89 02       	bt	6aac <__vfiprintf_r+0x31c>
    6aa6:	51 f2       	mov.l	@(8,r15),r1
    6aa8:	71 02       	add	#2,r1
    6aaa:	1f 12       	mov.l	r1,@(8,r15)
    6aac:	60 f2       	mov.l	@r15,r0
    6aae:	c9 84       	and	#-124,r0
    6ab0:	1f 0b       	mov.l	r0,@(44,r15)
    6ab2:	20 08       	tst	r0,r0
    6ab4:	8b 45       	bf	6b42 <__vfiprintf_r+0x3b2>
    6ab6:	5d f8       	mov.l	@(32,r15),r13
    6ab8:	51 f2       	mov.l	@(8,r15),r1
    6aba:	3d 18       	sub	r1,r13
    6abc:	4d 15       	cmp/pl	r13
    6abe:	8b 40       	bf	6b42 <__vfiprintf_r+0x3b2>
    6ac0:	e2 10       	mov	#16,r2
    6ac2:	3d 27       	cmp/gt	r2,r13
    6ac4:	da 06       	mov.l	6ae0 <__vfiprintf_r+0x350>,r10	! 9fd8 <_blanks.3983>
    6ac6:	8b 2b       	bf	6b20 <__vfiprintf_r+0x390>
    6ac8:	68 f3       	mov	r15,r8
    6aca:	e0 44       	mov	#68,r0
    6acc:	0f b6       	mov.l	r11,@(r0,r15)
    6ace:	62 c3       	mov	r12,r2
    6ad0:	ee 10       	mov	#16,r14
    6ad2:	6c a3       	mov	r10,r12
    6ad4:	78 54       	add	#84,r8
    6ad6:	e9 07       	mov	#7,r9
    6ad8:	5b f1       	mov.l	@(4,r15),r11
    6ada:	a0 07       	bra	6aec <__vfiprintf_r+0x35c>
    6adc:	5a f6       	mov.l	@(24,r15),r10
    6ade:	ff 7f       	.word 0xff7f
    6ae0:	00 00       	.word 0x0000
    6ae2:	9f d8       	mov.w	6c96 <__vfiprintf_r+0x506>,r15	! 3bc7
    6ae4:	7d f0       	add	#-16,r13
    6ae6:	3d e7       	cmp/gt	r14,r13
    6ae8:	72 08       	add	#8,r2
    6aea:	8b 15       	bf	6b18 <__vfiprintf_r+0x388>
    6aec:	51 82       	mov.l	@(8,r8),r1
    6aee:	22 c2       	mov.l	r12,@r2
    6af0:	71 10       	add	#16,r1
    6af2:	18 12       	mov.l	r1,@(8,r8)
    6af4:	51 81       	mov.l	@(4,r8),r1
    6af6:	12 e1       	mov.l	r14,@(4,r2)
    6af8:	71 01       	add	#1,r1
    6afa:	18 11       	mov.l	r1,@(4,r8)
    6afc:	31 97       	cmp/gt	r9,r1
    6afe:	8b f1       	bf	6ae4 <__vfiprintf_r+0x354>
    6b00:	d3 34       	mov.l	6bd4 <__vfiprintf_r+0x444>,r3	! 66d0 <___sprint_r>
    6b02:	64 a3       	mov	r10,r4
    6b04:	65 b3       	mov	r11,r5
    6b06:	43 0b       	jsr	@r3
    6b08:	66 83       	mov	r8,r6
    6b0a:	20 08       	tst	r0,r0
    6b0c:	8b 7b       	bf	6c06 <__vfiprintf_r+0x476>
    6b0e:	92 5e       	mov.w	6bce <__vfiprintf_r+0x43e>,r2	! f0
    6b10:	7d f0       	add	#-16,r13
    6b12:	3d e7       	cmp/gt	r14,r13
    6b14:	32 fc       	add	r15,r2
    6b16:	89 e9       	bt	6aec <__vfiprintf_r+0x35c>
    6b18:	e0 44       	mov	#68,r0
    6b1a:	0b fe       	mov.l	@(r0,r15),r11
    6b1c:	6a c3       	mov	r12,r10
    6b1e:	6c 23       	mov	r2,r12
    6b20:	66 f3       	mov	r15,r6
    6b22:	76 54       	add	#84,r6
    6b24:	52 62       	mov.l	@(8,r6),r2
    6b26:	51 61       	mov.l	@(4,r6),r1
    6b28:	32 dc       	add	r13,r2
    6b2a:	16 22       	mov.l	r2,@(8,r6)
    6b2c:	71 01       	add	#1,r1
    6b2e:	e2 07       	mov	#7,r2
    6b30:	2c a2       	mov.l	r10,@r12
    6b32:	31 27       	cmp/gt	r2,r1
    6b34:	1c d1       	mov.l	r13,@(4,r12)
    6b36:	16 11       	mov.l	r1,@(4,r6)
    6b38:	8b 02       	bf	6b40 <__vfiprintf_r+0x3b0>
    6b3a:	a4 27       	bra	738c <__vfiprintf_r+0xbfc>
    6b3c:	54 f6       	mov.l	@(24,r15),r4
    6b3e:	00 09       	nop	
    6b40:	7c 08       	add	#8,r12
    6b42:	61 f3       	mov	r15,r1
    6b44:	71 4f       	add	#79,r1
    6b46:	62 10       	mov.b	@r1,r2
    6b48:	22 28       	tst	r2,r2
    6b4a:	89 10       	bt	6b6e <__vfiprintf_r+0x3de>
    6b4c:	66 f3       	mov	r15,r6
    6b4e:	76 54       	add	#84,r6
    6b50:	2c 12       	mov.l	r1,@r12
    6b52:	e1 01       	mov	#1,r1
    6b54:	1c 11       	mov.l	r1,@(4,r12)
    6b56:	e2 07       	mov	#7,r2
    6b58:	51 62       	mov.l	@(8,r6),r1
    6b5a:	71 01       	add	#1,r1
    6b5c:	16 12       	mov.l	r1,@(8,r6)
    6b5e:	51 61       	mov.l	@(4,r6),r1
    6b60:	71 01       	add	#1,r1
    6b62:	16 11       	mov.l	r1,@(4,r6)
    6b64:	31 27       	cmp/gt	r2,r1
    6b66:	8b 01       	bf	6b6c <__vfiprintf_r+0x3dc>
    6b68:	a3 9c       	bra	72a4 <__vfiprintf_r+0xb14>
    6b6a:	54 f6       	mov.l	@(24,r15),r4
    6b6c:	7c 08       	add	#8,r12
    6b6e:	50 f9       	mov.l	@(36,r15),r0
    6b70:	20 08       	tst	r0,r0
    6b72:	89 12       	bt	6b9a <__vfiprintf_r+0x40a>
    6b74:	61 f3       	mov	r15,r1
    6b76:	71 50       	add	#80,r1
    6b78:	66 f3       	mov	r15,r6
    6b7a:	76 54       	add	#84,r6
    6b7c:	2c 12       	mov.l	r1,@r12
    6b7e:	e1 02       	mov	#2,r1
    6b80:	1c 11       	mov.l	r1,@(4,r12)
    6b82:	e2 07       	mov	#7,r2
    6b84:	51 62       	mov.l	@(8,r6),r1
    6b86:	71 02       	add	#2,r1
    6b88:	16 12       	mov.l	r1,@(8,r6)
    6b8a:	51 61       	mov.l	@(4,r6),r1
    6b8c:	71 01       	add	#1,r1
    6b8e:	16 11       	mov.l	r1,@(4,r6)
    6b90:	31 27       	cmp/gt	r2,r1
    6b92:	8b 01       	bf	6b98 <__vfiprintf_r+0x408>
    6b94:	a3 9c       	bra	72d0 <__vfiprintf_r+0xb40>
    6b96:	54 f6       	mov.l	@(24,r15),r4
    6b98:	7c 08       	add	#8,r12
    6b9a:	91 19       	mov.w	6bd0 <__vfiprintf_r+0x440>,r1	! 80
    6b9c:	50 fb       	mov.l	@(44,r15),r0
    6b9e:	30 10       	cmp/eq	r1,r0
    6ba0:	8b 02       	bf	6ba8 <__vfiprintf_r+0x418>
    6ba2:	a2 bd       	bra	7120 <__vfiprintf_r+0x990>
    6ba4:	5e f8       	mov.l	@(32,r15),r14
    6ba6:	00 09       	nop	
    6ba8:	5e f4       	mov.l	@(16,r15),r14
    6baa:	50 f3       	mov.l	@(12,r15),r0
    6bac:	3e 08       	sub	r0,r14
    6bae:	4e 15       	cmp/pl	r14
    6bb0:	8b 45       	bf	6c3e <__vfiprintf_r+0x4ae>
    6bb2:	e1 10       	mov	#16,r1
    6bb4:	3e 17       	cmp/gt	r1,r14
    6bb6:	da 08       	mov.l	6bd8 <__vfiprintf_r+0x448>,r10	! 9fe8 <_zeroes.3984>
    6bb8:	8b 30       	bf	6c1c <__vfiprintf_r+0x48c>
    6bba:	68 f3       	mov	r15,r8
    6bbc:	1f b4       	mov.l	r11,@(16,r15)
    6bbe:	62 c3       	mov	r12,r2
    6bc0:	e9 10       	mov	#16,r9
    6bc2:	6c a3       	mov	r10,r12
    6bc4:	78 54       	add	#84,r8
    6bc6:	ed 07       	mov	#7,r13
    6bc8:	5b f1       	mov.l	@(4,r15),r11
    6bca:	a0 0b       	bra	6be4 <__vfiprintf_r+0x454>
    6bcc:	5a f6       	mov.l	@(24,r15),r10
    6bce:	00 f0       	.word 0x00f0
    6bd0:	00 80       	.word 0x0080
    6bd2:	00 09       	nop	
    6bd4:	00 00       	.word 0x0000
    6bd6:	66 d0       	mov.b	@r13,r6
    6bd8:	00 00       	.word 0x0000
    6bda:	9f e8       	mov.w	6dae <__vfiprintf_r+0x61e>,r15	! a36f
    6bdc:	7e f0       	add	#-16,r14
    6bde:	3e 97       	cmp/gt	r9,r14
    6be0:	72 08       	add	#8,r2
    6be2:	8b 18       	bf	6c16 <__vfiprintf_r+0x486>
    6be4:	51 82       	mov.l	@(8,r8),r1
    6be6:	22 c2       	mov.l	r12,@r2
    6be8:	71 10       	add	#16,r1
    6bea:	18 12       	mov.l	r1,@(8,r8)
    6bec:	51 81       	mov.l	@(4,r8),r1
    6bee:	12 91       	mov.l	r9,@(4,r2)
    6bf0:	71 01       	add	#1,r1
    6bf2:	18 11       	mov.l	r1,@(4,r8)
    6bf4:	31 d7       	cmp/gt	r13,r1
    6bf6:	8b f1       	bf	6bdc <__vfiprintf_r+0x44c>
    6bf8:	d1 50       	mov.l	6d3c <__vfiprintf_r+0x5ac>,r1	! 66d0 <___sprint_r>
    6bfa:	64 a3       	mov	r10,r4
    6bfc:	65 b3       	mov	r11,r5
    6bfe:	41 0b       	jsr	@r1
    6c00:	66 83       	mov	r8,r6
    6c02:	20 08       	tst	r0,r0
    6c04:	89 02       	bt	6c0c <__vfiprintf_r+0x47c>
    6c06:	a2 64       	bra	70d2 <__vfiprintf_r+0x942>
    6c08:	52 fd       	mov.l	@(52,r15),r2
    6c0a:	00 09       	nop	
    6c0c:	92 95       	mov.w	6d3a <__vfiprintf_r+0x5aa>,r2	! f0
    6c0e:	7e f0       	add	#-16,r14
    6c10:	3e 97       	cmp/gt	r9,r14
    6c12:	32 fc       	add	r15,r2
    6c14:	89 e6       	bt	6be4 <__vfiprintf_r+0x454>
    6c16:	5b f4       	mov.l	@(16,r15),r11
    6c18:	6a c3       	mov	r12,r10
    6c1a:	6c 23       	mov	r2,r12
    6c1c:	66 f3       	mov	r15,r6
    6c1e:	76 54       	add	#84,r6
    6c20:	51 62       	mov.l	@(8,r6),r1
    6c22:	e2 07       	mov	#7,r2
    6c24:	2c a2       	mov.l	r10,@r12
    6c26:	31 ec       	add	r14,r1
    6c28:	16 12       	mov.l	r1,@(8,r6)
    6c2a:	51 61       	mov.l	@(4,r6),r1
    6c2c:	1c e1       	mov.l	r14,@(4,r12)
    6c2e:	71 01       	add	#1,r1
    6c30:	16 11       	mov.l	r1,@(4,r6)
    6c32:	31 27       	cmp/gt	r2,r1
    6c34:	8b 02       	bf	6c3c <__vfiprintf_r+0x4ac>
    6c36:	a3 2d       	bra	7294 <__vfiprintf_r+0xb04>
    6c38:	54 f6       	mov.l	@(24,r15),r4
    6c3a:	00 09       	nop	
    6c3c:	7c 08       	add	#8,r12
    6c3e:	66 f3       	mov	r15,r6
    6c40:	76 54       	add	#84,r6
    6c42:	50 f3       	mov.l	@(12,r15),r0
    6c44:	51 62       	mov.l	@(8,r6),r1
    6c46:	52 fa       	mov.l	@(40,r15),r2
    6c48:	31 0c       	add	r0,r1
    6c4a:	16 12       	mov.l	r1,@(8,r6)
    6c4c:	51 61       	mov.l	@(4,r6),r1
    6c4e:	2c 22       	mov.l	r2,@r12
    6c50:	71 01       	add	#1,r1
    6c52:	e2 07       	mov	#7,r2
    6c54:	1c 01       	mov.l	r0,@(4,r12)
    6c56:	31 27       	cmp/gt	r2,r1
    6c58:	16 11       	mov.l	r1,@(4,r6)
    6c5a:	8b 01       	bf	6c60 <__vfiprintf_r+0x4d0>
    6c5c:	a2 ac       	bra	71b8 <__vfiprintf_r+0xa28>
    6c5e:	54 f6       	mov.l	@(24,r15),r4
    6c60:	67 c3       	mov	r12,r7
    6c62:	77 08       	add	#8,r7
    6c64:	60 f2       	mov.l	@r15,r0
    6c66:	c8 04       	tst	#4,r0
    6c68:	89 04       	bt	6c74 <__vfiprintf_r+0x4e4>
    6c6a:	5e f8       	mov.l	@(32,r15),r14
    6c6c:	53 f2       	mov.l	@(8,r15),r3
    6c6e:	3e 38       	sub	r3,r14
    6c70:	4e 15       	cmp/pl	r14
    6c72:	89 01       	bt	6c78 <__vfiprintf_r+0x4e8>
    6c74:	a1 f0       	bra	7058 <__vfiprintf_r+0x8c8>
    6c76:	59 f2       	mov.l	@(8,r15),r9
    6c78:	e1 10       	mov	#16,r1
    6c7a:	3e 17       	cmp/gt	r1,r14
    6c7c:	da 30       	mov.l	6d40 <__vfiprintf_r+0x5b0>,r10	! 9fd8 <_blanks.3983>
    6c7e:	8b 25       	bf	6ccc <__vfiprintf_r+0x53c>
    6c80:	6d f3       	mov	r15,r13
    6c82:	7d 54       	add	#84,r13
    6c84:	2f b2       	mov.l	r11,@r15
    6c86:	ec 10       	mov	#16,r12
    6c88:	6b e3       	mov	r14,r11
    6c8a:	e8 07       	mov	#7,r8
    6c8c:	6e d3       	mov	r13,r14
    6c8e:	a0 05       	bra	6c9c <__vfiprintf_r+0x50c>
    6c90:	5d f6       	mov.l	@(24,r15),r13
    6c92:	00 09       	nop	
    6c94:	7b f0       	add	#-16,r11
    6c96:	3b c7       	cmp/gt	r12,r11
    6c98:	77 08       	add	#8,r7
    6c9a:	8b 15       	bf	6cc8 <__vfiprintf_r+0x538>
    6c9c:	51 e2       	mov.l	@(8,r14),r1
    6c9e:	27 a2       	mov.l	r10,@r7
    6ca0:	71 10       	add	#16,r1
    6ca2:	1e 12       	mov.l	r1,@(8,r14)
    6ca4:	51 e1       	mov.l	@(4,r14),r1
    6ca6:	17 c1       	mov.l	r12,@(4,r7)
    6ca8:	71 01       	add	#1,r1
    6caa:	1e 11       	mov.l	r1,@(4,r14)
    6cac:	31 87       	cmp/gt	r8,r1
    6cae:	8b f1       	bf	6c94 <__vfiprintf_r+0x504>
    6cb0:	d3 22       	mov.l	6d3c <__vfiprintf_r+0x5ac>,r3	! 66d0 <___sprint_r>
    6cb2:	64 d3       	mov	r13,r4
    6cb4:	55 f1       	mov.l	@(4,r15),r5
    6cb6:	43 0b       	jsr	@r3
    6cb8:	66 e3       	mov	r14,r6
    6cba:	20 08       	tst	r0,r0
    6cbc:	8b 1a       	bf	6cf4 <__vfiprintf_r+0x564>
    6cbe:	97 3c       	mov.w	6d3a <__vfiprintf_r+0x5aa>,r7	! f0
    6cc0:	7b f0       	add	#-16,r11
    6cc2:	3b c7       	cmp/gt	r12,r11
    6cc4:	37 fc       	add	r15,r7
    6cc6:	89 e9       	bt	6c9c <__vfiprintf_r+0x50c>
    6cc8:	6e b3       	mov	r11,r14
    6cca:	6b f2       	mov.l	@r15,r11
    6ccc:	68 f3       	mov	r15,r8
    6cce:	78 54       	add	#84,r8
    6cd0:	51 82       	mov.l	@(8,r8),r1
    6cd2:	e3 07       	mov	#7,r3
    6cd4:	52 81       	mov.l	@(4,r8),r2
    6cd6:	31 ec       	add	r14,r1
    6cd8:	27 a2       	mov.l	r10,@r7
    6cda:	72 01       	add	#1,r2
    6cdc:	17 e1       	mov.l	r14,@(4,r7)
    6cde:	32 37       	cmp/gt	r3,r2
    6ce0:	18 12       	mov.l	r1,@(8,r8)
    6ce2:	18 21       	mov.l	r2,@(4,r8)
    6ce4:	8b 09       	bf	6cfa <__vfiprintf_r+0x56a>
    6ce6:	d0 15       	mov.l	6d3c <__vfiprintf_r+0x5ac>,r0	! 66d0 <___sprint_r>
    6ce8:	66 83       	mov	r8,r6
    6cea:	54 f6       	mov.l	@(24,r15),r4
    6cec:	40 0b       	jsr	@r0
    6cee:	55 f1       	mov.l	@(4,r15),r5
    6cf0:	20 08       	tst	r0,r0
    6cf2:	89 01       	bt	6cf8 <__vfiprintf_r+0x568>
    6cf4:	a1 ed       	bra	70d2 <__vfiprintf_r+0x942>
    6cf6:	52 fd       	mov.l	@(52,r15),r2
    6cf8:	51 82       	mov.l	@(8,r8),r1
    6cfa:	a1 b1       	bra	7060 <__vfiprintf_r+0x8d0>
    6cfc:	59 f2       	mov.l	@(8,r15),r9
    6cfe:	00 09       	nop	
    6d00:	62 33       	mov	r3,r2
    6d02:	50 ff       	mov.l	@(60,r15),r0
    6d04:	e1 0f       	mov	#15,r1
    6d06:	21 99       	and	r9,r1
    6d08:	01 1c       	mov.b	@(r0,r1),r1
    6d0a:	63 83       	mov	r8,r3
    6d0c:	43 28       	shll16	r3
    6d0e:	22 14       	mov.b	r1,@-r2
    6d10:	43 18       	shll8	r3
    6d12:	61 93       	mov	r9,r1
    6d14:	43 08       	shll2	r3
    6d16:	41 09       	shlr2	r1
    6d18:	43 08       	shll2	r3
    6d1a:	41 09       	shlr2	r1
    6d1c:	21 3b       	or	r3,r1
    6d1e:	63 83       	mov	r8,r3
    6d20:	43 09       	shlr2	r3
    6d22:	43 09       	shlr2	r3
    6d24:	23 38       	tst	r3,r3
    6d26:	68 33       	mov	r3,r8
    6d28:	69 13       	mov	r1,r9
    6d2a:	8b ea       	bf	6d02 <__vfiprintf_r+0x572>
    6d2c:	21 18       	tst	r1,r1
    6d2e:	8b e8       	bf	6d02 <__vfiprintf_r+0x572>
    6d30:	1f 2a       	mov.l	r2,@(40,r15)
    6d32:	51 fe       	mov.l	@(56,r15),r1
    6d34:	31 28       	sub	r2,r1
    6d36:	ae a5       	bra	6a84 <__vfiprintf_r+0x2f4>
    6d38:	1f 13       	mov.l	r1,@(12,r15)
    6d3a:	00 f0       	.word 0x00f0
    6d3c:	00 00       	.word 0x0000
    6d3e:	66 d0       	mov.b	@r13,r6
    6d40:	00 00       	.word 0x0000
    6d42:	9f d8       	mov.w	6ef6 <__vfiprintf_r+0x766>,r15	! c820
    6d44:	60 f2       	mov.l	@r15,r0
    6d46:	cb 10       	or	#16,r0
    6d48:	2f 02       	mov.l	r0,@r15
    6d4a:	60 f2       	mov.l	@r15,r0
    6d4c:	c8 20       	tst	#32,r0
    6d4e:	8b 01       	bf	6d54 <__vfiprintf_r+0x5c4>
    6d50:	a3 0c       	bra	736c <__vfiprintf_r+0xbdc>
    6d52:	c8 10       	tst	#16,r0
    6d54:	52 f7       	mov.l	@(28,r15),r2
    6d56:	e3 00       	mov	#0,r3
    6d58:	68 22       	mov.l	@r2,r8
    6d5a:	59 21       	mov.l	@(4,r2),r9
    6d5c:	61 83       	mov	r8,r1
    6d5e:	72 08       	add	#8,r2
    6d60:	21 9b       	or	r9,r1
    6d62:	21 18       	tst	r1,r1
    6d64:	e1 ff       	mov	#-1,r1
    6d66:	61 1a       	negc	r1,r1
    6d68:	67 1c       	extu.b	r1,r7
    6d6a:	ae 3d       	bra	69e8 <__vfiprintf_r+0x258>
    6d6c:	1f 27       	mov.l	r2,@(28,r15)
    6d6e:	00 09       	nop	
    6d70:	53 f7       	mov.l	@(28,r15),r3
    6d72:	51 f7       	mov.l	@(28,r15),r1
    6d74:	63 32       	mov.l	@r3,r3
    6d76:	71 04       	add	#4,r1
    6d78:	1f 38       	mov.l	r3,@(32,r15)
    6d7a:	43 11       	cmp/pz	r3
    6d7c:	8b 02       	bf	6d84 <__vfiprintf_r+0x5f4>
    6d7e:	a3 11       	bra	73a4 <__vfiprintf_r+0xc14>
    6d80:	63 b0       	mov.b	@r11,r3
    6d82:	00 09       	nop	
    6d84:	53 f8       	mov.l	@(32,r15),r3
    6d86:	1f 17       	mov.l	r1,@(28,r15)
    6d88:	63 3b       	neg	r3,r3
    6d8a:	1f 38       	mov.l	r3,@(32,r15)
    6d8c:	60 f2       	mov.l	@r15,r0
    6d8e:	cb 04       	or	#4,r0
    6d90:	2f 02       	mov.l	r0,@r15
    6d92:	ad 96       	bra	68c2 <__vfiprintf_r+0x132>
    6d94:	63 b0       	mov.b	@r11,r3
    6d96:	00 09       	nop	
    6d98:	52 f7       	mov.l	@(28,r15),r2
    6d9a:	69 f3       	mov	r15,r9
    6d9c:	58 f7       	mov.l	@(28,r15),r8
    6d9e:	79 4f       	add	#79,r9
    6da0:	62 22       	mov.l	@r2,r2
    6da2:	e1 00       	mov	#0,r1
    6da4:	29 10       	mov.b	r1,@r9
    6da6:	22 28       	tst	r2,r2
    6da8:	1f 2a       	mov.l	r2,@(40,r15)
    6daa:	78 04       	add	#4,r8
    6dac:	8b 02       	bf	6db4 <__vfiprintf_r+0x624>
    6dae:	a3 6f       	bra	7490 <__vfiprintf_r+0xd00>
    6db0:	e1 06       	mov	#6,r1
    6db2:	00 09       	nop	
    6db4:	4e 11       	cmp/pz	r14
    6db6:	54 fa       	mov.l	@(40,r15),r4
    6db8:	89 02       	bt	6dc0 <__vfiprintf_r+0x630>
    6dba:	a3 5f       	bra	747c <__vfiprintf_r+0xcec>
    6dbc:	00 09       	nop	
    6dbe:	00 09       	nop	
    6dc0:	d0 58       	mov.l	6f24 <__vfiprintf_r+0x794>,r0	! 574c <_memchr>
    6dc2:	e5 00       	mov	#0,r5
    6dc4:	40 0b       	jsr	@r0
    6dc6:	66 e3       	mov	r14,r6
    6dc8:	20 08       	tst	r0,r0
    6dca:	8b 01       	bf	6dd0 <__vfiprintf_r+0x640>
    6dcc:	a3 74       	bra	74b8 <__vfiprintf_r+0xd28>
    6dce:	e3 00       	mov	#0,r3
    6dd0:	53 fa       	mov.l	@(40,r15),r3
    6dd2:	6a 90       	mov.b	@r9,r10
    6dd4:	30 38       	sub	r3,r0
    6dd6:	1f 03       	mov.l	r0,@(12,r15)
    6dd8:	30 e7       	cmp/gt	r14,r0
    6dda:	89 01       	bt	6de0 <__vfiprintf_r+0x650>
    6ddc:	a3 44       	bra	7468 <__vfiprintf_r+0xcd8>
    6dde:	e2 00       	mov	#0,r2
    6de0:	e1 00       	mov	#0,r1
    6de2:	1f e3       	mov.l	r14,@(12,r15)
    6de4:	1f 87       	mov.l	r8,@(28,r15)
    6de6:	ae 4e       	bra	6a86 <__vfiprintf_r+0x2f6>
    6de8:	1f 14       	mov.l	r1,@(16,r15)
    6dea:	00 09       	nop	
    6dec:	93 96       	mov.w	6f1c <__vfiprintf_r+0x78c>,r3	! 4f0
    6dee:	90 96       	mov.w	6f1e <__vfiprintf_r+0x78e>,r0	! fb5f
    6df0:	33 fc       	add	r15,r3
    6df2:	d2 4d       	mov.l	6f28 <__vfiprintf_r+0x798>,r2	! 9e58
    6df4:	03 64       	mov.b	r6,@(r0,r3)
    6df6:	60 f2       	mov.l	@r15,r0
    6df8:	1f 2f       	mov.l	r2,@(60,r15)
    6dfa:	c8 20       	tst	#32,r0
    6dfc:	8b 02       	bf	6e04 <__vfiprintf_r+0x674>
    6dfe:	a0 80       	bra	6f02 <__vfiprintf_r+0x772>
    6e00:	60 f2       	mov.l	@r15,r0
    6e02:	00 09       	nop	
    6e04:	52 f7       	mov.l	@(28,r15),r2
    6e06:	68 22       	mov.l	@r2,r8
    6e08:	59 21       	mov.l	@(4,r2),r9
    6e0a:	72 08       	add	#8,r2
    6e0c:	1f 27       	mov.l	r2,@(28,r15)
    6e0e:	60 f2       	mov.l	@r15,r0
    6e10:	c8 01       	tst	#1,r0
    6e12:	89 01       	bt	6e18 <__vfiprintf_r+0x688>
    6e14:	a2 98       	bra	7348 <__vfiprintf_r+0xbb8>
    6e16:	28 88       	tst	r8,r8
    6e18:	61 83       	mov	r8,r1
    6e1a:	21 9b       	or	r9,r1
    6e1c:	21 18       	tst	r1,r1
    6e1e:	e1 ff       	mov	#-1,r1
    6e20:	61 1a       	negc	r1,r1
    6e22:	67 1c       	extu.b	r1,r7
    6e24:	ad e0       	bra	69e8 <__vfiprintf_r+0x258>
    6e26:	e3 02       	mov	#2,r3
    6e28:	60 f2       	mov.l	@r15,r0
    6e2a:	cb 20       	or	#32,r0
    6e2c:	2f 02       	mov.l	r0,@r15
    6e2e:	ad 48       	bra	68c2 <__vfiprintf_r+0x132>
    6e30:	63 b0       	mov.b	@r11,r3
    6e32:	00 09       	nop	
    6e34:	53 f7       	mov.l	@(28,r15),r3
    6e36:	61 f3       	mov	r15,r1
    6e38:	71 50       	add	#80,r1
    6e3a:	69 32       	mov.l	@r3,r9
    6e3c:	e3 30       	mov	#48,r3
    6e3e:	21 30       	mov.b	r3,@r1
    6e40:	71 01       	add	#1,r1
    6e42:	60 f2       	mov.l	@r15,r0
    6e44:	e3 78       	mov	#120,r3
    6e46:	52 f7       	mov.l	@(28,r15),r2
    6e48:	29 98       	tst	r9,r9
    6e4a:	21 30       	mov.b	r3,@r1
    6e4c:	e1 ff       	mov	#-1,r1
    6e4e:	d3 36       	mov.l	6f28 <__vfiprintf_r+0x798>,r3	! 9e58
    6e50:	cb 02       	or	#2,r0
    6e52:	61 1a       	negc	r1,r1
    6e54:	72 04       	add	#4,r2
    6e56:	1f 3f       	mov.l	r3,@(60,r15)
    6e58:	e8 00       	mov	#0,r8
    6e5a:	2f 02       	mov.l	r0,@r15
    6e5c:	67 1c       	extu.b	r1,r7
    6e5e:	1f 27       	mov.l	r2,@(28,r15)
    6e60:	ad c2       	bra	69e8 <__vfiprintf_r+0x258>
    6e62:	e3 02       	mov	#2,r3
    6e64:	63 b0       	mov.b	@r11,r3
    6e66:	60 33       	mov	r3,r0
    6e68:	88 6c       	cmp/eq	#108,r0
    6e6a:	8b 01       	bf	6e70 <__vfiprintf_r+0x6e0>
    6e6c:	a2 e2       	bra	7434 <__vfiprintf_r+0xca4>
    6e6e:	60 f2       	mov.l	@r15,r0
    6e70:	60 f2       	mov.l	@r15,r0
    6e72:	cb 10       	or	#16,r0
    6e74:	ad 25       	bra	68c2 <__vfiprintf_r+0x132>
    6e76:	2f 02       	mov.l	r0,@r15
    6e78:	60 f2       	mov.l	@r15,r0
    6e7a:	cb 40       	or	#64,r0
    6e7c:	2f 02       	mov.l	r0,@r15
    6e7e:	ad 20       	bra	68c2 <__vfiprintf_r+0x132>
    6e80:	63 b0       	mov.b	@r11,r3
    6e82:	00 09       	nop	
    6e84:	91 4a       	mov.w	6f1c <__vfiprintf_r+0x78c>,r1	! 4f0
    6e86:	90 4a       	mov.w	6f1e <__vfiprintf_r+0x78e>,r0	! fb5f
    6e88:	31 fc       	add	r15,r1
    6e8a:	01 64       	mov.b	r6,@(r0,r1)
    6e8c:	60 f2       	mov.l	@r15,r0
    6e8e:	c9 20       	and	#32,r0
    6e90:	20 08       	tst	r0,r0
    6e92:	89 58       	bt	6f46 <__vfiprintf_r+0x7b6>
    6e94:	52 f7       	mov.l	@(28,r15),r2
    6e96:	61 22       	mov.l	@r2,r1
    6e98:	59 21       	mov.l	@(4,r2),r9
    6e9a:	72 08       	add	#8,r2
    6e9c:	1f 27       	mov.l	r2,@(28,r15)
    6e9e:	68 13       	mov	r1,r8
    6ea0:	41 11       	cmp/pz	r1
    6ea2:	8b 67       	bf	6f74 <__vfiprintf_r+0x7e4>
    6ea4:	91 3a       	mov.w	6f1c <__vfiprintf_r+0x78c>,r1	! 4f0
    6ea6:	e3 01       	mov	#1,r3
    6ea8:	90 39       	mov.w	6f1e <__vfiprintf_r+0x78e>,r0	! fb5f
    6eaa:	31 fc       	add	r15,r1
    6eac:	0a 1c       	mov.b	@(r0,r1),r10
    6eae:	61 83       	mov	r8,r1
    6eb0:	21 9b       	or	r9,r1
    6eb2:	21 18       	tst	r1,r1
    6eb4:	e1 ff       	mov	#-1,r1
    6eb6:	61 1a       	negc	r1,r1
    6eb8:	ad 9b       	bra	69f2 <__vfiprintf_r+0x262>
    6eba:	67 1c       	extu.b	r1,r7
    6ebc:	52 f7       	mov.l	@(28,r15),r2
    6ebe:	93 2d       	mov.w	6f1c <__vfiprintf_r+0x78c>,r3	! 4f0
    6ec0:	61 22       	mov.l	@r2,r1
    6ec2:	33 fc       	add	r15,r3
    6ec4:	90 2c       	mov.w	6f20 <__vfiprintf_r+0x790>,r0	! fb70
    6ec6:	e2 00       	mov	#0,r2
    6ec8:	03 14       	mov.b	r1,@(r0,r3)
    6eca:	61 f3       	mov	r15,r1
    6ecc:	71 4f       	add	#79,r1
    6ece:	21 20       	mov.b	r2,@r1
    6ed0:	e3 01       	mov	#1,r3
    6ed2:	52 f7       	mov.l	@(28,r15),r2
    6ed4:	e0 01       	mov	#1,r0
    6ed6:	1f 32       	mov.l	r3,@(8,r15)
    6ed8:	72 04       	add	#4,r2
    6eda:	1f 27       	mov.l	r2,@(28,r15)
    6edc:	e3 00       	mov	#0,r3
    6ede:	52 fc       	mov.l	@(48,r15),r2
    6ee0:	1f 03       	mov.l	r0,@(12,r15)
    6ee2:	1f 2a       	mov.l	r2,@(40,r15)
    6ee4:	ad da       	bra	6a9c <__vfiprintf_r+0x30c>
    6ee6:	1f 34       	mov.l	r3,@(16,r15)
    6ee8:	92 18       	mov.w	6f1c <__vfiprintf_r+0x78c>,r2	! 4f0
    6eea:	90 18       	mov.w	6f1e <__vfiprintf_r+0x78e>,r0	! fb5f
    6eec:	32 fc       	add	r15,r2
    6eee:	d3 0f       	mov.l	6f2c <__vfiprintf_r+0x79c>,r3	! 9e44
    6ef0:	02 64       	mov.b	r6,@(r0,r2)
    6ef2:	60 f2       	mov.l	@r15,r0
    6ef4:	1f 3f       	mov.l	r3,@(60,r15)
    6ef6:	c8 20       	tst	#32,r0
    6ef8:	89 02       	bt	6f00 <__vfiprintf_r+0x770>
    6efa:	af 84       	bra	6e06 <__vfiprintf_r+0x676>
    6efc:	52 f7       	mov.l	@(28,r15),r2
    6efe:	00 09       	nop	
    6f00:	60 f2       	mov.l	@r15,r0
    6f02:	c8 10       	tst	#16,r0
    6f04:	8b 02       	bf	6f0c <__vfiprintf_r+0x77c>
    6f06:	60 f2       	mov.l	@r15,r0
    6f08:	c8 40       	tst	#64,r0
    6f0a:	8b 01       	bf	6f10 <__vfiprintf_r+0x780>
    6f0c:	a2 7c       	bra	7408 <__vfiprintf_r+0xc78>
    6f0e:	52 f7       	mov.l	@(28,r15),r2
    6f10:	53 f7       	mov.l	@(28,r15),r3
    6f12:	e8 00       	mov	#0,r8
    6f14:	62 36       	mov.l	@r3+,r2
    6f16:	1f 37       	mov.l	r3,@(28,r15)
    6f18:	af 79       	bra	6e0e <__vfiprintf_r+0x67e>
    6f1a:	69 2d       	extu.w	r2,r9
    6f1c:	04 f0       	.word 0x04f0
    6f1e:	fb 5f       	.word 0xfb5f
    6f20:	fb 70       	.word 0xfb70
    6f22:	00 09       	nop	
    6f24:	00 00       	.word 0x0000
    6f26:	57 4c       	mov.l	@(48,r4),r7
    6f28:	00 00       	.word 0x0000
    6f2a:	9e 58       	mov.w	6fde <__vfiprintf_r+0x84e>,r14	! cb80
    6f2c:	00 00       	.word 0x0000
    6f2e:	9e 44       	mov.w	6fba <__vfiprintf_r+0x82a>,r14	! e300
    6f30:	93 75       	mov.w	701e <__vfiprintf_r+0x88e>,r3	! 4f0
    6f32:	90 75       	mov.w	7020 <__vfiprintf_r+0x890>,r0	! fb5f
    6f34:	33 fc       	add	r15,r3
    6f36:	03 64       	mov.b	r6,@(r0,r3)
    6f38:	60 f2       	mov.l	@r15,r0
    6f3a:	cb 10       	or	#16,r0
    6f3c:	2f 02       	mov.l	r0,@r15
    6f3e:	60 f2       	mov.l	@r15,r0
    6f40:	c9 20       	and	#32,r0
    6f42:	20 08       	tst	r0,r0
    6f44:	8b a6       	bf	6e94 <__vfiprintf_r+0x704>
    6f46:	61 f2       	mov.l	@r15,r1
    6f48:	e3 10       	mov	#16,r3
    6f4a:	21 39       	and	r3,r1
    6f4c:	21 18       	tst	r1,r1
    6f4e:	89 01       	bt	6f54 <__vfiprintf_r+0x7c4>
    6f50:	a2 5e       	bra	7410 <__vfiprintf_r+0xc80>
    6f52:	52 f7       	mov.l	@(28,r15),r2
    6f54:	60 f2       	mov.l	@r15,r0
    6f56:	c9 40       	and	#64,r0
    6f58:	20 08       	tst	r0,r0
    6f5a:	8b 01       	bf	6f60 <__vfiprintf_r+0x7d0>
    6f5c:	a2 88       	bra	7470 <__vfiprintf_r+0xce0>
    6f5e:	53 f7       	mov.l	@(28,r15),r3
    6f60:	52 f7       	mov.l	@(28,r15),r2
    6f62:	63 26       	mov.l	@r2+,r3
    6f64:	1f 27       	mov.l	r2,@(28,r15)
    6f66:	63 3f       	exts.w	r3,r3
    6f68:	31 37       	cmp/gt	r3,r1
    6f6a:	31 1a       	subc	r1,r1
    6f6c:	41 11       	cmp/pz	r1
    6f6e:	69 33       	mov	r3,r9
    6f70:	68 13       	mov	r1,r8
    6f72:	89 97       	bt	6ea4 <__vfiprintf_r+0x714>
    6f74:	92 53       	mov.w	701e <__vfiprintf_r+0x88e>,r2	! 4f0
    6f76:	00 08       	clrt	
    6f78:	90 52       	mov.w	7020 <__vfiprintf_r+0x890>,r0	! fb5f
    6f7a:	69 9a       	negc	r9,r9
    6f7c:	68 8a       	negc	r8,r8
    6f7e:	e1 2d       	mov	#45,r1
    6f80:	32 fc       	add	r15,r2
    6f82:	02 14       	mov.b	r1,@(r0,r2)
    6f84:	61 83       	mov	r8,r1
    6f86:	21 9b       	or	r9,r1
    6f88:	21 18       	tst	r1,r1
    6f8a:	e1 ff       	mov	#-1,r1
    6f8c:	61 1a       	negc	r1,r1
    6f8e:	67 1c       	extu.b	r1,r7
    6f90:	ea 2d       	mov	#45,r10
    6f92:	ad 2e       	bra	69f2 <__vfiprintf_r+0x262>
    6f94:	e3 01       	mov	#1,r3
    6f96:	00 09       	nop	
    6f98:	63 b0       	mov.b	@r11,r3
    6f9a:	ac 92       	bra	68c2 <__vfiprintf_r+0x132>
    6f9c:	e6 2b       	mov	#43,r6
    6f9e:	00 09       	nop	
    6fa0:	60 f2       	mov.l	@r15,r0
    6fa2:	cb 01       	or	#1,r0
    6fa4:	2f 02       	mov.l	r0,@r15
    6fa6:	63 b0       	mov.b	@r11,r3
    6fa8:	ac 8c       	bra	68c4 <__vfiprintf_r+0x134>
    6faa:	61 33       	mov	r3,r1
    6fac:	26 68       	tst	r6,r6
    6fae:	63 b0       	mov.b	@r11,r3
    6fb0:	8b fa       	bf	6fa8 <__vfiprintf_r+0x818>
    6fb2:	ac 86       	bra	68c2 <__vfiprintf_r+0x132>
    6fb4:	e6 20       	mov	#32,r6
    6fb6:	00 09       	nop	
    6fb8:	65 b3       	mov	r11,r5
    6fba:	e3 00       	mov	#0,r3
    6fbc:	64 33       	mov	r3,r4
    6fbe:	44 08       	shll2	r4
    6fc0:	33 4c       	add	r4,r3
    6fc2:	71 d0       	add	#-48,r1
    6fc4:	33 3c       	add	r3,r3
    6fc6:	33 1c       	add	r1,r3
    6fc8:	61 54       	mov.b	@r5+,r1
    6fca:	64 13       	mov	r1,r4
    6fcc:	74 d0       	add	#-48,r4
    6fce:	34 76       	cmp/hi	r7,r4
    6fd0:	6b 53       	mov	r5,r11
    6fd2:	8b f3       	bf	6fbc <__vfiprintf_r+0x82c>
    6fd4:	1f 38       	mov.l	r3,@(32,r15)
    6fd6:	ac 77       	bra	68c8 <__vfiprintf_r+0x138>
    6fd8:	63 13       	mov	r1,r3
    6fda:	00 09       	nop	
    6fdc:	60 f2       	mov.l	@r15,r0
    6fde:	cb 80       	or	#-128,r0
    6fe0:	2f 02       	mov.l	r0,@r15
    6fe2:	ac 6e       	bra	68c2 <__vfiprintf_r+0x132>
    6fe4:	63 b0       	mov.b	@r11,r3
    6fe6:	00 09       	nop	
    6fe8:	61 b4       	mov.b	@r11+,r1
    6fea:	60 13       	mov	r1,r0
    6fec:	88 2a       	cmp/eq	#42,r0
    6fee:	8b 01       	bf	6ff4 <__vfiprintf_r+0x864>
    6ff0:	a2 68       	bra	74c4 <__vfiprintf_r+0xd34>
    6ff2:	53 f7       	mov.l	@(28,r15),r3
    6ff4:	63 13       	mov	r1,r3
    6ff6:	73 d0       	add	#-48,r3
    6ff8:	33 76       	cmp/hi	r7,r3
    6ffa:	65 b3       	mov	r11,r5
    6ffc:	ee 00       	mov	#0,r14
    6ffe:	89 ea       	bt	6fd6 <__vfiprintf_r+0x846>
    7000:	61 e3       	mov	r14,r1
    7002:	41 08       	shll2	r1
    7004:	3e 1c       	add	r1,r14
    7006:	61 54       	mov.b	@r5+,r1
    7008:	3e ec       	add	r14,r14
    700a:	3e 3c       	add	r3,r14
    700c:	63 13       	mov	r1,r3
    700e:	73 d0       	add	#-48,r3
    7010:	33 76       	cmp/hi	r7,r3
    7012:	6b 53       	mov	r5,r11
    7014:	8b f4       	bf	7000 <__vfiprintf_r+0x870>
    7016:	4e 11       	cmp/pz	r14
    7018:	89 dd       	bt	6fd6 <__vfiprintf_r+0x846>
    701a:	ac 54       	bra	68c6 <__vfiprintf_r+0x136>
    701c:	ee ff       	mov	#-1,r14
    701e:	04 f0       	.word 0x04f0
    7020:	fb 5f       	.word 0xfb5f
    7022:	00 09       	nop	
    7024:	93 8e       	mov.w	7144 <__vfiprintf_r+0x9b4>,r3	! 4f0
    7026:	90 8e       	mov.w	7146 <__vfiprintf_r+0x9b6>,r0	! fb5f
    7028:	33 fc       	add	r15,r3
    702a:	03 64       	mov.b	r6,@(r0,r3)
    702c:	60 f2       	mov.l	@r15,r0
    702e:	c8 20       	tst	#32,r0
    7030:	89 02       	bt	7038 <__vfiprintf_r+0x8a8>
    7032:	a1 f3       	bra	741c <__vfiprintf_r+0xc8c>
    7034:	52 f7       	mov.l	@(28,r15),r2
    7036:	00 09       	nop	
    7038:	60 f2       	mov.l	@r15,r0
    703a:	c8 10       	tst	#16,r0
    703c:	8b 02       	bf	7044 <__vfiprintf_r+0x8b4>
    703e:	60 f2       	mov.l	@r15,r0
    7040:	c8 40       	tst	#64,r0
    7042:	8b 01       	bf	7048 <__vfiprintf_r+0x8b8>
    7044:	a1 fc       	bra	7440 <__vfiprintf_r+0xcb0>
    7046:	52 f7       	mov.l	@(28,r15),r2
    7048:	52 f7       	mov.l	@(28,r15),r2
    704a:	e0 16       	mov	#22,r0
    704c:	03 fd       	mov.w	@(r0,r15),r3
    704e:	61 26       	mov.l	@r2+,r1
    7050:	1f 27       	mov.l	r2,@(28,r15)
    7052:	ab ec       	bra	682e <__vfiprintf_r+0x9e>
    7054:	21 31       	mov.w	r3,@r1
    7056:	00 09       	nop	
    7058:	92 74       	mov.w	7144 <__vfiprintf_r+0x9b4>,r2	! 4f0
    705a:	90 75       	mov.w	7148 <__vfiprintf_r+0x9b8>,r0	! fb6c
    705c:	32 fc       	add	r15,r2
    705e:	01 2e       	mov.l	@(r0,r2),r1
    7060:	52 f8       	mov.l	@(32,r15),r2
    7062:	39 23       	cmp/ge	r2,r9
    7064:	89 00       	bt	7068 <__vfiprintf_r+0x8d8>
    7066:	69 23       	mov	r2,r9
    7068:	50 f5       	mov.l	@(20,r15),r0
    706a:	21 18       	tst	r1,r1
    706c:	30 9c       	add	r9,r0
    706e:	1f 05       	mov.l	r0,@(20,r15)
    7070:	89 02       	bt	7078 <__vfiprintf_r+0x8e8>
    7072:	a0 a9       	bra	71c8 <__vfiprintf_r+0xa38>
    7074:	54 f6       	mov.l	@(24,r15),r4
    7076:	00 09       	nop	
    7078:	61 f3       	mov	r15,r1
    707a:	71 54       	add	#84,r1
    707c:	e2 00       	mov	#0,r2
    707e:	11 21       	mov.l	r2,@(4,r1)
    7080:	e1 ff       	mov	#-1,r1
    7082:	62 b0       	mov.b	@r11,r2
    7084:	60 23       	mov	r2,r0
    7086:	9c 60       	mov.w	714a <__vfiprintf_r+0x9ba>,r12	! f0
    7088:	88 25       	cmp/eq	#37,r0
    708a:	60 1a       	negc	r1,r0
    708c:	c8 ff       	tst	#-1,r0
    708e:	3c fc       	add	r15,r12
    7090:	89 02       	bt	7098 <__vfiprintf_r+0x908>
    7092:	ab d4       	bra	683e <__vfiprintf_r+0xae>
    7094:	22 28       	tst	r2,r2
    7096:	00 09       	nop	
    7098:	68 b3       	mov	r11,r8
    709a:	ac 00       	bra	689e <__vfiprintf_r+0x10e>
    709c:	61 80       	mov.b	@r8,r1
    709e:	00 09       	nop	
    70a0:	8b 38       	bf	7114 <__vfiprintf_r+0x984>
    70a2:	60 f2       	mov.l	@r15,r0
    70a4:	c8 01       	tst	#1,r0
    70a6:	89 35       	bt	7114 <__vfiprintf_r+0x984>
    70a8:	92 4c       	mov.w	7144 <__vfiprintf_r+0x9b4>,r2	! 4f0
    70aa:	e1 30       	mov	#48,r1
    70ac:	90 4e       	mov.w	714c <__vfiprintf_r+0x9bc>,r0	! fb97
    70ae:	32 fc       	add	r15,r2
    70b0:	02 14       	mov.b	r1,@(r0,r2)
    70b2:	e0 48       	mov	#72,r0
    70b4:	03 fe       	mov.l	@(r0,r15),r3
    70b6:	e0 40       	mov	#64,r0
    70b8:	00 fe       	mov.l	@(r0,r15),r0
    70ba:	1f 33       	mov.l	r3,@(12,r15)
    70bc:	ac e2       	bra	6a84 <__vfiprintf_r+0x2f4>
    70be:	1f 0a       	mov.l	r0,@(40,r15)
    70c0:	76 54       	add	#84,r6
    70c2:	51 62       	mov.l	@(8,r6),r1
    70c4:	21 18       	tst	r1,r1
    70c6:	89 03       	bt	70d0 <__vfiprintf_r+0x940>
    70c8:	d0 21       	mov.l	7150 <__vfiprintf_r+0x9c0>,r0	! 66d0 <___sprint_r>
    70ca:	54 f6       	mov.l	@(24,r15),r4
    70cc:	40 0b       	jsr	@r0
    70ce:	55 f1       	mov.l	@(4,r15),r5
    70d0:	52 fd       	mov.l	@(52,r15),r2
    70d2:	60 21       	mov.w	@r2,r0
    70d4:	c8 40       	tst	#64,r0
    70d6:	8b 0d       	bf	70f4 <__vfiprintf_r+0x964>
    70d8:	50 f5       	mov.l	@(20,r15),r0
    70da:	97 33       	mov.w	7144 <__vfiprintf_r+0x9b4>,r7	! 4f0
    70dc:	3f 7c       	add	r7,r15
    70de:	4f 26       	lds.l	@r15+,pr
    70e0:	6e f6       	mov.l	@r15+,r14
    70e2:	6d f6       	mov.l	@r15+,r13
    70e4:	6c f6       	mov.l	@r15+,r12
    70e6:	6b f6       	mov.l	@r15+,r11
    70e8:	6a f6       	mov.l	@r15+,r10
    70ea:	69 f6       	mov.l	@r15+,r9
    70ec:	68 f6       	mov.l	@r15+,r8
    70ee:	00 0b       	rts	
    70f0:	00 09       	nop	
    70f2:	00 09       	nop	
    70f4:	e0 ff       	mov	#-1,r0
    70f6:	1f 05       	mov.l	r0,@(20,r15)
    70f8:	50 f5       	mov.l	@(20,r15),r0
    70fa:	97 23       	mov.w	7144 <__vfiprintf_r+0x9b4>,r7	! 4f0
    70fc:	3f 7c       	add	r7,r15
    70fe:	4f 26       	lds.l	@r15+,pr
    7100:	6e f6       	mov.l	@r15+,r14
    7102:	6d f6       	mov.l	@r15+,r13
    7104:	6c f6       	mov.l	@r15+,r12
    7106:	6b f6       	mov.l	@r15+,r11
    7108:	6a f6       	mov.l	@r15+,r10
    710a:	69 f6       	mov.l	@r15+,r9
    710c:	68 f6       	mov.l	@r15+,r8
    710e:	00 0b       	rts	
    7110:	00 09       	nop	
    7112:	00 09       	nop	
    7114:	52 fe       	mov.l	@(56,r15),r2
    7116:	e0 00       	mov	#0,r0
    7118:	1f 03       	mov.l	r0,@(12,r15)
    711a:	ac b3       	bra	6a84 <__vfiprintf_r+0x2f4>
    711c:	1f 2a       	mov.l	r2,@(40,r15)
    711e:	00 09       	nop	
    7120:	51 f2       	mov.l	@(8,r15),r1
    7122:	3e 18       	sub	r1,r14
    7124:	4e 15       	cmp/pl	r14
    7126:	8b 44       	bf	71b2 <__vfiprintf_r+0xa22>
    7128:	e1 10       	mov	#16,r1
    712a:	3e 17       	cmp/gt	r1,r14
    712c:	da 09       	mov.l	7154 <__vfiprintf_r+0x9c4>,r10	! 9fe8 <_zeroes.3984>
    712e:	8b 30       	bf	7192 <__vfiprintf_r+0xa02>
    7130:	6d f3       	mov	r15,r13
    7132:	1f b9       	mov.l	r11,@(36,r15)
    7134:	62 c3       	mov	r12,r2
    7136:	e8 10       	mov	#16,r8
    7138:	6c a3       	mov	r10,r12
    713a:	7d 54       	add	#84,r13
    713c:	e9 07       	mov	#7,r9
    713e:	5b f1       	mov.l	@(4,r15),r11
    7140:	a0 0e       	bra	7160 <__vfiprintf_r+0x9d0>
    7142:	5a f6       	mov.l	@(24,r15),r10
    7144:	04 f0       	.word 0x04f0
    7146:	fb 5f       	.word 0xfb5f
    7148:	fb 6c       	.word 0xfb6c
    714a:	00 f0       	.word 0x00f0
    714c:	fb 97       	.word 0xfb97
    714e:	00 09       	nop	
    7150:	00 00       	.word 0x0000
    7152:	66 d0       	mov.b	@r13,r6
    7154:	00 00       	.word 0x0000
    7156:	9f e8       	mov.w	732a <__vfiprintf_r+0xb9a>,r15	! 60f2
    7158:	7e f0       	add	#-16,r14
    715a:	3e 87       	cmp/gt	r8,r14
    715c:	72 08       	add	#8,r2
    715e:	8b 15       	bf	718c <__vfiprintf_r+0x9fc>
    7160:	51 d2       	mov.l	@(8,r13),r1
    7162:	22 c2       	mov.l	r12,@r2
    7164:	71 10       	add	#16,r1
    7166:	1d 12       	mov.l	r1,@(8,r13)
    7168:	51 d1       	mov.l	@(4,r13),r1
    716a:	12 81       	mov.l	r8,@(4,r2)
    716c:	71 01       	add	#1,r1
    716e:	1d 11       	mov.l	r1,@(4,r13)
    7170:	31 97       	cmp/gt	r9,r1
    7172:	8b f1       	bf	7158 <__vfiprintf_r+0x9c8>
    7174:	d2 52       	mov.l	72c0 <__vfiprintf_r+0xb30>,r2	! 66d0 <___sprint_r>
    7176:	64 a3       	mov	r10,r4
    7178:	65 b3       	mov	r11,r5
    717a:	42 0b       	jsr	@r2
    717c:	66 d3       	mov	r13,r6
    717e:	20 08       	tst	r0,r0
    7180:	8b a6       	bf	70d0 <__vfiprintf_r+0x940>
    7182:	92 97       	mov.w	72b4 <__vfiprintf_r+0xb24>,r2	! f0
    7184:	7e f0       	add	#-16,r14
    7186:	3e 87       	cmp/gt	r8,r14
    7188:	32 fc       	add	r15,r2
    718a:	89 e9       	bt	7160 <__vfiprintf_r+0x9d0>
    718c:	5b f9       	mov.l	@(36,r15),r11
    718e:	6a c3       	mov	r12,r10
    7190:	6c 23       	mov	r2,r12
    7192:	66 f3       	mov	r15,r6
    7194:	76 54       	add	#84,r6
    7196:	51 62       	mov.l	@(8,r6),r1
    7198:	e2 07       	mov	#7,r2
    719a:	2c a2       	mov.l	r10,@r12
    719c:	31 ec       	add	r14,r1
    719e:	16 12       	mov.l	r1,@(8,r6)
    71a0:	51 61       	mov.l	@(4,r6),r1
    71a2:	1c e1       	mov.l	r14,@(4,r12)
    71a4:	71 01       	add	#1,r1
    71a6:	16 11       	mov.l	r1,@(4,r6)
    71a8:	31 27       	cmp/gt	r2,r1
    71aa:	8b 01       	bf	71b0 <__vfiprintf_r+0xa20>
    71ac:	a1 50       	bra	7450 <__vfiprintf_r+0xcc0>
    71ae:	54 f6       	mov.l	@(24,r15),r4
    71b0:	7c 08       	add	#8,r12
    71b2:	ac fa       	bra	6baa <__vfiprintf_r+0x41a>
    71b4:	5e f4       	mov.l	@(16,r15),r14
    71b6:	00 09       	nop	
    71b8:	d0 41       	mov.l	72c0 <__vfiprintf_r+0xb30>,r0	! 66d0 <___sprint_r>
    71ba:	40 0b       	jsr	@r0
    71bc:	55 f1       	mov.l	@(4,r15),r5
    71be:	20 08       	tst	r0,r0
    71c0:	8b 0e       	bf	71e0 <__vfiprintf_r+0xa50>
    71c2:	97 77       	mov.w	72b4 <__vfiprintf_r+0xb24>,r7	! f0
    71c4:	ad 4e       	bra	6c64 <__vfiprintf_r+0x4d4>
    71c6:	37 fc       	add	r15,r7
    71c8:	91 75       	mov.w	72b6 <__vfiprintf_r+0xb26>,r1	! 4f0
    71ca:	96 75       	mov.w	72b8 <__vfiprintf_r+0xb28>,r6	! fb64
    71cc:	31 fc       	add	r15,r1
    71ce:	d0 3c       	mov.l	72c0 <__vfiprintf_r+0xb30>,r0	! 66d0 <___sprint_r>
    71d0:	36 1c       	add	r1,r6
    71d2:	40 0b       	jsr	@r0
    71d4:	55 f1       	mov.l	@(4,r15),r5
    71d6:	20 08       	tst	r0,r0
    71d8:	8b 02       	bf	71e0 <__vfiprintf_r+0xa50>
    71da:	af 4e       	bra	707a <__vfiprintf_r+0x8ea>
    71dc:	61 f3       	mov	r15,r1
    71de:	00 09       	nop	
    71e0:	af 77       	bra	70d2 <__vfiprintf_r+0x942>
    71e2:	52 fd       	mov.l	@(52,r15),r2
    71e4:	d0 37       	mov.l	72c4 <__vfiprintf_r+0xb34>,r0	! 3108 <___swsetup_r>
    71e6:	40 0b       	jsr	@r0
    71e8:	55 f1       	mov.l	@(4,r15),r5
    71ea:	20 08       	tst	r0,r0
    71ec:	89 02       	bt	71f4 <__vfiprintf_r+0xa64>
    71ee:	af 82       	bra	70f6 <__vfiprintf_r+0x966>
    71f0:	e0 ff       	mov	#-1,r0
    71f2:	00 09       	nop	
    71f4:	52 fd       	mov.l	@(52,r15),r2
    71f6:	e1 1a       	mov	#26,r1
    71f8:	67 21       	mov.w	@r2,r7
    71fa:	21 79       	and	r7,r1
    71fc:	60 13       	mov	r1,r0
    71fe:	88 0a       	cmp/eq	#10,r0
    7200:	8b 04       	bf	720c <__vfiprintf_r+0xa7c>
    7202:	51 f1       	mov.l	@(4,r15),r1
    7204:	71 0e       	add	#14,r1
    7206:	61 11       	mov.w	@r1,r1
    7208:	41 11       	cmp/pz	r1
    720a:	89 01       	bt	7210 <__vfiprintf_r+0xa80>
    720c:	aa f7       	bra	67fe <__vfiprintf_r+0x6e>
    720e:	61 f3       	mov	r15,r1
    7210:	e3 fd       	mov	#-3,r3
    7212:	60 73       	mov	r7,r0
    7214:	20 39       	and	r3,r0
    7216:	99 50       	mov.w	72ba <__vfiprintf_r+0xb2a>,r9	! 88
    7218:	66 83       	mov	r8,r6
    721a:	53 f1       	mov.l	@(4,r15),r3
    721c:	39 fc       	add	r15,r9
    721e:	62 93       	mov	r9,r2
    7220:	73 40       	add	#64,r3
    7222:	53 39       	mov.l	@(36,r3),r3
    7224:	72 0c       	add	#12,r2
    7226:	22 01       	mov.w	r0,@r2
    7228:	72 34       	add	#52,r2
    722a:	12 39       	mov.l	r3,@(36,r2)
    722c:	72 ce       	add	#-50,r2
    722e:	22 11       	mov.w	r1,@r2
    7230:	65 93       	mov	r9,r5
    7232:	52 f1       	mov.l	@(4,r15),r2
    7234:	d0 24       	mov.l	72c8 <__vfiprintf_r+0xb38>,r0	! 6790 <__vfiprintf_r>
    7236:	51 27       	mov.l	@(28,r2),r1
    7238:	54 f6       	mov.l	@(24,r15),r4
    723a:	19 17       	mov.l	r1,@(28,r9)
    723c:	51 29       	mov.l	@(36,r2),r1
    723e:	57 f7       	mov.l	@(28,r15),r7
    7240:	19 19       	mov.l	r1,@(36,r9)
    7242:	91 37       	mov.w	72b4 <__vfiprintf_r+0xb24>,r1	! f0
    7244:	31 fc       	add	r15,r1
    7246:	29 12       	mov.l	r1,@r9
    7248:	19 14       	mov.l	r1,@(16,r9)
    724a:	91 37       	mov.w	72bc <__vfiprintf_r+0xb2c>,r1	! 400
    724c:	19 12       	mov.l	r1,@(8,r9)
    724e:	19 15       	mov.l	r1,@(20,r9)
    7250:	e1 00       	mov	#0,r1
    7252:	40 0b       	jsr	@r0
    7254:	19 16       	mov.l	r1,@(24,r9)
    7256:	1f 05       	mov.l	r0,@(20,r15)
    7258:	40 11       	cmp/pz	r0
    725a:	8b 07       	bf	726c <__vfiprintf_r+0xadc>
    725c:	d0 1b       	mov.l	72cc <__vfiprintf_r+0xb3c>,r0	! 4940 <__fflush_r>
    725e:	65 93       	mov	r9,r5
    7260:	40 0b       	jsr	@r0
    7262:	54 f6       	mov.l	@(24,r15),r4
    7264:	20 08       	tst	r0,r0
    7266:	89 01       	bt	726c <__vfiprintf_r+0xadc>
    7268:	a1 38       	bra	74dc <__vfiprintf_r+0xd4c>
    726a:	e0 ff       	mov	#-1,r0
    726c:	91 23       	mov.w	72b6 <__vfiprintf_r+0xb26>,r1	! 4f0
    726e:	90 26       	mov.w	72be <__vfiprintf_r+0xb2e>,r0	! fba4
    7270:	31 fc       	add	r15,r1
    7272:	00 1d       	mov.w	@(r0,r1),r0
    7274:	c8 40       	tst	#64,r0
    7276:	89 03       	bt	7280 <__vfiprintf_r+0xaf0>
    7278:	52 fd       	mov.l	@(52,r15),r2
    727a:	60 21       	mov.w	@r2,r0
    727c:	cb 40       	or	#64,r0
    727e:	22 01       	mov.w	r0,@r2
    7280:	af 2b       	bra	70da <__vfiprintf_r+0x94a>
    7282:	50 f5       	mov.l	@(20,r15),r0
    7284:	d0 0e       	mov.l	72c0 <__vfiprintf_r+0xb30>,r0	! 66d0 <___sprint_r>
    7286:	40 0b       	jsr	@r0
    7288:	55 f1       	mov.l	@(4,r15),r5
    728a:	20 08       	tst	r0,r0
    728c:	8b a8       	bf	71e0 <__vfiprintf_r+0xa50>
    728e:	9c 11       	mov.w	72b4 <__vfiprintf_r+0xb24>,r12	! f0
    7290:	ab 01       	bra	6896 <__vfiprintf_r+0x106>
    7292:	3c fc       	add	r15,r12
    7294:	d0 0a       	mov.l	72c0 <__vfiprintf_r+0xb30>,r0	! 66d0 <___sprint_r>
    7296:	40 0b       	jsr	@r0
    7298:	55 f1       	mov.l	@(4,r15),r5
    729a:	20 08       	tst	r0,r0
    729c:	8b a0       	bf	71e0 <__vfiprintf_r+0xa50>
    729e:	9c 09       	mov.w	72b4 <__vfiprintf_r+0xb24>,r12	! f0
    72a0:	ac cd       	bra	6c3e <__vfiprintf_r+0x4ae>
    72a2:	3c fc       	add	r15,r12
    72a4:	d0 06       	mov.l	72c0 <__vfiprintf_r+0xb30>,r0	! 66d0 <___sprint_r>
    72a6:	40 0b       	jsr	@r0
    72a8:	55 f1       	mov.l	@(4,r15),r5
    72aa:	20 08       	tst	r0,r0
    72ac:	8b 98       	bf	71e0 <__vfiprintf_r+0xa50>
    72ae:	9c 01       	mov.w	72b4 <__vfiprintf_r+0xb24>,r12	! f0
    72b0:	ac 5d       	bra	6b6e <__vfiprintf_r+0x3de>
    72b2:	3c fc       	add	r15,r12
    72b4:	00 f0       	.word 0x00f0
    72b6:	04 f0       	.word 0x04f0
    72b8:	fb 64       	.word 0xfb64
    72ba:	00 88       	.word 0x0088
    72bc:	04 00       	.word 0x0400
    72be:	fb a4       	.word 0xfba4
    72c0:	00 00       	.word 0x0000
    72c2:	66 d0       	mov.b	@r13,r6
    72c4:	00 00       	.word 0x0000
    72c6:	31 08       	sub	r0,r1
    72c8:	00 00       	.word 0x0000
    72ca:	67 90       	mov.b	@r9,r7
    72cc:	00 00       	.word 0x0000
    72ce:	49 40       	.word 0x4940
    72d0:	d0 44       	mov.l	73e4 <__vfiprintf_r+0xc54>,r0	! 66d0 <___sprint_r>
    72d2:	40 0b       	jsr	@r0
    72d4:	55 f1       	mov.l	@(4,r15),r5
    72d6:	20 08       	tst	r0,r0
    72d8:	8b 5d       	bf	7396 <__vfiprintf_r+0xc06>
    72da:	9c 7f       	mov.w	73dc <__vfiprintf_r+0xc4c>,r12	! f0
    72dc:	ac 5d       	bra	6b9a <__vfiprintf_r+0x40a>
    72de:	3c fc       	add	r15,r12
    72e0:	d1 41       	mov.l	73e8 <__vfiprintf_r+0xc58>,r1	! 4a90 <___sinit>
    72e2:	41 0b       	jsr	@r1
    72e4:	00 09       	nop	
    72e6:	aa 6a       	bra	67be <__vfiprintf_r+0x2e>
    72e8:	52 f1       	mov.l	@(4,r15),r2
    72ea:	00 09       	nop	
    72ec:	89 5c       	bt	73a8 <__vfiprintf_r+0xc18>
    72ee:	52 fe       	mov.l	@(56,r15),r2
    72f0:	dd 3e       	mov.l	73ec <__vfiprintf_r+0xc5c>,r13	! 8a78 <___umoddi3>
    72f2:	1f 2a       	mov.l	r2,@(40,r15)
    72f4:	64 83       	mov	r8,r4
    72f6:	65 93       	mov	r9,r5
    72f8:	e6 00       	mov	#0,r6
    72fa:	4d 0b       	jsr	@r13
    72fc:	e7 0a       	mov	#10,r7
    72fe:	53 fa       	mov.l	@(40,r15),r3
    7300:	71 30       	add	#48,r1
    7302:	d2 3b       	mov.l	73f0 <__vfiprintf_r+0xc60>,r2	! 875c <___udivdi3>
    7304:	64 83       	mov	r8,r4
    7306:	23 14       	mov.b	r1,@-r3
    7308:	65 93       	mov	r9,r5
    730a:	1f 3a       	mov.l	r3,@(40,r15)
    730c:	e6 00       	mov	#0,r6
    730e:	42 0b       	jsr	@r2
    7310:	e7 0a       	mov	#10,r7
    7312:	68 03       	mov	r0,r8
    7314:	28 88       	tst	r8,r8
    7316:	69 13       	mov	r1,r9
    7318:	8b ec       	bf	72f4 <__vfiprintf_r+0xb64>
    731a:	21 18       	tst	r1,r1
    731c:	8b ea       	bf	72f4 <__vfiprintf_r+0xb64>
    731e:	53 fe       	mov.l	@(56,r15),r3
    7320:	52 fa       	mov.l	@(40,r15),r2
    7322:	33 28       	sub	r2,r3
    7324:	ab ae       	bra	6a84 <__vfiprintf_r+0x2f4>
    7326:	1f 33       	mov.l	r3,@(12,r15)
    7328:	8b 4e       	bf	73c8 <__vfiprintf_r+0xc38>
    732a:	60 f2       	mov.l	@r15,r0
    732c:	c8 40       	tst	#64,r0
    732e:	89 4b       	bt	73c8 <__vfiprintf_r+0xc38>
    7330:	53 f7       	mov.l	@(28,r15),r3
    7332:	e1 ff       	mov	#-1,r1
    7334:	e8 00       	mov	#0,r8
    7336:	62 36       	mov.l	@r3+,r2
    7338:	1f 37       	mov.l	r3,@(28,r15)
    733a:	69 2d       	extu.w	r2,r9
    733c:	29 98       	tst	r9,r9
    733e:	61 1a       	negc	r1,r1
    7340:	67 1c       	extu.b	r1,r7
    7342:	ab 51       	bra	69e8 <__vfiprintf_r+0x258>
    7344:	e3 01       	mov	#1,r3
    7346:	00 09       	nop	
    7348:	8b 04       	bf	7354 <__vfiprintf_r+0xbc4>
    734a:	29 98       	tst	r9,r9
    734c:	8b 02       	bf	7354 <__vfiprintf_r+0xbc4>
    734e:	a0 7d       	bra	744c <__vfiprintf_r+0xcbc>
    7350:	e7 00       	mov	#0,r7
    7352:	00 09       	nop	
    7354:	60 f2       	mov.l	@r15,r0
    7356:	63 f3       	mov	r15,r3
    7358:	73 50       	add	#80,r3
    735a:	e7 30       	mov	#48,r7
    735c:	23 70       	mov.b	r7,@r3
    735e:	cb 02       	or	#2,r0
    7360:	73 01       	add	#1,r3
    7362:	23 10       	mov.b	r1,@r3
    7364:	e7 01       	mov	#1,r7
    7366:	2f 02       	mov.l	r0,@r15
    7368:	ab 3e       	bra	69e8 <__vfiprintf_r+0x258>
    736a:	e3 02       	mov	#2,r3
    736c:	8b 42       	bf	73f4 <__vfiprintf_r+0xc64>
    736e:	60 f2       	mov.l	@r15,r0
    7370:	c8 40       	tst	#64,r0
    7372:	89 3f       	bt	73f4 <__vfiprintf_r+0xc64>
    7374:	53 f7       	mov.l	@(28,r15),r3
    7376:	e1 ff       	mov	#-1,r1
    7378:	e8 00       	mov	#0,r8
    737a:	62 36       	mov.l	@r3+,r2
    737c:	1f 37       	mov.l	r3,@(28,r15)
    737e:	69 2d       	extu.w	r2,r9
    7380:	29 98       	tst	r9,r9
    7382:	61 1a       	negc	r1,r1
    7384:	67 1c       	extu.b	r1,r7
    7386:	ab 2f       	bra	69e8 <__vfiprintf_r+0x258>
    7388:	e3 00       	mov	#0,r3
    738a:	00 09       	nop	
    738c:	d0 15       	mov.l	73e4 <__vfiprintf_r+0xc54>,r0	! 66d0 <___sprint_r>
    738e:	40 0b       	jsr	@r0
    7390:	55 f1       	mov.l	@(4,r15),r5
    7392:	20 08       	tst	r0,r0
    7394:	89 02       	bt	739c <__vfiprintf_r+0xc0c>
    7396:	ae 9c       	bra	70d2 <__vfiprintf_r+0x942>
    7398:	52 fd       	mov.l	@(52,r15),r2
    739a:	00 09       	nop	
    739c:	9c 1e       	mov.w	73dc <__vfiprintf_r+0xc4c>,r12	! f0
    739e:	ab d0       	bra	6b42 <__vfiprintf_r+0x3b2>
    73a0:	3c fc       	add	r15,r12
    73a2:	00 09       	nop	
    73a4:	aa 8d       	bra	68c2 <__vfiprintf_r+0x132>
    73a6:	1f 17       	mov.l	r1,@(28,r15)
    73a8:	e1 09       	mov	#9,r1
    73aa:	39 16       	cmp/hi	r1,r9
    73ac:	89 9f       	bt	72ee <__vfiprintf_r+0xb5e>
    73ae:	91 16       	mov.w	73de <__vfiprintf_r+0xc4e>,r1	! 4f0
    73b0:	62 93       	mov	r9,r2
    73b2:	90 15       	mov.w	73e0 <__vfiprintf_r+0xc50>,r0	! fb97
    73b4:	72 30       	add	#48,r2
    73b6:	31 fc       	add	r15,r1
    73b8:	01 24       	mov.b	r2,@(r0,r1)
    73ba:	e0 48       	mov	#72,r0
    73bc:	02 fe       	mov.l	@(r0,r15),r2
    73be:	e0 40       	mov	#64,r0
    73c0:	03 fe       	mov.l	@(r0,r15),r3
    73c2:	1f 23       	mov.l	r2,@(12,r15)
    73c4:	ab 5e       	bra	6a84 <__vfiprintf_r+0x2f4>
    73c6:	1f 3a       	mov.l	r3,@(40,r15)
    73c8:	52 f7       	mov.l	@(28,r15),r2
    73ca:	e1 ff       	mov	#-1,r1
    73cc:	e8 00       	mov	#0,r8
    73ce:	69 26       	mov.l	@r2+,r9
    73d0:	1f 27       	mov.l	r2,@(28,r15)
    73d2:	29 98       	tst	r9,r9
    73d4:	61 1a       	negc	r1,r1
    73d6:	67 1c       	extu.b	r1,r7
    73d8:	ab 06       	bra	69e8 <__vfiprintf_r+0x258>
    73da:	e3 01       	mov	#1,r3
    73dc:	00 f0       	.word 0x00f0
    73de:	04 f0       	.word 0x04f0
    73e0:	fb 97       	.word 0xfb97
    73e2:	00 09       	nop	
    73e4:	00 00       	.word 0x0000
    73e6:	66 d0       	mov.b	@r13,r6
    73e8:	00 00       	.word 0x0000
    73ea:	4a 90       	.word 0x4a90
    73ec:	00 00       	.word 0x0000
    73ee:	8a 78       	.word 0x8a78
    73f0:	00 00       	.word 0x0000
    73f2:	87 5c       	.word 0x875c
    73f4:	52 f7       	mov.l	@(28,r15),r2
    73f6:	e1 ff       	mov	#-1,r1
    73f8:	e8 00       	mov	#0,r8
    73fa:	69 26       	mov.l	@r2+,r9
    73fc:	1f 27       	mov.l	r2,@(28,r15)
    73fe:	29 98       	tst	r9,r9
    7400:	61 1a       	negc	r1,r1
    7402:	67 1c       	extu.b	r1,r7
    7404:	aa f0       	bra	69e8 <__vfiprintf_r+0x258>
    7406:	e3 00       	mov	#0,r3
    7408:	e8 00       	mov	#0,r8
    740a:	69 26       	mov.l	@r2+,r9
    740c:	ac ff       	bra	6e0e <__vfiprintf_r+0x67e>
    740e:	1f 27       	mov.l	r2,@(28,r15)
    7410:	69 26       	mov.l	@r2+,r9
    7412:	1f 27       	mov.l	r2,@(28,r15)
    7414:	30 97       	cmp/gt	r9,r0
    7416:	31 1a       	subc	r1,r1
    7418:	ad 42       	bra	6ea0 <__vfiprintf_r+0x710>
    741a:	68 13       	mov	r1,r8
    741c:	50 f5       	mov.l	@(20,r15),r0
    741e:	61 22       	mov.l	@r2,r1
    7420:	62 03       	mov	r0,r2
    7422:	42 00       	shll	r2
    7424:	32 2a       	subc	r2,r2
    7426:	21 22       	mov.l	r2,@r1
    7428:	52 f7       	mov.l	@(28,r15),r2
    742a:	11 01       	mov.l	r0,@(4,r1)
    742c:	72 04       	add	#4,r2
    742e:	a9 fe       	bra	682e <__vfiprintf_r+0x9e>
    7430:	1f 27       	mov.l	r2,@(28,r15)
    7432:	00 09       	nop	
    7434:	7b 01       	add	#1,r11
    7436:	63 b0       	mov.b	@r11,r3
    7438:	cb 20       	or	#32,r0
    743a:	aa 42       	bra	68c2 <__vfiprintf_r+0x132>
    743c:	2f 02       	mov.l	r0,@r15
    743e:	00 09       	nop	
    7440:	50 f5       	mov.l	@(20,r15),r0
    7442:	61 26       	mov.l	@r2+,r1
    7444:	21 02       	mov.l	r0,@r1
    7446:	a9 f2       	bra	682e <__vfiprintf_r+0x9e>
    7448:	1f 27       	mov.l	r2,@(28,r15)
    744a:	00 09       	nop	
    744c:	aa cc       	bra	69e8 <__vfiprintf_r+0x258>
    744e:	e3 02       	mov	#2,r3
    7450:	d0 24       	mov.l	74e4 <__vfiprintf_r+0xd54>,r0	! 66d0 <___sprint_r>
    7452:	40 0b       	jsr	@r0
    7454:	55 f1       	mov.l	@(4,r15),r5
    7456:	20 08       	tst	r0,r0
    7458:	89 02       	bt	7460 <__vfiprintf_r+0xcd0>
    745a:	ae 3a       	bra	70d2 <__vfiprintf_r+0x942>
    745c:	52 fd       	mov.l	@(52,r15),r2
    745e:	00 09       	nop	
    7460:	9c 3e       	mov.w	74e0 <__vfiprintf_r+0xd50>,r12	! f0
    7462:	ab a1       	bra	6ba8 <__vfiprintf_r+0x418>
    7464:	3c fc       	add	r15,r12
    7466:	00 09       	nop	
    7468:	1f 87       	mov.l	r8,@(28,r15)
    746a:	ab 0c       	bra	6a86 <__vfiprintf_r+0x2f6>
    746c:	1f 24       	mov.l	r2,@(16,r15)
    746e:	00 09       	nop	
    7470:	69 36       	mov.l	@r3+,r9
    7472:	1f 37       	mov.l	r3,@(28,r15)
    7474:	30 97       	cmp/gt	r9,r0
    7476:	31 1a       	subc	r1,r1
    7478:	ad 12       	bra	6ea0 <__vfiprintf_r+0x710>
    747a:	68 13       	mov	r1,r8
    747c:	d0 1a       	mov.l	74e8 <__vfiprintf_r+0xd58>,r0	! 66b0 <_strlen>
    747e:	40 0b       	jsr	@r0
    7480:	00 09       	nop	
    7482:	e3 00       	mov	#0,r3
    7484:	1f 03       	mov.l	r0,@(12,r15)
    7486:	6a 90       	mov.b	@r9,r10
    7488:	1f 87       	mov.l	r8,@(28,r15)
    748a:	aa fc       	bra	6a86 <__vfiprintf_r+0x2f6>
    748c:	1f 34       	mov.l	r3,@(16,r15)
    748e:	00 09       	nop	
    7490:	1f e3       	mov.l	r14,@(12,r15)
    7492:	3e 16       	cmp/hi	r1,r14
    7494:	8b 01       	bf	749a <__vfiprintf_r+0xd0a>
    7496:	e0 06       	mov	#6,r0
    7498:	1f 03       	mov.l	r0,@(12,r15)
    749a:	50 f3       	mov.l	@(12,r15),r0
    749c:	e3 00       	mov	#0,r3
    749e:	d2 13       	mov.l	74ec <__vfiprintf_r+0xd5c>,r2	! 9e6c
    74a0:	40 11       	cmp/pz	r0
    74a2:	39 9a       	subc	r9,r9
    74a4:	20 99       	and	r9,r0
    74a6:	1f 02       	mov.l	r0,@(8,r15)
    74a8:	1f 87       	mov.l	r8,@(28,r15)
    74aa:	1f 2a       	mov.l	r2,@(40,r15)
    74ac:	aa f6       	bra	6a9c <__vfiprintf_r+0x30c>
    74ae:	1f 34       	mov.l	r3,@(16,r15)
    74b0:	52 fa       	mov.l	@(40,r15),r2
    74b2:	31 28       	sub	r2,r1
    74b4:	aa e6       	bra	6a84 <__vfiprintf_r+0x2f4>
    74b6:	1f 13       	mov.l	r1,@(12,r15)
    74b8:	6a 90       	mov.b	@r9,r10
    74ba:	1f e3       	mov.l	r14,@(12,r15)
    74bc:	1f 87       	mov.l	r8,@(28,r15)
    74be:	aa e2       	bra	6a86 <__vfiprintf_r+0x2f6>
    74c0:	1f 34       	mov.l	r3,@(16,r15)
    74c2:	00 09       	nop	
    74c4:	51 f7       	mov.l	@(28,r15),r1
    74c6:	6e 32       	mov.l	@r3,r14
    74c8:	71 04       	add	#4,r1
    74ca:	4e 11       	cmp/pz	r14
    74cc:	8b 02       	bf	74d4 <__vfiprintf_r+0xd44>
    74ce:	af 69       	bra	73a4 <__vfiprintf_r+0xc14>
    74d0:	63 b0       	mov.b	@r11,r3
    74d2:	00 09       	nop	
    74d4:	63 b0       	mov.b	@r11,r3
    74d6:	ee ff       	mov	#-1,r14
    74d8:	a9 f3       	bra	68c2 <__vfiprintf_r+0x132>
    74da:	1f 17       	mov.l	r1,@(28,r15)
    74dc:	ae c6       	bra	726c <__vfiprintf_r+0xadc>
    74de:	1f 05       	mov.l	r0,@(20,r15)
    74e0:	00 f0       	.word 0x00f0
    74e2:	00 09       	nop	
    74e4:	00 00       	.word 0x0000
    74e6:	66 d0       	mov.b	@r13,r6
    74e8:	00 00       	.word 0x0000
    74ea:	66 b0       	mov.b	@r11,r6
    74ec:	00 00       	.word 0x0000
    74ee:	9e 6c       	mov.w	75ca <__calloc_r+0x7a>,r14	! afdc

000074f0 <_vfiprintf>:
    74f0:	d3 04       	mov.l	7504 <_vfiprintf+0x14>,r3	! a408 <__impure_ptr>
    74f2:	62 43       	mov	r4,r2
    74f4:	d0 04       	mov.l	7508 <_vfiprintf+0x18>,r0	! 6790 <__vfiprintf_r>
    74f6:	61 53       	mov	r5,r1
    74f8:	67 63       	mov	r6,r7
    74fa:	64 32       	mov.l	@r3,r4
    74fc:	65 23       	mov	r2,r5
    74fe:	40 2b       	jmp	@r0
    7500:	66 13       	mov	r1,r6
    7502:	00 09       	nop	
    7504:	00 00       	.word 0x0000
    7506:	a4 08       	bra	7d1a <_memmove+0x7e>
    7508:	00 00       	.word 0x0000
    750a:	67 90       	mov.b	@r9,r7

0000750c <__write_r>:
    750c:	2f 86       	mov.l	r8,@-r15
    750e:	e1 00       	mov	#0,r1
    7510:	d8 0d       	mov.l	7548 <__write_r+0x3c>,r8	! ad04 <_errno>
    7512:	d0 0e       	mov.l	754c <__write_r+0x40>,r0	! 1568 <__write>
    7514:	2f 96       	mov.l	r9,@-r15
    7516:	69 43       	mov	r4,r9
    7518:	4f 22       	sts.l	pr,@-r15
    751a:	64 53       	mov	r5,r4
    751c:	28 12       	mov.l	r1,@r8
    751e:	65 63       	mov	r6,r5
    7520:	40 0b       	jsr	@r0
    7522:	66 73       	mov	r7,r6
    7524:	88 ff       	cmp/eq	#-1,r0
    7526:	89 05       	bt	7534 <__write_r+0x28>
    7528:	4f 26       	lds.l	@r15+,pr
    752a:	69 f6       	mov.l	@r15+,r9
    752c:	68 f6       	mov.l	@r15+,r8
    752e:	00 0b       	rts	
    7530:	00 09       	nop	
    7532:	00 09       	nop	
    7534:	61 82       	mov.l	@r8,r1
    7536:	21 18       	tst	r1,r1
    7538:	89 f6       	bt	7528 <__write_r+0x1c>
    753a:	29 12       	mov.l	r1,@r9
    753c:	4f 26       	lds.l	@r15+,pr
    753e:	69 f6       	mov.l	@r15+,r9
    7540:	68 f6       	mov.l	@r15+,r8
    7542:	00 0b       	rts	
    7544:	00 09       	nop	
    7546:	00 09       	nop	
    7548:	00 00       	.word 0x0000
    754a:	ad 04       	bra	6f56 <__vfiprintf_r+0x7c6>
    754c:	00 00       	.word 0x0000
    754e:	15 68       	mov.l	r6,@(32,r5)

00007550 <__calloc_r>:
    7550:	67 43       	mov	r4,r7
    7552:	64 63       	mov	r6,r4
    7554:	d6 21       	mov.l	75dc <__calloc_r+0x8c>,r6	! 862c <___mulsi3>
    7556:	2f 86       	mov.l	r8,@-r15
    7558:	4f 22       	sts.l	pr,@-r15
    755a:	46 0b       	jsr	@r6
    755c:	00 09       	nop	
    755e:	65 03       	mov	r0,r5
    7560:	d0 1f       	mov.l	75e0 <__calloc_r+0x90>,r0	! 518c <__malloc_r>
    7562:	40 0b       	jsr	@r0
    7564:	64 73       	mov	r7,r4
    7566:	20 08       	tst	r0,r0
    7568:	68 03       	mov	r0,r8
    756a:	89 10       	bt	758e <__calloc_r+0x3e>
    756c:	61 03       	mov	r0,r1
    756e:	71 f8       	add	#-8,r1
    7570:	56 11       	mov.l	@(4,r1),r6
    7572:	e1 fc       	mov	#-4,r1
    7574:	26 19       	and	r1,r6
    7576:	76 fc       	add	#-4,r6
    7578:	e1 24       	mov	#36,r1
    757a:	36 16       	cmp/hi	r1,r6
    757c:	89 1a       	bt	75b4 <__calloc_r+0x64>
    757e:	e1 13       	mov	#19,r1
    7580:	36 16       	cmp/hi	r1,r6
    7582:	61 03       	mov	r0,r1
    7584:	89 08       	bt	7598 <__calloc_r+0x48>
    7586:	e2 00       	mov	#0,r2
    7588:	21 22       	mov.l	r2,@r1
    758a:	11 21       	mov.l	r2,@(4,r1)
    758c:	11 22       	mov.l	r2,@(8,r1)
    758e:	60 83       	mov	r8,r0
    7590:	4f 26       	lds.l	@r15+,pr
    7592:	68 f6       	mov.l	@r15+,r8
    7594:	00 0b       	rts	
    7596:	00 09       	nop	
    7598:	e1 00       	mov	#0,r1
    759a:	e2 1b       	mov	#27,r2
    759c:	20 12       	mov.l	r1,@r0
    759e:	36 26       	cmp/hi	r2,r6
    75a0:	10 11       	mov.l	r1,@(4,r0)
    75a2:	8b 11       	bf	75c8 <__calloc_r+0x78>
    75a4:	10 12       	mov.l	r1,@(8,r0)
    75a6:	10 13       	mov.l	r1,@(12,r0)
    75a8:	60 63       	mov	r6,r0
    75aa:	88 24       	cmp/eq	#36,r0
    75ac:	89 10       	bt	75d0 <__calloc_r+0x80>
    75ae:	61 83       	mov	r8,r1
    75b0:	af e9       	bra	7586 <__calloc_r+0x36>
    75b2:	71 10       	add	#16,r1
    75b4:	64 03       	mov	r0,r4
    75b6:	d0 0b       	mov.l	75e4 <__calloc_r+0x94>,r0	! 1670 <_memset>
    75b8:	40 0b       	jsr	@r0
    75ba:	e5 00       	mov	#0,r5
    75bc:	60 83       	mov	r8,r0
    75be:	4f 26       	lds.l	@r15+,pr
    75c0:	68 f6       	mov.l	@r15+,r8
    75c2:	00 0b       	rts	
    75c4:	00 09       	nop	
    75c6:	00 09       	nop	
    75c8:	61 03       	mov	r0,r1
    75ca:	af dc       	bra	7586 <__calloc_r+0x36>
    75cc:	71 08       	add	#8,r1
    75ce:	00 09       	nop	
    75d0:	18 14       	mov.l	r1,@(16,r8)
    75d2:	18 15       	mov.l	r1,@(20,r8)
    75d4:	61 83       	mov	r8,r1
    75d6:	af d6       	bra	7586 <__calloc_r+0x36>
    75d8:	71 18       	add	#24,r1
    75da:	00 09       	nop	
    75dc:	00 00       	.word 0x0000
    75de:	86 2c       	.word 0x862c
    75e0:	00 00       	.word 0x0000
    75e2:	51 8c       	mov.l	@(48,r8),r1
    75e4:	00 00       	.word 0x0000
    75e6:	16 70       	mov.l	r7,@(0,r6)

000075e8 <__close_r>:
    75e8:	2f 86       	mov.l	r8,@-r15
    75ea:	e1 00       	mov	#0,r1
    75ec:	d8 0c       	mov.l	7620 <__close_r+0x38>,r8	! ad04 <_errno>
    75ee:	d0 0d       	mov.l	7624 <__close_r+0x3c>,r0	! 1590 <__close>
    75f0:	2f 96       	mov.l	r9,@-r15
    75f2:	69 43       	mov	r4,r9
    75f4:	4f 22       	sts.l	pr,@-r15
    75f6:	64 53       	mov	r5,r4
    75f8:	40 0b       	jsr	@r0
    75fa:	28 12       	mov.l	r1,@r8
    75fc:	88 ff       	cmp/eq	#-1,r0
    75fe:	89 05       	bt	760c <__close_r+0x24>
    7600:	4f 26       	lds.l	@r15+,pr
    7602:	69 f6       	mov.l	@r15+,r9
    7604:	68 f6       	mov.l	@r15+,r8
    7606:	00 0b       	rts	
    7608:	00 09       	nop	
    760a:	00 09       	nop	
    760c:	61 82       	mov.l	@r8,r1
    760e:	21 18       	tst	r1,r1
    7610:	89 f6       	bt	7600 <__close_r+0x18>
    7612:	29 12       	mov.l	r1,@r9
    7614:	4f 26       	lds.l	@r15+,pr
    7616:	69 f6       	mov.l	@r15+,r9
    7618:	68 f6       	mov.l	@r15+,r8
    761a:	00 0b       	rts	
    761c:	00 09       	nop	
    761e:	00 09       	nop	
    7620:	00 00       	.word 0x0000
    7622:	ad 04       	bra	702e <__vfiprintf_r+0x89e>
    7624:	00 00       	.word 0x0000
    7626:	15 90       	mov.l	r9,@(0,r5)

00007628 <__fclose_r>:
    7628:	2f 86       	mov.l	r8,@-r15
    762a:	25 58       	tst	r5,r5
    762c:	2f 96       	mov.l	r9,@-r15
    762e:	68 53       	mov	r5,r8
    7630:	2f a6       	mov.l	r10,@-r15
    7632:	69 43       	mov	r4,r9
    7634:	2f b6       	mov.l	r11,@-r15
    7636:	2f c6       	mov.l	r12,@-r15
    7638:	4f 22       	sts.l	pr,@-r15
    763a:	89 09       	bt	7650 <__fclose_r+0x28>
    763c:	24 48       	tst	r4,r4
    763e:	89 02       	bt	7646 <__fclose_r+0x1e>
    7640:	51 4e       	mov.l	@(56,r4),r1
    7642:	21 18       	tst	r1,r1
    7644:	89 44       	bt	76d0 <__fclose_r+0xa8>
    7646:	6a 83       	mov	r8,r10
    7648:	7a 0c       	add	#12,r10
    764a:	61 a1       	mov.w	@r10,r1
    764c:	21 18       	tst	r1,r1
    764e:	8b 09       	bf	7664 <__fclose_r+0x3c>
    7650:	eb 00       	mov	#0,r11
    7652:	60 b3       	mov	r11,r0
    7654:	4f 26       	lds.l	@r15+,pr
    7656:	6c f6       	mov.l	@r15+,r12
    7658:	6b f6       	mov.l	@r15+,r11
    765a:	6a f6       	mov.l	@r15+,r10
    765c:	69 f6       	mov.l	@r15+,r9
    765e:	68 f6       	mov.l	@r15+,r8
    7660:	00 0b       	rts	
    7662:	00 09       	nop	
    7664:	d0 21       	mov.l	76ec <__fclose_r+0xc4>,r0	! 4940 <__fflush_r>
    7666:	64 93       	mov	r9,r4
    7668:	40 0b       	jsr	@r0
    766a:	65 83       	mov	r8,r5
    766c:	6b 03       	mov	r0,r11
    766e:	50 8b       	mov.l	@(44,r8),r0
    7670:	20 08       	tst	r0,r0
    7672:	89 04       	bt	767e <__fclose_r+0x56>
    7674:	64 93       	mov	r9,r4
    7676:	40 0b       	jsr	@r0
    7678:	55 87       	mov.l	@(28,r8),r5
    767a:	40 11       	cmp/pz	r0
    767c:	8b 2e       	bf	76dc <__fclose_r+0xb4>
    767e:	60 a1       	mov.w	@r10,r0
    7680:	c8 80       	tst	#-128,r0
    7682:	8b 2d       	bf	76e0 <__fclose_r+0xb8>
    7684:	55 8c       	mov.l	@(48,r8),r5
    7686:	6c 83       	mov	r8,r12
    7688:	7c 40       	add	#64,r12
    768a:	25 58       	tst	r5,r5
    768c:	89 06       	bt	769c <__fclose_r+0x74>
    768e:	35 c0       	cmp/eq	r12,r5
    7690:	89 02       	bt	7698 <__fclose_r+0x70>
    7692:	d1 17       	mov.l	76f0 <__fclose_r+0xc8>,r1	! 4cc8 <__free_r>
    7694:	41 0b       	jsr	@r1
    7696:	64 93       	mov	r9,r4
    7698:	e1 00       	mov	#0,r1
    769a:	18 1c       	mov.l	r1,@(48,r8)
    769c:	55 c1       	mov.l	@(4,r12),r5
    769e:	25 58       	tst	r5,r5
    76a0:	89 04       	bt	76ac <__fclose_r+0x84>
    76a2:	d1 13       	mov.l	76f0 <__fclose_r+0xc8>,r1	! 4cc8 <__free_r>
    76a4:	41 0b       	jsr	@r1
    76a6:	64 93       	mov	r9,r4
    76a8:	e1 00       	mov	#0,r1
    76aa:	1c 11       	mov.l	r1,@(4,r12)
    76ac:	d1 11       	mov.l	76f4 <__fclose_r+0xcc>,r1	! 4bb4 <___sfp_lock_acquire>
    76ae:	41 0b       	jsr	@r1
    76b0:	00 09       	nop	
    76b2:	e1 00       	mov	#0,r1
    76b4:	2a 11       	mov.w	r1,@r10
    76b6:	d1 10       	mov.l	76f8 <__fclose_r+0xd0>,r1	! 4bb8 <___sfp_lock_release>
    76b8:	41 0b       	jsr	@r1
    76ba:	00 09       	nop	
    76bc:	60 b3       	mov	r11,r0
    76be:	4f 26       	lds.l	@r15+,pr
    76c0:	6c f6       	mov.l	@r15+,r12
    76c2:	6b f6       	mov.l	@r15+,r11
    76c4:	6a f6       	mov.l	@r15+,r10
    76c6:	69 f6       	mov.l	@r15+,r9
    76c8:	68 f6       	mov.l	@r15+,r8
    76ca:	00 0b       	rts	
    76cc:	00 09       	nop	
    76ce:	00 09       	nop	
    76d0:	d1 0a       	mov.l	76fc <__fclose_r+0xd4>,r1	! 4a90 <___sinit>
    76d2:	41 0b       	jsr	@r1
    76d4:	6a 83       	mov	r8,r10
    76d6:	af b8       	bra	764a <__fclose_r+0x22>
    76d8:	7a 0c       	add	#12,r10
    76da:	00 09       	nop	
    76dc:	af cf       	bra	767e <__fclose_r+0x56>
    76de:	eb ff       	mov	#-1,r11
    76e0:	d1 03       	mov.l	76f0 <__fclose_r+0xc8>,r1	! 4cc8 <__free_r>
    76e2:	64 93       	mov	r9,r4
    76e4:	41 0b       	jsr	@r1
    76e6:	55 84       	mov.l	@(16,r8),r5
    76e8:	af cd       	bra	7686 <__fclose_r+0x5e>
    76ea:	55 8c       	mov.l	@(48,r8),r5
    76ec:	00 00       	.word 0x0000
    76ee:	49 40       	.word 0x4940
    76f0:	00 00       	.word 0x0000
    76f2:	4c c8       	.word 0x4cc8
    76f4:	00 00       	.word 0x0000
    76f6:	4b b4       	.word 0x4bb4
    76f8:	00 00       	.word 0x0000
    76fa:	4b b8       	.word 0x4bb8
    76fc:	00 00       	.word 0x0000
    76fe:	4a 90       	.word 0x4a90

00007700 <_fclose>:
    7700:	d1 02       	mov.l	770c <_fclose+0xc>,r1	! a408 <__impure_ptr>
    7702:	65 43       	mov	r4,r5
    7704:	d0 02       	mov.l	7710 <_fclose+0x10>,r0	! 7628 <__fclose_r>
    7706:	40 2b       	jmp	@r0
    7708:	64 12       	mov.l	@r1,r4
    770a:	00 09       	nop	
    770c:	00 00       	.word 0x0000
    770e:	a4 08       	bra	7f22 <__realloc_r+0x162>
    7710:	00 00       	.word 0x0000
    7712:	76 28       	add	#40,r6

00007714 <__fputwc_r>:
    7714:	2f 86       	mov.l	r8,@-r15
    7716:	68 63       	mov	r6,r8
    7718:	2f 96       	mov.l	r9,@-r15
    771a:	69 63       	mov	r6,r9
    771c:	2f a6       	mov.l	r10,@-r15
    771e:	79 0c       	add	#12,r9
    7720:	2f b6       	mov.l	r11,@-r15
    7722:	6a 53       	mov	r5,r10
    7724:	2f c6       	mov.l	r12,@-r15
    7726:	6b 43       	mov	r4,r11
    7728:	2f d6       	mov.l	r13,@-r15
    772a:	2f e6       	mov.l	r14,@-r15
    772c:	4f 22       	sts.l	pr,@-r15
    772e:	91 85       	mov.w	783c <__fputwc_r+0x128>,r1	! 2000
    7730:	7f fc       	add	#-4,r15
    7732:	62 91       	mov.w	@r9,r2
    7734:	22 18       	tst	r1,r2
    7736:	8b 06       	bf	7746 <__fputwc_r+0x32>
    7738:	63 63       	mov	r6,r3
    773a:	22 1b       	or	r1,r2
    773c:	73 40       	add	#64,r3
    773e:	29 21       	mov.w	r2,@r9
    7740:	52 39       	mov.l	@(36,r3),r2
    7742:	22 1b       	or	r1,r2
    7744:	13 29       	mov.l	r2,@(36,r3)
    7746:	d0 3e       	mov.l	7840 <__fputwc_r+0x12c>,r0	! 5020 <___locale_mb_cur_max>
    7748:	40 0b       	jsr	@r0
    774a:	6d f3       	mov	r15,r13
    774c:	88 01       	cmp/eq	#1,r0
    774e:	89 63       	bt	7818 <__fputwc_r+0x104>
    7750:	d0 3c       	mov.l	7844 <__fputwc_r+0x130>,r0	! 8300 <__wcrtomb_r>
    7752:	67 83       	mov	r8,r7
    7754:	64 b3       	mov	r11,r4
    7756:	65 f3       	mov	r15,r5
    7758:	66 a3       	mov	r10,r6
    775a:	40 0b       	jsr	@r0
    775c:	77 5c       	add	#92,r7
    775e:	88 ff       	cmp/eq	#-1,r0
    7760:	6e 03       	mov	r0,r14
    7762:	89 31       	bt	77c8 <__fputwc_r+0xb4>
    7764:	20 08       	tst	r0,r0
    7766:	89 3f       	bt	77e8 <__fputwc_r+0xd4>
    7768:	dc 37       	mov.l	7848 <__fputwc_r+0x134>,r12	! 81f4 <___swbuf_r>
    776a:	a0 0b       	bra	7784 <__fputwc_r+0x70>
    776c:	e9 00       	mov	#0,r9
    776e:	00 09       	nop	
    7770:	61 82       	mov.l	@r8,r1
    7772:	60 93       	mov	r9,r0
    7774:	02 dc       	mov.b	@(r0,r13),r2
    7776:	21 20       	mov.b	r2,@r1
    7778:	61 82       	mov.l	@r8,r1
    777a:	71 01       	add	#1,r1
    777c:	28 12       	mov.l	r1,@r8
    777e:	79 01       	add	#1,r9
    7780:	39 e2       	cmp/hs	r14,r9
    7782:	89 31       	bt	77e8 <__fputwc_r+0xd4>
    7784:	51 82       	mov.l	@(8,r8),r1
    7786:	71 ff       	add	#-1,r1
    7788:	18 12       	mov.l	r1,@(8,r8)
    778a:	41 11       	cmp/pz	r1
    778c:	89 f0       	bt	7770 <__fputwc_r+0x5c>
    778e:	52 86       	mov.l	@(24,r8),r2
    7790:	31 23       	cmp/ge	r2,r1
    7792:	8b 35       	bf	7800 <__fputwc_r+0xec>
    7794:	61 82       	mov.l	@r8,r1
    7796:	60 93       	mov	r9,r0
    7798:	02 dc       	mov.b	@(r0,r13),r2
    779a:	21 20       	mov.b	r2,@r1
    779c:	61 82       	mov.l	@r8,r1
    779e:	60 10       	mov.b	@r1,r0
    77a0:	60 0c       	extu.b	r0,r0
    77a2:	88 0a       	cmp/eq	#10,r0
    77a4:	89 40       	bt	7828 <__fputwc_r+0x114>
    77a6:	e2 00       	mov	#0,r2
    77a8:	71 01       	add	#1,r1
    77aa:	28 12       	mov.l	r1,@r8
    77ac:	22 28       	tst	r2,r2
    77ae:	89 e6       	bt	777e <__fputwc_r+0x6a>
    77b0:	e0 ff       	mov	#-1,r0
    77b2:	7f 04       	add	#4,r15
    77b4:	4f 26       	lds.l	@r15+,pr
    77b6:	6e f6       	mov.l	@r15+,r14
    77b8:	6d f6       	mov.l	@r15+,r13
    77ba:	6c f6       	mov.l	@r15+,r12
    77bc:	6b f6       	mov.l	@r15+,r11
    77be:	6a f6       	mov.l	@r15+,r10
    77c0:	69 f6       	mov.l	@r15+,r9
    77c2:	68 f6       	mov.l	@r15+,r8
    77c4:	00 0b       	rts	
    77c6:	00 09       	nop	
    77c8:	60 91       	mov.w	@r9,r0
    77ca:	cb 40       	or	#64,r0
    77cc:	29 01       	mov.w	r0,@r9
    77ce:	e0 ff       	mov	#-1,r0
    77d0:	7f 04       	add	#4,r15
    77d2:	4f 26       	lds.l	@r15+,pr
    77d4:	6e f6       	mov.l	@r15+,r14
    77d6:	6d f6       	mov.l	@r15+,r13
    77d8:	6c f6       	mov.l	@r15+,r12
    77da:	6b f6       	mov.l	@r15+,r11
    77dc:	6a f6       	mov.l	@r15+,r10
    77de:	69 f6       	mov.l	@r15+,r9
    77e0:	68 f6       	mov.l	@r15+,r8
    77e2:	00 0b       	rts	
    77e4:	00 09       	nop	
    77e6:	00 09       	nop	
    77e8:	60 a3       	mov	r10,r0
    77ea:	7f 04       	add	#4,r15
    77ec:	4f 26       	lds.l	@r15+,pr
    77ee:	6e f6       	mov.l	@r15+,r14
    77f0:	6d f6       	mov.l	@r15+,r13
    77f2:	6c f6       	mov.l	@r15+,r12
    77f4:	6b f6       	mov.l	@r15+,r11
    77f6:	6a f6       	mov.l	@r15+,r10
    77f8:	69 f6       	mov.l	@r15+,r9
    77fa:	68 f6       	mov.l	@r15+,r8
    77fc:	00 0b       	rts	
    77fe:	00 09       	nop	
    7800:	60 93       	mov	r9,r0
    7802:	05 dc       	mov.b	@(r0,r13),r5
    7804:	64 b3       	mov	r11,r4
    7806:	65 5c       	extu.b	r5,r5
    7808:	4c 0b       	jsr	@r12
    780a:	66 83       	mov	r8,r6
    780c:	88 ff       	cmp/eq	#-1,r0
    780e:	02 29       	movt	r2
    7810:	22 28       	tst	r2,r2
    7812:	89 b4       	bt	777e <__fputwc_r+0x6a>
    7814:	af cd       	bra	77b2 <__fputwc_r+0x9e>
    7816:	e0 ff       	mov	#-1,r0
    7818:	91 11       	mov.w	783e <__fputwc_r+0x12a>,r1	! fe
    781a:	62 a3       	mov	r10,r2
    781c:	72 ff       	add	#-1,r2
    781e:	32 16       	cmp/hi	r1,r2
    7820:	89 96       	bt	7750 <__fputwc_r+0x3c>
    7822:	2f a0       	mov.b	r10,@r15
    7824:	af a0       	bra	7768 <__fputwc_r+0x54>
    7826:	ee 01       	mov	#1,r14
    7828:	64 b3       	mov	r11,r4
    782a:	e5 0a       	mov	#10,r5
    782c:	4c 0b       	jsr	@r12
    782e:	66 83       	mov	r8,r6
    7830:	88 ff       	cmp/eq	#-1,r0
    7832:	02 29       	movt	r2
    7834:	22 28       	tst	r2,r2
    7836:	89 a2       	bt	777e <__fputwc_r+0x6a>
    7838:	af bb       	bra	77b2 <__fputwc_r+0x9e>
    783a:	e0 ff       	mov	#-1,r0
    783c:	20 00       	mov.b	r0,@r0
    783e:	00 fe       	mov.l	@(r0,r15),r0
    7840:	00 00       	.word 0x0000
    7842:	50 20       	mov.l	@(0,r2),r0
    7844:	00 00       	.word 0x0000
    7846:	83 00       	.word 0x8300
    7848:	00 00       	.word 0x0000
    784a:	81 f4       	mov.w	r0,@(8,r15)

0000784c <_fputwc>:
    784c:	2f 86       	mov.l	r8,@-r15
    784e:	66 53       	mov	r5,r6
    7850:	d8 0b       	mov.l	7880 <_fputwc+0x34>,r8	! a408 <__impure_ptr>
    7852:	2f 96       	mov.l	r9,@-r15
    7854:	69 43       	mov	r4,r9
    7856:	64 82       	mov.l	@r8,r4
    7858:	4f 22       	sts.l	pr,@-r15
    785a:	24 48       	tst	r4,r4
    785c:	7f fc       	add	#-4,r15
    785e:	89 07       	bt	7870 <_fputwc+0x24>
    7860:	51 4e       	mov.l	@(56,r4),r1
    7862:	21 18       	tst	r1,r1
    7864:	8b 04       	bf	7870 <_fputwc+0x24>
    7866:	d1 07       	mov.l	7884 <_fputwc+0x38>,r1	! 4a90 <___sinit>
    7868:	41 0b       	jsr	@r1
    786a:	2f 52       	mov.l	r5,@r15
    786c:	64 82       	mov.l	@r8,r4
    786e:	66 f2       	mov.l	@r15,r6
    7870:	d0 05       	mov.l	7888 <_fputwc+0x3c>,r0	! 7714 <__fputwc_r>
    7872:	65 93       	mov	r9,r5
    7874:	7f 04       	add	#4,r15
    7876:	4f 26       	lds.l	@r15+,pr
    7878:	69 f6       	mov.l	@r15+,r9
    787a:	68 f6       	mov.l	@r15+,r8
    787c:	40 2b       	jmp	@r0
    787e:	00 09       	nop	
    7880:	00 00       	.word 0x0000
    7882:	a4 08       	bra	8096 <__realloc_r+0x2d6>
    7884:	00 00       	.word 0x0000
    7886:	4a 90       	.word 0x4a90
    7888:	00 00       	.word 0x0000
    788a:	77 14       	add	#20,r7

0000788c <__fstat_r>:
    788c:	2f 86       	mov.l	r8,@-r15
    788e:	e1 00       	mov	#0,r1
    7890:	d8 0c       	mov.l	78c4 <__fstat_r+0x38>,r8	! ad04 <_errno>
    7892:	d0 0d       	mov.l	78c8 <__fstat_r+0x3c>,r0	! 15a4 <__fstat>
    7894:	2f 96       	mov.l	r9,@-r15
    7896:	69 43       	mov	r4,r9
    7898:	4f 22       	sts.l	pr,@-r15
    789a:	64 53       	mov	r5,r4
    789c:	28 12       	mov.l	r1,@r8
    789e:	40 0b       	jsr	@r0
    78a0:	65 63       	mov	r6,r5
    78a2:	88 ff       	cmp/eq	#-1,r0
    78a4:	89 04       	bt	78b0 <__fstat_r+0x24>
    78a6:	4f 26       	lds.l	@r15+,pr
    78a8:	69 f6       	mov.l	@r15+,r9
    78aa:	68 f6       	mov.l	@r15+,r8
    78ac:	00 0b       	rts	
    78ae:	00 09       	nop	
    78b0:	61 82       	mov.l	@r8,r1
    78b2:	21 18       	tst	r1,r1
    78b4:	89 f7       	bt	78a6 <__fstat_r+0x1a>
    78b6:	29 12       	mov.l	r1,@r9
    78b8:	4f 26       	lds.l	@r15+,pr
    78ba:	69 f6       	mov.l	@r15+,r9
    78bc:	68 f6       	mov.l	@r15+,r8
    78be:	00 0b       	rts	
    78c0:	00 09       	nop	
    78c2:	00 09       	nop	
    78c4:	00 00       	.word 0x0000
    78c6:	ad 04       	bra	72d2 <__vfiprintf_r+0xb42>
    78c8:	00 00       	.word 0x0000
    78ca:	15 a4       	mov.l	r10,@(16,r5)

000078cc <___sfvwrite_r>:
    78cc:	2f 86       	mov.l	r8,@-r15
    78ce:	68 53       	mov	r5,r8
    78d0:	2f 96       	mov.l	r9,@-r15
    78d2:	2f a6       	mov.l	r10,@-r15
    78d4:	6a 63       	mov	r6,r10
    78d6:	2f b6       	mov.l	r11,@-r15
    78d8:	2f c6       	mov.l	r12,@-r15
    78da:	2f d6       	mov.l	r13,@-r15
    78dc:	2f e6       	mov.l	r14,@-r15
    78de:	4f 22       	sts.l	pr,@-r15
    78e0:	51 62       	mov.l	@(8,r6),r1
    78e2:	7f ec       	add	#-20,r15
    78e4:	1f 42       	mov.l	r4,@(8,r15)
    78e6:	21 18       	tst	r1,r1
    78e8:	89 22       	bt	7930 <___sfvwrite_r+0x64>
    78ea:	61 53       	mov	r5,r1
    78ec:	71 0c       	add	#12,r1
    78ee:	60 11       	mov.w	@r1,r0
    78f0:	1f 13       	mov.l	r1,@(12,r15)
    78f2:	c8 08       	tst	#8,r0
    78f4:	89 28       	bt	7948 <___sfvwrite_r+0x7c>
    78f6:	51 54       	mov.l	@(16,r5),r1
    78f8:	21 18       	tst	r1,r1
    78fa:	89 25       	bt	7948 <___sfvwrite_r+0x7c>
    78fc:	c8 02       	tst	#2,r0
    78fe:	69 a2       	mov.l	@r10,r9
    7900:	89 2f       	bt	7962 <___sfvwrite_r+0x96>
    7902:	9c 7d       	mov.w	7a00 <___sfvwrite_r+0x134>,r12	! 400
    7904:	ee 00       	mov	#0,r14
    7906:	eb 00       	mov	#0,r11
    7908:	2b b8       	tst	r11,r11
    790a:	89 63       	bt	79d4 <___sfvwrite_r+0x108>
    790c:	3b c6       	cmp/hi	r12,r11
    790e:	55 87       	mov.l	@(28,r8),r5
    7910:	67 b3       	mov	r11,r7
    7912:	8b 00       	bf	7916 <___sfvwrite_r+0x4a>
    7914:	97 74       	mov.w	7a00 <___sfvwrite_r+0x134>,r7	! 400
    7916:	50 89       	mov.l	@(36,r8),r0
    7918:	66 e3       	mov	r14,r6
    791a:	40 0b       	jsr	@r0
    791c:	54 f2       	mov.l	@(8,r15),r4
    791e:	40 15       	cmp/pl	r0
    7920:	8b 5e       	bf	79e0 <___sfvwrite_r+0x114>
    7922:	51 a2       	mov.l	@(8,r10),r1
    7924:	3e 0c       	add	r0,r14
    7926:	3b 08       	sub	r0,r11
    7928:	31 08       	sub	r0,r1
    792a:	1a 12       	mov.l	r1,@(8,r10)
    792c:	21 18       	tst	r1,r1
    792e:	8b eb       	bf	7908 <___sfvwrite_r+0x3c>
    7930:	e0 00       	mov	#0,r0
    7932:	7f 14       	add	#20,r15
    7934:	4f 26       	lds.l	@r15+,pr
    7936:	6e f6       	mov.l	@r15+,r14
    7938:	6d f6       	mov.l	@r15+,r13
    793a:	6c f6       	mov.l	@r15+,r12
    793c:	6b f6       	mov.l	@r15+,r11
    793e:	6a f6       	mov.l	@r15+,r10
    7940:	69 f6       	mov.l	@r15+,r9
    7942:	68 f6       	mov.l	@r15+,r8
    7944:	00 0b       	rts	
    7946:	00 09       	nop	
    7948:	d0 2f       	mov.l	7a08 <___sfvwrite_r+0x13c>,r0	! 3108 <___swsetup_r>
    794a:	65 83       	mov	r8,r5
    794c:	40 0b       	jsr	@r0
    794e:	54 f2       	mov.l	@(8,r15),r4
    7950:	20 08       	tst	r0,r0
    7952:	89 01       	bt	7958 <___sfvwrite_r+0x8c>
    7954:	af ed       	bra	7932 <___sfvwrite_r+0x66>
    7956:	e0 ff       	mov	#-1,r0
    7958:	52 f3       	mov.l	@(12,r15),r2
    795a:	69 a2       	mov.l	@r10,r9
    795c:	60 21       	mov.w	@r2,r0
    795e:	c8 02       	tst	#2,r0
    7960:	8b cf       	bf	7902 <___sfvwrite_r+0x36>
    7962:	c8 01       	tst	#1,r0
    7964:	8b 54       	bf	7a10 <___sfvwrite_r+0x144>
    7966:	ec 00       	mov	#0,r12
    7968:	eb 00       	mov	#0,r11
    796a:	00 09       	nop	
    796c:	2b b8       	tst	r11,r11
    796e:	89 2d       	bt	79cc <___sfvwrite_r+0x100>
    7970:	93 47       	mov.w	7a02 <___sfvwrite_r+0x136>,r3	! 200
    7972:	5d 82       	mov.l	@(8,r8),r13
    7974:	20 38       	tst	r3,r0
    7976:	8b 01       	bf	797c <___sfvwrite_r+0xb0>
    7978:	a0 9c       	bra	7ab4 <___sfvwrite_r+0x1e8>
    797a:	64 82       	mov.l	@r8,r4
    797c:	3b d2       	cmp/hs	r13,r11
    797e:	62 d3       	mov	r13,r2
    7980:	89 02       	bt	7988 <___sfvwrite_r+0xbc>
    7982:	a0 bf       	bra	7b04 <___sfvwrite_r+0x238>
    7984:	1f b4       	mov.l	r11,@(16,r15)
    7986:	00 09       	nop	
    7988:	91 3c       	mov.w	7a04 <___sfvwrite_r+0x138>,r1	! 480
    798a:	20 18       	tst	r1,r0
    798c:	89 02       	bt	7994 <___sfvwrite_r+0xc8>
    798e:	a0 d9       	bra	7b44 <___sfvwrite_r+0x278>
    7990:	52 85       	mov.l	@(20,r8),r2
    7992:	00 09       	nop	
    7994:	64 82       	mov.l	@r8,r4
    7996:	6e b3       	mov	r11,r14
    7998:	1f d4       	mov.l	r13,@(16,r15)
    799a:	6d b3       	mov	r11,r13
    799c:	d3 1b       	mov.l	7a0c <___sfvwrite_r+0x140>,r3	! 7c9c <_memmove>
    799e:	66 23       	mov	r2,r6
    79a0:	1f 21       	mov.l	r2,@(4,r15)
    79a2:	43 0b       	jsr	@r3
    79a4:	65 c3       	mov	r12,r5
    79a6:	51 82       	mov.l	@(8,r8),r1
    79a8:	53 f4       	mov.l	@(16,r15),r3
    79aa:	52 f1       	mov.l	@(4,r15),r2
    79ac:	31 38       	sub	r3,r1
    79ae:	18 12       	mov.l	r1,@(8,r8)
    79b0:	61 82       	mov.l	@r8,r1
    79b2:	31 2c       	add	r2,r1
    79b4:	28 12       	mov.l	r1,@r8
    79b6:	51 a2       	mov.l	@(8,r10),r1
    79b8:	3c ec       	add	r14,r12
    79ba:	3b e8       	sub	r14,r11
    79bc:	31 d8       	sub	r13,r1
    79be:	1a 12       	mov.l	r1,@(8,r10)
    79c0:	21 18       	tst	r1,r1
    79c2:	89 b5       	bt	7930 <___sfvwrite_r+0x64>
    79c4:	53 f3       	mov.l	@(12,r15),r3
    79c6:	2b b8       	tst	r11,r11
    79c8:	60 31       	mov.w	@r3,r0
    79ca:	8b d1       	bf	7970 <___sfvwrite_r+0xa4>
    79cc:	6c 92       	mov.l	@r9,r12
    79ce:	5b 91       	mov.l	@(4,r9),r11
    79d0:	af cc       	bra	796c <___sfvwrite_r+0xa0>
    79d2:	79 08       	add	#8,r9
    79d4:	6e 92       	mov.l	@r9,r14
    79d6:	5b 91       	mov.l	@(4,r9),r11
    79d8:	af 96       	bra	7908 <___sfvwrite_r+0x3c>
    79da:	79 08       	add	#8,r9
    79dc:	e1 0c       	mov	#12,r1
    79de:	23 12       	mov.l	r1,@r3
    79e0:	51 f3       	mov.l	@(12,r15),r1
    79e2:	60 11       	mov.w	@r1,r0
    79e4:	cb 40       	or	#64,r0
    79e6:	21 01       	mov.w	r0,@r1
    79e8:	e0 ff       	mov	#-1,r0
    79ea:	7f 14       	add	#20,r15
    79ec:	4f 26       	lds.l	@r15+,pr
    79ee:	6e f6       	mov.l	@r15+,r14
    79f0:	6d f6       	mov.l	@r15+,r13
    79f2:	6c f6       	mov.l	@r15+,r12
    79f4:	6b f6       	mov.l	@r15+,r11
    79f6:	6a f6       	mov.l	@r15+,r10
    79f8:	69 f6       	mov.l	@r15+,r9
    79fa:	68 f6       	mov.l	@r15+,r8
    79fc:	00 0b       	rts	
    79fe:	00 09       	nop	
    7a00:	04 00       	.word 0x0400
    7a02:	02 00       	.word 0x0200
    7a04:	04 80       	.word 0x0480
    7a06:	00 09       	nop	
    7a08:	00 00       	.word 0x0000
    7a0a:	31 08       	sub	r0,r1
    7a0c:	00 00       	.word 0x0000
    7a0e:	7c 9c       	add	#-100,r12
    7a10:	ed 00       	mov	#0,r13
    7a12:	e3 00       	mov	#0,r3
    7a14:	ee 00       	mov	#0,r14
    7a16:	eb 00       	mov	#0,r11
    7a18:	2b b8       	tst	r11,r11
    7a1a:	89 2b       	bt	7a74 <___sfvwrite_r+0x1a8>
    7a1c:	23 38       	tst	r3,r3
    7a1e:	8b 01       	bf	7a24 <___sfvwrite_r+0x158>
    7a20:	a0 84       	bra	7b2c <___sfvwrite_r+0x260>
    7a22:	64 e3       	mov	r14,r4
    7a24:	3d b6       	cmp/hi	r11,r13
    7a26:	61 d3       	mov	r13,r1
    7a28:	8b 00       	bf	7a2c <___sfvwrite_r+0x160>
    7a2a:	61 b3       	mov	r11,r1
    7a2c:	64 82       	mov.l	@r8,r4
    7a2e:	52 84       	mov.l	@(16,r8),r2
    7a30:	5c 82       	mov.l	@(8,r8),r12
    7a32:	34 26       	cmp/hi	r2,r4
    7a34:	57 85       	mov.l	@(20,r8),r7
    7a36:	8b 02       	bf	7a3e <___sfvwrite_r+0x172>
    7a38:	3c 7c       	add	r7,r12
    7a3a:	31 c7       	cmp/gt	r12,r1
    7a3c:	89 20       	bt	7a80 <___sfvwrite_r+0x1b4>
    7a3e:	31 73       	cmp/ge	r7,r1
    7a40:	8b 50       	bf	7ae4 <___sfvwrite_r+0x218>
    7a42:	50 89       	mov.l	@(36,r8),r0
    7a44:	66 e3       	mov	r14,r6
    7a46:	2f 32       	mov.l	r3,@r15
    7a48:	54 f2       	mov.l	@(8,r15),r4
    7a4a:	40 0b       	jsr	@r0
    7a4c:	55 87       	mov.l	@(28,r8),r5
    7a4e:	40 15       	cmp/pl	r0
    7a50:	6c 03       	mov	r0,r12
    7a52:	63 f2       	mov.l	@r15,r3
    7a54:	8b c4       	bf	79e0 <___sfvwrite_r+0x114>
    7a56:	3d c8       	sub	r12,r13
    7a58:	2d d8       	tst	r13,r13
    7a5a:	89 23       	bt	7aa4 <___sfvwrite_r+0x1d8>
    7a5c:	51 a2       	mov.l	@(8,r10),r1
    7a5e:	3e cc       	add	r12,r14
    7a60:	3b c8       	sub	r12,r11
    7a62:	31 c8       	sub	r12,r1
    7a64:	1a 12       	mov.l	r1,@(8,r10)
    7a66:	21 18       	tst	r1,r1
    7a68:	8b 02       	bf	7a70 <___sfvwrite_r+0x1a4>
    7a6a:	af 62       	bra	7932 <___sfvwrite_r+0x66>
    7a6c:	e0 00       	mov	#0,r0
    7a6e:	00 09       	nop	
    7a70:	2b b8       	tst	r11,r11
    7a72:	8b d3       	bf	7a1c <___sfvwrite_r+0x150>
    7a74:	6e 92       	mov.l	@r9,r14
    7a76:	e3 00       	mov	#0,r3
    7a78:	5b 91       	mov.l	@(4,r9),r11
    7a7a:	af cd       	bra	7a18 <___sfvwrite_r+0x14c>
    7a7c:	79 08       	add	#8,r9
    7a7e:	00 09       	nop	
    7a80:	d2 5e       	mov.l	7bfc <___sfvwrite_r+0x330>,r2	! 7c9c <_memmove>
    7a82:	65 e3       	mov	r14,r5
    7a84:	2f 32       	mov.l	r3,@r15
    7a86:	42 0b       	jsr	@r2
    7a88:	66 c3       	mov	r12,r6
    7a8a:	61 82       	mov.l	@r8,r1
    7a8c:	54 f2       	mov.l	@(8,r15),r4
    7a8e:	31 cc       	add	r12,r1
    7a90:	28 12       	mov.l	r1,@r8
    7a92:	d1 5b       	mov.l	7c00 <___sfvwrite_r+0x334>,r1	! 4940 <__fflush_r>
    7a94:	41 0b       	jsr	@r1
    7a96:	65 83       	mov	r8,r5
    7a98:	20 08       	tst	r0,r0
    7a9a:	63 f2       	mov.l	@r15,r3
    7a9c:	8b a0       	bf	79e0 <___sfvwrite_r+0x114>
    7a9e:	3d c8       	sub	r12,r13
    7aa0:	2d d8       	tst	r13,r13
    7aa2:	8b db       	bf	7a5c <___sfvwrite_r+0x190>
    7aa4:	d3 56       	mov.l	7c00 <___sfvwrite_r+0x334>,r3	! 4940 <__fflush_r>
    7aa6:	65 83       	mov	r8,r5
    7aa8:	43 0b       	jsr	@r3
    7aaa:	54 f2       	mov.l	@(8,r15),r4
    7aac:	20 08       	tst	r0,r0
    7aae:	8b 97       	bf	79e0 <___sfvwrite_r+0x114>
    7ab0:	af d4       	bra	7a5c <___sfvwrite_r+0x190>
    7ab2:	e3 00       	mov	#0,r3
    7ab4:	51 84       	mov.l	@(16,r8),r1
    7ab6:	34 16       	cmp/hi	r1,r4
    7ab8:	8b 04       	bf	7ac4 <___sfvwrite_r+0x1f8>
    7aba:	3b d6       	cmp/hi	r13,r11
    7abc:	6e d3       	mov	r13,r14
    7abe:	8b 01       	bf	7ac4 <___sfvwrite_r+0x1f8>
    7ac0:	a0 7a       	bra	7bb8 <___sfvwrite_r+0x2ec>
    7ac2:	65 c3       	mov	r12,r5
    7ac4:	57 85       	mov.l	@(20,r8),r7
    7ac6:	3b 72       	cmp/hs	r7,r11
    7ac8:	8b 22       	bf	7b10 <___sfvwrite_r+0x244>
    7aca:	50 89       	mov.l	@(36,r8),r0
    7acc:	66 c3       	mov	r12,r6
    7ace:	54 f2       	mov.l	@(8,r15),r4
    7ad0:	40 0b       	jsr	@r0
    7ad2:	55 87       	mov.l	@(28,r8),r5
    7ad4:	40 15       	cmp/pl	r0
    7ad6:	6d 03       	mov	r0,r13
    7ad8:	89 02       	bt	7ae0 <___sfvwrite_r+0x214>
    7ada:	af 82       	bra	79e2 <___sfvwrite_r+0x116>
    7adc:	51 f3       	mov.l	@(12,r15),r1
    7ade:	00 09       	nop	
    7ae0:	af 69       	bra	79b6 <___sfvwrite_r+0xea>
    7ae2:	6e 03       	mov	r0,r14
    7ae4:	d2 45       	mov.l	7bfc <___sfvwrite_r+0x330>,r2	! 7c9c <_memmove>
    7ae6:	66 13       	mov	r1,r6
    7ae8:	1f 11       	mov.l	r1,@(4,r15)
    7aea:	65 e3       	mov	r14,r5
    7aec:	42 0b       	jsr	@r2
    7aee:	2f 32       	mov.l	r3,@r15
    7af0:	51 f1       	mov.l	@(4,r15),r1
    7af2:	52 82       	mov.l	@(8,r8),r2
    7af4:	6c 13       	mov	r1,r12
    7af6:	63 f2       	mov.l	@r15,r3
    7af8:	32 18       	sub	r1,r2
    7afa:	18 22       	mov.l	r2,@(8,r8)
    7afc:	62 82       	mov.l	@r8,r2
    7afe:	32 1c       	add	r1,r2
    7b00:	af a9       	bra	7a56 <___sfvwrite_r+0x18a>
    7b02:	28 22       	mov.l	r2,@r8
    7b04:	6e b3       	mov	r11,r14
    7b06:	64 82       	mov.l	@r8,r4
    7b08:	6d b3       	mov	r11,r13
    7b0a:	af 47       	bra	799c <___sfvwrite_r+0xd0>
    7b0c:	62 b3       	mov	r11,r2
    7b0e:	00 09       	nop	
    7b10:	d2 3a       	mov.l	7bfc <___sfvwrite_r+0x330>,r2	! 7c9c <_memmove>
    7b12:	65 c3       	mov	r12,r5
    7b14:	42 0b       	jsr	@r2
    7b16:	66 b3       	mov	r11,r6
    7b18:	51 82       	mov.l	@(8,r8),r1
    7b1a:	6d b3       	mov	r11,r13
    7b1c:	6e b3       	mov	r11,r14
    7b1e:	31 b8       	sub	r11,r1
    7b20:	18 12       	mov.l	r1,@(8,r8)
    7b22:	61 82       	mov.l	@r8,r1
    7b24:	31 bc       	add	r11,r1
    7b26:	28 12       	mov.l	r1,@r8
    7b28:	af 46       	bra	79b8 <___sfvwrite_r+0xec>
    7b2a:	51 a2       	mov.l	@(8,r10),r1
    7b2c:	d1 35       	mov.l	7c04 <___sfvwrite_r+0x338>,r1	! 574c <_memchr>
    7b2e:	e5 0a       	mov	#10,r5
    7b30:	41 0b       	jsr	@r1
    7b32:	66 b3       	mov	r11,r6
    7b34:	20 08       	tst	r0,r0
    7b36:	89 5b       	bt	7bf0 <___sfvwrite_r+0x324>
    7b38:	6d 03       	mov	r0,r13
    7b3a:	7d 01       	add	#1,r13
    7b3c:	3d e8       	sub	r14,r13
    7b3e:	af 71       	bra	7a24 <___sfvwrite_r+0x158>
    7b40:	e3 01       	mov	#1,r3
    7b42:	00 09       	nop	
    7b44:	55 84       	mov.l	@(16,r8),r5
    7b46:	61 23       	mov	r2,r1
    7b48:	31 1c       	add	r1,r1
    7b4a:	31 2c       	add	r2,r1
    7b4c:	6e 82       	mov.l	@r8,r14
    7b4e:	6d 13       	mov	r1,r13
    7b50:	4d 04       	rotl	r13
    7b52:	0d 29       	movt	r13
    7b54:	3e 58       	sub	r5,r14
    7b56:	3d 1c       	add	r1,r13
    7b58:	61 e3       	mov	r14,r1
    7b5a:	71 01       	add	#1,r1
    7b5c:	4d 21       	shar	r13
    7b5e:	31 bc       	add	r11,r1
    7b60:	3d 12       	cmp/hs	r1,r13
    7b62:	66 d3       	mov	r13,r6
    7b64:	89 01       	bt	7b6a <___sfvwrite_r+0x29e>
    7b66:	6d 13       	mov	r1,r13
    7b68:	66 13       	mov	r1,r6
    7b6a:	92 45       	mov.w	7bf8 <___sfvwrite_r+0x32c>,r2	! 400
    7b6c:	54 f2       	mov.l	@(8,r15),r4
    7b6e:	20 28       	tst	r2,r0
    7b70:	89 30       	bt	7bd4 <___sfvwrite_r+0x308>
    7b72:	d0 25       	mov.l	7c08 <___sfvwrite_r+0x33c>,r0	! 518c <__malloc_r>
    7b74:	40 0b       	jsr	@r0
    7b76:	65 63       	mov	r6,r5
    7b78:	20 08       	tst	r0,r0
    7b7a:	61 03       	mov	r0,r1
    7b7c:	8b 02       	bf	7b84 <___sfvwrite_r+0x2b8>
    7b7e:	af 2d       	bra	79dc <___sfvwrite_r+0x110>
    7b80:	53 f2       	mov.l	@(8,r15),r3
    7b82:	00 09       	nop	
    7b84:	64 03       	mov	r0,r4
    7b86:	d0 21       	mov.l	7c0c <___sfvwrite_r+0x340>,r0	! 5804 <_memcpy>
    7b88:	66 e3       	mov	r14,r6
    7b8a:	1f 11       	mov.l	r1,@(4,r15)
    7b8c:	40 0b       	jsr	@r0
    7b8e:	55 84       	mov.l	@(16,r8),r5
    7b90:	52 f3       	mov.l	@(12,r15),r2
    7b92:	93 32       	mov.w	7bfa <___sfvwrite_r+0x32e>,r3	! fb7f
    7b94:	60 21       	mov.w	@r2,r0
    7b96:	20 39       	and	r3,r0
    7b98:	cb 80       	or	#-128,r0
    7b9a:	51 f1       	mov.l	@(4,r15),r1
    7b9c:	22 01       	mov.w	r0,@r2
    7b9e:	64 13       	mov	r1,r4
    7ba0:	34 ec       	add	r14,r4
    7ba2:	18 d5       	mov.l	r13,@(20,r8)
    7ba4:	3d e8       	sub	r14,r13
    7ba6:	18 d2       	mov.l	r13,@(8,r8)
    7ba8:	6e b3       	mov	r11,r14
    7baa:	18 14       	mov.l	r1,@(16,r8)
    7bac:	6d b3       	mov	r11,r13
    7bae:	28 42       	mov.l	r4,@r8
    7bb0:	62 b3       	mov	r11,r2
    7bb2:	ae f3       	bra	799c <___sfvwrite_r+0xd0>
    7bb4:	1f b4       	mov.l	r11,@(16,r15)
    7bb6:	00 09       	nop	
    7bb8:	d1 10       	mov.l	7bfc <___sfvwrite_r+0x330>,r1	! 7c9c <_memmove>
    7bba:	41 0b       	jsr	@r1
    7bbc:	66 d3       	mov	r13,r6
    7bbe:	61 82       	mov.l	@r8,r1
    7bc0:	65 83       	mov	r8,r5
    7bc2:	d0 0f       	mov.l	7c00 <___sfvwrite_r+0x334>,r0	! 4940 <__fflush_r>
    7bc4:	31 dc       	add	r13,r1
    7bc6:	28 12       	mov.l	r1,@r8
    7bc8:	40 0b       	jsr	@r0
    7bca:	54 f2       	mov.l	@(8,r15),r4
    7bcc:	20 08       	tst	r0,r0
    7bce:	89 ab       	bt	7b28 <___sfvwrite_r+0x25c>
    7bd0:	af 07       	bra	79e2 <___sfvwrite_r+0x116>
    7bd2:	51 f3       	mov.l	@(12,r15),r1
    7bd4:	d0 0e       	mov.l	7c10 <___sfvwrite_r+0x344>,r0	! 7dc0 <__realloc_r>
    7bd6:	40 0b       	jsr	@r0
    7bd8:	00 09       	nop	
    7bda:	20 08       	tst	r0,r0
    7bdc:	61 03       	mov	r0,r1
    7bde:	8b de       	bf	7b9e <___sfvwrite_r+0x2d2>
    7be0:	d1 0c       	mov.l	7c14 <___sfvwrite_r+0x348>,r1	! 4cc8 <__free_r>
    7be2:	54 f2       	mov.l	@(8,r15),r4
    7be4:	41 0b       	jsr	@r1
    7be6:	55 84       	mov.l	@(16,r8),r5
    7be8:	52 f2       	mov.l	@(8,r15),r2
    7bea:	e1 0c       	mov	#12,r1
    7bec:	ae f8       	bra	79e0 <___sfvwrite_r+0x114>
    7bee:	22 12       	mov.l	r1,@r2
    7bf0:	6d b3       	mov	r11,r13
    7bf2:	7d 01       	add	#1,r13
    7bf4:	af 16       	bra	7a24 <___sfvwrite_r+0x158>
    7bf6:	e3 01       	mov	#1,r3
    7bf8:	04 00       	.word 0x0400
    7bfa:	fb 7f       	.word 0xfb7f
    7bfc:	00 00       	.word 0x0000
    7bfe:	7c 9c       	add	#-100,r12
    7c00:	00 00       	.word 0x0000
    7c02:	49 40       	.word 0x4940
    7c04:	00 00       	.word 0x0000
    7c06:	57 4c       	mov.l	@(48,r4),r7
    7c08:	00 00       	.word 0x0000
    7c0a:	51 8c       	mov.l	@(48,r8),r1
    7c0c:	00 00       	.word 0x0000
    7c0e:	58 04       	mov.l	@(16,r0),r8
    7c10:	00 00       	.word 0x0000
    7c12:	7d c0       	add	#-64,r13
    7c14:	00 00       	.word 0x0000
    7c16:	4c c8       	.word 0x4cc8

00007c18 <__isatty_r>:
    7c18:	2f 86       	mov.l	r8,@-r15
    7c1a:	e1 00       	mov	#0,r1
    7c1c:	d8 0c       	mov.l	7c50 <__isatty_r+0x38>,r8	! ad04 <_errno>
    7c1e:	d0 0d       	mov.l	7c54 <__isatty_r+0x3c>,r0	! 15e0 <__isatty>
    7c20:	2f 96       	mov.l	r9,@-r15
    7c22:	69 43       	mov	r4,r9
    7c24:	4f 22       	sts.l	pr,@-r15
    7c26:	64 53       	mov	r5,r4
    7c28:	40 0b       	jsr	@r0
    7c2a:	28 12       	mov.l	r1,@r8
    7c2c:	88 ff       	cmp/eq	#-1,r0
    7c2e:	89 05       	bt	7c3c <__isatty_r+0x24>
    7c30:	4f 26       	lds.l	@r15+,pr
    7c32:	69 f6       	mov.l	@r15+,r9
    7c34:	68 f6       	mov.l	@r15+,r8
    7c36:	00 0b       	rts	
    7c38:	00 09       	nop	
    7c3a:	00 09       	nop	
    7c3c:	61 82       	mov.l	@r8,r1
    7c3e:	21 18       	tst	r1,r1
    7c40:	89 f6       	bt	7c30 <__isatty_r+0x18>
    7c42:	29 12       	mov.l	r1,@r9
    7c44:	4f 26       	lds.l	@r15+,pr
    7c46:	69 f6       	mov.l	@r15+,r9
    7c48:	68 f6       	mov.l	@r15+,r8
    7c4a:	00 0b       	rts	
    7c4c:	00 09       	nop	
    7c4e:	00 09       	nop	
    7c50:	00 00       	.word 0x0000
    7c52:	ad 04       	bra	765e <__fclose_r+0x36>
    7c54:	00 00       	.word 0x0000
    7c56:	15 e0       	mov.l	r14,@(0,r5)

00007c58 <__lseek_r>:
    7c58:	2f 86       	mov.l	r8,@-r15
    7c5a:	e1 00       	mov	#0,r1
    7c5c:	d8 0d       	mov.l	7c94 <__lseek_r+0x3c>,r8	! ad04 <_errno>
    7c5e:	d0 0e       	mov.l	7c98 <__lseek_r+0x40>,r0	! 15b8 <__lseek>
    7c60:	2f 96       	mov.l	r9,@-r15
    7c62:	69 43       	mov	r4,r9
    7c64:	4f 22       	sts.l	pr,@-r15
    7c66:	64 53       	mov	r5,r4
    7c68:	28 12       	mov.l	r1,@r8
    7c6a:	65 63       	mov	r6,r5
    7c6c:	40 0b       	jsr	@r0
    7c6e:	66 73       	mov	r7,r6
    7c70:	88 ff       	cmp/eq	#-1,r0
    7c72:	89 05       	bt	7c80 <__lseek_r+0x28>
    7c74:	4f 26       	lds.l	@r15+,pr
    7c76:	69 f6       	mov.l	@r15+,r9
    7c78:	68 f6       	mov.l	@r15+,r8
    7c7a:	00 0b       	rts	
    7c7c:	00 09       	nop	
    7c7e:	00 09       	nop	
    7c80:	61 82       	mov.l	@r8,r1
    7c82:	21 18       	tst	r1,r1
    7c84:	89 f6       	bt	7c74 <__lseek_r+0x1c>
    7c86:	29 12       	mov.l	r1,@r9
    7c88:	4f 26       	lds.l	@r15+,pr
    7c8a:	69 f6       	mov.l	@r15+,r9
    7c8c:	68 f6       	mov.l	@r15+,r8
    7c8e:	00 0b       	rts	
    7c90:	00 09       	nop	
    7c92:	00 09       	nop	
    7c94:	00 00       	.word 0x0000
    7c96:	ad 04       	bra	76a2 <__fclose_r+0x7a>
    7c98:	00 00       	.word 0x0000
    7c9a:	15 b8       	mov.l	r11,@(32,r5)

00007c9c <_memmove>:
    7c9c:	2f 86       	mov.l	r8,@-r15
    7c9e:	34 56       	cmp/hi	r5,r4
    7ca0:	8b 16       	bf	7cd0 <_memmove+0x34>
    7ca2:	63 53       	mov	r5,r3
    7ca4:	33 6c       	add	r6,r3
    7ca6:	34 32       	cmp/hs	r3,r4
    7ca8:	89 12       	bt	7cd0 <_memmove+0x34>
    7caa:	60 63       	mov	r6,r0
    7cac:	67 43       	mov	r4,r7
    7cae:	26 68       	tst	r6,r6
    7cb0:	37 6c       	add	r6,r7
    7cb2:	70 ff       	add	#-1,r0
    7cb4:	66 6b       	neg	r6,r6
    7cb6:	89 08       	bt	7cca <_memmove+0x2e>
    7cb8:	61 33       	mov	r3,r1
    7cba:	31 6c       	add	r6,r1
    7cbc:	02 1c       	mov.b	@(r0,r1),r2
    7cbe:	61 73       	mov	r7,r1
    7cc0:	31 6c       	add	r6,r1
    7cc2:	01 24       	mov.b	r2,@(r0,r1)
    7cc4:	70 ff       	add	#-1,r0
    7cc6:	88 ff       	cmp/eq	#-1,r0
    7cc8:	8b f6       	bf	7cb8 <_memmove+0x1c>
    7cca:	68 f6       	mov.l	@r15+,r8
    7ccc:	00 0b       	rts	
    7cce:	60 43       	mov	r4,r0
    7cd0:	e1 0f       	mov	#15,r1
    7cd2:	36 16       	cmp/hi	r1,r6
    7cd4:	8b 42       	bf	7d5c <_memmove+0xc0>
    7cd6:	60 53       	mov	r5,r0
    7cd8:	20 4b       	or	r4,r0
    7cda:	c8 03       	tst	#3,r0
    7cdc:	8b 44       	bf	7d68 <_memmove+0xcc>
    7cde:	61 63       	mov	r6,r1
    7ce0:	71 f0       	add	#-16,r1
    7ce2:	41 09       	shlr2	r1
    7ce4:	41 09       	shlr2	r1
    7ce6:	71 01       	add	#1,r1
    7ce8:	41 08       	shll2	r1
    7cea:	41 08       	shll2	r1
    7cec:	62 53       	mov	r5,r2
    7cee:	32 1c       	add	r1,r2
    7cf0:	63 43       	mov	r4,r3
    7cf2:	00 09       	nop	
    7cf4:	67 52       	mov.l	@r5,r7
    7cf6:	23 72       	mov.l	r7,@r3
    7cf8:	57 51       	mov.l	@(4,r5),r7
    7cfa:	13 71       	mov.l	r7,@(4,r3)
    7cfc:	57 52       	mov.l	@(8,r5),r7
    7cfe:	13 72       	mov.l	r7,@(8,r3)
    7d00:	57 53       	mov.l	@(12,r5),r7
    7d02:	75 10       	add	#16,r5
    7d04:	32 50       	cmp/eq	r5,r2
    7d06:	13 73       	mov.l	r7,@(12,r3)
    7d08:	73 10       	add	#16,r3
    7d0a:	8b f3       	bf	7cf4 <_memmove+0x58>
    7d0c:	60 63       	mov	r6,r0
    7d0e:	c9 0f       	and	#15,r0
    7d10:	e3 03       	mov	#3,r3
    7d12:	30 36       	cmp/hi	r3,r0
    7d14:	31 4c       	add	r4,r1
    7d16:	8b 2b       	bf	7d70 <_memmove+0xd4>
    7d18:	68 03       	mov	r0,r8
    7d1a:	78 fc       	add	#-4,r8
    7d1c:	48 09       	shlr2	r8
    7d1e:	60 83       	mov	r8,r0
    7d20:	40 08       	shll2	r0
    7d22:	70 04       	add	#4,r0
    7d24:	67 23       	mov	r2,r7
    7d26:	30 2c       	add	r2,r0
    7d28:	63 13       	mov	r1,r3
    7d2a:	00 09       	nop	
    7d2c:	65 76       	mov.l	@r7+,r5
    7d2e:	37 00       	cmp/eq	r0,r7
    7d30:	23 52       	mov.l	r5,@r3
    7d32:	73 04       	add	#4,r3
    7d34:	8b fa       	bf	7d2c <_memmove+0x90>
    7d36:	63 83       	mov	r8,r3
    7d38:	e7 03       	mov	#3,r7
    7d3a:	73 01       	add	#1,r3
    7d3c:	26 79       	and	r7,r6
    7d3e:	43 08       	shll2	r3
    7d40:	26 68       	tst	r6,r6
    7d42:	32 3c       	add	r3,r2
    7d44:	31 3c       	add	r3,r1
    7d46:	89 c0       	bt	7cca <_memmove+0x2e>
    7d48:	36 1c       	add	r1,r6
    7d4a:	00 09       	nop	
    7d4c:	63 24       	mov.b	@r2+,r3
    7d4e:	21 30       	mov.b	r3,@r1
    7d50:	71 01       	add	#1,r1
    7d52:	31 60       	cmp/eq	r6,r1
    7d54:	8b fa       	bf	7d4c <_memmove+0xb0>
    7d56:	68 f6       	mov.l	@r15+,r8
    7d58:	00 0b       	rts	
    7d5a:	60 43       	mov	r4,r0
    7d5c:	26 68       	tst	r6,r6
    7d5e:	62 53       	mov	r5,r2
    7d60:	61 43       	mov	r4,r1
    7d62:	8b f1       	bf	7d48 <_memmove+0xac>
    7d64:	af b1       	bra	7cca <_memmove+0x2e>
    7d66:	00 09       	nop	
    7d68:	61 43       	mov	r4,r1
    7d6a:	af ed       	bra	7d48 <_memmove+0xac>
    7d6c:	62 53       	mov	r5,r2
    7d6e:	00 09       	nop	
    7d70:	66 03       	mov	r0,r6
    7d72:	26 68       	tst	r6,r6
    7d74:	8b e8       	bf	7d48 <_memmove+0xac>
    7d76:	af a8       	bra	7cca <_memmove+0x2e>
    7d78:	00 09       	nop	
    7d7a:	00 09       	nop	

00007d7c <__read_r>:
    7d7c:	2f 86       	mov.l	r8,@-r15
    7d7e:	e1 00       	mov	#0,r1
    7d80:	d8 0d       	mov.l	7db8 <__read_r+0x3c>,r8	! ad04 <_errno>
    7d82:	d0 0e       	mov.l	7dbc <__read_r+0x40>,r0	! 1554 <__read>
    7d84:	2f 96       	mov.l	r9,@-r15
    7d86:	69 43       	mov	r4,r9
    7d88:	4f 22       	sts.l	pr,@-r15
    7d8a:	64 53       	mov	r5,r4
    7d8c:	28 12       	mov.l	r1,@r8
    7d8e:	65 63       	mov	r6,r5
    7d90:	40 0b       	jsr	@r0
    7d92:	66 73       	mov	r7,r6
    7d94:	88 ff       	cmp/eq	#-1,r0
    7d96:	89 05       	bt	7da4 <__read_r+0x28>
    7d98:	4f 26       	lds.l	@r15+,pr
    7d9a:	69 f6       	mov.l	@r15+,r9
    7d9c:	68 f6       	mov.l	@r15+,r8
    7d9e:	00 0b       	rts	
    7da0:	00 09       	nop	
    7da2:	00 09       	nop	
    7da4:	61 82       	mov.l	@r8,r1
    7da6:	21 18       	tst	r1,r1
    7da8:	89 f6       	bt	7d98 <__read_r+0x1c>
    7daa:	29 12       	mov.l	r1,@r9
    7dac:	4f 26       	lds.l	@r15+,pr
    7dae:	69 f6       	mov.l	@r15+,r9
    7db0:	68 f6       	mov.l	@r15+,r8
    7db2:	00 0b       	rts	
    7db4:	00 09       	nop	
    7db6:	00 09       	nop	
    7db8:	00 00       	.word 0x0000
    7dba:	ad 04       	bra	77c6 <__fputwc_r+0xb2>
    7dbc:	00 00       	.word 0x0000
    7dbe:	15 54       	mov.l	r5,@(16,r5)

00007dc0 <__realloc_r>:
    7dc0:	2f 86       	mov.l	r8,@-r15
    7dc2:	25 58       	tst	r5,r5
    7dc4:	2f 96       	mov.l	r9,@-r15
    7dc6:	68 53       	mov	r5,r8
    7dc8:	2f a6       	mov.l	r10,@-r15
    7dca:	2f b6       	mov.l	r11,@-r15
    7dcc:	6b 43       	mov	r4,r11
    7dce:	2f c6       	mov.l	r12,@-r15
    7dd0:	6c 63       	mov	r6,r12
    7dd2:	2f d6       	mov.l	r13,@-r15
    7dd4:	2f e6       	mov.l	r14,@-r15
    7dd6:	4f 22       	sts.l	pr,@-r15
    7dd8:	7f f8       	add	#-8,r15
    7dda:	8b 01       	bf	7de0 <__realloc_r+0x20>
    7ddc:	a1 18       	bra	8010 <__realloc_r+0x250>
    7dde:	65 63       	mov	r6,r5
    7de0:	d1 cc       	mov.l	8114 <__realloc_r+0x354>,r1	! 5898 <___malloc_lock>
    7de2:	6a 83       	mov	r8,r10
    7de4:	41 0b       	jsr	@r1
    7de6:	7a f8       	add	#-8,r10
    7de8:	51 a1       	mov.l	@(4,r10),r1
    7dea:	62 c3       	mov	r12,r2
    7dec:	72 0b       	add	#11,r2
    7dee:	e3 16       	mov	#22,r3
    7df0:	ed fc       	mov	#-4,r13
    7df2:	32 36       	cmp/hi	r3,r2
    7df4:	2d 19       	and	r1,r13
    7df6:	8b 67       	bf	7ec8 <__realloc_r+0x108>
    7df8:	e9 f8       	mov	#-8,r9
    7dfa:	29 29       	and	r2,r9
    7dfc:	62 93       	mov	r9,r2
    7dfe:	42 04       	rotl	r2
    7e00:	65 93       	mov	r9,r5
    7e02:	02 29       	movt	r2
    7e04:	3c 96       	cmp/hi	r9,r12
    7e06:	89 01       	bt	7e0c <__realloc_r+0x4c>
    7e08:	22 28       	tst	r2,r2
    7e0a:	89 01       	bt	7e10 <__realloc_r+0x50>
    7e0c:	a1 0c       	bra	8028 <__realloc_r+0x268>
    7e0e:	e1 0c       	mov	#12,r1
    7e10:	3d 53       	cmp/ge	r5,r13
    7e12:	89 5d       	bt	7ed0 <__realloc_r+0x110>
    7e14:	d3 c0       	mov.l	8118 <__realloc_r+0x358>,r3	! a8b4 <___malloc_av_>
    7e16:	66 a3       	mov	r10,r6
    7e18:	36 dc       	add	r13,r6
    7e1a:	57 32       	mov.l	@(8,r3),r7
    7e1c:	37 60       	cmp/eq	r6,r7
    7e1e:	8b 01       	bf	7e24 <__realloc_r+0x64>
    7e20:	a1 06       	bra	8030 <__realloc_r+0x270>
    7e22:	54 71       	mov.l	@(4,r7),r4
    7e24:	54 61       	mov.l	@(4,r6),r4
    7e26:	e2 fe       	mov	#-2,r2
    7e28:	22 49       	and	r4,r2
    7e2a:	32 6c       	add	r6,r2
    7e2c:	50 21       	mov.l	@(4,r2),r0
    7e2e:	c8 01       	tst	#1,r0
    7e30:	89 6c       	bt	7f0c <__realloc_r+0x14c>
    7e32:	e4 00       	mov	#0,r4
    7e34:	e6 00       	mov	#0,r6
    7e36:	60 13       	mov	r1,r0
    7e38:	c8 01       	tst	#1,r0
    7e3a:	89 01       	bt	7e40 <__realloc_r+0x80>
    7e3c:	a0 86       	bra	7f4c <__realloc_r+0x18c>
    7e3e:	00 09       	nop	
    7e40:	61 a2       	mov.l	@r10,r1
    7e42:	62 a3       	mov	r10,r2
    7e44:	e0 fc       	mov	#-4,r0
    7e46:	32 18       	sub	r1,r2
    7e48:	51 21       	mov.l	@(4,r2),r1
    7e4a:	26 68       	tst	r6,r6
    7e4c:	21 09       	and	r0,r1
    7e4e:	8b 01       	bf	7e54 <__realloc_r+0x94>
    7e50:	a0 b4       	bra	7fbc <__realloc_r+0x1fc>
    7e52:	67 13       	mov	r1,r7
    7e54:	36 70       	cmp/eq	r7,r6
    7e56:	67 13       	mov	r1,r7
    7e58:	37 dc       	add	r13,r7
    7e5a:	6e 43       	mov	r4,r14
    7e5c:	3e 7c       	add	r7,r14
    7e5e:	8b 01       	bf	7e64 <__realloc_r+0xa4>
    7e60:	a1 1c       	bra	809c <__realloc_r+0x2dc>
    7e62:	61 93       	mov	r9,r1
    7e64:	3e 53       	cmp/ge	r5,r14
    7e66:	89 01       	bt	7e6c <__realloc_r+0xac>
    7e68:	a0 aa       	bra	7fc0 <__realloc_r+0x200>
    7e6a:	37 53       	cmp/ge	r5,r7
    7e6c:	51 63       	mov.l	@(12,r6),r1
    7e6e:	6a 23       	mov	r2,r10
    7e70:	53 62       	mov.l	@(8,r6),r3
    7e72:	66 d3       	mov	r13,r6
    7e74:	76 fc       	add	#-4,r6
    7e76:	13 13       	mov.l	r1,@(12,r3)
    7e78:	7a 08       	add	#8,r10
    7e7a:	11 32       	mov.l	r3,@(8,r1)
    7e7c:	51 23       	mov.l	@(12,r2),r1
    7e7e:	53 22       	mov.l	@(8,r2),r3
    7e80:	13 13       	mov.l	r1,@(12,r3)
    7e82:	11 32       	mov.l	r3,@(8,r1)
    7e84:	e1 24       	mov	#36,r1
    7e86:	36 16       	cmp/hi	r1,r6
    7e88:	8b 02       	bf	7e90 <__realloc_r+0xd0>
    7e8a:	a1 5f       	bra	814c <__realloc_r+0x38c>
    7e8c:	64 a3       	mov	r10,r4
    7e8e:	00 09       	nop	
    7e90:	e1 13       	mov	#19,r1
    7e92:	36 16       	cmp/hi	r1,r6
    7e94:	61 a3       	mov	r10,r1
    7e96:	8b 0c       	bf	7eb2 <__realloc_r+0xf2>
    7e98:	61 82       	mov.l	@r8,r1
    7e9a:	12 12       	mov.l	r1,@(8,r2)
    7e9c:	51 81       	mov.l	@(4,r8),r1
    7e9e:	12 13       	mov.l	r1,@(12,r2)
    7ea0:	e1 1b       	mov	#27,r1
    7ea2:	36 16       	cmp/hi	r1,r6
    7ea4:	8b 02       	bf	7eac <__realloc_r+0xec>
    7ea6:	a1 5b       	bra	8160 <__realloc_r+0x3a0>
    7ea8:	51 82       	mov.l	@(8,r8),r1
    7eaa:	00 09       	nop	
    7eac:	61 23       	mov	r2,r1
    7eae:	71 10       	add	#16,r1
    7eb0:	78 08       	add	#8,r8
    7eb2:	63 82       	mov.l	@r8,r3
    7eb4:	21 32       	mov.l	r3,@r1
    7eb6:	53 81       	mov.l	@(4,r8),r3
    7eb8:	11 31       	mov.l	r3,@(4,r1)
    7eba:	53 82       	mov.l	@(8,r8),r3
    7ebc:	68 a3       	mov	r10,r8
    7ebe:	6a 23       	mov	r2,r10
    7ec0:	11 32       	mov.l	r3,@(8,r1)
    7ec2:	a0 06       	bra	7ed2 <__realloc_r+0x112>
    7ec4:	51 21       	mov.l	@(4,r2),r1
    7ec6:	00 09       	nop	
    7ec8:	e2 00       	mov	#0,r2
    7eca:	e5 10       	mov	#16,r5
    7ecc:	af 9a       	bra	7e04 <__realloc_r+0x44>
    7ece:	e9 10       	mov	#16,r9
    7ed0:	6e d3       	mov	r13,r14
    7ed2:	60 e3       	mov	r14,r0
    7ed4:	30 98       	sub	r9,r0
    7ed6:	e2 0f       	mov	#15,r2
    7ed8:	30 26       	cmp/hi	r2,r0
    7eda:	89 23       	bt	7f24 <__realloc_r+0x164>
    7edc:	60 13       	mov	r1,r0
    7ede:	c9 01       	and	#1,r0
    7ee0:	20 eb       	or	r14,r0
    7ee2:	1a 01       	mov.l	r0,@(4,r10)
    7ee4:	3a ec       	add	r14,r10
    7ee6:	50 a1       	mov.l	@(4,r10),r0
    7ee8:	cb 01       	or	#1,r0
    7eea:	1a 01       	mov.l	r0,@(4,r10)
    7eec:	d1 8b       	mov.l	811c <__realloc_r+0x35c>,r1	! 589c <___malloc_unlock>
    7eee:	64 b3       	mov	r11,r4
    7ef0:	41 0b       	jsr	@r1
    7ef2:	6c 83       	mov	r8,r12
    7ef4:	60 c3       	mov	r12,r0
    7ef6:	7f 08       	add	#8,r15
    7ef8:	4f 26       	lds.l	@r15+,pr
    7efa:	6e f6       	mov.l	@r15+,r14
    7efc:	6d f6       	mov.l	@r15+,r13
    7efe:	6c f6       	mov.l	@r15+,r12
    7f00:	6b f6       	mov.l	@r15+,r11
    7f02:	6a f6       	mov.l	@r15+,r10
    7f04:	69 f6       	mov.l	@r15+,r9
    7f06:	68 f6       	mov.l	@r15+,r8
    7f08:	00 0b       	rts	
    7f0a:	00 09       	nop	
    7f0c:	ee fc       	mov	#-4,r14
    7f0e:	24 e9       	and	r14,r4
    7f10:	6e 43       	mov	r4,r14
    7f12:	3e dc       	add	r13,r14
    7f14:	3e 53       	cmp/ge	r5,r14
    7f16:	8b 8e       	bf	7e36 <__realloc_r+0x76>
    7f18:	52 63       	mov.l	@(12,r6),r2
    7f1a:	53 62       	mov.l	@(8,r6),r3
    7f1c:	13 23       	mov.l	r2,@(12,r3)
    7f1e:	af d8       	bra	7ed2 <__realloc_r+0x112>
    7f20:	12 32       	mov.l	r3,@(8,r2)
    7f22:	00 09       	nop	
    7f24:	e2 01       	mov	#1,r2
    7f26:	21 29       	and	r2,r1
    7f28:	21 9b       	or	r9,r1
    7f2a:	1a 11       	mov.l	r1,@(4,r10)
    7f2c:	65 a3       	mov	r10,r5
    7f2e:	e1 01       	mov	#1,r1
    7f30:	35 9c       	add	r9,r5
    7f32:	21 0b       	or	r0,r1
    7f34:	15 11       	mov.l	r1,@(4,r5)
    7f36:	61 53       	mov	r5,r1
    7f38:	31 0c       	add	r0,r1
    7f3a:	50 11       	mov.l	@(4,r1),r0
    7f3c:	64 b3       	mov	r11,r4
    7f3e:	cb 01       	or	#1,r0
    7f40:	11 01       	mov.l	r0,@(4,r1)
    7f42:	d1 77       	mov.l	8120 <__realloc_r+0x360>,r1	! 4cc8 <__free_r>
    7f44:	41 0b       	jsr	@r1
    7f46:	75 08       	add	#8,r5
    7f48:	af d0       	bra	7eec <__realloc_r+0x12c>
    7f4a:	00 09       	nop	
    7f4c:	d0 75       	mov.l	8124 <__realloc_r+0x364>,r0	! 518c <__malloc_r>
    7f4e:	65 c3       	mov	r12,r5
    7f50:	40 0b       	jsr	@r0
    7f52:	64 b3       	mov	r11,r4
    7f54:	20 08       	tst	r0,r0
    7f56:	6c 03       	mov	r0,r12
    7f58:	89 21       	bt	7f9e <__realloc_r+0x1de>
    7f5a:	51 a1       	mov.l	@(4,r10),r1
    7f5c:	e2 fe       	mov	#-2,r2
    7f5e:	63 03       	mov	r0,r3
    7f60:	22 19       	and	r1,r2
    7f62:	73 f8       	add	#-8,r3
    7f64:	32 ac       	add	r10,r2
    7f66:	33 20       	cmp/eq	r2,r3
    7f68:	8b 02       	bf	7f70 <__realloc_r+0x1b0>
    7f6a:	a0 eb       	bra	8144 <__realloc_r+0x384>
    7f6c:	5e 31       	mov.l	@(4,r3),r14
    7f6e:	00 09       	nop	
    7f70:	66 d3       	mov	r13,r6
    7f72:	76 fc       	add	#-4,r6
    7f74:	e1 24       	mov	#36,r1
    7f76:	36 16       	cmp/hi	r1,r6
    7f78:	8b 02       	bf	7f80 <__realloc_r+0x1c0>
    7f7a:	a0 89       	bra	8090 <__realloc_r+0x2d0>
    7f7c:	64 03       	mov	r0,r4
    7f7e:	00 09       	nop	
    7f80:	e1 13       	mov	#19,r1
    7f82:	36 16       	cmp/hi	r1,r6
    7f84:	89 5e       	bt	8044 <__realloc_r+0x284>
    7f86:	61 03       	mov	r0,r1
    7f88:	62 83       	mov	r8,r2
    7f8a:	63 22       	mov.l	@r2,r3
    7f8c:	21 32       	mov.l	r3,@r1
    7f8e:	53 21       	mov.l	@(4,r2),r3
    7f90:	11 31       	mov.l	r3,@(4,r1)
    7f92:	52 22       	mov.l	@(8,r2),r2
    7f94:	11 22       	mov.l	r2,@(8,r1)
    7f96:	d1 62       	mov.l	8120 <__realloc_r+0x360>,r1	! 4cc8 <__free_r>
    7f98:	64 b3       	mov	r11,r4
    7f9a:	41 0b       	jsr	@r1
    7f9c:	65 83       	mov	r8,r5
    7f9e:	d1 5f       	mov.l	811c <__realloc_r+0x35c>,r1	! 589c <___malloc_unlock>
    7fa0:	41 0b       	jsr	@r1
    7fa2:	64 b3       	mov	r11,r4
    7fa4:	60 c3       	mov	r12,r0
    7fa6:	7f 08       	add	#8,r15
    7fa8:	4f 26       	lds.l	@r15+,pr
    7faa:	6e f6       	mov.l	@r15+,r14
    7fac:	6d f6       	mov.l	@r15+,r13
    7fae:	6c f6       	mov.l	@r15+,r12
    7fb0:	6b f6       	mov.l	@r15+,r11
    7fb2:	6a f6       	mov.l	@r15+,r10
    7fb4:	69 f6       	mov.l	@r15+,r9
    7fb6:	68 f6       	mov.l	@r15+,r8
    7fb8:	00 0b       	rts	
    7fba:	00 09       	nop	
    7fbc:	37 dc       	add	r13,r7
    7fbe:	37 53       	cmp/ge	r5,r7
    7fc0:	8b c4       	bf	7f4c <__realloc_r+0x18c>
    7fc2:	51 23       	mov.l	@(12,r2),r1
    7fc4:	66 d3       	mov	r13,r6
    7fc6:	53 22       	mov.l	@(8,r2),r3
    7fc8:	76 fc       	add	#-4,r6
    7fca:	6a 23       	mov	r2,r10
    7fcc:	13 13       	mov.l	r1,@(12,r3)
    7fce:	7a 08       	add	#8,r10
    7fd0:	11 32       	mov.l	r3,@(8,r1)
    7fd2:	e1 24       	mov	#36,r1
    7fd4:	36 16       	cmp/hi	r1,r6
    7fd6:	89 41       	bt	805c <__realloc_r+0x29c>
    7fd8:	e1 13       	mov	#19,r1
    7fda:	36 16       	cmp/hi	r1,r6
    7fdc:	61 a3       	mov	r10,r1
    7fde:	8b 0c       	bf	7ffa <__realloc_r+0x23a>
    7fe0:	61 82       	mov.l	@r8,r1
    7fe2:	12 12       	mov.l	r1,@(8,r2)
    7fe4:	51 81       	mov.l	@(4,r8),r1
    7fe6:	12 13       	mov.l	r1,@(12,r2)
    7fe8:	e1 1b       	mov	#27,r1
    7fea:	36 16       	cmp/hi	r1,r6
    7fec:	8b 02       	bf	7ff4 <__realloc_r+0x234>
    7fee:	a0 cb       	bra	8188 <__realloc_r+0x3c8>
    7ff0:	51 82       	mov.l	@(8,r8),r1
    7ff2:	00 09       	nop	
    7ff4:	61 23       	mov	r2,r1
    7ff6:	71 10       	add	#16,r1
    7ff8:	78 08       	add	#8,r8
    7ffa:	63 82       	mov.l	@r8,r3
    7ffc:	6e 73       	mov	r7,r14
    7ffe:	21 32       	mov.l	r3,@r1
    8000:	53 81       	mov.l	@(4,r8),r3
    8002:	11 31       	mov.l	r3,@(4,r1)
    8004:	53 82       	mov.l	@(8,r8),r3
    8006:	68 a3       	mov	r10,r8
    8008:	6a 23       	mov	r2,r10
    800a:	11 32       	mov.l	r3,@(8,r1)
    800c:	af 61       	bra	7ed2 <__realloc_r+0x112>
    800e:	51 21       	mov.l	@(4,r2),r1
    8010:	d0 44       	mov.l	8124 <__realloc_r+0x364>,r0	! 518c <__malloc_r>
    8012:	7f 08       	add	#8,r15
    8014:	4f 26       	lds.l	@r15+,pr
    8016:	6e f6       	mov.l	@r15+,r14
    8018:	6d f6       	mov.l	@r15+,r13
    801a:	6c f6       	mov.l	@r15+,r12
    801c:	6b f6       	mov.l	@r15+,r11
    801e:	6a f6       	mov.l	@r15+,r10
    8020:	69 f6       	mov.l	@r15+,r9
    8022:	68 f6       	mov.l	@r15+,r8
    8024:	40 2b       	jmp	@r0
    8026:	00 09       	nop	
    8028:	2b 12       	mov.l	r1,@r11
    802a:	af 63       	bra	7ef4 <__realloc_r+0x134>
    802c:	ec 00       	mov	#0,r12
    802e:	00 09       	nop	
    8030:	e2 fc       	mov	#-4,r2
    8032:	66 93       	mov	r9,r6
    8034:	24 29       	and	r2,r4
    8036:	62 43       	mov	r4,r2
    8038:	32 dc       	add	r13,r2
    803a:	76 10       	add	#16,r6
    803c:	32 63       	cmp/ge	r6,r2
    803e:	89 1b       	bt	8078 <__realloc_r+0x2b8>
    8040:	ae f9       	bra	7e36 <__realloc_r+0x76>
    8042:	66 73       	mov	r7,r6
    8044:	61 82       	mov.l	@r8,r1
    8046:	20 12       	mov.l	r1,@r0
    8048:	51 81       	mov.l	@(4,r8),r1
    804a:	10 11       	mov.l	r1,@(4,r0)
    804c:	e1 1b       	mov	#27,r1
    804e:	36 16       	cmp/hi	r1,r6
    8050:	89 6c       	bt	812c <__realloc_r+0x36c>
    8052:	61 03       	mov	r0,r1
    8054:	62 83       	mov	r8,r2
    8056:	71 08       	add	#8,r1
    8058:	af 97       	bra	7f8a <__realloc_r+0x1ca>
    805a:	72 08       	add	#8,r2
    805c:	d0 32       	mov.l	8128 <__realloc_r+0x368>,r0	! 7c9c <_memmove>
    805e:	64 a3       	mov	r10,r4
    8060:	65 83       	mov	r8,r5
    8062:	2f 22       	mov.l	r2,@r15
    8064:	68 a3       	mov	r10,r8
    8066:	40 0b       	jsr	@r0
    8068:	1f 71       	mov.l	r7,@(4,r15)
    806a:	62 f2       	mov.l	@r15,r2
    806c:	57 f1       	mov.l	@(4,r15),r7
    806e:	6a 23       	mov	r2,r10
    8070:	51 21       	mov.l	@(4,r2),r1
    8072:	af 2e       	bra	7ed2 <__realloc_r+0x112>
    8074:	6e 73       	mov	r7,r14
    8076:	00 09       	nop	
    8078:	60 23       	mov	r2,r0
    807a:	61 a3       	mov	r10,r1
    807c:	30 98       	sub	r9,r0
    807e:	31 9c       	add	r9,r1
    8080:	cb 01       	or	#1,r0
    8082:	11 01       	mov.l	r0,@(4,r1)
    8084:	50 a1       	mov.l	@(4,r10),r0
    8086:	13 12       	mov.l	r1,@(8,r3)
    8088:	c9 01       	and	#1,r0
    808a:	af 2e       	bra	7eea <__realloc_r+0x12a>
    808c:	20 9b       	or	r9,r0
    808e:	00 09       	nop	
    8090:	d0 25       	mov.l	8128 <__realloc_r+0x368>,r0	! 7c9c <_memmove>
    8092:	40 0b       	jsr	@r0
    8094:	65 83       	mov	r8,r5
    8096:	af 7e       	bra	7f96 <__realloc_r+0x1d6>
    8098:	00 09       	nop	
    809a:	00 09       	nop	
    809c:	71 10       	add	#16,r1
    809e:	3e 13       	cmp/ge	r1,r14
    80a0:	89 02       	bt	80a8 <__realloc_r+0x2e8>
    80a2:	af 8d       	bra	7fc0 <__realloc_r+0x200>
    80a4:	37 53       	cmp/ge	r5,r7
    80a6:	00 09       	nop	
    80a8:	51 23       	mov.l	@(12,r2),r1
    80aa:	66 d3       	mov	r13,r6
    80ac:	57 22       	mov.l	@(8,r2),r7
    80ae:	76 fc       	add	#-4,r6
    80b0:	6c 23       	mov	r2,r12
    80b2:	17 13       	mov.l	r1,@(12,r7)
    80b4:	7c 08       	add	#8,r12
    80b6:	11 72       	mov.l	r7,@(8,r1)
    80b8:	e1 24       	mov	#36,r1
    80ba:	36 16       	cmp/hi	r1,r6
    80bc:	8b 02       	bf	80c4 <__realloc_r+0x304>
    80be:	a0 7d       	bra	81bc <__realloc_r+0x3fc>
    80c0:	64 c3       	mov	r12,r4
    80c2:	00 09       	nop	
    80c4:	e1 13       	mov	#19,r1
    80c6:	36 16       	cmp/hi	r1,r6
    80c8:	61 c3       	mov	r12,r1
    80ca:	8b 0c       	bf	80e6 <__realloc_r+0x326>
    80cc:	61 82       	mov.l	@r8,r1
    80ce:	12 12       	mov.l	r1,@(8,r2)
    80d0:	51 81       	mov.l	@(4,r8),r1
    80d2:	12 13       	mov.l	r1,@(12,r2)
    80d4:	e1 1b       	mov	#27,r1
    80d6:	36 16       	cmp/hi	r1,r6
    80d8:	8b 02       	bf	80e0 <__realloc_r+0x320>
    80da:	a0 77       	bra	81cc <__realloc_r+0x40c>
    80dc:	51 82       	mov.l	@(8,r8),r1
    80de:	00 09       	nop	
    80e0:	61 23       	mov	r2,r1
    80e2:	71 10       	add	#16,r1
    80e4:	78 08       	add	#8,r8
    80e6:	67 82       	mov.l	@r8,r7
    80e8:	21 72       	mov.l	r7,@r1
    80ea:	57 81       	mov.l	@(4,r8),r7
    80ec:	11 71       	mov.l	r7,@(4,r1)
    80ee:	57 82       	mov.l	@(8,r8),r7
    80f0:	11 72       	mov.l	r7,@(8,r1)
    80f2:	60 e3       	mov	r14,r0
    80f4:	61 23       	mov	r2,r1
    80f6:	30 98       	sub	r9,r0
    80f8:	31 9c       	add	r9,r1
    80fa:	cb 01       	or	#1,r0
    80fc:	11 01       	mov.l	r0,@(4,r1)
    80fe:	64 b3       	mov	r11,r4
    8100:	50 21       	mov.l	@(4,r2),r0
    8102:	13 12       	mov.l	r1,@(8,r3)
    8104:	c9 01       	and	#1,r0
    8106:	d1 05       	mov.l	811c <__realloc_r+0x35c>,r1	! 589c <___malloc_unlock>
    8108:	20 9b       	or	r9,r0
    810a:	41 0b       	jsr	@r1
    810c:	12 01       	mov.l	r0,@(4,r2)
    810e:	ae f2       	bra	7ef6 <__realloc_r+0x136>
    8110:	60 c3       	mov	r12,r0
    8112:	00 09       	nop	
    8114:	00 00       	.word 0x0000
    8116:	58 98       	mov.l	@(32,r9),r8
    8118:	00 00       	.word 0x0000
    811a:	a8 b4       	bra	7286 <__vfiprintf_r+0xaf6>
    811c:	00 00       	.word 0x0000
    811e:	58 9c       	mov.l	@(48,r9),r8
    8120:	00 00       	.word 0x0000
    8122:	4c c8       	.word 0x4cc8
    8124:	00 00       	.word 0x0000
    8126:	51 8c       	mov.l	@(48,r8),r1
    8128:	00 00       	.word 0x0000
    812a:	7c 9c       	add	#-100,r12
    812c:	51 82       	mov.l	@(8,r8),r1
    812e:	10 12       	mov.l	r1,@(8,r0)
    8130:	51 83       	mov.l	@(12,r8),r1
    8132:	10 13       	mov.l	r1,@(12,r0)
    8134:	60 63       	mov	r6,r0
    8136:	88 24       	cmp/eq	#36,r0
    8138:	89 1c       	bt	8174 <__realloc_r+0x3b4>
    813a:	61 c3       	mov	r12,r1
    813c:	62 83       	mov	r8,r2
    813e:	71 10       	add	#16,r1
    8140:	af 23       	bra	7f8a <__realloc_r+0x1ca>
    8142:	72 10       	add	#16,r2
    8144:	e2 fc       	mov	#-4,r2
    8146:	2e 29       	and	r2,r14
    8148:	ae c3       	bra	7ed2 <__realloc_r+0x112>
    814a:	3e dc       	add	r13,r14
    814c:	d0 28       	mov.l	81f0 <__realloc_r+0x430>,r0	! 7c9c <_memmove>
    814e:	65 83       	mov	r8,r5
    8150:	40 0b       	jsr	@r0
    8152:	2f 22       	mov.l	r2,@r15
    8154:	62 f2       	mov.l	@r15,r2
    8156:	68 a3       	mov	r10,r8
    8158:	51 21       	mov.l	@(4,r2),r1
    815a:	ae ba       	bra	7ed2 <__realloc_r+0x112>
    815c:	6a 23       	mov	r2,r10
    815e:	00 09       	nop	
    8160:	60 63       	mov	r6,r0
    8162:	88 24       	cmp/eq	#36,r0
    8164:	12 14       	mov.l	r1,@(16,r2)
    8166:	51 83       	mov.l	@(12,r8),r1
    8168:	12 15       	mov.l	r1,@(20,r2)
    816a:	89 17       	bt	819c <__realloc_r+0x3dc>
    816c:	61 23       	mov	r2,r1
    816e:	71 18       	add	#24,r1
    8170:	ae 9f       	bra	7eb2 <__realloc_r+0xf2>
    8172:	78 10       	add	#16,r8
    8174:	51 84       	mov.l	@(16,r8),r1
    8176:	62 83       	mov	r8,r2
    8178:	72 18       	add	#24,r2
    817a:	1c 14       	mov.l	r1,@(16,r12)
    817c:	51 85       	mov.l	@(20,r8),r1
    817e:	1c 15       	mov.l	r1,@(20,r12)
    8180:	61 c3       	mov	r12,r1
    8182:	af 02       	bra	7f8a <__realloc_r+0x1ca>
    8184:	71 18       	add	#24,r1
    8186:	00 09       	nop	
    8188:	60 63       	mov	r6,r0
    818a:	88 24       	cmp/eq	#36,r0
    818c:	12 14       	mov.l	r1,@(16,r2)
    818e:	51 83       	mov.l	@(12,r8),r1
    8190:	12 15       	mov.l	r1,@(20,r2)
    8192:	89 0b       	bt	81ac <__realloc_r+0x3ec>
    8194:	61 23       	mov	r2,r1
    8196:	71 18       	add	#24,r1
    8198:	af 2f       	bra	7ffa <__realloc_r+0x23a>
    819a:	78 10       	add	#16,r8
    819c:	51 84       	mov.l	@(16,r8),r1
    819e:	12 16       	mov.l	r1,@(24,r2)
    81a0:	51 85       	mov.l	@(20,r8),r1
    81a2:	78 18       	add	#24,r8
    81a4:	12 17       	mov.l	r1,@(28,r2)
    81a6:	61 23       	mov	r2,r1
    81a8:	ae 83       	bra	7eb2 <__realloc_r+0xf2>
    81aa:	71 20       	add	#32,r1
    81ac:	51 84       	mov.l	@(16,r8),r1
    81ae:	12 16       	mov.l	r1,@(24,r2)
    81b0:	51 85       	mov.l	@(20,r8),r1
    81b2:	78 18       	add	#24,r8
    81b4:	12 17       	mov.l	r1,@(28,r2)
    81b6:	61 23       	mov	r2,r1
    81b8:	af 1f       	bra	7ffa <__realloc_r+0x23a>
    81ba:	71 20       	add	#32,r1
    81bc:	d0 0c       	mov.l	81f0 <__realloc_r+0x430>,r0	! 7c9c <_memmove>
    81be:	2f 22       	mov.l	r2,@r15
    81c0:	65 83       	mov	r8,r5
    81c2:	40 0b       	jsr	@r0
    81c4:	1f 31       	mov.l	r3,@(4,r15)
    81c6:	53 f1       	mov.l	@(4,r15),r3
    81c8:	af 93       	bra	80f2 <__realloc_r+0x332>
    81ca:	62 f2       	mov.l	@r15,r2
    81cc:	60 63       	mov	r6,r0
    81ce:	88 24       	cmp/eq	#36,r0
    81d0:	12 14       	mov.l	r1,@(16,r2)
    81d2:	51 83       	mov.l	@(12,r8),r1
    81d4:	12 15       	mov.l	r1,@(20,r2)
    81d6:	89 03       	bt	81e0 <__realloc_r+0x420>
    81d8:	61 23       	mov	r2,r1
    81da:	71 18       	add	#24,r1
    81dc:	af 83       	bra	80e6 <__realloc_r+0x326>
    81de:	78 10       	add	#16,r8
    81e0:	51 84       	mov.l	@(16,r8),r1
    81e2:	12 16       	mov.l	r1,@(24,r2)
    81e4:	51 85       	mov.l	@(20,r8),r1
    81e6:	78 18       	add	#24,r8
    81e8:	12 17       	mov.l	r1,@(28,r2)
    81ea:	61 23       	mov	r2,r1
    81ec:	af 7b       	bra	80e6 <__realloc_r+0x326>
    81ee:	71 20       	add	#32,r1
    81f0:	00 00       	.word 0x0000
    81f2:	7c 9c       	add	#-100,r12

000081f4 <___swbuf_r>:
    81f4:	2f 86       	mov.l	r8,@-r15
    81f6:	24 48       	tst	r4,r4
    81f8:	2f 96       	mov.l	r9,@-r15
    81fa:	68 63       	mov	r6,r8
    81fc:	2f a6       	mov.l	r10,@-r15
    81fe:	69 43       	mov	r4,r9
    8200:	2f b6       	mov.l	r11,@-r15
    8202:	6b 53       	mov	r5,r11
    8204:	4f 22       	sts.l	pr,@-r15
    8206:	89 02       	bt	820e <___swbuf_r+0x1a>
    8208:	51 4e       	mov.l	@(56,r4),r1
    820a:	21 18       	tst	r1,r1
    820c:	89 5e       	bt	82cc <___swbuf_r+0xd8>
    820e:	6a 83       	mov	r8,r10
    8210:	51 86       	mov.l	@(24,r8),r1
    8212:	7a 0c       	add	#12,r10
    8214:	60 a1       	mov.w	@r10,r0
    8216:	18 12       	mov.l	r1,@(8,r8)
    8218:	c8 08       	tst	#8,r0
    821a:	89 4d       	bt	82b8 <___swbuf_r+0xc4>
    821c:	52 84       	mov.l	@(16,r8),r2
    821e:	22 28       	tst	r2,r2
    8220:	89 4a       	bt	82b8 <___swbuf_r+0xc4>
    8222:	93 58       	mov.w	82d6 <___swbuf_r+0xe2>,r3	! 2000
    8224:	6b bc       	extu.b	r11,r11
    8226:	20 38       	tst	r3,r0
    8228:	89 1e       	bt	8268 <___swbuf_r+0x74>
    822a:	61 82       	mov.l	@r8,r1
    822c:	53 85       	mov.l	@(20,r8),r3
    822e:	60 13       	mov	r1,r0
    8230:	30 28       	sub	r2,r0
    8232:	30 33       	cmp/ge	r3,r0
    8234:	89 27       	bt	8286 <___swbuf_r+0x92>
    8236:	52 82       	mov.l	@(8,r8),r2
    8238:	63 03       	mov	r0,r3
    823a:	73 01       	add	#1,r3
    823c:	72 ff       	add	#-1,r2
    823e:	18 22       	mov.l	r2,@(8,r8)
    8240:	21 b0       	mov.b	r11,@r1
    8242:	71 01       	add	#1,r1
    8244:	28 12       	mov.l	r1,@r8
    8246:	51 85       	mov.l	@(20,r8),r1
    8248:	31 30       	cmp/eq	r3,r1
    824a:	89 2d       	bt	82a8 <___swbuf_r+0xb4>
    824c:	60 a1       	mov.w	@r10,r0
    824e:	c8 01       	tst	#1,r0
    8250:	89 02       	bt	8258 <___swbuf_r+0x64>
    8252:	60 b3       	mov	r11,r0
    8254:	88 0a       	cmp/eq	#10,r0
    8256:	89 27       	bt	82a8 <___swbuf_r+0xb4>
    8258:	60 b3       	mov	r11,r0
    825a:	4f 26       	lds.l	@r15+,pr
    825c:	6b f6       	mov.l	@r15+,r11
    825e:	6a f6       	mov.l	@r15+,r10
    8260:	69 f6       	mov.l	@r15+,r9
    8262:	68 f6       	mov.l	@r15+,r8
    8264:	00 0b       	rts	
    8266:	00 09       	nop	
    8268:	61 03       	mov	r0,r1
    826a:	21 3b       	or	r3,r1
    826c:	63 83       	mov	r8,r3
    826e:	73 40       	add	#64,r3
    8270:	2a 11       	mov.w	r1,@r10
    8272:	97 31       	mov.w	82d8 <___swbuf_r+0xe4>,r7	! dfff
    8274:	51 39       	mov.l	@(36,r3),r1
    8276:	21 79       	and	r7,r1
    8278:	13 19       	mov.l	r1,@(36,r3)
    827a:	61 82       	mov.l	@r8,r1
    827c:	53 85       	mov.l	@(20,r8),r3
    827e:	60 13       	mov	r1,r0
    8280:	30 28       	sub	r2,r0
    8282:	30 33       	cmp/ge	r3,r0
    8284:	8b d7       	bf	8236 <___swbuf_r+0x42>
    8286:	d0 15       	mov.l	82dc <___swbuf_r+0xe8>,r0	! 4940 <__fflush_r>
    8288:	64 93       	mov	r9,r4
    828a:	40 0b       	jsr	@r0
    828c:	65 83       	mov	r8,r5
    828e:	20 08       	tst	r0,r0
    8290:	8b 10       	bf	82b4 <___swbuf_r+0xc0>
    8292:	52 82       	mov.l	@(8,r8),r2
    8294:	e3 01       	mov	#1,r3
    8296:	61 82       	mov.l	@r8,r1
    8298:	72 ff       	add	#-1,r2
    829a:	18 22       	mov.l	r2,@(8,r8)
    829c:	21 b0       	mov.b	r11,@r1
    829e:	71 01       	add	#1,r1
    82a0:	28 12       	mov.l	r1,@r8
    82a2:	51 85       	mov.l	@(20,r8),r1
    82a4:	31 30       	cmp/eq	r3,r1
    82a6:	8b d1       	bf	824c <___swbuf_r+0x58>
    82a8:	d0 0c       	mov.l	82dc <___swbuf_r+0xe8>,r0	! 4940 <__fflush_r>
    82aa:	64 93       	mov	r9,r4
    82ac:	40 0b       	jsr	@r0
    82ae:	65 83       	mov	r8,r5
    82b0:	20 08       	tst	r0,r0
    82b2:	89 d1       	bt	8258 <___swbuf_r+0x64>
    82b4:	af d0       	bra	8258 <___swbuf_r+0x64>
    82b6:	eb ff       	mov	#-1,r11
    82b8:	d0 09       	mov.l	82e0 <___swbuf_r+0xec>,r0	! 3108 <___swsetup_r>
    82ba:	64 93       	mov	r9,r4
    82bc:	40 0b       	jsr	@r0
    82be:	65 83       	mov	r8,r5
    82c0:	20 08       	tst	r0,r0
    82c2:	8b f7       	bf	82b4 <___swbuf_r+0xc0>
    82c4:	60 a1       	mov.w	@r10,r0
    82c6:	af ac       	bra	8222 <___swbuf_r+0x2e>
    82c8:	52 84       	mov.l	@(16,r8),r2
    82ca:	00 09       	nop	
    82cc:	d1 05       	mov.l	82e4 <___swbuf_r+0xf0>,r1	! 4a90 <___sinit>
    82ce:	41 0b       	jsr	@r1
    82d0:	6a 83       	mov	r8,r10
    82d2:	af 9e       	bra	8212 <___swbuf_r+0x1e>
    82d4:	51 86       	mov.l	@(24,r8),r1
    82d6:	20 00       	mov.b	r0,@r0
    82d8:	df ff       	mov.l	86d8 <___sdivsi3+0x8a>,r15	! 41243304
    82da:	00 09       	nop	
    82dc:	00 00       	.word 0x0000
    82de:	49 40       	.word 0x4940
    82e0:	00 00       	.word 0x0000
    82e2:	31 08       	sub	r0,r1
    82e4:	00 00       	.word 0x0000
    82e6:	4a 90       	.word 0x4a90

000082e8 <___swbuf>:
    82e8:	d2 03       	mov.l	82f8 <___swbuf+0x10>,r2	! a408 <__impure_ptr>
    82ea:	61 43       	mov	r4,r1
    82ec:	d0 03       	mov.l	82fc <___swbuf+0x14>,r0	! 81f4 <___swbuf_r>
    82ee:	66 53       	mov	r5,r6
    82f0:	64 22       	mov.l	@r2,r4
    82f2:	40 2b       	jmp	@r0
    82f4:	65 13       	mov	r1,r5
    82f6:	00 09       	nop	
    82f8:	00 00       	.word 0x0000
    82fa:	a4 08       	bra	8b0e <___umoddi3+0x96>
    82fc:	00 00       	.word 0x0000
    82fe:	81 f4       	mov.w	r0,@(8,r15)

00008300 <__wcrtomb_r>:
    8300:	2f 86       	mov.l	r8,@-r15
    8302:	25 58       	tst	r5,r5
    8304:	2f 96       	mov.l	r9,@-r15
    8306:	68 43       	mov	r4,r8
    8308:	2f a6       	mov.l	r10,@-r15
    830a:	69 73       	mov	r7,r9
    830c:	d1 13       	mov.l	835c <__wcrtomb_r+0x5c>,r1	! acbc <___wctomb>
    830e:	4f 22       	sts.l	pr,@-r15
    8310:	d0 13       	mov.l	8360 <__wcrtomb_r+0x60>,r0	! 5014 <___locale_charset>
    8312:	7f e8       	add	#-24,r15
    8314:	6a 12       	mov.l	@r1,r10
    8316:	89 15       	bt	8344 <__wcrtomb_r+0x44>
    8318:	1f 52       	mov.l	r5,@(8,r15)
    831a:	40 0b       	jsr	@r0
    831c:	1f 61       	mov.l	r6,@(4,r15)
    831e:	67 03       	mov	r0,r7
    8320:	2f 92       	mov.l	r9,@r15
    8322:	64 83       	mov	r8,r4
    8324:	55 f2       	mov.l	@(8,r15),r5
    8326:	4a 0b       	jsr	@r10
    8328:	56 f1       	mov.l	@(4,r15),r6
    832a:	88 ff       	cmp/eq	#-1,r0
    832c:	8b 03       	bf	8336 <__wcrtomb_r+0x36>
    832e:	e1 00       	mov	#0,r1
    8330:	29 12       	mov.l	r1,@r9
    8332:	91 12       	mov.w	835a <__wcrtomb_r+0x5a>,r1	! 8a
    8334:	28 12       	mov.l	r1,@r8
    8336:	7f 18       	add	#24,r15
    8338:	4f 26       	lds.l	@r15+,pr
    833a:	6a f6       	mov.l	@r15+,r10
    833c:	69 f6       	mov.l	@r15+,r9
    833e:	68 f6       	mov.l	@r15+,r8
    8340:	00 0b       	rts	
    8342:	00 09       	nop	
    8344:	40 0b       	jsr	@r0
    8346:	00 09       	nop	
    8348:	65 f3       	mov	r15,r5
    834a:	67 03       	mov	r0,r7
    834c:	2f 92       	mov.l	r9,@r15
    834e:	64 83       	mov	r8,r4
    8350:	75 0c       	add	#12,r5
    8352:	4a 0b       	jsr	@r10
    8354:	e6 00       	mov	#0,r6
    8356:	af e9       	bra	832c <__wcrtomb_r+0x2c>
    8358:	88 ff       	cmp/eq	#-1,r0
    835a:	00 8a       	.word 0x008a
    835c:	00 00       	.word 0x0000
    835e:	ac bc       	bra	7cda <_memmove+0x3e>
    8360:	00 00       	.word 0x0000
    8362:	50 14       	mov.l	@(16,r1),r0

00008364 <_wcrtomb>:
    8364:	2f 86       	mov.l	r8,@-r15
    8366:	24 48       	tst	r4,r4
    8368:	2f 96       	mov.l	r9,@-r15
    836a:	68 43       	mov	r4,r8
    836c:	2f a6       	mov.l	r10,@-r15
    836e:	69 63       	mov	r6,r9
    8370:	2f b6       	mov.l	r11,@-r15
    8372:	6b 53       	mov	r5,r11
    8374:	2f c6       	mov.l	r12,@-r15
    8376:	2f d6       	mov.l	r13,@-r15
    8378:	4f 22       	sts.l	pr,@-r15
    837a:	d1 17       	mov.l	83d8 <_wcrtomb+0x74>,r1	! acbc <___wctomb>
    837c:	7f f0       	add	#-16,r15
    837e:	89 1b       	bt	83b8 <_wcrtomb+0x54>
    8380:	da 16       	mov.l	83dc <_wcrtomb+0x78>,r10	! a408 <__impure_ptr>
    8382:	d0 17       	mov.l	83e0 <_wcrtomb+0x7c>,r0	! 5014 <___locale_charset>
    8384:	6c a2       	mov.l	@r10,r12
    8386:	40 0b       	jsr	@r0
    8388:	6d 12       	mov.l	@r1,r13
    838a:	67 03       	mov	r0,r7
    838c:	2f 92       	mov.l	r9,@r15
    838e:	64 c3       	mov	r12,r4
    8390:	65 83       	mov	r8,r5
    8392:	4d 0b       	jsr	@r13
    8394:	66 b3       	mov	r11,r6
    8396:	88 ff       	cmp/eq	#-1,r0
    8398:	8b 04       	bf	83a4 <_wcrtomb+0x40>
    839a:	e1 00       	mov	#0,r1
    839c:	29 12       	mov.l	r1,@r9
    839e:	92 19       	mov.w	83d4 <_wcrtomb+0x70>,r2	! 8a
    83a0:	61 a2       	mov.l	@r10,r1
    83a2:	21 22       	mov.l	r2,@r1
    83a4:	7f 10       	add	#16,r15
    83a6:	4f 26       	lds.l	@r15+,pr
    83a8:	6d f6       	mov.l	@r15+,r13
    83aa:	6c f6       	mov.l	@r15+,r12
    83ac:	6b f6       	mov.l	@r15+,r11
    83ae:	6a f6       	mov.l	@r15+,r10
    83b0:	69 f6       	mov.l	@r15+,r9
    83b2:	68 f6       	mov.l	@r15+,r8
    83b4:	00 0b       	rts	
    83b6:	00 09       	nop	
    83b8:	da 08       	mov.l	83dc <_wcrtomb+0x78>,r10	! a408 <__impure_ptr>
    83ba:	d0 09       	mov.l	83e0 <_wcrtomb+0x7c>,r0	! 5014 <___locale_charset>
    83bc:	68 a2       	mov.l	@r10,r8
    83be:	40 0b       	jsr	@r0
    83c0:	6b 12       	mov.l	@r1,r11
    83c2:	65 f3       	mov	r15,r5
    83c4:	67 03       	mov	r0,r7
    83c6:	2f 92       	mov.l	r9,@r15
    83c8:	64 83       	mov	r8,r4
    83ca:	75 04       	add	#4,r5
    83cc:	4b 0b       	jsr	@r11
    83ce:	e6 00       	mov	#0,r6
    83d0:	af e2       	bra	8398 <_wcrtomb+0x34>
    83d2:	88 ff       	cmp/eq	#-1,r0
    83d4:	00 8a       	.word 0x008a
    83d6:	00 09       	nop	
    83d8:	00 00       	.word 0x0000
    83da:	ac bc       	bra	7d56 <_memmove+0xba>
    83dc:	00 00       	.word 0x0000
    83de:	a4 08       	bra	8bf2 <___umoddi3+0x17a>
    83e0:	00 00       	.word 0x0000
    83e2:	50 14       	mov.l	@(16,r1),r0

000083e4 <___ascii_wctomb>:
    83e4:	25 58       	tst	r5,r5
    83e6:	89 05       	bt	83f4 <___ascii_wctomb+0x10>
    83e8:	91 0a       	mov.w	8400 <___ascii_wctomb+0x1c>,r1	! ff
    83ea:	36 16       	cmp/hi	r1,r6
    83ec:	89 04       	bt	83f8 <___ascii_wctomb+0x14>
    83ee:	25 60       	mov.b	r6,@r5
    83f0:	00 0b       	rts	
    83f2:	e0 01       	mov	#1,r0
    83f4:	00 0b       	rts	
    83f6:	e0 00       	mov	#0,r0
    83f8:	71 8b       	add	#-117,r1
    83fa:	24 12       	mov.l	r1,@r4
    83fc:	00 0b       	rts	
    83fe:	e0 ff       	mov	#-1,r0
    8400:	00 ff       	.word 0x00ff
    8402:	00 09       	nop	

00008404 <__wctomb_r>:
    8404:	2f 86       	mov.l	r8,@-r15
    8406:	2f 96       	mov.l	r9,@-r15
    8408:	69 73       	mov	r7,r9
    840a:	4f 22       	sts.l	pr,@-r15
    840c:	d1 09       	mov.l	8434 <__wctomb_r+0x30>,r1	! acbc <___wctomb>
    840e:	7f f0       	add	#-16,r15
    8410:	d0 09       	mov.l	8438 <__wctomb_r+0x34>,r0	! 5014 <___locale_charset>
    8412:	68 12       	mov.l	@r1,r8
    8414:	1f 43       	mov.l	r4,@(12,r15)
    8416:	1f 52       	mov.l	r5,@(8,r15)
    8418:	40 0b       	jsr	@r0
    841a:	1f 61       	mov.l	r6,@(4,r15)
    841c:	54 f3       	mov.l	@(12,r15),r4
    841e:	67 03       	mov	r0,r7
    8420:	55 f2       	mov.l	@(8,r15),r5
    8422:	56 f1       	mov.l	@(4,r15),r6
    8424:	48 0b       	jsr	@r8
    8426:	2f 92       	mov.l	r9,@r15
    8428:	7f 10       	add	#16,r15
    842a:	4f 26       	lds.l	@r15+,pr
    842c:	69 f6       	mov.l	@r15+,r9
    842e:	68 f6       	mov.l	@r15+,r8
    8430:	00 0b       	rts	
    8432:	00 09       	nop	
    8434:	00 00       	.word 0x0000
    8436:	ac bc       	bra	7db2 <__read_r+0x36>
    8438:	00 00       	.word 0x0000
    843a:	50 14       	mov.l	@(16,r1),r0

0000843c <___ashiftrt_r4_31>:
    843c:	44 24       	rotcl	r4
    843e:	00 0b       	rts	
    8440:	34 4a       	subc	r4,r4

00008442 <___ashiftrt_r4_30>:
    8442:	44 21       	shar	r4

00008444 <___ashiftrt_r4_29>:
    8444:	44 21       	shar	r4

00008446 <___ashiftrt_r4_28>:
    8446:	44 21       	shar	r4

00008448 <___ashiftrt_r4_27>:
    8448:	44 21       	shar	r4

0000844a <___ashiftrt_r4_26>:
    844a:	44 21       	shar	r4

0000844c <___ashiftrt_r4_25>:
    844c:	44 21       	shar	r4

0000844e <___ashiftrt_r4_24>:
    844e:	44 29       	shlr16	r4
    8450:	44 19       	shlr8	r4
    8452:	00 0b       	rts	
    8454:	64 4e       	exts.b	r4,r4

00008456 <___ashiftrt_r4_23>:
    8456:	44 21       	shar	r4

00008458 <___ashiftrt_r4_22>:
    8458:	44 21       	shar	r4

0000845a <___ashiftrt_r4_21>:
    845a:	44 21       	shar	r4

0000845c <___ashiftrt_r4_20>:
    845c:	44 21       	shar	r4

0000845e <___ashiftrt_r4_19>:
    845e:	44 21       	shar	r4

00008460 <___ashiftrt_r4_18>:
    8460:	44 21       	shar	r4

00008462 <___ashiftrt_r4_17>:
    8462:	44 21       	shar	r4

00008464 <___ashiftrt_r4_16>:
    8464:	44 29       	shlr16	r4
    8466:	00 0b       	rts	
    8468:	64 4f       	exts.w	r4,r4

0000846a <___ashiftrt_r4_15>:
    846a:	44 21       	shar	r4

0000846c <___ashiftrt_r4_14>:
    846c:	44 21       	shar	r4

0000846e <___ashiftrt_r4_13>:
    846e:	44 21       	shar	r4

00008470 <___ashiftrt_r4_12>:
    8470:	44 21       	shar	r4

00008472 <___ashiftrt_r4_11>:
    8472:	44 21       	shar	r4

00008474 <___ashiftrt_r4_10>:
    8474:	44 21       	shar	r4

00008476 <___ashiftrt_r4_9>:
    8476:	44 21       	shar	r4

00008478 <___ashiftrt_r4_8>:
    8478:	44 21       	shar	r4

0000847a <___ashiftrt_r4_7>:
    847a:	44 21       	shar	r4

0000847c <___ashiftrt_r4_6>:
    847c:	44 21       	shar	r4

0000847e <___ashiftrt_r4_5>:
    847e:	44 21       	shar	r4

00008480 <___ashiftrt_r4_4>:
    8480:	44 21       	shar	r4

00008482 <___ashiftrt_r4_3>:
    8482:	44 21       	shar	r4

00008484 <___ashiftrt_r4_2>:
    8484:	44 21       	shar	r4

00008486 <___ashiftrt_r4_1>:
    8486:	00 0b       	rts	
    8488:	44 21       	shar	r4

0000848a <___ashiftrt_r4_0>:
    848a:	00 0b       	rts	
    848c:	00 09       	nop	
	...

00008490 <___ashrsi3>:
    8490:	e0 1f       	mov	#31,r0
    8492:	25 09       	and	r0,r5
    8494:	c7 02       	mova	84a0 <___ashrsi3+0x10>,r0
    8496:	05 5c       	mov.b	@(r0,r5),r5
    8498:	30 5c       	add	r5,r0
    849a:	40 2b       	jmp	@r0
    849c:	60 43       	mov	r4,r0
    849e:	00 09       	nop	
    84a0:	6e 6a       	negc	r6,r14
    84a2:	68 66       	mov.l	@r6+,r8
    84a4:	64 62       	mov.l	@r6,r4
    84a6:	60 5e       	exts.b	r5,r0
    84a8:	5c 5a       	mov.l	@(40,r5),r12
    84aa:	58 56       	mov.l	@(24,r5),r8
    84ac:	54 52       	mov.l	@(8,r5),r4
    84ae:	50 4e       	mov.l	@(56,r4),r0
    84b0:	48 46       	.word 0x4846
    84b2:	44 42       	.word 0x4442
    84b4:	40 3e       	.word 0x403e
    84b6:	3c 3a       	subc	r3,r12
    84b8:	32 30       	cmp/eq	r3,r2
    84ba:	2e 2c       	cmp/str	r2,r14
    84bc:	2a 28       	tst	r2,r10
    84be:	26 20       	mov.b	r2,@r6
    84c0:	40 24       	rotcl	r0
    84c2:	00 0b       	rts	
    84c4:	30 0a       	subc	r0,r0
    84c6:	40 21       	shar	r0
    84c8:	40 21       	shar	r0
    84ca:	40 21       	shar	r0
    84cc:	40 21       	shar	r0
    84ce:	40 21       	shar	r0
    84d0:	40 21       	shar	r0
    84d2:	40 29       	shlr16	r0
    84d4:	40 19       	shlr8	r0
    84d6:	00 0b       	rts	
    84d8:	60 0e       	exts.b	r0,r0
    84da:	40 21       	shar	r0
    84dc:	40 21       	shar	r0
    84de:	40 21       	shar	r0
    84e0:	40 21       	shar	r0
    84e2:	40 21       	shar	r0
    84e4:	40 21       	shar	r0
    84e6:	40 21       	shar	r0
    84e8:	40 29       	shlr16	r0
    84ea:	00 0b       	rts	
    84ec:	60 0f       	exts.w	r0,r0
    84ee:	40 21       	shar	r0
    84f0:	40 21       	shar	r0
    84f2:	40 21       	shar	r0
    84f4:	40 21       	shar	r0
    84f6:	40 21       	shar	r0
    84f8:	40 21       	shar	r0
    84fa:	40 21       	shar	r0
    84fc:	40 21       	shar	r0
    84fe:	40 21       	shar	r0
    8500:	40 21       	shar	r0
    8502:	40 21       	shar	r0
    8504:	40 21       	shar	r0
    8506:	40 21       	shar	r0
    8508:	40 21       	shar	r0
    850a:	00 0b       	rts	
    850c:	40 21       	shar	r0
    850e:	00 0b       	rts	
    8510:	00 09       	nop	
    8512:	00 09       	nop	

00008514 <___ashlsi3>:
    8514:	e0 1f       	mov	#31,r0
    8516:	25 09       	and	r0,r5
    8518:	c7 02       	mova	8524 <___ashlsi3+0x10>,r0
    851a:	05 5c       	mov.b	@(r0,r5),r5
    851c:	30 5c       	add	r5,r0
    851e:	40 2b       	jmp	@r0
    8520:	60 43       	mov	r4,r0
    8522:	00 09       	nop	
    8524:	78 2e       	add	#46,r8
    8526:	24 2c       	cmp/str	r2,r4
    8528:	22 2a       	xor	r2,r2
    852a:	20 28       	tst	r2,r0
    852c:	38 42       	cmp/hs	r4,r8
    852e:	36 40       	cmp/eq	r4,r6
    8530:	34 3e       	addc	r3,r4
    8532:	32 3c       	add	r3,r2
    8534:	4e 58       	.word 0x4e58
    8536:	4c 56       	.word 0x4c56
    8538:	4a 54       	.word 0x4a54
    853a:	48 52       	.word 0x4852
    853c:	64 70       	mov.b	@r7,r4
    853e:	62 6e       	exts.b	r6,r2
    8540:	60 6c       	extu.b	r6,r0
    8542:	5e 6a       	mov.l	@(40,r6),r14
    8544:	40 08       	shll2	r0
    8546:	40 08       	shll2	r0
    8548:	00 0b       	rts	
    854a:	40 08       	shll2	r0
    854c:	40 08       	shll2	r0
    854e:	40 08       	shll2	r0
    8550:	40 08       	shll2	r0
    8552:	00 0b       	rts	
    8554:	40 00       	shll	r0
    8556:	40 08       	shll2	r0
    8558:	40 08       	shll2	r0
    855a:	40 08       	shll2	r0
    855c:	00 0b       	rts	
    855e:	40 18       	shll8	r0
    8560:	40 08       	shll2	r0
    8562:	40 08       	shll2	r0
    8564:	40 08       	shll2	r0
    8566:	40 18       	shll8	r0
    8568:	00 0b       	rts	
    856a:	40 00       	shll	r0
    856c:	40 08       	shll2	r0
    856e:	40 08       	shll2	r0
    8570:	40 08       	shll2	r0
    8572:	00 0b       	rts	
    8574:	40 28       	shll16	r0
    8576:	40 08       	shll2	r0
    8578:	40 08       	shll2	r0
    857a:	40 08       	shll2	r0
    857c:	40 28       	shll16	r0
    857e:	00 0b       	rts	
    8580:	40 00       	shll	r0
    8582:	40 08       	shll2	r0
    8584:	40 08       	shll2	r0
    8586:	40 08       	shll2	r0
    8588:	40 28       	shll16	r0
    858a:	00 0b       	rts	
    858c:	40 18       	shll8	r0
    858e:	40 08       	shll2	r0
    8590:	40 08       	shll2	r0
    8592:	40 08       	shll2	r0
    8594:	40 28       	shll16	r0
    8596:	40 18       	shll8	r0
    8598:	00 0b       	rts	
    859a:	40 00       	shll	r0
    859c:	00 0b       	rts	
    859e:	00 09       	nop	

000085a0 <___lshrsi3>:
    85a0:	e0 1f       	mov	#31,r0
    85a2:	25 09       	and	r0,r5
    85a4:	c7 02       	mova	85b0 <___lshrsi3+0x10>,r0
    85a6:	05 5c       	mov.b	@(r0,r5),r5
    85a8:	30 5c       	add	r5,r0
    85aa:	40 2b       	jmp	@r0
    85ac:	60 43       	mov	r4,r0
    85ae:	00 09       	nop	
    85b0:	78 2e       	add	#46,r8
    85b2:	24 2c       	cmp/str	r2,r4
    85b4:	22 2a       	xor	r2,r2
    85b6:	20 28       	tst	r2,r0
    85b8:	38 42       	cmp/hs	r4,r8
    85ba:	36 40       	cmp/eq	r4,r6
    85bc:	34 3e       	addc	r3,r4
    85be:	32 3c       	add	r3,r2
    85c0:	4e 58       	.word 0x4e58
    85c2:	4c 56       	.word 0x4c56
    85c4:	4a 54       	.word 0x4a54
    85c6:	48 52       	.word 0x4852
    85c8:	64 70       	mov.b	@r7,r4
    85ca:	62 6e       	exts.b	r6,r2
    85cc:	60 6c       	extu.b	r6,r0
    85ce:	5e 6a       	mov.l	@(40,r6),r14
    85d0:	40 09       	shlr2	r0
    85d2:	40 09       	shlr2	r0
    85d4:	00 0b       	rts	
    85d6:	40 09       	shlr2	r0
    85d8:	40 09       	shlr2	r0
    85da:	40 09       	shlr2	r0
    85dc:	40 09       	shlr2	r0
    85de:	00 0b       	rts	
    85e0:	40 01       	shlr	r0
    85e2:	40 09       	shlr2	r0
    85e4:	40 09       	shlr2	r0
    85e6:	40 09       	shlr2	r0
    85e8:	00 0b       	rts	
    85ea:	40 19       	shlr8	r0
    85ec:	40 09       	shlr2	r0
    85ee:	40 09       	shlr2	r0
    85f0:	40 09       	shlr2	r0
    85f2:	40 19       	shlr8	r0
    85f4:	00 0b       	rts	
    85f6:	40 01       	shlr	r0
    85f8:	40 09       	shlr2	r0
    85fa:	40 09       	shlr2	r0
    85fc:	40 09       	shlr2	r0
    85fe:	00 0b       	rts	
    8600:	40 29       	shlr16	r0
    8602:	40 09       	shlr2	r0
    8604:	40 09       	shlr2	r0
    8606:	40 09       	shlr2	r0
    8608:	40 29       	shlr16	r0
    860a:	00 0b       	rts	
    860c:	40 01       	shlr	r0
    860e:	40 09       	shlr2	r0
    8610:	40 09       	shlr2	r0
    8612:	40 09       	shlr2	r0
    8614:	40 29       	shlr16	r0
    8616:	00 0b       	rts	
    8618:	40 19       	shlr8	r0
    861a:	40 09       	shlr2	r0
    861c:	40 09       	shlr2	r0
    861e:	40 09       	shlr2	r0
    8620:	40 29       	shlr16	r0
    8622:	40 19       	shlr8	r0
    8624:	00 0b       	rts	
    8626:	40 01       	shlr	r0
    8628:	00 0b       	rts	
    862a:	00 09       	nop	

0000862c <___mulsi3>:
    862c:	25 4e       	mulu.w	r4,r5
    862e:	63 53       	mov	r5,r3
    8630:	62 49       	swap.w	r4,r2
    8632:	23 2d       	xtrct	r2,r3
    8634:	23 38       	tst	r3,r3
    8636:	8b 01       	bf	863c <hiset>
    8638:	00 0b       	rts	
    863a:	00 1a       	sts	macl,r0

0000863c <hiset>:
    863c:	00 1a       	sts	macl,r0
    863e:	25 2e       	mulu.w	r2,r5
    8640:	01 1a       	sts	macl,r1
    8642:	24 3e       	mulu.w	r3,r4
    8644:	02 1a       	sts	macl,r2
    8646:	32 1c       	add	r1,r2
    8648:	42 28       	shll16	r2
    864a:	00 0b       	rts	
    864c:	30 2c       	add	r2,r0

0000864e <___sdivsi3>:
    864e:	61 43       	mov	r4,r1
    8650:	60 53       	mov	r5,r0
    8652:	20 08       	tst	r0,r0
    8654:	89 48       	bt	86e8 <div0>
    8656:	e2 00       	mov	#0,r2
    8658:	21 27       	div0s	r2,r1
    865a:	33 3a       	subc	r3,r3
    865c:	31 2a       	subc	r2,r1
    865e:	23 07       	div0s	r0,r3
    8660:	41 24       	rotcl	r1
    8662:	33 04       	div1	r0,r3
    8664:	41 24       	rotcl	r1
    8666:	33 04       	div1	r0,r3
    8668:	41 24       	rotcl	r1
    866a:	33 04       	div1	r0,r3
    866c:	41 24       	rotcl	r1
    866e:	33 04       	div1	r0,r3
    8670:	41 24       	rotcl	r1
    8672:	33 04       	div1	r0,r3
    8674:	41 24       	rotcl	r1
    8676:	33 04       	div1	r0,r3
    8678:	41 24       	rotcl	r1
    867a:	33 04       	div1	r0,r3
    867c:	41 24       	rotcl	r1
    867e:	33 04       	div1	r0,r3
    8680:	41 24       	rotcl	r1
    8682:	33 04       	div1	r0,r3
    8684:	41 24       	rotcl	r1
    8686:	33 04       	div1	r0,r3
    8688:	41 24       	rotcl	r1
    868a:	33 04       	div1	r0,r3
    868c:	41 24       	rotcl	r1
    868e:	33 04       	div1	r0,r3
    8690:	41 24       	rotcl	r1
    8692:	33 04       	div1	r0,r3
    8694:	41 24       	rotcl	r1
    8696:	33 04       	div1	r0,r3
    8698:	41 24       	rotcl	r1
    869a:	33 04       	div1	r0,r3
    869c:	41 24       	rotcl	r1
    869e:	33 04       	div1	r0,r3
    86a0:	41 24       	rotcl	r1
    86a2:	33 04       	div1	r0,r3
    86a4:	41 24       	rotcl	r1
    86a6:	33 04       	div1	r0,r3
    86a8:	41 24       	rotcl	r1
    86aa:	33 04       	div1	r0,r3
    86ac:	41 24       	rotcl	r1
    86ae:	33 04       	div1	r0,r3
    86b0:	41 24       	rotcl	r1
    86b2:	33 04       	div1	r0,r3
    86b4:	41 24       	rotcl	r1
    86b6:	33 04       	div1	r0,r3
    86b8:	41 24       	rotcl	r1
    86ba:	33 04       	div1	r0,r3
    86bc:	41 24       	rotcl	r1
    86be:	33 04       	div1	r0,r3
    86c0:	41 24       	rotcl	r1
    86c2:	33 04       	div1	r0,r3
    86c4:	41 24       	rotcl	r1
    86c6:	33 04       	div1	r0,r3
    86c8:	41 24       	rotcl	r1
    86ca:	33 04       	div1	r0,r3
    86cc:	41 24       	rotcl	r1
    86ce:	33 04       	div1	r0,r3
    86d0:	41 24       	rotcl	r1
    86d2:	33 04       	div1	r0,r3
    86d4:	41 24       	rotcl	r1
    86d6:	33 04       	div1	r0,r3
    86d8:	41 24       	rotcl	r1
    86da:	33 04       	div1	r0,r3
    86dc:	41 24       	rotcl	r1
    86de:	33 04       	div1	r0,r3
    86e0:	41 24       	rotcl	r1
    86e2:	31 2e       	addc	r2,r1
    86e4:	00 0b       	rts	
    86e6:	60 13       	mov	r1,r0

000086e8 <div0>:
    86e8:	00 0b       	rts	
    86ea:	e0 00       	mov	#0,r0
    86ec:	34 54       	div1	r5,r4
    86ee:	34 54       	div1	r5,r4
    86f0:	34 54       	div1	r5,r4
    86f2:	34 54       	div1	r5,r4
    86f4:	34 54       	div1	r5,r4
    86f6:	34 54       	div1	r5,r4
    86f8:	34 54       	div1	r5,r4
    86fa:	00 0b       	rts	
    86fc:	34 54       	div1	r5,r4
    86fe:	34 54       	div1	r5,r4
    8700:	40 24       	rotcl	r0
    8702:	34 54       	div1	r5,r4
    8704:	40 24       	rotcl	r0
    8706:	34 54       	div1	r5,r4
    8708:	40 24       	rotcl	r0
    870a:	00 0b       	rts	
    870c:	34 54       	div1	r5,r4

0000870e <___udivsi3>:
    870e:	4f 22       	sts.l	pr,@-r15
    8710:	60 5d       	extu.w	r5,r0
    8712:	30 50       	cmp/eq	r5,r0
    8714:	8b 12       	bf	873c <___udivsi3+0x2e>
    8716:	00 19       	div0u	
    8718:	60 49       	swap.w	r4,r0
    871a:	44 29       	shlr16	r4
    871c:	bf e6       	bsr	86ec <div0+0x4>
    871e:	45 28       	shll16	r5
    8720:	bf e5       	bsr	86ee <div0+0x6>
    8722:	34 54       	div1	r5,r4
    8724:	20 4d       	xtrct	r4,r0
    8726:	24 0d       	xtrct	r0,r4
    8728:	bf e0       	bsr	86ec <div0+0x4>
    872a:	64 49       	swap.w	r4,r4
    872c:	bf df       	bsr	86ee <div0+0x6>
    872e:	34 54       	div1	r5,r4
    8730:	4f 26       	lds.l	@r15+,pr
    8732:	20 4d       	xtrct	r4,r0
    8734:	60 09       	swap.w	r0,r0
    8736:	40 24       	rotcl	r0
    8738:	00 0b       	rts	
    873a:	45 29       	shlr16	r5
    873c:	00 19       	div0u	
    873e:	e0 00       	mov	#0,r0
    8740:	20 4d       	xtrct	r4,r0
    8742:	24 0d       	xtrct	r0,r4
    8744:	bf db       	bsr	86fe <div0+0x16>
    8746:	40 24       	rotcl	r0
    8748:	bf d9       	bsr	86fe <div0+0x16>
    874a:	40 24       	rotcl	r0
    874c:	bf d7       	bsr	86fe <div0+0x16>
    874e:	40 24       	rotcl	r0
    8750:	bf d5       	bsr	86fe <div0+0x16>
    8752:	40 24       	rotcl	r0
    8754:	4f 26       	lds.l	@r15+,pr
    8756:	00 0b       	rts	
    8758:	40 24       	rotcl	r0
	...

0000875c <___udivdi3>:
    875c:	2f 86       	mov.l	r8,@-r15
    875e:	2f 96       	mov.l	r9,@-r15
    8760:	2f a6       	mov.l	r10,@-r15
    8762:	2f b6       	mov.l	r11,@-r15
    8764:	2f c6       	mov.l	r12,@-r15
    8766:	2f d6       	mov.l	r13,@-r15
    8768:	2f e6       	mov.l	r14,@-r15
    876a:	4f 22       	sts.l	pr,@-r15
    876c:	7f f0       	add	#-16,r15
    876e:	1f 51       	mov.l	r5,@(4,r15)
    8770:	26 68       	tst	r6,r6
    8772:	68 43       	mov	r4,r8
    8774:	69 73       	mov	r7,r9
    8776:	6a 73       	mov	r7,r10
    8778:	6b 53       	mov	r5,r11
    877a:	6e 43       	mov	r4,r14
    877c:	8b 46       	bf	880c <___udivdi3+0xb0>
    877e:	37 46       	cmp/hi	r4,r7
    8780:	8b 72       	bf	8868 <___udivdi3+0x10c>
    8782:	d1 b4       	mov.l	8a54 <___udivdi3+0x2f8>,r1	! ffff
    8784:	37 16       	cmp/hi	r1,r7
    8786:	89 01       	bt	878c <___udivdi3+0x30>
    8788:	a0 bc       	bra	8904 <___udivdi3+0x1a8>
    878a:	00 09       	nop	
    878c:	d1 b2       	mov.l	8a58 <___udivdi3+0x2fc>,r1	! ffffff
    878e:	37 16       	cmp/hi	r1,r7
    8790:	8b 02       	bf	8798 <___udivdi3+0x3c>
    8792:	a1 57       	bra	8a44 <___udivdi3+0x2e8>
    8794:	e5 18       	mov	#24,r5
    8796:	00 09       	nop	
    8798:	e5 10       	mov	#16,r5
    879a:	ed 10       	mov	#16,r13
    879c:	dc af       	mov.l	8a5c <___udivdi3+0x300>,r12	! 85a0 <___lshrsi3>
    879e:	4c 0b       	jsr	@r12
    87a0:	64 a3       	mov	r10,r4
    87a2:	d1 af       	mov.l	8a60 <___udivdi3+0x304>,r1	! a00c <___clz_tab>
    87a4:	01 1c       	mov.b	@(r0,r1),r1
    87a6:	61 1c       	extu.b	r1,r1
    87a8:	31 dc       	add	r13,r1
    87aa:	6d 1b       	neg	r1,r13
    87ac:	7d 20       	add	#32,r13
    87ae:	2d d8       	tst	r13,r13
    87b0:	89 12       	bt	87d8 <___udivdi3+0x7c>
    87b2:	db ac       	mov.l	8a64 <___udivdi3+0x308>,r11	! 8514 <___ashlsi3>
    87b4:	64 a3       	mov	r10,r4
    87b6:	2f 12       	mov.l	r1,@r15
    87b8:	4b 0b       	jsr	@r11
    87ba:	65 d3       	mov	r13,r5
    87bc:	64 83       	mov	r8,r4
    87be:	65 d3       	mov	r13,r5
    87c0:	4b 0b       	jsr	@r11
    87c2:	69 03       	mov	r0,r9
    87c4:	61 f2       	mov.l	@r15,r1
    87c6:	6e 03       	mov	r0,r14
    87c8:	54 f1       	mov.l	@(4,r15),r4
    87ca:	4c 0b       	jsr	@r12
    87cc:	65 13       	mov	r1,r5
    87ce:	2e 0b       	or	r0,r14
    87d0:	54 f1       	mov.l	@(4,r15),r4
    87d2:	4b 0b       	jsr	@r11
    87d4:	65 d3       	mov	r13,r5
    87d6:	6b 03       	mov	r0,r11
    87d8:	d3 a3       	mov.l	8a68 <___udivdi3+0x30c>,r3	! 9890 <___udiv_qrnnd_16>
    87da:	60 e3       	mov	r14,r0
    87dc:	65 93       	mov	r9,r5
    87de:	64 b9       	swap.w	r11,r4
    87e0:	66 59       	swap.w	r5,r6
    87e2:	43 0b       	jsr	@r3
    87e4:	46 28       	shll16	r6
    87e6:	64 49       	swap.w	r4,r4
    87e8:	43 0b       	jsr	@r3
    87ea:	69 19       	swap.w	r1,r9
    87ec:	29 1b       	or	r1,r9
    87ee:	e3 00       	mov	#0,r3
    87f0:	60 33       	mov	r3,r0
    87f2:	61 93       	mov	r9,r1
    87f4:	7f 10       	add	#16,r15
    87f6:	4f 26       	lds.l	@r15+,pr
    87f8:	6e f6       	mov.l	@r15+,r14
    87fa:	6d f6       	mov.l	@r15+,r13
    87fc:	6c f6       	mov.l	@r15+,r12
    87fe:	6b f6       	mov.l	@r15+,r11
    8800:	6a f6       	mov.l	@r15+,r10
    8802:	69 f6       	mov.l	@r15+,r9
    8804:	68 f6       	mov.l	@r15+,r8
    8806:	00 0b       	rts	
    8808:	00 09       	nop	
    880a:	00 09       	nop	
    880c:	36 46       	cmp/hi	r4,r6
    880e:	89 1b       	bt	8848 <___udivdi3+0xec>
    8810:	d1 90       	mov.l	8a54 <___udivdi3+0x2f8>,r1	! ffff
    8812:	36 16       	cmp/hi	r1,r6
    8814:	8b 62       	bf	88dc <___udivdi3+0x180>
    8816:	d1 90       	mov.l	8a58 <___udivdi3+0x2fc>,r1	! ffffff
    8818:	36 16       	cmp/hi	r1,r6
    881a:	8b 01       	bf	8820 <___udivdi3+0xc4>
    881c:	a1 0c       	bra	8a38 <___udivdi3+0x2dc>
    881e:	e5 18       	mov	#24,r5
    8820:	e5 10       	mov	#16,r5
    8822:	e9 10       	mov	#16,r9
    8824:	de 8d       	mov.l	8a5c <___udivdi3+0x300>,r14	! 85a0 <___lshrsi3>
    8826:	64 63       	mov	r6,r4
    8828:	4e 0b       	jsr	@r14
    882a:	2f 62       	mov.l	r6,@r15
    882c:	d1 8c       	mov.l	8a60 <___udivdi3+0x304>,r1	! a00c <___clz_tab>
    882e:	66 f2       	mov.l	@r15,r6
    8830:	01 1c       	mov.b	@(r0,r1),r1
    8832:	6c 1c       	extu.b	r1,r12
    8834:	3c 9c       	add	r9,r12
    8836:	69 cb       	neg	r12,r9
    8838:	79 20       	add	#32,r9
    883a:	29 98       	tst	r9,r9
    883c:	8b 70       	bf	8920 <___udivdi3+0x1c4>
    883e:	51 f1       	mov.l	@(4,r15),r1
    8840:	31 a2       	cmp/hs	r10,r1
    8842:	89 69       	bt	8918 <___udivdi3+0x1bc>
    8844:	38 66       	cmp/hi	r6,r8
    8846:	89 67       	bt	8918 <___udivdi3+0x1bc>
    8848:	e9 00       	mov	#0,r9
    884a:	e3 00       	mov	#0,r3
    884c:	60 33       	mov	r3,r0
    884e:	61 93       	mov	r9,r1
    8850:	7f 10       	add	#16,r15
    8852:	4f 26       	lds.l	@r15+,pr
    8854:	6e f6       	mov.l	@r15+,r14
    8856:	6d f6       	mov.l	@r15+,r13
    8858:	6c f6       	mov.l	@r15+,r12
    885a:	6b f6       	mov.l	@r15+,r11
    885c:	6a f6       	mov.l	@r15+,r10
    885e:	69 f6       	mov.l	@r15+,r9
    8860:	68 f6       	mov.l	@r15+,r8
    8862:	00 0b       	rts	
    8864:	00 09       	nop	
    8866:	00 09       	nop	
    8868:	27 78       	tst	r7,r7
    886a:	8b 04       	bf	8876 <___udivdi3+0x11a>
    886c:	d9 7f       	mov.l	8a6c <___udivdi3+0x310>,r9	! 870e <___udivsi3>
    886e:	e4 01       	mov	#1,r4
    8870:	49 0b       	jsr	@r9
    8872:	e5 00       	mov	#0,r5
    8874:	69 03       	mov	r0,r9
    8876:	d1 77       	mov.l	8a54 <___udivdi3+0x2f8>,r1	! ffff
    8878:	39 16       	cmp/hi	r1,r9
    887a:	8b 39       	bf	88f0 <___udivdi3+0x194>
    887c:	d1 76       	mov.l	8a58 <___udivdi3+0x2fc>,r1	! ffffff
    887e:	39 16       	cmp/hi	r1,r9
    8880:	8b 02       	bf	8888 <___udivdi3+0x12c>
    8882:	a0 dd       	bra	8a40 <___udivdi3+0x2e4>
    8884:	e5 18       	mov	#24,r5
    8886:	00 09       	nop	
    8888:	e5 10       	mov	#16,r5
    888a:	ea 10       	mov	#16,r10
    888c:	dc 73       	mov.l	8a5c <___udivdi3+0x300>,r12	! 85a0 <___lshrsi3>
    888e:	4c 0b       	jsr	@r12
    8890:	64 93       	mov	r9,r4
    8892:	d1 73       	mov.l	8a60 <___udivdi3+0x304>,r1	! a00c <___clz_tab>
    8894:	0e 1c       	mov.b	@(r0,r1),r14
    8896:	6e ec       	extu.b	r14,r14
    8898:	3e ac       	add	r10,r14
    889a:	6a eb       	neg	r14,r10
    889c:	7a 20       	add	#32,r10
    889e:	2a a8       	tst	r10,r10
    88a0:	89 02       	bt	88a8 <___udivdi3+0x14c>
    88a2:	a0 a5       	bra	89f0 <___udivdi3+0x294>
    88a4:	64 93       	mov	r9,r4
    88a6:	00 09       	nop	
    88a8:	d7 6f       	mov.l	8a68 <___udivdi3+0x30c>,r7	! 9890 <___udiv_qrnnd_16>
    88aa:	60 83       	mov	r8,r0
    88ac:	30 98       	sub	r9,r0
    88ae:	e3 01       	mov	#1,r3
    88b0:	65 93       	mov	r9,r5
    88b2:	64 b9       	swap.w	r11,r4
    88b4:	66 59       	swap.w	r5,r6
    88b6:	47 0b       	jsr	@r7
    88b8:	46 28       	shll16	r6
    88ba:	64 49       	swap.w	r4,r4
    88bc:	47 0b       	jsr	@r7
    88be:	69 19       	swap.w	r1,r9
    88c0:	29 1b       	or	r1,r9
    88c2:	60 33       	mov	r3,r0
    88c4:	61 93       	mov	r9,r1
    88c6:	7f 10       	add	#16,r15
    88c8:	4f 26       	lds.l	@r15+,pr
    88ca:	6e f6       	mov.l	@r15+,r14
    88cc:	6d f6       	mov.l	@r15+,r13
    88ce:	6c f6       	mov.l	@r15+,r12
    88d0:	6b f6       	mov.l	@r15+,r11
    88d2:	6a f6       	mov.l	@r15+,r10
    88d4:	69 f6       	mov.l	@r15+,r9
    88d6:	68 f6       	mov.l	@r15+,r8
    88d8:	00 0b       	rts	
    88da:	00 09       	nop	
    88dc:	91 b9       	mov.w	8a52 <___udivdi3+0x2f6>,r1	! ff
    88de:	36 16       	cmp/hi	r1,r6
    88e0:	8b 02       	bf	88e8 <___udivdi3+0x18c>
    88e2:	a0 a7       	bra	8a34 <___udivdi3+0x2d8>
    88e4:	e5 08       	mov	#8,r5
    88e6:	00 09       	nop	
    88e8:	e5 00       	mov	#0,r5
    88ea:	af 9b       	bra	8824 <___udivdi3+0xc8>
    88ec:	e9 00       	mov	#0,r9
    88ee:	00 09       	nop	
    88f0:	91 af       	mov.w	8a52 <___udivdi3+0x2f6>,r1	! ff
    88f2:	39 16       	cmp/hi	r1,r9
    88f4:	8b 02       	bf	88fc <___udivdi3+0x1a0>
    88f6:	a0 a7       	bra	8a48 <___udivdi3+0x2ec>
    88f8:	e5 08       	mov	#8,r5
    88fa:	00 09       	nop	
    88fc:	e5 00       	mov	#0,r5
    88fe:	af c5       	bra	888c <___udivdi3+0x130>
    8900:	ea 00       	mov	#0,r10
    8902:	00 09       	nop	
    8904:	91 a5       	mov.w	8a52 <___udivdi3+0x2f6>,r1	! ff
    8906:	37 16       	cmp/hi	r1,r7
    8908:	8b 02       	bf	8910 <___udivdi3+0x1b4>
    890a:	a0 97       	bra	8a3c <___udivdi3+0x2e0>
    890c:	e5 08       	mov	#8,r5
    890e:	00 09       	nop	
    8910:	e5 00       	mov	#0,r5
    8912:	af 43       	bra	879c <___udivdi3+0x40>
    8914:	ed 00       	mov	#0,r13
    8916:	00 09       	nop	
    8918:	e9 01       	mov	#1,r9
    891a:	af 97       	bra	884c <___udivdi3+0xf0>
    891c:	e3 00       	mov	#0,r3
    891e:	00 09       	nop	
    8920:	db 50       	mov.l	8a64 <___udivdi3+0x308>,r11	! 8514 <___ashlsi3>
    8922:	64 63       	mov	r6,r4
    8924:	4b 0b       	jsr	@r11
    8926:	65 93       	mov	r9,r5
    8928:	64 a3       	mov	r10,r4
    892a:	65 c3       	mov	r12,r5
    892c:	4e 0b       	jsr	@r14
    892e:	6d 03       	mov	r0,r13
    8930:	64 a3       	mov	r10,r4
    8932:	2d 0b       	or	r0,r13
    8934:	4b 0b       	jsr	@r11
    8936:	65 93       	mov	r9,r5
    8938:	64 83       	mov	r8,r4
    893a:	65 c3       	mov	r12,r5
    893c:	4e 0b       	jsr	@r14
    893e:	1f 02       	mov.l	r0,@(8,r15)
    8940:	64 83       	mov	r8,r4
    8942:	65 93       	mov	r9,r5
    8944:	4b 0b       	jsr	@r11
    8946:	1f 03       	mov.l	r0,@(12,r15)
    8948:	65 c3       	mov	r12,r5
    894a:	6a 03       	mov	r0,r10
    894c:	4e 0b       	jsr	@r14
    894e:	54 f1       	mov.l	@(4,r15),r4
    8950:	63 03       	mov	r0,r3
    8952:	23 ab       	or	r10,r3
    8954:	5a f3       	mov.l	@(12,r15),r10
    8956:	d7 44       	mov.l	8a68 <___udivdi3+0x30c>,r7	! 9890 <___udiv_qrnnd_16>
    8958:	60 a3       	mov	r10,r0
    895a:	de 3e       	mov.l	8a54 <___udivdi3+0x2f8>,r14	! ffff
    895c:	65 d3       	mov	r13,r5
    895e:	64 39       	swap.w	r3,r4
    8960:	66 59       	swap.w	r5,r6
    8962:	47 0b       	jsr	@r7
    8964:	46 28       	shll16	r6
    8966:	64 49       	swap.w	r4,r4
    8968:	47 0b       	jsr	@r7
    896a:	6d 19       	swap.w	r1,r13
    896c:	2d 1b       	or	r1,r13
    896e:	6a 03       	mov	r0,r10
    8970:	50 f2       	mov.l	@(8,r15),r0
    8972:	67 d3       	mov	r13,r7
    8974:	d6 3e       	mov.l	8a70 <___udivdi3+0x314>,r6	! 862c <___mulsi3>
    8976:	27 e9       	and	r14,r7
    8978:	6c 03       	mov	r0,r12
    897a:	2e 09       	and	r0,r14
    897c:	64 73       	mov	r7,r4
    897e:	65 e3       	mov	r14,r5
    8980:	46 0b       	jsr	@r6
    8982:	4c 29       	shlr16	r12
    8984:	68 d3       	mov	r13,r8
    8986:	1f 02       	mov.l	r0,@(8,r15)
    8988:	65 c3       	mov	r12,r5
    898a:	46 0b       	jsr	@r6
    898c:	48 29       	shlr16	r8
    898e:	67 03       	mov	r0,r7
    8990:	65 e3       	mov	r14,r5
    8992:	46 0b       	jsr	@r6
    8994:	64 83       	mov	r8,r4
    8996:	6e 03       	mov	r0,r14
    8998:	46 0b       	jsr	@r6
    899a:	65 c3       	mov	r12,r5
    899c:	51 f2       	mov.l	@(8,r15),r1
    899e:	37 ec       	add	r14,r7
    89a0:	41 29       	shlr16	r1
    89a2:	37 1c       	add	r1,r7
    89a4:	3e 76       	cmp/hi	r7,r14
    89a6:	8b 01       	bf	89ac <___udivdi3+0x250>
    89a8:	d1 32       	mov.l	8a74 <___udivdi3+0x318>,r1	! 10000
    89aa:	30 1c       	add	r1,r0
    89ac:	61 73       	mov	r7,r1
    89ae:	41 29       	shlr16	r1
    89b0:	31 0c       	add	r0,r1
    89b2:	e0 0a       	mov	#10,r0
    89b4:	03 fd       	mov.w	@(r0,r15),r3
    89b6:	6c 73       	mov	r7,r12
    89b8:	4c 28       	shll16	r12
    89ba:	62 3d       	extu.w	r3,r2
    89bc:	3a 12       	cmp/hs	r1,r10
    89be:	3c 2c       	add	r2,r12
    89c0:	8b 06       	bf	89d0 <___udivdi3+0x274>
    89c2:	3a 10       	cmp/eq	r1,r10
    89c4:	8b 42       	bf	8a4c <___udivdi3+0x2f0>
    89c6:	54 f1       	mov.l	@(4,r15),r4
    89c8:	4b 0b       	jsr	@r11
    89ca:	65 93       	mov	r9,r5
    89cc:	3c 06       	cmp/hi	r0,r12
    89ce:	8b 3d       	bf	8a4c <___udivdi3+0x2f0>
    89d0:	69 d3       	mov	r13,r9
    89d2:	79 ff       	add	#-1,r9
    89d4:	e3 00       	mov	#0,r3
    89d6:	60 33       	mov	r3,r0
    89d8:	61 93       	mov	r9,r1
    89da:	7f 10       	add	#16,r15
    89dc:	4f 26       	lds.l	@r15+,pr
    89de:	6e f6       	mov.l	@r15+,r14
    89e0:	6d f6       	mov.l	@r15+,r13
    89e2:	6c f6       	mov.l	@r15+,r12
    89e4:	6b f6       	mov.l	@r15+,r11
    89e6:	6a f6       	mov.l	@r15+,r10
    89e8:	69 f6       	mov.l	@r15+,r9
    89ea:	68 f6       	mov.l	@r15+,r8
    89ec:	00 0b       	rts	
    89ee:	00 09       	nop	
    89f0:	db 1c       	mov.l	8a64 <___udivdi3+0x308>,r11	! 8514 <___ashlsi3>
    89f2:	4b 0b       	jsr	@r11
    89f4:	65 a3       	mov	r10,r5
    89f6:	64 83       	mov	r8,r4
    89f8:	69 03       	mov	r0,r9
    89fa:	4c 0b       	jsr	@r12
    89fc:	65 e3       	mov	r14,r5
    89fe:	64 83       	mov	r8,r4
    8a00:	6d 03       	mov	r0,r13
    8a02:	4b 0b       	jsr	@r11
    8a04:	65 a3       	mov	r10,r5
    8a06:	68 03       	mov	r0,r8
    8a08:	54 f1       	mov.l	@(4,r15),r4
    8a0a:	4c 0b       	jsr	@r12
    8a0c:	65 e3       	mov	r14,r5
    8a0e:	28 0b       	or	r0,r8
    8a10:	54 f1       	mov.l	@(4,r15),r4
    8a12:	4b 0b       	jsr	@r11
    8a14:	65 a3       	mov	r10,r5
    8a16:	6b 03       	mov	r0,r11
    8a18:	d7 13       	mov.l	8a68 <___udivdi3+0x30c>,r7	! 9890 <___udiv_qrnnd_16>
    8a1a:	60 d3       	mov	r13,r0
    8a1c:	65 93       	mov	r9,r5
    8a1e:	64 89       	swap.w	r8,r4
    8a20:	66 59       	swap.w	r5,r6
    8a22:	47 0b       	jsr	@r7
    8a24:	46 28       	shll16	r6
    8a26:	64 49       	swap.w	r4,r4
    8a28:	47 0b       	jsr	@r7
    8a2a:	63 19       	swap.w	r1,r3
    8a2c:	23 1b       	or	r1,r3
    8a2e:	af 3f       	bra	88b0 <___udivdi3+0x154>
    8a30:	00 09       	nop	
    8a32:	00 09       	nop	
    8a34:	ae f6       	bra	8824 <___udivdi3+0xc8>
    8a36:	e9 08       	mov	#8,r9
    8a38:	ae f4       	bra	8824 <___udivdi3+0xc8>
    8a3a:	e9 18       	mov	#24,r9
    8a3c:	ae ae       	bra	879c <___udivdi3+0x40>
    8a3e:	ed 08       	mov	#8,r13
    8a40:	af 24       	bra	888c <___udivdi3+0x130>
    8a42:	ea 18       	mov	#24,r10
    8a44:	ae aa       	bra	879c <___udivdi3+0x40>
    8a46:	ed 18       	mov	#24,r13
    8a48:	af 20       	bra	888c <___udivdi3+0x130>
    8a4a:	ea 08       	mov	#8,r10
    8a4c:	69 d3       	mov	r13,r9
    8a4e:	ae fd       	bra	884c <___udivdi3+0xf0>
    8a50:	e3 00       	mov	#0,r3
    8a52:	00 ff       	.word 0x00ff
    8a54:	00 00       	.word 0x0000
    8a56:	ff ff       	.word 0xffff
    8a58:	00 ff       	.word 0x00ff
    8a5a:	ff ff       	.word 0xffff
    8a5c:	00 00       	.word 0x0000
    8a5e:	85 a0       	mov.w	@(0,r10),r0
    8a60:	00 00       	.word 0x0000
    8a62:	a0 0c       	bra	8a7e <___umoddi3+0x6>
    8a64:	00 00       	.word 0x0000
    8a66:	85 14       	mov.w	@(8,r1),r0
    8a68:	00 00       	.word 0x0000
    8a6a:	98 90       	mov.w	8b8e <___umoddi3+0x116>,r8	! 8b04
    8a6c:	00 00       	.word 0x0000
    8a6e:	87 0e       	.word 0x870e
    8a70:	00 00       	.word 0x0000
    8a72:	86 2c       	.word 0x862c
    8a74:	00 01       	.word 0x0001
	...

00008a78 <___umoddi3>:
    8a78:	2f 86       	mov.l	r8,@-r15
    8a7a:	2f 96       	mov.l	r9,@-r15
    8a7c:	2f a6       	mov.l	r10,@-r15
    8a7e:	2f b6       	mov.l	r11,@-r15
    8a80:	2f c6       	mov.l	r12,@-r15
    8a82:	2f d6       	mov.l	r13,@-r15
    8a84:	2f e6       	mov.l	r14,@-r15
    8a86:	4f 22       	sts.l	pr,@-r15
    8a88:	7f e4       	add	#-28,r15
    8a8a:	26 68       	tst	r6,r6
    8a8c:	6e 43       	mov	r4,r14
    8a8e:	6d 53       	mov	r5,r13
    8a90:	69 73       	mov	r7,r9
    8a92:	61 73       	mov	r7,r1
    8a94:	6b 53       	mov	r5,r11
    8a96:	6c 43       	mov	r4,r12
    8a98:	8b 3e       	bf	8b18 <___umoddi3+0xa0>
    8a9a:	37 46       	cmp/hi	r4,r7
    8a9c:	8b 76       	bf	8b8c <___umoddi3+0x114>
    8a9e:	d2 c1       	mov.l	8da4 <___umoddi3+0x32c>,r2	! ffff
    8aa0:	37 26       	cmp/hi	r2,r7
    8aa2:	89 01       	bt	8aa8 <___umoddi3+0x30>
    8aa4:	a1 3c       	bra	8d20 <___umoddi3+0x2a8>
    8aa6:	00 09       	nop	
    8aa8:	d2 bf       	mov.l	8da8 <___umoddi3+0x330>,r2	! ffffff
    8aaa:	37 26       	cmp/hi	r2,r7
    8aac:	8b 02       	bf	8ab4 <___umoddi3+0x3c>
    8aae:	a1 69       	bra	8d84 <___umoddi3+0x30c>
    8ab0:	e5 18       	mov	#24,r5
    8ab2:	00 09       	nop	
    8ab4:	e5 10       	mov	#16,r5
    8ab6:	ea 10       	mov	#16,r10
    8ab8:	d8 bc       	mov.l	8dac <___umoddi3+0x334>,r8	! 85a0 <___lshrsi3>
    8aba:	64 13       	mov	r1,r4
    8abc:	48 0b       	jsr	@r8
    8abe:	2f 12       	mov.l	r1,@r15
    8ac0:	d2 bb       	mov.l	8db0 <___umoddi3+0x338>,r2	! a00c <___clz_tab>
    8ac2:	61 f2       	mov.l	@r15,r1
    8ac4:	02 2c       	mov.b	@(r0,r2),r2
    8ac6:	62 2c       	extu.b	r2,r2
    8ac8:	32 ac       	add	r10,r2
    8aca:	63 2b       	neg	r2,r3
    8acc:	73 20       	add	#32,r3
    8ace:	23 38       	tst	r3,r3
    8ad0:	ea 00       	mov	#0,r10
    8ad2:	89 13       	bt	8afc <___umoddi3+0x84>
    8ad4:	db b7       	mov.l	8db4 <___umoddi3+0x33c>,r11	! 8514 <___ashlsi3>
    8ad6:	6a 33       	mov	r3,r10
    8ad8:	64 13       	mov	r1,r4
    8ada:	65 33       	mov	r3,r5
    8adc:	4b 0b       	jsr	@r11
    8ade:	1f 21       	mov.l	r2,@(4,r15)
    8ae0:	64 e3       	mov	r14,r4
    8ae2:	65 a3       	mov	r10,r5
    8ae4:	4b 0b       	jsr	@r11
    8ae6:	69 03       	mov	r0,r9
    8ae8:	52 f1       	mov.l	@(4,r15),r2
    8aea:	6c 03       	mov	r0,r12
    8aec:	64 d3       	mov	r13,r4
    8aee:	48 0b       	jsr	@r8
    8af0:	65 23       	mov	r2,r5
    8af2:	2c 0b       	or	r0,r12
    8af4:	64 d3       	mov	r13,r4
    8af6:	4b 0b       	jsr	@r11
    8af8:	65 a3       	mov	r10,r5
    8afa:	6b 03       	mov	r0,r11
    8afc:	60 c3       	mov	r12,r0
    8afe:	d3 ae       	mov.l	8db8 <___umoddi3+0x340>,r3	! 9890 <___udiv_qrnnd_16>
    8b00:	65 93       	mov	r9,r5
    8b02:	64 b9       	swap.w	r11,r4
    8b04:	66 59       	swap.w	r5,r6
    8b06:	43 0b       	jsr	@r3
    8b08:	46 28       	shll16	r6
    8b0a:	64 49       	swap.w	r4,r4
    8b0c:	43 0b       	jsr	@r3
    8b0e:	69 19       	swap.w	r1,r9
    8b10:	29 1b       	or	r1,r9
    8b12:	a0 6a       	bra	8bea <___umoddi3+0x172>
    8b14:	64 03       	mov	r0,r4
    8b16:	00 09       	nop	
    8b18:	36 46       	cmp/hi	r4,r6
    8b1a:	8b 01       	bf	8b20 <___umoddi3+0xa8>
    8b1c:	a0 e7       	bra	8cee <___umoddi3+0x276>
    8b1e:	61 d3       	mov	r13,r1
    8b20:	d2 a0       	mov.l	8da4 <___umoddi3+0x32c>,r2	! ffff
    8b22:	36 26       	cmp/hi	r2,r6
    8b24:	89 02       	bt	8b2c <___umoddi3+0xb4>
    8b26:	a0 ef       	bra	8d08 <___umoddi3+0x290>
    8b28:	00 09       	nop	
    8b2a:	00 09       	nop	
    8b2c:	d2 9e       	mov.l	8da8 <___umoddi3+0x330>,r2	! ffffff
    8b2e:	36 26       	cmp/hi	r2,r6
    8b30:	8b 02       	bf	8b38 <___umoddi3+0xc0>
    8b32:	a1 1d       	bra	8d70 <___umoddi3+0x2f8>
    8b34:	e5 18       	mov	#24,r5
    8b36:	00 09       	nop	
    8b38:	e5 10       	mov	#16,r5
    8b3a:	e9 10       	mov	#16,r9
    8b3c:	d8 9b       	mov.l	8dac <___umoddi3+0x334>,r8	! 85a0 <___lshrsi3>
    8b3e:	64 63       	mov	r6,r4
    8b40:	2f 12       	mov.l	r1,@r15
    8b42:	48 0b       	jsr	@r8
    8b44:	1f 61       	mov.l	r6,@(4,r15)
    8b46:	d2 9a       	mov.l	8db0 <___umoddi3+0x338>,r2	! a00c <___clz_tab>
    8b48:	61 f2       	mov.l	@r15,r1
    8b4a:	0a 2c       	mov.b	@(r0,r2),r10
    8b4c:	6a ac       	extu.b	r10,r10
    8b4e:	3a 9c       	add	r9,r10
    8b50:	69 ab       	neg	r10,r9
    8b52:	79 20       	add	#32,r9
    8b54:	29 98       	tst	r9,r9
    8b56:	56 f1       	mov.l	@(4,r15),r6
    8b58:	8b 58       	bf	8c0c <___umoddi3+0x194>
    8b5a:	3d 12       	cmp/hs	r1,r13
    8b5c:	89 02       	bt	8b64 <___umoddi3+0xec>
    8b5e:	a1 19       	bra	8d94 <___umoddi3+0x31c>
    8b60:	3e 66       	cmp/hi	r6,r14
    8b62:	00 09       	nop	
    8b64:	6c e3       	mov	r14,r12
    8b66:	6b d3       	mov	r13,r11
    8b68:	00 08       	clrt	
    8b6a:	3b 1a       	subc	r1,r11
    8b6c:	3c 6a       	subc	r6,r12
    8b6e:	6e c3       	mov	r12,r14
    8b70:	61 b3       	mov	r11,r1
    8b72:	60 e3       	mov	r14,r0
    8b74:	7f 1c       	add	#28,r15
    8b76:	4f 26       	lds.l	@r15+,pr
    8b78:	6e f6       	mov.l	@r15+,r14
    8b7a:	6d f6       	mov.l	@r15+,r13
    8b7c:	6c f6       	mov.l	@r15+,r12
    8b7e:	6b f6       	mov.l	@r15+,r11
    8b80:	6a f6       	mov.l	@r15+,r10
    8b82:	69 f6       	mov.l	@r15+,r9
    8b84:	68 f6       	mov.l	@r15+,r8
    8b86:	00 0b       	rts	
    8b88:	00 09       	nop	
    8b8a:	00 09       	nop	
    8b8c:	27 78       	tst	r7,r7
    8b8e:	8b 04       	bf	8b9a <___umoddi3+0x122>
    8b90:	d9 8a       	mov.l	8dbc <___umoddi3+0x344>,r9	! 870e <___udivsi3>
    8b92:	e4 01       	mov	#1,r4
    8b94:	49 0b       	jsr	@r9
    8b96:	e5 00       	mov	#0,r5
    8b98:	69 03       	mov	r0,r9
    8b9a:	d1 82       	mov.l	8da4 <___umoddi3+0x32c>,r1	! ffff
    8b9c:	39 16       	cmp/hi	r1,r9
    8b9e:	89 01       	bt	8ba4 <___umoddi3+0x12c>
    8ba0:	a0 b8       	bra	8d14 <___umoddi3+0x29c>
    8ba2:	00 09       	nop	
    8ba4:	d1 80       	mov.l	8da8 <___umoddi3+0x330>,r1	! ffffff
    8ba6:	39 16       	cmp/hi	r1,r9
    8ba8:	8b 02       	bf	8bb0 <___umoddi3+0x138>
    8baa:	a0 f1       	bra	8d90 <___umoddi3+0x318>
    8bac:	e5 18       	mov	#24,r5
    8bae:	00 09       	nop	
    8bb0:	e5 10       	mov	#16,r5
    8bb2:	ea 10       	mov	#16,r10
    8bb4:	d8 7d       	mov.l	8dac <___umoddi3+0x334>,r8	! 85a0 <___lshrsi3>
    8bb6:	48 0b       	jsr	@r8
    8bb8:	64 93       	mov	r9,r4
    8bba:	d1 7d       	mov.l	8db0 <___umoddi3+0x338>,r1	! a00c <___clz_tab>
    8bbc:	01 1c       	mov.b	@(r0,r1),r1
    8bbe:	6c 1c       	extu.b	r1,r12
    8bc0:	3c ac       	add	r10,r12
    8bc2:	6a cb       	neg	r12,r10
    8bc4:	7a 20       	add	#32,r10
    8bc6:	2a a8       	tst	r10,r10
    8bc8:	89 02       	bt	8bd0 <___umoddi3+0x158>
    8bca:	a0 af       	bra	8d2c <___umoddi3+0x2b4>
    8bcc:	64 93       	mov	r9,r4
    8bce:	00 09       	nop	
    8bd0:	d3 79       	mov.l	8db8 <___umoddi3+0x340>,r3	! 9890 <___udiv_qrnnd_16>
    8bd2:	60 e3       	mov	r14,r0
    8bd4:	30 98       	sub	r9,r0
    8bd6:	65 93       	mov	r9,r5
    8bd8:	64 b9       	swap.w	r11,r4
    8bda:	66 59       	swap.w	r5,r6
    8bdc:	43 0b       	jsr	@r3
    8bde:	46 28       	shll16	r6
    8be0:	64 49       	swap.w	r4,r4
    8be2:	43 0b       	jsr	@r3
    8be4:	69 19       	swap.w	r1,r9
    8be6:	29 1b       	or	r1,r9
    8be8:	64 03       	mov	r0,r4
    8bea:	48 0b       	jsr	@r8
    8bec:	65 a3       	mov	r10,r5
    8bee:	ee 00       	mov	#0,r14
    8bf0:	61 03       	mov	r0,r1
    8bf2:	60 e3       	mov	r14,r0
    8bf4:	7f 1c       	add	#28,r15
    8bf6:	4f 26       	lds.l	@r15+,pr
    8bf8:	6e f6       	mov.l	@r15+,r14
    8bfa:	6d f6       	mov.l	@r15+,r13
    8bfc:	6c f6       	mov.l	@r15+,r12
    8bfe:	6b f6       	mov.l	@r15+,r11
    8c00:	6a f6       	mov.l	@r15+,r10
    8c02:	69 f6       	mov.l	@r15+,r9
    8c04:	68 f6       	mov.l	@r15+,r8
    8c06:	00 0b       	rts	
    8c08:	00 09       	nop	
    8c0a:	00 09       	nop	
    8c0c:	dc 69       	mov.l	8db4 <___umoddi3+0x33c>,r12	! 8514 <___ashlsi3>
    8c0e:	64 63       	mov	r6,r4
    8c10:	65 93       	mov	r9,r5
    8c12:	4c 0b       	jsr	@r12
    8c14:	2f 12       	mov.l	r1,@r15
    8c16:	61 f2       	mov.l	@r15,r1
    8c18:	65 a3       	mov	r10,r5
    8c1a:	1f 02       	mov.l	r0,@(8,r15)
    8c1c:	48 0b       	jsr	@r8
    8c1e:	64 13       	mov	r1,r4
    8c20:	52 f2       	mov.l	@(8,r15),r2
    8c22:	65 93       	mov	r9,r5
    8c24:	61 f2       	mov.l	@r15,r1
    8c26:	22 0b       	or	r0,r2
    8c28:	1f 22       	mov.l	r2,@(8,r15)
    8c2a:	4c 0b       	jsr	@r12
    8c2c:	64 13       	mov	r1,r4
    8c2e:	64 e3       	mov	r14,r4
    8c30:	65 a3       	mov	r10,r5
    8c32:	48 0b       	jsr	@r8
    8c34:	1f 03       	mov.l	r0,@(12,r15)
    8c36:	6b 03       	mov	r0,r11
    8c38:	64 e3       	mov	r14,r4
    8c3a:	4c 0b       	jsr	@r12
    8c3c:	65 93       	mov	r9,r5
    8c3e:	64 d3       	mov	r13,r4
    8c40:	6e 03       	mov	r0,r14
    8c42:	48 0b       	jsr	@r8
    8c44:	65 a3       	mov	r10,r5
    8c46:	64 d3       	mov	r13,r4
    8c48:	65 93       	mov	r9,r5
    8c4a:	4c 0b       	jsr	@r12
    8c4c:	2e 0b       	or	r0,r14
    8c4e:	d3 5a       	mov.l	8db8 <___umoddi3+0x340>,r3	! 9890 <___udiv_qrnnd_16>
    8c50:	dd 54       	mov.l	8da4 <___umoddi3+0x32c>,r13	! ffff
    8c52:	1f 06       	mov.l	r0,@(24,r15)
    8c54:	60 b3       	mov	r11,r0
    8c56:	55 f2       	mov.l	@(8,r15),r5
    8c58:	64 e9       	swap.w	r14,r4
    8c5a:	66 59       	swap.w	r5,r6
    8c5c:	43 0b       	jsr	@r3
    8c5e:	46 28       	shll16	r6
    8c60:	64 49       	swap.w	r4,r4
    8c62:	43 0b       	jsr	@r3
    8c64:	6e 19       	swap.w	r1,r14
    8c66:	2e 1b       	or	r1,r14
    8c68:	6b 03       	mov	r0,r11
    8c6a:	50 f3       	mov.l	@(12,r15),r0
    8c6c:	67 e3       	mov	r14,r7
    8c6e:	d6 54       	mov.l	8dc0 <___umoddi3+0x348>,r6	! 862c <___mulsi3>
    8c70:	27 d9       	and	r13,r7
    8c72:	2d 09       	and	r0,r13
    8c74:	40 29       	shlr16	r0
    8c76:	1f 04       	mov.l	r0,@(16,r15)
    8c78:	65 d3       	mov	r13,r5
    8c7a:	46 0b       	jsr	@r6
    8c7c:	64 73       	mov	r7,r4
    8c7e:	55 f4       	mov.l	@(16,r15),r5
    8c80:	4e 29       	shlr16	r14
    8c82:	46 0b       	jsr	@r6
    8c84:	1f 05       	mov.l	r0,@(20,r15)
    8c86:	67 03       	mov	r0,r7
    8c88:	65 d3       	mov	r13,r5
    8c8a:	46 0b       	jsr	@r6
    8c8c:	64 e3       	mov	r14,r4
    8c8e:	6d 03       	mov	r0,r13
    8c90:	46 0b       	jsr	@r6
    8c92:	55 f4       	mov.l	@(16,r15),r5
    8c94:	51 f5       	mov.l	@(20,r15),r1
    8c96:	37 dc       	add	r13,r7
    8c98:	41 29       	shlr16	r1
    8c9a:	37 1c       	add	r1,r7
    8c9c:	3d 76       	cmp/hi	r7,r13
    8c9e:	8b 01       	bf	8ca4 <___umoddi3+0x22c>
    8ca0:	d1 48       	mov.l	8dc4 <___umoddi3+0x34c>,r1	! 10000
    8ca2:	30 1c       	add	r1,r0
    8ca4:	61 73       	mov	r7,r1
    8ca6:	41 29       	shlr16	r1
    8ca8:	31 0c       	add	r0,r1
    8caa:	e0 16       	mov	#22,r0
    8cac:	03 fd       	mov.w	@(r0,r15),r3
    8cae:	47 28       	shll16	r7
    8cb0:	62 3d       	extu.w	r3,r2
    8cb2:	3b 12       	cmp/hs	r1,r11
    8cb4:	37 2c       	add	r2,r7
    8cb6:	8b 04       	bf	8cc2 <___umoddi3+0x24a>
    8cb8:	3b 10       	cmp/eq	r1,r11
    8cba:	8b 07       	bf	8ccc <___umoddi3+0x254>
    8cbc:	50 f6       	mov.l	@(24,r15),r0
    8cbe:	37 06       	cmp/hi	r0,r7
    8cc0:	8b 04       	bf	8ccc <___umoddi3+0x254>
    8cc2:	50 f2       	mov.l	@(8,r15),r0
    8cc4:	52 f3       	mov.l	@(12,r15),r2
    8cc6:	00 08       	clrt	
    8cc8:	37 2a       	subc	r2,r7
    8cca:	31 0a       	subc	r0,r1
    8ccc:	65 93       	mov	r9,r5
    8cce:	54 f6       	mov.l	@(24,r15),r4
    8cd0:	00 08       	clrt	
    8cd2:	34 7a       	subc	r7,r4
    8cd4:	3b 1a       	subc	r1,r11
    8cd6:	48 0b       	jsr	@r8
    8cd8:	00 09       	nop	
    8cda:	6d 03       	mov	r0,r13
    8cdc:	64 b3       	mov	r11,r4
    8cde:	4c 0b       	jsr	@r12
    8ce0:	65 a3       	mov	r10,r5
    8ce2:	2d 0b       	or	r0,r13
    8ce4:	64 b3       	mov	r11,r4
    8ce6:	48 0b       	jsr	@r8
    8ce8:	65 93       	mov	r9,r5
    8cea:	6e 03       	mov	r0,r14
    8cec:	61 d3       	mov	r13,r1
    8cee:	60 e3       	mov	r14,r0
    8cf0:	7f 1c       	add	#28,r15
    8cf2:	4f 26       	lds.l	@r15+,pr
    8cf4:	6e f6       	mov.l	@r15+,r14
    8cf6:	6d f6       	mov.l	@r15+,r13
    8cf8:	6c f6       	mov.l	@r15+,r12
    8cfa:	6b f6       	mov.l	@r15+,r11
    8cfc:	6a f6       	mov.l	@r15+,r10
    8cfe:	69 f6       	mov.l	@r15+,r9
    8d00:	68 f6       	mov.l	@r15+,r8
    8d02:	00 0b       	rts	
    8d04:	00 09       	nop	
    8d06:	00 09       	nop	
    8d08:	92 4b       	mov.w	8da2 <___umoddi3+0x32a>,r2	! ff
    8d0a:	36 26       	cmp/hi	r2,r6
    8d0c:	89 32       	bt	8d74 <___umoddi3+0x2fc>
    8d0e:	e5 00       	mov	#0,r5
    8d10:	af 14       	bra	8b3c <___umoddi3+0xc4>
    8d12:	e9 00       	mov	#0,r9
    8d14:	91 45       	mov.w	8da2 <___umoddi3+0x32a>,r1	! ff
    8d16:	39 16       	cmp/hi	r1,r9
    8d18:	89 30       	bt	8d7c <___umoddi3+0x304>
    8d1a:	e5 00       	mov	#0,r5
    8d1c:	af 4a       	bra	8bb4 <___umoddi3+0x13c>
    8d1e:	ea 00       	mov	#0,r10
    8d20:	92 3f       	mov.w	8da2 <___umoddi3+0x32a>,r2	! ff
    8d22:	37 26       	cmp/hi	r2,r7
    8d24:	89 30       	bt	8d88 <___umoddi3+0x310>
    8d26:	e5 00       	mov	#0,r5
    8d28:	ae c6       	bra	8ab8 <___umoddi3+0x40>
    8d2a:	ea 00       	mov	#0,r10
    8d2c:	db 21       	mov.l	8db4 <___umoddi3+0x33c>,r11	! 8514 <___ashlsi3>
    8d2e:	4b 0b       	jsr	@r11
    8d30:	65 a3       	mov	r10,r5
    8d32:	64 e3       	mov	r14,r4
    8d34:	69 03       	mov	r0,r9
    8d36:	48 0b       	jsr	@r8
    8d38:	65 c3       	mov	r12,r5
    8d3a:	64 e3       	mov	r14,r4
    8d3c:	65 a3       	mov	r10,r5
    8d3e:	4b 0b       	jsr	@r11
    8d40:	1f 02       	mov.l	r0,@(8,r15)
    8d42:	6e 03       	mov	r0,r14
    8d44:	64 d3       	mov	r13,r4
    8d46:	48 0b       	jsr	@r8
    8d48:	65 c3       	mov	r12,r5
    8d4a:	2e 0b       	or	r0,r14
    8d4c:	64 d3       	mov	r13,r4
    8d4e:	4b 0b       	jsr	@r11
    8d50:	65 a3       	mov	r10,r5
    8d52:	6b 03       	mov	r0,r11
    8d54:	d3 18       	mov.l	8db8 <___umoddi3+0x340>,r3	! 9890 <___udiv_qrnnd_16>
    8d56:	50 f2       	mov.l	@(8,r15),r0
    8d58:	65 93       	mov	r9,r5
    8d5a:	64 e9       	swap.w	r14,r4
    8d5c:	66 59       	swap.w	r5,r6
    8d5e:	43 0b       	jsr	@r3
    8d60:	46 28       	shll16	r6
    8d62:	64 49       	swap.w	r4,r4
    8d64:	43 0b       	jsr	@r3
    8d66:	6e 19       	swap.w	r1,r14
    8d68:	2e 1b       	or	r1,r14
    8d6a:	af 34       	bra	8bd6 <___umoddi3+0x15e>
    8d6c:	00 09       	nop	
    8d6e:	00 09       	nop	
    8d70:	ae e4       	bra	8b3c <___umoddi3+0xc4>
    8d72:	e9 18       	mov	#24,r9
    8d74:	e5 08       	mov	#8,r5
    8d76:	ae e1       	bra	8b3c <___umoddi3+0xc4>
    8d78:	e9 08       	mov	#8,r9
    8d7a:	00 09       	nop	
    8d7c:	e5 08       	mov	#8,r5
    8d7e:	af 19       	bra	8bb4 <___umoddi3+0x13c>
    8d80:	ea 08       	mov	#8,r10
    8d82:	00 09       	nop	
    8d84:	ae 98       	bra	8ab8 <___umoddi3+0x40>
    8d86:	ea 18       	mov	#24,r10
    8d88:	e5 08       	mov	#8,r5
    8d8a:	ae 95       	bra	8ab8 <___umoddi3+0x40>
    8d8c:	ea 08       	mov	#8,r10
    8d8e:	00 09       	nop	
    8d90:	af 10       	bra	8bb4 <___umoddi3+0x13c>
    8d92:	ea 18       	mov	#24,r10
    8d94:	8b 02       	bf	8d9c <___umoddi3+0x324>
    8d96:	ae e6       	bra	8b66 <___umoddi3+0xee>
    8d98:	6c e3       	mov	r14,r12
    8d9a:	00 09       	nop	
    8d9c:	6e c3       	mov	r12,r14
    8d9e:	ae e8       	bra	8b72 <___umoddi3+0xfa>
    8da0:	61 b3       	mov	r11,r1
    8da2:	00 ff       	.word 0x00ff
    8da4:	00 00       	.word 0x0000
    8da6:	ff ff       	.word 0xffff
    8da8:	00 ff       	.word 0x00ff
    8daa:	ff ff       	.word 0xffff
    8dac:	00 00       	.word 0x0000
    8dae:	85 a0       	mov.w	@(0,r10),r0
    8db0:	00 00       	.word 0x0000
    8db2:	a0 0c       	bra	8dce <__fpadd_parts+0x6>
    8db4:	00 00       	.word 0x0000
    8db6:	85 14       	mov.w	@(8,r1),r0
    8db8:	00 00       	.word 0x0000
    8dba:	98 90       	mov.w	8ede <__fpadd_parts+0x116>,r8	! e4ff
    8dbc:	00 00       	.word 0x0000
    8dbe:	87 0e       	.word 0x870e
    8dc0:	00 00       	.word 0x0000
    8dc2:	86 2c       	.word 0x862c
    8dc4:	00 01       	.word 0x0001
	...

00008dc8 <__fpadd_parts>:
    8dc8:	2f 86       	mov.l	r8,@-r15
    8dca:	e2 01       	mov	#1,r2
    8dcc:	2f 96       	mov.l	r9,@-r15
    8dce:	2f a6       	mov.l	r10,@-r15
    8dd0:	6a 63       	mov	r6,r10
    8dd2:	2f b6       	mov.l	r11,@-r15
    8dd4:	6b 43       	mov	r4,r11
    8dd6:	2f c6       	mov.l	r12,@-r15
    8dd8:	6c 53       	mov	r5,r12
    8dda:	2f d6       	mov.l	r13,@-r15
    8ddc:	2f e6       	mov.l	r14,@-r15
    8dde:	4f 22       	sts.l	pr,@-r15
    8de0:	63 42       	mov.l	@r4,r3
    8de2:	7f e8       	add	#-24,r15
    8de4:	33 26       	cmp/hi	r2,r3
    8de6:	89 01       	bt	8dec <__fpadd_parts+0x24>
    8de8:	a0 a8       	bra	8f3c <__fpadd_parts+0x174>
    8dea:	60 b3       	mov	r11,r0
    8dec:	61 52       	mov.l	@r5,r1
    8dee:	31 26       	cmp/hi	r2,r1
    8df0:	8b 10       	bf	8e14 <__fpadd_parts+0x4c>
    8df2:	60 33       	mov	r3,r0
    8df4:	88 04       	cmp/eq	#4,r0
    8df6:	60 13       	mov	r1,r0
    8df8:	8b 02       	bf	8e00 <__fpadd_parts+0x38>
    8dfa:	a1 35       	bra	9068 <__fpadd_parts+0x2a0>
    8dfc:	88 04       	cmp/eq	#4,r0
    8dfe:	00 09       	nop	
    8e00:	88 04       	cmp/eq	#4,r0
    8e02:	89 07       	bt	8e14 <__fpadd_parts+0x4c>
    8e04:	88 02       	cmp/eq	#2,r0
    8e06:	60 33       	mov	r3,r0
    8e08:	8b 02       	bf	8e10 <__fpadd_parts+0x48>
    8e0a:	a0 cb       	bra	8fa4 <__fpadd_parts+0x1dc>
    8e0c:	88 02       	cmp/eq	#2,r0
    8e0e:	00 09       	nop	
    8e10:	88 02       	cmp/eq	#2,r0
    8e12:	8b 01       	bf	8e18 <__fpadd_parts+0x50>
    8e14:	a0 fa       	bra	900c <__fpadd_parts+0x244>
    8e16:	6b c3       	mov	r12,r11
    8e18:	51 43       	mov.l	@(12,r4),r1
    8e1a:	5d 42       	mov.l	@(8,r4),r13
    8e1c:	53 52       	mov.l	@(8,r5),r3
    8e1e:	52 44       	mov.l	@(16,r4),r2
    8e20:	56 53       	mov.l	@(12,r5),r6
    8e22:	57 54       	mov.l	@(16,r5),r7
    8e24:	1f 13       	mov.l	r1,@(12,r15)
    8e26:	61 d3       	mov	r13,r1
    8e28:	31 38       	sub	r3,r1
    8e2a:	1f 24       	mov.l	r2,@(16,r15)
    8e2c:	41 11       	cmp/pz	r1
    8e2e:	1f 61       	mov.l	r6,@(4,r15)
    8e30:	6e 13       	mov	r1,r14
    8e32:	1f 72       	mov.l	r7,@(8,r15)
    8e34:	89 02       	bt	8e3c <__fpadd_parts+0x74>
    8e36:	a0 e3       	bra	9000 <__fpadd_parts+0x238>
    8e38:	6e 1b       	neg	r1,r14
    8e3a:	00 09       	nop	
    8e3c:	e7 3f       	mov	#63,r7
    8e3e:	3e 77       	cmp/gt	r7,r14
    8e40:	8b 02       	bf	8e48 <__fpadd_parts+0x80>
    8e42:	a0 88       	bra	8f56 <__fpadd_parts+0x18e>
    8e44:	3d 37       	cmp/gt	r3,r13
    8e46:	00 09       	nop	
    8e48:	41 15       	cmp/pl	r1
    8e4a:	89 01       	bt	8e50 <__fpadd_parts+0x88>
    8e4c:	a0 ea       	bra	9024 <__fpadd_parts+0x25c>
    8e4e:	21 18       	tst	r1,r1
    8e50:	d0 8f       	mov.l	9090 <__fpadd_parts+0x2c8>,r0	! 9988 <___lshrdi3>
    8e52:	66 e3       	mov	r14,r6
    8e54:	54 f1       	mov.l	@(4,r15),r4
    8e56:	40 0b       	jsr	@r0
    8e58:	55 f2       	mov.l	@(8,r15),r5
    8e5a:	1f 05       	mov.l	r0,@(20,r15)
    8e5c:	66 e3       	mov	r14,r6
    8e5e:	d0 8d       	mov.l	9094 <__fpadd_parts+0x2cc>,r0	! 99f4 <___ashldi3>
    8e60:	e4 00       	mov	#0,r4
    8e62:	e5 01       	mov	#1,r5
    8e64:	40 0b       	jsr	@r0
    8e66:	2f 12       	mov.l	r1,@r15
    8e68:	e7 ff       	mov	#-1,r7
    8e6a:	00 08       	clrt	
    8e6c:	31 7e       	addc	r7,r1
    8e6e:	52 f1       	mov.l	@(4,r15),r2
    8e70:	e6 ff       	mov	#-1,r6
    8e72:	57 f2       	mov.l	@(8,r15),r7
    8e74:	30 6e       	addc	r6,r0
    8e76:	22 09       	and	r0,r2
    8e78:	21 79       	and	r7,r1
    8e7a:	22 1b       	or	r1,r2
    8e7c:	63 f2       	mov.l	@r15,r3
    8e7e:	22 28       	tst	r2,r2
    8e80:	e1 ff       	mov	#-1,r1
    8e82:	50 f5       	mov.l	@(20,r15),r0
    8e84:	61 1a       	negc	r1,r1
    8e86:	21 3b       	or	r3,r1
    8e88:	1f 01       	mov.l	r0,@(4,r15)
    8e8a:	1f 12       	mov.l	r1,@(8,r15)
    8e8c:	51 b1       	mov.l	@(4,r11),r1
    8e8e:	52 c1       	mov.l	@(4,r12),r2
    8e90:	31 20       	cmp/eq	r2,r1
    8e92:	89 69       	bt	8f68 <__fpadd_parts+0x1a0>
    8e94:	21 18       	tst	r1,r1
    8e96:	8b 01       	bf	8e9c <__fpadd_parts+0xd4>
    8e98:	a0 96       	bra	8fc8 <__fpadd_parts+0x200>
    8e9a:	53 f4       	mov.l	@(16,r15),r3
    8e9c:	53 f2       	mov.l	@(8,r15),r3
    8e9e:	00 08       	clrt	
    8ea0:	57 f4       	mov.l	@(16,r15),r7
    8ea2:	52 f1       	mov.l	@(4,r15),r2
    8ea4:	33 7a       	subc	r7,r3
    8ea6:	56 f3       	mov.l	@(12,r15),r6
    8ea8:	32 6a       	subc	r6,r2
    8eaa:	42 11       	cmp/pz	r2
    8eac:	89 02       	bt	8eb4 <__fpadd_parts+0xec>
    8eae:	a0 96       	bra	8fde <__fpadd_parts+0x216>
    8eb0:	00 08       	clrt	
    8eb2:	00 09       	nop	
    8eb4:	e1 00       	mov	#0,r1
    8eb6:	1a 11       	mov.l	r1,@(4,r10)
    8eb8:	68 23       	mov	r2,r8
    8eba:	1a d2       	mov.l	r13,@(8,r10)
    8ebc:	69 33       	mov	r3,r9
    8ebe:	1a 23       	mov.l	r2,@(12,r10)
    8ec0:	1a 34       	mov.l	r3,@(16,r10)
    8ec2:	e3 ff       	mov	#-1,r3
    8ec4:	00 08       	clrt	
    8ec6:	d1 74       	mov.l	9098 <__fpadd_parts+0x2d0>,r1	! fffffff
    8ec8:	33 9e       	addc	r9,r3
    8eca:	e2 ff       	mov	#-1,r2
    8ecc:	32 8e       	addc	r8,r2
    8ece:	32 16       	cmp/hi	r1,r2
    8ed0:	89 21       	bt	8f16 <__fpadd_parts+0x14e>
    8ed2:	32 12       	cmp/hs	r1,r2
    8ed4:	8b 02       	bf	8edc <__fpadd_parts+0x114>
    8ed6:	a0 d5       	bra	9084 <__fpadd_parts+0x2bc>
    8ed8:	e1 fe       	mov	#-2,r1
    8eda:	00 09       	nop	
    8edc:	51 a2       	mov.l	@(8,r10),r1
    8ede:	e4 ff       	mov	#-1,r4
    8ee0:	db 6d       	mov.l	9098 <__fpadd_parts+0x2d0>,r11	! fffffff
    8ee2:	71 ff       	add	#-1,r1
    8ee4:	e5 ff       	mov	#-1,r5
    8ee6:	ed fe       	mov	#-2,r13
    8ee8:	63 93       	mov	r9,r3
    8eea:	00 08       	clrt	
    8eec:	33 9e       	addc	r9,r3
    8eee:	62 83       	mov	r8,r2
    8ef0:	32 8e       	addc	r8,r2
    8ef2:	67 33       	mov	r3,r7
    8ef4:	00 08       	clrt	
    8ef6:	37 5e       	addc	r5,r7
    8ef8:	66 23       	mov	r2,r6
    8efa:	36 4e       	addc	r4,r6
    8efc:	36 b2       	cmp/hs	r11,r6
    8efe:	6c 13       	mov	r1,r12
    8f00:	68 23       	mov	r2,r8
    8f02:	69 33       	mov	r3,r9
    8f04:	71 ff       	add	#-1,r1
    8f06:	8b ef       	bf	8ee8 <__fpadd_parts+0x120>
    8f08:	36 b6       	cmp/hi	r11,r6
    8f0a:	89 01       	bt	8f10 <__fpadd_parts+0x148>
    8f0c:	a0 b4       	bra	9078 <__fpadd_parts+0x2b0>
    8f0e:	37 d6       	cmp/hi	r13,r7
    8f10:	1a 23       	mov.l	r2,@(12,r10)
    8f12:	1a 34       	mov.l	r3,@(16,r10)
    8f14:	1a c2       	mov.l	r12,@(8,r10)
    8f16:	e1 03       	mov	#3,r1
    8f18:	2a 12       	mov.l	r1,@r10
    8f1a:	d1 60       	mov.l	909c <__fpadd_parts+0x2d4>,r1	! 1fffffff
    8f1c:	38 12       	cmp/hs	r1,r8
    8f1e:	8b 33       	bf	8f88 <__fpadd_parts+0x1c0>
    8f20:	38 16       	cmp/hi	r1,r8
    8f22:	8b 31       	bf	8f88 <__fpadd_parts+0x1c0>
    8f24:	51 a2       	mov.l	@(8,r10),r1
    8f26:	60 93       	mov	r9,r0
    8f28:	c9 01       	and	#1,r0
    8f2a:	48 01       	shlr	r8
    8f2c:	49 25       	rotcr	r9
    8f2e:	20 9b       	or	r9,r0
    8f30:	71 01       	add	#1,r1
    8f32:	1a 83       	mov.l	r8,@(12,r10)
    8f34:	6b a3       	mov	r10,r11
    8f36:	1a 04       	mov.l	r0,@(16,r10)
    8f38:	1a 12       	mov.l	r1,@(8,r10)
    8f3a:	60 b3       	mov	r11,r0
    8f3c:	7f 18       	add	#24,r15
    8f3e:	4f 26       	lds.l	@r15+,pr
    8f40:	6e f6       	mov.l	@r15+,r14
    8f42:	6d f6       	mov.l	@r15+,r13
    8f44:	6c f6       	mov.l	@r15+,r12
    8f46:	6b f6       	mov.l	@r15+,r11
    8f48:	6a f6       	mov.l	@r15+,r10
    8f4a:	69 f6       	mov.l	@r15+,r9
    8f4c:	68 f6       	mov.l	@r15+,r8
    8f4e:	00 0b       	rts	
    8f50:	00 09       	nop	
    8f52:	00 09       	nop	
    8f54:	3d 37       	cmp/gt	r3,r13
    8f56:	8b 4b       	bf	8ff0 <__fpadd_parts+0x228>
    8f58:	e2 00       	mov	#0,r2
    8f5a:	1f 21       	mov.l	r2,@(4,r15)
    8f5c:	e3 00       	mov	#0,r3
    8f5e:	51 b1       	mov.l	@(4,r11),r1
    8f60:	52 c1       	mov.l	@(4,r12),r2
    8f62:	1f 32       	mov.l	r3,@(8,r15)
    8f64:	31 20       	cmp/eq	r2,r1
    8f66:	8b 95       	bf	8e94 <__fpadd_parts+0xcc>
    8f68:	59 f2       	mov.l	@(8,r15),r9
    8f6a:	00 08       	clrt	
    8f6c:	53 f4       	mov.l	@(16,r15),r3
    8f6e:	1a 11       	mov.l	r1,@(4,r10)
    8f70:	e1 03       	mov	#3,r1
    8f72:	58 f1       	mov.l	@(4,r15),r8
    8f74:	39 3e       	addc	r3,r9
    8f76:	52 f3       	mov.l	@(12,r15),r2
    8f78:	2a 12       	mov.l	r1,@r10
    8f7a:	38 2e       	addc	r2,r8
    8f7c:	d1 47       	mov.l	909c <__fpadd_parts+0x2d4>,r1	! 1fffffff
    8f7e:	1a d2       	mov.l	r13,@(8,r10)
    8f80:	38 12       	cmp/hs	r1,r8
    8f82:	1a 83       	mov.l	r8,@(12,r10)
    8f84:	1a 94       	mov.l	r9,@(16,r10)
    8f86:	89 cb       	bt	8f20 <__fpadd_parts+0x158>
    8f88:	6b a3       	mov	r10,r11
    8f8a:	60 b3       	mov	r11,r0
    8f8c:	7f 18       	add	#24,r15
    8f8e:	4f 26       	lds.l	@r15+,pr
    8f90:	6e f6       	mov.l	@r15+,r14
    8f92:	6d f6       	mov.l	@r15+,r13
    8f94:	6c f6       	mov.l	@r15+,r12
    8f96:	6b f6       	mov.l	@r15+,r11
    8f98:	6a f6       	mov.l	@r15+,r10
    8f9a:	69 f6       	mov.l	@r15+,r9
    8f9c:	68 f6       	mov.l	@r15+,r8
    8f9e:	00 0b       	rts	
    8fa0:	00 09       	nop	
    8fa2:	00 09       	nop	
    8fa4:	8b c9       	bf	8f3a <__fpadd_parts+0x172>
    8fa6:	26 32       	mov.l	r3,@r6
    8fa8:	6b 63       	mov	r6,r11
    8faa:	51 41       	mov.l	@(4,r4),r1
    8fac:	16 11       	mov.l	r1,@(4,r6)
    8fae:	51 42       	mov.l	@(8,r4),r1
    8fb0:	52 41       	mov.l	@(4,r4),r2
    8fb2:	16 12       	mov.l	r1,@(8,r6)
    8fb4:	51 43       	mov.l	@(12,r4),r1
    8fb6:	16 13       	mov.l	r1,@(12,r6)
    8fb8:	51 44       	mov.l	@(16,r4),r1
    8fba:	16 14       	mov.l	r1,@(16,r6)
    8fbc:	51 51       	mov.l	@(4,r5),r1
    8fbe:	21 29       	and	r2,r1
    8fc0:	16 11       	mov.l	r1,@(4,r6)
    8fc2:	af bb       	bra	8f3c <__fpadd_parts+0x174>
    8fc4:	60 b3       	mov	r11,r0
    8fc6:	00 09       	nop	
    8fc8:	00 08       	clrt	
    8fca:	51 f2       	mov.l	@(8,r15),r1
    8fcc:	52 f3       	mov.l	@(12,r15),r2
    8fce:	33 1a       	subc	r1,r3
    8fd0:	50 f1       	mov.l	@(4,r15),r0
    8fd2:	32 0a       	subc	r0,r2
    8fd4:	42 11       	cmp/pz	r2
    8fd6:	8b 01       	bf	8fdc <__fpadd_parts+0x214>
    8fd8:	af 6d       	bra	8eb6 <__fpadd_parts+0xee>
    8fda:	e1 00       	mov	#0,r1
    8fdc:	00 08       	clrt	
    8fde:	69 3a       	negc	r3,r9
    8fe0:	e1 01       	mov	#1,r1
    8fe2:	68 2a       	negc	r2,r8
    8fe4:	1a 11       	mov.l	r1,@(4,r10)
    8fe6:	1a d2       	mov.l	r13,@(8,r10)
    8fe8:	1a 83       	mov.l	r8,@(12,r10)
    8fea:	af 6a       	bra	8ec2 <__fpadd_parts+0xfa>
    8fec:	1a 94       	mov.l	r9,@(16,r10)
    8fee:	00 09       	nop	
    8ff0:	6d 33       	mov	r3,r13
    8ff2:	e2 00       	mov	#0,r2
    8ff4:	e3 00       	mov	#0,r3
    8ff6:	1f 23       	mov.l	r2,@(12,r15)
    8ff8:	1f 34       	mov.l	r3,@(16,r15)
    8ffa:	af 48       	bra	8e8e <__fpadd_parts+0xc6>
    8ffc:	51 b1       	mov.l	@(4,r11),r1
    8ffe:	00 09       	nop	
    9000:	e7 3f       	mov	#63,r7
    9002:	3e 77       	cmp/gt	r7,r14
    9004:	89 a6       	bt	8f54 <__fpadd_parts+0x18c>
    9006:	af 20       	bra	8e4a <__fpadd_parts+0x82>
    9008:	41 15       	cmp/pl	r1
    900a:	00 09       	nop	
    900c:	60 b3       	mov	r11,r0
    900e:	7f 18       	add	#24,r15
    9010:	4f 26       	lds.l	@r15+,pr
    9012:	6e f6       	mov.l	@r15+,r14
    9014:	6d f6       	mov.l	@r15+,r13
    9016:	6c f6       	mov.l	@r15+,r12
    9018:	6b f6       	mov.l	@r15+,r11
    901a:	6a f6       	mov.l	@r15+,r10
    901c:	69 f6       	mov.l	@r15+,r9
    901e:	68 f6       	mov.l	@r15+,r8
    9020:	00 0b       	rts	
    9022:	00 09       	nop	
    9024:	89 e9       	bt	8ffa <__fpadd_parts+0x232>
    9026:	d0 1a       	mov.l	9090 <__fpadd_parts+0x2c8>,r0	! 9988 <___lshrdi3>
    9028:	66 e3       	mov	r14,r6
    902a:	54 f3       	mov.l	@(12,r15),r4
    902c:	3d ec       	add	r14,r13
    902e:	40 0b       	jsr	@r0
    9030:	55 f4       	mov.l	@(16,r15),r5
    9032:	1f 05       	mov.l	r0,@(20,r15)
    9034:	e4 00       	mov	#0,r4
    9036:	d0 17       	mov.l	9094 <__fpadd_parts+0x2cc>,r0	! 99f4 <___ashldi3>
    9038:	e5 01       	mov	#1,r5
    903a:	66 e3       	mov	r14,r6
    903c:	40 0b       	jsr	@r0
    903e:	2f 12       	mov.l	r1,@r15
    9040:	e3 ff       	mov	#-1,r3
    9042:	00 08       	clrt	
    9044:	31 3e       	addc	r3,r1
    9046:	e2 ff       	mov	#-1,r2
    9048:	30 2e       	addc	r2,r0
    904a:	53 f4       	mov.l	@(16,r15),r3
    904c:	52 f3       	mov.l	@(12,r15),r2
    904e:	21 39       	and	r3,r1
    9050:	67 f2       	mov.l	@r15,r7
    9052:	22 09       	and	r0,r2
    9054:	22 1b       	or	r1,r2
    9056:	22 28       	tst	r2,r2
    9058:	e1 ff       	mov	#-1,r1
    905a:	50 f5       	mov.l	@(20,r15),r0
    905c:	61 1a       	negc	r1,r1
    905e:	21 7b       	or	r7,r1
    9060:	1f 03       	mov.l	r0,@(12,r15)
    9062:	af 13       	bra	8e8c <__fpadd_parts+0xc4>
    9064:	1f 14       	mov.l	r1,@(16,r15)
    9066:	00 09       	nop	
    9068:	8b ab       	bf	8fc2 <__fpadd_parts+0x1fa>
    906a:	52 41       	mov.l	@(4,r4),r2
    906c:	51 51       	mov.l	@(4,r5),r1
    906e:	32 10       	cmp/eq	r1,r2
    9070:	89 a7       	bt	8fc2 <__fpadd_parts+0x1fa>
    9072:	db 0b       	mov.l	90a0 <__fpadd_parts+0x2d8>,r11	! 9ff8 <___thenan_df>
    9074:	af 62       	bra	8f3c <__fpadd_parts+0x174>
    9076:	60 b3       	mov	r11,r0
    9078:	89 02       	bt	9080 <__fpadd_parts+0x2b8>
    907a:	af 36       	bra	8eea <__fpadd_parts+0x122>
    907c:	63 93       	mov	r9,r3
    907e:	00 09       	nop	
    9080:	af 47       	bra	8f12 <__fpadd_parts+0x14a>
    9082:	1a 23       	mov.l	r2,@(12,r10)
    9084:	33 16       	cmp/hi	r1,r3
    9086:	8b 01       	bf	908c <__fpadd_parts+0x2c4>
    9088:	af 46       	bra	8f18 <__fpadd_parts+0x150>
    908a:	e1 03       	mov	#3,r1
    908c:	af 27       	bra	8ede <__fpadd_parts+0x116>
    908e:	51 a2       	mov.l	@(8,r10),r1
    9090:	00 00       	.word 0x0000
    9092:	99 88       	mov.w	91a6 <___muldf3+0x5a>,r9	! 6af6
    9094:	00 00       	.word 0x0000
    9096:	99 f4       	mov.w	9282 <___muldf3+0x136>,r9	! e400
    9098:	0f ff       	.word 0x0fff
    909a:	ff ff       	.word 0xffff
    909c:	1f ff       	mov.l	r15,@(60,r15)
    909e:	ff ff       	.word 0xffff
    90a0:	00 00       	.word 0x0000
    90a2:	9f f8       	mov.w	9296 <___muldf3+0x14a>,r15	! 64f3

000090a4 <___adddf3>:
    90a4:	2f 86       	mov.l	r8,@-r15
    90a6:	4f 22       	sts.l	pr,@-r15
    90a8:	d8 0f       	mov.l	90e8 <___adddf3+0x44>,r8	! 9c84 <___unpack_d>
    90aa:	7f b4       	add	#-76,r15
    90ac:	1f 51       	mov.l	r5,@(4,r15)
    90ae:	65 f3       	mov	r15,r5
    90b0:	1f 73       	mov.l	r7,@(12,r15)
    90b2:	75 10       	add	#16,r5
    90b4:	1f 62       	mov.l	r6,@(8,r15)
    90b6:	2f 42       	mov.l	r4,@r15
    90b8:	48 0b       	jsr	@r8
    90ba:	64 f3       	mov	r15,r4
    90bc:	64 f3       	mov	r15,r4
    90be:	65 f3       	mov	r15,r5
    90c0:	74 08       	add	#8,r4
    90c2:	48 0b       	jsr	@r8
    90c4:	75 24       	add	#36,r5
    90c6:	d0 09       	mov.l	90ec <___adddf3+0x48>,r0	! 8dc8 <__fpadd_parts>
    90c8:	64 f3       	mov	r15,r4
    90ca:	65 f3       	mov	r15,r5
    90cc:	66 f3       	mov	r15,r6
    90ce:	75 24       	add	#36,r5
    90d0:	76 38       	add	#56,r6
    90d2:	40 0b       	jsr	@r0
    90d4:	74 10       	add	#16,r4
    90d6:	64 03       	mov	r0,r4
    90d8:	d0 05       	mov.l	90f0 <___adddf3+0x4c>,r0	! 9af8 <___pack_d>
    90da:	40 0b       	jsr	@r0
    90dc:	00 09       	nop	
    90de:	7f 4c       	add	#76,r15
    90e0:	4f 26       	lds.l	@r15+,pr
    90e2:	68 f6       	mov.l	@r15+,r8
    90e4:	00 0b       	rts	
    90e6:	00 09       	nop	
    90e8:	00 00       	.word 0x0000
    90ea:	9c 84       	mov.w	91f6 <___muldf3+0xaa>,r12	! 6033
    90ec:	00 00       	.word 0x0000
    90ee:	8d c8       	.word 0x8dc8
    90f0:	00 00       	.word 0x0000
    90f2:	9a f8       	mov.w	92e6 <___muldf3+0x19a>,r10	! 1452

000090f4 <___subdf3>:
    90f4:	2f 86       	mov.l	r8,@-r15
    90f6:	4f 22       	sts.l	pr,@-r15
    90f8:	d8 11       	mov.l	9140 <___subdf3+0x4c>,r8	! 9c84 <___unpack_d>
    90fa:	7f b4       	add	#-76,r15
    90fc:	1f 51       	mov.l	r5,@(4,r15)
    90fe:	65 f3       	mov	r15,r5
    9100:	1f 73       	mov.l	r7,@(12,r15)
    9102:	75 10       	add	#16,r5
    9104:	1f 62       	mov.l	r6,@(8,r15)
    9106:	2f 42       	mov.l	r4,@r15
    9108:	48 0b       	jsr	@r8
    910a:	64 f3       	mov	r15,r4
    910c:	64 f3       	mov	r15,r4
    910e:	65 f3       	mov	r15,r5
    9110:	74 08       	add	#8,r4
    9112:	48 0b       	jsr	@r8
    9114:	75 24       	add	#36,r5
    9116:	50 fa       	mov.l	@(40,r15),r0
    9118:	64 f3       	mov	r15,r4
    911a:	65 f3       	mov	r15,r5
    911c:	ca 01       	xor	#1,r0
    911e:	1f 0a       	mov.l	r0,@(40,r15)
    9120:	66 f3       	mov	r15,r6
    9122:	d0 08       	mov.l	9144 <___subdf3+0x50>,r0	! 8dc8 <__fpadd_parts>
    9124:	75 24       	add	#36,r5
    9126:	76 38       	add	#56,r6
    9128:	40 0b       	jsr	@r0
    912a:	74 10       	add	#16,r4
    912c:	64 03       	mov	r0,r4
    912e:	d0 06       	mov.l	9148 <___subdf3+0x54>,r0	! 9af8 <___pack_d>
    9130:	40 0b       	jsr	@r0
    9132:	00 09       	nop	
    9134:	7f 4c       	add	#76,r15
    9136:	4f 26       	lds.l	@r15+,pr
    9138:	68 f6       	mov.l	@r15+,r8
    913a:	00 0b       	rts	
    913c:	00 09       	nop	
    913e:	00 09       	nop	
    9140:	00 00       	.word 0x0000
    9142:	9c 84       	mov.w	924e <___muldf3+0x102>,r12	! 4c0b
    9144:	00 00       	.word 0x0000
    9146:	8d c8       	.word 0x8dc8
    9148:	00 00       	.word 0x0000
    914a:	9a f8       	mov.w	933e <___muldf3+0x1f2>,r10	! 33be

0000914c <___muldf3>:
    914c:	2f 86       	mov.l	r8,@-r15
    914e:	2f 96       	mov.l	r9,@-r15
    9150:	2f a6       	mov.l	r10,@-r15
    9152:	2f b6       	mov.l	r11,@-r15
    9154:	2f c6       	mov.l	r12,@-r15
    9156:	2f d6       	mov.l	r13,@-r15
    9158:	2f e6       	mov.l	r14,@-r15
    915a:	4f 22       	sts.l	pr,@-r15
    915c:	d8 89       	mov.l	9384 <___muldf3+0x238>,r8	! 9c84 <___unpack_d>
    915e:	7f a8       	add	#-88,r15
    9160:	1f 43       	mov.l	r4,@(12,r15)
    9162:	64 f3       	mov	r15,r4
    9164:	1f 54       	mov.l	r5,@(16,r15)
    9166:	65 f3       	mov	r15,r5
    9168:	1f 65       	mov.l	r6,@(20,r15)
    916a:	74 0c       	add	#12,r4
    916c:	1f 76       	mov.l	r7,@(24,r15)
    916e:	48 0b       	jsr	@r8
    9170:	75 1c       	add	#28,r5
    9172:	64 f3       	mov	r15,r4
    9174:	65 f3       	mov	r15,r5
    9176:	74 14       	add	#20,r4
    9178:	48 0b       	jsr	@r8
    917a:	75 30       	add	#48,r5
    917c:	53 f7       	mov.l	@(28,r15),r3
    917e:	e1 01       	mov	#1,r1
    9180:	33 16       	cmp/hi	r1,r3
    9182:	89 15       	bt	91b0 <___muldf3+0x64>
    9184:	52 f8       	mov.l	@(32,r15),r2
    9186:	64 f3       	mov	r15,r4
    9188:	51 fd       	mov.l	@(52,r15),r1
    918a:	74 1c       	add	#28,r4
    918c:	32 10       	cmp/eq	r1,r2
    918e:	e1 ff       	mov	#-1,r1
    9190:	61 1a       	negc	r1,r1
    9192:	1f 18       	mov.l	r1,@(32,r15)
    9194:	d0 7c       	mov.l	9388 <___muldf3+0x23c>,r0	! 9af8 <___pack_d>
    9196:	40 0b       	jsr	@r0
    9198:	00 09       	nop	
    919a:	7f 58       	add	#88,r15
    919c:	4f 26       	lds.l	@r15+,pr
    919e:	6e f6       	mov.l	@r15+,r14
    91a0:	6d f6       	mov.l	@r15+,r13
    91a2:	6c f6       	mov.l	@r15+,r12
    91a4:	6b f6       	mov.l	@r15+,r11
    91a6:	6a f6       	mov.l	@r15+,r10
    91a8:	69 f6       	mov.l	@r15+,r9
    91aa:	68 f6       	mov.l	@r15+,r8
    91ac:	00 0b       	rts	
    91ae:	00 09       	nop	
    91b0:	52 fc       	mov.l	@(48,r15),r2
    91b2:	32 16       	cmp/hi	r1,r2
    91b4:	89 14       	bt	91e0 <___muldf3+0x94>
    91b6:	51 fd       	mov.l	@(52,r15),r1
    91b8:	64 f3       	mov	r15,r4
    91ba:	52 f8       	mov.l	@(32,r15),r2
    91bc:	74 30       	add	#48,r4
    91be:	d0 72       	mov.l	9388 <___muldf3+0x23c>,r0	! 9af8 <___pack_d>
    91c0:	32 10       	cmp/eq	r1,r2
    91c2:	e1 ff       	mov	#-1,r1
    91c4:	61 1a       	negc	r1,r1
    91c6:	40 0b       	jsr	@r0
    91c8:	1f 1d       	mov.l	r1,@(52,r15)
    91ca:	7f 58       	add	#88,r15
    91cc:	4f 26       	lds.l	@r15+,pr
    91ce:	6e f6       	mov.l	@r15+,r14
    91d0:	6d f6       	mov.l	@r15+,r13
    91d2:	6c f6       	mov.l	@r15+,r12
    91d4:	6b f6       	mov.l	@r15+,r11
    91d6:	6a f6       	mov.l	@r15+,r10
    91d8:	69 f6       	mov.l	@r15+,r9
    91da:	68 f6       	mov.l	@r15+,r8
    91dc:	00 0b       	rts	
    91de:	00 09       	nop	
    91e0:	60 33       	mov	r3,r0
    91e2:	88 04       	cmp/eq	#4,r0
    91e4:	60 23       	mov	r2,r0
    91e6:	8b 05       	bf	91f4 <___muldf3+0xa8>
    91e8:	88 02       	cmp/eq	#2,r0
    91ea:	8b cb       	bf	9184 <___muldf3+0x38>
    91ec:	d4 67       	mov.l	938c <___muldf3+0x240>,r4	! 9ff8 <___thenan_df>
    91ee:	af d1       	bra	9194 <___muldf3+0x48>
    91f0:	00 09       	nop	
    91f2:	00 09       	nop	
    91f4:	88 04       	cmp/eq	#4,r0
    91f6:	60 33       	mov	r3,r0
    91f8:	8b 04       	bf	9204 <___muldf3+0xb8>
    91fa:	88 02       	cmp/eq	#2,r0
    91fc:	8b db       	bf	91b6 <___muldf3+0x6a>
    91fe:	d4 63       	mov.l	938c <___muldf3+0x240>,r4	! 9ff8 <___thenan_df>
    9200:	af c8       	bra	9194 <___muldf3+0x48>
    9202:	00 09       	nop	
    9204:	88 02       	cmp/eq	#2,r0
    9206:	89 bd       	bt	9184 <___muldf3+0x38>
    9208:	60 23       	mov	r2,r0
    920a:	88 02       	cmp/eq	#2,r0
    920c:	89 d3       	bt	91b6 <___muldf3+0x6a>
    920e:	e0 40       	mov	#64,r0
    9210:	0e fe       	mov.l	@(r0,r15),r14
    9212:	e4 00       	mov	#0,r4
    9214:	dc 5e       	mov.l	9390 <___muldf3+0x244>,r12	! 98f0 <___muldi3>
    9216:	e6 00       	mov	#0,r6
    9218:	5b fb       	mov.l	@(44,r15),r11
    921a:	67 e3       	mov	r14,r7
    921c:	5a ff       	mov.l	@(60,r15),r10
    921e:	65 b3       	mov	r11,r5
    9220:	4c 0b       	jsr	@r12
    9222:	5d fa       	mov.l	@(40,r15),r13
    9224:	65 a3       	mov	r10,r5
    9226:	67 b3       	mov	r11,r7
    9228:	e4 00       	mov	#0,r4
    922a:	e6 00       	mov	#0,r6
    922c:	68 03       	mov	r0,r8
    922e:	4c 0b       	jsr	@r12
    9230:	69 13       	mov	r1,r9
    9232:	62 03       	mov	r0,r2
    9234:	67 a3       	mov	r10,r7
    9236:	1f 21       	mov.l	r2,@(4,r15)
    9238:	e4 00       	mov	#0,r4
    923a:	65 d3       	mov	r13,r5
    923c:	e6 00       	mov	#0,r6
    923e:	1f 12       	mov.l	r1,@(8,r15)
    9240:	4c 0b       	jsr	@r12
    9242:	2f 12       	mov.l	r1,@r15
    9244:	6a 03       	mov	r0,r10
    9246:	6b 13       	mov	r1,r11
    9248:	e4 00       	mov	#0,r4
    924a:	65 d3       	mov	r13,r5
    924c:	e6 00       	mov	#0,r6
    924e:	4c 0b       	jsr	@r12
    9250:	67 e3       	mov	r14,r7
    9252:	63 f2       	mov.l	@r15,r3
    9254:	00 08       	clrt	
    9256:	52 f1       	mov.l	@(4,r15),r2
    9258:	31 3e       	addc	r3,r1
    925a:	30 2e       	addc	r2,r0
    925c:	32 06       	cmp/hi	r0,r2
    925e:	8b 01       	bf	9264 <___muldf3+0x118>
    9260:	a0 85       	bra	936e <___muldf3+0x222>
    9262:	e6 01       	mov	#1,r6
    9264:	32 02       	cmp/hs	r0,r2
    9266:	89 7b       	bt	9360 <___muldf3+0x214>
    9268:	e6 00       	mov	#0,r6
    926a:	e7 00       	mov	#0,r7
    926c:	e3 00       	mov	#0,r3
    926e:	00 08       	clrt	
    9270:	33 9e       	addc	r9,r3
    9272:	62 13       	mov	r1,r2
    9274:	32 8e       	addc	r8,r2
    9276:	38 22       	cmp/hs	r2,r8
    9278:	8b 06       	bf	9288 <___muldf3+0x13c>
    927a:	38 26       	cmp/hi	r2,r8
    927c:	8b 7a       	bf	9374 <___muldf3+0x228>
    927e:	e5 01       	mov	#1,r5
    9280:	00 08       	clrt	
    9282:	e4 00       	mov	#0,r4
    9284:	37 5e       	addc	r5,r7
    9286:	36 4e       	addc	r4,r6
    9288:	00 08       	clrt	
    928a:	3b 0e       	addc	r0,r11
    928c:	e4 00       	mov	#0,r4
    928e:	3a 4e       	addc	r4,r10
    9290:	00 08       	clrt	
    9292:	3b 7e       	addc	r7,r11
    9294:	51 f9       	mov.l	@(36,r15),r1
    9296:	64 f3       	mov	r15,r4
    9298:	57 fe       	mov.l	@(56,r15),r7
    929a:	74 44       	add	#68,r4
    929c:	3a 6e       	addc	r6,r10
    929e:	31 7c       	add	r7,r1
    92a0:	67 13       	mov	r1,r7
    92a2:	77 04       	add	#4,r7
    92a4:	56 f8       	mov.l	@(32,r15),r6
    92a6:	14 72       	mov.l	r7,@(8,r4)
    92a8:	57 fd       	mov.l	@(52,r15),r7
    92aa:	36 70       	cmp/eq	r7,r6
    92ac:	d6 39       	mov.l	9394 <___muldf3+0x248>,r6	! 1fffffff
    92ae:	e7 ff       	mov	#-1,r7
    92b0:	67 7a       	negc	r7,r7
    92b2:	14 71       	mov.l	r7,@(4,r4)
    92b4:	3a 62       	cmp/hs	r6,r10
    92b6:	8b 17       	bf	92e8 <___muldf3+0x19c>
    92b8:	3a 66       	cmp/hi	r6,r10
    92ba:	71 05       	add	#5,r1
    92bc:	8b 14       	bf	92e8 <___muldf3+0x19c>
    92be:	d9 36       	mov.l	9398 <___muldf3+0x24c>,r9	! 80000000
    92c0:	68 63       	mov	r6,r8
    92c2:	60 b3       	mov	r11,r0
    92c4:	c9 01       	and	#1,r0
    92c6:	20 08       	tst	r0,r0
    92c8:	65 13       	mov	r1,r5
    92ca:	89 06       	bt	92da <___muldf3+0x18e>
    92cc:	66 23       	mov	r2,r6
    92ce:	67 33       	mov	r3,r7
    92d0:	46 01       	shlr	r6
    92d2:	47 25       	rotcr	r7
    92d4:	62 63       	mov	r6,r2
    92d6:	22 9b       	or	r9,r2
    92d8:	63 73       	mov	r7,r3
    92da:	4a 01       	shlr	r10
    92dc:	4b 25       	rotcr	r11
    92de:	67 a3       	mov	r10,r7
    92e0:	37 86       	cmp/hi	r8,r7
    92e2:	71 01       	add	#1,r1
    92e4:	89 ed       	bt	92c2 <___muldf3+0x176>
    92e6:	14 52       	mov.l	r5,@(8,r4)
    92e8:	d6 2c       	mov.l	939c <___muldf3+0x250>,r6	! fffffff
    92ea:	3a 66       	cmp/hi	r6,r10
    92ec:	89 19       	bt	9322 <___muldf3+0x1d6>
    92ee:	51 42       	mov.l	@(8,r4),r1
    92f0:	65 63       	mov	r6,r5
    92f2:	71 ff       	add	#-1,r1
    92f4:	67 b3       	mov	r11,r7
    92f6:	00 08       	clrt	
    92f8:	37 be       	addc	r11,r7
    92fa:	66 a3       	mov	r10,r6
    92fc:	36 ae       	addc	r10,r6
    92fe:	42 11       	cmp/pz	r2
    9300:	60 13       	mov	r1,r0
    9302:	6a 63       	mov	r6,r10
    9304:	6b 73       	mov	r7,r11
    9306:	8b 25       	bf	9354 <___muldf3+0x208>
    9308:	68 33       	mov	r3,r8
    930a:	00 08       	clrt	
    930c:	38 3e       	addc	r3,r8
    930e:	67 23       	mov	r2,r7
    9310:	37 2e       	addc	r2,r7
    9312:	3a 52       	cmp/hs	r5,r10
    9314:	62 73       	mov	r7,r2
    9316:	63 83       	mov	r8,r3
    9318:	71 ff       	add	#-1,r1
    931a:	8b eb       	bf	92f4 <___muldf3+0x1a8>
    931c:	3a 56       	cmp/hi	r5,r10
    931e:	8b e9       	bf	92f4 <___muldf3+0x1a8>
    9320:	14 02       	mov.l	r0,@(8,r4)
    9322:	91 2b       	mov.w	937c <___muldf3+0x230>,r1	! 80
    9324:	67 bc       	extu.b	r11,r7
    9326:	37 10       	cmp/eq	r1,r7
    9328:	8b 0f       	bf	934a <___muldf3+0x1fe>
    932a:	91 28       	mov.w	937e <___muldf3+0x232>,r1	! 100
    932c:	21 b8       	tst	r11,r1
    932e:	8b 0c       	bf	934a <___muldf3+0x1fe>
    9330:	22 28       	tst	r2,r2
    9332:	8b 01       	bf	9338 <___muldf3+0x1ec>
    9334:	23 38       	tst	r3,r3
    9336:	89 08       	bt	934a <___muldf3+0x1fe>
    9338:	93 20       	mov.w	937c <___muldf3+0x230>,r3	! 80
    933a:	00 08       	clrt	
    933c:	91 20       	mov.w	9380 <___muldf3+0x234>,r1	! ff00
    933e:	33 be       	addc	r11,r3
    9340:	e2 00       	mov	#0,r2
    9342:	32 ae       	addc	r10,r2
    9344:	6b 33       	mov	r3,r11
    9346:	6a 23       	mov	r2,r10
    9348:	2b 19       	and	r1,r11
    934a:	e1 03       	mov	#3,r1
    934c:	14 a3       	mov.l	r10,@(12,r4)
    934e:	14 b4       	mov.l	r11,@(16,r4)
    9350:	af 20       	bra	9194 <___muldf3+0x48>
    9352:	24 12       	mov.l	r1,@r4
    9354:	e7 01       	mov	#1,r7
    9356:	27 bb       	or	r11,r7
    9358:	6a 63       	mov	r6,r10
    935a:	af d5       	bra	9308 <___muldf3+0x1bc>
    935c:	6b 73       	mov	r7,r11
    935e:	00 09       	nop	
    9360:	52 f2       	mov.l	@(8,r15),r2
    9362:	32 16       	cmp/hi	r1,r2
    9364:	89 02       	bt	936c <___muldf3+0x220>
    9366:	af 80       	bra	926a <___muldf3+0x11e>
    9368:	e6 00       	mov	#0,r6
    936a:	00 09       	nop	
    936c:	e6 01       	mov	#1,r6
    936e:	af 7d       	bra	926c <___muldf3+0x120>
    9370:	e7 00       	mov	#0,r7
    9372:	00 09       	nop	
    9374:	39 36       	cmp/hi	r3,r9
    9376:	8b 87       	bf	9288 <___muldf3+0x13c>
    9378:	af 82       	bra	9280 <___muldf3+0x134>
    937a:	e5 01       	mov	#1,r5
    937c:	00 80       	.word 0x0080
    937e:	01 00       	.word 0x0100
    9380:	ff 00       	.word 0xff00
    9382:	00 09       	nop	
    9384:	00 00       	.word 0x0000
    9386:	9c 84       	mov.w	9492 <___divdf3+0xf2>,r12	! 912d
    9388:	00 00       	.word 0x0000
    938a:	9a f8       	mov.w	957e <___nedf2+0x22>,r10	! 52f4
    938c:	00 00       	.word 0x0000
    938e:	9f f8       	mov.w	9582 <___nedf2+0x26>,r15	! 3216
    9390:	00 00       	.word 0x0000
    9392:	98 f0       	mov.w	9576 <___nedf2+0x1a>,r8	! 65f3
    9394:	1f ff       	mov.l	r15,@(60,r15)
    9396:	ff ff       	.word 0xffff
    9398:	80 00       	mov.b	r0,@(0,r0)
    939a:	00 00       	.word 0x0000
    939c:	0f ff       	.word 0x0fff
    939e:	ff ff       	.word 0xffff

000093a0 <___divdf3>:
    93a0:	2f 86       	mov.l	r8,@-r15
    93a2:	2f 96       	mov.l	r9,@-r15
    93a4:	2f a6       	mov.l	r10,@-r15
    93a6:	2f b6       	mov.l	r11,@-r15
    93a8:	2f c6       	mov.l	r12,@-r15
    93aa:	2f d6       	mov.l	r13,@-r15
    93ac:	2f e6       	mov.l	r14,@-r15
    93ae:	4f 22       	sts.l	pr,@-r15
    93b0:	d8 51       	mov.l	94f8 <___divdf3+0x158>,r8	! 9c84 <___unpack_d>
    93b2:	7f c8       	add	#-56,r15
    93b4:	1f 51       	mov.l	r5,@(4,r15)
    93b6:	65 f3       	mov	r15,r5
    93b8:	2f 42       	mov.l	r4,@r15
    93ba:	75 10       	add	#16,r5
    93bc:	1f 62       	mov.l	r6,@(8,r15)
    93be:	64 f3       	mov	r15,r4
    93c0:	48 0b       	jsr	@r8
    93c2:	1f 73       	mov.l	r7,@(12,r15)
    93c4:	64 f3       	mov	r15,r4
    93c6:	65 f3       	mov	r15,r5
    93c8:	74 08       	add	#8,r4
    93ca:	48 0b       	jsr	@r8
    93cc:	75 24       	add	#36,r5
    93ce:	50 f4       	mov.l	@(16,r15),r0
    93d0:	e1 01       	mov	#1,r1
    93d2:	30 16       	cmp/hi	r1,r0
    93d4:	89 10       	bt	93f8 <___divdf3+0x58>
    93d6:	64 f3       	mov	r15,r4
    93d8:	74 10       	add	#16,r4
    93da:	d0 48       	mov.l	94fc <___divdf3+0x15c>,r0	! 9af8 <___pack_d>
    93dc:	40 0b       	jsr	@r0
    93de:	00 09       	nop	
    93e0:	7f 38       	add	#56,r15
    93e2:	4f 26       	lds.l	@r15+,pr
    93e4:	6e f6       	mov.l	@r15+,r14
    93e6:	6d f6       	mov.l	@r15+,r13
    93e8:	6c f6       	mov.l	@r15+,r12
    93ea:	6b f6       	mov.l	@r15+,r11
    93ec:	6a f6       	mov.l	@r15+,r10
    93ee:	69 f6       	mov.l	@r15+,r9
    93f0:	68 f6       	mov.l	@r15+,r8
    93f2:	00 0b       	rts	
    93f4:	00 09       	nop	
    93f6:	00 09       	nop	
    93f8:	52 f9       	mov.l	@(36,r15),r2
    93fa:	64 f3       	mov	r15,r4
    93fc:	74 24       	add	#36,r4
    93fe:	32 16       	cmp/hi	r1,r2
    9400:	8b eb       	bf	93da <___divdf3+0x3a>
    9402:	53 f5       	mov.l	@(20,r15),r3
    9404:	88 04       	cmp/eq	#4,r0
    9406:	51 41       	mov.l	@(4,r4),r1
    9408:	21 3a       	xor	r3,r1
    940a:	1f 15       	mov.l	r1,@(20,r15)
    940c:	89 01       	bt	9412 <___divdf3+0x72>
    940e:	88 02       	cmp/eq	#2,r0
    9410:	8b 04       	bf	941c <___divdf3+0x7c>
    9412:	30 20       	cmp/eq	r2,r0
    9414:	8b df       	bf	93d6 <___divdf3+0x36>
    9416:	d4 3a       	mov.l	9500 <___divdf3+0x160>,r4	! 9ff8 <___thenan_df>
    9418:	af df       	bra	93da <___divdf3+0x3a>
    941a:	00 09       	nop	
    941c:	60 23       	mov	r2,r0
    941e:	88 04       	cmp/eq	#4,r0
    9420:	89 50       	bt	94c4 <___divdf3+0x124>
    9422:	60 23       	mov	r2,r0
    9424:	88 02       	cmp/eq	#2,r0
    9426:	89 57       	bt	94d8 <___divdf3+0x138>
    9428:	57 f6       	mov.l	@(24,r15),r7
    942a:	51 fb       	mov.l	@(44,r15),r1
    942c:	52 f7       	mov.l	@(28,r15),r2
    942e:	37 18       	sub	r1,r7
    9430:	50 fc       	mov.l	@(48,r15),r0
    9432:	1f 76       	mov.l	r7,@(24,r15)
    9434:	32 06       	cmp/hi	r0,r2
    9436:	53 f8       	mov.l	@(32,r15),r3
    9438:	51 fd       	mov.l	@(52,r15),r1
    943a:	89 0a       	bt	9452 <___divdf3+0xb2>
    943c:	32 02       	cmp/hs	r0,r2
    943e:	89 4f       	bt	94e0 <___divdf3+0x140>
    9440:	66 33       	mov	r3,r6
    9442:	00 08       	clrt	
    9444:	65 23       	mov	r2,r5
    9446:	36 3e       	addc	r3,r6
    9448:	77 ff       	add	#-1,r7
    944a:	35 2e       	addc	r2,r5
    944c:	1f 76       	mov.l	r7,@(24,r15)
    944e:	62 53       	mov	r5,r2
    9450:	63 63       	mov	r6,r3
    9452:	d6 2c       	mov.l	9504 <___divdf3+0x164>,r6	! 10000000
    9454:	e8 3d       	mov	#61,r8
    9456:	e7 00       	mov	#0,r7
    9458:	e4 00       	mov	#0,r4
    945a:	e5 00       	mov	#0,r5
    945c:	6a 03       	mov	r0,r10
    945e:	6c 13       	mov	r1,r12
    9460:	3a 26       	cmp/hi	r2,r10
    9462:	89 0a       	bt	947a <___divdf3+0xda>
    9464:	3a 22       	cmp/hs	r2,r10
    9466:	89 3f       	bt	94e8 <___divdf3+0x148>
    9468:	6b 43       	mov	r4,r11
    946a:	69 53       	mov	r5,r9
    946c:	00 08       	clrt	
    946e:	2b 6b       	or	r6,r11
    9470:	29 7b       	or	r7,r9
    9472:	33 1a       	subc	r1,r3
    9474:	64 b3       	mov	r11,r4
    9476:	65 93       	mov	r9,r5
    9478:	32 0a       	subc	r0,r2
    947a:	46 01       	shlr	r6
    947c:	47 25       	rotcr	r7
    947e:	6e 33       	mov	r3,r14
    9480:	00 08       	clrt	
    9482:	3e 3e       	addc	r3,r14
    9484:	6d 23       	mov	r2,r13
    9486:	3d 2e       	addc	r2,r13
    9488:	78 ff       	add	#-1,r8
    948a:	28 88       	tst	r8,r8
    948c:	62 d3       	mov	r13,r2
    948e:	63 e3       	mov	r14,r3
    9490:	8b e6       	bf	9460 <___divdf3+0xc0>
    9492:	91 2d       	mov.w	94f0 <___divdf3+0x150>,r1	! 80
    9494:	67 5c       	extu.b	r5,r7
    9496:	37 10       	cmp/eq	r1,r7
    9498:	8b 0f       	bf	94ba <___divdf3+0x11a>
    949a:	91 2a       	mov.w	94f2 <___divdf3+0x152>,r1	! 100
    949c:	21 58       	tst	r5,r1
    949e:	8b 0c       	bf	94ba <___divdf3+0x11a>
    94a0:	2d d8       	tst	r13,r13
    94a2:	8b 01       	bf	94a8 <___divdf3+0x108>
    94a4:	2e e8       	tst	r14,r14
    94a6:	89 08       	bt	94ba <___divdf3+0x11a>
    94a8:	93 22       	mov.w	94f0 <___divdf3+0x150>,r3	! 80
    94aa:	00 08       	clrt	
    94ac:	91 22       	mov.w	94f4 <___divdf3+0x154>,r1	! ff00
    94ae:	33 5e       	addc	r5,r3
    94b0:	e2 00       	mov	#0,r2
    94b2:	32 4e       	addc	r4,r2
    94b4:	65 33       	mov	r3,r5
    94b6:	64 23       	mov	r2,r4
    94b8:	25 19       	and	r1,r5
    94ba:	1f 47       	mov.l	r4,@(28,r15)
    94bc:	64 f3       	mov	r15,r4
    94be:	1f 58       	mov.l	r5,@(32,r15)
    94c0:	af 8b       	bra	93da <___divdf3+0x3a>
    94c2:	74 10       	add	#16,r4
    94c4:	e2 00       	mov	#0,r2
    94c6:	e3 00       	mov	#0,r3
    94c8:	e1 00       	mov	#0,r1
    94ca:	64 f3       	mov	r15,r4
    94cc:	1f 27       	mov.l	r2,@(28,r15)
    94ce:	74 10       	add	#16,r4
    94d0:	1f 38       	mov.l	r3,@(32,r15)
    94d2:	af 82       	bra	93da <___divdf3+0x3a>
    94d4:	1f 16       	mov.l	r1,@(24,r15)
    94d6:	00 09       	nop	
    94d8:	e1 04       	mov	#4,r1
    94da:	af 7c       	bra	93d6 <___divdf3+0x36>
    94dc:	1f 14       	mov.l	r1,@(16,r15)
    94de:	00 09       	nop	
    94e0:	33 12       	cmp/hs	r1,r3
    94e2:	89 b6       	bt	9452 <___divdf3+0xb2>
    94e4:	af ad       	bra	9442 <___divdf3+0xa2>
    94e6:	66 33       	mov	r3,r6
    94e8:	3c 36       	cmp/hi	r3,r12
    94ea:	89 c6       	bt	947a <___divdf3+0xda>
    94ec:	af bd       	bra	946a <___divdf3+0xca>
    94ee:	6b 43       	mov	r4,r11
    94f0:	00 80       	.word 0x0080
    94f2:	01 00       	.word 0x0100
    94f4:	ff 00       	.word 0xff00
    94f6:	00 09       	nop	
    94f8:	00 00       	.word 0x0000
    94fa:	9c 84       	mov.w	9606 <___gedf2+0x2>,r12	! 4f22
    94fc:	00 00       	.word 0x0000
    94fe:	9a f8       	mov.w	96f2 <___floatsidf+0x46>,r10	! 6903
    9500:	00 00       	.word 0x0000
    9502:	9f f8       	mov.w	96f6 <___floatsidf+0x4a>,r15	! d011
    9504:	10 00       	mov.l	r0,@(0,r0)
	...

00009508 <___eqdf2>:
    9508:	2f 86       	mov.l	r8,@-r15
    950a:	4f 22       	sts.l	pr,@-r15
    950c:	d8 11       	mov.l	9554 <___eqdf2+0x4c>,r8	! 9c84 <___unpack_d>
    950e:	7f c8       	add	#-56,r15
    9510:	1f 51       	mov.l	r5,@(4,r15)
    9512:	65 f3       	mov	r15,r5
    9514:	2f 42       	mov.l	r4,@r15
    9516:	75 10       	add	#16,r5
    9518:	1f 62       	mov.l	r6,@(8,r15)
    951a:	64 f3       	mov	r15,r4
    951c:	48 0b       	jsr	@r8
    951e:	1f 73       	mov.l	r7,@(12,r15)
    9520:	64 f3       	mov	r15,r4
    9522:	65 f3       	mov	r15,r5
    9524:	74 08       	add	#8,r4
    9526:	48 0b       	jsr	@r8
    9528:	75 24       	add	#36,r5
    952a:	52 f4       	mov.l	@(16,r15),r2
    952c:	e1 01       	mov	#1,r1
    952e:	32 16       	cmp/hi	r1,r2
    9530:	8b 0e       	bf	9550 <___eqdf2+0x48>
    9532:	52 f9       	mov.l	@(36,r15),r2
    9534:	32 16       	cmp/hi	r1,r2
    9536:	8b 0b       	bf	9550 <___eqdf2+0x48>
    9538:	d0 07       	mov.l	9558 <___eqdf2+0x50>,r0	! 9d60 <___fpcmp_parts_d>
    953a:	64 f3       	mov	r15,r4
    953c:	65 f3       	mov	r15,r5
    953e:	74 10       	add	#16,r4
    9540:	40 0b       	jsr	@r0
    9542:	75 24       	add	#36,r5
    9544:	7f 38       	add	#56,r15
    9546:	4f 26       	lds.l	@r15+,pr
    9548:	68 f6       	mov.l	@r15+,r8
    954a:	00 0b       	rts	
    954c:	00 09       	nop	
    954e:	00 09       	nop	
    9550:	af f8       	bra	9544 <___eqdf2+0x3c>
    9552:	e0 01       	mov	#1,r0
    9554:	00 00       	.word 0x0000
    9556:	9c 84       	mov.w	9662 <___ltdf2+0xa>,r12	! 65f3
    9558:	00 00       	.word 0x0000
    955a:	9d 60       	mov.w	961e <___gedf2+0x1a>,r13	! 65f3

0000955c <___nedf2>:
    955c:	2f 86       	mov.l	r8,@-r15
    955e:	4f 22       	sts.l	pr,@-r15
    9560:	d8 11       	mov.l	95a8 <___nedf2+0x4c>,r8	! 9c84 <___unpack_d>
    9562:	7f c8       	add	#-56,r15
    9564:	1f 51       	mov.l	r5,@(4,r15)
    9566:	65 f3       	mov	r15,r5
    9568:	2f 42       	mov.l	r4,@r15
    956a:	75 10       	add	#16,r5
    956c:	1f 62       	mov.l	r6,@(8,r15)
    956e:	64 f3       	mov	r15,r4
    9570:	48 0b       	jsr	@r8
    9572:	1f 73       	mov.l	r7,@(12,r15)
    9574:	64 f3       	mov	r15,r4
    9576:	65 f3       	mov	r15,r5
    9578:	74 08       	add	#8,r4
    957a:	48 0b       	jsr	@r8
    957c:	75 24       	add	#36,r5
    957e:	52 f4       	mov.l	@(16,r15),r2
    9580:	e1 01       	mov	#1,r1
    9582:	32 16       	cmp/hi	r1,r2
    9584:	8b 0e       	bf	95a4 <___nedf2+0x48>
    9586:	52 f9       	mov.l	@(36,r15),r2
    9588:	32 16       	cmp/hi	r1,r2
    958a:	8b 0b       	bf	95a4 <___nedf2+0x48>
    958c:	d0 07       	mov.l	95ac <___nedf2+0x50>,r0	! 9d60 <___fpcmp_parts_d>
    958e:	64 f3       	mov	r15,r4
    9590:	65 f3       	mov	r15,r5
    9592:	74 10       	add	#16,r4
    9594:	40 0b       	jsr	@r0
    9596:	75 24       	add	#36,r5
    9598:	7f 38       	add	#56,r15
    959a:	4f 26       	lds.l	@r15+,pr
    959c:	68 f6       	mov.l	@r15+,r8
    959e:	00 0b       	rts	
    95a0:	00 09       	nop	
    95a2:	00 09       	nop	
    95a4:	af f8       	bra	9598 <___nedf2+0x3c>
    95a6:	e0 01       	mov	#1,r0
    95a8:	00 00       	.word 0x0000
    95aa:	9c 84       	mov.w	96b6 <___floatsidf+0xa>,r12	! 2f12
    95ac:	00 00       	.word 0x0000
    95ae:	9d 60       	mov.w	9672 <___ltdf2+0x1a>,r13	! 65f3

000095b0 <___gtdf2>:
    95b0:	2f 86       	mov.l	r8,@-r15
    95b2:	4f 22       	sts.l	pr,@-r15
    95b4:	d8 11       	mov.l	95fc <___gtdf2+0x4c>,r8	! 9c84 <___unpack_d>
    95b6:	7f c8       	add	#-56,r15
    95b8:	1f 51       	mov.l	r5,@(4,r15)
    95ba:	65 f3       	mov	r15,r5
    95bc:	2f 42       	mov.l	r4,@r15
    95be:	75 10       	add	#16,r5
    95c0:	1f 62       	mov.l	r6,@(8,r15)
    95c2:	64 f3       	mov	r15,r4
    95c4:	48 0b       	jsr	@r8
    95c6:	1f 73       	mov.l	r7,@(12,r15)
    95c8:	64 f3       	mov	r15,r4
    95ca:	65 f3       	mov	r15,r5
    95cc:	74 08       	add	#8,r4
    95ce:	48 0b       	jsr	@r8
    95d0:	75 24       	add	#36,r5
    95d2:	52 f4       	mov.l	@(16,r15),r2
    95d4:	e1 01       	mov	#1,r1
    95d6:	32 16       	cmp/hi	r1,r2
    95d8:	8b 0e       	bf	95f8 <___gtdf2+0x48>
    95da:	52 f9       	mov.l	@(36,r15),r2
    95dc:	32 16       	cmp/hi	r1,r2
    95de:	8b 0b       	bf	95f8 <___gtdf2+0x48>
    95e0:	d0 07       	mov.l	9600 <___gtdf2+0x50>,r0	! 9d60 <___fpcmp_parts_d>
    95e2:	64 f3       	mov	r15,r4
    95e4:	65 f3       	mov	r15,r5
    95e6:	74 10       	add	#16,r4
    95e8:	40 0b       	jsr	@r0
    95ea:	75 24       	add	#36,r5
    95ec:	7f 38       	add	#56,r15
    95ee:	4f 26       	lds.l	@r15+,pr
    95f0:	68 f6       	mov.l	@r15+,r8
    95f2:	00 0b       	rts	
    95f4:	00 09       	nop	
    95f6:	00 09       	nop	
    95f8:	af f8       	bra	95ec <___gtdf2+0x3c>
    95fa:	e0 ff       	mov	#-1,r0
    95fc:	00 00       	.word 0x0000
    95fe:	9c 84       	mov.w	970a <___floatsidf+0x5e>,r12	! 9
    9600:	00 00       	.word 0x0000
    9602:	9d 60       	mov.w	96c6 <___floatsidf+0x1a>,r13	! 2f12

00009604 <___gedf2>:
    9604:	2f 86       	mov.l	r8,@-r15
    9606:	4f 22       	sts.l	pr,@-r15
    9608:	d8 11       	mov.l	9650 <___gedf2+0x4c>,r8	! 9c84 <___unpack_d>
    960a:	7f c8       	add	#-56,r15
    960c:	1f 51       	mov.l	r5,@(4,r15)
    960e:	65 f3       	mov	r15,r5
    9610:	2f 42       	mov.l	r4,@r15
    9612:	75 10       	add	#16,r5
    9614:	1f 62       	mov.l	r6,@(8,r15)
    9616:	64 f3       	mov	r15,r4
    9618:	48 0b       	jsr	@r8
    961a:	1f 73       	mov.l	r7,@(12,r15)
    961c:	64 f3       	mov	r15,r4
    961e:	65 f3       	mov	r15,r5
    9620:	74 08       	add	#8,r4
    9622:	48 0b       	jsr	@r8
    9624:	75 24       	add	#36,r5
    9626:	52 f4       	mov.l	@(16,r15),r2
    9628:	e1 01       	mov	#1,r1
    962a:	32 16       	cmp/hi	r1,r2
    962c:	8b 0e       	bf	964c <___gedf2+0x48>
    962e:	52 f9       	mov.l	@(36,r15),r2
    9630:	32 16       	cmp/hi	r1,r2
    9632:	8b 0b       	bf	964c <___gedf2+0x48>
    9634:	d0 07       	mov.l	9654 <___gedf2+0x50>,r0	! 9d60 <___fpcmp_parts_d>
    9636:	64 f3       	mov	r15,r4
    9638:	65 f3       	mov	r15,r5
    963a:	74 10       	add	#16,r4
    963c:	40 0b       	jsr	@r0
    963e:	75 24       	add	#36,r5
    9640:	7f 38       	add	#56,r15
    9642:	4f 26       	lds.l	@r15+,pr
    9644:	68 f6       	mov.l	@r15+,r8
    9646:	00 0b       	rts	
    9648:	00 09       	nop	
    964a:	00 09       	nop	
    964c:	af f8       	bra	9640 <___gedf2+0x3c>
    964e:	e0 ff       	mov	#-1,r0
    9650:	00 00       	.word 0x0000
    9652:	9c 84       	mov.w	975e <___fixdfsi+0x16>,r12	! 8923
    9654:	00 00       	.word 0x0000
    9656:	9d 60       	mov.w	971a <___floatsidf+0x6e>,r13	! 6603

00009658 <___ltdf2>:
    9658:	2f 86       	mov.l	r8,@-r15
    965a:	4f 22       	sts.l	pr,@-r15
    965c:	d8 11       	mov.l	96a4 <___ltdf2+0x4c>,r8	! 9c84 <___unpack_d>
    965e:	7f c8       	add	#-56,r15
    9660:	1f 51       	mov.l	r5,@(4,r15)
    9662:	65 f3       	mov	r15,r5
    9664:	2f 42       	mov.l	r4,@r15
    9666:	75 10       	add	#16,r5
    9668:	1f 62       	mov.l	r6,@(8,r15)
    966a:	64 f3       	mov	r15,r4
    966c:	48 0b       	jsr	@r8
    966e:	1f 73       	mov.l	r7,@(12,r15)
    9670:	64 f3       	mov	r15,r4
    9672:	65 f3       	mov	r15,r5
    9674:	74 08       	add	#8,r4
    9676:	48 0b       	jsr	@r8
    9678:	75 24       	add	#36,r5
    967a:	52 f4       	mov.l	@(16,r15),r2
    967c:	e1 01       	mov	#1,r1
    967e:	32 16       	cmp/hi	r1,r2
    9680:	8b 0e       	bf	96a0 <___ltdf2+0x48>
    9682:	52 f9       	mov.l	@(36,r15),r2
    9684:	32 16       	cmp/hi	r1,r2
    9686:	8b 0b       	bf	96a0 <___ltdf2+0x48>
    9688:	d0 07       	mov.l	96a8 <___ltdf2+0x50>,r0	! 9d60 <___fpcmp_parts_d>
    968a:	64 f3       	mov	r15,r4
    968c:	65 f3       	mov	r15,r5
    968e:	74 10       	add	#16,r4
    9690:	40 0b       	jsr	@r0
    9692:	75 24       	add	#36,r5
    9694:	7f 38       	add	#56,r15
    9696:	4f 26       	lds.l	@r15+,pr
    9698:	68 f6       	mov.l	@r15+,r8
    969a:	00 0b       	rts	
    969c:	00 09       	nop	
    969e:	00 09       	nop	
    96a0:	af f8       	bra	9694 <___ltdf2+0x3c>
    96a2:	e0 01       	mov	#1,r0
    96a4:	00 00       	.word 0x0000
    96a6:	9c 84       	mov.w	97b2 <___fixdfsi+0x6a>,r12	! 9
    96a8:	00 00       	.word 0x0000
    96aa:	9d 60       	mov.w	976e <___fixdfsi+0x26>,r13	! 8b1b

000096ac <___floatsidf>:
    96ac:	2f 86       	mov.l	r8,@-r15
    96ae:	e1 03       	mov	#3,r1
    96b0:	2f 96       	mov.l	r9,@-r15
    96b2:	4f 22       	sts.l	pr,@-r15
    96b4:	7f ec       	add	#-20,r15
    96b6:	2f 12       	mov.l	r1,@r15
    96b8:	61 43       	mov	r4,r1
    96ba:	41 04       	rotl	r1
    96bc:	01 29       	movt	r1
    96be:	1f 11       	mov.l	r1,@(4,r15)
    96c0:	24 48       	tst	r4,r4
    96c2:	8b 0b       	bf	96dc <___floatsidf+0x30>
    96c4:	e1 02       	mov	#2,r1
    96c6:	2f 12       	mov.l	r1,@r15
    96c8:	d0 1a       	mov.l	9734 <___floatsidf+0x88>,r0	! 9af8 <___pack_d>
    96ca:	40 0b       	jsr	@r0
    96cc:	64 f3       	mov	r15,r4
    96ce:	7f 14       	add	#20,r15
    96d0:	4f 26       	lds.l	@r15+,pr
    96d2:	69 f6       	mov.l	@r15+,r9
    96d4:	68 f6       	mov.l	@r15+,r8
    96d6:	00 0b       	rts	
    96d8:	00 09       	nop	
    96da:	00 09       	nop	
    96dc:	e2 3c       	mov	#60,r2
    96de:	1f 22       	mov.l	r2,@(8,r15)
    96e0:	21 18       	tst	r1,r1
    96e2:	8b 13       	bf	970c <___floatsidf+0x60>
    96e4:	d0 14       	mov.l	9738 <___floatsidf+0x8c>,r0	! 9a64 <___clzsi2>
    96e6:	68 43       	mov	r4,r8
    96e8:	40 0b       	jsr	@r0
    96ea:	64 83       	mov	r8,r4
    96ec:	66 03       	mov	r0,r6
    96ee:	76 1d       	add	#29,r6
    96f0:	46 15       	cmp/pl	r6
    96f2:	69 03       	mov	r0,r9
    96f4:	8b 16       	bf	9724 <___floatsidf+0x78>
    96f6:	d0 11       	mov.l	973c <___floatsidf+0x90>,r0	! 99f4 <___ashldi3>
    96f8:	e4 00       	mov	#0,r4
    96fa:	40 0b       	jsr	@r0
    96fc:	65 83       	mov	r8,r5
    96fe:	1f 03       	mov.l	r0,@(12,r15)
    9700:	60 9b       	neg	r9,r0
    9702:	70 1f       	add	#31,r0
    9704:	1f 14       	mov.l	r1,@(16,r15)
    9706:	af df       	bra	96c8 <___floatsidf+0x1c>
    9708:	1f 02       	mov.l	r0,@(8,r15)
    970a:	00 09       	nop	
    970c:	d1 0c       	mov.l	9740 <___floatsidf+0x94>,r1	! 80000000
    970e:	34 10       	cmp/eq	r1,r4
    9710:	89 0c       	bt	972c <___floatsidf+0x80>
    9712:	d0 09       	mov.l	9738 <___floatsidf+0x8c>,r0	! 9a64 <___clzsi2>
    9714:	68 4b       	neg	r4,r8
    9716:	40 0b       	jsr	@r0
    9718:	64 83       	mov	r8,r4
    971a:	66 03       	mov	r0,r6
    971c:	76 1d       	add	#29,r6
    971e:	46 15       	cmp/pl	r6
    9720:	69 03       	mov	r0,r9
    9722:	89 e8       	bt	96f6 <___floatsidf+0x4a>
    9724:	e1 00       	mov	#0,r1
    9726:	1f 13       	mov.l	r1,@(12,r15)
    9728:	af ce       	bra	96c8 <___floatsidf+0x1c>
    972a:	1f 84       	mov.l	r8,@(16,r15)
    972c:	d0 05       	mov.l	9744 <___floatsidf+0x98>,r0	! c1e00000
    972e:	af ce       	bra	96ce <___floatsidf+0x22>
    9730:	e1 00       	mov	#0,r1
    9732:	00 09       	nop	
    9734:	00 00       	.word 0x0000
    9736:	9a f8       	mov.w	992a <___muldi3+0x3a>,r10	! 65d3
    9738:	00 00       	.word 0x0000
    973a:	9a 64       	mov.w	9806 <___floatunsidf+0x46>,r10	! 64f3
    973c:	00 00       	.word 0x0000
    973e:	99 f4       	mov.w	992a <___muldi3+0x3a>,r9	! 65d3
    9740:	80 00       	mov.b	r0,@(0,r0)
    9742:	00 00       	.word 0x0000
    9744:	c1 e0       	mov.w	r0,@(448,gbr)
	...

00009748 <___fixdfsi>:
    9748:	4f 22       	sts.l	pr,@-r15
    974a:	d1 1a       	mov.l	97b4 <___fixdfsi+0x6c>,r1	! 9c84 <___unpack_d>
    974c:	7f e4       	add	#-28,r15
    974e:	1f 51       	mov.l	r5,@(4,r15)
    9750:	65 f3       	mov	r15,r5
    9752:	2f 42       	mov.l	r4,@r15
    9754:	75 08       	add	#8,r5
    9756:	41 0b       	jsr	@r1
    9758:	64 f3       	mov	r15,r4
    975a:	50 f2       	mov.l	@(8,r15),r0
    975c:	88 02       	cmp/eq	#2,r0
    975e:	89 23       	bt	97a8 <___fixdfsi+0x60>
    9760:	e1 01       	mov	#1,r1
    9762:	30 16       	cmp/hi	r1,r0
    9764:	8b 20       	bf	97a8 <___fixdfsi+0x60>
    9766:	88 04       	cmp/eq	#4,r0
    9768:	89 05       	bt	9776 <___fixdfsi+0x2e>
    976a:	56 f4       	mov.l	@(16,r15),r6
    976c:	46 11       	cmp/pz	r6
    976e:	8b 1b       	bf	97a8 <___fixdfsi+0x60>
    9770:	e1 1e       	mov	#30,r1
    9772:	36 17       	cmp/gt	r1,r6
    9774:	8b 08       	bf	9788 <___fixdfsi+0x40>
    9776:	51 f3       	mov.l	@(12,r15),r1
    9778:	d0 0f       	mov.l	97b8 <___fixdfsi+0x70>,r0	! 80000000
    977a:	21 18       	tst	r1,r1
    977c:	01 29       	movt	r1
    977e:	30 18       	sub	r1,r0
    9780:	7f 1c       	add	#28,r15
    9782:	4f 26       	lds.l	@r15+,pr
    9784:	00 0b       	rts	
    9786:	00 09       	nop	
    9788:	d0 0c       	mov.l	97bc <___fixdfsi+0x74>,r0	! 9988 <___lshrdi3>
    978a:	66 6b       	neg	r6,r6
    978c:	54 f5       	mov.l	@(20,r15),r4
    978e:	76 3c       	add	#60,r6
    9790:	40 0b       	jsr	@r0
    9792:	55 f6       	mov.l	@(24,r15),r5
    9794:	60 13       	mov	r1,r0
    9796:	51 f3       	mov.l	@(12,r15),r1
    9798:	21 18       	tst	r1,r1
    979a:	89 f1       	bt	9780 <___fixdfsi+0x38>
    979c:	60 0b       	neg	r0,r0
    979e:	7f 1c       	add	#28,r15
    97a0:	4f 26       	lds.l	@r15+,pr
    97a2:	00 0b       	rts	
    97a4:	00 09       	nop	
    97a6:	00 09       	nop	
    97a8:	e0 00       	mov	#0,r0
    97aa:	7f 1c       	add	#28,r15
    97ac:	4f 26       	lds.l	@r15+,pr
    97ae:	00 0b       	rts	
    97b0:	00 09       	nop	
    97b2:	00 09       	nop	
    97b4:	00 00       	.word 0x0000
    97b6:	9c 84       	mov.w	98c2 <___udiv_qrnnd_16+0x32>,r12	! 6009
    97b8:	80 00       	mov.b	r0,@(0,r0)
    97ba:	00 00       	.word 0x0000
    97bc:	00 00       	.word 0x0000
    97be:	99 88       	mov.w	98d2 <___udiv_qrnnd_16+0x42>,r9	! 71ff

000097c0 <___floatunsidf>:
    97c0:	2f 86       	mov.l	r8,@-r15
    97c2:	e1 00       	mov	#0,r1
    97c4:	2f 96       	mov.l	r9,@-r15
    97c6:	24 48       	tst	r4,r4
    97c8:	2f a6       	mov.l	r10,@-r15
    97ca:	68 43       	mov	r4,r8
    97cc:	2f b6       	mov.l	r11,@-r15
    97ce:	4f 22       	sts.l	pr,@-r15
    97d0:	7f ec       	add	#-20,r15
    97d2:	1f 11       	mov.l	r1,@(4,r15)
    97d4:	89 20       	bt	9818 <___floatunsidf+0x58>
    97d6:	d0 29       	mov.l	987c <___floatunsidf+0xbc>,r0	! 9a64 <___clzsi2>
    97d8:	e1 03       	mov	#3,r1
    97da:	2f 12       	mov.l	r1,@r15
    97dc:	e1 3c       	mov	#60,r1
    97de:	40 0b       	jsr	@r0
    97e0:	1f 12       	mov.l	r1,@(8,r15)
    97e2:	66 03       	mov	r0,r6
    97e4:	76 1d       	add	#29,r6
    97e6:	46 11       	cmp/pz	r6
    97e8:	69 03       	mov	r0,r9
    97ea:	8b 23       	bf	9834 <___floatunsidf+0x74>
    97ec:	26 68       	tst	r6,r6
    97ee:	89 41       	bt	9874 <___floatunsidf+0xb4>
    97f0:	d0 23       	mov.l	9880 <___floatunsidf+0xc0>,r0	! 99f4 <___ashldi3>
    97f2:	69 9b       	neg	r9,r9
    97f4:	e4 00       	mov	#0,r4
    97f6:	65 83       	mov	r8,r5
    97f8:	40 0b       	jsr	@r0
    97fa:	79 1f       	add	#31,r9
    97fc:	1f 03       	mov.l	r0,@(12,r15)
    97fe:	1f 14       	mov.l	r1,@(16,r15)
    9800:	1f 92       	mov.l	r9,@(8,r15)
    9802:	d0 20       	mov.l	9884 <___floatunsidf+0xc4>,r0	! 9af8 <___pack_d>
    9804:	40 0b       	jsr	@r0
    9806:	64 f3       	mov	r15,r4
    9808:	7f 14       	add	#20,r15
    980a:	4f 26       	lds.l	@r15+,pr
    980c:	6b f6       	mov.l	@r15+,r11
    980e:	6a f6       	mov.l	@r15+,r10
    9810:	69 f6       	mov.l	@r15+,r9
    9812:	68 f6       	mov.l	@r15+,r8
    9814:	00 0b       	rts	
    9816:	00 09       	nop	
    9818:	d0 1a       	mov.l	9884 <___floatunsidf+0xc4>,r0	! 9af8 <___pack_d>
    981a:	e1 02       	mov	#2,r1
    981c:	2f 12       	mov.l	r1,@r15
    981e:	40 0b       	jsr	@r0
    9820:	64 f3       	mov	r15,r4
    9822:	7f 14       	add	#20,r15
    9824:	4f 26       	lds.l	@r15+,pr
    9826:	6b f6       	mov.l	@r15+,r11
    9828:	6a f6       	mov.l	@r15+,r10
    982a:	69 f6       	mov.l	@r15+,r9
    982c:	68 f6       	mov.l	@r15+,r8
    982e:	00 0b       	rts	
    9830:	00 09       	nop	
    9832:	00 09       	nop	
    9834:	d0 12       	mov.l	9880 <___floatunsidf+0xc0>,r0	! 99f4 <___ashldi3>
    9836:	6a 6b       	neg	r6,r10
    9838:	66 a3       	mov	r10,r6
    983a:	e4 00       	mov	#0,r4
    983c:	40 0b       	jsr	@r0
    983e:	e5 01       	mov	#1,r5
    9840:	71 ff       	add	#-1,r1
    9842:	d0 11       	mov.l	9888 <___floatunsidf+0xc8>,r0	! 9988 <___lshrdi3>
    9844:	21 88       	tst	r8,r1
    9846:	e1 ff       	mov	#-1,r1
    9848:	6b 1a       	negc	r1,r11
    984a:	65 83       	mov	r8,r5
    984c:	66 a3       	mov	r10,r6
    984e:	40 0b       	jsr	@r0
    9850:	e4 00       	mov	#0,r4
    9852:	1f 03       	mov.l	r0,@(12,r15)
    9854:	69 9b       	neg	r9,r9
    9856:	d0 0b       	mov.l	9884 <___floatunsidf+0xc4>,r0	! 9af8 <___pack_d>
    9858:	21 bb       	or	r11,r1
    985a:	79 1f       	add	#31,r9
    985c:	1f 14       	mov.l	r1,@(16,r15)
    985e:	64 f3       	mov	r15,r4
    9860:	40 0b       	jsr	@r0
    9862:	1f 92       	mov.l	r9,@(8,r15)
    9864:	7f 14       	add	#20,r15
    9866:	4f 26       	lds.l	@r15+,pr
    9868:	6b f6       	mov.l	@r15+,r11
    986a:	6a f6       	mov.l	@r15+,r10
    986c:	69 f6       	mov.l	@r15+,r9
    986e:	68 f6       	mov.l	@r15+,r8
    9870:	00 0b       	rts	
    9872:	00 09       	nop	
    9874:	1f 63       	mov.l	r6,@(12,r15)
    9876:	af c4       	bra	9802 <___floatunsidf+0x42>
    9878:	1f 84       	mov.l	r8,@(16,r15)
    987a:	00 09       	nop	
    987c:	00 00       	.word 0x0000
    987e:	9a 64       	mov.w	994a <___muldi3+0x5a>,r10	! 490b
    9880:	00 00       	.word 0x0000
    9882:	99 f4       	mov.w	9a6e <___clzsi2+0xa>,r9	! 913a
    9884:	00 00       	.word 0x0000
    9886:	9a f8       	mov.w	9a7a <___clzsi2+0x16>,r10	! e818
    9888:	00 00       	.word 0x0000
    988a:	99 88       	mov.w	999e <___lshrdi3+0x16>,r9	! 7920
    988c:	00 00       	.word 0x0000
	...

00009890 <___udiv_qrnnd_16>:
    9890:	00 19       	div0u	
    9892:	30 66       	cmp/hi	r6,r0
    9894:	89 20       	bt	98d8 <___udiv_qrnnd_16+0x48>
    9896:	30 64       	div1	r6,r0
    9898:	30 64       	div1	r6,r0
    989a:	30 64       	div1	r6,r0
    989c:	30 64       	div1	r6,r0
    989e:	30 64       	div1	r6,r0
    98a0:	30 64       	div1	r6,r0
    98a2:	30 64       	div1	r6,r0
    98a4:	30 64       	div1	r6,r0
    98a6:	30 64       	div1	r6,r0
    98a8:	30 64       	div1	r6,r0
    98aa:	30 64       	div1	r6,r0
    98ac:	30 64       	div1	r6,r0
    98ae:	30 64       	div1	r6,r0
    98b0:	30 64       	div1	r6,r0
    98b2:	30 64       	div1	r6,r0
    98b4:	30 64       	div1	r6,r0
    98b6:	61 0d       	extu.w	r0,r1
    98b8:	89 00       	bt	98bc <___udiv_qrnnd_16+0x2c>
    98ba:	30 6c       	add	r6,r0
    98bc:	41 24       	rotcl	r1
    98be:	25 1e       	mulu.w	r1,r5
    98c0:	20 4d       	xtrct	r4,r0
    98c2:	60 09       	swap.w	r0,r0
    98c4:	02 1a       	sts	macl,r2
    98c6:	30 22       	cmp/hs	r2,r0
    98c8:	30 28       	sub	r2,r0
    98ca:	89 0e       	bt	98ea <___udiv_qrnnd_16+0x5a>
    98cc:	30 5e       	addc	r5,r0
    98ce:	71 ff       	add	#-1,r1
    98d0:	89 0b       	bt	98ea <___udiv_qrnnd_16+0x5a>
    98d2:	71 ff       	add	#-1,r1
    98d4:	00 0b       	rts	
    98d6:	30 5c       	add	r5,r0
    98d8:	30 58       	sub	r5,r0
    98da:	61 49       	swap.w	r4,r1
    98dc:	21 0d       	xtrct	r0,r1
    98de:	00 08       	clrt	
    98e0:	60 13       	mov	r1,r0
    98e2:	30 5e       	addc	r5,r0
    98e4:	e1 ff       	mov	#-1,r1
    98e6:	41 29       	shlr16	r1
    98e8:	8b f3       	bf	98d2 <___udiv_qrnnd_16+0x42>
    98ea:	00 0b       	rts	
    98ec:	00 09       	nop	
    98ee:	00 09       	nop	

000098f0 <___muldi3>:
    98f0:	2f 86       	mov.l	r8,@-r15
    98f2:	68 53       	mov	r5,r8
    98f4:	2f 96       	mov.l	r9,@-r15
    98f6:	2f a6       	mov.l	r10,@-r15
    98f8:	6a 53       	mov	r5,r10
    98fa:	2f b6       	mov.l	r11,@-r15
    98fc:	2f c6       	mov.l	r12,@-r15
    98fe:	2f d6       	mov.l	r13,@-r15
    9900:	6d 53       	mov	r5,r13
    9902:	2f e6       	mov.l	r14,@-r15
    9904:	6e 73       	mov	r7,r14
    9906:	dc 1d       	mov.l	997c <___muldi3+0x8c>,r12	! ffff
    9908:	4e 29       	shlr16	r14
    990a:	4f 22       	sts.l	pr,@-r15
    990c:	28 c9       	and	r12,r8
    990e:	d9 1c       	mov.l	9980 <___muldi3+0x90>,r9	! 862c <___mulsi3>
    9910:	2c 79       	and	r7,r12
    9912:	7f fc       	add	#-4,r15
    9914:	65 83       	mov	r8,r5
    9916:	2f 42       	mov.l	r4,@r15
    9918:	49 0b       	jsr	@r9
    991a:	64 c3       	mov	r12,r4
    991c:	6b 03       	mov	r0,r11
    991e:	64 e3       	mov	r14,r4
    9920:	49 0b       	jsr	@r9
    9922:	4d 29       	shlr16	r13
    9924:	68 03       	mov	r0,r8
    9926:	64 c3       	mov	r12,r4
    9928:	49 0b       	jsr	@r9
    992a:	65 d3       	mov	r13,r5
    992c:	6c 03       	mov	r0,r12
    992e:	49 0b       	jsr	@r9
    9930:	64 e3       	mov	r14,r4
    9932:	61 b3       	mov	r11,r1
    9934:	38 cc       	add	r12,r8
    9936:	41 29       	shlr16	r1
    9938:	38 1c       	add	r1,r8
    993a:	3c 86       	cmp/hi	r8,r12
    993c:	8b 01       	bf	9942 <___muldi3+0x52>
    993e:	d1 11       	mov.l	9984 <___muldi3+0x94>,r1	! 10000
    9940:	30 1c       	add	r1,r0
    9942:	6c 83       	mov	r8,r12
    9944:	4c 29       	shlr16	r12
    9946:	3c 0c       	add	r0,r12
    9948:	64 a3       	mov	r10,r4
    994a:	49 0b       	jsr	@r9
    994c:	65 63       	mov	r6,r5
    994e:	66 03       	mov	r0,r6
    9950:	64 73       	mov	r7,r4
    9952:	49 0b       	jsr	@r9
    9954:	65 f2       	mov.l	@r15,r5
    9956:	6b bd       	extu.w	r11,r11
    9958:	36 0c       	add	r0,r6
    995a:	48 28       	shll16	r8
    995c:	38 bc       	add	r11,r8
    995e:	36 cc       	add	r12,r6
    9960:	60 63       	mov	r6,r0
    9962:	61 83       	mov	r8,r1
    9964:	7f 04       	add	#4,r15
    9966:	4f 26       	lds.l	@r15+,pr
    9968:	6e f6       	mov.l	@r15+,r14
    996a:	6d f6       	mov.l	@r15+,r13
    996c:	6c f6       	mov.l	@r15+,r12
    996e:	6b f6       	mov.l	@r15+,r11
    9970:	6a f6       	mov.l	@r15+,r10
    9972:	69 f6       	mov.l	@r15+,r9
    9974:	68 f6       	mov.l	@r15+,r8
    9976:	00 0b       	rts	
    9978:	00 09       	nop	
    997a:	00 09       	nop	
    997c:	00 00       	.word 0x0000
    997e:	ff ff       	.word 0xffff
    9980:	00 00       	.word 0x0000
    9982:	86 2c       	.word 0x862c
    9984:	00 01       	.word 0x0001
	...

00009988 <___lshrdi3>:
    9988:	2f 86       	mov.l	r8,@-r15
    998a:	26 68       	tst	r6,r6
    998c:	2f 96       	mov.l	r9,@-r15
    998e:	68 43       	mov	r4,r8
    9990:	2f a6       	mov.l	r10,@-r15
    9992:	61 53       	mov	r5,r1
    9994:	2f b6       	mov.l	r11,@-r15
    9996:	4f 22       	sts.l	pr,@-r15
    9998:	7f f8       	add	#-8,r15
    999a:	89 16       	bt	99ca <___lshrdi3+0x42>
    999c:	69 6b       	neg	r6,r9
    999e:	79 20       	add	#32,r9
    99a0:	49 15       	cmp/pl	r9
    99a2:	8b 1b       	bf	99dc <___lshrdi3+0x54>
    99a4:	da 11       	mov.l	99ec <___lshrdi3+0x64>,r10	! 85a0 <___lshrsi3>
    99a6:	65 63       	mov	r6,r5
    99a8:	2f 12       	mov.l	r1,@r15
    99aa:	4a 0b       	jsr	@r10
    99ac:	1f 61       	mov.l	r6,@(4,r15)
    99ae:	6b 03       	mov	r0,r11
    99b0:	d0 0f       	mov.l	99f0 <___lshrdi3+0x68>,r0	! 8514 <___ashlsi3>
    99b2:	64 83       	mov	r8,r4
    99b4:	40 0b       	jsr	@r0
    99b6:	65 93       	mov	r9,r5
    99b8:	61 f2       	mov.l	@r15,r1
    99ba:	68 03       	mov	r0,r8
    99bc:	56 f1       	mov.l	@(4,r15),r6
    99be:	64 13       	mov	r1,r4
    99c0:	4a 0b       	jsr	@r10
    99c2:	65 63       	mov	r6,r5
    99c4:	20 8b       	or	r8,r0
    99c6:	61 03       	mov	r0,r1
    99c8:	68 b3       	mov	r11,r8
    99ca:	60 83       	mov	r8,r0
    99cc:	7f 08       	add	#8,r15
    99ce:	4f 26       	lds.l	@r15+,pr
    99d0:	6b f6       	mov.l	@r15+,r11
    99d2:	6a f6       	mov.l	@r15+,r10
    99d4:	69 f6       	mov.l	@r15+,r9
    99d6:	68 f6       	mov.l	@r15+,r8
    99d8:	00 0b       	rts	
    99da:	00 09       	nop	
    99dc:	d0 03       	mov.l	99ec <___lshrdi3+0x64>,r0	! 85a0 <___lshrsi3>
    99de:	eb 00       	mov	#0,r11
    99e0:	40 0b       	jsr	@r0
    99e2:	65 9b       	neg	r9,r5
    99e4:	68 b3       	mov	r11,r8
    99e6:	af f0       	bra	99ca <___lshrdi3+0x42>
    99e8:	61 03       	mov	r0,r1
    99ea:	00 09       	nop	
    99ec:	00 00       	.word 0x0000
    99ee:	85 a0       	mov.w	@(0,r10),r0
    99f0:	00 00       	.word 0x0000
    99f2:	85 14       	mov.w	@(8,r1),r0

000099f4 <___ashldi3>:
    99f4:	2f 86       	mov.l	r8,@-r15
    99f6:	26 68       	tst	r6,r6
    99f8:	2f 96       	mov.l	r9,@-r15
    99fa:	68 43       	mov	r4,r8
    99fc:	2f a6       	mov.l	r10,@-r15
    99fe:	61 53       	mov	r5,r1
    9a00:	2f b6       	mov.l	r11,@-r15
    9a02:	4f 22       	sts.l	pr,@-r15
    9a04:	7f f8       	add	#-8,r15
    9a06:	89 17       	bt	9a38 <___ashldi3+0x44>
    9a08:	69 6b       	neg	r6,r9
    9a0a:	79 20       	add	#32,r9
    9a0c:	49 15       	cmp/pl	r9
    9a0e:	8b 1d       	bf	9a4c <___ashldi3+0x58>
    9a10:	da 12       	mov.l	9a5c <___ashldi3+0x68>,r10	! 8514 <___ashlsi3>
    9a12:	64 53       	mov	r5,r4
    9a14:	2f 62       	mov.l	r6,@r15
    9a16:	65 63       	mov	r6,r5
    9a18:	4a 0b       	jsr	@r10
    9a1a:	1f 11       	mov.l	r1,@(4,r15)
    9a1c:	51 f1       	mov.l	@(4,r15),r1
    9a1e:	6b 03       	mov	r0,r11
    9a20:	d0 0f       	mov.l	9a60 <___ashldi3+0x6c>,r0	! 85a0 <___lshrsi3>
    9a22:	64 13       	mov	r1,r4
    9a24:	40 0b       	jsr	@r0
    9a26:	65 93       	mov	r9,r5
    9a28:	66 f2       	mov.l	@r15,r6
    9a2a:	69 03       	mov	r0,r9
    9a2c:	64 83       	mov	r8,r4
    9a2e:	4a 0b       	jsr	@r10
    9a30:	65 63       	mov	r6,r5
    9a32:	20 9b       	or	r9,r0
    9a34:	68 03       	mov	r0,r8
    9a36:	61 b3       	mov	r11,r1
    9a38:	60 83       	mov	r8,r0
    9a3a:	7f 08       	add	#8,r15
    9a3c:	4f 26       	lds.l	@r15+,pr
    9a3e:	6b f6       	mov.l	@r15+,r11
    9a40:	6a f6       	mov.l	@r15+,r10
    9a42:	69 f6       	mov.l	@r15+,r9
    9a44:	68 f6       	mov.l	@r15+,r8
    9a46:	00 0b       	rts	
    9a48:	00 09       	nop	
    9a4a:	00 09       	nop	
    9a4c:	d0 03       	mov.l	9a5c <___ashldi3+0x68>,r0	! 8514 <___ashlsi3>
    9a4e:	64 53       	mov	r5,r4
    9a50:	eb 00       	mov	#0,r11
    9a52:	40 0b       	jsr	@r0
    9a54:	65 9b       	neg	r9,r5
    9a56:	68 03       	mov	r0,r8
    9a58:	af ee       	bra	9a38 <___ashldi3+0x44>
    9a5a:	61 b3       	mov	r11,r1
    9a5c:	00 00       	.word 0x0000
    9a5e:	85 14       	mov.w	@(8,r1),r0
    9a60:	00 00       	.word 0x0000
    9a62:	85 a0       	mov.w	@(0,r10),r0

00009a64 <___clzsi2>:
    9a64:	d1 20       	mov.l	9ae8 <___clzsi2+0x84>,r1	! ffff
    9a66:	2f 86       	mov.l	r8,@-r15
    9a68:	34 16       	cmp/hi	r1,r4
    9a6a:	4f 22       	sts.l	pr,@-r15
    9a6c:	89 10       	bt	9a90 <___clzsi2+0x2c>
    9a6e:	91 3a       	mov.w	9ae6 <___clzsi2+0x82>,r1	! ff
    9a70:	34 16       	cmp/hi	r1,r4
    9a72:	8b 2b       	bf	9acc <___clzsi2+0x68>
    9a74:	d0 1d       	mov.l	9aec <___clzsi2+0x88>,r0	! 85a0 <___lshrsi3>
    9a76:	e5 08       	mov	#8,r5
    9a78:	40 0b       	jsr	@r0
    9a7a:	e8 18       	mov	#24,r8
    9a7c:	d1 1c       	mov.l	9af0 <___clzsi2+0x8c>,r1	! a00c <___clz_tab>
    9a7e:	01 1c       	mov.b	@(r0,r1),r1
    9a80:	60 83       	mov	r8,r0
    9a82:	61 1c       	extu.b	r1,r1
    9a84:	30 18       	sub	r1,r0
    9a86:	4f 26       	lds.l	@r15+,pr
    9a88:	68 f6       	mov.l	@r15+,r8
    9a8a:	00 0b       	rts	
    9a8c:	00 09       	nop	
    9a8e:	00 09       	nop	
    9a90:	d1 18       	mov.l	9af4 <___clzsi2+0x90>,r1	! ffffff
    9a92:	34 16       	cmp/hi	r1,r4
    9a94:	89 0c       	bt	9ab0 <___clzsi2+0x4c>
    9a96:	d0 15       	mov.l	9aec <___clzsi2+0x88>,r0	! 85a0 <___lshrsi3>
    9a98:	e5 10       	mov	#16,r5
    9a9a:	40 0b       	jsr	@r0
    9a9c:	e8 10       	mov	#16,r8
    9a9e:	d1 14       	mov.l	9af0 <___clzsi2+0x8c>,r1	! a00c <___clz_tab>
    9aa0:	01 1c       	mov.b	@(r0,r1),r1
    9aa2:	60 83       	mov	r8,r0
    9aa4:	61 1c       	extu.b	r1,r1
    9aa6:	30 18       	sub	r1,r0
    9aa8:	4f 26       	lds.l	@r15+,pr
    9aaa:	68 f6       	mov.l	@r15+,r8
    9aac:	00 0b       	rts	
    9aae:	00 09       	nop	
    9ab0:	d0 0e       	mov.l	9aec <___clzsi2+0x88>,r0	! 85a0 <___lshrsi3>
    9ab2:	e5 18       	mov	#24,r5
    9ab4:	40 0b       	jsr	@r0
    9ab6:	e8 08       	mov	#8,r8
    9ab8:	d1 0d       	mov.l	9af0 <___clzsi2+0x8c>,r1	! a00c <___clz_tab>
    9aba:	01 1c       	mov.b	@(r0,r1),r1
    9abc:	60 83       	mov	r8,r0
    9abe:	61 1c       	extu.b	r1,r1
    9ac0:	30 18       	sub	r1,r0
    9ac2:	4f 26       	lds.l	@r15+,pr
    9ac4:	68 f6       	mov.l	@r15+,r8
    9ac6:	00 0b       	rts	
    9ac8:	00 09       	nop	
    9aca:	00 09       	nop	
    9acc:	d0 07       	mov.l	9aec <___clzsi2+0x88>,r0	! 85a0 <___lshrsi3>
    9ace:	e5 00       	mov	#0,r5
    9ad0:	40 0b       	jsr	@r0
    9ad2:	e8 20       	mov	#32,r8
    9ad4:	d1 06       	mov.l	9af0 <___clzsi2+0x8c>,r1	! a00c <___clz_tab>
    9ad6:	01 1c       	mov.b	@(r0,r1),r1
    9ad8:	60 83       	mov	r8,r0
    9ada:	61 1c       	extu.b	r1,r1
    9adc:	30 18       	sub	r1,r0
    9ade:	4f 26       	lds.l	@r15+,pr
    9ae0:	68 f6       	mov.l	@r15+,r8
    9ae2:	00 0b       	rts	
    9ae4:	00 09       	nop	
    9ae6:	00 ff       	.word 0x00ff
    9ae8:	00 00       	.word 0x0000
    9aea:	ff ff       	.word 0xffff
    9aec:	00 00       	.word 0x0000
    9aee:	85 a0       	mov.w	@(0,r10),r0
    9af0:	00 00       	.word 0x0000
    9af2:	a0 0c       	bra	9b0e <___pack_d+0x16>
    9af4:	00 ff       	.word 0x00ff
    9af6:	ff ff       	.word 0xffff

00009af8 <___pack_d>:
    9af8:	2f 86       	mov.l	r8,@-r15
    9afa:	e1 01       	mov	#1,r1
    9afc:	2f 96       	mov.l	r9,@-r15
    9afe:	2f a6       	mov.l	r10,@-r15
    9b00:	2f b6       	mov.l	r11,@-r15
    9b02:	2f c6       	mov.l	r12,@-r15
    9b04:	2f d6       	mov.l	r13,@-r15
    9b06:	4f 22       	sts.l	pr,@-r15
    9b08:	60 42       	mov.l	@r4,r0
    9b0a:	58 43       	mov.l	@(12,r4),r8
    9b0c:	30 16       	cmp/hi	r1,r0
    9b0e:	59 44       	mov.l	@(16,r4),r9
    9b10:	5a 41       	mov.l	@(4,r4),r10
    9b12:	8b 57       	bf	9bc4 <___pack_d+0xcc>
    9b14:	88 04       	cmp/eq	#4,r0
    9b16:	89 4f       	bt	9bb8 <___pack_d+0xc0>
    9b18:	88 02       	cmp/eq	#2,r0
    9b1a:	89 29       	bt	9b70 <___pack_d+0x78>
    9b1c:	28 88       	tst	r8,r8
    9b1e:	89 25       	bt	9b6c <___pack_d+0x74>
    9b20:	51 42       	mov.l	@(8,r4),r1
    9b22:	92 9c       	mov.w	9c5e <___pack_d+0x166>,r2	! fc02
    9b24:	31 23       	cmp/ge	r2,r1
    9b26:	8b 57       	bf	9bd8 <___pack_d+0xe0>
    9b28:	92 9a       	mov.w	9c60 <___pack_d+0x168>,r2	! 3ff
    9b2a:	31 27       	cmp/gt	r2,r1
    9b2c:	89 44       	bt	9bb8 <___pack_d+0xc0>
    9b2e:	93 98       	mov.w	9c62 <___pack_d+0x16a>,r3	! 80
    9b30:	67 9c       	extu.b	r9,r7
    9b32:	e2 00       	mov	#0,r2
    9b34:	37 30       	cmp/eq	r3,r7
    9b36:	8b 31       	bf	9b9c <___pack_d+0xa4>
    9b38:	97 94       	mov.w	9c64 <___pack_d+0x16c>,r7	! 100
    9b3a:	27 98       	tst	r9,r7
    9b3c:	8b 30       	bf	9ba0 <___pack_d+0xa8>
    9b3e:	d2 4a       	mov.l	9c68 <___pack_d+0x170>,r2	! 1fffffff
    9b40:	38 26       	cmp/hi	r2,r8
    9b42:	89 33       	bt	9bac <___pack_d+0xb4>
    9b44:	95 8c       	mov.w	9c60 <___pack_d+0x168>,r5	! 3ff
    9b46:	35 1c       	add	r1,r5
    9b48:	67 83       	mov	r8,r7
    9b4a:	47 28       	shll16	r7
    9b4c:	d6 47       	mov.l	9c6c <___pack_d+0x174>,r6	! fffff
    9b4e:	47 18       	shll8	r7
    9b50:	61 93       	mov	r9,r1
    9b52:	48 19       	shlr8	r8
    9b54:	41 19       	shlr8	r1
    9b56:	62 83       	mov	r8,r2
    9b58:	63 73       	mov	r7,r3
    9b5a:	22 69       	and	r6,r2
    9b5c:	23 1b       	or	r1,r3
    9b5e:	66 53       	mov	r5,r6
    9b60:	46 28       	shll16	r6
    9b62:	46 08       	shll2	r6
    9b64:	46 08       	shll2	r6
    9b66:	a0 07       	bra	9b78 <___pack_d+0x80>
    9b68:	e7 00       	mov	#0,r7
    9b6a:	00 09       	nop	
    9b6c:	29 98       	tst	r9,r9
    9b6e:	8b d7       	bf	9b20 <___pack_d+0x28>
    9b70:	e6 00       	mov	#0,r6
    9b72:	e7 00       	mov	#0,r7
    9b74:	e2 00       	mov	#0,r2
    9b76:	e3 00       	mov	#0,r3
    9b78:	4a 28       	shll16	r10
    9b7a:	22 6b       	or	r6,r2
    9b7c:	4a 01       	shlr	r10
    9b7e:	4a 28       	shll16	r10
    9b80:	60 23       	mov	r2,r0
    9b82:	61 33       	mov	r3,r1
    9b84:	20 ab       	or	r10,r0
    9b86:	21 7b       	or	r7,r1
    9b88:	4f 26       	lds.l	@r15+,pr
    9b8a:	6d f6       	mov.l	@r15+,r13
    9b8c:	6c f6       	mov.l	@r15+,r12
    9b8e:	6b f6       	mov.l	@r15+,r11
    9b90:	6a f6       	mov.l	@r15+,r10
    9b92:	69 f6       	mov.l	@r15+,r9
    9b94:	68 f6       	mov.l	@r15+,r8
    9b96:	00 0b       	rts	
    9b98:	00 09       	nop	
    9b9a:	00 09       	nop	
    9b9c:	e2 00       	mov	#0,r2
    9b9e:	e3 7f       	mov	#127,r3
    9ba0:	00 08       	clrt	
    9ba2:	39 3e       	addc	r3,r9
    9ba4:	38 2e       	addc	r2,r8
    9ba6:	d2 30       	mov.l	9c68 <___pack_d+0x170>,r2	! 1fffffff
    9ba8:	38 26       	cmp/hi	r2,r8
    9baa:	8b cb       	bf	9b44 <___pack_d+0x4c>
    9bac:	95 5b       	mov.w	9c66 <___pack_d+0x16e>,r5	! 400
    9bae:	48 01       	shlr	r8
    9bb0:	49 25       	rotcr	r9
    9bb2:	af c9       	bra	9b48 <___pack_d+0x50>
    9bb4:	35 1c       	add	r1,r5
    9bb6:	00 09       	nop	
    9bb8:	d6 2d       	mov.l	9c70 <___pack_d+0x178>,r6	! 7ff00000
    9bba:	e7 00       	mov	#0,r7
    9bbc:	e2 00       	mov	#0,r2
    9bbe:	af db       	bra	9b78 <___pack_d+0x80>
    9bc0:	e3 00       	mov	#0,r3
    9bc2:	00 09       	nop	
    9bc4:	d7 29       	mov.l	9c6c <___pack_d+0x174>,r7	! fffff
    9bc6:	63 93       	mov	r9,r3
    9bc8:	d1 2a       	mov.l	9c74 <___pack_d+0x17c>,r1	! 80000
    9bca:	27 89       	and	r8,r7
    9bcc:	62 73       	mov	r7,r2
    9bce:	22 1b       	or	r1,r2
    9bd0:	d6 27       	mov.l	9c70 <___pack_d+0x178>,r6	! 7ff00000
    9bd2:	af d1       	bra	9b78 <___pack_d+0x80>
    9bd4:	e7 00       	mov	#0,r7
    9bd6:	00 09       	nop	
    9bd8:	6d 23       	mov	r2,r13
    9bda:	3d 18       	sub	r1,r13
    9bdc:	e1 38       	mov	#56,r1
    9bde:	3d 17       	cmp/gt	r1,r13
    9be0:	89 38       	bt	9c54 <___pack_d+0x15c>
    9be2:	d0 25       	mov.l	9c78 <___pack_d+0x180>,r0	! 9988 <___lshrdi3>
    9be4:	64 83       	mov	r8,r4
    9be6:	65 93       	mov	r9,r5
    9be8:	40 0b       	jsr	@r0
    9bea:	66 d3       	mov	r13,r6
    9bec:	6b 03       	mov	r0,r11
    9bee:	d0 23       	mov.l	9c7c <___pack_d+0x184>,r0	! 99f4 <___ashldi3>
    9bf0:	6c 13       	mov	r1,r12
    9bf2:	66 d3       	mov	r13,r6
    9bf4:	e4 00       	mov	#0,r4
    9bf6:	40 0b       	jsr	@r0
    9bf8:	e5 01       	mov	#1,r5
    9bfa:	e3 ff       	mov	#-1,r3
    9bfc:	00 08       	clrt	
    9bfe:	31 3e       	addc	r3,r1
    9c00:	e2 ff       	mov	#-1,r2
    9c02:	30 2e       	addc	r2,r0
    9c04:	62 03       	mov	r0,r2
    9c06:	21 99       	and	r9,r1
    9c08:	22 89       	and	r8,r2
    9c0a:	22 1b       	or	r1,r2
    9c0c:	22 28       	tst	r2,r2
    9c0e:	e1 ff       	mov	#-1,r1
    9c10:	61 1a       	negc	r1,r1
    9c12:	67 13       	mov	r1,r7
    9c14:	93 25       	mov.w	9c62 <___pack_d+0x16a>,r3	! 80
    9c16:	27 cb       	or	r12,r7
    9c18:	61 7c       	extu.b	r7,r1
    9c1a:	31 30       	cmp/eq	r3,r1
    9c1c:	66 b3       	mov	r11,r6
    9c1e:	e2 00       	mov	#0,r2
    9c20:	8b 1a       	bf	9c58 <___pack_d+0x160>
    9c22:	91 1f       	mov.w	9c64 <___pack_d+0x16c>,r1	! 100
    9c24:	21 78       	tst	r7,r1
    9c26:	89 02       	bt	9c2e <___pack_d+0x136>
    9c28:	00 08       	clrt	
    9c2a:	37 3e       	addc	r3,r7
    9c2c:	36 2e       	addc	r2,r6
    9c2e:	65 63       	mov	r6,r5
    9c30:	45 28       	shll16	r5
    9c32:	45 18       	shll8	r5
    9c34:	61 73       	mov	r7,r1
    9c36:	41 19       	shlr8	r1
    9c38:	63 53       	mov	r5,r3
    9c3a:	23 1b       	or	r1,r3
    9c3c:	d1 10       	mov.l	9c80 <___pack_d+0x188>,r1	! fffffff
    9c3e:	64 63       	mov	r6,r4
    9c40:	d7 0a       	mov.l	9c6c <___pack_d+0x174>,r7	! fffff
    9c42:	44 19       	shlr8	r4
    9c44:	62 43       	mov	r4,r2
    9c46:	36 16       	cmp/hi	r1,r6
    9c48:	22 79       	and	r7,r2
    9c4a:	e5 01       	mov	#1,r5
    9c4c:	89 87       	bt	9b5e <___pack_d+0x66>
    9c4e:	af 86       	bra	9b5e <___pack_d+0x66>
    9c50:	e5 00       	mov	#0,r5
    9c52:	00 09       	nop	
    9c54:	e6 00       	mov	#0,r6
    9c56:	e7 00       	mov	#0,r7
    9c58:	e2 00       	mov	#0,r2
    9c5a:	af e5       	bra	9c28 <___pack_d+0x130>
    9c5c:	e3 7f       	mov	#127,r3
    9c5e:	fc 02       	.word 0xfc02
    9c60:	03 ff       	.word 0x03ff
    9c62:	00 80       	.word 0x0080
    9c64:	01 00       	.word 0x0100
    9c66:	04 00       	.word 0x0400
    9c68:	1f ff       	mov.l	r15,@(60,r15)
    9c6a:	ff ff       	.word 0xffff
    9c6c:	00 0f       	.word 0x000f
    9c6e:	ff ff       	.word 0xffff
    9c70:	7f f0       	add	#-16,r15
    9c72:	00 00       	.word 0x0000
    9c74:	00 08       	clrt	
    9c76:	00 00       	.word 0x0000
    9c78:	00 00       	.word 0x0000
    9c7a:	99 88       	mov.w	9d8e <___fpcmp_parts_d+0x2e>,r9	! 2118
    9c7c:	00 00       	.word 0x0000
    9c7e:	99 f4       	mov.w	9e6a <__global_impure_ptr+0x3e>,r9
    9c80:	0f ff       	.word 0x0fff
    9c82:	ff ff       	.word 0xffff

00009c84 <___unpack_d>:
    9c84:	2f 86       	mov.l	r8,@-r15
    9c86:	62 42       	mov.l	@r4,r2
    9c88:	93 5f       	mov.w	9d4a <___unpack_d+0xc6>,r3	! 7ff
    9c8a:	61 23       	mov	r2,r1
    9c8c:	41 29       	shlr16	r1
    9c8e:	57 41       	mov.l	@(4,r4),r7
    9c90:	41 09       	shlr2	r1
    9c92:	64 23       	mov	r2,r4
    9c94:	44 04       	rotl	r4
    9c96:	d6 2e       	mov.l	9d50 <___unpack_d+0xcc>,r6	! fffff
    9c98:	41 09       	shlr2	r1
    9c9a:	04 29       	movt	r4
    9c9c:	21 39       	and	r3,r1
    9c9e:	15 41       	mov.l	r4,@(4,r5)
    9ca0:	21 18       	tst	r1,r1
    9ca2:	26 29       	and	r2,r6
    9ca4:	8b 22       	bf	9cec <___unpack_d+0x68>
    9ca6:	26 68       	tst	r6,r6
    9ca8:	89 34       	bt	9d14 <___unpack_d+0x90>
    9caa:	61 73       	mov	r7,r1
    9cac:	41 29       	shlr16	r1
    9cae:	41 19       	shlr8	r1
    9cb0:	46 18       	shll8	r6
    9cb2:	62 13       	mov	r1,r2
    9cb4:	e1 03       	mov	#3,r1
    9cb6:	22 6b       	or	r6,r2
    9cb8:	25 12       	mov.l	r1,@r5
    9cba:	63 73       	mov	r7,r3
    9cbc:	91 46       	mov.w	9d4c <___unpack_d+0xc8>,r1	! fc01
    9cbe:	43 18       	shll8	r3
    9cc0:	d6 24       	mov.l	9d54 <___unpack_d+0xd0>,r6	! fffffff
    9cc2:	00 09       	nop	
    9cc4:	68 33       	mov	r3,r8
    9cc6:	00 08       	clrt	
    9cc8:	38 3e       	addc	r3,r8
    9cca:	67 23       	mov	r2,r7
    9ccc:	37 2e       	addc	r2,r7
    9cce:	37 62       	cmp/hs	r6,r7
    9cd0:	64 13       	mov	r1,r4
    9cd2:	62 73       	mov	r7,r2
    9cd4:	63 83       	mov	r8,r3
    9cd6:	71 ff       	add	#-1,r1
    9cd8:	8b f4       	bf	9cc4 <___unpack_d+0x40>
    9cda:	37 66       	cmp/hi	r6,r7
    9cdc:	8b f2       	bf	9cc4 <___unpack_d+0x40>
    9cde:	15 84       	mov.l	r8,@(16,r5)
    9ce0:	15 42       	mov.l	r4,@(8,r5)
    9ce2:	15 23       	mov.l	r2,@(12,r5)
    9ce4:	68 f6       	mov.l	@r15+,r8
    9ce6:	00 0b       	rts	
    9ce8:	00 09       	nop	
    9cea:	00 09       	nop	
    9cec:	31 30       	cmp/eq	r3,r1
    9cee:	89 19       	bt	9d24 <___unpack_d+0xa0>
    9cf0:	92 2c       	mov.w	9d4c <___unpack_d+0xc8>,r2	! fc01
    9cf2:	46 18       	shll8	r6
    9cf4:	32 1c       	add	r1,r2
    9cf6:	e1 03       	mov	#3,r1
    9cf8:	25 12       	mov.l	r1,@r5
    9cfa:	61 73       	mov	r7,r1
    9cfc:	15 22       	mov.l	r2,@(8,r5)
    9cfe:	41 29       	shlr16	r1
    9d00:	d2 15       	mov.l	9d58 <___unpack_d+0xd4>,r2	! 10000000
    9d02:	41 19       	shlr8	r1
    9d04:	21 6b       	or	r6,r1
    9d06:	47 18       	shll8	r7
    9d08:	21 2b       	or	r2,r1
    9d0a:	15 13       	mov.l	r1,@(12,r5)
    9d0c:	15 74       	mov.l	r7,@(16,r5)
    9d0e:	68 f6       	mov.l	@r15+,r8
    9d10:	00 0b       	rts	
    9d12:	00 09       	nop	
    9d14:	27 78       	tst	r7,r7
    9d16:	8b c8       	bf	9caa <___unpack_d+0x26>
    9d18:	e1 02       	mov	#2,r1
    9d1a:	25 12       	mov.l	r1,@r5
    9d1c:	68 f6       	mov.l	@r15+,r8
    9d1e:	00 0b       	rts	
    9d20:	00 09       	nop	
    9d22:	00 09       	nop	
    9d24:	26 68       	tst	r6,r6
    9d26:	89 07       	bt	9d38 <___unpack_d+0xb4>
    9d28:	d1 0c       	mov.l	9d5c <___unpack_d+0xd8>,r1	! 80000
    9d2a:	22 19       	and	r1,r2
    9d2c:	22 28       	tst	r2,r2
    9d2e:	8b 09       	bf	9d44 <___unpack_d+0xc0>
    9d30:	25 22       	mov.l	r2,@r5
    9d32:	15 63       	mov.l	r6,@(12,r5)
    9d34:	af eb       	bra	9d0e <___unpack_d+0x8a>
    9d36:	15 74       	mov.l	r7,@(16,r5)
    9d38:	27 78       	tst	r7,r7
    9d3a:	8b f5       	bf	9d28 <___unpack_d+0xa4>
    9d3c:	e1 04       	mov	#4,r1
    9d3e:	af e6       	bra	9d0e <___unpack_d+0x8a>
    9d40:	25 12       	mov.l	r1,@r5
    9d42:	00 09       	nop	
    9d44:	e1 01       	mov	#1,r1
    9d46:	af f4       	bra	9d32 <___unpack_d+0xae>
    9d48:	25 12       	mov.l	r1,@r5
    9d4a:	07 ff       	.word 0x07ff
    9d4c:	fc 01       	.word 0xfc01
    9d4e:	00 09       	nop	
    9d50:	00 0f       	.word 0x000f
    9d52:	ff ff       	.word 0xffff
    9d54:	0f ff       	.word 0x0fff
    9d56:	ff ff       	.word 0xffff
    9d58:	10 00       	mov.l	r0,@(0,r0)
    9d5a:	00 00       	.word 0x0000
    9d5c:	00 08       	clrt	
	...

00009d60 <___fpcmp_parts_d>:
    9d60:	63 42       	mov.l	@r4,r3
    9d62:	e2 01       	mov	#1,r2
    9d64:	33 26       	cmp/hi	r2,r3
    9d66:	8b 14       	bf	9d92 <___fpcmp_parts_d+0x32>
    9d68:	61 52       	mov.l	@r5,r1
    9d6a:	31 26       	cmp/hi	r2,r1
    9d6c:	8b 11       	bf	9d92 <___fpcmp_parts_d+0x32>
    9d6e:	60 33       	mov	r3,r0
    9d70:	88 04       	cmp/eq	#4,r0
    9d72:	60 13       	mov	r1,r0
    9d74:	89 3a       	bt	9dec <___fpcmp_parts_d+0x8c>
    9d76:	88 04       	cmp/eq	#4,r0
    9d78:	89 10       	bt	9d9c <___fpcmp_parts_d+0x3c>
    9d7a:	60 33       	mov	r3,r0
    9d7c:	88 02       	cmp/eq	#2,r0
    9d7e:	60 13       	mov	r1,r0
    9d80:	89 0a       	bt	9d98 <___fpcmp_parts_d+0x38>
    9d82:	88 02       	cmp/eq	#2,r0
    9d84:	89 10       	bt	9da8 <___fpcmp_parts_d+0x48>
    9d86:	51 41       	mov.l	@(4,r4),r1
    9d88:	52 51       	mov.l	@(4,r5),r2
    9d8a:	31 20       	cmp/eq	r2,r1
    9d8c:	89 12       	bt	9db4 <___fpcmp_parts_d+0x54>
    9d8e:	21 18       	tst	r1,r1
    9d90:	8b 07       	bf	9da2 <___fpcmp_parts_d+0x42>
    9d92:	00 0b       	rts	
    9d94:	e0 01       	mov	#1,r0
    9d96:	00 09       	nop	
    9d98:	88 02       	cmp/eq	#2,r0
    9d9a:	89 21       	bt	9de0 <___fpcmp_parts_d+0x80>
    9d9c:	51 51       	mov.l	@(4,r5),r1
    9d9e:	21 18       	tst	r1,r1
    9da0:	8b f7       	bf	9d92 <___fpcmp_parts_d+0x32>
    9da2:	00 0b       	rts	
    9da4:	e0 ff       	mov	#-1,r0
    9da6:	00 09       	nop	
    9da8:	51 41       	mov.l	@(4,r4),r1
    9daa:	e0 01       	mov	#1,r0
    9dac:	21 18       	tst	r1,r1
    9dae:	8b f8       	bf	9da2 <___fpcmp_parts_d+0x42>
    9db0:	00 0b       	rts	
    9db2:	00 09       	nop	
    9db4:	53 42       	mov.l	@(8,r4),r3
    9db6:	52 52       	mov.l	@(8,r5),r2
    9db8:	33 27       	cmp/gt	r2,r3
    9dba:	89 e8       	bt	9d8e <___fpcmp_parts_d+0x2e>
    9dbc:	33 23       	cmp/ge	r2,r3
    9dbe:	8b 11       	bf	9de4 <___fpcmp_parts_d+0x84>
    9dc0:	53 43       	mov.l	@(12,r4),r3
    9dc2:	52 53       	mov.l	@(12,r5),r2
    9dc4:	56 44       	mov.l	@(16,r4),r6
    9dc6:	33 22       	cmp/hs	r2,r3
    9dc8:	57 54       	mov.l	@(16,r5),r7
    9dca:	8b 03       	bf	9dd4 <___fpcmp_parts_d+0x74>
    9dcc:	33 26       	cmp/hi	r2,r3
    9dce:	89 de       	bt	9d8e <___fpcmp_parts_d+0x2e>
    9dd0:	36 76       	cmp/hi	r7,r6
    9dd2:	89 dc       	bt	9d8e <___fpcmp_parts_d+0x2e>
    9dd4:	33 26       	cmp/hi	r2,r3
    9dd6:	89 03       	bt	9de0 <___fpcmp_parts_d+0x80>
    9dd8:	33 22       	cmp/hs	r2,r3
    9dda:	8b 03       	bf	9de4 <___fpcmp_parts_d+0x84>
    9ddc:	36 72       	cmp/hs	r7,r6
    9dde:	8b 01       	bf	9de4 <___fpcmp_parts_d+0x84>
    9de0:	00 0b       	rts	
    9de2:	e0 00       	mov	#0,r0
    9de4:	21 18       	tst	r1,r1
    9de6:	89 dc       	bt	9da2 <___fpcmp_parts_d+0x42>
    9de8:	af d3       	bra	9d92 <___fpcmp_parts_d+0x32>
    9dea:	00 09       	nop	
    9dec:	88 04       	cmp/eq	#4,r0
    9dee:	8b db       	bf	9da8 <___fpcmp_parts_d+0x48>
    9df0:	50 51       	mov.l	@(4,r5),r0
    9df2:	51 41       	mov.l	@(4,r4),r1
    9df4:	00 0b       	rts	
    9df6:	30 18       	sub	r1,r0
