
spu-elf.x:     file format elf32-spu


Disassembly of section .text:

00001400 <null>:
    1400:	35 00 00 00 	bi	$0
    1404:	00 20 00 00 	lnop

00001408 <return_zero>:
    1408:	40 80 00 03 	il	$3,0
    140c:	35 00 00 00 	bi	$0

00001410 <return_one>:
    1410:	40 80 00 83 	il	$3,1
    1414:	35 00 00 00 	bi	$0

00001418 <return_int_size>:
    1418:	40 80 02 03 	il	$3,4
    141c:	35 00 00 00 	bi	$0

00001420 <return_pointer_size>:
    1420:	40 80 02 03 	il	$3,4
    1424:	35 00 00 00 	bi	$0

00001428 <return_short_size>:
    1428:	40 80 01 03 	il	$3,2
    142c:	35 00 00 00 	bi	$0

00001430 <return_long_size>:
    1430:	40 80 02 03 	il	$3,4
    1434:	35 00 00 00 	bi	$0

00001438 <return_short>:
    1438:	40 bb c4 03 	il	$3,30600	# 7788
    143c:	35 00 00 00 	bi	$0

00001440 <return_long>:
    1440:	41 3b c4 03 	ilhu	$3,30600	# 7788
    1444:	00 20 00 00 	lnop
    1448:	60 cc d5 03 	iohl	$3,39338	# 99aa
    144c:	35 00 00 00 	bi	$0

00001450 <return_short_upper>:
    1450:	40 ff f7 03 	il	$3,-18
    1454:	35 00 00 00 	bi	$0

00001458 <return_long_upper>:
    1458:	41 7f f7 03 	ilhu	$3,65518	# ffee
    145c:	00 20 00 00 	lnop
    1460:	60 ee e6 03 	iohl	$3,56780	# ddcc
    1464:	35 00 00 00 	bi	$0

00001468 <return_arg1>:
    1468:	35 00 00 00 	bi	$0
    146c:	00 20 00 00 	lnop

00001470 <return_arg2>:
    1470:	04 00 02 03 	ori	$3,$4,0
    1474:	35 00 00 00 	bi	$0

00001478 <add>:
    1478:	18 01 01 83 	a	$3,$3,$4
    147c:	35 00 00 00 	bi	$0

00001480 <add3>:
    1480:	18 01 01 83 	a	$3,$3,$4
    1484:	00 20 00 00 	lnop
    1488:	18 01 41 83 	a	$3,$3,$5
    148c:	35 00 00 00 	bi	$0

00001490 <add_two>:
    1490:	1c 00 81 83 	ai	$3,$3,2
    1494:	35 00 00 00 	bi	$0

00001498 <inc>:
    1498:	1c 00 41 83 	ai	$3,$3,1
    149c:	35 00 00 00 	bi	$0

000014a0 <or>:
    14a0:	08 20 c2 03 	or	$3,$4,$3
    14a4:	35 00 00 00 	bi	$0

000014a8 <or_one>:
    14a8:	04 00 41 83 	ori	$3,$3,1
    14ac:	35 00 00 00 	bi	$0

000014b0 <load>:
    14b0:	34 00 01 82 	lqd	$2,0($3)
    14b4:	3b 80 c1 03 	rotqby	$3,$2,$3
    14b8:	35 00 00 00 	bi	$0
    14bc:	00 20 00 00 	lnop

000014c0 <store>:
    14c0:	40 80 7f 84 	il	$4,255	# ff
    14c4:	34 00 01 82 	lqd	$2,0($3)
    14c8:	3e c0 01 85 	cwd	$5,0($3)
    14cc:	b0 c0 82 05 	shufb	$6,$4,$2,$5
    14d0:	24 00 01 86 	stqd	$6,0($3)
    14d4:	35 00 00 00 	bi	$0

