
microblaze-elf.x:     file format elf32-microblaze


Disassembly of section .text:

00001400 <_start>:
    1400:	30201c90 	addik	r1, r0, 7312	// 1c90 <_end>
    1404:	b9f402b0 	brlid	r15, 688	// 16b4 <main>
    1408:	80000000 	or	r0, r0, r0
    140c:	10a30000 	addk	r5, r3, r0

00001410 <__exit>:
    1410:	10650000 	addk	r3, r5, r0
    1414:	b8000000 	bri	0		// 1414
    1418:	b60f0008 	rtsd	r15, 8
    141c:	80000000 	or	r0, r0, r0

00001420 <__read>:
    1420:	b60f0008 	rtsd	r15, 8
    1424:	80000000 	or	r0, r0, r0

00001428 <__write>:
    1428:	bc670024 	blei	r7, 36		// 144c
    142c:	e8601800 	lwi	r3, r0, 6144	// 1800 <_current>
    1430:	e0a60000 	lbui	r5, r6, 0
    1434:	f0a30000 	sbi	r5, r3, 0
    1438:	30630001 	addik	r3, r3, 1
    143c:	f8601800 	swi	r3, r0, 6144	// 1800 <_current>
    1440:	30c60001 	addik	r6, r6, 1
    1444:	30e7ffff 	addik	r7, r7, -1
    1448:	b8081428 	brai	5160	// 1428 <__write>
    144c:	b60f0008 	rtsd	r15, 8
    1450:	80000000 	or	r0, r0, r0

00001454 <__open>:
    1454:	b60f0008 	rtsd	r15, 8
    1458:	80000000 	or	r0, r0, r0

0000145c <__close>:
    145c:	b60f0008 	rtsd	r15, 8
    1460:	80000000 	or	r0, r0, r0

00001464 <exit>:
    1464:	3021ffe4 	addik	r1, r1, -28
    1468:	f9e10000 	swi	r15, r1, 0
    146c:	b9f4ffa4 	brlid	r15, -92	// 1410 <__exit>
    1470:	80000000 	or	r0, r0, r0

00001474 <write1>:
    1474:	3021ffe4 	addik	r1, r1, -28
    1478:	f9e10000 	swi	r15, r1, 0
    147c:	f0c10024 	sbi	r6, r1, 36
    1480:	30c10024 	addik	r6, r1, 36
    1484:	b9f4ffa4 	brlid	r15, -92	// 1428 <__write>
    1488:	30e00001 	addik	r7, r0, 1
    148c:	e9e10000 	lwi	r15, r1, 0
    1490:	b60f0008 	rtsd	r15, 8
    1494:	3021001c 	addik	r1, r1, 28

00001498 <putchar>:
    1498:	3021ffe0 	addik	r1, r1, -32
    149c:	f9e10000 	swi	r15, r1, 0
    14a0:	fa61001c 	swi	r19, r1, 28
    14a4:	12660000 	addk	r19, r6, r0
    14a8:	b9f4ffcc 	brlid	r15, -52	// 1474 <write1>
    14ac:	a4c600ff 	andi	r6, r6, 255
    14b0:	10730000 	addk	r3, r19, r0
    14b4:	e9e10000 	lwi	r15, r1, 0
    14b8:	ea61001c 	lwi	r19, r1, 28
    14bc:	b60f0008 	rtsd	r15, 8
    14c0:	30210020 	addik	r1, r1, 32

000014c4 <puts>:
    14c4:	3021ffdc 	addik	r1, r1, -36
    14c8:	f9e10000 	swi	r15, r1, 0
    14cc:	fa61001c 	swi	r19, r1, 28
    14d0:	fac10020 	swi	r22, r1, 32
    14d4:	12660000 	addk	r19, r6, r0
    14d8:	e0c60000 	lbui	r6, r6, 0
    14dc:	90c60060 	sext8	r6, r6
    14e0:	be060020 	beqid	r6, 32		// 1500
    14e4:	12c50000 	addk	r22, r5, r0
    14e8:	b9f4ffb0 	brlid	r15, -80	// 1498 <putchar>
    14ec:	10b60000 	addk	r5, r22, r0
    14f0:	32730001 	addik	r19, r19, 1
    14f4:	e0d30000 	lbui	r6, r19, 0
    14f8:	90c60060 	sext8	r6, r6
    14fc:	bc26ffec 	bnei	r6, -20		// 14e8
    1500:	10600000 	addk	r3, r0, r0
    1504:	e9e10000 	lwi	r15, r1, 0
    1508:	ea61001c 	lwi	r19, r1, 28
    150c:	eac10020 	lwi	r22, r1, 32
    1510:	b60f0008 	rtsd	r15, 8
    1514:	30210024 	addik	r1, r1, 36

