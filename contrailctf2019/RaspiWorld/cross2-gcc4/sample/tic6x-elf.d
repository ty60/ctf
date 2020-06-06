
tic6x-elf.x:     file format elf32-tic6x-elf-le


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	000c0362 	b .S2 b3
  fe1404:	00008000 	nop 5

00fe1408 <return_zero>:
  fe1408:	02000040 	mvk .D1 0,a4
  fe140c:	000c0362 	b .S2 b3
  fe1410:	00008000 	nop 5

00fe1414 <return_one>:
  fe1414:	02002040 	mvk .D1 1,a4
  fe1418:	000c0362 	b .S2 b3
  fe141c:	00008000 	nop 5

00fe1420 <return_int_size>:
  fe1420:	02008040 	mvk .D1 4,a4
  fe1424:	000c0362 	b .S2 b3
  fe1428:	00008000 	nop 5

00fe142c <return_pointer_size>:
  fe142c:	02008040 	mvk .D1 4,a4
  fe1430:	000c0362 	b .S2 b3
  fe1434:	00008000 	nop 5

00fe1438 <return_short_size>:
  fe1438:	02004040 	mvk .D1 2,a4
  fe143c:	000c0362 	b .S2 b3
  fe1440:	00008000 	nop 5

00fe1444 <return_long_size>:
  fe1444:	02008040 	mvk .D1 4,a4
  fe1448:	000c0362 	b .S2 b3
  fe144c:	00008000 	nop 5

00fe1450 <return_short>:
  fe1450:	023bc428 	mvk .S1 30600,a4
  fe1454:	000c0362 	b .S2 b3
  fe1458:	00008000 	nop 5

00fe145c <return_long>:
  fe145c:	024cd528 	mvk .S1 -26198,a4
  fe1460:	023bc468 	mvkh .S1 2005401600,a4
  fe1464:	000c0362 	b .S2 b3
  fe1468:	00008000 	nop 5

00fe146c <return_short_upper>:
  fe146c:	027ff728 	mvk .S1 -18,a4
  fe1470:	000c0362 	b .S2 b3
  fe1474:	00008000 	nop 5

00fe1478 <return_long_upper>:
  fe1478:	026ee628 	mvk .S1 -8756,a4
  fe147c:	027ff768 	mvkh .S1 4293787648,a4
  fe1480:	000c0362 	b .S2 b3
  fe1484:	00008000 	nop 5

00fe1488 <return_arg1>:
  fe1488:	000c0362 	b .S2 b3
  fe148c:	00008000 	nop 5

00fe1490 <return_arg2>:
  fe1490:	02101fd8 	or .L1X 0,b4,a4
  fe1494:	000c0362 	b .S2 b3
  fe1498:	00008000 	nop 5

00fe149c <add>:
  fe149c:	02109ab0 	add .D1X a4,b4,a4
  fe14a0:	000c0362 	b .S2 b3
  fe14a4:	00008000 	nop 5

00fe14a8 <add3>:
  fe14a8:	02109ab0 	add .D1X a4,b4,a4
  fe14ac:	0210c840 	add .D1 a4,a6,a4
  fe14b0:	000c0362 	b .S2 b3
  fe14b4:	00008000 	nop 5

00fe14b8 <add_two>:
  fe14b8:	02104940 	add .D1 a4,2,a4
  fe14bc:	000c0362 	b .S2 b3
  fe14c0:	00008000 	nop 5

00fe14c4 <inc>:
  fe14c4:	02102940 	add .D1 a4,1,a4
  fe14c8:	000c0362 	b .S2 b3
  fe14cc:	00008000 	nop 5

00fe14d0 <or>:
  fe14d0:	021098b0 	or .D1X a4,b4,a4
  fe14d4:	000c0362 	b .S2 b3
  fe14d8:	00008000 	nop 5

