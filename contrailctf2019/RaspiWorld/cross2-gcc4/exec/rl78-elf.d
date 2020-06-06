
rl78-elf.x:     file format elf32-rl78


Disassembly of section .text:

00001400 <_start>:
    1400:	41 00                         	mov	es, #0
    1402:	30 04 1c                      	movw	ax, #0x1c04
    1405:	24 f0 17                      	subw	ax, #0x17f0
    1408:	14                            	movw	de, ax
    1409:	32 f0 17                      	movw	bc, #0x17f0
    140c:	15                            	movw	ax, de
    140d:	44 00 00                      	cmpw	ax, #0
    1410:	dd 0b                         	bz	$141d <_start+0x1d>
    1412:	11 49 00 00                   	mov	a, es:0[bc]
    1416:	48 00 00                      	mov	0[bc], a
    1419:	a3                            	incw	bc
    141a:	b5                            	decw	de
    141b:	ef ef                         	br	$140c <_start+0xc>
    141d:	30 06 1c                      	movw	ax, #0x1c06
    1420:	24 04 1c                      	subw	ax, #0x1c04
    1423:	14                            	movw	de, ax
    1424:	32 04 1c                      	movw	bc, #0x1c04
    1427:	15                            	movw	ax, de
    1428:	44 00 00                      	cmpw	ax, #0
    142b:	dd 08                         	bz	$1435 <_start+0x35>
    142d:	39 00 00 00                   	mov	0[bc], #0
    1431:	a3                            	incw	bc
    1432:	b5                            	decw	de
    1433:	ef f2                         	br	$1427 <_start+0x27>
    1435:	cb f8 10 20                   	movw	0xffff8, #0x2010
    1439:	fc 9c 17 00                   	call	!!179c <_main>
    143d:	ad f0                         	movw	ax, 0xffef0
    143f:	c1                            	push	ax
    1440:	fc 44 14 00                   	call	!!1444 <___exit>

00001444 <___exit>:
    1444:	88 04                         	mov	a, [sp+4]
    1446:	61 ed                         	halt
    1448:	d7                            	ret

00001449 <___read>:
    1449:	d7                            	ret

0000144a <___write>:
    144a:	a8 06                         	movw	ax, [sp+6]
    144c:	16                            	movw	hl, ax
    144d:	8b                            	mov	a, [hl]
    144e:	9e 10                         	mov	0xfff10, a
    1450:	d7                            	ret

00001451 <___open>:
    1451:	d7                            	ret

00001452 <___close>:
    1452:	d7                            	ret
	...

00001460 <_stack_addr>:
    1460:	10 20                         	addw	sp, #32
	...

00001470 <_exit>:
    1470:	20 02                         	subw	sp, #2
    1472:	ae f8                         	movw	ax, sp
    1474:	bd f0                         	movw	0xffef0, ax
    1476:	da f0                         	movw	bc, 0xffef0
    1478:	a8 06                         	movw	ax, [sp+6]
    147a:	78 00 00                      	movw	0[bc], ax
    147d:	fc 44 14 00                   	call	!!1444 <___exit>

00001481 <_write1>:
    1481:	20 06                         	subw	sp, #6
    1483:	ae f8                         	movw	ax, sp
    1485:	bd f0                         	movw	0xffef0, ax
    1487:	da f0                         	movw	bc, 0xffef0
    1489:	a8 0a                         	movw	ax, [sp+10]
    148b:	78 00 00                      	movw	0[bc], ax
    148e:	ae f8                         	movw	ax, sp
    1490:	04 0a 00                      	addw	ax, #10
    1493:	bd f0                         	movw	0xffef0, ax
    1495:	04 02 00                      	addw	ax, #2
    1498:	b8 02                         	movw	[sp+2], ax
    149a:	e6                            	onew	ax
    149b:	b8 04                         	movw	[sp+4], ax
    149d:	fc 4a 14 00                   	call	!!144a <___write>

000014a1 <.LVL3>:
    14a1:	10 06                         	addw	sp, #6
    14a3:	d7                            	ret