000014d8 <load_long>:
    14d8:	34 00 01 82 	lqd	$2,0($3)
    14dc:	3b 80 c1 03 	rotqby	$3,$2,$3
    14e0:	35 00 00 00 	bi	$0
    14e4:	00 20 00 00 	lnop

000014e8 <store_long>:
    14e8:	40 20 00 7f 	nop	$127
    14ec:	35 80 00 09 	hbr	1510 <store_long+0x28>,$0
    14f0:	41 08 91 04 	ilhu	$4,4386	# 1122
    14f4:	34 00 01 82 	lqd	$2,0($3)
    14f8:	40 20 00 7f 	nop	$127
    14fc:	3e c0 01 85 	cwd	$5,0($3)
    1500:	60 99 a2 04 	iohl	$4,13124	# 3344
    1504:	40 20 00 7f 	nop	$127
    1508:	b0 c0 82 05 	shufb	$6,$4,$2,$5
    150c:	24 00 01 86 	stqd	$6,0($3)
    1510:	35 00 00 00 	bi	$0
    1514:	00 20 00 00 	lnop

00001518 <member>:
    1518:	40 80 02 04 	il	$4,4
    151c:	3e c1 01 86 	cwd	$6,4($3)
    1520:	40 80 00 85 	il	$5,1
    1524:	35 80 00 08 	hbr	1544 <member+0x2c>,$0
    1528:	40 80 04 09 	il	$9,8
    152c:	38 81 01 82 	lqx	$2,$3,$4
    1530:	1c 02 01 88 	ai	$8,$3,8
    1534:	b0 e0 82 86 	shufb	$7,$5,$2,$6
    1538:	28 81 01 87 	stqx	$7,$3,$4
    153c:	38 82 41 83 	lqx	$3,$3,$9
    1540:	3b 82 01 83 	rotqby	$3,$3,$8
    1544:	35 00 00 00 	bi	$0

00001548 <get_static_value_addr>:
    1548:	42 0c 08 03 	ila	$3,6160	# 1810
    154c:	35 00 00 00 	bi	$0

00001550 <get_static_value>:
    1550:	33 80 58 03 	lqr	$3,1810 <static_value>	# 1810
    1554:	35 00 00 00 	bi	$0

00001558 <set_static_value>:
    1558:	23 80 57 03 	stqr	$3,1810 <static_value>	# 1810
    155c:	35 00 00 00 	bi	$0

00001560 <set_stack>:
    1560:	40 80 7f 04 	il	$4,254	# fe
    1564:	24 ff 00 81 	stqd	$1,-64($1)
    1568:	1c f0 00 81 	ai	$1,$1,-64
    156c:	3e c0 00 83 	cwd	$3,0($1)
    1570:	40 80 7f 87 	il	$7,255	# ff
    1574:	35 80 00 08 	hbr	1594 <set_stack+0x34>,$0
    1578:	34 00 c0 82 	lqd	$2,48($1)	# 30
    157c:	b0 a0 82 03 	shufb	$5,$4,$2,$3
    1580:	24 00 c0 85 	stqd	$5,48($1)	# 30
    1584:	34 00 80 86 	lqd	$6,32($1)	# 20
    1588:	b1 01 83 83 	shufb	$8,$7,$6,$3
    158c:	24 00 80 88 	stqd	$8,32($1)	# 20
    1590:	1c 10 00 81 	ai	$1,$1,64	# 40
    1594:	35 00 00 00 	bi	$0