00fe14dc <or_one>:
  fe14dc:	021028f0 	or .D1 1,a4,a4
  fe14e0:	000c0362 	b .S2 b3
  fe14e4:	00008000 	nop 5

00fe14e8 <load>:
  fe14e8:	02100264 	ldw .D1T1 *+a4(0),a4
  fe14ec:	00006000 	nop 4
  fe14f0:	000c0362 	b .S2 b3
  fe14f4:	00008000 	nop 5

00fe14f8 <store>:
  fe14f8:	01807fa8 	mvk .S1 255,a3
  fe14fc:	01900274 	stw .D1T1 a3,*+a4(0)
  fe1500:	000c0362 	b .S2 b3
  fe1504:	00008000 	nop 5

00fe1508 <load_long>:
  fe1508:	02100264 	ldw .D1T1 *+a4(0),a4
  fe150c:	00006000 	nop 4
  fe1510:	000c0362 	b .S2 b3
  fe1514:	00008000 	nop 5

00fe1518 <store_long>:
  fe1518:	0199a228 	mvk .S1 13124,a3
  fe151c:	01889168 	mvkh .S1 287440896,a3
  fe1520:	01900274 	stw .D1T1 a3,*+a4(0)
  fe1524:	000c0362 	b .S2 b3
  fe1528:	00008000 	nop 5

00fe152c <member>:
  fe152c:	01802040 	mvk .D1 1,a3
  fe1530:	01902274 	stw .D1T1 a3,*+a4(4)
  fe1534:	02104264 	ldw .D1T1 *+a4(8),a4
  fe1538:	00006000 	nop 4
  fe153c:	000c0362 	b .S2 b3
  fe1540:	00008000 	nop 5

00fe1544 <get_static_value_addr>:
  fe1544:	12000a7c 	addaw .D1X b14,10,a4
  fe1548:	000c0362 	b .S2 b3
  fe154c:	00008000 	nop 5

00fe1550 <get_static_value>:
  fe1550:	02000a6c 	ldw .D2T1 *+b14(40),a4
  fe1554:	00006000 	nop 4
  fe1558:	000c0362 	b .S2 b3
  fe155c:	00008000 	nop 5

00fe1560 <set_static_value>:
  fe1560:	02000a7c 	stw .D2T1 a4,*+b14(40)
  fe1564:	000c0362 	b .S2 b3
  fe1568:	00008000 	nop 5

00fe156c <set_stack>:
  fe156c:	07be09c2 	sub .D2 b15,16,b15
  fe1570:	01807f28 	mvk .S1 254,a3
  fe1574:	01bc62f4 	stw .D2T1 a3,*+b15(12)
  fe1578:	02007fa8 	mvk .S1 255,a4
  fe157c:	023c42f4 	stw .D2T1 a4,*+b15(8)
  fe1580:	07be0942 	add .D2 b15,16,b15
  fe1584:	000c0362 	b .S2 b3
  fe1588:	00008000 	nop 5

00fe158c <use_stack>:
  fe158c:	07be09c2 	sub .D2 b15,16,b15
  fe1590:	01807f28 	mvk .S1 254,a3
  fe1594:	01bc62f4 	stw .D2T1 a3,*+b15(12)
  fe1598:	02007fa8 	mvk .S1 255,a4
  fe159c:	023c42f4 	stw .D2T1 a4,*+b15(8)
  fe15a0:	02bc62e4 	ldw .D2T1 *+b15(12),a5
  fe15a4:	00006000 	nop 4
  fe15a8:	033c42e4 	ldw .D2T1 *+b15(8),a6
  fe15ac:	00006000 	nop 4
  fe15b0:	0214c840 	add .D1 a5,a6,a4
  fe15b4:	07be0942 	add .D2 b15,16,b15
  fe15b8:	000c0362 	b .S2 b3
  fe15bc:	00008000 	nop 5

