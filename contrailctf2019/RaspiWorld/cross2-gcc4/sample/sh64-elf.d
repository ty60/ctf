
sh64-elf.x:     file format elf64-sh64


Disassembly of section .text:

0000000000fe1400 <_null>:
  fe1400:	6bf14a00 	ptabs/l	r18,tr0
  fe1404:	d0ffe0f0 	addi	r15,-8,r15
  fe1408:	acf00120 	st.q	r15,0,r18
  fe140c:	d0f020f0 	addi	r15,8,r15
  fe1410:	4401fff0 	blink	tr0,r63

0000000000fe1414 <_return_zero>:
  fe1414:	6bf14a00 	ptabs/l	r18,tr0
  fe1418:	d0ffe0f0 	addi	r15,-8,r15
  fe141c:	acf00120 	st.q	r15,0,r18
  fe1420:	cc000020 	movi	0,r2
  fe1424:	d0f020f0 	addi	r15,8,r15
  fe1428:	4401fff0 	blink	tr0,r63

0000000000fe142c <_return_one>:
  fe142c:	6bf14a00 	ptabs/l	r18,tr0
  fe1430:	d0ffe0f0 	addi	r15,-8,r15
  fe1434:	acf00120 	st.q	r15,0,r18
  fe1438:	cc000420 	movi	1,r2
  fe143c:	d0f020f0 	addi	r15,8,r15
  fe1440:	4401fff0 	blink	tr0,r63

0000000000fe1444 <_return_int_size>:
  fe1444:	6bf14a00 	ptabs/l	r18,tr0
  fe1448:	d0ffe0f0 	addi	r15,-8,r15
  fe144c:	acf00120 	st.q	r15,0,r18
  fe1450:	cc001020 	movi	4,r2
  fe1454:	d0f020f0 	addi	r15,8,r15
  fe1458:	4401fff0 	blink	tr0,r63

0000000000fe145c <_return_pointer_size>:
  fe145c:	6bf14a00 	ptabs/l	r18,tr0
  fe1460:	d0ffe0f0 	addi	r15,-8,r15
  fe1464:	acf00120 	st.q	r15,0,r18
  fe1468:	cc002020 	movi	8,r2
  fe146c:	d0f020f0 	addi	r15,8,r15
  fe1470:	4401fff0 	blink	tr0,r63

0000000000fe1474 <_return_short_size>:
  fe1474:	6bf14a00 	ptabs/l	r18,tr0
  fe1478:	d0ffe0f0 	addi	r15,-8,r15
  fe147c:	acf00120 	st.q	r15,0,r18
  fe1480:	cc000820 	movi	2,r2
  fe1484:	d0f020f0 	addi	r15,8,r15
  fe1488:	4401fff0 	blink	tr0,r63

0000000000fe148c <_return_long_size>:
  fe148c:	6bf14a00 	ptabs/l	r18,tr0
  fe1490:	d0ffe0f0 	addi	r15,-8,r15
  fe1494:	acf00120 	st.q	r15,0,r18
  fe1498:	cc002020 	movi	8,r2
  fe149c:	d0f020f0 	addi	r15,8,r15
  fe14a0:	4401fff0 	blink	tr0,r63

0000000000fe14a4 <_return_short>:
  fe14a4:	6bf14a00 	ptabs/l	r18,tr0
  fe14a8:	d0ffe0f0 	addi	r15,-8,r15
  fe14ac:	acf00120 	st.q	r15,0,r18
  fe14b0:	cdde2020 	movi	30600,r2
  fe14b4:	d0f020f0 	addi	r15,8,r15
  fe14b8:	4401fff0 	blink	tr0,r63

0000000000fe14bc <_return_long>:
  fe14bc:	6bf14a00 	ptabs/l	r18,tr0
  fe14c0:	d0ffe0f0 	addi	r15,-8,r15
  fe14c4:	acf00120 	st.q	r15,0,r18
  fe14c8:	cdde2020 	movi	30600,r2
  fe14cc:	ca66a820 	shori	39338,r2	! 0x778899aa <_end+0x768a7d8a>
  fe14d0:	d0f020f0 	addi	r15,8,r15
  fe14d4:	4401fff0 	blink	tr0,r63