00001518 <putxval>:
    1518:	3021ffcc 	addik	r1, r1, -52
    151c:	f9e10000 	swi	r15, r1, 0
    1520:	14670000 	rsubk	r3, r7, r0
    1524:	80633800 	or	r3, r3, r7
    1528:	be430098 	bltid	r3, 152		// 15c0
    152c:	f001002c 	sbi	r0, r1, 44
    1530:	14860000 	rsubk	r4, r6, r0
    1534:	80843000 	or	r4, r4, r6
    1538:	a884ffff 	xori	r4, r4, -1
    153c:	10602000 	addk	r3, r0, r4
    1540:	90640041 	srl	r3, r4
    1544:	90630041 	srl	r3, r3
    1548:	90630041 	srl	r3, r3
    154c:	90630041 	srl	r3, r3
    1550:	90630041 	srl	r3, r3
    1554:	90630041 	srl	r3, r3
    1558:	90630041 	srl	r3, r3
    155c:	90630041 	srl	r3, r3
    1560:	90630041 	srl	r3, r3
    1564:	90630041 	srl	r3, r3
    1568:	90630041 	srl	r3, r3
    156c:	90630041 	srl	r3, r3
    1570:	90630041 	srl	r3, r3
    1574:	90630041 	srl	r3, r3
    1578:	90630041 	srl	r3, r3
    157c:	90630041 	srl	r3, r3
    1580:	90630041 	srl	r3, r3
    1584:	90630041 	srl	r3, r3
    1588:	90630041 	srl	r3, r3
    158c:	90630041 	srl	r3, r3
    1590:	90630041 	srl	r3, r3
    1594:	90630041 	srl	r3, r3
    1598:	90630041 	srl	r3, r3
    159c:	90630041 	srl	r3, r3
    15a0:	90630041 	srl	r3, r3
    15a4:	90630041 	srl	r3, r3
    15a8:	90630041 	srl	r3, r3
    15ac:	90630041 	srl	r3, r3
    15b0:	90630041 	srl	r3, r3
    15b4:	90630041 	srl	r3, r3
    15b8:	90630041 	srl	r3, r3
    15bc:	10e71800 	addk	r7, r7, r3
    15c0:	312016ec 	addik	r9, r0, 5868	// 16ec <_etext>
    15c4:	b8100038 	brid	56		// 15fc
    15c8:	3061002b 	addik	r3, r1, 43
    15cc:	c1084800 	lbu	r8, r8, r9
    15d0:	f1030000 	sbi	r8, r3, 0
    15d4:	3063ffff 	addik	r3, r3, -1
    15d8:	11003000 	addk	r8, r0, r6
    15dc:	91060041 	srl	r8, r6
    15e0:	91080041 	srl	r8, r8
    15e4:	91080041 	srl	r8, r8
    15e8:	91080041 	srl	r8, r8
    15ec:	f9010030 	swi	r8, r1, 48
    15f0:	be04000c 	beqid	r4, 12		// 15fc
    15f4:	10c80000 	addk	r6, r8, r0
    15f8:	30e7ffff 	addik	r7, r7, -1
    15fc:	15070000 	rsubk	r8, r7, r0
    1600:	81083800 	or	r8, r8, r7
    1604:	10804000 	addk	r4, r0, r8
    1608:	90880041 	srl	r4, r8
    160c:	90840041 	srl	r4, r4
    1610:	90840041 	srl	r4, r4
    1614:	90840041 	srl	r4, r4
    1618:	90840041 	srl	r4, r4
    161c:	90840041 	srl	r4, r4
    1620:	90840041 	srl	r4, r4
    1624:	90840041 	srl	r4, r4
    1628:	90840041 	srl	r4, r4
    162c:	90840041 	srl	r4, r4
    1630:	90840041 	srl	r4, r4
    1634:	90840041 	srl	r4, r4
    1638:	90840041 	srl	r4, r4
    163c:	90840041 	srl	r4, r4
    1640:	90840041 	srl	r4, r4
    1644:	90840041 	srl	r4, r4
    1648:	90840041 	srl	r4, r4
    164c:	90840041 	srl	r4, r4
    1650:	90840041 	srl	r4, r4
    1654:	90840041 	srl	r4, r4
    1658:	90840041 	srl	r4, r4
    165c:	90840041 	srl	r4, r4
    1660:	90840041 	srl	r4, r4
    1664:	90840041 	srl	r4, r4
    1668:	90840041 	srl	r4, r4
    166c:	90840041 	srl	r4, r4
    1670:	90840041 	srl	r4, r4
    1674:	90840041 	srl	r4, r4
    1678:	90840041 	srl	r4, r4
    167c:	90840041 	srl	r4, r4
    1680:	90840041 	srl	r4, r4
    1684:	be24ff48 	bneid	r4, -184		// 15cc
    1688:	a506000f 	andi	r8, r6, 15
    168c:	15060000 	rsubk	r8, r6, r0
    1690:	81083000 	or	r8, r8, r6
    1694:	be48ff38 	bltid	r8, -200		// 15cc
    1698:	a506000f 	andi	r8, r6, 15
    169c:	b9f4fe28 	brlid	r15, -472	// 14c4 <puts>
    16a0:	30c30001 	addik	r6, r3, 1
    16a4:	10600000 	addk	r3, r0, r0
    16a8:	e9e10000 	lwi	r15, r1, 0
    16ac:	b60f0008 	rtsd	r15, 8
    16b0:	30210034 	addik	r1, r1, 52

000016b4 <main>:
    16b4:	3021ffe4 	addik	r1, r1, -28
    16b8:	f9e10000 	swi	r15, r1, 0
    16bc:	30c01700 	addik	r6, r0, 5888
    16c0:	b9f4fe04 	brlid	r15, -508	// 14c4 <puts>
    16c4:	30a00001 	addik	r5, r0, 1
    16c8:	30a00001 	addik	r5, r0, 1
    16cc:	e8c01884 	lwi	r6, r0, 6276	// 1884 <data_value>
    16d0:	b9f4fe48 	brlid	r15, -440	// 1518 <putxval>
    16d4:	10e00000 	addk	r7, r0, r0
    16d8:	30c01710 	addik	r6, r0, 5904
    16dc:	b9f4fde8 	brlid	r15, -536	// 14c4 <puts>
    16e0:	30a00001 	addik	r5, r0, 1
    16e4:	b9f4fd80 	brlid	r15, -640	// 1464 <exit>
    16e8:	10a00000 	addk	r5, r0, r0
