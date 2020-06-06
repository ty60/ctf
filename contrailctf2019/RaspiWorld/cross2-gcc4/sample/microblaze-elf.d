
microblaze-elf.x:     file format elf32-microblaze


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	b60f0008 	rtsd	r15, 8
  fe1404:	80000000 	or	r0, r0, r0

00fe1408 <return_zero>:
  fe1408:	b60f0008 	rtsd	r15, 8
  fe140c:	10600000 	addk	r3, r0, r0

00fe1410 <return_one>:
  fe1410:	b60f0008 	rtsd	r15, 8
  fe1414:	30600001 	addik	r3, r0, 1

00fe1418 <return_int_size>:
  fe1418:	b60f0008 	rtsd	r15, 8
  fe141c:	30600004 	addik	r3, r0, 4	// 4 <_.frame>

00fe1420 <return_pointer_size>:
  fe1420:	b60f0008 	rtsd	r15, 8
  fe1424:	30600004 	addik	r3, r0, 4	// 4 <_.frame>

00fe1428 <return_short_size>:
  fe1428:	b60f0008 	rtsd	r15, 8
  fe142c:	30600002 	addik	r3, r0, 2

00fe1430 <return_long_size>:
  fe1430:	b60f0008 	rtsd	r15, 8
  fe1434:	30600004 	addik	r3, r0, 4	// 4 <_.frame>

00fe1438 <return_short>:
  fe1438:	b60f0008 	rtsd	r15, 8
  fe143c:	30607788 	addik	r3, r0, 30600

00fe1440 <return_long>:
  fe1440:	b0007788 	imm	30600
  fe1444:	306099aa 	addik	r3, r0, -26198
  fe1448:	b60f0008 	rtsd	r15, 8
  fe144c:	80000000 	or	r0, r0, r0

00fe1450 <return_short_upper>:
  fe1450:	b60f0008 	rtsd	r15, 8
  fe1454:	3060ffee 	addik	r3, r0, -18

00fe1458 <return_long_upper>:
  fe1458:	b000ffee 	imm	-18
  fe145c:	3060ddcc 	addik	r3, r0, -8756
  fe1460:	b60f0008 	rtsd	r15, 8
  fe1464:	80000000 	or	r0, r0, r0

00fe1468 <return_arg1>:
  fe1468:	b60f0008 	rtsd	r15, 8
  fe146c:	10650000 	addk	r3, r5, r0

00fe1470 <return_arg2>:
  fe1470:	b60f0008 	rtsd	r15, 8
  fe1474:	10660000 	addk	r3, r6, r0

00fe1478 <add>:
  fe1478:	b60f0008 	rtsd	r15, 8
  fe147c:	10653000 	addk	r3, r5, r6

00fe1480 <add3>:
  fe1480:	10653000 	addk	r3, r5, r6
  fe1484:	b60f0008 	rtsd	r15, 8
  fe1488:	10633800 	addk	r3, r3, r7

00fe148c <add_two>:
  fe148c:	b60f0008 	rtsd	r15, 8
  fe1490:	30650002 	addik	r3, r5, 2

00fe1494 <inc>:
  fe1494:	b60f0008 	rtsd	r15, 8
  fe1498:	30650001 	addik	r3, r5, 1

00fe149c <or>:
  fe149c:	b60f0008 	rtsd	r15, 8
  fe14a0:	80662800 	or	r3, r6, r5

00fe14a4 <or_one>:
  fe14a4:	a0650001 	ori	r3, r5, 1
  fe14a8:	b60f0008 	rtsd	r15, 8
  fe14ac:	80000000 	or	r0, r0, r0

00fe14b0 <load>:
  fe14b0:	e8650000 	lwi	r3, r5, 0
  fe14b4:	b60f0008 	rtsd	r15, 8
  fe14b8:	80000000 	or	r0, r0, r0

00fe14bc <store>:
  fe14bc:	306000ff 	addik	r3, r0, 255
  fe14c0:	f8650000 	swi	r3, r5, 0
  fe14c4:	b60f0008 	rtsd	r15, 8
  fe14c8:	80000000 	or	r0, r0, r0

00fe14cc <load_long>:
  fe14cc:	e8650000 	lwi	r3, r5, 0
  fe14d0:	b60f0008 	rtsd	r15, 8
  fe14d4:	80000000 	or	r0, r0, r0