0000000000fe14d8 <_return_short_upper>:
  fe14d8:	6bf14a00 	ptabs/l	r18,tr0
  fe14dc:	d0ffe0f0 	addi	r15,-8,r15
  fe14e0:	acf00120 	st.q	r15,0,r18
  fe14e4:	cfffb820 	movi	-18,r2
  fe14e8:	d0f020f0 	addi	r15,8,r15
  fe14ec:	4401fff0 	blink	tr0,r63

0000000000fe14f0 <_return_long_upper>:
  fe14f0:	6bf14a00 	ptabs/l	r18,tr0
  fe14f4:	d0ffe0f0 	addi	r15,-8,r15
  fe14f8:	acf00120 	st.q	r15,0,r18
  fe14fc:	cc000020 	movi	0,r2
  fe1500:	cbffb820 	shori	65518,r2	! 0xffee <_.tmp+0xffae>
  fe1504:	cb773020 	shori	56780,r2
  fe1508:	d0f020f0 	addi	r15,8,r15
  fe150c:	4401fff0 	blink	tr0,r63

0000000000fe1510 <_return_arg1>:
  fe1510:	6bf14a00 	ptabs/l	r18,tr0
  fe1514:	d0ffe0f0 	addi	r15,-8,r15
  fe1518:	acf00120 	st.q	r15,0,r18
  fe151c:	d0f020f0 	addi	r15,8,r15
  fe1520:	4401fff0 	blink	tr0,r63

0000000000fe1524 <_return_arg2>:
  fe1524:	6bf14a00 	ptabs/l	r18,tr0
  fe1528:	d0ffe0f0 	addi	r15,-8,r15
  fe152c:	acf00120 	st.q	r15,0,r18
  fe1530:	0038fc20 	add.l	r3,r63,r2
  fe1534:	d0f020f0 	addi	r15,8,r15
  fe1538:	4401fff0 	blink	tr0,r63

0000000000fe153c <_add>:
  fe153c:	6bf14a00 	ptabs/l	r18,tr0
  fe1540:	d0ffe0f0 	addi	r15,-8,r15
  fe1544:	acf00120 	st.q	r15,0,r18
  fe1548:	00280c20 	add.l	r2,r3,r2
  fe154c:	d0f020f0 	addi	r15,8,r15
  fe1550:	4401fff0 	blink	tr0,r63

0000000000fe1554 <_add3>:
  fe1554:	6bf14a00 	ptabs/l	r18,tr0
  fe1558:	d0ffe0f0 	addi	r15,-8,r15
  fe155c:	acf00120 	st.q	r15,0,r18
  fe1560:	00280c20 	add.l	r2,r3,r2
  fe1564:	00281020 	add.l	r2,r4,r2
  fe1568:	d0f020f0 	addi	r15,8,r15
  fe156c:	4401fff0 	blink	tr0,r63

0000000000fe1570 <_add_two>:
  fe1570:	6bf14a00 	ptabs/l	r18,tr0
  fe1574:	d0ffe0f0 	addi	r15,-8,r15
  fe1578:	acf00120 	st.q	r15,0,r18
  fe157c:	d4200820 	addi.l	r2,2,r2
  fe1580:	d0f020f0 	addi	r15,8,r15
  fe1584:	4401fff0 	blink	tr0,r63

0000000000fe1588 <_inc>:
  fe1588:	6bf14a00 	ptabs/l	r18,tr0
  fe158c:	d0ffe0f0 	addi	r15,-8,r15
  fe1590:	acf00120 	st.q	r15,0,r18
  fe1594:	d4200420 	addi.l	r2,1,r2
  fe1598:	d0f020f0 	addi	r15,8,r15
  fe159c:	4401fff0 	blink	tr0,r63