00001598 <use_stack>:
    1598:	40 80 7f 04 	il	$4,254	# fe
    159c:	24 ff 00 81 	stqd	$1,-64($1)
    15a0:	1c f0 00 81 	ai	$1,$1,-64
    15a4:	3e c0 00 83 	cwd	$3,0($1)
    15a8:	40 80 7f 87 	il	$7,255	# ff
    15ac:	35 80 00 0b 	hbr	15d8 <use_stack+0x40>,$0
    15b0:	34 00 c0 82 	lqd	$2,48($1)	# 30
    15b4:	b0 a0 82 03 	shufb	$5,$4,$2,$3
    15b8:	24 00 c0 85 	stqd	$5,48($1)	# 30
    15bc:	34 00 80 86 	lqd	$6,32($1)	# 20
    15c0:	b1 01 83 83 	shufb	$8,$7,$6,$3
    15c4:	24 00 80 88 	stqd	$8,32($1)	# 20
    15c8:	34 00 c0 89 	lqd	$9,48($1)	# 30
    15cc:	34 00 80 8a 	lqd	$10,32($1)	# 20
    15d0:	1c 10 00 81 	ai	$1,$1,64	# 40
    15d4:	18 02 84 83 	a	$3,$9,$10
    15d8:	35 00 00 00 	bi	$0
    15dc:	00 20 00 00 	lnop

000015e0 <call_self>:
    15e0:	24 00 40 80 	stqd	$0,16($1)
    15e4:	24 ff 80 81 	stqd	$1,-32($1)
    15e8:	1c f8 00 81 	ai	$1,$1,-32
    15ec:	33 7f fe 80 	brsl	$0,15e0 <call_self>	# 15e0
    15f0:	1c 08 00 81 	ai	$1,$1,32	# 20
    15f4:	34 00 40 80 	lqd	$0,16($1)
    15f8:	35 00 00 00 	bi	$0
    15fc:	00 20 00 00 	lnop

00001600 <call_simple>:
    1600:	24 00 40 80 	stqd	$0,16($1)
    1604:	24 ff 80 81 	stqd	$1,-32($1)
    1608:	1c f8 00 81 	ai	$1,$1,-32
    160c:	33 7f cb 80 	brsl	$0,1468 <return_arg1>	# 1468
    1610:	1c 08 00 81 	ai	$1,$1,32	# 20
    1614:	34 00 40 80 	lqd	$0,16($1)
    1618:	35 00 00 00 	bi	$0
    161c:	00 20 00 00 	lnop

00001620 <call_complex1>:
    1620:	40 80 7f 03 	il	$3,254	# fe
    1624:	24 00 40 80 	stqd	$0,16($1)
    1628:	40 20 00 7f 	nop	$127
    162c:	24 ff 80 81 	stqd	$1,-32($1)
    1630:	1c f8 00 81 	ai	$1,$1,-32
    1634:	33 7f c6 80 	brsl	$0,1468 <return_arg1>	# 1468
    1638:	1c 08 00 81 	ai	$1,$1,32	# 20
    163c:	1c 00 41 83 	ai	$3,$3,1
    1640:	34 00 40 80 	lqd	$0,16($1)
    1644:	35 00 00 00 	bi	$0

00001648 <call_complex2>:
    1648:	40 20 00 7f 	nop	$127
    164c:	12 7f c3 89 	hbrr	1670 <call_complex2+0x28>,1468 <return_arg1>	# 1468
    1650:	04 00 02 03 	ori	$3,$4,0
    1654:	24 ff c0 d0 	stqd	$80,-16($1)
    1658:	04 00 02 50 	ori	$80,$4,0
    165c:	24 00 40 80 	stqd	$0,16($1)
    1660:	40 20 00 7f 	nop	$127
    1664:	24 ff 40 81 	stqd	$1,-48($1)
    1668:	1c f4 00 81 	ai	$1,$1,-48
    166c:	40 20 00 7f 	nop	$127
    1670:	33 7f bf 00 	brsl	$0,1468 <return_arg1>	# 1468
    1674:	1c 0c 00 81 	ai	$1,$1,48	# 30
    1678:	40 20 00 7f 	nop	$127
    167c:	23 80 32 83 	stqr	$3,1810 <static_value>	# 1810
    1680:	04 00 28 03 	ori	$3,$80,0
    1684:	34 00 40 80 	lqd	$0,16($1)
    1688:	34 ff c0 d0 	lqd	$80,-16($1)
    168c:	35 00 00 00 	bi	$0

