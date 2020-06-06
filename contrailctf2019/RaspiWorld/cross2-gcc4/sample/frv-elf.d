
frv-elf.x:     file format elf32-frv


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	c0 3a 40 00 	bralr
  fe1404:	80 88 00 00 	nop
  fe1408:	80 88 00 00 	nop
  fe140c:	80 88 00 00 	nop

00fe1410 <return_zero>:
  fe1410:	90 fc 00 00 	setlos lo(0x0),gr8
  fe1414:	c0 3a 40 00 	bralr
  fe1418:	80 88 00 00 	nop
  fe141c:	80 88 00 00 	nop

00fe1420 <return_one>:
  fe1420:	90 fc 00 01 	setlos 0x1,gr8
  fe1424:	c0 3a 40 00 	bralr
  fe1428:	80 88 00 00 	nop
  fe142c:	80 88 00 00 	nop

00fe1430 <return_int_size>:
  fe1430:	90 fc 00 04 	setlos 0x4,gr8
  fe1434:	c0 3a 40 00 	bralr
  fe1438:	80 88 00 00 	nop
  fe143c:	80 88 00 00 	nop

00fe1440 <return_pointer_size>:
  fe1440:	90 fc 00 04 	setlos 0x4,gr8
  fe1444:	c0 3a 40 00 	bralr
  fe1448:	80 88 00 00 	nop
  fe144c:	80 88 00 00 	nop

00fe1450 <return_short_size>:
  fe1450:	90 fc 00 02 	setlos 0x2,gr8
  fe1454:	c0 3a 40 00 	bralr
  fe1458:	80 88 00 00 	nop
  fe145c:	80 88 00 00 	nop

00fe1460 <return_long_size>:
  fe1460:	90 fc 00 04 	setlos 0x4,gr8
  fe1464:	c0 3a 40 00 	bralr
  fe1468:	80 88 00 00 	nop
  fe146c:	80 88 00 00 	nop

00fe1470 <return_short>:
  fe1470:	90 fc 77 88 	setlos 0x7788,gr8
  fe1474:	c0 3a 40 00 	bralr
  fe1478:	80 88 00 00 	nop
  fe147c:	80 88 00 00 	nop

00fe1480 <return_long>:
  fe1480:	90 f8 77 88 	sethi 0x7788,gr8
  fe1484:	90 f4 99 aa 	setlo 0x99aa,gr8
  fe1488:	c0 3a 40 00 	bralr
  fe148c:	80 88 00 00 	nop

00fe1490 <return_short_upper>:
  fe1490:	90 fc ff ee 	setlos 0xffffffee,gr8
  fe1494:	c0 3a 40 00 	bralr
  fe1498:	80 88 00 00 	nop
  fe149c:	80 88 00 00 	nop

00fe14a0 <return_long_upper>:
  fe14a0:	90 f8 ff ee 	sethi 0xffee,gr8
  fe14a4:	90 f4 dd cc 	setlo 0xddcc,gr8
  fe14a8:	c0 3a 40 00 	bralr
  fe14ac:	80 88 00 00 	nop

00fe14b0 <return_arg1>:
  fe14b0:	c0 3a 40 00 	bralr
  fe14b4:	80 88 00 00 	nop
  fe14b8:	80 88 00 00 	nop
  fe14bc:	80 88 00 00 	nop

00fe14c0 <return_arg2>:
  fe14c0:	90 88 90 00 	ori gr9,0,gr8
  fe14c4:	c0 3a 40 00 	bralr
  fe14c8:	80 88 00 00 	nop
  fe14cc:	80 88 00 00 	nop

00fe14d0 <add>:
  fe14d0:	90 00 80 09 	add gr8,gr9,gr8
  fe14d4:	c0 3a 40 00 	bralr
  fe14d8:	80 88 00 00 	nop
  fe14dc:	80 88 00 00 	nop