0000000000fe15a0 <_or>:
  fe15a0:	6bf14a00 	ptabs/l	r18,tr0
  fe15a4:	d0ffe0f0 	addi	r15,-8,r15
  fe15a8:	acf00120 	st.q	r15,0,r18
  fe15ac:	04390820 	or	r3,r2,r2
  fe15b0:	d0f020f0 	addi	r15,8,r15
  fe15b4:	4401fff0 	blink	tr0,r63

0000000000fe15b8 <_or_one>:
  fe15b8:	6bf14a00 	ptabs/l	r18,tr0
  fe15bc:	d0ffe0f0 	addi	r15,-8,r15
  fe15c0:	acf00120 	st.q	r15,0,r18
  fe15c4:	dc200420 	ori	r2,1,r2
  fe15c8:	d0f020f0 	addi	r15,8,r15
  fe15cc:	4401fff0 	blink	tr0,r63

0000000000fe15d0 <_load>:
  fe15d0:	6bf14a00 	ptabs/l	r18,tr0
  fe15d4:	d0ffe0f0 	addi	r15,-8,r15
  fe15d8:	acf00120 	st.q	r15,0,r18
  fe15dc:	88200020 	ld.l	r2,0,r2
  fe15e0:	d0f020f0 	addi	r15,8,r15
  fe15e4:	4401fff0 	blink	tr0,r63

0000000000fe15e8 <_store>:
  fe15e8:	6bf14a00 	ptabs/l	r18,tr0
  fe15ec:	d0ffe0f0 	addi	r15,-8,r15
  fe15f0:	acf00120 	st.q	r15,0,r18
  fe15f4:	cc03fc10 	movi	255,r1
  fe15f8:	a8200010 	st.l	r2,0,r1
  fe15fc:	d0f020f0 	addi	r15,8,r15
  fe1600:	4401fff0 	blink	tr0,r63

0000000000fe1604 <_load_long>:
  fe1604:	6bf14a00 	ptabs/l	r18,tr0
  fe1608:	d0ffe0f0 	addi	r15,-8,r15
  fe160c:	acf00120 	st.q	r15,0,r18
  fe1610:	8c200020 	ld.q	r2,0,r2
  fe1614:	d0f020f0 	addi	r15,8,r15
  fe1618:	4401fff0 	blink	tr0,r63

0000000000fe161c <_store_long>:
  fe161c:	6bf14a00 	ptabs/l	r18,tr0
  fe1620:	d0ffe0f0 	addi	r15,-8,r15
  fe1624:	acf00120 	st.q	r15,0,r18
  fe1628:	cc448860 	movi	4386,r6
  fe162c:	c8cd1060 	shori	13124,r6	! 0x11223344 <_end+0x10241724>
  fe1630:	ac200060 	st.q	r2,0,r6
  fe1634:	d0f020f0 	addi	r15,8,r15
  fe1638:	4401fff0 	blink	tr0,r63

0000000000fe163c <_member>:
  fe163c:	6bf14a00 	ptabs/l	r18,tr0
  fe1640:	d0ffe0f0 	addi	r15,-8,r15
  fe1644:	acf00120 	st.q	r15,0,r18
  fe1648:	cc000410 	movi	1,r1
  fe164c:	a8200410 	st.l	r2,4,r1
  fe1650:	88200820 	ld.l	r2,8,r2
  fe1654:	d0f020f0 	addi	r15,8,r15
  fe1658:	4401fff0 	blink	tr0,r63

0000000000fe165c <_get_static_value_addr>:
  fe165c:	6bf14a00 	ptabs/l	r18,tr0
  fe1660:	d0ffe0f0 	addi	r15,-8,r15
  fe1664:	acf00120 	st.q	r15,0,r18
  fe1668:	cc000020 	movi	0,r2
  fe166c:	c8000020 	shori	0,r2	! 0x0 <_.frame-0x4>
  fe1670:	c803f820 	shori	254,r2
  fe1674:	c8702020 	shori	7176,r2
  fe1678:	d0f020f0 	addi	r15,8,r15
  fe167c:	4401fff0 	blink	tr0,r63