000014a4 <_putchar>:
    14a4:	20 04                         	subw	sp, #4
    14a6:	ae f8                         	movw	ax, sp
    14a8:	bd f0                         	movw	0xffef0, ax
    14aa:	da f0                         	movw	bc, 0xffef0
    14ac:	a8 08                         	movw	ax, [sp+8]
    14ae:	78 00 00                      	movw	0[bc], ax
    14b1:	88 0a                         	mov	a, [sp+10]
    14b3:	9d f1                         	mov	0xffef1, a
    14b5:	98 02                         	mov	[sp+2], a
    14b7:	fc 81 14 00                   	call	!!1481 <_write1>

000014bb <.LVL5>:
    14bb:	a8 0a                         	movw	ax, [sp+10]
    14bd:	bd f0                         	movw	0xffef0, ax
    14bf:	10 04                         	addw	sp, #4
    14c1:	d7                            	ret

000014c2 <_puts>:
    14c2:	61 ef                         	sel	rb2
    14c4:	c1                            	push	ax
    14c5:	c3                            	push	bc
    14c6:	61 cf                         	sel	rb0
    14c8:	20 04                         	subw	sp, #4
    14ca:	a8 0c                         	movw	ax, [sp+12]
    14cc:	bd ea                         	movw	0xffeea, ax
    14ce:	a8 0e                         	movw	ax, [sp+14]
    14d0:	bd e8                         	movw	0xffee8, ax
    14d2:	fa e8                         	movw	hl, 0xffee8
    14d4:	8b                            	mov	a, [hl]
    14d5:	9d f0                         	mov	0xffef0, a
    14d7:	d4 f0                         	cmp0	0xffef0
    14d9:	61 f8                         	sknz
    14db:	ec 04 15 00                   	br	!!1504 <.L5>

000014df <.L7>:
    14df:	ae f8                         	movw	ax, sp
    14e1:	bd f2                         	movw	0xffef2, ax
    14e3:	da f2                         	movw	bc, 0xffef2
    14e5:	ad ea                         	movw	ax, 0xffeea
    14e7:	78 00 00                      	movw	0[bc], ax
    14ea:	8d f0                         	mov	a, 0xffef0
    14ec:	70                            	mov	x, a
    14ed:	51 00                         	mov	a, #0
    14ef:	b8 02                         	movw	[sp+2], ax
    14f1:	fc a4 14 00                   	call	!!14a4 <_putchar>

000014f5 <.LVL8>:
    14f5:	a6 e8                         	incw	0xffee8
    14f7:	fa e8                         	movw	hl, 0xffee8
    14f9:	8b                            	mov	a, [hl]
    14fa:	9d f0                         	mov	0xffef0, a
    14fc:	d4 f0                         	cmp0	0xffef0
    14fe:	61 e8                         	skz
    1500:	ec df 14 00                   	br	!!14df <.L7>

00001504 <.L5>:
    1504:	c9 f0 00 00                   	movw	0xffef0, #0
    1508:	10 04                         	addw	sp, #4
    150a:	61 ef                         	sel	rb2
    150c:	c2                            	pop	bc
    150d:	c0                            	pop	ax
    150e:	61 cf                         	sel	rb0
    1510:	d7                            	ret

00001511 <_rshift1>:
    1511:	61 ef                         	sel	rb2
    1513:	c1                            	push	ax
    1514:	c3                            	push	bc
    1515:	c5                            	push	de
    1516:	61 cf                         	sel	rb0
    1518:	20 14                         	subw	sp, #20
    151a:	a8 1e                         	movw	ax, [sp+30]
    151c:	bd e8                         	movw	0xffee8, ax
    151e:	a8 20                         	movw	ax, [sp+32]
    1520:	bd ea                         	movw	0xffeea, ax
    1522:	c9 ec 1f 00                   	movw	0xffeec, #31
    1526:	c9 f4 00 00                   	movw	0xffef4, #0
    152a:	ad f4                         	movw	ax, 0xffef4
    152c:	b8 08                         	movw	[sp+8], ax
    152e:	b8 0a                         	movw	[sp+10], ax
    1530:	b8 06                         	movw	[sp+6], ax
    1532:	c9 f4 01 00                   	movw	0xffef4, #1
    1536:	ad f4                         	movw	ax, 0xffef4
    1538:	b8 04                         	movw	[sp+4], ax

