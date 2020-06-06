
cris-elf.x:     file format elf32-us-cris


Disassembly of section .text:

00001400 <_start>:
    1400:	6fee 10fd 0000      	move.d fd10 <__end>,sp
    1406:	3fbd 3015 0000      	jsr 1530 <__startmain>
    140c:	0f05                	nop 

0000140e <___exit>:
    140e:	4192                	moveq 1,r9
    1410:	3de9                	break 13
    1412:	7fb6                	ret 
    1414:	0f05                	nop 

00001416 <___read>:
    1416:	4392                	moveq 3,r9
    1418:	3de9                	break 13
    141a:	7fb6                	ret 
    141c:	0f05                	nop 

0000141e <___write>:
    141e:	4492                	moveq 4,r9
    1420:	3de9                	break 13
    1422:	7fb6                	ret 
    1424:	0f05                	nop 

00001426 <___open>:
    1426:	6fbe 4202 0000      	move.d 242 <_.tmp+0x202>,r11
    142c:	4592                	moveq 5,r9
    142e:	3de9                	break 13
    1430:	7fb6                	ret 
    1432:	0f05                	nop 

00001434 <___close>:
    1434:	4692                	moveq 6,r9
    1436:	3de9                	break 13
    1438:	7fb6                	ret 
    143a:	0f05                	nop 

0000143c <__exit>:
    143c:	84e2                	subq 4,sp
    143e:	7eba                	move srp,[sp]
    1440:	3fbd 0e14 0000      	jsr 140e <___exit>

00001446 <_read>:
    1446:	84e2                	subq 4,sp
    1448:	7eba                	move srp,[sp]
    144a:	3fbd 1614 0000      	jsr 1416 <___read>
    1450:	3e0d                	jump [sp+]

00001452 <_write>:
    1452:	84e2                	subq 4,sp
    1454:	7eba                	move srp,[sp]
    1456:	3fbd 1e14 0000      	jsr 141e <___write>
    145c:	3e0d                	jump [sp+]

0000145e <_open>:
    145e:	84e2                	subq 4,sp
    1460:	7eba                	move srp,[sp]
    1462:	3fbd 2614 0000      	jsr 1426 <___open>
    1468:	3e0d                	jump [sp+]

0000146a <_close>:
    146a:	84e2                	subq 4,sp
    146c:	7eba                	move srp,[sp]
    146e:	3fbd 3414 0000      	jsr 1434 <___close>
    1474:	3e0d                	jump [sp+]

00001476 <_fstat>:
    1476:	84e2                	subq 4,sp
    1478:	7eba                	move srp,[sp]
    147a:	6ba6                	move.d r11,r10
    147c:	7b86                	clear.d r11
    147e:	4fcc 3c00           	movu.b 0x3c,r12
    1482:	3fbd 7c15 0000      	jsr 157c <_memset>
    1488:	7a86                	clear.d r10
    148a:	3e0d                	jump [sp+]

0000148c <_lseek>:
    148c:	7fb6                	ret 
    148e:	6ba6                	move.d r11,r10

00001490 <_sbrk>:
    1490:	6f9e 00b0 0000      	move.d b000 <__gp>,r9
    1496:	699a                	move.d [r9],r9
    1498:	29a6                	add.d r9,r10
    149a:	7f0d 00b0 0000 eaab 	move.d r10,[b000 <__gp>]
    14a2:	7fb6                	ret 
    14a4:	69a6                	move.d r9,r10

000014a6 <_isatty>:
    14a6:	7fb6                	ret 
    14a8:	41a2                	moveq 1,r10

000014aa <__read>:
    14aa:	84e2                	subq 4,sp
    14ac:	7eba                	move srp,[sp]
    14ae:	3fbd 4614 0000      	jsr 1446 <_read>
    14b4:	3e0d                	jump [sp+]

000014b6 <__write>:
    14b6:	84e2                	subq 4,sp
    14b8:	7eba                	move srp,[sp]
    14ba:	3fbd 5214 0000      	jsr 1452 <_write>
    14c0:	3e0d                	jump [sp+]

000014c2 <__open>:
    14c2:	84e2                	subq 4,sp
    14c4:	7eba                	move srp,[sp]
    14c6:	3fbd 5e14 0000      	jsr 145e <_open>
    14cc:	3e0d                	jump [sp+]

000014ce <__close>:
    14ce:	84e2                	subq 4,sp
    14d0:	7eba                	move srp,[sp]
    14d2:	3fbd 6a14 0000      	jsr 146a <_close>
    14d8:	3e0d                	jump [sp+]

000014da <__fstat>:
    14da:	84e2                	subq 4,sp
    14dc:	7eba                	move srp,[sp]
    14de:	3fbd 7614 0000      	jsr 1476 <_fstat>
    14e4:	3e0d                	jump [sp+]

000014e6 <__lseek>:
    14e6:	84e2                	subq 4,sp
    14e8:	7eba                	move srp,[sp]
    14ea:	3fbd 8c14 0000      	jsr 148c <_lseek>
    14f0:	3e0d                	jump [sp+]

000014f2 <__sbrk>:
    14f2:	84e2                	subq 4,sp
    14f4:	7eba                	move srp,[sp]
    14f6:	3fbd 9014 0000      	jsr 1490 <_sbrk>
    14fc:	3e0d                	jump [sp+]

000014fe <__isatty>:
    14fe:	84e2                	subq 4,sp
    1500:	7eba                	move srp,[sp]
    1502:	3fbd a614 0000      	jsr 14a6 <_isatty>
    1508:	3e0d                	jump [sp+]

0000150a <_main>:
    150a:	84e2                	subq 4,sp
    150c:	7eba                	move srp,[sp]
    150e:	6fae b4ab 0000      	move.d abb4 <__etext>,r10
    1514:	6fbe 04b0 0000      	move.d b004 <_data_value>,r11
    151a:	6bba                	move.d [r11],r11
    151c:	6fce e0ab 0000      	move.d abe0 <__etext+0x2c>,r12
    1522:	3fbd 3217 0000      	jsr 1732 <_printf>
    1528:	7a86                	clear.d r10
    152a:	3fbd 5015 0000      	jsr 1550 <_exit>

00001530 <__startmain>:
    1530:	84e2                	subq 4,sp
    1532:	7eba                	move srp,[sp]
    1534:	6fae bcb8 0000      	move.d b8bc <__edata>,r10
    153a:	7b86                	clear.d r11
    153c:	6fce 04f9 0000      	move.d f904 <__ebss>,r12
    1542:	aac6                	sub.d r10,r12
    1544:	3fbd 7c15 0000      	jsr 157c <_memset>
    154a:	3fbd 0a15 0000      	jsr 150a <_main>

00001550 <_exit>:
    1550:	84e2                	subq 4,sp
    1552:	7eba                	move srp,[sp]
    1554:	84e2                	subq 4,sp
    1556:	ee0b                	move.d r0,[sp]
    1558:	6a06                	move.d r10,r0
    155a:	7b86                	clear.d r11
    155c:	3fbd 7035 0000      	jsr 3570 <___call_exitprocs>
    1562:	6fae eaab 0000      	move.d abea <__global_impure_ptr>,r10
    1568:	6aaa                	move.d [r10],r10
    156a:	39a1 699a           	move.d [r10+57],r9
    156e:	0430                	beq 1574 <_exit+0x24>
    1570:	0f05                	nop 
    1572:	b9b9                	jsr r9
    1574:	60a6                	move.d r0,r10
    1576:	3fbd 3c14 0000      	jsr 143c <__exit>

0000157c <_memset>:
    157c:	90e2                	subq 16,sp
    157e:	fe3b                	movem r3,[sp]
    1580:	6a96                	move.d r10,r9
    1582:	6c16                	move.d r12,r1
    1584:	4bd4                	movu.b r11,r13
    1586:	c8d3                	lslq 8,r13
    1588:	4bd6                	move.b r11,r13
    158a:	6db6                	move.d r13,r11
    158c:	d0d3                	lslq 16,r13
    158e:	6db7                	or.d r13,r11
    1590:	81a3                	btstq 1,r10
    1592:	9e30                	beq 1632 <_memset+0xb6>
    1594:	6ad6                	move.d r10,r13
    1596:	c2c2                	cmpq 2,r12
    1598:	7ec0                	bgt 1618 <_memset+0x9c>
    159a:	80a3                	btstq 0,r10
    159c:	cf12                	cmpq 15,r1
    159e:	38d0                	ble 15d8 <_memset+0x5c>
    15a0:	6d96                	move.d r13,r9
    15a2:	6b06                	move.d r11,r0
    15a4:	9012                	subq 16,r1
    15a6:	6126                	move.d r1,r2
    15a8:	e423                	lsrq 4,r2
    15aa:	6dc6                	move.d r13,r12
    15ac:	10c2                	addq 16,r12
    15ae:	6236                	move.d r2,r3
    15b0:	c433                	lslq 4,r3
    15b2:	23c6                	add.d r3,r12
    15b4:	e90b                	move.d r0,[r9]
    15b6:	0491 e00b           	move.d r0,[r9+4]
    15ba:	0891 e00b           	move.d r0,[r9+8]
    15be:	0c91 e00b           	move.d r0,[r9+12]
    15c2:	1092                	addq 16,r9
    15c4:	ec96                	cmp.d r12,r9
    15c6:	ed20                	bne 15b4 <_memset+0x38>
    15c8:	0f05                	nop 
    15ca:	6296                	move.d r2,r9
    15cc:	c493                	lslq 4,r9
    15ce:	a916                	sub.d r9,r1
    15d0:	6296                	move.d r2,r9
    15d2:	0192                	addq 1,r9
    15d4:	c493                	lslq 4,r9
    15d6:	29d6                	add.d r9,r13
    15d8:	8112                	subq 1,r1
    15da:	cf1d 0f00           	bound.b 0xf,r1
    15de:	5f15 3ff8           	adds.w [pc+r1.w],pc
    15e2:	8200                	case 1: -> 1664 <_memset+0xe8>
    15e4:	8800                	case 2: -> 166a <_memset+0xee>
    15e6:	8e00                	case 3: -> 1670 <_memset+0xf4>
    15e8:	9800                	case 4: -> 167a <_memset+0xfe>
    15ea:	9e00                	case 5: -> 1680 <_memset+0x104>
    15ec:	a800                	case 6: -> 168a <_memset+0x10e>
    15ee:	b200                	case 7: -> 1694 <_memset+0x118>
    15f0:	c000                	case 8: -> 16a2 <_memset+0x126>
    15f2:	ca00                	case 9: -> 16ac <_memset+0x130>
    15f4:	d800                	case 10: -> 16ba <_memset+0x13e>
    15f6:	e600                	case 11: -> 16c8 <_memset+0x14c>
    15f8:	f800                	case 12: -> 16da <_memset+0x15e>
    15fa:	0601                	case 13: -> 16e8 <_memset+0x16c>
    15fc:	1801                	case 14: -> 16fa <_memset+0x17e>
    15fe:	2000                	case 15: -> 1602 <_memset+0x86>
    1600:	3200                	case 16/default: -> 1614 <_memset+0x98>
    1602:	edbb                	move.d r11,[r13]
    1604:	04d1 ebbb           	move.d r11,[r13+4]
    1608:	08d1 ebbb           	move.d r11,[r13+8]
    160c:	0cd1 dbbb           	move.w r11,[r13+12]
    1610:	0ed1 cbbb           	move.b r11,[r13+14]
    1614:	7fb6                	ret 
    1616:	be3f                	movem [sp+],r3
    1618:	0aa0                	bge 1624 <_memset+0xa8>
    161a:	0f05                	nop 
    161c:	c9bf                	move.b r11,[r9+]
    161e:	8112                	subq 1,r1
    1620:	61c6                	move.d r1,r12
    1622:	69d6                	move.d r9,r13
    1624:	8193                	btstq 1,r9
    1626:	0aa0                	bge 1632 <_memset+0xb6>
    1628:	0f05                	nop 
    162a:	69d6                	move.d r9,r13
    162c:	ddbf                	move.w r11,[r13+]
    162e:	8212                	subq 2,r1
    1630:	61c6                	move.d r1,r12
    1632:	cf1c 2f00           	cmpu.b 0x2f,r1
    1636:	65d0                	ble 159c <_memset+0x20>
    1638:	0f05                	nop 
    163a:	ace2                	subq 44,sp
    163c:	feab                	movem r10,[sp]
    163e:	6b06                	move.d r11,r0
    1640:	6b16                	move.d r11,r1
    1642:	6b26                	move.d r11,r2
    1644:	6b36                	move.d r11,r3
    1646:	6b46                	move.d r11,r4
    1648:	6b56                	move.d r11,r5
    164a:	6b66                	move.d r11,r6
    164c:	6b76                	move.d r11,r7
    164e:	6b86                	move.d r11,r8
    1650:	6b96                	move.d r11,r9
    1652:	6ba6                	move.d r11,r10
    1654:	b0c2                	subq 48,r12
    1656:	b0c2                	subq 48,r12
    1658:	fda0                	bge 1656 <_memset+0xda>
    165a:	fdbf                	movem r11,[r13+]
    165c:	30c2                	addq 48,r12
    165e:	beaf                	movem [sp+],r10
    1660:	3be0                	ba 159c <_memset+0x20>
    1662:	6c16                	move.d r12,r1
    1664:	cdbb                	move.b r11,[r13]
    1666:	7fb6                	ret 
    1668:	be3f                	movem [sp+],r3
    166a:	ddbb                	move.w r11,[r13]
    166c:	7fb6                	ret 
    166e:	be3f                	movem [sp+],r3
    1670:	ddbb                	move.w r11,[r13]
    1672:	02d1 cbbb           	move.b r11,[r13+2]
    1676:	7fb6                	ret 
    1678:	be3f                	movem [sp+],r3
    167a:	edbb                	move.d r11,[r13]
    167c:	7fb6                	ret 
    167e:	be3f                	movem [sp+],r3
    1680:	edbb                	move.d r11,[r13]
    1682:	04d1 cbbb           	move.b r11,[r13+4]
    1686:	7fb6                	ret 
    1688:	be3f                	movem [sp+],r3
    168a:	edbb                	move.d r11,[r13]
    168c:	04d1 dbbb           	move.w r11,[r13+4]
    1690:	7fb6                	ret 
    1692:	be3f                	movem [sp+],r3
    1694:	edbb                	move.d r11,[r13]
    1696:	04d1 dbbb           	move.w r11,[r13+4]
    169a:	06d1 cbbb           	move.b r11,[r13+6]
    169e:	7fb6                	ret 
    16a0:	be3f                	movem [sp+],r3
    16a2:	edbb                	move.d r11,[r13]
    16a4:	04d1 ebbb           	move.d r11,[r13+4]
    16a8:	7fb6                	ret 
    16aa:	be3f                	movem [sp+],r3
    16ac:	edbb                	move.d r11,[r13]
    16ae:	04d1 ebbb           	move.d r11,[r13+4]
    16b2:	08d1 cbbb           	move.b r11,[r13+8]
    16b6:	7fb6                	ret 
    16b8:	be3f                	movem [sp+],r3
    16ba:	edbb                	move.d r11,[r13]
    16bc:	04d1 ebbb           	move.d r11,[r13+4]
    16c0:	08d1 dbbb           	move.w r11,[r13+8]
    16c4:	7fb6                	ret 
    16c6:	be3f                	movem [sp+],r3
    16c8:	edbb                	move.d r11,[r13]
    16ca:	04d1 ebbb           	move.d r11,[r13+4]
    16ce:	08d1 dbbb           	move.w r11,[r13+8]
    16d2:	0ad1 cbbb           	move.b r11,[r13+10]
    16d6:	7fb6                	ret 
    16d8:	be3f                	movem [sp+],r3
    16da:	edbb                	move.d r11,[r13]
    16dc:	04d1 ebbb           	move.d r11,[r13+4]
    16e0:	08d1 ebbb           	move.d r11,[r13+8]
    16e4:	7fb6                	ret 
    16e6:	be3f                	movem [sp+],r3
    16e8:	edbb                	move.d r11,[r13]
    16ea:	04d1 ebbb           	move.d r11,[r13+4]
    16ee:	08d1 ebbb           	move.d r11,[r13+8]
    16f2:	0cd1 cbbb           	move.b r11,[r13+12]
    16f6:	7fb6                	ret 
    16f8:	be3f                	movem [sp+],r3
    16fa:	edbb                	move.d r11,[r13]
    16fc:	04d1 ebbb           	move.d r11,[r13+4]
    1700:	08d1 ebbb           	move.d r11,[r13+8]
    1704:	0cd1 dbbb           	move.w r11,[r13+12]
    1708:	7fb6                	ret 
    170a:	be3f                	movem [sp+],r3

0000170c <__printf_r>:
    170c:	84e2                	subq 4,sp
    170e:	eedb                	move.d r13,[sp]
    1710:	84e2                	subq 4,sp
    1712:	eecb                	move.d r12,[sp]
    1714:	84e2                	subq 4,sp
    1716:	eebb                	move.d r11,[sp]
    1718:	84e2                	subq 4,sp
    171a:	7eba                	move srp,[sp]
    171c:	6ed6                	move.d sp,r13
    171e:	04d2                	addq 4,r13
    1720:	08a1 6bba           	move.d [r10+8],r11
    1724:	6dce                	move.d [r13+],r12
    1726:	3fbd 6417 0000      	jsr 1764 <__vfprintf_r>
    172c:	3ebe                	pop srp
    172e:	7fb6                	ret 
    1730:	0ce2                	addq 12,sp

00001732 <_printf>:
    1732:	84e2                	subq 4,sp
    1734:	eedb                	move.d r13,[sp]
    1736:	84e2                	subq 4,sp
    1738:	eecb                	move.d r12,[sp]
    173a:	84e2                	subq 4,sp
    173c:	eebb                	move.d r11,[sp]
    173e:	84e2                	subq 4,sp
    1740:	eeab                	move.d r10,[sp]
    1742:	84e2                	subq 4,sp
    1744:	7eba                	move srp,[sp]
    1746:	6ed6                	move.d sp,r13
    1748:	04d2                	addq 4,r13
    174a:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    1750:	6aaa                	move.d [r10],r10
    1752:	08a1 6bba           	move.d [r10+8],r11
    1756:	6dce                	move.d [r13+],r12
    1758:	3fbd 6417 0000      	jsr 1764 <__vfprintf_r>
    175e:	3ebe                	pop srp
    1760:	7fb6                	ret 
    1762:	10e2                	addq 16,sp

00001764 <__vfprintf_r>:
    1764:	84e2                	subq 4,sp
    1766:	7eba                	move srp,[sp]
    1768:	9fec 4605           	subu.w 0x546,sp
    176c:	fe8b                	movem r8,[sp]
    176e:	90e2                	subq 16,sp
    1770:	6a36                	move.d r10,r3
    1772:	6b16                	move.d r11,r1
    1774:	6c26                	move.d r12,r2
    1776:	54e1 eddb           	move.d r13,[sp+84]
    177a:	3fbd 0e53 0000      	jsr 530e <__localeconv_r>
    1780:	3aba                	move [r10],srp
    1782:	68e1 70ba           	move srp,[sp+104]
    1786:	7ab6                	move srp,r10
    1788:	3fbd 1c6a 0000      	jsr 6a1c <_strlen>
    178e:	7ce1 eaab           	move.d r10,[sp+124]
    1792:	6336                	test.d r3
    1794:	0c30                	beq 17a2 <__vfprintf_r+0x3e>
    1796:	0f05                	nop 
    1798:	3531 a00b           	test.d [r3+53]
    179c:	ff3d f006           	beq 1e90 <__vfprintf_r+0x72c>
    17a0:	63a6                	move.d r3,r10
    17a2:	0c11 599a           	move.w [r1+12],r9
    17a6:	8d93                	btstq 13,r9
    17a8:	18b0                	blt 17c2 <__vfprintf_r+0x5e>
    17aa:	0f05                	nop 
    17ac:	5f9f 0020           	or.w 0x2000,r9
    17b0:	0c11 d99b           	move.w r9,[r1+12]
    17b4:	6411 6dda           	move.d [r1+100],r13
    17b8:	2fdf ffdf ffff      	and.d 0xffffdfff,r13
    17be:	6411 eddb           	move.d r13,[r1+100]
    17c2:	8393                	btstq 3,r9
    17c4:	ffad aa05           	bge 1d72 <__vfprintf_r+0x60e>
    17c8:	63a6                	move.d r3,r10
    17ca:	1011 a00b           	test.d [r1+16]
    17ce:	ff3d a005           	beq 1d72 <__vfprintf_r+0x60e>
    17d2:	59d6                	move.w r9,r13
    17d4:	1ad3                	andq 26,r13
    17d6:	dfde 0a00           	cmp.w 0xa,r13
    17da:	ff3d b405           	beq 1d92 <__vfprintf_r+0x62e>
    17de:	0f05                	nop 
    17e0:	5fac 5601           	movu.w 0x156,r10
    17e4:	2ea6                	add.d sp,r10
    17e6:	5fed ba00 eaab      	move.d r10,[sp+186]
    17ec:	5fed c200 708a      	clear.d [sp+194]
    17f2:	5fed be00 708a      	clear.d [sp+190]
    17f8:	6ce1 708a           	clear.d [sp+108]
    17fc:	74e1 708a           	clear.d [sp+116]
    1800:	78e1 708a           	clear.d [sp+120]
    1804:	64e1 708a           	clear.d [sp+100]
    1808:	5fed 8000 708a      	clear.d [sp+128]
    180e:	4ce1 708a           	clear.d [sp+76]
    1812:	6a96                	move.d r10,r9
    1814:	4fbc b300           	movu.b 0xb3,r11
    1818:	2eb6                	add.d sp,r11
    181a:	5fed 8800 ebbb      	move.d r11,[sp+136]
    1820:	6ec6                	move.d sp,r12
    1822:	0fcc ee00           	addu.b 0xee,r12
    1826:	3ce1 eccb           	move.d r12,[sp+60]
    182a:	6ed6                	move.d sp,r13
    182c:	0fdc ed00           	addu.b 0xed,r13
    1830:	38e1 eddb           	move.d r13,[sp+56]
    1834:	adc6                	sub.d r13,r12
    1836:	5fed 8400 eccb      	move.d r12,[sp+132]
    183c:	42da                	move.b [r2],r13
    183e:	4dd6                	test.b r13
    1840:	5830                	beq 189a <__vfprintf_r+0x136>
    1842:	6206                	move.d r2,r0
    1844:	cfde 2500           	cmp.b 0x25,r13
    1848:	5030                	beq 189a <__vfprintf_r+0x136>
    184a:	6206                	move.d r2,r0
    184c:	62c6                	move.d r2,r12
    184e:	0ae0                	ba 185a <__vfprintf_r+0xf6>
    1850:	01c2                	addq 1,r12
    1852:	cfde 2500           	cmp.b 0x25,r13
    1856:	0c30                	beq 1864 <__vfprintf_r+0x100>
    1858:	6046                	move.d r0,r4
    185a:	6c06                	move.d r12,r0
    185c:	4cda                	move.b [r12],r13
    185e:	f320                	bne 1852 <__vfprintf_r+0xee>
    1860:	01c2                	addq 1,r12
    1862:	6046                	move.d r0,r4
    1864:	a246                	sub.d r2,r4
    1866:	3230                	beq 189a <__vfprintf_r+0x136>
    1868:	0f05                	nop 
    186a:	e92b                	move.d r2,[r9]
    186c:	0491 e44b           	move.d r4,[r9+4]
    1870:	5fed c200 2d4a      	add.d [sp+194],r4,r13
    1876:	5fed c200 eddb      	move.d r13,[sp+194]
    187c:	5fed be00 6dda      	move.d [sp+190],r13
    1882:	01d2                	addq 1,r13
    1884:	5fed be00 eddb      	move.d r13,[sp+190]
    188a:	c7d2                	cmpq 7,r13
    188c:	ffcd e005           	bgt 1e70 <__vfprintf_r+0x70c>
    1890:	0892                	addq 8,r9
    1892:	4ce1 244a           	add.d [sp+76],r4
    1896:	4ce1 e44b           	move.d r4,[sp+76]
    189a:	800b                	test.b [r0]
    189c:	ff3d 9c05           	beq 1e3c <__vfprintf_r+0x6d8>
    18a0:	6026                	move.d r0,r2
    18a2:	0122                	addq 1,r2
    18a4:	5fed 9500 700a      	clear.b [sp+149]
    18aa:	0101 4dda           	move.b [r0+1],r13
    18ae:	7c06                	clear.b r12
    18b0:	7f82                	moveq -1,r8
    18b2:	58e1 708a           	clear.d [sp+88]
    18b6:	7586                	clear.d r5
    18b8:	6d64                	movs.b r13,r6
    18ba:	0122                	addq 1,r2
    18bc:	66d6                	move.d r6,r13
    18be:	a0d2                	subq 32,r13
    18c0:	cfdd 5900           	bound.b 0x59,r13
    18c4:	5fd5 3ff8           	adds.w [pc+r13.w],pc
    18c8:	c006                	case 32: -> 1f88 <__vfprintf_r+0x824>
    18ca:	8a06                	case 33: -> 1f52 <__vfprintf_r+0x7ee>
    18cc:	8a06                	case 34: -> 1f52 <__vfprintf_r+0x7ee>
    18ce:	8206                	case 35: -> 1f4a <__vfprintf_r+0x7e6>
    18d0:	8a06                	case 36: -> 1f52 <__vfprintf_r+0x7ee>
    18d2:	8a06                	case 37: -> 1f52 <__vfprintf_r+0x7ee>
    18d4:	8a06                	case 38: -> 1f52 <__vfprintf_r+0x7ee>
    18d6:	8a06                	case 39: -> 1f52 <__vfprintf_r+0x7ee>
    18d8:	8a06                	case 40: -> 1f52 <__vfprintf_r+0x7ee>
    18da:	8a06                	case 41: -> 1f52 <__vfprintf_r+0x7ee>
    18dc:	e606                	case 42: -> 1fae <__vfprintf_r+0x84a>
    18de:	d206                	case 43: -> 1f9a <__vfprintf_r+0x836>
    18e0:	8a06                	case 44: -> 1f52 <__vfprintf_r+0x7ee>
    18e2:	a204                	case 45: -> 1d6a <__vfprintf_r+0x606>
    18e4:	e408                	case 46: -> 21ac <__vfprintf_r+0xa48>
    18e6:	8a06                	case 47: -> 1f52 <__vfprintf_r+0x7ee>
    18e8:	dc06                	case 48: -> 1fa4 <__vfprintf_r+0x840>
    18ea:	0607                	case 49: -> 1fce <__vfprintf_r+0x86a>
    18ec:	0607                	case 50: -> 1fce <__vfprintf_r+0x86a>
    18ee:	0607                	case 51: -> 1fce <__vfprintf_r+0x86a>
    18f0:	0607                	case 52: -> 1fce <__vfprintf_r+0x86a>
    18f2:	0607                	case 53: -> 1fce <__vfprintf_r+0x86a>
    18f4:	0607                	case 54: -> 1fce <__vfprintf_r+0x86a>
    18f6:	0607                	case 55: -> 1fce <__vfprintf_r+0x86a>
    18f8:	0607                	case 56: -> 1fce <__vfprintf_r+0x86a>
    18fa:	0607                	case 57: -> 1fce <__vfprintf_r+0x86a>
    18fc:	8a06                	case 58: -> 1f52 <__vfprintf_r+0x7ee>
    18fe:	8a06                	case 59: -> 1f52 <__vfprintf_r+0x7ee>
    1900:	8a06                	case 60: -> 1f52 <__vfprintf_r+0x7ee>
    1902:	8a06                	case 61: -> 1f52 <__vfprintf_r+0x7ee>
    1904:	8a06                	case 62: -> 1f52 <__vfprintf_r+0x7ee>
    1906:	8a06                	case 63: -> 1f52 <__vfprintf_r+0x7ee>
    1908:	8a06                	case 64: -> 1f52 <__vfprintf_r+0x7ee>
    190a:	8a06                	case 65: -> 1f52 <__vfprintf_r+0x7ee>
    190c:	8a06                	case 66: -> 1f52 <__vfprintf_r+0x7ee>
    190e:	8a06                	case 67: -> 1f52 <__vfprintf_r+0x7ee>
    1910:	bc09                	case 68: -> 2284 <__vfprintf_r+0xb20>
    1912:	1c09                	case 69: -> 21e4 <__vfprintf_r+0xa80>
    1914:	8a06                	case 70: -> 1f52 <__vfprintf_r+0x7ee>
    1916:	1c09                	case 71: -> 21e4 <__vfprintf_r+0xa80>
    1918:	8a06                	case 72: -> 1f52 <__vfprintf_r+0x7ee>
    191a:	8a06                	case 73: -> 1f52 <__vfprintf_r+0x7ee>
    191c:	8a06                	case 74: -> 1f52 <__vfprintf_r+0x7ee>
    191e:	8a06                	case 75: -> 1f52 <__vfprintf_r+0x7ee>
    1920:	b409                	case 76: -> 227c <__vfprintf_r+0xb18>
    1922:	8a06                	case 77: -> 1f52 <__vfprintf_r+0x7ee>
    1924:	8a06                	case 78: -> 1f52 <__vfprintf_r+0x7ee>
    1926:	e600                	case 79: -> 19ae <__vfprintf_r+0x24a>
    1928:	8a06                	case 80: -> 1f52 <__vfprintf_r+0x7ee>
    192a:	8a06                	case 81: -> 1f52 <__vfprintf_r+0x7ee>
    192c:	8a06                	case 82: -> 1f52 <__vfprintf_r+0x7ee>
    192e:	8a06                	case 83: -> 1f52 <__vfprintf_r+0x7ee>
    1930:	8a06                	case 84: -> 1f52 <__vfprintf_r+0x7ee>
    1932:	b400                	case 85: -> 197c <__vfprintf_r+0x218>
    1934:	8a06                	case 86: -> 1f52 <__vfprintf_r+0x7ee>
    1936:	8a06                	case 87: -> 1f52 <__vfprintf_r+0x7ee>
    1938:	6c07                	case 88: -> 2034 <__vfprintf_r+0x8d0>
    193a:	8a06                	case 89: -> 1f52 <__vfprintf_r+0x7ee>
    193c:	8a06                	case 90: -> 1f52 <__vfprintf_r+0x7ee>
    193e:	8a06                	case 91: -> 1f52 <__vfprintf_r+0x7ee>
    1940:	8a06                	case 92: -> 1f52 <__vfprintf_r+0x7ee>
    1942:	8a06                	case 93: -> 1f52 <__vfprintf_r+0x7ee>
    1944:	8a06                	case 94: -> 1f52 <__vfprintf_r+0x7ee>
    1946:	8a06                	case 95: -> 1f52 <__vfprintf_r+0x7ee>
    1948:	8a06                	case 96: -> 1f52 <__vfprintf_r+0x7ee>
    194a:	8a06                	case 97: -> 1f52 <__vfprintf_r+0x7ee>
    194c:	8a06                	case 98: -> 1f52 <__vfprintf_r+0x7ee>
    194e:	b007                	case 99: -> 2078 <__vfprintf_r+0x914>
    1950:	ea07                	case 100: -> 20b2 <__vfprintf_r+0x94e>
    1952:	1c09                	case 101: -> 21e4 <__vfprintf_r+0xa80>
    1954:	1c09                	case 102: -> 21e4 <__vfprintf_r+0xa80>
    1956:	1c09                	case 103: -> 21e4 <__vfprintf_r+0xa80>
    1958:	2808                	case 104: -> 20f0 <__vfprintf_r+0x98c>
    195a:	ea07                	case 105: -> 20b2 <__vfprintf_r+0x94e>
    195c:	8a06                	case 106: -> 1f52 <__vfprintf_r+0x7ee>
    195e:	8a06                	case 107: -> 1f52 <__vfprintf_r+0x7ee>
    1960:	3208                	case 108: -> 20fa <__vfprintf_r+0x996>
    1962:	8a06                	case 109: -> 1f52 <__vfprintf_r+0x7ee>
    1964:	4408                	case 110: -> 210c <__vfprintf_r+0x9a8>
    1966:	e800                	case 111: -> 19b0 <__vfprintf_r+0x24c>
    1968:	2a07                	case 112: -> 1ff2 <__vfprintf_r+0x88e>
    196a:	aa09                	case 113: -> 2272 <__vfprintf_r+0xb0e>
    196c:	8a06                	case 114: -> 1f52 <__vfprintf_r+0x7ee>
    196e:	7a08                	case 115: -> 2142 <__vfprintf_r+0x9de>
    1970:	8a06                	case 116: -> 1f52 <__vfprintf_r+0x7ee>
    1972:	b600                	case 117: -> 197e <__vfprintf_r+0x21a>
    1974:	8a06                	case 118: -> 1f52 <__vfprintf_r+0x7ee>
    1976:	8a06                	case 119: -> 1f52 <__vfprintf_r+0x7ee>
    1978:	2006                	case 120: -> 1ee8 <__vfprintf_r+0x784>
    197a:	8a06                	case 121/default: -> 1f52 <__vfprintf_r+0x7ee>
    197c:	5053                	orq 16,r5
    197e:	8553                	btstq 5,r5
    1980:	ffbd 4205           	blt 1ec6 <__vfprintf_r+0x762>
    1984:	8453                	btstq 4,r5
    1986:	ffbd 3609           	blt 22c0 <__vfprintf_r+0xb5c>
    198a:	8653                	btstq 6,r5
    198c:	ffad 3009           	bge 22c0 <__vfprintf_r+0xb5c>
    1990:	0f05                	nop 
    1992:	54e1 6bba           	move.d [sp+84],r11
    1996:	5bb8                	movu.w [r11],r11
    1998:	40e1 ebbb           	move.d r11,[sp+64]
    199c:	44e1 708a           	clear.d [sp+68]
    19a0:	54e1 6cca           	move.d [sp+84],r12
    19a4:	04c2                	addq 4,r12
    19a6:	54e1 eccb           	move.d r12,[sp+84]
    19aa:	2ae0                	ba 19d6 <__vfprintf_r+0x272>
    19ac:	41d2                	moveq 1,r13
    19ae:	5053                	orq 16,r5
    19b0:	8553                	btstq 5,r5
    19b2:	ffad e604           	bge 1e9c <__vfprintf_r+0x738>
    19b6:	8453                	btstq 4,r5
    19b8:	54e1 6bba           	move.d [sp+84],r11
    19bc:	6baa                	move.d [r11],r10
    19be:	04b1 6bba           	move.d [r11+4],r11
    19c2:	40e1 eaab           	move.d r10,[sp+64]
    19c6:	44e1 ebbb           	move.d r11,[sp+68]
    19ca:	54e1 6cca           	move.d [sp+84],r12
    19ce:	08c2                	addq 8,r12
    19d0:	54e1 eccb           	move.d r12,[sp+84]
    19d4:	7d06                	clear.b r13
    19d6:	5fed 9500 700a      	clear.b [sp+149]
    19dc:	7006                	clear.b r0
    19de:	6886                	test.d r8
    19e0:	08b0                	blt 19ea <__vfprintf_r+0x286>
    19e2:	0f05                	nop 
    19e4:	2f5f 7fff ffff      	and.d 0xffffff7f,r5
    19ea:	40e1 a00b           	test.d [sp+64]
    19ee:	b015                	ax 
    19f0:	44e1 a00b           	test.d [sp+68]
    19f4:	ff2d 6e09           	bne 2366 <__vfprintf_r+0xc02>
    19f8:	6886                	test.d r8
    19fa:	ff2d 6809           	bne 2366 <__vfprintf_r+0xc02>
    19fe:	4dd6                	test.b r13
    1a00:	ff2d b80d           	bne 27bc <__vfprintf_r+0x1058>
    1a04:	8053                	btstq 0,r5
    1a06:	ffad b20d           	bge 27bc <__vfprintf_r+0x1058>
    1a0a:	0f05                	nop 
    1a0c:	4fce 3000           	move.b 0x30,r12
    1a10:	5fed ed00 cccb      	move.b r12,[sp+237]
    1a16:	5fed 8400 6dda      	move.d [sp+132],r13
    1a1c:	50e1 eddb           	move.d r13,[sp+80]
    1a20:	6e46                	move.d sp,r4
    1a22:	0f4c ed00           	addu.b 0xed,r4
    1a26:	50e1 6dda           	move.d [sp+80],r13
    1a2a:	48e1 eddb           	move.d r13,[sp+72]
    1a2e:	e8d6                	cmp.d r8,r13
    1a30:	06a0                	bge 1a38 <__vfprintf_r+0x2d4>
    1a32:	0f05                	nop 
    1a34:	48e1 e88b           	move.d r8,[sp+72]
    1a38:	60e1 e88b           	move.d r8,[sp+96]
    1a3c:	70e1 708a           	clear.d [sp+112]
    1a40:	4006                	test.b r0
    1a42:	0e30                	beq 1a52 <__vfprintf_r+0x2ee>
    1a44:	6586                	move.d r5,r8
    1a46:	48e1 6bba           	move.d [sp+72],r11
    1a4a:	01b2                	addq 1,r11
    1a4c:	48e1 ebbb           	move.d r11,[sp+72]
    1a50:	6586                	move.d r5,r8
    1a52:	0283                	andq 2,r8
    1a54:	0c30                	beq 1a62 <__vfprintf_r+0x2fe>
    1a56:	45d4                	movu.b r5,r13
    1a58:	48e1 6cca           	move.d [sp+72],r12
    1a5c:	02c2                	addq 2,r12
    1a5e:	48e1 eccb           	move.d r12,[sp+72]
    1a62:	0fdf 84ff           	and.b 0xff84,r13
    1a66:	5ce1 eddb           	move.d r13,[sp+92]
    1a6a:	6dd6                	test.d r13
    1a6c:	a620                	bne 1b14 <__vfprintf_r+0x3b0>
    1a6e:	0f05                	nop 
    1a70:	58e1 677a           	move.d [sp+88],r7
    1a74:	48e1 a77a           	sub.d [sp+72],r7
    1a78:	6776                	test.d r7
    1a7a:	98d0                	ble 1b14 <__vfprintf_r+0x3b0>
    1a7c:	0f05                	nop 
    1a7e:	5fed be00 600a      	move.d [sp+190],r0
    1a84:	d072                	cmpq 16,r7
    1a86:	0ec0                	bgt 1a96 <__vfprintf_r+0x332>
    1a88:	0f05                	nop 
    1a8a:	5ae0                	ba 1ae6 <__vfprintf_r+0x382>
    1a8c:	0f05                	nop 
    1a8e:	9072                	subq 16,r7
    1a90:	d072                	cmpq 16,r7
    1a92:	52d0                	ble 1ae6 <__vfprintf_r+0x382>
    1a94:	0892                	addq 8,r9
    1a96:	6fae 2eac 0000      	move.d ac2e <_blanks.4006>,r10
    1a9c:	e9ab                	move.d r10,[r9]
    1a9e:	50b2                	moveq 16,r11
    1aa0:	0491 ebbb           	move.d r11,[r9+4]
    1aa4:	5fed c200 2cba      	add.d [sp+194],r11,r12
    1aaa:	5fed c200 eccb      	move.d r12,[sp+194]
    1ab0:	0102                	addq 1,r0
    1ab2:	5fed be00 e00b      	move.d r0,[sp+190]
    1ab8:	c702                	cmpq 7,r0
    1aba:	d3d0                	ble 1a8e <__vfprintf_r+0x32a>
    1abc:	63a6                	move.d r3,r10
    1abe:	61b6                	move.d r1,r11
    1ac0:	6ec6                	move.d sp,r12
    1ac2:	0fcc ba00           	addu.b 0xba,r12
    1ac6:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1acc:	6aa6                	test.d r10
    1ace:	ff2d 8203           	bne 1e54 <__vfprintf_r+0x6f0>
    1ad2:	6e96                	move.d sp,r9
    1ad4:	1f9c 5601           	addu.w 0x156,r9
    1ad8:	5fed be00 600a      	move.d [sp+190],r0
    1ade:	9072                	subq 16,r7
    1ae0:	d072                	cmpq 16,r7
    1ae2:	b3c0                	bgt 1a96 <__vfprintf_r+0x332>
    1ae4:	0f05                	nop 
    1ae6:	6fce 2eac 0000      	move.d ac2e <_blanks.4006>,r12
    1aec:	e9cb                	move.d r12,[r9]
    1aee:	0491 e77b           	move.d r7,[r9+4]
    1af2:	5fed c200 2c7a      	add.d [sp+194],r7,r12
    1af8:	5fed c200 eccb      	move.d r12,[sp+194]
    1afe:	0102                	addq 1,r0
    1b00:	5fed be00 e00b      	move.d r0,[sp+190]
    1b06:	c702                	cmpq 7,r0
    1b08:	ffcd 900d           	bgt 289c <__vfprintf_r+0x1138>
    1b0c:	0892                	addq 8,r9
    1b0e:	5fed 9500 400a      	move.b [sp+149],r0
    1b14:	4006                	test.b r0
    1b16:	3230                	beq 1b4a <__vfprintf_r+0x3e6>
    1b18:	6ed6                	move.d sp,r13
    1b1a:	0fdc 9500           	addu.b 0x95,r13
    1b1e:	e9db                	move.d r13,[r9]
    1b20:	41d2                	moveq 1,r13
    1b22:	0491 eddb           	move.d r13,[r9+4]
    1b26:	5fed c200 6dda      	move.d [sp+194],r13
    1b2c:	01d2                	addq 1,r13
    1b2e:	5fed c200 eddb      	move.d r13,[sp+194]
    1b34:	5fed be00 6dda      	move.d [sp+190],r13
    1b3a:	01d2                	addq 1,r13
    1b3c:	5fed be00 eddb      	move.d r13,[sp+190]
    1b42:	c7d2                	cmpq 7,r13
    1b44:	ffcd fc0b           	bgt 2744 <__vfprintf_r+0xfe0>
    1b48:	0892                	addq 8,r9
    1b4a:	6886                	test.d r8
    1b4c:	3030                	beq 1b7e <__vfprintf_r+0x41a>
    1b4e:	6ed6                	move.d sp,r13
    1b50:	0fdc 9600           	addu.b 0x96,r13
    1b54:	e9db                	move.d r13,[r9]
    1b56:	42a2                	moveq 2,r10
    1b58:	0491 eaab           	move.d r10,[r9+4]
    1b5c:	5fed c200 2daa      	add.d [sp+194],r10,r13
    1b62:	5fed c200 eddb      	move.d r13,[sp+194]
    1b68:	5fed be00 6dda      	move.d [sp+190],r13
    1b6e:	01d2                	addq 1,r13
    1b70:	5fed be00 eddb      	move.d r13,[sp+190]
    1b76:	c7d2                	cmpq 7,r13
    1b78:	ffcd ea0b           	bgt 2766 <__vfprintf_r+0x1002>
    1b7c:	0892                	addq 8,r9
    1b7e:	5ce1 6dda           	move.d [sp+92],r13
    1b82:	cfdc 8000           	cmpu.b 0x80,r13
    1b86:	ff3d ae09           	beq 2538 <__vfprintf_r+0xdd4>
    1b8a:	0f05                	nop 
    1b8c:	60e1 6dda           	move.d [sp+96],r13
    1b90:	50e1 adda           	sub.d [sp+80],r13
    1b94:	6dd6                	test.d r13
    1b96:	92d0                	ble 1c2a <__vfprintf_r+0x4c6>
    1b98:	6d86                	move.d r13,r8
    1b9a:	5fed be00 600a      	move.d [sp+190],r0
    1ba0:	d0d2                	cmpq 16,r13
    1ba2:	0ec0                	bgt 1bb2 <__vfprintf_r+0x44e>
    1ba4:	0f05                	nop 
    1ba6:	5ae0                	ba 1c02 <__vfprintf_r+0x49e>
    1ba8:	0f05                	nop 
    1baa:	9082                	subq 16,r8
    1bac:	d082                	cmpq 16,r8
    1bae:	52d0                	ble 1c02 <__vfprintf_r+0x49e>
    1bb0:	0892                	addq 8,r9
    1bb2:	6fae 3eac 0000      	move.d ac3e <_zeroes.4007>,r10
    1bb8:	e9ab                	move.d r10,[r9]
    1bba:	50b2                	moveq 16,r11
    1bbc:	0491 ebbb           	move.d r11,[r9+4]
    1bc0:	5fed c200 2dba      	add.d [sp+194],r11,r13
    1bc6:	5fed c200 eddb      	move.d r13,[sp+194]
    1bcc:	0102                	addq 1,r0
    1bce:	5fed be00 e00b      	move.d r0,[sp+190]
    1bd4:	c702                	cmpq 7,r0
    1bd6:	d3d0                	ble 1baa <__vfprintf_r+0x446>
    1bd8:	63a6                	move.d r3,r10
    1bda:	61b6                	move.d r1,r11
    1bdc:	6ec6                	move.d sp,r12
    1bde:	0fcc ba00           	addu.b 0xba,r12
    1be2:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1be8:	6aa6                	test.d r10
    1bea:	ff2d 6602           	bne 1e54 <__vfprintf_r+0x6f0>
    1bee:	6e96                	move.d sp,r9
    1bf0:	1f9c 5601           	addu.w 0x156,r9
    1bf4:	5fed be00 600a      	move.d [sp+190],r0
    1bfa:	9082                	subq 16,r8
    1bfc:	d082                	cmpq 16,r8
    1bfe:	b3c0                	bgt 1bb2 <__vfprintf_r+0x44e>
    1c00:	0f05                	nop 
    1c02:	6fce 3eac 0000      	move.d ac3e <_zeroes.4007>,r12
    1c08:	e9cb                	move.d r12,[r9]
    1c0a:	0491 e88b           	move.d r8,[r9+4]
    1c0e:	5fed c200 2d8a      	add.d [sp+194],r8,r13
    1c14:	5fed c200 eddb      	move.d r13,[sp+194]
    1c1a:	0102                	addq 1,r0
    1c1c:	5fed be00 e00b      	move.d r0,[sp+190]
    1c22:	c702                	cmpq 7,r0
    1c24:	ffcd fa0a           	bgt 2722 <__vfprintf_r+0xfbe>
    1c28:	0892                	addq 8,r9
    1c2a:	8853                	btstq 8,r5
    1c2c:	ffbd f607           	blt 2426 <__vfprintf_r+0xcc2>
    1c30:	0f05                	nop 
    1c32:	e94b                	move.d r4,[r9]
    1c34:	50e1 6dda           	move.d [sp+80],r13
    1c38:	0491 eddb           	move.d r13,[r9+4]
    1c3c:	5fed c200 6dda      	move.d [sp+194],r13
    1c42:	50e1 2dda           	add.d [sp+80],r13
    1c46:	5fed c200 eddb      	move.d r13,[sp+194]
    1c4c:	5fed be00 6dda      	move.d [sp+190],r13
    1c52:	01d2                	addq 1,r13
    1c54:	5fed be00 eddb      	move.d r13,[sp+190]
    1c5a:	c7d2                	cmpq 7,r13
    1c5c:	ffcd e606           	bgt 2346 <__vfprintf_r+0xbe2>
    1c60:	63a6                	move.d r3,r10
    1c62:	0892                	addq 8,r9
    1c64:	8253                	btstq 2,r5
    1c66:	b4a0                	bge 1d1c <__vfprintf_r+0x5b8>
    1c68:	0f05                	nop 
    1c6a:	58e1 644a           	move.d [sp+88],r4
    1c6e:	48e1 a44a           	sub.d [sp+72],r4
    1c72:	6446                	test.d r4
    1c74:	a6d0                	ble 1d1c <__vfprintf_r+0x5b8>
    1c76:	0f05                	nop 
    1c78:	5fed be00 600a      	move.d [sp+190],r0
    1c7e:	d042                	cmpq 16,r4
    1c80:	0ec0                	bgt 1c90 <__vfprintf_r+0x52c>
    1c82:	0f05                	nop 
    1c84:	5ae0                	ba 1ce0 <__vfprintf_r+0x57c>
    1c86:	0f05                	nop 
    1c88:	9042                	subq 16,r4
    1c8a:	d042                	cmpq 16,r4
    1c8c:	52d0                	ble 1ce0 <__vfprintf_r+0x57c>
    1c8e:	0892                	addq 8,r9
    1c90:	6fae 2eac 0000      	move.d ac2e <_blanks.4006>,r10
    1c96:	e9ab                	move.d r10,[r9]
    1c98:	50b2                	moveq 16,r11
    1c9a:	0491 ebbb           	move.d r11,[r9+4]
    1c9e:	5fed c200 2dba      	add.d [sp+194],r11,r13
    1ca4:	5fed c200 eddb      	move.d r13,[sp+194]
    1caa:	0102                	addq 1,r0
    1cac:	5fed be00 e00b      	move.d r0,[sp+190]
    1cb2:	c702                	cmpq 7,r0
    1cb4:	d3d0                	ble 1c88 <__vfprintf_r+0x524>
    1cb6:	63a6                	move.d r3,r10
    1cb8:	61b6                	move.d r1,r11
    1cba:	6ec6                	move.d sp,r12
    1cbc:	0fcc ba00           	addu.b 0xba,r12
    1cc0:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1cc6:	6aa6                	test.d r10
    1cc8:	ff2d 8801           	bne 1e54 <__vfprintf_r+0x6f0>
    1ccc:	6e96                	move.d sp,r9
    1cce:	1f9c 5601           	addu.w 0x156,r9
    1cd2:	5fed be00 600a      	move.d [sp+190],r0
    1cd8:	9042                	subq 16,r4
    1cda:	d042                	cmpq 16,r4
    1cdc:	b3c0                	bgt 1c90 <__vfprintf_r+0x52c>
    1cde:	0f05                	nop 
    1ce0:	6fce 2eac 0000      	move.d ac2e <_blanks.4006>,r12
    1ce6:	e9cb                	move.d r12,[r9]
    1ce8:	0491 e44b           	move.d r4,[r9+4]
    1cec:	5fed c200 244a      	add.d [sp+194],r4
    1cf2:	5fed c200 e44b      	move.d r4,[sp+194]
    1cf8:	0102                	addq 1,r0
    1cfa:	5fed be00 e00b      	move.d r0,[sp+190]
    1d00:	c702                	cmpq 7,r0
    1d02:	1ed0                	ble 1d22 <__vfprintf_r+0x5be>
    1d04:	63a6                	move.d r3,r10
    1d06:	61b6                	move.d r1,r11
    1d08:	6ec6                	move.d sp,r12
    1d0a:	0fcc ba00           	addu.b 0xba,r12
    1d0e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1d14:	6aa6                	test.d r10
    1d16:	ff2d 3a01           	bne 1e54 <__vfprintf_r+0x6f0>
    1d1a:	0f05                	nop 
    1d1c:	5fed c200 644a      	move.d [sp+194],r4
    1d22:	48e1 699a           	move.d [sp+72],r9
    1d26:	58e1 e99a           	cmp.d [sp+88],r9
    1d2a:	06a0                	bge 1d32 <__vfprintf_r+0x5ce>
    1d2c:	0f05                	nop 
    1d2e:	58e1 699a           	move.d [sp+88],r9
    1d32:	4ce1 299a           	add.d [sp+76],r9
    1d36:	4ce1 e99b           	move.d r9,[sp+76]
    1d3a:	6446                	test.d r4
    1d3c:	ff2d c609           	bne 2706 <__vfprintf_r+0xfa2>
    1d40:	63a6                	move.d r3,r10
    1d42:	5fed be00 708a      	clear.d [sp+190]
    1d48:	6e96                	move.d sp,r9
    1d4a:	1f9c 5601           	addu.w 0x156,r9
    1d4e:	42da                	move.b [r2],r13
    1d50:	ff2d f0fa           	bne 1844 <__vfprintf_r+0xe0>
    1d54:	6206                	move.d r2,r0
    1d56:	ffed 40fb           	ba 189a <__vfprintf_r+0x136>
    1d5a:	0f05                	nop 
    1d5c:	58e1 6aaa           	move.d [sp+88],r10
    1d60:	aaa5                	neg.d r10,r10
    1d62:	58e1 eaab           	move.d r10,[sp+88]
    1d66:	54e1 ebbb           	move.d r11,[sp+84]
    1d6a:	4453                	orq 4,r5
    1d6c:	ffed 48fb           	ba 18b8 <__vfprintf_r+0x154>
    1d70:	42da                	move.b [r2],r13
    1d72:	61b6                	move.d r1,r11
    1d74:	3fbd 6434 0000      	jsr 3464 <___swsetup_r>
    1d7a:	6aa6                	test.d r10
    1d7c:	e020                	bne 1e5e <__vfprintf_r+0x6fa>
    1d7e:	7f92                	moveq -1,r9
    1d80:	0c11 599a           	move.w [r1+12],r9
    1d84:	59d6                	move.w r9,r13
    1d86:	1ad3                	andq 26,r13
    1d88:	dfde 0a00           	cmp.w 0xa,r13
    1d8c:	ff2d 50fa           	bne 17e0 <__vfprintf_r+0x7c>
    1d90:	0f05                	nop 
    1d92:	0e11 5dda           	move.w [r1+14],r13
    1d96:	ffbd 46fa           	blt 17e0 <__vfprintf_r+0x7c>
    1d9a:	3d93                	andq -3,r9
    1d9c:	5fed fa00 d99b      	move.w r9,[sp+250]
    1da2:	6411 6aaa           	move.d [r1+100],r10
    1da6:	5fed 5201 eaab      	move.d r10,[sp+338]
    1dac:	5fed fc00 dddb      	move.w r13,[sp+252]
    1db2:	1c11 6bba           	move.d [r1+28],r11
    1db6:	5fed 0a01 ebbb      	move.d r11,[sp+266]
    1dbc:	2411 6cca           	move.d [r1+36],r12
    1dc0:	5fed 1201 eccb      	move.d r12,[sp+274]
    1dc6:	6e96                	move.d sp,r9
    1dc8:	1f9c 5601           	addu.w 0x156,r9
    1dcc:	5fed ee00 e99b      	move.d r9,[sp+238]
    1dd2:	5fed fe00 e99b      	move.d r9,[sp+254]
    1dd8:	5fdc 0004           	movu.w 0x400,r13
    1ddc:	5fed f600 eddb      	move.d r13,[sp+246]
    1de2:	5fed 0201 eddb      	move.d r13,[sp+258]
    1de8:	5fed 0601 708a      	clear.d [sp+262]
    1dee:	63a6                	move.d r3,r10
    1df0:	6eb6                	move.d sp,r11
    1df2:	0fbc ee00           	addu.b 0xee,r11
    1df6:	62c6                	move.d r2,r12
    1df8:	54e1 6dda           	move.d [sp+84],r13
    1dfc:	3fbd 6417 0000      	jsr 1764 <__vfprintf_r>
    1e02:	4ce1 eaab           	move.d r10,[sp+76]
    1e06:	6aa6                	test.d r10
    1e08:	16b0                	blt 1e20 <__vfprintf_r+0x6bc>
    1e0a:	63a6                	move.d r3,r10
    1e0c:	6eb6                	move.d sp,r11
    1e0e:	0fbc ee00           	addu.b 0xee,r11
    1e12:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    1e18:	6aa6                	test.d r10
    1e1a:	ff2d 9c15           	bne 33ba <__vfprintf_r+0x1c56>
    1e1e:	7f92                	moveq -1,r9
    1e20:	5fed fa00 599a      	move.w [sp+250],r9
    1e26:	8693                	btstq 6,r9
    1e28:	38a0                	bge 1e62 <__vfprintf_r+0x6fe>
    1e2a:	0f05                	nop 
    1e2c:	0c11 599a           	move.w [r1+12],r9
    1e30:	5f9f 4000           	or.w 0x40,r9
    1e34:	0c11 d99b           	move.w r9,[r1+12]
    1e38:	28e0                	ba 1e62 <__vfprintf_r+0x6fe>
    1e3a:	0f05                	nop 
    1e3c:	5fed c200 a00b      	test.d [sp+194]
    1e42:	1030                	beq 1e54 <__vfprintf_r+0x6f0>
    1e44:	63a6                	move.d r3,r10
    1e46:	61b6                	move.d r1,r11
    1e48:	6ec6                	move.d sp,r12
    1e4a:	0fcc ba00           	addu.b 0xba,r12
    1e4e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1e54:	0c11 599a           	move.w [r1+12],r9
    1e58:	8693                	btstq 6,r9
    1e5a:	06a0                	bge 1e62 <__vfprintf_r+0x6fe>
    1e5c:	7f92                	moveq -1,r9
    1e5e:	4ce1 e99b           	move.d r9,[sp+76]
    1e62:	4ce1 6aaa           	move.d [sp+76],r10
    1e66:	10e2                	addq 16,sp
    1e68:	be8f                	movem [sp+],r8
    1e6a:	1fec 2205           	addu.w 0x522,sp
    1e6e:	3e0d                	jump [sp+]
    1e70:	63a6                	move.d r3,r10
    1e72:	61b6                	move.d r1,r11
    1e74:	6ec6                	move.d sp,r12
    1e76:	0fcc ba00           	addu.b 0xba,r12
    1e7a:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    1e80:	6aa6                	test.d r10
    1e82:	d120                	bne 1e54 <__vfprintf_r+0x6f0>
    1e84:	6e96                	move.d sp,r9
    1e86:	1f9c 5601           	addu.w 0x156,r9
    1e8a:	ffed 04fa           	ba 1892 <__vfprintf_r+0x12e>
    1e8e:	0f05                	nop 
    1e90:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    1e96:	ffed 08f9           	ba 17a2 <__vfprintf_r+0x3e>
    1e9a:	0f05                	nop 
    1e9c:	ffbd 3e04           	blt 22de <__vfprintf_r+0xb7a>
    1ea0:	8653                	btstq 6,r5
    1ea2:	ffad 3804           	bge 22de <__vfprintf_r+0xb7a>
    1ea6:	0f05                	nop 
    1ea8:	54e1 6bba           	move.d [sp+84],r11
    1eac:	5bb8                	movu.w [r11],r11
    1eae:	40e1 ebbb           	move.d r11,[sp+64]
    1eb2:	44e1 708a           	clear.d [sp+68]
    1eb6:	54e1 6cca           	move.d [sp+84],r12
    1eba:	04c2                	addq 4,r12
    1ebc:	54e1 eccb           	move.d r12,[sp+84]
    1ec0:	ffed 12fb           	ba 19d6 <__vfprintf_r+0x272>
    1ec4:	7d06                	clear.b r13
    1ec6:	54e1 6bba           	move.d [sp+84],r11
    1eca:	6baa                	move.d [r11],r10
    1ecc:	04b1 6bba           	move.d [r11+4],r11
    1ed0:	40e1 eaab           	move.d r10,[sp+64]
    1ed4:	44e1 ebbb           	move.d r11,[sp+68]
    1ed8:	54e1 6cca           	move.d [sp+84],r12
    1edc:	08c2                	addq 8,r12
    1ede:	54e1 eccb           	move.d r12,[sp+84]
    1ee2:	ffed f0fa           	ba 19d6 <__vfprintf_r+0x272>
    1ee6:	41d2                	moveq 1,r13
    1ee8:	5fed 9500 cccb      	move.b r12,[sp+149]
    1eee:	6fbe 12ac 0000      	move.d ac12 <__global_impure_ptr+0x28>,r11
    1ef4:	64e1 ebbb           	move.d r11,[sp+100]
    1ef8:	8553                	btstq 5,r5
    1efa:	ffad 4e01           	bge 204c <__vfprintf_r+0x8e8>
    1efe:	0f05                	nop 
    1f00:	54e1 6dda           	move.d [sp+84],r13
    1f04:	6dca                	move.d [r13],r12
    1f06:	04d1 6dda           	move.d [r13+4],r13
    1f0a:	40e1 eccb           	move.d r12,[sp+64]
    1f0e:	44e1 eddb           	move.d r13,[sp+68]
    1f12:	54e1 6aaa           	move.d [sp+84],r10
    1f16:	08a2                	addq 8,r10
    1f18:	54e1 eaab           	move.d r10,[sp+84]
    1f1c:	8053                	btstq 0,r5
    1f1e:	ffad b4fa           	bge 19d6 <__vfprintf_r+0x272>
    1f22:	42d2                	moveq 2,r13
    1f24:	40e1 a00b           	test.d [sp+64]
    1f28:	b015                	ax 
    1f2a:	44e1 a00b           	test.d [sp+68]
    1f2e:	ff3d a4fa           	beq 19d6 <__vfprintf_r+0x272>
    1f32:	0f05                	nop 
    1f34:	4fae 3000           	move.b 0x30,r10
    1f38:	5fed 9600 caab      	move.b r10,[sp+150]
    1f3e:	5fed 9700 c66b      	move.b r6,[sp+151]
    1f44:	ffed 8efa           	ba 19d6 <__vfprintf_r+0x272>
    1f48:	4253                	orq 2,r5
    1f4a:	4153                	orq 1,r5
    1f4c:	ffed 68f9           	ba 18b8 <__vfprintf_r+0x154>
    1f50:	42da                	move.b [r2],r13
    1f52:	5fed 9500 cccb      	move.b r12,[sp+149]
    1f58:	6666                	test.d r6
    1f5a:	ff3d defe           	beq 1e3c <__vfprintf_r+0x6d8>
    1f5e:	41a2                	moveq 1,r10
    1f60:	5fed c600 c66b      	move.b r6,[sp+198]
    1f66:	5fed 9500 700a      	clear.b [sp+149]
    1f6c:	48e1 eaab           	move.d r10,[sp+72]
    1f70:	50e1 eaab           	move.d r10,[sp+80]
    1f74:	60e1 708a           	clear.d [sp+96]
    1f78:	70e1 708a           	clear.d [sp+112]
    1f7c:	6e46                	move.d sp,r4
    1f7e:	0f4c c600           	addu.b 0xc6,r4
    1f82:	ffed cafa           	ba 1a50 <__vfprintf_r+0x2ec>
    1f86:	7006                	clear.b r0
    1f88:	4cc6                	test.b r12
    1f8a:	ff2d 2af9           	bne 18b8 <__vfprintf_r+0x154>
    1f8e:	42da                	move.b [r2],r13
    1f90:	4fce 2000           	move.b 0x20,r12
    1f94:	ffed 22f9           	ba 18ba <__vfprintf_r+0x156>
    1f98:	6d64                	movs.b r13,r6
    1f9a:	4fce 2b00           	move.b 0x2b,r12
    1f9e:	ffed 16f9           	ba 18b8 <__vfprintf_r+0x154>
    1fa2:	42da                	move.b [r2],r13
    1fa4:	4f5f 8000           	or.b 0x80,r5
    1fa8:	ffed 0cf9           	ba 18b8 <__vfprintf_r+0x154>
    1fac:	42da                	move.b [r2],r13
    1fae:	54e1 6bba           	move.d [sp+84],r11
    1fb2:	54e1 6dda           	move.d [sp+84],r13
    1fb6:	6dda                	move.d [r13],r13
    1fb8:	58e1 eddb           	move.d r13,[sp+88]
    1fbc:	ffbd 9cfd           	blt 1d5c <__vfprintf_r+0x5f8>
    1fc0:	04b2                	addq 4,r11
    1fc2:	42da                	move.b [r2],r13
    1fc4:	54e1 ebbb           	move.d r11,[sp+84]
    1fc8:	ffed eef8           	ba 18ba <__vfprintf_r+0x156>
    1fcc:	6d64                	movs.b r13,r6
    1fce:	62a6                	move.d r2,r10
    1fd0:	7b86                	clear.d r11
    1fd2:	66d6                	move.d r6,r13
    1fd4:	b0d2                	subq 48,r13
    1fd6:	2bb5                	addi r11.d,r11
    1fd8:	1db5                	addi r11.w,r13
    1fda:	6db6                	move.d r13,r11
    1fdc:	6a6c                	movs.b [r10+],r6
    1fde:	66d6                	move.d r6,r13
    1fe0:	b0d2                	subq 48,r13
    1fe2:	c9d2                	cmpq 9,r13
    1fe4:	f180                	bls 1fd6 <__vfprintf_r+0x872>
    1fe6:	6a26                	move.d r10,r2
    1fe8:	58e1 ebbb           	move.d r11,[sp+88]
    1fec:	ffed cef8           	ba 18be <__vfprintf_r+0x15a>
    1ff0:	66d6                	move.d r6,r13
    1ff2:	54e1 6bba           	move.d [sp+84],r11
    1ff6:	6bba                	move.d [r11],r11
    1ff8:	40e1 ebbb           	move.d r11,[sp+64]
    1ffc:	44e1 708a           	clear.d [sp+68]
    2000:	4253                	orq 2,r5
    2002:	4fce 3000           	move.b 0x30,r12
    2006:	5fed 9600 cccb      	move.b r12,[sp+150]
    200c:	4fde 7800           	move.b 0x78,r13
    2010:	5fed 9700 cddb      	move.b r13,[sp+151]
    2016:	54e1 6aaa           	move.d [sp+84],r10
    201a:	04a2                	addq 4,r10
    201c:	54e1 eaab           	move.d r10,[sp+84]
    2020:	6fbe 12ac 0000      	move.d ac12 <__global_impure_ptr+0x28>,r11
    2026:	64e1 ebbb           	move.d r11,[sp+100]
    202a:	4f6c 7800           	movu.b 0x78,r6
    202e:	ffed a4f9           	ba 19d6 <__vfprintf_r+0x272>
    2032:	42d2                	moveq 2,r13
    2034:	5fed 9500 cccb      	move.b r12,[sp+149]
    203a:	6fae 00ac 0000      	move.d ac00 <__global_impure_ptr+0x16>,r10
    2040:	64e1 eaab           	move.d r10,[sp+100]
    2044:	8553                	btstq 5,r5
    2046:	ffbd b6fe           	blt 1f00 <__vfprintf_r+0x79c>
    204a:	0f05                	nop 
    204c:	8453                	btstq 4,r5
    204e:	ffbd 7208           	blt 28c4 <__vfprintf_r+0x1160>
    2052:	8653                	btstq 6,r5
    2054:	ffad 6c08           	bge 28c4 <__vfprintf_r+0x1160>
    2058:	0f05                	nop 
    205a:	54e1 6dda           	move.d [sp+84],r13
    205e:	5dd8                	movu.w [r13],r13
    2060:	40e1 eddb           	move.d r13,[sp+64]
    2064:	44e1 708a           	clear.d [sp+68]
    2068:	54e1 6aaa           	move.d [sp+84],r10
    206c:	04a2                	addq 4,r10
    206e:	54e1 eaab           	move.d r10,[sp+84]
    2072:	ffed a6fe           	ba 1f1c <__vfprintf_r+0x7b8>
    2076:	0f05                	nop 
    2078:	54e1 6aaa           	move.d [sp+84],r10
    207c:	4aaa                	move.b [r10],r10
    207e:	5fed c600 caab      	move.b r10,[sp+198]
    2084:	5fed 9500 700a      	clear.b [sp+149]
    208a:	54e1 6bba           	move.d [sp+84],r11
    208e:	04b2                	addq 4,r11
    2090:	54e1 ebbb           	move.d r11,[sp+84]
    2094:	41c2                	moveq 1,r12
    2096:	48e1 eccb           	move.d r12,[sp+72]
    209a:	50e1 eccb           	move.d r12,[sp+80]
    209e:	60e1 708a           	clear.d [sp+96]
    20a2:	70e1 708a           	clear.d [sp+112]
    20a6:	6e46                	move.d sp,r4
    20a8:	0f4c c600           	addu.b 0xc6,r4
    20ac:	ffed a0f9           	ba 1a50 <__vfprintf_r+0x2ec>
    20b0:	7006                	clear.b r0
    20b2:	5fed 9500 cccb      	move.b r12,[sp+149]
    20b8:	8553                	btstq 5,r5
    20ba:	ffad d601           	bge 2294 <__vfprintf_r+0xb30>
    20be:	0f05                	nop 
    20c0:	54e1 6aaa           	move.d [sp+84],r10
    20c4:	6aca                	move.d [r10],r12
    20c6:	04a1 6dda           	move.d [r10+4],r13
    20ca:	40e1 eccb           	move.d r12,[sp+64]
    20ce:	44e1 eddb           	move.d r13,[sp+68]
    20d2:	08a2                	addq 8,r10
    20d4:	54e1 eaab           	move.d r10,[sp+84]
    20d8:	6cc6                	test.d r12
    20da:	b015                	ax 
    20dc:	6dd6                	test.d r13
    20de:	ffbd 760a           	blt 2b58 <__vfprintf_r+0x13f4>
    20e2:	0f05                	nop 
    20e4:	5fed 9500 400a      	move.b [sp+149],r0
    20ea:	ffed f0f8           	ba 19de <__vfprintf_r+0x27a>
    20ee:	41d2                	moveq 1,r13
    20f0:	4f5f 4000           	or.b 0x40,r5
    20f4:	ffed c0f7           	ba 18b8 <__vfprintf_r+0x154>
    20f8:	42da                	move.b [r2],r13
    20fa:	42da                	move.b [r2],r13
    20fc:	cfde 6c00           	cmp.b 0x6c,r13
    2100:	ff3d 420e           	beq 2f46 <__vfprintf_r+0x17e2>
    2104:	62b6                	move.d r2,r11
    2106:	ffed aef7           	ba 18b8 <__vfprintf_r+0x154>
    210a:	5053                	orq 16,r5
    210c:	5fed 9500 cccb      	move.b r12,[sp+149]
    2112:	8553                	btstq 5,r5
    2114:	ffad 320c           	bge 2d4a <__vfprintf_r+0x15e6>
    2118:	8453                	btstq 4,r5
    211a:	54e1 6aaa           	move.d [sp+84],r10
    211e:	6aba                	move.d [r10],r11
    2120:	4ce1 6cca           	move.d [sp+76],r12
    2124:	3d75                	smi r13
    2126:	add5                	neg.d r13,r13
    2128:	4ce1 6aaa           	move.d [sp+76],r10
    212c:	ebab                	move.d r10,[r11]
    212e:	04b1 eddb           	move.d r13,[r11+4]
    2132:	54e1 6bba           	move.d [sp+84],r11
    2136:	04b2                	addq 4,r11
    2138:	54e1 ebbb           	move.d r11,[sp+84]
    213c:	ffed fef6           	ba 183e <__vfprintf_r+0xda>
    2140:	42da                	move.b [r2],r13
    2142:	5fed 9500 700a      	clear.b [sp+149]
    2148:	54e1 677a           	move.d [sp+84],r7
    214c:	54e1 6cca           	move.d [sp+84],r12
    2150:	6c4a                	move.d [r12],r4
    2152:	ff3d 0a0f           	beq 3060 <__vfprintf_r+0x18fc>
    2156:	0472                	addq 4,r7
    2158:	6886                	test.d r8
    215a:	ffbd 600e           	blt 2fbe <__vfprintf_r+0x185a>
    215e:	64a6                	move.d r4,r10
    2160:	7b86                	clear.d r11
    2162:	68c6                	move.d r8,r12
    2164:	34e1 e99b           	move.d r9,[sp+52]
    2168:	3fbd e45a 0000      	jsr 5ae4 <_memchr>
    216e:	34e1 699a           	move.d [sp+52],r9
    2172:	6aa6                	test.d r10
    2174:	ff3d 8401           	beq 22fc <__vfprintf_r+0xb98>
    2178:	a4a6                	sub.d r4,r10
    217a:	50e1 eaab           	move.d r10,[sp+80]
    217e:	e8a6                	cmp.d r8,r10
    2180:	ffcd 7801           	bgt 22fc <__vfprintf_r+0xb98>
    2184:	0f05                	nop 
    2186:	50e1 6dda           	move.d [sp+80],r13
    218a:	48e1 eddb           	move.d r13,[sp+72]
    218e:	ffbd 4a0e           	blt 2fdc <__vfprintf_r+0x1878>
    2192:	0f05                	nop 
    2194:	5fed 9500 400a      	move.b [sp+149],r0
    219a:	54e1 e77b           	move.d r7,[sp+84]
    219e:	60e1 708a           	clear.d [sp+96]
    21a2:	70e1 708a           	clear.d [sp+112]
    21a6:	ffed 96f8           	ba 1a40 <__vfprintf_r+0x2dc>
    21aa:	0f05                	nop 
    21ac:	62b6                	move.d r2,r11
    21ae:	6b6c                	movs.b [r11+],r6
    21b0:	cf6c 2a00           	cmpu.b 0x2a,r6
    21b4:	ff3d 2612           	beq 33de <__vfprintf_r+0x1c7a>
    21b8:	66d6                	move.d r6,r13
    21ba:	b0d2                	subq 48,r13
    21bc:	c9d2                	cmpq 9,r13
    21be:	ff9d 9c10           	bhi 325e <__vfprintf_r+0x1afa>
    21c2:	7886                	clear.d r8
    21c4:	2885                	addi r8.d,r8
    21c6:	1d85                	addi r8.w,r13
    21c8:	6d86                	move.d r13,r8
    21ca:	6b6c                	movs.b [r11+],r6
    21cc:	66d6                	move.d r6,r13
    21ce:	b0d2                	subq 48,r13
    21d0:	c9d2                	cmpq 9,r13
    21d2:	f180                	bls 21c4 <__vfprintf_r+0xa60>
    21d4:	6b26                	move.d r11,r2
    21d6:	6886                	test.d r8
    21d8:	ffad e2f6           	bge 18be <__vfprintf_r+0x15a>
    21dc:	66d6                	move.d r6,r13
    21de:	ffed dcf6           	ba 18be <__vfprintf_r+0x15a>
    21e2:	7f82                	moveq -1,r8
    21e4:	5fed 9500 cccb      	move.b r12,[sp+149]
    21ea:	54e1 6aaa           	move.d [sp+84],r10
    21ee:	3aba                	move [r10],srp
    21f0:	74e1 70ba           	move srp,[sp+116]
    21f4:	04a1 6bba           	move.d [r10+4],r11
    21f8:	78e1 ebbb           	move.d r11,[sp+120]
    21fc:	08a2                	addq 8,r10
    21fe:	54e1 eaab           	move.d r10,[sp+84]
    2202:	6f0e 1868 0000      	move.d 6818 <___fpclassifyd>,r0
    2208:	74e1 6aaa           	move.d [sp+116],r10
    220c:	78e1 6bba           	move.d [sp+120],r11
    2210:	34e1 e99b           	move.d r9,[sp+52]
    2214:	b0b9                	jsr r0
    2216:	34e1 699a           	move.d [sp+52],r9
    221a:	c1a2                	cmpq 1,r10
    221c:	ff2d 7409           	bne 2b94 <__vfprintf_r+0x1430>
    2220:	7c86                	clear.d r12
    2222:	74e1 6aaa           	move.d [sp+116],r10
    2226:	78e1 6bba           	move.d [sp+120],r11
    222a:	7d86                	clear.d r13
    222c:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    2232:	34e1 699a           	move.d [sp+52],r9
    2236:	6aa6                	test.d r10
    2238:	ffbd 800e           	blt 30bc <__vfprintf_r+0x1958>
    223c:	0f05                	nop 
    223e:	5fed 9500 400a      	move.b [sp+149],r0
    2244:	cf6c 4700           	cmpu.b 0x47,r6
    2248:	ffdd a00c           	ble 2eec <__vfprintf_r+0x1788>
    224c:	0f05                	nop 
    224e:	6f4e f4ab 0000      	move.d abf4 <__global_impure_ptr+0xa>,r4
    2254:	2f5f 7fff ffff      	and.d 0xffffff7f,r5
    225a:	43d2                	moveq 3,r13
    225c:	48e1 eddb           	move.d r13,[sp+72]
    2260:	50e1 eddb           	move.d r13,[sp+80]
    2264:	60e1 708a           	clear.d [sp+96]
    2268:	70e1 708a           	clear.d [sp+112]
    226c:	ffed d0f7           	ba 1a40 <__vfprintf_r+0x2dc>
    2270:	0f05                	nop 
    2272:	4f5f 2000           	or.b 0x20,r5
    2276:	ffed 3ef6           	ba 18b8 <__vfprintf_r+0x154>
    227a:	42da                	move.b [r2],r13
    227c:	4853                	orq 8,r5
    227e:	ffed 36f6           	ba 18b8 <__vfprintf_r+0x154>
    2282:	42da                	move.b [r2],r13
    2284:	5fed 9500 cccb      	move.b r12,[sp+149]
    228a:	5053                	orq 16,r5
    228c:	8553                	btstq 5,r5
    228e:	ffbd 2efe           	blt 20c0 <__vfprintf_r+0x95c>
    2292:	0f05                	nop 
    2294:	8453                	btstq 4,r5
    2296:	ffad 820a           	bge 2d1c <__vfprintf_r+0x15b8>
    229a:	8653                	btstq 6,r5
    229c:	54e1 6cca           	move.d [sp+84],r12
    22a0:	6cba                	move.d [r12],r11
    22a2:	3c75                	smi r12
    22a4:	acc5                	neg.d r12,r12
    22a6:	40e1 ebbb           	move.d r11,[sp+64]
    22aa:	44e1 eccb           	move.d r12,[sp+68]
    22ae:	6cd6                	move.d r12,r13
    22b0:	54e1 6aaa           	move.d [sp+84],r10
    22b4:	04a2                	addq 4,r10
    22b6:	54e1 eaab           	move.d r10,[sp+84]
    22ba:	ffed 1afe           	ba 20d8 <__vfprintf_r+0x974>
    22be:	6bc6                	move.d r11,r12
    22c0:	54e1 6dda           	move.d [sp+84],r13
    22c4:	6dda                	move.d [r13],r13
    22c6:	40e1 eddb           	move.d r13,[sp+64]
    22ca:	44e1 708a           	clear.d [sp+68]
    22ce:	54e1 6aaa           	move.d [sp+84],r10
    22d2:	04a2                	addq 4,r10
    22d4:	54e1 eaab           	move.d r10,[sp+84]
    22d8:	ffed faf6           	ba 19d6 <__vfprintf_r+0x272>
    22dc:	41d2                	moveq 1,r13
    22de:	54e1 6dda           	move.d [sp+84],r13
    22e2:	6dda                	move.d [r13],r13
    22e4:	40e1 eddb           	move.d r13,[sp+64]
    22e8:	44e1 708a           	clear.d [sp+68]
    22ec:	54e1 6aaa           	move.d [sp+84],r10
    22f0:	04a2                	addq 4,r10
    22f2:	54e1 eaab           	move.d r10,[sp+84]
    22f6:	ffed dcf6           	ba 19d6 <__vfprintf_r+0x272>
    22fa:	7d06                	clear.b r13
    22fc:	48e1 e88b           	move.d r8,[sp+72]
    2300:	5fed 9500 400a      	move.b [sp+149],r0
    2306:	50e1 e88b           	move.d r8,[sp+80]
    230a:	54e1 e77b           	move.d r7,[sp+84]
    230e:	60e1 708a           	clear.d [sp+96]
    2312:	70e1 708a           	clear.d [sp+112]
    2316:	ffed 26f7           	ba 1a40 <__vfprintf_r+0x2dc>
    231a:	0f05                	nop 
    231c:	6fde 3eac 0000      	move.d ac3e <_zeroes.4007>,r13
    2322:	e9db                	move.d r13,[r9]
    2324:	0491 e44b           	move.d r4,[r9+4]
    2328:	5fed c200 2d4a      	add.d [sp+194],r4,r13
    232e:	5fed c200 eddb      	move.d r13,[sp+194]
    2334:	0102                	addq 1,r0
    2336:	5fed be00 e00b      	move.d r0,[sp+190]
    233c:	c702                	cmpq 7,r0
    233e:	ffdd 22f9           	ble 1c64 <__vfprintf_r+0x500>
    2342:	0892                	addq 8,r9
    2344:	63a6                	move.d r3,r10
    2346:	61b6                	move.d r1,r11
    2348:	6ec6                	move.d sp,r12
    234a:	0fcc ba00           	addu.b 0xba,r12
    234e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2354:	6aa6                	test.d r10
    2356:	ff2d fafa           	bne 1e54 <__vfprintf_r+0x6f0>
    235a:	6e96                	move.d sp,r9
    235c:	1f9c 5601           	addu.w 0x156,r9
    2360:	ffed 00f9           	ba 1c64 <__vfprintf_r+0x500>
    2364:	0f05                	nop 
    2366:	cfde 0100           	cmp.b 0x1,r13
    236a:	ff3d 1a04           	beq 2788 <__vfprintf_r+0x1024>
    236e:	6e46                	move.d sp,r4
    2370:	0f4c ee00           	addu.b 0xee,r4
    2374:	cfde 0200           	cmp.b 0x2,r13
    2378:	6030                	beq 23da <__vfprintf_r+0xc76>
    237a:	0f05                	nop 
    237c:	8142                	subq 1,r4
    237e:	40e1 6dda           	move.d [sp+64],r13
    2382:	07d3                	andq 7,r13
    2384:	30d2                	addq 48,r13
    2386:	c4db                	move.b r13,[r4]
    2388:	44e1 6aaa           	move.d [sp+68],r10
    238c:	dda3                	lslq 29,r10
    238e:	40e1 6bba           	move.d [sp+64],r11
    2392:	e3b3                	lsrq 3,r11
    2394:	44e1 6cca           	move.d [sp+68],r12
    2398:	e3c3                	lsrq 3,r12
    239a:	6ba7                	or.d r11,r10
    239c:	40e1 eaab           	move.d r10,[sp+64]
    23a0:	44e1 eccb           	move.d r12,[sp+68]
    23a4:	40e1 a00b           	test.d [sp+64]
    23a8:	b015                	ax 
    23aa:	44e1 a00b           	test.d [sp+68]
    23ae:	cd20                	bne 237c <__vfprintf_r+0xc18>
    23b0:	8053                	btstq 0,r5
    23b2:	62a0                	bge 2416 <__vfprintf_r+0xcb2>
    23b4:	64c6                	move.d r4,r12
    23b6:	cfde 3000           	cmp.b 0x30,r13
    23ba:	ff3d b80b           	beq 2f76 <__vfprintf_r+0x1812>
    23be:	0f05                	nop 
    23c0:	8142                	subq 1,r4
    23c2:	4fde 3000           	move.b 0x30,r13
    23c6:	ffc1 cddb           	move.b r13,[r12-1]
    23ca:	3ce1 6aaa           	move.d [sp+60],r10
    23ce:	a4a6                	sub.d r4,r10
    23d0:	50e1 eaab           	move.d r10,[sp+80]
    23d4:	ffed 4ef6           	ba 1a26 <__vfprintf_r+0x2c2>
    23d8:	0f05                	nop 
    23da:	8142                	subq 1,r4
    23dc:	40e1 6dda           	move.d [sp+64],r13
    23e0:	0fd3                	andq 15,r13
    23e2:	64e1 6aaa           	move.d [sp+100],r10
    23e6:	4ad5 4dda           	move.b [r10+r13.b],r13
    23ea:	c4db                	move.b r13,[r4]
    23ec:	44e1 6bba           	move.d [sp+68],r11
    23f0:	dcb3                	lslq 28,r11
    23f2:	40e1 6cca           	move.d [sp+64],r12
    23f6:	e4c3                	lsrq 4,r12
    23f8:	44e1 6dda           	move.d [sp+68],r13
    23fc:	e4d3                	lsrq 4,r13
    23fe:	6cb7                	or.d r12,r11
    2400:	40e1 ebbb           	move.d r11,[sp+64]
    2404:	44e1 eddb           	move.d r13,[sp+68]
    2408:	40e1 a00b           	test.d [sp+64]
    240c:	b015                	ax 
    240e:	44e1 a00b           	test.d [sp+68]
    2412:	c720                	bne 23da <__vfprintf_r+0xc76>
    2414:	0f05                	nop 
    2416:	3ce1 6bba           	move.d [sp+60],r11
    241a:	a4b6                	sub.d r4,r11
    241c:	50e1 ebbb           	move.d r11,[sp+80]
    2420:	ffed 02f6           	ba 1a26 <__vfprintf_r+0x2c2>
    2424:	0f05                	nop 
    2426:	cf6c 6500           	cmpu.b 0x65,r6
    242a:	ffdd b001           	ble 25de <__vfprintf_r+0xe7a>
    242e:	7c86                	clear.d r12
    2430:	74e1 6aaa           	move.d [sp+116],r10
    2434:	78e1 6bba           	move.d [sp+120],r11
    2438:	7d86                	clear.d r13
    243a:	34e1 e99b           	move.d r9,[sp+52]
    243e:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    2444:	34e1 699a           	move.d [sp+52],r9
    2448:	6aa6                	test.d r10
    244a:	ff2d 7e03           	bne 27cc <__vfprintf_r+0x1068>
    244e:	41b2                	moveq 1,r11
    2450:	6fae 2cac 0000      	move.d ac2c <__global_impure_ptr+0x42>,r10
    2456:	e9ab                	move.d r10,[r9]
    2458:	0491 ebbb           	move.d r11,[r9+4]
    245c:	5fed c200 2dba      	add.d [sp+194],r11,r13
    2462:	5fed c200 eddb      	move.d r13,[sp+194]
    2468:	5fed be00 2dba      	add.d [sp+190],r11,r13
    246e:	5fed be00 eddb      	move.d r13,[sp+190]
    2474:	c7d2                	cmpq 7,r13
    2476:	ffcd 3209           	bgt 2dac <__vfprintf_r+0x1648>
    247a:	0892                	addq 8,r9
    247c:	6ce1 6cca           	move.d [sp+108],r12
    2480:	5fed 9800 ecca      	cmp.d [sp+152],r12
    2486:	08c0                	bgt 2490 <__vfprintf_r+0xd2c>
    2488:	8053                	btstq 0,r5
    248a:	ffad d6f7           	bge 1c64 <__vfprintf_r+0x500>
    248e:	0f05                	nop 
    2490:	68e1 30ba           	move [sp+104],srp
    2494:	79ba                	move srp,[r9]
    2496:	7ce1 6aaa           	move.d [sp+124],r10
    249a:	0491 eaab           	move.d r10,[r9+4]
    249e:	5fed c200 2daa      	add.d [sp+194],r10,r13
    24a4:	5fed c200 eddb      	move.d r13,[sp+194]
    24aa:	5fed be00 6dda      	move.d [sp+190],r13
    24b0:	01d2                	addq 1,r13
    24b2:	5fed be00 eddb      	move.d r13,[sp+190]
    24b8:	c7d2                	cmpq 7,r13
    24ba:	ffcd 960a           	bgt 2f54 <__vfprintf_r+0x17f0>
    24be:	0892                	addq 8,r9
    24c0:	6ce1 644a           	move.d [sp+108],r4
    24c4:	8142                	subq 1,r4
    24c6:	6446                	test.d r4
    24c8:	ffdd 98f7           	ble 1c64 <__vfprintf_r+0x500>
    24cc:	0f05                	nop 
    24ce:	5fed be00 600a      	move.d [sp+190],r0
    24d4:	d042                	cmpq 16,r4
    24d6:	12c0                	bgt 24ea <__vfprintf_r+0xd86>
    24d8:	0f05                	nop 
    24da:	ffed 3efe           	ba 231c <__vfprintf_r+0xbb8>
    24de:	0f05                	nop 
    24e0:	9042                	subq 16,r4
    24e2:	d042                	cmpq 16,r4
    24e4:	ffdd 34fe           	ble 231c <__vfprintf_r+0xbb8>
    24e8:	0f05                	nop 
    24ea:	6fbe 3eac 0000      	move.d ac3e <_zeroes.4007>,r11
    24f0:	e9bb                	move.d r11,[r9]
    24f2:	50c2                	moveq 16,r12
    24f4:	0491 eccb           	move.d r12,[r9+4]
    24f8:	5fed c200 2dca      	add.d [sp+194],r12,r13
    24fe:	5fed c200 eddb      	move.d r13,[sp+194]
    2504:	0102                	addq 1,r0
    2506:	5fed be00 e00b      	move.d r0,[sp+190]
    250c:	c702                	cmpq 7,r0
    250e:	d1d0                	ble 24e0 <__vfprintf_r+0xd7c>
    2510:	0892                	addq 8,r9
    2512:	63a6                	move.d r3,r10
    2514:	61b6                	move.d r1,r11
    2516:	6ec6                	move.d sp,r12
    2518:	0fcc ba00           	addu.b 0xba,r12
    251c:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2522:	6aa6                	test.d r10
    2524:	ff2d 2cf9           	bne 1e54 <__vfprintf_r+0x6f0>
    2528:	6e96                	move.d sp,r9
    252a:	1f9c 5601           	addu.w 0x156,r9
    252e:	5fed be00 600a      	move.d [sp+190],r0
    2534:	ade0                	ba 24e2 <__vfprintf_r+0xd7e>
    2536:	9042                	subq 16,r4
    2538:	58e1 677a           	move.d [sp+88],r7
    253c:	48e1 a77a           	sub.d [sp+72],r7
    2540:	6776                	test.d r7
    2542:	ffdd 46f6           	ble 1b8c <__vfprintf_r+0x428>
    2546:	0f05                	nop 
    2548:	5fed be00 600a      	move.d [sp+190],r0
    254e:	d072                	cmpq 16,r7
    2550:	0ec0                	bgt 2560 <__vfprintf_r+0xdfc>
    2552:	0f05                	nop 
    2554:	5ae0                	ba 25b0 <__vfprintf_r+0xe4c>
    2556:	0f05                	nop 
    2558:	9072                	subq 16,r7
    255a:	d072                	cmpq 16,r7
    255c:	52d0                	ble 25b0 <__vfprintf_r+0xe4c>
    255e:	0892                	addq 8,r9
    2560:	6fae 3eac 0000      	move.d ac3e <_zeroes.4007>,r10
    2566:	e9ab                	move.d r10,[r9]
    2568:	50b2                	moveq 16,r11
    256a:	0491 ebbb           	move.d r11,[r9+4]
    256e:	5fed c200 2dba      	add.d [sp+194],r11,r13
    2574:	5fed c200 eddb      	move.d r13,[sp+194]
    257a:	0102                	addq 1,r0
    257c:	5fed be00 e00b      	move.d r0,[sp+190]
    2582:	c702                	cmpq 7,r0
    2584:	d3d0                	ble 2558 <__vfprintf_r+0xdf4>
    2586:	63a6                	move.d r3,r10
    2588:	61b6                	move.d r1,r11
    258a:	6ec6                	move.d sp,r12
    258c:	0fcc ba00           	addu.b 0xba,r12
    2590:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2596:	6aa6                	test.d r10
    2598:	ff2d b8f8           	bne 1e54 <__vfprintf_r+0x6f0>
    259c:	6e96                	move.d sp,r9
    259e:	1f9c 5601           	addu.w 0x156,r9
    25a2:	5fed be00 600a      	move.d [sp+190],r0
    25a8:	9072                	subq 16,r7
    25aa:	d072                	cmpq 16,r7
    25ac:	b3c0                	bgt 2560 <__vfprintf_r+0xdfc>
    25ae:	0f05                	nop 
    25b0:	6fce 3eac 0000      	move.d ac3e <_zeroes.4007>,r12
    25b6:	e9cb                	move.d r12,[r9]
    25b8:	0491 e77b           	move.d r7,[r9+4]
    25bc:	5fed c200 2d7a      	add.d [sp+194],r7,r13
    25c2:	5fed c200 eddb      	move.d r13,[sp+194]
    25c8:	0102                	addq 1,r0
    25ca:	5fed be00 e00b      	move.d r0,[sp+190]
    25d0:	c702                	cmpq 7,r0
    25d2:	ffcd 6005           	bgt 2b36 <__vfprintf_r+0x13d2>
    25d6:	0892                	addq 8,r9
    25d8:	ffed b0f5           	ba 1b8c <__vfprintf_r+0x428>
    25dc:	0f05                	nop 
    25de:	6ce1 6bba           	move.d [sp+108],r11
    25e2:	c1b2                	cmpq 1,r11
    25e4:	d0d0                	ble 26b6 <__vfprintf_r+0xf52>
    25e6:	e94b                	move.d r4,[r9]
    25e8:	41c2                	moveq 1,r12
    25ea:	0491 eccb           	move.d r12,[r9+4]
    25ee:	5fed c200 2dca      	add.d [sp+194],r12,r13
    25f4:	5fed c200 eddb      	move.d r13,[sp+194]
    25fa:	5fed be00 20ca      	add.d [sp+190],r12,r0
    2600:	5fed be00 e00b      	move.d r0,[sp+190]
    2606:	c702                	cmpq 7,r0
    2608:	ffcd c204           	bgt 2ace <__vfprintf_r+0x136a>
    260c:	0892                	addq 8,r9
    260e:	68e1 30ba           	move [sp+104],srp
    2612:	79ba                	move srp,[r9]
    2614:	7ce1 6aaa           	move.d [sp+124],r10
    2618:	0491 eaab           	move.d r10,[r9+4]
    261c:	5fed c200 2daa      	add.d [sp+194],r10,r13
    2622:	5fed c200 eddb      	move.d r13,[sp+194]
    2628:	0102                	addq 1,r0
    262a:	5fed be00 e00b      	move.d r0,[sp+190]
    2630:	c702                	cmpq 7,r0
    2632:	ffcd c004           	bgt 2af6 <__vfprintf_r+0x1392>
    2636:	6966                	move.d r9,r6
    2638:	0862                	addq 8,r6
    263a:	74e1 6aaa           	move.d [sp+116],r10
    263e:	78e1 6bba           	move.d [sp+120],r11
    2642:	7c86                	clear.d r12
    2644:	7d86                	clear.d r13
    2646:	3fbd 789d 0000      	jsr 9d78 <___nedf2>
    264c:	6aa6                	test.d r10
    264e:	ff3d 9002           	beq 28e2 <__vfprintf_r+0x117e>
    2652:	0142                	addq 1,r4
    2654:	e64b                	move.d r4,[r6]
    2656:	6ce1 6dda           	move.d [sp+108],r13
    265a:	81d2                	subq 1,r13
    265c:	0461 eddb           	move.d r13,[r6+4]
    2660:	5fed c200 29da      	add.d [sp+194],r13,r9
    2666:	5fed c200 e99b      	move.d r9,[sp+194]
    266c:	0102                	addq 1,r0
    266e:	5fed be00 e00b      	move.d r0,[sp+190]
    2674:	c702                	cmpq 7,r0
    2676:	6ac0                	bgt 26e2 <__vfprintf_r+0xf7e>
    2678:	63a6                	move.d r3,r10
    267a:	0862                	addq 8,r6
    267c:	6e96                	move.d sp,r9
    267e:	0f9c a400           	addu.b 0xa4,r9
    2682:	e69b                	move.d r9,[r6]
    2684:	5fed 8000 699a      	move.d [sp+128],r9
    268a:	0461 e99b           	move.d r9,[r6+4]
    268e:	5fed c200 699a      	move.d [sp+194],r9
    2694:	5fed 8000 299a      	add.d [sp+128],r9
    269a:	5fed c200 e99b      	move.d r9,[sp+194]
    26a0:	0102                	addq 1,r0
    26a2:	5fed be00 e00b      	move.d r0,[sp+190]
    26a8:	c702                	cmpq 7,r0
    26aa:	ffcd 96fc           	bgt 2344 <__vfprintf_r+0xbe0>
    26ae:	6696                	move.d r6,r9
    26b0:	ffed b0f5           	ba 1c64 <__vfprintf_r+0x500>
    26b4:	0892                	addq 8,r9
    26b6:	8053                	btstq 0,r5
    26b8:	31b0                	blt 25ea <__vfprintf_r+0xe86>
    26ba:	41c2                	moveq 1,r12
    26bc:	41a2                	moveq 1,r10
    26be:	0491 eaab           	move.d r10,[r9+4]
    26c2:	5fed c200 2daa      	add.d [sp+194],r10,r13
    26c8:	5fed c200 eddb      	move.d r13,[sp+194]
    26ce:	5fed be00 20aa      	add.d [sp+190],r10,r0
    26d4:	5fed be00 e00b      	move.d r0,[sp+190]
    26da:	c702                	cmpq 7,r0
    26dc:	9dd0                	ble 267a <__vfprintf_r+0xf16>
    26de:	6966                	move.d r9,r6
    26e0:	63a6                	move.d r3,r10
    26e2:	61b6                	move.d r1,r11
    26e4:	6ec6                	move.d sp,r12
    26e6:	0fcc ba00           	addu.b 0xba,r12
    26ea:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    26f0:	6aa6                	test.d r10
    26f2:	ff2d 5ef7           	bne 1e54 <__vfprintf_r+0x6f0>
    26f6:	6e66                	move.d sp,r6
    26f8:	1f6c 5601           	addu.w 0x156,r6
    26fc:	5fed be00 600a      	move.d [sp+190],r0
    2702:	7be0                	ba 267e <__vfprintf_r+0xf1a>
    2704:	6e96                	move.d sp,r9
    2706:	61b6                	move.d r1,r11
    2708:	6ec6                	move.d sp,r12
    270a:	0fcc ba00           	addu.b 0xba,r12
    270e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2714:	6aa6                	test.d r10
    2716:	ff3d 28f6           	beq 1d42 <__vfprintf_r+0x5de>
    271a:	0f05                	nop 
    271c:	ffed 34f7           	ba 1e54 <__vfprintf_r+0x6f0>
    2720:	0f05                	nop 
    2722:	63a6                	move.d r3,r10
    2724:	61b6                	move.d r1,r11
    2726:	6ec6                	move.d sp,r12
    2728:	0fcc ba00           	addu.b 0xba,r12
    272c:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2732:	6aa6                	test.d r10
    2734:	ff2d 1cf7           	bne 1e54 <__vfprintf_r+0x6f0>
    2738:	6e96                	move.d sp,r9
    273a:	1f9c 5601           	addu.w 0x156,r9
    273e:	ffed e8f4           	ba 1c2a <__vfprintf_r+0x4c6>
    2742:	0f05                	nop 
    2744:	63a6                	move.d r3,r10
    2746:	61b6                	move.d r1,r11
    2748:	6ec6                	move.d sp,r12
    274a:	0fcc ba00           	addu.b 0xba,r12
    274e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2754:	6aa6                	test.d r10
    2756:	ff2d faf6           	bne 1e54 <__vfprintf_r+0x6f0>
    275a:	6e96                	move.d sp,r9
    275c:	1f9c 5601           	addu.w 0x156,r9
    2760:	ffed e6f3           	ba 1b4a <__vfprintf_r+0x3e6>
    2764:	0f05                	nop 
    2766:	63a6                	move.d r3,r10
    2768:	61b6                	move.d r1,r11
    276a:	6ec6                	move.d sp,r12
    276c:	0fcc ba00           	addu.b 0xba,r12
    2770:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2776:	6aa6                	test.d r10
    2778:	ff2d d8f6           	bne 1e54 <__vfprintf_r+0x6f0>
    277c:	6e96                	move.d sp,r9
    277e:	1f9c 5601           	addu.w 0x156,r9
    2782:	ffed f8f3           	ba 1b7e <__vfprintf_r+0x41a>
    2786:	0f05                	nop 
    2788:	40e1 6bba           	move.d [sp+64],r11
    278c:	44e1 6cca           	move.d [sp+68],r12
    2790:	c9b2                	cmpq 9,r11
    2792:	b015                	ax 
    2794:	c0c2                	cmpq 0,r12
    2796:	ff9d ae01           	bhi 2948 <__vfprintf_r+0x11e4>
    279a:	0f05                	nop 
    279c:	40e1 4dda           	move.b [sp+64],r13
    27a0:	30d2                	addq 48,r13
    27a2:	5fed ed00 cddb      	move.b r13,[sp+237]
    27a8:	5fed 8400 6cca      	move.d [sp+132],r12
    27ae:	50e1 eccb           	move.d r12,[sp+80]
    27b2:	0f4c ed00           	addu.b 0xed,r4
    27b6:	ffed 6cf2           	ba 1a26 <__vfprintf_r+0x2c2>
    27ba:	0f05                	nop 
    27bc:	50e1 708a           	clear.d [sp+80]
    27c0:	6e46                	move.d sp,r4
    27c2:	0f4c ee00           	addu.b 0xee,r4
    27c6:	ffed 5cf2           	ba 1a26 <__vfprintf_r+0x2c2>
    27ca:	0f05                	nop 
    27cc:	5fed 9800 666a      	move.d [sp+152],r6
    27d2:	ffdd f805           	ble 2dce <__vfprintf_r+0x166a>
    27d6:	0f05                	nop 
    27d8:	6ce1 264a           	add.d [sp+108],r4,r6
    27dc:	6676                	move.d r6,r7
    27de:	a476                	sub.d r4,r7
    27e0:	70e1 e77a           	cmp.d [sp+112],r7
    27e4:	06d0                	ble 27ec <__vfprintf_r+0x1088>
    27e6:	0f05                	nop 
    27e8:	70e1 677a           	move.d [sp+112],r7
    27ec:	6776                	test.d r7
    27ee:	2ad0                	ble 281a <__vfprintf_r+0x10b6>
    27f0:	0f05                	nop 
    27f2:	e94b                	move.d r4,[r9]
    27f4:	0491 e77b           	move.d r7,[r9+4]
    27f8:	5fed c200 2d7a      	add.d [sp+194],r7,r13
    27fe:	5fed c200 eddb      	move.d r13,[sp+194]
    2804:	5fed be00 6dda      	move.d [sp+190],r13
    280a:	01d2                	addq 1,r13
    280c:	5fed be00 eddb      	move.d r13,[sp+190]
    2812:	c7d2                	cmpq 7,r13
    2814:	ffcd d407           	bgt 2fec <__vfprintf_r+0x1888>
    2818:	0892                	addq 8,r9
    281a:	6776                	test.d r7
    281c:	ffbd c607           	blt 2fe6 <__vfprintf_r+0x1882>
    2820:	0f05                	nop 
    2822:	70e1 6bba           	move.d [sp+112],r11
    2826:	a7b6                	sub.d r7,r11
    2828:	6bb6                	test.d r11
    282a:	ffdd 9601           	ble 29c4 <__vfprintf_r+0x1260>
    282e:	6b76                	move.d r11,r7
    2830:	5fed be00 600a      	move.d [sp+190],r0
    2836:	d0b2                	cmpq 16,r11
    2838:	12c0                	bgt 284c <__vfprintf_r+0x10e8>
    283a:	0f05                	nop 
    283c:	ffed 3205           	ba 2d72 <__vfprintf_r+0x160e>
    2840:	0f05                	nop 
    2842:	9072                	subq 16,r7
    2844:	d072                	cmpq 16,r7
    2846:	ffdd 2805           	ble 2d72 <__vfprintf_r+0x160e>
    284a:	0f05                	nop 
    284c:	6fce 3eac 0000      	move.d ac3e <_zeroes.4007>,r12
    2852:	e9cb                	move.d r12,[r9]
    2854:	50d2                	moveq 16,r13
    2856:	0491 eddb           	move.d r13,[r9+4]
    285a:	5fed c200 6dda      	move.d [sp+194],r13
    2860:	10d2                	addq 16,r13
    2862:	5fed c200 eddb      	move.d r13,[sp+194]
    2868:	0102                	addq 1,r0
    286a:	5fed be00 e00b      	move.d r0,[sp+190]
    2870:	c702                	cmpq 7,r0
    2872:	cfd0                	ble 2842 <__vfprintf_r+0x10de>
    2874:	0892                	addq 8,r9
    2876:	63a6                	move.d r3,r10
    2878:	61b6                	move.d r1,r11
    287a:	6ec6                	move.d sp,r12
    287c:	0fcc ba00           	addu.b 0xba,r12
    2880:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2886:	6aa6                	test.d r10
    2888:	ff2d c8f5           	bne 1e54 <__vfprintf_r+0x6f0>
    288c:	6e96                	move.d sp,r9
    288e:	1f9c 5601           	addu.w 0x156,r9
    2892:	5fed be00 600a      	move.d [sp+190],r0
    2898:	abe0                	ba 2844 <__vfprintf_r+0x10e0>
    289a:	9072                	subq 16,r7
    289c:	63a6                	move.d r3,r10
    289e:	61b6                	move.d r1,r11
    28a0:	6ec6                	move.d sp,r12
    28a2:	0fcc ba00           	addu.b 0xba,r12
    28a6:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    28ac:	6aa6                	test.d r10
    28ae:	ff2d a2f5           	bne 1e54 <__vfprintf_r+0x6f0>
    28b2:	6e96                	move.d sp,r9
    28b4:	5fed 9500 400a      	move.b [sp+149],r0
    28ba:	1f9c 5601           	addu.w 0x156,r9
    28be:	ffed 52f2           	ba 1b14 <__vfprintf_r+0x3b0>
    28c2:	0f05                	nop 
    28c4:	54e1 6bba           	move.d [sp+84],r11
    28c8:	6bba                	move.d [r11],r11
    28ca:	40e1 ebbb           	move.d r11,[sp+64]
    28ce:	44e1 708a           	clear.d [sp+68]
    28d2:	54e1 6cca           	move.d [sp+84],r12
    28d6:	04c2                	addq 4,r12
    28d8:	54e1 eccb           	move.d r12,[sp+84]
    28dc:	ffed 3cf6           	ba 1f1c <__vfprintf_r+0x7b8>
    28e0:	0f05                	nop 
    28e2:	6ce1 644a           	move.d [sp+108],r4
    28e6:	8142                	subq 1,r4
    28e8:	6446                	test.d r4
    28ea:	ffdd 90fd           	ble 267e <__vfprintf_r+0xf1a>
    28ee:	6e96                	move.d sp,r9
    28f0:	d042                	cmpq 16,r4
    28f2:	ffdd 2802           	ble 2b1e <__vfprintf_r+0x13ba>
    28f6:	50c2                	moveq 16,r12
    28f8:	6fbe 3eac 0000      	move.d ac3e <_zeroes.4007>,r11
    28fe:	e6bb                	move.d r11,[r6]
    2900:	0461 eccb           	move.d r12,[r6+4]
    2904:	5fed c200 29ca      	add.d [sp+194],r12,r9
    290a:	5fed c200 e99b      	move.d r9,[sp+194]
    2910:	0102                	addq 1,r0
    2912:	5fed be00 e00b      	move.d r0,[sp+190]
    2918:	c702                	cmpq 7,r0
    291a:	06c0                	bgt 2922 <__vfprintf_r+0x11be>
    291c:	0862                	addq 8,r6
    291e:	d1e0                	ba 28f0 <__vfprintf_r+0x118c>
    2920:	9042                	subq 16,r4
    2922:	63a6                	move.d r3,r10
    2924:	61b6                	move.d r1,r11
    2926:	6ec6                	move.d sp,r12
    2928:	0fcc ba00           	addu.b 0xba,r12
    292c:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2932:	6aa6                	test.d r10
    2934:	ff2d 1cf5           	bne 1e54 <__vfprintf_r+0x6f0>
    2938:	6e66                	move.d sp,r6
    293a:	1f6c 5601           	addu.w 0x156,r6
    293e:	5fed be00 600a      	move.d [sp+190],r0
    2944:	abe0                	ba 28f0 <__vfprintf_r+0x118c>
    2946:	9042                	subq 16,r4
    2948:	6e46                	move.d sp,r4
    294a:	0f4c ee00           	addu.b 0xee,r4
    294e:	6f7e bc8f 0000      	move.d 8fbc <___umoddi3>,r7
    2954:	8142                	subq 1,r4
    2956:	40e1 6aaa           	move.d [sp+64],r10
    295a:	44e1 6bba           	move.d [sp+68],r11
    295e:	4ac2                	moveq 10,r12
    2960:	7d86                	clear.d r13
    2962:	34e1 e99b           	move.d r9,[sp+52]
    2966:	b7b9                	jsr r7
    2968:	30a2                	addq 48,r10
    296a:	c4ab                	move.b r10,[r4]
    296c:	40e1 6aaa           	move.d [sp+64],r10
    2970:	44e1 6bba           	move.d [sp+68],r11
    2974:	4ac2                	moveq 10,r12
    2976:	7d86                	clear.d r13
    2978:	3fbd 1c8b 0000      	jsr 8b1c <___udivdi3>
    297e:	40e1 eaab           	move.d r10,[sp+64]
    2982:	44e1 ebbb           	move.d r11,[sp+68]
    2986:	34e1 699a           	move.d [sp+52],r9
    298a:	40e1 a00b           	test.d [sp+64]
    298e:	b015                	ax 
    2990:	44e1 a00b           	test.d [sp+68]
    2994:	bf20                	bne 2954 <__vfprintf_r+0x11f0>
    2996:	0f05                	nop 
    2998:	3ce1 6dda           	move.d [sp+60],r13
    299c:	a4d6                	sub.d r4,r13
    299e:	50e1 eddb           	move.d r13,[sp+80]
    29a2:	ffed 80f0           	ba 1a26 <__vfprintf_r+0x2c2>
    29a6:	0f05                	nop 
    29a8:	63a6                	move.d r3,r10
    29aa:	61b6                	move.d r1,r11
    29ac:	6ec6                	move.d sp,r12
    29ae:	0fcc ba00           	addu.b 0xba,r12
    29b2:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    29b8:	6aa6                	test.d r10
    29ba:	ff2d 96f4           	bne 1e54 <__vfprintf_r+0x6f0>
    29be:	6e96                	move.d sp,r9
    29c0:	1f9c 5601           	addu.w 0x156,r9
    29c4:	70e1 244a           	add.d [sp+112],r4
    29c8:	5fed 9800 6dda      	move.d [sp+152],r13
    29ce:	6ce1 edda           	cmp.d [sp+108],r13
    29d2:	c6b0                	blt 2a9a <__vfprintf_r+0x1336>
    29d4:	8053                	btstq 0,r5
    29d6:	c2b0                	blt 2a9a <__vfprintf_r+0x1336>
    29d8:	0f05                	nop 
    29da:	a466                	sub.d r4,r6
    29dc:	6ce1 6bba           	move.d [sp+108],r11
    29e0:	adb6                	sub.d r13,r11
    29e2:	6bd6                	move.d r11,r13
    29e4:	e6b6                	cmp.d r6,r11
    29e6:	04d0                	ble 29ec <__vfprintf_r+0x1288>
    29e8:	6b06                	move.d r11,r0
    29ea:	6606                	move.d r6,r0
    29ec:	6006                	test.d r0
    29ee:	2ad0                	ble 2a1a <__vfprintf_r+0x12b6>
    29f0:	0f05                	nop 
    29f2:	e94b                	move.d r4,[r9]
    29f4:	0491 e00b           	move.d r0,[r9+4]
    29f8:	5fed c200 2c0a      	add.d [sp+194],r0,r12
    29fe:	5fed c200 eccb      	move.d r12,[sp+194]
    2a04:	5fed be00 6cca      	move.d [sp+190],r12
    2a0a:	01c2                	addq 1,r12
    2a0c:	5fed be00 eccb      	move.d r12,[sp+190]
    2a12:	c7c2                	cmpq 7,r12
    2a14:	ffcd 7206           	bgt 308a <__vfprintf_r+0x1926>
    2a18:	0892                	addq 8,r9
    2a1a:	6006                	test.d r0
    2a1c:	ffbd 9606           	blt 30b6 <__vfprintf_r+0x1952>
    2a20:	0f05                	nop 
    2a22:	6d46                	move.d r13,r4
    2a24:	a046                	sub.d r0,r4
    2a26:	6446                	test.d r4
    2a28:	ffdd 38f2           	ble 1c64 <__vfprintf_r+0x500>
    2a2c:	0f05                	nop 
    2a2e:	5fed be00 600a      	move.d [sp+190],r0
    2a34:	d042                	cmpq 16,r4
    2a36:	12c0                	bgt 2a4a <__vfprintf_r+0x12e6>
    2a38:	0f05                	nop 
    2a3a:	ffed 6203           	ba 2da0 <__vfprintf_r+0x163c>
    2a3e:	0f05                	nop 
    2a40:	9042                	subq 16,r4
    2a42:	d042                	cmpq 16,r4
    2a44:	ffdd 5803           	ble 2da0 <__vfprintf_r+0x163c>
    2a48:	0f05                	nop 
    2a4a:	6fce 3eac 0000      	move.d ac3e <_zeroes.4007>,r12
    2a50:	e9cb                	move.d r12,[r9]
    2a52:	50d2                	moveq 16,r13
    2a54:	0491 eddb           	move.d r13,[r9+4]
    2a58:	5fed c200 6dda      	move.d [sp+194],r13
    2a5e:	10d2                	addq 16,r13
    2a60:	5fed c200 eddb      	move.d r13,[sp+194]
    2a66:	0102                	addq 1,r0
    2a68:	5fed be00 e00b      	move.d r0,[sp+190]
    2a6e:	c702                	cmpq 7,r0
    2a70:	cfd0                	ble 2a40 <__vfprintf_r+0x12dc>
    2a72:	0892                	addq 8,r9
    2a74:	63a6                	move.d r3,r10
    2a76:	61b6                	move.d r1,r11
    2a78:	6ec6                	move.d sp,r12
    2a7a:	0fcc ba00           	addu.b 0xba,r12
    2a7e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2a84:	6aa6                	test.d r10
    2a86:	ff2d caf3           	bne 1e54 <__vfprintf_r+0x6f0>
    2a8a:	6e96                	move.d sp,r9
    2a8c:	1f9c 5601           	addu.w 0x156,r9
    2a90:	5fed be00 600a      	move.d [sp+190],r0
    2a96:	abe0                	ba 2a42 <__vfprintf_r+0x12de>
    2a98:	9042                	subq 16,r4
    2a9a:	68e1 30ba           	move [sp+104],srp
    2a9e:	79ba                	move srp,[r9]
    2aa0:	7ce1 6aaa           	move.d [sp+124],r10
    2aa4:	0491 eaab           	move.d r10,[r9+4]
    2aa8:	5fed c200 2caa      	add.d [sp+194],r10,r12
    2aae:	5fed c200 eccb      	move.d r12,[sp+194]
    2ab4:	5fed be00 6cca      	move.d [sp+190],r12
    2aba:	01c2                	addq 1,r12
    2abc:	5fed be00 eccb      	move.d r12,[sp+190]
    2ac2:	c7c2                	cmpq 7,r12
    2ac4:	ffcd 7005           	bgt 3038 <__vfprintf_r+0x18d4>
    2ac8:	0892                	addq 8,r9
    2aca:	11e0                	ba 29dc <__vfprintf_r+0x1278>
    2acc:	a466                	sub.d r4,r6
    2ace:	63a6                	move.d r3,r10
    2ad0:	61b6                	move.d r1,r11
    2ad2:	6ec6                	move.d sp,r12
    2ad4:	0fcc ba00           	addu.b 0xba,r12
    2ad8:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2ade:	6aa6                	test.d r10
    2ae0:	ff2d 70f3           	bne 1e54 <__vfprintf_r+0x6f0>
    2ae4:	6e96                	move.d sp,r9
    2ae6:	1f9c 5601           	addu.w 0x156,r9
    2aea:	5fed be00 600a      	move.d [sp+190],r0
    2af0:	ffed 1afb           	ba 260e <__vfprintf_r+0xeaa>
    2af4:	0f05                	nop 
    2af6:	63a6                	move.d r3,r10
    2af8:	61b6                	move.d r1,r11
    2afa:	6ec6                	move.d sp,r12
    2afc:	0fcc ba00           	addu.b 0xba,r12
    2b00:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2b06:	6aa6                	test.d r10
    2b08:	ff2d 48f3           	bne 1e54 <__vfprintf_r+0x6f0>
    2b0c:	6e66                	move.d sp,r6
    2b0e:	1f6c 5601           	addu.w 0x156,r6
    2b12:	5fed be00 600a      	move.d [sp+190],r0
    2b18:	ffed 1efb           	ba 263a <__vfprintf_r+0xed6>
    2b1c:	0f05                	nop 
    2b1e:	6fde 3eac 0000      	move.d ac3e <_zeroes.4007>,r13
    2b24:	e6db                	move.d r13,[r6]
    2b26:	0461 e44b           	move.d r4,[r6+4]
    2b2a:	5fed c200 294a      	add.d [sp+194],r4,r9
    2b30:	ffed 32fb           	ba 2666 <__vfprintf_r+0xf02>
    2b34:	0f05                	nop 
    2b36:	63a6                	move.d r3,r10
    2b38:	61b6                	move.d r1,r11
    2b3a:	6ec6                	move.d sp,r12
    2b3c:	0fcc ba00           	addu.b 0xba,r12
    2b40:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2b46:	6aa6                	test.d r10
    2b48:	ff2d 08f3           	bne 1e54 <__vfprintf_r+0x6f0>
    2b4c:	6e96                	move.d sp,r9
    2b4e:	1f9c 5601           	addu.w 0x156,r9
    2b52:	ffed 36f0           	ba 1b8c <__vfprintf_r+0x428>
    2b56:	0f05                	nop 
    2b58:	5fed 8c00 708a      	clear.d [sp+140]
    2b5e:	5fed 9000 708a      	clear.d [sp+144]
    2b64:	5fed 8c00 6bba      	move.d [sp+140],r11
    2b6a:	5fed 9000 6cca      	move.d [sp+144],r12
    2b70:	40e1 abba           	sub.d [sp+64],r11
    2b74:	b015                	ax 
    2b76:	44e1 acca           	sub.d [sp+68],r12
    2b7a:	40e1 ebbb           	move.d r11,[sp+64]
    2b7e:	44e1 eccb           	move.d r12,[sp+68]
    2b82:	4fce 2d00           	move.b 0x2d,r12
    2b86:	5fed 9500 cccb      	move.b r12,[sp+149]
    2b8c:	4c06                	move.b r12,r0
    2b8e:	ffed 4cee           	ba 19de <__vfprintf_r+0x27a>
    2b92:	41d2                	moveq 1,r13
    2b94:	74e1 6aaa           	move.d [sp+116],r10
    2b98:	78e1 6bba           	move.d [sp+120],r11
    2b9c:	34e1 e99b           	move.d r9,[sp+52]
    2ba0:	b0b9                	jsr r0
    2ba2:	34e1 699a           	move.d [sp+52],r9
    2ba6:	6aa6                	test.d r10
    2ba8:	ff3d ce02           	beq 2e7a <__vfprintf_r+0x1716>
    2bac:	ff82                	cmpq -1,r8
    2bae:	ff3d fe06           	beq 32b0 <__vfprintf_r+0x1b4c>
    2bb2:	0f05                	nop 
    2bb4:	cf6c 6700           	cmpu.b 0x67,r6
    2bb8:	ff3d 9406           	beq 3250 <__vfprintf_r+0x1aec>
    2bbc:	0f05                	nop 
    2bbe:	cf6c 4700           	cmpu.b 0x47,r6
    2bc2:	ff3d 8a06           	beq 3250 <__vfprintf_r+0x1aec>
    2bc6:	0f05                	nop 
    2bc8:	65b6                	move.d r5,r11
    2bca:	5fbf 0001           	or.w 0x100,r11
    2bce:	5ce1 ebbb           	move.d r11,[sp+92]
    2bd2:	74e1 30ba           	move [sp+116],srp
    2bd6:	5fed b200 70ba      	move srp,[sp+178]
    2bdc:	78e1 6aaa           	move.d [sp+120],r10
    2be0:	5fed b600 eaab      	move.d r10,[sp+182]
    2be6:	ffbd ae06           	blt 3298 <__vfprintf_r+0x1b34>
    2bea:	0f05                	nop 
    2bec:	78e1 6cca           	move.d [sp+120],r12
    2bf0:	48e1 eccb           	move.d r12,[sp+72]
    2bf4:	60e1 700a           	clear.b [sp+96]
    2bf8:	cf6c 6600           	cmpu.b 0x66,r6
    2bfc:	ff3d d405           	beq 31d4 <__vfprintf_r+0x1a70>
    2c00:	0f05                	nop 
    2c02:	cf6c 4600           	cmpu.b 0x46,r6
    2c06:	ff3d ca05           	beq 31d4 <__vfprintf_r+0x1a70>
    2c0a:	0f05                	nop 
    2c0c:	cf6c 6500           	cmpu.b 0x65,r6
    2c10:	ff3d 7e06           	beq 3292 <__vfprintf_r+0x1b2e>
    2c14:	6876                	move.d r8,r7
    2c16:	cf6c 4500           	cmpu.b 0x45,r6
    2c1a:	ff3d 7406           	beq 3292 <__vfprintf_r+0x1b2e>
    2c1e:	0f05                	nop 
    2c20:	ee7b                	move.d r7,[sp]
    2c22:	6ed6                	move.d sp,r13
    2c24:	0fdc 9800           	addu.b 0x98,r13
    2c28:	04e1 eddb           	move.d r13,[sp+4]
    2c2c:	04d2                	addq 4,r13
    2c2e:	08e1 eddb           	move.d r13,[sp+8]
    2c32:	04d2                	addq 4,r13
    2c34:	0ce1 eddb           	move.d r13,[sp+12]
    2c38:	63a6                	move.d r3,r10
    2c3a:	74e1 6bba           	move.d [sp+116],r11
    2c3e:	48e1 6cca           	move.d [sp+72],r12
    2c42:	42d2                	moveq 2,r13
    2c44:	34e1 e99b           	move.d r9,[sp+52]
    2c48:	3fbd d437 0000      	jsr 37d4 <__dtoa_r>
    2c4e:	34e1 699a           	move.d [sp+52],r9
    2c52:	cf6c 6700           	cmpu.b 0x67,r6
    2c56:	0a30                	beq 2c62 <__vfprintf_r+0x14fe>
    2c58:	6a46                	move.d r10,r4
    2c5a:	cf6c 4700           	cmpu.b 0x47,r6
    2c5e:	0c20                	bne 2c6c <__vfprintf_r+0x1508>
    2c60:	6406                	move.d r4,r0
    2c62:	8053                	btstq 0,r5
    2c64:	ffad 8a06           	bge 32f2 <__vfprintf_r+0x1b8e>
    2c68:	0f05                	nop 
    2c6a:	6406                	move.d r4,r0
    2c6c:	cf6c 4600           	cmpu.b 0x46,r6
    2c70:	ff3d 9a05           	beq 320e <__vfprintf_r+0x1aaa>
    2c74:	2706                	add.d r7,r0
    2c76:	74e1 6aaa           	move.d [sp+116],r10
    2c7a:	48e1 6bba           	move.d [sp+72],r11
    2c7e:	7c86                	clear.d r12
    2c80:	7d86                	clear.d r13
    2c82:	34e1 e99b           	move.d r9,[sp+52]
    2c86:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    2c8c:	34e1 699a           	move.d [sp+52],r9
    2c90:	6aa6                	test.d r10
    2c92:	2230                	beq 2cb6 <__vfprintf_r+0x1552>
    2c94:	0f05                	nop 
    2c96:	5fed a000 6dda      	move.d [sp+160],r13
    2c9c:	ed06                	cmp.d r13,r0
    2c9e:	ff8d 7207           	bls 3414 <__vfprintf_r+0x1cb0>
    2ca2:	0f05                	nop 
    2ca4:	4fae 3000           	move.b 0x30,r10
    2ca8:	cdaf                	move.b r10,[r13+]
    2caa:	5fed a000 eddb      	move.d r13,[sp+160]
    2cb0:	e0d6                	cmp.d r0,r13
    2cb2:	f520                	bne 2ca8 <__vfprintf_r+0x1544>
    2cb4:	0f05                	nop 
    2cb6:	a406                	sub.d r4,r0
    2cb8:	6ce1 e00b           	move.d r0,[sp+108]
    2cbc:	cf6c 6700           	cmpu.b 0x67,r6
    2cc0:	ff3d 1404           	beq 30d8 <__vfprintf_r+0x1974>
    2cc4:	0f05                	nop 
    2cc6:	cf6c 4700           	cmpu.b 0x47,r6
    2cca:	ff3d 0a04           	beq 30d8 <__vfprintf_r+0x1974>
    2cce:	0f05                	nop 
    2cd0:	cf6c 6600           	cmpu.b 0x66,r6
    2cd4:	ff2d 5007           	bne 3428 <__vfprintf_r+0x1cc4>
    2cd8:	0f05                	nop 
    2cda:	5fed 9800 6dda      	move.d [sp+152],r13
    2ce0:	ffdd be06           	ble 33a2 <__vfprintf_r+0x1c3e>
    2ce4:	6886                	test.d r8
    2ce6:	ff2d 8e06           	bne 3378 <__vfprintf_r+0x1c14>
    2cea:	8053                	btstq 0,r5
    2cec:	ffbd 8806           	blt 3378 <__vfprintf_r+0x1c14>
    2cf0:	0f05                	nop 
    2cf2:	48e1 eddb           	move.d r13,[sp+72]
    2cf6:	50e1 eddb           	move.d r13,[sp+80]
    2cfa:	70e1 eddb           	move.d r13,[sp+112]
    2cfe:	60e1 800b           	test.b [sp+96]
    2d02:	ff2d b604           	bne 31bc <__vfprintf_r+0x1a58>
    2d06:	0f05                	nop 
    2d08:	5fed 9500 400a      	move.b [sp+149],r0
    2d0e:	5ce1 655a           	move.d [sp+92],r5
    2d12:	60e1 708a           	clear.d [sp+96]
    2d16:	ffed 26ed           	ba 1a40 <__vfprintf_r+0x2dc>
    2d1a:	0f05                	nop 
    2d1c:	ffad aa01           	bge 2eca <__vfprintf_r+0x1766>
    2d20:	0f05                	nop 
    2d22:	54e1 6bba           	move.d [sp+84],r11
    2d26:	7bc8                	movs.w [r11],r12
    2d28:	3d75                	smi r13
    2d2a:	add5                	neg.d r13,r13
    2d2c:	7ca4                	movs.w r12,r10
    2d2e:	3b75                	smi r11
    2d30:	abb5                	neg.d r11,r11
    2d32:	40e1 eaab           	move.d r10,[sp+64]
    2d36:	44e1 ebbb           	move.d r11,[sp+68]
    2d3a:	54e1 6bba           	move.d [sp+84],r11
    2d3e:	04b2                	addq 4,r11
    2d40:	54e1 ebbb           	move.d r11,[sp+84]
    2d44:	ffed 90f3           	ba 20d8 <__vfprintf_r+0x974>
    2d48:	0f05                	nop 
    2d4a:	ffbd 6001           	blt 2eae <__vfprintf_r+0x174a>
    2d4e:	8653                	btstq 6,r5
    2d50:	ffad 4c04           	bge 31a0 <__vfprintf_r+0x1a3c>
    2d54:	0f05                	nop 
    2d56:	4ce1 5cca           	move.w [sp+76],r12
    2d5a:	54e1 6bba           	move.d [sp+84],r11
    2d5e:	6bba                	move.d [r11],r11
    2d60:	dbcb                	move.w r12,[r11]
    2d62:	54e1 6dda           	move.d [sp+84],r13
    2d66:	04d2                	addq 4,r13
    2d68:	54e1 eddb           	move.d r13,[sp+84]
    2d6c:	ffed ceea           	ba 183e <__vfprintf_r+0xda>
    2d70:	42da                	move.b [r2],r13
    2d72:	6fae 3eac 0000      	move.d ac3e <_zeroes.4007>,r10
    2d78:	e9ab                	move.d r10,[r9]
    2d7a:	0491 e77b           	move.d r7,[r9+4]
    2d7e:	5fed c200 2d7a      	add.d [sp+194],r7,r13
    2d84:	5fed c200 eddb      	move.d r13,[sp+194]
    2d8a:	0102                	addq 1,r0
    2d8c:	5fed be00 e00b      	move.d r0,[sp+190]
    2d92:	c702                	cmpq 7,r0
    2d94:	ffcd 10fc           	bgt 29a8 <__vfprintf_r+0x1244>
    2d98:	0892                	addq 8,r9
    2d9a:	ffed 26fc           	ba 29c4 <__vfprintf_r+0x1260>
    2d9e:	0f05                	nop 
    2da0:	6fae 3eac 0000      	move.d ac3e <_zeroes.4007>,r10
    2da6:	ffed 7af5           	ba 2324 <__vfprintf_r+0xbc0>
    2daa:	e9ab                	move.d r10,[r9]
    2dac:	63a6                	move.d r3,r10
    2dae:	61b6                	move.d r1,r11
    2db0:	6ec6                	move.d sp,r12
    2db2:	0fcc ba00           	addu.b 0xba,r12
    2db6:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2dbc:	6aa6                	test.d r10
    2dbe:	ff2d 92f0           	bne 1e54 <__vfprintf_r+0x6f0>
    2dc2:	6e96                	move.d sp,r9
    2dc4:	1f9c 5601           	addu.w 0x156,r9
    2dc8:	ffed b0f6           	ba 247c <__vfprintf_r+0xd18>
    2dcc:	0f05                	nop 
    2dce:	6fae 2cac 0000      	move.d ac2c <__global_impure_ptr+0x42>,r10
    2dd4:	e9ab                	move.d r10,[r9]
    2dd6:	0491 ebbb           	move.d r11,[r9+4]
    2dda:	5fed c200 2dba      	add.d [sp+194],r11,r13
    2de0:	5fed c200 eddb      	move.d r13,[sp+194]
    2de6:	5fed be00 2dba      	add.d [sp+190],r11,r13
    2dec:	5fed be00 eddb      	move.d r13,[sp+190]
    2df2:	c7d2                	cmpq 7,r13
    2df4:	ffcd 0001           	bgt 2ef8 <__vfprintf_r+0x1794>
    2df8:	0892                	addq 8,r9
    2dfa:	6666                	test.d r6
    2dfc:	1020                	bne 2e0e <__vfprintf_r+0x16aa>
    2dfe:	0f05                	nop 
    2e00:	6ce1 a00b           	test.d [sp+108]
    2e04:	0820                	bne 2e0e <__vfprintf_r+0x16aa>
    2e06:	8053                	btstq 0,r5
    2e08:	ffad 58ee           	bge 1c64 <__vfprintf_r+0x500>
    2e0c:	0f05                	nop 
    2e0e:	68e1 30ba           	move [sp+104],srp
    2e12:	79ba                	move srp,[r9]
    2e14:	7ce1 6aaa           	move.d [sp+124],r10
    2e18:	0491 eaab           	move.d r10,[r9+4]
    2e1c:	5fed c200 2daa      	add.d [sp+194],r10,r13
    2e22:	5fed c200 eddb      	move.d r13,[sp+194]
    2e28:	5fed be00 600a      	move.d [sp+190],r0
    2e2e:	0102                	addq 1,r0
    2e30:	5fed be00 e00b      	move.d r0,[sp+190]
    2e36:	c702                	cmpq 7,r0
    2e38:	ffcd 2804           	bgt 3264 <__vfprintf_r+0x1b00>
    2e3c:	0892                	addq 8,r9
    2e3e:	a665                	neg.d r6,r6
    2e40:	6666                	test.d r6
    2e42:	ffdd 6201           	ble 2fa8 <__vfprintf_r+0x1844>
    2e46:	0f05                	nop 
    2e48:	d062                	cmpq 16,r6
    2e4a:	ffdd c001           	ble 300e <__vfprintf_r+0x18aa>
    2e4e:	50c2                	moveq 16,r12
    2e50:	6fbe 3eac 0000      	move.d ac3e <_zeroes.4007>,r11
    2e56:	e9bb                	move.d r11,[r9]
    2e58:	0491 eccb           	move.d r12,[r9+4]
    2e5c:	5fed c200 2dca      	add.d [sp+194],r12,r13
    2e62:	5fed c200 eddb      	move.d r13,[sp+194]
    2e68:	0102                	addq 1,r0
    2e6a:	5fed be00 e00b      	move.d r0,[sp+190]
    2e70:	c702                	cmpq 7,r0
    2e72:	acc0                	bgt 2f20 <__vfprintf_r+0x17bc>
    2e74:	0892                	addq 8,r9
    2e76:	d1e0                	ba 2e48 <__vfprintf_r+0x16e4>
    2e78:	9062                	subq 16,r6
    2e7a:	cf6c 4700           	cmpu.b 0x47,r6
    2e7e:	ffcd 4a02           	bgt 30cc <__vfprintf_r+0x1968>
    2e82:	0f05                	nop 
    2e84:	6f4e f8ab 0000      	move.d abf8 <__global_impure_ptr+0xe>,r4
    2e8a:	2f5f 7fff ffff      	and.d 0xffffff7f,r5
    2e90:	5fed 9500 400a      	move.b [sp+149],r0
    2e96:	43a2                	moveq 3,r10
    2e98:	48e1 eaab           	move.d r10,[sp+72]
    2e9c:	50e1 eaab           	move.d r10,[sp+80]
    2ea0:	60e1 708a           	clear.d [sp+96]
    2ea4:	70e1 708a           	clear.d [sp+112]
    2ea8:	ffed 94eb           	ba 1a40 <__vfprintf_r+0x2dc>
    2eac:	0f05                	nop 
    2eae:	4ce1 6dda           	move.d [sp+76],r13
    2eb2:	54e1 6cca           	move.d [sp+84],r12
    2eb6:	6cca                	move.d [r12],r12
    2eb8:	ecdb                	move.d r13,[r12]
    2eba:	54e1 6aaa           	move.d [sp+84],r10
    2ebe:	04a2                	addq 4,r10
    2ec0:	54e1 eaab           	move.d r10,[sp+84]
    2ec4:	ffed 76e9           	ba 183e <__vfprintf_r+0xda>
    2ec8:	42da                	move.b [r2],r13
    2eca:	54e1 6dda           	move.d [sp+84],r13
    2ece:	6dca                	move.d [r13],r12
    2ed0:	3d75                	smi r13
    2ed2:	add5                	neg.d r13,r13
    2ed4:	40e1 eccb           	move.d r12,[sp+64]
    2ed8:	44e1 eddb           	move.d r13,[sp+68]
    2edc:	54e1 6aaa           	move.d [sp+84],r10
    2ee0:	04a2                	addq 4,r10
    2ee2:	54e1 eaab           	move.d r10,[sp+84]
    2ee6:	ffed eef1           	ba 20d8 <__vfprintf_r+0x974>
    2eea:	0f05                	nop 
    2eec:	6f4e f0ab 0000      	move.d abf0 <__global_impure_ptr+0x6>,r4
    2ef2:	ffed 5ef3           	ba 2254 <__vfprintf_r+0xaf0>
    2ef6:	0f05                	nop 
    2ef8:	63a6                	move.d r3,r10
    2efa:	61b6                	move.d r1,r11
    2efc:	6ec6                	move.d sp,r12
    2efe:	0fcc ba00           	addu.b 0xba,r12
    2f02:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2f08:	6aa6                	test.d r10
    2f0a:	ff2d 46ef           	bne 1e54 <__vfprintf_r+0x6f0>
    2f0e:	6e96                	move.d sp,r9
    2f10:	5fed 9800 666a      	move.d [sp+152],r6
    2f16:	1f9c 5601           	addu.w 0x156,r9
    2f1a:	ffed dcfe           	ba 2dfa <__vfprintf_r+0x1696>
    2f1e:	0f05                	nop 
    2f20:	63a6                	move.d r3,r10
    2f22:	61b6                	move.d r1,r11
    2f24:	6ec6                	move.d sp,r12
    2f26:	0fcc ba00           	addu.b 0xba,r12
    2f2a:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2f30:	6aa6                	test.d r10
    2f32:	ff2d 1eef           	bne 1e54 <__vfprintf_r+0x6f0>
    2f36:	6e96                	move.d sp,r9
    2f38:	1f9c 5601           	addu.w 0x156,r9
    2f3c:	5fed be00 600a      	move.d [sp+190],r0
    2f42:	05e0                	ba 2e48 <__vfprintf_r+0x16e4>
    2f44:	9062                	subq 16,r6
    2f46:	4f5f 2000           	or.b 0x20,r5
    2f4a:	01b1 4dda           	move.b [r11+1],r13
    2f4e:	ffed 66e9           	ba 18b8 <__vfprintf_r+0x154>
    2f52:	0122                	addq 1,r2
    2f54:	63a6                	move.d r3,r10
    2f56:	61b6                	move.d r1,r11
    2f58:	6ec6                	move.d sp,r12
    2f5a:	0fcc ba00           	addu.b 0xba,r12
    2f5e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2f64:	6aa6                	test.d r10
    2f66:	ff2d eaee           	bne 1e54 <__vfprintf_r+0x6f0>
    2f6a:	6e96                	move.d sp,r9
    2f6c:	1f9c 5601           	addu.w 0x156,r9
    2f70:	ffed 4cf5           	ba 24c0 <__vfprintf_r+0xd5c>
    2f74:	0f05                	nop 
    2f76:	3ce1 6cca           	move.d [sp+60],r12
    2f7a:	a4c6                	sub.d r4,r12
    2f7c:	50e1 eccb           	move.d r12,[sp+80]
    2f80:	ffed a2ea           	ba 1a26 <__vfprintf_r+0x2c2>
    2f84:	0f05                	nop 
    2f86:	63a6                	move.d r3,r10
    2f88:	61b6                	move.d r1,r11
    2f8a:	6ec6                	move.d sp,r12
    2f8c:	0fcc ba00           	addu.b 0xba,r12
    2f90:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2f96:	6aa6                	test.d r10
    2f98:	ff2d b8ee           	bne 1e54 <__vfprintf_r+0x6f0>
    2f9c:	6e96                	move.d sp,r9
    2f9e:	1f9c 5601           	addu.w 0x156,r9
    2fa2:	5fed be00 600a      	move.d [sp+190],r0
    2fa8:	e94b                	move.d r4,[r9]
    2faa:	6ce1 6aaa           	move.d [sp+108],r10
    2fae:	0491 eaab           	move.d r10,[r9+4]
    2fb2:	5fed c200 2daa      	add.d [sp+194],r10,r13
    2fb8:	ffed 72f3           	ba 232e <__vfprintf_r+0xbca>
    2fbc:	0f05                	nop 
    2fbe:	34e1 e99b           	move.d r9,[sp+52]
    2fc2:	3fbd 1c6a 0000      	jsr 6a1c <_strlen>
    2fc8:	50e1 eaab           	move.d r10,[sp+80]
    2fcc:	48e1 eaab           	move.d r10,[sp+72]
    2fd0:	34e1 699a           	move.d [sp+52],r9
    2fd4:	6aa6                	test.d r10
    2fd6:	ffad baf1           	bge 2194 <__vfprintf_r+0xa30>
    2fda:	0f05                	nop 
    2fdc:	48e1 708a           	clear.d [sp+72]
    2fe0:	ffed b0f1           	ba 2194 <__vfprintf_r+0xa30>
    2fe4:	0f05                	nop 
    2fe6:	ffed 38f8           	ba 2822 <__vfprintf_r+0x10be>
    2fea:	7786                	clear.d r7
    2fec:	63a6                	move.d r3,r10
    2fee:	61b6                	move.d r1,r11
    2ff0:	6ec6                	move.d sp,r12
    2ff2:	0fcc ba00           	addu.b 0xba,r12
    2ff6:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    2ffc:	6aa6                	test.d r10
    2ffe:	ff2d 52ee           	bne 1e54 <__vfprintf_r+0x6f0>
    3002:	6e96                	move.d sp,r9
    3004:	1f9c 5601           	addu.w 0x156,r9
    3008:	ffed 0ef8           	ba 281a <__vfprintf_r+0x10b6>
    300c:	0f05                	nop 
    300e:	6fde 3eac 0000      	move.d ac3e <_zeroes.4007>,r13
    3014:	e9db                	move.d r13,[r9]
    3016:	0491 e66b           	move.d r6,[r9+4]
    301a:	5fed c200 2d6a      	add.d [sp+194],r6,r13
    3020:	5fed c200 eddb      	move.d r13,[sp+194]
    3026:	0102                	addq 1,r0
    3028:	5fed be00 e00b      	move.d r0,[sp+190]
    302e:	c702                	cmpq 7,r0
    3030:	55c0                	bgt 2f86 <__vfprintf_r+0x1822>
    3032:	0892                	addq 8,r9
    3034:	75e0                	ba 2faa <__vfprintf_r+0x1846>
    3036:	e94b                	move.d r4,[r9]
    3038:	63a6                	move.d r3,r10
    303a:	61b6                	move.d r1,r11
    303c:	6ec6                	move.d sp,r12
    303e:	0fcc ba00           	addu.b 0xba,r12
    3042:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    3048:	6aa6                	test.d r10
    304a:	ff2d 06ee           	bne 1e54 <__vfprintf_r+0x6f0>
    304e:	6e96                	move.d sp,r9
    3050:	5fed 9800 6dda      	move.d [sp+152],r13
    3056:	1f9c 5601           	addu.w 0x156,r9
    305a:	ffed 7ef9           	ba 29dc <__vfprintf_r+0x1278>
    305e:	a466                	sub.d r4,r6
    3060:	cf8d 0600           	bound.b 0x6,r8
    3064:	50e1 e88b           	move.d r8,[sp+80]
    3068:	48e1 e88b           	move.d r8,[sp+72]
    306c:	ffbd fe02           	blt 336e <__vfprintf_r+0x1c0a>
    3070:	0f05                	nop 
    3072:	54e1 e77b           	move.d r7,[sp+84]
    3076:	60e1 708a           	clear.d [sp+96]
    307a:	70e1 708a           	clear.d [sp+112]
    307e:	6f4e 24ac 0000      	move.d ac24 <__global_impure_ptr+0x3a>,r4
    3084:	ffed c8e9           	ba 1a50 <__vfprintf_r+0x2ec>
    3088:	7006                	clear.b r0
    308a:	63a6                	move.d r3,r10
    308c:	61b6                	move.d r1,r11
    308e:	6ec6                	move.d sp,r12
    3090:	0fcc ba00           	addu.b 0xba,r12
    3094:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    309a:	6aa6                	test.d r10
    309c:	ff2d b4ed           	bne 1e54 <__vfprintf_r+0x6f0>
    30a0:	6e96                	move.d sp,r9
    30a2:	6ce1 6dda           	move.d [sp+108],r13
    30a6:	5fed 9800 adda      	sub.d [sp+152],r13
    30ac:	1f9c 5601           	addu.w 0x156,r9
    30b0:	ffed 66f9           	ba 2a1a <__vfprintf_r+0x12b6>
    30b4:	0f05                	nop 
    30b6:	ffed 68f9           	ba 2a22 <__vfprintf_r+0x12be>
    30ba:	7086                	clear.d r0
    30bc:	4fce 2d00           	move.b 0x2d,r12
    30c0:	5fed 9500 cccb      	move.b r12,[sp+149]
    30c6:	ffed 7af1           	ba 2244 <__vfprintf_r+0xae0>
    30ca:	4c06                	move.b r12,r0
    30cc:	6f4e fcab 0000      	move.d abfc <__global_impure_ptr+0x12>,r4
    30d2:	ffed b4fd           	ba 2e8a <__vfprintf_r+0x1726>
    30d6:	0f05                	nop 
    30d8:	5fed 9800 6dda      	move.d [sp+152],r13
    30de:	fdd2                	cmpq -3,r13
    30e0:	08b0                	blt 30ea <__vfprintf_r+0x1986>
    30e2:	6dc6                	move.d r13,r12
    30e4:	ed86                	cmp.d r13,r8
    30e6:	80a0                	bge 3168 <__vfprintf_r+0x1a04>
    30e8:	0f05                	nop 
    30ea:	8262                	subq 2,r6
    30ec:	6c86                	move.d r12,r8
    30ee:	8182                	subq 1,r8
    30f0:	5fed 9800 e88b      	move.d r8,[sp+152]
    30f6:	5fed a400 c66b      	move.b r6,[sp+164]
    30fc:	ff7d c402           	bmi 33c4 <__vfprintf_r+0x1c60>
    3100:	0f05                	nop 
    3102:	4fce 2b00           	move.b 0x2b,r12
    3106:	5fed a500 cccb      	move.b r12,[sp+165]
    310c:	c982                	cmpq 9,r8
    310e:	ffcd ec01           	bgt 32fe <__vfprintf_r+0x1b9a>
    3112:	6ed6                	move.d sp,r13
    3114:	4fbe 3000           	move.b 0x30,r11
    3118:	5fed a600 cbbb      	move.b r11,[sp+166]
    311e:	0b86                	add.b r11,r8
    3120:	5fed a700 c88b      	move.b r8,[sp+167]
    3126:	0fdc a400           	addu.b 0xa4,r13
    312a:	6dc6                	move.d r13,r12
    312c:	04c2                	addq 4,r12
    312e:	adc6                	sub.d r13,r12
    3130:	5fed 8000 eccb      	move.d r12,[sp+128]
    3136:	6ce1 2dca           	add.d [sp+108],r12,r13
    313a:	50e1 eddb           	move.d r13,[sp+80]
    313e:	6ce1 6aaa           	move.d [sp+108],r10
    3142:	c1a2                	cmpq 1,r10
    3144:	ffdd 4e02           	ble 3396 <__vfprintf_r+0x1c32>
    3148:	8053                	btstq 0,r5
    314a:	50e1 6dda           	move.d [sp+80],r13
    314e:	01d2                	addq 1,r13
    3150:	50e1 eddb           	move.d r13,[sp+80]
    3154:	48e1 eddb           	move.d r13,[sp+72]
    3158:	6dd6                	test.d r13
    315a:	36b0                	blt 3192 <__vfprintf_r+0x1a2e>
    315c:	0f05                	nop 
    315e:	70e1 708a           	clear.d [sp+112]
    3162:	ffed 98fb           	ba 2cfe <__vfprintf_r+0x159a>
    3166:	0f05                	nop 
    3168:	6ce1 edda           	cmp.d [sp+108],r13
    316c:	ffbd 4601           	blt 32b6 <__vfprintf_r+0x1b52>
    3170:	6dd6                	test.d r13
    3172:	8053                	btstq 0,r5
    3174:	ffbd 5e01           	blt 32d6 <__vfprintf_r+0x1b72>
    3178:	6db6                	move.d r13,r11
    317a:	48e1 eddb           	move.d r13,[sp+72]
    317e:	ffbd b202           	blt 3434 <__vfprintf_r+0x1cd0>
    3182:	0f05                	nop 
    3184:	50e1 eccb           	move.d r12,[sp+80]
    3188:	4f6c 6700           	movu.b 0x67,r6
    318c:	ffed 6afb           	ba 2cfa <__vfprintf_r+0x1596>
    3190:	0f05                	nop 
    3192:	48e1 708a           	clear.d [sp+72]
    3196:	70e1 708a           	clear.d [sp+112]
    319a:	ffed 60fb           	ba 2cfe <__vfprintf_r+0x159a>
    319e:	0f05                	nop 
    31a0:	4ce1 6bba           	move.d [sp+76],r11
    31a4:	54e1 6aaa           	move.d [sp+84],r10
    31a8:	6aaa                	move.d [r10],r10
    31aa:	eabb                	move.d r11,[r10]
    31ac:	54e1 6cca           	move.d [sp+84],r12
    31b0:	04c2                	addq 4,r12
    31b2:	54e1 eccb           	move.d r12,[sp+84]
    31b6:	ffed 84e6           	ba 183e <__vfprintf_r+0xda>
    31ba:	42da                	move.b [r2],r13
    31bc:	4fde 2d00           	move.b 0x2d,r13
    31c0:	5fed 9500 cddb      	move.b r13,[sp+149]
    31c6:	5ce1 655a           	move.d [sp+92],r5
    31ca:	60e1 708a           	clear.d [sp+96]
    31ce:	ffed 74e8           	ba 1a46 <__vfprintf_r+0x2e2>
    31d2:	4d06                	move.b r13,r0
    31d4:	ee8b                	move.d r8,[sp]
    31d6:	6ed6                	move.d sp,r13
    31d8:	0fdc 9800           	addu.b 0x98,r13
    31dc:	04e1 eddb           	move.d r13,[sp+4]
    31e0:	04d2                	addq 4,r13
    31e2:	08e1 eddb           	move.d r13,[sp+8]
    31e6:	04d2                	addq 4,r13
    31e8:	0ce1 eddb           	move.d r13,[sp+12]
    31ec:	63a6                	move.d r3,r10
    31ee:	74e1 6bba           	move.d [sp+116],r11
    31f2:	48e1 6cca           	move.d [sp+72],r12
    31f6:	43d2                	moveq 3,r13
    31f8:	34e1 e99b           	move.d r9,[sp+52]
    31fc:	3fbd d437 0000      	jsr 37d4 <__dtoa_r>
    3202:	6a46                	move.d r10,r4
    3204:	6a06                	move.d r10,r0
    3206:	2806                	add.d r8,r0
    3208:	6876                	move.d r8,r7
    320a:	34e1 699a           	move.d [sp+52],r9
    320e:	4fde 3000           	move.b 0x30,r13
    3212:	c4da                	cmp.b [r4],r13
    3214:	0e30                	beq 3224 <__vfprintf_r+0x1ac0>
    3216:	7c86                	clear.d r12
    3218:	5fed 9800 6dda      	move.d [sp+152],r13
    321e:	ffed 54fa           	ba 2c76 <__vfprintf_r+0x1512>
    3222:	2d06                	add.d r13,r0
    3224:	74e1 6aaa           	move.d [sp+116],r10
    3228:	48e1 6bba           	move.d [sp+72],r11
    322c:	7d86                	clear.d r13
    322e:	34e1 e99b           	move.d r9,[sp+52]
    3232:	3fbd 789d 0000      	jsr 9d78 <___nedf2>
    3238:	34e1 699a           	move.d [sp+52],r9
    323c:	6aa6                	test.d r10
    323e:	d930                	beq 3218 <__vfprintf_r+0x1ab4>
    3240:	41d2                	moveq 1,r13
    3242:	a7d6                	sub.d r7,r13
    3244:	5fed 9800 eddb      	move.d r13,[sp+152]
    324a:	ffed 28fa           	ba 2c76 <__vfprintf_r+0x1512>
    324e:	2d06                	add.d r13,r0
    3250:	6886                	test.d r8
    3252:	ff2d 74f9           	bne 2bca <__vfprintf_r+0x1466>
    3256:	65b6                	move.d r5,r11
    3258:	ffed 6ef9           	ba 2bca <__vfprintf_r+0x1466>
    325c:	4182                	moveq 1,r8
    325e:	ffed 5ae6           	ba 18bc <__vfprintf_r+0x158>
    3262:	6b26                	move.d r11,r2
    3264:	63a6                	move.d r3,r10
    3266:	61b6                	move.d r1,r11
    3268:	6ec6                	move.d sp,r12
    326a:	0fcc ba00           	addu.b 0xba,r12
    326e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    3274:	6aa6                	test.d r10
    3276:	ff2d daeb           	bne 1e54 <__vfprintf_r+0x6f0>
    327a:	6e96                	move.d sp,r9
    327c:	5fed 9800 666a      	move.d [sp+152],r6
    3282:	1f9c 5601           	addu.w 0x156,r9
    3286:	5fed be00 600a      	move.d [sp+190],r0
    328c:	ffed b0fb           	ba 2e40 <__vfprintf_r+0x16dc>
    3290:	a665                	neg.d r6,r6
    3292:	ffed 8af9           	ba 2c20 <__vfprintf_r+0x14bc>
    3296:	0172                	addq 1,r7
    3298:	2fae 0000 0080      	add.d 80000000 <__end+0x7fff02f0>,r10
    329e:	48e1 eaab           	move.d r10,[sp+72]
    32a2:	4fbe 2d00           	move.b 0x2d,r11
    32a6:	60e1 cbbb           	move.b r11,[sp+96]
    32aa:	ffed 4af9           	ba 2bf8 <__vfprintf_r+0x1494>
    32ae:	0f05                	nop 
    32b0:	ffed 14f9           	ba 2bc8 <__vfprintf_r+0x1464>
    32b4:	4682                	moveq 6,r8
    32b6:	ffdd 1a01           	ble 33d4 <__vfprintf_r+0x1c70>
    32ba:	4162                	moveq 1,r6
    32bc:	6ce1 266a           	add.d [sp+108],r6
    32c0:	50e1 e66b           	move.d r6,[sp+80]
    32c4:	48e1 e66b           	move.d r6,[sp+72]
    32c8:	1a70                	bmi 32e4 <__vfprintf_r+0x1b80>
    32ca:	0f05                	nop 
    32cc:	4f6c 6700           	movu.b 0x67,r6
    32d0:	ffed 26fa           	ba 2cfa <__vfprintf_r+0x1596>
    32d4:	0f05                	nop 
    32d6:	01b2                	addq 1,r11
    32d8:	50e1 ebbb           	move.d r11,[sp+80]
    32dc:	48e1 ebbb           	move.d r11,[sp+72]
    32e0:	eb60                	bpl 32cc <__vfprintf_r+0x1b68>
    32e2:	0f05                	nop 
    32e4:	48e1 708a           	clear.d [sp+72]
    32e8:	4f6c 6700           	movu.b 0x67,r6
    32ec:	ffed 0afa           	ba 2cfa <__vfprintf_r+0x1596>
    32f0:	0f05                	nop 
    32f2:	5fed a000 600a      	move.d [sp+160],r0
    32f8:	ffed bcf9           	ba 2cb8 <__vfprintf_r+0x1554>
    32fc:	a406                	sub.d r4,r0
    32fe:	4f0c b200           	movu.b 0xb2,r0
    3302:	2e06                	add.d sp,r0
    3304:	6f7e 48a2 0000      	move.d a248 <___Div>,r7
    330a:	8102                	subq 1,r0
    330c:	68a6                	move.d r8,r10
    330e:	4ab2                	moveq 10,r11
    3310:	34e1 e99b           	move.d r9,[sp+52]
    3314:	3fbd 94a4 0000      	jsr a494 <___Mod>
    331a:	30a2                	addq 48,r10
    331c:	c0ab                	move.b r10,[r0]
    331e:	68a6                	move.d r8,r10
    3320:	4ab2                	moveq 10,r11
    3322:	b7b9                	jsr r7
    3324:	34e1 699a           	move.d [sp+52],r9
    3328:	c9a2                	cmpq 9,r10
    332a:	dfc0                	bgt 330a <__vfprintf_r+0x1ba6>
    332c:	6a86                	move.d r10,r8
    332e:	4ab6                	move.b r10,r11
    3330:	30b2                	addq 48,r11
    3332:	ff01 cbbb           	move.b r11,[r0-1]
    3336:	4f7c b200           	movu.b 0xb2,r7
    333a:	2e76                	add.d sp,r7
    333c:	60d6                	move.d r0,r13
    333e:	81d2                	subq 1,r13
    3340:	ed76                	cmp.d r13,r7
    3342:	d680                	bls 341a <__vfprintf_r+0x1cb6>
    3344:	0f05                	nop 
    3346:	60c6                	move.d r0,r12
    3348:	6ed6                	move.d sp,r13
    334a:	0fdc a400           	addu.b 0xa4,r13
    334e:	6da6                	move.d r13,r10
    3350:	04e0                	ba 3356 <__vfprintf_r+0x1bf2>
    3352:	02a2                	addq 2,r10
    3354:	4cbe                	move.b [r12+],r11
    3356:	e7c6                	cmp.d r7,r12
    3358:	fb20                	bne 3354 <__vfprintf_r+0x1bf0>
    335a:	cabf                	move.b r11,[r10+]
    335c:	6dc6                	move.d r13,r12
    335e:	02c2                	addq 2,r12
    3360:	5fed 8800 6aaa      	move.d [sp+136],r10
    3366:	a0a6                	sub.d r0,r10
    3368:	ffed c2fd           	ba 312e <__vfprintf_r+0x19ca>
    336c:	2ac6                	add.d r10,r12
    336e:	48e1 708a           	clear.d [sp+72]
    3372:	ffed fcfc           	ba 3072 <__vfprintf_r+0x190e>
    3376:	0f05                	nop 
    3378:	0182                	addq 1,r8
    337a:	68a6                	move.d r8,r10
    337c:	2da6                	add.d r13,r10
    337e:	50e1 eaab           	move.d r10,[sp+80]
    3382:	48e1 eaab           	move.d r10,[sp+72]
    3386:	ff6d 70f9           	bpl 2cfa <__vfprintf_r+0x1596>
    338a:	0f05                	nop 
    338c:	48e1 708a           	clear.d [sp+72]
    3390:	ffed 66f9           	ba 2cfa <__vfprintf_r+0x1596>
    3394:	0f05                	nop 
    3396:	ffbd b0fd           	blt 314a <__vfprintf_r+0x19e6>
    339a:	0f05                	nop 
    339c:	ffed b4fd           	ba 3154 <__vfprintf_r+0x19f0>
    33a0:	0f05                	nop 
    33a2:	6886                	test.d r8
    33a4:	5a20                	bne 3400 <__vfprintf_r+0x1c9c>
    33a6:	8053                	btstq 0,r5
    33a8:	56b0                	blt 3400 <__vfprintf_r+0x1c9c>
    33aa:	41c2                	moveq 1,r12
    33ac:	48e1 eccb           	move.d r12,[sp+72]
    33b0:	50e1 eccb           	move.d r12,[sp+80]
    33b4:	ffed 42f9           	ba 2cfa <__vfprintf_r+0x1596>
    33b8:	0f05                	nop 
    33ba:	4ce1 e99b           	move.d r9,[sp+76]
    33be:	ffed 5eea           	ba 1e20 <__vfprintf_r+0x6bc>
    33c2:	0f05                	nop 
    33c4:	4fbe 2d00           	move.b 0x2d,r11
    33c8:	5fed a500 cbbb      	move.b r11,[sp+165]
    33ce:	ffed 3afd           	ba 310c <__vfprintf_r+0x19a8>
    33d2:	a885                	neg.d r8,r8
    33d4:	4f6e 0200           	move.b 0x2,r6
    33d8:	ffed e0fe           	ba 32bc <__vfprintf_r+0x1b58>
    33dc:	ad66                	sub.d r13,r6
    33de:	54e1 6aaa           	move.d [sp+84],r10
    33e2:	04a2                	addq 4,r10
    33e4:	54e1 6dda           	move.d [sp+84],r13
    33e8:	6d8a                	move.d [r13],r8
    33ea:	0121 4dda           	move.b [r2+1],r13
    33ee:	54e1 eaab           	move.d r10,[sp+84]
    33f2:	6886                	test.d r8
    33f4:	ffad c0e4           	bge 18b8 <__vfprintf_r+0x154>
    33f8:	6b26                	move.d r11,r2
    33fa:	ffed bae4           	ba 18b8 <__vfprintf_r+0x154>
    33fe:	7f82                	moveq -1,r8
    3400:	0282                	addq 2,r8
    3402:	50e1 e88b           	move.d r8,[sp+80]
    3406:	48e1 e88b           	move.d r8,[sp+72]
    340a:	ff6d ecf8           	bpl 2cfa <__vfprintf_r+0x1596>
    340e:	0f05                	nop 
    3410:	7be0                	ba 338c <__vfprintf_r+0x1c28>
    3412:	0f05                	nop 
    3414:	ffed 9ef8           	ba 2cb6 <__vfprintf_r+0x1552>
    3418:	6d06                	move.d r13,r0
    341a:	6ed6                	move.d sp,r13
    341c:	0fdc a400           	addu.b 0xa4,r13
    3420:	6dc6                	move.d r13,r12
    3422:	ffed 08fd           	ba 312e <__vfprintf_r+0x19ca>
    3426:	02c2                	addq 2,r12
    3428:	5fed 9800 6cca      	move.d [sp+152],r12
    342e:	ffed bcfc           	ba 30ee <__vfprintf_r+0x198a>
    3432:	6c86                	move.d r12,r8
    3434:	48e1 708a           	clear.d [sp+72]
    3438:	ffed 48fd           	ba 3184 <__vfprintf_r+0x1a20>
    343c:	0f05                	nop 

0000343e <_vfprintf>:
    343e:	84e2                	subq 4,sp
    3440:	7eba                	move srp,[sp]
    3442:	84e2                	subq 4,sp
    3444:	ee0b                	move.d r0,[sp]
    3446:	6a06                	move.d r10,r0
    3448:	6b96                	move.d r11,r9
    344a:	6cd6                	move.d r12,r13
    344c:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    3452:	6aaa                	move.d [r10],r10
    3454:	60b6                	move.d r0,r11
    3456:	69c6                	move.d r9,r12
    3458:	3fbd 6417 0000      	jsr 1764 <__vfprintf_r>
    345e:	6e0e                	pop r0
    3460:	3e0d                	jump [sp+]
	...

00003464 <___swsetup_r>:
    3464:	84e2                	subq 4,sp
    3466:	7eba                	move srp,[sp]
    3468:	88e2                	subq 8,sp
    346a:	fe1b                	movem r1,[sp]
    346c:	6a16                	move.d r10,r1
    346e:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    3474:	6aaa                	move.d [r10],r10
    3476:	0a30                	beq 3482 <___swsetup_r+0x1e>
    3478:	6b06                	move.d r11,r0
    347a:	35a1 a00b           	test.d [r10+53]
    347e:	9830                	beq 3518 <___swsetup_r+0xb4>
    3480:	0f05                	nop 
    3482:	0c01 599a           	move.w [r0+12],r9
    3486:	8393                	btstq 3,r9
    3488:	2aa0                	bge 34b4 <___swsetup_r+0x50>
    348a:	8493                	btstq 4,r9
    348c:	1001 6dda           	move.d [r0+16],r13
    3490:	3a30                	beq 34cc <___swsetup_r+0x68>
    3492:	59c6                	move.w r9,r12
    3494:	8093                	btstq 0,r9
    3496:	56a0                	bge 34ee <___swsetup_r+0x8a>
    3498:	8193                	btstq 1,r9
    349a:	0801 708a           	clear.d [r0+8]
    349e:	1401 699a           	move.d [r0+20],r9
    34a2:	a995                	neg.d r9,r9
    34a4:	1801 e99b           	move.d r9,[r0+24]
    34a8:	6dd6                	test.d r13
    34aa:	5430                	beq 3500 <___swsetup_r+0x9c>
    34ac:	0f05                	nop 
    34ae:	7a86                	clear.d r10
    34b0:	be1f                	movem [sp+],r1
    34b2:	3e0d                	jump [sp+]
    34b4:	a6a0                	bge 355c <___swsetup_r+0xf8>
    34b6:	8293                	btstq 2,r9
    34b8:	70b0                	blt 352a <___swsetup_r+0xc6>
    34ba:	0f05                	nop 
    34bc:	1001 6dda           	move.d [r0+16],r13
    34c0:	4893                	orq 8,r9
    34c2:	0c01 d99b           	move.w r9,[r0+12]
    34c6:	6dd6                	test.d r13
    34c8:	cb20                	bne 3494 <___swsetup_r+0x30>
    34ca:	59c6                	move.w r9,r12
    34cc:	1fcf 8002           	and.w 0x280,r12
    34d0:	dfce 0002           	cmp.w 0x200,r12
    34d4:	bf30                	beq 3494 <___swsetup_r+0x30>
    34d6:	0f05                	nop 
    34d8:	61a6                	move.d r1,r10
    34da:	60b6                	move.d r0,r11
    34dc:	3fbd 3c53 0000      	jsr 533c <___smakebuf_r>
    34e2:	0c01 599a           	move.w [r0+12],r9
    34e6:	1001 6dda           	move.d [r0+16],r13
    34ea:	a9e0                	ba 3494 <___swsetup_r+0x30>
    34ec:	0f05                	nop 
    34ee:	32b0                	blt 3522 <___swsetup_r+0xbe>
    34f0:	7986                	clear.d r9
    34f2:	1401 699a           	move.d [r0+20],r9
    34f6:	0801 e99b           	move.d r9,[r0+8]
    34fa:	6dd6                	test.d r13
    34fc:	b120                	bne 34ae <___swsetup_r+0x4a>
    34fe:	0f05                	nop 
    3500:	0c01 599a           	move.w [r0+12],r9
    3504:	8793                	btstq 7,r9
    3506:	a9a0                	bge 34b0 <___swsetup_r+0x4c>
    3508:	7a86                	clear.d r10
    350a:	5f9f 4000           	or.w 0x40,r9
    350e:	0c01 d99b           	move.w r9,[r0+12]
    3512:	7fa2                	moveq -1,r10
    3514:	be1f                	movem [sp+],r1
    3516:	3e0d                	jump [sp+]
    3518:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    351e:	63e0                	ba 3482 <___swsetup_r+0x1e>
    3520:	0f05                	nop 
    3522:	0801 e99b           	move.d r9,[r0+8]
    3526:	d3e0                	ba 34fa <___swsetup_r+0x96>
    3528:	0f05                	nop 
    352a:	3001 6bba           	move.d [r0+48],r11
    352e:	1c30                	beq 354c <___swsetup_r+0xe8>
    3530:	0f05                	nop 
    3532:	60d6                	move.d r0,r13
    3534:	0fdc 4000           	addu.b 0x40,r13
    3538:	edb6                	cmp.d r13,r11
    353a:	0c30                	beq 3548 <___swsetup_r+0xe4>
    353c:	61a6                	move.d r1,r10
    353e:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    3544:	0c01 599a           	move.w [r0+12],r9
    3548:	3001 708a           	clear.d [r0+48]
    354c:	1f9f dbff           	and.w 0xffdb,r9
    3550:	0401 708a           	clear.d [r0+4]
    3554:	1001 6dda           	move.d [r0+16],r13
    3558:	67e0                	ba 34c0 <___swsetup_r+0x5c>
    355a:	e0db                	move.d r13,[r0]
    355c:	49d2                	moveq 9,r13
    355e:	e1db                	move.d r13,[r1]
    3560:	5f9f 4000           	or.w 0x40,r9
    3564:	0c01 d99b           	move.w r9,[r0+12]
    3568:	7fa2                	moveq -1,r10
    356a:	be1f                	movem [sp+],r1
    356c:	3e0d                	jump [sp+]
	...

00003570 <___call_exitprocs>:
    3570:	84e2                	subq 4,sp
    3572:	7eba                	move srp,[sp]
    3574:	a8e2                	subq 40,sp
    3576:	fe8b                	movem r8,[sp]
    3578:	24e1 eaab           	move.d r10,[sp+36]
    357c:	6b26                	move.d r11,r2
    357e:	6f8e eaab 0000      	move.d abea <__global_impure_ptr>,r8
    3584:	688a                	move.d [r8],r8
    3586:	1f8c 4501           	addu.w 0x145,r8
    358a:	4152                	moveq 1,r5
    358c:	6f9e eaab 0000      	move.d abea <__global_impure_ptr>,r9
    3592:	699a                	move.d [r9],r9
    3594:	5f9d 4501 666a      	move.d [r9+325],r6
    359a:	6846                	move.d r8,r4
    359c:	6666                	test.d r6
    359e:	8e30                	beq 362e <___call_exitprocs+0xbe>
    35a0:	0f05                	nop 
    35a2:	0461 600a           	move.d [r6+4],r0
    35a6:	8102                	subq 1,r0
    35a8:	7a70                	bmi 3624 <___call_exitprocs+0xb4>
    35aa:	0f05                	nop 
    35ac:	6636                	move.d r6,r3
    35ae:	0f3c 8800           	addu.b 0x88,r3
    35b2:	6316                	move.d r3,r1
    35b4:	14e0                	ba 35ca <___call_exitprocs+0x5a>
    35b6:	2105                	addi r0.d,r1
    35b8:	5f1d 8000 e22a      	cmp.d [r1+128],r2
    35be:	1230                	beq 35d2 <___call_exitprocs+0x62>
    35c0:	a3c6                	sub.d r3,r12
    35c2:	8102                	subq 1,r0
    35c4:	ff02                	cmpq -1,r0
    35c6:	5c30                	beq 3624 <___call_exitprocs+0xb4>
    35c8:	8412                	subq 4,r1
    35ca:	6226                	test.d r2
    35cc:	eb20                	bne 35b8 <___call_exitprocs+0x48>
    35ce:	61c6                	move.d r1,r12
    35d0:	a3c6                	sub.d r3,r12
    35d2:	26c6                	add.d r6,r12
    35d4:	08c1 6dda           	move.d [r12+8],r13
    35d8:	0461 6bba           	move.d [r6+4],r11
    35dc:	81b2                	subq 1,r11
    35de:	e0b6                	cmp.d r0,r11
    35e0:	5830                	beq 363a <___call_exitprocs+0xca>
    35e2:	0f05                	nop 
    35e4:	08c1 708a           	clear.d [r12+8]
    35e8:	6dd6                	test.d r13
    35ea:	d730                	beq 35c2 <___call_exitprocs+0x52>
    35ec:	65b6                	move.d r5,r11
    35ee:	0461 677a           	move.d [r6+4],r7
    35f2:	e0b4                	lsl.d r0,r11
    35f4:	5f6d 8801 2abb      	and.d [r6+392],r11,r10
    35fa:	3830                	beq 3634 <___call_exitprocs+0xc4>
    35fc:	0f05                	nop 
    35fe:	5f6d 8c01 2bbb      	and.d [r6+396],r11
    3604:	3c20                	bne 3642 <___call_exitprocs+0xd2>
    3606:	0f05                	nop 
    3608:	24e1 6aaa           	move.d [sp+36],r10
    360c:	61ba                	move.d [r1],r11
    360e:	bdb9                	jsr r13
    3610:	0461 e77a           	cmp.d [r6+4],r7
    3614:	7720                	bne 358c <___call_exitprocs+0x1c>
    3616:	0f05                	nop 
    3618:	e46a                	cmp.d [r4],r6
    361a:	7120                	bne 358c <___call_exitprocs+0x1c>
    361c:	8102                	subq 1,r0
    361e:	ff02                	cmpq -1,r0
    3620:	a920                	bne 35ca <___call_exitprocs+0x5a>
    3622:	8412                	subq 4,r1
    3624:	6f9e 0000 0000      	move.d 0 <_.xy-0x4>,r9
    362a:	1e20                	bne 364a <___call_exitprocs+0xda>
    362c:	0f05                	nop 
    362e:	be8f                	movem [sp+],r8
    3630:	04e2                	addq 4,sp
    3632:	3e0d                	jump [sp+]
    3634:	bdb9                	jsr r13
    3636:	d9e0                	ba 3610 <___call_exitprocs+0xa0>
    3638:	0f05                	nop 
    363a:	0461 e00b           	move.d r0,[r6+4]
    363e:	a9e0                	ba 35e8 <___call_exitprocs+0x78>
    3640:	0f05                	nop 
    3642:	61aa                	move.d [r1],r10
    3644:	bdb9                	jsr r13
    3646:	c9e0                	ba 3610 <___call_exitprocs+0xa0>
    3648:	0f05                	nop 
    364a:	0461 a00b           	test.d [r6+4]
    364e:	1020                	bne 3660 <___call_exitprocs+0xf0>
    3650:	0f05                	nop 
    3652:	66da                	move.d [r6],r13
    3654:	1230                	beq 3668 <___call_exitprocs+0xf8>
    3656:	66a6                	move.d r6,r10
    3658:	e4db                	move.d r13,[r4]
    365a:	b9b9                	jsr r9
    365c:	3fe0                	ba 359c <___call_exitprocs+0x2c>
    365e:	646a                	move.d [r4],r6
    3660:	66da                	move.d [r6],r13
    3662:	6646                	move.d r6,r4
    3664:	37e0                	ba 359c <___call_exitprocs+0x2c>
    3666:	6d66                	move.d r13,r6
    3668:	f9e0                	ba 3662 <___call_exitprocs+0xf2>
    366a:	7d86                	clear.d r13

0000366c <_quorem>:
    366c:	84e2                	subq 4,sp
    366e:	7eba                	move srp,[sp]
    3670:	b4e2                	subq 52,sp
    3672:	fe8b                	movem r8,[sp]
    3674:	30e1 ebbb           	move.d r11,[sp+48]
    3678:	10b1 699a           	move.d [r11+16],r9
    367c:	10a1 e99a           	cmp.d [r10+16],r9
    3680:	ffcd 4801           	bgt 37cc <_quorem+0x160>
    3684:	6a76                	move.d r10,r7
    3686:	6b06                	move.d r11,r0
    3688:	1402                	addq 20,r0
    368a:	6916                	move.d r9,r1
    368c:	8112                	subq 1,r1
    368e:	0492                	addq 4,r9
    3690:	6b66                	move.d r11,r6
    3692:	2695                	addi r9.d,r6
    3694:	6a86                	move.d r10,r8
    3696:	1482                	addq 20,r8
    3698:	6b95 6bba           	move.d [r11+r9.d],r11
    369c:	6a95 6aaa           	move.d [r10+r9.d],r10
    36a0:	01b2                	addq 1,r11
    36a2:	3fbd 04a1 0000      	jsr a104 <___Udiv>
    36a8:	6aa6                	test.d r10
    36aa:	a630                	beq 3752 <_quorem+0xe6>
    36ac:	6a26                	move.d r10,r2
    36ae:	6046                	move.d r0,r4
    36b0:	6836                	move.d r8,r3
    36b2:	7c86                	clear.d r12
    36b4:	7d86                	clear.d r13
    36b6:	649e                	move.d [r4+],r9
    36b8:	59a4                	movu.w r9,r10
    36ba:	62b6                	move.d r2,r11
    36bc:	2ce1 e99b           	move.d r9,[sp+44]
    36c0:	24e1 eccb           	move.d r12,[sp+36]
    36c4:	28e1 eddb           	move.d r13,[sp+40]
    36c8:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    36ce:	24e1 6cca           	move.d [sp+36],r12
    36d2:	6c56                	move.d r12,r5
    36d4:	2a56                	add.d r10,r5
    36d6:	65c6                	move.d r5,r12
    36d8:	f0c3                	lsrq 16,r12
    36da:	2ce1 699a           	move.d [sp+44],r9
    36de:	69a6                	move.d r9,r10
    36e0:	f0a3                	lsrq 16,r10
    36e2:	62b6                	move.d r2,r11
    36e4:	24e1 eccb           	move.d r12,[sp+36]
    36e8:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    36ee:	24e1 6cca           	move.d [sp+36],r12
    36f2:	2ca6                	add.d r12,r10
    36f4:	6ac6                	move.d r10,r12
    36f6:	f0c3                	lsrq 16,r12
    36f8:	63ba                	move.d [r3],r11
    36fa:	28e1 6dda           	move.d [sp+40],r13
    36fe:	6d96                	move.d r13,r9
    3700:	1b94                	addu.w r11,r9
    3702:	9594                	subu.w r5,r9
    3704:	f0b3                	lsrq 16,r11
    3706:	9ab4                	subu.w r10,r11
    3708:	69d6                	move.d r9,r13
    370a:	b0d3                	asrq 16,r13
    370c:	2db6                	add.d r13,r11
    370e:	6bd6                	move.d r11,r13
    3710:	b0d3                	asrq 16,r13
    3712:	d0b3                	lslq 16,r11
    3714:	5994                	movu.w r9,r9
    3716:	69b7                	or.d r9,r11
    3718:	e466                	cmp.d r4,r6
    371a:	9b00                	bcc 36b6 <_quorem+0x4a>
    371c:	e3bf                	move.d r11,[r3+]
    371e:	6196                	move.d r1,r9
    3720:	0592                	addq 5,r9
    3722:	6795 a00b           	test.d [r7+r9.d]
    3726:	2a20                	bne 3752 <_quorem+0xe6>
    3728:	67d6                	move.d r7,r13
    372a:	2d95                	addi r9.d,r13
    372c:	6d96                	move.d r13,r9
    372e:	8492                	subq 4,r9
    3730:	e986                	cmp.d r9,r8
    3732:	1a00                	bcc 374e <_quorem+0xe2>
    3734:	0f05                	nop 
    3736:	fcd1 a00b           	test.d [r13-4]
    373a:	0c30                	beq 3748 <_quorem+0xdc>
    373c:	8492                	subq 4,r9
    373e:	0ee0                	ba 374e <_quorem+0xe2>
    3740:	0f05                	nop 
    3742:	a90b                	test.d [r9]
    3744:	0820                	bne 374e <_quorem+0xe2>
    3746:	8492                	subq 4,r9
    3748:	e986                	cmp.d r9,r8
    374a:	f710                	bcs 3742 <_quorem+0xd6>
    374c:	8112                	subq 1,r1
    374e:	1071 e11b           	move.d r1,[r7+16]
    3752:	67a6                	move.d r7,r10
    3754:	30e1 6bba           	move.d [sp+48],r11
    3758:	3fbd 4063 0000      	jsr 6340 <___mcmp>
    375e:	6aa6                	test.d r10
    3760:	62b0                	blt 37c4 <_quorem+0x158>
    3762:	68c6                	move.d r8,r12
    3764:	0122                	addq 1,r2
    3766:	7a86                	clear.d r10
    3768:	60be                	move.d [r0+],r11
    376a:	6c9a                	move.d [r12],r9
    376c:	6ad6                	move.d r10,r13
    376e:	19d4                	addu.w r9,r13
    3770:	9bd4                	subu.w r11,r13
    3772:	f093                	lsrq 16,r9
    3774:	f0b3                	lsrq 16,r11
    3776:	ab96                	sub.d r11,r9
    3778:	6db6                	move.d r13,r11
    377a:	b0b3                	asrq 16,r11
    377c:	2b96                	add.d r11,r9
    377e:	69a6                	move.d r9,r10
    3780:	b0a3                	asrq 16,r10
    3782:	d093                	lslq 16,r9
    3784:	5dd4                	movu.w r13,r13
    3786:	6d97                	or.d r13,r9
    3788:	e066                	cmp.d r0,r6
    378a:	dd00                	bcc 3768 <_quorem+0xfc>
    378c:	ec9f                	move.d r9,[r12+]
    378e:	6196                	move.d r1,r9
    3790:	0592                	addq 5,r9
    3792:	6795 a00b           	test.d [r7+r9.d]
    3796:	2c20                	bne 37c4 <_quorem+0x158>
    3798:	67d6                	move.d r7,r13
    379a:	2d95                	addi r9.d,r13
    379c:	6d96                	move.d r13,r9
    379e:	8492                	subq 4,r9
    37a0:	e986                	cmp.d r9,r8
    37a2:	1c00                	bcc 37c0 <_quorem+0x154>
    37a4:	0f05                	nop 
    37a6:	fcd1 a00b           	test.d [r13-4]
    37aa:	0e30                	beq 37ba <_quorem+0x14e>
    37ac:	8492                	subq 4,r9
    37ae:	10e0                	ba 37c0 <_quorem+0x154>
    37b0:	0492                	addq 4,r9
    37b2:	a90b                	test.d [r9]
    37b4:	0a20                	bne 37c0 <_quorem+0x154>
    37b6:	0f05                	nop 
    37b8:	8492                	subq 4,r9
    37ba:	e986                	cmp.d r9,r8
    37bc:	f510                	bcs 37b2 <_quorem+0x146>
    37be:	8112                	subq 1,r1
    37c0:	1071 e11b           	move.d r1,[r7+16]
    37c4:	62a6                	move.d r2,r10
    37c6:	be8f                	movem [sp+],r8
    37c8:	10e2                	addq 16,sp
    37ca:	3e0d                	jump [sp+]
    37cc:	7a86                	clear.d r10
    37ce:	be8f                	movem [sp+],r8
    37d0:	10e2                	addq 16,sp
    37d2:	3e0d                	jump [sp+]

000037d4 <__dtoa_r>:
    37d4:	84e2                	subq 4,sp
    37d6:	7eba                	move srp,[sp]
    37d8:	8fec 9800           	subu.b 0x98,sp
    37dc:	fe8b                	movem r8,[sp]
    37de:	84e2                	subq 4,sp
    37e0:	38e1 eddb           	move.d r13,[sp+56]
    37e4:	5fed a800 600a      	move.d [sp+168],r0
    37ea:	5fed 8400 ebbb      	move.d r11,[sp+132]
    37f0:	5fed 8800 eccb      	move.d r12,[sp+136]
    37f6:	3da1 6bba           	move.d [r10+61],r11
    37fa:	1c30                	beq 3818 <__dtoa_r+0x44>
    37fc:	6a86                	move.d r10,r8
    37fe:	41a1 6dda           	move.d [r10+65],r13
    3802:	04b1 eddb           	move.d r13,[r11+4]
    3806:	4192                	moveq 1,r9
    3808:	ed94                	lsl.d r13,r9
    380a:	08b1 e99b           	move.d r9,[r11+8]
    380e:	3fbd 045e 0000      	jsr 5e04 <__Bfree>
    3814:	3d81 708a           	clear.d [r8+61]
    3818:	5fed 8800 633a      	move.d [sp+136],r3
    381e:	b0b0                	blt 38d0 <__dtoa_r+0xfc>
    3820:	4192                	moveq 1,r9
    3822:	708a                	clear.d [r0]
    3824:	6396                	move.d r3,r9
    3826:	2f9f 0000 f07f      	and.d 7ff00000 <__end+0x7fef02f0>,r9
    382c:	ef9e 0000 f07f      	cmp.d 7ff00000 <__end+0x7fef02f0>,r9
    3832:	5430                	beq 3888 <__dtoa_r+0xb4>
    3834:	7c86                	clear.d r12
    3836:	5fed 8400 644a      	move.d [sp+132],r4
    383c:	5fed 8800 622a      	move.d [sp+136],r2
    3842:	64a6                	move.d r4,r10
    3844:	62b6                	move.d r2,r11
    3846:	7d86                	clear.d r13
    3848:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    384e:	6aa6                	test.d r10
    3850:	9020                	bne 38e2 <__dtoa_r+0x10e>
    3852:	41c2                	moveq 1,r12
    3854:	5fed a400 699a      	move.d [sp+164],r9
    385a:	e9cb                	move.d r12,[r9]
    385c:	5fed ac00 a00b      	test.d [sp+172]
    3862:	ff3d 6402           	beq 3aca <__dtoa_r+0x2f6>
    3866:	0f05                	nop 
    3868:	6fce 2dac 0000      	move.d ac2d <__global_impure_ptr+0x43>,r12
    386e:	5fed ac00 699a      	move.d [sp+172],r9
    3874:	e9cb                	move.d r12,[r9]
    3876:	6f1e 2cac 0000      	move.d ac2c <__global_impure_ptr+0x42>,r1
    387c:	61a6                	move.d r1,r10
    387e:	04e2                	addq 4,sp
    3880:	be8f                	movem [sp+],r8
    3882:	0fec 7400           	addu.b 0x74,sp
    3886:	3e0d                	jump [sp+]
    3888:	5fcc 0f27           	movu.w 0x270f,r12
    388c:	5fed a400 699a      	move.d [sp+164],r9
    3892:	e9cb                	move.d r12,[r9]
    3894:	5fed 8400 a00b      	test.d [sp+132]
    389a:	ff3d ea01           	beq 3a88 <__dtoa_r+0x2b4>
    389e:	9333                	btstq 19,r3
    38a0:	6f1e 58ac 0000      	move.d ac58 <_zeroes.4007+0x1a>,r1
    38a6:	5fed ac00 a00b      	test.d [sp+172]
    38ac:	d130                	beq 387e <__dtoa_r+0xaa>
    38ae:	61a6                	move.d r1,r10
    38b0:	0311 800b           	test.b [r1+3]
    38b4:	ff2d e201           	bne 3a9a <__dtoa_r+0x2c6>
    38b8:	6196                	move.d r1,r9
    38ba:	0392                	addq 3,r9
    38bc:	5fed ac00 6dda      	move.d [sp+172],r13
    38c2:	ed9b                	move.d r9,[r13]
    38c4:	61a6                	move.d r1,r10
    38c6:	04e2                	addq 4,sp
    38c8:	be8f                	movem [sp+],r8
    38ca:	0fec 7400           	addu.b 0x74,sp
    38ce:	3e0d                	jump [sp+]
    38d0:	e09b                	move.d r9,[r0]
    38d2:	2f3f ffff ff7f      	and.d 7fffffff <__end+0x7fff02ef>,r3
    38d8:	5fed 8800 e33b      	move.d r3,[sp+136]
    38de:	47e0                	ba 3826 <__dtoa_r+0x52>
    38e0:	6396                	move.d r3,r9
    38e2:	6e96                	move.d sp,r9
    38e4:	0f9c 7c00           	addu.b 0x7c,r9
    38e8:	ee9b                	move.d r9,[sp]
    38ea:	68a6                	move.d r8,r10
    38ec:	64b6                	move.d r4,r11
    38ee:	62c6                	move.d r2,r12
    38f0:	6ed6                	move.d sp,r13
    38f2:	0fdc 8000           	addu.b 0x80,r13
    38f6:	3fbd b465 0000      	jsr 65b4 <___d2b>
    38fc:	6306                	move.d r3,r0
    38fe:	f403                	lsrq 20,r0
    3900:	1f0f ff07           	and.w 0x7ff,r0
    3904:	6006                	test.d r0
    3906:	ff2d 9601           	bne 3aa0 <__dtoa_r+0x2cc>
    390a:	6a76                	move.d r10,r7
    390c:	7ce1 622a           	move.d [sp+124],r2
    3910:	5fed 8000 202a      	add.d [sp+128],r2,r0
    3916:	ff0c effb           	cmps.w -1041,r0
    391a:	ffbd 9406           	blt 3fb2 <__dtoa_r+0x7de>
    391e:	60d6                	move.d r0,r13
    3920:	7f9c 0efc           	movs.w -1010,r9
    3924:	a096                	sub.d r0,r9
    3926:	63a6                	move.d r3,r10
    3928:	e9a4                	lsl.d r9,r10
    392a:	1fdc 1204           	addu.w 0x412,r13
    392e:	5fed 8400 699a      	move.d [sp+132],r9
    3934:	ed97                	lsr.d r13,r9
    3936:	69a7                	or.d r9,r10
    3938:	3fbd 30a0 0000      	jsr a030 <___floatunsidf>
    393e:	5fed 8c00 eaab      	move.d r10,[sp+140]
    3944:	2fbe 0000 10fe      	add.d fe100000 <__end+0xfe0f02f0>,r11
    394a:	5fed 9000 ebbb      	move.d r11,[sp+144]
    3950:	8102                	subq 1,r0
    3952:	4192                	moveq 1,r9
    3954:	64e1 e99b           	move.d r9,[sp+100]
    3958:	5fed 8c00 6aaa      	move.d [sp+140],r10
    395e:	5fed 9000 6bba      	move.d [sp+144],r11
    3964:	7c86                	clear.d r12
    3966:	6fde 0000 f83f      	move.d 3ff80000 <__end+0x3ff702f0>,r13
    396c:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    3972:	6fce 6143 6f63      	move.d 636f4361 <__end+0x636e4651>,r12
    3978:	6fde a787 d23f      	move.d 3fd287a7 <__end+0x3fd18a97>,r13
    397e:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    3984:	6fce b3c8 608b      	move.d 8b60c8b3 <__end+0x8b5fcba3>,r12
    398a:	6fde 288a c63f      	move.d 3fc68a28 <__end+0x3fc58d18>,r13
    3990:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    3996:	6a46                	move.d r10,r4
    3998:	6b36                	move.d r11,r3
    399a:	60a6                	move.d r0,r10
    399c:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    39a2:	6fce fb79 9f50      	move.d 509f79fb <__end+0x509e7ceb>,r12
    39a8:	6fde 1344 d33f      	move.d 3fd34413 <__end+0x3fd24703>,r13
    39ae:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    39b4:	6ac6                	move.d r10,r12
    39b6:	6bd6                	move.d r11,r13
    39b8:	64a6                	move.d r4,r10
    39ba:	63b6                	move.d r3,r11
    39bc:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    39c2:	6a46                	move.d r10,r4
    39c4:	6b36                	move.d r11,r3
    39c6:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    39cc:	3ce1 eaab           	move.d r10,[sp+60]
    39d0:	64a6                	move.d r4,r10
    39d2:	63b6                	move.d r3,r11
    39d4:	7c86                	clear.d r12
    39d6:	7d86                	clear.d r13
    39d8:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    39de:	6aa6                	test.d r10
    39e0:	ffbd 5c03           	blt 3d40 <__dtoa_r+0x56c>
    39e4:	0f05                	nop 
    39e6:	4192                	moveq 1,r9
    39e8:	54e1 e99b           	move.d r9,[sp+84]
    39ec:	3ce1 699a           	move.d [sp+60],r9
    39f0:	d692                	cmpq 22,r9
    39f2:	3a90                	bhi 3a2e <__dtoa_r+0x25a>
    39f4:	c393                	lslq 3,r9
    39f6:	5fed 8400 6aaa      	move.d [sp+132],r10
    39fc:	5fed 8800 6bba      	move.d [sp+136],r11
    3a02:	6f9d b4ac 0000 6cca 	move.d [r9+acb4 <___mprec_tens>],r12
    3a0a:	6f9d b8ac 0000 6dda 	move.d [r9+acb8 <___mprec_tens+0x4>],r13
    3a12:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    3a18:	6aa6                	test.d r10
    3a1a:	ffad a605           	bge 3fc4 <__dtoa_r+0x7f0>
    3a1e:	0f05                	nop 
    3a20:	3ce1 699a           	move.d [sp+60],r9
    3a24:	8192                	subq 1,r9
    3a26:	3ce1 e99b           	move.d r9,[sp+60]
    3a2a:	54e1 708a           	clear.d [sp+84]
    3a2e:	a026                	sub.d r0,r2
    3a30:	6206                	move.d r2,r0
    3a32:	8102                	subq 1,r0
    3a34:	ff7d fc02           	bmi 3d34 <__dtoa_r+0x560>
    3a38:	0f05                	nop 
    3a3a:	6066                	move.d r0,r6
    3a3c:	40e1 708a           	clear.d [sp+64]
    3a40:	3ce1 a00b           	test.d [sp+60]
    3a44:	ffbd 2403           	blt 3d6c <__dtoa_r+0x598>
    3a48:	0f05                	nop 
    3a4a:	3ce1 266a           	add.d [sp+60],r6
    3a4e:	3ce1 699a           	move.d [sp+60],r9
    3a52:	4ce1 e99b           	move.d r9,[sp+76]
    3a56:	48e1 708a           	clear.d [sp+72]
    3a5a:	38e1 699a           	move.d [sp+56],r9
    3a5e:	c992                	cmpq 9,r9
    3a60:	7490                	bhi 3ad6 <__dtoa_r+0x302>
    3a62:	c592                	cmpq 5,r9
    3a64:	0ed0                	ble 3a74 <__dtoa_r+0x2a0>
    3a66:	4122                	moveq 1,r2
    3a68:	8492                	subq 4,r9
    3a6a:	38e1 e99b           	move.d r9,[sp+56]
    3a6e:	7206                	clear.b r2
    3a70:	38e1 699a           	move.d [sp+56],r9
    3a74:	8292                	subq 2,r9
    3a76:	cf9d 0400           	bound.b 0x4,r9
    3a7a:	5f95 3ff8           	adds.w [pc+r9.w],pc
    3a7e:	f009                	case 2: -> 446e <__dtoa_r+0xc9a>
    3a80:	c409                	case 3: -> 4442 <__dtoa_r+0xc6e>
    3a82:	b406                	case 4: -> 4132 <__dtoa_r+0x95e>
    3a84:	fa09                	case 5: -> 4478 <__dtoa_r+0xca4>
    3a86:	5c00                	case 6/default: -> 3ada <__dtoa_r+0x306>
    3a88:	ff2d 14fe           	bne 38a0 <__dtoa_r+0xcc>
    3a8c:	0f05                	nop 
    3a8e:	6f1e 4eac 0000      	move.d ac4e <_zeroes.4007+0x10>,r1
    3a94:	ffed 0efe           	ba 38a6 <__dtoa_r+0xd2>
    3a98:	0f05                	nop 
    3a9a:	ffed 1efe           	ba 38bc <__dtoa_r+0xe8>
    3a9e:	0892                	addq 8,r9
    3aa0:	5fed 8c00 e44b      	move.d r4,[sp+140]
    3aa6:	2f2f ffff 0f00      	and.d fffff <__end+0xf02ef>,r2
    3aac:	6f2f 0000 f03f      	or.d 3ff00000 <__end+0x3fef02f0>,r2
    3ab2:	5fed 9000 e22b      	move.d r2,[sp+144]
    3ab8:	9f0c ff03           	subu.w 0x3ff,r0
    3abc:	7ce1 622a           	move.d [sp+124],r2
    3ac0:	64e1 708a           	clear.d [sp+100]
    3ac4:	ffed 90fe           	ba 3958 <__dtoa_r+0x184>
    3ac8:	0f05                	nop 
    3aca:	6f1e 2cac 0000      	move.d ac2c <__global_impure_ptr+0x42>,r1
    3ad0:	ffed aafd           	ba 387e <__dtoa_r+0xaa>
    3ad4:	61a6                	move.d r1,r10
    3ad6:	38e1 708a           	clear.d [sp+56]
    3ada:	4181 708a           	clear.d [r8+65]
    3ade:	6f9e 985d 0000      	move.d 5d98 <__Balloc>,r9
    3ae4:	5ce1 e99b           	move.d r9,[sp+92]
    3ae8:	68a6                	move.d r8,r10
    3aea:	7b86                	clear.d r11
    3aec:	b9b9                	jsr r9
    3aee:	6a16                	move.d r10,r1
    3af0:	3d81 eaab           	move.d r10,[r8+61]
    3af4:	5fed a000 708a      	clear.d [sp+160]
    3afa:	7f92                	moveq -1,r9
    3afc:	2ce1 e99b           	move.d r9,[sp+44]
    3b00:	60e1 e99b           	move.d r9,[sp+96]
    3b04:	4192                	moveq 1,r9
    3b06:	50e1 e99b           	move.d r9,[sp+80]
    3b0a:	5fed 8000 699a      	move.d [sp+128],r9
    3b10:	ffbd c801           	blt 3cdc <__dtoa_r+0x508>
    3b14:	0f05                	nop 
    3b16:	3ce1 6cca           	move.d [sp+60],r12
    3b1a:	cec2                	cmpq 14,r12
    3b1c:	ffcd bc01           	bgt 3cdc <__dtoa_r+0x508>
    3b20:	6c36                	move.d r12,r3
    3b22:	c333                	lslq 3,r3
    3b24:	6f3d b4ac 0000 693e 	move.d [r9=r3+acb4 <___mprec_tens>],r3
    3b2c:	0491 644a           	move.d [r9+4],r4
    3b30:	5fed a000 a00b      	test.d [sp+160]
    3b36:	ffbd 4809           	blt 4482 <__dtoa_r+0xcae>
    3b3a:	0f05                	nop 
    3b3c:	5fed 8400 622a      	move.d [sp+132],r2
    3b42:	5fed 8800 600a      	move.d [sp+136],r0
    3b48:	6f9e 949b 0000      	move.d 9b94 <___divdf3>,r9
    3b4e:	34e1 e99b           	move.d r9,[sp+52]
    3b52:	62a6                	move.d r2,r10
    3b54:	60b6                	move.d r0,r11
    3b56:	63c6                	move.d r3,r12
    3b58:	64d6                	move.d r4,r13
    3b5a:	b9b9                	jsr r9
    3b5c:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    3b62:	6a56                	move.d r10,r5
    3b64:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    3b6a:	63c6                	move.d r3,r12
    3b6c:	64d6                	move.d r4,r13
    3b6e:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    3b74:	6ac6                	move.d r10,r12
    3b76:	6bd6                	move.d r11,r13
    3b78:	62a6                	move.d r2,r10
    3b7a:	60b6                	move.d r0,r11
    3b7c:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    3b82:	6ac6                	move.d r10,r12
    3b84:	4596                	move.b r5,r9
    3b86:	3092                	addq 48,r9
    3b88:	61d6                	move.d r1,r13
    3b8a:	cd9f                	move.b r9,[r13+]
    3b8c:	44e1 eddb           	move.d r13,[sp+68]
    3b90:	6d96                	move.d r13,r9
    3b92:	2ce1 6dda           	move.d [sp+44],r13
    3b96:	c1d2                	cmpq 1,r13
    3b98:	ac30                	beq 3c46 <__dtoa_r+0x472>
    3b9a:	6b06                	move.d r11,r0
    3b9c:	7c86                	clear.d r12
    3b9e:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    3ba4:	28e1 e99b           	move.d r9,[sp+40]
    3ba8:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    3bae:	6a06                	move.d r10,r0
    3bb0:	6b26                	move.d r11,r2
    3bb2:	7c86                	clear.d r12
    3bb4:	7d86                	clear.d r13
    3bb6:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    3bbc:	28e1 699a           	move.d [sp+40],r9
    3bc0:	6aa6                	test.d r10
    3bc2:	ff3d 0601           	beq 3ccc <__dtoa_r+0x4f8>
    3bc6:	0f05                	nop 
    3bc8:	44e1 666a           	move.d [sp+68],r6
    3bcc:	30e0                	ba 3bfe <__dtoa_r+0x42a>
    3bce:	60a6                	move.d r0,r10
    3bd0:	7c86                	clear.d r12
    3bd2:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    3bd8:	28e1 e99b           	move.d r9,[sp+40]
    3bdc:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    3be2:	6a06                	move.d r10,r0
    3be4:	6b26                	move.d r11,r2
    3be6:	7c86                	clear.d r12
    3be8:	7d86                	clear.d r13
    3bea:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    3bf0:	28e1 699a           	move.d [sp+40],r9
    3bf4:	6aa6                	test.d r10
    3bf6:	ff3d 3808           	beq 4432 <__dtoa_r+0xc5e>
    3bfa:	0f05                	nop 
    3bfc:	60a6                	move.d r0,r10
    3bfe:	62b6                	move.d r2,r11
    3c00:	63c6                	move.d r3,r12
    3c02:	64d6                	move.d r4,r13
    3c04:	34e1 30b9           	jsr [sp+52]
    3c08:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    3c0e:	6a56                	move.d r10,r5
    3c10:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    3c16:	63c6                	move.d r3,r12
    3c18:	64d6                	move.d r4,r13
    3c1a:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    3c20:	6ac6                	move.d r10,r12
    3c22:	6bd6                	move.d r11,r13
    3c24:	60a6                	move.d r0,r10
    3c26:	62b6                	move.d r2,r11
    3c28:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    3c2e:	6ac6                	move.d r10,r12
    3c30:	6b06                	move.d r11,r0
    3c32:	45d6                	move.b r5,r13
    3c34:	30d2                	addq 48,r13
    3c36:	6696                	move.d r6,r9
    3c38:	c9df                	move.b r13,[r9+]
    3c3a:	69d6                	move.d r9,r13
    3c3c:	a1d6                	sub.d r1,r13
    3c3e:	2ce1 edda           	cmp.d [sp+44],r13
    3c42:	8d20                	bne 3bd0 <__dtoa_r+0x3fc>
    3c44:	6966                	move.d r9,r6
    3c46:	6ca6                	move.d r12,r10
    3c48:	60b6                	move.d r0,r11
    3c4a:	60d6                	move.d r0,r13
    3c4c:	28e1 e99b           	move.d r9,[sp+40]
    3c50:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    3c56:	6a26                	move.d r10,r2
    3c58:	6b06                	move.d r11,r0
    3c5a:	63a6                	move.d r3,r10
    3c5c:	64b6                	move.d r4,r11
    3c5e:	62c6                	move.d r2,r12
    3c60:	60d6                	move.d r0,r13
    3c62:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    3c68:	28e1 699a           	move.d [sp+40],r9
    3c6c:	6aa6                	test.d r10
    3c6e:	22b0                	blt 3c92 <__dtoa_r+0x4be>
    3c70:	63a6                	move.d r3,r10
    3c72:	64b6                	move.d r4,r11
    3c74:	62c6                	move.d r2,r12
    3c76:	60d6                	move.d r0,r13
    3c78:	28e1 e99b           	move.d r9,[sp+40]
    3c7c:	3fbd 1c9d 0000      	jsr 9d1c <___eqdf2>
    3c82:	28e1 699a           	move.d [sp+40],r9
    3c86:	6aa6                	test.d r10
    3c88:	ff2d a607           	bne 4432 <__dtoa_r+0xc5e>
    3c8c:	8053                	btstq 0,r5
    3c8e:	3ca0                	bge 3ccc <__dtoa_r+0x4f8>
    3c90:	0f05                	nop 
    3c92:	ff91 444a           	move.b [r9-1],r4
    3c96:	08e0                	ba 3ca0 <__dtoa_r+0x4cc>
    3c98:	69d6                	move.d r9,r13
    3c9a:	fed1 444a           	move.b [r13-2],r4
    3c9e:	6cd6                	move.d r12,r13
    3ca0:	6d96                	move.d r13,r9
    3ca2:	6dc6                	move.d r13,r12
    3ca4:	cf4e 3900           	cmp.b 0x39,r4
    3ca8:	ff2d b80c           	bne 4964 <__dtoa_r+0x1190>
    3cac:	81c2                	subq 1,r12
    3cae:	44e1 edda           	cmp.d [sp+68],r13
    3cb2:	e720                	bne 3c9a <__dtoa_r+0x4c6>
    3cb4:	0f05                	nop 
    3cb6:	3ce1 6dda           	move.d [sp+60],r13
    3cba:	01d2                	addq 1,r13
    3cbc:	3ce1 eddb           	move.d r13,[sp+60]
    3cc0:	4fde 3000           	move.b 0x30,r13
    3cc4:	ccdb                	move.b r13,[r12]
    3cc6:	4f6e 3100           	move.b 0x31,r6
    3cca:	cc6b                	move.b r6,[r12]
    3ccc:	6fce 045e 0000      	move.d 5e04 <__Bfree>,r12
    3cd2:	34e1 eccb           	move.d r12,[sp+52]
    3cd6:	ffed da03           	ba 40b4 <__dtoa_r+0x8e0>
    3cda:	68a6                	move.d r8,r10
    3cdc:	50e1 a00b           	test.d [sp+80]
    3ce0:	aa30                	beq 3d8c <__dtoa_r+0x5b8>
    3ce2:	7486                	clear.d r4
    3ce4:	38e1 6cca           	move.d [sp+56],r12
    3ce8:	c1c2                	cmpq 1,r12
    3cea:	ffdd 2c08           	ble 451a <__dtoa_r+0xd46>
    3cee:	0f05                	nop 
    3cf0:	2ce1 655a           	move.d [sp+44],r5
    3cf4:	8152                	subq 1,r5
    3cf6:	48e1 e55a           	cmp.d [sp+72],r5
    3cfa:	ffcd e009           	bgt 46de <__dtoa_r+0xf0a>
    3cfe:	0f05                	nop 
    3d00:	48e1 699a           	move.d [sp+72],r9
    3d04:	a596                	sub.d r5,r9
    3d06:	6956                	move.d r9,r5
    3d08:	40e1 622a           	move.d [sp+64],r2
    3d0c:	2ce1 a00b           	test.d [sp+44]
    3d10:	ffbd 2a0c           	blt 493e <__dtoa_r+0x116a>
    3d14:	0f05                	nop 
    3d16:	2ce1 699a           	move.d [sp+44],r9
    3d1a:	40e1 2c9a           	add.d [sp+64],r9,r12
    3d1e:	40e1 eccb           	move.d r12,[sp+64]
    3d22:	2966                	add.d r9,r6
    3d24:	6f3e 3060 0000      	move.d 6030 <___i2b>,r3
    3d2a:	68a6                	move.d r8,r10
    3d2c:	41b2                	moveq 1,r11
    3d2e:	b3b9                	jsr r3
    3d30:	68e0                	ba 3d9a <__dtoa_r+0x5c6>
    3d32:	6a46                	move.d r10,r4
    3d34:	a005                	neg.d r0,r0
    3d36:	40e1 e00b           	move.d r0,[sp+64]
    3d3a:	ffed 02fd           	ba 3a40 <__dtoa_r+0x26c>
    3d3e:	7686                	clear.d r6
    3d40:	3ce1 6aaa           	move.d [sp+60],r10
    3d44:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    3d4a:	64c6                	move.d r4,r12
    3d4c:	63d6                	move.d r3,r13
    3d4e:	3fbd 789d 0000      	jsr 9d78 <___nedf2>
    3d54:	6aa6                	test.d r10
    3d56:	ff3d 8cfc           	beq 39e6 <__dtoa_r+0x212>
    3d5a:	0f05                	nop 
    3d5c:	3ce1 699a           	move.d [sp+60],r9
    3d60:	8192                	subq 1,r9
    3d62:	3ce1 e99b           	move.d r9,[sp+60]
    3d66:	ffed 7efc           	ba 39e8 <__dtoa_r+0x214>
    3d6a:	4192                	moveq 1,r9
    3d6c:	40e1 699a           	move.d [sp+64],r9
    3d70:	3ce1 a99a           	sub.d [sp+60],r9
    3d74:	40e1 e99b           	move.d r9,[sp+64]
    3d78:	3ce1 699a           	move.d [sp+60],r9
    3d7c:	a995                	neg.d r9,r9
    3d7e:	48e1 e99b           	move.d r9,[sp+72]
    3d82:	4ce1 708a           	clear.d [sp+76]
    3d86:	ffed d0fc           	ba 3a5a <__dtoa_r+0x286>
    3d8a:	0f05                	nop 
    3d8c:	48e1 655a           	move.d [sp+72],r5
    3d90:	40e1 622a           	move.d [sp+64],r2
    3d94:	6f3e 3060 0000      	move.d 6030 <___i2b>,r3
    3d9a:	6226                	test.d r2
    3d9c:	1a30                	beq 3db8 <__dtoa_r+0x5e4>
    3d9e:	6666                	test.d r6
    3da0:	16d0                	ble 3db8 <__dtoa_r+0x5e4>
    3da2:	e266                	cmp.d r2,r6
    3da4:	ffcd 7403           	bgt 411c <__dtoa_r+0x948>
    3da8:	6696                	move.d r6,r9
    3daa:	40e1 6dda           	move.d [sp+64],r13
    3dae:	a9d6                	sub.d r9,r13
    3db0:	40e1 eddb           	move.d r13,[sp+64]
    3db4:	a926                	sub.d r9,r2
    3db6:	a966                	sub.d r9,r6
    3db8:	48e1 a00b           	test.d [sp+72]
    3dbc:	62d0                	ble 3e20 <__dtoa_r+0x64c>
    3dbe:	0f05                	nop 
    3dc0:	50e1 a00b           	test.d [sp+80]
    3dc4:	4a30                	beq 3e10 <__dtoa_r+0x63c>
    3dc6:	6556                	test.d r5
    3dc8:	ffdd 5603           	ble 4122 <__dtoa_r+0x94e>
    3dcc:	68a6                	move.d r8,r10
    3dce:	64b6                	move.d r4,r11
    3dd0:	65c6                	move.d r5,r12
    3dd2:	3fbd ea61 0000      	jsr 61ea <___pow5mult>
    3dd8:	6a46                	move.d r10,r4
    3dda:	68a6                	move.d r8,r10
    3ddc:	64b6                	move.d r4,r11
    3dde:	67c6                	move.d r7,r12
    3de0:	3fbd 5060 0000      	jsr 6050 <___multiply>
    3de6:	6a06                	move.d r10,r0
    3de8:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    3dee:	34e1 e99b           	move.d r9,[sp+52]
    3df2:	68a6                	move.d r8,r10
    3df4:	67b6                	move.d r7,r11
    3df6:	b9b9                	jsr r9
    3df8:	6076                	move.d r0,r7
    3dfa:	48e1 6cca           	move.d [sp+72],r12
    3dfe:	a5c6                	sub.d r5,r12
    3e00:	2a30                	beq 3e2c <__dtoa_r+0x658>
    3e02:	68a6                	move.d r8,r10
    3e04:	67b6                	move.d r7,r11
    3e06:	3fbd ea61 0000      	jsr 61ea <___pow5mult>
    3e0c:	1ce0                	ba 3e2a <__dtoa_r+0x656>
    3e0e:	6a76                	move.d r10,r7
    3e10:	68a6                	move.d r8,r10
    3e12:	67b6                	move.d r7,r11
    3e14:	48e1 6cca           	move.d [sp+72],r12
    3e18:	3fbd ea61 0000      	jsr 61ea <___pow5mult>
    3e1e:	6a76                	move.d r10,r7
    3e20:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    3e26:	34e1 e99b           	move.d r9,[sp+52]
    3e2a:	68a6                	move.d r8,r10
    3e2c:	41b2                	moveq 1,r11
    3e2e:	b3b9                	jsr r3
    3e30:	4ce1 a00b           	test.d [sp+76]
    3e34:	12d0                	ble 3e48 <__dtoa_r+0x674>
    3e36:	6a56                	move.d r10,r5
    3e38:	68a6                	move.d r8,r10
    3e3a:	65b6                	move.d r5,r11
    3e3c:	4ce1 6cca           	move.d [sp+76],r12
    3e40:	3fbd ea61 0000      	jsr 61ea <___pow5mult>
    3e46:	6a56                	move.d r10,r5
    3e48:	38e1 699a           	move.d [sp+56],r9
    3e4c:	c192                	cmpq 1,r9
    3e4e:	ffdd 9202           	ble 40e4 <__dtoa_r+0x910>
    3e52:	7086                	clear.d r0
    3e54:	4ce1 a00b           	test.d [sp+76]
    3e58:	ff2d 8a07           	bne 45e6 <__dtoa_r+0xe12>
    3e5c:	4192                	moveq 1,r9
    3e5e:	2696                	add.d r6,r9
    3e60:	1f93                	andq 31,r9
    3e62:	1430                	beq 3e78 <__dtoa_r+0x6a4>
    3e64:	5cd2                	moveq 28,r13
    3e66:	4fdc 2000           	movu.b 0x20,r13
    3e6a:	a9d6                	sub.d r9,r13
    3e6c:	c4d2                	cmpq 4,r13
    3e6e:	ffdd 1c0c           	ble 4a8e <__dtoa_r+0x12ba>
    3e72:	c4d2                	cmpq 4,r13
    3e74:	5cd2                	moveq 28,r13
    3e76:	a9d6                	sub.d r9,r13
    3e78:	40e1 29da           	add.d [sp+64],r13,r9
    3e7c:	40e1 e99b           	move.d r9,[sp+64]
    3e80:	2d26                	add.d r13,r2
    3e82:	2d66                	add.d r13,r6
    3e84:	40e1 a00b           	test.d [sp+64]
    3e88:	10d0                	ble 3e9a <__dtoa_r+0x6c6>
    3e8a:	68a6                	move.d r8,r10
    3e8c:	67b6                	move.d r7,r11
    3e8e:	40e1 6cca           	move.d [sp+64],r12
    3e92:	3fbd 9062 0000      	jsr 6290 <___lshift>
    3e98:	6a76                	move.d r10,r7
    3e9a:	6666                	test.d r6
    3e9c:	0ed0                	ble 3eac <__dtoa_r+0x6d8>
    3e9e:	68a6                	move.d r8,r10
    3ea0:	65b6                	move.d r5,r11
    3ea2:	66c6                	move.d r6,r12
    3ea4:	3fbd 9062 0000      	jsr 6290 <___lshift>
    3eaa:	6a56                	move.d r10,r5
    3eac:	54e1 a00b           	test.d [sp+84]
    3eb0:	ff2d f206           	bne 45a6 <__dtoa_r+0xdd2>
    3eb4:	67a6                	move.d r7,r10
    3eb6:	2ce1 a00b           	test.d [sp+44]
    3eba:	ffdd 4207           	ble 4600 <__dtoa_r+0xe2c>
    3ebe:	0f05                	nop 
    3ec0:	50e1 a00b           	test.d [sp+80]
    3ec4:	ff3d 0601           	beq 3fce <__dtoa_r+0x7fa>
    3ec8:	6226                	test.d r2
    3eca:	0ed0                	ble 3eda <__dtoa_r+0x706>
    3ecc:	68a6                	move.d r8,r10
    3ece:	64b6                	move.d r4,r11
    3ed0:	62c6                	move.d r2,r12
    3ed2:	3fbd 9062 0000      	jsr 6290 <___lshift>
    3ed8:	6a46                	move.d r10,r4
    3eda:	6006                	test.d r0
    3edc:	ff2d 1009           	bne 47f0 <__dtoa_r+0x101c>
    3ee0:	68a6                	move.d r8,r10
    3ee2:	6426                	move.d r4,r2
    3ee4:	6166                	move.d r1,r6
    3ee6:	6196                	move.d r1,r9
    3ee8:	8192                	subq 1,r9
    3eea:	2ce1 299a           	add.d [sp+44],r9
    3eee:	44e1 e99b           	move.d r9,[sp+68]
    3ef2:	6406                	move.d r4,r0
    3ef4:	6f9e 4063 0000      	move.d 6340 <___mcmp>,r9
    3efa:	40e1 e99b           	move.d r9,[sp+64]
    3efe:	6f9e 6c36 0000      	move.d 366c <_quorem>,r9
    3f04:	30e1 e99b           	move.d r9,[sp+48]
    3f08:	67a6                	move.d r7,r10
    3f0a:	65b6                	move.d r5,r11
    3f0c:	30e1 30b9           	jsr [sp+48]
    3f10:	2ce1 eaab           	move.d r10,[sp+44]
    3f14:	6a36                	move.d r10,r3
    3f16:	3032                	addq 48,r3
    3f18:	67a6                	move.d r7,r10
    3f1a:	60b6                	move.d r0,r11
    3f1c:	40e1 30b9           	jsr [sp+64]
    3f20:	6a46                	move.d r10,r4
    3f22:	68a6                	move.d r8,r10
    3f24:	65b6                	move.d r5,r11
    3f26:	62c6                	move.d r2,r12
    3f28:	3fbd 7e63 0000      	jsr 637e <___mdiff>
    3f2e:	0ca1 a00b           	test.d [r10+12]
    3f32:	ff3d 0006           	beq 4536 <__dtoa_r+0xd62>
    3f36:	6a96                	move.d r10,r9
    3f38:	68a6                	move.d r8,r10
    3f3a:	69b6                	move.d r9,r11
    3f3c:	34e1 30b9           	jsr [sp+52]
    3f40:	41d2                	moveq 1,r13
    3f42:	6446                	test.d r4
    3f44:	ffbd e007           	blt 4728 <__dtoa_r+0xf54>
    3f48:	6446                	test.d r4
    3f4a:	1820                	bne 3f64 <__dtoa_r+0x790>
    3f4c:	0f05                	nop 
    3f4e:	38e1 a00b           	test.d [sp+56]
    3f52:	1020                	bne 3f64 <__dtoa_r+0x790>
    3f54:	0f05                	nop 
    3f56:	5fed 8400 699a      	move.d [sp+132],r9
    3f5c:	8093                	btstq 0,r9
    3f5e:	ffad c607           	bge 4728 <__dtoa_r+0xf54>
    3f62:	0f05                	nop 
    3f64:	6dd6                	test.d r13
    3f66:	ffcd b608           	bgt 4820 <__dtoa_r+0x104c>
    3f6a:	6646                	move.d r6,r4
    3f6c:	c43f                	move.b r3,[r4+]
    3f6e:	44e1 e66a           	cmp.d [sp+68],r6
    3f72:	ff3d b808           	beq 482e <__dtoa_r+0x105a>
    3f76:	6496                	move.d r4,r9
    3f78:	68a6                	move.d r8,r10
    3f7a:	67b6                	move.d r7,r11
    3f7c:	4ac2                	moveq 10,r12
    3f7e:	7d86                	clear.d r13
    3f80:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    3f86:	6a76                	move.d r10,r7
    3f88:	68a6                	move.d r8,r10
    3f8a:	60b6                	move.d r0,r11
    3f8c:	4ac2                	moveq 10,r12
    3f8e:	e206                	cmp.d r2,r0
    3f90:	ff3d 0206           	beq 4596 <__dtoa_r+0xdc2>
    3f94:	7d86                	clear.d r13
    3f96:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    3f9c:	6a06                	move.d r10,r0
    3f9e:	68a6                	move.d r8,r10
    3fa0:	62b6                	move.d r2,r11
    3fa2:	4ac2                	moveq 10,r12
    3fa4:	7d86                	clear.d r13
    3fa6:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    3fac:	6a26                	move.d r10,r2
    3fae:	59e0                	ba 3f08 <__dtoa_r+0x734>
    3fb0:	6466                	move.d r4,r6
    3fb2:	7f9c eefb           	movs.w -1042,r9
    3fb6:	a096                	sub.d r0,r9
    3fb8:	5fed 8400 6aaa      	move.d [sp+132],r10
    3fbe:	ffed 76f9           	ba 3938 <__dtoa_r+0x164>
    3fc2:	e9a4                	lsl.d r9,r10
    3fc4:	54e1 708a           	clear.d [sp+84]
    3fc8:	ffed 64fa           	ba 3a30 <__dtoa_r+0x25c>
    3fcc:	a026                	sub.d r0,r2
    3fce:	6f9e 6c36 0000      	move.d 366c <_quorem>,r9
    3fd4:	30e1 e99b           	move.d r9,[sp+48]
    3fd8:	6f2e 1e5e 0000      	move.d 5e1e <___multadd>,r2
    3fde:	0ce0                	ba 3fec <__dtoa_r+0x818>
    3fe0:	6106                	move.d r1,r0
    3fe2:	67b6                	move.d r7,r11
    3fe4:	4ac2                	moveq 10,r12
    3fe6:	7d86                	clear.d r13
    3fe8:	b2b9                	jsr r2
    3fea:	6a76                	move.d r10,r7
    3fec:	67a6                	move.d r7,r10
    3fee:	65b6                	move.d r5,r11
    3ff0:	30e1 30b9           	jsr [sp+48]
    3ff4:	6a36                	move.d r10,r3
    3ff6:	3032                	addq 48,r3
    3ff8:	c03f                	move.b r3,[r0+]
    3ffa:	6096                	move.d r0,r9
    3ffc:	a196                	sub.d r1,r9
    3ffe:	2ce1 e99a           	cmp.d [sp+44],r9
    4002:	dfb0                	blt 3fe2 <__dtoa_r+0x80e>
    4004:	68a6                	move.d r8,r10
    4006:	2ce1 699a           	move.d [sp+44],r9
    400a:	ffdd 3a09           	ble 4948 <__dtoa_r+0x1174>
    400e:	0f05                	nop 
    4010:	2196                	add.d r1,r9
    4012:	7086                	clear.d r0
    4014:	6fde 4063 0000      	move.d 6340 <___mcmp>,r13
    401a:	40e1 eddb           	move.d r13,[sp+64]
    401e:	68a6                	move.d r8,r10
    4020:	67b6                	move.d r7,r11
    4022:	41c2                	moveq 1,r12
    4024:	28e1 e99b           	move.d r9,[sp+40]
    4028:	3fbd 9062 0000      	jsr 6290 <___lshift>
    402e:	6a76                	move.d r10,r7
    4030:	65b6                	move.d r5,r11
    4032:	40e1 30b9           	jsr [sp+64]
    4036:	28e1 699a           	move.d [sp+40],r9
    403a:	6aa6                	test.d r10
    403c:	ffdd b804           	ble 44f8 <__dtoa_r+0xd24>
    4040:	6aa6                	test.d r10
    4042:	ff91 4cca           	move.b [r9-1],r12
    4046:	69d6                	move.d r9,r13
    4048:	61a6                	move.d r1,r10
    404a:	08e0                	ba 4054 <__dtoa_r+0x880>
    404c:	01a2                	addq 1,r10
    404e:	fed1 4cca           	move.b [r13-2],r12
    4052:	6bd6                	move.d r11,r13
    4054:	6d96                	move.d r13,r9
    4056:	6db6                	move.d r13,r11
    4058:	cfce 3900           	cmp.b 0x39,r12
    405c:	ff2d 8807           	bne 47e8 <__dtoa_r+0x1014>
    4060:	81b2                	subq 1,r11
    4062:	ead6                	cmp.d r10,r13
    4064:	e920                	bne 404e <__dtoa_r+0x87a>
    4066:	0f05                	nop 
    4068:	3ce1 6cca           	move.d [sp+60],r12
    406c:	01c2                	addq 1,r12
    406e:	3ce1 eccb           	move.d r12,[sp+60]
    4072:	4fde 3100           	move.b 0x31,r13
    4076:	cbdb                	move.b r13,[r11]
    4078:	68a6                	move.d r8,r10
    407a:	65b6                	move.d r5,r11
    407c:	28e1 e99b           	move.d r9,[sp+40]
    4080:	34e1 30b9           	jsr [sp+52]
    4084:	28e1 699a           	move.d [sp+40],r9
    4088:	6446                	test.d r4
    408a:	2630                	beq 40b2 <__dtoa_r+0x8de>
    408c:	6006                	test.d r0
    408e:	1230                	beq 40a2 <__dtoa_r+0x8ce>
    4090:	e406                	cmp.d r4,r0
    4092:	0e30                	beq 40a2 <__dtoa_r+0x8ce>
    4094:	68a6                	move.d r8,r10
    4096:	60b6                	move.d r0,r11
    4098:	3fbd 045e 0000      	jsr 5e04 <__Bfree>
    409e:	28e1 699a           	move.d [sp+40],r9
    40a2:	68a6                	move.d r8,r10
    40a4:	64b6                	move.d r4,r11
    40a6:	28e1 e99b           	move.d r9,[sp+40]
    40aa:	34e1 30b9           	jsr [sp+52]
    40ae:	28e1 699a           	move.d [sp+40],r9
    40b2:	68a6                	move.d r8,r10
    40b4:	67b6                	move.d r7,r11
    40b6:	28e1 e99b           	move.d r9,[sp+40]
    40ba:	34e1 30b9           	jsr [sp+52]
    40be:	28e1 699a           	move.d [sp+40],r9
    40c2:	790a                	clear.b [r9]
    40c4:	3ce1 6dda           	move.d [sp+60],r13
    40c8:	01d2                	addq 1,r13
    40ca:	5fed a400 6cca      	move.d [sp+164],r12
    40d0:	ecdb                	move.d r13,[r12]
    40d2:	5fed ac00 a00b      	test.d [sp+172]
    40d8:	ff2d e0f7           	bne 38bc <__dtoa_r+0xe8>
    40dc:	0f05                	nop 
    40de:	ffed 9cf7           	ba 387e <__dtoa_r+0xaa>
    40e2:	61a6                	move.d r1,r10
    40e4:	5fed 8400 a00b      	test.d [sp+132]
    40ea:	ff2d 66fd           	bne 3e54 <__dtoa_r+0x680>
    40ee:	0f05                	nop 
    40f0:	5fed 8800 699a      	move.d [sp+136],r9
    40f6:	9393                	btstq 19,r9
    40f8:	ff2d 58fd           	bne 3e54 <__dtoa_r+0x680>
    40fc:	0f05                	nop 
    40fe:	2f9f 0000 f07f      	and.d 7ff00000 <__end+0x7fef02f0>,r9
    4104:	ff3d 4cfd           	beq 3e54 <__dtoa_r+0x680>
    4108:	0f05                	nop 
    410a:	40e1 699a           	move.d [sp+64],r9
    410e:	0192                	addq 1,r9
    4110:	40e1 e99b           	move.d r9,[sp+64]
    4114:	0162                	addq 1,r6
    4116:	ffed 3afd           	ba 3e54 <__dtoa_r+0x680>
    411a:	4102                	moveq 1,r0
    411c:	ffed 8afc           	ba 3daa <__dtoa_r+0x5d6>
    4120:	6296                	move.d r2,r9
    4122:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    4128:	34e1 e99b           	move.d r9,[sp+52]
    412c:	ffed cafc           	ba 3dfa <__dtoa_r+0x626>
    4130:	0f05                	nop 
    4132:	4192                	moveq 1,r9
    4134:	50e1 e99b           	move.d r9,[sp+80]
    4138:	5fed a000 a00b      	test.d [sp+160]
    413e:	ffdd d205           	ble 4714 <__dtoa_r+0xf40>
    4142:	4102                	moveq 1,r0
    4144:	5fed a000 600a      	move.d [sp+160],r0
    414a:	60e1 e00b           	move.d r0,[sp+96]
    414e:	2ce1 e00b           	move.d r0,[sp+44]
    4152:	4181 708a           	clear.d [r8+65]
    4156:	d702                	cmpq 23,r0
    4158:	ff8d 2c09           	bls 4a88 <__dtoa_r+0x12b4>
    415c:	41d2                	moveq 1,r13
    415e:	4492                	moveq 4,r9
    4160:	6db6                	move.d r13,r11
    4162:	2996                	add.d r9,r9
    4164:	69c6                	move.d r9,r12
    4166:	14c2                	addq 20,r12
    4168:	e0c6                	cmp.d r0,r12
    416a:	f580                	bls 4160 <__dtoa_r+0x98c>
    416c:	01d2                	addq 1,r13
    416e:	4181 ebbb           	move.d r11,[r8+65]
    4172:	6f9e 985d 0000      	move.d 5d98 <__Balloc>,r9
    4178:	5ce1 e99b           	move.d r9,[sp+92]
    417c:	68a6                	move.d r8,r10
    417e:	b9b9                	jsr r9
    4180:	3d81 eaab           	move.d r10,[r8+61]
    4184:	ce02                	cmpq 14,r0
    4186:	ff9d 80f9           	bhi 3b0a <__dtoa_r+0x336>
    418a:	6a16                	move.d r10,r1
    418c:	6226                	test.d r2
    418e:	ff3d 78f9           	beq 3b0a <__dtoa_r+0x336>
    4192:	0f05                	nop 
    4194:	5fed 8400 30ba      	move [sp+132],srp
    419a:	6ce1 70ba           	move srp,[sp+108]
    419e:	5fed 8800 30ba      	move [sp+136],srp
    41a4:	70e1 70ba           	move srp,[sp+112]
    41a8:	3ce1 a00b           	test.d [sp+60]
    41ac:	ffdd d205           	ble 4782 <__dtoa_r+0xfae>
    41b0:	0f05                	nop 
    41b2:	3ce1 655a           	move.d [sp+60],r5
    41b6:	0f53                	andq 15,r5
    41b8:	c353                	lslq 3,r5
    41ba:	6f5d b4ac 0000 695e 	move.d [r9=r5+acb4 <___mprec_tens>],r5
    41c2:	0491 644a           	move.d [r9+4],r4
    41c6:	3ce1 600a           	move.d [sp+60],r0
    41ca:	a403                	asrq 4,r0
    41cc:	8403                	btstq 4,r0
    41ce:	ffad 2205           	bge 46f4 <__dtoa_r+0xf20>
    41d2:	7bb6                	move srp,r11
    41d4:	0f03                	andq 15,r0
    41d6:	6f9e 949b 0000      	move.d 9b94 <___divdf3>,r9
    41dc:	34e1 e99b           	move.d r9,[sp+52]
    41e0:	6ce1 6aaa           	move.d [sp+108],r10
    41e4:	6fce acac 0000      	move.d acac <___mprec_bigtens+0x20>,r12
    41ea:	6cca                	move.d [r12],r12
    41ec:	6fde b0ac 0000      	move.d acb0 <___mprec_bigtens+0x24>,r13
    41f2:	6dda                	move.d [r13],r13
    41f4:	b9b9                	jsr r9
    41f6:	44e1 eaab           	move.d r10,[sp+68]
    41fa:	58e1 ebbb           	move.d r11,[sp+88]
    41fe:	4332                	moveq 3,r3
    4200:	6006                	test.d r0
    4202:	2830                	beq 422c <__dtoa_r+0xa58>
    4204:	0f05                	nop 
    4206:	6f2e 8cac 0000      	move.d ac8c <___mprec_bigtens>,r2
    420c:	8003                	btstq 0,r0
    420e:	16a0                	bge 4226 <__dtoa_r+0xa52>
    4210:	65a6                	move.d r5,r10
    4212:	0132                	addq 1,r3
    4214:	64b6                	move.d r4,r11
    4216:	62ca                	move.d [r2],r12
    4218:	0421 6dda           	move.d [r2+4],r13
    421c:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    4222:	6a56                	move.d r10,r5
    4224:	6b46                	move.d r11,r4
    4226:	a103                	asrq 1,r0
    4228:	e320                	bne 420c <__dtoa_r+0xa38>
    422a:	0822                	addq 8,r2
    422c:	44e1 6aaa           	move.d [sp+68],r10
    4230:	58e1 6bba           	move.d [sp+88],r11
    4234:	65c6                	move.d r5,r12
    4236:	64d6                	move.d r4,r13
    4238:	34e1 30b9           	jsr [sp+52]
    423c:	6a46                	move.d r10,r4
    423e:	6b56                	move.d r11,r5
    4240:	54e1 a00b           	test.d [sp+84]
    4244:	1c30                	beq 4262 <__dtoa_r+0xa8e>
    4246:	63a6                	move.d r3,r10
    4248:	64a6                	move.d r4,r10
    424a:	65b6                	move.d r5,r11
    424c:	7c86                	clear.d r12
    424e:	6fde 0000 f03f      	move.d 3ff00000 <__end+0x3fef02f0>,r13
    4254:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    425a:	6aa6                	test.d r10
    425c:	ffbd 1c07           	blt 497c <__dtoa_r+0x11a8>
    4260:	63a6                	move.d r3,r10
    4262:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    4268:	64c6                	move.d r4,r12
    426a:	65d6                	move.d r5,r13
    426c:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    4272:	7c86                	clear.d r12
    4274:	6fde 0000 1c40      	move.d 401c0000 <__end+0x401b02f0>,r13
    427a:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    4280:	5fed 9400 eaab      	move.d r10,[sp+148]
    4286:	2fbe 0000 c0fc      	add.d fcc00000 <__end+0xfcbf02f0>,r11
    428c:	5fed 9800 ebbb      	move.d r11,[sp+152]
    4292:	2ce1 a00b           	test.d [sp+44]
    4296:	ff3d e603           	beq 4680 <__dtoa_r+0xeac>
    429a:	64a6                	move.d r4,r10
    429c:	3ce1 699a           	move.d [sp+60],r9
    42a0:	74e1 e99b           	move.d r9,[sp+116]
    42a4:	2ce1 699a           	move.d [sp+44],r9
    42a8:	58e1 e99b           	move.d r9,[sp+88]
    42ac:	50e1 a00b           	test.d [sp+80]
    42b0:	ff3d 9005           	beq 4844 <__dtoa_r+0x1070>
    42b4:	7a86                	clear.d r10
    42b6:	5fed 9400 622a      	move.d [sp+148],r2
    42bc:	5fed 9800 600a      	move.d [sp+152],r0
    42c2:	58e1 699a           	move.d [sp+88],r9
    42c6:	c393                	lslq 3,r9
    42c8:	6fbe 0000 e03f      	move.d 3fe00000 <__end+0x3fdf02f0>,r11
    42ce:	6f9d acac 0000 6cca 	move.d [r9+acac <___mprec_bigtens+0x20>],r12
    42d6:	6f9d b0ac 0000 6dda 	move.d [r9+acb0 <___mprec_bigtens+0x24>],r13
    42de:	3fbd 949b 0000      	jsr 9b94 <___divdf3>
    42e4:	62c6                	move.d r2,r12
    42e6:	60d6                	move.d r0,r13
    42e8:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    42ee:	6a06                	move.d r10,r0
    42f0:	6b26                	move.d r11,r2
    42f2:	64a6                	move.d r4,r10
    42f4:	65b6                	move.d r5,r11
    42f6:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    42fc:	6a36                	move.d r10,r3
    42fe:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    4304:	6ac6                	move.d r10,r12
    4306:	6bd6                	move.d r11,r13
    4308:	64a6                	move.d r4,r10
    430a:	65b6                	move.d r5,r11
    430c:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    4312:	34e1 eaab           	move.d r10,[sp+52]
    4316:	6b56                	move.d r11,r5
    4318:	4346                	move.b r3,r4
    431a:	3042                	addq 48,r4
    431c:	6196                	move.d r1,r9
    431e:	c94f                	move.b r4,[r9+]
    4320:	44e1 e99b           	move.d r9,[sp+68]
    4324:	6f3e d49d 0000      	move.d 9dd4 <___gtdf2>,r3
    432a:	60a6                	move.d r0,r10
    432c:	62b6                	move.d r2,r11
    432e:	34e1 6cca           	move.d [sp+52],r12
    4332:	65d6                	move.d r5,r13
    4334:	28e1 e99b           	move.d r9,[sp+40]
    4338:	b3b9                	jsr r3
    433a:	28e1 699a           	move.d [sp+40],r9
    433e:	6aa6                	test.d r10
    4340:	e8c0                	bgt 442a <__dtoa_r+0xc56>
    4342:	65d6                	move.d r5,r13
    4344:	7a86                	clear.d r10
    4346:	6fbe 0000 f03f      	move.d 3ff00000 <__end+0x3fef02f0>,r11
    434c:	34e1 6cca           	move.d [sp+52],r12
    4350:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    4356:	6ac6                	move.d r10,r12
    4358:	6bd6                	move.d r11,r13
    435a:	60a6                	move.d r0,r10
    435c:	62b6                	move.d r2,r11
    435e:	b3b9                	jsr r3
    4360:	28e1 699a           	move.d [sp+40],r9
    4364:	6aa6                	test.d r10
    4366:	ffcd 1007           	bgt 4a7a <__dtoa_r+0x12a6>
    436a:	0f05                	nop 
    436c:	58e1 699a           	move.d [sp+88],r9
    4370:	c192                	cmpq 1,r9
    4372:	ffdd f203           	ble 4768 <__dtoa_r+0xf94>
    4376:	2196                	add.d r1,r9
    4378:	44e1 633a           	move.d [sp+68],r3
    437c:	68e1 e99b           	move.d r9,[sp+104]
    4380:	38e0                	ba 43ba <__dtoa_r+0xbe6>
    4382:	60a6                	move.d r0,r10
    4384:	7a86                	clear.d r10
    4386:	6fbe 0000 f03f      	move.d 3ff00000 <__end+0x3fef02f0>,r11
    438c:	34e1 6cca           	move.d [sp+52],r12
    4390:	28e1 e99b           	move.d r9,[sp+40]
    4394:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    439a:	60c6                	move.d r0,r12
    439c:	62d6                	move.d r2,r13
    439e:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    43a4:	28e1 699a           	move.d [sp+40],r9
    43a8:	6aa6                	test.d r10
    43aa:	ffbd 8c06           	blt 4a3a <__dtoa_r+0x1266>
    43ae:	0f05                	nop 
    43b0:	68e1 e33a           	cmp.d [sp+104],r3
    43b4:	ff3d b003           	beq 4768 <__dtoa_r+0xf94>
    43b8:	60a6                	move.d r0,r10
    43ba:	62b6                	move.d r2,r11
    43bc:	7c86                	clear.d r12
    43be:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    43c4:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    43ca:	6a06                	move.d r10,r0
    43cc:	6b26                	move.d r11,r2
    43ce:	34e1 6aaa           	move.d [sp+52],r10
    43d2:	65b6                	move.d r5,r11
    43d4:	7c86                	clear.d r12
    43d6:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    43dc:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    43e2:	6a56                	move.d r10,r5
    43e4:	6b46                	move.d r11,r4
    43e6:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    43ec:	58e1 eaab           	move.d r10,[sp+88]
    43f0:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    43f6:	6ac6                	move.d r10,r12
    43f8:	6bd6                	move.d r11,r13
    43fa:	65a6                	move.d r5,r10
    43fc:	64b6                	move.d r4,r11
    43fe:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    4404:	34e1 eaab           	move.d r10,[sp+52]
    4408:	6b56                	move.d r11,r5
    440a:	58e1 444a           	move.b [sp+88],r4
    440e:	3042                	addq 48,r4
    4410:	c34f                	move.b r4,[r3+]
    4412:	60c6                	move.d r0,r12
    4414:	62d6                	move.d r2,r13
    4416:	28e1 e33b           	move.d r3,[sp+40]
    441a:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    4420:	28e1 699a           	move.d [sp+40],r9
    4424:	6aa6                	test.d r10
    4426:	5da0                	bge 4384 <__dtoa_r+0xbb0>
    4428:	65d6                	move.d r5,r13
    442a:	74e1 6cca           	move.d [sp+116],r12
    442e:	3ce1 eccb           	move.d r12,[sp+60]
    4432:	6fde 045e 0000      	move.d 5e04 <__Bfree>,r13
    4438:	34e1 eddb           	move.d r13,[sp+52]
    443c:	ffed 74fc           	ba 40b4 <__dtoa_r+0x8e0>
    4440:	68a6                	move.d r8,r10
    4442:	50e1 708a           	clear.d [sp+80]
    4446:	5fed a000 6cca      	move.d [sp+160],r12
    444c:	3ce1 2cca           	add.d [sp+60],r12
    4450:	60e1 eccb           	move.d r12,[sp+96]
    4454:	6c06                	move.d r12,r0
    4456:	0102                	addq 1,r0
    4458:	2ce1 e00b           	move.d r0,[sp+44]
    445c:	6006                	test.d r0
    445e:	ffcd f0fc           	bgt 4152 <__dtoa_r+0x97e>
    4462:	0f05                	nop 
    4464:	4181 708a           	clear.d [r8+65]
    4468:	ffed 06fd           	ba 4172 <__dtoa_r+0x99e>
    446c:	7b86                	clear.d r11
    446e:	50e1 708a           	clear.d [sp+80]
    4472:	ffed c2fc           	ba 4138 <__dtoa_r+0x964>
    4476:	0f05                	nop 
    4478:	4192                	moveq 1,r9
    447a:	50e1 e99b           	move.d r9,[sp+80]
    447e:	c7e0                	ba 4446 <__dtoa_r+0xc72>
    4480:	0f05                	nop 
    4482:	2ce1 a00b           	test.d [sp+44]
    4486:	ffcd b2f6           	bgt 3b3c <__dtoa_r+0x368>
    448a:	0f05                	nop 
    448c:	ff2d 3c02           	bne 46cc <__dtoa_r+0xef8>
    4490:	63a6                	move.d r3,r10
    4492:	64b6                	move.d r4,r11
    4494:	7c86                	clear.d r12
    4496:	6fde 0000 1440      	move.d 40140000 <__end+0x401302f0>,r13
    449c:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    44a2:	6ac6                	move.d r10,r12
    44a4:	6bd6                	move.d r11,r13
    44a6:	5fed 8400 6aaa      	move.d [sp+132],r10
    44ac:	5fed 8800 6bba      	move.d [sp+136],r11
    44b2:	3fbd 8c9e 0000      	jsr 9e8c <___ledf2>
    44b8:	7586                	clear.d r5
    44ba:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    44c0:	34e1 e99b           	move.d r9,[sp+52]
    44c4:	6aa6                	test.d r10
    44c6:	ffcd 6c01           	bgt 4636 <__dtoa_r+0xe62>
    44ca:	7486                	clear.d r4
    44cc:	5fed a000 6cca      	move.d [sp+160],r12
    44d2:	7c87                	not r12
    44d4:	3ce1 eccb           	move.d r12,[sp+60]
    44d8:	6196                	move.d r1,r9
    44da:	68a6                	move.d r8,r10
    44dc:	65b6                	move.d r5,r11
    44de:	28e1 e99b           	move.d r9,[sp+40]
    44e2:	34e1 30b9           	jsr [sp+52]
    44e6:	28e1 699a           	move.d [sp+40],r9
    44ea:	6446                	test.d r4
    44ec:	ff2d b2fb           	bne 40a2 <__dtoa_r+0x8ce>
    44f0:	68a6                	move.d r8,r10
    44f2:	ffed c0fb           	ba 40b6 <__dtoa_r+0x8e2>
    44f6:	67b6                	move.d r7,r11
    44f8:	0e20                	bne 4508 <__dtoa_r+0xd34>
    44fa:	8033                	btstq 0,r3
    44fc:	0aa0                	bge 4508 <__dtoa_r+0xd34>
    44fe:	0f05                	nop 
    4500:	ffed 3efb           	ba 4042 <__dtoa_r+0x86e>
    4504:	0f05                	nop 
    4506:	6c96                	move.d r12,r9
    4508:	ff91 4cde           	move.b [r12=r9-1],r13
    450c:	cfde 3000           	cmp.b 0x30,r13
    4510:	f530                	beq 4506 <__dtoa_r+0xd32>
    4512:	68a6                	move.d r8,r10
    4514:	ffed 64fb           	ba 407c <__dtoa_r+0x8a8>
    4518:	65b6                	move.d r5,r11
    451a:	64e1 a00b           	test.d [sp+100]
    451e:	ff3d 2c04           	beq 494e <__dtoa_r+0x117a>
    4522:	0f05                	nop 
    4524:	1f9c 3304           	addu.w 0x433,r9
    4528:	48e1 655a           	move.d [sp+72],r5
    452c:	40e1 622a           	move.d [sp+64],r2
    4530:	ffed e6f7           	ba 3d1a <__dtoa_r+0x546>
    4534:	0f05                	nop 
    4536:	67a6                	move.d r7,r10
    4538:	69b6                	move.d r9,r11
    453a:	28e1 e99b           	move.d r9,[sp+40]
    453e:	3fbd 4063 0000      	jsr 6340 <___mcmp>
    4544:	6ad6                	move.d r10,r13
    4546:	68a6                	move.d r8,r10
    4548:	28e1 699a           	move.d [sp+40],r9
    454c:	69b6                	move.d r9,r11
    454e:	28e1 eddb           	move.d r13,[sp+40]
    4552:	34e1 30b9           	jsr [sp+52]
    4556:	28e1 6dda           	move.d [sp+40],r13
    455a:	ff2d e4f9           	bne 3f42 <__dtoa_r+0x76e>
    455e:	0f05                	nop 
    4560:	38e1 a00b           	test.d [sp+56]
    4564:	ff2d daf9           	bne 3f42 <__dtoa_r+0x76e>
    4568:	0f05                	nop 
    456a:	5fed 8400 699a      	move.d [sp+132],r9
    4570:	8093                	btstq 0,r9
    4572:	ffbd ccf9           	blt 3f42 <__dtoa_r+0x76e>
    4576:	0f05                	nop 
    4578:	cf3c 3900           	cmpu.b 0x39,r3
    457c:	ff3d da01           	beq 475a <__dtoa_r+0xf86>
    4580:	6446                	test.d r4
    4582:	08d0                	ble 458c <__dtoa_r+0xdb8>
    4584:	0f05                	nop 
    4586:	2ce1 633a           	move.d [sp+44],r3
    458a:	3132                	addq 49,r3
    458c:	6696                	move.d r6,r9
    458e:	c93f                	move.b r3,[r9+]
    4590:	ffed e4fa           	ba 4078 <__dtoa_r+0x8a4>
    4594:	6246                	move.d r2,r4
    4596:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    459c:	6a06                	move.d r10,r0
    459e:	6a26                	move.d r10,r2
    45a0:	ffed 64f9           	ba 3f08 <__dtoa_r+0x734>
    45a4:	6466                	move.d r4,r6
    45a6:	65b6                	move.d r5,r11
    45a8:	3fbd 4063 0000      	jsr 6340 <___mcmp>
    45ae:	6aa6                	test.d r10
    45b0:	ffad 02f9           	bge 3eb6 <__dtoa_r+0x6e2>
    45b4:	68a6                	move.d r8,r10
    45b6:	3ce1 699a           	move.d [sp+60],r9
    45ba:	8192                	subq 1,r9
    45bc:	3ce1 e99b           	move.d r9,[sp+60]
    45c0:	6f3e 1e5e 0000      	move.d 5e1e <___multadd>,r3
    45c6:	67b6                	move.d r7,r11
    45c8:	4ac2                	moveq 10,r12
    45ca:	7d86                	clear.d r13
    45cc:	b3b9                	jsr r3
    45ce:	50e1 a00b           	test.d [sp+80]
    45d2:	ff2d 8604           	bne 4a5c <__dtoa_r+0x1288>
    45d6:	6a76                	move.d r10,r7
    45d8:	60e1 699a           	move.d [sp+96],r9
    45dc:	2ce1 e99b           	move.d r9,[sp+44]
    45e0:	ffed d2f8           	ba 3eb6 <__dtoa_r+0x6e2>
    45e4:	0f05                	nop 
    45e6:	1051 699a           	move.d [r5+16],r9
    45ea:	0492                	addq 4,r9
    45ec:	6595 6aaa           	move.d [r5+r9.d],r10
    45f0:	3fbd 6a5f 0000      	jsr 5f6a <___hi0bits>
    45f6:	4f9c 2000           	movu.b 0x20,r9
    45fa:	ffed 60f8           	ba 3e5e <__dtoa_r+0x68a>
    45fe:	aa96                	sub.d r10,r9
    4600:	38e1 699a           	move.d [sp+56],r9
    4604:	c292                	cmpq 2,r9
    4606:	ffdd b6f8           	ble 3ec0 <__dtoa_r+0x6ec>
    460a:	0f05                	nop 
    460c:	2ce1 a00b           	test.d [sp+44]
    4610:	ff2d b8fe           	bne 44cc <__dtoa_r+0xcf8>
    4614:	68a6                	move.d r8,r10
    4616:	65b6                	move.d r5,r11
    4618:	45c2                	moveq 5,r12
    461a:	7d86                	clear.d r13
    461c:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    4622:	6a56                	move.d r10,r5
    4624:	67a6                	move.d r7,r10
    4626:	65b6                	move.d r5,r11
    4628:	3fbd 4063 0000      	jsr 6340 <___mcmp>
    462e:	6aa6                	test.d r10
    4630:	ffdd 98fe           	ble 44cc <__dtoa_r+0xcf8>
    4634:	0f05                	nop 
    4636:	6196                	move.d r1,r9
    4638:	4fce 3100           	move.b 0x31,r12
    463c:	c9cf                	move.b r12,[r9+]
    463e:	3ce1 6dda           	move.d [sp+60],r13
    4642:	01d2                	addq 1,r13
    4644:	3ce1 eddb           	move.d r13,[sp+60]
    4648:	ffed 90fe           	ba 44dc <__dtoa_r+0xd08>
    464c:	68a6                	move.d r8,r10
    464e:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    4654:	64c6                	move.d r4,r12
    4656:	65d6                	move.d r5,r13
    4658:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    465e:	7c86                	clear.d r12
    4660:	6fde 0000 1c40      	move.d 401c0000 <__end+0x401b02f0>,r13
    4666:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    466c:	5fed 9400 eaab      	move.d r10,[sp+148]
    4672:	2fbe 0000 c0fc      	add.d fcc00000 <__end+0xfcbf02f0>,r11
    4678:	5fed 9800 ebbb      	move.d r11,[sp+152]
    467e:	64a6                	move.d r4,r10
    4680:	65b6                	move.d r5,r11
    4682:	7c86                	clear.d r12
    4684:	6fde 0000 1440      	move.d 40140000 <__end+0x401302f0>,r13
    468a:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    4690:	6a36                	move.d r10,r3
    4692:	6b26                	move.d r11,r2
    4694:	5fed 9400 644a      	move.d [sp+148],r4
    469a:	5fed 9800 600a      	move.d [sp+152],r0
    46a0:	64c6                	move.d r4,r12
    46a2:	60d6                	move.d r0,r13
    46a4:	3fbd d49d 0000      	jsr 9dd4 <___gtdf2>
    46aa:	6aa6                	test.d r10
    46ac:	ffcd 8401           	bgt 4834 <__dtoa_r+0x1060>
    46b0:	7586                	clear.d r5
    46b2:	63a6                	move.d r3,r10
    46b4:	62b6                	move.d r2,r11
    46b6:	64c6                	move.d r4,r12
    46b8:	60d6                	move.d r0,r13
    46ba:	2fde 0000 0080      	add.d 80000000 <__end+0x7fff02f0>,r13
    46c0:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    46c6:	6aa6                	test.d r10
    46c8:	9ea0                	bge 4768 <__dtoa_r+0xf94>
    46ca:	0f05                	nop 
    46cc:	7586                	clear.d r5
    46ce:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    46d4:	34e1 e99b           	move.d r9,[sp+52]
    46d8:	ffed f0fd           	ba 44cc <__dtoa_r+0xcf8>
    46dc:	7486                	clear.d r4
    46de:	48e1 a95a           	sub.d [sp+72],r5,r9
    46e2:	4ce1 299a           	add.d [sp+76],r9
    46e6:	4ce1 e99b           	move.d r9,[sp+76]
    46ea:	48e1 e55b           	move.d r5,[sp+72]
    46ee:	ffed 16f6           	ba 3d08 <__dtoa_r+0x534>
    46f2:	7586                	clear.d r5
    46f4:	6ce1 30ba           	move [sp+108],srp
    46f8:	44e1 70ba           	move srp,[sp+68]
    46fc:	70e1 30ba           	move [sp+112],srp
    4700:	58e1 70ba           	move srp,[sp+88]
    4704:	6f9e 949b 0000      	move.d 9b94 <___divdf3>,r9
    470a:	34e1 e99b           	move.d r9,[sp+52]
    470e:	ffed eefa           	ba 4200 <__dtoa_r+0xa2c>
    4712:	4232                	moveq 2,r3
    4714:	60e1 e00b           	move.d r0,[sp+96]
    4718:	2ce1 e00b           	move.d r0,[sp+44]
    471c:	5fed a000 e00b      	move.d r0,[sp+160]
    4722:	ffed 3efd           	ba 4464 <__dtoa_r+0xc90>
    4726:	0f05                	nop 
    4728:	6dd6                	test.d r13
    472a:	ffdd 5efe           	ble 458c <__dtoa_r+0xdb8>
    472e:	6346                	move.d r3,r4
    4730:	68a6                	move.d r8,r10
    4732:	67b6                	move.d r7,r11
    4734:	41c2                	moveq 1,r12
    4736:	3fbd 9062 0000      	jsr 6290 <___lshift>
    473c:	6a76                	move.d r10,r7
    473e:	65b6                	move.d r5,r11
    4740:	40e1 30b9           	jsr [sp+64]
    4744:	6aa6                	test.d r10
    4746:	ffdd fe02           	ble 4a48 <__dtoa_r+0x1274>
    474a:	6aa6                	test.d r10
    474c:	2ce1 633a           	move.d [sp+44],r3
    4750:	cf4c 3900           	cmpu.b 0x39,r4
    4754:	ff2d 34fe           	bne 458c <__dtoa_r+0xdb8>
    4758:	3132                	addq 49,r3
    475a:	6696                	move.d r6,r9
    475c:	4fce 3900           	move.b 0x39,r12
    4760:	c9cf                	move.b r12,[r9+]
    4762:	ffed e0f8           	ba 4046 <__dtoa_r+0x872>
    4766:	6246                	move.d r2,r4
    4768:	6ce1 30ba           	move [sp+108],srp
    476c:	5fed 8400 70ba      	move srp,[sp+132]
    4772:	70e1 30ba           	move [sp+112],srp
    4776:	5fed 8800 70ba      	move srp,[sp+136]
    477c:	ffed 8af3           	ba 3b0a <__dtoa_r+0x336>
    4780:	0f05                	nop 
    4782:	3ce1 699a           	move.d [sp+60],r9
    4786:	a905                	neg.d r9,r0
    4788:	ff3d e201           	beq 496e <__dtoa_r+0x119a>
    478c:	6096                	move.d r0,r9
    478e:	0f93                	andq 15,r9
    4790:	c393                	lslq 3,r9
    4792:	6ce1 6aaa           	move.d [sp+108],r10
    4796:	70e1 6bba           	move.d [sp+112],r11
    479a:	6f9d b4ac 0000 6cca 	move.d [r9+acb4 <___mprec_tens>],r12
    47a2:	6f9d b8ac 0000 6dda 	move.d [r9+acb8 <___mprec_tens+0x4>],r13
    47aa:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    47b0:	6a46                	move.d r10,r4
    47b2:	a403                	asrq 4,r0
    47b4:	ff3d bc02           	beq 4a74 <__dtoa_r+0x12a0>
    47b8:	6b56                	move.d r11,r5
    47ba:	6f2e 8cac 0000      	move.d ac8c <___mprec_bigtens>,r2
    47c0:	4232                	moveq 2,r3
    47c2:	8003                	btstq 0,r0
    47c4:	16a0                	bge 47dc <__dtoa_r+0x1008>
    47c6:	64a6                	move.d r4,r10
    47c8:	0132                	addq 1,r3
    47ca:	65b6                	move.d r5,r11
    47cc:	62ca                	move.d [r2],r12
    47ce:	0421 6dda           	move.d [r2+4],r13
    47d2:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    47d8:	6a46                	move.d r10,r4
    47da:	6b56                	move.d r11,r5
    47dc:	a103                	asrq 1,r0
    47de:	e320                	bne 47c2 <__dtoa_r+0xfee>
    47e0:	0822                	addq 8,r2
    47e2:	ffed 5afa           	ba 4240 <__dtoa_r+0xa6c>
    47e6:	0f05                	nop 
    47e8:	01c2                	addq 1,r12
    47ea:	ffed 8af8           	ba 4078 <__dtoa_r+0x8a4>
    47ee:	cbcb                	move.b r12,[r11]
    47f0:	0441 6bba           	move.d [r4+4],r11
    47f4:	5ce1 30b9           	jsr [sp+92]
    47f8:	6a06                	move.d r10,r0
    47fa:	1041 6cca           	move.d [r4+16],r12
    47fe:	02c2                	addq 2,r12
    4800:	0ca2                	addq 12,r10
    4802:	64b6                	move.d r4,r11
    4804:	0cb2                	addq 12,r11
    4806:	c2c3                	lslq 2,r12
    4808:	3fbd 7c5b 0000      	jsr 5b7c <_memcpy>
    480e:	68a6                	move.d r8,r10
    4810:	60b6                	move.d r0,r11
    4812:	41c2                	moveq 1,r12
    4814:	3fbd 9062 0000      	jsr 6290 <___lshift>
    481a:	ffed c6f6           	ba 3ee4 <__dtoa_r+0x710>
    481e:	6a26                	move.d r10,r2
    4820:	cf3c 3900           	cmpu.b 0x39,r3
    4824:	3530                	beq 475a <__dtoa_r+0xf86>
    4826:	0f05                	nop 
    4828:	ffed 60fd           	ba 458c <__dtoa_r+0xdb8>
    482c:	0132                	addq 1,r3
    482e:	ffed ecf7           	ba 401e <__dtoa_r+0x84a>
    4832:	6246                	move.d r2,r4
    4834:	6f9e 045e 0000      	move.d 5e04 <__Bfree>,r9
    483a:	34e1 e99b           	move.d r9,[sp+52]
    483e:	ffed f4fd           	ba 4636 <__dtoa_r+0xe62>
    4842:	7486                	clear.d r4
    4844:	58e1 699a           	move.d [sp+88],r9
    4848:	8192                	subq 1,r9
    484a:	34e1 e99b           	move.d r9,[sp+52]
    484e:	c393                	lslq 3,r9
    4850:	5fed 9400 6aaa      	move.d [sp+148],r10
    4856:	5fed 9800 6bba      	move.d [sp+152],r11
    485c:	6f9d b4ac 0000 6cca 	move.d [r9+acb4 <___mprec_tens>],r12
    4864:	6f9d b8ac 0000 6dda 	move.d [r9+acb8 <___mprec_tens+0x4>],r13
    486c:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    4872:	68e1 eaab           	move.d r10,[sp+104]
    4876:	78e1 ebbb           	move.d r11,[sp+120]
    487a:	64a6                	move.d r4,r10
    487c:	65b6                	move.d r5,r11
    487e:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    4884:	6a06                	move.d r10,r0
    4886:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    488c:	6ac6                	move.d r10,r12
    488e:	6bd6                	move.d r11,r13
    4890:	64a6                	move.d r4,r10
    4892:	65b6                	move.d r5,r11
    4894:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    489a:	6a26                	move.d r10,r2
    489c:	3002                	addq 48,r0
    489e:	6196                	move.d r1,r9
    48a0:	c90f                	move.b r0,[r9+]
    48a2:	44e1 e99b           	move.d r9,[sp+68]
    48a6:	58e1 6cca           	move.d [sp+88],r12
    48aa:	c1c2                	cmpq 1,r12
    48ac:	5030                	beq 48fe <__dtoa_r+0x112a>
    48ae:	6b36                	move.d r11,r3
    48b0:	58e1 251a           	add.d [sp+88],r1,r5
    48b4:	44e1 600a           	move.d [sp+68],r0
    48b8:	62a6                	move.d r2,r10
    48ba:	63b6                	move.d r3,r11
    48bc:	7c86                	clear.d r12
    48be:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    48c4:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    48ca:	6a36                	move.d r10,r3
    48cc:	6b26                	move.d r11,r2
    48ce:	3fbd a09f 0000      	jsr 9fa0 <___fixdfsi>
    48d4:	6a46                	move.d r10,r4
    48d6:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    48dc:	6ac6                	move.d r10,r12
    48de:	6bd6                	move.d r11,r13
    48e0:	63a6                	move.d r3,r10
    48e2:	62b6                	move.d r2,r11
    48e4:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    48ea:	6a26                	move.d r10,r2
    48ec:	3042                	addq 48,r4
    48ee:	c04f                	move.b r4,[r0+]
    48f0:	e506                	cmp.d r5,r0
    48f2:	c520                	bne 48b8 <__dtoa_r+0x10e4>
    48f4:	6b36                	move.d r11,r3
    48f6:	44e1 699a           	move.d [sp+68],r9
    48fa:	34e1 299a           	add.d [sp+52],r9
    48fe:	68e1 6aaa           	move.d [sp+104],r10
    4902:	78e1 6bba           	move.d [sp+120],r11
    4906:	7c86                	clear.d r12
    4908:	6fde 0000 e03f      	move.d 3fe00000 <__end+0x3fdf02f0>,r13
    490e:	28e1 e99b           	move.d r9,[sp+40]
    4912:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    4918:	62c6                	move.d r2,r12
    491a:	63d6                	move.d r3,r13
    491c:	3fbd 309e 0000      	jsr 9e30 <___ltdf2>
    4922:	28e1 699a           	move.d [sp+40],r9
    4926:	6aa6                	test.d r10
    4928:	caa0                	bge 49f4 <__dtoa_r+0x1220>
    492a:	7a86                	clear.d r10
    492c:	ff91 444a           	move.b [r9-1],r4
    4930:	74e1 6dda           	move.d [sp+116],r13
    4934:	3ce1 eddb           	move.d r13,[sp+60]
    4938:	ffed 64f3           	ba 3ca0 <__dtoa_r+0x4cc>
    493c:	69d6                	move.d r9,r13
    493e:	2ce1 a22a           	sub.d [sp+44],r2
    4942:	ffed d4f3           	ba 3d1a <__dtoa_r+0x546>
    4946:	7986                	clear.d r9
    4948:	ffed c4f6           	ba 4010 <__dtoa_r+0x83c>
    494c:	4192                	moveq 1,r9
    494e:	4f9c 3600           	movu.b 0x36,r9
    4952:	7ce1 a99a           	sub.d [sp+124],r9
    4956:	48e1 655a           	move.d [sp+72],r5
    495a:	40e1 622a           	move.d [sp+64],r2
    495e:	ffed b8f3           	ba 3d1a <__dtoa_r+0x546>
    4962:	0f05                	nop 
    4964:	4466                	move.b r4,r6
    4966:	0162                	addq 1,r6
    4968:	ffed 60f3           	ba 3ccc <__dtoa_r+0x4f8>
    496c:	cc6b                	move.b r6,[r12]
    496e:	6ce1 644a           	move.d [sp+108],r4
    4972:	70e1 655a           	move.d [sp+112],r5
    4976:	ffed c6f8           	ba 4240 <__dtoa_r+0xa6c>
    497a:	4232                	moveq 2,r3
    497c:	2ce1 a00b           	test.d [sp+44]
    4980:	ff3d cafc           	beq 464e <__dtoa_r+0xe7a>
    4984:	0f05                	nop 
    4986:	60e1 a00b           	test.d [sp+96]
    498a:	ffdd dafd           	ble 4768 <__dtoa_r+0xf94>
    498e:	64a6                	move.d r4,r10
    4990:	3ce1 699a           	move.d [sp+60],r9
    4994:	8192                	subq 1,r9
    4996:	74e1 e99b           	move.d r9,[sp+116]
    499a:	65b6                	move.d r5,r11
    499c:	7c86                	clear.d r12
    499e:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    49a4:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    49aa:	6a46                	move.d r10,r4
    49ac:	6b56                	move.d r11,r5
    49ae:	63a6                	move.d r3,r10
    49b0:	01a2                	addq 1,r10
    49b2:	3fbd e89e 0000      	jsr 9ee8 <___floatsidf>
    49b8:	6ac6                	move.d r10,r12
    49ba:	6bd6                	move.d r11,r13
    49bc:	64a6                	move.d r4,r10
    49be:	65b6                	move.d r5,r11
    49c0:	3fbd d097 0000      	jsr 97d0 <___muldf3>
    49c6:	7c86                	clear.d r12
    49c8:	6fde 0000 1c40      	move.d 401c0000 <__end+0x401b02f0>,r13
    49ce:	3fbd 2097 0000      	jsr 9720 <___adddf3>
    49d4:	5fed 9400 eaab      	move.d r10,[sp+148]
    49da:	2fbe 0000 c0fc      	add.d fcc00000 <__end+0xfcbf02f0>,r11
    49e0:	5fed 9800 ebbb      	move.d r11,[sp+152]
    49e6:	60e1 699a           	move.d [sp+96],r9
    49ea:	58e1 e99b           	move.d r9,[sp+88]
    49ee:	ffed baf8           	ba 42ac <__dtoa_r+0xad8>
    49f2:	0f05                	nop 
    49f4:	6fbe 0000 e03f      	move.d 3fe00000 <__end+0x3fdf02f0>,r11
    49fa:	68e1 6cca           	move.d [sp+104],r12
    49fe:	78e1 6dda           	move.d [sp+120],r13
    4a02:	28e1 e99b           	move.d r9,[sp+40]
    4a06:	3fbd 7297 0000      	jsr 9772 <___subdf3>
    4a0c:	62c6                	move.d r2,r12
    4a0e:	63d6                	move.d r3,r13
    4a10:	3fbd d49d 0000      	jsr 9dd4 <___gtdf2>
    4a16:	28e1 699a           	move.d [sp+40],r9
    4a1a:	6aa6                	test.d r10
    4a1c:	0ac0                	bgt 4a28 <__dtoa_r+0x1254>
    4a1e:	0f05                	nop 
    4a20:	ffed 44fd           	ba 4768 <__dtoa_r+0xf94>
    4a24:	0f05                	nop 
    4a26:	6c96                	move.d r12,r9
    4a28:	ff91 4cde           	move.b [r12=r9-1],r13
    4a2c:	cfde 3000           	cmp.b 0x30,r13
    4a30:	f530                	beq 4a26 <__dtoa_r+0x1252>
    4a32:	0f05                	nop 
    4a34:	ffed f2f9           	ba 442a <__dtoa_r+0xc56>
    4a38:	0f05                	nop 
    4a3a:	74e1 6dda           	move.d [sp+116],r13
    4a3e:	3ce1 eddb           	move.d r13,[sp+60]
    4a42:	ffed 5af2           	ba 3ca0 <__dtoa_r+0x4cc>
    4a46:	69d6                	move.d r9,r13
    4a48:	ff2d 42fb           	bne 458e <__dtoa_r+0xdba>
    4a4c:	6696                	move.d r6,r9
    4a4e:	8033                	btstq 0,r3
    4a50:	ffad 3afb           	bge 458e <__dtoa_r+0xdba>
    4a54:	0f05                	nop 
    4a56:	ffed f2fc           	ba 474c <__dtoa_r+0xf78>
    4a5a:	0f05                	nop 
    4a5c:	68a6                	move.d r8,r10
    4a5e:	64b6                	move.d r4,r11
    4a60:	4ac2                	moveq 10,r12
    4a62:	7d86                	clear.d r13
    4a64:	b3b9                	jsr r3
    4a66:	60e1 699a           	move.d [sp+96],r9
    4a6a:	2ce1 e99b           	move.d r9,[sp+44]
    4a6e:	ffed 44f4           	ba 3eb6 <__dtoa_r+0x6e2>
    4a72:	6a46                	move.d r10,r4
    4a74:	ffed c8f7           	ba 4240 <__dtoa_r+0xa6c>
    4a78:	4232                	moveq 2,r3
    4a7a:	74e1 6cca           	move.d [sp+116],r12
    4a7e:	3ce1 eccb           	move.d r12,[sp+60]
    4a82:	ffed 1af2           	ba 3ca0 <__dtoa_r+0x4cc>
    4a86:	69d6                	move.d r9,r13
    4a88:	ffed e6f6           	ba 4172 <__dtoa_r+0x99e>
    4a8c:	7b86                	clear.d r11
    4a8e:	ff3d f2f3           	beq 3e84 <__dtoa_r+0x6b0>
    4a92:	0f05                	nop 
    4a94:	4fdc 3c00           	movu.b 0x3c,r13
    4a98:	ffed dcf3           	ba 3e78 <__dtoa_r+0x6a4>
    4a9c:	a9d6                	sub.d r9,r13
	...

00004aa0 <___sflush_r>:
    4aa0:	84e2                	subq 4,sp
    4aa2:	7eba                	move srp,[sp]
    4aa4:	90e2                	subq 16,sp
    4aa6:	fe3b                	movem r3,[sp]
    4aa8:	6a36                	move.d r10,r3
    4aaa:	0cb1 599a           	move.w [r11+12],r9
    4aae:	8393                	btstq 3,r9
    4ab0:	8eb0                	blt 4b40 <___sflush_r+0xa0>
    4ab2:	6b16                	move.d r11,r1
    4ab4:	59d6                	move.w r9,r13
    4ab6:	5fdf 0008           	or.w 0x800,r13
    4aba:	0cb1 dddb           	move.w r13,[r11+12]
    4abe:	04b1 a00b           	test.d [r11+4]
    4ac2:	d2d0                	ble 4b96 <___sflush_r+0xf6>
    4ac4:	0f05                	nop 
    4ac6:	2811 600a           	move.d [r1+40],r0
    4aca:	7030                	beq 4b3c <___sflush_r+0x9c>
    4acc:	7a86                	clear.d r10
    4ace:	632a                	move.d [r3],r2
    4ad0:	8c93                	btstq 12,r9
    4ad2:	cea0                	bge 4ba2 <___sflush_r+0x102>
    4ad4:	738a                	clear.d [r3]
    4ad6:	5011 6cca           	move.d [r1+80],r12
    4ada:	82d3                	btstq 2,r13
    4adc:	12a0                	bge 4af0 <___sflush_r+0x50>
    4ade:	63a6                	move.d r3,r10
    4ae0:	0411 acca           	sub.d [r1+4],r12
    4ae4:	3011 a00b           	test.d [r1+48]
    4ae8:	0630                	beq 4af0 <___sflush_r+0x50>
    4aea:	0f05                	nop 
    4aec:	3c11 acca           	sub.d [r1+60],r12
    4af0:	1c11 6bba           	move.d [r1+28],r11
    4af4:	7d86                	clear.d r13
    4af6:	b0b9                	jsr r0
    4af8:	ffa2                	cmpq -1,r10
    4afa:	c430                	beq 4bc0 <___sflush_r+0x120>
    4afc:	0f05                	nop 
    4afe:	0c11 599a           	move.w [r1+12],r9
    4b02:	59d6                	move.w r9,r13
    4b04:	1fdf fff7           	and.w 0xf7ff,r13
    4b08:	0c11 dddb           	move.w r13,[r1+12]
    4b0c:	0411 708a           	clear.d [r1+4]
    4b10:	1011 6dda           	move.d [r1+16],r13
    4b14:	8c93                	btstq 12,r9
    4b16:	e4b0                	blt 4bfc <___sflush_r+0x15c>
    4b18:	e1db                	move.d r13,[r1]
    4b1a:	e32b                	move.d r2,[r3]
    4b1c:	3011 6bba           	move.d [r1+48],r11
    4b20:	1830                	beq 4b3a <___sflush_r+0x9a>
    4b22:	6196                	move.d r1,r9
    4b24:	0f9c 4000           	addu.b 0x40,r9
    4b28:	e9b6                	cmp.d r9,r11
    4b2a:	0a30                	beq 4b36 <___sflush_r+0x96>
    4b2c:	0f05                	nop 
    4b2e:	63a6                	move.d r3,r10
    4b30:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    4b36:	3011 708a           	clear.d [r1+48]
    4b3a:	7a86                	clear.d r10
    4b3c:	be3f                	movem [sp+],r3
    4b3e:	3e0d                	jump [sp+]
    4b40:	10b1 622a           	move.d [r11+16],r2
    4b44:	f730                	beq 4b3c <___sflush_r+0x9c>
    4b46:	7a86                	clear.d r10
    4b48:	6b0a                	move.d [r11],r0
    4b4a:	a206                	sub.d r2,r0
    4b4c:	8193                	btstq 1,r9
    4b4e:	4220                	bne 4b92 <___sflush_r+0xf2>
    4b50:	eb2b                	move.d r2,[r11]
    4b52:	14b1 699a           	move.d [r11+20],r9
    4b56:	0811 e99b           	move.d r9,[r1+8]
    4b5a:	6006                	test.d r0
    4b5c:	0cc0                	bgt 4b6a <___sflush_r+0xca>
    4b5e:	7a86                	clear.d r10
    4b60:	b0e0                	ba 4c12 <___sflush_r+0x172>
    4b62:	be3f                	movem [sp+],r3
    4b64:	6006                	test.d r0
    4b66:	d3d0                	ble 4b3a <___sflush_r+0x9a>
    4b68:	2a26                	add.d r10,r2
    4b6a:	63a6                	move.d r3,r10
    4b6c:	1c11 6bba           	move.d [r1+28],r11
    4b70:	62c6                	move.d r2,r12
    4b72:	60d6                	move.d r0,r13
    4b74:	2411 30b9           	jsr [r1+36]
    4b78:	6aa6                	test.d r10
    4b7a:	e9c0                	bgt 4b64 <___sflush_r+0xc4>
    4b7c:	aa06                	sub.d r10,r0
    4b7e:	2a06                	add.d r10,r0
    4b80:	0c11 599a           	move.w [r1+12],r9
    4b84:	5f9f 4000           	or.w 0x40,r9
    4b88:	0c11 d99b           	move.w r9,[r1+12]
    4b8c:	7fa2                	moveq -1,r10
    4b8e:	be3f                	movem [sp+],r3
    4b90:	3e0d                	jump [sp+]
    4b92:	c3e0                	ba 4b56 <___sflush_r+0xb6>
    4b94:	7986                	clear.d r9
    4b96:	3cb1 a00b           	test.d [r11+60]
    4b9a:	2bc0                	bgt 4ac6 <___sflush_r+0x26>
    4b9c:	7a86                	clear.d r10
    4b9e:	72e0                	ba 4c12 <___sflush_r+0x172>
    4ba0:	be3f                	movem [sp+],r3
    4ba2:	63a6                	move.d r3,r10
    4ba4:	1c11 6bba           	move.d [r1+28],r11
    4ba8:	7c86                	clear.d r12
    4baa:	41d2                	moveq 1,r13
    4bac:	b0b9                	jsr r0
    4bae:	ffa2                	cmpq -1,r10
    4bb0:	3430                	beq 4be6 <___sflush_r+0x146>
    4bb2:	6ac6                	move.d r10,r12
    4bb4:	0c11 5dda           	move.w [r1+12],r13
    4bb8:	2811 600a           	move.d [r1+40],r0
    4bbc:	1de0                	ba 4ada <___sflush_r+0x3a>
    4bbe:	0f05                	nop 
    4bc0:	639a                	move.d [r3],r9
    4bc2:	3b30                	beq 4afe <___sflush_r+0x5e>
    4bc4:	dd92                	cmpq 29,r9
    4bc6:	0630                	beq 4bce <___sflush_r+0x12e>
    4bc8:	d692                	cmpq 22,r9
    4bca:	3820                	bne 4c04 <___sflush_r+0x164>
    4bcc:	0f05                	nop 
    4bce:	0c11 599a           	move.w [r1+12],r9
    4bd2:	1f9f fff7           	and.w 0xf7ff,r9
    4bd6:	0c11 d99b           	move.w r9,[r1+12]
    4bda:	0411 708a           	clear.d [r1+4]
    4bde:	1011 699a           	move.d [r1+16],r9
    4be2:	37e0                	ba 4b1a <___sflush_r+0x7a>
    4be4:	e19b                	move.d r9,[r1]
    4be6:	639a                	move.d [r3],r9
    4be8:	cb30                	beq 4bb4 <___sflush_r+0x114>
    4bea:	dd92                	cmpq 29,r9
    4bec:	0630                	beq 4bf4 <___sflush_r+0x154>
    4bee:	d692                	cmpq 22,r9
    4bf0:	8f20                	bne 4b80 <___sflush_r+0xe0>
    4bf2:	0f05                	nop 
    4bf4:	e32b                	move.d r2,[r3]
    4bf6:	7a86                	clear.d r10
    4bf8:	be3f                	movem [sp+],r3
    4bfa:	3e0d                	jump [sp+]
    4bfc:	5011 eaab           	move.d r10,[r1+80]
    4c00:	1be0                	ba 4b1c <___sflush_r+0x7c>
    4c02:	e32b                	move.d r2,[r3]
    4c04:	0c11 599a           	move.w [r1+12],r9
    4c08:	5f9f 4000           	or.w 0x40,r9
    4c0c:	0c11 d99b           	move.w r9,[r1+12]
    4c10:	be3f                	movem [sp+],r3
    4c12:	3e0d                	jump [sp+]

00004c14 <__fflush_r>:
    4c14:	84e2                	subq 4,sp
    4c16:	7eba                	move srp,[sp]
    4c18:	88e2                	subq 8,sp
    4c1a:	ee0b                	move.d r0,[sp]
    4c1c:	6aa6                	test.d r10
    4c1e:	0a30                	beq 4c2a <__fflush_r+0x16>
    4c20:	6a06                	move.d r10,r0
    4c22:	35a1 a00b           	test.d [r10+53]
    4c26:	2030                	beq 4c48 <__fflush_r+0x34>
    4c28:	0f05                	nop 
    4c2a:	0cb1 900b           	test.w [r11+12]
    4c2e:	0a20                	bne 4c3a <__fflush_r+0x26>
    4c30:	0f05                	nop 
    4c32:	7a86                	clear.d r10
    4c34:	6e0e                	pop r0
    4c36:	04e2                	addq 4,sp
    4c38:	3e0d                	jump [sp+]
    4c3a:	60a6                	move.d r0,r10
    4c3c:	3fbd a04a 0000      	jsr 4aa0 <___sflush_r>
    4c42:	6e0e                	pop r0
    4c44:	04e2                	addq 4,sp
    4c46:	3e0d                	jump [sp+]
    4c48:	04e1 ebbb           	move.d r11,[sp+4]
    4c4c:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    4c52:	04e1 6bba           	move.d [sp+4],r11
    4c56:	d3e0                	ba 4c2a <__fflush_r+0x16>
    4c58:	0f05                	nop 

00004c5a <_fflush>:
    4c5a:	84e2                	subq 4,sp
    4c5c:	7eba                	move srp,[sp]
    4c5e:	6aa6                	test.d r10
    4c60:	1230                	beq 4c74 <_fflush+0x1a>
    4c62:	6ab6                	move.d r10,r11
    4c64:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    4c6a:	6aaa                	move.d [r10],r10
    4c6c:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    4c72:	3e0d                	jump [sp+]
    4c74:	6fae eaab 0000      	move.d abea <__global_impure_ptr>,r10
    4c7a:	6aaa                	move.d [r10],r10
    4c7c:	6fbe 144c 0000      	move.d 4c14 <__fflush_r>,r11
    4c82:	3fbd 3a52 0000      	jsr 523a <__fwalk_reent>
    4c88:	3e0d                	jump [sp+]
	...

00004c8c <___fp_lock>:
    4c8c:	7fb6                	ret 
    4c8e:	7a86                	clear.d r10

00004c90 <___fp_unlock>:
    4c90:	7fb6                	ret 
    4c92:	7a86                	clear.d r10

00004c94 <__cleanup_r>:
    4c94:	84e2                	subq 4,sp
    4c96:	7eba                	move srp,[sp]
    4c98:	6fbe 227b 0000      	move.d 7b22 <_fclose>,r11
    4c9e:	3fbd e051 0000      	jsr 51e0 <__fwalk>
    4ca4:	3e0d                	jump [sp+]

00004ca6 <_std.isra.0>:
    4ca6:	84e2                	subq 4,sp
    4ca8:	7eba                	move srp,[sp]
    4caa:	84e2                	subq 4,sp
    4cac:	ee0b                	move.d r0,[sp]
    4cae:	6a06                	move.d r10,r0
    4cb0:	7a8a                	clear.d [r10]
    4cb2:	04a1 708a           	clear.d [r10+4]
    4cb6:	08a1 708a           	clear.d [r10+8]
    4cba:	0ca1 dbbb           	move.w r11,[r10+12]
    4cbe:	64a1 708a           	clear.d [r10+100]
    4cc2:	0ea1 dccb           	move.w r12,[r10+14]
    4cc6:	10a1 708a           	clear.d [r10+16]
    4cca:	14a1 708a           	clear.d [r10+20]
    4cce:	18a1 708a           	clear.d [r10+24]
    4cd2:	0fac 5c00           	addu.b 0x5c,r10
    4cd6:	7b86                	clear.d r11
    4cd8:	48c2                	moveq 8,r12
    4cda:	3fbd 7c15 0000      	jsr 157c <_memset>
    4ce0:	1c01 e00b           	move.d r0,[r0+28]
    4ce4:	6f9e d068 0000      	move.d 68d0 <___sread>,r9
    4cea:	2001 e99b           	move.d r9,[r0+32]
    4cee:	6f9e 0a69 0000      	move.d 690a <___swrite>,r9
    4cf4:	2401 e99b           	move.d r9,[r0+36]
    4cf8:	6f9e 5069 0000      	move.d 6950 <___sseek>,r9
    4cfe:	2801 e99b           	move.d r9,[r0+40]
    4d02:	6f9e 8a69 0000      	move.d 698a <___sclose>,r9
    4d08:	2c01 e99b           	move.d r9,[r0+44]
    4d0c:	6e0e                	pop r0
    4d0e:	3e0d                	jump [sp+]

00004d10 <___sfmoreglue>:
    4d10:	84e2                	subq 4,sp
    4d12:	7eba                	move srp,[sp]
    4d14:	8ce2                	subq 12,sp
    4d16:	fe2b                	movem r2,[sp]
    4d18:	6b16                	move.d r11,r1
    4d1a:	6b26                	move.d r11,r2
    4d1c:	2b26                	add.d r11,r2
    4d1e:	2b26                	add.d r11,r2
    4d20:	6b96                	move.d r11,r9
    4d22:	2925                	addi r2.d,r9
    4d24:	6926                	move.d r9,r2
    4d26:	c323                	lslq 3,r2
    4d28:	62b6                	move.d r2,r11
    4d2a:	0cb2                	addq 12,r11
    4d2c:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    4d32:	6aa6                	test.d r10
    4d34:	1830                	beq 4d4e <___sfmoreglue+0x3e>
    4d36:	6a06                	move.d r10,r0
    4d38:	0ca2                	addq 12,r10
    4d3a:	708a                	clear.d [r0]
    4d3c:	0401 e11b           	move.d r1,[r0+4]
    4d40:	0801 eaab           	move.d r10,[r0+8]
    4d44:	7b86                	clear.d r11
    4d46:	62c6                	move.d r2,r12
    4d48:	3fbd 7c15 0000      	jsr 157c <_memset>
    4d4e:	60a6                	move.d r0,r10
    4d50:	be2f                	movem [sp+],r2
    4d52:	3e0d                	jump [sp+]

00004d54 <__cleanup>:
    4d54:	84e2                	subq 4,sp
    4d56:	7eba                	move srp,[sp]
    4d58:	6fae eaab 0000      	move.d abea <__global_impure_ptr>,r10
    4d5e:	6aaa                	move.d [r10],r10
    4d60:	3fbd 944c 0000      	jsr 4c94 <__cleanup_r>
    4d66:	3e0d                	jump [sp+]

00004d68 <___sinit>:
    4d68:	84e2                	subq 4,sp
    4d6a:	7eba                	move srp,[sp]
    4d6c:	88e2                	subq 8,sp
    4d6e:	fe1b                	movem r1,[sp]
    4d70:	35a1 a00b           	test.d [r10+53]
    4d74:	0630                	beq 4d7c <___sinit+0x14>
    4d76:	6a06                	move.d r10,r0
    4d78:	be1f                	movem [sp+],r1
    4d7a:	3e0d                	jump [sp+]
    4d7c:	6f9e 944c 0000      	move.d 4c94 <__cleanup_r>,r9
    4d82:	39a1 e99b           	move.d r9,[r10+57]
    4d86:	4192                	moveq 1,r9
    4d88:	35a1 e99b           	move.d r9,[r10+53]
    4d8c:	5fad dd02 708a      	clear.d [r10+733]
    4d92:	4f9e 0300           	move.b 0x3,r9
    4d96:	5fad e102 e99b      	move.d r9,[r10+737]
    4d9c:	6a96                	move.d r10,r9
    4d9e:	1f9c e902           	addu.w 0x2e9,r9
    4da2:	5fad e502 e99b      	move.d r9,[r10+741]
    4da8:	6f1e a64c 0000      	move.d 4ca6 <_std.isra.0>,r1
    4dae:	04a1 6aaa           	move.d [r10+4],r10
    4db2:	44b2                	moveq 4,r11
    4db4:	7c86                	clear.d r12
    4db6:	b1b9                	jsr r1
    4db8:	0801 6aaa           	move.d [r0+8],r10
    4dbc:	49b2                	moveq 9,r11
    4dbe:	41c2                	moveq 1,r12
    4dc0:	b1b9                	jsr r1
    4dc2:	0c01 6aaa           	move.d [r0+12],r10
    4dc6:	52b2                	moveq 18,r11
    4dc8:	42c2                	moveq 2,r12
    4dca:	b1b9                	jsr r1
    4dcc:	be1f                	movem [sp+],r1
    4dce:	3e0d                	jump [sp+]

00004dd0 <___sfp>:
    4dd0:	84e2                	subq 4,sp
    4dd2:	7eba                	move srp,[sp]
    4dd4:	90e2                	subq 16,sp
    4dd6:	fe3b                	movem r3,[sp]
    4dd8:	6f1e eaab 0000      	move.d abea <__global_impure_ptr>,r1
    4dde:	611a                	move.d [r1],r1
    4de0:	3511 a00b           	test.d [r1+53]
    4de4:	8830                	beq 4e6e <___sfp+0x9e>
    4de6:	6a26                	move.d r10,r2
    4de8:	1f1c dd02           	addu.w 0x2dd,r1
    4dec:	6f3e 104d 0000      	move.d 4d10 <___sfmoreglue>,r3
    4df2:	0811 600a           	move.d [r1+8],r0
    4df6:	0411 699a           	move.d [r1+4],r9
    4dfa:	8192                	subq 1,r9
    4dfc:	1060                	bpl 4e0e <___sfp+0x3e>
    4dfe:	0f05                	nop 
    4e00:	62e0                	ba 4e64 <___sfp+0x94>
    4e02:	61aa                	move.d [r1],r10
    4e04:	0f0c 6800           	addu.b 0x68,r0
    4e08:	ff92                	cmpq -1,r9
    4e0a:	5630                	beq 4e62 <___sfp+0x92>
    4e0c:	0f05                	nop 
    4e0e:	0c01 900b           	test.w [r0+12]
    4e12:	f120                	bne 4e04 <___sfp+0x34>
    4e14:	8192                	subq 1,r9
    4e16:	7f92                	moveq -1,r9
    4e18:	0e01 d99b           	move.w r9,[r0+14]
    4e1c:	4192                	moveq 1,r9
    4e1e:	0c01 d99b           	move.w r9,[r0+12]
    4e22:	6401 708a           	clear.d [r0+100]
    4e26:	708a                	clear.d [r0]
    4e28:	0801 708a           	clear.d [r0+8]
    4e2c:	0401 708a           	clear.d [r0+4]
    4e30:	1001 708a           	clear.d [r0+16]
    4e34:	1401 708a           	clear.d [r0+20]
    4e38:	1801 708a           	clear.d [r0+24]
    4e3c:	60a6                	move.d r0,r10
    4e3e:	0fac 5c00           	addu.b 0x5c,r10
    4e42:	7b86                	clear.d r11
    4e44:	48c2                	moveq 8,r12
    4e46:	3fbd 7c15 0000      	jsr 157c <_memset>
    4e4c:	3001 708a           	clear.d [r0+48]
    4e50:	3401 708a           	clear.d [r0+52]
    4e54:	4401 708a           	clear.d [r0+68]
    4e58:	4801 708a           	clear.d [r0+72]
    4e5c:	60a6                	move.d r0,r10
    4e5e:	be3f                	movem [sp+],r3
    4e60:	3e0d                	jump [sp+]
    4e62:	61aa                	move.d [r1],r10
    4e64:	6aa6                	test.d r10
    4e66:	1230                	beq 4e7a <___sfp+0xaa>
    4e68:	44b2                	moveq 4,r11
    4e6a:	87e0                	ba 4df2 <___sfp+0x22>
    4e6c:	6a16                	move.d r10,r1
    4e6e:	61a6                	move.d r1,r10
    4e70:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    4e76:	71e0                	ba 4de8 <___sfp+0x18>
    4e78:	0f05                	nop 
    4e7a:	62a6                	move.d r2,r10
    4e7c:	b3b9                	jsr r3
    4e7e:	6aa6                	test.d r10
    4e80:	e920                	bne 4e6a <___sfp+0x9a>
    4e82:	e1ab                	move.d r10,[r1]
    4e84:	4c92                	moveq 12,r9
    4e86:	e29b                	move.d r9,[r2]
    4e88:	d3e0                	ba 4e5c <___sfp+0x8c>
    4e8a:	7086                	clear.d r0

00004e8c <___sfp_lock_acquire>:
    4e8c:	7fb6                	ret 
    4e8e:	0f05                	nop 

00004e90 <___sfp_lock_release>:
    4e90:	7fb6                	ret 
    4e92:	0f05                	nop 

00004e94 <___sinit_lock_acquire>:
    4e94:	7fb6                	ret 
    4e96:	0f05                	nop 

00004e98 <___sinit_lock_release>:
    4e98:	7fb6                	ret 
    4e9a:	0f05                	nop 

00004e9c <___fp_lock_all>:
    4e9c:	84e2                	subq 4,sp
    4e9e:	7eba                	move srp,[sp]
    4ea0:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    4ea6:	6aaa                	move.d [r10],r10
    4ea8:	6fbe 8c4c 0000      	move.d 4c8c <___fp_lock>,r11
    4eae:	3fbd e051 0000      	jsr 51e0 <__fwalk>
    4eb4:	3e0d                	jump [sp+]

00004eb6 <___fp_unlock_all>:
    4eb6:	84e2                	subq 4,sp
    4eb8:	7eba                	move srp,[sp]
    4eba:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    4ec0:	6aaa                	move.d [r10],r10
    4ec2:	6fbe 904c 0000      	move.d 4c90 <___fp_unlock>,r11
    4ec8:	3fbd e051 0000      	jsr 51e0 <__fwalk>
    4ece:	3e0d                	jump [sp+]

00004ed0 <__malloc_trim_r>:
    4ed0:	84e2                	subq 4,sp
    4ed2:	7eba                	move srp,[sp]
    4ed4:	90e2                	subq 16,sp
    4ed6:	fe3b                	movem r3,[sp]
    4ed8:	6a26                	move.d r10,r2
    4eda:	6b36                	move.d r11,r3
    4edc:	3fbd 905d 0000      	jsr 5d90 <___malloc_lock>
    4ee2:	6f9e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r9
    4ee8:	699a                	move.d [r9],r9
    4eea:	0491 611a           	move.d [r9+4],r1
    4eee:	3c13                	andq -4,r1
    4ef0:	6106                	move.d r1,r0
    4ef2:	1f0c ef0f           	addu.w 0xfef,r0
    4ef6:	a306                	sub.d r3,r0
    4ef8:	2f0f 00f0 ffff      	and.d 0xfffff000,r0
    4efe:	9f0c 0010           	subu.w 0x1000,r0
    4f02:	df0c ff0f           	cmpu.w 0xfff,r0
    4f06:	1cd0                	ble 4f24 <__malloc_trim_r+0x54>
    4f08:	7b86                	clear.d r11
    4f0a:	6f3e 9868 0000      	move.d 6898 <__sbrk_r>,r3
    4f10:	62a6                	move.d r2,r10
    4f12:	b3b9                	jsr r3
    4f14:	6f9e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r9
    4f1a:	699a                	move.d [r9],r9
    4f1c:	2196                	add.d r1,r9
    4f1e:	e9a6                	cmp.d r9,r10
    4f20:	1030                	beq 4f32 <__malloc_trim_r+0x62>
    4f22:	a0b5                	neg.d r0,r11
    4f24:	62a6                	move.d r2,r10
    4f26:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    4f2c:	7a86                	clear.d r10
    4f2e:	be3f                	movem [sp+],r3
    4f30:	3e0d                	jump [sp+]
    4f32:	62a6                	move.d r2,r10
    4f34:	b3b9                	jsr r3
    4f36:	ffa2                	cmpq -1,r10
    4f38:	3030                	beq 4f6a <__malloc_trim_r+0x9a>
    4f3a:	a016                	sub.d r0,r1
    4f3c:	4113                	orq 1,r1
    4f3e:	6f9e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r9
    4f44:	699a                	move.d [r9],r9
    4f46:	0491 e11b           	move.d r1,[r9+4]
    4f4a:	6f9e c8b8 0000      	move.d b8c8 <___malloc_current_mallinfo>,r9
    4f50:	699a                	move.d [r9],r9
    4f52:	a096                	sub.d r0,r9
    4f54:	7f0d c8b8 0000 e99b 	move.d r9,[b8c8 <___malloc_current_mallinfo>]
    4f5c:	62a6                	move.d r2,r10
    4f5e:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    4f64:	41a2                	moveq 1,r10
    4f66:	be3f                	movem [sp+],r3
    4f68:	3e0d                	jump [sp+]
    4f6a:	62a6                	move.d r2,r10
    4f6c:	7b86                	clear.d r11
    4f6e:	b3b9                	jsr r3
    4f70:	6f9e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r9
    4f76:	699a                	move.d [r9],r9
    4f78:	6ad6                	move.d r10,r13
    4f7a:	a9d6                	sub.d r9,r13
    4f7c:	cfd2                	cmpq 15,r13
    4f7e:	a5d0                	ble 4f24 <__malloc_trim_r+0x54>
    4f80:	41d3                	orq 1,r13
    4f82:	7f0d a8b4 0000 aaaa 	sub.d [b4a8 <___malloc_sbrk_base>],r10
    4f8a:	7f0d c8b8 0000 eaab 	move.d r10,[b8c8 <___malloc_current_mallinfo>]
    4f92:	0491 eddb           	move.d r13,[r9+4]
    4f96:	8fe0                	ba 4f26 <__malloc_trim_r+0x56>
    4f98:	62a6                	move.d r2,r10

00004f9a <__free_r>:
    4f9a:	84e2                	subq 4,sp
    4f9c:	7eba                	move srp,[sp]
    4f9e:	8ce2                	subq 12,sp
    4fa0:	fe2b                	movem r2,[sp]
    4fa2:	6a26                	move.d r10,r2
    4fa4:	6bb6                	test.d r11
    4fa6:	d230                	beq 507a <__free_r+0xe0>
    4fa8:	6b16                	move.d r11,r1
    4faa:	3fbd 905d 0000      	jsr 5d90 <___malloc_lock>
    4fb0:	6106                	move.d r1,r0
    4fb2:	8802                	subq 8,r0
    4fb4:	fc11 6bba           	move.d [r1-4],r11
    4fb8:	6b96                	move.d r11,r9
    4fba:	3e93                	andq -2,r9
    4fbc:	60d6                	move.d r0,r13
    4fbe:	29d6                	add.d r9,r13
    4fc0:	04d1 6cca           	move.d [r13+4],r12
    4fc4:	7f0d b8b4 0000 edda 	cmp.d [b4b8 <___malloc_av_+0x8>],r13
    4fcc:	ff3d 4801           	beq 5118 <__free_r+0x17e>
    4fd0:	3cc3                	andq -4,r12
    4fd2:	04d1 eccb           	move.d r12,[r13+4]
    4fd6:	80b3                	btstq 0,r11
    4fd8:	a4a0                	bge 507e <__free_r+0xe4>
    4fda:	0f05                	nop 
    4fdc:	7b86                	clear.d r11
    4fde:	6da6                	move.d r13,r10
    4fe0:	2ca6                	add.d r12,r10
    4fe2:	04a1 6aaa           	move.d [r10+4],r10
    4fe6:	80a3                	btstq 0,r10
    4fe8:	1ab0                	blt 5004 <__free_r+0x6a>
    4fea:	0f05                	nop 
    4fec:	2c96                	add.d r12,r9
    4fee:	08d1 6cca           	move.d [r13+8],r12
    4ff2:	6bb6                	test.d r11
    4ff4:	f030                	beq 50e6 <__free_r+0x14c>
    4ff6:	0f05                	nop 
    4ff8:	0cd1 6dda           	move.d [r13+12],r13
    4ffc:	0cc1 eddb           	move.d r13,[r12+12]
    5000:	08d1 eccb           	move.d r12,[r13+8]
    5004:	69d6                	move.d r9,r13
    5006:	41d3                	orq 1,r13
    5008:	0401 eddb           	move.d r13,[r0+4]
    500c:	4095 e99b           	move.d r9,[r0+r9.b]
    5010:	6bb6                	test.d r11
    5012:	6020                	bne 5074 <__free_r+0xda>
    5014:	62a6                	move.d r2,r10
    5016:	df9c ff01           	cmpu.w 0x1ff,r9
    501a:	8880                	bls 50a4 <__free_r+0x10a>
    501c:	41d2                	moveq 1,r13
    501e:	69d6                	move.d r9,r13
    5020:	e9d3                	lsrq 9,r13
    5022:	c4d2                	cmpq 4,r13
    5024:	ff9d 3c01           	bhi 5164 <__free_r+0x1ca>
    5028:	d4d2                	cmpq 20,r13
    502a:	69c6                	move.d r9,r12
    502c:	e6c3                	lsrq 6,r12
    502e:	38c2                	addq 56,r12
    5030:	6cb6                	move.d r12,r11
    5032:	2cb6                	add.d r12,r11
    5034:	c2b3                	lslq 2,r11
    5036:	2fbe b0b4 0000      	add.d b4b0 <___malloc_av_>,r11
    503c:	08b1 6dda           	move.d [r11+8],r13
    5040:	ebd6                	cmp.d r11,r13
    5042:	ff3d 2e01           	beq 5174 <__free_r+0x1da>
    5046:	a2c3                	asrq 2,r12
    5048:	04d1 6cca           	move.d [r13+4],r12
    504c:	3cc3                	andq -4,r12
    504e:	ec96                	cmp.d r12,r9
    5050:	0c00                	bcc 505e <__free_r+0xc4>
    5052:	0f05                	nop 
    5054:	08d1 6dda           	move.d [r13+8],r13
    5058:	edb6                	cmp.d r13,r11
    505a:	ed20                	bne 5048 <__free_r+0xae>
    505c:	0f05                	nop 
    505e:	0cd1 699a           	move.d [r13+12],r9
    5062:	0c01 e99b           	move.d r9,[r0+12]
    5066:	0801 eddb           	move.d r13,[r0+8]
    506a:	0891 e00b           	move.d r0,[r9+8]
    506e:	0cd1 e00b           	move.d r0,[r13+12]
    5072:	62a6                	move.d r2,r10
    5074:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    507a:	be2f                	movem [sp+],r2
    507c:	3e0d                	jump [sp+]
    507e:	f811 6bba           	move.d [r1-8],r11
    5082:	ab06                	sub.d r11,r0
    5084:	2b96                	add.d r11,r9
    5086:	0801 6aaa           	move.d [r0+8],r10
    508a:	efae b8b4 0000      	cmp.d b4b8 <___malloc_av_+0x8>,r10
    5090:	4d30                	beq 4fde <__free_r+0x44>
    5092:	41b2                	moveq 1,r11
    5094:	0c01 6bba           	move.d [r0+12],r11
    5098:	0ca1 ebbb           	move.d r11,[r10+12]
    509c:	08b1 eaab           	move.d r10,[r11+8]
    50a0:	3de0                	ba 4fde <__free_r+0x44>
    50a2:	7b86                	clear.d r11
    50a4:	e393                	lsrq 3,r9
    50a6:	69c6                	move.d r9,r12
    50a8:	a2c3                	asrq 2,r12
    50aa:	ecd4                	lsl.d r12,r13
    50ac:	7f0d b4b4 0000 6ddb 	or.d [b4b4 <___malloc_av_+0x4>],r13
    50b4:	7f0d b4b4 0000 eddb 	move.d r13,[b4b4 <___malloc_av_+0x4>]
    50bc:	2996                	add.d r9,r9
    50be:	c293                	lslq 2,r9
    50c0:	2f9e b0b4 0000      	add.d b4b0 <___malloc_av_>,r9
    50c6:	0891 6dda           	move.d [r9+8],r13
    50ca:	0c01 e99b           	move.d r9,[r0+12]
    50ce:	0801 eddb           	move.d r13,[r0+8]
    50d2:	0891 e00b           	move.d r0,[r9+8]
    50d6:	0cd1 e00b           	move.d r0,[r13+12]
    50da:	62a6                	move.d r2,r10
    50dc:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    50e2:	99e0                	ba 507c <__free_r+0xe2>
    50e4:	be2f                	movem [sp+],r2
    50e6:	efce b8b4 0000      	cmp.d b4b8 <___malloc_av_+0x8>,r12
    50ec:	0b20                	bne 4ff8 <__free_r+0x5e>
    50ee:	62a6                	move.d r2,r10
    50f0:	7f0d c4b4 0000 e00b 	move.d r0,[b4c4 <___malloc_av_+0x14>]
    50f8:	7f0d c0b4 0000 e00b 	move.d r0,[b4c0 <___malloc_av_+0x10>]
    5100:	0c01 eccb           	move.d r12,[r0+12]
    5104:	0801 eccb           	move.d r12,[r0+8]
    5108:	69d6                	move.d r9,r13
    510a:	41d3                	orq 1,r13
    510c:	0401 eddb           	move.d r13,[r0+4]
    5110:	4095 e99b           	move.d r9,[r0+r9.b]
    5114:	5fe0                	ba 5074 <__free_r+0xda>
    5116:	0f05                	nop 
    5118:	80b3                	btstq 0,r11
    511a:	1ab0                	blt 5136 <__free_r+0x19c>
    511c:	2c96                	add.d r12,r9
    511e:	f811 6dda           	move.d [r1-8],r13
    5122:	ad06                	sub.d r13,r0
    5124:	2d96                	add.d r13,r9
    5126:	0c01 6cca           	move.d [r0+12],r12
    512a:	0801 6dda           	move.d [r0+8],r13
    512e:	0cd1 eccb           	move.d r12,[r13+12]
    5132:	08c1 eddb           	move.d r13,[r12+8]
    5136:	69d6                	move.d r9,r13
    5138:	41d3                	orq 1,r13
    513a:	0401 eddb           	move.d r13,[r0+4]
    513e:	7f0d b8b4 0000 e00b 	move.d r0,[b4b8 <___malloc_av_+0x8>]
    5146:	7f0d acb4 0000 e99a 	cmp.d [b4ac <___malloc_trim_threshold>],r9
    514e:	2310                	bcs 5072 <__free_r+0xd8>
    5150:	62a6                	move.d r2,r10
    5152:	6fbe f8b8 0000      	move.d b8f8 <___malloc_top_pad>,r11
    5158:	6bba                	move.d [r11],r11
    515a:	3fbd d04e 0000      	jsr 4ed0 <__malloc_trim_r>
    5160:	13e0                	ba 5074 <__free_r+0xda>
    5162:	62a6                	move.d r2,r10
    5164:	2890                	bhi 518e <__free_r+0x1f4>
    5166:	6dc6                	move.d r13,r12
    5168:	0fcc 5b00           	addu.b 0x5b,r12
    516c:	6cb6                	move.d r12,r11
    516e:	ffed c2fe           	ba 5034 <__free_r+0x9a>
    5172:	2cb6                	add.d r12,r11
    5174:	4192                	moveq 1,r9
    5176:	ec94                	lsl.d r12,r9
    5178:	7f0d b4b4 0000 699b 	or.d [b4b4 <___malloc_av_+0x4>],r9
    5180:	7f0d b4b4 0000 e99b 	move.d r9,[b4b4 <___malloc_av_+0x4>]
    5188:	ffed d6fe           	ba 5062 <__free_r+0xc8>
    518c:	6d96                	move.d r13,r9
    518e:	cfdc 5400           	cmpu.b 0x54,r13
    5192:	1090                	bhi 51a4 <__free_r+0x20a>
    5194:	69c6                	move.d r9,r12
    5196:	ecc3                	lsrq 12,r12
    5198:	0fcc 6e00           	addu.b 0x6e,r12
    519c:	6cb6                	move.d r12,r11
    519e:	ffed 92fe           	ba 5034 <__free_r+0x9a>
    51a2:	2cb6                	add.d r12,r11
    51a4:	dfdc 5401           	cmpu.w 0x154,r13
    51a8:	0e90                	bhi 51b8 <__free_r+0x21e>
    51aa:	efc3                	lsrq 15,r12
    51ac:	0fcc 7700           	addu.b 0x77,r12
    51b0:	6cb6                	move.d r12,r11
    51b2:	ffed 7efe           	ba 5034 <__free_r+0x9a>
    51b6:	2cb6                	add.d r12,r11
    51b8:	dfdc 5405           	cmpu.w 0x554,r13
    51bc:	1290                	bhi 51d0 <__free_r+0x236>
    51be:	0f05                	nop 
    51c0:	69c6                	move.d r9,r12
    51c2:	f2c3                	lsrq 18,r12
    51c4:	0fcc 7c00           	addu.b 0x7c,r12
    51c8:	6cb6                	move.d r12,r11
    51ca:	ffed 66fe           	ba 5034 <__free_r+0x9a>
    51ce:	2cb6                	add.d r12,r11
    51d0:	4fbc fc00           	movu.b 0xfc,r11
    51d4:	4fcc 7e00           	movu.b 0x7e,r12
    51d8:	ffed 5afe           	ba 5036 <__free_r+0x9c>
    51dc:	c2b3                	lslq 2,r11
	...

000051e0 <__fwalk>:
    51e0:	84e2                	subq 4,sp
    51e2:	7eba                	move srp,[sp]
    51e4:	94e2                	subq 20,sp
    51e6:	fe4b                	movem r4,[sp]
    51e8:	6b46                	move.d r11,r4
    51ea:	6a26                	move.d r10,r2
    51ec:	1f2c dd02           	addu.w 0x2dd,r2
    51f0:	4230                	beq 5234 <__fwalk+0x54>
    51f2:	7386                	clear.d r3
    51f4:	0821 600a           	move.d [r2+8],r0
    51f8:	0421 611a           	move.d [r2+4],r1
    51fc:	8112                	subq 1,r1
    51fe:	2e70                	bmi 522e <__fwalk+0x4e>
    5200:	0f05                	nop 
    5202:	0c01 599a           	move.w [r0+12],r9
    5206:	1a30                	beq 5222 <__fwalk+0x42>
    5208:	0f05                	nop 
    520a:	df9e 0100           	cmp.w 0x1,r9
    520e:	1280                	bls 5222 <__fwalk+0x42>
    5210:	0f05                	nop 
    5212:	0e01 599a           	move.w [r0+14],r9
    5216:	df9e ffff           	cmp.w 0xffff,r9
    521a:	0630                	beq 5222 <__fwalk+0x42>
    521c:	60a6                	move.d r0,r10
    521e:	b4b9                	jsr r4
    5220:	6a37                	or.d r10,r3
    5222:	0f0c 6800           	addu.b 0x68,r0
    5226:	8112                	subq 1,r1
    5228:	ff12                	cmpq -1,r1
    522a:	d720                	bne 5202 <__fwalk+0x22>
    522c:	0f05                	nop 
    522e:	622a                	move.d [r2],r2
    5230:	c320                	bne 51f4 <__fwalk+0x14>
    5232:	0f05                	nop 
    5234:	63a6                	move.d r3,r10
    5236:	be4f                	movem [sp+],r4
    5238:	3e0d                	jump [sp+]

0000523a <__fwalk_reent>:
    523a:	84e2                	subq 4,sp
    523c:	7eba                	move srp,[sp]
    523e:	98e2                	subq 24,sp
    5240:	fe5b                	movem r5,[sp]
    5242:	6a46                	move.d r10,r4
    5244:	6b56                	move.d r11,r5
    5246:	6a26                	move.d r10,r2
    5248:	1f2c dd02           	addu.w 0x2dd,r2
    524c:	4430                	beq 5292 <__fwalk_reent+0x58>
    524e:	7386                	clear.d r3
    5250:	0821 600a           	move.d [r2+8],r0
    5254:	0421 611a           	move.d [r2+4],r1
    5258:	8112                	subq 1,r1
    525a:	3070                	bmi 528c <__fwalk_reent+0x52>
    525c:	0f05                	nop 
    525e:	0c01 599a           	move.w [r0+12],r9
    5262:	1c30                	beq 5280 <__fwalk_reent+0x46>
    5264:	0f05                	nop 
    5266:	df9e 0100           	cmp.w 0x1,r9
    526a:	1480                	bls 5280 <__fwalk_reent+0x46>
    526c:	0f05                	nop 
    526e:	0e01 599a           	move.w [r0+14],r9
    5272:	df9e ffff           	cmp.w 0xffff,r9
    5276:	0830                	beq 5280 <__fwalk_reent+0x46>
    5278:	64a6                	move.d r4,r10
    527a:	60b6                	move.d r0,r11
    527c:	b5b9                	jsr r5
    527e:	6a37                	or.d r10,r3
    5280:	0f0c 6800           	addu.b 0x68,r0
    5284:	8112                	subq 1,r1
    5286:	ff12                	cmpq -1,r1
    5288:	d520                	bne 525e <__fwalk_reent+0x24>
    528a:	0f05                	nop 
    528c:	622a                	move.d [r2],r2
    528e:	c120                	bne 5250 <__fwalk_reent+0x16>
    5290:	0f05                	nop 
    5292:	63a6                	move.d r3,r10
    5294:	be5f                	movem [sp+],r5
    5296:	3e0d                	jump [sp+]

00005298 <__setlocale_r>:
    5298:	84e2                	subq 4,sp
    529a:	7eba                	move srp,[sp]
    529c:	88e2                	subq 8,sp
    529e:	fe1b                	movem r1,[sp]
    52a0:	6cc6                	test.d r12
    52a2:	1830                	beq 52bc <__setlocale_r+0x24>
    52a4:	6c06                	move.d r12,r0
    52a6:	6f1e 9c69 0000      	move.d 699c <_strcmp>,r1
    52ac:	6ca6                	move.d r12,r10
    52ae:	6fbe 5cac 0000      	move.d ac5c <_zeroes.4007+0x1e>,r11
    52b4:	b1b9                	jsr r1
    52b6:	6aa6                	test.d r10
    52b8:	0c20                	bne 52c6 <__setlocale_r+0x2e>
    52ba:	0f05                	nop 
    52bc:	6fae eeab 0000      	move.d abee <__global_impure_ptr+0x4>,r10
    52c2:	be1f                	movem [sp+],r1
    52c4:	3e0d                	jump [sp+]
    52c6:	60a6                	move.d r0,r10
    52c8:	6fbe eeab 0000      	move.d abee <__global_impure_ptr+0x4>,r11
    52ce:	b1b9                	jsr r1
    52d0:	6aa6                	test.d r10
    52d2:	e930                	beq 52bc <__setlocale_r+0x24>
    52d4:	0f05                	nop 
    52d6:	60a6                	move.d r0,r10
    52d8:	6fbe 2aac 0000      	move.d ac2a <__global_impure_ptr+0x40>,r11
    52de:	b1b9                	jsr r1
    52e0:	6aa6                	test.d r10
    52e2:	d930                	beq 52bc <__setlocale_r+0x24>
    52e4:	0f05                	nop 
    52e6:	7a86                	clear.d r10
    52e8:	be1f                	movem [sp+],r1
    52ea:	3e0d                	jump [sp+]

000052ec <___locale_charset>:
    52ec:	6fae 32b4 0000      	move.d b432 <_lc_ctype_charset>,r10
    52f2:	7fb6                	ret 
    52f4:	0f05                	nop 

000052f6 <___locale_mb_cur_max>:
    52f6:	6fae 2eb4 0000      	move.d b42e <___mb_cur_max>,r10
    52fc:	7fb6                	ret 
    52fe:	6aaa                	move.d [r10],r10

00005300 <___locale_msgcharset>:
    5300:	6fae 52b4 0000      	move.d b452 <_lc_message_charset>,r10
    5306:	7fb6                	ret 
    5308:	0f05                	nop 

0000530a <___locale_cjk_lang>:
    530a:	7fb6                	ret 
    530c:	7a86                	clear.d r10

0000530e <__localeconv_r>:
    530e:	6fae 72b4 0000      	move.d b472 <_lconv>,r10
    5314:	7fb6                	ret 
    5316:	0f05                	nop 

00005318 <_setlocale>:
    5318:	84e2                	subq 4,sp
    531a:	7eba                	move srp,[sp]
    531c:	6a96                	move.d r10,r9
    531e:	6bc6                	move.d r11,r12
    5320:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    5326:	6aaa                	move.d [r10],r10
    5328:	69b6                	move.d r9,r11
    532a:	3fbd 9852 0000      	jsr 5298 <__setlocale_r>
    5330:	3e0d                	jump [sp+]

00005332 <_localeconv>:
    5332:	6fae 72b4 0000      	move.d b472 <_lconv>,r10
    5338:	7fb6                	ret 
    533a:	0f05                	nop 

0000533c <___smakebuf_r>:
    533c:	84e2                	subq 4,sp
    533e:	7eba                	move srp,[sp]
    5340:	8fec 4c00           	subu.b 0x4c,sp
    5344:	fe3b                	movem r3,[sp]
    5346:	6a16                	move.d r10,r1
    5348:	0cb1 599a           	move.w [r11+12],r9
    534c:	8193                	btstq 1,r9
    534e:	a6b0                	blt 53f6 <___smakebuf_r+0xba>
    5350:	6b06                	move.d r11,r0
    5352:	0eb1 5bba           	move.w [r11+14],r11
    5356:	40b0                	blt 5398 <___smakebuf_r+0x5c>
    5358:	7bb4                	movs.w r11,r11
    535a:	6ec6                	move.d sp,r12
    535c:	10c2                	addq 16,r12
    535e:	3fbd 787c 0000      	jsr 7c78 <__fstat_r>
    5364:	6aa6                	test.d r10
    5366:	2cb0                	blt 5394 <___smakebuf_r+0x58>
    5368:	0f05                	nop 
    536a:	14e1 5998           	movu.w [sp+20],r9
    536e:	1f9f 00f0           	and.w 0xf000,r9
    5372:	df9c 0020           	cmpu.w 0x2000,r9
    5376:	3335                	seq r3
    5378:	df9c 0080           	cmpu.w 0x8000,r9
    537c:	9830                	beq 5416 <___smakebuf_r+0xda>
    537e:	0f05                	nop 
    5380:	0c01 599a           	move.w [r0+12],r9
    5384:	5f9f 0008           	or.w 0x800,r9
    5388:	0c01 d99b           	move.w r9,[r0+12]
    538c:	5f2c 0004           	movu.w 0x400,r2
    5390:	1ce0                	ba 53ae <___smakebuf_r+0x72>
    5392:	61a6                	move.d r1,r10
    5394:	0c01 599a           	move.w [r0+12],r9
    5398:	5f2c 0004           	movu.w 0x400,r2
    539c:	8793                	btstq 7,r9
    539e:	6eb0                	blt 540e <___smakebuf_r+0xd2>
    53a0:	0f05                	nop 
    53a2:	5f9f 0008           	or.w 0x800,r9
    53a6:	0c01 d99b           	move.w r9,[r0+12]
    53aa:	7386                	clear.d r3
    53ac:	61a6                	move.d r1,r10
    53ae:	62b6                	move.d r2,r11
    53b0:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    53b6:	6aa6                	test.d r10
    53b8:	2e30                	beq 53e8 <___smakebuf_r+0xac>
    53ba:	0f05                	nop 
    53bc:	6f9e 944c 0000      	move.d 4c94 <__cleanup_r>,r9
    53c2:	3911 e99b           	move.d r9,[r1+57]
    53c6:	0c01 599a           	move.w [r0+12],r9
    53ca:	5f9f 8000           	or.w 0x80,r9
    53ce:	0c01 d99b           	move.w r9,[r0+12]
    53d2:	e0ab                	move.d r10,[r0]
    53d4:	1001 eaab           	move.d r10,[r0+16]
    53d8:	1401 e22b           	move.d r2,[r0+20]
    53dc:	6336                	test.d r3
    53de:	5c20                	bne 543c <___smakebuf_r+0x100>
    53e0:	61a6                	move.d r1,r10
    53e2:	be3f                	movem [sp+],r3
    53e4:	3ce2                	addq 60,sp
    53e6:	3e0d                	jump [sp+]
    53e8:	0c01 599a           	move.w [r0+12],r9
    53ec:	8993                	btstq 9,r9
    53ee:	f3b0                	blt 53e2 <___smakebuf_r+0xa6>
    53f0:	4293                	orq 2,r9
    53f2:	0c01 d99b           	move.w r9,[r0+12]
    53f6:	6096                	move.d r0,r9
    53f8:	0f9c 4300           	addu.b 0x43,r9
    53fc:	e09b                	move.d r9,[r0]
    53fe:	1001 e99b           	move.d r9,[r0+16]
    5402:	4192                	moveq 1,r9
    5404:	1401 e99b           	move.d r9,[r0+20]
    5408:	be3f                	movem [sp+],r3
    540a:	3ce2                	addq 60,sp
    540c:	3e0d                	jump [sp+]
    540e:	5f2e 4000           	move.w 0x40,r2
    5412:	8fe0                	ba 53a2 <___smakebuf_r+0x66>
    5414:	0f05                	nop 
    5416:	2801 699a           	move.d [r0+40],r9
    541a:	ef9e 5069 0000      	cmp.d 6950 <___sseek>,r9
    5420:	5f20                	bne 5380 <___smakebuf_r+0x44>
    5422:	0f05                	nop 
    5424:	0c01 599a           	move.w [r0+12],r9
    5428:	5f9f 0004           	or.w 0x400,r9
    542c:	0c01 d99b           	move.w r9,[r0+12]
    5430:	5f9c 0004           	movu.w 0x400,r9
    5434:	4c01 e99b           	move.d r9,[r0+76]
    5438:	73e0                	ba 53ac <___smakebuf_r+0x70>
    543a:	6926                	move.d r9,r2
    543c:	0e01 7bb8           	movs.w [r0+14],r11
    5440:	3fbd e47f 0000      	jsr 7fe4 <__isatty_r>
    5446:	6aa6                	test.d r10
    5448:	9930                	beq 53e2 <___smakebuf_r+0xa6>
    544a:	0f05                	nop 
    544c:	0c01 599a           	move.w [r0+12],r9
    5450:	4193                	orq 1,r9
    5452:	0c01 d99b           	move.w r9,[r0+12]
    5456:	8de0                	ba 53e4 <___smakebuf_r+0xa8>
    5458:	be3f                	movem [sp+],r3
	...

0000545c <__malloc_r>:
    545c:	84e2                	subq 4,sp
    545e:	7eba                	move srp,[sp]
    5460:	a0e2                	subq 32,sp
    5462:	fe7b                	movem r7,[sp]
    5464:	6b16                	move.d r11,r1
    5466:	0b12                	addq 11,r1
    5468:	d612                	cmpq 22,r1
    546a:	6280                	bls 54ce <__malloc_r+0x72>
    546c:	6a26                	move.d r10,r2
    546e:	3813                	andq -8,r1
    5470:	64b0                	blt 54d6 <__malloc_r+0x7a>
    5472:	e1b6                	cmp.d r1,r11
    5474:	6290                	bhi 54d8 <__malloc_r+0x7c>
    5476:	4c92                	moveq 12,r9
    5478:	62a6                	move.d r2,r10
    547a:	3fbd 905d 0000      	jsr 5d90 <___malloc_lock>
    5480:	df1c f701           	cmpu.w 0x1f7,r1
    5484:	5a90                	bhi 54e0 <__malloc_r+0x84>
    5486:	61a6                	move.d r1,r10
    5488:	6196                	move.d r1,r9
    548a:	2f9e b0b4 0000      	add.d b4b0 <___malloc_av_>,r9
    5490:	0c91 600a           	move.d [r9+12],r0
    5494:	e906                	cmp.d r9,r0
    5496:	ff3d 9004           	beq 592a <__malloc_r+0x4ce>
    549a:	e3a3                	lsrq 3,r10
    549c:	0401 699a           	move.d [r0+4],r9
    54a0:	3c93                	andq -4,r9
    54a2:	0c01 6cca           	move.d [r0+12],r12
    54a6:	0801 6dda           	move.d [r0+8],r13
    54aa:	0cd1 eccb           	move.d r12,[r13+12]
    54ae:	08c1 eddb           	move.d r13,[r12+8]
    54b2:	2096                	add.d r0,r9
    54b4:	0491 6dda           	move.d [r9+4],r13
    54b8:	41d3                	orq 1,r13
    54ba:	0491 eddb           	move.d r13,[r9+4]
    54be:	62a6                	move.d r2,r10
    54c0:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    54c6:	60a6                	move.d r0,r10
    54c8:	08a2                	addq 8,r10
    54ca:	be7f                	movem [sp+],r7
    54cc:	3e0d                	jump [sp+]
    54ce:	5012                	moveq 16,r1
    54d0:	e1b6                	cmp.d r1,r11
    54d2:	a580                	bls 5478 <__malloc_r+0x1c>
    54d4:	0f05                	nop 
    54d6:	4c92                	moveq 12,r9
    54d8:	e29b                	move.d r9,[r2]
    54da:	7a86                	clear.d r10
    54dc:	be7f                	movem [sp+],r7
    54de:	3e0d                	jump [sp+]
    54e0:	e9a3                	lsrq 9,r10
    54e2:	ff3d 8601           	beq 566c <__malloc_r+0x210>
    54e6:	c4a2                	cmpq 4,r10
    54e8:	ff9d 2203           	bhi 580e <__malloc_r+0x3b2>
    54ec:	d4a2                	cmpq 20,r10
    54ee:	61a6                	move.d r1,r10
    54f0:	e6a3                	lsrq 6,r10
    54f2:	38a2                	addq 56,r10
    54f4:	6ac6                	move.d r10,r12
    54f6:	2ac6                	add.d r10,r12
    54f8:	c2c3                	lslq 2,r12
    54fa:	2fce b0b4 0000      	add.d b4b0 <___malloc_av_>,r12
    5500:	0cc1 600a           	move.d [r12+12],r0
    5504:	e0c6                	cmp.d r0,r12
    5506:	1420                	bne 551c <__malloc_r+0xc0>
    5508:	0f05                	nop 
    550a:	24e0                	ba 5530 <__malloc_r+0xd4>
    550c:	01a2                	addq 1,r10
    550e:	93a0                	bge 54a2 <__malloc_r+0x46>
    5510:	0f05                	nop 
    5512:	0c01 600a           	move.d [r0+12],r0
    5516:	e0c6                	cmp.d r0,r12
    5518:	1430                	beq 552e <__malloc_r+0xd2>
    551a:	0f05                	nop 
    551c:	0401 699a           	move.d [r0+4],r9
    5520:	3c93                	andq -4,r9
    5522:	69d6                	move.d r9,r13
    5524:	a1d6                	sub.d r1,r13
    5526:	cfd2                	cmpq 15,r13
    5528:	e5d0                	ble 550e <__malloc_r+0xb2>
    552a:	6dd6                	test.d r13
    552c:	81a2                	subq 1,r10
    552e:	01a2                	addq 1,r10
    5530:	6f0e c0b4 0000      	move.d b4c0 <___malloc_av_+0x10>,r0
    5536:	600a                	move.d [r0],r0
    5538:	ef0e b8b4 0000      	cmp.d b4b8 <___malloc_av_+0x8>,r0
    553e:	ff3d 9403           	beq 58d6 <__malloc_r+0x47a>
    5542:	0f05                	nop 
    5544:	0401 6cca           	move.d [r0+4],r12
    5548:	3cc3                	andq -4,r12
    554a:	6c96                	move.d r12,r9
    554c:	a196                	sub.d r1,r9
    554e:	cf92                	cmpq 15,r9
    5550:	ffcd 4003           	bgt 5894 <__malloc_r+0x438>
    5554:	60d6                	move.d r0,r13
    5556:	6fde b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r13
    555c:	7f0d c4b4 0000 eddb 	move.d r13,[b4c4 <___malloc_av_+0x14>]
    5564:	7f0d c0b4 0000 eddb 	move.d r13,[b4c0 <___malloc_av_+0x10>]
    556c:	6996                	test.d r9
    556e:	ffad 0601           	bge 5678 <__malloc_r+0x21c>
    5572:	0f05                	nop 
    5574:	dfcc ff01           	cmpu.w 0x1ff,r12
    5578:	ff9d b202           	bhi 582e <__malloc_r+0x3d2>
    557c:	6c96                	move.d r12,r9
    557e:	e3c3                	lsrq 3,r12
    5580:	6c96                	move.d r12,r9
    5582:	a293                	asrq 2,r9
    5584:	41d2                	moveq 1,r13
    5586:	e9d4                	lsl.d r9,r13
    5588:	7f0d b4b4 0000 6ddb 	or.d [b4b4 <___malloc_av_+0x4>],r13
    5590:	7f0d b4b4 0000 eddb 	move.d r13,[b4b4 <___malloc_av_+0x4>]
    5598:	2cc6                	add.d r12,r12
    559a:	c2c3                	lslq 2,r12
    559c:	2fce b0b4 0000      	add.d b4b0 <___malloc_av_>,r12
    55a2:	08c1 699a           	move.d [r12+8],r9
    55a6:	0c01 eccb           	move.d r12,[r0+12]
    55aa:	0801 e99b           	move.d r9,[r0+8]
    55ae:	08c1 e00b           	move.d r0,[r12+8]
    55b2:	0c91 e00b           	move.d r0,[r9+12]
    55b6:	6a96                	move.d r10,r9
    55b8:	a293                	asrq 2,r9
    55ba:	41c2                	moveq 1,r12
    55bc:	e9c4                	lsl.d r9,r12
    55be:	edc6                	cmp.d r13,r12
    55c0:	d290                	bhi 5694 <__malloc_r+0x238>
    55c2:	6d96                	move.d r13,r9
    55c4:	2c97                	and.d r12,r9
    55c6:	1020                	bne 55d8 <__malloc_r+0x17c>
    55c8:	6a36                	move.d r10,r3
    55ca:	3ca3                	andq -4,r10
    55cc:	2cc6                	add.d r12,r12
    55ce:	6d96                	move.d r13,r9
    55d0:	2c97                	and.d r12,r9
    55d2:	f930                	beq 55cc <__malloc_r+0x170>
    55d4:	04a2                	addq 4,r10
    55d6:	6a36                	move.d r10,r3
    55d8:	2a36                	add.d r10,r3
    55da:	c233                	lslq 2,r3
    55dc:	2f3e b0b4 0000      	add.d b4b0 <___malloc_av_>,r3
    55e2:	63b6                	move.d r3,r11
    55e4:	6a46                	move.d r10,r4
    55e6:	0cb1 600a           	move.d [r11+12],r0
    55ea:	e0b6                	cmp.d r0,r11
    55ec:	1a20                	bne 5608 <__malloc_r+0x1ac>
    55ee:	0f05                	nop 
    55f0:	ffed f002           	ba 58e4 <__malloc_r+0x488>
    55f4:	08b2                	addq 8,r11
    55f6:	ffad 4603           	bge 5940 <__malloc_r+0x4e4>
    55fa:	0f05                	nop 
    55fc:	0c01 600a           	move.d [r0+12],r0
    5600:	e0b6                	cmp.d r0,r11
    5602:	ff3d dc02           	beq 58e2 <__malloc_r+0x486>
    5606:	0f05                	nop 
    5608:	0401 699a           	move.d [r0+4],r9
    560c:	3c93                	andq -4,r9
    560e:	69d6                	move.d r9,r13
    5610:	a1d6                	sub.d r1,r13
    5612:	cfd2                	cmpq 15,r13
    5614:	e1d0                	ble 55f6 <__malloc_r+0x19a>
    5616:	6dd6                	test.d r13
    5618:	6096                	move.d r0,r9
    561a:	2196                	add.d r1,r9
    561c:	4113                	orq 1,r1
    561e:	0401 e11b           	move.d r1,[r0+4]
    5622:	0c01 6bba           	move.d [r0+12],r11
    5626:	0801 6cca           	move.d [r0+8],r12
    562a:	0cc1 ebbb           	move.d r11,[r12+12]
    562e:	08b1 eccb           	move.d r12,[r11+8]
    5632:	7f0d c4b4 0000 e99b 	move.d r9,[b4c4 <___malloc_av_+0x14>]
    563a:	7f0d c0b4 0000 e99b 	move.d r9,[b4c0 <___malloc_av_+0x10>]
    5642:	6fce b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r12
    5648:	0c91 eccb           	move.d r12,[r9+12]
    564c:	0891 eccb           	move.d r12,[r9+8]
    5650:	6dc6                	move.d r13,r12
    5652:	41c3                	orq 1,r12
    5654:	0491 eccb           	move.d r12,[r9+4]
    5658:	49d5 eddb           	move.d r13,[r9+r13.b]
    565c:	62a6                	move.d r2,r10
    565e:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    5664:	60a6                	move.d r0,r10
    5666:	08a2                	addq 8,r10
    5668:	be7f                	movem [sp+],r7
    566a:	3e0d                	jump [sp+]
    566c:	61a6                	move.d r1,r10
    566e:	e3a3                	lsrq 3,r10
    5670:	6ac6                	move.d r10,r12
    5672:	ffed 82fe           	ba 54f8 <__malloc_r+0x9c>
    5676:	2ac6                	add.d r10,r12
    5678:	20c6                	add.d r0,r12
    567a:	04c1 699a           	move.d [r12+4],r9
    567e:	4193                	orq 1,r9
    5680:	04c1 e99b           	move.d r9,[r12+4]
    5684:	62a6                	move.d r2,r10
    5686:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    568c:	60a6                	move.d r0,r10
    568e:	08a2                	addq 8,r10
    5690:	be7f                	movem [sp+],r7
    5692:	3e0d                	jump [sp+]
    5694:	6f0e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r0
    569a:	600a                	move.d [r0],r0
    569c:	0401 633a           	move.d [r0+4],r3
    56a0:	3c33                	andq -4,r3
    56a2:	e136                	cmp.d r1,r3
    56a4:	0c10                	bcs 56b2 <__malloc_r+0x256>
    56a6:	6396                	move.d r3,r9
    56a8:	a196                	sub.d r1,r9
    56aa:	cf92                	cmpq 15,r9
    56ac:	ffcd 3801           	bgt 57e8 <__malloc_r+0x38c>
    56b0:	61d6                	move.d r1,r13
    56b2:	6066                	move.d r0,r6
    56b4:	7f0d f8b8 0000 251a 	add.d [b8f8 <___malloc_top_pad>],r1,r5
    56bc:	6fde a8b4 0000      	move.d b4a8 <___malloc_sbrk_base>,r13
    56c2:	6dda                	move.d [r13],r13
    56c4:	ffd2                	cmpq -1,r13
    56c6:	ff3d 6603           	beq 5a30 <__malloc_r+0x5d4>
    56ca:	2366                	add.d r3,r6
    56cc:	1f5c 0f10           	addu.w 0x100f,r5
    56d0:	2f5f 00f0 ffff      	and.d 0xfffff000,r5
    56d6:	6f7e 9868 0000      	move.d 6898 <__sbrk_r>,r7
    56dc:	62a6                	move.d r2,r10
    56de:	65b6                	move.d r5,r11
    56e0:	b7b9                	jsr r7
    56e2:	ffa2                	cmpq -1,r10
    56e4:	ff3d a802           	beq 5990 <__malloc_r+0x534>
    56e8:	6a46                	move.d r10,r4
    56ea:	ea66                	cmp.d r10,r6
    56ec:	ff9d 9402           	bhi 5984 <__malloc_r+0x528>
    56f0:	0f05                	nop 
    56f2:	7f0d c8b8 0000 295a 	add.d [b8c8 <___malloc_current_mallinfo>],r5,r9
    56fa:	7f0d c8b8 0000 e99b 	move.d r9,[b8c8 <___malloc_current_mallinfo>]
    5702:	e466                	cmp.d r4,r6
    5704:	ff3d 4403           	beq 5a4c <__malloc_r+0x5f0>
    5708:	8b63                	btstq 11,r6
    570a:	6fce a8b4 0000      	move.d b4a8 <___malloc_sbrk_base>,r12
    5710:	6cca                	move.d [r12],r12
    5712:	ffc2                	cmpq -1,r12
    5714:	ff3d 5e03           	beq 5a76 <__malloc_r+0x61a>
    5718:	0f05                	nop 
    571a:	64d6                	move.d r4,r13
    571c:	a6d6                	sub.d r6,r13
    571e:	6d66                	move.d r13,r6
    5720:	2966                	add.d r9,r6
    5722:	7f0d c8b8 0000 e66b 	move.d r6,[b8c8 <___malloc_current_mallinfo>]
    572a:	64d6                	move.d r4,r13
    572c:	07d3                	andq 7,r13
    572e:	5f9c 0010           	movu.w 0x1000,r9
    5732:	6dd6                	test.d r13
    5734:	0c30                	beq 5742 <__malloc_r+0x2e6>
    5736:	0f05                	nop 
    5738:	ad46                	sub.d r13,r4
    573a:	0842                	addq 8,r4
    573c:	4f9e 0800           	move.b 0x8,r9
    5740:	ad96                	sub.d r13,r9
    5742:	2456                	add.d r4,r5
    5744:	2f5f ff0f 0000      	and.d fff <_.tmp+0xfbf>,r5
    574a:	a596                	sub.d r5,r9
    574c:	6956                	move.d r9,r5
    574e:	62a6                	move.d r2,r10
    5750:	69b6                	move.d r9,r11
    5752:	b7b9                	jsr r7
    5754:	ffa2                	cmpq -1,r10
    5756:	ff3d 2a03           	beq 5a84 <__malloc_r+0x628>
    575a:	41d2                	moveq 1,r13
    575c:	6ad6                	move.d r10,r13
    575e:	a4d6                	sub.d r4,r13
    5760:	25d6                	add.d r5,r13
    5762:	41d3                	orq 1,r13
    5764:	7f0d c8b8 0000 295a 	add.d [b8c8 <___malloc_current_mallinfo>],r5,r9
    576c:	7f0d c8b8 0000 e99b 	move.d r9,[b8c8 <___malloc_current_mallinfo>]
    5774:	7f0d b8b4 0000 e44b 	move.d r4,[b4b8 <___malloc_av_+0x8>]
    577c:	0441 eddb           	move.d r13,[r4+4]
    5780:	ef0e b0b4 0000      	cmp.d b4b0 <___malloc_av_>,r0
    5786:	2c30                	beq 57b4 <__malloc_r+0x358>
    5788:	cf32                	cmpq 15,r3
    578a:	ff8d 6402           	bls 59f2 <__malloc_r+0x596>
    578e:	45c2                	moveq 5,r12
    5790:	8c32                	subq 12,r3
    5792:	3833                	andq -8,r3
    5794:	0401 6dda           	move.d [r0+4],r13
    5798:	01d3                	andq 1,r13
    579a:	63d7                	or.d r3,r13
    579c:	0401 eddb           	move.d r13,[r0+4]
    57a0:	60d6                	move.d r0,r13
    57a2:	23d6                	add.d r3,r13
    57a4:	04d1 eccb           	move.d r12,[r13+4]
    57a8:	08d1 eccb           	move.d r12,[r13+8]
    57ac:	cf32                	cmpq 15,r3
    57ae:	ff9d 0a02           	bhi 59bc <__malloc_r+0x560>
    57b2:	62a6                	move.d r2,r10
    57b4:	6406                	move.d r4,r0
    57b6:	7f0d f4b8 0000 e99a 	cmp.d [b8f4 <___malloc_max_sbrked_mem>],r9
    57be:	0a80                	bls 57ca <__malloc_r+0x36e>
    57c0:	0f05                	nop 
    57c2:	7f0d f4b8 0000 e99b 	move.d r9,[b8f4 <___malloc_max_sbrked_mem>]
    57ca:	7f0d f0b8 0000 e99a 	cmp.d [b8f0 <___malloc_max_total_mem>],r9
    57d2:	0a80                	bls 57de <__malloc_r+0x382>
    57d4:	0f05                	nop 
    57d6:	7f0d f0b8 0000 e99b 	move.d r9,[b8f0 <___malloc_max_total_mem>]
    57de:	0401 6dda           	move.d [r0+4],r13
    57e2:	ffed b801           	ba 599e <__malloc_r+0x542>
    57e6:	3cd3                	andq -4,r13
    57e8:	41d3                	orq 1,r13
    57ea:	0401 eddb           	move.d r13,[r0+4]
    57ee:	2016                	add.d r0,r1
    57f0:	7f0d b8b4 0000 e11b 	move.d r1,[b4b8 <___malloc_av_+0x8>]
    57f8:	4193                	orq 1,r9
    57fa:	0411 e99b           	move.d r9,[r1+4]
    57fe:	62a6                	move.d r2,r10
    5800:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    5806:	60a6                	move.d r0,r10
    5808:	08a2                	addq 8,r10
    580a:	be7f                	movem [sp+],r7
    580c:	3e0d                	jump [sp+]
    580e:	ff8d 5a01           	bls 596c <__malloc_r+0x510>
    5812:	0f05                	nop 
    5814:	cfac 5400           	cmpu.b 0x54,r10
    5818:	ff9d be01           	bhi 59da <__malloc_r+0x57e>
    581c:	0f05                	nop 
    581e:	61a6                	move.d r1,r10
    5820:	eca3                	lsrq 12,r10
    5822:	0fac 6e00           	addu.b 0x6e,r10
    5826:	6ac6                	move.d r10,r12
    5828:	ffed ccfc           	ba 54f8 <__malloc_r+0x9c>
    582c:	2ac6                	add.d r10,r12
    582e:	e993                	lsrq 9,r9
    5830:	c492                	cmpq 4,r9
    5832:	ff8d 4201           	bls 5978 <__malloc_r+0x51c>
    5836:	6cd6                	move.d r12,r13
    5838:	d492                	cmpq 20,r9
    583a:	ff9d f801           	bhi 5a36 <__malloc_r+0x5da>
    583e:	69d6                	move.d r9,r13
    5840:	0fdc 5b00           	addu.b 0x5b,r13
    5844:	6db6                	move.d r13,r11
    5846:	2db6                	add.d r13,r11
    5848:	c2b3                	lslq 2,r11
    584a:	2fbe b0b4 0000      	add.d b4b0 <___malloc_av_>,r11
    5850:	08b1 699a           	move.d [r11+8],r9
    5854:	eb96                	cmp.d r11,r9
    5856:	ff3d a401           	beq 59fe <__malloc_r+0x5a2>
    585a:	a2d3                	asrq 2,r13
    585c:	0491 6dda           	move.d [r9+4],r13
    5860:	3cd3                	andq -4,r13
    5862:	edc6                	cmp.d r13,r12
    5864:	0c00                	bcc 5872 <__malloc_r+0x416>
    5866:	0f05                	nop 
    5868:	0891 699a           	move.d [r9+8],r9
    586c:	e9b6                	cmp.d r9,r11
    586e:	ed20                	bne 585c <__malloc_r+0x400>
    5870:	0f05                	nop 
    5872:	0c91 6cca           	move.d [r9+12],r12
    5876:	6fde b4b4 0000      	move.d b4b4 <___malloc_av_+0x4>,r13
    587c:	6dda                	move.d [r13],r13
    587e:	0c01 eccb           	move.d r12,[r0+12]
    5882:	0801 e99b           	move.d r9,[r0+8]
    5886:	08c1 e00b           	move.d r0,[r12+8]
    588a:	0c91 e00b           	move.d r0,[r9+12]
    588e:	ffed 26fd           	ba 55b8 <__malloc_r+0x15c>
    5892:	6a96                	move.d r10,r9
    5894:	21d6                	add.d r1,r13
    5896:	4113                	orq 1,r1
    5898:	0401 e11b           	move.d r1,[r0+4]
    589c:	7f0d c4b4 0000 eddb 	move.d r13,[b4c4 <___malloc_av_+0x14>]
    58a4:	7f0d c0b4 0000 eddb 	move.d r13,[b4c0 <___malloc_av_+0x10>]
    58ac:	6fce b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r12
    58b2:	0cd1 eccb           	move.d r12,[r13+12]
    58b6:	08d1 eccb           	move.d r12,[r13+8]
    58ba:	69c6                	move.d r9,r12
    58bc:	41c3                	orq 1,r12
    58be:	04d1 eccb           	move.d r12,[r13+4]
    58c2:	4d95 e99b           	move.d r9,[r13+r9.b]
    58c6:	62a6                	move.d r2,r10
    58c8:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    58ce:	60a6                	move.d r0,r10
    58d0:	08a2                	addq 8,r10
    58d2:	be7f                	movem [sp+],r7
    58d4:	3e0d                	jump [sp+]
    58d6:	6fde b4b4 0000      	move.d b4b4 <___malloc_av_+0x4>,r13
    58dc:	ffed d6fc           	ba 55b6 <__malloc_r+0x15a>
    58e0:	6dda                	move.d [r13],r13
    58e2:	08b2                	addq 8,r11
    58e4:	0142                	addq 1,r4
    58e6:	8143                	btstq 1,r4
    58e8:	ff2d fafc           	bne 55e6 <__malloc_r+0x18a>
    58ec:	0f05                	nop 
    58ee:	81a3                	btstq 1,r10
    58f0:	ff3d c201           	beq 5ab6 <__malloc_r+0x65a>
    58f4:	6c96                	move.d r12,r9
    58f6:	6396                	move.d r3,r9
    58f8:	8892                	subq 8,r9
    58fa:	633a                	move.d [r3],r3
    58fc:	e936                	cmp.d r9,r3
    58fe:	ef30                	beq 58ee <__malloc_r+0x492>
    5900:	81a2                	subq 1,r10
    5902:	6f9e b4b4 0000      	move.d b4b4 <___malloc_av_+0x4>,r9
    5908:	699a                	move.d [r9],r9
    590a:	2cc6                	add.d r12,r12
    590c:	e9c6                	cmp.d r9,r12
    590e:	ff9d 82fd           	bhi 5694 <__malloc_r+0x238>
    5912:	6cc6                	test.d r12
    5914:	ff3d 7cfd           	beq 5694 <__malloc_r+0x238>
    5918:	0f05                	nop 
    591a:	69d6                	move.d r9,r13
    591c:	2cd7                	and.d r12,r13
    591e:	ff3d ac01           	beq 5ace <__malloc_r+0x672>
    5922:	0f05                	nop 
    5924:	ffed aefc           	ba 55d6 <__malloc_r+0x17a>
    5928:	64a6                	move.d r4,r10
    592a:	6096                	move.d r0,r9
    592c:	0892                	addq 8,r9
    592e:	1401 600a           	move.d [r0+20],r0
    5932:	e096                	cmp.d r0,r9
    5934:	ff2d 64fb           	bne 549c <__malloc_r+0x40>
    5938:	0f05                	nop 
    593a:	ffed f2fb           	ba 5530 <__malloc_r+0xd4>
    593e:	02a2                	addq 2,r10
    5940:	2096                	add.d r0,r9
    5942:	0491 6dda           	move.d [r9+4],r13
    5946:	41d3                	orq 1,r13
    5948:	0491 eddb           	move.d r13,[r9+4]
    594c:	0c01 6dda           	move.d [r0+12],r13
    5950:	0801 699a           	move.d [r0+8],r9
    5954:	0c91 eddb           	move.d r13,[r9+12]
    5958:	08d1 e99b           	move.d r9,[r13+8]
    595c:	62a6                	move.d r2,r10
    595e:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    5964:	60a6                	move.d r0,r10
    5966:	08a2                	addq 8,r10
    5968:	be7f                	movem [sp+],r7
    596a:	3e0d                	jump [sp+]
    596c:	0fac 5b00           	addu.b 0x5b,r10
    5970:	6ac6                	move.d r10,r12
    5972:	ffed 82fb           	ba 54f8 <__malloc_r+0x9c>
    5976:	2ac6                	add.d r10,r12
    5978:	e6d3                	lsrq 6,r13
    597a:	38d2                	addq 56,r13
    597c:	6db6                	move.d r13,r11
    597e:	ffed c6fe           	ba 5848 <__malloc_r+0x3ec>
    5982:	2db6                	add.d r13,r11
    5984:	ef0e b0b4 0000      	cmp.d b4b0 <___malloc_av_>,r0
    598a:	ff3d 64fd           	beq 56f2 <__malloc_r+0x296>
    598e:	0f05                	nop 
    5990:	6f0e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r0
    5996:	600a                	move.d [r0],r0
    5998:	0401 6dda           	move.d [r0+4],r13
    599c:	3cd3                	andq -4,r13
    599e:	6d96                	move.d r13,r9
    59a0:	e1d6                	cmp.d r1,r13
    59a2:	0a10                	bcs 59ae <__malloc_r+0x552>
    59a4:	a196                	sub.d r1,r9
    59a6:	cf92                	cmpq 15,r9
    59a8:	ffcd 3cfe           	bgt 57e8 <__malloc_r+0x38c>
    59ac:	61d6                	move.d r1,r13
    59ae:	62a6                	move.d r2,r10
    59b0:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    59b6:	7a86                	clear.d r10
    59b8:	be7f                	movem [sp+],r7
    59ba:	3e0d                	jump [sp+]
    59bc:	60b6                	move.d r0,r11
    59be:	08b2                	addq 8,r11
    59c0:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    59c6:	6f9e c8b8 0000      	move.d b8c8 <___malloc_current_mallinfo>,r9
    59cc:	699a                	move.d [r9],r9
    59ce:	6f0e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r0
    59d4:	ffed defd           	ba 57b6 <__malloc_r+0x35a>
    59d8:	600a                	move.d [r0],r0
    59da:	dfac 5401           	cmpu.w 0x154,r10
    59de:	3890                	bhi 5a18 <__malloc_r+0x5bc>
    59e0:	0f05                	nop 
    59e2:	61a6                	move.d r1,r10
    59e4:	efa3                	lsrq 15,r10
    59e6:	0fac 7700           	addu.b 0x77,r10
    59ea:	6ac6                	move.d r10,r12
    59ec:	ffed 08fb           	ba 54f8 <__malloc_r+0x9c>
    59f0:	2ac6                	add.d r10,r12
    59f2:	4192                	moveq 1,r9
    59f4:	0441 e99b           	move.d r9,[r4+4]
    59f8:	6406                	move.d r4,r0
    59fa:	a3e0                	ba 599e <__malloc_r+0x542>
    59fc:	7d86                	clear.d r13
    59fe:	41c2                	moveq 1,r12
    5a00:	edc4                	lsl.d r13,r12
    5a02:	7f0d b4b4 0000 6dcb 	or.d [b4b4 <___malloc_av_+0x4>],r12,r13
    5a0a:	7f0d b4b4 0000 eddb 	move.d r13,[b4b4 <___malloc_av_+0x4>]
    5a12:	ffed 68fe           	ba 587e <__malloc_r+0x422>
    5a16:	69c6                	move.d r9,r12
    5a18:	dfac 5405           	cmpu.w 0x554,r10
    5a1c:	4a90                	bhi 5a68 <__malloc_r+0x60c>
    5a1e:	0f05                	nop 
    5a20:	61a6                	move.d r1,r10
    5a22:	f2a3                	lsrq 18,r10
    5a24:	0fac 7c00           	addu.b 0x7c,r10
    5a28:	6ac6                	move.d r10,r12
    5a2a:	ffed cafa           	ba 54f8 <__malloc_r+0x9c>
    5a2e:	2ac6                	add.d r10,r12
    5a30:	ffed a2fc           	ba 56d6 <__malloc_r+0x27a>
    5a34:	1052                	addq 16,r5
    5a36:	cf9c 5400           	cmpu.b 0x54,r9
    5a3a:	4e90                	bhi 5a8a <__malloc_r+0x62e>
    5a3c:	6cd6                	move.d r12,r13
    5a3e:	ecd3                	lsrq 12,r13
    5a40:	0fdc 6e00           	addu.b 0x6e,r13
    5a44:	6db6                	move.d r13,r11
    5a46:	ffed fefd           	ba 5848 <__malloc_r+0x3ec>
    5a4a:	2db6                	add.d r13,r11
    5a4c:	ff2d bafc           	bne 570a <__malloc_r+0x2ae>
    5a50:	0f05                	nop 
    5a52:	6f0e b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r0
    5a58:	600a                	move.d [r0],r0
    5a5a:	2536                	add.d r5,r3
    5a5c:	4133                	orq 1,r3
    5a5e:	0401 e33b           	move.d r3,[r0+4]
    5a62:	ffed 50fd           	ba 57b6 <__malloc_r+0x35a>
    5a66:	0f05                	nop 
    5a68:	4fcc fc00           	movu.b 0xfc,r12
    5a6c:	4fac 7e00           	movu.b 0x7e,r10
    5a70:	ffed 86fa           	ba 54fa <__malloc_r+0x9e>
    5a74:	c2c3                	lslq 2,r12
    5a76:	7f0d a8b4 0000 e44b 	move.d r4,[b4a8 <___malloc_sbrk_base>]
    5a7e:	ffed aafc           	ba 572c <__malloc_r+0x2d0>
    5a82:	64d6                	move.d r4,r13
    5a84:	ffed dcfc           	ba 5764 <__malloc_r+0x308>
    5a88:	7586                	clear.d r5
    5a8a:	df9c 5401           	cmpu.w 0x154,r9
    5a8e:	0e90                	bhi 5a9e <__malloc_r+0x642>
    5a90:	efd3                	lsrq 15,r13
    5a92:	0fdc 7700           	addu.b 0x77,r13
    5a96:	6db6                	move.d r13,r11
    5a98:	ffed acfd           	ba 5848 <__malloc_r+0x3ec>
    5a9c:	2db6                	add.d r13,r11
    5a9e:	df9c 5405           	cmpu.w 0x554,r9
    5aa2:	3290                	bhi 5ad6 <__malloc_r+0x67a>
    5aa4:	0f05                	nop 
    5aa6:	6cd6                	move.d r12,r13
    5aa8:	f2d3                	lsrq 18,r13
    5aaa:	0fdc 7c00           	addu.b 0x7c,r13
    5aae:	6db6                	move.d r13,r11
    5ab0:	ffed 94fd           	ba 5848 <__malloc_r+0x3ec>
    5ab4:	2db6                	add.d r13,r11
    5ab6:	7987                	not r9
    5ab8:	7f0d b4b4 0000 299b 	and.d [b4b4 <___malloc_av_+0x4>],r9
    5ac0:	7f0d b4b4 0000 e99b 	move.d r9,[b4b4 <___malloc_av_+0x4>]
    5ac8:	ffed 40fe           	ba 590c <__malloc_r+0x4b0>
    5acc:	2cc6                	add.d r12,r12
    5ace:	0442                	addq 4,r4
    5ad0:	ffed 46fe           	ba 591a <__malloc_r+0x4be>
    5ad4:	2cc6                	add.d r12,r12
    5ad6:	4fbc fc00           	movu.b 0xfc,r11
    5ada:	4fdc 7e00           	movu.b 0x7e,r13
    5ade:	ffed 68fd           	ba 584a <__malloc_r+0x3ee>
    5ae2:	c2b3                	lslq 2,r11

00005ae4 <_memchr>:
    5ae4:	88e2                	subq 8,sp
    5ae6:	fe1b                	movem r1,[sp]
    5ae8:	4b06                	move.b r11,r0
    5aea:	81a3                	btstq 1,r10
    5aec:	2430                	beq 5b12 <_memchr+0x2e>
    5aee:	6cd6                	move.d r12,r13
    5af0:	4830                	beq 5b3a <_memchr+0x56>
    5af2:	81d2                	subq 1,r13
    5af4:	caba                	cmp.b [r10],r11
    5af6:	4430                	beq 5b3c <_memchr+0x58>
    5af8:	6a96                	move.d r10,r9
    5afa:	10e0                	ba 5b0c <_memchr+0x28>
    5afc:	0192                	addq 1,r9
    5afe:	6dd6                	test.d r13
    5b00:	3830                	beq 5b3a <_memchr+0x56>
    5b02:	0f05                	nop 
    5b04:	0192                	addq 1,r9
    5b06:	ca0a                	cmp.b [r10],r0
    5b08:	3230                	beq 5b3c <_memchr+0x58>
    5b0a:	81d2                	subq 1,r13
    5b0c:	8193                	btstq 1,r9
    5b0e:	ef20                	bne 5afe <_memchr+0x1a>
    5b10:	69a6                	move.d r9,r10
    5b12:	c3d2                	cmpq 3,r13
    5b14:	2a90                	bhi 5b40 <_memchr+0x5c>
    5b16:	0f05                	nop 
    5b18:	6dc6                	move.d r13,r12
    5b1a:	6dd6                	test.d r13
    5b1c:	1c30                	beq 5b3a <_memchr+0x56>
    5b1e:	81c2                	subq 1,r12
    5b20:	ca0a                	cmp.b [r10],r0
    5b22:	1830                	beq 5b3c <_memchr+0x58>
    5b24:	6ad6                	move.d r10,r13
    5b26:	01d2                	addq 1,r13
    5b28:	0ae0                	ba 5b34 <_memchr+0x50>
    5b2a:	7986                	clear.d r9
    5b2c:	01d2                	addq 1,r13
    5b2e:	ca0a                	cmp.b [r10],r0
    5b30:	0a30                	beq 5b3c <_memchr+0x58>
    5b32:	0192                	addq 1,r9
    5b34:	e9c6                	cmp.d r9,r12
    5b36:	f520                	bne 5b2c <_memchr+0x48>
    5b38:	6da6                	move.d r13,r10
    5b3a:	7a86                	clear.d r10
    5b3c:	7fb6                	ret 
    5b3e:	be1f                	movem [sp+],r1
    5b40:	4bb4                	movu.b r11,r11
    5b42:	6b96                	move.d r11,r9
    5b44:	c893                	lslq 8,r9
    5b46:	6b97                	or.d r11,r9
    5b48:	6916                	move.d r9,r1
    5b4a:	d013                	lslq 16,r1
    5b4c:	6917                	or.d r9,r1
    5b4e:	6a96                	move.d r10,r9
    5b50:	69ba                	move.d [r9],r11
    5b52:	b1b7                	xor r1,r11
    5b54:	6bc6                	move.d r11,r12
    5b56:	2fce fffe fefe      	add.d fefefeff <__end+0xfefe01ef>,r12
    5b5c:	7b87                	not r11
    5b5e:	2bc7                	and.d r11,r12
    5b60:	2fcf 8080 8080      	and.d 80808080 <__end+0x807f8370>,r12
    5b66:	0e20                	bne 5b76 <_memchr+0x92>
    5b68:	04a2                	addq 4,r10
    5b6a:	84d2                	subq 4,r13
    5b6c:	c3d2                	cmpq 3,r13
    5b6e:	df90                	bhi 5b4e <_memchr+0x6a>
    5b70:	6dc6                	move.d r13,r12
    5b72:	a7e0                	ba 5b1a <_memchr+0x36>
    5b74:	0f05                	nop 
    5b76:	a1e0                	ba 5b18 <_memchr+0x34>
    5b78:	69a6                	move.d r9,r10
	...

00005b7c <_memcpy>:
    5b7c:	90e2                	subq 16,sp
    5b7e:	fe3b                	movem r3,[sp]
    5b80:	6a26                	move.d r10,r2
    5b82:	6ad6                	move.d r10,r13
    5b84:	6c16                	move.d r12,r1
    5b86:	81a3                	btstq 1,r10
    5b88:	be30                	beq 5c48 <_memcpy+0xcc>
    5b8a:	6a96                	move.d r10,r9
    5b8c:	c2c2                	cmpq 2,r12
    5b8e:	a4c0                	bgt 5c34 <_memcpy+0xb8>
    5b90:	80a3                	btstq 0,r10
    5b92:	cf12                	cmpq 15,r1
    5b94:	4ad0                	ble 5be0 <_memcpy+0x64>
    5b96:	6b96                	move.d r11,r9
    5b98:	6d06                	move.d r13,r0
    5b9a:	61a6                	move.d r1,r10
    5b9c:	90a2                	subq 16,r10
    5b9e:	6a16                	move.d r10,r1
    5ba0:	e413                	lsrq 4,r1
    5ba2:	6bc6                	move.d r11,r12
    5ba4:	10c2                	addq 16,r12
    5ba6:	6136                	move.d r1,r3
    5ba8:	c433                	lslq 4,r3
    5baa:	23c6                	add.d r3,r12
    5bac:	693a                	move.d [r9],r3
    5bae:	e03b                	move.d r3,[r0]
    5bb0:	0491 633a           	move.d [r9+4],r3
    5bb4:	0401 e33b           	move.d r3,[r0+4]
    5bb8:	0891 633a           	move.d [r9+8],r3
    5bbc:	0801 e33b           	move.d r3,[r0+8]
    5bc0:	0c91 633a           	move.d [r9+12],r3
    5bc4:	0c01 e33b           	move.d r3,[r0+12]
    5bc8:	1092                	addq 16,r9
    5bca:	ec96                	cmp.d r12,r9
    5bcc:	df20                	bne 5bac <_memcpy+0x30>
    5bce:	1002                	addq 16,r0
    5bd0:	6196                	move.d r1,r9
    5bd2:	0192                	addq 1,r9
    5bd4:	c493                	lslq 4,r9
    5bd6:	c413                	lslq 4,r1
    5bd8:	a1a6                	sub.d r1,r10
    5bda:	6a16                	move.d r10,r1
    5bdc:	29d6                	add.d r9,r13
    5bde:	29b6                	add.d r9,r11
    5be0:	8112                	subq 1,r1
    5be2:	cf1d 0f00           	bound.b 0xf,r1
    5be6:	5f15 3ff8           	adds.w [pc+r1.w],pc
    5bea:	8c00                	case 1: -> 5c76 <_memcpy+0xfa>
    5bec:	9200                	case 2: -> 5c7c <_memcpy+0x100>
    5bee:	9800                	case 3: -> 5c82 <_memcpy+0x106>
    5bf0:	a800                	case 4: -> 5c92 <_memcpy+0x116>
    5bf2:	ae00                	case 5: -> 5c98 <_memcpy+0x11c>
    5bf4:	be00                	case 6: -> 5ca8 <_memcpy+0x12c>
    5bf6:	ce00                	case 7: -> 5cb8 <_memcpy+0x13c>
    5bf8:	e600                	case 8: -> 5cd0 <_memcpy+0x154>
    5bfa:	f600                	case 9: -> 5ce0 <_memcpy+0x164>
    5bfc:	0e01                	case 10: -> 5cf8 <_memcpy+0x17c>
    5bfe:	2601                	case 11: -> 5d10 <_memcpy+0x194>
    5c00:	4601                	case 12: -> 5d30 <_memcpy+0x1b4>
    5c02:	6001                	case 13: -> 5d4a <_memcpy+0x1ce>
    5c04:	8201                	case 14: -> 5d6c <_memcpy+0x1f0>
    5c06:	2000                	case 15: -> 5c0a <_memcpy+0x8e>
    5c08:	4400                	case 16/default: -> 5c2e <_memcpy+0xb2>
    5c0a:	6b3a                	move.d [r11],r3
    5c0c:	ed3b                	move.d r3,[r13]
    5c0e:	04b1 699a           	move.d [r11+4],r9
    5c12:	04d1 e99b           	move.d r9,[r13+4]
    5c16:	08b1 633a           	move.d [r11+8],r3
    5c1a:	08d1 e33b           	move.d r3,[r13+8]
    5c1e:	0cb1 599a           	move.w [r11+12],r9
    5c22:	0cd1 d99b           	move.w r9,[r13+12]
    5c26:	0eb1 4bba           	move.b [r11+14],r11
    5c2a:	0ed1 cbbb           	move.b r11,[r13+14]
    5c2e:	62a6                	move.d r2,r10
    5c30:	7fb6                	ret 
    5c32:	be3f                	movem [sp+],r3
    5c34:	32b0                	blt 5c68 <_memcpy+0xec>
    5c36:	6a06                	move.d r10,r0
    5c38:	8193                	btstq 1,r9
    5c3a:	0ca0                	bge 5c48 <_memcpy+0xcc>
    5c3c:	0f05                	nop 
    5c3e:	8212                	subq 2,r1
    5c40:	61c6                	move.d r1,r12
    5c42:	60d6                	move.d r0,r13
    5c44:	5b9e                	move.w [r11+],r9
    5c46:	dd9f                	move.w r9,[r13+]
    5c48:	cf1c 5700           	cmpu.b 0x57,r1
    5c4c:	45d0                	ble 5b92 <_memcpy+0x16>
    5c4e:	0f05                	nop 
    5c50:	ace2                	subq 44,sp
    5c52:	feab                	movem r10,[sp]
    5c54:	acc2                	subq 44,r12
    5c56:	bbaf                	movem [r11+],r10
    5c58:	acc2                	subq 44,r12
    5c5a:	fba0                	bge 5c56 <_memcpy+0xda>
    5c5c:	fdaf                	movem r10,[r13+]
    5c5e:	2cc2                	addq 44,r12
    5c60:	beaf                	movem [sp+],r10
    5c62:	6c16                	move.d r12,r1
    5c64:	2de0                	ba 5b92 <_memcpy+0x16>
    5c66:	6a26                	move.d r10,r2
    5c68:	8112                	subq 1,r1
    5c6a:	61c6                	move.d r1,r12
    5c6c:	4b3e                	move.b [r11+],r3
    5c6e:	c03f                	move.b r3,[r0+]
    5c70:	60d6                	move.d r0,r13
    5c72:	c5e0                	ba 5c38 <_memcpy+0xbc>
    5c74:	6096                	move.d r0,r9
    5c76:	4bba                	move.b [r11],r11
    5c78:	b5e0                	ba 5c2e <_memcpy+0xb2>
    5c7a:	cdbb                	move.b r11,[r13]
    5c7c:	5bba                	move.w [r11],r11
    5c7e:	afe0                	ba 5c2e <_memcpy+0xb2>
    5c80:	ddbb                	move.w r11,[r13]
    5c82:	5b9a                	move.w [r11],r9
    5c84:	dd9b                	move.w r9,[r13]
    5c86:	02b1 4bba           	move.b [r11+2],r11
    5c8a:	02d1 cbbb           	move.b r11,[r13+2]
    5c8e:	a1e0                	ba 5c30 <_memcpy+0xb4>
    5c90:	62a6                	move.d r2,r10
    5c92:	6bba                	move.d [r11],r11
    5c94:	99e0                	ba 5c2e <_memcpy+0xb2>
    5c96:	edbb                	move.d r11,[r13]
    5c98:	6b3a                	move.d [r11],r3
    5c9a:	ed3b                	move.d r3,[r13]
    5c9c:	04b1 4bba           	move.b [r11+4],r11
    5ca0:	04d1 cbbb           	move.b r11,[r13+4]
    5ca4:	8be0                	ba 5c30 <_memcpy+0xb4>
    5ca6:	62a6                	move.d r2,r10
    5ca8:	6b9a                	move.d [r11],r9
    5caa:	ed9b                	move.d r9,[r13]
    5cac:	04b1 5bba           	move.w [r11+4],r11
    5cb0:	04d1 dbbb           	move.w r11,[r13+4]
    5cb4:	7be0                	ba 5c30 <_memcpy+0xb4>
    5cb6:	62a6                	move.d r2,r10
    5cb8:	6b3a                	move.d [r11],r3
    5cba:	ed3b                	move.d r3,[r13]
    5cbc:	04b1 599a           	move.w [r11+4],r9
    5cc0:	04d1 d99b           	move.w r9,[r13+4]
    5cc4:	06b1 4bba           	move.b [r11+6],r11
    5cc8:	06d1 cbbb           	move.b r11,[r13+6]
    5ccc:	63e0                	ba 5c30 <_memcpy+0xb4>
    5cce:	62a6                	move.d r2,r10
    5cd0:	6b3a                	move.d [r11],r3
    5cd2:	ed3b                	move.d r3,[r13]
    5cd4:	04b1 6bba           	move.d [r11+4],r11
    5cd8:	04d1 ebbb           	move.d r11,[r13+4]
    5cdc:	53e0                	ba 5c30 <_memcpy+0xb4>
    5cde:	62a6                	move.d r2,r10
    5ce0:	6b9a                	move.d [r11],r9
    5ce2:	ed9b                	move.d r9,[r13]
    5ce4:	04b1 633a           	move.d [r11+4],r3
    5ce8:	04d1 e33b           	move.d r3,[r13+4]
    5cec:	08b1 4bba           	move.b [r11+8],r11
    5cf0:	08d1 cbbb           	move.b r11,[r13+8]
    5cf4:	3be0                	ba 5c30 <_memcpy+0xb4>
    5cf6:	62a6                	move.d r2,r10
    5cf8:	6b9a                	move.d [r11],r9
    5cfa:	ed9b                	move.d r9,[r13]
    5cfc:	04b1 633a           	move.d [r11+4],r3
    5d00:	04d1 e33b           	move.d r3,[r13+4]
    5d04:	08b1 5bba           	move.w [r11+8],r11
    5d08:	08d1 dbbb           	move.w r11,[r13+8]
    5d0c:	23e0                	ba 5c30 <_memcpy+0xb4>
    5d0e:	62a6                	move.d r2,r10
    5d10:	6b9a                	move.d [r11],r9
    5d12:	ed9b                	move.d r9,[r13]
    5d14:	04b1 633a           	move.d [r11+4],r3
    5d18:	04d1 e33b           	move.d r3,[r13+4]
    5d1c:	08b1 599a           	move.w [r11+8],r9
    5d20:	08d1 d99b           	move.w r9,[r13+8]
    5d24:	0ab1 4bba           	move.b [r11+10],r11
    5d28:	0ad1 cbbb           	move.b r11,[r13+10]
    5d2c:	03e0                	ba 5c30 <_memcpy+0xb4>
    5d2e:	62a6                	move.d r2,r10
    5d30:	6b3a                	move.d [r11],r3
    5d32:	ed3b                	move.d r3,[r13]
    5d34:	04b1 699a           	move.d [r11+4],r9
    5d38:	04d1 e99b           	move.d r9,[r13+4]
    5d3c:	08b1 6bba           	move.d [r11+8],r11
    5d40:	08d1 ebbb           	move.d r11,[r13+8]
    5d44:	ffed e8fe           	ba 5c30 <_memcpy+0xb4>
    5d48:	62a6                	move.d r2,r10
    5d4a:	6b3a                	move.d [r11],r3
    5d4c:	ed3b                	move.d r3,[r13]
    5d4e:	04b1 699a           	move.d [r11+4],r9
    5d52:	04d1 e99b           	move.d r9,[r13+4]
    5d56:	08b1 633a           	move.d [r11+8],r3
    5d5a:	08d1 e33b           	move.d r3,[r13+8]
    5d5e:	0cb1 4bba           	move.b [r11+12],r11
    5d62:	0cd1 cbbb           	move.b r11,[r13+12]
    5d66:	ffed c6fe           	ba 5c30 <_memcpy+0xb4>
    5d6a:	62a6                	move.d r2,r10
    5d6c:	6b9a                	move.d [r11],r9
    5d6e:	ed9b                	move.d r9,[r13]
    5d70:	04b1 633a           	move.d [r11+4],r3
    5d74:	04d1 e33b           	move.d r3,[r13+4]
    5d78:	08b1 699a           	move.d [r11+8],r9
    5d7c:	08d1 e99b           	move.d r9,[r13+8]
    5d80:	0cb1 5bba           	move.w [r11+12],r11
    5d84:	0cd1 dbbb           	move.w r11,[r13+12]
    5d88:	ffed a4fe           	ba 5c30 <_memcpy+0xb4>
    5d8c:	62a6                	move.d r2,r10
	...

00005d90 <___malloc_lock>:
    5d90:	7fb6                	ret 
    5d92:	0f05                	nop 

00005d94 <___malloc_unlock>:
    5d94:	7fb6                	ret 
    5d96:	0f05                	nop 

00005d98 <__Balloc>:
    5d98:	84e2                	subq 4,sp
    5d9a:	7eba                	move srp,[sp]
    5d9c:	8ce2                	subq 12,sp
    5d9e:	fe2b                	movem r2,[sp]
    5da0:	6a16                	move.d r10,r1
    5da2:	49a1 699a           	move.d [r10+73],r9
    5da6:	1a30                	beq 5dc2 <__Balloc+0x2a>
    5da8:	6b06                	move.d r11,r0
    5daa:	2905                	addi r0.d,r9
    5dac:	69aa                	move.d [r9],r10
    5dae:	2e30                	beq 5dde <__Balloc+0x46>
    5db0:	0f05                	nop 
    5db2:	6ada                	move.d [r10],r13
    5db4:	e9db                	move.d r13,[r9]
    5db6:	10a1 708a           	clear.d [r10+16]
    5dba:	0ca1 708a           	clear.d [r10+12]
    5dbe:	be2f                	movem [sp+],r2
    5dc0:	3e0d                	jump [sp+]
    5dc2:	44b2                	moveq 4,r11
    5dc4:	4fcc 2100           	movu.b 0x21,r12
    5dc8:	3fbd ac79 0000      	jsr 79ac <__calloc_r>
    5dce:	4911 eaab           	move.d r10,[r1+73]
    5dd2:	6aa6                	test.d r10
    5dd4:	d520                	bne 5daa <__Balloc+0x12>
    5dd6:	6a96                	move.d r10,r9
    5dd8:	7a86                	clear.d r10
    5dda:	be2f                	movem [sp+],r2
    5ddc:	3e0d                	jump [sp+]
    5dde:	41b2                	moveq 1,r11
    5de0:	6b26                	move.d r11,r2
    5de2:	e024                	lsl.d r0,r2
    5de4:	62c6                	move.d r2,r12
    5de6:	05c2                	addq 5,r12
    5de8:	61a6                	move.d r1,r10
    5dea:	c2c3                	lslq 2,r12
    5dec:	3fbd ac79 0000      	jsr 79ac <__calloc_r>
    5df2:	6aa6                	test.d r10
    5df4:	e330                	beq 5dd8 <__Balloc+0x40>
    5df6:	0f05                	nop 
    5df8:	04a1 e00b           	move.d r0,[r10+4]
    5dfc:	08a1 e22b           	move.d r2,[r10+8]
    5e00:	b5e0                	ba 5db6 <__Balloc+0x1e>
    5e02:	0f05                	nop 

00005e04 <__Bfree>:
    5e04:	6bb6                	test.d r11
    5e06:	1230                	beq 5e1a <__Bfree+0x16>
    5e08:	0f05                	nop 
    5e0a:	04b1 699a           	move.d [r11+4],r9
    5e0e:	49a1 6dda           	move.d [r10+73],r13
    5e12:	6d95 69de           	move.d [r9=r13+r9.d],r13
    5e16:	ebdb                	move.d r13,[r11]
    5e18:	e9bb                	move.d r11,[r9]
    5e1a:	7fb6                	ret 
    5e1c:	0f05                	nop 

00005e1e <___multadd>:
    5e1e:	84e2                	subq 4,sp
    5e20:	7eba                	move srp,[sp]
    5e22:	a8e2                	subq 40,sp
    5e24:	fe8b                	movem r8,[sp]
    5e26:	24e1 eaab           	move.d r10,[sp+36]
    5e2a:	6b66                	move.d r11,r6
    5e2c:	6c46                	move.d r12,r4
    5e2e:	6d76                	move.d r13,r7
    5e30:	10b1 655a           	move.d [r11+16],r5
    5e34:	6b16                	move.d r11,r1
    5e36:	1412                	addq 20,r1
    5e38:	7086                	clear.d r0
    5e3a:	6f3e 9ca5 0000      	move.d a59c <___Mul>,r3
    5e40:	618a                	move.d [r1],r8
    5e42:	58a4                	movu.w r8,r10
    5e44:	64b6                	move.d r4,r11
    5e46:	b3b9                	jsr r3
    5e48:	6a26                	move.d r10,r2
    5e4a:	2726                	add.d r7,r2
    5e4c:	6276                	move.d r2,r7
    5e4e:	f073                	lsrq 16,r7
    5e50:	68a6                	move.d r8,r10
    5e52:	f0a3                	lsrq 16,r10
    5e54:	64b6                	move.d r4,r11
    5e56:	b3b9                	jsr r3
    5e58:	27a6                	add.d r7,r10
    5e5a:	6a76                	move.d r10,r7
    5e5c:	f073                	lsrq 16,r7
    5e5e:	6a96                	move.d r10,r9
    5e60:	d093                	lslq 16,r9
    5e62:	1294                	addu.w r2,r9
    5e64:	0102                	addq 1,r0
    5e66:	e056                	cmp.d r0,r5
    5e68:	d7c0                	bgt 5e40 <___multadd+0x22>
    5e6a:	e19f                	move.d r9,[r1+]
    5e6c:	6776                	test.d r7
    5e6e:	1a30                	beq 5e8a <___multadd+0x6c>
    5e70:	66a6                	move.d r6,r10
    5e72:	0861 e55a           	cmp.d [r6+8],r5
    5e76:	18a0                	bge 5e90 <___multadd+0x72>
    5e78:	0f05                	nop 
    5e7a:	6596                	move.d r5,r9
    5e7c:	0592                	addq 5,r9
    5e7e:	6695 e77b           	move.d r7,[r6+r9.d]
    5e82:	0152                	addq 1,r5
    5e84:	1061 e55b           	move.d r5,[r6+16]
    5e88:	66a6                	move.d r6,r10
    5e8a:	be8f                	movem [sp+],r8
    5e8c:	04e2                	addq 4,sp
    5e8e:	3e0d                	jump [sp+]
    5e90:	0461 6bba           	move.d [r6+4],r11
    5e94:	24e1 6aaa           	move.d [sp+36],r10
    5e98:	01b2                	addq 1,r11
    5e9a:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    5ea0:	6a06                	move.d r10,r0
    5ea2:	1061 6cca           	move.d [r6+16],r12
    5ea6:	02c2                	addq 2,r12
    5ea8:	0ca2                	addq 12,r10
    5eaa:	66b6                	move.d r6,r11
    5eac:	0cb2                	addq 12,r11
    5eae:	c2c3                	lslq 2,r12
    5eb0:	3fbd 7c5b 0000      	jsr 5b7c <_memcpy>
    5eb6:	0461 699a           	move.d [r6+4],r9
    5eba:	24e1 6dda           	move.d [sp+36],r13
    5ebe:	49d1 6cca           	move.d [r13+73],r12
    5ec2:	6c95 69ce           	move.d [r9=r12+r9.d],r12
    5ec6:	e6cb                	move.d r12,[r6]
    5ec8:	e96b                	move.d r6,[r9]
    5eca:	afe0                	ba 5e7a <___multadd+0x5c>
    5ecc:	6066                	move.d r0,r6

00005ece <___s2b>:
    5ece:	84e2                	subq 4,sp
    5ed0:	7eba                	move srp,[sp]
    5ed2:	9ce2                	subq 28,sp
    5ed4:	fe6b                	movem r6,[sp]
    5ed6:	6a16                	move.d r10,r1
    5ed8:	6b66                	move.d r11,r6
    5eda:	6c56                	move.d r12,r5
    5edc:	6d46                	move.d r13,r4
    5ede:	6da6                	move.d r13,r10
    5ee0:	08a2                	addq 8,r10
    5ee2:	49b2                	moveq 9,r11
    5ee4:	3fbd 48a2 0000      	jsr a248 <___Div>
    5eea:	c1a2                	cmpq 1,r10
    5eec:	78d0                	ble 5f66 <___s2b+0x98>
    5eee:	4192                	moveq 1,r9
    5ef0:	7b86                	clear.d r11
    5ef2:	2996                	add.d r9,r9
    5ef4:	e9a6                	cmp.d r9,r10
    5ef6:	fbc0                	bgt 5ef2 <___s2b+0x24>
    5ef8:	01b2                	addq 1,r11
    5efa:	61a6                	move.d r1,r10
    5efc:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    5f02:	6ab6                	move.d r10,r11
    5f04:	20e1 699a           	move.d [sp+32],r9
    5f08:	14a1 e99b           	move.d r9,[r10+20]
    5f0c:	4192                	moveq 1,r9
    5f0e:	10a1 e99b           	move.d r9,[r10+16]
    5f12:	c952                	cmpq 9,r5
    5f14:	4ad0                	ble 5f60 <___s2b+0x92>
    5f16:	6606                	move.d r6,r0
    5f18:	0902                	addq 9,r0
    5f1a:	2566                	add.d r5,r6
    5f1c:	6026                	move.d r0,r2
    5f1e:	6f3e 1e5e 0000      	move.d 5e1e <___multadd>,r3
    5f24:	62dc                	movs.b [r2+],r13
    5f26:	61a6                	move.d r1,r10
    5f28:	4ac2                	moveq 10,r12
    5f2a:	b0d2                	subq 48,r13
    5f2c:	b3b9                	jsr r3
    5f2e:	e626                	cmp.d r6,r2
    5f30:	f320                	bne 5f24 <___s2b+0x56>
    5f32:	6ab6                	move.d r10,r11
    5f34:	2506                	add.d r5,r0
    5f36:	8802                	subq 8,r0
    5f38:	e546                	cmp.d r5,r4
    5f3a:	20d0                	ble 5f5c <___s2b+0x8e>
    5f3c:	6ba6                	move.d r11,r10
    5f3e:	6426                	move.d r4,r2
    5f40:	a526                	sub.d r5,r2
    5f42:	2026                	add.d r0,r2
    5f44:	6f3e 1e5e 0000      	move.d 5e1e <___multadd>,r3
    5f4a:	60dc                	movs.b [r0+],r13
    5f4c:	61a6                	move.d r1,r10
    5f4e:	4ac2                	moveq 10,r12
    5f50:	b0d2                	subq 48,r13
    5f52:	b3b9                	jsr r3
    5f54:	e206                	cmp.d r2,r0
    5f56:	f320                	bne 5f4a <___s2b+0x7c>
    5f58:	6ab6                	move.d r10,r11
    5f5a:	6ba6                	move.d r11,r10
    5f5c:	be6f                	movem [sp+],r6
    5f5e:	3e0d                	jump [sp+]
    5f60:	0a02                	addq 10,r0
    5f62:	d5e0                	ba 5f38 <___s2b+0x6a>
    5f64:	4952                	moveq 9,r5
    5f66:	93e0                	ba 5efa <___s2b+0x2c>
    5f68:	7b86                	clear.d r11

00005f6a <___hi0bits>:
    5f6a:	6ad6                	move.d r10,r13
    5f6c:	7d46                	clear.w r13
    5f6e:	6dd6                	test.d r13
    5f70:	4820                	bne 5fba <___hi0bits+0x50>
    5f72:	6a96                	move.d r10,r9
    5f74:	d093                	lslq 16,r9
    5f76:	50a2                	moveq 16,r10
    5f78:	69d6                	move.d r9,r13
    5f7a:	2fdf 0000 00ff      	and.d 0xff000000,r13
    5f80:	0820                	bne 5f8a <___hi0bits+0x20>
    5f82:	69d6                	move.d r9,r13
    5f84:	08a2                	addq 8,r10
    5f86:	c893                	lslq 8,r9
    5f88:	69d6                	move.d r9,r13
    5f8a:	2fdf 0000 00f0      	and.d f0000000 <__end+0xefff02f0>,r13
    5f90:	0820                	bne 5f9a <___hi0bits+0x30>
    5f92:	69d6                	move.d r9,r13
    5f94:	04a2                	addq 4,r10
    5f96:	c493                	lslq 4,r9
    5f98:	69d6                	move.d r9,r13
    5f9a:	2fdf 0000 00c0      	and.d c0000000 <__end+0xbfff02f0>,r13
    5fa0:	0620                	bne 5fa8 <___hi0bits+0x3e>
    5fa2:	0f05                	nop 
    5fa4:	02a2                	addq 2,r10
    5fa6:	c293                	lslq 2,r9
    5fa8:	6996                	test.d r9
    5faa:	0ab0                	blt 5fb6 <___hi0bits+0x4c>
    5fac:	9e93                	btstq 30,r9
    5fae:	0eb0                	blt 5fbe <___hi0bits+0x54>
    5fb0:	0f05                	nop 
    5fb2:	4fac 2000           	movu.b 0x20,r10
    5fb6:	7fb6                	ret 
    5fb8:	0f05                	nop 
    5fba:	bde0                	ba 5f78 <___hi0bits+0xe>
    5fbc:	7a86                	clear.d r10
    5fbe:	7fb6                	ret 
    5fc0:	01a2                	addq 1,r10

00005fc2 <___lo0bits>:
    5fc2:	6a9a                	move.d [r10],r9
    5fc4:	8293                	btstq 2,r9
    5fc6:	1430                	beq 5fdc <___lo0bits+0x1a>
    5fc8:	5996                	test.w r9
    5fca:	8093                	btstq 0,r9
    5fcc:	52b0                	blt 6020 <___lo0bits+0x5e>
    5fce:	8193                	btstq 1,r9
    5fd0:	54b0                	blt 6026 <___lo0bits+0x64>
    5fd2:	42d2                	moveq 2,r13
    5fd4:	e293                	lsrq 2,r9
    5fd6:	ea9b                	move.d r9,[r10]
    5fd8:	7fb6                	ret 
    5fda:	6da6                	move.d r13,r10
    5fdc:	3630                	beq 6014 <___lo0bits+0x52>
    5fde:	0f05                	nop 
    5fe0:	7d86                	clear.d r13
    5fe2:	4996                	test.b r9
    5fe4:	0620                	bne 5fec <___lo0bits+0x2a>
    5fe6:	0f05                	nop 
    5fe8:	08d2                	addq 8,r13
    5fea:	e893                	lsrq 8,r9
    5fec:	8393                	btstq 3,r9
    5fee:	0620                	bne 5ff6 <___lo0bits+0x34>
    5ff0:	0f05                	nop 
    5ff2:	04d2                	addq 4,r13
    5ff4:	e493                	lsrq 4,r9
    5ff6:	8193                	btstq 1,r9
    5ff8:	0620                	bne 6000 <___lo0bits+0x3e>
    5ffa:	0f05                	nop 
    5ffc:	02d2                	addq 2,r13
    5ffe:	e293                	lsrq 2,r9
    6000:	8093                	btstq 0,r9
    6002:	16b0                	blt 601a <___lo0bits+0x58>
    6004:	0f05                	nop 
    6006:	e193                	lsrq 1,r9
    6008:	1020                	bne 601a <___lo0bits+0x58>
    600a:	01d2                	addq 1,r13
    600c:	4fdc 2000           	movu.b 0x20,r13
    6010:	7fb6                	ret 
    6012:	6da6                	move.d r13,r10
    6014:	f093                	lsrq 16,r9
    6016:	cbe0                	ba 5fe2 <___lo0bits+0x20>
    6018:	50d2                	moveq 16,r13
    601a:	ea9b                	move.d r9,[r10]
    601c:	7fb6                	ret 
    601e:	6da6                	move.d r13,r10
    6020:	7d86                	clear.d r13
    6022:	7fb6                	ret 
    6024:	6da6                	move.d r13,r10
    6026:	e193                	lsrq 1,r9
    6028:	ea9b                	move.d r9,[r10]
    602a:	41d2                	moveq 1,r13
    602c:	7fb6                	ret 
    602e:	6da6                	move.d r13,r10

00006030 <___i2b>:
    6030:	84e2                	subq 4,sp
    6032:	7eba                	move srp,[sp]
    6034:	84e2                	subq 4,sp
    6036:	ee0b                	move.d r0,[sp]
    6038:	6b06                	move.d r11,r0
    603a:	41b2                	moveq 1,r11
    603c:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    6042:	14a1 e00b           	move.d r0,[r10+20]
    6046:	41d2                	moveq 1,r13
    6048:	10a1 eddb           	move.d r13,[r10+16]
    604c:	6e0e                	pop r0
    604e:	3e0d                	jump [sp+]

00006050 <___multiply>:
    6050:	84e2                	subq 4,sp
    6052:	7eba                	move srp,[sp]
    6054:	8fec 4400           	subu.b 0x44,sp
    6058:	fe8b                	movem r8,[sp]
    605a:	6b06                	move.d r11,r0
    605c:	10b1 655a           	move.d [r11+16],r5
    6060:	10c1 611a           	move.d [r12+16],r1
    6064:	e156                	cmp.d r1,r5
    6066:	0ca0                	bge 6074 <___multiply+0x24>
    6068:	6c26                	move.d r12,r2
    606a:	6596                	move.d r5,r9
    606c:	6156                	move.d r1,r5
    606e:	6916                	move.d r9,r1
    6070:	6c06                	move.d r12,r0
    6072:	6b26                	move.d r11,r2
    6074:	0401 6bba           	move.d [r0+4],r11
    6078:	6596                	move.d r5,r9
    607a:	2196                	add.d r1,r9
    607c:	30e1 e99b           	move.d r9,[sp+48]
    6080:	0801 e99a           	cmp.d [r0+8],r9
    6084:	04d0                	ble 608a <___multiply+0x3a>
    6086:	0f05                	nop 
    6088:	01b2                	addq 1,r11
    608a:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    6090:	40e1 eaab           	move.d r10,[sp+64]
    6094:	6a76                	move.d r10,r7
    6096:	1472                	addq 20,r7
    6098:	30e1 699a           	move.d [sp+48],r9
    609c:	0592                	addq 5,r9
    609e:	6ad6                	move.d r10,r13
    60a0:	2d95                	addi r9.d,r13
    60a2:	34e1 eddb           	move.d r13,[sp+52]
    60a6:	ed76                	cmp.d r13,r7
    60a8:	0c00                	bcc 60b6 <___multiply+0x66>
    60aa:	6796                	move.d r7,r9
    60ac:	798e                	clear.d [r9+]
    60ae:	34e1 e99a           	cmp.d [sp+52],r9
    60b2:	f910                	bcs 60ac <___multiply+0x5c>
    60b4:	0f05                	nop 
    60b6:	6096                	move.d r0,r9
    60b8:	1492                	addq 20,r9
    60ba:	3ce1 e99b           	move.d r9,[sp+60]
    60be:	0552                	addq 5,r5
    60c0:	2055                	addi r5.d,r0
    60c2:	6286                	move.d r2,r8
    60c4:	1482                	addq 20,r8
    60c6:	0512                	addq 5,r1
    60c8:	2215                	addi r1.d,r2
    60ca:	38e1 e22b           	move.d r2,[sp+56]
    60ce:	e286                	cmp.d r2,r8
    60d0:	d400                	bcc 61a6 <___multiply+0x156>
    60d2:	6056                	move.d r0,r5
    60d4:	28e1 e88b           	move.d r8,[sp+40]
    60d8:	2ce1 e77b           	move.d r7,[sp+44]
    60dc:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    60e2:	28e1 6dda           	move.d [sp+40],r13
    60e6:	6d3e                	move.d [r13+],r3
    60e8:	28e1 eddb           	move.d r13,[sp+40]
    60ec:	5344                	movu.w r3,r4
    60ee:	4a30                	beq 613a <___multiply+0xea>
    60f0:	f033                	lsrq 16,r3
    60f2:	3ce1 666a           	move.d [sp+60],r6
    60f6:	2ce1 622a           	move.d [sp+44],r2
    60fa:	7786                	clear.d r7
    60fc:	668e                	move.d [r6+],r8
    60fe:	623a                	move.d [r2],r3
    6100:	58a4                	movu.w r8,r10
    6102:	64b6                	move.d r4,r11
    6104:	b0b9                	jsr r0
    6106:	6a16                	move.d r10,r1
    6108:	1314                	addu.w r3,r1
    610a:	2716                	add.d r7,r1
    610c:	68a6                	move.d r8,r10
    610e:	f0a3                	lsrq 16,r10
    6110:	64b6                	move.d r4,r11
    6112:	b0b9                	jsr r0
    6114:	f033                	lsrq 16,r3
    6116:	2a36                	add.d r10,r3
    6118:	6196                	move.d r1,r9
    611a:	f093                	lsrq 16,r9
    611c:	2936                	add.d r9,r3
    611e:	6376                	move.d r3,r7
    6120:	f073                	lsrq 16,r7
    6122:	d033                	lslq 16,r3
    6124:	5114                	movu.w r1,r1
    6126:	6137                	or.d r1,r3
    6128:	e656                	cmp.d r6,r5
    612a:	d190                	bhi 60fc <___multiply+0xac>
    612c:	e23f                	move.d r3,[r2+]
    612e:	e27b                	move.d r7,[r2]
    6130:	28e1 6dda           	move.d [sp+40],r13
    6134:	fcd1 633a           	move.d [r13-4],r3
    6138:	f033                	lsrq 16,r3
    613a:	6336                	test.d r3
    613c:	5230                	beq 6190 <___multiply+0x140>
    613e:	0f05                	nop 
    6140:	2ce1 699a           	move.d [sp+44],r9
    6144:	697a                	move.d [r9],r7
    6146:	6916                	move.d r9,r1
    6148:	3ce1 688a           	move.d [sp+60],r8
    614c:	6726                	move.d r7,r2
    614e:	7486                	clear.d r4
    6150:	24e1 e88b           	move.d r8,[sp+36]
    6154:	58a8                	movu.w [r8],r10
    6156:	63b6                	move.d r3,r11
    6158:	b0b9                	jsr r0
    615a:	6266                	move.d r2,r6
    615c:	f063                	lsrq 16,r6
    615e:	2a66                	add.d r10,r6
    6160:	2466                	add.d r4,r6
    6162:	66b6                	move.d r6,r11
    6164:	d0b3                	lslq 16,r11
    6166:	5794                	movu.w r7,r9
    6168:	69b7                	or.d r9,r11
    616a:	e1bf                	move.d r11,[r1+]
    616c:	0482                	addq 4,r8
    616e:	612a                	move.d [r1],r2
    6170:	5274                	movu.w r2,r7
    6172:	24e1 6dda           	move.d [sp+36],r13
    6176:	02d1 5aa8           	movu.w [r13+2],r10
    617a:	63b6                	move.d r3,r11
    617c:	b0b9                	jsr r0
    617e:	2a76                	add.d r10,r7
    6180:	66d6                	move.d r6,r13
    6182:	f0d3                	lsrq 16,r13
    6184:	2d76                	add.d r13,r7
    6186:	6746                	move.d r7,r4
    6188:	e856                	cmp.d r8,r5
    618a:	c590                	bhi 6150 <___multiply+0x100>
    618c:	f043                	lsrq 16,r4
    618e:	e17b                	move.d r7,[r1]
    6190:	2ce1 699a           	move.d [sp+44],r9
    6194:	0492                	addq 4,r9
    6196:	2ce1 e99b           	move.d r9,[sp+44]
    619a:	38e1 6dda           	move.d [sp+56],r13
    619e:	28e1 edda           	cmp.d [sp+40],r13
    61a2:	3f90                	bhi 60e2 <___multiply+0x92>
    61a4:	0f05                	nop 
    61a6:	30e1 a00b           	test.d [sp+48]
    61aa:	2ad0                	ble 61d6 <___multiply+0x186>
    61ac:	0f05                	nop 
    61ae:	34e1 699a           	move.d [sp+52],r9
    61b2:	34e1 6dda           	move.d [sp+52],r13
    61b6:	fcd1 a00b           	test.d [r13-4]
    61ba:	0c30                	beq 61c8 <___multiply+0x178>
    61bc:	8492                	subq 4,r9
    61be:	16e0                	ba 61d6 <___multiply+0x186>
    61c0:	0f05                	nop 
    61c2:	a90b                	test.d [r9]
    61c4:	1020                	bne 61d6 <___multiply+0x186>
    61c6:	0f05                	nop 
    61c8:	30e1 6dda           	move.d [sp+48],r13
    61cc:	81d2                	subq 1,r13
    61ce:	30e1 eddb           	move.d r13,[sp+48]
    61d2:	ef20                	bne 61c2 <___multiply+0x172>
    61d4:	8492                	subq 4,r9
    61d6:	30e1 6dda           	move.d [sp+48],r13
    61da:	40e1 699a           	move.d [sp+64],r9
    61de:	1091 eddb           	move.d r13,[r9+16]
    61e2:	69a6                	move.d r9,r10
    61e4:	be8f                	movem [sp+],r8
    61e6:	20e2                	addq 32,sp
    61e8:	3e0d                	jump [sp+]

000061ea <___pow5mult>:
    61ea:	84e2                	subq 4,sp
    61ec:	7eba                	move srp,[sp]
    61ee:	94e2                	subq 20,sp
    61f0:	fe4b                	movem r4,[sp]
    61f2:	6a36                	move.d r10,r3
    61f4:	6b26                	move.d r11,r2
    61f6:	6c96                	move.d r12,r9
    61f8:	0393                	andq 3,r9
    61fa:	6820                	bne 6264 <___pow5mult+0x7a>
    61fc:	6c06                	move.d r12,r0
    61fe:	a203                	asrq 2,r0
    6200:	4a30                	beq 624c <___pow5mult+0x62>
    6202:	0f05                	nop 
    6204:	4531 611a           	move.d [r3+69],r1
    6208:	7030                	beq 627a <___pow5mult+0x90>
    620a:	0f05                	nop 
    620c:	6f4e 5060 0000      	move.d 6050 <___multiply>,r4
    6212:	10e0                	ba 6224 <___pow5mult+0x3a>
    6214:	0f05                	nop 
    6216:	a103                	asrq 1,r0
    6218:	3430                	beq 624e <___pow5mult+0x64>
    621a:	62a6                	move.d r2,r10
    621c:	619a                	move.d [r1],r9
    621e:	3230                	beq 6252 <___pow5mult+0x68>
    6220:	63a6                	move.d r3,r10
    6222:	6916                	move.d r9,r1
    6224:	8003                	btstq 0,r0
    6226:	efa0                	bge 6216 <___pow5mult+0x2c>
    6228:	63a6                	move.d r3,r10
    622a:	62b6                	move.d r2,r11
    622c:	61c6                	move.d r1,r12
    622e:	b4b9                	jsr r4
    6230:	6226                	test.d r2
    6232:	2c30                	beq 6260 <___pow5mult+0x76>
    6234:	0f05                	nop 
    6236:	0421 6dda           	move.d [r2+4],r13
    623a:	4931 699a           	move.d [r3+73],r9
    623e:	29d5                	addi r13.d,r9
    6240:	69da                	move.d [r9],r13
    6242:	e2db                	move.d r13,[r2]
    6244:	e92b                	move.d r2,[r9]
    6246:	a103                	asrq 1,r0
    6248:	d320                	bne 621c <___pow5mult+0x32>
    624a:	6a26                	move.d r10,r2
    624c:	62a6                	move.d r2,r10
    624e:	be4f                	movem [sp+],r4
    6250:	3e0d                	jump [sp+]
    6252:	61b6                	move.d r1,r11
    6254:	61c6                	move.d r1,r12
    6256:	b4b9                	jsr r4
    6258:	e1ab                	move.d r10,[r1]
    625a:	7a8a                	clear.d [r10]
    625c:	c7e0                	ba 6224 <___pow5mult+0x3a>
    625e:	6a16                	move.d r10,r1
    6260:	b5e0                	ba 6216 <___pow5mult+0x2c>
    6262:	6a26                	move.d r10,r2
    6264:	c293                	lslq 2,r9
    6266:	6f9d 78ad 0000 6cca 	move.d [r9+ad78 <___mprec_tens+0xc4>],r12
    626e:	7d86                	clear.d r13
    6270:	3fbd 1e5e 0000      	jsr 5e1e <___multadd>
    6276:	87e0                	ba 61fe <___pow5mult+0x14>
    6278:	6a26                	move.d r10,r2
    627a:	63a6                	move.d r3,r10
    627c:	5fbc 7102           	movu.w 0x271,r11
    6280:	3fbd 3060 0000      	jsr 6030 <___i2b>
    6286:	6a16                	move.d r10,r1
    6288:	4531 eaab           	move.d r10,[r3+69]
    628c:	7fe0                	ba 620c <___pow5mult+0x22>
    628e:	7a8a                	clear.d [r10]

00006290 <___lshift>:
    6290:	84e2                	subq 4,sp
    6292:	7eba                	move srp,[sp]
    6294:	9ce2                	subq 28,sp
    6296:	fe6b                	movem r6,[sp]
    6298:	6a36                	move.d r10,r3
    629a:	6b26                	move.d r11,r2
    629c:	6c06                	move.d r12,r0
    629e:	a503                	asrq 5,r0
    62a0:	04b1 6bba           	move.d [r11+4],r11
    62a4:	1021 240a           	add.d [r2+16],r0,r4
    62a8:	6416                	move.d r4,r1
    62aa:	0112                	addq 1,r1
    62ac:	0821 699a           	move.d [r2+8],r9
    62b0:	e916                	cmp.d r9,r1
    62b2:	0ad0                	ble 62be <___lshift+0x2e>
    62b4:	6c56                	move.d r12,r5
    62b6:	2996                	add.d r9,r9
    62b8:	e916                	cmp.d r9,r1
    62ba:	fbc0                	bgt 62b6 <___lshift+0x26>
    62bc:	01b2                	addq 1,r11
    62be:	63a6                	move.d r3,r10
    62c0:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    62c6:	6ad6                	move.d r10,r13
    62c8:	6006                	test.d r0
    62ca:	12d0                	ble 62de <___lshift+0x4e>
    62cc:	14d2                	addq 20,r13
    62ce:	7986                	clear.d r9
    62d0:	0192                	addq 1,r9
    62d2:	e096                	cmp.d r0,r9
    62d4:	fb20                	bne 62d0 <___lshift+0x40>
    62d6:	7d8e                	clear.d [r13+]
    62d8:	0592                	addq 5,r9
    62da:	6ad6                	move.d r10,r13
    62dc:	2d95                	addi r9.d,r13
    62de:	6296                	move.d r2,r9
    62e0:	1492                	addq 20,r9
    62e2:	1021 6bba           	move.d [r2+16],r11
    62e6:	05b2                	addq 5,r11
    62e8:	62c6                	move.d r2,r12
    62ea:	2cb5                	addi r11.d,r12
    62ec:	1f53                	andq 31,r5
    62ee:	3c30                	beq 632c <___lshift+0x9c>
    62f0:	6cb6                	move.d r12,r11
    62f2:	4f6c 2000           	movu.b 0x20,r6
    62f6:	a566                	sub.d r5,r6
    62f8:	7c86                	clear.d r12
    62fa:	690a                	move.d [r9],r0
    62fc:	e504                	lsl.d r5,r0
    62fe:	60c7                	or.d r0,r12
    6300:	edcf                	move.d r12,[r13+]
    6302:	69ce                	move.d [r9+],r12
    6304:	e9b6                	cmp.d r9,r11
    6306:	f390                	bhi 62fa <___lshift+0x6a>
    6308:	e6c7                	lsr.d r6,r12
    630a:	0630                	beq 6312 <___lshift+0x82>
    630c:	edcb                	move.d r12,[r13]
    630e:	6416                	move.d r4,r1
    6310:	0212                	addq 2,r1
    6312:	8112                	subq 1,r1
    6314:	10a1 e11b           	move.d r1,[r10+16]
    6318:	0421 699a           	move.d [r2+4],r9
    631c:	4931 6dda           	move.d [r3+73],r13
    6320:	6d95 69de           	move.d [r9=r13+r9.d],r13
    6324:	e2db                	move.d r13,[r2]
    6326:	e92b                	move.d r2,[r9]
    6328:	be6f                	movem [sp+],r6
    632a:	3e0d                	jump [sp+]
    632c:	69ce                	move.d [r9+],r12
    632e:	e9b6                	cmp.d r9,r11
    6330:	e180                	bls 6312 <___lshift+0x82>
    6332:	edcf                	move.d r12,[r13+]
    6334:	69ce                	move.d [r9+],r12
    6336:	e9b6                	cmp.d r9,r11
    6338:	f390                	bhi 632c <___lshift+0x9c>
    633a:	edcf                	move.d r12,[r13+]
    633c:	d7e0                	ba 6314 <___lshift+0x84>
    633e:	8112                	subq 1,r1

00006340 <___mcmp>:
    6340:	84e2                	subq 4,sp
    6342:	ee0b                	move.d r0,[sp]
    6344:	6a96                	move.d r10,r9
    6346:	10a1 6aaa           	move.d [r10+16],r10
    634a:	10b1 6dda           	move.d [r11+16],r13
    634e:	ada6                	sub.d r13,r10
    6350:	1e20                	bne 6370 <___mcmp+0x30>
    6352:	05d2                	addq 5,r13
    6354:	6906                	move.d r9,r0
    6356:	1402                	addq 20,r0
    6358:	c2d3                	lslq 2,r13
    635a:	2d96                	add.d r13,r9
    635c:	2db6                	add.d r13,r11
    635e:	8492                	subq 4,r9
    6360:	69da                	move.d [r9],r13
    6362:	84b2                	subq 4,r11
    6364:	6bca                	move.d [r11],r12
    6366:	ecd6                	cmp.d r12,r13
    6368:	0a20                	bne 6374 <___mcmp+0x34>
    636a:	e906                	cmp.d r9,r0
    636c:	f310                	bcs 6360 <___mcmp+0x20>
    636e:	8492                	subq 4,r9
    6370:	7fb6                	ret 
    6372:	6e0e                	pop r0
    6374:	edc6                	cmp.d r13,r12
    6376:	f980                	bls 6370 <___mcmp+0x30>
    6378:	41a2                	moveq 1,r10
    637a:	f5e0                	ba 6370 <___mcmp+0x30>
    637c:	7fa2                	moveq -1,r10

0000637e <___mdiff>:
    637e:	84e2                	subq 4,sp
    6380:	7eba                	move srp,[sp]
    6382:	98e2                	subq 24,sp
    6384:	fe5b                	movem r5,[sp]
    6386:	6a16                	move.d r10,r1
    6388:	6b26                	move.d r11,r2
    638a:	6c06                	move.d r12,r0
    638c:	6ba6                	move.d r11,r10
    638e:	6cb6                	move.d r12,r11
    6390:	3fbd 4063 0000      	jsr 6340 <___mcmp>
    6396:	6aa6                	test.d r10
    6398:	b630                	beq 6450 <___mdiff+0xd2>
    639a:	6aa6                	test.d r10
    639c:	aab0                	blt 6448 <___mdiff+0xca>
    639e:	6296                	move.d r2,r9
    63a0:	7386                	clear.d r3
    63a2:	61a6                	move.d r1,r10
    63a4:	0421 6bba           	move.d [r2+4],r11
    63a8:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    63ae:	0ca1 e33b           	move.d r3,[r10+12]
    63b2:	1021 633a           	move.d [r2+16],r3
    63b6:	6346                	move.d r3,r4
    63b8:	0542                	addq 5,r4
    63ba:	6296                	move.d r2,r9
    63bc:	2945                	addi r4.d,r9
    63be:	6946                	move.d r9,r4
    63c0:	1001 655a           	move.d [r0+16],r5
    63c4:	0552                	addq 5,r5
    63c6:	6096                	move.d r0,r9
    63c8:	2955                	addi r5.d,r9
    63ca:	6956                	move.d r9,r5
    63cc:	1422                	addq 20,r2
    63ce:	1402                	addq 20,r0
    63d0:	6a16                	move.d r10,r1
    63d2:	1412                	addq 20,r1
    63d4:	7b86                	clear.d r11
    63d6:	629e                	move.d [r2+],r9
    63d8:	60ce                	move.d [r0+],r12
    63da:	6bd6                	move.d r11,r13
    63dc:	19d4                	addu.w r9,r13
    63de:	9cd4                	subu.w r12,r13
    63e0:	f093                	lsrq 16,r9
    63e2:	f0c3                	lsrq 16,r12
    63e4:	ac96                	sub.d r12,r9
    63e6:	6dc6                	move.d r13,r12
    63e8:	b0c3                	asrq 16,r12
    63ea:	2c96                	add.d r12,r9
    63ec:	62c6                	move.d r2,r12
    63ee:	69b6                	move.d r9,r11
    63f0:	b0b3                	asrq 16,r11
    63f2:	d093                	lslq 16,r9
    63f4:	5dd4                	movu.w r13,r13
    63f6:	6d97                	or.d r13,r9
    63f8:	61d6                	move.d r1,r13
    63fa:	ed9f                	move.d r9,[r13+]
    63fc:	e056                	cmp.d r0,r5
    63fe:	d790                	bhi 63d6 <___mdiff+0x58>
    6400:	6d16                	move.d r13,r1
    6402:	e246                	cmp.d r2,r4
    6404:	2c80                	bls 6432 <___mdiff+0xb4>
    6406:	6d56                	move.d r13,r5
    6408:	6c1e                	move.d [r12+],r1
    640a:	6b06                	move.d r11,r0
    640c:	1104                	addu.w r1,r0
    640e:	6096                	move.d r0,r9
    6410:	b093                	asrq 16,r9
    6412:	f013                	lsrq 16,r1
    6414:	2196                	add.d r1,r9
    6416:	69b6                	move.d r9,r11
    6418:	b0b3                	asrq 16,r11
    641a:	d093                	lslq 16,r9
    641c:	5004                	movu.w r0,r0
    641e:	6097                	or.d r0,r9
    6420:	ec46                	cmp.d r12,r4
    6422:	e590                	bhi 6408 <___mdiff+0x8a>
    6424:	ed9f                	move.d r9,[r13+]
    6426:	62d6                	move.d r2,r13
    6428:	7d87                	not r13
    642a:	24d6                	add.d r4,r13
    642c:	3cd3                	andq -4,r13
    642e:	04d2                	addq 4,r13
    6430:	25d6                	add.d r5,r13
    6432:	6996                	test.d r9
    6434:	0a20                	bne 6440 <___mdiff+0xc2>
    6436:	84d2                	subq 4,r13
    6438:	84d2                	subq 4,r13
    643a:	ad0b                	test.d [r13]
    643c:	fb30                	beq 6438 <___mdiff+0xba>
    643e:	8132                	subq 1,r3
    6440:	10a1 e33b           	move.d r3,[r10+16]
    6444:	be5f                	movem [sp+],r5
    6446:	3e0d                	jump [sp+]
    6448:	6026                	move.d r0,r2
    644a:	6906                	move.d r9,r0
    644c:	55e0                	ba 63a2 <___mdiff+0x24>
    644e:	4132                	moveq 1,r3
    6450:	61a6                	move.d r1,r10
    6452:	7b86                	clear.d r11
    6454:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    645a:	4192                	moveq 1,r9
    645c:	10a1 e99b           	move.d r9,[r10+16]
    6460:	14a1 708a           	clear.d [r10+20]
    6464:	be5f                	movem [sp+],r5
    6466:	3e0d                	jump [sp+]

00006468 <___ulp>:
    6468:	2fbf 0000 f07f      	and.d 7ff00000 <__end+0x7fef02f0>,r11
    646e:	2fbe 0000 c0fc      	add.d fcc00000 <__end+0xfcbf02f0>,r11
    6474:	6bb6                	test.d r11
    6476:	16d0                	ble 648e <___ulp+0x26>
    6478:	90e2                	subq 16,sp
    647a:	0ce1 ebbb           	move.d r11,[sp+12]
    647e:	08e1 708a           	clear.d [sp+8]
    6482:	08e1 6aaa           	move.d [sp+8],r10
    6486:	0ce1 6bba           	move.d [sp+12],r11
    648a:	7fb6                	ret 
    648c:	10e2                	addq 16,sp
    648e:	abb5                	neg.d r11,r11
    6490:	b4b3                	asrq 20,r11
    6492:	d3b2                	cmpq 19,r11
    6494:	26d0                	ble 64bc <___ulp+0x54>
    6496:	0f05                	nop 
    6498:	0ce1 708a           	clear.d [sp+12]
    649c:	cfbc 3200           	cmpu.b 0x32,r11
    64a0:	0ac0                	bgt 64ac <___ulp+0x44>
    64a2:	4192                	moveq 1,r9
    64a4:	4fdc 3300           	movu.b 0x33,r13
    64a8:	abd6                	sub.d r11,r13
    64aa:	ed94                	lsl.d r13,r9
    64ac:	08e1 e99b           	move.d r9,[sp+8]
    64b0:	08e1 6aaa           	move.d [sp+8],r10
    64b4:	0ce1 6bba           	move.d [sp+12],r11
    64b8:	7fb6                	ret 
    64ba:	10e2                	addq 16,sp
    64bc:	6f9e 0000 0800      	move.d 80000 <__end+0x702f0>,r9
    64c2:	ab97                	asr.d r11,r9
    64c4:	0ce1 e99b           	move.d r9,[sp+12]
    64c8:	08e1 708a           	clear.d [sp+8]
    64cc:	08e1 6aaa           	move.d [sp+8],r10
    64d0:	0ce1 6bba           	move.d [sp+12],r11
    64d4:	7fb6                	ret 
    64d6:	10e2                	addq 16,sp

000064d8 <___b2d>:
    64d8:	84e2                	subq 4,sp
    64da:	7eba                	move srp,[sp]
    64dc:	9ce2                	subq 28,sp
    64de:	fe4b                	movem r4,[sp]
    64e0:	6b46                	move.d r11,r4
    64e2:	6a36                	move.d r10,r3
    64e4:	1432                	addq 20,r3
    64e6:	10a1 699a           	move.d [r10+16],r9
    64ea:	0592                	addq 5,r9
    64ec:	6a06                	move.d r10,r0
    64ee:	2095                	addi r9.d,r0
    64f0:	6026                	move.d r0,r2
    64f2:	8422                	subq 4,r2
    64f4:	fc01 611a           	move.d [r0-4],r1
    64f8:	61a6                	move.d r1,r10
    64fa:	3fbd 6a5f 0000      	jsr 5f6a <___hi0bits>
    6500:	4f9c 2000           	movu.b 0x20,r9
    6504:	aa96                	sub.d r10,r9
    6506:	caa2                	cmpq 10,r10
    6508:	38c0                	bgt 6542 <___b2d+0x6a>
    650a:	e49b                	move.d r9,[r4]
    650c:	4b92                	moveq 11,r9
    650e:	aa96                	sub.d r10,r9
    6510:	61d6                	move.d r1,r13
    6512:	e9d7                	lsr.d r9,r13
    6514:	6fdf 0000 f03f      	or.d 3ff00000 <__end+0x3fef02f0>,r13
    651a:	18e1 eddb           	move.d r13,[sp+24]
    651e:	e236                	cmp.d r2,r3
    6520:	0800                	bcc 652a <___b2d+0x52>
    6522:	7d86                	clear.d r13
    6524:	f801 6dda           	move.d [r0-8],r13
    6528:	e9d7                	lsr.d r9,r13
    652a:	15a2                	addq 21,r10
    652c:	ea14                	lsl.d r10,r1
    652e:	61d7                	or.d r1,r13
    6530:	14e1 eddb           	move.d r13,[sp+20]
    6534:	14e1 6aaa           	move.d [sp+20],r10
    6538:	18e1 6bba           	move.d [sp+24],r11
    653c:	be4f                	movem [sp+],r4
    653e:	08e2                	addq 8,sp
    6540:	3e0d                	jump [sp+]
    6542:	e236                	cmp.d r2,r3
    6544:	4210                	bcs 6588 <___b2d+0xb0>
    6546:	6a96                	move.d r10,r9
    6548:	8b92                	subq 11,r9
    654a:	4830                	beq 6594 <___b2d+0xbc>
    654c:	7d86                	clear.d r13
    654e:	4fcc 2b00           	movu.b 0x2b,r12
    6552:	aac6                	sub.d r10,r12
    6554:	e914                	lsl.d r9,r1
    6556:	6f1f 0000 f03f      	or.d 3ff00000 <__end+0x3fef02f0>,r1
    655c:	6db6                	move.d r13,r11
    655e:	ecb7                	lsr.d r12,r11
    6560:	6b17                	or.d r11,r1
    6562:	18e1 e11b           	move.d r1,[sp+24]
    6566:	e326                	cmp.d r3,r2
    6568:	4680                	bls 65b0 <___b2d+0xd8>
    656a:	0f05                	nop 
    656c:	fc21 6bba           	move.d [r2-4],r11
    6570:	ecb7                	lsr.d r12,r11
    6572:	e9d4                	lsl.d r9,r13
    6574:	6db7                	or.d r13,r11
    6576:	14e1 ebbb           	move.d r11,[sp+20]
    657a:	14e1 6aaa           	move.d [sp+20],r10
    657e:	18e1 6bba           	move.d [sp+24],r11
    6582:	be4f                	movem [sp+],r4
    6584:	08e2                	addq 8,sp
    6586:	3e0d                	jump [sp+]
    6588:	6026                	move.d r0,r2
    658a:	f801 6dda           	move.d [r0-8],r13
    658e:	8b92                	subq 11,r9
    6590:	bd20                	bne 654e <___b2d+0x76>
    6592:	8822                	subq 8,r2
    6594:	6f1f 0000 f03f      	or.d 3ff00000 <__end+0x3fef02f0>,r1
    659a:	18e1 e11b           	move.d r1,[sp+24]
    659e:	14e1 eddb           	move.d r13,[sp+20]
    65a2:	14e1 6aaa           	move.d [sp+20],r10
    65a6:	18e1 6bba           	move.d [sp+24],r11
    65aa:	be4f                	movem [sp+],r4
    65ac:	08e2                	addq 8,sp
    65ae:	3e0d                	jump [sp+]
    65b0:	c1e0                	ba 6572 <___b2d+0x9a>
    65b2:	7b86                	clear.d r11

000065b4 <___d2b>:
    65b4:	84e2                	subq 4,sp
    65b6:	7eba                	move srp,[sp]
    65b8:	a0e2                	subq 32,sp
    65ba:	fe3b                	movem r3,[sp]
    65bc:	6d36                	move.d r13,r3
    65be:	18e1 ebbb           	move.d r11,[sp+24]
    65c2:	1ce1 eccb           	move.d r12,[sp+28]
    65c6:	41b2                	moveq 1,r11
    65c8:	3fbd 985d 0000      	jsr 5d98 <__Balloc>
    65ce:	1ce1 600a           	move.d [sp+28],r0
    65d2:	6096                	move.d r0,r9
    65d4:	2f9f ffff 0f00      	and.d fffff <__end+0xf02ef>,r9
    65da:	2f0f ffff ff7f      	and.d 7fffffff <__end+0x7fff02ef>,r0
    65e0:	f403                	lsrq 20,r0
    65e2:	0830                	beq 65ec <___d2b+0x38>
    65e4:	6a16                	move.d r10,r1
    65e6:	6f9f 0000 1000      	or.d 100000 <__end+0xf02f0>,r9
    65ec:	14e1 e99b           	move.d r9,[sp+20]
    65f0:	18e1 699a           	move.d [sp+24],r9
    65f4:	5230                	beq 6648 <___d2b+0x94>
    65f6:	6ea6                	move.d sp,r10
    65f8:	10e1 e99b           	move.d r9,[sp+16]
    65fc:	10a2                	addq 16,r10
    65fe:	3fbd c25f 0000      	jsr 5fc2 <___lo0bits>
    6604:	6aa6                	test.d r10
    6606:	8420                	bne 668c <___d2b+0xd8>
    6608:	0f05                	nop 
    660a:	10e1 6dda           	move.d [sp+16],r13
    660e:	1411 eddb           	move.d r13,[r1+20]
    6612:	14e1 699a           	move.d [sp+20],r9
    6616:	1811 e99b           	move.d r9,[r1+24]
    661a:	6996                	test.d r9
    661c:	3935                	seq r9
    661e:	4222                	moveq 2,r2
    6620:	a926                	sub.d r9,r2
    6622:	1011 e22b           	move.d r2,[r1+16]
    6626:	6006                	test.d r0
    6628:	3c30                	beq 6666 <___d2b+0xb2>
    662a:	0f05                	nop 
    662c:	9f0c 3304           	subu.w 0x433,r0
    6630:	2a06                	add.d r10,r0
    6632:	e30b                	move.d r0,[r3]
    6634:	4f9c 3500           	movu.b 0x35,r9
    6638:	aa96                	sub.d r10,r9
    663a:	24e1 6dda           	move.d [sp+36],r13
    663e:	ed9b                	move.d r9,[r13]
    6640:	61a6                	move.d r1,r10
    6642:	be3f                	movem [sp+],r3
    6644:	10e2                	addq 16,sp
    6646:	3e0d                	jump [sp+]
    6648:	14a2                	addq 20,r10
    664a:	3fbd c25f 0000      	jsr 5fc2 <___lo0bits>
    6650:	14e1 699a           	move.d [sp+20],r9
    6654:	1411 e99b           	move.d r9,[r1+20]
    6658:	41c2                	moveq 1,r12
    665a:	1011 eccb           	move.d r12,[r1+16]
    665e:	20a2                	addq 32,r10
    6660:	6006                	test.d r0
    6662:	c920                	bne 662c <___d2b+0x78>
    6664:	6c26                	move.d r12,r2
    6666:	9fac 3204           	subu.w 0x432,r10
    666a:	e3ab                	move.d r10,[r3]
    666c:	6296                	move.d r2,r9
    666e:	0492                	addq 4,r9
    6670:	6195 6aaa           	move.d [r1+r9.d],r10
    6674:	3fbd 6a5f 0000      	jsr 5f6a <___hi0bits>
    667a:	c523                	lslq 5,r2
    667c:	aa26                	sub.d r10,r2
    667e:	24e1 699a           	move.d [sp+36],r9
    6682:	e92b                	move.d r2,[r9]
    6684:	61a6                	move.d r1,r10
    6686:	be3f                	movem [sp+],r3
    6688:	10e2                	addq 16,sp
    668a:	3e0d                	jump [sp+]
    668c:	14e1 699a           	move.d [sp+20],r9
    6690:	4fdc 2000           	movu.b 0x20,r13
    6694:	aad6                	sub.d r10,r13
    6696:	69c6                	move.d r9,r12
    6698:	edc4                	lsl.d r13,r12
    669a:	6cd6                	move.d r12,r13
    669c:	10e1 6ddb           	or.d [sp+16],r13
    66a0:	1411 eddb           	move.d r13,[r1+20]
    66a4:	ea97                	lsr.d r10,r9
    66a6:	14e1 e99b           	move.d r9,[sp+20]
    66aa:	6be0                	ba 6616 <___d2b+0x62>
    66ac:	0f05                	nop 

000066ae <___ratio>:
    66ae:	84e2                	subq 4,sp
    66b0:	7eba                	move srp,[sp]
    66b2:	ace2                	subq 44,sp
    66b4:	fe4b                	movem r4,[sp]
    66b6:	6a46                	move.d r10,r4
    66b8:	6b36                	move.d r11,r3
    66ba:	6f0e d864 0000      	move.d 64d8 <___b2d>,r0
    66c0:	6eb6                	move.d sp,r11
    66c2:	14b2                	addq 20,r11
    66c4:	b0b9                	jsr r0
    66c6:	6a26                	move.d r10,r2
    66c8:	6b16                	move.d r11,r1
    66ca:	1ce1 eaab           	move.d r10,[sp+28]
    66ce:	20e1 ebbb           	move.d r11,[sp+32]
    66d2:	63a6                	move.d r3,r10
    66d4:	6eb6                	move.d sp,r11
    66d6:	18b2                	addq 24,r11
    66d8:	b0b9                	jsr r0
    66da:	6ac6                	move.d r10,r12
    66dc:	14e1 699a           	move.d [sp+20],r9
    66e0:	18e1 a99a           	sub.d [sp+24],r9
    66e4:	1041 600a           	move.d [r4+16],r0
    66e8:	1031 a00a           	sub.d [r3+16],r0
    66ec:	c503                	lslq 5,r0
    66ee:	2096                	add.d r0,r9
    66f0:	6996                	test.d r9
    66f2:	1cd0                	ble 6710 <___ratio+0x62>
    66f4:	6bd6                	move.d r11,r13
    66f6:	d493                	lslq 20,r9
    66f8:	1ce1 622a           	move.d [sp+28],r2
    66fc:	20e1 219a           	add.d [sp+32],r9,r1
    6700:	62a6                	move.d r2,r10
    6702:	61b6                	move.d r1,r11
    6704:	3fbd 949b 0000      	jsr 9b94 <___divdf3>
    670a:	be4f                	movem [sp+],r4
    670c:	18e2                	addq 24,sp
    670e:	3e0d                	jump [sp+]
    6710:	d493                	lslq 20,r9
    6712:	a9d6                	sub.d r9,r13
    6714:	62a6                	move.d r2,r10
    6716:	61b6                	move.d r1,r11
    6718:	3fbd 949b 0000      	jsr 9b94 <___divdf3>
    671e:	be4f                	movem [sp+],r4
    6720:	18e2                	addq 24,sp
    6722:	3e0d                	jump [sp+]

00006724 <__mprec_log10>:
    6724:	84e2                	subq 4,sp
    6726:	7eba                	move srp,[sp]
    6728:	88e2                	subq 8,sp
    672a:	fe1b                	movem r1,[sp]
    672c:	d7a2                	cmpq 23,r10
    672e:	24d0                	ble 6754 <__mprec_log10+0x30>
    6730:	6a06                	move.d r10,r0
    6732:	7a86                	clear.d r10
    6734:	6fbe 0000 f03f      	move.d 3ff00000 <__end+0x3fef02f0>,r11
    673a:	6f1e d097 0000      	move.d 97d0 <___muldf3>,r1
    6740:	7c86                	clear.d r12
    6742:	6fde 0000 2440      	move.d 40240000 <__end+0x402302f0>,r13
    6748:	b1b9                	jsr r1
    674a:	8102                	subq 1,r0
    674c:	f520                	bne 6742 <__mprec_log10+0x1e>
    674e:	7c86                	clear.d r12
    6750:	be1f                	movem [sp+],r1
    6752:	3e0d                	jump [sp+]
    6754:	c303                	lslq 3,r0
    6756:	2f0e b4ac 0000      	add.d acb4 <___mprec_tens>,r0
    675c:	60aa                	move.d [r0],r10
    675e:	0401 6bba           	move.d [r0+4],r11
    6762:	be1f                	movem [sp+],r1
    6764:	3e0d                	jump [sp+]

00006766 <___copybits>:
    6766:	88e2                	subq 8,sp
    6768:	fe1b                	movem r1,[sp]
    676a:	81b2                	subq 1,r11
    676c:	a5b3                	asrq 5,r11
    676e:	01b2                	addq 1,r11
    6770:	6a06                	move.d r10,r0
    6772:	20b5                	addi r11.d,r0
    6774:	6c96                	move.d r12,r9
    6776:	1492                	addq 20,r9
    6778:	10c1 6bba           	move.d [r12+16],r11
    677c:	05b2                	addq 5,r11
    677e:	6c16                	move.d r12,r1
    6780:	21b5                	addi r11.d,r1
    6782:	e196                	cmp.d r1,r9
    6784:	1e00                	bcc 67a4 <___copybits+0x3e>
    6786:	61b6                	move.d r1,r11
    6788:	6ad6                	move.d r10,r13
    678a:	691e                	move.d [r9+],r1
    678c:	e9b6                	cmp.d r9,r11
    678e:	fb90                	bhi 678a <___copybits+0x24>
    6790:	ed1f                	move.d r1,[r13+]
    6792:	acb6                	sub.d r12,r11
    6794:	95b2                	subq 21,r11
    6796:	3cb3                	andq -4,r11
    6798:	04b2                	addq 4,r11
    679a:	2ba6                	add.d r11,r10
    679c:	ea06                	cmp.d r10,r0
    679e:	0a80                	bls 67aa <___copybits+0x44>
    67a0:	0f05                	nop 
    67a2:	7a8e                	clear.d [r10+]
    67a4:	ea06                	cmp.d r10,r0
    67a6:	fb90                	bhi 67a2 <___copybits+0x3c>
    67a8:	0f05                	nop 
    67aa:	7fb6                	ret 
    67ac:	be1f                	movem [sp+],r1

000067ae <___any_on>:
    67ae:	88e2                	subq 8,sp
    67b0:	fe1b                	movem r1,[sp]
    67b2:	6a96                	move.d r10,r9
    67b4:	6ad6                	move.d r10,r13
    67b6:	10a1 6cca           	move.d [r10+16],r12
    67ba:	6ba6                	move.d r11,r10
    67bc:	a5a3                	asrq 5,r10
    67be:	eac6                	cmp.d r10,r12
    67c0:	0eb0                	blt 67d0 <___any_on+0x22>
    67c2:	14d2                	addq 20,r13
    67c4:	eac6                	cmp.d r10,r12
    67c6:	2ed0                	ble 67f6 <___any_on+0x48>
    67c8:	0f05                	nop 
    67ca:	1fb3                	andq 31,r11
    67cc:	3220                	bne 6800 <___any_on+0x52>
    67ce:	6ac6                	move.d r10,r12
    67d0:	05c2                	addq 5,r12
    67d2:	29c5                	addi r12.d,r9
    67d4:	e9d6                	cmp.d r9,r13
    67d6:	2200                	bcc 67fa <___any_on+0x4c>
    67d8:	69c6                	move.d r9,r12
    67da:	8492                	subq 4,r9
    67dc:	fcc1 a00b           	test.d [r12-4]
    67e0:	1020                	bne 67f2 <___any_on+0x44>
    67e2:	41a2                	moveq 1,r10
    67e4:	e9d6                	cmp.d r9,r13
    67e6:	1200                	bcc 67fa <___any_on+0x4c>
    67e8:	8492                	subq 4,r9
    67ea:	a90b                	test.d [r9]
    67ec:	f730                	beq 67e4 <___any_on+0x36>
    67ee:	0f05                	nop 
    67f0:	41a2                	moveq 1,r10
    67f2:	7fb6                	ret 
    67f4:	be1f                	movem [sp+],r1
    67f6:	d9e0                	ba 67d0 <___any_on+0x22>
    67f8:	6ac6                	move.d r10,r12
    67fa:	7a86                	clear.d r10
    67fc:	7fb6                	ret 
    67fe:	be1f                	movem [sp+],r1
    6800:	05a2                	addq 5,r10
    6802:	69a5 611a           	move.d [r9+r10.d],r1
    6806:	6106                	move.d r1,r0
    6808:	eb07                	lsr.d r11,r0
    680a:	eb04                	lsl.d r11,r0
    680c:	e106                	cmp.d r1,r0
    680e:	c130                	beq 67d0 <___any_on+0x22>
    6810:	41a2                	moveq 1,r10
    6812:	7fb6                	ret 
    6814:	be1f                	movem [sp+],r1
	...

00006818 <___fpclassifyd>:
    6818:	6bb6                	test.d r11
    681a:	2430                	beq 6840 <___fpclassifyd+0x28>
    681c:	88e2                	subq 8,sp
    681e:	efbe 0000 0080      	cmp.d 80000000 <__end+0x7fff02f0>,r11
    6824:	1a30                	beq 6840 <___fpclassifyd+0x28>
    6826:	0f05                	nop 
    6828:	6bd6                	move.d r11,r13
    682a:	2fde 0000 f0ff      	add.d 0xfff00000,r13
    6830:	efde ffff df7f      	cmp.d 7fdfffff <__end+0x7fdf02ef>,r13
    6836:	1490                	bhi 684c <___fpclassifyd+0x34>
    6838:	4492                	moveq 4,r9
    683a:	69a6                	move.d r9,r10
    683c:	7fb6                	ret 
    683e:	08e2                	addq 8,sp
    6840:	6aa6                	test.d r10
    6842:	e520                	bne 6828 <___fpclassifyd+0x10>
    6844:	4292                	moveq 2,r9
    6846:	69a6                	move.d r9,r10
    6848:	7fb6                	ret 
    684a:	08e2                	addq 8,sp
    684c:	2fde 0000 0080      	add.d 80000000 <__end+0x7fff02f0>,r13
    6852:	efde ffff df7f      	cmp.d 7fdfffff <__end+0x7fdf02ef>,r13
    6858:	e180                	bls 683a <___fpclassifyd+0x22>
    685a:	0f05                	nop 
    685c:	4f9e 0300           	move.b 0x3,r9
    6860:	efbe ffff 0f00      	cmp.d fffff <__end+0xf02ef>,r11
    6866:	d380                	bls 683a <___fpclassifyd+0x22>
    6868:	0f05                	nop 
    686a:	2fde 0000 1000      	add.d 100000 <__end+0xf02f0>,r13
    6870:	efde ffff 0f00      	cmp.d fffff <__end+0xf02ef>,r13
    6876:	c380                	bls 683a <___fpclassifyd+0x22>
    6878:	0f05                	nop 
    687a:	efbe 0000 f07f      	cmp.d 7ff00000 <__end+0x7fef02f0>,r11
    6880:	0c30                	beq 688e <___fpclassifyd+0x76>
    6882:	0f05                	nop 
    6884:	efbe 0000 f0ff      	cmp.d 0xfff00000,r11
    688a:	af20                	bne 683a <___fpclassifyd+0x22>
    688c:	7986                	clear.d r9
    688e:	6aa6                	test.d r10
    6890:	3935                	seq r9
    6892:	a9e0                	ba 683c <___fpclassifyd+0x24>
    6894:	69a6                	move.d r9,r10
	...

00006898 <__sbrk_r>:
    6898:	84e2                	subq 4,sp
    689a:	7eba                	move srp,[sp]
    689c:	84e2                	subq 4,sp
    689e:	ee0b                	move.d r0,[sp]
    68a0:	6a06                	move.d r10,r0
    68a2:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    68aa:	6ba6                	move.d r11,r10
    68ac:	3fbd f214 0000      	jsr 14f2 <__sbrk>
    68b2:	ffa2                	cmpq -1,r10
    68b4:	0630                	beq 68bc <__sbrk_r+0x24>
    68b6:	0f05                	nop 
    68b8:	6e0e                	pop r0
    68ba:	3e0d                	jump [sp+]
    68bc:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    68c2:	699a                	move.d [r9],r9
    68c4:	f330                	beq 68b8 <__sbrk_r+0x20>
    68c6:	0f05                	nop 
    68c8:	e09b                	move.d r9,[r0]
    68ca:	6e0e                	pop r0
    68cc:	3e0d                	jump [sp+]
	...

000068d0 <___sread>:
    68d0:	84e2                	subq 4,sp
    68d2:	7eba                	move srp,[sp]
    68d4:	84e2                	subq 4,sp
    68d6:	ee0b                	move.d r0,[sp]
    68d8:	6b06                	move.d r11,r0
    68da:	0eb1 7bb8           	movs.w [r11+14],r11
    68de:	3fbd bc82 0000      	jsr 82bc <__read_r>
    68e4:	6aa6                	test.d r10
    68e6:	0eb0                	blt 68f6 <___sread+0x26>
    68e8:	0f05                	nop 
    68ea:	5001 29aa           	add.d [r0+80],r10,r9
    68ee:	5001 e99b           	move.d r9,[r0+80]
    68f2:	6e0e                	pop r0
    68f4:	3e0d                	jump [sp+]
    68f6:	0c01 599a           	move.w [r0+12],r9
    68fa:	1f9f ffef           	and.w 0xefff,r9
    68fe:	0c01 d99b           	move.w r9,[r0+12]
    6902:	6e0e                	pop r0
    6904:	3e0d                	jump [sp+]

00006906 <___seofread>:
    6906:	7fb6                	ret 
    6908:	7a86                	clear.d r10

0000690a <___swrite>:
    690a:	84e2                	subq 4,sp
    690c:	7eba                	move srp,[sp]
    690e:	90e2                	subq 16,sp
    6910:	fe3b                	movem r3,[sp]
    6912:	6a36                	move.d r10,r3
    6914:	6b06                	move.d r11,r0
    6916:	6c26                	move.d r12,r2
    6918:	0cb1 599a           	move.w [r11+12],r9
    691c:	8893                	btstq 8,r9
    691e:	14a0                	bge 6934 <___swrite+0x2a>
    6920:	6d16                	move.d r13,r1
    6922:	0eb1 7bb8           	movs.w [r11+14],r11
    6926:	7c86                	clear.d r12
    6928:	42d2                	moveq 2,r13
    692a:	3fbd 1c80 0000      	jsr 801c <__lseek_r>
    6930:	0c01 599a           	move.w [r0+12],r9
    6934:	1f9f ffef           	and.w 0xefff,r9
    6938:	0c01 d99b           	move.w r9,[r0+12]
    693c:	63a6                	move.d r3,r10
    693e:	0e01 7bb8           	movs.w [r0+14],r11
    6942:	62c6                	move.d r2,r12
    6944:	61d6                	move.d r1,r13
    6946:	3fbd 7079 0000      	jsr 7970 <__write_r>
    694c:	be3f                	movem [sp+],r3
    694e:	3e0d                	jump [sp+]

00006950 <___sseek>:
    6950:	84e2                	subq 4,sp
    6952:	7eba                	move srp,[sp]
    6954:	84e2                	subq 4,sp
    6956:	ee0b                	move.d r0,[sp]
    6958:	6b06                	move.d r11,r0
    695a:	0eb1 7bb8           	movs.w [r11+14],r11
    695e:	3fbd 1c80 0000      	jsr 801c <__lseek_r>
    6964:	0c01 599a           	move.w [r0+12],r9
    6968:	ffa2                	cmpq -1,r10
    696a:	1230                	beq 697e <___sseek+0x2e>
    696c:	0f05                	nop 
    696e:	5f9f 0010           	or.w 0x1000,r9
    6972:	0c01 d99b           	move.w r9,[r0+12]
    6976:	5001 eaab           	move.d r10,[r0+80]
    697a:	6e0e                	pop r0
    697c:	3e0d                	jump [sp+]
    697e:	1f9f ffef           	and.w 0xefff,r9
    6982:	0c01 d99b           	move.w r9,[r0+12]
    6986:	6e0e                	pop r0
    6988:	3e0d                	jump [sp+]

0000698a <___sclose>:
    698a:	84e2                	subq 4,sp
    698c:	7eba                	move srp,[sp]
    698e:	0eb1 7bb8           	movs.w [r11+14],r11
    6992:	3fbd 307a 0000      	jsr 7a30 <__close_r>
    6998:	3e0d                	jump [sp+]
	...

0000699c <_strcmp>:
    699c:	6b96                	move.d r11,r9
    699e:	6a97                	or.d r10,r9
    69a0:	8193                	btstq 1,r9
    69a2:	4820                	bne 69ec <_strcmp+0x50>
    69a4:	0f05                	nop 
    69a6:	6ada                	move.d [r10],r13
    69a8:	ebda                	cmp.d [r11],r13
    69aa:	4020                	bne 69ec <_strcmp+0x50>
    69ac:	6d96                	move.d r13,r9
    69ae:	2f9e fffe fefe      	add.d fefefeff <__end+0xfefe01ef>,r9
    69b4:	7d87                	not r13
    69b6:	2d97                	and.d r13,r9
    69b8:	2f9f 8080 8080      	and.d 80808080 <__end+0x807f8370>,r9
    69be:	5620                	bne 6a16 <_strcmp+0x7a>
    69c0:	6bc6                	move.d r11,r12
    69c2:	04a2                	addq 4,r10
    69c4:	18e0                	ba 69de <_strcmp+0x42>
    69c6:	04c2                	addq 4,r12
    69c8:	6d96                	move.d r13,r9
    69ca:	2f9e fffe fefe      	add.d fefefeff <__end+0xfefe01ef>,r9
    69d0:	7d87                	not r13
    69d2:	2d97                	and.d r13,r9
    69d4:	2f9f 8080 8080      	and.d 80808080 <__end+0x807f8370>,r9
    69da:	3a20                	bne 6a16 <_strcmp+0x7a>
    69dc:	0f05                	nop 
    69de:	6a96                	move.d r10,r9
    69e0:	6cb6                	move.d r12,r11
    69e2:	6ade                	move.d [r10+],r13
    69e4:	ebda                	cmp.d [r11],r13
    69e6:	e130                	beq 69c8 <_strcmp+0x2c>
    69e8:	04c2                	addq 4,r12
    69ea:	69a6                	move.d r9,r10
    69ec:	4a9a                	move.b [r10],r9
    69ee:	2030                	beq 6a10 <_strcmp+0x74>
    69f0:	0f05                	nop 
    69f2:	cb9a                	cmp.b [r11],r9
    69f4:	1a20                	bne 6a10 <_strcmp+0x74>
    69f6:	0f05                	nop 
    69f8:	6a96                	move.d r10,r9
    69fa:	0192                	addq 1,r9
    69fc:	6bd6                	move.d r11,r13
    69fe:	08e0                	ba 6a08 <_strcmp+0x6c>
    6a00:	01d2                	addq 1,r13
    6a02:	cbca                	cmp.b [r11],r12
    6a04:	0a20                	bne 6a10 <_strcmp+0x74>
    6a06:	01d2                	addq 1,r13
    6a08:	69a6                	move.d r9,r10
    6a0a:	49ce                	move.b [r9+],r12
    6a0c:	f520                	bne 6a02 <_strcmp+0x66>
    6a0e:	6db6                	move.d r13,r11
    6a10:	4aa8                	movu.b [r10],r10
    6a12:	7fb6                	ret 
    6a14:	8ba8                	subu.b [r11],r10
    6a16:	7fb6                	ret 
    6a18:	7a86                	clear.d r10
	...

00006a1c <_strlen>:
    6a1c:	81a3                	btstq 1,r10
    6a1e:	1830                	beq 6a38 <_strlen+0x1c>
    6a20:	6ad6                	move.d r10,r13
    6a22:	8a0b                	test.b [r10]
    6a24:	6030                	beq 6a86 <_strlen+0x6a>
    6a26:	6a96                	move.d r10,r9
    6a28:	08e0                	ba 6a32 <_strlen+0x16>
    6a2a:	0192                	addq 1,r9
    6a2c:	8d0b                	test.b [r13]
    6a2e:	5030                	beq 6a80 <_strlen+0x64>
    6a30:	0192                	addq 1,r9
    6a32:	8193                	btstq 1,r9
    6a34:	f720                	bne 6a2c <_strlen+0x10>
    6a36:	69d6                	move.d r9,r13
    6a38:	6dca                	move.d [r13],r12
    6a3a:	6c96                	move.d r12,r9
    6a3c:	2f9e fffe fefe      	add.d fefefeff <__end+0xfefe01ef>,r9
    6a42:	7c87                	not r12
    6a44:	2c97                	and.d r12,r9
    6a46:	2f9f 8080 8080      	and.d 80808080 <__end+0x807f8370>,r9
    6a4c:	2020                	bne 6a6e <_strlen+0x52>
    6a4e:	0f05                	nop 
    6a50:	6dc6                	move.d r13,r12
    6a52:	04c2                	addq 4,r12
    6a54:	6cd6                	move.d r12,r13
    6a56:	6cbe                	move.d [r12+],r11
    6a58:	6b96                	move.d r11,r9
    6a5a:	2f9e fffe fefe      	add.d fefefeff <__end+0xfefe01ef>,r9
    6a60:	7b87                	not r11
    6a62:	2b97                	and.d r11,r9
    6a64:	2f9f 8080 8080      	and.d 80808080 <__end+0x807f8370>,r9
    6a6a:	e930                	beq 6a54 <_strlen+0x38>
    6a6c:	0f05                	nop 
    6a6e:	8d0b                	test.b [r13]
    6a70:	0e30                	beq 6a80 <_strlen+0x64>
    6a72:	0f05                	nop 
    6a74:	6d96                	move.d r13,r9
    6a76:	0192                	addq 1,r9
    6a78:	69d6                	move.d r9,r13
    6a7a:	8d0b                	test.b [r13]
    6a7c:	fb20                	bne 6a78 <_strlen+0x5c>
    6a7e:	0192                	addq 1,r9
    6a80:	aad6                	sub.d r10,r13
    6a82:	7fb6                	ret 
    6a84:	6da6                	move.d r13,r10
    6a86:	7fb6                	ret 
    6a88:	7a86                	clear.d r10
	...

00006a8c <___sprint_r>:
    6a8c:	84e2                	subq 4,sp
    6a8e:	7eba                	move srp,[sp]
    6a90:	a0e2                	subq 32,sp
    6a92:	fe7b                	movem r7,[sp]
    6a94:	6a46                	move.d r10,r4
    6a96:	6b36                	move.d r11,r3
    6a98:	08c1 a00b           	test.d [r12+8]
    6a9c:	5a30                	beq 6af8 <___sprint_r+0x6c>
    6a9e:	6c66                	move.d r12,r6
    6aa0:	64b1 699a           	move.d [r11+100],r9
    6aa4:	8d93                	btstq 13,r9
    6aa6:	5aa0                	bge 6b02 <___sprint_r+0x76>
    6aa8:	0f05                	nop 
    6aaa:	6c7a                	move.d [r12],r7
    6aac:	6f5e 387b 0000      	move.d 7b38 <__fputwc_r>,r5
    6ab2:	671a                	move.d [r7],r1
    6ab4:	0471 622a           	move.d [r7+4],r2
    6ab8:	e223                	lsrq 2,r2
    6aba:	0cc0                	bgt 6ac8 <___sprint_r+0x3c>
    6abc:	7086                	clear.d r0
    6abe:	26e0                	ba 6ae6 <___sprint_r+0x5a>
    6ac0:	c223                	lslq 2,r2
    6ac2:	e026                	cmp.d r0,r2
    6ac4:	1e30                	beq 6ae4 <___sprint_r+0x58>
    6ac6:	0f05                	nop 
    6ac8:	64a6                	move.d r4,r10
    6aca:	61be                	move.d [r1+],r11
    6acc:	63c6                	move.d r3,r12
    6ace:	b5b9                	jsr r5
    6ad0:	ffa2                	cmpq -1,r10
    6ad2:	ef20                	bne 6ac2 <___sprint_r+0x36>
    6ad4:	0102                	addq 1,r0
    6ad6:	8102                	subq 1,r0
    6ad8:	0861 708a           	clear.d [r6+8]
    6adc:	0461 708a           	clear.d [r6+4]
    6ae0:	be7f                	movem [sp+],r7
    6ae2:	3e0d                	jump [sp+]
    6ae4:	c223                	lslq 2,r2
    6ae6:	0861 699a           	move.d [r6+8],r9
    6aea:	a296                	sub.d r2,r9
    6aec:	0861 e99b           	move.d r9,[r6+8]
    6af0:	c120                	bne 6ab2 <___sprint_r+0x26>
    6af2:	0872                	addq 8,r7
    6af4:	e3e0                	ba 6ad8 <___sprint_r+0x4c>
    6af6:	7a86                	clear.d r10
    6af8:	04c1 708a           	clear.d [r12+4]
    6afc:	7a86                	clear.d r10
    6afe:	be7f                	movem [sp+],r7
    6b00:	3e0d                	jump [sp+]
    6b02:	3fbd b07c 0000      	jsr 7cb0 <___sfvwrite_r>
    6b08:	0861 708a           	clear.d [r6+8]
    6b0c:	0461 708a           	clear.d [r6+4]
    6b10:	efe0                	ba 6b00 <___sprint_r+0x74>
    6b12:	be7f                	movem [sp+],r7

00006b14 <__vfiprintf_r>:
    6b14:	84e2                	subq 4,sp
    6b16:	7eba                	move srp,[sp]
    6b18:	9fec 0405           	subu.w 0x504,sp
    6b1c:	fe8b                	movem r8,[sp]
    6b1e:	6a36                	move.d r10,r3
    6b20:	6b16                	move.d r11,r1
    6b22:	48e1 eddb           	move.d r13,[sp+72]
    6b26:	6aa6                	test.d r10
    6b28:	0c30                	beq 6b36 <__vfiprintf_r+0x22>
    6b2a:	6c06                	move.d r12,r0
    6b2c:	35a1 a00b           	test.d [r10+53]
    6b30:	ff3d 920b           	beq 76c6 <__vfiprintf_r+0xbb2>
    6b34:	0f05                	nop 
    6b36:	0c11 599a           	move.w [r1+12],r9
    6b3a:	8d93                	btstq 13,r9
    6b3c:	18b0                	blt 6b56 <__vfiprintf_r+0x42>
    6b3e:	0f05                	nop 
    6b40:	5f9f 0020           	or.w 0x2000,r9
    6b44:	0c11 d99b           	move.w r9,[r1+12]
    6b48:	6411 6dda           	move.d [r1+100],r13
    6b4c:	2fdf ffdf ffff      	and.d 0xffffdfff,r13
    6b52:	6411 eddb           	move.d r13,[r1+100]
    6b56:	8393                	btstq 3,r9
    6b58:	ffad a209           	bge 74fe <__vfiprintf_r+0x9ea>
    6b5c:	0f05                	nop 
    6b5e:	1011 a00b           	test.d [r1+16]
    6b62:	ff3d 9809           	beq 74fe <__vfiprintf_r+0x9ea>
    6b66:	59d6                	move.w r9,r13
    6b68:	1ad3                	andq 26,r13
    6b6a:	dfde 0a00           	cmp.w 0xa,r13
    6b6e:	ff3d ae09           	beq 7520 <__vfiprintf_r+0xa0c>
    6b72:	6e86                	move.d sp,r8
    6b74:	1f8c 0401           	addu.w 0x104,r8
    6b78:	68e1 e88b           	move.d r8,[sp+104]
    6b7c:	70e1 708a           	clear.d [sp+112]
    6b80:	6ce1 708a           	clear.d [sp+108]
    6b84:	54e1 708a           	clear.d [sp+84]
    6b88:	40e1 708a           	clear.d [sp+64]
    6b8c:	6896                	move.d r8,r9
    6b8e:	6ea6                	move.d sp,r10
    6b90:	0fac 9c00           	addu.b 0x9c,r10
    6b94:	30e1 eaab           	move.d r10,[sp+48]
    6b98:	6eb6                	move.d sp,r11
    6b9a:	0fbc 9b00           	addu.b 0x9b,r11
    6b9e:	2ce1 ebbb           	move.d r11,[sp+44]
    6ba2:	aba6                	sub.d r11,r10
    6ba4:	58e1 eaab           	move.d r10,[sp+88]
    6ba8:	40da                	move.b [r0],r13
    6baa:	4dd6                	test.b r13
    6bac:	5030                	beq 6bfe <__vfiprintf_r+0xea>
    6bae:	6026                	move.d r0,r2
    6bb0:	cfde 2500           	cmp.b 0x25,r13
    6bb4:	4830                	beq 6bfe <__vfiprintf_r+0xea>
    6bb6:	6026                	move.d r0,r2
    6bb8:	60c6                	move.d r0,r12
    6bba:	0ae0                	ba 6bc6 <__vfiprintf_r+0xb2>
    6bbc:	01c2                	addq 1,r12
    6bbe:	cfde 2500           	cmp.b 0x25,r13
    6bc2:	0c30                	beq 6bd0 <__vfiprintf_r+0xbc>
    6bc4:	6246                	move.d r2,r4
    6bc6:	6c26                	move.d r12,r2
    6bc8:	4cda                	move.b [r12],r13
    6bca:	f320                	bne 6bbe <__vfiprintf_r+0xaa>
    6bcc:	01c2                	addq 1,r12
    6bce:	6246                	move.d r2,r4
    6bd0:	a046                	sub.d r0,r4
    6bd2:	2a30                	beq 6bfe <__vfiprintf_r+0xea>
    6bd4:	0f05                	nop 
    6bd6:	e90b                	move.d r0,[r9]
    6bd8:	0491 e44b           	move.d r4,[r9+4]
    6bdc:	70e1 2d4a           	add.d [sp+112],r4,r13
    6be0:	70e1 eddb           	move.d r13,[sp+112]
    6be4:	6ce1 6dda           	move.d [sp+108],r13
    6be8:	01d2                	addq 1,r13
    6bea:	6ce1 eddb           	move.d r13,[sp+108]
    6bee:	c7d2                	cmpq 7,r13
    6bf0:	ffcd dc09           	bgt 75d0 <__vfiprintf_r+0xabc>
    6bf4:	0892                	addq 8,r9
    6bf6:	40e1 244a           	add.d [sp+64],r4
    6bfa:	40e1 e44b           	move.d r4,[sp+64]
    6bfe:	820b                	test.b [r2]
    6c00:	ff3d 0c08           	beq 7410 <__vfiprintf_r+0x8fc>
    6c04:	6206                	move.d r2,r0
    6c06:	0102                	addq 1,r0
    6c08:	65e1 700a           	clear.b [sp+101]
    6c0c:	0121 4cca           	move.b [r2+1],r12
    6c10:	7b06                	clear.b r11
    6c12:	7f62                	moveq -1,r6
    6c14:	44e1 708a           	clear.d [sp+68]
    6c18:	7586                	clear.d r5
    6c1a:	6cc4                	movs.b r12,r12
    6c1c:	0102                	addq 1,r0
    6c1e:	6cd6                	move.d r12,r13
    6c20:	a0d2                	subq 32,r13
    6c22:	cfdd 5900           	bound.b 0x59,r13
    6c26:	5fd5 3ff8           	adds.w [pc+r13.w],pc
    6c2a:	a604                	case 32: -> 70d0 <__vfiprintf_r+0x5bc>
    6c2c:	3204                	case 33: -> 705c <__vfiprintf_r+0x548>
    6c2e:	3204                	case 34: -> 705c <__vfiprintf_r+0x548>
    6c30:	9e04                	case 35: -> 70c8 <__vfiprintf_r+0x5b4>
    6c32:	3204                	case 36: -> 705c <__vfiprintf_r+0x548>
    6c34:	3204                	case 37: -> 705c <__vfiprintf_r+0x548>
    6c36:	3204                	case 38: -> 705c <__vfiprintf_r+0x548>
    6c38:	3204                	case 39: -> 705c <__vfiprintf_r+0x548>
    6c3a:	3204                	case 40: -> 705c <__vfiprintf_r+0x548>
    6c3c:	3204                	case 41: -> 705c <__vfiprintf_r+0x548>
    6c3e:	7401                	case 42: -> 6d9e <__vfiprintf_r+0x28a>
    6c40:	9404                	case 43: -> 70be <__vfiprintf_r+0x5aa>
    6c42:	3204                	case 44: -> 705c <__vfiprintf_r+0x548>
    6c44:	9601                	case 45: -> 6dc0 <__vfiprintf_r+0x2ac>
    6c46:	e604                	case 46: -> 7110 <__vfiprintf_r+0x5fc>
    6c48:	3204                	case 47: -> 705c <__vfiprintf_r+0x548>
    6c4a:	dc04                	case 48: -> 7106 <__vfiprintf_r+0x5f2>
    6c4c:	b804                	case 49: -> 70e2 <__vfiprintf_r+0x5ce>
    6c4e:	b804                	case 50: -> 70e2 <__vfiprintf_r+0x5ce>
    6c50:	b804                	case 51: -> 70e2 <__vfiprintf_r+0x5ce>
    6c52:	b804                	case 52: -> 70e2 <__vfiprintf_r+0x5ce>
    6c54:	b804                	case 53: -> 70e2 <__vfiprintf_r+0x5ce>
    6c56:	b804                	case 54: -> 70e2 <__vfiprintf_r+0x5ce>
    6c58:	b804                	case 55: -> 70e2 <__vfiprintf_r+0x5ce>
    6c5a:	b804                	case 56: -> 70e2 <__vfiprintf_r+0x5ce>
    6c5c:	b804                	case 57: -> 70e2 <__vfiprintf_r+0x5ce>
    6c5e:	3204                	case 58: -> 705c <__vfiprintf_r+0x548>
    6c60:	3204                	case 59: -> 705c <__vfiprintf_r+0x548>
    6c62:	3204                	case 60: -> 705c <__vfiprintf_r+0x548>
    6c64:	3204                	case 61: -> 705c <__vfiprintf_r+0x548>
    6c66:	3204                	case 62: -> 705c <__vfiprintf_r+0x548>
    6c68:	3204                	case 63: -> 705c <__vfiprintf_r+0x548>
    6c6a:	3204                	case 64: -> 705c <__vfiprintf_r+0x548>
    6c6c:	3204                	case 65: -> 705c <__vfiprintf_r+0x548>
    6c6e:	3204                	case 66: -> 705c <__vfiprintf_r+0x548>
    6c70:	3204                	case 67: -> 705c <__vfiprintf_r+0x548>
    6c72:	ee03                	case 68: -> 7018 <__vfiprintf_r+0x504>
    6c74:	3204                	case 69: -> 705c <__vfiprintf_r+0x548>
    6c76:	3204                	case 70: -> 705c <__vfiprintf_r+0x548>
    6c78:	3204                	case 71: -> 705c <__vfiprintf_r+0x548>
    6c7a:	3204                	case 72: -> 705c <__vfiprintf_r+0x548>
    6c7c:	3204                	case 73: -> 705c <__vfiprintf_r+0x548>
    6c7e:	3204                	case 74: -> 705c <__vfiprintf_r+0x548>
    6c80:	3204                	case 75: -> 705c <__vfiprintf_r+0x548>
    6c82:	3204                	case 76: -> 705c <__vfiprintf_r+0x548>
    6c84:	3204                	case 77: -> 705c <__vfiprintf_r+0x548>
    6c86:	3204                	case 78: -> 705c <__vfiprintf_r+0x548>
    6c88:	4a01                	case 79: -> 6d74 <__vfiprintf_r+0x260>
    6c8a:	3204                	case 80: -> 705c <__vfiprintf_r+0x548>
    6c8c:	3204                	case 81: -> 705c <__vfiprintf_r+0x548>
    6c8e:	3204                	case 82: -> 705c <__vfiprintf_r+0x548>
    6c90:	3204                	case 83: -> 705c <__vfiprintf_r+0x548>
    6c92:	3204                	case 84: -> 705c <__vfiprintf_r+0x548>
    6c94:	b400                	case 85: -> 6cde <__vfiprintf_r+0x1ca>
    6c96:	3204                	case 86: -> 705c <__vfiprintf_r+0x548>
    6c98:	3204                	case 87: -> 705c <__vfiprintf_r+0x548>
    6c9a:	9403                	case 88: -> 6fbe <__vfiprintf_r+0x4aa>
    6c9c:	3204                	case 89: -> 705c <__vfiprintf_r+0x548>
    6c9e:	3204                	case 90: -> 705c <__vfiprintf_r+0x548>
    6ca0:	3204                	case 91: -> 705c <__vfiprintf_r+0x548>
    6ca2:	3204                	case 92: -> 705c <__vfiprintf_r+0x548>
    6ca4:	3204                	case 93: -> 705c <__vfiprintf_r+0x548>
    6ca6:	3204                	case 94: -> 705c <__vfiprintf_r+0x548>
    6ca8:	3204                	case 95: -> 705c <__vfiprintf_r+0x548>
    6caa:	3204                	case 96: -> 705c <__vfiprintf_r+0x548>
    6cac:	3204                	case 97: -> 705c <__vfiprintf_r+0x548>
    6cae:	3204                	case 98: -> 705c <__vfiprintf_r+0x548>
    6cb0:	c202                	case 99: -> 6eec <__vfiprintf_r+0x3d8>
    6cb2:	8802                	case 100: -> 6eb2 <__vfiprintf_r+0x39e>
    6cb4:	3204                	case 101: -> 705c <__vfiprintf_r+0x548>
    6cb6:	3204                	case 102: -> 705c <__vfiprintf_r+0x548>
    6cb8:	3204                	case 103: -> 705c <__vfiprintf_r+0x548>
    6cba:	7e02                	case 104: -> 6ea8 <__vfiprintf_r+0x394>
    6cbc:	8802                	case 105: -> 6eb2 <__vfiprintf_r+0x39e>
    6cbe:	3204                	case 106: -> 705c <__vfiprintf_r+0x548>
    6cc0:	3204                	case 107: -> 705c <__vfiprintf_r+0x548>
    6cc2:	6c02                	case 108: -> 6e96 <__vfiprintf_r+0x382>
    6cc4:	3204                	case 109: -> 705c <__vfiprintf_r+0x548>
    6cc6:	9e01                	case 110: -> 6dc8 <__vfiprintf_r+0x2b4>
    6cc8:	4c01                	case 111: -> 6d76 <__vfiprintf_r+0x262>
    6cca:	3202                	case 112: -> 6e5c <__vfiprintf_r+0x348>
    6ccc:	2802                	case 113: -> 6e52 <__vfiprintf_r+0x33e>
    6cce:	3204                	case 114: -> 705c <__vfiprintf_r+0x548>
    6cd0:	cc01                	case 115: -> 6df6 <__vfiprintf_r+0x2e2>
    6cd2:	3204                	case 116: -> 705c <__vfiprintf_r+0x548>
    6cd4:	b600                	case 117: -> 6ce0 <__vfiprintf_r+0x1cc>
    6cd6:	3204                	case 118: -> 705c <__vfiprintf_r+0x548>
    6cd8:	3204                	case 119: -> 705c <__vfiprintf_r+0x548>
    6cda:	5604                	case 120: -> 7080 <__vfiprintf_r+0x56c>
    6cdc:	3204                	case 121/default: -> 705c <__vfiprintf_r+0x548>
    6cde:	5053                	orq 16,r5
    6ce0:	8553                	btstq 5,r5
    6ce2:	ffad ec09           	bge 76d2 <__vfiprintf_r+0xbbe>
    6ce6:	8453                	btstq 4,r5
    6ce8:	48e1 6bba           	move.d [sp+72],r11
    6cec:	6baa                	move.d [r11],r10
    6cee:	04b1 6bba           	move.d [r11+4],r11
    6cf2:	34e1 eaab           	move.d r10,[sp+52]
    6cf6:	38e1 ebbb           	move.d r11,[sp+56]
    6cfa:	48e1 6cca           	move.d [sp+72],r12
    6cfe:	08c2                	addq 8,r12
    6d00:	48e1 eccb           	move.d r12,[sp+72]
    6d04:	41d2                	moveq 1,r13
    6d06:	65e1 700a           	clear.b [sp+101]
    6d0a:	7706                	clear.b r7
    6d0c:	6666                	test.d r6
    6d0e:	08b0                	blt 6d18 <__vfiprintf_r+0x204>
    6d10:	0f05                	nop 
    6d12:	2f5f 7fff ffff      	and.d 0xffffff7f,r5
    6d18:	34e1 a00b           	test.d [sp+52]
    6d1c:	b015                	ax 
    6d1e:	38e1 a00b           	test.d [sp+56]
    6d22:	ff2d 2a06           	bne 7350 <__vfiprintf_r+0x83c>
    6d26:	6666                	test.d r6
    6d28:	ff2d 2406           	bne 7350 <__vfiprintf_r+0x83c>
    6d2c:	4dd6                	test.b r13
    6d2e:	ff2d 1604           	bne 7148 <__vfiprintf_r+0x634>
    6d32:	8053                	btstq 0,r5
    6d34:	ffad 1004           	bge 7148 <__vfiprintf_r+0x634>
    6d38:	0f05                	nop 
    6d3a:	4fce 3000           	move.b 0x30,r12
    6d3e:	5fed 9b00 cccb      	move.b r12,[sp+155]
    6d44:	58e1 6dda           	move.d [sp+88],r13
    6d48:	3ce1 eddb           	move.d r13,[sp+60]
    6d4c:	6e26                	move.d sp,r2
    6d4e:	0f2c 9b00           	addu.b 0x9b,r2
    6d52:	4ce1 e66b           	move.d r6,[sp+76]
    6d56:	3ce1 644a           	move.d [sp+60],r4
    6d5a:	4ce1 e44a           	cmp.d [sp+76],r4
    6d5e:	06a0                	bge 6d66 <__vfiprintf_r+0x252>
    6d60:	0f05                	nop 
    6d62:	4ce1 644a           	move.d [sp+76],r4
    6d66:	4776                	test.b r7
    6d68:	ff3d aa01           	beq 6f16 <__vfiprintf_r+0x402>
    6d6c:	6576                	move.d r5,r7
    6d6e:	ffed a401           	ba 6f16 <__vfiprintf_r+0x402>
    6d72:	0142                	addq 1,r4
    6d74:	5053                	orq 16,r5
    6d76:	8553                	btstq 5,r5
    6d78:	ffad 7c09           	bge 76f8 <__vfiprintf_r+0xbe4>
    6d7c:	8453                	btstq 4,r5
    6d7e:	48e1 6bba           	move.d [sp+72],r11
    6d82:	6baa                	move.d [r11],r10
    6d84:	04b1 6bba           	move.d [r11+4],r11
    6d88:	34e1 eaab           	move.d r10,[sp+52]
    6d8c:	38e1 ebbb           	move.d r11,[sp+56]
    6d90:	48e1 6cca           	move.d [sp+72],r12
    6d94:	08c2                	addq 8,r12
    6d96:	48e1 eccb           	move.d r12,[sp+72]
    6d9a:	6be0                	ba 6d06 <__vfiprintf_r+0x1f2>
    6d9c:	7d06                	clear.b r13
    6d9e:	48e1 6dda           	move.d [sp+72],r13
    6da2:	48e1 6aaa           	move.d [sp+72],r10
    6da6:	6aaa                	move.d [r10],r10
    6da8:	44e1 eaab           	move.d r10,[sp+68]
    6dac:	ffad 8c09           	bge 773c <__vfiprintf_r+0xc28>
    6db0:	04d2                	addq 4,r13
    6db2:	44e1 6cca           	move.d [sp+68],r12
    6db6:	acc5                	neg.d r12,r12
    6db8:	44e1 eccb           	move.d r12,[sp+68]
    6dbc:	48e1 eddb           	move.d r13,[sp+72]
    6dc0:	4453                	orq 4,r5
    6dc2:	ffed 54fe           	ba 6c1a <__vfiprintf_r+0x106>
    6dc6:	40ca                	move.b [r0],r12
    6dc8:	65e1 cbbb           	move.b r11,[sp+101]
    6dcc:	8553                	btstq 5,r5
    6dce:	ffbd 2a0a           	blt 77fc <__vfiprintf_r+0xce8>
    6dd2:	8453                	btstq 4,r5
    6dd4:	ffad 9a0a           	bge 7872 <__vfiprintf_r+0xd5e>
    6dd8:	8653                	btstq 6,r5
    6dda:	40e1 6dda           	move.d [sp+64],r13
    6dde:	48e1 6cca           	move.d [sp+72],r12
    6de2:	6cca                	move.d [r12],r12
    6de4:	ecdb                	move.d r13,[r12]
    6de6:	48e1 6aaa           	move.d [sp+72],r10
    6dea:	04a2                	addq 4,r10
    6dec:	48e1 eaab           	move.d r10,[sp+72]
    6df0:	ffed b6fd           	ba 6baa <__vfiprintf_r+0x96>
    6df4:	40da                	move.b [r0],r13
    6df6:	65e1 700a           	clear.b [sp+101]
    6dfa:	48e1 6dda           	move.d [sp+72],r13
    6dfe:	48e1 6cca           	move.d [sp+72],r12
    6e02:	6c2a                	move.d [r12],r2
    6e04:	ff3d 9a0a           	beq 78a2 <__vfiprintf_r+0xd8e>
    6e08:	04d2                	addq 4,r13
    6e0a:	6666                	test.d r6
    6e0c:	ffbd d00a           	blt 78e0 <__vfiprintf_r+0xdcc>
    6e10:	62a6                	move.d r2,r10
    6e12:	7b86                	clear.d r11
    6e14:	66c6                	move.d r6,r12
    6e16:	24e1 e99b           	move.d r9,[sp+36]
    6e1a:	28e1 eddb           	move.d r13,[sp+40]
    6e1e:	3fbd e45a 0000      	jsr 5ae4 <_memchr>
    6e24:	24e1 699a           	move.d [sp+36],r9
    6e28:	28e1 6dda           	move.d [sp+40],r13
    6e2c:	6aa6                	test.d r10
    6e2e:	ff3d da0a           	beq 790c <__vfiprintf_r+0xdf8>
    6e32:	a2a6                	sub.d r2,r10
    6e34:	3ce1 eaab           	move.d r10,[sp+60]
    6e38:	65e1 477a           	move.b [sp+101],r7
    6e3c:	e6a6                	cmp.d r6,r10
    6e3e:	06d0                	ble 6e46 <__vfiprintf_r+0x332>
    6e40:	0f05                	nop 
    6e42:	3ce1 e66b           	move.d r6,[sp+60]
    6e46:	48e1 eddb           	move.d r13,[sp+72]
    6e4a:	4ce1 708a           	clear.d [sp+76]
    6e4e:	07e0                	ba 6d56 <__vfiprintf_r+0x242>
    6e50:	0f05                	nop 
    6e52:	4f5f 2000           	or.b 0x20,r5
    6e56:	ffed c0fd           	ba 6c1a <__vfiprintf_r+0x106>
    6e5a:	40ca                	move.b [r0],r12
    6e5c:	48e1 6bba           	move.d [sp+72],r11
    6e60:	6bba                	move.d [r11],r11
    6e62:	34e1 ebbb           	move.d r11,[sp+52]
    6e66:	38e1 708a           	clear.d [sp+56]
    6e6a:	4253                	orq 2,r5
    6e6c:	4fce 3000           	move.b 0x30,r12
    6e70:	66e1 cccb           	move.b r12,[sp+102]
    6e74:	4fde 7800           	move.b 0x78,r13
    6e78:	67e1 cddb           	move.b r13,[sp+103]
    6e7c:	48e1 6aaa           	move.d [sp+72],r10
    6e80:	04a2                	addq 4,r10
    6e82:	48e1 eaab           	move.d r10,[sp+72]
    6e86:	6fbe 12ac 0000      	move.d ac12 <__global_impure_ptr+0x28>,r11
    6e8c:	54e1 ebbb           	move.d r11,[sp+84]
    6e90:	ffed 72fe           	ba 6d06 <__vfiprintf_r+0x1f2>
    6e94:	42d2                	moveq 2,r13
    6e96:	40ca                	move.b [r0],r12
    6e98:	cfce 6c00           	cmp.b 0x6c,r12
    6e9c:	ff3d 8409           	beq 7824 <__vfiprintf_r+0xd10>
    6ea0:	60d6                	move.d r0,r13
    6ea2:	ffed 74fd           	ba 6c1a <__vfiprintf_r+0x106>
    6ea6:	5053                	orq 16,r5
    6ea8:	4f5f 4000           	or.b 0x40,r5
    6eac:	ffed 6afd           	ba 6c1a <__vfiprintf_r+0x106>
    6eb0:	40ca                	move.b [r0],r12
    6eb2:	65e1 cbbb           	move.b r11,[sp+101]
    6eb6:	8553                	btstq 5,r5
    6eb8:	ffad 6a01           	bge 7026 <__vfiprintf_r+0x512>
    6ebc:	0f05                	nop 
    6ebe:	48e1 6bba           	move.d [sp+72],r11
    6ec2:	6bca                	move.d [r11],r12
    6ec4:	04b1 6dda           	move.d [r11+4],r13
    6ec8:	34e1 eccb           	move.d r12,[sp+52]
    6ecc:	38e1 eddb           	move.d r13,[sp+56]
    6ed0:	08b2                	addq 8,r11
    6ed2:	48e1 ebbb           	move.d r11,[sp+72]
    6ed6:	6cc6                	test.d r12
    6ed8:	b015                	ax 
    6eda:	6dd6                	test.d r13
    6edc:	ffbd ae08           	blt 778e <__vfiprintf_r+0xc7a>
    6ee0:	0f05                	nop 
    6ee2:	65e1 477a           	move.b [sp+101],r7
    6ee6:	ffed 22fe           	ba 6d0c <__vfiprintf_r+0x1f8>
    6eea:	41d2                	moveq 1,r13
    6eec:	48e1 6dda           	move.d [sp+72],r13
    6ef0:	4dda                	move.b [r13],r13
    6ef2:	74e1 cddb           	move.b r13,[sp+116]
    6ef6:	65e1 700a           	clear.b [sp+101]
    6efa:	48e1 6aaa           	move.d [sp+72],r10
    6efe:	04a2                	addq 4,r10
    6f00:	48e1 eaab           	move.d r10,[sp+72]
    6f04:	4142                	moveq 1,r4
    6f06:	3ce1 e44b           	move.d r4,[sp+60]
    6f0a:	6e26                	move.d sp,r2
    6f0c:	0f2c 7400           	addu.b 0x74,r2
    6f10:	4ce1 708a           	clear.d [sp+76]
    6f14:	6576                	move.d r5,r7
    6f16:	0273                	andq 2,r7
    6f18:	0430                	beq 6f1e <__vfiprintf_r+0x40a>
    6f1a:	45d4                	movu.b r5,r13
    6f1c:	0242                	addq 2,r4
    6f1e:	0fdf 84ff           	and.b 0xff84,r13
    6f22:	50e1 eddb           	move.d r13,[sp+80]
    6f26:	6dd6                	test.d r13
    6f28:	ff2d 4402           	bne 7170 <__vfiprintf_r+0x65c>
    6f2c:	0f05                	nop 
    6f2e:	44e1 666a           	move.d [sp+68],r6
    6f32:	a466                	sub.d r4,r6
    6f34:	6666                	test.d r6
    6f36:	ffdd 3602           	ble 7170 <__vfiprintf_r+0x65c>
    6f3a:	0f05                	nop 
    6f3c:	6ce1 6cca           	move.d [sp+108],r12
    6f40:	d062                	cmpq 16,r6
    6f42:	0ec0                	bgt 6f52 <__vfiprintf_r+0x43e>
    6f44:	0f05                	nop 
    6f46:	4ee0                	ba 6f96 <__vfiprintf_r+0x482>
    6f48:	0f05                	nop 
    6f4a:	9062                	subq 16,r6
    6f4c:	d062                	cmpq 16,r6
    6f4e:	46d0                	ble 6f96 <__vfiprintf_r+0x482>
    6f50:	0892                	addq 8,r9
    6f52:	6fae 88ad 0000      	move.d ad88 <_blanks.3949>,r10
    6f58:	e9ab                	move.d r10,[r9]
    6f5a:	50b2                	moveq 16,r11
    6f5c:	0491 ebbb           	move.d r11,[r9+4]
    6f60:	70e1 6bba           	move.d [sp+112],r11
    6f64:	10b2                	addq 16,r11
    6f66:	70e1 ebbb           	move.d r11,[sp+112]
    6f6a:	01c2                	addq 1,r12
    6f6c:	6ce1 eccb           	move.d r12,[sp+108]
    6f70:	c7c2                	cmpq 7,r12
    6f72:	d7d0                	ble 6f4a <__vfiprintf_r+0x436>
    6f74:	63a6                	move.d r3,r10
    6f76:	61b6                	move.d r1,r11
    6f78:	6ec6                	move.d sp,r12
    6f7a:	0fcc 6800           	addu.b 0x68,r12
    6f7e:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    6f84:	6aa6                	test.d r10
    6f86:	ff2d 9c04           	bne 7426 <__vfiprintf_r+0x912>
    6f8a:	9062                	subq 16,r6
    6f8c:	6ce1 6cca           	move.d [sp+108],r12
    6f90:	d062                	cmpq 16,r6
    6f92:	bfc0                	bgt 6f52 <__vfiprintf_r+0x43e>
    6f94:	6896                	move.d r8,r9
    6f96:	6fde 88ad 0000      	move.d ad88 <_blanks.3949>,r13
    6f9c:	e9db                	move.d r13,[r9]
    6f9e:	0491 e66b           	move.d r6,[r9+4]
    6fa2:	70e1 2b6a           	add.d [sp+112],r6,r11
    6fa6:	70e1 ebbb           	move.d r11,[sp+112]
    6faa:	01c2                	addq 1,r12
    6fac:	6ce1 eccb           	move.d r12,[sp+108]
    6fb0:	c7c2                	cmpq 7,r12
    6fb2:	ffcd a201           	bgt 7158 <__vfiprintf_r+0x644>
    6fb6:	0892                	addq 8,r9
    6fb8:	ffed b801           	ba 7174 <__vfiprintf_r+0x660>
    6fbc:	0f05                	nop 
    6fbe:	65e1 cbbb           	move.b r11,[sp+101]
    6fc2:	6fde 00ac 0000      	move.d ac00 <__global_impure_ptr+0x16>,r13
    6fc8:	54e1 eddb           	move.d r13,[sp+84]
    6fcc:	8553                	btstq 5,r5
    6fce:	c4a0                	bge 7094 <__vfiprintf_r+0x580>
    6fd0:	0f05                	nop 
    6fd2:	48e1 6bba           	move.d [sp+72],r11
    6fd6:	6baa                	move.d [r11],r10
    6fd8:	04b1 6bba           	move.d [r11+4],r11
    6fdc:	34e1 eaab           	move.d r10,[sp+52]
    6fe0:	38e1 ebbb           	move.d r11,[sp+56]
    6fe4:	48e1 6dda           	move.d [sp+72],r13
    6fe8:	08d2                	addq 8,r13
    6fea:	48e1 eddb           	move.d r13,[sp+72]
    6fee:	8053                	btstq 0,r5
    6ff0:	ffad 12fd           	bge 6d06 <__vfiprintf_r+0x1f2>
    6ff4:	42d2                	moveq 2,r13
    6ff6:	34e1 a00b           	test.d [sp+52]
    6ffa:	b015                	ax 
    6ffc:	38e1 a00b           	test.d [sp+56]
    7000:	ff3d 02fd           	beq 6d06 <__vfiprintf_r+0x1f2>
    7004:	0f05                	nop 
    7006:	4fae 3000           	move.b 0x30,r10
    700a:	66e1 caab           	move.b r10,[sp+102]
    700e:	67e1 cccb           	move.b r12,[sp+103]
    7012:	ffed f0fc           	ba 6d06 <__vfiprintf_r+0x1f2>
    7016:	4253                	orq 2,r5
    7018:	65e1 cbbb           	move.b r11,[sp+101]
    701c:	5053                	orq 16,r5
    701e:	8553                	btstq 5,r5
    7020:	ffbd 9afe           	blt 6ebe <__vfiprintf_r+0x3aa>
    7024:	0f05                	nop 
    7026:	8453                	btstq 4,r5
    7028:	ffbd 3a07           	blt 7766 <__vfiprintf_r+0xc52>
    702c:	8653                	btstq 6,r5
    702e:	ffad 3407           	bge 7766 <__vfiprintf_r+0xc52>
    7032:	0f05                	nop 
    7034:	48e1 6bba           	move.d [sp+72],r11
    7038:	7bc8                	movs.w [r11],r12
    703a:	3d75                	smi r13
    703c:	add5                	neg.d r13,r13
    703e:	7ca4                	movs.w r12,r10
    7040:	3b75                	smi r11
    7042:	abb5                	neg.d r11,r11
    7044:	34e1 eaab           	move.d r10,[sp+52]
    7048:	38e1 ebbb           	move.d r11,[sp+56]
    704c:	48e1 6bba           	move.d [sp+72],r11
    7050:	04b2                	addq 4,r11
    7052:	48e1 ebbb           	move.d r11,[sp+72]
    7056:	ffed 7cfe           	ba 6ed6 <__vfiprintf_r+0x3c2>
    705a:	0f05                	nop 
    705c:	65e1 cbbb           	move.b r11,[sp+101]
    7060:	6cc6                	test.d r12
    7062:	ff3d aa03           	beq 7410 <__vfiprintf_r+0x8fc>
    7066:	4142                	moveq 1,r4
    7068:	74e1 cccb           	move.b r12,[sp+116]
    706c:	65e1 700a           	clear.b [sp+101]
    7070:	3ce1 e44b           	move.d r4,[sp+60]
    7074:	6e26                	move.d sp,r2
    7076:	0f2c 7400           	addu.b 0x74,r2
    707a:	ffed 92fe           	ba 6f10 <__vfiprintf_r+0x3fc>
    707e:	0f05                	nop 
    7080:	65e1 cbbb           	move.b r11,[sp+101]
    7084:	6fbe 12ac 0000      	move.d ac12 <__global_impure_ptr+0x28>,r11
    708a:	54e1 ebbb           	move.d r11,[sp+84]
    708e:	8553                	btstq 5,r5
    7090:	41b0                	blt 6fd2 <__vfiprintf_r+0x4be>
    7092:	0f05                	nop 
    7094:	8453                	btstq 4,r5
    7096:	ffbd 4407           	blt 77de <__vfiprintf_r+0xcca>
    709a:	8653                	btstq 6,r5
    709c:	ffad b407           	bge 7854 <__vfiprintf_r+0xd40>
    70a0:	0f05                	nop 
    70a2:	48e1 6dda           	move.d [sp+72],r13
    70a6:	5dd8                	movu.w [r13],r13
    70a8:	34e1 eddb           	move.d r13,[sp+52]
    70ac:	38e1 708a           	clear.d [sp+56]
    70b0:	48e1 6aaa           	move.d [sp+72],r10
    70b4:	04a2                	addq 4,r10
    70b6:	48e1 eaab           	move.d r10,[sp+72]
    70ba:	33e0                	ba 6fee <__vfiprintf_r+0x4da>
    70bc:	0f05                	nop 
    70be:	4fbe 2b00           	move.b 0x2b,r11
    70c2:	ffed 54fb           	ba 6c1a <__vfiprintf_r+0x106>
    70c6:	40ca                	move.b [r0],r12
    70c8:	4153                	orq 1,r5
    70ca:	ffed 4cfb           	ba 6c1a <__vfiprintf_r+0x106>
    70ce:	40ca                	move.b [r0],r12
    70d0:	4bb6                	test.b r11
    70d2:	ff2d 44fb           	bne 6c1a <__vfiprintf_r+0x106>
    70d6:	40ca                	move.b [r0],r12
    70d8:	4fbe 2000           	move.b 0x20,r11
    70dc:	ffed 3cfb           	ba 6c1c <__vfiprintf_r+0x108>
    70e0:	6cc4                	movs.b r12,r12
    70e2:	6026                	move.d r0,r2
    70e4:	7a86                	clear.d r10
    70e6:	6cd6                	move.d r12,r13
    70e8:	b0d2                	subq 48,r13
    70ea:	2aa5                	addi r10.d,r10
    70ec:	1da5                	addi r10.w,r13
    70ee:	6da6                	move.d r13,r10
    70f0:	62cc                	movs.b [r2+],r12
    70f2:	6cd6                	move.d r12,r13
    70f4:	b0d2                	subq 48,r13
    70f6:	c9d2                	cmpq 9,r13
    70f8:	f180                	bls 70ea <__vfiprintf_r+0x5d6>
    70fa:	6206                	move.d r2,r0
    70fc:	44e1 eaab           	move.d r10,[sp+68]
    7100:	ffed 1cfb           	ba 6c20 <__vfiprintf_r+0x10c>
    7104:	6cd6                	move.d r12,r13
    7106:	4f5f 8000           	or.b 0x80,r5
    710a:	ffed 0cfb           	ba 6c1a <__vfiprintf_r+0x106>
    710e:	40ca                	move.b [r0],r12
    7110:	60a6                	move.d r0,r10
    7112:	6acc                	movs.b [r10+],r12
    7114:	cfcc 2a00           	cmpu.b 0x2a,r12
    7118:	ff3d 0208           	beq 791e <__vfiprintf_r+0xe0a>
    711c:	6cd6                	move.d r12,r13
    711e:	b0d2                	subq 48,r13
    7120:	c9d2                	cmpq 9,r13
    7122:	ff9d b407           	bhi 78da <__vfiprintf_r+0xdc6>
    7126:	7686                	clear.d r6
    7128:	2665                	addi r6.d,r6
    712a:	1d65                	addi r6.w,r13
    712c:	6d66                	move.d r13,r6
    712e:	6acc                	movs.b [r10+],r12
    7130:	6cd6                	move.d r12,r13
    7132:	b0d2                	subq 48,r13
    7134:	c9d2                	cmpq 9,r13
    7136:	f180                	bls 7128 <__vfiprintf_r+0x614>
    7138:	6a06                	move.d r10,r0
    713a:	6666                	test.d r6
    713c:	ffad e0fa           	bge 6c20 <__vfiprintf_r+0x10c>
    7140:	6cd6                	move.d r12,r13
    7142:	ffed dafa           	ba 6c20 <__vfiprintf_r+0x10c>
    7146:	7f62                	moveq -1,r6
    7148:	3ce1 708a           	clear.d [sp+60]
    714c:	6e26                	move.d sp,r2
    714e:	0f2c 9c00           	addu.b 0x9c,r2
    7152:	ffed fcfb           	ba 6d52 <__vfiprintf_r+0x23e>
    7156:	0f05                	nop 
    7158:	63a6                	move.d r3,r10
    715a:	61b6                	move.d r1,r11
    715c:	6ec6                	move.d sp,r12
    715e:	0fcc 6800           	addu.b 0x68,r12
    7162:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    7168:	6aa6                	test.d r10
    716a:	ff2d b802           	bne 7426 <__vfiprintf_r+0x912>
    716e:	6896                	move.d r8,r9
    7170:	6ce1 6cca           	move.d [sp+108],r12
    7174:	65e1 800b           	test.b [sp+101]
    7178:	2430                	beq 719e <__vfiprintf_r+0x68a>
    717a:	6ed6                	move.d sp,r13
    717c:	0fdc 6500           	addu.b 0x65,r13
    7180:	e9db                	move.d r13,[r9]
    7182:	41a2                	moveq 1,r10
    7184:	0491 eaab           	move.d r10,[r9+4]
    7188:	70e1 2daa           	add.d [sp+112],r10,r13
    718c:	70e1 eddb           	move.d r13,[sp+112]
    7190:	2ac6                	add.d r10,r12
    7192:	6ce1 eccb           	move.d r12,[sp+108]
    7196:	c7c2                	cmpq 7,r12
    7198:	ffcd e604           	bgt 7682 <__vfiprintf_r+0xb6e>
    719c:	0892                	addq 8,r9
    719e:	6776                	test.d r7
    71a0:	2430                	beq 71c6 <__vfiprintf_r+0x6b2>
    71a2:	6ed6                	move.d sp,r13
    71a4:	0fdc 6600           	addu.b 0x66,r13
    71a8:	e9db                	move.d r13,[r9]
    71aa:	42b2                	moveq 2,r11
    71ac:	0491 ebbb           	move.d r11,[r9+4]
    71b0:	70e1 2dba           	add.d [sp+112],r11,r13
    71b4:	70e1 eddb           	move.d r13,[sp+112]
    71b8:	01c2                	addq 1,r12
    71ba:	6ce1 eccb           	move.d r12,[sp+108]
    71be:	c7c2                	cmpq 7,r12
    71c0:	ffcd e004           	bgt 76a4 <__vfiprintf_r+0xb90>
    71c4:	0892                	addq 8,r9
    71c6:	50e1 6dda           	move.d [sp+80],r13
    71ca:	cfdc 8000           	cmpu.b 0x80,r13
    71ce:	ff3d 6e02           	beq 7440 <__vfiprintf_r+0x92c>
    71d2:	0f05                	nop 
    71d4:	4ce1 677a           	move.d [sp+76],r7
    71d8:	3ce1 a77a           	sub.d [sp+60],r7
    71dc:	6776                	test.d r7
    71de:	78d0                	ble 7258 <__vfiprintf_r+0x744>
    71e0:	d072                	cmpq 16,r7
    71e2:	52d0                	ble 7236 <__vfiprintf_r+0x722>
    71e4:	0f05                	nop 
    71e6:	6f6e 8c6a 0000      	move.d 6a8c <___sprint_r>,r6
    71ec:	0ae0                	ba 71f8 <__vfiprintf_r+0x6e4>
    71ee:	0f05                	nop 
    71f0:	9072                	subq 16,r7
    71f2:	d072                	cmpq 16,r7
    71f4:	40d0                	ble 7236 <__vfiprintf_r+0x722>
    71f6:	0892                	addq 8,r9
    71f8:	6fae 98ad 0000      	move.d ad98 <_zeroes.3950>,r10
    71fe:	e9ab                	move.d r10,[r9]
    7200:	50b2                	moveq 16,r11
    7202:	0491 ebbb           	move.d r11,[r9+4]
    7206:	70e1 2dba           	add.d [sp+112],r11,r13
    720a:	70e1 eddb           	move.d r13,[sp+112]
    720e:	01c2                	addq 1,r12
    7210:	6ce1 eccb           	move.d r12,[sp+108]
    7214:	c7c2                	cmpq 7,r12
    7216:	d9d0                	ble 71f0 <__vfiprintf_r+0x6dc>
    7218:	63a6                	move.d r3,r10
    721a:	61b6                	move.d r1,r11
    721c:	6ec6                	move.d sp,r12
    721e:	0fcc 6800           	addu.b 0x68,r12
    7222:	b6b9                	jsr r6
    7224:	6aa6                	test.d r10
    7226:	ff2d fc01           	bne 7426 <__vfiprintf_r+0x912>
    722a:	9072                	subq 16,r7
    722c:	6ce1 6cca           	move.d [sp+108],r12
    7230:	d072                	cmpq 16,r7
    7232:	c5c0                	bgt 71f8 <__vfiprintf_r+0x6e4>
    7234:	6896                	move.d r8,r9
    7236:	6fde 98ad 0000      	move.d ad98 <_zeroes.3950>,r13
    723c:	e9db                	move.d r13,[r9]
    723e:	0491 e77b           	move.d r7,[r9+4]
    7242:	70e1 2d7a           	add.d [sp+112],r7,r13
    7246:	70e1 eddb           	move.d r13,[sp+112]
    724a:	01c2                	addq 1,r12
    724c:	6ce1 eccb           	move.d r12,[sp+108]
    7250:	c7c2                	cmpq 7,r12
    7252:	ffcd 9803           	bgt 75ee <__vfiprintf_r+0xada>
    7256:	0892                	addq 8,r9
    7258:	e92b                	move.d r2,[r9]
    725a:	3ce1 6dda           	move.d [sp+60],r13
    725e:	0491 eddb           	move.d r13,[r9+4]
    7262:	70e1 6dda           	move.d [sp+112],r13
    7266:	3ce1 2dda           	add.d [sp+60],r13
    726a:	70e1 eddb           	move.d r13,[sp+112]
    726e:	01c2                	addq 1,r12
    7270:	6ce1 eccb           	move.d r12,[sp+108]
    7274:	c7c2                	cmpq 7,r12
    7276:	ffcd 4e02           	bgt 74c8 <__vfiprintf_r+0x9b4>
    727a:	0892                	addq 8,r9
    727c:	8253                	btstq 2,r5
    727e:	9ea0                	bge 731e <__vfiprintf_r+0x80a>
    7280:	0f05                	nop 
    7282:	44e1 655a           	move.d [sp+68],r5
    7286:	a456                	sub.d r4,r5
    7288:	6556                	test.d r5
    728a:	92d0                	ble 731e <__vfiprintf_r+0x80a>
    728c:	0f05                	nop 
    728e:	6ce1 6cca           	move.d [sp+108],r12
    7292:	d052                	cmpq 16,r5
    7294:	52d0                	ble 72e8 <__vfiprintf_r+0x7d4>
    7296:	0f05                	nop 
    7298:	6f2e 8c6a 0000      	move.d 6a8c <___sprint_r>,r2
    729e:	0ae0                	ba 72aa <__vfiprintf_r+0x796>
    72a0:	0f05                	nop 
    72a2:	9052                	subq 16,r5
    72a4:	d052                	cmpq 16,r5
    72a6:	40d0                	ble 72e8 <__vfiprintf_r+0x7d4>
    72a8:	0892                	addq 8,r9
    72aa:	6fae 88ad 0000      	move.d ad88 <_blanks.3949>,r10
    72b0:	e9ab                	move.d r10,[r9]
    72b2:	50b2                	moveq 16,r11
    72b4:	0491 ebbb           	move.d r11,[r9+4]
    72b8:	70e1 2dba           	add.d [sp+112],r11,r13
    72bc:	70e1 eddb           	move.d r13,[sp+112]
    72c0:	01c2                	addq 1,r12
    72c2:	6ce1 eccb           	move.d r12,[sp+108]
    72c6:	c7c2                	cmpq 7,r12
    72c8:	d9d0                	ble 72a2 <__vfiprintf_r+0x78e>
    72ca:	63a6                	move.d r3,r10
    72cc:	61b6                	move.d r1,r11
    72ce:	6ec6                	move.d sp,r12
    72d0:	0fcc 6800           	addu.b 0x68,r12
    72d4:	b2b9                	jsr r2
    72d6:	6aa6                	test.d r10
    72d8:	ff2d 4a01           	bne 7426 <__vfiprintf_r+0x912>
    72dc:	9052                	subq 16,r5
    72de:	6ce1 6cca           	move.d [sp+108],r12
    72e2:	d052                	cmpq 16,r5
    72e4:	c5c0                	bgt 72aa <__vfiprintf_r+0x796>
    72e6:	6896                	move.d r8,r9
    72e8:	6fde 88ad 0000      	move.d ad88 <_blanks.3949>,r13
    72ee:	e9db                	move.d r13,[r9]
    72f0:	0491 e55b           	move.d r5,[r9+4]
    72f4:	70e1 255a           	add.d [sp+112],r5
    72f8:	70e1 e55b           	move.d r5,[sp+112]
    72fc:	01c2                	addq 1,r12
    72fe:	6ce1 eccb           	move.d r12,[sp+108]
    7302:	c7c2                	cmpq 7,r12
    7304:	1cd0                	ble 7322 <__vfiprintf_r+0x80e>
    7306:	63a6                	move.d r3,r10
    7308:	61b6                	move.d r1,r11
    730a:	6ec6                	move.d sp,r12
    730c:	0fcc 6800           	addu.b 0x68,r12
    7310:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    7316:	6aa6                	test.d r10
    7318:	ff2d 0a01           	bne 7426 <__vfiprintf_r+0x912>
    731c:	0f05                	nop 
    731e:	70e1 655a           	move.d [sp+112],r5
    7322:	44e1 e44a           	cmp.d [sp+68],r4
    7326:	06a0                	bge 732e <__vfiprintf_r+0x81a>
    7328:	0f05                	nop 
    732a:	44e1 644a           	move.d [sp+68],r4
    732e:	40e1 244a           	add.d [sp+64],r4
    7332:	40e1 e44b           	move.d r4,[sp+64]
    7336:	6556                	test.d r5
    7338:	ff2d a801           	bne 74e4 <__vfiprintf_r+0x9d0>
    733c:	63a6                	move.d r3,r10
    733e:	6ce1 708a           	clear.d [sp+108]
    7342:	40da                	move.b [r0],r13
    7344:	ff2d 68f8           	bne 6bb0 <__vfiprintf_r+0x9c>
    7348:	6896                	move.d r8,r9
    734a:	ffed b0f8           	ba 6bfe <__vfiprintf_r+0xea>
    734e:	6026                	move.d r0,r2
    7350:	cfde 0100           	cmp.b 0x1,r13
    7354:	ff3d b802           	beq 7610 <__vfiprintf_r+0xafc>
    7358:	6e26                	move.d sp,r2
    735a:	0f2c 9c00           	addu.b 0x9c,r2
    735e:	cfde 0200           	cmp.b 0x2,r13
    7362:	6030                	beq 73c4 <__vfiprintf_r+0x8b0>
    7364:	0f05                	nop 
    7366:	8122                	subq 1,r2
    7368:	34e1 6dda           	move.d [sp+52],r13
    736c:	07d3                	andq 7,r13
    736e:	30d2                	addq 48,r13
    7370:	c2db                	move.b r13,[r2]
    7372:	38e1 6aaa           	move.d [sp+56],r10
    7376:	dda3                	lslq 29,r10
    7378:	34e1 6bba           	move.d [sp+52],r11
    737c:	e3b3                	lsrq 3,r11
    737e:	38e1 6cca           	move.d [sp+56],r12
    7382:	e3c3                	lsrq 3,r12
    7384:	6ba7                	or.d r11,r10
    7386:	34e1 eaab           	move.d r10,[sp+52]
    738a:	38e1 eccb           	move.d r12,[sp+56]
    738e:	34e1 a00b           	test.d [sp+52]
    7392:	b015                	ax 
    7394:	38e1 a00b           	test.d [sp+56]
    7398:	cd20                	bne 7366 <__vfiprintf_r+0x852>
    739a:	8053                	btstq 0,r5
    739c:	62a0                	bge 7400 <__vfiprintf_r+0x8ec>
    739e:	62c6                	move.d r2,r12
    73a0:	cfde 3000           	cmp.b 0x30,r13
    73a4:	ff3d ea04           	beq 7892 <__vfiprintf_r+0xd7e>
    73a8:	0f05                	nop 
    73aa:	8122                	subq 1,r2
    73ac:	4fde 3000           	move.b 0x30,r13
    73b0:	ffc1 cddb           	move.b r13,[r12-1]
    73b4:	30e1 6aaa           	move.d [sp+48],r10
    73b8:	a2a6                	sub.d r2,r10
    73ba:	3ce1 eaab           	move.d r10,[sp+60]
    73be:	ffed 90f9           	ba 6d52 <__vfiprintf_r+0x23e>
    73c2:	0f05                	nop 
    73c4:	8122                	subq 1,r2
    73c6:	34e1 6dda           	move.d [sp+52],r13
    73ca:	0fd3                	andq 15,r13
    73cc:	54e1 6aaa           	move.d [sp+84],r10
    73d0:	4ad5 4dda           	move.b [r10+r13.b],r13
    73d4:	c2db                	move.b r13,[r2]
    73d6:	38e1 6bba           	move.d [sp+56],r11
    73da:	dcb3                	lslq 28,r11
    73dc:	34e1 6cca           	move.d [sp+52],r12
    73e0:	e4c3                	lsrq 4,r12
    73e2:	38e1 6dda           	move.d [sp+56],r13
    73e6:	e4d3                	lsrq 4,r13
    73e8:	6cb7                	or.d r12,r11
    73ea:	34e1 ebbb           	move.d r11,[sp+52]
    73ee:	38e1 eddb           	move.d r13,[sp+56]
    73f2:	34e1 a00b           	test.d [sp+52]
    73f6:	b015                	ax 
    73f8:	38e1 a00b           	test.d [sp+56]
    73fc:	c720                	bne 73c4 <__vfiprintf_r+0x8b0>
    73fe:	0f05                	nop 
    7400:	30e1 6bba           	move.d [sp+48],r11
    7404:	a2b6                	sub.d r2,r11
    7406:	3ce1 ebbb           	move.d r11,[sp+60]
    740a:	ffed 44f9           	ba 6d52 <__vfiprintf_r+0x23e>
    740e:	0f05                	nop 
    7410:	70e1 a00b           	test.d [sp+112]
    7414:	1030                	beq 7426 <__vfiprintf_r+0x912>
    7416:	63a6                	move.d r3,r10
    7418:	61b6                	move.d r1,r11
    741a:	6ec6                	move.d sp,r12
    741c:	0fcc 6800           	addu.b 0x68,r12
    7420:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    7426:	0c11 599a           	move.w [r1+12],r9
    742a:	8693                	btstq 6,r9
    742c:	06a0                	bge 7434 <__vfiprintf_r+0x920>
    742e:	7f92                	moveq -1,r9
    7430:	40e1 e99b           	move.d r9,[sp+64]
    7434:	40e1 6aaa           	move.d [sp+64],r10
    7438:	be8f                	movem [sp+],r8
    743a:	1fec e004           	addu.w 0x4e0,sp
    743e:	3e0d                	jump [sp+]
    7440:	44e1 677a           	move.d [sp+68],r7
    7444:	a476                	sub.d r4,r7
    7446:	6776                	test.d r7
    7448:	ffdd 88fd           	ble 71d4 <__vfiprintf_r+0x6c0>
    744c:	d072                	cmpq 16,r7
    744e:	50d0                	ble 74a0 <__vfiprintf_r+0x98c>
    7450:	0f05                	nop 
    7452:	6f6e 8c6a 0000      	move.d 6a8c <___sprint_r>,r6
    7458:	0ae0                	ba 7464 <__vfiprintf_r+0x950>
    745a:	0f05                	nop 
    745c:	9072                	subq 16,r7
    745e:	d072                	cmpq 16,r7
    7460:	3ed0                	ble 74a0 <__vfiprintf_r+0x98c>
    7462:	0892                	addq 8,r9
    7464:	6fae 98ad 0000      	move.d ad98 <_zeroes.3950>,r10
    746a:	e9ab                	move.d r10,[r9]
    746c:	50b2                	moveq 16,r11
    746e:	0491 ebbb           	move.d r11,[r9+4]
    7472:	70e1 2dba           	add.d [sp+112],r11,r13
    7476:	70e1 eddb           	move.d r13,[sp+112]
    747a:	01c2                	addq 1,r12
    747c:	6ce1 eccb           	move.d r12,[sp+108]
    7480:	c7c2                	cmpq 7,r12
    7482:	d9d0                	ble 745c <__vfiprintf_r+0x948>
    7484:	63a6                	move.d r3,r10
    7486:	61b6                	move.d r1,r11
    7488:	6ec6                	move.d sp,r12
    748a:	0fcc 6800           	addu.b 0x68,r12
    748e:	b6b9                	jsr r6
    7490:	6aa6                	test.d r10
    7492:	9320                	bne 7426 <__vfiprintf_r+0x912>
    7494:	9072                	subq 16,r7
    7496:	6ce1 6cca           	move.d [sp+108],r12
    749a:	d072                	cmpq 16,r7
    749c:	c7c0                	bgt 7464 <__vfiprintf_r+0x950>
    749e:	6896                	move.d r8,r9
    74a0:	6fde 98ad 0000      	move.d ad98 <_zeroes.3950>,r13
    74a6:	e9db                	move.d r13,[r9]
    74a8:	0491 e77b           	move.d r7,[r9+4]
    74ac:	70e1 2d7a           	add.d [sp+112],r7,r13
    74b0:	70e1 eddb           	move.d r13,[sp+112]
    74b4:	01c2                	addq 1,r12
    74b6:	6ce1 eccb           	move.d r12,[sp+108]
    74ba:	c7c2                	cmpq 7,r12
    74bc:	ffcd 7203           	bgt 7832 <__vfiprintf_r+0xd1e>
    74c0:	0892                	addq 8,r9
    74c2:	ffed 0efd           	ba 71d4 <__vfiprintf_r+0x6c0>
    74c6:	0f05                	nop 
    74c8:	63a6                	move.d r3,r10
    74ca:	61b6                	move.d r1,r11
    74cc:	6ec6                	move.d sp,r12
    74ce:	0fcc 6800           	addu.b 0x68,r12
    74d2:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    74d8:	6aa6                	test.d r10
    74da:	4b20                	bne 7426 <__vfiprintf_r+0x912>
    74dc:	6896                	move.d r8,r9
    74de:	ffed 9afd           	ba 727c <__vfiprintf_r+0x768>
    74e2:	0f05                	nop 
    74e4:	61b6                	move.d r1,r11
    74e6:	6ec6                	move.d sp,r12
    74e8:	0fcc 6800           	addu.b 0x68,r12
    74ec:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    74f2:	6aa6                	test.d r10
    74f4:	ff3d 46fe           	beq 733e <__vfiprintf_r+0x82a>
    74f8:	0f05                	nop 
    74fa:	2be0                	ba 7426 <__vfiprintf_r+0x912>
    74fc:	0f05                	nop 
    74fe:	63a6                	move.d r3,r10
    7500:	61b6                	move.d r1,r11
    7502:	3fbd 6434 0000      	jsr 3464 <___swsetup_r>
    7508:	6aa6                	test.d r10
    750a:	2520                	bne 7430 <__vfiprintf_r+0x91c>
    750c:	7f92                	moveq -1,r9
    750e:	0c11 599a           	move.w [r1+12],r9
    7512:	59d6                	move.w r9,r13
    7514:	1ad3                	andq 26,r13
    7516:	dfde 0a00           	cmp.w 0xa,r13
    751a:	ff2d 56f6           	bne 6b74 <__vfiprintf_r+0x60>
    751e:	6e86                	move.d sp,r8
    7520:	0e11 5dda           	move.w [r1+14],r13
    7524:	ffbd 4cf6           	blt 6b74 <__vfiprintf_r+0x60>
    7528:	6e86                	move.d sp,r8
    752a:	3d93                	andq -3,r9
    752c:	5fed a800 d99b      	move.w r9,[sp+168]
    7532:	6411 6aaa           	move.d [r1+100],r10
    7536:	5fed 0001 eaab      	move.d r10,[sp+256]
    753c:	5fed aa00 dddb      	move.w r13,[sp+170]
    7542:	1c11 6bba           	move.d [r1+28],r11
    7546:	5fed b800 ebbb      	move.d r11,[sp+184]
    754c:	2411 6cca           	move.d [r1+36],r12
    7550:	5fed c000 eccb      	move.d r12,[sp+192]
    7556:	6e96                	move.d sp,r9
    7558:	1f9c 0401           	addu.w 0x104,r9
    755c:	5fed 9c00 e99b      	move.d r9,[sp+156]
    7562:	5fed ac00 e99b      	move.d r9,[sp+172]
    7568:	5fdc 0004           	movu.w 0x400,r13
    756c:	5fed a400 eddb      	move.d r13,[sp+164]
    7572:	5fed b000 eddb      	move.d r13,[sp+176]
    7578:	5fed b400 708a      	clear.d [sp+180]
    757e:	63a6                	move.d r3,r10
    7580:	6eb6                	move.d sp,r11
    7582:	0fbc 9c00           	addu.b 0x9c,r11
    7586:	60c6                	move.d r0,r12
    7588:	48e1 6dda           	move.d [sp+72],r13
    758c:	3fbd 146b 0000      	jsr 6b14 <__vfiprintf_r>
    7592:	40e1 eaab           	move.d r10,[sp+64]
    7596:	6aa6                	test.d r10
    7598:	16b0                	blt 75b0 <__vfiprintf_r+0xa9c>
    759a:	63a6                	move.d r3,r10
    759c:	6eb6                	move.d sp,r11
    759e:	0fbc 9c00           	addu.b 0x9c,r11
    75a2:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    75a8:	6aa6                	test.d r10
    75aa:	ff2d 9203           	bne 7940 <__vfiprintf_r+0xe2c>
    75ae:	7f92                	moveq -1,r9
    75b0:	5fed a800 599a      	move.w [sp+168],r9
    75b6:	8693                	btstq 6,r9
    75b8:	ffad 78fe           	bge 7434 <__vfiprintf_r+0x920>
    75bc:	0f05                	nop 
    75be:	0c11 599a           	move.w [r1+12],r9
    75c2:	5f9f 4000           	or.w 0x40,r9
    75c6:	0c11 d99b           	move.w r9,[r1+12]
    75ca:	ffed 66fe           	ba 7434 <__vfiprintf_r+0x920>
    75ce:	0f05                	nop 
    75d0:	63a6                	move.d r3,r10
    75d2:	61b6                	move.d r1,r11
    75d4:	6ec6                	move.d sp,r12
    75d6:	0fcc 6800           	addu.b 0x68,r12
    75da:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    75e0:	6aa6                	test.d r10
    75e2:	ff2d 40fe           	bne 7426 <__vfiprintf_r+0x912>
    75e6:	6896                	move.d r8,r9
    75e8:	ffed 0af6           	ba 6bf6 <__vfiprintf_r+0xe2>
    75ec:	0f05                	nop 
    75ee:	63a6                	move.d r3,r10
    75f0:	61b6                	move.d r1,r11
    75f2:	6ec6                	move.d sp,r12
    75f4:	0fcc 6800           	addu.b 0x68,r12
    75f8:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    75fe:	6aa6                	test.d r10
    7600:	ff2d 22fe           	bne 7426 <__vfiprintf_r+0x912>
    7604:	6896                	move.d r8,r9
    7606:	6ce1 6cca           	move.d [sp+108],r12
    760a:	ffed 4cfc           	ba 725a <__vfiprintf_r+0x746>
    760e:	e92b                	move.d r2,[r9]
    7610:	34e1 6bba           	move.d [sp+52],r11
    7614:	38e1 6cca           	move.d [sp+56],r12
    7618:	c9b2                	cmpq 9,r11
    761a:	b015                	ax 
    761c:	c0c2                	cmpq 0,r12
    761e:	fe80                	bls 771e <__vfiprintf_r+0xc0a>
    7620:	0f05                	nop 
    7622:	6e26                	move.d sp,r2
    7624:	0f2c 9c00           	addu.b 0x9c,r2
    7628:	6f4e 1c8b 0000      	move.d 8b1c <___udivdi3>,r4
    762e:	8122                	subq 1,r2
    7630:	34e1 6aaa           	move.d [sp+52],r10
    7634:	38e1 6bba           	move.d [sp+56],r11
    7638:	4ac2                	moveq 10,r12
    763a:	7d86                	clear.d r13
    763c:	24e1 e99b           	move.d r9,[sp+36]
    7640:	3fbd bc8f 0000      	jsr 8fbc <___umoddi3>
    7646:	30a2                	addq 48,r10
    7648:	c2ab                	move.b r10,[r2]
    764a:	34e1 6aaa           	move.d [sp+52],r10
    764e:	38e1 6bba           	move.d [sp+56],r11
    7652:	4ac2                	moveq 10,r12
    7654:	7d86                	clear.d r13
    7656:	b4b9                	jsr r4
    7658:	34e1 eaab           	move.d r10,[sp+52]
    765c:	38e1 ebbb           	move.d r11,[sp+56]
    7660:	24e1 699a           	move.d [sp+36],r9
    7664:	34e1 a00b           	test.d [sp+52]
    7668:	b015                	ax 
    766a:	38e1 a00b           	test.d [sp+56]
    766e:	bf20                	bne 762e <__vfiprintf_r+0xb1a>
    7670:	0f05                	nop 
    7672:	30e1 6dda           	move.d [sp+48],r13
    7676:	a2d6                	sub.d r2,r13
    7678:	3ce1 eddb           	move.d r13,[sp+60]
    767c:	ffed d2f6           	ba 6d52 <__vfiprintf_r+0x23e>
    7680:	0f05                	nop 
    7682:	63a6                	move.d r3,r10
    7684:	61b6                	move.d r1,r11
    7686:	6ec6                	move.d sp,r12
    7688:	0fcc 6800           	addu.b 0x68,r12
    768c:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    7692:	6aa6                	test.d r10
    7694:	ff2d 8efd           	bne 7426 <__vfiprintf_r+0x912>
    7698:	6896                	move.d r8,r9
    769a:	6ce1 6cca           	move.d [sp+108],r12
    769e:	ffed fcfa           	ba 719e <__vfiprintf_r+0x68a>
    76a2:	0f05                	nop 
    76a4:	63a6                	move.d r3,r10
    76a6:	61b6                	move.d r1,r11
    76a8:	6ec6                	move.d sp,r12
    76aa:	0fcc 6800           	addu.b 0x68,r12
    76ae:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    76b4:	6aa6                	test.d r10
    76b6:	ff2d 6cfd           	bne 7426 <__vfiprintf_r+0x912>
    76ba:	6896                	move.d r8,r9
    76bc:	6ce1 6cca           	move.d [sp+108],r12
    76c0:	ffed 02fb           	ba 71c6 <__vfiprintf_r+0x6b2>
    76c4:	0f05                	nop 
    76c6:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    76cc:	ffed 66f4           	ba 6b36 <__vfiprintf_r+0x22>
    76d0:	0f05                	nop 
    76d2:	ecb0                	blt 77c0 <__vfiprintf_r+0xcac>
    76d4:	8653                	btstq 6,r5
    76d6:	e8a0                	bge 77c0 <__vfiprintf_r+0xcac>
    76d8:	0f05                	nop 
    76da:	48e1 6bba           	move.d [sp+72],r11
    76de:	5bb8                	movu.w [r11],r11
    76e0:	34e1 ebbb           	move.d r11,[sp+52]
    76e4:	38e1 708a           	clear.d [sp+56]
    76e8:	48e1 6cca           	move.d [sp+72],r12
    76ec:	04c2                	addq 4,r12
    76ee:	48e1 eccb           	move.d r12,[sp+72]
    76f2:	ffed 10f6           	ba 6d06 <__vfiprintf_r+0x1f2>
    76f6:	41d2                	moveq 1,r13
    76f8:	4eb0                	blt 7748 <__vfiprintf_r+0xc34>
    76fa:	8653                	btstq 6,r5
    76fc:	4aa0                	bge 7748 <__vfiprintf_r+0xc34>
    76fe:	0f05                	nop 
    7700:	48e1 6bba           	move.d [sp+72],r11
    7704:	5bb8                	movu.w [r11],r11
    7706:	34e1 ebbb           	move.d r11,[sp+52]
    770a:	38e1 708a           	clear.d [sp+56]
    770e:	48e1 6cca           	move.d [sp+72],r12
    7712:	04c2                	addq 4,r12
    7714:	48e1 eccb           	move.d r12,[sp+72]
    7718:	ffed eaf5           	ba 6d06 <__vfiprintf_r+0x1f2>
    771c:	7d06                	clear.b r13
    771e:	34e1 4dda           	move.b [sp+52],r13
    7722:	30d2                	addq 48,r13
    7724:	5fed 9b00 cddb      	move.b r13,[sp+155]
    772a:	58e1 6cca           	move.d [sp+88],r12
    772e:	3ce1 eccb           	move.d r12,[sp+60]
    7732:	0f2c 9b00           	addu.b 0x9b,r2
    7736:	ffed 18f6           	ba 6d52 <__vfiprintf_r+0x23e>
    773a:	0f05                	nop 
    773c:	40ca                	move.b [r0],r12
    773e:	48e1 eddb           	move.d r13,[sp+72]
    7742:	ffed d6f4           	ba 6c1c <__vfiprintf_r+0x108>
    7746:	6cc4                	movs.b r12,r12
    7748:	48e1 6dda           	move.d [sp+72],r13
    774c:	6dda                	move.d [r13],r13
    774e:	34e1 eddb           	move.d r13,[sp+52]
    7752:	38e1 708a           	clear.d [sp+56]
    7756:	48e1 6aaa           	move.d [sp+72],r10
    775a:	04a2                	addq 4,r10
    775c:	48e1 eaab           	move.d r10,[sp+72]
    7760:	ffed a2f5           	ba 6d06 <__vfiprintf_r+0x1f2>
    7764:	7d06                	clear.b r13
    7766:	48e1 6dda           	move.d [sp+72],r13
    776a:	6dca                	move.d [r13],r12
    776c:	3d75                	smi r13
    776e:	add5                	neg.d r13,r13
    7770:	34e1 eccb           	move.d r12,[sp+52]
    7774:	38e1 eddb           	move.d r13,[sp+56]
    7778:	48e1 6aaa           	move.d [sp+72],r10
    777c:	04a2                	addq 4,r10
    777e:	48e1 eaab           	move.d r10,[sp+72]
    7782:	6cc6                	test.d r12
    7784:	b015                	ax 
    7786:	6dd6                	test.d r13
    7788:	ffad 56f7           	bge 6ee2 <__vfiprintf_r+0x3ce>
    778c:	0f05                	nop 
    778e:	5ce1 708a           	clear.d [sp+92]
    7792:	60e1 708a           	clear.d [sp+96]
    7796:	5ce1 6bba           	move.d [sp+92],r11
    779a:	60e1 6cca           	move.d [sp+96],r12
    779e:	34e1 abba           	sub.d [sp+52],r11
    77a2:	b015                	ax 
    77a4:	38e1 acca           	sub.d [sp+56],r12
    77a8:	34e1 ebbb           	move.d r11,[sp+52]
    77ac:	38e1 eccb           	move.d r12,[sp+56]
    77b0:	4fce 2d00           	move.b 0x2d,r12
    77b4:	65e1 cccb           	move.b r12,[sp+101]
    77b8:	4c76                	move.b r12,r7
    77ba:	ffed 4ef5           	ba 6d0c <__vfiprintf_r+0x1f8>
    77be:	41d2                	moveq 1,r13
    77c0:	48e1 6dda           	move.d [sp+72],r13
    77c4:	6dda                	move.d [r13],r13
    77c6:	34e1 eddb           	move.d r13,[sp+52]
    77ca:	38e1 708a           	clear.d [sp+56]
    77ce:	48e1 6aaa           	move.d [sp+72],r10
    77d2:	04a2                	addq 4,r10
    77d4:	48e1 eaab           	move.d r10,[sp+72]
    77d8:	ffed 2af5           	ba 6d06 <__vfiprintf_r+0x1f2>
    77dc:	41d2                	moveq 1,r13
    77de:	48e1 6aaa           	move.d [sp+72],r10
    77e2:	6aaa                	move.d [r10],r10
    77e4:	34e1 eaab           	move.d r10,[sp+52]
    77e8:	38e1 708a           	clear.d [sp+56]
    77ec:	48e1 6bba           	move.d [sp+72],r11
    77f0:	04b2                	addq 4,r11
    77f2:	48e1 ebbb           	move.d r11,[sp+72]
    77f6:	ffed f4f7           	ba 6fee <__vfiprintf_r+0x4da>
    77fa:	0f05                	nop 
    77fc:	48e1 6dda           	move.d [sp+72],r13
    7800:	6dba                	move.d [r13],r11
    7802:	40e1 6cca           	move.d [sp+64],r12
    7806:	3d75                	smi r13
    7808:	add5                	neg.d r13,r13
    780a:	40e1 6aaa           	move.d [sp+64],r10
    780e:	ebab                	move.d r10,[r11]
    7810:	04b1 eddb           	move.d r13,[r11+4]
    7814:	48e1 6bba           	move.d [sp+72],r11
    7818:	04b2                	addq 4,r11
    781a:	48e1 ebbb           	move.d r11,[sp+72]
    781e:	ffed 88f3           	ba 6baa <__vfiprintf_r+0x96>
    7822:	40da                	move.b [r0],r13
    7824:	4f5f 2000           	or.b 0x20,r5
    7828:	01d1 4cca           	move.b [r13+1],r12
    782c:	ffed eaf3           	ba 6c1a <__vfiprintf_r+0x106>
    7830:	0102                	addq 1,r0
    7832:	63a6                	move.d r3,r10
    7834:	61b6                	move.d r1,r11
    7836:	6ec6                	move.d sp,r12
    7838:	0fcc 6800           	addu.b 0x68,r12
    783c:	3fbd 8c6a 0000      	jsr 6a8c <___sprint_r>
    7842:	6aa6                	test.d r10
    7844:	ff2d defb           	bne 7426 <__vfiprintf_r+0x912>
    7848:	6896                	move.d r8,r9
    784a:	6ce1 6cca           	move.d [sp+108],r12
    784e:	ffed 82f9           	ba 71d4 <__vfiprintf_r+0x6c0>
    7852:	0f05                	nop 
    7854:	48e1 6bba           	move.d [sp+72],r11
    7858:	6bba                	move.d [r11],r11
    785a:	34e1 ebbb           	move.d r11,[sp+52]
    785e:	38e1 708a           	clear.d [sp+56]
    7862:	48e1 6dda           	move.d [sp+72],r13
    7866:	04d2                	addq 4,r13
    7868:	48e1 eddb           	move.d r13,[sp+72]
    786c:	ffed 7ef7           	ba 6fee <__vfiprintf_r+0x4da>
    7870:	0f05                	nop 
    7872:	4aa0                	bge 78be <__vfiprintf_r+0xdaa>
    7874:	0f05                	nop 
    7876:	40e1 5cca           	move.w [sp+64],r12
    787a:	48e1 6bba           	move.d [sp+72],r11
    787e:	6bba                	move.d [r11],r11
    7880:	dbcb                	move.w r12,[r11]
    7882:	48e1 6dda           	move.d [sp+72],r13
    7886:	04d2                	addq 4,r13
    7888:	48e1 eddb           	move.d r13,[sp+72]
    788c:	ffed 1af3           	ba 6baa <__vfiprintf_r+0x96>
    7890:	40da                	move.b [r0],r13
    7892:	30e1 6cca           	move.d [sp+48],r12
    7896:	a2c6                	sub.d r2,r12
    7898:	3ce1 eccb           	move.d r12,[sp+60]
    789c:	ffed b2f4           	ba 6d52 <__vfiprintf_r+0x23e>
    78a0:	0f05                	nop 
    78a2:	cf6d 0600           	bound.b 0x6,r6
    78a6:	3ce1 e66b           	move.d r6,[sp+60]
    78aa:	6eb0                	blt 791a <__vfiprintf_r+0xe06>
    78ac:	6646                	move.d r6,r4
    78ae:	48e1 eddb           	move.d r13,[sp+72]
    78b2:	6f2e 24ac 0000      	move.d ac24 <__global_impure_ptr+0x3a>,r2
    78b8:	ffed 54f6           	ba 6f10 <__vfiprintf_r+0x3fc>
    78bc:	0f05                	nop 
    78be:	40e1 6bba           	move.d [sp+64],r11
    78c2:	48e1 6aaa           	move.d [sp+72],r10
    78c6:	6aaa                	move.d [r10],r10
    78c8:	eabb                	move.d r11,[r10]
    78ca:	48e1 6cca           	move.d [sp+72],r12
    78ce:	04c2                	addq 4,r12
    78d0:	48e1 eccb           	move.d r12,[sp+72]
    78d4:	ffed d2f2           	ba 6baa <__vfiprintf_r+0x96>
    78d8:	40da                	move.b [r0],r13
    78da:	ffed 40f3           	ba 6c1e <__vfiprintf_r+0x10a>
    78de:	6a06                	move.d r10,r0
    78e0:	24e1 e99b           	move.d r9,[sp+36]
    78e4:	28e1 eddb           	move.d r13,[sp+40]
    78e8:	3fbd 1c6a 0000      	jsr 6a1c <_strlen>
    78ee:	3ce1 eaab           	move.d r10,[sp+60]
    78f2:	65e1 477a           	move.b [sp+101],r7
    78f6:	28e1 6dda           	move.d [sp+40],r13
    78fa:	48e1 eddb           	move.d r13,[sp+72]
    78fe:	4ce1 708a           	clear.d [sp+76]
    7902:	24e1 699a           	move.d [sp+36],r9
    7906:	ffed 4cf4           	ba 6d56 <__vfiprintf_r+0x242>
    790a:	0f05                	nop 
    790c:	65e1 477a           	move.b [sp+101],r7
    7910:	3ce1 e66b           	move.d r6,[sp+60]
    7914:	ffed 2ef5           	ba 6e46 <__vfiprintf_r+0x332>
    7918:	0f05                	nop 
    791a:	93e0                	ba 78ae <__vfiprintf_r+0xd9a>
    791c:	7486                	clear.d r4
    791e:	48e1 6dda           	move.d [sp+72],r13
    7922:	04d2                	addq 4,r13
    7924:	48e1 6cca           	move.d [sp+72],r12
    7928:	6c6a                	move.d [r12],r6
    792a:	0101 4cca           	move.b [r0+1],r12
    792e:	48e1 eddb           	move.d r13,[sp+72]
    7932:	6666                	test.d r6
    7934:	ffad e2f2           	bge 6c1a <__vfiprintf_r+0x106>
    7938:	6a06                	move.d r10,r0
    793a:	ffed dcf2           	ba 6c1a <__vfiprintf_r+0x106>
    793e:	7f62                	moveq -1,r6
    7940:	40e1 e99b           	move.d r9,[sp+64]
    7944:	ffed 68fc           	ba 75b0 <__vfiprintf_r+0xa9c>
    7948:	0f05                	nop 

0000794a <_vfiprintf>:
    794a:	84e2                	subq 4,sp
    794c:	7eba                	move srp,[sp]
    794e:	84e2                	subq 4,sp
    7950:	ee0b                	move.d r0,[sp]
    7952:	6a06                	move.d r10,r0
    7954:	6b96                	move.d r11,r9
    7956:	6cd6                	move.d r12,r13
    7958:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    795e:	6aaa                	move.d [r10],r10
    7960:	60b6                	move.d r0,r11
    7962:	69c6                	move.d r9,r12
    7964:	3fbd 146b 0000      	jsr 6b14 <__vfiprintf_r>
    796a:	6e0e                	pop r0
    796c:	3e0d                	jump [sp+]
	...

00007970 <__write_r>:
    7970:	84e2                	subq 4,sp
    7972:	7eba                	move srp,[sp]
    7974:	84e2                	subq 4,sp
    7976:	ee0b                	move.d r0,[sp]
    7978:	6a06                	move.d r10,r0
    797a:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    7982:	6ba6                	move.d r11,r10
    7984:	6cb6                	move.d r12,r11
    7986:	6dc6                	move.d r13,r12
    7988:	3fbd b614 0000      	jsr 14b6 <__write>
    798e:	ffa2                	cmpq -1,r10
    7990:	0630                	beq 7998 <__write_r+0x28>
    7992:	0f05                	nop 
    7994:	6e0e                	pop r0
    7996:	3e0d                	jump [sp+]
    7998:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    799e:	699a                	move.d [r9],r9
    79a0:	f330                	beq 7994 <__write_r+0x24>
    79a2:	0f05                	nop 
    79a4:	e09b                	move.d r9,[r0]
    79a6:	6e0e                	pop r0
    79a8:	3e0d                	jump [sp+]
	...

000079ac <__calloc_r>:
    79ac:	84e2                	subq 4,sp
    79ae:	7eba                	move srp,[sp]
    79b0:	84e2                	subq 4,sp
    79b2:	ee0b                	move.d r0,[sp]
    79b4:	6a06                	move.d r10,r0
    79b6:	6ca6                	move.d r12,r10
    79b8:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    79be:	6ab6                	move.d r10,r11
    79c0:	60a6                	move.d r0,r10
    79c2:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    79c8:	6aa6                	test.d r10
    79ca:	2030                	beq 79ec <__calloc_r+0x40>
    79cc:	6a06                	move.d r10,r0
    79ce:	fca1 6cca           	move.d [r10-4],r12
    79d2:	3cc3                	andq -4,r12
    79d4:	84c2                	subq 4,r12
    79d6:	cfcc 2400           	cmpu.b 0x24,r12
    79da:	3690                	bhi 7a12 <__calloc_r+0x66>
    79dc:	d3c2                	cmpq 19,r12
    79de:	1290                	bhi 79f2 <__calloc_r+0x46>
    79e0:	6a96                	move.d r10,r9
    79e2:	798a                	clear.d [r9]
    79e4:	0491 708a           	clear.d [r9+4]
    79e8:	0891 708a           	clear.d [r9+8]
    79ec:	60a6                	move.d r0,r10
    79ee:	6e0e                	pop r0
    79f0:	3e0d                	jump [sp+]
    79f2:	7a8a                	clear.d [r10]
    79f4:	04a1 708a           	clear.d [r10+4]
    79f8:	dbc2                	cmpq 27,r12
    79fa:	2480                	bls 7a20 <__calloc_r+0x74>
    79fc:	0f05                	nop 
    79fe:	08a1 708a           	clear.d [r10+8]
    7a02:	0ca1 708a           	clear.d [r10+12]
    7a06:	cfcc 2400           	cmpu.b 0x24,r12
    7a0a:	1830                	beq 7a24 <__calloc_r+0x78>
    7a0c:	0f05                	nop 
    7a0e:	d3e0                	ba 79e2 <__calloc_r+0x36>
    7a10:	1092                	addq 16,r9
    7a12:	7b86                	clear.d r11
    7a14:	3fbd 7c15 0000      	jsr 157c <_memset>
    7a1a:	60a6                	move.d r0,r10
    7a1c:	6e0e                	pop r0
    7a1e:	3e0d                	jump [sp+]
    7a20:	c1e0                	ba 79e2 <__calloc_r+0x36>
    7a22:	0892                	addq 8,r9
    7a24:	10a1 708a           	clear.d [r10+16]
    7a28:	14a1 708a           	clear.d [r10+20]
    7a2c:	b5e0                	ba 79e2 <__calloc_r+0x36>
    7a2e:	1892                	addq 24,r9

00007a30 <__close_r>:
    7a30:	84e2                	subq 4,sp
    7a32:	7eba                	move srp,[sp]
    7a34:	84e2                	subq 4,sp
    7a36:	ee0b                	move.d r0,[sp]
    7a38:	6a06                	move.d r10,r0
    7a3a:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    7a42:	6ba6                	move.d r11,r10
    7a44:	3fbd ce14 0000      	jsr 14ce <__close>
    7a4a:	ffa2                	cmpq -1,r10
    7a4c:	0630                	beq 7a54 <__close_r+0x24>
    7a4e:	0f05                	nop 
    7a50:	6e0e                	pop r0
    7a52:	3e0d                	jump [sp+]
    7a54:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    7a5a:	699a                	move.d [r9],r9
    7a5c:	f330                	beq 7a50 <__close_r+0x20>
    7a5e:	0f05                	nop 
    7a60:	e09b                	move.d r9,[r0]
    7a62:	6e0e                	pop r0
    7a64:	3e0d                	jump [sp+]
	...

00007a68 <__fclose_r>:
    7a68:	84e2                	subq 4,sp
    7a6a:	7eba                	move srp,[sp]
    7a6c:	8ce2                	subq 12,sp
    7a6e:	fe2b                	movem r2,[sp]
    7a70:	6a16                	move.d r10,r1
    7a72:	6bb6                	test.d r11
    7a74:	1830                	beq 7a8e <__fclose_r+0x26>
    7a76:	6b06                	move.d r11,r0
    7a78:	6aa6                	test.d r10
    7a7a:	0a30                	beq 7a86 <__fclose_r+0x1e>
    7a7c:	0f05                	nop 
    7a7e:	35a1 a00b           	test.d [r10+53]
    7a82:	8230                	beq 7b06 <__fclose_r+0x9e>
    7a84:	0f05                	nop 
    7a86:	0c01 900b           	test.w [r0+12]
    7a8a:	0a20                	bne 7a96 <__fclose_r+0x2e>
    7a8c:	0f05                	nop 
    7a8e:	7286                	clear.d r2
    7a90:	62a6                	move.d r2,r10
    7a92:	be2f                	movem [sp+],r2
    7a94:	3e0d                	jump [sp+]
    7a96:	61a6                	move.d r1,r10
    7a98:	60b6                	move.d r0,r11
    7a9a:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    7aa0:	2c01 699a           	move.d [r0+44],r9
    7aa4:	1030                	beq 7ab6 <__fclose_r+0x4e>
    7aa6:	6a26                	move.d r10,r2
    7aa8:	61a6                	move.d r1,r10
    7aaa:	1c01 6bba           	move.d [r0+28],r11
    7aae:	b9b9                	jsr r9
    7ab0:	6aa6                	test.d r10
    7ab2:	5cb0                	blt 7b10 <__fclose_r+0xa8>
    7ab4:	0f05                	nop 
    7ab6:	0c01 599a           	move.w [r0+12],r9
    7aba:	8793                	btstq 7,r9
    7abc:	56b0                	blt 7b14 <__fclose_r+0xac>
    7abe:	61a6                	move.d r1,r10
    7ac0:	3001 6bba           	move.d [r0+48],r11
    7ac4:	1630                	beq 7adc <__fclose_r+0x74>
    7ac6:	6096                	move.d r0,r9
    7ac8:	0f9c 4000           	addu.b 0x40,r9
    7acc:	e9b6                	cmp.d r9,r11
    7ace:	0830                	beq 7ad8 <__fclose_r+0x70>
    7ad0:	61a6                	move.d r1,r10
    7ad2:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    7ad8:	3001 708a           	clear.d [r0+48]
    7adc:	4401 6bba           	move.d [r0+68],r11
    7ae0:	0e30                	beq 7af0 <__fclose_r+0x88>
    7ae2:	0f05                	nop 
    7ae4:	61a6                	move.d r1,r10
    7ae6:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    7aec:	4401 708a           	clear.d [r0+68]
    7af0:	3fbd 8c4e 0000      	jsr 4e8c <___sfp_lock_acquire>
    7af6:	0c01 704a           	clear.w [r0+12]
    7afa:	3fbd 904e 0000      	jsr 4e90 <___sfp_lock_release>
    7b00:	62a6                	move.d r2,r10
    7b02:	be2f                	movem [sp+],r2
    7b04:	3e0d                	jump [sp+]
    7b06:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    7b0c:	79e0                	ba 7a86 <__fclose_r+0x1e>
    7b0e:	0f05                	nop 
    7b10:	a5e0                	ba 7ab6 <__fclose_r+0x4e>
    7b12:	7f22                	moveq -1,r2
    7b14:	1001 6bba           	move.d [r0+16],r11
    7b18:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    7b1e:	a1e0                	ba 7ac0 <__fclose_r+0x58>
    7b20:	0f05                	nop 

00007b22 <_fclose>:
    7b22:	84e2                	subq 4,sp
    7b24:	7eba                	move srp,[sp]
    7b26:	6ab6                	move.d r10,r11
    7b28:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    7b2e:	6aaa                	move.d [r10],r10
    7b30:	3fbd 687a 0000      	jsr 7a68 <__fclose_r>
    7b36:	3e0d                	jump [sp+]

00007b38 <__fputwc_r>:
    7b38:	84e2                	subq 4,sp
    7b3a:	7eba                	move srp,[sp]
    7b3c:	9ee2                	subq 30,sp
    7b3e:	fe6b                	movem r6,[sp]
    7b40:	6a56                	move.d r10,r5
    7b42:	6b46                	move.d r11,r4
    7b44:	0cc1 599a           	move.w [r12+12],r9
    7b48:	8d93                	btstq 13,r9
    7b4a:	16b0                	blt 7b62 <__fputwc_r+0x2a>
    7b4c:	6c06                	move.d r12,r0
    7b4e:	5f9f 0020           	or.w 0x2000,r9
    7b52:	0cc1 d99b           	move.w r9,[r12+12]
    7b56:	64c1 699a           	move.d [r12+100],r9
    7b5a:	5f9f 0020           	or.w 0x2000,r9
    7b5e:	64c1 e99b           	move.d r9,[r12+100]
    7b62:	3fbd f652 0000      	jsr 52f6 <___locale_mb_cur_max>
    7b68:	c1a2                	cmpq 1,r10
    7b6a:	9e30                	beq 7c0a <__fputwc_r+0xd2>
    7b6c:	6446                	test.d r4
    7b6e:	6e36                	move.d sp,r3
    7b70:	1d32                	addq 29,r3
    7b72:	65a6                	move.d r5,r10
    7b74:	63b6                	move.d r3,r11
    7b76:	64c6                	move.d r4,r12
    7b78:	60d6                	move.d r0,r13
    7b7a:	0fdc 5c00           	addu.b 0x5c,r13
    7b7e:	3fbd d889 0000      	jsr 89d8 <__wcrtomb_r>
    7b84:	ffa2                	cmpq -1,r10
    7b86:	6030                	beq 7be8 <__fputwc_r+0xb0>
    7b88:	6a26                	move.d r10,r2
    7b8a:	9430                	beq 7c20 <__fputwc_r+0xe8>
    7b8c:	64a6                	move.d r4,r10
    7b8e:	6f6e c488 0000      	move.d 88c4 <___swbuf_r>,r6
    7b94:	18e0                	ba 7bae <__fputwc_r+0x76>
    7b96:	7186                	clear.d r1
    7b98:	4315 499a           	move.b [r3+r1.b],r9
    7b9c:	7009 c99b           	move.b r9,[[r0]]
    7ba0:	609a                	move.d [r0],r9
    7ba2:	0192                	addq 1,r9
    7ba4:	e09b                	move.d r9,[r0]
    7ba6:	0112                	addq 1,r1
    7ba8:	e216                	cmp.d r2,r1
    7baa:	7400                	bcc 7c20 <__fputwc_r+0xe8>
    7bac:	64a6                	move.d r4,r10
    7bae:	0801 699a           	move.d [r0+8],r9
    7bb2:	8192                	subq 1,r9
    7bb4:	0801 e99b           	move.d r9,[r0+8]
    7bb8:	df60                	bpl 7b98 <__fputwc_r+0x60>
    7bba:	0f05                	nop 
    7bbc:	1801 e99a           	cmp.d [r0+24],r9
    7bc0:	38b0                	blt 7bfa <__fputwc_r+0xc2>
    7bc2:	65a6                	move.d r5,r10
    7bc4:	4315 499a           	move.b [r3+r1.b],r9
    7bc8:	7009 c99b           	move.b r9,[[r0]]
    7bcc:	609a                	move.d [r0],r9
    7bce:	49da                	move.b [r9],r13
    7bd0:	cfde 0a00           	cmp.b 0xa,r13
    7bd4:	5030                	beq 7c26 <__fputwc_r+0xee>
    7bd6:	0192                	addq 1,r9
    7bd8:	7d06                	clear.b r13
    7bda:	e09b                	move.d r9,[r0]
    7bdc:	4dd6                	test.b r13
    7bde:	c730                	beq 7ba6 <__fputwc_r+0x6e>
    7be0:	7fa2                	moveq -1,r10
    7be2:	be6f                	movem [sp+],r6
    7be4:	02e2                	addq 2,sp
    7be6:	3e0d                	jump [sp+]
    7be8:	0c01 599a           	move.w [r0+12],r9
    7bec:	5f9f 4000           	or.w 0x40,r9
    7bf0:	0c01 d99b           	move.w r9,[r0+12]
    7bf4:	be6f                	movem [sp+],r6
    7bf6:	02e2                	addq 2,sp
    7bf8:	3e0d                	jump [sp+]
    7bfa:	4315 4bb8           	movu.b [r3+r1.b],r11
    7bfe:	60c6                	move.d r0,r12
    7c00:	b6b9                	jsr r6
    7c02:	ffa2                	cmpq -1,r10
    7c04:	3d35                	seq r13
    7c06:	d5e0                	ba 7bdc <__fputwc_r+0xa4>
    7c08:	0f05                	nop 
    7c0a:	65d0                	ble 7b70 <__fputwc_r+0x38>
    7c0c:	6e36                	move.d sp,r3
    7c0e:	cf4c ff00           	cmpu.b 0xff,r4
    7c12:	5dc0                	bgt 7b70 <__fputwc_r+0x38>
    7c14:	0f05                	nop 
    7c16:	1de1 c44b           	move.b r4,[sp+29]
    7c1a:	6a26                	move.d r10,r2
    7c1c:	71e0                	ba 7b8e <__fputwc_r+0x56>
    7c1e:	1d32                	addq 29,r3
    7c20:	be6f                	movem [sp+],r6
    7c22:	02e2                	addq 2,sp
    7c24:	3e0d                	jump [sp+]
    7c26:	4ab2                	moveq 10,r11
    7c28:	60c6                	move.d r0,r12
    7c2a:	b6b9                	jsr r6
    7c2c:	ffa2                	cmpq -1,r10
    7c2e:	3d35                	seq r13
    7c30:	abe0                	ba 7bdc <__fputwc_r+0xa4>
    7c32:	0f05                	nop 

00007c34 <_fputwc>:
    7c34:	84e2                	subq 4,sp
    7c36:	7eba                	move srp,[sp]
    7c38:	88e2                	subq 8,sp
    7c3a:	ee0b                	move.d r0,[sp]
    7c3c:	6a06                	move.d r10,r0
    7c3e:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    7c44:	6aaa                	move.d [r10],r10
    7c46:	2030                	beq 7c68 <_fputwc+0x34>
    7c48:	6bc6                	move.d r11,r12
    7c4a:	35a1 a00b           	test.d [r10+53]
    7c4e:	1820                	bne 7c68 <_fputwc+0x34>
    7c50:	0f05                	nop 
    7c52:	04e1 ebbb           	move.d r11,[sp+4]
    7c56:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    7c5c:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    7c62:	6aaa                	move.d [r10],r10
    7c64:	04e1 6cca           	move.d [sp+4],r12
    7c68:	60b6                	move.d r0,r11
    7c6a:	3fbd 387b 0000      	jsr 7b38 <__fputwc_r>
    7c70:	6e0e                	pop r0
    7c72:	04e2                	addq 4,sp
    7c74:	3e0d                	jump [sp+]
	...

00007c78 <__fstat_r>:
    7c78:	84e2                	subq 4,sp
    7c7a:	7eba                	move srp,[sp]
    7c7c:	84e2                	subq 4,sp
    7c7e:	ee0b                	move.d r0,[sp]
    7c80:	6a06                	move.d r10,r0
    7c82:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    7c8a:	6ba6                	move.d r11,r10
    7c8c:	6cb6                	move.d r12,r11
    7c8e:	3fbd da14 0000      	jsr 14da <__fstat>
    7c94:	ffa2                	cmpq -1,r10
    7c96:	0630                	beq 7c9e <__fstat_r+0x26>
    7c98:	0f05                	nop 
    7c9a:	6e0e                	pop r0
    7c9c:	3e0d                	jump [sp+]
    7c9e:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    7ca4:	699a                	move.d [r9],r9
    7ca6:	f330                	beq 7c9a <__fstat_r+0x22>
    7ca8:	0f05                	nop 
    7caa:	e09b                	move.d r9,[r0]
    7cac:	6e0e                	pop r0
    7cae:	3e0d                	jump [sp+]

00007cb0 <___sfvwrite_r>:
    7cb0:	84e2                	subq 4,sp
    7cb2:	7eba                	move srp,[sp]
    7cb4:	ace2                	subq 44,sp
    7cb6:	fe8b                	movem r8,[sp]
    7cb8:	6a76                	move.d r10,r7
    7cba:	6b06                	move.d r11,r0
    7cbc:	08c1 a00b           	test.d [r12+8]
    7cc0:	4830                	beq 7d0a <___sfvwrite_r+0x5a>
    7cc2:	6c26                	move.d r12,r2
    7cc4:	0cb1 5aaa           	move.w [r11+12],r10
    7cc8:	83a3                	btstq 3,r10
    7cca:	46a0                	bge 7d12 <___sfvwrite_r+0x62>
    7ccc:	0f05                	nop 
    7cce:	10b1 a00b           	test.d [r11+16]
    7cd2:	3e30                	beq 7d12 <___sfvwrite_r+0x62>
    7cd4:	81a3                	btstq 1,r10
    7cd6:	54a0                	bge 7d2c <___sfvwrite_r+0x7c>
    7cd8:	621a                	move.d [r2],r1
    7cda:	7486                	clear.d r4
    7cdc:	7386                	clear.d r3
    7cde:	6336                	test.d r3
    7ce0:	be30                	beq 7da0 <___sfvwrite_r+0xf0>
    7ce2:	63d6                	move.d r3,r13
    7ce4:	67a6                	move.d r7,r10
    7ce6:	1c01 6bba           	move.d [r0+28],r11
    7cea:	64c6                	move.d r4,r12
    7cec:	dfdd 0004           	bound.w 0x400,r13
    7cf0:	2401 30b9           	jsr [r0+36]
    7cf4:	6aa6                	test.d r10
    7cf6:	d0d0                	ble 7dc8 <___sfvwrite_r+0x118>
    7cf8:	0f05                	nop 
    7cfa:	2a46                	add.d r10,r4
    7cfc:	0821 699a           	move.d [r2+8],r9
    7d00:	aa96                	sub.d r10,r9
    7d02:	0821 e99b           	move.d r9,[r2+8]
    7d06:	d720                	bne 7cde <___sfvwrite_r+0x2e>
    7d08:	aa36                	sub.d r10,r3
    7d0a:	7a86                	clear.d r10
    7d0c:	be8f                	movem [sp+],r8
    7d0e:	08e2                	addq 8,sp
    7d10:	3e0d                	jump [sp+]
    7d12:	67a6                	move.d r7,r10
    7d14:	60b6                	move.d r0,r11
    7d16:	3fbd 6434 0000      	jsr 3464 <___swsetup_r>
    7d1c:	6aa6                	test.d r10
    7d1e:	ed20                	bne 7d0c <___sfvwrite_r+0x5c>
    7d20:	7fa2                	moveq -1,r10
    7d22:	0c01 5aaa           	move.w [r0+12],r10
    7d26:	81a3                	btstq 1,r10
    7d28:	b1b0                	blt 7cda <___sfvwrite_r+0x2a>
    7d2a:	621a                	move.d [r2],r1
    7d2c:	80a3                	btstq 0,r10
    7d2e:	acb0                	blt 7ddc <___sfvwrite_r+0x12c>
    7d30:	7586                	clear.d r5
    7d32:	7386                	clear.d r3
    7d34:	6336                	test.d r3
    7d36:	5e30                	beq 7d96 <___sfvwrite_r+0xe6>
    7d38:	0f05                	nop 
    7d3a:	0801 644a           	move.d [r0+8],r4
    7d3e:	89a3                	btstq 9,r10
    7d40:	ffad 0e01           	bge 7e52 <___sfvwrite_r+0x1a2>
    7d44:	e436                	cmp.d r4,r3
    7d46:	ff1d 7401           	blo 7ebe <___sfvwrite_r+0x20e>
    7d4a:	6466                	move.d r4,r6
    7d4c:	5a96                	move.w r10,r9
    7d4e:	1f9f 8004           	and.w 0x480,r9
    7d52:	ff2d b601           	bne 7f0c <___sfvwrite_r+0x25c>
    7d56:	6386                	move.d r3,r8
    7d58:	60aa                	move.d [r0],r10
    7d5a:	28e1 e44b           	move.d r4,[sp+40]
    7d5e:	6346                	move.d r3,r4
    7d60:	65b6                	move.d r5,r11
    7d62:	66c6                	move.d r6,r12
    7d64:	3fbd 5880 0000      	jsr 8058 <_memmove>
    7d6a:	0801 6cca           	move.d [r0+8],r12
    7d6e:	28e1 acca           	sub.d [sp+40],r12
    7d72:	0801 eccb           	move.d r12,[r0+8]
    7d76:	60ca                	move.d [r0],r12
    7d78:	26c6                	add.d r6,r12
    7d7a:	e0cb                	move.d r12,[r0]
    7d7c:	2856                	add.d r8,r5
    7d7e:	0821 699a           	move.d [r2+8],r9
    7d82:	a496                	sub.d r4,r9
    7d84:	0821 e99b           	move.d r9,[r2+8]
    7d88:	8130                	beq 7d0a <___sfvwrite_r+0x5a>
    7d8a:	a836                	sub.d r8,r3
    7d8c:	0c01 5aaa           	move.w [r0+12],r10
    7d90:	6336                	test.d r3
    7d92:	a720                	bne 7d3a <___sfvwrite_r+0x8a>
    7d94:	0f05                	nop 
    7d96:	615a                	move.d [r1],r5
    7d98:	0411 633a           	move.d [r1+4],r3
    7d9c:	97e0                	ba 7d34 <___sfvwrite_r+0x84>
    7d9e:	0812                	addq 8,r1
    7da0:	614a                	move.d [r1],r4
    7da2:	0411 633a           	move.d [r1+4],r3
    7da6:	37e0                	ba 7cde <___sfvwrite_r+0x2e>
    7da8:	0812                	addq 8,r1
    7daa:	3fbd f882 0000      	jsr 82f8 <__realloc_r>
    7db0:	6aa6                	test.d r10
    7db2:	ff2d b401           	bne 7f6a <___sfvwrite_r+0x2ba>
    7db6:	6a66                	move.d r10,r6
    7db8:	67a6                	move.d r7,r10
    7dba:	1001 6bba           	move.d [r0+16],r11
    7dbe:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    7dc4:	4c92                	moveq 12,r9
    7dc6:	e79b                	move.d r9,[r7]
    7dc8:	0c01 599a           	move.w [r0+12],r9
    7dcc:	5f9f 4000           	or.w 0x40,r9
    7dd0:	0c01 d99b           	move.w r9,[r0+12]
    7dd4:	7fa2                	moveq -1,r10
    7dd6:	be8f                	movem [sp+],r8
    7dd8:	08e2                	addq 8,sp
    7dda:	3e0d                	jump [sp+]
    7ddc:	7886                	clear.d r8
    7dde:	7686                	clear.d r6
    7de0:	7486                	clear.d r4
    7de2:	6446                	test.d r4
    7de4:	6030                	beq 7e46 <___sfvwrite_r+0x196>
    7de6:	0f05                	nop 
    7de8:	6886                	test.d r8
    7dea:	ff3d 0001           	beq 7eee <___sfvwrite_r+0x23e>
    7dee:	66a6                	move.d r6,r10
    7df0:	65d6                	move.d r5,r13
    7df2:	0801 633a           	move.d [r0+8],r3
    7df6:	1401 699a           	move.d [r0+20],r9
    7dfa:	60aa                	move.d [r0],r10
    7dfc:	1001 eaaa           	cmp.d [r0+16],r10
    7e00:	0c80                	bls 7e0e <___sfvwrite_r+0x15e>
    7e02:	e4d5                	bound.d r4,r13
    7e04:	2936                	add.d r9,r3
    7e06:	e3d6                	cmp.d r3,r13
    7e08:	ffcd 8001           	bgt 7f8c <___sfvwrite_r+0x2dc>
    7e0c:	66b6                	move.d r6,r11
    7e0e:	e9d6                	cmp.d r9,r13
    7e10:	72b0                	blt 7e84 <___sfvwrite_r+0x1d4>
    7e12:	66b6                	move.d r6,r11
    7e14:	67a6                	move.d r7,r10
    7e16:	1c01 6bba           	move.d [r0+28],r11
    7e1a:	66c6                	move.d r6,r12
    7e1c:	69d6                	move.d r9,r13
    7e1e:	2401 30b9           	jsr [r0+36]
    7e22:	6aa6                	test.d r10
    7e24:	a3d0                	ble 7dc8 <___sfvwrite_r+0x118>
    7e26:	6a36                	move.d r10,r3
    7e28:	a356                	sub.d r3,r5
    7e2a:	6556                	test.d r5
    7e2c:	7c30                	beq 7eaa <___sfvwrite_r+0x1fa>
    7e2e:	0f05                	nop 
    7e30:	2366                	add.d r3,r6
    7e32:	0821 6dda           	move.d [r2+8],r13
    7e36:	a3d6                	sub.d r3,r13
    7e38:	0821 eddb           	move.d r13,[r2+8]
    7e3c:	ff3d cafe           	beq 7d0a <___sfvwrite_r+0x5a>
    7e40:	a346                	sub.d r3,r4
    7e42:	a520                	bne 7de8 <___sfvwrite_r+0x138>
    7e44:	0f05                	nop 
    7e46:	616a                	move.d [r1],r6
    7e48:	0411 644a           	move.d [r1+4],r4
    7e4c:	0812                	addq 8,r1
    7e4e:	93e0                	ba 7de2 <___sfvwrite_r+0x132>
    7e50:	7886                	clear.d r8
    7e52:	60aa                	move.d [r0],r10
    7e54:	1001 eaaa           	cmp.d [r0+16],r10
    7e58:	0880                	bls 7e62 <___sfvwrite_r+0x1b2>
    7e5a:	e436                	cmp.d r4,r3
    7e5c:	ff9d 5201           	bhi 7fb2 <___sfvwrite_r+0x302>
    7e60:	6486                	move.d r4,r8
    7e62:	1401 6dda           	move.d [r0+20],r13
    7e66:	ed36                	cmp.d r13,r3
    7e68:	6410                	bcs 7ece <___sfvwrite_r+0x21e>
    7e6a:	65b6                	move.d r5,r11
    7e6c:	67a6                	move.d r7,r10
    7e6e:	1c01 6bba           	move.d [r0+28],r11
    7e72:	65c6                	move.d r5,r12
    7e74:	2401 30b9           	jsr [r0+36]
    7e78:	6aa6                	test.d r10
    7e7a:	4dd0                	ble 7dc8 <___sfvwrite_r+0x118>
    7e7c:	6a46                	move.d r10,r4
    7e7e:	ffed fafe           	ba 7d7c <___sfvwrite_r+0xcc>
    7e82:	6a86                	move.d r10,r8
    7e84:	6dc6                	move.d r13,r12
    7e86:	24e1 eddb           	move.d r13,[sp+36]
    7e8a:	3fbd 5880 0000      	jsr 8058 <_memmove>
    7e90:	0801 6cca           	move.d [r0+8],r12
    7e94:	24e1 6dda           	move.d [sp+36],r13
    7e98:	adc6                	sub.d r13,r12
    7e9a:	0801 eccb           	move.d r12,[r0+8]
    7e9e:	60ca                	move.d [r0],r12
    7ea0:	2dc6                	add.d r13,r12
    7ea2:	6d36                	move.d r13,r3
    7ea4:	a356                	sub.d r3,r5
    7ea6:	8920                	bne 7e30 <___sfvwrite_r+0x180>
    7ea8:	e0cb                	move.d r12,[r0]
    7eaa:	67a6                	move.d r7,r10
    7eac:	60b6                	move.d r0,r11
    7eae:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    7eb4:	6aa6                	test.d r10
    7eb6:	1120                	bne 7dc8 <___sfvwrite_r+0x118>
    7eb8:	0f05                	nop 
    7eba:	75e0                	ba 7e30 <___sfvwrite_r+0x180>
    7ebc:	7886                	clear.d r8
    7ebe:	28e1 e33b           	move.d r3,[sp+40]
    7ec2:	60aa                	move.d [r0],r10
    7ec4:	6386                	move.d r3,r8
    7ec6:	6346                	move.d r3,r4
    7ec8:	ffed 94fe           	ba 7d60 <___sfvwrite_r+0xb0>
    7ecc:	6366                	move.d r3,r6
    7ece:	6346                	move.d r3,r4
    7ed0:	63c6                	move.d r3,r12
    7ed2:	3fbd 5880 0000      	jsr 8058 <_memmove>
    7ed8:	0801 699a           	move.d [r0+8],r9
    7edc:	a396                	sub.d r3,r9
    7ede:	0801 e99b           	move.d r9,[r0+8]
    7ee2:	609a                	move.d [r0],r9
    7ee4:	2396                	add.d r3,r9
    7ee6:	e09b                	move.d r9,[r0]
    7ee8:	ffed 90fe           	ba 7d7c <___sfvwrite_r+0xcc>
    7eec:	6386                	move.d r3,r8
    7eee:	4ab2                	moveq 10,r11
    7ef0:	64c6                	move.d r4,r12
    7ef2:	3fbd e45a 0000      	jsr 5ae4 <_memchr>
    7ef8:	6aa6                	test.d r10
    7efa:	de30                	beq 7fda <___sfvwrite_r+0x32a>
    7efc:	0f05                	nop 
    7efe:	6a56                	move.d r10,r5
    7f00:	0152                	addq 1,r5
    7f02:	4f8e 0100           	move.b 0x1,r8
    7f06:	ffed e6fe           	ba 7df0 <___sfvwrite_r+0x140>
    7f0a:	a656                	sub.d r6,r5
    7f0c:	1001 6bba           	move.d [r0+16],r11
    7f10:	608a                	move.d [r0],r8
    7f12:	ab86                	sub.d r11,r8
    7f14:	1401 6dda           	move.d [r0+20],r13
    7f18:	6dc6                	move.d r13,r12
    7f1a:	2dc6                	add.d r13,r12
    7f1c:	2dc6                	add.d r13,r12
    7f1e:	6c46                	move.d r12,r4
    7f20:	ff43                	lsrq 31,r4
    7f22:	2c46                	add.d r12,r4
    7f24:	a143                	asrq 1,r4
    7f26:	68d6                	move.d r8,r13
    7f28:	01d2                	addq 1,r13
    7f2a:	23d6                	add.d r3,r13
    7f2c:	ed46                	cmp.d r13,r4
    7f2e:	0600                	bcc 7f36 <___sfvwrite_r+0x286>
    7f30:	64c6                	move.d r4,r12
    7f32:	6d46                	move.d r13,r4
    7f34:	6dc6                	move.d r13,r12
    7f36:	8aa3                	btstq 10,r10
    7f38:	ffad 6efe           	bge 7daa <___sfvwrite_r+0xfa>
    7f3c:	67a6                	move.d r7,r10
    7f3e:	6cb6                	move.d r12,r11
    7f40:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    7f46:	6aa6                	test.d r10
    7f48:	ff3d 78fe           	beq 7dc4 <___sfvwrite_r+0x114>
    7f4c:	6a66                	move.d r10,r6
    7f4e:	1001 6bba           	move.d [r0+16],r11
    7f52:	68c6                	move.d r8,r12
    7f54:	3fbd 7c5b 0000      	jsr 5b7c <_memcpy>
    7f5a:	0c01 5dda           	move.w [r0+12],r13
    7f5e:	1fdf 7ffb           	and.w 0xfb7f,r13
    7f62:	5fdf 8000           	or.w 0x80,r13
    7f66:	0c01 dddb           	move.w r13,[r0+12]
    7f6a:	1001 e66b           	move.d r6,[r0+16]
    7f6e:	66a6                	move.d r6,r10
    7f70:	28a6                	add.d r8,r10
    7f72:	e0ab                	move.d r10,[r0]
    7f74:	1401 e44b           	move.d r4,[r0+20]
    7f78:	28e1 e33b           	move.d r3,[sp+40]
    7f7c:	a846                	sub.d r8,r4
    7f7e:	0801 e44b           	move.d r4,[r0+8]
    7f82:	6386                	move.d r3,r8
    7f84:	6346                	move.d r3,r4
    7f86:	ffed d6fd           	ba 7d60 <___sfvwrite_r+0xb0>
    7f8a:	6366                	move.d r3,r6
    7f8c:	63c6                	move.d r3,r12
    7f8e:	3fbd 5880 0000      	jsr 8058 <_memmove>
    7f94:	60da                	move.d [r0],r13
    7f96:	23d6                	add.d r3,r13
    7f98:	e0db                	move.d r13,[r0]
    7f9a:	67a6                	move.d r7,r10
    7f9c:	60b6                	move.d r0,r11
    7f9e:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    7fa4:	6aa6                	test.d r10
    7fa6:	ff3d 80fe           	beq 7e2a <___sfvwrite_r+0x17a>
    7faa:	a356                	sub.d r3,r5
    7fac:	ffed 18fe           	ba 7dc8 <___sfvwrite_r+0x118>
    7fb0:	2356                	add.d r3,r5
    7fb2:	65b6                	move.d r5,r11
    7fb4:	64c6                	move.d r4,r12
    7fb6:	3fbd 5880 0000      	jsr 8058 <_memmove>
    7fbc:	60da                	move.d [r0],r13
    7fbe:	24d6                	add.d r4,r13
    7fc0:	e0db                	move.d r13,[r0]
    7fc2:	67a6                	move.d r7,r10
    7fc4:	60b6                	move.d r0,r11
    7fc6:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    7fcc:	6aa6                	test.d r10
    7fce:	ff3d acfd           	beq 7d7e <___sfvwrite_r+0xce>
    7fd2:	2856                	add.d r8,r5
    7fd4:	ffed f0fd           	ba 7dc8 <___sfvwrite_r+0x118>
    7fd8:	a856                	sub.d r8,r5
    7fda:	6456                	move.d r4,r5
    7fdc:	0152                	addq 1,r5
    7fde:	ffed 0efe           	ba 7df0 <___sfvwrite_r+0x140>
    7fe2:	4182                	moveq 1,r8

00007fe4 <__isatty_r>:
    7fe4:	84e2                	subq 4,sp
    7fe6:	7eba                	move srp,[sp]
    7fe8:	84e2                	subq 4,sp
    7fea:	ee0b                	move.d r0,[sp]
    7fec:	6a06                	move.d r10,r0
    7fee:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    7ff6:	6ba6                	move.d r11,r10
    7ff8:	3fbd fe14 0000      	jsr 14fe <__isatty>
    7ffe:	ffa2                	cmpq -1,r10
    8000:	0630                	beq 8008 <__isatty_r+0x24>
    8002:	0f05                	nop 
    8004:	6e0e                	pop r0
    8006:	3e0d                	jump [sp+]
    8008:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    800e:	699a                	move.d [r9],r9
    8010:	f330                	beq 8004 <__isatty_r+0x20>
    8012:	0f05                	nop 
    8014:	e09b                	move.d r9,[r0]
    8016:	6e0e                	pop r0
    8018:	3e0d                	jump [sp+]
	...

0000801c <__lseek_r>:
    801c:	84e2                	subq 4,sp
    801e:	7eba                	move srp,[sp]
    8020:	84e2                	subq 4,sp
    8022:	ee0b                	move.d r0,[sp]
    8024:	6a06                	move.d r10,r0
    8026:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    802e:	6ba6                	move.d r11,r10
    8030:	6cb6                	move.d r12,r11
    8032:	6dc6                	move.d r13,r12
    8034:	3fbd e614 0000      	jsr 14e6 <__lseek>
    803a:	ffa2                	cmpq -1,r10
    803c:	0630                	beq 8044 <__lseek_r+0x28>
    803e:	0f05                	nop 
    8040:	6e0e                	pop r0
    8042:	3e0d                	jump [sp+]
    8044:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    804a:	699a                	move.d [r9],r9
    804c:	f330                	beq 8040 <__lseek_r+0x24>
    804e:	0f05                	nop 
    8050:	e09b                	move.d r9,[r0]
    8052:	6e0e                	pop r0
    8054:	3e0d                	jump [sp+]
	...

00008058 <_memmove>:
    8058:	90e2                	subq 16,sp
    805a:	fe3b                	movem r3,[sp]
    805c:	6a16                	move.d r10,r1
    805e:	6b96                	move.d r11,r9
    8060:	6c06                	move.d r12,r0
    8062:	6ad6                	move.d r10,r13
    8064:	eba6                	cmp.d r11,r10
    8066:	3280                	bls 809a <_memmove+0x42>
    8068:	6c26                	move.d r12,r2
    806a:	6b36                	move.d r11,r3
    806c:	2c36                	add.d r12,r3
    806e:	e3a6                	cmp.d r3,r10
    8070:	2800                	bcc 809a <_memmove+0x42>
    8072:	0f05                	nop 
    8074:	6a96                	move.d r10,r9
    8076:	6cc6                	test.d r12
    8078:	1a30                	beq 8094 <_memmove+0x3c>
    807a:	2c96                	add.d r12,r9
    807c:	63b6                	move.d r3,r11
    807e:	6936                	move.d r9,r3
    8080:	ac36                	sub.d r12,r3
    8082:	6306                	move.d r3,r0
    8084:	ffb1 4dda           	move.b [r11-1],r13
    8088:	ff91 cddb           	move.b r13,[r9-1]
    808c:	8192                	subq 1,r9
    808e:	e096                	cmp.d r0,r9
    8090:	f320                	bne 8084 <_memmove+0x2c>
    8092:	81b2                	subq 1,r11
    8094:	61a6                	move.d r1,r10
    8096:	7fb6                	ret 
    8098:	be3f                	movem [sp+],r3
    809a:	8113                	btstq 1,r1
    809c:	2e30                	beq 80cc <_memmove+0x74>
    809e:	6136                	move.d r1,r3
    80a0:	c202                	cmpq 2,r0
    80a2:	46d0                	ble 80ea <_memmove+0x92>
    80a4:	8013                	btstq 0,r1
    80a6:	baa0                	bge 8162 <_memmove+0x10a>
    80a8:	0f05                	nop 
    80aa:	6026                	move.d r0,r2
    80ac:	8122                	subq 1,r2
    80ae:	62c6                	move.d r2,r12
    80b0:	69b6                	move.d r9,r11
    80b2:	6196                	move.d r1,r9
    80b4:	4b3e                	move.b [r11+],r3
    80b6:	c93f                	move.b r3,[r9+]
    80b8:	69d6                	move.d r9,r13
    80ba:	6936                	move.d r9,r3
    80bc:	8133                	btstq 1,r3
    80be:	0ca0                	bge 80cc <_memmove+0x74>
    80c0:	0f05                	nop 
    80c2:	8222                	subq 2,r2
    80c4:	62c6                	move.d r2,r12
    80c6:	69d6                	move.d r9,r13
    80c8:	5b9e                	move.w [r11+],r9
    80ca:	dd9f                	move.w r9,[r13+]
    80cc:	cf2c 5700           	cmpu.b 0x57,r2
    80d0:	18d0                	ble 80ea <_memmove+0x92>
    80d2:	0f05                	nop 
    80d4:	ace2                	subq 44,sp
    80d6:	feab                	movem r10,[sp]
    80d8:	acc2                	subq 44,r12
    80da:	bbaf                	movem [r11+],r10
    80dc:	acc2                	subq 44,r12
    80de:	fba0                	bge 80da <_memmove+0x82>
    80e0:	fdaf                	movem r10,[r13+]
    80e2:	2cc2                	addq 44,r12
    80e4:	beaf                	movem [sp+],r10
    80e6:	6c26                	move.d r12,r2
    80e8:	6a16                	move.d r10,r1
    80ea:	cf22                	cmpq 15,r2
    80ec:	4ad0                	ble 8138 <_memmove+0xe0>
    80ee:	6b96                	move.d r11,r9
    80f0:	6d06                	move.d r13,r0
    80f2:	62a6                	move.d r2,r10
    80f4:	90a2                	subq 16,r10
    80f6:	6a26                	move.d r10,r2
    80f8:	e423                	lsrq 4,r2
    80fa:	6bc6                	move.d r11,r12
    80fc:	10c2                	addq 16,r12
    80fe:	6236                	move.d r2,r3
    8100:	c433                	lslq 4,r3
    8102:	23c6                	add.d r3,r12
    8104:	693a                	move.d [r9],r3
    8106:	e03b                	move.d r3,[r0]
    8108:	0491 633a           	move.d [r9+4],r3
    810c:	0401 e33b           	move.d r3,[r0+4]
    8110:	0891 633a           	move.d [r9+8],r3
    8114:	0801 e33b           	move.d r3,[r0+8]
    8118:	0c91 633a           	move.d [r9+12],r3
    811c:	0c01 e33b           	move.d r3,[r0+12]
    8120:	1092                	addq 16,r9
    8122:	ec96                	cmp.d r12,r9
    8124:	df20                	bne 8104 <_memmove+0xac>
    8126:	1002                	addq 16,r0
    8128:	6296                	move.d r2,r9
    812a:	0192                	addq 1,r9
    812c:	c493                	lslq 4,r9
    812e:	c423                	lslq 4,r2
    8130:	a2a6                	sub.d r2,r10
    8132:	6a26                	move.d r10,r2
    8134:	29d6                	add.d r9,r13
    8136:	29b6                	add.d r9,r11
    8138:	8122                	subq 1,r2
    813a:	cf2d 0f00           	bound.b 0xf,r2
    813e:	5f25 3ff8           	adds.w [pc+r2.w],pc
    8142:	7201                	case 1: -> 82b4 <_memmove+0x25c>
    8144:	6a01                	case 2: -> 82ac <_memmove+0x254>
    8146:	5801                	case 3: -> 829a <_memmove+0x242>
    8148:	5001                	case 4: -> 8292 <_memmove+0x23a>
    814a:	3e01                	case 5: -> 8280 <_memmove+0x228>
    814c:	2c01                	case 6: -> 826e <_memmove+0x216>
    814e:	1201                	case 7: -> 8254 <_memmove+0x1fc>
    8150:	0001                	case 8: -> 8242 <_memmove+0x1ea>
    8152:	e600                	case 9: -> 8228 <_memmove+0x1d0>
    8154:	cc00                	case 10: -> 820e <_memmove+0x1b6>
    8156:	aa00                	case 11: -> 81ec <_memmove+0x194>
    8158:	9000                	case 12: -> 81d2 <_memmove+0x17a>
    815a:	6e00                	case 13: -> 81b0 <_memmove+0x158>
    815c:	4c00                	case 14: -> 818e <_memmove+0x136>
    815e:	2400                	case 15: -> 8166 <_memmove+0x10e>
    8160:	52ff                	case 16/default: -> 8094 <_memmove+0x3c>
    8162:	59e0                	ba 80bc <_memmove+0x64>
    8164:	6196                	move.d r1,r9
    8166:	6b3a                	move.d [r11],r3
    8168:	ed3b                	move.d r3,[r13]
    816a:	04b1 699a           	move.d [r11+4],r9
    816e:	04d1 e99b           	move.d r9,[r13+4]
    8172:	08b1 633a           	move.d [r11+8],r3
    8176:	08d1 e33b           	move.d r3,[r13+8]
    817a:	0cb1 599a           	move.w [r11+12],r9
    817e:	0cd1 d99b           	move.w r9,[r13+12]
    8182:	0eb1 4bba           	move.b [r11+14],r11
    8186:	0ed1 cbbb           	move.b r11,[r13+14]
    818a:	0be0                	ba 8096 <_memmove+0x3e>
    818c:	61a6                	move.d r1,r10
    818e:	6b9a                	move.d [r11],r9
    8190:	ed9b                	move.d r9,[r13]
    8192:	04b1 633a           	move.d [r11+4],r3
    8196:	04d1 e33b           	move.d r3,[r13+4]
    819a:	08b1 699a           	move.d [r11+8],r9
    819e:	08d1 e99b           	move.d r9,[r13+8]
    81a2:	0cb1 5bba           	move.w [r11+12],r11
    81a6:	0cd1 dbbb           	move.w r11,[r13+12]
    81aa:	ffed e8fe           	ba 8096 <_memmove+0x3e>
    81ae:	61a6                	move.d r1,r10
    81b0:	6b3a                	move.d [r11],r3
    81b2:	ed3b                	move.d r3,[r13]
    81b4:	04b1 699a           	move.d [r11+4],r9
    81b8:	04d1 e99b           	move.d r9,[r13+4]
    81bc:	08b1 633a           	move.d [r11+8],r3
    81c0:	08d1 e33b           	move.d r3,[r13+8]
    81c4:	0cb1 4bba           	move.b [r11+12],r11
    81c8:	0cd1 cbbb           	move.b r11,[r13+12]
    81cc:	ffed c6fe           	ba 8096 <_memmove+0x3e>
    81d0:	61a6                	move.d r1,r10
    81d2:	6b3a                	move.d [r11],r3
    81d4:	ed3b                	move.d r3,[r13]
    81d6:	04b1 699a           	move.d [r11+4],r9
    81da:	04d1 e99b           	move.d r9,[r13+4]
    81de:	08b1 6bba           	move.d [r11+8],r11
    81e2:	08d1 ebbb           	move.d r11,[r13+8]
    81e6:	ffed acfe           	ba 8096 <_memmove+0x3e>
    81ea:	61a6                	move.d r1,r10
    81ec:	6b9a                	move.d [r11],r9
    81ee:	ed9b                	move.d r9,[r13]
    81f0:	04b1 633a           	move.d [r11+4],r3
    81f4:	04d1 e33b           	move.d r3,[r13+4]
    81f8:	08b1 599a           	move.w [r11+8],r9
    81fc:	08d1 d99b           	move.w r9,[r13+8]
    8200:	0ab1 4bba           	move.b [r11+10],r11
    8204:	0ad1 cbbb           	move.b r11,[r13+10]
    8208:	ffed 8afe           	ba 8096 <_memmove+0x3e>
    820c:	61a6                	move.d r1,r10
    820e:	6b9a                	move.d [r11],r9
    8210:	ed9b                	move.d r9,[r13]
    8212:	04b1 633a           	move.d [r11+4],r3
    8216:	04d1 e33b           	move.d r3,[r13+4]
    821a:	08b1 5bba           	move.w [r11+8],r11
    821e:	08d1 dbbb           	move.w r11,[r13+8]
    8222:	ffed 70fe           	ba 8096 <_memmove+0x3e>
    8226:	61a6                	move.d r1,r10
    8228:	6b9a                	move.d [r11],r9
    822a:	ed9b                	move.d r9,[r13]
    822c:	04b1 633a           	move.d [r11+4],r3
    8230:	04d1 e33b           	move.d r3,[r13+4]
    8234:	08b1 4bba           	move.b [r11+8],r11
    8238:	08d1 cbbb           	move.b r11,[r13+8]
    823c:	ffed 56fe           	ba 8096 <_memmove+0x3e>
    8240:	61a6                	move.d r1,r10
    8242:	6b3a                	move.d [r11],r3
    8244:	ed3b                	move.d r3,[r13]
    8246:	04b1 6bba           	move.d [r11+4],r11
    824a:	04d1 ebbb           	move.d r11,[r13+4]
    824e:	ffed 44fe           	ba 8096 <_memmove+0x3e>
    8252:	61a6                	move.d r1,r10
    8254:	6b3a                	move.d [r11],r3
    8256:	ed3b                	move.d r3,[r13]
    8258:	04b1 599a           	move.w [r11+4],r9
    825c:	04d1 d99b           	move.w r9,[r13+4]
    8260:	06b1 4bba           	move.b [r11+6],r11
    8264:	06d1 cbbb           	move.b r11,[r13+6]
    8268:	ffed 2afe           	ba 8096 <_memmove+0x3e>
    826c:	61a6                	move.d r1,r10
    826e:	6b9a                	move.d [r11],r9
    8270:	ed9b                	move.d r9,[r13]
    8272:	04b1 5bba           	move.w [r11+4],r11
    8276:	04d1 dbbb           	move.w r11,[r13+4]
    827a:	ffed 18fe           	ba 8096 <_memmove+0x3e>
    827e:	61a6                	move.d r1,r10
    8280:	6b3a                	move.d [r11],r3
    8282:	ed3b                	move.d r3,[r13]
    8284:	04b1 4bba           	move.b [r11+4],r11
    8288:	04d1 cbbb           	move.b r11,[r13+4]
    828c:	ffed 06fe           	ba 8096 <_memmove+0x3e>
    8290:	61a6                	move.d r1,r10
    8292:	6bba                	move.d [r11],r11
    8294:	ffed fcfd           	ba 8094 <_memmove+0x3c>
    8298:	edbb                	move.d r11,[r13]
    829a:	5b9a                	move.w [r11],r9
    829c:	dd9b                	move.w r9,[r13]
    829e:	02b1 4bba           	move.b [r11+2],r11
    82a2:	02d1 cbbb           	move.b r11,[r13+2]
    82a6:	ffed ecfd           	ba 8096 <_memmove+0x3e>
    82aa:	61a6                	move.d r1,r10
    82ac:	5bba                	move.w [r11],r11
    82ae:	ffed e2fd           	ba 8094 <_memmove+0x3c>
    82b2:	ddbb                	move.w r11,[r13]
    82b4:	4bba                	move.b [r11],r11
    82b6:	ffed dafd           	ba 8094 <_memmove+0x3c>
    82ba:	cdbb                	move.b r11,[r13]

000082bc <__read_r>:
    82bc:	84e2                	subq 4,sp
    82be:	7eba                	move srp,[sp]
    82c0:	84e2                	subq 4,sp
    82c2:	ee0b                	move.d r0,[sp]
    82c4:	6a06                	move.d r10,r0
    82c6:	7f0d 00b9 0000 708a 	clear.d [b900 <_errno>]
    82ce:	6ba6                	move.d r11,r10
    82d0:	6cb6                	move.d r12,r11
    82d2:	6dc6                	move.d r13,r12
    82d4:	3fbd aa14 0000      	jsr 14aa <__read>
    82da:	ffa2                	cmpq -1,r10
    82dc:	0630                	beq 82e4 <__read_r+0x28>
    82de:	0f05                	nop 
    82e0:	6e0e                	pop r0
    82e2:	3e0d                	jump [sp+]
    82e4:	6f9e 00b9 0000      	move.d b900 <_errno>,r9
    82ea:	699a                	move.d [r9],r9
    82ec:	f330                	beq 82e0 <__read_r+0x24>
    82ee:	0f05                	nop 
    82f0:	e09b                	move.d r9,[r0]
    82f2:	6e0e                	pop r0
    82f4:	3e0d                	jump [sp+]
	...

000082f8 <__realloc_r>:
    82f8:	84e2                	subq 4,sp
    82fa:	7eba                	move srp,[sp]
    82fc:	a4e2                	subq 36,sp
    82fe:	fe8b                	movem r8,[sp]
    8300:	6a56                	move.d r10,r5
    8302:	6b06                	move.d r11,r0
    8304:	ff3d ca01           	beq 84d2 <__realloc_r+0x1da>
    8308:	6c26                	move.d r12,r2
    830a:	3fbd 905d 0000      	jsr 5d90 <___malloc_lock>
    8310:	6066                	move.d r0,r6
    8312:	8862                	subq 8,r6
    8314:	fc01 699a           	move.d [r0-4],r9
    8318:	6936                	move.d r9,r3
    831a:	6216                	move.d r2,r1
    831c:	0b12                	addq 11,r1
    831e:	d612                	cmpq 22,r1
    8320:	ba90                	bhi 83dc <__realloc_r+0xe4>
    8322:	3c33                	andq -4,r3
    8324:	50d2                	moveq 16,r13
    8326:	6d16                	move.d r13,r1
    8328:	e126                	cmp.d r1,r2
    832a:	b690                	bhi 83e2 <__realloc_r+0xea>
    832c:	ed36                	cmp.d r13,r3
    832e:	bea0                	bge 83ee <__realloc_r+0xf6>
    8330:	6346                	move.d r3,r4
    8332:	66c6                	move.d r6,r12
    8334:	23c6                	add.d r3,r12
    8336:	6fae b8b4 0000      	move.d b4b8 <___malloc_av_+0x8>,r10
    833c:	6aaa                	move.d [r10],r10
    833e:	eca6                	cmp.d r12,r10
    8340:	ff3d 9e01           	beq 84e2 <__realloc_r+0x1ea>
    8344:	6146                	move.d r1,r4
    8346:	04c1 644a           	move.d [r12+4],r4
    834a:	64b6                	move.d r4,r11
    834c:	3eb3                	andq -2,r11
    834e:	2cb6                	add.d r12,r11
    8350:	04b1 6bba           	move.d [r11+4],r11
    8354:	80b3                	btstq 0,r11
    8356:	c4a0                	bge 841c <__realloc_r+0x124>
    8358:	64b6                	move.d r4,r11
    835a:	7b86                	clear.d r11
    835c:	7c86                	clear.d r12
    835e:	8093                	btstq 0,r9
    8360:	ffbd 0a01           	blt 846e <__realloc_r+0x176>
    8364:	0f05                	nop 
    8366:	f801 a76a           	sub.d [r0-8],r6,r7
    836a:	0471 688a           	move.d [r7+4],r8
    836e:	3c83                	andq -4,r8
    8370:	6cc6                	test.d r12
    8372:	f430                	beq 8468 <__realloc_r+0x170>
    8374:	2386                	add.d r3,r8
    8376:	6b46                	move.d r11,r4
    8378:	eac6                	cmp.d r10,r12
    837a:	ff3d 5002           	beq 85ce <__realloc_r+0x2d6>
    837e:	2846                	add.d r8,r4
    8380:	ed46                	cmp.d r13,r4
    8382:	e4b0                	blt 8468 <__realloc_r+0x170>
    8384:	0f05                	nop 
    8386:	0cc1 6dda           	move.d [r12+12],r13
    838a:	08c1 699a           	move.d [r12+8],r9
    838e:	0c91 eddb           	move.d r13,[r9+12]
    8392:	08d1 e99b           	move.d r9,[r13+8]
    8396:	0c71 6dda           	move.d [r7+12],r13
    839a:	0871 699a           	move.d [r7+8],r9
    839e:	0c91 eddb           	move.d r13,[r9+12]
    83a2:	08d1 e99b           	move.d r9,[r13+8]
    83a6:	6726                	move.d r7,r2
    83a8:	63c6                	move.d r3,r12
    83aa:	84c2                	subq 4,r12
    83ac:	cfcc 2400           	cmpu.b 0x24,r12
    83b0:	ff9d d602           	bhi 868a <__realloc_r+0x392>
    83b4:	0822                	addq 8,r2
    83b6:	d3c2                	cmpq 19,r12
    83b8:	ff8d b801           	bls 8574 <__realloc_r+0x27c>
    83bc:	6296                	move.d r2,r9
    83be:	609a                	move.d [r0],r9
    83c0:	0871 e99b           	move.d r9,[r7+8]
    83c4:	0401 6dda           	move.d [r0+4],r13
    83c8:	0c71 eddb           	move.d r13,[r7+12]
    83cc:	dbc2                	cmpq 27,r12
    83ce:	ff9d e602           	bhi 86b8 <__realloc_r+0x3c0>
    83d2:	6796                	move.d r7,r9
    83d4:	1092                	addq 16,r9
    83d6:	ffed 9a01           	ba 8574 <__realloc_r+0x27c>
    83da:	0802                	addq 8,r0
    83dc:	3813                	andq -8,r1
    83de:	49a0                	bge 8328 <__realloc_r+0x30>
    83e0:	61d6                	move.d r1,r13
    83e2:	4c92                	moveq 12,r9
    83e4:	e59b                	move.d r9,[r5]
    83e6:	7286                	clear.d r2
    83e8:	62a6                	move.d r2,r10
    83ea:	be8f                	movem [sp+],r8
    83ec:	3e0d                	jump [sp+]
    83ee:	64d6                	move.d r4,r13
    83f0:	a1d6                	sub.d r1,r13
    83f2:	cfd2                	cmpq 15,r13
    83f4:	4690                	bhi 843c <__realloc_r+0x144>
    83f6:	66b6                	move.d r6,r11
    83f8:	0193                	andq 1,r9
    83fa:	6497                	or.d r4,r9
    83fc:	0461 e99b           	move.d r9,[r6+4]
    8400:	2466                	add.d r4,r6
    8402:	0461 699a           	move.d [r6+4],r9
    8406:	4193                	orq 1,r9
    8408:	0461 e99b           	move.d r9,[r6+4]
    840c:	65a6                	move.d r5,r10
    840e:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    8414:	6026                	move.d r0,r2
    8416:	62a6                	move.d r2,r10
    8418:	be8f                	movem [sp+],r8
    841a:	3e0d                	jump [sp+]
    841c:	3cb3                	andq -4,r11
    841e:	6b46                	move.d r11,r4
    8420:	2346                	add.d r3,r4
    8422:	ed46                	cmp.d r13,r4
    8424:	39b0                	blt 835e <__realloc_r+0x66>
    8426:	0f05                	nop 
    8428:	0cc1 6bba           	move.d [r12+12],r11
    842c:	08c1 6dda           	move.d [r12+8],r13
    8430:	0cd1 ebbb           	move.d r11,[r13+12]
    8434:	08b1 eddb           	move.d r13,[r11+8]
    8438:	b7e0                	ba 83f0 <__realloc_r+0xf8>
    843a:	64d6                	move.d r4,r13
    843c:	21b6                	add.d r1,r11
    843e:	0193                	andq 1,r9
    8440:	6197                	or.d r1,r9
    8442:	0461 e99b           	move.d r9,[r6+4]
    8446:	6d96                	move.d r13,r9
    8448:	4193                	orq 1,r9
    844a:	04b1 e99b           	move.d r9,[r11+4]
    844e:	2bd6                	add.d r11,r13
    8450:	04d1 699a           	move.d [r13+4],r9
    8454:	4193                	orq 1,r9
    8456:	04d1 e99b           	move.d r9,[r13+4]
    845a:	65a6                	move.d r5,r10
    845c:	08b2                	addq 8,r11
    845e:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    8464:	a9e0                	ba 840e <__realloc_r+0x116>
    8466:	65a6                	move.d r5,r10
    8468:	ed86                	cmp.d r13,r8
    846a:	8ea0                	bge 84fa <__realloc_r+0x202>
    846c:	63c6                	move.d r3,r12
    846e:	65a6                	move.d r5,r10
    8470:	62b6                	move.d r2,r11
    8472:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    8478:	6aa6                	test.d r10
    847a:	4830                	beq 84c4 <__realloc_r+0x1cc>
    847c:	6a26                	move.d r10,r2
    847e:	fc01 699a           	move.d [r0-4],r9
    8482:	6ac6                	move.d r10,r12
    8484:	88c2                	subq 8,r12
    8486:	69d6                	move.d r9,r13
    8488:	3ed3                	andq -2,r13
    848a:	26d6                	add.d r6,r13
    848c:	edc6                	cmp.d r13,r12
    848e:	ff3d ec01           	beq 867e <__realloc_r+0x386>
    8492:	63c6                	move.d r3,r12
    8494:	84c2                	subq 4,r12
    8496:	cfcc 2400           	cmpu.b 0x24,r12
    849a:	ff9d 2201           	bhi 85c0 <__realloc_r+0x2c8>
    849e:	d3c2                	cmpq 19,r12
    84a0:	b890                	bhi 855a <__realloc_r+0x262>
    84a2:	6a96                	move.d r10,r9
    84a4:	60d6                	move.d r0,r13
    84a6:	6dca                	move.d [r13],r12
    84a8:	e9cb                	move.d r12,[r9]
    84aa:	04d1 6cca           	move.d [r13+4],r12
    84ae:	0491 eccb           	move.d r12,[r9+4]
    84b2:	08d1 6dda           	move.d [r13+8],r13
    84b6:	0891 eddb           	move.d r13,[r9+8]
    84ba:	65a6                	move.d r5,r10
    84bc:	60b6                	move.d r0,r11
    84be:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    84c4:	65a6                	move.d r5,r10
    84c6:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    84cc:	62a6                	move.d r2,r10
    84ce:	be8f                	movem [sp+],r8
    84d0:	3e0d                	jump [sp+]
    84d2:	6cb6                	move.d r12,r11
    84d4:	3fbd 5c54 0000      	jsr 545c <__malloc_r>
    84da:	6a26                	move.d r10,r2
    84dc:	62a6                	move.d r2,r10
    84de:	be8f                	movem [sp+],r8
    84e0:	3e0d                	jump [sp+]
    84e2:	04a1 6bba           	move.d [r10+4],r11
    84e6:	3cb3                	andq -4,r11
    84e8:	6bc6                	move.d r11,r12
    84ea:	23c6                	add.d r3,r12
    84ec:	1042                	addq 16,r4
    84ee:	e4c6                	cmp.d r4,r12
    84f0:	a2a0                	bge 8594 <__realloc_r+0x29c>
    84f2:	0f05                	nop 
    84f4:	ffed 66fe           	ba 835e <__realloc_r+0x66>
    84f8:	6ac6                	move.d r10,r12
    84fa:	0c71 6dda           	move.d [r7+12],r13
    84fe:	0871 699a           	move.d [r7+8],r9
    8502:	0c91 eddb           	move.d r13,[r9+12]
    8506:	08d1 e99b           	move.d r9,[r13+8]
    850a:	6726                	move.d r7,r2
    850c:	84c2                	subq 4,r12
    850e:	cfcc 2400           	cmpu.b 0x24,r12
    8512:	ff9d 8a01           	bhi 86a0 <__realloc_r+0x3a8>
    8516:	0822                	addq 8,r2
    8518:	d3c2                	cmpq 19,r12
    851a:	1c80                	bls 8538 <__realloc_r+0x240>
    851c:	6296                	move.d r2,r9
    851e:	60da                	move.d [r0],r13
    8520:	0871 eddb           	move.d r13,[r7+8]
    8524:	0401 699a           	move.d [r0+4],r9
    8528:	0c71 e99b           	move.d r9,[r7+12]
    852c:	dbc2                	cmpq 27,r12
    852e:	ff9d c401           	bhi 86f6 <__realloc_r+0x3fe>
    8532:	6796                	move.d r7,r9
    8534:	1092                	addq 16,r9
    8536:	0802                	addq 8,r0
    8538:	60ca                	move.d [r0],r12
    853a:	e9cb                	move.d r12,[r9]
    853c:	0401 6dda           	move.d [r0+4],r13
    8540:	0491 eddb           	move.d r13,[r9+4]
    8544:	0801 600a           	move.d [r0+8],r0
    8548:	0891 e00b           	move.d r0,[r9+8]
    854c:	0471 699a           	move.d [r7+4],r9
    8550:	6206                	move.d r2,r0
    8552:	6846                	move.d r8,r4
    8554:	ffed 96fe           	ba 83ee <__realloc_r+0xf6>
    8558:	6766                	move.d r7,r6
    855a:	609a                	move.d [r0],r9
    855c:	ea9b                	move.d r9,[r10]
    855e:	0401 6dda           	move.d [r0+4],r13
    8562:	04a1 eddb           	move.d r13,[r10+4]
    8566:	dbc2                	cmpq 27,r12
    8568:	f090                	bhi 865a <__realloc_r+0x362>
    856a:	6a96                	move.d r10,r9
    856c:	0892                	addq 8,r9
    856e:	60d6                	move.d r0,r13
    8570:	35e0                	ba 84a6 <__realloc_r+0x1ae>
    8572:	08d2                	addq 8,r13
    8574:	60da                	move.d [r0],r13
    8576:	e9db                	move.d r13,[r9]
    8578:	0401 6cca           	move.d [r0+4],r12
    857c:	0491 eccb           	move.d r12,[r9+4]
    8580:	0801 600a           	move.d [r0+8],r0
    8584:	0891 e00b           	move.d r0,[r9+8]
    8588:	0471 699a           	move.d [r7+4],r9
    858c:	6206                	move.d r2,r0
    858e:	ffed 5cfe           	ba 83ee <__realloc_r+0xf6>
    8592:	6766                	move.d r7,r6
    8594:	2166                	add.d r1,r6
    8596:	7f0d b8b4 0000 e66b 	move.d r6,[b4b8 <___malloc_av_+0x8>]
    859e:	a1c6                	sub.d r1,r12
    85a0:	41c3                	orq 1,r12
    85a2:	0461 eccb           	move.d r12,[r6+4]
    85a6:	fc01 699a           	move.d [r0-4],r9
    85aa:	0193                	andq 1,r9
    85ac:	6197                	or.d r1,r9
    85ae:	fc01 e99b           	move.d r9,[r0-4]
    85b2:	65a6                	move.d r5,r10
    85b4:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    85ba:	ffed 58fe           	ba 8416 <__realloc_r+0x11e>
    85be:	6026                	move.d r0,r2
    85c0:	60b6                	move.d r0,r11
    85c2:	3fbd 5880 0000      	jsr 8058 <_memmove>
    85c8:	ffed f0fe           	ba 84bc <__realloc_r+0x1c4>
    85cc:	65a6                	move.d r5,r10
    85ce:	6196                	move.d r1,r9
    85d0:	1092                	addq 16,r9
    85d2:	e946                	cmp.d r9,r4
    85d4:	ffbd 90fe           	blt 8468 <__realloc_r+0x170>
    85d8:	63c6                	move.d r3,r12
    85da:	0c71 6dda           	move.d [r7+12],r13
    85de:	0871 699a           	move.d [r7+8],r9
    85e2:	0c91 eddb           	move.d r13,[r9+12]
    85e6:	08d1 e99b           	move.d r9,[r13+8]
    85ea:	6726                	move.d r7,r2
    85ec:	84c2                	subq 4,r12
    85ee:	cfcc 2400           	cmpu.b 0x24,r12
    85f2:	ff9d 5601           	bhi 874c <__realloc_r+0x454>
    85f6:	0822                	addq 8,r2
    85f8:	d3c2                	cmpq 19,r12
    85fa:	1c80                	bls 8618 <__realloc_r+0x320>
    85fc:	6296                	move.d r2,r9
    85fe:	60da                	move.d [r0],r13
    8600:	0871 eddb           	move.d r13,[r7+8]
    8604:	0401 699a           	move.d [r0+4],r9
    8608:	0c71 e99b           	move.d r9,[r7+12]
    860c:	dbc2                	cmpq 27,r12
    860e:	ff9d 4a01           	bhi 875c <__realloc_r+0x464>
    8612:	6796                	move.d r7,r9
    8614:	1092                	addq 16,r9
    8616:	0802                	addq 8,r0
    8618:	60ca                	move.d [r0],r12
    861a:	e9cb                	move.d r12,[r9]
    861c:	0401 6dda           	move.d [r0+4],r13
    8620:	0491 eddb           	move.d r13,[r9+4]
    8624:	0801 600a           	move.d [r0+8],r0
    8628:	0891 e00b           	move.d r0,[r9+8]
    862c:	6796                	move.d r7,r9
    862e:	2196                	add.d r1,r9
    8630:	7f0d b8b4 0000 e99b 	move.d r9,[b4b8 <___malloc_av_+0x8>]
    8638:	a146                	sub.d r1,r4
    863a:	4143                	orq 1,r4
    863c:	0491 e44b           	move.d r4,[r9+4]
    8640:	0471 699a           	move.d [r7+4],r9
    8644:	0193                	andq 1,r9
    8646:	6197                	or.d r1,r9
    8648:	0471 e99b           	move.d r9,[r7+4]
    864c:	65a6                	move.d r5,r10
    864e:	3fbd 945d 0000      	jsr 5d94 <___malloc_unlock>
    8654:	ffed c0fd           	ba 8418 <__realloc_r+0x120>
    8658:	62a6                	move.d r2,r10
    865a:	0801 699a           	move.d [r0+8],r9
    865e:	08a1 e99b           	move.d r9,[r10+8]
    8662:	0c01 6dda           	move.d [r0+12],r13
    8666:	0ca1 eddb           	move.d r13,[r10+12]
    866a:	cfcc 2400           	cmpu.b 0x24,r12
    866e:	6a30                	beq 86da <__realloc_r+0x3e2>
    8670:	0f05                	nop 
    8672:	6a96                	move.d r10,r9
    8674:	1092                	addq 16,r9
    8676:	60d6                	move.d r0,r13
    8678:	ffed 2afe           	ba 84a6 <__realloc_r+0x1ae>
    867c:	10d2                	addq 16,r13
    867e:	fca1 644a           	move.d [r10-4],r4
    8682:	3c43                	andq -4,r4
    8684:	ffed 66fd           	ba 83ee <__realloc_r+0xf6>
    8688:	2346                	add.d r3,r4
    868a:	62a6                	move.d r2,r10
    868c:	60b6                	move.d r0,r11
    868e:	3fbd 5880 0000      	jsr 8058 <_memmove>
    8694:	0471 699a           	move.d [r7+4],r9
    8698:	6206                	move.d r2,r0
    869a:	ffed 50fd           	ba 83ee <__realloc_r+0xf6>
    869e:	6766                	move.d r7,r6
    86a0:	62a6                	move.d r2,r10
    86a2:	60b6                	move.d r0,r11
    86a4:	3fbd 5880 0000      	jsr 8058 <_memmove>
    86aa:	0471 699a           	move.d [r7+4],r9
    86ae:	6206                	move.d r2,r0
    86b0:	6846                	move.d r8,r4
    86b2:	ffed 38fd           	ba 83ee <__realloc_r+0xf6>
    86b6:	6766                	move.d r7,r6
    86b8:	0801 699a           	move.d [r0+8],r9
    86bc:	1071 e99b           	move.d r9,[r7+16]
    86c0:	0c01 6dda           	move.d [r0+12],r13
    86c4:	1471 eddb           	move.d r13,[r7+20]
    86c8:	cfcc 2400           	cmpu.b 0x24,r12
    86cc:	4a30                	beq 8718 <__realloc_r+0x420>
    86ce:	0f05                	nop 
    86d0:	6796                	move.d r7,r9
    86d2:	1892                	addq 24,r9
    86d4:	ffed 9cfe           	ba 8574 <__realloc_r+0x27c>
    86d8:	1002                	addq 16,r0
    86da:	1001 699a           	move.d [r0+16],r9
    86de:	10a1 e99b           	move.d r9,[r10+16]
    86e2:	1401 6cca           	move.d [r0+20],r12
    86e6:	14a1 eccb           	move.d r12,[r10+20]
    86ea:	6a96                	move.d r10,r9
    86ec:	1892                	addq 24,r9
    86ee:	60d6                	move.d r0,r13
    86f0:	ffed b2fd           	ba 84a6 <__realloc_r+0x1ae>
    86f4:	18d2                	addq 24,r13
    86f6:	0801 6dda           	move.d [r0+8],r13
    86fa:	1071 eddb           	move.d r13,[r7+16]
    86fe:	0c01 699a           	move.d [r0+12],r9
    8702:	1471 e99b           	move.d r9,[r7+20]
    8706:	cfcc 2400           	cmpu.b 0x24,r12
    870a:	2630                	beq 8732 <__realloc_r+0x43a>
    870c:	0f05                	nop 
    870e:	6796                	move.d r7,r9
    8710:	1892                	addq 24,r9
    8712:	ffed 22fe           	ba 8538 <__realloc_r+0x240>
    8716:	1002                	addq 16,r0
    8718:	1001 699a           	move.d [r0+16],r9
    871c:	1871 e99b           	move.d r9,[r7+24]
    8720:	1401 6cca           	move.d [r0+20],r12
    8724:	1c71 eccb           	move.d r12,[r7+28]
    8728:	6796                	move.d r7,r9
    872a:	2092                	addq 32,r9
    872c:	ffed 44fe           	ba 8574 <__realloc_r+0x27c>
    8730:	1802                	addq 24,r0
    8732:	1001 6cca           	move.d [r0+16],r12
    8736:	1871 eccb           	move.d r12,[r7+24]
    873a:	1401 6dda           	move.d [r0+20],r13
    873e:	1c71 eddb           	move.d r13,[r7+28]
    8742:	6796                	move.d r7,r9
    8744:	2092                	addq 32,r9
    8746:	ffed eefd           	ba 8538 <__realloc_r+0x240>
    874a:	1802                	addq 24,r0
    874c:	62a6                	move.d r2,r10
    874e:	60b6                	move.d r0,r11
    8750:	3fbd 5880 0000      	jsr 8058 <_memmove>
    8756:	ffed d4fe           	ba 862e <__realloc_r+0x336>
    875a:	6796                	move.d r7,r9
    875c:	0801 6dda           	move.d [r0+8],r13
    8760:	1071 eddb           	move.d r13,[r7+16]
    8764:	0c01 699a           	move.d [r0+12],r9
    8768:	1471 e99b           	move.d r9,[r7+20]
    876c:	cfcc 2400           	cmpu.b 0x24,r12
    8770:	0c30                	beq 877e <__realloc_r+0x486>
    8772:	0f05                	nop 
    8774:	6796                	move.d r7,r9
    8776:	1892                	addq 24,r9
    8778:	ffed 9cfe           	ba 8618 <__realloc_r+0x320>
    877c:	1002                	addq 16,r0
    877e:	1001 6cca           	move.d [r0+16],r12
    8782:	1871 eccb           	move.d r12,[r7+24]
    8786:	1401 6dda           	move.d [r0+20],r13
    878a:	1c71 eddb           	move.d r13,[r7+28]
    878e:	6796                	move.d r7,r9
    8790:	2092                	addq 32,r9
    8792:	ffed 82fe           	ba 8618 <__realloc_r+0x320>
    8796:	1802                	addq 24,r0

00008798 <_cleanup_glue>:
    8798:	84e2                	subq 4,sp
    879a:	7eba                	move srp,[sp]
    879c:	88e2                	subq 8,sp
    879e:	fe1b                	movem r1,[sp]
    87a0:	6b06                	move.d r11,r0
    87a2:	6bba                	move.d [r11],r11
    87a4:	0830                	beq 87ae <_cleanup_glue+0x16>
    87a6:	6a16                	move.d r10,r1
    87a8:	3fbd 9887 0000      	jsr 8798 <_cleanup_glue>
    87ae:	61a6                	move.d r1,r10
    87b0:	60b6                	move.d r0,r11
    87b2:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    87b8:	be1f                	movem [sp+],r1
    87ba:	3e0d                	jump [sp+]

000087bc <__reclaim_reent>:
    87bc:	84e2                	subq 4,sp
    87be:	7eba                	move srp,[sp]
    87c0:	90e2                	subq 16,sp
    87c2:	fe3b                	movem r3,[sp]
    87c4:	7f0d 08b0 0000 eaaa 	cmp.d [b008 <__impure_ptr>],r10
    87cc:	8630                	beq 8854 <__reclaim_reent+0x98>
    87ce:	6a16                	move.d r10,r1
    87d0:	49a1 6dda           	move.d [r10+73],r13
    87d4:	3230                	beq 8808 <__reclaim_reent+0x4c>
    87d6:	7986                	clear.d r9
    87d8:	7386                	clear.d r3
    87da:	6f2e 9a4f 0000      	move.d 4f9a <__free_r>,r2
    87e0:	6d95 6bba           	move.d [r13+r9.d],r11
    87e4:	1230                	beq 87f8 <__reclaim_reent+0x3c>
    87e6:	0f05                	nop 
    87e8:	6b0a                	move.d [r11],r0
    87ea:	61a6                	move.d r1,r10
    87ec:	b2b9                	jsr r2
    87ee:	6006                	test.d r0
    87f0:	f720                	bne 87e8 <__reclaim_reent+0x2c>
    87f2:	60b6                	move.d r0,r11
    87f4:	4911 6dda           	move.d [r1+73],r13
    87f8:	0132                	addq 1,r3
    87fa:	cf3c 2000           	cmpu.b 0x20,r3
    87fe:	e120                	bne 87e0 <__reclaim_reent+0x24>
    8800:	6396                	move.d r3,r9
    8802:	61a6                	move.d r1,r10
    8804:	6db6                	move.d r13,r11
    8806:	b2b9                	jsr r2
    8808:	3d11 6bba           	move.d [r1+61],r11
    880c:	0830                	beq 8816 <__reclaim_reent+0x5a>
    880e:	61a6                	move.d r1,r10
    8810:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    8816:	5f1d 4501 6bba      	move.d [r1+325],r11
    881c:	2030                	beq 883e <__reclaim_reent+0x82>
    881e:	0f05                	nop 
    8820:	6136                	move.d r1,r3
    8822:	1f3c 4901           	addu.w 0x149,r3
    8826:	e3b6                	cmp.d r3,r11
    8828:	1430                	beq 883e <__reclaim_reent+0x82>
    882a:	0f05                	nop 
    882c:	6f2e 9a4f 0000      	move.d 4f9a <__free_r>,r2
    8832:	6b0a                	move.d [r11],r0
    8834:	61a6                	move.d r1,r10
    8836:	b2b9                	jsr r2
    8838:	e036                	cmp.d r0,r3
    883a:	f720                	bne 8832 <__reclaim_reent+0x76>
    883c:	60b6                	move.d r0,r11
    883e:	5111 6bba           	move.d [r1+81],r11
    8842:	0830                	beq 884c <__reclaim_reent+0x90>
    8844:	61a6                	move.d r1,r10
    8846:	3fbd 9a4f 0000      	jsr 4f9a <__free_r>
    884c:	3511 a00b           	test.d [r1+53]
    8850:	0620                	bne 8858 <__reclaim_reent+0x9c>
    8852:	61a6                	move.d r1,r10
    8854:	be3f                	movem [sp+],r3
    8856:	3e0d                	jump [sp+]
    8858:	3911 30b9           	jsr [r1+57]
    885c:	5f1d dd02 6bba      	move.d [r1+733],r11
    8862:	f130                	beq 8854 <__reclaim_reent+0x98>
    8864:	61a6                	move.d r1,r10
    8866:	3fbd 9887 0000      	jsr 8798 <_cleanup_glue>
    886c:	be3f                	movem [sp+],r3
    886e:	3e0d                	jump [sp+]

00008870 <__wrapup_reent>:
    8870:	84e2                	subq 4,sp
    8872:	7eba                	move srp,[sp]
    8874:	90e2                	subq 16,sp
    8876:	fe3b                	movem r3,[sp]
    8878:	6aa6                	test.d r10
    887a:	3c30                	beq 88b8 <__wrapup_reent+0x48>
    887c:	6a36                	move.d r10,r3
    887e:	5f3d 4501 622a      	move.d [r3+325],r2
    8884:	2430                	beq 88aa <__wrapup_reent+0x3a>
    8886:	0f05                	nop 
    8888:	0421 611a           	move.d [r2+4],r1
    888c:	6106                	move.d r1,r0
    888e:	8102                	subq 1,r0
    8890:	1270                	bmi 88a4 <__wrapup_reent+0x34>
    8892:	6296                	move.d r2,r9
    8894:	0112                	addq 1,r1
    8896:	2915                	addi r1.d,r9
    8898:	6916                	move.d r9,r1
    889a:	31b9                	jsr [r1]
    889c:	8102                	subq 1,r0
    889e:	ff02                	cmpq -1,r0
    88a0:	f920                	bne 889a <__wrapup_reent+0x2a>
    88a2:	8412                	subq 4,r1
    88a4:	622a                	move.d [r2],r2
    88a6:	e120                	bne 8888 <__wrapup_reent+0x18>
    88a8:	0f05                	nop 
    88aa:	3931 699a           	move.d [r3+57],r9
    88ae:	0430                	beq 88b4 <__wrapup_reent+0x44>
    88b0:	63a6                	move.d r3,r10
    88b2:	b9b9                	jsr r9
    88b4:	be3f                	movem [sp+],r3
    88b6:	3e0d                	jump [sp+]
    88b8:	6f3e 08b0 0000      	move.d b008 <__impure_ptr>,r3
    88be:	bfe0                	ba 887e <__wrapup_reent+0xe>
    88c0:	633a                	move.d [r3],r3
	...

000088c4 <___swbuf_r>:
    88c4:	84e2                	subq 4,sp
    88c6:	7eba                	move srp,[sp]
    88c8:	8ce2                	subq 12,sp
    88ca:	fe2b                	movem r2,[sp]
    88cc:	6a16                	move.d r10,r1
    88ce:	6b26                	move.d r11,r2
    88d0:	6aa6                	test.d r10
    88d2:	0a30                	beq 88de <___swbuf_r+0x1a>
    88d4:	6c06                	move.d r12,r0
    88d6:	35a1 a00b           	test.d [r10+53]
    88da:	d830                	beq 89b4 <___swbuf_r+0xf0>
    88dc:	0f05                	nop 
    88de:	1801 699a           	move.d [r0+24],r9
    88e2:	0801 e99b           	move.d r9,[r0+8]
    88e6:	0c01 599a           	move.w [r0+12],r9
    88ea:	8393                	btstq 3,r9
    88ec:	aaa0                	bge 8998 <___swbuf_r+0xd4>
    88ee:	0f05                	nop 
    88f0:	1001 6dda           	move.d [r0+16],r13
    88f4:	a230                	beq 8998 <___swbuf_r+0xd4>
    88f6:	0f05                	nop 
    88f8:	8d93                	btstq 13,r9
    88fa:	3ca0                	bge 8938 <___swbuf_r+0x74>
    88fc:	4224                	movu.b r2,r2
    88fe:	609a                	move.d [r0],r9
    8900:	69c6                	move.d r9,r12
    8902:	adc6                	sub.d r13,r12
    8904:	1401 ecca           	cmp.d [r0+20],r12
    8908:	52a0                	bge 895c <___swbuf_r+0x98>
    890a:	01c2                	addq 1,r12
    890c:	0801 6dda           	move.d [r0+8],r13
    8910:	81d2                	subq 1,r13
    8912:	0801 eddb           	move.d r13,[r0+8]
    8916:	c92f                	move.b r2,[r9+]
    8918:	e09b                	move.d r9,[r0]
    891a:	1401 ecca           	cmp.d [r0+20],r12
    891e:	6630                	beq 8986 <___swbuf_r+0xc2>
    8920:	61a6                	move.d r1,r10
    8922:	0c01 599a           	move.w [r0+12],r9
    8926:	8093                	btstq 0,r9
    8928:	0aa0                	bge 8934 <___swbuf_r+0x70>
    892a:	62a6                	move.d r2,r10
    892c:	ca22                	cmpq 10,r2
    892e:	5430                	beq 8984 <___swbuf_r+0xc0>
    8930:	0f05                	nop 
    8932:	62a6                	move.d r2,r10
    8934:	be2f                	movem [sp+],r2
    8936:	3e0d                	jump [sp+]
    8938:	5f9f 0020           	or.w 0x2000,r9
    893c:	0c01 d99b           	move.w r9,[r0+12]
    8940:	6401 699a           	move.d [r0+100],r9
    8944:	2f9f ffdf ffff      	and.d 0xffffdfff,r9
    894a:	6401 e99b           	move.d r9,[r0+100]
    894e:	609a                	move.d [r0],r9
    8950:	69c6                	move.d r9,r12
    8952:	adc6                	sub.d r13,r12
    8954:	1401 ecca           	cmp.d [r0+20],r12
    8958:	b3b0                	blt 890c <___swbuf_r+0x48>
    895a:	01c2                	addq 1,r12
    895c:	61a6                	move.d r1,r10
    895e:	60b6                	move.d r0,r11
    8960:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    8966:	6aa6                	test.d r10
    8968:	2a20                	bne 8994 <___swbuf_r+0xd0>
    896a:	41c2                	moveq 1,r12
    896c:	609a                	move.d [r0],r9
    896e:	0801 6dda           	move.d [r0+8],r13
    8972:	81d2                	subq 1,r13
    8974:	0801 eddb           	move.d r13,[r0+8]
    8978:	c92f                	move.b r2,[r9+]
    897a:	e09b                	move.d r9,[r0]
    897c:	1401 ecca           	cmp.d [r0+20],r12
    8980:	a120                	bne 8922 <___swbuf_r+0x5e>
    8982:	0f05                	nop 
    8984:	61a6                	move.d r1,r10
    8986:	60b6                	move.d r0,r11
    8988:	3fbd 144c 0000      	jsr 4c14 <__fflush_r>
    898e:	6aa6                	test.d r10
    8990:	a130                	beq 8932 <___swbuf_r+0x6e>
    8992:	0f05                	nop 
    8994:	9de0                	ba 8932 <___swbuf_r+0x6e>
    8996:	7f22                	moveq -1,r2
    8998:	61a6                	move.d r1,r10
    899a:	60b6                	move.d r0,r11
    899c:	3fbd 6434 0000      	jsr 3464 <___swsetup_r>
    89a2:	6aa6                	test.d r10
    89a4:	ef20                	bne 8994 <___swbuf_r+0xd0>
    89a6:	0f05                	nop 
    89a8:	0c01 599a           	move.w [r0+12],r9
    89ac:	1001 6dda           	move.d [r0+16],r13
    89b0:	47e0                	ba 88f8 <___swbuf_r+0x34>
    89b2:	0f05                	nop 
    89b4:	3fbd 684d 0000      	jsr 4d68 <___sinit>
    89ba:	23e0                	ba 88de <___swbuf_r+0x1a>
    89bc:	0f05                	nop 

000089be <___swbuf>:
    89be:	84e2                	subq 4,sp
    89c0:	7eba                	move srp,[sp]
    89c2:	6a96                	move.d r10,r9
    89c4:	6bc6                	move.d r11,r12
    89c6:	6fae 08b0 0000      	move.d b008 <__impure_ptr>,r10
    89cc:	6aaa                	move.d [r10],r10
    89ce:	69b6                	move.d r9,r11
    89d0:	3fbd c488 0000      	jsr 88c4 <___swbuf_r>
    89d6:	3e0d                	jump [sp+]

000089d8 <__wcrtomb_r>:
    89d8:	84e2                	subq 4,sp
    89da:	7eba                	move srp,[sp]
    89dc:	9ee2                	subq 30,sp
    89de:	fe2b                	movem r2,[sp]
    89e0:	84e2                	subq 4,sp
    89e2:	6a06                	move.d r10,r0
    89e4:	6d16                	move.d r13,r1
    89e6:	6f2e b8b8 0000      	move.d b8b8 <___wctomb>,r2
    89ec:	6bb6                	test.d r11
    89ee:	3630                	beq 8a26 <__wcrtomb_r+0x4e>
    89f0:	622a                	move.d [r2],r2
    89f2:	14e1 ebbb           	move.d r11,[sp+20]
    89f6:	10e1 eccb           	move.d r12,[sp+16]
    89fa:	3fbd ec52 0000      	jsr 52ec <___locale_charset>
    8a00:	6ad6                	move.d r10,r13
    8a02:	ee1b                	move.d r1,[sp]
    8a04:	60a6                	move.d r0,r10
    8a06:	14e1 6bba           	move.d [sp+20],r11
    8a0a:	10e1 6cca           	move.d [sp+16],r12
    8a0e:	b2b9                	jsr r2
    8a10:	ffa2                	cmpq -1,r10
    8a12:	0a20                	bne 8a1e <__wcrtomb_r+0x46>
    8a14:	0f05                	nop 
    8a16:	718a                	clear.d [r1]
    8a18:	4f9c 5400           	movu.b 0x54,r9
    8a1c:	e09b                	move.d r9,[r0]
    8a1e:	04e2                	addq 4,sp
    8a20:	be2f                	movem [sp+],r2
    8a22:	12e2                	addq 18,sp
    8a24:	3e0d                	jump [sp+]
    8a26:	3fbd ec52 0000      	jsr 52ec <___locale_charset>
    8a2c:	6ad6                	move.d r10,r13
    8a2e:	ee1b                	move.d r1,[sp]
    8a30:	60a6                	move.d r0,r10
    8a32:	6eb6                	move.d sp,r11
    8a34:	18b2                	addq 24,r11
    8a36:	7c86                	clear.d r12
    8a38:	b2b9                	jsr r2
    8a3a:	d5e0                	ba 8a10 <__wcrtomb_r+0x38>
    8a3c:	0f05                	nop 

00008a3e <_wcrtomb>:
    8a3e:	84e2                	subq 4,sp
    8a40:	7eba                	move srp,[sp]
    8a42:	9ee2                	subq 30,sp
    8a44:	fe4b                	movem r4,[sp]
    8a46:	84e2                	subq 4,sp
    8a48:	6a06                	move.d r10,r0
    8a4a:	6b26                	move.d r11,r2
    8a4c:	6aa6                	test.d r10
    8a4e:	4230                	beq 8a92 <_wcrtomb+0x54>
    8a50:	6c16                	move.d r12,r1
    8a52:	6f3e b8b8 0000      	move.d b8b8 <___wctomb>,r3
    8a58:	633a                	move.d [r3],r3
    8a5a:	6f4e 08b0 0000      	move.d b008 <__impure_ptr>,r4
    8a60:	644a                	move.d [r4],r4
    8a62:	3fbd ec52 0000      	jsr 52ec <___locale_charset>
    8a68:	6ad6                	move.d r10,r13
    8a6a:	ee1b                	move.d r1,[sp]
    8a6c:	64a6                	move.d r4,r10
    8a6e:	60b6                	move.d r0,r11
    8a70:	62c6                	move.d r2,r12
    8a72:	b3b9                	jsr r3
    8a74:	ffa2                	cmpq -1,r10
    8a76:	1220                	bne 8a8a <_wcrtomb+0x4c>
    8a78:	0f05                	nop 
    8a7a:	718a                	clear.d [r1]
    8a7c:	6f9e 08b0 0000      	move.d b008 <__impure_ptr>,r9
    8a82:	699a                	move.d [r9],r9
    8a84:	4fdc 5400           	movu.b 0x54,r13
    8a88:	e9db                	move.d r13,[r9]
    8a8a:	04e2                	addq 4,sp
    8a8c:	be4f                	movem [sp+],r4
    8a8e:	0ae2                	addq 10,sp
    8a90:	3e0d                	jump [sp+]
    8a92:	6f0e b8b8 0000      	move.d b8b8 <___wctomb>,r0
    8a98:	600a                	move.d [r0],r0
    8a9a:	6f2e 08b0 0000      	move.d b008 <__impure_ptr>,r2
    8aa0:	622a                	move.d [r2],r2
    8aa2:	3fbd ec52 0000      	jsr 52ec <___locale_charset>
    8aa8:	6ad6                	move.d r10,r13
    8aaa:	ee1b                	move.d r1,[sp]
    8aac:	62a6                	move.d r2,r10
    8aae:	6eb6                	move.d sp,r11
    8ab0:	18b2                	addq 24,r11
    8ab2:	7c86                	clear.d r12
    8ab4:	b0b9                	jsr r0
    8ab6:	bde0                	ba 8a74 <_wcrtomb+0x36>
    8ab8:	0f05                	nop 
	...

00008abc <___ascii_wctomb>:
    8abc:	6bb6                	test.d r11
    8abe:	1030                	beq 8ad0 <___ascii_wctomb+0x14>
    8ac0:	0f05                	nop 
    8ac2:	cfcc ff00           	cmpu.b 0xff,r12
    8ac6:	0c90                	bhi 8ad4 <___ascii_wctomb+0x18>
    8ac8:	0f05                	nop 
    8aca:	cbcb                	move.b r12,[r11]
    8acc:	7fb6                	ret 
    8ace:	41a2                	moveq 1,r10
    8ad0:	7fb6                	ret 
    8ad2:	7a86                	clear.d r10
    8ad4:	4f9c 5400           	movu.b 0x54,r9
    8ad8:	ea9b                	move.d r9,[r10]
    8ada:	7fb6                	ret 
    8adc:	7fa2                	moveq -1,r10

00008ade <__wctomb_r>:
    8ade:	84e2                	subq 4,sp
    8ae0:	7eba                	move srp,[sp]
    8ae2:	94e2                	subq 20,sp
    8ae4:	fe2b                	movem r2,[sp]
    8ae6:	84e2                	subq 4,sp
    8ae8:	6a16                	move.d r10,r1
    8aea:	6d26                	move.d r13,r2
    8aec:	6f0e b8b8 0000      	move.d b8b8 <___wctomb>,r0
    8af2:	600a                	move.d [r0],r0
    8af4:	14e1 ebbb           	move.d r11,[sp+20]
    8af8:	10e1 eccb           	move.d r12,[sp+16]
    8afc:	3fbd ec52 0000      	jsr 52ec <___locale_charset>
    8b02:	6ad6                	move.d r10,r13
    8b04:	ee2b                	move.d r2,[sp]
    8b06:	61a6                	move.d r1,r10
    8b08:	14e1 6bba           	move.d [sp+20],r11
    8b0c:	10e1 6cca           	move.d [sp+16],r12
    8b10:	b0b9                	jsr r0
    8b12:	04e2                	addq 4,sp
    8b14:	be2f                	movem [sp+],r2
    8b16:	08e2                	addq 8,sp
    8b18:	3e0d                	jump [sp+]
	...

00008b1c <___udivdi3>:
    8b1c:	84e2                	subq 4,sp
    8b1e:	7eba                	move srp,[sp]
    8b20:	8fec 4800           	subu.b 0x48,sp
    8b24:	fe8b                	movem r8,[sp]
    8b26:	6a16                	move.d r10,r1
    8b28:	6b06                	move.d r11,r0
    8b2a:	6c46                	move.d r12,r4
    8b2c:	6a56                	move.d r10,r5
    8b2e:	6dd6                	test.d r13
    8b30:	da20                	bne 8c0c <___udivdi3+0xf0>
    8b32:	6b66                	move.d r11,r6
    8b34:	ebc6                	cmp.d r11,r12
    8b36:	ff8d 2401           	bls 8c5e <___udivdi3+0x142>
    8b3a:	0f05                	nop 
    8b3c:	dfcc ffff           	cmpu.w 0xffff,r12
    8b40:	ff9d 0e02           	bhi 8d52 <___udivdi3+0x236>
    8b44:	0f05                	nop 
    8b46:	cfcc ff00           	cmpu.b 0xff,r12
    8b4a:	ff9d 2e04           	bhi 8f7c <___udivdi3+0x460>
    8b4e:	4892                	moveq 8,r9
    8b50:	7986                	clear.d r9
    8b52:	6ca6                	move.d r12,r10
    8b54:	e9a7                	lsr.d r9,r10
    8b56:	6fad bcad 0000 0dd8 	addu.b [r10+adbc <___clz_tab>],r13
    8b5e:	4f9c 2000           	movu.b 0x20,r9
    8b62:	ad96                	sub.d r13,r9
    8b64:	1230                	beq 8b78 <___udivdi3+0x5c>
    8b66:	61b6                	move.d r1,r11
    8b68:	6c46                	move.d r12,r4
    8b6a:	e944                	lsl.d r9,r4
    8b6c:	6066                	move.d r0,r6
    8b6e:	e964                	lsl.d r9,r6
    8b70:	edb7                	lsr.d r13,r11
    8b72:	6b67                	or.d r11,r6
    8b74:	6156                	move.d r1,r5
    8b76:	e954                	lsl.d r9,r5
    8b78:	6416                	move.d r4,r1
    8b7a:	f013                	lsrq 16,r1
    8b7c:	5474                	movu.w r4,r7
    8b7e:	6f3e 80a3 0000      	move.d a380 <___Umod>,r3
    8b84:	66a6                	move.d r6,r10
    8b86:	61b6                	move.d r1,r11
    8b88:	b3b9                	jsr r3
    8b8a:	6a86                	move.d r10,r8
    8b8c:	6f2e 04a1 0000      	move.d a104 <___Udiv>,r2
    8b92:	66a6                	move.d r6,r10
    8b94:	61b6                	move.d r1,r11
    8b96:	b2b9                	jsr r2
    8b98:	6a66                	move.d r10,r6
    8b9a:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    8ba0:	67b6                	move.d r7,r11
    8ba2:	b0b9                	jsr r0
    8ba4:	d083                	lslq 16,r8
    8ba6:	6596                	move.d r5,r9
    8ba8:	f093                	lsrq 16,r9
    8baa:	6987                	or.d r9,r8
    8bac:	e8a6                	cmp.d r8,r10
    8bae:	1480                	bls 8bc4 <___udivdi3+0xa8>
    8bb0:	6696                	move.d r6,r9
    8bb2:	2486                	add.d r4,r8
    8bb4:	e846                	cmp.d r8,r4
    8bb6:	0a90                	bhi 8bc2 <___udivdi3+0xa6>
    8bb8:	8192                	subq 1,r9
    8bba:	e8a6                	cmp.d r8,r10
    8bbc:	ff9d f403           	bhi 8fb4 <___udivdi3+0x498>
    8bc0:	8262                	subq 2,r6
    8bc2:	6966                	move.d r9,r6
    8bc4:	aa86                	sub.d r10,r8
    8bc6:	68a6                	move.d r8,r10
    8bc8:	61b6                	move.d r1,r11
    8bca:	b3b9                	jsr r3
    8bcc:	6a36                	move.d r10,r3
    8bce:	68a6                	move.d r8,r10
    8bd0:	61b6                	move.d r1,r11
    8bd2:	b2b9                	jsr r2
    8bd4:	6a16                	move.d r10,r1
    8bd6:	67b6                	move.d r7,r11
    8bd8:	b0b9                	jsr r0
    8bda:	6396                	move.d r3,r9
    8bdc:	d093                	lslq 16,r9
    8bde:	5554                	movu.w r5,r5
    8be0:	6597                	or.d r5,r9
    8be2:	e9a6                	cmp.d r9,r10
    8be4:	1680                	bls 8bfc <___udivdi3+0xe0>
    8be6:	2496                	add.d r4,r9
    8be8:	61d6                	move.d r1,r13
    8bea:	e946                	cmp.d r9,r4
    8bec:	ff9d 4c03           	bhi 8f3c <___udivdi3+0x420>
    8bf0:	81d2                	subq 1,r13
    8bf2:	e9a6                	cmp.d r9,r10
    8bf4:	ff8d 4403           	bls 8f3c <___udivdi3+0x420>
    8bf8:	0f05                	nop 
    8bfa:	8212                	subq 2,r1
    8bfc:	d063                	lslq 16,r6
    8bfe:	61a6                	move.d r1,r10
    8c00:	66a7                	or.d r6,r10
    8c02:	7786                	clear.d r7
    8c04:	67b6                	move.d r7,r11
    8c06:	be8f                	movem [sp+],r8
    8c08:	24e2                	addq 36,sp
    8c0a:	3e0d                	jump [sp+]
    8c0c:	ebd6                	cmp.d r11,r13
    8c0e:	4490                	bhi 8c54 <___udivdi3+0x138>
    8c10:	7786                	clear.d r7
    8c12:	dfdc ffff           	cmpu.w 0xffff,r13
    8c16:	ff8d 2601           	bls 8d40 <___udivdi3+0x224>
    8c1a:	0f05                	nop 
    8c1c:	efde ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r13
    8c22:	ff9d 3a03           	bhi 8f60 <___udivdi3+0x444>
    8c26:	5892                	moveq 24,r9
    8c28:	5092                	moveq 16,r9
    8c2a:	69b6                	move.d r9,r11
    8c2c:	6da6                	move.d r13,r10
    8c2e:	e9a7                	lsr.d r9,r10
    8c30:	6fad bcad 0000 0bb8 	addu.b [r10+adbc <___clz_tab>],r11
    8c38:	4f4c 2000           	movu.b 0x20,r4
    8c3c:	ab46                	sub.d r11,r4
    8c3e:	ff2d 3e01           	bne 8d80 <___udivdi3+0x264>
    8c42:	6066                	move.d r0,r6
    8c44:	e0d6                	cmp.d r0,r13
    8c46:	ff1d 2c01           	blo 8d76 <___udivdi3+0x25a>
    8c4a:	7786                	clear.d r7
    8c4c:	e1c6                	cmp.d r1,r12
    8c4e:	ff8d 2401           	bls 8d76 <___udivdi3+0x25a>
    8c52:	0f05                	nop 
    8c54:	7a86                	clear.d r10
    8c56:	67b6                	move.d r7,r11
    8c58:	be8f                	movem [sp+],r8
    8c5a:	24e2                	addq 36,sp
    8c5c:	3e0d                	jump [sp+]
    8c5e:	6f2e 04a1 0000      	move.d a104 <___Udiv>,r2
    8c64:	6cc6                	test.d r12
    8c66:	0820                	bne 8c70 <___udivdi3+0x154>
    8c68:	41a2                	moveq 1,r10
    8c6a:	7b86                	clear.d r11
    8c6c:	b2b9                	jsr r2
    8c6e:	6a46                	move.d r10,r4
    8c70:	df4c ffff           	cmpu.w 0xffff,r4
    8c74:	f080                	bls 8d66 <___udivdi3+0x24a>
    8c76:	0f05                	nop 
    8c78:	ef4e ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r4
    8c7e:	ff9d ec02           	bhi 8f6e <___udivdi3+0x452>
    8c82:	5892                	moveq 24,r9
    8c84:	5092                	moveq 16,r9
    8c86:	69c6                	move.d r9,r12
    8c88:	64d6                	move.d r4,r13
    8c8a:	e9d7                	lsr.d r9,r13
    8c8c:	6fdd bcad 0000 0cc8 	addu.b [r13+adbc <___clz_tab>],r12
    8c94:	4fdc 2000           	movu.b 0x20,r13
    8c98:	acd6                	sub.d r12,r13
    8c9a:	ff2d f201           	bne 8e90 <___udivdi3+0x374>
    8c9e:	6066                	move.d r0,r6
    8ca0:	6086                	move.d r0,r8
    8ca2:	a486                	sub.d r4,r8
    8ca4:	6416                	move.d r4,r1
    8ca6:	f013                	lsrq 16,r1
    8ca8:	5494                	movu.w r4,r9
    8caa:	28e1 e99b           	move.d r9,[sp+40]
    8cae:	4172                	moveq 1,r7
    8cb0:	6f3e 80a3 0000      	move.d a380 <___Umod>,r3
    8cb6:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    8cbc:	68a6                	move.d r8,r10
    8cbe:	61b6                	move.d r1,r11
    8cc0:	b3b9                	jsr r3
    8cc2:	2ce1 eaab           	move.d r10,[sp+44]
    8cc6:	68a6                	move.d r8,r10
    8cc8:	61b6                	move.d r1,r11
    8cca:	b2b9                	jsr r2
    8ccc:	6a66                	move.d r10,r6
    8cce:	28e1 6bba           	move.d [sp+40],r11
    8cd2:	b0b9                	jsr r0
    8cd4:	2ce1 688a           	move.d [sp+44],r8
    8cd8:	d083                	lslq 16,r8
    8cda:	6596                	move.d r5,r9
    8cdc:	f093                	lsrq 16,r9
    8cde:	6987                	or.d r9,r8
    8ce0:	e8a6                	cmp.d r8,r10
    8ce2:	1480                	bls 8cf8 <___udivdi3+0x1dc>
    8ce4:	6696                	move.d r6,r9
    8ce6:	2486                	add.d r4,r8
    8ce8:	e846                	cmp.d r8,r4
    8cea:	0a90                	bhi 8cf6 <___udivdi3+0x1da>
    8cec:	8192                	subq 1,r9
    8cee:	e8a6                	cmp.d r8,r10
    8cf0:	ff9d ba02           	bhi 8fae <___udivdi3+0x492>
    8cf4:	8262                	subq 2,r6
    8cf6:	6966                	move.d r9,r6
    8cf8:	aa86                	sub.d r10,r8
    8cfa:	68a6                	move.d r8,r10
    8cfc:	61b6                	move.d r1,r11
    8cfe:	b3b9                	jsr r3
    8d00:	6a36                	move.d r10,r3
    8d02:	68a6                	move.d r8,r10
    8d04:	61b6                	move.d r1,r11
    8d06:	b2b9                	jsr r2
    8d08:	6a16                	move.d r10,r1
    8d0a:	28e1 6bba           	move.d [sp+40],r11
    8d0e:	b0b9                	jsr r0
    8d10:	6396                	move.d r3,r9
    8d12:	d093                	lslq 16,r9
    8d14:	5554                	movu.w r5,r5
    8d16:	6597                	or.d r5,r9
    8d18:	e9a6                	cmp.d r9,r10
    8d1a:	1680                	bls 8d32 <___udivdi3+0x216>
    8d1c:	2496                	add.d r4,r9
    8d1e:	61c6                	move.d r1,r12
    8d20:	e946                	cmp.d r9,r4
    8d22:	ff9d 1c02           	bhi 8f42 <___udivdi3+0x426>
    8d26:	81c2                	subq 1,r12
    8d28:	e9a6                	cmp.d r9,r10
    8d2a:	ff8d 1402           	bls 8f42 <___udivdi3+0x426>
    8d2e:	0f05                	nop 
    8d30:	8212                	subq 2,r1
    8d32:	d063                	lslq 16,r6
    8d34:	61a6                	move.d r1,r10
    8d36:	66a7                	or.d r6,r10
    8d38:	67b6                	move.d r7,r11
    8d3a:	be8f                	movem [sp+],r8
    8d3c:	24e2                	addq 36,sp
    8d3e:	3e0d                	jump [sp+]
    8d40:	cfdc ff00           	cmpu.b 0xff,r13
    8d44:	ff9d 1e02           	bhi 8f66 <___udivdi3+0x44a>
    8d48:	0f05                	nop 
    8d4a:	7986                	clear.d r9
    8d4c:	ffed dcfe           	ba 8c2c <___udivdi3+0x110>
    8d50:	7b86                	clear.d r11
    8d52:	efce ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r12
    8d58:	ff9d 1802           	bhi 8f74 <___udivdi3+0x458>
    8d5c:	0f05                	nop 
    8d5e:	5092                	moveq 16,r9
    8d60:	ffed eefd           	ba 8b52 <___udivdi3+0x36>
    8d64:	69d6                	move.d r9,r13
    8d66:	cf4c ff00           	cmpu.b 0xff,r4
    8d6a:	ff9d 1402           	bhi 8f82 <___udivdi3+0x466>
    8d6e:	0f05                	nop 
    8d70:	7986                	clear.d r9
    8d72:	15e0                	ba 8c88 <___udivdi3+0x16c>
    8d74:	7c86                	clear.d r12
    8d76:	41a2                	moveq 1,r10
    8d78:	67b6                	move.d r7,r11
    8d7a:	be8f                	movem [sp+],r8
    8d7c:	24e2                	addq 36,sp
    8d7e:	3e0d                	jump [sp+]
    8d80:	6d76                	move.d r13,r7
    8d82:	e474                	lsl.d r4,r7
    8d84:	6c96                	move.d r12,r9
    8d86:	eb97                	lsr.d r11,r9
    8d88:	6977                	or.d r9,r7
    8d8a:	e4c4                	lsl.d r4,r12
    8d8c:	28e1 eccb           	move.d r12,[sp+40]
    8d90:	eb67                	lsr.d r11,r6
    8d92:	6096                	move.d r0,r9
    8d94:	e494                	lsl.d r4,r9
    8d96:	61c6                	move.d r1,r12
    8d98:	ebc7                	lsr.d r11,r12
    8d9a:	6c97                	or.d r12,r9
    8d9c:	6756                	move.d r7,r5
    8d9e:	f053                	lsrq 16,r5
    8da0:	57c4                	movu.w r7,r12
    8da2:	2ce1 eccb           	move.d r12,[sp+44]
    8da6:	6f3e 80a3 0000      	move.d a380 <___Umod>,r3
    8dac:	66a6                	move.d r6,r10
    8dae:	65b6                	move.d r5,r11
    8db0:	24e1 e99b           	move.d r9,[sp+36]
    8db4:	b3b9                	jsr r3
    8db6:	6a86                	move.d r10,r8
    8db8:	6f2e 04a1 0000      	move.d a104 <___Udiv>,r2
    8dbe:	66a6                	move.d r6,r10
    8dc0:	65b6                	move.d r5,r11
    8dc2:	b2b9                	jsr r2
    8dc4:	6a66                	move.d r10,r6
    8dc6:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    8dcc:	2ce1 6bba           	move.d [sp+44],r11
    8dd0:	b0b9                	jsr r0
    8dd2:	d083                	lslq 16,r8
    8dd4:	24e1 699a           	move.d [sp+36],r9
    8dd8:	69c6                	move.d r9,r12
    8dda:	f0c3                	lsrq 16,r12
    8ddc:	6c87                	or.d r12,r8
    8dde:	e8a6                	cmp.d r8,r10
    8de0:	0e80                	bls 8df0 <___udivdi3+0x2d4>
    8de2:	66c6                	move.d r6,r12
    8de4:	2786                	add.d r7,r8
    8de6:	e876                	cmp.d r8,r7
    8de8:	ff8d ac01           	bls 8f98 <___udivdi3+0x47c>
    8dec:	81c2                	subq 1,r12
    8dee:	6c66                	move.d r12,r6
    8df0:	aa86                	sub.d r10,r8
    8df2:	68a6                	move.d r8,r10
    8df4:	65b6                	move.d r5,r11
    8df6:	24e1 e99b           	move.d r9,[sp+36]
    8dfa:	b3b9                	jsr r3
    8dfc:	6a36                	move.d r10,r3
    8dfe:	68a6                	move.d r8,r10
    8e00:	65b6                	move.d r5,r11
    8e02:	b2b9                	jsr r2
    8e04:	6a26                	move.d r10,r2
    8e06:	2ce1 6bba           	move.d [sp+44],r11
    8e0a:	b0b9                	jsr r0
    8e0c:	d033                	lslq 16,r3
    8e0e:	24e1 5998           	movu.w [sp+36],r9
    8e12:	3f93                	andq -1,r9
    8e14:	6937                	or.d r9,r3
    8e16:	e3a6                	cmp.d r3,r10
    8e18:	0e80                	bls 8e28 <___udivdi3+0x30c>
    8e1a:	6296                	move.d r2,r9
    8e1c:	2736                	add.d r7,r3
    8e1e:	e376                	cmp.d r3,r7
    8e20:	ff8d 6601           	bls 8f8a <___udivdi3+0x46e>
    8e24:	8192                	subq 1,r9
    8e26:	6926                	move.d r9,r2
    8e28:	aa36                	sub.d r10,r3
    8e2a:	d063                	lslq 16,r6
    8e2c:	6267                	or.d r2,r6
    8e2e:	5684                	movu.w r6,r8
    8e30:	6676                	move.d r6,r7
    8e32:	f073                	lsrq 16,r7
    8e34:	28e1 5558           	movu.w [sp+40],r5
    8e38:	28e1 622a           	move.d [sp+40],r2
    8e3c:	f023                	lsrq 16,r2
    8e3e:	68a6                	move.d r8,r10
    8e40:	65b6                	move.d r5,r11
    8e42:	b0b9                	jsr r0
    8e44:	28e1 eaab           	move.d r10,[sp+40]
    8e48:	68a6                	move.d r8,r10
    8e4a:	62b6                	move.d r2,r11
    8e4c:	b0b9                	jsr r0
    8e4e:	2ce1 eaab           	move.d r10,[sp+44]
    8e52:	67a6                	move.d r7,r10
    8e54:	65b6                	move.d r5,r11
    8e56:	b0b9                	jsr r0
    8e58:	6a86                	move.d r10,r8
    8e5a:	67a6                	move.d r7,r10
    8e5c:	62b6                	move.d r2,r11
    8e5e:	b0b9                	jsr r0
    8e60:	2ce1 298a           	add.d [sp+44],r8,r9
    8e64:	28e1 6cca           	move.d [sp+40],r12
    8e68:	f0c3                	lsrq 16,r12
    8e6a:	2c96                	add.d r12,r9
    8e6c:	e986                	cmp.d r9,r8
    8e6e:	0880                	bls 8e78 <___udivdi3+0x35c>
    8e70:	69d6                	move.d r9,r13
    8e72:	2fae 0000 0100      	add.d 10000 <__end+0x2f0>,r10
    8e78:	f0d3                	lsrq 16,r13
    8e7a:	2ad6                	add.d r10,r13
    8e7c:	ed36                	cmp.d r13,r3
    8e7e:	d810                	bcs 8f58 <___udivdi3+0x43c>
    8e80:	66a6                	move.d r6,r10
    8e82:	ed36                	cmp.d r13,r3
    8e84:	c230                	beq 8f48 <___udivdi3+0x42c>
    8e86:	0f05                	nop 
    8e88:	66a6                	move.d r6,r10
    8e8a:	ffed c8fd           	ba 8c56 <___udivdi3+0x13a>
    8e8e:	7786                	clear.d r7
    8e90:	ed44                	lsl.d r13,r4
    8e92:	ec67                	lsr.d r12,r6
    8e94:	6076                	move.d r0,r7
    8e96:	ed74                	lsl.d r13,r7
    8e98:	61a6                	move.d r1,r10
    8e9a:	eca7                	lsr.d r12,r10
    8e9c:	6a77                	or.d r10,r7
    8e9e:	6156                	move.d r1,r5
    8ea0:	ed54                	lsl.d r13,r5
    8ea2:	6416                	move.d r4,r1
    8ea4:	f013                	lsrq 16,r1
    8ea6:	54c4                	movu.w r4,r12
    8ea8:	28e1 eccb           	move.d r12,[sp+40]
    8eac:	6f3e 80a3 0000      	move.d a380 <___Umod>,r3
    8eb2:	66a6                	move.d r6,r10
    8eb4:	61b6                	move.d r1,r11
    8eb6:	b3b9                	jsr r3
    8eb8:	6a86                	move.d r10,r8
    8eba:	66a6                	move.d r6,r10
    8ebc:	61b6                	move.d r1,r11
    8ebe:	b2b9                	jsr r2
    8ec0:	6a66                	move.d r10,r6
    8ec2:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    8ec8:	28e1 6bba           	move.d [sp+40],r11
    8ecc:	b0b9                	jsr r0
    8ece:	d083                	lslq 16,r8
    8ed0:	67d6                	move.d r7,r13
    8ed2:	f0d3                	lsrq 16,r13
    8ed4:	6d87                	or.d r13,r8
    8ed6:	e8a6                	cmp.d r8,r10
    8ed8:	1480                	bls 8eee <___udivdi3+0x3d2>
    8eda:	66d6                	move.d r6,r13
    8edc:	2486                	add.d r4,r8
    8ede:	e846                	cmp.d r8,r4
    8ee0:	c890                	bhi 8faa <___udivdi3+0x48e>
    8ee2:	81d2                	subq 1,r13
    8ee4:	e8a6                	cmp.d r8,r10
    8ee6:	c280                	bls 8faa <___udivdi3+0x48e>
    8ee8:	0f05                	nop 
    8eea:	8262                	subq 2,r6
    8eec:	2486                	add.d r4,r8
    8eee:	aa86                	sub.d r10,r8
    8ef0:	68a6                	move.d r8,r10
    8ef2:	61b6                	move.d r1,r11
    8ef4:	b3b9                	jsr r3
    8ef6:	2ce1 eaab           	move.d r10,[sp+44]
    8efa:	68a6                	move.d r8,r10
    8efc:	61b6                	move.d r1,r11
    8efe:	b2b9                	jsr r2
    8f00:	28e1 6bba           	move.d [sp+40],r11
    8f04:	24e1 eaab           	move.d r10,[sp+36]
    8f08:	b0b9                	jsr r0
    8f0a:	2ce1 688a           	move.d [sp+44],r8
    8f0e:	d083                	lslq 16,r8
    8f10:	5794                	movu.w r7,r9
    8f12:	6987                	or.d r9,r8
    8f14:	24e1 6dda           	move.d [sp+36],r13
    8f18:	e8a6                	cmp.d r8,r10
    8f1a:	1480                	bls 8f30 <___udivdi3+0x414>
    8f1c:	6d96                	move.d r13,r9
    8f1e:	2486                	add.d r4,r8
    8f20:	e846                	cmp.d r8,r4
    8f22:	8290                	bhi 8fa6 <___udivdi3+0x48a>
    8f24:	8192                	subq 1,r9
    8f26:	e8a6                	cmp.d r8,r10
    8f28:	7c80                	bls 8fa6 <___udivdi3+0x48a>
    8f2a:	0f05                	nop 
    8f2c:	82d2                	subq 2,r13
    8f2e:	2486                	add.d r4,r8
    8f30:	aa86                	sub.d r10,r8
    8f32:	d063                	lslq 16,r6
    8f34:	6d76                	move.d r13,r7
    8f36:	ffed 82fd           	ba 8cbc <___udivdi3+0x1a0>
    8f3a:	6677                	or.d r6,r7
    8f3c:	ffed bcfc           	ba 8bfc <___udivdi3+0xe0>
    8f40:	6d16                	move.d r13,r1
    8f42:	ffed ecfd           	ba 8d32 <___udivdi3+0x216>
    8f46:	6c16                	move.d r12,r1
    8f48:	e414                	lsl.d r4,r1
    8f4a:	d093                	lslq 16,r9
    8f4c:	28e1 1998           	addu.w [sp+40],r9
    8f50:	e916                	cmp.d r9,r1
    8f52:	3500                	bcc 8e88 <___udivdi3+0x36c>
    8f54:	0f05                	nop 
    8f56:	66a6                	move.d r6,r10
    8f58:	81a2                	subq 1,r10
    8f5a:	ffed f8fc           	ba 8c56 <___udivdi3+0x13a>
    8f5e:	7786                	clear.d r7
    8f60:	ffed c8fc           	ba 8c2c <___udivdi3+0x110>
    8f64:	69b6                	move.d r9,r11
    8f66:	4892                	moveq 8,r9
    8f68:	ffed c0fc           	ba 8c2c <___udivdi3+0x110>
    8f6c:	69b6                	move.d r9,r11
    8f6e:	ffed 16fd           	ba 8c88 <___udivdi3+0x16c>
    8f72:	69c6                	move.d r9,r12
    8f74:	5892                	moveq 24,r9
    8f76:	ffed d8fb           	ba 8b52 <___udivdi3+0x36>
    8f7a:	69d6                	move.d r9,r13
    8f7c:	ffed d2fb           	ba 8b52 <___udivdi3+0x36>
    8f80:	69d6                	move.d r9,r13
    8f82:	4892                	moveq 8,r9
    8f84:	ffed 00fd           	ba 8c88 <___udivdi3+0x16c>
    8f88:	69c6                	move.d r9,r12
    8f8a:	e3a6                	cmp.d r3,r10
    8f8c:	ff8d 96fe           	bls 8e26 <___udivdi3+0x30a>
    8f90:	8222                	subq 2,r2
    8f92:	ffed 92fe           	ba 8e28 <___udivdi3+0x30c>
    8f96:	2736                	add.d r7,r3
    8f98:	e8a6                	cmp.d r8,r10
    8f9a:	ff8d 50fe           	bls 8dee <___udivdi3+0x2d2>
    8f9e:	8262                	subq 2,r6
    8fa0:	ffed 4cfe           	ba 8df0 <___udivdi3+0x2d4>
    8fa4:	2786                	add.d r7,r8
    8fa6:	89e0                	ba 8f30 <___udivdi3+0x414>
    8fa8:	69d6                	move.d r9,r13
    8faa:	43e0                	ba 8eee <___udivdi3+0x3d2>
    8fac:	6d66                	move.d r13,r6
    8fae:	ffed 46fd           	ba 8cf8 <___udivdi3+0x1dc>
    8fb2:	2486                	add.d r4,r8
    8fb4:	ffed 0cfc           	ba 8bc4 <___udivdi3+0xa8>
    8fb8:	2486                	add.d r4,r8
	...

00008fbc <___umoddi3>:
    8fbc:	84e2                	subq 4,sp
    8fbe:	7eba                	move srp,[sp]
    8fc0:	8fec 5000           	subu.b 0x50,sp
    8fc4:	fe8b                	movem r8,[sp]
    8fc6:	6a56                	move.d r10,r5
    8fc8:	6b26                	move.d r11,r2
    8fca:	6c86                	move.d r12,r8
    8fcc:	6a36                	move.d r10,r3
    8fce:	6dd6                	test.d r13
    8fd0:	ce20                	bne 90a0 <___umoddi3+0xe4>
    8fd2:	6b06                	move.d r11,r0
    8fd4:	ebc6                	cmp.d r11,r12
    8fd6:	ff8d 1a01           	bls 90f4 <___umoddi3+0x138>
    8fda:	0f05                	nop 
    8fdc:	dfcc ffff           	cmpu.w 0xffff,r12
    8fe0:	ff9d c201           	bhi 91a6 <___umoddi3+0x1ea>
    8fe4:	0f05                	nop 
    8fe6:	cfcc ff00           	cmpu.b 0xff,r12
    8fea:	ff9d cc03           	bhi 93ba <___umoddi3+0x3fe>
    8fee:	4892                	moveq 8,r9
    8ff0:	7986                	clear.d r9
    8ff2:	7b86                	clear.d r11
    8ff4:	6cd6                	move.d r12,r13
    8ff6:	e9d7                	lsr.d r9,r13
    8ff8:	6fdd bcad 0000 09b8 	addu.b [r13+adbc <___clz_tab>],r11,r9
    9000:	4f4c 2000           	movu.b 0x20,r4
    9004:	a946                	sub.d r9,r4
    9006:	ff3d 7a03           	beq 9384 <___umoddi3+0x3c8>
    900a:	65b6                	move.d r5,r11
    900c:	6c86                	move.d r12,r8
    900e:	e484                	lsl.d r4,r8
    9010:	6206                	move.d r2,r0
    9012:	e404                	lsl.d r4,r0
    9014:	e9b7                	lsr.d r9,r11
    9016:	6b07                	or.d r11,r0
    9018:	6536                	move.d r5,r3
    901a:	e434                	lsl.d r4,r3
    901c:	6866                	move.d r8,r6
    901e:	f063                	lsrq 16,r6
    9020:	5874                	movu.w r8,r7
    9022:	6f2e 80a3 0000      	move.d a380 <___Umod>,r2
    9028:	60a6                	move.d r0,r10
    902a:	66b6                	move.d r6,r11
    902c:	b2b9                	jsr r2
    902e:	6a56                	move.d r10,r5
    9030:	6f1e 04a1 0000      	move.d a104 <___Udiv>,r1
    9036:	60a6                	move.d r0,r10
    9038:	66b6                	move.d r6,r11
    903a:	b1b9                	jsr r1
    903c:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    9042:	67b6                	move.d r7,r11
    9044:	b0b9                	jsr r0
    9046:	d053                	lslq 16,r5
    9048:	6396                	move.d r3,r9
    904a:	f093                	lsrq 16,r9
    904c:	6957                	or.d r9,r5
    904e:	e5a6                	cmp.d r5,r10
    9050:	1080                	bls 9062 <___umoddi3+0xa6>
    9052:	0f05                	nop 
    9054:	2856                	add.d r8,r5
    9056:	e586                	cmp.d r5,r8
    9058:	0890                	bhi 9062 <___umoddi3+0xa6>
    905a:	e5a6                	cmp.d r5,r10
    905c:	ff9d 8c03           	bhi 93ec <___umoddi3+0x430>
    9060:	0f05                	nop 
    9062:	aa56                	sub.d r10,r5
    9064:	65a6                	move.d r5,r10
    9066:	66b6                	move.d r6,r11
    9068:	b2b9                	jsr r2
    906a:	6a26                	move.d r10,r2
    906c:	65a6                	move.d r5,r10
    906e:	66b6                	move.d r6,r11
    9070:	b1b9                	jsr r1
    9072:	67b6                	move.d r7,r11
    9074:	b0b9                	jsr r0
    9076:	6256                	move.d r2,r5
    9078:	d053                	lslq 16,r5
    907a:	5334                	movu.w r3,r3
    907c:	6357                	or.d r3,r5
    907e:	e5a6                	cmp.d r5,r10
    9080:	1080                	bls 9092 <___umoddi3+0xd6>
    9082:	0f05                	nop 
    9084:	2856                	add.d r8,r5
    9086:	e586                	cmp.d r5,r8
    9088:	0890                	bhi 9092 <___umoddi3+0xd6>
    908a:	e5a6                	cmp.d r5,r10
    908c:	0480                	bls 9092 <___umoddi3+0xd6>
    908e:	0f05                	nop 
    9090:	2856                	add.d r8,r5
    9092:	aa56                	sub.d r10,r5
    9094:	65a6                	move.d r5,r10
    9096:	e4a7                	lsr.d r4,r10
    9098:	7b86                	clear.d r11
    909a:	be8f                	movem [sp+],r8
    909c:	2ce2                	addq 44,sp
    909e:	3e0d                	jump [sp+]
    90a0:	ebd6                	cmp.d r11,r13
    90a2:	f790                	bhi 909a <___umoddi3+0xde>
    90a4:	0f05                	nop 
    90a6:	dfdc ffff           	cmpu.w 0xffff,r13
    90aa:	da80                	bls 9186 <___umoddi3+0x1ca>
    90ac:	0f05                	nop 
    90ae:	efde ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r13
    90b4:	ff9d ec02           	bhi 93a4 <___umoddi3+0x3e8>
    90b8:	5892                	moveq 24,r9
    90ba:	5092                	moveq 16,r9
    90bc:	6946                	move.d r9,r4
    90be:	6db6                	move.d r13,r11
    90c0:	e9b7                	lsr.d r9,r11
    90c2:	6fbd bcad 0000 0448 	addu.b [r11+adbc <___clz_tab>],r4
    90ca:	4f3c 2000           	movu.b 0x20,r3
    90ce:	a436                	sub.d r4,r3
    90d0:	e820                	bne 91ba <___umoddi3+0x1fe>
    90d2:	6d76                	move.d r13,r7
    90d4:	e2d6                	cmp.d r2,r13
    90d6:	0810                	bcs 90e0 <___umoddi3+0x124>
    90d8:	65a6                	move.d r5,r10
    90da:	e5c6                	cmp.d r5,r12
    90dc:	0e90                	bhi 90ec <___umoddi3+0x130>
    90de:	0f05                	nop 
    90e0:	aca6                	sub.d r12,r10
    90e2:	6206                	move.d r2,r0
    90e4:	ad06                	sub.d r13,r0
    90e6:	ea56                	cmp.d r10,r5
    90e8:	3915                	scs r9
    90ea:	a906                	sub.d r9,r0
    90ec:	60b6                	move.d r0,r11
    90ee:	be8f                	movem [sp+],r8
    90f0:	2ce2                	addq 44,sp
    90f2:	3e0d                	jump [sp+]
    90f4:	6f1e 04a1 0000      	move.d a104 <___Udiv>,r1
    90fa:	6cc6                	test.d r12
    90fc:	0820                	bne 9106 <___umoddi3+0x14a>
    90fe:	41a2                	moveq 1,r10
    9100:	7b86                	clear.d r11
    9102:	b1b9                	jsr r1
    9104:	6a86                	move.d r10,r8
    9106:	df8c ffff           	cmpu.w 0xffff,r8
    910a:	8a80                	bls 9196 <___umoddi3+0x1da>
    910c:	0f05                	nop 
    910e:	ef8e ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r8
    9114:	ff9d a802           	bhi 93c0 <___umoddi3+0x404>
    9118:	5892                	moveq 24,r9
    911a:	5092                	moveq 16,r9
    911c:	69d6                	move.d r9,r13
    911e:	68c6                	move.d r8,r12
    9120:	e9c7                	lsr.d r9,r12
    9122:	6fcd bcad 0000 0dd8 	addu.b [r12+adbc <___clz_tab>],r13
    912a:	4f4c 2000           	movu.b 0x20,r4
    912e:	ad46                	sub.d r13,r4
    9130:	ff2d b601           	bne 92ea <___umoddi3+0x32e>
    9134:	6206                	move.d r2,r0
    9136:	6256                	move.d r2,r5
    9138:	a856                	sub.d r8,r5
    913a:	6866                	move.d r8,r6
    913c:	f063                	lsrq 16,r6
    913e:	5874                	movu.w r8,r7
    9140:	6f2e 80a3 0000      	move.d a380 <___Umod>,r2
    9146:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    914c:	65a6                	move.d r5,r10
    914e:	66b6                	move.d r6,r11
    9150:	b2b9                	jsr r2
    9152:	28e1 eaab           	move.d r10,[sp+40]
    9156:	65a6                	move.d r5,r10
    9158:	66b6                	move.d r6,r11
    915a:	b1b9                	jsr r1
    915c:	67b6                	move.d r7,r11
    915e:	b0b9                	jsr r0
    9160:	28e1 699a           	move.d [sp+40],r9
    9164:	d093                	lslq 16,r9
    9166:	63d6                	move.d r3,r13
    9168:	f0d3                	lsrq 16,r13
    916a:	6d97                	or.d r13,r9
    916c:	e9a6                	cmp.d r9,r10
    916e:	1080                	bls 9180 <___umoddi3+0x1c4>
    9170:	0f05                	nop 
    9172:	2896                	add.d r8,r9
    9174:	e986                	cmp.d r9,r8
    9176:	0890                	bhi 9180 <___umoddi3+0x1c4>
    9178:	e9a6                	cmp.d r9,r10
    917a:	0480                	bls 9180 <___umoddi3+0x1c4>
    917c:	0f05                	nop 
    917e:	2896                	add.d r8,r9
    9180:	ffed defe           	ba 9062 <___umoddi3+0xa6>
    9184:	6956                	move.d r9,r5
    9186:	cfdc ff00           	cmpu.b 0xff,r13
    918a:	ff9d 0e02           	bhi 939c <___umoddi3+0x3e0>
    918e:	0f05                	nop 
    9190:	7986                	clear.d r9
    9192:	2be0                	ba 90be <___umoddi3+0x102>
    9194:	7486                	clear.d r4
    9196:	cf8c ff00           	cmpu.b 0xff,r8
    919a:	ff9d 1402           	bhi 93b2 <___umoddi3+0x3f6>
    919e:	0f05                	nop 
    91a0:	7986                	clear.d r9
    91a2:	7be0                	ba 911e <___umoddi3+0x162>
    91a4:	7d86                	clear.d r13
    91a6:	efce ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r12
    91ac:	ff9d fa01           	bhi 93aa <___umoddi3+0x3ee>
    91b0:	0f05                	nop 
    91b2:	5092                	moveq 16,r9
    91b4:	ffed 3cfe           	ba 8ff4 <___umoddi3+0x38>
    91b8:	69b6                	move.d r9,r11
    91ba:	e374                	lsl.d r3,r7
    91bc:	6c96                	move.d r12,r9
    91be:	e497                	lsr.d r4,r9
    91c0:	6977                	or.d r9,r7
    91c2:	e3c4                	lsl.d r3,r12
    91c4:	28e1 eccb           	move.d r12,[sp+40]
    91c8:	6206                	move.d r2,r0
    91ca:	e407                	lsr.d r4,r0
    91cc:	6266                	move.d r2,r6
    91ce:	e364                	lsl.d r3,r6
    91d0:	65c6                	move.d r5,r12
    91d2:	e4c7                	lsr.d r4,r12
    91d4:	6c67                	or.d r12,r6
    91d6:	e354                	lsl.d r3,r5
    91d8:	2ce1 e55b           	move.d r5,[sp+44]
    91dc:	6756                	move.d r7,r5
    91de:	f053                	lsrq 16,r5
    91e0:	57c4                	movu.w r7,r12
    91e2:	34e1 eccb           	move.d r12,[sp+52]
    91e6:	6f2e 80a3 0000      	move.d a380 <___Umod>,r2
    91ec:	60a6                	move.d r0,r10
    91ee:	65b6                	move.d r5,r11
    91f0:	b2b9                	jsr r2
    91f2:	6a86                	move.d r10,r8
    91f4:	6f1e 04a1 0000      	move.d a104 <___Udiv>,r1
    91fa:	60a6                	move.d r0,r10
    91fc:	65b6                	move.d r5,r11
    91fe:	b1b9                	jsr r1
    9200:	30e1 eaab           	move.d r10,[sp+48]
    9204:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    920a:	34e1 6bba           	move.d [sp+52],r11
    920e:	b0b9                	jsr r0
    9210:	d083                	lslq 16,r8
    9212:	66c6                	move.d r6,r12
    9214:	f0c3                	lsrq 16,r12
    9216:	6c87                	or.d r12,r8
    9218:	e8a6                	cmp.d r8,r10
    921a:	1480                	bls 9230 <___umoddi3+0x274>
    921c:	0f05                	nop 
    921e:	30e1 6cca           	move.d [sp+48],r12
    9222:	2786                	add.d r7,r8
    9224:	e876                	cmp.d r8,r7
    9226:	ff8d aa01           	bls 93d4 <___umoddi3+0x418>
    922a:	81c2                	subq 1,r12
    922c:	30e1 eccb           	move.d r12,[sp+48]
    9230:	aa86                	sub.d r10,r8
    9232:	68a6                	move.d r8,r10
    9234:	65b6                	move.d r5,r11
    9236:	b2b9                	jsr r2
    9238:	6a26                	move.d r10,r2
    923a:	68a6                	move.d r8,r10
    923c:	65b6                	move.d r5,r11
    923e:	b1b9                	jsr r1
    9240:	6a16                	move.d r10,r1
    9242:	34e1 6bba           	move.d [sp+52],r11
    9246:	b0b9                	jsr r0
    9248:	d023                	lslq 16,r2
    924a:	5694                	movu.w r6,r9
    924c:	6927                	or.d r9,r2
    924e:	e2a6                	cmp.d r2,r10
    9250:	0e80                	bls 9260 <___umoddi3+0x2a4>
    9252:	6196                	move.d r1,r9
    9254:	2726                	add.d r7,r2
    9256:	e276                	cmp.d r2,r7
    9258:	ff8d 6a01           	bls 93c6 <___umoddi3+0x40a>
    925c:	8192                	subq 1,r9
    925e:	6916                	move.d r9,r1
    9260:	aa26                	sub.d r10,r2
    9262:	30e1 666a           	move.d [sp+48],r6
    9266:	d063                	lslq 16,r6
    9268:	6617                	or.d r6,r1
    926a:	5164                	movu.w r1,r6
    926c:	f013                	lsrq 16,r1
    926e:	28e1 5888           	movu.w [sp+40],r8
    9272:	28e1 655a           	move.d [sp+40],r5
    9276:	f053                	lsrq 16,r5
    9278:	66a6                	move.d r6,r10
    927a:	68b6                	move.d r8,r11
    927c:	b0b9                	jsr r0
    927e:	6ad6                	move.d r10,r13
    9280:	66a6                	move.d r6,r10
    9282:	65b6                	move.d r5,r11
    9284:	24e1 eddb           	move.d r13,[sp+36]
    9288:	b0b9                	jsr r0
    928a:	6a66                	move.d r10,r6
    928c:	61a6                	move.d r1,r10
    928e:	68b6                	move.d r8,r11
    9290:	b0b9                	jsr r0
    9292:	6a86                	move.d r10,r8
    9294:	61a6                	move.d r1,r10
    9296:	65b6                	move.d r5,r11
    9298:	b0b9                	jsr r0
    929a:	2866                	add.d r8,r6
    929c:	24e1 6dda           	move.d [sp+36],r13
    92a0:	6d96                	move.d r13,r9
    92a2:	f093                	lsrq 16,r9
    92a4:	2966                	add.d r9,r6
    92a6:	e686                	cmp.d r6,r8
    92a8:	0880                	bls 92b2 <___umoddi3+0x2f6>
    92aa:	66b6                	move.d r6,r11
    92ac:	2fae 0000 0100      	add.d 10000 <__end+0x2f0>,r10
    92b2:	f0b3                	lsrq 16,r11
    92b4:	2ab6                	add.d r10,r11
    92b6:	d063                	lslq 16,r6
    92b8:	eb26                	cmp.d r11,r2
    92ba:	ce10                	bcs 938a <___umoddi3+0x3ce>
    92bc:	1d64                	addu.w r13,r6
    92be:	eb26                	cmp.d r11,r2
    92c0:	ff3d 2e01           	beq 93f2 <___umoddi3+0x436>
    92c4:	6696                	move.d r6,r9
    92c6:	ab26                	sub.d r11,r2
    92c8:	62b6                	move.d r2,r11
    92ca:	2ce1 6cca           	move.d [sp+44],r12
    92ce:	a9c6                	sub.d r9,r12
    92d0:	6c96                	move.d r12,r9
    92d2:	2ce1 ecca           	cmp.d [sp+44],r12
    92d6:	3c95                	shi r12
    92d8:	acb6                	sub.d r12,r11
    92da:	6ba6                	move.d r11,r10
    92dc:	e4a4                	lsl.d r4,r10
    92de:	e397                	lsr.d r3,r9
    92e0:	69a7                	or.d r9,r10
    92e2:	e3b7                	lsr.d r3,r11
    92e4:	be8f                	movem [sp+],r8
    92e6:	2ce2                	addq 44,sp
    92e8:	3e0d                	jump [sp+]
    92ea:	e484                	lsl.d r4,r8
    92ec:	ed07                	lsr.d r13,r0
    92ee:	6296                	move.d r2,r9
    92f0:	e494                	lsl.d r4,r9
    92f2:	65b6                	move.d r5,r11
    92f4:	edb7                	lsr.d r13,r11
    92f6:	6b97                	or.d r11,r9
    92f8:	6536                	move.d r5,r3
    92fa:	6866                	move.d r8,r6
    92fc:	f063                	lsrq 16,r6
    92fe:	5874                	movu.w r8,r7
    9300:	6f2e 80a3 0000      	move.d a380 <___Umod>,r2
    9306:	60a6                	move.d r0,r10
    9308:	66b6                	move.d r6,r11
    930a:	24e1 e99b           	move.d r9,[sp+36]
    930e:	b2b9                	jsr r2
    9310:	6a56                	move.d r10,r5
    9312:	60a6                	move.d r0,r10
    9314:	66b6                	move.d r6,r11
    9316:	b1b9                	jsr r1
    9318:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    931e:	67b6                	move.d r7,r11
    9320:	b0b9                	jsr r0
    9322:	d053                	lslq 16,r5
    9324:	24e1 699a           	move.d [sp+36],r9
    9328:	69d6                	move.d r9,r13
    932a:	f0d3                	lsrq 16,r13
    932c:	6d57                	or.d r13,r5
    932e:	e5a6                	cmp.d r5,r10
    9330:	1080                	bls 9342 <___umoddi3+0x386>
    9332:	e434                	lsl.d r4,r3
    9334:	2856                	add.d r8,r5
    9336:	e586                	cmp.d r5,r8
    9338:	0890                	bhi 9342 <___umoddi3+0x386>
    933a:	e5a6                	cmp.d r5,r10
    933c:	0480                	bls 9342 <___umoddi3+0x386>
    933e:	0f05                	nop 
    9340:	2856                	add.d r8,r5
    9342:	aa56                	sub.d r10,r5
    9344:	65a6                	move.d r5,r10
    9346:	66b6                	move.d r6,r11
    9348:	24e1 e99b           	move.d r9,[sp+36]
    934c:	b2b9                	jsr r2
    934e:	28e1 eaab           	move.d r10,[sp+40]
    9352:	65a6                	move.d r5,r10
    9354:	66b6                	move.d r6,r11
    9356:	b1b9                	jsr r1
    9358:	67b6                	move.d r7,r11
    935a:	b0b9                	jsr r0
    935c:	28e1 655a           	move.d [sp+40],r5
    9360:	d053                	lslq 16,r5
    9362:	24e1 5998           	movu.w [sp+36],r9
    9366:	3f93                	andq -1,r9
    9368:	6957                	or.d r9,r5
    936a:	e5a6                	cmp.d r5,r10
    936c:	1080                	bls 937e <___umoddi3+0x3c2>
    936e:	0f05                	nop 
    9370:	2856                	add.d r8,r5
    9372:	e586                	cmp.d r5,r8
    9374:	0890                	bhi 937e <___umoddi3+0x3c2>
    9376:	e5a6                	cmp.d r5,r10
    9378:	0480                	bls 937e <___umoddi3+0x3c2>
    937a:	0f05                	nop 
    937c:	2856                	add.d r8,r5
    937e:	ffed cafd           	ba 914c <___umoddi3+0x190>
    9382:	aa56                	sub.d r10,r5
    9384:	ffed 94fc           	ba 901c <___umoddi3+0x60>
    9388:	7486                	clear.d r4
    938a:	28e1 a96a           	sub.d [sp+40],r6,r9
    938e:	a7b6                	sub.d r7,r11
    9390:	e966                	cmp.d r9,r6
    9392:	3d15                	scs r13
    9394:	adb6                	sub.d r13,r11
    9396:	ab26                	sub.d r11,r2
    9398:	31e0                	ba 92ca <___umoddi3+0x30e>
    939a:	62b6                	move.d r2,r11
    939c:	4892                	moveq 8,r9
    939e:	ffed 1cfd           	ba 90be <___umoddi3+0x102>
    93a2:	6946                	move.d r9,r4
    93a4:	ffed 16fd           	ba 90be <___umoddi3+0x102>
    93a8:	6946                	move.d r9,r4
    93aa:	5892                	moveq 24,r9
    93ac:	ffed 44fc           	ba 8ff4 <___umoddi3+0x38>
    93b0:	69b6                	move.d r9,r11
    93b2:	4892                	moveq 8,r9
    93b4:	ffed 66fd           	ba 911e <___umoddi3+0x162>
    93b8:	69d6                	move.d r9,r13
    93ba:	ffed 36fc           	ba 8ff4 <___umoddi3+0x38>
    93be:	69b6                	move.d r9,r11
    93c0:	ffed 5afd           	ba 911e <___umoddi3+0x162>
    93c4:	69d6                	move.d r9,r13
    93c6:	e2a6                	cmp.d r2,r10
    93c8:	ff8d 92fe           	bls 925e <___umoddi3+0x2a2>
    93cc:	8212                	subq 2,r1
    93ce:	ffed 8efe           	ba 9260 <___umoddi3+0x2a4>
    93d2:	2726                	add.d r7,r2
    93d4:	e8a6                	cmp.d r8,r10
    93d6:	ff8d 52fe           	bls 922c <___umoddi3+0x270>
    93da:	0f05                	nop 
    93dc:	30e1 6dda           	move.d [sp+48],r13
    93e0:	82d2                	subq 2,r13
    93e2:	30e1 eddb           	move.d r13,[sp+48]
    93e6:	ffed 46fe           	ba 9230 <___umoddi3+0x274>
    93ea:	2786                	add.d r7,r8
    93ec:	ffed 72fc           	ba 9062 <___umoddi3+0xa6>
    93f0:	2856                	add.d r8,r5
    93f2:	2ce1 e66a           	cmp.d [sp+44],r6
    93f6:	9390                	bhi 938a <___umoddi3+0x3ce>
    93f8:	0f05                	nop 
    93fa:	6696                	move.d r6,r9
    93fc:	ffed cafe           	ba 92ca <___umoddi3+0x30e>
    9400:	7b86                	clear.d r11
	...

00009404 <__fpadd_parts>:
    9404:	8fec 4c00           	subu.b 0x4c,sp
    9408:	fe8b                	movem r8,[sp]
    940a:	6ada                	move.d [r10],r13
    940c:	c1d2                	cmpq 1,r13
    940e:	ff8d 7801           	bls 958a <__fpadd_parts+0x186>
    9412:	0f05                	nop 
    9414:	6b2a                	move.d [r11],r2
    9416:	c122                	cmpq 1,r2
    9418:	ff8d 3602           	bls 9652 <__fpadd_parts+0x24e>
    941c:	c4d2                	cmpq 4,r13
    941e:	ff3d dc02           	beq 96fe <__fpadd_parts+0x2fa>
    9422:	c422                	cmpq 4,r2
    9424:	ff3d 2a02           	beq 9652 <__fpadd_parts+0x24e>
    9428:	c222                	cmpq 2,r2
    942a:	ff3d aa01           	beq 95d8 <__fpadd_parts+0x1d4>
    942e:	c2d2                	cmpq 2,r13
    9430:	ff3d 1e02           	beq 9652 <__fpadd_parts+0x24e>
    9434:	0f05                	nop 
    9436:	08a1 6dda           	move.d [r10+8],r13
    943a:	08b1 655a           	move.d [r11+8],r5
    943e:	0ca1 622a           	move.d [r10+12],r2
    9442:	10a1 633a           	move.d [r10+16],r3
    9446:	2ce1 e22b           	move.d r2,[sp+44]
    944a:	30e1 e33b           	move.d r3,[sp+48]
    944e:	0cb1 622a           	move.d [r11+12],r2
    9452:	10b1 633a           	move.d [r11+16],r3
    9456:	6d66                	move.d r13,r6
    9458:	a566                	sub.d r5,r6
    945a:	b646                	abs r6,r4
    945c:	cf4c 3f00           	cmpu.b 0x3f,r4
    9460:	ffcd 2c01           	bgt 9590 <__fpadd_parts+0x18c>
    9464:	e5d6                	cmp.d r5,r13
    9466:	6666                	test.d r6
    9468:	ffdd ee01           	ble 965a <__fpadd_parts+0x256>
    946c:	6456                	move.d r4,r5
    946e:	a052                	subq 32,r5
    9470:	ff7d 3602           	bmi 96aa <__fpadd_parts+0x2a6>
    9474:	6376                	move.d r3,r7
    9476:	6366                	move.d r3,r6
    9478:	e567                	lsr.d r5,r6
    947a:	7786                	clear.d r7
    947c:	6556                	test.d r5
    947e:	ffbd 3e02           	blt 96c0 <__fpadd_parts+0x2bc>
    9482:	0f05                	nop 
    9484:	34e1 708a           	clear.d [sp+52]
    9488:	4142                	moveq 1,r4
    948a:	e544                	lsl.d r5,r4
    948c:	38e1 e44b           	move.d r4,[sp+56]
    9490:	34e1 644a           	move.d [sp+52],r4
    9494:	38e1 655a           	move.d [sp+56],r5
    9498:	8142                	subq 1,r4
    949a:	b015                	ax 
    949c:	8052                	subq 0,r5
    949e:	2247                	and.d r2,r4
    94a0:	2357                	and.d r3,r5
    94a2:	6547                	or.d r5,r4
    94a4:	3425                	sne r4
    94a6:	6426                	move.d r4,r2
    94a8:	6627                	or.d r6,r2
    94aa:	6736                	move.d r7,r3
    94ac:	04a1 6aaa           	move.d [r10+4],r10
    94b0:	04b1 eaaa           	cmp.d [r11+4],r10
    94b4:	ec30                	beq 95a2 <__fpadd_parts+0x19e>
    94b6:	0f05                	nop 
    94b8:	6aa6                	test.d r10
    94ba:	ff3d 5401           	beq 9612 <__fpadd_parts+0x20e>
    94be:	0f05                	nop 
    94c0:	2ce1 aa2a           	sub.d [sp+44],r2,r10
    94c4:	b015                	ax 
    94c6:	30e1 ab3a           	sub.d [sp+48],r3,r11
    94ca:	ff7d 5801           	bmi 9626 <__fpadd_parts+0x222>
    94ce:	4132                	moveq 1,r3
    94d0:	04c1 708a           	clear.d [r12+4]
    94d4:	08c1 eddb           	move.d r13,[r12+8]
    94d8:	6a26                	move.d r10,r2
    94da:	6b36                	move.d r11,r3
    94dc:	0cc1 eaab           	move.d r10,[r12+12]
    94e0:	10c1 ebbb           	move.d r11,[r12+16]
    94e4:	62a6                	move.d r2,r10
    94e6:	63b6                	move.d r3,r11
    94e8:	81a2                	subq 1,r10
    94ea:	b015                	ax 
    94ec:	80b2                	subq 0,r11
    94ee:	7e52                	moveq -2,r5
    94f0:	24e1 e55b           	move.d r5,[sp+36]
    94f4:	6fde ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r13
    94fa:	28e1 eddb           	move.d r13,[sp+40]
    94fe:	24e1 eaaa           	cmp.d [sp+36],r10
    9502:	b015                	ax 
    9504:	28e1 ebba           	cmp.d [sp+40],r11
    9508:	4690                	bhi 9550 <__fpadd_parts+0x14c>
    950a:	4392                	moveq 3,r9
    950c:	08c1 6dda           	move.d [r12+8],r13
    9510:	81d2                	subq 1,r13
    9512:	6296                	move.d r2,r9
    9514:	63a6                	move.d r3,r10
    9516:	2296                	add.d r2,r9
    9518:	b015                	ax 
    951a:	23a6                	add.d r3,r10
    951c:	6926                	move.d r9,r2
    951e:	6a36                	move.d r10,r3
    9520:	6d46                	move.d r13,r4
    9522:	69a6                	move.d r9,r10
    9524:	63b6                	move.d r3,r11
    9526:	81a2                	subq 1,r10
    9528:	b015                	ax 
    952a:	80b2                	subq 0,r11
    952c:	7e52                	moveq -2,r5
    952e:	6586                	move.d r5,r8
    9530:	6f5e ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r5
    9536:	6596                	move.d r5,r9
    9538:	e8a6                	cmp.d r8,r10
    953a:	b015                	ax 
    953c:	e9b6                	cmp.d r9,r11
    953e:	d380                	bls 9512 <__fpadd_parts+0x10e>
    9540:	81d2                	subq 1,r13
    9542:	0cc1 e22b           	move.d r2,[r12+12]
    9546:	10c1 e33b           	move.d r3,[r12+16]
    954a:	08c1 e44b           	move.d r4,[r12+8]
    954e:	4392                	moveq 3,r9
    9550:	7f02                	moveq -1,r0
    9552:	6f1e ffff ff1f      	move.d 1fffffff <__end+0x1fff02ef>,r1
    9558:	e026                	cmp.d r0,r2
    955a:	b015                	ax 
    955c:	e136                	cmp.d r1,r3
    955e:	7080                	bls 95d0 <__fpadd_parts+0x1cc>
    9560:	ec9b                	move.d r9,[r12]
    9562:	6296                	move.d r2,r9
    9564:	0193                	andq 1,r9
    9566:	63b6                	move.d r3,r11
    9568:	dfb3                	lslq 31,r11
    956a:	62d6                	move.d r2,r13
    956c:	e1d3                	lsrq 1,r13
    956e:	6bd7                	or.d r11,r13
    9570:	63b6                	move.d r3,r11
    9572:	e1b3                	lsrq 1,r11
    9574:	6d97                	or.d r13,r9
    9576:	0cc1 e99b           	move.d r9,[r12+12]
    957a:	10c1 ebbb           	move.d r11,[r12+16]
    957e:	08c1 699a           	move.d [r12+8],r9
    9582:	0192                	addq 1,r9
    9584:	08c1 e99b           	move.d r9,[r12+8]
    9588:	6ca6                	move.d r12,r10
    958a:	be8f                	movem [sp+],r8
    958c:	7fb6                	ret 
    958e:	28e2                	addq 40,sp
    9590:	72d0                	ble 9604 <__fpadd_parts+0x200>
    9592:	0f05                	nop 
    9594:	7286                	clear.d r2
    9596:	04a1 6aaa           	move.d [r10+4],r10
    959a:	04b1 eaaa           	cmp.d [r11+4],r10
    959e:	1920                	bne 94b8 <__fpadd_parts+0xb4>
    95a0:	7386                	clear.d r3
    95a2:	04c1 eaab           	move.d r10,[r12+4]
    95a6:	08c1 eddb           	move.d r13,[r12+8]
    95aa:	2ce1 222a           	add.d [sp+44],r2
    95ae:	b015                	ax 
    95b0:	30e1 233a           	add.d [sp+48],r3
    95b4:	0cc1 e22b           	move.d r2,[r12+12]
    95b8:	10c1 e33b           	move.d r3,[r12+16]
    95bc:	4392                	moveq 3,r9
    95be:	7f02                	moveq -1,r0
    95c0:	6f1e ffff ff1f      	move.d 1fffffff <__end+0x1fff02ef>,r1
    95c6:	e026                	cmp.d r0,r2
    95c8:	b015                	ax 
    95ca:	e136                	cmp.d r1,r3
    95cc:	9590                	bhi 9562 <__fpadd_parts+0x15e>
    95ce:	ec9b                	move.d r9,[r12]
    95d0:	6ca6                	move.d r12,r10
    95d2:	be8f                	movem [sp+],r8
    95d4:	7fb6                	ret 
    95d6:	28e2                	addq 40,sp
    95d8:	c2d2                	cmpq 2,r13
    95da:	af20                	bne 958a <__fpadd_parts+0x186>
    95dc:	6c96                	move.d r12,r9
    95de:	e9df                	move.d r13,[r9+]
    95e0:	6ad6                	move.d r10,r13
    95e2:	04d2                	addq 4,r13
    95e4:	6d2e                	move.d [r13+],r2
    95e6:	e92f                	move.d r2,[r9+]
    95e8:	6d3e                	move.d [r13+],r3
    95ea:	e93f                	move.d r3,[r9+]
    95ec:	6d5e                	move.d [r13+],r5
    95ee:	e95f                	move.d r5,[r9+]
    95f0:	6dda                	move.d [r13],r13
    95f2:	e9db                	move.d r13,[r9]
    95f4:	04b1 699a           	move.d [r11+4],r9
    95f8:	04a1 299b           	and.d [r10+4],r9
    95fc:	04c1 e99b           	move.d r9,[r12+4]
    9600:	89e0                	ba 958a <__fpadd_parts+0x186>
    9602:	6ca6                	move.d r12,r10
    9604:	2ce1 708a           	clear.d [sp+44]
    9608:	30e1 708a           	clear.d [sp+48]
    960c:	ffed 9cfe           	ba 94ac <__fpadd_parts+0xa8>
    9610:	65d6                	move.d r5,r13
    9612:	2ce1 6aaa           	move.d [sp+44],r10
    9616:	30e1 6bba           	move.d [sp+48],r11
    961a:	a2a6                	sub.d r2,r10
    961c:	b015                	ax 
    961e:	a3b6                	sub.d r3,r11
    9620:	ff6d acfe           	bpl 94d0 <__fpadd_parts+0xcc>
    9624:	4132                	moveq 1,r3
    9626:	04c1 e33b           	move.d r3,[r12+4]
    962a:	08c1 eddb           	move.d r13,[r12+8]
    962e:	3ce1 708a           	clear.d [sp+60]
    9632:	40e1 708a           	clear.d [sp+64]
    9636:	3ce1 622a           	move.d [sp+60],r2
    963a:	40e1 633a           	move.d [sp+64],r3
    963e:	aa26                	sub.d r10,r2
    9640:	b015                	ax 
    9642:	ab36                	sub.d r11,r3
    9644:	0cc1 e22b           	move.d r2,[r12+12]
    9648:	10c1 e33b           	move.d r3,[r12+16]
    964c:	ffed 96fe           	ba 94e6 <__fpadd_parts+0xe2>
    9650:	62a6                	move.d r2,r10
    9652:	6ba6                	move.d r11,r10
    9654:	be8f                	movem [sp+],r8
    9656:	7fb6                	ret 
    9658:	28e2                	addq 40,sp
    965a:	6666                	test.d r6
    965c:	ff3d 4cfe           	beq 94ac <__fpadd_parts+0xa8>
    9660:	a052                	subq 32,r5
    9662:	7e70                	bmi 96e2 <__fpadd_parts+0x2de>
    9664:	24d6                	add.d r4,r13
    9666:	30e1 666a           	move.d [sp+48],r6
    966a:	e567                	lsr.d r5,r6
    966c:	7786                	clear.d r7
    966e:	6556                	test.d r5
    9670:	60b0                	blt 96d2 <__fpadd_parts+0x2ce>
    9672:	0f05                	nop 
    9674:	44e1 708a           	clear.d [sp+68]
    9678:	4142                	moveq 1,r4
    967a:	e544                	lsl.d r5,r4
    967c:	48e1 e44b           	move.d r4,[sp+72]
    9680:	44e1 644a           	move.d [sp+68],r4
    9684:	48e1 655a           	move.d [sp+72],r5
    9688:	8142                	subq 1,r4
    968a:	b015                	ax 
    968c:	8052                	subq 0,r5
    968e:	2ce1 244b           	and.d [sp+44],r4
    9692:	30e1 255b           	and.d [sp+48],r5
    9696:	6547                	or.d r5,r4
    9698:	3425                	sne r4
    969a:	6647                	or.d r6,r4
    969c:	2ce1 e44b           	move.d r4,[sp+44]
    96a0:	30e1 e77b           	move.d r7,[sp+48]
    96a4:	ffed 04fe           	ba 94ac <__fpadd_parts+0xa8>
    96a8:	0f05                	nop 
    96aa:	c173                	lslq 1,r7
    96ac:	5f62                	moveq 31,r6
    96ae:	a466                	sub.d r4,r6
    96b0:	e674                	lsl.d r6,r7
    96b2:	6266                	move.d r2,r6
    96b4:	e467                	lsr.d r4,r6
    96b6:	6767                	or.d r7,r6
    96b8:	6376                	move.d r3,r7
    96ba:	ffed befd           	ba 947c <__fpadd_parts+0x78>
    96be:	e477                	lsr.d r4,r7
    96c0:	38e1 708a           	clear.d [sp+56]
    96c4:	4152                	moveq 1,r5
    96c6:	e454                	lsl.d r4,r5
    96c8:	34e1 e55b           	move.d r5,[sp+52]
    96cc:	ffed c0fd           	ba 9490 <__fpadd_parts+0x8c>
    96d0:	0f05                	nop 
    96d2:	48e1 708a           	clear.d [sp+72]
    96d6:	4152                	moveq 1,r5
    96d8:	e454                	lsl.d r4,r5
    96da:	44e1 e55b           	move.d r5,[sp+68]
    96de:	a1e0                	ba 9680 <__fpadd_parts+0x27c>
    96e0:	0f05                	nop 
    96e2:	30e1 677a           	move.d [sp+48],r7
    96e6:	c173                	lslq 1,r7
    96e8:	5f62                	moveq 31,r6
    96ea:	a466                	sub.d r4,r6
    96ec:	e674                	lsl.d r6,r7
    96ee:	2ce1 666a           	move.d [sp+44],r6
    96f2:	e467                	lsr.d r4,r6
    96f4:	6767                	or.d r7,r6
    96f6:	30e1 677a           	move.d [sp+48],r7
    96fa:	73e0                	ba 966e <__fpadd_parts+0x26a>
    96fc:	e477                	lsr.d r4,r7
    96fe:	c422                	cmpq 4,r2
    9700:	ff2d 86fe           	bne 958a <__fpadd_parts+0x186>
    9704:	0f05                	nop 
    9706:	04a1 600a           	move.d [r10+4],r0
    970a:	04b1 e00a           	cmp.d [r11+4],r0
    970e:	ff3d 78fe           	beq 958a <__fpadd_parts+0x186>
    9712:	0f05                	nop 
    9714:	6fae a8ad 0000      	move.d ada8 <___thenan_df>,r10
    971a:	ffed 6efe           	ba 958c <__fpadd_parts+0x188>
    971e:	be8f                	movem [sp+],r8

00009720 <___adddf3>:
    9720:	84e2                	subq 4,sp
    9722:	7eba                	move srp,[sp]
    9724:	b0e1 ee0f           	move.d r0,[sp=sp-80]
    9728:	04e1 eaab           	move.d r10,[sp+4]
    972c:	08e1 ebbb           	move.d r11,[sp+8]
    9730:	0ce1 eccb           	move.d r12,[sp+12]
    9734:	10e1 eddb           	move.d r13,[sp+16]
    9738:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    973e:	6ea6                	move.d sp,r10
    9740:	04a2                	addq 4,r10
    9742:	6eb6                	move.d sp,r11
    9744:	14b2                	addq 20,r11
    9746:	b0b9                	jsr r0
    9748:	6ea6                	move.d sp,r10
    974a:	0ca2                	addq 12,r10
    974c:	6eb6                	move.d sp,r11
    974e:	28b2                	addq 40,r11
    9750:	b0b9                	jsr r0
    9752:	6ea6                	move.d sp,r10
    9754:	14a2                	addq 20,r10
    9756:	6eb6                	move.d sp,r11
    9758:	28b2                	addq 40,r11
    975a:	6ec6                	move.d sp,r12
    975c:	3cc2                	addq 60,r12
    975e:	3fbd 0494 0000      	jsr 9404 <__fpadd_parts>
    9764:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    976a:	6e0e                	pop r0
    976c:	0fec 4c00           	addu.b 0x4c,sp
    9770:	3e0d                	jump [sp+]

00009772 <___subdf3>:
    9772:	84e2                	subq 4,sp
    9774:	7eba                	move srp,[sp]
    9776:	b0e1 ee0f           	move.d r0,[sp=sp-80]
    977a:	04e1 eaab           	move.d r10,[sp+4]
    977e:	08e1 ebbb           	move.d r11,[sp+8]
    9782:	0ce1 eccb           	move.d r12,[sp+12]
    9786:	10e1 eddb           	move.d r13,[sp+16]
    978a:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9790:	6ea6                	move.d sp,r10
    9792:	04a2                	addq 4,r10
    9794:	6eb6                	move.d sp,r11
    9796:	14b2                	addq 20,r11
    9798:	b0b9                	jsr r0
    979a:	6ea6                	move.d sp,r10
    979c:	0ca2                	addq 12,r10
    979e:	6eb6                	move.d sp,r11
    97a0:	28b2                	addq 40,r11
    97a2:	b0b9                	jsr r0
    97a4:	2ce1 699a           	move.d [sp+44],r9
    97a8:	41d2                	moveq 1,r13
    97aa:	bd97                	xor r13,r9
    97ac:	2ce1 e99b           	move.d r9,[sp+44]
    97b0:	6ea6                	move.d sp,r10
    97b2:	14a2                	addq 20,r10
    97b4:	6eb6                	move.d sp,r11
    97b6:	28b2                	addq 40,r11
    97b8:	6ec6                	move.d sp,r12
    97ba:	3cc2                	addq 60,r12
    97bc:	3fbd 0494 0000      	jsr 9404 <__fpadd_parts>
    97c2:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    97c8:	6e0e                	pop r0
    97ca:	0fec 4c00           	addu.b 0x4c,sp
    97ce:	3e0d                	jump [sp+]

000097d0 <___muldf3>:
    97d0:	84e2                	subq 4,sp
    97d2:	7eba                	move srp,[sp]
    97d4:	8fec c400           	subu.b 0xc4,sp
    97d8:	fe8b                	movem r8,[sp]
    97da:	78e1 eaab           	move.d r10,[sp+120]
    97de:	7ce1 ebbb           	move.d r11,[sp+124]
    97e2:	5fed 8000 eccb      	move.d r12,[sp+128]
    97e8:	5fed 8400 eddb      	move.d r13,[sp+132]
    97ee:	6f4e 78a9 0000      	move.d a978 <___unpack_d>,r4
    97f4:	6ea6                	move.d sp,r10
    97f6:	0fac 7800           	addu.b 0x78,r10
    97fa:	6eb6                	move.d sp,r11
    97fc:	0fbc 8800           	addu.b 0x88,r11
    9800:	b4b9                	jsr r4
    9802:	6ea6                	move.d sp,r10
    9804:	0fac 8000           	addu.b 0x80,r10
    9808:	6eb6                	move.d sp,r11
    980a:	0fbc 9c00           	addu.b 0x9c,r11
    980e:	b4b9                	jsr r4
    9810:	5fed 8800 699a      	move.d [sp+136],r9
    9816:	c192                	cmpq 1,r9
    9818:	2890                	bhi 9842 <___muldf3+0x72>
    981a:	6ea6                	move.d sp,r10
    981c:	5fed 8c00 600a      	move.d [sp+140],r0
    9822:	5fed a000 e00a      	cmp.d [sp+160],r0
    9828:	3925                	sne r9
    982a:	5fed 8c00 e99b      	move.d r9,[sp+140]
    9830:	0fac 8800           	addu.b 0x88,r10
    9834:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    983a:	be8f                	movem [sp+],r8
    983c:	0fec a000           	addu.b 0xa0,sp
    9840:	3e0d                	jump [sp+]
    9842:	5fed 9c00 6dda      	move.d [sp+156],r13
    9848:	c1d2                	cmpq 1,r13
    984a:	2890                	bhi 9874 <___muldf3+0xa4>
    984c:	c492                	cmpq 4,r9
    984e:	5fed 8c00 611a      	move.d [sp+140],r1
    9854:	5fed a000 e11a      	cmp.d [sp+160],r1
    985a:	3925                	sne r9
    985c:	5fed a000 e99b      	move.d r9,[sp+160]
    9862:	0fac 9c00           	addu.b 0x9c,r10
    9866:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    986c:	be8f                	movem [sp+],r8
    986e:	0fec a000           	addu.b 0xa0,sp
    9872:	3e0d                	jump [sp+]
    9874:	2e20                	bne 98a4 <___muldf3+0xd4>
    9876:	c2d2                	cmpq 2,r13
    9878:	2030                	beq 989a <___muldf3+0xca>
    987a:	0f05                	nop 
    987c:	5fed 8c00 633a      	move.d [sp+140],r3
    9882:	5fed a000 e33a      	cmp.d [sp+160],r3
    9888:	3925                	sne r9
    988a:	5fed 8c00 e99b      	move.d r9,[sp+140]
    9890:	6ea6                	move.d sp,r10
    9892:	0fac 8800           	addu.b 0x88,r10
    9896:	9de0                	ba 9834 <___muldf3+0x64>
    9898:	0f05                	nop 
    989a:	6fae a8ad 0000      	move.d ada8 <___thenan_df>,r10
    98a0:	93e0                	ba 9834 <___muldf3+0x64>
    98a2:	0f05                	nop 
    98a4:	c4d2                	cmpq 4,r13
    98a6:	2420                	bne 98cc <___muldf3+0xfc>
    98a8:	c292                	cmpq 2,r9
    98aa:	ef30                	beq 989a <___muldf3+0xca>
    98ac:	0f05                	nop 
    98ae:	5fed 8c00 644a      	move.d [sp+140],r4
    98b4:	5fed a000 e44a      	cmp.d [sp+160],r4
    98ba:	3925                	sne r9
    98bc:	5fed a000 e99b      	move.d r9,[sp+160]
    98c2:	6ea6                	move.d sp,r10
    98c4:	0fac 9c00           	addu.b 0x9c,r10
    98c8:	6be0                	ba 9834 <___muldf3+0x64>
    98ca:	0f05                	nop 
    98cc:	ff3d f601           	beq 9ac6 <___muldf3+0x2f6>
    98d0:	c2d2                	cmpq 2,r13
    98d2:	ff3d 5402           	beq 9b2a <___muldf3+0x35a>
    98d6:	7d86                	clear.d r13
    98d8:	5fed 9400 30ba      	move [sp+148],srp
    98de:	28e1 70ba           	move srp,[sp+40]
    98e2:	5fed 9800 655a      	move.d [sp+152],r5
    98e8:	5fed a800 699a      	move.d [sp+168],r9
    98ee:	5fed ac00 666a      	move.d [sp+172],r6
    98f4:	6f4e a8a6 0000      	move.d a6a8 <___muldi3>,r4
    98fa:	7ab6                	move srp,r10
    98fc:	7b86                	clear.d r11
    98fe:	69c6                	move.d r9,r12
    9900:	24e1 e99b           	move.d r9,[sp+36]
    9904:	b4b9                	jsr r4
    9906:	38e1 eaab           	move.d r10,[sp+56]
    990a:	3ce1 ebbb           	move.d r11,[sp+60]
    990e:	66a6                	move.d r6,r10
    9910:	7b86                	clear.d r11
    9912:	28e1 6cca           	move.d [sp+40],r12
    9916:	7d86                	clear.d r13
    9918:	b4b9                	jsr r4
    991a:	28e1 eaab           	move.d r10,[sp+40]
    991e:	2ce1 ebbb           	move.d r11,[sp+44]
    9922:	65a6                	move.d r5,r10
    9924:	7b86                	clear.d r11
    9926:	66c6                	move.d r6,r12
    9928:	7d86                	clear.d r13
    992a:	b4b9                	jsr r4
    992c:	68e1 eaab           	move.d r10,[sp+104]
    9930:	6ce1 ebbb           	move.d r11,[sp+108]
    9934:	65a6                	move.d r5,r10
    9936:	7b86                	clear.d r11
    9938:	24e1 699a           	move.d [sp+36],r9
    993c:	69c6                	move.d r9,r12
    993e:	7d86                	clear.d r13
    9940:	b4b9                	jsr r4
    9942:	28e1 2caa           	add.d [sp+40],r10,r12
    9946:	b015                	ax 
    9948:	2ce1 2dba           	add.d [sp+44],r11,r13
    994c:	28e1 ecca           	cmp.d [sp+40],r12
    9950:	b015                	ax 
    9952:	2ce1 edda           	cmp.d [sp+44],r13
    9956:	ff1d f001           	blo 9b4a <___muldf3+0x37a>
    995a:	4142                	moveq 1,r4
    995c:	30e1 708a           	clear.d [sp+48]
    9960:	34e1 708a           	clear.d [sp+52]
    9964:	40e1 708a           	clear.d [sp+64]
    9968:	44e1 eccb           	move.d r12,[sp+68]
    996c:	40e1 6aaa           	move.d [sp+64],r10
    9970:	44e1 6bba           	move.d [sp+68],r11
    9974:	38e1 2aaa           	add.d [sp+56],r10
    9978:	b015                	ax 
    997a:	3ce1 2bba           	add.d [sp+60],r11
    997e:	38e1 eaaa           	cmp.d [sp+56],r10
    9982:	b015                	ax 
    9984:	3ce1 ebba           	cmp.d [sp+60],r11
    9988:	1800                	bcc 99a2 <___muldf3+0x1d2>
    998a:	0f05                	nop 
    998c:	30e1 644a           	move.d [sp+48],r4
    9990:	34e1 655a           	move.d [sp+52],r5
    9994:	0142                	addq 1,r4
    9996:	b015                	ax 
    9998:	0052                	addq 0,r5
    999a:	30e1 e44b           	move.d r4,[sp+48]
    999e:	34e1 e55b           	move.d r5,[sp+52]
    99a2:	4ce1 708a           	clear.d [sp+76]
    99a6:	48e1 eddb           	move.d r13,[sp+72]
    99aa:	48e1 6cca           	move.d [sp+72],r12
    99ae:	4ce1 6dda           	move.d [sp+76],r13
    99b2:	68e1 2cca           	add.d [sp+104],r12
    99b6:	b015                	ax 
    99b8:	6ce1 2dda           	add.d [sp+108],r13
    99bc:	30e1 2cca           	add.d [sp+48],r12
    99c0:	b015                	ax 
    99c2:	34e1 2dda           	add.d [sp+52],r13
    99c6:	5fed 9000 699a      	move.d [sp+144],r9
    99cc:	5fed a400 299a      	add.d [sp+164],r9
    99d2:	6946                	move.d r9,r4
    99d4:	0442                	addq 4,r4
    99d6:	5fed b800 e44b      	move.d r4,[sp+184]
    99dc:	5fed 8c00 655a      	move.d [sp+140],r5
    99e2:	5fed a000 e55a      	cmp.d [sp+160],r5
    99e8:	3425                	sne r4
    99ea:	5fed b400 e44b      	move.d r4,[sp+180]
    99f0:	7f42                	moveq -1,r4
    99f2:	50e1 e44b           	move.d r4,[sp+80]
    99f6:	6f5e ffff ff1f      	move.d 1fffffff <__end+0x1fff02ef>,r5
    99fc:	54e1 e55b           	move.d r5,[sp+84]
    9a00:	50e1 ecca           	cmp.d [sp+80],r12
    9a04:	b015                	ax 
    9a06:	54e1 edda           	cmp.d [sp+84],r13
    9a0a:	5480                	bls 9a60 <___muldf3+0x290>
    9a0c:	0592                	addq 5,r9
    9a0e:	6c76                	move.d r12,r7
    9a10:	0173                	andq 1,r7
    9a12:	7886                	clear.d r8
    9a14:	6776                	test.d r7
    9a16:	b015                	ax 
    9a18:	6886                	test.d r8
    9a1a:	1a30                	beq 9a36 <___muldf3+0x266>
    9a1c:	39b6                	move r9,srp
    9a1e:	6b66                	move.d r11,r6
    9a20:	df63                	lslq 31,r6
    9a22:	6a56                	move.d r10,r5
    9a24:	e153                	lsrq 1,r5
    9a26:	6b46                	move.d r11,r4
    9a28:	e143                	lsrq 1,r4
    9a2a:	66a6                	move.d r6,r10
    9a2c:	65a7                	or.d r5,r10
    9a2e:	64b6                	move.d r4,r11
    9a30:	6fbf 0000 0080      	or.d 80000000 <__end+0x7fff02f0>,r11
    9a36:	6d66                	move.d r13,r6
    9a38:	df63                	lslq 31,r6
    9a3a:	6c56                	move.d r12,r5
    9a3c:	e153                	lsrq 1,r5
    9a3e:	6d46                	move.d r13,r4
    9a40:	e143                	lsrq 1,r4
    9a42:	66c6                	move.d r6,r12
    9a44:	65c7                	or.d r5,r12
    9a46:	64d6                	move.d r4,r13
    9a48:	7f22                	moveq -1,r2
    9a4a:	6f3e ffff ff1f      	move.d 1fffffff <__end+0x1fff02ef>,r3
    9a50:	e2c6                	cmp.d r2,r12
    9a52:	b015                	ax 
    9a54:	e3d6                	cmp.d r3,r13
    9a56:	b790                	bhi 9a0e <___muldf3+0x23e>
    9a58:	0192                	addq 1,r9
    9a5a:	5fed b800 70ba      	move srp,[sp+184]
    9a60:	7f92                	moveq -1,r9
    9a62:	58e1 e99b           	move.d r9,[sp+88]
    9a66:	6f3e ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r3
    9a6c:	5ce1 e33b           	move.d r3,[sp+92]
    9a70:	58e1 ecca           	cmp.d [sp+88],r12
    9a74:	b015                	ax 
    9a76:	5ce1 edda           	cmp.d [sp+92],r13
    9a7a:	7090                	bhi 9aec <___muldf3+0x31c>
    9a7c:	0f05                	nop 
    9a7e:	5fed b800 699a      	move.d [sp+184],r9
    9a84:	22e0                	ba 9aa8 <___muldf3+0x2d8>
    9a86:	8192                	subq 1,r9
    9a88:	6a06                	move.d r10,r0
    9a8a:	6b16                	move.d r11,r1
    9a8c:	2a06                	add.d r10,r0
    9a8e:	b015                	ax 
    9a90:	2b16                	add.d r11,r1
    9a92:	60a6                	move.d r0,r10
    9a94:	61b6                	move.d r1,r11
    9a96:	7f02                	moveq -1,r0
    9a98:	6f1e ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r1
    9a9e:	e0c6                	cmp.d r0,r12
    9aa0:	b015                	ax 
    9aa2:	e1d6                	cmp.d r1,r13
    9aa4:	4090                	bhi 9ae6 <___muldf3+0x316>
    9aa6:	8192                	subq 1,r9
    9aa8:	6926                	move.d r9,r2
    9aaa:	6c46                	move.d r12,r4
    9aac:	6d56                	move.d r13,r5
    9aae:	2c46                	add.d r12,r4
    9ab0:	b015                	ax 
    9ab2:	2d56                	add.d r13,r5
    9ab4:	64c6                	move.d r4,r12
    9ab6:	6aa6                	test.d r10
    9ab8:	b015                	ax 
    9aba:	6bb6                	test.d r11
    9abc:	cba0                	bge 9a88 <___muldf3+0x2b8>
    9abe:	65d6                	move.d r5,r13
    9ac0:	4143                	orq 1,r4
    9ac2:	c5e0                	ba 9a88 <___muldf3+0x2b8>
    9ac4:	64c6                	move.d r4,r12
    9ac6:	5fed 8c00 655a      	move.d [sp+140],r5
    9acc:	5fed a000 e55a      	cmp.d [sp+160],r5
    9ad2:	3925                	sne r9
    9ad4:	5fed 8c00 e99b      	move.d r9,[sp+140]
    9ada:	6ea6                	move.d sp,r10
    9adc:	0fac 8800           	addu.b 0x88,r10
    9ae0:	ffed 50fd           	ba 9834 <___muldf3+0x64>
    9ae4:	0f05                	nop 
    9ae6:	5fed b800 e22b      	move.d r2,[sp+184]
    9aec:	64e1 708a           	clear.d [sp+100]
    9af0:	4c14                	movu.b r12,r1
    9af2:	60e1 e11b           	move.d r1,[sp+96]
    9af6:	60e1 633a           	move.d [sp+96],r3
    9afa:	64e1 644a           	move.d [sp+100],r4
    9afe:	cf3c 8000           	cmpu.b 0x80,r3
    9b02:	b015                	ax 
    9b04:	c042                	cmpq 0,r4
    9b06:	5030                	beq 9b58 <___muldf3+0x388>
    9b08:	0f05                	nop 
    9b0a:	5fed bc00 eccb      	move.d r12,[sp+188]
    9b10:	5fed c000 eddb      	move.d r13,[sp+192]
    9b16:	4352                	moveq 3,r5
    9b18:	5fed b000 e55b      	move.d r5,[sp+176]
    9b1e:	6ea6                	move.d sp,r10
    9b20:	0fac b000           	addu.b 0xb0,r10
    9b24:	ffed 0cfd           	ba 9834 <___muldf3+0x64>
    9b28:	0f05                	nop 
    9b2a:	5fed 8c00 699a      	move.d [sp+140],r9
    9b30:	5fed a000 e99a      	cmp.d [sp+160],r9
    9b36:	3925                	sne r9
    9b38:	5fed a000 e99b      	move.d r9,[sp+160]
    9b3e:	6ea6                	move.d sp,r10
    9b40:	0fac 9c00           	addu.b 0x9c,r10
    9b44:	ffed ecfc           	ba 9834 <___muldf3+0x64>
    9b48:	0f05                	nop 
    9b4a:	30e1 708a           	clear.d [sp+48]
    9b4e:	34e1 e44b           	move.d r4,[sp+52]
    9b52:	ffed 0efe           	ba 9964 <___muldf3+0x194>
    9b56:	0f05                	nop 
    9b58:	74e1 708a           	clear.d [sp+116]
    9b5c:	5c44                	movu.w r12,r4
    9b5e:	1f4f 0001           	and.w 0x100,r4
    9b62:	70e1 e44b           	move.d r4,[sp+112]
    9b66:	70e1 a00b           	test.d [sp+112]
    9b6a:	b015                	ax 
    9b6c:	74e1 a00b           	test.d [sp+116]
    9b70:	9920                	bne 9b0a <___muldf3+0x33a>
    9b72:	0f05                	nop 
    9b74:	6aa6                	test.d r10
    9b76:	b015                	ax 
    9b78:	6bb6                	test.d r11
    9b7a:	8f30                	beq 9b0a <___muldf3+0x33a>
    9b7c:	0f05                	nop 
    9b7e:	6ca6                	move.d r12,r10
    9b80:	6db6                	move.d r13,r11
    9b82:	0fac 8000           	addu.b 0x80,r10
    9b86:	b015                	ax 
    9b88:	00b2                	addq 0,r11
    9b8a:	6ac6                	move.d r10,r12
    9b8c:	7c06                	clear.b r12
    9b8e:	7be0                	ba 9b0a <___muldf3+0x33a>
    9b90:	6bd6                	move.d r11,r13
	...

00009b94 <___divdf3>:
    9b94:	84e2                	subq 4,sp
    9b96:	7eba                	move srp,[sp]
    9b98:	8fec 6400           	subu.b 0x64,sp
    9b9c:	fe8b                	movem r8,[sp]
    9b9e:	2ce1 eaab           	move.d r10,[sp+44]
    9ba2:	30e1 ebbb           	move.d r11,[sp+48]
    9ba6:	34e1 eccb           	move.d r12,[sp+52]
    9baa:	38e1 eddb           	move.d r13,[sp+56]
    9bae:	6f4e 78a9 0000      	move.d a978 <___unpack_d>,r4
    9bb4:	6ea6                	move.d sp,r10
    9bb6:	2ca2                	addq 44,r10
    9bb8:	6eb6                	move.d sp,r11
    9bba:	3cb2                	addq 60,r11
    9bbc:	b4b9                	jsr r4
    9bbe:	6ea6                	move.d sp,r10
    9bc0:	34a2                	addq 52,r10
    9bc2:	6eb6                	move.d sp,r11
    9bc4:	0fbc 5000           	addu.b 0x50,r11
    9bc8:	b4b9                	jsr r4
    9bca:	3ce1 699a           	move.d [sp+60],r9
    9bce:	c192                	cmpq 1,r9
    9bd0:	1490                	bhi 9be6 <___divdf3+0x52>
    9bd2:	0f05                	nop 
    9bd4:	6ea6                	move.d sp,r10
    9bd6:	3ca2                	addq 60,r10
    9bd8:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    9bde:	be8f                	movem [sp+],r8
    9be0:	0fec 4000           	addu.b 0x40,sp
    9be4:	3e0d                	jump [sp+]
    9be6:	50e1 6dda           	move.d [sp+80],r13
    9bea:	c1d2                	cmpq 1,r13
    9bec:	1490                	bhi 9c02 <___divdf3+0x6e>
    9bee:	6ea6                	move.d sp,r10
    9bf0:	0fac 5000           	addu.b 0x50,r10
    9bf4:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    9bfa:	be8f                	movem [sp+],r8
    9bfc:	0fec 4000           	addu.b 0x40,sp
    9c00:	3e0d                	jump [sp+]
    9c02:	40e1 6cca           	move.d [sp+64],r12
    9c06:	54e1 6bba           	move.d [sp+84],r11
    9c0a:	bbc7                	xor r11,r12
    9c0c:	40e1 eccb           	move.d r12,[sp+64]
    9c10:	c492                	cmpq 4,r9
    9c12:	0630                	beq 9c1a <___divdf3+0x86>
    9c14:	c292                	cmpq 2,r9
    9c16:	1220                	bne 9c2a <___divdf3+0x96>
    9c18:	c4d2                	cmpq 4,r13
    9c1a:	ed96                	cmp.d r13,r9
    9c1c:	b720                	bne 9bd4 <___divdf3+0x40>
    9c1e:	0f05                	nop 
    9c20:	6fae a8ad 0000      	move.d ada8 <___thenan_df>,r10
    9c26:	b1e0                	ba 9bd8 <___divdf3+0x44>
    9c28:	0f05                	nop 
    9c2a:	9a30                	beq 9cc6 <___divdf3+0x132>
    9c2c:	c2d2                	cmpq 2,r13
    9c2e:	a830                	beq 9cd8 <___divdf3+0x144>
    9c30:	4422                	moveq 4,r2
    9c32:	44e1 699a           	move.d [sp+68],r9
    9c36:	58e1 a99a           	sub.d [sp+88],r9
    9c3a:	44e1 e99b           	move.d r9,[sp+68]
    9c3e:	48e1 6cca           	move.d [sp+72],r12
    9c42:	4ce1 6dda           	move.d [sp+76],r13
    9c46:	5ce1 6aaa           	move.d [sp+92],r10
    9c4a:	60e1 6bba           	move.d [sp+96],r11
    9c4e:	eac6                	cmp.d r10,r12
    9c50:	b015                	ax 
    9c52:	ebd6                	cmp.d r11,r13
    9c54:	1400                	bcc 9c6a <___divdf3+0xd6>
    9c56:	6c36                	move.d r12,r3
    9c58:	6d46                	move.d r13,r4
    9c5a:	2c36                	add.d r12,r3
    9c5c:	b015                	ax 
    9c5e:	2d46                	add.d r13,r4
    9c60:	63c6                	move.d r3,r12
    9c62:	64d6                	move.d r4,r13
    9c64:	8192                	subq 1,r9
    9c66:	44e1 e99b           	move.d r9,[sp+68]
    9c6a:	4f4c 3d00           	movu.b 0x3d,r4
    9c6e:	7586                	clear.d r5
    9c70:	6f9e 0000 0010      	move.d 10000000 <__end+0xfff02f0>,r9
    9c76:	7686                	clear.d r6
    9c78:	7786                	clear.d r7
    9c7a:	eca6                	cmp.d r12,r10
    9c7c:	b015                	ax 
    9c7e:	edb6                	cmp.d r13,r11
    9c80:	0c90                	bhi 9c8e <___divdf3+0xfa>
    9c82:	6986                	move.d r9,r8
    9c84:	6567                	or.d r5,r6
    9c86:	6977                	or.d r9,r7
    9c88:	aac6                	sub.d r10,r12
    9c8a:	b015                	ax 
    9c8c:	abd6                	sub.d r11,r13
    9c8e:	df83                	lslq 31,r8
    9c90:	e153                	lsrq 1,r5
    9c92:	6857                	or.d r8,r5
    9c94:	e193                	lsrq 1,r9
    9c96:	6c26                	move.d r12,r2
    9c98:	6d36                	move.d r13,r3
    9c9a:	2c26                	add.d r12,r2
    9c9c:	b015                	ax 
    9c9e:	2d36                	add.d r13,r3
    9ca0:	62c6                	move.d r2,r12
    9ca2:	8142                	subq 1,r4
    9ca4:	d520                	bne 9c7a <___divdf3+0xe6>
    9ca6:	63d6                	move.d r3,r13
    9ca8:	66a6                	move.d r6,r10
    9caa:	7186                	clear.d r1
    9cac:	4604                	movu.b r6,r0
    9cae:	cf0c 8000           	cmpu.b 0x80,r0
    9cb2:	b015                	ax 
    9cb4:	c012                	cmpq 0,r1
    9cb6:	2c30                	beq 9ce4 <___divdf3+0x150>
    9cb8:	67b6                	move.d r7,r11
    9cba:	48e1 e66b           	move.d r6,[sp+72]
    9cbe:	4ce1 e77b           	move.d r7,[sp+76]
    9cc2:	13e0                	ba 9bd6 <___divdf3+0x42>
    9cc4:	6ea6                	move.d sp,r10
    9cc6:	48e1 708a           	clear.d [sp+72]
    9cca:	4ce1 708a           	clear.d [sp+76]
    9cce:	44e1 708a           	clear.d [sp+68]
    9cd2:	6ea6                	move.d sp,r10
    9cd4:	03e0                	ba 9bd8 <___divdf3+0x44>
    9cd6:	3ca2                	addq 60,r10
    9cd8:	3ce1 e22b           	move.d r2,[sp+60]
    9cdc:	6ea6                	move.d sp,r10
    9cde:	ffed f6fe           	ba 9bd8 <___divdf3+0x44>
    9ce2:	3ca2                	addq 60,r10
    9ce4:	28e1 708a           	clear.d [sp+40]
    9ce8:	5634                	movu.w r6,r3
    9cea:	1f3f 0001           	and.w 0x100,r3
    9cee:	24e1 e33b           	move.d r3,[sp+36]
    9cf2:	24e1 a00b           	test.d [sp+36]
    9cf6:	b015                	ax 
    9cf8:	28e1 a00b           	test.d [sp+40]
    9cfc:	bd20                	bne 9cba <___divdf3+0x126>
    9cfe:	0f05                	nop 
    9d00:	6cc6                	test.d r12
    9d02:	b015                	ax 
    9d04:	6dd6                	test.d r13
    9d06:	b330                	beq 9cba <___divdf3+0x126>
    9d08:	0f05                	nop 
    9d0a:	0fac 8000           	addu.b 0x80,r10
    9d0e:	b015                	ax 
    9d10:	00b2                	addq 0,r11
    9d12:	6a66                	move.d r10,r6
    9d14:	7606                	clear.b r6
    9d16:	a3e0                	ba 9cba <___divdf3+0x126>
    9d18:	6b76                	move.d r11,r7
	...

00009d1c <___eqdf2>:
    9d1c:	84e2                	subq 4,sp
    9d1e:	7eba                	move srp,[sp]
    9d20:	bce2                	subq 60,sp
    9d22:	ee0b                	move.d r0,[sp]
    9d24:	04e1 eaab           	move.d r10,[sp+4]
    9d28:	08e1 ebbb           	move.d r11,[sp+8]
    9d2c:	0ce1 eccb           	move.d r12,[sp+12]
    9d30:	10e1 eddb           	move.d r13,[sp+16]
    9d34:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9d3a:	6ea6                	move.d sp,r10
    9d3c:	04a2                	addq 4,r10
    9d3e:	6eb6                	move.d sp,r11
    9d40:	14b2                	addq 20,r11
    9d42:	b0b9                	jsr r0
    9d44:	6ea6                	move.d sp,r10
    9d46:	0ca2                	addq 12,r10
    9d48:	6eb6                	move.d sp,r11
    9d4a:	28b2                	addq 40,r11
    9d4c:	b0b9                	jsr r0
    9d4e:	14e1 699a           	move.d [sp+20],r9
    9d52:	c192                	cmpq 1,r9
    9d54:	1880                	bls 9d6e <___eqdf2+0x52>
    9d56:	41a2                	moveq 1,r10
    9d58:	28e1 699a           	move.d [sp+40],r9
    9d5c:	c192                	cmpq 1,r9
    9d5e:	1480                	bls 9d74 <___eqdf2+0x58>
    9d60:	6eb6                	move.d sp,r11
    9d62:	6ea6                	move.d sp,r10
    9d64:	14a2                	addq 20,r10
    9d66:	28b2                	addq 40,r11
    9d68:	3fbd 7caa 0000      	jsr aa7c <___fpcmp_parts_d>
    9d6e:	6e0e                	pop r0
    9d70:	38e2                	addq 56,sp
    9d72:	3e0d                	jump [sp+]
    9d74:	f9e0                	ba 9d6e <___eqdf2+0x52>
    9d76:	41a2                	moveq 1,r10

00009d78 <___nedf2>:
    9d78:	84e2                	subq 4,sp
    9d7a:	7eba                	move srp,[sp]
    9d7c:	bce2                	subq 60,sp
    9d7e:	ee0b                	move.d r0,[sp]
    9d80:	04e1 eaab           	move.d r10,[sp+4]
    9d84:	08e1 ebbb           	move.d r11,[sp+8]
    9d88:	0ce1 eccb           	move.d r12,[sp+12]
    9d8c:	10e1 eddb           	move.d r13,[sp+16]
    9d90:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9d96:	6ea6                	move.d sp,r10
    9d98:	04a2                	addq 4,r10
    9d9a:	6eb6                	move.d sp,r11
    9d9c:	14b2                	addq 20,r11
    9d9e:	b0b9                	jsr r0
    9da0:	6ea6                	move.d sp,r10
    9da2:	0ca2                	addq 12,r10
    9da4:	6eb6                	move.d sp,r11
    9da6:	28b2                	addq 40,r11
    9da8:	b0b9                	jsr r0
    9daa:	14e1 699a           	move.d [sp+20],r9
    9dae:	c192                	cmpq 1,r9
    9db0:	1880                	bls 9dca <___nedf2+0x52>
    9db2:	41a2                	moveq 1,r10
    9db4:	28e1 699a           	move.d [sp+40],r9
    9db8:	c192                	cmpq 1,r9
    9dba:	1480                	bls 9dd0 <___nedf2+0x58>
    9dbc:	6eb6                	move.d sp,r11
    9dbe:	6ea6                	move.d sp,r10
    9dc0:	14a2                	addq 20,r10
    9dc2:	28b2                	addq 40,r11
    9dc4:	3fbd 7caa 0000      	jsr aa7c <___fpcmp_parts_d>
    9dca:	6e0e                	pop r0
    9dcc:	38e2                	addq 56,sp
    9dce:	3e0d                	jump [sp+]
    9dd0:	f9e0                	ba 9dca <___nedf2+0x52>
    9dd2:	41a2                	moveq 1,r10

00009dd4 <___gtdf2>:
    9dd4:	84e2                	subq 4,sp
    9dd6:	7eba                	move srp,[sp]
    9dd8:	bce2                	subq 60,sp
    9dda:	ee0b                	move.d r0,[sp]
    9ddc:	04e1 eaab           	move.d r10,[sp+4]
    9de0:	08e1 ebbb           	move.d r11,[sp+8]
    9de4:	0ce1 eccb           	move.d r12,[sp+12]
    9de8:	10e1 eddb           	move.d r13,[sp+16]
    9dec:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9df2:	6ea6                	move.d sp,r10
    9df4:	04a2                	addq 4,r10
    9df6:	6eb6                	move.d sp,r11
    9df8:	14b2                	addq 20,r11
    9dfa:	b0b9                	jsr r0
    9dfc:	6ea6                	move.d sp,r10
    9dfe:	0ca2                	addq 12,r10
    9e00:	6eb6                	move.d sp,r11
    9e02:	28b2                	addq 40,r11
    9e04:	b0b9                	jsr r0
    9e06:	14e1 699a           	move.d [sp+20],r9
    9e0a:	c192                	cmpq 1,r9
    9e0c:	1880                	bls 9e26 <___gtdf2+0x52>
    9e0e:	7fa2                	moveq -1,r10
    9e10:	28e1 699a           	move.d [sp+40],r9
    9e14:	c192                	cmpq 1,r9
    9e16:	1480                	bls 9e2c <___gtdf2+0x58>
    9e18:	6eb6                	move.d sp,r11
    9e1a:	6ea6                	move.d sp,r10
    9e1c:	14a2                	addq 20,r10
    9e1e:	28b2                	addq 40,r11
    9e20:	3fbd 7caa 0000      	jsr aa7c <___fpcmp_parts_d>
    9e26:	6e0e                	pop r0
    9e28:	38e2                	addq 56,sp
    9e2a:	3e0d                	jump [sp+]
    9e2c:	f9e0                	ba 9e26 <___gtdf2+0x52>
    9e2e:	7fa2                	moveq -1,r10

00009e30 <___ltdf2>:
    9e30:	84e2                	subq 4,sp
    9e32:	7eba                	move srp,[sp]
    9e34:	bce2                	subq 60,sp
    9e36:	ee0b                	move.d r0,[sp]
    9e38:	04e1 eaab           	move.d r10,[sp+4]
    9e3c:	08e1 ebbb           	move.d r11,[sp+8]
    9e40:	0ce1 eccb           	move.d r12,[sp+12]
    9e44:	10e1 eddb           	move.d r13,[sp+16]
    9e48:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9e4e:	6ea6                	move.d sp,r10
    9e50:	04a2                	addq 4,r10
    9e52:	6eb6                	move.d sp,r11
    9e54:	14b2                	addq 20,r11
    9e56:	b0b9                	jsr r0
    9e58:	6ea6                	move.d sp,r10
    9e5a:	0ca2                	addq 12,r10
    9e5c:	6eb6                	move.d sp,r11
    9e5e:	28b2                	addq 40,r11
    9e60:	b0b9                	jsr r0
    9e62:	14e1 699a           	move.d [sp+20],r9
    9e66:	c192                	cmpq 1,r9
    9e68:	1880                	bls 9e82 <___ltdf2+0x52>
    9e6a:	41a2                	moveq 1,r10
    9e6c:	28e1 699a           	move.d [sp+40],r9
    9e70:	c192                	cmpq 1,r9
    9e72:	1480                	bls 9e88 <___ltdf2+0x58>
    9e74:	6eb6                	move.d sp,r11
    9e76:	6ea6                	move.d sp,r10
    9e78:	14a2                	addq 20,r10
    9e7a:	28b2                	addq 40,r11
    9e7c:	3fbd 7caa 0000      	jsr aa7c <___fpcmp_parts_d>
    9e82:	6e0e                	pop r0
    9e84:	38e2                	addq 56,sp
    9e86:	3e0d                	jump [sp+]
    9e88:	f9e0                	ba 9e82 <___ltdf2+0x52>
    9e8a:	41a2                	moveq 1,r10

00009e8c <___ledf2>:
    9e8c:	84e2                	subq 4,sp
    9e8e:	7eba                	move srp,[sp]
    9e90:	bce2                	subq 60,sp
    9e92:	ee0b                	move.d r0,[sp]
    9e94:	04e1 eaab           	move.d r10,[sp+4]
    9e98:	08e1 ebbb           	move.d r11,[sp+8]
    9e9c:	0ce1 eccb           	move.d r12,[sp+12]
    9ea0:	10e1 eddb           	move.d r13,[sp+16]
    9ea4:	6f0e 78a9 0000      	move.d a978 <___unpack_d>,r0
    9eaa:	6ea6                	move.d sp,r10
    9eac:	04a2                	addq 4,r10
    9eae:	6eb6                	move.d sp,r11
    9eb0:	14b2                	addq 20,r11
    9eb2:	b0b9                	jsr r0
    9eb4:	6ea6                	move.d sp,r10
    9eb6:	0ca2                	addq 12,r10
    9eb8:	6eb6                	move.d sp,r11
    9eba:	28b2                	addq 40,r11
    9ebc:	b0b9                	jsr r0
    9ebe:	14e1 699a           	move.d [sp+20],r9
    9ec2:	c192                	cmpq 1,r9
    9ec4:	1880                	bls 9ede <___ledf2+0x52>
    9ec6:	41a2                	moveq 1,r10
    9ec8:	28e1 699a           	move.d [sp+40],r9
    9ecc:	c192                	cmpq 1,r9
    9ece:	1480                	bls 9ee4 <___ledf2+0x58>
    9ed0:	6eb6                	move.d sp,r11
    9ed2:	6ea6                	move.d sp,r10
    9ed4:	14a2                	addq 20,r10
    9ed6:	28b2                	addq 40,r11
    9ed8:	3fbd 7caa 0000      	jsr aa7c <___fpcmp_parts_d>
    9ede:	6e0e                	pop r0
    9ee0:	38e2                	addq 56,sp
    9ee2:	3e0d                	jump [sp+]
    9ee4:	f9e0                	ba 9ede <___ledf2+0x52>
    9ee6:	41a2                	moveq 1,r10

00009ee8 <___floatsidf>:
    9ee8:	84e2                	subq 4,sp
    9eea:	7eba                	move srp,[sp]
    9eec:	98e2                	subq 24,sp
    9eee:	ee0b                	move.d r0,[sp]
    9ef0:	4392                	moveq 3,r9
    9ef2:	04e1 e99b           	move.d r9,[sp+4]
    9ef6:	6a96                	move.d r10,r9
    9ef8:	ff93                	lsrq 31,r9
    9efa:	08e1 e99b           	move.d r9,[sp+8]
    9efe:	6aa6                	test.d r10
    9f00:	1620                	bne 9f18 <___floatsidf+0x30>
    9f02:	42d2                	moveq 2,r13
    9f04:	04e1 eddb           	move.d r13,[sp+4]
    9f08:	6ea6                	move.d sp,r10
    9f0a:	04a2                	addq 4,r10
    9f0c:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    9f12:	6e0e                	pop r0
    9f14:	14e2                	addq 20,sp
    9f16:	3e0d                	jump [sp+]
    9f18:	4fdc 3c00           	movu.b 0x3c,r13
    9f1c:	0ce1 eddb           	move.d r13,[sp+12]
    9f20:	6996                	test.d r9
    9f22:	3020                	bne 9f54 <___floatsidf+0x6c>
    9f24:	6a06                	move.d r10,r0
    9f26:	60a6                	move.d r0,r10
    9f28:	3fbd 30a7 0000      	jsr a730 <___clzsi2>
    9f2e:	6a96                	move.d r10,r9
    9f30:	1d92                	addq 29,r9
    9f32:	6996                	test.d r9
    9f34:	3cd0                	ble 9f72 <___floatsidf+0x8a>
    9f36:	6ad6                	move.d r10,r13
    9f38:	83d2                	subq 3,r13
    9f3a:	4270                	bmi 9f7e <___floatsidf+0x96>
    9f3c:	5fc2                	moveq 31,r12
    9f3e:	ed04                	lsl.d r13,r0
    9f40:	14e1 e00b           	move.d r0,[sp+20]
    9f44:	10e1 708a           	clear.d [sp+16]
    9f48:	5f92                	moveq 31,r9
    9f4a:	aa96                	sub.d r10,r9
    9f4c:	0ce1 e99b           	move.d r9,[sp+12]
    9f50:	b9e0                	ba 9f0a <___floatsidf+0x22>
    9f52:	6ea6                	move.d sp,r10
    9f54:	efae 0000 0080      	cmp.d 80000000 <__end+0x7fff02f0>,r10
    9f5a:	3830                	beq 9f94 <___floatsidf+0xac>
    9f5c:	0f05                	nop 
    9f5e:	aa05                	neg.d r10,r0
    9f60:	60a6                	move.d r0,r10
    9f62:	3fbd 30a7 0000      	jsr a730 <___clzsi2>
    9f68:	6a96                	move.d r10,r9
    9f6a:	1d92                	addq 29,r9
    9f6c:	6996                	test.d r9
    9f6e:	c9c0                	bgt 9f38 <___floatsidf+0x50>
    9f70:	6ad6                	move.d r10,r13
    9f72:	10e1 e00b           	move.d r0,[sp+16]
    9f76:	14e1 708a           	clear.d [sp+20]
    9f7a:	8fe0                	ba 9f0a <___floatsidf+0x22>
    9f7c:	6ea6                	move.d sp,r10
    9f7e:	60d6                	move.d r0,r13
    9f80:	e1d3                	lsrq 1,r13
    9f82:	a9c6                	sub.d r9,r12
    9f84:	ecd7                	lsr.d r12,r13
    9f86:	14e1 eddb           	move.d r13,[sp+20]
    9f8a:	e904                	lsl.d r9,r0
    9f8c:	10e1 e00b           	move.d r0,[sp+16]
    9f90:	b9e0                	ba 9f4a <___floatsidf+0x62>
    9f92:	5f92                	moveq 31,r9
    9f94:	6fbe 0000 e0c1      	move.d c1e00000 <__end+0xc1df02f0>,r11
    9f9a:	77e0                	ba 9f12 <___floatsidf+0x2a>
    9f9c:	7a86                	clear.d r10
	...

00009fa0 <___fixdfsi>:
    9fa0:	84e2                	subq 4,sp
    9fa2:	7eba                	move srp,[sp]
    9fa4:	9ce2                	subq 28,sp
    9fa6:	eeab                	move.d r10,[sp]
    9fa8:	04e1 ebbb           	move.d r11,[sp+4]
    9fac:	6ea6                	move.d sp,r10
    9fae:	6eb6                	move.d sp,r11
    9fb0:	08b2                	addq 8,r11
    9fb2:	3fbd 78a9 0000      	jsr a978 <___unpack_d>
    9fb8:	08e1 699a           	move.d [sp+8],r9
    9fbc:	c292                	cmpq 2,r9
    9fbe:	4a30                	beq a00a <___fixdfsi+0x6a>
    9fc0:	c192                	cmpq 1,r9
    9fc2:	4680                	bls a00a <___fixdfsi+0x6a>
    9fc4:	c492                	cmpq 4,r9
    9fc6:	3030                	beq 9ff8 <___fixdfsi+0x58>
    9fc8:	0f05                	nop 
    9fca:	10e1 699a           	move.d [sp+16],r9
    9fce:	3ab0                	blt a00a <___fixdfsi+0x6a>
    9fd0:	de92                	cmpq 30,r9
    9fd2:	24c0                	bgt 9ff8 <___fixdfsi+0x58>
    9fd4:	0f05                	nop 
    9fd6:	4fdc 3c00           	movu.b 0x3c,r13
    9fda:	a9d6                	sub.d r9,r13
    9fdc:	6d96                	move.d r13,r9
    9fde:	a092                	subq 32,r9
    9fe0:	3870                	bmi a01a <___fixdfsi+0x7a>
    9fe2:	5fc2                	moveq 31,r12
    9fe4:	18e1 6aaa           	move.d [sp+24],r10
    9fe8:	e9a7                	lsr.d r9,r10
    9fea:	0ce1 a00b           	test.d [sp+12]
    9fee:	0430                	beq 9ff4 <___fixdfsi+0x54>
    9ff0:	0f05                	nop 
    9ff2:	aaa5                	neg.d r10,r10
    9ff4:	1ce2                	addq 28,sp
    9ff6:	3e0d                	jump [sp+]
    9ff8:	0ce1 a00b           	test.d [sp+12]
    9ffc:	1220                	bne a010 <___fixdfsi+0x70>
    9ffe:	0f05                	nop 
    a000:	6fae ffff ff7f      	move.d 7fffffff <__end+0x7fff02ef>,r10
    a006:	1ce2                	addq 28,sp
    a008:	3e0d                	jump [sp+]
    a00a:	7a86                	clear.d r10
    a00c:	1ce2                	addq 28,sp
    a00e:	3e0d                	jump [sp+]
    a010:	6fae 0000 0080      	move.d 80000000 <__end+0x7fff02f0>,r10
    a016:	1ce2                	addq 28,sp
    a018:	3e0d                	jump [sp+]
    a01a:	18e1 699a           	move.d [sp+24],r9
    a01e:	c193                	lslq 1,r9
    a020:	adc6                	sub.d r13,r12
    a022:	ec94                	lsl.d r12,r9
    a024:	14e1 6aaa           	move.d [sp+20],r10
    a028:	eda7                	lsr.d r13,r10
    a02a:	bfe0                	ba 9fea <___fixdfsi+0x4a>
    a02c:	69a7                	or.d r9,r10
	...

0000a030 <___floatunsidf>:
    a030:	84e2                	subq 4,sp
    a032:	7eba                	move srp,[sp]
    a034:	98e2                	subq 24,sp
    a036:	ee0b                	move.d r0,[sp]
    a038:	08e1 708a           	clear.d [sp+8]
    a03c:	6aa6                	test.d r10
    a03e:	4a30                	beq a08a <___floatunsidf+0x5a>
    a040:	6a06                	move.d r10,r0
    a042:	4392                	moveq 3,r9
    a044:	04e1 e99b           	move.d r9,[sp+4]
    a048:	4f9e 3c00           	move.b 0x3c,r9
    a04c:	0ce1 e99b           	move.d r9,[sp+12]
    a050:	3fbd 30a7 0000      	jsr a730 <___clzsi2>
    a056:	6a96                	move.d r10,r9
    a058:	1d92                	addq 29,r9
    a05a:	4470                	bmi a0a0 <___floatunsidf+0x70>
    a05c:	6996                	test.d r9
    a05e:	7830                	beq a0d8 <___floatunsidf+0xa8>
    a060:	6ad6                	move.d r10,r13
    a062:	83d2                	subq 3,r13
    a064:	7e70                	bmi a0e4 <___floatunsidf+0xb4>
    a066:	5fc2                	moveq 31,r12
    a068:	ed04                	lsl.d r13,r0
    a06a:	14e1 e00b           	move.d r0,[sp+20]
    a06e:	10e1 708a           	clear.d [sp+16]
    a072:	5f92                	moveq 31,r9
    a074:	aa96                	sub.d r10,r9
    a076:	0ce1 e99b           	move.d r9,[sp+12]
    a07a:	6ea6                	move.d sp,r10
    a07c:	04a2                	addq 4,r10
    a07e:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    a084:	6e0e                	pop r0
    a086:	14e2                	addq 20,sp
    a088:	3e0d                	jump [sp+]
    a08a:	4292                	moveq 2,r9
    a08c:	04e1 e99b           	move.d r9,[sp+4]
    a090:	6ea6                	move.d sp,r10
    a092:	04a2                	addq 4,r10
    a094:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    a09a:	6e0e                	pop r0
    a09c:	14e2                	addq 20,sp
    a09e:	3e0d                	jump [sp+]
    a0a0:	a995                	neg.d r9,r9
    a0a2:	69c6                	move.d r9,r12
    a0a4:	a0c2                	subq 32,r12
    a0a6:	5270                	bmi a0fa <___floatunsidf+0xca>
    a0a8:	7d86                	clear.d r13
    a0aa:	81d2                	subq 1,r13
    a0ac:	20d7                	and.d r0,r13
    a0ae:	3d25                	sne r13
    a0b0:	bfc3                	asrq 31,r12
    a0b2:	e907                	lsr.d r9,r0
    a0b4:	2c07                	and.d r12,r0
    a0b6:	60d7                	or.d r0,r13
    a0b8:	10e1 eddb           	move.d r13,[sp+16]
    a0bc:	14e1 708a           	clear.d [sp+20]
    a0c0:	5f92                	moveq 31,r9
    a0c2:	aa96                	sub.d r10,r9
    a0c4:	0ce1 e99b           	move.d r9,[sp+12]
    a0c8:	6ea6                	move.d sp,r10
    a0ca:	04a2                	addq 4,r10
    a0cc:	3fbd 84a7 0000      	jsr a784 <___pack_d>
    a0d2:	6e0e                	pop r0
    a0d4:	14e2                	addq 20,sp
    a0d6:	3e0d                	jump [sp+]
    a0d8:	10e1 e00b           	move.d r0,[sp+16]
    a0dc:	14e1 708a           	clear.d [sp+20]
    a0e0:	9be0                	ba a07c <___floatunsidf+0x4c>
    a0e2:	6ea6                	move.d sp,r10
    a0e4:	60d6                	move.d r0,r13
    a0e6:	e1d3                	lsrq 1,r13
    a0e8:	a9c6                	sub.d r9,r12
    a0ea:	ecd7                	lsr.d r12,r13
    a0ec:	14e1 eddb           	move.d r13,[sp+20]
    a0f0:	e904                	lsl.d r9,r0
    a0f2:	10e1 e00b           	move.d r0,[sp+16]
    a0f6:	7de0                	ba a074 <___floatunsidf+0x44>
    a0f8:	5f92                	moveq 31,r9
    a0fa:	4fde 0100           	move.b 0x1,r13
    a0fe:	abe0                	ba a0aa <___floatunsidf+0x7a>
    a100:	e9d4                	lsl.d r9,r13
	...

0000a104 <___Udiv>:
    a104:	88e2                	subq 8,sp
    a106:	fe1b                	movem r1,[sp]
    a108:	6bb6                	test.d r11
    a10a:	ffbd 0201           	blt a210 <___Udiv+0x10c>
    a10e:	6a96                	move.d r10,r9
    a110:	7cb0                	blt a18e <___Udiv+0x8a>
    a112:	7fa2                	moveq -1,r10
    a114:	6bb6                	test.d r11
    a116:	0620                	bne a11e <___Udiv+0x1a>
    a118:	0f05                	nop 
    a11a:	7fb6                	ret 
    a11c:	be1f                	movem [sp+],r1
    a11e:	7086                	clear.d r0
    a120:	e9b6                	cmp.d r9,r11
    a122:	9c90                	bhi a1c0 <___Udiv+0xbc>
    a124:	60a6                	move.d r0,r10
    a126:	04e0                	ba a12c <___Udiv+0x28>
    a128:	7c86                	clear.d r12
    a12a:	6dc6                	move.d r13,r12
    a12c:	2bb6                	add.d r11,r11
    a12e:	6cd6                	move.d r12,r13
    a130:	e9b6                	cmp.d r9,r11
    a132:	f780                	bls a12a <___Udiv+0x26>
    a134:	01d2                	addq 1,r13
    a136:	9e93                	btstq 30,r9
    a138:	deb0                	blt a218 <___Udiv+0x114>
    a13a:	41a2                	moveq 1,r10
    a13c:	eda4                	lsl.d r13,r10
    a13e:	7186                	clear.d r1
    a140:	81b2                	subq 1,r11
    a142:	81d2                	subq 1,r13
    a144:	cfdd 2000           	bound.b 0x20,r13
    a148:	5fd5 3ff8           	adds.w [pc+r13.w],pc
    a14c:	b600                	case 1: -> a202 <___Udiv+0xfe>
    a14e:	b400                	case 2: -> a200 <___Udiv+0xfc>
    a150:	b200                	case 3: -> a1fe <___Udiv+0xfa>
    a152:	b000                	case 4: -> a1fc <___Udiv+0xf8>
    a154:	ae00                	case 5: -> a1fa <___Udiv+0xf6>
    a156:	ac00                	case 6: -> a1f8 <___Udiv+0xf4>
    a158:	aa00                	case 7: -> a1f6 <___Udiv+0xf2>
    a15a:	a800                	case 8: -> a1f4 <___Udiv+0xf0>
    a15c:	a600                	case 9: -> a1f2 <___Udiv+0xee>
    a15e:	a400                	case 10: -> a1f0 <___Udiv+0xec>
    a160:	a200                	case 11: -> a1ee <___Udiv+0xea>
    a162:	a000                	case 12: -> a1ec <___Udiv+0xe8>
    a164:	9e00                	case 13: -> a1ea <___Udiv+0xe6>
    a166:	9c00                	case 14: -> a1e8 <___Udiv+0xe4>
    a168:	9a00                	case 15: -> a1e6 <___Udiv+0xe2>
    a16a:	9800                	case 16: -> a1e4 <___Udiv+0xe0>
    a16c:	9600                	case 17: -> a1e2 <___Udiv+0xde>
    a16e:	9400                	case 18: -> a1e0 <___Udiv+0xdc>
    a170:	9200                	case 19: -> a1de <___Udiv+0xda>
    a172:	9000                	case 20: -> a1dc <___Udiv+0xd8>
    a174:	8e00                	case 21: -> a1da <___Udiv+0xd6>
    a176:	8c00                	case 22: -> a1d8 <___Udiv+0xd4>
    a178:	8a00                	case 23: -> a1d6 <___Udiv+0xd2>
    a17a:	8800                	case 24: -> a1d4 <___Udiv+0xd0>
    a17c:	8600                	case 25: -> a1d2 <___Udiv+0xce>
    a17e:	8400                	case 26: -> a1d0 <___Udiv+0xcc>
    a180:	8200                	case 27: -> a1ce <___Udiv+0xca>
    a182:	8000                	case 28: -> a1cc <___Udiv+0xc8>
    a184:	7e00                	case 29: -> a1ca <___Udiv+0xc6>
    a186:	7c00                	case 30: -> a1c8 <___Udiv+0xc4>
    a188:	7a00                	case 31: -> a1c6 <___Udiv+0xc2>
    a18a:	7800                	case 32: -> a1c4 <___Udiv+0xc0>
    a18c:	b800                	case 33/default: -> a204 <___Udiv+0x100>
    a18e:	6bb6                	test.d r11
    a190:	8930                	beq a11a <___Udiv+0x16>
    a192:	5fd2                	moveq 31,r13
    a194:	4102                	moveq 1,r0
    a196:	81d2                	subq 1,r13
    a198:	60c6                	move.d r0,r12
    a19a:	edc4                	lsl.d r13,r12
    a19c:	2bc7                	and.d r11,r12
    a19e:	f730                	beq a196 <___Udiv+0x92>
    a1a0:	41a2                	moveq 1,r10
    a1a2:	5fc2                	moveq 31,r12
    a1a4:	adc6                	sub.d r13,r12
    a1a6:	6b16                	move.d r11,r1
    a1a8:	ec14                	lsl.d r12,r1
    a1aa:	e196                	cmp.d r1,r9
    a1ac:	9000                	bcc a23e <___Udiv+0x13a>
    a1ae:	0f05                	nop 
    a1b0:	5ec2                	moveq 30,r12
    a1b2:	adc6                	sub.d r13,r12
    a1b4:	6a06                	move.d r10,r0
    a1b6:	ec04                	lsl.d r12,r0
    a1b8:	6bd6                	move.d r11,r13
    a1ba:	ecd4                	lsl.d r12,r13
    a1bc:	63e0                	ba a120 <___Udiv+0x1c>
    a1be:	ad96                	sub.d r13,r9
    a1c0:	7fb6                	ret 
    a1c2:	be1f                	movem [sp+],r1
    a1c4:	fb96                	dstep r11,r9
    a1c6:	fb96                	dstep r11,r9
    a1c8:	fb96                	dstep r11,r9
    a1ca:	fb96                	dstep r11,r9
    a1cc:	fb96                	dstep r11,r9
    a1ce:	fb96                	dstep r11,r9
    a1d0:	fb96                	dstep r11,r9
    a1d2:	fb96                	dstep r11,r9
    a1d4:	fb96                	dstep r11,r9
    a1d6:	fb96                	dstep r11,r9
    a1d8:	fb96                	dstep r11,r9
    a1da:	fb96                	dstep r11,r9
    a1dc:	fb96                	dstep r11,r9
    a1de:	fb96                	dstep r11,r9
    a1e0:	fb96                	dstep r11,r9
    a1e2:	fb96                	dstep r11,r9
    a1e4:	fb96                	dstep r11,r9
    a1e6:	fb96                	dstep r11,r9
    a1e8:	fb96                	dstep r11,r9
    a1ea:	fb96                	dstep r11,r9
    a1ec:	fb96                	dstep r11,r9
    a1ee:	fb96                	dstep r11,r9
    a1f0:	fb96                	dstep r11,r9
    a1f2:	fb96                	dstep r11,r9
    a1f4:	fb96                	dstep r11,r9
    a1f6:	fb96                	dstep r11,r9
    a1f8:	fb96                	dstep r11,r9
    a1fa:	fb96                	dstep r11,r9
    a1fc:	fb96                	dstep r11,r9
    a1fe:	fb96                	dstep r11,r9
    a200:	fb96                	dstep r11,r9
    a202:	fb96                	dstep r11,r9
    a204:	81a2                	subq 1,r10
    a206:	29a7                	and.d r9,r10
    a208:	21a6                	add.d r1,r10
    a20a:	20a6                	add.d r0,r10
    a20c:	7fb6                	ret 
    a20e:	be1f                	movem [sp+],r1
    a210:	eba6                	cmp.d r11,r10
    a212:	3a05                	scc r10
    a214:	7fb6                	ret 
    a216:	be1f                	movem [sp+],r1
    a218:	e1b3                	lsrq 1,r11
    a21a:	e9b6                	cmp.d r9,r11
    a21c:	0e90                	bhi a22c <___Udiv+0x128>
    a21e:	0f05                	nop 
    a220:	ab96                	sub.d r11,r9
    a222:	4112                	moveq 1,r1
    a224:	ec14                	lsl.d r12,r1
    a226:	61a6                	move.d r1,r10
    a228:	17e0                	ba a140 <___Udiv+0x3c>
    a22a:	6cd6                	move.d r12,r13
    a22c:	6ba6                	move.d r11,r10
    a22e:	e1a3                	lsrq 1,r10
    a230:	aa96                	sub.d r10,r9
    a232:	41a2                	moveq 1,r10
    a234:	6a16                	move.d r10,r1
    a236:	ed14                	lsl.d r13,r1
    a238:	eca4                	lsl.d r12,r10
    a23a:	05e0                	ba a140 <___Udiv+0x3c>
    a23c:	6cd6                	move.d r12,r13
    a23e:	6a06                	move.d r10,r0
    a240:	ec04                	lsl.d r12,r0
    a242:	ffed dafe           	ba a120 <___Udiv+0x1c>
    a246:	a196                	sub.d r1,r9

0000a248 <___Div>:
    a248:	84e2                	subq 4,sp
    a24a:	7eba                	move srp,[sp]
    a24c:	90e2                	subq 16,sp
    a24e:	fe3b                	movem r3,[sp]
    a250:	6a06                	move.d r10,r0
    a252:	6b16                	move.d r11,r1
    a254:	66b0                	blt a2bc <___Div+0x74>
    a256:	4122                	moveq 1,r2
    a258:	6006                	test.d r0
    a25a:	48b0                	blt a2a4 <___Div+0x5c>
    a25c:	7386                	clear.d r3
    a25e:	b196                	abs r1,r9
    a260:	3a30                	beq a29c <___Div+0x54>
    a262:	e906                	cmp.d r9,r0
    a264:	2e10                	bcs a294 <___Div+0x4c>
    a266:	60d6                	move.d r0,r13
    a268:	04e0                	ba a26e <___Div+0x26>
    a26a:	7186                	clear.d r1
    a26c:	6c16                	move.d r12,r1
    a26e:	2996                	add.d r9,r9
    a270:	61c6                	move.d r1,r12
    a272:	e906                	cmp.d r9,r0
    a274:	f700                	bcc a26c <___Div+0x24>
    a276:	01c2                	addq 1,r12
    a278:	9e03                	btstq 30,r0
    a27a:	44a0                	bge a2c0 <___Div+0x78>
    a27c:	41a2                	moveq 1,r10
    a27e:	e193                	lsrq 1,r9
    a280:	e906                	cmp.d r9,r0
    a282:	e810                	bcs a36c <___Div+0x124>
    a284:	0f05                	nop 
    a286:	60d6                	move.d r0,r13
    a288:	a9d6                	sub.d r9,r13
    a28a:	41b2                	moveq 1,r11
    a28c:	e1b4                	lsl.d r1,r11
    a28e:	6ba6                	move.d r11,r10
    a290:	32e0                	ba a2c4 <___Div+0x7c>
    a292:	61c6                	move.d r1,r12
    a294:	7a86                	clear.d r10
    a296:	23a6                	add.d r3,r10
    a298:	be3f                	movem [sp+],r3
    a29a:	3e0d                	jump [sp+]
    a29c:	a2a5                	neg.d r2,r10
    a29e:	23a6                	add.d r3,r10
    a2a0:	be3f                	movem [sp+],r3
    a2a2:	3e0d                	jump [sp+]
    a2a4:	9e03                	btstq 30,r0
    a2a6:	6a20                	bne a312 <___Div+0xca>
    a2a8:	a225                	neg.d r2,r2
    a2aa:	61a6                	move.d r1,r10
    a2ac:	62b6                	move.d r2,r11
    a2ae:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    a2b4:	aa06                	sub.d r10,r0
    a2b6:	6236                	move.d r2,r3
    a2b8:	a5e0                	ba a25e <___Div+0x16>
    a2ba:	a005                	neg.d r0,r0
    a2bc:	9be0                	ba a258 <___Div+0x10>
    a2be:	7f22                	moveq -1,r2
    a2c0:	eca4                	lsl.d r12,r10
    a2c2:	7b86                	clear.d r11
    a2c4:	8192                	subq 1,r9
    a2c6:	81c2                	subq 1,r12
    a2c8:	cfcd 2000           	bound.b 0x20,r12
    a2cc:	5fc5 3ff8           	adds.w [pc+r12.w],pc
    a2d0:	8600                	case 1: -> a356 <___Div+0x10e>
    a2d2:	8400                	case 2: -> a354 <___Div+0x10c>
    a2d4:	8200                	case 3: -> a352 <___Div+0x10a>
    a2d6:	8000                	case 4: -> a350 <___Div+0x108>
    a2d8:	7e00                	case 5: -> a34e <___Div+0x106>
    a2da:	7c00                	case 6: -> a34c <___Div+0x104>
    a2dc:	7a00                	case 7: -> a34a <___Div+0x102>
    a2de:	7800                	case 8: -> a348 <___Div+0x100>
    a2e0:	7600                	case 9: -> a346 <___Div+0xfe>
    a2e2:	7400                	case 10: -> a344 <___Div+0xfc>
    a2e4:	7200                	case 11: -> a342 <___Div+0xfa>
    a2e6:	7000                	case 12: -> a340 <___Div+0xf8>
    a2e8:	6e00                	case 13: -> a33e <___Div+0xf6>
    a2ea:	6c00                	case 14: -> a33c <___Div+0xf4>
    a2ec:	6a00                	case 15: -> a33a <___Div+0xf2>
    a2ee:	6800                	case 16: -> a338 <___Div+0xf0>
    a2f0:	6600                	case 17: -> a336 <___Div+0xee>
    a2f2:	6400                	case 18: -> a334 <___Div+0xec>
    a2f4:	6200                	case 19: -> a332 <___Div+0xea>
    a2f6:	6000                	case 20: -> a330 <___Div+0xe8>
    a2f8:	5e00                	case 21: -> a32e <___Div+0xe6>
    a2fa:	5c00                	case 22: -> a32c <___Div+0xe4>
    a2fc:	5a00                	case 23: -> a32a <___Div+0xe2>
    a2fe:	5800                	case 24: -> a328 <___Div+0xe0>
    a300:	5600                	case 25: -> a326 <___Div+0xde>
    a302:	5400                	case 26: -> a324 <___Div+0xdc>
    a304:	5200                	case 27: -> a322 <___Div+0xda>
    a306:	5000                	case 28: -> a320 <___Div+0xd8>
    a308:	4e00                	case 29: -> a31e <___Div+0xd6>
    a30a:	4c00                	case 30: -> a31c <___Div+0xd4>
    a30c:	4a00                	case 31: -> a31a <___Div+0xd2>
    a30e:	4800                	case 32: -> a318 <___Div+0xd0>
    a310:	8800                	case 33/default: -> a358 <___Div+0x110>
    a312:	7386                	clear.d r3
    a314:	49e0                	ba a25e <___Div+0x16>
    a316:	a005                	neg.d r0,r0
    a318:	f9d6                	dstep r9,r13
    a31a:	f9d6                	dstep r9,r13
    a31c:	f9d6                	dstep r9,r13
    a31e:	f9d6                	dstep r9,r13
    a320:	f9d6                	dstep r9,r13
    a322:	f9d6                	dstep r9,r13
    a324:	f9d6                	dstep r9,r13
    a326:	f9d6                	dstep r9,r13
    a328:	f9d6                	dstep r9,r13
    a32a:	f9d6                	dstep r9,r13
    a32c:	f9d6                	dstep r9,r13
    a32e:	f9d6                	dstep r9,r13
    a330:	f9d6                	dstep r9,r13
    a332:	f9d6                	dstep r9,r13
    a334:	f9d6                	dstep r9,r13
    a336:	f9d6                	dstep r9,r13
    a338:	f9d6                	dstep r9,r13
    a33a:	f9d6                	dstep r9,r13
    a33c:	f9d6                	dstep r9,r13
    a33e:	f9d6                	dstep r9,r13
    a340:	f9d6                	dstep r9,r13
    a342:	f9d6                	dstep r9,r13
    a344:	f9d6                	dstep r9,r13
    a346:	f9d6                	dstep r9,r13
    a348:	f9d6                	dstep r9,r13
    a34a:	f9d6                	dstep r9,r13
    a34c:	f9d6                	dstep r9,r13
    a34e:	f9d6                	dstep r9,r13
    a350:	f9d6                	dstep r9,r13
    a352:	f9d6                	dstep r9,r13
    a354:	f9d6                	dstep r9,r13
    a356:	f9d6                	dstep r9,r13
    a358:	81a2                	subq 1,r10
    a35a:	2ad7                	and.d r10,r13
    a35c:	62a6                	move.d r2,r10
    a35e:	2db6                	add.d r13,r11
    a360:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    a366:	23a6                	add.d r3,r10
    a368:	be3f                	movem [sp+],r3
    a36a:	3e0d                	jump [sp+]
    a36c:	69d6                	move.d r9,r13
    a36e:	e1d3                	lsrq 1,r13
    a370:	ad06                	sub.d r13,r0
    a372:	60d6                	move.d r0,r13
    a374:	6ab6                	move.d r10,r11
    a376:	ecb4                	lsl.d r12,r11
    a378:	e1a4                	lsl.d r1,r10
    a37a:	49e0                	ba a2c4 <___Div+0x7c>
    a37c:	61c6                	move.d r1,r12
	...

0000a380 <___Umod>:
    a380:	6bb6                	test.d r11
    a382:	b4b0                	blt a438 <___Umod+0xb8>
    a384:	6aa6                	test.d r10
    a386:	0cb0                	blt a394 <___Umod+0x14>
    a388:	6bb6                	test.d r11
    a38a:	3420                	bne a3c0 <___Umod+0x40>
    a38c:	0f05                	nop 
    a38e:	7fa2                	moveq -1,r10
    a390:	7fb6                	ret 
    a392:	0f05                	nop 
    a394:	6bb6                	test.d r11
    a396:	f930                	beq a390 <___Umod+0x10>
    a398:	5f92                	moveq 31,r9
    a39a:	41c2                	moveq 1,r12
    a39c:	8192                	subq 1,r9
    a39e:	6cd6                	move.d r12,r13
    a3a0:	e9d4                	lsl.d r9,r13
    a3a2:	2bd7                	and.d r11,r13
    a3a4:	f930                	beq a39e <___Umod+0x1e>
    a3a6:	8192                	subq 1,r9
    a3a8:	0192                	addq 1,r9
    a3aa:	5fd2                	moveq 31,r13
    a3ac:	a9d6                	sub.d r9,r13
    a3ae:	6bc6                	move.d r11,r12
    a3b0:	edc4                	lsl.d r13,r12
    a3b2:	eca6                	cmp.d r12,r10
    a3b4:	d000                	bcc a486 <___Umod+0x106>
    a3b6:	5ed2                	moveq 30,r13
    a3b8:	a9d6                	sub.d r9,r13
    a3ba:	6b96                	move.d r11,r9
    a3bc:	ed94                	lsl.d r13,r9
    a3be:	a9a6                	sub.d r9,r10
    a3c0:	eab6                	cmp.d r10,r11
    a3c2:	cd90                	bhi a390 <___Umod+0x10>
    a3c4:	7d86                	clear.d r13
    a3c6:	06e0                	ba a3ce <___Umod+0x4e>
    a3c8:	2bb6                	add.d r11,r11
    a3ca:	69d6                	move.d r9,r13
    a3cc:	2bb6                	add.d r11,r11
    a3ce:	6d96                	move.d r13,r9
    a3d0:	eab6                	cmp.d r10,r11
    a3d2:	f780                	bls a3ca <___Umod+0x4a>
    a3d4:	0192                	addq 1,r9
    a3d6:	9ea3                	btstq 30,r10
    a3d8:	0ea0                	bge a3e8 <___Umod+0x68>
    a3da:	0f05                	nop 
    a3dc:	e1b3                	lsrq 1,r11
    a3de:	eab6                	cmp.d r10,r11
    a3e0:	a890                	bhi a48a <___Umod+0x10a>
    a3e2:	6b96                	move.d r11,r9
    a3e4:	aba6                	sub.d r11,r10
    a3e6:	6d96                	move.d r13,r9
    a3e8:	81b2                	subq 1,r11
    a3ea:	69d6                	move.d r9,r13
    a3ec:	81d2                	subq 1,r13
    a3ee:	cfdd 2000           	bound.b 0x20,r13
    a3f2:	5fd5 3ff8           	adds.w [pc+r13.w],pc
    a3f6:	8a00                	case 1: -> a480 <___Umod+0x100>
    a3f8:	8800                	case 2: -> a47e <___Umod+0xfe>
    a3fa:	8600                	case 3: -> a47c <___Umod+0xfc>
    a3fc:	8400                	case 4: -> a47a <___Umod+0xfa>
    a3fe:	8200                	case 5: -> a478 <___Umod+0xf8>
    a400:	8000                	case 6: -> a476 <___Umod+0xf6>
    a402:	7e00                	case 7: -> a474 <___Umod+0xf4>
    a404:	7c00                	case 8: -> a472 <___Umod+0xf2>
    a406:	7a00                	case 9: -> a470 <___Umod+0xf0>
    a408:	7800                	case 10: -> a46e <___Umod+0xee>
    a40a:	7600                	case 11: -> a46c <___Umod+0xec>
    a40c:	7400                	case 12: -> a46a <___Umod+0xea>
    a40e:	7200                	case 13: -> a468 <___Umod+0xe8>
    a410:	7000                	case 14: -> a466 <___Umod+0xe6>
    a412:	6e00                	case 15: -> a464 <___Umod+0xe4>
    a414:	6c00                	case 16: -> a462 <___Umod+0xe2>
    a416:	6a00                	case 17: -> a460 <___Umod+0xe0>
    a418:	6800                	case 18: -> a45e <___Umod+0xde>
    a41a:	6600                	case 19: -> a45c <___Umod+0xdc>
    a41c:	6400                	case 20: -> a45a <___Umod+0xda>
    a41e:	6200                	case 21: -> a458 <___Umod+0xd8>
    a420:	6000                	case 22: -> a456 <___Umod+0xd6>
    a422:	5e00                	case 23: -> a454 <___Umod+0xd4>
    a424:	5c00                	case 24: -> a452 <___Umod+0xd2>
    a426:	5a00                	case 25: -> a450 <___Umod+0xd0>
    a428:	5800                	case 26: -> a44e <___Umod+0xce>
    a42a:	5600                	case 27: -> a44c <___Umod+0xcc>
    a42c:	5400                	case 28: -> a44a <___Umod+0xca>
    a42e:	5200                	case 29: -> a448 <___Umod+0xc8>
    a430:	5000                	case 30: -> a446 <___Umod+0xc6>
    a432:	4e00                	case 31: -> a444 <___Umod+0xc4>
    a434:	4c00                	case 32: -> a442 <___Umod+0xc2>
    a436:	8c00                	case 33/default: -> a482 <___Umod+0x102>
    a438:	eab6                	cmp.d r10,r11
    a43a:	5590                	bhi a390 <___Umod+0x10>
    a43c:	0f05                	nop 
    a43e:	7fb6                	ret 
    a440:	aba6                	sub.d r11,r10
    a442:	fba6                	dstep r11,r10
    a444:	fba6                	dstep r11,r10
    a446:	fba6                	dstep r11,r10
    a448:	fba6                	dstep r11,r10
    a44a:	fba6                	dstep r11,r10
    a44c:	fba6                	dstep r11,r10
    a44e:	fba6                	dstep r11,r10
    a450:	fba6                	dstep r11,r10
    a452:	fba6                	dstep r11,r10
    a454:	fba6                	dstep r11,r10
    a456:	fba6                	dstep r11,r10
    a458:	fba6                	dstep r11,r10
    a45a:	fba6                	dstep r11,r10
    a45c:	fba6                	dstep r11,r10
    a45e:	fba6                	dstep r11,r10
    a460:	fba6                	dstep r11,r10
    a462:	fba6                	dstep r11,r10
    a464:	fba6                	dstep r11,r10
    a466:	fba6                	dstep r11,r10
    a468:	fba6                	dstep r11,r10
    a46a:	fba6                	dstep r11,r10
    a46c:	fba6                	dstep r11,r10
    a46e:	fba6                	dstep r11,r10
    a470:	fba6                	dstep r11,r10
    a472:	fba6                	dstep r11,r10
    a474:	fba6                	dstep r11,r10
    a476:	fba6                	dstep r11,r10
    a478:	fba6                	dstep r11,r10
    a47a:	fba6                	dstep r11,r10
    a47c:	fba6                	dstep r11,r10
    a47e:	fba6                	dstep r11,r10
    a480:	fba6                	dstep r11,r10
    a482:	7fb6                	ret 
    a484:	e9a7                	lsr.d r9,r10
    a486:	39e0                	ba a3c0 <___Umod+0x40>
    a488:	aca6                	sub.d r12,r10
    a48a:	e193                	lsrq 1,r9
    a48c:	a9a6                	sub.d r9,r10
    a48e:	59e0                	ba a3e8 <___Umod+0x68>
    a490:	6d96                	move.d r13,r9
	...

0000a494 <___Mod>:
    a494:	84e2                	subq 4,sp
    a496:	7eba                	move srp,[sp]
    a498:	84e2                	subq 4,sp
    a49a:	ee0b                	move.d r0,[sp]
    a49c:	6ac6                	move.d r10,r12
    a49e:	bb96                	abs r11,r9
    a4a0:	6cc6                	test.d r12
    a4a2:	deb0                	blt a582 <___Mod+0xee>
    a4a4:	41a2                	moveq 1,r10
    a4a6:	6996                	test.d r9
    a4a8:	7a30                	beq a524 <___Mod+0x90>
    a4aa:	e9c6                	cmp.d r9,r12
    a4ac:	7810                	bcs a526 <___Mod+0x92>
    a4ae:	6cd6                	move.d r12,r13
    a4b0:	04e0                	ba a4b6 <___Mod+0x22>
    a4b2:	7086                	clear.d r0
    a4b4:	6b06                	move.d r11,r0
    a4b6:	2996                	add.d r9,r9
    a4b8:	60b6                	move.d r0,r11
    a4ba:	e9c6                	cmp.d r9,r12
    a4bc:	f700                	bcc a4b4 <___Mod+0x20>
    a4be:	01b2                	addq 1,r11
    a4c0:	9ec3                	btstq 30,r12
    a4c2:	10a0                	bge a4d4 <___Mod+0x40>
    a4c4:	0f05                	nop 
    a4c6:	e193                	lsrq 1,r9
    a4c8:	e9c6                	cmp.d r9,r12
    a4ca:	c410                	bcs a590 <___Mod+0xfc>
    a4cc:	69d6                	move.d r9,r13
    a4ce:	6cd6                	move.d r12,r13
    a4d0:	a9d6                	sub.d r9,r13
    a4d2:	60b6                	move.d r0,r11
    a4d4:	8192                	subq 1,r9
    a4d6:	6bc6                	move.d r11,r12
    a4d8:	81c2                	subq 1,r12
    a4da:	cfcd 2000           	bound.b 0x20,r12
    a4de:	5fc5 3ff8           	adds.w [pc+r12.w],pc
    a4e2:	8e00                	case 1: -> a570 <___Mod+0xdc>
    a4e4:	8c00                	case 2: -> a56e <___Mod+0xda>
    a4e6:	8a00                	case 3: -> a56c <___Mod+0xd8>
    a4e8:	8800                	case 4: -> a56a <___Mod+0xd6>
    a4ea:	8600                	case 5: -> a568 <___Mod+0xd4>
    a4ec:	8400                	case 6: -> a566 <___Mod+0xd2>
    a4ee:	8200                	case 7: -> a564 <___Mod+0xd0>
    a4f0:	8000                	case 8: -> a562 <___Mod+0xce>
    a4f2:	7e00                	case 9: -> a560 <___Mod+0xcc>
    a4f4:	7c00                	case 10: -> a55e <___Mod+0xca>
    a4f6:	7a00                	case 11: -> a55c <___Mod+0xc8>
    a4f8:	7800                	case 12: -> a55a <___Mod+0xc6>
    a4fa:	7600                	case 13: -> a558 <___Mod+0xc4>
    a4fc:	7400                	case 14: -> a556 <___Mod+0xc2>
    a4fe:	7200                	case 15: -> a554 <___Mod+0xc0>
    a500:	7000                	case 16: -> a552 <___Mod+0xbe>
    a502:	6e00                	case 17: -> a550 <___Mod+0xbc>
    a504:	6c00                	case 18: -> a54e <___Mod+0xba>
    a506:	6a00                	case 19: -> a54c <___Mod+0xb8>
    a508:	6800                	case 20: -> a54a <___Mod+0xb6>
    a50a:	6600                	case 21: -> a548 <___Mod+0xb4>
    a50c:	6400                	case 22: -> a546 <___Mod+0xb2>
    a50e:	6200                	case 23: -> a544 <___Mod+0xb0>
    a510:	6000                	case 24: -> a542 <___Mod+0xae>
    a512:	5e00                	case 25: -> a540 <___Mod+0xac>
    a514:	5c00                	case 26: -> a53e <___Mod+0xaa>
    a516:	5a00                	case 27: -> a53c <___Mod+0xa8>
    a518:	5800                	case 28: -> a53a <___Mod+0xa6>
    a51a:	5600                	case 29: -> a538 <___Mod+0xa4>
    a51c:	5400                	case 30: -> a536 <___Mod+0xa2>
    a51e:	5200                	case 31: -> a534 <___Mod+0xa0>
    a520:	5000                	case 32: -> a532 <___Mod+0x9e>
    a522:	9000                	case 33/default: -> a572 <___Mod+0xde>
    a524:	7fc2                	moveq -1,r12
    a526:	6cb6                	move.d r12,r11
    a528:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    a52e:	6e0e                	pop r0
    a530:	3e0d                	jump [sp+]
    a532:	f9d6                	dstep r9,r13
    a534:	f9d6                	dstep r9,r13
    a536:	f9d6                	dstep r9,r13
    a538:	f9d6                	dstep r9,r13
    a53a:	f9d6                	dstep r9,r13
    a53c:	f9d6                	dstep r9,r13
    a53e:	f9d6                	dstep r9,r13
    a540:	f9d6                	dstep r9,r13
    a542:	f9d6                	dstep r9,r13
    a544:	f9d6                	dstep r9,r13
    a546:	f9d6                	dstep r9,r13
    a548:	f9d6                	dstep r9,r13
    a54a:	f9d6                	dstep r9,r13
    a54c:	f9d6                	dstep r9,r13
    a54e:	f9d6                	dstep r9,r13
    a550:	f9d6                	dstep r9,r13
    a552:	f9d6                	dstep r9,r13
    a554:	f9d6                	dstep r9,r13
    a556:	f9d6                	dstep r9,r13
    a558:	f9d6                	dstep r9,r13
    a55a:	f9d6                	dstep r9,r13
    a55c:	f9d6                	dstep r9,r13
    a55e:	f9d6                	dstep r9,r13
    a560:	f9d6                	dstep r9,r13
    a562:	f9d6                	dstep r9,r13
    a564:	f9d6                	dstep r9,r13
    a566:	f9d6                	dstep r9,r13
    a568:	f9d6                	dstep r9,r13
    a56a:	f9d6                	dstep r9,r13
    a56c:	f9d6                	dstep r9,r13
    a56e:	f9d6                	dstep r9,r13
    a570:	f9d6                	dstep r9,r13
    a572:	6dc6                	move.d r13,r12
    a574:	ebc7                	lsr.d r11,r12
    a576:	6cb6                	move.d r12,r11
    a578:	3fbd 9ca5 0000      	jsr a59c <___Mul>
    a57e:	6e0e                	pop r0
    a580:	3e0d                	jump [sp+]
    a582:	9ec3                	btstq 30,r12
    a584:	0420                	bne a58a <___Mod+0xf6>
    a586:	0f05                	nop 
    a588:	29c6                	add.d r9,r12
    a58a:	acc5                	neg.d r12,r12
    a58c:	19e0                	ba a4a6 <___Mod+0x12>
    a58e:	7fa2                	moveq -1,r10
    a590:	e1d3                	lsrq 1,r13
    a592:	adc6                	sub.d r13,r12
    a594:	6cd6                	move.d r12,r13
    a596:	3de0                	ba a4d4 <___Mod+0x40>
    a598:	60b6                	move.d r0,r11
	...

0000a59c <___Mul>:
    a59c:	6ac6                	move.d r10,r12
    a59e:	6b96                	move.d r11,r9
    a5a0:	ec95                	bound.d r12,r9
    a5a2:	df9c ffff           	cmpu.w 0xffff,r9
    a5a6:	7a80                	bls a622 <___Mul+0x86>
    a5a8:	6cd6                	move.d r12,r13
    a5aa:	5b94                	movu.w r11,r9
    a5ac:	d0d3                	lslq 16,r13
    a5ae:	f9d7                	mstep r9,r13
    a5b0:	f9d7                	mstep r9,r13
    a5b2:	f9d7                	mstep r9,r13
    a5b4:	f9d7                	mstep r9,r13
    a5b6:	f9d7                	mstep r9,r13
    a5b8:	f9d7                	mstep r9,r13
    a5ba:	f9d7                	mstep r9,r13
    a5bc:	f9d7                	mstep r9,r13
    a5be:	f9d7                	mstep r9,r13
    a5c0:	f9d7                	mstep r9,r13
    a5c2:	f9d7                	mstep r9,r13
    a5c4:	f9d7                	mstep r9,r13
    a5c6:	f9d7                	mstep r9,r13
    a5c8:	f9d7                	mstep r9,r13
    a5ca:	f9d7                	mstep r9,r13
    a5cc:	f9d7                	mstep r9,r13
    a5ce:	7a46                	clear.w r10
    a5d0:	6aa6                	test.d r10
    a5d2:	f9a7                	mstep r9,r10
    a5d4:	f9a7                	mstep r9,r10
    a5d6:	f9a7                	mstep r9,r10
    a5d8:	f9a7                	mstep r9,r10
    a5da:	f9a7                	mstep r9,r10
    a5dc:	f9a7                	mstep r9,r10
    a5de:	f9a7                	mstep r9,r10
    a5e0:	f9a7                	mstep r9,r10
    a5e2:	f9a7                	mstep r9,r10
    a5e4:	f9a7                	mstep r9,r10
    a5e6:	f9a7                	mstep r9,r10
    a5e8:	f9a7                	mstep r9,r10
    a5ea:	f9a7                	mstep r9,r10
    a5ec:	f9a7                	mstep r9,r10
    a5ee:	f9a7                	mstep r9,r10
    a5f0:	f9a7                	mstep r9,r10
    a5f2:	5cc4                	movu.w r12,r12
    a5f4:	6b96                	move.d r11,r9
    a5f6:	7946                	clear.w r9
    a5f8:	6996                	test.d r9
    a5fa:	fc97                	mstep r12,r9
    a5fc:	fc97                	mstep r12,r9
    a5fe:	fc97                	mstep r12,r9
    a600:	fc97                	mstep r12,r9
    a602:	fc97                	mstep r12,r9
    a604:	fc97                	mstep r12,r9
    a606:	fc97                	mstep r12,r9
    a608:	fc97                	mstep r12,r9
    a60a:	fc97                	mstep r12,r9
    a60c:	fc97                	mstep r12,r9
    a60e:	fc97                	mstep r12,r9
    a610:	fc97                	mstep r12,r9
    a612:	fc97                	mstep r12,r9
    a614:	fc97                	mstep r12,r9
    a616:	fc97                	mstep r12,r9
    a618:	fc97                	mstep r12,r9
    a61a:	19a6                	add.w r9,r10
    a61c:	d0a3                	lslq 16,r10
    a61e:	7fb6                	ret 
    a620:	2da6                	add.d r13,r10
    a622:	69a6                	move.d r9,r10
    a624:	bba7                	xor r11,r10
    a626:	bca7                	xor r12,r10
    a628:	dfac ffff           	cmpu.w 0xffff,r10
    a62c:	5280                	bls a680 <___Mul+0xe4>
    a62e:	59d4                	movu.w r9,r13
    a630:	5dd4                	movu.w r13,r13
    a632:	6a96                	move.d r10,r9
    a634:	d093                	lslq 16,r9
    a636:	fd97                	mstep r13,r9
    a638:	fd97                	mstep r13,r9
    a63a:	fd97                	mstep r13,r9
    a63c:	fd97                	mstep r13,r9
    a63e:	fd97                	mstep r13,r9
    a640:	fd97                	mstep r13,r9
    a642:	fd97                	mstep r13,r9
    a644:	fd97                	mstep r13,r9
    a646:	fd97                	mstep r13,r9
    a648:	fd97                	mstep r13,r9
    a64a:	fd97                	mstep r13,r9
    a64c:	fd97                	mstep r13,r9
    a64e:	fd97                	mstep r13,r9
    a650:	fd97                	mstep r13,r9
    a652:	fd97                	mstep r13,r9
    a654:	fd97                	mstep r13,r9
    a656:	7a46                	clear.w r10
    a658:	6aa6                	test.d r10
    a65a:	fda7                	mstep r13,r10
    a65c:	fda7                	mstep r13,r10
    a65e:	fda7                	mstep r13,r10
    a660:	fda7                	mstep r13,r10
    a662:	fda7                	mstep r13,r10
    a664:	fda7                	mstep r13,r10
    a666:	fda7                	mstep r13,r10
    a668:	fda7                	mstep r13,r10
    a66a:	fda7                	mstep r13,r10
    a66c:	fda7                	mstep r13,r10
    a66e:	fda7                	mstep r13,r10
    a670:	fda7                	mstep r13,r10
    a672:	fda7                	mstep r13,r10
    a674:	fda7                	mstep r13,r10
    a676:	fda7                	mstep r13,r10
    a678:	fda7                	mstep r13,r10
    a67a:	d0a3                	lslq 16,r10
    a67c:	7fb6                	ret 
    a67e:	29a6                	add.d r9,r10
    a680:	5994                	movu.w r9,r9
    a682:	d0a3                	lslq 16,r10
    a684:	f9a7                	mstep r9,r10
    a686:	f9a7                	mstep r9,r10
    a688:	f9a7                	mstep r9,r10
    a68a:	f9a7                	mstep r9,r10
    a68c:	f9a7                	mstep r9,r10
    a68e:	f9a7                	mstep r9,r10
    a690:	f9a7                	mstep r9,r10
    a692:	f9a7                	mstep r9,r10
    a694:	f9a7                	mstep r9,r10
    a696:	f9a7                	mstep r9,r10
    a698:	f9a7                	mstep r9,r10
    a69a:	f9a7                	mstep r9,r10
    a69c:	f9a7                	mstep r9,r10
    a69e:	f9a7                	mstep r9,r10
    a6a0:	f9a7                	mstep r9,r10
    a6a2:	7fb6                	ret 
    a6a4:	f9a7                	mstep r9,r10
	...

0000a6a8 <___muldi3>:
    a6a8:	84e2                	subq 4,sp
    a6aa:	7eba                	move srp,[sp]
    a6ac:	8fec 4000           	subu.b 0x40,sp
    a6b0:	fe7b                	movem r7,[sp]
    a6b2:	6a26                	move.d r10,r2
    a6b4:	6c16                	move.d r12,r1
    a6b6:	24e1 ebbb           	move.d r11,[sp+36]
    a6ba:	2ce1 eddb           	move.d r13,[sp+44]
    a6be:	5a74                	movu.w r10,r7
    a6c0:	6a36                	move.d r10,r3
    a6c2:	f033                	lsrq 16,r3
    a6c4:	5c64                	movu.w r12,r6
    a6c6:	6c46                	move.d r12,r4
    a6c8:	f043                	lsrq 16,r4
    a6ca:	6f0e 9ca5 0000      	move.d a59c <___Mul>,r0
    a6d0:	66a6                	move.d r6,r10
    a6d2:	67b6                	move.d r7,r11
    a6d4:	b0b9                	jsr r0
    a6d6:	6a56                	move.d r10,r5
    a6d8:	64a6                	move.d r4,r10
    a6da:	67b6                	move.d r7,r11
    a6dc:	b0b9                	jsr r0
    a6de:	6a76                	move.d r10,r7
    a6e0:	66a6                	move.d r6,r10
    a6e2:	63b6                	move.d r3,r11
    a6e4:	b0b9                	jsr r0
    a6e6:	6a66                	move.d r10,r6
    a6e8:	64a6                	move.d r4,r10
    a6ea:	63b6                	move.d r3,r11
    a6ec:	b0b9                	jsr r0
    a6ee:	6696                	move.d r6,r9
    a6f0:	2796                	add.d r7,r9
    a6f2:	65c6                	move.d r5,r12
    a6f4:	f0c3                	lsrq 16,r12
    a6f6:	2c96                	add.d r12,r9
    a6f8:	e966                	cmp.d r9,r6
    a6fa:	0880                	bls a704 <___muldi3+0x5c>
    a6fc:	0f05                	nop 
    a6fe:	2fae 0000 0100      	add.d 10000 <__end+0x2f0>,r10
    a704:	6936                	move.d r9,r3
    a706:	f033                	lsrq 16,r3
    a708:	2a36                	add.d r10,r3
    a70a:	6946                	move.d r9,r4
    a70c:	d043                	lslq 16,r4
    a70e:	1544                	addu.w r5,r4
    a710:	62a6                	move.d r2,r10
    a712:	2ce1 6bba           	move.d [sp+44],r11
    a716:	b0b9                	jsr r0
    a718:	6a26                	move.d r10,r2
    a71a:	61a6                	move.d r1,r10
    a71c:	24e1 6bba           	move.d [sp+36],r11
    a720:	b0b9                	jsr r0
    a722:	62b6                	move.d r2,r11
    a724:	2ab6                	add.d r10,r11
    a726:	64a6                	move.d r4,r10
    a728:	23b6                	add.d r3,r11
    a72a:	be7f                	movem [sp+],r7
    a72c:	20e2                	addq 32,sp
    a72e:	3e0d                	jump [sp+]

0000a730 <___clzsi2>:
    a730:	dfac ffff           	cmpu.w 0xffff,r10
    a734:	1a90                	bhi a750 <___clzsi2+0x20>
    a736:	4892                	moveq 8,r9
    a738:	5892                	moveq 24,r9
    a73a:	cfac ff00           	cmpu.b 0xff,r10
    a73e:	2e80                	bls a76e <___clzsi2+0x3e>
    a740:	48d2                	moveq 8,r13
    a742:	eda7                	lsr.d r13,r10
    a744:	6fad bcad 0000 8a98 	subu.b [r10+adbc <___clz_tab>],r9,r10
    a74c:	7fb6                	ret 
    a74e:	0f05                	nop 
    a750:	efae ffff ff00      	cmp.d ffffff <__end+0xff02ef>,r10
    a756:	eb90                	bhi a742 <___clzsi2+0x12>
    a758:	58d2                	moveq 24,r13
    a75a:	4f9e 1000           	move.b 0x10,r9
    a75e:	69d6                	move.d r9,r13
    a760:	eda7                	lsr.d r13,r10
    a762:	6fad bcad 0000 8a98 	subu.b [r10+adbc <___clz_tab>],r9,r10
    a76a:	7fb6                	ret 
    a76c:	0f05                	nop 
    a76e:	4f9e 2000           	move.b 0x20,r9
    a772:	7d06                	clear.b r13
    a774:	eda7                	lsr.d r13,r10
    a776:	6fad bcad 0000 8a98 	subu.b [r10+adbc <___clz_tab>],r9,r10
    a77e:	7fb6                	ret 
    a780:	0f05                	nop 
	...

0000a784 <___pack_d>:
    a784:	84e2                	subq 4,sp
    a786:	7eba                	move srp,[sp]
    a788:	b4e2                	subq 52,sp
    a78a:	fe6b                	movem r6,[sp]
    a78c:	84e2                	subq 4,sp
    a78e:	ee8b                	move.d r8,[sp]
    a790:	0ca1 600a           	move.d [r10+12],r0
    a794:	10a1 611a           	move.d [r10+16],r1
    a798:	04a1 666a           	move.d [r10+4],r6
    a79c:	6aba                	move.d [r10],r11
    a79e:	c1b2                	cmpq 1,r11
    a7a0:	ff8d 0201           	bls a8a6 <___pack_d+0x122>
    a7a4:	c4b2                	cmpq 4,r11
    a7a6:	f430                	beq a89c <___pack_d+0x118>
    a7a8:	c2b2                	cmpq 2,r11
    a7aa:	7030                	beq a81c <___pack_d+0x98>
    a7ac:	7d46                	clear.w r13
    a7ae:	6006                	test.d r0
    a7b0:	b015                	ax 
    a7b2:	6116                	test.d r1
    a7b4:	6630                	beq a81c <___pack_d+0x98>
    a7b6:	0f05                	nop 
    a7b8:	08a1 6bba           	move.d [r10+8],r11
    a7bc:	ffbc 02fc           	cmps.w -1022,r11
    a7c0:	fab0                	blt a8bc <___pack_d+0x138>
    a7c2:	0f05                	nop 
    a7c4:	dfbc ff03           	cmpu.w 0x3ff,r11
    a7c8:	d2c0                	bgt a89c <___pack_d+0x118>
    a7ca:	0f05                	nop 
    a7cc:	7a86                	clear.d r10
    a7ce:	6a96                	move.d r10,r9
    a7d0:	40a4                	movu.b r0,r10
    a7d2:	6a86                	move.d r10,r8
    a7d4:	cf8c 8000           	cmpu.b 0x80,r8
    a7d8:	b015                	ax 
    a7da:	c092                	cmpq 0,r9
    a7dc:	a230                	beq a880 <___pack_d+0xfc>
    a7de:	7386                	clear.d r3
    a7e0:	0f0c 7f00           	addu.b 0x7f,r0
    a7e4:	b015                	ax 
    a7e6:	0012                	addq 0,r1
    a7e8:	7fc2                	moveq -1,r12
    a7ea:	6fde ffff ff1f      	move.d 1fffffff <__end+0x1fff02ef>,r13
    a7f0:	ec06                	cmp.d r12,r0
    a7f2:	b015                	ax 
    a7f4:	ed16                	cmp.d r13,r1
    a7f6:	7090                	bhi a868 <___pack_d+0xe4>
    a7f8:	6196                	move.d r1,r9
    a7fa:	6bd6                	move.d r11,r13
    a7fc:	1fdc ff03           	addu.w 0x3ff,r13
    a800:	6196                	move.d r1,r9
    a802:	d893                	lslq 24,r9
    a804:	60a6                	move.d r0,r10
    a806:	e8a3                	lsrq 8,r10
    a808:	69a7                	or.d r9,r10
    a80a:	6196                	move.d r1,r9
    a80c:	e893                	lsrq 8,r9
    a80e:	2f9f ffff 0f00      	and.d fffff <__end+0xf02ef>,r9
    a814:	1fdf ff07           	and.w 0x7ff,r13
    a818:	08e0                	ba a822 <___pack_d+0x9e>
    a81a:	69c6                	move.d r9,r12
    a81c:	7a86                	clear.d r10
    a81e:	7986                	clear.d r9
    a820:	69c6                	move.d r9,r12
    a822:	2fcf ffff 0f00      	and.d fffff <__end+0xf02ef>,r12
    a828:	34e1 699a           	move.d [sp+52],r9
    a82c:	2f9f 0000 f0ff      	and.d 0xfff00000,r9
    a832:	6c97                	or.d r12,r9
    a834:	34e1 e99b           	move.d r9,[sp+52]
    a838:	1fdf ff07           	and.w 0x7ff,r13
    a83c:	c4d3                	lslq 4,r13
    a83e:	36e1 599a           	move.w [sp+54],r9
    a842:	1f9f 0f80           	and.w 0x800f,r9
    a846:	5d97                	or.w r13,r9
    a848:	36e1 d99b           	move.w r9,[sp+54]
    a84c:	c763                	lslq 7,r6
    a84e:	37e1 499a           	move.b [sp+55],r9
    a852:	0f9f 7f00           	and.b 0x7f,r9
    a856:	4697                	or.b r6,r9
    a858:	37e1 c99b           	move.b r9,[sp+55]
    a85c:	34e1 6bba           	move.d [sp+52],r11
    a860:	6e8e                	pop r8
    a862:	be6f                	movem [sp+],r6
    a864:	18e2                	addq 24,sp
    a866:	3e0d                	jump [sp+]
    a868:	61c6                	move.d r1,r12
    a86a:	dfc3                	lslq 31,r12
    a86c:	60d6                	move.d r0,r13
    a86e:	e1d3                	lsrq 1,r13
    a870:	e193                	lsrq 1,r9
    a872:	6c06                	move.d r12,r0
    a874:	6d07                	or.d r13,r0
    a876:	6bd6                	move.d r11,r13
    a878:	1fdc 0004           	addu.w 0x400,r13
    a87c:	83e0                	ba a800 <___pack_d+0x7c>
    a87e:	6916                	move.d r9,r1
    a880:	5024                	movu.w r0,r2
    a882:	1f2f 0001           	and.w 0x100,r2
    a886:	6226                	test.d r2
    a888:	b015                	ax 
    a88a:	6336                	test.d r3
    a88c:	5b30                	beq a7e8 <___pack_d+0x64>
    a88e:	7fc2                	moveq -1,r12
    a890:	0f0c 8000           	addu.b 0x80,r0
    a894:	b015                	ax 
    a896:	0012                	addq 0,r1
    a898:	51e0                	ba a7ea <___pack_d+0x66>
    a89a:	0f05                	nop 
    a89c:	5fde ff07           	move.w 0x7ff,r13
    a8a0:	7a86                	clear.d r10
    a8a2:	7de0                	ba a820 <___pack_d+0x9c>
    a8a4:	7986                	clear.d r9
    a8a6:	6196                	move.d r1,r9
    a8a8:	6f9f 0000 0800      	or.d 80000 <__end+0x702f0>,r9
    a8ae:	2f9f ffff 0f00      	and.d fffff <__end+0xf02ef>,r9
    a8b4:	5fde ff07           	move.w 0x7ff,r13
    a8b8:	67e0                	ba a820 <___pack_d+0x9c>
    a8ba:	60a6                	move.d r0,r10
    a8bc:	7f3c 02fc           	movs.w -1022,r3
    a8c0:	ab36                	sub.d r11,r3
    a8c2:	cf3c 3800           	cmpu.b 0x38,r3
    a8c6:	a0c0                	bgt a968 <___pack_d+0x1e4>
    a8c8:	7486                	clear.d r4
    a8ca:	60a6                	move.d r0,r10
    a8cc:	61b6                	move.d r1,r11
    a8ce:	63c6                	move.d r3,r12
    a8d0:	3fbd 34ab 0000      	jsr ab34 <___lshrdi3>
    a8d6:	6a26                	move.d r10,r2
    a8d8:	6b86                	move.d r11,r8
    a8da:	41a2                	moveq 1,r10
    a8dc:	7b86                	clear.d r11
    a8de:	63c6                	move.d r3,r12
    a8e0:	3fbd 74ab 0000      	jsr ab74 <___ashldi3>
    a8e6:	81a2                	subq 1,r10
    a8e8:	b015                	ax 
    a8ea:	80b2                	subq 0,r11
    a8ec:	6a96                	move.d r10,r9
    a8ee:	2097                	and.d r0,r9
    a8f0:	6bd6                	move.d r11,r13
    a8f2:	21d7                	and.d r1,r13
    a8f4:	6d97                	or.d r13,r9
    a8f6:	3925                	sne r9
    a8f8:	6946                	move.d r9,r4
    a8fa:	6247                	or.d r2,r4
    a8fc:	24e1 708a           	clear.d [sp+36]
    a900:	4494                	movu.b r4,r9
    a902:	20e1 e99b           	move.d r9,[sp+32]
    a906:	20e1 699a           	move.d [sp+32],r9
    a90a:	24e1 6aaa           	move.d [sp+36],r10
    a90e:	cf9c 8000           	cmpu.b 0x80,r9
    a912:	b015                	ax 
    a914:	c0a2                	cmpq 0,r10
    a916:	5220                	bne a96a <___pack_d+0x1e6>
    a918:	6856                	move.d r8,r5
    a91a:	2ce1 708a           	clear.d [sp+44]
    a91e:	54a4                	movu.w r4,r10
    a920:	1faf 0001           	and.w 0x100,r10
    a924:	28e1 eaab           	move.d r10,[sp+40]
    a928:	28e1 a00b           	test.d [sp+40]
    a92c:	b015                	ax 
    a92e:	2ce1 a00b           	test.d [sp+44]
    a932:	0c30                	beq a940 <___pack_d+0x1bc>
    a934:	6596                	move.d r5,r9
    a936:	0f4c 8000           	addu.b 0x80,r4
    a93a:	b015                	ax 
    a93c:	0052                	addq 0,r5
    a93e:	6596                	move.d r5,r9
    a940:	d893                	lslq 24,r9
    a942:	64a6                	move.d r4,r10
    a944:	e8a3                	lsrq 8,r10
    a946:	69a7                	or.d r9,r10
    a948:	6596                	move.d r5,r9
    a94a:	e893                	lsrq 8,r9
    a94c:	2f9f ffff 0f00      	and.d fffff <__end+0xf02ef>,r9
    a952:	ef4e ffff ffff      	cmp.d 0xffffffff,r4
    a958:	b015                	ax 
    a95a:	ef5e ffff ff0f      	cmp.d fffffff <__end+0xfff02ef>,r5
    a960:	3d95                	shi r13
    a962:	ffed bcfe           	ba a822 <___pack_d+0x9e>
    a966:	69c6                	move.d r9,r12
    a968:	7586                	clear.d r5
    a96a:	0f4c 7f00           	addu.b 0x7f,r4
    a96e:	b015                	ax 
    a970:	0052                	addq 0,r5
    a972:	cde0                	ba a940 <___pack_d+0x1bc>
    a974:	6596                	move.d r5,r9
	...

0000a978 <___unpack_d>:
    a978:	98e2                	subq 24,sp
    a97a:	fe5b                	movem r5,[sp]
    a97c:	84e2                	subq 4,sp
    a97e:	ee8b                	move.d r8,[sp]
    a980:	04a1 644a           	move.d [r10+4],r4
    a984:	2f4f ffff 0f00      	and.d fffff <__end+0xf02ef>,r4
    a98a:	6a0a                	move.d [r10],r0
    a98c:	06a1 5558           	movu.w [r10+6],r5
    a990:	e453                	lsrq 4,r5
    a992:	2f5f ff07 0000      	and.d 7ff <_.tmp+0x7bf>,r5
    a998:	07a1 4aa8           	movu.b [r10+7],r10
    a99c:	e7a3                	lsrq 7,r10
    a99e:	04b1 eaab           	move.d r10,[r11+4]
    a9a2:	6556                	test.d r5
    a9a4:	7020                	bne aa16 <___unpack_d+0x9e>
    a9a6:	6416                	move.d r4,r1
    a9a8:	6006                	test.d r0
    a9aa:	b015                	ax 
    a9ac:	6116                	test.d r1
    a9ae:	9830                	beq aa48 <___unpack_d+0xd0>
    a9b0:	64d6                	move.d r4,r13
    a9b2:	7fac 02fc           	movs.w -1022,r10
    a9b6:	08b1 eaab           	move.d r10,[r11+8]
    a9ba:	60a6                	move.d r0,r10
    a9bc:	f8a3                	lsrq 24,r10
    a9be:	c8d3                	lslq 8,r13
    a9c0:	6ad7                	or.d r10,r13
    a9c2:	60c6                	move.d r0,r12
    a9c4:	c8c3                	lslq 8,r12
    a9c6:	4302                	moveq 3,r0
    a9c8:	7f22                	moveq -1,r2
    a9ca:	6f3e ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r3
    a9d0:	e2c6                	cmp.d r2,r12
    a9d2:	b015                	ax 
    a9d4:	e3d6                	cmp.d r3,r13
    a9d6:	3090                	bhi aa08 <___unpack_d+0x90>
    a9d8:	eb0b                	move.d r0,[r11]
    a9da:	7fac 01fc           	movs.w -1023,r10
    a9de:	6c06                	move.d r12,r0
    a9e0:	6d16                	move.d r13,r1
    a9e2:	2c06                	add.d r12,r0
    a9e4:	b015                	ax 
    a9e6:	2d16                	add.d r13,r1
    a9e8:	60c6                	move.d r0,r12
    a9ea:	61d6                	move.d r1,r13
    a9ec:	6a06                	move.d r10,r0
    a9ee:	7f12                	moveq -1,r1
    a9f0:	6186                	move.d r1,r8
    a9f2:	6f1e ffff ff0f      	move.d fffffff <__end+0xfff02ef>,r1
    a9f8:	6196                	move.d r1,r9
    a9fa:	e8c6                	cmp.d r8,r12
    a9fc:	b015                	ax 
    a9fe:	e9d6                	cmp.d r9,r13
    aa00:	dd80                	bls a9de <___unpack_d+0x66>
    aa02:	81a2                	subq 1,r10
    aa04:	08b1 e00b           	move.d r0,[r11+8]
    aa08:	0cb1 eccb           	move.d r12,[r11+12]
    aa0c:	10b1 eddb           	move.d r13,[r11+16]
    aa10:	6e8e                	pop r8
    aa12:	7fb6                	ret 
    aa14:	be5f                	movem [sp+],r5
    aa16:	df5c ff07           	cmpu.w 0x7ff,r5
    aa1a:	3630                	beq aa52 <___unpack_d+0xda>
    aa1c:	43a2                	moveq 3,r10
    aa1e:	9f5c ff03           	subu.w 0x3ff,r5
    aa22:	08b1 e55b           	move.d r5,[r11+8]
    aa26:	ebab                	move.d r10,[r11]
    aa28:	6096                	move.d r0,r9
    aa2a:	f893                	lsrq 24,r9
    aa2c:	64d6                	move.d r4,r13
    aa2e:	c8d3                	lslq 8,r13
    aa30:	6d97                	or.d r13,r9
    aa32:	c803                	lslq 8,r0
    aa34:	0cb1 e00b           	move.d r0,[r11+12]
    aa38:	6f9f 0000 0010      	or.d 10000000 <__end+0xfff02f0>,r9
    aa3e:	10b1 e99b           	move.d r9,[r11+16]
    aa42:	6e8e                	pop r8
    aa44:	7fb6                	ret 
    aa46:	be5f                	movem [sp+],r5
    aa48:	4202                	moveq 2,r0
    aa4a:	eb0b                	move.d r0,[r11]
    aa4c:	6e8e                	pop r8
    aa4e:	7fb6                	ret 
    aa50:	be5f                	movem [sp+],r5
    aa52:	6006                	test.d r0
    aa54:	b015                	ax 
    aa56:	6116                	test.d r1
    aa58:	1c30                	beq aa76 <___unpack_d+0xfe>
    aa5a:	7d86                	clear.d r13
    aa5c:	6496                	move.d r4,r9
    aa5e:	2f9f 0000 0800      	and.d 80000 <__end+0x702f0>,r9
    aa64:	6d97                	or.d r13,r9
    aa66:	3925                	sne r9
    aa68:	eb9b                	move.d r9,[r11]
    aa6a:	0cb1 e00b           	move.d r0,[r11+12]
    aa6e:	10b1 e44b           	move.d r4,[r11+16]
    aa72:	d1e0                	ba aa44 <___unpack_d+0xcc>
    aa74:	6e8e                	pop r8
    aa76:	4492                	moveq 4,r9
    aa78:	c9e0                	ba aa42 <___unpack_d+0xca>
    aa7a:	eb9b                	move.d r9,[r11]

0000aa7c <___fpcmp_parts_d>:
    aa7c:	88e2                	subq 8,sp
    aa7e:	fe1b                	movem r1,[sp]
    aa80:	6a9a                	move.d [r10],r9
    aa82:	c192                	cmpq 1,r9
    aa84:	9080                	bls ab16 <___fpcmp_parts_d+0x9a>
    aa86:	0f05                	nop 
    aa88:	6bda                	move.d [r11],r13
    aa8a:	c1d2                	cmpq 1,r13
    aa8c:	8880                	bls ab16 <___fpcmp_parts_d+0x9a>
    aa8e:	c492                	cmpq 4,r9
    aa90:	9030                	beq ab22 <___fpcmp_parts_d+0xa6>
    aa92:	c4d2                	cmpq 4,r13
    aa94:	2c30                	beq aac2 <___fpcmp_parts_d+0x46>
    aa96:	c292                	cmpq 2,r9
    aa98:	2230                	beq aabc <___fpcmp_parts_d+0x40>
    aa9a:	c2d2                	cmpq 2,r13
    aa9c:	3430                	beq aad2 <___fpcmp_parts_d+0x56>
    aa9e:	0f05                	nop 
    aaa0:	04a1 699a           	move.d [r10+4],r9
    aaa4:	04b1 e99a           	cmp.d [r11+4],r9
    aaa8:	3630                	beq aae0 <___fpcmp_parts_d+0x64>
    aaaa:	0f05                	nop 
    aaac:	6996                	test.d r9
    aaae:	1a20                	bne aaca <___fpcmp_parts_d+0x4e>
    aab0:	0f05                	nop 
    aab2:	4f9e 0100           	move.b 0x1,r9
    aab6:	69a6                	move.d r9,r10
    aab8:	7fb6                	ret 
    aaba:	be1f                	movem [sp+],r1
    aabc:	c2d2                	cmpq 2,r13
    aabe:	f730                	beq aab6 <___fpcmp_parts_d+0x3a>
    aac0:	7986                	clear.d r9
    aac2:	04b1 a00b           	test.d [r11+4]
    aac6:	5020                	bne ab18 <___fpcmp_parts_d+0x9c>
    aac8:	4192                	moveq 1,r9
    aaca:	7f92                	moveq -1,r9
    aacc:	69a6                	move.d r9,r10
    aace:	7fb6                	ret 
    aad0:	be1f                	movem [sp+],r1
    aad2:	04a1 a00b           	test.d [r10+4]
    aad6:	f320                	bne aaca <___fpcmp_parts_d+0x4e>
    aad8:	4192                	moveq 1,r9
    aada:	69a6                	move.d r9,r10
    aadc:	7fb6                	ret 
    aade:	be1f                	movem [sp+],r1
    aae0:	08a1 6cca           	move.d [r10+8],r12
    aae4:	08b1 6dda           	move.d [r11+8],r13
    aae8:	edc6                	cmp.d r13,r12
    aaea:	c1c0                	bgt aaac <___fpcmp_parts_d+0x30>
    aaec:	edc6                	cmp.d r13,r12
    aaee:	20b0                	blt ab10 <___fpcmp_parts_d+0x94>
    aaf0:	0f05                	nop 
    aaf2:	0ca1 600a           	move.d [r10+12],r0
    aaf6:	10a1 611a           	move.d [r10+16],r1
    aafa:	0cb1 6cca           	move.d [r11+12],r12
    aafe:	10b1 6dda           	move.d [r11+16],r13
    ab02:	ec06                	cmp.d r12,r0
    ab04:	b015                	ax 
    ab06:	ed16                	cmp.d r13,r1
    ab08:	a390                	bhi aaac <___fpcmp_parts_d+0x30>
    ab0a:	0f05                	nop 
    ab0c:	1000                	bcc ab1e <___fpcmp_parts_d+0xa2>
    ab0e:	0f05                	nop 
    ab10:	6996                	test.d r9
    ab12:	b930                	beq aacc <___fpcmp_parts_d+0x50>
    ab14:	7f92                	moveq -1,r9
    ab16:	4192                	moveq 1,r9
    ab18:	69a6                	move.d r9,r10
    ab1a:	7fb6                	ret 
    ab1c:	be1f                	movem [sp+],r1
    ab1e:	97e0                	ba aab6 <___fpcmp_parts_d+0x3a>
    ab20:	7986                	clear.d r9
    ab22:	c4d2                	cmpq 4,r13
    ab24:	ad20                	bne aad2 <___fpcmp_parts_d+0x56>
    ab26:	0f05                	nop 
    ab28:	04b1 699a           	move.d [r11+4],r9
    ab2c:	04a1 a99a           	sub.d [r10+4],r9
    ab30:	87e0                	ba aab8 <___fpcmp_parts_d+0x3c>
    ab32:	69a6                	move.d r9,r10

0000ab34 <___lshrdi3>:
    ab34:	6cc6                	test.d r12
    ab36:	2630                	beq ab5e <___lshrdi3+0x2a>
    ab38:	90e2                	subq 16,sp
    ab3a:	4f9c 2000           	movu.b 0x20,r9
    ab3e:	ac96                	sub.d r12,r9
    ab40:	6996                	test.d r9
    ab42:	1ed0                	ble ab62 <___lshrdi3+0x2e>
    ab44:	6bd6                	move.d r11,r13
    ab46:	ecd7                	lsr.d r12,r13
    ab48:	0ce1 eddb           	move.d r13,[sp+12]
    ab4c:	e9b4                	lsl.d r9,r11
    ab4e:	eca7                	lsr.d r12,r10
    ab50:	6ab7                	or.d r10,r11
    ab52:	08e1 ebbb           	move.d r11,[sp+8]
    ab56:	08e1 6aaa           	move.d [sp+8],r10
    ab5a:	0ce1 6bba           	move.d [sp+12],r11
    ab5e:	7fb6                	ret 
    ab60:	10e2                	addq 16,sp
    ab62:	0ce1 708a           	clear.d [sp+12]
    ab66:	a995                	neg.d r9,r9
    ab68:	e9b7                	lsr.d r9,r11
    ab6a:	08e1 ebbb           	move.d r11,[sp+8]
    ab6e:	e7e0                	ba ab56 <___lshrdi3+0x22>
    ab70:	0f05                	nop 
	...

0000ab74 <___ashldi3>:
    ab74:	6cc6                	test.d r12
    ab76:	2630                	beq ab9e <___ashldi3+0x2a>
    ab78:	90e2                	subq 16,sp
    ab7a:	4f9c 2000           	movu.b 0x20,r9
    ab7e:	ac96                	sub.d r12,r9
    ab80:	6996                	test.d r9
    ab82:	1ed0                	ble aba2 <___ashldi3+0x2e>
    ab84:	6ad6                	move.d r10,r13
    ab86:	ecd4                	lsl.d r12,r13
    ab88:	08e1 eddb           	move.d r13,[sp+8]
    ab8c:	e9a7                	lsr.d r9,r10
    ab8e:	ecb4                	lsl.d r12,r11
    ab90:	6ba7                	or.d r11,r10
    ab92:	0ce1 eaab           	move.d r10,[sp+12]
    ab96:	08e1 6aaa           	move.d [sp+8],r10
    ab9a:	0ce1 6bba           	move.d [sp+12],r11
    ab9e:	7fb6                	ret 
    aba0:	10e2                	addq 16,sp
    aba2:	08e1 708a           	clear.d [sp+8]
    aba6:	a995                	neg.d r9,r9
    aba8:	e9a4                	lsl.d r9,r10
    abaa:	0ce1 eaab           	move.d r10,[sp+12]
    abae:	e7e0                	ba ab96 <___ashldi3+0x22>
    abb0:	0f05                	nop 
	...