0000000000fe1680 <_get_static_value>:
  fe1680:	6bf14a00 	ptabs/l	r18,tr0
  fe1684:	d0ffe0f0 	addi	r15,-8,r15
  fe1688:	acf00120 	st.q	r15,0,r18
  fe168c:	cc000010 	movi	0,r1
  fe1690:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe1694:	c803f810 	shori	254,r1
  fe1698:	c8702010 	shori	7176,r1
  fe169c:	88100020 	ld.l	r1,0,r2
  fe16a0:	d0f020f0 	addi	r15,8,r15
  fe16a4:	4401fff0 	blink	tr0,r63

0000000000fe16a8 <_set_static_value>:
  fe16a8:	6bf14a00 	ptabs/l	r18,tr0
  fe16ac:	d0ffe0f0 	addi	r15,-8,r15
  fe16b0:	acf00120 	st.q	r15,0,r18
  fe16b4:	cc000010 	movi	0,r1
  fe16b8:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe16bc:	c803f810 	shori	254,r1
  fe16c0:	c8702010 	shori	7176,r1
  fe16c4:	a8100020 	st.l	r1,0,r2
  fe16c8:	d0f020f0 	addi	r15,8,r15
  fe16cc:	4401fff0 	blink	tr0,r63

0000000000fe16d0 <_set_stack>:
  fe16d0:	6bf14a00 	ptabs/l	r18,tr0
  fe16d4:	d0ffc0f0 	addi	r15,-16,r15
  fe16d8:	acf00520 	st.q	r15,8,r18
  fe16dc:	cc03f810 	movi	254,r1
  fe16e0:	a8f00410 	st.l	r15,4,r1
  fe16e4:	cc03fc10 	movi	255,r1
  fe16e8:	a8f00010 	st.l	r15,0,r1
  fe16ec:	d0f040f0 	addi	r15,16,r15
  fe16f0:	4401fff0 	blink	tr0,r63

0000000000fe16f4 <_use_stack>:
  fe16f4:	6bf14a00 	ptabs/l	r18,tr0
  fe16f8:	d0ffc0f0 	addi	r15,-16,r15
  fe16fc:	acf00520 	st.q	r15,8,r18
  fe1700:	cc03f810 	movi	254,r1
  fe1704:	a8f00410 	st.l	r15,4,r1
  fe1708:	cc03fc10 	movi	255,r1
  fe170c:	a8f00010 	st.l	r15,0,r1
  fe1710:	88f00420 	ld.l	r15,4,r2
  fe1714:	88f00010 	ld.l	r15,0,r1
  fe1718:	00280420 	add.l	r2,r1,r2
  fe171c:	d0f040f0 	addi	r15,16,r15
  fe1720:	4401fff0 	blink	tr0,r63

0000000000fe1724 <_call_self>:
  fe1724:	d0ffe0f0 	addi	r15,-8,r15
  fe1728:	acf00120 	st.q	r15,0,r18
  fe172c:	cc000010 	movi	0,r1
  fe1730:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe1734:	c803f810 	shori	254,r1
  fe1738:	c85c9410 	shori	5925,r1
  fe173c:	6bf10600 	ptabs/l	r1,tr0
  fe1740:	4401fd20 	blink	tr0,r18
  fe1744:	8cf00120 	ld.q	r15,0,r18
  fe1748:	d0f020f0 	addi	r15,8,r15
  fe174c:	6bf14a00 	ptabs/l	r18,tr0
  fe1750:	4401fff0 	blink	tr0,r63

0000000000fe1754 <_call_simple>:
  fe1754:	d0ffe0f0 	addi	r15,-8,r15
  fe1758:	acf00120 	st.q	r15,0,r18
  fe175c:	cc000010 	movi	0,r1
  fe1760:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe1764:	c803f810 	shori	254,r1
  fe1768:	c8544410 	shori	5393,r1
  fe176c:	6bf10600 	ptabs/l	r1,tr0
  fe1770:	4401fd20 	blink	tr0,r18
  fe1774:	8cf00120 	ld.q	r15,0,r18
  fe1778:	d0f020f0 	addi	r15,8,r15
  fe177c:	6bf14a00 	ptabs/l	r18,tr0
  fe1780:	4401fff0 	blink	tr0,r63

