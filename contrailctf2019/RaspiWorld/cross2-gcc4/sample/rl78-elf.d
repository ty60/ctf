
rl78-elf.x:     file format elf32-rl78


Disassembly of section .text:

00001400 <_null>:
    1400:	d7                            	ret

00001401 <_return_zero>:
    1401:	c9 f0 00 00                   	movw	0xffef0, #0
    1405:	d7                            	ret

00001406 <_return_one>:
    1406:	c9 f0 01 00                   	movw	0xffef0, #1
    140a:	d7                            	ret

0000140b <_return_int_size>:
    140b:	c9 f0 02 00                   	movw	0xffef0, #2
    140f:	d7                            	ret

00001410 <_return_pointer_size>:
    1410:	c9 f0 02 00                   	movw	0xffef0, #2
    1414:	d7                            	ret

00001415 <_return_short_size>:
    1415:	c9 f0 02 00                   	movw	0xffef0, #2
    1419:	d7                            	ret

0000141a <_return_long_size>:
    141a:	c9 f0 04 00                   	movw	0xffef0, #4
    141e:	d7                            	ret

0000141f <_return_short>:
    141f:	c9 f0 88 77                   	movw	0xffef0, #0x7788
    1423:	d7                            	ret

00001424 <_return_long>:
    1424:	20 04                         	subw	sp, #4
    1426:	c9 f0 aa 99                   	movw	0xffef0, #0x99aa
    142a:	ad f0                         	movw	ax, 0xffef0
    142c:	b8 00                         	movw	[sp], ax
    142e:	c9 f0 88 77                   	movw	0xffef0, #0x7788
    1432:	ad f0                         	movw	ax, 0xffef0
    1434:	b8 02                         	movw	[sp+2], ax
    1436:	a8 00                         	movw	ax, [sp]
    1438:	bd f0                         	movw	0xffef0, ax
    143a:	a8 02                         	movw	ax, [sp+2]
    143c:	bd f2                         	movw	0xffef2, ax
    143e:	10 04                         	addw	sp, #4
    1440:	d7                            	ret

00001441 <_return_short_upper>:
    1441:	c9 f0 ee ff                   	movw	0xffef0, #0xffee
    1445:	d7                            	ret

00001446 <_return_long_upper>:
    1446:	20 04                         	subw	sp, #4
    1448:	c9 f0 cc dd                   	movw	0xffef0, #0xddcc
    144c:	ad f0                         	movw	ax, 0xffef0
    144e:	b8 00                         	movw	[sp], ax
    1450:	c9 f0 ee ff                   	movw	0xffef0, #0xffee
    1454:	ad f0                         	movw	ax, 0xffef0
    1456:	b8 02                         	movw	[sp+2], ax
    1458:	a8 00                         	movw	ax, [sp]
    145a:	bd f0                         	movw	0xffef0, ax
    145c:	a8 02                         	movw	ax, [sp+2]
    145e:	bd f2                         	movw	0xffef2, ax
    1460:	10 04                         	addw	sp, #4
    1462:	d7                            	ret

00001463 <_return_arg1>:
    1463:	a8 04                         	movw	ax, [sp+4]
    1465:	bd f0                         	movw	0xffef0, ax
    1467:	d7                            	ret

00001468 <_return_arg2>:
    1468:	a8 06                         	movw	ax, [sp+6]
    146a:	bd f0                         	movw	0xffef0, ax
    146c:	d7                            	ret

0000146d <_add>:
    146d:	a8 06                         	movw	ax, [sp+6]
    146f:	16                            	movw	hl, ax
    1470:	a8 04                         	movw	ax, [sp+4]
    1472:	07                            	addw	ax, hl
    1473:	bd f0                         	movw	0xffef0, ax
    1475:	d7                            	ret

00001476 <_add3>:
    1476:	a8 06                         	movw	ax, [sp+6]
    1478:	16                            	movw	hl, ax
    1479:	a8 04                         	movw	ax, [sp+4]
    147b:	07                            	addw	ax, hl
    147c:	bd f0                         	movw	0xffef0, ax
    147e:	a8 08                         	movw	ax, [sp+8]
    1480:	06 f0                         	addw	ax, 0xffef0
    1482:	bd f0                         	movw	0xffef0, ax
    1484:	d7                            	ret

00001485 <_add_two>:
    1485:	a8 04                         	movw	ax, [sp+4]
    1487:	04 02 00                      	addw	ax, #2
    148a:	bd f0                         	movw	0xffef0, ax
    148c:	d7                            	ret

0000148d <_inc>:
    148d:	a8 04                         	movw	ax, [sp+4]
    148f:	a1                            	incw	ax
    1490:	bd f0                         	movw	0xffef0, ax
    1492:	d7                            	ret