00fe14e0 <add3>:
  fe14e0:	90 00 80 09 	add gr8,gr9,gr8
  fe14e4:	90 00 80 0a 	add gr8,gr10,gr8
  fe14e8:	c0 3a 40 00 	bralr
  fe14ec:	80 88 00 00 	nop

00fe14f0 <add_two>:
  fe14f0:	90 40 80 02 	addi gr8,2,gr8
  fe14f4:	c0 3a 40 00 	bralr
  fe14f8:	80 88 00 00 	nop
  fe14fc:	80 88 00 00 	nop

00fe1500 <inc>:
  fe1500:	90 40 80 01 	addi gr8,1,gr8
  fe1504:	c0 3a 40 00 	bralr
  fe1508:	80 88 00 00 	nop
  fe150c:	80 88 00 00 	nop

00fe1510 <or>:
  fe1510:	90 04 90 88 	or gr9,gr8,gr8
  fe1514:	c0 3a 40 00 	bralr
  fe1518:	80 88 00 00 	nop
  fe151c:	80 88 00 00 	nop

00fe1520 <or_one>:
  fe1520:	90 88 80 01 	ori gr8,1,gr8
  fe1524:	c0 3a 40 00 	bralr
  fe1528:	80 88 00 00 	nop
  fe152c:	80 88 00 00 	nop

00fe1530 <load>:
  fe1530:	90 08 81 00 	ld @(gr8,gr0),gr8
  fe1534:	c0 3a 40 00 	bralr
  fe1538:	80 88 00 00 	nop
  fe153c:	80 88 00 00 	nop

00fe1540 <store>:
  fe1540:	88 fc 00 ff 	setlos 0xff,gr4
  fe1544:	88 0c 80 80 	st gr4,@(gr8,gr0)
  fe1548:	c0 3a 40 00 	bralr
  fe154c:	80 88 00 00 	nop

00fe1550 <load_long>:
  fe1550:	90 08 81 00 	ld @(gr8,gr0),gr8
  fe1554:	c0 3a 40 00 	bralr
  fe1558:	80 88 00 00 	nop
  fe155c:	80 88 00 00 	nop

00fe1560 <store_long>:
  fe1560:	88 f8 11 22 	sethi 0x1122,gr4
  fe1564:	88 f4 33 44 	setlo 0x3344,gr4
  fe1568:	88 0c 80 80 	st gr4,@(gr8,gr0)
  fe156c:	c0 3a 40 00 	bralr

00fe1570 <member>:
  fe1570:	88 fc 00 01 	setlos 0x1,gr4
  fe1574:	89 48 80 04 	sti gr4,@(gr8,4)
  fe1578:	90 c8 80 08 	ldi @(gr8,8),gr8
  fe157c:	c0 3a 40 00 	bralr

00fe1580 <get_static_value_addr>:
  fe1580:	90 41 0f f8 	addi gr16,-8,gr8
  fe1584:	c0 3a 40 00 	bralr
  fe1588:	80 88 00 00 	nop
  fe158c:	80 88 00 00 	nop

00fe1590 <get_static_value>:
  fe1590:	90 c9 0f f8 	ldi @(gr16,-8),gr8
  fe1594:	c0 3a 40 00 	bralr
  fe1598:	80 88 00 00 	nop
  fe159c:	80 88 00 00 	nop

00fe15a0 <set_static_value>:
  fe15a0:	91 49 0f f8 	sti gr8,@(gr16,-8)
  fe15a4:	c0 3a 40 00 	bralr
  fe15a8:	80 88 00 00 	nop
  fe15ac:	80 88 00 00 	nop