0000153a <.L12>:
    153a:	a8 04                         	movw	ax, [sp+4]
    153c:	bd f4                         	movw	0xffef4, ax
    153e:	a8 06                         	movw	ax, [sp+6]
    1540:	bd f6                         	movw	0xffef6, ax
    1542:	ad f4                         	movw	ax, 0xffef4
    1544:	06 f4                         	addw	ax, 0xffef4
    1546:	bd f0                         	movw	0xffef0, ax
    1548:	ad f6                         	movw	ax, 0xffef6
    154a:	61 d8                         	sknc
    154c:	a1                            	incw	ax
    154d:	06 f6                         	addw	ax, 0xffef6
    154f:	bd f2                         	movw	0xffef2, ax
    1551:	ad f0                         	movw	ax, 0xffef0
    1553:	b8 00                         	movw	[sp], ax
    1555:	ad f2                         	movw	ax, 0xffef2
    1557:	b8 02                         	movw	[sp+2], ax
    1559:	88 00                         	mov	a, [sp]
    155b:	9d f5                         	mov	0xffef5, a
    155d:	5b e8                         	and	a, 0xffee8
    155f:	9d f0                         	mov	0xffef0, a
    1561:	88 01                         	mov	a, [sp+1]
    1563:	9d f6                         	mov	0xffef6, a
    1565:	5b e9                         	and	a, 0xffee9
    1567:	9d f1                         	mov	0xffef1, a
    1569:	88 02                         	mov	a, [sp+2]
    156b:	9d f7                         	mov	0xffef7, a
    156d:	5b ea                         	and	a, 0xffeea
    156f:	9d f2                         	mov	0xffef2, a
    1571:	88 03                         	mov	a, [sp+3]
    1573:	9d f4                         	mov	0xffef4, a
    1575:	5b eb                         	and	a, 0xffeeb
    1577:	9d f3                         	mov	0xffef3, a
    1579:	8d f0                         	mov	a, 0xffef0
    157b:	6b f1                         	or	a, 0xffef1
    157d:	9d f6                         	mov	0xffef6, a
    157f:	6b f2                         	or	a, 0xffef2
    1581:	9d f6                         	mov	0xffef6, a
    1583:	6b f3                         	or	a, 0xffef3
    1585:	9d f6                         	mov	0xffef6, a
    1587:	d4 f6                         	cmp0	0xffef6
    1589:	61 f8                         	sknz
    158b:	ec db 15 00                   	br	!!15db <.L10>
    158f:	88 08                         	mov	a, [sp+8]
    1591:	9d f5                         	mov	0xffef5, a
    1593:	88 04                         	mov	a, [sp+4]
    1595:	9d f6                         	mov	0xffef6, a
    1597:	8d f5                         	mov	a, 0xffef5
    1599:	6b f6                         	or	a, 0xffef6
    159b:	9d f5                         	mov	0xffef5, a
    159d:	98 0c                         	mov	[sp+12], a
    159f:	88 09                         	mov	a, [sp+9]
    15a1:	9d f7                         	mov	0xffef7, a
    15a3:	88 05                         	mov	a, [sp+5]
    15a5:	9d f4                         	mov	0xffef4, a
    15a7:	8d f7                         	mov	a, 0xffef7
    15a9:	6b f4                         	or	a, 0xffef4
    15ab:	9d f7                         	mov	0xffef7, a
    15ad:	98 0d                         	mov	[sp+13], a
    15af:	88 0a                         	mov	a, [sp+10]
    15b1:	9d f5                         	mov	0xffef5, a
    15b3:	88 06                         	mov	a, [sp+6]
    15b5:	9d f6                         	mov	0xffef6, a
    15b7:	8d f5                         	mov	a, 0xffef5
    15b9:	6b f6                         	or	a, 0xffef6
    15bb:	9d f5                         	mov	0xffef5, a
    15bd:	98 0e                         	mov	[sp+14], a
    15bf:	88 0b                         	mov	a, [sp+11]
    15c1:	9d f7                         	mov	0xffef7, a
    15c3:	88 07                         	mov	a, [sp+7]
    15c5:	9d f4                         	mov	0xffef4, a
    15c7:	8d f7                         	mov	a, 0xffef7
    15c9:	6b f4                         	or	a, 0xffef4
    15cb:	9d f7                         	mov	0xffef7, a
    15cd:	98 0f                         	mov	[sp+15], a
    15cf:	a8 0c                         	movw	ax, [sp+12]
    15d1:	bd f6                         	movw	0xffef6, ax
    15d3:	b8 08                         	movw	[sp+8], ax
    15d5:	a8 0e                         	movw	ax, [sp+14]
    15d7:	bd f4                         	movw	0xffef4, ax
    15d9:	b8 0a                         	movw	[sp+10], ax

