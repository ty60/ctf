
powerpc-elf.x:     file format elf32-powerpc


Disassembly of section .text:

00001400 <_start>:
    1400:	3c 20 00 01 	lis     r1,1
    1404:	60 21 16 d0 	ori     r1,r1,5840
    1408:	38 21 ff f0 	addi    r1,r1,-16
    140c:	48 00 01 6d 	bl      1578 <_startmain>

00001410 <__exit>:
    1410:	38 00 00 01 	li      r0,1
    1414:	44 00 00 02 	sc      
    1418:	48 00 00 34 	b       144c <_check_err>

0000141c <__read>:
    141c:	38 00 00 03 	li      r0,3
    1420:	44 00 00 02 	sc      
    1424:	48 00 00 28 	b       144c <_check_err>

00001428 <__write>:
    1428:	38 00 00 04 	li      r0,4
    142c:	44 00 00 02 	sc      
    1430:	48 00 00 1c 	b       144c <_check_err>

00001434 <__open>:
    1434:	38 00 00 05 	li      r0,5
    1438:	44 00 00 02 	sc      
    143c:	48 00 00 10 	b       144c <_check_err>

00001440 <__close>:
    1440:	38 00 00 06 	li      r0,6
    1444:	44 00 00 02 	sc      
    1448:	48 00 00 04 	b       144c <_check_err>

0000144c <_check_err>:
    144c:	41 83 00 08 	bso-    1454 <_err>
    1450:	4e 80 00 20 	blr

00001454 <_err>:
    1454:	38 60 ff ff 	li      r3,-1
    1458:	4e 80 00 20 	blr

0000145c <_exit>:
    145c:	94 21 ff f0 	stwu    r1,-16(r1)
    1460:	7c 08 02 a6 	mflr    r0
    1464:	90 01 00 14 	stw     r0,20(r1)
    1468:	4b ff ff a9 	bl      1410 <__exit>

0000146c <read>:
    146c:	94 21 ff f0 	stwu    r1,-16(r1)
    1470:	7c 08 02 a6 	mflr    r0
    1474:	90 01 00 14 	stw     r0,20(r1)
    1478:	4b ff ff a5 	bl      141c <__read>
    147c:	80 01 00 14 	lwz     r0,20(r1)
    1480:	7c 08 03 a6 	mtlr    r0
    1484:	38 21 00 10 	addi    r1,r1,16
    1488:	4e 80 00 20 	blr

0000148c <write>:
    148c:	94 21 ff f0 	stwu    r1,-16(r1)
    1490:	7c 08 02 a6 	mflr    r0
    1494:	90 01 00 14 	stw     r0,20(r1)
    1498:	4b ff ff 91 	bl      1428 <__write>
    149c:	80 01 00 14 	lwz     r0,20(r1)
    14a0:	7c 08 03 a6 	mtlr    r0
    14a4:	38 21 00 10 	addi    r1,r1,16
    14a8:	4e 80 00 20 	blr

000014ac <open>:
    14ac:	94 21 ff f0 	stwu    r1,-16(r1)
    14b0:	7c 08 02 a6 	mflr    r0
    14b4:	90 01 00 14 	stw     r0,20(r1)
    14b8:	4b ff ff 7d 	bl      1434 <__open>
    14bc:	80 01 00 14 	lwz     r0,20(r1)
    14c0:	7c 08 03 a6 	mtlr    r0
    14c4:	38 21 00 10 	addi    r1,r1,16
    14c8:	4e 80 00 20 	blr

000014cc <close>:
    14cc:	94 21 ff f0 	stwu    r1,-16(r1)
    14d0:	7c 08 02 a6 	mflr    r0
    14d4:	90 01 00 14 	stw     r0,20(r1)
    14d8:	4b ff ff 69 	bl      1440 <__close>
    14dc:	80 01 00 14 	lwz     r0,20(r1)
    14e0:	7c 08 03 a6 	mtlr    r0
    14e4:	38 21 00 10 	addi    r1,r1,16
    14e8:	4e 80 00 20 	blr

000014ec <fstat>:
    14ec:	94 21 ff f0 	stwu    r1,-16(r1)
    14f0:	7c 08 02 a6 	mflr    r0
    14f4:	90 01 00 14 	stw     r0,20(r1)
    14f8:	7c 83 23 78 	mr      r3,r4
    14fc:	38 80 00 00 	li      r4,0
    1500:	38 a0 00 3c 	li      r5,60
    1504:	48 00 00 fd 	bl      1600 <memset>
    1508:	38 60 00 00 	li      r3,0
    150c:	80 01 00 14 	lwz     r0,20(r1)
    1510:	7c 08 03 a6 	mtlr    r0
    1514:	38 21 00 10 	addi    r1,r1,16
    1518:	4e 80 00 20 	blr

0000151c <lseek>:
    151c:	7c 83 23 78 	mr      r3,r4
    1520:	4e 80 00 20 	blr

00001524 <sbrk>:
    1524:	3d 40 00 01 	lis     r10,1
    1528:	81 2a cc a8 	lwz     r9,-13144(r10)
    152c:	7c 69 1a 14 	add     r3,r9,r3
    1530:	90 6a cc a8 	stw     r3,-13144(r10)
    1534:	7d 23 4b 78 	mr      r3,r9
    1538:	4e 80 00 20 	blr

0000153c <isatty>:
    153c:	38 60 00 01 	li      r3,1
    1540:	4e 80 00 20 	blr

00001544 <main>:
    1544:	94 21 ff f0 	stwu    r1,-16(r1)
    1548:	7c 08 02 a6 	mflr    r0
    154c:	90 01 00 14 	stw     r0,20(r1)
    1550:	3c 60 00 01 	lis     r3,1
    1554:	38 63 be 48 	addi    r3,r3,-16824
    1558:	3d 20 00 01 	lis     r9,1
    155c:	80 89 cc ac 	lwz     r4,-13140(r9)
    1560:	3c a0 00 01 	lis     r5,1
    1564:	38 a5 be 74 	addi    r5,r5,-16780
    1568:	4c c6 31 82 	crclr   4*cr1+eq
    156c:	48 00 02 51 	bl      17bc <printf>
    1570:	38 60 00 00 	li      r3,0
    1574:	48 00 00 39 	bl      15ac <exit>

00001578 <_startmain>:
    1578:	94 21 ff f0 	stwu    r1,-16(r1)
    157c:	7c 08 02 a6 	mflr    r0
    1580:	90 01 00 14 	stw     r0,20(r1)
    1584:	3d 20 00 01 	lis     r9,1
    1588:	39 29 d2 88 	addi    r9,r9,-11640
    158c:	7d 23 4b 78 	mr      r3,r9
    1590:	38 80 00 00 	li      r4,0
    1594:	3c a0 00 01 	lis     r5,1
    1598:	38 a5 12 d0 	addi    r5,r5,4816
    159c:	7c a9 28 50 	subf    r5,r9,r5
    15a0:	48 00 00 61 	bl      1600 <memset>
    15a4:	4b ff ff a1 	bl      1544 <main>
    15a8:	00 01 37 10 	.long 0x13710

000015ac <exit>:
    15ac:	94 21 ff f0 	stwu    r1,-16(r1)
    15b0:	7c 08 02 a6 	mflr    r0
    15b4:	42 9f 00 05 	bcl-    20,4*cr7+so,15b8 <exit+0xc>
    15b8:	38 80 00 00 	li      r4,0
    15bc:	93 c1 00 08 	stw     r30,8(r1)
    15c0:	7f c8 02 a6 	mflr    r30
    15c4:	90 01 00 14 	stw     r0,20(r1)
    15c8:	93 e1 00 0c 	stw     r31,12(r1)
    15cc:	7c 7f 1b 78 	mr      r31,r3
    15d0:	80 1e ff f0 	lwz     r0,-16(r30)
    15d4:	7f c0 f2 14 	add     r30,r0,r30
    15d8:	48 00 25 cd 	bl      3ba4 <__call_exitprocs>
    15dc:	81 3e 80 00 	lwz     r9,-32768(r30)
    15e0:	80 69 00 00 	lwz     r3,0(r9)
    15e4:	81 23 00 3c 	lwz     r9,60(r3)
    15e8:	2f 89 00 00 	cmpwi   cr7,r9,0
    15ec:	41 9e 00 0c 	beq-    cr7,15f8 <exit+0x4c>
    15f0:	7d 29 03 a6 	mtctr   r9
    15f4:	4e 80 04 21 	bctrl
    15f8:	7f e3 fb 78 	mr      r3,r31
    15fc:	4b ff fe 61 	bl      145c <_exit>

00001600 <memset>:
    1600:	70 69 00 03 	andi.   r9,r3,3
    1604:	7c 08 02 a6 	mflr    r0
    1608:	94 21 ff f0 	stwu    r1,-16(r1)
    160c:	90 01 00 14 	stw     r0,20(r1)
    1610:	93 c1 00 08 	stw     r30,8(r1)
    1614:	41 82 01 14 	beq-    1728 <memset+0x128>
    1618:	2f 85 00 00 	cmpwi   cr7,r5,0
    161c:	7c a9 03 a6 	mtctr   r5
    1620:	54 88 06 3e 	clrlwi  r8,r4,24
    1624:	38 a5 ff ff 	addi    r5,r5,-1
    1628:	7c 69 1b 78 	mr      r9,r3
    162c:	40 be 00 10 	bne+    cr7,163c <memset+0x3c>
    1630:	48 00 00 e4 	b       1714 <memset+0x114>
    1634:	42 40 00 e0 	bdz-    1714 <memset+0x114>
    1638:	7d 45 53 78 	mr      r5,r10
    163c:	99 09 00 00 	stb     r8,0(r9)
    1640:	39 29 00 01 	addi    r9,r9,1
    1644:	71 2a 00 03 	andi.   r10,r9,3
    1648:	39 45 ff ff 	addi    r10,r5,-1
    164c:	40 82 ff e8 	bne+    1634 <memset+0x34>
    1650:	2b 85 00 03 	cmplwi  cr7,r5,3
    1654:	40 9d 00 98 	ble-    cr7,16ec <memset+0xec>
    1658:	54 8a 06 3e 	clrlwi  r10,r4,24
    165c:	2b 85 00 0f 	cmplwi  cr7,r5,15
    1660:	55 48 40 2e 	rlwinm  r8,r10,8,0,23
    1664:	38 e5 ff f0 	addi    r7,r5,-16
    1668:	7d 0a 53 78 	or      r10,r8,r10
    166c:	54 e7 e1 3e 	rlwinm  r7,r7,28,4,31
    1670:	55 48 80 1e 	rlwinm  r8,r10,16,0,15
    1674:	38 e7 00 01 	addi    r7,r7,1
    1678:	7d 08 53 78 	or      r8,r8,r10
    167c:	7c e9 03 a6 	mtctr   r7
    1680:	7d 2a 4b 78 	mr      r10,r9
    1684:	40 9d 00 38 	ble-    cr7,16bc <memset+0xbc>
    1688:	91 0a 00 00 	stw     r8,0(r10)
    168c:	91 0a 00 04 	stw     r8,4(r10)
    1690:	91 0a 00 08 	stw     r8,8(r10)
    1694:	91 0a 00 0c 	stw     r8,12(r10)
    1698:	39 4a 00 10 	addi    r10,r10,16
    169c:	42 00 ff ec 	bdnz+   1688 <memset+0x88>
    16a0:	39 45 ff f0 	addi    r10,r5,-16
    16a4:	54 a5 07 3e 	clrlwi  r5,r5,28
    16a8:	2b 85 00 03 	cmplwi  cr7,r5,3
    16ac:	55 4a 00 36 	rlwinm  r10,r10,0,0,27
    16b0:	39 4a 00 10 	addi    r10,r10,16
    16b4:	7d 29 52 14 	add     r9,r9,r10
    16b8:	40 9d 00 34 	ble-    cr7,16ec <memset+0xec>
    16bc:	38 e5 ff fc 	addi    r7,r5,-4
    16c0:	39 49 ff fc 	addi    r10,r9,-4
    16c4:	54 e7 f0 be 	rlwinm  r7,r7,30,2,31
    16c8:	38 e7 00 01 	addi    r7,r7,1
    16cc:	7c e9 03 a6 	mtctr   r7
    16d0:	95 0a 00 04 	stwu    r8,4(r10)
    16d4:	42 00 ff fc 	bdnz+   16d0 <memset+0xd0>
    16d8:	39 45 ff fc 	addi    r10,r5,-4
    16dc:	54 a5 07 be 	clrlwi  r5,r5,30
    16e0:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    16e4:	39 4a 00 04 	addi    r10,r10,4
    16e8:	7d 29 52 14 	add     r9,r9,r10
    16ec:	2f 85 00 00 	cmpwi   cr7,r5,0
    16f0:	38 a5 ff ff 	addi    r5,r5,-1
    16f4:	39 49 ff ff 	addi    r10,r9,-1
    16f8:	7d 29 2a 14 	add     r9,r9,r5
    16fc:	7d 2a 48 50 	subf    r9,r10,r9
    1700:	54 84 06 3e 	clrlwi  r4,r4,24
    1704:	7d 29 03 a6 	mtctr   r9
    1708:	41 9e 00 0c 	beq-    cr7,1714 <memset+0x114>
    170c:	9c 8a 00 01 	stbu    r4,1(r10)
    1710:	42 00 ff fc 	bdnz+   170c <memset+0x10c>
    1714:	80 01 00 14 	lwz     r0,20(r1)
    1718:	83 c1 00 08 	lwz     r30,8(r1)
    171c:	7c 08 03 a6 	mtlr    r0
    1720:	38 21 00 10 	addi    r1,r1,16
    1724:	4e 80 00 20 	blr
    1728:	7c 69 1b 78 	mr      r9,r3
    172c:	4b ff ff 24 	b       1650 <memset+0x50>

00001730 <_printf_r>:
    1730:	7c 08 02 a6 	mflr    r0
    1734:	94 21 ff 90 	stwu    r1,-112(r1)
    1738:	90 a1 00 18 	stw     r5,24(r1)
    173c:	90 01 00 74 	stw     r0,116(r1)
    1740:	90 c1 00 1c 	stw     r6,28(r1)
    1744:	90 e1 00 20 	stw     r7,32(r1)
    1748:	91 01 00 24 	stw     r8,36(r1)
    174c:	91 21 00 28 	stw     r9,40(r1)
    1750:	91 41 00 2c 	stw     r10,44(r1)
    1754:	40 86 00 24 	bne-    cr1,1778 <_printf_r+0x48>
    1758:	d8 21 00 30 	stfd    f1,48(r1)
    175c:	d8 41 00 38 	stfd    f2,56(r1)
    1760:	d8 61 00 40 	stfd    f3,64(r1)
    1764:	d8 81 00 48 	stfd    f4,72(r1)
    1768:	d8 a1 00 50 	stfd    f5,80(r1)
    176c:	d8 c1 00 58 	stfd    f6,88(r1)
    1770:	d8 e1 00 60 	stfd    f7,96(r1)
    1774:	d9 01 00 68 	stfd    f8,104(r1)
    1778:	39 20 00 02 	li      r9,2
    177c:	7c 85 23 78 	mr      r5,r4
    1780:	99 21 00 08 	stb     r9,8(r1)
    1784:	39 20 00 00 	li      r9,0
    1788:	99 21 00 09 	stb     r9,9(r1)
    178c:	39 21 00 78 	addi    r9,r1,120
    1790:	80 83 00 08 	lwz     r4,8(r3)
    1794:	38 c1 00 08 	addi    r6,r1,8
    1798:	91 21 00 0c 	stw     r9,12(r1)
    179c:	39 21 00 10 	addi    r9,r1,16
    17a0:	91 21 00 10 	stw     r9,16(r1)
    17a4:	48 00 00 c9 	bl      186c <_vfprintf_r>
    17a8:	80 01 00 74 	lwz     r0,116(r1)
    17ac:	38 21 00 70 	addi    r1,r1,112
    17b0:	7c 08 03 a6 	mtlr    r0
    17b4:	4e 80 00 20 	blr
    17b8:	00 01 35 04 	.long 0x13504

000017bc <printf>:
    17bc:	94 21 ff 80 	stwu    r1,-128(r1)
    17c0:	7c 08 02 a6 	mflr    r0
    17c4:	42 9f 00 05 	bcl-    20,4*cr7+so,17c8 <printf+0xc>
    17c8:	93 c1 00 78 	stw     r30,120(r1)
    17cc:	7f c8 02 a6 	mflr    r30
    17d0:	90 01 00 84 	stw     r0,132(r1)
    17d4:	90 81 00 1c 	stw     r4,28(r1)
    17d8:	80 1e ff f0 	lwz     r0,-16(r30)
    17dc:	90 a1 00 20 	stw     r5,32(r1)
    17e0:	7f c0 f2 14 	add     r30,r0,r30
    17e4:	90 c1 00 24 	stw     r6,36(r1)
    17e8:	90 e1 00 28 	stw     r7,40(r1)
    17ec:	91 01 00 2c 	stw     r8,44(r1)
    17f0:	91 21 00 30 	stw     r9,48(r1)
    17f4:	91 41 00 34 	stw     r10,52(r1)
    17f8:	40 86 00 24 	bne-    cr1,181c <printf+0x60>
    17fc:	d8 21 00 38 	stfd    f1,56(r1)
    1800:	d8 41 00 40 	stfd    f2,64(r1)
    1804:	d8 61 00 48 	stfd    f3,72(r1)
    1808:	d8 81 00 50 	stfd    f4,80(r1)
    180c:	d8 a1 00 58 	stfd    f5,88(r1)
    1810:	d8 c1 00 60 	stfd    f6,96(r1)
    1814:	d8 e1 00 68 	stfd    f7,104(r1)
    1818:	d9 01 00 70 	stfd    f8,112(r1)
    181c:	81 3e 80 00 	lwz     r9,-32768(r30)
    1820:	7c 65 1b 78 	mr      r5,r3
    1824:	38 c1 00 08 	addi    r6,r1,8
    1828:	80 69 00 00 	lwz     r3,0(r9)
    182c:	39 20 00 01 	li      r9,1
    1830:	99 21 00 08 	stb     r9,8(r1)
    1834:	39 20 00 00 	li      r9,0
    1838:	99 21 00 09 	stb     r9,9(r1)
    183c:	39 21 00 88 	addi    r9,r1,136
    1840:	80 83 00 08 	lwz     r4,8(r3)
    1844:	91 21 00 0c 	stw     r9,12(r1)
    1848:	39 21 00 18 	addi    r9,r1,24
    184c:	91 21 00 10 	stw     r9,16(r1)
    1850:	48 00 00 1d 	bl      186c <_vfprintf_r>
    1854:	80 01 00 84 	lwz     r0,132(r1)
    1858:	83 c1 00 78 	lwz     r30,120(r1)
    185c:	7c 08 03 a6 	mtlr    r0
    1860:	38 21 00 80 	addi    r1,r1,128
    1864:	4e 80 00 20 	blr
    1868:	00 01 34 58 	.long 0x13458

0000186c <_vfprintf_r>:
    186c:	94 21 fa a0 	stwu    r1,-1376(r1)
    1870:	7c 08 02 a6 	mflr    r0
    1874:	42 9f 00 05 	bcl-    20,4*cr7+so,1878 <_vfprintf_r+0xc>
    1878:	7d 80 00 26 	mfcr    r12
    187c:	93 c1 05 50 	stw     r30,1360(r1)
    1880:	7f c8 02 a6 	mflr    r30
    1884:	90 01 05 64 	stw     r0,1380(r1)
    1888:	92 01 05 18 	stw     r16,1304(r1)
    188c:	7c d0 33 78 	mr      r16,r6
    1890:	80 1e ff f0 	lwz     r0,-16(r30)
    1894:	93 81 05 48 	stw     r28,1352(r1)
    1898:	7c 7c 1b 78 	mr      r28,r3
    189c:	7f c0 f2 14 	add     r30,r0,r30
    18a0:	93 a1 05 4c 	stw     r29,1356(r1)
    18a4:	93 e1 05 54 	stw     r31,1364(r1)
    18a8:	7c bd 2b 78 	mr      r29,r5
    18ac:	91 81 05 0c 	stw     r12,1292(r1)
    18b0:	7c 9f 23 78 	mr      r31,r4
    18b4:	db e1 05 58 	stfd    f31,1368(r1)
    18b8:	91 c1 05 10 	stw     r14,1296(r1)
    18bc:	91 e1 05 14 	stw     r15,1300(r1)
    18c0:	92 21 05 1c 	stw     r17,1308(r1)
    18c4:	92 41 05 20 	stw     r18,1312(r1)
    18c8:	92 61 05 24 	stw     r19,1316(r1)
    18cc:	92 81 05 28 	stw     r20,1320(r1)
    18d0:	92 a1 05 2c 	stw     r21,1324(r1)
    18d4:	92 c1 05 30 	stw     r22,1328(r1)
    18d8:	92 e1 05 34 	stw     r23,1332(r1)
    18dc:	93 01 05 38 	stw     r24,1336(r1)
    18e0:	93 21 05 3c 	stw     r25,1340(r1)
    18e4:	93 41 05 40 	stw     r26,1344(r1)
    18e8:	93 61 05 44 	stw     r27,1348(r1)
    18ec:	48 00 47 f9 	bl      60e4 <_localeconv_r>
    18f0:	80 63 00 00 	lwz     r3,0(r3)
    18f4:	39 20 00 00 	li      r9,0
    18f8:	39 40 00 00 	li      r10,0
    18fc:	91 21 04 f0 	stw     r9,1264(r1)
    1900:	90 61 04 e0 	stw     r3,1248(r1)
    1904:	91 41 04 f4 	stw     r10,1268(r1)
    1908:	48 00 6a d9 	bl      83e0 <strlen>
    190c:	2f 9c 00 00 	cmpwi   cr7,r28,0
    1910:	90 61 04 e8 	stw     r3,1256(r1)
    1914:	41 9e 00 10 	beq-    cr7,1924 <_vfprintf_r+0xb8>
    1918:	81 3c 00 38 	lwz     r9,56(r28)
    191c:	2f 89 00 00 	cmpwi   cr7,r9,0
    1920:	41 9e 06 54 	beq-    cr7,1f74 <_vfprintf_r+0x708>
    1924:	a9 3f 00 0c 	lha     r9,12(r31)
    1928:	55 2a 04 a4 	rlwinm  r10,r9,0,18,18
    192c:	7d 47 07 35 	extsh.  r7,r10
    1930:	40 82 00 18 	bne-    1948 <_vfprintf_r+0xdc>
    1934:	81 5f 00 64 	lwz     r10,100(r31)
    1938:	61 29 20 00 	ori     r9,r9,8192
    193c:	b1 3f 00 0c 	sth     r9,12(r31)
    1940:	55 4a 04 e2 	rlwinm  r10,r10,0,19,17
    1944:	91 5f 00 64 	stw     r10,100(r31)
    1948:	55 2a 07 38 	rlwinm  r10,r9,0,28,28
    194c:	7d 48 07 35 	extsh.  r8,r10
    1950:	41 82 04 9c 	beq-    1dec <_vfprintf_r+0x580>
    1954:	81 5f 00 10 	lwz     r10,16(r31)
    1958:	2f 8a 00 00 	cmpwi   cr7,r10,0
    195c:	41 9e 04 90 	beq-    cr7,1dec <_vfprintf_r+0x580>
    1960:	71 2a 00 1a 	andi.   r10,r9,26
    1964:	2f 8a 00 0a 	cmpwi   cr7,r10,10
    1968:	41 9e 04 a8 	beq-    cr7,1e10 <_vfprintf_r+0x5a4>
    196c:	39 41 04 97 	addi    r10,r1,1175
    1970:	3b 61 04 98 	addi    r27,r1,1176
    1974:	91 41 04 c8 	stw     r10,1224(r1)
    1978:	39 40 00 00 	li      r10,0
    197c:	91 41 04 f8 	stw     r10,1272(r1)
    1980:	39 20 00 00 	li      r9,0
    1984:	81 41 04 c8 	lwz     r10,1224(r1)
    1988:	3b 41 00 08 	addi    r26,r1,8
    198c:	38 e0 00 00 	li      r7,0
    1990:	93 41 04 98 	stw     r26,1176(r1)
    1994:	7d 4a d8 50 	subf    r10,r10,r27
    1998:	91 21 04 a0 	stw     r9,1184(r1)
    199c:	91 21 04 9c 	stw     r9,1180(r1)
    19a0:	7f 4e d3 78 	mr      r14,r26
    19a4:	90 e1 04 dc 	stw     r7,1244(r1)
    19a8:	7e 14 83 78 	mr      r20,r16
    19ac:	91 21 04 ec 	stw     r9,1260(r1)
    19b0:	91 21 04 d0 	stw     r9,1232(r1)
    19b4:	91 41 04 fc 	stw     r10,1276(r1)
    19b8:	89 3d 00 00 	lbz     r9,0(r29)
    19bc:	7f b9 eb 78 	mr      r25,r29
    19c0:	2f 89 00 00 	cmpwi   cr7,r9,0
    19c4:	41 9e 00 68 	beq-    cr7,1a2c <_vfprintf_r+0x1c0>
    19c8:	2f 89 00 25 	cmpwi   cr7,r9,37
    19cc:	40 be 00 10 	bne+    cr7,19dc <_vfprintf_r+0x170>
    19d0:	48 00 00 5c 	b       1a2c <_vfprintf_r+0x1c0>
    19d4:	2f 89 00 25 	cmpwi   cr7,r9,37
    19d8:	41 9e 00 10 	beq-    cr7,19e8 <_vfprintf_r+0x17c>
    19dc:	8d 39 00 01 	lbzu    r9,1(r25)
    19e0:	2f 89 00 00 	cmpwi   cr7,r9,0
    19e4:	40 9e ff f0 	bne+    cr7,19d4 <_vfprintf_r+0x168>
    19e8:	7f 1d c8 50 	subf    r24,r29,r25
    19ec:	2f 98 00 00 	cmpwi   cr7,r24,0
    19f0:	41 9e 00 3c 	beq-    cr7,1a2c <_vfprintf_r+0x1c0>
    19f4:	81 21 04 9c 	lwz     r9,1180(r1)
    19f8:	81 41 04 a0 	lwz     r10,1184(r1)
    19fc:	39 29 00 01 	addi    r9,r9,1
    1a00:	93 ae 00 00 	stw     r29,0(r14)
    1a04:	2f 89 00 07 	cmpwi   cr7,r9,7
    1a08:	7d 4a c2 14 	add     r10,r10,r24
    1a0c:	93 0e 00 04 	stw     r24,4(r14)
    1a10:	91 41 04 a0 	stw     r10,1184(r1)
    1a14:	91 21 04 9c 	stw     r9,1180(r1)
    1a18:	41 9d 05 3c 	bgt-    cr7,1f54 <_vfprintf_r+0x6e8>
    1a1c:	39 ce 00 08 	addi    r14,r14,8
    1a20:	81 21 04 d0 	lwz     r9,1232(r1)
    1a24:	7d 29 c2 14 	add     r9,r9,r24
    1a28:	91 21 04 d0 	stw     r9,1232(r1)
    1a2c:	89 39 00 00 	lbz     r9,0(r25)
    1a30:	2f 89 00 00 	cmpwi   cr7,r9,0
    1a34:	41 9e 04 84 	beq-    cr7,1eb8 <_vfprintf_r+0x64c>
    1a38:	39 20 00 00 	li      r9,0
    1a3c:	39 40 00 00 	li      r10,0
    1a40:	3a 60 ff ff 	li      r19,-1
    1a44:	99 21 04 c2 	stb     r9,1218(r1)
    1a48:	91 41 04 cc 	stw     r10,1228(r1)
    1a4c:	3b b9 00 01 	addi    r29,r25,1
    1a50:	8b 19 00 01 	lbz     r24,1(r25)
    1a54:	39 00 00 2b 	li      r8,43
    1a58:	3b 20 00 00 	li      r25,0
    1a5c:	38 e0 00 20 	li      r7,32
    1a60:	7e 66 9b 78 	mr      r6,r19
    1a64:	3b bd 00 01 	addi    r29,r29,1
    1a68:	39 38 ff e0 	addi    r9,r24,-32
    1a6c:	2b 89 00 58 	cmplwi  cr7,r9,88
    1a70:	40 9d 03 1c 	ble-    cr7,1d8c <_vfprintf_r+0x520>
    1a74:	2f 98 00 00 	cmpwi   cr7,r24,0
    1a78:	41 9e 04 40 	beq-    cr7,1eb8 <_vfprintf_r+0x64c>
    1a7c:	39 20 00 00 	li      r9,0
    1a80:	9b 01 04 70 	stb     r24,1136(r1)
    1a84:	99 21 04 c2 	stb     r9,1218(r1)
    1a88:	39 00 00 00 	li      r8,0
    1a8c:	39 20 00 00 	li      r9,0
    1a90:	91 01 04 d4 	stw     r8,1236(r1)
    1a94:	3a a0 00 01 	li      r21,1
    1a98:	91 21 04 e4 	stw     r9,1252(r1)
    1a9c:	3a e1 04 70 	addi    r23,r1,1136
    1aa0:	3a c0 00 01 	li      r22,1
    1aa4:	57 28 ff fe 	rlwinm  r8,r25,31,31,31
    1aa8:	2e 08 00 00 	cmpwi   cr4,r8,0
    1aac:	41 92 00 08 	beq-    cr4,1ab4 <_vfprintf_r+0x248>
    1ab0:	3a d6 00 02 	addi    r22,r22,2
    1ab4:	73 29 00 84 	andi.   r9,r25,132
    1ab8:	91 21 04 d8 	stw     r9,1240(r1)
    1abc:	40 82 09 98 	bne-    2454 <_vfprintf_r+0xbe8>
    1ac0:	81 41 04 cc 	lwz     r10,1228(r1)
    1ac4:	7e 56 50 51 	subf.   r18,r22,r10
    1ac8:	40 81 09 8c 	ble-    2454 <_vfprintf_r+0xbe8>
    1acc:	2f 92 00 10 	cmpwi   cr7,r18,16
    1ad0:	81 41 04 a0 	lwz     r10,1184(r1)
    1ad4:	81 21 04 9c 	lwz     r9,1180(r1)
    1ad8:	39 e0 00 10 	li      r15,16
    1adc:	82 7e 80 24 	lwz     r19,-32732(r30)
    1ae0:	41 bd 00 18 	bgt+    cr7,1af8 <_vfprintf_r+0x28c>
    1ae4:	48 00 00 64 	b       1b48 <_vfprintf_r+0x2dc>
    1ae8:	3a 52 ff f0 	addi    r18,r18,-16
    1aec:	39 ce 00 08 	addi    r14,r14,8
    1af0:	2f 92 00 10 	cmpwi   cr7,r18,16
    1af4:	40 9d 00 54 	ble-    cr7,1b48 <_vfprintf_r+0x2dc>
    1af8:	39 29 00 01 	addi    r9,r9,1
    1afc:	39 4a 00 10 	addi    r10,r10,16
    1b00:	2f 89 00 07 	cmpwi   cr7,r9,7
    1b04:	92 6e 00 00 	stw     r19,0(r14)
    1b08:	91 ee 00 04 	stw     r15,4(r14)
    1b0c:	91 41 04 a0 	stw     r10,1184(r1)
    1b10:	91 21 04 9c 	stw     r9,1180(r1)
    1b14:	40 9d ff d4 	ble+    cr7,1ae8 <_vfprintf_r+0x27c>
    1b18:	7f 83 e3 78 	mr      r3,r28
    1b1c:	7f e4 fb 78 	mr      r4,r31
    1b20:	7f 65 db 78 	mr      r5,r27
    1b24:	48 00 69 79 	bl      849c <__sprint_r>
    1b28:	2f 83 00 00 	cmpwi   cr7,r3,0
    1b2c:	40 9e 03 a8 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    1b30:	3a 52 ff f0 	addi    r18,r18,-16
    1b34:	81 41 04 a0 	lwz     r10,1184(r1)
    1b38:	2f 92 00 10 	cmpwi   cr7,r18,16
    1b3c:	81 21 04 9c 	lwz     r9,1180(r1)
    1b40:	7f 4e d3 78 	mr      r14,r26
    1b44:	41 9d ff b4 	bgt+    cr7,1af8 <_vfprintf_r+0x28c>
    1b48:	39 29 00 01 	addi    r9,r9,1
    1b4c:	7d 4a 92 14 	add     r10,r10,r18
    1b50:	2f 89 00 07 	cmpwi   cr7,r9,7
    1b54:	92 6e 00 00 	stw     r19,0(r14)
    1b58:	92 4e 00 04 	stw     r18,4(r14)
    1b5c:	91 41 04 a0 	stw     r10,1184(r1)
    1b60:	91 21 04 9c 	stw     r9,1180(r1)
    1b64:	41 9d 0e b0 	bgt-    cr7,2a14 <_vfprintf_r+0x11a8>
    1b68:	89 21 04 c2 	lbz     r9,1218(r1)
    1b6c:	39 ce 00 08 	addi    r14,r14,8
    1b70:	2f 89 00 00 	cmpwi   cr7,r9,0
    1b74:	40 9e 08 f0 	bne-    cr7,2464 <_vfprintf_r+0xbf8>
    1b78:	41 92 00 34 	beq-    cr4,1bac <_vfprintf_r+0x340>
    1b7c:	81 21 04 9c 	lwz     r9,1180(r1)
    1b80:	39 01 04 c0 	addi    r8,r1,1216
    1b84:	91 0e 00 00 	stw     r8,0(r14)
    1b88:	39 4a 00 02 	addi    r10,r10,2
    1b8c:	39 29 00 01 	addi    r9,r9,1
    1b90:	39 00 00 02 	li      r8,2
    1b94:	2f 89 00 07 	cmpwi   cr7,r9,7
    1b98:	91 0e 00 04 	stw     r8,4(r14)
    1b9c:	91 41 04 a0 	stw     r10,1184(r1)
    1ba0:	91 21 04 9c 	stw     r9,1180(r1)
    1ba4:	41 9d 0c c4 	bgt-    cr7,2868 <_vfprintf_r+0xffc>
    1ba8:	39 ce 00 08 	addi    r14,r14,8
    1bac:	80 e1 04 d8 	lwz     r7,1240(r1)
    1bb0:	2f 87 00 80 	cmpwi   cr7,r7,128
    1bb4:	41 9e 0b 4c 	beq-    cr7,2700 <_vfprintf_r+0xe94>
    1bb8:	80 e1 04 d4 	lwz     r7,1236(r1)
    1bbc:	7e 55 38 51 	subf.   r18,r21,r7
    1bc0:	40 81 00 a0 	ble-    1c60 <_vfprintf_r+0x3f4>
    1bc4:	2f 92 00 10 	cmpwi   cr7,r18,16
    1bc8:	81 21 04 9c 	lwz     r9,1180(r1)
    1bcc:	81 fe 80 2c 	lwz     r15,-32724(r30)
    1bd0:	3a 60 00 10 	li      r19,16
    1bd4:	41 bd 00 18 	bgt+    cr7,1bec <_vfprintf_r+0x380>
    1bd8:	48 00 00 64 	b       1c3c <_vfprintf_r+0x3d0>
    1bdc:	3a 52 ff f0 	addi    r18,r18,-16
    1be0:	39 ce 00 08 	addi    r14,r14,8
    1be4:	2f 92 00 10 	cmpwi   cr7,r18,16
    1be8:	40 9d 00 54 	ble-    cr7,1c3c <_vfprintf_r+0x3d0>
    1bec:	39 29 00 01 	addi    r9,r9,1
    1bf0:	39 4a 00 10 	addi    r10,r10,16
    1bf4:	2f 89 00 07 	cmpwi   cr7,r9,7
    1bf8:	91 ee 00 00 	stw     r15,0(r14)
    1bfc:	92 6e 00 04 	stw     r19,4(r14)
    1c00:	91 41 04 a0 	stw     r10,1184(r1)
    1c04:	91 21 04 9c 	stw     r9,1180(r1)
    1c08:	40 9d ff d4 	ble+    cr7,1bdc <_vfprintf_r+0x370>
    1c0c:	7f 83 e3 78 	mr      r3,r28
    1c10:	7f e4 fb 78 	mr      r4,r31
    1c14:	7f 65 db 78 	mr      r5,r27
    1c18:	48 00 68 85 	bl      849c <__sprint_r>
    1c1c:	2f 83 00 00 	cmpwi   cr7,r3,0
    1c20:	40 9e 02 b4 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    1c24:	3a 52 ff f0 	addi    r18,r18,-16
    1c28:	81 41 04 a0 	lwz     r10,1184(r1)
    1c2c:	2f 92 00 10 	cmpwi   cr7,r18,16
    1c30:	81 21 04 9c 	lwz     r9,1180(r1)
    1c34:	7f 4e d3 78 	mr      r14,r26
    1c38:	41 9d ff b4 	bgt+    cr7,1bec <_vfprintf_r+0x380>
    1c3c:	39 29 00 01 	addi    r9,r9,1
    1c40:	7d 4a 92 14 	add     r10,r10,r18
    1c44:	2f 89 00 07 	cmpwi   cr7,r9,7
    1c48:	91 ee 00 00 	stw     r15,0(r14)
    1c4c:	92 4e 00 04 	stw     r18,4(r14)
    1c50:	91 41 04 a0 	stw     r10,1184(r1)
    1c54:	91 21 04 9c 	stw     r9,1180(r1)
    1c58:	41 9d 0b c8 	bgt-    cr7,2820 <_vfprintf_r+0xfb4>
    1c5c:	39 ce 00 08 	addi    r14,r14,8
    1c60:	73 28 01 00 	andi.   r8,r25,256
    1c64:	40 82 09 8c 	bne-    25f0 <_vfprintf_r+0xd84>
    1c68:	81 21 04 9c 	lwz     r9,1180(r1)
    1c6c:	7d 4a aa 14 	add     r10,r10,r21
    1c70:	92 ee 00 00 	stw     r23,0(r14)
    1c74:	39 29 00 01 	addi    r9,r9,1
    1c78:	92 ae 00 04 	stw     r21,4(r14)
    1c7c:	2f 89 00 07 	cmpwi   cr7,r9,7
    1c80:	91 41 04 a0 	stw     r10,1184(r1)
    1c84:	91 21 04 9c 	stw     r9,1180(r1)
    1c88:	41 9d 08 e0 	bgt-    cr7,2568 <_vfprintf_r+0xcfc>
    1c8c:	39 ce 00 08 	addi    r14,r14,8
    1c90:	73 28 00 04 	andi.   r8,r25,4
    1c94:	41 82 00 c4 	beq-    1d58 <_vfprintf_r+0x4ec>
    1c98:	81 21 04 cc 	lwz     r9,1228(r1)
    1c9c:	7f 36 48 51 	subf.   r25,r22,r9
    1ca0:	40 81 00 b8 	ble-    1d58 <_vfprintf_r+0x4ec>
    1ca4:	2f 99 00 10 	cmpwi   cr7,r25,16
    1ca8:	81 21 04 9c 	lwz     r9,1180(r1)
    1cac:	82 7e 80 24 	lwz     r19,-32732(r30)
    1cb0:	3b 00 00 10 	li      r24,16
    1cb4:	41 bd 00 18 	bgt+    cr7,1ccc <_vfprintf_r+0x460>
    1cb8:	48 00 00 64 	b       1d1c <_vfprintf_r+0x4b0>
    1cbc:	3b 39 ff f0 	addi    r25,r25,-16
    1cc0:	39 ce 00 08 	addi    r14,r14,8
    1cc4:	2f 99 00 10 	cmpwi   cr7,r25,16
    1cc8:	40 9d 00 54 	ble-    cr7,1d1c <_vfprintf_r+0x4b0>
    1ccc:	39 29 00 01 	addi    r9,r9,1
    1cd0:	39 4a 00 10 	addi    r10,r10,16
    1cd4:	2f 89 00 07 	cmpwi   cr7,r9,7
    1cd8:	92 6e 00 00 	stw     r19,0(r14)
    1cdc:	93 0e 00 04 	stw     r24,4(r14)
    1ce0:	91 41 04 a0 	stw     r10,1184(r1)
    1ce4:	91 21 04 9c 	stw     r9,1180(r1)
    1ce8:	40 9d ff d4 	ble+    cr7,1cbc <_vfprintf_r+0x450>
    1cec:	7f 83 e3 78 	mr      r3,r28
    1cf0:	7f e4 fb 78 	mr      r4,r31
    1cf4:	7f 65 db 78 	mr      r5,r27
    1cf8:	48 00 67 a5 	bl      849c <__sprint_r>
    1cfc:	2f 83 00 00 	cmpwi   cr7,r3,0
    1d00:	40 9e 01 d4 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    1d04:	3b 39 ff f0 	addi    r25,r25,-16
    1d08:	81 41 04 a0 	lwz     r10,1184(r1)
    1d0c:	2f 99 00 10 	cmpwi   cr7,r25,16
    1d10:	81 21 04 9c 	lwz     r9,1180(r1)
    1d14:	7f 4e d3 78 	mr      r14,r26
    1d18:	41 9d ff b4 	bgt+    cr7,1ccc <_vfprintf_r+0x460>
    1d1c:	39 29 00 01 	addi    r9,r9,1
    1d20:	7d 59 52 14 	add     r10,r25,r10
    1d24:	2f 89 00 07 	cmpwi   cr7,r9,7
    1d28:	92 6e 00 00 	stw     r19,0(r14)
    1d2c:	93 2e 00 04 	stw     r25,4(r14)
    1d30:	91 41 04 a0 	stw     r10,1184(r1)
    1d34:	91 21 04 9c 	stw     r9,1180(r1)
    1d38:	40 bd 00 20 	ble+    cr7,1d58 <_vfprintf_r+0x4ec>
    1d3c:	7f 83 e3 78 	mr      r3,r28
    1d40:	7f e4 fb 78 	mr      r4,r31
    1d44:	7f 65 db 78 	mr      r5,r27
    1d48:	48 00 67 55 	bl      849c <__sprint_r>
    1d4c:	2f 83 00 00 	cmpwi   cr7,r3,0
    1d50:	40 9e 01 84 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    1d54:	81 41 04 a0 	lwz     r10,1184(r1)
    1d58:	81 21 04 cc 	lwz     r9,1228(r1)
    1d5c:	7f 96 48 00 	cmpw    cr7,r22,r9
    1d60:	40 9c 00 08 	bge-    cr7,1d68 <_vfprintf_r+0x4fc>
    1d64:	7d 36 4b 78 	mr      r22,r9
    1d68:	2f 8a 00 00 	cmpwi   cr7,r10,0
    1d6c:	81 41 04 d0 	lwz     r10,1232(r1)
    1d70:	7d 4a b2 14 	add     r10,r10,r22
    1d74:	91 41 04 d0 	stw     r10,1232(r1)
    1d78:	40 9e 0a 8c 	bne-    cr7,2804 <_vfprintf_r+0xf98>
    1d7c:	39 20 00 00 	li      r9,0
    1d80:	7f 4e d3 78 	mr      r14,r26
    1d84:	91 21 04 9c 	stw     r9,1180(r1)
    1d88:	4b ff fc 30 	b       19b8 <_vfprintf_r+0x14c>
    1d8c:	81 5e 80 1c 	lwz     r10,-32740(r30)
    1d90:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    1d94:	7d 2a 48 2e 	lwzx    r9,r10,r9
    1d98:	7d 29 52 14 	add     r9,r9,r10
    1d9c:	7d 29 03 a6 	mtctr   r9
    1da0:	4e 80 04 20 	bctr
    1da4:	89 34 00 00 	lbz     r9,0(r20)
    1da8:	2b 89 00 08 	cmplwi  cr7,r9,8
    1dac:	40 9c 11 28 	bge-    cr7,2ed4 <_vfprintf_r+0x1668>
    1db0:	55 25 10 3a 	rlwinm  r5,r9,2,0,29
    1db4:	81 54 00 08 	lwz     r10,8(r20)
    1db8:	39 29 00 01 	addi    r9,r9,1
    1dbc:	99 34 00 00 	stb     r9,0(r20)
    1dc0:	7d 4a 2a 14 	add     r10,r10,r5
    1dc4:	81 4a 00 00 	lwz     r10,0(r10)
    1dc8:	2f 8a 00 00 	cmpwi   cr7,r10,0
    1dcc:	91 41 04 cc 	stw     r10,1228(r1)
    1dd0:	40 bc 04 20 	bge+    cr7,21f0 <_vfprintf_r+0x984>
    1dd4:	81 21 04 cc 	lwz     r9,1228(r1)
    1dd8:	7d 29 00 d0 	neg     r9,r9
    1ddc:	91 21 04 cc 	stw     r9,1228(r1)
    1de0:	63 39 00 04 	ori     r25,r25,4
    1de4:	8b 1d 00 00 	lbz     r24,0(r29)
    1de8:	4b ff fc 7c 	b       1a64 <_vfprintf_r+0x1f8>
    1dec:	7f 83 e3 78 	mr      r3,r28
    1df0:	7f e4 fb 78 	mr      r4,r31
    1df4:	48 00 1c 09 	bl      39fc <__swsetup_r>
    1df8:	2f 83 00 00 	cmpwi   cr7,r3,0
    1dfc:	40 9e 00 e8 	bne-    cr7,1ee4 <_vfprintf_r+0x678>
    1e00:	a9 3f 00 0c 	lha     r9,12(r31)
    1e04:	71 2a 00 1a 	andi.   r10,r9,26
    1e08:	2f 8a 00 0a 	cmpwi   cr7,r10,10
    1e0c:	40 9e fb 60 	bne+    cr7,196c <_vfprintf_r+0x100>
    1e10:	a1 5f 00 0e 	lhz     r10,14(r31)
    1e14:	7d 48 07 34 	extsh   r8,r10
    1e18:	2f 88 00 00 	cmpwi   cr7,r8,0
    1e1c:	41 9c fb 50 	blt+    cr7,196c <_vfprintf_r+0x100>
    1e20:	83 7f 00 64 	lwz     r27,100(r31)
    1e24:	55 29 07 fa 	rlwinm  r9,r9,0,31,29
    1e28:	80 1f 00 1c 	lwz     r0,28(r31)
    1e2c:	38 e0 04 00 	li      r7,1024
    1e30:	81 7f 00 24 	lwz     r11,36(r31)
    1e34:	39 01 00 08 	addi    r8,r1,8
    1e38:	b1 21 04 14 	sth     r9,1044(r1)
    1e3c:	7f 83 e3 78 	mr      r3,r28
    1e40:	39 20 00 00 	li      r9,0
    1e44:	38 81 04 08 	addi    r4,r1,1032
    1e48:	7f a5 eb 78 	mr      r5,r29
    1e4c:	7e 06 83 78 	mr      r6,r16
    1e50:	91 21 04 20 	stw     r9,1056(r1)
    1e54:	93 61 04 6c 	stw     r27,1132(r1)
    1e58:	b1 41 04 16 	sth     r10,1046(r1)
    1e5c:	90 01 04 24 	stw     r0,1060(r1)
    1e60:	91 61 04 2c 	stw     r11,1068(r1)
    1e64:	91 01 04 08 	stw     r8,1032(r1)
    1e68:	91 01 04 18 	stw     r8,1048(r1)
    1e6c:	90 e1 04 10 	stw     r7,1040(r1)
    1e70:	90 e1 04 1c 	stw     r7,1052(r1)
    1e74:	4b ff f9 f9 	bl      186c <_vfprintf_r>
    1e78:	7c 69 1b 79 	mr.     r9,r3
    1e7c:	91 21 04 d0 	stw     r9,1232(r1)
    1e80:	41 80 00 18 	blt-    1e98 <_vfprintf_r+0x62c>
    1e84:	7f 83 e3 78 	mr      r3,r28
    1e88:	38 81 04 08 	addi    r4,r1,1032
    1e8c:	48 00 35 9d 	bl      5428 <_fflush_r>
    1e90:	2f 83 00 00 	cmpwi   cr7,r3,0
    1e94:	40 9e 1a 84 	bne-    cr7,3918 <_vfprintf_r+0x20ac>
    1e98:	a1 21 04 14 	lhz     r9,1044(r1)
    1e9c:	55 29 06 72 	rlwinm  r9,r9,0,25,25
    1ea0:	7d 27 07 35 	extsh.  r7,r9
    1ea4:	41 82 00 48 	beq-    1eec <_vfprintf_r+0x680>
    1ea8:	a1 3f 00 0c 	lhz     r9,12(r31)
    1eac:	61 29 00 40 	ori     r9,r9,64
    1eb0:	b1 3f 00 0c 	sth     r9,12(r31)
    1eb4:	48 00 00 38 	b       1eec <_vfprintf_r+0x680>
    1eb8:	81 21 04 a0 	lwz     r9,1184(r1)
    1ebc:	2f 89 00 00 	cmpwi   cr7,r9,0
    1ec0:	41 be 00 14 	beq+    cr7,1ed4 <_vfprintf_r+0x668>
    1ec4:	7f 83 e3 78 	mr      r3,r28
    1ec8:	7f e4 fb 78 	mr      r4,r31
    1ecc:	38 a1 04 98 	addi    r5,r1,1176
    1ed0:	48 00 65 cd 	bl      849c <__sprint_r>
    1ed4:	a1 3f 00 0c 	lhz     r9,12(r31)
    1ed8:	55 29 06 72 	rlwinm  r9,r9,0,25,25
    1edc:	7d 27 07 35 	extsh.  r7,r9
    1ee0:	41 82 00 0c 	beq-    1eec <_vfprintf_r+0x680>
    1ee4:	39 20 ff ff 	li      r9,-1
    1ee8:	91 21 04 d0 	stw     r9,1232(r1)
    1eec:	80 01 05 64 	lwz     r0,1380(r1)
    1ef0:	81 81 05 0c 	lwz     r12,1292(r1)
    1ef4:	7c 08 03 a6 	mtlr    r0
    1ef8:	80 61 04 d0 	lwz     r3,1232(r1)
    1efc:	81 c1 05 10 	lwz     r14,1296(r1)
    1f00:	7d 83 81 20 	mtcrf   56,r12
    1f04:	81 e1 05 14 	lwz     r15,1300(r1)
    1f08:	82 01 05 18 	lwz     r16,1304(r1)
    1f0c:	82 21 05 1c 	lwz     r17,1308(r1)
    1f10:	82 41 05 20 	lwz     r18,1312(r1)
    1f14:	82 61 05 24 	lwz     r19,1316(r1)
    1f18:	82 81 05 28 	lwz     r20,1320(r1)
    1f1c:	82 a1 05 2c 	lwz     r21,1324(r1)
    1f20:	82 c1 05 30 	lwz     r22,1328(r1)
    1f24:	82 e1 05 34 	lwz     r23,1332(r1)
    1f28:	83 01 05 38 	lwz     r24,1336(r1)
    1f2c:	83 21 05 3c 	lwz     r25,1340(r1)
    1f30:	83 41 05 40 	lwz     r26,1344(r1)
    1f34:	83 61 05 44 	lwz     r27,1348(r1)
    1f38:	83 81 05 48 	lwz     r28,1352(r1)
    1f3c:	83 a1 05 4c 	lwz     r29,1356(r1)
    1f40:	83 c1 05 50 	lwz     r30,1360(r1)
    1f44:	83 e1 05 54 	lwz     r31,1364(r1)
    1f48:	cb e1 05 58 	lfd     f31,1368(r1)
    1f4c:	38 21 05 60 	addi    r1,r1,1376
    1f50:	4e 80 00 20 	blr
    1f54:	7f 83 e3 78 	mr      r3,r28
    1f58:	7f e4 fb 78 	mr      r4,r31
    1f5c:	7f 65 db 78 	mr      r5,r27
    1f60:	48 00 65 3d 	bl      849c <__sprint_r>
    1f64:	2f 83 00 00 	cmpwi   cr7,r3,0
    1f68:	40 be ff 6c 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    1f6c:	7f 4e d3 78 	mr      r14,r26
    1f70:	4b ff fa b0 	b       1a20 <_vfprintf_r+0x1b4>
    1f74:	7f 83 e3 78 	mr      r3,r28
    1f78:	48 00 37 31 	bl      56a8 <__sinit>
    1f7c:	4b ff f9 a8 	b       1924 <_vfprintf_r+0xb8>
    1f80:	7c d3 33 78 	mr      r19,r6
    1f84:	63 39 00 10 	ori     r25,r25,16
    1f88:	73 2a 00 20 	andi.   r10,r25,32
    1f8c:	41 82 0b 94 	beq-    2b20 <_vfprintf_r+0x12b4>
    1f90:	89 34 00 00 	lbz     r9,0(r20)
    1f94:	2b 89 00 06 	cmplwi  cr7,r9,6
    1f98:	55 2a 07 fe 	clrlwi  r10,r9,31
    1f9c:	7d 29 52 14 	add     r9,r9,r10
    1fa0:	55 29 06 3e 	clrlwi  r9,r9,24
    1fa4:	99 34 00 00 	stb     r9,0(r20)
    1fa8:	41 9d 0e dc 	bgt-    cr7,2e84 <_vfprintf_r+0x1618>
    1fac:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    1fb0:	81 54 00 08 	lwz     r10,8(r20)
    1fb4:	39 29 00 02 	addi    r9,r9,2
    1fb8:	99 34 00 00 	stb     r9,0(r20)
    1fbc:	7d 4a 42 14 	add     r10,r10,r8
    1fc0:	82 0a 00 00 	lwz     r16,0(r10)
    1fc4:	82 2a 00 04 	lwz     r17,4(r10)
    1fc8:	2f 90 00 00 	cmpwi   cr7,r16,0
    1fcc:	39 20 00 01 	li      r9,1
    1fd0:	40 9c 00 14 	bge-    cr7,1fe4 <_vfprintf_r+0x778>
    1fd4:	39 40 00 2d 	li      r10,45
    1fd8:	22 31 00 00 	subfic  r17,r17,0
    1fdc:	7e 10 01 90 	subfze  r16,r16
    1fe0:	99 41 04 c2 	stb     r10,1218(r1)
    1fe4:	2f 93 00 00 	cmpwi   cr7,r19,0
    1fe8:	41 9c 00 08 	blt-    cr7,1ff0 <_vfprintf_r+0x784>
    1fec:	57 39 06 6e 	rlwinm  r25,r25,0,25,23
    1ff0:	7e 07 8b 79 	or.     r7,r16,r17
    1ff4:	40 82 05 98 	bne-    258c <_vfprintf_r+0xd20>
    1ff8:	40 9e 05 94 	bne-    cr7,258c <_vfprintf_r+0xd20>
    1ffc:	2f 89 00 00 	cmpwi   cr7,r9,0
    2000:	40 9e 08 8c 	bne-    cr7,288c <_vfprintf_r+0x1020>
    2004:	73 29 00 01 	andi.   r9,r25,1
    2008:	41 82 08 84 	beq-    288c <_vfprintf_r+0x1020>
    200c:	39 20 00 30 	li      r9,48
    2010:	82 a1 04 fc 	lwz     r21,1276(r1)
    2014:	99 21 04 97 	stb     r9,1175(r1)
    2018:	3a e1 04 97 	addi    r23,r1,1175
    201c:	7f 95 98 00 	cmpw    cr7,r21,r19
    2020:	7e b6 ab 78 	mr      r22,r21
    2024:	40 9c 00 08 	bge-    cr7,202c <_vfprintf_r+0x7c0>
    2028:	7e 76 9b 78 	mr      r22,r19
    202c:	39 40 00 00 	li      r10,0
    2030:	89 21 04 c2 	lbz     r9,1218(r1)
    2034:	92 61 04 d4 	stw     r19,1236(r1)
    2038:	91 41 04 e4 	stw     r10,1252(r1)
    203c:	2f 89 00 00 	cmpwi   cr7,r9,0
    2040:	41 be fa 64 	beq-    cr7,1aa4 <_vfprintf_r+0x238>
    2044:	3a d6 00 01 	addi    r22,r22,1
    2048:	4b ff fa 5c 	b       1aa4 <_vfprintf_r+0x238>
    204c:	73 29 00 08 	andi.   r9,r25,8
    2050:	89 34 00 01 	lbz     r9,1(r20)
    2054:	7c d3 33 78 	mr      r19,r6
    2058:	2b 89 00 08 	cmplwi  cr7,r9,8
    205c:	41 82 0e 88 	beq-    2ee4 <_vfprintf_r+0x1678>
    2060:	40 9c 11 a4 	bge-    cr7,3204 <_vfprintf_r+0x1998>
    2064:	39 09 00 04 	addi    r8,r9,4
    2068:	81 54 00 08 	lwz     r10,8(r20)
    206c:	39 29 00 01 	addi    r9,r9,1
    2070:	55 08 18 38 	rlwinm  r8,r8,3,0,28
    2074:	99 34 00 01 	stb     r9,1(r20)
    2078:	7d 4a 42 14 	add     r10,r10,r8
    207c:	cb ea 00 00 	lfd     f31,0(r10)
    2080:	db e1 04 f0 	stfd    f31,1264(r1)
    2084:	48 00 0e 84 	b       2f08 <_vfprintf_r+0x169c>
    2088:	63 39 00 08 	ori     r25,r25,8
    208c:	8b 1d 00 00 	lbz     r24,0(r29)
    2090:	4b ff f9 d4 	b       1a64 <_vfprintf_r+0x1f8>
    2094:	7c d3 33 78 	mr      r19,r6
    2098:	63 39 00 10 	ori     r25,r25,16
    209c:	73 27 00 20 	andi.   r7,r25,32
    20a0:	41 82 0a 10 	beq-    2ab0 <_vfprintf_r+0x1244>
    20a4:	89 34 00 00 	lbz     r9,0(r20)
    20a8:	2b 89 00 06 	cmplwi  cr7,r9,6
    20ac:	55 2a 07 fe 	clrlwi  r10,r9,31
    20b0:	7d 29 52 14 	add     r9,r9,r10
    20b4:	55 29 06 3e 	clrlwi  r9,r9,24
    20b8:	99 34 00 00 	stb     r9,0(r20)
    20bc:	41 9d 0d 5c 	bgt-    cr7,2e18 <_vfprintf_r+0x15ac>
    20c0:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    20c4:	81 54 00 08 	lwz     r10,8(r20)
    20c8:	39 29 00 02 	addi    r9,r9,2
    20cc:	99 34 00 00 	stb     r9,0(r20)
    20d0:	7d 4a 42 14 	add     r10,r10,r8
    20d4:	82 0a 00 00 	lwz     r16,0(r10)
    20d8:	39 20 00 00 	li      r9,0
    20dc:	82 2a 00 04 	lwz     r17,4(r10)
    20e0:	39 40 00 00 	li      r10,0
    20e4:	99 41 04 c2 	stb     r10,1218(r1)
    20e8:	4b ff fe fc 	b       1fe4 <_vfprintf_r+0x778>
    20ec:	7c d3 33 78 	mr      r19,r6
    20f0:	63 39 00 10 	ori     r25,r25,16
    20f4:	73 28 00 20 	andi.   r8,r25,32
    20f8:	41 82 09 f0 	beq-    2ae8 <_vfprintf_r+0x127c>
    20fc:	89 34 00 00 	lbz     r9,0(r20)
    2100:	2b 89 00 06 	cmplwi  cr7,r9,6
    2104:	55 2a 07 fe 	clrlwi  r10,r9,31
    2108:	7d 29 52 14 	add     r9,r9,r10
    210c:	55 29 06 3e 	clrlwi  r9,r9,24
    2110:	99 34 00 00 	stb     r9,0(r20)
    2114:	41 9d 0c b4 	bgt-    cr7,2dc8 <_vfprintf_r+0x155c>
    2118:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    211c:	81 54 00 08 	lwz     r10,8(r20)
    2120:	39 29 00 02 	addi    r9,r9,2
    2124:	99 34 00 00 	stb     r9,0(r20)
    2128:	7d 4a 42 14 	add     r10,r10,r8
    212c:	82 0a 00 00 	lwz     r16,0(r10)
    2130:	39 20 00 01 	li      r9,1
    2134:	82 2a 00 04 	lwz     r17,4(r10)
    2138:	4b ff ff a8 	b       20e0 <_vfprintf_r+0x874>
    213c:	73 29 00 20 	andi.   r9,r25,32
    2140:	81 1e 80 10 	lwz     r8,-32752(r30)
    2144:	7c d3 33 78 	mr      r19,r6
    2148:	91 01 04 ec 	stw     r8,1260(r1)
    214c:	41 82 01 b8 	beq-    2304 <_vfprintf_r+0xa98>
    2150:	89 34 00 00 	lbz     r9,0(r20)
    2154:	2b 89 00 06 	cmplwi  cr7,r9,6
    2158:	55 2a 07 fe 	clrlwi  r10,r9,31
    215c:	7d 29 52 14 	add     r9,r9,r10
    2160:	55 29 06 3e 	clrlwi  r9,r9,24
    2164:	99 34 00 00 	stb     r9,0(r20)
    2168:	41 9d 0d f0 	bgt-    cr7,2f58 <_vfprintf_r+0x16ec>
    216c:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2170:	81 54 00 08 	lwz     r10,8(r20)
    2174:	39 29 00 02 	addi    r9,r9,2
    2178:	99 34 00 00 	stb     r9,0(r20)
    217c:	7d 4a 42 14 	add     r10,r10,r8
    2180:	82 0a 00 00 	lwz     r16,0(r10)
    2184:	82 2a 00 04 	lwz     r17,4(r10)
    2188:	73 28 00 01 	andi.   r8,r25,1
    218c:	39 20 00 02 	li      r9,2
    2190:	41 a2 ff 50 	beq-    20e0 <_vfprintf_r+0x874>
    2194:	7e 0a 8b 79 	or.     r10,r16,r17
    2198:	41 a2 ff 48 	beq-    20e0 <_vfprintf_r+0x874>
    219c:	39 40 00 30 	li      r10,48
    21a0:	9b 01 04 c1 	stb     r24,1217(r1)
    21a4:	99 41 04 c0 	stb     r10,1216(r1)
    21a8:	63 39 00 02 	ori     r25,r25,2
    21ac:	4b ff ff 34 	b       20e0 <_vfprintf_r+0x874>
    21b0:	89 34 00 00 	lbz     r9,0(r20)
    21b4:	2b 89 00 08 	cmplwi  cr7,r9,8
    21b8:	40 9c 0c ac 	bge-    cr7,2e64 <_vfprintf_r+0x15f8>
    21bc:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    21c0:	81 54 00 08 	lwz     r10,8(r20)
    21c4:	39 29 00 01 	addi    r9,r9,1
    21c8:	99 34 00 00 	stb     r9,0(r20)
    21cc:	7d 4a 42 14 	add     r10,r10,r8
    21d0:	81 2a 00 00 	lwz     r9,0(r10)
    21d4:	99 21 04 70 	stb     r9,1136(r1)
    21d8:	39 20 00 00 	li      r9,0
    21dc:	99 21 04 c2 	stb     r9,1218(r1)
    21e0:	4b ff f8 a8 	b       1a88 <_vfprintf_r+0x21c>
    21e4:	63 39 00 40 	ori     r25,r25,64
    21e8:	8b 1d 00 00 	lbz     r24,0(r29)
    21ec:	4b ff f8 78 	b       1a64 <_vfprintf_r+0x1f8>
    21f0:	8b 1d 00 00 	lbz     r24,0(r29)
    21f4:	4b ff f8 70 	b       1a64 <_vfprintf_r+0x1f8>
    21f8:	99 01 04 c2 	stb     r8,1218(r1)
    21fc:	8b 1d 00 00 	lbz     r24,0(r29)
    2200:	4b ff f8 64 	b       1a64 <_vfprintf_r+0x1f8>
    2204:	63 39 00 80 	ori     r25,r25,128
    2208:	8b 1d 00 00 	lbz     r24,0(r29)
    220c:	4b ff f8 58 	b       1a64 <_vfprintf_r+0x1f8>
    2210:	39 40 00 00 	li      r10,0
    2214:	39 38 ff d0 	addi    r9,r24,-48
    2218:	8b 1d 00 00 	lbz     r24,0(r29)
    221c:	1d 4a 00 0a 	mulli   r10,r10,10
    2220:	3b bd 00 01 	addi    r29,r29,1
    2224:	7d 4a 4a 14 	add     r10,r10,r9
    2228:	39 38 ff d0 	addi    r9,r24,-48
    222c:	2b 89 00 09 	cmplwi  cr7,r9,9
    2230:	40 9d ff e8 	ble+    cr7,2218 <_vfprintf_r+0x9ac>
    2234:	91 41 04 cc 	stw     r10,1228(r1)
    2238:	4b ff f8 30 	b       1a68 <_vfprintf_r+0x1fc>
    223c:	89 21 04 c2 	lbz     r9,1218(r1)
    2240:	2f 89 00 00 	cmpwi   cr7,r9,0
    2244:	40 be ff ac 	bne-    cr7,21f0 <_vfprintf_r+0x984>
    2248:	98 e1 04 c2 	stb     r7,1218(r1)
    224c:	8b 1d 00 00 	lbz     r24,0(r29)
    2250:	4b ff f8 14 	b       1a64 <_vfprintf_r+0x1f8>
    2254:	63 39 00 01 	ori     r25,r25,1
    2258:	8b 1d 00 00 	lbz     r24,0(r29)
    225c:	4b ff f8 08 	b       1a64 <_vfprintf_r+0x1f8>
    2260:	63 39 00 20 	ori     r25,r25,32
    2264:	8b 1d 00 00 	lbz     r24,0(r29)
    2268:	4b ff f7 fc 	b       1a64 <_vfprintf_r+0x1f8>
    226c:	89 34 00 00 	lbz     r9,0(r20)
    2270:	39 40 00 00 	li      r10,0
    2274:	7c d3 33 78 	mr      r19,r6
    2278:	99 41 04 c2 	stb     r10,1218(r1)
    227c:	2b 89 00 08 	cmplwi  cr7,r9,8
    2280:	40 9c 0b 38 	bge-    cr7,2db8 <_vfprintf_r+0x154c>
    2284:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2288:	81 54 00 08 	lwz     r10,8(r20)
    228c:	39 29 00 01 	addi    r9,r9,1
    2290:	99 34 00 00 	stb     r9,0(r20)
    2294:	7d 4a 42 14 	add     r10,r10,r8
    2298:	82 ea 00 00 	lwz     r23,0(r10)
    229c:	2f 97 00 00 	cmpwi   cr7,r23,0
    22a0:	41 9e 12 70 	beq-    cr7,3510 <_vfprintf_r+0x1ca4>
    22a4:	2f 93 00 00 	cmpwi   cr7,r19,0
    22a8:	7e e3 bb 78 	mr      r3,r23
    22ac:	41 9c 11 bc 	blt-    cr7,3468 <_vfprintf_r+0x1bfc>
    22b0:	38 80 00 00 	li      r4,0
    22b4:	7e 65 9b 78 	mr      r5,r19
    22b8:	48 00 49 49 	bl      6c00 <memchr>
    22bc:	2c 03 00 00 	cmpwi   r3,0
    22c0:	41 82 14 60 	beq-    3720 <_vfprintf_r+0x1eb4>
    22c4:	7e b7 18 50 	subf    r21,r23,r3
    22c8:	7f 95 98 00 	cmpw    cr7,r21,r19
    22cc:	40 9d 0e 14 	ble-    cr7,30e0 <_vfprintf_r+0x1874>
    22d0:	39 00 00 00 	li      r8,0
    22d4:	39 40 00 00 	li      r10,0
    22d8:	7e 76 9b 78 	mr      r22,r19
    22dc:	89 21 04 c2 	lbz     r9,1218(r1)
    22e0:	7e 75 9b 78 	mr      r21,r19
    22e4:	91 01 04 d4 	stw     r8,1236(r1)
    22e8:	91 41 04 e4 	stw     r10,1252(r1)
    22ec:	4b ff fd 50 	b       203c <_vfprintf_r+0x7d0>
    22f0:	73 29 00 20 	andi.   r9,r25,32
    22f4:	80 fe 80 14 	lwz     r7,-32748(r30)
    22f8:	7c d3 33 78 	mr      r19,r6
    22fc:	90 e1 04 ec 	stw     r7,1260(r1)
    2300:	40 a2 fe 50 	bne-    2150 <_vfprintf_r+0x8e4>
    2304:	73 2a 00 10 	andi.   r10,r25,16
    2308:	41 82 0b 28 	beq-    2e30 <_vfprintf_r+0x15c4>
    230c:	89 34 00 00 	lbz     r9,0(r20)
    2310:	2b 89 00 08 	cmplwi  cr7,r9,8
    2314:	40 9c 0e 88 	bge-    cr7,319c <_vfprintf_r+0x1930>
    2318:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    231c:	81 54 00 08 	lwz     r10,8(r20)
    2320:	39 29 00 01 	addi    r9,r9,1
    2324:	99 34 00 00 	stb     r9,0(r20)
    2328:	7d 4a 42 14 	add     r10,r10,r8
    232c:	82 2a 00 00 	lwz     r17,0(r10)
    2330:	3a 00 00 00 	li      r16,0
    2334:	4b ff fe 54 	b       2188 <_vfprintf_r+0x91c>
    2338:	73 2a 00 20 	andi.   r10,r25,32
    233c:	41 82 0a 14 	beq-    2d50 <_vfprintf_r+0x14e4>
    2340:	89 34 00 00 	lbz     r9,0(r20)
    2344:	2b 89 00 08 	cmplwi  cr7,r9,8
    2348:	40 9c 0e 20 	bge-    cr7,3168 <_vfprintf_r+0x18fc>
    234c:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2350:	81 54 00 08 	lwz     r10,8(r20)
    2354:	39 29 00 01 	addi    r9,r9,1
    2358:	99 34 00 00 	stb     r9,0(r20)
    235c:	7d 4a 42 14 	add     r10,r10,r8
    2360:	80 e1 04 d0 	lwz     r7,1232(r1)
    2364:	81 2a 00 00 	lwz     r9,0(r10)
    2368:	7c ea fe 70 	srawi   r10,r7,31
    236c:	90 e9 00 04 	stw     r7,4(r9)
    2370:	91 49 00 00 	stw     r10,0(r9)
    2374:	4b ff f6 44 	b       19b8 <_vfprintf_r+0x14c>
    2378:	89 34 00 00 	lbz     r9,0(r20)
    237c:	7c d3 33 78 	mr      r19,r6
    2380:	2b 89 00 08 	cmplwi  cr7,r9,8
    2384:	40 9c 0a f0 	bge-    cr7,2e74 <_vfprintf_r+0x1608>
    2388:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    238c:	81 54 00 08 	lwz     r10,8(r20)
    2390:	39 29 00 01 	addi    r9,r9,1
    2394:	99 34 00 00 	stb     r9,0(r20)
    2398:	7d 4a 42 14 	add     r10,r10,r8
    239c:	82 2a 00 00 	lwz     r17,0(r10)
    23a0:	39 20 00 30 	li      r9,48
    23a4:	81 5e 80 14 	lwz     r10,-32748(r30)
    23a8:	3a 00 00 00 	li      r16,0
    23ac:	99 21 04 c0 	stb     r9,1216(r1)
    23b0:	39 20 00 78 	li      r9,120
    23b4:	99 21 04 c1 	stb     r9,1217(r1)
    23b8:	63 39 00 02 	ori     r25,r25,2
    23bc:	91 41 04 ec 	stw     r10,1260(r1)
    23c0:	39 20 00 02 	li      r9,2
    23c4:	3b 00 00 78 	li      r24,120
    23c8:	4b ff fd 18 	b       20e0 <_vfprintf_r+0x874>
    23cc:	8b 1d 00 00 	lbz     r24,0(r29)
    23d0:	7f a9 eb 78 	mr      r9,r29
    23d4:	2f 98 00 6c 	cmpwi   cr7,r24,108
    23d8:	41 9e 0e d0 	beq-    cr7,32a8 <_vfprintf_r+0x1a3c>
    23dc:	63 39 00 10 	ori     r25,r25,16
    23e0:	4b ff f6 84 	b       1a64 <_vfprintf_r+0x1f8>
    23e4:	8b 1d 00 00 	lbz     r24,0(r29)
    23e8:	39 5d 00 01 	addi    r10,r29,1
    23ec:	2f 98 00 2a 	cmpwi   cr7,r24,42
    23f0:	41 9e 15 34 	beq-    cr7,3924 <_vfprintf_r+0x20b8>
    23f4:	39 38 ff d0 	addi    r9,r24,-48
    23f8:	7d 5d 53 78 	mr      r29,r10
    23fc:	2b 89 00 09 	cmplwi  cr7,r9,9
    2400:	38 c0 00 00 	li      r6,0
    2404:	3a 60 00 00 	li      r19,0
    2408:	41 bd f6 60 	bgt-    cr7,1a68 <_vfprintf_r+0x1fc>
    240c:	8b 0a 00 00 	lbz     r24,0(r10)
    2410:	1e 73 00 0a 	mulli   r19,r19,10
    2414:	39 4a 00 01 	addi    r10,r10,1
    2418:	7e 69 9a 14 	add     r19,r9,r19
    241c:	39 38 ff d0 	addi    r9,r24,-48
    2420:	2b 89 00 09 	cmplwi  cr7,r9,9
    2424:	40 9d ff e8 	ble+    cr7,240c <_vfprintf_r+0xba0>
    2428:	2f 93 00 00 	cmpwi   cr7,r19,0
    242c:	7e 66 9b 78 	mr      r6,r19
    2430:	41 9c 0d ec 	blt-    cr7,321c <_vfprintf_r+0x19b0>
    2434:	7d 5d 53 78 	mr      r29,r10
    2438:	4b ff f6 30 	b       1a68 <_vfprintf_r+0x1fc>
    243c:	7c d3 33 78 	mr      r19,r6
    2440:	4b ff fc b4 	b       20f4 <_vfprintf_r+0x888>
    2444:	7c d3 33 78 	mr      r19,r6
    2448:	4b ff fb 40 	b       1f88 <_vfprintf_r+0x71c>
    244c:	7c d3 33 78 	mr      r19,r6
    2450:	4b ff fc 4c 	b       209c <_vfprintf_r+0x830>
    2454:	81 41 04 a0 	lwz     r10,1184(r1)
    2458:	89 21 04 c2 	lbz     r9,1218(r1)
    245c:	2f 89 00 00 	cmpwi   cr7,r9,0
    2460:	41 be f7 18 	beq-    cr7,1b78 <_vfprintf_r+0x30c>
    2464:	81 21 04 9c 	lwz     r9,1180(r1)
    2468:	39 01 04 c2 	addi    r8,r1,1218
    246c:	91 0e 00 00 	stw     r8,0(r14)
    2470:	39 4a 00 01 	addi    r10,r10,1
    2474:	39 29 00 01 	addi    r9,r9,1
    2478:	39 00 00 01 	li      r8,1
    247c:	2f 89 00 07 	cmpwi   cr7,r9,7
    2480:	91 0e 00 04 	stw     r8,4(r14)
    2484:	91 41 04 a0 	stw     r10,1184(r1)
    2488:	91 21 04 9c 	stw     r9,1180(r1)
    248c:	41 9d 03 b8 	bgt-    cr7,2844 <_vfprintf_r+0xfd8>
    2490:	39 ce 00 08 	addi    r14,r14,8
    2494:	4b ff f6 e4 	b       1b78 <_vfprintf_r+0x30c>
    2498:	81 01 04 dc 	lwz     r8,1244(r1)
    249c:	2f 88 00 01 	cmpwi   cr7,r8,1
    24a0:	40 9d 03 0c 	ble-    cr7,27ac <_vfprintf_r+0xf40>
    24a4:	81 21 04 9c 	lwz     r9,1180(r1)
    24a8:	39 4a 00 01 	addi    r10,r10,1
    24ac:	39 00 00 01 	li      r8,1
    24b0:	92 ee 00 00 	stw     r23,0(r14)
    24b4:	39 29 00 01 	addi    r9,r9,1
    24b8:	91 0e 00 04 	stw     r8,4(r14)
    24bc:	2f 89 00 07 	cmpwi   cr7,r9,7
    24c0:	91 41 04 a0 	stw     r10,1184(r1)
    24c4:	91 21 04 9c 	stw     r9,1180(r1)
    24c8:	41 9d 07 f0 	bgt-    cr7,2cb8 <_vfprintf_r+0x144c>
    24cc:	39 ce 00 08 	addi    r14,r14,8
    24d0:	39 29 00 01 	addi    r9,r9,1
    24d4:	80 e1 04 e8 	lwz     r7,1256(r1)
    24d8:	2f 89 00 07 	cmpwi   cr7,r9,7
    24dc:	81 01 04 e0 	lwz     r8,1248(r1)
    24e0:	7d 4a 3a 14 	add     r10,r10,r7
    24e4:	90 ee 00 04 	stw     r7,4(r14)
    24e8:	91 0e 00 00 	stw     r8,0(r14)
    24ec:	91 41 04 a0 	stw     r10,1184(r1)
    24f0:	91 21 04 9c 	stw     r9,1180(r1)
    24f4:	41 9d 08 10 	bgt-    cr7,2d04 <_vfprintf_r+0x1498>
    24f8:	39 ce 00 08 	addi    r14,r14,8
    24fc:	81 1e 80 20 	lwz     r8,-32736(r30)
    2500:	c9 a1 04 f0 	lfd     f13,1264(r1)
    2504:	c0 08 00 00 	lfs     f0,0(r8)
    2508:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    250c:	41 9e 05 2c 	beq-    cr7,2a38 <_vfprintf_r+0x11cc>
    2510:	39 29 00 01 	addi    r9,r9,1
    2514:	80 e1 04 dc 	lwz     r7,1244(r1)
    2518:	2f 89 00 07 	cmpwi   cr7,r9,7
    251c:	3a f7 00 01 	addi    r23,r23,1
    2520:	39 07 ff ff 	addi    r8,r7,-1
    2524:	92 ee 00 00 	stw     r23,0(r14)
    2528:	7d 4a 42 14 	add     r10,r10,r8
    252c:	91 0e 00 04 	stw     r8,4(r14)
    2530:	91 41 04 a0 	stw     r10,1184(r1)
    2534:	91 21 04 9c 	stw     r9,1180(r1)
    2538:	41 9d 02 a4 	bgt-    cr7,27dc <_vfprintf_r+0xf70>
    253c:	39 ce 00 08 	addi    r14,r14,8
    2540:	39 29 00 01 	addi    r9,r9,1
    2544:	80 e1 04 f8 	lwz     r7,1272(r1)
    2548:	2f 89 00 07 	cmpwi   cr7,r9,7
    254c:	39 01 04 ac 	addi    r8,r1,1196
    2550:	7d 4a 3a 14 	add     r10,r10,r7
    2554:	91 0e 00 00 	stw     r8,0(r14)
    2558:	90 ee 00 04 	stw     r7,4(r14)
    255c:	91 41 04 a0 	stw     r10,1184(r1)
    2560:	91 21 04 9c 	stw     r9,1180(r1)
    2564:	40 9d f7 28 	ble+    cr7,1c8c <_vfprintf_r+0x420>
    2568:	7f 83 e3 78 	mr      r3,r28
    256c:	7f e4 fb 78 	mr      r4,r31
    2570:	7f 65 db 78 	mr      r5,r27
    2574:	48 00 5f 29 	bl      849c <__sprint_r>
    2578:	2f 83 00 00 	cmpwi   cr7,r3,0
    257c:	40 be f9 58 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2580:	7f 4e d3 78 	mr      r14,r26
    2584:	81 41 04 a0 	lwz     r10,1184(r1)
    2588:	4b ff f7 08 	b       1c90 <_vfprintf_r+0x424>
    258c:	2f 89 00 01 	cmpwi   cr7,r9,1
    2590:	41 9e 03 3c 	beq-    cr7,28cc <_vfprintf_r+0x1060>
    2594:	2f 89 00 02 	cmpwi   cr7,r9,2
    2598:	7f 77 db 78 	mr      r23,r27
    259c:	41 9e 02 fc 	beq-    cr7,2898 <_vfprintf_r+0x102c>
    25a0:	56 08 e8 04 	rlwinm  r8,r16,29,0,2
    25a4:	56 2a e8 fe 	rlwinm  r10,r17,29,3,31
    25a8:	56 07 e8 fe 	rlwinm  r7,r16,29,3,31
    25ac:	56 29 07 7e 	clrlwi  r9,r17,29
    25b0:	7d 11 53 78 	or      r17,r8,r10
    25b4:	39 29 00 30 	addi    r9,r9,48
    25b8:	7c e8 8b 79 	or.     r8,r7,r17
    25bc:	7c f0 3b 78 	mr      r16,r7
    25c0:	9d 37 ff ff 	stbu    r9,-1(r23)
    25c4:	40 82 ff dc 	bne+    25a0 <_vfprintf_r+0xd34>
    25c8:	73 2a 00 01 	andi.   r10,r25,1
    25cc:	7e ea bb 78 	mr      r10,r23
    25d0:	41 82 00 18 	beq-    25e8 <_vfprintf_r+0xd7c>
    25d4:	2f 89 00 30 	cmpwi   cr7,r9,48
    25d8:	41 9e 00 10 	beq-    cr7,25e8 <_vfprintf_r+0xd7c>
    25dc:	39 20 00 30 	li      r9,48
    25e0:	3a f7 ff ff 	addi    r23,r23,-1
    25e4:	99 2a ff ff 	stb     r9,-1(r10)
    25e8:	7e b7 d8 50 	subf    r21,r23,r27
    25ec:	4b ff fa 30 	b       201c <_vfprintf_r+0x7b0>
    25f0:	2f 98 00 65 	cmpwi   cr7,r24,101
    25f4:	40 bd fe a4 	ble-    cr7,2498 <_vfprintf_r+0xc2c>
    25f8:	81 1e 80 20 	lwz     r8,-32736(r30)
    25fc:	c9 a1 04 f0 	lfd     f13,1264(r1)
    2600:	c0 08 00 00 	lfs     f0,0(r8)
    2604:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    2608:	40 9e 03 34 	bne-    cr7,293c <_vfprintf_r+0x10d0>
    260c:	81 21 04 9c 	lwz     r9,1180(r1)
    2610:	39 4a 00 01 	addi    r10,r10,1
    2614:	81 1e 80 28 	lwz     r8,-32728(r30)
    2618:	39 29 00 01 	addi    r9,r9,1
    261c:	2f 89 00 07 	cmpwi   cr7,r9,7
    2620:	91 0e 00 00 	stw     r8,0(r14)
    2624:	39 00 00 01 	li      r8,1
    2628:	91 0e 00 04 	stw     r8,4(r14)
    262c:	91 41 04 a0 	stw     r10,1184(r1)
    2630:	91 21 04 9c 	stw     r9,1180(r1)
    2634:	41 9d 09 9c 	bgt-    cr7,2fd0 <_vfprintf_r+0x1764>
    2638:	39 ce 00 08 	addi    r14,r14,8
    263c:	81 21 04 bc 	lwz     r9,1212(r1)
    2640:	80 e1 04 dc 	lwz     r7,1244(r1)
    2644:	7f 89 38 00 	cmpw    cr7,r9,r7
    2648:	41 9c 00 0c 	blt-    cr7,2654 <_vfprintf_r+0xde8>
    264c:	73 28 00 01 	andi.   r8,r25,1
    2650:	41 a2 f6 40 	beq-    1c90 <_vfprintf_r+0x424>
    2654:	81 21 04 9c 	lwz     r9,1180(r1)
    2658:	80 e1 04 e8 	lwz     r7,1256(r1)
    265c:	39 29 00 01 	addi    r9,r9,1
    2660:	81 01 04 e0 	lwz     r8,1248(r1)
    2664:	2f 89 00 07 	cmpwi   cr7,r9,7
    2668:	7d 4a 3a 14 	add     r10,r10,r7
    266c:	91 0e 00 00 	stw     r8,0(r14)
    2670:	90 ee 00 04 	stw     r7,4(r14)
    2674:	91 41 04 a0 	stw     r10,1184(r1)
    2678:	91 21 04 9c 	stw     r9,1180(r1)
    267c:	41 9d 0d 74 	bgt-    cr7,33f0 <_vfprintf_r+0x1b84>
    2680:	39 ce 00 08 	addi    r14,r14,8
    2684:	81 21 04 dc 	lwz     r9,1244(r1)
    2688:	37 09 ff ff 	addic.  r24,r9,-1
    268c:	40 a1 f6 04 	ble-    1c90 <_vfprintf_r+0x424>
    2690:	2f 98 00 10 	cmpwi   cr7,r24,16
    2694:	81 21 04 9c 	lwz     r9,1180(r1)
    2698:	81 fe 80 2c 	lwz     r15,-32724(r30)
    269c:	3a e0 00 10 	li      r23,16
    26a0:	41 bd 00 18 	bgt+    cr7,26b8 <_vfprintf_r+0xe4c>
    26a4:	48 00 04 b0 	b       2b54 <_vfprintf_r+0x12e8>
    26a8:	39 ce 00 08 	addi    r14,r14,8
    26ac:	3b 18 ff f0 	addi    r24,r24,-16
    26b0:	2f 98 00 10 	cmpwi   cr7,r24,16
    26b4:	40 9d 04 a0 	ble-    cr7,2b54 <_vfprintf_r+0x12e8>
    26b8:	39 29 00 01 	addi    r9,r9,1
    26bc:	39 4a 00 10 	addi    r10,r10,16
    26c0:	2f 89 00 07 	cmpwi   cr7,r9,7
    26c4:	91 ee 00 00 	stw     r15,0(r14)
    26c8:	92 ee 00 04 	stw     r23,4(r14)
    26cc:	91 41 04 a0 	stw     r10,1184(r1)
    26d0:	91 21 04 9c 	stw     r9,1180(r1)
    26d4:	40 9d ff d4 	ble+    cr7,26a8 <_vfprintf_r+0xe3c>
    26d8:	7f 83 e3 78 	mr      r3,r28
    26dc:	7f e4 fb 78 	mr      r4,r31
    26e0:	7f 65 db 78 	mr      r5,r27
    26e4:	48 00 5d b9 	bl      849c <__sprint_r>
    26e8:	2f 83 00 00 	cmpwi   cr7,r3,0
    26ec:	40 be f7 e8 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    26f0:	81 41 04 a0 	lwz     r10,1184(r1)
    26f4:	7f 4e d3 78 	mr      r14,r26
    26f8:	81 21 04 9c 	lwz     r9,1180(r1)
    26fc:	4b ff ff b0 	b       26ac <_vfprintf_r+0xe40>
    2700:	81 21 04 cc 	lwz     r9,1228(r1)
    2704:	7e 56 48 51 	subf.   r18,r22,r9
    2708:	40 a1 f4 b0 	ble-    1bb8 <_vfprintf_r+0x34c>
    270c:	2f 92 00 10 	cmpwi   cr7,r18,16
    2710:	81 21 04 9c 	lwz     r9,1180(r1)
    2714:	81 fe 80 2c 	lwz     r15,-32724(r30)
    2718:	3a 60 00 10 	li      r19,16
    271c:	41 bd 00 18 	bgt+    cr7,2734 <_vfprintf_r+0xec8>
    2720:	48 00 00 64 	b       2784 <_vfprintf_r+0xf18>
    2724:	3a 52 ff f0 	addi    r18,r18,-16
    2728:	39 ce 00 08 	addi    r14,r14,8
    272c:	2f 92 00 10 	cmpwi   cr7,r18,16
    2730:	40 9d 00 54 	ble-    cr7,2784 <_vfprintf_r+0xf18>
    2734:	39 29 00 01 	addi    r9,r9,1
    2738:	39 4a 00 10 	addi    r10,r10,16
    273c:	2f 89 00 07 	cmpwi   cr7,r9,7
    2740:	91 ee 00 00 	stw     r15,0(r14)
    2744:	92 6e 00 04 	stw     r19,4(r14)
    2748:	91 41 04 a0 	stw     r10,1184(r1)
    274c:	91 21 04 9c 	stw     r9,1180(r1)
    2750:	40 9d ff d4 	ble+    cr7,2724 <_vfprintf_r+0xeb8>
    2754:	7f 83 e3 78 	mr      r3,r28
    2758:	7f e4 fb 78 	mr      r4,r31
    275c:	7f 65 db 78 	mr      r5,r27
    2760:	48 00 5d 3d 	bl      849c <__sprint_r>
    2764:	2f 83 00 00 	cmpwi   cr7,r3,0
    2768:	40 be f7 6c 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    276c:	3a 52 ff f0 	addi    r18,r18,-16
    2770:	81 41 04 a0 	lwz     r10,1184(r1)
    2774:	2f 92 00 10 	cmpwi   cr7,r18,16
    2778:	81 21 04 9c 	lwz     r9,1180(r1)
    277c:	7f 4e d3 78 	mr      r14,r26
    2780:	41 9d ff b4 	bgt+    cr7,2734 <_vfprintf_r+0xec8>
    2784:	39 29 00 01 	addi    r9,r9,1
    2788:	7d 4a 92 14 	add     r10,r10,r18
    278c:	2f 89 00 07 	cmpwi   cr7,r9,7
    2790:	91 ee 00 00 	stw     r15,0(r14)
    2794:	92 4e 00 04 	stw     r18,4(r14)
    2798:	91 41 04 a0 	stw     r10,1184(r1)
    279c:	91 21 04 9c 	stw     r9,1180(r1)
    27a0:	41 9d 05 8c 	bgt-    cr7,2d2c <_vfprintf_r+0x14c0>
    27a4:	39 ce 00 08 	addi    r14,r14,8
    27a8:	4b ff f4 10 	b       1bb8 <_vfprintf_r+0x34c>
    27ac:	73 29 00 01 	andi.   r9,r25,1
    27b0:	40 a2 fc f4 	bne-    24a4 <_vfprintf_r+0xc38>
    27b4:	81 21 04 9c 	lwz     r9,1180(r1)
    27b8:	39 4a 00 01 	addi    r10,r10,1
    27bc:	39 00 00 01 	li      r8,1
    27c0:	92 ee 00 00 	stw     r23,0(r14)
    27c4:	39 29 00 01 	addi    r9,r9,1
    27c8:	91 0e 00 04 	stw     r8,4(r14)
    27cc:	2f 89 00 07 	cmpwi   cr7,r9,7
    27d0:	91 41 04 a0 	stw     r10,1184(r1)
    27d4:	91 21 04 9c 	stw     r9,1180(r1)
    27d8:	40 9d fd 64 	ble+    cr7,253c <_vfprintf_r+0xcd0>
    27dc:	7f 83 e3 78 	mr      r3,r28
    27e0:	7f e4 fb 78 	mr      r4,r31
    27e4:	7f 65 db 78 	mr      r5,r27
    27e8:	48 00 5c b5 	bl      849c <__sprint_r>
    27ec:	2f 83 00 00 	cmpwi   cr7,r3,0
    27f0:	40 be f6 e4 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    27f4:	7f 4e d3 78 	mr      r14,r26
    27f8:	81 41 04 a0 	lwz     r10,1184(r1)
    27fc:	81 21 04 9c 	lwz     r9,1180(r1)
    2800:	4b ff fd 40 	b       2540 <_vfprintf_r+0xcd4>
    2804:	7f 83 e3 78 	mr      r3,r28
    2808:	7f e4 fb 78 	mr      r4,r31
    280c:	7f 65 db 78 	mr      r5,r27
    2810:	48 00 5c 8d 	bl      849c <__sprint_r>
    2814:	2f 83 00 00 	cmpwi   cr7,r3,0
    2818:	41 9e f5 64 	beq+    cr7,1d7c <_vfprintf_r+0x510>
    281c:	4b ff f6 b8 	b       1ed4 <_vfprintf_r+0x668>
    2820:	7f 83 e3 78 	mr      r3,r28
    2824:	7f e4 fb 78 	mr      r4,r31
    2828:	7f 65 db 78 	mr      r5,r27
    282c:	48 00 5c 71 	bl      849c <__sprint_r>
    2830:	2f 83 00 00 	cmpwi   cr7,r3,0
    2834:	40 be f6 a0 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2838:	81 41 04 a0 	lwz     r10,1184(r1)
    283c:	7f 4e d3 78 	mr      r14,r26
    2840:	4b ff f4 20 	b       1c60 <_vfprintf_r+0x3f4>
    2844:	7f 83 e3 78 	mr      r3,r28
    2848:	7f e4 fb 78 	mr      r4,r31
    284c:	7f 65 db 78 	mr      r5,r27
    2850:	48 00 5c 4d 	bl      849c <__sprint_r>
    2854:	2f 83 00 00 	cmpwi   cr7,r3,0
    2858:	40 be f6 7c 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    285c:	81 41 04 a0 	lwz     r10,1184(r1)
    2860:	7f 4e d3 78 	mr      r14,r26
    2864:	4b ff f3 14 	b       1b78 <_vfprintf_r+0x30c>
    2868:	7f 83 e3 78 	mr      r3,r28
    286c:	7f e4 fb 78 	mr      r4,r31
    2870:	7f 65 db 78 	mr      r5,r27
    2874:	48 00 5c 29 	bl      849c <__sprint_r>
    2878:	2f 83 00 00 	cmpwi   cr7,r3,0
    287c:	40 be f6 58 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2880:	81 41 04 a0 	lwz     r10,1184(r1)
    2884:	7f 4e d3 78 	mr      r14,r26
    2888:	4b ff f3 24 	b       1bac <_vfprintf_r+0x340>
    288c:	3a a0 00 00 	li      r21,0
    2890:	7f 77 db 78 	mr      r23,r27
    2894:	4b ff f7 88 	b       201c <_vfprintf_r+0x7b0>
    2898:	80 c1 04 ec 	lwz     r6,1260(r1)
    289c:	56 08 e0 06 	rlwinm  r8,r16,28,0,3
    28a0:	56 2a e1 3e 	rlwinm  r10,r17,28,4,31
    28a4:	56 07 e1 3e 	rlwinm  r7,r16,28,4,31
    28a8:	56 29 07 3e 	clrlwi  r9,r17,28
    28ac:	7d 11 53 78 	or      r17,r8,r10
    28b0:	7d 26 48 ae 	lbzx    r9,r6,r9
    28b4:	7c e8 8b 79 	or.     r8,r7,r17
    28b8:	7c f0 3b 78 	mr      r16,r7
    28bc:	9d 37 ff ff 	stbu    r9,-1(r23)
    28c0:	40 82 ff dc 	bne+    289c <_vfprintf_r+0x1030>
    28c4:	7e b7 d8 50 	subf    r21,r23,r27
    28c8:	4b ff f7 54 	b       201c <_vfprintf_r+0x7b0>
    28cc:	2f 90 00 00 	cmpwi   cr7,r16,0
    28d0:	40 9e 00 0c 	bne-    cr7,28dc <_vfprintf_r+0x1070>
    28d4:	2b 91 00 09 	cmplwi  cr7,r17,9
    28d8:	40 9d 00 50 	ble-    cr7,2928 <_vfprintf_r+0x10bc>
    28dc:	7f 77 db 78 	mr      r23,r27
    28e0:	7e 03 83 78 	mr      r3,r16
    28e4:	7e 24 8b 78 	mr      r4,r17
    28e8:	38 a0 00 00 	li      r5,0
    28ec:	38 c0 00 0a 	li      r6,10
    28f0:	48 00 91 99 	bl      ba88 <__umoddi3>
    28f4:	7e 03 83 78 	mr      r3,r16
    28f8:	38 84 00 30 	addi    r4,r4,48
    28fc:	38 a0 00 00 	li      r5,0
    2900:	9c 97 ff ff 	stbu    r4,-1(r23)
    2904:	38 c0 00 0a 	li      r6,10
    2908:	7e 24 8b 78 	mr      r4,r17
    290c:	48 00 8d 79 	bl      b684 <__udivdi3>
    2910:	7c 70 1b 78 	mr      r16,r3
    2914:	7c 91 23 78 	mr      r17,r4
    2918:	7e 07 23 79 	or.     r7,r16,r4
    291c:	40 82 ff c4 	bne+    28e0 <_vfprintf_r+0x1074>
    2920:	7e b7 d8 50 	subf    r21,r23,r27
    2924:	4b ff f6 f8 	b       201c <_vfprintf_r+0x7b0>
    2928:	39 31 00 30 	addi    r9,r17,48
    292c:	82 a1 04 fc 	lwz     r21,1276(r1)
    2930:	99 21 04 97 	stb     r9,1175(r1)
    2934:	3a e1 04 97 	addi    r23,r1,1175
    2938:	4b ff f6 e4 	b       201c <_vfprintf_r+0x7b0>
    293c:	83 01 04 bc 	lwz     r24,1212(r1)
    2940:	2f 98 00 00 	cmpwi   cr7,r24,0
    2944:	40 9d 06 b0 	ble-    cr7,2ff4 <_vfprintf_r+0x1788>
    2948:	81 01 04 dc 	lwz     r8,1244(r1)
    294c:	81 21 04 e4 	lwz     r9,1252(r1)
    2950:	7f 17 42 14 	add     r24,r23,r8
    2954:	7e b7 c0 50 	subf    r21,r23,r24
    2958:	7f 95 48 00 	cmpw    cr7,r21,r9
    295c:	40 9d 00 08 	ble-    cr7,2964 <_vfprintf_r+0x10f8>
    2960:	7d 35 4b 78 	mr      r21,r9
    2964:	2e 15 00 00 	cmpwi   cr4,r21,0
    2968:	40 91 00 2c 	ble-    cr4,2994 <_vfprintf_r+0x1128>
    296c:	81 21 04 9c 	lwz     r9,1180(r1)
    2970:	7d 4a aa 14 	add     r10,r10,r21
    2974:	92 ee 00 00 	stw     r23,0(r14)
    2978:	39 29 00 01 	addi    r9,r9,1
    297c:	92 ae 00 04 	stw     r21,4(r14)
    2980:	2f 89 00 07 	cmpwi   cr7,r9,7
    2984:	91 41 04 a0 	stw     r10,1184(r1)
    2988:	91 21 04 9c 	stw     r9,1180(r1)
    298c:	41 9d 0b 10 	bgt-    cr7,349c <_vfprintf_r+0x1c30>
    2990:	39 ce 00 08 	addi    r14,r14,8
    2994:	41 90 0b 00 	blt-    cr4,3494 <_vfprintf_r+0x1c28>
    2998:	80 e1 04 e4 	lwz     r7,1252(r1)
    299c:	7e b5 38 51 	subf.   r21,r21,r7
    29a0:	40 81 01 f8 	ble-    2b98 <_vfprintf_r+0x132c>
    29a4:	2f 95 00 10 	cmpwi   cr7,r21,16
    29a8:	81 21 04 9c 	lwz     r9,1180(r1)
    29ac:	81 fe 80 2c 	lwz     r15,-32724(r30)
    29b0:	3a 60 00 10 	li      r19,16
    29b4:	41 bd 00 18 	bgt+    cr7,29cc <_vfprintf_r+0x1160>
    29b8:	48 00 05 f0 	b       2fa8 <_vfprintf_r+0x173c>
    29bc:	39 ce 00 08 	addi    r14,r14,8
    29c0:	3a b5 ff f0 	addi    r21,r21,-16
    29c4:	2f 95 00 10 	cmpwi   cr7,r21,16
    29c8:	40 9d 05 e0 	ble-    cr7,2fa8 <_vfprintf_r+0x173c>
    29cc:	39 29 00 01 	addi    r9,r9,1
    29d0:	39 4a 00 10 	addi    r10,r10,16
    29d4:	2f 89 00 07 	cmpwi   cr7,r9,7
    29d8:	91 ee 00 00 	stw     r15,0(r14)
    29dc:	92 6e 00 04 	stw     r19,4(r14)
    29e0:	91 41 04 a0 	stw     r10,1184(r1)
    29e4:	91 21 04 9c 	stw     r9,1180(r1)
    29e8:	40 9d ff d4 	ble+    cr7,29bc <_vfprintf_r+0x1150>
    29ec:	7f 83 e3 78 	mr      r3,r28
    29f0:	7f e4 fb 78 	mr      r4,r31
    29f4:	7f 65 db 78 	mr      r5,r27
    29f8:	48 00 5a a5 	bl      849c <__sprint_r>
    29fc:	2f 83 00 00 	cmpwi   cr7,r3,0
    2a00:	40 be f4 d4 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2a04:	81 41 04 a0 	lwz     r10,1184(r1)
    2a08:	7f 4e d3 78 	mr      r14,r26
    2a0c:	81 21 04 9c 	lwz     r9,1180(r1)
    2a10:	4b ff ff b0 	b       29c0 <_vfprintf_r+0x1154>
    2a14:	7f 83 e3 78 	mr      r3,r28
    2a18:	7f e4 fb 78 	mr      r4,r31
    2a1c:	7f 65 db 78 	mr      r5,r27
    2a20:	48 00 5a 7d 	bl      849c <__sprint_r>
    2a24:	2f 83 00 00 	cmpwi   cr7,r3,0
    2a28:	40 be f4 ac 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2a2c:	81 41 04 a0 	lwz     r10,1184(r1)
    2a30:	7f 4e d3 78 	mr      r14,r26
    2a34:	4b ff fa 24 	b       2458 <_vfprintf_r+0xbec>
    2a38:	81 01 04 dc 	lwz     r8,1244(r1)
    2a3c:	37 08 ff ff 	addic.  r24,r8,-1
    2a40:	40 a1 fb 00 	ble-    2540 <_vfprintf_r+0xcd4>
    2a44:	2f 98 00 10 	cmpwi   cr7,r24,16
    2a48:	81 fe 80 2c 	lwz     r15,-32724(r30)
    2a4c:	3a e0 00 10 	li      r23,16
    2a50:	41 bd 00 18 	bgt+    cr7,2a68 <_vfprintf_r+0x11fc>
    2a54:	48 00 02 8c 	b       2ce0 <_vfprintf_r+0x1474>
    2a58:	39 ce 00 08 	addi    r14,r14,8
    2a5c:	3b 18 ff f0 	addi    r24,r24,-16
    2a60:	2f 98 00 10 	cmpwi   cr7,r24,16
    2a64:	40 9d 02 7c 	ble-    cr7,2ce0 <_vfprintf_r+0x1474>
    2a68:	39 29 00 01 	addi    r9,r9,1
    2a6c:	39 4a 00 10 	addi    r10,r10,16
    2a70:	2f 89 00 07 	cmpwi   cr7,r9,7
    2a74:	91 ee 00 00 	stw     r15,0(r14)
    2a78:	92 ee 00 04 	stw     r23,4(r14)
    2a7c:	91 41 04 a0 	stw     r10,1184(r1)
    2a80:	91 21 04 9c 	stw     r9,1180(r1)
    2a84:	40 9d ff d4 	ble+    cr7,2a58 <_vfprintf_r+0x11ec>
    2a88:	7f 83 e3 78 	mr      r3,r28
    2a8c:	7f e4 fb 78 	mr      r4,r31
    2a90:	7f 65 db 78 	mr      r5,r27
    2a94:	48 00 5a 09 	bl      849c <__sprint_r>
    2a98:	2f 83 00 00 	cmpwi   cr7,r3,0
    2a9c:	40 be f4 38 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2aa0:	81 41 04 a0 	lwz     r10,1184(r1)
    2aa4:	7f 4e d3 78 	mr      r14,r26
    2aa8:	81 21 04 9c 	lwz     r9,1180(r1)
    2aac:	4b ff ff b0 	b       2a5c <_vfprintf_r+0x11f0>
    2ab0:	73 28 00 10 	andi.   r8,r25,16
    2ab4:	41 82 03 2c 	beq-    2de0 <_vfprintf_r+0x1574>
    2ab8:	89 34 00 00 	lbz     r9,0(r20)
    2abc:	2b 89 00 08 	cmplwi  cr7,r9,8
    2ac0:	40 9c 07 34 	bge-    cr7,31f4 <_vfprintf_r+0x1988>
    2ac4:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2ac8:	81 54 00 08 	lwz     r10,8(r20)
    2acc:	39 29 00 01 	addi    r9,r9,1
    2ad0:	99 34 00 00 	stb     r9,0(r20)
    2ad4:	7d 4a 42 14 	add     r10,r10,r8
    2ad8:	82 2a 00 00 	lwz     r17,0(r10)
    2adc:	39 20 00 00 	li      r9,0
    2ae0:	3a 00 00 00 	li      r16,0
    2ae4:	4b ff f5 fc 	b       20e0 <_vfprintf_r+0x874>
    2ae8:	73 29 00 10 	andi.   r9,r25,16
    2aec:	41 82 03 b0 	beq-    2e9c <_vfprintf_r+0x1630>
    2af0:	89 34 00 00 	lbz     r9,0(r20)
    2af4:	2b 89 00 08 	cmplwi  cr7,r9,8
    2af8:	40 9c 06 c4 	bge-    cr7,31bc <_vfprintf_r+0x1950>
    2afc:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2b00:	81 54 00 08 	lwz     r10,8(r20)
    2b04:	39 29 00 01 	addi    r9,r9,1
    2b08:	99 34 00 00 	stb     r9,0(r20)
    2b0c:	7d 4a 42 14 	add     r10,r10,r8
    2b10:	82 2a 00 00 	lwz     r17,0(r10)
    2b14:	39 20 00 01 	li      r9,1
    2b18:	3a 00 00 00 	li      r16,0
    2b1c:	4b ff f5 c4 	b       20e0 <_vfprintf_r+0x874>
    2b20:	73 27 00 10 	andi.   r7,r25,16
    2b24:	41 82 04 4c 	beq-    2f70 <_vfprintf_r+0x1704>
    2b28:	89 34 00 00 	lbz     r9,0(r20)
    2b2c:	2b 89 00 08 	cmplwi  cr7,r9,8
    2b30:	40 9c 06 7c 	bge-    cr7,31ac <_vfprintf_r+0x1940>
    2b34:	55 28 10 3a 	rlwinm  r8,r9,2,0,29
    2b38:	81 54 00 08 	lwz     r10,8(r20)
    2b3c:	39 29 00 01 	addi    r9,r9,1
    2b40:	99 34 00 00 	stb     r9,0(r20)
    2b44:	7d 4a 42 14 	add     r10,r10,r8
    2b48:	82 2a 00 00 	lwz     r17,0(r10)
    2b4c:	7e 30 fe 70 	srawi   r16,r17,31
    2b50:	4b ff f4 78 	b       1fc8 <_vfprintf_r+0x75c>
    2b54:	39 29 00 01 	addi    r9,r9,1
    2b58:	7d 4a c2 14 	add     r10,r10,r24
    2b5c:	2f 89 00 07 	cmpwi   cr7,r9,7
    2b60:	91 ee 00 00 	stw     r15,0(r14)
    2b64:	93 0e 00 04 	stw     r24,4(r14)
    2b68:	91 41 04 a0 	stw     r10,1184(r1)
    2b6c:	91 21 04 9c 	stw     r9,1180(r1)
    2b70:	40 9d f1 1c 	ble+    cr7,1c8c <_vfprintf_r+0x420>
    2b74:	4b ff f9 f4 	b       2568 <_vfprintf_r+0xcfc>
    2b78:	7f 83 e3 78 	mr      r3,r28
    2b7c:	7f e4 fb 78 	mr      r4,r31
    2b80:	7f 65 db 78 	mr      r5,r27
    2b84:	48 00 59 19 	bl      849c <__sprint_r>
    2b88:	2f 83 00 00 	cmpwi   cr7,r3,0
    2b8c:	40 be f3 48 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2b90:	81 41 04 a0 	lwz     r10,1184(r1)
    2b94:	7f 4e d3 78 	mr      r14,r26
    2b98:	81 01 04 bc 	lwz     r8,1212(r1)
    2b9c:	80 e1 04 dc 	lwz     r7,1244(r1)
    2ba0:	81 21 04 e4 	lwz     r9,1252(r1)
    2ba4:	7f 88 38 00 	cmpw    cr7,r8,r7
    2ba8:	7e f7 4a 14 	add     r23,r23,r9
    2bac:	41 9c 00 d4 	blt-    cr7,2c80 <_vfprintf_r+0x1414>
    2bb0:	73 29 00 01 	andi.   r9,r25,1
    2bb4:	40 82 00 cc 	bne-    2c80 <_vfprintf_r+0x1414>
    2bb8:	81 21 04 dc 	lwz     r9,1244(r1)
    2bbc:	7d 08 48 50 	subf    r8,r8,r9
    2bc0:	7d 37 c0 50 	subf    r9,r23,r24
    2bc4:	7f 88 48 00 	cmpw    cr7,r8,r9
    2bc8:	7d 18 43 78 	mr      r24,r8
    2bcc:	40 9d 00 08 	ble-    cr7,2bd4 <_vfprintf_r+0x1368>
    2bd0:	7d 38 4b 78 	mr      r24,r9
    2bd4:	2e 18 00 00 	cmpwi   cr4,r24,0
    2bd8:	40 91 00 2c 	ble-    cr4,2c04 <_vfprintf_r+0x1398>
    2bdc:	81 21 04 9c 	lwz     r9,1180(r1)
    2be0:	7d 4a c2 14 	add     r10,r10,r24
    2be4:	92 ee 00 00 	stw     r23,0(r14)
    2be8:	39 29 00 01 	addi    r9,r9,1
    2bec:	93 0e 00 04 	stw     r24,4(r14)
    2bf0:	2f 89 00 07 	cmpwi   cr7,r9,7
    2bf4:	91 41 04 a0 	stw     r10,1184(r1)
    2bf8:	91 21 04 9c 	stw     r9,1180(r1)
    2bfc:	41 9d 09 50 	bgt-    cr7,354c <_vfprintf_r+0x1ce0>
    2c00:	39 ce 00 08 	addi    r14,r14,8
    2c04:	41 90 09 40 	blt-    cr4,3544 <_vfprintf_r+0x1cd8>
    2c08:	7f 18 40 51 	subf.   r24,r24,r8
    2c0c:	40 a1 f0 84 	ble-    1c90 <_vfprintf_r+0x424>
    2c10:	2f 98 00 10 	cmpwi   cr7,r24,16
    2c14:	81 21 04 9c 	lwz     r9,1180(r1)
    2c18:	81 fe 80 2c 	lwz     r15,-32724(r30)
    2c1c:	3a e0 00 10 	li      r23,16
    2c20:	41 bd 00 18 	bgt+    cr7,2c38 <_vfprintf_r+0x13cc>
    2c24:	4b ff ff 30 	b       2b54 <_vfprintf_r+0x12e8>
    2c28:	39 ce 00 08 	addi    r14,r14,8
    2c2c:	3b 18 ff f0 	addi    r24,r24,-16
    2c30:	2f 98 00 10 	cmpwi   cr7,r24,16
    2c34:	40 bd ff 20 	ble-    cr7,2b54 <_vfprintf_r+0x12e8>
    2c38:	39 29 00 01 	addi    r9,r9,1
    2c3c:	39 4a 00 10 	addi    r10,r10,16
    2c40:	2f 89 00 07 	cmpwi   cr7,r9,7
    2c44:	91 ee 00 00 	stw     r15,0(r14)
    2c48:	92 ee 00 04 	stw     r23,4(r14)
    2c4c:	91 41 04 a0 	stw     r10,1184(r1)
    2c50:	91 21 04 9c 	stw     r9,1180(r1)
    2c54:	40 9d ff d4 	ble+    cr7,2c28 <_vfprintf_r+0x13bc>
    2c58:	7f 83 e3 78 	mr      r3,r28
    2c5c:	7f e4 fb 78 	mr      r4,r31
    2c60:	7f 65 db 78 	mr      r5,r27
    2c64:	48 00 58 39 	bl      849c <__sprint_r>
    2c68:	2f 83 00 00 	cmpwi   cr7,r3,0
    2c6c:	40 be f2 68 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2c70:	81 41 04 a0 	lwz     r10,1184(r1)
    2c74:	7f 4e d3 78 	mr      r14,r26
    2c78:	81 21 04 9c 	lwz     r9,1180(r1)
    2c7c:	4b ff ff b0 	b       2c2c <_vfprintf_r+0x13c0>
    2c80:	81 21 04 9c 	lwz     r9,1180(r1)
    2c84:	80 e1 04 e8 	lwz     r7,1256(r1)
    2c88:	39 29 00 01 	addi    r9,r9,1
    2c8c:	7d 4a 3a 14 	add     r10,r10,r7
    2c90:	2f 89 00 07 	cmpwi   cr7,r9,7
    2c94:	80 e1 04 e0 	lwz     r7,1248(r1)
    2c98:	90 ee 00 00 	stw     r7,0(r14)
    2c9c:	80 e1 04 e8 	lwz     r7,1256(r1)
    2ca0:	90 ee 00 04 	stw     r7,4(r14)
    2ca4:	91 41 04 a0 	stw     r10,1184(r1)
    2ca8:	91 21 04 9c 	stw     r9,1180(r1)
    2cac:	41 9d 08 3c 	bgt-    cr7,34e8 <_vfprintf_r+0x1c7c>
    2cb0:	39 ce 00 08 	addi    r14,r14,8
    2cb4:	4b ff ff 04 	b       2bb8 <_vfprintf_r+0x134c>
    2cb8:	7f 83 e3 78 	mr      r3,r28
    2cbc:	7f e4 fb 78 	mr      r4,r31
    2cc0:	7f 65 db 78 	mr      r5,r27
    2cc4:	48 00 57 d9 	bl      849c <__sprint_r>
    2cc8:	2f 83 00 00 	cmpwi   cr7,r3,0
    2ccc:	40 be f2 08 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2cd0:	81 41 04 a0 	lwz     r10,1184(r1)
    2cd4:	7f 4e d3 78 	mr      r14,r26
    2cd8:	81 21 04 9c 	lwz     r9,1180(r1)
    2cdc:	4b ff f7 f4 	b       24d0 <_vfprintf_r+0xc64>
    2ce0:	39 29 00 01 	addi    r9,r9,1
    2ce4:	7d 4a c2 14 	add     r10,r10,r24
    2ce8:	2f 89 00 07 	cmpwi   cr7,r9,7
    2cec:	91 ee 00 00 	stw     r15,0(r14)
    2cf0:	93 0e 00 04 	stw     r24,4(r14)
    2cf4:	91 41 04 a0 	stw     r10,1184(r1)
    2cf8:	91 21 04 9c 	stw     r9,1180(r1)
    2cfc:	40 9d f8 40 	ble+    cr7,253c <_vfprintf_r+0xcd0>
    2d00:	4b ff fa dc 	b       27dc <_vfprintf_r+0xf70>
    2d04:	7f 83 e3 78 	mr      r3,r28
    2d08:	7f e4 fb 78 	mr      r4,r31
    2d0c:	7f 65 db 78 	mr      r5,r27
    2d10:	48 00 57 8d 	bl      849c <__sprint_r>
    2d14:	2f 83 00 00 	cmpwi   cr7,r3,0
    2d18:	40 be f1 bc 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2d1c:	81 41 04 a0 	lwz     r10,1184(r1)
    2d20:	7f 4e d3 78 	mr      r14,r26
    2d24:	81 21 04 9c 	lwz     r9,1180(r1)
    2d28:	4b ff f7 d4 	b       24fc <_vfprintf_r+0xc90>
    2d2c:	7f 83 e3 78 	mr      r3,r28
    2d30:	7f e4 fb 78 	mr      r4,r31
    2d34:	7f 65 db 78 	mr      r5,r27
    2d38:	48 00 57 65 	bl      849c <__sprint_r>
    2d3c:	2f 83 00 00 	cmpwi   cr7,r3,0
    2d40:	40 be f1 94 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2d44:	81 41 04 a0 	lwz     r10,1184(r1)
    2d48:	7f 4e d3 78 	mr      r14,r26
    2d4c:	4b ff ee 6c 	b       1bb8 <_vfprintf_r+0x34c>
    2d50:	73 28 00 10 	andi.   r8,r25,16
    2d54:	89 54 00 00 	lbz     r10,0(r20)
    2d58:	2b 8a 00 08 	cmplwi  cr7,r10,8
    2d5c:	40 82 00 34 	bne-    2d90 <_vfprintf_r+0x1524>
    2d60:	73 27 00 40 	andi.   r7,r25,64
    2d64:	41 82 00 2c 	beq-    2d90 <_vfprintf_r+0x1524>
    2d68:	40 9c 0a 54 	bge-    cr7,37bc <_vfprintf_r+0x1f50>
    2d6c:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2d70:	81 34 00 08 	lwz     r9,8(r20)
    2d74:	39 4a 00 01 	addi    r10,r10,1
    2d78:	99 54 00 00 	stb     r10,0(r20)
    2d7c:	7d 29 42 14 	add     r9,r9,r8
    2d80:	81 29 00 00 	lwz     r9,0(r9)
    2d84:	81 41 04 d0 	lwz     r10,1232(r1)
    2d88:	b1 49 00 00 	sth     r10,0(r9)
    2d8c:	4b ff ec 2c 	b       19b8 <_vfprintf_r+0x14c>
    2d90:	40 9c 04 98 	bge-    cr7,3228 <_vfprintf_r+0x19bc>
    2d94:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2d98:	81 34 00 08 	lwz     r9,8(r20)
    2d9c:	39 4a 00 01 	addi    r10,r10,1
    2da0:	99 54 00 00 	stb     r10,0(r20)
    2da4:	7d 29 42 14 	add     r9,r9,r8
    2da8:	81 29 00 00 	lwz     r9,0(r9)
    2dac:	81 41 04 d0 	lwz     r10,1232(r1)
    2db0:	91 49 00 00 	stw     r10,0(r9)
    2db4:	4b ff ec 04 	b       19b8 <_vfprintf_r+0x14c>
    2db8:	81 54 00 04 	lwz     r10,4(r20)
    2dbc:	39 2a 00 04 	addi    r9,r10,4
    2dc0:	91 34 00 04 	stw     r9,4(r20)
    2dc4:	4b ff f4 d4 	b       2298 <_vfprintf_r+0xa2c>
    2dc8:	81 34 00 04 	lwz     r9,4(r20)
    2dcc:	39 29 00 07 	addi    r9,r9,7
    2dd0:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    2dd4:	39 2a 00 08 	addi    r9,r10,8
    2dd8:	91 34 00 04 	stw     r9,4(r20)
    2ddc:	4b ff f3 50 	b       212c <_vfprintf_r+0x8c0>
    2de0:	73 29 00 40 	andi.   r9,r25,64
    2de4:	89 54 00 00 	lbz     r10,0(r20)
    2de8:	2b 8a 00 08 	cmplwi  cr7,r10,8
    2dec:	41 82 03 e0 	beq-    31cc <_vfprintf_r+0x1960>
    2df0:	40 9c 07 ac 	bge-    cr7,359c <_vfprintf_r+0x1d30>
    2df4:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2df8:	81 34 00 08 	lwz     r9,8(r20)
    2dfc:	39 4a 00 01 	addi    r10,r10,1
    2e00:	99 54 00 00 	stb     r10,0(r20)
    2e04:	7d 29 42 14 	add     r9,r9,r8
    2e08:	a2 29 00 02 	lhz     r17,2(r9)
    2e0c:	3a 00 00 00 	li      r16,0
    2e10:	39 20 00 00 	li      r9,0
    2e14:	4b ff f2 cc 	b       20e0 <_vfprintf_r+0x874>
    2e18:	81 34 00 04 	lwz     r9,4(r20)
    2e1c:	39 29 00 07 	addi    r9,r9,7
    2e20:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    2e24:	39 2a 00 08 	addi    r9,r10,8
    2e28:	91 34 00 04 	stw     r9,4(r20)
    2e2c:	4b ff f2 a8 	b       20d4 <_vfprintf_r+0x868>
    2e30:	73 27 00 40 	andi.   r7,r25,64
    2e34:	89 54 00 00 	lbz     r10,0(r20)
    2e38:	2b 8a 00 08 	cmplwi  cr7,r10,8
    2e3c:	41 82 03 3c 	beq-    3178 <_vfprintf_r+0x190c>
    2e40:	40 9c 07 4c 	bge-    cr7,358c <_vfprintf_r+0x1d20>
    2e44:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2e48:	81 34 00 08 	lwz     r9,8(r20)
    2e4c:	39 4a 00 01 	addi    r10,r10,1
    2e50:	99 54 00 00 	stb     r10,0(r20)
    2e54:	7d 29 42 14 	add     r9,r9,r8
    2e58:	a2 29 00 02 	lhz     r17,2(r9)
    2e5c:	3a 00 00 00 	li      r16,0
    2e60:	4b ff f3 28 	b       2188 <_vfprintf_r+0x91c>
    2e64:	81 54 00 04 	lwz     r10,4(r20)
    2e68:	39 2a 00 04 	addi    r9,r10,4
    2e6c:	91 34 00 04 	stw     r9,4(r20)
    2e70:	4b ff f3 60 	b       21d0 <_vfprintf_r+0x964>
    2e74:	81 54 00 04 	lwz     r10,4(r20)
    2e78:	39 2a 00 04 	addi    r9,r10,4
    2e7c:	91 34 00 04 	stw     r9,4(r20)
    2e80:	4b ff f5 1c 	b       239c <_vfprintf_r+0xb30>
    2e84:	81 34 00 04 	lwz     r9,4(r20)
    2e88:	39 29 00 07 	addi    r9,r9,7
    2e8c:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    2e90:	39 2a 00 08 	addi    r9,r10,8
    2e94:	91 34 00 04 	stw     r9,4(r20)
    2e98:	4b ff f1 28 	b       1fc0 <_vfprintf_r+0x754>
    2e9c:	73 2a 00 40 	andi.   r10,r25,64
    2ea0:	89 54 00 00 	lbz     r10,0(r20)
    2ea4:	2b 8a 00 08 	cmplwi  cr7,r10,8
    2ea8:	41 82 02 80 	beq-    3128 <_vfprintf_r+0x18bc>
    2eac:	40 9c 06 d0 	bge-    cr7,357c <_vfprintf_r+0x1d10>
    2eb0:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2eb4:	81 34 00 08 	lwz     r9,8(r20)
    2eb8:	39 4a 00 01 	addi    r10,r10,1
    2ebc:	99 54 00 00 	stb     r10,0(r20)
    2ec0:	7d 29 42 14 	add     r9,r9,r8
    2ec4:	a2 29 00 02 	lhz     r17,2(r9)
    2ec8:	3a 00 00 00 	li      r16,0
    2ecc:	39 20 00 01 	li      r9,1
    2ed0:	4b ff f2 10 	b       20e0 <_vfprintf_r+0x874>
    2ed4:	81 54 00 04 	lwz     r10,4(r20)
    2ed8:	39 2a 00 04 	addi    r9,r10,4
    2edc:	91 34 00 04 	stw     r9,4(r20)
    2ee0:	4b ff ee e4 	b       1dc4 <_vfprintf_r+0x558>
    2ee4:	40 9c 02 6c 	bge-    cr7,3150 <_vfprintf_r+0x18e4>
    2ee8:	39 09 00 04 	addi    r8,r9,4
    2eec:	81 54 00 08 	lwz     r10,8(r20)
    2ef0:	39 29 00 01 	addi    r9,r9,1
    2ef4:	55 08 18 38 	rlwinm  r8,r8,3,0,28
    2ef8:	99 34 00 01 	stb     r9,1(r20)
    2efc:	7d 4a 42 14 	add     r10,r10,r8
    2f00:	cb ea 00 00 	lfd     f31,0(r10)
    2f04:	db e1 04 f0 	stfd    f31,1264(r1)
    2f08:	fc 20 f8 90 	fmr     f1,f31
    2f0c:	48 00 51 49 	bl      8054 <__fpclassifyd>
    2f10:	2f 83 00 01 	cmpwi   cr7,r3,1
    2f14:	40 9e 03 50 	bne-    cr7,3264 <_vfprintf_r+0x19f8>
    2f18:	81 1e 80 20 	lwz     r8,-32736(r30)
    2f1c:	c0 08 00 00 	lfs     f0,0(r8)
    2f20:	ff 9f 00 00 	fcmpu   cr7,f31,f0
    2f24:	41 9c 07 84 	blt-    cr7,36a8 <_vfprintf_r+0x1e3c>
    2f28:	89 21 04 c2 	lbz     r9,1218(r1)
    2f2c:	2f 98 00 47 	cmpwi   cr7,r24,71
    2f30:	41 9d 04 e4 	bgt-    cr7,3414 <_vfprintf_r+0x1ba8>
    2f34:	82 fe 80 00 	lwz     r23,-32768(r30)
    2f38:	38 e0 00 00 	li      r7,0
    2f3c:	39 00 00 00 	li      r8,0
    2f40:	57 39 06 6e 	rlwinm  r25,r25,0,25,23
    2f44:	3a c0 00 03 	li      r22,3
    2f48:	3a a0 00 03 	li      r21,3
    2f4c:	90 e1 04 d4 	stw     r7,1236(r1)
    2f50:	91 01 04 e4 	stw     r8,1252(r1)
    2f54:	4b ff f0 e8 	b       203c <_vfprintf_r+0x7d0>
    2f58:	81 34 00 04 	lwz     r9,4(r20)
    2f5c:	39 29 00 07 	addi    r9,r9,7
    2f60:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    2f64:	39 2a 00 08 	addi    r9,r10,8
    2f68:	91 34 00 04 	stw     r9,4(r20)
    2f6c:	4b ff f2 14 	b       2180 <_vfprintf_r+0x914>
    2f70:	73 28 00 40 	andi.   r8,r25,64
    2f74:	89 54 00 00 	lbz     r10,0(r20)
    2f78:	2b 8a 00 08 	cmplwi  cr7,r10,8
    2f7c:	41 82 01 88 	beq-    3104 <_vfprintf_r+0x1898>
    2f80:	40 9c 07 38 	bge-    cr7,36b8 <_vfprintf_r+0x1e4c>
    2f84:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    2f88:	81 34 00 08 	lwz     r9,8(r20)
    2f8c:	39 4a 00 01 	addi    r10,r10,1
    2f90:	99 54 00 00 	stb     r10,0(r20)
    2f94:	7d 29 42 14 	add     r9,r9,r8
    2f98:	a9 29 00 02 	lha     r9,2(r9)
    2f9c:	7d 31 4b 78 	mr      r17,r9
    2fa0:	7d 30 fe 70 	srawi   r16,r9,31
    2fa4:	4b ff f0 24 	b       1fc8 <_vfprintf_r+0x75c>
    2fa8:	39 29 00 01 	addi    r9,r9,1
    2fac:	7d 4a aa 14 	add     r10,r10,r21
    2fb0:	2f 89 00 07 	cmpwi   cr7,r9,7
    2fb4:	91 ee 00 00 	stw     r15,0(r14)
    2fb8:	92 ae 00 04 	stw     r21,4(r14)
    2fbc:	91 41 04 a0 	stw     r10,1184(r1)
    2fc0:	91 21 04 9c 	stw     r9,1180(r1)
    2fc4:	41 bd fb b4 	bgt-    cr7,2b78 <_vfprintf_r+0x130c>
    2fc8:	39 ce 00 08 	addi    r14,r14,8
    2fcc:	4b ff fb cc 	b       2b98 <_vfprintf_r+0x132c>
    2fd0:	7f 83 e3 78 	mr      r3,r28
    2fd4:	7f e4 fb 78 	mr      r4,r31
    2fd8:	7f 65 db 78 	mr      r5,r27
    2fdc:	48 00 54 c1 	bl      849c <__sprint_r>
    2fe0:	2f 83 00 00 	cmpwi   cr7,r3,0
    2fe4:	40 be ee f0 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    2fe8:	81 41 04 a0 	lwz     r10,1184(r1)
    2fec:	7f 4e d3 78 	mr      r14,r26
    2ff0:	4b ff f6 4c 	b       263c <_vfprintf_r+0xdd0>
    2ff4:	81 21 04 9c 	lwz     r9,1180(r1)
    2ff8:	39 4a 00 01 	addi    r10,r10,1
    2ffc:	81 1e 80 28 	lwz     r8,-32728(r30)
    3000:	39 29 00 01 	addi    r9,r9,1
    3004:	2f 09 00 07 	cmpwi   cr6,r9,7
    3008:	91 0e 00 00 	stw     r8,0(r14)
    300c:	39 00 00 01 	li      r8,1
    3010:	91 0e 00 04 	stw     r8,4(r14)
    3014:	91 41 04 a0 	stw     r10,1184(r1)
    3018:	91 21 04 9c 	stw     r9,1180(r1)
    301c:	41 99 02 1c 	bgt-    cr6,3238 <_vfprintf_r+0x19cc>
    3020:	39 ce 00 08 	addi    r14,r14,8
    3024:	40 9e 00 18 	bne-    cr7,303c <_vfprintf_r+0x17d0>
    3028:	80 e1 04 dc 	lwz     r7,1244(r1)
    302c:	2f 87 00 00 	cmpwi   cr7,r7,0
    3030:	40 9e 00 0c 	bne-    cr7,303c <_vfprintf_r+0x17d0>
    3034:	73 28 00 01 	andi.   r8,r25,1
    3038:	41 a2 ec 58 	beq-    1c90 <_vfprintf_r+0x424>
    303c:	81 21 04 9c 	lwz     r9,1180(r1)
    3040:	80 e1 04 e8 	lwz     r7,1256(r1)
    3044:	39 29 00 01 	addi    r9,r9,1
    3048:	81 01 04 e0 	lwz     r8,1248(r1)
    304c:	2f 89 00 07 	cmpwi   cr7,r9,7
    3050:	7d 4a 3a 14 	add     r10,r10,r7
    3054:	91 0e 00 00 	stw     r8,0(r14)
    3058:	90 ee 00 04 	stw     r7,4(r14)
    305c:	91 41 04 a0 	stw     r10,1184(r1)
    3060:	91 21 04 9c 	stw     r9,1180(r1)
    3064:	41 9d 06 dc 	bgt-    cr7,3740 <_vfprintf_r+0x1ed4>
    3068:	39 ce 00 08 	addi    r14,r14,8
    306c:	7f 18 00 d1 	neg.    r24,r24
    3070:	40 81 03 d0 	ble-    3440 <_vfprintf_r+0x1bd4>
    3074:	2f 98 00 10 	cmpwi   cr7,r24,16
    3078:	81 fe 80 2c 	lwz     r15,-32724(r30)
    307c:	3a a0 00 10 	li      r21,16
    3080:	41 bd 00 18 	bgt+    cr7,3098 <_vfprintf_r+0x182c>
    3084:	48 00 04 3c 	b       34c0 <_vfprintf_r+0x1c54>
    3088:	39 ce 00 08 	addi    r14,r14,8
    308c:	3b 18 ff f0 	addi    r24,r24,-16
    3090:	2f 98 00 10 	cmpwi   cr7,r24,16
    3094:	40 9d 04 2c 	ble-    cr7,34c0 <_vfprintf_r+0x1c54>
    3098:	39 29 00 01 	addi    r9,r9,1
    309c:	39 4a 00 10 	addi    r10,r10,16
    30a0:	2f 89 00 07 	cmpwi   cr7,r9,7
    30a4:	91 ee 00 00 	stw     r15,0(r14)
    30a8:	92 ae 00 04 	stw     r21,4(r14)
    30ac:	91 41 04 a0 	stw     r10,1184(r1)
    30b0:	91 21 04 9c 	stw     r9,1180(r1)
    30b4:	40 9d ff d4 	ble+    cr7,3088 <_vfprintf_r+0x181c>
    30b8:	7f 83 e3 78 	mr      r3,r28
    30bc:	7f e4 fb 78 	mr      r4,r31
    30c0:	7f 65 db 78 	mr      r5,r27
    30c4:	48 00 53 d9 	bl      849c <__sprint_r>
    30c8:	2f 83 00 00 	cmpwi   cr7,r3,0
    30cc:	40 be ee 08 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    30d0:	81 41 04 a0 	lwz     r10,1184(r1)
    30d4:	7f 4e d3 78 	mr      r14,r26
    30d8:	81 21 04 9c 	lwz     r9,1180(r1)
    30dc:	4b ff ff b0 	b       308c <_vfprintf_r+0x1820>
    30e0:	7e b6 a8 f8 	not     r22,r21
    30e4:	38 e0 00 00 	li      r7,0
    30e8:	7e d6 fe 70 	srawi   r22,r22,31
    30ec:	39 00 00 00 	li      r8,0
    30f0:	7e b6 b0 38 	and     r22,r21,r22
    30f4:	89 21 04 c2 	lbz     r9,1218(r1)
    30f8:	90 e1 04 d4 	stw     r7,1236(r1)
    30fc:	91 01 04 e4 	stw     r8,1252(r1)
    3100:	4b ff ef 3c 	b       203c <_vfprintf_r+0x7d0>
    3104:	40 9c 05 94 	bge-    cr7,3698 <_vfprintf_r+0x1e2c>
    3108:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    310c:	81 34 00 08 	lwz     r9,8(r20)
    3110:	39 4a 00 01 	addi    r10,r10,1
    3114:	99 54 00 00 	stb     r10,0(r20)
    3118:	7d 29 42 14 	add     r9,r9,r8
    311c:	82 29 00 00 	lwz     r17,0(r9)
    3120:	7e 30 fe 70 	srawi   r16,r17,31
    3124:	4b ff ee a4 	b       1fc8 <_vfprintf_r+0x75c>
    3128:	40 9c 05 a0 	bge-    cr7,36c8 <_vfprintf_r+0x1e5c>
    312c:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    3130:	81 34 00 08 	lwz     r9,8(r20)
    3134:	39 4a 00 01 	addi    r10,r10,1
    3138:	99 54 00 00 	stb     r10,0(r20)
    313c:	7d 29 42 14 	add     r9,r9,r8
    3140:	82 29 00 00 	lwz     r17,0(r9)
    3144:	3a 00 00 00 	li      r16,0
    3148:	39 20 00 01 	li      r9,1
    314c:	4b ff ef 94 	b       20e0 <_vfprintf_r+0x874>
    3150:	81 34 00 04 	lwz     r9,4(r20)
    3154:	39 29 00 07 	addi    r9,r9,7
    3158:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    315c:	39 2a 00 08 	addi    r9,r10,8
    3160:	91 34 00 04 	stw     r9,4(r20)
    3164:	4b ff fd 9c 	b       2f00 <_vfprintf_r+0x1694>
    3168:	81 54 00 04 	lwz     r10,4(r20)
    316c:	39 2a 00 04 	addi    r9,r10,4
    3170:	91 34 00 04 	stw     r9,4(r20)
    3174:	4b ff f1 ec 	b       2360 <_vfprintf_r+0xaf4>
    3178:	40 9c 04 ec 	bge-    cr7,3664 <_vfprintf_r+0x1df8>
    317c:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    3180:	81 34 00 08 	lwz     r9,8(r20)
    3184:	39 4a 00 01 	addi    r10,r10,1
    3188:	99 54 00 00 	stb     r10,0(r20)
    318c:	7d 29 42 14 	add     r9,r9,r8
    3190:	82 29 00 00 	lwz     r17,0(r9)
    3194:	3a 00 00 00 	li      r16,0
    3198:	4b ff ef f0 	b       2188 <_vfprintf_r+0x91c>
    319c:	81 54 00 04 	lwz     r10,4(r20)
    31a0:	39 2a 00 04 	addi    r9,r10,4
    31a4:	91 34 00 04 	stw     r9,4(r20)
    31a8:	4b ff f1 84 	b       232c <_vfprintf_r+0xac0>
    31ac:	81 54 00 04 	lwz     r10,4(r20)
    31b0:	39 2a 00 04 	addi    r9,r10,4
    31b4:	91 34 00 04 	stw     r9,4(r20)
    31b8:	4b ff f9 90 	b       2b48 <_vfprintf_r+0x12dc>
    31bc:	81 54 00 04 	lwz     r10,4(r20)
    31c0:	39 2a 00 04 	addi    r9,r10,4
    31c4:	91 34 00 04 	stw     r9,4(r20)
    31c8:	4b ff f9 48 	b       2b10 <_vfprintf_r+0x12a4>
    31cc:	40 9c 04 a8 	bge-    cr7,3674 <_vfprintf_r+0x1e08>
    31d0:	55 48 10 3a 	rlwinm  r8,r10,2,0,29
    31d4:	81 34 00 08 	lwz     r9,8(r20)
    31d8:	39 4a 00 01 	addi    r10,r10,1
    31dc:	99 54 00 00 	stb     r10,0(r20)
    31e0:	7d 29 42 14 	add     r9,r9,r8
    31e4:	82 29 00 00 	lwz     r17,0(r9)
    31e8:	3a 00 00 00 	li      r16,0
    31ec:	39 20 00 00 	li      r9,0
    31f0:	4b ff ee f0 	b       20e0 <_vfprintf_r+0x874>
    31f4:	81 54 00 04 	lwz     r10,4(r20)
    31f8:	39 2a 00 04 	addi    r9,r10,4
    31fc:	91 34 00 04 	stw     r9,4(r20)
    3200:	4b ff f8 d8 	b       2ad8 <_vfprintf_r+0x126c>
    3204:	81 34 00 04 	lwz     r9,4(r20)
    3208:	39 29 00 07 	addi    r9,r9,7
    320c:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    3210:	39 2a 00 08 	addi    r9,r10,8
    3214:	91 34 00 04 	stw     r9,4(r20)
    3218:	4b ff ee 64 	b       207c <_vfprintf_r+0x810>
    321c:	38 c0 ff ff 	li      r6,-1
    3220:	7d 5d 53 78 	mr      r29,r10
    3224:	4b ff e8 44 	b       1a68 <_vfprintf_r+0x1fc>
    3228:	81 34 00 04 	lwz     r9,4(r20)
    322c:	39 49 00 04 	addi    r10,r9,4
    3230:	91 54 00 04 	stw     r10,4(r20)
    3234:	4b ff fb 74 	b       2da8 <_vfprintf_r+0x153c>
    3238:	7f 83 e3 78 	mr      r3,r28
    323c:	7f e4 fb 78 	mr      r4,r31
    3240:	7f 65 db 78 	mr      r5,r27
    3244:	48 00 52 59 	bl      849c <__sprint_r>
    3248:	2f 83 00 00 	cmpwi   cr7,r3,0
    324c:	40 be ec 88 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3250:	83 01 04 bc 	lwz     r24,1212(r1)
    3254:	7f 4e d3 78 	mr      r14,r26
    3258:	81 41 04 a0 	lwz     r10,1184(r1)
    325c:	2f 98 00 00 	cmpwi   cr7,r24,0
    3260:	4b ff fd c4 	b       3024 <_vfprintf_r+0x17b8>
    3264:	fc 20 f8 90 	fmr     f1,f31
    3268:	48 00 4d ed 	bl      8054 <__fpclassifyd>
    326c:	2f 83 00 00 	cmpwi   cr7,r3,0
    3270:	40 9e 00 48 	bne-    cr7,32b8 <_vfprintf_r+0x1a4c>
    3274:	2f 98 00 47 	cmpwi   cr7,r24,71
    3278:	82 fe 80 0c 	lwz     r23,-32756(r30)
    327c:	41 9d 00 08 	bgt-    cr7,3284 <_vfprintf_r+0x1a18>
    3280:	82 fe 80 08 	lwz     r23,-32760(r30)
    3284:	39 40 00 00 	li      r10,0
    3288:	38 e0 00 00 	li      r7,0
    328c:	57 39 06 6e 	rlwinm  r25,r25,0,25,23
    3290:	89 21 04 c2 	lbz     r9,1218(r1)
    3294:	3a c0 00 03 	li      r22,3
    3298:	3a a0 00 03 	li      r21,3
    329c:	91 41 04 d4 	stw     r10,1236(r1)
    32a0:	90 e1 04 e4 	stw     r7,1252(r1)
    32a4:	4b ff ed 98 	b       203c <_vfprintf_r+0x7d0>
    32a8:	3b bd 00 01 	addi    r29,r29,1
    32ac:	63 39 00 20 	ori     r25,r25,32
    32b0:	8b 09 00 01 	lbz     r24,1(r9)
    32b4:	4b ff e7 b0 	b       1a64 <_vfprintf_r+0x1f8>
    32b8:	2f 93 ff ff 	cmpwi   cr7,r19,-1
    32bc:	41 9e 04 f4 	beq-    cr7,37b0 <_vfprintf_r+0x1f44>
    32c0:	2e 18 00 67 	cmpwi   cr4,r24,103
    32c4:	41 92 04 a8 	beq-    cr4,376c <_vfprintf_r+0x1f00>
    32c8:	2f 98 00 47 	cmpwi   cr7,r24,71
    32cc:	41 9e 04 a0 	beq-    cr7,376c <_vfprintf_r+0x1f00>
    32d0:	db e1 05 00 	stfd    f31,1280(r1)
    32d4:	63 2f 01 00 	ori     r15,r25,256
    32d8:	3a 40 00 00 	li      r18,0
    32dc:	81 41 05 00 	lwz     r10,1280(r1)
    32e0:	2f 8a 00 00 	cmpwi   cr7,r10,0
    32e4:	41 9c 04 98 	blt-    cr7,377c <_vfprintf_r+0x1f10>
    32e8:	2d 98 00 66 	cmpwi   cr3,r24,102
    32ec:	41 8e 03 ec 	beq-    cr3,36d8 <_vfprintf_r+0x1e6c>
    32f0:	2d 18 00 46 	cmpwi   cr2,r24,70
    32f4:	41 8a 03 e4 	beq-    cr2,36d8 <_vfprintf_r+0x1e6c>
    32f8:	2f 98 00 65 	cmpwi   cr7,r24,101
    32fc:	41 9e 04 d0 	beq-    cr7,37cc <_vfprintf_r+0x1f60>
    3300:	2f 98 00 45 	cmpwi   cr7,r24,69
    3304:	7e 76 9b 78 	mr      r22,r19
    3308:	41 9e 04 c4 	beq-    cr7,37cc <_vfprintf_r+0x1f60>
    330c:	fc 20 f8 90 	fmr     f1,f31
    3310:	7f 83 e3 78 	mr      r3,r28
    3314:	38 80 00 02 	li      r4,2
    3318:	7e c5 b3 78 	mr      r5,r22
    331c:	38 c1 04 bc 	addi    r6,r1,1212
    3320:	38 e1 04 b8 	addi    r7,r1,1208
    3324:	39 01 04 b4 	addi    r8,r1,1204
    3328:	48 00 0c 81 	bl      3fa8 <_dtoa_r>
    332c:	7c 77 1b 78 	mr      r23,r3
    3330:	41 92 00 0c 	beq-    cr4,333c <_vfprintf_r+0x1ad0>
    3334:	2f 98 00 47 	cmpwi   cr7,r24,71
    3338:	40 9e 00 0c 	bne-    cr7,3344 <_vfprintf_r+0x1ad8>
    333c:	73 27 00 01 	andi.   r7,r25,1
    3340:	41 82 05 1c 	beq-    385c <_vfprintf_r+0x1ff0>
    3344:	7c f7 b2 14 	add     r7,r23,r22
    3348:	41 8a 03 bc 	beq-    cr2,3704 <_vfprintf_r+0x1e98>
    334c:	81 1e 80 20 	lwz     r8,-32736(r30)
    3350:	c0 08 00 00 	lfs     f0,0(r8)
    3354:	ff 9f 00 00 	fcmpu   cr7,f31,f0
    3358:	41 9e 00 34 	beq-    cr7,338c <_vfprintf_r+0x1b20>
    335c:	81 21 04 b4 	lwz     r9,1204(r1)
    3360:	7f 87 48 40 	cmplw   cr7,r7,r9
    3364:	40 9d 06 38 	ble-    cr7,399c <_vfprintf_r+0x2130>
    3368:	7d 09 38 50 	subf    r8,r9,r7
    336c:	4f 8c 00 00 	mcrf    cr7,cr3
    3370:	39 40 00 30 	li      r10,48
    3374:	7d 09 03 a6 	mtctr   r8
    3378:	99 49 00 00 	stb     r10,0(r9)
    337c:	39 29 00 01 	addi    r9,r9,1
    3380:	91 21 04 b4 	stw     r9,1204(r1)
    3384:	42 00 ff f4 	bdnz+   3378 <_vfprintf_r+0x1b0c>
    3388:	4d 9c 00 00 	mcrf    cr3,cr7
    338c:	7c f7 38 50 	subf    r7,r23,r7
    3390:	90 e1 04 dc 	stw     r7,1244(r1)
    3394:	41 92 02 18 	beq-    cr4,35ac <_vfprintf_r+0x1d40>
    3398:	2f 98 00 47 	cmpwi   cr7,r24,71
    339c:	41 9e 02 10 	beq-    cr7,35ac <_vfprintf_r+0x1d40>
    33a0:	40 8e 05 f4 	bne-    cr3,3994 <_vfprintf_r+0x2128>
    33a4:	81 21 04 bc 	lwz     r9,1212(r1)
    33a8:	2f 89 00 00 	cmpwi   cr7,r9,0
    33ac:	40 9d 05 04 	ble-    cr7,38b0 <_vfprintf_r+0x2044>
    33b0:	2f 93 00 00 	cmpwi   cr7,r19,0
    33b4:	40 9e 04 b0 	bne-    cr7,3864 <_vfprintf_r+0x1ff8>
    33b8:	73 27 00 01 	andi.   r7,r25,1
    33bc:	40 82 04 a8 	bne-    3864 <_vfprintf_r+0x1ff8>
    33c0:	7d 36 4b 78 	mr      r22,r9
    33c4:	7d 35 4b 78 	mr      r21,r9
    33c8:	91 21 04 e4 	stw     r9,1252(r1)
    33cc:	2f 92 00 00 	cmpwi   cr7,r18,0
    33d0:	41 9e 02 b4 	beq-    cr7,3684 <_vfprintf_r+0x1e18>
    33d4:	39 20 00 2d 	li      r9,45
    33d8:	7d f9 7b 78 	mr      r25,r15
    33dc:	99 21 04 c2 	stb     r9,1218(r1)
    33e0:	39 20 00 00 	li      r9,0
    33e4:	91 21 04 d4 	stw     r9,1236(r1)
    33e8:	3a d6 00 01 	addi    r22,r22,1
    33ec:	4b ff e6 b8 	b       1aa4 <_vfprintf_r+0x238>
    33f0:	7f 83 e3 78 	mr      r3,r28
    33f4:	7f e4 fb 78 	mr      r4,r31
    33f8:	7f 65 db 78 	mr      r5,r27
    33fc:	48 00 50 a1 	bl      849c <__sprint_r>
    3400:	2f 83 00 00 	cmpwi   cr7,r3,0
    3404:	40 be ea d0 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3408:	81 41 04 a0 	lwz     r10,1184(r1)
    340c:	7f 4e d3 78 	mr      r14,r26
    3410:	4b ff f2 74 	b       2684 <_vfprintf_r+0xe18>
    3414:	82 fe 80 04 	lwz     r23,-32764(r30)
    3418:	4b ff fb 20 	b       2f38 <_vfprintf_r+0x16cc>
    341c:	7f 83 e3 78 	mr      r3,r28
    3420:	7f e4 fb 78 	mr      r4,r31
    3424:	7f 65 db 78 	mr      r5,r27
    3428:	48 00 50 75 	bl      849c <__sprint_r>
    342c:	2f 83 00 00 	cmpwi   cr7,r3,0
    3430:	40 be ea a4 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3434:	81 41 04 a0 	lwz     r10,1184(r1)
    3438:	7f 4e d3 78 	mr      r14,r26
    343c:	81 21 04 9c 	lwz     r9,1180(r1)
    3440:	39 29 00 01 	addi    r9,r9,1
    3444:	80 e1 04 dc 	lwz     r7,1244(r1)
    3448:	2f 89 00 07 	cmpwi   cr7,r9,7
    344c:	92 ee 00 00 	stw     r23,0(r14)
    3450:	7d 4a 3a 14 	add     r10,r10,r7
    3454:	90 ee 00 04 	stw     r7,4(r14)
    3458:	91 41 04 a0 	stw     r10,1184(r1)
    345c:	91 21 04 9c 	stw     r9,1180(r1)
    3460:	40 9d e8 2c 	ble+    cr7,1c8c <_vfprintf_r+0x420>
    3464:	4b ff f1 04 	b       2568 <_vfprintf_r+0xcfc>
    3468:	48 00 4f 79 	bl      83e0 <strlen>
    346c:	39 40 00 00 	li      r10,0
    3470:	7c 76 18 f8 	not     r22,r3
    3474:	38 e0 00 00 	li      r7,0
    3478:	7e d6 fe 70 	srawi   r22,r22,31
    347c:	7c 75 1b 78 	mr      r21,r3
    3480:	7c 76 b0 38 	and     r22,r3,r22
    3484:	89 21 04 c2 	lbz     r9,1218(r1)
    3488:	91 41 04 d4 	stw     r10,1236(r1)
    348c:	90 e1 04 e4 	stw     r7,1252(r1)
    3490:	4b ff eb ac 	b       203c <_vfprintf_r+0x7d0>
    3494:	3a a0 00 00 	li      r21,0
    3498:	4b ff f5 00 	b       2998 <_vfprintf_r+0x112c>
    349c:	7f 83 e3 78 	mr      r3,r28
    34a0:	7f e4 fb 78 	mr      r4,r31
    34a4:	7f 65 db 78 	mr      r5,r27
    34a8:	48 00 4f f5 	bl      849c <__sprint_r>
    34ac:	2f 83 00 00 	cmpwi   cr7,r3,0
    34b0:	40 be ea 24 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    34b4:	81 41 04 a0 	lwz     r10,1184(r1)
    34b8:	7f 4e d3 78 	mr      r14,r26
    34bc:	4b ff f4 d8 	b       2994 <_vfprintf_r+0x1128>
    34c0:	39 29 00 01 	addi    r9,r9,1
    34c4:	7d 4a c2 14 	add     r10,r10,r24
    34c8:	2f 89 00 07 	cmpwi   cr7,r9,7
    34cc:	91 ee 00 00 	stw     r15,0(r14)
    34d0:	93 0e 00 04 	stw     r24,4(r14)
    34d4:	91 41 04 a0 	stw     r10,1184(r1)
    34d8:	91 21 04 9c 	stw     r9,1180(r1)
    34dc:	41 bd ff 40 	bgt-    cr7,341c <_vfprintf_r+0x1bb0>
    34e0:	39 ce 00 08 	addi    r14,r14,8
    34e4:	4b ff ff 5c 	b       3440 <_vfprintf_r+0x1bd4>
    34e8:	7f 83 e3 78 	mr      r3,r28
    34ec:	7f e4 fb 78 	mr      r4,r31
    34f0:	7f 65 db 78 	mr      r5,r27
    34f4:	48 00 4f a9 	bl      849c <__sprint_r>
    34f8:	2f 83 00 00 	cmpwi   cr7,r3,0
    34fc:	40 be e9 d8 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3500:	81 01 04 bc 	lwz     r8,1212(r1)
    3504:	7f 4e d3 78 	mr      r14,r26
    3508:	81 41 04 a0 	lwz     r10,1184(r1)
    350c:	4b ff f6 ac 	b       2bb8 <_vfprintf_r+0x134c>
    3510:	2b 93 00 06 	cmplwi  cr7,r19,6
    3514:	7e 75 9b 78 	mr      r21,r19
    3518:	40 9d 00 08 	ble-    cr7,3520 <_vfprintf_r+0x1cb4>
    351c:	3a a0 00 06 	li      r21,6
    3520:	7e b6 a8 f8 	not     r22,r21
    3524:	38 e0 00 00 	li      r7,0
    3528:	7e d6 fe 70 	srawi   r22,r22,31
    352c:	39 00 00 00 	li      r8,0
    3530:	7e b6 b0 38 	and     r22,r21,r22
    3534:	90 e1 04 d4 	stw     r7,1236(r1)
    3538:	91 01 04 e4 	stw     r8,1252(r1)
    353c:	82 fe 80 18 	lwz     r23,-32744(r30)
    3540:	4b ff e5 64 	b       1aa4 <_vfprintf_r+0x238>
    3544:	3b 00 00 00 	li      r24,0
    3548:	4b ff f6 c0 	b       2c08 <_vfprintf_r+0x139c>
    354c:	7f 83 e3 78 	mr      r3,r28
    3550:	7f e4 fb 78 	mr      r4,r31
    3554:	7f 65 db 78 	mr      r5,r27
    3558:	48 00 4f 45 	bl      849c <__sprint_r>
    355c:	2f 83 00 00 	cmpwi   cr7,r3,0
    3560:	40 be e9 74 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3564:	81 01 04 bc 	lwz     r8,1212(r1)
    3568:	7f 4e d3 78 	mr      r14,r26
    356c:	80 e1 04 dc 	lwz     r7,1244(r1)
    3570:	81 41 04 a0 	lwz     r10,1184(r1)
    3574:	7d 08 38 50 	subf    r8,r8,r7
    3578:	4b ff f6 8c 	b       2c04 <_vfprintf_r+0x1398>
    357c:	81 34 00 04 	lwz     r9,4(r20)
    3580:	39 49 00 04 	addi    r10,r9,4
    3584:	91 54 00 04 	stw     r10,4(r20)
    3588:	4b ff f9 3c 	b       2ec4 <_vfprintf_r+0x1658>
    358c:	81 34 00 04 	lwz     r9,4(r20)
    3590:	39 49 00 04 	addi    r10,r9,4
    3594:	91 54 00 04 	stw     r10,4(r20)
    3598:	4b ff f8 c0 	b       2e58 <_vfprintf_r+0x15ec>
    359c:	81 34 00 04 	lwz     r9,4(r20)
    35a0:	39 49 00 04 	addi    r10,r9,4
    35a4:	91 54 00 04 	stw     r10,4(r20)
    35a8:	4b ff f8 60 	b       2e08 <_vfprintf_r+0x159c>
    35ac:	81 21 04 bc 	lwz     r9,1212(r1)
    35b0:	2f 89 ff fd 	cmpwi   cr7,r9,-3
    35b4:	7d 2a 4b 78 	mr      r10,r9
    35b8:	41 9c 00 0c 	blt-    cr7,35c4 <_vfprintf_r+0x1d58>
    35bc:	7f 93 48 00 	cmpw    cr7,r19,r9
    35c0:	40 9c 00 78 	bge-    cr7,3638 <_vfprintf_r+0x1dcc>
    35c4:	3b 18 ff fe 	addi    r24,r24,-2
    35c8:	39 2a ff ff 	addi    r9,r10,-1
    35cc:	9b 01 04 ac 	stb     r24,1196(r1)
    35d0:	2f 89 00 00 	cmpwi   cr7,r9,0
    35d4:	91 21 04 bc 	stw     r9,1212(r1)
    35d8:	41 9c 03 00 	blt-    cr7,38d8 <_vfprintf_r+0x206c>
    35dc:	39 40 00 2b 	li      r10,43
    35e0:	99 41 04 ad 	stb     r10,1197(r1)
    35e4:	2f 89 00 09 	cmpwi   cr7,r9,9
    35e8:	41 9d 01 ec 	bgt-    cr7,37d4 <_vfprintf_r+0x1f68>
    35ec:	39 40 00 30 	li      r10,48
    35f0:	39 29 00 30 	addi    r9,r9,48
    35f4:	99 41 04 ae 	stb     r10,1198(r1)
    35f8:	39 01 04 ac 	addi    r8,r1,1196
    35fc:	99 21 04 af 	stb     r9,1199(r1)
    3600:	39 21 04 b0 	addi    r9,r1,1200
    3604:	80 e1 04 dc 	lwz     r7,1244(r1)
    3608:	7d 08 48 50 	subf    r8,r8,r9
    360c:	91 01 04 f8 	stw     r8,1272(r1)
    3610:	2f 87 00 01 	cmpwi   cr7,r7,1
    3614:	7e a7 42 14 	add     r21,r7,r8
    3618:	40 9d 02 d0 	ble-    cr7,38e8 <_vfprintf_r+0x207c>
    361c:	3a b5 00 01 	addi    r21,r21,1
    3620:	39 40 00 00 	li      r10,0
    3624:	7e b6 a8 f8 	not     r22,r21
    3628:	91 41 04 e4 	stw     r10,1252(r1)
    362c:	7e d6 fe 70 	srawi   r22,r22,31
    3630:	7e b6 b0 38 	and     r22,r21,r22
    3634:	4b ff fd 98 	b       33cc <_vfprintf_r+0x1b60>
    3638:	81 41 04 dc 	lwz     r10,1244(r1)
    363c:	7f 89 50 00 	cmpw    cr7,r9,r10
    3640:	41 9c 01 48 	blt-    cr7,3788 <_vfprintf_r+0x1f1c>
    3644:	73 27 00 01 	andi.   r7,r25,1
    3648:	40 82 02 50 	bne-    3898 <_vfprintf_r+0x202c>
    364c:	7d 36 48 f8 	not     r22,r9
    3650:	7d 35 4b 78 	mr      r21,r9
    3654:	7e d6 fe 70 	srawi   r22,r22,31
    3658:	3b 00 00 67 	li      r24,103
    365c:	7d 36 b0 38 	and     r22,r9,r22
    3660:	4b ff fd 68 	b       33c8 <_vfprintf_r+0x1b5c>
    3664:	81 34 00 04 	lwz     r9,4(r20)
    3668:	39 49 00 04 	addi    r10,r9,4
    366c:	91 54 00 04 	stw     r10,4(r20)
    3670:	4b ff fb 20 	b       3190 <_vfprintf_r+0x1924>
    3674:	81 34 00 04 	lwz     r9,4(r20)
    3678:	39 49 00 04 	addi    r10,r9,4
    367c:	91 54 00 04 	stw     r10,4(r20)
    3680:	4b ff fb 64 	b       31e4 <_vfprintf_r+0x1978>
    3684:	38 e0 00 00 	li      r7,0
    3688:	89 21 04 c2 	lbz     r9,1218(r1)
    368c:	7d f9 7b 78 	mr      r25,r15
    3690:	90 e1 04 d4 	stw     r7,1236(r1)
    3694:	4b ff e9 a8 	b       203c <_vfprintf_r+0x7d0>
    3698:	81 34 00 04 	lwz     r9,4(r20)
    369c:	39 49 00 04 	addi    r10,r9,4
    36a0:	91 54 00 04 	stw     r10,4(r20)
    36a4:	4b ff fa 78 	b       311c <_vfprintf_r+0x18b0>
    36a8:	39 20 00 2d 	li      r9,45
    36ac:	99 21 04 c2 	stb     r9,1218(r1)
    36b0:	39 20 00 2d 	li      r9,45
    36b4:	4b ff f8 78 	b       2f2c <_vfprintf_r+0x16c0>
    36b8:	81 34 00 04 	lwz     r9,4(r20)
    36bc:	39 49 00 04 	addi    r10,r9,4
    36c0:	91 54 00 04 	stw     r10,4(r20)
    36c4:	4b ff f8 d4 	b       2f98 <_vfprintf_r+0x172c>
    36c8:	81 34 00 04 	lwz     r9,4(r20)
    36cc:	39 49 00 04 	addi    r10,r9,4
    36d0:	91 54 00 04 	stw     r10,4(r20)
    36d4:	4b ff fa 6c 	b       3140 <_vfprintf_r+0x18d4>
    36d8:	fc 20 f8 90 	fmr     f1,f31
    36dc:	38 e1 04 b8 	addi    r7,r1,1208
    36e0:	7f 83 e3 78 	mr      r3,r28
    36e4:	38 80 00 03 	li      r4,3
    36e8:	7e 65 9b 78 	mr      r5,r19
    36ec:	38 c1 04 bc 	addi    r6,r1,1212
    36f0:	39 01 04 b4 	addi    r8,r1,1204
    36f4:	7e 76 9b 78 	mr      r22,r19
    36f8:	48 00 08 b1 	bl      3fa8 <_dtoa_r>
    36fc:	7c 77 1b 78 	mr      r23,r3
    3700:	7c e3 9a 14 	add     r7,r3,r19
    3704:	89 37 00 00 	lbz     r9,0(r23)
    3708:	2f 89 00 30 	cmpwi   cr7,r9,48
    370c:	41 9e 01 70 	beq-    cr7,387c <_vfprintf_r+0x2010>
    3710:	82 c1 04 bc 	lwz     r22,1212(r1)
    3714:	81 1e 80 20 	lwz     r8,-32736(r30)
    3718:	7c e7 b2 14 	add     r7,r7,r22
    371c:	4b ff fc 34 	b       3350 <_vfprintf_r+0x1ae4>
    3720:	39 40 00 00 	li      r10,0
    3724:	38 e0 00 00 	li      r7,0
    3728:	7e 76 9b 78 	mr      r22,r19
    372c:	89 21 04 c2 	lbz     r9,1218(r1)
    3730:	7e 75 9b 78 	mr      r21,r19
    3734:	91 41 04 d4 	stw     r10,1236(r1)
    3738:	90 e1 04 e4 	stw     r7,1252(r1)
    373c:	4b ff e9 00 	b       203c <_vfprintf_r+0x7d0>
    3740:	7f 83 e3 78 	mr      r3,r28
    3744:	7f e4 fb 78 	mr      r4,r31
    3748:	7f 65 db 78 	mr      r5,r27
    374c:	48 00 4d 51 	bl      849c <__sprint_r>
    3750:	2f 83 00 00 	cmpwi   cr7,r3,0
    3754:	40 be e7 80 	bne-    cr7,1ed4 <_vfprintf_r+0x668>
    3758:	83 01 04 bc 	lwz     r24,1212(r1)
    375c:	7f 4e d3 78 	mr      r14,r26
    3760:	81 41 04 a0 	lwz     r10,1184(r1)
    3764:	81 21 04 9c 	lwz     r9,1180(r1)
    3768:	4b ff f9 04 	b       306c <_vfprintf_r+0x1800>
    376c:	2f 93 00 00 	cmpwi   cr7,r19,0
    3770:	40 be fb 60 	bne-    cr7,32d0 <_vfprintf_r+0x1a64>
    3774:	3a 60 00 01 	li      r19,1
    3778:	4b ff fb 58 	b       32d0 <_vfprintf_r+0x1a64>
    377c:	ff e0 f8 50 	fneg    f31,f31
    3780:	3a 40 00 2d 	li      r18,45
    3784:	4b ff fb 64 	b       32e8 <_vfprintf_r+0x1a7c>
    3788:	2f 89 00 00 	cmpwi   cr7,r9,0
    378c:	3a a0 00 01 	li      r21,1
    3790:	40 9d 01 40 	ble-    cr7,38d0 <_vfprintf_r+0x2064>
    3794:	81 01 04 dc 	lwz     r8,1244(r1)
    3798:	3b 00 00 67 	li      r24,103
    379c:	7e b5 42 14 	add     r21,r21,r8
    37a0:	7e b6 a8 f8 	not     r22,r21
    37a4:	7e d6 fe 70 	srawi   r22,r22,31
    37a8:	7e b6 b0 38 	and     r22,r21,r22
    37ac:	4b ff fc 1c 	b       33c8 <_vfprintf_r+0x1b5c>
    37b0:	3a 60 00 06 	li      r19,6
    37b4:	2e 18 00 67 	cmpwi   cr4,r24,103
    37b8:	4b ff fb 18 	b       32d0 <_vfprintf_r+0x1a64>
    37bc:	81 34 00 04 	lwz     r9,4(r20)
    37c0:	39 49 00 04 	addi    r10,r9,4
    37c4:	91 54 00 04 	stw     r10,4(r20)
    37c8:	4b ff f5 b8 	b       2d80 <_vfprintf_r+0x1514>
    37cc:	3a d3 00 01 	addi    r22,r19,1
    37d0:	4b ff fb 3c 	b       330c <_vfprintf_r+0x1aa0>
    37d4:	39 01 04 ab 	addi    r8,r1,1195
    37d8:	3c c0 66 66 	lis     r6,26214
    37dc:	7d 07 43 78 	mr      r7,r8
    37e0:	60 c6 66 67 	ori     r6,r6,26215
    37e4:	7c a9 30 96 	mulhw   r5,r9,r6
    37e8:	7d 2a fe 70 	srawi   r10,r9,31
    37ec:	7c a5 16 70 	srawi   r5,r5,2
    37f0:	7d 4a 28 50 	subf    r10,r10,r5
    37f4:	1c aa 00 0a 	mulli   r5,r10,10
    37f8:	2f 8a 00 09 	cmpwi   cr7,r10,9
    37fc:	7c a5 48 50 	subf    r5,r5,r9
    3800:	7d 49 53 78 	mr      r9,r10
    3804:	39 45 00 30 	addi    r10,r5,48
    3808:	9d 47 ff ff 	stbu    r10,-1(r7)
    380c:	41 9d ff d8 	bgt+    cr7,37e4 <_vfprintf_r+0x1f78>
    3810:	39 49 00 30 	addi    r10,r9,48
    3814:	7c e9 3b 78 	mr      r9,r7
    3818:	55 4a 06 3e 	clrlwi  r10,r10,24
    381c:	9d 49 ff ff 	stbu    r10,-1(r9)
    3820:	7f 88 48 40 	cmplw   cr7,r8,r9
    3824:	40 9d 01 64 	ble-    cr7,3988 <_vfprintf_r+0x211c>
    3828:	7c c9 08 50 	subf    r6,r9,r1
    382c:	39 01 04 ad 	addi    r8,r1,1197
    3830:	38 c6 04 ab 	addi    r6,r6,1195
    3834:	7c c9 03 a6 	mtctr   r6
    3838:	48 00 00 08 	b       3840 <_vfprintf_r+0x1fd4>
    383c:	8d 49 00 01 	lbzu    r10,1(r9)
    3840:	9d 48 00 01 	stbu    r10,1(r8)
    3844:	42 00 ff f8 	bdnz+   383c <_vfprintf_r+0x1fd0>
    3848:	39 01 04 ac 	addi    r8,r1,1196
    384c:	39 41 04 ae 	addi    r10,r1,1198
    3850:	7d 27 40 50 	subf    r9,r7,r8
    3854:	7d 2a 4a 14 	add     r9,r10,r9
    3858:	4b ff fd ac 	b       3604 <_vfprintf_r+0x1d98>
    385c:	80 e1 04 b4 	lwz     r7,1204(r1)
    3860:	4b ff fb 2c 	b       338c <_vfprintf_r+0x1b20>
    3864:	3a b3 00 01 	addi    r21,r19,1
    3868:	7e a9 aa 14 	add     r21,r9,r21
    386c:	7e b6 a8 f8 	not     r22,r21
    3870:	7e d6 fe 70 	srawi   r22,r22,31
    3874:	7e b6 b0 38 	and     r22,r21,r22
    3878:	4b ff fb 50 	b       33c8 <_vfprintf_r+0x1b5c>
    387c:	81 1e 80 20 	lwz     r8,-32736(r30)
    3880:	c0 08 00 00 	lfs     f0,0(r8)
    3884:	ff 9f 00 00 	fcmpu   cr7,f31,f0
    3888:	40 9e 00 80 	bne-    cr7,3908 <_vfprintf_r+0x209c>
    388c:	82 c1 04 bc 	lwz     r22,1212(r1)
    3890:	7c e7 b2 14 	add     r7,r7,r22
    3894:	4b ff fa bc 	b       3350 <_vfprintf_r+0x1ae4>
    3898:	3a a9 00 01 	addi    r21,r9,1
    389c:	3b 00 00 67 	li      r24,103
    38a0:	7e b6 a8 f8 	not     r22,r21
    38a4:	7e d6 fe 70 	srawi   r22,r22,31
    38a8:	7e b6 b0 38 	and     r22,r21,r22
    38ac:	4b ff fb 1c 	b       33c8 <_vfprintf_r+0x1b5c>
    38b0:	2f 93 00 00 	cmpwi   cr7,r19,0
    38b4:	40 9e 00 b0 	bne-    cr7,3964 <_vfprintf_r+0x20f8>
    38b8:	73 28 00 01 	andi.   r8,r25,1
    38bc:	40 82 00 a8 	bne-    3964 <_vfprintf_r+0x20f8>
    38c0:	3b 00 00 66 	li      r24,102
    38c4:	3a c0 00 01 	li      r22,1
    38c8:	3a a0 00 01 	li      r21,1
    38cc:	4b ff fa fc 	b       33c8 <_vfprintf_r+0x1b5c>
    38d0:	22 a9 00 02 	subfic  r21,r9,2
    38d4:	4b ff fe c0 	b       3794 <_vfprintf_r+0x1f28>
    38d8:	39 40 00 2d 	li      r10,45
    38dc:	7d 29 00 d0 	neg     r9,r9
    38e0:	99 41 04 ad 	stb     r10,1197(r1)
    38e4:	4b ff fd 00 	b       35e4 <_vfprintf_r+0x1d78>
    38e8:	73 28 00 01 	andi.   r8,r25,1
    38ec:	40 a2 fd 30 	bne-    361c <_vfprintf_r+0x1db0>
    38f0:	7e b6 a8 f8 	not     r22,r21
    38f4:	39 20 00 00 	li      r9,0
    38f8:	7e d6 fe 70 	srawi   r22,r22,31
    38fc:	91 21 04 e4 	stw     r9,1252(r1)
    3900:	7e b6 b0 38 	and     r22,r21,r22
    3904:	4b ff fa c8 	b       33cc <_vfprintf_r+0x1b60>
    3908:	22 d6 00 01 	subfic  r22,r22,1
    390c:	92 c1 04 bc 	stw     r22,1212(r1)
    3910:	7c e7 b2 14 	add     r7,r7,r22
    3914:	4b ff fa 3c 	b       3350 <_vfprintf_r+0x1ae4>
    3918:	39 40 ff ff 	li      r10,-1
    391c:	91 41 04 d0 	stw     r10,1232(r1)
    3920:	4b ff e5 78 	b       1e98 <_vfprintf_r+0x62c>
    3924:	88 d4 00 00 	lbz     r6,0(r20)
    3928:	2b 86 00 08 	cmplwi  cr7,r6,8
    392c:	40 9c 00 4c 	bge-    cr7,3978 <_vfprintf_r+0x210c>
    3930:	54 c5 10 3a 	rlwinm  r5,r6,2,0,29
    3934:	81 34 00 08 	lwz     r9,8(r20)
    3938:	38 c6 00 01 	addi    r6,r6,1
    393c:	98 d4 00 00 	stb     r6,0(r20)
    3940:	7d 29 2a 14 	add     r9,r9,r5
    3944:	80 c9 00 00 	lwz     r6,0(r9)
    3948:	8b 1d 00 01 	lbz     r24,1(r29)
    394c:	7d 5d 53 78 	mr      r29,r10
    3950:	2f 86 00 00 	cmpwi   cr7,r6,0
    3954:	40 9c e1 10 	bge+    cr7,1a64 <_vfprintf_r+0x1f8>
    3958:	38 c0 ff ff 	li      r6,-1
    395c:	7d 5d 53 78 	mr      r29,r10
    3960:	4b ff e1 04 	b       1a64 <_vfprintf_r+0x1f8>
    3964:	3a b3 00 02 	addi    r21,r19,2
    3968:	7e b6 a8 f8 	not     r22,r21
    396c:	7e d6 fe 70 	srawi   r22,r22,31
    3970:	7e b6 b0 38 	and     r22,r21,r22
    3974:	4b ff fa 54 	b       33c8 <_vfprintf_r+0x1b5c>
    3978:	81 34 00 04 	lwz     r9,4(r20)
    397c:	38 c9 00 04 	addi    r6,r9,4
    3980:	90 d4 00 04 	stw     r6,4(r20)
    3984:	4b ff ff c0 	b       3944 <_vfprintf_r+0x20d8>
    3988:	39 21 04 ae 	addi    r9,r1,1198
    398c:	39 01 04 ac 	addi    r8,r1,1196
    3990:	4b ff fc 74 	b       3604 <_vfprintf_r+0x1d98>
    3994:	81 41 04 bc 	lwz     r10,1212(r1)
    3998:	4b ff fc 30 	b       35c8 <_vfprintf_r+0x1d5c>
    399c:	7d 27 4b 78 	mr      r7,r9
    39a0:	4b ff f9 ec 	b       338c <_vfprintf_r+0x1b20>
    39a4:	00 01 13 1c 	.long 0x1131c

000039a8 <vfprintf>:
    39a8:	94 21 ff f0 	stwu    r1,-16(r1)
    39ac:	7c 08 02 a6 	mflr    r0
    39b0:	42 9f 00 05 	bcl-    20,4*cr7+so,39b4 <vfprintf+0xc>
    39b4:	7c 6a 1b 78 	mr      r10,r3
    39b8:	93 c1 00 08 	stw     r30,8(r1)
    39bc:	7f c8 02 a6 	mflr    r30
    39c0:	90 01 00 14 	stw     r0,20(r1)
    39c4:	7c 89 23 78 	mr      r9,r4
    39c8:	7c a6 2b 78 	mr      r6,r5
    39cc:	7d 44 53 78 	mr      r4,r10
    39d0:	80 1e ff f0 	lwz     r0,-16(r30)
    39d4:	7d 25 4b 78 	mr      r5,r9
    39d8:	7f c0 f2 14 	add     r30,r0,r30
    39dc:	80 01 00 14 	lwz     r0,20(r1)
    39e0:	81 1e 80 30 	lwz     r8,-32720(r30)
    39e4:	7c 08 03 a6 	mtlr    r0
    39e8:	83 c1 00 08 	lwz     r30,8(r1)
    39ec:	80 68 00 00 	lwz     r3,0(r8)
    39f0:	38 21 00 10 	addi    r1,r1,16
    39f4:	4b ff de 78 	b       186c <_vfprintf_r>
    39f8:	00 01 12 fc 	.long 0x112fc

000039fc <__swsetup_r>:
    39fc:	94 21 ff e0 	stwu    r1,-32(r1)
    3a00:	7c 08 02 a6 	mflr    r0
    3a04:	42 9f 00 05 	bcl-    20,4*cr7+so,3a08 <__swsetup_r+0xc>
    3a08:	93 c1 00 18 	stw     r30,24(r1)
    3a0c:	7f c8 02 a6 	mflr    r30
    3a10:	90 01 00 24 	stw     r0,36(r1)
    3a14:	93 a1 00 14 	stw     r29,20(r1)
    3a18:	7c 7d 1b 78 	mr      r29,r3
    3a1c:	80 1e ff f0 	lwz     r0,-16(r30)
    3a20:	93 e1 00 1c 	stw     r31,28(r1)
    3a24:	7c 9f 23 78 	mr      r31,r4
    3a28:	7f c0 f2 14 	add     r30,r0,r30
    3a2c:	81 3e 80 00 	lwz     r9,-32768(r30)
    3a30:	80 69 00 00 	lwz     r3,0(r9)
    3a34:	2f 83 00 00 	cmpwi   cr7,r3,0
    3a38:	41 9e 00 10 	beq-    cr7,3a48 <__swsetup_r+0x4c>
    3a3c:	81 43 00 38 	lwz     r10,56(r3)
    3a40:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3a44:	41 9e 00 f4 	beq-    cr7,3b38 <__swsetup_r+0x13c>
    3a48:	a9 3f 00 0c 	lha     r9,12(r31)
    3a4c:	55 2a 07 38 	rlwinm  r10,r9,0,28,28
    3a50:	7d 48 07 35 	extsh.  r8,r10
    3a54:	41 82 00 54 	beq-    3aa8 <__swsetup_r+0xac>
    3a58:	81 5f 00 10 	lwz     r10,16(r31)
    3a5c:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3a60:	41 9e 00 74 	beq-    cr7,3ad4 <__swsetup_r+0xd8>
    3a64:	71 28 00 01 	andi.   r8,r9,1
    3a68:	40 82 00 94 	bne-    3afc <__swsetup_r+0x100>
    3a6c:	55 29 07 bc 	rlwinm  r9,r9,0,30,30
    3a70:	7d 2a 07 35 	extsh.  r10,r9
    3a74:	39 40 00 00 	li      r10,0
    3a78:	40 82 00 08 	bne-    3a80 <__swsetup_r+0x84>
    3a7c:	81 5f 00 14 	lwz     r10,20(r31)
    3a80:	91 5f 00 08 	stw     r10,8(r31)
    3a84:	41 9e 00 90 	beq-    cr7,3b14 <__swsetup_r+0x118>
    3a88:	38 60 00 00 	li      r3,0
    3a8c:	80 01 00 24 	lwz     r0,36(r1)
    3a90:	83 a1 00 14 	lwz     r29,20(r1)
    3a94:	7c 08 03 a6 	mtlr    r0
    3a98:	83 c1 00 18 	lwz     r30,24(r1)
    3a9c:	83 e1 00 1c 	lwz     r31,28(r1)
    3aa0:	38 21 00 20 	addi    r1,r1,32
    3aa4:	4e 80 00 20 	blr
    3aa8:	55 2a 06 f6 	rlwinm  r10,r9,0,27,27
    3aac:	7d 48 07 35 	extsh.  r8,r10
    3ab0:	41 82 00 d8 	beq-    3b88 <__swsetup_r+0x18c>
    3ab4:	55 2a 07 7a 	rlwinm  r10,r9,0,29,29
    3ab8:	7d 48 07 35 	extsh.  r8,r10
    3abc:	40 82 00 84 	bne-    3b40 <__swsetup_r+0x144>
    3ac0:	81 5f 00 10 	lwz     r10,16(r31)
    3ac4:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3ac8:	61 29 00 08 	ori     r9,r9,8
    3acc:	b1 3f 00 0c 	sth     r9,12(r31)
    3ad0:	40 9e ff 94 	bne+    cr7,3a64 <__swsetup_r+0x68>
    3ad4:	71 2a 02 80 	andi.   r10,r9,640
    3ad8:	2f 0a 02 00 	cmpwi   cr6,r10,512
    3adc:	41 ba ff 88 	beq-    cr6,3a64 <__swsetup_r+0x68>
    3ae0:	7f a3 eb 78 	mr      r3,r29
    3ae4:	7f e4 fb 78 	mr      r4,r31
    3ae8:	48 00 26 c1 	bl      61a8 <__smakebuf_r>
    3aec:	81 5f 00 10 	lwz     r10,16(r31)
    3af0:	a9 3f 00 0c 	lha     r9,12(r31)
    3af4:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3af8:	4b ff ff 6c 	b       3a64 <__swsetup_r+0x68>
    3afc:	81 3f 00 14 	lwz     r9,20(r31)
    3b00:	39 40 00 00 	li      r10,0
    3b04:	91 5f 00 08 	stw     r10,8(r31)
    3b08:	7d 29 00 d0 	neg     r9,r9
    3b0c:	91 3f 00 18 	stw     r9,24(r31)
    3b10:	40 9e ff 78 	bne+    cr7,3a88 <__swsetup_r+0x8c>
    3b14:	a9 3f 00 0c 	lha     r9,12(r31)
    3b18:	38 60 00 00 	li      r3,0
    3b1c:	55 2a 06 30 	rlwinm  r10,r9,0,24,24
    3b20:	7d 48 07 35 	extsh.  r8,r10
    3b24:	41 82 ff 68 	beq+    3a8c <__swsetup_r+0x90>
    3b28:	61 29 00 40 	ori     r9,r9,64
    3b2c:	38 60 ff ff 	li      r3,-1
    3b30:	b1 3f 00 0c 	sth     r9,12(r31)
    3b34:	4b ff ff 58 	b       3a8c <__swsetup_r+0x90>
    3b38:	48 00 1b 71 	bl      56a8 <__sinit>
    3b3c:	4b ff ff 0c 	b       3a48 <__swsetup_r+0x4c>
    3b40:	80 9f 00 30 	lwz     r4,48(r31)
    3b44:	2f 84 00 00 	cmpwi   cr7,r4,0
    3b48:	41 9e 00 24 	beq-    cr7,3b6c <__swsetup_r+0x170>
    3b4c:	39 5f 00 40 	addi    r10,r31,64
    3b50:	7f 84 50 00 	cmpw    cr7,r4,r10
    3b54:	41 9e 00 10 	beq-    cr7,3b64 <__swsetup_r+0x168>
    3b58:	7f a3 eb 78 	mr      r3,r29
    3b5c:	48 00 1f 31 	bl      5a8c <_free_r>
    3b60:	a9 3f 00 0c 	lha     r9,12(r31)
    3b64:	39 40 00 00 	li      r10,0
    3b68:	91 5f 00 30 	stw     r10,48(r31)
    3b6c:	39 00 00 00 	li      r8,0
    3b70:	81 5f 00 10 	lwz     r10,16(r31)
    3b74:	91 1f 00 04 	stw     r8,4(r31)
    3b78:	39 00 ff db 	li      r8,-37
    3b7c:	91 5f 00 00 	stw     r10,0(r31)
    3b80:	7d 29 40 38 	and     r9,r9,r8
    3b84:	4b ff ff 40 	b       3ac4 <__swsetup_r+0xc8>
    3b88:	61 29 00 40 	ori     r9,r9,64
    3b8c:	39 40 00 09 	li      r10,9
    3b90:	91 5d 00 00 	stw     r10,0(r29)
    3b94:	38 60 ff ff 	li      r3,-1
    3b98:	b1 3f 00 0c 	sth     r9,12(r31)
    3b9c:	4b ff fe f0 	b       3a8c <__swsetup_r+0x90>
    3ba0:	00 01 11 58 	.long 0x11158

00003ba4 <__call_exitprocs>:
    3ba4:	94 21 ff c0 	stwu    r1,-64(r1)
    3ba8:	7c 08 02 a6 	mflr    r0
    3bac:	42 9f 00 05 	bcl-    20,4*cr7+so,3bb0 <__call_exitprocs+0xc>
    3bb0:	7d 80 00 26 	mfcr    r12
    3bb4:	93 c1 00 38 	stw     r30,56(r1)
    3bb8:	7f c8 02 a6 	mflr    r30
    3bbc:	90 01 00 44 	stw     r0,68(r1)
    3bc0:	2e 04 00 00 	cmpwi   cr4,r4,0
    3bc4:	92 e1 00 1c 	stw     r23,28(r1)
    3bc8:	80 1e ff f0 	lwz     r0,-16(r30)
    3bcc:	92 61 00 0c 	stw     r19,12(r1)
    3bd0:	7f c0 f2 14 	add     r30,r0,r30
    3bd4:	92 81 00 10 	stw     r20,16(r1)
    3bd8:	81 3e 80 00 	lwz     r9,-32768(r30)
    3bdc:	93 41 00 28 	stw     r26,40(r1)
    3be0:	82 e9 00 00 	lwz     r23,0(r9)
    3be4:	81 3e 80 04 	lwz     r9,-32764(r30)
    3be8:	93 81 00 30 	stw     r28,48(r1)
    3bec:	93 a1 00 34 	stw     r29,52(r1)
    3bf0:	2d 89 00 00 	cmpwi   cr3,r9,0
    3bf4:	93 e1 00 3c 	stw     r31,60(r1)
    3bf8:	91 81 00 08 	stw     r12,8(r1)
    3bfc:	92 a1 00 14 	stw     r21,20(r1)
    3c00:	3a b7 01 48 	addi    r21,r23,328
    3c04:	92 c1 00 18 	stw     r22,24(r1)
    3c08:	7c 76 1b 78 	mr      r22,r3
    3c0c:	93 01 00 20 	stw     r24,32(r1)
    3c10:	3b 00 00 00 	li      r24,0
    3c14:	93 21 00 24 	stw     r25,36(r1)
    3c18:	3b 20 00 01 	li      r25,1
    3c1c:	93 61 00 2c 	stw     r27,44(r1)
    3c20:	7c 9b 23 78 	mr      r27,r4
    3c24:	83 97 01 48 	lwz     r28,328(r23)
    3c28:	7e b3 ab 78 	mr      r19,r21
    3c2c:	2f 9c 00 00 	cmpwi   cr7,r28,0
    3c30:	41 9e 00 40 	beq-    cr7,3c70 <__call_exitprocs+0xcc>
    3c34:	83 fc 00 04 	lwz     r31,4(r28)
    3c38:	37 ff ff ff 	addic.  r31,r31,-1
    3c3c:	41 80 00 30 	blt-    3c6c <__call_exitprocs+0xc8>
    3c40:	3b 5c 00 88 	addi    r26,r28,136
    3c44:	57 fd 10 3a 	rlwinm  r29,r31,2,0,29
    3c48:	7f ba ea 14 	add     r29,r26,r29
    3c4c:	41 92 00 70 	beq-    cr4,3cbc <__call_exitprocs+0x118>
    3c50:	81 3d 00 80 	lwz     r9,128(r29)
    3c54:	7f 89 d8 00 	cmpw    cr7,r9,r27
    3c58:	41 9e 00 64 	beq-    cr7,3cbc <__call_exitprocs+0x118>
    3c5c:	2f 9f 00 00 	cmpwi   cr7,r31,0
    3c60:	3b bd ff fc 	addi    r29,r29,-4
    3c64:	3b ff ff ff 	addi    r31,r31,-1
    3c68:	40 9e ff e4 	bne+    cr7,3c4c <__call_exitprocs+0xa8>
    3c6c:	40 8e 00 e8 	bne-    cr3,3d54 <__call_exitprocs+0x1b0>
    3c70:	80 01 00 44 	lwz     r0,68(r1)
    3c74:	81 81 00 08 	lwz     r12,8(r1)
    3c78:	7c 08 03 a6 	mtlr    r0
    3c7c:	82 61 00 0c 	lwz     r19,12(r1)
    3c80:	82 81 00 10 	lwz     r20,16(r1)
    3c84:	7d 81 81 20 	mtcrf   24,r12
    3c88:	82 a1 00 14 	lwz     r21,20(r1)
    3c8c:	82 c1 00 18 	lwz     r22,24(r1)
    3c90:	82 e1 00 1c 	lwz     r23,28(r1)
    3c94:	83 01 00 20 	lwz     r24,32(r1)
    3c98:	83 21 00 24 	lwz     r25,36(r1)
    3c9c:	83 41 00 28 	lwz     r26,40(r1)
    3ca0:	83 61 00 2c 	lwz     r27,44(r1)
    3ca4:	83 81 00 30 	lwz     r28,48(r1)
    3ca8:	83 a1 00 34 	lwz     r29,52(r1)
    3cac:	83 c1 00 38 	lwz     r30,56(r1)
    3cb0:	83 e1 00 3c 	lwz     r31,60(r1)
    3cb4:	38 21 00 40 	addi    r1,r1,64
    3cb8:	4e 80 00 20 	blr
    3cbc:	81 3c 00 04 	lwz     r9,4(r28)
    3cc0:	7d 5a e8 50 	subf    r10,r26,r29
    3cc4:	7d 5c 52 14 	add     r10,r28,r10
    3cc8:	39 29 ff ff 	addi    r9,r9,-1
    3ccc:	7f 89 f8 00 	cmpw    cr7,r9,r31
    3cd0:	81 2a 00 08 	lwz     r9,8(r10)
    3cd4:	41 9e 00 68 	beq-    cr7,3d3c <__call_exitprocs+0x198>
    3cd8:	93 0a 00 08 	stw     r24,8(r10)
    3cdc:	2f 89 00 00 	cmpwi   cr7,r9,0
    3ce0:	41 be ff 7c 	beq-    cr7,3c5c <__call_exitprocs+0xb8>
    3ce4:	81 1c 01 88 	lwz     r8,392(r28)
    3ce8:	7f 2a f8 30 	slw     r10,r25,r31
    3cec:	82 9c 00 04 	lwz     r20,4(r28)
    3cf0:	7d 47 40 39 	and.    r7,r10,r8
    3cf4:	41 82 00 3c 	beq-    3d30 <__call_exitprocs+0x18c>
    3cf8:	81 1c 01 8c 	lwz     r8,396(r28)
    3cfc:	7d 47 40 39 	and.    r7,r10,r8
    3d00:	40 82 00 44 	bne-    3d44 <__call_exitprocs+0x1a0>
    3d04:	7e c3 b3 78 	mr      r3,r22
    3d08:	80 9d 00 00 	lwz     r4,0(r29)
    3d0c:	7d 29 03 a6 	mtctr   r9
    3d10:	4e 80 04 21 	bctrl
    3d14:	81 3c 00 04 	lwz     r9,4(r28)
    3d18:	7f 89 a0 00 	cmpw    cr7,r9,r20
    3d1c:	40 be ff 08 	bne-    cr7,3c24 <__call_exitprocs+0x80>
    3d20:	81 33 00 00 	lwz     r9,0(r19)
    3d24:	7f 89 e0 00 	cmpw    cr7,r9,r28
    3d28:	41 9e ff 34 	beq+    cr7,3c5c <__call_exitprocs+0xb8>
    3d2c:	4b ff fe f8 	b       3c24 <__call_exitprocs+0x80>
    3d30:	7d 29 03 a6 	mtctr   r9
    3d34:	4e 80 04 21 	bctrl
    3d38:	4b ff ff dc 	b       3d14 <__call_exitprocs+0x170>
    3d3c:	93 fc 00 04 	stw     r31,4(r28)
    3d40:	4b ff ff 9c 	b       3cdc <__call_exitprocs+0x138>
    3d44:	80 7d 00 00 	lwz     r3,0(r29)
    3d48:	7d 29 03 a6 	mtctr   r9
    3d4c:	4e 80 04 21 	bctrl
    3d50:	4b ff ff c4 	b       3d14 <__call_exitprocs+0x170>
    3d54:	81 3c 00 04 	lwz     r9,4(r28)
    3d58:	2f 89 00 00 	cmpwi   cr7,r9,0
    3d5c:	81 3c 00 00 	lwz     r9,0(r28)
    3d60:	40 9e 00 24 	bne-    cr7,3d84 <__call_exitprocs+0x1e0>
    3d64:	2f 89 00 00 	cmpwi   cr7,r9,0
    3d68:	41 9e 00 18 	beq-    cr7,3d80 <__call_exitprocs+0x1dc>
    3d6c:	91 33 00 00 	stw     r9,0(r19)
    3d70:	7f 83 e3 78 	mr      r3,r28
    3d74:	4b ff c2 8d 	bl      0 <_.xy-0x4>
    3d78:	83 93 00 00 	lwz     r28,0(r19)
    3d7c:	4b ff fe b0 	b       3c2c <__call_exitprocs+0x88>
    3d80:	39 20 00 00 	li      r9,0
    3d84:	7f 93 e3 78 	mr      r19,r28
    3d88:	7d 3c 4b 78 	mr      r28,r9
    3d8c:	4b ff fe a0 	b       3c2c <__call_exitprocs+0x88>

00003d90 <quorem>:
    3d90:	7c 08 02 a6 	mflr    r0
    3d94:	94 21 ff d0 	stwu    r1,-48(r1)
    3d98:	93 a1 00 24 	stw     r29,36(r1)
    3d9c:	90 01 00 34 	stw     r0,52(r1)
    3da0:	83 a4 00 10 	lwz     r29,16(r4)
    3da4:	81 23 00 10 	lwz     r9,16(r3)
    3da8:	93 61 00 1c 	stw     r27,28(r1)
    3dac:	7c 7b 1b 78 	mr      r27,r3
    3db0:	7f 9d 48 00 	cmpw    cr7,r29,r9
    3db4:	93 21 00 14 	stw     r25,20(r1)
    3db8:	93 41 00 18 	stw     r26,24(r1)
    3dbc:	38 60 00 00 	li      r3,0
    3dc0:	93 81 00 20 	stw     r28,32(r1)
    3dc4:	93 c1 00 28 	stw     r30,40(r1)
    3dc8:	93 e1 00 2c 	stw     r31,44(r1)
    3dcc:	41 9d 01 ac 	bgt-    cr7,3f78 <quorem+0x1e8>
    3dd0:	39 3d 00 03 	addi    r9,r29,3
    3dd4:	3b e4 00 14 	addi    r31,r4,20
    3dd8:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    3ddc:	3b bd ff ff 	addi    r29,r29,-1
    3de0:	7f 24 4a 14 	add     r25,r4,r9
    3de4:	7d 3b 4a 14 	add     r9,r27,r9
    3de8:	81 59 00 04 	lwz     r10,4(r25)
    3dec:	3b 5b 00 14 	addi    r26,r27,20
    3df0:	83 89 00 04 	lwz     r28,4(r9)
    3df4:	3b 39 00 04 	addi    r25,r25,4
    3df8:	39 4a 00 01 	addi    r10,r10,1
    3dfc:	7f 9c 53 96 	divwu   r28,r28,r10
    3e00:	2f 9c 00 00 	cmpwi   cr7,r28,0
    3e04:	41 9e 00 c4 	beq-    cr7,3ec8 <quorem+0x138>
    3e08:	39 5b 00 10 	addi    r10,r27,16
    3e0c:	7f e9 fb 78 	mr      r9,r31
    3e10:	38 60 00 00 	li      r3,0
    3e14:	38 e0 00 00 	li      r7,0
    3e18:	81 09 00 00 	lwz     r8,0(r9)
    3e1c:	39 29 00 04 	addi    r9,r9,4
    3e20:	84 aa 00 04 	lwzu    r5,4(r10)
    3e24:	7f 99 48 40 	cmplw   cr7,r25,r9
    3e28:	55 0b 04 3e 	clrlwi  r11,r8,16
    3e2c:	55 08 84 3e 	rlwinm  r8,r8,16,16,31
    3e30:	7d 6b e1 d6 	mullw   r11,r11,r28
    3e34:	54 a6 04 3e 	clrlwi  r6,r5,16
    3e38:	7c e6 3a 14 	add     r7,r6,r7
    3e3c:	7d 08 e1 d6 	mullw   r8,r8,r28
    3e40:	7d 63 5a 14 	add     r11,r3,r11
    3e44:	55 66 84 3e 	rlwinm  r6,r11,16,16,31
    3e48:	55 6b 04 3e 	clrlwi  r11,r11,16
    3e4c:	7d 06 42 14 	add     r8,r6,r8
    3e50:	7c cb 38 50 	subf    r6,r11,r7
    3e54:	55 03 04 3e 	clrlwi  r3,r8,16
    3e58:	54 a7 84 3e 	rlwinm  r7,r5,16,16,31
    3e5c:	7c e3 38 50 	subf    r7,r3,r7
    3e60:	7c c3 86 70 	srawi   r3,r6,16
    3e64:	7c e7 1a 14 	add     r7,r7,r3
    3e68:	54 c6 04 3e 	clrlwi  r6,r6,16
    3e6c:	54 e5 80 1e 	rlwinm  r5,r7,16,0,15
    3e70:	55 03 84 3e 	rlwinm  r3,r8,16,16,31
    3e74:	7c a6 33 78 	or      r6,r5,r6
    3e78:	7c e7 86 70 	srawi   r7,r7,16
    3e7c:	90 ca 00 00 	stw     r6,0(r10)
    3e80:	40 9c ff 98 	bge+    cr7,3e18 <quorem+0x88>
    3e84:	39 3d 00 04 	addi    r9,r29,4
    3e88:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    3e8c:	7d 3b 4a 14 	add     r9,r27,r9
    3e90:	81 49 00 04 	lwz     r10,4(r9)
    3e94:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3e98:	40 9e 00 30 	bne-    cr7,3ec8 <quorem+0x138>
    3e9c:	7f 9a 48 40 	cmplw   cr7,r26,r9
    3ea0:	41 bc 00 18 	blt+    cr7,3eb8 <quorem+0x128>
    3ea4:	48 00 00 20 	b       3ec4 <quorem+0x134>
    3ea8:	39 29 ff fc 	addi    r9,r9,-4
    3eac:	3b bd ff ff 	addi    r29,r29,-1
    3eb0:	7f 9a 48 40 	cmplw   cr7,r26,r9
    3eb4:	40 9c 00 10 	bge-    cr7,3ec4 <quorem+0x134>
    3eb8:	81 49 00 00 	lwz     r10,0(r9)
    3ebc:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3ec0:	41 9e ff e8 	beq+    cr7,3ea8 <quorem+0x118>
    3ec4:	93 bb 00 10 	stw     r29,16(r27)
    3ec8:	7f 63 db 78 	mr      r3,r27
    3ecc:	48 00 39 15 	bl      77e0 <__mcmp>
    3ed0:	2f 83 00 00 	cmpwi   cr7,r3,0
    3ed4:	41 9c 00 a0 	blt-    cr7,3f74 <quorem+0x1e4>
    3ed8:	3b 9c 00 01 	addi    r28,r28,1
    3edc:	39 3b 00 10 	addi    r9,r27,16
    3ee0:	39 40 00 00 	li      r10,0
    3ee4:	84 c9 00 04 	lwzu    r6,4(r9)
    3ee8:	80 ff 00 00 	lwz     r7,0(r31)
    3eec:	3b ff 00 04 	addi    r31,r31,4
    3ef0:	54 c8 04 3e 	clrlwi  r8,r6,16
    3ef4:	7f 99 f8 40 	cmplw   cr7,r25,r31
    3ef8:	54 e5 04 3e 	clrlwi  r5,r7,16
    3efc:	7d 48 52 14 	add     r10,r8,r10
    3f00:	7d 05 50 50 	subf    r8,r5,r10
    3f04:	54 e7 84 3e 	rlwinm  r7,r7,16,16,31
    3f08:	54 ca 84 3e 	rlwinm  r10,r6,16,16,31
    3f0c:	7d 05 86 70 	srawi   r5,r8,16
    3f10:	7d 47 50 50 	subf    r10,r7,r10
    3f14:	55 08 04 3e 	clrlwi  r8,r8,16
    3f18:	7d 4a 2a 14 	add     r10,r10,r5
    3f1c:	55 47 80 1e 	rlwinm  r7,r10,16,0,15
    3f20:	7d 4a 86 70 	srawi   r10,r10,16
    3f24:	7c e8 43 78 	or      r8,r7,r8
    3f28:	91 09 00 00 	stw     r8,0(r9)
    3f2c:	40 9c ff b8 	bge+    cr7,3ee4 <quorem+0x154>
    3f30:	39 3d 00 04 	addi    r9,r29,4
    3f34:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    3f38:	7d 3b 4a 14 	add     r9,r27,r9
    3f3c:	81 49 00 04 	lwz     r10,4(r9)
    3f40:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3f44:	40 9e 00 30 	bne-    cr7,3f74 <quorem+0x1e4>
    3f48:	7f 9a 48 40 	cmplw   cr7,r26,r9
    3f4c:	41 bc 00 18 	blt+    cr7,3f64 <quorem+0x1d4>
    3f50:	48 00 00 20 	b       3f70 <quorem+0x1e0>
    3f54:	39 29 ff fc 	addi    r9,r9,-4
    3f58:	3b bd ff ff 	addi    r29,r29,-1
    3f5c:	7f 9a 48 40 	cmplw   cr7,r26,r9
    3f60:	40 9c 00 10 	bge-    cr7,3f70 <quorem+0x1e0>
    3f64:	81 49 00 00 	lwz     r10,0(r9)
    3f68:	2f 8a 00 00 	cmpwi   cr7,r10,0
    3f6c:	41 9e ff e8 	beq+    cr7,3f54 <quorem+0x1c4>
    3f70:	93 bb 00 10 	stw     r29,16(r27)
    3f74:	7f 83 e3 78 	mr      r3,r28
    3f78:	80 01 00 34 	lwz     r0,52(r1)
    3f7c:	83 21 00 14 	lwz     r25,20(r1)
    3f80:	7c 08 03 a6 	mtlr    r0
    3f84:	83 41 00 18 	lwz     r26,24(r1)
    3f88:	83 61 00 1c 	lwz     r27,28(r1)
    3f8c:	83 81 00 20 	lwz     r28,32(r1)
    3f90:	83 a1 00 24 	lwz     r29,36(r1)
    3f94:	83 c1 00 28 	lwz     r30,40(r1)
    3f98:	83 e1 00 2c 	lwz     r31,44(r1)
    3f9c:	38 21 00 30 	addi    r1,r1,48
    3fa0:	4e 80 00 20 	blr
    3fa4:	00 01 0d 5c 	.long 0x10d5c

00003fa8 <_dtoa_r>:
    3fa8:	7c 08 02 a6 	mflr    r0
    3fac:	94 21 fe d0 	stwu    r1,-304(r1)
    3fb0:	42 9f 00 05 	bcl-    20,4*cr7+so,3fb4 <_dtoa_r+0xc>
    3fb4:	7d 80 00 26 	mfcr    r12
    3fb8:	93 c1 01 20 	stw     r30,288(r1)
    3fbc:	7f c8 02 a6 	mflr    r30
    3fc0:	90 01 01 34 	stw     r0,308(r1)
    3fc4:	92 01 00 e8 	stw     r16,232(r1)
    3fc8:	81 23 00 40 	lwz     r9,64(r3)
    3fcc:	80 1e ff f0 	lwz     r0,-16(r30)
    3fd0:	2f 89 00 00 	cmpwi   cr7,r9,0
    3fd4:	d8 21 00 d0 	stfd    f1,208(r1)
    3fd8:	92 21 00 ec 	stw     r17,236(r1)
    3fdc:	7f c0 f2 14 	add     r30,r0,r30
    3fe0:	92 81 00 f8 	stw     r20,248(r1)
    3fe4:	7c b4 2b 78 	mr      r20,r5
    3fe8:	92 c1 01 00 	stw     r22,256(r1)
    3fec:	7c d6 33 78 	mr      r22,r6
    3ff0:	93 21 01 0c 	stw     r25,268(r1)
    3ff4:	7d 19 43 78 	mr      r25,r8
    3ff8:	93 41 01 10 	stw     r26,272(r1)
    3ffc:	7c 9a 23 78 	mr      r26,r4
    4000:	93 81 01 18 	stw     r28,280(r1)
    4004:	7c fc 3b 78 	mr      r28,r7
    4008:	93 e1 01 24 	stw     r31,292(r1)
    400c:	7c 7f 1b 78 	mr      r31,r3
    4010:	db e1 01 28 	stfd    f31,296(r1)
    4014:	91 c1 00 e0 	stw     r14,224(r1)
    4018:	91 e1 00 e4 	stw     r15,228(r1)
    401c:	92 41 00 f0 	stw     r18,240(r1)
    4020:	92 61 00 f4 	stw     r19,244(r1)
    4024:	92 a1 00 fc 	stw     r21,252(r1)
    4028:	92 e1 01 04 	stw     r23,260(r1)
    402c:	93 01 01 08 	stw     r24,264(r1)
    4030:	93 61 01 14 	stw     r27,276(r1)
    4034:	93 a1 01 1c 	stw     r29,284(r1)
    4038:	91 81 00 dc 	stw     r12,220(r1)
    403c:	82 01 00 d0 	lwz     r16,208(r1)
    4040:	82 21 00 d4 	lwz     r17,212(r1)
    4044:	41 9e 00 28 	beq-    cr7,406c <_dtoa_r+0xc4>
    4048:	81 43 00 44 	lwz     r10,68(r3)
    404c:	39 00 00 01 	li      r8,1
    4050:	7d 24 4b 78 	mr      r4,r9
    4054:	7d 08 50 30 	slw     r8,r8,r10
    4058:	91 49 00 04 	stw     r10,4(r9)
    405c:	91 09 00 08 	stw     r8,8(r9)
    4060:	48 00 2e 8d 	bl      6eec <_Bfree>
    4064:	39 20 00 00 	li      r9,0
    4068:	91 3f 00 40 	stw     r9,64(r31)
    406c:	7e 1d 83 79 	mr.     r29,r16
    4070:	41 80 00 f4 	blt-    4164 <_dtoa_r+0x1bc>
    4074:	39 20 00 00 	li      r9,0
    4078:	91 3c 00 00 	stw     r9,0(r28)
    407c:	57 aa 00 56 	rlwinm  r10,r29,0,1,11
    4080:	3d 20 7f f0 	lis     r9,32752
    4084:	7f 8a 48 00 	cmpw    cr7,r10,r9
    4088:	41 9e 00 a4 	beq-    cr7,412c <_dtoa_r+0x184>
    408c:	81 de 80 0c 	lwz     r14,-32756(r30)
    4090:	92 01 00 d0 	stw     r16,208(r1)
    4094:	92 21 00 d4 	stw     r17,212(r1)
    4098:	c0 0e 00 00 	lfs     f0,0(r14)
    409c:	cb e1 00 d0 	lfd     f31,208(r1)
    40a0:	ff 9f 00 00 	fcmpu   cr7,f31,f0
    40a4:	40 9e 00 d4 	bne-    cr7,4178 <_dtoa_r+0x1d0>
    40a8:	2f 99 00 00 	cmpwi   cr7,r25,0
    40ac:	39 20 00 01 	li      r9,1
    40b0:	91 36 00 00 	stw     r9,0(r22)
    40b4:	41 9e 05 04 	beq-    cr7,45b8 <_dtoa_r+0x610>
    40b8:	83 7e 80 10 	lwz     r27,-32752(r30)
    40bc:	93 79 00 00 	stw     r27,0(r25)
    40c0:	3b 7b ff ff 	addi    r27,r27,-1
    40c4:	80 01 01 34 	lwz     r0,308(r1)
    40c8:	7f 63 db 78 	mr      r3,r27
    40cc:	81 81 00 dc 	lwz     r12,220(r1)
    40d0:	7c 08 03 a6 	mtlr    r0
    40d4:	81 c1 00 e0 	lwz     r14,224(r1)
    40d8:	81 e1 00 e4 	lwz     r15,228(r1)
    40dc:	7d 83 81 20 	mtcrf   56,r12
    40e0:	82 01 00 e8 	lwz     r16,232(r1)
    40e4:	82 21 00 ec 	lwz     r17,236(r1)
    40e8:	82 41 00 f0 	lwz     r18,240(r1)
    40ec:	82 61 00 f4 	lwz     r19,244(r1)
    40f0:	82 81 00 f8 	lwz     r20,248(r1)
    40f4:	82 a1 00 fc 	lwz     r21,252(r1)
    40f8:	82 c1 01 00 	lwz     r22,256(r1)
    40fc:	82 e1 01 04 	lwz     r23,260(r1)
    4100:	83 01 01 08 	lwz     r24,264(r1)
    4104:	83 21 01 0c 	lwz     r25,268(r1)
    4108:	83 41 01 10 	lwz     r26,272(r1)
    410c:	83 61 01 14 	lwz     r27,276(r1)
    4110:	83 81 01 18 	lwz     r28,280(r1)
    4114:	83 a1 01 1c 	lwz     r29,284(r1)
    4118:	83 c1 01 20 	lwz     r30,288(r1)
    411c:	83 e1 01 24 	lwz     r31,292(r1)
    4120:	cb e1 01 28 	lfd     f31,296(r1)
    4124:	38 21 01 30 	addi    r1,r1,304
    4128:	4e 80 00 20 	blr
    412c:	2f 91 00 00 	cmpwi   cr7,r17,0
    4130:	39 20 27 0f 	li      r9,9999
    4134:	91 36 00 00 	stw     r9,0(r22)
    4138:	41 9e 04 0c 	beq-    cr7,4544 <_dtoa_r+0x59c>
    413c:	83 7e 80 04 	lwz     r27,-32764(r30)
    4140:	2f 99 00 00 	cmpwi   cr7,r25,0
    4144:	41 be ff 80 	beq-    cr7,40c4 <_dtoa_r+0x11c>
    4148:	7f 69 db 78 	mr      r9,r27
    414c:	8d 49 00 03 	lbzu    r10,3(r9)
    4150:	2f 8a 00 00 	cmpwi   cr7,r10,0
    4154:	41 9e 00 08 	beq-    cr7,415c <_dtoa_r+0x1b4>
    4158:	39 3b 00 08 	addi    r9,r27,8
    415c:	91 39 00 00 	stw     r9,0(r25)
    4160:	4b ff ff 64 	b       40c4 <_dtoa_r+0x11c>
    4164:	57 bd 00 7e 	clrlwi  r29,r29,1
    4168:	39 20 00 01 	li      r9,1
    416c:	91 3c 00 00 	stw     r9,0(r28)
    4170:	7f b0 eb 78 	mr      r16,r29
    4174:	4b ff ff 08 	b       407c <_dtoa_r+0xd4>
    4178:	fc 20 f8 90 	fmr     f1,f31
    417c:	7f e3 fb 78 	mr      r3,r31
    4180:	38 81 00 08 	addi    r4,r1,8
    4184:	38 a1 00 0c 	addi    r5,r1,12
    4188:	48 00 3a b9 	bl      7c40 <__d2b>
    418c:	57 a9 65 7f 	rlwinm. r9,r29,12,21,31
    4190:	7c 7c 1b 78 	mr      r28,r3
    4194:	41 82 03 c0 	beq-    4554 <_dtoa_r+0x5ac>
    4198:	db e1 00 b0 	stfd    f31,176(r1)
    419c:	39 29 fc 01 	addi    r9,r9,-1023
    41a0:	80 e1 00 0c 	lwz     r7,12(r1)
    41a4:	81 01 00 b0 	lwz     r8,176(r1)
    41a8:	55 0a 03 3e 	clrlwi  r10,r8,12
    41ac:	65 4a 3f f0 	oris    r10,r10,16368
    41b0:	91 41 00 b0 	stw     r10,176(r1)
    41b4:	39 40 00 00 	li      r10,0
    41b8:	91 41 00 c8 	stw     r10,200(r1)
    41bc:	6d 26 80 00 	xoris   r6,r9,32768
    41c0:	3d 40 43 30 	lis     r10,17200
    41c4:	90 c1 00 24 	stw     r6,36(r1)
    41c8:	80 de 80 1c 	lwz     r6,-32740(r30)
    41cc:	c8 01 00 b0 	lfd     f0,176(r1)
    41d0:	c1 86 00 00 	lfs     f12,0(r6)
    41d4:	91 41 00 20 	stw     r10,32(r1)
    41d8:	80 de 80 24 	lwz     r6,-32732(r30)
    41dc:	fd 80 60 28 	fsub    f12,f0,f12
    41e0:	81 1e 80 18 	lwz     r8,-32744(r30)
    41e4:	c9 66 00 00 	lfd     f11,0(r6)
    41e8:	c8 01 00 20 	lfd     f0,32(r1)
    41ec:	80 de 80 20 	lwz     r6,-32736(r30)
    41f0:	c1 a8 00 00 	lfs     f13,0(r8)
    41f4:	fd 40 68 28 	fsub    f10,f0,f13
    41f8:	c8 06 00 00 	lfd     f0,0(r6)
    41fc:	80 de 80 28 	lwz     r6,-32728(r30)
    4200:	fd 8c 58 3a 	fmadd   f12,f12,f0,f11
    4204:	c1 6e 00 00 	lfs     f11,0(r14)
    4208:	c8 06 00 00 	lfd     f0,0(r6)
    420c:	fc 0a 60 3a 	fmadd   f0,f10,f0,f12
    4210:	fd 80 00 1e 	fctiwz  f12,f0
    4214:	ff 80 58 00 	fcmpu   cr7,f0,f11
    4218:	d9 81 00 28 	stfd    f12,40(r1)
    421c:	82 e1 00 2c 	lwz     r23,44(r1)
    4220:	41 9c 05 94 	blt-    cr7,47b4 <_dtoa_r+0x80c>
    4224:	2b 97 00 16 	cmplwi  cr7,r23,22
    4228:	39 00 00 01 	li      r8,1
    422c:	91 01 00 b0 	stw     r8,176(r1)
    4230:	41 9d 00 30 	bgt-    cr7,4260 <_dtoa_r+0x2b8>
    4234:	81 5e 80 2c 	lwz     r10,-32724(r30)
    4238:	56 e6 18 38 	rlwinm  r6,r23,3,0,28
    423c:	92 01 00 d0 	stw     r16,208(r1)
    4240:	92 21 00 d4 	stw     r17,212(r1)
    4244:	7c 0a 34 ae 	lfdx    f0,r10,r6
    4248:	c9 01 00 d0 	lfd     f8,208(r1)
    424c:	ff 80 40 00 	fcmpu   cr7,f0,f8
    4250:	40 9d 08 20 	ble-    cr7,4a70 <_dtoa_r+0xac8>
    4254:	39 00 00 00 	li      r8,0
    4258:	3a f7 ff ff 	addi    r23,r23,-1
    425c:	91 01 00 b0 	stw     r8,176(r1)
    4260:	7c e9 38 50 	subf    r7,r9,r7
    4264:	3a 60 00 00 	li      r19,0
    4268:	35 e7 ff ff 	addic.  r15,r7,-1
    426c:	41 80 05 74 	blt-    47e0 <_dtoa_r+0x838>
    4270:	2e 17 00 00 	cmpwi   cr4,r23,0
    4274:	41 90 05 2c 	blt-    cr4,47a0 <_dtoa_r+0x7f8>
    4278:	92 e1 00 c0 	stw     r23,192(r1)
    427c:	7d ef ba 14 	add     r15,r15,r23
    4280:	3b 00 00 00 	li      r24,0
    4284:	2b 9a 00 09 	cmplwi  cr7,r26,9
    4288:	41 9d 03 38 	bgt-    cr7,45c0 <_dtoa_r+0x618>
    428c:	2f 9a 00 05 	cmpwi   cr7,r26,5
    4290:	38 a0 00 01 	li      r5,1
    4294:	40 9d 00 0c 	ble-    cr7,42a0 <_dtoa_r+0x2f8>
    4298:	3b 5a ff fc 	addi    r26,r26,-4
    429c:	38 a0 00 00 	li      r5,0
    42a0:	2f 9a 00 03 	cmpwi   cr7,r26,3
    42a4:	41 9e 0b 44 	beq-    cr7,4de8 <_dtoa_r+0xe40>
    42a8:	41 9d 08 bc 	bgt-    cr7,4b64 <_dtoa_r+0xbbc>
    42ac:	2f 9a 00 02 	cmpwi   cr7,r26,2
    42b0:	40 be 03 14 	bne+    cr7,45c4 <_dtoa_r+0x61c>
    42b4:	3a 40 00 00 	li      r18,0
    42b8:	2f 94 00 00 	cmpwi   cr7,r20,0
    42bc:	40 9d 0b 64 	ble-    cr7,4e20 <_dtoa_r+0xe78>
    42c0:	92 81 00 c4 	stw     r20,196(r1)
    42c4:	7e 9d a3 78 	mr      r29,r20
    42c8:	7e 95 a3 78 	mr      r21,r20
    42cc:	2b 9d 00 17 	cmplwi  cr7,r29,23
    42d0:	39 20 00 00 	li      r9,0
    42d4:	91 3f 00 44 	stw     r9,68(r31)
    42d8:	38 80 00 00 	li      r4,0
    42dc:	40 9d 00 28 	ble-    cr7,4304 <_dtoa_r+0x35c>
    42e0:	39 40 00 01 	li      r10,1
    42e4:	39 20 00 04 	li      r9,4
    42e8:	55 29 08 3c 	rlwinm  r9,r9,1,0,30
    42ec:	38 89 00 14 	addi    r4,r9,20
    42f0:	7f 84 e8 40 	cmplw   cr7,r4,r29
    42f4:	7d 44 53 78 	mr      r4,r10
    42f8:	39 4a 00 01 	addi    r10,r10,1
    42fc:	40 9d ff ec 	ble+    cr7,42e8 <_dtoa_r+0x340>
    4300:	90 9f 00 44 	stw     r4,68(r31)
    4304:	7f e3 fb 78 	mr      r3,r31
    4308:	90 a1 00 cc 	stw     r5,204(r1)
    430c:	48 00 2b 19 	bl      6e24 <_Balloc>
    4310:	2b 9d 00 0e 	cmplwi  cr7,r29,14
    4314:	7c 7b 1b 78 	mr      r27,r3
    4318:	90 7f 00 40 	stw     r3,64(r31)
    431c:	80 a1 00 cc 	lwz     r5,204(r1)
    4320:	41 9d 02 d4 	bgt-    cr7,45f4 <_dtoa_r+0x64c>
    4324:	2f 85 00 00 	cmpwi   cr7,r5,0
    4328:	41 9e 02 cc 	beq-    cr7,45f4 <_dtoa_r+0x64c>
    432c:	92 01 00 d0 	stw     r16,208(r1)
    4330:	92 21 00 d4 	stw     r17,212(r1)
    4334:	c9 21 00 d0 	lfd     f9,208(r1)
    4338:	40 91 0b 5c 	ble-    cr4,4e94 <_dtoa_r+0xeec>
    433c:	7e e9 26 70 	srawi   r9,r23,4
    4340:	56 e5 1e 78 	rlwinm  r5,r23,3,25,28
    4344:	71 2a 00 10 	andi.   r10,r9,16
    4348:	81 5e 80 2c 	lwz     r10,-32724(r30)
    434c:	7c 0a 2c ae 	lfdx    f0,r10,r5
    4350:	41 82 0a c4 	beq-    4e14 <_dtoa_r+0xe6c>
    4354:	81 5e 80 30 	lwz     r10,-32720(r30)
    4358:	55 29 07 3e 	clrlwi  r9,r9,28
    435c:	38 a0 00 03 	li      r5,3
    4360:	c9 0a 00 20 	lfd     f8,32(r10)
    4364:	fd a9 40 24 	fdiv    f13,f9,f8
    4368:	2f 89 00 00 	cmpwi   cr7,r9,0
    436c:	41 9e 00 2c 	beq-    cr7,4398 <_dtoa_r+0x3f0>
    4370:	81 5e 80 30 	lwz     r10,-32720(r30)
    4374:	55 28 07 fe 	clrlwi  r8,r9,31
    4378:	7d 29 0e 71 	srawi.  r9,r9,1
    437c:	2f 88 00 00 	cmpwi   cr7,r8,0
    4380:	41 9e 00 10 	beq-    cr7,4390 <_dtoa_r+0x3e8>
    4384:	c9 0a 00 00 	lfd     f8,0(r10)
    4388:	38 a5 00 01 	addi    r5,r5,1
    438c:	fc 00 02 32 	fmul    f0,f0,f8
    4390:	39 4a 00 08 	addi    r10,r10,8
    4394:	40 82 ff e0 	bne+    4374 <_dtoa_r+0x3cc>
    4398:	fc 0d 00 24 	fdiv    f0,f13,f0
    439c:	81 01 00 b0 	lwz     r8,176(r1)
    43a0:	2f 88 00 00 	cmpwi   cr7,r8,0
    43a4:	41 9e 00 14 	beq-    cr7,43b8 <_dtoa_r+0x410>
    43a8:	81 3e 80 34 	lwz     r9,-32716(r30)
    43ac:	c1 a9 00 00 	lfs     f13,0(r9)
    43b0:	ff 80 68 00 	fcmpu   cr7,f0,f13
    43b4:	41 9c 0c c4 	blt-    cr7,5078 <_dtoa_r+0x10d0>
    43b8:	3d 20 43 30 	lis     r9,17200
    43bc:	6c a5 80 00 	xoris   r5,r5,32768
    43c0:	91 21 00 40 	stw     r9,64(r1)
    43c4:	2f 95 00 00 	cmpwi   cr7,r21,0
    43c8:	90 a1 00 44 	stw     r5,68(r1)
    43cc:	81 1e 80 18 	lwz     r8,-32744(r30)
    43d0:	c9 01 00 40 	lfd     f8,64(r1)
    43d4:	c1 88 00 00 	lfs     f12,0(r8)
    43d8:	81 3e 80 3c 	lwz     r9,-32708(r30)
    43dc:	fd 88 60 28 	fsub    f12,f8,f12
    43e0:	c1 a9 00 00 	lfs     f13,0(r9)
    43e4:	fd ac 68 3a 	fmadd   f13,f12,f0,f13
    43e8:	d9 a1 00 d0 	stfd    f13,208(r1)
    43ec:	81 41 00 d0 	lwz     r10,208(r1)
    43f0:	81 61 00 d4 	lwz     r11,212(r1)
    43f4:	3d 4a fc c0 	addis   r10,r10,-832
    43f8:	41 9e 09 a0 	beq-    cr7,4d98 <_dtoa_r+0xdf0>
    43fc:	7e e4 bb 78 	mr      r4,r23
    4400:	7e ac ab 78 	mr      r12,r21
    4404:	2f 92 00 00 	cmpwi   cr7,r18,0
    4408:	41 9e 0b 34 	beq-    cr7,4f3c <_dtoa_r+0xf94>
    440c:	81 3e 80 2c 	lwz     r9,-32724(r30)
    4410:	38 ac ff ff 	addi    r5,r12,-1
    4414:	54 a5 18 38 	rlwinm  r5,r5,3,0,28
    4418:	fd a0 00 1e 	fctiwz  f13,f0
    441c:	7d 89 2c ae 	lfdx    f12,r9,r5
    4420:	3c a0 43 30 	lis     r5,17200
    4424:	81 3e 80 44 	lwz     r9,-32700(r30)
    4428:	3b bb 00 01 	addi    r29,r27,1
    442c:	d9 a1 00 48 	stfd    f13,72(r1)
    4430:	c1 09 00 00 	lfs     f8,0(r9)
    4434:	81 1e 80 18 	lwz     r8,-32744(r30)
    4438:	fd 08 60 24 	fdiv    f8,f8,f12
    443c:	81 21 00 4c 	lwz     r9,76(r1)
    4440:	90 a1 00 50 	stw     r5,80(r1)
    4444:	c1 48 00 00 	lfs     f10,0(r8)
    4448:	6d 25 80 00 	xoris   r5,r9,32768
    444c:	90 a1 00 54 	stw     r5,84(r1)
    4450:	39 29 00 30 	addi    r9,r9,48
    4454:	91 41 00 d0 	stw     r10,208(r1)
    4458:	55 29 06 3e 	clrlwi  r9,r9,24
    445c:	c9 61 00 50 	lfd     f11,80(r1)
    4460:	91 61 00 d4 	stw     r11,212(r1)
    4464:	c9 a1 00 d0 	lfd     f13,208(r1)
    4468:	99 3b 00 00 	stb     r9,0(r27)
    446c:	fd 80 50 90 	fmr     f12,f10
    4470:	fd a8 68 28 	fsub    f13,f8,f13
    4474:	fd 8b 60 28 	fsub    f12,f11,f12
    4478:	fc 00 60 28 	fsub    f0,f0,f12
    447c:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    4480:	41 9d 00 94 	bgt-    cr7,4514 <_dtoa_r+0x56c>
    4484:	80 7e 80 34 	lwz     r3,-32716(r30)
    4488:	c1 83 00 00 	lfs     f12,0(r3)
    448c:	fd 8c 00 28 	fsub    f12,f12,f0
    4490:	ff 8d 60 00 	fcmpu   cr7,f13,f12
    4494:	41 9d 0c ac 	bgt-    cr7,5140 <_dtoa_r+0x1198>
    4498:	2f 8c 00 01 	cmpwi   cr7,r12,1
    449c:	40 9d 09 e8 	ble-    cr7,4e84 <_dtoa_r+0xedc>
    44a0:	80 be 80 38 	lwz     r5,-32712(r30)
    44a4:	7d 9b 62 14 	add     r12,r27,r12
    44a8:	7d 9d 60 50 	subf    r12,r29,r12
    44ac:	c1 85 00 00 	lfs     f12,0(r5)
    44b0:	7d 89 03 a6 	mtctr   r12
    44b4:	3c a0 43 30 	lis     r5,17200
    44b8:	48 00 00 18 	b       44d0 <_dtoa_r+0x528>
    44bc:	c1 63 00 00 	lfs     f11,0(r3)
    44c0:	fd 6b 00 28 	fsub    f11,f11,f0
    44c4:	ff 8b 68 00 	fcmpu   cr7,f11,f13
    44c8:	41 9c 0c 78 	blt-    cr7,5140 <_dtoa_r+0x1198>
    44cc:	42 40 09 b8 	bdz-    4e84 <_dtoa_r+0xedc>
    44d0:	fc 00 03 32 	fmul    f0,f0,f12
    44d4:	90 a1 00 60 	stw     r5,96(r1)
    44d8:	fd ad 03 32 	fmul    f13,f13,f12
    44dc:	fd 60 00 1e 	fctiwz  f11,f0
    44e0:	d9 61 00 58 	stfd    f11,88(r1)
    44e4:	81 21 00 5c 	lwz     r9,92(r1)
    44e8:	6d 2a 80 00 	xoris   r10,r9,32768
    44ec:	39 29 00 30 	addi    r9,r9,48
    44f0:	91 41 00 64 	stw     r10,100(r1)
    44f4:	55 29 06 3e 	clrlwi  r9,r9,24
    44f8:	c9 01 00 60 	lfd     f8,96(r1)
    44fc:	99 3d 00 00 	stb     r9,0(r29)
    4500:	3b bd 00 01 	addi    r29,r29,1
    4504:	fd 68 50 28 	fsub    f11,f8,f10
    4508:	fc 00 58 28 	fsub    f0,f0,f11
    450c:	ff 80 68 00 	fcmpu   cr7,f0,f13
    4510:	40 9c ff ac 	bge+    cr7,44bc <_dtoa_r+0x514>
    4514:	7c 97 23 78 	mr      r23,r4
    4518:	7f e3 fb 78 	mr      r3,r31
    451c:	7f 84 e3 78 	mr      r4,r28
    4520:	48 00 29 cd 	bl      6eec <_Bfree>
    4524:	2f 99 00 00 	cmpwi   cr7,r25,0
    4528:	3a f7 00 01 	addi    r23,r23,1
    452c:	39 20 00 00 	li      r9,0
    4530:	99 3d 00 00 	stb     r9,0(r29)
    4534:	92 f6 00 00 	stw     r23,0(r22)
    4538:	41 be fb 8c 	beq-    cr7,40c4 <_dtoa_r+0x11c>
    453c:	93 b9 00 00 	stw     r29,0(r25)
    4540:	4b ff fb 84 	b       40c4 <_dtoa_r+0x11c>
    4544:	57 a8 03 3f 	clrlwi. r8,r29,12
    4548:	40 a2 fb f4 	bne-    413c <_dtoa_r+0x194>
    454c:	83 7e 80 00 	lwz     r27,-32768(r30)
    4550:	4b ff fb f0 	b       4140 <_dtoa_r+0x198>
    4554:	80 e1 00 0c 	lwz     r7,12(r1)
    4558:	81 21 00 08 	lwz     r9,8(r1)
    455c:	7d 27 4a 14 	add     r9,r7,r9
    4560:	2f 89 fb ef 	cmpwi   cr7,r9,-1041
    4564:	41 9c 05 00 	blt-    cr7,4a64 <_dtoa_r+0xabc>
    4568:	20 c9 fc 0e 	subfic  r6,r9,-1010
    456c:	39 49 04 12 	addi    r10,r9,1042
    4570:	7f bd 30 30 	slw     r29,r29,r6
    4574:	7e 2a 54 30 	srw     r10,r17,r10
    4578:	7f bd 53 78 	or      r29,r29,r10
    457c:	3d 40 43 30 	lis     r10,17200
    4580:	93 a1 00 1c 	stw     r29,28(r1)
    4584:	91 41 00 18 	stw     r10,24(r1)
    4588:	39 00 00 01 	li      r8,1
    458c:	81 5e 80 14 	lwz     r10,-32748(r30)
    4590:	39 29 ff ff 	addi    r9,r9,-1
    4594:	c9 01 00 18 	lfd     f8,24(r1)
    4598:	c0 0a 00 00 	lfs     f0,0(r10)
    459c:	91 01 00 c8 	stw     r8,200(r1)
    45a0:	fc 08 00 28 	fsub    f0,f8,f0
    45a4:	d8 01 00 b0 	stfd    f0,176(r1)
    45a8:	81 41 00 b0 	lwz     r10,176(r1)
    45ac:	3d 4a fe 10 	addis   r10,r10,-496
    45b0:	91 41 00 b0 	stw     r10,176(r1)
    45b4:	4b ff fc 08 	b       41bc <_dtoa_r+0x214>
    45b8:	83 7e 80 08 	lwz     r27,-32760(r30)
    45bc:	4b ff fb 08 	b       40c4 <_dtoa_r+0x11c>
    45c0:	3b 40 00 00 	li      r26,0
    45c4:	39 20 00 00 	li      r9,0
    45c8:	7f e3 fb 78 	mr      r3,r31
    45cc:	91 3f 00 44 	stw     r9,68(r31)
    45d0:	38 80 00 00 	li      r4,0
    45d4:	3a a0 ff ff 	li      r21,-1
    45d8:	3a 80 00 00 	li      r20,0
    45dc:	48 00 28 49 	bl      6e24 <_Balloc>
    45e0:	39 20 ff ff 	li      r9,-1
    45e4:	90 7f 00 40 	stw     r3,64(r31)
    45e8:	7c 7b 1b 78 	mr      r27,r3
    45ec:	91 21 00 c4 	stw     r9,196(r1)
    45f0:	3a 40 00 01 	li      r18,1
    45f4:	81 21 00 08 	lwz     r9,8(r1)
    45f8:	2f 89 00 00 	cmpwi   cr7,r9,0
    45fc:	41 9c 01 58 	blt-    cr7,4754 <_dtoa_r+0x7ac>
    4600:	2f 97 00 0e 	cmpwi   cr7,r23,14
    4604:	41 9d 01 50 	bgt-    cr7,4754 <_dtoa_r+0x7ac>
    4608:	2f 94 00 00 	cmpwi   cr7,r20,0
    460c:	81 3e 80 2c 	lwz     r9,-32724(r30)
    4610:	56 ea 18 38 	rlwinm  r10,r23,3,0,28
    4614:	7d a9 54 ae 	lfdx    f13,r9,r10
    4618:	41 9c 05 f0 	blt-    cr7,4c08 <_dtoa_r+0xc60>
    461c:	92 01 00 d0 	stw     r16,208(r1)
    4620:	3d 20 43 30 	lis     r9,17200
    4624:	92 21 00 d4 	stw     r17,212(r1)
    4628:	2f 95 00 01 	cmpwi   cr7,r21,1
    462c:	81 1e 80 18 	lwz     r8,-32744(r30)
    4630:	3b bb 00 01 	addi    r29,r27,1
    4634:	c9 81 00 d0 	lfd     f12,208(r1)
    4638:	91 21 00 90 	stw     r9,144(r1)
    463c:	fd 6c 68 24 	fdiv    f11,f12,f13
    4640:	c1 48 00 00 	lfs     f10,0(r8)
    4644:	fd 60 58 1e 	fctiwz  f11,f11
    4648:	fc 00 50 90 	fmr     f0,f10
    464c:	d9 61 00 88 	stfd    f11,136(r1)
    4650:	81 41 00 8c 	lwz     r10,140(r1)
    4654:	6d 49 80 00 	xoris   r9,r10,32768
    4658:	91 21 00 94 	stw     r9,148(r1)
    465c:	39 2a 00 30 	addi    r9,r10,48
    4660:	c9 61 00 90 	lfd     f11,144(r1)
    4664:	99 3b 00 00 	stb     r9,0(r27)
    4668:	fc 0b 00 28 	fsub    f0,f11,f0
    466c:	fc 00 00 50 	fneg    f0,f0
    4670:	fc 00 63 7a 	fmadd   f0,f0,f13,f12
    4674:	41 9e 00 84 	beq-    cr7,46f8 <_dtoa_r+0x750>
    4678:	80 be 80 38 	lwz     r5,-32712(r30)
    467c:	c1 8e 00 00 	lfs     f12,0(r14)
    4680:	c1 65 00 00 	lfs     f11,0(r5)
    4684:	fc 00 02 f2 	fmul    f0,f0,f11
    4688:	ff 80 60 00 	fcmpu   cr7,f0,f12
    468c:	41 be fe 8c 	beq-    cr7,4518 <_dtoa_r+0x570>
    4690:	3a b5 ff ff 	addi    r21,r21,-1
    4694:	39 3b 00 02 	addi    r9,r27,2
    4698:	3c c0 43 30 	lis     r6,17200
    469c:	7e a9 03 a6 	mtctr   r21
    46a0:	48 00 00 18 	b       46b8 <_dtoa_r+0x710>
    46a4:	c1 65 00 00 	lfs     f11,0(r5)
    46a8:	c1 8e 00 00 	lfs     f12,0(r14)
    46ac:	fc 00 02 f2 	fmul    f0,f0,f11
    46b0:	ff 80 60 00 	fcmpu   cr7,f0,f12
    46b4:	41 be fe 64 	beq-    cr7,4518 <_dtoa_r+0x570>
    46b8:	fd 80 68 24 	fdiv    f12,f0,f13
    46bc:	90 c1 00 a0 	stw     r6,160(r1)
    46c0:	7d 3d 4b 78 	mr      r29,r9
    46c4:	fd 80 60 1e 	fctiwz  f12,f12
    46c8:	d9 81 00 98 	stfd    f12,152(r1)
    46cc:	81 41 00 9c 	lwz     r10,156(r1)
    46d0:	6d 47 80 00 	xoris   r7,r10,32768
    46d4:	90 e1 00 a4 	stw     r7,164(r1)
    46d8:	38 ea 00 30 	addi    r7,r10,48
    46dc:	c9 81 00 a0 	lfd     f12,160(r1)
    46e0:	98 e9 ff ff 	stb     r7,-1(r9)
    46e4:	39 29 00 01 	addi    r9,r9,1
    46e8:	fd 8c 50 28 	fsub    f12,f12,f10
    46ec:	fd 80 60 50 	fneg    f12,f12
    46f0:	fc 0c 03 7a 	fmadd   f0,f12,f13,f0
    46f4:	42 00 ff b0 	bdnz+   46a4 <_dtoa_r+0x6fc>
    46f8:	fc 00 00 2a 	fadd    f0,f0,f0
    46fc:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    4700:	41 9c 00 10 	blt-    cr7,4710 <_dtoa_r+0x768>
    4704:	40 be fe 14 	bne-    cr7,4518 <_dtoa_r+0x570>
    4708:	71 48 00 01 	andi.   r8,r10,1
    470c:	41 a2 fe 0c 	beq-    4518 <_dtoa_r+0x570>
    4710:	89 3d ff ff 	lbz     r9,-1(r29)
    4714:	7d 5b e8 50 	subf    r10,r27,r29
    4718:	7d 49 03 a6 	mtctr   r10
    471c:	48 00 00 0c 	b       4728 <_dtoa_r+0x780>
    4720:	89 2a ff ff 	lbz     r9,-1(r10)
    4724:	7d 5d 53 78 	mr      r29,r10
    4728:	2f 89 00 39 	cmpwi   cr7,r9,57
    472c:	39 5d ff ff 	addi    r10,r29,-1
    4730:	40 9e 09 2c 	bne-    cr7,505c <_dtoa_r+0x10b4>
    4734:	42 00 ff ec 	bdnz+   4720 <_dtoa_r+0x778>
    4738:	39 20 00 30 	li      r9,48
    473c:	7f 6a db 78 	mr      r10,r27
    4740:	99 3b 00 00 	stb     r9,0(r27)
    4744:	39 20 00 31 	li      r9,49
    4748:	3a f7 00 01 	addi    r23,r23,1
    474c:	99 2a 00 00 	stb     r9,0(r10)
    4750:	4b ff fd c8 	b       4518 <_dtoa_r+0x570>
    4754:	2e 12 00 00 	cmpwi   cr4,r18,0
    4758:	2d 1a 00 01 	cmpwi   cr2,r26,1
    475c:	41 92 00 90 	beq-    cr4,47ec <_dtoa_r+0x844>
    4760:	40 89 05 24 	ble-    cr2,4c84 <_dtoa_r+0xcdc>
    4764:	39 d5 ff ff 	addi    r14,r21,-1
    4768:	7f 98 70 00 	cmpw    cr7,r24,r14
    476c:	41 9c 06 8c 	blt-    cr7,4df8 <_dtoa_r+0xe50>
    4770:	7d ce c0 50 	subf    r14,r14,r24
    4774:	2f 95 00 00 	cmpwi   cr7,r21,0
    4778:	7e 7d 9b 78 	mr      r29,r19
    477c:	7e a9 ab 78 	mr      r9,r21
    4780:	41 9c 08 b4 	blt-    cr7,5034 <_dtoa_r+0x108c>
    4784:	7f e3 fb 78 	mr      r3,r31
    4788:	38 80 00 01 	li      r4,1
    478c:	7e 73 4a 14 	add     r19,r19,r9
    4790:	7d ef 4a 14 	add     r15,r15,r9
    4794:	48 00 2b 15 	bl      72a8 <__i2b>
    4798:	7c 72 1b 78 	mr      r18,r3
    479c:	48 00 00 5c 	b       47f8 <_dtoa_r+0x850>
    47a0:	39 00 00 00 	li      r8,0
    47a4:	7e 77 98 50 	subf    r19,r23,r19
    47a8:	7f 17 00 d0 	neg     r24,r23
    47ac:	91 01 00 c0 	stw     r8,192(r1)
    47b0:	4b ff fa d4 	b       4284 <_dtoa_r+0x2dc>
    47b4:	6e e6 80 00 	xoris   r6,r23,32768
    47b8:	91 41 00 30 	stw     r10,48(r1)
    47bc:	90 c1 00 34 	stw     r6,52(r1)
    47c0:	c9 01 00 30 	lfd     f8,48(r1)
    47c4:	fd a8 68 28 	fsub    f13,f8,f13
    47c8:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    47cc:	4f de f0 42 	crnot   4*cr7+eq,4*cr7+eq
    47d0:	7d 40 00 26 	mfcr    r10
    47d4:	55 4a ff fe 	rlwinm  r10,r10,31,31,31
    47d8:	7e ea b8 50 	subf    r23,r10,r23
    47dc:	4b ff fa 48 	b       4224 <_dtoa_r+0x27c>
    47e0:	7e 6f 00 d0 	neg     r19,r15
    47e4:	39 e0 00 00 	li      r15,0
    47e8:	4b ff fa 88 	b       4270 <_dtoa_r+0x2c8>
    47ec:	7f 0e c3 78 	mr      r14,r24
    47f0:	7e 7d 9b 78 	mr      r29,r19
    47f4:	3a 40 00 00 	li      r18,0
    47f8:	2f 9d 00 00 	cmpwi   cr7,r29,0
    47fc:	41 9e 00 24 	beq-    cr7,4820 <_dtoa_r+0x878>
    4800:	2f 8f 00 00 	cmpwi   cr7,r15,0
    4804:	40 9d 00 1c 	ble-    cr7,4820 <_dtoa_r+0x878>
    4808:	7f 8f e8 00 	cmpw    cr7,r15,r29
    480c:	7d e9 7b 78 	mr      r9,r15
    4810:	41 9d 03 f0 	bgt-    cr7,4c00 <_dtoa_r+0xc58>
    4814:	7e 69 98 50 	subf    r19,r9,r19
    4818:	7f a9 e8 50 	subf    r29,r9,r29
    481c:	7d e9 78 50 	subf    r15,r9,r15
    4820:	2f 98 00 00 	cmpwi   cr7,r24,0
    4824:	40 9d 00 58 	ble-    cr7,487c <_dtoa_r+0x8d4>
    4828:	41 92 05 a8 	beq-    cr4,4dd0 <_dtoa_r+0xe28>
    482c:	2f 8e 00 00 	cmpwi   cr7,r14,0
    4830:	40 9d 00 44 	ble-    cr7,4874 <_dtoa_r+0x8cc>
    4834:	7e 44 93 78 	mr      r4,r18
    4838:	7d c5 73 78 	mr      r5,r14
    483c:	7f e3 fb 78 	mr      r3,r31
    4840:	48 00 2c e5 	bl      7524 <__pow5mult>
    4844:	7f 85 e3 78 	mr      r5,r28
    4848:	7c 72 1b 78 	mr      r18,r3
    484c:	7f e3 fb 78 	mr      r3,r31
    4850:	7e 44 93 78 	mr      r4,r18
    4854:	48 00 2a 91 	bl      72e4 <__multiply>
    4858:	7f 84 e3 78 	mr      r4,r28
    485c:	7c 69 1b 78 	mr      r9,r3
    4860:	7f e3 fb 78 	mr      r3,r31
    4864:	91 21 00 cc 	stw     r9,204(r1)
    4868:	48 00 26 85 	bl      6eec <_Bfree>
    486c:	81 21 00 cc 	lwz     r9,204(r1)
    4870:	7d 3c 4b 78 	mr      r28,r9
    4874:	7c ae c0 51 	subf.   r5,r14,r24
    4878:	40 82 03 d4 	bne-    4c4c <_dtoa_r+0xca4>
    487c:	81 41 00 c0 	lwz     r10,192(r1)
    4880:	7f e3 fb 78 	mr      r3,r31
    4884:	38 80 00 01 	li      r4,1
    4888:	2d 8a 00 00 	cmpwi   cr3,r10,0
    488c:	48 00 2a 1d 	bl      72a8 <__i2b>
    4890:	7c 78 1b 78 	mr      r24,r3
    4894:	40 8d 00 18 	ble-    cr3,48ac <_dtoa_r+0x904>
    4898:	80 a1 00 c0 	lwz     r5,192(r1)
    489c:	7f 04 c3 78 	mr      r4,r24
    48a0:	7f e3 fb 78 	mr      r3,r31
    48a4:	48 00 2c 81 	bl      7524 <__pow5mult>
    48a8:	7c 78 1b 78 	mr      r24,r3
    48ac:	40 89 04 84 	ble-    cr2,4d30 <_dtoa_r+0xd88>
    48b0:	39 c0 00 00 	li      r14,0
    48b4:	40 8e 04 20 	bne-    cr3,4cd4 <_dtoa_r+0xd2c>
    48b8:	38 60 00 01 	li      r3,1
    48bc:	7d 23 7a 14 	add     r9,r3,r15
    48c0:	71 2a 00 1f 	andi.   r10,r9,31
    48c4:	41 82 01 8c 	beq-    4a50 <_dtoa_r+0xaa8>
    48c8:	21 2a 00 20 	subfic  r9,r10,32
    48cc:	2f 89 00 04 	cmpwi   cr7,r9,4
    48d0:	40 9d 08 b0 	ble-    cr7,5180 <_dtoa_r+0x11d8>
    48d4:	21 4a 00 1c 	subfic  r10,r10,28
    48d8:	7e 73 52 14 	add     r19,r19,r10
    48dc:	7f bd 52 14 	add     r29,r29,r10
    48e0:	7d ef 52 14 	add     r15,r15,r10
    48e4:	2f 93 00 00 	cmpwi   cr7,r19,0
    48e8:	40 9d 00 18 	ble-    cr7,4900 <_dtoa_r+0x958>
    48ec:	7f 84 e3 78 	mr      r4,r28
    48f0:	7f e3 fb 78 	mr      r3,r31
    48f4:	7e 65 9b 78 	mr      r5,r19
    48f8:	48 00 2d 7d 	bl      7674 <__lshift>
    48fc:	7c 7c 1b 78 	mr      r28,r3
    4900:	2f 8f 00 00 	cmpwi   cr7,r15,0
    4904:	40 9d 00 18 	ble-    cr7,491c <_dtoa_r+0x974>
    4908:	7f 04 c3 78 	mr      r4,r24
    490c:	7f e3 fb 78 	mr      r3,r31
    4910:	7d e5 7b 78 	mr      r5,r15
    4914:	48 00 2d 61 	bl      7674 <__lshift>
    4918:	7c 78 1b 78 	mr      r24,r3
    491c:	81 01 00 b0 	lwz     r8,176(r1)
    4920:	2f 88 00 00 	cmpwi   cr7,r8,0
    4924:	40 9e 03 d0 	bne-    cr7,4cf4 <_dtoa_r+0xd4c>
    4928:	2d 95 00 00 	cmpwi   cr3,r21,0
    492c:	40 8d 02 74 	ble-    cr3,4ba0 <_dtoa_r+0xbf8>
    4930:	41 92 01 4c 	beq-    cr4,4a7c <_dtoa_r+0xad4>
    4934:	2f 9d 00 00 	cmpwi   cr7,r29,0
    4938:	40 9d 00 18 	ble-    cr7,4950 <_dtoa_r+0x9a8>
    493c:	7e 44 93 78 	mr      r4,r18
    4940:	7f e3 fb 78 	mr      r3,r31
    4944:	7f a5 eb 78 	mr      r5,r29
    4948:	48 00 2d 2d 	bl      7674 <__lshift>
    494c:	7c 72 1b 78 	mr      r18,r3
    4950:	2f 8e 00 00 	cmpwi   cr7,r14,0
    4954:	7e 53 93 78 	mr      r19,r18
    4958:	40 9e 05 8c 	bne-    cr7,4ee4 <_dtoa_r+0xf3c>
    495c:	56 29 07 fe 	clrlwi  r9,r17,31
    4960:	7f 7d db 78 	mr      r29,r27
    4964:	2e 09 00 00 	cmpwi   cr4,r9,0
    4968:	7e 54 93 78 	mr      r20,r18
    496c:	7f 04 c3 78 	mr      r4,r24
    4970:	7f 83 e3 78 	mr      r3,r28
    4974:	4b ff f4 1d 	bl      3d90 <quorem>
    4978:	7e 84 a3 78 	mr      r4,r20
    497c:	7c 6e 1b 78 	mr      r14,r3
    4980:	7f 83 e3 78 	mr      r3,r28
    4984:	48 00 2e 5d 	bl      77e0 <__mcmp>
    4988:	7f 04 c3 78 	mr      r4,r24
    498c:	7c 6f 1b 78 	mr      r15,r3
    4990:	7e 65 9b 78 	mr      r5,r19
    4994:	7f e3 fb 78 	mr      r3,r31
    4998:	3a 2e 00 30 	addi    r17,r14,48
    499c:	48 00 2e a1 	bl      783c <__mdiff>
    49a0:	3a 00 00 01 	li      r16,1
    49a4:	81 23 00 0c 	lwz     r9,12(r3)
    49a8:	7c 72 1b 78 	mr      r18,r3
    49ac:	2f 89 00 00 	cmpwi   cr7,r9,0
    49b0:	41 9e 02 f0 	beq-    cr7,4ca0 <_dtoa_r+0xcf8>
    49b4:	7f e3 fb 78 	mr      r3,r31
    49b8:	7e 44 93 78 	mr      r4,r18
    49bc:	48 00 25 31 	bl      6eec <_Bfree>
    49c0:	7e 0a d3 79 	or.     r10,r16,r26
    49c4:	40 82 00 08 	bne-    49cc <_dtoa_r+0xa24>
    49c8:	41 92 07 60 	beq-    cr4,5128 <_dtoa_r+0x1180>
    49cc:	2f 8f 00 00 	cmpwi   cr7,r15,0
    49d0:	41 9c 04 68 	blt-    cr7,4e38 <_dtoa_r+0xe90>
    49d4:	7d e8 d3 79 	or.     r8,r15,r26
    49d8:	40 82 00 08 	bne-    49e0 <_dtoa_r+0xa38>
    49dc:	41 92 04 5c 	beq-    cr4,4e38 <_dtoa_r+0xe90>
    49e0:	2f 90 00 00 	cmpwi   cr7,r16,0
    49e4:	41 9d 06 38 	bgt-    cr7,501c <_dtoa_r+0x1074>
    49e8:	9a 3d 00 00 	stb     r17,0(r29)
    49ec:	3b bd 00 01 	addi    r29,r29,1
    49f0:	7d 3b e8 50 	subf    r9,r27,r29
    49f4:	7f 89 a8 00 	cmpw    cr7,r9,r21
    49f8:	41 9e 06 34 	beq-    cr7,502c <_dtoa_r+0x1084>
    49fc:	7f 84 e3 78 	mr      r4,r28
    4a00:	7f e3 fb 78 	mr      r3,r31
    4a04:	38 a0 00 0a 	li      r5,10
    4a08:	38 c0 00 00 	li      r6,0
    4a0c:	48 00 25 05 	bl      6f10 <__multadd>
    4a10:	7f 94 98 00 	cmpw    cr7,r20,r19
    4a14:	7c 7c 1b 78 	mr      r28,r3
    4a18:	41 9e 02 9c 	beq-    cr7,4cb4 <_dtoa_r+0xd0c>
    4a1c:	7e 84 a3 78 	mr      r4,r20
    4a20:	38 a0 00 0a 	li      r5,10
    4a24:	38 c0 00 00 	li      r6,0
    4a28:	7f e3 fb 78 	mr      r3,r31
    4a2c:	48 00 24 e5 	bl      6f10 <__multadd>
    4a30:	7e 64 9b 78 	mr      r4,r19
    4a34:	7c 74 1b 78 	mr      r20,r3
    4a38:	38 a0 00 0a 	li      r5,10
    4a3c:	7f e3 fb 78 	mr      r3,r31
    4a40:	38 c0 00 00 	li      r6,0
    4a44:	48 00 24 cd 	bl      6f10 <__multadd>
    4a48:	7c 73 1b 78 	mr      r19,r3
    4a4c:	4b ff ff 20 	b       496c <_dtoa_r+0x9c4>
    4a50:	39 40 00 1c 	li      r10,28
    4a54:	7e 73 52 14 	add     r19,r19,r10
    4a58:	7f bd 52 14 	add     r29,r29,r10
    4a5c:	7d ef 52 14 	add     r15,r15,r10
    4a60:	4b ff fe 84 	b       48e4 <_dtoa_r+0x93c>
    4a64:	23 a9 fb ee 	subfic  r29,r9,-1042
    4a68:	7e 3d e8 30 	slw     r29,r17,r29
    4a6c:	4b ff fb 10 	b       457c <_dtoa_r+0x5d4>
    4a70:	39 40 00 00 	li      r10,0
    4a74:	91 41 00 b0 	stw     r10,176(r1)
    4a78:	4b ff f7 e8 	b       4260 <_dtoa_r+0x2b8>
    4a7c:	3b 5b ff ff 	addi    r26,r27,-1
    4a80:	3b a0 00 01 	li      r29,1
    4a84:	48 00 00 10 	b       4a94 <_dtoa_r+0xaec>
    4a88:	48 00 24 89 	bl      6f10 <__multadd>
    4a8c:	3b bd 00 01 	addi    r29,r29,1
    4a90:	7c 7c 1b 78 	mr      r28,r3
    4a94:	7f 04 c3 78 	mr      r4,r24
    4a98:	7f 83 e3 78 	mr      r3,r28
    4a9c:	4b ff f2 f5 	bl      3d90 <quorem>
    4aa0:	7f 9d a8 00 	cmpw    cr7,r29,r21
    4aa4:	3a 23 00 30 	addi    r17,r3,48
    4aa8:	7f 84 e3 78 	mr      r4,r28
    4aac:	7f e3 fb 78 	mr      r3,r31
    4ab0:	38 a0 00 0a 	li      r5,10
    4ab4:	38 c0 00 00 	li      r6,0
    4ab8:	9e 3a 00 01 	stbu    r17,1(r26)
    4abc:	41 9c ff cc 	blt+    cr7,4a88 <_dtoa_r+0xae0>
    4ac0:	40 8d 05 80 	ble-    cr3,5040 <_dtoa_r+0x1098>
    4ac4:	7f bb aa 14 	add     r29,r27,r21
    4ac8:	3a 80 00 00 	li      r20,0
    4acc:	7f 84 e3 78 	mr      r4,r28
    4ad0:	38 a0 00 01 	li      r5,1
    4ad4:	7f e3 fb 78 	mr      r3,r31
    4ad8:	48 00 2b 9d 	bl      7674 <__lshift>
    4adc:	7f 04 c3 78 	mr      r4,r24
    4ae0:	7c 7c 1b 78 	mr      r28,r3
    4ae4:	48 00 2c fd 	bl      77e0 <__mcmp>
    4ae8:	2f 83 00 00 	cmpwi   cr7,r3,0
    4aec:	40 9d 01 74 	ble-    cr7,4c60 <_dtoa_r+0xcb8>
    4af0:	89 5d ff ff 	lbz     r10,-1(r29)
    4af4:	7d 1b e8 50 	subf    r8,r27,r29
    4af8:	7d 09 03 a6 	mtctr   r8
    4afc:	48 00 00 0c 	b       4b08 <_dtoa_r+0xb60>
    4b00:	89 49 ff ff 	lbz     r10,-1(r9)
    4b04:	7d 3d 4b 78 	mr      r29,r9
    4b08:	2f 8a 00 39 	cmpwi   cr7,r10,57
    4b0c:	39 3d ff ff 	addi    r9,r29,-1
    4b10:	40 9e 04 14 	bne-    cr7,4f24 <_dtoa_r+0xf7c>
    4b14:	42 00 ff ec 	bdnz+   4b00 <_dtoa_r+0xb58>
    4b18:	39 20 00 31 	li      r9,49
    4b1c:	3a f7 00 01 	addi    r23,r23,1
    4b20:	99 3b 00 00 	stb     r9,0(r27)
    4b24:	7f e3 fb 78 	mr      r3,r31
    4b28:	7f 04 c3 78 	mr      r4,r24
    4b2c:	48 00 23 c1 	bl      6eec <_Bfree>
    4b30:	2f 92 00 00 	cmpwi   cr7,r18,0
    4b34:	41 be f9 e4 	beq-    cr7,4518 <_dtoa_r+0x570>
    4b38:	2f 94 00 00 	cmpwi   cr7,r20,0
    4b3c:	41 9e 00 18 	beq-    cr7,4b54 <_dtoa_r+0xbac>
    4b40:	7f 94 90 00 	cmpw    cr7,r20,r18
    4b44:	41 9e 00 10 	beq-    cr7,4b54 <_dtoa_r+0xbac>
    4b48:	7f e3 fb 78 	mr      r3,r31
    4b4c:	7e 84 a3 78 	mr      r4,r20
    4b50:	48 00 23 9d 	bl      6eec <_Bfree>
    4b54:	7f e3 fb 78 	mr      r3,r31
    4b58:	7e 44 93 78 	mr      r4,r18
    4b5c:	48 00 23 91 	bl      6eec <_Bfree>
    4b60:	4b ff f9 b8 	b       4518 <_dtoa_r+0x570>
    4b64:	2f 9a 00 04 	cmpwi   cr7,r26,4
    4b68:	41 9e 02 88 	beq-    cr7,4df0 <_dtoa_r+0xe48>
    4b6c:	2f 9a 00 05 	cmpwi   cr7,r26,5
    4b70:	40 9e fa 54 	bne+    cr7,45c4 <_dtoa_r+0x61c>
    4b74:	3a 40 00 01 	li      r18,1
    4b78:	7d 34 ba 14 	add     r9,r20,r23
    4b7c:	3b a9 00 01 	addi    r29,r9,1
    4b80:	91 21 00 c4 	stw     r9,196(r1)
    4b84:	2f 9d 00 00 	cmpwi   cr7,r29,0
    4b88:	7f b5 eb 78 	mr      r21,r29
    4b8c:	41 9d f7 40 	bgt+    cr7,42cc <_dtoa_r+0x324>
    4b90:	39 20 00 00 	li      r9,0
    4b94:	38 80 00 00 	li      r4,0
    4b98:	91 3f 00 44 	stw     r9,68(r31)
    4b9c:	4b ff f7 68 	b       4304 <_dtoa_r+0x35c>
    4ba0:	2f 9a 00 02 	cmpwi   cr7,r26,2
    4ba4:	40 bd fd 8c 	ble-    cr7,4930 <_dtoa_r+0x988>
    4ba8:	40 8e 00 98 	bne-    cr3,4c40 <_dtoa_r+0xc98>
    4bac:	7f 04 c3 78 	mr      r4,r24
    4bb0:	38 a0 00 05 	li      r5,5
    4bb4:	38 c0 00 00 	li      r6,0
    4bb8:	7f e3 fb 78 	mr      r3,r31
    4bbc:	48 00 23 55 	bl      6f10 <__multadd>
    4bc0:	7c 78 1b 78 	mr      r24,r3
    4bc4:	7f 83 e3 78 	mr      r3,r28
    4bc8:	7f 04 c3 78 	mr      r4,r24
    4bcc:	48 00 2c 15 	bl      77e0 <__mcmp>
    4bd0:	2f 83 00 00 	cmpwi   cr7,r3,0
    4bd4:	40 9d 00 6c 	ble-    cr7,4c40 <_dtoa_r+0xc98>
    4bd8:	39 20 00 31 	li      r9,49
    4bdc:	3b bb 00 01 	addi    r29,r27,1
    4be0:	99 3b 00 00 	stb     r9,0(r27)
    4be4:	3a f7 00 01 	addi    r23,r23,1
    4be8:	7f e3 fb 78 	mr      r3,r31
    4bec:	7f 04 c3 78 	mr      r4,r24
    4bf0:	48 00 22 fd 	bl      6eec <_Bfree>
    4bf4:	2f 92 00 00 	cmpwi   cr7,r18,0
    4bf8:	40 9e ff 5c 	bne+    cr7,4b54 <_dtoa_r+0xbac>
    4bfc:	4b ff f9 1c 	b       4518 <_dtoa_r+0x570>
    4c00:	7f a9 eb 78 	mr      r9,r29
    4c04:	4b ff fc 10 	b       4814 <_dtoa_r+0x86c>
    4c08:	2f 95 00 00 	cmpwi   cr7,r21,0
    4c0c:	41 9d fa 10 	bgt+    cr7,461c <_dtoa_r+0x674>
    4c10:	40 9e 01 b4 	bne-    cr7,4dc4 <_dtoa_r+0xe1c>
    4c14:	81 3e 80 40 	lwz     r9,-32704(r30)
    4c18:	3b 00 00 00 	li      r24,0
    4c1c:	92 01 00 d0 	stw     r16,208(r1)
    4c20:	3a 40 00 00 	li      r18,0
    4c24:	c0 09 00 00 	lfs     f0,0(r9)
    4c28:	92 21 00 d4 	stw     r17,212(r1)
    4c2c:	fd ad 00 32 	fmul    f13,f13,f0
    4c30:	c8 01 00 d0 	lfd     f0,208(r1)
    4c34:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    4c38:	4f dd f3 82 	cror    4*cr7+eq,4*cr7+gt,4*cr7+eq
    4c3c:	40 be ff 9c 	bne-    cr7,4bd8 <_dtoa_r+0xc30>
    4c40:	7e 97 a0 f8 	not     r23,r20
    4c44:	7f 7d db 78 	mr      r29,r27
    4c48:	4b ff ff a0 	b       4be8 <_dtoa_r+0xc40>
    4c4c:	7f 84 e3 78 	mr      r4,r28
    4c50:	7f e3 fb 78 	mr      r3,r31
    4c54:	48 00 28 d1 	bl      7524 <__pow5mult>
    4c58:	7c 7c 1b 78 	mr      r28,r3
    4c5c:	4b ff fc 20 	b       487c <_dtoa_r+0x8d4>
    4c60:	40 9e 00 0c 	bne-    cr7,4c6c <_dtoa_r+0xcc4>
    4c64:	72 2a 00 01 	andi.   r10,r17,1
    4c68:	40 a2 fe 88 	bne-    4af0 <_dtoa_r+0xb48>
    4c6c:	7f a9 eb 78 	mr      r9,r29
    4c70:	7d 3d 4b 78 	mr      r29,r9
    4c74:	8d 49 ff ff 	lbzu    r10,-1(r9)
    4c78:	2f 8a 00 30 	cmpwi   cr7,r10,48
    4c7c:	41 9e ff f4 	beq+    cr7,4c70 <_dtoa_r+0xcc8>
    4c80:	4b ff fe a4 	b       4b24 <_dtoa_r+0xb7c>
    4c84:	81 01 00 c8 	lwz     r8,200(r1)
    4c88:	2f 88 00 00 	cmpwi   cr7,r8,0
    4c8c:	41 9e 03 bc 	beq-    cr7,5048 <_dtoa_r+0x10a0>
    4c90:	39 29 04 33 	addi    r9,r9,1075
    4c94:	7f 0e c3 78 	mr      r14,r24
    4c98:	7e 7d 9b 78 	mr      r29,r19
    4c9c:	4b ff fa e8 	b       4784 <_dtoa_r+0x7dc>
    4ca0:	7f 83 e3 78 	mr      r3,r28
    4ca4:	7e 44 93 78 	mr      r4,r18
    4ca8:	48 00 2b 39 	bl      77e0 <__mcmp>
    4cac:	7c 70 1b 78 	mr      r16,r3
    4cb0:	4b ff fd 04 	b       49b4 <_dtoa_r+0xa0c>
    4cb4:	7e 84 a3 78 	mr      r4,r20
    4cb8:	7f e3 fb 78 	mr      r3,r31
    4cbc:	38 a0 00 0a 	li      r5,10
    4cc0:	38 c0 00 00 	li      r6,0
    4cc4:	48 00 22 4d 	bl      6f10 <__multadd>
    4cc8:	7c 74 1b 78 	mr      r20,r3
    4ccc:	7c 73 1b 78 	mr      r19,r3
    4cd0:	4b ff fc 9c 	b       496c <_dtoa_r+0x9c4>
    4cd4:	81 38 00 10 	lwz     r9,16(r24)
    4cd8:	39 29 00 03 	addi    r9,r9,3
    4cdc:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    4ce0:	7d 38 4a 14 	add     r9,r24,r9
    4ce4:	80 69 00 04 	lwz     r3,4(r9)
    4ce8:	48 00 24 9d 	bl      7184 <__hi0bits>
    4cec:	20 63 00 20 	subfic  r3,r3,32
    4cf0:	4b ff fb cc 	b       48bc <_dtoa_r+0x914>
    4cf4:	7f 83 e3 78 	mr      r3,r28
    4cf8:	7f 04 c3 78 	mr      r4,r24
    4cfc:	48 00 2a e5 	bl      77e0 <__mcmp>
    4d00:	2f 83 00 00 	cmpwi   cr7,r3,0
    4d04:	40 9c fc 24 	bge+    cr7,4928 <_dtoa_r+0x980>
    4d08:	7f 84 e3 78 	mr      r4,r28
    4d0c:	7f e3 fb 78 	mr      r3,r31
    4d10:	38 a0 00 0a 	li      r5,10
    4d14:	38 c0 00 00 	li      r6,0
    4d18:	48 00 21 f9 	bl      6f10 <__multadd>
    4d1c:	3a f7 ff ff 	addi    r23,r23,-1
    4d20:	7c 7c 1b 78 	mr      r28,r3
    4d24:	40 92 04 34 	bne-    cr4,5158 <_dtoa_r+0x11b0>
    4d28:	82 a1 00 c4 	lwz     r21,196(r1)
    4d2c:	4b ff fb fc 	b       4928 <_dtoa_r+0x980>
    4d30:	2f 91 00 00 	cmpwi   cr7,r17,0
    4d34:	39 c0 00 00 	li      r14,0
    4d38:	40 be fb 7c 	bne-    cr7,48b4 <_dtoa_r+0x90c>
    4d3c:	56 08 03 3f 	clrlwi. r8,r16,12
    4d40:	40 a2 fb 74 	bne-    48b4 <_dtoa_r+0x90c>
    4d44:	76 0a 7f f0 	andis.  r10,r16,32752
    4d48:	41 a2 fb 6c 	beq-    48b4 <_dtoa_r+0x90c>
    4d4c:	3a 73 00 01 	addi    r19,r19,1
    4d50:	39 ef 00 01 	addi    r15,r15,1
    4d54:	39 c0 00 01 	li      r14,1
    4d58:	4b ff fb 5c 	b       48b4 <_dtoa_r+0x90c>
    4d5c:	3d 20 43 30 	lis     r9,17200
    4d60:	6c a5 80 00 	xoris   r5,r5,32768
    4d64:	91 21 00 a8 	stw     r9,168(r1)
    4d68:	90 a1 00 ac 	stw     r5,172(r1)
    4d6c:	81 3e 80 18 	lwz     r9,-32744(r30)
    4d70:	c9 01 00 a8 	lfd     f8,168(r1)
    4d74:	c1 89 00 00 	lfs     f12,0(r9)
    4d78:	81 3e 80 3c 	lwz     r9,-32708(r30)
    4d7c:	fd 88 60 28 	fsub    f12,f8,f12
    4d80:	c1 a9 00 00 	lfs     f13,0(r9)
    4d84:	fd a0 6b 3a 	fmadd   f13,f0,f12,f13
    4d88:	d9 a1 00 d0 	stfd    f13,208(r1)
    4d8c:	81 41 00 d0 	lwz     r10,208(r1)
    4d90:	81 61 00 d4 	lwz     r11,212(r1)
    4d94:	3d 4a fc c0 	addis   r10,r10,-832
    4d98:	81 3e 80 40 	lwz     r9,-32704(r30)
    4d9c:	91 41 00 d0 	stw     r10,208(r1)
    4da0:	c1 89 00 00 	lfs     f12,0(r9)
    4da4:	91 61 00 d4 	stw     r11,212(r1)
    4da8:	fc 00 60 28 	fsub    f0,f0,f12
    4dac:	c9 a1 00 d0 	lfd     f13,208(r1)
    4db0:	ff 80 68 00 	fcmpu   cr7,f0,f13
    4db4:	41 9d 01 7c 	bgt-    cr7,4f30 <_dtoa_r+0xf88>
    4db8:	fd a0 68 50 	fneg    f13,f13
    4dbc:	ff 80 68 00 	fcmpu   cr7,f0,f13
    4dc0:	40 9c 00 c4 	bge-    cr7,4e84 <_dtoa_r+0xedc>
    4dc4:	3b 00 00 00 	li      r24,0
    4dc8:	3a 40 00 00 	li      r18,0
    4dcc:	4b ff fe 74 	b       4c40 <_dtoa_r+0xc98>
    4dd0:	7f 84 e3 78 	mr      r4,r28
    4dd4:	7f e3 fb 78 	mr      r3,r31
    4dd8:	7f 05 c3 78 	mr      r5,r24
    4ddc:	48 00 27 49 	bl      7524 <__pow5mult>
    4de0:	7c 7c 1b 78 	mr      r28,r3
    4de4:	4b ff fa 98 	b       487c <_dtoa_r+0x8d4>
    4de8:	3a 40 00 00 	li      r18,0
    4dec:	4b ff fd 8c 	b       4b78 <_dtoa_r+0xbd0>
    4df0:	3a 40 00 01 	li      r18,1
    4df4:	4b ff f4 c4 	b       42b8 <_dtoa_r+0x310>
    4df8:	81 21 00 c0 	lwz     r9,192(r1)
    4dfc:	7f 18 70 50 	subf    r24,r24,r14
    4e00:	7d 29 c2 14 	add     r9,r9,r24
    4e04:	7d d8 73 78 	mr      r24,r14
    4e08:	91 21 00 c0 	stw     r9,192(r1)
    4e0c:	39 c0 00 00 	li      r14,0
    4e10:	4b ff f9 64 	b       4774 <_dtoa_r+0x7cc>
    4e14:	fd a0 48 90 	fmr     f13,f9
    4e18:	38 a0 00 02 	li      r5,2
    4e1c:	4b ff f5 4c 	b       4368 <_dtoa_r+0x3c0>
    4e20:	39 00 00 01 	li      r8,1
    4e24:	3b a0 00 01 	li      r29,1
    4e28:	91 01 00 c4 	stw     r8,196(r1)
    4e2c:	3a a0 00 01 	li      r21,1
    4e30:	3a 80 00 01 	li      r20,1
    4e34:	4b ff fd 5c 	b       4b90 <_dtoa_r+0xbe8>
    4e38:	2f 90 00 00 	cmpwi   cr7,r16,0
    4e3c:	7e 3a 8b 78 	mr      r26,r17
    4e40:	40 9d 00 34 	ble-    cr7,4e74 <_dtoa_r+0xecc>
    4e44:	7f 84 e3 78 	mr      r4,r28
    4e48:	38 a0 00 01 	li      r5,1
    4e4c:	7f e3 fb 78 	mr      r3,r31
    4e50:	48 00 28 25 	bl      7674 <__lshift>
    4e54:	7f 04 c3 78 	mr      r4,r24
    4e58:	7c 7c 1b 78 	mr      r28,r3
    4e5c:	48 00 29 85 	bl      77e0 <__mcmp>
    4e60:	2f 83 00 00 	cmpwi   cr7,r3,0
    4e64:	40 9d 02 e4 	ble-    cr7,5148 <_dtoa_r+0x11a0>
    4e68:	2f 9a 00 39 	cmpwi   cr7,r26,57
    4e6c:	3a 2e 00 31 	addi    r17,r14,49
    4e70:	41 9e 02 74 	beq-    cr7,50e4 <_dtoa_r+0x113c>
    4e74:	9a 3d 00 00 	stb     r17,0(r29)
    4e78:	7e 72 9b 78 	mr      r18,r19
    4e7c:	3b bd 00 01 	addi    r29,r29,1
    4e80:	4b ff fc a4 	b       4b24 <_dtoa_r+0xb7c>
    4e84:	d9 21 00 d0 	stfd    f9,208(r1)
    4e88:	82 01 00 d0 	lwz     r16,208(r1)
    4e8c:	82 21 00 d4 	lwz     r17,212(r1)
    4e90:	4b ff f7 64 	b       45f4 <_dtoa_r+0x64c>
    4e94:	7d 57 00 d1 	neg.    r10,r23
    4e98:	41 82 01 d4 	beq-    506c <_dtoa_r+0x10c4>
    4e9c:	7d 49 26 71 	srawi.  r9,r10,4
    4ea0:	80 be 80 2c 	lwz     r5,-32724(r30)
    4ea4:	55 4a 1e 78 	rlwinm  r10,r10,3,25,28
    4ea8:	7c 05 54 ae 	lfdx    f0,r5,r10
    4eac:	fc 09 00 32 	fmul    f0,f9,f0
    4eb0:	41 82 02 c8 	beq-    5178 <_dtoa_r+0x11d0>
    4eb4:	81 5e 80 30 	lwz     r10,-32720(r30)
    4eb8:	38 a0 00 02 	li      r5,2
    4ebc:	55 28 07 fe 	clrlwi  r8,r9,31
    4ec0:	7d 29 0e 71 	srawi.  r9,r9,1
    4ec4:	2f 88 00 00 	cmpwi   cr7,r8,0
    4ec8:	41 9e 00 10 	beq-    cr7,4ed8 <_dtoa_r+0xf30>
    4ecc:	c9 0a 00 00 	lfd     f8,0(r10)
    4ed0:	38 a5 00 01 	addi    r5,r5,1
    4ed4:	fc 00 02 32 	fmul    f0,f0,f8
    4ed8:	39 4a 00 08 	addi    r10,r10,8
    4edc:	40 82 ff e0 	bne+    4ebc <_dtoa_r+0xf14>
    4ee0:	4b ff f4 bc 	b       439c <_dtoa_r+0x3f4>
    4ee4:	80 92 00 04 	lwz     r4,4(r18)
    4ee8:	7f e3 fb 78 	mr      r3,r31
    4eec:	48 00 1f 39 	bl      6e24 <_Balloc>
    4ef0:	81 32 00 10 	lwz     r9,16(r18)
    4ef4:	7c 7d 1b 78 	mr      r29,r3
    4ef8:	38 92 00 0c 	addi    r4,r18,12
    4efc:	38 a9 00 02 	addi    r5,r9,2
    4f00:	38 63 00 0c 	addi    r3,r3,12
    4f04:	54 a5 10 3a 	rlwinm  r5,r5,2,0,29
    4f08:	48 00 1e 05 	bl      6d0c <memcpy>
    4f0c:	7f e3 fb 78 	mr      r3,r31
    4f10:	7f a4 eb 78 	mr      r4,r29
    4f14:	38 a0 00 01 	li      r5,1
    4f18:	48 00 27 5d 	bl      7674 <__lshift>
    4f1c:	7c 73 1b 78 	mr      r19,r3
    4f20:	4b ff fa 3c 	b       495c <_dtoa_r+0x9b4>
    4f24:	39 4a 00 01 	addi    r10,r10,1
    4f28:	99 49 00 00 	stb     r10,0(r9)
    4f2c:	4b ff fb f8 	b       4b24 <_dtoa_r+0xb7c>
    4f30:	3b 00 00 00 	li      r24,0
    4f34:	3a 40 00 00 	li      r18,0
    4f38:	4b ff fc a0 	b       4bd8 <_dtoa_r+0xc30>
    4f3c:	fd a0 00 1e 	fctiwz  f13,f0
    4f40:	3d 20 43 30 	lis     r9,17200
    4f44:	91 21 00 70 	stw     r9,112(r1)
    4f48:	38 6c ff ff 	addi    r3,r12,-1
    4f4c:	81 1e 80 18 	lwz     r8,-32744(r30)
    4f50:	2f 8c 00 01 	cmpwi   cr7,r12,1
    4f54:	d9 a1 00 68 	stfd    f13,104(r1)
    4f58:	54 60 18 38 	rlwinm  r0,r3,3,0,28
    4f5c:	c1 68 00 00 	lfs     f11,0(r8)
    4f60:	3b bb 00 01 	addi    r29,r27,1
    4f64:	81 21 00 6c 	lwz     r9,108(r1)
    4f68:	fd a0 58 90 	fmr     f13,f11
    4f6c:	91 41 00 d0 	stw     r10,208(r1)
    4f70:	6d 25 80 00 	xoris   r5,r9,32768
    4f74:	91 61 00 d4 	stw     r11,212(r1)
    4f78:	90 a1 00 74 	stw     r5,116(r1)
    4f7c:	39 29 00 30 	addi    r9,r9,48
    4f80:	80 be 80 2c 	lwz     r5,-32724(r30)
    4f84:	c9 01 00 70 	lfd     f8,112(r1)
    4f88:	c9 81 00 d0 	lfd     f12,208(r1)
    4f8c:	fd a8 68 28 	fsub    f13,f8,f13
    4f90:	7d 45 04 ae 	lfdx    f10,r5,r0
    4f94:	99 3b 00 00 	stb     r9,0(r27)
    4f98:	fd 4a 03 32 	fmul    f10,f10,f12
    4f9c:	fc 00 68 28 	fsub    f0,f0,f13
    4fa0:	41 9e 00 5c 	beq-    cr7,4ffc <_dtoa_r+0x1054>
    4fa4:	39 3b ff ff 	addi    r9,r27,-1
    4fa8:	80 be 80 38 	lwz     r5,-32712(r30)
    4fac:	7d 89 62 14 	add     r12,r9,r12
    4fb0:	7f 6a db 78 	mr      r10,r27
    4fb4:	7d 9b 60 50 	subf    r12,r27,r12
    4fb8:	c1 85 00 00 	lfs     f12,0(r5)
    4fbc:	7d 89 03 a6 	mtctr   r12
    4fc0:	3d 60 43 30 	lis     r11,17200
    4fc4:	fc 00 03 32 	fmul    f0,f0,f12
    4fc8:	91 61 00 80 	stw     r11,128(r1)
    4fcc:	fd a0 00 1e 	fctiwz  f13,f0
    4fd0:	d9 a1 00 78 	stfd    f13,120(r1)
    4fd4:	81 21 00 7c 	lwz     r9,124(r1)
    4fd8:	6d 25 80 00 	xoris   r5,r9,32768
    4fdc:	39 29 00 30 	addi    r9,r9,48
    4fe0:	90 a1 00 84 	stw     r5,132(r1)
    4fe4:	c9 a1 00 80 	lfd     f13,128(r1)
    4fe8:	9d 2a 00 01 	stbu    r9,1(r10)
    4fec:	fd ad 58 28 	fsub    f13,f13,f11
    4ff0:	fc 00 68 28 	fsub    f0,f0,f13
    4ff4:	42 00 ff d0 	bdnz+   4fc4 <_dtoa_r+0x101c>
    4ff8:	7f bd 1a 14 	add     r29,r29,r3
    4ffc:	81 3e 80 44 	lwz     r9,-32700(r30)
    5000:	c1 a9 00 00 	lfs     f13,0(r9)
    5004:	fd 8a 68 2a 	fadd    f12,f10,f13
    5008:	ff 8c 00 00 	fcmpu   cr7,f12,f0
    500c:	40 9c 00 f0 	bge-    cr7,50fc <_dtoa_r+0x1154>
    5010:	89 3d ff ff 	lbz     r9,-1(r29)
    5014:	7c 97 23 78 	mr      r23,r4
    5018:	4b ff f6 fc 	b       4714 <_dtoa_r+0x76c>
    501c:	2f 91 00 39 	cmpwi   cr7,r17,57
    5020:	41 9e 00 c4 	beq-    cr7,50e4 <_dtoa_r+0x113c>
    5024:	3a 31 00 01 	addi    r17,r17,1
    5028:	4b ff fe 4c 	b       4e74 <_dtoa_r+0xecc>
    502c:	7e 72 9b 78 	mr      r18,r19
    5030:	4b ff fa 9c 	b       4acc <_dtoa_r+0xb24>
    5034:	7f b5 98 50 	subf    r29,r21,r19
    5038:	39 20 00 00 	li      r9,0
    503c:	4b ff f7 48 	b       4784 <_dtoa_r+0x7dc>
    5040:	3a a0 00 01 	li      r21,1
    5044:	4b ff fa 80 	b       4ac4 <_dtoa_r+0xb1c>
    5048:	81 21 00 0c 	lwz     r9,12(r1)
    504c:	7f 0e c3 78 	mr      r14,r24
    5050:	7e 7d 9b 78 	mr      r29,r19
    5054:	21 29 00 36 	subfic  r9,r9,54
    5058:	4b ff f7 2c 	b       4784 <_dtoa_r+0x7dc>
    505c:	39 29 00 01 	addi    r9,r9,1
    5060:	55 29 06 3e 	clrlwi  r9,r9,24
    5064:	99 2a 00 00 	stb     r9,0(r10)
    5068:	4b ff f4 b0 	b       4518 <_dtoa_r+0x570>
    506c:	fc 00 48 90 	fmr     f0,f9
    5070:	38 a0 00 02 	li      r5,2
    5074:	4b ff f3 28 	b       439c <_dtoa_r+0x3f4>
    5078:	2f 95 00 00 	cmpwi   cr7,r21,0
    507c:	41 be fc e0 	beq-    cr7,4d5c <_dtoa_r+0xdb4>
    5080:	81 21 00 c4 	lwz     r9,196(r1)
    5084:	2f 89 00 00 	cmpwi   cr7,r9,0
    5088:	40 bd fd fc 	ble-    cr7,4e84 <_dtoa_r+0xedc>
    508c:	39 25 00 01 	addi    r9,r5,1
    5090:	80 be 80 38 	lwz     r5,-32712(r30)
    5094:	6d 29 80 00 	xoris   r9,r9,32768
    5098:	81 5e 80 18 	lwz     r10,-32744(r30)
    509c:	91 21 00 3c 	stw     r9,60(r1)
    50a0:	3d 20 43 30 	lis     r9,17200
    50a4:	91 21 00 38 	stw     r9,56(r1)
    50a8:	38 97 ff ff 	addi    r4,r23,-1
    50ac:	c1 a5 00 00 	lfs     f13,0(r5)
    50b0:	c1 8a 00 00 	lfs     f12,0(r10)
    50b4:	c9 01 00 38 	lfd     f8,56(r1)
    50b8:	fc 00 03 72 	fmul    f0,f0,f13
    50bc:	81 3e 80 3c 	lwz     r9,-32708(r30)
    50c0:	fd 88 60 28 	fsub    f12,f8,f12
    50c4:	81 81 00 c4 	lwz     r12,196(r1)
    50c8:	c1 a9 00 00 	lfs     f13,0(r9)
    50cc:	fd a0 6b 3a 	fmadd   f13,f0,f12,f13
    50d0:	d9 a1 00 d0 	stfd    f13,208(r1)
    50d4:	81 41 00 d0 	lwz     r10,208(r1)
    50d8:	81 61 00 d4 	lwz     r11,212(r1)
    50dc:	3d 4a fc c0 	addis   r10,r10,-832
    50e0:	4b ff f3 24 	b       4404 <_dtoa_r+0x45c>
    50e4:	39 20 00 39 	li      r9,57
    50e8:	7e 72 9b 78 	mr      r18,r19
    50ec:	99 3d 00 00 	stb     r9,0(r29)
    50f0:	39 40 00 39 	li      r10,57
    50f4:	3b bd 00 01 	addi    r29,r29,1
    50f8:	4b ff f9 fc 	b       4af4 <_dtoa_r+0xb4c>
    50fc:	fd ad 50 28 	fsub    f13,f13,f10
    5100:	ff 8d 00 00 	fcmpu   cr7,f13,f0
    5104:	40 bd fd 80 	ble-    cr7,4e84 <_dtoa_r+0xedc>
    5108:	7f a9 eb 78 	mr      r9,r29
    510c:	89 49 ff ff 	lbz     r10,-1(r9)
    5110:	7d 3d 4b 78 	mr      r29,r9
    5114:	39 29 ff ff 	addi    r9,r9,-1
    5118:	2f 8a 00 30 	cmpwi   cr7,r10,48
    511c:	41 9e ff f0 	beq+    cr7,510c <_dtoa_r+0x1164>
    5120:	7c 97 23 78 	mr      r23,r4
    5124:	4b ff f3 f4 	b       4518 <_dtoa_r+0x570>
    5128:	2f 91 00 39 	cmpwi   cr7,r17,57
    512c:	41 be ff b8 	beq-    cr7,50e4 <_dtoa_r+0x113c>
    5130:	2f 8f 00 00 	cmpwi   cr7,r15,0
    5134:	40 bd fd 40 	ble-    cr7,4e74 <_dtoa_r+0xecc>
    5138:	3a 2e 00 31 	addi    r17,r14,49
    513c:	4b ff fd 38 	b       4e74 <_dtoa_r+0xecc>
    5140:	7c 97 23 78 	mr      r23,r4
    5144:	4b ff f5 d0 	b       4714 <_dtoa_r+0x76c>
    5148:	40 be fd 2c 	bne-    cr7,4e74 <_dtoa_r+0xecc>
    514c:	72 29 00 01 	andi.   r9,r17,1
    5150:	41 a2 fd 24 	beq-    4e74 <_dtoa_r+0xecc>
    5154:	4b ff fd 14 	b       4e68 <_dtoa_r+0xec0>
    5158:	7e 44 93 78 	mr      r4,r18
    515c:	7f e3 fb 78 	mr      r3,r31
    5160:	38 a0 00 0a 	li      r5,10
    5164:	38 c0 00 00 	li      r6,0
    5168:	48 00 1d a9 	bl      6f10 <__multadd>
    516c:	82 a1 00 c4 	lwz     r21,196(r1)
    5170:	7c 72 1b 78 	mr      r18,r3
    5174:	4b ff f7 b4 	b       4928 <_dtoa_r+0x980>
    5178:	38 a0 00 02 	li      r5,2
    517c:	4b ff f2 20 	b       439c <_dtoa_r+0x3f4>
    5180:	41 9e f7 64 	beq+    cr7,48e4 <_dtoa_r+0x93c>
    5184:	21 4a 00 3c 	subfic  r10,r10,60
    5188:	4b ff f8 cc 	b       4a54 <_dtoa_r+0xaac>

0000518c <__sflush_r>:
    518c:	7c 08 02 a6 	mflr    r0
    5190:	94 21 ff e0 	stwu    r1,-32(r1)
    5194:	93 61 00 0c 	stw     r27,12(r1)
    5198:	7c 7b 1b 78 	mr      r27,r3
    519c:	90 01 00 24 	stw     r0,36(r1)
    51a0:	93 a1 00 14 	stw     r29,20(r1)
    51a4:	7c 9d 23 78 	mr      r29,r4
    51a8:	a9 24 00 0c 	lha     r9,12(r4)
    51ac:	93 81 00 10 	stw     r28,16(r1)
    51b0:	55 2a 07 38 	rlwinm  r10,r9,0,28,28
    51b4:	93 c1 00 18 	stw     r30,24(r1)
    51b8:	7d 46 07 35 	extsh.  r6,r10
    51bc:	93 e1 00 1c 	stw     r31,28(r1)
    51c0:	40 82 01 00 	bne-    52c0 <__sflush_r+0x134>
    51c4:	81 44 00 04 	lwz     r10,4(r4)
    51c8:	61 28 08 00 	ori     r8,r9,2048
    51cc:	b1 04 00 0c 	sth     r8,12(r4)
    51d0:	2f 8a 00 00 	cmpwi   cr7,r10,0
    51d4:	40 9d 01 84 	ble-    cr7,5358 <__sflush_r+0x1cc>
    51d8:	81 5d 00 28 	lwz     r10,40(r29)
    51dc:	2f 8a 00 00 	cmpwi   cr7,r10,0
    51e0:	41 9e 00 b8 	beq-    cr7,5298 <__sflush_r+0x10c>
    51e4:	55 29 04 e6 	rlwinm  r9,r9,0,19,19
    51e8:	83 fb 00 00 	lwz     r31,0(r27)
    51ec:	7d 27 07 35 	extsh.  r7,r9
    51f0:	38 e0 00 00 	li      r7,0
    51f4:	90 fb 00 00 	stw     r7,0(r27)
    51f8:	41 82 01 70 	beq-    5368 <__sflush_r+0x1dc>
    51fc:	80 bd 00 50 	lwz     r5,80(r29)
    5200:	55 08 07 7a 	rlwinm  r8,r8,0,29,29
    5204:	7d 06 07 35 	extsh.  r6,r8
    5208:	41 82 00 20 	beq-    5228 <__sflush_r+0x9c>
    520c:	81 1d 00 30 	lwz     r8,48(r29)
    5210:	81 3d 00 04 	lwz     r9,4(r29)
    5214:	2f 88 00 00 	cmpwi   cr7,r8,0
    5218:	7c a9 28 50 	subf    r5,r9,r5
    521c:	41 9e 00 0c 	beq-    cr7,5228 <__sflush_r+0x9c>
    5220:	81 3d 00 3c 	lwz     r9,60(r29)
    5224:	7c a9 28 50 	subf    r5,r9,r5
    5228:	7f 63 db 78 	mr      r3,r27
    522c:	80 9d 00 1c 	lwz     r4,28(r29)
    5230:	38 c0 00 00 	li      r6,0
    5234:	7d 49 03 a6 	mtctr   r10
    5238:	4e 80 04 21 	bctrl
    523c:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    5240:	41 9e 01 58 	beq-    cr7,5398 <__sflush_r+0x20c>
    5244:	a9 3d 00 0c 	lha     r9,12(r29)
    5248:	81 5d 00 10 	lwz     r10,16(r29)
    524c:	55 28 04 e6 	rlwinm  r8,r9,0,19,19
    5250:	55 29 05 66 	rlwinm  r9,r9,0,21,19
    5254:	7d 06 07 35 	extsh.  r6,r8
    5258:	b1 3d 00 0c 	sth     r9,12(r29)
    525c:	39 20 00 00 	li      r9,0
    5260:	91 5d 00 00 	stw     r10,0(r29)
    5264:	91 3d 00 04 	stw     r9,4(r29)
    5268:	40 82 01 60 	bne-    53c8 <__sflush_r+0x23c>
    526c:	80 9d 00 30 	lwz     r4,48(r29)
    5270:	93 fb 00 00 	stw     r31,0(r27)
    5274:	2f 84 00 00 	cmpwi   cr7,r4,0
    5278:	41 9e 00 20 	beq-    cr7,5298 <__sflush_r+0x10c>
    527c:	39 3d 00 40 	addi    r9,r29,64
    5280:	7f 84 48 00 	cmpw    cr7,r4,r9
    5284:	41 9e 00 0c 	beq-    cr7,5290 <__sflush_r+0x104>
    5288:	7f 63 db 78 	mr      r3,r27
    528c:	48 00 08 01 	bl      5a8c <_free_r>
    5290:	39 20 00 00 	li      r9,0
    5294:	91 3d 00 30 	stw     r9,48(r29)
    5298:	38 60 00 00 	li      r3,0
    529c:	80 01 00 24 	lwz     r0,36(r1)
    52a0:	83 61 00 0c 	lwz     r27,12(r1)
    52a4:	7c 08 03 a6 	mtlr    r0
    52a8:	83 81 00 10 	lwz     r28,16(r1)
    52ac:	83 a1 00 14 	lwz     r29,20(r1)
    52b0:	83 c1 00 18 	lwz     r30,24(r1)
    52b4:	83 e1 00 1c 	lwz     r31,28(r1)
    52b8:	38 21 00 20 	addi    r1,r1,32
    52bc:	4e 80 00 20 	blr
    52c0:	83 84 00 10 	lwz     r28,16(r4)
    52c4:	2f 9c 00 00 	cmpwi   cr7,r28,0
    52c8:	41 be ff d0 	beq-    cr7,5298 <__sflush_r+0x10c>
    52cc:	71 26 00 03 	andi.   r6,r9,3
    52d0:	83 e4 00 00 	lwz     r31,0(r4)
    52d4:	39 40 00 00 	li      r10,0
    52d8:	93 84 00 00 	stw     r28,0(r4)
    52dc:	7f fc f8 50 	subf    r31,r28,r31
    52e0:	40 82 00 08 	bne-    52e8 <__sflush_r+0x15c>
    52e4:	81 44 00 14 	lwz     r10,20(r4)
    52e8:	2f 9f 00 00 	cmpwi   cr7,r31,0
    52ec:	91 5d 00 08 	stw     r10,8(r29)
    52f0:	40 bd ff a8 	ble-    cr7,5298 <__sflush_r+0x10c>
    52f4:	81 3d 00 24 	lwz     r9,36(r29)
    52f8:	7f 85 e3 78 	mr      r5,r28
    52fc:	7f e6 fb 78 	mr      r6,r31
    5300:	7f 63 db 78 	mr      r3,r27
    5304:	80 9d 00 1c 	lwz     r4,28(r29)
    5308:	7d 29 03 a6 	mtctr   r9
    530c:	4e 80 04 21 	bctrl
    5310:	2c 03 00 00 	cmpwi   r3,0
    5314:	7f e3 f8 50 	subf    r31,r3,r31
    5318:	7f 9c 1a 14 	add     r28,r28,r3
    531c:	2f 9f 00 00 	cmpwi   cr7,r31,0
    5320:	41 81 ff d0 	bgt+    52f0 <__sflush_r+0x164>
    5324:	80 01 00 24 	lwz     r0,36(r1)
    5328:	38 60 ff ff 	li      r3,-1
    532c:	a1 3d 00 0c 	lhz     r9,12(r29)
    5330:	7c 08 03 a6 	mtlr    r0
    5334:	83 61 00 0c 	lwz     r27,12(r1)
    5338:	61 29 00 40 	ori     r9,r9,64
    533c:	83 81 00 10 	lwz     r28,16(r1)
    5340:	b1 3d 00 0c 	sth     r9,12(r29)
    5344:	83 c1 00 18 	lwz     r30,24(r1)
    5348:	83 a1 00 14 	lwz     r29,20(r1)
    534c:	83 e1 00 1c 	lwz     r31,28(r1)
    5350:	38 21 00 20 	addi    r1,r1,32
    5354:	4e 80 00 20 	blr
    5358:	81 44 00 3c 	lwz     r10,60(r4)
    535c:	2f 8a 00 00 	cmpwi   cr7,r10,0
    5360:	41 9d fe 78 	bgt+    cr7,51d8 <__sflush_r+0x4c>
    5364:	4b ff ff 34 	b       5298 <__sflush_r+0x10c>
    5368:	38 a0 00 00 	li      r5,0
    536c:	7f 63 db 78 	mr      r3,r27
    5370:	80 9d 00 1c 	lwz     r4,28(r29)
    5374:	38 c0 00 01 	li      r6,1
    5378:	7d 49 03 a6 	mtctr   r10
    537c:	4e 80 04 21 	bctrl
    5380:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    5384:	7c 65 1b 78 	mr      r5,r3
    5388:	41 9e 00 78 	beq-    cr7,5400 <__sflush_r+0x274>
    538c:	a9 1d 00 0c 	lha     r8,12(r29)
    5390:	81 5d 00 28 	lwz     r10,40(r29)
    5394:	4b ff fe 6c 	b       5200 <__sflush_r+0x74>
    5398:	81 3b 00 00 	lwz     r9,0(r27)
    539c:	2f 89 00 00 	cmpwi   cr7,r9,0
    53a0:	40 9e 00 30 	bne-    cr7,53d0 <__sflush_r+0x244>
    53a4:	a9 5d 00 0c 	lha     r10,12(r29)
    53a8:	81 1d 00 10 	lwz     r8,16(r29)
    53ac:	55 47 04 e6 	rlwinm  r7,r10,0,19,19
    53b0:	55 4a 05 66 	rlwinm  r10,r10,0,21,19
    53b4:	7c e6 07 35 	extsh.  r6,r7
    53b8:	b1 5d 00 0c 	sth     r10,12(r29)
    53bc:	91 3d 00 04 	stw     r9,4(r29)
    53c0:	91 1d 00 00 	stw     r8,0(r29)
    53c4:	41 a2 fe a8 	beq-    526c <__sflush_r+0xe0>
    53c8:	90 7d 00 50 	stw     r3,80(r29)
    53cc:	4b ff fe a0 	b       526c <__sflush_r+0xe0>
    53d0:	2f 89 00 1d 	cmpwi   cr7,r9,29
    53d4:	41 9e 00 0c 	beq-    cr7,53e0 <__sflush_r+0x254>
    53d8:	2f 89 00 16 	cmpwi   cr7,r9,22
    53dc:	40 be ff 48 	bne-    cr7,5324 <__sflush_r+0x198>
    53e0:	a1 5d 00 0c 	lhz     r10,12(r29)
    53e4:	81 3d 00 10 	lwz     r9,16(r29)
    53e8:	55 4a 05 66 	rlwinm  r10,r10,0,21,19
    53ec:	b1 5d 00 0c 	sth     r10,12(r29)
    53f0:	39 40 00 00 	li      r10,0
    53f4:	91 5d 00 04 	stw     r10,4(r29)
    53f8:	91 3d 00 00 	stw     r9,0(r29)
    53fc:	4b ff fe 70 	b       526c <__sflush_r+0xe0>
    5400:	81 3b 00 00 	lwz     r9,0(r27)
    5404:	2f 89 00 00 	cmpwi   cr7,r9,0
    5408:	41 be ff 84 	beq-    cr7,538c <__sflush_r+0x200>
    540c:	2f 89 00 1d 	cmpwi   cr7,r9,29
    5410:	41 9e 00 0c 	beq-    cr7,541c <__sflush_r+0x290>
    5414:	2f 89 00 16 	cmpwi   cr7,r9,22
    5418:	40 9e ff 0c 	bne+    cr7,5324 <__sflush_r+0x198>
    541c:	93 fb 00 00 	stw     r31,0(r27)
    5420:	38 60 00 00 	li      r3,0
    5424:	4b ff fe 78 	b       529c <__sflush_r+0x110>

00005428 <_fflush_r>:
    5428:	94 21 ff e0 	stwu    r1,-32(r1)
    542c:	7c 08 02 a6 	mflr    r0
    5430:	93 e1 00 1c 	stw     r31,28(r1)
    5434:	7c 7f 1b 79 	mr.     r31,r3
    5438:	90 01 00 24 	stw     r0,36(r1)
    543c:	41 82 00 10 	beq-    544c <_fflush_r+0x24>
    5440:	81 3f 00 38 	lwz     r9,56(r31)
    5444:	2f 89 00 00 	cmpwi   cr7,r9,0
    5448:	41 9e 00 40 	beq-    cr7,5488 <_fflush_r+0x60>
    544c:	a9 24 00 0c 	lha     r9,12(r4)
    5450:	2f 89 00 00 	cmpwi   cr7,r9,0
    5454:	40 9e 00 1c 	bne-    cr7,5470 <_fflush_r+0x48>
    5458:	80 01 00 24 	lwz     r0,36(r1)
    545c:	38 60 00 00 	li      r3,0
    5460:	83 e1 00 1c 	lwz     r31,28(r1)
    5464:	7c 08 03 a6 	mtlr    r0
    5468:	38 21 00 20 	addi    r1,r1,32
    546c:	4e 80 00 20 	blr
    5470:	80 01 00 24 	lwz     r0,36(r1)
    5474:	7f e3 fb 78 	mr      r3,r31
    5478:	83 e1 00 1c 	lwz     r31,28(r1)
    547c:	7c 08 03 a6 	mtlr    r0
    5480:	38 21 00 20 	addi    r1,r1,32
    5484:	4b ff fd 08 	b       518c <__sflush_r>
    5488:	90 81 00 08 	stw     r4,8(r1)
    548c:	48 00 02 1d 	bl      56a8 <__sinit>
    5490:	80 81 00 08 	lwz     r4,8(r1)
    5494:	4b ff ff b8 	b       544c <_fflush_r+0x24>
    5498:	00 00 f8 b0 	.long 0xf8b0

0000549c <fflush>:
    549c:	94 21 ff f0 	stwu    r1,-16(r1)
    54a0:	7c 08 02 a6 	mflr    r0
    54a4:	42 9f 00 05 	bcl-    20,4*cr7+so,54a8 <fflush+0xc>
    54a8:	7c 64 1b 79 	mr.     r4,r3
    54ac:	93 c1 00 08 	stw     r30,8(r1)
    54b0:	7f c8 02 a6 	mflr    r30
    54b4:	90 01 00 14 	stw     r0,20(r1)
    54b8:	80 1e ff f0 	lwz     r0,-16(r30)
    54bc:	7f c0 f2 14 	add     r30,r0,r30
    54c0:	41 82 00 20 	beq-    54e0 <fflush+0x44>
    54c4:	80 01 00 14 	lwz     r0,20(r1)
    54c8:	81 3e 80 08 	lwz     r9,-32760(r30)
    54cc:	7c 08 03 a6 	mtlr    r0
    54d0:	83 c1 00 08 	lwz     r30,8(r1)
    54d4:	80 69 00 00 	lwz     r3,0(r9)
    54d8:	38 21 00 10 	addi    r1,r1,16
    54dc:	4b ff ff 4c 	b       5428 <_fflush_r>
    54e0:	80 01 00 14 	lwz     r0,20(r1)
    54e4:	81 3e 80 00 	lwz     r9,-32768(r30)
    54e8:	80 9e 80 04 	lwz     r4,-32764(r30)
    54ec:	7c 08 03 a6 	mtlr    r0
    54f0:	83 c1 00 08 	lwz     r30,8(r1)
    54f4:	80 69 00 00 	lwz     r3,0(r9)
    54f8:	38 21 00 10 	addi    r1,r1,16
    54fc:	48 00 09 60 	b       5e5c <_fwalk_reent>

00005500 <__fp_lock>:
    5500:	38 60 00 00 	li      r3,0
    5504:	4e 80 00 20 	blr

00005508 <__fp_unlock>:
    5508:	38 60 00 00 	li      r3,0
    550c:	4e 80 00 20 	blr
    5510:	00 00 f8 44 	.long 0xf844

00005514 <_cleanup_r>:
    5514:	94 21 ff f0 	stwu    r1,-16(r1)
    5518:	7c 08 02 a6 	mflr    r0
    551c:	42 9f 00 05 	bcl-    20,4*cr7+so,5520 <_cleanup_r+0xc>
    5520:	93 c1 00 08 	stw     r30,8(r1)
    5524:	7f c8 02 a6 	mflr    r30
    5528:	90 01 00 14 	stw     r0,20(r1)
    552c:	80 1e ff f0 	lwz     r0,-16(r30)
    5530:	7f c0 f2 14 	add     r30,r0,r30
    5534:	80 01 00 14 	lwz     r0,20(r1)
    5538:	80 9e 80 00 	lwz     r4,-32768(r30)
    553c:	7c 08 03 a6 	mtlr    r0
    5540:	83 c1 00 08 	lwz     r30,8(r1)
    5544:	38 21 00 10 	addi    r1,r1,16
    5548:	48 00 08 24 	b       5d6c <_fwalk>
    554c:	00 00 f8 08 	.long 0xf808

00005550 <std.isra.0>:
    5550:	94 21 ff f0 	stwu    r1,-16(r1)
    5554:	7c 08 02 a6 	mflr    r0
    5558:	42 9f 00 05 	bcl-    20,4*cr7+so,555c <std.isra.0+0xc>
    555c:	39 20 00 00 	li      r9,0
    5560:	93 c1 00 08 	stw     r30,8(r1)
    5564:	7f c8 02 a6 	mflr    r30
    5568:	90 01 00 14 	stw     r0,20(r1)
    556c:	93 e1 00 0c 	stw     r31,12(r1)
    5570:	7c 7f 1b 78 	mr      r31,r3
    5574:	80 1e ff f0 	lwz     r0,-16(r30)
    5578:	b0 83 00 0c 	sth     r4,12(r3)
    557c:	38 80 00 00 	li      r4,0
    5580:	b0 a3 00 0e 	sth     r5,14(r3)
    5584:	7f c0 f2 14 	add     r30,r0,r30
    5588:	91 23 00 00 	stw     r9,0(r3)
    558c:	38 a0 00 08 	li      r5,8
    5590:	91 23 00 04 	stw     r9,4(r3)
    5594:	91 23 00 08 	stw     r9,8(r3)
    5598:	91 23 00 64 	stw     r9,100(r3)
    559c:	91 23 00 10 	stw     r9,16(r3)
    55a0:	91 23 00 14 	stw     r9,20(r3)
    55a4:	91 23 00 18 	stw     r9,24(r3)
    55a8:	38 63 00 5c 	addi    r3,r3,92
    55ac:	4b ff c0 55 	bl      1600 <memset>
    55b0:	81 3e 80 04 	lwz     r9,-32764(r30)
    55b4:	80 01 00 14 	lwz     r0,20(r1)
    55b8:	91 3f 00 20 	stw     r9,32(r31)
    55bc:	81 3e 80 08 	lwz     r9,-32760(r30)
    55c0:	7c 08 03 a6 	mtlr    r0
    55c4:	93 ff 00 1c 	stw     r31,28(r31)
    55c8:	91 3f 00 24 	stw     r9,36(r31)
    55cc:	81 3e 80 0c 	lwz     r9,-32756(r30)
    55d0:	91 3f 00 28 	stw     r9,40(r31)
    55d4:	81 3e 80 10 	lwz     r9,-32752(r30)
    55d8:	83 c1 00 08 	lwz     r30,8(r1)
    55dc:	91 3f 00 2c 	stw     r9,44(r31)
    55e0:	83 e1 00 0c 	lwz     r31,12(r1)
    55e4:	38 21 00 10 	addi    r1,r1,16
    55e8:	4e 80 00 20 	blr

000055ec <__sfmoreglue>:
    55ec:	94 21 ff e0 	stwu    r1,-32(r1)
    55f0:	7c 08 02 a6 	mflr    r0
    55f4:	93 a1 00 14 	stw     r29,20(r1)
    55f8:	1f a4 00 68 	mulli   r29,r4,104
    55fc:	93 81 00 10 	stw     r28,16(r1)
    5600:	7c 9c 23 78 	mr      r28,r4
    5604:	38 9d 00 0c 	addi    r4,r29,12
    5608:	93 e1 00 1c 	stw     r31,28(r1)
    560c:	90 01 00 24 	stw     r0,36(r1)
    5610:	93 c1 00 18 	stw     r30,24(r1)
    5614:	48 00 0d 75 	bl      6388 <_malloc_r>
    5618:	7c 7f 1b 79 	mr.     r31,r3
    561c:	41 82 00 24 	beq-    5640 <__sfmoreglue+0x54>
    5620:	38 7f 00 0c 	addi    r3,r31,12
    5624:	39 20 00 00 	li      r9,0
    5628:	91 3f 00 00 	stw     r9,0(r31)
    562c:	38 80 00 00 	li      r4,0
    5630:	93 9f 00 04 	stw     r28,4(r31)
    5634:	7f a5 eb 78 	mr      r5,r29
    5638:	90 7f 00 08 	stw     r3,8(r31)
    563c:	4b ff bf c5 	bl      1600 <memset>
    5640:	80 01 00 24 	lwz     r0,36(r1)
    5644:	7f e3 fb 78 	mr      r3,r31
    5648:	83 81 00 10 	lwz     r28,16(r1)
    564c:	7c 08 03 a6 	mtlr    r0
    5650:	83 a1 00 14 	lwz     r29,20(r1)
    5654:	83 c1 00 18 	lwz     r30,24(r1)
    5658:	83 e1 00 1c 	lwz     r31,28(r1)
    565c:	38 21 00 20 	addi    r1,r1,32
    5660:	4e 80 00 20 	blr
    5664:	00 00 f6 f0 	.long 0xf6f0

00005668 <_cleanup>:
    5668:	94 21 ff f0 	stwu    r1,-16(r1)
    566c:	7c 08 02 a6 	mflr    r0
    5670:	42 9f 00 05 	bcl-    20,4*cr7+so,5674 <_cleanup+0xc>
    5674:	93 c1 00 08 	stw     r30,8(r1)
    5678:	7f c8 02 a6 	mflr    r30
    567c:	90 01 00 14 	stw     r0,20(r1)
    5680:	80 1e ff f0 	lwz     r0,-16(r30)
    5684:	7f c0 f2 14 	add     r30,r0,r30
    5688:	80 01 00 14 	lwz     r0,20(r1)
    568c:	81 3e 80 14 	lwz     r9,-32748(r30)
    5690:	7c 08 03 a6 	mtlr    r0
    5694:	83 c1 00 08 	lwz     r30,8(r1)
    5698:	80 69 00 00 	lwz     r3,0(r9)
    569c:	38 21 00 10 	addi    r1,r1,16
    56a0:	4b ff fe 74 	b       5514 <_cleanup_r>
    56a4:	00 00 f6 b0 	.long 0xf6b0

000056a8 <__sinit>:
    56a8:	7c 08 02 a6 	mflr    r0
    56ac:	94 21 ff f0 	stwu    r1,-16(r1)
    56b0:	42 9f 00 05 	bcl-    20,4*cr7+so,56b4 <__sinit+0xc>
    56b4:	93 c1 00 08 	stw     r30,8(r1)
    56b8:	7f c8 02 a6 	mflr    r30
    56bc:	90 01 00 14 	stw     r0,20(r1)
    56c0:	93 e1 00 0c 	stw     r31,12(r1)
    56c4:	7c 7f 1b 78 	mr      r31,r3
    56c8:	81 23 00 38 	lwz     r9,56(r3)
    56cc:	80 1e ff f0 	lwz     r0,-16(r30)
    56d0:	2f 89 00 00 	cmpwi   cr7,r9,0
    56d4:	7f c0 f2 14 	add     r30,r0,r30
    56d8:	41 9e 00 1c 	beq-    cr7,56f4 <__sinit+0x4c>
    56dc:	80 01 00 14 	lwz     r0,20(r1)
    56e0:	83 c1 00 08 	lwz     r30,8(r1)
    56e4:	7c 08 03 a6 	mtlr    r0
    56e8:	83 e1 00 0c 	lwz     r31,12(r1)
    56ec:	38 21 00 10 	addi    r1,r1,16
    56f0:	4e 80 00 20 	blr
    56f4:	81 5e 80 18 	lwz     r10,-32744(r30)
    56f8:	39 03 02 ec 	addi    r8,r3,748
    56fc:	91 3f 02 e0 	stw     r9,736(r31)
    5700:	39 20 00 03 	li      r9,3
    5704:	91 5f 00 3c 	stw     r10,60(r31)
    5708:	39 40 00 01 	li      r10,1
    570c:	91 5f 00 38 	stw     r10,56(r31)
    5710:	38 80 00 04 	li      r4,4
    5714:	91 3f 02 e4 	stw     r9,740(r31)
    5718:	38 a0 00 00 	li      r5,0
    571c:	91 1f 02 e8 	stw     r8,744(r31)
    5720:	80 63 00 04 	lwz     r3,4(r3)
    5724:	4b ff fe 2d 	bl      5550 <std.isra.0>
    5728:	80 7f 00 08 	lwz     r3,8(r31)
    572c:	38 80 00 09 	li      r4,9
    5730:	38 a0 00 01 	li      r5,1
    5734:	4b ff fe 1d 	bl      5550 <std.isra.0>
    5738:	80 01 00 14 	lwz     r0,20(r1)
    573c:	80 7f 00 0c 	lwz     r3,12(r31)
    5740:	38 80 00 12 	li      r4,18
    5744:	83 c1 00 08 	lwz     r30,8(r1)
    5748:	7c 08 03 a6 	mtlr    r0
    574c:	83 e1 00 0c 	lwz     r31,12(r1)
    5750:	38 a0 00 02 	li      r5,2
    5754:	38 21 00 10 	addi    r1,r1,16
    5758:	4b ff fd f8 	b       5550 <std.isra.0>
    575c:	00 00 f5 f8 	.long 0xf5f8

00005760 <__sfp>:
    5760:	94 21 ff e0 	stwu    r1,-32(r1)
    5764:	7c 08 02 a6 	mflr    r0
    5768:	42 9f 00 05 	bcl-    20,4*cr7+so,576c <__sfp+0xc>
    576c:	93 c1 00 18 	stw     r30,24(r1)
    5770:	7f c8 02 a6 	mflr    r30
    5774:	90 01 00 24 	stw     r0,36(r1)
    5778:	93 a1 00 14 	stw     r29,20(r1)
    577c:	80 1e ff f0 	lwz     r0,-16(r30)
    5780:	93 81 00 10 	stw     r28,16(r1)
    5784:	7c 7c 1b 78 	mr      r28,r3
    5788:	7f c0 f2 14 	add     r30,r0,r30
    578c:	93 e1 00 1c 	stw     r31,28(r1)
    5790:	81 3e 80 14 	lwz     r9,-32748(r30)
    5794:	83 a9 00 00 	lwz     r29,0(r9)
    5798:	81 3d 00 38 	lwz     r9,56(r29)
    579c:	2f 89 00 00 	cmpwi   cr7,r9,0
    57a0:	41 9e 00 c8 	beq-    cr7,5868 <__sfp+0x108>
    57a4:	3b bd 02 e0 	addi    r29,r29,736
    57a8:	81 3d 00 04 	lwz     r9,4(r29)
    57ac:	83 fd 00 08 	lwz     r31,8(r29)
    57b0:	35 49 ff ff 	addic.  r10,r9,-1
    57b4:	41 80 00 2c 	blt-    57e0 <__sfp+0x80>
    57b8:	a9 5f 00 0c 	lha     r10,12(r31)
    57bc:	2f 8a 00 00 	cmpwi   cr7,r10,0
    57c0:	41 9e 00 34 	beq-    cr7,57f4 <__sfp+0x94>
    57c4:	7d 29 03 a6 	mtctr   r9
    57c8:	48 00 00 10 	b       57d8 <__sfp+0x78>
    57cc:	a9 3f 00 0c 	lha     r9,12(r31)
    57d0:	2f 89 00 00 	cmpwi   cr7,r9,0
    57d4:	41 9e 00 20 	beq-    cr7,57f4 <__sfp+0x94>
    57d8:	3b ff 00 68 	addi    r31,r31,104
    57dc:	42 00 ff f0 	bdnz+   57cc <__sfp+0x6c>
    57e0:	80 7d 00 00 	lwz     r3,0(r29)
    57e4:	2f 83 00 00 	cmpwi   cr7,r3,0
    57e8:	41 9e 00 8c 	beq-    cr7,5874 <__sfp+0x114>
    57ec:	7c 7d 1b 78 	mr      r29,r3
    57f0:	4b ff ff b8 	b       57a8 <__sfp+0x48>
    57f4:	39 20 ff ff 	li      r9,-1
    57f8:	3b a0 00 00 	li      r29,0
    57fc:	b1 3f 00 0e 	sth     r9,14(r31)
    5800:	39 20 00 01 	li      r9,1
    5804:	b1 3f 00 0c 	sth     r9,12(r31)
    5808:	38 7f 00 5c 	addi    r3,r31,92
    580c:	93 bf 00 64 	stw     r29,100(r31)
    5810:	38 80 00 00 	li      r4,0
    5814:	93 bf 00 00 	stw     r29,0(r31)
    5818:	38 a0 00 08 	li      r5,8
    581c:	93 bf 00 08 	stw     r29,8(r31)
    5820:	93 bf 00 04 	stw     r29,4(r31)
    5824:	93 bf 00 10 	stw     r29,16(r31)
    5828:	93 bf 00 14 	stw     r29,20(r31)
    582c:	93 bf 00 18 	stw     r29,24(r31)
    5830:	4b ff bd d1 	bl      1600 <memset>
    5834:	93 bf 00 30 	stw     r29,48(r31)
    5838:	93 bf 00 34 	stw     r29,52(r31)
    583c:	93 bf 00 44 	stw     r29,68(r31)
    5840:	93 bf 00 48 	stw     r29,72(r31)
    5844:	80 01 00 24 	lwz     r0,36(r1)
    5848:	7f e3 fb 78 	mr      r3,r31
    584c:	83 81 00 10 	lwz     r28,16(r1)
    5850:	7c 08 03 a6 	mtlr    r0
    5854:	83 a1 00 14 	lwz     r29,20(r1)
    5858:	83 c1 00 18 	lwz     r30,24(r1)
    585c:	83 e1 00 1c 	lwz     r31,28(r1)
    5860:	38 21 00 20 	addi    r1,r1,32
    5864:	4e 80 00 20 	blr
    5868:	7f a3 eb 78 	mr      r3,r29
    586c:	4b ff fe 3d 	bl      56a8 <__sinit>
    5870:	4b ff ff 34 	b       57a4 <__sfp+0x44>
    5874:	7f 83 e3 78 	mr      r3,r28
    5878:	38 80 00 04 	li      r4,4
    587c:	4b ff fd 71 	bl      55ec <__sfmoreglue>
    5880:	2f 83 00 00 	cmpwi   cr7,r3,0
    5884:	90 7d 00 00 	stw     r3,0(r29)
    5888:	40 9e ff 64 	bne+    cr7,57ec <__sfp+0x8c>
    588c:	39 20 00 0c 	li      r9,12
    5890:	3b e0 00 00 	li      r31,0
    5894:	91 3c 00 00 	stw     r9,0(r28)
    5898:	4b ff ff ac 	b       5844 <__sfp+0xe4>

0000589c <__sfp_lock_acquire>:
    589c:	4e 80 00 20 	blr

000058a0 <__sfp_lock_release>:
    58a0:	4e 80 00 20 	blr

000058a4 <__sinit_lock_acquire>:
    58a4:	4e 80 00 20 	blr

000058a8 <__sinit_lock_release>:
    58a8:	4e 80 00 20 	blr
    58ac:	00 00 f4 a8 	.long 0xf4a8

000058b0 <__fp_lock_all>:
    58b0:	94 21 ff f0 	stwu    r1,-16(r1)
    58b4:	7c 08 02 a6 	mflr    r0
    58b8:	42 9f 00 05 	bcl-    20,4*cr7+so,58bc <__fp_lock_all+0xc>
    58bc:	93 c1 00 08 	stw     r30,8(r1)
    58c0:	7f c8 02 a6 	mflr    r30
    58c4:	90 01 00 14 	stw     r0,20(r1)
    58c8:	80 1e ff f0 	lwz     r0,-16(r30)
    58cc:	7f c0 f2 14 	add     r30,r0,r30
    58d0:	80 01 00 14 	lwz     r0,20(r1)
    58d4:	81 3e 80 1c 	lwz     r9,-32740(r30)
    58d8:	80 9e 80 20 	lwz     r4,-32736(r30)
    58dc:	7c 08 03 a6 	mtlr    r0
    58e0:	83 c1 00 08 	lwz     r30,8(r1)
    58e4:	80 69 00 00 	lwz     r3,0(r9)
    58e8:	38 21 00 10 	addi    r1,r1,16
    58ec:	48 00 04 80 	b       5d6c <_fwalk>
    58f0:	00 00 f4 64 	.long 0xf464

000058f4 <__fp_unlock_all>:
    58f4:	94 21 ff f0 	stwu    r1,-16(r1)
    58f8:	7c 08 02 a6 	mflr    r0
    58fc:	42 9f 00 05 	bcl-    20,4*cr7+so,5900 <__fp_unlock_all+0xc>
    5900:	93 c1 00 08 	stw     r30,8(r1)
    5904:	7f c8 02 a6 	mflr    r30
    5908:	90 01 00 14 	stw     r0,20(r1)
    590c:	80 1e ff f0 	lwz     r0,-16(r30)
    5910:	7f c0 f2 14 	add     r30,r0,r30
    5914:	80 01 00 14 	lwz     r0,20(r1)
    5918:	81 3e 80 1c 	lwz     r9,-32740(r30)
    591c:	80 9e 80 24 	lwz     r4,-32732(r30)
    5920:	7c 08 03 a6 	mtlr    r0
    5924:	83 c1 00 08 	lwz     r30,8(r1)
    5928:	80 69 00 00 	lwz     r3,0(r9)
    592c:	38 21 00 10 	addi    r1,r1,16
    5930:	48 00 04 3c 	b       5d6c <_fwalk>
    5934:	00 00 f4 48 	.long 0xf448

00005938 <_malloc_trim_r>:
    5938:	94 21 ff e0 	stwu    r1,-32(r1)
    593c:	7c 08 02 a6 	mflr    r0
    5940:	42 9f 00 05 	bcl-    20,4*cr7+so,5944 <_malloc_trim_r+0xc>
    5944:	93 c1 00 18 	stw     r30,24(r1)
    5948:	7f c8 02 a6 	mflr    r30
    594c:	90 01 00 24 	stw     r0,36(r1)
    5950:	93 61 00 0c 	stw     r27,12(r1)
    5954:	7c 9b 23 78 	mr      r27,r4
    5958:	80 1e ff f0 	lwz     r0,-16(r30)
    595c:	93 81 00 10 	stw     r28,16(r1)
    5960:	7f c0 f2 14 	add     r30,r0,r30
    5964:	93 a1 00 14 	stw     r29,20(r1)
    5968:	93 e1 00 1c 	stw     r31,28(r1)
    596c:	7c 7f 1b 78 	mr      r31,r3
    5970:	48 00 14 ad 	bl      6e1c <__malloc_lock>
    5974:	83 be 80 00 	lwz     r29,-32768(r30)
    5978:	81 3d 00 08 	lwz     r9,8(r29)
    597c:	83 89 00 04 	lwz     r28,4(r9)
    5980:	57 9c 00 3a 	rlwinm  r28,r28,0,0,29
    5984:	39 3c 0f ef 	addi    r9,r28,4079
    5988:	7f 7b 48 50 	subf    r27,r27,r9
    598c:	57 7b 00 26 	rlwinm  r27,r27,0,0,19
    5990:	3b 7b f0 00 	addi    r27,r27,-4096
    5994:	2f 9b 0f ff 	cmpwi   cr7,r27,4095
    5998:	40 9d 00 20 	ble-    cr7,59b8 <_malloc_trim_r+0x80>
    599c:	7f e3 fb 78 	mr      r3,r31
    59a0:	38 80 00 00 	li      r4,0
    59a4:	48 00 27 71 	bl      8114 <_sbrk_r>
    59a8:	81 3d 00 08 	lwz     r9,8(r29)
    59ac:	7d 29 e2 14 	add     r9,r9,r28
    59b0:	7f 83 48 00 	cmpw    cr7,r3,r9
    59b4:	41 9e 00 34 	beq-    cr7,59e8 <_malloc_trim_r+0xb0>
    59b8:	7f e3 fb 78 	mr      r3,r31
    59bc:	48 00 14 65 	bl      6e20 <__malloc_unlock>
    59c0:	80 01 00 24 	lwz     r0,36(r1)
    59c4:	83 61 00 0c 	lwz     r27,12(r1)
    59c8:	38 60 00 00 	li      r3,0
    59cc:	7c 08 03 a6 	mtlr    r0
    59d0:	83 81 00 10 	lwz     r28,16(r1)
    59d4:	83 a1 00 14 	lwz     r29,20(r1)
    59d8:	83 c1 00 18 	lwz     r30,24(r1)
    59dc:	83 e1 00 1c 	lwz     r31,28(r1)
    59e0:	38 21 00 20 	addi    r1,r1,32
    59e4:	4e 80 00 20 	blr
    59e8:	7f e3 fb 78 	mr      r3,r31
    59ec:	7c 9b 00 d0 	neg     r4,r27
    59f0:	48 00 27 25 	bl      8114 <_sbrk_r>
    59f4:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    59f8:	41 9e 00 54 	beq-    cr7,5a4c <_malloc_trim_r+0x114>
    59fc:	81 3e 80 04 	lwz     r9,-32764(r30)
    5a00:	7f 9b e0 50 	subf    r28,r27,r28
    5a04:	81 1d 00 08 	lwz     r8,8(r29)
    5a08:	63 9c 00 01 	ori     r28,r28,1
    5a0c:	81 49 00 00 	lwz     r10,0(r9)
    5a10:	7f e3 fb 78 	mr      r3,r31
    5a14:	93 88 00 04 	stw     r28,4(r8)
    5a18:	7f 7b 50 50 	subf    r27,r27,r10
    5a1c:	93 69 00 00 	stw     r27,0(r9)
    5a20:	48 00 14 01 	bl      6e20 <__malloc_unlock>
    5a24:	80 01 00 24 	lwz     r0,36(r1)
    5a28:	38 60 00 01 	li      r3,1
    5a2c:	83 61 00 0c 	lwz     r27,12(r1)
    5a30:	7c 08 03 a6 	mtlr    r0
    5a34:	83 81 00 10 	lwz     r28,16(r1)
    5a38:	83 a1 00 14 	lwz     r29,20(r1)
    5a3c:	83 c1 00 18 	lwz     r30,24(r1)
    5a40:	83 e1 00 1c 	lwz     r31,28(r1)
    5a44:	38 21 00 20 	addi    r1,r1,32
    5a48:	4e 80 00 20 	blr
    5a4c:	7f e3 fb 78 	mr      r3,r31
    5a50:	38 80 00 00 	li      r4,0
    5a54:	48 00 26 c1 	bl      8114 <_sbrk_r>
    5a58:	81 3d 00 08 	lwz     r9,8(r29)
    5a5c:	7d 49 18 50 	subf    r10,r9,r3
    5a60:	2f 8a 00 0f 	cmpwi   cr7,r10,15
    5a64:	40 bd ff 54 	ble-    cr7,59b8 <_malloc_trim_r+0x80>
    5a68:	81 1e 80 08 	lwz     r8,-32760(r30)
    5a6c:	61 4a 00 01 	ori     r10,r10,1
    5a70:	91 49 00 04 	stw     r10,4(r9)
    5a74:	81 08 00 00 	lwz     r8,0(r8)
    5a78:	7c 68 18 50 	subf    r3,r8,r3
    5a7c:	81 1e 80 04 	lwz     r8,-32764(r30)
    5a80:	90 68 00 00 	stw     r3,0(r8)
    5a84:	4b ff ff 34 	b       59b8 <_malloc_trim_r+0x80>
    5a88:	00 00 f2 f4 	.long 0xf2f4

00005a8c <_free_r>:
    5a8c:	94 21 ff e0 	stwu    r1,-32(r1)
    5a90:	7c 08 02 a6 	mflr    r0
    5a94:	42 9f 00 05 	bcl-    20,4*cr7+so,5a98 <_free_r+0xc>
    5a98:	93 c1 00 18 	stw     r30,24(r1)
    5a9c:	7f c8 02 a6 	mflr    r30
    5aa0:	93 e1 00 1c 	stw     r31,28(r1)
    5aa4:	7c 9f 23 79 	mr.     r31,r4
    5aa8:	90 01 00 24 	stw     r0,36(r1)
    5aac:	80 1e ff f0 	lwz     r0,-16(r30)
    5ab0:	93 a1 00 14 	stw     r29,20(r1)
    5ab4:	7f c0 f2 14 	add     r30,r0,r30
    5ab8:	41 82 01 38 	beq-    5bf0 <_free_r+0x164>
    5abc:	7c 7d 1b 78 	mr      r29,r3
    5ac0:	48 00 13 5d 	bl      6e1c <__malloc_lock>
    5ac4:	80 bf ff fc 	lwz     r5,-4(r31)
    5ac8:	39 1f ff f8 	addi    r8,r31,-8
    5acc:	80 fe 80 00 	lwz     r7,-32768(r30)
    5ad0:	54 a9 00 3c 	rlwinm  r9,r5,0,0,30
    5ad4:	80 c7 00 08 	lwz     r6,8(r7)
    5ad8:	7d 48 4a 14 	add     r10,r8,r9
    5adc:	7f 86 50 00 	cmpw    cr7,r6,r10
    5ae0:	80 ca 00 04 	lwz     r6,4(r10)
    5ae4:	54 c6 00 3a 	rlwinm  r6,r6,0,0,29
    5ae8:	41 9e 01 7c 	beq-    cr7,5c64 <_free_r+0x1d8>
    5aec:	70 a4 00 01 	andi.   r4,r5,1
    5af0:	90 ca 00 04 	stw     r6,4(r10)
    5af4:	38 80 00 00 	li      r4,0
    5af8:	40 82 00 2c 	bne-    5b24 <_free_r+0x98>
    5afc:	80 7f ff f8 	lwz     r3,-8(r31)
    5b00:	39 67 00 08 	addi    r11,r7,8
    5b04:	7d 03 40 50 	subf    r8,r3,r8
    5b08:	7d 29 1a 14 	add     r9,r9,r3
    5b0c:	80 a8 00 08 	lwz     r5,8(r8)
    5b10:	7f 85 58 00 	cmpw    cr7,r5,r11
    5b14:	41 9e 01 a8 	beq-    cr7,5cbc <_free_r+0x230>
    5b18:	80 68 00 0c 	lwz     r3,12(r8)
    5b1c:	90 65 00 0c 	stw     r3,12(r5)
    5b20:	90 a3 00 08 	stw     r5,8(r3)
    5b24:	7c aa 32 14 	add     r5,r10,r6
    5b28:	2f 84 00 00 	cmpwi   cr7,r4,0
    5b2c:	80 a5 00 04 	lwz     r5,4(r5)
    5b30:	70 a3 00 01 	andi.   r3,r5,1
    5b34:	40 82 00 28 	bne-    5b5c <_free_r+0xd0>
    5b38:	7d 29 32 14 	add     r9,r9,r6
    5b3c:	80 ca 00 08 	lwz     r6,8(r10)
    5b40:	40 9e 00 10 	bne-    cr7,5b50 <_free_r+0xc4>
    5b44:	80 be 80 14 	lwz     r5,-32748(r30)
    5b48:	7f 06 28 00 	cmpw    cr6,r6,r5
    5b4c:	41 9a 01 78 	beq-    cr6,5cc4 <_free_r+0x238>
    5b50:	81 4a 00 0c 	lwz     r10,12(r10)
    5b54:	91 46 00 0c 	stw     r10,12(r6)
    5b58:	90 ca 00 08 	stw     r6,8(r10)
    5b5c:	61 2a 00 01 	ori     r10,r9,1
    5b60:	7d 28 49 2e 	stwx    r9,r8,r9
    5b64:	91 48 00 04 	stw     r10,4(r8)
    5b68:	40 9e 00 68 	bne-    cr7,5bd0 <_free_r+0x144>
    5b6c:	2b 89 01 ff 	cmplwi  cr7,r9,511
    5b70:	40 9d 00 9c 	ble-    cr7,5c0c <_free_r+0x180>
    5b74:	55 2a ba 7e 	rlwinm  r10,r9,23,9,31
    5b78:	2b 8a 00 04 	cmplwi  cr7,r10,4
    5b7c:	41 9d 01 68 	bgt-    cr7,5ce4 <_free_r+0x258>
    5b80:	55 25 d1 be 	rlwinm  r5,r9,26,6,31
    5b84:	38 a5 00 38 	addi    r5,r5,56
    5b88:	54 a6 08 3c 	rlwinm  r6,r5,1,0,30
    5b8c:	54 c6 10 3a 	rlwinm  r6,r6,2,0,29
    5b90:	7c c7 32 14 	add     r6,r7,r6
    5b94:	81 46 00 08 	lwz     r10,8(r6)
    5b98:	7f 8a 30 00 	cmpw    cr7,r10,r6
    5b9c:	41 9e 01 5c 	beq-    cr7,5cf8 <_free_r+0x26c>
    5ba0:	80 ea 00 04 	lwz     r7,4(r10)
    5ba4:	54 e7 00 3a 	rlwinm  r7,r7,0,0,29
    5ba8:	7f 89 38 40 	cmplw   cr7,r9,r7
    5bac:	40 9c 00 10 	bge-    cr7,5bbc <_free_r+0x130>
    5bb0:	81 4a 00 08 	lwz     r10,8(r10)
    5bb4:	7f 86 50 00 	cmpw    cr7,r6,r10
    5bb8:	40 9e ff e8 	bne+    cr7,5ba0 <_free_r+0x114>
    5bbc:	81 2a 00 0c 	lwz     r9,12(r10)
    5bc0:	91 28 00 0c 	stw     r9,12(r8)
    5bc4:	91 48 00 08 	stw     r10,8(r8)
    5bc8:	91 0a 00 0c 	stw     r8,12(r10)
    5bcc:	91 09 00 08 	stw     r8,8(r9)
    5bd0:	80 01 00 24 	lwz     r0,36(r1)
    5bd4:	7f a3 eb 78 	mr      r3,r29
    5bd8:	83 c1 00 18 	lwz     r30,24(r1)
    5bdc:	83 a1 00 14 	lwz     r29,20(r1)
    5be0:	7c 08 03 a6 	mtlr    r0
    5be4:	83 e1 00 1c 	lwz     r31,28(r1)
    5be8:	38 21 00 20 	addi    r1,r1,32
    5bec:	48 00 12 34 	b       6e20 <__malloc_unlock>
    5bf0:	80 01 00 24 	lwz     r0,36(r1)
    5bf4:	83 a1 00 14 	lwz     r29,20(r1)
    5bf8:	7c 08 03 a6 	mtlr    r0
    5bfc:	83 c1 00 18 	lwz     r30,24(r1)
    5c00:	83 e1 00 1c 	lwz     r31,28(r1)
    5c04:	38 21 00 20 	addi    r1,r1,32
    5c08:	4e 80 00 20 	blr
    5c0c:	55 29 e8 fe 	rlwinm  r9,r9,29,3,31
    5c10:	80 a7 00 04 	lwz     r5,4(r7)
    5c14:	55 2a 18 38 	rlwinm  r10,r9,3,0,28
    5c18:	38 80 00 01 	li      r4,1
    5c1c:	7d 47 52 14 	add     r10,r7,r10
    5c20:	7d 29 16 70 	srawi   r9,r9,2
    5c24:	80 ca 00 08 	lwz     r6,8(r10)
    5c28:	7c 89 48 30 	slw     r9,r4,r9
    5c2c:	80 01 00 24 	lwz     r0,36(r1)
    5c30:	7d 25 2b 78 	or      r5,r9,r5
    5c34:	91 48 00 0c 	stw     r10,12(r8)
    5c38:	7f a3 eb 78 	mr      r3,r29
    5c3c:	90 c8 00 08 	stw     r6,8(r8)
    5c40:	7c 08 03 a6 	mtlr    r0
    5c44:	83 a1 00 14 	lwz     r29,20(r1)
    5c48:	83 c1 00 18 	lwz     r30,24(r1)
    5c4c:	83 e1 00 1c 	lwz     r31,28(r1)
    5c50:	90 a7 00 04 	stw     r5,4(r7)
    5c54:	91 0a 00 08 	stw     r8,8(r10)
    5c58:	91 06 00 0c 	stw     r8,12(r6)
    5c5c:	38 21 00 20 	addi    r1,r1,32
    5c60:	48 00 11 c0 	b       6e20 <__malloc_unlock>
    5c64:	70 a3 00 01 	andi.   r3,r5,1
    5c68:	7d 26 4a 14 	add     r9,r6,r9
    5c6c:	40 82 00 20 	bne-    5c8c <_free_r+0x200>
    5c70:	80 bf ff f8 	lwz     r5,-8(r31)
    5c74:	7d 05 40 50 	subf    r8,r5,r8
    5c78:	7d 29 2a 14 	add     r9,r9,r5
    5c7c:	80 c8 00 0c 	lwz     r6,12(r8)
    5c80:	81 48 00 08 	lwz     r10,8(r8)
    5c84:	90 ca 00 0c 	stw     r6,12(r10)
    5c88:	91 46 00 08 	stw     r10,8(r6)
    5c8c:	81 5e 80 0c 	lwz     r10,-32756(r30)
    5c90:	61 25 00 01 	ori     r5,r9,1
    5c94:	90 a8 00 04 	stw     r5,4(r8)
    5c98:	80 ca 00 00 	lwz     r6,0(r10)
    5c9c:	91 07 00 08 	stw     r8,8(r7)
    5ca0:	7f 89 30 40 	cmplw   cr7,r9,r6
    5ca4:	41 9c ff 2c 	blt+    cr7,5bd0 <_free_r+0x144>
    5ca8:	81 3e 80 10 	lwz     r9,-32752(r30)
    5cac:	7f a3 eb 78 	mr      r3,r29
    5cb0:	80 89 00 00 	lwz     r4,0(r9)
    5cb4:	4b ff fc 85 	bl      5938 <_malloc_trim_r>
    5cb8:	4b ff ff 18 	b       5bd0 <_free_r+0x144>
    5cbc:	38 80 00 01 	li      r4,1
    5cc0:	4b ff fe 64 	b       5b24 <_free_r+0x98>
    5cc4:	61 2a 00 01 	ori     r10,r9,1
    5cc8:	91 07 00 14 	stw     r8,20(r7)
    5ccc:	91 07 00 10 	stw     r8,16(r7)
    5cd0:	90 c8 00 0c 	stw     r6,12(r8)
    5cd4:	90 c8 00 08 	stw     r6,8(r8)
    5cd8:	91 48 00 04 	stw     r10,4(r8)
    5cdc:	7d 28 49 2e 	stwx    r9,r8,r9
    5ce0:	4b ff fe f0 	b       5bd0 <_free_r+0x144>
    5ce4:	2b 8a 00 14 	cmplwi  cr7,r10,20
    5ce8:	41 9d 00 30 	bgt-    cr7,5d18 <_free_r+0x28c>
    5cec:	38 aa 00 5b 	addi    r5,r10,91
    5cf0:	54 a6 08 3c 	rlwinm  r6,r5,1,0,30
    5cf4:	4b ff fe 98 	b       5b8c <_free_r+0x100>
    5cf8:	81 27 00 04 	lwz     r9,4(r7)
    5cfc:	7c a5 16 70 	srawi   r5,r5,2
    5d00:	38 c0 00 01 	li      r6,1
    5d04:	7c c6 28 30 	slw     r6,r6,r5
    5d08:	7c c9 4b 78 	or      r9,r6,r9
    5d0c:	91 27 00 04 	stw     r9,4(r7)
    5d10:	7d 49 53 78 	mr      r9,r10
    5d14:	4b ff fe ac 	b       5bc0 <_free_r+0x134>
    5d18:	2b 8a 00 54 	cmplwi  cr7,r10,84
    5d1c:	41 9d 00 14 	bgt-    cr7,5d30 <_free_r+0x2a4>
    5d20:	55 25 a3 3e 	rlwinm  r5,r9,20,12,31
    5d24:	38 a5 00 6e 	addi    r5,r5,110
    5d28:	54 a6 08 3c 	rlwinm  r6,r5,1,0,30
    5d2c:	4b ff fe 60 	b       5b8c <_free_r+0x100>
    5d30:	2b 8a 01 54 	cmplwi  cr7,r10,340
    5d34:	41 9d 00 14 	bgt-    cr7,5d48 <_free_r+0x2bc>
    5d38:	55 25 8b fe 	rlwinm  r5,r9,17,15,31
    5d3c:	38 a5 00 77 	addi    r5,r5,119
    5d40:	54 a6 08 3c 	rlwinm  r6,r5,1,0,30
    5d44:	4b ff fe 48 	b       5b8c <_free_r+0x100>
    5d48:	2b 8a 05 54 	cmplwi  cr7,r10,1364
    5d4c:	41 9d 00 14 	bgt-    cr7,5d60 <_free_r+0x2d4>
    5d50:	55 25 74 be 	rlwinm  r5,r9,14,18,31
    5d54:	38 a5 00 7c 	addi    r5,r5,124
    5d58:	54 a6 08 3c 	rlwinm  r6,r5,1,0,30
    5d5c:	4b ff fe 30 	b       5b8c <_free_r+0x100>
    5d60:	38 c0 00 fc 	li      r6,252
    5d64:	38 a0 00 7e 	li      r5,126
    5d68:	4b ff fe 24 	b       5b8c <_free_r+0x100>

00005d6c <_fwalk>:
    5d6c:	94 21 ff e0 	stwu    r1,-32(r1)
    5d70:	7c 08 02 a6 	mflr    r0
    5d74:	93 81 00 10 	stw     r28,16(r1)
    5d78:	37 83 02 e0 	addic.  r28,r3,736
    5d7c:	90 01 00 24 	stw     r0,36(r1)
    5d80:	93 41 00 08 	stw     r26,8(r1)
    5d84:	93 61 00 0c 	stw     r27,12(r1)
    5d88:	93 a1 00 14 	stw     r29,20(r1)
    5d8c:	93 c1 00 18 	stw     r30,24(r1)
    5d90:	93 e1 00 1c 	stw     r31,28(r1)
    5d94:	41 82 00 98 	beq-    5e2c <_fwalk+0xc0>
    5d98:	7c 9a 23 78 	mr      r26,r4
    5d9c:	3b 60 00 00 	li      r27,0
    5da0:	83 bc 00 04 	lwz     r29,4(r28)
    5da4:	83 fc 00 08 	lwz     r31,8(r28)
    5da8:	37 bd ff ff 	addic.  r29,r29,-1
    5dac:	41 80 00 48 	blt-    5df4 <_fwalk+0x88>
    5db0:	a1 3f 00 0c 	lhz     r9,12(r31)
    5db4:	55 2a 04 3e 	clrlwi  r10,r9,16
    5db8:	2b 8a 00 01 	cmplwi  cr7,r10,1
    5dbc:	71 2a ff ff 	andi.   r10,r9,65535
    5dc0:	41 82 00 24 	beq-    5de4 <_fwalk+0x78>
    5dc4:	40 9d 00 20 	ble-    cr7,5de4 <_fwalk+0x78>
    5dc8:	a9 3f 00 0e 	lha     r9,14(r31)
    5dcc:	7f e3 fb 78 	mr      r3,r31
    5dd0:	2f 89 ff ff 	cmpwi   cr7,r9,-1
    5dd4:	41 9e 00 10 	beq-    cr7,5de4 <_fwalk+0x78>
    5dd8:	7f 49 03 a6 	mtctr   r26
    5ddc:	4e 80 04 21 	bctrl
    5de0:	7f 7b 1b 78 	or      r27,r27,r3
    5de4:	2f 9d 00 00 	cmpwi   cr7,r29,0
    5de8:	3b ff 00 68 	addi    r31,r31,104
    5dec:	3b bd ff ff 	addi    r29,r29,-1
    5df0:	40 9e ff c0 	bne+    cr7,5db0 <_fwalk+0x44>
    5df4:	83 9c 00 00 	lwz     r28,0(r28)
    5df8:	2f 9c 00 00 	cmpwi   cr7,r28,0
    5dfc:	40 9e ff a4 	bne+    cr7,5da0 <_fwalk+0x34>
    5e00:	80 01 00 24 	lwz     r0,36(r1)
    5e04:	7f 63 db 78 	mr      r3,r27
    5e08:	83 41 00 08 	lwz     r26,8(r1)
    5e0c:	7c 08 03 a6 	mtlr    r0
    5e10:	83 61 00 0c 	lwz     r27,12(r1)
    5e14:	83 81 00 10 	lwz     r28,16(r1)
    5e18:	83 a1 00 14 	lwz     r29,20(r1)
    5e1c:	83 c1 00 18 	lwz     r30,24(r1)
    5e20:	83 e1 00 1c 	lwz     r31,28(r1)
    5e24:	38 21 00 20 	addi    r1,r1,32
    5e28:	4e 80 00 20 	blr
    5e2c:	80 01 00 24 	lwz     r0,36(r1)
    5e30:	3b 60 00 00 	li      r27,0
    5e34:	7f 63 db 78 	mr      r3,r27
    5e38:	83 41 00 08 	lwz     r26,8(r1)
    5e3c:	7c 08 03 a6 	mtlr    r0
    5e40:	83 61 00 0c 	lwz     r27,12(r1)
    5e44:	83 81 00 10 	lwz     r28,16(r1)
    5e48:	83 a1 00 14 	lwz     r29,20(r1)
    5e4c:	83 c1 00 18 	lwz     r30,24(r1)
    5e50:	83 e1 00 1c 	lwz     r31,28(r1)
    5e54:	38 21 00 20 	addi    r1,r1,32
    5e58:	4e 80 00 20 	blr

00005e5c <_fwalk_reent>:
    5e5c:	94 21 ff d0 	stwu    r1,-48(r1)
    5e60:	7c 08 02 a6 	mflr    r0
    5e64:	93 81 00 20 	stw     r28,32(r1)
    5e68:	37 83 02 e0 	addic.  r28,r3,736
    5e6c:	93 41 00 18 	stw     r26,24(r1)
    5e70:	7c 7a 1b 78 	mr      r26,r3
    5e74:	90 01 00 34 	stw     r0,52(r1)
    5e78:	93 21 00 14 	stw     r25,20(r1)
    5e7c:	93 61 00 1c 	stw     r27,28(r1)
    5e80:	93 a1 00 24 	stw     r29,36(r1)
    5e84:	93 c1 00 28 	stw     r30,40(r1)
    5e88:	93 e1 00 2c 	stw     r31,44(r1)
    5e8c:	41 82 00 a0 	beq-    5f2c <_fwalk_reent+0xd0>
    5e90:	7c 99 23 78 	mr      r25,r4
    5e94:	3b 60 00 00 	li      r27,0
    5e98:	83 bc 00 04 	lwz     r29,4(r28)
    5e9c:	83 fc 00 08 	lwz     r31,8(r28)
    5ea0:	37 bd ff ff 	addic.  r29,r29,-1
    5ea4:	41 80 00 4c 	blt-    5ef0 <_fwalk_reent+0x94>
    5ea8:	a1 3f 00 0c 	lhz     r9,12(r31)
    5eac:	55 2a 04 3e 	clrlwi  r10,r9,16
    5eb0:	2b 8a 00 01 	cmplwi  cr7,r10,1
    5eb4:	71 2a ff ff 	andi.   r10,r9,65535
    5eb8:	41 82 00 28 	beq-    5ee0 <_fwalk_reent+0x84>
    5ebc:	40 9d 00 24 	ble-    cr7,5ee0 <_fwalk_reent+0x84>
    5ec0:	a9 3f 00 0e 	lha     r9,14(r31)
    5ec4:	7f e4 fb 78 	mr      r4,r31
    5ec8:	7f 43 d3 78 	mr      r3,r26
    5ecc:	2f 89 ff ff 	cmpwi   cr7,r9,-1
    5ed0:	41 9e 00 10 	beq-    cr7,5ee0 <_fwalk_reent+0x84>
    5ed4:	7f 29 03 a6 	mtctr   r25
    5ed8:	4e 80 04 21 	bctrl
    5edc:	7f 7b 1b 78 	or      r27,r27,r3
    5ee0:	2f 9d 00 00 	cmpwi   cr7,r29,0
    5ee4:	3b ff 00 68 	addi    r31,r31,104
    5ee8:	3b bd ff ff 	addi    r29,r29,-1
    5eec:	40 9e ff bc 	bne+    cr7,5ea8 <_fwalk_reent+0x4c>
    5ef0:	83 9c 00 00 	lwz     r28,0(r28)
    5ef4:	2f 9c 00 00 	cmpwi   cr7,r28,0
    5ef8:	40 9e ff a0 	bne+    cr7,5e98 <_fwalk_reent+0x3c>
    5efc:	80 01 00 34 	lwz     r0,52(r1)
    5f00:	7f 63 db 78 	mr      r3,r27
    5f04:	83 21 00 14 	lwz     r25,20(r1)
    5f08:	7c 08 03 a6 	mtlr    r0
    5f0c:	83 41 00 18 	lwz     r26,24(r1)
    5f10:	83 61 00 1c 	lwz     r27,28(r1)
    5f14:	83 81 00 20 	lwz     r28,32(r1)
    5f18:	83 a1 00 24 	lwz     r29,36(r1)
    5f1c:	83 c1 00 28 	lwz     r30,40(r1)
    5f20:	83 e1 00 2c 	lwz     r31,44(r1)
    5f24:	38 21 00 30 	addi    r1,r1,48
    5f28:	4e 80 00 20 	blr
    5f2c:	80 01 00 34 	lwz     r0,52(r1)
    5f30:	3b 60 00 00 	li      r27,0
    5f34:	7f 63 db 78 	mr      r3,r27
    5f38:	83 21 00 14 	lwz     r25,20(r1)
    5f3c:	7c 08 03 a6 	mtlr    r0
    5f40:	83 41 00 18 	lwz     r26,24(r1)
    5f44:	83 61 00 1c 	lwz     r27,28(r1)
    5f48:	83 81 00 20 	lwz     r28,32(r1)
    5f4c:	83 a1 00 24 	lwz     r29,36(r1)
    5f50:	83 c1 00 28 	lwz     r30,40(r1)
    5f54:	83 e1 00 2c 	lwz     r31,44(r1)
    5f58:	38 21 00 30 	addi    r1,r1,48
    5f5c:	4e 80 00 20 	blr
    5f60:	00 00 ee 34 	.long 0xee34

00005f64 <_setlocale_r>:
    5f64:	94 21 ff e0 	stwu    r1,-32(r1)
    5f68:	7c 08 02 a6 	mflr    r0
    5f6c:	42 9f 00 05 	bcl-    20,4*cr7+so,5f70 <_setlocale_r+0xc>
    5f70:	93 c1 00 18 	stw     r30,24(r1)
    5f74:	7f c8 02 a6 	mflr    r30
    5f78:	93 a1 00 14 	stw     r29,20(r1)
    5f7c:	7c bd 2b 79 	mr.     r29,r5
    5f80:	90 01 00 24 	stw     r0,36(r1)
    5f84:	80 1e ff f0 	lwz     r0,-16(r30)
    5f88:	93 e1 00 1c 	stw     r31,28(r1)
    5f8c:	7f c0 f2 14 	add     r30,r0,r30
    5f90:	41 82 00 84 	beq-    6014 <_setlocale_r+0xb0>
    5f94:	80 9e 80 04 	lwz     r4,-32764(r30)
    5f98:	7f a3 eb 78 	mr      r3,r29
    5f9c:	48 00 23 71 	bl      830c <strcmp>
    5fa0:	83 fe 80 00 	lwz     r31,-32768(r30)
    5fa4:	2f 83 00 00 	cmpwi   cr7,r3,0
    5fa8:	40 9e 00 24 	bne-    cr7,5fcc <_setlocale_r+0x68>
    5fac:	80 01 00 24 	lwz     r0,36(r1)
    5fb0:	7f e3 fb 78 	mr      r3,r31
    5fb4:	83 a1 00 14 	lwz     r29,20(r1)
    5fb8:	7c 08 03 a6 	mtlr    r0
    5fbc:	83 c1 00 18 	lwz     r30,24(r1)
    5fc0:	83 e1 00 1c 	lwz     r31,28(r1)
    5fc4:	38 21 00 20 	addi    r1,r1,32
    5fc8:	4e 80 00 20 	blr
    5fcc:	7f a3 eb 78 	mr      r3,r29
    5fd0:	7f e4 fb 78 	mr      r4,r31
    5fd4:	48 00 23 39 	bl      830c <strcmp>
    5fd8:	2f 83 00 00 	cmpwi   cr7,r3,0
    5fdc:	41 9e ff d0 	beq+    cr7,5fac <_setlocale_r+0x48>
    5fe0:	80 9e 80 08 	lwz     r4,-32760(r30)
    5fe4:	7f a3 eb 78 	mr      r3,r29
    5fe8:	48 00 23 25 	bl      830c <strcmp>
    5fec:	80 01 00 24 	lwz     r0,36(r1)
    5ff0:	30 63 ff ff 	addic   r3,r3,-1
    5ff4:	7c 63 19 10 	subfe   r3,r3,r3
    5ff8:	83 a1 00 14 	lwz     r29,20(r1)
    5ffc:	7c 08 03 a6 	mtlr    r0
    6000:	7f e3 18 38 	and     r3,r31,r3
    6004:	83 c1 00 18 	lwz     r30,24(r1)
    6008:	83 e1 00 1c 	lwz     r31,28(r1)
    600c:	38 21 00 20 	addi    r1,r1,32
    6010:	4e 80 00 20 	blr
    6014:	83 fe 80 00 	lwz     r31,-32768(r30)
    6018:	4b ff ff 94 	b       5fac <_setlocale_r+0x48>
    601c:	00 00 ed 78 	.long 0xed78

00006020 <__locale_charset>:
    6020:	94 21 ff f0 	stwu    r1,-16(r1)
    6024:	7c 08 02 a6 	mflr    r0
    6028:	42 9f 00 05 	bcl-    20,4*cr7+so,602c <__locale_charset+0xc>
    602c:	93 c1 00 08 	stw     r30,8(r1)
    6030:	7f c8 02 a6 	mflr    r30
    6034:	90 01 00 14 	stw     r0,20(r1)
    6038:	80 1e ff f0 	lwz     r0,-16(r30)
    603c:	7f c0 f2 14 	add     r30,r0,r30
    6040:	80 01 00 14 	lwz     r0,20(r1)
    6044:	80 7e 80 0c 	lwz     r3,-32756(r30)
    6048:	7c 08 03 a6 	mtlr    r0
    604c:	83 c1 00 08 	lwz     r30,8(r1)
    6050:	38 21 00 10 	addi    r1,r1,16
    6054:	4e 80 00 20 	blr
    6058:	00 00 ed 3c 	.long 0xed3c

0000605c <__locale_mb_cur_max>:
    605c:	94 21 ff f0 	stwu    r1,-16(r1)
    6060:	7c 08 02 a6 	mflr    r0
    6064:	42 9f 00 05 	bcl-    20,4*cr7+so,6068 <__locale_mb_cur_max+0xc>
    6068:	93 c1 00 08 	stw     r30,8(r1)
    606c:	7f c8 02 a6 	mflr    r30
    6070:	90 01 00 14 	stw     r0,20(r1)
    6074:	80 1e ff f0 	lwz     r0,-16(r30)
    6078:	7f c0 f2 14 	add     r30,r0,r30
    607c:	80 01 00 14 	lwz     r0,20(r1)
    6080:	81 3e 80 10 	lwz     r9,-32752(r30)
    6084:	7c 08 03 a6 	mtlr    r0
    6088:	83 c1 00 08 	lwz     r30,8(r1)
    608c:	80 69 00 00 	lwz     r3,0(r9)
    6090:	38 21 00 10 	addi    r1,r1,16
    6094:	4e 80 00 20 	blr
    6098:	00 00 ec fc 	.long 0xecfc

0000609c <__locale_msgcharset>:
    609c:	94 21 ff f0 	stwu    r1,-16(r1)
    60a0:	7c 08 02 a6 	mflr    r0
    60a4:	42 9f 00 05 	bcl-    20,4*cr7+so,60a8 <__locale_msgcharset+0xc>
    60a8:	93 c1 00 08 	stw     r30,8(r1)
    60ac:	7f c8 02 a6 	mflr    r30
    60b0:	90 01 00 14 	stw     r0,20(r1)
    60b4:	80 1e ff f0 	lwz     r0,-16(r30)
    60b8:	7f c0 f2 14 	add     r30,r0,r30
    60bc:	80 01 00 14 	lwz     r0,20(r1)
    60c0:	80 7e 80 0c 	lwz     r3,-32756(r30)
    60c4:	7c 08 03 a6 	mtlr    r0
    60c8:	83 c1 00 08 	lwz     r30,8(r1)
    60cc:	38 63 00 20 	addi    r3,r3,32
    60d0:	38 21 00 10 	addi    r1,r1,16
    60d4:	4e 80 00 20 	blr

000060d8 <__locale_cjk_lang>:
    60d8:	38 60 00 00 	li      r3,0
    60dc:	4e 80 00 20 	blr
    60e0:	00 00 ec b4 	.long 0xecb4

000060e4 <_localeconv_r>:
    60e4:	94 21 ff f0 	stwu    r1,-16(r1)
    60e8:	7c 08 02 a6 	mflr    r0
    60ec:	42 9f 00 05 	bcl-    20,4*cr7+so,60f0 <_localeconv_r+0xc>
    60f0:	93 c1 00 08 	stw     r30,8(r1)
    60f4:	7f c8 02 a6 	mflr    r30
    60f8:	90 01 00 14 	stw     r0,20(r1)
    60fc:	80 1e ff f0 	lwz     r0,-16(r30)
    6100:	7f c0 f2 14 	add     r30,r0,r30
    6104:	80 01 00 14 	lwz     r0,20(r1)
    6108:	80 7e 80 14 	lwz     r3,-32748(r30)
    610c:	7c 08 03 a6 	mtlr    r0
    6110:	83 c1 00 08 	lwz     r30,8(r1)
    6114:	38 21 00 10 	addi    r1,r1,16
    6118:	4e 80 00 20 	blr
    611c:	00 00 ec 78 	.long 0xec78

00006120 <setlocale>:
    6120:	94 21 ff f0 	stwu    r1,-16(r1)
    6124:	7c 08 02 a6 	mflr    r0
    6128:	42 9f 00 05 	bcl-    20,4*cr7+so,612c <setlocale+0xc>
    612c:	7c 69 1b 78 	mr      r9,r3
    6130:	93 c1 00 08 	stw     r30,8(r1)
    6134:	7f c8 02 a6 	mflr    r30
    6138:	90 01 00 14 	stw     r0,20(r1)
    613c:	7c 85 23 78 	mr      r5,r4
    6140:	7d 24 4b 78 	mr      r4,r9
    6144:	80 1e ff f0 	lwz     r0,-16(r30)
    6148:	7f c0 f2 14 	add     r30,r0,r30
    614c:	80 01 00 14 	lwz     r0,20(r1)
    6150:	81 5e 80 18 	lwz     r10,-32744(r30)
    6154:	7c 08 03 a6 	mtlr    r0
    6158:	83 c1 00 08 	lwz     r30,8(r1)
    615c:	80 6a 00 00 	lwz     r3,0(r10)
    6160:	38 21 00 10 	addi    r1,r1,16
    6164:	4b ff fe 00 	b       5f64 <_setlocale_r>
    6168:	00 00 ec 2c 	.long 0xec2c

0000616c <localeconv>:
    616c:	94 21 ff f0 	stwu    r1,-16(r1)
    6170:	7c 08 02 a6 	mflr    r0
    6174:	42 9f 00 05 	bcl-    20,4*cr7+so,6178 <localeconv+0xc>
    6178:	93 c1 00 08 	stw     r30,8(r1)
    617c:	7f c8 02 a6 	mflr    r30
    6180:	90 01 00 14 	stw     r0,20(r1)
    6184:	80 1e ff f0 	lwz     r0,-16(r30)
    6188:	7f c0 f2 14 	add     r30,r0,r30
    618c:	80 01 00 14 	lwz     r0,20(r1)
    6190:	80 7e 80 14 	lwz     r3,-32748(r30)
    6194:	7c 08 03 a6 	mtlr    r0
    6198:	83 c1 00 08 	lwz     r30,8(r1)
    619c:	38 21 00 10 	addi    r1,r1,16
    61a0:	4e 80 00 20 	blr
    61a4:	00 00 ec 0c 	.long 0xec0c

000061a8 <__smakebuf_r>:
    61a8:	7c 08 02 a6 	mflr    r0
    61ac:	94 21 ff a0 	stwu    r1,-96(r1)
    61b0:	42 9f 00 05 	bcl-    20,4*cr7+so,61b4 <__smakebuf_r+0xc>
    61b4:	93 c1 00 58 	stw     r30,88(r1)
    61b8:	7f c8 02 a6 	mflr    r30
    61bc:	90 01 00 64 	stw     r0,100(r1)
    61c0:	93 e1 00 5c 	stw     r31,92(r1)
    61c4:	7c 9f 23 78 	mr      r31,r4
    61c8:	a9 24 00 0c 	lha     r9,12(r4)
    61cc:	80 1e ff f0 	lwz     r0,-16(r30)
    61d0:	55 2a 07 bc 	rlwinm  r10,r9,0,30,30
    61d4:	93 61 00 4c 	stw     r27,76(r1)
    61d8:	7d 48 07 35 	extsh.  r8,r10
    61dc:	93 81 00 50 	stw     r28,80(r1)
    61e0:	93 a1 00 54 	stw     r29,84(r1)
    61e4:	7f c0 f2 14 	add     r30,r0,r30
    61e8:	40 82 00 e4 	bne-    62cc <__smakebuf_r+0x124>
    61ec:	a8 84 00 0e 	lha     r4,14(r4)
    61f0:	7c 7c 1b 78 	mr      r28,r3
    61f4:	2f 84 00 00 	cmpwi   cr7,r4,0
    61f8:	41 9c 00 50 	blt-    cr7,6248 <__smakebuf_r+0xa0>
    61fc:	38 a1 00 08 	addi    r5,r1,8
    6200:	48 00 3d b9 	bl      9fb8 <_fstat_r>
    6204:	2f 83 00 00 	cmpwi   cr7,r3,0
    6208:	41 9c 00 3c 	blt-    cr7,6244 <__smakebuf_r+0x9c>
    620c:	83 61 00 0c 	lwz     r27,12(r1)
    6210:	39 20 00 00 	li      r9,0
    6214:	61 29 80 00 	ori     r9,r9,32768
    6218:	57 7b 04 26 	rlwinm  r27,r27,0,16,19
    621c:	7f 9b 48 00 	cmpw    cr7,r27,r9
    6220:	6b 7b 20 00 	xori    r27,r27,8192
    6224:	7f 7b 00 34 	cntlzw  r27,r27
    6228:	57 7b d9 7e 	rlwinm  r27,r27,27,5,31
    622c:	41 9e 00 d8 	beq-    cr7,6304 <__smakebuf_r+0x15c>
    6230:	a1 3f 00 0c 	lhz     r9,12(r31)
    6234:	3b a0 04 00 	li      r29,1024
    6238:	61 29 08 00 	ori     r9,r9,2048
    623c:	b1 3f 00 0c 	sth     r9,12(r31)
    6240:	48 00 00 2c 	b       626c <__smakebuf_r+0xc4>
    6244:	a9 3f 00 0c 	lha     r9,12(r31)
    6248:	55 3d 06 30 	rlwinm  r29,r9,0,24,24
    624c:	61 29 08 00 	ori     r9,r9,2048
    6250:	7f bd 07 34 	extsh   r29,r29
    6254:	b1 3f 00 0c 	sth     r9,12(r31)
    6258:	33 bd ff ff 	addic   r29,r29,-1
    625c:	7f bd e9 10 	subfe   r29,r29,r29
    6260:	3b 60 00 00 	li      r27,0
    6264:	57 bd 05 b2 	rlwinm  r29,r29,0,22,25
    6268:	3b bd 00 40 	addi    r29,r29,64
    626c:	7f 83 e3 78 	mr      r3,r28
    6270:	7f a4 eb 78 	mr      r4,r29
    6274:	48 00 01 15 	bl      6388 <_malloc_r>
    6278:	2c 03 00 00 	cmpwi   r3,0
    627c:	41 82 00 d8 	beq-    6354 <__smakebuf_r+0x1ac>
    6280:	a1 5f 00 0c 	lhz     r10,12(r31)
    6284:	2f 9b 00 00 	cmpwi   cr7,r27,0
    6288:	61 48 00 80 	ori     r8,r10,128
    628c:	81 5e 80 04 	lwz     r10,-32764(r30)
    6290:	91 5c 00 3c 	stw     r10,60(r28)
    6294:	b1 1f 00 0c 	sth     r8,12(r31)
    6298:	90 7f 00 00 	stw     r3,0(r31)
    629c:	90 7f 00 10 	stw     r3,16(r31)
    62a0:	93 bf 00 14 	stw     r29,20(r31)
    62a4:	40 9e 00 8c 	bne-    cr7,6330 <__smakebuf_r+0x188>
    62a8:	80 01 00 64 	lwz     r0,100(r1)
    62ac:	83 61 00 4c 	lwz     r27,76(r1)
    62b0:	7c 08 03 a6 	mtlr    r0
    62b4:	83 81 00 50 	lwz     r28,80(r1)
    62b8:	83 a1 00 54 	lwz     r29,84(r1)
    62bc:	83 c1 00 58 	lwz     r30,88(r1)
    62c0:	83 e1 00 5c 	lwz     r31,92(r1)
    62c4:	38 21 00 60 	addi    r1,r1,96
    62c8:	4e 80 00 20 	blr
    62cc:	80 01 00 64 	lwz     r0,100(r1)
    62d0:	39 24 00 43 	addi    r9,r4,67
    62d4:	91 24 00 00 	stw     r9,0(r4)
    62d8:	7c 08 03 a6 	mtlr    r0
    62dc:	91 24 00 10 	stw     r9,16(r4)
    62e0:	39 20 00 01 	li      r9,1
    62e4:	83 61 00 4c 	lwz     r27,76(r1)
    62e8:	83 81 00 50 	lwz     r28,80(r1)
    62ec:	83 a1 00 54 	lwz     r29,84(r1)
    62f0:	83 c1 00 58 	lwz     r30,88(r1)
    62f4:	83 e1 00 5c 	lwz     r31,92(r1)
    62f8:	91 24 00 14 	stw     r9,20(r4)
    62fc:	38 21 00 60 	addi    r1,r1,96
    6300:	4e 80 00 20 	blr
    6304:	81 5f 00 28 	lwz     r10,40(r31)
    6308:	81 3e 80 00 	lwz     r9,-32768(r30)
    630c:	7f 8a 48 00 	cmpw    cr7,r10,r9
    6310:	40 9e ff 20 	bne+    cr7,6230 <__smakebuf_r+0x88>
    6314:	a1 3f 00 0c 	lhz     r9,12(r31)
    6318:	3b a0 04 00 	li      r29,1024
    631c:	61 29 04 00 	ori     r9,r9,1024
    6320:	b1 3f 00 0c 	sth     r9,12(r31)
    6324:	39 20 04 00 	li      r9,1024
    6328:	91 3f 00 4c 	stw     r9,76(r31)
    632c:	4b ff ff 40 	b       626c <__smakebuf_r+0xc4>
    6330:	a8 9f 00 0e 	lha     r4,14(r31)
    6334:	7f 83 e3 78 	mr      r3,r28
    6338:	48 00 42 65 	bl      a59c <_isatty_r>
    633c:	2f 83 00 00 	cmpwi   cr7,r3,0
    6340:	41 be ff 68 	beq-    cr7,62a8 <__smakebuf_r+0x100>
    6344:	a1 3f 00 0c 	lhz     r9,12(r31)
    6348:	61 29 00 01 	ori     r9,r9,1
    634c:	b1 3f 00 0c 	sth     r9,12(r31)
    6350:	4b ff ff 58 	b       62a8 <__smakebuf_r+0x100>
    6354:	a9 3f 00 0c 	lha     r9,12(r31)
    6358:	55 2a 05 ac 	rlwinm  r10,r9,0,22,22
    635c:	7d 48 07 35 	extsh.  r8,r10
    6360:	40 a2 ff 48 	bne-    62a8 <__smakebuf_r+0x100>
    6364:	61 29 00 02 	ori     r9,r9,2
    6368:	39 5f 00 43 	addi    r10,r31,67
    636c:	b1 3f 00 0c 	sth     r9,12(r31)
    6370:	39 20 00 01 	li      r9,1
    6374:	91 5f 00 00 	stw     r10,0(r31)
    6378:	91 5f 00 10 	stw     r10,16(r31)
    637c:	91 3f 00 14 	stw     r9,20(r31)
    6380:	4b ff ff 28 	b       62a8 <__smakebuf_r+0x100>
    6384:	00 00 ea 34 	.long 0xea34

00006388 <_malloc_r>:
    6388:	94 21 ff c0 	stwu    r1,-64(r1)
    638c:	7c 08 02 a6 	mflr    r0
    6390:	42 9f 00 05 	bcl-    20,4*cr7+so,6394 <_malloc_r+0xc>
    6394:	93 a1 00 34 	stw     r29,52(r1)
    6398:	3b a4 00 0b 	addi    r29,r4,11
    639c:	93 c1 00 38 	stw     r30,56(r1)
    63a0:	7f c8 02 a6 	mflr    r30
    63a4:	2b 9d 00 16 	cmplwi  cr7,r29,22
    63a8:	90 01 00 44 	stw     r0,68(r1)
    63ac:	93 61 00 2c 	stw     r27,44(r1)
    63b0:	7c 7b 1b 78 	mr      r27,r3
    63b4:	80 1e ff f0 	lwz     r0,-16(r30)
    63b8:	92 a1 00 14 	stw     r21,20(r1)
    63bc:	92 c1 00 18 	stw     r22,24(r1)
    63c0:	7f c0 f2 14 	add     r30,r0,r30
    63c4:	92 e1 00 1c 	stw     r23,28(r1)
    63c8:	93 01 00 20 	stw     r24,32(r1)
    63cc:	93 21 00 24 	stw     r25,36(r1)
    63d0:	93 41 00 28 	stw     r26,40(r1)
    63d4:	93 81 00 30 	stw     r28,48(r1)
    63d8:	93 e1 00 3c 	stw     r31,60(r1)
    63dc:	40 9d 00 b0 	ble-    cr7,648c <_malloc_r+0x104>
    63e0:	57 bd 00 39 	rlwinm. r29,r29,0,0,28
    63e4:	41 80 00 b4 	blt-    6498 <_malloc_r+0x110>
    63e8:	7f 84 e8 40 	cmplw   cr7,r4,r29
    63ec:	41 9d 00 ac 	bgt-    cr7,6498 <_malloc_r+0x110>
    63f0:	7f 63 db 78 	mr      r3,r27
    63f4:	48 00 0a 29 	bl      6e1c <__malloc_lock>
    63f8:	2b 9d 01 f7 	cmplwi  cr7,r29,503
    63fc:	41 9d 00 e8 	bgt-    cr7,64e4 <_malloc_r+0x15c>
    6400:	83 9e 80 00 	lwz     r28,-32768(r30)
    6404:	57 a5 e8 fe 	rlwinm  r5,r29,29,3,31
    6408:	7d 3c ea 14 	add     r9,r28,r29
    640c:	83 e9 00 0c 	lwz     r31,12(r9)
    6410:	7f 9f 48 00 	cmpw    cr7,r31,r9
    6414:	41 9e 05 f0 	beq-    cr7,6a04 <_malloc_r+0x67c>
    6418:	81 5f 00 04 	lwz     r10,4(r31)
    641c:	81 1f 00 0c 	lwz     r8,12(r31)
    6420:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    6424:	7d 5f 52 14 	add     r10,r31,r10
    6428:	80 ea 00 04 	lwz     r7,4(r10)
    642c:	81 3f 00 08 	lwz     r9,8(r31)
    6430:	60 e7 00 01 	ori     r7,r7,1
    6434:	7f 63 db 78 	mr      r3,r27
    6438:	3b ff 00 08 	addi    r31,r31,8
    643c:	91 09 00 0c 	stw     r8,12(r9)
    6440:	91 28 00 08 	stw     r9,8(r8)
    6444:	90 ea 00 04 	stw     r7,4(r10)
    6448:	48 00 09 d9 	bl      6e20 <__malloc_unlock>
    644c:	80 01 00 44 	lwz     r0,68(r1)
    6450:	7f e3 fb 78 	mr      r3,r31
    6454:	82 a1 00 14 	lwz     r21,20(r1)
    6458:	7c 08 03 a6 	mtlr    r0
    645c:	82 c1 00 18 	lwz     r22,24(r1)
    6460:	82 e1 00 1c 	lwz     r23,28(r1)
    6464:	83 01 00 20 	lwz     r24,32(r1)
    6468:	83 21 00 24 	lwz     r25,36(r1)
    646c:	83 41 00 28 	lwz     r26,40(r1)
    6470:	83 61 00 2c 	lwz     r27,44(r1)
    6474:	83 81 00 30 	lwz     r28,48(r1)
    6478:	83 a1 00 34 	lwz     r29,52(r1)
    647c:	83 c1 00 38 	lwz     r30,56(r1)
    6480:	83 e1 00 3c 	lwz     r31,60(r1)
    6484:	38 21 00 40 	addi    r1,r1,64
    6488:	4e 80 00 20 	blr
    648c:	3b a0 00 10 	li      r29,16
    6490:	7f 84 e8 40 	cmplw   cr7,r4,r29
    6494:	40 9d ff 5c 	ble+    cr7,63f0 <_malloc_r+0x68>
    6498:	80 01 00 44 	lwz     r0,68(r1)
    649c:	3b e0 00 00 	li      r31,0
    64a0:	39 20 00 0c 	li      r9,12
    64a4:	7f e3 fb 78 	mr      r3,r31
    64a8:	7c 08 03 a6 	mtlr    r0
    64ac:	91 3b 00 00 	stw     r9,0(r27)
    64b0:	82 a1 00 14 	lwz     r21,20(r1)
    64b4:	82 c1 00 18 	lwz     r22,24(r1)
    64b8:	82 e1 00 1c 	lwz     r23,28(r1)
    64bc:	83 01 00 20 	lwz     r24,32(r1)
    64c0:	83 21 00 24 	lwz     r25,36(r1)
    64c4:	83 41 00 28 	lwz     r26,40(r1)
    64c8:	83 61 00 2c 	lwz     r27,44(r1)
    64cc:	83 81 00 30 	lwz     r28,48(r1)
    64d0:	83 a1 00 34 	lwz     r29,52(r1)
    64d4:	83 c1 00 38 	lwz     r30,56(r1)
    64d8:	83 e1 00 3c 	lwz     r31,60(r1)
    64dc:	38 21 00 40 	addi    r1,r1,64
    64e0:	4e 80 00 20 	blr
    64e4:	57 a5 ba 7f 	rlwinm. r5,r29,23,9,31
    64e8:	41 82 01 e8 	beq-    66d0 <_malloc_r+0x348>
    64ec:	2b 85 00 04 	cmplwi  cr7,r5,4
    64f0:	41 9d 04 4c 	bgt-    cr7,693c <_malloc_r+0x5b4>
    64f4:	57 a5 d1 be 	rlwinm  r5,r29,26,6,31
    64f8:	38 a5 00 38 	addi    r5,r5,56
    64fc:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    6500:	83 9e 80 00 	lwz     r28,-32768(r30)
    6504:	55 08 10 3a 	rlwinm  r8,r8,2,0,29
    6508:	7d 1c 42 14 	add     r8,r28,r8
    650c:	83 e8 00 0c 	lwz     r31,12(r8)
    6510:	7f 88 f8 00 	cmpw    cr7,r8,r31
    6514:	41 9e 00 4c 	beq-    cr7,6560 <_malloc_r+0x1d8>
    6518:	81 5f 00 04 	lwz     r10,4(r31)
    651c:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    6520:	7d 3d 50 50 	subf    r9,r29,r10
    6524:	2f 89 00 0f 	cmpwi   cr7,r9,15
    6528:	41 9d 01 b4 	bgt-    cr7,66dc <_malloc_r+0x354>
    652c:	2f 89 00 00 	cmpwi   cr7,r9,0
    6530:	41 bc 00 24 	blt+    cr7,6554 <_malloc_r+0x1cc>
    6534:	48 00 01 b0 	b       66e4 <_malloc_r+0x35c>
    6538:	81 5f 00 04 	lwz     r10,4(r31)
    653c:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    6540:	7d 3d 50 50 	subf    r9,r29,r10
    6544:	2f 89 00 0f 	cmpwi   cr7,r9,15
    6548:	2f 09 00 00 	cmpwi   cr6,r9,0
    654c:	41 9d 01 90 	bgt-    cr7,66dc <_malloc_r+0x354>
    6550:	40 98 01 94 	bge-    cr6,66e4 <_malloc_r+0x35c>
    6554:	83 ff 00 0c 	lwz     r31,12(r31)
    6558:	7f 88 f8 00 	cmpw    cr7,r8,r31
    655c:	40 9e ff dc 	bne+    cr7,6538 <_malloc_r+0x1b0>
    6560:	38 a5 00 01 	addi    r5,r5,1
    6564:	83 fc 00 10 	lwz     r31,16(r28)
    6568:	38 9c 00 08 	addi    r4,r28,8
    656c:	7f 9f 20 00 	cmpw    cr7,r31,r4
    6570:	41 9e 04 8c 	beq-    cr7,69fc <_malloc_r+0x674>
    6574:	81 5f 00 04 	lwz     r10,4(r31)
    6578:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    657c:	7d 3d 50 50 	subf    r9,r29,r10
    6580:	2f 89 00 0f 	cmpwi   cr7,r9,15
    6584:	41 9d 04 40 	bgt-    cr7,69c4 <_malloc_r+0x63c>
    6588:	2f 89 00 00 	cmpwi   cr7,r9,0
    658c:	90 9c 00 14 	stw     r4,20(r28)
    6590:	90 9c 00 10 	stw     r4,16(r28)
    6594:	40 9c 01 60 	bge-    cr7,66f4 <_malloc_r+0x36c>
    6598:	2b 8a 01 ff 	cmplwi  cr7,r10,511
    659c:	41 9d 03 c0 	bgt-    cr7,695c <_malloc_r+0x5d4>
    65a0:	55 4a e8 fe 	rlwinm  r10,r10,29,3,31
    65a4:	80 fc 00 04 	lwz     r7,4(r28)
    65a8:	55 49 18 38 	rlwinm  r9,r10,3,0,28
    65ac:	38 c0 00 01 	li      r6,1
    65b0:	7d 3c 4a 14 	add     r9,r28,r9
    65b4:	7d 4a 16 70 	srawi   r10,r10,2
    65b8:	81 09 00 08 	lwz     r8,8(r9)
    65bc:	7c ca 50 30 	slw     r10,r6,r10
    65c0:	7d 4a 3b 78 	or      r10,r10,r7
    65c4:	91 3f 00 0c 	stw     r9,12(r31)
    65c8:	91 1f 00 08 	stw     r8,8(r31)
    65cc:	91 5c 00 04 	stw     r10,4(r28)
    65d0:	93 e9 00 08 	stw     r31,8(r9)
    65d4:	93 e8 00 0c 	stw     r31,12(r8)
    65d8:	7c a9 16 70 	srawi   r9,r5,2
    65dc:	38 e0 00 01 	li      r7,1
    65e0:	7c e7 48 30 	slw     r7,r7,r9
    65e4:	7f 87 50 40 	cmplw   cr7,r7,r10
    65e8:	41 9d 01 68 	bgt-    cr7,6750 <_malloc_r+0x3c8>
    65ec:	7d 49 38 39 	and.    r9,r10,r7
    65f0:	40 82 00 28 	bne-    6618 <_malloc_r+0x290>
    65f4:	54 e7 08 3c 	rlwinm  r7,r7,1,0,30
    65f8:	54 a5 00 3a 	rlwinm  r5,r5,0,0,29
    65fc:	7d 49 38 39 	and.    r9,r10,r7
    6600:	38 a5 00 04 	addi    r5,r5,4
    6604:	40 82 00 14 	bne-    6618 <_malloc_r+0x290>
    6608:	54 e7 08 3c 	rlwinm  r7,r7,1,0,30
    660c:	38 a5 00 04 	addi    r5,r5,4
    6610:	7d 49 38 39 	and.    r9,r10,r7
    6614:	41 82 ff f4 	beq+    6608 <_malloc_r+0x280>
    6618:	54 ab 18 38 	rlwinm  r11,r5,3,0,28
    661c:	7c a3 2b 78 	mr      r3,r5
    6620:	7d 7c 5a 14 	add     r11,r28,r11
    6624:	7d 66 5b 78 	mr      r6,r11
    6628:	81 26 00 0c 	lwz     r9,12(r6)
    662c:	7f 86 48 00 	cmpw    cr7,r6,r9
    6630:	41 9e 00 4c 	beq-    cr7,667c <_malloc_r+0x2f4>
    6634:	81 09 00 04 	lwz     r8,4(r9)
    6638:	55 08 00 3a 	rlwinm  r8,r8,0,0,29
    663c:	7d 5d 40 50 	subf    r10,r29,r8
    6640:	2f 8a 00 0f 	cmpwi   cr7,r10,15
    6644:	41 9d 03 d8 	bgt-    cr7,6a1c <_malloc_r+0x694>
    6648:	2f 8a 00 00 	cmpwi   cr7,r10,0
    664c:	41 bc 00 24 	blt+    cr7,6670 <_malloc_r+0x2e8>
    6650:	48 00 04 14 	b       6a64 <_malloc_r+0x6dc>
    6654:	81 09 00 04 	lwz     r8,4(r9)
    6658:	55 08 00 3a 	rlwinm  r8,r8,0,0,29
    665c:	7d 5d 40 50 	subf    r10,r29,r8
    6660:	2f 8a 00 0f 	cmpwi   cr7,r10,15
    6664:	2f 0a 00 00 	cmpwi   cr6,r10,0
    6668:	41 9d 03 b4 	bgt-    cr7,6a1c <_malloc_r+0x694>
    666c:	40 98 03 f8 	bge-    cr6,6a64 <_malloc_r+0x6dc>
    6670:	81 29 00 0c 	lwz     r9,12(r9)
    6674:	7f 86 48 00 	cmpw    cr7,r6,r9
    6678:	40 9e ff dc 	bne+    cr7,6654 <_malloc_r+0x2cc>
    667c:	38 63 00 01 	addi    r3,r3,1
    6680:	38 c6 00 08 	addi    r6,r6,8
    6684:	70 6a 00 03 	andi.   r10,r3,3
    6688:	40 82 ff a0 	bne+    6628 <_malloc_r+0x2a0>
    668c:	70 aa 00 03 	andi.   r10,r5,3
    6690:	39 2b ff f8 	addi    r9,r11,-8
    6694:	38 a5 ff ff 	addi    r5,r5,-1
    6698:	41 82 05 4c 	beq-    6be4 <_malloc_r+0x85c>
    669c:	81 6b 00 00 	lwz     r11,0(r11)
    66a0:	7f 8b 48 00 	cmpw    cr7,r11,r9
    66a4:	41 9e ff e8 	beq+    cr7,668c <_malloc_r+0x304>
    66a8:	81 3c 00 04 	lwz     r9,4(r28)
    66ac:	54 e7 08 3c 	rlwinm  r7,r7,1,0,30
    66b0:	7f 87 48 40 	cmplw   cr7,r7,r9
    66b4:	41 9d 00 9c 	bgt-    cr7,6750 <_malloc_r+0x3c8>
    66b8:	2f 87 00 00 	cmpwi   cr7,r7,0
    66bc:	41 9e 00 94 	beq-    cr7,6750 <_malloc_r+0x3c8>
    66c0:	7d 2a 38 39 	and.    r10,r9,r7
    66c4:	41 82 04 04 	beq-    6ac8 <_malloc_r+0x740>
    66c8:	7c 65 1b 78 	mr      r5,r3
    66cc:	4b ff ff 4c 	b       6618 <_malloc_r+0x290>
    66d0:	57 a5 e8 fe 	rlwinm  r5,r29,29,3,31
    66d4:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    66d8:	4b ff fe 28 	b       6500 <_malloc_r+0x178>
    66dc:	38 a5 ff ff 	addi    r5,r5,-1
    66e0:	4b ff fe 80 	b       6560 <_malloc_r+0x1d8>
    66e4:	7d 5f 52 14 	add     r10,r31,r10
    66e8:	81 1f 00 0c 	lwz     r8,12(r31)
    66ec:	80 ea 00 04 	lwz     r7,4(r10)
    66f0:	4b ff fd 3c 	b       642c <_malloc_r+0xa4>
    66f4:	7d 5f 52 14 	add     r10,r31,r10
    66f8:	7f 63 db 78 	mr      r3,r27
    66fc:	81 2a 00 04 	lwz     r9,4(r10)
    6700:	3b ff 00 08 	addi    r31,r31,8
    6704:	61 29 00 01 	ori     r9,r9,1
    6708:	91 2a 00 04 	stw     r9,4(r10)
    670c:	48 00 07 15 	bl      6e20 <__malloc_unlock>
    6710:	80 01 00 44 	lwz     r0,68(r1)
    6714:	7f e3 fb 78 	mr      r3,r31
    6718:	82 a1 00 14 	lwz     r21,20(r1)
    671c:	7c 08 03 a6 	mtlr    r0
    6720:	82 c1 00 18 	lwz     r22,24(r1)
    6724:	82 e1 00 1c 	lwz     r23,28(r1)
    6728:	83 01 00 20 	lwz     r24,32(r1)
    672c:	83 21 00 24 	lwz     r25,36(r1)
    6730:	83 41 00 28 	lwz     r26,40(r1)
    6734:	83 61 00 2c 	lwz     r27,44(r1)
    6738:	83 81 00 30 	lwz     r28,48(r1)
    673c:	83 a1 00 34 	lwz     r29,52(r1)
    6740:	83 c1 00 38 	lwz     r30,56(r1)
    6744:	83 e1 00 3c 	lwz     r31,60(r1)
    6748:	38 21 00 40 	addi    r1,r1,64
    674c:	4e 80 00 20 	blr
    6750:	83 fc 00 08 	lwz     r31,8(r28)
    6754:	83 3f 00 04 	lwz     r25,4(r31)
    6758:	57 39 00 3a 	rlwinm  r25,r25,0,0,29
    675c:	7f 99 e8 40 	cmplw   cr7,r25,r29
    6760:	41 9c 00 10 	blt-    cr7,6770 <_malloc_r+0x3e8>
    6764:	7d 3d c8 50 	subf    r9,r29,r25
    6768:	2f 89 00 0f 	cmpwi   cr7,r9,15
    676c:	41 9d 01 6c 	bgt-    cr7,68d8 <_malloc_r+0x550>
    6770:	82 be 80 08 	lwz     r21,-32760(r30)
    6774:	7e df ca 14 	add     r22,r31,r25
    6778:	81 3e 80 04 	lwz     r9,-32764(r30)
    677c:	81 55 00 00 	lwz     r10,0(r21)
    6780:	81 29 00 00 	lwz     r9,0(r9)
    6784:	2f 8a ff ff 	cmpwi   cr7,r10,-1
    6788:	7d 3d 4a 14 	add     r9,r29,r9
    678c:	3b 09 10 0f 	addi    r24,r9,4111
    6790:	57 18 00 26 	rlwinm  r24,r24,0,0,19
    6794:	41 9e 03 b0 	beq-    cr7,6b44 <_malloc_r+0x7bc>
    6798:	7f 63 db 78 	mr      r3,r27
    679c:	7f 04 c3 78 	mr      r4,r24
    67a0:	48 00 19 75 	bl      8114 <_sbrk_r>
    67a4:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    67a8:	7c 7a 1b 78 	mr      r26,r3
    67ac:	41 9e 03 0c 	beq-    cr7,6ab8 <_malloc_r+0x730>
    67b0:	7f 96 18 40 	cmplw   cr7,r22,r3
    67b4:	41 9d 02 fc 	bgt-    cr7,6ab0 <_malloc_r+0x728>
    67b8:	82 fe 80 0c 	lwz     r23,-32756(r30)
    67bc:	7f 96 d0 00 	cmpw    cr7,r22,r26
    67c0:	81 37 00 00 	lwz     r9,0(r23)
    67c4:	7d 38 4a 14 	add     r9,r24,r9
    67c8:	91 37 00 00 	stw     r9,0(r23)
    67cc:	41 9e 03 98 	beq-    cr7,6b64 <_malloc_r+0x7dc>
    67d0:	81 55 00 00 	lwz     r10,0(r21)
    67d4:	2f 8a ff ff 	cmpwi   cr7,r10,-1
    67d8:	41 9e 03 d4 	beq-    cr7,6bac <_malloc_r+0x824>
    67dc:	7e d6 d0 50 	subf    r22,r22,r26
    67e0:	7d 29 b2 14 	add     r9,r9,r22
    67e4:	91 37 00 00 	stw     r9,0(r23)
    67e8:	73 4a 00 07 	andi.   r10,r26,7
    67ec:	39 20 10 00 	li      r9,4096
    67f0:	41 82 00 10 	beq-    6800 <_malloc_r+0x478>
    67f4:	21 2a 00 08 	subfic  r9,r10,8
    67f8:	7f 5a 4a 14 	add     r26,r26,r9
    67fc:	21 2a 10 08 	subfic  r9,r10,4104
    6800:	7f 1a c2 14 	add     r24,r26,r24
    6804:	7f 63 db 78 	mr      r3,r27
    6808:	57 18 05 3e 	clrlwi  r24,r24,20
    680c:	7f 18 48 50 	subf    r24,r24,r9
    6810:	7f 04 c3 78 	mr      r4,r24
    6814:	48 00 19 01 	bl      8114 <_sbrk_r>
    6818:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    681c:	41 9e 03 84 	beq-    cr7,6ba0 <_malloc_r+0x818>
    6820:	7d 5a 18 50 	subf    r10,r26,r3
    6824:	7d 58 52 14 	add     r10,r24,r10
    6828:	61 4a 00 01 	ori     r10,r10,1
    682c:	7f 9f e0 00 	cmpw    cr7,r31,r28
    6830:	81 37 00 00 	lwz     r9,0(r23)
    6834:	93 5c 00 08 	stw     r26,8(r28)
    6838:	7d 38 4a 14 	add     r9,r24,r9
    683c:	91 5a 00 04 	stw     r10,4(r26)
    6840:	91 37 00 00 	stw     r9,0(r23)
    6844:	41 9e 00 3c 	beq-    cr7,6880 <_malloc_r+0x4f8>
    6848:	2b 99 00 0f 	cmplwi  cr7,r25,15
    684c:	40 9d 02 cc 	ble-    cr7,6b18 <_malloc_r+0x790>
    6850:	39 59 ff f4 	addi    r10,r25,-12
    6854:	81 1f 00 04 	lwz     r8,4(r31)
    6858:	55 4a 00 38 	rlwinm  r10,r10,0,0,28
    685c:	38 e0 00 05 	li      r7,5
    6860:	2b 8a 00 0f 	cmplwi  cr7,r10,15
    6864:	55 06 07 fe 	clrlwi  r6,r8,31
    6868:	7d 1f 52 14 	add     r8,r31,r10
    686c:	7d 4a 33 78 	or      r10,r10,r6
    6870:	91 5f 00 04 	stw     r10,4(r31)
    6874:	90 e8 00 04 	stw     r7,4(r8)
    6878:	90 e8 00 08 	stw     r7,8(r8)
    687c:	41 9d 03 10 	bgt-    cr7,6b8c <_malloc_r+0x804>
    6880:	81 5e 80 10 	lwz     r10,-32752(r30)
    6884:	81 0a 00 00 	lwz     r8,0(r10)
    6888:	7f 89 40 40 	cmplw   cr7,r9,r8
    688c:	40 9d 00 08 	ble-    cr7,6894 <_malloc_r+0x50c>
    6890:	91 2a 00 00 	stw     r9,0(r10)
    6894:	81 5e 80 14 	lwz     r10,-32748(r30)
    6898:	83 fc 00 08 	lwz     r31,8(r28)
    689c:	81 0a 00 00 	lwz     r8,0(r10)
    68a0:	7f 89 40 40 	cmplw   cr7,r9,r8
    68a4:	40 9d 00 08 	ble-    cr7,68ac <_malloc_r+0x524>
    68a8:	91 2a 00 00 	stw     r9,0(r10)
    68ac:	81 3f 00 04 	lwz     r9,4(r31)
    68b0:	55 29 00 3a 	rlwinm  r9,r9,0,0,29
    68b4:	7f 89 e8 40 	cmplw   cr7,r9,r29
    68b8:	7d 3d 48 50 	subf    r9,r29,r9
    68bc:	41 9c 00 0c 	blt-    cr7,68c8 <_malloc_r+0x540>
    68c0:	2f 89 00 0f 	cmpwi   cr7,r9,15
    68c4:	41 bd 00 14 	bgt+    cr7,68d8 <_malloc_r+0x550>
    68c8:	7f 63 db 78 	mr      r3,r27
    68cc:	3b e0 00 00 	li      r31,0
    68d0:	48 00 05 51 	bl      6e20 <__malloc_unlock>
    68d4:	4b ff fb 78 	b       644c <_malloc_r+0xc4>
    68d8:	7d 5f ea 14 	add     r10,r31,r29
    68dc:	61 29 00 01 	ori     r9,r9,1
    68e0:	63 bd 00 01 	ori     r29,r29,1
    68e4:	91 5c 00 08 	stw     r10,8(r28)
    68e8:	93 bf 00 04 	stw     r29,4(r31)
    68ec:	7f 63 db 78 	mr      r3,r27
    68f0:	91 2a 00 04 	stw     r9,4(r10)
    68f4:	3b ff 00 08 	addi    r31,r31,8
    68f8:	48 00 05 29 	bl      6e20 <__malloc_unlock>
    68fc:	80 01 00 44 	lwz     r0,68(r1)
    6900:	7f e3 fb 78 	mr      r3,r31
    6904:	82 a1 00 14 	lwz     r21,20(r1)
    6908:	7c 08 03 a6 	mtlr    r0
    690c:	82 c1 00 18 	lwz     r22,24(r1)
    6910:	82 e1 00 1c 	lwz     r23,28(r1)
    6914:	83 01 00 20 	lwz     r24,32(r1)
    6918:	83 21 00 24 	lwz     r25,36(r1)
    691c:	83 41 00 28 	lwz     r26,40(r1)
    6920:	83 61 00 2c 	lwz     r27,44(r1)
    6924:	83 81 00 30 	lwz     r28,48(r1)
    6928:	83 a1 00 34 	lwz     r29,52(r1)
    692c:	83 c1 00 38 	lwz     r30,56(r1)
    6930:	83 e1 00 3c 	lwz     r31,60(r1)
    6934:	38 21 00 40 	addi    r1,r1,64
    6938:	4e 80 00 20 	blr
    693c:	2b 85 00 14 	cmplwi  cr7,r5,20
    6940:	40 9d 01 54 	ble-    cr7,6a94 <_malloc_r+0x70c>
    6944:	2b 85 00 54 	cmplwi  cr7,r5,84
    6948:	41 9d 01 98 	bgt-    cr7,6ae0 <_malloc_r+0x758>
    694c:	57 a5 a3 3e 	rlwinm  r5,r29,20,12,31
    6950:	38 a5 00 6e 	addi    r5,r5,110
    6954:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    6958:	4b ff fb a8 	b       6500 <_malloc_r+0x178>
    695c:	55 49 ba 7e 	rlwinm  r9,r10,23,9,31
    6960:	2b 89 00 04 	cmplwi  cr7,r9,4
    6964:	40 9d 01 3c 	ble-    cr7,6aa0 <_malloc_r+0x718>
    6968:	2b 89 00 14 	cmplwi  cr7,r9,20
    696c:	41 9d 01 e0 	bgt-    cr7,6b4c <_malloc_r+0x7c4>
    6970:	39 09 00 5b 	addi    r8,r9,91
    6974:	55 07 08 3c 	rlwinm  r7,r8,1,0,30
    6978:	54 e7 10 3a 	rlwinm  r7,r7,2,0,29
    697c:	7c fc 3a 14 	add     r7,r28,r7
    6980:	81 27 00 08 	lwz     r9,8(r7)
    6984:	7f 89 38 00 	cmpw    cr7,r9,r7
    6988:	41 9e 01 70 	beq-    cr7,6af8 <_malloc_r+0x770>
    698c:	81 09 00 04 	lwz     r8,4(r9)
    6990:	55 08 00 3a 	rlwinm  r8,r8,0,0,29
    6994:	7f 8a 40 40 	cmplw   cr7,r10,r8
    6998:	40 9c 00 10 	bge-    cr7,69a8 <_malloc_r+0x620>
    699c:	81 29 00 08 	lwz     r9,8(r9)
    69a0:	7f 87 48 00 	cmpw    cr7,r7,r9
    69a4:	40 9e ff e8 	bne+    cr7,698c <_malloc_r+0x604>
    69a8:	81 09 00 0c 	lwz     r8,12(r9)
    69ac:	81 5c 00 04 	lwz     r10,4(r28)
    69b0:	91 1f 00 0c 	stw     r8,12(r31)
    69b4:	91 3f 00 08 	stw     r9,8(r31)
    69b8:	93 e9 00 0c 	stw     r31,12(r9)
    69bc:	93 e8 00 08 	stw     r31,8(r8)
    69c0:	4b ff fc 18 	b       65d8 <_malloc_r+0x250>
    69c4:	7d 5f ea 14 	add     r10,r31,r29
    69c8:	61 28 00 01 	ori     r8,r9,1
    69cc:	63 bd 00 01 	ori     r29,r29,1
    69d0:	91 5c 00 14 	stw     r10,20(r28)
    69d4:	93 bf 00 04 	stw     r29,4(r31)
    69d8:	7f 63 db 78 	mr      r3,r27
    69dc:	91 5c 00 10 	stw     r10,16(r28)
    69e0:	3b ff 00 08 	addi    r31,r31,8
    69e4:	90 8a 00 0c 	stw     r4,12(r10)
    69e8:	90 8a 00 08 	stw     r4,8(r10)
    69ec:	91 0a 00 04 	stw     r8,4(r10)
    69f0:	7d 2a 49 2e 	stwx    r9,r10,r9
    69f4:	48 00 04 2d 	bl      6e20 <__malloc_unlock>
    69f8:	4b ff fa 54 	b       644c <_malloc_r+0xc4>
    69fc:	81 5c 00 04 	lwz     r10,4(r28)
    6a00:	4b ff fb d8 	b       65d8 <_malloc_r+0x250>
    6a04:	39 3f 00 08 	addi    r9,r31,8
    6a08:	83 ff 00 14 	lwz     r31,20(r31)
    6a0c:	38 a5 00 02 	addi    r5,r5,2
    6a10:	7f 89 f8 00 	cmpw    cr7,r9,r31
    6a14:	41 9e fb 50 	beq+    cr7,6564 <_malloc_r+0x1dc>
    6a18:	4b ff fa 00 	b       6418 <_malloc_r+0x90>
    6a1c:	7d 3f 4b 78 	mr      r31,r9
    6a20:	80 c9 00 0c 	lwz     r6,12(r9)
    6a24:	84 ff 00 08 	lwzu    r7,8(r31)
    6a28:	7d 09 ea 14 	add     r8,r9,r29
    6a2c:	61 45 00 01 	ori     r5,r10,1
    6a30:	63 bd 00 01 	ori     r29,r29,1
    6a34:	90 c7 00 0c 	stw     r6,12(r7)
    6a38:	7f 63 db 78 	mr      r3,r27
    6a3c:	90 e6 00 08 	stw     r7,8(r6)
    6a40:	93 a9 00 04 	stw     r29,4(r9)
    6a44:	91 1c 00 14 	stw     r8,20(r28)
    6a48:	91 1c 00 10 	stw     r8,16(r28)
    6a4c:	90 88 00 0c 	stw     r4,12(r8)
    6a50:	90 88 00 08 	stw     r4,8(r8)
    6a54:	90 a8 00 04 	stw     r5,4(r8)
    6a58:	7d 48 51 2e 	stwx    r10,r8,r10
    6a5c:	48 00 03 c5 	bl      6e20 <__malloc_unlock>
    6a60:	4b ff f9 ec 	b       644c <_malloc_r+0xc4>
    6a64:	7d 09 42 14 	add     r8,r9,r8
    6a68:	7d 3f 4b 78 	mr      r31,r9
    6a6c:	80 e8 00 04 	lwz     r7,4(r8)
    6a70:	7f 63 db 78 	mr      r3,r27
    6a74:	81 49 00 0c 	lwz     r10,12(r9)
    6a78:	85 3f 00 08 	lwzu    r9,8(r31)
    6a7c:	60 e7 00 01 	ori     r7,r7,1
    6a80:	90 e8 00 04 	stw     r7,4(r8)
    6a84:	91 49 00 0c 	stw     r10,12(r9)
    6a88:	91 2a 00 08 	stw     r9,8(r10)
    6a8c:	48 00 03 95 	bl      6e20 <__malloc_unlock>
    6a90:	4b ff f9 bc 	b       644c <_malloc_r+0xc4>
    6a94:	38 a5 00 5b 	addi    r5,r5,91
    6a98:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    6a9c:	4b ff fa 64 	b       6500 <_malloc_r+0x178>
    6aa0:	55 48 d1 be 	rlwinm  r8,r10,26,6,31
    6aa4:	39 08 00 38 	addi    r8,r8,56
    6aa8:	55 07 08 3c 	rlwinm  r7,r8,1,0,30
    6aac:	4b ff fe cc 	b       6978 <_malloc_r+0x5f0>
    6ab0:	7f 9f e0 00 	cmpw    cr7,r31,r28
    6ab4:	41 be fd 04 	beq-    cr7,67b8 <_malloc_r+0x430>
    6ab8:	83 fc 00 08 	lwz     r31,8(r28)
    6abc:	81 3f 00 04 	lwz     r9,4(r31)
    6ac0:	55 29 00 3a 	rlwinm  r9,r9,0,0,29
    6ac4:	4b ff fd f0 	b       68b4 <_malloc_r+0x52c>
    6ac8:	54 e7 08 3c 	rlwinm  r7,r7,1,0,30
    6acc:	38 63 00 04 	addi    r3,r3,4
    6ad0:	7d 2a 38 39 	and.    r10,r9,r7
    6ad4:	41 a2 ff f4 	beq-    6ac8 <_malloc_r+0x740>
    6ad8:	7c 65 1b 78 	mr      r5,r3
    6adc:	4b ff fb 3c 	b       6618 <_malloc_r+0x290>
    6ae0:	2b 85 01 54 	cmplwi  cr7,r5,340
    6ae4:	41 9d 00 48 	bgt-    cr7,6b2c <_malloc_r+0x7a4>
    6ae8:	57 a5 8b fe 	rlwinm  r5,r29,17,15,31
    6aec:	38 a5 00 77 	addi    r5,r5,119
    6af0:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    6af4:	4b ff fa 0c 	b       6500 <_malloc_r+0x178>
    6af8:	81 5c 00 04 	lwz     r10,4(r28)
    6afc:	7d 08 16 70 	srawi   r8,r8,2
    6b00:	38 e0 00 01 	li      r7,1
    6b04:	7c e8 40 30 	slw     r8,r7,r8
    6b08:	7d 0a 53 78 	or      r10,r8,r10
    6b0c:	7d 28 4b 78 	mr      r8,r9
    6b10:	91 5c 00 04 	stw     r10,4(r28)
    6b14:	4b ff fe 9c 	b       69b0 <_malloc_r+0x628>
    6b18:	39 20 00 01 	li      r9,1
    6b1c:	7f 5f d3 78 	mr      r31,r26
    6b20:	91 3a 00 04 	stw     r9,4(r26)
    6b24:	39 20 00 00 	li      r9,0
    6b28:	4b ff fd 8c 	b       68b4 <_malloc_r+0x52c>
    6b2c:	2b 85 05 54 	cmplwi  cr7,r5,1364
    6b30:	41 9d 00 50 	bgt-    cr7,6b80 <_malloc_r+0x7f8>
    6b34:	57 a5 74 be 	rlwinm  r5,r29,14,18,31
    6b38:	38 a5 00 7c 	addi    r5,r5,124
    6b3c:	54 a8 08 3c 	rlwinm  r8,r5,1,0,30
    6b40:	4b ff f9 c0 	b       6500 <_malloc_r+0x178>
    6b44:	3b 09 00 10 	addi    r24,r9,16
    6b48:	4b ff fc 50 	b       6798 <_malloc_r+0x410>
    6b4c:	2b 89 00 54 	cmplwi  cr7,r9,84
    6b50:	41 9d 00 64 	bgt-    cr7,6bb4 <_malloc_r+0x82c>
    6b54:	55 48 a3 3e 	rlwinm  r8,r10,20,12,31
    6b58:	39 08 00 6e 	addi    r8,r8,110
    6b5c:	55 07 08 3c 	rlwinm  r7,r8,1,0,30
    6b60:	4b ff fe 18 	b       6978 <_malloc_r+0x5f0>
    6b64:	72 ca 0f ff 	andi.   r10,r22,4095
    6b68:	40 a2 fc 68 	bne-    67d0 <_malloc_r+0x448>
    6b6c:	81 5c 00 08 	lwz     r10,8(r28)
    6b70:	7d 18 ca 14 	add     r8,r24,r25
    6b74:	61 08 00 01 	ori     r8,r8,1
    6b78:	91 0a 00 04 	stw     r8,4(r10)
    6b7c:	4b ff fd 04 	b       6880 <_malloc_r+0x4f8>
    6b80:	39 00 00 fc 	li      r8,252
    6b84:	38 a0 00 7e 	li      r5,126
    6b88:	4b ff f9 78 	b       6500 <_malloc_r+0x178>
    6b8c:	7f 63 db 78 	mr      r3,r27
    6b90:	38 9f 00 08 	addi    r4,r31,8
    6b94:	4b ff ee f9 	bl      5a8c <_free_r>
    6b98:	81 37 00 00 	lwz     r9,0(r23)
    6b9c:	4b ff fc e4 	b       6880 <_malloc_r+0x4f8>
    6ba0:	39 40 00 01 	li      r10,1
    6ba4:	3b 00 00 00 	li      r24,0
    6ba8:	4b ff fc 84 	b       682c <_malloc_r+0x4a4>
    6bac:	93 55 00 00 	stw     r26,0(r21)
    6bb0:	4b ff fc 38 	b       67e8 <_malloc_r+0x460>
    6bb4:	2b 89 01 54 	cmplwi  cr7,r9,340
    6bb8:	41 9d 00 14 	bgt-    cr7,6bcc <_malloc_r+0x844>
    6bbc:	55 48 8b fe 	rlwinm  r8,r10,17,15,31
    6bc0:	39 08 00 77 	addi    r8,r8,119
    6bc4:	55 07 08 3c 	rlwinm  r7,r8,1,0,30
    6bc8:	4b ff fd b0 	b       6978 <_malloc_r+0x5f0>
    6bcc:	2b 89 05 54 	cmplwi  cr7,r9,1364
    6bd0:	41 9d 00 24 	bgt-    cr7,6bf4 <_malloc_r+0x86c>
    6bd4:	55 48 74 be 	rlwinm  r8,r10,14,18,31
    6bd8:	39 08 00 7c 	addi    r8,r8,124
    6bdc:	55 07 08 3c 	rlwinm  r7,r8,1,0,30
    6be0:	4b ff fd 98 	b       6978 <_malloc_r+0x5f0>
    6be4:	81 3c 00 04 	lwz     r9,4(r28)
    6be8:	7d 29 38 78 	andc    r9,r9,r7
    6bec:	91 3c 00 04 	stw     r9,4(r28)
    6bf0:	4b ff fa bc 	b       66ac <_malloc_r+0x324>
    6bf4:	38 e0 00 fc 	li      r7,252
    6bf8:	39 00 00 7e 	li      r8,126
    6bfc:	4b ff fd 7c 	b       6978 <_malloc_r+0x5f0>

00006c00 <memchr>:
    6c00:	70 67 00 03 	andi.   r7,r3,3
    6c04:	7c 08 02 a6 	mflr    r0
    6c08:	94 21 ff f0 	stwu    r1,-16(r1)
    6c0c:	54 88 06 3e 	clrlwi  r8,r4,24
    6c10:	90 01 00 14 	stw     r0,20(r1)
    6c14:	93 c1 00 08 	stw     r30,8(r1)
    6c18:	41 82 00 ec 	beq-    6d04 <memchr+0x104>
    6c1c:	2f 85 00 00 	cmpwi   cr7,r5,0
    6c20:	39 25 ff ff 	addi    r9,r5,-1
    6c24:	41 9e 00 70 	beq-    cr7,6c94 <memchr+0x94>
    6c28:	89 43 00 00 	lbz     r10,0(r3)
    6c2c:	7f 8a 40 00 	cmpw    cr7,r10,r8
    6c30:	41 9e 00 68 	beq-    cr7,6c98 <memchr+0x98>
    6c34:	7c a9 03 a6 	mtctr   r5
    6c38:	48 00 00 18 	b       6c50 <memchr+0x50>
    6c3c:	42 40 00 58 	bdz-    6c94 <memchr+0x94>
    6c40:	89 43 00 00 	lbz     r10,0(r3)
    6c44:	39 29 ff ff 	addi    r9,r9,-1
    6c48:	7f 8a 40 00 	cmpw    cr7,r10,r8
    6c4c:	41 9e 00 4c 	beq-    cr7,6c98 <memchr+0x98>
    6c50:	38 63 00 01 	addi    r3,r3,1
    6c54:	70 6a 00 03 	andi.   r10,r3,3
    6c58:	40 82 ff e4 	bne+    6c3c <memchr+0x3c>
    6c5c:	2b 89 00 03 	cmplwi  cr7,r9,3
    6c60:	41 9d 00 4c 	bgt-    cr7,6cac <memchr+0xac>
    6c64:	2f 89 00 00 	cmpwi   cr7,r9,0
    6c68:	41 9e 00 2c 	beq-    cr7,6c94 <memchr+0x94>
    6c6c:	89 43 00 00 	lbz     r10,0(r3)
    6c70:	7f 8a 40 00 	cmpw    cr7,r10,r8
    6c74:	41 9e 00 24 	beq-    cr7,6c98 <memchr+0x98>
    6c78:	7d 29 03 a6 	mtctr   r9
    6c7c:	48 00 00 10 	b       6c8c <memchr+0x8c>
    6c80:	89 23 00 00 	lbz     r9,0(r3)
    6c84:	7f 89 40 00 	cmpw    cr7,r9,r8
    6c88:	41 9e 00 10 	beq-    cr7,6c98 <memchr+0x98>
    6c8c:	38 63 00 01 	addi    r3,r3,1
    6c90:	42 00 ff f0 	bdnz+   6c80 <memchr+0x80>
    6c94:	38 60 00 00 	li      r3,0
    6c98:	80 01 00 14 	lwz     r0,20(r1)
    6c9c:	83 c1 00 08 	lwz     r30,8(r1)
    6ca0:	7c 08 03 a6 	mtlr    r0
    6ca4:	38 21 00 10 	addi    r1,r1,16
    6ca8:	4e 80 00 20 	blr
    6cac:	54 84 06 3e 	clrlwi  r4,r4,24
    6cb0:	38 e9 ff fc 	addi    r7,r9,-4
    6cb4:	54 8a 40 2e 	rlwinm  r10,r4,8,0,23
    6cb8:	54 e7 f0 be 	rlwinm  r7,r7,30,2,31
    6cbc:	7d 4a 23 78 	or      r10,r10,r4
    6cc0:	38 e7 00 01 	addi    r7,r7,1
    6cc4:	55 45 80 1e 	rlwinm  r5,r10,16,0,15
    6cc8:	3c c0 80 80 	lis     r6,-32640
    6ccc:	7c e9 03 a6 	mtctr   r7
    6cd0:	7c a5 53 78 	or      r5,r5,r10
    6cd4:	60 c6 80 80 	ori     r6,r6,32896
    6cd8:	81 43 00 00 	lwz     r10,0(r3)
    6cdc:	7c aa 52 78 	xor     r10,r5,r10
    6ce0:	3c ea fe ff 	addis   r7,r10,-257
    6ce4:	38 e7 fe ff 	addi    r7,r7,-257
    6ce8:	7c ea 50 78 	andc    r10,r7,r10
    6cec:	7d 47 30 39 	and.    r7,r10,r6
    6cf0:	40 a2 ff 74 	bne-    6c64 <memchr+0x64>
    6cf4:	39 29 ff fc 	addi    r9,r9,-4
    6cf8:	38 63 00 04 	addi    r3,r3,4
    6cfc:	42 00 ff dc 	bdnz+   6cd8 <memchr+0xd8>
    6d00:	4b ff ff 64 	b       6c64 <memchr+0x64>
    6d04:	7c a9 2b 78 	mr      r9,r5
    6d08:	4b ff ff 54 	b       6c5c <memchr+0x5c>

00006d0c <memcpy>:
    6d0c:	2b 85 00 0f 	cmplwi  cr7,r5,15
    6d10:	7c 08 02 a6 	mflr    r0
    6d14:	94 21 ff f0 	stwu    r1,-16(r1)
    6d18:	90 01 00 14 	stw     r0,20(r1)
    6d1c:	93 c1 00 08 	stw     r30,8(r1)
    6d20:	40 9d 00 b4 	ble-    cr7,6dd4 <memcpy+0xc8>
    6d24:	7c 89 1b 78 	or      r9,r4,r3
    6d28:	71 2a 00 03 	andi.   r10,r9,3
    6d2c:	40 82 00 e0 	bne-    6e0c <memcpy+0x100>
    6d30:	39 05 ff f0 	addi    r8,r5,-16
    6d34:	7c 8a 23 78 	mr      r10,r4
    6d38:	55 08 e1 3e 	rlwinm  r8,r8,28,4,31
    6d3c:	7c 69 1b 78 	mr      r9,r3
    6d40:	39 08 00 01 	addi    r8,r8,1
    6d44:	7d 09 03 a6 	mtctr   r8
    6d48:	81 0a 00 00 	lwz     r8,0(r10)
    6d4c:	91 09 00 00 	stw     r8,0(r9)
    6d50:	81 0a 00 04 	lwz     r8,4(r10)
    6d54:	91 09 00 04 	stw     r8,4(r9)
    6d58:	81 0a 00 08 	lwz     r8,8(r10)
    6d5c:	91 09 00 08 	stw     r8,8(r9)
    6d60:	81 0a 00 0c 	lwz     r8,12(r10)
    6d64:	39 4a 00 10 	addi    r10,r10,16
    6d68:	91 09 00 0c 	stw     r8,12(r9)
    6d6c:	39 29 00 10 	addi    r9,r9,16
    6d70:	42 00 ff d8 	bdnz+   6d48 <memcpy+0x3c>
    6d74:	54 a6 07 3e 	clrlwi  r6,r5,28
    6d78:	39 45 ff f0 	addi    r10,r5,-16
    6d7c:	2b 86 00 03 	cmplwi  cr7,r6,3
    6d80:	55 4a 00 36 	rlwinm  r10,r10,0,0,27
    6d84:	39 4a 00 10 	addi    r10,r10,16
    6d88:	7d 23 52 14 	add     r9,r3,r10
    6d8c:	7c 84 52 14 	add     r4,r4,r10
    6d90:	40 9d 00 84 	ble-    cr7,6e14 <memcpy+0x108>
    6d94:	38 e6 ff fc 	addi    r7,r6,-4
    6d98:	39 04 ff fc 	addi    r8,r4,-4
    6d9c:	54 e7 f0 be 	rlwinm  r7,r7,30,2,31
    6da0:	39 49 ff fc 	addi    r10,r9,-4
    6da4:	38 e7 00 01 	addi    r7,r7,1
    6da8:	7c e9 03 a6 	mtctr   r7
    6dac:	84 e8 00 04 	lwzu    r7,4(r8)
    6db0:	94 ea 00 04 	stwu    r7,4(r10)
    6db4:	42 00 ff f8 	bdnz+   6dac <memcpy+0xa0>
    6db8:	39 46 ff fc 	addi    r10,r6,-4
    6dbc:	54 a5 07 be 	clrlwi  r5,r5,30
    6dc0:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    6dc4:	39 4a 00 04 	addi    r10,r10,4
    6dc8:	7c 84 52 14 	add     r4,r4,r10
    6dcc:	7d 29 52 14 	add     r9,r9,r10
    6dd0:	48 00 00 08 	b       6dd8 <memcpy+0xcc>
    6dd4:	7c 69 1b 78 	mr      r9,r3
    6dd8:	2f 85 00 00 	cmpwi   cr7,r5,0
    6ddc:	41 9e 00 1c 	beq-    cr7,6df8 <memcpy+0xec>
    6de0:	7c a9 03 a6 	mtctr   r5
    6de4:	38 84 ff ff 	addi    r4,r4,-1
    6de8:	39 29 ff ff 	addi    r9,r9,-1
    6dec:	8d 44 00 01 	lbzu    r10,1(r4)
    6df0:	9d 49 00 01 	stbu    r10,1(r9)
    6df4:	42 00 ff f8 	bdnz+   6dec <memcpy+0xe0>
    6df8:	80 01 00 14 	lwz     r0,20(r1)
    6dfc:	83 c1 00 08 	lwz     r30,8(r1)
    6e00:	7c 08 03 a6 	mtlr    r0
    6e04:	38 21 00 10 	addi    r1,r1,16
    6e08:	4e 80 00 20 	blr
    6e0c:	7c 69 1b 78 	mr      r9,r3
    6e10:	4b ff ff d0 	b       6de0 <memcpy+0xd4>
    6e14:	7c c5 33 78 	mr      r5,r6
    6e18:	4b ff ff c0 	b       6dd8 <memcpy+0xcc>

00006e1c <__malloc_lock>:
    6e1c:	4e 80 00 20 	blr

00006e20 <__malloc_unlock>:
    6e20:	4e 80 00 20 	blr

00006e24 <_Balloc>:
    6e24:	7c 08 02 a6 	mflr    r0
    6e28:	94 21 ff e0 	stwu    r1,-32(r1)
    6e2c:	93 a1 00 14 	stw     r29,20(r1)
    6e30:	7c 9d 23 78 	mr      r29,r4
    6e34:	90 01 00 24 	stw     r0,36(r1)
    6e38:	93 e1 00 1c 	stw     r31,28(r1)
    6e3c:	7c 7f 1b 78 	mr      r31,r3
    6e40:	81 23 00 4c 	lwz     r9,76(r3)
    6e44:	93 81 00 10 	stw     r28,16(r1)
    6e48:	2f 89 00 00 	cmpwi   cr7,r9,0
    6e4c:	93 c1 00 18 	stw     r30,24(r1)
    6e50:	41 9e 00 48 	beq-    cr7,6e98 <_Balloc+0x74>
    6e54:	57 aa 10 3a 	rlwinm  r10,r29,2,0,29
    6e58:	7c 69 50 2e 	lwzx    r3,r9,r10
    6e5c:	2f 83 00 00 	cmpwi   cr7,r3,0
    6e60:	41 9e 00 5c 	beq-    cr7,6ebc <_Balloc+0x98>
    6e64:	81 03 00 00 	lwz     r8,0(r3)
    6e68:	7d 09 51 2e 	stwx    r8,r9,r10
    6e6c:	39 20 00 00 	li      r9,0
    6e70:	91 23 00 10 	stw     r9,16(r3)
    6e74:	91 23 00 0c 	stw     r9,12(r3)
    6e78:	80 01 00 24 	lwz     r0,36(r1)
    6e7c:	83 81 00 10 	lwz     r28,16(r1)
    6e80:	7c 08 03 a6 	mtlr    r0
    6e84:	83 a1 00 14 	lwz     r29,20(r1)
    6e88:	83 c1 00 18 	lwz     r30,24(r1)
    6e8c:	83 e1 00 1c 	lwz     r31,28(r1)
    6e90:	38 21 00 20 	addi    r1,r1,32
    6e94:	4e 80 00 20 	blr
    6e98:	38 80 00 04 	li      r4,4
    6e9c:	38 a0 00 21 	li      r5,33
    6ea0:	48 00 2b b1 	bl      9a50 <_calloc_r>
    6ea4:	2f 83 00 00 	cmpwi   cr7,r3,0
    6ea8:	7c 69 1b 78 	mr      r9,r3
    6eac:	90 7f 00 4c 	stw     r3,76(r31)
    6eb0:	40 9e ff a4 	bne+    cr7,6e54 <_Balloc+0x30>
    6eb4:	38 60 00 00 	li      r3,0
    6eb8:	4b ff ff c0 	b       6e78 <_Balloc+0x54>
    6ebc:	3b 80 00 01 	li      r28,1
    6ec0:	7f e3 fb 78 	mr      r3,r31
    6ec4:	7f 9c e8 30 	slw     r28,r28,r29
    6ec8:	38 80 00 01 	li      r4,1
    6ecc:	38 bc 00 05 	addi    r5,r28,5
    6ed0:	54 a5 10 3a 	rlwinm  r5,r5,2,0,29
    6ed4:	48 00 2b 7d 	bl      9a50 <_calloc_r>
    6ed8:	2c 03 00 00 	cmpwi   r3,0
    6edc:	41 a2 ff d8 	beq-    6eb4 <_Balloc+0x90>
    6ee0:	93 a3 00 04 	stw     r29,4(r3)
    6ee4:	93 83 00 08 	stw     r28,8(r3)
    6ee8:	4b ff ff 84 	b       6e6c <_Balloc+0x48>

00006eec <_Bfree>:
    6eec:	2c 04 00 00 	cmpwi   r4,0
    6ef0:	4d 82 00 20 	beqlr   
    6ef4:	81 44 00 04 	lwz     r10,4(r4)
    6ef8:	81 03 00 4c 	lwz     r8,76(r3)
    6efc:	55 4a 10 3a 	rlwinm  r10,r10,2,0,29
    6f00:	7c e8 50 2e 	lwzx    r7,r8,r10
    6f04:	90 e4 00 00 	stw     r7,0(r4)
    6f08:	7c 88 51 2e 	stwx    r4,r8,r10
    6f0c:	4e 80 00 20 	blr

00006f10 <__multadd>:
    6f10:	7c 08 02 a6 	mflr    r0
    6f14:	94 21 ff d0 	stwu    r1,-48(r1)
    6f18:	7c 89 23 78 	mr      r9,r4
    6f1c:	93 a1 00 24 	stw     r29,36(r1)
    6f20:	90 01 00 34 	stw     r0,52(r1)
    6f24:	93 81 00 20 	stw     r28,32(r1)
    6f28:	7c 7c 1b 78 	mr      r28,r3
    6f2c:	87 a9 00 10 	lwzu    r29,16(r9)
    6f30:	93 e1 00 2c 	stw     r31,44(r1)
    6f34:	7c 9f 23 78 	mr      r31,r4
    6f38:	2f 9d 00 00 	cmpwi   cr7,r29,0
    6f3c:	93 61 00 1c 	stw     r27,28(r1)
    6f40:	93 c1 00 28 	stw     r30,40(r1)
    6f44:	7f a9 03 a6 	mtctr   r29
    6f48:	40 9d 00 e4 	ble-    cr7,702c <__multadd+0x11c>
    6f4c:	85 09 00 04 	lwzu    r8,4(r9)
    6f50:	55 0a 04 3e 	clrlwi  r10,r8,16
    6f54:	55 08 84 3e 	rlwinm  r8,r8,16,16,31
    6f58:	7d 45 51 d6 	mullw   r10,r5,r10
    6f5c:	7d 05 41 d6 	mullw   r8,r5,r8
    6f60:	7d 4a 32 14 	add     r10,r10,r6
    6f64:	55 46 84 3e 	rlwinm  r6,r10,16,16,31
    6f68:	55 4a 04 3e 	clrlwi  r10,r10,16
    6f6c:	7c c6 42 14 	add     r6,r6,r8
    6f70:	54 c8 80 1e 	rlwinm  r8,r6,16,0,15
    6f74:	54 c6 84 3e 	rlwinm  r6,r6,16,16,31
    6f78:	7d 48 52 14 	add     r10,r8,r10
    6f7c:	91 49 00 00 	stw     r10,0(r9)
    6f80:	42 00 ff cc 	bdnz+   6f4c <__multadd+0x3c>
    6f84:	2f 86 00 00 	cmpwi   cr7,r6,0
    6f88:	41 9e 00 28 	beq-    cr7,6fb0 <__multadd+0xa0>
    6f8c:	81 3f 00 08 	lwz     r9,8(r31)
    6f90:	7f 9d 48 00 	cmpw    cr7,r29,r9
    6f94:	40 9c 00 44 	bge-    cr7,6fd8 <__multadd+0xc8>
    6f98:	39 3d 00 04 	addi    r9,r29,4
    6f9c:	3b bd 00 01 	addi    r29,r29,1
    6fa0:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    6fa4:	93 bf 00 10 	stw     r29,16(r31)
    6fa8:	7d 3f 4a 14 	add     r9,r31,r9
    6fac:	90 c9 00 04 	stw     r6,4(r9)
    6fb0:	80 01 00 34 	lwz     r0,52(r1)
    6fb4:	7f e3 fb 78 	mr      r3,r31
    6fb8:	83 61 00 1c 	lwz     r27,28(r1)
    6fbc:	7c 08 03 a6 	mtlr    r0
    6fc0:	83 81 00 20 	lwz     r28,32(r1)
    6fc4:	83 a1 00 24 	lwz     r29,36(r1)
    6fc8:	83 c1 00 28 	lwz     r30,40(r1)
    6fcc:	83 e1 00 2c 	lwz     r31,44(r1)
    6fd0:	38 21 00 30 	addi    r1,r1,48
    6fd4:	4e 80 00 20 	blr
    6fd8:	80 9f 00 04 	lwz     r4,4(r31)
    6fdc:	7f 83 e3 78 	mr      r3,r28
    6fe0:	90 c1 00 08 	stw     r6,8(r1)
    6fe4:	38 84 00 01 	addi    r4,r4,1
    6fe8:	4b ff fe 3d 	bl      6e24 <_Balloc>
    6fec:	81 3f 00 10 	lwz     r9,16(r31)
    6ff0:	7c 7b 1b 78 	mr      r27,r3
    6ff4:	38 9f 00 0c 	addi    r4,r31,12
    6ff8:	38 a9 00 02 	addi    r5,r9,2
    6ffc:	38 63 00 0c 	addi    r3,r3,12
    7000:	54 a5 10 3a 	rlwinm  r5,r5,2,0,29
    7004:	4b ff fd 09 	bl      6d0c <memcpy>
    7008:	81 3f 00 04 	lwz     r9,4(r31)
    700c:	81 5c 00 4c 	lwz     r10,76(r28)
    7010:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    7014:	80 c1 00 08 	lwz     r6,8(r1)
    7018:	7d 0a 48 2e 	lwzx    r8,r10,r9
    701c:	91 1f 00 00 	stw     r8,0(r31)
    7020:	7f ea 49 2e 	stwx    r31,r10,r9
    7024:	7f 7f db 78 	mr      r31,r27
    7028:	4b ff ff 70 	b       6f98 <__multadd+0x88>
    702c:	39 40 00 01 	li      r10,1
    7030:	7d 49 03 a6 	mtctr   r10
    7034:	4b ff ff 18 	b       6f4c <__multadd+0x3c>

00007038 <__s2b>:
    7038:	3d 00 38 e3 	lis     r8,14563
    703c:	39 26 00 08 	addi    r9,r6,8
    7040:	61 08 8e 39 	ori     r8,r8,36409
    7044:	7c 08 02 a6 	mflr    r0
    7048:	7d 09 40 96 	mulhw   r8,r9,r8
    704c:	7d 29 fe 70 	srawi   r9,r9,31
    7050:	94 21 ff d0 	stwu    r1,-48(r1)
    7054:	93 41 00 18 	stw     r26,24(r1)
    7058:	7c da 33 78 	mr      r26,r6
    705c:	7d 08 0e 70 	srawi   r8,r8,1
    7060:	93 61 00 1c 	stw     r27,28(r1)
    7064:	7d 09 40 50 	subf    r8,r9,r8
    7068:	93 81 00 20 	stw     r28,32(r1)
    706c:	2f 88 00 01 	cmpwi   cr7,r8,1
    7070:	93 a1 00 24 	stw     r29,36(r1)
    7074:	93 e1 00 2c 	stw     r31,44(r1)
    7078:	7c 7d 1b 78 	mr      r29,r3
    707c:	90 01 00 34 	stw     r0,52(r1)
    7080:	7c 9f 23 78 	mr      r31,r4
    7084:	93 21 00 14 	stw     r25,20(r1)
    7088:	7c bc 2b 78 	mr      r28,r5
    708c:	93 c1 00 28 	stw     r30,40(r1)
    7090:	7c fb 3b 78 	mr      r27,r7
    7094:	40 9d 00 e8 	ble-    cr7,717c <__s2b+0x144>
    7098:	39 20 00 01 	li      r9,1
    709c:	38 80 00 00 	li      r4,0
    70a0:	55 29 08 3c 	rlwinm  r9,r9,1,0,30
    70a4:	38 84 00 01 	addi    r4,r4,1
    70a8:	7f 88 48 00 	cmpw    cr7,r8,r9
    70ac:	41 9d ff f4 	bgt+    cr7,70a0 <__s2b+0x68>
    70b0:	7f a3 eb 78 	mr      r3,r29
    70b4:	4b ff fd 71 	bl      6e24 <_Balloc>
    70b8:	2f 9c 00 09 	cmpwi   cr7,r28,9
    70bc:	39 20 00 01 	li      r9,1
    70c0:	7c 64 1b 78 	mr      r4,r3
    70c4:	93 63 00 14 	stw     r27,20(r3)
    70c8:	91 23 00 10 	stw     r9,16(r3)
    70cc:	40 9d 00 a4 	ble-    cr7,7170 <__s2b+0x138>
    70d0:	3b 7f ff ff 	addi    r27,r31,-1
    70d4:	3b 3f 00 09 	addi    r25,r31,9
    70d8:	7f 7b e2 14 	add     r27,r27,r28
    70dc:	3b ff 00 08 	addi    r31,r31,8
    70e0:	8c df 00 01 	lbzu    r6,1(r31)
    70e4:	7f a3 eb 78 	mr      r3,r29
    70e8:	38 a0 00 0a 	li      r5,10
    70ec:	38 c6 ff d0 	addi    r6,r6,-48
    70f0:	4b ff fe 21 	bl      6f10 <__multadd>
    70f4:	7f 9f d8 00 	cmpw    cr7,r31,r27
    70f8:	7c 64 1b 78 	mr      r4,r3
    70fc:	40 9e ff e4 	bne+    cr7,70e0 <__s2b+0xa8>
    7100:	7f f9 e2 14 	add     r31,r25,r28
    7104:	3b ff ff f8 	addi    r31,r31,-8
    7108:	7f 9a e0 00 	cmpw    cr7,r26,r28
    710c:	40 9d 00 34 	ble-    cr7,7140 <__s2b+0x108>
    7110:	3b 5a ff ff 	addi    r26,r26,-1
    7114:	7f 5f d2 14 	add     r26,r31,r26
    7118:	3b ff ff ff 	addi    r31,r31,-1
    711c:	7f 9c d0 50 	subf    r28,r28,r26
    7120:	8c df 00 01 	lbzu    r6,1(r31)
    7124:	7f a3 eb 78 	mr      r3,r29
    7128:	38 a0 00 0a 	li      r5,10
    712c:	38 c6 ff d0 	addi    r6,r6,-48
    7130:	4b ff fd e1 	bl      6f10 <__multadd>
    7134:	7f 9f e0 00 	cmpw    cr7,r31,r28
    7138:	7c 64 1b 78 	mr      r4,r3
    713c:	40 9e ff e4 	bne+    cr7,7120 <__s2b+0xe8>
    7140:	80 01 00 34 	lwz     r0,52(r1)
    7144:	7c 83 23 78 	mr      r3,r4
    7148:	83 21 00 14 	lwz     r25,20(r1)
    714c:	7c 08 03 a6 	mtlr    r0
    7150:	83 41 00 18 	lwz     r26,24(r1)
    7154:	83 61 00 1c 	lwz     r27,28(r1)
    7158:	83 81 00 20 	lwz     r28,32(r1)
    715c:	83 a1 00 24 	lwz     r29,36(r1)
    7160:	83 c1 00 28 	lwz     r30,40(r1)
    7164:	83 e1 00 2c 	lwz     r31,44(r1)
    7168:	38 21 00 30 	addi    r1,r1,48
    716c:	4e 80 00 20 	blr
    7170:	3b ff 00 0a 	addi    r31,r31,10
    7174:	3b 80 00 09 	li      r28,9
    7178:	4b ff ff 90 	b       7108 <__s2b+0xd0>
    717c:	38 80 00 00 	li      r4,0
    7180:	4b ff ff 30 	b       70b0 <__s2b+0x78>

00007184 <__hi0bits>:
    7184:	74 69 ff ff 	andis.  r9,r3,65535
    7188:	39 20 00 00 	li      r9,0
    718c:	40 82 00 0c 	bne-    7198 <__hi0bits+0x14>
    7190:	54 63 80 1e 	rlwinm  r3,r3,16,0,15
    7194:	39 20 00 10 	li      r9,16
    7198:	74 6a ff 00 	andis.  r10,r3,65280
    719c:	40 82 00 0c 	bne-    71a8 <__hi0bits+0x24>
    71a0:	39 29 00 08 	addi    r9,r9,8
    71a4:	54 63 40 2e 	rlwinm  r3,r3,8,0,23
    71a8:	74 6a f0 00 	andis.  r10,r3,61440
    71ac:	40 82 00 0c 	bne-    71b8 <__hi0bits+0x34>
    71b0:	39 29 00 04 	addi    r9,r9,4
    71b4:	54 63 20 36 	rlwinm  r3,r3,4,0,27
    71b8:	74 6a c0 00 	andis.  r10,r3,49152
    71bc:	40 82 00 0c 	bne-    71c8 <__hi0bits+0x44>
    71c0:	39 29 00 02 	addi    r9,r9,2
    71c4:	54 63 10 3a 	rlwinm  r3,r3,2,0,29
    71c8:	2f 83 00 00 	cmpwi   cr7,r3,0
    71cc:	41 9c 00 14 	blt-    cr7,71e0 <__hi0bits+0x5c>
    71d0:	74 6a 40 00 	andis.  r10,r3,16384
    71d4:	39 29 00 01 	addi    r9,r9,1
    71d8:	40 82 00 08 	bne-    71e0 <__hi0bits+0x5c>
    71dc:	39 20 00 20 	li      r9,32
    71e0:	7d 23 4b 78 	mr      r3,r9
    71e4:	4e 80 00 20 	blr

000071e8 <__lo0bits>:
    71e8:	81 23 00 00 	lwz     r9,0(r3)
    71ec:	71 28 00 07 	andi.   r8,r9,7
    71f0:	41 82 00 2c 	beq-    721c <__lo0bits+0x34>
    71f4:	71 2a 00 01 	andi.   r10,r9,1
    71f8:	39 40 00 00 	li      r10,0
    71fc:	40 82 00 18 	bne-    7214 <__lo0bits+0x2c>
    7200:	71 28 00 02 	andi.   r8,r9,2
    7204:	40 82 00 90 	bne-    7294 <__lo0bits+0xac>
    7208:	55 29 f0 be 	rlwinm  r9,r9,30,2,31
    720c:	39 40 00 02 	li      r10,2
    7210:	91 23 00 00 	stw     r9,0(r3)
    7214:	7d 43 53 78 	mr      r3,r10
    7218:	4e 80 00 20 	blr
    721c:	55 2a 04 3e 	clrlwi  r10,r9,16
    7220:	2f 8a 00 00 	cmpwi   cr7,r10,0
    7224:	39 40 00 00 	li      r10,0
    7228:	40 9e 00 0c 	bne-    cr7,7234 <__lo0bits+0x4c>
    722c:	55 29 84 3e 	rlwinm  r9,r9,16,16,31
    7230:	39 40 00 10 	li      r10,16
    7234:	55 28 06 3e 	clrlwi  r8,r9,24
    7238:	2f 88 00 00 	cmpwi   cr7,r8,0
    723c:	40 9e 00 0c 	bne-    cr7,7248 <__lo0bits+0x60>
    7240:	39 4a 00 08 	addi    r10,r10,8
    7244:	55 29 c2 3e 	rlwinm  r9,r9,24,8,31
    7248:	71 28 00 0f 	andi.   r8,r9,15
    724c:	40 82 00 0c 	bne-    7258 <__lo0bits+0x70>
    7250:	39 4a 00 04 	addi    r10,r10,4
    7254:	55 29 e1 3e 	rlwinm  r9,r9,28,4,31
    7258:	71 28 00 03 	andi.   r8,r9,3
    725c:	40 82 00 0c 	bne-    7268 <__lo0bits+0x80>
    7260:	39 4a 00 02 	addi    r10,r10,2
    7264:	55 29 f0 be 	rlwinm  r9,r9,30,2,31
    7268:	71 28 00 01 	andi.   r8,r9,1
    726c:	40 82 00 1c 	bne-    7288 <__lo0bits+0xa0>
    7270:	55 29 f8 7f 	rlwinm. r9,r9,31,1,31
    7274:	40 82 00 10 	bne-    7284 <__lo0bits+0x9c>
    7278:	39 40 00 20 	li      r10,32
    727c:	7d 43 53 78 	mr      r3,r10
    7280:	4e 80 00 20 	blr
    7284:	39 4a 00 01 	addi    r10,r10,1
    7288:	91 23 00 00 	stw     r9,0(r3)
    728c:	7d 43 53 78 	mr      r3,r10
    7290:	4e 80 00 20 	blr
    7294:	55 29 f8 7e 	rlwinm  r9,r9,31,1,31
    7298:	39 40 00 01 	li      r10,1
    729c:	91 23 00 00 	stw     r9,0(r3)
    72a0:	7d 43 53 78 	mr      r3,r10
    72a4:	4e 80 00 20 	blr

000072a8 <__i2b>:
    72a8:	94 21 ff f0 	stwu    r1,-16(r1)
    72ac:	7c 08 02 a6 	mflr    r0
    72b0:	93 e1 00 0c 	stw     r31,12(r1)
    72b4:	7c 9f 23 78 	mr      r31,r4
    72b8:	38 80 00 01 	li      r4,1
    72bc:	90 01 00 14 	stw     r0,20(r1)
    72c0:	4b ff fb 65 	bl      6e24 <_Balloc>
    72c4:	80 01 00 14 	lwz     r0,20(r1)
    72c8:	39 40 00 01 	li      r10,1
    72cc:	93 e3 00 14 	stw     r31,20(r3)
    72d0:	7c 08 03 a6 	mtlr    r0
    72d4:	83 e1 00 0c 	lwz     r31,12(r1)
    72d8:	91 43 00 10 	stw     r10,16(r3)
    72dc:	38 21 00 10 	addi    r1,r1,16
    72e0:	4e 80 00 20 	blr

000072e4 <__multiply>:
    72e4:	7c 08 02 a6 	mflr    r0
    72e8:	94 21 ff d0 	stwu    r1,-48(r1)
    72ec:	93 21 00 14 	stw     r25,20(r1)
    72f0:	90 01 00 34 	stw     r0,52(r1)
    72f4:	93 41 00 18 	stw     r26,24(r1)
    72f8:	83 25 00 10 	lwz     r25,16(r5)
    72fc:	83 44 00 10 	lwz     r26,16(r4)
    7300:	93 01 00 10 	stw     r24,16(r1)
    7304:	7c b8 2b 78 	mr      r24,r5
    7308:	7f 9a c8 00 	cmpw    cr7,r26,r25
    730c:	93 61 00 1c 	stw     r27,28(r1)
    7310:	93 81 00 20 	stw     r28,32(r1)
    7314:	7c 9b 23 78 	mr      r27,r4
    7318:	93 a1 00 24 	stw     r29,36(r1)
    731c:	93 c1 00 28 	stw     r30,40(r1)
    7320:	93 e1 00 2c 	stw     r31,44(r1)
    7324:	40 9c 00 18 	bge-    cr7,733c <__multiply+0x58>
    7328:	7f 4a d3 78 	mr      r10,r26
    732c:	7c bb 2b 78 	mr      r27,r5
    7330:	7f 3a cb 78 	mr      r26,r25
    7334:	7c 98 23 78 	mr      r24,r4
    7338:	7d 59 53 78 	mr      r25,r10
    733c:	81 3b 00 08 	lwz     r9,8(r27)
    7340:	7f ba ca 14 	add     r29,r26,r25
    7344:	3b 9d 00 04 	addi    r28,r29,4
    7348:	7f 9d 48 00 	cmpw    cr7,r29,r9
    734c:	81 3b 00 04 	lwz     r9,4(r27)
    7350:	57 9c 10 3a 	rlwinm  r28,r28,2,0,29
    7354:	7c 80 00 26 	mfcr    r4
    7358:	54 84 f7 fe 	rlwinm  r4,r4,30,31,31
    735c:	7c 89 22 14 	add     r4,r9,r4
    7360:	4b ff fa c5 	bl      6e24 <_Balloc>
    7364:	39 40 00 00 	li      r10,0
    7368:	7f 83 e2 14 	add     r28,r3,r28
    736c:	3b e3 00 14 	addi    r31,r3,20
    7370:	3b 9c 00 04 	addi    r28,r28,4
    7374:	7f e9 fb 78 	mr      r9,r31
    7378:	7f 9f e0 40 	cmplw   cr7,r31,r28
    737c:	40 9c 00 14 	bge-    cr7,7390 <__multiply+0xac>
    7380:	91 49 00 00 	stw     r10,0(r9)
    7384:	39 29 00 04 	addi    r9,r9,4
    7388:	7f 9c 48 40 	cmplw   cr7,r28,r9
    738c:	41 9d ff f4 	bgt+    cr7,7380 <__multiply+0x9c>
    7390:	39 39 00 04 	addi    r9,r25,4
    7394:	39 98 00 14 	addi    r12,r24,20
    7398:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    739c:	39 7a 00 04 	addi    r11,r26,4
    73a0:	7d 38 4a 14 	add     r9,r24,r9
    73a4:	55 6b 10 3a 	rlwinm  r11,r11,2,0,29
    73a8:	38 09 00 04 	addi    r0,r9,4
    73ac:	7d 7b 5a 14 	add     r11,r27,r11
    73b0:	7f 8c 00 40 	cmplw   cr7,r12,r0
    73b4:	3b 7b 00 14 	addi    r27,r27,20
    73b8:	39 6b 00 04 	addi    r11,r11,4
    73bc:	40 9c 00 fc 	bge-    cr7,74b8 <__multiply+0x1d4>
    73c0:	80 ac 00 00 	lwz     r5,0(r12)
    73c4:	70 a4 ff ff 	andi.   r4,r5,65535
    73c8:	41 82 00 70 	beq-    7438 <__multiply+0x154>
    73cc:	7f e9 fb 78 	mr      r9,r31
    73d0:	7f 6a db 78 	mr      r10,r27
    73d4:	38 a0 00 00 	li      r5,0
    73d8:	80 ea 00 00 	lwz     r7,0(r10)
    73dc:	39 4a 00 04 	addi    r10,r10,4
    73e0:	81 09 00 00 	lwz     r8,0(r9)
    73e4:	7f 8b 50 40 	cmplw   cr7,r11,r10
    73e8:	54 e6 04 3e 	clrlwi  r6,r7,16
    73ec:	54 e7 84 3e 	rlwinm  r7,r7,16,16,31
    73f0:	7c c6 21 d6 	mullw   r6,r6,r4
    73f4:	55 1a 04 3e 	clrlwi  r26,r8,16
    73f8:	55 08 84 3e 	rlwinm  r8,r8,16,16,31
    73fc:	7c e7 21 d6 	mullw   r7,r7,r4
    7400:	7c c6 d2 14 	add     r6,r6,r26
    7404:	7c c6 2a 14 	add     r6,r6,r5
    7408:	54 c5 84 3e 	rlwinm  r5,r6,16,16,31
    740c:	54 c6 04 3e 	clrlwi  r6,r6,16
    7410:	7d 07 42 14 	add     r8,r7,r8
    7414:	7d 08 2a 14 	add     r8,r8,r5
    7418:	55 07 80 1e 	rlwinm  r7,r8,16,0,15
    741c:	55 05 84 3e 	rlwinm  r5,r8,16,16,31
    7420:	7c e6 33 78 	or      r6,r7,r6
    7424:	90 c9 00 00 	stw     r6,0(r9)
    7428:	39 29 00 04 	addi    r9,r9,4
    742c:	41 9d ff ac 	bgt+    cr7,73d8 <__multiply+0xf4>
    7430:	90 a9 00 00 	stw     r5,0(r9)
    7434:	80 ac 00 00 	lwz     r5,0(r12)
    7438:	54 a5 84 3f 	rlwinm. r5,r5,16,16,31
    743c:	41 82 00 6c 	beq-    74a8 <__multiply+0x1c4>
    7440:	81 5f 00 00 	lwz     r10,0(r31)
    7444:	7f e8 fb 78 	mr      r8,r31
    7448:	7f 69 db 78 	mr      r9,r27
    744c:	38 80 00 00 	li      r4,0
    7450:	7d 47 53 78 	mr      r7,r10
    7454:	a0 c9 00 02 	lhz     r6,2(r9)
    7458:	54 e7 84 3e 	rlwinm  r7,r7,16,16,31
    745c:	55 4a 04 3e 	clrlwi  r10,r10,16
    7460:	7c c6 29 d6 	mullw   r6,r6,r5
    7464:	7c c6 3a 14 	add     r6,r6,r7
    7468:	7c c6 22 14 	add     r6,r6,r4
    746c:	54 c7 80 1e 	rlwinm  r7,r6,16,0,15
    7470:	54 c6 84 3e 	rlwinm  r6,r6,16,16,31
    7474:	7c ea 53 78 	or      r10,r7,r10
    7478:	91 48 00 00 	stw     r10,0(r8)
    747c:	84 e8 00 04 	lwzu    r7,4(r8)
    7480:	a1 49 00 00 	lhz     r10,0(r9)
    7484:	39 29 00 04 	addi    r9,r9,4
    7488:	7f 8b 48 40 	cmplw   cr7,r11,r9
    748c:	54 e4 04 3e 	clrlwi  r4,r7,16
    7490:	7d 4a 29 d6 	mullw   r10,r10,r5
    7494:	7d 44 52 14 	add     r10,r4,r10
    7498:	7d 4a 32 14 	add     r10,r10,r6
    749c:	55 44 84 3e 	rlwinm  r4,r10,16,16,31
    74a0:	41 9d ff b4 	bgt+    cr7,7454 <__multiply+0x170>
    74a4:	91 48 00 00 	stw     r10,0(r8)
    74a8:	39 8c 00 04 	addi    r12,r12,4
    74ac:	3b ff 00 04 	addi    r31,r31,4
    74b0:	7f 80 60 40 	cmplw   cr7,r0,r12
    74b4:	41 9d ff 0c 	bgt+    cr7,73c0 <__multiply+0xdc>
    74b8:	2f 9d 00 00 	cmpwi   cr7,r29,0
    74bc:	40 9d 00 30 	ble-    cr7,74ec <__multiply+0x208>
    74c0:	81 3c ff fc 	lwz     r9,-4(r28)
    74c4:	3b 9c ff fc 	addi    r28,r28,-4
    74c8:	2f 89 00 00 	cmpwi   cr7,r9,0
    74cc:	40 9e 00 20 	bne-    cr7,74ec <__multiply+0x208>
    74d0:	7f a9 03 a6 	mtctr   r29
    74d4:	48 00 00 10 	b       74e4 <__multiply+0x200>
    74d8:	85 3c ff fc 	lwzu    r9,-4(r28)
    74dc:	2f 89 00 00 	cmpwi   cr7,r9,0
    74e0:	40 9e 00 0c 	bne-    cr7,74ec <__multiply+0x208>
    74e4:	3b bd ff ff 	addi    r29,r29,-1
    74e8:	42 00 ff f0 	bdnz+   74d8 <__multiply+0x1f4>
    74ec:	80 01 00 34 	lwz     r0,52(r1)
    74f0:	93 a3 00 10 	stw     r29,16(r3)
    74f4:	7c 08 03 a6 	mtlr    r0
    74f8:	83 01 00 10 	lwz     r24,16(r1)
    74fc:	83 21 00 14 	lwz     r25,20(r1)
    7500:	83 41 00 18 	lwz     r26,24(r1)
    7504:	83 61 00 1c 	lwz     r27,28(r1)
    7508:	83 81 00 20 	lwz     r28,32(r1)
    750c:	83 a1 00 24 	lwz     r29,36(r1)
    7510:	83 c1 00 28 	lwz     r30,40(r1)
    7514:	83 e1 00 2c 	lwz     r31,44(r1)
    7518:	38 21 00 30 	addi    r1,r1,48
    751c:	4e 80 00 20 	blr
    7520:	00 00 d8 b0 	.long 0xd8b0

00007524 <__pow5mult>:
    7524:	94 21 ff e0 	stwu    r1,-32(r1)
    7528:	7c 08 02 a6 	mflr    r0
    752c:	42 9f 00 05 	bcl-    20,4*cr7+so,7530 <__pow5mult+0xc>
    7530:	70 a9 00 03 	andi.   r9,r5,3
    7534:	93 c1 00 18 	stw     r30,24(r1)
    7538:	7f c8 02 a6 	mflr    r30
    753c:	90 01 00 24 	stw     r0,36(r1)
    7540:	93 41 00 08 	stw     r26,8(r1)
    7544:	7c 7a 1b 78 	mr      r26,r3
    7548:	80 1e ff f0 	lwz     r0,-16(r30)
    754c:	93 61 00 0c 	stw     r27,12(r1)
    7550:	7c 9b 23 78 	mr      r27,r4
    7554:	93 e1 00 1c 	stw     r31,28(r1)
    7558:	7f c0 f2 14 	add     r30,r0,r30
    755c:	93 81 00 10 	stw     r28,16(r1)
    7560:	7c bf 2b 78 	mr      r31,r5
    7564:	93 a1 00 14 	stw     r29,20(r1)
    7568:	40 82 00 cc 	bne-    7634 <__pow5mult+0x110>
    756c:	7f ff 16 71 	srawi.  r31,r31,2
    7570:	41 82 00 70 	beq-    75e0 <__pow5mult+0xbc>
    7574:	83 9a 00 48 	lwz     r28,72(r26)
    7578:	2f 9c 00 00 	cmpwi   cr7,r28,0
    757c:	40 be 00 20 	bne+    cr7,759c <__pow5mult+0x78>
    7580:	48 00 00 d4 	b       7654 <__pow5mult+0x130>
    7584:	7f ff 0e 71 	srawi.  r31,r31,1
    7588:	41 82 00 58 	beq-    75e0 <__pow5mult+0xbc>
    758c:	83 bc 00 00 	lwz     r29,0(r28)
    7590:	2f 9d 00 00 	cmpwi   cr7,r29,0
    7594:	41 9e 00 78 	beq-    cr7,760c <__pow5mult+0xe8>
    7598:	7f bc eb 78 	mr      r28,r29
    759c:	73 e9 00 01 	andi.   r9,r31,1
    75a0:	41 82 ff e4 	beq+    7584 <__pow5mult+0x60>
    75a4:	7f 64 db 78 	mr      r4,r27
    75a8:	7f 85 e3 78 	mr      r5,r28
    75ac:	7f 43 d3 78 	mr      r3,r26
    75b0:	4b ff fd 35 	bl      72e4 <__multiply>
    75b4:	2f 9b 00 00 	cmpwi   cr7,r27,0
    75b8:	41 9e 00 74 	beq-    cr7,762c <__pow5mult+0x108>
    75bc:	81 3b 00 04 	lwz     r9,4(r27)
    75c0:	7f ff 0e 71 	srawi.  r31,r31,1
    75c4:	81 5a 00 4c 	lwz     r10,76(r26)
    75c8:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    75cc:	7d 0a 48 2e 	lwzx    r8,r10,r9
    75d0:	91 1b 00 00 	stw     r8,0(r27)
    75d4:	7f 6a 49 2e 	stwx    r27,r10,r9
    75d8:	7c 7b 1b 78 	mr      r27,r3
    75dc:	40 82 ff b0 	bne+    758c <__pow5mult+0x68>
    75e0:	80 01 00 24 	lwz     r0,36(r1)
    75e4:	7f 63 db 78 	mr      r3,r27
    75e8:	83 41 00 08 	lwz     r26,8(r1)
    75ec:	7c 08 03 a6 	mtlr    r0
    75f0:	83 61 00 0c 	lwz     r27,12(r1)
    75f4:	83 81 00 10 	lwz     r28,16(r1)
    75f8:	83 a1 00 14 	lwz     r29,20(r1)
    75fc:	83 c1 00 18 	lwz     r30,24(r1)
    7600:	83 e1 00 1c 	lwz     r31,28(r1)
    7604:	38 21 00 20 	addi    r1,r1,32
    7608:	4e 80 00 20 	blr
    760c:	7f 84 e3 78 	mr      r4,r28
    7610:	7f 85 e3 78 	mr      r5,r28
    7614:	7f 43 d3 78 	mr      r3,r26
    7618:	4b ff fc cd 	bl      72e4 <__multiply>
    761c:	90 7c 00 00 	stw     r3,0(r28)
    7620:	7c 7c 1b 78 	mr      r28,r3
    7624:	93 a3 00 00 	stw     r29,0(r3)
    7628:	4b ff ff 74 	b       759c <__pow5mult+0x78>
    762c:	7c 7b 1b 78 	mr      r27,r3
    7630:	4b ff ff 54 	b       7584 <__pow5mult+0x60>
    7634:	81 5e 80 00 	lwz     r10,-32768(r30)
    7638:	39 29 ff ff 	addi    r9,r9,-1
    763c:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    7640:	38 c0 00 00 	li      r6,0
    7644:	7c aa 48 2e 	lwzx    r5,r10,r9
    7648:	4b ff f8 c9 	bl      6f10 <__multadd>
    764c:	7c 7b 1b 78 	mr      r27,r3
    7650:	4b ff ff 1c 	b       756c <__pow5mult+0x48>
    7654:	7f 43 d3 78 	mr      r3,r26
    7658:	38 80 02 71 	li      r4,625
    765c:	4b ff fc 4d 	bl      72a8 <__i2b>
    7660:	39 20 00 00 	li      r9,0
    7664:	90 7a 00 48 	stw     r3,72(r26)
    7668:	7c 7c 1b 78 	mr      r28,r3
    766c:	91 23 00 00 	stw     r9,0(r3)
    7670:	4b ff ff 2c 	b       759c <__pow5mult+0x78>

00007674 <__lshift>:
    7674:	7c 08 02 a6 	mflr    r0
    7678:	94 21 ff d0 	stwu    r1,-48(r1)
    767c:	93 41 00 18 	stw     r26,24(r1)
    7680:	90 01 00 34 	stw     r0,52(r1)
    7684:	93 61 00 1c 	stw     r27,28(r1)
    7688:	7c bb 2e 70 	srawi   r27,r5,5
    768c:	83 44 00 10 	lwz     r26,16(r4)
    7690:	81 24 00 08 	lwz     r9,8(r4)
    7694:	7f 5b d2 14 	add     r26,r27,r26
    7698:	93 e1 00 2c 	stw     r31,44(r1)
    769c:	3b fa 00 01 	addi    r31,r26,1
    76a0:	93 21 00 14 	stw     r25,20(r1)
    76a4:	7f 9f 48 00 	cmpw    cr7,r31,r9
    76a8:	93 81 00 20 	stw     r28,32(r1)
    76ac:	93 a1 00 24 	stw     r29,36(r1)
    76b0:	7c b9 2b 78 	mr      r25,r5
    76b4:	7c 9d 23 78 	mr      r29,r4
    76b8:	93 c1 00 28 	stw     r30,40(r1)
    76bc:	7c 7c 1b 78 	mr      r28,r3
    76c0:	80 84 00 04 	lwz     r4,4(r4)
    76c4:	40 9d 00 14 	ble-    cr7,76d8 <__lshift+0x64>
    76c8:	55 29 08 3c 	rlwinm  r9,r9,1,0,30
    76cc:	38 84 00 01 	addi    r4,r4,1
    76d0:	7f 9f 48 00 	cmpw    cr7,r31,r9
    76d4:	41 9d ff f4 	bgt+    cr7,76c8 <__lshift+0x54>
    76d8:	7f 83 e3 78 	mr      r3,r28
    76dc:	4b ff f7 49 	bl      6e24 <_Balloc>
    76e0:	2f 9b 00 00 	cmpwi   cr7,r27,0
    76e4:	39 43 00 14 	addi    r10,r3,20
    76e8:	40 9d 00 30 	ble-    cr7,7718 <__lshift+0xa4>
    76ec:	7f 69 03 a6 	mtctr   r27
    76f0:	39 43 00 10 	addi    r10,r3,16
    76f4:	39 20 00 00 	li      r9,0
    76f8:	39 00 00 00 	li      r8,0
    76fc:	95 0a 00 04 	stwu    r8,4(r10)
    7700:	39 29 00 01 	addi    r9,r9,1
    7704:	42 00 ff f8 	bdnz+   76fc <__lshift+0x88>
    7708:	39 49 00 04 	addi    r10,r9,4
    770c:	55 4a 10 3a 	rlwinm  r10,r10,2,0,29
    7710:	7d 43 52 14 	add     r10,r3,r10
    7714:	39 4a 00 04 	addi    r10,r10,4
    7718:	81 3d 00 10 	lwz     r9,16(r29)
    771c:	73 25 00 1f 	andi.   r5,r25,31
    7720:	38 e9 00 04 	addi    r7,r9,4
    7724:	39 3d 00 14 	addi    r9,r29,20
    7728:	54 e7 10 3a 	rlwinm  r7,r7,2,0,29
    772c:	7c fd 3a 14 	add     r7,r29,r7
    7730:	38 e7 00 04 	addi    r7,r7,4
    7734:	41 82 00 90 	beq-    77c4 <__lshift+0x150>
    7738:	20 85 00 20 	subfic  r4,r5,32
    773c:	39 00 00 00 	li      r8,0
    7740:	80 c9 00 00 	lwz     r6,0(r9)
    7744:	7c c6 28 30 	slw     r6,r6,r5
    7748:	7d 08 33 78 	or      r8,r8,r6
    774c:	91 0a 00 00 	stw     r8,0(r10)
    7750:	39 4a 00 04 	addi    r10,r10,4
    7754:	81 09 00 00 	lwz     r8,0(r9)
    7758:	39 29 00 04 	addi    r9,r9,4
    775c:	7f 87 48 40 	cmplw   cr7,r7,r9
    7760:	7d 08 24 30 	srw     r8,r8,r4
    7764:	41 9d ff dc 	bgt+    cr7,7740 <__lshift+0xcc>
    7768:	2f 88 00 00 	cmpwi   cr7,r8,0
    776c:	91 0a 00 00 	stw     r8,0(r10)
    7770:	41 9e 00 08 	beq-    cr7,7778 <__lshift+0x104>
    7774:	3b fa 00 02 	addi    r31,r26,2
    7778:	80 01 00 34 	lwz     r0,52(r1)
    777c:	3b ff ff ff 	addi    r31,r31,-1
    7780:	81 3d 00 04 	lwz     r9,4(r29)
    7784:	81 5c 00 4c 	lwz     r10,76(r28)
    7788:	7c 08 03 a6 	mtlr    r0
    778c:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    7790:	83 21 00 14 	lwz     r25,20(r1)
    7794:	7d 0a 48 2e 	lwzx    r8,r10,r9
    7798:	83 41 00 18 	lwz     r26,24(r1)
    779c:	93 e3 00 10 	stw     r31,16(r3)
    77a0:	91 1d 00 00 	stw     r8,0(r29)
    77a4:	83 61 00 1c 	lwz     r27,28(r1)
    77a8:	7f aa 49 2e 	stwx    r29,r10,r9
    77ac:	83 81 00 20 	lwz     r28,32(r1)
    77b0:	83 a1 00 24 	lwz     r29,36(r1)
    77b4:	83 c1 00 28 	lwz     r30,40(r1)
    77b8:	83 e1 00 2c 	lwz     r31,44(r1)
    77bc:	38 21 00 30 	addi    r1,r1,48
    77c0:	4e 80 00 20 	blr
    77c4:	39 4a ff fc 	addi    r10,r10,-4
    77c8:	81 09 00 00 	lwz     r8,0(r9)
    77cc:	39 29 00 04 	addi    r9,r9,4
    77d0:	7f 87 48 40 	cmplw   cr7,r7,r9
    77d4:	95 0a 00 04 	stwu    r8,4(r10)
    77d8:	41 9d ff f0 	bgt+    cr7,77c8 <__lshift+0x154>
    77dc:	4b ff ff 9c 	b       7778 <__lshift+0x104>

000077e0 <__mcmp>:
    77e0:	81 43 00 10 	lwz     r10,16(r3)
    77e4:	7c 67 1b 78 	mr      r7,r3
    77e8:	81 24 00 10 	lwz     r9,16(r4)
    77ec:	7c 69 50 51 	subf.   r3,r9,r10
    77f0:	4c 82 00 20 	bnelr   
    77f4:	39 29 00 04 	addi    r9,r9,4
    77f8:	55 2a 10 3a 	rlwinm  r10,r9,2,0,29
    77fc:	7d 27 52 14 	add     r9,r7,r10
    7800:	7c 84 52 14 	add     r4,r4,r10
    7804:	38 e7 00 14 	addi    r7,r7,20
    7808:	39 29 00 04 	addi    r9,r9,4
    780c:	38 84 00 04 	addi    r4,r4,4
    7810:	85 49 ff fc 	lwzu    r10,-4(r9)
    7814:	85 04 ff fc 	lwzu    r8,-4(r4)
    7818:	7f 07 48 40 	cmplw   cr6,r7,r9
    781c:	7f 8a 40 00 	cmpw    cr7,r10,r8
    7820:	40 9e 00 0c 	bne-    cr7,782c <__mcmp+0x4c>
    7824:	41 98 ff ec 	blt+    cr6,7810 <__mcmp+0x30>
    7828:	4e 80 00 20 	blr
    782c:	7d 48 50 10 	subfc   r10,r8,r10
    7830:	7d 4a 51 10 	subfe   r10,r10,r10
    7834:	61 43 00 01 	ori     r3,r10,1
    7838:	4e 80 00 20 	blr

0000783c <__mdiff>:
    783c:	94 21 ff e0 	stwu    r1,-32(r1)
    7840:	7c 08 02 a6 	mflr    r0
    7844:	93 81 00 10 	stw     r28,16(r1)
    7848:	7c 9c 23 78 	mr      r28,r4
    784c:	93 e1 00 1c 	stw     r31,28(r1)
    7850:	7c a4 2b 78 	mr      r4,r5
    7854:	7c 7f 1b 78 	mr      r31,r3
    7858:	7f 83 e3 78 	mr      r3,r28
    785c:	93 61 00 0c 	stw     r27,12(r1)
    7860:	7c bb 2b 78 	mr      r27,r5
    7864:	93 a1 00 14 	stw     r29,20(r1)
    7868:	90 01 00 24 	stw     r0,36(r1)
    786c:	93 41 00 08 	stw     r26,8(r1)
    7870:	93 c1 00 18 	stw     r30,24(r1)
    7874:	4b ff ff 6d 	bl      77e0 <__mcmp>
    7878:	7c 7d 1b 79 	mr.     r29,r3
    787c:	41 82 01 60 	beq-    79dc <__mdiff+0x1a0>
    7880:	41 80 01 48 	blt-    79c8 <__mdiff+0x18c>
    7884:	3b 40 00 00 	li      r26,0
    7888:	80 9c 00 04 	lwz     r4,4(r28)
    788c:	7f e3 fb 78 	mr      r3,r31
    7890:	4b ff f5 95 	bl      6e24 <_Balloc>
    7894:	81 3b 00 10 	lwz     r9,16(r27)
    7898:	81 7c 00 10 	lwz     r11,16(r28)
    789c:	38 bb 00 14 	addi    r5,r27,20
    78a0:	3b a9 00 04 	addi    r29,r9,4
    78a4:	93 43 00 0c 	stw     r26,12(r3)
    78a8:	3b eb 00 04 	addi    r31,r11,4
    78ac:	57 bd 10 3a 	rlwinm  r29,r29,2,0,29
    78b0:	57 ff 10 3a 	rlwinm  r31,r31,2,0,29
    78b4:	7f bb ea 14 	add     r29,r27,r29
    78b8:	7f fc fa 14 	add     r31,r28,r31
    78bc:	39 3c 00 14 	addi    r9,r28,20
    78c0:	3b ff 00 04 	addi    r31,r31,4
    78c4:	3b bd 00 04 	addi    r29,r29,4
    78c8:	38 83 00 14 	addi    r4,r3,20
    78cc:	39 00 00 00 	li      r8,0
    78d0:	80 c9 00 00 	lwz     r6,0(r9)
    78d4:	39 29 00 04 	addi    r9,r9,4
    78d8:	80 e5 00 00 	lwz     r7,0(r5)
    78dc:	38 a5 00 04 	addi    r5,r5,4
    78e0:	54 c0 04 3e 	clrlwi  r0,r6,16
    78e4:	7f 9d 28 40 	cmplw   cr7,r29,r5
    78e8:	7d 00 42 14 	add     r8,r0,r8
    78ec:	54 ec 04 3e 	clrlwi  r12,r7,16
    78f0:	7c 0c 40 50 	subf    r0,r12,r8
    78f4:	54 e7 84 3e 	rlwinm  r7,r7,16,16,31
    78f8:	54 c8 84 3e 	rlwinm  r8,r6,16,16,31
    78fc:	7c 0a 86 70 	srawi   r10,r0,16
    7900:	7d 07 40 50 	subf    r8,r7,r8
    7904:	54 00 04 3e 	clrlwi  r0,r0,16
    7908:	7d 08 52 14 	add     r8,r8,r10
    790c:	55 0a 80 1e 	rlwinm  r10,r8,16,0,15
    7910:	7d 08 86 70 	srawi   r8,r8,16
    7914:	7d 4a 03 78 	or      r10,r10,r0
    7918:	91 44 00 00 	stw     r10,0(r4)
    791c:	38 84 00 04 	addi    r4,r4,4
    7920:	41 9d ff b0 	bgt+    cr7,78d0 <__mdiff+0x94>
    7924:	7f 9f 48 40 	cmplw   cr7,r31,r9
    7928:	7d 20 4b 78 	mr      r0,r9
    792c:	40 9d 00 54 	ble-    cr7,7980 <__mdiff+0x144>
    7930:	38 a4 ff fc 	addi    r5,r4,-4
    7934:	80 c9 00 00 	lwz     r6,0(r9)
    7938:	39 29 00 04 	addi    r9,r9,4
    793c:	7f 9f 48 40 	cmplw   cr7,r31,r9
    7940:	54 ca 04 3e 	clrlwi  r10,r6,16
    7944:	54 c6 84 3e 	rlwinm  r6,r6,16,16,31
    7948:	7d 0a 42 14 	add     r8,r10,r8
    794c:	7d 07 86 70 	srawi   r7,r8,16
    7950:	55 08 04 3e 	clrlwi  r8,r8,16
    7954:	7c e7 32 14 	add     r7,r7,r6
    7958:	54 ea 80 1e 	rlwinm  r10,r7,16,0,15
    795c:	7d 4a 43 78 	or      r10,r10,r8
    7960:	7c e8 86 70 	srawi   r8,r7,16
    7964:	95 45 00 04 	stwu    r10,4(r5)
    7968:	41 9d ff cc 	bgt+    cr7,7934 <__mdiff+0xf8>
    796c:	7c 00 00 f8 	not     r0,r0
    7970:	7f e0 fa 14 	add     r31,r0,r31
    7974:	57 ff 00 3a 	rlwinm  r31,r31,0,0,29
    7978:	3b ff 00 04 	addi    r31,r31,4
    797c:	7c 84 fa 14 	add     r4,r4,r31
    7980:	2f 8a 00 00 	cmpwi   cr7,r10,0
    7984:	38 84 ff fc 	addi    r4,r4,-4
    7988:	40 9e 00 14 	bne-    cr7,799c <__mdiff+0x160>
    798c:	85 24 ff fc 	lwzu    r9,-4(r4)
    7990:	39 6b ff ff 	addi    r11,r11,-1
    7994:	2f 89 00 00 	cmpwi   cr7,r9,0
    7998:	41 9e ff f4 	beq+    cr7,798c <__mdiff+0x150>
    799c:	80 01 00 24 	lwz     r0,36(r1)
    79a0:	83 41 00 08 	lwz     r26,8(r1)
    79a4:	7c 08 03 a6 	mtlr    r0
    79a8:	83 61 00 0c 	lwz     r27,12(r1)
    79ac:	83 81 00 10 	lwz     r28,16(r1)
    79b0:	83 a1 00 14 	lwz     r29,20(r1)
    79b4:	83 c1 00 18 	lwz     r30,24(r1)
    79b8:	83 e1 00 1c 	lwz     r31,28(r1)
    79bc:	91 63 00 10 	stw     r11,16(r3)
    79c0:	38 21 00 20 	addi    r1,r1,32
    79c4:	4e 80 00 20 	blr
    79c8:	7f 89 e3 78 	mr      r9,r28
    79cc:	3b 40 00 01 	li      r26,1
    79d0:	7f 7c db 78 	mr      r28,r27
    79d4:	7d 3b 4b 78 	mr      r27,r9
    79d8:	4b ff fe b0 	b       7888 <__mdiff+0x4c>
    79dc:	7f e3 fb 78 	mr      r3,r31
    79e0:	38 80 00 00 	li      r4,0
    79e4:	4b ff f4 41 	bl      6e24 <_Balloc>
    79e8:	80 01 00 24 	lwz     r0,36(r1)
    79ec:	39 20 00 01 	li      r9,1
    79f0:	93 a3 00 14 	stw     r29,20(r3)
    79f4:	7c 08 03 a6 	mtlr    r0
    79f8:	83 41 00 08 	lwz     r26,8(r1)
    79fc:	83 61 00 0c 	lwz     r27,12(r1)
    7a00:	83 81 00 10 	lwz     r28,16(r1)
    7a04:	83 a1 00 14 	lwz     r29,20(r1)
    7a08:	83 c1 00 18 	lwz     r30,24(r1)
    7a0c:	83 e1 00 1c 	lwz     r31,28(r1)
    7a10:	91 23 00 10 	stw     r9,16(r3)
    7a14:	38 21 00 20 	addi    r1,r1,32
    7a18:	4e 80 00 20 	blr

00007a1c <__ulp>:
    7a1c:	94 21 ff e0 	stwu    r1,-32(r1)
    7a20:	d8 21 00 08 	stfd    f1,8(r1)
    7a24:	81 41 00 08 	lwz     r10,8(r1)
    7a28:	55 49 00 56 	rlwinm  r9,r10,0,1,11
    7a2c:	3d 29 fc c0 	addis   r9,r9,-832
    7a30:	2f 89 00 00 	cmpwi   cr7,r9,0
    7a34:	40 9d 00 20 	ble-    cr7,7a54 <__ulp+0x38>
    7a38:	7d 2a 4b 78 	mr      r10,r9
    7a3c:	39 60 00 00 	li      r11,0
    7a40:	91 41 00 10 	stw     r10,16(r1)
    7a44:	91 61 00 14 	stw     r11,20(r1)
    7a48:	c8 21 00 10 	lfd     f1,16(r1)
    7a4c:	38 21 00 20 	addi    r1,r1,32
    7a50:	4e 80 00 20 	blr
    7a54:	7d 29 00 d0 	neg     r9,r9
    7a58:	7d 29 a6 70 	srawi   r9,r9,20
    7a5c:	2f 89 00 13 	cmpwi   cr7,r9,19
    7a60:	40 9d 00 34 	ble-    cr7,7a94 <__ulp+0x78>
    7a64:	2f 89 00 32 	cmpwi   cr7,r9,50
    7a68:	39 40 00 00 	li      r10,0
    7a6c:	39 00 00 01 	li      r8,1
    7a70:	41 9d 00 0c 	bgt-    cr7,7a7c <__ulp+0x60>
    7a74:	21 29 00 33 	subfic  r9,r9,51
    7a78:	7d 08 48 30 	slw     r8,r8,r9
    7a7c:	7d 0b 43 78 	mr      r11,r8
    7a80:	91 41 00 10 	stw     r10,16(r1)
    7a84:	91 61 00 14 	stw     r11,20(r1)
    7a88:	c8 21 00 10 	lfd     f1,16(r1)
    7a8c:	38 21 00 20 	addi    r1,r1,32
    7a90:	4e 80 00 20 	blr
    7a94:	3d 00 00 08 	lis     r8,8
    7a98:	39 60 00 00 	li      r11,0
    7a9c:	7d 0a 4e 30 	sraw    r10,r8,r9
    7aa0:	91 61 00 14 	stw     r11,20(r1)
    7aa4:	91 41 00 10 	stw     r10,16(r1)
    7aa8:	c8 21 00 10 	lfd     f1,16(r1)
    7aac:	38 21 00 20 	addi    r1,r1,32
    7ab0:	4e 80 00 20 	blr

00007ab4 <__b2d>:
    7ab4:	7c 08 02 a6 	mflr    r0
    7ab8:	94 21 ff d0 	stwu    r1,-48(r1)
    7abc:	93 a1 00 24 	stw     r29,36(r1)
    7ac0:	90 01 00 34 	stw     r0,52(r1)
    7ac4:	93 81 00 20 	stw     r28,32(r1)
    7ac8:	83 a3 00 10 	lwz     r29,16(r3)
    7acc:	93 e1 00 2c 	stw     r31,44(r1)
    7ad0:	3b bd 00 04 	addi    r29,r29,4
    7ad4:	93 41 00 18 	stw     r26,24(r1)
    7ad8:	57 bd 10 3a 	rlwinm  r29,r29,2,0,29
    7adc:	3b 43 00 14 	addi    r26,r3,20
    7ae0:	7f a3 ea 14 	add     r29,r3,r29
    7ae4:	93 21 00 14 	stw     r25,20(r1)
    7ae8:	3b 9d 00 04 	addi    r28,r29,4
    7aec:	7c 99 23 78 	mr      r25,r4
    7af0:	83 fc ff fc 	lwz     r31,-4(r28)
    7af4:	93 61 00 1c 	stw     r27,28(r1)
    7af8:	7f e3 fb 78 	mr      r3,r31
    7afc:	93 c1 00 28 	stw     r30,40(r1)
    7b00:	4b ff f6 85 	bl      7184 <__hi0bits>
    7b04:	2f 83 00 0a 	cmpwi   cr7,r3,10
    7b08:	21 23 00 20 	subfic  r9,r3,32
    7b0c:	91 39 00 00 	stw     r9,0(r25)
    7b10:	41 9d 00 68 	bgt-    cr7,7b78 <__b2d+0xc4>
    7b14:	7f 9a e8 40 	cmplw   cr7,r26,r29
    7b18:	21 03 00 0b 	subfic  r8,r3,11
    7b1c:	7f e9 44 30 	srw     r9,r31,r8
    7b20:	65 2a 3f f0 	oris    r10,r9,16368
    7b24:	39 20 00 00 	li      r9,0
    7b28:	40 9c 00 0c 	bge-    cr7,7b34 <__b2d+0x80>
    7b2c:	81 3c ff f8 	lwz     r9,-8(r28)
    7b30:	7d 29 44 30 	srw     r9,r9,r8
    7b34:	80 01 00 34 	lwz     r0,52(r1)
    7b38:	38 63 00 15 	addi    r3,r3,21
    7b3c:	7f ff 18 30 	slw     r31,r31,r3
    7b40:	91 41 00 08 	stw     r10,8(r1)
    7b44:	7c 08 03 a6 	mtlr    r0
    7b48:	7d 2b fb 78 	or      r11,r9,r31
    7b4c:	91 61 00 0c 	stw     r11,12(r1)
    7b50:	83 21 00 14 	lwz     r25,20(r1)
    7b54:	c8 21 00 08 	lfd     f1,8(r1)
    7b58:	83 41 00 18 	lwz     r26,24(r1)
    7b5c:	83 61 00 1c 	lwz     r27,28(r1)
    7b60:	83 81 00 20 	lwz     r28,32(r1)
    7b64:	83 a1 00 24 	lwz     r29,36(r1)
    7b68:	83 c1 00 28 	lwz     r30,40(r1)
    7b6c:	83 e1 00 2c 	lwz     r31,44(r1)
    7b70:	38 21 00 30 	addi    r1,r1,48
    7b74:	4e 80 00 20 	blr
    7b78:	7f 9a e8 40 	cmplw   cr7,r26,r29
    7b7c:	7f bb eb 78 	mr      r27,r29
    7b80:	39 20 00 00 	li      r9,0
    7b84:	40 9c 00 0c 	bge-    cr7,7b90 <__b2d+0xdc>
    7b88:	81 3c ff f8 	lwz     r9,-8(r28)
    7b8c:	3b 7d ff fc 	addi    r27,r29,-4
    7b90:	35 03 ff f5 	addic.  r8,r3,-11
    7b94:	41 82 00 6c 	beq-    7c00 <__b2d+0x14c>
    7b98:	7f 9b d0 40 	cmplw   cr7,r27,r26
    7b9c:	20 c3 00 2b 	subfic  r6,r3,43
    7ba0:	7f ff 40 30 	slw     r31,r31,r8
    7ba4:	7d 27 34 30 	srw     r7,r9,r6
    7ba8:	67 ff 3f f0 	oris    r31,r31,16368
    7bac:	7f ea 3b 78 	or      r10,r31,r7
    7bb0:	38 e0 00 00 	li      r7,0
    7bb4:	40 9d 00 0c 	ble-    cr7,7bc0 <__b2d+0x10c>
    7bb8:	80 fb ff fc 	lwz     r7,-4(r27)
    7bbc:	7c e7 34 30 	srw     r7,r7,r6
    7bc0:	80 01 00 34 	lwz     r0,52(r1)
    7bc4:	7d 29 40 30 	slw     r9,r9,r8
    7bc8:	7c eb 4b 78 	or      r11,r7,r9
    7bcc:	91 41 00 08 	stw     r10,8(r1)
    7bd0:	7c 08 03 a6 	mtlr    r0
    7bd4:	91 61 00 0c 	stw     r11,12(r1)
    7bd8:	83 21 00 14 	lwz     r25,20(r1)
    7bdc:	c8 21 00 08 	lfd     f1,8(r1)
    7be0:	83 41 00 18 	lwz     r26,24(r1)
    7be4:	83 61 00 1c 	lwz     r27,28(r1)
    7be8:	83 81 00 20 	lwz     r28,32(r1)
    7bec:	83 a1 00 24 	lwz     r29,36(r1)
    7bf0:	83 c1 00 28 	lwz     r30,40(r1)
    7bf4:	83 e1 00 2c 	lwz     r31,44(r1)
    7bf8:	38 21 00 30 	addi    r1,r1,48
    7bfc:	4e 80 00 20 	blr
    7c00:	80 01 00 34 	lwz     r0,52(r1)
    7c04:	67 ea 3f f0 	oris    r10,r31,16368
    7c08:	7d 2b 4b 78 	mr      r11,r9
    7c0c:	91 41 00 08 	stw     r10,8(r1)
    7c10:	7c 08 03 a6 	mtlr    r0
    7c14:	91 61 00 0c 	stw     r11,12(r1)
    7c18:	83 21 00 14 	lwz     r25,20(r1)
    7c1c:	c8 21 00 08 	lfd     f1,8(r1)
    7c20:	83 41 00 18 	lwz     r26,24(r1)
    7c24:	83 61 00 1c 	lwz     r27,28(r1)
    7c28:	83 81 00 20 	lwz     r28,32(r1)
    7c2c:	83 a1 00 24 	lwz     r29,36(r1)
    7c30:	83 c1 00 28 	lwz     r30,40(r1)
    7c34:	83 e1 00 2c 	lwz     r31,44(r1)
    7c38:	38 21 00 30 	addi    r1,r1,48
    7c3c:	4e 80 00 20 	blr

00007c40 <__d2b>:
    7c40:	94 21 ff c0 	stwu    r1,-64(r1)
    7c44:	7d 80 00 26 	mfcr    r12
    7c48:	7c 08 02 a6 	mflr    r0
    7c4c:	d8 21 00 18 	stfd    f1,24(r1)
    7c50:	93 81 00 30 	stw     r28,48(r1)
    7c54:	83 81 00 18 	lwz     r28,24(r1)
    7c58:	93 21 00 24 	stw     r25,36(r1)
    7c5c:	57 99 65 7e 	rlwinm  r25,r28,12,21,31
    7c60:	93 41 00 28 	stw     r26,40(r1)
    7c64:	2e 19 00 00 	cmpwi   cr4,r25,0
    7c68:	7c 9a 23 78 	mr      r26,r4
    7c6c:	38 80 00 01 	li      r4,1
    7c70:	93 61 00 2c 	stw     r27,44(r1)
    7c74:	93 a1 00 34 	stw     r29,52(r1)
    7c78:	7c bb 2b 78 	mr      r27,r5
    7c7c:	93 e1 00 3c 	stw     r31,60(r1)
    7c80:	90 01 00 44 	stw     r0,68(r1)
    7c84:	93 c1 00 38 	stw     r30,56(r1)
    7c88:	91 81 00 20 	stw     r12,32(r1)
    7c8c:	83 a1 00 1c 	lwz     r29,28(r1)
    7c90:	4b ff f1 95 	bl      6e24 <_Balloc>
    7c94:	7c 7f 1b 78 	mr      r31,r3
    7c98:	57 89 03 3e 	clrlwi  r9,r28,12
    7c9c:	41 92 00 08 	beq-    cr4,7ca4 <__d2b+0x64>
    7ca0:	65 29 00 10 	oris    r9,r9,16
    7ca4:	2f 9d 00 00 	cmpwi   cr7,r29,0
    7ca8:	91 21 00 08 	stw     r9,8(r1)
    7cac:	41 9e 00 9c 	beq-    cr7,7d48 <__d2b+0x108>
    7cb0:	7c 23 0b 78 	mr      r3,r1
    7cb4:	97 a3 00 0c 	stwu    r29,12(r3)
    7cb8:	4b ff f5 31 	bl      71e8 <__lo0bits>
    7cbc:	81 41 00 08 	lwz     r10,8(r1)
    7cc0:	2c 03 00 00 	cmpwi   r3,0
    7cc4:	40 82 00 f4 	bne-    7db8 <__d2b+0x178>
    7cc8:	81 01 00 0c 	lwz     r8,12(r1)
    7ccc:	91 1f 00 14 	stw     r8,20(r31)
    7cd0:	7d 5d 00 34 	cntlzw  r29,r10
    7cd4:	91 5f 00 18 	stw     r10,24(r31)
    7cd8:	57 bd d9 7e 	rlwinm  r29,r29,27,5,31
    7cdc:	23 bd 00 02 	subfic  r29,r29,2
    7ce0:	93 bf 00 10 	stw     r29,16(r31)
    7ce4:	40 92 00 88 	bne-    cr4,7d6c <__d2b+0x12c>
    7ce8:	39 5d 00 03 	addi    r10,r29,3
    7cec:	39 23 fb ce 	addi    r9,r3,-1074
    7cf0:	55 4a 10 3a 	rlwinm  r10,r10,2,0,29
    7cf4:	57 bd 28 34 	rlwinm  r29,r29,5,0,26
    7cf8:	7d 5f 52 14 	add     r10,r31,r10
    7cfc:	80 6a 00 04 	lwz     r3,4(r10)
    7d00:	91 3a 00 00 	stw     r9,0(r26)
    7d04:	4b ff f4 81 	bl      7184 <__hi0bits>
    7d08:	80 01 00 44 	lwz     r0,68(r1)
    7d0c:	81 81 00 20 	lwz     r12,32(r1)
    7d10:	7c 63 e8 50 	subf    r3,r3,r29
    7d14:	7c 08 03 a6 	mtlr    r0
    7d18:	90 7b 00 00 	stw     r3,0(r27)
    7d1c:	83 21 00 24 	lwz     r25,36(r1)
    7d20:	7f e3 fb 78 	mr      r3,r31
    7d24:	83 41 00 28 	lwz     r26,40(r1)
    7d28:	7d 80 81 20 	mtcrf   8,r12
    7d2c:	83 61 00 2c 	lwz     r27,44(r1)
    7d30:	83 81 00 30 	lwz     r28,48(r1)
    7d34:	83 a1 00 34 	lwz     r29,52(r1)
    7d38:	83 c1 00 38 	lwz     r30,56(r1)
    7d3c:	83 e1 00 3c 	lwz     r31,60(r1)
    7d40:	38 21 00 40 	addi    r1,r1,64
    7d44:	4e 80 00 20 	blr
    7d48:	38 61 00 08 	addi    r3,r1,8
    7d4c:	3b a0 00 01 	li      r29,1
    7d50:	4b ff f4 99 	bl      71e8 <__lo0bits>
    7d54:	81 21 00 08 	lwz     r9,8(r1)
    7d58:	38 63 00 20 	addi    r3,r3,32
    7d5c:	91 3f 00 14 	stw     r9,20(r31)
    7d60:	39 20 00 01 	li      r9,1
    7d64:	91 3f 00 10 	stw     r9,16(r31)
    7d68:	41 92 ff 80 	beq+    cr4,7ce8 <__d2b+0xa8>
    7d6c:	80 01 00 44 	lwz     r0,68(r1)
    7d70:	3b 39 fb cd 	addi    r25,r25,-1075
    7d74:	81 81 00 20 	lwz     r12,32(r1)
    7d78:	7f 39 1a 14 	add     r25,r25,r3
    7d7c:	7c 08 03 a6 	mtlr    r0
    7d80:	21 23 00 35 	subfic  r9,r3,53
    7d84:	93 3a 00 00 	stw     r25,0(r26)
    7d88:	7f e3 fb 78 	mr      r3,r31
    7d8c:	91 3b 00 00 	stw     r9,0(r27)
    7d90:	7d 80 81 20 	mtcrf   8,r12
    7d94:	83 21 00 24 	lwz     r25,36(r1)
    7d98:	83 41 00 28 	lwz     r26,40(r1)
    7d9c:	83 61 00 2c 	lwz     r27,44(r1)
    7da0:	83 81 00 30 	lwz     r28,48(r1)
    7da4:	83 a1 00 34 	lwz     r29,52(r1)
    7da8:	83 c1 00 38 	lwz     r30,56(r1)
    7dac:	83 e1 00 3c 	lwz     r31,60(r1)
    7db0:	38 21 00 40 	addi    r1,r1,64
    7db4:	4e 80 00 20 	blr
    7db8:	20 e3 00 20 	subfic  r7,r3,32
    7dbc:	81 01 00 0c 	lwz     r8,12(r1)
    7dc0:	7d 47 38 30 	slw     r7,r10,r7
    7dc4:	7d 4a 1c 30 	srw     r10,r10,r3
    7dc8:	7c e8 43 78 	or      r8,r7,r8
    7dcc:	91 41 00 08 	stw     r10,8(r1)
    7dd0:	91 1f 00 14 	stw     r8,20(r31)
    7dd4:	4b ff fe fc 	b       7cd0 <__d2b+0x90>

00007dd8 <__ratio>:
    7dd8:	94 21 ff c0 	stwu    r1,-64(r1)
    7ddc:	7c 08 02 a6 	mflr    r0
    7de0:	93 e1 00 34 	stw     r31,52(r1)
    7de4:	7c 9f 23 78 	mr      r31,r4
    7de8:	38 81 00 0c 	addi    r4,r1,12
    7dec:	90 01 00 44 	stw     r0,68(r1)
    7df0:	db e1 00 38 	stfd    f31,56(r1)
    7df4:	93 a1 00 2c 	stw     r29,44(r1)
    7df8:	7c 7d 1b 78 	mr      r29,r3
    7dfc:	93 c1 00 30 	stw     r30,48(r1)
    7e00:	4b ff fc b5 	bl      7ab4 <__b2d>
    7e04:	7f e3 fb 78 	mr      r3,r31
    7e08:	38 81 00 08 	addi    r4,r1,8
    7e0c:	ff e0 08 90 	fmr     f31,f1
    7e10:	4b ff fc a5 	bl      7ab4 <__b2d>
    7e14:	81 5d 00 10 	lwz     r10,16(r29)
    7e18:	81 3f 00 10 	lwz     r9,16(r31)
    7e1c:	81 01 00 0c 	lwz     r8,12(r1)
    7e20:	7d 29 50 50 	subf    r9,r9,r10
    7e24:	81 41 00 08 	lwz     r10,8(r1)
    7e28:	db e1 00 18 	stfd    f31,24(r1)
    7e2c:	55 29 28 34 	rlwinm  r9,r9,5,0,26
    7e30:	7d 4a 40 50 	subf    r10,r10,r8
    7e34:	7c ea 4a 15 	add.    r7,r10,r9
    7e38:	81 61 00 1c 	lwz     r11,28(r1)
    7e3c:	81 41 00 18 	lwz     r10,24(r1)
    7e40:	d8 21 00 18 	stfd    f1,24(r1)
    7e44:	54 e7 a0 16 	rlwinm  r7,r7,20,0,11
    7e48:	81 01 00 18 	lwz     r8,24(r1)
    7e4c:	81 21 00 1c 	lwz     r9,28(r1)
    7e50:	40 81 00 38 	ble-    7e88 <__ratio+0xb0>
    7e54:	80 01 00 44 	lwz     r0,68(r1)
    7e58:	7d 47 52 14 	add     r10,r7,r10
    7e5c:	91 41 00 18 	stw     r10,24(r1)
    7e60:	91 61 00 1c 	stw     r11,28(r1)
    7e64:	7c 08 03 a6 	mtlr    r0
    7e68:	83 a1 00 2c 	lwz     r29,44(r1)
    7e6c:	cb e1 00 18 	lfd     f31,24(r1)
    7e70:	83 c1 00 30 	lwz     r30,48(r1)
    7e74:	fc 3f 08 24 	fdiv    f1,f31,f1
    7e78:	83 e1 00 34 	lwz     r31,52(r1)
    7e7c:	cb e1 00 38 	lfd     f31,56(r1)
    7e80:	38 21 00 40 	addi    r1,r1,64
    7e84:	4e 80 00 20 	blr
    7e88:	80 01 00 44 	lwz     r0,68(r1)
    7e8c:	7d 07 40 50 	subf    r8,r7,r8
    7e90:	91 01 00 18 	stw     r8,24(r1)
    7e94:	91 21 00 1c 	stw     r9,28(r1)
    7e98:	7c 08 03 a6 	mtlr    r0
    7e9c:	83 a1 00 2c 	lwz     r29,44(r1)
    7ea0:	c8 21 00 18 	lfd     f1,24(r1)
    7ea4:	83 c1 00 30 	lwz     r30,48(r1)
    7ea8:	fc 3f 08 24 	fdiv    f1,f31,f1
    7eac:	83 e1 00 34 	lwz     r31,52(r1)
    7eb0:	cb e1 00 38 	lfd     f31,56(r1)
    7eb4:	38 21 00 40 	addi    r1,r1,64
    7eb8:	4e 80 00 20 	blr
    7ebc:	00 00 cf 14 	.long 0xcf14

00007ec0 <_mprec_log10>:
    7ec0:	94 21 ff f0 	stwu    r1,-16(r1)
    7ec4:	7c 08 02 a6 	mflr    r0
    7ec8:	42 9f 00 05 	bcl-    20,4*cr7+so,7ecc <_mprec_log10+0xc>
    7ecc:	2f 83 00 17 	cmpwi   cr7,r3,23
    7ed0:	93 c1 00 08 	stw     r30,8(r1)
    7ed4:	7f c8 02 a6 	mflr    r30
    7ed8:	90 01 00 14 	stw     r0,20(r1)
    7edc:	80 1e ff f0 	lwz     r0,-16(r30)
    7ee0:	7f c0 f2 14 	add     r30,r0,r30
    7ee4:	40 9d 00 34 	ble-    cr7,7f18 <_mprec_log10+0x58>
    7ee8:	81 3e 80 04 	lwz     r9,-32764(r30)
    7eec:	7c 69 03 a6 	mtctr   r3
    7ef0:	c0 29 00 00 	lfs     f1,0(r9)
    7ef4:	81 3e 80 08 	lwz     r9,-32760(r30)
    7ef8:	c0 09 00 00 	lfs     f0,0(r9)
    7efc:	fc 21 00 32 	fmul    f1,f1,f0
    7f00:	42 00 ff fc 	bdnz+   7efc <_mprec_log10+0x3c>
    7f04:	80 01 00 14 	lwz     r0,20(r1)
    7f08:	83 c1 00 08 	lwz     r30,8(r1)
    7f0c:	7c 08 03 a6 	mtlr    r0
    7f10:	38 21 00 10 	addi    r1,r1,16
    7f14:	4e 80 00 20 	blr
    7f18:	80 01 00 14 	lwz     r0,20(r1)
    7f1c:	54 63 18 38 	rlwinm  r3,r3,3,0,28
    7f20:	81 3e 80 00 	lwz     r9,-32768(r30)
    7f24:	7c 08 03 a6 	mtlr    r0
    7f28:	83 c1 00 08 	lwz     r30,8(r1)
    7f2c:	7d 29 1a 14 	add     r9,r9,r3
    7f30:	c8 29 00 10 	lfd     f1,16(r9)
    7f34:	38 21 00 10 	addi    r1,r1,16
    7f38:	4e 80 00 20 	blr

00007f3c <__copybits>:
    7f3c:	81 45 00 10 	lwz     r10,16(r5)
    7f40:	39 25 00 14 	addi    r9,r5,20
    7f44:	38 84 ff ff 	addi    r4,r4,-1
    7f48:	38 ea 00 04 	addi    r7,r10,4
    7f4c:	7c 86 2e 70 	srawi   r6,r4,5
    7f50:	54 e7 10 3a 	rlwinm  r7,r7,2,0,29
    7f54:	38 c6 00 01 	addi    r6,r6,1
    7f58:	7c e5 3a 14 	add     r7,r5,r7
    7f5c:	54 c6 10 3a 	rlwinm  r6,r6,2,0,29
    7f60:	38 e7 00 04 	addi    r7,r7,4
    7f64:	7c c3 32 14 	add     r6,r3,r6
    7f68:	7f 89 38 40 	cmplw   cr7,r9,r7
    7f6c:	40 9c 00 30 	bge-    cr7,7f9c <__copybits+0x60>
    7f70:	39 43 ff fc 	addi    r10,r3,-4
    7f74:	81 09 00 00 	lwz     r8,0(r9)
    7f78:	39 29 00 04 	addi    r9,r9,4
    7f7c:	7f 87 48 40 	cmplw   cr7,r7,r9
    7f80:	95 0a 00 04 	stwu    r8,4(r10)
    7f84:	41 9d ff f0 	bgt+    cr7,7f74 <__copybits+0x38>
    7f88:	7d 25 38 50 	subf    r9,r5,r7
    7f8c:	39 29 ff eb 	addi    r9,r9,-21
    7f90:	55 29 00 3a 	rlwinm  r9,r9,0,0,29
    7f94:	39 29 00 04 	addi    r9,r9,4
    7f98:	7c 63 4a 14 	add     r3,r3,r9
    7f9c:	7f 86 18 40 	cmplw   cr7,r6,r3
    7fa0:	39 20 00 00 	li      r9,0
    7fa4:	4c 9d 00 20 	blelr   cr7
    7fa8:	91 23 00 00 	stw     r9,0(r3)
    7fac:	38 63 00 04 	addi    r3,r3,4
    7fb0:	7f 86 18 40 	cmplw   cr7,r6,r3
    7fb4:	41 9d ff f4 	bgt+    cr7,7fa8 <__copybits+0x6c>
    7fb8:	4e 80 00 20 	blr

00007fbc <__any_on>:
    7fbc:	7c 69 1b 78 	mr      r9,r3
    7fc0:	80 63 00 10 	lwz     r3,16(r3)
    7fc4:	7c 88 2e 70 	srawi   r8,r4,5
    7fc8:	39 49 00 14 	addi    r10,r9,20
    7fcc:	7f 83 40 00 	cmpw    cr7,r3,r8
    7fd0:	40 9c 00 48 	bge-    cr7,8018 <__any_on+0x5c>
    7fd4:	7c 68 1b 78 	mr      r8,r3
    7fd8:	38 68 00 04 	addi    r3,r8,4
    7fdc:	54 63 10 3a 	rlwinm  r3,r3,2,0,29
    7fe0:	7c 69 1a 14 	add     r3,r9,r3
    7fe4:	39 03 00 04 	addi    r8,r3,4
    7fe8:	7f 8a 40 40 	cmplw   cr7,r10,r8
    7fec:	40 9c 00 60 	bge-    cr7,804c <__any_on+0x90>
    7ff0:	81 23 00 00 	lwz     r9,0(r3)
    7ff4:	2f 89 00 00 	cmpwi   cr7,r9,0
    7ff8:	40 9e 00 18 	bne-    cr7,8010 <__any_on+0x54>
    7ffc:	7f 8a 18 40 	cmplw   cr7,r10,r3
    8000:	40 9c 00 4c 	bge-    cr7,804c <__any_on+0x90>
    8004:	85 23 ff fc 	lwzu    r9,-4(r3)
    8008:	2f 89 00 00 	cmpwi   cr7,r9,0
    800c:	41 9e ff f0 	beq+    cr7,7ffc <__any_on+0x40>
    8010:	38 60 00 01 	li      r3,1
    8014:	4e 80 00 20 	blr
    8018:	40 bd ff c0 	ble-    cr7,7fd8 <__any_on+0x1c>
    801c:	70 87 00 1f 	andi.   r7,r4,31
    8020:	41 a2 ff b8 	beq-    7fd8 <__any_on+0x1c>
    8024:	38 c8 00 04 	addi    r6,r8,4
    8028:	38 60 00 01 	li      r3,1
    802c:	54 c6 10 3a 	rlwinm  r6,r6,2,0,29
    8030:	7c c9 32 14 	add     r6,r9,r6
    8034:	80 c6 00 04 	lwz     r6,4(r6)
    8038:	7c c5 3c 30 	srw     r5,r6,r7
    803c:	7c a7 38 30 	slw     r7,r5,r7
    8040:	7f 87 30 00 	cmpw    cr7,r7,r6
    8044:	4c be 00 20 	bnelr+  cr7
    8048:	4b ff ff 90 	b       7fd8 <__any_on+0x1c>
    804c:	38 60 00 00 	li      r3,0
    8050:	4e 80 00 20 	blr

00008054 <__fpclassifyd>:
    8054:	94 21 ff f0 	stwu    r1,-16(r1)
    8058:	38 60 00 02 	li      r3,2
    805c:	d8 21 00 08 	stfd    f1,8(r1)
    8060:	81 41 00 08 	lwz     r10,8(r1)
    8064:	81 61 00 0c 	lwz     r11,12(r1)
    8068:	7d 49 53 78 	mr      r9,r10
    806c:	7d 68 4b 79 	or.     r8,r11,r9
    8070:	7d 6a 5b 78 	mr      r10,r11
    8074:	40 82 00 0c 	bne-    8080 <__fpclassifyd+0x2c>
    8078:	38 21 00 10 	addi    r1,r1,16
    807c:	4e 80 00 20 	blr
    8080:	3d 00 80 00 	lis     r8,-32768
    8084:	7f 89 40 00 	cmpw    cr7,r9,r8
    8088:	41 9e 00 7c 	beq-    cr7,8104 <__fpclassifyd+0xb0>
    808c:	3d 00 7f df 	lis     r8,32735
    8090:	3c e9 ff f0 	addis   r7,r9,-16
    8094:	61 08 ff ff 	ori     r8,r8,65535
    8098:	38 60 00 04 	li      r3,4
    809c:	7f 87 40 40 	cmplw   cr7,r7,r8
    80a0:	40 9d ff d8 	ble+    cr7,8078 <__fpclassifyd+0x24>
    80a4:	3c e9 7f f0 	addis   r7,r9,32752
    80a8:	7f 87 40 40 	cmplw   cr7,r7,r8
    80ac:	40 9d ff cc 	ble+    cr7,8078 <__fpclassifyd+0x24>
    80b0:	3d 00 00 0f 	lis     r8,15
    80b4:	38 60 00 03 	li      r3,3
    80b8:	61 08 ff ff 	ori     r8,r8,65535
    80bc:	7f 89 40 40 	cmplw   cr7,r9,r8
    80c0:	40 9d ff b8 	ble+    cr7,8078 <__fpclassifyd+0x24>
    80c4:	3d 00 00 0f 	lis     r8,15
    80c8:	3c e9 80 00 	addis   r7,r9,-32768
    80cc:	61 08 ff ff 	ori     r8,r8,65535
    80d0:	38 60 00 03 	li      r3,3
    80d4:	7f 87 40 40 	cmplw   cr7,r7,r8
    80d8:	40 9d ff a0 	ble+    cr7,8078 <__fpclassifyd+0x24>
    80dc:	3d 00 7f f0 	lis     r8,32752
    80e0:	7f 89 40 00 	cmpw    cr7,r9,r8
    80e4:	41 9e 00 14 	beq-    cr7,80f8 <__fpclassifyd+0xa4>
    80e8:	3d 00 ff f0 	lis     r8,-16
    80ec:	38 60 00 00 	li      r3,0
    80f0:	7f 89 40 00 	cmpw    cr7,r9,r8
    80f4:	40 9e ff 84 	bne+    cr7,8078 <__fpclassifyd+0x24>
    80f8:	7d 43 00 34 	cntlzw  r3,r10
    80fc:	54 63 d9 7e 	rlwinm  r3,r3,27,5,31
    8100:	4b ff ff 78 	b       8078 <__fpclassifyd+0x24>
    8104:	2f 8b 00 00 	cmpwi   cr7,r11,0
    8108:	41 9e ff 70 	beq+    cr7,8078 <__fpclassifyd+0x24>
    810c:	4b ff ff b8 	b       80c4 <__fpclassifyd+0x70>
    8110:	00 00 cc cc 	.long 0xcccc

00008114 <_sbrk_r>:
    8114:	94 21 ff e0 	stwu    r1,-32(r1)
    8118:	7c 08 02 a6 	mflr    r0
    811c:	42 9f 00 05 	bcl-    20,4*cr7+so,8120 <_sbrk_r+0xc>
    8120:	39 20 00 00 	li      r9,0
    8124:	93 c1 00 18 	stw     r30,24(r1)
    8128:	7f c8 02 a6 	mflr    r30
    812c:	90 01 00 24 	stw     r0,36(r1)
    8130:	93 e1 00 1c 	stw     r31,28(r1)
    8134:	80 1e ff f0 	lwz     r0,-16(r30)
    8138:	93 a1 00 14 	stw     r29,20(r1)
    813c:	7c 7d 1b 78 	mr      r29,r3
    8140:	7f c0 f2 14 	add     r30,r0,r30
    8144:	7c 83 23 78 	mr      r3,r4
    8148:	83 fe 80 00 	lwz     r31,-32768(r30)
    814c:	91 3f 00 00 	stw     r9,0(r31)
    8150:	4b ff 93 d5 	bl      1524 <sbrk>
    8154:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    8158:	41 9e 00 20 	beq-    cr7,8178 <_sbrk_r+0x64>
    815c:	80 01 00 24 	lwz     r0,36(r1)
    8160:	83 a1 00 14 	lwz     r29,20(r1)
    8164:	7c 08 03 a6 	mtlr    r0
    8168:	83 c1 00 18 	lwz     r30,24(r1)
    816c:	83 e1 00 1c 	lwz     r31,28(r1)
    8170:	38 21 00 20 	addi    r1,r1,32
    8174:	4e 80 00 20 	blr
    8178:	81 3f 00 00 	lwz     r9,0(r31)
    817c:	2f 89 00 00 	cmpwi   cr7,r9,0
    8180:	41 be ff dc 	beq-    cr7,815c <_sbrk_r+0x48>
    8184:	80 01 00 24 	lwz     r0,36(r1)
    8188:	91 3d 00 00 	stw     r9,0(r29)
    818c:	7c 08 03 a6 	mtlr    r0
    8190:	83 a1 00 14 	lwz     r29,20(r1)
    8194:	83 c1 00 18 	lwz     r30,24(r1)
    8198:	83 e1 00 1c 	lwz     r31,28(r1)
    819c:	38 21 00 20 	addi    r1,r1,32
    81a0:	4e 80 00 20 	blr

000081a4 <__sread>:
    81a4:	7c 08 02 a6 	mflr    r0
    81a8:	94 21 ff f0 	stwu    r1,-16(r1)
    81ac:	93 e1 00 0c 	stw     r31,12(r1)
    81b0:	7c 9f 23 78 	mr      r31,r4
    81b4:	90 01 00 14 	stw     r0,20(r1)
    81b8:	a8 84 00 0e 	lha     r4,14(r4)
    81bc:	48 00 26 79 	bl      a834 <_read_r>
    81c0:	2c 03 00 00 	cmpwi   r3,0
    81c4:	41 80 00 24 	blt-    81e8 <__sread+0x44>
    81c8:	80 01 00 14 	lwz     r0,20(r1)
    81cc:	81 3f 00 50 	lwz     r9,80(r31)
    81d0:	7c 08 03 a6 	mtlr    r0
    81d4:	7d 29 1a 14 	add     r9,r9,r3
    81d8:	91 3f 00 50 	stw     r9,80(r31)
    81dc:	83 e1 00 0c 	lwz     r31,12(r1)
    81e0:	38 21 00 10 	addi    r1,r1,16
    81e4:	4e 80 00 20 	blr
    81e8:	80 01 00 14 	lwz     r0,20(r1)
    81ec:	a1 3f 00 0c 	lhz     r9,12(r31)
    81f0:	7c 08 03 a6 	mtlr    r0
    81f4:	55 29 05 24 	rlwinm  r9,r9,0,20,18
    81f8:	b1 3f 00 0c 	sth     r9,12(r31)
    81fc:	83 e1 00 0c 	lwz     r31,12(r1)
    8200:	38 21 00 10 	addi    r1,r1,16
    8204:	4e 80 00 20 	blr

00008208 <__seofread>:
    8208:	38 60 00 00 	li      r3,0
    820c:	4e 80 00 20 	blr

00008210 <__swrite>:
    8210:	7c 08 02 a6 	mflr    r0
    8214:	94 21 ff e0 	stwu    r1,-32(r1)
    8218:	93 61 00 0c 	stw     r27,12(r1)
    821c:	7c 7b 1b 78 	mr      r27,r3
    8220:	90 01 00 24 	stw     r0,36(r1)
    8224:	93 81 00 10 	stw     r28,16(r1)
    8228:	7c bc 2b 78 	mr      r28,r5
    822c:	a9 24 00 0c 	lha     r9,12(r4)
    8230:	93 a1 00 14 	stw     r29,20(r1)
    8234:	7c dd 33 78 	mr      r29,r6
    8238:	55 2a 05 ee 	rlwinm  r10,r9,0,23,23
    823c:	93 e1 00 1c 	stw     r31,28(r1)
    8240:	7d 48 07 35 	extsh.  r8,r10
    8244:	93 c1 00 18 	stw     r30,24(r1)
    8248:	7c 9f 23 78 	mr      r31,r4
    824c:	41 a2 00 18 	beq+    8264 <__swrite+0x54>
    8250:	a8 84 00 0e 	lha     r4,14(r4)
    8254:	38 a0 00 00 	li      r5,0
    8258:	38 c0 00 02 	li      r6,2
    825c:	48 00 23 d5 	bl      a630 <_lseek_r>
    8260:	a9 3f 00 0c 	lha     r9,12(r31)
    8264:	80 01 00 24 	lwz     r0,36(r1)
    8268:	55 29 05 24 	rlwinm  r9,r9,0,20,18
    826c:	b1 3f 00 0c 	sth     r9,12(r31)
    8270:	7f 63 db 78 	mr      r3,r27
    8274:	a8 9f 00 0e 	lha     r4,14(r31)
    8278:	7f 85 e3 78 	mr      r5,r28
    827c:	83 61 00 0c 	lwz     r27,12(r1)
    8280:	7f a6 eb 78 	mr      r6,r29
    8284:	83 81 00 10 	lwz     r28,16(r1)
    8288:	7c 08 03 a6 	mtlr    r0
    828c:	83 a1 00 14 	lwz     r29,20(r1)
    8290:	83 c1 00 18 	lwz     r30,24(r1)
    8294:	83 e1 00 1c 	lwz     r31,28(r1)
    8298:	38 21 00 20 	addi    r1,r1,32
    829c:	48 00 17 1c 	b       99b8 <_write_r>

000082a0 <__sseek>:
    82a0:	7c 08 02 a6 	mflr    r0
    82a4:	94 21 ff f0 	stwu    r1,-16(r1)
    82a8:	93 e1 00 0c 	stw     r31,12(r1)
    82ac:	7c 9f 23 78 	mr      r31,r4
    82b0:	90 01 00 14 	stw     r0,20(r1)
    82b4:	a8 84 00 0e 	lha     r4,14(r4)
    82b8:	48 00 23 79 	bl      a630 <_lseek_r>
    82bc:	a1 3f 00 0c 	lhz     r9,12(r31)
    82c0:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    82c4:	41 9e 00 24 	beq-    cr7,82e8 <__sseek+0x48>
    82c8:	80 01 00 14 	lwz     r0,20(r1)
    82cc:	61 29 10 00 	ori     r9,r9,4096
    82d0:	90 7f 00 50 	stw     r3,80(r31)
    82d4:	7c 08 03 a6 	mtlr    r0
    82d8:	b1 3f 00 0c 	sth     r9,12(r31)
    82dc:	83 e1 00 0c 	lwz     r31,12(r1)
    82e0:	38 21 00 10 	addi    r1,r1,16
    82e4:	4e 80 00 20 	blr
    82e8:	80 01 00 14 	lwz     r0,20(r1)
    82ec:	55 29 05 24 	rlwinm  r9,r9,0,20,18
    82f0:	b1 3f 00 0c 	sth     r9,12(r31)
    82f4:	7c 08 03 a6 	mtlr    r0
    82f8:	83 e1 00 0c 	lwz     r31,12(r1)
    82fc:	38 21 00 10 	addi    r1,r1,16
    8300:	4e 80 00 20 	blr

00008304 <__sclose>:
    8304:	a8 84 00 0e 	lha     r4,14(r4)
    8308:	48 00 18 18 	b       9b20 <_close_r>

0000830c <strcmp>:
    830c:	7c 89 1b 78 	or      r9,r4,r3
    8310:	7c 08 02 a6 	mflr    r0
    8314:	71 2a 00 03 	andi.   r10,r9,3
    8318:	94 21 ff f0 	stwu    r1,-16(r1)
    831c:	90 01 00 14 	stw     r0,20(r1)
    8320:	93 c1 00 08 	stw     r30,8(r1)
    8324:	40 82 00 58 	bne-    837c <strcmp+0x70>
    8328:	81 23 00 00 	lwz     r9,0(r3)
    832c:	81 44 00 00 	lwz     r10,0(r4)
    8330:	7f 89 50 00 	cmpw    cr7,r9,r10
    8334:	40 9e 00 48 	bne-    cr7,837c <strcmp+0x70>
    8338:	3d 49 fe ff 	addis   r10,r9,-257
    833c:	3c e0 80 80 	lis     r7,-32640
    8340:	39 4a fe ff 	addi    r10,r10,-257
    8344:	60 e7 80 80 	ori     r7,r7,32896
    8348:	7d 49 48 78 	andc    r9,r10,r9
    834c:	7d 2a 38 39 	and.    r10,r9,r7
    8350:	41 a2 00 0c 	beq+    835c <strcmp+0x50>
    8354:	48 00 00 74 	b       83c8 <strcmp+0xbc>
    8358:	40 82 00 70 	bne-    83c8 <strcmp+0xbc>
    835c:	85 23 00 04 	lwzu    r9,4(r3)
    8360:	85 04 00 04 	lwzu    r8,4(r4)
    8364:	3d 49 fe ff 	addis   r10,r9,-257
    8368:	7f 89 40 00 	cmpw    cr7,r9,r8
    836c:	39 4a fe ff 	addi    r10,r10,-257
    8370:	7d 49 48 78 	andc    r9,r10,r9
    8374:	7d 2a 38 39 	and.    r10,r9,r7
    8378:	41 9e ff e0 	beq+    cr7,8358 <strcmp+0x4c>
    837c:	89 23 00 00 	lbz     r9,0(r3)
    8380:	89 44 00 00 	lbz     r10,0(r4)
    8384:	2f 89 00 00 	cmpwi   cr7,r9,0
    8388:	40 be 00 18 	bne+    cr7,83a0 <strcmp+0x94>
    838c:	48 00 00 1c 	b       83a8 <strcmp+0x9c>
    8390:	8d 23 00 01 	lbzu    r9,1(r3)
    8394:	2f 89 00 00 	cmpwi   cr7,r9,0
    8398:	41 9e 00 28 	beq-    cr7,83c0 <strcmp+0xb4>
    839c:	8d 44 00 01 	lbzu    r10,1(r4)
    83a0:	7f 89 50 00 	cmpw    cr7,r9,r10
    83a4:	41 9e ff ec 	beq+    cr7,8390 <strcmp+0x84>
    83a8:	80 01 00 14 	lwz     r0,20(r1)
    83ac:	7c 6a 48 50 	subf    r3,r10,r9
    83b0:	83 c1 00 08 	lwz     r30,8(r1)
    83b4:	7c 08 03 a6 	mtlr    r0
    83b8:	38 21 00 10 	addi    r1,r1,16
    83bc:	4e 80 00 20 	blr
    83c0:	89 44 00 01 	lbz     r10,1(r4)
    83c4:	4b ff ff e4 	b       83a8 <strcmp+0x9c>
    83c8:	80 01 00 14 	lwz     r0,20(r1)
    83cc:	38 60 00 00 	li      r3,0
    83d0:	83 c1 00 08 	lwz     r30,8(r1)
    83d4:	7c 08 03 a6 	mtlr    r0
    83d8:	38 21 00 10 	addi    r1,r1,16
    83dc:	4e 80 00 20 	blr

000083e0 <strlen>:
    83e0:	70 68 00 03 	andi.   r8,r3,3
    83e4:	7c 08 02 a6 	mflr    r0
    83e8:	94 21 ff f0 	stwu    r1,-16(r1)
    83ec:	90 01 00 14 	stw     r0,20(r1)
    83f0:	93 c1 00 08 	stw     r30,8(r1)
    83f4:	41 82 00 98 	beq-    848c <strlen+0xac>
    83f8:	89 23 00 00 	lbz     r9,0(r3)
    83fc:	2f 89 00 00 	cmpwi   cr7,r9,0
    8400:	41 9e 00 94 	beq-    cr7,8494 <strlen+0xb4>
    8404:	7c 69 1b 78 	mr      r9,r3
    8408:	48 00 00 10 	b       8418 <strlen+0x38>
    840c:	89 49 00 00 	lbz     r10,0(r9)
    8410:	2f 8a 00 00 	cmpwi   cr7,r10,0
    8414:	41 9e 00 60 	beq-    cr7,8474 <strlen+0x94>
    8418:	39 29 00 01 	addi    r9,r9,1
    841c:	71 2a 00 03 	andi.   r10,r9,3
    8420:	40 82 ff ec 	bne+    840c <strlen+0x2c>
    8424:	81 49 00 00 	lwz     r10,0(r9)
    8428:	3c e0 80 80 	lis     r7,-32640
    842c:	60 e7 80 80 	ori     r7,r7,32896
    8430:	3d 0a fe ff 	addis   r8,r10,-257
    8434:	39 08 fe ff 	addi    r8,r8,-257
    8438:	7d 0a 50 78 	andc    r10,r8,r10
    843c:	7d 48 38 39 	and.    r8,r10,r7
    8440:	40 82 00 1c 	bne-    845c <strlen+0x7c>
    8444:	85 49 00 04 	lwzu    r10,4(r9)
    8448:	3d 0a fe ff 	addis   r8,r10,-257
    844c:	39 08 fe ff 	addi    r8,r8,-257
    8450:	7d 0a 50 78 	andc    r10,r8,r10
    8454:	7d 48 38 39 	and.    r8,r10,r7
    8458:	41 82 ff ec 	beq+    8444 <strlen+0x64>
    845c:	89 49 00 00 	lbz     r10,0(r9)
    8460:	2f 8a 00 00 	cmpwi   cr7,r10,0
    8464:	41 9e 00 10 	beq-    cr7,8474 <strlen+0x94>
    8468:	8d 49 00 01 	lbzu    r10,1(r9)
    846c:	2f 8a 00 00 	cmpwi   cr7,r10,0
    8470:	40 9e ff f8 	bne+    cr7,8468 <strlen+0x88>
    8474:	7c 63 48 50 	subf    r3,r3,r9
    8478:	80 01 00 14 	lwz     r0,20(r1)
    847c:	83 c1 00 08 	lwz     r30,8(r1)
    8480:	7c 08 03 a6 	mtlr    r0
    8484:	38 21 00 10 	addi    r1,r1,16
    8488:	4e 80 00 20 	blr
    848c:	7c 69 1b 78 	mr      r9,r3
    8490:	4b ff ff 94 	b       8424 <strlen+0x44>
    8494:	38 60 00 00 	li      r3,0
    8498:	4b ff ff e0 	b       8478 <strlen+0x98>

0000849c <__sprint_r>:
    849c:	7c 08 02 a6 	mflr    r0
    84a0:	94 21 ff d0 	stwu    r1,-48(r1)
    84a4:	93 21 00 14 	stw     r25,20(r1)
    84a8:	7c b9 2b 78 	mr      r25,r5
    84ac:	90 01 00 34 	stw     r0,52(r1)
    84b0:	93 01 00 10 	stw     r24,16(r1)
    84b4:	81 25 00 08 	lwz     r9,8(r5)
    84b8:	93 41 00 18 	stw     r26,24(r1)
    84bc:	2f 89 00 00 	cmpwi   cr7,r9,0
    84c0:	93 61 00 1c 	stw     r27,28(r1)
    84c4:	93 81 00 20 	stw     r28,32(r1)
    84c8:	93 a1 00 24 	stw     r29,36(r1)
    84cc:	93 c1 00 28 	stw     r30,40(r1)
    84d0:	93 e1 00 2c 	stw     r31,44(r1)
    84d4:	41 9e 00 c0 	beq-    cr7,8594 <__sprint_r+0xf8>
    84d8:	81 44 00 64 	lwz     r10,100(r4)
    84dc:	7c 9c 23 78 	mr      r28,r4
    84e0:	71 48 20 00 	andi.   r8,r10,8192
    84e4:	41 82 00 e8 	beq-    85cc <__sprint_r+0x130>
    84e8:	83 05 00 00 	lwz     r24,0(r5)
    84ec:	7c 7a 1b 78 	mr      r26,r3
    84f0:	83 78 00 04 	lwz     r27,4(r24)
    84f4:	3b e0 00 00 	li      r31,0
    84f8:	83 b8 00 00 	lwz     r29,0(r24)
    84fc:	57 7b f0 bf 	rlwinm. r27,r27,30,2,31
    8500:	3b bd ff fc 	addi    r29,r29,-4
    8504:	40 a2 00 0c 	bne+    8510 <__sprint_r+0x74>
    8508:	48 00 00 6c 	b       8574 <__sprint_r+0xd8>
    850c:	41 9a 00 64 	beq-    cr6,8570 <__sprint_r+0xd4>
    8510:	84 9d 00 04 	lwzu    r4,4(r29)
    8514:	7f 43 d3 78 	mr      r3,r26
    8518:	7f 85 e3 78 	mr      r5,r28
    851c:	3b ff 00 01 	addi    r31,r31,1
    8520:	48 00 18 21 	bl      9d40 <_fputwc_r>
    8524:	7f 1b f8 00 	cmpw    cr6,r27,r31
    8528:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    852c:	40 9e ff e0 	bne+    cr7,850c <__sprint_r+0x70>
    8530:	38 60 ff ff 	li      r3,-1
    8534:	80 01 00 34 	lwz     r0,52(r1)
    8538:	39 20 00 00 	li      r9,0
    853c:	91 39 00 08 	stw     r9,8(r25)
    8540:	7c 08 03 a6 	mtlr    r0
    8544:	91 39 00 04 	stw     r9,4(r25)
    8548:	83 01 00 10 	lwz     r24,16(r1)
    854c:	83 21 00 14 	lwz     r25,20(r1)
    8550:	83 41 00 18 	lwz     r26,24(r1)
    8554:	83 61 00 1c 	lwz     r27,28(r1)
    8558:	83 81 00 20 	lwz     r28,32(r1)
    855c:	83 a1 00 24 	lwz     r29,36(r1)
    8560:	83 c1 00 28 	lwz     r30,40(r1)
    8564:	83 e1 00 2c 	lwz     r31,44(r1)
    8568:	38 21 00 30 	addi    r1,r1,48
    856c:	4e 80 00 20 	blr
    8570:	81 39 00 08 	lwz     r9,8(r25)
    8574:	57 7b 10 3a 	rlwinm  r27,r27,2,0,29
    8578:	3b 18 00 08 	addi    r24,r24,8
    857c:	7d 3b 48 50 	subf    r9,r27,r9
    8580:	2f 89 00 00 	cmpwi   cr7,r9,0
    8584:	91 39 00 08 	stw     r9,8(r25)
    8588:	40 9e ff 68 	bne+    cr7,84f0 <__sprint_r+0x54>
    858c:	38 60 00 00 	li      r3,0
    8590:	4b ff ff a4 	b       8534 <__sprint_r+0x98>
    8594:	80 01 00 34 	lwz     r0,52(r1)
    8598:	38 60 00 00 	li      r3,0
    859c:	83 01 00 10 	lwz     r24,16(r1)
    85a0:	7c 08 03 a6 	mtlr    r0
    85a4:	83 21 00 14 	lwz     r25,20(r1)
    85a8:	83 41 00 18 	lwz     r26,24(r1)
    85ac:	83 61 00 1c 	lwz     r27,28(r1)
    85b0:	83 81 00 20 	lwz     r28,32(r1)
    85b4:	83 a1 00 24 	lwz     r29,36(r1)
    85b8:	83 c1 00 28 	lwz     r30,40(r1)
    85bc:	83 e1 00 2c 	lwz     r31,44(r1)
    85c0:	91 25 00 04 	stw     r9,4(r5)
    85c4:	38 21 00 30 	addi    r1,r1,48
    85c8:	4e 80 00 20 	blr
    85cc:	48 00 1a 81 	bl      a04c <__sfvwrite_r>
    85d0:	4b ff ff 64 	b       8534 <__sprint_r+0x98>
    85d4:	00 00 c8 0c 	.long 0xc80c

000085d8 <_vfiprintf_r>:
    85d8:	94 21 fa e0 	stwu    r1,-1312(r1)
    85dc:	7c 08 02 a6 	mflr    r0
    85e0:	42 9f 00 05 	bcl-    20,4*cr7+so,85e4 <_vfiprintf_r+0xc>
    85e4:	7d 80 00 26 	mfcr    r12
    85e8:	93 c1 05 18 	stw     r30,1304(r1)
    85ec:	7f c8 02 a6 	mflr    r30
    85f0:	93 01 05 00 	stw     r24,1280(r1)
    85f4:	7c 78 1b 79 	mr.     r24,r3
    85f8:	90 01 05 24 	stw     r0,1316(r1)
    85fc:	80 1e ff f0 	lwz     r0,-16(r30)
    8600:	92 21 04 e4 	stw     r17,1252(r1)
    8604:	7c d1 33 78 	mr      r17,r6
    8608:	93 81 05 10 	stw     r28,1296(r1)
    860c:	7f c0 f2 14 	add     r30,r0,r30
    8610:	93 a1 05 14 	stw     r29,1300(r1)
    8614:	7c 9c 23 78 	mr      r28,r4
    8618:	91 c1 04 d8 	stw     r14,1240(r1)
    861c:	7c bd 2b 78 	mr      r29,r5
    8620:	91 e1 04 dc 	stw     r15,1244(r1)
    8624:	92 01 04 e0 	stw     r16,1248(r1)
    8628:	92 41 04 e8 	stw     r18,1256(r1)
    862c:	92 61 04 ec 	stw     r19,1260(r1)
    8630:	92 81 04 f0 	stw     r20,1264(r1)
    8634:	92 a1 04 f4 	stw     r21,1268(r1)
    8638:	92 c1 04 f8 	stw     r22,1272(r1)
    863c:	92 e1 04 fc 	stw     r23,1276(r1)
    8640:	93 21 05 04 	stw     r25,1284(r1)
    8644:	93 41 05 08 	stw     r26,1288(r1)
    8648:	93 61 05 0c 	stw     r27,1292(r1)
    864c:	93 e1 05 1c 	stw     r31,1308(r1)
    8650:	91 81 04 d4 	stw     r12,1236(r1)
    8654:	41 82 00 10 	beq-    8664 <_vfiprintf_r+0x8c>
    8658:	81 38 00 38 	lwz     r9,56(r24)
    865c:	2f 89 00 00 	cmpwi   cr7,r9,0
    8660:	41 9e 0b 90 	beq-    cr7,91f0 <_vfiprintf_r+0xc18>
    8664:	a9 3c 00 0c 	lha     r9,12(r28)
    8668:	55 2a 04 a4 	rlwinm  r10,r9,0,18,18
    866c:	7d 47 07 35 	extsh.  r7,r10
    8670:	40 82 00 18 	bne-    8688 <_vfiprintf_r+0xb0>
    8674:	81 5c 00 64 	lwz     r10,100(r28)
    8678:	61 29 20 00 	ori     r9,r9,8192
    867c:	b1 3c 00 0c 	sth     r9,12(r28)
    8680:	55 4a 04 e2 	rlwinm  r10,r10,0,19,17
    8684:	91 5c 00 64 	stw     r10,100(r28)
    8688:	55 2a 07 38 	rlwinm  r10,r9,0,28,28
    868c:	7d 48 07 35 	extsh.  r8,r10
    8690:	41 82 09 fc 	beq-    908c <_vfiprintf_r+0xab4>
    8694:	81 5c 00 10 	lwz     r10,16(r28)
    8698:	2f 8a 00 00 	cmpwi   cr7,r10,0
    869c:	41 9e 09 f0 	beq-    cr7,908c <_vfiprintf_r+0xab4>
    86a0:	71 2a 00 1a 	andi.   r10,r9,26
    86a4:	2f 8a 00 0a 	cmpwi   cr7,r10,10
    86a8:	41 9e 0a 08 	beq-    cr7,90b0 <_vfiprintf_r+0xad8>
    86ac:	38 e1 04 97 	addi    r7,r1,1175
    86b0:	3b 61 04 98 	addi    r27,r1,1176
    86b4:	39 20 00 00 	li      r9,0
    86b8:	3b 41 00 08 	addi    r26,r1,8
    86bc:	82 9e 80 10 	lwz     r20,-32752(r30)
    86c0:	7d 47 d8 50 	subf    r10,r7,r27
    86c4:	39 00 00 00 	li      r8,0
    86c8:	90 e1 04 a8 	stw     r7,1192(r1)
    86cc:	93 41 04 98 	stw     r26,1176(r1)
    86d0:	3b f4 00 10 	addi    r31,r20,16
    86d4:	91 21 04 a0 	stw     r9,1184(r1)
    86d8:	91 21 04 9c 	stw     r9,1180(r1)
    86dc:	91 21 04 b0 	stw     r9,1200(r1)
    86e0:	91 41 04 c0 	stw     r10,1216(r1)
    86e4:	91 01 04 bc 	stw     r8,1212(r1)
    86e8:	7f 48 d3 78 	mr      r8,r26
    86ec:	89 3d 00 00 	lbz     r9,0(r29)
    86f0:	7f b9 eb 78 	mr      r25,r29
    86f4:	2f 89 00 00 	cmpwi   cr7,r9,0
    86f8:	41 9e 00 68 	beq-    cr7,8760 <_vfiprintf_r+0x188>
    86fc:	2f 89 00 25 	cmpwi   cr7,r9,37
    8700:	40 be 00 10 	bne+    cr7,8710 <_vfiprintf_r+0x138>
    8704:	48 00 00 5c 	b       8760 <_vfiprintf_r+0x188>
    8708:	2f 89 00 25 	cmpwi   cr7,r9,37
    870c:	41 9e 00 10 	beq-    cr7,871c <_vfiprintf_r+0x144>
    8710:	8d 39 00 01 	lbzu    r9,1(r25)
    8714:	2f 89 00 00 	cmpwi   cr7,r9,0
    8718:	40 9e ff f0 	bne+    cr7,8708 <_vfiprintf_r+0x130>
    871c:	7e fd c8 50 	subf    r23,r29,r25
    8720:	2f 97 00 00 	cmpwi   cr7,r23,0
    8724:	41 9e 00 3c 	beq-    cr7,8760 <_vfiprintf_r+0x188>
    8728:	81 21 04 9c 	lwz     r9,1180(r1)
    872c:	81 41 04 a0 	lwz     r10,1184(r1)
    8730:	39 29 00 01 	addi    r9,r9,1
    8734:	93 a8 00 00 	stw     r29,0(r8)
    8738:	2f 89 00 07 	cmpwi   cr7,r9,7
    873c:	7d 4a ba 14 	add     r10,r10,r23
    8740:	92 e8 00 04 	stw     r23,4(r8)
    8744:	91 41 04 a0 	stw     r10,1184(r1)
    8748:	91 21 04 9c 	stw     r9,1180(r1)
    874c:	41 9d 0a 0c 	bgt-    cr7,9158 <_vfiprintf_r+0xb80>
    8750:	39 08 00 08 	addi    r8,r8,8
    8754:	80 e1 04 b0 	lwz     r7,1200(r1)
    8758:	7c e7 ba 14 	add     r7,r7,r23
    875c:	90 e1 04 b0 	stw     r7,1200(r1)
    8760:	89 39 00 00 	lbz     r9,0(r25)
    8764:	2f 89 00 00 	cmpwi   cr7,r9,0
    8768:	41 9e 07 9c 	beq-    cr7,8f04 <_vfiprintf_r+0x92c>
    876c:	39 40 00 00 	li      r10,0
    8770:	39 20 00 00 	li      r9,0
    8774:	91 41 04 ac 	stw     r10,1196(r1)
    8778:	3b b9 00 01 	addi    r29,r25,1
    877c:	99 21 04 a6 	stb     r9,1190(r1)
    8780:	3a 00 ff ff 	li      r16,-1
    8784:	89 39 00 01 	lbz     r9,1(r25)
    8788:	38 c0 00 2b 	li      r6,43
    878c:	3b 20 00 00 	li      r25,0
    8790:	38 a0 00 20 	li      r5,32
    8794:	3b bd 00 01 	addi    r29,r29,1
    8798:	39 49 ff e0 	addi    r10,r9,-32
    879c:	2b 8a 00 58 	cmplwi  cr7,r10,88
    87a0:	40 9d 02 e4 	ble-    cr7,8a84 <_vfiprintf_r+0x4ac>
    87a4:	2f 89 00 00 	cmpwi   cr7,r9,0
    87a8:	41 9e 07 5c 	beq-    cr7,8f04 <_vfiprintf_r+0x92c>
    87ac:	99 21 04 70 	stb     r9,1136(r1)
    87b0:	39 20 00 00 	li      r9,0
    87b4:	99 21 04 a6 	stb     r9,1190(r1)
    87b8:	38 e0 00 00 	li      r7,0
    87bc:	3a a0 00 01 	li      r21,1
    87c0:	90 e1 04 b4 	stw     r7,1204(r1)
    87c4:	3a e1 04 70 	addi    r23,r1,1136
    87c8:	3a c0 00 01 	li      r22,1
    87cc:	57 29 ff fe 	rlwinm  r9,r25,31,31,31
    87d0:	2e 09 00 00 	cmpwi   cr4,r9,0
    87d4:	41 92 00 08 	beq-    cr4,87dc <_vfiprintf_r+0x204>
    87d8:	3a d6 00 02 	addi    r22,r22,2
    87dc:	73 2a 00 84 	andi.   r10,r25,132
    87e0:	91 41 04 b8 	stw     r10,1208(r1)
    87e4:	40 82 06 dc 	bne-    8ec0 <_vfiprintf_r+0x8e8>
    87e8:	80 e1 04 ac 	lwz     r7,1196(r1)
    87ec:	7e 56 38 51 	subf.   r18,r22,r7
    87f0:	40 81 06 d0 	ble-    8ec0 <_vfiprintf_r+0x8e8>
    87f4:	2f 92 00 10 	cmpwi   cr7,r18,16
    87f8:	81 41 04 a0 	lwz     r10,1184(r1)
    87fc:	81 21 04 9c 	lwz     r9,1180(r1)
    8800:	3a 00 00 10 	li      r16,16
    8804:	82 7e 80 10 	lwz     r19,-32752(r30)
    8808:	41 bd 00 18 	bgt+    cr7,8820 <_vfiprintf_r+0x248>
    880c:	48 00 00 64 	b       8870 <_vfiprintf_r+0x298>
    8810:	3a 52 ff f0 	addi    r18,r18,-16
    8814:	39 08 00 08 	addi    r8,r8,8
    8818:	2f 92 00 10 	cmpwi   cr7,r18,16
    881c:	40 9d 00 54 	ble-    cr7,8870 <_vfiprintf_r+0x298>
    8820:	39 29 00 01 	addi    r9,r9,1
    8824:	39 4a 00 10 	addi    r10,r10,16
    8828:	2f 89 00 07 	cmpwi   cr7,r9,7
    882c:	92 68 00 00 	stw     r19,0(r8)
    8830:	92 08 00 04 	stw     r16,4(r8)
    8834:	91 41 04 a0 	stw     r10,1184(r1)
    8838:	91 21 04 9c 	stw     r9,1180(r1)
    883c:	40 9d ff d4 	ble+    cr7,8810 <_vfiprintf_r+0x238>
    8840:	7f 03 c3 78 	mr      r3,r24
    8844:	7f 84 e3 78 	mr      r4,r28
    8848:	7f 65 db 78 	mr      r5,r27
    884c:	4b ff fc 51 	bl      849c <__sprint_r>
    8850:	2f 83 00 00 	cmpwi   cr7,r3,0
    8854:	40 9e 06 cc 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    8858:	3a 52 ff f0 	addi    r18,r18,-16
    885c:	81 41 04 a0 	lwz     r10,1184(r1)
    8860:	2f 92 00 10 	cmpwi   cr7,r18,16
    8864:	81 21 04 9c 	lwz     r9,1180(r1)
    8868:	7f 48 d3 78 	mr      r8,r26
    886c:	41 9d ff b4 	bgt+    cr7,8820 <_vfiprintf_r+0x248>
    8870:	39 29 00 01 	addi    r9,r9,1
    8874:	7d 4a 92 14 	add     r10,r10,r18
    8878:	2f 89 00 07 	cmpwi   cr7,r9,7
    887c:	92 68 00 00 	stw     r19,0(r8)
    8880:	92 48 00 04 	stw     r18,4(r8)
    8884:	91 41 04 a0 	stw     r10,1184(r1)
    8888:	91 21 04 9c 	stw     r9,1180(r1)
    888c:	41 9d 0a 0c 	bgt-    cr7,9298 <_vfiprintf_r+0xcc0>
    8890:	88 e1 04 a6 	lbz     r7,1190(r1)
    8894:	39 08 00 08 	addi    r8,r8,8
    8898:	2f 87 00 00 	cmpwi   cr7,r7,0
    889c:	40 9e 06 38 	bne-    cr7,8ed4 <_vfiprintf_r+0x8fc>
    88a0:	41 92 00 30 	beq-    cr4,88d0 <_vfiprintf_r+0x2f8>
    88a4:	39 29 00 01 	addi    r9,r9,1
    88a8:	38 e1 04 a4 	addi    r7,r1,1188
    88ac:	2f 89 00 07 	cmpwi   cr7,r9,7
    88b0:	39 4a 00 02 	addi    r10,r10,2
    88b4:	90 e8 00 00 	stw     r7,0(r8)
    88b8:	38 e0 00 02 	li      r7,2
    88bc:	90 e8 00 04 	stw     r7,4(r8)
    88c0:	91 41 04 a0 	stw     r10,1184(r1)
    88c4:	91 21 04 9c 	stw     r9,1180(r1)
    88c8:	41 9d 09 00 	bgt-    cr7,91c8 <_vfiprintf_r+0xbf0>
    88cc:	39 08 00 08 	addi    r8,r8,8
    88d0:	80 e1 04 b8 	lwz     r7,1208(r1)
    88d4:	2f 87 00 80 	cmpwi   cr7,r7,128
    88d8:	41 9e 06 c4 	beq-    cr7,8f9c <_vfiprintf_r+0x9c4>
    88dc:	80 e1 04 b4 	lwz     r7,1204(r1)
    88e0:	7e 55 38 51 	subf.   r18,r21,r7
    88e4:	40 81 00 9c 	ble-    8980 <_vfiprintf_r+0x3a8>
    88e8:	2f 92 00 10 	cmpwi   cr7,r18,16
    88ec:	7f f3 fb 78 	mr      r19,r31
    88f0:	3a 00 00 10 	li      r16,16
    88f4:	41 bd 00 18 	bgt+    cr7,890c <_vfiprintf_r+0x334>
    88f8:	48 00 0d 94 	b       968c <_vfiprintf_r+0x10b4>
    88fc:	3a 52 ff f0 	addi    r18,r18,-16
    8900:	39 08 00 08 	addi    r8,r8,8
    8904:	2f 92 00 10 	cmpwi   cr7,r18,16
    8908:	40 9d 00 54 	ble-    cr7,895c <_vfiprintf_r+0x384>
    890c:	39 29 00 01 	addi    r9,r9,1
    8910:	39 4a 00 10 	addi    r10,r10,16
    8914:	2f 89 00 07 	cmpwi   cr7,r9,7
    8918:	93 e8 00 00 	stw     r31,0(r8)
    891c:	92 08 00 04 	stw     r16,4(r8)
    8920:	91 41 04 a0 	stw     r10,1184(r1)
    8924:	91 21 04 9c 	stw     r9,1180(r1)
    8928:	40 9d ff d4 	ble+    cr7,88fc <_vfiprintf_r+0x324>
    892c:	7f 03 c3 78 	mr      r3,r24
    8930:	7f 84 e3 78 	mr      r4,r28
    8934:	7f 65 db 78 	mr      r5,r27
    8938:	4b ff fb 65 	bl      849c <__sprint_r>
    893c:	2f 83 00 00 	cmpwi   cr7,r3,0
    8940:	40 9e 05 e0 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    8944:	3a 52 ff f0 	addi    r18,r18,-16
    8948:	81 41 04 a0 	lwz     r10,1184(r1)
    894c:	2f 92 00 10 	cmpwi   cr7,r18,16
    8950:	81 21 04 9c 	lwz     r9,1180(r1)
    8954:	7f 48 d3 78 	mr      r8,r26
    8958:	41 9d ff b4 	bgt+    cr7,890c <_vfiprintf_r+0x334>
    895c:	39 29 00 01 	addi    r9,r9,1
    8960:	7d 4a 92 14 	add     r10,r10,r18
    8964:	2f 89 00 07 	cmpwi   cr7,r9,7
    8968:	92 68 00 00 	stw     r19,0(r8)
    896c:	92 48 00 04 	stw     r18,4(r8)
    8970:	91 41 04 a0 	stw     r10,1184(r1)
    8974:	91 21 04 9c 	stw     r9,1180(r1)
    8978:	41 9d 08 00 	bgt-    cr7,9178 <_vfiprintf_r+0xba0>
    897c:	39 08 00 08 	addi    r8,r8,8
    8980:	39 29 00 01 	addi    r9,r9,1
    8984:	7d 4a aa 14 	add     r10,r10,r21
    8988:	2f 89 00 07 	cmpwi   cr7,r9,7
    898c:	92 e8 00 00 	stw     r23,0(r8)
    8990:	92 a8 00 04 	stw     r21,4(r8)
    8994:	91 41 04 a0 	stw     r10,1184(r1)
    8998:	91 21 04 9c 	stw     r9,1180(r1)
    899c:	41 9d 06 b0 	bgt-    cr7,904c <_vfiprintf_r+0xa74>
    89a0:	39 08 00 08 	addi    r8,r8,8
    89a4:	73 29 00 04 	andi.   r9,r25,4
    89a8:	41 82 00 a8 	beq-    8a50 <_vfiprintf_r+0x478>
    89ac:	80 e1 04 ac 	lwz     r7,1196(r1)
    89b0:	7f 36 38 51 	subf.   r25,r22,r7
    89b4:	40 81 00 9c 	ble-    8a50 <_vfiprintf_r+0x478>
    89b8:	2f 99 00 10 	cmpwi   cr7,r25,16
    89bc:	81 21 04 9c 	lwz     r9,1180(r1)
    89c0:	7e 93 a3 78 	mr      r19,r20
    89c4:	3a e0 00 10 	li      r23,16
    89c8:	41 bd 00 18 	bgt+    cr7,89e0 <_vfiprintf_r+0x408>
    89cc:	48 00 0e fc 	b       98c8 <_vfiprintf_r+0x12f0>
    89d0:	3b 39 ff f0 	addi    r25,r25,-16
    89d4:	39 08 00 08 	addi    r8,r8,8
    89d8:	2f 99 00 10 	cmpwi   cr7,r25,16
    89dc:	40 9d 00 54 	ble-    cr7,8a30 <_vfiprintf_r+0x458>
    89e0:	39 29 00 01 	addi    r9,r9,1
    89e4:	39 4a 00 10 	addi    r10,r10,16
    89e8:	2f 89 00 07 	cmpwi   cr7,r9,7
    89ec:	92 88 00 00 	stw     r20,0(r8)
    89f0:	92 e8 00 04 	stw     r23,4(r8)
    89f4:	91 41 04 a0 	stw     r10,1184(r1)
    89f8:	91 21 04 9c 	stw     r9,1180(r1)
    89fc:	40 9d ff d4 	ble+    cr7,89d0 <_vfiprintf_r+0x3f8>
    8a00:	7f 03 c3 78 	mr      r3,r24
    8a04:	7f 84 e3 78 	mr      r4,r28
    8a08:	7f 65 db 78 	mr      r5,r27
    8a0c:	4b ff fa 91 	bl      849c <__sprint_r>
    8a10:	2f 83 00 00 	cmpwi   cr7,r3,0
    8a14:	40 9e 05 0c 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    8a18:	3b 39 ff f0 	addi    r25,r25,-16
    8a1c:	81 41 04 a0 	lwz     r10,1184(r1)
    8a20:	2f 99 00 10 	cmpwi   cr7,r25,16
    8a24:	81 21 04 9c 	lwz     r9,1180(r1)
    8a28:	7f 48 d3 78 	mr      r8,r26
    8a2c:	41 9d ff b4 	bgt+    cr7,89e0 <_vfiprintf_r+0x408>
    8a30:	39 29 00 01 	addi    r9,r9,1
    8a34:	7d 59 52 14 	add     r10,r25,r10
    8a38:	2f 89 00 07 	cmpwi   cr7,r9,7
    8a3c:	92 68 00 00 	stw     r19,0(r8)
    8a40:	93 28 00 04 	stw     r25,4(r8)
    8a44:	91 41 04 a0 	stw     r10,1184(r1)
    8a48:	91 21 04 9c 	stw     r9,1180(r1)
    8a4c:	41 9d 08 f0 	bgt-    cr7,933c <_vfiprintf_r+0xd64>
    8a50:	81 01 04 ac 	lwz     r8,1196(r1)
    8a54:	7f 96 40 00 	cmpw    cr7,r22,r8
    8a58:	40 9c 00 08 	bge-    cr7,8a60 <_vfiprintf_r+0x488>
    8a5c:	7d 16 43 78 	mr      r22,r8
    8a60:	2f 8a 00 00 	cmpwi   cr7,r10,0
    8a64:	81 21 04 b0 	lwz     r9,1200(r1)
    8a68:	7d 29 b2 14 	add     r9,r9,r22
    8a6c:	91 21 04 b0 	stw     r9,1200(r1)
    8a70:	40 9e 06 00 	bne-    cr7,9070 <_vfiprintf_r+0xa98>
    8a74:	39 20 00 00 	li      r9,0
    8a78:	7f 48 d3 78 	mr      r8,r26
    8a7c:	91 21 04 9c 	stw     r9,1180(r1)
    8a80:	4b ff fc 6c 	b       86ec <_vfiprintf_r+0x114>
    8a84:	80 fe 80 0c 	lwz     r7,-32756(r30)
    8a88:	55 4a 10 3a 	rlwinm  r10,r10,2,0,29
    8a8c:	7d 47 50 2e 	lwzx    r10,r7,r10
    8a90:	7d 4a 3a 14 	add     r10,r10,r7
    8a94:	7d 49 03 a6 	mtctr   r10
    8a98:	4e 80 04 20 	bctr
    8a9c:	63 39 00 10 	ori     r25,r25,16
    8aa0:	73 27 00 20 	andi.   r7,r25,32
    8aa4:	41 82 07 54 	beq-    91f8 <_vfiprintf_r+0xc20>
    8aa8:	89 31 00 00 	lbz     r9,0(r17)
    8aac:	2b 89 00 06 	cmplwi  cr7,r9,6
    8ab0:	55 2a 07 fe 	clrlwi  r10,r9,31
    8ab4:	7d 29 52 14 	add     r9,r9,r10
    8ab8:	55 29 06 3e 	clrlwi  r9,r9,24
    8abc:	99 31 00 00 	stb     r9,0(r17)
    8ac0:	41 9d 08 e4 	bgt-    cr7,93a4 <_vfiprintf_r+0xdcc>
    8ac4:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8ac8:	81 51 00 08 	lwz     r10,8(r17)
    8acc:	39 29 00 02 	addi    r9,r9,2
    8ad0:	99 31 00 00 	stb     r9,0(r17)
    8ad4:	7d 4a 3a 14 	add     r10,r10,r7
    8ad8:	81 ca 00 00 	lwz     r14,0(r10)
    8adc:	81 ea 00 04 	lwz     r15,4(r10)
    8ae0:	39 40 00 01 	li      r10,1
    8ae4:	48 00 07 48 	b       922c <_vfiprintf_r+0xc54>
    8ae8:	63 39 00 10 	ori     r25,r25,16
    8aec:	73 29 00 20 	andi.   r9,r25,32
    8af0:	41 82 07 d0 	beq-    92c0 <_vfiprintf_r+0xce8>
    8af4:	89 31 00 00 	lbz     r9,0(r17)
    8af8:	2b 89 00 06 	cmplwi  cr7,r9,6
    8afc:	55 2a 07 fe 	clrlwi  r10,r9,31
    8b00:	7d 29 52 14 	add     r9,r9,r10
    8b04:	55 29 06 3e 	clrlwi  r9,r9,24
    8b08:	99 31 00 00 	stb     r9,0(r17)
    8b0c:	41 9d 09 b4 	bgt-    cr7,94c0 <_vfiprintf_r+0xee8>
    8b10:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8b14:	81 51 00 08 	lwz     r10,8(r17)
    8b18:	39 29 00 02 	addi    r9,r9,2
    8b1c:	99 31 00 00 	stb     r9,0(r17)
    8b20:	7d 4a 3a 14 	add     r10,r10,r7
    8b24:	81 ca 00 00 	lwz     r14,0(r10)
    8b28:	81 ea 00 04 	lwz     r15,4(r10)
    8b2c:	39 40 00 00 	li      r10,0
    8b30:	48 00 06 fc 	b       922c <_vfiprintf_r+0xc54>
    8b34:	63 39 00 10 	ori     r25,r25,16
    8b38:	73 29 00 20 	andi.   r9,r25,32
    8b3c:	41 82 07 bc 	beq-    92f8 <_vfiprintf_r+0xd20>
    8b40:	89 31 00 00 	lbz     r9,0(r17)
    8b44:	2b 89 00 06 	cmplwi  cr7,r9,6
    8b48:	55 2a 07 fe 	clrlwi  r10,r9,31
    8b4c:	7d 29 52 14 	add     r9,r9,r10
    8b50:	55 29 06 3e 	clrlwi  r9,r9,24
    8b54:	99 31 00 00 	stb     r9,0(r17)
    8b58:	41 9d 09 50 	bgt-    cr7,94a8 <_vfiprintf_r+0xed0>
    8b5c:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8b60:	81 51 00 08 	lwz     r10,8(r17)
    8b64:	39 29 00 02 	addi    r9,r9,2
    8b68:	99 31 00 00 	stb     r9,0(r17)
    8b6c:	7d 4a 3a 14 	add     r10,r10,r7
    8b70:	81 ca 00 00 	lwz     r14,0(r10)
    8b74:	81 ea 00 04 	lwz     r15,4(r10)
    8b78:	2f 8e 00 00 	cmpwi   cr7,r14,0
    8b7c:	40 bc 07 b4 	bge+    cr7,9330 <_vfiprintf_r+0xd58>
    8b80:	39 20 00 2d 	li      r9,45
    8b84:	21 ef 00 00 	subfic  r15,r15,0
    8b88:	7d ce 01 90 	subfze  r14,r14
    8b8c:	99 21 04 a6 	stb     r9,1190(r1)
    8b90:	3a 60 00 2d 	li      r19,45
    8b94:	39 40 00 01 	li      r10,1
    8b98:	48 00 06 a0 	b       9238 <_vfiprintf_r+0xc60>
    8b9c:	89 31 00 00 	lbz     r9,0(r17)
    8ba0:	2b 89 00 08 	cmplwi  cr7,r9,8
    8ba4:	40 9c 09 4c 	bge-    cr7,94f0 <_vfiprintf_r+0xf18>
    8ba8:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8bac:	81 51 00 08 	lwz     r10,8(r17)
    8bb0:	39 29 00 01 	addi    r9,r9,1
    8bb4:	99 31 00 00 	stb     r9,0(r17)
    8bb8:	7d 4a 3a 14 	add     r10,r10,r7
    8bbc:	81 4a 00 00 	lwz     r10,0(r10)
    8bc0:	2f 8a 00 00 	cmpwi   cr7,r10,0
    8bc4:	91 41 04 ac 	stw     r10,1196(r1)
    8bc8:	40 bc 02 6c 	bge+    cr7,8e34 <_vfiprintf_r+0x85c>
    8bcc:	80 e1 04 ac 	lwz     r7,1196(r1)
    8bd0:	7c e7 00 d0 	neg     r7,r7
    8bd4:	90 e1 04 ac 	stw     r7,1196(r1)
    8bd8:	63 39 00 04 	ori     r25,r25,4
    8bdc:	89 3d 00 00 	lbz     r9,0(r29)
    8be0:	4b ff fb b4 	b       8794 <_vfiprintf_r+0x1bc>
    8be4:	80 fe 80 04 	lwz     r7,-32764(r30)
    8be8:	90 e1 04 bc 	stw     r7,1212(r1)
    8bec:	73 27 00 20 	andi.   r7,r25,32
    8bf0:	41 82 01 64 	beq-    8d54 <_vfiprintf_r+0x77c>
    8bf4:	89 51 00 00 	lbz     r10,0(r17)
    8bf8:	2b 8a 00 06 	cmplwi  cr7,r10,6
    8bfc:	55 47 07 fe 	clrlwi  r7,r10,31
    8c00:	7d 4a 3a 14 	add     r10,r10,r7
    8c04:	55 4a 06 3e 	clrlwi  r10,r10,24
    8c08:	99 51 00 00 	stb     r10,0(r17)
    8c0c:	41 9d 08 cc 	bgt-    cr7,94d8 <_vfiprintf_r+0xf00>
    8c10:	55 46 10 3a 	rlwinm  r6,r10,2,0,29
    8c14:	80 f1 00 08 	lwz     r7,8(r17)
    8c18:	39 4a 00 02 	addi    r10,r10,2
    8c1c:	99 51 00 00 	stb     r10,0(r17)
    8c20:	7c e7 32 14 	add     r7,r7,r6
    8c24:	81 c7 00 00 	lwz     r14,0(r7)
    8c28:	81 e7 00 04 	lwz     r15,4(r7)
    8c2c:	48 00 01 58 	b       8d84 <_vfiprintf_r+0x7ac>
    8c30:	89 31 00 00 	lbz     r9,0(r17)
    8c34:	39 40 00 00 	li      r10,0
    8c38:	99 41 04 a6 	stb     r10,1190(r1)
    8c3c:	2b 89 00 08 	cmplwi  cr7,r9,8
    8c40:	40 9c 08 20 	bge-    cr7,9460 <_vfiprintf_r+0xe88>
    8c44:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8c48:	81 51 00 08 	lwz     r10,8(r17)
    8c4c:	39 29 00 01 	addi    r9,r9,1
    8c50:	99 31 00 00 	stb     r9,0(r17)
    8c54:	7d 4a 3a 14 	add     r10,r10,r7
    8c58:	82 ea 00 00 	lwz     r23,0(r10)
    8c5c:	2f 97 00 00 	cmpwi   cr7,r23,0
    8c60:	41 9e 0c 3c 	beq-    cr7,989c <_vfiprintf_r+0x12c4>
    8c64:	2f 90 00 00 	cmpwi   cr7,r16,0
    8c68:	7e e3 bb 78 	mr      r3,r23
    8c6c:	41 9c 0c 10 	blt-    cr7,987c <_vfiprintf_r+0x12a4>
    8c70:	38 80 00 00 	li      r4,0
    8c74:	7e 05 83 78 	mr      r5,r16
    8c78:	91 01 04 c4 	stw     r8,1220(r1)
    8c7c:	4b ff df 85 	bl      6c00 <memchr>
    8c80:	2c 03 00 00 	cmpwi   r3,0
    8c84:	81 01 04 c4 	lwz     r8,1220(r1)
    8c88:	41 82 0c 48 	beq-    98d0 <_vfiprintf_r+0x12f8>
    8c8c:	7e b7 18 50 	subf    r21,r23,r3
    8c90:	8a 61 04 a6 	lbz     r19,1190(r1)
    8c94:	7f 95 80 00 	cmpw    cr7,r21,r16
    8c98:	40 9d 09 fc 	ble-    cr7,9694 <_vfiprintf_r+0x10bc>
    8c9c:	38 e0 00 00 	li      r7,0
    8ca0:	7e 15 83 78 	mr      r21,r16
    8ca4:	90 e1 04 b4 	stw     r7,1204(r1)
    8ca8:	48 00 05 cc 	b       9274 <_vfiprintf_r+0xc9c>
    8cac:	63 39 00 20 	ori     r25,r25,32
    8cb0:	89 3d 00 00 	lbz     r9,0(r29)
    8cb4:	4b ff fa e0 	b       8794 <_vfiprintf_r+0x1bc>
    8cb8:	89 31 00 00 	lbz     r9,0(r17)
    8cbc:	2b 89 00 08 	cmplwi  cr7,r9,8
    8cc0:	40 9c 08 40 	bge-    cr7,9500 <_vfiprintf_r+0xf28>
    8cc4:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8cc8:	81 51 00 08 	lwz     r10,8(r17)
    8ccc:	39 29 00 01 	addi    r9,r9,1
    8cd0:	99 31 00 00 	stb     r9,0(r17)
    8cd4:	7d 4a 3a 14 	add     r10,r10,r7
    8cd8:	39 20 00 30 	li      r9,48
    8cdc:	81 ea 00 00 	lwz     r15,0(r10)
    8ce0:	99 21 04 a4 	stb     r9,1188(r1)
    8ce4:	39 20 00 78 	li      r9,120
    8ce8:	99 21 04 a5 	stb     r9,1189(r1)
    8cec:	39 c0 00 00 	li      r14,0
    8cf0:	81 3e 80 04 	lwz     r9,-32764(r30)
    8cf4:	63 39 00 02 	ori     r25,r25,2
    8cf8:	39 40 00 02 	li      r10,2
    8cfc:	91 21 04 bc 	stw     r9,1212(r1)
    8d00:	48 00 05 2c 	b       922c <_vfiprintf_r+0xc54>
    8d04:	73 29 00 20 	andi.   r9,r25,32
    8d08:	41 82 07 68 	beq-    9470 <_vfiprintf_r+0xe98>
    8d0c:	89 31 00 00 	lbz     r9,0(r17)
    8d10:	2b 89 00 08 	cmplwi  cr7,r9,8
    8d14:	40 9c 0a 7c 	bge-    cr7,9790 <_vfiprintf_r+0x11b8>
    8d18:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8d1c:	81 51 00 08 	lwz     r10,8(r17)
    8d20:	39 29 00 01 	addi    r9,r9,1
    8d24:	99 31 00 00 	stb     r9,0(r17)
    8d28:	7d 4a 3a 14 	add     r10,r10,r7
    8d2c:	80 e1 04 b0 	lwz     r7,1200(r1)
    8d30:	81 2a 00 00 	lwz     r9,0(r10)
    8d34:	7c ea fe 70 	srawi   r10,r7,31
    8d38:	90 e9 00 04 	stw     r7,4(r9)
    8d3c:	91 49 00 00 	stw     r10,0(r9)
    8d40:	4b ff f9 ac 	b       86ec <_vfiprintf_r+0x114>
    8d44:	73 27 00 20 	andi.   r7,r25,32
    8d48:	81 5e 80 00 	lwz     r10,-32768(r30)
    8d4c:	91 41 04 bc 	stw     r10,1212(r1)
    8d50:	40 a2 fe a4 	bne-    8bf4 <_vfiprintf_r+0x61c>
    8d54:	73 2a 00 10 	andi.   r10,r25,16
    8d58:	41 82 06 d4 	beq-    942c <_vfiprintf_r+0xe54>
    8d5c:	89 51 00 00 	lbz     r10,0(r17)
    8d60:	2b 8a 00 08 	cmplwi  cr7,r10,8
    8d64:	40 9c 09 c0 	bge-    cr7,9724 <_vfiprintf_r+0x114c>
    8d68:	55 46 10 3a 	rlwinm  r6,r10,2,0,29
    8d6c:	80 f1 00 08 	lwz     r7,8(r17)
    8d70:	39 4a 00 01 	addi    r10,r10,1
    8d74:	99 51 00 00 	stb     r10,0(r17)
    8d78:	7c e7 32 14 	add     r7,r7,r6
    8d7c:	81 e7 00 00 	lwz     r15,0(r7)
    8d80:	39 c0 00 00 	li      r14,0
    8d84:	73 2a 00 01 	andi.   r10,r25,1
    8d88:	39 40 00 02 	li      r10,2
    8d8c:	41 82 04 a0 	beq-    922c <_vfiprintf_r+0xc54>
    8d90:	7d c7 7b 79 	or.     r7,r14,r15
    8d94:	41 82 04 98 	beq-    922c <_vfiprintf_r+0xc54>
    8d98:	38 e0 00 30 	li      r7,48
    8d9c:	99 21 04 a5 	stb     r9,1189(r1)
    8da0:	98 e1 04 a4 	stb     r7,1188(r1)
    8da4:	63 39 00 02 	ori     r25,r25,2
    8da8:	48 00 04 84 	b       922c <_vfiprintf_r+0xc54>
    8dac:	89 3d 00 00 	lbz     r9,0(r29)
    8db0:	7f aa eb 78 	mr      r10,r29
    8db4:	2f 89 00 6c 	cmpwi   cr7,r9,108
    8db8:	41 9e 07 58 	beq-    cr7,9510 <_vfiprintf_r+0xf38>
    8dbc:	63 39 00 10 	ori     r25,r25,16
    8dc0:	4b ff f9 d4 	b       8794 <_vfiprintf_r+0x1bc>
    8dc4:	63 39 00 40 	ori     r25,r25,64
    8dc8:	89 3d 00 00 	lbz     r9,0(r29)
    8dcc:	4b ff f9 c8 	b       8794 <_vfiprintf_r+0x1bc>
    8dd0:	89 31 00 00 	lbz     r9,0(r17)
    8dd4:	2b 89 00 08 	cmplwi  cr7,r9,8
    8dd8:	40 9c 05 84 	bge-    cr7,935c <_vfiprintf_r+0xd84>
    8ddc:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    8de0:	81 51 00 08 	lwz     r10,8(r17)
    8de4:	39 29 00 01 	addi    r9,r9,1
    8de8:	99 31 00 00 	stb     r9,0(r17)
    8dec:	7d 4a 3a 14 	add     r10,r10,r7
    8df0:	81 2a 00 00 	lwz     r9,0(r10)
    8df4:	99 21 04 70 	stb     r9,1136(r1)
    8df8:	39 20 00 00 	li      r9,0
    8dfc:	99 21 04 a6 	stb     r9,1190(r1)
    8e00:	4b ff f9 b8 	b       87b8 <_vfiprintf_r+0x1e0>
    8e04:	98 c1 04 a6 	stb     r6,1190(r1)
    8e08:	89 3d 00 00 	lbz     r9,0(r29)
    8e0c:	4b ff f9 88 	b       8794 <_vfiprintf_r+0x1bc>
    8e10:	63 39 00 01 	ori     r25,r25,1
    8e14:	89 3d 00 00 	lbz     r9,0(r29)
    8e18:	4b ff f9 7c 	b       8794 <_vfiprintf_r+0x1bc>
    8e1c:	89 21 04 a6 	lbz     r9,1190(r1)
    8e20:	2f 89 00 00 	cmpwi   cr7,r9,0
    8e24:	40 9e 00 10 	bne-    cr7,8e34 <_vfiprintf_r+0x85c>
    8e28:	98 a1 04 a6 	stb     r5,1190(r1)
    8e2c:	89 3d 00 00 	lbz     r9,0(r29)
    8e30:	4b ff f9 64 	b       8794 <_vfiprintf_r+0x1bc>
    8e34:	89 3d 00 00 	lbz     r9,0(r29)
    8e38:	4b ff f9 5c 	b       8794 <_vfiprintf_r+0x1bc>
    8e3c:	3a 40 00 00 	li      r18,0
    8e40:	39 49 ff d0 	addi    r10,r9,-48
    8e44:	89 3d 00 00 	lbz     r9,0(r29)
    8e48:	1e 52 00 0a 	mulli   r18,r18,10
    8e4c:	3b bd 00 01 	addi    r29,r29,1
    8e50:	7e 52 52 14 	add     r18,r18,r10
    8e54:	39 49 ff d0 	addi    r10,r9,-48
    8e58:	2b 8a 00 09 	cmplwi  cr7,r10,9
    8e5c:	40 9d ff e8 	ble+    cr7,8e44 <_vfiprintf_r+0x86c>
    8e60:	92 41 04 ac 	stw     r18,1196(r1)
    8e64:	4b ff f9 34 	b       8798 <_vfiprintf_r+0x1c0>
    8e68:	63 39 00 80 	ori     r25,r25,128
    8e6c:	89 3d 00 00 	lbz     r9,0(r29)
    8e70:	4b ff f9 24 	b       8794 <_vfiprintf_r+0x1bc>
    8e74:	89 3d 00 00 	lbz     r9,0(r29)
    8e78:	38 fd 00 01 	addi    r7,r29,1
    8e7c:	2f 89 00 2a 	cmpwi   cr7,r9,42
    8e80:	41 9e 0a 84 	beq-    cr7,9904 <_vfiprintf_r+0x132c>
    8e84:	39 49 ff d0 	addi    r10,r9,-48
    8e88:	3a 00 00 00 	li      r16,0
    8e8c:	2b 8a 00 09 	cmplwi  cr7,r10,9
    8e90:	41 9d 00 28 	bgt-    cr7,8eb8 <_vfiprintf_r+0x8e0>
    8e94:	89 27 00 00 	lbz     r9,0(r7)
    8e98:	1e 10 00 0a 	mulli   r16,r16,10
    8e9c:	38 e7 00 01 	addi    r7,r7,1
    8ea0:	7e 0a 82 14 	add     r16,r10,r16
    8ea4:	39 49 ff d0 	addi    r10,r9,-48
    8ea8:	2b 8a 00 09 	cmplwi  cr7,r10,9
    8eac:	40 9d ff e8 	ble+    cr7,8e94 <_vfiprintf_r+0x8bc>
    8eb0:	2f 90 00 00 	cmpwi   cr7,r16,0
    8eb4:	41 9c 08 ec 	blt-    cr7,97a0 <_vfiprintf_r+0x11c8>
    8eb8:	7c fd 3b 78 	mr      r29,r7
    8ebc:	4b ff f8 dc 	b       8798 <_vfiprintf_r+0x1c0>
    8ec0:	81 41 04 a0 	lwz     r10,1184(r1)
    8ec4:	81 21 04 9c 	lwz     r9,1180(r1)
    8ec8:	88 e1 04 a6 	lbz     r7,1190(r1)
    8ecc:	2f 87 00 00 	cmpwi   cr7,r7,0
    8ed0:	41 be f9 d0 	beq-    cr7,88a0 <_vfiprintf_r+0x2c8>
    8ed4:	39 29 00 01 	addi    r9,r9,1
    8ed8:	38 e1 04 a6 	addi    r7,r1,1190
    8edc:	2f 89 00 07 	cmpwi   cr7,r9,7
    8ee0:	39 4a 00 01 	addi    r10,r10,1
    8ee4:	90 e8 00 00 	stw     r7,0(r8)
    8ee8:	38 e0 00 01 	li      r7,1
    8eec:	90 e8 00 04 	stw     r7,4(r8)
    8ef0:	91 41 04 a0 	stw     r10,1184(r1)
    8ef4:	91 21 04 9c 	stw     r9,1180(r1)
    8ef8:	41 9d 02 a8 	bgt-    cr7,91a0 <_vfiprintf_r+0xbc8>
    8efc:	39 08 00 08 	addi    r8,r8,8
    8f00:	4b ff f9 a0 	b       88a0 <_vfiprintf_r+0x2c8>
    8f04:	81 21 04 a0 	lwz     r9,1184(r1)
    8f08:	2f 89 00 00 	cmpwi   cr7,r9,0
    8f0c:	41 be 00 14 	beq+    cr7,8f20 <_vfiprintf_r+0x948>
    8f10:	7f 03 c3 78 	mr      r3,r24
    8f14:	7f 84 e3 78 	mr      r4,r28
    8f18:	38 a1 04 98 	addi    r5,r1,1176
    8f1c:	4b ff f5 81 	bl      849c <__sprint_r>
    8f20:	a1 3c 00 0c 	lhz     r9,12(r28)
    8f24:	55 29 06 72 	rlwinm  r9,r9,0,25,25
    8f28:	7d 2a 07 35 	extsh.  r10,r9
    8f2c:	41 82 00 0c 	beq-    8f38 <_vfiprintf_r+0x960>
    8f30:	39 20 ff ff 	li      r9,-1
    8f34:	91 21 04 b0 	stw     r9,1200(r1)
    8f38:	80 01 05 24 	lwz     r0,1316(r1)
    8f3c:	81 81 04 d4 	lwz     r12,1236(r1)
    8f40:	7c 08 03 a6 	mtlr    r0
    8f44:	80 61 04 b0 	lwz     r3,1200(r1)
    8f48:	81 c1 04 d8 	lwz     r14,1240(r1)
    8f4c:	7d 80 81 20 	mtcrf   8,r12
    8f50:	81 e1 04 dc 	lwz     r15,1244(r1)
    8f54:	82 01 04 e0 	lwz     r16,1248(r1)
    8f58:	82 21 04 e4 	lwz     r17,1252(r1)
    8f5c:	82 41 04 e8 	lwz     r18,1256(r1)
    8f60:	82 61 04 ec 	lwz     r19,1260(r1)
    8f64:	82 81 04 f0 	lwz     r20,1264(r1)
    8f68:	82 a1 04 f4 	lwz     r21,1268(r1)
    8f6c:	82 c1 04 f8 	lwz     r22,1272(r1)
    8f70:	82 e1 04 fc 	lwz     r23,1276(r1)
    8f74:	83 01 05 00 	lwz     r24,1280(r1)
    8f78:	83 21 05 04 	lwz     r25,1284(r1)
    8f7c:	83 41 05 08 	lwz     r26,1288(r1)
    8f80:	83 61 05 0c 	lwz     r27,1292(r1)
    8f84:	83 81 05 10 	lwz     r28,1296(r1)
    8f88:	83 a1 05 14 	lwz     r29,1300(r1)
    8f8c:	83 c1 05 18 	lwz     r30,1304(r1)
    8f90:	83 e1 05 1c 	lwz     r31,1308(r1)
    8f94:	38 21 05 20 	addi    r1,r1,1312
    8f98:	4e 80 00 20 	blr
    8f9c:	80 e1 04 ac 	lwz     r7,1196(r1)
    8fa0:	7e 56 38 51 	subf.   r18,r22,r7
    8fa4:	40 a1 f9 38 	ble-    88dc <_vfiprintf_r+0x304>
    8fa8:	2f 92 00 10 	cmpwi   cr7,r18,16
    8fac:	82 7e 80 14 	lwz     r19,-32748(r30)
    8fb0:	38 c0 00 10 	li      r6,16
    8fb4:	41 bd 00 18 	bgt+    cr7,8fcc <_vfiprintf_r+0x9f4>
    8fb8:	48 00 00 6c 	b       9024 <_vfiprintf_r+0xa4c>
    8fbc:	3a 52 ff f0 	addi    r18,r18,-16
    8fc0:	39 08 00 08 	addi    r8,r8,8
    8fc4:	2f 92 00 10 	cmpwi   cr7,r18,16
    8fc8:	40 9d 00 5c 	ble-    cr7,9024 <_vfiprintf_r+0xa4c>
    8fcc:	39 29 00 01 	addi    r9,r9,1
    8fd0:	39 4a 00 10 	addi    r10,r10,16
    8fd4:	2f 89 00 07 	cmpwi   cr7,r9,7
    8fd8:	92 68 00 00 	stw     r19,0(r8)
    8fdc:	90 c8 00 04 	stw     r6,4(r8)
    8fe0:	91 41 04 a0 	stw     r10,1184(r1)
    8fe4:	91 21 04 9c 	stw     r9,1180(r1)
    8fe8:	40 9d ff d4 	ble+    cr7,8fbc <_vfiprintf_r+0x9e4>
    8fec:	7f 03 c3 78 	mr      r3,r24
    8ff0:	7f 84 e3 78 	mr      r4,r28
    8ff4:	7f 65 db 78 	mr      r5,r27
    8ff8:	90 c1 04 c4 	stw     r6,1220(r1)
    8ffc:	4b ff f4 a1 	bl      849c <__sprint_r>
    9000:	80 c1 04 c4 	lwz     r6,1220(r1)
    9004:	2f 83 00 00 	cmpwi   cr7,r3,0
    9008:	40 be ff 18 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    900c:	3a 52 ff f0 	addi    r18,r18,-16
    9010:	81 41 04 a0 	lwz     r10,1184(r1)
    9014:	2f 92 00 10 	cmpwi   cr7,r18,16
    9018:	81 21 04 9c 	lwz     r9,1180(r1)
    901c:	7f 48 d3 78 	mr      r8,r26
    9020:	41 9d ff ac 	bgt+    cr7,8fcc <_vfiprintf_r+0x9f4>
    9024:	39 29 00 01 	addi    r9,r9,1
    9028:	7d 4a 92 14 	add     r10,r10,r18
    902c:	2f 89 00 07 	cmpwi   cr7,r9,7
    9030:	92 68 00 00 	stw     r19,0(r8)
    9034:	92 48 00 04 	stw     r18,4(r8)
    9038:	91 41 04 a0 	stw     r10,1184(r1)
    903c:	91 21 04 9c 	stw     r9,1180(r1)
    9040:	41 9d 06 24 	bgt-    cr7,9664 <_vfiprintf_r+0x108c>
    9044:	39 08 00 08 	addi    r8,r8,8
    9048:	4b ff f8 94 	b       88dc <_vfiprintf_r+0x304>
    904c:	7f 03 c3 78 	mr      r3,r24
    9050:	7f 84 e3 78 	mr      r4,r28
    9054:	7f 65 db 78 	mr      r5,r27
    9058:	4b ff f4 45 	bl      849c <__sprint_r>
    905c:	2f 83 00 00 	cmpwi   cr7,r3,0
    9060:	40 be fe c0 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    9064:	81 41 04 a0 	lwz     r10,1184(r1)
    9068:	7f 48 d3 78 	mr      r8,r26
    906c:	4b ff f9 38 	b       89a4 <_vfiprintf_r+0x3cc>
    9070:	7f 03 c3 78 	mr      r3,r24
    9074:	7f 84 e3 78 	mr      r4,r28
    9078:	7f 65 db 78 	mr      r5,r27
    907c:	4b ff f4 21 	bl      849c <__sprint_r>
    9080:	2f 83 00 00 	cmpwi   cr7,r3,0
    9084:	41 9e f9 f0 	beq+    cr7,8a74 <_vfiprintf_r+0x49c>
    9088:	4b ff fe 98 	b       8f20 <_vfiprintf_r+0x948>
    908c:	7f 03 c3 78 	mr      r3,r24
    9090:	7f 84 e3 78 	mr      r4,r28
    9094:	4b ff a9 69 	bl      39fc <__swsetup_r>
    9098:	2f 83 00 00 	cmpwi   cr7,r3,0
    909c:	40 be fe 94 	bne-    cr7,8f30 <_vfiprintf_r+0x958>
    90a0:	a9 3c 00 0c 	lha     r9,12(r28)
    90a4:	71 2a 00 1a 	andi.   r10,r9,26
    90a8:	2f 8a 00 0a 	cmpwi   cr7,r10,10
    90ac:	40 9e f6 00 	bne+    cr7,86ac <_vfiprintf_r+0xd4>
    90b0:	a1 5c 00 0e 	lhz     r10,14(r28)
    90b4:	7d 48 07 34 	extsh   r8,r10
    90b8:	2f 88 00 00 	cmpwi   cr7,r8,0
    90bc:	41 9c f5 f0 	blt+    cr7,86ac <_vfiprintf_r+0xd4>
    90c0:	83 fc 00 64 	lwz     r31,100(r28)
    90c4:	55 29 07 fa 	rlwinm  r9,r9,0,31,29
    90c8:	80 1c 00 1c 	lwz     r0,28(r28)
    90cc:	38 e0 04 00 	li      r7,1024
    90d0:	81 7c 00 24 	lwz     r11,36(r28)
    90d4:	39 01 00 08 	addi    r8,r1,8
    90d8:	b1 21 04 14 	sth     r9,1044(r1)
    90dc:	7f 03 c3 78 	mr      r3,r24
    90e0:	39 20 00 00 	li      r9,0
    90e4:	38 81 04 08 	addi    r4,r1,1032
    90e8:	7f a5 eb 78 	mr      r5,r29
    90ec:	7e 26 8b 78 	mr      r6,r17
    90f0:	90 e1 04 10 	stw     r7,1040(r1)
    90f4:	90 e1 04 1c 	stw     r7,1052(r1)
    90f8:	93 e1 04 6c 	stw     r31,1132(r1)
    90fc:	b1 41 04 16 	sth     r10,1046(r1)
    9100:	90 01 04 24 	stw     r0,1060(r1)
    9104:	91 61 04 2c 	stw     r11,1068(r1)
    9108:	91 01 04 08 	stw     r8,1032(r1)
    910c:	91 01 04 18 	stw     r8,1048(r1)
    9110:	91 21 04 20 	stw     r9,1056(r1)
    9114:	4b ff f4 c5 	bl      85d8 <_vfiprintf_r>
    9118:	7c 67 1b 79 	mr.     r7,r3
    911c:	90 e1 04 b0 	stw     r7,1200(r1)
    9120:	41 80 00 18 	blt-    9138 <_vfiprintf_r+0xb60>
    9124:	7f 03 c3 78 	mr      r3,r24
    9128:	38 81 04 08 	addi    r4,r1,1032
    912c:	4b ff c2 fd 	bl      5428 <_fflush_r>
    9130:	2f 83 00 00 	cmpwi   cr7,r3,0
    9134:	40 9e 08 10 	bne-    cr7,9944 <_vfiprintf_r+0x136c>
    9138:	a1 21 04 14 	lhz     r9,1044(r1)
    913c:	55 29 06 72 	rlwinm  r9,r9,0,25,25
    9140:	7d 2a 07 35 	extsh.  r10,r9
    9144:	41 a2 fd f4 	beq-    8f38 <_vfiprintf_r+0x960>
    9148:	a1 3c 00 0c 	lhz     r9,12(r28)
    914c:	61 29 00 40 	ori     r9,r9,64
    9150:	b1 3c 00 0c 	sth     r9,12(r28)
    9154:	4b ff fd e4 	b       8f38 <_vfiprintf_r+0x960>
    9158:	7f 03 c3 78 	mr      r3,r24
    915c:	7f 84 e3 78 	mr      r4,r28
    9160:	7f 65 db 78 	mr      r5,r27
    9164:	4b ff f3 39 	bl      849c <__sprint_r>
    9168:	2f 83 00 00 	cmpwi   cr7,r3,0
    916c:	40 be fd b4 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    9170:	7f 48 d3 78 	mr      r8,r26
    9174:	4b ff f5 e0 	b       8754 <_vfiprintf_r+0x17c>
    9178:	7f 03 c3 78 	mr      r3,r24
    917c:	7f 84 e3 78 	mr      r4,r28
    9180:	7f 65 db 78 	mr      r5,r27
    9184:	4b ff f3 19 	bl      849c <__sprint_r>
    9188:	2f 83 00 00 	cmpwi   cr7,r3,0
    918c:	40 be fd 94 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    9190:	81 41 04 a0 	lwz     r10,1184(r1)
    9194:	7f 48 d3 78 	mr      r8,r26
    9198:	81 21 04 9c 	lwz     r9,1180(r1)
    919c:	4b ff f7 e4 	b       8980 <_vfiprintf_r+0x3a8>
    91a0:	7f 03 c3 78 	mr      r3,r24
    91a4:	7f 84 e3 78 	mr      r4,r28
    91a8:	7f 65 db 78 	mr      r5,r27
    91ac:	4b ff f2 f1 	bl      849c <__sprint_r>
    91b0:	2f 83 00 00 	cmpwi   cr7,r3,0
    91b4:	40 be fd 6c 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    91b8:	81 41 04 a0 	lwz     r10,1184(r1)
    91bc:	7f 48 d3 78 	mr      r8,r26
    91c0:	81 21 04 9c 	lwz     r9,1180(r1)
    91c4:	4b ff f6 dc 	b       88a0 <_vfiprintf_r+0x2c8>
    91c8:	7f 03 c3 78 	mr      r3,r24
    91cc:	7f 84 e3 78 	mr      r4,r28
    91d0:	7f 65 db 78 	mr      r5,r27
    91d4:	4b ff f2 c9 	bl      849c <__sprint_r>
    91d8:	2f 83 00 00 	cmpwi   cr7,r3,0
    91dc:	40 be fd 44 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    91e0:	81 41 04 a0 	lwz     r10,1184(r1)
    91e4:	7f 48 d3 78 	mr      r8,r26
    91e8:	81 21 04 9c 	lwz     r9,1180(r1)
    91ec:	4b ff f6 e4 	b       88d0 <_vfiprintf_r+0x2f8>
    91f0:	4b ff c4 b9 	bl      56a8 <__sinit>
    91f4:	4b ff f4 70 	b       8664 <_vfiprintf_r+0x8c>
    91f8:	73 29 00 10 	andi.   r9,r25,16
    91fc:	41 82 01 70 	beq-    936c <_vfiprintf_r+0xd94>
    9200:	89 31 00 00 	lbz     r9,0(r17)
    9204:	2b 89 00 08 	cmplwi  cr7,r9,8
    9208:	40 9c 05 48 	bge-    cr7,9750 <_vfiprintf_r+0x1178>
    920c:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    9210:	81 51 00 08 	lwz     r10,8(r17)
    9214:	39 29 00 01 	addi    r9,r9,1
    9218:	99 31 00 00 	stb     r9,0(r17)
    921c:	7d 4a 3a 14 	add     r10,r10,r7
    9220:	81 ea 00 00 	lwz     r15,0(r10)
    9224:	39 c0 00 00 	li      r14,0
    9228:	39 40 00 01 	li      r10,1
    922c:	39 20 00 00 	li      r9,0
    9230:	3a 60 00 00 	li      r19,0
    9234:	99 21 04 a6 	stb     r9,1190(r1)
    9238:	2f 90 00 00 	cmpwi   cr7,r16,0
    923c:	41 9c 00 08 	blt-    cr7,9244 <_vfiprintf_r+0xc6c>
    9240:	57 39 06 6e 	rlwinm  r25,r25,0,25,23
    9244:	7d c9 7b 79 	or.     r9,r14,r15
    9248:	40 82 02 d8 	bne-    9520 <_vfiprintf_r+0xf48>
    924c:	40 9e 02 d4 	bne-    cr7,9520 <_vfiprintf_r+0xf48>
    9250:	2f 8a 00 00 	cmpwi   cr7,r10,0
    9254:	40 9e 03 8c 	bne-    cr7,95e0 <_vfiprintf_r+0x1008>
    9258:	73 29 00 01 	andi.   r9,r25,1
    925c:	41 82 03 84 	beq-    95e0 <_vfiprintf_r+0x1008>
    9260:	39 20 00 30 	li      r9,48
    9264:	82 a1 04 c0 	lwz     r21,1216(r1)
    9268:	99 21 04 97 	stb     r9,1175(r1)
    926c:	3a e1 04 97 	addi    r23,r1,1175
    9270:	92 01 04 b4 	stw     r16,1204(r1)
    9274:	80 e1 04 b4 	lwz     r7,1204(r1)
    9278:	7e b6 ab 78 	mr      r22,r21
    927c:	7f 95 38 00 	cmpw    cr7,r21,r7
    9280:	40 9c 00 08 	bge-    cr7,9288 <_vfiprintf_r+0xcb0>
    9284:	7c f6 3b 78 	mr      r22,r7
    9288:	2f 93 00 00 	cmpwi   cr7,r19,0
    928c:	41 be f5 40 	beq-    cr7,87cc <_vfiprintf_r+0x1f4>
    9290:	3a d6 00 01 	addi    r22,r22,1
    9294:	4b ff f5 38 	b       87cc <_vfiprintf_r+0x1f4>
    9298:	7f 03 c3 78 	mr      r3,r24
    929c:	7f 84 e3 78 	mr      r4,r28
    92a0:	7f 65 db 78 	mr      r5,r27
    92a4:	4b ff f1 f9 	bl      849c <__sprint_r>
    92a8:	2f 83 00 00 	cmpwi   cr7,r3,0
    92ac:	40 be fc 74 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    92b0:	81 41 04 a0 	lwz     r10,1184(r1)
    92b4:	7f 48 d3 78 	mr      r8,r26
    92b8:	81 21 04 9c 	lwz     r9,1180(r1)
    92bc:	4b ff fc 0c 	b       8ec8 <_vfiprintf_r+0x8f0>
    92c0:	73 2a 00 10 	andi.   r10,r25,16
    92c4:	41 82 01 30 	beq-    93f4 <_vfiprintf_r+0xe1c>
    92c8:	89 31 00 00 	lbz     r9,0(r17)
    92cc:	2b 89 00 08 	cmplwi  cr7,r9,8
    92d0:	40 9c 03 d0 	bge-    cr7,96a0 <_vfiprintf_r+0x10c8>
    92d4:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    92d8:	81 51 00 08 	lwz     r10,8(r17)
    92dc:	39 29 00 01 	addi    r9,r9,1
    92e0:	99 31 00 00 	stb     r9,0(r17)
    92e4:	7d 4a 3a 14 	add     r10,r10,r7
    92e8:	81 ea 00 00 	lwz     r15,0(r10)
    92ec:	39 c0 00 00 	li      r14,0
    92f0:	39 40 00 00 	li      r10,0
    92f4:	4b ff ff 38 	b       922c <_vfiprintf_r+0xc54>
    92f8:	73 2a 00 10 	andi.   r10,r25,16
    92fc:	41 82 00 c0 	beq-    93bc <_vfiprintf_r+0xde4>
    9300:	89 31 00 00 	lbz     r9,0(r17)
    9304:	2b 89 00 08 	cmplwi  cr7,r9,8
    9308:	40 9c 03 cc 	bge-    cr7,96d4 <_vfiprintf_r+0x10fc>
    930c:	55 27 10 3a 	rlwinm  r7,r9,2,0,29
    9310:	81 51 00 08 	lwz     r10,8(r17)
    9314:	39 29 00 01 	addi    r9,r9,1
    9318:	99 31 00 00 	stb     r9,0(r17)
    931c:	7d 4a 3a 14 	add     r10,r10,r7
    9320:	81 ea 00 00 	lwz     r15,0(r10)
    9324:	7d ee fe 70 	srawi   r14,r15,31
    9328:	2f 8e 00 00 	cmpwi   cr7,r14,0
    932c:	41 bc f8 54 	blt-    cr7,8b80 <_vfiprintf_r+0x5a8>
    9330:	8a 61 04 a6 	lbz     r19,1190(r1)
    9334:	39 40 00 01 	li      r10,1
    9338:	4b ff ff 00 	b       9238 <_vfiprintf_r+0xc60>
    933c:	7f 03 c3 78 	mr      r3,r24
    9340:	7f 84 e3 78 	mr      r4,r28
    9344:	7f 65 db 78 	mr      r5,r27
    9348:	4b ff f1 55 	bl      849c <__sprint_r>
    934c:	2f 83 00 00 	cmpwi   cr7,r3,0
    9350:	40 be fb d0 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    9354:	81 41 04 a0 	lwz     r10,1184(r1)
    9358:	4b ff f6 f8 	b       8a50 <_vfiprintf_r+0x478>
    935c:	81 51 00 04 	lwz     r10,4(r17)
    9360:	39 2a 00 04 	addi    r9,r10,4
    9364:	91 31 00 04 	stw     r9,4(r17)
    9368:	4b ff fa 88 	b       8df0 <_vfiprintf_r+0x818>
    936c:	73 2a 00 40 	andi.   r10,r25,64
    9370:	89 51 00 00 	lbz     r10,0(r17)
    9374:	2b 8a 00 08 	cmplwi  cr7,r10,8
    9378:	41 82 03 6c 	beq-    96e4 <_vfiprintf_r+0x110c>
    937c:	40 9c 04 f0 	bge-    cr7,986c <_vfiprintf_r+0x1294>
    9380:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    9384:	81 31 00 08 	lwz     r9,8(r17)
    9388:	39 4a 00 01 	addi    r10,r10,1
    938c:	99 51 00 00 	stb     r10,0(r17)
    9390:	7d 29 3a 14 	add     r9,r9,r7
    9394:	a1 e9 00 02 	lhz     r15,2(r9)
    9398:	39 40 00 01 	li      r10,1
    939c:	39 c0 00 00 	li      r14,0
    93a0:	4b ff fe 8c 	b       922c <_vfiprintf_r+0xc54>
    93a4:	81 31 00 04 	lwz     r9,4(r17)
    93a8:	39 29 00 07 	addi    r9,r9,7
    93ac:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    93b0:	39 2a 00 08 	addi    r9,r10,8
    93b4:	91 31 00 04 	stw     r9,4(r17)
    93b8:	4b ff f7 20 	b       8ad8 <_vfiprintf_r+0x500>
    93bc:	73 27 00 40 	andi.   r7,r25,64
    93c0:	89 51 00 00 	lbz     r10,0(r17)
    93c4:	2b 8a 00 08 	cmplwi  cr7,r10,8
    93c8:	41 82 03 6c 	beq-    9734 <_vfiprintf_r+0x115c>
    93cc:	40 9c 04 90 	bge-    cr7,985c <_vfiprintf_r+0x1284>
    93d0:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    93d4:	81 31 00 08 	lwz     r9,8(r17)
    93d8:	39 4a 00 01 	addi    r10,r10,1
    93dc:	99 51 00 00 	stb     r10,0(r17)
    93e0:	7d 29 3a 14 	add     r9,r9,r7
    93e4:	a9 29 00 02 	lha     r9,2(r9)
    93e8:	7d 2f 4b 78 	mr      r15,r9
    93ec:	7d 2e fe 70 	srawi   r14,r9,31
    93f0:	4b ff ff 38 	b       9328 <_vfiprintf_r+0xd50>
    93f4:	73 27 00 40 	andi.   r7,r25,64
    93f8:	89 51 00 00 	lbz     r10,0(r17)
    93fc:	2b 8a 00 08 	cmplwi  cr7,r10,8
    9400:	41 82 03 04 	beq-    9704 <_vfiprintf_r+0x112c>
    9404:	40 9c 04 48 	bge-    cr7,984c <_vfiprintf_r+0x1274>
    9408:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    940c:	81 31 00 08 	lwz     r9,8(r17)
    9410:	39 4a 00 01 	addi    r10,r10,1
    9414:	99 51 00 00 	stb     r10,0(r17)
    9418:	7d 29 3a 14 	add     r9,r9,r7
    941c:	a1 e9 00 02 	lhz     r15,2(r9)
    9420:	39 40 00 00 	li      r10,0
    9424:	39 c0 00 00 	li      r14,0
    9428:	4b ff fe 04 	b       922c <_vfiprintf_r+0xc54>
    942c:	73 27 00 40 	andi.   r7,r25,64
    9430:	88 f1 00 00 	lbz     r7,0(r17)
    9434:	2b 87 00 08 	cmplwi  cr7,r7,8
    9438:	41 82 02 78 	beq-    96b0 <_vfiprintf_r+0x10d8>
    943c:	40 9c 04 00 	bge-    cr7,983c <_vfiprintf_r+0x1264>
    9440:	54 e6 10 3a 	rlwinm  r6,r7,2,0,29
    9444:	81 51 00 08 	lwz     r10,8(r17)
    9448:	38 e7 00 01 	addi    r7,r7,1
    944c:	98 f1 00 00 	stb     r7,0(r17)
    9450:	7d 4a 32 14 	add     r10,r10,r6
    9454:	a1 ea 00 02 	lhz     r15,2(r10)
    9458:	39 c0 00 00 	li      r14,0
    945c:	4b ff f9 28 	b       8d84 <_vfiprintf_r+0x7ac>
    9460:	81 51 00 04 	lwz     r10,4(r17)
    9464:	39 2a 00 04 	addi    r9,r10,4
    9468:	91 31 00 04 	stw     r9,4(r17)
    946c:	4b ff f7 ec 	b       8c58 <_vfiprintf_r+0x680>
    9470:	73 29 00 10 	andi.   r9,r25,16
    9474:	89 51 00 00 	lbz     r10,0(r17)
    9478:	2b 8a 00 08 	cmplwi  cr7,r10,8
    947c:	41 82 02 e4 	beq-    9760 <_vfiprintf_r+0x1188>
    9480:	40 9c 03 ac 	bge-    cr7,982c <_vfiprintf_r+0x1254>
    9484:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    9488:	81 31 00 08 	lwz     r9,8(r17)
    948c:	39 4a 00 01 	addi    r10,r10,1
    9490:	99 51 00 00 	stb     r10,0(r17)
    9494:	7d 29 3a 14 	add     r9,r9,r7
    9498:	81 29 00 00 	lwz     r9,0(r9)
    949c:	81 41 04 b0 	lwz     r10,1200(r1)
    94a0:	91 49 00 00 	stw     r10,0(r9)
    94a4:	4b ff f2 48 	b       86ec <_vfiprintf_r+0x114>
    94a8:	81 31 00 04 	lwz     r9,4(r17)
    94ac:	39 29 00 07 	addi    r9,r9,7
    94b0:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    94b4:	39 2a 00 08 	addi    r9,r10,8
    94b8:	91 31 00 04 	stw     r9,4(r17)
    94bc:	4b ff f6 b4 	b       8b70 <_vfiprintf_r+0x598>
    94c0:	81 31 00 04 	lwz     r9,4(r17)
    94c4:	39 29 00 07 	addi    r9,r9,7
    94c8:	55 2a 00 38 	rlwinm  r10,r9,0,0,28
    94cc:	39 2a 00 08 	addi    r9,r10,8
    94d0:	91 31 00 04 	stw     r9,4(r17)
    94d4:	4b ff f6 50 	b       8b24 <_vfiprintf_r+0x54c>
    94d8:	81 51 00 04 	lwz     r10,4(r17)
    94dc:	39 4a 00 07 	addi    r10,r10,7
    94e0:	55 47 00 38 	rlwinm  r7,r10,0,0,28
    94e4:	39 47 00 08 	addi    r10,r7,8
    94e8:	91 51 00 04 	stw     r10,4(r17)
    94ec:	4b ff f7 38 	b       8c24 <_vfiprintf_r+0x64c>
    94f0:	81 51 00 04 	lwz     r10,4(r17)
    94f4:	39 2a 00 04 	addi    r9,r10,4
    94f8:	91 31 00 04 	stw     r9,4(r17)
    94fc:	4b ff f6 c0 	b       8bbc <_vfiprintf_r+0x5e4>
    9500:	81 51 00 04 	lwz     r10,4(r17)
    9504:	39 2a 00 04 	addi    r9,r10,4
    9508:	91 31 00 04 	stw     r9,4(r17)
    950c:	4b ff f7 cc 	b       8cd8 <_vfiprintf_r+0x700>
    9510:	3b bd 00 01 	addi    r29,r29,1
    9514:	63 39 00 20 	ori     r25,r25,32
    9518:	89 2a 00 01 	lbz     r9,1(r10)
    951c:	4b ff f2 78 	b       8794 <_vfiprintf_r+0x1bc>
    9520:	2f 8a 00 01 	cmpwi   cr7,r10,1
    9524:	41 9e 00 c8 	beq-    cr7,95ec <_vfiprintf_r+0x1014>
    9528:	2f 8a 00 02 	cmpwi   cr7,r10,2
    952c:	7f 77 db 78 	mr      r23,r27
    9530:	41 9e 00 54 	beq-    cr7,9584 <_vfiprintf_r+0xfac>
    9534:	55 c7 e8 04 	rlwinm  r7,r14,29,0,2
    9538:	55 ea e8 fe 	rlwinm  r10,r15,29,3,31
    953c:	55 c6 e8 fe 	rlwinm  r6,r14,29,3,31
    9540:	55 e9 07 7e 	clrlwi  r9,r15,29
    9544:	7c ef 53 78 	or      r15,r7,r10
    9548:	39 29 00 30 	addi    r9,r9,48
    954c:	7c ca 7b 79 	or.     r10,r6,r15
    9550:	7c ce 33 78 	mr      r14,r6
    9554:	9d 37 ff ff 	stbu    r9,-1(r23)
    9558:	40 82 ff dc 	bne+    9534 <_vfiprintf_r+0xf5c>
    955c:	73 27 00 01 	andi.   r7,r25,1
    9560:	7e ea bb 78 	mr      r10,r23
    9564:	41 82 00 18 	beq-    957c <_vfiprintf_r+0xfa4>
    9568:	2f 89 00 30 	cmpwi   cr7,r9,48
    956c:	41 9e 00 10 	beq-    cr7,957c <_vfiprintf_r+0xfa4>
    9570:	39 20 00 30 	li      r9,48
    9574:	3a f7 ff ff 	addi    r23,r23,-1
    9578:	99 2a ff ff 	stb     r9,-1(r10)
    957c:	7e b7 d8 50 	subf    r21,r23,r27
    9580:	4b ff fc f0 	b       9270 <_vfiprintf_r+0xc98>
    9584:	55 c7 e0 06 	rlwinm  r7,r14,28,0,3
    9588:	55 ea e1 3e 	rlwinm  r10,r15,28,4,31
    958c:	55 e9 07 3e 	clrlwi  r9,r15,28
    9590:	7c ef 53 78 	or      r15,r7,r10
    9594:	81 41 04 bc 	lwz     r10,1212(r1)
    9598:	55 c6 e1 3e 	rlwinm  r6,r14,28,4,31
    959c:	7c c7 7b 79 	or.     r7,r6,r15
    95a0:	7c ce 33 78 	mr      r14,r6
    95a4:	7d 2a 48 ae 	lbzx    r9,r10,r9
    95a8:	9d 37 ff ff 	stbu    r9,-1(r23)
    95ac:	41 a2 ff d0 	beq-    957c <_vfiprintf_r+0xfa4>
    95b0:	55 c7 e0 06 	rlwinm  r7,r14,28,0,3
    95b4:	55 ea e1 3e 	rlwinm  r10,r15,28,4,31
    95b8:	55 e9 07 3e 	clrlwi  r9,r15,28
    95bc:	7c ef 53 78 	or      r15,r7,r10
    95c0:	81 41 04 bc 	lwz     r10,1212(r1)
    95c4:	55 c6 e1 3e 	rlwinm  r6,r14,28,4,31
    95c8:	7c c7 7b 79 	or.     r7,r6,r15
    95cc:	7c ce 33 78 	mr      r14,r6
    95d0:	7d 2a 48 ae 	lbzx    r9,r10,r9
    95d4:	9d 37 ff ff 	stbu    r9,-1(r23)
    95d8:	40 82 ff ac 	bne+    9584 <_vfiprintf_r+0xfac>
    95dc:	4b ff ff a0 	b       957c <_vfiprintf_r+0xfa4>
    95e0:	3a a0 00 00 	li      r21,0
    95e4:	7f 77 db 78 	mr      r23,r27
    95e8:	4b ff fc 88 	b       9270 <_vfiprintf_r+0xc98>
    95ec:	2f 8e 00 00 	cmpwi   cr7,r14,0
    95f0:	40 9e 00 20 	bne-    cr7,9610 <_vfiprintf_r+0x1038>
    95f4:	2b 8f 00 09 	cmplwi  cr7,r15,9
    95f8:	41 9d 00 18 	bgt-    cr7,9610 <_vfiprintf_r+0x1038>
    95fc:	39 2f 00 30 	addi    r9,r15,48
    9600:	82 a1 04 c0 	lwz     r21,1216(r1)
    9604:	99 21 04 97 	stb     r9,1175(r1)
    9608:	3a e1 04 97 	addi    r23,r1,1175
    960c:	4b ff fc 64 	b       9270 <_vfiprintf_r+0xc98>
    9610:	7f 77 db 78 	mr      r23,r27
    9614:	7d c3 73 78 	mr      r3,r14
    9618:	7d e4 7b 78 	mr      r4,r15
    961c:	38 a0 00 00 	li      r5,0
    9620:	38 c0 00 0a 	li      r6,10
    9624:	91 01 04 c4 	stw     r8,1220(r1)
    9628:	48 00 24 61 	bl      ba88 <__umoddi3>
    962c:	38 84 00 30 	addi    r4,r4,48
    9630:	7d c3 73 78 	mr      r3,r14
    9634:	9c 97 ff ff 	stbu    r4,-1(r23)
    9638:	38 a0 00 00 	li      r5,0
    963c:	7d e4 7b 78 	mr      r4,r15
    9640:	38 c0 00 0a 	li      r6,10
    9644:	48 00 20 41 	bl      b684 <__udivdi3>
    9648:	81 01 04 c4 	lwz     r8,1220(r1)
    964c:	7c 6e 1b 78 	mr      r14,r3
    9650:	7c 8f 23 78 	mr      r15,r4
    9654:	7d c9 23 79 	or.     r9,r14,r4
    9658:	40 82 ff bc 	bne+    9614 <_vfiprintf_r+0x103c>
    965c:	7e b7 d8 50 	subf    r21,r23,r27
    9660:	4b ff fc 10 	b       9270 <_vfiprintf_r+0xc98>
    9664:	7f 03 c3 78 	mr      r3,r24
    9668:	7f 84 e3 78 	mr      r4,r28
    966c:	7f 65 db 78 	mr      r5,r27
    9670:	4b ff ee 2d 	bl      849c <__sprint_r>
    9674:	2f 83 00 00 	cmpwi   cr7,r3,0
    9678:	40 be f8 a8 	bne-    cr7,8f20 <_vfiprintf_r+0x948>
    967c:	81 41 04 a0 	lwz     r10,1184(r1)
    9680:	7f 48 d3 78 	mr      r8,r26
    9684:	81 21 04 9c 	lwz     r9,1180(r1)
    9688:	4b ff f2 54 	b       88dc <_vfiprintf_r+0x304>
    968c:	82 7e 80 14 	lwz     r19,-32748(r30)
    9690:	4b ff f2 cc 	b       895c <_vfiprintf_r+0x384>
    9694:	39 20 00 00 	li      r9,0
    9698:	91 21 04 b4 	stw     r9,1204(r1)
    969c:	4b ff fb d8 	b       9274 <_vfiprintf_r+0xc9c>
    96a0:	81 51 00 04 	lwz     r10,4(r17)
    96a4:	39 2a 00 04 	addi    r9,r10,4
    96a8:	91 31 00 04 	stw     r9,4(r17)
    96ac:	4b ff fc 3c 	b       92e8 <_vfiprintf_r+0xd10>
    96b0:	40 9c 01 6c 	bge-    cr7,981c <_vfiprintf_r+0x1244>
    96b4:	54 e6 10 3a 	rlwinm  r6,r7,2,0,29
    96b8:	81 51 00 08 	lwz     r10,8(r17)
    96bc:	38 e7 00 01 	addi    r7,r7,1
    96c0:	98 f1 00 00 	stb     r7,0(r17)
    96c4:	7d 4a 32 14 	add     r10,r10,r6
    96c8:	81 ea 00 00 	lwz     r15,0(r10)
    96cc:	39 c0 00 00 	li      r14,0
    96d0:	4b ff f6 b4 	b       8d84 <_vfiprintf_r+0x7ac>
    96d4:	81 51 00 04 	lwz     r10,4(r17)
    96d8:	39 2a 00 04 	addi    r9,r10,4
    96dc:	91 31 00 04 	stw     r9,4(r17)
    96e0:	4b ff fc 40 	b       9320 <_vfiprintf_r+0xd48>
    96e4:	41 9c 01 20 	blt-    cr7,9804 <_vfiprintf_r+0x122c>
    96e8:	81 31 00 04 	lwz     r9,4(r17)
    96ec:	39 49 00 04 	addi    r10,r9,4
    96f0:	91 51 00 04 	stw     r10,4(r17)
    96f4:	81 e9 00 00 	lwz     r15,0(r9)
    96f8:	39 40 00 01 	li      r10,1
    96fc:	39 c0 00 00 	li      r14,0
    9700:	4b ff fb 2c 	b       922c <_vfiprintf_r+0xc54>
    9704:	41 9c 00 d0 	blt-    cr7,97d4 <_vfiprintf_r+0x11fc>
    9708:	81 31 00 04 	lwz     r9,4(r17)
    970c:	39 49 00 04 	addi    r10,r9,4
    9710:	91 51 00 04 	stw     r10,4(r17)
    9714:	81 e9 00 00 	lwz     r15,0(r9)
    9718:	39 40 00 00 	li      r10,0
    971c:	39 c0 00 00 	li      r14,0
    9720:	4b ff fb 0c 	b       922c <_vfiprintf_r+0xc54>
    9724:	80 f1 00 04 	lwz     r7,4(r17)
    9728:	39 47 00 04 	addi    r10,r7,4
    972c:	91 51 00 04 	stw     r10,4(r17)
    9730:	4b ff f6 4c 	b       8d7c <_vfiprintf_r+0x7a4>
    9734:	41 9c 00 b8 	blt-    cr7,97ec <_vfiprintf_r+0x1214>
    9738:	81 31 00 04 	lwz     r9,4(r17)
    973c:	39 49 00 04 	addi    r10,r9,4
    9740:	91 51 00 04 	stw     r10,4(r17)
    9744:	81 e9 00 00 	lwz     r15,0(r9)
    9748:	7d ee fe 70 	srawi   r14,r15,31
    974c:	4b ff fb dc 	b       9328 <_vfiprintf_r+0xd50>
    9750:	81 51 00 04 	lwz     r10,4(r17)
    9754:	39 2a 00 04 	addi    r9,r10,4
    9758:	91 31 00 04 	stw     r9,4(r17)
    975c:	4b ff fa c4 	b       9220 <_vfiprintf_r+0xc48>
    9760:	73 27 00 40 	andi.   r7,r25,64
    9764:	41 82 00 48 	beq-    97ac <_vfiprintf_r+0x11d4>
    9768:	40 9c 01 8c 	bge-    cr7,98f4 <_vfiprintf_r+0x131c>
    976c:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    9770:	81 31 00 08 	lwz     r9,8(r17)
    9774:	39 4a 00 01 	addi    r10,r10,1
    9778:	99 51 00 00 	stb     r10,0(r17)
    977c:	7d 29 3a 14 	add     r9,r9,r7
    9780:	81 29 00 00 	lwz     r9,0(r9)
    9784:	81 41 04 b0 	lwz     r10,1200(r1)
    9788:	b1 49 00 00 	sth     r10,0(r9)
    978c:	4b ff ef 60 	b       86ec <_vfiprintf_r+0x114>
    9790:	81 51 00 04 	lwz     r10,4(r17)
    9794:	39 2a 00 04 	addi    r9,r10,4
    9798:	91 31 00 04 	stw     r9,4(r17)
    979c:	4b ff f5 90 	b       8d2c <_vfiprintf_r+0x754>
    97a0:	3a 00 ff ff 	li      r16,-1
    97a4:	7c fd 3b 78 	mr      r29,r7
    97a8:	4b ff ef f0 	b       8798 <_vfiprintf_r+0x1c0>
    97ac:	40 9c 01 38 	bge-    cr7,98e4 <_vfiprintf_r+0x130c>
    97b0:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    97b4:	81 31 00 08 	lwz     r9,8(r17)
    97b8:	39 4a 00 01 	addi    r10,r10,1
    97bc:	99 51 00 00 	stb     r10,0(r17)
    97c0:	7d 29 3a 14 	add     r9,r9,r7
    97c4:	81 29 00 00 	lwz     r9,0(r9)
    97c8:	80 e1 04 b0 	lwz     r7,1200(r1)
    97cc:	90 e9 00 00 	stw     r7,0(r9)
    97d0:	4b ff ef 1c 	b       86ec <_vfiprintf_r+0x114>
    97d4:	81 31 00 08 	lwz     r9,8(r17)
    97d8:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    97dc:	39 4a 00 01 	addi    r10,r10,1
    97e0:	7d 29 3a 14 	add     r9,r9,r7
    97e4:	99 51 00 00 	stb     r10,0(r17)
    97e8:	4b ff ff 2c 	b       9714 <_vfiprintf_r+0x113c>
    97ec:	81 31 00 08 	lwz     r9,8(r17)
    97f0:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    97f4:	39 4a 00 01 	addi    r10,r10,1
    97f8:	7d 29 3a 14 	add     r9,r9,r7
    97fc:	99 51 00 00 	stb     r10,0(r17)
    9800:	4b ff ff 44 	b       9744 <_vfiprintf_r+0x116c>
    9804:	81 31 00 08 	lwz     r9,8(r17)
    9808:	55 47 10 3a 	rlwinm  r7,r10,2,0,29
    980c:	39 4a 00 01 	addi    r10,r10,1
    9810:	7d 29 3a 14 	add     r9,r9,r7
    9814:	99 51 00 00 	stb     r10,0(r17)
    9818:	4b ff fe dc 	b       96f4 <_vfiprintf_r+0x111c>
    981c:	81 51 00 04 	lwz     r10,4(r17)
    9820:	38 ea 00 04 	addi    r7,r10,4
    9824:	90 f1 00 04 	stw     r7,4(r17)
    9828:	4b ff fe a0 	b       96c8 <_vfiprintf_r+0x10f0>
    982c:	81 31 00 04 	lwz     r9,4(r17)
    9830:	39 49 00 04 	addi    r10,r9,4
    9834:	91 51 00 04 	stw     r10,4(r17)
    9838:	4b ff fc 60 	b       9498 <_vfiprintf_r+0xec0>
    983c:	81 51 00 04 	lwz     r10,4(r17)
    9840:	38 ea 00 04 	addi    r7,r10,4
    9844:	90 f1 00 04 	stw     r7,4(r17)
    9848:	4b ff fc 0c 	b       9454 <_vfiprintf_r+0xe7c>
    984c:	81 31 00 04 	lwz     r9,4(r17)
    9850:	39 49 00 04 	addi    r10,r9,4
    9854:	91 51 00 04 	stw     r10,4(r17)
    9858:	4b ff fb c4 	b       941c <_vfiprintf_r+0xe44>
    985c:	81 31 00 04 	lwz     r9,4(r17)
    9860:	39 49 00 04 	addi    r10,r9,4
    9864:	91 51 00 04 	stw     r10,4(r17)
    9868:	4b ff fb 7c 	b       93e4 <_vfiprintf_r+0xe0c>
    986c:	81 31 00 04 	lwz     r9,4(r17)
    9870:	39 49 00 04 	addi    r10,r9,4
    9874:	91 51 00 04 	stw     r10,4(r17)
    9878:	4b ff fb 1c 	b       9394 <_vfiprintf_r+0xdbc>
    987c:	91 01 04 c4 	stw     r8,1220(r1)
    9880:	4b ff eb 61 	bl      83e0 <strlen>
    9884:	39 40 00 00 	li      r10,0
    9888:	7c 75 1b 78 	mr      r21,r3
    988c:	8a 61 04 a6 	lbz     r19,1190(r1)
    9890:	91 41 04 b4 	stw     r10,1204(r1)
    9894:	81 01 04 c4 	lwz     r8,1220(r1)
    9898:	4b ff f9 dc 	b       9274 <_vfiprintf_r+0xc9c>
    989c:	2b 90 00 06 	cmplwi  cr7,r16,6
    98a0:	7e 15 83 78 	mr      r21,r16
    98a4:	40 9d 00 08 	ble-    cr7,98ac <_vfiprintf_r+0x12d4>
    98a8:	3a a0 00 06 	li      r21,6
    98ac:	7e b6 a8 f8 	not     r22,r21
    98b0:	39 40 00 00 	li      r10,0
    98b4:	7e d6 fe 70 	srawi   r22,r22,31
    98b8:	91 41 04 b4 	stw     r10,1204(r1)
    98bc:	7e b6 b0 38 	and     r22,r21,r22
    98c0:	82 fe 80 08 	lwz     r23,-32760(r30)
    98c4:	4b ff ef 08 	b       87cc <_vfiprintf_r+0x1f4>
    98c8:	82 7e 80 10 	lwz     r19,-32752(r30)
    98cc:	4b ff f1 64 	b       8a30 <_vfiprintf_r+0x458>
    98d0:	39 40 00 00 	li      r10,0
    98d4:	8a 61 04 a6 	lbz     r19,1190(r1)
    98d8:	7e 15 83 78 	mr      r21,r16
    98dc:	91 41 04 b4 	stw     r10,1204(r1)
    98e0:	4b ff f9 94 	b       9274 <_vfiprintf_r+0xc9c>
    98e4:	81 31 00 04 	lwz     r9,4(r17)
    98e8:	39 49 00 04 	addi    r10,r9,4
    98ec:	91 51 00 04 	stw     r10,4(r17)
    98f0:	4b ff fe d4 	b       97c4 <_vfiprintf_r+0x11ec>
    98f4:	81 31 00 04 	lwz     r9,4(r17)
    98f8:	39 49 00 04 	addi    r10,r9,4
    98fc:	91 51 00 04 	stw     r10,4(r17)
    9900:	4b ff fe 80 	b       9780 <_vfiprintf_r+0x11a8>
    9904:	89 51 00 00 	lbz     r10,0(r17)
    9908:	2b 8a 00 08 	cmplwi  cr7,r10,8
    990c:	40 9c 00 44 	bge-    cr7,9950 <_vfiprintf_r+0x1378>
    9910:	55 44 10 3a 	rlwinm  r4,r10,2,0,29
    9914:	81 31 00 08 	lwz     r9,8(r17)
    9918:	39 4a 00 01 	addi    r10,r10,1
    991c:	99 51 00 00 	stb     r10,0(r17)
    9920:	7d 29 22 14 	add     r9,r9,r4
    9924:	82 09 00 00 	lwz     r16,0(r9)
    9928:	89 3d 00 01 	lbz     r9,1(r29)
    992c:	7c fd 3b 78 	mr      r29,r7
    9930:	2f 90 00 00 	cmpwi   cr7,r16,0
    9934:	40 9c ee 60 	bge+    cr7,8794 <_vfiprintf_r+0x1bc>
    9938:	3a 00 ff ff 	li      r16,-1
    993c:	7c fd 3b 78 	mr      r29,r7
    9940:	4b ff ee 54 	b       8794 <_vfiprintf_r+0x1bc>
    9944:	39 00 ff ff 	li      r8,-1
    9948:	91 01 04 b0 	stw     r8,1200(r1)
    994c:	4b ff f7 ec 	b       9138 <_vfiprintf_r+0xb60>
    9950:	81 31 00 04 	lwz     r9,4(r17)
    9954:	39 49 00 04 	addi    r10,r9,4
    9958:	91 51 00 04 	stw     r10,4(r17)
    995c:	4b ff ff c8 	b       9924 <_vfiprintf_r+0x134c>
    9960:	00 00 b4 80 	.long 0xb480

00009964 <vfiprintf>:
    9964:	94 21 ff f0 	stwu    r1,-16(r1)
    9968:	7c 08 02 a6 	mflr    r0
    996c:	42 9f 00 05 	bcl-    20,4*cr7+so,9970 <vfiprintf+0xc>
    9970:	7c 6a 1b 78 	mr      r10,r3
    9974:	93 c1 00 08 	stw     r30,8(r1)
    9978:	7f c8 02 a6 	mflr    r30
    997c:	90 01 00 14 	stw     r0,20(r1)
    9980:	7c 89 23 78 	mr      r9,r4
    9984:	7c a6 2b 78 	mr      r6,r5
    9988:	7d 44 53 78 	mr      r4,r10
    998c:	80 1e ff f0 	lwz     r0,-16(r30)
    9990:	7d 25 4b 78 	mr      r5,r9
    9994:	7f c0 f2 14 	add     r30,r0,r30
    9998:	80 01 00 14 	lwz     r0,20(r1)
    999c:	81 1e 80 18 	lwz     r8,-32744(r30)
    99a0:	7c 08 03 a6 	mtlr    r0
    99a4:	83 c1 00 08 	lwz     r30,8(r1)
    99a8:	80 68 00 00 	lwz     r3,0(r8)
    99ac:	38 21 00 10 	addi    r1,r1,16
    99b0:	4b ff ec 28 	b       85d8 <_vfiprintf_r>
    99b4:	00 00 b4 48 	.long 0xb448

000099b8 <_write_r>:
    99b8:	94 21 ff e0 	stwu    r1,-32(r1)
    99bc:	7c 08 02 a6 	mflr    r0
    99c0:	42 9f 00 05 	bcl-    20,4*cr7+so,99c4 <_write_r+0xc>
    99c4:	39 20 00 00 	li      r9,0
    99c8:	93 c1 00 18 	stw     r30,24(r1)
    99cc:	7f c8 02 a6 	mflr    r30
    99d0:	90 01 00 24 	stw     r0,36(r1)
    99d4:	93 e1 00 1c 	stw     r31,28(r1)
    99d8:	80 1e ff f0 	lwz     r0,-16(r30)
    99dc:	93 a1 00 14 	stw     r29,20(r1)
    99e0:	7c 7d 1b 78 	mr      r29,r3
    99e4:	7f c0 f2 14 	add     r30,r0,r30
    99e8:	7c 83 23 78 	mr      r3,r4
    99ec:	83 fe 80 00 	lwz     r31,-32768(r30)
    99f0:	7c a4 2b 78 	mr      r4,r5
    99f4:	7c c5 33 78 	mr      r5,r6
    99f8:	91 3f 00 00 	stw     r9,0(r31)
    99fc:	4b ff 7a 91 	bl      148c <write>
    9a00:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    9a04:	41 9e 00 20 	beq-    cr7,9a24 <_write_r+0x6c>
    9a08:	80 01 00 24 	lwz     r0,36(r1)
    9a0c:	83 a1 00 14 	lwz     r29,20(r1)
    9a10:	7c 08 03 a6 	mtlr    r0
    9a14:	83 c1 00 18 	lwz     r30,24(r1)
    9a18:	83 e1 00 1c 	lwz     r31,28(r1)
    9a1c:	38 21 00 20 	addi    r1,r1,32
    9a20:	4e 80 00 20 	blr
    9a24:	81 3f 00 00 	lwz     r9,0(r31)
    9a28:	2f 89 00 00 	cmpwi   cr7,r9,0
    9a2c:	41 be ff dc 	beq-    cr7,9a08 <_write_r+0x50>
    9a30:	80 01 00 24 	lwz     r0,36(r1)
    9a34:	91 3d 00 00 	stw     r9,0(r29)
    9a38:	7c 08 03 a6 	mtlr    r0
    9a3c:	83 a1 00 14 	lwz     r29,20(r1)
    9a40:	83 c1 00 18 	lwz     r30,24(r1)
    9a44:	83 e1 00 1c 	lwz     r31,28(r1)
    9a48:	38 21 00 20 	addi    r1,r1,32
    9a4c:	4e 80 00 20 	blr

00009a50 <_calloc_r>:
    9a50:	7c 85 21 d6 	mullw   r4,r5,r4
    9a54:	7c 08 02 a6 	mflr    r0
    9a58:	94 21 ff f0 	stwu    r1,-16(r1)
    9a5c:	93 e1 00 0c 	stw     r31,12(r1)
    9a60:	90 01 00 14 	stw     r0,20(r1)
    9a64:	4b ff c9 25 	bl      6388 <_malloc_r>
    9a68:	7c 7f 1b 79 	mr.     r31,r3
    9a6c:	41 82 00 34 	beq-    9aa0 <_calloc_r+0x50>
    9a70:	80 bf ff fc 	lwz     r5,-4(r31)
    9a74:	54 a5 00 3a 	rlwinm  r5,r5,0,0,29
    9a78:	38 a5 ff fc 	addi    r5,r5,-4
    9a7c:	2b 85 00 24 	cmplwi  cr7,r5,36
    9a80:	41 9d 00 64 	bgt-    cr7,9ae4 <_calloc_r+0x94>
    9a84:	2b 85 00 13 	cmplwi  cr7,r5,19
    9a88:	7f e9 fb 78 	mr      r9,r31
    9a8c:	41 9d 00 2c 	bgt-    cr7,9ab8 <_calloc_r+0x68>
    9a90:	39 40 00 00 	li      r10,0
    9a94:	91 49 00 00 	stw     r10,0(r9)
    9a98:	91 49 00 04 	stw     r10,4(r9)
    9a9c:	91 49 00 08 	stw     r10,8(r9)
    9aa0:	80 01 00 14 	lwz     r0,20(r1)
    9aa4:	7f e3 fb 78 	mr      r3,r31
    9aa8:	83 e1 00 0c 	lwz     r31,12(r1)
    9aac:	7c 08 03 a6 	mtlr    r0
    9ab0:	38 21 00 10 	addi    r1,r1,16
    9ab4:	4e 80 00 20 	blr
    9ab8:	2b 85 00 1b 	cmplwi  cr7,r5,27
    9abc:	39 20 00 00 	li      r9,0
    9ac0:	91 3f 00 00 	stw     r9,0(r31)
    9ac4:	91 3f 00 04 	stw     r9,4(r31)
    9ac8:	40 9d 00 3c 	ble-    cr7,9b04 <_calloc_r+0xb4>
    9acc:	2f 85 00 24 	cmpwi   cr7,r5,36
    9ad0:	91 3f 00 08 	stw     r9,8(r31)
    9ad4:	91 3f 00 0c 	stw     r9,12(r31)
    9ad8:	41 9e 00 34 	beq-    cr7,9b0c <_calloc_r+0xbc>
    9adc:	39 3f 00 10 	addi    r9,r31,16
    9ae0:	4b ff ff b0 	b       9a90 <_calloc_r+0x40>
    9ae4:	38 80 00 00 	li      r4,0
    9ae8:	4b ff 7b 19 	bl      1600 <memset>
    9aec:	80 01 00 14 	lwz     r0,20(r1)
    9af0:	7f e3 fb 78 	mr      r3,r31
    9af4:	83 e1 00 0c 	lwz     r31,12(r1)
    9af8:	7c 08 03 a6 	mtlr    r0
    9afc:	38 21 00 10 	addi    r1,r1,16
    9b00:	4e 80 00 20 	blr
    9b04:	39 3f 00 08 	addi    r9,r31,8
    9b08:	4b ff ff 88 	b       9a90 <_calloc_r+0x40>
    9b0c:	91 3f 00 10 	stw     r9,16(r31)
    9b10:	91 3f 00 14 	stw     r9,20(r31)
    9b14:	39 3f 00 18 	addi    r9,r31,24
    9b18:	4b ff ff 78 	b       9a90 <_calloc_r+0x40>
    9b1c:	00 00 b2 e4 	.long 0xb2e4

00009b20 <_close_r>:
    9b20:	94 21 ff e0 	stwu    r1,-32(r1)
    9b24:	7c 08 02 a6 	mflr    r0
    9b28:	42 9f 00 05 	bcl-    20,4*cr7+so,9b2c <_close_r+0xc>
    9b2c:	39 20 00 00 	li      r9,0
    9b30:	93 c1 00 18 	stw     r30,24(r1)
    9b34:	7f c8 02 a6 	mflr    r30
    9b38:	90 01 00 24 	stw     r0,36(r1)
    9b3c:	93 e1 00 1c 	stw     r31,28(r1)
    9b40:	80 1e ff f0 	lwz     r0,-16(r30)
    9b44:	93 a1 00 14 	stw     r29,20(r1)
    9b48:	7c 7d 1b 78 	mr      r29,r3
    9b4c:	7f c0 f2 14 	add     r30,r0,r30
    9b50:	7c 83 23 78 	mr      r3,r4
    9b54:	83 fe 80 00 	lwz     r31,-32768(r30)
    9b58:	91 3f 00 00 	stw     r9,0(r31)
    9b5c:	4b ff 79 71 	bl      14cc <close>
    9b60:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    9b64:	41 9e 00 20 	beq-    cr7,9b84 <_close_r+0x64>
    9b68:	80 01 00 24 	lwz     r0,36(r1)
    9b6c:	83 a1 00 14 	lwz     r29,20(r1)
    9b70:	7c 08 03 a6 	mtlr    r0
    9b74:	83 c1 00 18 	lwz     r30,24(r1)
    9b78:	83 e1 00 1c 	lwz     r31,28(r1)
    9b7c:	38 21 00 20 	addi    r1,r1,32
    9b80:	4e 80 00 20 	blr
    9b84:	81 3f 00 00 	lwz     r9,0(r31)
    9b88:	2f 89 00 00 	cmpwi   cr7,r9,0
    9b8c:	41 be ff dc 	beq-    cr7,9b68 <_close_r+0x48>
    9b90:	80 01 00 24 	lwz     r0,36(r1)
    9b94:	91 3d 00 00 	stw     r9,0(r29)
    9b98:	7c 08 03 a6 	mtlr    r0
    9b9c:	83 a1 00 14 	lwz     r29,20(r1)
    9ba0:	83 c1 00 18 	lwz     r30,24(r1)
    9ba4:	83 e1 00 1c 	lwz     r31,28(r1)
    9ba8:	38 21 00 20 	addi    r1,r1,32
    9bac:	4e 80 00 20 	blr

00009bb0 <_fclose_r>:
    9bb0:	94 21 ff e0 	stwu    r1,-32(r1)
    9bb4:	7c 08 02 a6 	mflr    r0
    9bb8:	93 e1 00 1c 	stw     r31,28(r1)
    9bbc:	7c 9f 23 79 	mr.     r31,r4
    9bc0:	90 01 00 24 	stw     r0,36(r1)
    9bc4:	93 81 00 10 	stw     r28,16(r1)
    9bc8:	93 a1 00 14 	stw     r29,20(r1)
    9bcc:	93 c1 00 18 	stw     r30,24(r1)
    9bd0:	41 82 00 28 	beq-    9bf8 <_fclose_r+0x48>
    9bd4:	2f 83 00 00 	cmpwi   cr7,r3,0
    9bd8:	7c 7d 1b 78 	mr      r29,r3
    9bdc:	41 9e 00 10 	beq-    cr7,9bec <_fclose_r+0x3c>
    9be0:	81 23 00 38 	lwz     r9,56(r3)
    9be4:	2f 89 00 00 	cmpwi   cr7,r9,0
    9be8:	41 9e 00 f4 	beq-    cr7,9cdc <_fclose_r+0x12c>
    9bec:	a9 3f 00 0c 	lha     r9,12(r31)
    9bf0:	2f 89 00 00 	cmpwi   cr7,r9,0
    9bf4:	40 9e 00 2c 	bne-    cr7,9c20 <_fclose_r+0x70>
    9bf8:	80 01 00 24 	lwz     r0,36(r1)
    9bfc:	3b 80 00 00 	li      r28,0
    9c00:	7f 83 e3 78 	mr      r3,r28
    9c04:	83 a1 00 14 	lwz     r29,20(r1)
    9c08:	7c 08 03 a6 	mtlr    r0
    9c0c:	83 81 00 10 	lwz     r28,16(r1)
    9c10:	83 c1 00 18 	lwz     r30,24(r1)
    9c14:	83 e1 00 1c 	lwz     r31,28(r1)
    9c18:	38 21 00 20 	addi    r1,r1,32
    9c1c:	4e 80 00 20 	blr
    9c20:	7f a3 eb 78 	mr      r3,r29
    9c24:	7f e4 fb 78 	mr      r4,r31
    9c28:	4b ff b8 01 	bl      5428 <_fflush_r>
    9c2c:	81 3f 00 2c 	lwz     r9,44(r31)
    9c30:	7c 7c 1b 78 	mr      r28,r3
    9c34:	2f 89 00 00 	cmpwi   cr7,r9,0
    9c38:	41 9e 00 1c 	beq-    cr7,9c54 <_fclose_r+0xa4>
    9c3c:	7f a3 eb 78 	mr      r3,r29
    9c40:	80 9f 00 1c 	lwz     r4,28(r31)
    9c44:	7d 29 03 a6 	mtctr   r9
    9c48:	4e 80 04 21 	bctrl
    9c4c:	2f 83 00 00 	cmpwi   cr7,r3,0
    9c50:	41 9c 00 94 	blt-    cr7,9ce4 <_fclose_r+0x134>
    9c54:	a1 3f 00 0c 	lhz     r9,12(r31)
    9c58:	55 29 06 30 	rlwinm  r9,r9,0,24,24
    9c5c:	7d 2a 07 35 	extsh.  r10,r9
    9c60:	40 82 00 8c 	bne-    9cec <_fclose_r+0x13c>
    9c64:	80 9f 00 30 	lwz     r4,48(r31)
    9c68:	2f 84 00 00 	cmpwi   cr7,r4,0
    9c6c:	41 9e 00 20 	beq-    cr7,9c8c <_fclose_r+0xdc>
    9c70:	39 3f 00 40 	addi    r9,r31,64
    9c74:	7f 84 48 00 	cmpw    cr7,r4,r9
    9c78:	41 9e 00 0c 	beq-    cr7,9c84 <_fclose_r+0xd4>
    9c7c:	7f a3 eb 78 	mr      r3,r29
    9c80:	4b ff be 0d 	bl      5a8c <_free_r>
    9c84:	39 20 00 00 	li      r9,0
    9c88:	91 3f 00 30 	stw     r9,48(r31)
    9c8c:	80 9f 00 44 	lwz     r4,68(r31)
    9c90:	2f 84 00 00 	cmpwi   cr7,r4,0
    9c94:	41 9e 00 14 	beq-    cr7,9ca8 <_fclose_r+0xf8>
    9c98:	7f a3 eb 78 	mr      r3,r29
    9c9c:	4b ff bd f1 	bl      5a8c <_free_r>
    9ca0:	39 20 00 00 	li      r9,0
    9ca4:	91 3f 00 44 	stw     r9,68(r31)
    9ca8:	4b ff bb f5 	bl      589c <__sfp_lock_acquire>
    9cac:	39 20 00 00 	li      r9,0
    9cb0:	b1 3f 00 0c 	sth     r9,12(r31)
    9cb4:	4b ff bb ed 	bl      58a0 <__sfp_lock_release>
    9cb8:	80 01 00 24 	lwz     r0,36(r1)
    9cbc:	7f 83 e3 78 	mr      r3,r28
    9cc0:	83 a1 00 14 	lwz     r29,20(r1)
    9cc4:	7c 08 03 a6 	mtlr    r0
    9cc8:	83 81 00 10 	lwz     r28,16(r1)
    9ccc:	83 c1 00 18 	lwz     r30,24(r1)
    9cd0:	83 e1 00 1c 	lwz     r31,28(r1)
    9cd4:	38 21 00 20 	addi    r1,r1,32
    9cd8:	4e 80 00 20 	blr
    9cdc:	4b ff b9 cd 	bl      56a8 <__sinit>
    9ce0:	4b ff ff 0c 	b       9bec <_fclose_r+0x3c>
    9ce4:	3b 80 ff ff 	li      r28,-1
    9ce8:	4b ff ff 6c 	b       9c54 <_fclose_r+0xa4>
    9cec:	80 9f 00 10 	lwz     r4,16(r31)
    9cf0:	7f a3 eb 78 	mr      r3,r29
    9cf4:	4b ff bd 99 	bl      5a8c <_free_r>
    9cf8:	4b ff ff 6c 	b       9c64 <_fclose_r+0xb4>
    9cfc:	00 00 b1 08 	.long 0xb108

00009d00 <fclose>:
    9d00:	94 21 ff f0 	stwu    r1,-16(r1)
    9d04:	7c 08 02 a6 	mflr    r0
    9d08:	42 9f 00 05 	bcl-    20,4*cr7+so,9d0c <fclose+0xc>
    9d0c:	7c 64 1b 78 	mr      r4,r3
    9d10:	93 c1 00 08 	stw     r30,8(r1)
    9d14:	7f c8 02 a6 	mflr    r30
    9d18:	90 01 00 14 	stw     r0,20(r1)
    9d1c:	80 1e ff f0 	lwz     r0,-16(r30)
    9d20:	7f c0 f2 14 	add     r30,r0,r30
    9d24:	80 01 00 14 	lwz     r0,20(r1)
    9d28:	81 3e 80 00 	lwz     r9,-32768(r30)
    9d2c:	7c 08 03 a6 	mtlr    r0
    9d30:	83 c1 00 08 	lwz     r30,8(r1)
    9d34:	80 69 00 00 	lwz     r3,0(r9)
    9d38:	38 21 00 10 	addi    r1,r1,16
    9d3c:	4b ff fe 74 	b       9bb0 <_fclose_r>

00009d40 <_fputwc_r>:
    9d40:	7c 08 02 a6 	mflr    r0
    9d44:	94 21 ff c0 	stwu    r1,-64(r1)
    9d48:	93 21 00 24 	stw     r25,36(r1)
    9d4c:	7c 79 1b 78 	mr      r25,r3
    9d50:	90 01 00 44 	stw     r0,68(r1)
    9d54:	93 41 00 28 	stw     r26,40(r1)
    9d58:	7c 9a 23 78 	mr      r26,r4
    9d5c:	a9 25 00 0c 	lha     r9,12(r5)
    9d60:	93 e1 00 3c 	stw     r31,60(r1)
    9d64:	7c bf 2b 78 	mr      r31,r5
    9d68:	55 2a 04 a4 	rlwinm  r10,r9,0,18,18
    9d6c:	93 61 00 2c 	stw     r27,44(r1)
    9d70:	7d 48 07 35 	extsh.  r8,r10
    9d74:	93 81 00 30 	stw     r28,48(r1)
    9d78:	93 a1 00 34 	stw     r29,52(r1)
    9d7c:	93 c1 00 38 	stw     r30,56(r1)
    9d80:	40 82 00 18 	bne-    9d98 <_fputwc_r+0x58>
    9d84:	81 45 00 64 	lwz     r10,100(r5)
    9d88:	61 29 20 00 	ori     r9,r9,8192
    9d8c:	b1 25 00 0c 	sth     r9,12(r5)
    9d90:	61 4a 20 00 	ori     r10,r10,8192
    9d94:	91 45 00 64 	stw     r10,100(r5)
    9d98:	4b ff c2 c5 	bl      605c <__locale_mb_cur_max>
    9d9c:	2f 83 00 01 	cmpwi   cr7,r3,1
    9da0:	41 9e 01 68 	beq-    cr7,9f08 <_fputwc_r+0x1c8>
    9da4:	3b 81 00 08 	addi    r28,r1,8
    9da8:	7f 23 cb 78 	mr      r3,r25
    9dac:	7f 84 e3 78 	mr      r4,r28
    9db0:	7f 45 d3 78 	mr      r5,r26
    9db4:	38 df 00 5c 	addi    r6,r31,92
    9db8:	48 00 16 4d 	bl      b404 <_wcrtomb_r>
    9dbc:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    9dc0:	7c 7b 1b 78 	mr      r27,r3
    9dc4:	41 9e 00 b8 	beq-    cr7,9e7c <_fputwc_r+0x13c>
    9dc8:	2f 83 00 00 	cmpwi   cr7,r3,0
    9dcc:	41 9e 00 ec 	beq-    cr7,9eb8 <_fputwc_r+0x178>
    9dd0:	3b a0 00 00 	li      r29,0
    9dd4:	48 00 00 28 	b       9dfc <_fputwc_r+0xbc>
    9dd8:	81 3f 00 00 	lwz     r9,0(r31)
    9ddc:	7d 5c e8 ae 	lbzx    r10,r28,r29
    9de0:	99 49 00 00 	stb     r10,0(r9)
    9de4:	81 3f 00 00 	lwz     r9,0(r31)
    9de8:	39 29 00 01 	addi    r9,r9,1
    9dec:	91 3f 00 00 	stw     r9,0(r31)
    9df0:	3b bd 00 01 	addi    r29,r29,1
    9df4:	7f 9d d8 40 	cmplw   cr7,r29,r27
    9df8:	40 9c 00 c0 	bge-    cr7,9eb8 <_fputwc_r+0x178>
    9dfc:	81 3f 00 08 	lwz     r9,8(r31)
    9e00:	39 29 ff ff 	addi    r9,r9,-1
    9e04:	2f 89 00 00 	cmpwi   cr7,r9,0
    9e08:	91 3f 00 08 	stw     r9,8(r31)
    9e0c:	40 9c ff cc 	bge+    cr7,9dd8 <_fputwc_r+0x98>
    9e10:	81 1f 00 18 	lwz     r8,24(r31)
    9e14:	38 60 00 00 	li      r3,0
    9e18:	7f 89 40 00 	cmpw    cr7,r9,r8
    9e1c:	41 9c 00 cc 	blt-    cr7,9ee8 <_fputwc_r+0x1a8>
    9e20:	81 3f 00 00 	lwz     r9,0(r31)
    9e24:	7d 1c e8 ae 	lbzx    r8,r28,r29
    9e28:	99 09 00 00 	stb     r8,0(r9)
    9e2c:	81 3f 00 00 	lwz     r9,0(r31)
    9e30:	89 09 00 00 	lbz     r8,0(r9)
    9e34:	39 29 00 01 	addi    r9,r9,1
    9e38:	2f 88 00 0a 	cmpwi   cr7,r8,10
    9e3c:	41 9e 00 ec 	beq-    cr7,9f28 <_fputwc_r+0x1e8>
    9e40:	91 3f 00 00 	stw     r9,0(r31)
    9e44:	2f 83 00 00 	cmpwi   cr7,r3,0
    9e48:	41 9e ff a8 	beq+    cr7,9df0 <_fputwc_r+0xb0>
    9e4c:	80 01 00 44 	lwz     r0,68(r1)
    9e50:	38 60 ff ff 	li      r3,-1
    9e54:	83 21 00 24 	lwz     r25,36(r1)
    9e58:	7c 08 03 a6 	mtlr    r0
    9e5c:	83 41 00 28 	lwz     r26,40(r1)
    9e60:	83 61 00 2c 	lwz     r27,44(r1)
    9e64:	83 81 00 30 	lwz     r28,48(r1)
    9e68:	83 a1 00 34 	lwz     r29,52(r1)
    9e6c:	83 c1 00 38 	lwz     r30,56(r1)
    9e70:	83 e1 00 3c 	lwz     r31,60(r1)
    9e74:	38 21 00 40 	addi    r1,r1,64
    9e78:	4e 80 00 20 	blr
    9e7c:	80 01 00 44 	lwz     r0,68(r1)
    9e80:	38 60 ff ff 	li      r3,-1
    9e84:	a1 3f 00 0c 	lhz     r9,12(r31)
    9e88:	7c 08 03 a6 	mtlr    r0
    9e8c:	83 21 00 24 	lwz     r25,36(r1)
    9e90:	61 29 00 40 	ori     r9,r9,64
    9e94:	83 41 00 28 	lwz     r26,40(r1)
    9e98:	b1 3f 00 0c 	sth     r9,12(r31)
    9e9c:	83 61 00 2c 	lwz     r27,44(r1)
    9ea0:	83 81 00 30 	lwz     r28,48(r1)
    9ea4:	83 a1 00 34 	lwz     r29,52(r1)
    9ea8:	83 c1 00 38 	lwz     r30,56(r1)
    9eac:	83 e1 00 3c 	lwz     r31,60(r1)
    9eb0:	38 21 00 40 	addi    r1,r1,64
    9eb4:	4e 80 00 20 	blr
    9eb8:	80 01 00 44 	lwz     r0,68(r1)
    9ebc:	7f 43 d3 78 	mr      r3,r26
    9ec0:	83 21 00 24 	lwz     r25,36(r1)
    9ec4:	7c 08 03 a6 	mtlr    r0
    9ec8:	83 41 00 28 	lwz     r26,40(r1)
    9ecc:	83 61 00 2c 	lwz     r27,44(r1)
    9ed0:	83 81 00 30 	lwz     r28,48(r1)
    9ed4:	83 a1 00 34 	lwz     r29,52(r1)
    9ed8:	83 c1 00 38 	lwz     r30,56(r1)
    9edc:	83 e1 00 3c 	lwz     r31,60(r1)
    9ee0:	38 21 00 40 	addi    r1,r1,64
    9ee4:	4e 80 00 20 	blr
    9ee8:	7c 9c e8 ae 	lbzx    r4,r28,r29
    9eec:	7f 23 cb 78 	mr      r3,r25
    9ef0:	7f e5 fb 78 	mr      r5,r31
    9ef4:	48 00 13 35 	bl      b228 <__swbuf_r>
    9ef8:	38 63 00 01 	addi    r3,r3,1
    9efc:	7c 63 00 34 	cntlzw  r3,r3
    9f00:	54 63 d9 7e 	rlwinm  r3,r3,27,5,31
    9f04:	4b ff ff 40 	b       9e44 <_fputwc_r+0x104>
    9f08:	2f 9a 00 00 	cmpwi   cr7,r26,0
    9f0c:	40 bd fe 98 	ble-    cr7,9da4 <_fputwc_r+0x64>
    9f10:	2f 9a 00 ff 	cmpwi   cr7,r26,255
    9f14:	41 bd fe 90 	bgt-    cr7,9da4 <_fputwc_r+0x64>
    9f18:	7c 3c 0b 78 	mr      r28,r1
    9f1c:	3b 60 00 01 	li      r27,1
    9f20:	9f 5c 00 08 	stbu    r26,8(r28)
    9f24:	4b ff fe ac 	b       9dd0 <_fputwc_r+0x90>
    9f28:	7f 23 cb 78 	mr      r3,r25
    9f2c:	38 80 00 0a 	li      r4,10
    9f30:	4b ff ff c0 	b       9ef0 <_fputwc_r+0x1b0>
    9f34:	00 00 ae d4 	.long 0xaed4

00009f38 <fputwc>:
    9f38:	94 21 ff e0 	stwu    r1,-32(r1)
    9f3c:	7c 08 02 a6 	mflr    r0
    9f40:	42 9f 00 05 	bcl-    20,4*cr7+so,9f44 <fputwc+0xc>
    9f44:	7c 85 23 78 	mr      r5,r4
    9f48:	93 c1 00 18 	stw     r30,24(r1)
    9f4c:	7f c8 02 a6 	mflr    r30
    9f50:	90 01 00 24 	stw     r0,36(r1)
    9f54:	93 e1 00 1c 	stw     r31,28(r1)
    9f58:	80 1e ff f0 	lwz     r0,-16(r30)
    9f5c:	93 a1 00 14 	stw     r29,20(r1)
    9f60:	7c 7d 1b 78 	mr      r29,r3
    9f64:	7f c0 f2 14 	add     r30,r0,r30
    9f68:	83 fe 80 00 	lwz     r31,-32768(r30)
    9f6c:	80 7f 00 00 	lwz     r3,0(r31)
    9f70:	2f 83 00 00 	cmpwi   cr7,r3,0
    9f74:	41 9e 00 20 	beq-    cr7,9f94 <fputwc+0x5c>
    9f78:	81 23 00 38 	lwz     r9,56(r3)
    9f7c:	2f 89 00 00 	cmpwi   cr7,r9,0
    9f80:	40 be 00 14 	bne+    cr7,9f94 <fputwc+0x5c>
    9f84:	90 81 00 08 	stw     r4,8(r1)
    9f88:	4b ff b7 21 	bl      56a8 <__sinit>
    9f8c:	80 7f 00 00 	lwz     r3,0(r31)
    9f90:	80 a1 00 08 	lwz     r5,8(r1)
    9f94:	80 01 00 24 	lwz     r0,36(r1)
    9f98:	7f a4 eb 78 	mr      r4,r29
    9f9c:	83 c1 00 18 	lwz     r30,24(r1)
    9fa0:	83 a1 00 14 	lwz     r29,20(r1)
    9fa4:	7c 08 03 a6 	mtlr    r0
    9fa8:	83 e1 00 1c 	lwz     r31,28(r1)
    9fac:	38 21 00 20 	addi    r1,r1,32
    9fb0:	4b ff fd 90 	b       9d40 <_fputwc_r>
    9fb4:	00 00 ae 58 	.long 0xae58

00009fb8 <_fstat_r>:
    9fb8:	94 21 ff e0 	stwu    r1,-32(r1)
    9fbc:	7c 08 02 a6 	mflr    r0
    9fc0:	42 9f 00 05 	bcl-    20,4*cr7+so,9fc4 <_fstat_r+0xc>
    9fc4:	39 20 00 00 	li      r9,0
    9fc8:	93 c1 00 18 	stw     r30,24(r1)
    9fcc:	7f c8 02 a6 	mflr    r30
    9fd0:	90 01 00 24 	stw     r0,36(r1)
    9fd4:	93 e1 00 1c 	stw     r31,28(r1)
    9fd8:	80 1e ff f0 	lwz     r0,-16(r30)
    9fdc:	93 a1 00 14 	stw     r29,20(r1)
    9fe0:	7c 7d 1b 78 	mr      r29,r3
    9fe4:	7f c0 f2 14 	add     r30,r0,r30
    9fe8:	7c 83 23 78 	mr      r3,r4
    9fec:	83 fe 80 00 	lwz     r31,-32768(r30)
    9ff0:	7c a4 2b 78 	mr      r4,r5
    9ff4:	91 3f 00 00 	stw     r9,0(r31)
    9ff8:	4b ff 74 f5 	bl      14ec <fstat>
    9ffc:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    a000:	41 9e 00 20 	beq-    cr7,a020 <_fstat_r+0x68>
    a004:	80 01 00 24 	lwz     r0,36(r1)
    a008:	83 a1 00 14 	lwz     r29,20(r1)
    a00c:	7c 08 03 a6 	mtlr    r0
    a010:	83 c1 00 18 	lwz     r30,24(r1)
    a014:	83 e1 00 1c 	lwz     r31,28(r1)
    a018:	38 21 00 20 	addi    r1,r1,32
    a01c:	4e 80 00 20 	blr
    a020:	81 3f 00 00 	lwz     r9,0(r31)
    a024:	2f 89 00 00 	cmpwi   cr7,r9,0
    a028:	41 be ff dc 	beq-    cr7,a004 <_fstat_r+0x4c>
    a02c:	80 01 00 24 	lwz     r0,36(r1)
    a030:	91 3d 00 00 	stw     r9,0(r29)
    a034:	7c 08 03 a6 	mtlr    r0
    a038:	83 a1 00 14 	lwz     r29,20(r1)
    a03c:	83 c1 00 18 	lwz     r30,24(r1)
    a040:	83 e1 00 1c 	lwz     r31,28(r1)
    a044:	38 21 00 20 	addi    r1,r1,32
    a048:	4e 80 00 20 	blr

0000a04c <__sfvwrite_r>:
    a04c:	7c 08 02 a6 	mflr    r0
    a050:	94 21 ff c0 	stwu    r1,-64(r1)
    a054:	93 61 00 2c 	stw     r27,44(r1)
    a058:	7c bb 2b 78 	mr      r27,r5
    a05c:	90 01 00 44 	stw     r0,68(r1)
    a060:	92 81 00 10 	stw     r20,16(r1)
    a064:	81 25 00 08 	lwz     r9,8(r5)
    a068:	92 a1 00 14 	stw     r21,20(r1)
    a06c:	2f 89 00 00 	cmpwi   cr7,r9,0
    a070:	92 c1 00 18 	stw     r22,24(r1)
    a074:	92 e1 00 1c 	stw     r23,28(r1)
    a078:	93 01 00 20 	stw     r24,32(r1)
    a07c:	93 21 00 24 	stw     r25,36(r1)
    a080:	93 41 00 28 	stw     r26,40(r1)
    a084:	93 81 00 30 	stw     r28,48(r1)
    a088:	93 a1 00 34 	stw     r29,52(r1)
    a08c:	93 c1 00 38 	stw     r30,56(r1)
    a090:	93 e1 00 3c 	stw     r31,60(r1)
    a094:	41 9e 00 94 	beq-    cr7,a128 <__sfvwrite_r+0xdc>
    a098:	a9 24 00 0c 	lha     r9,12(r4)
    a09c:	7c 76 1b 78 	mr      r22,r3
    a0a0:	7c 9f 23 78 	mr      r31,r4
    a0a4:	55 2a 07 38 	rlwinm  r10,r9,0,28,28
    a0a8:	7d 48 07 35 	extsh.  r8,r10
    a0ac:	41 82 00 c0 	beq-    a16c <__sfvwrite_r+0x120>
    a0b0:	81 44 00 10 	lwz     r10,16(r4)
    a0b4:	2f 8a 00 00 	cmpwi   cr7,r10,0
    a0b8:	41 9e 00 b4 	beq-    cr7,a16c <__sfvwrite_r+0x120>
    a0bc:	55 2a 07 bc 	rlwinm  r10,r9,0,30,30
    a0c0:	83 bb 00 00 	lwz     r29,0(r27)
    a0c4:	7d 48 07 35 	extsh.  r8,r10
    a0c8:	41 82 00 cc 	beq-    a194 <__sfvwrite_r+0x148>
    a0cc:	3b 40 00 00 	li      r26,0
    a0d0:	3b 80 00 00 	li      r28,0
    a0d4:	2f 9c 00 00 	cmpwi   cr7,r28,0
    a0d8:	7f 45 d3 78 	mr      r5,r26
    a0dc:	7e c3 b3 78 	mr      r3,r22
    a0e0:	2b 1c 04 00 	cmplwi  cr6,r28,1024
    a0e4:	7f 86 e3 78 	mr      r6,r28
    a0e8:	41 9e 01 70 	beq-    cr7,a258 <__sfvwrite_r+0x20c>
    a0ec:	80 9f 00 1c 	lwz     r4,28(r31)
    a0f0:	40 99 00 08 	ble-    cr6,a0f8 <__sfvwrite_r+0xac>
    a0f4:	38 c0 04 00 	li      r6,1024
    a0f8:	81 3f 00 24 	lwz     r9,36(r31)
    a0fc:	7d 29 03 a6 	mtctr   r9
    a100:	4e 80 04 21 	bctrl
    a104:	2c 03 00 00 	cmpwi   r3,0
    a108:	7f 5a 1a 14 	add     r26,r26,r3
    a10c:	7f 83 e0 50 	subf    r28,r3,r28
    a110:	40 81 01 78 	ble-    a288 <__sfvwrite_r+0x23c>
    a114:	81 5b 00 08 	lwz     r10,8(r27)
    a118:	7d 23 50 50 	subf    r9,r3,r10
    a11c:	2f 89 00 00 	cmpwi   cr7,r9,0
    a120:	91 3b 00 08 	stw     r9,8(r27)
    a124:	40 9e ff b0 	bne+    cr7,a0d4 <__sfvwrite_r+0x88>
    a128:	38 60 00 00 	li      r3,0
    a12c:	80 01 00 44 	lwz     r0,68(r1)
    a130:	82 81 00 10 	lwz     r20,16(r1)
    a134:	7c 08 03 a6 	mtlr    r0
    a138:	82 a1 00 14 	lwz     r21,20(r1)
    a13c:	82 c1 00 18 	lwz     r22,24(r1)
    a140:	82 e1 00 1c 	lwz     r23,28(r1)
    a144:	83 01 00 20 	lwz     r24,32(r1)
    a148:	83 21 00 24 	lwz     r25,36(r1)
    a14c:	83 41 00 28 	lwz     r26,40(r1)
    a150:	83 61 00 2c 	lwz     r27,44(r1)
    a154:	83 81 00 30 	lwz     r28,48(r1)
    a158:	83 a1 00 34 	lwz     r29,52(r1)
    a15c:	83 c1 00 38 	lwz     r30,56(r1)
    a160:	83 e1 00 3c 	lwz     r31,60(r1)
    a164:	38 21 00 40 	addi    r1,r1,64
    a168:	4e 80 00 20 	blr
    a16c:	7e c3 b3 78 	mr      r3,r22
    a170:	7f e4 fb 78 	mr      r4,r31
    a174:	4b ff 98 89 	bl      39fc <__swsetup_r>
    a178:	2f 83 00 00 	cmpwi   cr7,r3,0
    a17c:	40 9e 04 14 	bne-    cr7,a590 <__sfvwrite_r+0x544>
    a180:	a9 3f 00 0c 	lha     r9,12(r31)
    a184:	83 bb 00 00 	lwz     r29,0(r27)
    a188:	55 2a 07 bc 	rlwinm  r10,r9,0,30,30
    a18c:	7d 48 07 35 	extsh.  r8,r10
    a190:	40 a2 ff 3c 	bne-    a0cc <__sfvwrite_r+0x80>
    a194:	71 28 00 01 	andi.   r8,r9,1
    a198:	3b 20 00 00 	li      r25,0
    a19c:	41 82 01 3c 	beq-    a2d8 <__sfvwrite_r+0x28c>
    a1a0:	3a a0 00 00 	li      r21,0
    a1a4:	3a e0 00 00 	li      r23,0
    a1a8:	3b 40 00 00 	li      r26,0
    a1ac:	2f 9a 00 00 	cmpwi   cr7,r26,0
    a1b0:	41 9e 00 94 	beq-    cr7,a244 <__sfvwrite_r+0x1f8>
    a1b4:	2f 95 00 00 	cmpwi   cr7,r21,0
    a1b8:	41 9e 02 a4 	beq-    cr7,a45c <__sfvwrite_r+0x410>
    a1bc:	7f 99 d0 40 	cmplw   cr7,r25,r26
    a1c0:	7f 38 cb 78 	mr      r24,r25
    a1c4:	40 9d 00 08 	ble-    cr7,a1cc <__sfvwrite_r+0x180>
    a1c8:	7f 58 d3 78 	mr      r24,r26
    a1cc:	80 7f 00 00 	lwz     r3,0(r31)
    a1d0:	81 3f 00 10 	lwz     r9,16(r31)
    a1d4:	83 9f 00 08 	lwz     r28,8(r31)
    a1d8:	7f 83 48 40 	cmplw   cr7,r3,r9
    a1dc:	80 df 00 14 	lwz     r6,20(r31)
    a1e0:	40 9d 00 10 	ble-    cr7,a1f0 <__sfvwrite_r+0x1a4>
    a1e4:	7f 9c 32 14 	add     r28,r28,r6
    a1e8:	7f 98 e0 00 	cmpw    cr7,r24,r28
    a1ec:	41 9d 03 38 	bgt-    cr7,a524 <__sfvwrite_r+0x4d8>
    a1f0:	7f 98 30 00 	cmpw    cr7,r24,r6
    a1f4:	41 9c 01 d4 	blt-    cr7,a3c8 <__sfvwrite_r+0x37c>
    a1f8:	81 3f 00 24 	lwz     r9,36(r31)
    a1fc:	7e c3 b3 78 	mr      r3,r22
    a200:	80 9f 00 1c 	lwz     r4,28(r31)
    a204:	7e e5 bb 78 	mr      r5,r23
    a208:	7d 29 03 a6 	mtctr   r9
    a20c:	4e 80 04 21 	bctrl
    a210:	7c 7c 1b 79 	mr.     r28,r3
    a214:	40 81 00 74 	ble-    a288 <__sfvwrite_r+0x23c>
    a218:	7f 3c c8 51 	subf.   r25,r28,r25
    a21c:	41 82 01 dc 	beq-    a3f8 <__sfvwrite_r+0x3ac>
    a220:	81 3b 00 08 	lwz     r9,8(r27)
    a224:	7e f7 e2 14 	add     r23,r23,r28
    a228:	7f 5c d0 50 	subf    r26,r28,r26
    a22c:	7d 3c 48 50 	subf    r9,r28,r9
    a230:	2f 89 00 00 	cmpwi   cr7,r9,0
    a234:	91 3b 00 08 	stw     r9,8(r27)
    a238:	41 be fe f0 	beq-    cr7,a128 <__sfvwrite_r+0xdc>
    a23c:	2f 9a 00 00 	cmpwi   cr7,r26,0
    a240:	40 be ff 74 	bne-    cr7,a1b4 <__sfvwrite_r+0x168>
    a244:	82 fd 00 00 	lwz     r23,0(r29)
    a248:	3a a0 00 00 	li      r21,0
    a24c:	83 5d 00 04 	lwz     r26,4(r29)
    a250:	3b bd 00 08 	addi    r29,r29,8
    a254:	4b ff ff 58 	b       a1ac <__sfvwrite_r+0x160>
    a258:	83 5d 00 00 	lwz     r26,0(r29)
    a25c:	83 9d 00 04 	lwz     r28,4(r29)
    a260:	3b bd 00 08 	addi    r29,r29,8
    a264:	4b ff fe 70 	b       a0d4 <__sfvwrite_r+0x88>
    a268:	48 00 06 69 	bl      a8d0 <_realloc_r>
    a26c:	7c 77 1b 79 	mr.     r23,r3
    a270:	40 a2 02 88 	bne+    a4f8 <__sfvwrite_r+0x4ac>
    a274:	80 9f 00 10 	lwz     r4,16(r31)
    a278:	7e c3 b3 78 	mr      r3,r22
    a27c:	4b ff b8 11 	bl      5a8c <_free_r>
    a280:	39 20 00 0c 	li      r9,12
    a284:	91 36 00 00 	stw     r9,0(r22)
    a288:	80 01 00 44 	lwz     r0,68(r1)
    a28c:	38 60 ff ff 	li      r3,-1
    a290:	a1 3f 00 0c 	lhz     r9,12(r31)
    a294:	7c 08 03 a6 	mtlr    r0
    a298:	82 81 00 10 	lwz     r20,16(r1)
    a29c:	61 29 00 40 	ori     r9,r9,64
    a2a0:	82 a1 00 14 	lwz     r21,20(r1)
    a2a4:	b1 3f 00 0c 	sth     r9,12(r31)
    a2a8:	82 c1 00 18 	lwz     r22,24(r1)
    a2ac:	82 e1 00 1c 	lwz     r23,28(r1)
    a2b0:	83 01 00 20 	lwz     r24,32(r1)
    a2b4:	83 21 00 24 	lwz     r25,36(r1)
    a2b8:	83 41 00 28 	lwz     r26,40(r1)
    a2bc:	83 61 00 2c 	lwz     r27,44(r1)
    a2c0:	83 81 00 30 	lwz     r28,48(r1)
    a2c4:	83 a1 00 34 	lwz     r29,52(r1)
    a2c8:	83 c1 00 38 	lwz     r30,56(r1)
    a2cc:	83 e1 00 3c 	lwz     r31,60(r1)
    a2d0:	38 21 00 40 	addi    r1,r1,64
    a2d4:	4e 80 00 20 	blr
    a2d8:	3b 80 00 00 	li      r28,0
    a2dc:	3a a0 fb 7f 	li      r21,-1153
    a2e0:	2f 9c 00 00 	cmpwi   cr7,r28,0
    a2e4:	41 9e 00 84 	beq-    cr7,a368 <__sfvwrite_r+0x31c>
    a2e8:	55 2a 05 ac 	rlwinm  r10,r9,0,22,22
    a2ec:	83 5f 00 08 	lwz     r26,8(r31)
    a2f0:	7d 48 07 35 	extsh.  r8,r10
    a2f4:	41 82 00 84 	beq-    a378 <__sfvwrite_r+0x32c>
    a2f8:	7f 9c d0 40 	cmplw   cr7,r28,r26
    a2fc:	7f 57 d3 78 	mr      r23,r26
    a300:	41 9c 01 14 	blt-    cr7,a414 <__sfvwrite_r+0x3c8>
    a304:	71 2a 04 80 	andi.   r10,r9,1152
    a308:	40 82 01 7c 	bne-    a484 <__sfvwrite_r+0x438>
    a30c:	80 7f 00 00 	lwz     r3,0(r31)
    a310:	7f 54 d3 78 	mr      r20,r26
    a314:	7f 98 e3 78 	mr      r24,r28
    a318:	7f 9a e3 78 	mr      r26,r28
    a31c:	7e e5 bb 78 	mr      r5,r23
    a320:	7f 24 cb 78 	mr      r4,r25
    a324:	48 00 03 a5 	bl      a6c8 <memmove>
    a328:	81 5f 00 08 	lwz     r10,8(r31)
    a32c:	81 3f 00 00 	lwz     r9,0(r31)
    a330:	7d 54 50 50 	subf    r10,r20,r10
    a334:	7e e9 ba 14 	add     r23,r9,r23
    a338:	91 5f 00 08 	stw     r10,8(r31)
    a33c:	92 ff 00 00 	stw     r23,0(r31)
    a340:	81 3b 00 08 	lwz     r9,8(r27)
    a344:	7f 39 c2 14 	add     r25,r25,r24
    a348:	7f 98 e0 50 	subf    r28,r24,r28
    a34c:	7f 5a 48 50 	subf    r26,r26,r9
    a350:	2f 9a 00 00 	cmpwi   cr7,r26,0
    a354:	93 5b 00 08 	stw     r26,8(r27)
    a358:	41 be fd d0 	beq-    cr7,a128 <__sfvwrite_r+0xdc>
    a35c:	2f 9c 00 00 	cmpwi   cr7,r28,0
    a360:	a9 3f 00 0c 	lha     r9,12(r31)
    a364:	40 be ff 84 	bne-    cr7,a2e8 <__sfvwrite_r+0x29c>
    a368:	83 3d 00 00 	lwz     r25,0(r29)
    a36c:	83 9d 00 04 	lwz     r28,4(r29)
    a370:	3b bd 00 08 	addi    r29,r29,8
    a374:	4b ff ff 6c 	b       a2e0 <__sfvwrite_r+0x294>
    a378:	80 7f 00 00 	lwz     r3,0(r31)
    a37c:	81 3f 00 10 	lwz     r9,16(r31)
    a380:	7f 83 48 40 	cmplw   cr7,r3,r9
    a384:	40 9d 00 10 	ble-    cr7,a394 <__sfvwrite_r+0x348>
    a388:	7f 9c d0 40 	cmplw   cr7,r28,r26
    a38c:	7f 58 d3 78 	mr      r24,r26
    a390:	41 9d 01 c4 	bgt-    cr7,a554 <__sfvwrite_r+0x508>
    a394:	80 df 00 14 	lwz     r6,20(r31)
    a398:	7f 9c 30 40 	cmplw   cr7,r28,r6
    a39c:	41 9c 00 90 	blt-    cr7,a42c <__sfvwrite_r+0x3e0>
    a3a0:	81 3f 00 24 	lwz     r9,36(r31)
    a3a4:	7e c3 b3 78 	mr      r3,r22
    a3a8:	80 9f 00 1c 	lwz     r4,28(r31)
    a3ac:	7f 25 cb 78 	mr      r5,r25
    a3b0:	7d 29 03 a6 	mtctr   r9
    a3b4:	4e 80 04 21 	bctrl
    a3b8:	7c 7a 1b 79 	mr.     r26,r3
    a3bc:	40 a1 fe cc 	ble-    a288 <__sfvwrite_r+0x23c>
    a3c0:	7f 58 d3 78 	mr      r24,r26
    a3c4:	4b ff ff 7c 	b       a340 <__sfvwrite_r+0x2f4>
    a3c8:	7e e4 bb 78 	mr      r4,r23
    a3cc:	7f 05 c3 78 	mr      r5,r24
    a3d0:	48 00 02 f9 	bl      a6c8 <memmove>
    a3d4:	7f 1c c3 78 	mr      r28,r24
    a3d8:	81 5f 00 08 	lwz     r10,8(r31)
    a3dc:	7f 3c c8 51 	subf.   r25,r28,r25
    a3e0:	81 3f 00 00 	lwz     r9,0(r31)
    a3e4:	7d 58 50 50 	subf    r10,r24,r10
    a3e8:	7d 29 c2 14 	add     r9,r9,r24
    a3ec:	91 5f 00 08 	stw     r10,8(r31)
    a3f0:	91 3f 00 00 	stw     r9,0(r31)
    a3f4:	40 82 fe 2c 	bne+    a220 <__sfvwrite_r+0x1d4>
    a3f8:	7e c3 b3 78 	mr      r3,r22
    a3fc:	7f e4 fb 78 	mr      r4,r31
    a400:	4b ff b0 29 	bl      5428 <_fflush_r>
    a404:	2f 83 00 00 	cmpwi   cr7,r3,0
    a408:	40 be fe 80 	bne-    cr7,a288 <__sfvwrite_r+0x23c>
    a40c:	3a a0 00 00 	li      r21,0
    a410:	4b ff fe 10 	b       a220 <__sfvwrite_r+0x1d4>
    a414:	80 7f 00 00 	lwz     r3,0(r31)
    a418:	7f 94 e3 78 	mr      r20,r28
    a41c:	7f 98 e3 78 	mr      r24,r28
    a420:	7f 9a e3 78 	mr      r26,r28
    a424:	7f 97 e3 78 	mr      r23,r28
    a428:	4b ff fe f4 	b       a31c <__sfvwrite_r+0x2d0>
    a42c:	7f 24 cb 78 	mr      r4,r25
    a430:	7f 85 e3 78 	mr      r5,r28
    a434:	48 00 02 95 	bl      a6c8 <memmove>
    a438:	81 5f 00 08 	lwz     r10,8(r31)
    a43c:	81 3f 00 00 	lwz     r9,0(r31)
    a440:	7f 9a e3 78 	mr      r26,r28
    a444:	7d 5c 50 50 	subf    r10,r28,r10
    a448:	7f 98 e3 78 	mr      r24,r28
    a44c:	7d 29 e2 14 	add     r9,r9,r28
    a450:	91 5f 00 08 	stw     r10,8(r31)
    a454:	91 3f 00 00 	stw     r9,0(r31)
    a458:	4b ff fe e8 	b       a340 <__sfvwrite_r+0x2f4>
    a45c:	7e e3 bb 78 	mr      r3,r23
    a460:	38 80 00 0a 	li      r4,10
    a464:	7f 45 d3 78 	mr      r5,r26
    a468:	4b ff c7 99 	bl      6c00 <memchr>
    a46c:	2c 03 00 00 	cmpwi   r3,0
    a470:	41 82 01 14 	beq-    a584 <__sfvwrite_r+0x538>
    a474:	3b 23 00 01 	addi    r25,r3,1
    a478:	3a a0 00 01 	li      r21,1
    a47c:	7f 37 c8 50 	subf    r25,r23,r25
    a480:	4b ff fd 3c 	b       a1bc <__sfvwrite_r+0x170>
    a484:	80 9f 00 10 	lwz     r4,16(r31)
    a488:	83 1f 00 00 	lwz     r24,0(r31)
    a48c:	83 5f 00 14 	lwz     r26,20(r31)
    a490:	7f 04 c0 50 	subf    r24,r4,r24
    a494:	1f 5a 00 03 	mulli   r26,r26,3
    a498:	39 58 00 01 	addi    r10,r24,1
    a49c:	7d 4a e2 14 	add     r10,r10,r28
    a4a0:	7f 5a 0e 70 	srawi   r26,r26,1
    a4a4:	7f 5a 01 94 	addze   r26,r26
    a4a8:	7f 9a 50 40 	cmplw   cr7,r26,r10
    a4ac:	7f 45 d3 78 	mr      r5,r26
    a4b0:	40 9c 00 0c 	bge-    cr7,a4bc <__sfvwrite_r+0x470>
    a4b4:	7d 5a 53 78 	mr      r26,r10
    a4b8:	7d 45 53 78 	mr      r5,r10
    a4bc:	55 29 05 6a 	rlwinm  r9,r9,0,21,21
    a4c0:	7e c3 b3 78 	mr      r3,r22
    a4c4:	7d 28 07 35 	extsh.  r8,r9
    a4c8:	41 a2 fd a0 	beq-    a268 <__sfvwrite_r+0x21c>
    a4cc:	7c a4 2b 78 	mr      r4,r5
    a4d0:	4b ff be b9 	bl      6388 <_malloc_r>
    a4d4:	7c 77 1b 79 	mr.     r23,r3
    a4d8:	41 a2 fd a8 	beq-    a280 <__sfvwrite_r+0x234>
    a4dc:	80 9f 00 10 	lwz     r4,16(r31)
    a4e0:	7f 05 c3 78 	mr      r5,r24
    a4e4:	4b ff c8 29 	bl      6d0c <memcpy>
    a4e8:	a1 3f 00 0c 	lhz     r9,12(r31)
    a4ec:	7d 29 a8 38 	and     r9,r9,r21
    a4f0:	61 29 00 80 	ori     r9,r9,128
    a4f4:	b1 3f 00 0c 	sth     r9,12(r31)
    a4f8:	7c 77 c2 14 	add     r3,r23,r24
    a4fc:	7f 18 d0 50 	subf    r24,r24,r26
    a500:	92 ff 00 10 	stw     r23,16(r31)
    a504:	7f 94 e3 78 	mr      r20,r28
    a508:	93 5f 00 14 	stw     r26,20(r31)
    a50c:	7f 97 e3 78 	mr      r23,r28
    a510:	93 1f 00 08 	stw     r24,8(r31)
    a514:	7f 9a e3 78 	mr      r26,r28
    a518:	90 7f 00 00 	stw     r3,0(r31)
    a51c:	7f 98 e3 78 	mr      r24,r28
    a520:	4b ff fd fc 	b       a31c <__sfvwrite_r+0x2d0>
    a524:	7e e4 bb 78 	mr      r4,r23
    a528:	7f 85 e3 78 	mr      r5,r28
    a52c:	48 00 01 9d 	bl      a6c8 <memmove>
    a530:	81 3f 00 00 	lwz     r9,0(r31)
    a534:	7e c3 b3 78 	mr      r3,r22
    a538:	7f e4 fb 78 	mr      r4,r31
    a53c:	7d 29 e2 14 	add     r9,r9,r28
    a540:	91 3f 00 00 	stw     r9,0(r31)
    a544:	4b ff ae e5 	bl      5428 <_fflush_r>
    a548:	2f 83 00 00 	cmpwi   cr7,r3,0
    a54c:	41 9e fc cc 	beq+    cr7,a218 <__sfvwrite_r+0x1cc>
    a550:	4b ff fd 38 	b       a288 <__sfvwrite_r+0x23c>
    a554:	7f 24 cb 78 	mr      r4,r25
    a558:	7f 45 d3 78 	mr      r5,r26
    a55c:	48 00 01 6d 	bl      a6c8 <memmove>
    a560:	81 3f 00 00 	lwz     r9,0(r31)
    a564:	7e c3 b3 78 	mr      r3,r22
    a568:	7f e4 fb 78 	mr      r4,r31
    a56c:	7d 29 d2 14 	add     r9,r9,r26
    a570:	91 3f 00 00 	stw     r9,0(r31)
    a574:	4b ff ae b5 	bl      5428 <_fflush_r>
    a578:	2f 83 00 00 	cmpwi   cr7,r3,0
    a57c:	41 9e fd c4 	beq+    cr7,a340 <__sfvwrite_r+0x2f4>
    a580:	4b ff fd 08 	b       a288 <__sfvwrite_r+0x23c>
    a584:	3b 3a 00 01 	addi    r25,r26,1
    a588:	3a a0 00 01 	li      r21,1
    a58c:	4b ff fc 30 	b       a1bc <__sfvwrite_r+0x170>
    a590:	38 60 ff ff 	li      r3,-1
    a594:	4b ff fb 98 	b       a12c <__sfvwrite_r+0xe0>
    a598:	00 00 a8 78 	.long 0xa878

0000a59c <_isatty_r>:
    a59c:	94 21 ff e0 	stwu    r1,-32(r1)
    a5a0:	7c 08 02 a6 	mflr    r0
    a5a4:	42 9f 00 05 	bcl-    20,4*cr7+so,a5a8 <_isatty_r+0xc>
    a5a8:	39 20 00 00 	li      r9,0
    a5ac:	93 c1 00 18 	stw     r30,24(r1)
    a5b0:	7f c8 02 a6 	mflr    r30
    a5b4:	90 01 00 24 	stw     r0,36(r1)
    a5b8:	93 e1 00 1c 	stw     r31,28(r1)
    a5bc:	80 1e ff f0 	lwz     r0,-16(r30)
    a5c0:	93 a1 00 14 	stw     r29,20(r1)
    a5c4:	7c 7d 1b 78 	mr      r29,r3
    a5c8:	7f c0 f2 14 	add     r30,r0,r30
    a5cc:	7c 83 23 78 	mr      r3,r4
    a5d0:	83 fe 80 00 	lwz     r31,-32768(r30)
    a5d4:	91 3f 00 00 	stw     r9,0(r31)
    a5d8:	4b ff 6f 65 	bl      153c <isatty>
    a5dc:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    a5e0:	41 9e 00 20 	beq-    cr7,a600 <_isatty_r+0x64>
    a5e4:	80 01 00 24 	lwz     r0,36(r1)
    a5e8:	83 a1 00 14 	lwz     r29,20(r1)
    a5ec:	7c 08 03 a6 	mtlr    r0
    a5f0:	83 c1 00 18 	lwz     r30,24(r1)
    a5f4:	83 e1 00 1c 	lwz     r31,28(r1)
    a5f8:	38 21 00 20 	addi    r1,r1,32
    a5fc:	4e 80 00 20 	blr
    a600:	81 3f 00 00 	lwz     r9,0(r31)
    a604:	2f 89 00 00 	cmpwi   cr7,r9,0
    a608:	41 be ff dc 	beq-    cr7,a5e4 <_isatty_r+0x48>
    a60c:	80 01 00 24 	lwz     r0,36(r1)
    a610:	91 3d 00 00 	stw     r9,0(r29)
    a614:	7c 08 03 a6 	mtlr    r0
    a618:	83 a1 00 14 	lwz     r29,20(r1)
    a61c:	83 c1 00 18 	lwz     r30,24(r1)
    a620:	83 e1 00 1c 	lwz     r31,28(r1)
    a624:	38 21 00 20 	addi    r1,r1,32
    a628:	4e 80 00 20 	blr
    a62c:	00 00 a7 e8 	.long 0xa7e8

0000a630 <_lseek_r>:
    a630:	94 21 ff e0 	stwu    r1,-32(r1)
    a634:	7c 08 02 a6 	mflr    r0
    a638:	42 9f 00 05 	bcl-    20,4*cr7+so,a63c <_lseek_r+0xc>
    a63c:	39 20 00 00 	li      r9,0
    a640:	93 c1 00 18 	stw     r30,24(r1)
    a644:	7f c8 02 a6 	mflr    r30
    a648:	90 01 00 24 	stw     r0,36(r1)
    a64c:	93 e1 00 1c 	stw     r31,28(r1)
    a650:	80 1e ff f0 	lwz     r0,-16(r30)
    a654:	93 a1 00 14 	stw     r29,20(r1)
    a658:	7c 7d 1b 78 	mr      r29,r3
    a65c:	7f c0 f2 14 	add     r30,r0,r30
    a660:	7c 83 23 78 	mr      r3,r4
    a664:	83 fe 80 00 	lwz     r31,-32768(r30)
    a668:	7c a4 2b 78 	mr      r4,r5
    a66c:	7c c5 33 78 	mr      r5,r6
    a670:	91 3f 00 00 	stw     r9,0(r31)
    a674:	4b ff 6e a9 	bl      151c <lseek>
    a678:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    a67c:	41 9e 00 20 	beq-    cr7,a69c <_lseek_r+0x6c>
    a680:	80 01 00 24 	lwz     r0,36(r1)
    a684:	83 a1 00 14 	lwz     r29,20(r1)
    a688:	7c 08 03 a6 	mtlr    r0
    a68c:	83 c1 00 18 	lwz     r30,24(r1)
    a690:	83 e1 00 1c 	lwz     r31,28(r1)
    a694:	38 21 00 20 	addi    r1,r1,32
    a698:	4e 80 00 20 	blr
    a69c:	81 3f 00 00 	lwz     r9,0(r31)
    a6a0:	2f 89 00 00 	cmpwi   cr7,r9,0
    a6a4:	41 be ff dc 	beq-    cr7,a680 <_lseek_r+0x50>
    a6a8:	80 01 00 24 	lwz     r0,36(r1)
    a6ac:	91 3d 00 00 	stw     r9,0(r29)
    a6b0:	7c 08 03 a6 	mtlr    r0
    a6b4:	83 a1 00 14 	lwz     r29,20(r1)
    a6b8:	83 c1 00 18 	lwz     r30,24(r1)
    a6bc:	83 e1 00 1c 	lwz     r31,28(r1)
    a6c0:	38 21 00 20 	addi    r1,r1,32
    a6c4:	4e 80 00 20 	blr

0000a6c8 <memmove>:
    a6c8:	7f 83 20 40 	cmplw   cr7,r3,r4
    a6cc:	7c 08 02 a6 	mflr    r0
    a6d0:	94 21 ff f0 	stwu    r1,-16(r1)
    a6d4:	90 01 00 14 	stw     r0,20(r1)
    a6d8:	93 c1 00 08 	stw     r30,8(r1)
    a6dc:	40 9d 00 54 	ble-    cr7,a730 <memmove+0x68>
    a6e0:	7c e4 2a 14 	add     r7,r4,r5
    a6e4:	7f 83 38 40 	cmplw   cr7,r3,r7
    a6e8:	40 9c 00 48 	bge-    cr7,a730 <memmove+0x68>
    a6ec:	2f 85 00 00 	cmpwi   cr7,r5,0
    a6f0:	7c a9 03 a6 	mtctr   r5
    a6f4:	7c c3 2a 14 	add     r6,r3,r5
    a6f8:	39 25 ff ff 	addi    r9,r5,-1
    a6fc:	7c a5 00 d0 	neg     r5,r5
    a700:	41 9e 00 1c 	beq-    cr7,a71c <memmove+0x54>
    a704:	7d 47 2a 14 	add     r10,r7,r5
    a708:	7d 0a 48 ae 	lbzx    r8,r10,r9
    a70c:	7d 46 2a 14 	add     r10,r6,r5
    a710:	7d 0a 49 ae 	stbx    r8,r10,r9
    a714:	39 29 ff ff 	addi    r9,r9,-1
    a718:	42 00 ff ec 	bdnz+   a704 <memmove+0x3c>
    a71c:	80 01 00 14 	lwz     r0,20(r1)
    a720:	83 c1 00 08 	lwz     r30,8(r1)
    a724:	7c 08 03 a6 	mtlr    r0
    a728:	38 21 00 10 	addi    r1,r1,16
    a72c:	4e 80 00 20 	blr
    a730:	2b 85 00 0f 	cmplwi  cr7,r5,15
    a734:	41 9d 00 3c 	bgt-    cr7,a770 <memmove+0xa8>
    a738:	7c 69 1b 78 	mr      r9,r3
    a73c:	2f 85 00 00 	cmpwi   cr7,r5,0
    a740:	41 be ff dc 	beq-    cr7,a71c <memmove+0x54>
    a744:	7c a9 03 a6 	mtctr   r5
    a748:	38 84 ff ff 	addi    r4,r4,-1
    a74c:	39 29 ff ff 	addi    r9,r9,-1
    a750:	8d 44 00 01 	lbzu    r10,1(r4)
    a754:	9d 49 00 01 	stbu    r10,1(r9)
    a758:	42 00 ff f8 	bdnz+   a750 <memmove+0x88>
    a75c:	80 01 00 14 	lwz     r0,20(r1)
    a760:	83 c1 00 08 	lwz     r30,8(r1)
    a764:	7c 08 03 a6 	mtlr    r0
    a768:	38 21 00 10 	addi    r1,r1,16
    a76c:	4e 80 00 20 	blr
    a770:	7c 89 1b 78 	or      r9,r4,r3
    a774:	71 2a 00 03 	andi.   r10,r9,3
    a778:	40 82 00 a8 	bne-    a820 <memmove+0x158>
    a77c:	39 05 ff f0 	addi    r8,r5,-16
    a780:	7c 8a 23 78 	mr      r10,r4
    a784:	55 08 e1 3e 	rlwinm  r8,r8,28,4,31
    a788:	7c 69 1b 78 	mr      r9,r3
    a78c:	39 08 00 01 	addi    r8,r8,1
    a790:	7d 09 03 a6 	mtctr   r8
    a794:	81 0a 00 00 	lwz     r8,0(r10)
    a798:	91 09 00 00 	stw     r8,0(r9)
    a79c:	81 0a 00 04 	lwz     r8,4(r10)
    a7a0:	91 09 00 04 	stw     r8,4(r9)
    a7a4:	81 0a 00 08 	lwz     r8,8(r10)
    a7a8:	91 09 00 08 	stw     r8,8(r9)
    a7ac:	81 0a 00 0c 	lwz     r8,12(r10)
    a7b0:	39 4a 00 10 	addi    r10,r10,16
    a7b4:	91 09 00 0c 	stw     r8,12(r9)
    a7b8:	39 29 00 10 	addi    r9,r9,16
    a7bc:	42 00 ff d8 	bdnz+   a794 <memmove+0xcc>
    a7c0:	54 a6 07 3e 	clrlwi  r6,r5,28
    a7c4:	39 45 ff f0 	addi    r10,r5,-16
    a7c8:	2b 86 00 03 	cmplwi  cr7,r6,3
    a7cc:	55 4a 00 36 	rlwinm  r10,r10,0,0,27
    a7d0:	39 4a 00 10 	addi    r10,r10,16
    a7d4:	7d 23 52 14 	add     r9,r3,r10
    a7d8:	7c 84 52 14 	add     r4,r4,r10
    a7dc:	40 9d 00 4c 	ble-    cr7,a828 <memmove+0x160>
    a7e0:	38 e6 ff fc 	addi    r7,r6,-4
    a7e4:	39 04 ff fc 	addi    r8,r4,-4
    a7e8:	54 e7 f0 be 	rlwinm  r7,r7,30,2,31
    a7ec:	39 49 ff fc 	addi    r10,r9,-4
    a7f0:	38 e7 00 01 	addi    r7,r7,1
    a7f4:	7c e9 03 a6 	mtctr   r7
    a7f8:	84 e8 00 04 	lwzu    r7,4(r8)
    a7fc:	94 ea 00 04 	stwu    r7,4(r10)
    a800:	42 00 ff f8 	bdnz+   a7f8 <memmove+0x130>
    a804:	39 46 ff fc 	addi    r10,r6,-4
    a808:	54 a5 07 be 	clrlwi  r5,r5,30
    a80c:	55 4a 00 3a 	rlwinm  r10,r10,0,0,29
    a810:	39 4a 00 04 	addi    r10,r10,4
    a814:	7c 84 52 14 	add     r4,r4,r10
    a818:	7d 29 52 14 	add     r9,r9,r10
    a81c:	4b ff ff 20 	b       a73c <memmove+0x74>
    a820:	7c 69 1b 78 	mr      r9,r3
    a824:	4b ff ff 20 	b       a744 <memmove+0x7c>
    a828:	7c c5 33 78 	mr      r5,r6
    a82c:	4b ff ff 10 	b       a73c <memmove+0x74>
    a830:	00 00 a5 e8 	.long 0xa5e8

0000a834 <_read_r>:
    a834:	94 21 ff e0 	stwu    r1,-32(r1)
    a838:	7c 08 02 a6 	mflr    r0
    a83c:	42 9f 00 05 	bcl-    20,4*cr7+so,a840 <_read_r+0xc>
    a840:	39 20 00 00 	li      r9,0
    a844:	93 c1 00 18 	stw     r30,24(r1)
    a848:	7f c8 02 a6 	mflr    r30
    a84c:	90 01 00 24 	stw     r0,36(r1)
    a850:	93 e1 00 1c 	stw     r31,28(r1)
    a854:	80 1e ff f0 	lwz     r0,-16(r30)
    a858:	93 a1 00 14 	stw     r29,20(r1)
    a85c:	7c 7d 1b 78 	mr      r29,r3
    a860:	7f c0 f2 14 	add     r30,r0,r30
    a864:	7c 83 23 78 	mr      r3,r4
    a868:	83 fe 80 00 	lwz     r31,-32768(r30)
    a86c:	7c a4 2b 78 	mr      r4,r5
    a870:	7c c5 33 78 	mr      r5,r6
    a874:	91 3f 00 00 	stw     r9,0(r31)
    a878:	4b ff 6b f5 	bl      146c <read>
    a87c:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    a880:	41 9e 00 20 	beq-    cr7,a8a0 <_read_r+0x6c>
    a884:	80 01 00 24 	lwz     r0,36(r1)
    a888:	83 a1 00 14 	lwz     r29,20(r1)
    a88c:	7c 08 03 a6 	mtlr    r0
    a890:	83 c1 00 18 	lwz     r30,24(r1)
    a894:	83 e1 00 1c 	lwz     r31,28(r1)
    a898:	38 21 00 20 	addi    r1,r1,32
    a89c:	4e 80 00 20 	blr
    a8a0:	81 3f 00 00 	lwz     r9,0(r31)
    a8a4:	2f 89 00 00 	cmpwi   cr7,r9,0
    a8a8:	41 be ff dc 	beq-    cr7,a884 <_read_r+0x50>
    a8ac:	80 01 00 24 	lwz     r0,36(r1)
    a8b0:	91 3d 00 00 	stw     r9,0(r29)
    a8b4:	7c 08 03 a6 	mtlr    r0
    a8b8:	83 a1 00 14 	lwz     r29,20(r1)
    a8bc:	83 c1 00 18 	lwz     r30,24(r1)
    a8c0:	83 e1 00 1c 	lwz     r31,28(r1)
    a8c4:	38 21 00 20 	addi    r1,r1,32
    a8c8:	4e 80 00 20 	blr
    a8cc:	00 00 a5 50 	.long 0xa550

0000a8d0 <_realloc_r>:
    a8d0:	94 21 ff c0 	stwu    r1,-64(r1)
    a8d4:	7c 08 02 a6 	mflr    r0
    a8d8:	42 9f 00 05 	bcl-    20,4*cr7+so,a8dc <_realloc_r+0xc>
    a8dc:	93 c1 00 38 	stw     r30,56(r1)
    a8e0:	7f c8 02 a6 	mflr    r30
    a8e4:	93 e1 00 3c 	stw     r31,60(r1)
    a8e8:	7c 9f 23 79 	mr.     r31,r4
    a8ec:	90 01 00 44 	stw     r0,68(r1)
    a8f0:	80 1e ff f0 	lwz     r0,-16(r30)
    a8f4:	93 81 00 30 	stw     r28,48(r1)
    a8f8:	7c bc 2b 78 	mr      r28,r5
    a8fc:	92 a1 00 14 	stw     r21,20(r1)
    a900:	7f c0 f2 14 	add     r30,r0,r30
    a904:	92 c1 00 18 	stw     r22,24(r1)
    a908:	92 e1 00 1c 	stw     r23,28(r1)
    a90c:	93 01 00 20 	stw     r24,32(r1)
    a910:	93 21 00 24 	stw     r25,36(r1)
    a914:	93 41 00 28 	stw     r26,40(r1)
    a918:	93 61 00 2c 	stw     r27,44(r1)
    a91c:	93 a1 00 34 	stw     r29,52(r1)
    a920:	41 82 02 ec 	beq-    ac0c <_realloc_r+0x33c>
    a924:	3b bc 00 0b 	addi    r29,r28,11
    a928:	7c 79 1b 78 	mr      r25,r3
    a92c:	4b ff c4 f1 	bl      6e1c <__malloc_lock>
    a930:	2b 9d 00 16 	cmplwi  cr7,r29,22
    a934:	81 3f ff fc 	lwz     r9,-4(r31)
    a938:	3b 1f ff f8 	addi    r24,r31,-8
    a93c:	55 3b 00 3a 	rlwinm  r27,r9,0,0,29
    a940:	41 9d 00 e4 	bgt-    cr7,aa24 <_realloc_r+0x154>
    a944:	39 00 00 10 	li      r8,16
    a948:	3b a0 00 10 	li      r29,16
    a94c:	7f 9c e8 40 	cmplw   cr7,r28,r29
    a950:	41 9d 00 e4 	bgt-    cr7,aa34 <_realloc_r+0x164>
    a954:	7f 9b 40 00 	cmpw    cr7,r27,r8
    a958:	40 9c 01 28 	bge-    cr7,aa80 <_realloc_r+0x1b0>
    a95c:	82 de 80 00 	lwz     r22,-32768(r30)
    a960:	7d 58 da 14 	add     r10,r24,r27
    a964:	80 f6 00 08 	lwz     r7,8(r22)
    a968:	7f 87 50 00 	cmpw    cr7,r7,r10
    a96c:	41 9e 02 e0 	beq-    cr7,ac4c <_realloc_r+0x37c>
    a970:	80 ca 00 04 	lwz     r6,4(r10)
    a974:	54 c5 00 3c 	rlwinm  r5,r6,0,0,30
    a978:	7c aa 2a 14 	add     r5,r10,r5
    a97c:	80 a5 00 04 	lwz     r5,4(r5)
    a980:	70 a4 00 01 	andi.   r4,r5,1
    a984:	41 82 01 74 	beq-    aaf8 <_realloc_r+0x228>
    a988:	38 c0 00 00 	li      r6,0
    a98c:	39 40 00 00 	li      r10,0
    a990:	71 25 00 01 	andi.   r5,r9,1
    a994:	40 82 01 c4 	bne-    ab58 <_realloc_r+0x288>
    a998:	82 ff ff f8 	lwz     r23,-8(r31)
    a99c:	2f 8a 00 00 	cmpwi   cr7,r10,0
    a9a0:	7e f7 c0 50 	subf    r23,r23,r24
    a9a4:	82 b7 00 04 	lwz     r21,4(r23)
    a9a8:	56 b5 00 3a 	rlwinm  r21,r21,0,0,29
    a9ac:	7e b5 da 14 	add     r21,r21,r27
    a9b0:	41 9e 01 a0 	beq-    cr7,ab50 <_realloc_r+0x280>
    a9b4:	7f 8a 38 00 	cmpw    cr7,r10,r7
    a9b8:	7f 46 aa 14 	add     r26,r6,r21
    a9bc:	41 9e 03 b8 	beq-    cr7,ad74 <_realloc_r+0x4a4>
    a9c0:	7f 9a 40 00 	cmpw    cr7,r26,r8
    a9c4:	41 9c 01 8c 	blt-    cr7,ab50 <_realloc_r+0x280>
    a9c8:	81 2a 00 08 	lwz     r9,8(r10)
    a9cc:	38 bb ff fc 	addi    r5,r27,-4
    a9d0:	81 0a 00 0c 	lwz     r8,12(r10)
    a9d4:	2b 85 00 24 	cmplwi  cr7,r5,36
    a9d8:	7e fc bb 78 	mr      r28,r23
    a9dc:	91 09 00 0c 	stw     r8,12(r9)
    a9e0:	91 28 00 08 	stw     r9,8(r8)
    a9e4:	81 57 00 0c 	lwz     r10,12(r23)
    a9e8:	85 3c 00 08 	lwzu    r9,8(r28)
    a9ec:	91 49 00 0c 	stw     r10,12(r9)
    a9f0:	91 2a 00 08 	stw     r9,8(r10)
    a9f4:	41 9d 04 50 	bgt-    cr7,ae44 <_realloc_r+0x574>
    a9f8:	2b 85 00 13 	cmplwi  cr7,r5,19
    a9fc:	40 9d 03 08 	ble-    cr7,ad04 <_realloc_r+0x434>
    aa00:	81 3f 00 00 	lwz     r9,0(r31)
    aa04:	2b 85 00 1b 	cmplwi  cr7,r5,27
    aa08:	91 37 00 08 	stw     r9,8(r23)
    aa0c:	81 3f 00 04 	lwz     r9,4(r31)
    aa10:	91 37 00 0c 	stw     r9,12(r23)
    aa14:	41 9d 04 78 	bgt-    cr7,ae8c <_realloc_r+0x5bc>
    aa18:	39 37 00 10 	addi    r9,r23,16
    aa1c:	39 5f 00 08 	addi    r10,r31,8
    aa20:	48 00 02 ec 	b       ad0c <_realloc_r+0x43c>
    aa24:	57 bd 00 38 	rlwinm  r29,r29,0,0,28
    aa28:	2f 9d 00 00 	cmpwi   cr7,r29,0
    aa2c:	7f a8 eb 78 	mr      r8,r29
    aa30:	40 9c ff 1c 	bge+    cr7,a94c <_realloc_r+0x7c>
    aa34:	80 01 00 44 	lwz     r0,68(r1)
    aa38:	3b 80 00 00 	li      r28,0
    aa3c:	39 20 00 0c 	li      r9,12
    aa40:	7f 83 e3 78 	mr      r3,r28
    aa44:	7c 08 03 a6 	mtlr    r0
    aa48:	91 39 00 00 	stw     r9,0(r25)
    aa4c:	82 a1 00 14 	lwz     r21,20(r1)
    aa50:	82 c1 00 18 	lwz     r22,24(r1)
    aa54:	82 e1 00 1c 	lwz     r23,28(r1)
    aa58:	83 01 00 20 	lwz     r24,32(r1)
    aa5c:	83 21 00 24 	lwz     r25,36(r1)
    aa60:	83 41 00 28 	lwz     r26,40(r1)
    aa64:	83 61 00 2c 	lwz     r27,44(r1)
    aa68:	83 81 00 30 	lwz     r28,48(r1)
    aa6c:	83 a1 00 34 	lwz     r29,52(r1)
    aa70:	83 c1 00 38 	lwz     r30,56(r1)
    aa74:	83 e1 00 3c 	lwz     r31,60(r1)
    aa78:	38 21 00 40 	addi    r1,r1,64
    aa7c:	4e 80 00 20 	blr
    aa80:	7f 7a db 78 	mr      r26,r27
    aa84:	7d 5d d0 50 	subf    r10,r29,r26
    aa88:	55 29 07 fe 	clrlwi  r9,r9,31
    aa8c:	2b 8a 00 0f 	cmplwi  cr7,r10,15
    aa90:	41 9d 00 8c 	bgt-    cr7,ab1c <_realloc_r+0x24c>
    aa94:	7d 29 d3 78 	or      r9,r9,r26
    aa98:	91 38 00 04 	stw     r9,4(r24)
    aa9c:	7f 18 d2 14 	add     r24,r24,r26
    aaa0:	81 38 00 04 	lwz     r9,4(r24)
    aaa4:	61 29 00 01 	ori     r9,r9,1
    aaa8:	91 38 00 04 	stw     r9,4(r24)
    aaac:	7f 23 cb 78 	mr      r3,r25
    aab0:	7f fc fb 78 	mr      r28,r31
    aab4:	4b ff c3 6d 	bl      6e20 <__malloc_unlock>
    aab8:	80 01 00 44 	lwz     r0,68(r1)
    aabc:	7f 83 e3 78 	mr      r3,r28
    aac0:	82 a1 00 14 	lwz     r21,20(r1)
    aac4:	7c 08 03 a6 	mtlr    r0
    aac8:	82 c1 00 18 	lwz     r22,24(r1)
    aacc:	82 e1 00 1c 	lwz     r23,28(r1)
    aad0:	83 01 00 20 	lwz     r24,32(r1)
    aad4:	83 21 00 24 	lwz     r25,36(r1)
    aad8:	83 41 00 28 	lwz     r26,40(r1)
    aadc:	83 61 00 2c 	lwz     r27,44(r1)
    aae0:	83 81 00 30 	lwz     r28,48(r1)
    aae4:	83 a1 00 34 	lwz     r29,52(r1)
    aae8:	83 c1 00 38 	lwz     r30,56(r1)
    aaec:	83 e1 00 3c 	lwz     r31,60(r1)
    aaf0:	38 21 00 40 	addi    r1,r1,64
    aaf4:	4e 80 00 20 	blr
    aaf8:	54 c6 00 3a 	rlwinm  r6,r6,0,0,29
    aafc:	7f 46 da 14 	add     r26,r6,r27
    ab00:	7f 9a 40 00 	cmpw    cr7,r26,r8
    ab04:	41 bc fe 8c 	blt-    cr7,a990 <_realloc_r+0xc0>
    ab08:	81 0a 00 0c 	lwz     r8,12(r10)
    ab0c:	81 4a 00 08 	lwz     r10,8(r10)
    ab10:	91 0a 00 0c 	stw     r8,12(r10)
    ab14:	91 48 00 08 	stw     r10,8(r8)
    ab18:	4b ff ff 6c 	b       aa84 <_realloc_r+0x1b4>
    ab1c:	7c 98 ea 14 	add     r4,r24,r29
    ab20:	61 48 00 01 	ori     r8,r10,1
    ab24:	7d 3d eb 78 	or      r29,r9,r29
    ab28:	7d 44 52 14 	add     r10,r4,r10
    ab2c:	93 b8 00 04 	stw     r29,4(r24)
    ab30:	7f 23 cb 78 	mr      r3,r25
    ab34:	91 04 00 04 	stw     r8,4(r4)
    ab38:	38 84 00 08 	addi    r4,r4,8
    ab3c:	81 2a 00 04 	lwz     r9,4(r10)
    ab40:	61 29 00 01 	ori     r9,r9,1
    ab44:	91 2a 00 04 	stw     r9,4(r10)
    ab48:	4b ff af 45 	bl      5a8c <_free_r>
    ab4c:	4b ff ff 60 	b       aaac <_realloc_r+0x1dc>
    ab50:	7f 95 40 00 	cmpw    cr7,r21,r8
    ab54:	40 9c 01 18 	bge-    cr7,ac6c <_realloc_r+0x39c>
    ab58:	7f 84 e3 78 	mr      r4,r28
    ab5c:	7f 23 cb 78 	mr      r3,r25
    ab60:	4b ff b8 29 	bl      6388 <_malloc_r>
    ab64:	7c 7c 1b 79 	mr.     r28,r3
    ab68:	41 82 00 5c 	beq-    abc4 <_realloc_r+0x2f4>
    ab6c:	81 3f ff fc 	lwz     r9,-4(r31)
    ab70:	39 1c ff f8 	addi    r8,r28,-8
    ab74:	55 2a 00 3c 	rlwinm  r10,r9,0,0,30
    ab78:	7d 58 52 14 	add     r10,r24,r10
    ab7c:	7f 88 50 00 	cmpw    cr7,r8,r10
    ab80:	41 9e 02 b4 	beq-    cr7,ae34 <_realloc_r+0x564>
    ab84:	38 bb ff fc 	addi    r5,r27,-4
    ab88:	2b 85 00 24 	cmplwi  cr7,r5,36
    ab8c:	41 9d 01 dc 	bgt-    cr7,ad68 <_realloc_r+0x498>
    ab90:	2b 85 00 13 	cmplwi  cr7,r5,19
    ab94:	41 9d 01 4c 	bgt-    cr7,ace0 <_realloc_r+0x410>
    ab98:	7f 89 e3 78 	mr      r9,r28
    ab9c:	7f ea fb 78 	mr      r10,r31
    aba0:	81 0a 00 00 	lwz     r8,0(r10)
    aba4:	91 09 00 00 	stw     r8,0(r9)
    aba8:	81 0a 00 04 	lwz     r8,4(r10)
    abac:	91 09 00 04 	stw     r8,4(r9)
    abb0:	81 4a 00 08 	lwz     r10,8(r10)
    abb4:	91 49 00 08 	stw     r10,8(r9)
    abb8:	7f 23 cb 78 	mr      r3,r25
    abbc:	7f e4 fb 78 	mr      r4,r31
    abc0:	4b ff ae cd 	bl      5a8c <_free_r>
    abc4:	7f 23 cb 78 	mr      r3,r25
    abc8:	4b ff c2 59 	bl      6e20 <__malloc_unlock>
    abcc:	80 01 00 44 	lwz     r0,68(r1)
    abd0:	7f 83 e3 78 	mr      r3,r28
    abd4:	82 a1 00 14 	lwz     r21,20(r1)
    abd8:	7c 08 03 a6 	mtlr    r0
    abdc:	82 c1 00 18 	lwz     r22,24(r1)
    abe0:	82 e1 00 1c 	lwz     r23,28(r1)
    abe4:	83 01 00 20 	lwz     r24,32(r1)
    abe8:	83 21 00 24 	lwz     r25,36(r1)
    abec:	83 41 00 28 	lwz     r26,40(r1)
    abf0:	83 61 00 2c 	lwz     r27,44(r1)
    abf4:	83 81 00 30 	lwz     r28,48(r1)
    abf8:	83 a1 00 34 	lwz     r29,52(r1)
    abfc:	83 c1 00 38 	lwz     r30,56(r1)
    ac00:	83 e1 00 3c 	lwz     r31,60(r1)
    ac04:	38 21 00 40 	addi    r1,r1,64
    ac08:	4e 80 00 20 	blr
    ac0c:	80 01 00 44 	lwz     r0,68(r1)
    ac10:	7c a4 2b 78 	mr      r4,r5
    ac14:	82 a1 00 14 	lwz     r21,20(r1)
    ac18:	82 c1 00 18 	lwz     r22,24(r1)
    ac1c:	7c 08 03 a6 	mtlr    r0
    ac20:	82 e1 00 1c 	lwz     r23,28(r1)
    ac24:	83 01 00 20 	lwz     r24,32(r1)
    ac28:	83 21 00 24 	lwz     r25,36(r1)
    ac2c:	83 41 00 28 	lwz     r26,40(r1)
    ac30:	83 61 00 2c 	lwz     r27,44(r1)
    ac34:	83 81 00 30 	lwz     r28,48(r1)
    ac38:	83 a1 00 34 	lwz     r29,52(r1)
    ac3c:	83 c1 00 38 	lwz     r30,56(r1)
    ac40:	83 e1 00 3c 	lwz     r31,60(r1)
    ac44:	38 21 00 40 	addi    r1,r1,64
    ac48:	4b ff b7 40 	b       6388 <_malloc_r>
    ac4c:	80 c7 00 04 	lwz     r6,4(r7)
    ac50:	38 bd 00 10 	addi    r5,r29,16
    ac54:	54 c6 00 3a 	rlwinm  r6,r6,0,0,29
    ac58:	7d 46 da 14 	add     r10,r6,r27
    ac5c:	7f 8a 28 00 	cmpw    cr7,r10,r5
    ac60:	40 9c 00 d4 	bge-    cr7,ad34 <_realloc_r+0x464>
    ac64:	7c ea 3b 78 	mr      r10,r7
    ac68:	4b ff fd 28 	b       a990 <_realloc_r+0xc0>
    ac6c:	38 bb ff fc 	addi    r5,r27,-4
    ac70:	7e fc bb 78 	mr      r28,r23
    ac74:	2b 85 00 24 	cmplwi  cr7,r5,36
    ac78:	81 57 00 0c 	lwz     r10,12(r23)
    ac7c:	85 3c 00 08 	lwzu    r9,8(r28)
    ac80:	91 49 00 0c 	stw     r10,12(r9)
    ac84:	91 2a 00 08 	stw     r9,8(r10)
    ac88:	41 9d 01 e4 	bgt-    cr7,ae6c <_realloc_r+0x59c>
    ac8c:	2b 85 00 13 	cmplwi  cr7,r5,19
    ac90:	40 9d 01 d0 	ble-    cr7,ae60 <_realloc_r+0x590>
    ac94:	81 3f 00 00 	lwz     r9,0(r31)
    ac98:	2b 85 00 1b 	cmplwi  cr7,r5,27
    ac9c:	91 37 00 08 	stw     r9,8(r23)
    aca0:	81 3f 00 04 	lwz     r9,4(r31)
    aca4:	91 37 00 0c 	stw     r9,12(r23)
    aca8:	41 9d 02 24 	bgt-    cr7,aecc <_realloc_r+0x5fc>
    acac:	39 37 00 10 	addi    r9,r23,16
    acb0:	39 5f 00 08 	addi    r10,r31,8
    acb4:	81 0a 00 00 	lwz     r8,0(r10)
    acb8:	7f 9f e3 78 	mr      r31,r28
    acbc:	7e ba ab 78 	mr      r26,r21
    acc0:	7e f8 bb 78 	mr      r24,r23
    acc4:	91 09 00 00 	stw     r8,0(r9)
    acc8:	81 0a 00 04 	lwz     r8,4(r10)
    accc:	91 09 00 04 	stw     r8,4(r9)
    acd0:	81 4a 00 08 	lwz     r10,8(r10)
    acd4:	91 49 00 08 	stw     r10,8(r9)
    acd8:	81 37 00 04 	lwz     r9,4(r23)
    acdc:	4b ff fd a8 	b       aa84 <_realloc_r+0x1b4>
    ace0:	81 3f 00 00 	lwz     r9,0(r31)
    ace4:	2b 85 00 1b 	cmplwi  cr7,r5,27
    ace8:	91 3c 00 00 	stw     r9,0(r28)
    acec:	81 3f 00 04 	lwz     r9,4(r31)
    acf0:	91 3c 00 04 	stw     r9,4(r28)
    acf4:	41 9d 01 1c 	bgt-    cr7,ae10 <_realloc_r+0x540>
    acf8:	39 3c 00 08 	addi    r9,r28,8
    acfc:	39 5f 00 08 	addi    r10,r31,8
    ad00:	4b ff fe a0 	b       aba0 <_realloc_r+0x2d0>
    ad04:	7f 89 e3 78 	mr      r9,r28
    ad08:	7f ea fb 78 	mr      r10,r31
    ad0c:	81 0a 00 00 	lwz     r8,0(r10)
    ad10:	7f 9f e3 78 	mr      r31,r28
    ad14:	7e f8 bb 78 	mr      r24,r23
    ad18:	91 09 00 00 	stw     r8,0(r9)
    ad1c:	81 0a 00 04 	lwz     r8,4(r10)
    ad20:	91 09 00 04 	stw     r8,4(r9)
    ad24:	81 4a 00 08 	lwz     r10,8(r10)
    ad28:	91 49 00 08 	stw     r10,8(r9)
    ad2c:	81 37 00 04 	lwz     r9,4(r23)
    ad30:	4b ff fd 54 	b       aa84 <_realloc_r+0x1b4>
    ad34:	7d 3d 50 50 	subf    r9,r29,r10
    ad38:	7f 18 ea 14 	add     r24,r24,r29
    ad3c:	61 29 00 01 	ori     r9,r9,1
    ad40:	93 16 00 08 	stw     r24,8(r22)
    ad44:	91 38 00 04 	stw     r9,4(r24)
    ad48:	7f 23 cb 78 	mr      r3,r25
    ad4c:	7f fc fb 78 	mr      r28,r31
    ad50:	81 3f ff fc 	lwz     r9,-4(r31)
    ad54:	55 29 07 fe 	clrlwi  r9,r9,31
    ad58:	7f bd 4b 78 	or      r29,r29,r9
    ad5c:	93 bf ff fc 	stw     r29,-4(r31)
    ad60:	4b ff c0 c1 	bl      6e20 <__malloc_unlock>
    ad64:	4b ff fd 54 	b       aab8 <_realloc_r+0x1e8>
    ad68:	7f e4 fb 78 	mr      r4,r31
    ad6c:	4b ff f9 5d 	bl      a6c8 <memmove>
    ad70:	4b ff fe 48 	b       abb8 <_realloc_r+0x2e8>
    ad74:	39 3d 00 10 	addi    r9,r29,16
    ad78:	7f 9a 48 00 	cmpw    cr7,r26,r9
    ad7c:	41 bc fd d4 	blt-    cr7,ab50 <_realloc_r+0x280>
    ad80:	38 bb ff fc 	addi    r5,r27,-4
    ad84:	7e fc bb 78 	mr      r28,r23
    ad88:	2b 85 00 24 	cmplwi  cr7,r5,36
    ad8c:	81 57 00 0c 	lwz     r10,12(r23)
    ad90:	85 3c 00 08 	lwzu    r9,8(r28)
    ad94:	91 49 00 0c 	stw     r10,12(r9)
    ad98:	91 2a 00 08 	stw     r9,8(r10)
    ad9c:	41 9d 01 98 	bgt-    cr7,af34 <_realloc_r+0x664>
    ada0:	2b 85 00 13 	cmplwi  cr7,r5,19
    ada4:	40 9d 01 68 	ble-    cr7,af0c <_realloc_r+0x63c>
    ada8:	81 3f 00 00 	lwz     r9,0(r31)
    adac:	2b 85 00 1b 	cmplwi  cr7,r5,27
    adb0:	91 37 00 08 	stw     r9,8(r23)
    adb4:	81 3f 00 04 	lwz     r9,4(r31)
    adb8:	91 37 00 0c 	stw     r9,12(r23)
    adbc:	41 9d 01 88 	bgt-    cr7,af44 <_realloc_r+0x674>
    adc0:	39 37 00 10 	addi    r9,r23,16
    adc4:	39 5f 00 08 	addi    r10,r31,8
    adc8:	81 0a 00 00 	lwz     r8,0(r10)
    adcc:	91 09 00 00 	stw     r8,0(r9)
    add0:	81 0a 00 04 	lwz     r8,4(r10)
    add4:	91 09 00 04 	stw     r8,4(r9)
    add8:	81 4a 00 08 	lwz     r10,8(r10)
    addc:	91 49 00 08 	stw     r10,8(r9)
    ade0:	7d 5d d0 50 	subf    r10,r29,r26
    ade4:	7d 37 ea 14 	add     r9,r23,r29
    ade8:	61 4a 00 01 	ori     r10,r10,1
    adec:	91 36 00 08 	stw     r9,8(r22)
    adf0:	91 49 00 04 	stw     r10,4(r9)
    adf4:	7f 23 cb 78 	mr      r3,r25
    adf8:	81 57 00 04 	lwz     r10,4(r23)
    adfc:	55 4a 07 fe 	clrlwi  r10,r10,31
    ae00:	7f bd 53 78 	or      r29,r29,r10
    ae04:	93 b7 00 04 	stw     r29,4(r23)
    ae08:	4b ff c0 19 	bl      6e20 <__malloc_unlock>
    ae0c:	4b ff fc ac 	b       aab8 <_realloc_r+0x1e8>
    ae10:	81 3f 00 08 	lwz     r9,8(r31)
    ae14:	2f 85 00 24 	cmpwi   cr7,r5,36
    ae18:	91 3c 00 08 	stw     r9,8(r28)
    ae1c:	81 3f 00 0c 	lwz     r9,12(r31)
    ae20:	91 3c 00 0c 	stw     r9,12(r28)
    ae24:	41 9e 00 8c 	beq-    cr7,aeb0 <_realloc_r+0x5e0>
    ae28:	39 3c 00 10 	addi    r9,r28,16
    ae2c:	39 5f 00 10 	addi    r10,r31,16
    ae30:	4b ff fd 70 	b       aba0 <_realloc_r+0x2d0>
    ae34:	83 5c ff fc 	lwz     r26,-4(r28)
    ae38:	57 5a 00 3a 	rlwinm  r26,r26,0,0,29
    ae3c:	7f 5a da 14 	add     r26,r26,r27
    ae40:	4b ff fc 44 	b       aa84 <_realloc_r+0x1b4>
    ae44:	7f e4 fb 78 	mr      r4,r31
    ae48:	7f 83 e3 78 	mr      r3,r28
    ae4c:	4b ff f8 7d 	bl      a6c8 <memmove>
    ae50:	7f 9f e3 78 	mr      r31,r28
    ae54:	81 37 00 04 	lwz     r9,4(r23)
    ae58:	7e f8 bb 78 	mr      r24,r23
    ae5c:	4b ff fc 28 	b       aa84 <_realloc_r+0x1b4>
    ae60:	7f 89 e3 78 	mr      r9,r28
    ae64:	7f ea fb 78 	mr      r10,r31
    ae68:	4b ff fe 4c 	b       acb4 <_realloc_r+0x3e4>
    ae6c:	7f e4 fb 78 	mr      r4,r31
    ae70:	7f 83 e3 78 	mr      r3,r28
    ae74:	4b ff f8 55 	bl      a6c8 <memmove>
    ae78:	7f 9f e3 78 	mr      r31,r28
    ae7c:	81 37 00 04 	lwz     r9,4(r23)
    ae80:	7e ba ab 78 	mr      r26,r21
    ae84:	7e f8 bb 78 	mr      r24,r23
    ae88:	4b ff fb fc 	b       aa84 <_realloc_r+0x1b4>
    ae8c:	81 3f 00 08 	lwz     r9,8(r31)
    ae90:	2f 85 00 24 	cmpwi   cr7,r5,36
    ae94:	91 37 00 10 	stw     r9,16(r23)
    ae98:	81 3f 00 0c 	lwz     r9,12(r31)
    ae9c:	91 37 00 14 	stw     r9,20(r23)
    aea0:	41 9e 00 50 	beq-    cr7,aef0 <_realloc_r+0x620>
    aea4:	39 37 00 18 	addi    r9,r23,24
    aea8:	39 5f 00 10 	addi    r10,r31,16
    aeac:	4b ff fe 60 	b       ad0c <_realloc_r+0x43c>
    aeb0:	81 5f 00 10 	lwz     r10,16(r31)
    aeb4:	39 3c 00 18 	addi    r9,r28,24
    aeb8:	91 5c 00 10 	stw     r10,16(r28)
    aebc:	39 5f 00 18 	addi    r10,r31,24
    aec0:	81 1f 00 14 	lwz     r8,20(r31)
    aec4:	91 1c 00 14 	stw     r8,20(r28)
    aec8:	4b ff fc d8 	b       aba0 <_realloc_r+0x2d0>
    aecc:	81 3f 00 08 	lwz     r9,8(r31)
    aed0:	2f 85 00 24 	cmpwi   cr7,r5,36
    aed4:	91 37 00 10 	stw     r9,16(r23)
    aed8:	81 3f 00 0c 	lwz     r9,12(r31)
    aedc:	91 37 00 14 	stw     r9,20(r23)
    aee0:	41 9e 00 38 	beq-    cr7,af18 <_realloc_r+0x648>
    aee4:	39 37 00 18 	addi    r9,r23,24
    aee8:	39 5f 00 10 	addi    r10,r31,16
    aeec:	4b ff fd c8 	b       acb4 <_realloc_r+0x3e4>
    aef0:	81 5f 00 10 	lwz     r10,16(r31)
    aef4:	39 37 00 20 	addi    r9,r23,32
    aef8:	91 57 00 18 	stw     r10,24(r23)
    aefc:	39 5f 00 18 	addi    r10,r31,24
    af00:	81 1f 00 14 	lwz     r8,20(r31)
    af04:	91 17 00 1c 	stw     r8,28(r23)
    af08:	4b ff fe 04 	b       ad0c <_realloc_r+0x43c>
    af0c:	7f 89 e3 78 	mr      r9,r28
    af10:	7f ea fb 78 	mr      r10,r31
    af14:	4b ff fe b4 	b       adc8 <_realloc_r+0x4f8>
    af18:	81 5f 00 10 	lwz     r10,16(r31)
    af1c:	39 37 00 20 	addi    r9,r23,32
    af20:	91 57 00 18 	stw     r10,24(r23)
    af24:	39 5f 00 18 	addi    r10,r31,24
    af28:	81 1f 00 14 	lwz     r8,20(r31)
    af2c:	91 17 00 1c 	stw     r8,28(r23)
    af30:	4b ff fd 84 	b       acb4 <_realloc_r+0x3e4>
    af34:	7f 83 e3 78 	mr      r3,r28
    af38:	7f e4 fb 78 	mr      r4,r31
    af3c:	4b ff f7 8d 	bl      a6c8 <memmove>
    af40:	4b ff fe a0 	b       ade0 <_realloc_r+0x510>
    af44:	81 3f 00 08 	lwz     r9,8(r31)
    af48:	2f 85 00 24 	cmpwi   cr7,r5,36
    af4c:	91 37 00 10 	stw     r9,16(r23)
    af50:	81 3f 00 0c 	lwz     r9,12(r31)
    af54:	91 37 00 14 	stw     r9,20(r23)
    af58:	41 9e 00 10 	beq-    cr7,af68 <_realloc_r+0x698>
    af5c:	39 37 00 18 	addi    r9,r23,24
    af60:	39 5f 00 10 	addi    r10,r31,16
    af64:	4b ff fe 64 	b       adc8 <_realloc_r+0x4f8>
    af68:	81 5f 00 10 	lwz     r10,16(r31)
    af6c:	39 37 00 20 	addi    r9,r23,32
    af70:	91 57 00 18 	stw     r10,24(r23)
    af74:	39 5f 00 18 	addi    r10,r31,24
    af78:	81 1f 00 14 	lwz     r8,20(r31)
    af7c:	91 17 00 1c 	stw     r8,28(r23)
    af80:	4b ff fe 48 	b       adc8 <_realloc_r+0x4f8>

0000af84 <cleanup_glue>:
    af84:	7c 08 02 a6 	mflr    r0
    af88:	94 21 ff e0 	stwu    r1,-32(r1)
    af8c:	93 e1 00 1c 	stw     r31,28(r1)
    af90:	7c 9f 23 78 	mr      r31,r4
    af94:	90 01 00 24 	stw     r0,36(r1)
    af98:	93 a1 00 14 	stw     r29,20(r1)
    af9c:	7c 7d 1b 78 	mr      r29,r3
    afa0:	80 84 00 00 	lwz     r4,0(r4)
    afa4:	93 c1 00 18 	stw     r30,24(r1)
    afa8:	2f 84 00 00 	cmpwi   cr7,r4,0
    afac:	41 9e 00 08 	beq-    cr7,afb4 <cleanup_glue+0x30>
    afb0:	4b ff ff d5 	bl      af84 <cleanup_glue>
    afb4:	80 01 00 24 	lwz     r0,36(r1)
    afb8:	7f a3 eb 78 	mr      r3,r29
    afbc:	83 c1 00 18 	lwz     r30,24(r1)
    afc0:	7f e4 fb 78 	mr      r4,r31
    afc4:	83 a1 00 14 	lwz     r29,20(r1)
    afc8:	7c 08 03 a6 	mtlr    r0
    afcc:	83 e1 00 1c 	lwz     r31,28(r1)
    afd0:	38 21 00 20 	addi    r1,r1,32
    afd4:	4b ff aa b8 	b       5a8c <_free_r>
    afd8:	00 00 9e 48 	.long 0x9e48

0000afdc <_reclaim_reent>:
    afdc:	94 21 ff e0 	stwu    r1,-32(r1)
    afe0:	7c 08 02 a6 	mflr    r0
    afe4:	42 9f 00 05 	bcl-    20,4*cr7+so,afe8 <_reclaim_reent+0xc>
    afe8:	93 c1 00 18 	stw     r30,24(r1)
    afec:	7f c8 02 a6 	mflr    r30
    aff0:	90 01 00 24 	stw     r0,36(r1)
    aff4:	93 a1 00 14 	stw     r29,20(r1)
    aff8:	7c 7d 1b 78 	mr      r29,r3
    affc:	80 1e ff f0 	lwz     r0,-16(r30)
    b000:	93 81 00 10 	stw     r28,16(r1)
    b004:	7f c0 f2 14 	add     r30,r0,r30
    b008:	93 e1 00 1c 	stw     r31,28(r1)
    b00c:	81 3e 80 00 	lwz     r9,-32768(r30)
    b010:	81 29 00 00 	lwz     r9,0(r9)
    b014:	7f 83 48 00 	cmpw    cr7,r3,r9
    b018:	41 9e 00 c4 	beq-    cr7,b0dc <_reclaim_reent+0x100>
    b01c:	81 43 00 4c 	lwz     r10,76(r3)
    b020:	2f 8a 00 00 	cmpwi   cr7,r10,0
    b024:	41 9e 00 54 	beq-    cr7,b078 <_reclaim_reent+0x9c>
    b028:	39 20 00 00 	li      r9,0
    b02c:	3b 80 00 00 	li      r28,0
    b030:	55 29 10 3a 	rlwinm  r9,r9,2,0,29
    b034:	7c 8a 48 2e 	lwzx    r4,r10,r9
    b038:	2f 84 00 00 	cmpwi   cr7,r4,0
    b03c:	41 9e 00 20 	beq-    cr7,b05c <_reclaim_reent+0x80>
    b040:	83 e4 00 00 	lwz     r31,0(r4)
    b044:	7f a3 eb 78 	mr      r3,r29
    b048:	4b ff aa 45 	bl      5a8c <_free_r>
    b04c:	2f 9f 00 00 	cmpwi   cr7,r31,0
    b050:	7f e4 fb 78 	mr      r4,r31
    b054:	40 9e ff ec 	bne+    cr7,b040 <_reclaim_reent+0x64>
    b058:	81 5d 00 4c 	lwz     r10,76(r29)
    b05c:	3b 9c 00 01 	addi    r28,r28,1
    b060:	2f 9c 00 20 	cmpwi   cr7,r28,32
    b064:	7f 89 e3 78 	mr      r9,r28
    b068:	40 9e ff c8 	bne+    cr7,b030 <_reclaim_reent+0x54>
    b06c:	7f a3 eb 78 	mr      r3,r29
    b070:	7d 44 53 78 	mr      r4,r10
    b074:	4b ff aa 19 	bl      5a8c <_free_r>
    b078:	80 9d 00 40 	lwz     r4,64(r29)
    b07c:	2f 84 00 00 	cmpwi   cr7,r4,0
    b080:	41 9e 00 0c 	beq-    cr7,b08c <_reclaim_reent+0xb0>
    b084:	7f a3 eb 78 	mr      r3,r29
    b088:	4b ff aa 05 	bl      5a8c <_free_r>
    b08c:	80 9d 01 48 	lwz     r4,328(r29)
    b090:	2f 84 00 00 	cmpwi   cr7,r4,0
    b094:	41 9e 00 28 	beq-    cr7,b0bc <_reclaim_reent+0xe0>
    b098:	3b 9d 01 4c 	addi    r28,r29,332
    b09c:	7f 84 e0 00 	cmpw    cr7,r4,r28
    b0a0:	41 9e 00 1c 	beq-    cr7,b0bc <_reclaim_reent+0xe0>
    b0a4:	83 e4 00 00 	lwz     r31,0(r4)
    b0a8:	7f a3 eb 78 	mr      r3,r29
    b0ac:	4b ff a9 e1 	bl      5a8c <_free_r>
    b0b0:	7f 9c f8 00 	cmpw    cr7,r28,r31
    b0b4:	7f e4 fb 78 	mr      r4,r31
    b0b8:	40 9e ff ec 	bne+    cr7,b0a4 <_reclaim_reent+0xc8>
    b0bc:	80 9d 00 54 	lwz     r4,84(r29)
    b0c0:	2f 84 00 00 	cmpwi   cr7,r4,0
    b0c4:	41 9e 00 0c 	beq-    cr7,b0d0 <_reclaim_reent+0xf4>
    b0c8:	7f a3 eb 78 	mr      r3,r29
    b0cc:	4b ff a9 c1 	bl      5a8c <_free_r>
    b0d0:	81 3d 00 38 	lwz     r9,56(r29)
    b0d4:	2f 89 00 00 	cmpwi   cr7,r9,0
    b0d8:	40 9e 00 24 	bne-    cr7,b0fc <_reclaim_reent+0x120>
    b0dc:	80 01 00 24 	lwz     r0,36(r1)
    b0e0:	83 81 00 10 	lwz     r28,16(r1)
    b0e4:	7c 08 03 a6 	mtlr    r0
    b0e8:	83 a1 00 14 	lwz     r29,20(r1)
    b0ec:	83 c1 00 18 	lwz     r30,24(r1)
    b0f0:	83 e1 00 1c 	lwz     r31,28(r1)
    b0f4:	38 21 00 20 	addi    r1,r1,32
    b0f8:	4e 80 00 20 	blr
    b0fc:	81 3d 00 3c 	lwz     r9,60(r29)
    b100:	7f a3 eb 78 	mr      r3,r29
    b104:	7d 29 03 a6 	mtctr   r9
    b108:	4e 80 04 21 	bctrl
    b10c:	80 9d 02 e0 	lwz     r4,736(r29)
    b110:	2f 84 00 00 	cmpwi   cr7,r4,0
    b114:	41 be ff c8 	beq-    cr7,b0dc <_reclaim_reent+0x100>
    b118:	80 01 00 24 	lwz     r0,36(r1)
    b11c:	7f a3 eb 78 	mr      r3,r29
    b120:	83 81 00 10 	lwz     r28,16(r1)
    b124:	83 a1 00 14 	lwz     r29,20(r1)
    b128:	7c 08 03 a6 	mtlr    r0
    b12c:	83 c1 00 18 	lwz     r30,24(r1)
    b130:	83 e1 00 1c 	lwz     r31,28(r1)
    b134:	38 21 00 20 	addi    r1,r1,32
    b138:	4b ff fe 4c 	b       af84 <cleanup_glue>
    b13c:	00 00 9c e4 	.long 0x9ce4

0000b140 <_wrapup_reent>:
    b140:	94 21 ff e0 	stwu    r1,-32(r1)
    b144:	7c 08 02 a6 	mflr    r0
    b148:	42 9f 00 05 	bcl-    20,4*cr7+so,b14c <_wrapup_reent+0xc>
    b14c:	93 c1 00 18 	stw     r30,24(r1)
    b150:	7f c8 02 a6 	mflr    r30
    b154:	93 61 00 0c 	stw     r27,12(r1)
    b158:	7c 7b 1b 79 	mr.     r27,r3
    b15c:	90 01 00 24 	stw     r0,36(r1)
    b160:	80 1e ff f0 	lwz     r0,-16(r30)
    b164:	93 81 00 10 	stw     r28,16(r1)
    b168:	93 a1 00 14 	stw     r29,20(r1)
    b16c:	7f c0 f2 14 	add     r30,r0,r30
    b170:	93 e1 00 1c 	stw     r31,28(r1)
    b174:	41 82 00 a8 	beq-    b21c <_wrapup_reent+0xdc>
    b178:	83 9b 01 48 	lwz     r28,328(r27)
    b17c:	2f 9c 00 00 	cmpwi   cr7,r28,0
    b180:	41 9e 00 40 	beq-    cr7,b1c0 <_wrapup_reent+0x80>
    b184:	81 3c 00 04 	lwz     r9,4(r28)
    b188:	37 e9 ff ff 	addic.  r31,r9,-1
    b18c:	55 3d 10 3a 	rlwinm  r29,r9,2,0,29
    b190:	7f bc ea 14 	add     r29,r28,r29
    b194:	3b bd 00 08 	addi    r29,r29,8
    b198:	41 80 00 1c 	blt-    b1b4 <_wrapup_reent+0x74>
    b19c:	85 3d ff fc 	lwzu    r9,-4(r29)
    b1a0:	7d 29 03 a6 	mtctr   r9
    b1a4:	4e 80 04 21 	bctrl
    b1a8:	2f 9f 00 00 	cmpwi   cr7,r31,0
    b1ac:	3b ff ff ff 	addi    r31,r31,-1
    b1b0:	40 9e ff ec 	bne+    cr7,b19c <_wrapup_reent+0x5c>
    b1b4:	83 9c 00 00 	lwz     r28,0(r28)
    b1b8:	2f 9c 00 00 	cmpwi   cr7,r28,0
    b1bc:	40 9e ff c8 	bne+    cr7,b184 <_wrapup_reent+0x44>
    b1c0:	81 3b 00 3c 	lwz     r9,60(r27)
    b1c4:	2f 89 00 00 	cmpwi   cr7,r9,0
    b1c8:	41 9e 00 30 	beq-    cr7,b1f8 <_wrapup_reent+0xb8>
    b1cc:	80 01 00 24 	lwz     r0,36(r1)
    b1d0:	7f 63 db 78 	mr      r3,r27
    b1d4:	83 81 00 10 	lwz     r28,16(r1)
    b1d8:	7d 29 03 a6 	mtctr   r9
    b1dc:	83 61 00 0c 	lwz     r27,12(r1)
    b1e0:	83 a1 00 14 	lwz     r29,20(r1)
    b1e4:	7c 08 03 a6 	mtlr    r0
    b1e8:	83 c1 00 18 	lwz     r30,24(r1)
    b1ec:	83 e1 00 1c 	lwz     r31,28(r1)
    b1f0:	38 21 00 20 	addi    r1,r1,32
    b1f4:	4e 80 04 20 	bctr
    b1f8:	80 01 00 24 	lwz     r0,36(r1)
    b1fc:	83 61 00 0c 	lwz     r27,12(r1)
    b200:	7c 08 03 a6 	mtlr    r0
    b204:	83 81 00 10 	lwz     r28,16(r1)
    b208:	83 a1 00 14 	lwz     r29,20(r1)
    b20c:	83 c1 00 18 	lwz     r30,24(r1)
    b210:	83 e1 00 1c 	lwz     r31,28(r1)
    b214:	38 21 00 20 	addi    r1,r1,32
    b218:	4e 80 00 20 	blr
    b21c:	81 3e 80 00 	lwz     r9,-32768(r30)
    b220:	83 69 00 00 	lwz     r27,0(r9)
    b224:	4b ff ff 54 	b       b178 <_wrapup_reent+0x38>

0000b228 <__swbuf_r>:
    b228:	94 21 ff e0 	stwu    r1,-32(r1)
    b22c:	7c 08 02 a6 	mflr    r0
    b230:	93 81 00 10 	stw     r28,16(r1)
    b234:	7c 7c 1b 79 	mr.     r28,r3
    b238:	93 a1 00 14 	stw     r29,20(r1)
    b23c:	7c 9d 23 78 	mr      r29,r4
    b240:	93 e1 00 1c 	stw     r31,28(r1)
    b244:	7c bf 2b 78 	mr      r31,r5
    b248:	90 01 00 24 	stw     r0,36(r1)
    b24c:	93 c1 00 18 	stw     r30,24(r1)
    b250:	41 82 00 10 	beq-    b260 <__swbuf_r+0x38>
    b254:	81 3c 00 38 	lwz     r9,56(r28)
    b258:	2f 89 00 00 	cmpwi   cr7,r9,0
    b25c:	41 9e 01 50 	beq-    cr7,b3ac <__swbuf_r+0x184>
    b260:	a9 3f 00 0c 	lha     r9,12(r31)
    b264:	81 5f 00 18 	lwz     r10,24(r31)
    b268:	55 28 07 38 	rlwinm  r8,r9,0,28,28
    b26c:	7d 07 07 35 	extsh.  r7,r8
    b270:	91 5f 00 08 	stw     r10,8(r31)
    b274:	41 82 01 18 	beq-    b38c <__swbuf_r+0x164>
    b278:	81 5f 00 10 	lwz     r10,16(r31)
    b27c:	2f 8a 00 00 	cmpwi   cr7,r10,0
    b280:	41 9e 01 0c 	beq-    cr7,b38c <__swbuf_r+0x164>
    b284:	55 28 04 a4 	rlwinm  r8,r9,0,18,18
    b288:	57 bd 06 3e 	clrlwi  r29,r29,24
    b28c:	7d 07 07 35 	extsh.  r7,r8
    b290:	41 82 00 78 	beq-    b308 <__swbuf_r+0xe0>
    b294:	81 3f 00 00 	lwz     r9,0(r31)
    b298:	81 1f 00 14 	lwz     r8,20(r31)
    b29c:	7d 4a 48 50 	subf    r10,r10,r9
    b2a0:	7f 8a 40 00 	cmpw    cr7,r10,r8
    b2a4:	40 9c 00 8c 	bge-    cr7,b330 <__swbuf_r+0x108>
    b2a8:	81 1f 00 08 	lwz     r8,8(r31)
    b2ac:	38 e9 00 01 	addi    r7,r9,1
    b2b0:	39 4a 00 01 	addi    r10,r10,1
    b2b4:	39 08 ff ff 	addi    r8,r8,-1
    b2b8:	91 1f 00 08 	stw     r8,8(r31)
    b2bc:	9b a9 00 00 	stb     r29,0(r9)
    b2c0:	90 ff 00 00 	stw     r7,0(r31)
    b2c4:	81 3f 00 14 	lwz     r9,20(r31)
    b2c8:	7f 89 50 00 	cmpw    cr7,r9,r10
    b2cc:	41 9e 00 a4 	beq-    cr7,b370 <__swbuf_r+0x148>
    b2d0:	a1 3f 00 0c 	lhz     r9,12(r31)
    b2d4:	71 2a 00 01 	andi.   r10,r9,1
    b2d8:	41 82 00 0c 	beq-    b2e4 <__swbuf_r+0xbc>
    b2dc:	2f 9d 00 0a 	cmpwi   cr7,r29,10
    b2e0:	41 9e 00 90 	beq-    cr7,b370 <__swbuf_r+0x148>
    b2e4:	80 01 00 24 	lwz     r0,36(r1)
    b2e8:	7f a3 eb 78 	mr      r3,r29
    b2ec:	83 81 00 10 	lwz     r28,16(r1)
    b2f0:	7c 08 03 a6 	mtlr    r0
    b2f4:	83 a1 00 14 	lwz     r29,20(r1)
    b2f8:	83 c1 00 18 	lwz     r30,24(r1)
    b2fc:	83 e1 00 1c 	lwz     r31,28(r1)
    b300:	38 21 00 20 	addi    r1,r1,32
    b304:	4e 80 00 20 	blr
    b308:	81 1f 00 64 	lwz     r8,100(r31)
    b30c:	61 29 20 00 	ori     r9,r9,8192
    b310:	b1 3f 00 0c 	sth     r9,12(r31)
    b314:	55 08 04 e2 	rlwinm  r8,r8,0,19,17
    b318:	81 3f 00 00 	lwz     r9,0(r31)
    b31c:	91 1f 00 64 	stw     r8,100(r31)
    b320:	81 1f 00 14 	lwz     r8,20(r31)
    b324:	7d 4a 48 50 	subf    r10,r10,r9
    b328:	7f 8a 40 00 	cmpw    cr7,r10,r8
    b32c:	41 9c ff 7c 	blt+    cr7,b2a8 <__swbuf_r+0x80>
    b330:	7f 83 e3 78 	mr      r3,r28
    b334:	7f e4 fb 78 	mr      r4,r31
    b338:	4b ff a0 f1 	bl      5428 <_fflush_r>
    b33c:	2f 83 00 00 	cmpwi   cr7,r3,0
    b340:	40 9e 00 44 	bne-    cr7,b384 <__swbuf_r+0x15c>
    b344:	81 1f 00 08 	lwz     r8,8(r31)
    b348:	39 40 00 01 	li      r10,1
    b34c:	81 3f 00 00 	lwz     r9,0(r31)
    b350:	39 08 ff ff 	addi    r8,r8,-1
    b354:	91 1f 00 08 	stw     r8,8(r31)
    b358:	38 e9 00 01 	addi    r7,r9,1
    b35c:	9b a9 00 00 	stb     r29,0(r9)
    b360:	90 ff 00 00 	stw     r7,0(r31)
    b364:	81 3f 00 14 	lwz     r9,20(r31)
    b368:	7f 89 50 00 	cmpw    cr7,r9,r10
    b36c:	40 9e ff 64 	bne+    cr7,b2d0 <__swbuf_r+0xa8>
    b370:	7f 83 e3 78 	mr      r3,r28
    b374:	7f e4 fb 78 	mr      r4,r31
    b378:	4b ff a0 b1 	bl      5428 <_fflush_r>
    b37c:	2f 83 00 00 	cmpwi   cr7,r3,0
    b380:	41 9e ff 64 	beq+    cr7,b2e4 <__swbuf_r+0xbc>
    b384:	3b a0 ff ff 	li      r29,-1
    b388:	4b ff ff 5c 	b       b2e4 <__swbuf_r+0xbc>
    b38c:	7f 83 e3 78 	mr      r3,r28
    b390:	7f e4 fb 78 	mr      r4,r31
    b394:	4b ff 86 69 	bl      39fc <__swsetup_r>
    b398:	2f 83 00 00 	cmpwi   cr7,r3,0
    b39c:	40 be ff e8 	bne-    cr7,b384 <__swbuf_r+0x15c>
    b3a0:	a9 3f 00 0c 	lha     r9,12(r31)
    b3a4:	81 5f 00 10 	lwz     r10,16(r31)
    b3a8:	4b ff fe dc 	b       b284 <__swbuf_r+0x5c>
    b3ac:	4b ff a2 fd 	bl      56a8 <__sinit>
    b3b0:	4b ff fe b0 	b       b260 <__swbuf_r+0x38>
    b3b4:	00 00 9a 70 	.long 0x9a70

0000b3b8 <__swbuf>:
    b3b8:	94 21 ff f0 	stwu    r1,-16(r1)
    b3bc:	7c 08 02 a6 	mflr    r0
    b3c0:	42 9f 00 05 	bcl-    20,4*cr7+so,b3c4 <__swbuf+0xc>
    b3c4:	7c 69 1b 78 	mr      r9,r3
    b3c8:	93 c1 00 08 	stw     r30,8(r1)
    b3cc:	7f c8 02 a6 	mflr    r30
    b3d0:	90 01 00 14 	stw     r0,20(r1)
    b3d4:	7c 85 23 78 	mr      r5,r4
    b3d8:	7d 24 4b 78 	mr      r4,r9
    b3dc:	80 1e ff f0 	lwz     r0,-16(r30)
    b3e0:	7f c0 f2 14 	add     r30,r0,r30
    b3e4:	80 01 00 14 	lwz     r0,20(r1)
    b3e8:	81 5e 80 00 	lwz     r10,-32768(r30)
    b3ec:	7c 08 03 a6 	mtlr    r0
    b3f0:	83 c1 00 08 	lwz     r30,8(r1)
    b3f4:	80 6a 00 00 	lwz     r3,0(r10)
    b3f8:	38 21 00 10 	addi    r1,r1,16
    b3fc:	4b ff fe 2c 	b       b228 <__swbuf_r>
    b400:	00 00 9a 28 	.long 0x9a28

0000b404 <_wcrtomb_r>:
    b404:	94 21 ff c0 	stwu    r1,-64(r1)
    b408:	7c 08 02 a6 	mflr    r0
    b40c:	42 9f 00 05 	bcl-    20,4*cr7+so,b410 <_wcrtomb_r+0xc>
    b410:	93 c1 00 38 	stw     r30,56(r1)
    b414:	7f c8 02 a6 	mflr    r30
    b418:	93 81 00 30 	stw     r28,48(r1)
    b41c:	7c 9c 23 79 	mr.     r28,r4
    b420:	90 01 00 44 	stw     r0,68(r1)
    b424:	80 1e ff f0 	lwz     r0,-16(r30)
    b428:	93 a1 00 34 	stw     r29,52(r1)
    b42c:	7c dd 33 78 	mr      r29,r6
    b430:	7f c0 f2 14 	add     r30,r0,r30
    b434:	93 e1 00 3c 	stw     r31,60(r1)
    b438:	93 61 00 2c 	stw     r27,44(r1)
    b43c:	7c 7f 1b 78 	mr      r31,r3
    b440:	81 3e 80 00 	lwz     r9,-32768(r30)
    b444:	41 82 00 68 	beq-    b4ac <_wcrtomb_r+0xa8>
    b448:	83 69 00 00 	lwz     r27,0(r9)
    b44c:	90 a1 00 18 	stw     r5,24(r1)
    b450:	4b ff ab d1 	bl      6020 <__locale_charset>
    b454:	7c 66 1b 78 	mr      r6,r3
    b458:	7f 84 e3 78 	mr      r4,r28
    b45c:	7f e3 fb 78 	mr      r3,r31
    b460:	80 a1 00 18 	lwz     r5,24(r1)
    b464:	7f a7 eb 78 	mr      r7,r29
    b468:	7f 69 03 a6 	mtctr   r27
    b46c:	4e 80 04 21 	bctrl
    b470:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    b474:	40 be 00 14 	bne+    cr7,b488 <_wcrtomb_r+0x84>
    b478:	39 40 00 00 	li      r10,0
    b47c:	91 5d 00 00 	stw     r10,0(r29)
    b480:	39 40 00 8a 	li      r10,138
    b484:	91 5f 00 00 	stw     r10,0(r31)
    b488:	80 01 00 44 	lwz     r0,68(r1)
    b48c:	83 61 00 2c 	lwz     r27,44(r1)
    b490:	7c 08 03 a6 	mtlr    r0
    b494:	83 81 00 30 	lwz     r28,48(r1)
    b498:	83 a1 00 34 	lwz     r29,52(r1)
    b49c:	83 c1 00 38 	lwz     r30,56(r1)
    b4a0:	83 e1 00 3c 	lwz     r31,60(r1)
    b4a4:	38 21 00 40 	addi    r1,r1,64
    b4a8:	4e 80 00 20 	blr
    b4ac:	83 89 00 00 	lwz     r28,0(r9)
    b4b0:	4b ff ab 71 	bl      6020 <__locale_charset>
    b4b4:	7c 66 1b 78 	mr      r6,r3
    b4b8:	38 81 00 08 	addi    r4,r1,8
    b4bc:	7f e3 fb 78 	mr      r3,r31
    b4c0:	38 a0 00 00 	li      r5,0
    b4c4:	7f a7 eb 78 	mr      r7,r29
    b4c8:	7f 89 03 a6 	mtctr   r28
    b4cc:	4e 80 04 21 	bctrl
    b4d0:	4b ff ff a0 	b       b470 <_wcrtomb_r+0x6c>
    b4d4:	00 00 99 54 	.long 0x9954

0000b4d8 <wcrtomb>:
    b4d8:	94 21 ff c0 	stwu    r1,-64(r1)
    b4dc:	7c 08 02 a6 	mflr    r0
    b4e0:	42 9f 00 05 	bcl-    20,4*cr7+so,b4e4 <wcrtomb+0xc>
    b4e4:	93 c1 00 38 	stw     r30,56(r1)
    b4e8:	7f c8 02 a6 	mflr    r30
    b4ec:	93 61 00 2c 	stw     r27,44(r1)
    b4f0:	7c 7b 1b 79 	mr.     r27,r3
    b4f4:	90 01 00 44 	stw     r0,68(r1)
    b4f8:	80 1e ff f0 	lwz     r0,-16(r30)
    b4fc:	93 e1 00 3c 	stw     r31,60(r1)
    b500:	7c bf 2b 78 	mr      r31,r5
    b504:	93 21 00 24 	stw     r25,36(r1)
    b508:	7f c0 f2 14 	add     r30,r0,r30
    b50c:	93 41 00 28 	stw     r26,40(r1)
    b510:	93 81 00 30 	stw     r28,48(r1)
    b514:	93 a1 00 34 	stw     r29,52(r1)
    b518:	41 82 00 80 	beq-    b598 <wcrtomb+0xc0>
    b51c:	83 be 80 04 	lwz     r29,-32764(r30)
    b520:	7c 9c 23 78 	mr      r28,r4
    b524:	81 3e 80 00 	lwz     r9,-32768(r30)
    b528:	83 3d 00 00 	lwz     r25,0(r29)
    b52c:	83 49 00 00 	lwz     r26,0(r9)
    b530:	4b ff aa f1 	bl      6020 <__locale_charset>
    b534:	7c 66 1b 78 	mr      r6,r3
    b538:	7f 64 db 78 	mr      r4,r27
    b53c:	7f 23 cb 78 	mr      r3,r25
    b540:	7f 85 e3 78 	mr      r5,r28
    b544:	7f e7 fb 78 	mr      r7,r31
    b548:	7f 49 03 a6 	mtctr   r26
    b54c:	4e 80 04 21 	bctrl
    b550:	2f 83 ff ff 	cmpwi   cr7,r3,-1
    b554:	40 be 00 18 	bne+    cr7,b56c <wcrtomb+0x94>
    b558:	81 3d 00 00 	lwz     r9,0(r29)
    b55c:	39 40 00 00 	li      r10,0
    b560:	91 5f 00 00 	stw     r10,0(r31)
    b564:	39 40 00 8a 	li      r10,138
    b568:	91 49 00 00 	stw     r10,0(r9)
    b56c:	80 01 00 44 	lwz     r0,68(r1)
    b570:	83 21 00 24 	lwz     r25,36(r1)
    b574:	7c 08 03 a6 	mtlr    r0
    b578:	83 41 00 28 	lwz     r26,40(r1)
    b57c:	83 61 00 2c 	lwz     r27,44(r1)
    b580:	83 81 00 30 	lwz     r28,48(r1)
    b584:	83 a1 00 34 	lwz     r29,52(r1)
    b588:	83 c1 00 38 	lwz     r30,56(r1)
    b58c:	83 e1 00 3c 	lwz     r31,60(r1)
    b590:	38 21 00 40 	addi    r1,r1,64
    b594:	4e 80 00 20 	blr
    b598:	83 be 80 04 	lwz     r29,-32764(r30)
    b59c:	81 3e 80 00 	lwz     r9,-32768(r30)
    b5a0:	83 7d 00 00 	lwz     r27,0(r29)
    b5a4:	83 89 00 00 	lwz     r28,0(r9)
    b5a8:	4b ff aa 79 	bl      6020 <__locale_charset>
    b5ac:	7c 66 1b 78 	mr      r6,r3
    b5b0:	38 81 00 08 	addi    r4,r1,8
    b5b4:	7f 63 db 78 	mr      r3,r27
    b5b8:	38 a0 00 00 	li      r5,0
    b5bc:	7f e7 fb 78 	mr      r7,r31
    b5c0:	7f 89 03 a6 	mtctr   r28
    b5c4:	4e 80 04 21 	bctrl
    b5c8:	4b ff ff 88 	b       b550 <wcrtomb+0x78>

0000b5cc <__ascii_wctomb>:
    b5cc:	2c 04 00 00 	cmpwi   r4,0
    b5d0:	41 82 00 18 	beq-    b5e8 <__ascii_wctomb+0x1c>
    b5d4:	2b 85 00 ff 	cmplwi  cr7,r5,255
    b5d8:	41 9d 00 18 	bgt-    cr7,b5f0 <__ascii_wctomb+0x24>
    b5dc:	98 a4 00 00 	stb     r5,0(r4)
    b5e0:	38 60 00 01 	li      r3,1
    b5e4:	4e 80 00 20 	blr
    b5e8:	38 60 00 00 	li      r3,0
    b5ec:	4e 80 00 20 	blr
    b5f0:	39 20 00 8a 	li      r9,138
    b5f4:	91 23 00 00 	stw     r9,0(r3)
    b5f8:	38 60 ff ff 	li      r3,-1
    b5fc:	4e 80 00 20 	blr
    b600:	00 00 98 30 	.long 0x9830

0000b604 <_wctomb_r>:
    b604:	94 21 ff e0 	stwu    r1,-32(r1)
    b608:	7c 08 02 a6 	mflr    r0
    b60c:	42 9f 00 05 	bcl-    20,4*cr7+so,b610 <_wctomb_r+0xc>
    b610:	93 c1 00 18 	stw     r30,24(r1)
    b614:	7f c8 02 a6 	mflr    r30
    b618:	90 01 00 24 	stw     r0,36(r1)
    b61c:	93 81 00 10 	stw     r28,16(r1)
    b620:	7c 7c 1b 78 	mr      r28,r3
    b624:	80 1e ff f0 	lwz     r0,-16(r30)
    b628:	93 a1 00 14 	stw     r29,20(r1)
    b62c:	7c dd 33 78 	mr      r29,r6
    b630:	7f c0 f2 14 	add     r30,r0,r30
    b634:	93 e1 00 1c 	stw     r31,28(r1)
    b638:	81 3e 80 00 	lwz     r9,-32768(r30)
    b63c:	83 e9 00 00 	lwz     r31,0(r9)
    b640:	90 81 00 08 	stw     r4,8(r1)
    b644:	90 a1 00 0c 	stw     r5,12(r1)
    b648:	4b ff a9 d9 	bl      6020 <__locale_charset>
    b64c:	80 01 00 24 	lwz     r0,36(r1)
    b650:	7c 66 1b 78 	mr      r6,r3
    b654:	80 81 00 08 	lwz     r4,8(r1)
    b658:	7f 83 e3 78 	mr      r3,r28
    b65c:	80 a1 00 0c 	lwz     r5,12(r1)
    b660:	7f a7 eb 78 	mr      r7,r29
    b664:	83 81 00 10 	lwz     r28,16(r1)
    b668:	7f e9 03 a6 	mtctr   r31
    b66c:	83 a1 00 14 	lwz     r29,20(r1)
    b670:	83 c1 00 18 	lwz     r30,24(r1)
    b674:	7c 08 03 a6 	mtlr    r0
    b678:	83 e1 00 1c 	lwz     r31,28(r1)
    b67c:	38 21 00 20 	addi    r1,r1,32
    b680:	4e 80 04 20 	bctr

0000b684 <__udivdi3>:
    b684:	2c 05 00 00 	cmpwi   r5,0
    b688:	94 21 ff e0 	stwu    r1,-32(r1)
    b68c:	93 a1 00 14 	stw     r29,20(r1)
    b690:	93 c1 00 18 	stw     r30,24(r1)
    b694:	93 e1 00 1c 	stw     r31,28(r1)
    b698:	40 82 00 f0 	bne-    b788 <__udivdi3+0x104>
    b69c:	7f 86 18 40 	cmplw   cr7,r6,r3
    b6a0:	7c 89 23 78 	mr      r9,r4
    b6a4:	7c 6a 1b 78 	mr      r10,r3
    b6a8:	40 9d 01 0c 	ble-    cr7,b7b4 <__udivdi3+0x130>
    b6ac:	7c c8 00 34 	cntlzw  r8,r6
    b6b0:	2f 88 00 00 	cmpwi   cr7,r8,0
    b6b4:	41 9e 00 1c 	beq-    cr7,b6d0 <__udivdi3+0x4c>
    b6b8:	20 e8 00 20 	subfic  r7,r8,32
    b6bc:	7c 6a 40 30 	slw     r10,r3,r8
    b6c0:	7c 87 3c 30 	srw     r7,r4,r7
    b6c4:	7c c6 40 30 	slw     r6,r6,r8
    b6c8:	7c ea 53 78 	or      r10,r7,r10
    b6cc:	7c 89 40 30 	slw     r9,r4,r8
    b6d0:	54 c8 84 3e 	rlwinm  r8,r6,16,16,31
    b6d4:	54 c3 04 3e 	clrlwi  r3,r6,16
    b6d8:	7c aa 43 96 	divwu   r5,r10,r8
    b6dc:	55 2b 84 3e 	rlwinm  r11,r9,16,16,31
    b6e0:	7c 05 41 d6 	mullw   r0,r5,r8
    b6e4:	7c a4 2b 78 	mr      r4,r5
    b6e8:	7c e5 19 d6 	mullw   r7,r5,r3
    b6ec:	7d 40 50 50 	subf    r10,r0,r10
    b6f0:	55 4a 80 1e 	rlwinm  r10,r10,16,0,15
    b6f4:	7d 4a 5b 78 	or      r10,r10,r11
    b6f8:	7f 87 50 40 	cmplw   cr7,r7,r10
    b6fc:	40 9d 00 24 	ble-    cr7,b720 <__udivdi3+0x9c>
    b700:	7d 4a 32 14 	add     r10,r10,r6
    b704:	38 85 ff ff 	addi    r4,r5,-1
    b708:	7f 86 50 40 	cmplw   cr7,r6,r10
    b70c:	41 9d 00 14 	bgt-    cr7,b720 <__udivdi3+0x9c>
    b710:	7f 87 50 40 	cmplw   cr7,r7,r10
    b714:	40 9d 00 0c 	ble-    cr7,b720 <__udivdi3+0x9c>
    b718:	38 85 ff fe 	addi    r4,r5,-2
    b71c:	7d 4a 32 14 	add     r10,r10,r6
    b720:	7d 47 50 50 	subf    r10,r7,r10
    b724:	55 29 04 3e 	clrlwi  r9,r9,16
    b728:	7c aa 43 96 	divwu   r5,r10,r8
    b72c:	7d 05 41 d6 	mullw   r8,r5,r8
    b730:	7c a7 2b 78 	mr      r7,r5
    b734:	7c 65 19 d6 	mullw   r3,r5,r3
    b738:	7d 48 50 50 	subf    r10,r8,r10
    b73c:	55 4a 80 1e 	rlwinm  r10,r10,16,0,15
    b740:	7d 4a 4b 78 	or      r10,r10,r9
    b744:	7f 83 50 40 	cmplw   cr7,r3,r10
    b748:	40 9d 00 20 	ble-    cr7,b768 <__udivdi3+0xe4>
    b74c:	7d 4a 32 14 	add     r10,r10,r6
    b750:	38 e5 ff ff 	addi    r7,r5,-1
    b754:	7f 86 50 40 	cmplw   cr7,r6,r10
    b758:	41 9d 00 10 	bgt-    cr7,b768 <__udivdi3+0xe4>
    b75c:	7f 83 50 40 	cmplw   cr7,r3,r10
    b760:	40 9d 00 08 	ble-    cr7,b768 <__udivdi3+0xe4>
    b764:	38 e5 ff fe 	addi    r7,r5,-2
    b768:	54 84 80 1e 	rlwinm  r4,r4,16,0,15
    b76c:	38 60 00 00 	li      r3,0
    b770:	7c e4 23 78 	or      r4,r7,r4
    b774:	83 a1 00 14 	lwz     r29,20(r1)
    b778:	83 c1 00 18 	lwz     r30,24(r1)
    b77c:	83 e1 00 1c 	lwz     r31,28(r1)
    b780:	38 21 00 20 	addi    r1,r1,32
    b784:	4e 80 00 20 	blr
    b788:	7f 85 18 40 	cmplw   cr7,r5,r3
    b78c:	41 9d 00 f8 	bgt-    cr7,b884 <__udivdi3+0x200>
    b790:	7c a9 00 34 	cntlzw  r9,r5
    b794:	2f 09 00 00 	cmpwi   cr6,r9,0
    b798:	40 9a 01 08 	bne-    cr6,b8a0 <__udivdi3+0x21c>
    b79c:	41 9c 00 0c 	blt-    cr7,b7a8 <__udivdi3+0x124>
    b7a0:	7f 86 20 40 	cmplw   cr7,r6,r4
    b7a4:	41 9d 00 e0 	bgt-    cr7,b884 <__udivdi3+0x200>
    b7a8:	38 80 00 01 	li      r4,1
    b7ac:	38 60 00 00 	li      r3,0
    b7b0:	48 00 00 dc 	b       b88c <__udivdi3+0x208>
    b7b4:	2f 86 00 00 	cmpwi   cr7,r6,0
    b7b8:	40 9e 00 0c 	bne-    cr7,b7c4 <__udivdi3+0x140>
    b7bc:	39 40 00 01 	li      r10,1
    b7c0:	7c ca 33 96 	divwu   r6,r10,r6
    b7c4:	7c c8 00 34 	cntlzw  r8,r6
    b7c8:	2f 88 00 00 	cmpwi   cr7,r8,0
    b7cc:	40 9e 01 c4 	bne-    cr7,b990 <__udivdi3+0x30c>
    b7d0:	7c 06 18 50 	subf    r0,r6,r3
    b7d4:	54 ca 84 3e 	rlwinm  r10,r6,16,16,31
    b7d8:	54 c5 04 3e 	clrlwi  r5,r6,16
    b7dc:	38 60 00 01 	li      r3,1
    b7e0:	7d 60 53 96 	divwu   r11,r0,r10
    b7e4:	55 2c 84 3e 	rlwinm  r12,r9,16,16,31
    b7e8:	7d 0b 51 d6 	mullw   r8,r11,r10
    b7ec:	7d 64 5b 78 	mr      r4,r11
    b7f0:	7c eb 29 d6 	mullw   r7,r11,r5
    b7f4:	7d 08 00 50 	subf    r8,r8,r0
    b7f8:	55 08 80 1e 	rlwinm  r8,r8,16,0,15
    b7fc:	7d 08 63 78 	or      r8,r8,r12
    b800:	7f 87 40 40 	cmplw   cr7,r7,r8
    b804:	40 9d 00 1c 	ble-    cr7,b820 <__udivdi3+0x19c>
    b808:	7d 08 32 14 	add     r8,r8,r6
    b80c:	38 8b ff ff 	addi    r4,r11,-1
    b810:	7f 86 40 40 	cmplw   cr7,r6,r8
    b814:	41 9d 00 0c 	bgt-    cr7,b820 <__udivdi3+0x19c>
    b818:	7f 87 40 40 	cmplw   cr7,r7,r8
    b81c:	41 9d 02 4c 	bgt-    cr7,ba68 <__udivdi3+0x3e4>
    b820:	7d 07 40 50 	subf    r8,r7,r8
    b824:	55 29 04 3e 	clrlwi  r9,r9,16
    b828:	7d 68 53 96 	divwu   r11,r8,r10
    b82c:	7d 4b 51 d6 	mullw   r10,r11,r10
    b830:	7d 67 5b 78 	mr      r7,r11
    b834:	7c ab 29 d6 	mullw   r5,r11,r5
    b838:	7d 0a 40 50 	subf    r8,r10,r8
    b83c:	55 08 80 1e 	rlwinm  r8,r8,16,0,15
    b840:	7d 08 4b 78 	or      r8,r8,r9
    b844:	7f 85 40 40 	cmplw   cr7,r5,r8
    b848:	40 9d 00 20 	ble-    cr7,b868 <__udivdi3+0x1e4>
    b84c:	7d 08 32 14 	add     r8,r8,r6
    b850:	38 eb ff ff 	addi    r7,r11,-1
    b854:	7f 86 40 40 	cmplw   cr7,r6,r8
    b858:	41 9d 00 10 	bgt-    cr7,b868 <__udivdi3+0x1e4>
    b85c:	7f 85 40 40 	cmplw   cr7,r5,r8
    b860:	40 9d 00 08 	ble-    cr7,b868 <__udivdi3+0x1e4>
    b864:	38 eb ff fe 	addi    r7,r11,-2
    b868:	54 84 80 1e 	rlwinm  r4,r4,16,0,15
    b86c:	7c e4 23 78 	or      r4,r7,r4
    b870:	83 a1 00 14 	lwz     r29,20(r1)
    b874:	83 c1 00 18 	lwz     r30,24(r1)
    b878:	83 e1 00 1c 	lwz     r31,28(r1)
    b87c:	38 21 00 20 	addi    r1,r1,32
    b880:	4e 80 00 20 	blr
    b884:	38 80 00 00 	li      r4,0
    b888:	38 60 00 00 	li      r3,0
    b88c:	83 a1 00 14 	lwz     r29,20(r1)
    b890:	83 c1 00 18 	lwz     r30,24(r1)
    b894:	83 e1 00 1c 	lwz     r31,28(r1)
    b898:	38 21 00 20 	addi    r1,r1,32
    b89c:	4e 80 00 20 	blr
    b8a0:	21 69 00 20 	subfic  r11,r9,32
    b8a4:	7c a5 48 30 	slw     r5,r5,r9
    b8a8:	7c ca 5c 30 	srw     r10,r6,r11
    b8ac:	7c 7d 5c 30 	srw     r29,r3,r11
    b8b0:	7d 45 2b 78 	or      r5,r10,r5
    b8b4:	7c c8 48 30 	slw     r8,r6,r9
    b8b8:	54 a7 84 3e 	rlwinm  r7,r5,16,16,31
    b8bc:	54 a0 04 3e 	clrlwi  r0,r5,16
    b8c0:	7f dd 3b 96 	divwu   r30,r29,r7
    b8c4:	7c 63 48 30 	slw     r3,r3,r9
    b8c8:	7c 8a 5c 30 	srw     r10,r4,r11
    b8cc:	7d 4a 1b 78 	or      r10,r10,r3
    b8d0:	55 43 84 3e 	rlwinm  r3,r10,16,16,31
    b8d4:	7c de 39 d6 	mullw   r6,r30,r7
    b8d8:	7f cc f3 78 	mr      r12,r30
    b8dc:	7f fe 01 d6 	mullw   r31,r30,r0
    b8e0:	7c c6 e8 50 	subf    r6,r6,r29
    b8e4:	54 c6 80 1e 	rlwinm  r6,r6,16,0,15
    b8e8:	7c c6 1b 78 	or      r6,r6,r3
    b8ec:	7f 9f 30 40 	cmplw   cr7,r31,r6
    b8f0:	40 9d 00 24 	ble-    cr7,b914 <__udivdi3+0x290>
    b8f4:	7c c6 2a 14 	add     r6,r6,r5
    b8f8:	39 9e ff ff 	addi    r12,r30,-1
    b8fc:	7f 85 30 40 	cmplw   cr7,r5,r6
    b900:	41 9d 00 14 	bgt-    cr7,b914 <__udivdi3+0x290>
    b904:	7f 9f 30 40 	cmplw   cr7,r31,r6
    b908:	40 9d 00 0c 	ble-    cr7,b914 <__udivdi3+0x290>
    b90c:	39 9e ff fe 	addi    r12,r30,-2
    b910:	7c c6 2a 14 	add     r6,r6,r5
    b914:	7c df 30 50 	subf    r6,r31,r6
    b918:	55 4a 04 3e 	clrlwi  r10,r10,16
    b91c:	7f c6 3b 96 	divwu   r30,r6,r7
    b920:	7c fe 39 d6 	mullw   r7,r30,r7
    b924:	7f cb f3 78 	mr      r11,r30
    b928:	7c 1e 01 d6 	mullw   r0,r30,r0
    b92c:	7c c7 30 50 	subf    r6,r7,r6
    b930:	54 c6 80 1e 	rlwinm  r6,r6,16,0,15
    b934:	7c ca 53 78 	or      r10,r6,r10
    b938:	7f 80 50 40 	cmplw   cr7,r0,r10
    b93c:	40 9d 00 24 	ble-    cr7,b960 <__udivdi3+0x2dc>
    b940:	7d 4a 2a 14 	add     r10,r10,r5
    b944:	39 7e ff ff 	addi    r11,r30,-1
    b948:	7f 85 50 40 	cmplw   cr7,r5,r10
    b94c:	41 9d 00 14 	bgt-    cr7,b960 <__udivdi3+0x2dc>
    b950:	7f 80 50 40 	cmplw   cr7,r0,r10
    b954:	40 9d 00 0c 	ble-    cr7,b960 <__udivdi3+0x2dc>
    b958:	39 7e ff fe 	addi    r11,r30,-2
    b95c:	7d 4a 2a 14 	add     r10,r10,r5
    b960:	7d 40 50 50 	subf    r10,r0,r10
    b964:	55 8c 80 1e 	rlwinm  r12,r12,16,0,15
    b968:	7d 6b 63 78 	or      r11,r11,r12
    b96c:	7c eb 40 16 	mulhwu  r7,r11,r8
    b970:	7f 8a 38 40 	cmplw   cr7,r10,r7
    b974:	7d 0b 41 d6 	mullw   r8,r11,r8
    b978:	41 9c 00 e0 	blt-    cr7,ba58 <__udivdi3+0x3d4>
    b97c:	7f 8a 38 00 	cmpw    cr7,r10,r7
    b980:	41 9e 00 f4 	beq-    cr7,ba74 <__udivdi3+0x3f0>
    b984:	7d 64 5b 78 	mr      r4,r11
    b988:	38 60 00 00 	li      r3,0
    b98c:	4b ff ff 00 	b       b88c <__udivdi3+0x208>
    b990:	21 28 00 20 	subfic  r9,r8,32
    b994:	7c c6 40 30 	slw     r6,r6,r8
    b998:	7c 7f 4c 30 	srw     r31,r3,r9
    b99c:	54 ca 84 3e 	rlwinm  r10,r6,16,16,31
    b9a0:	7d 7f 53 96 	divwu   r11,r31,r10
    b9a4:	7c 63 40 30 	slw     r3,r3,r8
    b9a8:	7c 80 4c 30 	srw     r0,r4,r9
    b9ac:	7c 89 40 30 	slw     r9,r4,r8
    b9b0:	54 c5 04 3e 	clrlwi  r5,r6,16
    b9b4:	7c 00 1b 78 	or      r0,r0,r3
    b9b8:	54 03 84 3e 	rlwinm  r3,r0,16,16,31
    b9bc:	7d 0b 51 d6 	mullw   r8,r11,r10
    b9c0:	7d 64 5b 78 	mr      r4,r11
    b9c4:	7c eb 29 d6 	mullw   r7,r11,r5
    b9c8:	7f e8 f8 50 	subf    r31,r8,r31
    b9cc:	57 ff 80 1e 	rlwinm  r31,r31,16,0,15
    b9d0:	7c 68 fb 78 	or      r8,r3,r31
    b9d4:	7f 87 40 40 	cmplw   cr7,r7,r8
    b9d8:	40 9d 00 24 	ble-    cr7,b9fc <__udivdi3+0x378>
    b9dc:	7d 08 32 14 	add     r8,r8,r6
    b9e0:	38 8b ff ff 	addi    r4,r11,-1
    b9e4:	7f 86 40 40 	cmplw   cr7,r6,r8
    b9e8:	41 9d 00 14 	bgt-    cr7,b9fc <__udivdi3+0x378>
    b9ec:	7f 87 40 40 	cmplw   cr7,r7,r8
    b9f0:	40 9d 00 0c 	ble-    cr7,b9fc <__udivdi3+0x378>
    b9f4:	38 8b ff fe 	addi    r4,r11,-2
    b9f8:	7d 08 32 14 	add     r8,r8,r6
    b9fc:	7d 07 40 50 	subf    r8,r7,r8
    ba00:	54 00 04 3e 	clrlwi  r0,r0,16
    ba04:	7f e8 53 96 	divwu   r31,r8,r10
    ba08:	7c 7f 51 d6 	mullw   r3,r31,r10
    ba0c:	7f e7 fb 78 	mr      r7,r31
    ba10:	7d 7f 29 d6 	mullw   r11,r31,r5
    ba14:	7d 03 40 50 	subf    r8,r3,r8
    ba18:	55 08 80 1e 	rlwinm  r8,r8,16,0,15
    ba1c:	7d 00 03 78 	or      r0,r8,r0
    ba20:	7f 8b 00 40 	cmplw   cr7,r11,r0
    ba24:	40 9d 00 24 	ble-    cr7,ba48 <__udivdi3+0x3c4>
    ba28:	7c 00 32 14 	add     r0,r0,r6
    ba2c:	38 ff ff ff 	addi    r7,r31,-1
    ba30:	7f 86 00 40 	cmplw   cr7,r6,r0
    ba34:	41 9d 00 14 	bgt-    cr7,ba48 <__udivdi3+0x3c4>
    ba38:	7f 8b 00 40 	cmplw   cr7,r11,r0
    ba3c:	40 9d 00 0c 	ble-    cr7,ba48 <__udivdi3+0x3c4>
    ba40:	38 ff ff fe 	addi    r7,r31,-2
    ba44:	7c 00 32 14 	add     r0,r0,r6
    ba48:	54 83 80 1e 	rlwinm  r3,r4,16,0,15
    ba4c:	7c 0b 00 50 	subf    r0,r11,r0
    ba50:	7c e3 1b 78 	or      r3,r7,r3
    ba54:	4b ff fd 8c 	b       b7e0 <__udivdi3+0x15c>
    ba58:	39 4b ff ff 	addi    r10,r11,-1
    ba5c:	7d 44 53 78 	mr      r4,r10
    ba60:	38 60 00 00 	li      r3,0
    ba64:	4b ff fe 28 	b       b88c <__udivdi3+0x208>
    ba68:	38 8b ff fe 	addi    r4,r11,-2
    ba6c:	7d 08 32 14 	add     r8,r8,r6
    ba70:	4b ff fd b0 	b       b820 <__udivdi3+0x19c>
    ba74:	7c 89 48 30 	slw     r9,r4,r9
    ba78:	39 4b ff ff 	addi    r10,r11,-1
    ba7c:	7f 89 40 40 	cmplw   cr7,r9,r8
    ba80:	41 9c ff dc 	blt+    cr7,ba5c <__udivdi3+0x3d8>
    ba84:	4b ff ff 00 	b       b984 <__udivdi3+0x300>

0000ba88 <__umoddi3>:
    ba88:	7c a8 2b 79 	mr.     r8,r5
    ba8c:	94 21 ff e0 	stwu    r1,-32(r1)
    ba90:	7c 89 23 78 	mr      r9,r4
    ba94:	7c 6a 1b 78 	mr      r10,r3
    ba98:	93 a1 00 14 	stw     r29,20(r1)
    ba9c:	93 c1 00 18 	stw     r30,24(r1)
    baa0:	93 e1 00 1c 	stw     r31,28(r1)
    baa4:	40 82 00 dc 	bne-    bb80 <__umoddi3+0xf8>
    baa8:	7f 86 18 40 	cmplw   cr7,r6,r3
    baac:	40 9d 01 1c 	ble-    cr7,bbc8 <__umoddi3+0x140>
    bab0:	7c c7 00 34 	cntlzw  r7,r6
    bab4:	2f 87 00 00 	cmpwi   cr7,r7,0
    bab8:	39 00 00 00 	li      r8,0
    babc:	41 9e 00 20 	beq-    cr7,badc <__umoddi3+0x54>
    bac0:	7c e8 3b 78 	mr      r8,r7
    bac4:	20 e7 00 20 	subfic  r7,r7,32
    bac8:	7c 87 3c 30 	srw     r7,r4,r7
    bacc:	7c 6a 40 30 	slw     r10,r3,r8
    bad0:	7c c6 40 30 	slw     r6,r6,r8
    bad4:	7c ea 53 78 	or      r10,r7,r10
    bad8:	7c 89 40 30 	slw     r9,r4,r8
    badc:	54 c7 84 3e 	rlwinm  r7,r6,16,16,31
    bae0:	54 c5 04 3e 	clrlwi  r5,r6,16
    bae4:	7d 6a 3b 96 	divwu   r11,r10,r7
    bae8:	55 24 84 3e 	rlwinm  r4,r9,16,16,31
    baec:	7c 6b 39 d6 	mullw   r3,r11,r7
    baf0:	7d 6b 29 d6 	mullw   r11,r11,r5
    baf4:	7d 43 50 50 	subf    r10,r3,r10
    baf8:	55 4a 80 1e 	rlwinm  r10,r10,16,0,15
    bafc:	7d 4a 23 78 	or      r10,r10,r4
    bb00:	7f 8b 50 40 	cmplw   cr7,r11,r10
    bb04:	40 9d 00 1c 	ble-    cr7,bb20 <__umoddi3+0x98>
    bb08:	7d 4a 32 14 	add     r10,r10,r6
    bb0c:	7f 86 50 40 	cmplw   cr7,r6,r10
    bb10:	41 9d 00 10 	bgt-    cr7,bb20 <__umoddi3+0x98>
    bb14:	7f 8b 50 40 	cmplw   cr7,r11,r10
    bb18:	40 9d 00 08 	ble-    cr7,bb20 <__umoddi3+0x98>
    bb1c:	7d 4a 32 14 	add     r10,r10,r6
    bb20:	7d 4b 50 50 	subf    r10,r11,r10
    bb24:	55 29 04 3e 	clrlwi  r9,r9,16
    bb28:	7c 6a 3b 96 	divwu   r3,r10,r7
    bb2c:	7c e3 39 d6 	mullw   r7,r3,r7
    bb30:	7c a3 29 d6 	mullw   r5,r3,r5
    bb34:	7d 47 50 50 	subf    r10,r7,r10
    bb38:	55 4a 80 1e 	rlwinm  r10,r10,16,0,15
    bb3c:	7d 49 4b 78 	or      r9,r10,r9
    bb40:	7f 85 48 40 	cmplw   cr7,r5,r9
    bb44:	40 9d 00 1c 	ble-    cr7,bb60 <__umoddi3+0xd8>
    bb48:	7d 29 32 14 	add     r9,r9,r6
    bb4c:	7f 86 48 40 	cmplw   cr7,r6,r9
    bb50:	41 9d 00 10 	bgt-    cr7,bb60 <__umoddi3+0xd8>
    bb54:	7f 85 48 40 	cmplw   cr7,r5,r9
    bb58:	40 9d 00 08 	ble-    cr7,bb60 <__umoddi3+0xd8>
    bb5c:	7d 29 32 14 	add     r9,r9,r6
    bb60:	7d 25 48 50 	subf    r9,r5,r9
    bb64:	38 60 00 00 	li      r3,0
    bb68:	7d 24 44 30 	srw     r4,r9,r8
    bb6c:	83 a1 00 14 	lwz     r29,20(r1)
    bb70:	83 c1 00 18 	lwz     r30,24(r1)
    bb74:	83 e1 00 1c 	lwz     r31,28(r1)
    bb78:	38 21 00 20 	addi    r1,r1,32
    bb7c:	4e 80 00 20 	blr
    bb80:	7f 88 18 40 	cmplw   cr7,r8,r3
    bb84:	41 bd ff e8 	bgt-    cr7,bb6c <__umoddi3+0xe4>
    bb88:	7d 07 00 34 	cntlzw  r7,r8
    bb8c:	2f 07 00 00 	cmpwi   cr6,r7,0
    bb90:	7c c5 33 78 	mr      r5,r6
    bb94:	40 9a 00 d0 	bne-    cr6,bc64 <__umoddi3+0x1dc>
    bb98:	41 9c 00 0c 	blt-    cr7,bba4 <__umoddi3+0x11c>
    bb9c:	7f 86 20 40 	cmplw   cr7,r6,r4
    bba0:	41 9d 00 0c 	bgt-    cr7,bbac <__umoddi3+0x124>
    bba4:	7d 25 20 10 	subfc   r9,r5,r4
    bba8:	7d 48 19 10 	subfe   r10,r8,r3
    bbac:	7d 43 53 78 	mr      r3,r10
    bbb0:	7d 24 4b 78 	mr      r4,r9
    bbb4:	83 a1 00 14 	lwz     r29,20(r1)
    bbb8:	83 c1 00 18 	lwz     r30,24(r1)
    bbbc:	83 e1 00 1c 	lwz     r31,28(r1)
    bbc0:	38 21 00 20 	addi    r1,r1,32
    bbc4:	4e 80 00 20 	blr
    bbc8:	2f 86 00 00 	cmpwi   cr7,r6,0
    bbcc:	40 9e 00 0c 	bne-    cr7,bbd8 <__umoddi3+0x150>
    bbd0:	39 40 00 01 	li      r10,1
    bbd4:	7c ca 33 96 	divwu   r6,r10,r6
    bbd8:	7c c8 00 34 	cntlzw  r8,r6
    bbdc:	2f 88 00 00 	cmpwi   cr7,r8,0
    bbe0:	40 9e 01 88 	bne-    cr7,bd68 <__umoddi3+0x2e0>
    bbe4:	7c 66 18 50 	subf    r3,r6,r3
    bbe8:	54 ca 84 3e 	rlwinm  r10,r6,16,16,31
    bbec:	54 c5 04 3e 	clrlwi  r5,r6,16
    bbf0:	7c 83 53 96 	divwu   r4,r3,r10
    bbf4:	55 2b 84 3e 	rlwinm  r11,r9,16,16,31
    bbf8:	7c e4 51 d6 	mullw   r7,r4,r10
    bbfc:	7c 84 29 d6 	mullw   r4,r4,r5
    bc00:	7c 67 18 50 	subf    r3,r7,r3
    bc04:	54 67 80 1e 	rlwinm  r7,r3,16,0,15
    bc08:	7c e7 5b 78 	or      r7,r7,r11
    bc0c:	7f 84 38 40 	cmplw   cr7,r4,r7
    bc10:	40 9d 00 1c 	ble-    cr7,bc2c <__umoddi3+0x1a4>
    bc14:	7c e7 32 14 	add     r7,r7,r6
    bc18:	7f 86 38 40 	cmplw   cr7,r6,r7
    bc1c:	41 9d 00 10 	bgt-    cr7,bc2c <__umoddi3+0x1a4>
    bc20:	7f 84 38 40 	cmplw   cr7,r4,r7
    bc24:	40 9d 00 08 	ble-    cr7,bc2c <__umoddi3+0x1a4>
    bc28:	7c e7 32 14 	add     r7,r7,r6
    bc2c:	7c e4 38 50 	subf    r7,r4,r7
    bc30:	55 29 04 3e 	clrlwi  r9,r9,16
    bc34:	7c 67 53 96 	divwu   r3,r7,r10
    bc38:	7d 43 51 d6 	mullw   r10,r3,r10
    bc3c:	7c a3 29 d6 	mullw   r5,r3,r5
    bc40:	7c ea 38 50 	subf    r7,r10,r7
    bc44:	54 e7 80 1e 	rlwinm  r7,r7,16,0,15
    bc48:	7c e9 4b 78 	or      r9,r7,r9
    bc4c:	7f 85 48 40 	cmplw   cr7,r5,r9
    bc50:	40 bd ff 10 	ble-    cr7,bb60 <__umoddi3+0xd8>
    bc54:	7d 29 32 14 	add     r9,r9,r6
    bc58:	7f 86 48 40 	cmplw   cr7,r6,r9
    bc5c:	41 bd ff 04 	bgt-    cr7,bb60 <__umoddi3+0xd8>
    bc60:	4b ff fe f4 	b       bb54 <__umoddi3+0xcc>
    bc64:	21 47 00 20 	subfic  r10,r7,32
    bc68:	7d 08 38 30 	slw     r8,r8,r7
    bc6c:	7c c9 54 30 	srw     r9,r6,r10
    bc70:	7c 7d 54 30 	srw     r29,r3,r10
    bc74:	7d 28 43 78 	or      r8,r9,r8
    bc78:	7c 63 38 30 	slw     r3,r3,r7
    bc7c:	55 0b 84 3e 	rlwinm  r11,r8,16,16,31
    bc80:	55 09 04 3e 	clrlwi  r9,r8,16
    bc84:	7f dd 5b 96 	divwu   r30,r29,r11
    bc88:	7c 86 54 30 	srw     r6,r4,r10
    bc8c:	7c c6 1b 78 	or      r6,r6,r3
    bc90:	54 c3 84 3e 	rlwinm  r3,r6,16,16,31
    bc94:	7c a5 38 30 	slw     r5,r5,r7
    bc98:	7c 84 38 30 	slw     r4,r4,r7
    bc9c:	7c 1e 59 d6 	mullw   r0,r30,r11
    bca0:	7f df f3 78 	mr      r31,r30
    bca4:	7d 9e 49 d6 	mullw   r12,r30,r9
    bca8:	7c 00 e8 50 	subf    r0,r0,r29
    bcac:	54 00 80 1e 	rlwinm  r0,r0,16,0,15
    bcb0:	7c 00 1b 78 	or      r0,r0,r3
    bcb4:	7f 8c 00 40 	cmplw   cr7,r12,r0
    bcb8:	40 9d 00 24 	ble-    cr7,bcdc <__umoddi3+0x254>
    bcbc:	7c 00 42 14 	add     r0,r0,r8
    bcc0:	3b fe ff ff 	addi    r31,r30,-1
    bcc4:	7f 88 00 40 	cmplw   cr7,r8,r0
    bcc8:	41 9d 00 14 	bgt-    cr7,bcdc <__umoddi3+0x254>
    bccc:	7f 8c 00 40 	cmplw   cr7,r12,r0
    bcd0:	40 9d 00 0c 	ble-    cr7,bcdc <__umoddi3+0x254>
    bcd4:	3b fe ff fe 	addi    r31,r30,-2
    bcd8:	7c 00 42 14 	add     r0,r0,r8
    bcdc:	7c 0c 00 50 	subf    r0,r12,r0
    bce0:	54 c6 04 3e 	clrlwi  r6,r6,16
    bce4:	7f c0 5b 96 	divwu   r30,r0,r11
    bce8:	7d 7e 59 d6 	mullw   r11,r30,r11
    bcec:	7f cc f3 78 	mr      r12,r30
    bcf0:	7d 3e 49 d6 	mullw   r9,r30,r9
    bcf4:	7c 0b 00 50 	subf    r0,r11,r0
    bcf8:	54 00 80 1e 	rlwinm  r0,r0,16,0,15
    bcfc:	7c 06 33 78 	or      r6,r0,r6
    bd00:	7f 89 30 40 	cmplw   cr7,r9,r6
    bd04:	40 9d 00 14 	ble-    cr7,bd18 <__umoddi3+0x290>
    bd08:	7c c6 42 14 	add     r6,r6,r8
    bd0c:	39 9e ff ff 	addi    r12,r30,-1
    bd10:	7f 88 30 40 	cmplw   cr7,r8,r6
    bd14:	40 9d 01 0c 	ble-    cr7,be20 <__umoddi3+0x398>
    bd18:	7c c9 30 50 	subf    r6,r9,r6
    bd1c:	57 eb 80 1e 	rlwinm  r11,r31,16,0,15
    bd20:	7d 8b 5b 78 	or      r11,r12,r11
    bd24:	7d 2b 28 16 	mulhwu  r9,r11,r5
    bd28:	7f 86 48 40 	cmplw   cr7,r6,r9
    bd2c:	7d 6b 29 d6 	mullw   r11,r11,r5
    bd30:	41 9c 00 e0 	blt-    cr7,be10 <__umoddi3+0x388>
    bd34:	7f 86 48 00 	cmpw    cr7,r6,r9
    bd38:	41 9e 00 fc 	beq-    cr7,be34 <__umoddi3+0x3ac>
    bd3c:	7d 0b 20 10 	subfc   r8,r11,r4
    bd40:	7c 69 31 10 	subfe   r3,r9,r6
    bd44:	7c 6a 50 30 	slw     r10,r3,r10
    bd48:	7d 04 3c 30 	srw     r4,r8,r7
    bd4c:	7c 63 3c 30 	srw     r3,r3,r7
    bd50:	7c 84 53 78 	or      r4,r4,r10
    bd54:	83 a1 00 14 	lwz     r29,20(r1)
    bd58:	83 c1 00 18 	lwz     r30,24(r1)
    bd5c:	83 e1 00 1c 	lwz     r31,28(r1)
    bd60:	38 21 00 20 	addi    r1,r1,32
    bd64:	4e 80 00 20 	blr
    bd68:	7c c6 40 30 	slw     r6,r6,r8
    bd6c:	21 28 00 20 	subfic  r9,r8,32
    bd70:	7c 6b 4c 30 	srw     r11,r3,r9
    bd74:	54 ca 84 3e 	rlwinm  r10,r6,16,16,31
    bd78:	7c 0b 53 96 	divwu   r0,r11,r10
    bd7c:	7c 89 4c 30 	srw     r9,r4,r9
    bd80:	54 c5 04 3e 	clrlwi  r5,r6,16
    bd84:	7c 63 40 30 	slw     r3,r3,r8
    bd88:	7d 23 1b 78 	or      r3,r9,r3
    bd8c:	7c 89 40 30 	slw     r9,r4,r8
    bd90:	54 67 84 3e 	rlwinm  r7,r3,16,16,31
    bd94:	7f e0 51 d6 	mullw   r31,r0,r10
    bd98:	7c 80 29 d6 	mullw   r4,r0,r5
    bd9c:	7d 7f 58 50 	subf    r11,r31,r11
    bda0:	55 6b 80 1e 	rlwinm  r11,r11,16,0,15
    bda4:	7c e7 5b 78 	or      r7,r7,r11
    bda8:	7f 84 38 40 	cmplw   cr7,r4,r7
    bdac:	40 9d 00 1c 	ble-    cr7,bdc8 <__umoddi3+0x340>
    bdb0:	7c e7 32 14 	add     r7,r7,r6
    bdb4:	7f 86 38 40 	cmplw   cr7,r6,r7
    bdb8:	41 9d 00 10 	bgt-    cr7,bdc8 <__umoddi3+0x340>
    bdbc:	7f 84 38 40 	cmplw   cr7,r4,r7
    bdc0:	40 9d 00 08 	ble-    cr7,bdc8 <__umoddi3+0x340>
    bdc4:	7c e7 32 14 	add     r7,r7,r6
    bdc8:	7c e4 38 50 	subf    r7,r4,r7
    bdcc:	54 63 04 3e 	clrlwi  r3,r3,16
    bdd0:	7c 87 53 96 	divwu   r4,r7,r10
    bdd4:	7d 64 51 d6 	mullw   r11,r4,r10
    bdd8:	7c 84 29 d6 	mullw   r4,r4,r5
    bddc:	7c eb 38 50 	subf    r7,r11,r7
    bde0:	54 e7 80 1e 	rlwinm  r7,r7,16,0,15
    bde4:	7c e3 1b 78 	or      r3,r7,r3
    bde8:	7f 84 18 40 	cmplw   cr7,r4,r3
    bdec:	40 9d 00 1c 	ble-    cr7,be08 <__umoddi3+0x380>
    bdf0:	7c 63 32 14 	add     r3,r3,r6
    bdf4:	7f 86 18 40 	cmplw   cr7,r6,r3
    bdf8:	41 9d 00 10 	bgt-    cr7,be08 <__umoddi3+0x380>
    bdfc:	7f 84 18 40 	cmplw   cr7,r4,r3
    be00:	40 9d 00 08 	ble-    cr7,be08 <__umoddi3+0x380>
    be04:	7c 63 32 14 	add     r3,r3,r6
    be08:	7c 64 18 50 	subf    r3,r4,r3
    be0c:	4b ff fd e4 	b       bbf0 <__umoddi3+0x168>
    be10:	7c 65 58 10 	subfc   r3,r5,r11
    be14:	7d 28 49 10 	subfe   r9,r8,r9
    be18:	7c 6b 1b 78 	mr      r11,r3
    be1c:	4b ff ff 20 	b       bd3c <__umoddi3+0x2b4>
    be20:	7f 89 30 40 	cmplw   cr7,r9,r6
    be24:	40 bd fe f4 	ble-    cr7,bd18 <__umoddi3+0x290>
    be28:	39 9e ff fe 	addi    r12,r30,-2
    be2c:	7c c6 42 14 	add     r6,r6,r8
    be30:	4b ff fe e8 	b       bd18 <__umoddi3+0x290>
    be34:	7f 84 58 40 	cmplw   cr7,r4,r11
    be38:	41 bc ff d8 	blt-    cr7,be10 <__umoddi3+0x388>
    be3c:	7c c9 33 78 	mr      r9,r6
    be40:	4b ff fe fc 	b       bd3c <__umoddi3+0x2b4>