00fe15b0 <set_stack>:
  fe15b0:	82 40 1f e8 	addi sp,-24,sp
  fe15b4:	85 48 10 08 	sti fp,@(sp,8)
  fe15b8:	84 40 10 08 	addi sp,8,fp
  fe15bc:	88 0d 01 c5 	movsg lr,gr5
  fe15c0:	8b 48 20 08 	sti gr5,@(fp,8)
  fe15c4:	88 fc 00 fe 	setlos 0xfe,gr4
  fe15c8:	89 48 2f fc 	sti gr4,@(fp,-4)
  fe15cc:	88 fc 00 ff 	setlos 0xff,gr4
  fe15d0:	89 48 2f f8 	sti gr4,@(fp,-8)
  fe15d4:	8a c8 20 08 	ldi @(fp,8),gr5
  fe15d8:	84 08 21 00 	ld @(fp,gr0),fp
  fe15dc:	82 40 10 18 	addi sp,24,sp
  fe15e0:	80 30 50 00 	jmpl @(gr5,gr0)
  fe15e4:	80 88 00 00 	nop
  fe15e8:	80 88 00 00 	nop
  fe15ec:	80 88 00 00 	nop

00fe15f0 <use_stack>:
  fe15f0:	82 40 1f e8 	addi sp,-24,sp
  fe15f4:	85 48 10 08 	sti fp,@(sp,8)
  fe15f8:	84 40 10 08 	addi sp,8,fp
  fe15fc:	88 0d 01 c5 	movsg lr,gr5
  fe1600:	8b 48 20 08 	sti gr5,@(fp,8)
  fe1604:	88 fc 00 fe 	setlos 0xfe,gr4
  fe1608:	89 48 2f fc 	sti gr4,@(fp,-4)
  fe160c:	88 fc 00 ff 	setlos 0xff,gr4
  fe1610:	89 48 2f f8 	sti gr4,@(fp,-8)
  fe1614:	90 c8 2f fc 	ldi @(fp,-4),gr8
  fe1618:	88 c8 2f f8 	ldi @(fp,-8),gr4
  fe161c:	90 00 80 04 	add gr8,gr4,gr8
  fe1620:	8a c8 20 08 	ldi @(fp,8),gr5
  fe1624:	84 08 21 00 	ld @(fp,gr0),fp
  fe1628:	82 40 10 18 	addi sp,24,sp
  fe162c:	80 30 50 00 	jmpl @(gr5,gr0)

00fe1630 <call_self>:
  fe1630:	82 40 1f f0 	addi sp,-16,sp
  fe1634:	85 48 10 00 	sti fp,@(sp,0)
  fe1638:	84 88 10 00 	ori sp,0,fp
  fe163c:	88 0d 01 c5 	movsg lr,gr5
  fe1640:	8b 48 20 08 	sti gr5,@(fp,8)
  fe1644:	fe 3f ff fb 	call fe1630 <call_self>
  fe1648:	8a c8 20 08 	ldi @(fp,8),gr5
  fe164c:	84 08 21 00 	ld @(fp,gr0),fp
  fe1650:	82 40 10 10 	addi sp,16,sp
  fe1654:	80 30 50 00 	jmpl @(gr5,gr0)
  fe1658:	80 88 00 00 	nop
  fe165c:	80 88 00 00 	nop

00fe1660 <call_simple>:
  fe1660:	82 40 1f f0 	addi sp,-16,sp
  fe1664:	85 48 10 00 	sti fp,@(sp,0)
  fe1668:	84 88 10 00 	ori sp,0,fp
  fe166c:	88 0d 01 c5 	movsg lr,gr5
  fe1670:	8b 48 20 08 	sti gr5,@(fp,8)
  fe1674:	fe 3f ff 8f 	call fe14b0 <return_arg1>
  fe1678:	8a c8 20 08 	ldi @(fp,8),gr5
  fe167c:	84 08 21 00 	ld @(fp,gr0),fp
  fe1680:	82 40 10 10 	addi sp,16,sp
  fe1684:	80 30 50 00 	jmpl @(gr5,gr0)
  fe1688:	80 88 00 00 	nop
  fe168c:	80 88 00 00 	nop