000015db <.L10>:
    15db:	b6 ec                         	decw	0xffeec
    15dd:	a8 00                         	movw	ax, [sp]
    15df:	bd f6                         	movw	0xffef6, ax
    15e1:	b8 04                         	movw	[sp+4], ax
    15e3:	a8 02                         	movw	ax, [sp+2]
    15e5:	bd f4                         	movw	0xffef4, ax
    15e7:	b8 06                         	movw	[sp+6], ax
    15e9:	ad ec                         	movw	ax, 0xffeec
    15eb:	44 00 00                      	cmpw	ax, #0
    15ee:	61 e8                         	skz
    15f0:	ec 3a 15 00                   	br	!!153a <.L12>
    15f4:	a8 08                         	movw	ax, [sp+8]
    15f6:	bd f2                         	movw	0xffef2, ax
    15f8:	b8 10                         	movw	[sp+16], ax
    15fa:	a8 0a                         	movw	ax, [sp+10]
    15fc:	bd f4                         	movw	0xffef4, ax
    15fe:	b8 12                         	movw	[sp+18], ax
    1600:	ad f2                         	movw	ax, 0xffef2
    1602:	bd f0                         	movw	0xffef0, ax
    1604:	ad f4                         	movw	ax, 0xffef4
    1606:	bd f2                         	movw	0xffef2, ax
    1608:	10 14                         	addw	sp, #20
    160a:	61 ef                         	sel	rb2
    160c:	c4                            	pop	de
    160d:	c2                            	pop	bc
    160e:	c0                            	pop	ax
    160f:	61 cf                         	sel	rb0
    1611:	d7                            	ret

00001612 <___lshrsi3>:
    1612:	61 ef                         	sel	rb2
    1614:	c1                            	push	ax
    1615:	61 cf                         	sel	rb0
    1617:	20 0c                         	subw	sp, #12
    1619:	a8 12                         	movw	ax, [sp+18]
    161b:	bd f0                         	movw	0xffef0, ax
    161d:	b8 04                         	movw	[sp+4], ax
    161f:	a8 14                         	movw	ax, [sp+20]
    1621:	bd f2                         	movw	0xffef2, ax
    1623:	b8 06                         	movw	[sp+6], ax
    1625:	c9 e8 04 00                   	movw	0xffee8, #4

00001629 <.L15>:
    1629:	a8 04                         	movw	ax, [sp+4]
    162b:	bd f2                         	movw	0xffef2, ax
    162d:	ae f8                         	movw	ax, sp
    162f:	bd f0                         	movw	0xffef0, ax
    1631:	da f0                         	movw	bc, 0xffef0
    1633:	ad f2                         	movw	ax, 0xffef2
    1635:	78 00 00                      	movw	0[bc], ax
    1638:	a8 06                         	movw	ax, [sp+6]
    163a:	bd f0                         	movw	0xffef0, ax
    163c:	b8 02                         	movw	[sp+2], ax
    163e:	fc 11 15 00                   	call	!!1511 <_rshift1>