00fe14d8 <store_long>:
  fe14d8:	b0001122 	imm	4386
  fe14dc:	30603344 	addik	r3, r0, 13124
  fe14e0:	f8650000 	swi	r3, r5, 0
  fe14e4:	b60f0008 	rtsd	r15, 8
  fe14e8:	80000000 	or	r0, r0, r0

00fe14ec <member>:
  fe14ec:	30600001 	addik	r3, r0, 1
  fe14f0:	f8650004 	swi	r3, r5, 4
  fe14f4:	b60f0008 	rtsd	r15, 8
  fe14f8:	e8650008 	lwi	r3, r5, 8

00fe14fc <get_static_value_addr>:
  fe14fc:	b00000fe 	imm	254
  fe1500:	30601804 	addik	r3, r0, 6148	// fe1804 <static_value>
  fe1504:	b60f0008 	rtsd	r15, 8
  fe1508:	80000000 	or	r0, r0, r0

00fe150c <get_static_value>:
  fe150c:	b00000fe 	imm	254
  fe1510:	e8601804 	lwi	r3, r0, 6148	// fe1804 <static_value>
  fe1514:	b60f0008 	rtsd	r15, 8
  fe1518:	80000000 	or	r0, r0, r0

00fe151c <set_static_value>:
  fe151c:	b00000fe 	imm	254
  fe1520:	f8a01804 	swi	r5, r0, 6148	// fe1804 <static_value>
  fe1524:	b60f0008 	rtsd	r15, 8
  fe1528:	80000000 	or	r0, r0, r0

00fe152c <set_stack>:
  fe152c:	3021fff4 	addik	r1, r1, -12
  fe1530:	306000fe 	addik	r3, r0, 254
  fe1534:	f8610004 	swi	r3, r1, 4
  fe1538:	306000ff 	addik	r3, r0, 255
  fe153c:	f8610008 	swi	r3, r1, 8
  fe1540:	b60f0008 	rtsd	r15, 8
  fe1544:	3021000c 	addik	r1, r1, 12

00fe1548 <use_stack>:
  fe1548:	3021fff4 	addik	r1, r1, -12
  fe154c:	306000fe 	addik	r3, r0, 254
  fe1550:	f8610004 	swi	r3, r1, 4
  fe1554:	306000ff 	addik	r3, r0, 255
  fe1558:	f8610008 	swi	r3, r1, 8
  fe155c:	e8810004 	lwi	r4, r1, 4
  fe1560:	e8610008 	lwi	r3, r1, 8
  fe1564:	10641800 	addk	r3, r4, r3
  fe1568:	b60f0008 	rtsd	r15, 8
  fe156c:	3021000c 	addik	r1, r1, 12

00fe1570 <call_self>:
  fe1570:	3021ffe4 	addik	r1, r1, -28
  fe1574:	f9e10000 	swi	r15, r1, 0
  fe1578:	b9f4fff8 	brlid	r15, -8	// fe1570 <call_self>
  fe157c:	80000000 	or	r0, r0, r0
  fe1580:	e9e10000 	lwi	r15, r1, 0
  fe1584:	b60f0008 	rtsd	r15, 8
  fe1588:	3021001c 	addik	r1, r1, 28

00fe158c <call_simple>:
  fe158c:	3021ffe4 	addik	r1, r1, -28
  fe1590:	f9e10000 	swi	r15, r1, 0
  fe1594:	b9f4fed4 	brlid	r15, -300	// fe1468 <return_arg1>
  fe1598:	80000000 	or	r0, r0, r0
  fe159c:	e9e10000 	lwi	r15, r1, 0
  fe15a0:	b60f0008 	rtsd	r15, 8
  fe15a4:	3021001c 	addik	r1, r1, 28

00fe15a8 <call_complex1>:
  fe15a8:	3021ffe4 	addik	r1, r1, -28
  fe15ac:	f9e10000 	swi	r15, r1, 0
  fe15b0:	b9f4feb8 	brlid	r15, -328	// fe1468 <return_arg1>
  fe15b4:	30a000fe 	addik	r5, r0, 254
  fe15b8:	30630001 	addik	r3, r3, 1
  fe15bc:	e9e10000 	lwi	r15, r1, 0
  fe15c0:	b60f0008 	rtsd	r15, 8
  fe15c4:	3021001c 	addik	r1, r1, 28