00fe15c0 <call_self>:
  fe15c0:	07be09c2 	sub .D2 b15,16,b15
  fe15c4:	01bc62f6 	stw .D2T2 b3,*+b15(12)
  fe15c8:	10000012 	callp .S2 fe15c0 <call_self>,b3
  fe15cc:	01bc62e6 	ldw .D2T2 *+b15(12),b3
  fe15d0:	00006000 	nop 4
  fe15d4:	07be0942 	add .D2 b15,16,b15
  fe15d8:	000c0362 	b .S2 b3
  fe15dc:	00008000 	nop 5

00fe15e0 <call_simple>:
  fe15e0:	07be09c2 	sub .D2 b15,16,b15
  fe15e4:	01bc62f6 	stw .D2T2 b3,*+b15(12)
  fe15e8:	1fffd512 	callp .S2 fe1488 <return_arg1>,b3
  fe15ec:	01bc62e6 	ldw .D2T2 *+b15(12),b3
  fe15f0:	00006000 	nop 4
  fe15f4:	07be0942 	add .D2 b15,16,b15
  fe15f8:	000c0362 	b .S2 b3
  fe15fc:	00008000 	nop 5

00fe1600 <call_complex1>:
  fe1600:	07be09c2 	sub .D2 b15,16,b15
  fe1604:	01bc62f6 	stw .D2T2 b3,*+b15(12)
  fe1608:	02007f28 	mvk .S1 254,a4
  fe160c:	1fffd112 	callp .S2 fe1488 <return_arg1>,b3
  fe1610:	02102940 	add .D1 a4,1,a4
  fe1614:	01bc62e6 	ldw .D2T2 *+b15(12),b3
  fe1618:	00006000 	nop 4
  fe161c:	07be0942 	add .D2 b15,16,b15
  fe1620:	000c0362 	b .S2 b3
  fe1624:	00008000 	nop 5

00fe1628 <call_complex2>:
  fe1628:	07be09c2 	sub .D2 b15,16,b15
  fe162c:	01bc82f6 	stw .D2T2 b3,*+b15(16)
  fe1630:	053c62f4 	stw .D2T1 a10,*+b15(12)
  fe1634:	05101fd8 	or .L1X 0,b4,a10
  fe1638:	02101fd8 	or .L1X 0,b4,a4
  fe163c:	1fffcd12 	callp .S2 fe1488 <return_arg1>,b3
  fe1640:	02000a7c 	stw .D2T1 a4,*+b14(40)
  fe1644:	022808f0 	or .D1 0,a10,a4
  fe1648:	053c62e4 	ldw .D2T1 *+b15(12),a10
  fe164c:	00006000 	nop 4
  fe1650:	01bc82e6 	ldw .D2T2 *+b15(16),b3
  fe1654:	00006000 	nop 4
  fe1658:	07be0942 	add .D2 b15,16,b15
  fe165c:	000c0362 	b .S2 b3
  fe1660:	00008000 	nop 5

00fe1664 <call_pointer>:
  fe1664:	07be09c2 	sub .D2 b15,16,b15
  fe1668:	01bc62f6 	stw .D2T2 b3,*+b15(12)
  fe166c:	00101362 	b .S2X a4
  fe1670:	01858162 	addkpc .S2 fe1674 <call_pointer+0x10>,b3,4
  fe1674:	01bc62e6 	ldw .D2T2 *+b15(12),b3
  fe1678:	00006000 	nop 4
  fe167c:	07be0942 	add .D2 b15,16,b15
  fe1680:	000c0362 	b .S2 b3
  fe1684:	00008000 	nop 5

00fe1688 <condition>:
  fe1688:	01901fd8 	or .L1X 0,b4,a3
  fe168c:	00106a78 	cmpeq .L1 a3,a4,a0
  fe1690:	c2002042 	[a0] mvk .D2 1,b4
  fe1694:	02103058 	add .L1X 1,b4,a4
  fe1698:	000c0362 	b .S2 b3
  fe169c:	00008000 	nop 5