00001642 <.LVL20>:
    1642:	ad f0                         	movw	ax, 0xffef0
    1644:	b8 04                         	movw	[sp+4], ax
    1646:	ad f2                         	movw	ax, 0xffef2
    1648:	b8 06                         	movw	[sp+6], ax
    164a:	b6 e8                         	decw	0xffee8
    164c:	ad e8                         	movw	ax, 0xffee8
    164e:	44 00 00                      	cmpw	ax, #0
    1651:	61 e8                         	skz
    1653:	ec 29 16 00                   	br	!!1629 <.L15>
    1657:	a8 04                         	movw	ax, [sp+4]
    1659:	bd f2                         	movw	0xffef2, ax
    165b:	b8 08                         	movw	[sp+8], ax
    165d:	a8 06                         	movw	ax, [sp+6]
    165f:	bd f0                         	movw	0xffef0, ax
    1661:	b8 0a                         	movw	[sp+10], ax
    1663:	ad f2                         	movw	ax, 0xffef2
    1665:	bd f0                         	movw	0xffef0, ax
    1667:	a8 06                         	movw	ax, [sp+6]
    1669:	bd f2                         	movw	0xffef2, ax
    166b:	10 0c                         	addw	sp, #12
    166d:	61 ef                         	sel	rb2
    166f:	c0                            	pop	ax
    1670:	61 cf                         	sel	rb0
    1672:	d7                            	ret

00001673 <_putxval>:
    1673:	61 ef                         	sel	rb2
    1675:	c1                            	push	ax
    1676:	c3                            	push	bc
    1677:	c5                            	push	de
    1678:	61 cf                         	sel	rb0
    167a:	20 24                         	subw	sp, #36
    167c:	a8 30                         	movw	ax, [sp+48]
    167e:	bd f4                         	movw	0xffef4, ax
    1680:	b8 06                         	movw	[sp+6], ax
    1682:	a8 32                         	movw	ax, [sp+50]
    1684:	bd f0                         	movw	0xffef0, ax
    1686:	b8 08                         	movw	[sp+8], ax
    1688:	a8 34                         	movw	ax, [sp+52]
    168a:	bd e8                         	movw	0xffee8, ax
    168c:	f1                            	clrb	a
    168d:	98 23                         	mov	[sp+35], a
    168f:	88 06                         	mov	a, [sp+6]
    1691:	9d f1                         	mov	0xffef1, a
    1693:	88 07                         	mov	a, [sp+7]
    1695:	9d f2                         	mov	0xffef2, a
    1697:	8d f1                         	mov	a, 0xffef1
    1699:	6b f2                         	or	a, 0xffef2
    169b:	9d f0                         	mov	0xffef0, a
    169d:	88 08                         	mov	a, [sp+8]
    169f:	9d f3                         	mov	0xffef3, a
    16a1:	8d f0                         	mov	a, 0xffef0
    16a3:	6b f3                         	or	a, 0xffef3
    16a5:	9d f0                         	mov	0xffef0, a
    16a7:	88 09                         	mov	a, [sp+9]
    16a9:	9d f4                         	mov	0xffef4, a
    16ab:	8d f0                         	mov	a, 0xffef0
    16ad:	6b f4                         	or	a, 0xffef4
    16af:	9d f0                         	mov	0xffef0, a
    16b1:	d4 f0                         	cmp0	0xffef0
    16b3:	61 e8                         	skz
    16b5:	ec c8 16 00                   	br	!!16c8 <.L18>
    16b9:	ad e8                         	movw	ax, 0xffee8
    16bb:	44 00 00                      	cmpw	ax, #0
    16be:	61 e8                         	skz
    16c0:	ec c8 16 00                   	br	!!16c8 <.L18>
    16c4:	c9 e8 01 00                   	movw	0xffee8, #1

000016c8 <.L18>:
    16c8:	ae f8                         	movw	ax, sp
    16ca:	bd f0                         	movw	0xffef0, ax
    16cc:	04 22 00                      	addw	ax, #34
    16cf:	b8 0a                         	movw	[sp+10], ax
    16d1:	ec 32 17 00                   	br	!!1732 <.L19>