00fe1690 <call_complex1>:
  fe1690:	82 40 1f f0 	addi sp,-16,sp
  fe1694:	85 48 10 00 	sti fp,@(sp,0)
  fe1698:	84 88 10 00 	ori sp,0,fp
  fe169c:	88 0d 01 c5 	movsg lr,gr5
  fe16a0:	8b 48 20 08 	sti gr5,@(fp,8)
  fe16a4:	90 fc 00 fe 	setlos 0xfe,gr8
  fe16a8:	fe 3f ff 82 	call fe14b0 <return_arg1>
  fe16ac:	90 40 80 01 	addi gr8,1,gr8
  fe16b0:	8a c8 20 08 	ldi @(fp,8),gr5
  fe16b4:	84 08 21 00 	ld @(fp,gr0),fp
  fe16b8:	82 40 10 10 	addi sp,16,sp
  fe16bc:	80 30 50 00 	jmpl @(gr5,gr0)

00fe16c0 <call_complex2>:
  fe16c0:	82 40 1f e8 	addi sp,-24,sp
  fe16c4:	85 48 10 08 	sti fp,@(sp,8)
  fe16c8:	84 40 10 08 	addi sp,8,fp
  fe16cc:	88 0d 01 c5 	movsg lr,gr5
  fe16d0:	8b 48 20 08 	sti gr5,@(fp,8)
  fe16d4:	a5 48 10 00 	sti gr18,@(sp,0)
  fe16d8:	a4 88 90 00 	ori gr9,0,gr18
  fe16dc:	90 88 90 00 	ori gr9,0,gr8
  fe16e0:	fe 3f ff 74 	call fe14b0 <return_arg1>
  fe16e4:	91 49 0f f8 	sti gr8,@(gr16,-8)
  fe16e8:	90 89 20 00 	ori gr18,0,gr8
  fe16ec:	a4 c8 10 00 	ldi @(sp,0),gr18
  fe16f0:	8a c8 20 08 	ldi @(fp,8),gr5
  fe16f4:	84 08 21 00 	ld @(fp,gr0),fp
  fe16f8:	82 40 10 18 	addi sp,24,sp
  fe16fc:	80 30 50 00 	jmpl @(gr5,gr0)

00fe1700 <call_pointer>:
  fe1700:	82 40 1f f0 	addi sp,-16,sp
  fe1704:	85 48 10 00 	sti fp,@(sp,0)
  fe1708:	84 88 10 00 	ori sp,0,fp
  fe170c:	88 0d 01 c5 	movsg lr,gr5
  fe1710:	8b 48 20 08 	sti gr5,@(fp,8)
  fe1714:	82 30 80 00 	calll @(gr8,gr0)
  fe1718:	8a c8 20 08 	ldi @(fp,8),gr5
  fe171c:	84 08 21 00 	ld @(fp,gr0),fp
  fe1720:	82 40 10 10 	addi sp,16,sp
  fe1724:	80 30 50 00 	jmpl @(gr5,gr0)
  fe1728:	80 88 00 00 	nop
  fe172c:	80 88 00 00 	nop

00fe1730 <condition>:
  fe1730:	80 00 81 49 	subcc gr8,gr9,gr0,icc0
  fe1734:	88 fc 00 01 	setlos 0x1,gr4
  fe1738:	e0 20 00 00 	ckne icc0,cc4
  fe173c:	93 68 48 40 	cor gr4,gr0,gr9,cc4,0x0
  fe1740:	90 40 90 01 	addi gr9,1,gr8
  fe1744:	c0 3a 40 00 	bralr
  fe1748:	80 88 00 00 	nop
  fe174c:	80 88 00 00 	nop

00fe1750 <loop>:
  fe1750:	80 54 80 00 	subicc gr8,0,gr0,icc0
  fe1754:	b8 18 00 08 	ble icc0,0x0,fe1774 <loop+0x24>
  fe1758:	8a fc 00 00 	setlos lo(0x0),gr5
  fe175c:	88 fc 00 00 	setlos lo(0x0),gr4
  fe1760:	8a 00 50 04 	add gr5,gr4,gr5
  fe1764:	88 40 40 01 	addi gr4,1,gr4
  fe1768:	80 00 41 48 	subcc gr4,gr8,gr0,icc0
  fe176c:	e0 1a ff fd 	bne icc0,0x2,fe1760 <loop+0x10>
  fe1770:	c0 1a 00 02 	bra fe1778 <loop+0x28>
  fe1774:	8a fc 00 00 	setlos lo(0x0),gr5
  fe1778:	90 88 50 00 	ori gr5,0,gr8
  fe177c:	c0 3a 40 00 	bralr

