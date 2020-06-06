
rx-elf.x:     file format elf32-rx-le


Disassembly of section .text:

00001400 <_start>:
    1400:	fb 02 10 cd 00 00             	mov.l	#0xcd10, r0
    1406:	05 49 5c 00                   	bsr.a	704f <__startmain>

0000140a <___exit>:
    140a:	66 15                         	mov.l	#1, r5
    140c:	75 60 ff                      	int #255
    140f:	02                            	rts

00001410 <___read>:
    1410:	66 45                         	mov.l	#4, r5
    1412:	75 60 ff                      	int #255
    1415:	02                            	rts

00001416 <___write>:
    1416:	66 55                         	mov.l	#5, r5
    1418:	75 60 ff                      	int #255
    141b:	02                            	rts

0000141c <___open>:
    141c:	66 25                         	mov.l	#2, r5
    141e:	75 60 ff                      	int #255
    1421:	02                            	rts

00001422 <___close>:
    1422:	66 35                         	mov.l	#3, r5
    1424:	75 60 ff                      	int #255
    1427:	02                            	rts

00001428 <_exit>:
    1428:	7e a7                         	push.l	r7

0000142a <.LCFI0>:
    142a:	66 02                         	mov.l	#0, r2

0000142c <.LM3>:
    142c:	ef 17                         	mov.l	r1, r7

0000142e <.LM4>:
    142e:	05 ea 1a 00                   	bsr.a	2f18 <___call_exitprocs>

00001432 <.LM5>:
    1432:	fb e2 10 78 00 00             	mov.l	#0x7810, r14
    1438:	ec e1                         	mov.l	[r14], r1
    143a:	ed 1e 0f                      	mov.l	60[r1], r14
    143d:	61 0e                         	cmp	#0, r14
    143f:	13                            	beq.s	1442 <.LM7>

00001440 <.LM6>:
    1440:	7f 1e                         	jsr	r14

00001442 <.LM7>:
    1442:	ef 71                         	mov.l	r7, r1
    1444:	05 ac 5b 00                   	bsr.a	6ff0 <__exit>

00001448 <_memset>:
    1448:	ef 14                         	mov.l	r1, r4
    144a:	7f 88                         	sstr.b
    144c:	ef 41                         	mov.l	r4, r1
    144e:	02                            	rts

0000144f <__printf_r>:
    144f:	60 40                         	sub	#4, r0

00001451 <.LCFI0>:
    1451:	66 84                         	mov.l	#8, r4
    1453:	4b 04                         	add	r0, r4

00001455 <.LM3>:
    1455:	fd 2a 43                      	mov.l	[r4+], r3

00001458 <.LVL2>:
    1458:	a8 92                         	mov.l	8[r1], r2
    145a:	05 26 00 00                   	bsr.a	1480 <__vfprintf_r>

0000145e <.LM4>:
    145e:	67 01                         	rtsd	#4

00001460 <_printf>:
    1460:	fb e2 00 80 00 00             	mov.l	#0x8000, r14

00001466 <.LM7>:
    1466:	60 40                         	sub	#4, r0

00001468 <.LCFI1>:
    1468:	ec e1                         	mov.l	[r14], r1

0000146a <.LM9>:
    146a:	66 84                         	mov.l	#8, r4
    146c:	4b 04                         	add	r0, r4

0000146e <.LM10>:
    146e:	fd 2a 43                      	mov.l	[r4+], r3

00001471 <.LVL7>:
    1471:	a8 92                         	mov.l	8[r1], r2
    1473:	05 0d 00 00                   	bsr.a	1480 <__vfprintf_r>

00001477 <.LM11>:
    1477:	67 01                         	rtsd	#4

00001479 <.LFE1>:
    1479:	00                            	brk
    147a:	00                            	brk
    147b:	00                            	brk
    147c:	00                            	brk
    147d:	00                            	brk
	...

00001480 <__vfprintf_r>:
    1480:	6e 6d                         	pushm	r6-r13

00001482 <.LCFI0>:
    1482:	72 00 e4 fa                   	add	#0xfffffae4, r0, r0

00001486 <.LCFI1>:
    1486:	ef 29                         	mov.l	r2, r9
    1488:	ef 37                         	mov.l	r3, r7
    148a:	eb 04 3b 01                   	mov.l	r4, 1260[r0]
    148e:	ef 1d                         	mov.l	r1, r13

00001490 <.LM3>:
    1490:	05 4a 30 00                   	bsr.a	44da <__localeconv_r>

00001494 <.LVL1>:
    1494:	ec 11                         	mov.l	[r1], r1
    1496:	eb 01 3d 01                   	mov.l	r1, 1268[r0]

0000149a <.LM4>:
    149a:	05 8b 40 00                   	bsr.a	5525 <_strlen>

0000149e <.LVL3>:
    149e:	eb 01 3f 01                   	mov.l	r1, 1276[r0]

000014a2 <.LM5>:
    14a2:	61 0d                         	cmp	#0, r13
    14a4:	20 0c                         	beq.b	14b0 <.LM7>

000014a6 <.LM6>:
    14a6:	ed da 0e                      	mov.l	56[r13], r10
    14a9:	61 0a                         	cmp	#0, r10
    14ab:	3a 73 05                      	beq.w	1a1e <.LM135>

000014ae <.LVL5>:
    14ae:	ef 00                         	nop

000014b0 <.LM7>:
    14b0:	dd 9a 06                      	mov.w	12[r9], r10
    14b3:	ef ab                         	mov.l	r10, r11
    14b5:	76 2b 00 20                   	and	#0x2000, r11
    14b9:	df bb                         	mov.w	r11, r11
    14bb:	61 0b                         	cmp	#0, r11
    14bd:	21 17                         	bne.b	14d4 <.LM9>

000014bf <.LM8>:
    14bf:	ed 9b 19                      	mov.l	100[r9], r11
    14c2:	ef ac                         	mov.l	r10, r12
    14c4:	76 3c 00 20                   	or	#0x2000, r12
    14c8:	76 2b ff df                   	and	#0xffffdfff, r11
    14cc:	df ca                         	mov.w	r12, r10
    14ce:	d7 9c 06                      	mov.w	r12, 12[r9]
    14d1:	e7 9b 19                      	mov.l	r11, 100[r9]

000014d4 <.LM9>:
    14d4:	ef ab                         	mov.l	r10, r11
    14d6:	64 8b                         	and	#8, r11
    14d8:	df bb                         	mov.w	r11, r11
    14da:	61 0b                         	cmp	#0, r11
    14dc:	3a 43 04                      	beq.w	191f <.LM104>

000014df <.LM10>:
    14df:	ed 9b 04                      	mov.l	16[r9], r11
    14e2:	61 0b                         	cmp	#0, r11
    14e4:	3a 3b 04                      	beq.w	191f <.LM104>

000014e7 <.LM11>:
    14e7:	ef ab                         	mov.l	r10, r11
    14e9:	75 2b 1a                      	and	#26, r11
    14ec:	61 ab                         	cmp	#10, r11
    14ee:	3a 4b 04                      	beq.w	1939 <.LM106>

000014f1 <.LM12>:
    14f1:	fa 06 3a 01 00                	mov.l	#0, 1256[r0]

000014f6 <.LM13>:
    14f6:	ee 0c 3a 01                   	mov.l	1256[r0], r12

000014fa <.LM14>:
    14fa:	72 0e 9c 04                   	add	#0x49c, r0, r14

000014fe <.LM15>:
    14fe:	72 0a 9b 04                   	add	#0x49b, r0, r10

00001502 <.LM16>:
    1502:	66 cb                         	mov.l	#12, r11
    1504:	4b 0b                         	add	r0, r11

00001506 <.LM17>:
    1506:	eb 0e 32 01                   	mov.l	r14, 1224[r0]
    150a:	43 ae                         	sub	r10, r14

0000150c <.LM18>:
    150c:	eb 0a 33 01                   	mov.l	r10, 1228[r0]

00001510 <.LM19>:
    1510:	eb 0b 27 01                   	mov.l	r11, 1180[r0]

00001514 <.LM20>:
    1514:	fa 06 29 01 00                	mov.l	#0, 1188[r0]

00001519 <.LM21>:
    1519:	fa 06 28 01 00                	mov.l	#0, 1184[r0]

0000151e <.LM22>:
    151e:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001522 <.LM23>:
    1522:	eb 0c 40 01                   	mov.l	r12, 1280[r0]

00001526 <.LM24>:
    1526:	eb 0c 42 01                   	mov.l	r12, 1288[r0]

0000152a <.LM25>:
    152a:	eb 0c 41 01                   	mov.l	r12, 1284[r0]

0000152e <.LM26>:
    152e:	eb 0c 38 01                   	mov.l	r12, 1248[r0]

00001532 <.LM27>:
    1532:	ef bf                         	mov.l	r11, r15
    1534:	eb 0e 44 01                   	mov.l	r14, 1296[r0]
    1538:	eb 0d 39 01                   	mov.l	r13, 1252[r0]

0000153c <.LM28>:
    153c:	ee 0d 35 01                   	mov.l	1236[r0], r13
    1540:	58 d7                         	movu.b	[r13], r7
    1542:	61 07                         	cmp	#0, r7
    1544:	3a 88 03                      	beq.w	18cc <.LVL74>

00001547 <.LVL10>:
    1547:	03                            	nop
    1548:	75 57 25                      	cmp	#37, r7
    154b:	3a 81 03                      	beq.w	18cc <.LVL74>

0000154e <.LM29>:
    154e:	ef db                         	mov.l	r13, r11
    1550:	62 1b                         	add	#1, r11
    1552:	0f                            	bra.s	1559 <.LM31>

00001553 <.LM30>:
    1553:	75 5a 25                      	cmp	#37, r10
    1556:	3a 88 03                      	beq.w	18de <.LVL76>

00001559 <.LM31>:
    1559:	58 ba                         	movu.b	[r11], r10

0000155b <.LM32>:
    155b:	ef b7                         	mov.l	r11, r7

0000155d <.LVL13>:
    155d:	62 1b                         	add	#1, r11

0000155f <.LM33>:
    155f:	61 0a                         	cmp	#0, r10
    1561:	21 f2                         	bne.b	1553 <.LM30>
    1563:	ee 0e 35 01                   	mov.l	1236[r0], r14
    1567:	ff 0a e7                      	sub	r14, r7, r10

0000156a <.LM34>:
    156a:	61 0a                         	cmp	#0, r10
    156c:	20 35                         	beq.b	15a1 <.LM37>

0000156e <.LM35>:
    156e:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1572:	ee 0b 29 01                   	mov.l	1188[r0], r11
    1576:	ee 0c 35 01                   	mov.l	1236[r0], r12
    157a:	4b ab                         	add	r10, r11
    157c:	62 1e                         	add	#1, r14
    157e:	e3 fc                         	mov.l	r12, [r15]
    1580:	e7 fa 01                      	mov.l	r10, 4[r15]
    1583:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

00001587 <.LVL15>:
    1587:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    158b:	61 7e                         	cmp	#7, r14
    158d:	2b 05                         	ble.b	1592 <.LVL15+0xb>
    158f:	38 74 04                      	bra.w	1a03 <.LM133>
    1592:	62 8f                         	add	#8, r15

00001594 <.LVL16>:
    1594:	76 10 01 00                   	mul	#1, r0

00001598 <.LM36>:
    1598:	06 8a 0a 38 01                	add	1248[r0].l, r10

0000159d <.LVL17>:
    159d:	eb 0a 38 01                   	mov.l	r10, 1248[r0]

000015a1 <.LM37>:
    15a1:	58 7a                         	movu.b	[r7], r10
    15a3:	61 0a                         	cmp	#0, r10
    15a5:	3a 23 04                      	beq.w	19c8 <.LBE21>

000015a8 <.LM38>:
    15a8:	fa 06 37 01 00                	mov.l	#0, 1244[r0]

000015ad <.LM39>:
    15ad:	ee 0e 37 01                   	mov.l	1244[r0], r14

000015b1 <.LM40>:
    15b1:	71 7d 01                      	add	#1, r7, r13

000015b4 <.LVL20>:
    15b4:	59 7a 01                      	movu.b	1[r7], r10
    15b7:	eb 0d 35 01                   	mov.l	r13, 1236[r0]

000015bb <.LM41>:
    15bb:	fa 04 c6 04 00                	mov.b	#0, 1222[r0]

000015c0 <.LVL22>:
    15c0:	66 0b                         	mov.l	#0, r11

000015c2 <.LM42>:
    15c2:	fb 56 ff                      	mov.l	#-1, r5

000015c5 <.LM43>:
    15c5:	eb 0e 34 01                   	mov.l	r14, 1232[r0]
    15c9:	ef d7                         	mov.l	r13, r7

000015cb <.LM44>:
    15cb:	62 17                         	add	#1, r7

000015cd <.LM45>:
    15cd:	71 ac e0                      	add	#-32, r10, r12
    15d0:	75 5c 58                      	cmp	#88, r12
    15d3:	24 05                         	bgtu.b	15d8 <.L22>
    15d5:	38 fe 02                      	bra.w	18d3 <.LM98>

000015d8 <.L22>:
    15d8:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    15dc:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

000015e0 <.LM46>:
    15e0:	61 0a                         	cmp	#0, r10
    15e2:	3a e6 03                      	beq.w	19c8 <.LBE21>

000015e5 <.LM47>:
    15e5:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

000015ea <.LM48>:
    15ea:	ee 0d 3c 01                   	mov.l	1264[r0], r13

000015ee <.LM49>:
    15ee:	fa 06 36 01 01                	mov.l	#1, 1240[r0]

000015f3 <.LM50>:
    15f3:	ee 0b 36 01                   	mov.l	1240[r0], r11

000015f7 <.LM51>:
    15f7:	cb 0a 74 04                   	mov.b	r10, 1140[r0]

000015fb <.LM52>:
    15fb:	fa 04 c6 04 00                	mov.b	#0, 1222[r0]

00001600 <.LM53>:
    1600:	eb 0d 3e 01                   	mov.l	r13, 1272[r0]

00001604 <.LM54>:
    1604:	72 07 74 04                   	add	#0x474, r0, r7

00001608 <.LVL27>:
    1608:	ef d6                         	mov.l	r13, r6

0000160a <.LM55>:
    160a:	ee 0d 34 01                   	mov.l	1232[r0], r13
    160e:	64 2d                         	and	#2, r13
    1610:	20 0c                         	beq.b	161c <.LM57>

00001612 <.LM56>:
    1612:	ee 0c 36 01                   	mov.l	1240[r0], r12
    1616:	62 2c                         	add	#2, r12
    1618:	eb 0c 36 01                   	mov.l	r12, 1240[r0]

0000161c <.LM57>:
    161c:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1620:	76 2c 84 00                   	and	#132, r12
    1624:	3b b2 00                      	bne.w	16d6 <.LM66>

00001627 <.LM58>:
    1627:	ee 08 37 01                   	mov.l	1244[r0], r8
    162b:	06 82 08 36 01                	sub	1240[r0].l, r8

00001630 <.LVL30>:
    1630:	61 08                         	cmp	#0, r8
    1632:	2a 05                         	bgt.b	1637 <.LM59>
    1634:	38 a2 00                      	bra.w	16d6 <.LM66>

00001637 <.LM59>:
    1637:	75 58 10                      	cmp	#16, r8
    163a:	ee 0e 28 01                   	mov.l	1184[r0], r14
    163e:	2b 72                         	ble.b	16b0 <.LM64>

00001640 <.LM60>:
    1640:	eb 0a 43 01                   	mov.l	r10, 1292[r0]
    1644:	fb 62 38 55 00 00             	mov.l	#0x5538, r6
    164a:	ef 8a                         	mov.l	r8, r10
    164c:	ef c8                         	mov.l	r12, r8

0000164e <.LVL32>:
    164e:	ef bc                         	mov.l	r11, r12
    1650:	ef 7b                         	mov.l	r7, r11
    1652:	ee 07 39 01                   	mov.l	1252[r0], r7
    1656:	2e 0c                         	bra.b	1662 <.LM61>

00001658 <.LVL33>:
    1658:	62 8f                         	add	#8, r15

0000165a <.LVL34>:
    165a:	71 aa f0                      	add	#-16, r10, r10
    165d:	75 5a 10                      	cmp	#16, r10
    1660:	2b 42                         	ble.b	16a2 <.LVL38+0xc>

00001662 <.LM61>:
    1662:	ee 03 29 01                   	mov.l	1188[r0], r3
    1666:	62 1e                         	add	#1, r14
    1668:	71 33 10                      	add	#16, r3, r3
    166b:	f8 f2 b8 79 00 00             	mov.l	#0x79b8, [r15]
    1671:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    1675:	eb 03 29 01                   	mov.l	r3, 1188[r0]

00001679 <.LVL36>:
    1679:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    167d:	61 7e                         	cmp	#7, r14
    167f:	2b d9                         	ble.b	1658 <.LVL33>

00001681 <.LM62>:
    1681:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    1685:	4b 03                         	add	r0, r3
    1687:	ef 71                         	mov.l	r7, r1
    1689:	ef 92                         	mov.l	r9, r2
    168b:	7f 16                         	jsr	r6

0000168d <.LVL37>:
    168d:	61 01                         	cmp	#0, r1
    168f:	3b 51 03                      	bne.w	19e0 <.L18>

00001692 <.LM63>:
    1692:	66 cf                         	mov.l	#12, r15
    1694:	4b 0f                         	add	r0, r15

00001696 <.LVL38>:
    1696:	71 aa f0                      	add	#-16, r10, r10
    1699:	75 5a 10                      	cmp	#16, r10
    169c:	ee 0e 28 01                   	mov.l	1184[r0], r14
    16a0:	2a c2                         	bgt.b	1662 <.LM61>
    16a2:	ef b7                         	mov.l	r11, r7
    16a4:	ef cb                         	mov.l	r12, r11
    16a6:	ef 8c                         	mov.l	r8, r12
    16a8:	ef a8                         	mov.l	r10, r8
    16aa:	ee 0a 43 01                   	mov.l	1292[r0], r10

000016ae <.LVL40>:
    16ae:	ef 00                         	nop

000016b0 <.LM64>:
    16b0:	ee 03 29 01                   	mov.l	1188[r0], r3
    16b4:	62 1e                         	add	#1, r14
    16b6:	4b 83                         	add	r8, r3
    16b8:	f8 f2 b8 79 00 00             	mov.l	#0x79b8, [r15]
    16be:	e7 f8 01                      	mov.l	r8, 4[r15]
    16c1:	eb 03 29 01                   	mov.l	r3, 1188[r0]

000016c5 <.LVL41>:
    16c5:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    16c9:	61 7e                         	cmp	#7, r14
    16cb:	2b 05                         	ble.b	16d0 <.LVL41+0xb>
    16cd:	38 e0 0c                      	bra.w	23ad <.LBE14>
    16d0:	5a 06 c6 04                   	movu.b	1222[r0], r6

000016d4 <.LM65>:
    16d4:	62 8f                         	add	#8, r15

000016d6 <.LM66>:
    16d6:	61 06                         	cmp	#0, r6
    16d8:	20 29                         	beq.b	1701 <.LM68>

000016da <.LM67>:
    16da:	ee 0e 28 01                   	mov.l	1184[r0], r14
    16de:	ee 04 29 01                   	mov.l	1188[r0], r4
    16e2:	72 03 c6 04                   	add	#0x4c6, r0, r3
    16e6:	62 14                         	add	#1, r4
    16e8:	62 1e                         	add	#1, r14
    16ea:	e3 f3                         	mov.l	r3, [r15]
    16ec:	f9 f6 01 01                   	mov.l	#1, 4[r15]
    16f0:	eb 04 29 01                   	mov.l	r4, 1188[r0]

000016f4 <.LVL43>:
    16f4:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    16f8:	61 7e                         	cmp	#7, r14
    16fa:	2b 05                         	ble.b	16ff <.LVL43+0xb>
    16fc:	38 30 0b                      	bra.w	222c <.LM337>
    16ff:	62 8f                         	add	#8, r15

00001701 <.LM68>:
    1701:	61 0d                         	cmp	#0, r13
    1703:	20 29                         	beq.b	172c <.LM70>

00001705 <.LM69>:
    1705:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1709:	ee 0d 29 01                   	mov.l	1188[r0], r13
    170d:	72 04 c4 04                   	add	#0x4c4, r0, r4
    1711:	62 2d                         	add	#2, r13
    1713:	62 1e                         	add	#1, r14
    1715:	e3 f4                         	mov.l	r4, [r15]
    1717:	f9 f6 01 02                   	mov.l	#2, 4[r15]
    171b:	eb 0d 29 01                   	mov.l	r13, 1188[r0]

0000171f <.LVL45>:
    171f:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1723:	61 7e                         	cmp	#7, r14
    1725:	2b 05                         	ble.b	172a <.LVL45+0xb>
    1727:	38 e9 0a                      	bra.w	2210 <.LM335>
    172a:	62 8f                         	add	#8, r15

0000172c <.LM70>:
    172c:	75 5c 80                      	cmp	#128, r12
    172f:	3a 86 09                      	beq.w	20b5 <.LM316>

00001732 <.LM71>:
    1732:	ee 08 3c 01                   	mov.l	1264[r0], r8
    1736:	43 b8                         	sub	r11, r8

00001738 <.LVL48>:
    1738:	61 08                         	cmp	#0, r8
    173a:	2a 05                         	bgt.b	173f <.LM72>
    173c:	38 86 00                      	bra.w	17c2 <.LM79>

0000173f <.LM72>:
    173f:	75 58 10                      	cmp	#16, r8
    1742:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1746:	2b 5a                         	ble.b	17a0 <.LM77>

00001748 <.LM73>:
    1748:	fb c2 38 55 00 00             	mov.l	#0x5538, r12
    174e:	ee 0d 39 01                   	mov.l	1252[r0], r13
    1752:	2e 0e                         	bra.b	1760 <.LM74>

00001754 <.LVL49>:
    1754:	62 8f                         	add	#8, r15

00001756 <.LVL50>:
    1756:	71 88 f0                      	add	#-16, r8, r8
    1759:	75 58 10                      	cmp	#16, r8
    175c:	2b 44                         	ble.b	17a0 <.LM77>
    175e:	ef 00                         	nop

00001760 <.LM74>:
    1760:	ee 04 29 01                   	mov.l	1188[r0], r4
    1764:	62 1e                         	add	#1, r14
    1766:	71 44 10                      	add	#16, r4, r4
    1769:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    176f:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    1773:	eb 04 29 01                   	mov.l	r4, 1188[r0]

00001777 <.LVL52>:
    1777:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    177b:	61 7e                         	cmp	#7, r14
    177d:	2b d7                         	ble.b	1754 <.LVL49>

0000177f <.LM75>:
    177f:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    1783:	4b 03                         	add	r0, r3
    1785:	ef d1                         	mov.l	r13, r1
    1787:	ef 92                         	mov.l	r9, r2
    1789:	7f 1c                         	jsr	r12

0000178b <.LVL53>:
    178b:	61 01                         	cmp	#0, r1
    178d:	3b 53 02                      	bne.w	19e0 <.L18>

00001790 <.LM76>:
    1790:	66 cf                         	mov.l	#12, r15
    1792:	4b 0f                         	add	r0, r15

00001794 <.LVL54>:
    1794:	71 88 f0                      	add	#-16, r8, r8
    1797:	75 58 10                      	cmp	#16, r8
    179a:	ee 0e 28 01                   	mov.l	1184[r0], r14
    179e:	2a c2                         	bgt.b	1760 <.LM74>

000017a0 <.LM77>:
    17a0:	ee 0c 29 01                   	mov.l	1188[r0], r12
    17a4:	62 1e                         	add	#1, r14
    17a6:	4b 8c                         	add	r8, r12
    17a8:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    17ae:	e7 f8 01                      	mov.l	r8, 4[r15]
    17b1:	eb 0c 29 01                   	mov.l	r12, 1188[r0]

000017b5 <.LVL56>:
    17b5:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    17b9:	61 7e                         	cmp	#7, r14
    17bb:	2b 05                         	ble.b	17c0 <.LM78>
    17bd:	38 37 0a                      	bra.w	21f4 <.LM333>

000017c0 <.LM78>:
    17c0:	62 8f                         	add	#8, r15

000017c2 <.LM79>:
    17c2:	ee 0d 34 01                   	mov.l	1232[r0], r13
    17c6:	fd 78 cd 00 01                	tst	#256, r13
    17cb:	3b f8 07                      	bne.w	1fc3 <.LM303>

000017ce <.LM80>:
    17ce:	ee 0e 28 01                   	mov.l	1184[r0], r14
    17d2:	ee 0a 29 01                   	mov.l	1188[r0], r10
    17d6:	62 1e                         	add	#1, r14
    17d8:	4b ba                         	add	r11, r10
    17da:	e3 f7                         	mov.l	r7, [r15]
    17dc:	e7 fb 01                      	mov.l	r11, 4[r15]
    17df:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

000017e3 <.LVL58>:
    17e3:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    17e7:	61 7e                         	cmp	#7, r14
    17e9:	2b 05                         	ble.b	17ee <.LBB12>
    17eb:	38 6d 07                      	bra.w	1f58 <.LM286>

000017ee <.LBB12>:
    17ee:	62 8f                         	add	#8, r15

000017f0 <.LBE12>:
    17f0:	ee 0c 34 01                   	mov.l	1232[r0], r12
    17f4:	fd 74 cc 04                   	tst	#4, r12
    17f8:	3a a4 00                      	beq.w	189c <.LVL71>

000017fb <.LM83>:
    17fb:	ee 0a 37 01                   	mov.l	1244[r0], r10
    17ff:	06 82 0a 36 01                	sub	1240[r0].l, r10

00001804 <.LVL61>:
    1804:	61 0a                         	cmp	#0, r10
    1806:	2a 05                         	bgt.b	180b <.LM84>
    1808:	38 94 00                      	bra.w	189c <.LVL71>

0000180b <.LM84>:
    180b:	75 5a 10                      	cmp	#16, r10
    180e:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1812:	2b 58                         	ble.b	186a <.LM89>

00001814 <.LM85>:
    1814:	fb 72 38 55 00 00             	mov.l	#0x5538, r7
    181a:	ee 0c 39 01                   	mov.l	1252[r0], r12
    181e:	2e 0c                         	bra.b	182a <.LM86>

00001820 <.LVL62>:
    1820:	62 8f                         	add	#8, r15

00001822 <.LVL63>:
    1822:	71 aa f0                      	add	#-16, r10, r10
    1825:	75 5a 10                      	cmp	#16, r10
    1828:	2b 42                         	ble.b	186a <.LM89>

0000182a <.LM86>:
    182a:	ee 0b 29 01                   	mov.l	1188[r0], r11
    182e:	62 1e                         	add	#1, r14
    1830:	71 bb 10                      	add	#16, r11, r11
    1833:	f8 f2 b8 79 00 00             	mov.l	#0x79b8, [r15]
    1839:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    183d:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

00001841 <.LVL65>:
    1841:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1845:	61 7e                         	cmp	#7, r14
    1847:	2b d9                         	ble.b	1820 <.LVL62>

00001849 <.LM87>:
    1849:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    184d:	4b 03                         	add	r0, r3
    184f:	ef c1                         	mov.l	r12, r1
    1851:	ef 92                         	mov.l	r9, r2
    1853:	7f 17                         	jsr	r7

00001855 <.LVL66>:
    1855:	61 01                         	cmp	#0, r1
    1857:	3b 89 01                      	bne.w	19e0 <.L18>

0000185a <.LM88>:
    185a:	66 cf                         	mov.l	#12, r15
    185c:	4b 0f                         	add	r0, r15

0000185e <.LVL67>:
    185e:	71 aa f0                      	add	#-16, r10, r10
    1861:	75 5a 10                      	cmp	#16, r10
    1864:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1868:	2a c2                         	bgt.b	182a <.LM86>

0000186a <.LM89>:
    186a:	ee 07 29 01                   	mov.l	1188[r0], r7
    186e:	62 1e                         	add	#1, r14
    1870:	4b a7                         	add	r10, r7
    1872:	f8 f2 b8 79 00 00             	mov.l	#0x79b8, [r15]
    1878:	e7 fa 01                      	mov.l	r10, 4[r15]
    187b:	eb 07 29 01                   	mov.l	r7, 1188[r0]

0000187f <.LVL69>:
    187f:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1883:	61 7e                         	cmp	#7, r14
    1885:	2b 1b                         	ble.b	18a0 <.LM91>

00001887 <.LM90>:
    1887:	ee 01 39 01                   	mov.l	1252[r0], r1
    188b:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    188f:	4b 03                         	add	r0, r3
    1891:	ef 92                         	mov.l	r9, r2
    1893:	05 a5 3c 00                   	bsr.a	5538 <___sprint_r>

00001897 <.LVL70>:
    1897:	61 01                         	cmp	#0, r1
    1899:	3b 47 01                      	bne.w	19e0 <.L18>

0000189c <.LVL71>:
    189c:	ee 07 29 01                   	mov.l	1188[r0], r7

000018a0 <.LM91>:
    18a0:	ee 0a 36 01                   	mov.l	1240[r0], r10
    18a4:	06 a2 04 0a 37 01             	max	1244[r0].l, r10
    18aa:	06 8a 0a 38 01                	add	1248[r0].l, r10
    18af:	eb 0a 38 01                   	mov.l	r10, 1248[r0]

000018b3 <.LM92>:
    18b3:	61 07                         	cmp	#0, r7
    18b5:	3b 27 09                      	bne.w	21dc <.LM332>

000018b8 <.LM93>:
    18b8:	ee 0d 35 01                   	mov.l	1236[r0], r13

000018bc <.LM94>:
    18bc:	66 cf                         	mov.l	#12, r15

000018be <.LM95>:
    18be:	58 d7                         	movu.b	[r13], r7

000018c0 <.LM96>:
    18c0:	4b 0f                         	add	r0, r15
    18c2:	fa 06 28 01 00                	mov.l	#0, 1184[r0]

000018c7 <.LM97>:
    18c7:	61 07                         	cmp	#0, r7
    18c9:	3b 7f fc                      	bne.w	1548 <.LVL10+0x1>

000018cc <.LVL74>:
    18cc:	ee 07 35 01                   	mov.l	1236[r0], r7
    18d0:	38 d1 fc                      	bra.w	15a1 <.LM37>

000018d3 <.LM98>:
    18d3:	fb d2 54 78 00 00             	mov.l	#0x7854, r13
    18d9:	fe 6c dc                      	mov.l	[r12, r13], r12
    18dc:	7f 0c                         	jmp	r12

000018de <.LVL76>:
    18de:	ee 0b 35 01                   	mov.l	1236[r0], r11
    18e2:	ff 0a b7                      	sub	r11, r7, r10
    18e5:	38 85 fc                      	bra.w	156a <.LM34>

000018e8 <.L25>:
    18e8:	ee 0a 3b 01                   	mov.l	1260[r0], r10

000018ec <.LVL78>:
    18ec:	62 3a                         	add	#3, r10
    18ee:	75 2a fc                      	and	#-4, r10
    18f1:	ec ac                         	mov.l	[r10], r12
    18f3:	62 4a                         	add	#4, r10
    18f5:	eb 0c 37 01                   	mov.l	r12, 1244[r0]
    18f9:	eb 0a 3b 01                   	mov.l	r10, 1260[r0]

000018fd <.LM100>:
    18fd:	61 0c                         	cmp	#0, r12
    18ff:	29 05                         	blt.b	1904 <.LM101>
    1901:	38 79 04                      	bra.w	1d7a <.LVL178>

00001904 <.LM101>:
    1904:	ee 0d 37 01                   	mov.l	1244[r0], r13
    1908:	7e 1d                         	neg	r13
    190a:	eb 0d 37 01                   	mov.l	r13, 1244[r0]

0000190e <.LVL80>:
    190e:	ef 00                         	nop

00001910 <.L27>:
    1910:	ee 0e 34 01                   	mov.l	1232[r0], r14
    1914:	65 4e                         	or	#4, r14
    1916:	eb 0e 34 01                   	mov.l	r14, 1232[r0]

0000191a <.LVL81>:
    191a:	58 7a                         	movu.b	[r7], r10

0000191c <.LM103>:
    191c:	38 af fc                      	bra.w	15cb <.LM44>

0000191f <.LM104>:
    191f:	ef d1                         	mov.l	r13, r1
    1921:	ef 92                         	mov.l	r9, r2
    1923:	05 ed 14 00                   	bsr.a	2e10 <___swsetup_r>

00001927 <.LVL83>:
    1927:	61 01                         	cmp	#0, r1
    1929:	3b c7 00                      	bne.w	19f0 <.LM131>
    192c:	dd 9a 06                      	mov.w	12[r9], r10

0000192f <.LM105>:
    192f:	ef ab                         	mov.l	r10, r11
    1931:	75 2b 1a                      	and	#26, r11
    1934:	61 ab                         	cmp	#10, r11
    1936:	3b bb fb                      	bne.w	14f1 <.LM12>

00001939 <.LM106>:
    1939:	dd 9b 07                      	mov.w	14[r9], r11

0000193c <.LM107>:
    193c:	df bc                         	mov.w	r11, r12
    193e:	61 0c                         	cmp	#0, r12
    1940:	28 05                         	bge.b	1945 <.LBB21>
    1942:	38 af fb                      	bra.w	14f1 <.LM12>

00001945 <.LBB21>:
    1945:	75 2a fd                      	and	#-3, r10

00001948 <.LM109>:
    1948:	ef 73                         	mov.l	r7, r3

0000194a <.LM110>:
    194a:	db 0a 0c 02                   	mov.w	r10, 1048[r0]

0000194e <.LM111>:
    194e:	ed 97 19                      	mov.l	100[r9], r7

00001951 <.LM112>:
    1951:	db 0b 0d 02                   	mov.w	r11, 1050[r0]

00001955 <.LM113>:
    1955:	ed 9a 07                      	mov.l	28[r9], r10

00001958 <.LM114>:
    1958:	ed 9b 09                      	mov.l	36[r9], r11

0000195b <.LM115>:
    195b:	fb 2a 0c 04                   	mov.l	#0x40c, r2
    195f:	ee 04 3b 01                   	mov.l	1260[r0], r4

00001963 <.LM116>:
    1963:	66 cc                         	mov.l	#12, r12
    1965:	4b 0c                         	add	r0, r12

00001967 <.LM117>:
    1967:	4b 02                         	add	r0, r2
    1969:	ef d1                         	mov.l	r13, r1

0000196b <.LM118>:
    196b:	eb 07 1c 01                   	mov.l	r7, 1136[r0]

0000196f <.LM119>:
    196f:	eb 0a 0a 01                   	mov.l	r10, 1064[r0]

00001973 <.LM120>:
    1973:	eb 0b 0c 01                   	mov.l	r11, 1072[r0]

00001977 <.LM121>:
    1977:	eb 0c 03 01                   	mov.l	r12, 1036[r0]
    197b:	eb 0c 07 01                   	mov.l	r12, 1052[r0]

0000197f <.LM122>:
    197f:	fa 0a 05 01 00 04             	mov.l	#0x400, 1044[r0]
    1985:	fa 0a 08 01 00 04             	mov.l	#0x400, 1056[r0]

0000198b <.LM123>:
    198b:	fa 06 09 01 00                	mov.l	#0, 1060[r0]

00001990 <.LM124>:
    1990:	05 f0 fa ff                   	bsr.a	1480 <__vfprintf_r>

00001994 <.LVL86>:
    1994:	eb 01 38 01                   	mov.l	r1, 1248[r0]

00001998 <.LM125>:
    1998:	61 01                         	cmp	#0, r1
    199a:	29 16                         	blt.b	19b0 <.LBE22>
    199c:	fb 2a 0c 04                   	mov.l	#0x40c, r2
    19a0:	4b 02                         	add	r0, r2
    19a2:	ef d1                         	mov.l	r13, r1

000019a4 <.LVL88>:
    19a4:	05 b4 25 00                   	bsr.a	3f58 <__fflush_r>

000019a8 <.LVL89>:
    19a8:	61 01                         	cmp	#0, r1
    19aa:	3b 0d 14                      	bne.w	2db7 <.LBB24>
    19ad:	fc 13 00                      	nop

000019b0 <.LBE22>:
    19b0:	de 07 0c 02                   	mov.w	1048[r0], r7

000019b4 <.LBB23>:
    19b4:	75 27 40                      	and	#64, r7
    19b7:	df 77                         	mov.w	r7, r7
    19b9:	61 07                         	cmp	#0, r7
    19bb:	20 3d                         	beq.b	19f8 <.LM132>

000019bd <.LM127>:
    19bd:	dd 97 06                      	mov.w	12[r9], r7
    19c0:	75 37 40                      	or	#64, r7
    19c3:	d7 97 06                      	mov.w	r7, 12[r9]
    19c6:	2e 32                         	bra.b	19f8 <.LM132>

000019c8 <.LBE21>:
    19c8:	ee 07 29 01                   	mov.l	1188[r0], r7
    19cc:	ee 0d 39 01                   	mov.l	1252[r0], r13

000019d0 <.LDL1>:
    19d0:	61 07                         	cmp	#0, r7
    19d2:	20 0e                         	beq.b	19e0 <.L18>

000019d4 <.LM129>:
    19d4:	ef d1                         	mov.l	r13, r1
    19d6:	ef 92                         	mov.l	r9, r2
    19d8:	72 03 9c 04                   	add	#0x49c, r0, r3
    19dc:	05 5c 3b 00                   	bsr.a	5538 <___sprint_r>

000019e0 <.L18>:
    19e0:	dd 97 06                      	mov.w	12[r9], r7
    19e3:	75 27 40                      	and	#64, r7
    19e6:	df 77                         	mov.w	r7, r7
    19e8:	61 07                         	cmp	#0, r7
    19ea:	20 0e                         	beq.b	19f8 <.LM132>

000019ec <.LVL92>:
    19ec:	76 10 01 00                   	mul	#1, r0

000019f0 <.LM131>:
    19f0:	fa 06 38 01 ff                	mov.l	#-1, 1248[r0]
    19f5:	fc 13 00                      	nop

000019f8 <.LM132>:
    19f8:	ee 01 38 01                   	mov.l	1248[r0], r1
    19fc:	72 00 1c 05                   	add	#0x51c, r0, r0

00001a00 <.LVL93>:
    1a00:	3f 6d 08                      	rtsd	#32, r6-r13

00001a03 <.LM133>:
    1a03:	ee 01 39 01                   	mov.l	1252[r0], r1
    1a07:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    1a0b:	4b 03                         	add	r0, r3
    1a0d:	ef 92                         	mov.l	r9, r2
    1a0f:	05 29 3b 00                   	bsr.a	5538 <___sprint_r>

00001a13 <.LVL95>:
    1a13:	61 01                         	cmp	#0, r1
    1a15:	21 cb                         	bne.b	19e0 <.L18>

00001a17 <.LM134>:
    1a17:	66 cf                         	mov.l	#12, r15
    1a19:	4b 0f                         	add	r0, r15
    1a1b:	38 7d fb                      	bra.w	1598 <.LM36>

00001a1e <.LM135>:
    1a1e:	ef d1                         	mov.l	r13, r1

00001a20 <.LVL97>:
    1a20:	05 24 26 00                   	bsr.a	4044 <___sinit>

00001a24 <.LVL98>:
    1a24:	38 8c fa                      	bra.w	14b0 <.LM7>

00001a27 <.L31>:
    1a27:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001a2b <.LM136>:
    1a2b:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1a2f:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1a33:	75 3b 10                      	or	#16, r11
    1a36:	eb 0b 34 01                   	mov.l	r11, 1232[r0]

00001a3a <.LM137>:
    1a3a:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1a3e:	fd 74 cc 20                   	tst	#32, r12
    1a42:	3a 46 02                      	beq.w	1c88 <.LM205>

00001a45 <.LVL101>:
    1a45:	fc 13 00                      	nop

00001a48 <.LM138>:
    1a48:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001a4c <.LVL102>:
    1a4c:	62 37                         	add	#3, r7
    1a4e:	75 27 fc                      	and	#-4, r7
    1a51:	ed 7c 01                      	mov.l	4[r7], r12

00001a54 <.LVL103>:
    1a54:	71 7d 08                      	add	#8, r7, r13
    1a57:	ec 78                         	mov.l	[r7], r8
    1a59:	eb 0d 3b 01                   	mov.l	r13, 1260[r0]

00001a5d <.LVL104>:
    1a5d:	ef cb                         	mov.l	r12, r11

00001a5f <.LVL105>:
    1a5f:	03                            	nop

00001a60 <.LM139>:
    1a60:	61 0c                         	cmp	#0, r12
    1a62:	28 05                         	bge.b	1a67 <.LM139+0x7>
    1a64:	38 b9 0b                      	bra.w	261d <.LM411>
    1a67:	ce 06 c6 04                   	mov.b	1222[r0], r6

00001a6b <.LM140>:
    1a6b:	66 17                         	mov.l	#1, r7

00001a6d <.L71>:
    1a6d:	61 05                         	cmp	#0, r5
    1a6f:	29 0e                         	blt.b	1a7d <.LM143>

00001a71 <.LM142>:
    1a71:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1a75:	76 2c 7f ff                   	and	#-129, r12
    1a79:	eb 0c 34 01                   	mov.l	r12, 1232[r0]

00001a7d <.LM143>:
    1a7d:	ff 5c b8                      	or	r11, r8, r12

00001a80 <.LM144>:
    1a80:	5b 77                         	movu.b	r7, r7

00001a82 <.LM145>:
    1a82:	3b f2 04                      	bne.w	1f74 <.LM288>

00001a85 <.LM146>:
    1a85:	61 05                         	cmp	#0, r5
    1a87:	3b ed 04                      	bne.w	1f74 <.LM288>

00001a8a <.LM147>:
    1a8a:	61 07                         	cmp	#0, r7
    1a8c:	3b 5e 08                      	bne.w	22ea <.LM355>

00001a8f <.LM148>:
    1a8f:	ee 07 34 01                   	mov.l	1232[r0], r7

00001a93 <.LVL109>:
    1a93:	fd 74 c7 01                   	tst	#1, r7
    1a97:	3a 53 08                      	beq.w	22ea <.LM355>

00001a9a <.LM149>:
    1a9a:	fb 7a 9b 04                   	mov.l	#0x49b, r7
    1a9e:	ee 0b 44 01                   	mov.l	1296[r0], r11

00001aa2 <.LVL111>:
    1aa2:	fa 04 9b 04 30                	mov.b	#48, 1179[r0]
    1aa7:	4b 07                         	add	r0, r7

00001aa9 <.LVL112>:
    1aa9:	ef bc                         	mov.l	r11, r12
    1aab:	fc 13 5c                      	max	r5, r12
    1aae:	eb 0c 36 01                   	mov.l	r12, 1240[r0]

00001ab2 <.LBB25>:
    1ab2:	eb 05 3c 01                   	mov.l	r5, 1264[r0]
    1ab6:	fa 06 3e 01 00                	mov.l	#0, 1272[r0]

00001abb <.L64>:
    1abb:	5b 66                         	movu.b	r6, r6
    1abd:	61 06                         	cmp	#0, r6
    1abf:	3a 4b fb                      	beq.w	160a <.LM55>

00001ac2 <.LM152>:
    1ac2:	ee 0e 36 01                   	mov.l	1240[r0], r14
    1ac6:	62 1e                         	add	#1, r14
    1ac8:	eb 0e 36 01                   	mov.l	r14, 1240[r0]

00001acc <.LVL115>:
    1acc:	38 3e fb                      	bra.w	160a <.LM55>

00001acf <.L32>:
    1acf:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001ad3 <.LM153>:
    1ad3:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001ad7 <.LM154>:
    1ad7:	ee 0d 34 01                   	mov.l	1232[r0], r13

00001adb <.LM155>:
    1adb:	62 37                         	add	#3, r7
    1add:	75 27 fc                      	and	#-4, r7
    1ae0:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001ae4 <.LM156>:
    1ae4:	fd 74 cd 08                   	tst	#8, r13
    1ae8:	3a 7b 0c                      	beq.w	2763 <.LM448>

00001aeb <.LM157>:
    1aeb:	71 7e 04                      	add	#4, r7, r14
    1aee:	ec 77                         	mov.l	[r7], r7
    1af0:	eb 0e 3b 01                   	mov.l	r14, 1260[r0]

00001af4 <.LVL118>:
    1af4:	eb 07 40 01                   	mov.l	r7, 1280[r0]

00001af8 <.LM158>:
    1af8:	ee 0b 40 01                   	mov.l	1280[r0], r11
    1afc:	eb 05 45 01                   	mov.l	r5, 1300[r0]
    1b00:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    1b04:	fb 72 18 54 00 00             	mov.l	#0x5418, r7
    1b0a:	ef b1                         	mov.l	r11, r1
    1b0c:	7f 17                         	jsr	r7

00001b0e <.LVL120>:
    1b0e:	61 11                         	cmp	#1, r1
    1b10:	ee 05 45 01                   	mov.l	1300[r0], r5
    1b14:	ee 0f 46 01                   	mov.l	1304[r0], r15
    1b18:	3b 1e 0b                      	bne.w	2636 <.LM414>

00001b1b <.LM159>:
    1b1b:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    1b22:	26 05                         	bpz.b	1b27 <.Ldebug_abbrev0+0xb>
    1b24:	38 b1 10                      	bra.w	2bd5 <.LM545>
    1b27:	ce 06 c6 04                   	mov.b	1222[r0], r6

00001b2b <.LM160>:
    1b2b:	75 5a 47                      	cmp	#71, r10
    1b2e:	2a 05                         	bgt.b	1b33 <.LM161>
    1b30:	38 b8 0e                      	bra.w	29e8 <.LM496>

00001b33 <.LM161>:
    1b33:	fb 72 1a 78 00 00             	mov.l	#0x781a, r7

00001b39 <.LM162>:
    1b39:	ee 0c 34 01                   	mov.l	1232[r0], r12

00001b3d <.LM163>:
    1b3d:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

00001b42 <.LM164>:
    1b42:	ee 0d 3c 01                   	mov.l	1264[r0], r13

00001b46 <.LM165>:
    1b46:	fa 06 36 01 03                	mov.l	#3, 1240[r0]

00001b4b <.LM166>:
    1b4b:	76 2c 7f ff                   	and	#-129, r12
    1b4f:	eb 0c 34 01                   	mov.l	r12, 1232[r0]

00001b53 <.LM167>:
    1b53:	ee 0b 36 01                   	mov.l	1240[r0], r11

00001b57 <.LM168>:
    1b57:	eb 0d 3e 01                   	mov.l	r13, 1272[r0]

00001b5b <.LM169>:
    1b5b:	38 60 ff                      	bra.w	1abb <.L64>

00001b5e <.L33>:
    1b5e:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1b62:	65 8c                         	or	#8, r12
    1b64:	eb 0c 34 01                   	mov.l	r12, 1232[r0]

00001b68 <.LVL124>:
    1b68:	58 7a                         	movu.b	[r7], r10

00001b6a <.LM171>:
    1b6a:	38 61 fa                      	bra.w	15cb <.LM44>

00001b6d <.L34>:
    1b6d:	ee 0d 34 01                   	mov.l	1232[r0], r13
    1b71:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1b75:	75 3d 10                      	or	#16, r13
    1b78:	eb 0d 34 01                   	mov.l	r13, 1232[r0]

00001b7c <.LM173>:
    1b7c:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1b80:	75 2b 20                      	and	#32, r11
    1b83:	3a ae 08                      	beq.w	2431 <.LM380>

00001b86 <.LM174>:
    1b86:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001b8a <.LVL128>:
    1b8a:	62 37                         	add	#3, r7
    1b8c:	75 27 fc                      	and	#-4, r7
    1b8f:	71 7e 08                      	add	#8, r7, r14
    1b92:	ec 78                         	mov.l	[r7], r8
    1b94:	ed 7b 01                      	mov.l	4[r7], r11
    1b97:	eb 0e 3b 01                   	mov.l	r14, 1260[r0]

00001b9b <.LM175>:
    1b9b:	66 07                         	mov.l	#0, r7

00001b9d <.LVL130>:
    1b9d:	fc 13 00                      	nop

00001ba0 <.L123>:
    1ba0:	fa 04 c6 04 00                	mov.b	#0, 1222[r0]
    1ba5:	66 06                         	mov.l	#0, r6
    1ba7:	38 c6 fe                      	bra.w	1a6d <.L71>

00001baa <.L35>:
    1baa:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001bae <.LM177>:
    1bae:	ee 07 34 01                   	mov.l	1232[r0], r7

00001bb2 <.LVL132>:
    1bb2:	75 37 10                      	or	#16, r7
    1bb5:	eb 07 34 01                   	mov.l	r7, 1232[r0]

00001bb9 <.LM178>:
    1bb9:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1bbd:	75 2b 20                      	and	#32, r11
    1bc0:	3a 92 08                      	beq.w	2452 <.LM383>

00001bc3 <.LM179>:
    1bc3:	ee 07 3b 01                   	mov.l	1260[r0], r7
    1bc7:	62 37                         	add	#3, r7
    1bc9:	75 27 fc                      	and	#-4, r7
    1bcc:	71 7b 08                      	add	#8, r7, r11
    1bcf:	eb 0b 3b 01                   	mov.l	r11, 1260[r0]

00001bd3 <.LVL134>:
    1bd3:	ec 78                         	mov.l	[r7], r8
    1bd5:	ed 7b 01                      	mov.l	4[r7], r11

00001bd8 <.LM180>:
    1bd8:	66 17                         	mov.l	#1, r7
    1bda:	2e c6                         	bra.b	1ba0 <.L123>

00001bdc <.L36>:
    1bdc:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001be0 <.LM181>:
    1be0:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1be4:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001be8 <.LM182>:
    1be8:	fa 02 42 01 26 78 00 00       	mov.l	#0x7826, 1288[r0]

00001bf0 <.LM183>:
    1bf0:	75 2b 20                      	and	#32, r11
    1bf3:	3a 6e 02                      	beq.w	1e61 <.LM271>

00001bf6 <.LVL137>:
    1bf6:	ef 00                         	nop

00001bf8 <.LM184>:
    1bf8:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001bfc <.LVL138>:
    1bfc:	62 37                         	add	#3, r7
    1bfe:	75 27 fc                      	and	#-4, r7
    1c01:	71 7b 08                      	add	#8, r7, r11
    1c04:	eb 0b 3b 01                   	mov.l	r11, 1260[r0]

00001c08 <.LVL139>:
    1c08:	ec 78                         	mov.l	[r7], r8
    1c0a:	ed 7b 01                      	mov.l	4[r7], r11

00001c0d <.LVL140>:
    1c0d:	fc 13 00                      	nop

00001c10 <.LM185>:
    1c10:	ee 0e 34 01                   	mov.l	1232[r0], r14
    1c14:	fd 74 ce 01                   	tst	#1, r14
    1c18:	3a dd 06                      	beq.w	22f5 <.LM358>

00001c1b <.LM186>:
    1c1b:	ff 57 b8                      	or	r11, r8, r7
    1c1e:	3a d7 06                      	beq.w	22f5 <.LM358>

00001c21 <.LM187>:
    1c21:	65 2e                         	or	#2, r14

00001c23 <.LM188>:
    1c23:	fa 04 c4 04 30                	mov.b	#48, 1220[r0]

00001c28 <.LM189>:
    1c28:	cb 0a c5 04                   	mov.b	r10, 1221[r0]

00001c2c <.LM190>:
    1c2c:	eb 0e 34 01                   	mov.l	r14, 1232[r0]

00001c30 <.LM191>:
    1c30:	66 27                         	mov.l	#2, r7
    1c32:	38 6e ff                      	bra.w	1ba0 <.L123>

00001c35 <.L37>:
    1c35:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001c39 <.LM192>:
    1c39:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001c3d <.LM193>:
    1c3d:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

00001c42 <.LM194>:
    1c42:	62 37                         	add	#3, r7
    1c44:	75 27 fc                      	and	#-4, r7
    1c47:	71 7e 04                      	add	#4, r7, r14
    1c4a:	cc 77                         	mov.b	[r7], r7

00001c4c <.LM195>:
    1c4c:	fa 06 36 01 01                	mov.l	#1, 1240[r0]

00001c51 <.LM196>:
    1c51:	cb 07 74 04                   	mov.b	r7, 1140[r0]

00001c55 <.LM197>:
    1c55:	ee 07 3c 01                   	mov.l	1264[r0], r7

00001c59 <.LM198>:
    1c59:	eb 0e 3b 01                   	mov.l	r14, 1260[r0]

00001c5d <.LM199>:
    1c5d:	eb 07 3e 01                   	mov.l	r7, 1272[r0]

00001c61 <.LM200>:
    1c61:	fa 04 c6 04 00                	mov.b	#0, 1222[r0]

00001c66 <.LM201>:
    1c66:	ee 0b 36 01                   	mov.l	1240[r0], r11

00001c6a <.LM202>:
    1c6a:	72 07 74 04                   	add	#0x474, r0, r7

00001c6e <.LVL145>:
    1c6e:	ee 06 3c 01                   	mov.l	1264[r0], r6

00001c72 <.LM203>:
    1c72:	38 98 f9                      	bra.w	160a <.LM55>

00001c75 <.L38>:
    1c75:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1c79:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1c7d:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001c81 <.LVL147>:
    1c81:	fd 74 cc 20                   	tst	#32, r12
    1c85:	3b c3 fd                      	bne.w	1a48 <.LM138>

00001c88 <.LM205>:
    1c88:	ee 0e 34 01                   	mov.l	1232[r0], r14
    1c8c:	fd 74 ce 10                   	tst	#16, r14
    1c90:	3a 54 0b                      	beq.w	27e4 <.LM458>

00001c93 <.LM206>:
    1c93:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001c97 <.LVL148>:
    1c97:	03                            	nop

00001c98 <.LM207>:
    1c98:	62 37                         	add	#3, r7
    1c9a:	75 27 fc                      	and	#-4, r7
    1c9d:	ec 78                         	mov.l	[r7], r8
    1c9f:	62 47                         	add	#4, r7
    1ca1:	fd bf 8b                      	shar	#31, r8, r11
    1ca4:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

00001ca8 <.LVL149>:
    1ca8:	ef bc                         	mov.l	r11, r12

00001caa <.LVL150>:
    1caa:	38 b6 fd                      	bra.w	1a60 <.LM139>

00001cad <.L28>:
    1cad:	ef 7d                         	mov.l	r7, r13
    1caf:	fd 38 da                      	movu.b	[r13+], r10

00001cb2 <.LVL152>:
    1cb2:	75 5a 2a                      	cmp	#42, r10
    1cb5:	3a c2 10                      	beq.w	2d77 <.LM591>

00001cb8 <.LM209>:
    1cb8:	71 ac d0                      	add	#-48, r10, r12
    1cbb:	61 9c                         	cmp	#9, r12
    1cbd:	66 05                         	mov.l	#0, r5

00001cbf <.LVL154>:
    1cbf:	25 05                         	bleu.b	1cc4 <.LM210>
    1cc1:	38 da 0f                      	bra.w	2c9b <.LM566>

00001cc4 <.LM210>:
    1cc4:	ff 27 55                      	add	r5, r5, r7

00001cc7 <.LM211>:
    1cc7:	fd 38 da                      	movu.b	[r13+], r10

00001cca <.LM212>:
    1cca:	6c 35                         	shll	#3, r5
    1ccc:	4b 75                         	add	r7, r5
    1cce:	4b c5                         	add	r12, r5

00001cd0 <.LM213>:
    1cd0:	71 ac d0                      	add	#-48, r10, r12
    1cd3:	61 9c                         	cmp	#9, r12

00001cd5 <.LM214>:
    1cd5:	ef d7                         	mov.l	r13, r7

00001cd7 <.LM215>:
    1cd7:	25 ed                         	bleu.b	1cc4 <.LM210>
    1cd9:	fd 74 45 ff                   	max	#-1, r5

00001cdd <.LM216>:
    1cdd:	38 f0 f8                      	bra.w	15cd <.LM45>

00001ce0 <.L39>:
    1ce0:	ee 0d 34 01                   	mov.l	1232[r0], r13
    1ce4:	75 3d 40                      	or	#64, r13
    1ce7:	eb 0d 34 01                   	mov.l	r13, 1232[r0]

00001ceb <.LVL161>:
    1ceb:	58 7a                         	movu.b	[r7], r10

00001ced <.LM218>:
    1ced:	38 de f8                      	bra.w	15cb <.LM44>

00001cf0 <.L40>:
    1cf0:	58 7a                         	movu.b	[r7], r10

00001cf2 <.LM220>:
    1cf2:	ef 7c                         	mov.l	r7, r12

00001cf4 <.LM221>:
    1cf4:	75 5a 6c                      	cmp	#108, r10
    1cf7:	3a 20 0d                      	beq.w	2a17 <.LM500>

00001cfa <.LM222>:
    1cfa:	ee 0c 34 01                   	mov.l	1232[r0], r12
    1cfe:	75 3c 10                      	or	#16, r12
    1d01:	eb 0c 34 01                   	mov.l	r12, 1232[r0]

00001d05 <.LVL165>:
    1d05:	38 c6 f8                      	bra.w	15cb <.LM44>

00001d08 <.L41>:
    1d08:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001d0c <.LM223>:
    1d0c:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1d10:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1d14:	fd 74 cb 20                   	tst	#32, r11
    1d18:	3a 5a 0a                      	beq.w	2772 <.LM449>

00001d1b <.LM224>:
    1d1b:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001d1f <.LVL167>:
    1d1f:	ee 0b 38 01                   	mov.l	1248[r0], r11
    1d23:	62 37                         	add	#3, r7
    1d25:	75 27 fc                      	and	#-4, r7
    1d28:	ec 7a                         	mov.l	[r7], r10

00001d2a <.LVL168>:
    1d2a:	ee 0c 38 01                   	mov.l	1248[r0], r12
    1d2e:	6b fb                         	shar	#31, r11
    1d30:	62 47                         	add	#4, r7
    1d32:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

00001d36 <.LVL169>:
    1d36:	e3 ac                         	mov.l	r12, [r10]
    1d38:	e7 ab 01                      	mov.l	r11, 4[r10]
    1d3b:	38 01 f8                      	bra.w	153c <.LM28>

00001d3e <.L43>:
    1d3e:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001d42 <.LM225>:
    1d42:	ee 07 3b 01                   	mov.l	1260[r0], r7

00001d46 <.LM226>:
    1d46:	ee 0c 34 01                   	mov.l	1232[r0], r12

00001d4a <.LM227>:
    1d4a:	62 37                         	add	#3, r7
    1d4c:	75 27 fc                      	and	#-4, r7
    1d4f:	71 7a 04                      	add	#4, r7, r10

00001d52 <.LM228>:
    1d52:	65 2c                         	or	#2, r12

00001d54 <.LM229>:
    1d54:	eb 0a 3b 01                   	mov.l	r10, 1260[r0]

00001d58 <.LVL173>:
    1d58:	ec 78                         	mov.l	[r7], r8
    1d5a:	66 0b                         	mov.l	#0, r11

00001d5c <.LM230>:
    1d5c:	eb 0c 34 01                   	mov.l	r12, 1232[r0]

00001d60 <.LM231>:
    1d60:	fa 04 c4 04 30                	mov.b	#48, 1220[r0]

00001d65 <.LM232>:
    1d65:	fa 04 c5 04 78                	mov.b	#120, 1221[r0]

00001d6a <.LM233>:
    1d6a:	fa 02 42 01 37 78 00 00       	mov.l	#0x7837, 1288[r0]

00001d72 <.LM234>:
    1d72:	66 27                         	mov.l	#2, r7

00001d74 <.LM235>:
    1d74:	75 4a 78                      	mov.l	#120, r10

00001d77 <.LM236>:
    1d77:	38 29 fe                      	bra.w	1ba0 <.L123>

00001d7a <.LVL178>:
    1d7a:	58 7a                         	movu.b	[r7], r10
    1d7c:	38 4f f8                      	bra.w	15cb <.LM44>

00001d7f <.L26>:
    1d7f:	75 4b 2b                      	mov.l	#43, r11
    1d82:	58 7a                         	movu.b	[r7], r10

00001d84 <.LM238>:
    1d84:	38 47 f8                      	bra.w	15cb <.LM44>

00001d87 <.L29>:
    1d87:	ee 0a 34 01                   	mov.l	1232[r0], r10

00001d8b <.LVL182>:
    1d8b:	76 3a 80 00                   	or	#128, r10
    1d8f:	eb 0a 34 01                   	mov.l	r10, 1232[r0]

00001d93 <.LVL183>:
    1d93:	58 7a                         	movu.b	[r7], r10

00001d95 <.LM240>:
    1d95:	38 36 f8                      	bra.w	15cb <.LM44>

00001d98 <.L30>:
    1d98:	ef 7d                         	mov.l	r7, r13

00001d9a <.LM241>:
    1d9a:	66 0c                         	mov.l	#0, r12

00001d9c <.LM242>:
    1d9c:	71 a7 d0                      	add	#-48, r10, r7
    1d9f:	ff 2e cc                      	add	r12, r12, r14

00001da2 <.LM243>:
    1da2:	fd 38 da                      	movu.b	[r13+], r10

00001da5 <.LM244>:
    1da5:	6c 3c                         	shll	#3, r12

00001da7 <.LVL188>:
    1da7:	4b ec                         	add	r14, r12
    1da9:	4b 7c                         	add	r7, r12

00001dab <.LM245>:
    1dab:	71 ae d0                      	add	#-48, r10, r14
    1dae:	61 9e                         	cmp	#9, r14

00001db0 <.LM246>:
    1db0:	ef d7                         	mov.l	r13, r7

00001db2 <.LM247>:
    1db2:	25 ea                         	bleu.b	1d9c <.LM242>

00001db4 <.LM248>:
    1db4:	eb 0c 37 01                   	mov.l	r12, 1244[r0]
    1db8:	38 15 f8                      	bra.w	15cd <.LM45>

00001dbb <.L23>:
    1dbb:	5b ba                         	movu.b	r11, r10

00001dbd <.LVL192>:
    1dbd:	61 0a                         	cmp	#0, r10
    1dbf:	21 bb                         	bne.b	1d7a <.LVL178>

00001dc1 <.LM250>:
    1dc1:	75 4b 20                      	mov.l	#32, r11
    1dc4:	58 7a                         	movu.b	[r7], r10
    1dc6:	38 05 f8                      	bra.w	15cb <.LM44>

00001dc9 <.L24>:
    1dc9:	ee 0e 34 01                   	mov.l	1232[r0], r14
    1dcd:	65 1e                         	or	#1, r14
    1dcf:	eb 0e 34 01                   	mov.l	r14, 1232[r0]

00001dd3 <.LVL194>:
    1dd3:	58 7a                         	movu.b	[r7], r10

00001dd5 <.LM252>:
    1dd5:	38 f6 f7                      	bra.w	15cb <.LM44>

00001dd8 <.L45>:
    1dd8:	ee 0b 3b 01                   	mov.l	1260[r0], r11
    1ddc:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1de0:	62 3b                         	add	#3, r11
    1de2:	75 2b fc                      	and	#-4, r11
    1de5:	ec b7                         	mov.l	[r11], r7

00001de7 <.LVL197>:
    1de7:	62 4b                         	add	#4, r11

00001de9 <.LM254>:
    1de9:	fa 04 c6 04 00                	mov.b	#0, 1222[r0]

00001dee <.LM255>:
    1dee:	eb 0b 3b 01                   	mov.l	r11, 1260[r0]

00001df2 <.LM256>:
    1df2:	61 07                         	cmp	#0, r7
    1df4:	3a df 0c                      	beq.w	2ad3 <.LBE41>

00001df7 <.LM257>:
    1df7:	61 05                         	cmp	#0, r5

00001df9 <.LBB26>:
    1df9:	ef 71                         	mov.l	r7, r1

00001dfb <.LBE26>:
    1dfb:	28 05                         	bge.b	1e00 <.LBB27>
    1dfd:	38 49 0c                      	bra.w	2a46 <.LM505>

00001e00 <.LBB27>:
    1e00:	ef 53                         	mov.l	r5, r3
    1e02:	66 02                         	mov.l	#0, r2
    1e04:	eb 05 45 01                   	mov.l	r5, 1300[r0]
    1e08:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    1e0c:	05 7c 2d 00                   	bsr.a	4b88 <_memchr>

00001e10 <.LM261>:
    1e10:	61 01                         	cmp	#0, r1
    1e12:	ee 05 45 01                   	mov.l	1300[r0], r5
    1e16:	ee 0f 46 01                   	mov.l	1304[r0], r15
    1e1a:	3a 38 0e                      	beq.w	2c52 <.LVL471>

00001e1d <.LM262>:
    1e1d:	ff 0b 71                      	sub	r7, r1, r11

00001e20 <.LM263>:
    1e20:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

00001e25 <.LM264>:
    1e25:	47 5b                         	cmp	r5, r11
    1e27:	2a 05                         	bgt.b	1e2c <.LM264+0x7>
    1e29:	38 13 0b                      	bra.w	293c <.LVL405>
    1e2c:	ef 5c                         	mov.l	r5, r12

00001e2e <.LM265>:
    1e2e:	ee 0d 3c 01                   	mov.l	1264[r0], r13
    1e32:	fd 74 4c 00                   	max	#0, r12
    1e36:	eb 0c 36 01                   	mov.l	r12, 1240[r0]
    1e3a:	ce 06 c6 04                   	mov.b	1222[r0], r6

00001e3e <.LM266>:
    1e3e:	ef 5b                         	mov.l	r5, r11

00001e40 <.LM267>:
    1e40:	eb 0d 3e 01                   	mov.l	r13, 1272[r0]
    1e44:	38 77 fc                      	bra.w	1abb <.L64>

00001e47 <.L47>:
    1e47:	cb 0b c6 04                   	mov.b	r11, 1222[r0]

00001e4b <.LBE27>:
    1e4b:	ee 0b 34 01                   	mov.l	1232[r0], r11
    1e4f:	eb 07 35 01                   	mov.l	r7, 1236[r0]

00001e53 <.LM269>:
    1e53:	fa 02 42 01 37 78 00 00       	mov.l	#0x7837, 1288[r0]

00001e5b <.LM270>:
    1e5b:	75 2b 20                      	and	#32, r11
    1e5e:	3b 9a fd                      	bne.w	1bf8 <.LM184>

00001e61 <.LM271>:
    1e61:	ee 07 34 01                   	mov.l	1232[r0], r7

00001e65 <.LVL206>:
    1e65:	75 27 10                      	and	#16, r7
    1e68:	3a 3a 09                      	beq.w	27a2 <.LM454>

00001e6b <.LM272>:
    1e6b:	ee 07 3b 01                   	mov.l	1260[r0], r7
    1e6f:	62 37                         	add	#3, r7
    1e71:	75 27 fc                      	and	#-4, r7
    1e74:	71 7c 04                      	add	#4, r7, r12
    1e77:	eb 0c 3b 01                   	mov.l	r12, 1260[r0]

00001e7b <.LVL207>:
    1e7b:	ec 78                         	mov.l	[r7], r8
    1e7d:	38 93 fd                      	bra.w	1c10 <.LM185>

00001e80 <.L44>:
    1e80:	ee 0d 34 01                   	mov.l	1232[r0], r13
    1e84:	75 3d 20                      	or	#32, r13
    1e87:	eb 0d 34 01                   	mov.l	r13, 1232[r0]

00001e8b <.LVL209>:
    1e8b:	58 7a                         	movu.b	[r7], r10

00001e8d <.LM274>:
    1e8d:	38 3e f7                      	bra.w	15cb <.LM44>

00001e90 <.L364>:
    1e90:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1e94:	38 e8 fc                      	bra.w	1b7c <.LM173>

00001e97 <.L365>:
    1e97:	eb 07 35 01                   	mov.l	r7, 1236[r0]
    1e9b:	38 1e fd                      	bra.w	1bb9 <.LM178>

00001e9e <.LM275>:
    1e9e:	ee 0a 3a 01                   	mov.l	1256[r0], r10
    1ea2:	61 1a                         	cmp	#1, r10
    1ea4:	2a 05                         	bgt.b	1ea9 <.LM276>
    1ea6:	38 ea 02                      	bra.w	2190 <.LM328>

00001ea9 <.LM276>:
    1ea9:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1ead:	ee 0a 29 01                   	mov.l	1188[r0], r10
    1eb1:	62 1e                         	add	#1, r14
    1eb3:	62 1a                         	add	#1, r10
    1eb5:	e3 f7                         	mov.l	r7, [r15]
    1eb7:	f9 f6 01 01                   	mov.l	#1, 4[r15]
    1ebb:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

00001ebf <.LVL213>:
    1ebf:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1ec3:	61 7e                         	cmp	#7, r14
    1ec5:	2b 05                         	ble.b	1eca <.LLST23+0x5>
    1ec7:	38 d7 06                      	bra.w	259e <.LBE29>
    1eca:	71 f6 08                      	add	#8, r15, r6

00001ecd <.LVL214>:
    1ecd:	fc 13 00                      	nop

00001ed0 <.LM277>:
    1ed0:	ee 0a 29 01                   	mov.l	1188[r0], r10
    1ed4:	ee 0c 3d 01                   	mov.l	1268[r0], r12
    1ed8:	ee 0d 3f 01                   	mov.l	1276[r0], r13
    1edc:	62 1e                         	add	#1, r14
    1ede:	06 8a 0a 3f 01                	add	1276[r0].l, r10
    1ee3:	e3 6c                         	mov.l	r12, [r6]
    1ee5:	e7 6d 01                      	mov.l	r13, 4[r6]
    1ee8:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

00001eec <.LVL215>:
    1eec:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1ef0:	61 7e                         	cmp	#7, r14
    1ef2:	2b 05                         	ble.b	1ef7 <.LVL215+0xb>
    1ef4:	38 ca 06                      	bra.w	25be <.LM406>
    1ef7:	62 86                         	add	#8, r6

00001ef9 <.LM278>:
    1ef9:	ee 0a 40 01                   	mov.l	1280[r0], r10
    1efd:	fd 72 1a 00 00 00 00          	fcmp	#0, r10

00001f04 <.LM279>:
    1f04:	ee 0a 3a 01                   	mov.l	1256[r0], r10

00001f08 <.LM280>:
    1f08:	3a c5 04                      	beq.w	23cd <.LM372>

00001f0b <.LM281>:
    1f0b:	ee 0b 29 01                   	mov.l	1188[r0], r11
    1f0f:	60 1a                         	sub	#1, r10

00001f11 <.LM282>:
    1f11:	62 17                         	add	#1, r7

00001f13 <.LM283>:
    1f13:	4b ab                         	add	r10, r11
    1f15:	62 1e                         	add	#1, r14
    1f17:	e3 67                         	mov.l	r7, [r6]
    1f19:	e7 6a 01                      	mov.l	r10, 4[r6]
    1f1c:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

00001f20 <.LVL218>:
    1f20:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1f24:	61 7e                         	cmp	#7, r14
    1f26:	2b 05                         	ble.b	1f2b <.LM284>
    1f28:	38 94 02                      	bra.w	21bc <.LM330>

00001f2b <.LM284>:
    1f2b:	62 86                         	add	#8, r6
    1f2d:	fc 13 00                      	nop

00001f30 <.LM285>:
    1f30:	ee 07 29 01                   	mov.l	1188[r0], r7
    1f34:	ee 0b 41 01                   	mov.l	1284[r0], r11
    1f38:	72 0a af 04                   	add	#0x4af, r0, r10
    1f3c:	06 8a 07 41 01                	add	1284[r0].l, r7
    1f41:	62 1e                         	add	#1, r14
    1f43:	e3 6a                         	mov.l	r10, [r6]
    1f45:	e7 6b 01                      	mov.l	r11, 4[r6]
    1f48:	eb 07 29 01                   	mov.l	r7, 1188[r0]

00001f4c <.LVL221>:
    1f4c:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1f50:	61 7e                         	cmp	#7, r14
    1f52:	2a 05                         	bgt.b	1f57 <.LVL222>
    1f54:	38 36 02                      	bra.w	218a <.LM327>

00001f57 <.LVL222>:
    1f57:	03                            	nop

00001f58 <.LM286>:
    1f58:	ee 01 39 01                   	mov.l	1252[r0], r1
    1f5c:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    1f60:	4b 03                         	add	r0, r3
    1f62:	ef 92                         	mov.l	r9, r2
    1f64:	05 d4 35 00                   	bsr.a	5538 <___sprint_r>

00001f68 <.LVL223>:
    1f68:	61 01                         	cmp	#0, r1
    1f6a:	3b 76 fa                      	bne.w	19e0 <.L18>

00001f6d <.LM287>:
    1f6d:	66 cf                         	mov.l	#12, r15
    1f6f:	4b 0f                         	add	r0, r15
    1f71:	38 7f f8                      	bra.w	17f0 <.LBE12>

00001f74 <.LM288>:
    1f74:	61 17                         	cmp	#1, r7
    1f76:	3a ff 02                      	beq.w	2275 <.LM346>
    1f79:	61 27                         	cmp	#2, r7
    1f7b:	3a cd 02                      	beq.w	2248 <.LM339>

00001f7e <.LM289>:
    1f7e:	fb da 9b 04                   	mov.l	#0x49b, r13
    1f82:	4b 0d                         	add	r0, r13

00001f84 <.LM290>:
    1f84:	ef 8c                         	mov.l	r8, r12

00001f86 <.LM291>:
    1f86:	fd dd be                      	shll	#29, r11, r14

00001f89 <.LM292>:
    1f89:	64 7c                         	and	#7, r12

00001f8b <.LM293>:
    1f8b:	68 38                         	shlr	#3, r8

00001f8d <.LM294>:
    1f8d:	71 cc 30                      	add	#48, r12, r12

00001f90 <.LM295>:
    1f90:	57 e8                         	or	r14, r8
    1f92:	68 3b                         	shlr	#3, r11

00001f94 <.LM296>:
    1f94:	ef d7                         	mov.l	r13, r7

00001f96 <.LVL227>:
    1f96:	c3 dc                         	mov.b	r12, [r13]

00001f98 <.LM297>:
    1f98:	ff 5e b8                      	or	r11, r8, r14
    1f9b:	60 1d                         	sub	#1, r13
    1f9d:	61 0e                         	cmp	#0, r14
    1f9f:	21 e5                         	bne.b	1f84 <.LM290>

00001fa1 <.LM298>:
    1fa1:	ee 0e 34 01                   	mov.l	1232[r0], r14

00001fa5 <.LM299>:
    1fa5:	ef 7b                         	mov.l	r7, r11

00001fa7 <.LM300>:
    1fa7:	fd 74 ce 01                   	tst	#1, r14
    1fab:	20 0f                         	beq.b	1fba <.LM302+0x7>

00001fad <.LM301>:
    1fad:	5b cc                         	movu.b	r12, r12
    1faf:	75 5c 30                      	cmp	#48, r12
    1fb2:	10                            	beq.s	1fba <.LM302+0x7>

00001fb3 <.LM302>:
    1fb3:	60 1b                         	sub	#1, r11
    1fb5:	ef d7                         	mov.l	r13, r7
    1fb7:	f8 b4 30                      	mov.b	#48, [r11]
    1fba:	ee 0b 32 01                   	mov.l	1224[r0], r11
    1fbe:	43 7b                         	sub	r7, r11
    1fc0:	38 e9 fa                      	bra.w	1aa9 <.LVL112>

00001fc3 <.LM303>:
    1fc3:	75 5a 65                      	cmp	#101, r10
    1fc6:	2a 05                         	bgt.b	1fcb <.LM304>
    1fc8:	38 d6 fe                      	bra.w	1e9e <.LM275>

00001fcb <.LM304>:
    1fcb:	ee 0e 40 01                   	mov.l	1280[r0], r14
    1fcf:	fd 72 1e 00 00 00 00          	fcmp	#0, r14
    1fd6:	3b 24 03                      	bne.w	22fa <.LM359>

00001fd9 <.LM305>:
    1fd9:	ee 0e 28 01                   	mov.l	1184[r0], r14
    1fdd:	ee 07 29 01                   	mov.l	1188[r0], r7
    1fe1:	62 1e                         	add	#1, r14
    1fe3:	62 17                         	add	#1, r7
    1fe5:	f8 f2 4f 78 00 00             	mov.l	#0x784f, [r15]
    1feb:	f9 f6 01 01                   	mov.l	#1, 4[r15]
    1fef:	eb 07 29 01                   	mov.l	r7, 1188[r0]

00001ff3 <.LVL231>:
    1ff3:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    1ff7:	61 7e                         	cmp	#7, r14
    1ff9:	2b 05                         	ble.b	1ffe <.LVL231+0xb>
    1ffb:	38 55 08                      	bra.w	2850 <.LBE18>
    1ffe:	62 8f                         	add	#8, r15

00002000 <.LM306>:
    2000:	ee 07 30 01                   	mov.l	1216[r0], r7
    2004:	06 86 07 3a 01                	cmp	1256[r0].l, r7
    2009:	29 0f                         	blt.b	2018 <.LM308>

0000200b <.LM307>:
    200b:	ee 07 34 01                   	mov.l	1232[r0], r7
    200f:	fd 74 c7 01                   	tst	#1, r7
    2013:	3a dd f7                      	beq.w	17f0 <.LBE12>
    2016:	ef 00                         	nop

00002018 <.LM308>:
    2018:	ee 0e 28 01                   	mov.l	1184[r0], r14
    201c:	ee 07 29 01                   	mov.l	1188[r0], r7
    2020:	ee 0a 3d 01                   	mov.l	1268[r0], r10
    2024:	ee 0b 3f 01                   	mov.l	1276[r0], r11
    2028:	06 8a 07 3f 01                	add	1276[r0].l, r7
    202d:	62 1e                         	add	#1, r14
    202f:	e3 fa                         	mov.l	r10, [r15]
    2031:	e7 fb 01                      	mov.l	r11, 4[r15]
    2034:	eb 07 29 01                   	mov.l	r7, 1188[r0]

00002038 <.LVL233>:
    2038:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    203c:	61 7e                         	cmp	#7, r14
    203e:	2b 05                         	ble.b	2043 <.LVL233+0xb>
    2040:	38 ea 09                      	bra.w	2a2a <.LM503>
    2043:	62 8f                         	add	#8, r15

00002045 <.LVL234>:
    2045:	fc 13 00                      	nop

00002048 <.LM309>:
    2048:	ee 0a 3a 01                   	mov.l	1256[r0], r10
    204c:	60 1a                         	sub	#1, r10

0000204e <.LVL235>:
    204e:	61 0a                         	cmp	#0, r10
    2050:	2a 05                         	bgt.b	2055 <.LM310>
    2052:	38 9e f7                      	bra.w	17f0 <.LBE12>

00002055 <.LM310>:
    2055:	75 5a 10                      	cmp	#16, r10
    2058:	ee 0e 28 01                   	mov.l	1184[r0], r14
    205c:	2a 05                         	bgt.b	2061 <.LM311>
    205e:	38 15 04                      	bra.w	2473 <.LBB15>

00002061 <.LM311>:
    2061:	fb 72 38 55 00 00             	mov.l	#0x5538, r7
    2067:	ee 0c 39 01                   	mov.l	1252[r0], r12
    206b:	2e 10                         	bra.b	207b <.LM313>

0000206d <.LVL236>:
    206d:	62 8f                         	add	#8, r15

0000206f <.LVL237>:
    206f:	03                            	nop

00002070 <.LM312>:
    2070:	71 aa f0                      	add	#-16, r10, r10
    2073:	75 5a 10                      	cmp	#16, r10
    2076:	2a 05                         	bgt.b	207b <.LM313>
    2078:	38 fb 03                      	bra.w	2473 <.LBB15>

0000207b <.LM313>:
    207b:	ee 0b 29 01                   	mov.l	1188[r0], r11
    207f:	62 1e                         	add	#1, r14
    2081:	71 bb 10                      	add	#16, r11, r11
    2084:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    208a:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    208e:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

00002092 <.LVL239>:
    2092:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2096:	61 7e                         	cmp	#7, r14
    2098:	2b d5                         	ble.b	206d <.LVL236>

0000209a <.LM314>:
    209a:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    209e:	4b 03                         	add	r0, r3
    20a0:	ef c1                         	mov.l	r12, r1
    20a2:	ef 92                         	mov.l	r9, r2
    20a4:	7f 17                         	jsr	r7

000020a6 <.LVL240>:
    20a6:	61 01                         	cmp	#0, r1
    20a8:	3b 38 f9                      	bne.w	19e0 <.L18>

000020ab <.LM315>:
    20ab:	66 cf                         	mov.l	#12, r15
    20ad:	ee 0e 28 01                   	mov.l	1184[r0], r14
    20b1:	4b 0f                         	add	r0, r15
    20b3:	2e bd                         	bra.b	2070 <.LM312>

000020b5 <.LM316>:
    20b5:	ee 0d 37 01                   	mov.l	1244[r0], r13
    20b9:	06 82 0d 36 01                	sub	1240[r0].l, r13

000020be <.LVL242>:
    20be:	61 0d                         	cmp	#0, r13
    20c0:	2a 05                         	bgt.b	20c5 <.LM317>
    20c2:	38 70 f6                      	bra.w	1732 <.LM71>

000020c5 <.LM317>:
    20c5:	75 5d 10                      	cmp	#16, r13
    20c8:	ee 0e 28 01                   	mov.l	1184[r0], r14
    20cc:	2b 58                         	ble.b	2124 <.LM322>

000020ce <.LM318>:
    20ce:	fb c2 38 55 00 00             	mov.l	#0x5538, r12
    20d4:	ee 08 39 01                   	mov.l	1252[r0], r8
    20d8:	2e 0c                         	bra.b	20e4 <.LM319>

000020da <.LVL243>:
    20da:	62 8f                         	add	#8, r15

000020dc <.LVL244>:
    20dc:	71 dd f0                      	add	#-16, r13, r13
    20df:	75 5d 10                      	cmp	#16, r13
    20e2:	2b 42                         	ble.b	2124 <.LM322>

000020e4 <.LM319>:
    20e4:	ee 04 29 01                   	mov.l	1188[r0], r4
    20e8:	62 1e                         	add	#1, r14
    20ea:	71 44 10                      	add	#16, r4, r4
    20ed:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    20f3:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    20f7:	eb 04 29 01                   	mov.l	r4, 1188[r0]

000020fb <.LVL246>:
    20fb:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    20ff:	61 7e                         	cmp	#7, r14
    2101:	2b d9                         	ble.b	20da <.LVL243>

00002103 <.LM320>:
    2103:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2107:	4b 03                         	add	r0, r3
    2109:	ef 81                         	mov.l	r8, r1
    210b:	ef 92                         	mov.l	r9, r2
    210d:	7f 1c                         	jsr	r12

0000210f <.LVL247>:
    210f:	61 01                         	cmp	#0, r1
    2111:	3b cf f8                      	bne.w	19e0 <.L18>

00002114 <.LM321>:
    2114:	66 cf                         	mov.l	#12, r15
    2116:	4b 0f                         	add	r0, r15

00002118 <.LVL248>:
    2118:	71 dd f0                      	add	#-16, r13, r13
    211b:	75 5d 10                      	cmp	#16, r13
    211e:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2122:	2a c2                         	bgt.b	20e4 <.LM319>

00002124 <.LM322>:
    2124:	ee 0c 29 01                   	mov.l	1188[r0], r12
    2128:	62 1e                         	add	#1, r14
    212a:	4b dc                         	add	r13, r12
    212c:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    2132:	e7 fd 01                      	mov.l	r13, 4[r15]
    2135:	eb 0c 29 01                   	mov.l	r12, 1188[r0]

00002139 <.LVL250>:
    2139:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    213d:	61 7e                         	cmp	#7, r14
    213f:	2b 05                         	ble.b	2144 <.LM323>
    2141:	38 c0 04                      	bra.w	2601 <.LM409>

00002144 <.LM323>:
    2144:	62 8f                         	add	#8, r15

00002146 <.LVL251>:
    2146:	38 ec f5                      	bra.w	1732 <.LM71>

00002149 <.LM324>:
    2149:	ee 01 39 01                   	mov.l	1252[r0], r1
    214d:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2151:	4b 03                         	add	r0, r3
    2153:	ef 92                         	mov.l	r9, r2
    2155:	05 e3 33 00                   	bsr.a	5538 <___sprint_r>

00002159 <.LVL253>:
    2159:	61 01                         	cmp	#0, r1
    215b:	3b 85 f8                      	bne.w	19e0 <.L18>

0000215e <.LM325>:
    215e:	66 c6                         	mov.l	#12, r6

00002160 <.LVL254>:
    2160:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2164:	4b 06                         	add	r0, r6
    2166:	ef 00                         	nop

00002168 <.LM326>:
    2168:	ee 0a 29 01                   	mov.l	1188[r0], r10
    216c:	e3 67                         	mov.l	r7, [r6]
    216e:	ee 07 3a 01                   	mov.l	1256[r0], r7
    2172:	62 1e                         	add	#1, r14
    2174:	06 8a 0a 3a 01                	add	1256[r0].l, r10
    2179:	a0 6f                         	mov.l	r7, 4[r6]
    217b:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

0000217f <.LVL256>:
    217f:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2183:	61 7e                         	cmp	#7, r14
    2185:	2b 05                         	ble.b	218a <.LM327>
    2187:	38 d1 fd                      	bra.w	1f58 <.LM286>

0000218a <.LM327>:
    218a:	71 6f 08                      	add	#8, r6, r15
    218d:	38 63 f6                      	bra.w	17f0 <.LBE12>

00002190 <.LM328>:
    2190:	ee 0b 34 01                   	mov.l	1232[r0], r11
    2194:	fd 74 cb 01                   	tst	#1, r11
    2198:	3b 11 fd                      	bne.w	1ea9 <.LM276>

0000219b <.LM329>:
    219b:	ee 0e 28 01                   	mov.l	1184[r0], r14
    219f:	ee 0a 29 01                   	mov.l	1188[r0], r10
    21a3:	62 1e                         	add	#1, r14
    21a5:	62 1a                         	add	#1, r10
    21a7:	e3 f7                         	mov.l	r7, [r15]
    21a9:	f9 f6 01 01                   	mov.l	#1, 4[r15]
    21ad:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

000021b1 <.LVL259>:
    21b1:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    21b5:	61 7e                         	cmp	#7, r14
    21b7:	2a 05                         	bgt.b	21bc <.LM330>
    21b9:	38 38 08                      	bra.w	29f1 <.LM497>

000021bc <.LM330>:
    21bc:	ee 01 39 01                   	mov.l	1252[r0], r1
    21c0:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    21c4:	4b 03                         	add	r0, r3
    21c6:	ef 92                         	mov.l	r9, r2
    21c8:	05 70 33 00                   	bsr.a	5538 <___sprint_r>

000021cc <.LVL261>:
    21cc:	61 01                         	cmp	#0, r1
    21ce:	3b 12 f8                      	bne.w	19e0 <.L18>

000021d1 <.LM331>:
    21d1:	66 c6                         	mov.l	#12, r6
    21d3:	4b 06                         	add	r0, r6
    21d5:	ee 0e 28 01                   	mov.l	1184[r0], r14
    21d9:	38 57 fd                      	bra.w	1f30 <.LM285>

000021dc <.LM332>:
    21dc:	ee 01 39 01                   	mov.l	1252[r0], r1
    21e0:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    21e4:	4b 03                         	add	r0, r3
    21e6:	ef 92                         	mov.l	r9, r2
    21e8:	05 50 33 00                   	bsr.a	5538 <___sprint_r>

000021ec <.LVL263>:
    21ec:	61 01                         	cmp	#0, r1
    21ee:	3a ca f6                      	beq.w	18b8 <.LM93>
    21f1:	38 ef f7                      	bra.w	19e0 <.L18>

000021f4 <.LM333>:
    21f4:	ee 01 39 01                   	mov.l	1252[r0], r1
    21f8:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    21fc:	4b 03                         	add	r0, r3
    21fe:	ef 92                         	mov.l	r9, r2
    2200:	05 38 33 00                   	bsr.a	5538 <___sprint_r>

00002204 <.LVL265>:
    2204:	61 01                         	cmp	#0, r1
    2206:	3b da f7                      	bne.w	19e0 <.L18>

00002209 <.LM334>:
    2209:	66 cf                         	mov.l	#12, r15
    220b:	4b 0f                         	add	r0, r15
    220d:	38 b5 f5                      	bra.w	17c2 <.LM79>

00002210 <.LM335>:
    2210:	ee 01 39 01                   	mov.l	1252[r0], r1
    2214:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2218:	4b 03                         	add	r0, r3
    221a:	ef 92                         	mov.l	r9, r2
    221c:	05 1c 33 00                   	bsr.a	5538 <___sprint_r>

00002220 <.LVL267>:
    2220:	61 01                         	cmp	#0, r1
    2222:	3b be f7                      	bne.w	19e0 <.L18>

00002225 <.LM336>:
    2225:	66 cf                         	mov.l	#12, r15
    2227:	4b 0f                         	add	r0, r15
    2229:	38 03 f5                      	bra.w	172c <.LM70>

0000222c <.LM337>:
    222c:	ee 01 39 01                   	mov.l	1252[r0], r1
    2230:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2234:	4b 03                         	add	r0, r3
    2236:	ef 92                         	mov.l	r9, r2
    2238:	05 00 33 00                   	bsr.a	5538 <___sprint_r>

0000223c <.LVL269>:
    223c:	61 01                         	cmp	#0, r1
    223e:	3b a2 f7                      	bne.w	19e0 <.L18>

00002241 <.LM338>:
    2241:	66 cf                         	mov.l	#12, r15
    2243:	4b 0f                         	add	r0, r15
    2245:	38 bc f4                      	bra.w	1701 <.LM68>

00002248 <.LM339>:
    2248:	fb ca 9b 04                   	mov.l	#0x49b, r12
    224c:	ee 04 42 01                   	mov.l	1288[r0], r4
    2250:	4b 0c                         	add	r0, r12

00002252 <.LM340>:
    2252:	ef c7                         	mov.l	r12, r7

00002254 <.LVL272>:
    2254:	ef 8c                         	mov.l	r8, r12
    2256:	64 fc                         	and	#15, r12

00002258 <.LM341>:
    2258:	fd dc be                      	shll	#28, r11, r14
    225b:	fd 84 8d                      	shlr	#4, r8, r13

0000225e <.LM342>:
    225e:	fe 4c 4c                      	mov.b	[r12, r4], r12

00002261 <.LM343>:
    2261:	68 4b                         	shlr	#4, r11

00002263 <.LVL273>:
    2263:	ff 58 de                      	or	r13, r14, r8

00002266 <.LM344>:
    2266:	c3 7c                         	mov.b	r12, [r7]

00002268 <.LM345>:
    2268:	ff 5d b8                      	or	r11, r8, r13
    226b:	71 7c ff                      	add	#-1, r7, r12
    226e:	61 0d                         	cmp	#0, r13
    2270:	21 e2                         	bne.b	2252 <.LM340>
    2272:	38 48 fd                      	bra.w	1fba <.LM302+0x7>

00002275 <.LM346>:
    2275:	61 0b                         	cmp	#0, r11
    2277:	1d                            	bne.s	227c <.LM347>
    2278:	61 98                         	cmp	#9, r8
    227a:	25 5c                         	bleu.b	22d6 <.LM353>

0000227c <.LM347>:
    227c:	fb ea 9b 04                   	mov.l	#0x49b, r14
    2280:	eb 0a 36 01                   	mov.l	r10, 1240[r0]
    2284:	4b 0e                         	add	r0, r14
    2286:	ef 8a                         	mov.l	r8, r10

00002288 <.LVL276>:
    2288:	fb d2 40 74 00 00             	mov.l	#0x7440, r13
    228e:	fb c2 70 70 00 00             	mov.l	#0x7070, r12
    2294:	eb 0f 3c 01                   	mov.l	r15, 1264[r0]
    2298:	ef 58                         	mov.l	r5, r8

0000229a <.LM348>:
    229a:	ef a1                         	mov.l	r10, r1
    229c:	ef b2                         	mov.l	r11, r2
    229e:	66 a3                         	mov.l	#10, r3
    22a0:	66 04                         	mov.l	#0, r4
    22a2:	ef e7                         	mov.l	r14, r7

000022a4 <.LVL278>:
    22a4:	7f 1d                         	jsr	r13
    22a6:	71 11 30                      	add	#48, r1, r1
    22a9:	c3 71                         	mov.b	r1, [r7]

000022ab <.LM349>:
    22ab:	ef b2                         	mov.l	r11, r2
    22ad:	ef a1                         	mov.l	r10, r1
    22af:	66 04                         	mov.l	#0, r4
    22b1:	66 a3                         	mov.l	#10, r3
    22b3:	7f 1c                         	jsr	r12

000022b5 <.LM350>:
    22b5:	ff 54 21                      	or	r2, r1, r4
    22b8:	71 7e ff                      	add	#-1, r7, r14
    22bb:	61 04                         	cmp	#0, r4

000022bd <.LM351>:
    22bd:	ef 1a                         	mov.l	r1, r10

000022bf <.LVL281>:
    22bf:	ef 2b                         	mov.l	r2, r11

000022c1 <.LM352>:
    22c1:	21 d9                         	bne.b	229a <.LM348>
    22c3:	ee 0b 32 01                   	mov.l	1224[r0], r11
    22c7:	ee 0a 36 01                   	mov.l	1240[r0], r10
    22cb:	ee 0f 3c 01                   	mov.l	1264[r0], r15
    22cf:	ef 85                         	mov.l	r8, r5
    22d1:	43 7b                         	sub	r7, r11
    22d3:	38 d6 f7                      	bra.w	1aa9 <.LVL112>

000022d6 <.LM353>:
    22d6:	71 88 30                      	add	#48, r8, r8

000022d9 <.LVL284>:
    22d9:	fb 7a 9b 04                   	mov.l	#0x49b, r7

000022dd <.LVL285>:
    22dd:	cb 08 9b 04                   	mov.b	r8, 1179[r0]
    22e1:	ee 0b 44 01                   	mov.l	1296[r0], r11
    22e5:	4b 07                         	add	r0, r7

000022e7 <.LM354>:
    22e7:	38 c2 f7                      	bra.w	1aa9 <.LVL112>

000022ea <.LM355>:
    22ea:	fb 7a 9c 04                   	mov.l	#0x49c, r7

000022ee <.LM356>:
    22ee:	ef 5b                         	mov.l	r5, r11

000022f0 <.LM357>:
    22f0:	4b 07                         	add	r0, r7
    22f2:	38 b7 f7                      	bra.w	1aa9 <.LVL112>

000022f5 <.LM358>:
    22f5:	66 27                         	mov.l	#2, r7
    22f7:	38 a9 f8                      	bra.w	1ba0 <.L123>

000022fa <.LM359>:
    22fa:	ee 0b 30 01                   	mov.l	1216[r0], r11
    22fe:	61 0b                         	cmp	#0, r11
    2300:	2a 05                         	bgt.b	2305 <.LVL292>
    2302:	38 6a 05                      	bra.w	286c <.LM467>

00002305 <.LVL292>:
    2305:	ee 0c 3a 01                   	mov.l	1256[r0], r12

00002309 <.LBB14>:
    2309:	ee 0b 3a 01                   	mov.l	1256[r0], r11
    230d:	06 a2 05 0c 3e 01             	min	1272[r0].l, r12
    2313:	4b 7b                         	add	r7, r11

00002315 <.LVL293>:
    2315:	61 0c                         	cmp	#0, r12
    2317:	2b 24                         	ble.b	233b <.LM363>

00002319 <.LM361>:
    2319:	ee 0e 28 01                   	mov.l	1184[r0], r14
    231d:	ee 0a 29 01                   	mov.l	1188[r0], r10
    2321:	62 1e                         	add	#1, r14
    2323:	4b ca                         	add	r12, r10
    2325:	e3 f7                         	mov.l	r7, [r15]
    2327:	e7 fc 01                      	mov.l	r12, 4[r15]
    232a:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

0000232e <.LVL294>:
    232e:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2332:	61 7e                         	cmp	#7, r14
    2334:	2b 05                         	ble.b	2339 <.LM362>
    2336:	38 3c 07                      	bra.w	2a72 <.LBB19>

00002339 <.LM362>:
    2339:	62 8f                         	add	#8, r15

0000233b <.LM363>:
    233b:	ee 0a 3e 01                   	mov.l	1272[r0], r10
    233f:	fd 74 4c 00                   	max	#0, r12

00002343 <.LVL296>:
    2343:	ff 0c ca                      	sub	r12, r10, r12

00002346 <.LVL297>:
    2346:	61 0c                         	cmp	#0, r12
    2348:	2a 05                         	bgt.b	234d <.LM364>
    234a:	38 66 01                      	bra.w	24b0 <.LBE16>

0000234d <.LM364>:
    234d:	75 5c 10                      	cmp	#16, r12
    2350:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2354:	2a 05                         	bgt.b	2359 <.LM365>
    2356:	38 d5 04                      	bra.w	282b <.LBB18>

00002359 <.LM365>:
    2359:	fb a2 38 55 00 00             	mov.l	#0x5538, r10
    235f:	ee 0d 39 01                   	mov.l	1252[r0], r13
    2363:	2e 10                         	bra.b	2373 <.LM367>

00002365 <.LVL298>:
    2365:	62 8f                         	add	#8, r15

00002367 <.LVL299>:
    2367:	03                            	nop

00002368 <.LM366>:
    2368:	71 cc f0                      	add	#-16, r12, r12
    236b:	75 5c 10                      	cmp	#16, r12
    236e:	2a 05                         	bgt.b	2373 <.LM367>
    2370:	38 bb 04                      	bra.w	282b <.LBB18>

00002373 <.LM367>:
    2373:	ee 04 29 01                   	mov.l	1188[r0], r4
    2377:	62 1e                         	add	#1, r14
    2379:	71 44 10                      	add	#16, r4, r4
    237c:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    2382:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    2386:	eb 04 29 01                   	mov.l	r4, 1188[r0]

0000238a <.LVL301>:
    238a:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    238e:	61 7e                         	cmp	#7, r14
    2390:	2b d5                         	ble.b	2365 <.LVL298>

00002392 <.LM368>:
    2392:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2396:	4b 03                         	add	r0, r3
    2398:	ef d1                         	mov.l	r13, r1
    239a:	ef 92                         	mov.l	r9, r2
    239c:	7f 1a                         	jsr	r10

0000239e <.LVL302>:
    239e:	61 01                         	cmp	#0, r1
    23a0:	3b 40 f6                      	bne.w	19e0 <.L18>

000023a3 <.LM369>:
    23a3:	66 cf                         	mov.l	#12, r15
    23a5:	ee 0e 28 01                   	mov.l	1184[r0], r14
    23a9:	4b 0f                         	add	r0, r15
    23ab:	2e bd                         	bra.b	2368 <.LM366>

000023ad <.LBE14>:
    23ad:	ee 01 39 01                   	mov.l	1252[r0], r1
    23b1:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    23b5:	4b 03                         	add	r0, r3
    23b7:	ef 92                         	mov.l	r9, r2
    23b9:	05 7f 31 00                   	bsr.a	5538 <___sprint_r>

000023bd <.LVL304>:
    23bd:	61 01                         	cmp	#0, r1
    23bf:	3b 21 f6                      	bne.w	19e0 <.L18>

000023c2 <.LM371>:
    23c2:	66 cf                         	mov.l	#12, r15
    23c4:	5a 06 c6 04                   	movu.b	1222[r0], r6
    23c8:	4b 0f                         	add	r0, r15
    23ca:	38 0c f3                      	bra.w	16d6 <.LM66>

000023cd <.LM372>:
    23cd:	60 1a                         	sub	#1, r10

000023cf <.LVL306>:
    23cf:	61 0a                         	cmp	#0, r10
    23d1:	2a 05                         	bgt.b	23d6 <.LM373>
    23d3:	38 5d fb                      	bra.w	1f30 <.LM285>

000023d6 <.LM373>:
    23d6:	75 5a 10                      	cmp	#16, r10
    23d9:	2a 05                         	bgt.b	23de <.LM374>
    23db:	38 03 02                      	bra.w	25de <.LM408>

000023de <.LM374>:
    23de:	fb 72 38 55 00 00             	mov.l	#0x5538, r7

000023e4 <.LVL307>:
    23e4:	ee 0c 39 01                   	mov.l	1252[r0], r12
    23e8:	2e 10                         	bra.b	23f8 <.LM377>

000023ea <.LM375>:
    23ea:	62 86                         	add	#8, r6

000023ec <.LM376>:
    23ec:	71 aa f0                      	add	#-16, r10, r10
    23ef:	75 5a 10                      	cmp	#16, r10
    23f2:	2a 05                         	bgt.b	23f7 <.LM376+0xb>
    23f4:	38 ea 01                      	bra.w	25de <.LM408>
    23f7:	03                            	nop

000023f8 <.LM377>:
    23f8:	ee 0b 29 01                   	mov.l	1188[r0], r11
    23fc:	62 1e                         	add	#1, r14
    23fe:	71 bb 10                      	add	#16, r11, r11
    2401:	f8 62 c8 79 00 00             	mov.l	#0x79c8, [r6]
    2407:	3e 61 10                      	mov.l	#16, 4[r6]
    240a:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

0000240e <.LVL311>:
    240e:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2412:	61 7e                         	cmp	#7, r14
    2414:	2b d6                         	ble.b	23ea <.LM375>

00002416 <.LM378>:
    2416:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    241a:	4b 03                         	add	r0, r3
    241c:	ef c1                         	mov.l	r12, r1
    241e:	ef 92                         	mov.l	r9, r2
    2420:	7f 17                         	jsr	r7

00002422 <.LVL312>:
    2422:	61 01                         	cmp	#0, r1
    2424:	3b bc f5                      	bne.w	19e0 <.L18>

00002427 <.LM379>:
    2427:	66 c6                         	mov.l	#12, r6

00002429 <.LVL313>:
    2429:	ee 0e 28 01                   	mov.l	1184[r0], r14
    242d:	4b 06                         	add	r0, r6
    242f:	2e bd                         	bra.b	23ec <.LM376>

00002431 <.LM380>:
    2431:	ee 07 34 01                   	mov.l	1232[r0], r7

00002435 <.LVL315>:
    2435:	75 27 10                      	and	#16, r7
    2438:	3a 8b 03                      	beq.w	27c3 <.LM456>

0000243b <.LM381>:
    243b:	ee 07 3b 01                   	mov.l	1260[r0], r7
    243f:	62 37                         	add	#3, r7
    2441:	75 27 fc                      	and	#-4, r7
    2444:	71 7c 04                      	add	#4, r7, r12
    2447:	eb 0c 3b 01                   	mov.l	r12, 1260[r0]

0000244b <.LVL316>:
    244b:	ec 78                         	mov.l	[r7], r8

0000244d <.LM382>:
    244d:	cf b7                         	mov.b	r11, r7
    244f:	38 51 f7                      	bra.w	1ba0 <.L123>

00002452 <.LM383>:
    2452:	ee 07 34 01                   	mov.l	1232[r0], r7
    2456:	75 27 10                      	and	#16, r7
    2459:	3a af 03                      	beq.w	2808 <.LM460>

0000245c <.LM384>:
    245c:	ee 07 3b 01                   	mov.l	1260[r0], r7
    2460:	62 37                         	add	#3, r7
    2462:	75 27 fc                      	and	#-4, r7
    2465:	71 7c 04                      	add	#4, r7, r12
    2468:	eb 0c 3b 01                   	mov.l	r12, 1260[r0]

0000246c <.LVL318>:
    246c:	ec 78                         	mov.l	[r7], r8

0000246e <.LM385>:
    246e:	66 17                         	mov.l	#1, r7
    2470:	38 30 f7                      	bra.w	1ba0 <.L123>

00002473 <.LBB15>:
    2473:	ee 07 29 01                   	mov.l	1188[r0], r7
    2477:	62 1e                         	add	#1, r14
    2479:	4b a7                         	add	r10, r7
    247b:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    2481:	e7 fa 01                      	mov.l	r10, 4[r15]
    2484:	eb 07 29 01                   	mov.l	r7, 1188[r0]

00002488 <.LVL320>:
    2488:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    248c:	61 7e                         	cmp	#7, r14
    248e:	2a 05                         	bgt.b	2493 <.LVL320+0xb>
    2490:	38 5e f3                      	bra.w	17ee <.LBB12>
    2493:	38 c5 fa                      	bra.w	1f58 <.LM286>

00002496 <.LBB16>:
    2496:	ee 01 39 01                   	mov.l	1252[r0], r1
    249a:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    249e:	4b 03                         	add	r0, r3
    24a0:	ef 92                         	mov.l	r9, r2
    24a2:	05 96 30 00                   	bsr.a	5538 <___sprint_r>

000024a6 <.LVL322>:
    24a6:	61 01                         	cmp	#0, r1
    24a8:	3b 38 f5                      	bne.w	19e0 <.L18>

000024ab <.LM388>:
    24ab:	66 cf                         	mov.l	#12, r15
    24ad:	4b 0f                         	add	r0, r15
    24af:	03                            	nop

000024b0 <.LBE16>:
    24b0:	ee 0a 30 01                   	mov.l	1216[r0], r10

000024b4 <.LM390>:
    24b4:	06 8a 07 3e 01                	add	1272[r0].l, r7

000024b9 <.LM391>:
    24b9:	06 86 0a 3a 01                	cmp	1256[r0].l, r10
    24be:	28 05                         	bge.b	24c3 <.LM392>
    24c0:	38 ae 00                      	bra.w	256e <.LBE17>

000024c3 <.LM392>:
    24c3:	ee 0c 34 01                   	mov.l	1232[r0], r12

000024c7 <.LVL325>:
    24c7:	fd 74 cc 01                   	tst	#1, r12
    24cb:	3b a3 00                      	bne.w	256e <.LBE17>
    24ce:	ef 00                         	nop

000024d0 <.LBB17>:
    24d0:	ee 0e 3a 01                   	mov.l	1256[r0], r14
    24d4:	43 7b                         	sub	r7, r11

000024d6 <.LVL327>:
    24d6:	ff 0a ae                      	sub	r10, r14, r10
    24d9:	fc 17 ab                      	min	r10, r11
    24dc:	61 0b                         	cmp	#0, r11
    24de:	2b 24                         	ble.b	2502 <.LM396>

000024e0 <.LM394>:
    24e0:	ee 0e 28 01                   	mov.l	1184[r0], r14
    24e4:	ee 0c 29 01                   	mov.l	1188[r0], r12
    24e8:	62 1e                         	add	#1, r14
    24ea:	4b bc                         	add	r11, r12
    24ec:	e3 f7                         	mov.l	r7, [r15]
    24ee:	e7 fb 01                      	mov.l	r11, 4[r15]
    24f1:	eb 0c 29 01                   	mov.l	r12, 1188[r0]

000024f5 <.LVL329>:
    24f5:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    24f9:	61 7e                         	cmp	#7, r14
    24fb:	2b 05                         	ble.b	2500 <.LM395>
    24fd:	38 00 06                      	bra.w	2afd <.LBB20>

00002500 <.LM395>:
    2500:	62 8f                         	add	#8, r15

00002502 <.LM396>:
    2502:	fd 74 4b 00                   	max	#0, r11

00002506 <.LVL331>:
    2506:	43 ba                         	sub	r11, r10

00002508 <.LVL332>:
    2508:	61 0a                         	cmp	#0, r10
    250a:	2a 05                         	bgt.b	250f <.LM397>
    250c:	38 e4 f2                      	bra.w	17f0 <.LBE12>

0000250f <.LM397>:
    250f:	75 5a 10                      	cmp	#16, r10
    2512:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2516:	2a 05                         	bgt.b	251b <.LM398>
    2518:	38 5b ff                      	bra.w	2473 <.LBB15>

0000251b <.LM398>:
    251b:	fb 72 38 55 00 00             	mov.l	#0x5538, r7

00002521 <.LVL333>:
    2521:	ee 0c 39 01                   	mov.l	1252[r0], r12
    2525:	2e 0f                         	bra.b	2534 <.LM400>

00002527 <.LVL334>:
    2527:	62 8f                         	add	#8, r15

00002529 <.LM399>:
    2529:	71 aa f0                      	add	#-16, r10, r10
    252c:	75 5a 10                      	cmp	#16, r10
    252f:	2a 05                         	bgt.b	2534 <.LM400>
    2531:	38 42 ff                      	bra.w	2473 <.LBB15>

00002534 <.LM400>:
    2534:	ee 0b 29 01                   	mov.l	1188[r0], r11
    2538:	62 1e                         	add	#1, r14
    253a:	71 bb 10                      	add	#16, r11, r11
    253d:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    2543:	f9 f6 01 10                   	mov.l	#16, 4[r15]
    2547:	eb 0b 29 01                   	mov.l	r11, 1188[r0]

0000254b <.LVL337>:
    254b:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    254f:	61 7e                         	cmp	#7, r14
    2551:	2b d6                         	ble.b	2527 <.LVL334>

00002553 <.LM401>:
    2553:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2557:	4b 03                         	add	r0, r3
    2559:	ef c1                         	mov.l	r12, r1
    255b:	ef 92                         	mov.l	r9, r2
    255d:	7f 17                         	jsr	r7

0000255f <.LVL338>:
    255f:	61 01                         	cmp	#0, r1
    2561:	3b 7f f4                      	bne.w	19e0 <.L18>

00002564 <.LM402>:
    2564:	66 cf                         	mov.l	#12, r15
    2566:	ee 0e 28 01                   	mov.l	1184[r0], r14
    256a:	4b 0f                         	add	r0, r15
    256c:	2e bd                         	bra.b	2529 <.LM399>

0000256e <.LBE17>:
    256e:	ee 0d 3d 01                   	mov.l	1268[r0], r13
    2572:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2576:	ee 0c 29 01                   	mov.l	1188[r0], r12
    257a:	e3 fd                         	mov.l	r13, [r15]
    257c:	ee 0d 3f 01                   	mov.l	1276[r0], r13
    2580:	06 8a 0c 3f 01                	add	1276[r0].l, r12
    2585:	62 1e                         	add	#1, r14
    2587:	e7 fd 01                      	mov.l	r13, 4[r15]
    258a:	eb 0c 29 01                   	mov.l	r12, 1188[r0]

0000258e <.LVL340>:
    258e:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2592:	61 7e                         	cmp	#7, r14
    2594:	2b 05                         	ble.b	2599 <.LVL340+0xb>
    2596:	38 1d 05                      	bra.w	2ab3 <.LBB41>
    2599:	62 8f                         	add	#8, r15

0000259b <.LVL341>:
    259b:	38 35 ff                      	bra.w	24d0 <.LBB17>

0000259e <.LBE29>:
    259e:	ee 01 39 01                   	mov.l	1252[r0], r1
    25a2:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    25a6:	4b 03                         	add	r0, r3
    25a8:	ef 92                         	mov.l	r9, r2
    25aa:	05 8e 2f 00                   	bsr.a	5538 <___sprint_r>

000025ae <.LVL343>:
    25ae:	61 01                         	cmp	#0, r1
    25b0:	3b 30 f4                      	bne.w	19e0 <.L18>

000025b3 <.LM405>:
    25b3:	66 c6                         	mov.l	#12, r6
    25b5:	ee 0e 28 01                   	mov.l	1184[r0], r14
    25b9:	4b 06                         	add	r0, r6
    25bb:	38 15 f9                      	bra.w	1ed0 <.LM277>

000025be <.LM406>:
    25be:	ee 01 39 01                   	mov.l	1252[r0], r1
    25c2:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    25c6:	4b 03                         	add	r0, r3
    25c8:	ef 92                         	mov.l	r9, r2
    25ca:	05 6e 2f 00                   	bsr.a	5538 <___sprint_r>

000025ce <.LVL345>:
    25ce:	61 01                         	cmp	#0, r1
    25d0:	3b 10 f4                      	bne.w	19e0 <.L18>

000025d3 <.LM407>:
    25d3:	66 c6                         	mov.l	#12, r6

000025d5 <.LVL346>:
    25d5:	ee 0e 28 01                   	mov.l	1184[r0], r14
    25d9:	4b 06                         	add	r0, r6
    25db:	38 1e f9                      	bra.w	1ef9 <.LM278>

000025de <.LM408>:
    25de:	ee 07 29 01                   	mov.l	1188[r0], r7
    25e2:	62 1e                         	add	#1, r14
    25e4:	4b a7                         	add	r10, r7
    25e6:	f8 62 c8 79 00 00             	mov.l	#0x79c8, [r6]
    25ec:	e7 6a 01                      	mov.l	r10, 4[r6]
    25ef:	eb 07 29 01                   	mov.l	r7, 1188[r0]

000025f3 <.LVL348>:
    25f3:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    25f7:	61 7e                         	cmp	#7, r14
    25f9:	2a 05                         	bgt.b	25fe <.LVL348+0xb>
    25fb:	38 30 f9                      	bra.w	1f2b <.LM284>
    25fe:	38 be fb                      	bra.w	21bc <.LM330>

00002601 <.LM409>:
    2601:	ee 01 39 01                   	mov.l	1252[r0], r1
    2605:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2609:	4b 03                         	add	r0, r3
    260b:	ef 92                         	mov.l	r9, r2
    260d:	05 2b 2f 00                   	bsr.a	5538 <___sprint_r>

00002611 <.LVL350>:
    2611:	61 01                         	cmp	#0, r1
    2613:	3b cd f3                      	bne.w	19e0 <.L18>

00002616 <.LM410>:
    2616:	66 cf                         	mov.l	#12, r15
    2618:	4b 0f                         	add	r0, r15
    261a:	38 18 f1                      	bra.w	1732 <.LM71>

0000261d <.LM411>:
    261d:	66 07                         	mov.l	#0, r7
    261f:	ff 0c 87                      	sub	r8, r7, r12
    2622:	fc 03 b7                      	sbb	r11, r7
    2625:	ef 7b                         	mov.l	r7, r11

00002627 <.LVL352>:
    2627:	ef c8                         	mov.l	r12, r8

00002629 <.LM412>:
    2629:	fa 04 c6 04 2d                	mov.b	#45, 1222[r0]
    262e:	75 46 2d                      	mov.l	#45, r6

00002631 <.LM413>:
    2631:	66 17                         	mov.l	#1, r7

00002633 <.LVL354>:
    2633:	38 3a f4                      	bra.w	1a6d <.L71>

00002636 <.LM414>:
    2636:	eb 05 45 01                   	mov.l	r5, 1300[r0]
    263a:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    263e:	ef b1                         	mov.l	r11, r1
    2640:	7f 17                         	jsr	r7

00002642 <.LVL356>:
    2642:	61 01                         	cmp	#0, r1
    2644:	ee 05 45 01                   	mov.l	1300[r0], r5
    2648:	ee 0f 46 01                   	mov.l	1304[r0], r15
    264c:	3a 09 03                      	beq.w	2955 <.LBE39>

0000264f <.LM415>:
    264f:	75 05 ff                      	cmp	#-1, r5
    2652:	3a 50 06                      	beq.w	2ca2 <.LM568>

00002655 <.LM416>:
    2655:	75 5a 67                      	cmp	#103, r10
    2658:	3a 15 06                      	beq.w	2c6d <.LBE52>

0000265b <.LM417>:
    265b:	75 5a 47                      	cmp	#71, r10
    265e:	3a 0f 06                      	beq.w	2c6d <.LBE52>

00002661 <.LM418>:
    2661:	ee 0d 34 01                   	mov.l	1232[r0], r13

00002665 <.LBB30>:
    2665:	ee 0e 40 01                   	mov.l	1280[r0], r14

00002669 <.LBE30>:
    2669:	76 3d 00 01                   	or	#256, r13

0000266d <.LBB32>:
    266d:	61 0e                         	cmp	#0, r14
    266f:	28 05                         	bge.b	2674 <.LM422>
    2671:	38 54 06                      	bra.w	2cc5 <.LBB34>

00002674 <.LM422>:
    2674:	66 08                         	mov.l	#0, r8

00002676 <.LVL359>:
    2676:	ef 00                         	nop

00002678 <.LM423>:
    2678:	75 5a 66                      	cmp	#102, r10
    267b:	3a 79 05                      	beq.w	2bf4 <.LBB33>
    267e:	75 5a 46                      	cmp	#70, r10
    2681:	3a 73 05                      	beq.w	2bf4 <.LBB33>

00002684 <.LM424>:
    2684:	75 5a 65                      	cmp	#101, r10
    2687:	3a 4a 06                      	beq.w	2cd1 <.LM573>
    268a:	75 5a 45                      	cmp	#69, r10
    268d:	3a 44 06                      	beq.w	2cd1 <.LM573>
    2690:	ef 5c                         	mov.l	r5, r12

00002692 <.LM425>:
    2692:	72 04 c0 04                   	add	#0x4c0, r0, r4

00002696 <.LM426>:
    2696:	72 0e bc 04                   	add	#0x4bc, r0, r14
    269a:	72 07 b8 04                   	add	#0x4b8, r0, r7
    269e:	ee 01 39 01                   	mov.l	1252[r0], r1
    26a2:	e3 04                         	mov.l	r4, [r0]
    26a4:	a0 87                         	mov.l	r7, 8[r0]
    26a6:	e7 0e 01                      	mov.l	r14, 4[r0]
    26a9:	ef b2                         	mov.l	r11, r2
    26ab:	66 23                         	mov.l	#2, r3
    26ad:	ef c4                         	mov.l	r12, r4
    26af:	eb 05 45 01                   	mov.l	r5, 1300[r0]
    26b3:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    26b7:	05 71 0a 00                   	bsr.a	3128 <__dtoa_r>

000026bb <.LM427>:
    26bb:	75 5a 67                      	cmp	#103, r10

000026be <.LM428>:
    26be:	ef 17                         	mov.l	r1, r7

000026c0 <.LM429>:
    26c0:	ee 05 45 01                   	mov.l	1300[r0], r5
    26c4:	ee 0f 46 01                   	mov.l	1304[r0], r15
    26c8:	10                            	beq.s	26d0 <.LM429+0x10>
    26c9:	75 5a 47                      	cmp	#71, r10
    26cc:	21 0f                         	bne.b	26db <.LM430>
    26ce:	ef 00                         	nop
    26d0:	ee 0e 34 01                   	mov.l	1232[r0], r14
    26d4:	fd 74 ce 01                   	tst	#1, r14
    26d8:	3a ff 05                      	beq.w	2cd7 <.LVL485>

000026db <.LM430>:
    26db:	ff 2e c7                      	add	r12, r7, r14

000026de <.LM431>:
    26de:	75 5a 46                      	cmp	#70, r10
    26e1:	3a 4b 05                      	beq.w	2c2c <.LM554>

000026e4 <.LVL364>:
    26e4:	76 10 01 00                   	mul	#1, r0

000026e8 <.LM432>:
    26e8:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    26ef:	20 1b                         	beq.b	270a <.LM436>

000026f1 <.LM433>:
    26f1:	ee 0b 2e 01                   	mov.l	1208[r0], r11

000026f5 <.LVL365>:
    26f5:	47 be                         	cmp	r11, r14
    26f7:	24 05                         	bgtu.b	26fc <.LM434>
    26f9:	38 ee 06                      	bra.w	2de7 <.LBB36>

000026fc <.LM434>:
    26fc:	75 4c 30                      	mov.l	#48, r12
    26ff:	fd 20 bc                      	mov.b	r12, [r11+]
    2702:	eb 0b 2e 01                   	mov.l	r11, 1208[r0]

00002706 <.LM435>:
    2706:	47 be                         	cmp	r11, r14
    2708:	21 f4                         	bne.b	26fc <.LM434>

0000270a <.LM436>:
    270a:	43 7e                         	sub	r7, r14
    270c:	eb 0e 3a 01                   	mov.l	r14, 1256[r0]

00002710 <.LBE32>:
    2710:	75 5a 67                      	cmp	#103, r10
    2713:	3a 18 04                      	beq.w	2b2b <.LM523>

00002716 <.LM438>:
    2716:	75 5a 47                      	cmp	#71, r10
    2719:	3a 12 04                      	beq.w	2b2b <.LM523>

0000271c <.LM439>:
    271c:	75 5a 66                      	cmp	#102, r10
    271f:	3b ba 06                      	bne.w	2dd9 <.LVL518>

00002722 <.LM440>:
    2722:	ee 0c 30 01                   	mov.l	1216[r0], r12
    2726:	61 0c                         	cmp	#0, r12
    2728:	2a 05                         	bgt.b	272d <.LM441>
    272a:	38 33 06                      	bra.w	2d5d <.LM588>

0000272d <.LM441>:
    272d:	61 05                         	cmp	#0, r5
    272f:	3b 09 06                      	bne.w	2d38 <.LBE47>

00002732 <.LM442>:
    2732:	ee 0e 34 01                   	mov.l	1232[r0], r14

00002736 <.LVL369>:
    2736:	fd 74 ce 01                   	tst	#1, r14
    273a:	3b fe 05                      	bne.w	2d38 <.LBE47>
    273d:	ef cb                         	mov.l	r12, r11
    273f:	fd 74 4b 00                   	max	#0, r11
    2743:	eb 0b 36 01                   	mov.l	r11, 1240[r0]

00002747 <.LM443>:
    2747:	ef cb                         	mov.l	r12, r11

00002749 <.LM444>:
    2749:	eb 0c 3e 01                   	mov.l	r12, 1272[r0]

0000274d <.LM445>:
    274d:	5b 88                         	movu.b	r8, r8
    274f:	61 08                         	cmp	#0, r8
    2751:	3b 8f 04                      	bne.w	2be0 <.LM546>
    2754:	ce 06 c6 04                   	mov.b	1222[r0], r6

00002758 <.LM446>:
    2758:	eb 0d 34 01                   	mov.l	r13, 1232[r0]

0000275c <.LM447>:
    275c:	eb 08 3c 01                   	mov.l	r8, 1264[r0]
    2760:	38 5b f3                      	bra.w	1abb <.L64>

00002763 <.LM448>:
    2763:	ec 7b                         	mov.l	[r7], r11
    2765:	62 47                         	add	#4, r7
    2767:	eb 0b 40 01                   	mov.l	r11, 1280[r0]
    276b:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

0000276f <.LVL373>:
    276f:	38 89 f3                      	bra.w	1af8 <.LM158>

00002772 <.LM449>:
    2772:	ee 0d 34 01                   	mov.l	1232[r0], r13
    2776:	fd 74 cd 10                   	tst	#16, r13
    277a:	3b 12 02                      	bne.w	298c <.LM490>

0000277d <.LM450>:
    277d:	ee 07 34 01                   	mov.l	1232[r0], r7

00002781 <.LVL375>:
    2781:	fd 74 c7 40                   	tst	#64, r7

00002785 <.LM451>:
    2785:	ee 07 3b 01                   	mov.l	1260[r0], r7

00002789 <.LM452>:
    2789:	3a 36 04                      	beq.w	2bbf <.LM544>

0000278c <.LM453>:
    278c:	62 37                         	add	#3, r7
    278e:	75 27 fc                      	and	#-4, r7
    2791:	ec 7a                         	mov.l	[r7], r10

00002793 <.LVL376>:
    2793:	de 0b 70 02                   	mov.w	1248[r0], r11
    2797:	62 47                         	add	#4, r7
    2799:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

0000279d <.LVL377>:
    279d:	d3 ab                         	mov.w	r11, [r10]
    279f:	38 9d ed                      	bra.w	153c <.LM28>

000027a2 <.LM454>:
    27a2:	ee 0b 34 01                   	mov.l	1232[r0], r11
    27a6:	75 2b 40                      	and	#64, r11
    27a9:	3a 2b 02                      	beq.w	29d4 <.LM495>

000027ac <.LM455>:
    27ac:	ee 0b 3b 01                   	mov.l	1260[r0], r11
    27b0:	62 3b                         	add	#3, r11
    27b2:	75 2b fc                      	and	#-4, r11
    27b5:	71 bd 04                      	add	#4, r11, r13
    27b8:	5c b8                         	movu.w	[r11], r8
    27ba:	eb 0d 3b 01                   	mov.l	r13, 1260[r0]

000027be <.LVL379>:
    27be:	ef 7b                         	mov.l	r7, r11
    27c0:	38 50 f4                      	bra.w	1c10 <.LM185>

000027c3 <.LM456>:
    27c3:	ee 0b 34 01                   	mov.l	1232[r0], r11
    27c7:	75 2b 40                      	and	#64, r11
    27ca:	3a f3 01                      	beq.w	29bd <.LM493>

000027cd <.LM457>:
    27cd:	ee 0c 3b 01                   	mov.l	1260[r0], r12
    27d1:	ef 7b                         	mov.l	r7, r11
    27d3:	62 3c                         	add	#3, r12
    27d5:	75 2c fc                      	and	#-4, r12
    27d8:	71 cd 04                      	add	#4, r12, r13
    27db:	eb 0d 3b 01                   	mov.l	r13, 1260[r0]

000027df <.LVL381>:
    27df:	5c c8                         	movu.w	[r12], r8
    27e1:	38 bf f3                      	bra.w	1ba0 <.L123>

000027e4 <.LM458>:
    27e4:	ee 07 34 01                   	mov.l	1232[r0], r7

000027e8 <.LVL383>:
    27e8:	fd 74 c7 40                   	tst	#64, r7
    27ec:	ee 07 3b 01                   	mov.l	1260[r0], r7
    27f0:	3a a8 f4                      	beq.w	1c98 <.LM207>

000027f3 <.LM459>:
    27f3:	62 37                         	add	#3, r7
    27f5:	75 27 fc                      	and	#-4, r7
    27f8:	dc 78                         	mov.w	[r7], r8
    27fa:	62 47                         	add	#4, r7
    27fc:	fd bf 8b                      	shar	#31, r8, r11
    27ff:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

00002803 <.LVL384>:
    2803:	ef bc                         	mov.l	r11, r12

00002805 <.LVL385>:
    2805:	38 5b f2                      	bra.w	1a60 <.LM139>

00002808 <.LM460>:
    2808:	ee 0b 34 01                   	mov.l	1232[r0], r11
    280c:	75 2b 40                      	and	#64, r11
    280f:	3a 97 01                      	beq.w	29a6 <.LM491>

00002812 <.LM461>:
    2812:	ee 0b 3b 01                   	mov.l	1260[r0], r11
    2816:	62 3b                         	add	#3, r11
    2818:	75 2b fc                      	and	#-4, r11
    281b:	71 bd 04                      	add	#4, r11, r13
    281e:	5c b8                         	movu.w	[r11], r8
    2820:	eb 0d 3b 01                   	mov.l	r13, 1260[r0]

00002824 <.LVL387>:
    2824:	ef 7b                         	mov.l	r7, r11

00002826 <.LM462>:
    2826:	66 17                         	mov.l	#1, r7
    2828:	38 78 f3                      	bra.w	1ba0 <.L123>

0000282b <.LBB18>:
    282b:	ee 0a 29 01                   	mov.l	1188[r0], r10
    282f:	62 1e                         	add	#1, r14
    2831:	4b ca                         	add	r12, r10
    2833:	f8 f2 c8 79 00 00             	mov.l	#0x79c8, [r15]
    2839:	e7 fc 01                      	mov.l	r12, 4[r15]
    283c:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

00002840 <.LVL389>:
    2840:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2844:	61 7e                         	cmp	#7, r14
    2846:	2b 05                         	ble.b	284b <.LM464>
    2848:	38 4e fc                      	bra.w	2496 <.LBB16>

0000284b <.LM464>:
    284b:	62 8f                         	add	#8, r15

0000284d <.LVL390>:
    284d:	38 63 fc                      	bra.w	24b0 <.LBE16>

00002850 <.LBE18>:
    2850:	ee 01 39 01                   	mov.l	1252[r0], r1
    2854:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2858:	4b 03                         	add	r0, r3
    285a:	ef 92                         	mov.l	r9, r2
    285c:	05 dc 2c 00                   	bsr.a	5538 <___sprint_r>

00002860 <.LVL392>:
    2860:	61 01                         	cmp	#0, r1
    2862:	3b 7e f1                      	bne.w	19e0 <.L18>

00002865 <.LM466>:
    2865:	66 cf                         	mov.l	#12, r15
    2867:	4b 0f                         	add	r0, r15
    2869:	38 97 f7                      	bra.w	2000 <.LM306>

0000286c <.LM467>:
    286c:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2870:	ee 0a 29 01                   	mov.l	1188[r0], r10
    2874:	62 1e                         	add	#1, r14
    2876:	62 1a                         	add	#1, r10
    2878:	f8 f2 4f 78 00 00             	mov.l	#0x784f, [r15]
    287e:	f9 f6 01 01                   	mov.l	#1, 4[r15]
    2882:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

00002886 <.LVL394>:
    2886:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    288a:	61 7e                         	cmp	#7, r14
    288c:	2b 05                         	ble.b	2891 <.LVL394+0xb>
    288e:	38 69 01                      	bra.w	29f7 <.LM498>
    2891:	62 8f                         	add	#8, r15

00002893 <.LM468>:
    2893:	61 0b                         	cmp	#0, r11
    2895:	21 15                         	bne.b	28aa <.LM470>

00002897 <.LM469>:
    2897:	ee 0c 3a 01                   	mov.l	1256[r0], r12
    289b:	61 0c                         	cmp	#0, r12
    289d:	21 0d                         	bne.b	28aa <.LM470>
    289f:	ee 0d 34 01                   	mov.l	1232[r0], r13
    28a3:	fd 74 cd 01                   	tst	#1, r13
    28a7:	3a 49 ef                      	beq.w	17f0 <.LBE12>

000028aa <.LM470>:
    28aa:	ee 0e 28 01                   	mov.l	1184[r0], r14
    28ae:	ee 0a 29 01                   	mov.l	1188[r0], r10
    28b2:	ee 0c 3d 01                   	mov.l	1268[r0], r12
    28b6:	ee 0d 3f 01                   	mov.l	1276[r0], r13
    28ba:	06 8a 0a 3f 01                	add	1276[r0].l, r10
    28bf:	62 1e                         	add	#1, r14
    28c1:	e3 fc                         	mov.l	r12, [r15]
    28c3:	e7 fd 01                      	mov.l	r13, 4[r15]
    28c6:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

000028ca <.LVL396>:
    28ca:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    28ce:	61 7e                         	cmp	#7, r14
    28d0:	2b 05                         	ble.b	28d5 <.LVL396+0xb>
    28d2:	38 a5 03                      	bra.w	2c77 <.LM564>
    28d5:	71 f6 08                      	add	#8, r15, r6

000028d8 <.LM471>:
    28d8:	7e 1b                         	neg	r11

000028da <.LVL398>:
    28da:	61 0b                         	cmp	#0, r11
    28dc:	2a 05                         	bgt.b	28e1 <.LM472>
    28de:	38 8a f8                      	bra.w	2168 <.LM326>

000028e1 <.LM472>:
    28e1:	75 5b 10                      	cmp	#16, r11
    28e4:	2a 05                         	bgt.b	28e9 <.LM473>
    28e6:	38 a8 01                      	bra.w	2a8e <.LBE19>

000028e9 <.LM473>:
    28e9:	fb a2 38 55 00 00             	mov.l	#0x5538, r10
    28ef:	ee 0d 39 01                   	mov.l	1252[r0], r13
    28f3:	2e 10                         	bra.b	2903 <.LM476>

000028f5 <.LM474>:
    28f5:	62 86                         	add	#8, r6

000028f7 <.LVL400>:
    28f7:	03                            	nop

000028f8 <.LM475>:
    28f8:	71 bb f0                      	add	#-16, r11, r11
    28fb:	75 5b 10                      	cmp	#16, r11
    28fe:	2a 05                         	bgt.b	2903 <.LM476>
    2900:	38 8e 01                      	bra.w	2a8e <.LBE19>

00002903 <.LM476>:
    2903:	ee 0c 29 01                   	mov.l	1188[r0], r12
    2907:	62 1e                         	add	#1, r14
    2909:	71 cc 10                      	add	#16, r12, r12
    290c:	f8 62 c8 79 00 00             	mov.l	#0x79c8, [r6]
    2912:	3e 61 10                      	mov.l	#16, 4[r6]
    2915:	eb 0c 29 01                   	mov.l	r12, 1188[r0]

00002919 <.LVL402>:
    2919:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    291d:	61 7e                         	cmp	#7, r14
    291f:	2b d6                         	ble.b	28f5 <.LM474>

00002921 <.LM477>:
    2921:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2925:	4b 03                         	add	r0, r3
    2927:	ef d1                         	mov.l	r13, r1
    2929:	ef 92                         	mov.l	r9, r2
    292b:	7f 1a                         	jsr	r10

0000292d <.LVL403>:
    292d:	61 01                         	cmp	#0, r1
    292f:	3b b1 f0                      	bne.w	19e0 <.L18>

00002932 <.LM478>:
    2932:	66 c6                         	mov.l	#12, r6

00002934 <.LVL404>:
    2934:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2938:	4b 06                         	add	r0, r6
    293a:	2e be                         	bra.b	28f8 <.LM475>

0000293c <.LVL405>:
    293c:	ef be                         	mov.l	r11, r14

0000293e <.LBB39>:
    293e:	ee 0c 3c 01                   	mov.l	1264[r0], r12
    2942:	fd 74 4e 00                   	max	#0, r14
    2946:	eb 0e 36 01                   	mov.l	r14, 1240[r0]
    294a:	ce 06 c6 04                   	mov.b	1222[r0], r6
    294e:	eb 0c 3e 01                   	mov.l	r12, 1272[r0]
    2952:	38 69 f1                      	bra.w	1abb <.L64>

00002955 <.LBE39>:
    2955:	75 5a 47                      	cmp	#71, r10
    2958:	2b 05                         	ble.b	295d <.LM481>
    295a:	38 c8 01                      	bra.w	2b22 <.LBE20>

0000295d <.LM481>:
    295d:	fb 72 1e 78 00 00             	mov.l	#0x781e, r7

00002963 <.LM482>:
    2963:	ee 0e 34 01                   	mov.l	1232[r0], r14

00002967 <.LM483>:
    2967:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

0000296c <.LM484>:
    296c:	ee 0c 3c 01                   	mov.l	1264[r0], r12

00002970 <.LM485>:
    2970:	fa 06 36 01 03                	mov.l	#3, 1240[r0]

00002975 <.LM486>:
    2975:	76 2e 7f ff                   	and	#-129, r14
    2979:	eb 0e 34 01                   	mov.l	r14, 1232[r0]

0000297d <.LVL408>:
    297d:	ce 06 c6 04                   	mov.b	1222[r0], r6

00002981 <.LM487>:
    2981:	ee 0b 36 01                   	mov.l	1240[r0], r11

00002985 <.LM488>:
    2985:	eb 0c 3e 01                   	mov.l	r12, 1272[r0]

00002989 <.LM489>:
    2989:	38 32 f1                      	bra.w	1abb <.L64>

0000298c <.LM490>:
    298c:	ee 07 3b 01                   	mov.l	1260[r0], r7

00002990 <.LVL410>:
    2990:	ee 0e 38 01                   	mov.l	1248[r0], r14
    2994:	62 37                         	add	#3, r7
    2996:	75 27 fc                      	and	#-4, r7
    2999:	ec 7a                         	mov.l	[r7], r10

0000299b <.LVL411>:
    299b:	62 47                         	add	#4, r7
    299d:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

000029a1 <.LVL412>:
    29a1:	e3 ae                         	mov.l	r14, [r10]
    29a3:	38 99 eb                      	bra.w	153c <.LM28>

000029a6 <.LM491>:
    29a6:	ee 07 3b 01                   	mov.l	1260[r0], r7
    29aa:	62 37                         	add	#3, r7
    29ac:	75 27 fc                      	and	#-4, r7
    29af:	71 7e 04                      	add	#4, r7, r14
    29b2:	eb 0e 3b 01                   	mov.l	r14, 1260[r0]

000029b6 <.LVL414>:
    29b6:	ec 78                         	mov.l	[r7], r8

000029b8 <.LM492>:
    29b8:	66 17                         	mov.l	#1, r7
    29ba:	38 e6 f1                      	bra.w	1ba0 <.L123>

000029bd <.LM493>:
    29bd:	ee 07 3b 01                   	mov.l	1260[r0], r7
    29c1:	62 37                         	add	#3, r7
    29c3:	75 27 fc                      	and	#-4, r7
    29c6:	71 7e 04                      	add	#4, r7, r14
    29c9:	eb 0e 3b 01                   	mov.l	r14, 1260[r0]

000029cd <.LVL416>:
    29cd:	ec 78                         	mov.l	[r7], r8

000029cf <.LM494>:
    29cf:	cf b7                         	mov.b	r11, r7
    29d1:	38 cf f1                      	bra.w	1ba0 <.L123>

000029d4 <.LM495>:
    29d4:	ee 07 3b 01                   	mov.l	1260[r0], r7
    29d8:	62 37                         	add	#3, r7
    29da:	75 27 fc                      	and	#-4, r7
    29dd:	ec 78                         	mov.l	[r7], r8
    29df:	62 47                         	add	#4, r7
    29e1:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

000029e5 <.LVL418>:
    29e5:	38 2b f2                      	bra.w	1c10 <.LM185>

000029e8 <.LM496>:
    29e8:	fb 72 16 78 00 00             	mov.l	#0x7816, r7
    29ee:	38 4b f1                      	bra.w	1b39 <.LM162>

000029f1 <.LM497>:
    29f1:	71 f6 08                      	add	#8, r15, r6
    29f4:	38 3c f5                      	bra.w	1f30 <.LM285>

000029f7 <.LM498>:
    29f7:	ee 01 39 01                   	mov.l	1252[r0], r1
    29fb:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    29ff:	4b 03                         	add	r0, r3
    2a01:	ef 92                         	mov.l	r9, r2
    2a03:	05 35 2b 00                   	bsr.a	5538 <___sprint_r>

00002a07 <.LVL421>:
    2a07:	61 01                         	cmp	#0, r1
    2a09:	3b d7 ef                      	bne.w	19e0 <.L18>

00002a0c <.LM499>:
    2a0c:	66 cf                         	mov.l	#12, r15
    2a0e:	ee 0b 30 01                   	mov.l	1216[r0], r11
    2a12:	4b 0f                         	add	r0, r15
    2a14:	38 7f fe                      	bra.w	2893 <.LM468>

00002a17 <.LM500>:
    2a17:	ee 0e 34 01                   	mov.l	1232[r0], r14

00002a1b <.LM501>:
    2a1b:	62 17                         	add	#1, r7

00002a1d <.LM502>:
    2a1d:	75 3e 20                      	or	#32, r14
    2a20:	eb 0e 34 01                   	mov.l	r14, 1232[r0]

00002a24 <.LVL424>:
    2a24:	59 ca 01                      	movu.b	1[r12], r10
    2a27:	38 a4 eb                      	bra.w	15cb <.LM44>

00002a2a <.LM503>:
    2a2a:	ee 01 39 01                   	mov.l	1252[r0], r1
    2a2e:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2a32:	4b 03                         	add	r0, r3
    2a34:	ef 92                         	mov.l	r9, r2
    2a36:	05 02 2b 00                   	bsr.a	5538 <___sprint_r>

00002a3a <.LVL426>:
    2a3a:	61 01                         	cmp	#0, r1
    2a3c:	3b a4 ef                      	bne.w	19e0 <.L18>

00002a3f <.LM504>:
    2a3f:	66 cf                         	mov.l	#12, r15
    2a41:	4b 0f                         	add	r0, r15
    2a43:	38 05 f6                      	bra.w	2048 <.LM309>

00002a46 <.LM505>:
    2a46:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    2a4a:	05 db 2a 00                   	bsr.a	5525 <_strlen>

00002a4e <.LM506>:
    2a4e:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]
    2a53:	ef 1d                         	mov.l	r1, r13

00002a55 <.LM507>:
    2a55:	ee 0e 3c 01                   	mov.l	1264[r0], r14
    2a59:	fd 74 4d 00                   	max	#0, r13

00002a5d <.LM508>:
    2a5d:	ef 1b                         	mov.l	r1, r11

00002a5f <.LVL429>:
    2a5f:	eb 0d 36 01                   	mov.l	r13, 1240[r0]
    2a63:	ce 06 c6 04                   	mov.b	1222[r0], r6

00002a67 <.LM509>:
    2a67:	eb 0e 3e 01                   	mov.l	r14, 1272[r0]
    2a6b:	ee 0f 46 01                   	mov.l	1304[r0], r15
    2a6f:	38 4c f0                      	bra.w	1abb <.L64>

00002a72 <.LBB19>:
    2a72:	ee 01 39 01                   	mov.l	1252[r0], r1
    2a76:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2a7a:	4b 03                         	add	r0, r3
    2a7c:	ef 92                         	mov.l	r9, r2
    2a7e:	05 ba 2a 00                   	bsr.a	5538 <___sprint_r>

00002a82 <.LVL431>:
    2a82:	61 01                         	cmp	#0, r1
    2a84:	3b 5c ef                      	bne.w	19e0 <.L18>

00002a87 <.LM511>:
    2a87:	66 cf                         	mov.l	#12, r15
    2a89:	4b 0f                         	add	r0, r15
    2a8b:	38 b0 f8                      	bra.w	233b <.LM363>

00002a8e <.LBE19>:
    2a8e:	ee 0a 29 01                   	mov.l	1188[r0], r10
    2a92:	62 1e                         	add	#1, r14
    2a94:	4b ba                         	add	r11, r10
    2a96:	f8 62 c8 79 00 00             	mov.l	#0x79c8, [r6]
    2a9c:	e7 6b 01                      	mov.l	r11, 4[r6]
    2a9f:	eb 0a 29 01                   	mov.l	r10, 1188[r0]

00002aa3 <.LVL433>:
    2aa3:	eb 0e 28 01                   	mov.l	r14, 1184[r0]
    2aa7:	61 7e                         	cmp	#7, r14
    2aa9:	2b 05                         	ble.b	2aae <.LM513>
    2aab:	38 9e f6                      	bra.w	2149 <.LM324>

00002aae <.LM513>:
    2aae:	62 86                         	add	#8, r6

00002ab0 <.LVL434>:
    2ab0:	38 b8 f6                      	bra.w	2168 <.LM326>

00002ab3 <.LBB41>:
    2ab3:	ee 01 39 01                   	mov.l	1252[r0], r1
    2ab7:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2abb:	4b 03                         	add	r0, r3
    2abd:	ef 92                         	mov.l	r9, r2
    2abf:	05 79 2a 00                   	bsr.a	5538 <___sprint_r>

00002ac3 <.LVL436>:
    2ac3:	61 01                         	cmp	#0, r1
    2ac5:	3b 1b ef                      	bne.w	19e0 <.L18>

00002ac8 <.LM515>:
    2ac8:	66 cf                         	mov.l	#12, r15
    2aca:	ee 0a 30 01                   	mov.l	1216[r0], r10
    2ace:	4b 0f                         	add	r0, r15
    2ad0:	38 00 fa                      	bra.w	24d0 <.LBB17>

00002ad3 <.LBE41>:
    2ad3:	61 65                         	cmp	#6, r5
    2ad5:	ef 5b                         	mov.l	r5, r11

00002ad7 <.LVL438>:
    2ad7:	25 04                         	bleu.b	2adb <.LM517>
    2ad9:	66 6b                         	mov.l	#6, r11

00002adb <.LM517>:
    2adb:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]

00002ae0 <.LM518>:
    2ae0:	ee 0e 3c 01                   	mov.l	1264[r0], r14
    2ae4:	ef bd                         	mov.l	r11, r13
    2ae6:	fd 74 4d 00                   	max	#0, r13
    2aea:	eb 0d 36 01                   	mov.l	r13, 1240[r0]
    2aee:	eb 0e 3e 01                   	mov.l	r14, 1272[r0]

00002af2 <.LM519>:
    2af2:	fb 72 48 78 00 00             	mov.l	#0x7848, r7
    2af8:	ef e6                         	mov.l	r14, r6
    2afa:	38 10 eb                      	bra.w	160a <.LM55>

00002afd <.LBB20>:
    2afd:	ee 01 39 01                   	mov.l	1252[r0], r1
    2b01:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2b05:	4b 03                         	add	r0, r3
    2b07:	ef 92                         	mov.l	r9, r2
    2b09:	05 2f 2a 00                   	bsr.a	5538 <___sprint_r>

00002b0d <.LVL441>:
    2b0d:	61 01                         	cmp	#0, r1
    2b0f:	3b d1 ee                      	bne.w	19e0 <.L18>
    2b12:	ee 0a 3a 01                   	mov.l	1256[r0], r10

00002b16 <.LM521>:
    2b16:	66 cf                         	mov.l	#12, r15
    2b18:	06 82 0a 30 01                	sub	1216[r0].l, r10
    2b1d:	4b 0f                         	add	r0, r15
    2b1f:	38 e3 f9                      	bra.w	2502 <.LM396>

00002b22 <.LBE20>:
    2b22:	fb 72 22 78 00 00             	mov.l	#0x7822, r7
    2b28:	38 3b fe                      	bra.w	2963 <.LM482>

00002b2b <.LM523>:
    2b2b:	ee 0c 30 01                   	mov.l	1216[r0], r12
    2b2f:	75 0c fd                      	cmp	#-3, r12
    2b32:	ef cb                         	mov.l	r12, r11

00002b34 <.LVL444>:
    2b34:	29 06                         	blt.b	2b3a <.LM525>

00002b36 <.LM524>:
    2b36:	47 c5                         	cmp	r12, r5
    2b38:	28 60                         	bge.b	2b98 <.LM542>

00002b3a <.LM525>:
    2b3a:	60 2a                         	sub	#2, r10

00002b3c <.LM526>:
    2b3c:	60 1b                         	sub	#1, r11
    2b3e:	eb 0b 30 01                   	mov.l	r11, 1216[r0]

00002b42 <.LBB43>:
    2b42:	cb 0a af 04                   	mov.b	r10, 1199[r0]

00002b46 <.LM528>:
    2b46:	26 05                         	bpz.b	2b4b <.LM529>
    2b48:	38 4e 02                      	bra.w	2d96 <.LBB48>

00002b4b <.LM529>:
    2b4b:	fa 04 b0 04 2b                	mov.b	#43, 1200[r0]

00002b50 <.LM530>:
    2b50:	61 9b                         	cmp	#9, r11
    2b52:	2b 05                         	ble.b	2b57 <.LM531>
    2b54:	38 8a 01                      	bra.w	2cde <.LBB46>

00002b57 <.LM531>:
    2b57:	71 bb 30                      	add	#48, r11, r11

00002b5a <.LVL449>:
    2b5a:	cb 0b b2 04                   	mov.b	r11, 1202[r0]

00002b5e <.LM532>:
    2b5e:	fa 04 b1 04 30                	mov.b	#48, 1201[r0]

00002b63 <.LM533>:
    2b63:	72 0b b3 04                   	add	#0x4b3, r0, r11

00002b67 <.LVL451>:
    2b67:	03                            	nop

00002b68 <.LM534>:
    2b68:	72 0c af 04                   	add	#0x4af, r0, r12

00002b6c <.LM535>:
    2b6c:	ff 0c cb                      	sub	r12, r11, r12

00002b6f <.LBE43>:
    2b6f:	ee 0b 3a 01                   	mov.l	1256[r0], r11

00002b73 <.LBB45>:
    2b73:	eb 0c 41 01                   	mov.l	r12, 1284[r0]

00002b77 <.LBE45>:
    2b77:	4b cb                         	add	r12, r11

00002b79 <.LM539>:
    2b79:	ee 0c 3a 01                   	mov.l	1256[r0], r12
    2b7d:	61 1c                         	cmp	#1, r12
    2b7f:	2a 05                         	bgt.b	2b84 <.LM540>
    2b81:	38 3e 02                      	bra.w	2dbf <.LBE24>

00002b84 <.LM540>:
    2b84:	62 1b                         	add	#1, r11
    2b86:	ef bc                         	mov.l	r11, r12
    2b88:	fd 74 4c 00                   	max	#0, r12
    2b8c:	eb 0c 36 01                   	mov.l	r12, 1240[r0]

00002b90 <.LM541>:
    2b90:	fa 06 3e 01 00                	mov.l	#0, 1272[r0]
    2b95:	38 b8 fb                      	bra.w	274d <.LM445>

00002b98 <.LM542>:
    2b98:	06 86 0c 3a 01                	cmp	1256[r0].l, r12
    2b9d:	28 05                         	bge.b	2ba2 <.LM543>
    2b9f:	38 08 01                      	bra.w	2ca7 <.LM569>

00002ba2 <.LM543>:
    2ba2:	ee 0a 34 01                   	mov.l	1232[r0], r10

00002ba6 <.LVL457>:
    2ba6:	fd 74 ca 01                   	tst	#1, r10
    2baa:	3b a0 01                      	bne.w	2d4a <.LM587>
    2bad:	ef cb                         	mov.l	r12, r11
    2baf:	fd 74 4b 00                   	max	#0, r11

00002bb3 <.LVL458>:
    2bb3:	eb 0b 36 01                   	mov.l	r11, 1240[r0]
    2bb7:	75 4a 67                      	mov.l	#103, r10
    2bba:	ef cb                         	mov.l	r12, r11
    2bbc:	38 8d fb                      	bra.w	2749 <.LM444>

00002bbf <.LM544>:
    2bbf:	62 37                         	add	#3, r7
    2bc1:	75 27 fc                      	and	#-4, r7
    2bc4:	ec 7a                         	mov.l	[r7], r10

00002bc6 <.LVL460>:
    2bc6:	ee 0c 38 01                   	mov.l	1248[r0], r12
    2bca:	62 47                         	add	#4, r7
    2bcc:	eb 07 3b 01                   	mov.l	r7, 1260[r0]

00002bd0 <.LVL461>:
    2bd0:	e3 ac                         	mov.l	r12, [r10]
    2bd2:	38 6a e9                      	bra.w	153c <.LM28>

00002bd5 <.LM545>:
    2bd5:	fa 04 c6 04 2d                	mov.b	#45, 1222[r0]
    2bda:	75 46 2d                      	mov.l	#45, r6
    2bdd:	38 4e ef                      	bra.w	1b2b <.LM160>

00002be0 <.LM546>:
    2be0:	fa 04 c6 04 2d                	mov.b	#45, 1222[r0]

00002be5 <.LM547>:
    2be5:	eb 0d 34 01                   	mov.l	r13, 1232[r0]

00002be9 <.LM548>:
    2be9:	fa 06 3c 01 00                	mov.l	#0, 1264[r0]
    2bee:	75 46 2d                      	mov.l	#45, r6
    2bf1:	38 d1 ee                      	bra.w	1ac2 <.LM152>

00002bf4 <.LBB33>:
    2bf4:	72 0e c0 04                   	add	#0x4c0, r0, r14

00002bf8 <.LM550>:
    2bf8:	72 0c bc 04                   	add	#0x4bc, r0, r12
    2bfc:	72 07 b8 04                   	add	#0x4b8, r0, r7
    2c00:	ee 01 39 01                   	mov.l	1252[r0], r1
    2c04:	e3 0e                         	mov.l	r14, [r0]
    2c06:	e7 0c 01                      	mov.l	r12, 4[r0]
    2c09:	a0 87                         	mov.l	r7, 8[r0]
    2c0b:	ef 54                         	mov.l	r5, r4
    2c0d:	ef b2                         	mov.l	r11, r2
    2c0f:	66 33                         	mov.l	#3, r3
    2c11:	eb 05 45 01                   	mov.l	r5, 1300[r0]
    2c15:	eb 0f 46 01                   	mov.l	r15, 1304[r0]
    2c19:	05 0f 05 00                   	bsr.a	3128 <__dtoa_r>

00002c1d <.LM551>:
    2c1d:	ee 05 45 01                   	mov.l	1300[r0], r5
    2c21:	ee 0f 46 01                   	mov.l	1304[r0], r15

00002c25 <.LM552>:
    2c25:	ef 17                         	mov.l	r1, r7

00002c27 <.LM553>:
    2c27:	ff 2e 51                      	add	r5, r1, r14

00002c2a <.LVL467>:
    2c2a:	ef 5c                         	mov.l	r5, r12

00002c2c <.LM554>:
    2c2c:	58 74                         	movu.b	[r7], r4
    2c2e:	75 54 30                      	cmp	#48, r4
    2c31:	12                            	beq.s	2c3b <.LM556>
    2c32:	ee 0c 30 01                   	mov.l	1216[r0], r12

00002c36 <.LM555>:
    2c36:	4b ce                         	add	r12, r14
    2c38:	38 b0 fa                      	bra.w	26e8 <.LM432>

00002c3b <.LM556>:
    2c3b:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    2c42:	20 f0                         	beq.b	2c32 <.LM554+0x6>

00002c44 <.LM557>:
    2c44:	66 14                         	mov.l	#1, r4
    2c46:	ff 0c c4                      	sub	r12, r4, r12
    2c49:	eb 0c 30 01                   	mov.l	r12, 1216[r0]

00002c4d <.LM558>:
    2c4d:	4b ce                         	add	r12, r14
    2c4f:	38 99 fa                      	bra.w	26e8 <.LM432>

00002c52 <.LVL471>:
    2c52:	ef 5b                         	mov.l	r5, r11

00002c54 <.LVL472>:
    2c54:	fd 74 4b 00                   	max	#0, r11
    2c58:	eb 0b 36 01                   	mov.l	r11, 1240[r0]

00002c5c <.LBB52>:
    2c5c:	eb 01 3c 01                   	mov.l	r1, 1264[r0]
    2c60:	ce 06 c6 04                   	mov.b	1222[r0], r6

00002c64 <.LM560>:
    2c64:	ef 5b                         	mov.l	r5, r11

00002c66 <.LM561>:
    2c66:	eb 01 3e 01                   	mov.l	r1, 1272[r0]
    2c6a:	38 51 ee                      	bra.w	1abb <.L64>

00002c6d <.LBE52>:
    2c6d:	61 05                         	cmp	#0, r5
    2c6f:	3b f2 f9                      	bne.w	2661 <.LM418>

00002c72 <.LM563>:
    2c72:	66 15                         	mov.l	#1, r5
    2c74:	38 ed f9                      	bra.w	2661 <.LM418>

00002c77 <.LM564>:
    2c77:	ee 01 39 01                   	mov.l	1252[r0], r1
    2c7b:	fb 3a 9c 04                   	mov.l	#0x49c, r3
    2c7f:	4b 03                         	add	r0, r3
    2c81:	ef 92                         	mov.l	r9, r2
    2c83:	05 b5 28 00                   	bsr.a	5538 <___sprint_r>

00002c87 <.LVL475>:
    2c87:	61 01                         	cmp	#0, r1
    2c89:	3b 57 ed                      	bne.w	19e0 <.L18>

00002c8c <.LM565>:
    2c8c:	66 c6                         	mov.l	#12, r6
    2c8e:	ee 0b 30 01                   	mov.l	1216[r0], r11
    2c92:	ee 0e 28 01                   	mov.l	1184[r0], r14
    2c96:	4b 06                         	add	r0, r6
    2c98:	38 40 fc                      	bra.w	28d8 <.LM471>

00002c9b <.LM566>:
    2c9b:	ef d7                         	mov.l	r13, r7

00002c9d <.LM567>:
    2c9d:	66 05                         	mov.l	#0, r5
    2c9f:	38 2e e9                      	bra.w	15cd <.LM45>

00002ca2 <.LM568>:
    2ca2:	66 65                         	mov.l	#6, r5
    2ca4:	38 bd f9                      	bra.w	2661 <.LM418>

00002ca7 <.LM569>:
    2ca7:	61 0c                         	cmp	#0, r12
    2ca9:	2a 05                         	bgt.b	2cae <.LM569+0x7>
    2cab:	38 f5 00                      	bra.w	2da0 <.LBE48>
    2cae:	66 1b                         	mov.l	#1, r11

00002cb0 <.LM570>:
    2cb0:	06 8a 0b 3a 01                	add	1256[r0].l, r11

00002cb5 <.LVL479>:
    2cb5:	ef ba                         	mov.l	r11, r10

00002cb7 <.LVL480>:
    2cb7:	fd 74 4a 00                   	max	#0, r10
    2cbb:	eb 0a 36 01                   	mov.l	r10, 1240[r0]
    2cbf:	75 4a 67                      	mov.l	#103, r10
    2cc2:	38 87 fa                      	bra.w	2749 <.LM444>

00002cc5 <.LBB34>:
    2cc5:	70 bb 00 00 00 80             	add	#0x80000000, r11, r11

00002ccb <.LM572>:
    2ccb:	75 48 2d                      	mov.l	#45, r8
    2cce:	38 aa f9                      	bra.w	2678 <.LM423>

00002cd1 <.LM573>:
    2cd1:	71 5c 01                      	add	#1, r5, r12

00002cd4 <.LVL484>:
    2cd4:	38 be f9                      	bra.w	2692 <.LM425>

00002cd7 <.LVL485>:
    2cd7:	ee 0e 2e 01                   	mov.l	1208[r0], r14
    2cdb:	38 2f fa                      	bra.w	270a <.LM436>

00002cde <.LBB46>:
    2cde:	72 0e ae 04                   	add	#0x4ae, r0, r14

00002ce2 <.LM575>:
    2ce2:	ef b4                         	mov.l	r11, r4
    2ce4:	fd 74 84 0a                   	div	#10, r4
    2ce8:	ff 23 44                      	add	r4, r4, r3
    2ceb:	fd c3 4c                      	shll	#3, r4, r12
    2cee:	4b 3c                         	add	r3, r12
    2cf0:	43 cb                         	sub	r12, r11

00002cf2 <.LVL488>:
    2cf2:	71 bb 30                      	add	#48, r11, r11
    2cf5:	c3 eb                         	mov.b	r11, [r14]
    2cf7:	ef ec                         	mov.l	r14, r12

00002cf9 <.LVL489>:
    2cf9:	60 1e                         	sub	#1, r14

00002cfb <.LM576>:
    2cfb:	61 94                         	cmp	#9, r4
    2cfd:	ef 4b                         	mov.l	r4, r11

00002cff <.LVL490>:
    2cff:	2a e3                         	bgt.b	2ce2 <.LM575>

00002d01 <.LM577>:
    2d01:	71 bb 30                      	add	#48, r11, r11

00002d04 <.LM578>:
    2d04:	72 03 af 04                   	add	#0x4af, r0, r3

00002d08 <.LM579>:
    2d08:	c3 eb                         	mov.b	r11, [r14]

00002d0a <.LM580>:
    2d0a:	47 e3                         	cmp	r14, r3

00002d0c <.LM581>:
    2d0c:	cf b4                         	mov.b	r11, r4

00002d0e <.LM582>:
    2d0e:	24 05                         	bgtu.b	2d13 <.LM582+0x5>
    2d10:	38 d0 00                      	bra.w	2de0 <.LBB49>
    2d13:	ef cb                         	mov.l	r12, r11

00002d15 <.LBB35>:
    2d15:	72 0e b1 04                   	add	#0x4b1, r0, r14

00002d19 <.LVL494>:
    2d19:	0f                            	bra.s	2d20 <.LBB47>

00002d1a <.LVL495>:
    2d1a:	fd 28 b4                      	mov.b	[r11+], r4
    2d1d:	fc 13 00                      	nop

00002d20 <.LBB47>:
    2d20:	fd 20 e4                      	mov.b	r4, [r14+]
    2d23:	47 3b                         	cmp	r3, r11
    2d25:	21 f5                         	bne.b	2d1a <.LVL495>

00002d27 <.LM585>:
    2d27:	72 0b b0 04                   	add	#0x4b0, r0, r11
    2d2b:	fb ea b1 04                   	mov.l	#0x4b1, r14

00002d2f <.LVL497>:
    2d2f:	43 cb                         	sub	r12, r11
    2d31:	4b 0e                         	add	r0, r14
    2d33:	4b eb                         	add	r14, r11
    2d35:	38 33 fe                      	bra.w	2b68 <.LM534>

00002d38 <.LBE47>:
    2d38:	71 5b 01                      	add	#1, r5, r11
    2d3b:	4b cb                         	add	r12, r11

00002d3d <.LVL499>:
    2d3d:	ef be                         	mov.l	r11, r14
    2d3f:	fd 74 4e 00                   	max	#0, r14
    2d43:	eb 0e 36 01                   	mov.l	r14, 1240[r0]
    2d47:	38 02 fa                      	bra.w	2749 <.LM444>

00002d4a <.LM587>:
    2d4a:	71 cb 01                      	add	#1, r12, r11
    2d4d:	ef be                         	mov.l	r11, r14

00002d4f <.LVL502>:
    2d4f:	fd 74 4e 00                   	max	#0, r14
    2d53:	eb 0e 36 01                   	mov.l	r14, 1240[r0]
    2d57:	75 4a 67                      	mov.l	#103, r10
    2d5a:	38 ef f9                      	bra.w	2749 <.LM444>

00002d5d <.LM588>:
    2d5d:	61 05                         	cmp	#0, r5
    2d5f:	21 48                         	bne.b	2da7 <.LM597>

00002d61 <.LM589>:
    2d61:	ee 0b 34 01                   	mov.l	1232[r0], r11
    2d65:	fd 74 cb 01                   	tst	#1, r11
    2d69:	21 3e                         	bne.b	2da7 <.LM597>
    2d6b:	fa 06 36 01 01                	mov.l	#1, 1240[r0]

00002d70 <.LM590>:
    2d70:	ee 0b 36 01                   	mov.l	1240[r0], r11
    2d74:	38 d5 f9                      	bra.w	2749 <.LM444>

00002d77 <.LM591>:
    2d77:	ee 0a 3b 01                   	mov.l	1260[r0], r10

00002d7b <.LVL505>:
    2d7b:	62 3a                         	add	#3, r10
    2d7d:	75 2a fc                      	and	#-4, r10
    2d80:	ec a5                         	mov.l	[r10], r5

00002d82 <.LVL506>:
    2d82:	62 4a                         	add	#4, r10
    2d84:	eb 0a 3b 01                   	mov.l	r10, 1260[r0]

00002d88 <.LM592>:
    2d88:	61 05                         	cmp	#0, r5
    2d8a:	cd 7a 01                      	mov.b	1[r7], r10

00002d8d <.LVL508>:
    2d8d:	29 5f                         	blt.b	2dec <.LBE36>

00002d8f <.LM593>:
    2d8f:	ef d7                         	mov.l	r13, r7

00002d91 <.LVL509>:
    2d91:	5b aa                         	movu.b	r10, r10
    2d93:	38 38 e8                      	bra.w	15cb <.LM44>

00002d96 <.LBB48>:
    2d96:	7e 1b                         	neg	r11

00002d98 <.LM595>:
    2d98:	fa 04 b0 04 2d                	mov.b	#45, 1200[r0]

00002d9d <.LVL512>:
    2d9d:	38 b3 fd                      	bra.w	2b50 <.LM530>

00002da0 <.LBE48>:
    2da0:	66 2b                         	mov.l	#2, r11
    2da2:	43 cb                         	sub	r12, r11
    2da4:	38 0c ff                      	bra.w	2cb0 <.LM570>

00002da7 <.LM597>:
    2da7:	71 5b 02                      	add	#2, r5, r11
    2daa:	ef be                         	mov.l	r11, r14

00002dac <.LVL515>:
    2dac:	fd 74 4e 00                   	max	#0, r14
    2db0:	eb 0e 36 01                   	mov.l	r14, 1240[r0]
    2db4:	38 95 f9                      	bra.w	2749 <.LM444>

00002db7 <.LBB24>:
    2db7:	fa 06 38 01 ff                	mov.l	#-1, 1248[r0]
    2dbc:	38 f4 eb                      	bra.w	19b0 <.LBE22>

00002dbf <.LBE24>:
    2dbf:	ee 0c 34 01                   	mov.l	1232[r0], r12
    2dc3:	64 1c                         	and	#1, r12
    2dc5:	3b bf fd                      	bne.w	2b84 <.LM540>
    2dc8:	ef be                         	mov.l	r11, r14
    2dca:	fd 74 4e 00                   	max	#0, r14
    2dce:	eb 0e 36 01                   	mov.l	r14, 1240[r0]

00002dd2 <.LM600>:
    2dd2:	eb 0c 3e 01                   	mov.l	r12, 1272[r0]
    2dd6:	38 77 f9                      	bra.w	274d <.LM445>

00002dd9 <.LVL518>:
    2dd9:	ee 0b 30 01                   	mov.l	1216[r0], r11
    2ddd:	38 5f fd                      	bra.w	2b3c <.LM526>

00002de0 <.LBB49>:
    2de0:	72 0b b1 04                   	add	#0x4b1, r0, r11

00002de4 <.LVL520>:
    2de4:	38 84 fd                      	bra.w	2b68 <.LM534>

00002de7 <.LBB36>:
    2de7:	ef be                         	mov.l	r11, r14

00002de9 <.LVL522>:
    2de9:	38 21 f9                      	bra.w	270a <.LM436>

00002dec <.LBE36>:
    2dec:	fb 56 ff                      	mov.l	#-1, r5

00002def <.LM604>:
    2def:	ef d7                         	mov.l	r13, r7

00002df1 <.LVL525>:
    2df1:	5b aa                         	movu.b	r10, r10
    2df3:	38 d8 e7                      	bra.w	15cb <.LM44>

00002df6 <.LFE2>:
    2df6:	ef 00                         	nop

00002df8 <_vfprintf>:
    2df8:	ef 34                         	mov.l	r3, r4

00002dfa <.LM607>:
    2dfa:	fb 32 00 80 00 00             	mov.l	#0x8000, r3

00002e00 <.LM608>:
    2e00:	ef 15                         	mov.l	r1, r5
    2e02:	ef 2e                         	mov.l	r2, r14

00002e04 <.LM609>:
    2e04:	ec 31                         	mov.l	[r3], r1

00002e06 <.LVL528>:
    2e06:	ef 52                         	mov.l	r5, r2

00002e08 <.LVL529>:
    2e08:	ef e3                         	mov.l	r14, r3
    2e0a:	04 76 e6 ff                   	bra.a	1480 <__vfprintf_r>

00002e0e <.LFE1>:
	...

00002e10 <___swsetup_r>:
    2e10:	6e 7a                         	pushm	r7-r10

00002e12 <.LCFI0>:
    2e12:	fb 72 00 80 00 00             	mov.l	#0x8000, r7
    2e18:	ec 7e                         	mov.l	[r7], r14

00002e1a <.LM3>:
    2e1a:	ef 1a                         	mov.l	r1, r10

00002e1c <.LM4>:
    2e1c:	61 0e                         	cmp	#0, r14

00002e1e <.LM5>:
    2e1e:	ef 27                         	mov.l	r2, r7

00002e20 <.LM6>:
    2e20:	11                            	beq.s	2e29 <.LM8>

00002e21 <.LM7>:
    2e21:	ed e4 0e                      	mov.l	56[r14], r4
    2e24:	61 04                         	cmp	#0, r4
    2e26:	3a a7 00                      	beq.w	2ecd <.LM35>

00002e29 <.LM8>:
    2e29:	dd 7e 06                      	mov.w	12[r7], r14
    2e2c:	ef e4                         	mov.l	r14, r4
    2e2e:	64 84                         	and	#8, r4
    2e30:	df 44                         	mov.w	r4, r4
    2e32:	61 04                         	cmp	#0, r4
    2e34:	20 29                         	beq.b	2e5d <.LM17>
    2e36:	a9 74                         	mov.l	16[r7], r4

00002e38 <.LM9>:
    2e38:	61 04                         	cmp	#0, r4
    2e3a:	20 47                         	beq.b	2e81 <.LM23>

00002e3c <.LM10>:
    2e3c:	ef e3                         	mov.l	r14, r3
    2e3e:	64 13                         	and	#1, r3
    2e40:	21 5c                         	bne.b	2e9c <.LM25>

00002e42 <.LM11>:
    2e42:	64 2e                         	and	#2, r14
    2e44:	df ee                         	mov.w	r14, r14
    2e46:	61 0e                         	cmp	#0, r14
    2e48:	18                            	bne.s	2e50 <.LM13>

00002e49 <.LM12>:
    2e49:	a9 7b                         	mov.l	20[r7], r3
    2e4b:	77 10 01 00 00                	mul	#1, r0

00002e50 <.LM13>:
    2e50:	a0 f3                         	mov.l	r3, 8[r7]

00002e52 <.LM14>:
    2e52:	61 04                         	cmp	#0, r4
    2e54:	20 5c                         	beq.b	2eb0 <.LM29>

00002e56 <.LVL2>:
    2e56:	ef 00                         	nop

00002e58 <.LM15>:
    2e58:	66 01                         	mov.l	#0, r1

00002e5a <.LM16>:
    2e5a:	3f 7a 04                      	rtsd	#16, r7-r10

00002e5d <.LM17>:
    2e5d:	ef e4                         	mov.l	r14, r4
    2e5f:	75 24 10                      	and	#16, r4
    2e62:	df 44                         	mov.w	r4, r4
    2e64:	61 04                         	cmp	#0, r4
    2e66:	3a 9c 00                      	beq.w	2f02 <.LM44>

00002e69 <.LM18>:
    2e69:	ef e4                         	mov.l	r14, r4
    2e6b:	64 44                         	and	#4, r4
    2e6d:	df 44                         	mov.w	r4, r4
    2e6f:	61 04                         	cmp	#0, r4
    2e71:	21 65                         	bne.b	2ed6 <.LM36>
    2e73:	a9 74                         	mov.l	16[r7], r4

00002e75 <.LM19>:
    2e75:	ef e3                         	mov.l	r14, r3
    2e77:	65 83                         	or	#8, r3
    2e79:	91 f3                         	mov.w	r3, 12[r7]

00002e7b <.LM20>:
    2e7b:	61 04                         	cmp	#0, r4

00002e7d <.LM21>:
    2e7d:	df 3e                         	mov.w	r3, r14

00002e7f <.LM22>:
    2e7f:	21 bd                         	bne.b	2e3c <.LM10>

00002e81 <.LM23>:
    2e81:	ef e3                         	mov.l	r14, r3
    2e83:	76 23 80 02                   	and	#640, r3
    2e87:	76 03 00 02                   	cmp	#512, r3
    2e8b:	20 b1                         	beq.b	2e3c <.LM10>

00002e8d <.LM24>:
    2e8d:	ef a1                         	mov.l	r10, r1
    2e8f:	ef 72                         	mov.l	r7, r2
    2e91:	05 6f 16 00                   	bsr.a	4500 <___smakebuf_r>

00002e95 <.LVL4>:
    2e95:	dd 7e 06                      	mov.w	12[r7], r14
    2e98:	a9 74                         	mov.l	16[r7], r4
    2e9a:	2e a2                         	bra.b	2e3c <.LM10>

00002e9c <.LM25>:
    2e9c:	ed 7a 05                      	mov.l	20[r7], r10

00002e9f <.LM26>:
    2e9f:	3e 72 00                      	mov.l	#0, 8[r7]

00002ea2 <.LM27>:
    2ea2:	7e 1a                         	neg	r10
    2ea4:	e7 7a 06                      	mov.l	r10, 24[r7]

00002ea7 <.LM28>:
    2ea7:	61 04                         	cmp	#0, r4
    2ea9:	21 af                         	bne.b	2e58 <.LM15>
    2eab:	77 10 01 00 00                	mul	#1, r0

00002eb0 <.LM29>:
    2eb0:	dd 7a 06                      	mov.w	12[r7], r10

00002eb3 <.LM30>:
    2eb3:	ef 41                         	mov.l	r4, r1

00002eb5 <.LM31>:
    2eb5:	ef ae                         	mov.l	r10, r14
    2eb7:	76 2e 80 00                   	and	#128, r14
    2ebb:	df ee                         	mov.w	r14, r14
    2ebd:	61 0e                         	cmp	#0, r14
    2ebf:	20 9b                         	beq.b	2e5a <.LM16>

00002ec1 <.LM32>:
    2ec1:	75 3a 40                      	or	#64, r10
    2ec4:	d7 7a 06                      	mov.w	r10, 12[r7]

00002ec7 <.LM33>:
    2ec7:	fb 16 ff                      	mov.l	#-1, r1

00002eca <.LM34>:
    2eca:	3f 7a 04                      	rtsd	#16, r7-r10

00002ecd <.LM35>:
    2ecd:	ef e1                         	mov.l	r14, r1

00002ecf <.LVL7>:
    2ecf:	05 75 11 00                   	bsr.a	4044 <___sinit>

00002ed3 <.LVL8>:
    2ed3:	38 56 ff                      	bra.w	2e29 <.LM8>

00002ed6 <.LM36>:
    2ed6:	ab 72                         	mov.l	48[r7], r2
    2ed8:	61 02                         	cmp	#0, r2
    2eda:	20 19                         	beq.b	2ef3 <.LM40>

00002edc <.LM37>:
    2edc:	71 74 40                      	add	#64, r7, r4
    2edf:	47 42                         	cmp	r4, r2
    2ee1:	20 0f                         	beq.b	2ef0 <.LM39>

00002ee3 <.LM38>:
    2ee3:	ef a1                         	mov.l	r10, r1
    2ee5:	05 1b 13 00                   	bsr.a	4200 <__free_r>

00002ee9 <.LVL9>:
    2ee9:	dd 7e 06                      	mov.w	12[r7], r14
    2eec:	76 10 01 00                   	mul	#1, r0

00002ef0 <.LM39>:
    2ef0:	3e 7c 00                      	mov.l	#0, 48[r7]

00002ef3 <.LM40>:
    2ef3:	a9 74                         	mov.l	16[r7], r4

00002ef5 <.LM41>:
    2ef5:	77 2e db ff 00                	and	#0xffdb, r14

00002efa <.LM42>:
    2efa:	3e 71 00                      	mov.l	#0, 4[r7]

00002efd <.LM43>:
    2efd:	e3 74                         	mov.l	r4, [r7]
    2eff:	38 76 ff                      	bra.w	2e75 <.LM19>

00002f02 <.LM44>:
    2f02:	f8 a6 09                      	mov.l	#9, [r10]

00002f05 <.LM45>:
    2f05:	75 3e 40                      	or	#64, r14
    2f08:	d7 7e 06                      	mov.w	r14, 12[r7]

00002f0b <.LM46>:
    2f0b:	fb 16 ff                      	mov.l	#-1, r1

00002f0e <.LM47>:
    2f0e:	3f 7a 04                      	rtsd	#16, r7-r10

00002f11 <.LFE0>:
    2f11:	0f                            	bra.s	2f18 <___call_exitprocs>
    2f12:	03                            	nop
    2f13:	03                            	nop
    2f14:	03                            	nop
    2f15:	03                            	nop
    2f16:	03                            	nop
    2f17:	03                            	nop

00002f18 <___call_exitprocs>:
    2f18:	6e 6d                         	pushm	r6-r13

00002f1a <.LCFI0>:
    2f1a:	fb 72 10 78 00 00             	mov.l	#0x7810, r7
    2f20:	ec 77                         	mov.l	[r7], r7
    2f22:	60 c0                         	sub	#12, r0

00002f24 <.LCFI1>:
    2f24:	e3 07                         	mov.l	r7, [r0]

00002f26 <.LM2>:
    2f26:	72 77 48 01                   	add	#328, r7, r7

00002f2a <.LM3>:
    2f2a:	a0 09                         	mov.l	r1, 4[r0]
    2f2c:	ef 2d                         	mov.l	r2, r13

00002f2e <.LM4>:
    2f2e:	a0 87                         	mov.l	r7, 8[r0]

00002f30 <.LBB2>:
    2f30:	66 1c                         	mov.l	#1, r12

00002f32 <.LBE2>:
    2f32:	ec 07                         	mov.l	[r0], r7

00002f34 <.LM7>:
    2f34:	ed 08 02                      	mov.l	8[r0], r8

00002f37 <.LM8>:
    2f37:	ed 76 52                      	mov.l	328[r7], r6

00002f3a <.LM9>:
    2f3a:	61 06                         	cmp	#0, r6
    2f3c:	3a 86 00                      	beq.w	2fc2 <.LM30>

00002f3f <.LM10>:
    2f3f:	ed 6a 01                      	mov.l	4[r6], r10
    2f42:	71 a7 ff                      	add	#-1, r10, r7

00002f45 <.LVL4>:
    2f45:	27 73                         	bn.b	2fb8 <.LM29>

00002f47 <.LM11>:
    2f47:	71 ae 01                      	add	#1, r10, r14
    2f4a:	fd c2 7b                      	shll	#2, r7, r11
    2f4d:	72 6a 88 00                   	add	#136, r6, r10

00002f51 <.LVL5>:
    2f51:	6c 2e                         	shll	#2, r14
    2f53:	4b ba                         	add	r11, r10

00002f55 <.LVL6>:
    2f55:	ff 29 e6                      	add	r14, r6, r9
    2f58:	2e 14                         	bra.b	2f6c <.LBB4>

00002f5a <.LBB3>:
    2f5a:	ed ab 20                      	mov.l	128[r10], r11
    2f5d:	47 db                         	cmp	r13, r11
    2f5f:	20 11                         	beq.b	2f70 <.LM15>

00002f61 <.LBE3>:
    2f61:	60 17                         	sub	#1, r7

00002f63 <.LVL8>:
    2f63:	60 4a                         	sub	#4, r10
    2f65:	60 49                         	sub	#4, r9
    2f67:	75 07 ff                      	cmp	#-1, r7
    2f6a:	20 4e                         	beq.b	2fb8 <.LM29>

00002f6c <.LBB4>:
    2f6c:	61 0d                         	cmp	#0, r13
    2f6e:	21 ec                         	bne.b	2f5a <.LBB3>

00002f70 <.LM15>:
    2f70:	ed 6b 01                      	mov.l	4[r6], r11

00002f73 <.LM16>:
    2f73:	ec 9f                         	mov.l	[r9], r15

00002f75 <.LM17>:
    2f75:	60 1b                         	sub	#1, r11
    2f77:	47 7b                         	cmp	r7, r11
    2f79:	20 50                         	beq.b	2fc9 <.LM32>

00002f7b <.LM18>:
    2f7b:	f8 96 00                      	mov.l	#0, [r9]

00002f7e <.LM19>:
    2f7e:	61 0f                         	cmp	#0, r15
    2f80:	20 e1                         	beq.b	2f61 <.LBE3>

00002f82 <.LM20>:
    2f82:	ef c2                         	mov.l	r12, r2
    2f84:	fd 62 72                      	shll	r7, r2

00002f87 <.LM21>:
    2f87:	06 a1 0c 62 62                	tst	392[r6].l, r2

00002f8c <.LM22>:
    2f8c:	ed 6b 01                      	mov.l	4[r6], r11

00002f8f <.LM23>:
    2f8f:	20 36                         	beq.b	2fc5 <.LBB5>

00002f91 <.LM24>:
    2f91:	06 a1 0c 62 63                	tst	396[r6].l, r2
    2f96:	21 37                         	bne.b	2fcd <.LM33>

00002f98 <.LM25>:
    2f98:	ec a2                         	mov.l	[r10], r2
    2f9a:	a8 09                         	mov.l	4[r0], r1
    2f9c:	7f 1f                         	jsr	r15

00002f9e <.LVL12>:
    2f9e:	ef 00                         	nop

00002fa0 <.LM26>:
    2fa0:	a8 6a                         	mov.l	4[r6], r2
    2fa2:	47 b2                         	cmp	r11, r2
    2fa4:	21 8e                         	bne.b	2f32 <.LBE2>

00002fa6 <.LM27>:
    2fa6:	ec 8b                         	mov.l	[r8], r11

00002fa8 <.LVL13>:
    2fa8:	47 6b                         	cmp	r6, r11
    2faa:	21 88                         	bne.b	2f32 <.LBE2>

00002fac <.LBE4>:
    2fac:	60 17                         	sub	#1, r7

00002fae <.LVL14>:
    2fae:	60 4a                         	sub	#4, r10
    2fb0:	60 49                         	sub	#4, r9
    2fb2:	75 07 ff                      	cmp	#-1, r7
    2fb5:	21 b7                         	bne.b	2f6c <.LBB4>

00002fb7 <.LVL15>:
    2fb7:	03                            	nop

00002fb8 <.LM29>:
    2fb8:	fb 72 00 00 00 00             	mov.l	#0, r7

00002fbe <.LVL16>:
    2fbe:	61 07                         	cmp	#0, r7
    2fc0:	21 13                         	bne.b	2fd3 <.LBE5>

00002fc2 <.LM30>:
    2fc2:	3f 6d 0b                      	rtsd	#44, r6-r13

00002fc5 <.LBB5>:
    2fc5:	7f 1f                         	jsr	r15

00002fc7 <.LVL19>:
    2fc7:	2e d9                         	bra.b	2fa0 <.LM26>

00002fc9 <.LM32>:
    2fc9:	a0 6f                         	mov.l	r7, 4[r6]
    2fcb:	2e b3                         	bra.b	2f7e <.LM19>

00002fcd <.LM33>:
    2fcd:	ec a1                         	mov.l	[r10], r1
    2fcf:	7f 1f                         	jsr	r15

00002fd1 <.LVL22>:
    2fd1:	2e cf                         	bra.b	2fa0 <.LM26>

00002fd3 <.LBE5>:
    2fd3:	a8 6f                         	mov.l	4[r6], r7
    2fd5:	61 07                         	cmp	#0, r7
    2fd7:	ec 67                         	mov.l	[r6], r7
    2fd9:	21 13                         	bne.b	2fec <.LM40>

00002fdb <.LM35>:
    2fdb:	61 07                         	cmp	#0, r7
    2fdd:	20 0f                         	beq.b	2fec <.LM40>

00002fdf <.LM36>:
    2fdf:	ef 61                         	mov.l	r6, r1

00002fe1 <.LM37>:
    2fe1:	e3 87                         	mov.l	r7, [r8]

00002fe3 <.LM38>:
    2fe3:	05 00 00 00                   	bsr.a	2fe3 <.LM38>

00002fe7 <.LM39>:
    2fe7:	ec 86                         	mov.l	[r8], r6

00002fe9 <.LVL25>:
    2fe9:	38 51 ff                      	bra.w	2f3a <.LM9>

00002fec <.LM40>:
    2fec:	ef 68                         	mov.l	r6, r8

00002fee <.LM41>:
    2fee:	ef 76                         	mov.l	r7, r6

00002ff0 <.LVL28>:
    2ff0:	38 4a ff                      	bra.w	2f3a <.LM9>

00002ff3 <.LFE0>:
    2ff3:	77 10 01 00 00                	mul	#1, r0

00002ff8 <_quorem>:
    2ff8:	6e 6d                         	pushm	r6-r13

00002ffa <.LCFI0>:
    2ffa:	ed 2a 04                      	mov.l	16[r2], r10

00002ffd <.LM3>:
    2ffd:	ef 1d                         	mov.l	r1, r13

00002fff <.LM4>:
    2fff:	06 85 1a 04                   	cmp	16[r1].l, r10
    3003:	2b 05                         	ble.b	3008 <.LM5>
    3005:	38 1b 01                      	bra.w	3120 <.LM61>

00003008 <.LM5>:
    3008:	71 a9 04                      	add	#4, r10, r9

0000300b <.LM6>:
    300b:	fe 69 27                      	mov.l	[r9, r2], r7
    300e:	fe 69 1b                      	mov.l	[r9, r1], r11
    3011:	62 17                         	add	#1, r7

00003013 <.LM7>:
    3013:	6c 29                         	shll	#2, r9

00003015 <.LM8>:
    3015:	fc 27 7b                      	divu	r7, r11

00003018 <.LM9>:
    3018:	60 1a                         	sub	#1, r10

0000301a <.LM10>:
    301a:	71 27 14                      	add	#20, r2, r7

0000301d <.LM11>:
    301d:	4b 29                         	add	r2, r9

0000301f <.LM12>:
    301f:	71 1c 14                      	add	#20, r1, r12

00003022 <.LM13>:
    3022:	61 0b                         	cmp	#0, r11
    3024:	3a 87 00                      	beq.w	30ab <.LM38>
    3027:	66 01                         	mov.l	#0, r1

00003029 <.LVL6>:
    3029:	ef 74                         	mov.l	r7, r4
    302b:	ef ce                         	mov.l	r12, r14
    302d:	ef 13                         	mov.l	r1, r3

0000302f <.LVL7>:
    302f:	03                            	nop

00003030 <.LM14>:
    3030:	fd 2a 46                      	mov.l	[r4+], r6

00003033 <.LM15>:
    3033:	ec ef                         	mov.l	[r14], r15

00003035 <.LM16>:
    3035:	ef 68                         	mov.l	r6, r8
    3037:	77 28 ff ff 00                	and	#0xffff, r8
    303c:	4f b8                         	mul	r11, r8
    303e:	4b 18                         	add	r1, r8

00003040 <.LM17>:
    3040:	69 06                         	shlr	#16, r6

00003042 <.LM18>:
    3042:	ef f5                         	mov.l	r15, r5

00003044 <.LM19>:
    3044:	fd 90 81                      	shlr	#16, r8, r1

00003047 <.LM20>:
    3047:	77 25 ff ff 00                	and	#0xffff, r5

0000304c <.LM21>:
    304c:	4f b6                         	mul	r11, r6
    304e:	4b 61                         	add	r6, r1

00003050 <.LM22>:
    3050:	4b 53                         	add	r5, r3

00003052 <.LVL13>:
    3052:	77 28 ff ff 00                	and	#0xffff, r8

00003057 <.LVL14>:
    3057:	ff 05 83                      	sub	r8, r3, r5

0000305a <.LM23>:
    305a:	ef 18                         	mov.l	r1, r8
    305c:	77 28 ff ff 00                	and	#0xffff, r8
    3061:	fd 90 f3                      	shlr	#16, r15, r3
    3064:	43 83                         	sub	r8, r3

00003066 <.LM24>:
    3066:	fd b0 58                      	shar	#16, r5, r8

00003069 <.LM25>:
    3069:	4b 83                         	add	r8, r3

0000306b <.LM26>:
    306b:	fd d0 38                      	shll	#16, r3, r8
    306e:	77 25 ff ff 00                	and	#0xffff, r5
    3073:	57 85                         	or	r8, r5

00003075 <.LM27>:
    3075:	69 01                         	shlr	#16, r1

00003077 <.LM28>:
    3077:	6b 03                         	shar	#16, r3

00003079 <.LM29>:
    3079:	fd 22 e5                      	mov.l	r5, [r14+]

0000307c <.LM30>:
    307c:	47 49                         	cmp	r4, r9
    307e:	22 b2                         	bc.b	3030 <.LM14>

00003080 <.LM31>:
    3080:	71 ae 05                      	add	#5, r10, r14

00003083 <.LVL18>:
    3083:	fe 6e d4                      	mov.l	[r14, r13], r4

00003086 <.LVL19>:
    3086:	61 04                         	cmp	#0, r4
    3088:	21 23                         	bne.b	30ab <.LM38>

0000308a <.LM32>:
    308a:	6c 2e                         	shll	#2, r14
    308c:	4b de                         	add	r13, r14

0000308e <.LM33>:
    308e:	60 4e                         	sub	#4, r14

00003090 <.LVL20>:
    3090:	47 ec                         	cmp	r14, r12
    3092:	23 0e                         	bnc.b	30a0 <.LM36+0x6>
    3094:	2e 14                         	bra.b	30a8 <.LM37>

00003096 <.LM34>:
    3096:	60 4e                         	sub	#4, r14

00003098 <.LM35>:
    3098:	60 1a                         	sub	#1, r10

0000309a <.LM36>:
    309a:	47 ec                         	cmp	r14, r12
    309c:	22 0c                         	bc.b	30a8 <.LM37>
    309e:	ef 00                         	nop
    30a0:	ec e4                         	mov.l	[r14], r4
    30a2:	61 04                         	cmp	#0, r4
    30a4:	20 f2                         	beq.b	3096 <.LM34>
    30a6:	ef 00                         	nop

000030a8 <.LM37>:
    30a8:	e7 da 04                      	mov.l	r10, 16[r13]

000030ab <.LM38>:
    30ab:	ef d1                         	mov.l	r13, r1
    30ad:	05 f3 1f 00                   	bsr.a	50a0 <___mcmp>

000030b1 <.LVL24>:
    30b1:	61 01                         	cmp	#0, r1
    30b3:	29 68                         	blt.b	311b <.LM59>

000030b5 <.LM39>:
    30b5:	62 1b                         	add	#1, r11

000030b7 <.LM40>:
    30b7:	ef ce                         	mov.l	r12, r14

000030b9 <.LM41>:
    30b9:	66 04                         	mov.l	#0, r4

000030bb <.LM42>:
    30bb:	ec e5                         	mov.l	[r14], r5

000030bd <.LM43>:
    30bd:	fd 2a 72                      	mov.l	[r7+], r2

000030c0 <.LM44>:
    30c0:	ef 53                         	mov.l	r5, r3
    30c2:	77 23 ff ff 00                	and	#0xffff, r3
    30c7:	ef 21                         	mov.l	r2, r1
    30c9:	4b 34                         	add	r3, r4

000030cb <.LVL28>:
    30cb:	77 21 ff ff 00                	and	#0xffff, r1

000030d0 <.LVL29>:
    30d0:	ff 03 14                      	sub	r1, r4, r3

000030d3 <.LM45>:
    30d3:	69 02                         	shlr	#16, r2

000030d5 <.LVL31>:
    30d5:	fd 90 54                      	shlr	#16, r5, r4
    30d8:	43 24                         	sub	r2, r4

000030da <.LM46>:
    30da:	fd b0 31                      	shar	#16, r3, r1

000030dd <.LM47>:
    30dd:	4b 14                         	add	r1, r4

000030df <.LM48>:
    30df:	fd d0 42                      	shll	#16, r4, r2

000030e2 <.LVL34>:
    30e2:	77 23 ff ff 00                	and	#0xffff, r3

000030e7 <.LVL35>:
    30e7:	57 23                         	or	r2, r3

000030e9 <.LM49>:
    30e9:	6b 04                         	shar	#16, r4

000030eb <.LM50>:
    30eb:	fd 22 e3                      	mov.l	r3, [r14+]

000030ee <.LM51>:
    30ee:	47 79                         	cmp	r7, r9
    30f0:	22 cb                         	bc.b	30bb <.LM42>

000030f2 <.LM52>:
    30f2:	71 a7 05                      	add	#5, r10, r7

000030f5 <.LVL39>:
    30f5:	fe 67 de                      	mov.l	[r7, r13], r14
    30f8:	61 0e                         	cmp	#0, r14
    30fa:	21 21                         	bne.b	311b <.LM59>

000030fc <.LM53>:
    30fc:	6c 27                         	shll	#2, r7
    30fe:	4b d7                         	add	r13, r7

00003100 <.LM54>:
    3100:	60 47                         	sub	#4, r7
    3102:	47 7c                         	cmp	r7, r12
    3104:	23 0c                         	bnc.b	3110 <.LM57+0x4>
    3106:	2e 12                         	bra.b	3118 <.LM58>

00003108 <.LM55>:
    3108:	60 47                         	sub	#4, r7

0000310a <.LM56>:
    310a:	60 1a                         	sub	#1, r10

0000310c <.LM57>:
    310c:	47 7c                         	cmp	r7, r12
    310e:	22 0a                         	bc.b	3118 <.LM58>
    3110:	ec 7e                         	mov.l	[r7], r14
    3112:	61 0e                         	cmp	#0, r14
    3114:	20 f4                         	beq.b	3108 <.LM55>
    3116:	ef 00                         	nop

00003118 <.LM58>:
    3118:	e7 da 04                      	mov.l	r10, 16[r13]

0000311b <.LM59>:
    311b:	ef b1                         	mov.l	r11, r1

0000311d <.LM60>:
    311d:	3f 6d 08                      	rtsd	#32, r6-r13

00003120 <.LM61>:
    3120:	66 01                         	mov.l	#0, r1

00003122 <.LM62>:
    3122:	3f 6d 08                      	rtsd	#32, r6-r13

00003125 <.LFE0>:
    3125:	fc 13 00                      	nop

00003128 <__dtoa_r>:
    3128:	6e 6d                         	pushm	r6-r13

0000312a <.LCFI1>:
    312a:	71 00 a4                      	add	#-92, r0, r0

0000312d <.LCFI2>:
    312d:	75 47 80                      	mov.l	#128, r7
    3130:	4b 07                         	add	r0, r7
    3132:	ec 7d                         	mov.l	[r7], r13

00003134 <.LM65>:
    3134:	ed 1c 10                      	mov.l	64[r1], r12

00003137 <.LM66>:
    3137:	ed 79 01                      	mov.l	4[r7], r9
    313a:	a8 f7                         	mov.l	8[r7], r7
    313c:	a0 8b                         	mov.l	r3, 12[r0]
    313e:	a1 04                         	mov.l	r4, 16[r0]
    3140:	e7 0d 06                      	mov.l	r13, 24[r0]
    3143:	a0 87                         	mov.l	r7, 8[r0]

00003145 <.LM67>:
    3145:	61 0c                         	cmp	#0, r12

00003147 <.LM68>:
    3147:	ef 1a                         	mov.l	r1, r10
    3149:	ef 2b                         	mov.l	r2, r11

0000314b <.LM69>:
    314b:	20 1a                         	beq.b	3165 <.LM76>

0000314d <.LM70>:
    314d:	ed 1d 11                      	mov.l	68[r1], r13

00003150 <.LM71>:
    3150:	66 17                         	mov.l	#1, r7
    3152:	fd 62 d7                      	shll	r13, r7

00003155 <.LM72>:
    3155:	e7 cd 01                      	mov.l	r13, 4[r12]

00003158 <.LM73>:
    3158:	e7 c7 02                      	mov.l	r7, 8[r12]

0000315b <.LM74>:
    315b:	ef c2                         	mov.l	r12, r2

0000315d <.LVL49>:
    315d:	05 a3 1a 00                   	bsr.a	4c00 <__Bfree>

00003161 <.LM75>:
    3161:	f9 a6 10 00                   	mov.l	#0, 64[r10]

00003165 <.LM76>:
    3165:	71 b7 00                      	add	#0, r11, r7
    3168:	28 53                         	bge.b	31bb <.LM92>

0000316a <.LM77>:
    316a:	ef 7b                         	mov.l	r7, r11

0000316c <.LVL51>:
    316c:	74 2b ff ff ff 7f             	and	#0x7fffffff, r11

00003172 <.LM78>:
    3172:	ef b5                         	mov.l	r11, r5
    3174:	74 25 00 00 80 7f             	and	#0x7f800000, r5

0000317a <.LM79>:
    317a:	f8 96 01                      	mov.l	#1, [r9]

0000317d <.LM80>:
    317d:	74 05 00 00 80 7f             	cmp	#0x7f800000, r5
    3183:	ef bc                         	mov.l	r11, r12
    3185:	21 4b                         	bne.b	31d0 <.LM95>
    3187:	03                            	nop

00003188 <.LM81>:
    3188:	ed 0e 06                      	mov.l	24[r0], r14

0000318b <.LM82>:
    318b:	fd 7c cb ff ff 0f             	tst	#0xfffff, r11

00003191 <.LM83>:
    3191:	f8 ea 0f 27                   	mov.l	#0x270f, [r14]

00003195 <.LM84>:
    3195:	3a d7 02                      	beq.w	346c <.LM196>
    3198:	fb 82 e1 79 00 00             	mov.l	#0x79e1, r8
    319e:	ef 00                         	nop

000031a0 <.LM85>:
    31a0:	a8 87                         	mov.l	8[r0], r7
    31a2:	61 07                         	cmp	#0, r7
    31a4:	20 4f                         	beq.b	31f3 <.LM102>

000031a6 <.LM86>:
    31a6:	59 87 03                      	movu.b	3[r8], r7
    31a9:	61 07                         	cmp	#0, r7
    31ab:	3a ec 02                      	beq.w	3497 <.LM202>

000031ae <.LM87>:
    31ae:	71 87 08                      	add	#8, r8, r7

000031b1 <.LM88>:
    31b1:	ed 0a 02                      	mov.l	8[r0], r10

000031b4 <.LM89>:
    31b4:	ef 81                         	mov.l	r8, r1

000031b6 <.LM90>:
    31b6:	e3 a7                         	mov.l	r7, [r10]

000031b8 <.LM91>:
    31b8:	3f 6d 1f                      	rtsd	#124, r6-r13

000031bb <.LM92>:
    31bb:	ef b5                         	mov.l	r11, r5
    31bd:	74 25 00 00 80 7f             	and	#0x7f800000, r5

000031c3 <.LM93>:
    31c3:	f8 96 00                      	mov.l	#0, [r9]

000031c6 <.LM94>:
    31c6:	74 05 00 00 80 7f             	cmp	#0x7f800000, r5
    31cc:	ef bc                         	mov.l	r11, r12
    31ce:	20 ba                         	beq.b	3188 <.LM81>

000031d0 <.LM95>:
    31d0:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    31d7:	21 21                         	bne.b	31f8 <.LM103>

000031d9 <.LM96>:
    31d9:	ed 0b 06                      	mov.l	24[r0], r11

000031dc <.LM97>:
    31dc:	ed 0c 02                      	mov.l	8[r0], r12

000031df <.LM98>:
    31df:	f8 b6 01                      	mov.l	#1, [r11]

000031e2 <.LM99>:
    31e2:	61 0c                         	cmp	#0, r12
    31e4:	3a aa 02                      	beq.w	348e <.LM201>

000031e7 <.LM100>:
    31e7:	f8 c2 50 78 00 00             	mov.l	#0x7850, [r12]

000031ed <.LM101>:
    31ed:	fb 82 4f 78 00 00             	mov.l	#0x784f, r8

000031f3 <.LM102>:
    31f3:	ef 81                         	mov.l	r8, r1
    31f5:	3f 6d 1f                      	rtsd	#124, r6-r13

000031f8 <.LM103>:
    31f8:	71 04 04                      	add	#4, r0, r4
    31fb:	ef a1                         	mov.l	r10, r1
    31fd:	ef b2                         	mov.l	r11, r2
    31ff:	ef 03                         	mov.l	r0, r3
    3201:	a4 85                         	mov.l	r5, 72[r0]

00003203 <.LM104>:
    3203:	fd 97 bd                      	shlr	#23, r11, r13

00003206 <.LM105>:
    3206:	05 6a 20 00                   	bsr.a	5270 <___d2b>

0000320a <.LVL61>:
    320a:	a2 89                         	mov.l	r1, 44[r0]

0000320c <.LM106>:
    320c:	76 2d ff 00                   	and	#255, r13

00003210 <.LVL63>:
    3210:	ac 85                         	mov.l	72[r0], r5
    3212:	3b 63 02                      	bne.w	3475 <.LM197>

00003215 <.LM107>:
    3215:	ed 0f 01                      	mov.l	4[r0], r15

00003218 <.LVL65>:
    3218:	ec 0d                         	mov.l	[r0], r13

0000321a <.LM108>:
    321a:	fb 76 8b                      	mov.l	#-117, r7

0000321d <.LM109>:
    321d:	4b fd                         	add	r15, r13

0000321f <.LM110>:
    321f:	43 d7                         	sub	r13, r7
    3221:	ef be                         	mov.l	r11, r14
    3223:	fd 62 7e                      	shll	r7, r14

00003226 <.LVL68>:
    3226:	ef e7                         	mov.l	r14, r7

00003228 <.LM111>:
    3228:	26 05                         	bpz.b	322d <.LM111+0x5>
    322a:	38 e9 08                      	bra.w	3b13 <.LM442>
    322d:	fc 47 e7                      	itof	r14, r7

00003230 <.LM112>:
    3230:	70 77 00 00 80 f0             	add	#0xf0800000, r7, r7

00003236 <.LM113>:
    3236:	60 1d                         	sub	#1, r13

00003238 <.LM114>:
    3238:	3e 08 01                      	mov.l	#1, 32[r0]

0000323b <.LVL72>:
    323b:	77 10 01 00 00                	mul	#1, r0

00003240 <.LM115>:
    3240:	fd 72 07 00 00 c0 3f          	fsub	#0x3fc00000, r7

00003247 <.LVL73>:
    3247:	fd 72 37 3b 3d 94 3e          	fmul	#0x3e943d3b, r7
    324e:	fc 47 de                      	itof	r13, r14
    3251:	fd 72 3e 9b 20 9a 3e          	fmul	#0x3e9a209b, r14
    3258:	fd 72 27 45 51 34 3e          	fadd	#0x3e345145, r7
    325f:	fc 8b e7                      	fadd	r14, r7

00003262 <.LM116>:
    3262:	fc 97 7e                      	ftoi	r7, r14
    3265:	e7 0e 05                      	mov.l	r14, 20[r0]

00003268 <.LM117>:
    3268:	fd 72 17 00 00 00 00          	fcmp	#0, r7
    326f:	26 05                         	bpz.b	3274 <.LM118>
    3271:	38 8b 03                      	bra.w	35fc <.LM254>

00003274 <.LM118>:
    3274:	ed 0e 05                      	mov.l	20[r0], r14
    3277:	61 ae                         	cmp	#10, r14
    3279:	25 05                         	bleu.b	327e <.LM119>
    327b:	38 22 02                      	bra.w	349d <.LM203>

0000327e <.LM119>:
    327e:	fb 72 00 7a 00 00             	mov.l	#0x7a00, r7
    3284:	fe 6e 77                      	mov.l	[r14, r7], r7
    3287:	fc 87 7b                      	fcmp	r7, r11
    328a:	27 05                         	bn.b	328f <.LM120>
    328c:	38 af 05                      	bra.w	383b <.LM344>

0000328f <.LM120>:
    328f:	ef e7                         	mov.l	r14, r7
    3291:	60 17                         	sub	#1, r7
    3293:	a1 0f                         	mov.l	r7, 20[r0]

00003295 <.LM121>:
    3295:	3e 0e 00                      	mov.l	#0, 56[r0]

00003298 <.LM122>:
    3298:	43 df                         	sub	r13, r15
    329a:	60 1f                         	sub	#1, r15

0000329c <.LM123>:
    329c:	26 05                         	bpz.b	32a1 <.LM124>
    329e:	38 70 03                      	bra.w	360e <.LM256>

000032a1 <.LM124>:
    32a1:	3e 07 00                      	mov.l	#0, 28[r0]

000032a4 <.LM125>:
    32a4:	ed 0d 05                      	mov.l	20[r0], r13

000032a7 <.LVL81>:
    32a7:	61 0d                         	cmp	#0, r13
    32a9:	28 05                         	bge.b	32ae <.LM126>
    32ab:	38 6d 03                      	bra.w	3618 <.LM258>

000032ae <.LM126>:
    32ae:	4b df                         	add	r13, r15
    32b0:	e7 0d 0c                      	mov.l	r13, 48[r0]

000032b3 <.LM127>:
    32b3:	3e 09 00                      	mov.l	#0, 36[r0]

000032b6 <.LVL84>:
    32b6:	ef 00                         	nop

000032b8 <.LM128>:
    32b8:	ed 0d 03                      	mov.l	12[r0], r13
    32bb:	61 9d                         	cmp	#9, r13
    32bd:	25 05                         	bleu.b	32c2 <.LM129>
    32bf:	38 e4 01                      	bra.w	34a3 <.LM204>

000032c2 <.LM129>:
    32c2:	61 5d                         	cmp	#5, r13
    32c4:	2a 05                         	bgt.b	32c9 <.LM130>
    32c6:	38 f9 0a                      	bra.w	3dbf <.LM533>

000032c9 <.LM130>:
    32c9:	60 4d                         	sub	#4, r13

000032cb <.LVL86>:
    32cb:	e7 0d 03                      	mov.l	r13, 12[r0]

000032ce <.LM131>:
    32ce:	66 06                         	mov.l	#0, r6

000032d0 <.LM132>:
    32d0:	ed 0e 03                      	mov.l	12[r0], r14
    32d3:	61 3e                         	cmp	#3, r14
    32d5:	3a 4d 08                      	beq.w	3b22 <.LM443>
    32d8:	2b 05                         	ble.b	32dd <.LM132+0xd>
    32da:	38 67 05                      	bra.w	3841 <.LM345>
    32dd:	61 2e                         	cmp	#2, r14
    32df:	3b c7 01                      	bne.w	34a6 <.LM205>

000032e2 <.LM133>:
    32e2:	3e 0a 00                      	mov.l	#0, 40[r0]
    32e5:	fc 13 00                      	nop

000032e8 <.LM134>:
    32e8:	ed 0d 04                      	mov.l	16[r0], r13
    32eb:	61 0d                         	cmp	#0, r13
    32ed:	2a 05                         	bgt.b	32f2 <.LM134+0xa>
    32ef:	38 5a 08                      	bra.w	3b49 <.LM449>
    32f2:	ef d9                         	mov.l	r13, r9
    32f4:	e7 0d 0f                      	mov.l	r13, 60[r0]
    32f7:	ef d7                         	mov.l	r13, r7

000032f9 <.LM135>:
    32f9:	f9 a6 11 00                   	mov.l	#0, 68[r10]
    32fd:	75 59 17                      	cmp	#23, r9
    3300:	24 05                         	bgtu.b	3305 <.LLST15+0x3>
    3302:	38 b8 0a                      	bra.w	3dba <.LM532>
    3305:	66 1e                         	mov.l	#1, r14
    3307:	66 4d                         	mov.l	#4, r13

00003309 <.LM136>:
    3309:	4b dd                         	add	r13, r13

0000330b <.LM137>:
    330b:	ef e2                         	mov.l	r14, r2

0000330d <.LM138>:
    330d:	71 d4 14                      	add	#20, r13, r4
    3310:	62 1e                         	add	#1, r14
    3312:	47 94                         	cmp	r9, r4
    3314:	25 f5                         	bleu.b	3309 <.LM136>
    3316:	e7 a2 11                      	mov.l	r2, 68[r10]

00003319 <.LM139>:
    3319:	f9 02 0d a0 4b 00 00          	mov.l	#0x4ba0, 52[r0]
    3320:	ed 0d 0d                      	mov.l	52[r0], r13
    3323:	a4 85                         	mov.l	r5, 72[r0]
    3325:	e7 0f 11                      	mov.l	r15, 68[r0]
    3328:	ef a1                         	mov.l	r10, r1

0000332a <.LVL94>:
    332a:	7f 1d                         	jsr	r13

0000332c <.LVL95>:
    332c:	e7 a1 10                      	mov.l	r1, 64[r10]

0000332f <.LM140>:
    332f:	61 59                         	cmp	#5, r9

00003331 <.LM141>:
    3331:	ef 18                         	mov.l	r1, r8

00003333 <.LM142>:
    3333:	ac 85                         	mov.l	72[r0], r5
    3335:	ed 0f 11                      	mov.l	68[r0], r15
    3338:	25 05                         	bleu.b	333d <.LM143>
    333a:	38 9a 01                      	bra.w	34d4 <.LM208>

0000333d <.LM143>:
    333d:	61 06                         	cmp	#0, r6
    333f:	3a 95 01                      	beq.w	34d4 <.LM208>

00003342 <.LM144>:
    3342:	ed 0e 05                      	mov.l	20[r0], r14
    3345:	61 0e                         	cmp	#0, r14
    3347:	2a 05                         	bgt.b	334c <.LM145>
    3349:	38 8e 08                      	bra.w	3bd7 <.LM465>

0000334c <.LM145>:
    334c:	ef e4                         	mov.l	r14, r4

0000334e <.LM146>:
    334e:	ef ed                         	mov.l	r14, r13

00003350 <.LM147>:
    3350:	64 f4                         	and	#15, r4

00003352 <.LM148>:
    3352:	6a 4d                         	shar	#4, r13

00003354 <.LM149>:
    3354:	fb e2 00 7a 00 00             	mov.l	#0x7a00, r14

0000335a <.LM150>:
    335a:	fd 74 cd 02                   	tst	#2, r13

0000335e <.LM151>:
    335e:	fe 64 e3                      	mov.l	[r4, r14], r3

00003361 <.LM152>:
    3361:	3a e1 07                      	beq.w	3b42 <.LM447>

00003364 <.LM153>:
    3364:	fb e2 f8 79 00 00             	mov.l	#0x79f8, r14
    336a:	ef b2                         	mov.l	r11, r2

0000336c <.LM154>:
    336c:	64 1d                         	and	#1, r13

0000336e <.LM155>:
    336e:	fc 91 e2 04                   	fdiv	16[r14].l, r2

00003372 <.LM156>:
    3372:	66 34                         	mov.l	#3, r4

00003374 <.LM157>:
    3374:	61 0d                         	cmp	#0, r13
    3376:	20 1c                         	beq.b	3392 <.LM162>
    3378:	fb e2 f8 79 00 00             	mov.l	#0x79f8, r14

0000337e <.LVL102>:
    337e:	ef 00                         	nop

00003380 <.LM158>:
    3380:	fd 74 cd 01                   	tst	#1, r13
    3384:	16                            	beq.s	338a <.LM161>

00003385 <.LM159>:
    3385:	fc 8c e3                      	fmul	[r14].l, r3

00003388 <.LM160>:
    3388:	62 14                         	add	#1, r4

0000338a <.LM161>:
    338a:	6a 1d                         	shar	#1, r13
    338c:	62 4e                         	add	#4, r14
    338e:	61 0d                         	cmp	#0, r13
    3390:	21 f0                         	bne.b	3380 <.LM158>

00003392 <.LM162>:
    3392:	fc 93 32                      	fdiv	r3, r2

00003395 <.LVL106>:
    3395:	fc 13 00                      	nop

00003398 <.LM163>:
    3398:	ed 0d 0e                      	mov.l	56[r0], r13
    339b:	61 0d                         	cmp	#0, r13
    339d:	20 0e                         	beq.b	33ab <.LM165>

0000339f <.LM164>:
    339f:	fd 72 12 00 00 80 3f          	fcmp	#0x3f800000, r2
    33a6:	26 05                         	bpz.b	33ab <.LM165>
    33a8:	38 60 09                      	bra.w	3d08 <.LM513>

000033ab <.LM165>:
    33ab:	fc 47 44                      	itof	r4, r4

000033ae <.LVL108>:
    33ae:	fc 8f 24                      	fmul	r2, r4
    33b1:	fd 72 24 00 00 e0 40          	fadd	#0x40e00000, r4

000033b8 <.LM166>:
    33b8:	70 41 00 00 80 f4             	add	#0xf4800000, r4, r1

000033be <.LM167>:
    33be:	61 07                         	cmp	#0, r7
    33c0:	3a 08 07                      	beq.w	3ac8 <.LM437>
    33c3:	ed 0e 05                      	mov.l	20[r0], r14
    33c6:	ef 79                         	mov.l	r7, r9
    33c8:	e7 0e 10                      	mov.l	r14, 64[r0]

000033cb <.LM168>:
    33cb:	ed 0d 0a                      	mov.l	40[r0], r13
    33ce:	61 0d                         	cmp	#0, r13
    33d0:	3a 77 08                      	beq.w	3c47 <.LM481>

000033d3 <.LM169>:
    33d3:	71 94 ff                      	add	#-1, r9, r4
    33d6:	6c 24                         	shll	#2, r4

000033d8 <.LM170>:
    33d8:	fc 97 2e                      	ftoi	r2, r14

000033db <.LM171>:
    33db:	70 44 00 7a 00 00             	add	#0x7a00, r4, r4
    33e1:	fb d2 00 00 00 3f             	mov.l	#0x3f000000, r13

000033e7 <.LM172>:
    33e7:	71 e3 30                      	add	#48, r14, r3

000033ea <.LM173>:
    33ea:	fc 90 4d                      	fdiv	[r4].l, r13

000033ed <.LM174>:
    33ed:	fc 47 ee                      	itof	r14, r14
    33f0:	fc 83 e2                      	fsub	r14, r2

000033f3 <.LM175>:
    33f3:	ef 86                         	mov.l	r8, r6

000033f5 <.LM176>:
    33f5:	fc 83 1d                      	fsub	r1, r13

000033f8 <.LM177>:
    33f8:	fd 20 63                      	mov.b	r3, [r6+]

000033fb <.LM178>:
    33fb:	fc 87 d2                      	fcmp	r13, r2

000033fe <.LM179>:
    33fe:	ef 2e                         	mov.l	r2, r14

00003400 <.LM180>:
    3400:	26 05                         	bpz.b	3405 <.LM181>
    3402:	38 9c 09                      	bra.w	3d9e <.LM530>

00003405 <.LM181>:
    3405:	fb 12 00 00 80 3f             	mov.l	#0x3f800000, r1
    340b:	ef 14                         	mov.l	r1, r4
    340d:	fc 83 24                      	fsub	r2, r4
    3410:	fc 87 d4                      	fcmp	r13, r4
    3413:	26 05                         	bpz.b	3418 <.LM182>
    3415:	38 80 09                      	bra.w	3d95 <.LM529>

00003418 <.LM182>:
    3418:	61 19                         	cmp	#1, r9
    341a:	2a 05                         	bgt.b	341f <.LM182+0x7>
    341c:	38 b8 00                      	bra.w	34d4 <.LM208>
    341f:	ef 64                         	mov.l	r6, r4

00003421 <.LM183>:
    3421:	4b 89                         	add	r8, r9

00003423 <.LVL118>:
    3423:	2e 15                         	bra.b	3438 <.LM186>

00003425 <.LM184>:
    3425:	ef 12                         	mov.l	r1, r2
    3427:	fc 83 e2                      	fsub	r14, r2
    342a:	fc 87 d2                      	fcmp	r13, r2
    342d:	26 05                         	bpz.b	3432 <.LM185>
    342f:	38 3c 09                      	bra.w	3d6b <.L83>

00003432 <.LM185>:
    3432:	47 94                         	cmp	r9, r4
    3434:	3a a0 00                      	beq.w	34d4 <.LM208>

00003437 <.LVL120>:
    3437:	03                            	nop

00003438 <.LM186>:
    3438:	fd 72 3e 00 00 20 41          	fmul	#0x41200000, r14

0000343f <.LM187>:
    343f:	fc 97 e2                      	ftoi	r14, r2

00003442 <.LM188>:
    3442:	71 23 30                      	add	#48, r2, r3

00003445 <.LM189>:
    3445:	fc 47 22                      	itof	r2, r2

00003448 <.LM190>:
    3448:	fd 72 3d 00 00 20 41          	fmul	#0x41200000, r13

0000344f <.LM191>:
    344f:	fc 83 2e                      	fsub	r2, r14

00003452 <.LM192>:
    3452:	fd 20 43                      	mov.b	r3, [r4+]

00003455 <.LM193>:
    3455:	fc 87 de                      	fcmp	r13, r14

00003458 <.LM194>:
    3458:	ef 46                         	mov.l	r4, r6

0000345a <.LM195>:
    345a:	26 cb                         	bpz.b	3425 <.LM184>
    345c:	ed 0e 10                      	mov.l	64[r0], r14

0000345f <.LVL125>:
    345f:	e7 0e 05                      	mov.l	r14, 20[r0]

00003462 <.LVL126>:
    3462:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3469:	38 af 03                      	bra.w	3818 <.L82>

0000346c <.LM196>:
    346c:	fb 82 d8 79 00 00             	mov.l	#0x79d8, r8
    3472:	38 2e fd                      	bra.w	31a0 <.LM85>

00003475 <.LM197>:
    3475:	ef b7                         	mov.l	r11, r7
    3477:	77 27 ff ff 7f                	and	#0x7fffff, r7

0000347c <.LM198>:
    347c:	74 37 00 00 80 3f             	or	#0x3f800000, r7

00003482 <.LM199>:
    3482:	71 dd 81                      	add	#-127, r13, r13

00003485 <.LVL130>:
    3485:	ed 0f 01                      	mov.l	4[r0], r15

00003488 <.LM200>:
    3488:	3e 08 00                      	mov.l	#0, 32[r0]
    348b:	38 b5 fd                      	bra.w	3240 <.LM115>

0000348e <.LM201>:
    348e:	fb 82 4f 78 00 00             	mov.l	#0x784f, r8
    3494:	38 5f fd                      	bra.w	31f3 <.LM102>

00003497 <.LM202>:
    3497:	71 87 03                      	add	#3, r8, r7
    349a:	38 17 fd                      	bra.w	31b1 <.LM88>

0000349d <.LM203>:
    349d:	3e 0e 01                      	mov.l	#1, 56[r0]
    34a0:	38 f8 fd                      	bra.w	3298 <.LM122>

000034a3 <.LM204>:
    34a3:	3e 03 00                      	mov.l	#0, 12[r0]

000034a6 <.LM205>:
    34a6:	f9 02 0d a0 4b 00 00          	mov.l	#0x4ba0, 52[r0]

000034ad <.LM206>:
    34ad:	f9 a6 11 00                   	mov.l	#0, 68[r10]

000034b1 <.LM207>:
    34b1:	ed 0d 0d                      	mov.l	52[r0], r13
    34b4:	a4 85                         	mov.l	r5, 72[r0]
    34b6:	e7 0f 11                      	mov.l	r15, 68[r0]
    34b9:	ef a1                         	mov.l	r10, r1

000034bb <.LVL136>:
    34bb:	66 02                         	mov.l	#0, r2
    34bd:	7f 1d                         	jsr	r13

000034bf <.LVL137>:
    34bf:	fb 76 ff                      	mov.l	#-1, r7
    34c2:	ac 85                         	mov.l	72[r0], r5
    34c4:	ed 0f 11                      	mov.l	68[r0], r15
    34c7:	ef 18                         	mov.l	r1, r8
    34c9:	e7 a1 10                      	mov.l	r1, 64[r10]

000034cc <.LVL138>:
    34cc:	3e 04 00                      	mov.l	#0, 16[r0]
    34cf:	a3 8f                         	mov.l	r7, 60[r0]
    34d1:	3e 0a 01                      	mov.l	#1, 40[r0]

000034d4 <.LM208>:
    34d4:	ec 0d                         	mov.l	[r0], r13
    34d6:	61 0d                         	cmp	#0, r13
    34d8:	28 05                         	bge.b	34dd <.LM209>
    34da:	38 d2 00                      	bra.w	35ac <.LM239>

000034dd <.LM209>:
    34dd:	ed 0e 05                      	mov.l	20[r0], r14
    34e0:	61 6e                         	cmp	#6, r14
    34e2:	2b 05                         	ble.b	34e7 <.LM210>
    34e4:	38 c8 00                      	bra.w	35ac <.LM239>

000034e7 <.LM210>:
    34e7:	fb c2 00 7a 00 00             	mov.l	#0x7a00, r12
    34ed:	fe 6e c4                      	mov.l	[r14, r12], r4

000034f0 <.LM211>:
    34f0:	ed 0c 04                      	mov.l	16[r0], r12
    34f3:	61 0c                         	cmp	#0, r12
    34f5:	28 05                         	bge.b	34fa <.LM212>
    34f7:	38 9f 03                      	bra.w	3896 <.LM356>

000034fa <.LM212>:
    34fa:	ef bd                         	mov.l	r11, r13
    34fc:	fc 93 4d                      	fdiv	r4, r13
    34ff:	fc 97 dd                      	ftoi	r13, r13

00003502 <.LM213>:
    3502:	fc 47 dc                      	itof	r13, r12
    3505:	fc 8f 4c                      	fmul	r4, r12

00003508 <.LM214>:
    3508:	71 de 30                      	add	#48, r13, r14
    350b:	ef 86                         	mov.l	r8, r6

0000350d <.LM215>:
    350d:	fc 83 cb                      	fsub	r12, r11

00003510 <.LM216>:
    3510:	fd 20 6e                      	mov.b	r14, [r6+]

00003513 <.LM217>:
    3513:	61 17                         	cmp	#1, r7
    3515:	20 48                         	beq.b	355d <.LM227>

00003517 <.LM218>:
    3517:	fd 72 3b 00 00 20 41          	fmul	#0x41200000, r11

0000351e <.LVL145>:
    351e:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    3525:	ef 6e                         	mov.l	r6, r14
    3527:	21 16                         	bne.b	353d <.LM219>
    3529:	38 39 ff                      	bra.w	3462 <.LVL126>

0000352c <.LVL146>:
    352c:	fd 72 3b 00 00 20 41          	fmul	#0x41200000, r11

00003533 <.LVL147>:
    3533:	fd 72 1b 00 00 00 00          	fcmp	#0, r11
    353a:	3a 28 ff                      	beq.w	3462 <.LVL126>

0000353d <.LM219>:
    353d:	ef bd                         	mov.l	r11, r13

0000353f <.LVL149>:
    353f:	fc 93 4d                      	fdiv	r4, r13
    3542:	fc 97 dd                      	ftoi	r13, r13

00003545 <.LM220>:
    3545:	71 dc 30                      	add	#48, r13, r12
    3548:	fd 20 ec                      	mov.b	r12, [r14+]

0000354b <.LM221>:
    354b:	fc 47 dc                      	itof	r13, r12
    354e:	fc 8f 4c                      	fmul	r4, r12

00003551 <.LM222>:
    3551:	ff 03 8e                      	sub	r8, r14, r3

00003554 <.LM223>:
    3554:	fc 83 cb                      	fsub	r12, r11

00003557 <.LM224>:
    3557:	47 37                         	cmp	r3, r7

00003559 <.LM225>:
    3559:	ef e6                         	mov.l	r14, r6

0000355b <.LM226>:
    355b:	21 d1                         	bne.b	352c <.LVL146>

0000355d <.LM227>:
    355d:	fc 8b bb                      	fadd	r11, r11

00003560 <.LM228>:
    3560:	fc 87 b4                      	fcmp	r11, r4
    3563:	27 0d                         	bn.b	3570 <.LM229+0xb>

00003565 <.LM229>:
    3565:	3b fd fe                      	bne.w	3462 <.LVL126>
    3568:	fd 74 cd 01                   	tst	#1, r13
    356c:	3a f6 fe                      	beq.w	3462 <.LVL126>
    356f:	03                            	nop
    3570:	71 67 ff                      	add	#-1, r6, r7

00003573 <.LVL154>:
    3573:	cc 73                         	mov.b	[r7], r3
    3575:	0d                            	bra.s	357a <.LM230>

00003576 <.LVL155>:
    3576:	cc c3                         	mov.b	[r12], r3
    3578:	ef 76                         	mov.l	r7, r6

0000357a <.LM230>:
    357a:	71 67 ff                      	add	#-1, r6, r7

0000357d <.LVL157>:
    357d:	5b 3b                         	movu.b	r3, r11

0000357f <.LM231>:
    357f:	71 7c ff                      	add	#-1, r7, r12

00003582 <.LM232>:
    3582:	75 5b 39                      	cmp	#57, r11
    3585:	3b 63 07                      	bne.w	3ce8 <.LVL408>

00003588 <.LM233>:
    3588:	47 78                         	cmp	r7, r8
    358a:	21 ec                         	bne.b	3576 <.LVL155>

0000358c <.LM234>:
    358c:	ed 0d 05                      	mov.l	20[r0], r13

0000358f <.LM235>:
    358f:	f8 84 30                      	mov.b	#48, [r8]

00003592 <.LM236>:
    3592:	62 1d                         	add	#1, r13
    3594:	e7 0d 05                      	mov.l	r13, 20[r0]

00003597 <.LM237>:
    3597:	ef 87                         	mov.l	r8, r7

00003599 <.LVL159>:
    3599:	75 43 31                      	mov.l	#49, r3

0000359c <.LVL160>:
    359c:	76 10 01 00                   	mul	#1, r0

000035a0 <.LM238>:
    35a0:	c3 73                         	mov.b	r3, [r7]

000035a2 <.LVL161>:
    35a2:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    35a9:	38 6f 02                      	bra.w	3818 <.L82>

000035ac <.LM239>:
    35ac:	ed 0b 0a                      	mov.l	40[r0], r11

000035af <.LVL163>:
    35af:	61 0b                         	cmp	#0, r11
    35b1:	20 7d                         	beq.b	362e <.LM265>

000035b3 <.LM240>:
    35b3:	ed 0e 03                      	mov.l	12[r0], r14
    35b6:	61 1e                         	cmp	#1, r14
    35b8:	2a 05                         	bgt.b	35bd <.LM241>
    35ba:	38 18 03                      	bra.w	38d2 <.LM366>

000035bd <.LM241>:
    35bd:	aa 0c                         	mov.l	36[r0], r4

000035bf <.LM242>:
    35bf:	71 76 ff                      	add	#-1, r7, r6

000035c2 <.LM243>:
    35c2:	47 64                         	cmp	r6, r4
    35c4:	28 05                         	bge.b	35c9 <.LM244>
    35c6:	38 68 05                      	bra.w	3b2e <.LM445>

000035c9 <.LM244>:
    35c9:	ff 06 64                      	sub	r6, r4, r6

000035cc <.LM245>:
    35cc:	61 07                         	cmp	#0, r7

000035ce <.LM246>:
    35ce:	ed 09 07                      	mov.l	28[r0], r9

000035d1 <.LM247>:
    35d1:	28 05                         	bge.b	35d6 <.LM247+0x5>
    35d3:	38 0e 07                      	bra.w	3ce1 <.LM506>
    35d6:	ef 7d                         	mov.l	r7, r13

000035d8 <.LM248>:
    35d8:	ed 0e 07                      	mov.l	28[r0], r14

000035db <.LM249>:
    35db:	4b df                         	add	r13, r15

000035dd <.LM250>:
    35dd:	4b de                         	add	r13, r14

000035df <.LM251>:
    35df:	a4 85                         	mov.l	r5, 72[r0]
    35e1:	e7 0f 11                      	mov.l	r15, 68[r0]
    35e4:	fb b2 08 4e 00 00             	mov.l	#0x4e08, r11
    35ea:	ef a1                         	mov.l	r10, r1
    35ec:	66 12                         	mov.l	#1, r2

000035ee <.LM252>:
    35ee:	e7 0e 07                      	mov.l	r14, 28[r0]

000035f1 <.LM253>:
    35f1:	7f 1b                         	jsr	r11

000035f3 <.LVL168>:
    35f3:	ef 1d                         	mov.l	r1, r13

000035f5 <.LVL169>:
    35f5:	ac 85                         	mov.l	72[r0], r5
    35f7:	ed 0f 11                      	mov.l	68[r0], r15
    35fa:	2e 42                         	bra.b	363c <.LM268>

000035fc <.LM254>:
    35fc:	fc 47 ee                      	itof	r14, r14

000035ff <.LVL171>:
    35ff:	fc 87 7e                      	fcmp	r7, r14
    3602:	3a 72 fc                      	beq.w	3274 <.LM118>

00003605 <.LM255>:
    3605:	a9 0f                         	mov.l	20[r0], r7

00003607 <.LVL172>:
    3607:	60 17                         	sub	#1, r7
    3609:	a1 0f                         	mov.l	r7, 20[r0]

0000360b <.LVL173>:
    360b:	38 69 fc                      	bra.w	3274 <.LM118>

0000360e <.LM256>:
    360e:	7e 1f                         	neg	r15

00003610 <.LVL175>:
    3610:	e7 0f 07                      	mov.l	r15, 28[r0]

00003613 <.LM257>:
    3613:	66 0f                         	mov.l	#0, r15

00003615 <.LVL177>:
    3615:	38 8f fc                      	bra.w	32a4 <.LM125>

00003618 <.LM258>:
    3618:	ed 0e 07                      	mov.l	28[r0], r14

0000361b <.LM259>:
    361b:	a9 0f                         	mov.l	20[r0], r7

0000361d <.LM260>:
    361d:	06 81 0e 05                   	sub	20[r0].l, r14

00003621 <.LM261>:
    3621:	7e 17                         	neg	r7

00003623 <.LM262>:
    3623:	e7 0e 07                      	mov.l	r14, 28[r0]

00003626 <.LM263>:
    3626:	a2 0f                         	mov.l	r7, 36[r0]

00003628 <.LM264>:
    3628:	3e 0c 00                      	mov.l	#0, 48[r0]
    362b:	38 8d fc                      	bra.w	32b8 <.LM128>

0000362e <.LM265>:
    362e:	aa 0e                         	mov.l	36[r0], r6

00003630 <.LM266>:
    3630:	ed 09 07                      	mov.l	28[r0], r9

00003633 <.LM267>:
    3633:	ed 0d 0a                      	mov.l	40[r0], r13
    3636:	fb b2 08 4e 00 00             	mov.l	#0x4e08, r11

0000363c <.LM268>:
    363c:	61 09                         	cmp	#0, r9
    363e:	20 15                         	beq.b	3653 <.LM276>

00003640 <.LM269>:
    3640:	61 0f                         	cmp	#0, r15
    3642:	2b 11                         	ble.b	3653 <.LM276>

00003644 <.LM270>:
    3644:	ef fe                         	mov.l	r15, r14

00003646 <.LM271>:
    3646:	a9 8c                         	mov.l	28[r0], r4

00003648 <.LM272>:
    3648:	fc 17 9e                      	min	r9, r14

0000364b <.LM273>:
    364b:	43 e4                         	sub	r14, r4
    364d:	a1 8c                         	mov.l	r4, 28[r0]

0000364f <.LM274>:
    364f:	43 e9                         	sub	r14, r9

00003651 <.LM275>:
    3651:	43 ef                         	sub	r14, r15

00003653 <.LM276>:
    3653:	ed 0e 09                      	mov.l	36[r0], r14
    3656:	61 0e                         	cmp	#0, r14
    3658:	2a 05                         	bgt.b	365d <.LM277>
    365a:	38 0d 04                      	bra.w	3a67 <.LVL315>

0000365d <.LM277>:
    365d:	ed 0e 0a                      	mov.l	40[r0], r14
    3660:	61 0e                         	cmp	#0, r14
    3662:	3a 91 04                      	beq.w	3af3 <.LM441>

00003665 <.LM278>:
    3665:	61 06                         	cmp	#0, r6
    3667:	2a 05                         	bgt.b	366c <.LM279>
    3669:	38 23 02                      	bra.w	388c <.LVL251>

0000366c <.LM279>:
    366c:	ef d2                         	mov.l	r13, r2
    366e:	ef 63                         	mov.l	r6, r3
    3670:	ef a1                         	mov.l	r10, r1
    3672:	a4 85                         	mov.l	r5, 72[r0]
    3674:	e7 0f 11                      	mov.l	r15, 68[r0]
    3677:	05 d9 18 00                   	bsr.a	4f50 <___pow5mult>

0000367b <.LVL187>:
    367b:	ef 1d                         	mov.l	r1, r13

0000367d <.LM280>:
    367d:	aa 8b                         	mov.l	44[r0], r3
    367f:	ef d2                         	mov.l	r13, r2
    3681:	ef a1                         	mov.l	r10, r1

00003683 <.LVL189>:
    3683:	05 9d 17 00                   	bsr.a	4e20 <___multiply>

00003687 <.LM281>:
    3687:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]

0000368e <.LM282>:
    368e:	ef 1e                         	mov.l	r1, r14

00003690 <.LM283>:
    3690:	aa 8a                         	mov.l	44[r0], r2
    3692:	aa 03                         	mov.l	32[r0], r3
    3694:	e7 0e 13                      	mov.l	r14, 76[r0]
    3697:	ef a1                         	mov.l	r10, r1

00003699 <.LVL192>:
    3699:	7f 13                         	jsr	r3

0000369b <.LM284>:
    369b:	ed 0e 13                      	mov.l	76[r0], r14
    369e:	ed 0f 11                      	mov.l	68[r0], r15
    36a1:	ac 85                         	mov.l	72[r0], r5
    36a3:	e7 0e 0b                      	mov.l	r14, 44[r0]

000036a6 <.LVL194>:
    36a6:	ef 00                         	nop

000036a8 <.LM285>:
    36a8:	aa 0b                         	mov.l	36[r0], r3
    36aa:	43 63                         	sub	r6, r3

000036ac <.LVL195>:
    36ac:	3b fc 04                      	bne.w	3ba8 <.LM462>

000036af <.LVL196>:
    36af:	03                            	nop

000036b0 <.LM286>:
    36b0:	a4 85                         	mov.l	r5, 72[r0]
    36b2:	e7 0f 11                      	mov.l	r15, 68[r0]
    36b5:	ef a1                         	mov.l	r10, r1
    36b7:	66 12                         	mov.l	#1, r2
    36b9:	7f 1b                         	jsr	r11

000036bb <.LM287>:
    36bb:	ab 04                         	mov.l	48[r0], r4

000036bd <.LM288>:
    36bd:	ef 1b                         	mov.l	r1, r11

000036bf <.LM289>:
    36bf:	61 04                         	cmp	#0, r4
    36c1:	ac 85                         	mov.l	72[r0], r5
    36c3:	ed 0f 11                      	mov.l	68[r0], r15
    36c6:	2b 13                         	ble.b	36d9 <.LM291>

000036c8 <.LM290>:
    36c8:	ef b2                         	mov.l	r11, r2
    36ca:	ef a1                         	mov.l	r10, r1

000036cc <.LVL199>:
    36cc:	ef 43                         	mov.l	r4, r3
    36ce:	05 82 18 00                   	bsr.a	4f50 <___pow5mult>

000036d2 <.LVL200>:
    36d2:	ed 0f 11                      	mov.l	68[r0], r15
    36d5:	ac 85                         	mov.l	72[r0], r5
    36d7:	ef 1b                         	mov.l	r1, r11

000036d9 <.LM291>:
    36d9:	ed 0e 03                      	mov.l	12[r0], r14
    36dc:	61 1e                         	cmp	#1, r14
    36de:	2a 05                         	bgt.b	36e3 <.LM292>
    36e0:	38 91 01                      	bra.w	3871 <.LM350>

000036e3 <.LM292>:
    36e3:	66 0c                         	mov.l	#0, r12

000036e5 <.LVL202>:
    36e5:	fc 13 00                      	nop

000036e8 <.LM293>:
    36e8:	ed 0e 0c                      	mov.l	48[r0], r14
    36eb:	61 0e                         	cmp	#0, r14
    36ed:	3b 5f 03                      	bne.w	3a4c <.LM425>
    36f0:	66 11                         	mov.l	#1, r1

000036f2 <.LM294>:
    36f2:	ff 2e f1                      	add	r15, r1, r14
    36f5:	75 2e 1f                      	and	#31, r14

000036f8 <.LVL204>:
    36f8:	3a ed 01                      	beq.w	38e5 <.LM369>

000036fb <.LM295>:
    36fb:	75 44 20                      	mov.l	#32, r4
    36fe:	43 e4                         	sub	r14, r4

00003700 <.LM296>:
    3700:	61 44                         	cmp	#4, r4
    3702:	2a 05                         	bgt.b	3707 <.LM297>
    3704:	38 aa 06                      	bra.w	3dae <.LM531>

00003707 <.LM297>:
    3707:	75 44 1c                      	mov.l	#28, r4

0000370a <.LVL206>:
    370a:	ff 0e e4                      	sub	r14, r4, r14

0000370d <.LVL207>:
    370d:	fc 13 00                      	nop

00003710 <.LM298>:
    3710:	a9 8c                         	mov.l	28[r0], r4

00003712 <.LM299>:
    3712:	4b e9                         	add	r14, r9

00003714 <.LM300>:
    3714:	4b e4                         	add	r14, r4
    3716:	a1 8c                         	mov.l	r4, 28[r0]

00003718 <.LM301>:
    3718:	4b ef                         	add	r14, r15

0000371a <.LM302>:
    371a:	ed 0e 07                      	mov.l	28[r0], r14
    371d:	61 0e                         	cmp	#0, r14
    371f:	2b 14                         	ble.b	3733 <.LM304>

00003721 <.LM303>:
    3721:	aa 8a                         	mov.l	44[r0], r2
    3723:	ef a1                         	mov.l	r10, r1
    3725:	ef e3                         	mov.l	r14, r3
    3727:	e7 0f 11                      	mov.l	r15, 68[r0]
    372a:	05 c6 18 00                   	bsr.a	4ff0 <___lshift>

0000372e <.LVL211>:
    372e:	ed 0f 11                      	mov.l	68[r0], r15
    3731:	a2 89                         	mov.l	r1, 44[r0]

00003733 <.LM304>:
    3733:	61 0f                         	cmp	#0, r15
    3735:	2b 0e                         	ble.b	3743 <.LM306>

00003737 <.LM305>:
    3737:	ef b2                         	mov.l	r11, r2
    3739:	ef a1                         	mov.l	r10, r1
    373b:	ef f3                         	mov.l	r15, r3
    373d:	05 b3 18 00                   	bsr.a	4ff0 <___lshift>

00003741 <.LVL213>:
    3741:	ef 1b                         	mov.l	r1, r11

00003743 <.LM306>:
    3743:	ab 84                         	mov.l	56[r0], r4
    3745:	61 04                         	cmp	#0, r4
    3747:	3b cf 02                      	bne.w	3a16 <.LM419>

0000374a <.LM307>:
    374a:	61 07                         	cmp	#0, r7
    374c:	2a 05                         	bgt.b	3751 <.LM308>
    374e:	38 23 03                      	bra.w	3a71 <.LM426>

00003751 <.LM308>:
    3751:	ed 0e 0a                      	mov.l	40[r0], r14
    3754:	61 0e                         	cmp	#0, r14
    3756:	3b 95 01                      	bne.w	38eb <.LM370>
    3759:	f9 02 09 f8 2f 00 00          	mov.l	#0x2ff8, 36[r0]
    3760:	e7 0d 03                      	mov.l	r13, 12[r0]
    3763:	ef 89                         	mov.l	r8, r9

00003765 <.LM309>:
    3765:	fb c2 20 4c 00 00             	mov.l	#0x4c20, r12

0000376b <.LVL217>:
    376b:	ed 0d 0b                      	mov.l	44[r0], r13

0000376e <.LVL218>:
    376e:	aa 0e                         	mov.l	36[r0], r6

00003770 <.LVL219>:
    3770:	0d                            	bra.s	3775 <.LM310>

00003771 <.LVL220>:
    3771:	7f 1c                         	jsr	r12

00003773 <.LVL221>:
    3773:	ef 1d                         	mov.l	r1, r13

00003775 <.LM310>:
    3775:	ef b2                         	mov.l	r11, r2
    3777:	ef d1                         	mov.l	r13, r1
    3779:	7f 16                         	jsr	r6

0000377b <.LVL223>:
    377b:	71 1e 30                      	add	#48, r1, r14

0000377e <.LVL224>:
    377e:	fd 20 9e                      	mov.b	r14, [r9+]

00003781 <.LM311>:
    3781:	ff 0f 89                      	sub	r8, r9, r15

00003784 <.LM312>:
    3784:	47 f7                         	cmp	r15, r7

00003786 <.LM313>:
    3786:	ef a1                         	mov.l	r10, r1
    3788:	ef d2                         	mov.l	r13, r2
    378a:	66 a3                         	mov.l	#10, r3
    378c:	66 04                         	mov.l	#0, r4

0000378e <.LM314>:
    378e:	2a e3                         	bgt.b	3771 <.LVL220>

00003790 <.LM315>:
    3790:	fd 74 47 01                   	max	#1, r7

00003794 <.LVL227>:
    3794:	e7 0d 0b                      	mov.l	r13, 44[r0]
    3797:	ed 0d 03                      	mov.l	12[r0], r13

0000379a <.LVL228>:
    379a:	ff 26 78                      	add	r7, r8, r6
    379d:	f9 02 07 a0 50 00 00          	mov.l	#0x50a0, 28[r0]

000037a4 <.LM316>:
    37a4:	66 07                         	mov.l	#0, r7

000037a6 <.LVL229>:
    37a6:	ef 00                         	nop

000037a8 <.LM317>:
    37a8:	aa 8a                         	mov.l	44[r0], r2
    37aa:	66 13                         	mov.l	#1, r3
    37ac:	ef a1                         	mov.l	r10, r1
    37ae:	e7 0e 13                      	mov.l	r14, 76[r0]
    37b1:	05 3f 18 00                   	bsr.a	4ff0 <___lshift>

000037b5 <.LM318>:
    37b5:	ed 0c 07                      	mov.l	28[r0], r12
    37b8:	ef b2                         	mov.l	r11, r2

000037ba <.LM319>:
    37ba:	a2 89                         	mov.l	r1, 44[r0]

000037bc <.LM320>:
    37bc:	7f 1c                         	jsr	r12

000037be <.LM321>:
    37be:	61 01                         	cmp	#0, r1
    37c0:	ed 0e 13                      	mov.l	76[r0], r14
    37c3:	2a 05                         	bgt.b	37c8 <.L142>
    37c5:	38 fa 03                      	bra.w	3bbf <.LM463>

000037c8 <.L142>:
    37c8:	71 6c ff                      	add	#-1, r6, r12
    37cb:	cc ce                         	mov.b	[r12], r14
    37cd:	0d                            	bra.s	37d2 <.LM322>

000037ce <.LVL233>:
    37ce:	cc 3e                         	mov.b	[r3], r14
    37d0:	ef c6                         	mov.l	r12, r6

000037d2 <.LM322>:
    37d2:	71 6c ff                      	add	#-1, r6, r12

000037d5 <.LVL235>:
    37d5:	5b e4                         	movu.b	r14, r4

000037d7 <.LM323>:
    37d7:	71 c3 ff                      	add	#-1, r12, r3

000037da <.LM324>:
    37da:	75 54 39                      	cmp	#57, r4
    37dd:	3b 63 04                      	bne.w	3c40 <.LM480>

000037e0 <.LM325>:
    37e0:	47 c8                         	cmp	r12, r8
    37e2:	21 ec                         	bne.b	37ce <.LVL233>

000037e4 <.LM326>:
    37e4:	ed 0e 05                      	mov.l	20[r0], r14

000037e7 <.LM327>:
    37e7:	f8 84 31                      	mov.b	#49, [r8]

000037ea <.LM328>:
    37ea:	62 1e                         	add	#1, r14
    37ec:	e7 0e 05                      	mov.l	r14, 20[r0]

000037ef <.LVL236>:
    37ef:	03                            	nop

000037f0 <.L135>:
    37f0:	ef b2                         	mov.l	r11, r2
    37f2:	ed 0b 08                      	mov.l	32[r0], r11

000037f5 <.LVL237>:
    37f5:	ef a1                         	mov.l	r10, r1
    37f7:	7f 1b                         	jsr	r11

000037f9 <.LM330>:
    37f9:	61 0d                         	cmp	#0, r13
    37fb:	20 1d                         	beq.b	3818 <.L82>

000037fd <.LM331>:
    37fd:	61 07                         	cmp	#0, r7
    37ff:	20 0d                         	beq.b	380c <.LM334>

00003801 <.LM332>:
    3801:	47 d7                         	cmp	r13, r7
    3803:	11                            	beq.s	380c <.LM334>

00003804 <.LM333>:
    3804:	ef a1                         	mov.l	r10, r1
    3806:	ef 72                         	mov.l	r7, r2
    3808:	05 f8 13 00                   	bsr.a	4c00 <__Bfree>

0000380c <.LM334>:
    380c:	ed 0c 08                      	mov.l	32[r0], r12
    380f:	ef a1                         	mov.l	r10, r1
    3811:	ef d2                         	mov.l	r13, r2
    3813:	7f 1c                         	jsr	r12

00003815 <.LVL240>:
    3815:	fc 13 00                      	nop

00003818 <.L82>:
    3818:	aa 07                         	mov.l	32[r0], r7
    381a:	aa 8a                         	mov.l	44[r0], r2
    381c:	ef a1                         	mov.l	r10, r1
    381e:	7f 17                         	jsr	r7

00003820 <.LM336>:
    3820:	a9 0f                         	mov.l	20[r0], r7
    3822:	ed 0a 06                      	mov.l	24[r0], r10

00003825 <.LM337>:
    3825:	ed 0b 02                      	mov.l	8[r0], r11

00003828 <.LM338>:
    3828:	62 17                         	add	#1, r7

0000382a <.LM339>:
    382a:	3c 60 00                      	mov.b	#0, [r6]

0000382d <.LM340>:
    382d:	e3 a7                         	mov.l	r7, [r10]

0000382f <.LM341>:
    382f:	61 0b                         	cmp	#0, r11
    3831:	3a c2 f9                      	beq.w	31f3 <.LM102>

00003834 <.LM342>:
    3834:	e3 b6                         	mov.l	r6, [r11]

00003836 <.LM343>:
    3836:	ef 81                         	mov.l	r8, r1
    3838:	3f 6d 1f                      	rtsd	#124, r6-r13

0000383b <.LM344>:
    383b:	3e 0e 00                      	mov.l	#0, 56[r0]
    383e:	38 5a fa                      	bra.w	3298 <.LM122>

00003841 <.LM345>:
    3841:	a8 8f                         	mov.l	12[r0], r7
    3843:	61 47                         	cmp	#4, r7
    3845:	3a e3 02                      	beq.w	3b28 <.LM444>
    3848:	61 57                         	cmp	#5, r7
    384a:	3b 5c fc                      	bne.w	34a6 <.LM205>

0000384d <.LM346>:
    384d:	3e 0a 01                      	mov.l	#1, 40[r0]

00003850 <.LM347>:
    3850:	ed 0e 04                      	mov.l	16[r0], r14

00003853 <.LVL246>:
    3853:	06 89 0e 05                   	add	20[r0].l, r14
    3857:	ef e9                         	mov.l	r14, r9
    3859:	62 19                         	add	#1, r9

0000385b <.LVL247>:
    385b:	e7 0e 0f                      	mov.l	r14, 60[r0]

0000385e <.LM348>:
    385e:	71 97 00                      	add	#0, r9, r7
    3861:	2b 05                         	ble.b	3866 <.LVL248>
    3863:	38 96 fa                      	bra.w	32f9 <.LM135>

00003866 <.LVL248>:
    3866:	ef 00                         	nop

00003868 <.LM349>:
    3868:	f9 a6 11 00                   	mov.l	#0, 68[r10]
    386c:	66 02                         	mov.l	#0, r2
    386e:	38 ab fa                      	bra.w	3319 <.LM139>

00003871 <.LM350>:
    3871:	fd 7c cc ff ff 7f             	tst	#0x7fffff, r12
    3877:	3b 6c fe                      	bne.w	36e3 <.LM292>

0000387a <.LM351>:
    387a:	61 05                         	cmp	#0, r5
    387c:	3a 71 04                      	beq.w	3ced <.LM508>

0000387f <.LM352>:
    387f:	a9 8c                         	mov.l	28[r0], r4

00003881 <.LM353>:
    3881:	62 1f                         	add	#1, r15

00003883 <.LM354>:
    3883:	62 14                         	add	#1, r4
    3885:	a1 8c                         	mov.l	r4, 28[r0]

00003887 <.LM355>:
    3887:	66 1c                         	mov.l	#1, r12
    3889:	38 5f fe                      	bra.w	36e8 <.LM293>

0000388c <.LVL251>:
    388c:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3893:	38 15 fe                      	bra.w	36a8 <.LM285>

00003896 <.LM356>:
    3896:	61 07                         	cmp	#0, r7
    3898:	2b 05                         	ble.b	389d <.LM357>
    389a:	38 60 fc                      	bra.w	34fa <.LM212>

0000389d <.LM357>:
    389d:	3b 48 02                      	bne.w	3ae5 <.LM440>

000038a0 <.LM358>:
    38a0:	fd 72 34 00 00 a0 40          	fmul	#0x40a00000, r4

000038a7 <.LVL254>:
    38a7:	fc 87 b4                      	fcmp	r11, r4
    38aa:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]

000038b1 <.LM359>:
    38b1:	ef 7b                         	mov.l	r7, r11

000038b3 <.LVL255>:
    38b3:	ef 7d                         	mov.l	r7, r13

000038b5 <.LM360>:
    38b5:	26 05                         	bpz.b	38ba <.L80>
    38b7:	38 e9 01                      	bra.w	3aa0 <.L79>

000038ba <.L80>:
    38ba:	a9 07                         	mov.l	16[r0], r7

000038bc <.LM362>:
    38bc:	ef 86                         	mov.l	r8, r6

000038be <.LM363>:
    38be:	7e 07                         	not	r7
    38c0:	a1 0f                         	mov.l	r7, 20[r0]

000038c2 <.LM364>:
    38c2:	aa 07                         	mov.l	32[r0], r7
    38c4:	ef a1                         	mov.l	r10, r1
    38c6:	ef b2                         	mov.l	r11, r2
    38c8:	7f 17                         	jsr	r7

000038ca <.LM365>:
    38ca:	61 0d                         	cmp	#0, r13
    38cc:	3b 40 ff                      	bne.w	380c <.LM334>
    38cf:	38 49 ff                      	bra.w	3818 <.L82>

000038d2 <.LM366>:
    38d2:	aa 03                         	mov.l	32[r0], r3
    38d4:	61 03                         	cmp	#0, r3
    38d6:	3a 1c 04                      	beq.w	3cf2 <.LM509>

000038d9 <.LM367>:
    38d9:	72 dd 96 00                   	add	#150, r13, r13
    38dd:	aa 0e                         	mov.l	36[r0], r6

000038df <.LM368>:
    38df:	ed 09 07                      	mov.l	28[r0], r9
    38e2:	38 f6 fc                      	bra.w	35d8 <.LM248>

000038e5 <.LM369>:
    38e5:	75 4e 1c                      	mov.l	#28, r14

000038e8 <.LVL261>:
    38e8:	38 28 fe                      	bra.w	3710 <.LM298>

000038eb <.LM370>:
    38eb:	61 09                         	cmp	#0, r9
    38ed:	2b 0e                         	ble.b	38fb <.LM372>

000038ef <.LM371>:
    38ef:	ef d2                         	mov.l	r13, r2
    38f1:	ef a1                         	mov.l	r10, r1
    38f3:	ef 93                         	mov.l	r9, r3
    38f5:	05 fb 16 00                   	bsr.a	4ff0 <___lshift>

000038f9 <.LVL263>:
    38f9:	ef 1d                         	mov.l	r1, r13

000038fb <.LM372>:
    38fb:	61 0c                         	cmp	#0, r12
    38fd:	3b 18 03                      	bne.w	3c15 <.LM475>
    3900:	ef dc                         	mov.l	r13, r12

00003902 <.LM373>:
    3902:	71 8e ff                      	add	#-1, r8, r14
    3905:	4b 7e                         	add	r7, r14

00003907 <.LM374>:
    3907:	ef b6                         	mov.l	r11, r6

00003909 <.LVL266>:
    3909:	ed 0b 0b                      	mov.l	44[r0], r11

0000390c <.LVL267>:
    390c:	f9 02 07 a0 50 00 00          	mov.l	#0x50a0, 28[r0]

00003913 <.LM375>:
    3913:	e7 0e 0a                      	mov.l	r14, 40[r0]
    3916:	ef d7                         	mov.l	r13, r7

00003918 <.LVL268>:
    3918:	f9 02 09 f8 2f 00 00          	mov.l	#0x2ff8, 36[r0]

0000391f <.LM376>:
    391f:	fb 92 20 4c 00 00             	mov.l	#0x4c20, r9

00003925 <.LVL269>:
    3925:	e7 08 0c                      	mov.l	r8, 48[r0]

00003928 <.LM377>:
    3928:	ed 0d 09                      	mov.l	36[r0], r13
    392b:	ef 62                         	mov.l	r6, r2
    392d:	ef b1                         	mov.l	r11, r1
    392f:	7f 1d                         	jsr	r13

00003931 <.LM378>:
    3931:	ed 0e 07                      	mov.l	28[r0], r14

00003934 <.LM379>:
    3934:	a1 01                         	mov.l	r1, 16[r0]

00003936 <.LM380>:
    3936:	ef 72                         	mov.l	r7, r2
    3938:	ef b1                         	mov.l	r11, r1
    393a:	7f 1e                         	jsr	r14

0000393c <.LM381>:
    393c:	ef c3                         	mov.l	r12, r3

0000393e <.LM382>:
    393e:	ef 1d                         	mov.l	r1, r13

00003940 <.LM383>:
    3940:	ef 62                         	mov.l	r6, r2
    3942:	ef a1                         	mov.l	r10, r1
    3944:	05 94 17 00                   	bsr.a	50d8 <___mdiff>

00003948 <.LM384>:
    3948:	ed 0e 04                      	mov.l	16[r0], r14

0000394b <.LM385>:
    394b:	a8 9b                         	mov.l	12[r1], r3

0000394d <.LM386>:
    394d:	71 ee 30                      	add	#48, r14, r14

00003950 <.LM387>:
    3950:	61 03                         	cmp	#0, r3

00003952 <.LM388>:
    3952:	ef 14                         	mov.l	r1, r4

00003954 <.LM389>:
    3954:	20 62                         	beq.b	39b6 <.LM407>

00003956 <.LM390>:
    3956:	aa 03                         	mov.l	32[r0], r3
    3958:	e7 0e 13                      	mov.l	r14, 76[r0]
    395b:	ef a1                         	mov.l	r10, r1

0000395d <.LVL277>:
    395d:	ef 42                         	mov.l	r4, r2
    395f:	7f 13                         	jsr	r3

00003961 <.LVL278>:
    3961:	ed 0e 13                      	mov.l	76[r0], r14

00003964 <.LM391>:
    3964:	66 13                         	mov.l	#1, r3

00003966 <.LM392>:
    3966:	61 0d                         	cmp	#0, r13
    3968:	28 05                         	bge.b	396d <.LM393>
    396a:	38 ec 01                      	bra.w	3b56 <.LVL345>

0000396d <.LM393>:
    396d:	19                            	bne.s	3976 <.LM395>

0000396e <.LM394>:
    396e:	ed 0d 03                      	mov.l	12[r0], r13

00003971 <.LVL280>:
    3971:	61 0d                         	cmp	#0, r13
    3973:	3a e3 01                      	beq.w	3b56 <.LVL345>

00003976 <.LM395>:
    3976:	61 03                         	cmp	#0, r3
    3978:	2b 05                         	ble.b	397d <.LM396>
    397a:	38 43 03                      	bra.w	3cbd <.LVL399>

0000397d <.LM396>:
    397d:	ef 8d                         	mov.l	r8, r13
    397f:	fd 20 de                      	mov.b	r14, [r13+]

00003982 <.LM397>:
    3982:	06 85 08 0a                   	cmp	40[r0].l, r8
    3986:	3a 4c 03                      	beq.w	3cd2 <.LVL402>

00003989 <.LM398>:
    3989:	ef b2                         	mov.l	r11, r2
    398b:	ef a1                         	mov.l	r10, r1
    398d:	66 a3                         	mov.l	#10, r3
    398f:	66 04                         	mov.l	#0, r4
    3991:	7f 19                         	jsr	r9

00003993 <.LM399>:
    3993:	47 c7                         	cmp	r12, r7

00003995 <.LM400>:
    3995:	ef 1b                         	mov.l	r1, r11

00003997 <.LM401>:
    3997:	20 6c                         	beq.b	3a03 <.LM417>

00003999 <.LM402>:
    3999:	ef 72                         	mov.l	r7, r2
    399b:	66 a3                         	mov.l	#10, r3
    399d:	66 04                         	mov.l	#0, r4
    399f:	ef a1                         	mov.l	r10, r1

000039a1 <.LVL284>:
    39a1:	7f 19                         	jsr	r9

000039a3 <.LM403>:
    39a3:	ef c2                         	mov.l	r12, r2

000039a5 <.LM404>:
    39a5:	ef 17                         	mov.l	r1, r7

000039a7 <.LM405>:
    39a7:	66 a3                         	mov.l	#10, r3
    39a9:	ef a1                         	mov.l	r10, r1

000039ab <.LVL287>:
    39ab:	66 04                         	mov.l	#0, r4
    39ad:	7f 19                         	jsr	r9

000039af <.LVL288>:
    39af:	ef 1c                         	mov.l	r1, r12

000039b1 <.LM406>:
    39b1:	ef d8                         	mov.l	r13, r8
    39b3:	38 75 ff                      	bra.w	3928 <.LM377>

000039b6 <.LM407>:
    39b6:	ef 42                         	mov.l	r4, r2
    39b8:	ef b1                         	mov.l	r11, r1

000039ba <.LVL291>:
    39ba:	e7 0e 13                      	mov.l	r14, 76[r0]
    39bd:	a4 0c                         	mov.l	r4, 68[r0]
    39bf:	05 e1 16 00                   	bsr.a	50a0 <___mcmp>

000039c3 <.LM408>:
    39c3:	ac 0c                         	mov.l	68[r0], r4

000039c5 <.LM409>:
    39c5:	ef 13                         	mov.l	r1, r3

000039c7 <.LM410>:
    39c7:	ef 42                         	mov.l	r4, r2
    39c9:	aa 04                         	mov.l	32[r0], r4
    39cb:	a4 0b                         	mov.l	r3, 68[r0]
    39cd:	ef a1                         	mov.l	r10, r1

000039cf <.LVL294>:
    39cf:	7f 14                         	jsr	r4

000039d1 <.LM411>:
    39d1:	ac 0b                         	mov.l	68[r0], r3
    39d3:	ed 0e 13                      	mov.l	76[r0], r14
    39d6:	61 03                         	cmp	#0, r3
    39d8:	21 8e                         	bne.b	3966 <.LM392>
    39da:	a8 8c                         	mov.l	12[r0], r4
    39dc:	61 04                         	cmp	#0, r4
    39de:	21 88                         	bne.b	3966 <.LM392>
    39e0:	e7 0b 0b                      	mov.l	r11, 44[r0]

000039e3 <.LM412>:
    39e3:	75 5e 39                      	cmp	#57, r14
    39e6:	ef 6b                         	mov.l	r6, r11

000039e8 <.LVL296>:
    39e8:	ef 84                         	mov.l	r8, r4
    39ea:	a9 06                         	mov.l	16[r0], r6

000039ec <.LVL297>:
    39ec:	ed 08 0c                      	mov.l	48[r0], r8

000039ef <.LVL298>:
    39ef:	3a aa 01                      	beq.w	3b99 <.L133>

000039f2 <.LM413>:
    39f2:	61 0d                         	cmp	#0, r13
    39f4:	2b 05                         	ble.b	39f9 <.LM415>

000039f6 <.LM414>:
    39f6:	71 6e 31                      	add	#49, r6, r14

000039f9 <.LM415>:
    39f9:	ef 46                         	mov.l	r4, r6
    39fb:	fd 20 6e                      	mov.b	r14, [r6+]

000039fe <.LM416>:
    39fe:	ef cd                         	mov.l	r12, r13
    3a00:	38 f0 fd                      	bra.w	37f0 <.L135>

00003a03 <.LM417>:
    3a03:	ef 72                         	mov.l	r7, r2
    3a05:	ef a1                         	mov.l	r10, r1

00003a07 <.LVL302>:
    3a07:	66 a3                         	mov.l	#10, r3
    3a09:	66 04                         	mov.l	#0, r4
    3a0b:	7f 19                         	jsr	r9

00003a0d <.LVL303>:
    3a0d:	ef 17                         	mov.l	r1, r7

00003a0f <.LVL304>:
    3a0f:	ef 1c                         	mov.l	r1, r12

00003a11 <.LM418>:
    3a11:	ef d8                         	mov.l	r13, r8
    3a13:	38 15 ff                      	bra.w	3928 <.LM377>

00003a16 <.LM419>:
    3a16:	aa 89                         	mov.l	44[r0], r1
    3a18:	ef b2                         	mov.l	r11, r2
    3a1a:	05 86 16 00                   	bsr.a	50a0 <___mcmp>

00003a1e <.LVL307>:
    3a1e:	61 01                         	cmp	#0, r1
    3a20:	29 05                         	blt.b	3a25 <.LM420>
    3a22:	38 28 fd                      	bra.w	374a <.LM307>

00003a25 <.LM420>:
    3a25:	aa 8a                         	mov.l	44[r0], r2
    3a27:	fb 72 20 4c 00 00             	mov.l	#0x4c20, r7

00003a2d <.LVL308>:
    3a2d:	ef a1                         	mov.l	r10, r1
    3a2f:	66 a3                         	mov.l	#10, r3
    3a31:	66 04                         	mov.l	#0, r4
    3a33:	7f 17                         	jsr	r7

00003a35 <.LM421>:
    3a35:	ed 0e 05                      	mov.l	20[r0], r14

00003a38 <.LM422>:
    3a38:	a2 89                         	mov.l	r1, 44[r0]

00003a3a <.LM423>:
    3a3a:	60 1e                         	sub	#1, r14
    3a3c:	e7 0e 05                      	mov.l	r14, 20[r0]

00003a3f <.LM424>:
    3a3f:	ed 0e 0a                      	mov.l	40[r0], r14

00003a42 <.LVL311>:
    3a42:	61 0e                         	cmp	#0, r14
    3a44:	3b 3b 03                      	bne.w	3d7f <.LM527>
    3a47:	ab 8f                         	mov.l	60[r0], r7
    3a49:	38 01 fd                      	bra.w	374a <.LM307>

00003a4c <.LM425>:
    3a4c:	ed be 04                      	mov.l	16[r11], r14
    3a4f:	62 4e                         	add	#4, r14
    3a51:	fe 6e b1                      	mov.l	[r14, r11], r1

00003a54 <.LVL313>:
    3a54:	e7 0f 11                      	mov.l	r15, 68[r0]
    3a57:	05 e9 12 00                   	bsr.a	4d40 <___hi0bits>

00003a5b <.LVL314>:
    3a5b:	75 4e 20                      	mov.l	#32, r14
    3a5e:	ff 01 1e                      	sub	r1, r14, r1
    3a61:	ed 0f 11                      	mov.l	68[r0], r15
    3a64:	38 8e fc                      	bra.w	36f2 <.LM294>

00003a67 <.LVL315>:
    3a67:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3a6e:	38 42 fc                      	bra.w	36b0 <.LM286>

00003a71 <.LM426>:
    3a71:	ed 0e 03                      	mov.l	12[r0], r14
    3a74:	61 2e                         	cmp	#2, r14
    3a76:	2a 05                         	bgt.b	3a7b <.LM427>
    3a78:	38 d9 fc                      	bra.w	3751 <.LM308>

00003a7b <.LM427>:
    3a7b:	61 07                         	cmp	#0, r7
    3a7d:	3b 3d fe                      	bne.w	38ba <.L80>

00003a80 <.LM428>:
    3a80:	ef b2                         	mov.l	r11, r2
    3a82:	66 53                         	mov.l	#5, r3
    3a84:	ef 74                         	mov.l	r7, r4
    3a86:	ef a1                         	mov.l	r10, r1
    3a88:	05 98 11 00                   	bsr.a	4c20 <___multadd>

00003a8c <.LVL317>:
    3a8c:	ef 1b                         	mov.l	r1, r11

00003a8e <.LVL318>:
    3a8e:	aa 89                         	mov.l	44[r0], r1

00003a90 <.LVL319>:
    3a90:	ef b2                         	mov.l	r11, r2
    3a92:	05 0e 16 00                   	bsr.a	50a0 <___mcmp>

00003a96 <.LVL320>:
    3a96:	61 01                         	cmp	#0, r1
    3a98:	2a 05                         	bgt.b	3a9d <.LVL321>
    3a9a:	38 20 fe                      	bra.w	38ba <.L80>

00003a9d <.LVL321>:
    3a9d:	fc 13 00                      	nop

00003aa0 <.L79>:
    3aa0:	ed 0e 05                      	mov.l	20[r0], r14

00003aa3 <.LM430>:
    3aa3:	ef 86                         	mov.l	r8, r6
    3aa5:	75 4c 31                      	mov.l	#49, r12

00003aa8 <.LM431>:
    3aa8:	62 1e                         	add	#1, r14

00003aaa <.LM432>:
    3aaa:	fd 20 6c                      	mov.b	r12, [r6+]

00003aad <.LM433>:
    3aad:	e7 0e 05                      	mov.l	r14, 20[r0]

00003ab0 <.LM434>:
    3ab0:	38 12 fe                      	bra.w	38c2 <.LM364>

00003ab3 <.LM435>:
    3ab3:	fc 47 44                      	itof	r4, r4

00003ab6 <.LVL325>:
    3ab6:	fc 8f 24                      	fmul	r2, r4
    3ab9:	fd 72 24 00 00 e0 40          	fadd	#0x40e00000, r4

00003ac0 <.LM436>:
    3ac0:	70 41 00 00 80 f4             	add	#0xf4800000, r4, r1

00003ac6 <.LVL327>:
    3ac6:	ef 00                         	nop

00003ac8 <.LM437>:
    3ac8:	fd 72 02 00 00 a0 40          	fsub	#0x40a00000, r2

00003acf <.LM438>:
    3acf:	fc 87 21                      	fcmp	r2, r1
    3ad2:	26 05                         	bpz.b	3ad7 <.LM439>
    3ad4:	38 db 01                      	bra.w	3caf <.LM502>

00003ad7 <.LM439>:
    3ad7:	70 11 00 00 00 80             	add	#0x80000000, r1, r1

00003add <.LVL329>:
    3add:	fc 87 12                      	fcmp	r1, r2
    3ae0:	27 05                         	bn.b	3ae5 <.LM440>
    3ae2:	38 f2 f9                      	bra.w	34d4 <.LM208>

00003ae5 <.LM440>:
    3ae5:	66 0b                         	mov.l	#0, r11
    3ae7:	ef bd                         	mov.l	r11, r13
    3ae9:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3af0:	38 ca fd                      	bra.w	38ba <.L80>

00003af3 <.LM441>:
    3af3:	aa 8a                         	mov.l	44[r0], r2
    3af5:	aa 0b                         	mov.l	36[r0], r3
    3af7:	ef a1                         	mov.l	r10, r1
    3af9:	a4 85                         	mov.l	r5, 72[r0]
    3afb:	e7 0f 11                      	mov.l	r15, 68[r0]
    3afe:	05 52 14 00                   	bsr.a	4f50 <___pow5mult>

00003b02 <.LVL332>:
    3b02:	a2 89                         	mov.l	r1, 44[r0]

00003b04 <.LVL333>:
    3b04:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3b0b:	ed 0f 11                      	mov.l	68[r0], r15
    3b0e:	ac 85                         	mov.l	72[r0], r5
    3b10:	38 a0 fb                      	bra.w	36b0 <.LM286>

00003b13 <.LM442>:
    3b13:	68 17                         	shlr	#1, r7

00003b15 <.LVL335>:
    3b15:	64 1e                         	and	#1, r14

00003b17 <.LVL336>:
    3b17:	57 7e                         	or	r7, r14
    3b19:	fc 47 e7                      	itof	r14, r7
    3b1c:	fc 8b 77                      	fadd	r7, r7
    3b1f:	38 11 f7                      	bra.w	3230 <.LM112>

00003b22 <.LM443>:
    3b22:	3e 0a 00                      	mov.l	#0, 40[r0]
    3b25:	38 2b fd                      	bra.w	3850 <.LM347>

00003b28 <.LM444>:
    3b28:	3e 0a 01                      	mov.l	#1, 40[r0]
    3b2b:	38 bd f7                      	bra.w	32e8 <.LM134>

00003b2e <.LM445>:
    3b2e:	ed 0d 09                      	mov.l	36[r0], r13
    3b31:	a2 0e                         	mov.l	r6, 36[r0]
    3b33:	ff 0b d6                      	sub	r13, r6, r11

00003b36 <.LVL339>:
    3b36:	06 89 0b 0c                   	add	48[r0].l, r11

00003b3a <.LVL340>:
    3b3a:	e7 0b 0c                      	mov.l	r11, 48[r0]

00003b3d <.LM446>:
    3b3d:	66 06                         	mov.l	#0, r6

00003b3f <.LVL342>:
    3b3f:	38 8d fa                      	bra.w	35cc <.LM245>

00003b42 <.LM447>:
    3b42:	ef b2                         	mov.l	r11, r2

00003b44 <.LM448>:
    3b44:	66 24                         	mov.l	#2, r4
    3b46:	38 2e f8                      	bra.w	3374 <.LM157>

00003b49 <.LM449>:
    3b49:	66 19                         	mov.l	#1, r9

00003b4b <.LM450>:
    3b4b:	e7 09 0f                      	mov.l	r9, 60[r0]
    3b4e:	ef 97                         	mov.l	r9, r7
    3b50:	e7 09 04                      	mov.l	r9, 16[r0]
    3b53:	38 15 fd                      	bra.w	3868 <.LM349>

00003b56 <.LVL345>:
    3b56:	e7 0b 0b                      	mov.l	r11, 44[r0]

00003b59 <.LM451>:
    3b59:	61 03                         	cmp	#0, r3
    3b5b:	ef 6b                         	mov.l	r6, r11

00003b5d <.LVL346>:
    3b5d:	ef 84                         	mov.l	r8, r4
    3b5f:	a9 06                         	mov.l	16[r0], r6

00003b61 <.LVL347>:
    3b61:	ed 08 0c                      	mov.l	48[r0], r8

00003b64 <.LM452>:
    3b64:	ef ed                         	mov.l	r14, r13

00003b66 <.LM453>:
    3b66:	2a 05                         	bgt.b	3b6b <.LM454>
    3b68:	38 91 fe                      	bra.w	39f9 <.LM415>

00003b6b <.LM454>:
    3b6b:	aa 8a                         	mov.l	44[r0], r2
    3b6d:	66 13                         	mov.l	#1, r3
    3b6f:	ef a1                         	mov.l	r10, r1
    3b71:	a4 0c                         	mov.l	r4, 68[r0]
    3b73:	e7 0e 13                      	mov.l	r14, 76[r0]
    3b76:	05 7a 14 00                   	bsr.a	4ff0 <___lshift>

00003b7a <.LM455>:
    3b7a:	a9 8b                         	mov.l	28[r0], r3
    3b7c:	ef b2                         	mov.l	r11, r2

00003b7e <.LM456>:
    3b7e:	a2 89                         	mov.l	r1, 44[r0]

00003b80 <.LM457>:
    3b80:	7f 13                         	jsr	r3

00003b82 <.LM458>:
    3b82:	61 01                         	cmp	#0, r1
    3b84:	ac 0c                         	mov.l	68[r0], r4
    3b86:	ed 0e 13                      	mov.l	76[r0], r14
    3b89:	2a 05                         	bgt.b	3b8e <.Ldebug_abbrev0+0x3>
    3b8b:	38 e7 01                      	bra.w	3d72 <.LM526>
    3b8e:	ef 00                         	nop

00003b90 <.LM459>:
    3b90:	71 6e 31                      	add	#49, r6, r14

00003b93 <.LVL352>:
    3b93:	75 5d 39                      	cmp	#57, r13
    3b96:	3b 63 fe                      	bne.w	39f9 <.LM415>

00003b99 <.L133>:
    3b99:	ef 46                         	mov.l	r4, r6
    3b9b:	75 44 39                      	mov.l	#57, r4
    3b9e:	fd 20 64                      	mov.b	r4, [r6+]

00003ba1 <.LM461>:
    3ba1:	ef cd                         	mov.l	r12, r13
    3ba3:	cf 4e                         	mov.b	r4, r14
    3ba5:	38 2d fc                      	bra.w	37d2 <.LM322>

00003ba8 <.LM462>:
    3ba8:	aa 8a                         	mov.l	44[r0], r2
    3baa:	ef a1                         	mov.l	r10, r1
    3bac:	a4 85                         	mov.l	r5, 72[r0]
    3bae:	e7 0f 11                      	mov.l	r15, 68[r0]
    3bb1:	05 9f 13 00                   	bsr.a	4f50 <___pow5mult>

00003bb5 <.LVL356>:
    3bb5:	a2 89                         	mov.l	r1, 44[r0]

00003bb7 <.LVL357>:
    3bb7:	ac 85                         	mov.l	72[r0], r5
    3bb9:	ed 0f 11                      	mov.l	68[r0], r15
    3bbc:	38 f4 fa                      	bra.w	36b0 <.LM286>

00003bbf <.LM463>:
    3bbf:	19                            	bne.s	3bc8 <.LM463+0x9>
    3bc0:	fd 74 ce 01                   	tst	#1, r14
    3bc4:	3b 04 fc                      	bne.w	37c8 <.L142>
    3bc7:	03                            	nop
    3bc8:	ef 6c                         	mov.l	r6, r12

00003bca <.LVL359>:
    3bca:	ef c6                         	mov.l	r12, r6

00003bcc <.LM464>:
    3bcc:	fd 3c ce                      	movu.b	[-r12], r14

00003bcf <.LVL361>:
    3bcf:	75 5e 30                      	cmp	#48, r14
    3bd2:	20 f8                         	beq.b	3bca <.LVL359>
    3bd4:	38 1c fc                      	bra.w	37f0 <.L135>

00003bd7 <.LM465>:
    3bd7:	ed 0d 05                      	mov.l	20[r0], r13
    3bda:	7e 1d                         	neg	r13

00003bdc <.LVL363>:
    3bdc:	3a 25 01                      	beq.w	3d01 <.LM511>

00003bdf <.LM466>:
    3bdf:	ef de                         	mov.l	r13, r14

00003be1 <.LVL364>:
    3be1:	64 fe                         	and	#15, r14
    3be3:	6c 2e                         	shll	#2, r14
    3be5:	70 ee 00 7a 00 00             	add	#0x7a00, r14, r14
    3beb:	ef b2                         	mov.l	r11, r2

00003bed <.LM467>:
    3bed:	6a 4d                         	shar	#4, r13

00003bef <.LM468>:
    3bef:	fc 8c e2                      	fmul	[r14].l, r2

00003bf2 <.LM469>:
    3bf2:	61 0d                         	cmp	#0, r13
    3bf4:	3a 9c 01                      	beq.w	3d90 <.LM528>
    3bf7:	fb e2 f8 79 00 00             	mov.l	#0x79f8, r14

00003bfd <.LM470>:
    3bfd:	66 24                         	mov.l	#2, r4

00003bff <.LVL367>:
    3bff:	03                            	nop

00003c00 <.LM471>:
    3c00:	fd 74 cd 01                   	tst	#1, r13
    3c04:	16                            	beq.s	3c0a <.LM474>

00003c05 <.LM472>:
    3c05:	fc 8c e2                      	fmul	[r14].l, r2

00003c08 <.LM473>:
    3c08:	62 14                         	add	#1, r4

00003c0a <.LM474>:
    3c0a:	6a 1d                         	shar	#1, r13
    3c0c:	62 4e                         	add	#4, r14
    3c0e:	61 0d                         	cmp	#0, r13
    3c10:	21 f0                         	bne.b	3c00 <.LM471>
    3c12:	38 86 f7                      	bra.w	3398 <.LM163>

00003c15 <.LM475>:
    3c15:	ed d2 01                      	mov.l	4[r13], r2
    3c18:	ed 0c 0d                      	mov.l	52[r0], r12

00003c1b <.LVL372>:
    3c1b:	ef a1                         	mov.l	r10, r1
    3c1d:	7f 1c                         	jsr	r12

00003c1f <.LM476>:
    3c1f:	ed d3 04                      	mov.l	16[r13], r3

00003c22 <.LM477>:
    3c22:	ef 1c                         	mov.l	r1, r12

00003c24 <.LM478>:
    3c24:	62 23                         	add	#2, r3
    3c26:	6c 23                         	shll	#2, r3
    3c28:	71 d2 0c                      	add	#12, r13, r2
    3c2b:	62 c1                         	add	#12, r1

00003c2d <.LVL375>:
    3c2d:	05 6a 0f 00                   	bsr.a	4b97 <_memcpy>

00003c31 <.LM479>:
    3c31:	ef c2                         	mov.l	r12, r2
    3c33:	ef a1                         	mov.l	r10, r1
    3c35:	66 13                         	mov.l	#1, r3
    3c37:	05 b9 13 00                   	bsr.a	4ff0 <___lshift>

00003c3b <.LVL377>:
    3c3b:	ef 1c                         	mov.l	r1, r12

00003c3d <.LVL378>:
    3c3d:	38 c5 fc                      	bra.w	3902 <.LM373>

00003c40 <.LM480>:
    3c40:	62 1e                         	add	#1, r14
    3c42:	c3 ce                         	mov.b	r14, [r12]

00003c44 <.LVL380>:
    3c44:	38 ac fb                      	bra.w	37f0 <.L135>

00003c47 <.LM481>:
    3c47:	71 9e ff                      	add	#-1, r9, r14
    3c4a:	6c 2e                         	shll	#2, r14

00003c4c <.LM482>:
    3c4c:	fc 97 2d                      	ftoi	r2, r13

00003c4f <.LM483>:
    3c4f:	70 ee 00 7a 00 00             	add	#0x7a00, r14, r14

00003c55 <.LM484>:
    3c55:	71 d4 30                      	add	#48, r13, r4

00003c58 <.LM485>:
    3c58:	fc 8c e1                      	fmul	[r14].l, r1

00003c5b <.LM486>:
    3c5b:	fc 47 dd                      	itof	r13, r13

00003c5e <.LVL383>:
    3c5e:	ef 2e                         	mov.l	r2, r14

00003c60 <.LM487>:
    3c60:	ef 86                         	mov.l	r8, r6

00003c62 <.LM488>:
    3c62:	fc 83 de                      	fsub	r13, r14

00003c65 <.LM489>:
    3c65:	fd 20 64                      	mov.b	r4, [r6+]

00003c68 <.LM490>:
    3c68:	61 19                         	cmp	#1, r9
    3c6a:	20 26                         	beq.b	3c90 <.LM501>

00003c6c <.LM491>:
    3c6c:	ff 22 98                      	add	r9, r8, r2

00003c6f <.LM492>:
    3c6f:	ef 6d                         	mov.l	r6, r13

00003c71 <.LM493>:
    3c71:	fd 72 3e 00 00 20 41          	fmul	#0x41200000, r14

00003c78 <.LM494>:
    3c78:	fc 97 e4                      	ftoi	r14, r4

00003c7b <.LM495>:
    3c7b:	71 43 30                      	add	#48, r4, r3

00003c7e <.LM496>:
    3c7e:	fc 47 44                      	itof	r4, r4

00003c81 <.LM497>:
    3c81:	fd 20 d3                      	mov.b	r3, [r13+]

00003c84 <.LM498>:
    3c84:	fc 83 4e                      	fsub	r4, r14

00003c87 <.LM499>:
    3c87:	47 2d                         	cmp	r2, r13
    3c89:	21 e8                         	bne.b	3c71 <.LM493>

00003c8b <.LM500>:
    3c8b:	60 19                         	sub	#1, r9

00003c8d <.LVL393>:
    3c8d:	4b 96                         	add	r9, r6

00003c8f <.LVL394>:
    3c8f:	03                            	nop

00003c90 <.LM501>:
    3c90:	ef 1d                         	mov.l	r1, r13
    3c92:	fd 72 2d 00 00 00 3f          	fadd	#0x3f000000, r13
    3c99:	fc 87 ed                      	fcmp	r14, r13
    3c9c:	27 05                         	bn.b	3ca1 <.LLST30+0xb>
    3c9e:	38 a2 00                      	bra.w	3d40 <.LM522>
    3ca1:	ed 0e 10                      	mov.l	64[r0], r14

00003ca4 <.LVL395>:
    3ca4:	71 67 ff                      	add	#-1, r6, r7

00003ca7 <.LVL396>:
    3ca7:	cc 73                         	mov.b	[r7], r3
    3ca9:	e7 0e 05                      	mov.l	r14, 20[r0]
    3cac:	38 ce f8                      	bra.w	357a <.LM230>

00003caf <.LM502>:
    3caf:	66 0b                         	mov.l	#0, r11

00003cb1 <.LVL398>:
    3cb1:	ef bd                         	mov.l	r11, r13
    3cb3:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3cba:	38 e6 fd                      	bra.w	3aa0 <.L79>

00003cbd <.LVL399>:
    3cbd:	e7 0b 0b                      	mov.l	r11, 44[r0]

00003cc0 <.LM503>:
    3cc0:	75 5e 39                      	cmp	#57, r14
    3cc3:	ef 84                         	mov.l	r8, r4
    3cc5:	ef 6b                         	mov.l	r6, r11

00003cc7 <.LVL400>:
    3cc7:	ed 08 0c                      	mov.l	48[r0], r8

00003cca <.LVL401>:
    3cca:	3a cf fe                      	beq.w	3b99 <.L133>

00003ccd <.LM504>:
    3ccd:	62 1e                         	add	#1, r14
    3ccf:	38 2a fd                      	bra.w	39f9 <.LM415>

00003cd2 <.LVL402>:
    3cd2:	e7 0b 0b                      	mov.l	r11, 44[r0]
    3cd5:	ed 08 0c                      	mov.l	48[r0], r8
    3cd8:	ef 6b                         	mov.l	r6, r11

00003cda <.LVL403>:
    3cda:	ef d6                         	mov.l	r13, r6

00003cdc <.LM505>:
    3cdc:	ef cd                         	mov.l	r12, r13

00003cde <.LVL405>:
    3cde:	38 ca fa                      	bra.w	37a8 <.LM317>

00003ce1 <.LM506>:
    3ce1:	43 79                         	sub	r7, r9

00003ce3 <.LM507>:
    3ce3:	66 0d                         	mov.l	#0, r13
    3ce5:	38 f3 f8                      	bra.w	35d8 <.LM248>

00003ce8 <.LVL408>:
    3ce8:	62 13                         	add	#1, r3
    3cea:	38 b6 f8                      	bra.w	35a0 <.LM238>

00003ced <.LM508>:
    3ced:	ef 5c                         	mov.l	r5, r12
    3cef:	38 f9 f9                      	bra.w	36e8 <.LM293>

00003cf2 <.LM509>:
    3cf2:	75 4d 19                      	mov.l	#25, r13
    3cf5:	06 81 0d 01                   	sub	4[r0].l, r13
    3cf9:	aa 0e                         	mov.l	36[r0], r6

00003cfb <.LM510>:
    3cfb:	ed 09 07                      	mov.l	28[r0], r9
    3cfe:	38 da f8                      	bra.w	35d8 <.LM248>

00003d01 <.LM511>:
    3d01:	ef b2                         	mov.l	r11, r2

00003d03 <.LM512>:
    3d03:	66 24                         	mov.l	#2, r4
    3d05:	38 93 f6                      	bra.w	3398 <.LM163>

00003d08 <.LM513>:
    3d08:	61 07                         	cmp	#0, r7
    3d0a:	3a a9 fd                      	beq.w	3ab3 <.LM435>

00003d0d <.LM514>:
    3d0d:	ed 0e 0f                      	mov.l	60[r0], r14
    3d10:	61 0e                         	cmp	#0, r14
    3d12:	2a 05                         	bgt.b	3d17 <.LM515>
    3d14:	38 c0 f7                      	bra.w	34d4 <.LM208>

00003d17 <.LM515>:
    3d17:	62 14                         	add	#1, r4

00003d19 <.LM516>:
    3d19:	fd 72 32 00 00 20 41          	fmul	#0x41200000, r2

00003d20 <.LM517>:
    3d20:	fc 47 41                      	itof	r4, r1

00003d23 <.LM518>:
    3d23:	ed 0d 05                      	mov.l	20[r0], r13

00003d26 <.LM519>:
    3d26:	fc 8f 21                      	fmul	r2, r1
    3d29:	fd 72 21 00 00 e0 40          	fadd	#0x40e00000, r1

00003d30 <.LM520>:
    3d30:	60 1d                         	sub	#1, r13
    3d32:	e7 0d 10                      	mov.l	r13, 64[r0]

00003d35 <.LM521>:
    3d35:	70 11 00 00 80 f4             	add	#0xf4800000, r1, r1

00003d3b <.LVL418>:
    3d3b:	ef e9                         	mov.l	r14, r9
    3d3d:	38 8e f6                      	bra.w	33cb <.LM168>

00003d40 <.LM522>:
    3d40:	fb d2 00 00 00 3f             	mov.l	#0x3f000000, r13
    3d46:	fc 83 1d                      	fsub	r1, r13
    3d49:	fc 87 de                      	fcmp	r13, r14
    3d4c:	27 05                         	bn.b	3d51 <.LM522+0x11>
    3d4e:	38 86 f7                      	bra.w	34d4 <.LM208>
    3d51:	ef 67                         	mov.l	r6, r7

00003d53 <.LVL420>:
    3d53:	ef 76                         	mov.l	r7, r6

00003d55 <.LM523>:
    3d55:	fd 3c 7b                      	movu.b	[-r7], r11

00003d58 <.LVL422>:
    3d58:	75 5b 30                      	cmp	#48, r11
    3d5b:	20 f8                         	beq.b	3d53 <.LVL420>

00003d5d <.LM524>:
    3d5d:	ac 03                         	mov.l	64[r0], r3
    3d5f:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3d66:	a1 0b                         	mov.l	r3, 20[r0]
    3d68:	38 b0 fa                      	bra.w	3818 <.L82>

00003d6b <.L83>:
    3d6b:	ac 04                         	mov.l	64[r0], r4

00003d6d <.LVL424>:
    3d6d:	a1 0c                         	mov.l	r4, 20[r0]
    3d6f:	38 0b f8                      	bra.w	357a <.LM230>

00003d72 <.LM526>:
    3d72:	3b 87 fc                      	bne.w	39f9 <.LM415>
    3d75:	fd 74 ce 01                   	tst	#1, r14
    3d79:	3a 80 fc                      	beq.w	39f9 <.LM415>
    3d7c:	38 14 fe                      	bra.w	3b90 <.LM459>

00003d7f <.LM527>:
    3d7f:	ef d2                         	mov.l	r13, r2
    3d81:	ef a1                         	mov.l	r10, r1

00003d83 <.LVL427>:
    3d83:	66 a3                         	mov.l	#10, r3
    3d85:	66 04                         	mov.l	#0, r4
    3d87:	7f 17                         	jsr	r7

00003d89 <.LVL428>:
    3d89:	ef 1d                         	mov.l	r1, r13

00003d8b <.LVL429>:
    3d8b:	ab 8f                         	mov.l	60[r0], r7
    3d8d:	38 bd f9                      	bra.w	374a <.LM307>

00003d90 <.LM528>:
    3d90:	66 24                         	mov.l	#2, r4
    3d92:	38 06 f6                      	bra.w	3398 <.LM163>

00003d95 <.LM529>:
    3d95:	ed 0e 10                      	mov.l	64[r0], r14
    3d98:	e7 0e 05                      	mov.l	r14, 20[r0]
    3d9b:	38 df f7                      	bra.w	357a <.LM230>

00003d9e <.LM530>:
    3d9e:	ed 0d 10                      	mov.l	64[r0], r13

00003da1 <.LVL432>:
    3da1:	f9 02 08 00 4c 00 00          	mov.l	#0x4c00, 32[r0]
    3da8:	e7 0d 05                      	mov.l	r13, 20[r0]
    3dab:	38 6d fa                      	bra.w	3818 <.L82>

00003dae <.LM531>:
    3dae:	3a 6c f9                      	beq.w	371a <.LM302>
    3db1:	75 44 3c                      	mov.l	#60, r4

00003db4 <.LVL434>:
    3db4:	ff 0e e4                      	sub	r14, r4, r14

00003db7 <.LVL435>:
    3db7:	38 59 f9                      	bra.w	3710 <.LM298>

00003dba <.LM532>:
    3dba:	66 02                         	mov.l	#0, r2
    3dbc:	38 5d f5                      	bra.w	3319 <.LM139>

00003dbf <.LM533>:
    3dbf:	66 16                         	mov.l	#1, r6
    3dc1:	38 0f f5                      	bra.w	32d0 <.LM132>

00003dc4 <.LFE1>:
    3dc4:	76 10 01 00                   	mul	#1, r0

00003dc8 <___sflush_r>:
    3dc8:	6e 7d                         	pushm	r7-r13

00003dca <.LCFI0>:
    3dca:	dd 2e 06                      	mov.w	12[r2], r14

00003dcd <.LM3>:
    3dcd:	ef 2a                         	mov.l	r2, r10

00003dcf <.LM4>:
    3dcf:	ef e7                         	mov.l	r14, r7
    3dd1:	64 87                         	and	#8, r7
    3dd3:	df 77                         	mov.w	r7, r7
    3dd5:	61 07                         	cmp	#0, r7

00003dd7 <.LM5>:
    3dd7:	ef 1c                         	mov.l	r1, r12

00003dd9 <.LM6>:
    3dd9:	21 7b                         	bne.b	3e54 <.LBE2>

00003ddb <.LM7>:
    3ddb:	ef e7                         	mov.l	r14, r7

00003ddd <.LM8>:
    3ddd:	a8 2c                         	mov.l	4[r2], r4

00003ddf <.LM9>:
    3ddf:	76 37 00 08                   	or	#0x800, r7
    3de3:	d7 a7 06                      	mov.w	r7, 12[r10]

00003de6 <.LM10>:
    3de6:	61 04                         	cmp	#0, r4

00003de8 <.LM11>:
    3de8:	df 7b                         	mov.w	r7, r11

00003dea <.LM12>:
    3dea:	2a 05                         	bgt.b	3def <.LM12+0x5>
    3dec:	38 fb 00                      	bra.w	3ee7 <.LM69>
    3def:	03                            	nop

00003df0 <.LM13>:
    3df0:	ed a7 0a                      	mov.l	40[r10], r7
    3df3:	61 07                         	cmp	#0, r7
    3df5:	3a e8 00                      	beq.w	3edd <.LM66>

00003df8 <.LBB2>:
    3df8:	76 2e 00 10                   	and	#0x1000, r14

00003dfc <.LVL2>:
    3dfc:	df e3                         	mov.w	r14, r3

00003dfe <.LM15>:
    3dfe:	ec cd                         	mov.l	[r12], r13

00003e00 <.LM16>:
    3e00:	61 03                         	cmp	#0, r3

00003e02 <.LM17>:
    3e02:	f8 c6 00                      	mov.l	#0, [r12]

00003e05 <.LM18>:
    3e05:	3a ef 00                      	beq.w	3ef4 <.LM71>

00003e08 <.LM19>:
    3e08:	ed a3 14                      	mov.l	80[r10], r3

00003e0b <.LM20>:
    3e0b:	64 4b                         	and	#4, r11
    3e0d:	df bb                         	mov.w	r11, r11
    3e0f:	61 0b                         	cmp	#0, r11
    3e11:	20 10                         	beq.b	3e21 <.LM25>

00003e13 <.LM21>:
    3e13:	ed ab 0c                      	mov.l	48[r10], r11

00003e16 <.LM22>:
    3e16:	06 81 a3 01                   	sub	4[r10].l, r3

00003e1a <.LM23>:
    3e1a:	61 0b                         	cmp	#0, r11
    3e1c:	15                            	beq.s	3e21 <.LM25>

00003e1d <.LM24>:
    3e1d:	06 81 a3 0f                   	sub	60[r10].l, r3

00003e21 <.LM25>:
    3e21:	ed a2 07                      	mov.l	28[r10], r2
    3e24:	ef c1                         	mov.l	r12, r1
    3e26:	66 04                         	mov.l	#0, r4
    3e28:	7f 17                         	jsr	r7

00003e2a <.LM26>:
    3e2a:	75 01 ff                      	cmp	#-1, r1
    3e2d:	3a e4 00                      	beq.w	3f11 <.LM75>

00003e30 <.LM27>:
    3e30:	dd a7 06                      	mov.w	12[r10], r7

00003e33 <.LM28>:
    3e33:	f9 a6 01 00                   	mov.l	#0, 4[r10]

00003e37 <.LM29>:
    3e37:	ef 7b                         	mov.l	r7, r11
    3e39:	76 2b ff f7                   	and	#0xfffff7ff, r11

00003e3d <.LM30>:
    3e3d:	76 27 00 10                   	and	#0x1000, r7

00003e41 <.LM31>:
    3e41:	d7 ab 06                      	mov.w	r11, 12[r10]

00003e44 <.LM32>:
    3e44:	ed ab 04                      	mov.l	16[r10], r11

00003e47 <.LM33>:
    3e47:	df 77                         	mov.w	r7, r7

00003e49 <.LM34>:
    3e49:	e3 ab                         	mov.l	r11, [r10]

00003e4b <.LM35>:
    3e4b:	61 07                         	cmp	#0, r7
    3e4d:	20 77                         	beq.b	3ec4 <.LM60>

00003e4f <.LM36>:
    3e4f:	e7 a1 14                      	mov.l	r1, 80[r10]
    3e52:	2e 72                         	bra.b	3ec4 <.LM60>

00003e54 <.LBE2>:
    3e54:	ed 2b 04                      	mov.l	16[r2], r11

00003e57 <.LVL9>:
    3e57:	61 0b                         	cmp	#0, r11
    3e59:	3a 84 00                      	beq.w	3edd <.LM66>

00003e5c <.LM38>:
    3e5c:	ec 27                         	mov.l	[r2], r7

00003e5e <.LM39>:
    3e5e:	e3 2b                         	mov.l	r11, [r2]

00003e60 <.LM40>:
    3e60:	43 b7                         	sub	r11, r7

00003e62 <.LM41>:
    3e62:	fd 74 ce 03                   	tst	#3, r14
    3e66:	21 7d                         	bne.b	3ee3 <.LM68>

00003e68 <.LM42>:
    3e68:	ed 2e 05                      	mov.l	20[r2], r14

00003e6b <.LVL11>:
    3e6b:	77 10 01 00 00                	mul	#1, r0

00003e70 <.LM43>:
    3e70:	e7 ae 02                      	mov.l	r14, 8[r10]

00003e73 <.LM44>:
    3e73:	61 07                         	cmp	#0, r7
    3e75:	2a 0b                         	bgt.b	3e80 <.LM47>
    3e77:	2e 66                         	bra.b	3edd <.LM66>

00003e79 <.LM45>:
    3e79:	4b 1b                         	add	r1, r11

00003e7b <.LM46>:
    3e7b:	61 07                         	cmp	#0, r7
    3e7d:	2b 60                         	ble.b	3edd <.LM66>

00003e7f <.LVL14>:
    3e7f:	03                            	nop

00003e80 <.LM47>:
    3e80:	ed ae 09                      	mov.l	36[r10], r14
    3e83:	ed a2 07                      	mov.l	28[r10], r2
    3e86:	ef 74                         	mov.l	r7, r4
    3e88:	ef b3                         	mov.l	r11, r3
    3e8a:	ef c1                         	mov.l	r12, r1
    3e8c:	7f 1e                         	jsr	r14

00003e8e <.LM48>:
    3e8e:	43 17                         	sub	r1, r7

00003e90 <.LM49>:
    3e90:	61 01                         	cmp	#0, r1
    3e92:	2a e7                         	bgt.b	3e79 <.LM45>

00003e94 <.LVL17>:
    3e94:	76 10 01 00                   	mul	#1, r0

00003e98 <.LM50>:
    3e98:	dd a7 06                      	mov.w	12[r10], r7

00003e9b <.LM51>:
    3e9b:	fb 16 ff                      	mov.l	#-1, r1

00003e9e <.LM52>:
    3e9e:	75 37 40                      	or	#64, r7
    3ea1:	d7 a7 06                      	mov.w	r7, 12[r10]

00003ea4 <.LM53>:
    3ea4:	3f 7d 07                      	rtsd	#28, r7-r13

00003ea7 <.LBB4>:
    3ea7:	75 57 1d                      	cmp	#29, r7
    3eaa:	17                            	beq.s	3eb1 <.LM56>

00003eab <.LM55>:
    3eab:	75 57 16                      	cmp	#22, r7
    3eae:	3b 99 00                      	bne.w	3f47 <.LBB6>

00003eb1 <.LM56>:
    3eb1:	dd a7 06                      	mov.w	12[r10], r7

00003eb4 <.LM57>:
    3eb4:	f9 a6 01 00                   	mov.l	#0, 4[r10]

00003eb8 <.LM58>:
    3eb8:	76 27 ff f7                   	and	#0xfffff7ff, r7
    3ebc:	d7 a7 06                      	mov.w	r7, 12[r10]

00003ebf <.LM59>:
    3ebf:	ed a7 04                      	mov.l	16[r10], r7
    3ec2:	e3 a7                         	mov.l	r7, [r10]

00003ec4 <.LM60>:
    3ec4:	ed a2 0c                      	mov.l	48[r10], r2

00003ec7 <.LM61>:
    3ec7:	e3 cd                         	mov.l	r13, [r12]

00003ec9 <.LM62>:
    3ec9:	61 02                         	cmp	#0, r2
    3ecb:	20 12                         	beq.b	3edd <.LM66>

00003ecd <.LM63>:
    3ecd:	71 a7 40                      	add	#64, r10, r7
    3ed0:	47 72                         	cmp	r7, r2
    3ed2:	17                            	beq.s	3ed9 <.LM65>

00003ed3 <.LM64>:
    3ed3:	ef c1                         	mov.l	r12, r1

00003ed5 <.LVL19>:
    3ed5:	05 2b 03 00                   	bsr.a	4200 <__free_r>

00003ed9 <.LM65>:
    3ed9:	f9 a6 0c 00                   	mov.l	#0, 48[r10]

00003edd <.LM66>:
    3edd:	66 01                         	mov.l	#0, r1
    3edf:	03                            	nop

00003ee0 <.LBE4>:
    3ee0:	3f 7d 07                      	rtsd	#28, r7-r13

00003ee3 <.LM68>:
    3ee3:	66 0e                         	mov.l	#0, r14

00003ee5 <.LVL23>:
    3ee5:	2e 8b                         	bra.b	3e70 <.LM43>

00003ee7 <.LM69>:
    3ee7:	ab af                         	mov.l	60[r2], r7
    3ee9:	61 07                         	cmp	#0, r7
    3eeb:	2b 05                         	ble.b	3ef0 <.LBB5>
    3eed:	38 03 ff                      	bra.w	3df0 <.LM13>

00003ef0 <.LBB5>:
    3ef0:	66 01                         	mov.l	#0, r1

00003ef2 <.LVL25>:
    3ef2:	2e ee                         	bra.b	3ee0 <.LBE4>

00003ef4 <.LM71>:
    3ef4:	ed a2 07                      	mov.l	28[r10], r2

00003ef7 <.LVL27>:
    3ef7:	ef c1                         	mov.l	r12, r1

00003ef9 <.LVL28>:
    3ef9:	66 14                         	mov.l	#1, r4
    3efb:	7f 17                         	jsr	r7

00003efd <.LM72>:
    3efd:	75 01 ff                      	cmp	#-1, r1

00003f00 <.LM73>:
    3f00:	ef 13                         	mov.l	r1, r3

00003f02 <.LM74>:
    3f02:	20 2d                         	beq.b	3f2f <.LM81>
    3f04:	76 10 01 00                   	mul	#1, r0
    3f08:	dd ab 06                      	mov.w	12[r10], r11
    3f0b:	ed a7 0a                      	mov.l	40[r10], r7
    3f0e:	38 fd fe                      	bra.w	3e0b <.LM20>

00003f11 <.LM75>:
    3f11:	ec c7                         	mov.l	[r12], r7
    3f13:	61 07                         	cmp	#0, r7
    3f15:	21 92                         	bne.b	3ea7 <.LBB4>

00003f17 <.LM76>:
    3f17:	dd ab 06                      	mov.w	12[r10], r11

00003f1a <.LM77>:
    3f1a:	e7 a7 01                      	mov.l	r7, 4[r10]

00003f1d <.LM78>:
    3f1d:	ef be                         	mov.l	r11, r14
    3f1f:	76 2e ff f7                   	and	#0xfffff7ff, r14

00003f23 <.LM79>:
    3f23:	ef b7                         	mov.l	r11, r7
    3f25:	76 27 00 10                   	and	#0x1000, r7

00003f29 <.LM80>:
    3f29:	d7 ae 06                      	mov.w	r14, 12[r10]
    3f2c:	38 18 ff                      	bra.w	3e44 <.LM32>

00003f2f <.LM81>:
    3f2f:	ec c7                         	mov.l	[r12], r7
    3f31:	61 07                         	cmp	#0, r7
    3f33:	20 d5                         	beq.b	3f08 <.LM74+0x6>

00003f35 <.LBB3>:
    3f35:	75 57 1d                      	cmp	#29, r7
    3f38:	10                            	beq.s	3f40 <.LM84>

00003f39 <.LM83>:
    3f39:	75 57 16                      	cmp	#22, r7
    3f3c:	3b 5c ff                      	bne.w	3e98 <.LM50>
    3f3f:	03                            	nop

00003f40 <.LM84>:
    3f40:	e3 cd                         	mov.l	r13, [r12]

00003f42 <.LM85>:
    3f42:	66 01                         	mov.l	#0, r1

00003f44 <.LBE3>:
    3f44:	3f 7d 07                      	rtsd	#28, r7-r13

00003f47 <.LBB6>:
    3f47:	dd a7 06                      	mov.w	12[r10], r7
    3f4a:	75 37 40                      	or	#64, r7
    3f4d:	d7 a7 06                      	mov.w	r7, 12[r10]

00003f50 <.LBE6>:
    3f50:	3f 7d 07                      	rtsd	#28, r7-r13

00003f53 <.LFE0>:
    3f53:	77 10 01 00 00                	mul	#1, r0

00003f58 <__fflush_r>:
    3f58:	7e a7                         	push.l	r7

00003f5a <.LCFI1>:
    3f5a:	60 40                         	sub	#4, r0

00003f5c <.LCFI2>:
    3f5c:	71 17 00                      	add	#0, r1, r7
    3f5f:	11                            	beq.s	3f68 <.LM92>

00003f60 <.LM91>:
    3f60:	ed 7e 0e                      	mov.l	56[r7], r14
    3f63:	61 0e                         	cmp	#0, r14
    3f65:	20 15                         	beq.b	3f7a <.LM97>
    3f67:	03                            	nop

00003f68 <.LM92>:
    3f68:	99 a1                         	mov.w	12[r2], r1
    3f6a:	61 01                         	cmp	#0, r1
    3f6c:	1c                            	bne.s	3f70 <.LM93+0x3>

00003f6d <.LM93>:
    3f6d:	3f 77 02                      	rtsd	#8, r7-r7
    3f70:	62 40                         	add	#4, r0

00003f72 <.LM94>:
    3f72:	ef 71                         	mov.l	r7, r1

00003f74 <.LM95>:
    3f74:	7e b7                         	pop	r7

00003f76 <.LM96>:
    3f76:	04 52 fe ff                   	bra.a	3dc8 <___sflush_r>

00003f7a <.LM97>:
    3f7a:	e3 02                         	mov.l	r2, [r0]
    3f7c:	05 c8 00 00                   	bsr.a	4044 <___sinit>
    3f80:	ec 02                         	mov.l	[r0], r2
    3f82:	2e e6                         	bra.b	3f68 <.LM92>

00003f84 <.LFE1>:
    3f84:	76 10 01 00                   	mul	#1, r0

00003f88 <_fflush>:
    3f88:	71 12 00                      	add	#0, r1, r2
    3f8b:	20 0e                         	beq.b	3f99 <.LM101>

00003f8d <.LM100>:
    3f8d:	fb e2 00 80 00 00             	mov.l	#0x8000, r14
    3f93:	ec e1                         	mov.l	[r14], r1

00003f95 <.LVL36>:
    3f95:	04 c3 ff ff                   	bra.a	3f58 <__fflush_r>

00003f99 <.LM101>:
    3f99:	fb e2 10 78 00 00             	mov.l	#0x7810, r14
    3f9f:	ec e1                         	mov.l	[r14], r1

00003fa1 <.LVL38>:
    3fa1:	fb 22 58 3f 00 00             	mov.l	#0x3f58, r2

00003fa7 <.LVL39>:
    3fa7:	04 69 04 00                   	bra.a	4410 <__fwalk_reent>

00003fab <___fp_lock>:
    3fab:	66 01                         	mov.l	#0, r1

00003fad <.LVL1>:
    3fad:	02                            	rts

00003fae <___fp_unlock>:
    3fae:	66 01                         	mov.l	#0, r1

00003fb0 <.LVL3>:
    3fb0:	02                            	rts

00003fb1 <__cleanup_r>:
    3fb1:	fb 22 d0 63 00 00             	mov.l	#0x63d0, r2
    3fb7:	04 01 04 00                   	bra.a	43b8 <__fwalk>

00003fbb <_std.isra.0>:
    3fbb:	7e a7                         	push.l	r7

00003fbd <.LCFI0>:
    3fbd:	91 92                         	mov.w	r2, 12[r1]

00003fbf <.LM9>:
    3fbf:	ef 17                         	mov.l	r1, r7

00003fc1 <.LM10>:
    3fc1:	91 9b                         	mov.w	r3, 14[r1]

00003fc3 <.LM11>:
    3fc3:	3e 10 00                      	mov.l	#0, [r1]

00003fc6 <.LM12>:
    3fc6:	3e 11 00                      	mov.l	#0, 4[r1]

00003fc9 <.LM13>:
    3fc9:	3e 12 00                      	mov.l	#0, 8[r1]

00003fcc <.LM14>:
    3fcc:	3e 99 00                      	mov.l	#0, 100[r1]

00003fcf <.LM15>:
    3fcf:	3e 14 00                      	mov.l	#0, 16[r1]

00003fd2 <.LM16>:
    3fd2:	3e 15 00                      	mov.l	#0, 20[r1]

00003fd5 <.LM17>:
    3fd5:	3e 16 00                      	mov.l	#0, 24[r1]

00003fd8 <.LM18>:
    3fd8:	66 02                         	mov.l	#0, r2

00003fda <.LVL7>:
    3fda:	71 11 5c                      	add	#92, r1, r1

00003fdd <.LVL8>:
    3fdd:	66 83                         	mov.l	#8, r3

00003fdf <.LVL9>:
    3fdf:	05 69 d4 ff                   	bsr.a	1448 <_memset>

00003fe3 <.LM19>:
    3fe3:	a1 ff                         	mov.l	r7, 28[r7]

00003fe5 <.LM20>:
    3fe5:	f9 72 08 78 54 00 00          	mov.l	#0x5478, 32[r7]

00003fec <.LM21>:
    3fec:	f9 72 09 a8 54 00 00          	mov.l	#0x54a8, 36[r7]

00003ff3 <.LM22>:
    3ff3:	f9 72 0a e8 54 00 00          	mov.l	#0x54e8, 40[r7]

00003ffa <.LM23>:
    3ffa:	f9 72 0b 10 55 00 00          	mov.l	#0x5510, 44[r7]

00004001 <.LM24>:
    4001:	3f 77 01                      	rtsd	#4, r7-r7

00004004 <.LFE14>:
    4004:	00                            	brk
    4005:	00                            	brk
	...

00004008 <___sfmoreglue>:
    4008:	6e 7b                         	pushm	r7-r11

0000400a <.LCFI1>:
    400a:	ef 2a                         	mov.l	r2, r10
    400c:	75 1a 68                      	mul	#104, r10

0000400f <.LM27>:
    400f:	ef 2b                         	mov.l	r2, r11

00004011 <.LM28>:
    4011:	71 a2 0c                      	add	#12, r10, r2

00004014 <.LVL12>:
    4014:	05 fc 05 00                   	bsr.a	4610 <__malloc_r>

00004018 <.LM29>:
    4018:	71 17 00                      	add	#0, r1, r7
    401b:	20 15                         	beq.b	4030 <.LM35>

0000401d <.LM30>:
    401d:	71 71 0c                      	add	#12, r7, r1

00004020 <.LM31>:
    4020:	3e 70 00                      	mov.l	#0, [r7]

00004023 <.LM32>:
    4023:	e7 7b 01                      	mov.l	r11, 4[r7]

00004026 <.LM33>:
    4026:	a0 f1                         	mov.l	r1, 8[r7]

00004028 <.LM34>:
    4028:	66 02                         	mov.l	#0, r2
    402a:	ef a3                         	mov.l	r10, r3
    402c:	05 1c d4 ff                   	bsr.a	1448 <_memset>

00004030 <.LM35>:
    4030:	ef 71                         	mov.l	r7, r1
    4032:	3f 7b 05                      	rtsd	#20, r7-r11

00004035 <.LFE1>:
    4035:	fc 13 00                      	nop

00004038 <__cleanup>:
    4038:	fb e2 10 78 00 00             	mov.l	#0x7810, r14
    403e:	ec e1                         	mov.l	[r14], r1
    4040:	04 71 ff ff                   	bra.a	3fb1 <__cleanup_r>

00004044 <___sinit>:
    4044:	6e 7a                         	pushm	r7-r10

00004046 <.LCFI2>:
    4046:	ed 1e 0e                      	mov.l	56[r1], r14

00004049 <.LM40>:
    4049:	ef 17                         	mov.l	r1, r7

0000404b <.LM41>:
    404b:	61 0e                         	cmp	#0, r14
    404d:	14                            	beq.s	4051 <.LM43>

0000404e <.LM42>:
    404e:	3f 7a 04                      	rtsd	#16, r7-r10

00004051 <.LM43>:
    4051:	72 74 ec 02                   	add	#748, r7, r4

00004055 <.LM44>:
    4055:	a8 19                         	mov.l	4[r1], r1
    4057:	fb a2 bb 3f 00 00             	mov.l	#0x3fbb, r10
    405d:	ef e3                         	mov.l	r14, r3

0000405f <.LM45>:
    405f:	e7 7e b8                      	mov.l	r14, 736[r7]

00004062 <.LM46>:
    4062:	e7 74 ba                      	mov.l	r4, 744[r7]

00004065 <.LM47>:
    4065:	66 42                         	mov.l	#4, r2

00004067 <.LM48>:
    4067:	f9 72 0f b1 3f 00 00          	mov.l	#0x3fb1, 60[r7]

0000406e <.LM49>:
    406e:	3e 7e 01                      	mov.l	#1, 56[r7]

00004071 <.LM50>:
    4071:	f9 76 b9 03                   	mov.l	#3, 740[r7]

00004075 <.LM51>:
    4075:	7f 1a                         	jsr	r10

00004077 <.LM52>:
    4077:	a8 f1                         	mov.l	8[r7], r1
    4079:	66 92                         	mov.l	#9, r2
    407b:	66 13                         	mov.l	#1, r3
    407d:	7f 1a                         	jsr	r10

0000407f <.LM53>:
    407f:	a8 f9                         	mov.l	12[r7], r1

00004081 <.LM54>:
    4081:	6f 7a                         	popm	r7-r10

00004083 <.LM55>:
    4083:	75 42 12                      	mov.l	#18, r2
    4086:	66 23                         	mov.l	#2, r3
    4088:	04 33 ff ff                   	bra.a	3fbb <_std.isra.0>

0000408c <.LFE5>:
    408c:	00                            	brk
    408d:	00                            	brk
	...

00004090 <___sfp>:
    4090:	6e 7c                         	pushm	r7-r12

00004092 <.LCFI3>:
    4092:	fb 72 10 78 00 00             	mov.l	#0x7810, r7
    4098:	ec 7a                         	mov.l	[r7], r10

0000409a <.LM58>:
    409a:	ef 1b                         	mov.l	r1, r11

0000409c <.LM59>:
    409c:	ed a7 0e                      	mov.l	56[r10], r7
    409f:	61 07                         	cmp	#0, r7
    40a1:	20 6f                         	beq.b	4110 <.LM82>

000040a3 <.LM60>:
    40a3:	72 aa e0 02                   	add	#736, r10, r10

000040a7 <.LM61>:
    40a7:	fb c2 08 40 00 00             	mov.l	#0x4008, r12
    40ad:	fc 13 00                      	nop

000040b0 <.LM62>:
    40b0:	ed ae 01                      	mov.l	4[r10], r14
    40b3:	ed a7 02                      	mov.l	8[r10], r7

000040b6 <.LVL20>:
    40b6:	60 1e                         	sub	#1, r14
    40b8:	26 10                         	bpz.b	40c8 <.LM63>
    40ba:	2e 4c                         	bra.b	4106 <.LM79>
    40bc:	60 1e                         	sub	#1, r14

000040be <.LVL22>:
    40be:	71 77 68                      	add	#104, r7, r7

000040c1 <.LVL23>:
    40c1:	75 0e ff                      	cmp	#-1, r14
    40c4:	20 42                         	beq.b	4106 <.LM79>
    40c6:	ef 00                         	nop

000040c8 <.LM63>:
    40c8:	99 f4                         	mov.w	12[r7], r4
    40ca:	61 04                         	cmp	#0, r4
    40cc:	21 f0                         	bne.b	40bc <.LVL20+0x6>

000040ce <.L21>:
    40ce:	f9 75 07 ff                   	mov.w	#-1, 14[r7]

000040d2 <.LM65>:
    40d2:	3d 76 01                      	mov.w	#1, 12[r7]

000040d5 <.LM66>:
    40d5:	3e f9 00                      	mov.l	#0, 100[r7]

000040d8 <.LM67>:
    40d8:	3e 70 00                      	mov.l	#0, [r7]

000040db <.LM68>:
    40db:	3e 72 00                      	mov.l	#0, 8[r7]

000040de <.LM69>:
    40de:	3e 71 00                      	mov.l	#0, 4[r7]

000040e1 <.LM70>:
    40e1:	3e 74 00                      	mov.l	#0, 16[r7]

000040e4 <.LM71>:
    40e4:	3e 75 00                      	mov.l	#0, 20[r7]

000040e7 <.LM72>:
    40e7:	3e 76 00                      	mov.l	#0, 24[r7]

000040ea <.LM73>:
    40ea:	71 71 5c                      	add	#92, r7, r1
    40ed:	66 02                         	mov.l	#0, r2
    40ef:	66 83                         	mov.l	#8, r3
    40f1:	05 57 d3 ff                   	bsr.a	1448 <_memset>

000040f5 <.LM74>:
    40f5:	3e 7c 00                      	mov.l	#0, 48[r7]

000040f8 <.LM75>:
    40f8:	3e 7d 00                      	mov.l	#0, 52[r7]

000040fb <.LM76>:
    40fb:	3e f1 00                      	mov.l	#0, 68[r7]

000040fe <.LM77>:
    40fe:	3e f2 00                      	mov.l	#0, 72[r7]

00004101 <.LM78>:
    4101:	ef 71                         	mov.l	r7, r1
    4103:	3f 7c 06                      	rtsd	#24, r7-r12

00004106 <.LM79>:
    4106:	ec a1                         	mov.l	[r10], r1
    4108:	61 01                         	cmp	#0, r1
    410a:	20 0e                         	beq.b	4118 <.LM83>

0000410c <.LM80>:
    410c:	ef 1a                         	mov.l	r1, r10

0000410e <.LM81>:
    410e:	2e a2                         	bra.b	40b0 <.LM62>

00004110 <.LM82>:
    4110:	ef a1                         	mov.l	r10, r1

00004112 <.LVL29>:
    4112:	05 32 ff ff                   	bsr.a	4044 <___sinit>

00004116 <.LVL30>:
    4116:	2e 8d                         	bra.b	40a3 <.LM60>

00004118 <.LM83>:
    4118:	ef b1                         	mov.l	r11, r1
    411a:	66 42                         	mov.l	#4, r2
    411c:	7f 1c                         	jsr	r12

0000411e <.LVL32>:
    411e:	e3 a1                         	mov.l	r1, [r10]

00004120 <.LM84>:
    4120:	61 01                         	cmp	#0, r1
    4122:	21 ea                         	bne.b	410c <.LM80>

00004124 <.LM85>:
    4124:	f8 b6 0c                      	mov.l	#12, [r11]

00004127 <.LM86>:
    4127:	ef 17                         	mov.l	r1, r7

00004129 <.LVL33>:
    4129:	2e d8                         	bra.b	4101 <.LM78>

0000412b <.LFE2>:
    412b:	77 10 01 00 00                	mul	#1, r0

00004130 <___sfp_lock_acquire>:
    4130:	02                            	rts

00004131 <___sfp_lock_release>:
    4131:	02                            	rts

00004132 <___sinit_lock_acquire>:
    4132:	02                            	rts

00004133 <___sinit_lock_release>:
    4133:	02                            	rts

00004134 <___fp_lock_all>:
    4134:	fb e2 00 80 00 00             	mov.l	#0x8000, r14
    413a:	ec e1                         	mov.l	[r14], r1
    413c:	fb 22 ab 3f 00 00             	mov.l	#0x3fab, r2
    4142:	04 76 02 00                   	bra.a	43b8 <__fwalk>

00004146 <___fp_unlock_all>:
    4146:	fb e2 00 80 00 00             	mov.l	#0x8000, r14
    414c:	ec e1                         	mov.l	[r14], r1
    414e:	fb 22 ae 3f 00 00             	mov.l	#0x3fae, r2
    4154:	04 64 02 00                   	bra.a	43b8 <__fwalk>

00004158 <__malloc_trim_r>:
    4158:	6e 7d                         	pushm	r7-r13

0000415a <.LCFI0>:
    415a:	fb b2 ac 84 00 00             	mov.l	#0x84ac, r11

00004160 <.LM3>:
    4160:	ef 2c                         	mov.l	r2, r12
    4162:	ef 1a                         	mov.l	r1, r10

00004164 <.LM4>:
    4164:	05 3a 0a 00                   	bsr.a	4b9e <___malloc_lock>

00004168 <.LM5>:
    4168:	ed b7 02                      	mov.l	8[r11], r7
    416b:	a8 7f                         	mov.l	4[r7], r7
    416d:	75 27 fc                      	and	#-4, r7

00004170 <.LM6>:
    4170:	72 72 ef 0f                   	add	#0xfef, r7, r2
    4174:	43 c2                         	sub	r12, r2
    4176:	76 22 00 f0                   	and	#0xfffff000, r2
    417a:	72 2c 00 f0                   	add	#0xfffff000, r2, r12

0000417e <.LM7>:
    417e:	76 0c ff 0f                   	cmp	#0xfff, r12
    4182:	2b 17                         	ble.b	4199 <.LM10>

00004184 <.LM8>:
    4184:	fb d2 f0 53 00 00             	mov.l	#0x53f0, r13
    418a:	ef a1                         	mov.l	r10, r1
    418c:	66 02                         	mov.l	#0, r2
    418e:	7f 1d                         	jsr	r13

00004190 <.LM9>:
    4190:	ed be 02                      	mov.l	8[r11], r14
    4193:	4b 7e                         	add	r7, r14
    4195:	47 e1                         	cmp	r14, r1
    4197:	20 0d                         	beq.b	41a4 <.LM13>

00004199 <.LM10>:
    4199:	ef a1                         	mov.l	r10, r1
    419b:	05 04 0a 00                   	bsr.a	4b9f <___malloc_unlock>

0000419f <.LM11>:
    419f:	66 01                         	mov.l	#0, r1

000041a1 <.LM12>:
    41a1:	3f 7d 07                      	rtsd	#28, r7-r13

000041a4 <.LM13>:
    41a4:	fc 07 c2                      	neg	r12, r2
    41a7:	ef a1                         	mov.l	r10, r1

000041a9 <.LVL8>:
    41a9:	7f 1d                         	jsr	r13

000041ab <.LM14>:
    41ab:	75 01 ff                      	cmp	#-1, r1
    41ae:	20 24                         	beq.b	41d2 <.LM24>

000041b0 <.LM15>:
    41b0:	fb d2 cc 88 00 00             	mov.l	#0x88cc, r13
    41b6:	ec d2                         	mov.l	[r13], r2

000041b8 <.LM16>:
    41b8:	ed bb 02                      	mov.l	8[r11], r11
    41bb:	43 c7                         	sub	r12, r7

000041bd <.LVL10>:
    41bd:	65 17                         	or	#1, r7

000041bf <.LM17>:
    41bf:	ff 0c c2                      	sub	r12, r2, r12

000041c2 <.LM18>:
    41c2:	ef a1                         	mov.l	r10, r1

000041c4 <.LM19>:
    41c4:	e7 b7 01                      	mov.l	r7, 4[r11]

000041c7 <.LM20>:
    41c7:	e3 dc                         	mov.l	r12, [r13]

000041c9 <.LM21>:
    41c9:	05 d6 09 00                   	bsr.a	4b9f <___malloc_unlock>

000041cd <.LM22>:
    41cd:	66 11                         	mov.l	#1, r1

000041cf <.LM23>:
    41cf:	3f 7d 07                      	rtsd	#28, r7-r13

000041d2 <.LM24>:
    41d2:	ef a1                         	mov.l	r10, r1

000041d4 <.LVL15>:
    41d4:	66 02                         	mov.l	#0, r2
    41d6:	7f 1d                         	jsr	r13

000041d8 <.LM25>:
    41d8:	ed b7 02                      	mov.l	8[r11], r7

000041db <.LVL17>:
    41db:	ff 0b 71                      	sub	r7, r1, r11

000041de <.LM26>:
    41de:	61 fb                         	cmp	#15, r11
    41e0:	2b b9                         	ble.b	4199 <.LM10>

000041e2 <.LM27>:
    41e2:	fb c2 a4 84 00 00             	mov.l	#0x84a4, r12

000041e8 <.LVL19>:
    41e8:	06 80 c1                      	sub	[r12].l, r1

000041eb <.LM28>:
    41eb:	65 1b                         	or	#1, r11

000041ed <.LM29>:
    41ed:	fb c2 cc 88 00 00             	mov.l	#0x88cc, r12
    41f3:	e3 c1                         	mov.l	r1, [r12]

000041f5 <.LM30>:
    41f5:	e7 7b 01                      	mov.l	r11, 4[r7]
    41f8:	2e a1                         	bra.b	4199 <.LM10>

000041fa <.LFE1>:
    41fa:	74 10 01 00 00 00             	mul	#1, r0

00004200 <__free_r>:
    4200:	6e 7a                         	pushm	r7-r10

00004202 <.LCFI1>:
    4202:	71 27 00                      	add	#0, r2, r7
    4205:	3a c2 00                      	beq.w	42c7 <.LM72>
    4208:	ef 1a                         	mov.l	r1, r10

0000420a <.LM33>:
    420a:	05 94 09 00                   	bsr.a	4b9e <___malloc_lock>

0000420e <.LM34>:
    420e:	71 72 f8                      	add	#-8, r7, r2

00004211 <.LM35>:
    4211:	a8 2f                         	mov.l	4[r2], r7

00004213 <.LM36>:
    4213:	fb 52 ac 84 00 00             	mov.l	#0x84ac, r5

00004219 <.LM37>:
    4219:	ef 7e                         	mov.l	r7, r14
    421b:	75 2e fe                      	and	#-2, r14

0000421e <.LM38>:
    421e:	ff 24 e2                      	add	r14, r2, r4

00004221 <.LM39>:
    4221:	a8 4b                         	mov.l	4[r4], r3

00004223 <.LM40>:
    4223:	a8 d1                         	mov.l	8[r5], r1

00004225 <.LM41>:
    4225:	75 23 fc                      	and	#-4, r3

00004228 <.LM42>:
    4228:	47 41                         	cmp	r4, r1
    422a:	3a ea 00                      	beq.w	4314 <.LM85>

0000422d <.LM43>:
    422d:	a0 4b                         	mov.l	r3, 4[r4]

0000422f <.LM44>:
    422f:	64 17                         	and	#1, r7
    4231:	20 79                         	beq.b	42aa <.LM66>

00004233 <.LM45>:
    4233:	66 07                         	mov.l	#0, r7

00004235 <.LM46>:
    4235:	ff 21 34                      	add	r3, r4, r1
    4238:	a8 19                         	mov.l	4[r1], r1
    423a:	fd 74 c1 01                   	tst	#1, r1
    423e:	21 12                         	bne.b	4250 <.LM50>

00004240 <.LM47>:
    4240:	4b 3e                         	add	r3, r14

00004242 <.LM48>:
    4242:	61 07                         	cmp	#0, r7
    4244:	a8 c3                         	mov.l	8[r4], r3
    4246:	3a b0 00                      	beq.w	42f6 <.LM77>

00004249 <.LM49>:
    4249:	a8 cc                         	mov.l	12[r4], r4
    424b:	a0 bc                         	mov.l	r4, 12[r3]
    424d:	a0 c3                         	mov.l	r3, 8[r4]
    424f:	03                            	nop

00004250 <.LM50>:
    4250:	ef e3                         	mov.l	r14, r3
    4252:	65 13                         	or	#1, r3

00004254 <.LM51>:
    4254:	ff 24 e2                      	add	r14, r2, r4

00004257 <.LM52>:
    4257:	a0 2b                         	mov.l	r3, 4[r2]

00004259 <.LM53>:
    4259:	e3 4e                         	mov.l	r14, [r4]

0000425b <.LM54>:
    425b:	61 07                         	cmp	#0, r7
    425d:	21 45                         	bne.b	42a2 <.LM63>

0000425f <.LM55>:
    425f:	76 0e ff 01                   	cmp	#511, r14
    4263:	25 67                         	bleu.b	42ca <.LM73>

00004265 <.LM56>:
    4265:	fd 89 e7                      	shlr	#9, r14, r7
    4268:	61 47                         	cmp	#4, r7
    426a:	25 05                         	bleu.b	426f <.LM57>
    426c:	38 ea 00                      	bra.w	4356 <.LM98>

0000426f <.LM57>:
    426f:	fd 86 e3                      	shlr	#6, r14, r3
    4272:	71 33 38                      	add	#56, r3, r3
    4275:	ff 27 33                      	add	r3, r3, r7

00004278 <.LM58>:
    4278:	6c 27                         	shll	#2, r7
    427a:	70 77 ac 84 00 00             	add	#0x84ac, r7, r7
    4280:	a8 f4                         	mov.l	8[r7], r4
    4282:	47 74                         	cmp	r7, r4
    4284:	3a e0 00                      	beq.w	4364 <.LM100>
    4287:	03                            	nop

00004288 <.LM59>:
    4288:	a8 4b                         	mov.l	4[r4], r3
    428a:	75 23 fc                      	and	#-4, r3
    428d:	47 3e                         	cmp	r3, r14
    428f:	22 09                         	bc.b	4298 <.LM61>

00004291 <.LM60>:
    4291:	a8 c4                         	mov.l	8[r4], r4
    4293:	47 47                         	cmp	r4, r7
    4295:	21 f3                         	bne.b	4288 <.LM59>
    4297:	03                            	nop

00004298 <.LM61>:
    4298:	a8 cf                         	mov.l	12[r4], r7

0000429a <.LM62>:
    429a:	a0 af                         	mov.l	r7, 12[r2]
    429c:	a0 a4                         	mov.l	r4, 8[r2]
    429e:	a0 f2                         	mov.l	r2, 8[r7]
    42a0:	a0 ca                         	mov.l	r2, 12[r4]

000042a2 <.LM63>:
    42a2:	ef a1                         	mov.l	r10, r1

000042a4 <.LM64>:
    42a4:	6f 7a                         	popm	r7-r10

000042a6 <.LM65>:
    42a6:	04 f9 08 00                   	bra.a	4b9f <___malloc_unlock>

000042aa <.LM66>:
    42aa:	ec 2f                         	mov.l	[r2], r15

000042ac <.LM67>:
    42ac:	43 f2                         	sub	r15, r2

000042ae <.LM68>:
    42ae:	a8 a1                         	mov.l	8[r2], r1

000042b0 <.LM69>:
    42b0:	4b fe                         	add	r15, r14

000042b2 <.LM70>:
    42b2:	74 01 b4 84 00 00             	cmp	#0x84b4, r1
    42b8:	3a 99 00                      	beq.w	4351 <.LM97>

000042bb <.LM71>:
    42bb:	ed 2f 03                      	mov.l	12[r2], r15
    42be:	e7 1f 03                      	mov.l	r15, 12[r1]
    42c1:	e7 f1 02                      	mov.l	r1, 8[r15]
    42c4:	38 71 ff                      	bra.w	4235 <.LM46>

000042c7 <.LM72>:
    42c7:	3f 7a 04                      	rtsd	#16, r7-r10

000042ca <.LM73>:
    42ca:	68 3e                         	shlr	#3, r14
    42cc:	ff 24 ee                      	add	r14, r14, r4
    42cf:	6c 24                         	shll	#2, r4
    42d1:	70 44 ac 84 00 00             	add	#0x84ac, r4, r4
    42d7:	a8 c3                         	mov.l	8[r4], r3
    42d9:	6a 2e                         	shar	#2, r14
    42db:	66 17                         	mov.l	#1, r7
    42dd:	a0 ac                         	mov.l	r4, 12[r2]
    42df:	a0 a3                         	mov.l	r3, 8[r2]
    42e1:	fd 62 e7                      	shll	r14, r7
    42e4:	06 95 57 01                   	or	4[r5].l, r7
    42e8:	a0 c2                         	mov.l	r2, 8[r4]
    42ea:	a0 ba                         	mov.l	r2, 12[r3]
    42ec:	a0 5f                         	mov.l	r7, 4[r5]

000042ee <.LM74>:
    42ee:	ef a1                         	mov.l	r10, r1

000042f0 <.LM75>:
    42f0:	6f 7a                         	popm	r7-r10

000042f2 <.LM76>:
    42f2:	04 ad 08 00                   	bra.a	4b9f <___malloc_unlock>

000042f6 <.LM77>:
    42f6:	74 03 b4 84 00 00             	cmp	#0x84b4, r3
    42fc:	3b 4d ff                      	bne.w	4249 <.LM49>

000042ff <.LM78>:
    42ff:	ef e4                         	mov.l	r14, r4

00004301 <.LM79>:
    4301:	a1 5a                         	mov.l	r2, 20[r5]
    4303:	a1 52                         	mov.l	r2, 16[r5]

00004305 <.LM80>:
    4305:	65 14                         	or	#1, r4

00004307 <.LM81>:
    4307:	ff 27 e2                      	add	r14, r2, r7

0000430a <.LM82>:
    430a:	a0 ab                         	mov.l	r3, 12[r2]
    430c:	a0 a3                         	mov.l	r3, 8[r2]

0000430e <.LM83>:
    430e:	a0 2c                         	mov.l	r4, 4[r2]

00004310 <.LM84>:
    4310:	e3 7e                         	mov.l	r14, [r7]
    4312:	2e 90                         	bra.b	42a2 <.LM63>

00004314 <.LM85>:
    4314:	4b 3e                         	add	r3, r14

00004316 <.LM86>:
    4316:	fd 74 c7 01                   	tst	#1, r7
    431a:	21 10                         	bne.b	432a <.LM92>

0000431c <.LM87>:
    431c:	ec 23                         	mov.l	[r2], r3

0000431e <.LM88>:
    431e:	43 32                         	sub	r3, r2

00004320 <.LM89>:
    4320:	a8 af                         	mov.l	12[r2], r7
    4322:	a8 a4                         	mov.l	8[r2], r4

00004324 <.LM90>:
    4324:	4b 3e                         	add	r3, r14

00004326 <.LM91>:
    4326:	a0 cf                         	mov.l	r7, 12[r4]
    4328:	a0 f4                         	mov.l	r4, 8[r7]

0000432a <.LM92>:
    432a:	ef e7                         	mov.l	r14, r7
    432c:	65 17                         	or	#1, r7
    432e:	a0 2f                         	mov.l	r7, 4[r2]

00004330 <.LM93>:
    4330:	fb 72 a8 84 00 00             	mov.l	#0x84a8, r7

00004336 <.LM94>:
    4336:	a0 d2                         	mov.l	r2, 8[r5]

00004338 <.LM95>:
    4338:	06 84 7e                      	cmp	[r7].l, r14
    433b:	22 05                         	bc.b	4340 <.LM96>
    433d:	38 65 ff                      	bra.w	42a2 <.LM63>

00004340 <.LM96>:
    4340:	fb 72 fc 88 00 00             	mov.l	#0x88fc, r7
    4346:	ec 72                         	mov.l	[r7], r2
    4348:	ef a1                         	mov.l	r10, r1
    434a:	05 0e fe ff                   	bsr.a	4158 <__malloc_trim_r>
    434e:	38 54 ff                      	bra.w	42a2 <.LM63>

00004351 <.LM97>:
    4351:	66 17                         	mov.l	#1, r7
    4353:	38 e2 fe                      	bra.w	4235 <.LM46>

00004356 <.LM98>:
    4356:	75 57 14                      	cmp	#20, r7
    4359:	24 1d                         	bgtu.b	4376 <.LM101>

0000435b <.LM99>:
    435b:	71 73 5b                      	add	#91, r7, r3
    435e:	ff 27 33                      	add	r3, r3, r7
    4361:	38 17 ff                      	bra.w	4278 <.LM58>

00004364 <.LM100>:
    4364:	6a 23                         	shar	#2, r3
    4366:	66 17                         	mov.l	#1, r7
    4368:	fd 62 37                      	shll	r3, r7
    436b:	06 95 57 01                   	or	4[r5].l, r7
    436f:	a0 5f                         	mov.l	r7, 4[r5]
    4371:	ef 47                         	mov.l	r4, r7
    4373:	38 27 ff                      	bra.w	429a <.LM62>

00004376 <.LM101>:
    4376:	75 57 54                      	cmp	#84, r7
    4379:	24 0e                         	bgtu.b	4387 <.LM103>

0000437b <.LM102>:
    437b:	fd 8c e3                      	shlr	#12, r14, r3
    437e:	71 33 6e                      	add	#110, r3, r3
    4381:	ff 27 33                      	add	r3, r3, r7
    4384:	38 f4 fe                      	bra.w	4278 <.LM58>

00004387 <.LM103>:
    4387:	76 07 54 01                   	cmp	#340, r7
    438b:	24 0e                         	bgtu.b	4399 <.LM105>

0000438d <.LM104>:
    438d:	fd 8f e3                      	shlr	#15, r14, r3
    4390:	71 33 77                      	add	#119, r3, r3
    4393:	ff 27 33                      	add	r3, r3, r7
    4396:	38 e2 fe                      	bra.w	4278 <.LM58>

00004399 <.LM105>:
    4399:	76 07 54 05                   	cmp	#0x554, r7
    439d:	24 0e                         	bgtu.b	43ab <.LM107>

0000439f <.LM106>:
    439f:	fd 92 e3                      	shlr	#18, r14, r3
    43a2:	71 33 7c                      	add	#124, r3, r3
    43a5:	ff 27 33                      	add	r3, r3, r7
    43a8:	38 d0 fe                      	bra.w	4278 <.LM58>

000043ab <.LM107>:
    43ab:	75 47 fc                      	mov.l	#252, r7
    43ae:	75 43 7e                      	mov.l	#126, r3
    43b1:	38 c7 fe                      	bra.w	4278 <.LM58>

000043b4 <.LFE0>:
    43b4:	76 10 01 00                   	mul	#1, r0

000043b8 <__fwalk>:
    43b8:	6e 7d                         	pushm	r7-r13

000043ba <.LCFI0>:
    43ba:	72 1b e0 02                   	add	#736, r1, r11
    43be:	20 45                         	beq.b	4403 <.LM17>
    43c0:	ef 2c                         	mov.l	r2, r12
    43c2:	66 0d                         	mov.l	#0, r13

000043c4 <.LM3>:
    43c4:	ed ba 01                      	mov.l	4[r11], r10
    43c7:	ed b7 02                      	mov.l	8[r11], r7

000043ca <.LVL3>:
    43ca:	60 1a                         	sub	#1, r10
    43cc:	27 2c                         	bn.b	43f8 <.LM15>
    43ce:	ef 00                         	nop

000043d0 <.LM4>:
    43d0:	dd 7e 06                      	mov.w	12[r7], r14

000043d3 <.LM5>:
    43d3:	60 1a                         	sub	#1, r10

000043d5 <.LM6>:
    43d5:	df e4                         	mov.w	r14, r4
    43d7:	61 04                         	cmp	#0, r4

000043d9 <.LM7>:
    43d9:	5f ee                         	movu.w	r14, r14

000043db <.LM8>:
    43db:	20 15                         	beq.b	43f0 <.LM14>

000043dd <.LM9>:
    43dd:	61 1e                         	cmp	#1, r14
    43df:	25 11                         	bleu.b	43f0 <.LM14>

000043e1 <.LM10>:
    43e1:	dd 7e 07                      	mov.w	14[r7], r14

000043e4 <.LM11>:
    43e4:	ef 71                         	mov.l	r7, r1

000043e6 <.LM12>:
    43e6:	75 0e ff                      	cmp	#-1, r14
    43e9:	17                            	beq.s	43f0 <.LM14>

000043ea <.LM13>:
    43ea:	7f 1c                         	jsr	r12

000043ec <.LVL6>:
    43ec:	57 1d                         	or	r1, r13
    43ee:	ef 00                         	nop

000043f0 <.LM14>:
    43f0:	71 77 68                      	add	#104, r7, r7

000043f3 <.LVL8>:
    43f3:	75 0a ff                      	cmp	#-1, r10
    43f6:	21 da                         	bne.b	43d0 <.LM4>

000043f8 <.LM15>:
    43f8:	ec bb                         	mov.l	[r11], r11
    43fa:	61 0b                         	cmp	#0, r11
    43fc:	21 c8                         	bne.b	43c4 <.LM3>

000043fe <.LM16>:
    43fe:	ef d1                         	mov.l	r13, r1
    4400:	3f 7d 07                      	rtsd	#28, r7-r13

00004403 <.LM17>:
    4403:	ef bd                         	mov.l	r11, r13

00004405 <.LM18>:
    4405:	ef d1                         	mov.l	r13, r1

00004407 <.LVL11>:
    4407:	3f 7d 07                      	rtsd	#28, r7-r13

0000440a <.LFE0>:
    440a:	74 10 01 00 00 00             	mul	#1, r0

00004410 <__fwalk_reent>:
    4410:	6e 7d                         	pushm	r7-r13

00004412 <.LCFI1>:
    4412:	72 1b e0 02                   	add	#736, r1, r11

00004416 <.LM21>:
    4416:	ef 19                         	mov.l	r1, r9

00004418 <.LM22>:
    4418:	20 45                         	beq.b	445d <.LM39>
    441a:	ef 2c                         	mov.l	r2, r12
    441c:	66 0d                         	mov.l	#0, r13

0000441e <.LVL14>:
    441e:	ef 00                         	nop

00004420 <.LM23>:
    4420:	ed ba 01                      	mov.l	4[r11], r10
    4423:	ed b7 02                      	mov.l	8[r11], r7

00004426 <.LVL15>:
    4426:	60 1a                         	sub	#1, r10
    4428:	27 2a                         	bn.b	4452 <.LM37>

0000442a <.LM24>:
    442a:	dd 7e 06                      	mov.w	12[r7], r14

0000442d <.LM25>:
    442d:	60 1a                         	sub	#1, r10

0000442f <.LM26>:
    442f:	df e4                         	mov.w	r14, r4
    4431:	61 04                         	cmp	#0, r4

00004433 <.LM27>:
    4433:	5f ee                         	movu.w	r14, r14

00004435 <.LM28>:
    4435:	20 15                         	beq.b	444a <.LM36>

00004437 <.LM29>:
    4437:	61 1e                         	cmp	#1, r14
    4439:	25 11                         	bleu.b	444a <.LM36>

0000443b <.LM30>:
    443b:	dd 7e 07                      	mov.w	14[r7], r14

0000443e <.LM31>:
    443e:	ef 72                         	mov.l	r7, r2

00004440 <.LM32>:
    4440:	75 0e ff                      	cmp	#-1, r14

00004443 <.LM33>:
    4443:	ef 91                         	mov.l	r9, r1

00004445 <.LM34>:
    4445:	15                            	beq.s	444a <.LM36>

00004446 <.LM35>:
    4446:	7f 1c                         	jsr	r12

00004448 <.LVL19>:
    4448:	57 1d                         	or	r1, r13

0000444a <.LM36>:
    444a:	71 77 68                      	add	#104, r7, r7

0000444d <.LVL21>:
    444d:	75 0a ff                      	cmp	#-1, r10
    4450:	21 da                         	bne.b	442a <.LM24>

00004452 <.LM37>:
    4452:	ec bb                         	mov.l	[r11], r11
    4454:	61 0b                         	cmp	#0, r11
    4456:	21 ca                         	bne.b	4420 <.LM23>

00004458 <.LM38>:
    4458:	ef d1                         	mov.l	r13, r1
    445a:	3f 7d 07                      	rtsd	#28, r7-r13

0000445d <.LM39>:
    445d:	ef bd                         	mov.l	r11, r13

0000445f <.LM40>:
    445f:	ef d1                         	mov.l	r13, r1

00004461 <.LVL24>:
    4461:	3f 7d 07                      	rtsd	#28, r7-r13

00004464 <.LFE1>:
    4464:	76 10 01 00                   	mul	#1, r0

00004468 <__setlocale_r>:
    4468:	6e 7a                         	pushm	r7-r10

0000446a <.LCFI0>:
    446a:	71 37 00                      	add	#0, r3, r7
    446d:	20 1b                         	beq.b	4488 <.LM4>

0000446f <.LM3>:
    446f:	fb a2 16 55 00 00             	mov.l	#0x5516, r10
    4475:	ef 71                         	mov.l	r7, r1

00004477 <.LVL1>:
    4477:	fb 22 e5 79 00 00             	mov.l	#0x79e5, r2

0000447d <.LVL2>:
    447d:	7f 1a                         	jsr	r10

0000447f <.LVL3>:
    447f:	61 01                         	cmp	#0, r1
    4481:	21 12                         	bne.b	4493 <.LM6>
    4483:	77 10 01 00 00                	mul	#1, r0

00004488 <.LM4>:
    4488:	fb 72 14 78 00 00             	mov.l	#0x7814, r7

0000448e <.LM5>:
    448e:	ef 71                         	mov.l	r7, r1
    4490:	3f 7a 04                      	rtsd	#16, r7-r10

00004493 <.LM6>:
    4493:	ef 71                         	mov.l	r7, r1
    4495:	fb 22 14 78 00 00             	mov.l	#0x7814, r2
    449b:	7f 1a                         	jsr	r10

0000449d <.LVL5>:
    449d:	61 01                         	cmp	#0, r1
    449f:	20 e9                         	beq.b	4488 <.LM4>

000044a1 <.LM7>:
    44a1:	ef 71                         	mov.l	r7, r1
    44a3:	fb 22 03 78 00 00             	mov.l	#0x7803, r2
    44a9:	7f 1a                         	jsr	r10

000044ab <.LVL6>:
    44ab:	61 01                         	cmp	#0, r1

000044ad <.LM8>:
    44ad:	fb 72 14 78 00 00             	mov.l	#0x7814, r7

000044b3 <.LM9>:
    44b3:	20 db                         	beq.b	448e <.LM5>

000044b5 <.LM10>:
    44b5:	66 07                         	mov.l	#0, r7
    44b7:	2e d7                         	bra.b	448e <.LM5>

000044b9 <.LFE0>:
    44b9:	0f                            	bra.s	44c0 <___locale_charset>
    44ba:	03                            	nop
    44bb:	03                            	nop
    44bc:	03                            	nop
    44bd:	03                            	nop
    44be:	03                            	nop
    44bf:	03                            	nop

000044c0 <___locale_charset>:
    44c0:	fb 12 2c 84 00 00             	mov.l	#0x842c, r1
    44c6:	02                            	rts

000044c7 <___locale_mb_cur_max>:
    44c7:	fb e2 28 84 00 00             	mov.l	#0x8428, r14

000044cd <.LM15>:
    44cd:	ec e1                         	mov.l	[r14], r1
    44cf:	02                            	rts

000044d0 <___locale_msgcharset>:
    44d0:	fb 12 4c 84 00 00             	mov.l	#0x844c, r1
    44d6:	02                            	rts

000044d7 <___locale_cjk_lang>:
    44d7:	66 01                         	mov.l	#0, r1
    44d9:	02                            	rts

000044da <__localeconv_r>:
    44da:	fb 12 6c 84 00 00             	mov.l	#0x846c, r1

000044e0 <.LVL8>:
    44e0:	02                            	rts

000044e1 <_setlocale>:
    44e1:	fb 42 00 80 00 00             	mov.l	#0x8000, r4

000044e7 <.LM24>:
    44e7:	ef 1e                         	mov.l	r1, r14

000044e9 <.LM25>:
    44e9:	ec 41                         	mov.l	[r4], r1

000044eb <.LM26>:
    44eb:	ef 23                         	mov.l	r2, r3

000044ed <.LM27>:
    44ed:	ef e2                         	mov.l	r14, r2

000044ef <.LVL11>:
    44ef:	04 79 ff ff                   	bra.a	4468 <__setlocale_r>

000044f3 <_localeconv>:
    44f3:	fb 12 6c 84 00 00             	mov.l	#0x846c, r1
    44f9:	02                            	rts

000044fa <.LFE7>:
    44fa:	00                            	brk
    44fb:	00                            	brk
    44fc:	00                            	brk
    44fd:	00                            	brk
	...

00004500 <___smakebuf_r>:
    4500:	6e 7c                         	pushm	r7-r12

00004502 <.LCFI0>:
    4502:	dd 2e 06                      	mov.w	12[r2], r14

00004505 <.LM3>:
    4505:	71 00 c4                      	add	#-60, r0, r0

00004508 <.LCFI1>:
    4508:	ef e4                         	mov.l	r14, r4
    450a:	64 24                         	and	#2, r4
    450c:	df 44                         	mov.w	r4, r4
    450e:	61 04                         	cmp	#0, r4

00004510 <.LM5>:
    4510:	ef 27                         	mov.l	r2, r7

00004512 <.LM6>:
    4512:	3b 89 00                      	bne.w	459b <.LM27>

00004515 <.LM7>:
    4515:	99 aa                         	mov.w	14[r2], r2

00004517 <.LVL1>:
    4517:	ef 1a                         	mov.l	r1, r10
    4519:	61 02                         	cmp	#0, r2
    451b:	29 63                         	blt.b	457e <.LM22>

0000451d <.LM8>:
    451d:	ef 03                         	mov.l	r0, r3
    451f:	05 d1 1f 00                   	bsr.a	64f0 <__fstat_r>

00004523 <.LVL2>:
    4523:	61 01                         	cmp	#0, r1
    4525:	29 56                         	blt.b	457b <.LVL7>

00004527 <.LM9>:
    4527:	ed 0b 01                      	mov.l	4[r0], r11
    452a:	77 2b 00 f0 00                	and	#0xf000, r11
    452f:	76 0b 00 20                   	cmp	#0x2000, r11
    4533:	fc db c0                      	sceq.l	r12

00004536 <.LM10>:
    4536:	77 0b 00 80 00                	cmp	#0x8000, r11
    453b:	3a 8a 00                      	beq.w	45c5 <.LM34>
    453e:	ef 00                         	nop

00004540 <.LM11>:
    4540:	dd 7e 06                      	mov.w	12[r7], r14

00004543 <.LM12>:
    4543:	fb ba 00 04                   	mov.l	#0x400, r11

00004547 <.LM13>:
    4547:	76 3e 00 08                   	or	#0x800, r14
    454b:	d7 7e 06                      	mov.w	r14, 12[r7]

0000454e <.LM14>:
    454e:	ef a1                         	mov.l	r10, r1
    4550:	ef b2                         	mov.l	r11, r2
    4552:	05 be 00 00                   	bsr.a	4610 <__malloc_r>

00004556 <.LVL5>:
    4556:	61 01                         	cmp	#0, r1
    4558:	3a 8f 00                      	beq.w	45e7 <.LM40>

0000455b <.LM15>:
    455b:	dd 7e 06                      	mov.w	12[r7], r14

0000455e <.LM16>:
    455e:	f9 a2 0f b1 3f 00 00          	mov.l	#0x3fb1, 60[r10]

00004565 <.LM17>:
    4565:	76 3e 80 00                   	or	#128, r14
    4569:	d7 7e 06                      	mov.w	r14, 12[r7]

0000456c <.LM18>:
    456c:	e3 71                         	mov.l	r1, [r7]
    456e:	a1 71                         	mov.l	r1, 16[r7]

00004570 <.LM19>:
    4570:	e7 7b 05                      	mov.l	r11, 20[r7]

00004573 <.LM20>:
    4573:	61 0c                         	cmp	#0, r12
    4575:	21 39                         	bne.b	45ae <.LM31>

00004577 <.LVL6>:
    4577:	03                            	nop

00004578 <.LM21>:
    4578:	3f 7c 15                      	rtsd	#84, r7-r12

0000457b <.LVL7>:
    457b:	dd 7e 06                      	mov.w	12[r7], r14

0000457e <.LM22>:
    457e:	ef eb                         	mov.l	r14, r11
    4580:	76 2b 80 00                   	and	#128, r11
    4584:	df bb                         	mov.w	r11, r11
    4586:	61 0b                         	cmp	#0, r11
    4588:	21 21                         	bne.b	45a9 <.LM30>

0000458a <.LM23>:
    458a:	fb ba 00 04                   	mov.l	#0x400, r11
    458e:	ef 00                         	nop

00004590 <.LM24>:
    4590:	76 3e 00 08                   	or	#0x800, r14
    4594:	d7 7e 06                      	mov.w	r14, 12[r7]

00004597 <.LM25>:
    4597:	66 0c                         	mov.l	#0, r12

00004599 <.LM26>:
    4599:	2e b5                         	bra.b	454e <.LM14>

0000459b <.LM27>:
    459b:	71 2a 43                      	add	#67, r2, r10
    459e:	e3 2a                         	mov.l	r10, [r2]
    45a0:	e7 2a 04                      	mov.l	r10, 16[r2]

000045a3 <.LM28>:
    45a3:	3e 25 01                      	mov.l	#1, 20[r2]

000045a6 <.LM29>:
    45a6:	3f 7c 15                      	rtsd	#84, r7-r12

000045a9 <.LM30>:
    45a9:	75 4b 40                      	mov.l	#64, r11
    45ac:	2e e4                         	bra.b	4590 <.LM24>

000045ae <.LM31>:
    45ae:	99 fa                         	mov.w	14[r7], r2
    45b0:	ef a1                         	mov.l	r10, r1

000045b2 <.LVL13>:
    45b2:	05 8e 22 00                   	bsr.a	6840 <__isatty_r>

000045b6 <.LVL14>:
    45b6:	61 01                         	cmp	#0, r1
    45b8:	20 c0                         	beq.b	4578 <.LM21>

000045ba <.LM32>:
    45ba:	dd 7a 06                      	mov.w	12[r7], r10

000045bd <.LVL15>:
    45bd:	65 1a                         	or	#1, r10
    45bf:	d7 7a 06                      	mov.w	r10, 12[r7]

000045c2 <.LM33>:
    45c2:	3f 7c 15                      	rtsd	#84, r7-r12

000045c5 <.LM34>:
    45c5:	ed 7b 0a                      	mov.l	40[r7], r11
    45c8:	74 0b e8 54 00 00             	cmp	#0x54e8, r11
    45ce:	3b 72 ff                      	bne.w	4540 <.LM11>

000045d1 <.LM35>:
    45d1:	dd 7b 06                      	mov.w	12[r7], r11

000045d4 <.LM36>:
    45d4:	f9 7a 13 00 04                	mov.l	#0x400, 76[r7]

000045d9 <.LM37>:
    45d9:	76 3b 00 04                   	or	#0x400, r11
    45dd:	d7 7b 06                      	mov.w	r11, 12[r7]

000045e0 <.LM38>:
    45e0:	fb ba 00 04                   	mov.l	#0x400, r11

000045e4 <.LM39>:
    45e4:	38 6a ff                      	bra.w	454e <.LM14>

000045e7 <.LM40>:
    45e7:	dd 7a 06                      	mov.w	12[r7], r10

000045ea <.LVL18>:
    45ea:	ef ab                         	mov.l	r10, r11

000045ec <.LVL19>:
    45ec:	76 2b 00 02                   	and	#512, r11
    45f0:	df bb                         	mov.w	r11, r11
    45f2:	61 0b                         	cmp	#0, r11
    45f4:	21 84                         	bne.b	4578 <.LM21>

000045f6 <.LM41>:
    45f6:	71 7b 43                      	add	#67, r7, r11

000045f9 <.LM42>:
    45f9:	65 2a                         	or	#2, r10
    45fb:	d7 7a 06                      	mov.w	r10, 12[r7]

000045fe <.LM43>:
    45fe:	e3 7b                         	mov.l	r11, [r7]
    4600:	e7 7b 04                      	mov.l	r11, 16[r7]

00004603 <.LM44>:
    4603:	3e 75 01                      	mov.l	#1, 20[r7]

00004606 <.LM45>:
    4606:	3f 7c 15                      	rtsd	#84, r7-r12

00004609 <.LFE0>:
    4609:	0f                            	bra.s	4610 <__malloc_r>
    460a:	03                            	nop
    460b:	03                            	nop
    460c:	03                            	nop
    460d:	03                            	nop
    460e:	03                            	nop
    460f:	03                            	nop

00004610 <__malloc_r>:
    4610:	6e 6d                         	pushm	r6-r13

00004612 <.LCFI0>:
    4612:	60 c0                         	sub	#12, r0

00004614 <.LCFI1>:
    4614:	71 2a 0b                      	add	#11, r2, r10
    4617:	75 5a 16                      	cmp	#22, r10

0000461a <.LM3>:
    461a:	ef 1b                         	mov.l	r1, r11

0000461c <.LM4>:
    461c:	25 54                         	bleu.b	4670 <.LM25>

0000461e <.LM5>:
    461e:	75 2a f8                      	and	#-8, r10

00004621 <.LM6>:
    4621:	27 57                         	bn.b	4678 <.LM27>
    4623:	47 a2                         	cmp	r10, r2
    4625:	24 53                         	bgtu.b	4678 <.LM27>

00004627 <.LVL2>:
    4627:	03                            	nop

00004628 <.LM7>:
    4628:	ef b1                         	mov.l	r11, r1

0000462a <.LVL3>:
    462a:	05 74 05 00                   	bsr.a	4b9e <___malloc_lock>

0000462e <.LM8>:
    462e:	76 0a f7 01                   	cmp	#503, r10
    4632:	24 4e                         	bgtu.b	4680 <.LM30>

00004634 <.LM9>:
    4634:	70 ac ac 84 00 00             	add	#0x84ac, r10, r12

0000463a <.LM10>:
    463a:	ed c7 03                      	mov.l	12[r12], r7

0000463d <.LM11>:
    463d:	fd 83 a1                      	shlr	#3, r10, r1

00004640 <.LM12>:
    4640:	47 c7                         	cmp	r12, r7
    4642:	3a 01 04                      	beq.w	4a43 <.LM195>
    4645:	fc 13 00                      	nop

00004648 <.LM13>:
    4648:	ed 7a 01                      	mov.l	4[r7], r10

0000464b <.LM14>:
    464b:	ed 7e 03                      	mov.l	12[r7], r14

0000464e <.LM15>:
    464e:	75 2a fc                      	and	#-4, r10

00004651 <.LM16>:
    4651:	ff 2c a7                      	add	r10, r7, r12

00004654 <.LVL10>:
    4654:	ed ca 01                      	mov.l	4[r12], r10

00004657 <.LM17>:
    4657:	a8 f4                         	mov.l	8[r7], r4

00004659 <.LM18>:
    4659:	65 1a                         	or	#1, r10

0000465b <.LM19>:
    465b:	ef b1                         	mov.l	r11, r1

0000465d <.LM20>:
    465d:	e7 4e 03                      	mov.l	r14, 12[r4]
    4660:	e7 e4 02                      	mov.l	r4, 8[r14]

00004663 <.LM21>:
    4663:	e7 ca 01                      	mov.l	r10, 4[r12]

00004666 <.LM22>:
    4666:	05 39 05 00                   	bsr.a	4b9f <___malloc_unlock>

0000466a <.LM23>:
    466a:	71 71 08                      	add	#8, r7, r1

0000466d <.LM24>:
    466d:	3f 6d 0b                      	rtsd	#44, r6-r13

00004670 <.LM25>:
    4670:	75 4a 10                      	mov.l	#16, r10

00004673 <.LM26>:
    4673:	47 a2                         	cmp	r10, r2
    4675:	25 b3                         	bleu.b	4628 <.LM7>
    4677:	03                            	nop

00004678 <.LM27>:
    4678:	f8 b6 0c                      	mov.l	#12, [r11]

0000467b <.LM28>:
    467b:	66 01                         	mov.l	#0, r1

0000467d <.LM29>:
    467d:	3f 6d 0b                      	rtsd	#44, r6-r13

00004680 <.LM30>:
    4680:	fd 89 a1                      	shlr	#9, r10, r1
    4683:	3a 52 01                      	beq.w	47d5 <.LM82>

00004686 <.LM31>:
    4686:	61 41                         	cmp	#4, r1
    4688:	25 05                         	bleu.b	468d <.LM32>
    468a:	38 d9 02                      	bra.w	4963 <.LM158>

0000468d <.LM32>:
    468d:	fd 86 a1                      	shlr	#6, r10, r1
    4690:	71 11 38                      	add	#56, r1, r1
    4693:	ff 23 11                      	add	r1, r1, r3

00004696 <.LM33>:
    4696:	6c 23                         	shll	#2, r3
    4698:	70 33 ac 84 00 00             	add	#0x84ac, r3, r3

0000469e <.LM34>:
    469e:	a8 bf                         	mov.l	12[r3], r7

000046a0 <.LVL20>:
    46a0:	47 73                         	cmp	r7, r3
    46a2:	20 36                         	beq.b	46d8 <.LM44>

000046a4 <.LM35>:
    46a4:	ed 7e 01                      	mov.l	4[r7], r14
    46a7:	75 2e fc                      	and	#-4, r14

000046aa <.LM36>:
    46aa:	ff 0c ae                      	sub	r10, r14, r12

000046ad <.LM37>:
    46ad:	61 fc                         	cmp	#15, r12
    46af:	2b 05                         	ble.b	46b4 <.LM38>
    46b1:	38 2d 01                      	bra.w	47de <.LM83>

000046b4 <.LM38>:
    46b4:	61 0c                         	cmp	#0, r12
    46b6:	29 1c                         	blt.b	46d2 <.LM43>
    46b8:	38 2b 01                      	bra.w	47e3 <.LM85>

000046bb <.LM39>:
    46bb:	ed 7e 01                      	mov.l	4[r7], r14

000046be <.LVL24>:
    46be:	75 2e fc                      	and	#-4, r14

000046c1 <.LM40>:
    46c1:	ff 04 ae                      	sub	r10, r14, r4

000046c4 <.LM41>:
    46c4:	61 f4                         	cmp	#15, r4
    46c6:	2b 05                         	ble.b	46cb <.LM42>
    46c8:	38 16 01                      	bra.w	47de <.LM83>

000046cb <.LM42>:
    46cb:	61 04                         	cmp	#0, r4
    46cd:	29 05                         	blt.b	46d2 <.LM43>
    46cf:	38 14 01                      	bra.w	47e3 <.LM85>

000046d2 <.LM43>:
    46d2:	a8 ff                         	mov.l	12[r7], r7
    46d4:	47 73                         	cmp	r7, r3
    46d6:	21 e5                         	bne.b	46bb <.LM39>

000046d8 <.LM44>:
    46d8:	62 11                         	add	#1, r1

000046da <.LM45>:
    46da:	fb c2 ac 84 00 00             	mov.l	#0x84ac, r12
    46e0:	ed c7 04                      	mov.l	16[r12], r7
    46e3:	74 07 b4 84 00 00             	cmp	#0x84b4, r7
    46e9:	3a 1a 03                      	beq.w	4a03 <.LVL110>

000046ec <.LM46>:
    46ec:	a8 7b                         	mov.l	4[r7], r3
    46ee:	75 23 fc                      	and	#-4, r3

000046f1 <.LM47>:
    46f1:	ff 0e a3                      	sub	r10, r3, r14

000046f4 <.LM48>:
    46f4:	61 fe                         	cmp	#15, r14
    46f6:	2b 05                         	ble.b	46fb <.LM49>
    46f8:	38 d7 02                      	bra.w	49cf <.LM169>

000046fb <.LM49>:
    46fb:	f9 c2 05 b4 84 00 00          	mov.l	#0x84b4, 20[r12]
    4702:	f9 c2 04 b4 84 00 00          	mov.l	#0x84b4, 16[r12]

00004709 <.LM50>:
    4709:	61 0e                         	cmp	#0, r14
    470b:	29 05                         	blt.b	4710 <.LM51>
    470d:	38 f8 00                      	bra.w	4805 <.LM94>

00004710 <.LM51>:
    4710:	76 03 ff 01                   	cmp	#511, r3
    4714:	25 05                         	bleu.b	4719 <.LM52>
    4716:	38 69 02                      	bra.w	497f <.LM161>

00004719 <.LM52>:
    4719:	68 33                         	shlr	#3, r3

0000471b <.LVL34>:
    471b:	ff 2d 33                      	add	r3, r3, r13
    471e:	6c 2d                         	shll	#2, r13
    4720:	70 dd ac 84 00 00             	add	#0x84ac, r13, r13

00004726 <.LVL35>:
    4726:	6a 23                         	shar	#2, r3

00004728 <.LVL36>:
    4728:	66 14                         	mov.l	#1, r4
    472a:	ed de 02                      	mov.l	8[r13], r14

0000472d <.LVL37>:
    472d:	fd 62 34                      	shll	r3, r4
    4730:	06 95 c4 01                   	or	4[r12].l, r4
    4734:	e7 7d 03                      	mov.l	r13, 12[r7]
    4737:	e7 7e 02                      	mov.l	r14, 8[r7]
    473a:	e7 c4 01                      	mov.l	r4, 4[r12]
    473d:	e7 d7 02                      	mov.l	r7, 8[r13]
    4740:	e7 e7 03                      	mov.l	r7, 12[r14]

00004743 <.LM53>:
    4743:	fd a2 17                      	shar	#2, r1, r7

00004746 <.LVL39>:
    4746:	66 13                         	mov.l	#1, r3
    4748:	fd 62 73                      	shll	r7, r3

0000474b <.LVL40>:
    474b:	47 43                         	cmp	r4, r3
    474d:	25 05                         	bleu.b	4752 <.LM54>
    474f:	38 cc 00                      	bra.w	481b <.LM100>

00004752 <.LM54>:
    4752:	fc 33 34                      	tst	r3, r4
    4755:	21 0e                         	bne.b	4763 <.LM59>

00004757 <.LM55>:
    4757:	75 21 fc                      	and	#-4, r1

0000475a <.LM56>:
    475a:	4b 33                         	add	r3, r3

0000475c <.LM57>:
    475c:	62 41                         	add	#4, r1

0000475e <.LM58>:
    475e:	fc 33 34                      	tst	r3, r4
    4761:	20 f9                         	beq.b	475a <.LM56>

00004763 <.LM59>:
    4763:	ff 29 11                      	add	r1, r1, r9
    4766:	6c 29                         	shll	#2, r9
    4768:	70 99 ac 84 00 00             	add	#0x84ac, r9, r9

0000476e <.LVL45>:
    476e:	ef 92                         	mov.l	r9, r2
    4770:	ef 1d                         	mov.l	r1, r13

00004772 <.LM60>:
    4772:	a8 af                         	mov.l	12[r2], r7

00004774 <.LVL47>:
    4774:	47 72                         	cmp	r7, r2
    4776:	21 13                         	bne.b	4789 <.LM63>
    4778:	38 91 02                      	bra.w	4a09 <.LM183>

0000477b <.LM61>:
    477b:	61 04                         	cmp	#0, r4
    477d:	29 05                         	blt.b	4782 <.LM62>
    477f:	38 d3 02                      	bra.w	4a52 <.LM199>

00004782 <.LM62>:
    4782:	a8 ff                         	mov.l	12[r7], r7
    4784:	47 72                         	cmp	r7, r2
    4786:	3a 83 02                      	beq.w	4a09 <.LM183>

00004789 <.LM63>:
    4789:	ed 7e 01                      	mov.l	4[r7], r14
    478c:	75 2e fc                      	and	#-4, r14

0000478f <.LM64>:
    478f:	ff 04 ae                      	sub	r10, r14, r4

00004792 <.LM65>:
    4792:	61 f4                         	cmp	#15, r4
    4794:	2b e7                         	ble.b	477b <.LM61>

00004796 <.LM66>:
    4796:	ed 7e 03                      	mov.l	12[r7], r14

00004799 <.LVL53>:
    4799:	a8 f3                         	mov.l	8[r7], r3

0000479b <.LM67>:
    479b:	ff 2d a7                      	add	r10, r7, r13

0000479e <.LM68>:
    479e:	e7 3e 03                      	mov.l	r14, 12[r3]
    47a1:	e7 e3 02                      	mov.l	r3, 8[r14]

000047a4 <.LM69>:
    47a4:	e7 cd 05                      	mov.l	r13, 20[r12]
    47a7:	e7 cd 04                      	mov.l	r13, 16[r12]

000047aa <.LM70>:
    47aa:	65 1a                         	or	#1, r10

000047ac <.LM71>:
    47ac:	ef 4c                         	mov.l	r4, r12

000047ae <.LM72>:
    47ae:	e7 7a 01                      	mov.l	r10, 4[r7]

000047b1 <.LM73>:
    47b1:	65 1c                         	or	#1, r12

000047b3 <.LM74>:
    47b3:	ff 2a 4d                      	add	r4, r13, r10

000047b6 <.LM75>:
    47b6:	ef b1                         	mov.l	r11, r1

000047b8 <.LM76>:
    47b8:	f9 d2 03 b4 84 00 00          	mov.l	#0x84b4, 12[r13]
    47bf:	f9 d2 02 b4 84 00 00          	mov.l	#0x84b4, 8[r13]

000047c6 <.LM77>:
    47c6:	e7 dc 01                      	mov.l	r12, 4[r13]

000047c9 <.LM78>:
    47c9:	e3 a4                         	mov.l	r4, [r10]

000047cb <.LM79>:
    47cb:	05 d4 03 00                   	bsr.a	4b9f <___malloc_unlock>

000047cf <.LM80>:
    47cf:	71 71 08                      	add	#8, r7, r1

000047d2 <.LM81>:
    47d2:	3f 6d 0b                      	rtsd	#44, r6-r13

000047d5 <.LM82>:
    47d5:	fd 83 a1                      	shlr	#3, r10, r1
    47d8:	ff 23 11                      	add	r1, r1, r3
    47db:	38 bb fe                      	bra.w	4696 <.LM33>

000047de <.LM83>:
    47de:	60 11                         	sub	#1, r1

000047e0 <.LM84>:
    47e0:	38 f8 fe                      	bra.w	46d8 <.LM44>

000047e3 <.LM85>:
    47e3:	4b 7e                         	add	r7, r14

000047e5 <.LVL61>:
    47e5:	ed ea 01                      	mov.l	4[r14], r10

000047e8 <.LM86>:
    47e8:	ed 7c 03                      	mov.l	12[r7], r12

000047eb <.LVL62>:
    47eb:	ed 7d 02                      	mov.l	8[r7], r13

000047ee <.LM87>:
    47ee:	65 1a                         	or	#1, r10

000047f0 <.LM88>:
    47f0:	ef b1                         	mov.l	r11, r1

000047f2 <.LM89>:
    47f2:	e7 dc 03                      	mov.l	r12, 12[r13]
    47f5:	e7 cd 02                      	mov.l	r13, 8[r12]

000047f8 <.LM90>:
    47f8:	e7 ea 01                      	mov.l	r10, 4[r14]

000047fb <.LM91>:
    47fb:	05 a4 03 00                   	bsr.a	4b9f <___malloc_unlock>

000047ff <.LM92>:
    47ff:	71 71 08                      	add	#8, r7, r1

00004802 <.LM93>:
    4802:	3f 6d 0b                      	rtsd	#44, r6-r13

00004805 <.LM94>:
    4805:	4b 73                         	add	r7, r3

00004807 <.LVL67>:
    4807:	ed 3a 01                      	mov.l	4[r3], r10

0000480a <.LM95>:
    480a:	ef b1                         	mov.l	r11, r1

0000480c <.LM96>:
    480c:	65 1a                         	or	#1, r10
    480e:	e7 3a 01                      	mov.l	r10, 4[r3]

00004811 <.LM97>:
    4811:	05 8e 03 00                   	bsr.a	4b9f <___malloc_unlock>

00004815 <.LM98>:
    4815:	71 71 08                      	add	#8, r7, r1

00004818 <.LM99>:
    4818:	3f 6d 0b                      	rtsd	#44, r6-r13

0000481b <.LM100>:
    481b:	ed c7 02                      	mov.l	8[r12], r7
    481e:	ed 7d 01                      	mov.l	4[r7], r13
    4821:	75 2d fc                      	and	#-4, r13

00004824 <.LM101>:
    4824:	47 ad                         	cmp	r10, r13
    4826:	23 0c                         	bnc.b	4832 <.LBB4>

00004828 <.LM102>:
    4828:	ff 0e ad                      	sub	r10, r13, r14

0000482b <.LM103>:
    482b:	61 fe                         	cmp	#15, r14
    482d:	2b 05                         	ble.b	4832 <.LBB4>
    482f:	38 17 01                      	bra.w	4946 <.LM149>

00004832 <.LBB4>:
    4832:	fb 32 fc 88 00 00             	mov.l	#0x88fc, r3

00004838 <.LM105>:
    4838:	fb 52 a4 84 00 00             	mov.l	#0x84a4, r5

0000483e <.LM106>:
    483e:	ec 38                         	mov.l	[r3], r8

00004840 <.LM107>:
    4840:	ec 5e                         	mov.l	[r5], r14

00004842 <.LM108>:
    4842:	ff 24 d7                      	add	r13, r7, r4

00004845 <.LM109>:
    4845:	4b a8                         	add	r10, r8

00004847 <.LM110>:
    4847:	75 0e ff                      	cmp	#-1, r14
    484a:	3a 9d 02                      	beq.w	4ae7 <.LBB15>

0000484d <.LM111>:
    484d:	72 88 0f 10                   	add	#0x100f, r8, r8

00004851 <.LVL77>:
    4851:	76 28 00 f0                   	and	#0xfffff000, r8

00004855 <.LVL78>:
    4855:	fc 13 00                      	nop

00004858 <.LM112>:
    4858:	fb 32 f0 53 00 00             	mov.l	#0x53f0, r3
    485e:	a0 0b                         	mov.l	r3, 4[r0]
    4860:	e3 04                         	mov.l	r4, [r0]
    4862:	a0 85                         	mov.l	r5, 8[r0]
    4864:	ef b1                         	mov.l	r11, r1
    4866:	ef 82                         	mov.l	r8, r2
    4868:	7f 13                         	jsr	r3

0000486a <.LM113>:
    486a:	75 01 ff                      	cmp	#-1, r1

0000486d <.LM114>:
    486d:	ef 19                         	mov.l	r1, r9

0000486f <.LM115>:
    486f:	a8 0b                         	mov.l	4[r0], r3
    4871:	ec 04                         	mov.l	[r0], r4
    4873:	a8 85                         	mov.l	8[r0], r5
    4875:	3a 1d 02                      	beq.w	4a92 <.LBB12+0x9>
    4878:	47 14                         	cmp	r1, r4
    487a:	25 05                         	bleu.b	487f <.LM115+0x10>
    487c:	38 0d 02                      	bra.w	4a89 <.LBB12>
    487f:	03                            	nop

00004880 <.LM116>:
    4880:	fb 62 cc 88 00 00             	mov.l	#0x88cc, r6
    4886:	ec 6e                         	mov.l	[r6], r14
    4888:	4b 8e                         	add	r8, r14
    488a:	e3 6e                         	mov.l	r14, [r6]

0000488c <.LM117>:
    488c:	47 94                         	cmp	r9, r4
    488e:	3a 70 02                      	beq.w	4afe <.LBB10>

00004891 <.LM118>:
    4891:	ec 52                         	mov.l	[r5], r2
    4893:	75 02 ff                      	cmp	#-1, r2
    4896:	3a 86 02                      	beq.w	4b1c <.LBB11>

00004899 <.LM119>:
    4899:	ff 04 49                      	sub	r4, r9, r4
    489c:	4b 4e                         	add	r4, r14
    489e:	e3 6e                         	mov.l	r14, [r6]

000048a0 <.LM120>:
    48a0:	ef 9e                         	mov.l	r9, r14
    48a2:	64 7e                         	and	#7, r14

000048a4 <.LM121>:
    48a4:	3a 0c 02                      	beq.w	4ab0 <.LBB13>

000048a7 <.LM122>:
    48a7:	43 e9                         	sub	r14, r9
    48a9:	fb 4a 08 10                   	mov.l	#0x1008, r4

000048ad <.LM123>:
    48ad:	62 89                         	add	#8, r9

000048af <.LVL83>:
    48af:	ff 0e e4                      	sub	r14, r4, r14

000048b2 <.LM124>:
    48b2:	4b 98                         	add	r9, r8

000048b4 <.LVL85>:
    48b4:	76 28 ff 0f                   	and	#0xfff, r8
    48b8:	ff 08 8e                      	sub	r8, r14, r8

000048bb <.LM125>:
    48bb:	ef b1                         	mov.l	r11, r1

000048bd <.LVL87>:
    48bd:	ef 82                         	mov.l	r8, r2
    48bf:	7f 13                         	jsr	r3

000048c1 <.LM126>:
    48c1:	75 01 ff                      	cmp	#-1, r1
    48c4:	3a 77 02                      	beq.w	4b3b <.LM228>
    48c7:	ff 04 91                      	sub	r9, r1, r4
    48ca:	4b 84                         	add	r8, r4
    48cc:	65 14                         	or	#1, r4

000048ce <.LVL89>:
    48ce:	ef 00                         	nop

000048d0 <.LM127>:
    48d0:	ec 6e                         	mov.l	[r6], r14

000048d2 <.LM128>:
    48d2:	e7 c9 02                      	mov.l	r9, 8[r12]

000048d5 <.LM129>:
    48d5:	4b 8e                         	add	r8, r14
    48d7:	e3 6e                         	mov.l	r14, [r6]

000048d9 <.LM130>:
    48d9:	e7 94 01                      	mov.l	r4, 4[r9]

000048dc <.LM131>:
    48dc:	74 07 ac 84 00 00             	cmp	#0x84ac, r7
    48e2:	20 26                         	beq.b	4908 <.LM139>

000048e4 <.LM132>:
    48e4:	61 fd                         	cmp	#15, r13
    48e6:	24 05                         	bgtu.b	48eb <.LM133>
    48e8:	38 e2 01                      	bra.w	4aca <.LBB14>

000048eb <.LM133>:
    48eb:	a8 7c                         	mov.l	4[r7], r4

000048ed <.LM134>:
    48ed:	60 cd                         	sub	#12, r13

000048ef <.LVL90>:
    48ef:	75 2d f8                      	and	#-8, r13

000048f2 <.LM135>:
    48f2:	64 14                         	and	#1, r4
    48f4:	57 d4                         	or	r13, r4
    48f6:	a0 7c                         	mov.l	r4, 4[r7]

000048f8 <.LM136>:
    48f8:	ff 24 d7                      	add	r13, r7, r4
    48fb:	3e 41 05                      	mov.l	#5, 4[r4]

000048fe <.LM137>:
    48fe:	3e 42 05                      	mov.l	#5, 8[r4]

00004901 <.LM138>:
    4901:	61 fd                         	cmp	#15, r13
    4903:	25 05                         	bleu.b	4908 <.LM139>
    4905:	38 22 02                      	bra.w	4b27 <.LM227>

00004908 <.LM139>:
    4908:	fb 72 f8 88 00 00             	mov.l	#0x88f8, r7
    490e:	06 84 7e                      	cmp	[r7].l, r14
    4911:	25 07                         	bleu.b	4918 <.LM141>

00004913 <.LM140>:
    4913:	e3 7e                         	mov.l	r14, [r7]
    4915:	fc 13 00                      	nop

00004918 <.LM141>:
    4918:	fb d2 f4 88 00 00             	mov.l	#0x88f4, r13
    491e:	06 84 de                      	cmp	[r13].l, r14
    4921:	ed c7 02                      	mov.l	8[r12], r7
    4924:	25 04                         	bleu.b	4928 <.LM142+0x2>

00004926 <.LM142>:
    4926:	e3 de                         	mov.l	r14, [r13]
    4928:	ed 7d 01                      	mov.l	4[r7], r13
    492b:	75 2d fc                      	and	#-4, r13
    492e:	ef 00                         	nop

00004930 <.LBE4>:
    4930:	ff 0e ad                      	sub	r10, r13, r14

00004933 <.LM144>:
    4933:	47 ad                         	cmp	r10, r13
    4935:	23 06                         	bnc.b	493b <.LM146>

00004937 <.LM145>:
    4937:	61 fe                         	cmp	#15, r14
    4939:	2a 0d                         	bgt.b	4946 <.LM149>

0000493b <.LM146>:
    493b:	ef b1                         	mov.l	r11, r1
    493d:	05 62 02 00                   	bsr.a	4b9f <___malloc_unlock>

00004941 <.LM147>:
    4941:	66 01                         	mov.l	#0, r1

00004943 <.LM148>:
    4943:	3f 6d 0b                      	rtsd	#44, r6-r13

00004946 <.LM149>:
    4946:	ef ad                         	mov.l	r10, r13
    4948:	65 1d                         	or	#1, r13
    494a:	e7 7d 01                      	mov.l	r13, 4[r7]

0000494d <.LM150>:
    494d:	4b 7a                         	add	r7, r10

0000494f <.LM151>:
    494f:	65 1e                         	or	#1, r14

00004951 <.LM152>:
    4951:	ef b1                         	mov.l	r11, r1

00004953 <.LM153>:
    4953:	e7 ae 01                      	mov.l	r14, 4[r10]

00004956 <.LM154>:
    4956:	e7 ca 02                      	mov.l	r10, 8[r12]

00004959 <.LM155>:
    4959:	05 46 02 00                   	bsr.a	4b9f <___malloc_unlock>

0000495d <.LM156>:
    495d:	71 71 08                      	add	#8, r7, r1

00004960 <.LM157>:
    4960:	3f 6d 0b                      	rtsd	#44, r6-r13

00004963 <.LM158>:
    4963:	75 51 14                      	cmp	#20, r1
    4966:	24 05                         	bgtu.b	496b <.LM159>
    4968:	38 0c 01                      	bra.w	4a74 <.LM208>

0000496b <.LM159>:
    496b:	75 51 54                      	cmp	#84, r1
    496e:	25 05                         	bleu.b	4973 <.LM160>
    4970:	38 2e 01                      	bra.w	4a9e <.LBE12>

00004973 <.LM160>:
    4973:	fd 8c a1                      	shlr	#12, r10, r1
    4976:	71 11 6e                      	add	#110, r1, r1
    4979:	ff 23 11                      	add	r1, r1, r3
    497c:	38 1a fd                      	bra.w	4696 <.LM33>

0000497f <.LM161>:
    497f:	fd 89 3d                      	shlr	#9, r3, r13
    4982:	61 4d                         	cmp	#4, r13
    4984:	24 05                         	bgtu.b	4989 <.LM162>
    4986:	38 f7 00                      	bra.w	4a7d <.LM209>

00004989 <.LM162>:
    4989:	75 5d 14                      	cmp	#20, r13
    498c:	25 05                         	bleu.b	4991 <.LM163>
    498e:	38 5f 01                      	bra.w	4aed <.LBE15>

00004991 <.LM163>:
    4991:	71 dd 5b                      	add	#91, r13, r13
    4994:	ff 22 dd                      	add	r13, r13, r2
    4997:	03                            	nop

00004998 <.LM164>:
    4998:	6c 22                         	shll	#2, r2
    499a:	70 22 ac 84 00 00             	add	#0x84ac, r2, r2

000049a0 <.LVL101>:
    49a0:	ed 2e 02                      	mov.l	8[r2], r14

000049a3 <.LVL102>:
    49a3:	47 2e                         	cmp	r2, r14
    49a5:	3a 12 01                      	beq.w	4ab7 <.LBE13>

000049a8 <.LM165>:
    49a8:	ed e4 01                      	mov.l	4[r14], r4
    49ab:	75 24 fc                      	and	#-4, r4
    49ae:	47 43                         	cmp	r4, r3
    49b0:	22 09                         	bc.b	49b9 <.LM167>

000049b2 <.LM166>:
    49b2:	ed ee 02                      	mov.l	8[r14], r14
    49b5:	47 e2                         	cmp	r14, r2
    49b7:	21 f1                         	bne.b	49a8 <.LM165>

000049b9 <.LM167>:
    49b9:	ed ed 03                      	mov.l	12[r14], r13

000049bc <.LVL104>:
    49bc:	ed c4 01                      	mov.l	4[r12], r4
    49bf:	03                            	nop

000049c0 <.LM168>:
    49c0:	e7 7d 03                      	mov.l	r13, 12[r7]
    49c3:	e7 7e 02                      	mov.l	r14, 8[r7]
    49c6:	e7 d7 02                      	mov.l	r7, 8[r13]
    49c9:	e7 e7 03                      	mov.l	r7, 12[r14]
    49cc:	38 77 fd                      	bra.w	4743 <.LM53>

000049cf <.LM169>:
    49cf:	ff 2d a7                      	add	r10, r7, r13

000049d2 <.LM170>:
    49d2:	e7 cd 05                      	mov.l	r13, 20[r12]
    49d5:	e7 cd 04                      	mov.l	r13, 16[r12]

000049d8 <.LM171>:
    49d8:	65 1a                         	or	#1, r10

000049da <.LM172>:
    49da:	ef ec                         	mov.l	r14, r12

000049dc <.LM173>:
    49dc:	e7 7a 01                      	mov.l	r10, 4[r7]

000049df <.LM174>:
    49df:	65 1c                         	or	#1, r12

000049e1 <.LM175>:
    49e1:	ff 2a ed                      	add	r14, r13, r10

000049e4 <.LM176>:
    49e4:	ef b1                         	mov.l	r11, r1

000049e6 <.LM177>:
    49e6:	f9 d2 03 b4 84 00 00          	mov.l	#0x84b4, 12[r13]
    49ed:	f9 d2 02 b4 84 00 00          	mov.l	#0x84b4, 8[r13]

000049f4 <.LM178>:
    49f4:	e7 dc 01                      	mov.l	r12, 4[r13]

000049f7 <.LM179>:
    49f7:	e3 ae                         	mov.l	r14, [r10]

000049f9 <.LM180>:
    49f9:	05 a6 01 00                   	bsr.a	4b9f <___malloc_unlock>

000049fd <.LM181>:
    49fd:	71 71 08                      	add	#8, r7, r1

00004a00 <.LM182>:
    4a00:	3f 6d 0b                      	rtsd	#44, r6-r13

00004a03 <.LVL110>:
    4a03:	ed c4 01                      	mov.l	4[r12], r4
    4a06:	38 3d fd                      	bra.w	4743 <.LM53>

00004a09 <.LM183>:
    4a09:	62 1d                         	add	#1, r13

00004a0b <.LM184>:
    4a0b:	62 82                         	add	#8, r2

00004a0d <.LM185>:
    4a0d:	fd 74 cd 03                   	tst	#3, r13
    4a11:	3b 61 fd                      	bne.w	4772 <.LM60>

00004a14 <.LM186>:
    4a14:	71 97 f8                      	add	#-8, r9, r7

00004a17 <.LM187>:
    4a17:	fd 74 c1 03                   	tst	#3, r1
    4a1b:	3a 4b 01                      	beq.w	4b66 <.LM234>

00004a1e <.LM188>:
    4a1e:	ed 79 02                      	mov.l	8[r7], r9

00004a21 <.LM189>:
    4a21:	60 11                         	sub	#1, r1

00004a23 <.LM190>:
    4a23:	47 79                         	cmp	r7, r9
    4a25:	20 ef                         	beq.b	4a14 <.LM186>
    4a27:	ed c7 01                      	mov.l	4[r12], r7

00004a2a <.LM191>:
    4a2a:	4b 33                         	add	r3, r3
    4a2c:	47 73                         	cmp	r7, r3
    4a2e:	25 05                         	bleu.b	4a33 <.LM192>
    4a30:	38 eb fd                      	bra.w	481b <.LM100>

00004a33 <.LM192>:
    4a33:	61 03                         	cmp	#0, r3
    4a35:	3a e6 fd                      	beq.w	481b <.LM100>

00004a38 <.LM193>:
    4a38:	fc 33 37                      	tst	r3, r7
    4a3b:	3a 38 01                      	beq.w	4b73 <.LM236>

00004a3e <.LM194>:
    4a3e:	ef d1                         	mov.l	r13, r1

00004a40 <.LVL120>:
    4a40:	38 23 fd                      	bra.w	4763 <.LM59>

00004a43 <.LM195>:
    4a43:	71 7c 08                      	add	#8, r7, r12

00004a46 <.LM196>:
    4a46:	a9 7f                         	mov.l	20[r7], r7

00004a48 <.LM197>:
    4a48:	47 7c                         	cmp	r7, r12
    4a4a:	3b fe fb                      	bne.w	4648 <.LM13>

00004a4d <.LM198>:
    4a4d:	62 21                         	add	#2, r1
    4a4f:	38 8b fc                      	bra.w	46da <.LM45>

00004a52 <.LM199>:
    4a52:	4b 7e                         	add	r7, r14

00004a54 <.LVL126>:
    4a54:	ed ea 01                      	mov.l	4[r14], r10

00004a57 <.LM200>:
    4a57:	ed 7c 03                      	mov.l	12[r7], r12

00004a5a <.LVL127>:
    4a5a:	ed 7d 02                      	mov.l	8[r7], r13

00004a5d <.LM201>:
    4a5d:	65 1a                         	or	#1, r10

00004a5f <.LM202>:
    4a5f:	ef b1                         	mov.l	r11, r1

00004a61 <.LM203>:
    4a61:	e7 ea 01                      	mov.l	r10, 4[r14]

00004a64 <.LM204>:
    4a64:	e7 dc 03                      	mov.l	r12, 12[r13]
    4a67:	e7 cd 02                      	mov.l	r13, 8[r12]

00004a6a <.LM205>:
    4a6a:	05 35 01 00                   	bsr.a	4b9f <___malloc_unlock>

00004a6e <.LM206>:
    4a6e:	71 71 08                      	add	#8, r7, r1

00004a71 <.LM207>:
    4a71:	3f 6d 0b                      	rtsd	#44, r6-r13

00004a74 <.LM208>:
    4a74:	71 11 5b                      	add	#91, r1, r1
    4a77:	ff 23 11                      	add	r1, r1, r3
    4a7a:	38 1c fc                      	bra.w	4696 <.LM33>

00004a7d <.LM209>:
    4a7d:	fd 86 3d                      	shlr	#6, r3, r13
    4a80:	71 dd 38                      	add	#56, r13, r13
    4a83:	ff 22 dd                      	add	r13, r13, r2
    4a86:	38 12 ff                      	bra.w	4998 <.LM164>

00004a89 <.LBB12>:
    4a89:	74 07 ac 84 00 00             	cmp	#0x84ac, r7
    4a8f:	3a f1 fd                      	beq.w	4880 <.LM116>
    4a92:	ed c7 02                      	mov.l	8[r12], r7

00004a95 <.LVL134>:
    4a95:	ed 7d 01                      	mov.l	4[r7], r13

00004a98 <.LVL135>:
    4a98:	75 2d fc                      	and	#-4, r13
    4a9b:	38 95 fe                      	bra.w	4930 <.LBE4>

00004a9e <.LBE12>:
    4a9e:	76 01 54 01                   	cmp	#340, r1
    4aa2:	24 33                         	bgtu.b	4ad5 <.LBE14>

00004aa4 <.LM212>:
    4aa4:	fd 8f a1                      	shlr	#15, r10, r1
    4aa7:	71 11 77                      	add	#119, r1, r1
    4aaa:	ff 23 11                      	add	r1, r1, r3
    4aad:	38 e9 fb                      	bra.w	4696 <.LM33>

00004ab0 <.LBB13>:
    4ab0:	fb ea 00 10                   	mov.l	#0x1000, r14

00004ab4 <.LVL138>:
    4ab4:	38 fe fd                      	bra.w	48b2 <.LM124>

00004ab7 <.LBE13>:
    4ab7:	6a 2d                         	shar	#2, r13

00004ab9 <.LVL140>:
    4ab9:	66 14                         	mov.l	#1, r4
    4abb:	fd 62 d4                      	shll	r13, r4
    4abe:	06 95 c4 01                   	or	4[r12].l, r4
    4ac2:	e7 c4 01                      	mov.l	r4, 4[r12]
    4ac5:	ef ed                         	mov.l	r14, r13
    4ac7:	38 f9 fe                      	bra.w	49c0 <.LM168>

00004aca <.LBB14>:
    4aca:	f9 96 01 01                   	mov.l	#1, 4[r9]
    4ace:	ef 97                         	mov.l	r9, r7

00004ad0 <.LVL142>:
    4ad0:	66 0d                         	mov.l	#0, r13

00004ad2 <.LVL143>:
    4ad2:	38 5e fe                      	bra.w	4930 <.LBE4>

00004ad5 <.LBE14>:
    4ad5:	76 01 54 05                   	cmp	#0x554, r1
    4ad9:	24 3a                         	bgtu.b	4b13 <.LBE10>

00004adb <.LM217>:
    4adb:	fd 92 a1                      	shlr	#18, r10, r1
    4ade:	71 11 7c                      	add	#124, r1, r1
    4ae1:	ff 23 11                      	add	r1, r1, r3
    4ae4:	38 b2 fb                      	bra.w	4696 <.LM33>

00004ae7 <.LBB15>:
    4ae7:	71 88 10                      	add	#16, r8, r8

00004aea <.LVL146>:
    4aea:	38 6e fd                      	bra.w	4858 <.LM112>

00004aed <.LBE15>:
    4aed:	75 5d 54                      	cmp	#84, r13
    4af0:	24 52                         	bgtu.b	4b42 <.LBE11>

00004af2 <.LM220>:
    4af2:	fd 8c 3d                      	shlr	#12, r3, r13
    4af5:	71 dd 6e                      	add	#110, r13, r13
    4af8:	ff 22 dd                      	add	r13, r13, r2
    4afb:	38 9d fe                      	bra.w	4998 <.LM164>

00004afe <.LBB10>:
    4afe:	fd 78 c4 ff 0f                	tst	#0xfff, r4
    4b03:	3b 8e fd                      	bne.w	4891 <.LM118>

00004b06 <.LM222>:
    4b06:	ed c7 02                      	mov.l	8[r12], r7

00004b09 <.LM223>:
    4b09:	4b 8d                         	add	r8, r13

00004b0b <.LM224>:
    4b0b:	65 1d                         	or	#1, r13

00004b0d <.LVL152>:
    4b0d:	e7 7d 01                      	mov.l	r13, 4[r7]
    4b10:	38 f8 fd                      	bra.w	4908 <.LM139>

00004b13 <.LBE10>:
    4b13:	75 43 fc                      	mov.l	#252, r3
    4b16:	75 41 7e                      	mov.l	#126, r1
    4b19:	38 7d fb                      	bra.w	4696 <.LM33>

00004b1c <.LBB11>:
    4b1c:	fb e2 a4 84 00 00             	mov.l	#0x84a4, r14
    4b22:	e3 e9                         	mov.l	r9, [r14]
    4b24:	38 7c fd                      	bra.w	48a0 <.LM120>

00004b27 <.LM227>:
    4b27:	71 72 08                      	add	#8, r7, r2
    4b2a:	ef b1                         	mov.l	r11, r1
    4b2c:	05 d4 f6 ff                   	bsr.a	4200 <__free_r>

00004b30 <.LVL156>:
    4b30:	fb 72 cc 88 00 00             	mov.l	#0x88cc, r7

00004b36 <.LVL157>:
    4b36:	ec 7e                         	mov.l	[r7], r14
    4b38:	38 d0 fd                      	bra.w	4908 <.LM139>

00004b3b <.LM228>:
    4b3b:	66 14                         	mov.l	#1, r4

00004b3d <.LM229>:
    4b3d:	66 08                         	mov.l	#0, r8

00004b3f <.LVL159>:
    4b3f:	38 91 fd                      	bra.w	48d0 <.LM127>

00004b42 <.LBE11>:
    4b42:	76 0d 54 01                   	cmp	#340, r13
    4b46:	24 0e                         	bgtu.b	4b54 <.LM232>

00004b48 <.LM231>:
    4b48:	fd 8f 3d                      	shlr	#15, r3, r13
    4b4b:	71 dd 77                      	add	#119, r13, r13
    4b4e:	ff 22 dd                      	add	r13, r13, r2
    4b51:	38 47 fe                      	bra.w	4998 <.LM164>

00004b54 <.LM232>:
    4b54:	76 0d 54 05                   	cmp	#0x554, r13
    4b58:	24 22                         	bgtu.b	4b7a <.LM238>

00004b5a <.LM233>:
    4b5a:	fd 92 3d                      	shlr	#18, r3, r13
    4b5d:	71 dd 7c                      	add	#124, r13, r13
    4b60:	ff 22 dd                      	add	r13, r13, r2
    4b63:	38 35 fe                      	bra.w	4998 <.LM164>

00004b66 <.LM234>:
    4b66:	fc 3b 37                      	not	r3, r7
    4b69:	06 91 c7 01                   	and	4[r12].l, r7
    4b6d:	e7 c7 01                      	mov.l	r7, 4[r12]

00004b70 <.LM235>:
    4b70:	38 ba fe                      	bra.w	4a2a <.LM191>

00004b73 <.LM236>:
    4b73:	4b 33                         	add	r3, r3

00004b75 <.LM237>:
    4b75:	62 4d                         	add	#4, r13

00004b77 <.LVL164>:
    4b77:	38 c1 fe                      	bra.w	4a38 <.LM193>

00004b7a <.LM238>:
    4b7a:	75 42 fc                      	mov.l	#252, r2
    4b7d:	75 4d 7e                      	mov.l	#126, r13
    4b80:	38 18 fe                      	bra.w	4998 <.LM164>

00004b83 <.LFE1>:
    4b83:	77 10 01 00 00                	mul	#1, r0

00004b88 <_memchr>:
    4b88:	61 03                         	cmp	#0, r3
    4b8a:	fd 74 e1 01                   	stz	#1, r1
    4b8e:	7f 80                         	suntil.b
    4b90:	fd 74 f1 01                   	stnz	#1, r1
    4b94:	60 11                         	sub	#1, r1
    4b96:	02                            	rts

00004b97 <_memcpy>:
    4b97:	ef 14                         	mov.l	r1, r4
    4b99:	7f 8f                         	smovf
    4b9b:	ef 41                         	mov.l	r4, r1
    4b9d:	02                            	rts

00004b9e <___malloc_lock>:
    4b9e:	02                            	rts

00004b9f <___malloc_unlock>:
    4b9f:	02                            	rts

00004ba0 <__Balloc>:
    4ba0:	6e 7b                         	pushm	r7-r11

00004ba2 <.LCFI0>:
    4ba2:	ed 1e 13                      	mov.l	76[r1], r14

00004ba5 <.LM3>:
    4ba5:	ef 17                         	mov.l	r1, r7

00004ba7 <.LM4>:
    4ba7:	61 0e                         	cmp	#0, r14

00004ba9 <.LM5>:
    4ba9:	ef 2a                         	mov.l	r2, r10

00004bab <.LM6>:
    4bab:	20 1e                         	beq.b	4bc9 <.LM11>

00004bad <.LM7>:
    4bad:	fd c2 a4                      	shll	#2, r10, r4
    4bb0:	4b 4e                         	add	r4, r14
    4bb2:	ec e1                         	mov.l	[r14], r1

00004bb4 <.LVL2>:
    4bb4:	61 01                         	cmp	#0, r1
    4bb6:	20 29                         	beq.b	4bdf <.LM17>

00004bb8 <.LM8>:
    4bb8:	ec 17                         	mov.l	[r1], r7

00004bba <.LVL3>:
    4bba:	e3 e7                         	mov.l	r7, [r14]
    4bbc:	76 10 01 00                   	mul	#1, r0

00004bc0 <.LM9>:
    4bc0:	3e 14 00                      	mov.l	#0, 16[r1]
    4bc3:	3e 13 00                      	mov.l	#0, 12[r1]

00004bc6 <.LM10>:
    4bc6:	3f 7b 05                      	rtsd	#20, r7-r11

00004bc9 <.LM11>:
    4bc9:	66 42                         	mov.l	#4, r2

00004bcb <.LVL5>:
    4bcb:	75 43 21                      	mov.l	#33, r3
    4bce:	05 d2 16 00                   	bsr.a	62a0 <__calloc_r>

00004bd2 <.LVL6>:
    4bd2:	a4 f9                         	mov.l	r1, 76[r7]

00004bd4 <.LM12>:
    4bd4:	61 01                         	cmp	#0, r1

00004bd6 <.LM13>:
    4bd6:	ef 1e                         	mov.l	r1, r14

00004bd8 <.LM14>:
    4bd8:	21 d5                         	bne.b	4bad <.LM7>

00004bda <.LM15>:
    4bda:	66 01                         	mov.l	#0, r1

00004bdc <.LM16>:
    4bdc:	3f 7b 05                      	rtsd	#20, r7-r11

00004bdf <.LM17>:
    4bdf:	66 12                         	mov.l	#1, r2
    4be1:	ef 2b                         	mov.l	r2, r11
    4be3:	fd 62 ab                      	shll	r10, r11

00004be6 <.LM18>:
    4be6:	71 b3 05                      	add	#5, r11, r3
    4be9:	6c 23                         	shll	#2, r3
    4beb:	ef 71                         	mov.l	r7, r1

00004bed <.LVL9>:
    4bed:	05 b3 16 00                   	bsr.a	62a0 <__calloc_r>

00004bf1 <.LM19>:
    4bf1:	61 01                         	cmp	#0, r1
    4bf3:	20 e7                         	beq.b	4bda <.LM15>

00004bf5 <.LM20>:
    4bf5:	e7 1a 01                      	mov.l	r10, 4[r1]

00004bf8 <.LM21>:
    4bf8:	e7 1b 02                      	mov.l	r11, 8[r1]
    4bfb:	2e c5                         	bra.b	4bc0 <.LM9>

00004bfd <.LFE0>:
    4bfd:	fc 13 00                      	nop

00004c00 <__Bfree>:
    4c00:	61 02                         	cmp	#0, r2
    4c02:	20 16                         	beq.b	4c18 <.LCFI2>

00004c04 <.LM24>:
    4c04:	ed 2e 01                      	mov.l	4[r2], r14

00004c07 <.LM25>:
    4c07:	7e a7                         	push.l	r7

00004c09 <.LCFI1>:
    4c09:	6c 2e                         	shll	#2, r14
    4c0b:	06 89 1e 13                   	add	76[r1].l, r14
    4c0f:	ec e7                         	mov.l	[r14], r7
    4c11:	e3 27                         	mov.l	r7, [r2]

00004c13 <.LM27>:
    4c13:	e3 e2                         	mov.l	r2, [r14]

00004c15 <.LM28>:
    4c15:	3f 77 01                      	rtsd	#4, r7-r7

00004c18 <.LCFI2>:
    4c18:	02                            	rts

00004c19 <.LFE1>:
    4c19:	00                            	brk
    4c1a:	00                            	brk
    4c1b:	00                            	brk
    4c1c:	00                            	brk
    4c1d:	00                            	brk
	...

00004c20 <___multadd>:
    4c20:	6e 7d                         	pushm	r7-r13

00004c22 <.LCFI3>:
    4c22:	a9 27                         	mov.l	16[r2], r7

00004c24 <.LM31>:
    4c24:	ef 2a                         	mov.l	r2, r10
    4c26:	ef 1b                         	mov.l	r1, r11

00004c28 <.LM32>:
    4c28:	71 25 14                      	add	#20, r2, r5

00004c2b <.LM33>:
    4c2b:	66 0e                         	mov.l	#0, r14

00004c2d <.LVL14>:
    4c2d:	fc 13 00                      	nop

00004c30 <.LM34>:
    4c30:	ec 5f                         	mov.l	[r5], r15

00004c32 <.LM35>:
    4c32:	62 1e                         	add	#1, r14

00004c34 <.LM36>:
    4c34:	ef f2                         	mov.l	r15, r2
    4c36:	77 22 ff ff 00                	and	#0xffff, r2
    4c3b:	4f 32                         	mul	r3, r2
    4c3d:	4b 24                         	add	r2, r4

00004c3f <.LM37>:
    4c3f:	69 0f                         	shlr	#16, r15

00004c41 <.LVL18>:
    4c41:	fd 90 42                      	shlr	#16, r4, r2
    4c44:	4f 3f                         	mul	r3, r15
    4c46:	4b 2f                         	add	r2, r15

00004c48 <.LM38>:
    4c48:	fd d0 f2                      	shll	#16, r15, r2
    4c4b:	77 24 ff ff 00                	and	#0xffff, r4

00004c50 <.LVL20>:
    4c50:	4b 24                         	add	r2, r4

00004c52 <.LM39>:
    4c52:	fd 90 fd                      	shlr	#16, r15, r13

00004c55 <.LM40>:
    4c55:	fd 22 54                      	mov.l	r4, [r5+]

00004c58 <.LM41>:
    4c58:	47 e7                         	cmp	r14, r7

00004c5a <.LM42>:
    4c5a:	ef d4                         	mov.l	r13, r4

00004c5c <.LM43>:
    4c5c:	2a d4                         	bgt.b	4c30 <.LM34>

00004c5e <.LM44>:
    4c5e:	61 0d                         	cmp	#0, r13
    4c60:	20 13                         	beq.b	4c73 <.LM48>

00004c62 <.LM45>:
    4c62:	06 85 a7 02                   	cmp	8[r10].l, r7
    4c66:	28 12                         	bge.b	4c78 <.LM49>

00004c68 <.LM46>:
    4c68:	71 7b 05                      	add	#5, r7, r11
    4c6b:	62 17                         	add	#1, r7

00004c6d <.LVL24>:
    4c6d:	fe 2b ad                      	mov.l	r13, [r11, r10]

00004c70 <.LM47>:
    4c70:	e7 a7 04                      	mov.l	r7, 16[r10]

00004c73 <.LM48>:
    4c73:	ef a1                         	mov.l	r10, r1
    4c75:	3f 7d 07                      	rtsd	#28, r7-r13

00004c78 <.LM49>:
    4c78:	ed a2 01                      	mov.l	4[r10], r2
    4c7b:	ef b1                         	mov.l	r11, r1

00004c7d <.LVL28>:
    4c7d:	62 12                         	add	#1, r2
    4c7f:	05 21 ff ff                   	bsr.a	4ba0 <__Balloc>

00004c83 <.LM50>:
    4c83:	ed a3 04                      	mov.l	16[r10], r3

00004c86 <.LM51>:
    4c86:	ef 1c                         	mov.l	r1, r12

00004c88 <.LM52>:
    4c88:	62 23                         	add	#2, r3
    4c8a:	71 a2 0c                      	add	#12, r10, r2
    4c8d:	62 c1                         	add	#12, r1

00004c8f <.LVL31>:
    4c8f:	6c 23                         	shll	#2, r3
    4c91:	05 06 ff ff                   	bsr.a	4b97 <_memcpy>

00004c95 <.LBB8>:
    4c95:	ed ae 01                      	mov.l	4[r10], r14
    4c98:	6c 2e                         	shll	#2, r14
    4c9a:	06 89 be 13                   	add	76[r11].l, r14
    4c9e:	ec eb                         	mov.l	[r14], r11

00004ca0 <.LVL33>:
    4ca0:	e3 ab                         	mov.l	r11, [r10]

00004ca2 <.LM54>:
    4ca2:	e3 ea                         	mov.l	r10, [r14]

00004ca4 <.LM55>:
    4ca4:	ef ca                         	mov.l	r12, r10

00004ca6 <.LVL34>:
    4ca6:	2e c2                         	bra.b	4c68 <.LM46>

00004ca8 <___s2b>:
    4ca8:	6e 7d                         	pushm	r7-r13

00004caa <.LCFI4>:
    4caa:	71 4d 08                      	add	#8, r4, r13

00004cad <.LM58>:
    4cad:	60 40                         	sub	#4, r0

00004caf <.LCFI5>:
    4caf:	fd 74 8d 09                   	div	#9, r13

00004cb3 <.LM60>:
    4cb3:	61 1d                         	cmp	#1, r13

00004cb5 <.LM61>:
    4cb5:	ef 4b                         	mov.l	r4, r11
    4cb7:	ef 1a                         	mov.l	r1, r10
    4cb9:	ef 27                         	mov.l	r2, r7
    4cbb:	ef 3c                         	mov.l	r3, r12
    4cbd:	ed 09 09                      	mov.l	36[r0], r9

00004cc0 <.LM62>:
    4cc0:	2b 75                         	ble.b	4d35 <.LM87>
    4cc2:	66 1e                         	mov.l	#1, r14
    4cc4:	66 02                         	mov.l	#0, r2

00004cc6 <.LM63>:
    4cc6:	4b ee                         	add	r14, r14

00004cc8 <.LVL38>:
    4cc8:	62 12                         	add	#1, r2

00004cca <.LVL39>:
    4cca:	47 ed                         	cmp	r14, r13
    4ccc:	2a fa                         	bgt.b	4cc6 <.LM63>

00004cce <.LM64>:
    4cce:	ef a1                         	mov.l	r10, r1

00004cd0 <.LVL41>:
    4cd0:	05 d0 fe ff                   	bsr.a	4ba0 <__Balloc>

00004cd4 <.LM65>:
    4cd4:	e7 19 05                      	mov.l	r9, 20[r1]

00004cd7 <.LM66>:
    4cd7:	3e 14 01                      	mov.l	#1, 16[r1]

00004cda <.LM67>:
    4cda:	61 9c                         	cmp	#9, r12

00004cdc <.LM68>:
    4cdc:	ef 12                         	mov.l	r1, r2

00004cde <.LM69>:
    4cde:	2b 51                         	ble.b	4d2f <.LM85>

00004ce0 <.LM70>:
    4ce0:	71 78 09                      	add	#9, r7, r8

00004ce3 <.LM71>:
    4ce3:	ff 29 c7                      	add	r12, r7, r9
    4ce6:	fb d2 20 4c 00 00             	mov.l	#0x4c20, r13

00004cec <.LM72>:
    4cec:	ef 87                         	mov.l	r8, r7

00004cee <.LVL46>:
    4cee:	ef 00                         	nop

00004cf0 <.LM73>:
    4cf0:	fd 38 74                      	movu.b	[r7+], r4
    4cf3:	ef a1                         	mov.l	r10, r1

00004cf5 <.LVL48>:
    4cf5:	71 44 d0                      	add	#-48, r4, r4
    4cf8:	66 a3                         	mov.l	#10, r3
    4cfa:	7f 1d                         	jsr	r13

00004cfc <.LM74>:
    4cfc:	47 97                         	cmp	r9, r7

00004cfe <.LM75>:
    4cfe:	ef 12                         	mov.l	r1, r2

00004d00 <.LM76>:
    4d00:	21 f0                         	bne.b	4cf0 <.LM73>
    4d02:	ff 27 c8                      	add	r12, r8, r7

00004d05 <.LM77>:
    4d05:	60 87                         	sub	#8, r7

00004d07 <.LVL52>:
    4d07:	03                            	nop

00004d08 <.LM78>:
    4d08:	47 cb                         	cmp	r12, r11
    4d0a:	2b 20                         	ble.b	4d2a <.LM84>

00004d0c <.LM79>:
    4d0c:	43 cb                         	sub	r12, r11

00004d0e <.LVL53>:
    4d0e:	4b 7b                         	add	r7, r11
    4d10:	fb d2 20 4c 00 00             	mov.l	#0x4c20, r13

00004d16 <.LVL54>:
    4d16:	ef 00                         	nop

00004d18 <.LM80>:
    4d18:	fd 38 74                      	movu.b	[r7+], r4
    4d1b:	ef a1                         	mov.l	r10, r1

00004d1d <.LVL56>:
    4d1d:	71 44 d0                      	add	#-48, r4, r4
    4d20:	66 a3                         	mov.l	#10, r3
    4d22:	7f 1d                         	jsr	r13

00004d24 <.LM81>:
    4d24:	47 b7                         	cmp	r11, r7

00004d26 <.LM82>:
    4d26:	ef 12                         	mov.l	r1, r2

00004d28 <.LM83>:
    4d28:	21 f0                         	bne.b	4d18 <.LM80>

00004d2a <.LM84>:
    4d2a:	ef 21                         	mov.l	r2, r1

00004d2c <.LVL59>:
    4d2c:	3f 7d 08                      	rtsd	#32, r7-r13

00004d2f <.LM85>:
    4d2f:	62 a7                         	add	#10, r7

00004d31 <.LM86>:
    4d31:	66 9c                         	mov.l	#9, r12

00004d33 <.LVL62>:
    4d33:	2e d5                         	bra.b	4d08 <.LM78>

00004d35 <.LM87>:
    4d35:	66 02                         	mov.l	#0, r2

00004d37 <.LVL64>:
    4d37:	2e 97                         	bra.b	4cce <.LM64>

00004d39 <.LFE3>:
    4d39:	0f                            	bra.s	4d40 <___hi0bits>
    4d3a:	03                            	nop
    4d3b:	03                            	nop
    4d3c:	03                            	nop
    4d3d:	03                            	nop
    4d3e:	03                            	nop
    4d3f:	03                            	nop

00004d40 <___hi0bits>:
    4d40:	fd 7c c1 00 00 ff             	tst	#0xffff0000, r1

00004d46 <.LM90>:
    4d46:	ef 1e                         	mov.l	r1, r14

00004d48 <.LM91>:
    4d48:	21 44                         	bne.b	4d8c <.LM107>

00004d4a <.LM92>:
    4d4a:	6d 0e                         	shll	#16, r14

00004d4c <.LM93>:
    4d4c:	75 41 10                      	mov.l	#16, r1

00004d4f <.LVL68>:
    4d4f:	03                            	nop

00004d50 <.LM94>:
    4d50:	fd 70 ce 00 00 00 ff          	tst	#0xff000000, r14
    4d57:	19                            	bne.s	4d60 <.LM97>

00004d58 <.LM95>:
    4d58:	62 81                         	add	#8, r1

00004d5a <.LM96>:
    4d5a:	6c 8e                         	shll	#8, r14
    4d5c:	76 10 01 00                   	mul	#1, r0

00004d60 <.LM97>:
    4d60:	fd 70 ce 00 00 00 f0          	tst	#0xf0000000, r14
    4d67:	19                            	bne.s	4d70 <.LM100>

00004d68 <.LM98>:
    4d68:	62 41                         	add	#4, r1

00004d6a <.LM99>:
    4d6a:	6c 4e                         	shll	#4, r14
    4d6c:	76 10 01 00                   	mul	#1, r0

00004d70 <.LM100>:
    4d70:	fd 70 ce 00 00 00 c0          	tst	#0xc0000000, r14
    4d77:	1d                            	bne.s	4d7c <.LM103>

00004d78 <.LM101>:
    4d78:	62 21                         	add	#2, r1

00004d7a <.LM102>:
    4d7a:	6c 2e                         	shll	#2, r14

00004d7c <.LM103>:
    4d7c:	61 0e                         	cmp	#0, r14
    4d7e:	29 0d                         	blt.b	4d8b <.LM106>

00004d80 <.LM104>:
    4d80:	fd 70 ce 00 00 00 40          	tst	#0x40000000, r14
    4d87:	19                            	bne.s	4d90 <.LM108>

00004d88 <.LM105>:
    4d88:	75 41 20                      	mov.l	#32, r1

00004d8b <.LM106>:
    4d8b:	02                            	rts

00004d8c <.LM107>:
    4d8c:	66 01                         	mov.l	#0, r1

00004d8e <.LVL78>:
    4d8e:	2e c2                         	bra.b	4d50 <.LM94>

00004d90 <.LM108>:
    4d90:	62 11                         	add	#1, r1

00004d92 <.LVL80>:
    4d92:	02                            	rts

00004d93 <.LFE4>:
    4d93:	77 10 01 00 00                	mul	#1, r0

00004d98 <___lo0bits>:
    4d98:	ec 1e                         	mov.l	[r1], r14

00004d9a <.LM111>:
    4d9a:	ef 14                         	mov.l	r1, r4

00004d9c <.LM112>:
    4d9c:	ef e1                         	mov.l	r14, r1

00004d9e <.LVL83>:
    4d9e:	64 71                         	and	#7, r1
    4da0:	20 15                         	beq.b	4db5 <.LM117>

00004da2 <.LM113>:
    4da2:	fd 74 ce 01                   	tst	#1, r14
    4da6:	21 55                         	bne.b	4dfb <.LM137>

00004da8 <.LM114>:
    4da8:	fd 74 ce 02                   	tst	#2, r14
    4dac:	21 52                         	bne.b	4dfe <.LM138>

00004dae <.LM115>:
    4dae:	68 2e                         	shlr	#2, r14

00004db0 <.LVL84>:
    4db0:	e3 4e                         	mov.l	r14, [r4]

00004db2 <.LM116>:
    4db2:	66 21                         	mov.l	#2, r1
    4db4:	02                            	rts

00004db5 <.LM117>:
    4db5:	ef e3                         	mov.l	r14, r3
    4db7:	77 23 ff ff 00                	and	#0xffff, r3
    4dbc:	1e                            	bne.s	4dc2 <.LM120>

00004dbd <.LM118>:
    4dbd:	69 0e                         	shlr	#16, r14

00004dbf <.LM119>:
    4dbf:	75 41 10                      	mov.l	#16, r1

00004dc2 <.LM120>:
    4dc2:	ef e3                         	mov.l	r14, r3
    4dc4:	76 23 ff 00                   	and	#255, r3
    4dc8:	18                            	bne.s	4dd0 <.LM123>

00004dc9 <.LM121>:
    4dc9:	62 81                         	add	#8, r1

00004dcb <.LM122>:
    4dcb:	68 8e                         	shlr	#8, r14
    4dcd:	fc 13 00                      	nop

00004dd0 <.LM123>:
    4dd0:	fd 74 ce 0f                   	tst	#15, r14
    4dd4:	1d                            	bne.s	4dd9 <.LM126>

00004dd5 <.LM124>:
    4dd5:	62 41                         	add	#4, r1

00004dd7 <.LM125>:
    4dd7:	68 4e                         	shlr	#4, r14

00004dd9 <.LM126>:
    4dd9:	fd 74 ce 03                   	tst	#3, r14
    4ddd:	21 0b                         	bne.b	4de8 <.LM129>

00004ddf <.LM127>:
    4ddf:	62 21                         	add	#2, r1

00004de1 <.LM128>:
    4de1:	68 2e                         	shlr	#2, r14
    4de3:	77 10 01 00 00                	mul	#1, r0

00004de8 <.LM129>:
    4de8:	fd 74 ce 01                   	tst	#1, r14
    4dec:	21 0c                         	bne.b	4df8 <.LM135>

00004dee <.LM130>:
    4dee:	68 1e                         	shlr	#1, r14

00004df0 <.LM131>:
    4df0:	1d                            	bne.s	4df5 <.LM134>

00004df1 <.LM132>:
    4df1:	75 41 20                      	mov.l	#32, r1

00004df4 <.LM133>:
    4df4:	02                            	rts

00004df5 <.LM134>:
    4df5:	62 11                         	add	#1, r1

00004df7 <.LVL99>:
    4df7:	03                            	nop

00004df8 <.LM135>:
    4df8:	e3 4e                         	mov.l	r14, [r4]

00004dfa <.LM136>:
    4dfa:	02                            	rts

00004dfb <.LM137>:
    4dfb:	66 01                         	mov.l	#0, r1
    4dfd:	02                            	rts

00004dfe <.LM138>:
    4dfe:	68 1e                         	shlr	#1, r14

00004e00 <.LVL101>:
    4e00:	e3 4e                         	mov.l	r14, [r4]

00004e02 <.LM139>:
    4e02:	66 11                         	mov.l	#1, r1
    4e04:	02                            	rts

00004e05 <.LFE5>:
    4e05:	fc 13 00                      	nop

00004e08 <___i2b>:
    4e08:	7e a7                         	push.l	r7

00004e0a <.LCFI6>:
    4e0a:	ef 27                         	mov.l	r2, r7

00004e0c <.LM142>:
    4e0c:	66 12                         	mov.l	#1, r2

00004e0e <.LVL103>:
    4e0e:	05 92 fd ff                   	bsr.a	4ba0 <__Balloc>

00004e12 <.LM143>:
    4e12:	a1 1f                         	mov.l	r7, 20[r1]

00004e14 <.LM144>:
    4e14:	3e 14 01                      	mov.l	#1, 16[r1]

00004e17 <.LM145>:
    4e17:	3f 77 01                      	rtsd	#4, r7-r7

00004e1a <.LFE6>:
    4e1a:	00                            	brk
    4e1b:	00                            	brk
    4e1c:	00                            	brk
    4e1d:	00                            	brk
	...

00004e20 <___multiply>:
    4e20:	6e 6d                         	pushm	r6-r13

00004e22 <.LCFI7>:
    4e22:	ed 28 04                      	mov.l	16[r2], r8
    4e25:	a9 36                         	mov.l	16[r3], r6

00004e27 <.LM148>:
    4e27:	60 40                         	sub	#4, r0

00004e29 <.LCFI8>:
    4e29:	47 68                         	cmp	r6, r8

00004e2b <.LM150>:
    4e2b:	ef 29                         	mov.l	r2, r9
    4e2d:	ef 3c                         	mov.l	r3, r12

00004e2f <.LM151>:
    4e2f:	28 0c                         	bge.b	4e3b <.LM152>
    4e31:	ef 8a                         	mov.l	r8, r10
    4e33:	ef 39                         	mov.l	r3, r9
    4e35:	ef 68                         	mov.l	r6, r8
    4e37:	ef 2c                         	mov.l	r2, r12
    4e39:	ef a6                         	mov.l	r10, r6

00004e3b <.LM152>:
    4e3b:	ff 2a 68                      	add	r6, r8, r10

00004e3e <.LM153>:
    4e3e:	06 85 9a 02                   	cmp	8[r9].l, r10

00004e42 <.LM154>:
    4e42:	ed 92 01                      	mov.l	4[r9], r2

00004e45 <.LM155>:
    4e45:	2b 04                         	ble.b	4e49 <.LM157>

00004e47 <.LM156>:
    4e47:	62 12                         	add	#1, r2

00004e49 <.LM157>:
    4e49:	05 57 fd ff                   	bsr.a	4ba0 <__Balloc>

00004e4d <.LM158>:
    4e4d:	71 ab 05                      	add	#5, r10, r11
    4e50:	6c 2b                         	shll	#2, r11
    4e52:	ef 17                         	mov.l	r1, r7
    4e54:	71 77 14                      	add	#20, r7, r7
    4e57:	4b 1b                         	add	r1, r11

00004e59 <.LM159>:
    4e59:	e3 01                         	mov.l	r1, [r0]

00004e5b <.LM160>:
    4e5b:	47 b7                         	cmp	r11, r7
    4e5d:	ef 7d                         	mov.l	r7, r13
    4e5f:	22 0b                         	bc.b	4e6a <.LM163>

00004e61 <.LM161>:
    4e61:	66 0e                         	mov.l	#0, r14
    4e63:	fd 22 de                      	mov.l	r14, [r13+]

00004e66 <.LM162>:
    4e66:	47 db                         	cmp	r13, r11
    4e68:	24 f9                         	bgtu.b	4e61 <.LM161>

00004e6a <.LM163>:
    4e6a:	62 56                         	add	#5, r6

00004e6c <.LM164>:
    4e6c:	71 85 05                      	add	#5, r8, r5

00004e6f <.LM165>:
    4e6f:	6c 26                         	shll	#2, r6

00004e71 <.LM166>:
    4e71:	6c 25                         	shll	#2, r5

00004e73 <.LM167>:
    4e73:	71 cf 14                      	add	#20, r12, r15

00004e76 <.LM168>:
    4e76:	71 9d 14                      	add	#20, r9, r13

00004e79 <.LM169>:
    4e79:	4b 6c                         	add	r6, r12

00004e7b <.LM170>:
    4e7b:	4b 95                         	add	r9, r5

00004e7d <.LM171>:
    4e7d:	47 cf                         	cmp	r12, r15
    4e7f:	23 05                         	bnc.b	4e84 <.LM172>
    4e81:	38 ab 00                      	bra.w	4f2c <.LM197>

00004e84 <.LM172>:
    4e84:	ec f9                         	mov.l	[r15], r9
    4e86:	ef 98                         	mov.l	r9, r8
    4e88:	77 28 ff ff 00                	and	#0xffff, r8

00004e8d <.LVL119>:
    4e8d:	20 49                         	beq.b	4ed6 <.LM184>
    4e8f:	ef d4                         	mov.l	r13, r4
    4e91:	ef 7e                         	mov.l	r7, r14
    4e93:	66 03                         	mov.l	#0, r3
    4e95:	fc 13 00                      	nop

00004e98 <.LM173>:
    4e98:	fd 2a 49                      	mov.l	[r4+], r9
    4e9b:	ec e1                         	mov.l	[r14], r1
    4e9d:	ef 92                         	mov.l	r9, r2
    4e9f:	77 22 ff ff 00                	and	#0xffff, r2
    4ea4:	ef 16                         	mov.l	r1, r6
    4ea6:	77 26 ff ff 00                	and	#0xffff, r6
    4eab:	4f 82                         	mul	r8, r2
    4ead:	4b 62                         	add	r6, r2

00004eaf <.LM174>:
    4eaf:	69 09                         	shlr	#16, r9

00004eb1 <.LM175>:
    4eb1:	4b 32                         	add	r3, r2

00004eb3 <.LM176>:
    4eb3:	69 01                         	shlr	#16, r1
    4eb5:	ff 33 89                      	mul 	r8, r9, r3
    4eb8:	4b 13                         	add	r1, r3

00004eba <.LM177>:
    4eba:	fd 90 26                      	shlr	#16, r2, r6

00004ebd <.LM178>:
    4ebd:	4b 63                         	add	r6, r3

00004ebf <.LM179>:
    4ebf:	fd d0 31                      	shll	#16, r3, r1
    4ec2:	77 22 ff ff 00                	and	#0xffff, r2

00004ec7 <.LVL124>:
    4ec7:	57 12                         	or	r1, r2

00004ec9 <.LM180>:
    4ec9:	69 03                         	shlr	#16, r3

00004ecb <.LM181>:
    4ecb:	fd 22 e2                      	mov.l	r2, [r14+]

00004ece <.LM182>:
    4ece:	47 45                         	cmp	r4, r5
    4ed0:	24 c8                         	bgtu.b	4e98 <.LM173>

00004ed2 <.LM183>:
    4ed2:	e3 e3                         	mov.l	r3, [r14]
    4ed4:	ec f9                         	mov.l	[r15], r9

00004ed6 <.LM184>:
    4ed6:	69 09                         	shlr	#16, r9

00004ed8 <.LVL128>:
    4ed8:	20 49                         	beq.b	4f21 <.LM196>

00004eda <.LM185>:
    4eda:	ec 73                         	mov.l	[r7], r3

00004edc <.LVL130>:
    4edc:	ef 72                         	mov.l	r7, r2
    4ede:	ef de                         	mov.l	r13, r14
    4ee0:	ef 31                         	mov.l	r3, r1

00004ee2 <.LM186>:
    4ee2:	66 06                         	mov.l	#0, r6

00004ee4 <.LM187>:
    4ee4:	ef e8                         	mov.l	r14, r8

00004ee6 <.LM188>:
    4ee6:	fd 2a e4                      	mov.l	[r14+], r4
    4ee9:	69 01                         	shlr	#16, r1
    4eeb:	77 24 ff ff 00                	and	#0xffff, r4
    4ef0:	4f 94                         	mul	r9, r4
    4ef2:	4b 14                         	add	r1, r4
    4ef4:	4b 64                         	add	r6, r4

00004ef6 <.LM189>:
    4ef6:	fd d0 41                      	shll	#16, r4, r1
    4ef9:	77 23 ff ff 00                	and	#0xffff, r3

00004efe <.LVL133>:
    4efe:	57 13                         	or	r1, r3
    4f00:	fd 22 23                      	mov.l	r3, [r2+]

00004f03 <.LM190>:
    4f03:	ec 83                         	mov.l	[r8], r3
    4f05:	ec 21                         	mov.l	[r2], r1
    4f07:	69 03                         	shlr	#16, r3
    4f09:	ef 18                         	mov.l	r1, r8
    4f0b:	77 28 ff ff 00                	and	#0xffff, r8
    4f10:	4f 93                         	mul	r9, r3
    4f12:	4b 83                         	add	r8, r3

00004f14 <.LM191>:
    4f14:	69 04                         	shlr	#16, r4

00004f16 <.LM192>:
    4f16:	4b 43                         	add	r4, r3

00004f18 <.LM193>:
    4f18:	fd 90 36                      	shlr	#16, r3, r6

00004f1b <.LM194>:
    4f1b:	47 e5                         	cmp	r14, r5
    4f1d:	24 c7                         	bgtu.b	4ee4 <.LM187>

00004f1f <.LM195>:
    4f1f:	e3 23                         	mov.l	r3, [r2]

00004f21 <.LM196>:
    4f21:	62 4f                         	add	#4, r15
    4f23:	62 47                         	add	#4, r7
    4f25:	47 fc                         	cmp	r15, r12
    4f27:	25 05                         	bleu.b	4f2c <.LM197>
    4f29:	38 5b ff                      	bra.w	4e84 <.LM172>

00004f2c <.LM197>:
    4f2c:	61 0a                         	cmp	#0, r10
    4f2e:	2a 0a                         	bgt.b	4f38 <.LM199>
    4f30:	2e 10                         	bra.b	4f40 <.LM200>

00004f32 <.LM198>:
    4f32:	60 1a                         	sub	#1, r10
    4f34:	20 0c                         	beq.b	4f40 <.LM200>
    4f36:	ef 00                         	nop

00004f38 <.LM199>:
    4f38:	fd 2e b7                      	mov.l	[-r11], r7

00004f3b <.LVL145>:
    4f3b:	61 07                         	cmp	#0, r7
    4f3d:	20 f5                         	beq.b	4f32 <.LM198>

00004f3f <.LVL146>:
    4f3f:	03                            	nop

00004f40 <.LM200>:
    4f40:	ec 07                         	mov.l	[r0], r7
    4f42:	e7 7a 04                      	mov.l	r10, 16[r7]

00004f45 <.LM201>:
    4f45:	ef 71                         	mov.l	r7, r1
    4f47:	3f 6d 09                      	rtsd	#36, r6-r13

00004f4a <.LFE7>:
    4f4a:	74 10 01 00 00 00             	mul	#1, r0

00004f50 <___pow5mult>:
    4f50:	6e 7d                         	pushm	r7-r13

00004f52 <.LCFI9>:
    4f52:	ef 3a                         	mov.l	r3, r10
    4f54:	64 3a                         	and	#3, r10

00004f56 <.LM204>:
    4f56:	ef 37                         	mov.l	r3, r7
    4f58:	ef 1d                         	mov.l	r1, r13
    4f5a:	ef 2c                         	mov.l	r2, r12

00004f5c <.LM205>:
    4f5c:	21 65                         	bne.b	4fc1 <.LBE15>

00004f5e <.LM206>:
    4f5e:	6a 27                         	shar	#2, r7

00004f60 <.LVL150>:
    4f60:	20 48                         	beq.b	4fa8 <.LM220>

00004f62 <.LM207>:
    4f62:	ed db 12                      	mov.l	72[r13], r11

00004f65 <.LVL151>:
    4f65:	61 0b                         	cmp	#0, r11
    4f67:	20 6f                         	beq.b	4fd6 <.LM225>

00004f69 <.LM208>:
    4f69:	fb 92 20 4e 00 00             	mov.l	#0x4e20, r9
    4f6f:	2e 11                         	bra.b	4f80 <.LM211>

00004f71 <.LM209>:
    4f71:	6a 17                         	shar	#1, r7
    4f73:	20 35                         	beq.b	4fa8 <.LM220>
    4f75:	fc 13 00                      	nop

00004f78 <.LM210>:
    4f78:	ec ba                         	mov.l	[r11], r10

00004f7a <.LVL154>:
    4f7a:	61 0a                         	cmp	#0, r10
    4f7c:	20 31                         	beq.b	4fad <.LM221>
    4f7e:	ef ab                         	mov.l	r10, r11

00004f80 <.LM211>:
    4f80:	fd 74 c7 01                   	tst	#1, r7
    4f84:	20 ed                         	beq.b	4f71 <.LM209>

00004f86 <.LM212>:
    4f86:	ef c2                         	mov.l	r12, r2
    4f88:	ef b3                         	mov.l	r11, r3
    4f8a:	ef d1                         	mov.l	r13, r1
    4f8c:	7f 19                         	jsr	r9

00004f8e <.LBB10>:
    4f8e:	61 0c                         	cmp	#0, r12
    4f90:	20 2d                         	beq.b	4fbd <.LBB15>

00004f92 <.LM214>:
    4f92:	ed ca 01                      	mov.l	4[r12], r10
    4f95:	6c 2a                         	shll	#2, r10
    4f97:	06 89 da 13                   	add	76[r13].l, r10
    4f9b:	ec ae                         	mov.l	[r10], r14

00004f9d <.LBE10>:
    4f9d:	6a 17                         	shar	#1, r7

00004f9f <.LBB14>:
    4f9f:	e3 ce                         	mov.l	r14, [r12]

00004fa1 <.LM217>:
    4fa1:	e3 ac                         	mov.l	r12, [r10]

00004fa3 <.LM218>:
    4fa3:	ef 1c                         	mov.l	r1, r12

00004fa5 <.LBE14>:
    4fa5:	21 d3                         	bne.b	4f78 <.LM210>

00004fa7 <.LVL159>:
    4fa7:	03                            	nop

00004fa8 <.LM220>:
    4fa8:	ef c1                         	mov.l	r12, r1
    4faa:	3f 7d 07                      	rtsd	#28, r7-r13

00004fad <.LM221>:
    4fad:	ef b2                         	mov.l	r11, r2
    4faf:	ef b3                         	mov.l	r11, r3
    4fb1:	ef d1                         	mov.l	r13, r1
    4fb3:	7f 19                         	jsr	r9

00004fb5 <.LVL161>:
    4fb5:	e3 b1                         	mov.l	r1, [r11]

00004fb7 <.LM222>:
    4fb7:	e3 1a                         	mov.l	r10, [r1]
    4fb9:	ef 1b                         	mov.l	r1, r11

00004fbb <.LVL163>:
    4fbb:	2e c5                         	bra.b	4f80 <.LM211>

00004fbd <.LBB15>:
    4fbd:	ef 1c                         	mov.l	r1, r12

00004fbf <.LVL165>:
    4fbf:	2e b2                         	bra.b	4f71 <.LM209>

00004fc1 <.LBE15>:
    4fc1:	60 1a                         	sub	#1, r10

00004fc3 <.LVL167>:
    4fc3:	fb b2 64 7a 00 00             	mov.l	#0x7a64, r11
    4fc9:	fe 6a b3                      	mov.l	[r10, r11], r3

00004fcc <.LVL168>:
    4fcc:	66 04                         	mov.l	#0, r4
    4fce:	05 52 fc ff                   	bsr.a	4c20 <___multadd>

00004fd2 <.LVL169>:
    4fd2:	ef 1c                         	mov.l	r1, r12

00004fd4 <.LVL170>:
    4fd4:	2e 8a                         	bra.b	4f5e <.LM206>

00004fd6 <.LM225>:
    4fd6:	ef d1                         	mov.l	r13, r1
    4fd8:	fb 2a 71 02                   	mov.l	#625, r2
    4fdc:	05 2c fe ff                   	bsr.a	4e08 <___i2b>

00004fe0 <.LVL172>:
    4fe0:	e7 d1 12                      	mov.l	r1, 72[r13]

00004fe3 <.LVL173>:
    4fe3:	ef 1b                         	mov.l	r1, r11

00004fe5 <.LM226>:
    4fe5:	3e 10 00                      	mov.l	#0, [r1]
    4fe8:	2e 81                         	bra.b	4f69 <.LM208>

00004fea <.LFE8>:
    4fea:	74 10 01 00 00 00             	mul	#1, r0

00004ff0 <___lshift>:
    4ff0:	6e 7d                         	pushm	r7-r13

00004ff2 <.LCFI10>:
    4ff2:	ed 2d 04                      	mov.l	16[r2], r13

00004ff5 <.LM229>:
    4ff5:	fd a5 3a                      	shar	#5, r3, r10

00004ff8 <.LM230>:
    4ff8:	4b ad                         	add	r10, r13

00004ffa <.LM231>:
    4ffa:	ed 2e 02                      	mov.l	8[r2], r14

00004ffd <.LM232>:
    4ffd:	71 d7 01                      	add	#1, r13, r7

00005000 <.LM233>:
    5000:	47 e7                         	cmp	r14, r7

00005002 <.LM234>:
    5002:	ef 2b                         	mov.l	r2, r11
    5004:	ef 39                         	mov.l	r3, r9
    5006:	ef 1c                         	mov.l	r1, r12

00005008 <.LM235>:
    5008:	a8 2a                         	mov.l	4[r2], r2

0000500a <.LM236>:
    500a:	2b 0a                         	ble.b	5014 <.LM240>

0000500c <.LM237>:
    500c:	4b ee                         	add	r14, r14

0000500e <.LM238>:
    500e:	62 12                         	add	#1, r2

00005010 <.LM239>:
    5010:	47 e7                         	cmp	r14, r7
    5012:	2a fa                         	bgt.b	500c <.LM237>

00005014 <.LM240>:
    5014:	ef c1                         	mov.l	r12, r1

00005016 <.LVL179>:
    5016:	05 8a fb ff                   	bsr.a	4ba0 <__Balloc>

0000501a <.LM241>:
    501a:	71 14 14                      	add	#20, r1, r4

0000501d <.LM242>:
    501d:	61 0a                         	cmp	#0, r10
    501f:	2b 19                         	ble.b	5038 <.LM247>
    5021:	66 0e                         	mov.l	#0, r14

00005023 <.LM243>:
    5023:	66 03                         	mov.l	#0, r3

00005025 <.LM244>:
    5025:	62 1e                         	add	#1, r14

00005027 <.LM245>:
    5027:	fd 22 43                      	mov.l	r3, [r4+]

0000502a <.LM246>:
    502a:	47 ae                         	cmp	r10, r14
    502c:	21 f7                         	bne.b	5023 <.LM243>
    502e:	71 e4 05                      	add	#5, r14, r4

00005031 <.LVL184>:
    5031:	6c 24                         	shll	#2, r4
    5033:	4b 14                         	add	r1, r4

00005035 <.LVL185>:
    5035:	fc 13 00                      	nop

00005038 <.LM247>:
    5038:	ed ba 04                      	mov.l	16[r11], r10

0000503b <.LM248>:
    503b:	ef 93                         	mov.l	r9, r3

0000503d <.LM249>:
    503d:	62 5a                         	add	#5, r10
    503f:	6c 2a                         	shll	#2, r10

00005041 <.LM250>:
    5041:	75 23 1f                      	and	#31, r3

00005044 <.LM251>:
    5044:	71 b5 14                      	add	#20, r11, r5

00005047 <.LM252>:
    5047:	4b ba                         	add	r11, r10

00005049 <.LM253>:
    5049:	61 03                         	cmp	#0, r3
    504b:	20 3b                         	beq.b	5086 <.LM268>

0000504d <.LM254>:
    504d:	75 42 20                      	mov.l	#32, r2
    5050:	43 32                         	sub	r3, r2

00005052 <.LM255>:
    5052:	66 0f                         	mov.l	#0, r15

00005054 <.LM256>:
    5054:	ec 5e                         	mov.l	[r5], r14
    5056:	fd 62 3e                      	shll	r3, r14
    5059:	57 ef                         	or	r14, r15

0000505b <.LVL191>:
    505b:	fd 22 4f                      	mov.l	r15, [r4+]

0000505e <.LM257>:
    505e:	fd 2a 5f                      	mov.l	[r5+], r15

00005061 <.LVL193>:
    5061:	fd 60 2f                      	shlr	r2, r15

00005064 <.LM258>:
    5064:	47 5a                         	cmp	r5, r10
    5066:	24 ee                         	bgtu.b	5054 <.LM256>

00005068 <.LM259>:
    5068:	e3 4f                         	mov.l	r15, [r4]
    506a:	61 0f                         	cmp	#0, r15
    506c:	14                            	beq.s	5070 <.LBB16>

0000506d <.LM260>:
    506d:	71 d7 02                      	add	#2, r13, r7

00005070 <.LBB16>:
    5070:	ed ba 01                      	mov.l	4[r11], r10

00005073 <.LBE16>:
    5073:	60 17                         	sub	#1, r7

00005075 <.LBB20>:
    5075:	6c 2a                         	shll	#2, r10
    5077:	06 89 ca 13                   	add	76[r12].l, r10
    507b:	ec a3                         	mov.l	[r10], r3

0000507d <.LBE20>:
    507d:	a1 17                         	mov.l	r7, 16[r1]

0000507f <.LBB21>:
    507f:	e3 b3                         	mov.l	r3, [r11]

00005081 <.LM266>:
    5081:	e3 ab                         	mov.l	r11, [r10]

00005083 <.LBE21>:
    5083:	3f 7d 07                      	rtsd	#28, r7-r13

00005086 <.LM268>:
    5086:	fd 2a 5d                      	mov.l	[r5+], r13
    5089:	fd 22 4d                      	mov.l	r13, [r4+]

0000508c <.LM269>:
    508c:	47 5a                         	cmp	r5, r10
    508e:	25 e2                         	bleu.b	5070 <.LBB16>

00005090 <.LM270>:
    5090:	fd 2a 5d                      	mov.l	[r5+], r13
    5093:	fd 22 4d                      	mov.l	r13, [r4+]

00005096 <.LM271>:
    5096:	47 5a                         	cmp	r5, r10
    5098:	24 ee                         	bgtu.b	5086 <.LM268>
    509a:	2e d6                         	bra.b	5070 <.LBB16>

0000509c <.LFE9>:
    509c:	76 10 01 00                   	mul	#1, r0

000050a0 <___mcmp>:
    50a0:	ef 1e                         	mov.l	r1, r14

000050a2 <.LM274>:
    50a2:	a9 24                         	mov.l	16[r2], r4

000050a4 <.LM275>:
    50a4:	a9 11                         	mov.l	16[r1], r1

000050a6 <.LM276>:
    50a6:	43 41                         	sub	r4, r1
    50a8:	21 24                         	bne.b	50cc <.LM284>

000050aa <.LM277>:
    50aa:	62 54                         	add	#5, r4

000050ac <.LVL206>:
    50ac:	6c 24                         	shll	#2, r4

000050ae <.LM278>:
    50ae:	71 e5 14                      	add	#20, r14, r5

000050b1 <.LM279>:
    50b1:	4b 42                         	add	r4, r2

000050b3 <.LM280>:
    50b3:	4b 4e                         	add	r4, r14

000050b5 <.LVL209>:
    50b5:	fc 13 00                      	nop

000050b8 <.LM281>:
    50b8:	fd 2e e4                      	mov.l	[-r14], r4
    50bb:	fd 2e 23                      	mov.l	[-r2], r3
    50be:	47 34                         	cmp	r3, r4
    50c0:	1e                            	bne.s	50c6 <.LM283>

000050c1 <.LM282>:
    50c1:	47 e5                         	cmp	r14, r5
    50c3:	23 f5                         	bnc.b	50b8 <.LM281>
    50c5:	02                            	rts

000050c6 <.LM283>:
    50c6:	47 43                         	cmp	r4, r3
    50c8:	24 05                         	bgtu.b	50cd <.LM285>
    50ca:	66 11                         	mov.l	#1, r1

000050cc <.LM284>:
    50cc:	02                            	rts

000050cd <.LM285>:
    50cd:	fb 16 ff                      	mov.l	#-1, r1

000050d0 <.LVL212>:
    50d0:	02                            	rts

000050d1 <.LFE10>:
    50d1:	0f                            	bra.s	50d8 <___mdiff>
    50d2:	03                            	nop
    50d3:	03                            	nop
    50d4:	03                            	nop
    50d5:	03                            	nop
    50d6:	03                            	nop
    50d7:	03                            	nop

000050d8 <___mdiff>:
    50d8:	6e 7d                         	pushm	r7-r13

000050da <.LCFI11>:
    50da:	ef 27                         	mov.l	r2, r7
    50dc:	ef 1c                         	mov.l	r1, r12

000050de <.LM288>:
    50de:	ef 32                         	mov.l	r3, r2

000050e0 <.LVL214>:
    50e0:	ef 71                         	mov.l	r7, r1

000050e2 <.LM289>:
    50e2:	ef 3a                         	mov.l	r3, r10

000050e4 <.LM290>:
    50e4:	05 bc ff ff                   	bsr.a	50a0 <___mcmp>

000050e8 <.LM291>:
    50e8:	71 1b 00                      	add	#0, r1, r11
    50eb:	3a ce 00                      	beq.w	51b9 <.LM338>

000050ee <.LM292>:
    50ee:	28 05                         	bge.b	50f3 <.LM293>
    50f0:	38 be 00                      	bra.w	51ae <.LM334>

000050f3 <.LM293>:
    50f3:	66 09                         	mov.l	#0, r9

000050f5 <.LVL217>:
    50f5:	fc 13 00                      	nop

000050f8 <.LM294>:
    50f8:	a8 7a                         	mov.l	4[r7], r2
    50fa:	ef c1                         	mov.l	r12, r1
    50fc:	05 a4 fa ff                   	bsr.a	4ba0 <__Balloc>

00005100 <.LM295>:
    5100:	ed 7b 04                      	mov.l	16[r7], r11

00005103 <.LM296>:
    5103:	ed ad 04                      	mov.l	16[r10], r13

00005106 <.LM297>:
    5106:	71 bc 05                      	add	#5, r11, r12

00005109 <.LM298>:
    5109:	62 5d                         	add	#5, r13

0000510b <.LM299>:
    510b:	6c 2c                         	shll	#2, r12

0000510d <.LM300>:
    510d:	6c 2d                         	shll	#2, r13

0000510f <.LM301>:
    510f:	4b 7c                         	add	r7, r12

00005111 <.LM302>:
    5111:	4b ad                         	add	r10, r13

00005113 <.LM303>:
    5113:	71 a3 14                      	add	#20, r10, r3

00005116 <.LM304>:
    5116:	e7 19 03                      	mov.l	r9, 12[r1]

00005119 <.LM305>:
    5119:	71 77 14                      	add	#20, r7, r7

0000511c <.LM306>:
    511c:	71 1a 14                      	add	#20, r1, r10

0000511f <.LM307>:
    511f:	66 05                         	mov.l	#0, r5

00005121 <.LM308>:
    5121:	fd 2a 7f                      	mov.l	[r7+], r15
    5124:	fd 2a 32                      	mov.l	[r3+], r2
    5127:	ef fe                         	mov.l	r15, r14
    5129:	77 2e ff ff 00                	and	#0xffff, r14
    512e:	ef 24                         	mov.l	r2, r4
    5130:	4b e5                         	add	r14, r5

00005132 <.LVL227>:
    5132:	77 24 ff ff 00                	and	#0xffff, r4
    5137:	ff 0e 45                      	sub	r4, r5, r14

0000513a <.LM309>:
    513a:	69 02                         	shlr	#16, r2
    513c:	fd 90 f5                      	shlr	#16, r15, r5

0000513f <.LM310>:
    513f:	fd b0 e4                      	shar	#16, r14, r4

00005142 <.LM311>:
    5142:	43 25                         	sub	r2, r5
    5144:	4b 45                         	add	r4, r5

00005146 <.LM312>:
    5146:	fd d0 54                      	shll	#16, r5, r4

00005149 <.LVL231>:
    5149:	77 2e ff ff 00                	and	#0xffff, r14

0000514e <.LVL232>:
    514e:	57 e4                         	or	r14, r4

00005150 <.LM313>:
    5150:	6b 05                         	shar	#16, r5

00005152 <.LM314>:
    5152:	fd 22 a4                      	mov.l	r4, [r10+]

00005155 <.LM315>:
    5155:	47 3d                         	cmp	r3, r13

00005157 <.LM316>:
    5157:	ef 7e                         	mov.l	r7, r14

00005159 <.LM317>:
    5159:	ef a2                         	mov.l	r10, r2

0000515b <.LM318>:
    515b:	24 c6                         	bgtu.b	5121 <.LM308>

0000515d <.LM319>:
    515d:	47 7c                         	cmp	r7, r12
    515f:	25 35                         	bleu.b	5194 <.LM328>

00005161 <.LM320>:
    5161:	fd 2a ef                      	mov.l	[r14+], r15

00005164 <.LVL237>:
    5164:	ef f4                         	mov.l	r15, r4
    5166:	77 24 ff ff 00                	and	#0xffff, r4
    516b:	4b 45                         	add	r4, r5

0000516d <.LM321>:
    516d:	fd b0 53                      	shar	#16, r5, r3

00005170 <.LM322>:
    5170:	69 0f                         	shlr	#16, r15
    5172:	4b f3                         	add	r15, r3

00005174 <.LM323>:
    5174:	77 25 ff ff 00                	and	#0xffff, r5

00005179 <.LVL241>:
    5179:	fd d0 34                      	shll	#16, r3, r4
    517c:	57 54                         	or	r5, r4

0000517e <.LM324>:
    517e:	fd b0 35                      	shar	#16, r3, r5

00005181 <.LM325>:
    5181:	fd 22 24                      	mov.l	r4, [r2+]

00005184 <.LM326>:
    5184:	47 ec                         	cmp	r14, r12
    5186:	24 db                         	bgtu.b	5161 <.LM320>

00005188 <.LM327>:
    5188:	7e 07                         	not	r7
    518a:	4b 7c                         	add	r7, r12

0000518c <.LVL243>:
    518c:	75 2c fc                      	and	#-4, r12
    518f:	62 4c                         	add	#4, r12
    5191:	ff 22 ca                      	add	r12, r10, r2

00005194 <.LM328>:
    5194:	60 42                         	sub	#4, r2
    5196:	61 04                         	cmp	#0, r4
    5198:	21 10                         	bne.b	51a8 <.LM332>

0000519a <.LM329>:
    519a:	fd 2e 27                      	mov.l	[-r2], r7

0000519d <.LM330>:
    519d:	60 1b                         	sub	#1, r11

0000519f <.LM331>:
    519f:	61 07                         	cmp	#0, r7
    51a1:	20 f9                         	beq.b	519a <.LM329>
    51a3:	77 10 01 00 00                	mul	#1, r0

000051a8 <.LM332>:
    51a8:	e7 1b 04                      	mov.l	r11, 16[r1]

000051ab <.LM333>:
    51ab:	3f 7d 07                      	rtsd	#28, r7-r13

000051ae <.LM334>:
    51ae:	ef 7b                         	mov.l	r7, r11

000051b0 <.LM335>:
    51b0:	66 19                         	mov.l	#1, r9

000051b2 <.LM336>:
    51b2:	ef a7                         	mov.l	r10, r7

000051b4 <.LM337>:
    51b4:	ef ba                         	mov.l	r11, r10

000051b6 <.LVL250>:
    51b6:	38 42 ff                      	bra.w	50f8 <.LM294>

000051b9 <.LM338>:
    51b9:	ef c1                         	mov.l	r12, r1
    51bb:	ef b2                         	mov.l	r11, r2
    51bd:	05 e3 f9 ff                   	bsr.a	4ba0 <__Balloc>

000051c1 <.LM339>:
    51c1:	3e 14 01                      	mov.l	#1, 16[r1]

000051c4 <.LM340>:
    51c4:	e7 1b 05                      	mov.l	r11, 20[r1]

000051c7 <.LM341>:
    51c7:	3f 7d 07                      	rtsd	#28, r7-r13

000051ca <.LFE11>:
    51ca:	74 10 01 00 00 00             	mul	#1, r0

000051d0 <___ulp>:
    51d0:	74 21 00 00 80 7f             	and	#0x7f800000, r1

000051d6 <.LVL254>:
    51d6:	70 11 00 00 80 f4             	add	#0xf4800000, r1, r1

000051dc <.LM344>:
    51dc:	61 01                         	cmp	#0, r1
    51de:	2b 03                         	ble.b	51e1 <.LM346>

000051e0 <.LM345>:
    51e0:	02                            	rts

000051e1 <.LM346>:
    51e1:	7e 11                         	neg	r1

000051e3 <.LVL258>:
    51e3:	6b 71                         	shar	#23, r1

000051e5 <.LM347>:
    51e5:	75 51 16                      	cmp	#22, r1
    51e8:	2a 0d                         	bgt.b	51f5 <.LM349>

000051ea <.LM348>:
    51ea:	fb ee 00 00 08                	mov.l	#0x80000, r14
    51ef:	fd 61 1e                      	shar	r1, r14
    51f2:	ef e1                         	mov.l	r14, r1

000051f4 <.LVL260>:
    51f4:	02                            	rts

000051f5 <.LM349>:
    51f5:	66 01                         	mov.l	#0, r1

000051f7 <.LM350>:
    51f7:	02                            	rts

000051f8 <___b2d>:
    51f8:	6e 7d                         	pushm	r7-r13

000051fa <.LCFI12>:
    51fa:	ed 1c 04                      	mov.l	16[r1], r12

000051fd <.LM353>:
    51fd:	ef 17                         	mov.l	r1, r7

000051ff <.LM354>:
    51ff:	62 5c                         	add	#5, r12
    5201:	6c 2c                         	shll	#2, r12
    5203:	4b 1c                         	add	r1, r12

00005205 <.LM355>:
    5205:	ef ca                         	mov.l	r12, r10
    5207:	fd 2e ab                      	mov.l	[-r10], r11

0000520a <.LM356>:
    520a:	ef 2d                         	mov.l	r2, r13

0000520c <.LM357>:
    520c:	ef b1                         	mov.l	r11, r1

0000520e <.LVL267>:
    520e:	05 32 fb ff                   	bsr.a	4d40 <___hi0bits>

00005212 <.LM358>:
    5212:	75 44 20                      	mov.l	#32, r4
    5215:	43 14                         	sub	r1, r4
    5217:	e3 d4                         	mov.l	r4, [r13]

00005219 <.LM359>:
    5219:	61 71                         	cmp	#7, r1
    521b:	2b 40                         	ble.b	525b <.LM373>

0000521d <.LM360>:
    521d:	71 77 14                      	add	#20, r7, r7

00005220 <.LM361>:
    5220:	47 a7                         	cmp	r10, r7
    5222:	23 14                         	bnc.b	5236 <.LM367>

00005224 <.LM362>:
    5224:	71 17 f8                      	add	#-8, r1, r7

00005227 <.LM363>:
    5227:	66 0a                         	mov.l	#0, r10

00005229 <.LM364>:
    5229:	21 17                         	bne.b	5240 <.LM371>

0000522b <.L190>:
    522b:	ef b1                         	mov.l	r11, r1
    522d:	74 31 00 00 80 3f             	or	#0x3f800000, r1

00005233 <.LM366>:
    5233:	3f 7d 07                      	rtsd	#28, r7-r13

00005236 <.LM367>:
    5236:	60 8c                         	sub	#8, r12

00005238 <.LM368>:
    5238:	71 17 f8                      	add	#-8, r1, r7

0000523b <.LM369>:
    523b:	ec ca                         	mov.l	[r12], r10

0000523d <.LM370>:
    523d:	20 ee                         	beq.b	522b <.L190>
    523f:	03                            	nop

00005240 <.LM371>:
    5240:	fd 62 7b                      	shll	r7, r11

00005243 <.LVL277>:
    5243:	ef b7                         	mov.l	r11, r7

00005245 <.LVL278>:
    5245:	75 4b 28                      	mov.l	#40, r11
    5248:	ff 01 1b                      	sub	r1, r11, r1
    524b:	fd 60 1a                      	shlr	r1, r10

0000524e <.LVL279>:
    524e:	74 37 00 00 80 3f             	or	#0x3f800000, r7
    5254:	ef a1                         	mov.l	r10, r1
    5256:	57 71                         	or	r7, r1

00005258 <.LM372>:
    5258:	3f 7d 07                      	rtsd	#28, r7-r13

0000525b <.LM373>:
    525b:	66 87                         	mov.l	#8, r7

0000525d <.LVL282>:
    525d:	ff 0e 17                      	sub	r1, r7, r14
    5260:	fd 60 eb                      	shlr	r14, r11

00005263 <.LVL283>:
    5263:	ef b1                         	mov.l	r11, r1

00005265 <.LVL284>:
    5265:	74 31 00 00 80 3f             	or	#0x3f800000, r1

0000526b <.LM374>:
    526b:	3f 7d 07                      	rtsd	#28, r7-r13

0000526e <.LFE13>:
    526e:	ef 00                         	nop

00005270 <___d2b>:
    5270:	6e 7d                         	pushm	r7-r13

00005272 <.LCFI13>:
    5272:	60 40                         	sub	#4, r0

00005274 <.LCFI14>:
    5274:	ef 2a                         	mov.l	r2, r10

00005276 <.LM377>:
    5276:	66 12                         	mov.l	#1, r2

00005278 <.LM378>:
    5278:	ef 3c                         	mov.l	r3, r12
    527a:	ef 4b                         	mov.l	r4, r11

0000527c <.LM379>:
    527c:	05 24 f9 ff                   	bsr.a	4ba0 <__Balloc>

00005280 <.LM380>:
    5280:	ef a2                         	mov.l	r10, r2
    5282:	ef ae                         	mov.l	r10, r14
    5284:	77 2e ff ff 7f                	and	#0x7fffff, r14

00005289 <.LM381>:
    5289:	74 22 ff ff ff 7f             	and	#0x7fffffff, r2

0000528f <.LM382>:
    528f:	e3 0e                         	mov.l	r14, [r0]

00005291 <.LM383>:
    5291:	fd 97 2a                      	shlr	#23, r2, r10

00005294 <.LM384>:
    5294:	ef 17                         	mov.l	r1, r7

00005296 <.LM385>:
    5296:	20 2d                         	beq.b	52c3 <.LM397>

00005298 <.LM386>:
    5298:	74 3e 00 00 80 00             	or	#0x800000, r14

0000529e <.LM387>:
    529e:	ef 01                         	mov.l	r0, r1

000052a0 <.LM388>:
    52a0:	e3 0e                         	mov.l	r14, [r0]

000052a2 <.LM389>:
    52a2:	05 f6 fa ff                   	bsr.a	4d98 <___lo0bits>

000052a6 <.LM390>:
    52a6:	ec 0d                         	mov.l	[r0], r13

000052a8 <.LM391>:
    52a8:	72 aa 6a ff                   	add	#-150, r10, r10

000052ac <.LVL298>:
    52ac:	4b 1a                         	add	r1, r10

000052ae <.LM392>:
    52ae:	e7 7d 05                      	mov.l	r13, 20[r7]

000052b1 <.LM393>:
    52b1:	3e 74 01                      	mov.l	#1, 16[r7]

000052b4 <.LM394>:
    52b4:	e3 ca                         	mov.l	r10, [r12]

000052b6 <.LM395>:
    52b6:	75 4a 18                      	mov.l	#24, r10
    52b9:	ff 01 1a                      	sub	r1, r10, r1

000052bc <.LVL301>:
    52bc:	e3 b1                         	mov.l	r1, [r11]

000052be <.LM396>:
    52be:	ef 71                         	mov.l	r7, r1
    52c0:	3f 7d 08                      	rtsd	#32, r7-r13

000052c3 <.LM397>:
    52c3:	ef 01                         	mov.l	r0, r1

000052c5 <.LVL303>:
    52c5:	05 d3 fa ff                   	bsr.a	4d98 <___lo0bits>

000052c9 <.LM398>:
    52c9:	ec 0a                         	mov.l	[r0], r10

000052cb <.LM399>:
    52cb:	3e 74 01                      	mov.l	#1, 16[r7]

000052ce <.LM400>:
    52ce:	e7 7a 05                      	mov.l	r10, 20[r7]

000052d1 <.LM401>:
    52d1:	72 11 6b ff                   	add	#-149, r1, r1

000052d5 <.LVL307>:
    52d5:	e3 c1                         	mov.l	r1, [r12]

000052d7 <.LM402>:
    52d7:	ef a1                         	mov.l	r10, r1

000052d9 <.LVL308>:
    52d9:	05 67 fa ff                   	bsr.a	4d40 <___hi0bits>

000052dd <.LVL309>:
    52dd:	75 4a 20                      	mov.l	#32, r10
    52e0:	ff 01 1a                      	sub	r1, r10, r1
    52e3:	e3 b1                         	mov.l	r1, [r11]

000052e5 <.LM403>:
    52e5:	ef 71                         	mov.l	r7, r1
    52e7:	3f 7d 08                      	rtsd	#32, r7-r13

000052ea <___ratio>:
    52ea:	6e 7c                         	pushm	r7-r12

000052ec <.LCFI15>:
    52ec:	60 80                         	sub	#8, r0

000052ee <.LCFI16>:
    52ee:	ef 2a                         	mov.l	r2, r10

000052f0 <.LM406>:
    52f0:	fb b2 f8 51 00 00             	mov.l	#0x51f8, r11
    52f6:	71 02 04                      	add	#4, r0, r2

000052f9 <.LM407>:
    52f9:	ef 1c                         	mov.l	r1, r12

000052fb <.LM408>:
    52fb:	7f 1b                         	jsr	r11

000052fd <.LVL312>:
    52fd:	ef 17                         	mov.l	r1, r7

000052ff <.LM409>:
    52ff:	ef 02                         	mov.l	r0, r2
    5301:	ef a1                         	mov.l	r10, r1

00005303 <.LVL314>:
    5303:	7f 1b                         	jsr	r11

00005305 <.LM410>:
    5305:	ed c4 04                      	mov.l	16[r12], r4
    5308:	ed 0e 01                      	mov.l	4[r0], r14
    530b:	06 81 a4 04                   	sub	16[r10].l, r4
    530f:	06 80 0e                      	sub	[r0].l, r14
    5312:	6c 54                         	shll	#5, r4
    5314:	4b 4e                         	add	r4, r14

00005316 <.LM411>:
    5316:	61 0e                         	cmp	#0, r14
    5318:	2b 0e                         	ble.b	5326 <.LM414>

0000531a <.LM412>:
    531a:	6d 7e                         	shll	#23, r14

0000531c <.LVL319>:
    531c:	4b e7                         	add	r14, r7

0000531e <.LM413>:
    531e:	fc 93 17                      	fdiv	r1, r7

00005321 <.LVL321>:
    5321:	ef 71                         	mov.l	r7, r1

00005323 <.LVL322>:
    5323:	3f 7c 08                      	rtsd	#32, r7-r12

00005326 <.LM414>:
    5326:	6d 7e                         	shll	#23, r14

00005328 <.LVL324>:
    5328:	43 e1                         	sub	r14, r1

0000532a <.LM415>:
    532a:	fc 93 17                      	fdiv	r1, r7

0000532d <.LVL326>:
    532d:	ef 71                         	mov.l	r7, r1

0000532f <.LVL327>:
    532f:	3f 7c 08                      	rtsd	#32, r7-r12

00005332 <.LFE15>:
    5332:	00                            	brk
    5333:	00                            	brk
    5334:	00                            	brk
    5335:	00                            	brk
	...

00005338 <__mprec_log10>:
    5338:	75 51 17                      	cmp	#23, r1

0000533b <.LM418>:
    533b:	ef 1e                         	mov.l	r1, r14

0000533d <.LM419>:
    533d:	2b 16                         	ble.b	5353 <.LM424>
    533f:	fb 12 00 00 80 3f             	mov.l	#0x3f800000, r1

00005345 <.LM420>:
    5345:	60 1e                         	sub	#1, r14

00005347 <.LM421>:
    5347:	fd 72 31 00 00 20 41          	fmul	#0x41200000, r1

0000534e <.LM422>:
    534e:	61 0e                         	cmp	#0, r14
    5350:	21 f5                         	bne.b	5345 <.LM420>

00005352 <.LM423>:
    5352:	02                            	rts

00005353 <.LM424>:
    5353:	fb 42 00 7a 00 00             	mov.l	#0x7a00, r4
    5359:	fe 61 41                      	mov.l	[r1, r4], r1

0000535c <.LVL333>:
    535c:	02                            	rts

0000535d <.LFE16>:
    535d:	fc 13 00                      	nop

00005360 <___copybits>:
    5360:	7e a7                         	push.l	r7

00005362 <.LCFI17>:
    5362:	60 12                         	sub	#1, r2

00005364 <.LM427>:
    5364:	ed 3e 04                      	mov.l	16[r3], r14

00005367 <.LM428>:
    5367:	fd a5 25                      	shar	#5, r2, r5
    536a:	62 15                         	add	#1, r5

0000536c <.LM429>:
    536c:	71 e2 05                      	add	#5, r14, r2

0000536f <.LVL336>:
    536f:	6c 22                         	shll	#2, r2

00005371 <.LM430>:
    5371:	6c 25                         	shll	#2, r5

00005373 <.LM431>:
    5373:	71 3e 14                      	add	#20, r3, r14

00005376 <.LM432>:
    5376:	4b 32                         	add	r3, r2

00005378 <.LM433>:
    5378:	4b 15                         	add	r1, r5

0000537a <.LM434>:
    537a:	47 2e                         	cmp	r2, r14
    537c:	22 24                         	bc.b	53a0 <.LM440>
    537e:	ef 14                         	mov.l	r1, r4

00005380 <.LM435>:
    5380:	fd 2a e7                      	mov.l	[r14+], r7
    5383:	fd 22 47                      	mov.l	r7, [r4+]

00005386 <.LM436>:
    5386:	47 e2                         	cmp	r14, r2
    5388:	24 f8                         	bgtu.b	5380 <.LM435>

0000538a <.LM437>:
    538a:	ff 03 32                      	sub	r3, r2, r3

0000538d <.LVL340>:
    538d:	71 33 eb                      	add	#-21, r3, r3
    5390:	75 23 fc                      	and	#-4, r3
    5393:	62 43                         	add	#4, r3
    5395:	4b 31                         	add	r3, r1

00005397 <.LM438>:
    5397:	47 15                         	cmp	r1, r5
    5399:	25 0b                         	bleu.b	53a4 <.LM441>

0000539b <.LM439>:
    539b:	66 07                         	mov.l	#0, r7
    539d:	fd 22 17                      	mov.l	r7, [r1+]

000053a0 <.LM440>:
    53a0:	47 15                         	cmp	r1, r5
    53a2:	24 f9                         	bgtu.b	539b <.LM439>

000053a4 <.LM441>:
    53a4:	3f 77 01                      	rtsd	#4, r7-r7

000053a7 <.LFE17>:
    53a7:	03                            	nop

000053a8 <___any_on>:
    53a8:	a9 14                         	mov.l	16[r1], r4

000053aa <.LM444>:
    53aa:	fd a5 2e                      	shar	#5, r2, r14

000053ad <.LM445>:
    53ad:	71 13 14                      	add	#20, r1, r3

000053b0 <.LM446>:
    53b0:	47 e4                         	cmp	r14, r4
    53b2:	28 18                         	bge.b	53ca <.LM452>
    53b4:	ef 4e                         	mov.l	r4, r14

000053b6 <.LM447>:
    53b6:	62 5e                         	add	#5, r14
    53b8:	6c 2e                         	shll	#2, r14
    53ba:	4b 1e                         	add	r1, r14

000053bc <.LM448>:
    53bc:	47 e3                         	cmp	r14, r3
    53be:	22 2a                         	bc.b	53e8 <.LM460>

000053c0 <.LM449>:
    53c0:	fd 2e e4                      	mov.l	[-r14], r4

000053c3 <.LVL347>:
    53c3:	61 04                         	cmp	#0, r4
    53c5:	20 f7                         	beq.b	53bc <.LM448>

000053c7 <.LM450>:
    53c7:	66 11                         	mov.l	#1, r1

000053c9 <.LM451>:
    53c9:	02                            	rts

000053ca <.LM452>:
    53ca:	47 e4                         	cmp	r14, r4
    53cc:	2b ea                         	ble.b	53b6 <.LM447>

000053ce <.LM453>:
    53ce:	75 22 1f                      	and	#31, r2

000053d1 <.LVL350>:
    53d1:	20 e5                         	beq.b	53b6 <.LM447>

000053d3 <.LM454>:
    53d3:	71 e4 05                      	add	#5, r14, r4

000053d6 <.LVL351>:
    53d6:	fe 64 15                      	mov.l	[r4, r1], r5

000053d9 <.LM455>:
    53d9:	ef 54                         	mov.l	r5, r4
    53db:	fd 60 24                      	shlr	r2, r4

000053de <.LM456>:
    53de:	fd 62 24                      	shll	r2, r4

000053e1 <.LM457>:
    53e1:	47 54                         	cmp	r5, r4
    53e3:	20 d3                         	beq.b	53b6 <.LM447>

000053e5 <.LM458>:
    53e5:	66 11                         	mov.l	#1, r1

000053e7 <.LM459>:
    53e7:	02                            	rts

000053e8 <.LM460>:
    53e8:	66 01                         	mov.l	#0, r1

000053ea <.LVL357>:
    53ea:	02                            	rts

000053eb <.LFE18>:
    53eb:	77 10 01 00 00                	mul	#1, r0

000053f0 <__sbrk_r>:
    53f0:	6e 7a                         	pushm	r7-r10

000053f2 <.LCFI0>:
    53f2:	ef 1a                         	mov.l	r1, r10

000053f4 <.LM3>:
    53f4:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

000053fa <.LM4>:
    53fa:	ef 21                         	mov.l	r2, r1

000053fc <.LM5>:
    53fc:	3e 70 00                      	mov.l	#0, [r7]

000053ff <.LM6>:
    53ff:	05 1a 1c 00                   	bsr.a	7019 <_sbrk>

00005403 <.LVL2>:
    5403:	75 01 ff                      	cmp	#-1, r1
    5406:	15                            	beq.s	540b <.LM8>
    5407:	03                            	nop

00005408 <.LM7>:
    5408:	3f 7a 04                      	rtsd	#16, r7-r10

0000540b <.LM8>:
    540b:	ec 77                         	mov.l	[r7], r7
    540d:	61 07                         	cmp	#0, r7
    540f:	20 f9                         	beq.b	5408 <.LM7>

00005411 <.LM9>:
    5411:	e3 a7                         	mov.l	r7, [r10]

00005413 <.LM10>:
    5413:	3f 7a 04                      	rtsd	#16, r7-r10

00005416 <.LFE0>:
    5416:	ef 00                         	nop

00005418 <___fpclassifyf>:
    5418:	61 01                         	cmp	#0, r1
    541a:	1c                            	bne.s	541e <.LM4>

0000541b <.LM3>:
    541b:	66 21                         	mov.l	#2, r1

0000541d <.LVL1>:
    541d:	02                            	rts

0000541e <.LM4>:
    541e:	74 01 00 00 00 80             	cmp	#0x80000000, r1
    5424:	20 f7                         	beq.b	541b <.LM3>

00005426 <.LM5>:
    5426:	73 1e 00 00 80                	add	#0xff800000, r1, r14
    542b:	74 0e ff ff ff 7e             	cmp	#0x7effffff, r14
    5431:	24 05                         	bgtu.b	5436 <.LM7>

00005433 <.LM6>:
    5433:	66 41                         	mov.l	#4, r1

00005435 <.LVL3>:
    5435:	02                            	rts

00005436 <.LM7>:
    5436:	70 1e 00 00 80 7f             	add	#0x7f800000, r1, r14

0000543c <.LM8>:
    543c:	74 0e ff ff ff 7e             	cmp	#0x7effffff, r14
    5442:	25 f1                         	bleu.b	5433 <.LM6>

00005444 <.LM9>:
    5444:	71 1e ff                      	add	#-1, r1, r14
    5447:	77 0e fe ff 7f                	cmp	#0x7ffffe, r14
    544c:	24 07                         	bgtu.b	5453 <.LM11>
    544e:	ef 00                         	nop

00005450 <.LM10>:
    5450:	66 31                         	mov.l	#3, r1

00005452 <.LVL5>:
    5452:	02                            	rts

00005453 <.LM11>:
    5453:	70 1e ff ff ff 7f             	add	#0x7fffffff, r1, r14

00005459 <.LM12>:
    5459:	77 0e fe ff 7f                	cmp	#0x7ffffe, r14
    545e:	25 f2                         	bleu.b	5450 <.LM10>

00005460 <.LM13>:
    5460:	74 01 00 00 80 7f             	cmp	#0x7f800000, r1
    5466:	12                            	beq.s	5470 <.LM15>

00005467 <.LM14>:
    5467:	77 01 00 00 80                	cmp	#0xff800000, r1
    546c:	fc db 10                      	sceq.l	r1

0000546f <.LVL7>:
    546f:	02                            	rts

00005470 <.LM15>:
    5470:	66 11                         	mov.l	#1, r1

00005472 <.LM16>:
    5472:	02                            	rts

00005473 <.LFE0>:
    5473:	77 10 01 00 00                	mul	#1, r0

00005478 <___sread>:
    5478:	7e a7                         	push.l	r7

0000547a <.LCFI0>:
    547a:	ef 27                         	mov.l	r2, r7

0000547c <.LM3>:
    547c:	99 aa                         	mov.w	14[r2], r2

0000547e <.LVL2>:
    547e:	05 32 14 00                   	bsr.a	68b0 <__read_r>

00005482 <.LM4>:
    5482:	61 01                         	cmp	#0, r1
    5484:	29 0d                         	blt.b	5491 <.LM7>

00005486 <.LM5>:
    5486:	ed 7e 14                      	mov.l	80[r7], r14
    5489:	4b 1e                         	add	r1, r14
    548b:	e7 7e 14                      	mov.l	r14, 80[r7]

0000548e <.LM6>:
    548e:	3f 77 01                      	rtsd	#4, r7-r7

00005491 <.LM7>:
    5491:	dd 7e 06                      	mov.w	12[r7], r14
    5494:	76 2e ff ef                   	and	#0xffffefff, r14
    5498:	d7 7e 06                      	mov.w	r14, 12[r7]

0000549b <.LM8>:
    549b:	3f 77 01                      	rtsd	#4, r7-r7

0000549e <___seofread>:
    549e:	66 01                         	mov.l	#0, r1

000054a0 <.LVL6>:
    54a0:	02                            	rts

000054a1 <.LFE1>:
    54a1:	00                            	brk
    54a2:	00                            	brk
    54a3:	00                            	brk
    54a4:	00                            	brk
    54a5:	00                            	brk
	...

000054a8 <___swrite>:
    54a8:	6e 7c                         	pushm	r7-r12

000054aa <.LCFI1>:
    54aa:	dd 2e 06                      	mov.w	12[r2], r14

000054ad <.LM13>:
    54ad:	ef 27                         	mov.l	r2, r7

000054af <.LM14>:
    54af:	ef e2                         	mov.l	r14, r2

000054b1 <.LVL9>:
    54b1:	76 22 00 01                   	and	#256, r2
    54b5:	df 22                         	mov.w	r2, r2
    54b7:	61 02                         	cmp	#0, r2

000054b9 <.LM15>:
    54b9:	ef 1c                         	mov.l	r1, r12
    54bb:	ef 3b                         	mov.l	r3, r11
    54bd:	ef 4a                         	mov.l	r4, r10

000054bf <.LM16>:
    54bf:	20 11                         	beq.b	54d0 <.LM18>

000054c1 <.LM17>:
    54c1:	99 fa                         	mov.w	14[r7], r2
    54c3:	66 03                         	mov.l	#0, r3

000054c5 <.LVL10>:
    54c5:	66 24                         	mov.l	#2, r4

000054c7 <.LVL11>:
    54c7:	05 a1 13 00                   	bsr.a	6868 <__lseek_r>

000054cb <.LVL12>:
    54cb:	dd 7e 06                      	mov.w	12[r7], r14
    54ce:	ef 00                         	nop

000054d0 <.LM18>:
    54d0:	76 2e ff ef                   	and	#0xffffefff, r14
    54d4:	d7 7e 06                      	mov.w	r14, 12[r7]

000054d7 <.LM19>:
    54d7:	99 fa                         	mov.w	14[r7], r2
    54d9:	ef c1                         	mov.l	r12, r1
    54db:	ef b3                         	mov.l	r11, r3
    54dd:	ef a4                         	mov.l	r10, r4

000054df <.LM20>:
    54df:	6f 7c                         	popm	r7-r12

000054e1 <.LM21>:
    54e1:	04 8f 0d 00                   	bra.a	6270 <__write_r>

000054e5 <.LFE2>:
    54e5:	fc 13 00                      	nop

000054e8 <___sseek>:
    54e8:	7e a7                         	push.l	r7

000054ea <.LCFI2>:
    54ea:	ef 27                         	mov.l	r2, r7

000054ec <.LM24>:
    54ec:	99 aa                         	mov.w	14[r2], r2

000054ee <.LVL17>:
    54ee:	05 7a 13 00                   	bsr.a	6868 <__lseek_r>

000054f2 <.LM25>:
    54f2:	75 01 ff                      	cmp	#-1, r1

000054f5 <.LM26>:
    54f5:	dd 7e 06                      	mov.w	12[r7], r14

000054f8 <.LM27>:
    54f8:	20 0e                         	beq.b	5506 <.LM32>

000054fa <.LM28>:
    54fa:	76 3e 00 10                   	or	#0x1000, r14

000054fe <.LM29>:
    54fe:	a5 71                         	mov.l	r1, 80[r7]

00005500 <.LM30>:
    5500:	d7 7e 06                      	mov.w	r14, 12[r7]

00005503 <.LM31>:
    5503:	3f 77 01                      	rtsd	#4, r7-r7

00005506 <.LM32>:
    5506:	76 2e ff ef                   	and	#0xffffefff, r14
    550a:	d7 7e 06                      	mov.w	r14, 12[r7]

0000550d <.LM33>:
    550d:	3f 77 01                      	rtsd	#4, r7-r7

00005510 <___sclose>:
    5510:	99 aa                         	mov.w	14[r2], r2

00005512 <.LVL21>:
    5512:	04 fe 0d 00                   	bra.a	6310 <__close_r>

00005516 <_strcmp>:
    5516:	fb 36 ff                      	mov.l	#-1, r3
    5519:	7f 83                         	scmpu
    551b:	23 06                         	bnc.b	5521 <_strcmp+0xb>
    551d:	fc db 11                      	scne.l	r1
    5520:	02                            	rts
    5521:	fb 16 ff                      	mov.l	#-1, r1
    5524:	02                            	rts

00005525 <_strlen>:
    5525:	71 14 00                      	add	#0, r1, r4
    5528:	12                            	beq.s	5532 <null_string>
    5529:	fb 36 ff                      	mov.l	#-1, r3
    552c:	66 02                         	mov.l	#0, r2
    552e:	7f 80                         	suntil.b
    5530:	60 11                         	sub	#1, r1

00005532 <null_string>:
    5532:	43 41                         	sub	r4, r1
    5534:	02                            	rts
    5535:	00                            	brk
	...

00005538 <___sprint_r>:
    5538:	6e 6d                         	pushm	r6-r13

0000553a <.LCFI0>:
    553a:	a8 b7                         	mov.l	8[r3], r7

0000553c <.LM3>:
    553c:	ef 38                         	mov.l	r3, r8

0000553e <.LM4>:
    553e:	61 07                         	cmp	#0, r7
    5540:	20 59                         	beq.b	5599 <.LBE10>

00005542 <.LBB6>:
    5542:	ed 2a 19                      	mov.l	100[r2], r10
    5545:	ef 2c                         	mov.l	r2, r12
    5547:	fd 78 ca 00 20                	tst	#0x2000, r10
    554c:	20 54                         	beq.b	55a0 <.LBB11>

0000554e <.LBB8>:
    554e:	ec 36                         	mov.l	[r3], r6

00005550 <.LVL2>:
    5550:	ef 1d                         	mov.l	r1, r13
    5552:	fb 92 e0 63 00 00             	mov.l	#0x63e0, r9

00005558 <.LM7>:
    5558:	ed 6b 01                      	mov.l	4[r6], r11

0000555b <.LM8>:
    555b:	ec 6a                         	mov.l	[r6], r10

0000555d <.LM9>:
    555d:	68 2b                         	shlr	#2, r11

0000555f <.LM10>:
    555f:	61 0b                         	cmp	#0, r11
    5561:	2b 27                         	ble.b	5588 <.LBB10>
    5563:	66 07                         	mov.l	#0, r7
    5565:	0d                            	bra.s	556a <.LM11>

00005566 <.LVL6>:
    5566:	47 7b                         	cmp	r7, r11
    5568:	20 1d                         	beq.b	5585 <.LVL12>

0000556a <.LM11>:
    556a:	fd 2a a2                      	mov.l	[r10+], r2
    556d:	ef d1                         	mov.l	r13, r1
    556f:	ef c3                         	mov.l	r12, r3
    5571:	7f 19                         	jsr	r9

00005573 <.LM12>:
    5573:	62 17                         	add	#1, r7

00005575 <.LM13>:
    5575:	75 01 ff                      	cmp	#-1, r1
    5578:	21 ee                         	bne.b	5566 <.LVL6>

0000557a <.L7>:
    557a:	f9 86 02 00                   	mov.l	#0, 8[r8]

0000557e <.LM15>:
    557e:	f9 86 01 00                   	mov.l	#0, 4[r8]

00005582 <.LBE6>:
    5582:	3f 6d 08                      	rtsd	#32, r6-r13

00005585 <.LVL12>:
    5585:	ed 87 02                      	mov.l	8[r8], r7

00005588 <.LBB10>:
    5588:	6c 2b                         	shll	#2, r11

0000558a <.LVL14>:
    558a:	43 b7                         	sub	r11, r7
    558c:	62 86                         	add	#8, r6
    558e:	e7 87 02                      	mov.l	r7, 8[r8]

00005591 <.LM18>:
    5591:	61 07                         	cmp	#0, r7
    5593:	21 c5                         	bne.b	5558 <.LM7>

00005595 <.LM19>:
    5595:	ef 71                         	mov.l	r7, r1
    5597:	2e e3                         	bra.b	557a <.L7>

00005599 <.LBE10>:
    5599:	a0 3f                         	mov.l	r7, 4[r3]

0000559b <.LM21>:
    559b:	ef 71                         	mov.l	r7, r1

0000559d <.LM22>:
    559d:	3f 6d 08                      	rtsd	#32, r6-r13

000055a0 <.LBB11>:
    55a0:	05 78 0f 00                   	bsr.a	6518 <___sfvwrite_r>

000055a4 <.LM24>:
    55a4:	f9 86 02 00                   	mov.l	#0, 8[r8]

000055a8 <.LM25>:
    55a8:	f9 86 01 00                   	mov.l	#0, 4[r8]
    55ac:	2e d6                         	bra.b	5582 <.LBE6>

000055ae <.LBE11>:
    55ae:	ef 00                         	nop

000055b0 <__vfiprintf_r>:
    55b0:	6e 6d                         	pushm	r6-r13

000055b2 <.LCFI1>:
    55b2:	72 00 2c fb                   	add	#0xfffffb2c, r0, r0

000055b6 <.LCFI2>:
    55b6:	eb 04 2f 01                   	mov.l	r4, 1212[r0]

000055ba <.LM28>:
    55ba:	61 01                         	cmp	#0, r1

000055bc <.LM29>:
    55bc:	ef 1c                         	mov.l	r1, r12
    55be:	ef 29                         	mov.l	r2, r9

000055c0 <.LM30>:
    55c0:	10                            	beq.s	55c8 <.LM32>

000055c1 <.LM31>:
    55c1:	ab 97                         	mov.l	56[r1], r7
    55c3:	61 07                         	cmp	#0, r7
    55c5:	3a 19 0a                      	beq.w	5fde <.LM307>

000055c8 <.LM32>:
    55c8:	dd 97 06                      	mov.w	12[r9], r7
    55cb:	ef 7a                         	mov.l	r7, r10
    55cd:	76 2a 00 20                   	and	#0x2000, r10
    55d1:	df aa                         	mov.w	r10, r10
    55d3:	61 0a                         	cmp	#0, r10
    55d5:	21 17                         	bne.b	55ec <.LM34>

000055d7 <.LM33>:
    55d7:	ed 9a 19                      	mov.l	100[r9], r10
    55da:	ef 7b                         	mov.l	r7, r11
    55dc:	76 3b 00 20                   	or	#0x2000, r11
    55e0:	76 2a ff df                   	and	#0xffffdfff, r10
    55e4:	df b7                         	mov.w	r11, r7
    55e6:	d7 9b 06                      	mov.w	r11, 12[r9]
    55e9:	e7 9a 19                      	mov.l	r10, 100[r9]

000055ec <.LM34>:
    55ec:	ef 7a                         	mov.l	r7, r10
    55ee:	64 8a                         	and	#8, r10
    55f0:	df aa                         	mov.w	r10, r10
    55f2:	61 0a                         	cmp	#0, r10
    55f4:	3a 2f 08                      	beq.w	5e23 <.LM265>

000055f7 <.LM35>:
    55f7:	ed 9a 04                      	mov.l	16[r9], r10
    55fa:	61 0a                         	cmp	#0, r10
    55fc:	3a 27 08                      	beq.w	5e23 <.LM265>

000055ff <.LM36>:
    55ff:	ef 7a                         	mov.l	r7, r10
    5601:	75 2a 1a                      	and	#26, r10
    5604:	61 aa                         	cmp	#10, r10
    5606:	3a 42 08                      	beq.w	5e48 <.LM267>

00005609 <.LM37>:
    5609:	fa 06 31 01 00                	mov.l	#0, 1220[r0]

0000560e <.LM38>:
    560e:	72 0d 90 04                   	add	#0x490, r0, r13

00005612 <.LM39>:
    5612:	72 07 8f 04                   	add	#0x48f, r0, r7

00005616 <.LM40>:
    5616:	ee 0a 31 01                   	mov.l	1220[r0], r10

0000561a <.LM41>:
    561a:	eb 0d 28 01                   	mov.l	r13, 1184[r0]
    561e:	43 7d                         	sub	r7, r13

00005620 <.LM42>:
    5620:	eb 07 29 01                   	mov.l	r7, 1188[r0]

00005624 <.LM43>:
    5624:	eb 00                         	nop
    5626:	24 01                         	bgtu.b	5627 <.LM43+0x3>

00005628 <.LM44>:
    5628:	fa 06 26 01 00                	mov.l	#0, 1176[r0]

0000562d <.LM45>:
    562d:	fa 06 25 01 00                	mov.l	#0, 1172[r0]

00005632 <.LM46>:
    5632:	eb 03 2a 01                   	mov.l	r3, 1192[r0]

00005636 <.LM47>:
    5636:	eb 0a 2d 01                   	mov.l	r10, 1204[r0]

0000563a <.LM48>:
    563a:	ef 0e                         	mov.l	r0, r14
    563c:	eb 0d 32 01                   	mov.l	r13, 1224[r0]

00005640 <.LM49>:
    5640:	ee 0b 2a 01                   	mov.l	1192[r0], r11
    5644:	58 b7                         	movu.b	[r11], r7
    5646:	61 07                         	cmp	#0, r7
    5648:	3a 93 06                      	beq.w	5cdb <.LVL210>

0000564b <.LVL25>:
    564b:	75 57 25                      	cmp	#37, r7
    564e:	3a 8d 06                      	beq.w	5cdb <.LVL210>

00005651 <.LM50>:
    5651:	62 1b                         	add	#1, r11

00005653 <.LVL26>:
    5653:	0f                            	bra.s	565a <.LM52>

00005654 <.LM51>:
    5654:	75 5a 25                      	cmp	#37, r10
    5657:	3a 49 01                      	beq.w	57a0 <.LVL59>

0000565a <.LM52>:
    565a:	58 ba                         	movu.b	[r11], r10

0000565c <.LM53>:
    565c:	ef b7                         	mov.l	r11, r7

0000565e <.LVL29>:
    565e:	62 1b                         	add	#1, r11

00005660 <.LM54>:
    5660:	61 0a                         	cmp	#0, r10
    5662:	21 f2                         	bne.b	5654 <.LM51>
    5664:	ee 0d 2a 01                   	mov.l	1192[r0], r13
    5668:	ff 0a d7                      	sub	r13, r7, r10

0000566b <.LM55>:
    566b:	61 0a                         	cmp	#0, r10
    566d:	20 34                         	beq.b	56a1 <.LM58>

0000566f <.LM56>:
    566f:	ee 04 25 01                   	mov.l	1172[r0], r4
    5673:	ee 0b 26 01                   	mov.l	1176[r0], r11
    5677:	ee 0d 2a 01                   	mov.l	1192[r0], r13
    567b:	4b ab                         	add	r10, r11
    567d:	62 14                         	add	#1, r4
    567f:	e3 ed                         	mov.l	r13, [r14]
    5681:	e7 ea 01                      	mov.l	r10, 4[r14]
    5684:	eb 0b 26 01                   	mov.l	r11, 1176[r0]

00005688 <.LVL31>:
    5688:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    568c:	61 74                         	cmp	#7, r4
    568e:	2b 05                         	ble.b	5693 <.LLST1+0x8>
    5690:	38 42 08                      	bra.w	5ed2 <.LBE20>
    5693:	62 8e                         	add	#8, r14

00005695 <.LVL32>:
    5695:	fc 13 00                      	nop

00005698 <.LM57>:
    5698:	06 8a 0a 2d 01                	add	1204[r0].l, r10

0000569d <.LVL33>:
    569d:	eb 0a 2d 01                   	mov.l	r10, 1204[r0]

000056a1 <.LM58>:
    56a1:	58 7a                         	movu.b	[r7], r10
    56a3:	61 0a                         	cmp	#0, r10
    56a5:	3a 90 06                      	beq.w	5d35 <.LDL1>

000056a8 <.LM59>:
    56a8:	71 7a 01                      	add	#1, r7, r10
    56ab:	eb 0a 2a 01                   	mov.l	r10, 1192[r0]

000056af <.LM60>:
    56af:	fa 06 2b 01 00                	mov.l	#0, 1196[r0]

000056b4 <.LM61>:
    56b4:	ee 0a 2b 01                   	mov.l	1196[r0], r10

000056b8 <.LVL37>:
    56b8:	b0 7f                         	movu.b	1[r7], r7

000056ba <.LVL38>:
    56ba:	ee 0b 2a 01                   	mov.l	1192[r0], r11

000056be <.LM62>:
    56be:	fa 04 9e 04 00                	mov.b	#0, 1182[r0]

000056c3 <.LVL39>:
    56c3:	66 0d                         	mov.l	#0, r13

000056c5 <.LM63>:
    56c5:	fb f6 ff                      	mov.l	#-1, r15

000056c8 <.LM64>:
    56c8:	62 1b                         	add	#1, r11

000056ca <.LM65>:
    56ca:	71 74 e0                      	add	#-32, r7, r4
    56cd:	75 54 58                      	cmp	#88, r4
    56d0:	24 05                         	bgtu.b	56d5 <.LM65+0xb>
    56d2:	38 c3 00                      	bra.w	5795 <.LM84>
    56d5:	fc 13 00                      	nop

000056d8 <.L39>:
    56d8:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    56dc:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]

000056e0 <.LM66>:
    56e0:	61 07                         	cmp	#0, r7
    56e2:	3a 53 06                      	beq.w	5d35 <.LDL1>

000056e5 <.LM67>:
    56e5:	66 16                         	mov.l	#1, r6

000056e7 <.LM68>:
    56e7:	cb 07 68 04                   	mov.b	r7, 1128[r0]

000056eb <.LM69>:
    56eb:	fa 04 9e 04 00                	mov.b	#0, 1182[r0]

000056f0 <.LM70>:
    56f0:	eb 06 2c 01                   	mov.l	r6, 1200[r0]

000056f4 <.LM71>:
    56f4:	72 07 68 04                   	add	#0x468, r0, r7

000056f8 <.LM72>:
    56f8:	fa 06 2e 01 00                	mov.l	#0, 1208[r0]

000056fd <.LM73>:
    56fd:	ef ad                         	mov.l	r10, r13
    56ff:	64 2d                         	and	#2, r13
    5701:	13                            	beq.s	5704 <.LM75>

00005702 <.LM74>:
    5702:	62 26                         	add	#2, r6

00005704 <.LM75>:
    5704:	ef ab                         	mov.l	r10, r11
    5706:	76 2b 84 00                   	and	#132, r11
    570a:	3b fa 03                      	bne.w	5b04 <.LVL165>

0000570d <.LM76>:
    570d:	ee 08 2b 01                   	mov.l	1196[r0], r8
    5711:	43 68                         	sub	r6, r8

00005713 <.LVL47>:
    5713:	61 08                         	cmp	#0, r8
    5715:	2a 05                         	bgt.b	571a <.LM77>
    5717:	38 ed 03                      	bra.w	5b04 <.LVL165>

0000571a <.LM77>:
    571a:	75 58 10                      	cmp	#16, r8
    571d:	ee 04 25 01                   	mov.l	1172[r0], r4
    5721:	2a 0f                         	bgt.b	5730 <.LM79>
    5723:	2e 4d                         	bra.b	5770 <.LM82>

00005725 <.LM78>:
    5725:	62 8e                         	add	#8, r14

00005727 <.LVL50>:
    5727:	71 88 f0                      	add	#-16, r8, r8
    572a:	75 58 10                      	cmp	#16, r8
    572d:	2b 43                         	ble.b	5770 <.LM82>
    572f:	03                            	nop

00005730 <.LM79>:
    5730:	ee 03 26 01                   	mov.l	1176[r0], r3
    5734:	62 14                         	add	#1, r4
    5736:	71 33 10                      	add	#16, r3, r3
    5739:	f8 e2 d4 7b 00 00             	mov.l	#0x7bd4, [r14]
    573f:	f9 e6 01 10                   	mov.l	#16, 4[r14]
    5743:	eb 03 26 01                   	mov.l	r3, 1176[r0]

00005747 <.LVL52>:
    5747:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    574b:	61 74                         	cmp	#7, r4
    574d:	2b d8                         	ble.b	5725 <.LM78>

0000574f <.LM80>:
    574f:	fb 3a 90 04                   	mov.l	#0x490, r3
    5753:	4b 03                         	add	r0, r3
    5755:	ef c1                         	mov.l	r12, r1
    5757:	ef 92                         	mov.l	r9, r2
    5759:	05 df fd ff                   	bsr.a	5538 <___sprint_r>

0000575d <.LVL53>:
    575d:	61 01                         	cmp	#0, r1
    575f:	3b ea 05                      	bne.w	5d49 <.L35>

00005762 <.LM81>:
    5762:	71 88 f0                      	add	#-16, r8, r8

00005765 <.LVL54>:
    5765:	75 58 10                      	cmp	#16, r8
    5768:	ee 04 25 01                   	mov.l	1172[r0], r4
    576c:	ef 0e                         	mov.l	r0, r14

0000576e <.LVL55>:
    576e:	2a c2                         	bgt.b	5730 <.LM79>

00005770 <.LM82>:
    5770:	ee 03 26 01                   	mov.l	1176[r0], r3
    5774:	62 14                         	add	#1, r4
    5776:	4b 83                         	add	r8, r3
    5778:	f8 e2 d4 7b 00 00             	mov.l	#0x7bd4, [r14]
    577e:	e7 e8 01                      	mov.l	r8, 4[r14]
    5781:	eb 03 26 01                   	mov.l	r3, 1176[r0]

00005785 <.LVL56>:
    5785:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5789:	61 74                         	cmp	#7, r4
    578b:	2b 05                         	ble.b	5790 <.LM83>
    578d:	38 60 08                      	bra.w	5fed <.LM308>

00005790 <.LM83>:
    5790:	62 8e                         	add	#8, r14

00005792 <.LVL57>:
    5792:	38 76 03                      	bra.w	5b08 <.LM202>

00005795 <.LM84>:
    5795:	fb 32 70 7a 00 00             	mov.l	#0x7a70, r3
    579b:	fe 64 34                      	mov.l	[r4, r3], r4
    579e:	7f 04                         	jmp	r4

000057a0 <.LVL59>:
    57a0:	ee 0b 2a 01                   	mov.l	1192[r0], r11
    57a4:	ff 0a b7                      	sub	r11, r7, r10
    57a7:	38 c4 fe                      	bra.w	566b <.LM55>

000057aa <.L42>:
    57aa:	ee 07 2f 01                   	mov.l	1212[r0], r7

000057ae <.LVL61>:
    57ae:	62 37                         	add	#3, r7
    57b0:	75 27 fc                      	and	#-4, r7
    57b3:	ec 74                         	mov.l	[r7], r4
    57b5:	62 47                         	add	#4, r7
    57b7:	eb 04 2b 01                   	mov.l	r4, 1196[r0]
    57bb:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

000057bf <.LM86>:
    57bf:	61 04                         	cmp	#0, r4
    57c1:	29 05                         	blt.b	57c6 <.LM87>
    57c3:	38 d5 02                      	bra.w	5a98 <.LVL143+0x3>

000057c6 <.LM87>:
    57c6:	ee 07 2b 01                   	mov.l	1196[r0], r7

000057ca <.LVL63>:
    57ca:	7e 17                         	neg	r7
    57cc:	eb 07 2b 01                   	mov.l	r7, 1196[r0]

000057d0 <.L44>:
    57d0:	65 4a                         	or	#4, r10
    57d2:	58 b7                         	movu.b	[r11], r7

000057d4 <.LM89>:
    57d4:	38 f4 fe                      	bra.w	56c8 <.LM64>

000057d7 <.L62>:
    57d7:	ef a8                         	mov.l	r10, r8
    57d9:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    57dd:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]

000057e1 <.LM91>:
    57e1:	fa 02 31 01 37 78 00 00       	mov.l	#0x7837, 1220[r0]

000057e9 <.LM92>:
    57e9:	75 28 20                      	and	#32, r8
    57ec:	3a e6 01                      	beq.w	59d2 <.LM161>

000057ef <.LVL68>:
    57ef:	03                            	nop

000057f0 <.LM93>:
    57f0:	ee 0b 2f 01                   	mov.l	1212[r0], r11

000057f4 <.LVL69>:
    57f4:	62 3b                         	add	#3, r11
    57f6:	75 2b fc                      	and	#-4, r11
    57f9:	71 bd 08                      	add	#8, r11, r13
    57fc:	ec b6                         	mov.l	[r11], r6
    57fe:	ed b8 01                      	mov.l	4[r11], r8
    5801:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

00005805 <.LVL70>:
    5805:	fc 13 00                      	nop

00005808 <.LM94>:
    5808:	fd 74 ca 01                   	tst	#1, r10
    580c:	17                            	beq.s	5813 <.LM96>

0000580d <.LM95>:
    580d:	ff 5b 86                      	or	r8, r6, r11
    5810:	3b c6 08                      	bne.w	60d6 <.LM329>

00005813 <.LM96>:
    5813:	66 27                         	mov.l	#2, r7

00005815 <.LVL71>:
    5815:	fc 13 00                      	nop

00005818 <.L92>:
    5818:	fa 04 9e 04 00                	mov.b	#0, 1182[r0]
    581d:	fa 04 c0 04 00                	mov.b	#0, 1216[r0]

00005822 <.L86>:
    5822:	61 0f                         	cmp	#0, r15
    5824:	29 06                         	blt.b	582a <.LM100>

00005826 <.LM99>:
    5826:	76 2a 7f ff                   	and	#-129, r10

0000582a <.LM100>:
    582a:	ff 5b 86                      	or	r8, r6, r11

0000582d <.LM101>:
    582d:	5b 77                         	movu.b	r7, r7

0000582f <.LM102>:
    582f:	3b b3 04                      	bne.w	5ce2 <.LM233>

00005832 <.LM103>:
    5832:	61 0f                         	cmp	#0, r15
    5834:	3b ae 04                      	bne.w	5ce2 <.LM233>

00005837 <.LM104>:
    5837:	61 07                         	cmp	#0, r7
    5839:	18                            	bne.s	5841 <.LM106>

0000583a <.LM105>:
    583a:	fd 74 ca 01                   	tst	#1, r10
    583e:	3b 3c 08                      	bne.w	607a <.LVL289>

00005841 <.LM106>:
    5841:	fb 7a 90 04                   	mov.l	#0x490, r7

00005845 <.LM107>:
    5845:	eb 0f 2c 01                   	mov.l	r15, 1200[r0]

00005849 <.LM108>:
    5849:	4b 07                         	add	r0, r7

0000584b <.LVL76>:
    584b:	77 10 01 00 00                	mul	#1, r0

00005850 <.LBB17>:
    5850:	eb 0f 2e 01                   	mov.l	r15, 1208[r0]

00005854 <.L100>:
    5854:	5a 0b c0 04                   	movu.b	1216[r0], r11

00005858 <.LM111>:
    5858:	ee 0d 2c 01                   	mov.l	1200[r0], r13

0000585c <.LM112>:
    585c:	61 0b                         	cmp	#0, r11

0000585e <.LM113>:
    585e:	06 a2 04 0d 2e 01             	max	1208[r0].l, r13
    5864:	ef d6                         	mov.l	r13, r6

00005866 <.LM114>:
    5866:	3a 97 fe                      	beq.w	56fd <.LM73>

00005869 <.LM115>:
    5869:	62 16                         	add	#1, r6
    586b:	38 92 fe                      	bra.w	56fd <.LM73>

0000586e <.L60>:
    586e:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]

00005872 <.LM116>:
    5872:	ee 0b 2f 01                   	mov.l	1212[r0], r11

00005876 <.LM117>:
    5876:	fa 04 9e 04 00                	mov.b	#0, 1182[r0]

0000587b <.LM118>:
    587b:	62 3b                         	add	#3, r11
    587d:	75 2b fc                      	and	#-4, r11
    5880:	ec b7                         	mov.l	[r11], r7

00005882 <.LVL82>:
    5882:	62 4b                         	add	#4, r11
    5884:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

00005888 <.LM119>:
    5888:	61 07                         	cmp	#0, r7
    588a:	3a 30 09                      	beq.w	61ba <.LM350>

0000588d <.LM120>:
    588d:	61 0f                         	cmp	#0, r15

0000588f <.LBB18>:
    588f:	ef 71                         	mov.l	r7, r1

00005891 <.LBE18>:
    5891:	28 05                         	bge.b	5896 <.LBB19>
    5893:	38 5c 09                      	bra.w	61ef <.LM355>

00005896 <.LBB19>:
    5896:	ef f3                         	mov.l	r15, r3
    5898:	66 02                         	mov.l	#0, r2
    589a:	eb 0e 34 01                   	mov.l	r14, 1232[r0]
    589e:	eb 0f 33 01                   	mov.l	r15, 1228[r0]
    58a2:	05 e6 f2 ff                   	bsr.a	4b88 <_memchr>

000058a6 <.LM124>:
    58a6:	61 01                         	cmp	#0, r1
    58a8:	ee 0e 34 01                   	mov.l	1232[r0], r14
    58ac:	ee 0f 33 01                   	mov.l	1228[r0], r15
    58b0:	3a 5f 09                      	beq.w	620f <.LVL339>

000058b3 <.LM125>:
    58b3:	43 71                         	sub	r7, r1

000058b5 <.LVL85>:
    58b5:	eb 01 2c 01                   	mov.l	r1, 1200[r0]

000058b9 <.LM126>:
    58b9:	47 f1                         	cmp	r15, r1
    58bb:	2a 05                         	bgt.b	58c0 <.LM126+0x7>
    58bd:	38 ab 08                      	bra.w	6168 <.LVL320>
    58c0:	ce 0b 9e 04                   	mov.b	1182[r0], r11

000058c4 <.LVL87>:
    58c4:	eb 0f 2c 01                   	mov.l	r15, 1200[r0]
    58c8:	cb 0b c0 04                   	mov.b	r11, 1216[r0]

000058cc <.LM127>:
    58cc:	fa 06 2e 01 00                	mov.l	#0, 1208[r0]
    58d1:	2e 83                         	bra.b	5854 <.L100>

000058d3 <.L59>:
    58d3:	75 3a 20                      	or	#32, r10
    58d6:	58 b7                         	movu.b	[r11], r7

000058d8 <.LM129>:
    58d8:	38 f0 fd                      	bra.w	56c8 <.LM64>

000058db <.L58>:
    58db:	ee 07 2f 01                   	mov.l	1212[r0], r7

000058df <.LVL92>:
    58df:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    58e3:	62 37                         	add	#3, r7
    58e5:	75 27 fc                      	and	#-4, r7
    58e8:	71 7d 04                      	add	#4, r7, r13
    58eb:	ec 76                         	mov.l	[r7], r6
    58ed:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

000058f1 <.LVL93>:
    58f1:	66 08                         	mov.l	#0, r8

000058f3 <.LM131>:
    58f3:	65 2a                         	or	#2, r10

000058f5 <.LM132>:
    58f5:	fa 04 9c 04 30                	mov.b	#48, 1180[r0]

000058fa <.LM133>:
    58fa:	fa 04 9d 04 78                	mov.b	#120, 1181[r0]

000058ff <.LM134>:
    58ff:	fa 02 31 01 37 78 00 00       	mov.l	#0x7837, 1220[r0]

00005907 <.LM135>:
    5907:	66 27                         	mov.l	#2, r7

00005909 <.LM136>:
    5909:	38 0f ff                      	bra.w	5818 <.L92>

0000590c <.L56>:
    590c:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005910 <.LVL98>:
    5910:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    5914:	62 37                         	add	#3, r7
    5916:	75 27 fc                      	and	#-4, r7
    5919:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]

0000591d <.LM138>:
    591d:	fd 74 ca 20                   	tst	#32, r10
    5921:	3b f9 07                      	bne.w	611a <.LM337>

00005924 <.LM139>:
    5924:	fd 74 ca 10                   	tst	#16, r10
    5928:	3a 7b 08                      	beq.w	61a3 <.LM346>

0000592b <.LM140>:
    592b:	ec 7a                         	mov.l	[r7], r10

0000592d <.LVL99>:
    592d:	62 47                         	add	#4, r7
    592f:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

00005933 <.LVL100>:
    5933:	ee 07 2d 01                   	mov.l	1204[r0], r7

00005937 <.LVL101>:
    5937:	e3 a7                         	mov.l	r7, [r10]
    5939:	38 07 fd                      	bra.w	5640 <.LM49>

0000593c <.L55>:
    593c:	58 b7                         	movu.b	[r11], r7

0000593e <.LM142>:
    593e:	ef b4                         	mov.l	r11, r4

00005940 <.LM143>:
    5940:	75 57 6c                      	cmp	#108, r7
    5943:	3a ff 07                      	beq.w	6142 <.LM338>

00005946 <.LM144>:
    5946:	75 3a 10                      	or	#16, r10
    5949:	38 7f fd                      	bra.w	56c8 <.LM64>

0000594c <.L54>:
    594c:	75 3a 40                      	or	#64, r10
    594f:	58 b7                         	movu.b	[r11], r7

00005951 <.LM146>:
    5951:	38 77 fd                      	bra.w	56c8 <.LM64>

00005954 <.L53>:
    5954:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005958 <.LVL110>:
    5958:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    595c:	62 37                         	add	#3, r7
    595e:	75 27 fc                      	and	#-4, r7
    5961:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]
    5965:	fd 74 ca 20                   	tst	#32, r10
    5969:	3a ff 00                      	beq.w	5a68 <.LM175>

0000596c <.LM148>:
    596c:	ed 7b 01                      	mov.l	4[r7], r11

0000596f <.LVL111>:
    596f:	71 7d 08                      	add	#8, r7, r13
    5972:	ec 76                         	mov.l	[r7], r6
    5974:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

00005978 <.LVL112>:
    5978:	ef b8                         	mov.l	r11, r8

0000597a <.LM149>:
    597a:	61 0b                         	cmp	#0, r11
    597c:	28 05                         	bge.b	5981 <.LVL114>
    597e:	38 26 07                      	bra.w	60a4 <.LM324>

00005981 <.LVL114>:
    5981:	ce 07 9e 04                   	mov.b	1182[r0], r7
    5985:	cb 07 c0 04                   	mov.b	r7, 1216[r0]

00005989 <.LM150>:
    5989:	66 17                         	mov.l	#1, r7
    598b:	38 97 fe                      	bra.w	5822 <.L86>

0000598e <.L52>:
    598e:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005992 <.LVL116>:
    5992:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    5996:	62 37                         	add	#3, r7
    5998:	75 27 fc                      	and	#-4, r7
    599b:	71 7b 04                      	add	#4, r7, r11

0000599e <.LVL117>:
    599e:	cc 77                         	mov.b	[r7], r7

000059a0 <.LM152>:
    59a0:	66 16                         	mov.l	#1, r6

000059a2 <.LM153>:
    59a2:	cb 07 68 04                   	mov.b	r7, 1128[r0]
    59a6:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

000059aa <.LM154>:
    59aa:	fa 04 9e 04 00                	mov.b	#0, 1182[r0]

000059af <.LM155>:
    59af:	eb 06 2c 01                   	mov.l	r6, 1200[r0]

000059b3 <.LM156>:
    59b3:	72 07 68 04                   	add	#0x468, r0, r7

000059b7 <.LM157>:
    59b7:	38 41 fd                      	bra.w	56f8 <.LM72>

000059ba <.L51>:
    59ba:	ef a8                         	mov.l	r10, r8
    59bc:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    59c0:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]

000059c4 <.LM159>:
    59c4:	fa 02 31 01 26 78 00 00       	mov.l	#0x7826, 1220[r0]

000059cc <.LM160>:
    59cc:	75 28 20                      	and	#32, r8
    59cf:	3b 21 fe                      	bne.w	57f0 <.LM93>

000059d2 <.LM161>:
    59d2:	ef ab                         	mov.l	r10, r11

000059d4 <.LVL123>:
    59d4:	75 2b 10                      	and	#16, r11
    59d7:	3b 17 07                      	bne.w	60ee <.LM334>

000059da <.LM162>:
    59da:	ef a8                         	mov.l	r10, r8
    59dc:	75 28 40                      	and	#64, r8
    59df:	3a 99 07                      	beq.w	6178 <.LBE24>

000059e2 <.LM163>:
    59e2:	ee 0d 2f 01                   	mov.l	1212[r0], r13
    59e6:	ef b8                         	mov.l	r11, r8
    59e8:	62 3d                         	add	#3, r13
    59ea:	75 2d fc                      	and	#-4, r13
    59ed:	71 d3 04                      	add	#4, r13, r3
    59f0:	eb 03 2f 01                   	mov.l	r3, 1212[r0]

000059f4 <.LVL124>:
    59f4:	5c d6                         	movu.w	[r13], r6
    59f6:	38 12 fe                      	bra.w	5808 <.LM94>

000059f9 <.L50>:
    59f9:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]

000059fd <.LM164>:
    59fd:	75 3a 10                      	or	#16, r10

00005a00 <.LM165>:
    5a00:	ef a8                         	mov.l	r10, r8
    5a02:	75 28 20                      	and	#32, r8
    5a05:	3a 04 06                      	beq.w	6009 <.LM310>

00005a08 <.LM166>:
    5a08:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005a0c <.LVL127>:
    5a0c:	62 37                         	add	#3, r7
    5a0e:	75 27 fc                      	and	#-4, r7
    5a11:	71 7d 08                      	add	#8, r7, r13
    5a14:	ec 76                         	mov.l	[r7], r6
    5a16:	ed 78 01                      	mov.l	4[r7], r8
    5a19:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

00005a1d <.LM167>:
    5a1d:	66 17                         	mov.l	#1, r7
    5a1f:	38 f9 fd                      	bra.w	5818 <.L92>

00005a22 <.L49>:
    5a22:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]

00005a26 <.LM168>:
    5a26:	75 3a 10                      	or	#16, r10

00005a29 <.LM169>:
    5a29:	ef a8                         	mov.l	r10, r8
    5a2b:	75 28 20                      	and	#32, r8
    5a2e:	3a 04 06                      	beq.w	6032 <.LM314>

00005a31 <.LM170>:
    5a31:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005a35 <.LVL131>:
    5a35:	62 37                         	add	#3, r7
    5a37:	75 27 fc                      	and	#-4, r7
    5a3a:	71 7b 08                      	add	#8, r7, r11

00005a3d <.LVL132>:
    5a3d:	ec 76                         	mov.l	[r7], r6
    5a3f:	ed 78 01                      	mov.l	4[r7], r8
    5a42:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

00005a46 <.LM171>:
    5a46:	66 07                         	mov.l	#0, r7
    5a48:	38 d0 fd                      	bra.w	5818 <.L92>

00005a4b <.L48>:
    5a4b:	ee 07 2f 01                   	mov.l	1212[r0], r7

00005a4f <.LM173>:
    5a4f:	75 3a 10                      	or	#16, r10

00005a52 <.LM174>:
    5a52:	62 37                         	add	#3, r7
    5a54:	75 27 fc                      	and	#-4, r7
    5a57:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    5a5b:	cb 0d 9e 04                   	mov.b	r13, 1182[r0]
    5a5f:	fd 74 ca 20                   	tst	#32, r10
    5a63:	3b 09 ff                      	bne.w	596c <.LM148>
    5a66:	ef 00                         	nop

00005a68 <.LM175>:
    5a68:	fd 74 ca 10                   	tst	#16, r10
    5a6c:	3b 24 06                      	bne.w	6090 <.LM322>

00005a6f <.LM176>:
    5a6f:	fd 74 ca 40                   	tst	#64, r10
    5a73:	3a 1d 06                      	beq.w	6090 <.LM322>

00005a76 <.LM177>:
    5a76:	dc 76                         	mov.w	[r7], r6
    5a78:	62 47                         	add	#4, r7
    5a7a:	fd bf 68                      	shar	#31, r6, r8
    5a7d:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

00005a81 <.LVL137>:
    5a81:	ef 8b                         	mov.l	r8, r11

00005a83 <.LVL138>:
    5a83:	38 f7 fe                      	bra.w	597a <.LM149>

00005a86 <.L43>:
    5a86:	75 4d 2b                      	mov.l	#43, r13
    5a89:	58 b7                         	movu.b	[r11], r7

00005a8b <.LM179>:
    5a8b:	38 3d fc                      	bra.w	56c8 <.LM64>

00005a8e <.L40>:
    5a8e:	5b d7                         	movu.b	r13, r7

00005a90 <.LVL142>:
    5a90:	61 07                         	cmp	#0, r7
    5a92:	3a 54 06                      	beq.w	60e6 <.LM333>

00005a95 <.LVL143>:
    5a95:	fc 13 00                      	nop
    5a98:	58 b7                         	movu.b	[r11], r7
    5a9a:	38 2e fc                      	bra.w	56c8 <.LM64>

00005a9d <.L41>:
    5a9d:	65 1a                         	or	#1, r10
    5a9f:	58 b7                         	movu.b	[r11], r7

00005aa1 <.LM182>:
    5aa1:	38 27 fc                      	bra.w	56c8 <.LM64>

00005aa4 <.L47>:
    5aa4:	ef b3                         	mov.l	r11, r3

00005aa6 <.LM183>:
    5aa6:	66 04                         	mov.l	#0, r4

00005aa8 <.LM184>:
    5aa8:	71 7b d0                      	add	#-48, r7, r11
    5aab:	ff 22 44                      	add	r4, r4, r2

00005aae <.LM185>:
    5aae:	fd 38 37                      	movu.b	[r3+], r7

00005ab1 <.LM186>:
    5ab1:	6c 34                         	shll	#3, r4

00005ab3 <.LVL150>:
    5ab3:	4b 24                         	add	r2, r4
    5ab5:	4b b4                         	add	r11, r4

00005ab7 <.LM187>:
    5ab7:	71 72 d0                      	add	#-48, r7, r2
    5aba:	61 92                         	cmp	#9, r2

00005abc <.LM188>:
    5abc:	ef 3b                         	mov.l	r3, r11

00005abe <.LM189>:
    5abe:	25 ea                         	bleu.b	5aa8 <.LM184>

00005ac0 <.LM190>:
    5ac0:	eb 04 2b 01                   	mov.l	r4, 1196[r0]
    5ac4:	38 06 fc                      	bra.w	56ca <.LM65>

00005ac7 <.L46>:
    5ac7:	76 3a 80 00                   	or	#128, r10
    5acb:	58 b7                         	movu.b	[r11], r7

00005acd <.LM192>:
    5acd:	38 fb fb                      	bra.w	56c8 <.LM64>

00005ad0 <.L45>:
    5ad0:	ef b3                         	mov.l	r11, r3
    5ad2:	fd 38 37                      	movu.b	[r3+], r7

00005ad5 <.LVL157>:
    5ad5:	75 57 2a                      	cmp	#42, r7
    5ad8:	3a 4a 07                      	beq.w	6222 <.LBE25>

00005adb <.LM194>:
    5adb:	71 74 d0                      	add	#-48, r7, r4
    5ade:	61 94                         	cmp	#9, r4
    5ae0:	66 0f                         	mov.l	#0, r15

00005ae2 <.LVL159>:
    5ae2:	25 05                         	bleu.b	5ae7 <.LVL160>
    5ae4:	38 04 07                      	bra.w	61e8 <.LM353>

00005ae7 <.LVL160>:
    5ae7:	03                            	nop

00005ae8 <.LM195>:
    5ae8:	ff 2b ff                      	add	r15, r15, r11

00005aeb <.LM196>:
    5aeb:	fd 38 37                      	movu.b	[r3+], r7

00005aee <.LM197>:
    5aee:	6c 3f                         	shll	#3, r15
    5af0:	4b bf                         	add	r11, r15
    5af2:	4b 4f                         	add	r4, r15

00005af4 <.LM198>:
    5af4:	71 74 d0                      	add	#-48, r7, r4
    5af7:	61 94                         	cmp	#9, r4

00005af9 <.LM199>:
    5af9:	ef 3b                         	mov.l	r3, r11

00005afb <.LM200>:
    5afb:	25 ed                         	bleu.b	5ae8 <.LM195>
    5afd:	fd 74 4f ff                   	max	#-1, r15

00005b01 <.LM201>:
    5b01:	38 c9 fb                      	bra.w	56ca <.LM65>

00005b04 <.LVL165>:
    5b04:	ee 04 25 01                   	mov.l	1172[r0], r4

00005b08 <.LM202>:
    5b08:	5a 03 9e 04                   	movu.b	1182[r0], r3

00005b0c <.LVL167>:
    5b0c:	61 03                         	cmp	#0, r3

00005b0e <.LVL168>:
    5b0e:	20 25                         	beq.b	5b33 <.LM204>

00005b10 <.LM203>:
    5b10:	ee 03 26 01                   	mov.l	1176[r0], r3

00005b14 <.LVL169>:
    5b14:	72 02 9e 04                   	add	#0x49e, r0, r2
    5b18:	62 13                         	add	#1, r3
    5b1a:	62 14                         	add	#1, r4
    5b1c:	e3 e2                         	mov.l	r2, [r14]
    5b1e:	f9 e6 01 01                   	mov.l	#1, 4[r14]
    5b22:	eb 03 26 01                   	mov.l	r3, 1176[r0]

00005b26 <.LVL170>:
    5b26:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5b2a:	61 74                         	cmp	#7, r4
    5b2c:	2b 05                         	ble.b	5b31 <.LVL170+0xb>
    5b2e:	38 78 04                      	bra.w	5fa6 <.LM303>
    5b31:	62 8e                         	add	#8, r14

00005b33 <.LM204>:
    5b33:	61 0d                         	cmp	#0, r13
    5b35:	20 25                         	beq.b	5b5a <.LM206>

00005b37 <.LM205>:
    5b37:	ee 0d 26 01                   	mov.l	1176[r0], r13
    5b3b:	72 03 9c 04                   	add	#0x49c, r0, r3

00005b3f <.LVL172>:
    5b3f:	62 2d                         	add	#2, r13
    5b41:	62 14                         	add	#1, r4
    5b43:	e3 e3                         	mov.l	r3, [r14]
    5b45:	f9 e6 01 02                   	mov.l	#2, 4[r14]
    5b49:	eb 0d 26 01                   	mov.l	r13, 1176[r0]

00005b4d <.LVL173>:
    5b4d:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5b51:	61 74                         	cmp	#7, r4
    5b53:	2b 05                         	ble.b	5b58 <.LVL173+0xb>
    5b55:	38 6d 04                      	bra.w	5fc2 <.LM305>
    5b58:	62 8e                         	add	#8, r14

00005b5a <.LM206>:
    5b5a:	75 5b 80                      	cmp	#128, r11
    5b5d:	3a 0e 02                      	beq.w	5d6b <.LM253>

00005b60 <.LM207>:
    5b60:	ee 08 2e 01                   	mov.l	1208[r0], r8
    5b64:	06 82 08 2c 01                	sub	1200[r0].l, r8

00005b69 <.LVL176>:
    5b69:	61 08                         	cmp	#0, r8
    5b6b:	2b 7f                         	ble.b	5bea <.LM216>

00005b6d <.LM208>:
    5b6d:	75 58 10                      	cmp	#16, r8
    5b70:	2b 58                         	ble.b	5bc8 <.LM214>

00005b72 <.LM209>:
    5b72:	fb b2 38 55 00 00             	mov.l	#0x5538, r11
    5b78:	ef 0d                         	mov.l	r0, r13
    5b7a:	2e 0e                         	bra.b	5b88 <.LM211>

00005b7c <.LM210>:
    5b7c:	62 8e                         	add	#8, r14

00005b7e <.LVL178>:
    5b7e:	71 88 f0                      	add	#-16, r8, r8
    5b81:	75 58 10                      	cmp	#16, r8
    5b84:	2b 44                         	ble.b	5bc8 <.LM214>

00005b86 <.LVL180>:
    5b86:	ef 00                         	nop

00005b88 <.LM211>:
    5b88:	ee 03 26 01                   	mov.l	1176[r0], r3

00005b8c <.LVL181>:
    5b8c:	62 14                         	add	#1, r4
    5b8e:	71 33 10                      	add	#16, r3, r3
    5b91:	f8 e2 e4 7b 00 00             	mov.l	#0x7be4, [r14]
    5b97:	f9 e6 01 10                   	mov.l	#16, 4[r14]
    5b9b:	eb 03 26 01                   	mov.l	r3, 1176[r0]

00005b9f <.LVL182>:
    5b9f:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5ba3:	61 74                         	cmp	#7, r4
    5ba5:	2b d7                         	ble.b	5b7c <.LM210>

00005ba7 <.LM212>:
    5ba7:	fb 3a 90 04                   	mov.l	#0x490, r3
    5bab:	4b 03                         	add	r0, r3
    5bad:	ef c1                         	mov.l	r12, r1
    5baf:	ef 92                         	mov.l	r9, r2
    5bb1:	7f 1b                         	jsr	r11

00005bb3 <.LVL183>:
    5bb3:	61 01                         	cmp	#0, r1
    5bb5:	3b 94 01                      	bne.w	5d49 <.L35>

00005bb8 <.LM213>:
    5bb8:	71 88 f0                      	add	#-16, r8, r8

00005bbb <.LVL184>:
    5bbb:	75 58 10                      	cmp	#16, r8
    5bbe:	ee 04 25 01                   	mov.l	1172[r0], r4
    5bc2:	ef de                         	mov.l	r13, r14

00005bc4 <.LVL185>:
    5bc4:	2a c4                         	bgt.b	5b88 <.LM211>

00005bc6 <.LVL186>:
    5bc6:	ef 00                         	nop

00005bc8 <.LM214>:
    5bc8:	ee 0b 26 01                   	mov.l	1176[r0], r11
    5bcc:	62 14                         	add	#1, r4
    5bce:	4b 8b                         	add	r8, r11
    5bd0:	f8 e2 e4 7b 00 00             	mov.l	#0x7be4, [r14]
    5bd6:	e7 e8 01                      	mov.l	r8, 4[r14]
    5bd9:	eb 0b 26 01                   	mov.l	r11, 1176[r0]

00005bdd <.LVL187>:
    5bdd:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5be1:	61 74                         	cmp	#7, r4
    5be3:	2b 05                         	ble.b	5be8 <.LM215>
    5be5:	38 05 03                      	bra.w	5eea <.LM287>

00005be8 <.LM215>:
    5be8:	62 8e                         	add	#8, r14

00005bea <.LM216>:
    5bea:	ee 0b 26 01                   	mov.l	1176[r0], r11
    5bee:	e3 e7                         	mov.l	r7, [r14]
    5bf0:	ee 07 2c 01                   	mov.l	1200[r0], r7

00005bf4 <.LVL189>:
    5bf4:	62 14                         	add	#1, r4
    5bf6:	06 8a 0b 2c 01                	add	1200[r0].l, r11
    5bfb:	e7 e7 01                      	mov.l	r7, 4[r14]
    5bfe:	eb 0b 26 01                   	mov.l	r11, 1176[r0]

00005c02 <.LVL190>:
    5c02:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5c06:	61 74                         	cmp	#7, r4
    5c08:	2b 05                         	ble.b	5c0d <.LVL190+0xb>
    5c0a:	38 eb 01                      	bra.w	5df5 <.LM262>
    5c0d:	62 8e                         	add	#8, r14

00005c0f <.LVL191>:
    5c0f:	03                            	nop

00005c10 <.LM217>:
    5c10:	fd 74 ca 04                   	tst	#4, r10
    5c14:	3a 9c 00                      	beq.w	5cb0 <.LVL206>

00005c17 <.LM218>:
    5c17:	ee 0a 2b 01                   	mov.l	1196[r0], r10

00005c1b <.LVL192>:
    5c1b:	43 6a                         	sub	r6, r10

00005c1d <.LVL193>:
    5c1d:	61 0a                         	cmp	#0, r10
    5c1f:	2a 05                         	bgt.b	5c24 <.LM219>
    5c21:	38 8f 00                      	bra.w	5cb0 <.LVL206>

00005c24 <.LM219>:
    5c24:	75 5a 10                      	cmp	#16, r10
    5c27:	ee 04 25 01                   	mov.l	1172[r0], r4
    5c2b:	2b 55                         	ble.b	5c80 <.LM224>

00005c2d <.LM220>:
    5c2d:	fb 72 38 55 00 00             	mov.l	#0x5538, r7
    5c33:	ef 0d                         	mov.l	r0, r13
    5c35:	2e 0c                         	bra.b	5c41 <.LM221>

00005c37 <.LVL194>:
    5c37:	62 8e                         	add	#8, r14

00005c39 <.LVL195>:
    5c39:	71 aa f0                      	add	#-16, r10, r10
    5c3c:	75 5a 10                      	cmp	#16, r10
    5c3f:	2b 41                         	ble.b	5c80 <.LM224>

00005c41 <.LM221>:
    5c41:	ee 0b 26 01                   	mov.l	1176[r0], r11
    5c45:	62 14                         	add	#1, r4
    5c47:	71 bb 10                      	add	#16, r11, r11
    5c4a:	f8 e2 d4 7b 00 00             	mov.l	#0x7bd4, [r14]
    5c50:	f9 e6 01 10                   	mov.l	#16, 4[r14]
    5c54:	eb 0b 26 01                   	mov.l	r11, 1176[r0]

00005c58 <.LVL197>:
    5c58:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5c5c:	61 74                         	cmp	#7, r4
    5c5e:	2b d9                         	ble.b	5c37 <.LVL194>

00005c60 <.LM222>:
    5c60:	fb 3a 90 04                   	mov.l	#0x490, r3

00005c64 <.LVL198>:
    5c64:	4b 03                         	add	r0, r3
    5c66:	ef c1                         	mov.l	r12, r1
    5c68:	ef 92                         	mov.l	r9, r2
    5c6a:	7f 17                         	jsr	r7

00005c6c <.LVL199>:
    5c6c:	61 01                         	cmp	#0, r1
    5c6e:	3b db 00                      	bne.w	5d49 <.L35>

00005c71 <.LM223>:
    5c71:	71 aa f0                      	add	#-16, r10, r10

00005c74 <.LVL200>:
    5c74:	75 5a 10                      	cmp	#16, r10
    5c77:	ee 04 25 01                   	mov.l	1172[r0], r4
    5c7b:	ef de                         	mov.l	r13, r14

00005c7d <.LVL201>:
    5c7d:	2a c4                         	bgt.b	5c41 <.LM221>

00005c7f <.LVL202>:
    5c7f:	03                            	nop

00005c80 <.LM224>:
    5c80:	ee 07 26 01                   	mov.l	1176[r0], r7
    5c84:	62 14                         	add	#1, r4
    5c86:	4b a7                         	add	r10, r7
    5c88:	f8 e2 d4 7b 00 00             	mov.l	#0x7bd4, [r14]
    5c8e:	e7 ea 01                      	mov.l	r10, 4[r14]
    5c91:	eb 07 26 01                   	mov.l	r7, 1176[r0]

00005c95 <.LVL203>:
    5c95:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5c99:	61 74                         	cmp	#7, r4
    5c9b:	2b 19                         	ble.b	5cb4 <.LM226>

00005c9d <.LM225>:
    5c9d:	fb 3a 90 04                   	mov.l	#0x490, r3

00005ca1 <.LVL204>:
    5ca1:	4b 03                         	add	r0, r3
    5ca3:	ef c1                         	mov.l	r12, r1
    5ca5:	ef 92                         	mov.l	r9, r2
    5ca7:	05 91 f8 ff                   	bsr.a	5538 <___sprint_r>

00005cab <.LVL205>:
    5cab:	61 01                         	cmp	#0, r1
    5cad:	3b 9c 00                      	bne.w	5d49 <.L35>

00005cb0 <.LVL206>:
    5cb0:	ee 07 26 01                   	mov.l	1176[r0], r7

00005cb4 <.LM226>:
    5cb4:	ee 0a 2b 01                   	mov.l	1196[r0], r10
    5cb8:	fc 13 6a                      	max	r6, r10
    5cbb:	06 8a 0a 2d 01                	add	1204[r0].l, r10
    5cc0:	eb 0a 2d 01                   	mov.l	r10, 1204[r0]

00005cc4 <.LM227>:
    5cc4:	61 07                         	cmp	#0, r7
    5cc6:	3b 47 01                      	bne.w	5e0d <.LM264>

00005cc9 <.LM228>:
    5cc9:	ee 0b 2a 01                   	mov.l	1192[r0], r11

00005ccd <.LM229>:
    5ccd:	fa 06 25 01 00                	mov.l	#0, 1172[r0]

00005cd2 <.LM230>:
    5cd2:	58 b7                         	movu.b	[r11], r7

00005cd4 <.LM231>:
    5cd4:	ef 0e                         	mov.l	r0, r14

00005cd6 <.LM232>:
    5cd6:	61 07                         	cmp	#0, r7
    5cd8:	3b 73 f9                      	bne.w	564b <.LVL25>

00005cdb <.LVL210>:
    5cdb:	ee 07 2a 01                   	mov.l	1192[r0], r7
    5cdf:	38 c2 f9                      	bra.w	56a1 <.LM58>

00005ce2 <.LM233>:
    5ce2:	61 17                         	cmp	#1, r7
    5ce4:	3a 59 02                      	beq.w	5f3d <.LM296>
    5ce7:	61 27                         	cmp	#2, r7
    5ce9:	3a 1d 02                      	beq.w	5f06 <.LM289>

00005cec <.LM234>:
    5cec:	fb da 8f 04                   	mov.l	#0x48f, r13
    5cf0:	4b 0d                         	add	r0, r13

00005cf2 <.LM235>:
    5cf2:	ef 6b                         	mov.l	r6, r11

00005cf4 <.LM236>:
    5cf4:	fd dd 84                      	shll	#29, r8, r4

00005cf7 <.LM237>:
    5cf7:	64 7b                         	and	#7, r11

00005cf9 <.LM238>:
    5cf9:	68 36                         	shlr	#3, r6

00005cfb <.LM239>:
    5cfb:	71 bb 30                      	add	#48, r11, r11

00005cfe <.LM240>:
    5cfe:	57 46                         	or	r4, r6
    5d00:	68 38                         	shlr	#3, r8

00005d02 <.LM241>:
    5d02:	ef d7                         	mov.l	r13, r7

00005d04 <.LVL214>:
    5d04:	c3 db                         	mov.b	r11, [r13]

00005d06 <.LM242>:
    5d06:	ff 54 86                      	or	r8, r6, r4
    5d09:	60 1d                         	sub	#1, r13
    5d0b:	61 04                         	cmp	#0, r4
    5d0d:	21 e5                         	bne.b	5cf2 <.LM235>

00005d0f <.LM243>:
    5d0f:	fd 74 ca 01                   	tst	#1, r10

00005d13 <.LM244>:
    5d13:	ef 74                         	mov.l	r7, r4

00005d15 <.LM245>:
    5d15:	20 13                         	beq.b	5d28 <.LVL215+0x5>

00005d17 <.LM246>:
    5d17:	5b bb                         	movu.b	r11, r11
    5d19:	75 5b 30                      	cmp	#48, r11
    5d1c:	3a 14 02                      	beq.w	5f30 <.LVL257>

00005d1f <.LM247>:
    5d1f:	60 14                         	sub	#1, r4
    5d21:	ef d7                         	mov.l	r13, r7

00005d23 <.LVL215>:
    5d23:	3c 40 30                      	mov.b	#48, [r4]
    5d26:	ef 00                         	nop
    5d28:	ee 0b 28 01                   	mov.l	1184[r0], r11
    5d2c:	43 7b                         	sub	r7, r11
    5d2e:	eb 0b 2c 01                   	mov.l	r11, 1200[r0]
    5d32:	38 1e fb                      	bra.w	5850 <.LBB17>

00005d35 <.LDL1>:
    5d35:	ee 07 26 01                   	mov.l	1176[r0], r7
    5d39:	61 07                         	cmp	#0, r7
    5d3b:	20 0e                         	beq.b	5d49 <.L35>

00005d3d <.LM249>:
    5d3d:	ef c1                         	mov.l	r12, r1
    5d3f:	ef 92                         	mov.l	r9, r2
    5d41:	72 03 90 04                   	add	#0x490, r0, r3
    5d45:	05 f3 f7 ff                   	bsr.a	5538 <___sprint_r>

00005d49 <.L35>:
    5d49:	dd 97 06                      	mov.w	12[r9], r7
    5d4c:	75 27 40                      	and	#64, r7
    5d4f:	df 77                         	mov.w	r7, r7
    5d51:	61 07                         	cmp	#0, r7
    5d53:	20 0d                         	beq.b	5d60 <.LM252>

00005d55 <.LVL218>:
    5d55:	fc 13 00                      	nop

00005d58 <.LM251>:
    5d58:	fa 06 2d 01 ff                	mov.l	#-1, 1204[r0]
    5d5d:	fc 13 00                      	nop

00005d60 <.LM252>:
    5d60:	ee 01 2d 01                   	mov.l	1204[r0], r1
    5d64:	72 00 d4 04                   	add	#0x4d4, r0, r0
    5d68:	3f 6d 08                      	rtsd	#32, r6-r13

00005d6b <.LM253>:
    5d6b:	ee 08 2b 01                   	mov.l	1196[r0], r8
    5d6f:	43 68                         	sub	r6, r8

00005d71 <.LVL220>:
    5d71:	61 08                         	cmp	#0, r8
    5d73:	2a 05                         	bgt.b	5d78 <.LM254>
    5d75:	38 eb fd                      	bra.w	5b60 <.LM207>

00005d78 <.LM254>:
    5d78:	75 58 10                      	cmp	#16, r8
    5d7b:	2b 55                         	ble.b	5dd0 <.LM260>

00005d7d <.LM255>:
    5d7d:	fb b2 38 55 00 00             	mov.l	#0x5538, r11
    5d83:	ef 0d                         	mov.l	r0, r13
    5d85:	2e 0c                         	bra.b	5d91 <.LM257>

00005d87 <.LM256>:
    5d87:	62 8e                         	add	#8, r14

00005d89 <.LVL222>:
    5d89:	71 88 f0                      	add	#-16, r8, r8
    5d8c:	75 58 10                      	cmp	#16, r8
    5d8f:	2b 41                         	ble.b	5dd0 <.LM260>

00005d91 <.LM257>:
    5d91:	ee 03 26 01                   	mov.l	1176[r0], r3

00005d95 <.LVL225>:
    5d95:	62 14                         	add	#1, r4
    5d97:	71 33 10                      	add	#16, r3, r3
    5d9a:	f8 e2 e4 7b 00 00             	mov.l	#0x7be4, [r14]
    5da0:	f9 e6 01 10                   	mov.l	#16, 4[r14]
    5da4:	eb 03 26 01                   	mov.l	r3, 1176[r0]

00005da8 <.LVL226>:
    5da8:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5dac:	61 74                         	cmp	#7, r4
    5dae:	2b d9                         	ble.b	5d87 <.LM256>

00005db0 <.LM258>:
    5db0:	fb 3a 90 04                   	mov.l	#0x490, r3
    5db4:	4b 03                         	add	r0, r3
    5db6:	ef c1                         	mov.l	r12, r1
    5db8:	ef 92                         	mov.l	r9, r2
    5dba:	7f 1b                         	jsr	r11

00005dbc <.LVL227>:
    5dbc:	61 01                         	cmp	#0, r1
    5dbe:	21 8b                         	bne.b	5d49 <.L35>

00005dc0 <.LM259>:
    5dc0:	71 88 f0                      	add	#-16, r8, r8

00005dc3 <.LVL228>:
    5dc3:	75 58 10                      	cmp	#16, r8
    5dc6:	ee 04 25 01                   	mov.l	1172[r0], r4
    5dca:	ef de                         	mov.l	r13, r14

00005dcc <.LVL229>:
    5dcc:	2a c5                         	bgt.b	5d91 <.LM257>

00005dce <.LVL230>:
    5dce:	ef 00                         	nop

00005dd0 <.LM260>:
    5dd0:	ee 0b 26 01                   	mov.l	1176[r0], r11
    5dd4:	62 14                         	add	#1, r4
    5dd6:	4b 8b                         	add	r8, r11
    5dd8:	f8 e2 e4 7b 00 00             	mov.l	#0x7be4, [r14]
    5dde:	e7 e8 01                      	mov.l	r8, 4[r14]
    5de1:	eb 0b 26 01                   	mov.l	r11, 1176[r0]

00005de5 <.LVL231>:
    5de5:	eb 04 25 01                   	mov.l	r4, 1172[r0]
    5de9:	61 74                         	cmp	#7, r4
    5deb:	2b 05                         	ble.b	5df0 <.LM261>
    5ded:	38 5f 03                      	bra.w	614c <.LM340>

00005df0 <.LM261>:
    5df0:	62 8e                         	add	#8, r14

00005df2 <.LVL232>:
    5df2:	38 6e fd                      	bra.w	5b60 <.LM207>

00005df5 <.LM262>:
    5df5:	fb 3a 90 04                   	mov.l	#0x490, r3

00005df9 <.LVL234>:
    5df9:	4b 03                         	add	r0, r3
    5dfb:	ef c1                         	mov.l	r12, r1
    5dfd:	ef 92                         	mov.l	r9, r2
    5dff:	05 39 f7 ff                   	bsr.a	5538 <___sprint_r>

00005e03 <.LVL235>:
    5e03:	61 01                         	cmp	#0, r1
    5e05:	3b 44 ff                      	bne.w	5d49 <.L35>

00005e08 <.LM263>:
    5e08:	ef 0e                         	mov.l	r0, r14
    5e0a:	38 06 fe                      	bra.w	5c10 <.LM217>

00005e0d <.LM264>:
    5e0d:	fb 3a 90 04                   	mov.l	#0x490, r3

00005e11 <.LVL237>:
    5e11:	4b 03                         	add	r0, r3
    5e13:	ef c1                         	mov.l	r12, r1
    5e15:	ef 92                         	mov.l	r9, r2
    5e17:	05 21 f7 ff                   	bsr.a	5538 <___sprint_r>

00005e1b <.LVL238>:
    5e1b:	61 01                         	cmp	#0, r1
    5e1d:	3a ac fe                      	beq.w	5cc9 <.LM228>
    5e20:	38 29 ff                      	bra.w	5d49 <.L35>

00005e23 <.LM265>:
    5e23:	ef c1                         	mov.l	r12, r1
    5e25:	ef 92                         	mov.l	r9, r2
    5e27:	eb 03 33 01                   	mov.l	r3, 1228[r0]
    5e2b:	05 e5 cf ff                   	bsr.a	2e10 <___swsetup_r>

00005e2f <.LVL240>:
    5e2f:	61 01                         	cmp	#0, r1
    5e31:	ee 03 33 01                   	mov.l	1228[r0], r3
    5e35:	3b 23 ff                      	bne.w	5d58 <.LM251>
    5e38:	dd 97 06                      	mov.w	12[r9], r7

00005e3b <.LM266>:
    5e3b:	ef 7a                         	mov.l	r7, r10
    5e3d:	75 2a 1a                      	and	#26, r10
    5e40:	61 aa                         	cmp	#10, r10
    5e42:	3b c7 f7                      	bne.w	5609 <.LM37>
    5e45:	fc 13 00                      	nop

00005e48 <.LM267>:
    5e48:	dd 9a 07                      	mov.w	14[r9], r10

00005e4b <.LM268>:
    5e4b:	df ab                         	mov.w	r10, r11
    5e4d:	61 0b                         	cmp	#0, r11
    5e4f:	28 05                         	bge.b	5e54 <.LBB20>
    5e51:	38 b8 f7                      	bra.w	5609 <.LM37>

00005e54 <.LBB20>:
    5e54:	75 27 fd                      	and	#-3, r7
    5e57:	db 07 06 02                   	mov.w	r7, 1036[r0]

00005e5b <.LM270>:
    5e5b:	db 0a 07 02                   	mov.w	r10, 1038[r0]

00005e5f <.LM271>:
    5e5f:	ed 97 19                      	mov.l	100[r9], r7

00005e62 <.LM272>:
    5e62:	ed 9a 07                      	mov.l	28[r9], r10

00005e65 <.LM273>:
    5e65:	ed 9b 09                      	mov.l	36[r9], r11

00005e68 <.LM274>:
    5e68:	fb 2a 00 04                   	mov.l	#0x400, r2
    5e6c:	ee 04 2f 01                   	mov.l	1212[r0], r4
    5e70:	4b 02                         	add	r0, r2
    5e72:	ef c1                         	mov.l	r12, r1

00005e74 <.LM275>:
    5e74:	eb 07 19 01                   	mov.l	r7, 1124[r0]

00005e78 <.LM276>:
    5e78:	eb 0a 07 01                   	mov.l	r10, 1052[r0]

00005e7c <.LM277>:
    5e7c:	eb 0b 09 01                   	mov.l	r11, 1060[r0]

00005e80 <.LM278>:
    5e80:	eb 00                         	nop
    5e82:	00                            	brk
    5e83:	01                            	dbt
    5e84:	eb 00                         	nop
    5e86:	04 01 fa 0a                   	bra.a	b5887 <.Ldebug_info0+0x9a1c4>

00005e88 <.LM279>:
    5e88:	fa 0a 02 01 00 04             	mov.l	#0x400, 1032[r0]
    5e8e:	fa 0a 05 01 00 04             	mov.l	#0x400, 1044[r0]

00005e94 <.LM280>:
    5e94:	fa 06 06 01 00                	mov.l	#0, 1048[r0]

00005e99 <.LM281>:
    5e99:	05 17 f7 ff                   	bsr.a	55b0 <__vfiprintf_r>

00005e9d <.LVL242>:
    5e9d:	eb 01 2d 01                   	mov.l	r1, 1204[r0]

00005ea1 <.LM282>:
    5ea1:	61 01                         	cmp	#0, r1
    5ea3:	29 15                         	blt.b	5eb8 <.LBE21>
    5ea5:	fb 2a 00 04                   	mov.l	#0x400, r2
    5ea9:	4b 02                         	add	r0, r2
    5eab:	ef c1                         	mov.l	r12, r1

00005ead <.LVL244>:
    5ead:	05 ab e0 ff                   	bsr.a	3f58 <__fflush_r>

00005eb1 <.LVL245>:
    5eb1:	61 01                         	cmp	#0, r1
    5eb3:	3b 8e 03                      	bne.w	6241 <.LBB23>
    5eb6:	ef 00                         	nop

00005eb8 <.LBE21>:
    5eb8:	de 07 06 02                   	mov.w	1036[r0], r7

00005ebc <.LBB22>:
    5ebc:	75 27 40                      	and	#64, r7
    5ebf:	df 77                         	mov.w	r7, r7
    5ec1:	61 07                         	cmp	#0, r7
    5ec3:	3a 9d fe                      	beq.w	5d60 <.LM252>

00005ec6 <.LM284>:
    5ec6:	dd 97 06                      	mov.w	12[r9], r7
    5ec9:	75 37 40                      	or	#64, r7
    5ecc:	d7 97 06                      	mov.w	r7, 12[r9]
    5ecf:	38 91 fe                      	bra.w	5d60 <.LM252>

00005ed2 <.LBE20>:
    5ed2:	fb 3a 90 04                   	mov.l	#0x490, r3

00005ed6 <.LVL247>:
    5ed6:	4b 03                         	add	r0, r3
    5ed8:	ef c1                         	mov.l	r12, r1
    5eda:	ef 92                         	mov.l	r9, r2
    5edc:	05 5c f6 ff                   	bsr.a	5538 <___sprint_r>

00005ee0 <.LVL248>:
    5ee0:	61 01                         	cmp	#0, r1
    5ee2:	3b 67 fe                      	bne.w	5d49 <.L35>

00005ee5 <.LM286>:
    5ee5:	ef 0e                         	mov.l	r0, r14
    5ee7:	38 b1 f7                      	bra.w	5698 <.LM57>

00005eea <.LM287>:
    5eea:	fb 3a 90 04                   	mov.l	#0x490, r3

00005eee <.LVL250>:
    5eee:	4b 03                         	add	r0, r3
    5ef0:	ef c1                         	mov.l	r12, r1
    5ef2:	ef 92                         	mov.l	r9, r2
    5ef4:	05 44 f6 ff                   	bsr.a	5538 <___sprint_r>

00005ef8 <.LVL251>:
    5ef8:	61 01                         	cmp	#0, r1
    5efa:	3b 4f fe                      	bne.w	5d49 <.L35>
    5efd:	ee 04 25 01                   	mov.l	1172[r0], r4

00005f01 <.LM288>:
    5f01:	ef 0e                         	mov.l	r0, r14
    5f03:	38 e7 fc                      	bra.w	5bea <.LM216>

00005f06 <.LM289>:
    5f06:	fb ba 8f 04                   	mov.l	#0x48f, r11
    5f0a:	ee 03 31 01                   	mov.l	1220[r0], r3
    5f0e:	4b 0b                         	add	r0, r11

00005f10 <.LM290>:
    5f10:	ef b7                         	mov.l	r11, r7

00005f12 <.LVL254>:
    5f12:	ef 6b                         	mov.l	r6, r11
    5f14:	64 fb                         	and	#15, r11

00005f16 <.LM291>:
    5f16:	fd dc 84                      	shll	#28, r8, r4
    5f19:	fd 84 6d                      	shlr	#4, r6, r13

00005f1c <.LM292>:
    5f1c:	fe 4b 3b                      	mov.b	[r11, r3], r11

00005f1f <.LM293>:
    5f1f:	68 48                         	shlr	#4, r8

00005f21 <.LVL255>:
    5f21:	ff 56 d4                      	or	r13, r4, r6

00005f24 <.LM294>:
    5f24:	c3 7b                         	mov.b	r11, [r7]

00005f26 <.LM295>:
    5f26:	ff 5d 86                      	or	r8, r6, r13
    5f29:	71 7b ff                      	add	#-1, r7, r11
    5f2c:	61 0d                         	cmp	#0, r13
    5f2e:	21 e2                         	bne.b	5f10 <.LM290>

00005f30 <.LVL257>:
    5f30:	ee 0d 28 01                   	mov.l	1184[r0], r13
    5f34:	43 7d                         	sub	r7, r13
    5f36:	eb 0d 2c 01                   	mov.l	r13, 1200[r0]
    5f3a:	38 16 f9                      	bra.w	5850 <.LBB17>

00005f3d <.LM296>:
    5f3d:	61 08                         	cmp	#0, r8
    5f3f:	3a 1c 01                      	beq.w	605b <.LM318>

00005f42 <.LM297>:
    5f42:	fb 5a 8f 04                   	mov.l	#0x48f, r5
    5f46:	eb 0a 2c 01                   	mov.l	r10, 1200[r0]
    5f4a:	eb 0c 2e 01                   	mov.l	r12, 1208[r0]
    5f4e:	ef 6a                         	mov.l	r6, r10

00005f50 <.LVL259>:
    5f50:	ef 8c                         	mov.l	r8, r12
    5f52:	4b 05                         	add	r0, r5
    5f54:	fb d2 40 74 00 00             	mov.l	#0x7440, r13
    5f5a:	fb b2 70 70 00 00             	mov.l	#0x7070, r11
    5f60:	ef f6                         	mov.l	r15, r6

00005f62 <.LVL260>:
    5f62:	ef e8                         	mov.l	r14, r8

00005f64 <.LM298>:
    5f64:	ef a1                         	mov.l	r10, r1
    5f66:	ef c2                         	mov.l	r12, r2
    5f68:	66 a3                         	mov.l	#10, r3
    5f6a:	66 04                         	mov.l	#0, r4
    5f6c:	ef 57                         	mov.l	r5, r7

00005f6e <.LVL262>:
    5f6e:	7f 1d                         	jsr	r13

00005f70 <.LVL263>:
    5f70:	71 11 30                      	add	#48, r1, r1
    5f73:	c3 71                         	mov.b	r1, [r7]

00005f75 <.LM299>:
    5f75:	ef c2                         	mov.l	r12, r2
    5f77:	ef a1                         	mov.l	r10, r1
    5f79:	66 04                         	mov.l	#0, r4
    5f7b:	66 a3                         	mov.l	#10, r3
    5f7d:	7f 1b                         	jsr	r11

00005f7f <.LM300>:
    5f7f:	ff 54 21                      	or	r2, r1, r4
    5f82:	71 75 ff                      	add	#-1, r7, r5
    5f85:	61 04                         	cmp	#0, r4

00005f87 <.LM301>:
    5f87:	ef 1a                         	mov.l	r1, r10

00005f89 <.LVL265>:
    5f89:	ef 2c                         	mov.l	r2, r12

00005f8b <.LM302>:
    5f8b:	21 d9                         	bne.b	5f64 <.LM298>
    5f8d:	ee 0b 28 01                   	mov.l	1184[r0], r11
    5f91:	ee 0a 2c 01                   	mov.l	1200[r0], r10
    5f95:	43 7b                         	sub	r7, r11
    5f97:	ef 8e                         	mov.l	r8, r14
    5f99:	ef 6f                         	mov.l	r6, r15
    5f9b:	ee 0c 2e 01                   	mov.l	1208[r0], r12
    5f9f:	eb 0b 2c 01                   	mov.l	r11, 1200[r0]
    5fa3:	38 ad f8                      	bra.w	5850 <.LBB17>

00005fa6 <.LM303>:
    5fa6:	fb 3a 90 04                   	mov.l	#0x490, r3
    5faa:	4b 03                         	add	r0, r3
    5fac:	ef c1                         	mov.l	r12, r1
    5fae:	ef 92                         	mov.l	r9, r2
    5fb0:	05 88 f5 ff                   	bsr.a	5538 <___sprint_r>

00005fb4 <.LVL268>:
    5fb4:	61 01                         	cmp	#0, r1
    5fb6:	3b 93 fd                      	bne.w	5d49 <.L35>
    5fb9:	ee 04 25 01                   	mov.l	1172[r0], r4

00005fbd <.LM304>:
    5fbd:	ef 0e                         	mov.l	r0, r14
    5fbf:	38 74 fb                      	bra.w	5b33 <.LM204>

00005fc2 <.LM305>:
    5fc2:	fb 3a 90 04                   	mov.l	#0x490, r3
    5fc6:	4b 03                         	add	r0, r3
    5fc8:	ef c1                         	mov.l	r12, r1
    5fca:	ef 92                         	mov.l	r9, r2
    5fcc:	05 6c f5 ff                   	bsr.a	5538 <___sprint_r>

00005fd0 <.LVL270>:
    5fd0:	61 01                         	cmp	#0, r1
    5fd2:	3b 77 fd                      	bne.w	5d49 <.L35>
    5fd5:	ee 04 25 01                   	mov.l	1172[r0], r4

00005fd9 <.LM306>:
    5fd9:	ef 0e                         	mov.l	r0, r14
    5fdb:	38 7f fb                      	bra.w	5b5a <.LM206>

00005fde <.LM307>:
    5fde:	eb 03 33 01                   	mov.l	r3, 1228[r0]
    5fe2:	05 62 e0 ff                   	bsr.a	4044 <___sinit>

00005fe6 <.LVL272>:
    5fe6:	ee 03 33 01                   	mov.l	1228[r0], r3
    5fea:	38 de f5                      	bra.w	55c8 <.LM32>

00005fed <.LM308>:
    5fed:	fb 3a 90 04                   	mov.l	#0x490, r3
    5ff1:	4b 03                         	add	r0, r3
    5ff3:	ef c1                         	mov.l	r12, r1
    5ff5:	ef 92                         	mov.l	r9, r2
    5ff7:	05 41 f5 ff                   	bsr.a	5538 <___sprint_r>

00005ffb <.LVL274>:
    5ffb:	61 01                         	cmp	#0, r1
    5ffd:	3b 4c fd                      	bne.w	5d49 <.L35>
    6000:	ee 04 25 01                   	mov.l	1172[r0], r4

00006004 <.LM309>:
    6004:	ef 0e                         	mov.l	r0, r14
    6006:	38 02 fb                      	bra.w	5b08 <.LM202>

00006009 <.LM310>:
    6009:	ef a7                         	mov.l	r10, r7

0000600b <.LVL276>:
    600b:	75 27 10                      	and	#16, r7
    600e:	3b b1 00                      	bne.w	60bf <.LM327>

00006011 <.LM311>:
    6011:	ef a8                         	mov.l	r10, r8
    6013:	75 28 40                      	and	#64, r8
    6016:	3a a9 00                      	beq.w	60bf <.LM327>

00006019 <.LM312>:
    6019:	ee 0b 2f 01                   	mov.l	1212[r0], r11

0000601d <.LVL277>:
    601d:	ef 78                         	mov.l	r7, r8
    601f:	62 3b                         	add	#3, r11
    6021:	75 2b fc                      	and	#-4, r11
    6024:	71 bd 04                      	add	#4, r11, r13
    6027:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

0000602b <.LVL278>:
    602b:	5c b6                         	movu.w	[r11], r6

0000602d <.LM313>:
    602d:	66 17                         	mov.l	#1, r7
    602f:	38 e9 f7                      	bra.w	5818 <.L92>

00006032 <.LM314>:
    6032:	ef a7                         	mov.l	r10, r7

00006034 <.LVL280>:
    6034:	75 27 10                      	and	#16, r7
    6037:	3b cc 00                      	bne.w	6103 <.LM335>

0000603a <.LM315>:
    603a:	ef a8                         	mov.l	r10, r8
    603c:	75 28 40                      	and	#64, r8
    603f:	3a 4d 01                      	beq.w	618c <.LM344>

00006042 <.LM316>:
    6042:	ee 0b 2f 01                   	mov.l	1212[r0], r11

00006046 <.LVL281>:
    6046:	ef 78                         	mov.l	r7, r8
    6048:	62 3b                         	add	#3, r11
    604a:	75 2b fc                      	and	#-4, r11
    604d:	71 b7 04                      	add	#4, r11, r7
    6050:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

00006054 <.LVL282>:
    6054:	5c b6                         	movu.w	[r11], r6

00006056 <.LM317>:
    6056:	cf 87                         	mov.b	r8, r7

00006058 <.LVL283>:
    6058:	38 c0 f7                      	bra.w	5818 <.L92>

0000605b <.LM318>:
    605b:	61 96                         	cmp	#9, r6
    605d:	25 05                         	bleu.b	6062 <.LVL285>
    605f:	38 e3 fe                      	bra.w	5f42 <.LM297>

00006062 <.LVL285>:
    6062:	ee 0d 32 01                   	mov.l	1224[r0], r13

00006066 <.LM319>:
    6066:	71 66 30                      	add	#48, r6, r6

00006069 <.LVL286>:
    6069:	fb 7a 8f 04                   	mov.l	#0x48f, r7

0000606d <.LVL287>:
    606d:	cb 06 8f 04                   	mov.b	r6, 1167[r0]
    6071:	eb 0d 2c 01                   	mov.l	r13, 1200[r0]
    6075:	4b 07                         	add	r0, r7

00006077 <.LM320>:
    6077:	38 d9 f7                      	bra.w	5850 <.LBB17>

0000607a <.LVL289>:
    607a:	ee 07 32 01                   	mov.l	1224[r0], r7

0000607e <.LM321>:
    607e:	fa 04 8f 04 30                	mov.b	#48, 1167[r0]
    6083:	eb 07 2c 01                   	mov.l	r7, 1200[r0]
    6087:	fb 7a 8f 04                   	mov.l	#0x48f, r7
    608b:	4b 07                         	add	r0, r7

0000608d <.LVL291>:
    608d:	38 c3 f7                      	bra.w	5850 <.LBB17>

00006090 <.LM322>:
    6090:	ec 76                         	mov.l	[r7], r6
    6092:	62 47                         	add	#4, r7
    6094:	fd bf 68                      	shar	#31, r6, r8
    6097:	ef 8b                         	mov.l	r8, r11

00006099 <.LVL293>:
    6099:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

0000609d <.LM323>:
    609d:	61 0b                         	cmp	#0, r11
    609f:	29 05                         	blt.b	60a4 <.LM324>
    60a1:	38 e0 f8                      	bra.w	5981 <.LVL114>

000060a4 <.LM324>:
    60a4:	66 07                         	mov.l	#0, r7
    60a6:	ff 0b 67                      	sub	r6, r7, r11
    60a9:	fc 03 87                      	sbb	r8, r7
    60ac:	ef 78                         	mov.l	r7, r8
    60ae:	ef b6                         	mov.l	r11, r6

000060b0 <.LM325>:
    60b0:	fa 04 9e 04 2d                	mov.b	#45, 1182[r0]
    60b5:	fa 04 c0 04 2d                	mov.b	#45, 1216[r0]

000060ba <.LM326>:
    60ba:	66 17                         	mov.l	#1, r7

000060bc <.LVL297>:
    60bc:	38 66 f7                      	bra.w	5822 <.L86>

000060bf <.LM327>:
    60bf:	ee 07 2f 01                   	mov.l	1212[r0], r7
    60c3:	62 37                         	add	#3, r7
    60c5:	75 27 fc                      	and	#-4, r7
    60c8:	71 7b 04                      	add	#4, r7, r11

000060cb <.LVL299>:
    60cb:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

000060cf <.LVL300>:
    60cf:	ec 76                         	mov.l	[r7], r6

000060d1 <.LM328>:
    60d1:	66 17                         	mov.l	#1, r7
    60d3:	38 45 f7                      	bra.w	5818 <.L92>

000060d6 <.LM329>:
    60d6:	cb 07 9d 04                   	mov.b	r7, 1181[r0]

000060da <.LM330>:
    60da:	fa 04 9c 04 30                	mov.b	#48, 1180[r0]

000060df <.LM331>:
    60df:	65 2a                         	or	#2, r10

000060e1 <.LM332>:
    60e1:	66 27                         	mov.l	#2, r7

000060e3 <.LVL303>:
    60e3:	38 35 f7                      	bra.w	5818 <.L92>

000060e6 <.LM333>:
    60e6:	75 4d 20                      	mov.l	#32, r13
    60e9:	58 b7                         	movu.b	[r11], r7
    60eb:	38 dd f5                      	bra.w	56c8 <.LM64>

000060ee <.LM334>:
    60ee:	ee 0b 2f 01                   	mov.l	1212[r0], r11
    60f2:	62 3b                         	add	#3, r11
    60f4:	75 2b fc                      	and	#-4, r11
    60f7:	71 bd 04                      	add	#4, r11, r13
    60fa:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

000060fe <.LVL306>:
    60fe:	ec b6                         	mov.l	[r11], r6
    6100:	38 08 f7                      	bra.w	5808 <.LM94>

00006103 <.LM335>:
    6103:	ee 07 2f 01                   	mov.l	1212[r0], r7
    6107:	62 37                         	add	#3, r7
    6109:	75 27 fc                      	and	#-4, r7
    610c:	71 7d 04                      	add	#4, r7, r13
    610f:	eb 0d 2f 01                   	mov.l	r13, 1212[r0]

00006113 <.LVL308>:
    6113:	ec 76                         	mov.l	[r7], r6

00006115 <.LM336>:
    6115:	cf 87                         	mov.b	r8, r7
    6117:	38 01 f7                      	bra.w	5818 <.L92>

0000611a <.LM337>:
    611a:	ee 0b 2d 01                   	mov.l	1204[r0], r11

0000611e <.LVL310>:
    611e:	ec 7a                         	mov.l	[r7], r10

00006120 <.LVL311>:
    6120:	ee 0d 2d 01                   	mov.l	1204[r0], r13
    6124:	6b fb                         	shar	#31, r11
    6126:	62 47                         	add	#4, r7
    6128:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

0000612c <.LVL312>:
    612c:	e3 ad                         	mov.l	r13, [r10]
    612e:	e7 ab 01                      	mov.l	r11, 4[r10]
    6131:	38 0f f5                      	bra.w	5640 <.LM49>

00006134 <.L226>:
    6134:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    6138:	38 f1 f8                      	bra.w	5a29 <.LM169>

0000613b <.L227>:
    613b:	eb 0b 2a 01                   	mov.l	r11, 1192[r0]
    613f:	38 c1 f8                      	bra.w	5a00 <.LM165>

00006142 <.LM338>:
    6142:	62 1b                         	add	#1, r11

00006144 <.LM339>:
    6144:	75 3a 20                      	or	#32, r10
    6147:	b0 4f                         	movu.b	1[r4], r7
    6149:	38 7f f5                      	bra.w	56c8 <.LM64>

0000614c <.LM340>:
    614c:	fb 3a 90 04                   	mov.l	#0x490, r3

00006150 <.LVL318>:
    6150:	4b 03                         	add	r0, r3
    6152:	ef c1                         	mov.l	r12, r1
    6154:	ef 92                         	mov.l	r9, r2
    6156:	05 e2 f3 ff                   	bsr.a	5538 <___sprint_r>

0000615a <.LVL319>:
    615a:	61 01                         	cmp	#0, r1
    615c:	3b ed fb                      	bne.w	5d49 <.L35>
    615f:	ee 04 25 01                   	mov.l	1172[r0], r4

00006163 <.LM341>:
    6163:	ef 0e                         	mov.l	r0, r14
    6165:	38 fb f9                      	bra.w	5b60 <.LM207>

00006168 <.LVL320>:
    6168:	ce 0d 9e 04                   	mov.b	1182[r0], r13

0000616c <.LBB24>:
    616c:	fa 06 2e 01 00                	mov.l	#0, 1208[r0]
    6171:	cb 0d c0 04                   	mov.b	r13, 1216[r0]
    6175:	38 df f6                      	bra.w	5854 <.L100>

00006178 <.LBE24>:
    6178:	ee 0b 2f 01                   	mov.l	1212[r0], r11
    617c:	62 3b                         	add	#3, r11
    617e:	75 2b fc                      	and	#-4, r11
    6181:	ec b6                         	mov.l	[r11], r6
    6183:	62 4b                         	add	#4, r11
    6185:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

00006189 <.LVL322>:
    6189:	38 7f f6                      	bra.w	5808 <.LM94>

0000618c <.LM344>:
    618c:	ee 07 2f 01                   	mov.l	1212[r0], r7
    6190:	62 37                         	add	#3, r7
    6192:	75 27 fc                      	and	#-4, r7
    6195:	71 7b 04                      	add	#4, r7, r11

00006198 <.LVL324>:
    6198:	eb 0b 2f 01                   	mov.l	r11, 1212[r0]

0000619c <.LVL325>:
    619c:	ec 76                         	mov.l	[r7], r6

0000619e <.LM345>:
    619e:	cf 87                         	mov.b	r8, r7
    61a0:	38 78 f6                      	bra.w	5818 <.L92>

000061a3 <.LM346>:
    61a3:	fd 74 ca 40                   	tst	#64, r10

000061a7 <.LM347>:
    61a7:	ec 7a                         	mov.l	[r7], r10

000061a9 <.LM348>:
    61a9:	20 30                         	beq.b	61d9 <.LM352>

000061ab <.LM349>:
    61ab:	de 0b 5a 02                   	mov.w	1204[r0], r11

000061af <.LVL328>:
    61af:	62 47                         	add	#4, r7
    61b1:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

000061b5 <.LVL329>:
    61b5:	d3 ab                         	mov.w	r11, [r10]
    61b7:	38 89 f4                      	bra.w	5640 <.LM49>

000061ba <.LM350>:
    61ba:	eb 0f 2c 01                   	mov.l	r15, 1200[r0]
    61be:	61 6f                         	cmp	#6, r15
    61c0:	25 08                         	bleu.b	61c8 <.LVL331>
    61c2:	fa 06 2c 01 06                	mov.l	#6, 1200[r0]
    61c7:	03                            	nop

000061c8 <.LVL331>:
    61c8:	ee 06 2c 01                   	mov.l	1200[r0], r6

000061cc <.LM351>:
    61cc:	fb 72 48 78 00 00             	mov.l	#0x7848, r7
    61d2:	fd 74 46 00                   	max	#0, r6
    61d6:	38 22 f5                      	bra.w	56f8 <.LM72>

000061d9 <.LM352>:
    61d9:	ee 0d 2d 01                   	mov.l	1204[r0], r13
    61dd:	62 47                         	add	#4, r7
    61df:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

000061e3 <.LVL333>:
    61e3:	e3 ad                         	mov.l	r13, [r10]
    61e5:	38 5b f4                      	bra.w	5640 <.LM49>

000061e8 <.LM353>:
    61e8:	ef 3b                         	mov.l	r3, r11

000061ea <.LM354>:
    61ea:	66 0f                         	mov.l	#0, r15
    61ec:	38 de f4                      	bra.w	56ca <.LM65>

000061ef <.LM355>:
    61ef:	eb 0e 34 01                   	mov.l	r14, 1232[r0]
    61f3:	05 32 f3 ff                   	bsr.a	5525 <_strlen>

000061f7 <.LVL336>:
    61f7:	ce 0b 9e 04                   	mov.b	1182[r0], r11

000061fb <.LVL337>:
    61fb:	eb 01 2c 01                   	mov.l	r1, 1200[r0]

000061ff <.LVL338>:
    61ff:	cb 0b c0 04                   	mov.b	r11, 1216[r0]

00006203 <.LM356>:
    6203:	fa 06 2e 01 00                	mov.l	#0, 1208[r0]
    6208:	ee 0e 34 01                   	mov.l	1232[r0], r14
    620c:	38 48 f6                      	bra.w	5854 <.L100>

0000620f <.LVL339>:
    620f:	ce 0b 9e 04                   	mov.b	1182[r0], r11

00006213 <.LBB25>:
    6213:	eb 0f 2c 01                   	mov.l	r15, 1200[r0]
    6217:	cb 0b c0 04                   	mov.b	r11, 1216[r0]

0000621b <.LM358>:
    621b:	eb 01 2e 01                   	mov.l	r1, 1208[r0]
    621f:	38 35 f6                      	bra.w	5854 <.L100>

00006222 <.LBE25>:
    6222:	ee 07 2f 01                   	mov.l	1212[r0], r7

00006226 <.LVL342>:
    6226:	62 37                         	add	#3, r7
    6228:	75 27 fc                      	and	#-4, r7
    622b:	ec 7f                         	mov.l	[r7], r15

0000622d <.LVL343>:
    622d:	62 47                         	add	#4, r7
    622f:	eb 07 2f 01                   	mov.l	r7, 1212[r0]

00006233 <.LM360>:
    6233:	61 0f                         	cmp	#0, r15
    6235:	cd b7 01                      	mov.b	1[r11], r7

00006238 <.LVL345>:
    6238:	29 11                         	blt.b	6249 <.LBE23>

0000623a <.LM361>:
    623a:	ef 3b                         	mov.l	r3, r11

0000623c <.LVL346>:
    623c:	5b 77                         	movu.b	r7, r7
    623e:	38 8a f4                      	bra.w	56c8 <.LM64>

00006241 <.LBB23>:
    6241:	fa 06 2d 01 ff                	mov.l	#-1, 1204[r0]
    6246:	38 72 fc                      	bra.w	5eb8 <.LBE21>

00006249 <.LBE23>:
    6249:	fb f6 ff                      	mov.l	#-1, r15

0000624c <.LM364>:
    624c:	ef 3b                         	mov.l	r3, r11

0000624e <.LVL350>:
    624e:	5b 77                         	movu.b	r7, r7
    6250:	38 78 f4                      	bra.w	56c8 <.LM64>

00006253 <.LFE3>:
    6253:	77 10 01 00 00                	mul	#1, r0

00006258 <_vfiprintf>:
    6258:	ef 34                         	mov.l	r3, r4

0000625a <.LM367>:
    625a:	fb 32 00 80 00 00             	mov.l	#0x8000, r3

00006260 <.LM368>:
    6260:	ef 15                         	mov.l	r1, r5
    6262:	ef 2e                         	mov.l	r2, r14

00006264 <.LM369>:
    6264:	ec 31                         	mov.l	[r3], r1

00006266 <.LVL353>:
    6266:	ef 52                         	mov.l	r5, r2

00006268 <.LVL354>:
    6268:	ef e3                         	mov.l	r14, r3
    626a:	04 46 f3 ff                   	bra.a	55b0 <__vfiprintf_r>

0000626e <.LFE2>:
	...

00006270 <__write_r>:
    6270:	6e 7a                         	pushm	r7-r10

00006272 <.LCFI0>:
    6272:	ef 1a                         	mov.l	r1, r10

00006274 <.LM3>:
    6274:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

0000627a <.LM4>:
    627a:	ef 21                         	mov.l	r2, r1

0000627c <.LVL1>:
    627c:	ef 32                         	mov.l	r3, r2

0000627e <.LVL2>:
    627e:	ef 43                         	mov.l	r4, r3

00006280 <.LM5>:
    6280:	3e 70 00                      	mov.l	#0, [r7]

00006283 <.LM6>:
    6283:	05 76 0d 00                   	bsr.a	6ff9 <_write>

00006287 <.LVL4>:
    6287:	75 01 ff                      	cmp	#-1, r1
    628a:	14                            	beq.s	628e <.LM8>

0000628b <.LM7>:
    628b:	3f 7a 04                      	rtsd	#16, r7-r10

0000628e <.LM8>:
    628e:	ec 77                         	mov.l	[r7], r7
    6290:	61 07                         	cmp	#0, r7
    6292:	20 f9                         	beq.b	628b <.LM7>

00006294 <.LM9>:
    6294:	e3 a7                         	mov.l	r7, [r10]

00006296 <.LM10>:
    6296:	3f 7a 04                      	rtsd	#16, r7-r10

00006299 <.LFE0>:
    6299:	0f                            	bra.s	62a0 <__calloc_r>
    629a:	03                            	nop
    629b:	03                            	nop
    629c:	03                            	nop
    629d:	03                            	nop
    629e:	03                            	nop
    629f:	03                            	nop

000062a0 <__calloc_r>:
    62a0:	7e a7                         	push.l	r7

000062a2 <.LCFI0>:
    62a2:	4f 32                         	mul	r3, r2

000062a4 <.LVL1>:
    62a4:	05 6c e3 ff                   	bsr.a	4610 <__malloc_r>

000062a8 <.LM3>:
    62a8:	71 17 00                      	add	#0, r1, r7
    62ab:	20 28                         	beq.b	62d3 <.LBE2>

000062ad <.LM4>:
    62ad:	71 7e f8                      	add	#-8, r7, r14

000062b0 <.LVL4>:
    62b0:	ed e3 01                      	mov.l	4[r14], r3
    62b3:	75 23 fc                      	and	#-4, r3

000062b6 <.LBB2>:
    62b6:	60 43                         	sub	#4, r3

000062b8 <.LVL5>:
    62b8:	75 53 24                      	cmp	#36, r3
    62bb:	24 38                         	bgtu.b	62f3 <.LBE4>

000062bd <.LBB3>:
    62bd:	75 53 13                      	cmp	#19, r3
    62c0:	24 18                         	bgtu.b	62d8 <.LBB4>

000062c2 <.LM7>:
    62c2:	ef 7e                         	mov.l	r7, r14

000062c4 <.LVL7>:
    62c4:	76 10 01 00                   	mul	#1, r0

000062c8 <.LM8>:
    62c8:	f8 e6 00                      	mov.l	#0, [r14]

000062cb <.LVL8>:
    62cb:	f9 e6 01 00                   	mov.l	#0, 4[r14]

000062cf <.LVL9>:
    62cf:	f9 e6 02 00                   	mov.l	#0, 8[r14]

000062d3 <.LBE2>:
    62d3:	ef 71                         	mov.l	r7, r1
    62d5:	3f 77 01                      	rtsd	#4, r7-r7

000062d8 <.LBB4>:
    62d8:	3e 70 00                      	mov.l	#0, [r7]

000062db <.LVL12>:
    62db:	3e 71 00                      	mov.l	#0, 4[r7]

000062de <.LVL13>:
    62de:	75 53 1b                      	cmp	#27, r3
    62e1:	25 1d                         	bleu.b	62fe <.LBB5>

000062e3 <.LM11>:
    62e3:	3e 72 00                      	mov.l	#0, 8[r7]

000062e6 <.LVL14>:
    62e6:	3e 73 00                      	mov.l	#0, 12[r7]

000062e9 <.LVL15>:
    62e9:	75 53 24                      	cmp	#36, r3
    62ec:	20 17                         	beq.b	6303 <.LM16>

000062ee <.LM12>:
    62ee:	71 7e 10                      	add	#16, r7, r14

000062f1 <.LVL16>:
    62f1:	2e d7                         	bra.b	62c8 <.LM8>

000062f3 <.LBE4>:
    62f3:	66 02                         	mov.l	#0, r2
    62f5:	05 53 b1 ff                   	bsr.a	1448 <_memset>

000062f9 <.LBE6>:
    62f9:	ef 71                         	mov.l	r7, r1
    62fb:	3f 77 01                      	rtsd	#4, r7-r7

000062fe <.LBB5>:
    62fe:	71 7e 08                      	add	#8, r7, r14

00006301 <.LVL20>:
    6301:	2e c7                         	bra.b	62c8 <.LM8>

00006303 <.LM16>:
    6303:	3e 74 00                      	mov.l	#0, 16[r7]

00006306 <.LVL22>:
    6306:	3e 75 00                      	mov.l	#0, 20[r7]
    6309:	71 7e 18                      	add	#24, r7, r14

0000630c <.LVL23>:
    630c:	2e bc                         	bra.b	62c8 <.LM8>

0000630e <.LBE5>:
    630e:	ef 00                         	nop

00006310 <__close_r>:
    6310:	6e 7a                         	pushm	r7-r10

00006312 <.LCFI0>:
    6312:	ef 1a                         	mov.l	r1, r10

00006314 <.LM3>:
    6314:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

0000631a <.LM4>:
    631a:	ef 21                         	mov.l	r2, r1

0000631c <.LM5>:
    631c:	3e 70 00                      	mov.l	#0, [r7]

0000631f <.LM6>:
    631f:	05 e4 0c 00                   	bsr.a	7003 <_close>

00006323 <.LVL2>:
    6323:	75 01 ff                      	cmp	#-1, r1
    6326:	15                            	beq.s	632b <.LM8>
    6327:	03                            	nop

00006328 <.LM7>:
    6328:	3f 7a 04                      	rtsd	#16, r7-r10

0000632b <.LM8>:
    632b:	ec 77                         	mov.l	[r7], r7
    632d:	61 07                         	cmp	#0, r7
    632f:	20 f9                         	beq.b	6328 <.LM7>

00006331 <.LM9>:
    6331:	e3 a7                         	mov.l	r7, [r10]

00006333 <.LM10>:
    6333:	3f 7a 04                      	rtsd	#16, r7-r10

00006336 <.LFE0>:
    6336:	ef 00                         	nop

00006338 <__fclose_r>:
    6338:	6e 7b                         	pushm	r7-r11

0000633a <.LCFI0>:
    633a:	71 27 00                      	add	#0, r2, r7
    633d:	20 13                         	beq.b	6350 <.LM6>

0000633f <.LM3>:
    633f:	71 1a 00                      	add	#0, r1, r10
    6342:	10                            	beq.s	634a <.LM5>

00006343 <.LM4>:
    6343:	ed ab 0e                      	mov.l	56[r10], r11
    6346:	61 0b                         	cmp	#0, r11
    6348:	20 70                         	beq.b	63b8 <.LM24>

0000634a <.LM5>:
    634a:	dd 7b 06                      	mov.w	12[r7], r11
    634d:	61 0b                         	cmp	#0, r11
    634f:	18                            	bne.s	6357 <.LM8>

00006350 <.LM6>:
    6350:	66 0b                         	mov.l	#0, r11

00006352 <.LM7>:
    6352:	ef b1                         	mov.l	r11, r1
    6354:	3f 7b 05                      	rtsd	#20, r7-r11

00006357 <.LM8>:
    6357:	ef a1                         	mov.l	r10, r1
    6359:	ef 72                         	mov.l	r7, r2
    635b:	05 fd db ff                   	bsr.a	3f58 <__fflush_r>

0000635f <.LM9>:
    635f:	ed 7e 0b                      	mov.l	44[r7], r14

00006362 <.LM10>:
    6362:	ef 1b                         	mov.l	r1, r11

00006364 <.LM11>:
    6364:	61 0e                         	cmp	#0, r14
    6366:	20 0c                         	beq.b	6372 <.LM13>

00006368 <.LM12>:
    6368:	a9 fa                         	mov.l	28[r7], r2
    636a:	ef a1                         	mov.l	r10, r1

0000636c <.LVL6>:
    636c:	7f 1e                         	jsr	r14

0000636e <.LVL7>:
    636e:	61 01                         	cmp	#0, r1
    6370:	29 4e                         	blt.b	63be <.LM25>

00006372 <.LM13>:
    6372:	dd 7e 06                      	mov.w	12[r7], r14
    6375:	76 2e 80 00                   	and	#128, r14
    6379:	df ee                         	mov.w	r14, r14
    637b:	61 0e                         	cmp	#0, r14
    637d:	21 46                         	bne.b	63c3 <.LM26>
    637f:	03                            	nop

00006380 <.LM14>:
    6380:	ab 72                         	mov.l	48[r7], r2
    6382:	61 02                         	cmp	#0, r2
    6384:	20 14                         	beq.b	6398 <.LM18>

00006386 <.LM15>:
    6386:	71 7e 40                      	add	#64, r7, r14
    6389:	47 e2                         	cmp	r14, r2
    638b:	17                            	beq.s	6392 <.LM17>

0000638c <.LM16>:
    638c:	ef a1                         	mov.l	r10, r1
    638e:	05 72 de ff                   	bsr.a	4200 <__free_r>

00006392 <.LM17>:
    6392:	3e 7c 00                      	mov.l	#0, 48[r7]
    6395:	fc 13 00                      	nop

00006398 <.LM18>:
    6398:	ac 7a                         	mov.l	68[r7], r2
    639a:	61 02                         	cmp	#0, r2
    639c:	20 0c                         	beq.b	63a8 <.LM20>

0000639e <.LM19>:
    639e:	ef a1                         	mov.l	r10, r1
    63a0:	05 60 de ff                   	bsr.a	4200 <__free_r>

000063a4 <.LVL10>:
    63a4:	3e f1 00                      	mov.l	#0, 68[r7]
    63a7:	03                            	nop

000063a8 <.LM20>:
    63a8:	05 88 dd ff                   	bsr.a	4130 <___sfp_lock_acquire>

000063ac <.LM21>:
    63ac:	3d 76 00                      	mov.w	#0, 12[r7]

000063af <.LM22>:
    63af:	05 82 dd ff                   	bsr.a	4131 <___sfp_lock_release>

000063b3 <.LM23>:
    63b3:	ef b1                         	mov.l	r11, r1
    63b5:	3f 7b 05                      	rtsd	#20, r7-r11

000063b8 <.LM24>:
    63b8:	05 8c dc ff                   	bsr.a	4044 <___sinit>

000063bc <.LVL14>:
    63bc:	2e 8e                         	bra.b	634a <.LM5>

000063be <.LM25>:
    63be:	fb b6 ff                      	mov.l	#-1, r11

000063c1 <.LVL16>:
    63c1:	2e b1                         	bra.b	6372 <.LM13>

000063c3 <.LM26>:
    63c3:	a9 72                         	mov.l	16[r7], r2
    63c5:	ef a1                         	mov.l	r10, r1
    63c7:	05 39 de ff                   	bsr.a	4200 <__free_r>

000063cb <.LVL18>:
    63cb:	2e b5                         	bra.b	6380 <.LM14>

000063cd <.LFE0>:
    63cd:	fc 13 00                      	nop

000063d0 <_fclose>:
    63d0:	fb e2 00 80 00 00             	mov.l	#0x8000, r14

000063d6 <.LM29>:
    63d6:	ef 12                         	mov.l	r1, r2

000063d8 <.LM30>:
    63d8:	ec e1                         	mov.l	[r14], r1

000063da <.LVL20>:
    63da:	04 5e ff ff                   	bra.a	6338 <__fclose_r>

000063de <.LFE1>:
	...

000063e0 <__fputwc_r>:
    63e0:	6e 6d                         	pushm	r6-r13

000063e2 <.LCFI0>:
    63e2:	dd 3a 06                      	mov.w	12[r3], r10

000063e5 <.LM3>:
    63e5:	60 40                         	sub	#4, r0

000063e7 <.LCFI1>:
    63e7:	ef ad                         	mov.l	r10, r13
    63e9:	76 2d 00 20                   	and	#0x2000, r13
    63ed:	df dd                         	mov.w	r13, r13
    63ef:	61 0d                         	cmp	#0, r13

000063f1 <.LM5>:
    63f1:	ef 37                         	mov.l	r3, r7
    63f3:	ef 1c                         	mov.l	r1, r12
    63f5:	ef 2b                         	mov.l	r2, r11

000063f7 <.LM6>:
    63f7:	21 13                         	bne.b	640a <.LBB4>

000063f9 <.LM7>:
    63f9:	ed 3d 19                      	mov.l	100[r3], r13
    63fc:	76 3a 00 20                   	or	#0x2000, r10
    6400:	76 3d 00 20                   	or	#0x2000, r13
    6404:	d7 3a 06                      	mov.w	r10, 12[r3]
    6407:	e7 3d 19                      	mov.l	r13, 100[r3]

0000640a <.LBB4>:
    640a:	05 bd e0 ff                   	bsr.a	44c7 <___locale_mb_cur_max>

0000640e <.LVL2>:
    640e:	61 11                         	cmp	#1, r1
    6410:	3a 88 00                      	beq.w	6498 <.LM20>

00006413 <.LM9>:
    6413:	71 74 5c                      	add	#92, r7, r4
    6416:	ef c1                         	mov.l	r12, r1
    6418:	ef 02                         	mov.l	r0, r2
    641a:	ef b3                         	mov.l	r11, r3
    641c:	05 d4 0a 00                   	bsr.a	6ef0 <__wcrtomb_r>

00006420 <.LVL3>:
    6420:	75 01 ff                      	cmp	#-1, r1
    6423:	ef 19                         	mov.l	r1, r9

00006425 <.LVL4>:
    6425:	20 57                         	beq.b	647c <.LBB6>

00006427 <.LM10>:
    6427:	61 01                         	cmp	#0, r1
    6429:	3a 84 00                      	beq.w	64ad <.LM23>

0000642c <.LVL6>:
    642c:	ef 06                         	mov.l	r0, r6

0000642e <.LM11>:
    642e:	66 0a                         	mov.l	#0, r10

00006430 <.LM12>:
    6430:	fb d2 08 6e 00 00             	mov.l	#0x6e08, r13
    6436:	2e 16                         	bra.b	644c <.LM14>

00006438 <.LVL7>:
    6438:	ec 7e                         	mov.l	[r7], r14
    643a:	cc 64                         	mov.b	[r6], r4
    643c:	c3 e4                         	mov.b	r4, [r14]
    643e:	ec 7e                         	mov.l	[r7], r14
    6440:	62 1e                         	add	#1, r14
    6442:	e3 7e                         	mov.l	r14, [r7]

00006444 <.LM13>:
    6444:	62 1a                         	add	#1, r10

00006446 <.LVL8>:
    6446:	62 16                         	add	#1, r6
    6448:	47 9a                         	cmp	r9, r10
    644a:	22 63                         	bc.b	64ad <.LM23>

0000644c <.LM14>:
    644c:	ed 7e 02                      	mov.l	8[r7], r14
    644f:	60 1e                         	sub	#1, r14
    6451:	e7 7e 02                      	mov.l	r14, 8[r7]
    6454:	26 e4                         	bpz.b	6438 <.LVL7>
    6456:	06 85 7e 06                   	cmp	24[r7].l, r14
    645a:	29 2e                         	blt.b	6488 <.LBB7>
    645c:	ec 7e                         	mov.l	[r7], r14
    645e:	cc 64                         	mov.b	[r6], r4
    6460:	66 01                         	mov.l	#0, r1
    6462:	c3 e4                         	mov.b	r4, [r14]
    6464:	ec 7e                         	mov.l	[r7], r14
    6466:	58 e2                         	movu.b	[r14], r2
    6468:	62 1e                         	add	#1, r14
    646a:	61 a2                         	cmp	#10, r2
    646c:	20 1e                         	beq.b	648a <.LBB7+0x2>
    646e:	e3 7e                         	mov.l	r14, [r7]
    6470:	5b 11                         	movu.b	r1, r1
    6472:	61 01                         	cmp	#0, r1
    6474:	20 d0                         	beq.b	6444 <.LM13>

00006476 <.LM15>:
    6476:	fb 16 ff                      	mov.l	#-1, r1

00006479 <.LBE4>:
    6479:	3f 6d 09                      	rtsd	#36, r6-r13

0000647c <.LBB6>:
    647c:	dd 7a 06                      	mov.w	12[r7], r10
    647f:	75 3a 40                      	or	#64, r10
    6482:	d7 7a 06                      	mov.w	r10, 12[r7]

00006485 <.LBE6>:
    6485:	3f 6d 09                      	rtsd	#36, r6-r13

00006488 <.LBB7>:
    6488:	58 62                         	movu.b	[r6], r2
    648a:	ef c1                         	mov.l	r12, r1
    648c:	ef 73                         	mov.l	r7, r3
    648e:	7f 1d                         	jsr	r13

00006490 <.LVL12>:
    6490:	75 01 ff                      	cmp	#-1, r1
    6493:	fc db 10                      	sceq.l	r1
    6496:	2e da                         	bra.b	6470 <.LM14+0x24>

00006498 <.LM20>:
    6498:	61 0b                         	cmp	#0, r11
    649a:	2a 05                         	bgt.b	649f <.LM20+0x7>
    649c:	38 77 ff                      	bra.w	6413 <.LM9>
    649f:	75 5b ff                      	cmp	#255, r11
    64a2:	2b 05                         	ble.b	64a7 <.LM21>
    64a4:	38 6f ff                      	bra.w	6413 <.LM9>

000064a7 <.LM21>:
    64a7:	c3 0b                         	mov.b	r11, [r0]

000064a9 <.LM22>:
    64a9:	ef 19                         	mov.l	r1, r9
    64ab:	2e 81                         	bra.b	642c <.LVL6>

000064ad <.LM23>:
    64ad:	ef b1                         	mov.l	r11, r1

000064af <.LBE7>:
    64af:	3f 6d 09                      	rtsd	#36, r6-r13

000064b2 <.LFE1>:
    64b2:	74 10 01 00 00 00             	mul	#1, r0

000064b8 <_fputwc>:
    64b8:	6e 7a                         	pushm	r7-r10

000064ba <.LCFI2>:
    64ba:	fb 72 00 80 00 00             	mov.l	#0x8000, r7
    64c0:	ec 7e                         	mov.l	[r7], r14

000064c2 <.LM27>:
    64c2:	60 40                         	sub	#4, r0

000064c4 <.LCFI3>:
    64c4:	61 0e                         	cmp	#0, r14

000064c6 <.LM29>:
    64c6:	ef 1a                         	mov.l	r1, r10
    64c8:	ef 23                         	mov.l	r2, r3

000064ca <.LM30>:
    64ca:	20 16                         	beq.b	64e0 <.LM33>

000064cc <.LM31>:
    64cc:	ed e4 0e                      	mov.l	56[r14], r4
    64cf:	61 04                         	cmp	#0, r4
    64d1:	21 0f                         	bne.b	64e0 <.LM33>

000064d3 <.LM32>:
    64d3:	ef e1                         	mov.l	r14, r1

000064d5 <.LVL16>:
    64d5:	e3 02                         	mov.l	r2, [r0]
    64d7:	05 6d db ff                   	bsr.a	4044 <___sinit>

000064db <.LVL17>:
    64db:	ec 7e                         	mov.l	[r7], r14
    64dd:	ec 03                         	mov.l	[r0], r3
    64df:	03                            	nop

000064e0 <.LM33>:
    64e0:	62 40                         	add	#4, r0

000064e2 <.LM34>:
    64e2:	ef a2                         	mov.l	r10, r2

000064e4 <.LM35>:
    64e4:	6f 7a                         	popm	r7-r10

000064e6 <.LM36>:
    64e6:	ef e1                         	mov.l	r14, r1
    64e8:	04 f8 fe ff                   	bra.a	63e0 <__fputwc_r>

000064ec <.LFE2>:
    64ec:	76 10 01 00                   	mul	#1, r0

000064f0 <__fstat_r>:
    64f0:	6e 7a                         	pushm	r7-r10

000064f2 <.LCFI0>:
    64f2:	ef 1a                         	mov.l	r1, r10

000064f4 <.LM3>:
    64f4:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

000064fa <.LM4>:
    64fa:	ef 21                         	mov.l	r2, r1

000064fc <.LVL1>:
    64fc:	ef 32                         	mov.l	r3, r2

000064fe <.LM5>:
    64fe:	3e 70 00                      	mov.l	#0, [r7]

00006501 <.LM6>:
    6501:	05 07 0b 00                   	bsr.a	7008 <_fstat>

00006505 <.LVL3>:
    6505:	75 01 ff                      	cmp	#-1, r1
    6508:	14                            	beq.s	650c <.LM8>

00006509 <.LM7>:
    6509:	3f 7a 04                      	rtsd	#16, r7-r10

0000650c <.LM8>:
    650c:	ec 77                         	mov.l	[r7], r7
    650e:	61 07                         	cmp	#0, r7
    6510:	20 f9                         	beq.b	6509 <.LM7>

00006512 <.LM9>:
    6512:	e3 a7                         	mov.l	r7, [r10]

00006514 <.LM10>:
    6514:	3f 7a 04                      	rtsd	#16, r7-r10

00006517 <.LFE0>:
    6517:	03                            	nop

00006518 <___sfvwrite_r>:
    6518:	6e 6d                         	pushm	r6-r13

0000651a <.LCFI0>:
    651a:	ed 3a 02                      	mov.l	8[r3], r10

0000651d <.LM3>:
    651d:	60 c0                         	sub	#12, r0

0000651f <.LCFI1>:
    651f:	61 0a                         	cmp	#0, r10

00006521 <.LM5>:
    6521:	ef 3b                         	mov.l	r3, r11

00006523 <.LM6>:
    6523:	20 5d                         	beq.b	6580 <.LM22>

00006525 <.LM7>:
    6525:	dd 2d 06                      	mov.w	12[r2], r13
    6528:	ef 18                         	mov.l	r1, r8
    652a:	ef da                         	mov.l	r13, r10

0000652c <.LVL2>:
    652c:	64 8a                         	and	#8, r10
    652e:	df aa                         	mov.w	r10, r10
    6530:	61 0a                         	cmp	#0, r10
    6532:	ef 27                         	mov.l	r2, r7
    6534:	20 51                         	beq.b	6585 <.LM24>

00006536 <.LM8>:
    6536:	ed 2a 04                      	mov.l	16[r2], r10
    6539:	61 0a                         	cmp	#0, r10
    653b:	20 4a                         	beq.b	6585 <.LM24>

0000653d <.LM9>:
    653d:	ef d9                         	mov.l	r13, r9
    653f:	64 29                         	and	#2, r9
    6541:	df 99                         	mov.w	r9, r9
    6543:	61 09                         	cmp	#0, r9

00006545 <.LM10>:
    6545:	ec ba                         	mov.l	[r11], r10

00006547 <.LM11>:
    6547:	20 5a                         	beq.b	65a1 <.LM27>

00006549 <.LVL4>:
    6549:	66 0d                         	mov.l	#0, r13
    654b:	ef dc                         	mov.l	r13, r12

0000654d <.LM12>:
    654d:	61 0c                         	cmp	#0, r12

0000654f <.LM13>:
    654f:	ef d3                         	mov.l	r13, r3
    6551:	ef 81                         	mov.l	r8, r1

00006553 <.LM14>:
    6553:	3a c8 00                      	beq.w	661b <.LM51>

00006556 <.LM15>:
    6556:	76 0c 00 04                   	cmp	#0x400, r12
    655a:	ef c4                         	mov.l	r12, r4
    655c:	a9 fa                         	mov.l	28[r7], r2
    655e:	25 06                         	bleu.b	6564 <.LM15+0xe>
    6560:	fb 4a 00 04                   	mov.l	#0x400, r4
    6564:	ed 7e 09                      	mov.l	36[r7], r14
    6567:	7f 1e                         	jsr	r14

00006569 <.LM16>:
    6569:	61 01                         	cmp	#0, r1
    656b:	2a 05                         	bgt.b	6570 <.LM17>
    656d:	38 db 00                      	bra.w	6648 <.L23>

00006570 <.LM17>:
    6570:	ed be 02                      	mov.l	8[r11], r14

00006573 <.LM18>:
    6573:	4b 1d                         	add	r1, r13

00006575 <.LM19>:
    6575:	43 1e                         	sub	r1, r14

00006577 <.LM20>:
    6577:	43 1c                         	sub	r1, r12

00006579 <.LM21>:
    6579:	e7 be 02                      	mov.l	r14, 8[r11]
    657c:	61 0e                         	cmp	#0, r14
    657e:	21 cf                         	bne.b	654d <.LM12>

00006580 <.LM22>:
    6580:	66 01                         	mov.l	#0, r1

00006582 <.LM23>:
    6582:	3f 6d 0b                      	rtsd	#44, r6-r13

00006585 <.LM24>:
    6585:	ef 81                         	mov.l	r8, r1

00006587 <.LVL12>:
    6587:	ef 72                         	mov.l	r7, r2

00006589 <.LVL13>:
    6589:	05 87 c8 ff                   	bsr.a	2e10 <___swsetup_r>

0000658d <.LVL14>:
    658d:	61 01                         	cmp	#0, r1
    658f:	3b a9 02                      	bne.w	6838 <.LM157>
    6592:	dd 7d 06                      	mov.w	12[r7], r13

00006595 <.LM25>:
    6595:	ec ba                         	mov.l	[r11], r10

00006597 <.LM26>:
    6597:	ef d9                         	mov.l	r13, r9
    6599:	64 29                         	and	#2, r9
    659b:	df 99                         	mov.w	r9, r9
    659d:	61 09                         	cmp	#0, r9
    659f:	21 aa                         	bne.b	6549 <.LVL4>

000065a1 <.LM27>:
    65a1:	ef d5                         	mov.l	r13, r5
    65a3:	64 15                         	and	#1, r5
    65a5:	3a b2 00                      	beq.w	6657 <.LM62>
    65a8:	ef 9f                         	mov.l	r9, r15
    65aa:	ef 96                         	mov.l	r9, r6
    65ac:	ef 9c                         	mov.l	r9, r12

000065ae <.LM28>:
    65ae:	61 0c                         	cmp	#0, r12
    65b0:	20 60                         	beq.b	6610 <.LM50>

000065b2 <.LM29>:
    65b2:	61 0f                         	cmp	#0, r15
    65b4:	3a a6 01                      	beq.w	675a <.LM113>
    65b7:	03                            	nop

000065b8 <.LM30>:
    65b8:	47 c9                         	cmp	r12, r9
    65ba:	ef 9e                         	mov.l	r9, r14
    65bc:	25 04                         	bleu.b	65c0 <.LM31>
    65be:	ef ce                         	mov.l	r12, r14

000065c0 <.LM31>:
    65c0:	ec 71                         	mov.l	[r7], r1

000065c2 <.LM32>:
    65c2:	ed 7d 02                      	mov.l	8[r7], r13

000065c5 <.LM33>:
    65c5:	06 85 71 04                   	cmp	16[r7].l, r1

000065c9 <.LM34>:
    65c9:	a9 7c                         	mov.l	20[r7], r4

000065cb <.LM35>:
    65cb:	25 0b                         	bleu.b	65d6 <.LM38>

000065cd <.LM36>:
    65cd:	4b 4d                         	add	r4, r13

000065cf <.LM37>:
    65cf:	47 de                         	cmp	r13, r14
    65d1:	2b 05                         	ble.b	65d6 <.LM38>
    65d3:	38 1b 02                      	bra.w	67ee <.LBE3>

000065d6 <.LM38>:
    65d6:	47 4e                         	cmp	r4, r14
    65d8:	28 05                         	bge.b	65dd <.LM39>
    65da:	38 1d 01                      	bra.w	66f7 <.LM91>

000065dd <.LM39>:
    65dd:	ed 7d 09                      	mov.l	36[r7], r13
    65e0:	a9 fa                         	mov.l	28[r7], r2
    65e2:	ef 81                         	mov.l	r8, r1
    65e4:	e7 0f 01                      	mov.l	r15, 4[r0]
    65e7:	ef 63                         	mov.l	r6, r3
    65e9:	7f 1d                         	jsr	r13

000065eb <.LM40>:
    65eb:	61 01                         	cmp	#0, r1

000065ed <.LM41>:
    65ed:	ef 1d                         	mov.l	r1, r13

000065ef <.LM42>:
    65ef:	ed 0f 01                      	mov.l	4[r0], r15
    65f2:	2b 56                         	ble.b	6648 <.L23>

000065f4 <.LM43>:
    65f4:	43 d9                         	sub	r13, r9
    65f6:	3a 28 01                      	beq.w	671e <.LM102>

000065f9 <.LM44>:
    65f9:	ed be 02                      	mov.l	8[r11], r14

000065fc <.LM45>:
    65fc:	4b d6                         	add	r13, r6

000065fe <.LM46>:
    65fe:	43 de                         	sub	r13, r14

00006600 <.LM47>:
    6600:	43 dc                         	sub	r13, r12

00006602 <.LM48>:
    6602:	e7 be 02                      	mov.l	r14, 8[r11]
    6605:	61 0e                         	cmp	#0, r14
    6607:	3a 79 ff                      	beq.w	6580 <.LM22>

0000660a <.LM49>:
    660a:	61 0c                         	cmp	#0, r12
    660c:	21 a6                         	bne.b	65b2 <.LM29>

0000660e <.LVL29>:
    660e:	ef 00                         	nop

00006610 <.LM50>:
    6610:	ec a6                         	mov.l	[r10], r6
    6612:	ed ac 01                      	mov.l	4[r10], r12
    6615:	66 0f                         	mov.l	#0, r15
    6617:	62 8a                         	add	#8, r10
    6619:	2e 95                         	bra.b	65ae <.LM28>

0000661b <.LM51>:
    661b:	ec ad                         	mov.l	[r10], r13

0000661d <.LVL34>:
    661d:	ed ac 01                      	mov.l	4[r10], r12
    6620:	62 8a                         	add	#8, r10
    6622:	38 2b ff                      	bra.w	654d <.LM12>

00006625 <.LBB2>:
    6625:	e7 0e 02                      	mov.l	r14, 8[r0]
    6628:	05 b8 02 00                   	bsr.a	68e0 <__realloc_r>

0000662c <.LM53>:
    662c:	61 01                         	cmp	#0, r1

0000662e <.LM54>:
    662e:	ef 1d                         	mov.l	r1, r13

00006630 <.LM55>:
    6630:	ed 0e 02                      	mov.l	8[r0], r14
    6633:	3b 9f 01                      	bne.w	67d2 <.LM137>

00006636 <.LM56>:
    6636:	a9 72                         	mov.l	16[r7], r2
    6638:	ef 81                         	mov.l	r8, r1

0000663a <.LVL40>:
    663a:	05 c6 db ff                   	bsr.a	4200 <__free_r>

0000663e <.LVL41>:
    663e:	ef 00                         	nop

00006640 <.LM57>:
    6640:	f8 86 0c                      	mov.l	#12, [r8]

00006643 <.LVL42>:
    6643:	77 10 01 00 00                	mul	#1, r0

00006648 <.L23>:
    6648:	dd 7a 06                      	mov.w	12[r7], r10

0000664b <.LM59>:
    664b:	fb 16 ff                      	mov.l	#-1, r1

0000664e <.LM60>:
    664e:	75 3a 40                      	or	#64, r10
    6651:	d7 7a 06                      	mov.w	r10, 12[r7]

00006654 <.LM61>:
    6654:	3f 6d 0b                      	rtsd	#44, r6-r13

00006657 <.LM62>:
    6657:	ef 56                         	mov.l	r5, r6
    6659:	ef 5c                         	mov.l	r5, r12

0000665b <.LM63>:
    665b:	61 0c                         	cmp	#0, r12
    665d:	20 63                         	beq.b	66c0 <.LM85>
    665f:	03                            	nop

00006660 <.LM64>:
    6660:	ef de                         	mov.l	r13, r14
    6662:	76 2e 00 02                   	and	#512, r14
    6666:	df ee                         	mov.w	r14, r14
    6668:	61 0e                         	cmp	#0, r14

0000666a <.LM65>:
    666a:	ed 79 02                      	mov.l	8[r7], r9

0000666d <.LM66>:
    666d:	20 5c                         	beq.b	66c9 <.LM86>

0000666f <.LM67>:
    666f:	47 9c                         	cmp	r9, r12
    6671:	ef 9e                         	mov.l	r9, r14
    6673:	22 05                         	bc.b	6678 <.LM68>
    6675:	38 bb 00                      	bra.w	6730 <.LVL64>

00006678 <.LM68>:
    6678:	ef d4                         	mov.l	r13, r4
    667a:	76 24 80 04                   	and	#0x480, r4
    667e:	3b f5 00                      	bne.w	6773 <.LBB3>
    6681:	ec 71                         	mov.l	[r7], r1

00006683 <.LM69>:
    6683:	e3 09                         	mov.l	r9, [r0]

00006685 <.LM70>:
    6685:	ef cd                         	mov.l	r12, r13
    6687:	ef c9                         	mov.l	r12, r9

00006689 <.LM71>:
    6689:	ef e3                         	mov.l	r14, r3
    668b:	ef 62                         	mov.l	r6, r2
    668d:	e7 0e 02                      	mov.l	r14, 8[r0]
    6690:	05 08 02 00                   	bsr.a	6898 <_memmove>

00006694 <.LM72>:
    6694:	ed 0e 02                      	mov.l	8[r0], r14

00006697 <.LM73>:
    6697:	a8 f4                         	mov.l	8[r7], r4

00006699 <.LM74>:
    6699:	ec 73                         	mov.l	[r7], r3

0000669b <.LM75>:
    669b:	06 80 04                      	sub	[r0].l, r4

0000669e <.LM76>:
    669e:	4b 3e                         	add	r3, r14

000066a0 <.LM77>:
    66a0:	a0 f4                         	mov.l	r4, 8[r7]

000066a2 <.LM78>:
    66a2:	e3 7e                         	mov.l	r14, [r7]

000066a4 <.LM79>:
    66a4:	ed be 02                      	mov.l	8[r11], r14

000066a7 <.LM80>:
    66a7:	4b d6                         	add	r13, r6

000066a9 <.LM81>:
    66a9:	ff 09 9e                      	sub	r9, r14, r9

000066ac <.LM82>:
    66ac:	43 dc                         	sub	r13, r12

000066ae <.LM83>:
    66ae:	e7 b9 02                      	mov.l	r9, 8[r11]
    66b1:	61 09                         	cmp	#0, r9
    66b3:	3a cd fe                      	beq.w	6580 <.LM22>

000066b6 <.LM84>:
    66b6:	61 0c                         	cmp	#0, r12
    66b8:	dd 7d 06                      	mov.w	12[r7], r13
    66bb:	21 a5                         	bne.b	6660 <.LM64>
    66bd:	fc 13 00                      	nop

000066c0 <.LM85>:
    66c0:	ec a6                         	mov.l	[r10], r6
    66c2:	ed ac 01                      	mov.l	4[r10], r12
    66c5:	62 8a                         	add	#8, r10
    66c7:	2e 94                         	bra.b	665b <.LM63>

000066c9 <.LM86>:
    66c9:	ec 71                         	mov.l	[r7], r1
    66cb:	06 85 71 04                   	cmp	16[r7].l, r1
    66cf:	25 0b                         	bleu.b	66da <.LM88>

000066d1 <.LM87>:
    66d1:	47 9c                         	cmp	r9, r12
    66d3:	ef 9d                         	mov.l	r9, r13
    66d5:	25 05                         	bleu.b	66da <.LM88>
    66d7:	38 3b 01                      	bra.w	6812 <.LM150>

000066da <.LM88>:
    66da:	a9 7c                         	mov.l	20[r7], r4

000066dc <.LVL57>:
    66dc:	47 4c                         	cmp	r4, r12
    66de:	23 5f                         	bnc.b	673d <.LM105>

000066e0 <.LM89>:
    66e0:	ed 7d 09                      	mov.l	36[r7], r13
    66e3:	a9 fa                         	mov.l	28[r7], r2
    66e5:	ef 81                         	mov.l	r8, r1
    66e7:	ef 63                         	mov.l	r6, r3
    66e9:	7f 1d                         	jsr	r13

000066eb <.LM90>:
    66eb:	71 19 00                      	add	#0, r1, r9
    66ee:	2a 05                         	bgt.b	66f3 <.LM90+0x8>
    66f0:	38 58 ff                      	bra.w	6648 <.L23>
    66f3:	ef 9d                         	mov.l	r9, r13
    66f5:	2e af                         	bra.b	66a4 <.LM79>

000066f7 <.LM91>:
    66f7:	ef e3                         	mov.l	r14, r3
    66f9:	ef 62                         	mov.l	r6, r2
    66fb:	e7 0e 02                      	mov.l	r14, 8[r0]
    66fe:	e7 0f 01                      	mov.l	r15, 4[r0]
    6701:	05 97 01 00                   	bsr.a	6898 <_memmove>

00006705 <.LM92>:
    6705:	ed 0e 02                      	mov.l	8[r0], r14

00006708 <.LM93>:
    6708:	ec 7d                         	mov.l	[r7], r13

0000670a <.LM94>:
    670a:	a8 f4                         	mov.l	8[r7], r4

0000670c <.LM95>:
    670c:	4b ed                         	add	r14, r13

0000670e <.LM96>:
    670e:	43 e4                         	sub	r14, r4

00006710 <.LM97>:
    6710:	e3 7d                         	mov.l	r13, [r7]
    6712:	ef ed                         	mov.l	r14, r13

00006714 <.LM98>:
    6714:	a0 f4                         	mov.l	r4, 8[r7]

00006716 <.LM99>:
    6716:	43 d9                         	sub	r13, r9

00006718 <.LM100>:
    6718:	ed 0f 01                      	mov.l	4[r0], r15

0000671b <.LM101>:
    671b:	3b de fe                      	bne.w	65f9 <.LM44>

0000671e <.LM102>:
    671e:	ef 81                         	mov.l	r8, r1
    6720:	ef 72                         	mov.l	r7, r2
    6722:	05 36 d8 ff                   	bsr.a	3f58 <__fflush_r>

00006726 <.LVL63>:
    6726:	61 01                         	cmp	#0, r1
    6728:	3b 20 ff                      	bne.w	6648 <.L23>

0000672b <.LM103>:
    672b:	ef 9f                         	mov.l	r9, r15
    672d:	38 cc fe                      	bra.w	65f9 <.LM44>

00006730 <.LVL64>:
    6730:	ec 71                         	mov.l	[r7], r1

00006732 <.LM104>:
    6732:	e3 0c                         	mov.l	r12, [r0]

00006734 <.LVL65>:
    6734:	ef cd                         	mov.l	r12, r13
    6736:	ef c9                         	mov.l	r12, r9
    6738:	ef ce                         	mov.l	r12, r14
    673a:	38 4f ff                      	bra.w	6689 <.LM71>

0000673d <.LM105>:
    673d:	ef 62                         	mov.l	r6, r2
    673f:	ef c3                         	mov.l	r12, r3
    6741:	05 57 01 00                   	bsr.a	6898 <_memmove>

00006745 <.LM106>:
    6745:	ed 7e 02                      	mov.l	8[r7], r14

00006748 <.LM107>:
    6748:	ec 7d                         	mov.l	[r7], r13

0000674a <.LM108>:
    674a:	43 ce                         	sub	r12, r14

0000674c <.LM109>:
    674c:	4b cd                         	add	r12, r13
    674e:	e3 7d                         	mov.l	r13, [r7]

00006750 <.LM110>:
    6750:	ef c9                         	mov.l	r12, r9

00006752 <.LM111>:
    6752:	e7 7e 02                      	mov.l	r14, 8[r7]

00006755 <.LM112>:
    6755:	ef cd                         	mov.l	r12, r13
    6757:	38 4d ff                      	bra.w	66a4 <.LM79>

0000675a <.LM113>:
    675a:	ef 61                         	mov.l	r6, r1
    675c:	66 a2                         	mov.l	#10, r2
    675e:	ef c3                         	mov.l	r12, r3
    6760:	05 28 e4 ff                   	bsr.a	4b88 <_memchr>

00006764 <.LM114>:
    6764:	61 01                         	cmp	#0, r1
    6766:	3a ca 00                      	beq.w	6830 <.LM155>

00006769 <.LM115>:
    6769:	71 19 01                      	add	#1, r1, r9

0000676c <.LVL71>:
    676c:	43 69                         	sub	r6, r9

0000676e <.LM116>:
    676e:	66 1f                         	mov.l	#1, r15
    6770:	38 48 fe                      	bra.w	65b8 <.LM30>

00006773 <.LBB3>:
    6773:	a9 7c                         	mov.l	20[r7], r4

00006775 <.LM118>:
    6775:	a9 72                         	mov.l	16[r7], r2

00006777 <.LM119>:
    6777:	ff 23 44                      	add	r4, r4, r3

0000677a <.LM120>:
    677a:	ec 7e                         	mov.l	[r7], r14

0000677c <.LM121>:
    677c:	4b 34                         	add	r3, r4
    677e:	fd 9f 49                      	shlr	#31, r4, r9

00006781 <.LM122>:
    6781:	43 2e                         	sub	r2, r14

00006783 <.LM123>:
    6783:	4b 94                         	add	r9, r4

00006785 <.LM124>:
    6785:	71 e3 01                      	add	#1, r14, r3

00006788 <.LM125>:
    6788:	fd a1 49                      	shar	#1, r4, r9

0000678b <.LM126>:
    678b:	ff 24 c3                      	add	r12, r3, r4
    678e:	47 49                         	cmp	r4, r9
    6790:	ef 93                         	mov.l	r9, r3
    6792:	22 06                         	bc.b	6798 <.LM128>

00006794 <.LM127>:
    6794:	ef 49                         	mov.l	r4, r9

00006796 <.LVL76>:
    6796:	ef 43                         	mov.l	r4, r3

00006798 <.LM128>:
    6798:	76 2d 00 04                   	and	#0x400, r13
    679c:	df dd                         	mov.w	r13, r13
    679e:	61 0d                         	cmp	#0, r13

000067a0 <.LM129>:
    67a0:	ef 81                         	mov.l	r8, r1

000067a2 <.LM130>:
    67a2:	3a 83 fe                      	beq.w	6625 <.LBB2>

000067a5 <.LM131>:
    67a5:	ef 32                         	mov.l	r3, r2
    67a7:	e7 0e 02                      	mov.l	r14, 8[r0]
    67aa:	05 66 de ff                   	bsr.a	4610 <__malloc_r>

000067ae <.LM132>:
    67ae:	61 01                         	cmp	#0, r1

000067b0 <.LM133>:
    67b0:	ef 1d                         	mov.l	r1, r13

000067b2 <.LM134>:
    67b2:	ed 0e 02                      	mov.l	8[r0], r14
    67b5:	3a 8b fe                      	beq.w	6640 <.LM57>

000067b8 <.LM135>:
    67b8:	a9 72                         	mov.l	16[r7], r2
    67ba:	ef e3                         	mov.l	r14, r3
    67bc:	e7 0e 02                      	mov.l	r14, 8[r0]
    67bf:	05 d8 e3 ff                   	bsr.a	4b97 <_memcpy>

000067c3 <.LM136>:
    67c3:	99 f4                         	mov.w	12[r7], r4
    67c5:	ed 0e 02                      	mov.l	8[r0], r14
    67c8:	76 24 7f fb                   	and	#0xfffffb7f, r4
    67cc:	76 34 80 00                   	or	#128, r4
    67d0:	91 f4                         	mov.w	r4, 12[r7]

000067d2 <.LM137>:
    67d2:	ff 21 ed                      	add	r14, r13, r1

000067d5 <.LM138>:
    67d5:	ff 0e e9                      	sub	r14, r9, r14

000067d8 <.LM139>:
    67d8:	e7 7d 04                      	mov.l	r13, 16[r7]

000067db <.LM140>:
    67db:	e7 79 05                      	mov.l	r9, 20[r7]

000067de <.LM141>:
    67de:	e7 7e 02                      	mov.l	r14, 8[r7]

000067e1 <.LM142>:
    67e1:	e3 71                         	mov.l	r1, [r7]

000067e3 <.LM143>:
    67e3:	e3 0c                         	mov.l	r12, [r0]

000067e5 <.LM144>:
    67e5:	ef cd                         	mov.l	r12, r13

000067e7 <.LVL83>:
    67e7:	ef c9                         	mov.l	r12, r9

000067e9 <.LVL84>:
    67e9:	ef ce                         	mov.l	r12, r14
    67eb:	38 9e fe                      	bra.w	6689 <.LM71>

000067ee <.LBE3>:
    67ee:	ef 62                         	mov.l	r6, r2
    67f0:	ef d3                         	mov.l	r13, r3
    67f2:	e7 0f 01                      	mov.l	r15, 4[r0]
    67f5:	05 a3 00 00                   	bsr.a	6898 <_memmove>

000067f9 <.LM146>:
    67f9:	ec 7e                         	mov.l	[r7], r14

000067fb <.LM147>:
    67fb:	ef 81                         	mov.l	r8, r1

000067fd <.LM148>:
    67fd:	4b de                         	add	r13, r14
    67ff:	e3 7e                         	mov.l	r14, [r7]

00006801 <.LM149>:
    6801:	ef 72                         	mov.l	r7, r2
    6803:	05 55 d7 ff                   	bsr.a	3f58 <__fflush_r>

00006807 <.LVL87>:
    6807:	61 01                         	cmp	#0, r1
    6809:	ed 0f 01                      	mov.l	4[r0], r15
    680c:	3a e8 fd                      	beq.w	65f4 <.LM43>
    680f:	38 39 fe                      	bra.w	6648 <.L23>

00006812 <.LM150>:
    6812:	ef 62                         	mov.l	r6, r2
    6814:	ef 93                         	mov.l	r9, r3
    6816:	05 82 00 00                   	bsr.a	6898 <_memmove>

0000681a <.LM151>:
    681a:	ec 7e                         	mov.l	[r7], r14

0000681c <.LM152>:
    681c:	ef 81                         	mov.l	r8, r1

0000681e <.LM153>:
    681e:	4b 9e                         	add	r9, r14
    6820:	e3 7e                         	mov.l	r14, [r7]

00006822 <.LM154>:
    6822:	ef 72                         	mov.l	r7, r2
    6824:	05 34 d7 ff                   	bsr.a	3f58 <__fflush_r>

00006828 <.LVL90>:
    6828:	61 01                         	cmp	#0, r1
    682a:	3a 7a fe                      	beq.w	66a4 <.LM79>
    682d:	38 1b fe                      	bra.w	6648 <.L23>

00006830 <.LM155>:
    6830:	71 c9 01                      	add	#1, r12, r9

00006833 <.LM156>:
    6833:	66 1f                         	mov.l	#1, r15
    6835:	38 83 fd                      	bra.w	65b8 <.LM30>

00006838 <.LM157>:
    6838:	fb 16 ff                      	mov.l	#-1, r1

0000683b <.LM158>:
    683b:	3f 6d 0b                      	rtsd	#44, r6-r13

0000683e <.LFE0>:
    683e:	ef 00                         	nop

00006840 <__isatty_r>:
    6840:	6e 7a                         	pushm	r7-r10

00006842 <.LCFI0>:
    6842:	ef 1a                         	mov.l	r1, r10

00006844 <.LM3>:
    6844:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

0000684a <.LM4>:
    684a:	ef 21                         	mov.l	r2, r1

0000684c <.LM5>:
    684c:	3e 70 00                      	mov.l	#0, [r7]

0000684f <.LM6>:
    684f:	05 d9 07 00                   	bsr.a	7028 <_isatty>

00006853 <.LVL2>:
    6853:	75 01 ff                      	cmp	#-1, r1
    6856:	15                            	beq.s	685b <.LM8>
    6857:	03                            	nop

00006858 <.LM7>:
    6858:	3f 7a 04                      	rtsd	#16, r7-r10

0000685b <.LM8>:
    685b:	ec 77                         	mov.l	[r7], r7
    685d:	61 07                         	cmp	#0, r7
    685f:	20 f9                         	beq.b	6858 <.LM7>

00006861 <.LM9>:
    6861:	e3 a7                         	mov.l	r7, [r10]

00006863 <.LM10>:
    6863:	3f 7a 04                      	rtsd	#16, r7-r10

00006866 <.LFE0>:
    6866:	ef 00                         	nop

00006868 <__lseek_r>:
    6868:	6e 7a                         	pushm	r7-r10

0000686a <.LCFI0>:
    686a:	ef 1a                         	mov.l	r1, r10

0000686c <.LM3>:
    686c:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

00006872 <.LM4>:
    6872:	ef 21                         	mov.l	r2, r1

00006874 <.LVL1>:
    6874:	ef 32                         	mov.l	r3, r2

00006876 <.LVL2>:
    6876:	ef 43                         	mov.l	r4, r3

00006878 <.LM5>:
    6878:	3e 70 00                      	mov.l	#0, [r7]

0000687b <.LM6>:
    687b:	05 9b 07 00                   	bsr.a	7016 <_lseek>

0000687f <.LVL4>:
    687f:	75 01 ff                      	cmp	#-1, r1
    6882:	14                            	beq.s	6886 <.LM8>

00006883 <.LM7>:
    6883:	3f 7a 04                      	rtsd	#16, r7-r10

00006886 <.LM8>:
    6886:	ec 77                         	mov.l	[r7], r7
    6888:	61 07                         	cmp	#0, r7
    688a:	20 f9                         	beq.b	6883 <.LM7>

0000688c <.LM9>:
    688c:	e3 a7                         	mov.l	r7, [r10]

0000688e <.LM10>:
    688e:	3f 7a 04                      	rtsd	#16, r7-r10

00006891 <.LFE0>:
    6891:	0f                            	bra.s	6898 <_memmove>
    6892:	03                            	nop
    6893:	03                            	nop
    6894:	03                            	nop
    6895:	03                            	nop
    6896:	03                            	nop
    6897:	03                            	nop

00006898 <_memmove>:
    6898:	ef 14                         	mov.l	r1, r4
    689a:	47 12                         	cmp	r1, r2
    689c:	29 07                         	blt.b	68a3 <_memmove+0xb>
    689e:	7f 8f                         	smovf
    68a0:	ef 41                         	mov.l	r4, r1
    68a2:	02                            	rts
    68a3:	4b 31                         	add	r3, r1
    68a5:	4b 32                         	add	r3, r2
    68a7:	60 12                         	sub	#1, r2
    68a9:	60 11                         	sub	#1, r1
    68ab:	7f 8b                         	smovb
    68ad:	2e f3                         	bra.b	68a0 <_memmove+0x8>
	...

000068b0 <__read_r>:
    68b0:	6e 7a                         	pushm	r7-r10

000068b2 <.LCFI0>:
    68b2:	ef 1a                         	mov.l	r1, r10

000068b4 <.LM3>:
    68b4:	fb 72 04 89 00 00             	mov.l	#0x8904, r7

000068ba <.LM4>:
    68ba:	ef 21                         	mov.l	r2, r1

000068bc <.LVL1>:
    68bc:	ef 32                         	mov.l	r3, r2

000068be <.LVL2>:
    68be:	ef 43                         	mov.l	r4, r3

000068c0 <.LM5>:
    68c0:	3e 70 00                      	mov.l	#0, [r7]

000068c3 <.LM6>:
    68c3:	05 31 07 00                   	bsr.a	6ff4 <_read>

000068c7 <.LVL4>:
    68c7:	75 01 ff                      	cmp	#-1, r1
    68ca:	14                            	beq.s	68ce <.LM8>

000068cb <.LM7>:
    68cb:	3f 7a 04                      	rtsd	#16, r7-r10

000068ce <.LM8>:
    68ce:	ec 77                         	mov.l	[r7], r7
    68d0:	61 07                         	cmp	#0, r7
    68d2:	20 f9                         	beq.b	68cb <.LM7>

000068d4 <.LM9>:
    68d4:	e3 a7                         	mov.l	r7, [r10]

000068d6 <.LM10>:
    68d6:	3f 7a 04                      	rtsd	#16, r7-r10

000068d9 <.LFE0>:
    68d9:	0f                            	bra.s	68e0 <__realloc_r>
    68da:	03                            	nop
    68db:	03                            	nop
    68dc:	03                            	nop
    68dd:	03                            	nop
    68de:	03                            	nop
    68df:	03                            	nop

000068e0 <__realloc_r>:
    68e0:	6e 6d                         	pushm	r6-r13

000068e2 <.LCFI0>:
    68e2:	60 40                         	sub	#4, r0

000068e4 <.LCFI1>:
    68e4:	61 02                         	cmp	#0, r2

000068e6 <.LM3>:
    68e6:	ef 27                         	mov.l	r2, r7
    68e8:	ef 3b                         	mov.l	r3, r11

000068ea <.LM4>:
    68ea:	3a ad 01                      	beq.w	6a97 <.LM79>

000068ed <.LM5>:
    68ed:	71 2d f8                      	add	#-8, r2, r13
    68f0:	ef 19                         	mov.l	r1, r9

000068f2 <.LM6>:
    68f2:	05 ac e2 ff                   	bsr.a	4b9e <___malloc_lock>

000068f6 <.LM7>:
    68f6:	ed de 01                      	mov.l	4[r13], r14

000068f9 <.LM8>:
    68f9:	71 ba 0b                      	add	#11, r11, r10

000068fc <.LM9>:
    68fc:	ef ec                         	mov.l	r14, r12
    68fe:	75 2c fc                      	and	#-4, r12

00006901 <.LM10>:
    6901:	75 5a 16                      	cmp	#22, r10
    6904:	25 05                         	bleu.b	6909 <.LM11>
    6906:	38 b6 00                      	bra.w	69bc <.LBE3>

00006909 <.LM11>:
    6909:	75 44 10                      	mov.l	#16, r4

0000690c <.LM12>:
    690c:	ef 4a                         	mov.l	r4, r10

0000690e <.LM13>:
    690e:	47 ab                         	cmp	r10, r11
    6910:	25 05                         	bleu.b	6915 <.LM14>
    6912:	38 b6 00                      	bra.w	69c8 <.LM41>

00006915 <.LM14>:
    6915:	47 4c                         	cmp	r4, r12
    6917:	29 05                         	blt.b	691c <.LM15>
    6919:	38 b9 00                      	bra.w	69d2 <.LM44>

0000691c <.LM15>:
    691c:	fb 52 ac 84 00 00             	mov.l	#0x84ac, r5
    6922:	a8 d1                         	mov.l	8[r5], r1

00006924 <.LM16>:
    6924:	ff 23 cd                      	add	r12, r13, r3

00006927 <.LM17>:
    6927:	47 31                         	cmp	r3, r1
    6929:	3a 78 01                      	beq.w	6aa1 <.LM81>

0000692c <.LM18>:
    692c:	a8 3a                         	mov.l	4[r3], r2
    692e:	ef 28                         	mov.l	r2, r8
    6930:	75 28 fe                      	and	#-2, r8
    6933:	4b 38                         	add	r3, r8
    6935:	ed 88 01                      	mov.l	4[r8], r8
    6938:	fd 74 c8 01                   	tst	#1, r8
    693c:	3a bd 00                      	beq.w	69f9 <.LM53>

0000693f <.LM19>:
    693f:	66 02                         	mov.l	#0, r2

00006941 <.LM20>:
    6941:	ef 23                         	mov.l	r2, r3
    6943:	77 10 01 00 00                	mul	#1, r0

00006948 <.LM21>:
    6948:	fd 74 ce 01                   	tst	#1, r14
    694c:	3b ef 00                      	bne.w	6a3b <.LM69>

0000694f <.LM22>:
    694f:	71 7e f8                      	add	#-8, r7, r14
    6952:	ec ee                         	mov.l	[r14], r14
    6954:	ff 06 ed                      	sub	r14, r13, r6

00006957 <.LM23>:
    6957:	ed 6f 01                      	mov.l	4[r6], r15
    695a:	75 2f fc                      	and	#-4, r15

0000695d <.LM24>:
    695d:	4b cf                         	add	r12, r15

0000695f <.LM25>:
    695f:	61 03                         	cmp	#0, r3
    6961:	3a d6 00                      	beq.w	6a37 <.LM68>

00006964 <.LM26>:
    6964:	ff 28 f2                      	add	r15, r2, r8

00006967 <.LM27>:
    6967:	47 13                         	cmp	r1, r3
    6969:	3a 07 02                      	beq.w	6b70 <.LBE21>

0000696c <.LM28>:
    696c:	47 48                         	cmp	r4, r8
    696e:	28 05                         	bge.b	6973 <.LM29>
    6970:	38 c7 00                      	bra.w	6a37 <.LM68>

00006973 <.LM29>:
    6973:	ed 3b 03                      	mov.l	12[r3], r11
    6976:	ed 3d 02                      	mov.l	8[r3], r13

00006979 <.LBB2>:
    6979:	71 c3 fc                      	add	#-4, r12, r3

0000697c <.LBE2>:
    697c:	e7 bd 02                      	mov.l	r13, 8[r11]
    697f:	e7 db 03                      	mov.l	r11, 12[r13]

00006982 <.LM32>:
    6982:	ed 6b 03                      	mov.l	12[r6], r11
    6985:	ed 6c 02                      	mov.l	8[r6], r12

00006988 <.LM33>:
    6988:	71 6d 08                      	add	#8, r6, r13

0000698b <.LM34>:
    698b:	e7 cb 03                      	mov.l	r11, 12[r12]
    698e:	e7 bc 02                      	mov.l	r12, 8[r11]

00006991 <.LBB7>:
    6991:	75 53 24                      	cmp	#36, r3
    6994:	25 05                         	bleu.b	6999 <.LBB3>
    6996:	38 70 02                      	bra.w	6c06 <.LBB28>

00006999 <.LBB3>:
    6999:	75 53 13                      	cmp	#19, r3
    699c:	24 05                         	bgtu.b	69a1 <.LM37>
    699e:	38 8a 01                      	bra.w	6b28 <.LBB20>

000069a1 <.LM37>:
    69a1:	ec 7b                         	mov.l	[r7], r11
    69a3:	75 53 1b                      	cmp	#27, r3
    69a6:	e7 6b 02                      	mov.l	r11, 8[r6]
    69a9:	ed 7c 01                      	mov.l	4[r7], r12
    69ac:	e7 6c 03                      	mov.l	r12, 12[r6]
    69af:	25 05                         	bleu.b	69b4 <.LM38>
    69b1:	38 84 02                      	bra.w	6c35 <.LBB30>

000069b4 <.LM38>:
    69b4:	71 6b 10                      	add	#16, r6, r11
    69b7:	62 87                         	add	#8, r7
    69b9:	38 71 01                      	bra.w	6b2a <.LM99>

000069bc <.LBE3>:
    69bc:	75 2a f8                      	and	#-8, r10

000069bf <.LM40>:
    69bf:	ef a4                         	mov.l	r10, r4
    69c1:	27 05                         	bn.b	69c6 <.LM40+0x7>
    69c3:	38 4b ff                      	bra.w	690e <.LM13>
    69c6:	ef 00                         	nop

000069c8 <.LM41>:
    69c8:	66 0b                         	mov.l	#0, r11

000069ca <.LM42>:
    69ca:	f8 96 0c                      	mov.l	#12, [r9]

000069cd <.LM43>:
    69cd:	ef b1                         	mov.l	r11, r1
    69cf:	3f 6d 09                      	rtsd	#36, r6-r13

000069d2 <.LM44>:
    69d2:	ef c8                         	mov.l	r12, r8

000069d4 <.L11>:
    69d4:	ff 0b a8                      	sub	r10, r8, r11

000069d7 <.LM46>:
    69d7:	64 1e                         	and	#1, r14

000069d9 <.LM47>:
    69d9:	61 fb                         	cmp	#15, r11
    69db:	24 39                         	bgtu.b	6a14 <.LM57>

000069dd <.LM48>:
    69dd:	57 8e                         	or	r8, r14
    69df:	e7 de 01                      	mov.l	r14, 4[r13]

000069e2 <.LM49>:
    69e2:	4b 8d                         	add	r8, r13
    69e4:	ed da 01                      	mov.l	4[r13], r10
    69e7:	65 1a                         	or	#1, r10
    69e9:	e7 da 01                      	mov.l	r10, 4[r13]

000069ec <.LM50>:
    69ec:	ef 91                         	mov.l	r9, r1
    69ee:	05 b1 e1 ff                   	bsr.a	4b9f <___malloc_unlock>

000069f2 <.LM51>:
    69f2:	ef 7b                         	mov.l	r7, r11

000069f4 <.LM52>:
    69f4:	ef b1                         	mov.l	r11, r1
    69f6:	3f 6d 09                      	rtsd	#36, r6-r13

000069f9 <.LM53>:
    69f9:	75 22 fc                      	and	#-4, r2

000069fc <.LM54>:
    69fc:	ff 28 c2                      	add	r12, r2, r8
    69ff:	47 48                         	cmp	r4, r8
    6a01:	28 05                         	bge.b	6a06 <.LM55>
    6a03:	38 45 ff                      	bra.w	6948 <.LM21>

00006a06 <.LM55>:
    6a06:	ed 3b 03                      	mov.l	12[r3], r11
    6a09:	ed 3c 02                      	mov.l	8[r3], r12
    6a0c:	e7 cb 03                      	mov.l	r11, 12[r12]
    6a0f:	e7 bc 02                      	mov.l	r12, 8[r11]

00006a12 <.LM56>:
    6a12:	2e c2                         	bra.b	69d4 <.L11>

00006a14 <.LM57>:
    6a14:	57 ae                         	or	r10, r14

00006a16 <.LM58>:
    6a16:	ef bc                         	mov.l	r11, r12

00006a18 <.LM59>:
    6a18:	ff 22 ad                      	add	r10, r13, r2

00006a1b <.LM60>:
    6a1b:	e7 de 01                      	mov.l	r14, 4[r13]

00006a1e <.LM61>:
    6a1e:	65 1c                         	or	#1, r12

00006a20 <.LM62>:
    6a20:	4b 2b                         	add	r2, r11

00006a22 <.LM63>:
    6a22:	e7 2c 01                      	mov.l	r12, 4[r2]

00006a25 <.LM64>:
    6a25:	ed bc 01                      	mov.l	4[r11], r12

00006a28 <.LM65>:
    6a28:	ef 91                         	mov.l	r9, r1

00006a2a <.LM66>:
    6a2a:	65 1c                         	or	#1, r12
    6a2c:	e7 bc 01                      	mov.l	r12, 4[r11]

00006a2f <.LM67>:
    6a2f:	62 82                         	add	#8, r2
    6a31:	05 cf d7 ff                   	bsr.a	4200 <__free_r>
    6a35:	2e b7                         	bra.b	69ec <.LM50>

00006a37 <.LM68>:
    6a37:	47 4f                         	cmp	r4, r15
    6a39:	28 7f                         	bge.b	6ab8 <.LM85>

00006a3b <.LM69>:
    6a3b:	ef b2                         	mov.l	r11, r2
    6a3d:	ef 91                         	mov.l	r9, r1
    6a3f:	05 d1 db ff                   	bsr.a	4610 <__malloc_r>

00006a43 <.LM70>:
    6a43:	71 1b 00                      	add	#0, r1, r11
    6a46:	20 46                         	beq.b	6a8c <.LM77>

00006a48 <.LM71>:
    6a48:	71 7e f8                      	add	#-8, r7, r14
    6a4b:	ed ee 01                      	mov.l	4[r14], r14
    6a4e:	71 b4 f8                      	add	#-8, r11, r4
    6a51:	ef e3                         	mov.l	r14, r3
    6a53:	75 23 fe                      	and	#-2, r3
    6a56:	4b d3                         	add	r13, r3
    6a58:	47 34                         	cmp	r3, r4
    6a5a:	3a a1 01                      	beq.w	6bfb <.LBE11>

00006a5d <.LBB8>:
    6a5d:	71 c3 fc                      	add	#-4, r12, r3
    6a60:	75 53 24                      	cmp	#36, r3
    6a63:	25 05                         	bleu.b	6a68 <.LBB9>
    6a65:	38 02 01                      	bra.w	6b67 <.LBB21>

00006a68 <.LBB9>:
    6a68:	75 53 13                      	cmp	#19, r3
    6a6b:	25 05                         	bleu.b	6a70 <.LM74>
    6a6d:	38 a0 00                      	bra.w	6b0d <.LBB10>

00006a70 <.LM74>:
    6a70:	ef ba                         	mov.l	r11, r10
    6a72:	ef 7c                         	mov.l	r7, r12

00006a74 <.LM75>:
    6a74:	ec cd                         	mov.l	[r12], r13
    6a76:	e3 ad                         	mov.l	r13, [r10]
    6a78:	ed cd 01                      	mov.l	4[r12], r13
    6a7b:	e7 ad 01                      	mov.l	r13, 4[r10]
    6a7e:	ed cc 02                      	mov.l	8[r12], r12
    6a81:	e7 ac 02                      	mov.l	r12, 8[r10]

00006a84 <.LBE8>:
    6a84:	ef 91                         	mov.l	r9, r1
    6a86:	ef 72                         	mov.l	r7, r2
    6a88:	05 78 d7 ff                   	bsr.a	4200 <__free_r>

00006a8c <.LM77>:
    6a8c:	ef 91                         	mov.l	r9, r1
    6a8e:	05 11 e1 ff                   	bsr.a	4b9f <___malloc_unlock>

00006a92 <.LM78>:
    6a92:	ef b1                         	mov.l	r11, r1
    6a94:	3f 6d 09                      	rtsd	#36, r6-r13

00006a97 <.LM79>:
    6a97:	62 40                         	add	#4, r0
    6a99:	6f 6d                         	popm	r6-r13

00006a9b <.LM80>:
    6a9b:	ef 32                         	mov.l	r3, r2
    6a9d:	04 73 db ff                   	bra.a	4610 <__malloc_r>

00006aa1 <.LM81>:
    6aa1:	a8 1a                         	mov.l	4[r1], r2

00006aa3 <.LM82>:
    6aa3:	71 a8 10                      	add	#16, r10, r8

00006aa6 <.LM83>:
    6aa6:	75 22 fc                      	and	#-4, r2

00006aa9 <.LM84>:
    6aa9:	ff 23 c2                      	add	r12, r2, r3
    6aac:	47 83                         	cmp	r8, r3
    6aae:	29 05                         	blt.b	6ab3 <.LM84+0xa>
    6ab0:	38 93 00                      	bra.w	6b43 <.LBE20>
    6ab3:	ef 13                         	mov.l	r1, r3
    6ab5:	38 93 fe                      	bra.w	6948 <.LM21>

00006ab8 <.LM85>:
    6ab8:	ed 6b 03                      	mov.l	12[r6], r11
    6abb:	ed 6d 02                      	mov.l	8[r6], r13

00006abe <.LBB13>:
    6abe:	71 c3 fc                      	add	#-4, r12, r3

00006ac1 <.LBE13>:
    6ac1:	71 6c 08                      	add	#8, r6, r12

00006ac4 <.LM88>:
    6ac4:	e7 db 03                      	mov.l	r11, 12[r13]
    6ac7:	e7 bd 02                      	mov.l	r13, 8[r11]

00006aca <.LBB18>:
    6aca:	75 53 24                      	cmp	#36, r3
    6acd:	25 05                         	bleu.b	6ad2 <.LBB14>
    6acf:	38 4e 01                      	bra.w	6c1d <.LBE15>

00006ad2 <.LBB14>:
    6ad2:	75 53 13                      	cmp	#19, r3
    6ad5:	24 05                         	bgtu.b	6ada <.LM91>
    6ad7:	38 41 01                      	bra.w	6c18 <.LBB15>

00006ada <.LM91>:
    6ada:	ec 7d                         	mov.l	[r7], r13
    6adc:	75 53 1b                      	cmp	#27, r3
    6adf:	e7 6d 02                      	mov.l	r13, 8[r6]
    6ae2:	ed 7b 01                      	mov.l	4[r7], r11
    6ae5:	e7 6b 03                      	mov.l	r11, 12[r6]
    6ae8:	25 05                         	bleu.b	6aed <.LM92>
    6aea:	38 7a 01                      	bra.w	6c64 <.LBB16>

00006aed <.LM92>:
    6aed:	71 6b 10                      	add	#16, r6, r11
    6af0:	62 87                         	add	#8, r7

00006af2 <.LM93>:
    6af2:	ec 7d                         	mov.l	[r7], r13

00006af4 <.LM94>:
    6af4:	ef f8                         	mov.l	r15, r8

00006af6 <.LM95>:
    6af6:	e3 bd                         	mov.l	r13, [r11]
    6af8:	ed 7d 01                      	mov.l	4[r7], r13
    6afb:	e7 bd 01                      	mov.l	r13, 4[r11]
    6afe:	a8 f7                         	mov.l	8[r7], r7
    6b00:	ef 6d                         	mov.l	r6, r13
    6b02:	e7 b7 02                      	mov.l	r7, 8[r11]
    6b05:	ed 6e 01                      	mov.l	4[r6], r14
    6b08:	ef c7                         	mov.l	r12, r7
    6b0a:	38 ca fe                      	bra.w	69d4 <.L11>

00006b0d <.LBB10>:
    6b0d:	ec 7a                         	mov.l	[r7], r10
    6b0f:	75 53 1b                      	cmp	#27, r3
    6b12:	e3 ba                         	mov.l	r10, [r11]
    6b14:	ed 7c 01                      	mov.l	4[r7], r12
    6b17:	e7 bc 01                      	mov.l	r12, 4[r11]
    6b1a:	25 05                         	bleu.b	6b1f <.LM97>
    6b1c:	38 c5 00                      	bra.w	6be1 <.LBB11>

00006b1f <.LM97>:
    6b1f:	71 ba 08                      	add	#8, r11, r10
    6b22:	71 7c 08                      	add	#8, r7, r12
    6b25:	38 4f ff                      	bra.w	6a74 <.LM75>

00006b28 <.LBB20>:
    6b28:	ef db                         	mov.l	r13, r11

00006b2a <.LM99>:
    6b2a:	ec 7c                         	mov.l	[r7], r12
    6b2c:	e3 bc                         	mov.l	r12, [r11]
    6b2e:	ed 7c 01                      	mov.l	4[r7], r12
    6b31:	e7 bc 01                      	mov.l	r12, 4[r11]
    6b34:	a8 f7                         	mov.l	8[r7], r7
    6b36:	e7 b7 02                      	mov.l	r7, 8[r11]
    6b39:	ed 6e 01                      	mov.l	4[r6], r14
    6b3c:	ef d7                         	mov.l	r13, r7
    6b3e:	ef 6d                         	mov.l	r6, r13
    6b40:	38 94 fe                      	bra.w	69d4 <.L11>

00006b43 <.LBE20>:
    6b43:	43 a3                         	sub	r10, r3

00006b45 <.LM101>:
    6b45:	4b ad                         	add	r10, r13

00006b47 <.LM102>:
    6b47:	65 13                         	or	#1, r3
    6b49:	e7 d3 01                      	mov.l	r3, 4[r13]

00006b4c <.LM103>:
    6b4c:	71 7c f8                      	add	#-8, r7, r12
    6b4f:	ed cb 01                      	mov.l	4[r12], r11

00006b52 <.LM104>:
    6b52:	ef 91                         	mov.l	r9, r1

00006b54 <.LM105>:
    6b54:	64 1b                         	and	#1, r11
    6b56:	57 ba                         	or	r11, r10
    6b58:	e7 ca 01                      	mov.l	r10, 4[r12]

00006b5b <.LM106>:
    6b5b:	e7 5d 02                      	mov.l	r13, 8[r5]

00006b5e <.LM107>:
    6b5e:	ef 7b                         	mov.l	r7, r11

00006b60 <.LM108>:
    6b60:	05 3f e0 ff                   	bsr.a	4b9f <___malloc_unlock>

00006b64 <.LM109>:
    6b64:	38 90 fe                      	bra.w	69f4 <.LM52>

00006b67 <.LBB21>:
    6b67:	ef 72                         	mov.l	r7, r2
    6b69:	05 2f fd ff                   	bsr.a	6898 <_memmove>
    6b6d:	38 17 ff                      	bra.w	6a84 <.LBE8>

00006b70 <.LBE21>:
    6b70:	71 ae 10                      	add	#16, r10, r14
    6b73:	47 e8                         	cmp	r14, r8
    6b75:	28 05                         	bge.b	6b7a <.LM112>
    6b77:	38 c0 fe                      	bra.w	6a37 <.LM68>

00006b7a <.LM112>:
    6b7a:	ed 6b 03                      	mov.l	12[r6], r11
    6b7d:	ed 6d 02                      	mov.l	8[r6], r13

00006b80 <.LBB22>:
    6b80:	71 c3 fc                      	add	#-4, r12, r3

00006b83 <.LBE22>:
    6b83:	e7 db 03                      	mov.l	r11, 12[r13]
    6b86:	e7 bd 02                      	mov.l	r13, 8[r11]

00006b89 <.LM115>:
    6b89:	71 6b 08                      	add	#8, r6, r11

00006b8c <.LBB26>:
    6b8c:	75 53 24                      	cmp	#36, r3
    6b8f:	25 05                         	bleu.b	6b94 <.LBB23>
    6b91:	38 1c 01                      	bra.w	6cad <.LBB36>

00006b94 <.LBB23>:
    6b94:	75 53 13                      	cmp	#19, r3
    6b97:	24 05                         	bgtu.b	6b9c <.LM118>
    6b99:	38 fa 00                      	bra.w	6c93 <.LBB24>

00006b9c <.LM118>:
    6b9c:	ec 7c                         	mov.l	[r7], r12
    6b9e:	75 53 1b                      	cmp	#27, r3
    6ba1:	e7 6c 02                      	mov.l	r12, 8[r6]
    6ba4:	ed 7d 01                      	mov.l	4[r7], r13
    6ba7:	e7 6d 03                      	mov.l	r13, 12[r6]
    6baa:	25 05                         	bleu.b	6baf <.LM119>
    6bac:	38 10 01                      	bra.w	6cbc <.LBB25>

00006baf <.LM119>:
    6baf:	71 6c 10                      	add	#16, r6, r12
    6bb2:	62 87                         	add	#8, r7

00006bb4 <.LM120>:
    6bb4:	ec 7d                         	mov.l	[r7], r13
    6bb6:	e3 cd                         	mov.l	r13, [r12]
    6bb8:	ed 7d 01                      	mov.l	4[r7], r13
    6bbb:	e7 cd 01                      	mov.l	r13, 4[r12]
    6bbe:	a8 f7                         	mov.l	8[r7], r7
    6bc0:	e7 c7 02                      	mov.l	r7, 8[r12]

00006bc3 <.LBE23>:
    6bc3:	43 a8                         	sub	r10, r8

00006bc5 <.LM122>:
    6bc5:	ff 2c a6                      	add	r10, r6, r12

00006bc8 <.LM123>:
    6bc8:	65 18                         	or	#1, r8
    6bca:	e7 c8 01                      	mov.l	r8, 4[r12]

00006bcd <.LM124>:
    6bcd:	a8 6f                         	mov.l	4[r6], r7

00006bcf <.LM125>:
    6bcf:	ef 91                         	mov.l	r9, r1

00006bd1 <.LM126>:
    6bd1:	64 17                         	and	#1, r7
    6bd3:	57 a7                         	or	r10, r7
    6bd5:	a0 6f                         	mov.l	r7, 4[r6]

00006bd7 <.LM127>:
    6bd7:	e7 5c 02                      	mov.l	r12, 8[r5]

00006bda <.LM128>:
    6bda:	05 c5 df ff                   	bsr.a	4b9f <___malloc_unlock>

00006bde <.LM129>:
    6bde:	38 16 fe                      	bra.w	69f4 <.LM52>

00006be1 <.LBB11>:
    6be1:	ed 7d 02                      	mov.l	8[r7], r13
    6be4:	75 53 24                      	cmp	#36, r3
    6be7:	e7 bd 02                      	mov.l	r13, 8[r11]
    6bea:	ed 7a 03                      	mov.l	12[r7], r10
    6bed:	e7 ba 03                      	mov.l	r10, 12[r11]
    6bf0:	20 5f                         	beq.b	6c4f <.LBB12>

00006bf2 <.LM131>:
    6bf2:	71 ba 10                      	add	#16, r11, r10
    6bf5:	71 7c 10                      	add	#16, r7, r12
    6bf8:	38 7c fe                      	bra.w	6a74 <.LM75>

00006bfb <.LBE11>:
    6bfb:	ed 48 01                      	mov.l	4[r4], r8
    6bfe:	75 28 fc                      	and	#-4, r8
    6c01:	4b c8                         	add	r12, r8

00006c03 <.LM133>:
    6c03:	38 d1 fd                      	bra.w	69d4 <.L11>

00006c06 <.LBB28>:
    6c06:	ef 72                         	mov.l	r7, r2
    6c08:	ef d1                         	mov.l	r13, r1
    6c0a:	05 8e fc ff                   	bsr.a	6898 <_memmove>
    6c0e:	ef d7                         	mov.l	r13, r7
    6c10:	ed 6e 01                      	mov.l	4[r6], r14
    6c13:	ef 6d                         	mov.l	r6, r13
    6c15:	38 bf fd                      	bra.w	69d4 <.L11>

00006c18 <.LBB15>:
    6c18:	ef cb                         	mov.l	r12, r11
    6c1a:	38 d8 fe                      	bra.w	6af2 <.LM93>

00006c1d <.LBE15>:
    6c1d:	ef 72                         	mov.l	r7, r2
    6c1f:	ef c1                         	mov.l	r12, r1
    6c21:	e3 0f                         	mov.l	r15, [r0]
    6c23:	05 75 fc ff                   	bsr.a	6898 <_memmove>

00006c27 <.LM137>:
    6c27:	ec 0f                         	mov.l	[r0], r15

00006c29 <.LM138>:
    6c29:	ef c7                         	mov.l	r12, r7
    6c2b:	ed 6e 01                      	mov.l	4[r6], r14

00006c2e <.LM139>:
    6c2e:	ef f8                         	mov.l	r15, r8

00006c30 <.LM140>:
    6c30:	ef 6d                         	mov.l	r6, r13
    6c32:	38 a2 fd                      	bra.w	69d4 <.L11>

00006c35 <.LBB30>:
    6c35:	ed 7b 02                      	mov.l	8[r7], r11
    6c38:	75 53 24                      	cmp	#36, r3
    6c3b:	e7 6b 04                      	mov.l	r11, 16[r6]
    6c3e:	ed 7c 03                      	mov.l	12[r7], r12
    6c41:	e7 6c 05                      	mov.l	r12, 20[r6]
    6c44:	20 3a                         	beq.b	6c7e <.LBB33>

00006c46 <.LM142>:
    6c46:	71 6b 18                      	add	#24, r6, r11
    6c49:	71 77 10                      	add	#16, r7, r7
    6c4c:	38 de fe                      	bra.w	6b2a <.LM99>

00006c4f <.LBB12>:
    6c4f:	ed 7c 04                      	mov.l	16[r7], r12
    6c52:	71 ba 18                      	add	#24, r11, r10
    6c55:	e7 bc 04                      	mov.l	r12, 16[r11]
    6c58:	ed 7d 05                      	mov.l	20[r7], r13
    6c5b:	71 7c 18                      	add	#24, r7, r12
    6c5e:	e7 bd 05                      	mov.l	r13, 20[r11]
    6c61:	38 13 fe                      	bra.w	6a74 <.LM75>

00006c64 <.LBB16>:
    6c64:	ed 7d 02                      	mov.l	8[r7], r13
    6c67:	75 53 24                      	cmp	#36, r3
    6c6a:	e7 6d 04                      	mov.l	r13, 16[r6]
    6c6d:	ed 7b 03                      	mov.l	12[r7], r11
    6c70:	e7 6b 05                      	mov.l	r11, 20[r6]
    6c73:	20 25                         	beq.b	6c98 <.LBB17>

00006c75 <.LM145>:
    6c75:	71 6b 18                      	add	#24, r6, r11
    6c78:	71 77 10                      	add	#16, r7, r7
    6c7b:	38 77 fe                      	bra.w	6af2 <.LM93>

00006c7e <.LBB33>:
    6c7e:	ed 7b 04                      	mov.l	16[r7], r11
    6c81:	e7 6b 06                      	mov.l	r11, 24[r6]
    6c84:	ed 7c 05                      	mov.l	20[r7], r12
    6c87:	71 6b 20                      	add	#32, r6, r11
    6c8a:	e7 6c 07                      	mov.l	r12, 28[r6]
    6c8d:	71 77 18                      	add	#24, r7, r7
    6c90:	38 9a fe                      	bra.w	6b2a <.LM99>

00006c93 <.LBB24>:
    6c93:	ef bc                         	mov.l	r11, r12
    6c95:	38 1f ff                      	bra.w	6bb4 <.LM120>

00006c98 <.LBB17>:
    6c98:	ed 7d 04                      	mov.l	16[r7], r13
    6c9b:	e7 6d 06                      	mov.l	r13, 24[r6]
    6c9e:	ed 7b 05                      	mov.l	20[r7], r11
    6ca1:	71 77 18                      	add	#24, r7, r7
    6ca4:	e7 6b 07                      	mov.l	r11, 28[r6]
    6ca7:	71 6b 20                      	add	#32, r6, r11
    6caa:	38 48 fe                      	bra.w	6af2 <.LM93>

00006cad <.LBB36>:
    6cad:	ef b1                         	mov.l	r11, r1
    6caf:	ef 72                         	mov.l	r7, r2
    6cb1:	e3 05                         	mov.l	r5, [r0]
    6cb3:	05 e5 fb ff                   	bsr.a	6898 <_memmove>
    6cb7:	ec 05                         	mov.l	[r0], r5
    6cb9:	38 0a ff                      	bra.w	6bc3 <.LBE23>

00006cbc <.LBB25>:
    6cbc:	ed 7c 02                      	mov.l	8[r7], r12
    6cbf:	75 53 24                      	cmp	#36, r3
    6cc2:	e7 6c 04                      	mov.l	r12, 16[r6]
    6cc5:	ed 7d 03                      	mov.l	12[r7], r13
    6cc8:	e7 6d 05                      	mov.l	r13, 20[r6]
    6ccb:	12                            	beq.s	6cd5 <.LM152>

00006ccc <.LM151>:
    6ccc:	71 6c 18                      	add	#24, r6, r12
    6ccf:	71 77 10                      	add	#16, r7, r7
    6cd2:	38 e2 fe                      	bra.w	6bb4 <.LM120>

00006cd5 <.LM152>:
    6cd5:	ed 7c 04                      	mov.l	16[r7], r12
    6cd8:	e7 6c 06                      	mov.l	r12, 24[r6]
    6cdb:	ed 7d 05                      	mov.l	20[r7], r13
    6cde:	71 6c 20                      	add	#32, r6, r12
    6ce1:	e7 6d 07                      	mov.l	r13, 28[r6]
    6ce4:	71 77 18                      	add	#24, r7, r7
    6ce7:	38 cd fe                      	bra.w	6bb4 <.LM120>

00006cea <.LBE25>:
    6cea:	74 10 01 00 00 00             	mul	#1, r0

00006cf0 <_cleanup_glue>:
    6cf0:	6e 7a                         	pushm	r7-r10

00006cf2 <.LCFI0>:
    6cf2:	ef 27                         	mov.l	r2, r7

00006cf4 <.LM3>:
    6cf4:	ec 22                         	mov.l	[r2], r2

00006cf6 <.LM4>:
    6cf6:	ef 1a                         	mov.l	r1, r10

00006cf8 <.LM5>:
    6cf8:	61 02                         	cmp	#0, r2
    6cfa:	16                            	beq.s	6d00 <.LM7>

00006cfb <.LM6>:
    6cfb:	05 f5 ff ff                   	bsr.a	6cf0 <_cleanup_glue>

00006cff <.LVL2>:
    6cff:	03                            	nop

00006d00 <.LM7>:
    6d00:	ef a1                         	mov.l	r10, r1
    6d02:	ef 72                         	mov.l	r7, r2

00006d04 <.LM8>:
    6d04:	6f 7a                         	popm	r7-r10

00006d06 <.LM9>:
    6d06:	04 fa d4 ff                   	bra.a	4200 <__free_r>

00006d0a <.LFE0>:
    6d0a:	74 10 01 00 00 00             	mul	#1, r0

00006d10 <__reclaim_reent>:
    6d10:	6e 7c                         	pushm	r7-r12

00006d12 <.LCFI1>:
    6d12:	fb 72 00 80 00 00             	mov.l	#0x8000, r7
    6d18:	06 84 71                      	cmp	[r7].l, r1

00006d1b <.LM12>:
    6d1b:	ef 1a                         	mov.l	r1, r10

00006d1d <.LM13>:
    6d1d:	20 7d                         	beq.b	6d9a <.LM34>

00006d1f <.LM14>:
    6d1f:	ed 1e 13                      	mov.l	76[r1], r14
    6d22:	61 0e                         	cmp	#0, r14
    6d24:	20 34                         	beq.b	6d58 <.LBE2>
    6d26:	66 07                         	mov.l	#0, r7
    6d28:	ef 7c                         	mov.l	r7, r12
    6d2a:	fb b2 00 42 00 00             	mov.l	#0x4200, r11

00006d30 <.LBB2>:
    6d30:	fe 67 e2                      	mov.l	[r7, r14], r2

00006d33 <.LM16>:
    6d33:	61 02                         	cmp	#0, r2
    6d35:	20 11                         	beq.b	6d46 <.LBE3>
    6d37:	03                            	nop

00006d38 <.LM17>:
    6d38:	ec 27                         	mov.l	[r2], r7

00006d3a <.LM18>:
    6d3a:	ef a1                         	mov.l	r10, r1
    6d3c:	7f 1b                         	jsr	r11

00006d3e <.LM19>:
    6d3e:	71 72 00                      	add	#0, r7, r2
    6d41:	21 f7                         	bne.b	6d38 <.LM17>
    6d43:	ed ae 13                      	mov.l	76[r10], r14

00006d46 <.LBE3>:
    6d46:	62 1c                         	add	#1, r12
    6d48:	75 5c 20                      	cmp	#32, r12
    6d4b:	ef c7                         	mov.l	r12, r7
    6d4d:	21 e3                         	bne.b	6d30 <.LBB2>

00006d4f <.LM21>:
    6d4f:	ef a1                         	mov.l	r10, r1
    6d51:	ef e2                         	mov.l	r14, r2
    6d53:	7f 1b                         	jsr	r11
    6d55:	fc 13 00                      	nop

00006d58 <.LBE2>:
    6d58:	ed a2 10                      	mov.l	64[r10], r2
    6d5b:	61 02                         	cmp	#0, r2
    6d5d:	17                            	beq.s	6d64 <.LM24>

00006d5e <.LM23>:
    6d5e:	ef a1                         	mov.l	r10, r1
    6d60:	05 a0 d4 ff                   	bsr.a	4200 <__free_r>

00006d64 <.LM24>:
    6d64:	ed a2 52                      	mov.l	328[r10], r2
    6d67:	61 02                         	cmp	#0, r2
    6d69:	20 1f                         	beq.b	6d88 <.LBE4>

00006d6b <.LM25>:
    6d6b:	72 ac 4c 01                   	add	#332, r10, r12
    6d6f:	47 c2                         	cmp	r12, r2
    6d71:	20 17                         	beq.b	6d88 <.LBE4>
    6d73:	fb b2 00 42 00 00             	mov.l	#0x4200, r11

00006d79 <.LBB4>:
    6d79:	ec 27                         	mov.l	[r2], r7

00006d7b <.LM27>:
    6d7b:	ef a1                         	mov.l	r10, r1
    6d7d:	7f 1b                         	jsr	r11

00006d7f <.LM28>:
    6d7f:	47 7c                         	cmp	r7, r12

00006d81 <.LM29>:
    6d81:	ef 72                         	mov.l	r7, r2

00006d83 <.LM30>:
    6d83:	21 f6                         	bne.b	6d79 <.LBB4>
    6d85:	fc 13 00                      	nop

00006d88 <.LBE4>:
    6d88:	ed a2 15                      	mov.l	84[r10], r2
    6d8b:	61 02                         	cmp	#0, r2
    6d8d:	17                            	beq.s	6d94 <.LM33>

00006d8e <.LM32>:
    6d8e:	ef a1                         	mov.l	r10, r1
    6d90:	05 70 d4 ff                   	bsr.a	4200 <__free_r>

00006d94 <.LM33>:
    6d94:	ed a7 0e                      	mov.l	56[r10], r7
    6d97:	61 07                         	cmp	#0, r7
    6d99:	1c                            	bne.s	6d9d <.LM35>

00006d9a <.LM34>:
    6d9a:	3f 7c 06                      	rtsd	#24, r7-r12

00006d9d <.LM35>:
    6d9d:	ed a7 0f                      	mov.l	60[r10], r7
    6da0:	ef a1                         	mov.l	r10, r1
    6da2:	7f 17                         	jsr	r7

00006da4 <.LM36>:
    6da4:	ed a2 b8                      	mov.l	736[r10], r2
    6da7:	61 02                         	cmp	#0, r2
    6da9:	20 f1                         	beq.b	6d9a <.LM34>

00006dab <.LM37>:
    6dab:	ef a1                         	mov.l	r10, r1

00006dad <.LM38>:
    6dad:	6f 7c                         	popm	r7-r12

00006daf <.LM39>:
    6daf:	04 41 ff ff                   	bra.a	6cf0 <_cleanup_glue>

00006db3 <.LFE1>:
    6db3:	77 10 01 00 00                	mul	#1, r0

00006db8 <__wrapup_reent>:
    6db8:	6e 7c                         	pushm	r7-r12

00006dba <.LCFI2>:
    6dba:	71 1c 00                      	add	#0, r1, r12
    6dbd:	20 3a                         	beq.b	6df7 <.LM53>

00006dbf <.LVL6>:
    6dbf:	03                            	nop

00006dc0 <.LM42>:
    6dc0:	ed cb 52                      	mov.l	328[r12], r11

00006dc3 <.LVL7>:
    6dc3:	61 0b                         	cmp	#0, r11
    6dc5:	20 25                         	beq.b	6dea <.LM50>
    6dc7:	03                            	nop

00006dc8 <.LM43>:
    6dc8:	ed ba 01                      	mov.l	4[r11], r10

00006dcb <.LVL8>:
    6dcb:	71 a7 ff                      	add	#-1, r10, r7

00006dce <.LVL9>:
    6dce:	27 16                         	bn.b	6de4 <.LM49>

00006dd0 <.LM44>:
    6dd0:	62 2a                         	add	#2, r10
    6dd2:	6c 2a                         	shll	#2, r10
    6dd4:	4b ba                         	add	r11, r10
    6dd6:	ef 00                         	nop

00006dd8 <.LM45>:
    6dd8:	fd 2e ae                      	mov.l	[-r10], r14

00006ddb <.LM46>:
    6ddb:	60 17                         	sub	#1, r7

00006ddd <.LM47>:
    6ddd:	7f 1e                         	jsr	r14

00006ddf <.LM48>:
    6ddf:	75 07 ff                      	cmp	#-1, r7
    6de2:	21 f6                         	bne.b	6dd8 <.LM45>

00006de4 <.LM49>:
    6de4:	ec bb                         	mov.l	[r11], r11
    6de6:	61 0b                         	cmp	#0, r11
    6de8:	21 e0                         	bne.b	6dc8 <.LM43>

00006dea <.LM50>:
    6dea:	ed c7 0f                      	mov.l	60[r12], r7
    6ded:	61 07                         	cmp	#0, r7
    6def:	15                            	beq.s	6df4 <.LM52>

00006df0 <.LM51>:
    6df0:	ef c1                         	mov.l	r12, r1
    6df2:	7f 17                         	jsr	r7

00006df4 <.LM52>:
    6df4:	3f 7c 06                      	rtsd	#24, r7-r12

00006df7 <.LM53>:
    6df7:	fb 72 00 80 00 00             	mov.l	#0x8000, r7
    6dfd:	ec 7c                         	mov.l	[r7], r12

00006dff <.LVL16>:
    6dff:	2e c1                         	bra.b	6dc0 <.LM42>

00006e01 <.LFE2>:
    6e01:	0f                            	bra.s	6e08 <___swbuf_r>
    6e02:	03                            	nop
    6e03:	03                            	nop
    6e04:	03                            	nop
    6e05:	03                            	nop
    6e06:	03                            	nop
    6e07:	03                            	nop

00006e08 <___swbuf_r>:
    6e08:	6e 7c                         	pushm	r7-r12

00006e0a <.LCFI0>:
    6e0a:	61 01                         	cmp	#0, r1

00006e0c <.LM3>:
    6e0c:	ef 1a                         	mov.l	r1, r10
    6e0e:	ef 2b                         	mov.l	r2, r11
    6e10:	ef 37                         	mov.l	r3, r7

00006e12 <.LM4>:
    6e12:	20 0e                         	beq.b	6e20 <.LM6>

00006e14 <.LM5>:
    6e14:	ed 1e 0e                      	mov.l	56[r1], r14
    6e17:	61 0e                         	cmp	#0, r14
    6e19:	3a b2 00                      	beq.w	6ecb <.LM34>

00006e1c <.LVL1>:
    6e1c:	76 10 01 00                   	mul	#1, r0

00006e20 <.LM6>:
    6e20:	dd 7e 06                      	mov.w	12[r7], r14

00006e23 <.LM7>:
    6e23:	ed 7c 06                      	mov.l	24[r7], r12

00006e26 <.LM8>:
    6e26:	ef e4                         	mov.l	r14, r4
    6e28:	64 84                         	and	#8, r4
    6e2a:	df 44                         	mov.w	r4, r4

00006e2c <.LM9>:
    6e2c:	e7 7c 02                      	mov.l	r12, 8[r7]

00006e2f <.LM10>:
    6e2f:	61 04                         	cmp	#0, r4
    6e31:	3a 86 00                      	beq.w	6eb7 <.LM33>

00006e34 <.LM11>:
    6e34:	a9 74                         	mov.l	16[r7], r4
    6e36:	61 04                         	cmp	#0, r4
    6e38:	20 7f                         	beq.b	6eb7 <.LM33>

00006e3a <.LM12>:
    6e3a:	ef e3                         	mov.l	r14, r3
    6e3c:	76 23 00 20                   	and	#0x2000, r3
    6e40:	df 33                         	mov.w	r3, r3

00006e42 <.LM13>:
    6e42:	76 2b ff 00                   	and	#255, r11

00006e46 <.LM14>:
    6e46:	61 03                         	cmp	#0, r3
    6e48:	20 32                         	beq.b	6e7a <.LM24>

00006e4a <.LM15>:
    6e4a:	ec 7e                         	mov.l	[r7], r14
    6e4c:	ff 04 4e                      	sub	r4, r14, r4

00006e4f <.LM16>:
    6e4f:	06 85 74 05                   	cmp	20[r7].l, r4
    6e53:	28 41                         	bge.b	6e94 <.LM30>
    6e55:	62 14                         	add	#1, r4

00006e57 <.LVL4>:
    6e57:	03                            	nop

00006e58 <.LM17>:
    6e58:	a8 f3                         	mov.l	8[r7], r3
    6e5a:	60 13                         	sub	#1, r3
    6e5c:	a0 f3                         	mov.l	r3, 8[r7]

00006e5e <.LM18>:
    6e5e:	fd 20 eb                      	mov.b	r11, [r14+]

00006e61 <.LM19>:
    6e61:	a9 7b                         	mov.l	20[r7], r3

00006e63 <.LM20>:
    6e63:	e3 7e                         	mov.l	r14, [r7]

00006e65 <.LM21>:
    6e65:	47 43                         	cmp	r4, r3
    6e67:	20 3f                         	beq.b	6ea6 <.LM31>

00006e69 <.LM22>:
    6e69:	dd 7e 06                      	mov.w	12[r7], r14
    6e6c:	fd 74 ce 01                   	tst	#1, r14
    6e70:	15                            	beq.s	6e75 <.LM23>
    6e71:	61 ab                         	cmp	#10, r11
    6e73:	20 33                         	beq.b	6ea6 <.LM31>

00006e75 <.LM23>:
    6e75:	ef b1                         	mov.l	r11, r1
    6e77:	3f 7c 06                      	rtsd	#24, r7-r12

00006e7a <.LM24>:
    6e7a:	76 3e 00 20                   	or	#0x2000, r14
    6e7e:	ae 7b                         	mov.l	100[r7], r3
    6e80:	d7 7e 06                      	mov.w	r14, 12[r7]

00006e83 <.LM25>:
    6e83:	ec 7e                         	mov.l	[r7], r14

00006e85 <.LM26>:
    6e85:	76 23 ff df                   	and	#0xffffdfff, r3

00006e89 <.LM27>:
    6e89:	ff 04 4e                      	sub	r4, r14, r4

00006e8c <.LM28>:
    6e8c:	a6 7b                         	mov.l	r3, 100[r7]

00006e8e <.LM29>:
    6e8e:	06 85 74 05                   	cmp	20[r7].l, r4
    6e92:	29 c3                         	blt.b	6e55 <.LM16+0x6>

00006e94 <.LM30>:
    6e94:	ef a1                         	mov.l	r10, r1
    6e96:	ef 72                         	mov.l	r7, r2
    6e98:	05 c0 d0 ff                   	bsr.a	3f58 <__fflush_r>

00006e9c <.LVL9>:
    6e9c:	61 01                         	cmp	#0, r1
    6e9e:	21 14                         	bne.b	6eb2 <.LM32>
    6ea0:	ec 7e                         	mov.l	[r7], r14
    6ea2:	66 14                         	mov.l	#1, r4
    6ea4:	2e b4                         	bra.b	6e58 <.LM17>

00006ea6 <.LM31>:
    6ea6:	ef a1                         	mov.l	r10, r1
    6ea8:	ef 72                         	mov.l	r7, r2
    6eaa:	05 ae d0 ff                   	bsr.a	3f58 <__fflush_r>

00006eae <.LVL11>:
    6eae:	61 01                         	cmp	#0, r1
    6eb0:	20 c5                         	beq.b	6e75 <.LM23>

00006eb2 <.LM32>:
    6eb2:	fb b6 ff                      	mov.l	#-1, r11

00006eb5 <.LVL12>:
    6eb5:	2e c0                         	bra.b	6e75 <.LM23>

00006eb7 <.LM33>:
    6eb7:	ef a1                         	mov.l	r10, r1
    6eb9:	ef 72                         	mov.l	r7, r2
    6ebb:	05 55 bf ff                   	bsr.a	2e10 <___swsetup_r>

00006ebf <.LVL14>:
    6ebf:	61 01                         	cmp	#0, r1
    6ec1:	21 f1                         	bne.b	6eb2 <.LM32>
    6ec3:	dd 7e 06                      	mov.w	12[r7], r14
    6ec6:	a9 74                         	mov.l	16[r7], r4
    6ec8:	38 72 ff                      	bra.w	6e3a <.LM12>

00006ecb <.LM34>:
    6ecb:	05 79 d1 ff                   	bsr.a	4044 <___sinit>

00006ecf <.LVL16>:
    6ecf:	38 51 ff                      	bra.w	6e20 <.LM6>

00006ed2 <.LFE0>:
    6ed2:	74 10 01 00 00 00             	mul	#1, r0

00006ed8 <___swbuf>:
    6ed8:	fb 42 00 80 00 00             	mov.l	#0x8000, r4

00006ede <.LM37>:
    6ede:	ef 1e                         	mov.l	r1, r14

00006ee0 <.LM38>:
    6ee0:	ec 41                         	mov.l	[r4], r1

00006ee2 <.LM39>:
    6ee2:	ef 23                         	mov.l	r2, r3

00006ee4 <.LM40>:
    6ee4:	ef e2                         	mov.l	r14, r2

00006ee6 <.LVL19>:
    6ee6:	04 22 ff ff                   	bra.a	6e08 <___swbuf_r>

00006eea <.LFE1>:
    6eea:	00                            	brk
    6eeb:	00                            	brk
    6eec:	00                            	brk
    6eed:	00                            	brk
	...

00006ef0 <__wcrtomb_r>:
    6ef0:	6e 7c                         	pushm	r7-r12

00006ef2 <.LCFI0>:
    6ef2:	71 00 ec                      	add	#-20, r0, r0

00006ef5 <.LCFI1>:
    6ef5:	fb c2 b4 88 00 00             	mov.l	#0x88b4, r12

00006efb <.LM3>:
    6efb:	61 02                         	cmp	#0, r2

00006efd <.LM4>:
    6efd:	ef 27                         	mov.l	r2, r7
    6eff:	ef 1a                         	mov.l	r1, r10
    6f01:	ef 4b                         	mov.l	r4, r11

00006f03 <.LM5>:
    6f03:	ec cc                         	mov.l	[r12], r12

00006f05 <.LM6>:
    6f05:	20 25                         	beq.b	6f2a <.LM13>

00006f07 <.LM7>:
    6f07:	a1 03                         	mov.l	r3, 16[r0]
    6f09:	05 b7 d5 ff                   	bsr.a	44c0 <___locale_charset>

00006f0d <.LVL1>:
    6f0d:	a9 03                         	mov.l	16[r0], r3
    6f0f:	ef 14                         	mov.l	r1, r4
    6f11:	e3 0b                         	mov.l	r11, [r0]
    6f13:	ef a1                         	mov.l	r10, r1
    6f15:	ef 72                         	mov.l	r7, r2
    6f17:	7f 1c                         	jsr	r12

00006f19 <.LM8>:
    6f19:	75 01 ff                      	cmp	#-1, r1
    6f1c:	14                            	beq.s	6f20 <.LM10>

00006f1d <.LM9>:
    6f1d:	3f 7c 0b                      	rtsd	#44, r7-r12

00006f20 <.LM10>:
    6f20:	f8 b6 00                      	mov.l	#0, [r11]

00006f23 <.LM11>:
    6f23:	f8 aa 8a 00                   	mov.l	#138, [r10]

00006f27 <.LM12>:
    6f27:	3f 7c 0b                      	rtsd	#44, r7-r12

00006f2a <.LM13>:
    6f2a:	05 96 d5 ff                   	bsr.a	44c0 <___locale_charset>

00006f2e <.LVL5>:
    6f2e:	66 42                         	mov.l	#4, r2
    6f30:	ef 14                         	mov.l	r1, r4
    6f32:	e3 0b                         	mov.l	r11, [r0]
    6f34:	ef a1                         	mov.l	r10, r1
    6f36:	4b 02                         	add	r0, r2
    6f38:	ef 73                         	mov.l	r7, r3
    6f3a:	7f 1c                         	jsr	r12

00006f3c <.LVL6>:
    6f3c:	2e dd                         	bra.b	6f19 <.LM8>

00006f3e <.LFE0>:
    6f3e:	ef 00                         	nop

00006f40 <_wcrtomb>:
    6f40:	6e 7d                         	pushm	r7-r13

00006f42 <.LCFI2>:
    6f42:	71 00 f0                      	add	#-16, r0, r0

00006f45 <.LCFI3>:
    6f45:	61 01                         	cmp	#0, r1

00006f47 <.LM16>:
    6f47:	ef 17                         	mov.l	r1, r7
    6f49:	ef 3a                         	mov.l	r3, r10

00006f4b <.LM17>:
    6f4b:	20 37                         	beq.b	6f82 <.LM25>

00006f4d <.LM18>:
    6f4d:	fb b2 00 80 00 00             	mov.l	#0x8000, r11
    6f53:	ec b9                         	mov.l	[r11], r9
    6f55:	fb d2 b4 88 00 00             	mov.l	#0x88b4, r13
    6f5b:	ef 2c                         	mov.l	r2, r12
    6f5d:	ec dd                         	mov.l	[r13], r13
    6f5f:	05 61 d5 ff                   	bsr.a	44c0 <___locale_charset>

00006f63 <.LVL8>:
    6f63:	ef 14                         	mov.l	r1, r4
    6f65:	e3 0a                         	mov.l	r10, [r0]
    6f67:	ef 91                         	mov.l	r9, r1
    6f69:	ef 72                         	mov.l	r7, r2
    6f6b:	ef c3                         	mov.l	r12, r3
    6f6d:	7f 1d                         	jsr	r13

00006f6f <.LVL9>:
    6f6f:	03                            	nop

00006f70 <.LM19>:
    6f70:	75 01 ff                      	cmp	#-1, r1
    6f73:	14                            	beq.s	6f77 <.LM21>

00006f74 <.LM20>:
    6f74:	3f 7d 0b                      	rtsd	#44, r7-r13

00006f77 <.LM21>:
    6f77:	ec b7                         	mov.l	[r11], r7

00006f79 <.LM22>:
    6f79:	f8 a6 00                      	mov.l	#0, [r10]

00006f7c <.LM23>:
    6f7c:	3e 70 8a                      	mov.l	#138, [r7]

00006f7f <.LM24>:
    6f7f:	3f 7d 0b                      	rtsd	#44, r7-r13

00006f82 <.LM25>:
    6f82:	fb b2 00 80 00 00             	mov.l	#0x8000, r11
    6f88:	fb c2 b4 88 00 00             	mov.l	#0x88b4, r12
    6f8e:	ec bd                         	mov.l	[r11], r13
    6f90:	ec cc                         	mov.l	[r12], r12
    6f92:	05 2e d5 ff                   	bsr.a	44c0 <___locale_charset>

00006f96 <.LVL13>:
    6f96:	66 42                         	mov.l	#4, r2
    6f98:	ef 14                         	mov.l	r1, r4
    6f9a:	e3 0a                         	mov.l	r10, [r0]
    6f9c:	ef d1                         	mov.l	r13, r1
    6f9e:	4b 02                         	add	r0, r2
    6fa0:	ef 73                         	mov.l	r7, r3
    6fa2:	7f 1c                         	jsr	r12

00006fa4 <.LVL14>:
    6fa4:	2e cc                         	bra.b	6f70 <.LM19>

00006fa6 <.LFE1>:
    6fa6:	ef 00                         	nop

00006fa8 <___ascii_wctomb>:
    6fa8:	60 40                         	sub	#4, r0

00006faa <.LCFI0>:
    6faa:	61 02                         	cmp	#0, r2
    6fac:	20 0d                         	beq.b	6fb9 <.LM7>

00006fae <.LM3>:
    6fae:	75 53 ff                      	cmp	#255, r3
    6fb1:	24 0c                         	bgtu.b	6fbd <.LM9>

00006fb3 <.LM4>:
    6fb3:	c3 23                         	mov.b	r3, [r2]

00006fb5 <.LM5>:
    6fb5:	66 11                         	mov.l	#1, r1

00006fb7 <.LM6>:
    6fb7:	67 01                         	rtsd	#4

00006fb9 <.LM7>:
    6fb9:	ef 21                         	mov.l	r2, r1

00006fbb <.LM8>:
    6fbb:	67 01                         	rtsd	#4

00006fbd <.LM9>:
    6fbd:	3e 10 8a                      	mov.l	#138, [r1]

00006fc0 <.LM10>:
    6fc0:	fb 16 ff                      	mov.l	#-1, r1

00006fc3 <.LM11>:
    6fc3:	67 01                         	rtsd	#4

00006fc5 <__wctomb_r>:
    6fc5:	6e 7b                         	pushm	r7-r11

00006fc7 <.LCFI1>:
    6fc7:	60 c0                         	sub	#12, r0

00006fc9 <.LCFI2>:
    6fc9:	fb 72 b4 88 00 00             	mov.l	#0x88b4, r7

00006fcf <.LM14>:
    6fcf:	ef 4b                         	mov.l	r4, r11

00006fd1 <.LM15>:
    6fd1:	ec 77                         	mov.l	[r7], r7

00006fd3 <.LM16>:
    6fd3:	ef 1a                         	mov.l	r1, r10

00006fd5 <.LM17>:
    6fd5:	a0 0a                         	mov.l	r2, 4[r0]
    6fd7:	a0 83                         	mov.l	r3, 8[r0]
    6fd9:	05 e7 d4 ff                   	bsr.a	44c0 <___locale_charset>

00006fdd <.LVL7>:
    6fdd:	a8 0a                         	mov.l	4[r0], r2
    6fdf:	a8 83                         	mov.l	8[r0], r3
    6fe1:	ef 14                         	mov.l	r1, r4
    6fe3:	e3 0b                         	mov.l	r11, [r0]
    6fe5:	ef a1                         	mov.l	r10, r1
    6fe7:	7f 17                         	jsr	r7

00006fe9 <.LM18>:
    6fe9:	3f 7b 08                      	rtsd	#32, r7-r11

Disassembly of section P:

00006ff0 <__exit>:
    6ff0:	05 1a a4 ff                   	bsr.a	140a <___exit>

00006ff4 <_read>:
    6ff4:	05 1c a4 ff                   	bsr.a	1410 <___read>

00006ff8 <.LM5>:
    6ff8:	02                            	rts

00006ff9 <_write>:
    6ff9:	05 1d a4 ff                   	bsr.a	1416 <___write>

00006ffd <.LM8>:
    6ffd:	02                            	rts

00006ffe <_open>:
    6ffe:	05 1e a4 ff                   	bsr.a	141c <___open>

00007002 <.LM11>:
    7002:	02                            	rts

00007003 <_close>:
    7003:	05 1f a4 ff                   	bsr.a	1422 <___close>

00007007 <.LM14>:
    7007:	02                            	rts

00007008 <_fstat>:
    7008:	ef 21                         	mov.l	r2, r1
    700a:	66 02                         	mov.l	#0, r2
    700c:	75 43 3c                      	mov.l	#60, r3
    700f:	05 39 a4 ff                   	bsr.a	1448 <_memset>

00007013 <.LM17>:
    7013:	66 01                         	mov.l	#0, r1
    7015:	02                            	rts

00007016 <_lseek>:
    7016:	ef 21                         	mov.l	r2, r1
    7018:	02                            	rts

00007019 <_sbrk>:
    7019:	fb 42 b8 88 00 00             	mov.l	#0x88b8, r4
    701f:	ec 4e                         	mov.l	[r4], r14

00007021 <.LM22>:
    7021:	4b e1                         	add	r14, r1
    7023:	e3 41                         	mov.l	r1, [r4]

00007025 <.LM23>:
    7025:	ef e1                         	mov.l	r14, r1
    7027:	02                            	rts

00007028 <_isatty>:
    7028:	66 11                         	mov.l	#1, r1
    702a:	02                            	rts

0000702b <_main>:
    702b:	60 c0                         	sub	#12, r0

0000702d <.LM27>:
    702d:	f8 02 d8 77 00 00             	mov.l	#0x77d8, [r0]
    7033:	fb e2 bc 88 00 00             	mov.l	#0x88bc, r14
    7039:	ec ee                         	mov.l	[r14], r14
    703b:	e7 0e 01                      	mov.l	r14, 4[r0]
    703e:	f9 02 02 04 78 00 00          	mov.l	#0x7804, 8[r0]
    7045:	05 1b a4 ff                   	bsr.a	1460 <_printf>

00007049 <.LM28>:
    7049:	66 01                         	mov.l	#0, r1
    704b:	05 dd a3 ff                   	bsr.a	1428 <_exit>

0000704f <__startmain>:
    704f:	7e a7                         	push.l	r7

00007051 <.LBB4>:
    7051:	fb 12 c0 88 00 00             	mov.l	#0x88c0, r1
    7057:	66 02                         	mov.l	#0, r2
    7059:	fb 32 08 c9 00 00             	mov.l	#0xc908, r3
    705f:	fb 72 0c 78 00 00             	mov.l	#0x780c, r7
    7065:	06 80 73                      	sub	[r7].l, r3
    7068:	05 e0 a3 ff                   	bsr.a	1448 <_memset>

0000706c <.LBE4>:
    706c:	05 bf ff ff                   	bsr.a	702b <_main>

00007070 <__COM_DIV64u>:
    7070:	6e 7d                         	pushm	r7-r13

00007072 <.LBB16>:
    7072:	61 04                         	cmp	#0, r4
    7074:	3b c0 00                      	bne.w	7134 <.LM14>

00007077 <.LM3>:
    7077:	47 23                         	cmp	r2, r3
    7079:	ef 3e                         	mov.l	r3, r14
    707b:	ef 15                         	mov.l	r1, r5
    707d:	24 05                         	bgtu.b	7082 <.LM4>
    707f:	38 00 01                      	bra.w	717f <.LM20>

00007082 <.LM4>:
    7082:	77 03 ff ff 00                	cmp	#0xffff, r3
    7087:	ef 2f                         	mov.l	r2, r15
    7089:	25 05                         	bleu.b	708e <.LLST20+0x5>
    708b:	38 b6 01                      	bra.w	7241 <.LM30>
    708e:	75 53 ff                      	cmp	#255, r3
    7091:	24 05                         	bgtu.b	7096 <.LLST20+0xd>
    7093:	38 23 03                      	bra.w	73b6 <.LM59+0x3>
    7096:	66 84                         	mov.l	#8, r4
    7098:	ef 4a                         	mov.l	r4, r10
    709a:	ef 37                         	mov.l	r3, r7
    709c:	fd 60 47                      	shlr	r4, r7
    709f:	ef 74                         	mov.l	r7, r4
    70a1:	fb 72 f4 7b 00 00             	mov.l	#0x7bf4, r7
    70a7:	fe c4 77                      	movu.b	[r4, r7], r7
    70aa:	4b 7a                         	add	r7, r10
    70ac:	75 47 20                      	mov.l	#32, r7
    70af:	43 a7                         	sub	r10, r7

000070b1 <.LM5>:
    70b1:	20 17                         	beq.b	70c8 <.LM12>

000070b3 <.LM6>:
    70b3:	ef 1b                         	mov.l	r1, r11
    70b5:	fd 62 72                      	shll	r7, r2
    70b8:	fd 60 ab                      	shlr	r10, r11

000070bb <.LM7>:
    70bb:	ef 3e                         	mov.l	r3, r14

000070bd <.LM8>:
    70bd:	ef 15                         	mov.l	r1, r5

000070bf <.LM9>:
    70bf:	fd 62 7e                      	shll	r7, r14

000070c2 <.LM10>:
    70c2:	ff 5f b2                      	or	r11, r2, r15

000070c5 <.LM11>:
    70c5:	fd 62 75                      	shll	r7, r5

000070c8 <.LM12>:
    70c8:	fd 90 e4                      	shlr	#16, r14, r4
    70cb:	ef f3                         	mov.l	r15, r3
    70cd:	fc 27 43                      	divu	r4, r3
    70d0:	ff 37 43                      	mul 	r4, r3, r7
    70d3:	43 7f                         	sub	r7, r15
    70d5:	ef ea                         	mov.l	r14, r10
    70d7:	77 2a ff ff 00                	and	#0xffff, r10
    70dc:	6d 0f                         	shll	#16, r15
    70de:	fd 90 5b                      	shlr	#16, r5, r11
    70e1:	ff 37 a3                      	mul 	r10, r3, r7
    70e4:	57 bf                         	or	r11, r15
    70e6:	47 f7                         	cmp	r15, r7
    70e8:	25 14                         	bleu.b	70fc <.LM12+0x34>
    70ea:	4b ef                         	add	r14, r15
    70ec:	71 3b ff                      	add	#-1, r3, r11
    70ef:	47 fe                         	cmp	r15, r14
    70f1:	24 09                         	bgtu.b	70fa <.LM12+0x32>
    70f3:	47 f7                         	cmp	r15, r7
    70f5:	25 05                         	bleu.b	70fa <.LM12+0x32>
    70f7:	38 3e 03                      	bra.w	7435 <.LM75>
    70fa:	ef b3                         	mov.l	r11, r3
    70fc:	43 7f                         	sub	r7, r15
    70fe:	ef f1                         	mov.l	r15, r1
    7100:	fc 27 41                      	divu	r4, r1
    7103:	4f 14                         	mul	r1, r4
    7105:	43 4f                         	sub	r4, r15
    7107:	6d 0f                         	shll	#16, r15
    7109:	77 25 ff ff 00                	and	#0xffff, r5
    710e:	4f 1a                         	mul	r1, r10
    7110:	57 f5                         	or	r15, r5
    7112:	47 5a                         	cmp	r5, r10
    7114:	25 17                         	bleu.b	712b <.LLST22+0x24>
    7116:	4b e5                         	add	r14, r5
    7118:	71 17 ff                      	add	#-1, r1, r7
    711b:	47 5e                         	cmp	r5, r14
    711d:	25 05                         	bleu.b	7122 <.LLST22+0x1b>
    711f:	38 9c 02                      	bra.w	73bb <.LM60>
    7122:	47 5a                         	cmp	r5, r10
    7124:	24 05                         	bgtu.b	7129 <.LLST22+0x22>
    7126:	38 95 02                      	bra.w	73bb <.LM60>
    7129:	60 21                         	sub	#2, r1
    712b:	6d 03                         	shll	#16, r3
    712d:	57 31                         	or	r3, r1
    712f:	66 02                         	mov.l	#0, r2

00007131 <.LM13>:
    7131:	3f 7d 07                      	rtsd	#28, r7-r13

00007134 <.LM14>:
    7134:	47 24                         	cmp	r2, r4
    7136:	25 05                         	bleu.b	713b <.LM15>
    7138:	38 f3 00                      	bra.w	722b <.LM27>

0000713b <.LM15>:
    713b:	77 04 ff ff 00                	cmp	#0xffff, r4
    7140:	24 05                         	bgtu.b	7145 <.LM15+0xa>
    7142:	38 f0 00                      	bra.w	7232 <.LM29>
    7145:	74 04 ff ff ff 00             	cmp	#0xffffff, r4
    714b:	25 05                         	bleu.b	7150 <.LM15+0x15>
    714d:	38 97 02                      	bra.w	73e4 <.LM68>
    7150:	75 47 10                      	mov.l	#16, r7
    7153:	ef 75                         	mov.l	r7, r5
    7155:	ef 4b                         	mov.l	r4, r11
    7157:	fd 60 7b                      	shlr	r7, r11
    715a:	fb a2 f4 7b 00 00             	mov.l	#0x7bf4, r10
    7160:	fe cb a7                      	movu.b	[r11, r10], r7
    7163:	75 4e 20                      	mov.l	#32, r14
    7166:	4b 75                         	add	r7, r5
    7168:	43 5e                         	sub	r5, r14

0000716a <.LM16>:
    716a:	3b f9 00                      	bne.w	7263 <.LM32>

0000716d <.LM17>:
    716d:	47 24                         	cmp	r2, r4
    716f:	23 09                         	bnc.b	7178 <.LM18>
    7171:	47 13                         	cmp	r1, r3
    7173:	25 05                         	bleu.b	7178 <.LM18>
    7175:	38 8d 02                      	bra.w	7402 <.LM70>

00007178 <.LM18>:
    7178:	66 02                         	mov.l	#0, r2
    717a:	66 11                         	mov.l	#1, r1

0000717c <.LM19>:
    717c:	3f 7d 07                      	rtsd	#28, r7-r13

0000717f <.LM20>:
    717f:	61 03                         	cmp	#0, r3
    7181:	1f                            	bne.s	7188 <.LM22>

00007182 <.LM21>:
    7182:	66 1e                         	mov.l	#1, r14
    7184:	fd 74 9e 00                   	divu	#0, r14

00007188 <.LM22>:
    7188:	77 0e ff ff 00                	cmp	#0xffff, r14
    718d:	24 05                         	bgtu.b	7192 <.LM22+0xa>
    718f:	38 c5 00                      	bra.w	7254 <.LM31>
    7192:	74 0e ff ff ff 00             	cmp	#0xffffff, r14
    7198:	25 05                         	bleu.b	719d <.LLST24+0x4>
    719a:	38 59 02                      	bra.w	73f3 <.LM69>
    719d:	75 4a 10                      	mov.l	#16, r10
    71a0:	ef ac                         	mov.l	r10, r12
    71a2:	ef e7                         	mov.l	r14, r7
    71a4:	fd 60 a7                      	shlr	r10, r7
    71a7:	fb b2 f4 7b 00 00             	mov.l	#0x7bf4, r11
    71ad:	fe c7 b7                      	movu.b	[r7, r11], r7
    71b0:	75 43 20                      	mov.l	#32, r3
    71b3:	4b c7                         	add	r12, r7
    71b5:	43 73                         	sub	r7, r3

000071b7 <.LM23>:
    71b7:	3b 6b 01                      	bne.w	7322 <.LM48>
    71ba:	ef e7                         	mov.l	r14, r7

000071bc <.LM24>:
    71bc:	ff 0a e2                      	sub	r14, r2, r10
    71bf:	fd 90 e4                      	shlr	#16, r14, r4
    71c2:	77 27 ff ff 00                	and	#0xffff, r7
    71c7:	66 12                         	mov.l	#1, r2

000071c9 <.LM25>:
    71c9:	ef af                         	mov.l	r10, r15
    71cb:	fc 27 4f                      	divu	r4, r15
    71ce:	ff 33 4f                      	mul 	r4, r15, r3
    71d1:	ff 03 3a                      	sub	r3, r10, r3
    71d4:	6d 03                         	shll	#16, r3
    71d6:	fd 90 5b                      	shlr	#16, r5, r11
    71d9:	ff 31 7f                      	mul 	r7, r15, r1
    71dc:	57 b3                         	or	r11, r3
    71de:	47 31                         	cmp	r3, r1
    71e0:	25 14                         	bleu.b	71f4 <.LLST25+0x6>
    71e2:	4b e3                         	add	r14, r3
    71e4:	71 fa ff                      	add	#-1, r15, r10
    71e7:	47 3e                         	cmp	r3, r14
    71e9:	24 09                         	bgtu.b	71f2 <.LLST25+0x4>
    71eb:	47 31                         	cmp	r3, r1
    71ed:	25 05                         	bleu.b	71f2 <.LLST25+0x4>
    71ef:	38 3f 02                      	bra.w	742e <.LM74>
    71f2:	ef af                         	mov.l	r10, r15
    71f4:	43 13                         	sub	r1, r3
    71f6:	ef 31                         	mov.l	r3, r1
    71f8:	fc 27 41                      	divu	r4, r1
    71fb:	4f 14                         	mul	r1, r4
    71fd:	43 43                         	sub	r4, r3
    71ff:	6d 03                         	shll	#16, r3
    7201:	77 25 ff ff 00                	and	#0xffff, r5
    7206:	4f 17                         	mul	r1, r7
    7208:	57 35                         	or	r3, r5
    720a:	47 57                         	cmp	r5, r7
    720c:	25 17                         	bleu.b	7223 <.LLST26+0xa>
    720e:	4b e5                         	add	r14, r5
    7210:	71 1a ff                      	add	#-1, r1, r10
    7213:	47 5e                         	cmp	r5, r14
    7215:	25 05                         	bleu.b	721a <.LLST26+0x1>
    7217:	38 a9 01                      	bra.w	73c0 <.LM61>
    721a:	47 57                         	cmp	r5, r7
    721c:	24 05                         	bgtu.b	7221 <.LLST26+0x8>
    721e:	38 a2 01                      	bra.w	73c0 <.LM61>
    7221:	60 21                         	sub	#2, r1
    7223:	6d 0f                         	shll	#16, r15
    7225:	57 f1                         	or	r15, r1
    7227:	03                            	nop

00007228 <.LM26>:
    7228:	3f 7d 07                      	rtsd	#28, r7-r13

0000722b <.LM27>:
    722b:	66 02                         	mov.l	#0, r2
    722d:	ef 21                         	mov.l	r2, r1

0000722f <.LM28>:
    722f:	3f 7d 07                      	rtsd	#28, r7-r13

00007232 <.LM29>:
    7232:	75 54 ff                      	cmp	#255, r4
    7235:	25 05                         	bleu.b	723a <.LM29+0x8>
    7237:	38 b5 01                      	bra.w	73ec <.LM68+0x8>
    723a:	66 07                         	mov.l	#0, r7
    723c:	ef 75                         	mov.l	r7, r5
    723e:	38 17 ff                      	bra.w	7155 <.LM15+0x1a>

00007241 <.LM30>:
    7241:	74 03 ff ff ff 00             	cmp	#0xffffff, r3
    7247:	25 05                         	bleu.b	724c <.LLST27+0x8>
    7249:	38 6a 01                      	bra.w	73b3 <.LM59>
    724c:	75 44 10                      	mov.l	#16, r4
    724f:	ef 4a                         	mov.l	r4, r10
    7251:	38 49 fe                      	bra.w	709a <.LLST20+0x11>

00007254 <.LM31>:
    7254:	75 5e ff                      	cmp	#255, r14
    7257:	25 05                         	bleu.b	725c <.LM31+0x8>
    7259:	38 a2 01                      	bra.w	73fb <.LM69+0x8>
    725c:	66 0a                         	mov.l	#0, r10
    725e:	ef ac                         	mov.l	r10, r12
    7260:	38 42 ff                      	bra.w	71a2 <.LLST24+0x9>

00007263 <.LM32>:
    7263:	ef 37                         	mov.l	r3, r7
    7265:	fd 60 57                      	shlr	r5, r7
    7268:	fd 62 e4                      	shll	r14, r4

0000726b <.LM33>:
    726b:	ef 2a                         	mov.l	r2, r10

0000726d <.LM34>:
    726d:	57 74                         	or	r7, r4

0000726f <.LM35>:
    726f:	fd 60 5a                      	shlr	r5, r10

00007272 <.LM36>:
    7272:	fd 90 4f                      	shlr	#16, r4, r15
    7275:	ef ac                         	mov.l	r10, r12
    7277:	fc 27 fc                      	divu	r15, r12

0000727a <.LM37>:
    727a:	ef 17                         	mov.l	r1, r7
    727c:	fd 60 57                      	shlr	r5, r7
    727f:	fd 62 e2                      	shll	r14, r2

00007282 <.LM38>:
    7282:	ff 3b fc                      	mul 	r15, r12, r11
    7285:	43 ba                         	sub	r11, r10

00007287 <.LM39>:
    7287:	57 72                         	or	r7, r2

00007289 <.LM40>:
    7289:	ef 4d                         	mov.l	r4, r13
    728b:	77 2d ff ff 00                	and	#0xffff, r13
    7290:	6d 0a                         	shll	#16, r10
    7292:	fd 90 27                      	shlr	#16, r2, r7
    7295:	ff 3b dc                      	mul 	r13, r12, r11
    7298:	57 7a                         	or	r7, r10

0000729a <.LM41>:
    729a:	fd 62 e3                      	shll	r14, r3

0000729d <.LM42>:
    729d:	47 ab                         	cmp	r10, r11
    729f:	25 11                         	bleu.b	72b0 <.LLST29+0x2>
    72a1:	4b 4a                         	add	r4, r10
    72a3:	71 c7 ff                      	add	#-1, r12, r7
    72a6:	47 a4                         	cmp	r10, r4
    72a8:	24 05                         	bgtu.b	72ad <.LM42+0x10>
    72aa:	38 6d 01                      	bra.w	7417 <.LM72+0xe>
    72ad:	ef 7c                         	mov.l	r7, r12
    72af:	03                            	nop
    72b0:	43 ba                         	sub	r11, r10
    72b2:	ef ab                         	mov.l	r10, r11
    72b4:	fc 27 fb                      	divu	r15, r11
    72b7:	4f bf                         	mul	r11, r15
    72b9:	43 fa                         	sub	r15, r10
    72bb:	fd d0 a7                      	shll	#16, r10, r7
    72be:	77 22 ff ff 00                	and	#0xffff, r2
    72c3:	ff 3a db                      	mul 	r13, r11, r10
    72c6:	57 27                         	or	r2, r7
    72c8:	47 7a                         	cmp	r7, r10
    72ca:	25 10                         	bleu.b	72da <.LLST29+0x2c>
    72cc:	4b 47                         	add	r4, r7
    72ce:	71 bd ff                      	add	#-1, r11, r13
    72d1:	47 74                         	cmp	r7, r4
    72d3:	24 05                         	bgtu.b	72d8 <.LLST29+0x2a>
    72d5:	38 34 01                      	bra.w	7409 <.LM72>
    72d8:	ef db                         	mov.l	r13, r11
    72da:	6d 0c                         	shll	#16, r12
    72dc:	57 cb                         	or	r12, r11

000072de <.LM43>:
    72de:	ef 34                         	mov.l	r3, r4
    72e0:	ef bc                         	mov.l	r11, r12
    72e2:	77 2c ff ff 00                	and	#0xffff, r12
    72e7:	fd 90 b2                      	shlr	#16, r11, r2
    72ea:	77 24 ff ff 00                	and	#0xffff, r4
    72ef:	69 03                         	shlr	#16, r3
    72f1:	ff 3d 4c                      	mul 	r4, r12, r13
    72f4:	4f 3c                         	mul	r3, r12
    72f6:	4f 24                         	mul	r2, r4
    72f8:	4b 4c                         	add	r4, r12
    72fa:	fd 90 d5                      	shlr	#16, r13, r5
    72fd:	4b 5c                         	add	r5, r12

000072ff <.LM44>:
    72ff:	43 a7                         	sub	r10, r7

00007301 <.LM45>:
    7301:	47 c4                         	cmp	r12, r4
    7303:	4f 23                         	mul	r2, r3
    7305:	25 07                         	bleu.b	730c <.LM45+0xb>
    7307:	73 33 00 00 01                	add	#0x10000, r3, r3
    730c:	fd 90 ca                      	shlr	#16, r12, r10
    730f:	4b a3                         	add	r10, r3

00007311 <.LM46>:
    7311:	47 37                         	cmp	r3, r7
    7313:	22 05                         	bc.b	7318 <.LM46+0x7>
    7315:	38 c7 00                      	bra.w	73dc <.LM66>
    7318:	3a b1 00                      	beq.w	73c9 <.LM62>
    731b:	ef b1                         	mov.l	r11, r1
    731d:	66 02                         	mov.l	#0, r2

0000731f <.LM47>:
    731f:	3f 7d 07                      	rtsd	#28, r7-r13

00007322 <.LM48>:
    7322:	ef 2b                         	mov.l	r2, r11
    7324:	fd 60 7b                      	shlr	r7, r11

00007327 <.LM49>:
    7327:	fd 62 3e                      	shll	r3, r14

0000732a <.LM50>:
    732a:	fd 90 e4                      	shlr	#16, r14, r4
    732d:	ef bf                         	mov.l	r11, r15
    732f:	fc 27 4f                      	divu	r4, r15

00007332 <.LM51>:
    7332:	ef 1a                         	mov.l	r1, r10
    7334:	fd 60 7a                      	shlr	r7, r10
    7337:	fd 62 32                      	shll	r3, r2

0000733a <.LM52>:
    733a:	ff 3c 4f                      	mul 	r4, r15, r12
    733d:	43 cb                         	sub	r12, r11

0000733f <.LM53>:
    733f:	ff 5d a2                      	or	r10, r2, r13

00007342 <.LM54>:
    7342:	ef e7                         	mov.l	r14, r7
    7344:	77 27 ff ff 00                	and	#0xffff, r7
    7349:	6d 0b                         	shll	#16, r11
    734b:	fd 90 da                      	shlr	#16, r13, r10

0000734e <.LM55>:
    734e:	ef 15                         	mov.l	r1, r5

00007350 <.LM56>:
    7350:	ff 3c 7f                      	mul 	r7, r15, r12
    7353:	57 ab                         	or	r10, r11

00007355 <.LM57>:
    7355:	fd 62 35                      	shll	r3, r5

00007358 <.LM58>:
    7358:	47 bc                         	cmp	r11, r12
    735a:	25 19                         	bleu.b	7373 <.LLST32+0x17>
    735c:	4b eb                         	add	r14, r11
    735e:	71 fa ff                      	add	#-1, r15, r10
    7361:	47 be                         	cmp	r11, r14
    7363:	25 05                         	bleu.b	7368 <.LLST32+0xc>
    7365:	38 c4 00                      	bra.w	7429 <.LM73+0x4>
    7368:	47 bc                         	cmp	r11, r12
    736a:	24 05                         	bgtu.b	736f <.LLST32+0x13>
    736c:	38 bd 00                      	bra.w	7429 <.LM73+0x4>
    736f:	60 2f                         	sub	#2, r15
    7371:	4b eb                         	add	r14, r11
    7373:	43 cb                         	sub	r12, r11
    7375:	ef bc                         	mov.l	r11, r12
    7377:	fc 27 4c                      	divu	r4, r12
    737a:	ff 3a 4c                      	mul 	r4, r12, r10
    737d:	ff 0a ab                      	sub	r10, r11, r10
    7380:	ef d2                         	mov.l	r13, r2
    7382:	6d 0a                         	shll	#16, r10
    7384:	77 22 ff ff 00                	and	#0xffff, r2
    7389:	ff 3d 7c                      	mul 	r7, r12, r13
    738c:	57 2a                         	or	r2, r10
    738e:	47 ad                         	cmp	r10, r13
    7390:	25 19                         	bleu.b	73a9 <.Ldebug_line0+0xd>
    7392:	4b ea                         	add	r14, r10
    7394:	71 cb ff                      	add	#-1, r12, r11
    7397:	47 ae                         	cmp	r10, r14
    7399:	25 05                         	bleu.b	739e <.Ldebug_line0+0x2>
    739b:	38 8a 00                      	bra.w	7425 <.LM73>
    739e:	47 ad                         	cmp	r10, r13
    73a0:	24 05                         	bgtu.b	73a5 <.Ldebug_line0+0x9>
    73a2:	38 83 00                      	bra.w	7425 <.LM73>
    73a5:	60 2c                         	sub	#2, r12
    73a7:	4b ea                         	add	r14, r10
    73a9:	fd d0 f2                      	shll	#16, r15, r2
    73ac:	43 da                         	sub	r13, r10
    73ae:	57 c2                         	or	r12, r2
    73b0:	38 19 fe                      	bra.w	71c9 <.LM25>

000073b3 <.LM59>:
    73b3:	75 44 18                      	mov.l	#24, r4
    73b6:	ef 4a                         	mov.l	r4, r10
    73b8:	38 e2 fc                      	bra.w	709a <.LLST20+0x11>

000073bb <.LM60>:
    73bb:	ef 71                         	mov.l	r7, r1
    73bd:	38 6e fd                      	bra.w	712b <.LLST22+0x24>

000073c0 <.LM61>:
    73c0:	ef a1                         	mov.l	r10, r1
    73c2:	6d 0f                         	shll	#16, r15
    73c4:	57 f1                         	or	r15, r1
    73c6:	38 62 fe                      	bra.w	7228 <.LM26>

000073c9 <.LM62>:
    73c9:	6d 0c                         	shll	#16, r12
    73cb:	77 2d ff ff 00                	and	#0xffff, r13

000073d0 <.LM63>:
    73d0:	fd 62 e1                      	shll	r14, r1

000073d3 <.LM64>:
    73d3:	4b dc                         	add	r13, r12

000073d5 <.LM65>:
    73d5:	47 c1                         	cmp	r12, r1
    73d7:	23 05                         	bnc.b	73dc <.LM66>
    73d9:	38 42 ff                      	bra.w	731b <.LM46+0xa>

000073dc <.LM66>:
    73dc:	71 b1 ff                      	add	#-1, r11, r1
    73df:	66 02                         	mov.l	#0, r2

000073e1 <.LM67>:
    73e1:	3f 7d 07                      	rtsd	#28, r7-r13

000073e4 <.LM68>:
    73e4:	75 47 18                      	mov.l	#24, r7
    73e7:	ef 75                         	mov.l	r7, r5
    73e9:	38 6c fd                      	bra.w	7155 <.LM15+0x1a>
    73ec:	66 87                         	mov.l	#8, r7
    73ee:	ef 75                         	mov.l	r7, r5
    73f0:	38 65 fd                      	bra.w	7155 <.LM15+0x1a>

000073f3 <.LM69>:
    73f3:	75 4a 18                      	mov.l	#24, r10
    73f6:	ef ac                         	mov.l	r10, r12
    73f8:	38 aa fd                      	bra.w	71a2 <.LLST24+0x9>
    73fb:	66 8a                         	mov.l	#8, r10
    73fd:	ef ac                         	mov.l	r10, r12
    73ff:	38 a3 fd                      	bra.w	71a2 <.LLST24+0x9>

00007402 <.LM70>:
    7402:	ef e2                         	mov.l	r14, r2
    7404:	ef e1                         	mov.l	r14, r1

00007406 <.LM71>:
    7406:	3f 7d 07                      	rtsd	#28, r7-r13

00007409 <.LM72>:
    7409:	47 7a                         	cmp	r7, r10
    740b:	24 05                         	bgtu.b	7410 <.LM72+0x7>
    740d:	38 cb fe                      	bra.w	72d8 <.LLST29+0x2a>
    7410:	60 2b                         	sub	#2, r11
    7412:	4b 47                         	add	r4, r7
    7414:	38 c6 fe                      	bra.w	72da <.LLST29+0x2c>
    7417:	47 ab                         	cmp	r10, r11
    7419:	24 05                         	bgtu.b	741e <.LM72+0x15>
    741b:	38 92 fe                      	bra.w	72ad <.LM42+0x10>
    741e:	60 2c                         	sub	#2, r12
    7420:	4b 4a                         	add	r4, r10
    7422:	38 8e fe                      	bra.w	72b0 <.LLST29+0x2>

00007425 <.LM73>:
    7425:	ef bc                         	mov.l	r11, r12
    7427:	2e 82                         	bra.b	73a9 <.Ldebug_line0+0xd>
    7429:	ef af                         	mov.l	r10, r15
    742b:	38 48 ff                      	bra.w	7373 <.LLST32+0x17>

0000742e <.LM74>:
    742e:	60 2f                         	sub	#2, r15
    7430:	4b e3                         	add	r14, r3
    7432:	38 c2 fd                      	bra.w	71f4 <.LLST25+0x6>

00007435 <.LM75>:
    7435:	60 23                         	sub	#2, r3
    7437:	4b ef                         	add	r14, r15
    7439:	38 c3 fc                      	bra.w	70fc <.LM12+0x34>

0000743c <.LFE1>:
    743c:	76 10 01 00                   	mul	#1, r0

00007440 <__COM_MOD64u>:
    7440:	6e 7d                         	pushm	r7-r13

00007442 <.LBB16>:
    7442:	61 04                         	cmp	#0, r4

00007444 <.LM3>:
    7444:	ef 2f                         	mov.l	r2, r15

00007446 <.LM4>:
    7446:	3b b1 00                      	bne.w	74f7 <.LM18>

00007449 <.LM5>:
    7449:	47 23                         	cmp	r2, r3
    744b:	ef 3e                         	mov.l	r3, r14
    744d:	ef 15                         	mov.l	r1, r5
    744f:	24 05                         	bgtu.b	7454 <.LM6>
    7451:	38 fd 00                      	bra.w	754e <.LM25>

00007454 <.LM6>:
    7454:	77 03 ff ff 00                	cmp	#0xffff, r3
    7459:	25 05                         	bleu.b	745e <.LM6+0xa>
    745b:	38 9e 01                      	bra.w	75f9 <.LM33>
    745e:	75 53 ff                      	cmp	#255, r3
    7461:	24 05                         	bgtu.b	7466 <.LM6+0x12>
    7463:	38 8f 02                      	bra.w	76f2 <.LM53+0x3>
    7466:	66 84                         	mov.l	#8, r4
    7468:	ef 4a                         	mov.l	r4, r10
    746a:	ef 37                         	mov.l	r3, r7
    746c:	fd 60 47                      	shlr	r4, r7
    746f:	ef 74                         	mov.l	r7, r4
    7471:	fb 72 f4 7b 00 00             	mov.l	#0x7bf4, r7
    7477:	fe c4 77                      	movu.b	[r4, r7], r7
    747a:	4b 7a                         	add	r7, r10
    747c:	75 47 20                      	mov.l	#32, r7
    747f:	43 a7                         	sub	r10, r7

00007481 <.LM7>:
    7481:	20 17                         	beq.b	7498 <.LM14>

00007483 <.LM8>:
    7483:	ef 1b                         	mov.l	r1, r11
    7485:	fd 62 72                      	shll	r7, r2
    7488:	fd 60 ab                      	shlr	r10, r11

0000748b <.LM9>:
    748b:	ef 3e                         	mov.l	r3, r14

0000748d <.LM10>:
    748d:	ef 15                         	mov.l	r1, r5

0000748f <.LM11>:
    748f:	fd 62 7e                      	shll	r7, r14

00007492 <.LM12>:
    7492:	ff 5f b2                      	or	r11, r2, r15

00007495 <.LM13>:
    7495:	fd 62 75                      	shll	r7, r5

00007498 <.LM14>:
    7498:	fd 90 e3                      	shlr	#16, r14, r3
    749b:	ef f4                         	mov.l	r15, r4
    749d:	fc 27 34                      	divu	r3, r4
    74a0:	ff 32 34                      	mul 	r3, r4, r2
    74a3:	43 2f                         	sub	r2, r15
    74a5:	ef ea                         	mov.l	r14, r10
    74a7:	77 2a ff ff 00                	and	#0xffff, r10
    74ac:	6d 0f                         	shll	#16, r15
    74ae:	fd 90 5b                      	shlr	#16, r5, r11
    74b1:	4f a4                         	mul	r10, r4
    74b3:	57 bf                         	or	r11, r15
    74b5:	47 f4                         	cmp	r15, r4
    74b7:	25 0f                         	bleu.b	74c6 <.LLST40+0xd>
    74b9:	4b ef                         	add	r14, r15
    74bb:	47 fe                         	cmp	r15, r14
    74bd:	24 09                         	bgtu.b	74c6 <.LLST40+0xd>
    74bf:	47 f4                         	cmp	r15, r4
    74c1:	25 05                         	bleu.b	74c6 <.LLST40+0xd>
    74c3:	38 f5 02                      	bra.w	77b8 <.LM71>
    74c6:	43 4f                         	sub	r4, r15
    74c8:	ef f1                         	mov.l	r15, r1
    74ca:	fc 27 31                      	divu	r3, r1
    74cd:	4f 13                         	mul	r1, r3
    74cf:	43 3f                         	sub	r3, r15
    74d1:	6d 0f                         	shll	#16, r15
    74d3:	77 25 ff ff 00                	and	#0xffff, r5
    74d8:	4f a1                         	mul	r10, r1
    74da:	57 f5                         	or	r15, r5
    74dc:	47 51                         	cmp	r5, r1
    74de:	25 0e                         	bleu.b	74ec <.LLST41+0x8>

000074e0 <.LM15>:
    74e0:	4b e5                         	add	r14, r5
    74e2:	47 5e                         	cmp	r5, r14
    74e4:	24 08                         	bgtu.b	74ec <.LLST41+0x8>
    74e6:	47 51                         	cmp	r5, r1
    74e8:	25 04                         	bleu.b	74ec <.LLST41+0x8>
    74ea:	4b e5                         	add	r14, r5
    74ec:	ff 01 15                      	sub	r1, r5, r1

000074ef <.LM16>:
    74ef:	fd 60 71                      	shlr	r7, r1
    74f2:	66 02                         	mov.l	#0, r2

000074f4 <.LM17>:
    74f4:	3f 7d 07                      	rtsd	#28, r7-r13

000074f7 <.LM18>:
    74f7:	47 24                         	cmp	r2, r4
    74f9:	24 fb                         	bgtu.b	74f4 <.LM17>

000074fb <.LM19>:
    74fb:	77 04 ff ff 00                	cmp	#0xffff, r4
    7500:	24 05                         	bgtu.b	7505 <.LLST42+0x2>
    7502:	38 d9 00                      	bra.w	75db <.LM31>
    7505:	74 04 ff ff ff 00             	cmp	#0xffffff, r4
    750b:	25 05                         	bleu.b	7510 <.LLST42+0xd>
    750d:	38 78 02                      	bra.w	7785 <.LBE37+0x7>
    7510:	75 47 10                      	mov.l	#16, r7
    7513:	ef 7e                         	mov.l	r7, r14
    7515:	ef 4a                         	mov.l	r4, r10
    7517:	fd 60 7a                      	shlr	r7, r10
    751a:	ef a7                         	mov.l	r10, r7
    751c:	fb a2 f4 7b 00 00             	mov.l	#0x7bf4, r10
    7522:	fe c7 a7                      	movu.b	[r7, r10], r7
    7525:	4b 7e                         	add	r7, r14
    7527:	75 47 20                      	mov.l	#32, r7
    752a:	43 e7                         	sub	r14, r7

0000752c <.LM20>:
    752c:	3b e0 00                      	bne.w	760c <.LM34>

0000752f <.LM21>:
    752f:	47 24                         	cmp	r2, r4
    7531:	23 09                         	bnc.b	753a <.LBB22>
    7533:	47 13                         	cmp	r1, r3
    7535:	25 05                         	bleu.b	753a <.LBB22>
    7537:	38 86 02                      	bra.w	77bd <.LM72>

0000753a <.LBB22>:
    753a:	ff 03 31                      	sub	r3, r1, r3
    753d:	43 42                         	sub	r4, r2
    753f:	47 31                         	cmp	r3, r1
    7541:	fc db 13                      	scnc.l	r1
    7544:	ff 0f 12                      	sub	r1, r2, r15

00007547 <.LBE22>:
    7547:	ef f2                         	mov.l	r15, r2
    7549:	ef 31                         	mov.l	r3, r1

0000754b <.LM24>:
    754b:	3f 7d 07                      	rtsd	#28, r7-r13

0000754e <.LM25>:
    754e:	61 03                         	cmp	#0, r3
    7550:	18                            	bne.s	7558 <.LM27>

00007551 <.LM26>:
    7551:	66 1e                         	mov.l	#1, r14
    7553:	fd 74 9e 00                   	divu	#0, r14
    7557:	03                            	nop

00007558 <.LM27>:
    7558:	77 0e ff ff 00                	cmp	#0xffff, r14
    755d:	24 05                         	bgtu.b	7562 <.LM27+0xa>
    755f:	38 8b 00                      	bra.w	75ea <.LM32>
    7562:	74 0e ff ff ff 00             	cmp	#0xffffff, r14
    7568:	25 05                         	bleu.b	756d <.Ldebug_line0+0x9>
    756a:	38 23 02                      	bra.w	778d <.LM69>
    756d:	75 47 10                      	mov.l	#16, r7
    7570:	ef 7a                         	mov.l	r7, r10
    7572:	ef ed                         	mov.l	r14, r13
    7574:	fd 60 7d                      	shlr	r7, r13
    7577:	fb b2 f4 7b 00 00             	mov.l	#0x7bf4, r11
    757d:	fe cd b7                      	movu.b	[r13, r11], r7
    7580:	4b 7a                         	add	r7, r10
    7582:	75 47 20                      	mov.l	#32, r7
    7585:	43 a7                         	sub	r10, r7

00007587 <.LM28>:
    7587:	3b 70 01                      	bne.w	76f7 <.LM54>
    758a:	ef ef                         	mov.l	r14, r15

0000758c <.LM29>:
    758c:	43 e2                         	sub	r14, r2
    758e:	fd 90 e4                      	shlr	#16, r14, r4
    7591:	77 2f ff ff 00                	and	#0xffff, r15

00007596 <.LM30>:
    7596:	ef 21                         	mov.l	r2, r1
    7598:	fc 27 41                      	divu	r4, r1
    759b:	ff 33 41                      	mul 	r4, r1, r3
    759e:	43 32                         	sub	r3, r2
    75a0:	fd d0 23                      	shll	#16, r2, r3
    75a3:	fd 90 5a                      	shlr	#16, r5, r10
    75a6:	4f f1                         	mul	r15, r1
    75a8:	57 a3                         	or	r10, r3
    75aa:	47 31                         	cmp	r3, r1
    75ac:	25 0e                         	bleu.b	75ba <.LM30+0x24>
    75ae:	4b e3                         	add	r14, r3
    75b0:	47 3e                         	cmp	r3, r14
    75b2:	24 08                         	bgtu.b	75ba <.LM30+0x24>
    75b4:	47 31                         	cmp	r3, r1
    75b6:	25 04                         	bleu.b	75ba <.LM30+0x24>
    75b8:	4b e3                         	add	r14, r3
    75ba:	43 13                         	sub	r1, r3
    75bc:	ef 3a                         	mov.l	r3, r10
    75be:	fc 27 4a                      	divu	r4, r10
    75c1:	4f a4                         	mul	r10, r4
    75c3:	43 43                         	sub	r4, r3
    75c5:	6d 03                         	shll	#16, r3
    75c7:	77 25 ff ff 00                	and	#0xffff, r5
    75cc:	ff 31 fa                      	mul 	r15, r10, r1
    75cf:	57 35                         	or	r3, r5
    75d1:	47 51                         	cmp	r5, r1
    75d3:	24 05                         	bgtu.b	75d8 <.LLST46+0x1b>
    75d5:	38 17 ff                      	bra.w	74ec <.LLST41+0x8>
    75d8:	38 08 ff                      	bra.w	74e0 <.LM15>

000075db <.LM31>:
    75db:	75 54 ff                      	cmp	#255, r4
    75de:	25 05                         	bleu.b	75e3 <.LM31+0x8>
    75e0:	38 9e 01                      	bra.w	777e <.LBE37>
    75e3:	66 07                         	mov.l	#0, r7
    75e5:	ef 7e                         	mov.l	r7, r14
    75e7:	38 2e ff                      	bra.w	7515 <.LLST42+0x12>

000075ea <.LM32>:
    75ea:	75 5e ff                      	cmp	#255, r14
    75ed:	25 05                         	bleu.b	75f2 <.LM32+0x8>
    75ef:	38 a6 01                      	bra.w	7795 <.LM69+0x8>
    75f2:	66 07                         	mov.l	#0, r7
    75f4:	ef 7a                         	mov.l	r7, r10
    75f6:	38 7c ff                      	bra.w	7572 <.Ldebug_line0+0xe>

000075f9 <.LM33>:
    75f9:	74 03 ff ff ff 00             	cmp	#0xffffff, r3
    75ff:	25 05                         	bleu.b	7604 <.LM33+0xb>
    7601:	38 ee 00                      	bra.w	76ef <.LM53>
    7604:	75 44 10                      	mov.l	#16, r4
    7607:	ef 4a                         	mov.l	r4, r10
    7609:	38 61 fe                      	bra.w	746a <.LM6+0x16>

0000760c <.LM34>:
    760c:	ef 3a                         	mov.l	r3, r10
    760e:	fd 60 ea                      	shlr	r14, r10
    7611:	fd 62 74                      	shll	r7, r4
    7614:	57 a4                         	or	r10, r4

00007616 <.LM35>:
    7616:	ef 2a                         	mov.l	r2, r10
    7618:	fd 60 ea                      	shlr	r14, r10

0000761b <.LM36>:
    761b:	fd 90 4f                      	shlr	#16, r4, r15
    761e:	ef ac                         	mov.l	r10, r12
    7620:	fc 27 fc                      	divu	r15, r12

00007623 <.LM37>:
    7623:	ef 1d                         	mov.l	r1, r13
    7625:	fd 60 ed                      	shlr	r14, r13
    7628:	fd 62 72                      	shll	r7, r2

0000762b <.LM38>:
    762b:	ff 3b fc                      	mul 	r15, r12, r11

0000762e <.LM39>:
    762e:	57 d2                         	or	r13, r2

00007630 <.LM40>:
    7630:	43 ba                         	sub	r11, r10
    7632:	ef 4d                         	mov.l	r4, r13
    7634:	77 2d ff ff 00                	and	#0xffff, r13
    7639:	6d 0a                         	shll	#16, r10
    763b:	fd 90 29                      	shlr	#16, r2, r9
    763e:	ff 3b dc                      	mul 	r13, r12, r11
    7641:	57 9a                         	or	r9, r10

00007643 <.LM41>:
    7643:	fd 62 73                      	shll	r7, r3

00007646 <.LM42>:
    7646:	fd 62 71                      	shll	r7, r1

00007649 <.LM43>:
    7649:	47 ab                         	cmp	r10, r11
    764b:	25 10                         	bleu.b	765b <.LM43+0x12>
    764d:	4b 4a                         	add	r4, r10
    764f:	71 c9 ff                      	add	#-1, r12, r9
    7652:	47 a4                         	cmp	r10, r4
    7654:	24 05                         	bgtu.b	7659 <.LM43+0x10>
    7656:	38 54 01                      	bra.w	77aa <.LM70+0xe>
    7659:	ef 9c                         	mov.l	r9, r12
    765b:	43 ba                         	sub	r11, r10
    765d:	ef ab                         	mov.l	r10, r11
    765f:	fc 27 fb                      	divu	r15, r11
    7662:	4f bf                         	mul	r11, r15
    7664:	43 fa                         	sub	r15, r10
    7666:	fd d0 a5                      	shll	#16, r10, r5
    7669:	77 22 ff ff 00                	and	#0xffff, r2
    766e:	ff 3f db                      	mul 	r13, r11, r15
    7671:	57 25                         	or	r2, r5
    7673:	47 5f                         	cmp	r5, r15
    7675:	25 10                         	bleu.b	7685 <.LM43+0x3c>
    7677:	4b 45                         	add	r4, r5
    7679:	71 ba ff                      	add	#-1, r11, r10
    767c:	47 54                         	cmp	r5, r4
    767e:	24 05                         	bgtu.b	7683 <.LM43+0x3a>
    7680:	38 1c 01                      	bra.w	779c <.LM70>
    7683:	ef ab                         	mov.l	r10, r11
    7685:	6d 0c                         	shll	#16, r12
    7687:	57 cb                         	or	r12, r11

00007689 <.LM44>:
    7689:	ef ba                         	mov.l	r11, r10
    768b:	ef 3c                         	mov.l	r3, r12
    768d:	77 2a ff ff 00                	and	#0xffff, r10
    7692:	69 0b                         	shlr	#16, r11
    7694:	77 2c ff ff 00                	and	#0xffff, r12
    7699:	fd 90 3d                      	shlr	#16, r3, r13
    769c:	ff 32 ca                      	mul 	r12, r10, r2
    769f:	4f bc                         	mul	r11, r12
    76a1:	4f da                         	mul	r13, r10
    76a3:	4b ca                         	add	r12, r10
    76a5:	fd 90 29                      	shlr	#16, r2, r9
    76a8:	4b 9a                         	add	r9, r10

000076aa <.LM45>:
    76aa:	43 f5                         	sub	r15, r5

000076ac <.LM46>:
    76ac:	47 ac                         	cmp	r10, r12
    76ae:	4f db                         	mul	r13, r11
    76b0:	25 08                         	bleu.b	76b8 <.LM46+0xc>
    76b2:	73 bb 00 00 01                	add	#0x10000, r11, r11
    76b7:	03                            	nop
    76b8:	fd 90 ac                      	shlr	#16, r10, r12
    76bb:	77 22 ff ff 00                	and	#0xffff, r2
    76c0:	6d 0a                         	shll	#16, r10
    76c2:	4b cb                         	add	r12, r11
    76c4:	4b 2a                         	add	r2, r10

000076c6 <.LM47>:
    76c6:	47 b5                         	cmp	r11, r5
    76c8:	22 05                         	bc.b	76cd <.LM47+0x7>
    76ca:	38 a1 00                      	bra.w	776b <.LBB37>
    76cd:	3a f9 00                      	beq.w	77c6 <.LM74>
    76d0:	ff 02 b5                      	sub	r11, r5, r2

000076d3 <.LM48>:
    76d3:	ef a3                         	mov.l	r10, r3

000076d5 <.LBB36>:
    76d5:	ff 03 31                      	sub	r3, r1, r3
    76d8:	47 31                         	cmp	r3, r1
    76da:	fc db 13                      	scnc.l	r1
    76dd:	43 12                         	sub	r1, r2

000076df <.LBE36>:
    76df:	ef 21                         	mov.l	r2, r1
    76e1:	fd 62 e1                      	shll	r14, r1
    76e4:	fd 60 73                      	shlr	r7, r3

000076e7 <.LM51>:
    76e7:	57 31                         	or	r3, r1
    76e9:	fd 60 72                      	shlr	r7, r2

000076ec <.LM52>:
    76ec:	3f 7d 07                      	rtsd	#28, r7-r13

000076ef <.LM53>:
    76ef:	75 44 18                      	mov.l	#24, r4
    76f2:	ef 4a                         	mov.l	r4, r10
    76f4:	38 76 fd                      	bra.w	746a <.LM6+0x16>

000076f7 <.LM54>:
    76f7:	ef 2b                         	mov.l	r2, r11
    76f9:	fd 60 ab                      	shlr	r10, r11

000076fc <.LM55>:
    76fc:	fd 62 7e                      	shll	r7, r14

000076ff <.LM56>:
    76ff:	fd 90 e4                      	shlr	#16, r14, r4
    7702:	ef bc                         	mov.l	r11, r12

00007704 <.LM57>:
    7704:	ef 1d                         	mov.l	r1, r13

00007706 <.LM58>:
    7706:	fc 27 4c                      	divu	r4, r12

00007709 <.LM59>:
    7709:	fd 60 ad                      	shlr	r10, r13
    770c:	fd 62 72                      	shll	r7, r2
    770f:	ef da                         	mov.l	r13, r10

00007711 <.LM60>:
    7711:	ff 3d 4c                      	mul 	r4, r12, r13
    7714:	43 db                         	sub	r13, r11

00007716 <.LM61>:
    7716:	57 2a                         	or	r2, r10

00007718 <.LM62>:
    7718:	ef ef                         	mov.l	r14, r15
    771a:	77 2f ff ff 00                	and	#0xffff, r15
    771f:	6d 0b                         	shll	#16, r11
    7721:	fd 90 ad                      	shlr	#16, r10, r13

00007724 <.LM63>:
    7724:	ef 15                         	mov.l	r1, r5

00007726 <.LM64>:
    7726:	4f fc                         	mul	r15, r12
    7728:	57 db                         	or	r13, r11

0000772a <.LM65>:
    772a:	fd 62 75                      	shll	r7, r5

0000772d <.LM66>:
    772d:	47 bc                         	cmp	r11, r12
    772f:	25 0e                         	bleu.b	773d <.LM66+0x10>
    7731:	4b eb                         	add	r14, r11
    7733:	47 be                         	cmp	r11, r14
    7735:	24 08                         	bgtu.b	773d <.LM66+0x10>
    7737:	47 bc                         	cmp	r11, r12
    7739:	25 04                         	bleu.b	773d <.LM66+0x10>
    773b:	4b eb                         	add	r14, r11
    773d:	43 cb                         	sub	r12, r11
    773f:	ef bd                         	mov.l	r11, r13
    7741:	fc 27 4d                      	divu	r4, r13
    7744:	ff 32 4d                      	mul 	r4, r13, r2
    7747:	43 2b                         	sub	r2, r11
    7749:	fd d0 b2                      	shll	#16, r11, r2
    774c:	77 2a ff ff 00                	and	#0xffff, r10
    7751:	ff 3c fd                      	mul 	r15, r13, r12
    7754:	57 a2                         	or	r10, r2
    7756:	47 2c                         	cmp	r2, r12
    7758:	25 0e                         	bleu.b	7766 <.LLST55+0x18>
    775a:	4b e2                         	add	r14, r2
    775c:	47 2e                         	cmp	r2, r14
    775e:	24 08                         	bgtu.b	7766 <.LLST55+0x18>
    7760:	47 2c                         	cmp	r2, r12
    7762:	25 04                         	bleu.b	7766 <.LLST55+0x18>
    7764:	4b e2                         	add	r14, r2
    7766:	43 c2                         	sub	r12, r2
    7768:	38 2e fe                      	bra.w	7596 <.LM30>

0000776b <.LBB37>:
    776b:	ff 03 3a                      	sub	r3, r10, r3
    776e:	ff 02 4b                      	sub	r4, r11, r2
    7771:	47 3a                         	cmp	r3, r10
    7773:	fc db a3                      	scnc.l	r10
    7776:	43 a2                         	sub	r10, r2
    7778:	ff 02 25                      	sub	r2, r5, r2
    777b:	38 5a ff                      	bra.w	76d5 <.LBB36>

0000777e <.LBE37>:
    777e:	66 87                         	mov.l	#8, r7
    7780:	ef 7e                         	mov.l	r7, r14
    7782:	38 93 fd                      	bra.w	7515 <.LLST42+0x12>
    7785:	75 47 18                      	mov.l	#24, r7
    7788:	ef 7e                         	mov.l	r7, r14
    778a:	38 8b fd                      	bra.w	7515 <.LLST42+0x12>

0000778d <.LM69>:
    778d:	75 47 18                      	mov.l	#24, r7
    7790:	ef 7a                         	mov.l	r7, r10
    7792:	38 e0 fd                      	bra.w	7572 <.Ldebug_line0+0xe>
    7795:	66 87                         	mov.l	#8, r7
    7797:	ef 7a                         	mov.l	r7, r10
    7799:	38 d9 fd                      	bra.w	7572 <.Ldebug_line0+0xe>

0000779c <.LM70>:
    779c:	47 5f                         	cmp	r5, r15
    779e:	24 05                         	bgtu.b	77a3 <.LM70+0x7>
    77a0:	38 e3 fe                      	bra.w	7683 <.LM43+0x3a>
    77a3:	60 2b                         	sub	#2, r11
    77a5:	4b 45                         	add	r4, r5
    77a7:	38 de fe                      	bra.w	7685 <.LM43+0x3c>
    77aa:	47 ab                         	cmp	r10, r11
    77ac:	24 05                         	bgtu.b	77b1 <.LLST56+0x3>
    77ae:	38 ab fe                      	bra.w	7659 <.LM43+0x10>
    77b1:	60 2c                         	sub	#2, r12
    77b3:	4b 4a                         	add	r4, r10
    77b5:	38 a6 fe                      	bra.w	765b <.LM43+0x12>

000077b8 <.LM71>:
    77b8:	4b ef                         	add	r14, r15
    77ba:	38 0c fd                      	bra.w	74c6 <.LLST40+0xd>

000077bd <.LM72>:
    77bd:	ef 13                         	mov.l	r1, r3

000077bf <.LM73>:
    77bf:	ef 31                         	mov.l	r3, r1
    77c1:	ef f2                         	mov.l	r15, r2
    77c3:	38 88 fd                      	bra.w	754b <.LM24>

000077c6 <.LM74>:
    77c6:	47 a1                         	cmp	r10, r1
    77c8:	23 a3                         	bnc.b	776b <.LBB37>
    77ca:	ef a3                         	mov.l	r10, r3
    77cc:	66 02                         	mov.l	#0, r2
    77ce:	38 07 ff                      	bra.w	76d5 <.LBB36>

000077d1 <.LFE1>:
    77d1:	0f                            	bra.s	77d8 <.Letext0>
    77d2:	03                            	nop
    77d3:	03                            	nop
    77d4:	03                            	nop
    77d5:	03                            	nop
    77d6:	03                            	nop
    77d7:	03                            	nop