000016d5 <.L21>:
    16d5:	88 06                         	mov	a, [sp+6]
    16d7:	9d f1                         	mov	0xffef1, a
    16d9:	5c 0f                         	and	a, #15
    16db:	9d ea                         	mov	0xffeea, a
    16dd:	f1                            	clrb	a
    16de:	9d eb                         	mov	0xffeeb, a
    16e0:	30 f0 17                      	movw	ax, #0x17f0
    16e3:	06 ea                         	addw	ax, 0xffeea
    16e5:	bd f0                         	movw	0xffef0, ax
    16e7:	a8 0a                         	movw	ax, [sp+10]
    16e9:	bd f2                         	movw	0xffef2, ax
    16eb:	da f2                         	movw	bc, 0xffef2
    16ed:	fa f0                         	movw	hl, 0xffef0
    16ef:	8b                            	mov	a, [hl]
    16f0:	48 00 00                      	mov	0[bc], a
    16f3:	a8 06                         	movw	ax, [sp+6]
    16f5:	bd f2                         	movw	0xffef2, ax
    16f7:	ae f8                         	movw	ax, sp
    16f9:	bd f0                         	movw	0xffef0, ax
    16fb:	da f0                         	movw	bc, 0xffef0
    16fd:	ad f2                         	movw	ax, 0xffef2
    16ff:	78 00 00                      	movw	0[bc], ax
    1702:	a8 08                         	movw	ax, [sp+8]
    1704:	bd f4                         	movw	0xffef4, ax
    1706:	b8 02                         	movw	[sp+2], ax
    1708:	51 04                         	mov	a, #4
    170a:	98 04                         	mov	[sp+4], a
    170c:	fc 12 16 00                   	call	!!1612 <___lshrsi3>
    1710:	ad f0                         	movw	ax, 0xffef0
    1712:	b8 0c                         	movw	[sp+12], ax
    1714:	ad f2                         	movw	ax, 0xffef2
    1716:	b8 0e                         	movw	[sp+14], ax
    1718:	ad f0                         	movw	ax, 0xffef0
    171a:	b8 06                         	movw	[sp+6], ax
    171c:	ad f2                         	movw	ax, 0xffef2
    171e:	b8 08                         	movw	[sp+8], ax
    1720:	ad e8                         	movw	ax, 0xffee8
    1722:	44 00 00                      	cmpw	ax, #0
    1725:	61 f8                         	sknz
    1727:	ec 2d 17 00                   	br	!!172d <.L20>

0000172b <.L23>:
    172b:	b6 e8                         	decw	0xffee8

0000172d <.L20>:
    172d:	a8 0a                         	movw	ax, [sp+10]
    172f:	b1                            	decw	ax
    1730:	b8 0a                         	movw	[sp+10], ax

00001732 <.L19>:
    1732:	a8 0a                         	movw	ax, [sp+10]
    1734:	b8 10                         	movw	[sp+16], ax
    1736:	88 06                         	mov	a, [sp+6]
    1738:	9d f3                         	mov	0xffef3, a
    173a:	88 07                         	mov	a, [sp+7]
    173c:	9d f4                         	mov	0xffef4, a
    173e:	8d f3                         	mov	a, 0xffef3
    1740:	6b f4                         	or	a, 0xffef4
    1742:	9d f0                         	mov	0xffef0, a
    1744:	88 08                         	mov	a, [sp+8]
    1746:	9d f5                         	mov	0xffef5, a
    1748:	8d f0                         	mov	a, 0xffef0
    174a:	6b f5                         	or	a, 0xffef5
    174c:	9d f0                         	mov	0xffef0, a
    174e:	88 09                         	mov	a, [sp+9]
    1750:	9d f1                         	mov	0xffef1, a
    1752:	8d f0                         	mov	a, 0xffef0
    1754:	6b f1                         	or	a, 0xffef1
    1756:	9d f0                         	mov	0xffef0, a
    1758:	d4 f0                         	cmp0	0xffef0
    175a:	61 e8                         	skz
    175c:	ec d5 16 00                   	br	!!16d5 <.L21>
    1760:	ad e8                         	movw	ax, 0xffee8
    1762:	44 00 00                      	cmpw	ax, #0
    1765:	61 f8                         	sknz
    1767:	ec 7a 17 00                   	br	!!177a <.L26>
    176b:	a8 10                         	movw	ax, [sp+16]
    176d:	bd f4                         	movw	0xffef4, ax
    176f:	da f4                         	movw	bc, 0xffef4
    1771:	51 30                         	mov	a, #48
    1773:	48 00 00                      	mov	0[bc], a
    1776:	ec 2b 17 00                   	br	!!172b <.L23>