00001493 <_or>:
    1493:	a8 04                         	movw	ax, [sp+4]
    1495:	bd f2                         	movw	0xffef2, ax
    1497:	a8 06                         	movw	ax, [sp+6]
    1499:	bd f4                         	movw	0xffef4, ax
    149b:	8d f4                         	mov	a, 0xffef4
    149d:	6b f2                         	or	a, 0xffef2
    149f:	9d f0                         	mov	0xffef0, a
    14a1:	8d f5                         	mov	a, 0xffef5
    14a3:	6b f3                         	or	a, 0xffef3
    14a5:	9d f1                         	mov	0xffef1, a
    14a7:	d7                            	ret

000014a8 <_or_one>:
    14a8:	a8 04                         	movw	ax, [sp+4]
    14aa:	bd f2                         	movw	0xffef2, ax
    14ac:	8d f2                         	mov	a, 0xffef2
    14ae:	6c 01                         	or	a, #1
    14b0:	9d f0                         	mov	0xffef0, a
    14b2:	8d f3                         	mov	a, 0xffef3
    14b4:	9d f1                         	mov	0xffef1, a
    14b6:	d7                            	ret

000014b7 <_load>:
    14b7:	a8 04                         	movw	ax, [sp+4]
    14b9:	bd f0                         	movw	0xffef0, ax
    14bb:	fa f0                         	movw	hl, 0xffef0
    14bd:	ab                            	movw	ax, [hl]
    14be:	bd f0                         	movw	0xffef0, ax
    14c0:	d7                            	ret

000014c1 <_store>:
    14c1:	a8 04                         	movw	ax, [sp+4]
    14c3:	bd f0                         	movw	0xffef0, ax
    14c5:	da f0                         	movw	bc, 0xffef0
    14c7:	30 ff 00                      	movw	ax, #255
    14ca:	78 00 00                      	movw	0[bc], ax
    14cd:	d7                            	ret

000014ce <_load_long>:
    14ce:	20 08                         	subw	sp, #8
    14d0:	a8 0c                         	movw	ax, [sp+12]
    14d2:	bd f0                         	movw	0xffef0, ax
    14d4:	c9 f2 00 00                   	movw	0xffef2, #0
    14d8:	ad f2                         	movw	ax, 0xffef2
    14da:	b8 00                         	movw	[sp], ax
    14dc:	b8 02                         	movw	[sp+2], ax
    14de:	fa f0                         	movw	hl, 0xffef0
    14e0:	ab                            	movw	ax, [hl]
    14e1:	bd f2                         	movw	0xffef2, ax
    14e3:	b8 00                         	movw	[sp], ax
    14e5:	ac 02                         	movw	ax, [hl+2]
    14e7:	bd f2                         	movw	0xffef2, ax
    14e9:	b8 02                         	movw	[sp+2], ax
    14eb:	a8 00                         	movw	ax, [sp]
    14ed:	bd f0                         	movw	0xffef0, ax
    14ef:	b8 04                         	movw	[sp+4], ax
    14f1:	a8 02                         	movw	ax, [sp+2]
    14f3:	bd f2                         	movw	0xffef2, ax
    14f5:	b8 06                         	movw	[sp+6], ax
    14f7:	10 08                         	addw	sp, #8
    14f9:	d7                            	ret

000014fa <_store_long>:
    14fa:	a8 04                         	movw	ax, [sp+4]
    14fc:	bd f0                         	movw	0xffef0, ax
    14fe:	da f0                         	movw	bc, 0xffef0
    1500:	30 44 33                      	movw	ax, #0x3344
    1503:	78 00 00                      	movw	0[bc], ax
    1506:	da f0                         	movw	bc, 0xffef0
    1508:	30 22 11                      	movw	ax, #0x1122
    150b:	78 02 00                      	movw	2[bc], ax
    150e:	d7                            	ret

0000150f <_member>:
    150f:	a8 04                         	movw	ax, [sp+4]
    1511:	bd f0                         	movw	0xffef0, ax
    1513:	da f0                         	movw	bc, 0xffef0
    1515:	e6                            	onew	ax
    1516:	78 02 00                      	movw	2[bc], ax
    1519:	fa f0                         	movw	hl, 0xffef0
    151b:	ac 04                         	movw	ax, [hl+4]
    151d:	bd f0                         	movw	0xffef0, ax
    151f:	d7                            	ret

00001520 <_get_static_value_addr>:
    1520:	c9 f0 04 18                   	movw	0xffef0, #0x1804
    1524:	d7                            	ret

00001525 <_get_static_value>:
    1525:	af 04 18                      	movw	ax, !1804 <_static_value>
    1528:	bd f0                         	movw	0xffef0, ax
    152a:	d7                            	ret