0000000000fe1784 <_call_complex1>:
  fe1784:	d0ffe0f0 	addi	r15,-8,r15
  fe1788:	acf00120 	st.q	r15,0,r18
  fe178c:	cc03f820 	movi	254,r2
  fe1790:	cc000010 	movi	0,r1
  fe1794:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe1798:	c803f810 	shori	254,r1
  fe179c:	c8544410 	shori	5393,r1
  fe17a0:	6bf10600 	ptabs/l	r1,tr0
  fe17a4:	4401fd20 	blink	tr0,r18
  fe17a8:	d4200420 	addi.l	r2,1,r2
  fe17ac:	8cf00120 	ld.q	r15,0,r18
  fe17b0:	d0f020f0 	addi	r15,8,r15
  fe17b4:	6bf14a00 	ptabs/l	r18,tr0
  fe17b8:	4401fff0 	blink	tr0,r63

0000000000fe17bc <_call_complex2>:
  fe17bc:	d0ffc0f0 	addi	r15,-16,r15
  fe17c0:	acf00520 	st.q	r15,8,r18
  fe17c4:	acf000a0 	st.q	r15,0,r10
  fe17c8:	0038fca0 	add.l	r3,r63,r10
  fe17cc:	0038fc20 	add.l	r3,r63,r2
  fe17d0:	cc000010 	movi	0,r1
  fe17d4:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe17d8:	c803f810 	shori	254,r1
  fe17dc:	c8544410 	shori	5393,r1
  fe17e0:	6bf10600 	ptabs/l	r1,tr0
  fe17e4:	4401fd20 	blink	tr0,r18
  fe17e8:	cc000010 	movi	0,r1
  fe17ec:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe17f0:	c803f810 	shori	254,r1
  fe17f4:	c8702010 	shori	7176,r1
  fe17f8:	a8100020 	st.l	r1,0,r2
  fe17fc:	00a8fc20 	add.l	r10,r63,r2
  fe1800:	8cf000a0 	ld.q	r15,0,r10
  fe1804:	8cf00520 	ld.q	r15,8,r18
  fe1808:	d0f040f0 	addi	r15,16,r15
  fe180c:	6bf14a00 	ptabs/l	r18,tr0
  fe1810:	4401fff0 	blink	tr0,r63

0000000000fe1814 <_call_pointer>:
  fe1814:	d0ffe0f0 	addi	r15,-8,r15
  fe1818:	acf00120 	st.q	r15,0,r18
  fe181c:	6bf10a00 	ptabs/l	r2,tr0
  fe1820:	4401fd20 	blink	tr0,r18
  fe1824:	8cf00120 	ld.q	r15,0,r18
  fe1828:	d0f020f0 	addi	r15,8,r15
  fe182c:	6bf14a00 	ptabs/l	r18,tr0
  fe1830:	4401fff0 	blink	tr0,r63

0000000000fe1834 <_condition>:
  fe1834:	6bf14a00 	ptabs/l	r18,tr0
  fe1838:	d0ffe0f0 	addi	r15,-8,r15
  fe183c:	acf00120 	st.q	r15,0,r18
  fe1840:	00210c20 	cmpeq	r2,r3,r2
  fe1844:	cc000410 	movi	1,r1
  fe1848:	20210c10 	cmveq	r2,r3,r1
  fe184c:	d4100420 	addi.l	r1,1,r2
  fe1850:	d0f020f0 	addi	r15,8,r15
  fe1854:	4401fff0 	blink	tr0,r63