00001690 <call_pointer>:
    1690:	24 00 40 80 	stqd	$0,16($1)
    1694:	24 ff 80 81 	stqd	$1,-32($1)
    1698:	1c f8 00 81 	ai	$1,$1,-32
    169c:	35 20 01 80 	bisl	$0,$3
    16a0:	1c 08 00 81 	ai	$1,$1,32	# 20
    16a4:	34 00 40 80 	lqd	$0,16($1)
    16a8:	35 00 00 00 	bi	$0
    16ac:	00 20 00 00 	lnop

000016b0 <condition>:
    16b0:	78 01 01 83 	ceq	$3,$3,$4
    16b4:	40 80 00 82 	il	$2,1
    16b8:	7c 00 01 85 	ceqi	$5,$3,0
    16bc:	80 81 01 05 	selb	$4,$2,$4,$5
    16c0:	1c 00 42 03 	ai	$3,$4,1
    16c4:	35 00 00 00 	bi	$0

000016c8 <loop>:
    16c8:	12 00 03 09 	hbrr	16ec <loop+0x24>,16e0 <loop+0x18>	# 16e0
    16cc:	4c 00 01 82 	cgti	$2,$3,0
    16d0:	04 00 01 85 	ori	$5,$3,0
    16d4:	20 00 04 82 	brz	$2,16f8 <loop+0x30>	# 16f8
    16d8:	40 80 00 03 	il	$3,0
    16dc:	40 80 00 06 	il	$6,0
    16e0:	18 01 81 83 	a	$3,$3,$6
    16e4:	1c 00 43 06 	ai	$6,$6,1
    16e8:	78 01 43 04 	ceq	$4,$6,$5
    16ec:	20 7f fe 84 	brz	$4,16e0 <loop+0x18>	# 16e0
    16f0:	40 20 00 7f 	nop	$127
    16f4:	35 00 00 00 	bi	$0
    16f8:	40 80 00 03 	il	$3,0
    16fc:	35 00 00 00 	bi	$0

00001700 <many_args>:
    1700:	18 01 81 83 	a	$3,$3,$6
    1704:	18 02 01 82 	a	$2,$3,$8
    1708:	18 02 81 03 	a	$3,$2,$10
    170c:	35 00 00 00 	bi	$0

00001710 <call_many_args>:
    1710:	40 80 00 03 	il	$3,0
    1714:	12 7f fd 8b 	hbrr	1740 <call_many_args+0x30>,1700 <many_args>	# 1700
    1718:	40 80 00 84 	il	$4,1
    171c:	24 00 40 80 	stqd	$0,16($1)
    1720:	40 80 01 05 	il	$5,2
    1724:	24 ff 80 81 	stqd	$1,-32($1)
    1728:	40 80 01 86 	il	$6,3
    172c:	1c f8 00 81 	ai	$1,$1,-32
    1730:	40 80 02 07 	il	$7,4
    1734:	40 80 02 88 	il	$8,5
    1738:	40 80 03 09 	il	$9,6
    173c:	40 80 03 8a 	il	$10,7
    1740:	33 7f f8 00 	brsl	$0,1700 <many_args>	# 1700
    1744:	1c 08 00 81 	ai	$1,$1,32	# 20
    1748:	34 00 40 80 	lqd	$0,16($1)
    174c:	35 00 00 00 	bi	$0

00001750 <direct>:
    1750:	40 20 00 00 	nop	$0
    1754:	35 00 00 00 	bi	$0

00001758 <binary>:
    1758:	40 20 00 00 	nop	$0
    175c:	00 20 00 00 	lnop
    1760:	00 00 00 00 	stop
    1764:	35 00 00 00 	bi	$0

00001768 <main>:
    1768:	40 80 00 03 	il	$3,0
    176c:	35 00 00 00 	bi	$0