0000177a <.L26>:
    177a:	ae f8                         	movw	ax, sp
    177c:	bd f2                         	movw	0xffef2, ax
    177e:	da f2                         	movw	bc, 0xffef2
    1780:	a8 2e                         	movw	ax, [sp+46]
    1782:	78 00 00                      	movw	0[bc], ax
    1785:	a8 10                         	movw	ax, [sp+16]
    1787:	a1                            	incw	ax
    1788:	b8 02                         	movw	[sp+2], ax
    178a:	fc c2 14 00                   	call	!!14c2 <_puts>

0000178e <.LVL36>:
    178e:	c9 f0 00 00                   	movw	0xffef0, #0
    1792:	10 24                         	addw	sp, #36
    1794:	61 ef                         	sel	rb2
    1796:	c4                            	pop	de
    1797:	c2                            	pop	bc
    1798:	c0                            	pop	ax
    1799:	61 cf                         	sel	rb0
    179b:	d7                            	ret

0000179c <_main>:
    179c:	20 08                         	subw	sp, #8
    179e:	ae f8                         	movw	ax, sp
    17a0:	bd f0                         	movw	0xffef0, ax
    17a2:	da f0                         	movw	bc, 0xffef0
    17a4:	e6                            	onew	ax
    17a5:	78 00 00                      	movw	0[bc], ax
    17a8:	30 01 18                      	movw	ax, #0x1801
    17ab:	b8 02                         	movw	[sp+2], ax
    17ad:	fc c2 14 00                   	call	!!14c2 <_puts>

000017b1 <.LVL39>:
    17b1:	ae f8                         	movw	ax, sp
    17b3:	bd f2                         	movw	0xffef2, ax
    17b5:	da f2                         	movw	bc, 0xffef2
    17b7:	e6                            	onew	ax
    17b8:	78 00 00                      	movw	0[bc], ax
    17bb:	c9 f0 00 1c                   	movw	0xffef0, #0x1c00
    17bf:	fa f0                         	movw	hl, 0xffef0
    17c1:	ab                            	movw	ax, [hl]
    17c2:	b8 02                         	movw	[sp+2], ax
    17c4:	ac 02                         	movw	ax, [hl+2]
    17c6:	b8 04                         	movw	[sp+4], ax
    17c8:	f6                            	clrw	ax
    17c9:	b8 06                         	movw	[sp+6], ax
    17cb:	fc 73 16 00                   	call	!!1673 <_putxval>

000017cf <.LVL40>:
    17cf:	ae f8                         	movw	ax, sp
    17d1:	bd f0                         	movw	0xffef0, ax
    17d3:	da f0                         	movw	bc, 0xffef0
    17d5:	e6                            	onew	ax
    17d6:	78 00 00                      	movw	0[bc], ax
    17d9:	30 0f 18                      	movw	ax, #0x180f
    17dc:	b8 02                         	movw	[sp+2], ax
    17de:	fc c2 14 00                   	call	!!14c2 <_puts>

000017e2 <.LVL41>:
    17e2:	ae f8                         	movw	ax, sp
    17e4:	bd f2                         	movw	0xffef2, ax
    17e6:	da f2                         	movw	bc, 0xffef2
    17e8:	f6                            	clrw	ax
    17e9:	78 00 00                      	movw	0[bc], ax
    17ec:	fc 70 14 00                   	call	!!1470 <_exit>