00fe15c8 <call_complex2>:
  fe15c8:	3021ffe0 	addik	r1, r1, -32
  fe15cc:	f9e10000 	swi	r15, r1, 0
  fe15d0:	fa61001c 	swi	r19, r1, 28
  fe15d4:	12660000 	addk	r19, r6, r0
  fe15d8:	b9f4fe90 	brlid	r15, -368	// fe1468 <return_arg1>
  fe15dc:	10a60000 	addk	r5, r6, r0
  fe15e0:	b00000fe 	imm	254
  fe15e4:	f8601804 	swi	r3, r0, 6148	// fe1804 <static_value>
  fe15e8:	10730000 	addk	r3, r19, r0
  fe15ec:	e9e10000 	lwi	r15, r1, 0
  fe15f0:	ea61001c 	lwi	r19, r1, 28
  fe15f4:	b60f0008 	rtsd	r15, 8
  fe15f8:	30210020 	addik	r1, r1, 32

00fe15fc <call_pointer>:
  fe15fc:	3021ffe4 	addik	r1, r1, -28
  fe1600:	f9e10000 	swi	r15, r1, 0
  fe1604:	99fc2800 	brald	r15, r5
  fe1608:	80000000 	or	r0, r0, r0
  fe160c:	e9e10000 	lwi	r15, r1, 0
  fe1610:	b60f0008 	rtsd	r15, 8
  fe1614:	3021001c 	addik	r1, r1, 28

00fe1618 <condition>:
  fe1618:	88a53000 	xor	r5, r5, r6
  fe161c:	bc250008 	bnei	r5, 8		// fe1624
  fe1620:	30c00001 	addik	r6, r0, 1
  fe1624:	b60f0008 	rtsd	r15, 8
  fe1628:	30660001 	addik	r3, r6, 1

00fe162c <loop>:
  fe162c:	bc650028 	blei	r5, 40		// fe1654
  fe1630:	10600000 	addk	r3, r0, r0
  fe1634:	10830000 	addk	r4, r3, r0
  fe1638:	10632000 	addk	r3, r3, r4
  fe163c:	30840001 	addik	r4, r4, 1
  fe1640:	88c42800 	xor	r6, r4, r5
  fe1644:	be26fff8 	bneid	r6, -8		// fe163c
  fe1648:	10632000 	addk	r3, r3, r4
  fe164c:	b60f0008 	rtsd	r15, 8
  fe1650:	14641800 	rsubk	r3, r4, r3
  fe1654:	b60f0008 	rtsd	r15, 8
  fe1658:	10600000 	addk	r3, r0, r0

00fe165c <many_args>:
  fe165c:	10a54000 	addk	r5, r5, r8
  fe1660:	11455000 	addk	r10, r5, r10
  fe1664:	e8610020 	lwi	r3, r1, 32
  fe1668:	b60f0008 	rtsd	r15, 8
  fe166c:	106a1800 	addk	r3, r10, r3

00fe1670 <call_many_args>:
  fe1670:	3021ffdc 	addik	r1, r1, -36
  fe1674:	f9e10000 	swi	r15, r1, 0
  fe1678:	30600006 	addik	r3, r0, 6
  fe167c:	f861001c 	swi	r3, r1, 28
  fe1680:	30600007 	addik	r3, r0, 7
  fe1684:	f8610020 	swi	r3, r1, 32
  fe1688:	10a00000 	addk	r5, r0, r0
  fe168c:	30c00001 	addik	r6, r0, 1
  fe1690:	30e00002 	addik	r7, r0, 2
  fe1694:	31000003 	addik	r8, r0, 3
  fe1698:	31200004 	addik	r9, r0, 4	// 4 <_.frame>
  fe169c:	b9f4ffc0 	brlid	r15, -64	// fe165c <many_args>
  fe16a0:	31400005 	addik	r10, r0, 5
  fe16a4:	e9e10000 	lwi	r15, r1, 0
  fe16a8:	b60f0008 	rtsd	r15, 8
  fe16ac:	30210024 	addik	r1, r1, 36

00fe16b0 <direct>:
  fe16b0:	80000000 	or	r0, r0, r0
  fe16b4:	b60f0008 	rtsd	r15, 8
  fe16b8:	80000000 	or	r0, r0, r0

00fe16bc <binary>:
	...
  fe16c4:	b60f0008 	rtsd	r15, 8
  fe16c8:	80000000 	or	r0, r0, r0

00fe16cc <main>:
  fe16cc:	b60f0008 	rtsd	r15, 8
  fe16d0:	10600000 	addk	r3, r0, r0