00fe16a0 <loop>:
  fe16a0:	00100ad8 	cmplt .L1 0,a4,a0
  fe16a4:	d1800040 	[!a0] mvk .D1 0,a3
  fe16a8:	d0000612 	[!a0] b .S2 fe16d0 <loop+0x30>
  fe16ac:	00008000 	nop 5
  fe16b0:	01800040 	mvk .D1 0,a3
  fe16b4:	02800040 	mvk .D1 0,a5
  fe16b8:	0090a8c0 	sub .D1 a4,a5,a1
  fe16bc:	008429c0 	sub .D1 a1,1,a1
  fe16c0:	018ca840 	add .D1 a3,a5,a3
  fe16c4:	02942940 	add .D1 a5,1,a5
  fe16c8:	8fffff92 	[a1] b .S2 fe16bc <loop+0x1c>
  fe16cc:	00008000 	nop 5
  fe16d0:	020c08f0 	or .D1 0,a3,a4
  fe16d4:	000c0362 	b .S2 b3
  fe16d8:	00008000 	nop 5

00fe16dc <many_args>:
  fe16dc:	07bd09c2 	sub .D2 b15,8,b15
  fe16e0:	053c42f6 	stw .D2T2 b10,*+b15(8)
  fe16e4:	0310dab2 	add .D2X b6,a4,b6
  fe16e8:	04190842 	add .D2 b6,b8,b8
  fe16ec:	02214842 	add .D2 b8,b10,b4
  fe16f0:	02101fd8 	or .L1X 0,b4,a4
  fe16f4:	053c42e6 	ldw .D2T2 *+b15(8),b10
  fe16f8:	00006000 	nop 4
  fe16fc:	07bd0942 	add .D2 b15,8,b15
  fe1700:	000c0362 	b .S2 b3
  fe1704:	00008000 	nop 5

00fe1708 <call_many_args>:
  fe1708:	07be09c2 	sub .D2 b15,16,b15
  fe170c:	053c82f6 	stw .D2T2 b10,*+b15(16)
  fe1710:	01bc62f6 	stw .D2T2 b3,*+b15(12)
  fe1714:	053c42f4 	stw .D2T1 a10,*+b15(8)
  fe1718:	02000040 	mvk .D1 0,a4
  fe171c:	02002042 	mvk .D2 1,b4
  fe1720:	03004040 	mvk .D1 2,a6
  fe1724:	03006042 	mvk .D2 3,b6
  fe1728:	04008040 	mvk .D1 4,a8
  fe172c:	0400a042 	mvk .D2 5,b8
  fe1730:	0500c040 	mvk .D1 6,a10
  fe1734:	0500e042 	mvk .D2 7,b10
  fe1738:	1ffff792 	callp .S2 fe16dc <many_args>,b3
  fe173c:	053c42e4 	ldw .D2T1 *+b15(8),a10
  fe1740:	00006000 	nop 4
  fe1744:	01bc62e6 	ldw .D2T2 *+b15(12),b3
  fe1748:	00006000 	nop 4
  fe174c:	053c82e6 	ldw .D2T2 *+b15(16),b10
  fe1750:	00006000 	nop 4
  fe1754:	07be0942 	add .D2 b15,16,b15
  fe1758:	000c0362 	b .S2 b3
  fe175c:	00008000 	nop 5

00fe1760 <direct>:
  fe1760:	00000000 	nop 1
  fe1764:	000c0362 	b .S2 b3
  fe1768:	00008000 	nop 5

00fe176c <binary>:
	...
  fe1774:	000c0362 	b .S2 b3
  fe1778:	00008000 	nop 5

00fe177c <main>:
  fe177c:	02000040 	mvk .D1 0,a4
  fe1780:	000c0362 	b .S2 b3
  fe1784:	00008000 	nop 5
	...