00fe1780 <many_args>:
  fe1780:	96 00 80 0b 	add gr8,gr11,gr11
  fe1784:	9a 00 b0 0d 	add gr11,gr13,gr13
  fe1788:	88 c8 10 04 	ldi @(sp,4),gr4
  fe178c:	90 00 d0 04 	add gr13,gr4,gr8
  fe1790:	c0 3a 40 00 	bralr
  fe1794:	80 88 00 00 	nop
  fe1798:	80 88 00 00 	nop
  fe179c:	80 88 00 00 	nop

00fe17a0 <call_many_args>:
  fe17a0:	82 40 1f e8 	addi sp,-24,sp
  fe17a4:	85 48 10 08 	sti fp,@(sp,8)
  fe17a8:	84 40 10 08 	addi sp,8,fp
  fe17ac:	88 0d 01 c5 	movsg lr,gr5
  fe17b0:	8b 48 20 08 	sti gr5,@(fp,8)
  fe17b4:	88 fc 00 06 	setlos 0x6,gr4
  fe17b8:	88 0c 10 80 	st gr4,@(sp,gr0)
  fe17bc:	88 fc 00 07 	setlos 0x7,gr4
  fe17c0:	89 48 10 04 	sti gr4,@(sp,4)
  fe17c4:	90 fc 00 00 	setlos lo(0x0),gr8
  fe17c8:	92 fc 00 01 	setlos 0x1,gr9
  fe17cc:	94 fc 00 02 	setlos 0x2,gr10
  fe17d0:	96 fc 00 03 	setlos 0x3,gr11
  fe17d4:	98 fc 00 04 	setlos 0x4,gr12
  fe17d8:	9a fc 00 05 	setlos 0x5,gr13
  fe17dc:	fe 3f ff e9 	call fe1780 <many_args>
  fe17e0:	8a c8 20 08 	ldi @(fp,8),gr5
  fe17e4:	84 08 21 00 	ld @(fp,gr0),fp
  fe17e8:	82 40 10 18 	addi sp,24,sp
  fe17ec:	80 30 50 00 	jmpl @(gr5,gr0)

00fe17f0 <direct>:
  fe17f0:	80 88 00 00 	nop
  fe17f4:	c0 3a 40 00 	bralr
  fe17f8:	80 88 00 00 	nop
  fe17fc:	80 88 00 00 	nop

00fe1800 <binary>:
  fe1800:	00 00 00 00 	add.p gr0,gr0,gr0
  fe1804:	c0 3a 40 00 	bralr
  fe1808:	80 88 00 00 	nop
  fe180c:	80 88 00 00 	nop

00fe1810 <main>:
  fe1810:	82 40 1f f0 	addi sp,-16,sp
  fe1814:	85 48 10 00 	sti fp,@(sp,0)
  fe1818:	84 88 10 00 	ori sp,0,fp
  fe181c:	88 0d 01 c5 	movsg lr,gr5
  fe1820:	8b 48 20 08 	sti gr5,@(fp,8)
  fe1824:	80 3c 00 0a 	call fe184c <__main>
  fe1828:	90 fc 00 00 	setlos lo(0x0),gr8
  fe182c:	8a c8 20 08 	ldi @(fp,8),gr5
  fe1830:	84 08 21 00 	ld @(fp,gr0),fp
  fe1834:	82 40 10 10 	addi sp,16,sp
  fe1838:	80 30 50 00 	jmpl @(gr5,gr0)
  fe183c:	80 88 00 00 	nop