0000152b <_set_static_value>:
    152b:	a8 04                         	movw	ax, [sp+4]
    152d:	bf 04 18                      	movw	!1804 <_static_value>, ax
    1530:	d7                            	ret

00001531 <_set_stack>:
    1531:	20 04                         	subw	sp, #4
    1533:	30 fe 00                      	movw	ax, #254
    1536:	b8 02                         	movw	[sp+2], ax
    1538:	ae f8                         	movw	ax, sp
    153a:	bd f0                         	movw	0xffef0, ax
    153c:	da f0                         	movw	bc, 0xffef0
    153e:	30 ff 00                      	movw	ax, #255
    1541:	78 00 00                      	movw	0[bc], ax
    1544:	10 04                         	addw	sp, #4
    1546:	d7                            	ret

00001547 <_use_stack>:
    1547:	20 04                         	subw	sp, #4
    1549:	30 fe 00                      	movw	ax, #254
    154c:	b8 02                         	movw	[sp+2], ax
    154e:	ae f8                         	movw	ax, sp
    1550:	bd f0                         	movw	0xffef0, ax
    1552:	da f0                         	movw	bc, 0xffef0
    1554:	30 ff 00                      	movw	ax, #255
    1557:	78 00 00                      	movw	0[bc], ax
    155a:	a8 02                         	movw	ax, [sp+2]
    155c:	bd f2                         	movw	0xffef2, ax
    155e:	fa f0                         	movw	hl, 0xffef0
    1560:	ab                            	movw	ax, [hl]
    1561:	bd f0                         	movw	0xffef0, ax
    1563:	ad f2                         	movw	ax, 0xffef2
    1565:	06 f0                         	addw	ax, 0xffef0
    1567:	bd f0                         	movw	0xffef0, ax
    1569:	10 04                         	addw	sp, #4
    156b:	d7                            	ret

0000156c <_call_self>:
    156c:	fc 6c 15 00                   	call	!!156c <_call_self>

00001570 <.LVL17>:
    1570:	d7                            	ret

00001571 <_call_simple>:
    1571:	20 02                         	subw	sp, #2
    1573:	ae f8                         	movw	ax, sp
    1575:	bd f0                         	movw	0xffef0, ax
    1577:	da f0                         	movw	bc, 0xffef0
    1579:	a8 06                         	movw	ax, [sp+6]
    157b:	78 00 00                      	movw	0[bc], ax
    157e:	fc 63 14 00                   	call	!!1463 <_return_arg1>

00001582 <.LVL19>:
    1582:	10 02                         	addw	sp, #2
    1584:	d7                            	ret

00001585 <_call_complex1>:
    1585:	20 02                         	subw	sp, #2
    1587:	ae f8                         	movw	ax, sp
    1589:	bd f0                         	movw	0xffef0, ax
    158b:	da f0                         	movw	bc, 0xffef0
    158d:	30 fe 00                      	movw	ax, #254
    1590:	78 00 00                      	movw	0[bc], ax
    1593:	fc 63 14 00                   	call	!!1463 <_return_arg1>

00001597 <.LVL20>:
    1597:	a6 f0                         	incw	0xffef0
    1599:	10 02                         	addw	sp, #2
    159b:	d7                            	ret

0000159c <_call_complex2>:
    159c:	20 02                         	subw	sp, #2
    159e:	ae f8                         	movw	ax, sp
    15a0:	bd f0                         	movw	0xffef0, ax
    15a2:	da f0                         	movw	bc, 0xffef0
    15a4:	a8 08                         	movw	ax, [sp+8]
    15a6:	78 00 00                      	movw	0[bc], ax
    15a9:	fc 63 14 00                   	call	!!1463 <_return_arg1>

000015ad <.LVL22>:
    15ad:	ad f0                         	movw	ax, 0xffef0
    15af:	bf 04 18                      	movw	!1804 <_static_value>, ax
    15b2:	a8 08                         	movw	ax, [sp+8]
    15b4:	bd f0                         	movw	0xffef0, ax
    15b6:	10 02                         	addw	sp, #2
    15b8:	d7                            	ret

000015b9 <_call_pointer>:
    15b9:	a8 04                         	movw	ax, [sp+4]
    15bb:	bd f0                         	movw	0xffef0, ax
    15bd:	fa f0                         	movw	hl, 0xffef0
    15bf:	61 fa                         	call	hl

000015c1 <.LVL24>:
    15c1:	d7                            	ret