0000000000fe1858 <_loop>:
  fe1858:	6bf14a10 	ptabs/l	r18,tr1
  fe185c:	d0ffe0f0 	addi	r15,-8,r15
  fe1860:	acf00120 	st.q	r15,0,r18
  fe1864:	0028fc30 	add.l	r2,r63,r3
  fe1868:	e8002a00 	pta/l	fe1890 <_loop+0x38>,tr0
  fe186c:	67f30800 	bge/u	r63,r2,tr0
  fe1870:	cc000020 	movi	0,r2
  fe1874:	cc000010 	movi	0,r1
  fe1878:	00280420 	add.l	r2,r1,r2
  fe187c:	d4100410 	addi.l	r1,1,r1
  fe1880:	ebfffa00 	pta/l	fe1878 <_loop+0x20>,tr0
  fe1884:	64150e00 	bne/l	r1,r3,tr0
  fe1888:	e8000e00 	pta/l	fe1894 <_loop+0x3c>,tr0
  fe188c:	4401fff0 	blink	tr0,r63
  fe1890:	cc000020 	movi	0,r2
  fe1894:	d0f020f0 	addi	r15,8,r15
  fe1898:	4411fff0 	blink	tr1,r63

0000000000fe189c <_many_args>:
  fe189c:	6bf14a00 	ptabs/l	r18,tr0
  fe18a0:	d0ffe0f0 	addi	r15,-8,r15
  fe18a4:	acf00120 	st.q	r15,0,r18
  fe18a8:	00281420 	add.l	r2,r5,r2
  fe18ac:	00281c20 	add.l	r2,r7,r2
  fe18b0:	00282420 	add.l	r2,r9,r2
  fe18b4:	d0f020f0 	addi	r15,8,r15
  fe18b8:	4401fff0 	blink	tr0,r63

0000000000fe18bc <_call_many_args>:
  fe18bc:	d0ffe0f0 	addi	r15,-8,r15
  fe18c0:	acf00120 	st.q	r15,0,r18
  fe18c4:	cc000020 	movi	0,r2
  fe18c8:	cc000430 	movi	1,r3
  fe18cc:	cc000840 	movi	2,r4
  fe18d0:	cc000c50 	movi	3,r5
  fe18d4:	cc001060 	movi	4,r6
  fe18d8:	cc001470 	movi	5,r7
  fe18dc:	cc001880 	movi	6,r8
  fe18e0:	cc001c90 	movi	7,r9
  fe18e4:	cc000010 	movi	0,r1
  fe18e8:	c8000010 	shori	0,r1	! 0x0 <_.frame-0x4>
  fe18ec:	c803f810 	shori	254,r1
  fe18f0:	c8627410 	shori	6301,r1
  fe18f4:	6bf10600 	ptabs/l	r1,tr0
  fe18f8:	4401fd20 	blink	tr0,r18
  fe18fc:	8cf00120 	ld.q	r15,0,r18
  fe1900:	d0f020f0 	addi	r15,8,r15
  fe1904:	6bf14a00 	ptabs/l	r18,tr0
  fe1908:	4401fff0 	blink	tr0,r63

0000000000fe190c <_direct>:
  fe190c:	6bf14a00 	ptabs/l	r18,tr0
  fe1910:	d0ffe0f0 	addi	r15,-8,r15
  fe1914:	acf00120 	st.q	r15,0,r18
  fe1918:	6ff0fff0 	nop	
  fe191c:	d0f020f0 	addi	r15,8,r15
  fe1920:	4401fff0 	blink	tr0,r63

0000000000fe1924 <_binary>:
  fe1924:	6bf14a00 	ptabs/l	r18,tr0
  fe1928:	d0ffe0f0 	addi	r15,-8,r15
  fe192c:	acf00120 	st.q	r15,0,r18
  fe1930:	00000000 	.long 0x00000000
  fe1934:	d0f020f0 	addi	r15,8,r15
  fe1938:	4401fff0 	blink	tr0,r63

0000000000fe193c <_main>:
  fe193c:	6bf14a00 	ptabs/l	r18,tr0
  fe1940:	d0ffe0f0 	addi	r15,-8,r15
  fe1944:	acf00120 	st.q	r15,0,r18
  fe1948:	cc000020 	movi	0,r2
  fe194c:	d0f020f0 	addi	r15,8,r15
  fe1950:	4401fff0 	blink	tr0,r63
  fe1954:	00090009 	.long 0x00090009
  fe1958:	00090009 	.long 0x00090009
  fe195c:	00090009 	.long 0x00090009