000015c2 <_condition>:
    15c2:	a8 06                         	movw	ax, [sp+6]
    15c4:	bd f0                         	movw	0xffef0, ax
    15c6:	fa f0                         	movw	hl, 0xffef0
    15c8:	a8 04                         	movw	ax, [sp+4]
    15ca:	47                            	cmpw	ax, hl
    15cb:	61 e8                         	skz
    15cd:	ec d5 15 00                   	br	!!15d5 <.L36>
    15d1:	c9 f0 01 00                   	movw	0xffef0, #1

000015d5 <.L36>:
    15d5:	a6 f0                         	incw	0xffef0
    15d7:	d7                            	ret

000015d8 <_loop>:
    15d8:	20 02                         	subw	sp, #2
    15da:	a8 06                         	movw	ax, [sp+6]
    15dc:	bd f2                         	movw	0xffef2, ax
    15de:	04 00 80                      	addw	ax, #0x8000
    15e1:	bd f0                         	movw	0xffef0, ax
    15e3:	44 00 80                      	cmpw	ax, #0x8000
    15e6:	61 e3                         	skh
    15e8:	ec 0e 16 00                   	br	!!160e <.L41>
    15ec:	c9 f0 00 00                   	movw	0xffef0, #0
    15f0:	ad f0                         	movw	ax, 0xffef0
    15f2:	b8 00                         	movw	[sp], ax

000015f4 <.L40>:
    15f4:	a8 00                         	movw	ax, [sp]
    15f6:	06 f0                         	addw	ax, 0xffef0
    15f8:	bd f0                         	movw	0xffef0, ax
    15fa:	a8 00                         	movw	ax, [sp]
    15fc:	a1                            	incw	ax
    15fd:	b8 00                         	movw	[sp], ax
    15ff:	fa f2                         	movw	hl, 0xffef2
    1601:	a8 00                         	movw	ax, [sp]
    1603:	47                            	cmpw	ax, hl
    1604:	61 e8                         	skz
    1606:	ec f4 15 00                   	br	!!15f4 <.L40>
    160a:	ec 12 16 00                   	br	!!1612 <.L39>

0000160e <.L41>:
    160e:	c9 f0 00 00                   	movw	0xffef0, #0

00001612 <.L39>:
    1612:	10 02                         	addw	sp, #2
    1614:	d7                            	ret

00001615 <_many_args>:
    1615:	a8 0a                         	movw	ax, [sp+10]
    1617:	16                            	movw	hl, ax
    1618:	a8 04                         	movw	ax, [sp+4]
    161a:	07                            	addw	ax, hl
    161b:	bd f0                         	movw	0xffef0, ax
    161d:	a8 0e                         	movw	ax, [sp+14]
    161f:	06 f0                         	addw	ax, 0xffef0
    1621:	bd f0                         	movw	0xffef0, ax
    1623:	a8 12                         	movw	ax, [sp+18]
    1625:	06 f0                         	addw	ax, 0xffef0
    1627:	bd f0                         	movw	0xffef0, ax
    1629:	d7                            	ret

0000162a <_call_many_args>:
    162a:	20 10                         	subw	sp, #16
    162c:	ae f8                         	movw	ax, sp
    162e:	bd f0                         	movw	0xffef0, ax
    1630:	da f0                         	movw	bc, 0xffef0
    1632:	f6                            	clrw	ax
    1633:	78 00 00                      	movw	0[bc], ax
    1636:	e6                            	onew	ax
    1637:	b8 02                         	movw	[sp+2], ax
    1639:	30 02 00                      	movw	ax, #2
    163c:	b8 04                         	movw	[sp+4], ax
    163e:	30 03 00                      	movw	ax, #3
    1641:	b8 06                         	movw	[sp+6], ax
    1643:	30 04 00                      	movw	ax, #4
    1646:	b8 08                         	movw	[sp+8], ax
    1648:	30 05 00                      	movw	ax, #5
    164b:	b8 0a                         	movw	[sp+10], ax
    164d:	30 06 00                      	movw	ax, #6
    1650:	b8 0c                         	movw	[sp+12], ax
    1652:	30 07 00                      	movw	ax, #7
    1655:	b8 0e                         	movw	[sp+14], ax
    1657:	fc 15 16 00                   	call	!!1615 <_many_args>

0000165b <.LVL38>:
    165b:	10 10                         	addw	sp, #16
    165d:	d7                            	ret

0000165e <_direct>:
    165e:	00                            	nop
    165f:	d7                            	ret

00001660 <_binary>:
    1660:	00                            	nop
    1661:	00                            	nop
    1662:	00                            	nop
    1663:	00                            	nop
    1664:	d7                            	ret

00001665 <_main>:
    1665:	c9 f0 00 00                   	movw	0xffef0, #0
    1669:	d7                            	ret

0000166a <.LFE40>:
    166a:	00                            	nop
    166b:	00                            	nop
    166c:	00                            	nop
    166d:	00                            	nop
	...
