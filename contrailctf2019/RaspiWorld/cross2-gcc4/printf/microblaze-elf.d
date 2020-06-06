
microblaze-elf.x:     file format elf32-microblaze


Disassembly of section .text:

00001400 <_start>:
    1400:	b0000001 	imm	1
    1404:	30207e60 	addik	r1, r0, 32352	// 17e60 <__end>
    1408:	b9f4016c 	brlid	r15, 364	// 1574 <_startmain>
    140c:	80000000 	or	r0, r0, r0
    1410:	10a30000 	addk	r5, r3, r0

00001414 <__exit>:
    1414:	10650000 	addk	r3, r5, r0
    1418:	b8000000 	bri	0		// 1418
    141c:	b60f0008 	rtsd	r15, 8
    1420:	80000000 	or	r0, r0, r0

00001424 <__read>:
    1424:	b60f0008 	rtsd	r15, 8
    1428:	80000000 	or	r0, r0, r0

0000142c <__write>:
    142c:	bc67002c 	blei	r7, 44		// 1458
    1430:	b0000001 	imm	1
    1434:	e8603400 	lwi	r3, r0, 13312	// 13400 <__gp>
    1438:	e0a60000 	lbui	r5, r6, 0
    143c:	f0a30000 	sbi	r5, r3, 0
    1440:	30630001 	addik	r3, r3, 1
    1444:	b0000001 	imm	1
    1448:	f8603400 	swi	r3, r0, 13312	// 13400 <__gp>
    144c:	30c60001 	addik	r6, r6, 1
    1450:	30e7ffff 	addik	r7, r7, -1
    1454:	b808142c 	brai	5164	// 142c <__write>
    1458:	b60f0008 	rtsd	r15, 8
    145c:	80000000 	or	r0, r0, r0

00001460 <__open>:
    1460:	b60f0008 	rtsd	r15, 8
    1464:	80000000 	or	r0, r0, r0

00001468 <__close>:
    1468:	b60f0008 	rtsd	r15, 8
    146c:	80000000 	or	r0, r0, r0

00001470 <_exit>:
    1470:	3021ffe4 	addik	r1, r1, -28
    1474:	f9e10000 	swi	r15, r1, 0
    1478:	b9f4ff9c 	brlid	r15, -100	// 1414 <__exit>
    147c:	80000000 	or	r0, r0, r0

00001480 <read>:
    1480:	3021ffe4 	addik	r1, r1, -28
    1484:	f9e10000 	swi	r15, r1, 0
    1488:	b9f4ff9c 	brlid	r15, -100	// 1424 <__read>
    148c:	80000000 	or	r0, r0, r0
    1490:	e9e10000 	lwi	r15, r1, 0
    1494:	b60f0008 	rtsd	r15, 8
    1498:	3021001c 	addik	r1, r1, 28

0000149c <write>:
    149c:	3021ffe4 	addik	r1, r1, -28
    14a0:	f9e10000 	swi	r15, r1, 0
    14a4:	b9f4ff88 	brlid	r15, -120	// 142c <__write>
    14a8:	80000000 	or	r0, r0, r0
    14ac:	e9e10000 	lwi	r15, r1, 0
    14b0:	b60f0008 	rtsd	r15, 8
    14b4:	3021001c 	addik	r1, r1, 28

000014b8 <open>:
    14b8:	3021ffe4 	addik	r1, r1, -28
    14bc:	f9e10000 	swi	r15, r1, 0
    14c0:	b9f4ffa0 	brlid	r15, -96	// 1460 <__open>
    14c4:	80000000 	or	r0, r0, r0
    14c8:	e9e10000 	lwi	r15, r1, 0
    14cc:	b60f0008 	rtsd	r15, 8
    14d0:	3021001c 	addik	r1, r1, 28

000014d4 <close>:
    14d4:	3021ffe4 	addik	r1, r1, -28
    14d8:	f9e10000 	swi	r15, r1, 0
    14dc:	b9f4ff8c 	brlid	r15, -116	// 1468 <__close>
    14e0:	80000000 	or	r0, r0, r0
    14e4:	e9e10000 	lwi	r15, r1, 0
    14e8:	b60f0008 	rtsd	r15, 8
    14ec:	3021001c 	addik	r1, r1, 28

000014f0 <fstat>:
    14f0:	3021ffe4 	addik	r1, r1, -28
    14f4:	f9e10000 	swi	r15, r1, 0
    14f8:	10a60000 	addk	r5, r6, r0
    14fc:	10c00000 	addk	r6, r0, r0
    1500:	b9f400dc 	brlid	r15, 220	// 15dc <memset>
    1504:	30e0003c 	addik	r7, r0, 60
    1508:	10600000 	addk	r3, r0, r0
    150c:	e9e10000 	lwi	r15, r1, 0
    1510:	b60f0008 	rtsd	r15, 8
    1514:	3021001c 	addik	r1, r1, 28

00001518 <lseek>:
    1518:	b60f0008 	rtsd	r15, 8
    151c:	10660000 	addk	r3, r6, r0

00001520 <sbrk>:
    1520:	b0000001 	imm	1
    1524:	e8603484 	lwi	r3, r0, 13444	// 13484 <sbrk_top>
    1528:	10a32800 	addk	r5, r3, r5
    152c:	b0000001 	imm	1
    1530:	f8a03484 	swi	r5, r0, 13444	// 13484 <sbrk_top>
    1534:	b60f0008 	rtsd	r15, 8
    1538:	80000000 	or	r0, r0, r0

0000153c <isatty>:
    153c:	b60f0008 	rtsd	r15, 8
    1540:	30600001 	addik	r3, r0, 1

00001544 <main>:
    1544:	3021ffe4 	addik	r1, r1, -28
    1548:	f9e10000 	swi	r15, r1, 0
    154c:	b0000001 	imm	1
    1550:	30a02a00 	addik	r5, r0, 10752	// 12a00 <__etext>
    1554:	b0000001 	imm	1
    1558:	e8c03488 	lwi	r6, r0, 13448	// 13488 <data_value>
    155c:	b0000001 	imm	1
    1560:	30e02a2c 	addik	r7, r0, 10796
    1564:	b9f4027c 	brlid	r15, 636	// 17e0 <printf>
    1568:	80000000 	or	r0, r0, r0
    156c:	b9f40038 	brlid	r15, 56	// 15a4 <exit>
    1570:	10a00000 	addk	r5, r0, r0

00001574 <_startmain>:
    1574:	3021ffe4 	addik	r1, r1, -28
    1578:	f9e10000 	swi	r15, r1, 0
    157c:	b0000001 	imm	1
    1580:	30603a10 	addik	r3, r0, 14864	// 13a10 <__edata>
    1584:	10a30000 	addk	r5, r3, r0
    1588:	10c00000 	addk	r6, r0, r0
    158c:	b0000001 	imm	1
    1590:	30e07a58 	addik	r7, r0, 31320	// 17a58 <__ebss>
    1594:	b9f40048 	brlid	r15, 72	// 15dc <memset>
    1598:	14e33800 	rsubk	r7, r3, r7
    159c:	b9f4ffa8 	brlid	r15, -88	// 1544 <main>
    15a0:	80000000 	or	r0, r0, r0

000015a4 <exit>:
    15a4:	3021ffe0 	addik	r1, r1, -32
    15a8:	10c00000 	addk	r6, r0, r0
    15ac:	fa61001c 	swi	r19, r1, 28
    15b0:	f9e10000 	swi	r15, r1, 0
    15b4:	b9f431e4 	brlid	r15, 12772	// 4798 <__call_exitprocs>
    15b8:	12650000 	addk	r19, r5, r0
    15bc:	b0000001 	imm	1
    15c0:	e8a02a3c 	lwi	r5, r0, 10812	// 12a3c <_global_impure_ptr>
    15c4:	e8650028 	lwi	r3, r5, 40
    15c8:	bc03000c 	beqi	r3, 12		// 15d4
    15cc:	99fc1800 	brald	r15, r3
    15d0:	80000000 	or	r0, r0, r0
    15d4:	b9f4fe9c 	brlid	r15, -356	// 1470 <_exit>
    15d8:	10b30000 	addk	r5, r19, r0

000015dc <memset>:
    15dc:	a4850003 	andi	r4, r5, 3
    15e0:	be04018c 	beqid	r4, 396		// 176c
    15e4:	10650000 	addk	r3, r5, r0
    15e8:	3107ffff 	addik	r8, r7, -1
    15ec:	91260060 	sext8	r9, r6
    15f0:	be270018 	bneid	r7, 24		// 1608
    15f4:	10850000 	addk	r4, r5, r0
    15f8:	b8000180 	bri	384		// 1778
    15fc:	be080168 	beqid	r8, 360		// 1764
    1600:	30e8ffff 	addik	r7, r8, -1
    1604:	11070000 	addk	r8, r7, r0
    1608:	f1240000 	sbi	r9, r4, 0
    160c:	30840001 	addik	r4, r4, 1
    1610:	a4e40003 	andi	r7, r4, 3
    1614:	bc27ffe8 	bnei	r7, -24		// 15fc
    1618:	30a00003 	addik	r5, r0, 3
    161c:	14a82803 	cmpu	r5, r8, r5
    1620:	bea50128 	bgeid	r5, 296		// 1748
    1624:	a4a600ff 	andi	r5, r6, 255
    1628:	10e52800 	addk	r7, r5, r5
    162c:	10e73800 	addk	r7, r7, r7
    1630:	10e73800 	addk	r7, r7, r7
    1634:	10e73800 	addk	r7, r7, r7
    1638:	10e73800 	addk	r7, r7, r7
    163c:	10e73800 	addk	r7, r7, r7
    1640:	10e73800 	addk	r7, r7, r7
    1644:	10e73800 	addk	r7, r7, r7
    1648:	80e72800 	or	r7, r7, r5
    164c:	11273800 	addk	r9, r7, r7
    1650:	11294800 	addk	r9, r9, r9
    1654:	11294800 	addk	r9, r9, r9
    1658:	11294800 	addk	r9, r9, r9
    165c:	11294800 	addk	r9, r9, r9
    1660:	11294800 	addk	r9, r9, r9
    1664:	11294800 	addk	r9, r9, r9
    1668:	11294800 	addk	r9, r9, r9
    166c:	11294800 	addk	r9, r9, r9
    1670:	11294800 	addk	r9, r9, r9
    1674:	11294800 	addk	r9, r9, r9
    1678:	11294800 	addk	r9, r9, r9
    167c:	11294800 	addk	r9, r9, r9
    1680:	11294800 	addk	r9, r9, r9
    1684:	30a0000f 	addik	r5, r0, 15
    1688:	11294800 	addk	r9, r9, r9
    168c:	11294800 	addk	r9, r9, r9
    1690:	15682803 	cmpu	r11, r8, r5
    1694:	81293800 	or	r9, r9, r7
    1698:	11480000 	addk	r10, r8, r0
    169c:	beab0068 	bgeid	r11, 104		// 1704
    16a0:	10e40000 	addk	r7, r4, r0
    16a4:	314afff0 	addik	r10, r10, -16
    16a8:	f9270000 	swi	r9, r7, 0
    16ac:	f9270004 	swi	r9, r7, 4
    16b0:	f9270008 	swi	r9, r7, 8
    16b4:	f927000c 	swi	r9, r7, 12
    16b8:	156a2803 	cmpu	r11, r10, r5
    16bc:	be4bffe8 	bltid	r11, -24		// 16a4
    16c0:	30e70010 	addik	r7, r7, 16
    16c4:	30e8fff0 	addik	r7, r8, -16
    16c8:	10a03800 	addk	r5, r0, r7
    16cc:	90a70041 	srl	r5, r7
    16d0:	90a50041 	srl	r5, r5
    16d4:	90a50041 	srl	r5, r5
    16d8:	90a50041 	srl	r5, r5
    16dc:	30a50001 	addik	r5, r5, 1
    16e0:	10a52800 	addk	r5, r5, r5
    16e4:	10a52800 	addk	r5, r5, r5
    16e8:	10a52800 	addk	r5, r5, r5
    16ec:	a508000f 	andi	r8, r8, 15
    16f0:	30e00003 	addik	r7, r0, 3
    16f4:	10a52800 	addk	r5, r5, r5
    16f8:	14e83803 	cmpu	r7, r8, r7
    16fc:	bea7004c 	bgeid	r7, 76		// 1748
    1700:	10842800 	addk	r4, r4, r5
    1704:	11440000 	addk	r10, r4, r0
    1708:	10e80000 	addk	r7, r8, r0
    170c:	30a00003 	addik	r5, r0, 3
    1710:	30e7fffc 	addik	r7, r7, -4
    1714:	f92a0000 	swi	r9, r10, 0
    1718:	15672803 	cmpu	r11, r7, r5
    171c:	be4bfff4 	bltid	r11, -12		// 1710
    1720:	314a0004 	addik	r10, r10, 4
    1724:	30e8fffc 	addik	r7, r8, -4
    1728:	10a03800 	addk	r5, r0, r7
    172c:	90a70041 	srl	r5, r7
    1730:	90a50041 	srl	r5, r5
    1734:	30a50001 	addik	r5, r5, 1
    1738:	10a52800 	addk	r5, r5, r5
    173c:	10a52800 	addk	r5, r5, r5
    1740:	a5080003 	andi	r8, r8, 3
    1744:	10842800 	addk	r4, r4, r5
    1748:	90c60060 	sext8	r6, r6
    174c:	be080018 	beqid	r8, 24		// 1764
    1750:	11244000 	addk	r9, r4, r8
    1754:	f0c40000 	sbi	r6, r4, 0
    1758:	30840001 	addik	r4, r4, 1
    175c:	88e44800 	xor	r7, r4, r9
    1760:	bc27fff4 	bnei	r7, -12		// 1754
    1764:	b60f0008 	rtsd	r15, 8
    1768:	80000000 	or	r0, r0, r0
    176c:	10850000 	addk	r4, r5, r0
    1770:	b810fea8 	brid	-344		// 1618
    1774:	11070000 	addk	r8, r7, r0
    1778:	b60f0008 	rtsd	r15, 8
    177c:	80000000 	or	r0, r0, r0

00001780 <_printf_r>:
    1780:	f8c10008 	swi	r6, r1, 8
    1784:	f8e1000c 	swi	r7, r1, 12
    1788:	f9010010 	swi	r8, r1, 16
    178c:	f9210014 	swi	r9, r1, 20
    1790:	f9410018 	swi	r10, r1, 24
    1794:	3021ffdc 	addik	r1, r1, -36
    1798:	fa610020 	swi	r19, r1, 32
    179c:	f9e10000 	swi	r15, r1, 0
    17a0:	be05001c 	beqid	r5, 28		// 17bc
    17a4:	12650000 	addk	r19, r5, r0
    17a8:	e8650018 	lwi	r3, r5, 24
    17ac:	bc230010 	bnei	r3, 16		// 17bc
    17b0:	b9f457d0 	brlid	r15, 22480	// 6f80 <__sinit>
    17b4:	f8c1001c 	swi	r6, r1, 28
    17b8:	e8c1001c 	lwi	r6, r1, 28
    17bc:	10b30000 	addk	r5, r19, r0
    17c0:	10e60000 	addk	r7, r6, r0
    17c4:	e8d30008 	lwi	r6, r19, 8
    17c8:	b9f40084 	brlid	r15, 132	// 184c <_vfprintf_r>
    17cc:	31010030 	addik	r8, r1, 48
    17d0:	e9e10000 	lwi	r15, r1, 0
    17d4:	ea610020 	lwi	r19, r1, 32
    17d8:	b60f0008 	rtsd	r15, 8
    17dc:	30210024 	addik	r1, r1, 36

000017e0 <printf>:
    17e0:	f8e1000c 	swi	r7, r1, 12
    17e4:	f8a10004 	swi	r5, r1, 4
    17e8:	f8c10008 	swi	r6, r1, 8
    17ec:	f9010010 	swi	r8, r1, 16
    17f0:	f9210014 	swi	r9, r1, 20
    17f4:	f9410018 	swi	r10, r1, 24
    17f8:	3021ffdc 	addik	r1, r1, -36
    17fc:	fa610020 	swi	r19, r1, 32
    1800:	b0000001 	imm	1
    1804:	ea60348c 	lwi	r19, r0, 13452	// 1348c <_impure_ptr>
    1808:	f9e10000 	swi	r15, r1, 0
    180c:	be130020 	beqid	r19, 32		// 182c
    1810:	10e50000 	addk	r7, r5, r0
    1814:	e8730018 	lwi	r3, r19, 24
    1818:	be230018 	bneid	r3, 24		// 1830
    181c:	10b30000 	addk	r5, r19, r0
    1820:	b9f45760 	brlid	r15, 22368	// 6f80 <__sinit>
    1824:	f8e1001c 	swi	r7, r1, 28
    1828:	e8e1001c 	lwi	r7, r1, 28
    182c:	10b30000 	addk	r5, r19, r0
    1830:	e8d30008 	lwi	r6, r19, 8
    1834:	b9f40018 	brlid	r15, 24	// 184c <_vfprintf_r>
    1838:	3101002c 	addik	r8, r1, 44
    183c:	e9e10000 	lwi	r15, r1, 0
    1840:	ea610020 	lwi	r19, r1, 32
    1844:	b60f0008 	rtsd	r15, 8
    1848:	30210024 	addik	r1, r1, 36

0000184c <_vfprintf_r>:
    184c:	3021fa88 	addik	r1, r1, -1400
    1850:	f9e10000 	swi	r15, r1, 0
    1854:	fa61054c 	swi	r19, r1, 1356
    1858:	fb21055c 	swi	r25, r1, 1372
    185c:	fb810568 	swi	r28, r1, 1384
    1860:	fba1056c 	swi	r29, r1, 1388
    1864:	fbe10574 	swi	r31, r1, 1396
    1868:	13250000 	addk	r25, r5, r0
    186c:	13e60000 	addk	r31, r6, r0
    1870:	12670000 	addk	r19, r7, r0
    1874:	f9010588 	swi	r8, r1, 1416
    1878:	fac10550 	swi	r22, r1, 1360
    187c:	fae10554 	swi	r23, r1, 1364
    1880:	fb010558 	swi	r24, r1, 1368
    1884:	fb410560 	swi	r26, r1, 1376
    1888:	fb610564 	swi	r27, r1, 1380
    188c:	b9f460f0 	brlid	r15, 24816	// 797c <_localeconv_r>
    1890:	fbc10570 	swi	r30, r1, 1392
    1894:	e8630000 	lwi	r3, r3, 0
    1898:	33800000 	addik	r28, r0, 0
    189c:	33a00000 	addik	r29, r0, 0
    18a0:	fb810528 	swi	r28, r1, 1320
    18a4:	fba1052c 	swi	r29, r1, 1324
    18a8:	10a30000 	addk	r5, r3, r0
    18ac:	b0000000 	imm	0
    18b0:	b9f492fc 	brlid	r15, -27908	// abac <strlen>
    18b4:	f861051c 	swi	r3, r1, 1308
    18b8:	be190010 	beqid	r25, 16		// 18c8
    18bc:	f8610524 	swi	r3, r1, 1316
    18c0:	e8790018 	lwi	r3, r25, 24
    18c4:	bc030698 	beqi	r3, 1688		// 1f5c
    18c8:	b0000001 	imm	1
    18cc:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    18d0:	887f1800 	xor	r3, r31, r3
    18d4:	bc0306a0 	beqi	r3, 1696		// 1f74
    18d8:	b0000001 	imm	1
    18dc:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    18e0:	887f1800 	xor	r3, r31, r3
    18e4:	bc0317d4 	beqi	r3, 6100		// 30b8
    18e8:	b0000001 	imm	1
    18ec:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    18f0:	887f1800 	xor	r3, r31, r3
    18f4:	bc031994 	beqi	r3, 6548		// 3288
    18f8:	e47f000c 	lhui	r3, r31, 12
    18fc:	90630061 	sext16	r3, r3
    1900:	a4832000 	andi	r4, r3, 8192
    1904:	90840061 	sext16	r4, r4
    1908:	be240020 	bneid	r4, 32		// 1928
    190c:	a4830008 	andi	r4, r3, 8
    1910:	e89f0064 	lwi	r4, r31, 100
    1914:	a0632000 	ori	r3, r3, 8192
    1918:	f47f000c 	shi	r3, r31, 12
    191c:	a484dfff 	andi	r4, r4, -8193
    1920:	f89f0064 	swi	r4, r31, 100
    1924:	a4830008 	andi	r4, r3, 8
    1928:	90840061 	sext16	r4, r4
    192c:	be0404c8 	beqid	r4, 1224		// 1df4
    1930:	10b90000 	addk	r5, r25, r0
    1934:	e89f0010 	lwi	r4, r31, 16
    1938:	be0404bc 	beqid	r4, 1212		// 1df4
    193c:	a483001a 	andi	r4, r3, 26
    1940:	a884000a 	xori	r4, r4, 10
    1944:	be0404d8 	beqid	r4, 1240		// 1e1c
    1948:	13a00000 	addk	r29, r0, r0
    194c:	338104b4 	addik	r28, r1, 1204
    1950:	fba10514 	swi	r29, r1, 1300
    1954:	fba10534 	swi	r29, r1, 1332
    1958:	fba10530 	swi	r29, r1, 1328
    195c:	fba10508 	swi	r29, r1, 1288
    1960:	13530000 	addk	r26, r19, r0
    1964:	33a104b3 	addik	r29, r1, 1203
    1968:	31610024 	addik	r11, r1, 36
    196c:	fb8104e0 	swi	r28, r1, 1248
    1970:	179de000 	rsubk	r28, r29, r28
    1974:	fba104e4 	swi	r29, r1, 1252
    1978:	f96104b4 	swi	r11, r1, 1204
    197c:	f80104bc 	swi	r0, r1, 1212
    1980:	f80104b8 	swi	r0, r1, 1208
    1984:	fb810540 	swi	r28, r1, 1344
    1988:	fb21050c 	swi	r25, r1, 1292
    198c:	e07a0000 	lbui	r3, r26, 0
    1990:	a8830025 	xori	r4, r3, 37
    1994:	a48400ff 	andi	r4, r4, 255
    1998:	be040084 	beqid	r4, 132		// 1a1c
    199c:	133a0000 	addk	r25, r26, r0
    19a0:	a46300ff 	andi	r3, r3, 255
    19a4:	be230020 	bneid	r3, 32		// 19c4
    19a8:	33390001 	addik	r25, r25, 1
    19ac:	3339ffff 	addik	r25, r25, -1
    19b0:	b8100070 	brid	112		// 1a20
    19b4:	e0790000 	lbui	r3, r25, 0
    19b8:	be030024 	beqid	r3, 36		// 19dc
    19bc:	171ac800 	rsubk	r24, r26, r25
    19c0:	33390001 	addik	r25, r25, 1
    19c4:	e0790000 	lbui	r3, r25, 0
    19c8:	a8830025 	xori	r4, r3, 37
    19cc:	a48400ff 	andi	r4, r4, 255
    19d0:	be24ffe8 	bneid	r4, -24		// 19b8
    19d4:	a46300ff 	andi	r3, r3, 255
    19d8:	171ac800 	rsubk	r24, r26, r25
    19dc:	be180040 	beqid	r24, 64		// 1a1c
    19e0:	ea6104b8 	lwi	r19, r1, 1208
    19e4:	e88104bc 	lwi	r4, r1, 1212
    19e8:	30600007 	addik	r3, r0, 7
    19ec:	fb4b0000 	swi	r26, r11, 0
    19f0:	fb0b0004 	swi	r24, r11, 4
    19f4:	32730001 	addik	r19, r19, 1
    19f8:	1084c000 	addk	r4, r4, r24
    19fc:	fa6104b8 	swi	r19, r1, 1208
    1a00:	16731801 	cmp	r19, r19, r3
    1a04:	be530534 	bltid	r19, 1332		// 1f38
    1a08:	f88104bc 	swi	r4, r1, 1212
    1a0c:	316b0008 	addik	r11, r11, 8
    1a10:	eba10508 	lwi	r29, r1, 1288
    1a14:	13bdc000 	addk	r29, r29, r24
    1a18:	fba10508 	swi	r29, r1, 1288
    1a1c:	e0790000 	lbui	r3, r25, 0
    1a20:	be0304a0 	beqid	r3, 1184		// 1ec0
    1a24:	13800000 	addk	r28, r0, r0
    1a28:	e3190001 	lbui	r24, r25, 1
    1a2c:	b0000001 	imm	1
    1a30:	30c02a88 	addik	r6, r0, 10888
    1a34:	fb8104fc 	swi	r28, r1, 1276
    1a38:	33590001 	addik	r26, r25, 1
    1a3c:	f00104de 	sbi	r0, r1, 1246
    1a40:	93180060 	sext8	r24, r24
    1a44:	33c0ffff 	addik	r30, r0, -1
    1a48:	fb8104e8 	swi	r28, r1, 1256
    1a4c:	30a00058 	addik	r5, r0, 88
    1a50:	335a0001 	addik	r26, r26, 1
    1a54:	3078ffe0 	addik	r3, r24, -32
    1a58:	14832803 	cmpu	r4, r3, r5
    1a5c:	bc44069c 	blti	r4, 1692		// 20f8
    1a60:	10631800 	addk	r3, r3, r3
    1a64:	10631800 	addk	r3, r3, r3
    1a68:	c8633000 	lw	r3, r3, r6
    1a6c:	98081800 	bra	r3
    1a70:	eb8104e8 	lwi	r28, r1, 1256
    1a74:	a39c0010 	ori	r28, r28, 16
    1a78:	fb8104e8 	swi	r28, r1, 1256
    1a7c:	eba104e8 	lwi	r29, r1, 1256
    1a80:	a49d0020 	andi	r4, r29, 32
    1a84:	be040520 	beqid	r4, 1312		// 1fa4
    1a88:	a4bd0010 	andi	r5, r29, 16
    1a8c:	eb810588 	lwi	r28, r1, 1416
    1a90:	30600001 	addik	r3, r0, 1
    1a94:	eadc0000 	lwi	r22, r28, 0
    1a98:	eafc0004 	lwi	r23, r28, 4
    1a9c:	8096b800 	or	r4, r22, r23
    1aa0:	339c0008 	addik	r28, r28, 8
    1aa4:	14a40000 	rsubk	r5, r4, r0
    1aa8:	80852000 	or	r4, r5, r4
    1aac:	fb810588 	swi	r28, r1, 1416
    1ab0:	13602000 	addk	r27, r0, r4
    1ab4:	93640041 	srl	r27, r4
    1ab8:	937b0041 	srl	r27, r27
    1abc:	937b0041 	srl	r27, r27
    1ac0:	937b0041 	srl	r27, r27
    1ac4:	937b0041 	srl	r27, r27
    1ac8:	937b0041 	srl	r27, r27
    1acc:	937b0041 	srl	r27, r27
    1ad0:	937b0041 	srl	r27, r27
    1ad4:	937b0041 	srl	r27, r27
    1ad8:	937b0041 	srl	r27, r27
    1adc:	937b0041 	srl	r27, r27
    1ae0:	937b0041 	srl	r27, r27
    1ae4:	937b0041 	srl	r27, r27
    1ae8:	937b0041 	srl	r27, r27
    1aec:	937b0041 	srl	r27, r27
    1af0:	937b0041 	srl	r27, r27
    1af4:	937b0041 	srl	r27, r27
    1af8:	937b0041 	srl	r27, r27
    1afc:	937b0041 	srl	r27, r27
    1b00:	937b0041 	srl	r27, r27
    1b04:	937b0041 	srl	r27, r27
    1b08:	937b0041 	srl	r27, r27
    1b0c:	937b0041 	srl	r27, r27
    1b10:	937b0041 	srl	r27, r27
    1b14:	937b0041 	srl	r27, r27
    1b18:	937b0041 	srl	r27, r27
    1b1c:	937b0041 	srl	r27, r27
    1b20:	937b0041 	srl	r27, r27
    1b24:	937b0041 	srl	r27, r27
    1b28:	937b0041 	srl	r27, r27
    1b2c:	937b0041 	srl	r27, r27
    1b30:	f00104de 	sbi	r0, r1, 1246
    1b34:	be5e0010 	bltid	r30, 16		// 1b44
    1b38:	eba104e8 	lwi	r29, r1, 1256
    1b3c:	a7bdff7f 	andi	r29, r29, -129
    1b40:	fba104e8 	swi	r29, r1, 1256
    1b44:	149e0000 	rsubk	r4, r30, r0
    1b48:	8084f000 	or	r4, r4, r30
    1b4c:	be44000c 	bltid	r4, 12		// 1b58
    1b50:	a8830001 	xori	r4, r3, 1
    1b54:	bc1b0f28 	beqi	r27, 3880		// 2a7c
    1b58:	be241190 	bneid	r4, 4496		// 2ce8
    1b5c:	a8630002 	xori	r3, r3, 2
    1b60:	be36001c 	bneid	r22, 28		// 1b7c
    1b64:	126b0000 	addk	r19, r11, r0
    1b68:	31200009 	addik	r9, r0, 9
    1b6c:	14774803 	cmpu	r3, r23, r9
    1b70:	bea30ab4 	bgeid	r3, 2740		// 2624
    1b74:	eb810540 	lwi	r28, r1, 1344
    1b78:	126b0000 	addk	r19, r11, r0
    1b7c:	332104b4 	addik	r25, r1, 1204
    1b80:	10b60000 	addk	r5, r22, r0
    1b84:	10d70000 	addk	r6, r23, r0
    1b88:	30e00000 	addik	r7, r0, 0
    1b8c:	3100000a 	addik	r8, r0, 10
    1b90:	b0000000 	imm	0
    1b94:	b9f4d314 	brlid	r15, -11500	// eea8 <__umoddi3>
    1b98:	3339ffff 	addik	r25, r25, -1
    1b9c:	10b60000 	addk	r5, r22, r0
    1ba0:	10d70000 	addk	r6, r23, r0
    1ba4:	30840030 	addik	r4, r4, 48
    1ba8:	30e00000 	addik	r7, r0, 0
    1bac:	3100000a 	addik	r8, r0, 10
    1bb0:	b0000000 	imm	0
    1bb4:	b9f4c3f0 	brlid	r15, -15376	// dfa4 <__udivdi3>
    1bb8:	f0990000 	sbi	r4, r25, 0
    1bbc:	12c30000 	addk	r22, r3, r0
    1bc0:	80762000 	or	r3, r22, r4
    1bc4:	be23ffbc 	bneid	r3, -68		// 1b80
    1bc8:	12e40000 	addk	r23, r4, r0
    1bcc:	11730000 	addk	r11, r19, r0
    1bd0:	eba104e0 	lwi	r29, r1, 1248
    1bd4:	17b9e800 	rsubk	r29, r25, r29
    1bd8:	fba10500 	swi	r29, r1, 1280
    1bdc:	eba10500 	lwi	r29, r1, 1280
    1be0:	147ee801 	cmp	r3, r30, r29
    1be4:	be430ecc 	bltid	r3, 3788		// 2ab0
    1be8:	fba104ec 	swi	r29, r1, 1260
    1bec:	e06104de 	lbui	r3, r1, 1246
    1bf0:	10800000 	addk	r4, r0, r0
    1bf4:	fbc10518 	swi	r30, r1, 1304
    1bf8:	f8810520 	swi	r4, r1, 1312
    1bfc:	90630060 	sext8	r3, r3
    1c00:	be030558 	beqid	r3, 1368		// 2158
    1c04:	e88104e8 	lwi	r4, r1, 1256
    1c08:	eba104ec 	lwi	r29, r1, 1260
    1c0c:	33bd0001 	addik	r29, r29, 1
    1c10:	b8100544 	brid	1348		// 2154
    1c14:	fba104ec 	swi	r29, r1, 1260
    1c18:	eb8104e8 	lwi	r28, r1, 1256
    1c1c:	a39c0010 	ori	r28, r28, 16
    1c20:	fb8104e8 	swi	r28, r1, 1256
    1c24:	eba104e8 	lwi	r29, r1, 1256
    1c28:	a49d0020 	andi	r4, r29, 32
    1c2c:	be240368 	bneid	r4, 872		// 1f94
    1c30:	eb810588 	lwi	r28, r1, 1416
    1c34:	eba104e8 	lwi	r29, r1, 1256
    1c38:	a4bd0010 	andi	r5, r29, 16
    1c3c:	be051b78 	beqid	r5, 7032		// 37b4
    1c40:	10640000 	addk	r3, r4, r0
    1c44:	eafc0000 	lwi	r23, r28, 0
    1c48:	12c40000 	addk	r22, r4, r0
    1c4c:	14970000 	rsubk	r4, r23, r0
    1c50:	339c0004 	addik	r28, r28, 4
    1c54:	8084b800 	or	r4, r4, r23
    1c58:	fb810588 	swi	r28, r1, 1416
    1c5c:	13602000 	addk	r27, r0, r4
    1c60:	93640041 	srl	r27, r4
    1c64:	937b0041 	srl	r27, r27
    1c68:	937b0041 	srl	r27, r27
    1c6c:	937b0041 	srl	r27, r27
    1c70:	937b0041 	srl	r27, r27
    1c74:	937b0041 	srl	r27, r27
    1c78:	937b0041 	srl	r27, r27
    1c7c:	937b0041 	srl	r27, r27
    1c80:	937b0041 	srl	r27, r27
    1c84:	937b0041 	srl	r27, r27
    1c88:	937b0041 	srl	r27, r27
    1c8c:	937b0041 	srl	r27, r27
    1c90:	937b0041 	srl	r27, r27
    1c94:	937b0041 	srl	r27, r27
    1c98:	937b0041 	srl	r27, r27
    1c9c:	937b0041 	srl	r27, r27
    1ca0:	937b0041 	srl	r27, r27
    1ca4:	937b0041 	srl	r27, r27
    1ca8:	937b0041 	srl	r27, r27
    1cac:	937b0041 	srl	r27, r27
    1cb0:	937b0041 	srl	r27, r27
    1cb4:	937b0041 	srl	r27, r27
    1cb8:	937b0041 	srl	r27, r27
    1cbc:	937b0041 	srl	r27, r27
    1cc0:	937b0041 	srl	r27, r27
    1cc4:	937b0041 	srl	r27, r27
    1cc8:	937b0041 	srl	r27, r27
    1ccc:	937b0041 	srl	r27, r27
    1cd0:	937b0041 	srl	r27, r27
    1cd4:	937b0041 	srl	r27, r27
    1cd8:	937b0041 	srl	r27, r27
    1cdc:	b810fe58 	brid	-424		// 1b34
    1ce0:	f00104de 	sbi	r0, r1, 1246
    1ce4:	eb8104e8 	lwi	r28, r1, 1256
    1ce8:	a39c0010 	ori	r28, r28, 16
    1cec:	fb8104e8 	swi	r28, r1, 1256
    1cf0:	eba104e8 	lwi	r29, r1, 1256
    1cf4:	a47d0020 	andi	r3, r29, 32
    1cf8:	be230284 	bneid	r3, 644		// 1f7c
    1cfc:	eb810588 	lwi	r28, r1, 1416
    1d00:	eba104e8 	lwi	r29, r1, 1256
    1d04:	a47d0010 	andi	r3, r29, 16
    1d08:	be0319d4 	beqid	r3, 6612		// 36dc
    1d0c:	a47d0040 	andi	r3, r29, 64
    1d10:	eb810588 	lwi	r28, r1, 1416
    1d14:	eafc0000 	lwi	r23, r28, 0
    1d18:	02d7b800 	add	r22, r23, r23
    1d1c:	0ac00000 	addc	r22, r0, r0
    1d20:	bc160008 	beqi	r22, 8		// 1d28
    1d24:	22c0ffff 	addi	r22, r0, -1
    1d28:	10760000 	addk	r3, r22, r0
    1d2c:	339c0004 	addik	r28, r28, 4
    1d30:	fb810588 	swi	r28, r1, 1416
    1d34:	bc431634 	blti	r3, 5684		// 3368
    1d38:	8076b800 	or	r3, r22, r23
    1d3c:	14830000 	rsubk	r4, r3, r0
    1d40:	80641800 	or	r3, r4, r3
    1d44:	13601800 	addk	r27, r0, r3
    1d48:	93630041 	srl	r27, r3
    1d4c:	937b0041 	srl	r27, r27
    1d50:	937b0041 	srl	r27, r27
    1d54:	937b0041 	srl	r27, r27
    1d58:	937b0041 	srl	r27, r27
    1d5c:	937b0041 	srl	r27, r27
    1d60:	937b0041 	srl	r27, r27
    1d64:	937b0041 	srl	r27, r27
    1d68:	937b0041 	srl	r27, r27
    1d6c:	937b0041 	srl	r27, r27
    1d70:	937b0041 	srl	r27, r27
    1d74:	937b0041 	srl	r27, r27
    1d78:	937b0041 	srl	r27, r27
    1d7c:	937b0041 	srl	r27, r27
    1d80:	937b0041 	srl	r27, r27
    1d84:	937b0041 	srl	r27, r27
    1d88:	937b0041 	srl	r27, r27
    1d8c:	937b0041 	srl	r27, r27
    1d90:	937b0041 	srl	r27, r27
    1d94:	937b0041 	srl	r27, r27
    1d98:	937b0041 	srl	r27, r27
    1d9c:	937b0041 	srl	r27, r27
    1da0:	937b0041 	srl	r27, r27
    1da4:	937b0041 	srl	r27, r27
    1da8:	937b0041 	srl	r27, r27
    1dac:	937b0041 	srl	r27, r27
    1db0:	937b0041 	srl	r27, r27
    1db4:	937b0041 	srl	r27, r27
    1db8:	937b0041 	srl	r27, r27
    1dbc:	937b0041 	srl	r27, r27
    1dc0:	937b0041 	srl	r27, r27
    1dc4:	b810fd70 	brid	-656		// 1b34
    1dc8:	30600001 	addik	r3, r0, 1
    1dcc:	eba104fc 	lwi	r29, r1, 1276
    1dd0:	f8610588 	swi	r3, r1, 1416
    1dd4:	17bd0000 	rsubk	r29, r29, r0
    1dd8:	fba104fc 	swi	r29, r1, 1276
    1ddc:	eb8104e8 	lwi	r28, r1, 1256
    1de0:	e31a0000 	lbui	r24, r26, 0
    1de4:	a39c0004 	ori	r28, r28, 4
    1de8:	fb8104e8 	swi	r28, r1, 1256
    1dec:	b810fc64 	brid	-924		// 1a50
    1df0:	93180060 	sext8	r24, r24
    1df4:	b9f427c4 	brlid	r15, 10180	// 45b8 <__swsetup_r>
    1df8:	10df0000 	addk	r6, r31, r0
    1dfc:	be2300fc 	bneid	r3, 252		// 1ef8
    1e00:	33a0ffff 	addik	r29, r0, -1
    1e04:	e47f000c 	lhui	r3, r31, 12
    1e08:	90630061 	sext16	r3, r3
    1e0c:	a483001a 	andi	r4, r3, 26
    1e10:	a884000a 	xori	r4, r4, 10
    1e14:	be24fb38 	bneid	r4, -1224		// 194c
    1e18:	13a00000 	addk	r29, r0, r0
    1e1c:	e53f000e 	lhui	r9, r31, 14
    1e20:	90a90061 	sext16	r5, r9
    1e24:	be45fb28 	bltid	r5, -1240		// 194c
    1e28:	13a00000 	addk	r29, r0, r0
    1e2c:	eaff0064 	lwi	r23, r31, 100
    1e30:	eadf0020 	lwi	r22, r31, 32
    1e34:	e99f0028 	lwi	r12, r31, 40
    1e38:	10b90000 	addk	r5, r25, r0
    1e3c:	10f30000 	addk	r7, r19, r0
    1e40:	e9010588 	lwi	r8, r1, 1416
    1e44:	31610024 	addik	r11, r1, 36
    1e48:	31400400 	addik	r10, r0, 1024
    1e4c:	a463fffd 	andi	r3, r3, -3
    1e50:	30c10424 	addik	r6, r1, 1060
    1e54:	f4610430 	shi	r3, r1, 1072
    1e58:	fae10488 	swi	r23, r1, 1160
    1e5c:	f5210432 	shi	r9, r1, 1074
    1e60:	fac10444 	swi	r22, r1, 1092
    1e64:	f981044c 	swi	r12, r1, 1100
    1e68:	f9610424 	swi	r11, r1, 1060
    1e6c:	f9610434 	swi	r11, r1, 1076
    1e70:	f941042c 	swi	r10, r1, 1068
    1e74:	f9410438 	swi	r10, r1, 1080
    1e78:	b9f4f9d4 	brlid	r15, -1580	// 184c <_vfprintf_r>
    1e7c:	f881043c 	swi	r4, r1, 1084
    1e80:	be43001c 	bltid	r3, 28		// 1e9c
    1e84:	f8610508 	swi	r3, r1, 1288
    1e88:	10b90000 	addk	r5, r25, r0
    1e8c:	b9f44e7c 	brlid	r15, 20092	// 6d08 <_fflush_r>
    1e90:	30c10424 	addik	r6, r1, 1060
    1e94:	be23255c 	bneid	r3, 9564		// 43f0
    1e98:	3380ffff 	addik	r28, r0, -1
    1e9c:	e4610430 	lhui	r3, r1, 1072
    1ea0:	a4630040 	andi	r3, r3, 64
    1ea4:	90630061 	sext16	r3, r3
    1ea8:	be030058 	beqid	r3, 88		// 1f00
    1eac:	e8610508 	lwi	r3, r1, 1288
    1eb0:	e47f000c 	lhui	r3, r31, 12
    1eb4:	a0630040 	ori	r3, r3, 64
    1eb8:	b8100044 	brid	68		// 1efc
    1ebc:	f47f000c 	shi	r3, r31, 12
    1ec0:	e86104bc 	lwi	r3, r1, 1212
    1ec4:	be03001c 	beqid	r3, 28		// 1ee0
    1ec8:	eb21050c 	lwi	r25, r1, 1292
    1ecc:	10b90000 	addk	r5, r25, r0
    1ed0:	10df0000 	addk	r6, r31, r0
    1ed4:	b0000000 	imm	0
    1ed8:	b9f48d34 	brlid	r15, -29388	// ac0c <__sprint_r>
    1edc:	30e104b4 	addik	r7, r1, 1204
    1ee0:	e47f000c 	lhui	r3, r31, 12
    1ee4:	a4630040 	andi	r3, r3, 64
    1ee8:	90630061 	sext16	r3, r3
    1eec:	be030014 	beqid	r3, 20		// 1f00
    1ef0:	e8610508 	lwi	r3, r1, 1288
    1ef4:	33a0ffff 	addik	r29, r0, -1
    1ef8:	fba10508 	swi	r29, r1, 1288
    1efc:	e8610508 	lwi	r3, r1, 1288
    1f00:	e9e10000 	lwi	r15, r1, 0
    1f04:	ea61054c 	lwi	r19, r1, 1356
    1f08:	eac10550 	lwi	r22, r1, 1360
    1f0c:	eae10554 	lwi	r23, r1, 1364
    1f10:	eb010558 	lwi	r24, r1, 1368
    1f14:	eb21055c 	lwi	r25, r1, 1372
    1f18:	eb410560 	lwi	r26, r1, 1376
    1f1c:	eb610564 	lwi	r27, r1, 1380
    1f20:	eb810568 	lwi	r28, r1, 1384
    1f24:	eba1056c 	lwi	r29, r1, 1388
    1f28:	ebc10570 	lwi	r30, r1, 1392
    1f2c:	ebe10574 	lwi	r31, r1, 1396
    1f30:	b60f0008 	rtsd	r15, 8
    1f34:	30210578 	addik	r1, r1, 1400
    1f38:	e8a1050c 	lwi	r5, r1, 1292
    1f3c:	10df0000 	addk	r6, r31, r0
    1f40:	b0000000 	imm	0
    1f44:	b9f48cc8 	brlid	r15, -29496	// ac0c <__sprint_r>
    1f48:	30e104b4 	addik	r7, r1, 1204
    1f4c:	be23ff94 	bneid	r3, -108		// 1ee0
    1f50:	31610024 	addik	r11, r1, 36
    1f54:	b810fac0 	brid	-1344		// 1a14
    1f58:	eba10508 	lwi	r29, r1, 1288
    1f5c:	b9f45024 	brlid	r15, 20516	// 6f80 <__sinit>
    1f60:	10b90000 	addk	r5, r25, r0
    1f64:	b0000001 	imm	1
    1f68:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    1f6c:	887f1800 	xor	r3, r31, r3
    1f70:	bc23f968 	bnei	r3, -1688		// 18d8
    1f74:	b810f984 	brid	-1660		// 18f8
    1f78:	ebf90004 	lwi	r31, r25, 4
    1f7c:	e87c0000 	lwi	r3, r28, 0
    1f80:	eafc0004 	lwi	r23, r28, 4
    1f84:	339c0008 	addik	r28, r28, 8
    1f88:	12c30000 	addk	r22, r3, r0
    1f8c:	b810fda8 	brid	-600		// 1d34
    1f90:	fb810588 	swi	r28, r1, 1416
    1f94:	eadc0000 	lwi	r22, r28, 0
    1f98:	eafc0004 	lwi	r23, r28, 4
    1f9c:	b810fb00 	brid	-1280		// 1a9c
    1fa0:	10600000 	addk	r3, r0, r0
    1fa4:	be05178c 	beqid	r5, 6028		// 3730
    1fa8:	eb810588 	lwi	r28, r1, 1416
    1fac:	30600001 	addik	r3, r0, 1
    1fb0:	b810fc98 	brid	-872		// 1c48
    1fb4:	eafc0000 	lwi	r23, r28, 0
    1fb8:	b0000001 	imm	1
    1fbc:	33802a68 	addik	r28, r0, 10856
    1fc0:	fb810534 	swi	r28, r1, 1332
    1fc4:	eb8104e8 	lwi	r28, r1, 1256
    1fc8:	a47c0020 	andi	r3, r28, 32
    1fcc:	be03033c 	beqid	r3, 828		// 2308
    1fd0:	a49c0010 	andi	r4, r28, 16
    1fd4:	eba10588 	lwi	r29, r1, 1416
    1fd8:	eadd0000 	lwi	r22, r29, 0
    1fdc:	eafd0004 	lwi	r23, r29, 4
    1fe0:	33bd0008 	addik	r29, r29, 8
    1fe4:	fba10588 	swi	r29, r1, 1416
    1fe8:	eba104e8 	lwi	r29, r1, 1256
    1fec:	a47d0001 	andi	r3, r29, 1
    1ff0:	bc231080 	bnei	r3, 4224		// 3070
    1ff4:	8076b800 	or	r3, r22, r23
    1ff8:	14830000 	rsubk	r4, r3, r0
    1ffc:	80641800 	or	r3, r4, r3
    2000:	13601800 	addk	r27, r0, r3
    2004:	93630041 	srl	r27, r3
    2008:	937b0041 	srl	r27, r27
    200c:	937b0041 	srl	r27, r27
    2010:	937b0041 	srl	r27, r27
    2014:	937b0041 	srl	r27, r27
    2018:	937b0041 	srl	r27, r27
    201c:	937b0041 	srl	r27, r27
    2020:	937b0041 	srl	r27, r27
    2024:	937b0041 	srl	r27, r27
    2028:	937b0041 	srl	r27, r27
    202c:	937b0041 	srl	r27, r27
    2030:	937b0041 	srl	r27, r27
    2034:	937b0041 	srl	r27, r27
    2038:	937b0041 	srl	r27, r27
    203c:	937b0041 	srl	r27, r27
    2040:	937b0041 	srl	r27, r27
    2044:	937b0041 	srl	r27, r27
    2048:	937b0041 	srl	r27, r27
    204c:	937b0041 	srl	r27, r27
    2050:	937b0041 	srl	r27, r27
    2054:	937b0041 	srl	r27, r27
    2058:	937b0041 	srl	r27, r27
    205c:	937b0041 	srl	r27, r27
    2060:	937b0041 	srl	r27, r27
    2064:	937b0041 	srl	r27, r27
    2068:	937b0041 	srl	r27, r27
    206c:	937b0041 	srl	r27, r27
    2070:	937b0041 	srl	r27, r27
    2074:	937b0041 	srl	r27, r27
    2078:	937b0041 	srl	r27, r27
    207c:	937b0041 	srl	r27, r27
    2080:	f00104de 	sbi	r0, r1, 1246
    2084:	b810fab0 	brid	-1360		// 1b34
    2088:	30600002 	addik	r3, r0, 2
    208c:	e31a0000 	lbui	r24, r26, 0
    2090:	93180060 	sext8	r24, r24
    2094:	a878002a 	xori	r3, r24, 42
    2098:	be032360 	beqid	r3, 9056		// 43f8
    209c:	309a0001 	addik	r4, r26, 1
    20a0:	3078ffd0 	addik	r3, r24, -48
    20a4:	31000009 	addik	r8, r0, 9
    20a8:	14e34003 	cmpu	r7, r3, r8
    20ac:	be47003c 	bltid	r7, 60		// 20e8
    20b0:	13c00000 	addk	r30, r0, r0
    20b4:	10fef000 	addk	r7, r30, r30
    20b8:	e3040000 	lbui	r24, r4, 0
    20bc:	10e73800 	addk	r7, r7, r7
    20c0:	13c7f000 	addk	r30, r7, r30
    20c4:	13def000 	addk	r30, r30, r30
    20c8:	93180060 	sext8	r24, r24
    20cc:	13c3f000 	addk	r30, r3, r30
    20d0:	33a00009 	addik	r29, r0, 9
    20d4:	3078ffd0 	addik	r3, r24, -48
    20d8:	14e3e803 	cmpu	r7, r3, r29
    20dc:	bea7ffd8 	bgeid	r7, -40		// 20b4
    20e0:	30840001 	addik	r4, r4, 1
    20e4:	bc5e1ab8 	blti	r30, 6840		// 3b9c
    20e8:	13440000 	addk	r26, r4, r0
    20ec:	3078ffe0 	addik	r3, r24, -32
    20f0:	14832803 	cmpu	r4, r3, r5
    20f4:	bca4f96c 	bgei	r4, -1684		// 1a60
    20f8:	be18fdc8 	beqid	r24, -568		// 1ec0
    20fc:	31200001 	addik	r9, r0, 1
    2100:	f92104ec 	swi	r9, r1, 1260
    2104:	f301048c 	sbi	r24, r1, 1164
    2108:	f00104de 	sbi	r0, r1, 1246
    210c:	f9210500 	swi	r9, r1, 1280
    2110:	b8100038 	brid	56		// 2148
    2114:	3321048c 	addik	r25, r1, 1164
    2118:	eb810588 	lwi	r28, r1, 1416
    211c:	33a00001 	addik	r29, r0, 1
    2120:	fba104ec 	swi	r29, r1, 1260
    2124:	eba10588 	lwi	r29, r1, 1416
    2128:	e39c0003 	lbui	r28, r28, 3
    212c:	e88104ec 	lwi	r4, r1, 1260
    2130:	33bd0004 	addik	r29, r29, 4
    2134:	f381048c 	sbi	r28, r1, 1164
    2138:	f00104de 	sbi	r0, r1, 1246
    213c:	fba10588 	swi	r29, r1, 1416
    2140:	f8810500 	swi	r4, r1, 1280
    2144:	3321048c 	addik	r25, r1, 1164
    2148:	10800000 	addk	r4, r0, r0
    214c:	f8810518 	swi	r4, r1, 1304
    2150:	f8810520 	swi	r4, r1, 1312
    2154:	e88104e8 	lwi	r4, r1, 1256
    2158:	a4840002 	andi	r4, r4, 2
    215c:	be040014 	beqid	r4, 20		// 2170
    2160:	f88104f4 	swi	r4, r1, 1268
    2164:	e92104ec 	lwi	r9, r1, 1260
    2168:	31290002 	addik	r9, r9, 2
    216c:	f92104ec 	swi	r9, r1, 1260
    2170:	eb8104e8 	lwi	r28, r1, 1256
    2174:	a79c0084 	andi	r28, r28, 132
    2178:	be3c04dc 	bneid	r28, 1244		// 2654
    217c:	fb810510 	swi	r28, r1, 1296
    2180:	eba104fc 	lwi	r29, r1, 1276
    2184:	e88104ec 	lwi	r4, r1, 1260
    2188:	1764e800 	rsubk	r27, r4, r29
    218c:	be7b04c8 	bleid	r27, 1224		// 2654
    2190:	31200010 	addik	r9, r0, 16	// 10 <_.d1>
    2194:	147b4801 	cmp	r3, r27, r9
    2198:	e88104bc 	lwi	r4, r1, 1212
    219c:	b0000001 	imm	1
    21a0:	33c02bec 	addik	r30, r0, 11244	// 12bec <blanks.4013>
    21a4:	bea300a8 	bgeid	r3, 168		// 224c
    21a8:	ea6104b8 	lwi	r19, r1, 1208
    21ac:	fac10538 	swi	r22, r1, 1336
    21b0:	fae1053c 	swi	r23, r1, 1340
    21b4:	13a90000 	addk	r29, r9, r0
    21b8:	12de0000 	addk	r22, r30, r0
    21bc:	33800007 	addik	r28, r0, 7
    21c0:	13db0000 	addk	r30, r27, r0
    21c4:	13790000 	addk	r27, r25, r0
    21c8:	13380000 	addk	r25, r24, r0
    21cc:	b8100018 	brid	24		// 21e4
    21d0:	eb01050c 	lwi	r24, r1, 1292
    21d4:	33defff0 	addik	r30, r30, -16
    21d8:	147ee801 	cmp	r3, r30, r29
    21dc:	bea30058 	bgeid	r3, 88		// 2234
    21e0:	316b0008 	addik	r11, r11, 8
    21e4:	facb0000 	swi	r22, r11, 0
    21e8:	fbab0004 	swi	r29, r11, 4
    21ec:	32730001 	addik	r19, r19, 1
    21f0:	30840010 	addik	r4, r4, 16
    21f4:	f88104bc 	swi	r4, r1, 1212
    21f8:	1473e001 	cmp	r3, r19, r28
    21fc:	bea3ffd8 	bgeid	r3, -40		// 21d4
    2200:	fa6104b8 	swi	r19, r1, 1208
    2204:	10b80000 	addk	r5, r24, r0
    2208:	10df0000 	addk	r6, r31, r0
    220c:	b0000000 	imm	0
    2210:	b9f489fc 	brlid	r15, -30212	// ac0c <__sprint_r>
    2214:	30e104b4 	addik	r7, r1, 1204
    2218:	be23fcc8 	bneid	r3, -824		// 1ee0
    221c:	33defff0 	addik	r30, r30, -16
    2220:	147ee801 	cmp	r3, r30, r29
    2224:	31610024 	addik	r11, r1, 36
    2228:	e88104bc 	lwi	r4, r1, 1212
    222c:	be43ffb8 	bltid	r3, -72		// 21e4
    2230:	ea6104b8 	lwi	r19, r1, 1208
    2234:	13190000 	addk	r24, r25, r0
    2238:	133b0000 	addk	r25, r27, r0
    223c:	137e0000 	addk	r27, r30, r0
    2240:	13d60000 	addk	r30, r22, r0
    2244:	eac10538 	lwi	r22, r1, 1336
    2248:	eae1053c 	lwi	r23, r1, 1340
    224c:	fbcb0000 	swi	r30, r11, 0
    2250:	fb6b0004 	swi	r27, r11, 4
    2254:	32730001 	addik	r19, r19, 1
    2258:	1084d800 	addk	r4, r4, r27
    225c:	30600007 	addik	r3, r0, 7
    2260:	fa6104b8 	swi	r19, r1, 1208
    2264:	16731801 	cmp	r19, r19, r3
    2268:	be5303d0 	bltid	r19, 976		// 2638
    226c:	f88104bc 	swi	r4, r1, 1212
    2270:	b81003e8 	brid	1000		// 2658
    2274:	316b0008 	addik	r11, r11, 8
    2278:	e06104de 	lbui	r3, r1, 1246
    227c:	be231190 	bneid	r3, 4496		// 340c
    2280:	33a00020 	addik	r29, r0, 32
    2284:	f3a104de 	sbi	r29, r1, 1246
    2288:	e31a0000 	lbui	r24, r26, 0
    228c:	b810f7c4 	brid	-2108		// 1a50
    2290:	93180060 	sext8	r24, r24
    2294:	eb8104e8 	lwi	r28, r1, 1256
    2298:	e31a0000 	lbui	r24, r26, 0
    229c:	a39c0001 	ori	r28, r28, 1
    22a0:	fb8104e8 	swi	r28, r1, 1256
    22a4:	b810f7ac 	brid	-2132		// 1a50
    22a8:	93180060 	sext8	r24, r24
    22ac:	eba10588 	lwi	r29, r1, 1416
    22b0:	eb810588 	lwi	r28, r1, 1416
    22b4:	ebbd0000 	lwi	r29, r29, 0
    22b8:	307c0004 	addik	r3, r28, 4
    22bc:	be5dfb10 	bltid	r29, -1264		// 1dcc
    22c0:	fba104fc 	swi	r29, r1, 1276
    22c4:	e31a0000 	lbui	r24, r26, 0
    22c8:	f8610588 	swi	r3, r1, 1416
    22cc:	b810f784 	brid	-2172		// 1a50
    22d0:	93180060 	sext8	r24, r24
    22d4:	33a0002b 	addik	r29, r0, 43
    22d8:	f3a104de 	sbi	r29, r1, 1246
    22dc:	e31a0000 	lbui	r24, r26, 0
    22e0:	b810f770 	brid	-2192		// 1a50
    22e4:	93180060 	sext8	r24, r24
    22e8:	b0000001 	imm	1
    22ec:	33a02a54 	addik	r29, r0, 10836
    22f0:	eb8104e8 	lwi	r28, r1, 1256
    22f4:	a47c0020 	andi	r3, r28, 32
    22f8:	be23fcdc 	bneid	r3, -804		// 1fd4
    22fc:	fba10534 	swi	r29, r1, 1332
    2300:	eb8104e8 	lwi	r28, r1, 1256
    2304:	a49c0010 	andi	r4, r28, 16
    2308:	be041408 	beqid	r4, 5128		// 3710
    230c:	eba10588 	lwi	r29, r1, 1416
    2310:	12c30000 	addk	r22, r3, r0
    2314:	eafd0000 	lwi	r23, r29, 0
    2318:	33bd0004 	addik	r29, r29, 4
    231c:	b810fccc 	brid	-820		// 1fe8
    2320:	fba10588 	swi	r29, r1, 1416
    2324:	eb810588 	lwi	r28, r1, 1416
    2328:	eba104e8 	lwi	r29, r1, 1256
    232c:	30600030 	addik	r3, r0, 48
    2330:	eafc0000 	lwi	r23, r28, 0
    2334:	339c0004 	addik	r28, r28, 4
    2338:	fb810588 	swi	r28, r1, 1416
    233c:	b0000001 	imm	1
    2340:	33802a68 	addik	r28, r0, 10856
    2344:	f06104dc 	sbi	r3, r1, 1244
    2348:	14770000 	rsubk	r3, r23, r0
    234c:	8063b800 	or	r3, r3, r23
    2350:	a3bd0002 	ori	r29, r29, 2
    2354:	30800078 	addik	r4, r0, 120
    2358:	13601800 	addk	r27, r0, r3
    235c:	93630041 	srl	r27, r3
    2360:	937b0041 	srl	r27, r27
    2364:	937b0041 	srl	r27, r27
    2368:	937b0041 	srl	r27, r27
    236c:	937b0041 	srl	r27, r27
    2370:	937b0041 	srl	r27, r27
    2374:	937b0041 	srl	r27, r27
    2378:	937b0041 	srl	r27, r27
    237c:	937b0041 	srl	r27, r27
    2380:	937b0041 	srl	r27, r27
    2384:	937b0041 	srl	r27, r27
    2388:	937b0041 	srl	r27, r27
    238c:	937b0041 	srl	r27, r27
    2390:	937b0041 	srl	r27, r27
    2394:	937b0041 	srl	r27, r27
    2398:	937b0041 	srl	r27, r27
    239c:	937b0041 	srl	r27, r27
    23a0:	937b0041 	srl	r27, r27
    23a4:	937b0041 	srl	r27, r27
    23a8:	937b0041 	srl	r27, r27
    23ac:	937b0041 	srl	r27, r27
    23b0:	937b0041 	srl	r27, r27
    23b4:	937b0041 	srl	r27, r27
    23b8:	937b0041 	srl	r27, r27
    23bc:	937b0041 	srl	r27, r27
    23c0:	937b0041 	srl	r27, r27
    23c4:	937b0041 	srl	r27, r27
    23c8:	937b0041 	srl	r27, r27
    23cc:	937b0041 	srl	r27, r27
    23d0:	937b0041 	srl	r27, r27
    23d4:	937b0041 	srl	r27, r27
    23d8:	fba104e8 	swi	r29, r1, 1256
    23dc:	12c00000 	addk	r22, r0, r0
    23e0:	f08104dd 	sbi	r4, r1, 1245
    23e4:	fb810534 	swi	r28, r1, 1332
    23e8:	30600002 	addik	r3, r0, 2
    23ec:	33000078 	addik	r24, r0, 120
    23f0:	b810f744 	brid	-2236		// 1b34
    23f4:	f00104de 	sbi	r0, r1, 1246
    23f8:	eb8104e8 	lwi	r28, r1, 1256
    23fc:	e31a0000 	lbui	r24, r26, 0
    2400:	a39c0020 	ori	r28, r28, 32
    2404:	fb8104e8 	swi	r28, r1, 1256
    2408:	b810f648 	brid	-2488		// 1a50
    240c:	93180060 	sext8	r24, r24
    2410:	eb8104e8 	lwi	r28, r1, 1256
    2414:	a47c0020 	andi	r3, r28, 32
    2418:	be03136c 	beqid	r3, 4972		// 3784
    241c:	eba10588 	lwi	r29, r1, 1416
    2420:	e8a10508 	lwi	r5, r1, 1288
    2424:	00852800 	add	r4, r5, r5
    2428:	08800000 	addc	r4, r0, r0
    242c:	bc040008 	beqi	r4, 8		// 2434
    2430:	2080ffff 	addi	r4, r0, -1
    2434:	e87d0000 	lwi	r3, r29, 0
    2438:	33bd0004 	addik	r29, r29, 4
    243c:	fba10588 	swi	r29, r1, 1416
    2440:	f8830000 	swi	r4, r3, 0
    2444:	f8a30004 	swi	r5, r3, 4
    2448:	b810f548 	brid	-2744		// 1990
    244c:	e07a0000 	lbui	r3, r26, 0
    2450:	eba10588 	lwi	r29, r1, 1416
    2454:	f00104de 	sbi	r0, r1, 1246
    2458:	eb3d0000 	lwi	r25, r29, 0
    245c:	be191950 	beqid	r25, 6480		// 3dac
    2460:	327d0004 	addik	r19, r29, 4
    2464:	be5e17ec 	bltid	r30, 6124		// 3c50
    2468:	10b90000 	addk	r5, r25, r0
    246c:	10fe0000 	addk	r7, r30, r0
    2470:	10c00000 	addk	r6, r0, r0
    2474:	b9f46364 	brlid	r15, 25444	// 87d8 <memchr>
    2478:	f9610548 	swi	r11, r1, 1352
    247c:	be031c18 	beqid	r3, 7192		// 4094
    2480:	e9610548 	lwi	r11, r1, 1352
    2484:	14791800 	rsubk	r3, r25, r3
    2488:	f8610500 	swi	r3, r1, 1280
    248c:	1463f001 	cmp	r3, r3, r30
    2490:	bea31504 	bgeid	r3, 5380		// 3994
    2494:	10800000 	addk	r4, r0, r0
    2498:	e06104de 	lbui	r3, r1, 1246
    249c:	13800000 	addk	r28, r0, r0
    24a0:	fbc104ec 	swi	r30, r1, 1260
    24a4:	fb810518 	swi	r28, r1, 1304
    24a8:	fbc10500 	swi	r30, r1, 1280
    24ac:	90630060 	sext8	r3, r3
    24b0:	fa610588 	swi	r19, r1, 1416
    24b4:	b810f74c 	brid	-2228		// 1c00
    24b8:	fb810520 	swi	r28, r1, 1312
    24bc:	eba104e8 	lwi	r29, r1, 1256
    24c0:	e31a0000 	lbui	r24, r26, 0
    24c4:	a3bd0040 	ori	r29, r29, 64
    24c8:	fba104e8 	swi	r29, r1, 1256
    24cc:	b810f584 	brid	-2684		// 1a50
    24d0:	93180060 	sext8	r24, r24
    24d4:	e31a0000 	lbui	r24, r26, 0
    24d8:	93180060 	sext8	r24, r24
    24dc:	a878006c 	xori	r3, r24, 108
    24e0:	be0316fc 	beqid	r3, 5884		// 3bdc
    24e4:	eba104e8 	lwi	r29, r1, 1256
    24e8:	a3bd0010 	ori	r29, r29, 16
    24ec:	b810f564 	brid	-2716		// 1a50
    24f0:	fba104e8 	swi	r29, r1, 1256
    24f4:	eb8104e8 	lwi	r28, r1, 1256
    24f8:	a47c0008 	andi	r3, r28, 8
    24fc:	be0311cc 	beqid	r3, 4556		// 36c8
    2500:	eb810588 	lwi	r28, r1, 1416
    2504:	eba10588 	lwi	r29, r1, 1416
    2508:	ea7d0000 	lwi	r19, r29, 0
    250c:	eb7d0004 	lwi	r27, r29, 4
    2510:	33bd0008 	addik	r29, r29, 8
    2514:	fba10588 	swi	r29, r1, 1416
    2518:	10d30000 	addk	r6, r19, r0
    251c:	10fb0000 	addk	r7, r27, r0
    2520:	10b30000 	addk	r5, r19, r0
    2524:	f9610548 	swi	r11, r1, 1352
    2528:	f8c10528 	swi	r6, r1, 1320
    252c:	f8e1052c 	swi	r7, r1, 1324
    2530:	b0000000 	imm	0
    2534:	b9f48244 	brlid	r15, -32188	// a778 <__fpclassifyd>
    2538:	10db0000 	addk	r6, r27, r0
    253c:	a8630001 	xori	r3, r3, 1
    2540:	be230ed8 	bneid	r3, 3800		// 3418
    2544:	e9610548 	lwi	r11, r1, 1352
    2548:	10db0000 	addk	r6, r27, r0
    254c:	10e00000 	addk	r7, r0, r0
    2550:	11000000 	addk	r8, r0, r0
    2554:	b0000000 	imm	0
    2558:	b9f4ece4 	brlid	r15, -4892	// 1123c <__ltdf2>
    255c:	10b30000 	addk	r5, r19, r0
    2560:	be4318fc 	bltid	r3, 6396		// 3e5c
    2564:	e9610548 	lwi	r11, r1, 1352
    2568:	e06104de 	lbui	r3, r1, 1246
    256c:	90630060 	sext8	r3, r3
    2570:	30800047 	addik	r4, r0, 71
    2574:	14982001 	cmp	r4, r24, r4
    2578:	b0000001 	imm	1
    257c:	33202a48 	addik	r25, r0, 10824
    2580:	bc44000c 	blti	r4, 12		// 258c
    2584:	b0000001 	imm	1
    2588:	33202a44 	addik	r25, r0, 10820
    258c:	eba104e8 	lwi	r29, r1, 1256
    2590:	31200003 	addik	r9, r0, 3
    2594:	13800000 	addk	r28, r0, r0
    2598:	a7bdff7f 	andi	r29, r29, -129
    259c:	f92104ec 	swi	r9, r1, 1260
    25a0:	fb810518 	swi	r28, r1, 1304
    25a4:	fba104e8 	swi	r29, r1, 1256
    25a8:	f9210500 	swi	r9, r1, 1280
    25ac:	b810f654 	brid	-2476		// 1c00
    25b0:	fb810520 	swi	r28, r1, 1312
    25b4:	eb8104e8 	lwi	r28, r1, 1256
    25b8:	e31a0000 	lbui	r24, r26, 0
    25bc:	a39c0008 	ori	r28, r28, 8
    25c0:	fb8104e8 	swi	r28, r1, 1256
    25c4:	b810f48c 	brid	-2932		// 1a50
    25c8:	93180060 	sext8	r24, r24
    25cc:	eb8104e8 	lwi	r28, r1, 1256
    25d0:	e31a0000 	lbui	r24, r26, 0
    25d4:	a39c0080 	ori	r28, r28, 128
    25d8:	fb8104e8 	swi	r28, r1, 1256
    25dc:	b810f474 	brid	-2956		// 1a50
    25e0:	93180060 	sext8	r24, r24
    25e4:	10800000 	addk	r4, r0, r0
    25e8:	3078ffd0 	addik	r3, r24, -48
    25ec:	10e42000 	addk	r7, r4, r4
    25f0:	e31a0000 	lbui	r24, r26, 0
    25f4:	10e73800 	addk	r7, r7, r7
    25f8:	10872000 	addk	r4, r7, r4
    25fc:	10842000 	addk	r4, r4, r4
    2600:	93180060 	sext8	r24, r24
    2604:	10841800 	addk	r4, r4, r3
    2608:	33a00009 	addik	r29, r0, 9
    260c:	3078ffd0 	addik	r3, r24, -48
    2610:	14e3e803 	cmpu	r7, r3, r29
    2614:	bea7ffd8 	bgeid	r7, -40		// 25ec
    2618:	335a0001 	addik	r26, r26, 1
    261c:	b810f438 	brid	-3016		// 1a54
    2620:	f88104fc 	swi	r4, r1, 1276
    2624:	30770030 	addik	r3, r23, 48
    2628:	f06104b3 	sbi	r3, r1, 1203
    262c:	fb810500 	swi	r28, r1, 1280
    2630:	b810f5ac 	brid	-2644		// 1bdc
    2634:	332104b3 	addik	r25, r1, 1203
    2638:	e8a1050c 	lwi	r5, r1, 1292
    263c:	10df0000 	addk	r6, r31, r0
    2640:	b0000000 	imm	0
    2644:	b9f485c8 	brlid	r15, -31288	// ac0c <__sprint_r>
    2648:	30e104b4 	addik	r7, r1, 1204
    264c:	be23f894 	bneid	r3, -1900		// 1ee0
    2650:	31610024 	addik	r11, r1, 36
    2654:	e88104bc 	lwi	r4, r1, 1212
    2658:	e06104de 	lbui	r3, r1, 1246
    265c:	be030040 	beqid	r3, 64		// 269c
    2660:	e90104f4 	lwi	r8, r1, 1268
    2664:	ea6104b8 	lwi	r19, r1, 1208
    2668:	306104de 	addik	r3, r1, 1246
    266c:	f86b0000 	swi	r3, r11, 0
    2670:	30600001 	addik	r3, r0, 1
    2674:	f86b0004 	swi	r3, r11, 4
    2678:	12731800 	addk	r19, r19, r3
    267c:	10841800 	addk	r4, r4, r3
    2680:	30600007 	addik	r3, r0, 7
    2684:	fa6104b8 	swi	r19, r1, 1208
    2688:	16731801 	cmp	r19, r19, r3
    268c:	be53071c 	bltid	r19, 1820		// 2da8
    2690:	f88104bc 	swi	r4, r1, 1212
    2694:	316b0008 	addik	r11, r11, 8
    2698:	e90104f4 	lwi	r8, r1, 1268
    269c:	be080040 	beqid	r8, 64		// 26dc
    26a0:	e9210510 	lwi	r9, r1, 1296
    26a4:	ea6104b8 	lwi	r19, r1, 1208
    26a8:	306104dc 	addik	r3, r1, 1244
    26ac:	f86b0000 	swi	r3, r11, 0
    26b0:	30600002 	addik	r3, r0, 2
    26b4:	f86b0004 	swi	r3, r11, 4
    26b8:	32730001 	addik	r19, r19, 1
    26bc:	10841800 	addk	r4, r4, r3
    26c0:	30600007 	addik	r3, r0, 7
    26c4:	fa6104b8 	swi	r19, r1, 1208
    26c8:	16731801 	cmp	r19, r19, r3
    26cc:	be5306fc 	bltid	r19, 1788		// 2dc8
    26d0:	f88104bc 	swi	r4, r1, 1212
    26d4:	316b0008 	addik	r11, r11, 8
    26d8:	e9210510 	lwi	r9, r1, 1296
    26dc:	ab890080 	xori	r28, r9, 128
    26e0:	be1c03d8 	beqid	r28, 984		// 2ab8
    26e4:	eb8104fc 	lwi	r28, r1, 1276
    26e8:	eb810518 	lwi	r28, r1, 1304
    26ec:	eba10500 	lwi	r29, r1, 1280
    26f0:	17dde000 	rsubk	r30, r29, r28
    26f4:	be7e00e0 	bleid	r30, 224		// 27d4
    26f8:	eb8104e8 	lwi	r28, r1, 1256
    26fc:	33a00010 	addik	r29, r0, 16	// 10 <_.d1>
    2700:	147ee801 	cmp	r3, r30, r29
    2704:	b0000001 	imm	1
    2708:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    270c:	bea3009c 	bgeid	r3, 156		// 27a8
    2710:	ea6104b8 	lwi	r19, r1, 1208
    2714:	fac104f4 	swi	r22, r1, 1268
    2718:	fae104f8 	swi	r23, r1, 1272
    271c:	33600007 	addik	r27, r0, 7
    2720:	12dc0000 	addk	r22, r28, r0
    2724:	13990000 	addk	r28, r25, r0
    2728:	13380000 	addk	r25, r24, r0
    272c:	b8100018 	brid	24		// 2744
    2730:	eb01050c 	lwi	r24, r1, 1292
    2734:	33defff0 	addik	r30, r30, -16
    2738:	147ee801 	cmp	r3, r30, r29
    273c:	bea30058 	bgeid	r3, 88		// 2794
    2740:	316b0008 	addik	r11, r11, 8
    2744:	facb0000 	swi	r22, r11, 0
    2748:	fbab0004 	swi	r29, r11, 4
    274c:	32730001 	addik	r19, r19, 1
    2750:	30840010 	addik	r4, r4, 16
    2754:	f88104bc 	swi	r4, r1, 1212
    2758:	1473d801 	cmp	r3, r19, r27
    275c:	bea3ffd8 	bgeid	r3, -40		// 2734
    2760:	fa6104b8 	swi	r19, r1, 1208
    2764:	10b80000 	addk	r5, r24, r0
    2768:	10df0000 	addk	r6, r31, r0
    276c:	b0000000 	imm	0
    2770:	b9f4849c 	brlid	r15, -31588	// ac0c <__sprint_r>
    2774:	30e104b4 	addik	r7, r1, 1204
    2778:	be23f768 	bneid	r3, -2200		// 1ee0
    277c:	33defff0 	addik	r30, r30, -16
    2780:	147ee801 	cmp	r3, r30, r29
    2784:	31610024 	addik	r11, r1, 36
    2788:	e88104bc 	lwi	r4, r1, 1212
    278c:	be43ffb8 	bltid	r3, -72		// 2744
    2790:	ea6104b8 	lwi	r19, r1, 1208
    2794:	13190000 	addk	r24, r25, r0
    2798:	133c0000 	addk	r25, r28, r0
    279c:	13960000 	addk	r28, r22, r0
    27a0:	eac104f4 	lwi	r22, r1, 1268
    27a4:	eae104f8 	lwi	r23, r1, 1272
    27a8:	fb8b0000 	swi	r28, r11, 0
    27ac:	fbcb0004 	swi	r30, r11, 4
    27b0:	32730001 	addik	r19, r19, 1
    27b4:	1084f000 	addk	r4, r4, r30
    27b8:	30600007 	addik	r3, r0, 7
    27bc:	fa6104b8 	swi	r19, r1, 1208
    27c0:	16731801 	cmp	r19, r19, r3
    27c4:	be5305c4 	bltid	r19, 1476		// 2d88
    27c8:	f88104bc 	swi	r4, r1, 1212
    27cc:	316b0008 	addik	r11, r11, 8
    27d0:	eb8104e8 	lwi	r28, r1, 1256
    27d4:	a47c0100 	andi	r3, r28, 256
    27d8:	be23014c 	bneid	r3, 332		// 2924
    27dc:	30600065 	addik	r3, r0, 101
    27e0:	ea6104b8 	lwi	r19, r1, 1208
    27e4:	eba10500 	lwi	r29, r1, 1280
    27e8:	fb2b0000 	swi	r25, r11, 0
    27ec:	32730001 	addik	r19, r19, 1
    27f0:	fbab0004 	swi	r29, r11, 4
    27f4:	1084e800 	addk	r4, r4, r29
    27f8:	30600007 	addik	r3, r0, 7
    27fc:	fa6104b8 	swi	r19, r1, 1208
    2800:	16731801 	cmp	r19, r19, r3
    2804:	be53049c 	bltid	r19, 1180		// 2ca0
    2808:	f88104bc 	swi	r4, r1, 1212
    280c:	316b0008 	addik	r11, r11, 8
    2810:	eb8104e8 	lwi	r28, r1, 1256
    2814:	a47c0004 	andi	r3, r28, 4
    2818:	be0300e4 	beqid	r3, 228		// 28fc
    281c:	e86104ec 	lwi	r3, r1, 1260
    2820:	eba104fc 	lwi	r29, r1, 1276
    2824:	e92104ec 	lwi	r9, r1, 1260
    2828:	1709e800 	rsubk	r24, r9, r29
    282c:	be7800d4 	bleid	r24, 212		// 2900
    2830:	eb8104fc 	lwi	r28, r1, 1276
    2834:	33200010 	addik	r25, r0, 16	// 10 <_.d1>
    2838:	1478c801 	cmp	r3, r24, r25
    283c:	b0000001 	imm	1
    2840:	33c02bec 	addik	r30, r0, 11244	// 12bec <blanks.4013>
    2844:	bea30074 	bgeid	r3, 116		// 28b8
    2848:	ea6104b8 	lwi	r19, r1, 1208
    284c:	33600007 	addik	r27, r0, 7
    2850:	b8100018 	brid	24		// 2868
    2854:	eb81050c 	lwi	r28, r1, 1292
    2858:	3318fff0 	addik	r24, r24, -16
    285c:	1478c801 	cmp	r3, r24, r25
    2860:	bea30058 	bgeid	r3, 88		// 28b8
    2864:	316b0008 	addik	r11, r11, 8
    2868:	fbcb0000 	swi	r30, r11, 0
    286c:	fb2b0004 	swi	r25, r11, 4
    2870:	32730001 	addik	r19, r19, 1
    2874:	30840010 	addik	r4, r4, 16
    2878:	f88104bc 	swi	r4, r1, 1212
    287c:	1473d801 	cmp	r3, r19, r27
    2880:	bea3ffd8 	bgeid	r3, -40		// 2858
    2884:	fa6104b8 	swi	r19, r1, 1208
    2888:	10bc0000 	addk	r5, r28, r0
    288c:	10df0000 	addk	r6, r31, r0
    2890:	b0000000 	imm	0
    2894:	b9f48378 	brlid	r15, -31880	// ac0c <__sprint_r>
    2898:	30e104b4 	addik	r7, r1, 1204
    289c:	be23f644 	bneid	r3, -2492		// 1ee0
    28a0:	3318fff0 	addik	r24, r24, -16
    28a4:	1478c801 	cmp	r3, r24, r25
    28a8:	31610024 	addik	r11, r1, 36
    28ac:	e88104bc 	lwi	r4, r1, 1212
    28b0:	be43ffb8 	bltid	r3, -72		// 2868
    28b4:	ea6104b8 	lwi	r19, r1, 1208
    28b8:	fbcb0000 	swi	r30, r11, 0
    28bc:	fb0b0004 	swi	r24, r11, 4
    28c0:	32730001 	addik	r19, r19, 1
    28c4:	10982000 	addk	r4, r24, r4
    28c8:	30600007 	addik	r3, r0, 7
    28cc:	fa6104b8 	swi	r19, r1, 1208
    28d0:	16731801 	cmp	r19, r19, r3
    28d4:	beb30024 	bgeid	r19, 36		// 28f8
    28d8:	f88104bc 	swi	r4, r1, 1212
    28dc:	e8a1050c 	lwi	r5, r1, 1292
    28e0:	10df0000 	addk	r6, r31, r0
    28e4:	b0000000 	imm	0
    28e8:	b9f48324 	brlid	r15, -31964	// ac0c <__sprint_r>
    28ec:	30e104b4 	addik	r7, r1, 1204
    28f0:	be23f5f0 	bneid	r3, -2576		// 1ee0
    28f4:	e88104bc 	lwi	r4, r1, 1212
    28f8:	e86104ec 	lwi	r3, r1, 1260
    28fc:	eb8104fc 	lwi	r28, r1, 1276
    2900:	14bc1801 	cmp	r5, r28, r3
    2904:	bc4504e4 	blti	r5, 1252		// 2de8
    2908:	eba10508 	lwi	r29, r1, 1288
    290c:	13bd1800 	addk	r29, r29, r3
    2910:	be2403b0 	bneid	r4, 944		// 2cc0
    2914:	fba10508 	swi	r29, r1, 1288
    2918:	f80104b8 	swi	r0, r1, 1208
    291c:	b810f070 	brid	-3984		// 198c
    2920:	31610024 	addik	r11, r1, 36
    2924:	17181801 	cmp	r24, r24, r3
    2928:	beb80278 	bgeid	r24, 632		// 2ba0
    292c:	eba10514 	lwi	r29, r1, 1300
    2930:	e9010528 	lwi	r8, r1, 1320
    2934:	e921052c 	lwi	r9, r1, 1324
    2938:	f8810544 	swi	r4, r1, 1348
    293c:	f9610548 	swi	r11, r1, 1352
    2940:	10a80000 	addk	r5, r8, r0
    2944:	10e00000 	addk	r7, r0, r0
    2948:	11000000 	addk	r8, r0, r0
    294c:	b0000000 	imm	0
    2950:	b9f4e70c 	brlid	r15, -6388	// 1105c <__eqdf2>
    2954:	10c90000 	addk	r6, r9, r0
    2958:	e8810544 	lwi	r4, r1, 1348
    295c:	be23051c 	bneid	r3, 1308		// 2e78
    2960:	e9610548 	lwi	r11, r1, 1352
    2964:	30600001 	addik	r3, r0, 1
    2968:	ea6104b8 	lwi	r19, r1, 1208
    296c:	f86b0004 	swi	r3, r11, 4
    2970:	b0000001 	imm	1
    2974:	30602a84 	addik	r3, r0, 10884
    2978:	32730001 	addik	r19, r19, 1
    297c:	30840001 	addik	r4, r4, 1
    2980:	f86b0000 	swi	r3, r11, 0
    2984:	30600007 	addik	r3, r0, 7
    2988:	fa6104b8 	swi	r19, r1, 1208
    298c:	16731801 	cmp	r19, r19, r3
    2990:	be530ed4 	bltid	r19, 3796		// 3864
    2994:	f88104bc 	swi	r4, r1, 1212
    2998:	316b0008 	addik	r11, r11, 8
    299c:	e86104d8 	lwi	r3, r1, 1240
    29a0:	e9210514 	lwi	r9, r1, 1300
    29a4:	14691801 	cmp	r3, r9, r3
    29a8:	be43001c 	bltid	r3, 28		// 29c4
    29ac:	ea6104b8 	lwi	r19, r1, 1208
    29b0:	eb8104e8 	lwi	r28, r1, 1256
    29b4:	a47c0001 	andi	r3, r28, 1
    29b8:	be03fe60 	beqid	r3, -416		// 2818
    29bc:	a47c0004 	andi	r3, r28, 4
    29c0:	ea6104b8 	lwi	r19, r1, 1208
    29c4:	eb810524 	lwi	r28, r1, 1316
    29c8:	eba1051c 	lwi	r29, r1, 1308
    29cc:	32730001 	addik	r19, r19, 1
    29d0:	fb8b0004 	swi	r28, r11, 4
    29d4:	fbab0000 	swi	r29, r11, 0
    29d8:	1084e000 	addk	r4, r4, r28
    29dc:	30600007 	addik	r3, r0, 7
    29e0:	fa6104b8 	swi	r19, r1, 1208
    29e4:	16731801 	cmp	r19, r19, r3
    29e8:	be531210 	bltid	r19, 4624		// 3bf8
    29ec:	f88104bc 	swi	r4, r1, 1212
    29f0:	316b0008 	addik	r11, r11, 8
    29f4:	eba10514 	lwi	r29, r1, 1300
    29f8:	331dffff 	addik	r24, r29, -1
    29fc:	be78fe14 	bleid	r24, -492		// 2810
    2a00:	33200010 	addik	r25, r0, 16	// 10 <_.d1>
    2a04:	1478c801 	cmp	r3, r24, r25
    2a08:	b0000001 	imm	1
    2a0c:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    2a10:	bea30694 	bgeid	r3, 1684		// 30a4
    2a14:	ea6104b8 	lwi	r19, r1, 1208
    2a18:	33600007 	addik	r27, r0, 7
    2a1c:	b8100018 	brid	24		// 2a34
    2a20:	eba1050c 	lwi	r29, r1, 1292
    2a24:	316b0008 	addik	r11, r11, 8
    2a28:	3318fff0 	addik	r24, r24, -16
    2a2c:	1478c801 	cmp	r3, r24, r25
    2a30:	bca30674 	bgei	r3, 1652		// 30a4
    2a34:	fb8b0000 	swi	r28, r11, 0
    2a38:	fb2b0004 	swi	r25, r11, 4
    2a3c:	32730001 	addik	r19, r19, 1
    2a40:	30840010 	addik	r4, r4, 16
    2a44:	f88104bc 	swi	r4, r1, 1212
    2a48:	1473d801 	cmp	r3, r19, r27
    2a4c:	bea3ffd8 	bgeid	r3, -40		// 2a24
    2a50:	fa6104b8 	swi	r19, r1, 1208
    2a54:	10bd0000 	addk	r5, r29, r0
    2a58:	10df0000 	addk	r6, r31, r0
    2a5c:	b0000000 	imm	0
    2a60:	b9f481ac 	brlid	r15, -32340	// ac0c <__sprint_r>
    2a64:	30e104b4 	addik	r7, r1, 1204
    2a68:	be23f478 	bneid	r3, -2952		// 1ee0
    2a6c:	31610024 	addik	r11, r1, 36
    2a70:	e88104bc 	lwi	r4, r1, 1212
    2a74:	b810ffb4 	brid	-76		// 2a28
    2a78:	ea6104b8 	lwi	r19, r1, 1208
    2a7c:	be230260 	bneid	r3, 608		// 2cdc
    2a80:	eb8104e8 	lwi	r28, r1, 1256
    2a84:	a49c0001 	andi	r4, r28, 1
    2a88:	be04055c 	beqid	r4, 1372		// 2fe4
    2a8c:	eb810540 	lwi	r28, r1, 1344
    2a90:	33a00030 	addik	r29, r0, 48
    2a94:	f3a104b3 	sbi	r29, r1, 1203
    2a98:	fb810500 	swi	r28, r1, 1280
    2a9c:	eba10500 	lwi	r29, r1, 1280
    2aa0:	332104b3 	addik	r25, r1, 1203
    2aa4:	147ee801 	cmp	r3, r30, r29
    2aa8:	bea3f144 	bgeid	r3, -3772		// 1bec
    2aac:	fba104ec 	swi	r29, r1, 1260
    2ab0:	b810f13c 	brid	-3780		// 1bec
    2ab4:	fbc104ec 	swi	r30, r1, 1260
    2ab8:	e92104ec 	lwi	r9, r1, 1260
    2abc:	17a9e000 	rsubk	r29, r9, r28
    2ac0:	be7dfc28 	bleid	r29, -984		// 26e8
    2ac4:	31000010 	addik	r8, r0, 16	// 10 <_.d1>
    2ac8:	147d4001 	cmp	r3, r29, r8
    2acc:	b0000001 	imm	1
    2ad0:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    2ad4:	bea300a0 	bgeid	r3, 160		// 2b74
    2ad8:	ea6104b8 	lwi	r19, r1, 1208
    2adc:	fac104f4 	swi	r22, r1, 1268
    2ae0:	fae104f8 	swi	r23, r1, 1272
    2ae4:	13c80000 	addk	r30, r8, r0
    2ae8:	12dc0000 	addk	r22, r28, r0
    2aec:	33600007 	addik	r27, r0, 7
    2af0:	13990000 	addk	r28, r25, r0
    2af4:	13380000 	addk	r25, r24, r0
    2af8:	b8100018 	brid	24		// 2b10
    2afc:	eb01050c 	lwi	r24, r1, 1292
    2b00:	33bdfff0 	addik	r29, r29, -16
    2b04:	147df001 	cmp	r3, r29, r30
    2b08:	bea30058 	bgeid	r3, 88		// 2b60
    2b0c:	316b0008 	addik	r11, r11, 8
    2b10:	facb0000 	swi	r22, r11, 0
    2b14:	fbcb0004 	swi	r30, r11, 4
    2b18:	32730001 	addik	r19, r19, 1
    2b1c:	30840010 	addik	r4, r4, 16
    2b20:	f88104bc 	swi	r4, r1, 1212
    2b24:	1473d801 	cmp	r3, r19, r27
    2b28:	bea3ffd8 	bgeid	r3, -40		// 2b00
    2b2c:	fa6104b8 	swi	r19, r1, 1208
    2b30:	10b80000 	addk	r5, r24, r0
    2b34:	10df0000 	addk	r6, r31, r0
    2b38:	b0000000 	imm	0
    2b3c:	b9f480d0 	brlid	r15, -32560	// ac0c <__sprint_r>
    2b40:	30e104b4 	addik	r7, r1, 1204
    2b44:	be23f39c 	bneid	r3, -3172		// 1ee0
    2b48:	33bdfff0 	addik	r29, r29, -16
    2b4c:	147df001 	cmp	r3, r29, r30
    2b50:	31610024 	addik	r11, r1, 36
    2b54:	e88104bc 	lwi	r4, r1, 1212
    2b58:	be43ffb8 	bltid	r3, -72		// 2b10
    2b5c:	ea6104b8 	lwi	r19, r1, 1208
    2b60:	13190000 	addk	r24, r25, r0
    2b64:	133c0000 	addk	r25, r28, r0
    2b68:	13960000 	addk	r28, r22, r0
    2b6c:	eac104f4 	lwi	r22, r1, 1268
    2b70:	eae104f8 	lwi	r23, r1, 1272
    2b74:	fb8b0000 	swi	r28, r11, 0
    2b78:	fbab0004 	swi	r29, r11, 4
    2b7c:	32730001 	addik	r19, r19, 1
    2b80:	1084e800 	addk	r4, r4, r29
    2b84:	30600007 	addik	r3, r0, 7
    2b88:	fa6104b8 	swi	r19, r1, 1208
    2b8c:	16731801 	cmp	r19, r19, r3
    2b90:	be5307b8 	bltid	r19, 1976		// 3348
    2b94:	f88104bc 	swi	r4, r1, 1212
    2b98:	b810fb50 	brid	-1200		// 26e8
    2b9c:	316b0008 	addik	r11, r11, 8
    2ba0:	30600001 	addik	r3, r0, 1
    2ba4:	14bd1801 	cmp	r5, r29, r3
    2ba8:	bea506e8 	bgeid	r5, 1768		// 3290
    2bac:	ea6104b8 	lwi	r19, r1, 1208
    2bb0:	30600001 	addik	r3, r0, 1
    2bb4:	f86b0004 	swi	r3, r11, 4
    2bb8:	12731800 	addk	r19, r19, r3
    2bbc:	fb2b0000 	swi	r25, r11, 0
    2bc0:	10841800 	addk	r4, r4, r3
    2bc4:	30600007 	addik	r3, r0, 7
    2bc8:	f88104bc 	swi	r4, r1, 1212
    2bcc:	14731801 	cmp	r3, r19, r3
    2bd0:	be430754 	bltid	r3, 1876		// 3324
    2bd4:	fa6104b8 	swi	r19, r1, 1208
    2bd8:	316b0008 	addik	r11, r11, 8
    2bdc:	eb810524 	lwi	r28, r1, 1316
    2be0:	eba1051c 	lwi	r29, r1, 1308
    2be4:	32730001 	addik	r19, r19, 1
    2be8:	fb8b0004 	swi	r28, r11, 4
    2bec:	fbab0000 	swi	r29, r11, 0
    2bf0:	1084e000 	addk	r4, r4, r28
    2bf4:	30600007 	addik	r3, r0, 7
    2bf8:	f88104bc 	swi	r4, r1, 1212
    2bfc:	14731801 	cmp	r3, r19, r3
    2c00:	be430700 	bltid	r3, 1792		// 3300
    2c04:	fa6104b8 	swi	r19, r1, 1208
    2c08:	330b0008 	addik	r24, r11, 8
    2c0c:	e9010528 	lwi	r8, r1, 1320
    2c10:	e921052c 	lwi	r9, r1, 1324
    2c14:	f8810544 	swi	r4, r1, 1348
    2c18:	10a80000 	addk	r5, r8, r0
    2c1c:	10e00000 	addk	r7, r0, r0
    2c20:	11000000 	addk	r8, r0, r0
    2c24:	b0000000 	imm	0
    2c28:	b9f4e4a8 	brlid	r15, -7000	// 110d0 <__nedf2>
    2c2c:	10c90000 	addk	r6, r9, r0
    2c30:	be0303c0 	beqid	r3, 960		// 2ff0
    2c34:	e8810544 	lwi	r4, r1, 1348
    2c38:	e9210514 	lwi	r9, r1, 1300
    2c3c:	33390001 	addik	r25, r25, 1
    2c40:	fb380000 	swi	r25, r24, 0
    2c44:	3069ffff 	addik	r3, r9, -1
    2c48:	f8780004 	swi	r3, r24, 4
    2c4c:	32730001 	addik	r19, r19, 1
    2c50:	10841800 	addk	r4, r4, r3
    2c54:	30600007 	addik	r3, r0, 7
    2c58:	f88104bc 	swi	r4, r1, 1212
    2c5c:	14731801 	cmp	r3, r19, r3
    2c60:	be430668 	bltid	r3, 1640		// 32c8
    2c64:	fa6104b8 	swi	r19, r1, 1208
    2c68:	33180008 	addik	r24, r24, 8
    2c6c:	eba10530 	lwi	r29, r1, 1328
    2c70:	306104c8 	addik	r3, r1, 1224
    2c74:	f8780000 	swi	r3, r24, 0
    2c78:	fbb80004 	swi	r29, r24, 4
    2c7c:	32730001 	addik	r19, r19, 1
    2c80:	1084e800 	addk	r4, r4, r29
    2c84:	30600007 	addik	r3, r0, 7
    2c88:	fa6104b8 	swi	r19, r1, 1208
    2c8c:	16731801 	cmp	r19, r19, r3
    2c90:	be530010 	bltid	r19, 16		// 2ca0
    2c94:	f88104bc 	swi	r4, r1, 1212
    2c98:	b810fb78 	brid	-1160		// 2810
    2c9c:	31780008 	addik	r11, r24, 8
    2ca0:	e8a1050c 	lwi	r5, r1, 1292
    2ca4:	10df0000 	addk	r6, r31, r0
    2ca8:	b9f47f64 	brlid	r15, 32612	// ac0c <__sprint_r>
    2cac:	30e104b4 	addik	r7, r1, 1204
    2cb0:	be23f230 	bneid	r3, -3536		// 1ee0
    2cb4:	31610024 	addik	r11, r1, 36
    2cb8:	b810fb58 	brid	-1192		// 2810
    2cbc:	e88104bc 	lwi	r4, r1, 1212
    2cc0:	e8a1050c 	lwi	r5, r1, 1292
    2cc4:	10df0000 	addk	r6, r31, r0
    2cc8:	b9f47f44 	brlid	r15, 32580	// ac0c <__sprint_r>
    2ccc:	30e104b4 	addik	r7, r1, 1204
    2cd0:	bc03fc48 	beqi	r3, -952		// 2918
    2cd4:	b810f210 	brid	-3568		// 1ee4
    2cd8:	e47f000c 	lhui	r3, r31, 12
    2cdc:	fb610500 	swi	r27, r1, 1280
    2ce0:	b810eefc 	brid	-4356		// 1bdc
    2ce4:	332104b4 	addik	r25, r1, 1204
    2ce8:	be030108 	beqid	r3, 264		// 2df0
    2cec:	332104b4 	addik	r25, r1, 1204
    2cf0:	30c00000 	addik	r6, r0, 0
    2cf4:	30e00007 	addik	r7, r0, 7
    2cf8:	84b73800 	and	r5, r23, r7
    2cfc:	91160021 	src	r8, r22
    2d00:	91080021 	src	r8, r8
    2d04:	91080021 	src	r8, r8
    2d08:	91080021 	src	r8, r8
    2d0c:	b000e000 	imm	-8192
    2d10:	a5080000 	andi	r8, r8, 0
    2d14:	1060b000 	addk	r3, r0, r22
    2d18:	90760041 	srl	r3, r22
    2d1c:	90630041 	srl	r3, r3
    2d20:	90630041 	srl	r3, r3
    2d24:	12c30000 	addk	r22, r3, r0
    2d28:	30650030 	addik	r3, r5, 48
    2d2c:	1080b800 	addk	r4, r0, r23
    2d30:	90970041 	srl	r4, r23
    2d34:	90840041 	srl	r4, r4
    2d38:	90840041 	srl	r4, r4
    2d3c:	3339ffff 	addik	r25, r25, -1
    2d40:	90630060 	sext8	r3, r3
    2d44:	82e82000 	or	r23, r8, r4
    2d48:	8096b800 	or	r4, r22, r23
    2d4c:	be24ffac 	bneid	r4, -84		// 2cf8
    2d50:	f0790000 	sbi	r3, r25, 0
    2d54:	eb8104e8 	lwi	r28, r1, 1256
    2d58:	a49c0001 	andi	r4, r28, 1
    2d5c:	be04ee74 	beqid	r4, -4492		// 1bd0
    2d60:	10b90000 	addk	r5, r25, r0
    2d64:	a8630030 	xori	r3, r3, 48
    2d68:	be030100 	beqid	r3, 256		// 2e68
    2d6c:	e90104e0 	lwi	r8, r1, 1248
    2d70:	3339ffff 	addik	r25, r25, -1
    2d74:	30c00030 	addik	r6, r0, 48
    2d78:	15194000 	rsubk	r8, r25, r8
    2d7c:	f0c5ffff 	sbi	r6, r5, -1
    2d80:	b810ee5c 	brid	-4516		// 1bdc
    2d84:	f9010500 	swi	r8, r1, 1280
    2d88:	e8a1050c 	lwi	r5, r1, 1292
    2d8c:	10df0000 	addk	r6, r31, r0
    2d90:	b9f47e7c 	brlid	r15, 32380	// ac0c <__sprint_r>
    2d94:	30e104b4 	addik	r7, r1, 1204
    2d98:	be23f148 	bneid	r3, -3768		// 1ee0
    2d9c:	31610024 	addik	r11, r1, 36
    2da0:	b810fa30 	brid	-1488		// 27d0
    2da4:	e88104bc 	lwi	r4, r1, 1212
    2da8:	e8a1050c 	lwi	r5, r1, 1292
    2dac:	10df0000 	addk	r6, r31, r0
    2db0:	b9f47e5c 	brlid	r15, 32348	// ac0c <__sprint_r>
    2db4:	30e104b4 	addik	r7, r1, 1204
    2db8:	be23f128 	bneid	r3, -3800		// 1ee0
    2dbc:	31610024 	addik	r11, r1, 36
    2dc0:	b810f8d8 	brid	-1832		// 2698
    2dc4:	e88104bc 	lwi	r4, r1, 1212
    2dc8:	e8a1050c 	lwi	r5, r1, 1292
    2dcc:	10df0000 	addk	r6, r31, r0
    2dd0:	b9f47e3c 	brlid	r15, 32316	// ac0c <__sprint_r>
    2dd4:	30e104b4 	addik	r7, r1, 1204
    2dd8:	be23f108 	bneid	r3, -3832		// 1ee0
    2ddc:	31610024 	addik	r11, r1, 36
    2de0:	b810f8f8 	brid	-1800		// 26d8
    2de4:	e88104bc 	lwi	r4, r1, 1212
    2de8:	b810fb20 	brid	-1248		// 2908
    2dec:	107c0000 	addk	r3, r28, r0
    2df0:	e9210534 	lwi	r9, r1, 1332
    2df4:	30c00000 	addik	r6, r0, 0
    2df8:	30e0000f 	addik	r7, r0, 15
    2dfc:	84b73800 	and	r5, r23, r7
    2e00:	1060b000 	addk	r3, r0, r22
    2e04:	90760041 	srl	r3, r22
    2e08:	90630041 	srl	r3, r3
    2e0c:	90630041 	srl	r3, r3
    2e10:	90630041 	srl	r3, r3
    2e14:	91160021 	src	r8, r22
    2e18:	91080021 	src	r8, r8
    2e1c:	91080021 	src	r8, r8
    2e20:	91080021 	src	r8, r8
    2e24:	91080021 	src	r8, r8
    2e28:	b000f000 	imm	-4096
    2e2c:	a5080000 	andi	r8, r8, 0
    2e30:	12c30000 	addk	r22, r3, r0
    2e34:	10692800 	addk	r3, r9, r5
    2e38:	e0630000 	lbui	r3, r3, 0
    2e3c:	1080b800 	addk	r4, r0, r23
    2e40:	90970041 	srl	r4, r23
    2e44:	90840041 	srl	r4, r4
    2e48:	90840041 	srl	r4, r4
    2e4c:	90840041 	srl	r4, r4
    2e50:	3339ffff 	addik	r25, r25, -1
    2e54:	82e82000 	or	r23, r8, r4
    2e58:	f0790000 	sbi	r3, r25, 0
    2e5c:	8076b800 	or	r3, r22, r23
    2e60:	be23ffa0 	bneid	r3, -96		// 2e00
    2e64:	84b73800 	and	r5, r23, r7
    2e68:	e88104e0 	lwi	r4, r1, 1248
    2e6c:	14992000 	rsubk	r4, r25, r4
    2e70:	b810ed6c 	brid	-4756		// 1bdc
    2e74:	f8810500 	swi	r4, r1, 1280
    2e78:	eb0104d8 	lwi	r24, r1, 1240
    2e7c:	be780a08 	bleid	r24, 2568		// 3884
    2e80:	e9210514 	lwi	r9, r1, 1300
    2e84:	eb810520 	lwi	r28, r1, 1312
    2e88:	13d94800 	addk	r30, r25, r9
    2e8c:	1719f000 	rsubk	r24, r25, r30
    2e90:	1478e001 	cmp	r3, r24, r28
    2e94:	bc430d14 	blti	r3, 3348		// 3ba8
    2e98:	be780030 	bleid	r24, 48		// 2ec8
    2e9c:	ea6104b8 	lwi	r19, r1, 1208
    2ea0:	1084c000 	addk	r4, r4, r24
    2ea4:	fb2b0000 	swi	r25, r11, 0
    2ea8:	fb0b0004 	swi	r24, r11, 4
    2eac:	32730001 	addik	r19, r19, 1
    2eb0:	30600007 	addik	r3, r0, 7
    2eb4:	fa6104b8 	swi	r19, r1, 1208
    2eb8:	16731801 	cmp	r19, r19, r3
    2ebc:	be530e54 	bltid	r19, 3668		// 3d10
    2ec0:	f88104bc 	swi	r4, r1, 1212
    2ec4:	316b0008 	addik	r11, r11, 8
    2ec8:	eba10520 	lwi	r29, r1, 1312
    2ecc:	a8b8ffff 	xori	r5, r24, -1
    2ed0:	10602800 	addk	r3, r0, r5
    2ed4:	90650001 	sra	r3, r5
    2ed8:	90630001 	sra	r3, r3
    2edc:	90630001 	sra	r3, r3
    2ee0:	90630001 	sra	r3, r3
    2ee4:	90630001 	sra	r3, r3
    2ee8:	90630001 	sra	r3, r3
    2eec:	90630001 	sra	r3, r3
    2ef0:	90630001 	sra	r3, r3
    2ef4:	90630001 	sra	r3, r3
    2ef8:	90630001 	sra	r3, r3
    2efc:	90630001 	sra	r3, r3
    2f00:	90630001 	sra	r3, r3
    2f04:	90630001 	sra	r3, r3
    2f08:	90630001 	sra	r3, r3
    2f0c:	90630001 	sra	r3, r3
    2f10:	90630001 	sra	r3, r3
    2f14:	90630001 	sra	r3, r3
    2f18:	90630001 	sra	r3, r3
    2f1c:	90630001 	sra	r3, r3
    2f20:	90630001 	sra	r3, r3
    2f24:	90630001 	sra	r3, r3
    2f28:	90630001 	sra	r3, r3
    2f2c:	90630001 	sra	r3, r3
    2f30:	90630001 	sra	r3, r3
    2f34:	90630001 	sra	r3, r3
    2f38:	90630001 	sra	r3, r3
    2f3c:	90630001 	sra	r3, r3
    2f40:	90630001 	sra	r3, r3
    2f44:	90630001 	sra	r3, r3
    2f48:	90630001 	sra	r3, r3
    2f4c:	90630001 	sra	r3, r3
    2f50:	87181800 	and	r24, r24, r3
    2f54:	1718e800 	rsubk	r24, r24, r29
    2f58:	be780184 	bleid	r24, 388		// 30dc
    2f5c:	33600010 	addik	r27, r0, 16	// 10 <_.d1>
    2f60:	1478d801 	cmp	r3, r24, r27
    2f64:	b0000001 	imm	1
    2f68:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    2f6c:	bea307ec 	bgeid	r3, 2028		// 3758
    2f70:	ea6104b8 	lwi	r19, r1, 1208
    2f74:	fac10500 	swi	r22, r1, 1280
    2f78:	fae10504 	swi	r23, r1, 1284
    2f7c:	33a00007 	addik	r29, r0, 7
    2f80:	12dc0000 	addk	r22, r28, r0
    2f84:	13980000 	addk	r28, r24, r0
    2f88:	b8100018 	brid	24		// 2fa0
    2f8c:	eb01050c 	lwi	r24, r1, 1292
    2f90:	316b0008 	addik	r11, r11, 8
    2f94:	339cfff0 	addik	r28, r28, -16
    2f98:	147cd801 	cmp	r3, r28, r27
    2f9c:	bca307ac 	bgei	r3, 1964		// 3748
    2fa0:	facb0000 	swi	r22, r11, 0
    2fa4:	fb6b0004 	swi	r27, r11, 4
    2fa8:	32730001 	addik	r19, r19, 1
    2fac:	30840010 	addik	r4, r4, 16
    2fb0:	f88104bc 	swi	r4, r1, 1212
    2fb4:	1473e801 	cmp	r3, r19, r29
    2fb8:	bea3ffd8 	bgeid	r3, -40		// 2f90
    2fbc:	fa6104b8 	swi	r19, r1, 1208
    2fc0:	10b80000 	addk	r5, r24, r0
    2fc4:	10df0000 	addk	r6, r31, r0
    2fc8:	b9f47c44 	brlid	r15, 31812	// ac0c <__sprint_r>
    2fcc:	30e104b4 	addik	r7, r1, 1204
    2fd0:	be23ef10 	bneid	r3, -4336		// 1ee0
    2fd4:	31610024 	addik	r11, r1, 36
    2fd8:	e88104bc 	lwi	r4, r1, 1212
    2fdc:	b810ffb8 	brid	-72		// 2f94
    2fe0:	ea6104b8 	lwi	r19, r1, 1208
    2fe4:	f8610500 	swi	r3, r1, 1280
    2fe8:	b810ebf4 	brid	-5132		// 1bdc
    2fec:	332104b4 	addik	r25, r1, 1204
    2ff0:	eb810514 	lwi	r28, r1, 1300
    2ff4:	333cffff 	addik	r25, r28, -1
    2ff8:	be79fc74 	bleid	r25, -908		// 2c6c
    2ffc:	33600010 	addik	r27, r0, 16	// 10 <_.d1>
    3000:	1479d801 	cmp	r3, r25, r27
    3004:	b0000001 	imm	1
    3008:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    300c:	bea302e0 	bgeid	r3, 736		// 32ec
    3010:	33a00007 	addik	r29, r0, 7
    3014:	b8100018 	brid	24		// 302c
    3018:	ebc1050c 	lwi	r30, r1, 1292
    301c:	33180008 	addik	r24, r24, 8
    3020:	3339fff0 	addik	r25, r25, -16
    3024:	1479d801 	cmp	r3, r25, r27
    3028:	bca302c4 	bgei	r3, 708		// 32ec
    302c:	fb980000 	swi	r28, r24, 0
    3030:	fb780004 	swi	r27, r24, 4
    3034:	32730001 	addik	r19, r19, 1
    3038:	30840010 	addik	r4, r4, 16
    303c:	f88104bc 	swi	r4, r1, 1212
    3040:	1473e801 	cmp	r3, r19, r29
    3044:	bea3ffd8 	bgeid	r3, -40		// 301c
    3048:	fa6104b8 	swi	r19, r1, 1208
    304c:	10be0000 	addk	r5, r30, r0
    3050:	10df0000 	addk	r6, r31, r0
    3054:	b9f47bb8 	brlid	r15, 31672	// ac0c <__sprint_r>
    3058:	30e104b4 	addik	r7, r1, 1204
    305c:	be23ee84 	bneid	r3, -4476		// 1ee0
    3060:	33010024 	addik	r24, r1, 36
    3064:	e88104bc 	lwi	r4, r1, 1212
    3068:	b810ffb8 	brid	-72		// 3020
    306c:	ea6104b8 	lwi	r19, r1, 1208
    3070:	8376b800 	or	r27, r22, r23
    3074:	be1beabc 	beqid	r27, -5444		// 1b30
    3078:	30600002 	addik	r3, r0, 2
    307c:	eb8104e8 	lwi	r28, r1, 1256
    3080:	30600030 	addik	r3, r0, 48
    3084:	f06104dc 	sbi	r3, r1, 1244
    3088:	a39c0002 	ori	r28, r28, 2
    308c:	f30104dd 	sbi	r24, r1, 1245
    3090:	fb8104e8 	swi	r28, r1, 1256
    3094:	33600001 	addik	r27, r0, 1
    3098:	30600002 	addik	r3, r0, 2
    309c:	b810ea98 	brid	-5480		// 1b34
    30a0:	f00104de 	sbi	r0, r1, 1246
    30a4:	fb8b0000 	swi	r28, r11, 0
    30a8:	fb0b0004 	swi	r24, r11, 4
    30ac:	32730001 	addik	r19, r19, 1
    30b0:	b810f748 	brid	-2232		// 27f8
    30b4:	1084c000 	addk	r4, r4, r24
    30b8:	b810e840 	brid	-6080		// 18f8
    30bc:	ebf90008 	lwi	r31, r25, 8
    30c0:	e8a1050c 	lwi	r5, r1, 1292
    30c4:	10df0000 	addk	r6, r31, r0
    30c8:	b9f47b44 	brlid	r15, 31556	// ac0c <__sprint_r>
    30cc:	30e104b4 	addik	r7, r1, 1204
    30d0:	be23ee10 	bneid	r3, -4592		// 1ee0
    30d4:	e88104bc 	lwi	r4, r1, 1212
    30d8:	31610024 	addik	r11, r1, 36
    30dc:	e86104d8 	lwi	r3, r1, 1240
    30e0:	eb810514 	lwi	r28, r1, 1300
    30e4:	e9210520 	lwi	r9, r1, 1312
    30e8:	14bc1801 	cmp	r5, r28, r3
    30ec:	be450018 	bltid	r5, 24		// 3104
    30f0:	13394800 	addk	r25, r25, r9
    30f4:	eba104e8 	lwi	r29, r1, 1256
    30f8:	a4bd0001 	andi	r5, r29, 1
    30fc:	be050040 	beqid	r5, 64		// 313c
    3100:	e9210514 	lwi	r9, r1, 1300
    3104:	ea6104b8 	lwi	r19, r1, 1208
    3108:	eba10524 	lwi	r29, r1, 1316
    310c:	eb81051c 	lwi	r28, r1, 1308
    3110:	32730001 	addik	r19, r19, 1
    3114:	fbab0004 	swi	r29, r11, 4
    3118:	fb8b0000 	swi	r28, r11, 0
    311c:	1084e800 	addk	r4, r4, r29
    3120:	30a00007 	addik	r5, r0, 7
    3124:	fa6104b8 	swi	r19, r1, 1208
    3128:	16732801 	cmp	r19, r19, r5
    312c:	be530c30 	bltid	r19, 3120		// 3d5c
    3130:	f88104bc 	swi	r4, r1, 1212
    3134:	316b0008 	addik	r11, r11, 8
    3138:	e9210514 	lwi	r9, r1, 1300
    313c:	17d9f000 	rsubk	r30, r25, r30
    3140:	14634800 	rsubk	r3, r3, r9
    3144:	14a3f001 	cmp	r5, r3, r30
    3148:	be450a68 	bltid	r5, 2664		// 3bb0
    314c:	13630000 	addk	r27, r3, r0
    3150:	be7b0030 	bleid	r27, 48		// 3180
    3154:	ea6104b8 	lwi	r19, r1, 1208
    3158:	1084d800 	addk	r4, r4, r27
    315c:	fb2b0000 	swi	r25, r11, 0
    3160:	fb6b0004 	swi	r27, r11, 4
    3164:	32730001 	addik	r19, r19, 1
    3168:	30a00007 	addik	r5, r0, 7
    316c:	fa6104b8 	swi	r19, r1, 1208
    3170:	16732801 	cmp	r19, r19, r5
    3174:	be530c0c 	bltid	r19, 3084		// 3d80
    3178:	f88104bc 	swi	r4, r1, 1212
    317c:	316b0008 	addik	r11, r11, 8
    3180:	a8bbffff 	xori	r5, r27, -1
    3184:	13002800 	addk	r24, r0, r5
    3188:	93050001 	sra	r24, r5
    318c:	93180001 	sra	r24, r24
    3190:	93180001 	sra	r24, r24
    3194:	93180001 	sra	r24, r24
    3198:	93180001 	sra	r24, r24
    319c:	93180001 	sra	r24, r24
    31a0:	93180001 	sra	r24, r24
    31a4:	93180001 	sra	r24, r24
    31a8:	93180001 	sra	r24, r24
    31ac:	93180001 	sra	r24, r24
    31b0:	93180001 	sra	r24, r24
    31b4:	93180001 	sra	r24, r24
    31b8:	93180001 	sra	r24, r24
    31bc:	93180001 	sra	r24, r24
    31c0:	93180001 	sra	r24, r24
    31c4:	93180001 	sra	r24, r24
    31c8:	93180001 	sra	r24, r24
    31cc:	93180001 	sra	r24, r24
    31d0:	93180001 	sra	r24, r24
    31d4:	93180001 	sra	r24, r24
    31d8:	93180001 	sra	r24, r24
    31dc:	93180001 	sra	r24, r24
    31e0:	93180001 	sra	r24, r24
    31e4:	93180001 	sra	r24, r24
    31e8:	93180001 	sra	r24, r24
    31ec:	93180001 	sra	r24, r24
    31f0:	93180001 	sra	r24, r24
    31f4:	93180001 	sra	r24, r24
    31f8:	93180001 	sra	r24, r24
    31fc:	93180001 	sra	r24, r24
    3200:	93180001 	sra	r24, r24
    3204:	871bc000 	and	r24, r27, r24
    3208:	17181800 	rsubk	r24, r24, r3
    320c:	be78f604 	bleid	r24, -2556		// 2810
    3210:	33200010 	addik	r25, r0, 16	// 10 <_.d1>
    3214:	1478c801 	cmp	r3, r24, r25
    3218:	b0000001 	imm	1
    321c:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    3220:	bea3fe84 	bgeid	r3, -380		// 30a4
    3224:	ea6104b8 	lwi	r19, r1, 1208
    3228:	33600007 	addik	r27, r0, 7
    322c:	b8100018 	brid	24		// 3244
    3230:	eba1050c 	lwi	r29, r1, 1292
    3234:	316b0008 	addik	r11, r11, 8
    3238:	3318fff0 	addik	r24, r24, -16
    323c:	1478c801 	cmp	r3, r24, r25
    3240:	bca3fe64 	bgei	r3, -412		// 30a4
    3244:	fb8b0000 	swi	r28, r11, 0
    3248:	fb2b0004 	swi	r25, r11, 4
    324c:	32730001 	addik	r19, r19, 1
    3250:	30840010 	addik	r4, r4, 16
    3254:	f88104bc 	swi	r4, r1, 1212
    3258:	1473d801 	cmp	r3, r19, r27
    325c:	bea3ffd8 	bgeid	r3, -40		// 3234
    3260:	fa6104b8 	swi	r19, r1, 1208
    3264:	10bd0000 	addk	r5, r29, r0
    3268:	10df0000 	addk	r6, r31, r0
    326c:	b9f479a0 	brlid	r15, 31136	// ac0c <__sprint_r>
    3270:	30e104b4 	addik	r7, r1, 1204
    3274:	be23ec6c 	bneid	r3, -5012		// 1ee0
    3278:	31610024 	addik	r11, r1, 36
    327c:	e88104bc 	lwi	r4, r1, 1212
    3280:	b810ffb8 	brid	-72		// 3238
    3284:	ea6104b8 	lwi	r19, r1, 1208
    3288:	b810e670 	brid	-6544		// 18f8
    328c:	ebf9000c 	lwi	r31, r25, 12
    3290:	eb8104e8 	lwi	r28, r1, 1256
    3294:	84bc1800 	and	r5, r28, r3
    3298:	bc25f918 	bnei	r5, -1768		// 2bb0
    329c:	f86b0004 	swi	r3, r11, 4
    32a0:	fb2b0000 	swi	r25, r11, 0
    32a4:	32730001 	addik	r19, r19, 1
    32a8:	30840001 	addik	r4, r4, 1
    32ac:	30600007 	addik	r3, r0, 7
    32b0:	f88104bc 	swi	r4, r1, 1212
    32b4:	14731801 	cmp	r3, r19, r3
    32b8:	be430010 	bltid	r3, 16		// 32c8
    32bc:	fa6104b8 	swi	r19, r1, 1208
    32c0:	b810f9ac 	brid	-1620		// 2c6c
    32c4:	330b0008 	addik	r24, r11, 8
    32c8:	e8a1050c 	lwi	r5, r1, 1292
    32cc:	10df0000 	addk	r6, r31, r0
    32d0:	b9f4793c 	brlid	r15, 31036	// ac0c <__sprint_r>
    32d4:	30e104b4 	addik	r7, r1, 1204
    32d8:	be23ec08 	bneid	r3, -5112		// 1ee0
    32dc:	33010024 	addik	r24, r1, 36
    32e0:	e88104bc 	lwi	r4, r1, 1212
    32e4:	b810f988 	brid	-1656		// 2c6c
    32e8:	ea6104b8 	lwi	r19, r1, 1208
    32ec:	fb980000 	swi	r28, r24, 0
    32f0:	fb380004 	swi	r25, r24, 4
    32f4:	32730001 	addik	r19, r19, 1
    32f8:	b810f95c 	brid	-1700		// 2c54
    32fc:	1084c800 	addk	r4, r4, r25
    3300:	e8a1050c 	lwi	r5, r1, 1292
    3304:	10df0000 	addk	r6, r31, r0
    3308:	b9f47904 	brlid	r15, 30980	// ac0c <__sprint_r>
    330c:	30e104b4 	addik	r7, r1, 1204
    3310:	be23ebd0 	bneid	r3, -5168		// 1ee0
    3314:	33010024 	addik	r24, r1, 36
    3318:	e88104bc 	lwi	r4, r1, 1212
    331c:	b810f8f0 	brid	-1808		// 2c0c
    3320:	ea6104b8 	lwi	r19, r1, 1208
    3324:	e8a1050c 	lwi	r5, r1, 1292
    3328:	10df0000 	addk	r6, r31, r0
    332c:	b9f478e0 	brlid	r15, 30944	// ac0c <__sprint_r>
    3330:	30e104b4 	addik	r7, r1, 1204
    3334:	be23ebac 	bneid	r3, -5204		// 1ee0
    3338:	31610024 	addik	r11, r1, 36
    333c:	e88104bc 	lwi	r4, r1, 1212
    3340:	b810f89c 	brid	-1892		// 2bdc
    3344:	ea6104b8 	lwi	r19, r1, 1208
    3348:	e8a1050c 	lwi	r5, r1, 1292
    334c:	10df0000 	addk	r6, r31, r0
    3350:	b9f478bc 	brlid	r15, 30908	// ac0c <__sprint_r>
    3354:	30e104b4 	addik	r7, r1, 1204
    3358:	be23eb88 	bneid	r3, -5240		// 1ee0
    335c:	31610024 	addik	r11, r1, 36
    3360:	b810f388 	brid	-3192		// 26e8
    3364:	e88104bc 	lwi	r4, r1, 1212
    3368:	06f70000 	rsub	r23, r23, r0
    336c:	0ed60000 	rsubc	r22, r22, r0
    3370:	8076b800 	or	r3, r22, r23
    3374:	14830000 	rsubk	r4, r3, r0
    3378:	80641800 	or	r3, r4, r3
    337c:	3080002d 	addik	r4, r0, 45
    3380:	13601800 	addk	r27, r0, r3
    3384:	93630041 	srl	r27, r3
    3388:	937b0041 	srl	r27, r27
    338c:	937b0041 	srl	r27, r27
    3390:	937b0041 	srl	r27, r27
    3394:	937b0041 	srl	r27, r27
    3398:	937b0041 	srl	r27, r27
    339c:	937b0041 	srl	r27, r27
    33a0:	937b0041 	srl	r27, r27
    33a4:	937b0041 	srl	r27, r27
    33a8:	937b0041 	srl	r27, r27
    33ac:	937b0041 	srl	r27, r27
    33b0:	937b0041 	srl	r27, r27
    33b4:	937b0041 	srl	r27, r27
    33b8:	937b0041 	srl	r27, r27
    33bc:	937b0041 	srl	r27, r27
    33c0:	937b0041 	srl	r27, r27
    33c4:	937b0041 	srl	r27, r27
    33c8:	937b0041 	srl	r27, r27
    33cc:	937b0041 	srl	r27, r27
    33d0:	937b0041 	srl	r27, r27
    33d4:	937b0041 	srl	r27, r27
    33d8:	937b0041 	srl	r27, r27
    33dc:	937b0041 	srl	r27, r27
    33e0:	937b0041 	srl	r27, r27
    33e4:	937b0041 	srl	r27, r27
    33e8:	937b0041 	srl	r27, r27
    33ec:	937b0041 	srl	r27, r27
    33f0:	937b0041 	srl	r27, r27
    33f4:	937b0041 	srl	r27, r27
    33f8:	937b0041 	srl	r27, r27
    33fc:	937b0041 	srl	r27, r27
    3400:	f08104de 	sbi	r4, r1, 1246
    3404:	b810e730 	brid	-6352		// 1b34
    3408:	30600001 	addik	r3, r0, 1
    340c:	e31a0000 	lbui	r24, r26, 0
    3410:	b810e640 	brid	-6592		// 1a50
    3414:	93180060 	sext8	r24, r24
    3418:	10db0000 	addk	r6, r27, r0
    341c:	10b30000 	addk	r5, r19, r0
    3420:	b9f47358 	brlid	r15, 29528	// a778 <__fpclassifyd>
    3424:	f9610548 	swi	r11, r1, 1352
    3428:	be030728 	beqid	r3, 1832		// 3b50
    342c:	e9610548 	lwi	r11, r1, 1352
    3430:	a87effff 	xori	r3, r30, -1
    3434:	be030cc0 	beqid	r3, 3264		// 40f4
    3438:	a478ffdf 	andi	r3, r24, -33
    343c:	a8830047 	xori	r4, r3, 71
    3440:	be240014 	bneid	r4, 20		// 3454
    3444:	f8810500 	swi	r4, r1, 1280
    3448:	be3e0010 	bneid	r30, 16		// 3458
    344c:	eb8104e8 	lwi	r28, r1, 1256
    3450:	33c00001 	addik	r30, r0, 1
    3454:	eb8104e8 	lwi	r28, r1, 1256
    3458:	13a00000 	addk	r29, r0, r0
    345c:	fba10518 	swi	r29, r1, 1304
    3460:	a39c0100 	ori	r28, r28, 256
    3464:	be530c7c 	bltid	r19, 3196		// 40e0
    3468:	fb8104f4 	swi	r28, r1, 1268
    346c:	a8830046 	xori	r4, r3, 70
    3470:	14a40000 	rsubk	r5, r4, r0
    3474:	80852000 	or	r4, r5, r4
    3478:	a884ffff 	xori	r4, r4, -1
    347c:	11802000 	addk	r12, r0, r4
    3480:	91840041 	srl	r12, r4
    3484:	918c0041 	srl	r12, r12
    3488:	918c0041 	srl	r12, r12
    348c:	918c0041 	srl	r12, r12
    3490:	918c0041 	srl	r12, r12
    3494:	918c0041 	srl	r12, r12
    3498:	918c0041 	srl	r12, r12
    349c:	918c0041 	srl	r12, r12
    34a0:	918c0041 	srl	r12, r12
    34a4:	918c0041 	srl	r12, r12
    34a8:	918c0041 	srl	r12, r12
    34ac:	918c0041 	srl	r12, r12
    34b0:	918c0041 	srl	r12, r12
    34b4:	918c0041 	srl	r12, r12
    34b8:	918c0041 	srl	r12, r12
    34bc:	918c0041 	srl	r12, r12
    34c0:	918c0041 	srl	r12, r12
    34c4:	918c0041 	srl	r12, r12
    34c8:	918c0041 	srl	r12, r12
    34cc:	918c0041 	srl	r12, r12
    34d0:	918c0041 	srl	r12, r12
    34d4:	918c0041 	srl	r12, r12
    34d8:	918c0041 	srl	r12, r12
    34dc:	918c0041 	srl	r12, r12
    34e0:	918c0041 	srl	r12, r12
    34e4:	918c0041 	srl	r12, r12
    34e8:	918c0041 	srl	r12, r12
    34ec:	918c0041 	srl	r12, r12
    34f0:	918c0041 	srl	r12, r12
    34f4:	918c0041 	srl	r12, r12
    34f8:	918c0041 	srl	r12, r12
    34fc:	be2c0980 	bneid	r12, 2432		// 3e7c
    3500:	31000003 	addik	r8, r0, 3
    3504:	a8630045 	xori	r3, r3, 69
    3508:	be230974 	bneid	r3, 2420		// 3e7c
    350c:	31000002 	addik	r8, r0, 2
    3510:	309e0001 	addik	r4, r30, 1
    3514:	11240000 	addk	r9, r4, r0
    3518:	306104d4 	addik	r3, r1, 1236
    351c:	10d30000 	addk	r6, r19, r0
    3520:	e8a1050c 	lwi	r5, r1, 1292
    3524:	10fb0000 	addk	r7, r27, r0
    3528:	f861001c 	swi	r3, r1, 28
    352c:	306104d0 	addik	r3, r1, 1232
    3530:	f8610020 	swi	r3, r1, 32
    3534:	314104d8 	addik	r10, r1, 1240
    3538:	f8810544 	swi	r4, r1, 1348
    353c:	b9f419cc 	brlid	r15, 6604	// 4f08 <_dtoa_r>
    3540:	f9610548 	swi	r11, r1, 1352
    3544:	e8810544 	lwi	r4, r1, 1348
    3548:	13230000 	addk	r25, r3, r0
    354c:	e9610548 	lwi	r11, r1, 1352
    3550:	10832000 	addk	r4, r3, r4
    3554:	fa6104ec 	swi	r19, r1, 1260
    3558:	fb6104f0 	swi	r27, r1, 1264
    355c:	eb8104ec 	lwi	r28, r1, 1260
    3560:	eba104f0 	lwi	r29, r1, 1264
    3564:	f8810544 	swi	r4, r1, 1348
    3568:	f9610548 	swi	r11, r1, 1352
    356c:	10bc0000 	addk	r5, r28, r0
    3570:	10e00000 	addk	r7, r0, r0
    3574:	11000000 	addk	r8, r0, r0
    3578:	b0000000 	imm	0
    357c:	b9f4dae0 	brlid	r15, -9504	// 1105c <__eqdf2>
    3580:	10dd0000 	addk	r6, r29, r0
    3584:	e8810544 	lwi	r4, r1, 1348
    3588:	be03003c 	beqid	r3, 60		// 35c4
    358c:	e9610548 	lwi	r11, r1, 1352
    3590:	e86104d0 	lwi	r3, r1, 1232
    3594:	14a41803 	cmpu	r5, r4, r3
    3598:	bea50fdc 	bgeid	r5, 4060		// 4574
    359c:	eba10518 	lwi	r29, r1, 1304
    35a0:	eb810500 	lwi	r28, r1, 1280
    35a4:	30a00030 	addik	r5, r0, 48
    35a8:	f0a30000 	sbi	r5, r3, 0
    35ac:	30630001 	addik	r3, r3, 1
    35b0:	88a32000 	xor	r5, r3, r4
    35b4:	be25fff0 	bneid	r5, -16		// 35a4
    35b8:	f86104d0 	swi	r3, r1, 1232
    35bc:	fba10518 	swi	r29, r1, 1304
    35c0:	fb810500 	swi	r28, r1, 1280
    35c4:	eb810500 	lwi	r28, r1, 1280
    35c8:	14992000 	rsubk	r4, r25, r4
    35cc:	be1c0980 	beqid	r28, 2432		// 3f4c
    35d0:	f8810514 	swi	r4, r1, 1300
    35d4:	30600065 	addik	r3, r0, 101
    35d8:	14781801 	cmp	r3, r24, r3
    35dc:	bea30fa0 	bgeid	r3, 4000		// 457c
    35e0:	a8780066 	xori	r3, r24, 102
    35e4:	be030bc8 	beqid	r3, 3016		// 41ac
    35e8:	e86104d8 	lwi	r3, r1, 1240
    35ec:	eba10514 	lwi	r29, r1, 1300
    35f0:	149d1801 	cmp	r4, r29, r3
    35f4:	be440b10 	bltid	r4, 2832		// 4104
    35f8:	eb8104e8 	lwi	r28, r1, 1256
    35fc:	a49c0001 	andi	r4, r28, 1
    3600:	be240c84 	bneid	r4, 3204		// 4284
    3604:	33a30001 	addik	r29, r3, 1
    3608:	a8a3ffff 	xori	r5, r3, -1
    360c:	10802800 	addk	r4, r0, r5
    3610:	90850001 	sra	r4, r5
    3614:	90840001 	sra	r4, r4
    3618:	90840001 	sra	r4, r4
    361c:	90840001 	sra	r4, r4
    3620:	90840001 	sra	r4, r4
    3624:	90840001 	sra	r4, r4
    3628:	90840001 	sra	r4, r4
    362c:	90840001 	sra	r4, r4
    3630:	90840001 	sra	r4, r4
    3634:	90840001 	sra	r4, r4
    3638:	90840001 	sra	r4, r4
    363c:	90840001 	sra	r4, r4
    3640:	90840001 	sra	r4, r4
    3644:	90840001 	sra	r4, r4
    3648:	90840001 	sra	r4, r4
    364c:	90840001 	sra	r4, r4
    3650:	90840001 	sra	r4, r4
    3654:	90840001 	sra	r4, r4
    3658:	90840001 	sra	r4, r4
    365c:	90840001 	sra	r4, r4
    3660:	90840001 	sra	r4, r4
    3664:	90840001 	sra	r4, r4
    3668:	90840001 	sra	r4, r4
    366c:	90840001 	sra	r4, r4
    3670:	90840001 	sra	r4, r4
    3674:	90840001 	sra	r4, r4
    3678:	90840001 	sra	r4, r4
    367c:	90840001 	sra	r4, r4
    3680:	90840001 	sra	r4, r4
    3684:	90840001 	sra	r4, r4
    3688:	90840001 	sra	r4, r4
    368c:	84832000 	and	r4, r3, r4
    3690:	f8610500 	swi	r3, r1, 1280
    3694:	f88104ec 	swi	r4, r1, 1260
    3698:	33000067 	addik	r24, r0, 103
    369c:	f8610520 	swi	r3, r1, 1312
    36a0:	eba10518 	lwi	r29, r1, 1304
    36a4:	be1d07c8 	beqid	r29, 1992		// 3e6c
    36a8:	eb8104f4 	lwi	r28, r1, 1268
    36ac:	e88104f4 	lwi	r4, r1, 1268
    36b0:	3060002d 	addik	r3, r0, 45
    36b4:	11000000 	addk	r8, r0, r0
    36b8:	f06104de 	sbi	r3, r1, 1246
    36bc:	f88104e8 	swi	r4, r1, 1256
    36c0:	b810e548 	brid	-6840		// 1c08
    36c4:	f9010518 	swi	r8, r1, 1304
    36c8:	ea7c0000 	lwi	r19, r28, 0
    36cc:	eb7c0004 	lwi	r27, r28, 4
    36d0:	339c0008 	addik	r28, r28, 8
    36d4:	b810ee44 	brid	-4540		// 2518
    36d8:	fb810588 	swi	r28, r1, 1416
    36dc:	be03044c 	beqid	r3, 1100		// 3b28
    36e0:	eb810588 	lwi	r28, r1, 1416
    36e4:	eadc0000 	lwi	r22, r28, 0
    36e8:	339c0004 	addik	r28, r28, 4
    36ec:	fb810588 	swi	r28, r1, 1416
    36f0:	92d60061 	sext16	r22, r22
    36f4:	12e0b000 	addk	r23, r0, r22
    36f8:	02d7b800 	add	r22, r23, r23
    36fc:	0ac00000 	addc	r22, r0, r0
    3700:	bc160008 	beqi	r22, 8		// 3708
    3704:	22c0ffff 	addi	r22, r0, -1
    3708:	b810e62c 	brid	-6612		// 1d34
    370c:	10760000 	addk	r3, r22, r0
    3710:	eb8104e8 	lwi	r28, r1, 1256
    3714:	a47c0040 	andi	r3, r28, 64
    3718:	bc0303f8 	beqi	r3, 1016		// 3b10
    371c:	12c40000 	addk	r22, r4, r0
    3720:	e6fd0002 	lhui	r23, r29, 2
    3724:	33bd0004 	addik	r29, r29, 4
    3728:	b810e8c0 	brid	-5952		// 1fe8
    372c:	fba10588 	swi	r29, r1, 1416
    3730:	eba104e8 	lwi	r29, r1, 1256
    3734:	a49d0040 	andi	r4, r29, 64
    3738:	bc0403c8 	beqi	r4, 968		// 3b00
    373c:	30600001 	addik	r3, r0, 1
    3740:	b8100088 	brid	136		// 37c8
    3744:	e6fc0002 	lhui	r23, r28, 2
    3748:	131c0000 	addk	r24, r28, r0
    374c:	13960000 	addk	r28, r22, r0
    3750:	eac10500 	lwi	r22, r1, 1280
    3754:	eae10504 	lwi	r23, r1, 1284
    3758:	fb8b0000 	swi	r28, r11, 0
    375c:	fb0b0004 	swi	r24, r11, 4
    3760:	32730001 	addik	r19, r19, 1
    3764:	1084c000 	addk	r4, r4, r24
    3768:	30600007 	addik	r3, r0, 7
    376c:	fa6104b8 	swi	r19, r1, 1208
    3770:	16731801 	cmp	r19, r19, r3
    3774:	be53f94c 	bltid	r19, -1716		// 30c0
    3778:	f88104bc 	swi	r4, r1, 1212
    377c:	b810f960 	brid	-1696		// 30dc
    3780:	316b0008 	addik	r11, r11, 8
    3784:	a47c0010 	andi	r3, r28, 16
    3788:	bc230360 	bnei	r3, 864		// 3ae8
    378c:	eba104e8 	lwi	r29, r1, 1256
    3790:	a47d0040 	andi	r3, r29, 64
    3794:	be0308e8 	beqid	r3, 2280		// 407c
    3798:	eb810588 	lwi	r28, r1, 1416
    379c:	e87c0000 	lwi	r3, r28, 0
    37a0:	eba10508 	lwi	r29, r1, 1288
    37a4:	339c0004 	addik	r28, r28, 4
    37a8:	fb810588 	swi	r28, r1, 1416
    37ac:	b810e1e0 	brid	-7712		// 198c
    37b0:	f7a30000 	shi	r29, r3, 0
    37b4:	a49d0040 	andi	r4, r29, 64
    37b8:	be040288 	beqid	r4, 648		// 3a40
    37bc:	eb810588 	lwi	r28, r1, 1416
    37c0:	10650000 	addk	r3, r5, r0
    37c4:	e6fc0002 	lhui	r23, r28, 2
    37c8:	14970000 	rsubk	r4, r23, r0
    37cc:	339c0004 	addik	r28, r28, 4
    37d0:	8084b800 	or	r4, r4, r23
    37d4:	fb810588 	swi	r28, r1, 1416
    37d8:	12c50000 	addk	r22, r5, r0
    37dc:	13602000 	addk	r27, r0, r4
    37e0:	93640041 	srl	r27, r4
    37e4:	937b0041 	srl	r27, r27
    37e8:	937b0041 	srl	r27, r27
    37ec:	937b0041 	srl	r27, r27
    37f0:	937b0041 	srl	r27, r27
    37f4:	937b0041 	srl	r27, r27
    37f8:	937b0041 	srl	r27, r27
    37fc:	937b0041 	srl	r27, r27
    3800:	937b0041 	srl	r27, r27
    3804:	937b0041 	srl	r27, r27
    3808:	937b0041 	srl	r27, r27
    380c:	937b0041 	srl	r27, r27
    3810:	937b0041 	srl	r27, r27
    3814:	937b0041 	srl	r27, r27
    3818:	937b0041 	srl	r27, r27
    381c:	937b0041 	srl	r27, r27
    3820:	937b0041 	srl	r27, r27
    3824:	937b0041 	srl	r27, r27
    3828:	937b0041 	srl	r27, r27
    382c:	937b0041 	srl	r27, r27
    3830:	937b0041 	srl	r27, r27
    3834:	937b0041 	srl	r27, r27
    3838:	937b0041 	srl	r27, r27
    383c:	937b0041 	srl	r27, r27
    3840:	937b0041 	srl	r27, r27
    3844:	937b0041 	srl	r27, r27
    3848:	937b0041 	srl	r27, r27
    384c:	937b0041 	srl	r27, r27
    3850:	937b0041 	srl	r27, r27
    3854:	937b0041 	srl	r27, r27
    3858:	937b0041 	srl	r27, r27
    385c:	b810e2d8 	brid	-7464		// 1b34
    3860:	f00104de 	sbi	r0, r1, 1246
    3864:	e8a1050c 	lwi	r5, r1, 1292
    3868:	10df0000 	addk	r6, r31, r0
    386c:	b9f473a0 	brlid	r15, 29600	// ac0c <__sprint_r>
    3870:	30e104b4 	addik	r7, r1, 1204
    3874:	be23e66c 	bneid	r3, -6548		// 1ee0
    3878:	31610024 	addik	r11, r1, 36
    387c:	b810f120 	brid	-3808		// 299c
    3880:	e88104bc 	lwi	r4, r1, 1212
    3884:	30600001 	addik	r3, r0, 1
    3888:	ea6104b8 	lwi	r19, r1, 1208
    388c:	f86b0004 	swi	r3, r11, 4
    3890:	b0000001 	imm	1
    3894:	30602a84 	addik	r3, r0, 10884
    3898:	32730001 	addik	r19, r19, 1
    389c:	30840001 	addik	r4, r4, 1
    38a0:	f86b0000 	swi	r3, r11, 0
    38a4:	30600007 	addik	r3, r0, 7
    38a8:	fa6104b8 	swi	r19, r1, 1208
    38ac:	16731801 	cmp	r19, r19, r3
    38b0:	be530308 	bltid	r19, 776		// 3bb8
    38b4:	f88104bc 	swi	r4, r1, 1212
    38b8:	316b0008 	addik	r11, r11, 8
    38bc:	be380028 	bneid	r24, 40		// 38e4
    38c0:	ea6104b8 	lwi	r19, r1, 1208
    38c4:	e9210514 	lwi	r9, r1, 1300
    38c8:	be290020 	bneid	r9, 32		// 38e8
    38cc:	eb810524 	lwi	r28, r1, 1316
    38d0:	eb8104e8 	lwi	r28, r1, 1256
    38d4:	a47c0001 	andi	r3, r28, 1
    38d8:	be03ef40 	beqid	r3, -4288		// 2818
    38dc:	a47c0004 	andi	r3, r28, 4
    38e0:	ea6104b8 	lwi	r19, r1, 1208
    38e4:	eb810524 	lwi	r28, r1, 1316
    38e8:	eba1051c 	lwi	r29, r1, 1308
    38ec:	32730001 	addik	r19, r19, 1
    38f0:	fb8b0004 	swi	r28, r11, 4
    38f4:	fbab0000 	swi	r29, r11, 0
    38f8:	1084e000 	addk	r4, r4, r28
    38fc:	30600007 	addik	r3, r0, 7
    3900:	f88104bc 	swi	r4, r1, 1212
    3904:	14731801 	cmp	r3, r19, r3
    3908:	be4307b0 	bltid	r3, 1968		// 40b8
    390c:	fa6104b8 	swi	r19, r1, 1208
    3910:	316b0008 	addik	r11, r11, 8
    3914:	17180000 	rsubk	r24, r24, r0
    3918:	be780324 	bleid	r24, 804		// 3c3c
    391c:	eba10514 	lwi	r29, r1, 1300
    3920:	33600010 	addik	r27, r0, 16	// 10 <_.d1>
    3924:	1478d801 	cmp	r3, r24, r27
    3928:	b0000001 	imm	1
    392c:	33802bfc 	addik	r28, r0, 11260	// 12bfc <zeroes.4014>
    3930:	bea30400 	bgeid	r3, 1024		// 3d30
    3934:	33a00007 	addik	r29, r0, 7
    3938:	b8100018 	brid	24		// 3950
    393c:	ebc1050c 	lwi	r30, r1, 1292
    3940:	316b0008 	addik	r11, r11, 8
    3944:	3318fff0 	addik	r24, r24, -16
    3948:	1478d801 	cmp	r3, r24, r27
    394c:	bca303e4 	bgei	r3, 996		// 3d30
    3950:	fb8b0000 	swi	r28, r11, 0
    3954:	fb6b0004 	swi	r27, r11, 4
    3958:	32730001 	addik	r19, r19, 1
    395c:	30840010 	addik	r4, r4, 16
    3960:	f88104bc 	swi	r4, r1, 1212
    3964:	1473e801 	cmp	r3, r19, r29
    3968:	bea3ffd8 	bgeid	r3, -40		// 3940
    396c:	fa6104b8 	swi	r19, r1, 1208
    3970:	10be0000 	addk	r5, r30, r0
    3974:	10df0000 	addk	r6, r31, r0
    3978:	b9f47294 	brlid	r15, 29332	// ac0c <__sprint_r>
    397c:	30e104b4 	addik	r7, r1, 1204
    3980:	be23e560 	bneid	r3, -6816		// 1ee0
    3984:	31610024 	addik	r11, r1, 36
    3988:	e88104bc 	lwi	r4, r1, 1212
    398c:	b810ffb8 	brid	-72		// 3944
    3990:	ea6104b8 	lwi	r19, r1, 1208
    3994:	eba10500 	lwi	r29, r1, 1280
    3998:	f8810518 	swi	r4, r1, 1304
    399c:	a87dffff 	xori	r3, r29, -1
    39a0:	10801800 	addk	r4, r0, r3
    39a4:	90830001 	sra	r4, r3
    39a8:	90840001 	sra	r4, r4
    39ac:	90840001 	sra	r4, r4
    39b0:	90840001 	sra	r4, r4
    39b4:	90840001 	sra	r4, r4
    39b8:	90840001 	sra	r4, r4
    39bc:	90840001 	sra	r4, r4
    39c0:	90840001 	sra	r4, r4
    39c4:	90840001 	sra	r4, r4
    39c8:	90840001 	sra	r4, r4
    39cc:	90840001 	sra	r4, r4
    39d0:	90840001 	sra	r4, r4
    39d4:	90840001 	sra	r4, r4
    39d8:	90840001 	sra	r4, r4
    39dc:	90840001 	sra	r4, r4
    39e0:	90840001 	sra	r4, r4
    39e4:	90840001 	sra	r4, r4
    39e8:	90840001 	sra	r4, r4
    39ec:	90840001 	sra	r4, r4
    39f0:	90840001 	sra	r4, r4
    39f4:	90840001 	sra	r4, r4
    39f8:	90840001 	sra	r4, r4
    39fc:	90840001 	sra	r4, r4
    3a00:	90840001 	sra	r4, r4
    3a04:	90840001 	sra	r4, r4
    3a08:	90840001 	sra	r4, r4
    3a0c:	90840001 	sra	r4, r4
    3a10:	90840001 	sra	r4, r4
    3a14:	90840001 	sra	r4, r4
    3a18:	90840001 	sra	r4, r4
    3a1c:	90840001 	sra	r4, r4
    3a20:	e9010518 	lwi	r8, r1, 1304
    3a24:	e06104de 	lbui	r3, r1, 1246
    3a28:	849d2000 	and	r4, r29, r4
    3a2c:	f88104ec 	swi	r4, r1, 1260
    3a30:	90630060 	sext8	r3, r3
    3a34:	fa610588 	swi	r19, r1, 1416
    3a38:	b810e1c8 	brid	-7736		// 1c00
    3a3c:	f9010520 	swi	r8, r1, 1312
    3a40:	eba10588 	lwi	r29, r1, 1416
    3a44:	10640000 	addk	r3, r4, r0
    3a48:	eafd0000 	lwi	r23, r29, 0
    3a4c:	12c40000 	addk	r22, r4, r0
    3a50:	14970000 	rsubk	r4, r23, r0
    3a54:	33bd0004 	addik	r29, r29, 4
    3a58:	8084b800 	or	r4, r4, r23
    3a5c:	fba10588 	swi	r29, r1, 1416
    3a60:	13602000 	addk	r27, r0, r4
    3a64:	93640041 	srl	r27, r4
    3a68:	937b0041 	srl	r27, r27
    3a6c:	937b0041 	srl	r27, r27
    3a70:	937b0041 	srl	r27, r27
    3a74:	937b0041 	srl	r27, r27
    3a78:	937b0041 	srl	r27, r27
    3a7c:	937b0041 	srl	r27, r27
    3a80:	937b0041 	srl	r27, r27
    3a84:	937b0041 	srl	r27, r27
    3a88:	937b0041 	srl	r27, r27
    3a8c:	937b0041 	srl	r27, r27
    3a90:	937b0041 	srl	r27, r27
    3a94:	937b0041 	srl	r27, r27
    3a98:	937b0041 	srl	r27, r27
    3a9c:	937b0041 	srl	r27, r27
    3aa0:	937b0041 	srl	r27, r27
    3aa4:	937b0041 	srl	r27, r27
    3aa8:	937b0041 	srl	r27, r27
    3aac:	937b0041 	srl	r27, r27
    3ab0:	937b0041 	srl	r27, r27
    3ab4:	937b0041 	srl	r27, r27
    3ab8:	937b0041 	srl	r27, r27
    3abc:	937b0041 	srl	r27, r27
    3ac0:	937b0041 	srl	r27, r27
    3ac4:	937b0041 	srl	r27, r27
    3ac8:	937b0041 	srl	r27, r27
    3acc:	937b0041 	srl	r27, r27
    3ad0:	937b0041 	srl	r27, r27
    3ad4:	937b0041 	srl	r27, r27
    3ad8:	937b0041 	srl	r27, r27
    3adc:	937b0041 	srl	r27, r27
    3ae0:	b810e054 	brid	-8108		// 1b34
    3ae4:	f00104de 	sbi	r0, r1, 1246
    3ae8:	eb810508 	lwi	r28, r1, 1288
    3aec:	e87d0000 	lwi	r3, r29, 0
    3af0:	33bd0004 	addik	r29, r29, 4
    3af4:	fba10588 	swi	r29, r1, 1416
    3af8:	b810de94 	brid	-8556		// 198c
    3afc:	fb830000 	swi	r28, r3, 0
    3b00:	eba10588 	lwi	r29, r1, 1416
    3b04:	30600001 	addik	r3, r0, 1
    3b08:	b810ff44 	brid	-188		// 3a4c
    3b0c:	eafd0000 	lwi	r23, r29, 0
    3b10:	eb810588 	lwi	r28, r1, 1416
    3b14:	12c30000 	addk	r22, r3, r0
    3b18:	eafc0000 	lwi	r23, r28, 0
    3b1c:	339c0004 	addik	r28, r28, 4
    3b20:	b810e4c8 	brid	-6968		// 1fe8
    3b24:	fb810588 	swi	r28, r1, 1416
    3b28:	eba10588 	lwi	r29, r1, 1416
    3b2c:	eafd0000 	lwi	r23, r29, 0
    3b30:	02d7b800 	add	r22, r23, r23
    3b34:	0ac00000 	addc	r22, r0, r0
    3b38:	bc160008 	beqi	r22, 8		// 3b40
    3b3c:	22c0ffff 	addi	r22, r0, -1
    3b40:	33bd0004 	addik	r29, r29, 4
    3b44:	10760000 	addk	r3, r22, r0
    3b48:	b810e1ec 	brid	-7700		// 1d34
    3b4c:	fba10588 	swi	r29, r1, 1416
    3b50:	30600047 	addik	r3, r0, 71
    3b54:	14781801 	cmp	r3, r24, r3
    3b58:	b0000001 	imm	1
    3b5c:	33202a50 	addik	r25, r0, 10832
    3b60:	be430010 	bltid	r3, 16		// 3b70
    3b64:	eb8104e8 	lwi	r28, r1, 1256
    3b68:	b0000001 	imm	1
    3b6c:	33202a4c 	addik	r25, r0, 10828
    3b70:	e06104de 	lbui	r3, r1, 1246
    3b74:	30800003 	addik	r4, r0, 3
    3b78:	11000000 	addk	r8, r0, r0
    3b7c:	a79cff7f 	andi	r28, r28, -129
    3b80:	f88104ec 	swi	r4, r1, 1260
    3b84:	f9010518 	swi	r8, r1, 1304
    3b88:	fb8104e8 	swi	r28, r1, 1256
    3b8c:	90630060 	sext8	r3, r3
    3b90:	f8810500 	swi	r4, r1, 1280
    3b94:	b810e06c 	brid	-8084		// 1c00
    3b98:	f9010520 	swi	r8, r1, 1312
    3b9c:	33c0ffff 	addik	r30, r0, -1
    3ba0:	b810e54c 	brid	-6836		// 20ec
    3ba4:	13440000 	addk	r26, r4, r0
    3ba8:	b810f2f0 	brid	-3344		// 2e98
    3bac:	131c0000 	addk	r24, r28, r0
    3bb0:	b810f5a0 	brid	-2656		// 3150
    3bb4:	137e0000 	addk	r27, r30, r0
    3bb8:	e8a1050c 	lwi	r5, r1, 1292
    3bbc:	10df0000 	addk	r6, r31, r0
    3bc0:	b9f4704c 	brlid	r15, 28748	// ac0c <__sprint_r>
    3bc4:	30e104b4 	addik	r7, r1, 1204
    3bc8:	be23e318 	bneid	r3, -7400		// 1ee0
    3bcc:	eb0104d8 	lwi	r24, r1, 1240
    3bd0:	31610024 	addik	r11, r1, 36
    3bd4:	b810fce8 	brid	-792		// 38bc
    3bd8:	e88104bc 	lwi	r4, r1, 1212
    3bdc:	eb8104e8 	lwi	r28, r1, 1256
    3be0:	e31a0001 	lbui	r24, r26, 1
    3be4:	335a0001 	addik	r26, r26, 1
    3be8:	a39c0020 	ori	r28, r28, 32
    3bec:	fb8104e8 	swi	r28, r1, 1256
    3bf0:	b810de60 	brid	-8608		// 1a50
    3bf4:	93180060 	sext8	r24, r24
    3bf8:	e8a1050c 	lwi	r5, r1, 1292
    3bfc:	10df0000 	addk	r6, r31, r0
    3c00:	b9f4700c 	brlid	r15, 28684	// ac0c <__sprint_r>
    3c04:	30e104b4 	addik	r7, r1, 1204
    3c08:	be23e2d8 	bneid	r3, -7464		// 1ee0
    3c0c:	31610024 	addik	r11, r1, 36
    3c10:	b810ede4 	brid	-4636		// 29f4
    3c14:	e88104bc 	lwi	r4, r1, 1212
    3c18:	e8a1050c 	lwi	r5, r1, 1292
    3c1c:	10df0000 	addk	r6, r31, r0
    3c20:	b9f46fec 	brlid	r15, 28652	// ac0c <__sprint_r>
    3c24:	30e104b4 	addik	r7, r1, 1204
    3c28:	be23e2b8 	bneid	r3, -7496		// 1ee0
    3c2c:	e88104bc 	lwi	r4, r1, 1212
    3c30:	ea6104b8 	lwi	r19, r1, 1208
    3c34:	31610024 	addik	r11, r1, 36
    3c38:	eba10514 	lwi	r29, r1, 1300
    3c3c:	fb2b0000 	swi	r25, r11, 0
    3c40:	32730001 	addik	r19, r19, 1
    3c44:	fbab0004 	swi	r29, r11, 4
    3c48:	b810ebb0 	brid	-5200		// 27f8
    3c4c:	1084e800 	addk	r4, r4, r29
    3c50:	11200000 	addk	r9, r0, r0
    3c54:	f9610548 	swi	r11, r1, 1352
    3c58:	f9210518 	swi	r9, r1, 1304
    3c5c:	b9f46f50 	brlid	r15, 28496	// abac <strlen>
    3c60:	fa610588 	swi	r19, r1, 1416
    3c64:	f8610500 	swi	r3, r1, 1280
    3c68:	eba10500 	lwi	r29, r1, 1280
    3c6c:	a863ffff 	xori	r3, r3, -1
    3c70:	10801800 	addk	r4, r0, r3
    3c74:	90830001 	sra	r4, r3
    3c78:	90840001 	sra	r4, r4
    3c7c:	90840001 	sra	r4, r4
    3c80:	90840001 	sra	r4, r4
    3c84:	90840001 	sra	r4, r4
    3c88:	90840001 	sra	r4, r4
    3c8c:	90840001 	sra	r4, r4
    3c90:	90840001 	sra	r4, r4
    3c94:	90840001 	sra	r4, r4
    3c98:	90840001 	sra	r4, r4
    3c9c:	90840001 	sra	r4, r4
    3ca0:	90840001 	sra	r4, r4
    3ca4:	90840001 	sra	r4, r4
    3ca8:	90840001 	sra	r4, r4
    3cac:	90840001 	sra	r4, r4
    3cb0:	90840001 	sra	r4, r4
    3cb4:	90840001 	sra	r4, r4
    3cb8:	90840001 	sra	r4, r4
    3cbc:	90840001 	sra	r4, r4
    3cc0:	90840001 	sra	r4, r4
    3cc4:	90840001 	sra	r4, r4
    3cc8:	90840001 	sra	r4, r4
    3ccc:	90840001 	sra	r4, r4
    3cd0:	90840001 	sra	r4, r4
    3cd4:	90840001 	sra	r4, r4
    3cd8:	90840001 	sra	r4, r4
    3cdc:	90840001 	sra	r4, r4
    3ce0:	90840001 	sra	r4, r4
    3ce4:	90840001 	sra	r4, r4
    3ce8:	90840001 	sra	r4, r4
    3cec:	90840001 	sra	r4, r4
    3cf0:	eb810518 	lwi	r28, r1, 1304
    3cf4:	e06104de 	lbui	r3, r1, 1246
    3cf8:	849d2000 	and	r4, r29, r4
    3cfc:	fb810520 	swi	r28, r1, 1312
    3d00:	90630060 	sext8	r3, r3
    3d04:	f88104ec 	swi	r4, r1, 1260
    3d08:	b810def8 	brid	-8456		// 1c00
    3d0c:	e9610548 	lwi	r11, r1, 1352
    3d10:	e8a1050c 	lwi	r5, r1, 1292
    3d14:	10df0000 	addk	r6, r31, r0
    3d18:	b9f46ef4 	brlid	r15, 28404	// ac0c <__sprint_r>
    3d1c:	30e104b4 	addik	r7, r1, 1204
    3d20:	be23e1c0 	bneid	r3, -7744		// 1ee0
    3d24:	31610024 	addik	r11, r1, 36
    3d28:	b810f1a0 	brid	-3680		// 2ec8
    3d2c:	e88104bc 	lwi	r4, r1, 1212
    3d30:	fb8b0000 	swi	r28, r11, 0
    3d34:	fb0b0004 	swi	r24, r11, 4
    3d38:	32730001 	addik	r19, r19, 1
    3d3c:	1084c000 	addk	r4, r4, r24
    3d40:	30600007 	addik	r3, r0, 7
    3d44:	f88104bc 	swi	r4, r1, 1212
    3d48:	14731801 	cmp	r3, r19, r3
    3d4c:	be43fecc 	bltid	r3, -308		// 3c18
    3d50:	fa6104b8 	swi	r19, r1, 1208
    3d54:	b810fee4 	brid	-284		// 3c38
    3d58:	316b0008 	addik	r11, r11, 8
    3d5c:	e8a1050c 	lwi	r5, r1, 1292
    3d60:	10df0000 	addk	r6, r31, r0
    3d64:	b9f46ea8 	brlid	r15, 28328	// ac0c <__sprint_r>
    3d68:	30e104b4 	addik	r7, r1, 1204
    3d6c:	be23e174 	bneid	r3, -7820		// 1ee0
    3d70:	e86104d8 	lwi	r3, r1, 1240
    3d74:	31610024 	addik	r11, r1, 36
    3d78:	b810f3c0 	brid	-3136		// 3138
    3d7c:	e88104bc 	lwi	r4, r1, 1212
    3d80:	e8a1050c 	lwi	r5, r1, 1292
    3d84:	10df0000 	addk	r6, r31, r0
    3d88:	b9f46e84 	brlid	r15, 28292	// ac0c <__sprint_r>
    3d8c:	30e104b4 	addik	r7, r1, 1204
    3d90:	be23e150 	bneid	r3, -7856		// 1ee0
    3d94:	e86104d8 	lwi	r3, r1, 1240
    3d98:	eb810514 	lwi	r28, r1, 1300
    3d9c:	31610024 	addik	r11, r1, 36
    3da0:	e88104bc 	lwi	r4, r1, 1212
    3da4:	b810f3dc 	brid	-3108		// 3180
    3da8:	1463e000 	rsubk	r3, r3, r28
    3dac:	30600006 	addik	r3, r0, 6
    3db0:	149e1803 	cmpu	r4, r30, r3
    3db4:	be440568 	bltid	r4, 1384		// 431c
    3db8:	fbc10500 	swi	r30, r1, 1280
    3dbc:	e9010500 	lwi	r8, r1, 1280
    3dc0:	a888ffff 	xori	r4, r8, -1
    3dc4:	10602000 	addk	r3, r0, r4
    3dc8:	90640001 	sra	r3, r4
    3dcc:	90630001 	sra	r3, r3
    3dd0:	90630001 	sra	r3, r3
    3dd4:	90630001 	sra	r3, r3
    3dd8:	90630001 	sra	r3, r3
    3ddc:	90630001 	sra	r3, r3
    3de0:	90630001 	sra	r3, r3
    3de4:	90630001 	sra	r3, r3
    3de8:	90630001 	sra	r3, r3
    3dec:	90630001 	sra	r3, r3
    3df0:	90630001 	sra	r3, r3
    3df4:	90630001 	sra	r3, r3
    3df8:	90630001 	sra	r3, r3
    3dfc:	90630001 	sra	r3, r3
    3e00:	90630001 	sra	r3, r3
    3e04:	90630001 	sra	r3, r3
    3e08:	90630001 	sra	r3, r3
    3e0c:	90630001 	sra	r3, r3
    3e10:	90630001 	sra	r3, r3
    3e14:	90630001 	sra	r3, r3
    3e18:	90630001 	sra	r3, r3
    3e1c:	90630001 	sra	r3, r3
    3e20:	90630001 	sra	r3, r3
    3e24:	90630001 	sra	r3, r3
    3e28:	90630001 	sra	r3, r3
    3e2c:	90630001 	sra	r3, r3
    3e30:	90630001 	sra	r3, r3
    3e34:	90630001 	sra	r3, r3
    3e38:	90630001 	sra	r3, r3
    3e3c:	90630001 	sra	r3, r3
    3e40:	90630001 	sra	r3, r3
    3e44:	84681800 	and	r3, r8, r3
    3e48:	f86104ec 	swi	r3, r1, 1260
    3e4c:	b0000001 	imm	1
    3e50:	33202a7c 	addik	r25, r0, 10876
    3e54:	b810e2f4 	brid	-7436		// 2148
    3e58:	fa610588 	swi	r19, r1, 1416
    3e5c:	30e0002d 	addik	r7, r0, 45
    3e60:	f0e104de 	sbi	r7, r1, 1246
    3e64:	b810e70c 	brid	-6388		// 2570
    3e68:	3060002d 	addik	r3, r0, 45
    3e6c:	e06104de 	lbui	r3, r1, 1246
    3e70:	fb8104e8 	swi	r28, r1, 1256
    3e74:	b810dd8c 	brid	-8820		// 1c00
    3e78:	90630060 	sext8	r3, r3
    3e7c:	306104d4 	addik	r3, r1, 1236
    3e80:	10d30000 	addk	r6, r19, r0
    3e84:	e8a1050c 	lwi	r5, r1, 1292
    3e88:	10fb0000 	addk	r7, r27, r0
    3e8c:	113e0000 	addk	r9, r30, r0
    3e90:	f861001c 	swi	r3, r1, 28
    3e94:	306104d0 	addik	r3, r1, 1232
    3e98:	f8610020 	swi	r3, r1, 32
    3e9c:	314104d8 	addik	r10, r1, 1240
    3ea0:	f9610548 	swi	r11, r1, 1352
    3ea4:	b9f41064 	brlid	r15, 4196	// 4f08 <_dtoa_r>
    3ea8:	f9810544 	swi	r12, r1, 1348
    3eac:	eb810500 	lwi	r28, r1, 1280
    3eb0:	13230000 	addk	r25, r3, r0
    3eb4:	e9610548 	lwi	r11, r1, 1352
    3eb8:	be3c0018 	bneid	r28, 24		// 3ed0
    3ebc:	e9810544 	lwi	r12, r1, 1348
    3ec0:	eba104e8 	lwi	r29, r1, 1256
    3ec4:	a47d0001 	andi	r3, r29, 1
    3ec8:	be03007c 	beqid	r3, 124		// 3f44
    3ecc:	e86104d0 	lwi	r3, r1, 1232
    3ed0:	be0cf684 	beqid	r12, -2428		// 3554
    3ed4:	1099f000 	addk	r4, r25, r30
    3ed8:	e0790000 	lbui	r3, r25, 0
    3edc:	90630060 	sext8	r3, r3
    3ee0:	a8630030 	xori	r3, r3, 48
    3ee4:	bc030010 	beqi	r3, 16		// 3ef4
    3ee8:	e86104d8 	lwi	r3, r1, 1240
    3eec:	b810f668 	brid	-2456		// 3554
    3ef0:	10841800 	addk	r4, r4, r3
    3ef4:	fa6104ec 	swi	r19, r1, 1260
    3ef8:	fb6104f0 	swi	r27, r1, 1264
    3efc:	eb8104ec 	lwi	r28, r1, 1260
    3f00:	eba104f0 	lwi	r29, r1, 1264
    3f04:	f8810544 	swi	r4, r1, 1348
    3f08:	f9610548 	swi	r11, r1, 1352
    3f0c:	10bc0000 	addk	r5, r28, r0
    3f10:	10e00000 	addk	r7, r0, r0
    3f14:	11000000 	addk	r8, r0, r0
    3f18:	b0000000 	imm	0
    3f1c:	b9f4d1b4 	brlid	r15, -11852	// 110d0 <__nedf2>
    3f20:	10dd0000 	addk	r6, r29, r0
    3f24:	e8810544 	lwi	r4, r1, 1348
    3f28:	be03ffc0 	beqid	r3, -64		// 3ee8
    3f2c:	e9610548 	lwi	r11, r1, 1352
    3f30:	33a00001 	addik	r29, r0, 1
    3f34:	147ee800 	rsubk	r3, r30, r29
    3f38:	f86104d8 	swi	r3, r1, 1240
    3f3c:	b810f618 	brid	-2536		// 3554
    3f40:	10841800 	addk	r4, r4, r3
    3f44:	14791800 	rsubk	r3, r25, r3
    3f48:	f8610514 	swi	r3, r1, 1300
    3f4c:	ea6104d8 	lwi	r19, r1, 1240
    3f50:	3080fffd 	addik	r4, r0, -3
    3f54:	14849801 	cmp	r4, r4, r19
    3f58:	be440014 	bltid	r4, 20		// 3f6c
    3f5c:	10730000 	addk	r3, r19, r0
    3f60:	17d3f001 	cmp	r30, r19, r30
    3f64:	bebef68c 	bgeid	r30, -2420		// 35f0
    3f68:	eba10514 	lwi	r29, r1, 1300
    3f6c:	3318fffe 	addik	r24, r24, -2
    3f70:	3273ffff 	addik	r19, r19, -1
    3f74:	fa6104d8 	swi	r19, r1, 1240
    3f78:	be530468 	bltid	r19, 1128		// 43e0
    3f7c:	f30104c8 	sbi	r24, r1, 1224
    3f80:	3060002b 	addik	r3, r0, 43
    3f84:	f06104c9 	sbi	r3, r1, 1225
    3f88:	30800009 	addik	r4, r0, 9
    3f8c:	14732001 	cmp	r3, r19, r4
    3f90:	be430244 	bltid	r3, 580		// 41d4
    3f94:	338104c7 	addik	r28, r1, 1223
    3f98:	32730030 	addik	r19, r19, 48
    3f9c:	30c00030 	addik	r6, r0, 48
    3fa0:	f0c104ca 	sbi	r6, r1, 1226
    3fa4:	f26104cb 	sbi	r19, r1, 1227
    3fa8:	308104cc 	addik	r4, r1, 1228
    3fac:	306104c8 	addik	r3, r1, 1224
    3fb0:	14632000 	rsubk	r3, r3, r4
    3fb4:	f8610530 	swi	r3, r1, 1328
    3fb8:	e9210514 	lwi	r9, r1, 1300
    3fbc:	eb810530 	lwi	r28, r1, 1328
    3fc0:	30600001 	addik	r3, r0, 1
    3fc4:	14691801 	cmp	r3, r9, r3
    3fc8:	1389e000 	addk	r28, r9, r28
    3fcc:	bea30460 	bgeid	r3, 1120		// 442c
    3fd0:	fb810500 	swi	r28, r1, 1280
    3fd4:	e8810500 	lwi	r4, r1, 1280
    3fd8:	11200000 	addk	r9, r0, r0
    3fdc:	f9210520 	swi	r9, r1, 1312
    3fe0:	30840001 	addik	r4, r4, 1
    3fe4:	f8810500 	swi	r4, r1, 1280
    3fe8:	eb810500 	lwi	r28, r1, 1280
    3fec:	a884ffff 	xori	r4, r4, -1
    3ff0:	10602000 	addk	r3, r0, r4
    3ff4:	90640001 	sra	r3, r4
    3ff8:	90630001 	sra	r3, r3
    3ffc:	90630001 	sra	r3, r3
    4000:	90630001 	sra	r3, r3
    4004:	90630001 	sra	r3, r3
    4008:	90630001 	sra	r3, r3
    400c:	90630001 	sra	r3, r3
    4010:	90630001 	sra	r3, r3
    4014:	90630001 	sra	r3, r3
    4018:	90630001 	sra	r3, r3
    401c:	90630001 	sra	r3, r3
    4020:	90630001 	sra	r3, r3
    4024:	90630001 	sra	r3, r3
    4028:	90630001 	sra	r3, r3
    402c:	90630001 	sra	r3, r3
    4030:	90630001 	sra	r3, r3
    4034:	90630001 	sra	r3, r3
    4038:	90630001 	sra	r3, r3
    403c:	90630001 	sra	r3, r3
    4040:	90630001 	sra	r3, r3
    4044:	90630001 	sra	r3, r3
    4048:	90630001 	sra	r3, r3
    404c:	90630001 	sra	r3, r3
    4050:	90630001 	sra	r3, r3
    4054:	90630001 	sra	r3, r3
    4058:	90630001 	sra	r3, r3
    405c:	90630001 	sra	r3, r3
    4060:	90630001 	sra	r3, r3
    4064:	90630001 	sra	r3, r3
    4068:	90630001 	sra	r3, r3
    406c:	90630001 	sra	r3, r3
    4070:	847c1800 	and	r3, r28, r3
    4074:	b810f62c 	brid	-2516		// 36a0
    4078:	f86104ec 	swi	r3, r1, 1260
    407c:	e87c0000 	lwi	r3, r28, 0
    4080:	eba10508 	lwi	r29, r1, 1288
    4084:	339c0004 	addik	r28, r28, 4
    4088:	fb810588 	swi	r28, r1, 1416
    408c:	b810d900 	brid	-9984		// 198c
    4090:	fba30000 	swi	r29, r3, 0
    4094:	f8610518 	swi	r3, r1, 1304
    4098:	e9210518 	lwi	r9, r1, 1304
    409c:	e06104de 	lbui	r3, r1, 1246
    40a0:	fbc104ec 	swi	r30, r1, 1260
    40a4:	fbc10500 	swi	r30, r1, 1280
    40a8:	90630060 	sext8	r3, r3
    40ac:	fa610588 	swi	r19, r1, 1416
    40b0:	b810db50 	brid	-9392		// 1c00
    40b4:	f9210520 	swi	r9, r1, 1312
    40b8:	e8a1050c 	lwi	r5, r1, 1292
    40bc:	10df0000 	addk	r6, r31, r0
    40c0:	b9f46b4c 	brlid	r15, 27468	// ac0c <__sprint_r>
    40c4:	30e104b4 	addik	r7, r1, 1204
    40c8:	be23de18 	bneid	r3, -8680		// 1ee0
    40cc:	eb0104d8 	lwi	r24, r1, 1240
    40d0:	31610024 	addik	r11, r1, 36
    40d4:	e88104bc 	lwi	r4, r1, 1212
    40d8:	b810f83c 	brid	-1988		// 3914
    40dc:	ea6104b8 	lwi	r19, r1, 1208
    40e0:	3080002d 	addik	r4, r0, 45
    40e4:	b0008000 	imm	-32768
    40e8:	32730000 	addik	r19, r19, 0
    40ec:	b810f380 	brid	-3200		// 346c
    40f0:	f8810518 	swi	r4, r1, 1304
    40f4:	aba30047 	xori	r29, r3, 71
    40f8:	33c00006 	addik	r30, r0, 6
    40fc:	b810f358 	brid	-3240		// 3454
    4100:	fba10500 	swi	r29, r1, 1280
    4104:	be63031c 	bleid	r3, 796		// 4420
    4108:	33600001 	addik	r27, r0, 1
    410c:	e9210514 	lwi	r9, r1, 1300
    4110:	33000067 	addik	r24, r0, 103
    4114:	137b4800 	addk	r27, r27, r9
    4118:	a8bbffff 	xori	r5, r27, -1
    411c:	10802800 	addk	r4, r0, r5
    4120:	90850001 	sra	r4, r5
    4124:	90840001 	sra	r4, r4
    4128:	90840001 	sra	r4, r4
    412c:	90840001 	sra	r4, r4
    4130:	90840001 	sra	r4, r4
    4134:	90840001 	sra	r4, r4
    4138:	90840001 	sra	r4, r4
    413c:	90840001 	sra	r4, r4
    4140:	90840001 	sra	r4, r4
    4144:	90840001 	sra	r4, r4
    4148:	90840001 	sra	r4, r4
    414c:	90840001 	sra	r4, r4
    4150:	90840001 	sra	r4, r4
    4154:	90840001 	sra	r4, r4
    4158:	90840001 	sra	r4, r4
    415c:	90840001 	sra	r4, r4
    4160:	90840001 	sra	r4, r4
    4164:	90840001 	sra	r4, r4
    4168:	90840001 	sra	r4, r4
    416c:	90840001 	sra	r4, r4
    4170:	90840001 	sra	r4, r4
    4174:	90840001 	sra	r4, r4
    4178:	90840001 	sra	r4, r4
    417c:	90840001 	sra	r4, r4
    4180:	90840001 	sra	r4, r4
    4184:	90840001 	sra	r4, r4
    4188:	90840001 	sra	r4, r4
    418c:	90840001 	sra	r4, r4
    4190:	90840001 	sra	r4, r4
    4194:	90840001 	sra	r4, r4
    4198:	90840001 	sra	r4, r4
    419c:	849b2000 	and	r4, r27, r4
    41a0:	fb610500 	swi	r27, r1, 1280
    41a4:	b810f4f8 	brid	-2824		// 369c
    41a8:	f88104ec 	swi	r4, r1, 1260
    41ac:	bc630214 	blei	r3, 532		// 43c0
    41b0:	be3e0178 	bneid	r30, 376		// 4328
    41b4:	337e0001 	addik	r27, r30, 1
    41b8:	eba104e8 	lwi	r29, r1, 1256
    41bc:	a49d0001 	andi	r4, r29, 1
    41c0:	be24016c 	bneid	r4, 364		// 432c
    41c4:	1363d800 	addk	r27, r3, r27
    41c8:	f86104ec 	swi	r3, r1, 1260
    41cc:	b810f4d0 	brid	-2864		// 369c
    41d0:	f8610500 	swi	r3, r1, 1280
    41d4:	137c0000 	addk	r27, r28, r0
    41d8:	13cb0000 	addk	r30, r11, r0
    41dc:	eba10518 	lwi	r29, r1, 1304
    41e0:	10b30000 	addk	r5, r19, r0
    41e4:	30c0000a 	addik	r6, r0, 10
    41e8:	b0000000 	imm	0
    41ec:	b9f4d714 	brlid	r15, -10476	// 11900 <__modsi3>
    41f0:	337bffff 	addik	r27, r27, -1
    41f4:	10b30000 	addk	r5, r19, r0
    41f8:	30630030 	addik	r3, r3, 48
    41fc:	30c0000a 	addik	r6, r0, 10
    4200:	b0000000 	imm	0
    4204:	b9f4d660 	brlid	r15, -10656	// 11864 <__divsi3>
    4208:	f07b0000 	sbi	r3, r27, 0
    420c:	30a00009 	addik	r5, r0, 9
    4210:	12630000 	addk	r19, r3, r0
    4214:	14632801 	cmp	r3, r3, r5
    4218:	be43ffcc 	bltid	r3, -52		// 41e4
    421c:	10b30000 	addk	r5, r19, r0
    4220:	30d30030 	addik	r6, r19, 48
    4224:	30bbffff 	addik	r5, r27, -1
    4228:	90c60060 	sext8	r6, r6
    422c:	fba10518 	swi	r29, r1, 1304
    4230:	f0dbffff 	sbi	r6, r27, -1
    4234:	179c2803 	cmpu	r28, r28, r5
    4238:	bebc0330 	bgeid	r28, 816		// 4568
    423c:	117e0000 	addk	r11, r30, r0
    4240:	30e104ca 	addik	r7, r1, 1226
    4244:	306104c8 	addik	r3, r1, 1224
    4248:	151b3800 	rsubk	r8, r27, r7
    424c:	10870000 	addk	r4, r7, r0
    4250:	b8100014 	brid	20		// 4264
    4254:	11034000 	addk	r8, r3, r8
    4258:	e0c50001 	lbui	r6, r5, 1
    425c:	30a50001 	addik	r5, r5, 1
    4260:	90c60060 	sext8	r6, r6
    4264:	f0c40000 	sbi	r6, r4, 0
    4268:	30840001 	addik	r4, r4, 1
    426c:	88c44000 	xor	r6, r4, r8
    4270:	bc26ffe8 	bnei	r6, -24		// 4258
    4274:	149b1800 	rsubk	r4, r27, r3
    4278:	fba10518 	swi	r29, r1, 1304
    427c:	b810fd34 	brid	-716		// 3fb0
    4280:	10872000 	addk	r4, r7, r4
    4284:	a8bdffff 	xori	r5, r29, -1
    4288:	10802800 	addk	r4, r0, r5
    428c:	90850001 	sra	r4, r5
    4290:	90840001 	sra	r4, r4
    4294:	90840001 	sra	r4, r4
    4298:	90840001 	sra	r4, r4
    429c:	90840001 	sra	r4, r4
    42a0:	90840001 	sra	r4, r4
    42a4:	90840001 	sra	r4, r4
    42a8:	90840001 	sra	r4, r4
    42ac:	90840001 	sra	r4, r4
    42b0:	90840001 	sra	r4, r4
    42b4:	90840001 	sra	r4, r4
    42b8:	90840001 	sra	r4, r4
    42bc:	90840001 	sra	r4, r4
    42c0:	90840001 	sra	r4, r4
    42c4:	90840001 	sra	r4, r4
    42c8:	90840001 	sra	r4, r4
    42cc:	90840001 	sra	r4, r4
    42d0:	90840001 	sra	r4, r4
    42d4:	90840001 	sra	r4, r4
    42d8:	90840001 	sra	r4, r4
    42dc:	90840001 	sra	r4, r4
    42e0:	90840001 	sra	r4, r4
    42e4:	90840001 	sra	r4, r4
    42e8:	90840001 	sra	r4, r4
    42ec:	90840001 	sra	r4, r4
    42f0:	90840001 	sra	r4, r4
    42f4:	90840001 	sra	r4, r4
    42f8:	90840001 	sra	r4, r4
    42fc:	90840001 	sra	r4, r4
    4300:	90840001 	sra	r4, r4
    4304:	90840001 	sra	r4, r4
    4308:	849d2000 	and	r4, r29, r4
    430c:	fba10500 	swi	r29, r1, 1280
    4310:	33000067 	addik	r24, r0, 103
    4314:	b810f388 	brid	-3192		// 369c
    4318:	f88104ec 	swi	r4, r1, 1260
    431c:	f8610500 	swi	r3, r1, 1280
    4320:	b810fb2c 	brid	-1236		// 3e4c
    4324:	f86104ec 	swi	r3, r1, 1260
    4328:	1363d800 	addk	r27, r3, r27
    432c:	a8bbffff 	xori	r5, r27, -1
    4330:	10802800 	addk	r4, r0, r5
    4334:	90850001 	sra	r4, r5
    4338:	90840001 	sra	r4, r4
    433c:	90840001 	sra	r4, r4
    4340:	90840001 	sra	r4, r4
    4344:	90840001 	sra	r4, r4
    4348:	90840001 	sra	r4, r4
    434c:	90840001 	sra	r4, r4
    4350:	90840001 	sra	r4, r4
    4354:	90840001 	sra	r4, r4
    4358:	90840001 	sra	r4, r4
    435c:	90840001 	sra	r4, r4
    4360:	90840001 	sra	r4, r4
    4364:	90840001 	sra	r4, r4
    4368:	90840001 	sra	r4, r4
    436c:	90840001 	sra	r4, r4
    4370:	90840001 	sra	r4, r4
    4374:	90840001 	sra	r4, r4
    4378:	90840001 	sra	r4, r4
    437c:	90840001 	sra	r4, r4
    4380:	90840001 	sra	r4, r4
    4384:	90840001 	sra	r4, r4
    4388:	90840001 	sra	r4, r4
    438c:	90840001 	sra	r4, r4
    4390:	90840001 	sra	r4, r4
    4394:	90840001 	sra	r4, r4
    4398:	90840001 	sra	r4, r4
    439c:	90840001 	sra	r4, r4
    43a0:	90840001 	sra	r4, r4
    43a4:	90840001 	sra	r4, r4
    43a8:	90840001 	sra	r4, r4
    43ac:	90840001 	sra	r4, r4
    43b0:	849b2000 	and	r4, r27, r4
    43b4:	fb610500 	swi	r27, r1, 1280
    43b8:	b810f2e4 	brid	-3356		// 369c
    43bc:	f88104ec 	swi	r4, r1, 1260
    43c0:	be3e0110 	bneid	r30, 272		// 44d0
    43c4:	eb8104e8 	lwi	r28, r1, 1256
    43c8:	a49c0001 	andi	r4, r28, 1
    43cc:	be240104 	bneid	r4, 260		// 44d0
    43d0:	33800001 	addik	r28, r0, 1
    43d4:	fb8104ec 	swi	r28, r1, 1260
    43d8:	b810f2c4 	brid	-3388		// 369c
    43dc:	fb810500 	swi	r28, r1, 1280
    43e0:	33a0002d 	addik	r29, r0, 45
    43e4:	16730000 	rsubk	r19, r19, r0
    43e8:	b810fba0 	brid	-1120		// 3f88
    43ec:	f3a104c9 	sbi	r29, r1, 1225
    43f0:	b810daac 	brid	-9556		// 1e9c
    43f4:	fb810508 	swi	r28, r1, 1288
    43f8:	eb810588 	lwi	r28, r1, 1416
    43fc:	e31a0001 	lbui	r24, r26, 1
    4400:	13440000 	addk	r26, r4, r0
    4404:	ebdc0000 	lwi	r30, r28, 0
    4408:	307c0004 	addik	r3, r28, 4
    440c:	f8610588 	swi	r3, r1, 1416
    4410:	bebed640 	bgeid	r30, -10688		// 1a50
    4414:	93180060 	sext8	r24, r24
    4418:	b810d638 	brid	-10696		// 1a50
    441c:	33c0ffff 	addik	r30, r0, -1
    4420:	30800002 	addik	r4, r0, 2
    4424:	b810fce8 	brid	-792		// 410c
    4428:	17632000 	rsubk	r27, r3, r4
    442c:	eba104e8 	lwi	r29, r1, 1256
    4430:	a47d0001 	andi	r3, r29, 1
    4434:	be23fba4 	bneid	r3, -1116		// 3fd8
    4438:	e8810500 	lwi	r4, r1, 1280
    443c:	a8bcffff 	xori	r5, r28, -1
    4440:	10802800 	addk	r4, r0, r5
    4444:	90850001 	sra	r4, r5
    4448:	90840001 	sra	r4, r4
    444c:	90840001 	sra	r4, r4
    4450:	90840001 	sra	r4, r4
    4454:	90840001 	sra	r4, r4
    4458:	90840001 	sra	r4, r4
    445c:	90840001 	sra	r4, r4
    4460:	90840001 	sra	r4, r4
    4464:	90840001 	sra	r4, r4
    4468:	90840001 	sra	r4, r4
    446c:	90840001 	sra	r4, r4
    4470:	90840001 	sra	r4, r4
    4474:	90840001 	sra	r4, r4
    4478:	90840001 	sra	r4, r4
    447c:	90840001 	sra	r4, r4
    4480:	90840001 	sra	r4, r4
    4484:	90840001 	sra	r4, r4
    4488:	90840001 	sra	r4, r4
    448c:	90840001 	sra	r4, r4
    4490:	90840001 	sra	r4, r4
    4494:	90840001 	sra	r4, r4
    4498:	90840001 	sra	r4, r4
    449c:	90840001 	sra	r4, r4
    44a0:	90840001 	sra	r4, r4
    44a4:	90840001 	sra	r4, r4
    44a8:	90840001 	sra	r4, r4
    44ac:	90840001 	sra	r4, r4
    44b0:	90840001 	sra	r4, r4
    44b4:	90840001 	sra	r4, r4
    44b8:	90840001 	sra	r4, r4
    44bc:	90840001 	sra	r4, r4
    44c0:	849c2000 	and	r4, r28, r4
    44c4:	f8610520 	swi	r3, r1, 1312
    44c8:	b810f1d8 	brid	-3624		// 36a0
    44cc:	f88104ec 	swi	r4, r1, 1260
    44d0:	33de0002 	addik	r30, r30, 2
    44d4:	a8beffff 	xori	r5, r30, -1
    44d8:	10802800 	addk	r4, r0, r5
    44dc:	90850001 	sra	r4, r5
    44e0:	90840001 	sra	r4, r4
    44e4:	90840001 	sra	r4, r4
    44e8:	90840001 	sra	r4, r4
    44ec:	90840001 	sra	r4, r4
    44f0:	90840001 	sra	r4, r4
    44f4:	90840001 	sra	r4, r4
    44f8:	90840001 	sra	r4, r4
    44fc:	90840001 	sra	r4, r4
    4500:	90840001 	sra	r4, r4
    4504:	90840001 	sra	r4, r4
    4508:	90840001 	sra	r4, r4
    450c:	90840001 	sra	r4, r4
    4510:	90840001 	sra	r4, r4
    4514:	90840001 	sra	r4, r4
    4518:	90840001 	sra	r4, r4
    451c:	90840001 	sra	r4, r4
    4520:	90840001 	sra	r4, r4
    4524:	90840001 	sra	r4, r4
    4528:	90840001 	sra	r4, r4
    452c:	90840001 	sra	r4, r4
    4530:	90840001 	sra	r4, r4
    4534:	90840001 	sra	r4, r4
    4538:	90840001 	sra	r4, r4
    453c:	90840001 	sra	r4, r4
    4540:	90840001 	sra	r4, r4
    4544:	90840001 	sra	r4, r4
    4548:	90840001 	sra	r4, r4
    454c:	90840001 	sra	r4, r4
    4550:	90840001 	sra	r4, r4
    4554:	90840001 	sra	r4, r4
    4558:	849e2000 	and	r4, r30, r4
    455c:	fbc10500 	swi	r30, r1, 1280
    4560:	b810f13c 	brid	-3780		// 369c
    4564:	f88104ec 	swi	r4, r1, 1260
    4568:	308104ca 	addik	r4, r1, 1226
    456c:	b810fa44 	brid	-1468		// 3fb0
    4570:	306104c8 	addik	r3, r1, 1224
    4574:	b810f050 	brid	-4016		// 35c4
    4578:	10830000 	addk	r4, r3, r0
    457c:	b810f9f4 	brid	-1548		// 3f70
    4580:	ea6104d8 	lwi	r19, r1, 1240

00004584 <vfprintf>:
    4584:	10850000 	addk	r4, r5, r0
    4588:	10660000 	addk	r3, r6, r0
    458c:	11070000 	addk	r8, r7, r0
    4590:	b0000001 	imm	1
    4594:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    4598:	10c40000 	addk	r6, r4, r0
    459c:	3021ffe4 	addik	r1, r1, -28
    45a0:	f9e10000 	swi	r15, r1, 0
    45a4:	b9f4d2a8 	brlid	r15, -11608	// 184c <_vfprintf_r>
    45a8:	10e30000 	addk	r7, r3, r0
    45ac:	e9e10000 	lwi	r15, r1, 0
    45b0:	b60f0008 	rtsd	r15, 8
    45b4:	3021001c 	addik	r1, r1, 28

000045b8 <__swsetup_r>:
    45b8:	b0000001 	imm	1
    45bc:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    45c0:	3021ffdc 	addik	r1, r1, -36
    45c4:	fa61001c 	swi	r19, r1, 28
    45c8:	fac10020 	swi	r22, r1, 32
    45cc:	f9e10000 	swi	r15, r1, 0
    45d0:	12c50000 	addk	r22, r5, r0
    45d4:	be030010 	beqid	r3, 16		// 45e4
    45d8:	12660000 	addk	r19, r6, r0
    45dc:	e8830018 	lwi	r4, r3, 24
    45e0:	bc04011c 	beqi	r4, 284		// 46fc
    45e4:	b0000001 	imm	1
    45e8:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    45ec:	88731800 	xor	r3, r19, r3
    45f0:	bc030124 	beqi	r3, 292		// 4714
    45f4:	b0000001 	imm	1
    45f8:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    45fc:	88731800 	xor	r3, r19, r3
    4600:	bc030160 	beqi	r3, 352		// 4760
    4604:	b0000001 	imm	1
    4608:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    460c:	88731800 	xor	r3, r19, r3
    4610:	bc030160 	beqi	r3, 352		// 4770
    4614:	e473000c 	lhui	r3, r19, 12
    4618:	90630061 	sext16	r3, r3
    461c:	a4830008 	andi	r4, r3, 8
    4620:	90840061 	sext16	r4, r4
    4624:	be040048 	beqid	r4, 72		// 466c
    4628:	a4830010 	andi	r4, r3, 16
    462c:	e8930010 	lwi	r4, r19, 16
    4630:	be040064 	beqid	r4, 100		// 4694
    4634:	a4a30280 	andi	r5, r3, 640
    4638:	a4a30001 	andi	r5, r3, 1
    463c:	bc05007c 	beqi	r5, 124		// 46b8
    4640:	e8730014 	lwi	r3, r19, 20
    4644:	f8130008 	swi	r0, r19, 8
    4648:	14630000 	rsubk	r3, r3, r0
    464c:	f8730018 	swi	r3, r19, 24
    4650:	be040084 	beqid	r4, 132		// 46d4
    4654:	10600000 	addk	r3, r0, r0
    4658:	e9e10000 	lwi	r15, r1, 0
    465c:	ea61001c 	lwi	r19, r1, 28
    4660:	eac10020 	lwi	r22, r1, 32
    4664:	b60f0008 	rtsd	r15, 8
    4668:	30210024 	addik	r1, r1, 36
    466c:	90840061 	sext16	r4, r4
    4670:	be040110 	beqid	r4, 272		// 4780
    4674:	a4830004 	andi	r4, r3, 4
    4678:	90840061 	sext16	r4, r4
    467c:	bc2400a8 	bnei	r4, 168		// 4724
    4680:	e8930010 	lwi	r4, r19, 16
    4684:	a0630008 	ori	r3, r3, 8
    4688:	be24ffb0 	bneid	r4, -80		// 4638
    468c:	f473000c 	shi	r3, r19, 12
    4690:	a4a30280 	andi	r5, r3, 640
    4694:	a8a50200 	xori	r5, r5, 512
    4698:	be05ffa0 	beqid	r5, -96		// 4638
    469c:	10b60000 	addk	r5, r22, r0
    46a0:	b9f43328 	brlid	r15, 13096	// 79c8 <__smakebuf_r>
    46a4:	10d30000 	addk	r6, r19, r0
    46a8:	e473000c 	lhui	r3, r19, 12
    46ac:	e8930010 	lwi	r4, r19, 16
    46b0:	b810ff88 	brid	-120		// 4638
    46b4:	90630061 	sext16	r3, r3
    46b8:	a4630002 	andi	r3, r3, 2
    46bc:	90630061 	sext16	r3, r3
    46c0:	bc230008 	bnei	r3, 8		// 46c8
    46c4:	e8b30014 	lwi	r5, r19, 20
    46c8:	f8b30008 	swi	r5, r19, 8
    46cc:	be24ff8c 	bneid	r4, -116		// 4658
    46d0:	10600000 	addk	r3, r0, r0
    46d4:	e493000c 	lhui	r4, r19, 12
    46d8:	90840061 	sext16	r4, r4
    46dc:	a4a40080 	andi	r5, r4, 128
    46e0:	90a50061 	sext16	r5, r5
    46e4:	be05ff78 	beqid	r5, -136		// 465c
    46e8:	e9e10000 	lwi	r15, r1, 0
    46ec:	a0840040 	ori	r4, r4, 64
    46f0:	f493000c 	shi	r4, r19, 12
    46f4:	b810ff64 	brid	-156		// 4658
    46f8:	3060ffff 	addik	r3, r0, -1
    46fc:	b9f42884 	brlid	r15, 10372	// 6f80 <__sinit>
    4700:	10a30000 	addk	r5, r3, r0
    4704:	b0000001 	imm	1
    4708:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    470c:	88731800 	xor	r3, r19, r3
    4710:	bc23fee4 	bnei	r3, -284		// 45f4
    4714:	b0000001 	imm	1
    4718:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    471c:	b810fef8 	brid	-264		// 4614
    4720:	ea630004 	lwi	r19, r3, 4
    4724:	e8d30034 	lwi	r6, r19, 52
    4728:	bc060024 	beqi	r6, 36		// 474c
    472c:	30930044 	addik	r4, r19, 68
    4730:	88862000 	xor	r4, r6, r4
    4734:	bc040014 	beqi	r4, 20		// 4748
    4738:	b9f42bcc 	brlid	r15, 11212	// 7304 <_free_r>
    473c:	10b60000 	addk	r5, r22, r0
    4740:	e473000c 	lhui	r3, r19, 12
    4744:	90630061 	sext16	r3, r3
    4748:	f8130034 	swi	r0, r19, 52
    474c:	e8930010 	lwi	r4, r19, 16
    4750:	a463ffdb 	andi	r3, r3, -37
    4754:	f8130004 	swi	r0, r19, 4
    4758:	b810ff2c 	brid	-212		// 4684
    475c:	f8930000 	swi	r4, r19, 0
    4760:	b0000001 	imm	1
    4764:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    4768:	b810feac 	brid	-340		// 4614
    476c:	ea630008 	lwi	r19, r3, 8
    4770:	b0000001 	imm	1
    4774:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    4778:	b810fe9c 	brid	-356		// 4614
    477c:	ea63000c 	lwi	r19, r3, 12
    4780:	30800009 	addik	r4, r0, 9
    4784:	a0630040 	ori	r3, r3, 64
    4788:	f8960000 	swi	r4, r22, 0
    478c:	f473000c 	shi	r3, r19, 12
    4790:	b810fec8 	brid	-312		// 4658
    4794:	3060ffff 	addik	r3, r0, -1

00004798 <__call_exitprocs>:
    4798:	3021ffb8 	addik	r1, r1, -72
    479c:	b0000001 	imm	1
    47a0:	e8602a3c 	lwi	r3, r0, 10812	// 12a3c <_global_impure_ptr>
    47a4:	fb010028 	swi	r24, r1, 40
    47a8:	fb810038 	swi	r28, r1, 56
    47ac:	13060000 	addk	r24, r6, r0
    47b0:	13850000 	addk	r28, r5, r0
    47b4:	fb410030 	swi	r26, r1, 48
    47b8:	fba1003c 	swi	r29, r1, 60
    47bc:	f9e10000 	swi	r15, r1, 0
    47c0:	fa61001c 	swi	r19, r1, 28
    47c4:	fac10020 	swi	r22, r1, 32
    47c8:	fae10024 	swi	r23, r1, 36
    47cc:	fb21002c 	swi	r25, r1, 44
    47d0:	fb610034 	swi	r27, r1, 52
    47d4:	fbc10040 	swi	r30, r1, 64
    47d8:	fbe10044 	swi	r31, r1, 68
    47dc:	33a30048 	addik	r29, r3, 72
    47e0:	33400001 	addik	r26, r0, 1
    47e4:	b0000001 	imm	1
    47e8:	e8602a3c 	lwi	r3, r0, 10812	// 12a3c <_global_impure_ptr>
    47ec:	137d0000 	addk	r27, r29, r0
    47f0:	ebe30048 	lwi	r31, r3, 72
    47f4:	be1f0068 	beqid	r31, 104		// 485c
    47f8:	e9e10000 	lwi	r15, r1, 0
    47fc:	e87f0004 	lwi	r3, r31, 4
    4800:	3263ffff 	addik	r19, r3, -1
    4804:	be53004c 	bltid	r19, 76		// 4850
    4808:	eb3f0088 	lwi	r25, r31, 136
    480c:	30630001 	addik	r3, r3, 1
    4810:	12d39800 	addk	r22, r19, r19
    4814:	10631800 	addk	r3, r3, r3
    4818:	12d6b000 	addk	r22, r22, r22
    481c:	10631800 	addk	r3, r3, r3
    4820:	12d9b000 	addk	r22, r25, r22
    4824:	12ff1800 	addk	r23, r31, r3
    4828:	bc180068 	beqi	r24, 104		// 4890
    482c:	bc190010 	beqi	r25, 16		// 483c
    4830:	e8760080 	lwi	r3, r22, 128
    4834:	8863c000 	xor	r3, r3, r24
    4838:	bc030058 	beqi	r3, 88		// 4890
    483c:	3273ffff 	addik	r19, r19, -1
    4840:	a873ffff 	xori	r3, r19, -1
    4844:	32d6fffc 	addik	r22, r22, -4
    4848:	be23ffe0 	bneid	r3, -32		// 4828
    484c:	32f7fffc 	addik	r23, r23, -4
    4850:	30607c30 	addik	r3, r0, 31792	// 7c30 <free>
    4854:	be2300e8 	bneid	r3, 232		// 493c
    4858:	e9e10000 	lwi	r15, r1, 0
    485c:	ea61001c 	lwi	r19, r1, 28
    4860:	eac10020 	lwi	r22, r1, 32
    4864:	eae10024 	lwi	r23, r1, 36
    4868:	eb010028 	lwi	r24, r1, 40
    486c:	eb21002c 	lwi	r25, r1, 44
    4870:	eb410030 	lwi	r26, r1, 48
    4874:	eb610034 	lwi	r27, r1, 52
    4878:	eb810038 	lwi	r28, r1, 56
    487c:	eba1003c 	lwi	r29, r1, 60
    4880:	ebc10040 	lwi	r30, r1, 64
    4884:	ebe10044 	lwi	r31, r1, 68
    4888:	b60f0008 	rtsd	r15, 8
    488c:	30210048 	addik	r1, r1, 72
    4890:	e89f0004 	lwi	r4, r31, 4
    4894:	3084ffff 	addik	r4, r4, -1
    4898:	88a49800 	xor	r5, r4, r19
    489c:	be050088 	beqid	r5, 136		// 4924
    48a0:	e8770000 	lwi	r3, r23, 0
    48a4:	f8170000 	swi	r0, r23, 0
    48a8:	bc03ff94 	beqi	r3, -108		// 483c
    48ac:	be190068 	beqid	r25, 104		// 4914
    48b0:	ebdf0004 	lwi	r30, r31, 4
    48b4:	e8b90100 	lwi	r5, r25, 256
    48b8:	a653001f 	andi	r18, r19, 31
    48bc:	1080d000 	addk	r4, r0, r26
    48c0:	be120014 	beqid	r18, 20		// 48d4
    48c4:	10840000 	addk	r4, r4, r0
    48c8:	3252ffff 	addik	r18, r18, -1
    48cc:	be32fffc 	bneid	r18, -4		// 48c8
    48d0:	10842000 	addk	r4, r4, r4
    48d4:	84a42800 	and	r5, r4, r5
    48d8:	bc05003c 	beqi	r5, 60		// 4914
    48dc:	e8b90104 	lwi	r5, r25, 260
    48e0:	84842800 	and	r4, r4, r5
    48e4:	be240048 	bneid	r4, 72		// 492c
    48e8:	10bc0000 	addk	r5, r28, r0
    48ec:	99fc1800 	brald	r15, r3
    48f0:	e8d60000 	lwi	r6, r22, 0
    48f4:	e87f0004 	lwi	r3, r31, 4
    48f8:	8903f000 	xor	r8, r3, r30
    48fc:	bc28fee8 	bnei	r8, -280		// 47e4
    4900:	e87b0000 	lwi	r3, r27, 0
    4904:	8863f800 	xor	r3, r3, r31
    4908:	be03ff38 	beqid	r3, -200		// 4840
    490c:	3273ffff 	addik	r19, r19, -1
    4910:	b800fed4 	bri	-300		// 47e4
    4914:	99fc1800 	brald	r15, r3
    4918:	80000000 	or	r0, r0, r0
    491c:	b810ffdc 	brid	-36		// 48f8
    4920:	e87f0004 	lwi	r3, r31, 4
    4924:	b810ff84 	brid	-124		// 48a8
    4928:	f89f0004 	swi	r4, r31, 4
    492c:	99fc1800 	brald	r15, r3
    4930:	e8b60000 	lwi	r5, r22, 0
    4934:	b810ffc4 	brid	-60		// 48f8
    4938:	e87f0004 	lwi	r3, r31, 4
    493c:	e87f0004 	lwi	r3, r31, 4
    4940:	bc23002c 	bnei	r3, 44		// 496c
    4944:	e87f0000 	lwi	r3, r31, 0
    4948:	bc030028 	beqi	r3, 40		// 4970
    494c:	be190010 	beqid	r25, 16		// 495c
    4950:	f87b0000 	swi	r3, r27, 0
    4954:	b9f432dc 	brlid	r15, 13020	// 7c30 <free>
    4958:	10b90000 	addk	r5, r25, r0
    495c:	b9f432d4 	brlid	r15, 13012	// 7c30 <free>
    4960:	10bf0000 	addk	r5, r31, r0
    4964:	b810fe90 	brid	-368		// 47f4
    4968:	ebfb0000 	lwi	r31, r27, 0
    496c:	e87f0000 	lwi	r3, r31, 0
    4970:	137f0000 	addk	r27, r31, r0
    4974:	b810fe80 	brid	-384		// 47f4
    4978:	13e30000 	addk	r31, r3, r0

0000497c <quorem>:
    497c:	3021ffb4 	addik	r1, r1, -76
    4980:	fae10028 	swi	r23, r1, 40
    4984:	fba10040 	swi	r29, r1, 64
    4988:	fbc10044 	swi	r30, r1, 68
    498c:	f9e10000 	swi	r15, r1, 0
    4990:	fa610020 	swi	r19, r1, 32
    4994:	fac10024 	swi	r22, r1, 36
    4998:	fb01002c 	swi	r24, r1, 44
    499c:	fb210030 	swi	r25, r1, 48
    49a0:	fb410034 	swi	r26, r1, 52
    49a4:	fb610038 	swi	r27, r1, 56
    49a8:	fb81003c 	swi	r28, r1, 60
    49ac:	fbe10048 	swi	r31, r1, 72
    49b0:	e8650010 	lwi	r3, r5, 16
    49b4:	eb260010 	lwi	r25, r6, 16
    49b8:	12e50000 	addk	r23, r5, r0
    49bc:	13a60000 	addk	r29, r6, r0
    49c0:	14791801 	cmp	r3, r25, r3
    49c4:	be430508 	bltid	r3, 1288		// 4ecc
    49c8:	13c00000 	addk	r30, r0, r0
    49cc:	33190004 	addik	r24, r25, 4
    49d0:	1318c000 	addk	r24, r24, r24
    49d4:	1318c000 	addk	r24, r24, r24
    49d8:	c8d83000 	lw	r6, r24, r6
    49dc:	c8b82800 	lw	r5, r24, r5
    49e0:	3339ffff 	addik	r25, r25, -1
    49e4:	b0000000 	imm	0
    49e8:	b9f4d008 	brlid	r15, -12280	// 119f0 <__udivsi3>
    49ec:	30c60001 	addik	r6, r6, 1
    49f0:	131dc000 	addk	r24, r29, r24
    49f4:	12c30000 	addk	r22, r3, r0
    49f8:	327d0014 	addik	r19, r29, 20
    49fc:	be0302c0 	beqid	r3, 704		// 4cbc
    4a00:	33570014 	addik	r26, r23, 20
    4a04:	13930000 	addk	r28, r19, r0
    4a08:	137a0000 	addk	r27, r26, r0
    4a0c:	10fe0000 	addk	r7, r30, r0
    4a10:	ebfc0000 	lwi	r31, r28, 0
    4a14:	10d60000 	addk	r6, r22, r0
    4a18:	b0000000 	imm	0
    4a1c:	a4bfffff 	andi	r5, r31, -1
    4a20:	b0000000 	imm	0
    4a24:	b9f4cf74 	brlid	r15, -12428	// 11998 <__mulsi3>
    4a28:	f8e1001c 	swi	r7, r1, 28
    4a2c:	10d60000 	addk	r6, r22, r0
    4a30:	10a0f800 	addk	r5, r0, r31
    4a34:	90bf0041 	srl	r5, r31
    4a38:	90a50041 	srl	r5, r5
    4a3c:	90a50041 	srl	r5, r5
    4a40:	90a50041 	srl	r5, r5
    4a44:	90a50041 	srl	r5, r5
    4a48:	90a50041 	srl	r5, r5
    4a4c:	90a50041 	srl	r5, r5
    4a50:	90a50041 	srl	r5, r5
    4a54:	90a50041 	srl	r5, r5
    4a58:	90a50041 	srl	r5, r5
    4a5c:	90a50041 	srl	r5, r5
    4a60:	90a50041 	srl	r5, r5
    4a64:	90a50041 	srl	r5, r5
    4a68:	90a50041 	srl	r5, r5
    4a6c:	90a50041 	srl	r5, r5
    4a70:	90a50041 	srl	r5, r5
    4a74:	b0000000 	imm	0
    4a78:	b9f4cf20 	brlid	r15, -12512	// 11998 <__mulsi3>
    4a7c:	13de1800 	addk	r30, r30, r3
    4a80:	e8bb0000 	lwi	r5, r27, 0
    4a84:	e8e1001c 	lwi	r7, r1, 28
    4a88:	1080f000 	addk	r4, r0, r30
    4a8c:	909e0041 	srl	r4, r30
    4a90:	90840041 	srl	r4, r4
    4a94:	90840041 	srl	r4, r4
    4a98:	90840041 	srl	r4, r4
    4a9c:	90840041 	srl	r4, r4
    4aa0:	90840041 	srl	r4, r4
    4aa4:	90840041 	srl	r4, r4
    4aa8:	90840041 	srl	r4, r4
    4aac:	90840041 	srl	r4, r4
    4ab0:	90840041 	srl	r4, r4
    4ab4:	90840041 	srl	r4, r4
    4ab8:	90840041 	srl	r4, r4
    4abc:	90840041 	srl	r4, r4
    4ac0:	90840041 	srl	r4, r4
    4ac4:	90840041 	srl	r4, r4
    4ac8:	90840041 	srl	r4, r4
    4acc:	10641800 	addk	r3, r4, r3
    4ad0:	b0000000 	imm	0
    4ad4:	a485ffff 	andi	r4, r5, -1
    4ad8:	10e43800 	addk	r7, r4, r7
    4adc:	b0000000 	imm	0
    4ae0:	a7deffff 	andi	r30, r30, -1
    4ae4:	b0000000 	imm	0
    4ae8:	a483ffff 	andi	r4, r3, -1
    4aec:	17de3800 	rsubk	r30, r30, r7
    4af0:	10c02800 	addk	r6, r0, r5
    4af4:	90c50041 	srl	r6, r5
    4af8:	90c60041 	srl	r6, r6
    4afc:	90c60041 	srl	r6, r6
    4b00:	90c60041 	srl	r6, r6
    4b04:	90c60041 	srl	r6, r6
    4b08:	90c60041 	srl	r6, r6
    4b0c:	90c60041 	srl	r6, r6
    4b10:	90c60041 	srl	r6, r6
    4b14:	90c60041 	srl	r6, r6
    4b18:	90c60041 	srl	r6, r6
    4b1c:	90c60041 	srl	r6, r6
    4b20:	90c60041 	srl	r6, r6
    4b24:	90c60041 	srl	r6, r6
    4b28:	90c60041 	srl	r6, r6
    4b2c:	90c60041 	srl	r6, r6
    4b30:	90c60041 	srl	r6, r6
    4b34:	14843000 	rsubk	r4, r4, r6
    4b38:	10a0f000 	addk	r5, r0, r30
    4b3c:	90be0001 	sra	r5, r30
    4b40:	90a50001 	sra	r5, r5
    4b44:	90a50001 	sra	r5, r5
    4b48:	90a50001 	sra	r5, r5
    4b4c:	90a50001 	sra	r5, r5
    4b50:	90a50001 	sra	r5, r5
    4b54:	90a50001 	sra	r5, r5
    4b58:	90a50001 	sra	r5, r5
    4b5c:	90a50001 	sra	r5, r5
    4b60:	90a50001 	sra	r5, r5
    4b64:	90a50001 	sra	r5, r5
    4b68:	90a50001 	sra	r5, r5
    4b6c:	90a50001 	sra	r5, r5
    4b70:	90a50001 	sra	r5, r5
    4b74:	90a50001 	sra	r5, r5
    4b78:	90a50001 	sra	r5, r5
    4b7c:	10842800 	addk	r4, r4, r5
    4b80:	10a42000 	addk	r5, r4, r4
    4b84:	10a52800 	addk	r5, r5, r5
    4b88:	10a52800 	addk	r5, r5, r5
    4b8c:	10a52800 	addk	r5, r5, r5
    4b90:	10a52800 	addk	r5, r5, r5
    4b94:	10a52800 	addk	r5, r5, r5
    4b98:	10a52800 	addk	r5, r5, r5
    4b9c:	10a52800 	addk	r5, r5, r5
    4ba0:	10a52800 	addk	r5, r5, r5
    4ba4:	10a52800 	addk	r5, r5, r5
    4ba8:	10a52800 	addk	r5, r5, r5
    4bac:	10a52800 	addk	r5, r5, r5
    4bb0:	10a52800 	addk	r5, r5, r5
    4bb4:	10a52800 	addk	r5, r5, r5
    4bb8:	10a52800 	addk	r5, r5, r5
    4bbc:	b0000000 	imm	0
    4bc0:	a7deffff 	andi	r30, r30, -1
    4bc4:	10a52800 	addk	r5, r5, r5
    4bc8:	80a5f000 	or	r5, r5, r30
    4bcc:	339c0004 	addik	r28, r28, 4
    4bd0:	f8bb0000 	swi	r5, r27, 0
    4bd4:	14bcc003 	cmpu	r5, r28, r24
    4bd8:	13c01800 	addk	r30, r0, r3
    4bdc:	93c30041 	srl	r30, r3
    4be0:	93de0041 	srl	r30, r30
    4be4:	93de0041 	srl	r30, r30
    4be8:	93de0041 	srl	r30, r30
    4bec:	93de0041 	srl	r30, r30
    4bf0:	93de0041 	srl	r30, r30
    4bf4:	93de0041 	srl	r30, r30
    4bf8:	93de0041 	srl	r30, r30
    4bfc:	93de0041 	srl	r30, r30
    4c00:	93de0041 	srl	r30, r30
    4c04:	93de0041 	srl	r30, r30
    4c08:	93de0041 	srl	r30, r30
    4c0c:	93de0041 	srl	r30, r30
    4c10:	93de0041 	srl	r30, r30
    4c14:	93de0041 	srl	r30, r30
    4c18:	93de0041 	srl	r30, r30
    4c1c:	10e02000 	addk	r7, r0, r4
    4c20:	90e40001 	sra	r7, r4
    4c24:	90e70001 	sra	r7, r7
    4c28:	90e70001 	sra	r7, r7
    4c2c:	90e70001 	sra	r7, r7
    4c30:	90e70001 	sra	r7, r7
    4c34:	90e70001 	sra	r7, r7
    4c38:	90e70001 	sra	r7, r7
    4c3c:	90e70001 	sra	r7, r7
    4c40:	90e70001 	sra	r7, r7
    4c44:	90e70001 	sra	r7, r7
    4c48:	90e70001 	sra	r7, r7
    4c4c:	90e70001 	sra	r7, r7
    4c50:	90e70001 	sra	r7, r7
    4c54:	90e70001 	sra	r7, r7
    4c58:	90e70001 	sra	r7, r7
    4c5c:	90e70001 	sra	r7, r7
    4c60:	bea5fdb0 	bgeid	r5, -592		// 4a10
    4c64:	337b0004 	addik	r27, r27, 4
    4c68:	30790005 	addik	r3, r25, 5
    4c6c:	10631800 	addk	r3, r3, r3
    4c70:	10631800 	addk	r3, r3, r3
    4c74:	c883b800 	lw	r4, r3, r23
    4c78:	be240044 	bneid	r4, 68		// 4cbc
    4c7c:	10b71800 	addk	r5, r23, r3
    4c80:	3065fffc 	addik	r3, r5, -4
    4c84:	1483d003 	cmpu	r4, r3, r26
    4c88:	bca40030 	bgei	r4, 48		// 4cb8
    4c8c:	e885fffc 	lwi	r4, r5, -4
    4c90:	be04001c 	beqid	r4, 28		// 4cac
    4c94:	3063fffc 	addik	r3, r3, -4
    4c98:	b8100024 	brid	36		// 4cbc
    4c9c:	fb370010 	swi	r25, r23, 16
    4ca0:	e8830000 	lwi	r4, r3, 0
    4ca4:	be240014 	bneid	r4, 20		// 4cb8
    4ca8:	3063fffc 	addik	r3, r3, -4
    4cac:	1483d003 	cmpu	r4, r3, r26
    4cb0:	be44fff0 	bltid	r4, -16		// 4ca0
    4cb4:	3339ffff 	addik	r25, r25, -1
    4cb8:	fb370010 	swi	r25, r23, 16
    4cbc:	10b70000 	addk	r5, r23, r0
    4cc0:	b9f44d88 	brlid	r15, 19848	// 9a48 <__mcmp>
    4cc4:	10dd0000 	addk	r6, r29, r0
    4cc8:	be430200 	bltid	r3, 512		// 4ec8
    4ccc:	10c00000 	addk	r6, r0, r0
    4cd0:	109a0000 	addk	r4, r26, r0
    4cd4:	32d60001 	addik	r22, r22, 1
    4cd8:	e8a40000 	lwi	r5, r4, 0
    4cdc:	e8730000 	lwi	r3, r19, 0
    4ce0:	32730004 	addik	r19, r19, 4
    4ce4:	b0000000 	imm	0
    4ce8:	a505ffff 	andi	r8, r5, -1
    4cec:	b0000000 	imm	0
    4cf0:	a4e3ffff 	andi	r7, r3, -1
    4cf4:	11083000 	addk	r8, r8, r6
    4cf8:	15074000 	rsubk	r8, r7, r8
    4cfc:	10e02800 	addk	r7, r0, r5
    4d00:	90e50041 	srl	r7, r5
    4d04:	90e70041 	srl	r7, r7
    4d08:	90e70041 	srl	r7, r7
    4d0c:	90e70041 	srl	r7, r7
    4d10:	90e70041 	srl	r7, r7
    4d14:	90e70041 	srl	r7, r7
    4d18:	90e70041 	srl	r7, r7
    4d1c:	90e70041 	srl	r7, r7
    4d20:	90e70041 	srl	r7, r7
    4d24:	90e70041 	srl	r7, r7
    4d28:	90e70041 	srl	r7, r7
    4d2c:	90e70041 	srl	r7, r7
    4d30:	90e70041 	srl	r7, r7
    4d34:	90e70041 	srl	r7, r7
    4d38:	90e70041 	srl	r7, r7
    4d3c:	90e70041 	srl	r7, r7
    4d40:	10a01800 	addk	r5, r0, r3
    4d44:	90a30041 	srl	r5, r3
    4d48:	90a50041 	srl	r5, r5
    4d4c:	90a50041 	srl	r5, r5
    4d50:	90a50041 	srl	r5, r5
    4d54:	90a50041 	srl	r5, r5
    4d58:	90a50041 	srl	r5, r5
    4d5c:	90a50041 	srl	r5, r5
    4d60:	90a50041 	srl	r5, r5
    4d64:	90a50041 	srl	r5, r5
    4d68:	90a50041 	srl	r5, r5
    4d6c:	90a50041 	srl	r5, r5
    4d70:	90a50041 	srl	r5, r5
    4d74:	90a50041 	srl	r5, r5
    4d78:	90a50041 	srl	r5, r5
    4d7c:	90a50041 	srl	r5, r5
    4d80:	90a50041 	srl	r5, r5
    4d84:	14e53800 	rsubk	r7, r5, r7
    4d88:	10604000 	addk	r3, r0, r8
    4d8c:	90680001 	sra	r3, r8
    4d90:	90630001 	sra	r3, r3
    4d94:	90630001 	sra	r3, r3
    4d98:	90630001 	sra	r3, r3
    4d9c:	90630001 	sra	r3, r3
    4da0:	90630001 	sra	r3, r3
    4da4:	90630001 	sra	r3, r3
    4da8:	90630001 	sra	r3, r3
    4dac:	90630001 	sra	r3, r3
    4db0:	90630001 	sra	r3, r3
    4db4:	90630001 	sra	r3, r3
    4db8:	90630001 	sra	r3, r3
    4dbc:	90630001 	sra	r3, r3
    4dc0:	90630001 	sra	r3, r3
    4dc4:	90630001 	sra	r3, r3
    4dc8:	90630001 	sra	r3, r3
    4dcc:	10e71800 	addk	r7, r7, r3
    4dd0:	11273800 	addk	r9, r7, r7
    4dd4:	11294800 	addk	r9, r9, r9
    4dd8:	11294800 	addk	r9, r9, r9
    4ddc:	11294800 	addk	r9, r9, r9
    4de0:	11294800 	addk	r9, r9, r9
    4de4:	11294800 	addk	r9, r9, r9
    4de8:	11294800 	addk	r9, r9, r9
    4dec:	11294800 	addk	r9, r9, r9
    4df0:	11294800 	addk	r9, r9, r9
    4df4:	11294800 	addk	r9, r9, r9
    4df8:	11294800 	addk	r9, r9, r9
    4dfc:	11294800 	addk	r9, r9, r9
    4e00:	11294800 	addk	r9, r9, r9
    4e04:	11294800 	addk	r9, r9, r9
    4e08:	11294800 	addk	r9, r9, r9
    4e0c:	11294800 	addk	r9, r9, r9
    4e10:	b0000000 	imm	0
    4e14:	a508ffff 	andi	r8, r8, -1
    4e18:	81294000 	or	r9, r9, r8
    4e1c:	f9240000 	swi	r9, r4, 0
    4e20:	1473c003 	cmpu	r3, r19, r24
    4e24:	10c03800 	addk	r6, r0, r7
    4e28:	90c70001 	sra	r6, r7
    4e2c:	90c60001 	sra	r6, r6
    4e30:	90c60001 	sra	r6, r6
    4e34:	90c60001 	sra	r6, r6
    4e38:	90c60001 	sra	r6, r6
    4e3c:	90c60001 	sra	r6, r6
    4e40:	90c60001 	sra	r6, r6
    4e44:	90c60001 	sra	r6, r6
    4e48:	90c60001 	sra	r6, r6
    4e4c:	90c60001 	sra	r6, r6
    4e50:	90c60001 	sra	r6, r6
    4e54:	90c60001 	sra	r6, r6
    4e58:	90c60001 	sra	r6, r6
    4e5c:	90c60001 	sra	r6, r6
    4e60:	90c60001 	sra	r6, r6
    4e64:	90c60001 	sra	r6, r6
    4e68:	bea3fe70 	bgeid	r3, -400		// 4cd8
    4e6c:	30840004 	addik	r4, r4, 4
    4e70:	30790005 	addik	r3, r25, 5
    4e74:	10631800 	addk	r3, r3, r3
    4e78:	10631800 	addk	r3, r3, r3
    4e7c:	c883b800 	lw	r4, r3, r23
    4e80:	be240048 	bneid	r4, 72		// 4ec8
    4e84:	10771800 	addk	r3, r23, r3
    4e88:	3083fffc 	addik	r4, r3, -4
    4e8c:	14a4d003 	cmpu	r5, r4, r26
    4e90:	bca50034 	bgei	r5, 52		// 4ec4
    4e94:	e863fffc 	lwi	r3, r3, -4
    4e98:	be030020 	beqid	r3, 32		// 4eb8
    4e9c:	3084fffc 	addik	r4, r4, -4
    4ea0:	30840004 	addik	r4, r4, 4
    4ea4:	b8100024 	brid	36		// 4ec8
    4ea8:	fb370010 	swi	r25, r23, 16
    4eac:	e8640000 	lwi	r3, r4, 0
    4eb0:	bc230014 	bnei	r3, 20		// 4ec4
    4eb4:	3084fffc 	addik	r4, r4, -4
    4eb8:	1464d003 	cmpu	r3, r4, r26
    4ebc:	be43fff0 	bltid	r3, -16		// 4eac
    4ec0:	3339ffff 	addik	r25, r25, -1
    4ec4:	fb370010 	swi	r25, r23, 16
    4ec8:	13d60000 	addk	r30, r22, r0
    4ecc:	107e0000 	addk	r3, r30, r0
    4ed0:	e9e10000 	lwi	r15, r1, 0
    4ed4:	ea610020 	lwi	r19, r1, 32
    4ed8:	eac10024 	lwi	r22, r1, 36
    4edc:	eae10028 	lwi	r23, r1, 40
    4ee0:	eb01002c 	lwi	r24, r1, 44
    4ee4:	eb210030 	lwi	r25, r1, 48
    4ee8:	eb410034 	lwi	r26, r1, 52
    4eec:	eb610038 	lwi	r27, r1, 56
    4ef0:	eb81003c 	lwi	r28, r1, 60
    4ef4:	eba10040 	lwi	r29, r1, 64
    4ef8:	ebc10044 	lwi	r30, r1, 68
    4efc:	ebe10048 	lwi	r31, r1, 72
    4f00:	b60f0008 	rtsd	r15, 8
    4f04:	3021004c 	addik	r1, r1, 76

00004f08 <_dtoa_r>:
    4f08:	3021ff5c 	addik	r1, r1, -164
    4f0c:	fa610078 	swi	r19, r1, 120
    4f10:	fac1007c 	swi	r22, r1, 124
    4f14:	fae10080 	swi	r23, r1, 128
    4f18:	fb210088 	swi	r25, r1, 136
    4f1c:	fbc1009c 	swi	r30, r1, 156
    4f20:	f9e10000 	swi	r15, r1, 0
    4f24:	fb010084 	swi	r24, r1, 132
    4f28:	fb41008c 	swi	r26, r1, 140
    4f2c:	fb610090 	swi	r27, r1, 144
    4f30:	fb810094 	swi	r28, r1, 148
    4f34:	fba10098 	swi	r29, r1, 152
    4f38:	fbe100a0 	swi	r31, r1, 160
    4f3c:	eb050024 	lwi	r24, r5, 36
    4f40:	f92100b8 	swi	r9, r1, 184
    4f44:	f94100bc 	swi	r10, r1, 188
    4f48:	12650000 	addk	r19, r5, r0
    4f4c:	13c80000 	addk	r30, r8, r0
    4f50:	eb2100c0 	lwi	r25, r1, 192
    4f54:	12c60000 	addk	r22, r6, r0
    4f58:	be180f10 	beqid	r24, 3856		// 5e68
    4f5c:	12e70000 	addk	r23, r7, r0
    4f60:	e8780000 	lwi	r3, r24, 0
    4f64:	be030040 	beqid	r3, 64		// 4fa4
    4f68:	10c30000 	addk	r6, r3, r0
    4f6c:	e8980004 	lwi	r4, r24, 4
    4f70:	31000001 	addik	r8, r0, 1
    4f74:	a644001f 	andi	r18, r4, 31
    4f78:	10e04000 	addk	r7, r0, r8
    4f7c:	be120014 	beqid	r18, 20		// 4f90
    4f80:	10e70000 	addk	r7, r7, r0
    4f84:	3252ffff 	addik	r18, r18, -1
    4f88:	be32fffc 	bneid	r18, -4		// 4f84
    4f8c:	10e73800 	addk	r7, r7, r7
    4f90:	f8830004 	swi	r4, r3, 4
    4f94:	b9f43bd0 	brlid	r15, 15312	// 8b64 <_Bfree>
    4f98:	f8e30008 	swi	r7, r3, 8
    4f9c:	e8730024 	lwi	r3, r19, 36
    4fa0:	f8030000 	swi	r0, r3, 0
    4fa4:	be5600f8 	bltid	r22, 248		// 509c
    4fa8:	13960000 	addk	r28, r22, r0
    4fac:	f8190000 	swi	r0, r25, 0
    4fb0:	b0007ff0 	imm	32752
    4fb4:	a47c0000 	andi	r3, r28, 0
    4fb8:	b0007ff0 	imm	32752
    4fbc:	a8630000 	xori	r3, r3, 0
    4fc0:	be030080 	beqid	r3, 128		// 5040
    4fc4:	10b60000 	addk	r5, r22, r0
    4fc8:	10d70000 	addk	r6, r23, r0
    4fcc:	10e00000 	addk	r7, r0, r0
    4fd0:	11000000 	addk	r8, r0, r0
    4fd4:	b0000000 	imm	0
    4fd8:	b9f4c084 	brlid	r15, -16252	// 1105c <__eqdf2>
    4fdc:	13370000 	addk	r25, r23, r0
    4fe0:	be2300d4 	bneid	r3, 212		// 50b4
    4fe4:	e88100bc 	lwi	r4, r1, 188
    4fe8:	e8a100c4 	lwi	r5, r1, 196
    4fec:	30600001 	addik	r3, r0, 1
    4ff0:	f8640000 	swi	r3, r4, 0
    4ff4:	b0000001 	imm	1
    4ff8:	30602c1c 	addik	r3, r0, 11292
    4ffc:	be05000c 	beqid	r5, 12		// 5008
    5000:	30830001 	addik	r4, r3, 1
    5004:	f8850000 	swi	r4, r5, 0
    5008:	e9e10000 	lwi	r15, r1, 0
    500c:	ea610078 	lwi	r19, r1, 120
    5010:	eac1007c 	lwi	r22, r1, 124
    5014:	eae10080 	lwi	r23, r1, 128
    5018:	eb010084 	lwi	r24, r1, 132
    501c:	eb210088 	lwi	r25, r1, 136
    5020:	eb41008c 	lwi	r26, r1, 140
    5024:	eb610090 	lwi	r27, r1, 144
    5028:	eb810094 	lwi	r28, r1, 148
    502c:	eba10098 	lwi	r29, r1, 152
    5030:	ebc1009c 	lwi	r30, r1, 156
    5034:	ebe100a0 	lwi	r31, r1, 160
    5038:	b60f0008 	rtsd	r15, 8
    503c:	302100a4 	addik	r1, r1, 164
    5040:	e88100bc 	lwi	r4, r1, 188
    5044:	3060270f 	addik	r3, r0, 9999
    5048:	f8640000 	swi	r3, r4, 0
    504c:	b0000001 	imm	1
    5050:	30602c18 	addik	r3, r0, 11288
    5054:	be370024 	bneid	r23, 36		// 5078
    5058:	e8a100c4 	lwi	r5, r1, 196
    505c:	b000000f 	imm	15
    5060:	a79cffff 	andi	r28, r28, -1
    5064:	b0000001 	imm	1
    5068:	30602c0c 	addik	r3, r0, 11276
    506c:	bc1c000c 	beqi	r28, 12		// 5078
    5070:	b0000001 	imm	1
    5074:	30602c18 	addik	r3, r0, 11288
    5078:	be05ff94 	beqid	r5, -108		// 500c
    507c:	e9e10000 	lwi	r15, r1, 0
    5080:	e0a30003 	lbui	r5, r3, 3
    5084:	be05000c 	beqid	r5, 12		// 5090
    5088:	30830003 	addik	r4, r3, 3
    508c:	30830008 	addik	r4, r3, 8
    5090:	e8c100c4 	lwi	r6, r1, 196
    5094:	b810ff74 	brid	-140		// 5008
    5098:	f8860000 	swi	r4, r6, 0
    509c:	b0007fff 	imm	32767
    50a0:	a796ffff 	andi	r28, r22, -1
    50a4:	30600001 	addik	r3, r0, 1
    50a8:	f8790000 	swi	r3, r25, 0
    50ac:	b810ff04 	brid	-252		// 4fb0
    50b0:	12dc0000 	addk	r22, r28, r0
    50b4:	10b30000 	addk	r5, r19, r0
    50b8:	10d60000 	addk	r6, r22, r0
    50bc:	10f70000 	addk	r7, r23, r0
    50c0:	3101001c 	addik	r8, r1, 28
    50c4:	b9f45160 	brlid	r15, 20832	// a224 <__d2b>
    50c8:	31210020 	addik	r9, r1, 32
    50cc:	1340e000 	addk	r26, r0, r28
    50d0:	935c0041 	srl	r26, r28
    50d4:	935a0041 	srl	r26, r26
    50d8:	935a0041 	srl	r26, r26
    50dc:	935a0041 	srl	r26, r26
    50e0:	935a0041 	srl	r26, r26
    50e4:	935a0041 	srl	r26, r26
    50e8:	935a0041 	srl	r26, r26
    50ec:	935a0041 	srl	r26, r26
    50f0:	935a0041 	srl	r26, r26
    50f4:	935a0041 	srl	r26, r26
    50f8:	935a0041 	srl	r26, r26
    50fc:	935a0041 	srl	r26, r26
    5100:	935a0041 	srl	r26, r26
    5104:	935a0041 	srl	r26, r26
    5108:	935a0041 	srl	r26, r26
    510c:	935a0041 	srl	r26, r26
    5110:	935a0041 	srl	r26, r26
    5114:	935a0041 	srl	r26, r26
    5118:	935a0041 	srl	r26, r26
    511c:	935a0041 	srl	r26, r26
    5120:	a75a07ff 	andi	r26, r26, 2047
    5124:	be1a06bc 	beqid	r26, 1724		// 57e0
    5128:	13a30000 	addk	r29, r3, r0
    512c:	eb610020 	lwi	r27, r1, 32
    5130:	b000000f 	imm	15
    5134:	a476ffff 	andi	r3, r22, -1
    5138:	10c00000 	addk	r6, r0, r0
    513c:	b0003ff0 	imm	16368
    5140:	a3030000 	ori	r24, r3, 0
    5144:	335afc01 	addik	r26, r26, -1023
    5148:	f8c1005c 	swi	r6, r1, 92
    514c:	10b80000 	addk	r5, r24, r0
    5150:	b0003ff8 	imm	16376
    5154:	30e00000 	addik	r7, r0, 0
    5158:	31000000 	addik	r8, r0, 0
    515c:	b0000000 	imm	0
    5160:	b9f4b460 	brlid	r15, -19360	// 105c0 <__subdf3>
    5164:	10d90000 	addk	r6, r25, r0
    5168:	10a40000 	addk	r5, r4, r0
    516c:	b0003fd2 	imm	16338
    5170:	30e087a7 	addik	r7, r0, -30809
    5174:	b000636f 	imm	25455
    5178:	31004361 	addik	r8, r0, 17249
    517c:	10c50000 	addk	r6, r5, r0
    5180:	b0000000 	imm	0
    5184:	b9f4b4ac 	brlid	r15, -19284	// 10630 <__muldf3>
    5188:	10a30000 	addk	r5, r3, r0
    518c:	10a40000 	addk	r5, r4, r0
    5190:	b0003fc6 	imm	16326
    5194:	30e08a28 	addik	r7, r0, -30168
    5198:	b0008b60 	imm	-29856
    519c:	3100c8b3 	addik	r8, r0, -14157
    51a0:	10c50000 	addk	r6, r5, r0
    51a4:	b0000000 	imm	0
    51a8:	b9f4b3b4 	brlid	r15, -19532	// 1055c <__adddf3>
    51ac:	10a30000 	addk	r5, r3, r0
    51b0:	10ba0000 	addk	r5, r26, r0
    51b4:	13030000 	addk	r24, r3, r0
    51b8:	b0000000 	imm	0
    51bc:	b9f4c0f4 	brlid	r15, -16140	// 112b0 <__floatsidf>
    51c0:	13240000 	addk	r25, r4, r0
    51c4:	10a40000 	addk	r5, r4, r0
    51c8:	b0003fd3 	imm	16339
    51cc:	30e04413 	addik	r7, r0, 17427
    51d0:	b000509f 	imm	20639
    51d4:	310079fb 	addik	r8, r0, 31227
    51d8:	10c50000 	addk	r6, r5, r0
    51dc:	b0000000 	imm	0
    51e0:	b9f4b450 	brlid	r15, -19376	// 10630 <__muldf3>
    51e4:	10a30000 	addk	r5, r3, r0
    51e8:	11030000 	addk	r8, r3, r0
    51ec:	10b80000 	addk	r5, r24, r0
    51f0:	10d90000 	addk	r6, r25, r0
    51f4:	10e80000 	addk	r7, r8, r0
    51f8:	b0000000 	imm	0
    51fc:	b9f4b360 	brlid	r15, -19616	// 1055c <__adddf3>
    5200:	11040000 	addk	r8, r4, r0
    5204:	13030000 	addk	r24, r3, r0
    5208:	10c40000 	addk	r6, r4, r0
    520c:	13240000 	addk	r25, r4, r0
    5210:	b0000000 	imm	0
    5214:	b9f4c254 	brlid	r15, -15788	// 11468 <__fixdfsi>
    5218:	10b80000 	addk	r5, r24, r0
    521c:	10b80000 	addk	r5, r24, r0
    5220:	10d90000 	addk	r6, r25, r0
    5224:	10e00000 	addk	r7, r0, r0
    5228:	11000000 	addk	r8, r0, r0
    522c:	b0000000 	imm	0
    5230:	b9f4c00c 	brlid	r15, -16372	// 1123c <__ltdf2>
    5234:	f8610024 	swi	r3, r1, 36
    5238:	bc430c80 	blti	r3, 3200		// 5eb8
    523c:	e8810024 	lwi	r4, r1, 36
    5240:	30600016 	addik	r3, r0, 22
    5244:	30a00001 	addik	r5, r0, 1
    5248:	14641803 	cmpu	r3, r4, r3
    524c:	be430054 	bltid	r3, 84		// 52a0
    5250:	f8a10040 	swi	r5, r1, 64
    5254:	10642000 	addk	r3, r4, r4
    5258:	b0000001 	imm	1
    525c:	30802ce4 	addik	r4, r0, 11492	// 12ce4 <__mprec_tens>
    5260:	10631800 	addk	r3, r3, r3
    5264:	10631800 	addk	r3, r3, r3
    5268:	10641800 	addk	r3, r4, r3
    526c:	e8a30000 	lwi	r5, r3, 0
    5270:	e8c30004 	lwi	r6, r3, 4
    5274:	10f60000 	addk	r7, r22, r0
    5278:	b0000000 	imm	0
    527c:	b9f4bec8 	brlid	r15, -16696	// 11144 <__gtdf2>
    5280:	11170000 	addk	r8, r23, r0
    5284:	be630c74 	bleid	r3, 3188		// 5ef8
    5288:	10800000 	addk	r4, r0, r0
    528c:	e8c10024 	lwi	r6, r1, 36
    5290:	10600000 	addk	r3, r0, r0
    5294:	f8610040 	swi	r3, r1, 64
    5298:	30c6ffff 	addik	r6, r6, -1
    529c:	f8c10024 	swi	r6, r1, 36
    52a0:	17fad800 	rsubk	r31, r26, r27
    52a4:	33ffffff 	addik	r31, r31, -1
    52a8:	be5f0c00 	bltid	r31, 3072		// 5ea8
    52ac:	10a00000 	addk	r5, r0, r0
    52b0:	f8a10034 	swi	r5, r1, 52
    52b4:	e8c10024 	lwi	r6, r1, 36
    52b8:	be460bd0 	bltid	r6, 3024		// 5e88
    52bc:	10600000 	addk	r3, r0, r0
    52c0:	13ff3000 	addk	r31, r31, r6
    52c4:	f8c1004c 	swi	r6, r1, 76
    52c8:	f8610044 	swi	r3, r1, 68
    52cc:	30600009 	addik	r3, r0, 9
    52d0:	147e1803 	cmpu	r3, r30, r3
    52d4:	be430594 	bltid	r3, 1428		// 5868
    52d8:	30800005 	addik	r4, r0, 5
    52dc:	149e2001 	cmp	r4, r30, r4
    52e0:	bea40010 	bgeid	r4, 16		// 52f0
    52e4:	30600001 	addik	r3, r0, 1
    52e8:	33defffc 	addik	r30, r30, -4
    52ec:	10600000 	addk	r3, r0, r0
    52f0:	a89e0003 	xori	r4, r30, 3
    52f4:	bc240c0c 	bnei	r4, 3084		// 5f00
    52f8:	f8810048 	swi	r4, r1, 72
    52fc:	e88100b8 	lwi	r4, r1, 184
    5300:	e8a10024 	lwi	r5, r1, 36
    5304:	10842800 	addk	r4, r4, r5
    5308:	30c40001 	addik	r6, r4, 1
    530c:	f8810050 	swi	r4, r1, 80
    5310:	3080000e 	addik	r4, r0, 14
    5314:	be661420 	bleid	r6, 5152		// 6734
    5318:	14862003 	cmpu	r4, r6, r4
    531c:	a884ffff 	xori	r4, r4, -1
    5320:	13202000 	addk	r25, r0, r4
    5324:	93240041 	srl	r25, r4
    5328:	93390041 	srl	r25, r25
    532c:	93390041 	srl	r25, r25
    5330:	93390041 	srl	r25, r25
    5334:	93390041 	srl	r25, r25
    5338:	93390041 	srl	r25, r25
    533c:	93390041 	srl	r25, r25
    5340:	93390041 	srl	r25, r25
    5344:	93390041 	srl	r25, r25
    5348:	93390041 	srl	r25, r25
    534c:	93390041 	srl	r25, r25
    5350:	93390041 	srl	r25, r25
    5354:	93390041 	srl	r25, r25
    5358:	93390041 	srl	r25, r25
    535c:	93390041 	srl	r25, r25
    5360:	93390041 	srl	r25, r25
    5364:	93390041 	srl	r25, r25
    5368:	93390041 	srl	r25, r25
    536c:	93390041 	srl	r25, r25
    5370:	93390041 	srl	r25, r25
    5374:	93390041 	srl	r25, r25
    5378:	93390041 	srl	r25, r25
    537c:	93390041 	srl	r25, r25
    5380:	93390041 	srl	r25, r25
    5384:	93390041 	srl	r25, r25
    5388:	93390041 	srl	r25, r25
    538c:	93390041 	srl	r25, r25
    5390:	93390041 	srl	r25, r25
    5394:	93390041 	srl	r25, r25
    5398:	93390041 	srl	r25, r25
    539c:	93390041 	srl	r25, r25
    53a0:	f8c1002c 	swi	r6, r1, 44
    53a4:	8723c800 	and	r25, r3, r25
    53a8:	eb130024 	lwi	r24, r19, 36
    53ac:	30600017 	addik	r3, r0, 23
    53b0:	14661803 	cmpu	r3, r6, r3
    53b4:	bea3002c 	bgeid	r3, 44		// 53e0
    53b8:	f8180004 	swi	r0, r24, 4
    53bc:	30800001 	addik	r4, r0, 1
    53c0:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    53c4:	10631800 	addk	r3, r3, r3
    53c8:	30a30014 	addik	r5, r3, 20
    53cc:	14a53003 	cmpu	r5, r5, r6
    53d0:	10e40000 	addk	r7, r4, r0
    53d4:	bea5fff0 	bgeid	r5, -16		// 53c4
    53d8:	30840001 	addik	r4, r4, 1
    53dc:	f8f80004 	swi	r7, r24, 4
    53e0:	10b30000 	addk	r5, r19, r0
    53e4:	b9f4368c 	brlid	r15, 13964	// 8a70 <_Balloc>
    53e8:	e8d80004 	lwi	r6, r24, 4
    53ec:	e8930024 	lwi	r4, r19, 36
    53f0:	f8780000 	swi	r3, r24, 0
    53f4:	e8840000 	lwi	r4, r4, 0
    53f8:	be1904b4 	beqid	r25, 1204		// 58ac
    53fc:	f8810030 	swi	r4, r1, 48
    5400:	e8c10024 	lwi	r6, r1, 36
    5404:	fac10054 	swi	r22, r1, 84
    5408:	fae10058 	swi	r23, r1, 88
    540c:	be660db4 	bleid	r6, 3508		// 61c0
    5410:	a466000f 	andi	r3, r6, 15
    5414:	10631800 	addk	r3, r3, r3
    5418:	10631800 	addk	r3, r3, r3
    541c:	10631800 	addk	r3, r3, r3
    5420:	12e03000 	addk	r23, r0, r6
    5424:	92e60001 	sra	r23, r6
    5428:	92f70001 	sra	r23, r23
    542c:	92f70001 	sra	r23, r23
    5430:	92f70001 	sra	r23, r23
    5434:	a4970010 	andi	r4, r23, 16
    5438:	b0000001 	imm	1
    543c:	eb032ce4 	lwi	r24, r3, 11492
    5440:	b0000001 	imm	1
    5444:	eb232ce8 	lwi	r25, r3, 11496
    5448:	bc040bac 	beqi	r4, 2988		// 5ff4
    544c:	b0000001 	imm	1
    5450:	e8e02cdc 	lwi	r7, r0, 11484
    5454:	b0000001 	imm	1
    5458:	e9002ce0 	lwi	r8, r0, 11488
    545c:	e8a10054 	lwi	r5, r1, 84
    5460:	e8c10058 	lwi	r6, r1, 88
    5464:	a6f7000f 	andi	r23, r23, 15
    5468:	b0000000 	imm	0
    546c:	b9f4b898 	brlid	r15, -18280	// 10d04 <__divdf3>
    5470:	32c00003 	addik	r22, r0, 3
    5474:	f8610038 	swi	r3, r1, 56
    5478:	f881003c 	swi	r4, r1, 60
    547c:	bc170048 	beqi	r23, 72		// 54c4
    5480:	13400000 	addk	r26, r0, r0
    5484:	a4770001 	andi	r3, r23, 1
    5488:	be030034 	beqid	r3, 52		// 54bc
    548c:	92f70001 	sra	r23, r23
    5490:	10b80000 	addk	r5, r24, r0
    5494:	10d90000 	addk	r6, r25, r0
    5498:	b0000001 	imm	1
    549c:	e8fa2cbc 	lwi	r7, r26, 11452
    54a0:	b0000001 	imm	1
    54a4:	e91a2cc0 	lwi	r8, r26, 11456
    54a8:	b0000000 	imm	0
    54ac:	b9f4b184 	brlid	r15, -20092	// 10630 <__muldf3>
    54b0:	32d60001 	addik	r22, r22, 1
    54b4:	13030000 	addk	r24, r3, r0
    54b8:	13240000 	addk	r25, r4, r0
    54bc:	be37ffc8 	bneid	r23, -56		// 5484
    54c0:	335a0008 	addik	r26, r26, 8
    54c4:	e8a10038 	lwi	r5, r1, 56
    54c8:	e8c1003c 	lwi	r6, r1, 60
    54cc:	10f80000 	addk	r7, r24, r0
    54d0:	b0000000 	imm	0
    54d4:	b9f4b830 	brlid	r15, -18384	// 10d04 <__divdf3>
    54d8:	11190000 	addk	r8, r25, r0
    54dc:	f8610038 	swi	r3, r1, 56
    54e0:	f881003c 	swi	r4, r1, 60
    54e4:	e8a10040 	lwi	r5, r1, 64
    54e8:	bc05002c 	beqi	r5, 44		// 5514
    54ec:	b0003ff0 	imm	16368
    54f0:	30e00000 	addik	r7, r0, 0
    54f4:	31000000 	addik	r8, r0, 0
    54f8:	e8a10038 	lwi	r5, r1, 56
    54fc:	e8c1003c 	lwi	r6, r1, 60
    5500:	b0000000 	imm	0
    5504:	b9f4bd38 	brlid	r15, -17096	// 1123c <__ltdf2>
    5508:	80000000 	or	r0, r0, r0
    550c:	be4312e4 	bltid	r3, 4836		// 67f0
    5510:	e8c1002c 	lwi	r6, r1, 44
    5514:	b0000000 	imm	0
    5518:	b9f4bd98 	brlid	r15, -17000	// 112b0 <__floatsidf>
    551c:	10b60000 	addk	r5, r22, r0
    5520:	10a40000 	addk	r5, r4, r0
    5524:	e8e10038 	lwi	r7, r1, 56
    5528:	e901003c 	lwi	r8, r1, 60
    552c:	10c50000 	addk	r6, r5, r0
    5530:	b0000000 	imm	0
    5534:	b9f4b0fc 	brlid	r15, -20228	// 10630 <__muldf3>
    5538:	10a30000 	addk	r5, r3, r0
    553c:	10a40000 	addk	r5, r4, r0
    5540:	b000401c 	imm	16412
    5544:	30e00000 	addik	r7, r0, 0
    5548:	31000000 	addik	r8, r0, 0
    554c:	10c50000 	addk	r6, r5, r0
    5550:	b0000000 	imm	0
    5554:	b9f4b008 	brlid	r15, -20472	// 1055c <__adddf3>
    5558:	10a30000 	addk	r5, r3, r0
    555c:	13430000 	addk	r26, r3, r0
    5560:	e8a1002c 	lwi	r5, r1, 44
    5564:	b000fcc0 	imm	-832
    5568:	335a0000 	addik	r26, r26, 0
    556c:	be050b18 	beqid	r5, 2840		// 6084
    5570:	13640000 	addk	r27, r4, r0
    5574:	e8c10024 	lwi	r6, r1, 36
    5578:	eb21002c 	lwi	r25, r1, 44
    557c:	f8c10068 	swi	r6, r1, 104
    5580:	e8610048 	lwi	r3, r1, 72
    5584:	be030d00 	beqid	r3, 3328		// 6284
    5588:	3079ffff 	addik	r3, r25, -1
    558c:	b0000001 	imm	1
    5590:	30802ce4 	addik	r4, r0, 11492	// 12ce4 <__mprec_tens>
    5594:	10631800 	addk	r3, r3, r3
    5598:	10631800 	addk	r3, r3, r3
    559c:	10631800 	addk	r3, r3, r3
    55a0:	10641800 	addk	r3, r4, r3
    55a4:	b0003fe0 	imm	16352
    55a8:	30a00000 	addik	r5, r0, 0
    55ac:	30c00000 	addik	r6, r0, 0
    55b0:	e8e30000 	lwi	r7, r3, 0
    55b4:	e9030004 	lwi	r8, r3, 4
    55b8:	e8810030 	lwi	r4, r1, 48
    55bc:	12fb0000 	addk	r23, r27, r0
    55c0:	b0000000 	imm	0
    55c4:	b9f4b740 	brlid	r15, -18624	// 10d04 <__divdf3>
    55c8:	33640001 	addik	r27, r4, 1
    55cc:	10a40000 	addk	r5, r4, r0
    55d0:	11170000 	addk	r8, r23, r0
    55d4:	10fa0000 	addk	r7, r26, r0
    55d8:	10c50000 	addk	r6, r5, r0
    55dc:	10a30000 	addk	r5, r3, r0
    55e0:	b0000000 	imm	0
    55e4:	b9f4afdc 	brlid	r15, -20516	// 105c0 <__subdf3>
    55e8:	139b0000 	addk	r28, r27, r0
    55ec:	e8a10038 	lwi	r5, r1, 56
    55f0:	e8c1003c 	lwi	r6, r1, 60
    55f4:	f8610060 	swi	r3, r1, 96
    55f8:	f8810064 	swi	r4, r1, 100
    55fc:	b0000000 	imm	0
    5600:	b9f4be68 	brlid	r15, -16792	// 11468 <__fixdfsi>
    5604:	80000000 	or	r0, r0, r0
    5608:	10a30000 	addk	r5, r3, r0
    560c:	b0000000 	imm	0
    5610:	b9f4bca0 	brlid	r15, -17248	// 112b0 <__floatsidf>
    5614:	13030000 	addk	r24, r3, r0
    5618:	11030000 	addk	r8, r3, r0
    561c:	e8a10038 	lwi	r5, r1, 56
    5620:	e8c1003c 	lwi	r6, r1, 60
    5624:	33180030 	addik	r24, r24, 48
    5628:	10e80000 	addk	r7, r8, r0
    562c:	11040000 	addk	r8, r4, r0
    5630:	b0000000 	imm	0
    5634:	b9f4af8c 	brlid	r15, -20596	// 105c0 <__subdf3>
    5638:	93180060 	sext8	r24, r24
    563c:	e8a10030 	lwi	r5, r1, 48
    5640:	12c30000 	addk	r22, r3, r0
    5644:	11040000 	addk	r8, r4, r0
    5648:	f3050000 	sbi	r24, r5, 0
    564c:	10f60000 	addk	r7, r22, r0
    5650:	e8a10060 	lwi	r5, r1, 96
    5654:	e8c10064 	lwi	r6, r1, 100
    5658:	b0000000 	imm	0
    565c:	b9f4bae8 	brlid	r15, -17688	// 11144 <__gtdf2>
    5660:	12e40000 	addk	r23, r4, r0
    5664:	be8312ac 	bgtid	r3, 4780		// 6910
    5668:	10f60000 	addk	r7, r22, r0
    566c:	b0003ff0 	imm	16368
    5670:	30a00000 	addik	r5, r0, 0
    5674:	30c00000 	addik	r6, r0, 0
    5678:	b0000000 	imm	0
    567c:	b9f4af44 	brlid	r15, -20668	// 105c0 <__subdf3>
    5680:	11170000 	addk	r8, r23, r0
    5684:	11030000 	addk	r8, r3, r0
    5688:	e8a10060 	lwi	r5, r1, 96
    568c:	e8c10064 	lwi	r6, r1, 100
    5690:	10e80000 	addk	r7, r8, r0
    5694:	b0000000 	imm	0
    5698:	b9f4baac 	brlid	r15, -17748	// 11144 <__gtdf2>
    569c:	11040000 	addk	r8, r4, r0
    56a0:	be83048c 	bgtid	r3, 1164		// 5b2c
    56a4:	107b0000 	addk	r3, r27, r0
    56a8:	30600001 	addik	r3, r0, 1
    56ac:	14791801 	cmp	r3, r25, r3
    56b0:	bea30b00 	bgeid	r3, 2816		// 61b0
    56b4:	e8c10030 	lwi	r6, r1, 48
    56b8:	fbe10038 	swi	r31, r1, 56
    56bc:	13fb0000 	addk	r31, r27, r0
    56c0:	eb410060 	lwi	r26, r1, 96
    56c4:	eb610064 	lwi	r27, r1, 100
    56c8:	b810003c 	brid	60		// 5704
    56cc:	1326c800 	addk	r25, r6, r25
    56d0:	b0000000 	imm	0
    56d4:	b9f4aeec 	brlid	r15, -20756	// 105c0 <__subdf3>
    56d8:	80000000 	or	r0, r0, r0
    56dc:	10a40000 	addk	r5, r4, r0
    56e0:	10fa0000 	addk	r7, r26, r0
    56e4:	111b0000 	addk	r8, r27, r0
    56e8:	10c50000 	addk	r6, r5, r0
    56ec:	b0000000 	imm	0
    56f0:	b9f4bb4c 	brlid	r15, -17588	// 1123c <__ltdf2>
    56f4:	10a30000 	addk	r5, r3, r0
    56f8:	be431254 	bltid	r3, 4692		// 694c
    56fc:	889fc800 	xor	r4, r31, r25
    5700:	bc040aac 	beqi	r4, 2732		// 61ac
    5704:	10ba0000 	addk	r5, r26, r0
    5708:	b0004024 	imm	16420
    570c:	30e00000 	addik	r7, r0, 0
    5710:	31000000 	addik	r8, r0, 0
    5714:	b0000000 	imm	0
    5718:	b9f4af18 	brlid	r15, -20712	// 10630 <__muldf3>
    571c:	10db0000 	addk	r6, r27, r0
    5720:	b0004024 	imm	16420
    5724:	30e00000 	addik	r7, r0, 0
    5728:	31000000 	addik	r8, r0, 0
    572c:	10b60000 	addk	r5, r22, r0
    5730:	10d70000 	addk	r6, r23, r0
    5734:	13430000 	addk	r26, r3, r0
    5738:	b0000000 	imm	0
    573c:	b9f4aef4 	brlid	r15, -20748	// 10630 <__muldf3>
    5740:	13640000 	addk	r27, r4, r0
    5744:	12c30000 	addk	r22, r3, r0
    5748:	10c40000 	addk	r6, r4, r0
    574c:	12e40000 	addk	r23, r4, r0
    5750:	b0000000 	imm	0
    5754:	b9f4bd14 	brlid	r15, -17132	// 11468 <__fixdfsi>
    5758:	10b60000 	addk	r5, r22, r0
    575c:	10a30000 	addk	r5, r3, r0
    5760:	b0000000 	imm	0
    5764:	b9f4bb4c 	brlid	r15, -17588	// 112b0 <__floatsidf>
    5768:	13030000 	addk	r24, r3, r0
    576c:	11030000 	addk	r8, r3, r0
    5770:	10b60000 	addk	r5, r22, r0
    5774:	10d70000 	addk	r6, r23, r0
    5778:	10e80000 	addk	r7, r8, r0
    577c:	11040000 	addk	r8, r4, r0
    5780:	33180030 	addik	r24, r24, 48
    5784:	b0000000 	imm	0
    5788:	b9f4ae38 	brlid	r15, -20936	// 105c0 <__subdf3>
    578c:	93180060 	sext8	r24, r24
    5790:	12c30000 	addk	r22, r3, r0
    5794:	10c40000 	addk	r6, r4, r0
    5798:	10fa0000 	addk	r7, r26, r0
    579c:	10b60000 	addk	r5, r22, r0
    57a0:	111b0000 	addk	r8, r27, r0
    57a4:	12e40000 	addk	r23, r4, r0
    57a8:	b0000000 	imm	0
    57ac:	b9f4ba90 	brlid	r15, -17776	// 1123c <__ltdf2>
    57b0:	f31f0000 	sbi	r24, r31, 0
    57b4:	33ff0001 	addik	r31, r31, 1
    57b8:	b0003ff0 	imm	16368
    57bc:	30a00000 	addik	r5, r0, 0
    57c0:	30c00000 	addik	r6, r0, 0
    57c4:	10f60000 	addk	r7, r22, r0
    57c8:	bea3ff08 	bgeid	r3, -248		// 56d0
    57cc:	11170000 	addk	r8, r23, r0
    57d0:	e8610068 	lwi	r3, r1, 104
    57d4:	137f0000 	addk	r27, r31, r0
    57d8:	b810065c 	brid	1628		// 5e34
    57dc:	f8610024 	swi	r3, r1, 36
    57e0:	eb610020 	lwi	r27, r1, 32
    57e4:	eb41001c 	lwi	r26, r1, 28
    57e8:	3060fbef 	addik	r3, r0, -1041
    57ec:	135bd000 	addk	r26, r27, r26
    57f0:	1463d001 	cmp	r3, r3, r26
    57f4:	be4307c8 	bltid	r3, 1992		// 5fbc
    57f8:	3080fc0e 	addik	r4, r0, -1010
    57fc:	147a2000 	rsubk	r3, r26, r4
    5800:	309a0412 	addik	r4, r26, 1042
    5804:	a643001f 	andi	r18, r3, 31
    5808:	10a0e000 	addk	r5, r0, r28
    580c:	be120014 	beqid	r18, 20		// 5820
    5810:	10a50000 	addk	r5, r5, r0
    5814:	3252ffff 	addik	r18, r18, -1
    5818:	be32fffc 	bneid	r18, -4		// 5814
    581c:	10a52800 	addk	r5, r5, r5
    5820:	a644001f 	andi	r18, r4, 31
    5824:	1060b800 	addk	r3, r0, r23
    5828:	be120014 	beqid	r18, 20		// 583c
    582c:	10630000 	addk	r3, r3, r0
    5830:	3252ffff 	addik	r18, r18, -1
    5834:	be32fffc 	bneid	r18, -4		// 5830
    5838:	90630041 	srl	r3, r3
    583c:	80a51800 	or	r5, r5, r3
    5840:	30c00001 	addik	r6, r0, 1
    5844:	b0000000 	imm	0
    5848:	b9f4bd4c 	brlid	r15, -17076	// 11594 <__floatunsidf>
    584c:	f8c1005c 	swi	r6, r1, 92
    5850:	13030000 	addk	r24, r3, r0
    5854:	335affff 	addik	r26, r26, -1
    5858:	b000fe10 	imm	-496
    585c:	33180000 	addik	r24, r24, 0
    5860:	b810f8ec 	brid	-1812		// 514c
    5864:	13240000 	addk	r25, r4, r0
    5868:	13c00000 	addk	r30, r0, r0
    586c:	eb130024 	lwi	r24, r19, 36
    5870:	10b30000 	addk	r5, r19, r0
    5874:	10c00000 	addk	r6, r0, r0
    5878:	b9f431f8 	brlid	r15, 12792	// 8a70 <_Balloc>
    587c:	f8d80004 	swi	r6, r24, 4
    5880:	e8930024 	lwi	r4, r19, 36
    5884:	f8780000 	swi	r3, r24, 0
    5888:	30a0ffff 	addik	r5, r0, -1
    588c:	e8840000 	lwi	r4, r4, 0
    5890:	30c00001 	addik	r6, r0, 1
    5894:	10600000 	addk	r3, r0, r0
    5898:	f8a1002c 	swi	r5, r1, 44
    589c:	f8810030 	swi	r4, r1, 48
    58a0:	f8c10048 	swi	r6, r1, 72
    58a4:	f86100b8 	swi	r3, r1, 184
    58a8:	f8a10050 	swi	r5, r1, 80
    58ac:	e861001c 	lwi	r3, r1, 28
    58b0:	be4302b4 	bltid	r3, 692		// 5b64
    58b4:	e8a10024 	lwi	r5, r1, 36
    58b8:	3080000e 	addik	r4, r0, 14
    58bc:	14852001 	cmp	r4, r5, r4
    58c0:	be4402a8 	bltid	r4, 680		// 5b68
    58c4:	e8c10048 	lwi	r6, r1, 72
    58c8:	10652800 	addk	r3, r5, r5
    58cc:	e8c1002c 	lwi	r6, r1, 44
    58d0:	10631800 	addk	r3, r3, r3
    58d4:	10631800 	addk	r3, r3, r3
    58d8:	b0000001 	imm	1
    58dc:	eb032ce4 	lwi	r24, r3, 11492
    58e0:	b0000001 	imm	1
    58e4:	eb232ce8 	lwi	r25, r3, 11496
    58e8:	be860018 	bgtid	r6, 24		// 5900
    58ec:	10f80000 	addk	r7, r24, r0
    58f0:	e86100b8 	lwi	r3, r1, 184
    58f4:	be430b9c 	bltid	r3, 2972		// 6490
    58f8:	e861002c 	lwi	r3, r1, 44
    58fc:	10f80000 	addk	r7, r24, r0
    5900:	11190000 	addk	r8, r25, r0
    5904:	10b60000 	addk	r5, r22, r0
    5908:	b0000000 	imm	0
    590c:	b9f4b3f8 	brlid	r15, -19464	// 10d04 <__divdf3>
    5910:	10d70000 	addk	r6, r23, r0
    5914:	10a40000 	addk	r5, r4, r0
    5918:	10c50000 	addk	r6, r5, r0
    591c:	b0000000 	imm	0
    5920:	b9f4bb48 	brlid	r15, -17592	// 11468 <__fixdfsi>
    5924:	10a30000 	addk	r5, r3, r0
    5928:	10a30000 	addk	r5, r3, r0
    592c:	e8810030 	lwi	r4, r1, 48
    5930:	13430000 	addk	r26, r3, r0
    5934:	b0000000 	imm	0
    5938:	b9f4b978 	brlid	r15, -18056	// 112b0 <__floatsidf>
    593c:	33840001 	addik	r28, r4, 1
    5940:	10a40000 	addk	r5, r4, r0
    5944:	10f80000 	addk	r7, r24, r0
    5948:	11190000 	addk	r8, r25, r0
    594c:	10c50000 	addk	r6, r5, r0
    5950:	10a30000 	addk	r5, r3, r0
    5954:	b0000000 	imm	0
    5958:	b9f4acd8 	brlid	r15, -21288	// 10630 <__muldf3>
    595c:	137c0000 	addk	r27, r28, r0
    5960:	11030000 	addk	r8, r3, r0
    5964:	10b60000 	addk	r5, r22, r0
    5968:	10d70000 	addk	r6, r23, r0
    596c:	10e80000 	addk	r7, r8, r0
    5970:	b0000000 	imm	0
    5974:	b9f4ac4c 	brlid	r15, -21428	// 105c0 <__subdf3>
    5978:	11040000 	addk	r8, r4, r0
    597c:	e8c10030 	lwi	r6, r1, 48
    5980:	10a40000 	addk	r5, r4, r0
    5984:	10830000 	addk	r4, r3, r0
    5988:	307a0030 	addik	r3, r26, 48
    598c:	f0660000 	sbi	r3, r6, 0
    5990:	e8c1002c 	lwi	r6, r1, 44
    5994:	11440000 	addk	r10, r4, r0
    5998:	a8660001 	xori	r3, r6, 1
    599c:	be03012c 	beqid	r3, 300		// 5ac8
    59a0:	11650000 	addk	r11, r5, r0
    59a4:	10c50000 	addk	r6, r5, r0
    59a8:	b0004024 	imm	16420
    59ac:	30e00000 	addik	r7, r0, 0
    59b0:	31000000 	addik	r8, r0, 0
    59b4:	b0000000 	imm	0
    59b8:	b9f4ac78 	brlid	r15, -21384	// 10630 <__muldf3>
    59bc:	10a40000 	addk	r5, r4, r0
    59c0:	12c30000 	addk	r22, r3, r0
    59c4:	10c40000 	addk	r6, r4, r0
    59c8:	12e40000 	addk	r23, r4, r0
    59cc:	10e00000 	addk	r7, r0, r0
    59d0:	11000000 	addk	r8, r0, r0
    59d4:	b0000000 	imm	0
    59d8:	b9f4b684 	brlid	r15, -18812	// 1105c <__eqdf2>
    59dc:	10b60000 	addk	r5, r22, r0
    59e0:	be030454 	beqid	r3, 1108		// 5e34
    59e4:	ebc1002c 	lwi	r30, r1, 44
    59e8:	b8100038 	brid	56		// 5a20
    59ec:	ebe10030 	lwi	r31, r1, 48
    59f0:	b0000000 	imm	0
    59f4:	b9f4ac3c 	brlid	r15, -21444	// 10630 <__muldf3>
    59f8:	80000000 	or	r0, r0, r0
    59fc:	12c30000 	addk	r22, r3, r0
    5a00:	10c40000 	addk	r6, r4, r0
    5a04:	12e40000 	addk	r23, r4, r0
    5a08:	10e00000 	addk	r7, r0, r0
    5a0c:	11000000 	addk	r8, r0, r0
    5a10:	b0000000 	imm	0
    5a14:	b9f4b648 	brlid	r15, -18872	// 1105c <__eqdf2>
    5a18:	10b60000 	addk	r5, r22, r0
    5a1c:	bc030418 	beqi	r3, 1048		// 5e34
    5a20:	10f80000 	addk	r7, r24, r0
    5a24:	11190000 	addk	r8, r25, r0
    5a28:	10b60000 	addk	r5, r22, r0
    5a2c:	b0000000 	imm	0
    5a30:	b9f4b2d4 	brlid	r15, -19756	// 10d04 <__divdf3>
    5a34:	10d70000 	addk	r6, r23, r0
    5a38:	10a40000 	addk	r5, r4, r0
    5a3c:	10c50000 	addk	r6, r5, r0
    5a40:	b0000000 	imm	0
    5a44:	b9f4ba24 	brlid	r15, -17884	// 11468 <__fixdfsi>
    5a48:	10a30000 	addk	r5, r3, r0
    5a4c:	10a30000 	addk	r5, r3, r0
    5a50:	b0000000 	imm	0
    5a54:	b9f4b85c 	brlid	r15, -18340	// 112b0 <__floatsidf>
    5a58:	13430000 	addk	r26, r3, r0
    5a5c:	10a40000 	addk	r5, r4, r0
    5a60:	10f80000 	addk	r7, r24, r0
    5a64:	11190000 	addk	r8, r25, r0
    5a68:	10c50000 	addk	r6, r5, r0
    5a6c:	b0000000 	imm	0
    5a70:	b9f4abc0 	brlid	r15, -21568	// 10630 <__muldf3>
    5a74:	10a30000 	addk	r5, r3, r0
    5a78:	11030000 	addk	r8, r3, r0
    5a7c:	10b60000 	addk	r5, r22, r0
    5a80:	10d70000 	addk	r6, r23, r0
    5a84:	10e80000 	addk	r7, r8, r0
    5a88:	b0000000 	imm	0
    5a8c:	b9f4ab34 	brlid	r15, -21708	// 105c0 <__subdf3>
    5a90:	11040000 	addk	r8, r4, r0
    5a94:	11430000 	addk	r10, r3, r0
    5a98:	307a0030 	addik	r3, r26, 48
    5a9c:	f07b0000 	sbi	r3, r27, 0
    5aa0:	337b0001 	addik	r27, r27, 1
    5aa4:	147fd800 	rsubk	r3, r31, r27
    5aa8:	887e1800 	xor	r3, r30, r3
    5aac:	11640000 	addk	r11, r4, r0
    5ab0:	b0004024 	imm	16420
    5ab4:	30e00000 	addik	r7, r0, 0
    5ab8:	31000000 	addik	r8, r0, 0
    5abc:	10aa0000 	addk	r5, r10, r0
    5ac0:	be23ff30 	bneid	r3, -208		// 59f0
    5ac4:	10c40000 	addk	r6, r4, r0
    5ac8:	10aa0000 	addk	r5, r10, r0
    5acc:	10cb0000 	addk	r6, r11, r0
    5ad0:	10ea0000 	addk	r7, r10, r0
    5ad4:	b0000000 	imm	0
    5ad8:	b9f4aa84 	brlid	r15, -21884	// 1055c <__adddf3>
    5adc:	110b0000 	addk	r8, r11, r0
    5ae0:	12c30000 	addk	r22, r3, r0
    5ae4:	10b80000 	addk	r5, r24, r0
    5ae8:	10d90000 	addk	r6, r25, r0
    5aec:	10f60000 	addk	r7, r22, r0
    5af0:	11040000 	addk	r8, r4, r0
    5af4:	b0000000 	imm	0
    5af8:	b9f4b744 	brlid	r15, -18620	// 1123c <__ltdf2>
    5afc:	12e40000 	addk	r23, r4, r0
    5b00:	bea30ee4 	bgeid	r3, 3812		// 69e4
    5b04:	10b80000 	addk	r5, r24, r0
    5b08:	e31bffff 	lbui	r24, r27, -1
    5b0c:	e8810024 	lwi	r4, r1, 36
    5b10:	93180060 	sext8	r24, r24
    5b14:	f8810068 	swi	r4, r1, 104
    5b18:	b8100014 	brid	20		// 5b2c
    5b1c:	107b0000 	addk	r3, r27, r0
    5b20:	e303fffe 	lbui	r24, r3, -2
    5b24:	10640000 	addk	r3, r4, r0
    5b28:	93180060 	sext8	r24, r24
    5b2c:	a8b80039 	xori	r5, r24, 57
    5b30:	13630000 	addk	r27, r3, r0
    5b34:	88dc1800 	xor	r6, r28, r3
    5b38:	be250e1c 	bneid	r5, 3612		// 6954
    5b3c:	3083ffff 	addik	r4, r3, -1
    5b40:	be26ffe0 	bneid	r6, -32		// 5b20
    5b44:	e8c10068 	lwi	r6, r1, 104
    5b48:	30600030 	addik	r3, r0, 48
    5b4c:	f0640000 	sbi	r3, r4, 0
    5b50:	30c60001 	addik	r6, r6, 1
    5b54:	30600031 	addik	r3, r0, 49
    5b58:	f8c10024 	swi	r6, r1, 36
    5b5c:	b81002d8 	brid	728		// 5e34
    5b60:	f0640000 	sbi	r3, r4, 0
    5b64:	e8c10048 	lwi	r6, r1, 72
    5b68:	be060480 	beqid	r6, 1152		// 5fe8
    5b6c:	eb010044 	lwi	r24, r1, 68
    5b70:	30800001 	addik	r4, r0, 1
    5b74:	149e2001 	cmp	r4, r30, r4
    5b78:	bea40da4 	bgeid	r4, 3492		// 691c
    5b7c:	e8c1002c 	lwi	r6, r1, 44
    5b80:	e8810044 	lwi	r4, r1, 68
    5b84:	3306ffff 	addik	r24, r6, -1
    5b88:	14782001 	cmp	r3, r24, r4
    5b8c:	be430c48 	bltid	r3, 3144		// 67d4
    5b90:	e8a10044 	lwi	r5, r1, 68
    5b94:	17182000 	rsubk	r24, r24, r4
    5b98:	e861002c 	lwi	r3, r1, 44
    5b9c:	be430da4 	bltid	r3, 3492		// 6940
    5ba0:	e8810034 	lwi	r4, r1, 52
    5ba4:	eb210034 	lwi	r25, r1, 52
    5ba8:	e8810034 	lwi	r4, r1, 52
    5bac:	10b30000 	addk	r5, r19, r0
    5bb0:	30c00001 	addik	r6, r0, 1
    5bb4:	10841800 	addk	r4, r4, r3
    5bb8:	f8810034 	swi	r4, r1, 52
    5bbc:	b9f435d8 	brlid	r15, 13784	// 9194 <__i2b>
    5bc0:	13ff1800 	addk	r31, r31, r3
    5bc4:	13830000 	addk	r28, r3, r0
    5bc8:	be7f0030 	bleid	r31, 48		// 5bf8
    5bcc:	e8c10044 	lwi	r6, r1, 68
    5bd0:	be790028 	bleid	r25, 40		// 5bf8
    5bd4:	149fc801 	cmp	r4, r31, r25
    5bd8:	be440d60 	bltid	r4, 3424		// 6938
    5bdc:	107f0000 	addk	r3, r31, r0
    5be0:	e8a10034 	lwi	r5, r1, 52
    5be4:	1723c800 	rsubk	r25, r3, r25
    5be8:	17e3f800 	rsubk	r31, r3, r31
    5bec:	14a32800 	rsubk	r5, r3, r5
    5bf0:	f8a10034 	swi	r5, r1, 52
    5bf4:	e8c10044 	lwi	r6, r1, 68
    5bf8:	be660058 	bleid	r6, 88		// 5c50
    5bfc:	e8610048 	lwi	r3, r1, 72
    5c00:	be030bc0 	beqid	r3, 3008		// 67c0
    5c04:	10dd0000 	addk	r6, r29, r0
    5c08:	be780038 	bleid	r24, 56		// 5c40
    5c0c:	10dc0000 	addk	r6, r28, r0
    5c10:	10b30000 	addk	r5, r19, r0
    5c14:	b9f43b44 	brlid	r15, 15172	// 9758 <__pow5mult>
    5c18:	10f80000 	addk	r7, r24, r0
    5c1c:	10b30000 	addk	r5, r19, r0
    5c20:	10c30000 	addk	r6, r3, r0
    5c24:	10fd0000 	addk	r7, r29, r0
    5c28:	b9f435a0 	brlid	r15, 13728	// 91c8 <__multiply>
    5c2c:	13830000 	addk	r28, r3, r0
    5c30:	10dd0000 	addk	r6, r29, r0
    5c34:	10b30000 	addk	r5, r19, r0
    5c38:	b9f42f2c 	brlid	r15, 12076	// 8b64 <_Bfree>
    5c3c:	13a30000 	addk	r29, r3, r0
    5c40:	e8810044 	lwi	r4, r1, 68
    5c44:	14f82000 	rsubk	r7, r24, r4
    5c48:	be270c5c 	bneid	r7, 3164		// 68a4
    5c4c:	10dd0000 	addk	r6, r29, r0
    5c50:	10b30000 	addk	r5, r19, r0
    5c54:	b9f43540 	brlid	r15, 13632	// 9194 <__i2b>
    5c58:	30c00001 	addik	r6, r0, 1
    5c5c:	e8a1004c 	lwi	r5, r1, 76
    5c60:	be65001c 	bleid	r5, 28		// 5c7c
    5c64:	13030000 	addk	r24, r3, r0
    5c68:	10b30000 	addk	r5, r19, r0
    5c6c:	10c30000 	addk	r6, r3, r0
    5c70:	b9f43ae8 	brlid	r15, 15080	// 9758 <__pow5mult>
    5c74:	e8e1004c 	lwi	r7, r1, 76
    5c78:	13030000 	addk	r24, r3, r0
    5c7c:	30600001 	addik	r3, r0, 1
    5c80:	149e1801 	cmp	r4, r30, r3
    5c84:	bea4085c 	bgeid	r4, 2140		// 64e0
    5c88:	13600000 	addk	r27, r0, r0
    5c8c:	e881004c 	lwi	r4, r1, 76
    5c90:	be2407dc 	bneid	r4, 2012		// 646c
    5c94:	30600001 	addik	r3, r0, 1
    5c98:	1063f800 	addk	r3, r3, r31
    5c9c:	a463001f 	andi	r3, r3, 31
    5ca0:	be03046c 	beqid	r3, 1132		// 610c
    5ca4:	30c00020 	addik	r6, r0, 32
    5ca8:	14833000 	rsubk	r4, r3, r6
    5cac:	30a00004 	addik	r5, r0, 4	// 4 <_.xy>
    5cb0:	14a42801 	cmp	r5, r4, r5
    5cb4:	bea50de0 	bgeid	r5, 3552		// 6a94
    5cb8:	e8a10034 	lwi	r5, r1, 52
    5cbc:	3080001c 	addik	r4, r0, 28	// 1c <_.d4>
    5cc0:	14632000 	rsubk	r3, r3, r4
    5cc4:	10a51800 	addk	r5, r5, r3
    5cc8:	f8a10034 	swi	r5, r1, 52
    5ccc:	13391800 	addk	r25, r25, r3
    5cd0:	13ff1800 	addk	r31, r31, r3
    5cd4:	e8a10034 	lwi	r5, r1, 52
    5cd8:	be650018 	bleid	r5, 24		// 5cf0
    5cdc:	10dd0000 	addk	r6, r29, r0
    5ce0:	10b30000 	addk	r5, r19, r0
    5ce4:	b9f43bb4 	brlid	r15, 15284	// 9898 <__lshift>
    5ce8:	e8e10034 	lwi	r7, r1, 52
    5cec:	13a30000 	addk	r29, r3, r0
    5cf0:	be7f0018 	bleid	r31, 24		// 5d08
    5cf4:	10d80000 	addk	r6, r24, r0
    5cf8:	10b30000 	addk	r5, r19, r0
    5cfc:	b9f43b9c 	brlid	r15, 15260	// 9898 <__lshift>
    5d00:	10ff0000 	addk	r7, r31, r0
    5d04:	13030000 	addk	r24, r3, r0
    5d08:	e8c10040 	lwi	r6, r1, 64
    5d0c:	be260700 	bneid	r6, 1792		// 640c
    5d10:	10bd0000 	addk	r5, r29, r0
    5d14:	30600002 	addik	r3, r0, 2
    5d18:	147e1801 	cmp	r3, r30, r3
    5d1c:	be43040c 	bltid	r3, 1036		// 6128
    5d20:	e861002c 	lwi	r3, r1, 44
    5d24:	e8610048 	lwi	r3, r1, 72
    5d28:	bc23082c 	bnei	r3, 2092		// 6554
    5d2c:	12c00000 	addk	r22, r0, r0
    5d30:	eae1002c 	lwi	r23, r1, 44
    5d34:	b8100014 	brid	20		// 5d48
    5d38:	eb210030 	lwi	r25, r1, 48
    5d3c:	b9f42ea8 	brlid	r15, 11944	// 8be4 <__multadd>
    5d40:	80000000 	or	r0, r0, r0
    5d44:	13a30000 	addk	r29, r3, r0
    5d48:	10bd0000 	addk	r5, r29, r0
    5d4c:	b9f4ec30 	brlid	r15, -5072	// 497c <quorem>
    5d50:	10d80000 	addk	r6, r24, r0
    5d54:	30630030 	addik	r3, r3, 48
    5d58:	d076c800 	sb	r3, r22, r25
    5d5c:	32d60001 	addik	r22, r22, 1
    5d60:	1497b001 	cmp	r4, r23, r22
    5d64:	10b30000 	addk	r5, r19, r0
    5d68:	10dd0000 	addk	r6, r29, r0
    5d6c:	30e0000a 	addik	r7, r0, 10
    5d70:	be44ffcc 	bltid	r4, -52		// 5d3c
    5d74:	11000000 	addk	r8, r0, r0
    5d78:	12e30000 	addk	r23, r3, r0
    5d7c:	e861002c 	lwi	r3, r1, 44
    5d80:	bc630ce8 	blei	r3, 3304		// 6a68
    5d84:	e8a10030 	lwi	r5, r1, 48
    5d88:	12c00000 	addk	r22, r0, r0
    5d8c:	13651800 	addk	r27, r5, r3
    5d90:	10dd0000 	addk	r6, r29, r0
    5d94:	10b30000 	addk	r5, r19, r0
    5d98:	b9f43b00 	brlid	r15, 15104	// 9898 <__lshift>
    5d9c:	30e00001 	addik	r7, r0, 1
    5da0:	10a30000 	addk	r5, r3, r0
    5da4:	10d80000 	addk	r6, r24, r0
    5da8:	b9f43ca0 	brlid	r15, 15520	// 9a48 <__mcmp>
    5dac:	13a30000 	addk	r29, r3, r0
    5db0:	bc630bbc 	blei	r3, 3004		// 696c
    5db4:	e09bffff 	lbui	r4, r27, -1
    5db8:	90840060 	sext8	r4, r4
    5dbc:	e8a10030 	lwi	r5, r1, 48
    5dc0:	107b0000 	addk	r3, r27, r0
    5dc4:	b8100014 	brid	20		// 5dd8
    5dc8:	31050001 	addik	r8, r5, 1
    5dcc:	e083fffe 	lbui	r4, r3, -2
    5dd0:	10660000 	addk	r3, r6, r0
    5dd4:	90840060 	sext8	r4, r4
    5dd8:	a8a40039 	xori	r5, r4, 57
    5ddc:	13630000 	addk	r27, r3, r0
    5de0:	88e34000 	xor	r7, r3, r8
    5de4:	be250c38 	bneid	r5, 3128		// 6a1c
    5de8:	30c3ffff 	addik	r6, r3, -1
    5dec:	be27ffe0 	bneid	r7, -32		// 5dcc
    5df0:	30800031 	addik	r4, r0, 49
    5df4:	e8610024 	lwi	r3, r1, 36
    5df8:	30630001 	addik	r3, r3, 1
    5dfc:	f8610024 	swi	r3, r1, 36
    5e00:	f0860000 	sbi	r4, r6, 0
    5e04:	10b30000 	addk	r5, r19, r0
    5e08:	b9f42d5c 	brlid	r15, 11612	// 8b64 <_Bfree>
    5e0c:	10d80000 	addk	r6, r24, r0
    5e10:	be1c0024 	beqid	r28, 36		// 5e34
    5e14:	8876e000 	xor	r3, r22, r28
    5e18:	14830000 	rsubk	r4, r3, r0
    5e1c:	80641800 	or	r3, r4, r3
    5e20:	be430368 	bltid	r3, 872		// 6188
    5e24:	14760000 	rsubk	r3, r22, r0
    5e28:	10b30000 	addk	r5, r19, r0
    5e2c:	b9f42d38 	brlid	r15, 11576	// 8b64 <_Bfree>
    5e30:	10dc0000 	addk	r6, r28, r0
    5e34:	10b30000 	addk	r5, r19, r0
    5e38:	b9f42d2c 	brlid	r15, 11564	// 8b64 <_Bfree>
    5e3c:	10dd0000 	addk	r6, r29, r0
    5e40:	e8810024 	lwi	r4, r1, 36
    5e44:	e8a100bc 	lwi	r5, r1, 188
    5e48:	e8c100c4 	lwi	r6, r1, 196
    5e4c:	f01b0000 	sbi	r0, r27, 0
    5e50:	30640001 	addik	r3, r4, 1
    5e54:	be060350 	beqid	r6, 848		// 61a4
    5e58:	f8650000 	swi	r3, r5, 0
    5e5c:	fb660000 	swi	r27, r6, 0
    5e60:	b810f1a8 	brid	-3672		// 5008
    5e64:	e8610030 	lwi	r3, r1, 48
    5e68:	b9f41da0 	brlid	r15, 7584	// 7c08 <malloc>
    5e6c:	30a00010 	addik	r5, r0, 16	// 10 <_.d1>
    5e70:	f8730024 	swi	r3, r19, 36
    5e74:	fb030004 	swi	r24, r3, 4
    5e78:	fb030008 	swi	r24, r3, 8
    5e7c:	fb030000 	swi	r24, r3, 0
    5e80:	b810f124 	brid	-3804		// 4fa4
    5e84:	fb03000c 	swi	r24, r3, 12
    5e88:	e8810034 	lwi	r4, r1, 52
    5e8c:	e8a10024 	lwi	r5, r1, 36
    5e90:	f861004c 	swi	r3, r1, 76
    5e94:	14852000 	rsubk	r4, r5, r4
    5e98:	14c50000 	rsubk	r6, r5, r0
    5e9c:	f8810034 	swi	r4, r1, 52
    5ea0:	b810f42c 	brid	-3028		// 52cc
    5ea4:	f8c10044 	swi	r6, r1, 68
    5ea8:	17ff0000 	rsubk	r31, r31, r0
    5eac:	fbe10034 	swi	r31, r1, 52
    5eb0:	b810f404 	brid	-3068		// 52b4
    5eb4:	13e00000 	addk	r31, r0, r0
    5eb8:	b0000000 	imm	0
    5ebc:	b9f4b3f4 	brlid	r15, -19468	// 112b0 <__floatsidf>
    5ec0:	e8a10024 	lwi	r5, r1, 36
    5ec4:	10a40000 	addk	r5, r4, r0
    5ec8:	10f80000 	addk	r7, r24, r0
    5ecc:	11190000 	addk	r8, r25, r0
    5ed0:	10c50000 	addk	r6, r5, r0
    5ed4:	b0000000 	imm	0
    5ed8:	b9f4b1f8 	brlid	r15, -19976	// 110d0 <__nedf2>
    5edc:	10a30000 	addk	r5, r3, r0
    5ee0:	be03f360 	beqid	r3, -3232		// 5240
    5ee4:	e8810024 	lwi	r4, r1, 36
    5ee8:	e8610024 	lwi	r3, r1, 36
    5eec:	3063ffff 	addik	r3, r3, -1
    5ef0:	b810f34c 	brid	-3252		// 523c
    5ef4:	f8610024 	swi	r3, r1, 36
    5ef8:	b810f3a8 	brid	-3160		// 52a0
    5efc:	f8810040 	swi	r4, r1, 64
    5f00:	30800003 	addik	r4, r0, 3
    5f04:	149e2001 	cmp	r4, r30, r4
    5f08:	be440104 	bltid	r4, 260		// 600c
    5f0c:	a89e0002 	xori	r4, r30, 2
    5f10:	bc24f95c 	bnei	r4, -1700		// 586c
    5f14:	f8810048 	swi	r4, r1, 72
    5f18:	e8c100b8 	lwi	r6, r1, 184
    5f1c:	be6607f8 	bleid	r6, 2040		// 6714
    5f20:	3080000e 	addik	r4, r0, 14
    5f24:	14862003 	cmpu	r4, r6, r4
    5f28:	a884ffff 	xori	r4, r4, -1
    5f2c:	13202000 	addk	r25, r0, r4
    5f30:	93240041 	srl	r25, r4
    5f34:	93390041 	srl	r25, r25
    5f38:	93390041 	srl	r25, r25
    5f3c:	93390041 	srl	r25, r25
    5f40:	93390041 	srl	r25, r25
    5f44:	93390041 	srl	r25, r25
    5f48:	93390041 	srl	r25, r25
    5f4c:	93390041 	srl	r25, r25
    5f50:	93390041 	srl	r25, r25
    5f54:	93390041 	srl	r25, r25
    5f58:	93390041 	srl	r25, r25
    5f5c:	93390041 	srl	r25, r25
    5f60:	93390041 	srl	r25, r25
    5f64:	93390041 	srl	r25, r25
    5f68:	93390041 	srl	r25, r25
    5f6c:	93390041 	srl	r25, r25
    5f70:	93390041 	srl	r25, r25
    5f74:	93390041 	srl	r25, r25
    5f78:	93390041 	srl	r25, r25
    5f7c:	93390041 	srl	r25, r25
    5f80:	93390041 	srl	r25, r25
    5f84:	93390041 	srl	r25, r25
    5f88:	93390041 	srl	r25, r25
    5f8c:	93390041 	srl	r25, r25
    5f90:	93390041 	srl	r25, r25
    5f94:	93390041 	srl	r25, r25
    5f98:	93390041 	srl	r25, r25
    5f9c:	93390041 	srl	r25, r25
    5fa0:	93390041 	srl	r25, r25
    5fa4:	93390041 	srl	r25, r25
    5fa8:	93390041 	srl	r25, r25
    5fac:	f8c10050 	swi	r6, r1, 80
    5fb0:	8723c800 	and	r25, r3, r25
    5fb4:	b810f3f4 	brid	-3084		// 53a8
    5fb8:	f8c1002c 	swi	r6, r1, 44
    5fbc:	30a0fbee 	addik	r5, r0, -1042
    5fc0:	147a2800 	rsubk	r3, r26, r5
    5fc4:	a643001f 	andi	r18, r3, 31
    5fc8:	10a0b800 	addk	r5, r0, r23
    5fcc:	be120014 	beqid	r18, 20		// 5fe0
    5fd0:	10a50000 	addk	r5, r5, r0
    5fd4:	3252ffff 	addik	r18, r18, -1
    5fd8:	be32fffc 	bneid	r18, -4		// 5fd4
    5fdc:	10a52800 	addk	r5, r5, r5
    5fe0:	b810f864 	brid	-1948		// 5844
    5fe4:	30c00001 	addik	r6, r0, 1
    5fe8:	eb210034 	lwi	r25, r1, 52
    5fec:	b810fbdc 	brid	-1060		// 5bc8
    5ff0:	eb810048 	lwi	r28, r1, 72
    5ff4:	e8810054 	lwi	r4, r1, 84
    5ff8:	e8a10058 	lwi	r5, r1, 88
    5ffc:	f8810038 	swi	r4, r1, 56
    6000:	f8a1003c 	swi	r5, r1, 60
    6004:	b810f478 	brid	-2952		// 547c
    6008:	32c00002 	addik	r22, r0, 2
    600c:	a89e0004 	xori	r4, r30, 4
    6010:	be0406fc 	beqid	r4, 1788		// 670c
    6014:	30800001 	addik	r4, r0, 1
    6018:	a89e0005 	xori	r4, r30, 5
    601c:	be24f850 	bneid	r4, -1968		// 586c
    6020:	30a00001 	addik	r5, r0, 1
    6024:	b810f2d8 	brid	-3368		// 52fc
    6028:	f8a10048 	swi	r5, r1, 72
    602c:	b0000000 	imm	0
    6030:	b9f4b280 	brlid	r15, -19840	// 112b0 <__floatsidf>
    6034:	10b60000 	addk	r5, r22, r0
    6038:	10a40000 	addk	r5, r4, r0
    603c:	e8e10038 	lwi	r7, r1, 56
    6040:	e901003c 	lwi	r8, r1, 60
    6044:	10c50000 	addk	r6, r5, r0
    6048:	b0000000 	imm	0
    604c:	b9f4a5e4 	brlid	r15, -23068	// 10630 <__muldf3>
    6050:	10a30000 	addk	r5, r3, r0
    6054:	10a40000 	addk	r5, r4, r0
    6058:	b000401c 	imm	16412
    605c:	30e00000 	addik	r7, r0, 0
    6060:	31000000 	addik	r8, r0, 0
    6064:	10c50000 	addk	r6, r5, r0
    6068:	b0000000 	imm	0
    606c:	b9f4a4f0 	brlid	r15, -23312	// 1055c <__adddf3>
    6070:	10a30000 	addk	r5, r3, r0
    6074:	13430000 	addk	r26, r3, r0
    6078:	13640000 	addk	r27, r4, r0
    607c:	b000fcc0 	imm	-832
    6080:	335a0000 	addik	r26, r26, 0
    6084:	b0004014 	imm	16404
    6088:	30e00000 	addik	r7, r0, 0
    608c:	31000000 	addik	r8, r0, 0
    6090:	e8a10038 	lwi	r5, r1, 56
    6094:	e8c1003c 	lwi	r6, r1, 60
    6098:	b0000000 	imm	0
    609c:	b9f4a524 	brlid	r15, -23260	// 105c0 <__subdf3>
    60a0:	80000000 	or	r0, r0, r0
    60a4:	13030000 	addk	r24, r3, r0
    60a8:	10c40000 	addk	r6, r4, r0
    60ac:	10fa0000 	addk	r7, r26, r0
    60b0:	10b80000 	addk	r5, r24, r0
    60b4:	111b0000 	addk	r8, r27, r0
    60b8:	b0000000 	imm	0
    60bc:	b9f4b088 	brlid	r15, -20344	// 11144 <__gtdf2>
    60c0:	13240000 	addk	r25, r4, r0
    60c4:	be83033c 	bgtid	r3, 828		// 6400
    60c8:	10b80000 	addk	r5, r24, r0
    60cc:	b0008000 	imm	-32768
    60d0:	311a0000 	addik	r8, r26, 0
    60d4:	10e80000 	addk	r7, r8, r0
    60d8:	10d90000 	addk	r6, r25, r0
    60dc:	b0000000 	imm	0
    60e0:	b9f4b15c 	brlid	r15, -20132	// 1123c <__ltdf2>
    60e4:	111b0000 	addk	r8, r27, r0
    60e8:	bca300c8 	bgei	r3, 200		// 61b0
    60ec:	13000000 	addk	r24, r0, r0
    60f0:	13980000 	addk	r28, r24, r0
    60f4:	e86100b8 	lwi	r3, r1, 184
    60f8:	eb610030 	lwi	r27, r1, 48
    60fc:	12c00000 	addk	r22, r0, r0
    6100:	a863ffff 	xori	r3, r3, -1
    6104:	b810fd00 	brid	-768		// 5e04
    6108:	f8610024 	swi	r3, r1, 36
    610c:	3060001c 	addik	r3, r0, 28	// 1c <_.d4>
    6110:	e8810034 	lwi	r4, r1, 52
    6114:	13391800 	addk	r25, r25, r3
    6118:	13ff1800 	addk	r31, r31, r3
    611c:	10841800 	addk	r4, r4, r3
    6120:	b810fbb4 	brid	-1100		// 5cd4
    6124:	f8810034 	swi	r4, r1, 52
    6128:	be83fc00 	bgtid	r3, -1024		// 5d28
    612c:	e8610048 	lwi	r3, r1, 72
    6130:	e8c1002c 	lwi	r6, r1, 44
    6134:	be26ffc0 	bneid	r6, -64		// 60f4
    6138:	10d80000 	addk	r6, r24, r0
    613c:	10b30000 	addk	r5, r19, r0
    6140:	e901002c 	lwi	r8, r1, 44
    6144:	b9f42aa0 	brlid	r15, 10912	// 8be4 <__multadd>
    6148:	30e00005 	addik	r7, r0, 5
    614c:	10bd0000 	addk	r5, r29, r0
    6150:	10c30000 	addk	r6, r3, r0
    6154:	b9f438f4 	brlid	r15, 14580	// 9a48 <__mcmp>
    6158:	13030000 	addk	r24, r3, r0
    615c:	be63ff9c 	bleid	r3, -100		// 60f8
    6160:	e86100b8 	lwi	r3, r1, 184
    6164:	e8c10024 	lwi	r6, r1, 36
    6168:	e8810030 	lwi	r4, r1, 48
    616c:	30a00031 	addik	r5, r0, 49
    6170:	30c60001 	addik	r6, r6, 1
    6174:	f0a40000 	sbi	r5, r4, 0
    6178:	33640001 	addik	r27, r4, 1
    617c:	f8c10024 	swi	r6, r1, 36
    6180:	b810fc84 	brid	-892		// 5e04
    6184:	12c00000 	addk	r22, r0, r0
    6188:	80761800 	or	r3, r22, r3
    618c:	bea3fc9c 	bgeid	r3, -868		// 5e28
    6190:	10b30000 	addk	r5, r19, r0
    6194:	b9f429d0 	brlid	r15, 10704	// 8b64 <_Bfree>
    6198:	10d60000 	addk	r6, r22, r0
    619c:	b810fc90 	brid	-880		// 5e2c
    61a0:	10b30000 	addk	r5, r19, r0
    61a4:	b810ee64 	brid	-4508		// 5008
    61a8:	e8610030 	lwi	r3, r1, 48
    61ac:	ebe10038 	lwi	r31, r1, 56
    61b0:	eac10054 	lwi	r22, r1, 84
    61b4:	eae10058 	lwi	r23, r1, 88
    61b8:	b810f6f8 	brid	-2312		// 58b0
    61bc:	e861001c 	lwi	r3, r1, 28
    61c0:	e8a10024 	lwi	r5, r1, 36
    61c4:	14650000 	rsubk	r3, r5, r0
    61c8:	be0306c4 	beqid	r3, 1732		// 688c
    61cc:	a483000f 	andi	r4, r3, 15
    61d0:	b0000001 	imm	1
    61d4:	30a02ce4 	addik	r5, r0, 11492	// 12ce4 <__mprec_tens>
    61d8:	10842000 	addk	r4, r4, r4
    61dc:	10842000 	addk	r4, r4, r4
    61e0:	10842000 	addk	r4, r4, r4
    61e4:	10852000 	addk	r4, r5, r4
    61e8:	e8e40000 	lwi	r7, r4, 0
    61ec:	e9040004 	lwi	r8, r4, 4
    61f0:	e8a10054 	lwi	r5, r1, 84
    61f4:	e8c10058 	lwi	r6, r1, 88
    61f8:	12e01800 	addk	r23, r0, r3
    61fc:	92e30001 	sra	r23, r3
    6200:	92f70001 	sra	r23, r23
    6204:	92f70001 	sra	r23, r23
    6208:	92f70001 	sra	r23, r23
    620c:	b0000000 	imm	0
    6210:	b9f4a420 	brlid	r15, -23520	// 10630 <__muldf3>
    6214:	80000000 	or	r0, r0, r0
    6218:	f8610038 	swi	r3, r1, 56
    621c:	f881003c 	swi	r4, r1, 60
    6220:	be170850 	beqid	r23, 2128		// 6a70
    6224:	10a40000 	addk	r5, r4, r0
    6228:	10830000 	addk	r4, r3, r0
    622c:	13000000 	addk	r24, r0, r0
    6230:	32c00002 	addik	r22, r0, 2
    6234:	a4770001 	andi	r3, r23, 1
    6238:	be030034 	beqid	r3, 52		// 626c
    623c:	92f70001 	sra	r23, r23
    6240:	10c50000 	addk	r6, r5, r0
    6244:	b0000001 	imm	1
    6248:	e8f82cbc 	lwi	r7, r24, 11452
    624c:	b0000001 	imm	1
    6250:	e9182cc0 	lwi	r8, r24, 11456
    6254:	10a40000 	addk	r5, r4, r0
    6258:	b0000000 	imm	0
    625c:	b9f4a3d4 	brlid	r15, -23596	// 10630 <__muldf3>
    6260:	32d60001 	addik	r22, r22, 1
    6264:	10a40000 	addk	r5, r4, r0
    6268:	10830000 	addk	r4, r3, r0
    626c:	be37ffc8 	bneid	r23, -56		// 6234
    6270:	33180008 	addik	r24, r24, 8
    6274:	f8810038 	swi	r4, r1, 56
    6278:	f8a1003c 	swi	r5, r1, 60
    627c:	b810f26c 	brid	-3476		// 54e8
    6280:	e8a10040 	lwi	r5, r1, 64
    6284:	f8610060 	swi	r3, r1, 96
    6288:	b0000001 	imm	1
    628c:	30802ce4 	addik	r4, r0, 11492	// 12ce4 <__mprec_tens>
    6290:	10631800 	addk	r3, r3, r3
    6294:	10631800 	addk	r3, r3, r3
    6298:	10631800 	addk	r3, r3, r3
    629c:	10641800 	addk	r3, r4, r3
    62a0:	10fa0000 	addk	r7, r26, r0
    62a4:	111b0000 	addk	r8, r27, r0
    62a8:	e8a30000 	lwi	r5, r3, 0
    62ac:	e8c30004 	lwi	r6, r3, 4
    62b0:	e8610030 	lwi	r3, r1, 48
    62b4:	b0000000 	imm	0
    62b8:	b9f4a378 	brlid	r15, -23688	// 10630 <__muldf3>
    62bc:	33830001 	addik	r28, r3, 1
    62c0:	e8a10038 	lwi	r5, r1, 56
    62c4:	e8c1003c 	lwi	r6, r1, 60
    62c8:	f861006c 	swi	r3, r1, 108
    62cc:	f8810070 	swi	r4, r1, 112
    62d0:	b0000000 	imm	0
    62d4:	b9f4b194 	brlid	r15, -20076	// 11468 <__fixdfsi>
    62d8:	137c0000 	addk	r27, r28, r0
    62dc:	10a30000 	addk	r5, r3, r0
    62e0:	e8810030 	lwi	r4, r1, 48
    62e4:	13430000 	addk	r26, r3, r0
    62e8:	b0000000 	imm	0
    62ec:	b9f4afc4 	brlid	r15, -20540	// 112b0 <__floatsidf>
    62f0:	1304c800 	addk	r24, r4, r25
    62f4:	11030000 	addk	r8, r3, r0
    62f8:	e8a10038 	lwi	r5, r1, 56
    62fc:	e8c1003c 	lwi	r6, r1, 60
    6300:	335a0030 	addik	r26, r26, 48
    6304:	10e80000 	addk	r7, r8, r0
    6308:	b0000000 	imm	0
    630c:	b9f4a2b4 	brlid	r15, -23884	// 105c0 <__subdf3>
    6310:	11040000 	addk	r8, r4, r0
    6314:	e8a10030 	lwi	r5, r1, 48
    6318:	12c30000 	addk	r22, r3, r0
    631c:	a8790001 	xori	r3, r25, 1
    6320:	f3450000 	sbi	r26, r5, 0
    6324:	12e40000 	addk	r23, r4, r0
    6328:	be03008c 	beqid	r3, 140		// 63b4
    632c:	133c0000 	addk	r25, r28, r0
    6330:	b0004024 	imm	16420
    6334:	30e00000 	addik	r7, r0, 0
    6338:	31000000 	addik	r8, r0, 0
    633c:	10b60000 	addk	r5, r22, r0
    6340:	b0000000 	imm	0
    6344:	b9f4a2ec 	brlid	r15, -23828	// 10630 <__muldf3>
    6348:	10d70000 	addk	r6, r23, r0
    634c:	12c30000 	addk	r22, r3, r0
    6350:	10c40000 	addk	r6, r4, r0
    6354:	12e40000 	addk	r23, r4, r0
    6358:	b0000000 	imm	0
    635c:	b9f4b10c 	brlid	r15, -20212	// 11468 <__fixdfsi>
    6360:	10b60000 	addk	r5, r22, r0
    6364:	10a30000 	addk	r5, r3, r0
    6368:	b0000000 	imm	0
    636c:	b9f4af44 	brlid	r15, -20668	// 112b0 <__floatsidf>
    6370:	13430000 	addk	r26, r3, r0
    6374:	11030000 	addk	r8, r3, r0
    6378:	10b60000 	addk	r5, r22, r0
    637c:	10d70000 	addk	r6, r23, r0
    6380:	10e80000 	addk	r7, r8, r0
    6384:	11040000 	addk	r8, r4, r0
    6388:	b0000000 	imm	0
    638c:	b9f4a234 	brlid	r15, -24012	// 105c0 <__subdf3>
    6390:	335a0030 	addik	r26, r26, 48
    6394:	f3590000 	sbi	r26, r25, 0
    6398:	33390001 	addik	r25, r25, 1
    639c:	12c30000 	addk	r22, r3, r0
    63a0:	8879c000 	xor	r3, r25, r24
    63a4:	be23ff8c 	bneid	r3, -116		// 6330
    63a8:	12e40000 	addk	r23, r4, r0
    63ac:	e8610060 	lwi	r3, r1, 96
    63b0:	137c1800 	addk	r27, r28, r3
    63b4:	b0003fe0 	imm	16352
    63b8:	30e00000 	addik	r7, r0, 0
    63bc:	31000000 	addik	r8, r0, 0
    63c0:	e8a1006c 	lwi	r5, r1, 108
    63c4:	e8c10070 	lwi	r6, r1, 112
    63c8:	b0000000 	imm	0
    63cc:	b9f4a190 	brlid	r15, -24176	// 1055c <__adddf3>
    63d0:	80000000 	or	r0, r0, r0
    63d4:	10a40000 	addk	r5, r4, r0
    63d8:	10f60000 	addk	r7, r22, r0
    63dc:	11170000 	addk	r8, r23, r0
    63e0:	10c50000 	addk	r6, r5, r0
    63e4:	b0000000 	imm	0
    63e8:	b9f4ae54 	brlid	r15, -20908	// 1123c <__ltdf2>
    63ec:	10a30000 	addk	r5, r3, r0
    63f0:	bca304c4 	bgei	r3, 1220		// 68b4
    63f4:	e31bffff 	lbui	r24, r27, -1
    63f8:	b810f720 	brid	-2272		// 5b18
    63fc:	93180060 	sext8	r24, r24
    6400:	13000000 	addk	r24, r0, r0
    6404:	b810fd60 	brid	-672		// 6164
    6408:	13980000 	addk	r28, r24, r0
    640c:	b9f4363c 	brlid	r15, 13884	// 9a48 <__mcmp>
    6410:	10d80000 	addk	r6, r24, r0
    6414:	bea3f904 	bgeid	r3, -1788		// 5d18
    6418:	30600002 	addik	r3, r0, 2
    641c:	10dd0000 	addk	r6, r29, r0
    6420:	10b30000 	addk	r5, r19, r0
    6424:	30e0000a 	addik	r7, r0, 10
    6428:	b9f427bc 	brlid	r15, 10172	// 8be4 <__multadd>
    642c:	11000000 	addk	r8, r0, r0
    6430:	13a30000 	addk	r29, r3, r0
    6434:	e8610024 	lwi	r3, r1, 36
    6438:	e8810048 	lwi	r4, r1, 72
    643c:	3063ffff 	addik	r3, r3, -1
    6440:	be2400dc 	bneid	r4, 220		// 651c
    6444:	f8610024 	swi	r3, r1, 36
    6448:	e8610050 	lwi	r3, r1, 80
    644c:	be830018 	bgtid	r3, 24		// 6464
    6450:	e8810050 	lwi	r4, r1, 80
    6454:	30600002 	addik	r3, r0, 2
    6458:	147e1801 	cmp	r3, r30, r3
    645c:	be43064c 	bltid	r3, 1612		// 6aa8
    6460:	e8a10050 	lwi	r5, r1, 80
    6464:	b810f8c8 	brid	-1848		// 5d2c
    6468:	f881002c 	swi	r4, r1, 44
    646c:	e8780010 	lwi	r3, r24, 16
    6470:	30630004 	addik	r3, r3, 4
    6474:	10631800 	addk	r3, r3, r3
    6478:	10631800 	addk	r3, r3, r3
    647c:	b9f42ad0 	brlid	r15, 10960	// 8f4c <__hi0bits>
    6480:	c8a3c000 	lw	r5, r3, r24
    6484:	30a00020 	addik	r5, r0, 32
    6488:	b810f810 	brid	-2032		// 5c98
    648c:	14632800 	rsubk	r3, r3, r5
    6490:	be23fc5c 	bneid	r3, -932		// 60ec
    6494:	10b80000 	addk	r5, r24, r0
    6498:	b0004014 	imm	16404
    649c:	30e00000 	addik	r7, r0, 0
    64a0:	31000000 	addik	r8, r0, 0
    64a4:	b0000000 	imm	0
    64a8:	b9f4a188 	brlid	r15, -24184	// 10630 <__muldf3>
    64ac:	10d90000 	addk	r6, r25, r0
    64b0:	10a40000 	addk	r5, r4, r0
    64b4:	10f60000 	addk	r7, r22, r0
    64b8:	11170000 	addk	r8, r23, r0
    64bc:	10c50000 	addk	r6, r5, r0
    64c0:	b0000000 	imm	0
    64c4:	b9f4acfc 	brlid	r15, -21252	// 111c0 <__gedf2>
    64c8:	10a30000 	addk	r5, r3, r0
    64cc:	eb01002c 	lwi	r24, r1, 44
    64d0:	bea3fc24 	bgeid	r3, -988		// 60f4
    64d4:	13980000 	addk	r28, r24, r0
    64d8:	b810fc90 	brid	-880		// 6168
    64dc:	e8c10024 	lwi	r6, r1, 36
    64e0:	be37f7b0 	bneid	r23, -2128		// 5c90
    64e4:	e881004c 	lwi	r4, r1, 76
    64e8:	b000000f 	imm	15
    64ec:	a4b6ffff 	andi	r5, r22, -1
    64f0:	bc25f7a0 	bnei	r5, -2144		// 5c90
    64f4:	b0007ff0 	imm	32752
    64f8:	a4960000 	andi	r4, r22, 0
    64fc:	be04f794 	beqid	r4, -2156		// 5c90
    6500:	e881004c 	lwi	r4, r1, 76
    6504:	e8c10034 	lwi	r6, r1, 52
    6508:	13630000 	addk	r27, r3, r0
    650c:	13ff1800 	addk	r31, r31, r3
    6510:	10c61800 	addk	r6, r6, r3
    6514:	b810f778 	brid	-2184		// 5c8c
    6518:	f8c10034 	swi	r6, r1, 52
    651c:	10b30000 	addk	r5, r19, r0
    6520:	10dc0000 	addk	r6, r28, r0
    6524:	30e0000a 	addik	r7, r0, 10
    6528:	b9f426bc 	brlid	r15, 9916	// 8be4 <__multadd>
    652c:	11000000 	addk	r8, r0, r0
    6530:	e8a10050 	lwi	r5, r1, 80
    6534:	be850018 	bgtid	r5, 24		// 654c
    6538:	13830000 	addk	r28, r3, r0
    653c:	30600002 	addik	r3, r0, 2
    6540:	147e1801 	cmp	r3, r30, r3
    6544:	be430548 	bltid	r3, 1352		// 6a8c
    6548:	e8810050 	lwi	r4, r1, 80
    654c:	e8c10050 	lwi	r6, r1, 80
    6550:	f8c1002c 	swi	r6, r1, 44
    6554:	be790018 	bleid	r25, 24		// 656c
    6558:	10dc0000 	addk	r6, r28, r0
    655c:	10b30000 	addk	r5, r19, r0
    6560:	b9f43338 	brlid	r15, 13112	// 9898 <__lshift>
    6564:	10f90000 	addk	r7, r25, r0
    6568:	13830000 	addk	r28, r3, r0
    656c:	be3b0434 	bneid	r27, 1076		// 69a0
    6570:	135c0000 	addk	r26, r28, r0
    6574:	eb210030 	lwi	r25, r1, 48
    6578:	e881002c 	lwi	r4, r1, 44
    657c:	12dc0000 	addk	r22, r28, r0
    6580:	3079ffff 	addik	r3, r25, -1
    6584:	10632000 	addk	r3, r3, r4
    6588:	a4970001 	andi	r4, r23, 1
    658c:	f861002c 	swi	r3, r1, 44
    6590:	f8810028 	swi	r4, r1, 40
    6594:	10bd0000 	addk	r5, r29, r0
    6598:	10d80000 	addk	r6, r24, r0
    659c:	b9f4e3e0 	brlid	r15, -7200	// 497c <quorem>
    65a0:	33600001 	addik	r27, r0, 1
    65a4:	10bd0000 	addk	r5, r29, r0
    65a8:	10d60000 	addk	r6, r22, r0
    65ac:	13e30000 	addk	r31, r3, r0
    65b0:	b9f43498 	brlid	r15, 13464	// 9a48 <__mcmp>
    65b4:	32e30030 	addik	r23, r3, 48
    65b8:	10b30000 	addk	r5, r19, r0
    65bc:	10d80000 	addk	r6, r24, r0
    65c0:	10fa0000 	addk	r7, r26, r0
    65c4:	b9f43564 	brlid	r15, 13668	// 9b28 <__mdiff>
    65c8:	13830000 	addk	r28, r3, r0
    65cc:	10830000 	addk	r4, r3, r0
    65d0:	e863000c 	lwi	r3, r3, 12
    65d4:	be03010c 	beqid	r3, 268		// 66e0
    65d8:	10c40000 	addk	r6, r4, r0
    65dc:	10b30000 	addk	r5, r19, r0
    65e0:	b9f42584 	brlid	r15, 9604	// 8b64 <_Bfree>
    65e4:	10c40000 	addk	r6, r4, r0
    65e8:	807bf000 	or	r3, r27, r30
    65ec:	be230010 	bneid	r3, 16		// 65fc
    65f0:	e8810028 	lwi	r4, r1, 40
    65f4:	be0400d8 	beqid	r4, 216		// 66cc
    65f8:	a8770039 	xori	r3, r23, 57
    65fc:	bc5c0088 	blti	r28, 136		// 6684
    6600:	839cf000 	or	r28, r28, r30
    6604:	be3c000c 	bneid	r28, 12		// 6610
    6608:	e8810028 	lwi	r4, r1, 40
    660c:	bc040078 	beqi	r4, 120		// 6684
    6610:	be9b042c 	bgtid	r27, 1068		// 6a3c
    6614:	e881002c 	lwi	r4, r1, 44
    6618:	33990001 	addik	r28, r25, 1
    661c:	f2f90000 	sbi	r23, r25, 0
    6620:	8b392000 	xor	r25, r25, r4
    6624:	be19043c 	beqid	r25, 1084		// 6a60
    6628:	137c0000 	addk	r27, r28, r0
    662c:	10dd0000 	addk	r6, r29, r0
    6630:	10b30000 	addk	r5, r19, r0
    6634:	30e0000a 	addik	r7, r0, 10
    6638:	b9f425ac 	brlid	r15, 9644	// 8be4 <__multadd>
    663c:	11000000 	addk	r8, r0, r0
    6640:	8916d000 	xor	r8, r22, r26
    6644:	13a30000 	addk	r29, r3, r0
    6648:	10b30000 	addk	r5, r19, r0
    664c:	10d60000 	addk	r6, r22, r0
    6650:	be0800a8 	beqid	r8, 168		// 66f8
    6654:	30e0000a 	addik	r7, r0, 10
    6658:	b9f4258c 	brlid	r15, 9612	// 8be4 <__multadd>
    665c:	11000000 	addk	r8, r0, r0
    6660:	10da0000 	addk	r6, r26, r0
    6664:	10b30000 	addk	r5, r19, r0
    6668:	30e0000a 	addik	r7, r0, 10
    666c:	11000000 	addk	r8, r0, r0
    6670:	b9f42574 	brlid	r15, 9588	// 8be4 <__multadd>
    6674:	12c30000 	addk	r22, r3, r0
    6678:	13430000 	addk	r26, r3, r0
    667c:	b810ff18 	brid	-232		// 6594
    6680:	133c0000 	addk	r25, r28, r0
    6684:	be7b0038 	bleid	r27, 56		// 66bc
    6688:	13970000 	addk	r28, r23, r0
    668c:	10dd0000 	addk	r6, r29, r0
    6690:	10b30000 	addk	r5, r19, r0
    6694:	b9f43204 	brlid	r15, 12804	// 9898 <__lshift>
    6698:	30e00001 	addik	r7, r0, 1
    669c:	10a30000 	addk	r5, r3, r0
    66a0:	10d80000 	addk	r6, r24, r0
    66a4:	b9f433a4 	brlid	r15, 13220	// 9a48 <__mcmp>
    66a8:	13a30000 	addk	r29, r3, r0
    66ac:	bc6303cc 	blei	r3, 972		// 6a78
    66b0:	ab9c0039 	xori	r28, r28, 57
    66b4:	be1c0394 	beqid	r28, 916		// 6a48
    66b8:	32ff0031 	addik	r23, r31, 49
    66bc:	f2f90000 	sbi	r23, r25, 0
    66c0:	33790001 	addik	r27, r25, 1
    66c4:	b810f740 	brid	-2240		// 5e04
    66c8:	139a0000 	addk	r28, r26, r0
    66cc:	be030380 	beqid	r3, 896		// 6a4c
    66d0:	30a00039 	addik	r5, r0, 57
    66d4:	bc7cffe8 	blei	r28, -24		// 66bc
    66d8:	b810ffe4 	brid	-28		// 66bc
    66dc:	32ff0031 	addik	r23, r31, 49
    66e0:	10bd0000 	addk	r5, r29, r0
    66e4:	b9f43364 	brlid	r15, 13156	// 9a48 <__mcmp>
    66e8:	f8810074 	swi	r4, r1, 116
    66ec:	13630000 	addk	r27, r3, r0
    66f0:	b810feec 	brid	-276		// 65dc
    66f4:	e8810074 	lwi	r4, r1, 116
    66f8:	b9f424ec 	brlid	r15, 9452	// 8be4 <__multadd>
    66fc:	133c0000 	addk	r25, r28, r0
    6700:	12c30000 	addk	r22, r3, r0
    6704:	b810fe90 	brid	-368		// 6594
    6708:	13430000 	addk	r26, r3, r0
    670c:	b810f80c 	brid	-2036		// 5f18
    6710:	f8810048 	swi	r4, r1, 72
    6714:	33200001 	addik	r25, r0, 1
    6718:	fb210050 	swi	r25, r1, 80
    671c:	fb21002c 	swi	r25, r1, 44
    6720:	fb2100b8 	swi	r25, r1, 184
    6724:	eb130024 	lwi	r24, r19, 36
    6728:	87391800 	and	r25, r25, r3
    672c:	b810ecb4 	brid	-4940		// 53e0
    6730:	f8180004 	swi	r0, r24, 4
    6734:	a884ffff 	xori	r4, r4, -1
    6738:	13202000 	addk	r25, r0, r4
    673c:	93240041 	srl	r25, r4
    6740:	93390041 	srl	r25, r25
    6744:	93390041 	srl	r25, r25
    6748:	93390041 	srl	r25, r25
    674c:	93390041 	srl	r25, r25
    6750:	93390041 	srl	r25, r25
    6754:	93390041 	srl	r25, r25
    6758:	93390041 	srl	r25, r25
    675c:	93390041 	srl	r25, r25
    6760:	93390041 	srl	r25, r25
    6764:	93390041 	srl	r25, r25
    6768:	93390041 	srl	r25, r25
    676c:	93390041 	srl	r25, r25
    6770:	93390041 	srl	r25, r25
    6774:	93390041 	srl	r25, r25
    6778:	93390041 	srl	r25, r25
    677c:	93390041 	srl	r25, r25
    6780:	93390041 	srl	r25, r25
    6784:	93390041 	srl	r25, r25
    6788:	93390041 	srl	r25, r25
    678c:	93390041 	srl	r25, r25
    6790:	93390041 	srl	r25, r25
    6794:	93390041 	srl	r25, r25
    6798:	93390041 	srl	r25, r25
    679c:	93390041 	srl	r25, r25
    67a0:	93390041 	srl	r25, r25
    67a4:	93390041 	srl	r25, r25
    67a8:	93390041 	srl	r25, r25
    67ac:	93390041 	srl	r25, r25
    67b0:	93390041 	srl	r25, r25
    67b4:	93390041 	srl	r25, r25
    67b8:	b810ff6c 	brid	-148		// 6724
    67bc:	f8c1002c 	swi	r6, r1, 44
    67c0:	10b30000 	addk	r5, r19, r0
    67c4:	b9f42f94 	brlid	r15, 12180	// 9758 <__pow5mult>
    67c8:	e8e10044 	lwi	r7, r1, 68
    67cc:	b810f484 	brid	-2940		// 5c50
    67d0:	13a30000 	addk	r29, r3, r0
    67d4:	e8c1004c 	lwi	r6, r1, 76
    67d8:	fb010044 	swi	r24, r1, 68
    67dc:	1465c000 	rsubk	r3, r5, r24
    67e0:	10c61800 	addk	r6, r6, r3
    67e4:	f8c1004c 	swi	r6, r1, 76
    67e8:	b810f3b0 	brid	-3152		// 5b98
    67ec:	13000000 	addk	r24, r0, r0
    67f0:	be06f83c 	beqid	r6, -1988		// 602c
    67f4:	e8610050 	lwi	r3, r1, 80
    67f8:	be63f9b8 	bleid	r3, -1608		// 61b0
    67fc:	e8810024 	lwi	r4, r1, 36
    6800:	e8a10038 	lwi	r5, r1, 56
    6804:	e8c1003c 	lwi	r6, r1, 60
    6808:	b0004024 	imm	16420
    680c:	30e00000 	addik	r7, r0, 0
    6810:	31000000 	addik	r8, r0, 0
    6814:	3084ffff 	addik	r4, r4, -1
    6818:	b0000000 	imm	0
    681c:	b9f49e14 	brlid	r15, -25068	// 10630 <__muldf3>
    6820:	f8810068 	swi	r4, r1, 104
    6824:	f8610038 	swi	r3, r1, 56
    6828:	f881003c 	swi	r4, r1, 60
    682c:	b0000000 	imm	0
    6830:	b9f4aa80 	brlid	r15, -21888	// 112b0 <__floatsidf>
    6834:	30b60001 	addik	r5, r22, 1
    6838:	11030000 	addk	r8, r3, r0
    683c:	e8a10038 	lwi	r5, r1, 56
    6840:	e8c1003c 	lwi	r6, r1, 60
    6844:	10e80000 	addk	r7, r8, r0
    6848:	b0000000 	imm	0
    684c:	b9f49de4 	brlid	r15, -25116	// 10630 <__muldf3>
    6850:	11040000 	addk	r8, r4, r0
    6854:	10a40000 	addk	r5, r4, r0
    6858:	b000401c 	imm	16412
    685c:	30e00000 	addik	r7, r0, 0
    6860:	31000000 	addik	r8, r0, 0
    6864:	eb210050 	lwi	r25, r1, 80
    6868:	10c50000 	addk	r6, r5, r0
    686c:	b0000000 	imm	0
    6870:	b9f49cec 	brlid	r15, -25364	// 1055c <__adddf3>
    6874:	10a30000 	addk	r5, r3, r0
    6878:	13430000 	addk	r26, r3, r0
    687c:	b000fcc0 	imm	-832
    6880:	335a0000 	addik	r26, r26, 0
    6884:	b810ecfc 	brid	-4868		// 5580
    6888:	13640000 	addk	r27, r4, r0
    688c:	e8810054 	lwi	r4, r1, 84
    6890:	e8a10058 	lwi	r5, r1, 88
    6894:	f8810038 	swi	r4, r1, 56
    6898:	f8a1003c 	swi	r5, r1, 60
    689c:	b810ec48 	brid	-5048		// 54e4
    68a0:	32c00002 	addik	r22, r0, 2
    68a4:	b9f42eb4 	brlid	r15, 11956	// 9758 <__pow5mult>
    68a8:	10b30000 	addk	r5, r19, r0
    68ac:	b810f3a4 	brid	-3164		// 5c50
    68b0:	13a30000 	addk	r29, r3, r0
    68b4:	b0003fe0 	imm	16352
    68b8:	30a00000 	addik	r5, r0, 0
    68bc:	30c00000 	addik	r6, r0, 0
    68c0:	e8e1006c 	lwi	r7, r1, 108
    68c4:	e9010070 	lwi	r8, r1, 112
    68c8:	b0000000 	imm	0
    68cc:	b9f49cf4 	brlid	r15, -25356	// 105c0 <__subdf3>
    68d0:	80000000 	or	r0, r0, r0
    68d4:	10a40000 	addk	r5, r4, r0
    68d8:	10f60000 	addk	r7, r22, r0
    68dc:	11170000 	addk	r8, r23, r0
    68e0:	10c50000 	addk	r6, r5, r0
    68e4:	b0000000 	imm	0
    68e8:	b9f4a85c 	brlid	r15, -22436	// 11144 <__gtdf2>
    68ec:	10a30000 	addk	r5, r3, r0
    68f0:	bc83000c 	bgti	r3, 12		// 68fc
    68f4:	b800f8bc 	bri	-1860		// 61b0
    68f8:	13640000 	addk	r27, r4, r0
    68fc:	e07bffff 	lbui	r3, r27, -1
    6900:	90630060 	sext8	r3, r3
    6904:	a8630030 	xori	r3, r3, 48
    6908:	be03fff0 	beqid	r3, -16		// 68f8
    690c:	309bffff 	addik	r4, r27, -1
    6910:	e8c10068 	lwi	r6, r1, 104
    6914:	b810f520 	brid	-2784		// 5e34
    6918:	f8c10024 	swi	r6, r1, 36
    691c:	e881005c 	lwi	r4, r1, 92
    6920:	be040108 	beqid	r4, 264		// 6a28
    6924:	30a00036 	addik	r5, r0, 54
    6928:	30630433 	addik	r3, r3, 1075
    692c:	eb010044 	lwi	r24, r1, 68
    6930:	b810f278 	brid	-3464		// 5ba8
    6934:	eb210034 	lwi	r25, r1, 52
    6938:	b810f2a8 	brid	-3416		// 5be0
    693c:	10790000 	addk	r3, r25, r0
    6940:	17232000 	rsubk	r25, r3, r4
    6944:	b810f264 	brid	-3484		// 5ba8
    6948:	10600000 	addk	r3, r0, r0
    694c:	b810f1cc 	brid	-3636		// 5b18
    6950:	137f0000 	addk	r27, r31, r0
    6954:	e8a10068 	lwi	r5, r1, 104
    6958:	30780001 	addik	r3, r24, 1
    695c:	90630060 	sext8	r3, r3
    6960:	f8a10024 	swi	r5, r1, 36
    6964:	b810f4d0 	brid	-2864		// 5e34
    6968:	f0640000 	sbi	r3, r4, 0
    696c:	be230018 	bneid	r3, 24		// 6984
    6970:	a6f70001 	andi	r23, r23, 1
    6974:	bc170010 	beqi	r23, 16		// 6984
    6978:	b810f440 	brid	-3008		// 5db8
    697c:	e09bffff 	lbui	r4, r27, -1
    6980:	13640000 	addk	r27, r4, r0
    6984:	e07bffff 	lbui	r3, r27, -1
    6988:	90630060 	sext8	r3, r3
    698c:	a8630030 	xori	r3, r3, 48
    6990:	be03fff0 	beqid	r3, -16		// 6980
    6994:	309bffff 	addik	r4, r27, -1
    6998:	b810f470 	brid	-2960		// 5e08
    699c:	10b30000 	addk	r5, r19, r0
    69a0:	10b30000 	addk	r5, r19, r0
    69a4:	b9f420cc 	brlid	r15, 8396	// 8a70 <_Balloc>
    69a8:	e8dc0004 	lwi	r6, r28, 4
    69ac:	e8fc0010 	lwi	r7, r28, 16
    69b0:	13230000 	addk	r25, r3, r0
    69b4:	30dc000c 	addik	r6, r28, 12
    69b8:	30e70002 	addik	r7, r7, 2
    69bc:	10e73800 	addk	r7, r7, r7
    69c0:	30a3000c 	addik	r5, r3, 12
    69c4:	b9f41f70 	brlid	r15, 8048	// 8934 <memcpy>
    69c8:	10e73800 	addk	r7, r7, r7
    69cc:	10b30000 	addk	r5, r19, r0
    69d0:	10d90000 	addk	r6, r25, r0
    69d4:	b9f42ec4 	brlid	r15, 11972	// 9898 <__lshift>
    69d8:	30e00001 	addik	r7, r0, 1
    69dc:	b810fb98 	brid	-1128		// 6574
    69e0:	13430000 	addk	r26, r3, r0
    69e4:	10d90000 	addk	r6, r25, r0
    69e8:	10f60000 	addk	r7, r22, r0
    69ec:	b0000000 	imm	0
    69f0:	b9f4a66c 	brlid	r15, -22932	// 1105c <__eqdf2>
    69f4:	11170000 	addk	r8, r23, r0
    69f8:	be23f440 	bneid	r3, -3008		// 5e38
    69fc:	10b30000 	addk	r5, r19, r0
    6a00:	a75a0001 	andi	r26, r26, 1
    6a04:	bc1af434 	beqi	r26, -3020		// 5e38
    6a08:	e31bffff 	lbui	r24, r27, -1
    6a0c:	e8a10024 	lwi	r5, r1, 36
    6a10:	93180060 	sext8	r24, r24
    6a14:	b810f104 	brid	-3836		// 5b18
    6a18:	f8a10068 	swi	r5, r1, 104
    6a1c:	30840001 	addik	r4, r4, 1
    6a20:	b810f3e4 	brid	-3100		// 5e04
    6a24:	f0860000 	sbi	r4, r6, 0
    6a28:	e8610020 	lwi	r3, r1, 32
    6a2c:	eb010044 	lwi	r24, r1, 68
    6a30:	eb210034 	lwi	r25, r1, 52
    6a34:	b810f174 	brid	-3724		// 5ba8
    6a38:	14632800 	rsubk	r3, r3, r5
    6a3c:	a8770039 	xori	r3, r23, 57
    6a40:	be23fc7c 	bneid	r3, -900		// 66bc
    6a44:	32f70001 	addik	r23, r23, 1
    6a48:	30a00039 	addik	r5, r0, 57
    6a4c:	f0b90000 	sbi	r5, r25, 0
    6a50:	33790001 	addik	r27, r25, 1
    6a54:	139a0000 	addk	r28, r26, r0
    6a58:	b810f364 	brid	-3228		// 5dbc
    6a5c:	30800039 	addik	r4, r0, 57
    6a60:	b810f330 	brid	-3280		// 5d90
    6a64:	139a0000 	addk	r28, r26, r0
    6a68:	b810f31c 	brid	-3300		// 5d84
    6a6c:	30600001 	addik	r3, r0, 1
    6a70:	b810ea74 	brid	-5516		// 54e4
    6a74:	32c00002 	addik	r22, r0, 2
    6a78:	be23fc44 	bneid	r3, -956		// 66bc
    6a7c:	a4770001 	andi	r3, r23, 1
    6a80:	bc03fc3c 	beqi	r3, -964		// 66bc
    6a84:	b810fc30 	brid	-976		// 66b4
    6a88:	ab9c0039 	xori	r28, r28, 57
    6a8c:	b810f6a4 	brid	-2396		// 6130
    6a90:	f881002c 	swi	r4, r1, 44
    6a94:	a8840004 	xori	r4, r4, 4
    6a98:	be04f240 	beqid	r4, -3520		// 5cd8
    6a9c:	30c0003c 	addik	r6, r0, 60
    6aa0:	b810f670 	brid	-2448		// 6110
    6aa4:	14633000 	rsubk	r3, r3, r6
    6aa8:	b810f688 	brid	-2424		// 6130
    6aac:	f8a1002c 	swi	r5, r1, 44

00006ab0 <__sflush_r>:
    6ab0:	3021ffd4 	addik	r1, r1, -44
    6ab4:	fac10020 	swi	r22, r1, 32
    6ab8:	fb010028 	swi	r24, r1, 40
    6abc:	f9e10000 	swi	r15, r1, 0
    6ac0:	fa61001c 	swi	r19, r1, 28
    6ac4:	fae10024 	swi	r23, r1, 36
    6ac8:	e486000c 	lhui	r4, r6, 12
    6acc:	12c60000 	addk	r22, r6, r0
    6ad0:	90840061 	sext16	r4, r4
    6ad4:	a4640008 	andi	r3, r4, 8
    6ad8:	90630061 	sext16	r3, r3
    6adc:	be2300a8 	bneid	r3, 168		// 6b84
    6ae0:	13050000 	addk	r24, r5, r0
    6ae4:	e8660004 	lwi	r3, r6, 4
    6ae8:	a0a40800 	ori	r5, r4, 2048
    6aec:	be63018c 	bleid	r3, 396		// 6c78
    6af0:	f4a6000c 	shi	r5, r6, 12
    6af4:	e876002c 	lwi	r3, r22, 44
    6af8:	be030160 	beqid	r3, 352		// 6c58
    6afc:	a4841000 	andi	r4, r4, 4096
    6b00:	ea780000 	lwi	r19, r24, 0
    6b04:	90e40061 	sext16	r7, r4
    6b08:	be070184 	beqid	r7, 388		// 6c8c
    6b0c:	f8180000 	swi	r0, r24, 0
    6b10:	e8f60054 	lwi	r7, r22, 84
    6b14:	a4a50004 	andi	r5, r5, 4
    6b18:	90a50061 	sext16	r5, r5
    6b1c:	be050024 	beqid	r5, 36		// 6b40
    6b20:	10b80000 	addk	r5, r24, r0
    6b24:	e8b60004 	lwi	r5, r22, 4
    6b28:	e8960034 	lwi	r4, r22, 52
    6b2c:	be040010 	beqid	r4, 16		// 6b3c
    6b30:	14e53800 	rsubk	r7, r5, r7
    6b34:	e8960040 	lwi	r4, r22, 64
    6b38:	14e43800 	rsubk	r7, r4, r7
    6b3c:	10b80000 	addk	r5, r24, r0
    6b40:	e8d60020 	lwi	r6, r22, 32
    6b44:	99fc1800 	brald	r15, r3
    6b48:	11000000 	addk	r8, r0, r0
    6b4c:	a883ffff 	xori	r4, r3, -1
    6b50:	bc040168 	beqi	r4, 360		// 6cb8
    6b54:	e496000c 	lhui	r4, r22, 12
    6b58:	e8b60010 	lwi	r5, r22, 16
    6b5c:	f8160004 	swi	r0, r22, 4
    6b60:	90840061 	sext16	r4, r4
    6b64:	a4c4f7ff 	andi	r6, r4, -2049
    6b68:	a4841000 	andi	r4, r4, 4096
    6b6c:	f4d6000c 	shi	r6, r22, 12
    6b70:	90840061 	sext16	r4, r4
    6b74:	be0400c0 	beqid	r4, 192		// 6c34
    6b78:	f8b60000 	swi	r5, r22, 0
    6b7c:	b81000b8 	brid	184		// 6c34
    6b80:	f8760054 	swi	r3, r22, 84
    6b84:	eae60010 	lwi	r23, r6, 16
    6b88:	be1700d0 	beqid	r23, 208		// 6c58
    6b8c:	a4840003 	andi	r4, r4, 3
    6b90:	ea660000 	lwi	r19, r6, 0
    6b94:	fae60000 	swi	r23, r6, 0
    6b98:	16779800 	rsubk	r19, r23, r19
    6b9c:	be24000c 	bneid	r4, 12		// 6ba8
    6ba0:	10600000 	addk	r3, r0, r0
    6ba4:	e8660014 	lwi	r3, r6, 20
    6ba8:	be930018 	bgtid	r19, 24		// 6bc0
    6bac:	f8760008 	swi	r3, r22, 8
    6bb0:	b81000ac 	brid	172		// 6c5c
    6bb4:	10600000 	addk	r3, r0, r0
    6bb8:	be7300a0 	bleid	r19, 160		// 6c58
    6bbc:	12f71800 	addk	r23, r23, r3
    6bc0:	11130000 	addk	r8, r19, r0
    6bc4:	10f70000 	addk	r7, r23, r0
    6bc8:	e8760028 	lwi	r3, r22, 40
    6bcc:	10b80000 	addk	r5, r24, r0
    6bd0:	99fc1800 	brald	r15, r3
    6bd4:	e8d60020 	lwi	r6, r22, 32
    6bd8:	be83ffe0 	bgtid	r3, -32		// 6bb8
    6bdc:	16639800 	rsubk	r19, r3, r19
    6be0:	e496000c 	lhui	r4, r22, 12
    6be4:	3060ffff 	addik	r3, r0, -1
    6be8:	a0840040 	ori	r4, r4, 64
    6bec:	f496000c 	shi	r4, r22, 12
    6bf0:	e9e10000 	lwi	r15, r1, 0
    6bf4:	ea61001c 	lwi	r19, r1, 28
    6bf8:	eac10020 	lwi	r22, r1, 32
    6bfc:	eae10024 	lwi	r23, r1, 36
    6c00:	eb010028 	lwi	r24, r1, 40
    6c04:	b60f0008 	rtsd	r15, 8
    6c08:	3021002c 	addik	r1, r1, 44
    6c0c:	a864001d 	xori	r3, r4, 29
    6c10:	be03000c 	beqid	r3, 12		// 6c1c
    6c14:	a8840016 	xori	r4, r4, 22
    6c18:	bc24ffc8 	bnei	r4, -56		// 6be0
    6c1c:	e496000c 	lhui	r4, r22, 12
    6c20:	e8760010 	lwi	r3, r22, 16
    6c24:	f8160004 	swi	r0, r22, 4
    6c28:	a484f7ff 	andi	r4, r4, -2049
    6c2c:	f496000c 	shi	r4, r22, 12
    6c30:	f8760000 	swi	r3, r22, 0
    6c34:	e8d60034 	lwi	r6, r22, 52
    6c38:	be060020 	beqid	r6, 32		// 6c58
    6c3c:	fa780000 	swi	r19, r24, 0
    6c40:	30760044 	addik	r3, r22, 68
    6c44:	88661800 	xor	r3, r6, r3
    6c48:	bc03000c 	beqi	r3, 12		// 6c54
    6c4c:	b9f406b8 	brlid	r15, 1720	// 7304 <_free_r>
    6c50:	10b80000 	addk	r5, r24, r0
    6c54:	f8160034 	swi	r0, r22, 52
    6c58:	10600000 	addk	r3, r0, r0
    6c5c:	e9e10000 	lwi	r15, r1, 0
    6c60:	ea61001c 	lwi	r19, r1, 28
    6c64:	eac10020 	lwi	r22, r1, 32
    6c68:	eae10024 	lwi	r23, r1, 36
    6c6c:	eb010028 	lwi	r24, r1, 40
    6c70:	b60f0008 	rtsd	r15, 8
    6c74:	3021002c 	addik	r1, r1, 44
    6c78:	e8660040 	lwi	r3, r6, 64
    6c7c:	be83fe78 	bgtid	r3, -392		// 6af4
    6c80:	10600000 	addk	r3, r0, r0
    6c84:	b810ffdc 	brid	-36		// 6c60
    6c88:	e9e10000 	lwi	r15, r1, 0
    6c8c:	10b80000 	addk	r5, r24, r0
    6c90:	e8d60020 	lwi	r6, r22, 32
    6c94:	99fc1800 	brald	r15, r3
    6c98:	31000001 	addik	r8, r0, 1
    6c9c:	10e30000 	addk	r7, r3, r0
    6ca0:	a863ffff 	xori	r3, r3, -1
    6ca4:	bc030030 	beqi	r3, 48		// 6cd4
    6ca8:	e4b6000c 	lhui	r5, r22, 12
    6cac:	e876002c 	lwi	r3, r22, 44
    6cb0:	b810fe64 	brid	-412		// 6b14
    6cb4:	90a50061 	sext16	r5, r5
    6cb8:	e8980000 	lwi	r4, r24, 0
    6cbc:	bc24ff50 	bnei	r4, -176		// 6c0c
    6cc0:	e4d6000c 	lhui	r6, r22, 12
    6cc4:	f8960004 	swi	r4, r22, 4
    6cc8:	e8b60010 	lwi	r5, r22, 16
    6ccc:	b810fe98 	brid	-360		// 6b64
    6cd0:	90860061 	sext16	r4, r6
    6cd4:	e8780000 	lwi	r3, r24, 0
    6cd8:	be03ffd0 	beqid	r3, -48		// 6ca8
    6cdc:	a8830016 	xori	r4, r3, 22
    6ce0:	14a40000 	rsubk	r5, r4, r0
    6ce4:	80852000 	or	r4, r5, r4
    6ce8:	bca40014 	bgei	r4, 20		// 6cfc
    6cec:	a863001d 	xori	r3, r3, 29
    6cf0:	14830000 	rsubk	r4, r3, r0
    6cf4:	80641800 	or	r3, r4, r3
    6cf8:	bc43fee8 	blti	r3, -280		// 6be0
    6cfc:	fa780000 	swi	r19, r24, 0
    6d00:	b810ff5c 	brid	-164		// 6c5c
    6d04:	10600000 	addk	r3, r0, r0

00006d08 <_fflush_r>:
    6d08:	e8660010 	lwi	r3, r6, 16
    6d0c:	bc0300b8 	beqi	r3, 184		// 6dc4
    6d10:	3021ffdc 	addik	r1, r1, -36
    6d14:	fa610020 	swi	r19, r1, 32
    6d18:	f9e10000 	swi	r15, r1, 0
    6d1c:	be050010 	beqid	r5, 16		// 6d2c
    6d20:	12650000 	addk	r19, r5, r0
    6d24:	e8650018 	lwi	r3, r5, 24
    6d28:	bc030068 	beqi	r3, 104		// 6d90
    6d2c:	b0000001 	imm	1
    6d30:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    6d34:	88661800 	xor	r3, r6, r3
    6d38:	bc030074 	beqi	r3, 116		// 6dac
    6d3c:	b0000001 	imm	1
    6d40:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    6d44:	88661800 	xor	r3, r6, r3
    6d48:	bc03006c 	beqi	r3, 108		// 6db4
    6d4c:	b0000001 	imm	1
    6d50:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    6d54:	88661800 	xor	r3, r6, r3
    6d58:	bc030064 	beqi	r3, 100		// 6dbc
    6d5c:	e466000c 	lhui	r3, r6, 12
    6d60:	be230018 	bneid	r3, 24		// 6d78
    6d64:	e9e10000 	lwi	r15, r1, 0
    6d68:	ea610020 	lwi	r19, r1, 32
    6d6c:	10600000 	addk	r3, r0, r0
    6d70:	b60f0008 	rtsd	r15, 8
    6d74:	30210024 	addik	r1, r1, 36
    6d78:	b9f4fd38 	brlid	r15, -712	// 6ab0 <__sflush_r>
    6d7c:	10b30000 	addk	r5, r19, r0
    6d80:	e9e10000 	lwi	r15, r1, 0
    6d84:	ea610020 	lwi	r19, r1, 32
    6d88:	b60f0008 	rtsd	r15, 8
    6d8c:	30210024 	addik	r1, r1, 36
    6d90:	b9f401f0 	brlid	r15, 496	// 6f80 <__sinit>
    6d94:	f8c1001c 	swi	r6, r1, 28
    6d98:	e8c1001c 	lwi	r6, r1, 28
    6d9c:	b0000001 	imm	1
    6da0:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    6da4:	88661800 	xor	r3, r6, r3
    6da8:	bc23ff94 	bnei	r3, -108		// 6d3c
    6dac:	b810ffb0 	brid	-80		// 6d5c
    6db0:	e8d30004 	lwi	r6, r19, 4
    6db4:	b810ffa8 	brid	-88		// 6d5c
    6db8:	e8d30008 	lwi	r6, r19, 8
    6dbc:	b810ffa0 	brid	-96		// 6d5c
    6dc0:	e8d3000c 	lwi	r6, r19, 12
    6dc4:	b60f0008 	rtsd	r15, 8
    6dc8:	10600000 	addk	r3, r0, r0

00006dcc <fflush>:
    6dcc:	3021ffe4 	addik	r1, r1, -28
    6dd0:	f9e10000 	swi	r15, r1, 0
    6dd4:	be050024 	beqid	r5, 36		// 6df8
    6dd8:	10c50000 	addk	r6, r5, r0
    6ddc:	b0000001 	imm	1
    6de0:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    6de4:	b9f4ff24 	brlid	r15, -220	// 6d08 <_fflush_r>
    6de8:	80000000 	or	r0, r0, r0
    6dec:	e9e10000 	lwi	r15, r1, 0
    6df0:	b60f0008 	rtsd	r15, 8
    6df4:	3021001c 	addik	r1, r1, 28
    6df8:	b0000001 	imm	1
    6dfc:	e8a02a3c 	lwi	r5, r0, 10812	// 12a3c <_global_impure_ptr>
    6e00:	30c06d08 	addik	r6, r0, 27912	// 6d08 <_fflush_r>
    6e04:	b9f409e8 	brlid	r15, 2536	// 77ec <_fwalk_reent>
    6e08:	80000000 	or	r0, r0, r0
    6e0c:	e9e10000 	lwi	r15, r1, 0
    6e10:	b60f0008 	rtsd	r15, 8

00006e14 <std.isra.0>:
    6e14:	3021001c 	addik	r1, r1, 28

00006e18 <__fp_lock>:
    6e18:	b60f0008 	rtsd	r15, 8
    6e1c:	10600000 	addk	r3, r0, r0
    6e20:	b60f0008 	rtsd	r15, 8
    6e24:	10600000 	addk	r3, r0, r0

00006e28 <_cleanup_r>:
    6e28:	b0000000 	imm	0
    6e2c:	30c0c638 	addik	r6, r0, -14792	// c638 <fclose>
    6e30:	3021ffe4 	addik	r1, r1, -28
    6e34:	f9e10000 	swi	r15, r1, 0
    6e38:	b9f408e8 	brlid	r15, 2280	// 7720 <_fwalk>
    6e3c:	80000000 	or	r0, r0, r0
    6e40:	e9e10000 	lwi	r15, r1, 0
    6e44:	b60f0008 	rtsd	r15, 8
    6e48:	3021001c 	addik	r1, r1, 28
    6e4c:	3021ffe0 	addik	r1, r1, -32
    6e50:	f9e10000 	swi	r15, r1, 0
    6e54:	fa61001c 	swi	r19, r1, 28
    6e58:	f4c5000c 	shi	r6, r5, 12
    6e5c:	12650000 	addk	r19, r5, r0
    6e60:	f4e5000e 	shi	r7, r5, 14
    6e64:	f8050000 	swi	r0, r5, 0
    6e68:	f8050004 	swi	r0, r5, 4
    6e6c:	f8050008 	swi	r0, r5, 8
    6e70:	f8050064 	swi	r0, r5, 100
    6e74:	f8050010 	swi	r0, r5, 16
    6e78:	f8050014 	swi	r0, r5, 20
    6e7c:	f8050018 	swi	r0, r5, 24
    6e80:	10c00000 	addk	r6, r0, r0
    6e84:	30a5005c 	addik	r5, r5, 92
    6e88:	b9f4a754 	brlid	r15, -22700	// 15dc <memset>
    6e8c:	30e00008 	addik	r7, r0, 8	// 8 <_.z>
    6e90:	b0000000 	imm	0
    6e94:	3060a970 	addik	r3, r0, -22160	// a970 <__sread>
    6e98:	fa730020 	swi	r19, r19, 32
    6e9c:	f8730024 	swi	r3, r19, 36
    6ea0:	b0000000 	imm	0
    6ea4:	3060a9d0 	addik	r3, r0, -22064	// a9d0 <__swrite>
    6ea8:	f8730028 	swi	r3, r19, 40
    6eac:	b0000000 	imm	0
    6eb0:	3060aa64 	addik	r3, r0, -21916	// aa64 <__sseek>
    6eb4:	f873002c 	swi	r3, r19, 44
    6eb8:	b0000000 	imm	0
    6ebc:	3060aac4 	addik	r3, r0, -21820	// aac4 <__sclose>
    6ec0:	f8730030 	swi	r3, r19, 48
    6ec4:	e9e10000 	lwi	r15, r1, 0
    6ec8:	ea61001c 	lwi	r19, r1, 28
    6ecc:	b60f0008 	rtsd	r15, 8
    6ed0:	30210020 	addik	r1, r1, 32

00006ed4 <__sfmoreglue>:
    6ed4:	10663000 	addk	r3, r6, r6
    6ed8:	10633000 	addk	r3, r3, r6
    6edc:	10e31800 	addk	r7, r3, r3
    6ee0:	10e73800 	addk	r7, r7, r7
    6ee4:	10e73800 	addk	r7, r7, r7
    6ee8:	10e73800 	addk	r7, r7, r7
    6eec:	10e33800 	addk	r7, r3, r7
    6ef0:	3021ffd8 	addik	r1, r1, -40
    6ef4:	10e63800 	addk	r7, r6, r7
    6ef8:	fae10024 	swi	r23, r1, 36
    6efc:	12e73800 	addk	r23, r7, r7
    6f00:	fac10020 	swi	r22, r1, 32
    6f04:	12c60000 	addk	r22, r6, r0
    6f08:	fa61001c 	swi	r19, r1, 28
    6f0c:	f9e10000 	swi	r15, r1, 0
    6f10:	b9f40d48 	brlid	r15, 3400	// 7c58 <_malloc_r>
    6f14:	30d7000c 	addik	r6, r23, 12
    6f18:	be030028 	beqid	r3, 40		// 6f40
    6f1c:	12630000 	addk	r19, r3, r0
    6f20:	3063000c 	addik	r3, r3, 12
    6f24:	10a30000 	addk	r5, r3, r0
    6f28:	10f70000 	addk	r7, r23, r0
    6f2c:	f8130000 	swi	r0, r19, 0
    6f30:	fad30004 	swi	r22, r19, 4
    6f34:	f8730008 	swi	r3, r19, 8
    6f38:	b9f4a6a4 	brlid	r15, -22876	// 15dc <memset>
    6f3c:	10c00000 	addk	r6, r0, r0
    6f40:	10730000 	addk	r3, r19, r0
    6f44:	e9e10000 	lwi	r15, r1, 0
    6f48:	ea61001c 	lwi	r19, r1, 28
    6f4c:	eac10020 	lwi	r22, r1, 32
    6f50:	eae10024 	lwi	r23, r1, 36
    6f54:	b60f0008 	rtsd	r15, 8
    6f58:	30210028 	addik	r1, r1, 40

00006f5c <_cleanup>:
    6f5c:	b0000001 	imm	1
    6f60:	e8a02a3c 	lwi	r5, r0, 10812	// 12a3c <_global_impure_ptr>
    6f64:	3021ffe4 	addik	r1, r1, -28
    6f68:	f9e10000 	swi	r15, r1, 0
    6f6c:	b9f4febc 	brlid	r15, -324	// 6e28 <_cleanup_r>
    6f70:	80000000 	or	r0, r0, r0
    6f74:	e9e10000 	lwi	r15, r1, 0
    6f78:	b60f0008 	rtsd	r15, 8
    6f7c:	3021001c 	addik	r1, r1, 28

00006f80 <__sinit>:
    6f80:	3021ffd8 	addik	r1, r1, -40
    6f84:	fa61001c 	swi	r19, r1, 28
    6f88:	f9e10000 	swi	r15, r1, 0
    6f8c:	fac10020 	swi	r22, r1, 32
    6f90:	fae10024 	swi	r23, r1, 36
    6f94:	eac50018 	lwi	r22, r5, 24
    6f98:	be360074 	bneid	r22, 116		// 700c
    6f9c:	12650000 	addk	r19, r5, r0
    6fa0:	30606e28 	addik	r3, r0, 28200	// 6e28 <_cleanup_r>
    6fa4:	32e00001 	addik	r23, r0, 1
    6fa8:	fae50018 	swi	r23, r5, 24
    6fac:	f8650028 	swi	r3, r5, 40
    6fb0:	fac500d8 	swi	r22, r5, 216
    6fb4:	fac500dc 	swi	r22, r5, 220
    6fb8:	b9f4006c 	brlid	r15, 108	// 7024 <__sfp>
    6fbc:	fac500e0 	swi	r22, r5, 224
    6fc0:	10b30000 	addk	r5, r19, r0
    6fc4:	b9f40060 	brlid	r15, 96	// 7024 <__sfp>
    6fc8:	f8730004 	swi	r3, r19, 4
    6fcc:	10b30000 	addk	r5, r19, r0
    6fd0:	b9f40054 	brlid	r15, 84	// 7024 <__sfp>
    6fd4:	f8730008 	swi	r3, r19, 8
    6fd8:	e8b30004 	lwi	r5, r19, 4
    6fdc:	10f60000 	addk	r7, r22, r0
    6fe0:	f873000c 	swi	r3, r19, 12
    6fe4:	b9f4fe68 	brlid	r15, -408
    6fe8:	30c00004 	addik	r6, r0, 4	// 4 <_.xy>
    6fec:	e8b30008 	lwi	r5, r19, 8
    6ff0:	10f70000 	addk	r7, r23, r0
    6ff4:	b9f4fe58 	brlid	r15, -424
    6ff8:	30c00009 	addik	r6, r0, 9
    6ffc:	e8b3000c 	lwi	r5, r19, 12
    7000:	30c00012 	addik	r6, r0, 18
    7004:	b9f4fe48 	brlid	r15, -440
    7008:	30e00002 	addik	r7, r0, 2
    700c:	e9e10000 	lwi	r15, r1, 0
    7010:	ea61001c 	lwi	r19, r1, 28
    7014:	eac10020 	lwi	r22, r1, 32
    7018:	eae10024 	lwi	r23, r1, 36
    701c:	b60f0008 	rtsd	r15, 8
    7020:	30210028 	addik	r1, r1, 40

00007024 <__sfp>:
    7024:	3021ffd8 	addik	r1, r1, -40
    7028:	fac10020 	swi	r22, r1, 32
    702c:	b0000001 	imm	1
    7030:	eac02a3c 	lwi	r22, r0, 10812	// 12a3c <_global_impure_ptr>
    7034:	fae10024 	swi	r23, r1, 36
    7038:	f9e10000 	swi	r15, r1, 0
    703c:	fa61001c 	swi	r19, r1, 28
    7040:	e8760018 	lwi	r3, r22, 24
    7044:	be0300b4 	beqid	r3, 180		// 70f8
    7048:	12e50000 	addk	r23, r5, r0
    704c:	32d600d8 	addik	r22, r22, 216
    7050:	e8760004 	lwi	r3, r22, 4
    7054:	3063ffff 	addik	r3, r3, -1
    7058:	bea3001c 	bgeid	r3, 28		// 7074
    705c:	ea760008 	lwi	r19, r22, 8
    7060:	b810008c 	brid	140		// 70ec
    7064:	e8760000 	lwi	r3, r22, 0
    7068:	a883ffff 	xori	r4, r3, -1
    706c:	be04007c 	beqid	r4, 124		// 70e8
    7070:	32730068 	addik	r19, r19, 104
    7074:	e493000c 	lhui	r4, r19, 12
    7078:	be24fff0 	bneid	r4, -16		// 7068
    707c:	3063ffff 	addik	r3, r3, -1
    7080:	3060ffff 	addik	r3, r0, -1
    7084:	f473000e 	shi	r3, r19, 14
    7088:	30600001 	addik	r3, r0, 1
    708c:	f473000c 	shi	r3, r19, 12
    7090:	f8130064 	swi	r0, r19, 100
    7094:	f8130000 	swi	r0, r19, 0
    7098:	f8130008 	swi	r0, r19, 8
    709c:	f8130004 	swi	r0, r19, 4
    70a0:	f8130010 	swi	r0, r19, 16
    70a4:	f8130014 	swi	r0, r19, 20
    70a8:	f8130018 	swi	r0, r19, 24
    70ac:	30b3005c 	addik	r5, r19, 92
    70b0:	10c00000 	addk	r6, r0, r0
    70b4:	b9f4a528 	brlid	r15, -23256	// 15dc <memset>
    70b8:	30e00008 	addik	r7, r0, 8	// 8 <_.z>
    70bc:	f8130034 	swi	r0, r19, 52
    70c0:	f8130038 	swi	r0, r19, 56
    70c4:	f8130048 	swi	r0, r19, 72
    70c8:	f813004c 	swi	r0, r19, 76
    70cc:	10730000 	addk	r3, r19, r0
    70d0:	e9e10000 	lwi	r15, r1, 0
    70d4:	ea61001c 	lwi	r19, r1, 28
    70d8:	eac10020 	lwi	r22, r1, 32
    70dc:	eae10024 	lwi	r23, r1, 36
    70e0:	b60f0008 	rtsd	r15, 8
    70e4:	30210028 	addik	r1, r1, 40
    70e8:	e8760000 	lwi	r3, r22, 0
    70ec:	bc03001c 	beqi	r3, 28		// 7108
    70f0:	b810ff60 	brid	-160		// 7050
    70f4:	12c30000 	addk	r22, r3, r0
    70f8:	b9f4fe88 	brlid	r15, -376	// 6f80 <__sinit>
    70fc:	10b60000 	addk	r5, r22, r0
    7100:	b810ff50 	brid	-176		// 7050
    7104:	32d600d8 	addik	r22, r22, 216
    7108:	10b70000 	addk	r5, r23, r0
    710c:	b9f4fdc8 	brlid	r15, -568	// 6ed4 <__sfmoreglue>
    7110:	30c00004 	addik	r6, r0, 4	// 4 <_.xy>
    7114:	be23ffdc 	bneid	r3, -36		// 70f0
    7118:	f8760000 	swi	r3, r22, 0
    711c:	3080000c 	addik	r4, r0, 12	// c <_.frame>
    7120:	f8970000 	swi	r4, r23, 0
    7124:	b810ffa8 	brid	-88		// 70cc
    7128:	12630000 	addk	r19, r3, r0

0000712c <__sfp_lock_acquire>:
    712c:	b60f0008 	rtsd	r15, 8
    7130:	80000000 	or	r0, r0, r0

00007134 <__sfp_lock_release>:
    7134:	b60f0008 	rtsd	r15, 8
    7138:	80000000 	or	r0, r0, r0

0000713c <__sinit_lock_acquire>:
    713c:	b60f0008 	rtsd	r15, 8
    7140:	80000000 	or	r0, r0, r0

00007144 <__sinit_lock_release>:
    7144:	b60f0008 	rtsd	r15, 8
    7148:	80000000 	or	r0, r0, r0

0000714c <__fp_lock_all>:
    714c:	b0000001 	imm	1
    7150:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    7154:	30c06e18 	addik	r6, r0, 28184	// 6e18 <__fp_lock>
    7158:	3021ffe4 	addik	r1, r1, -28
    715c:	f9e10000 	swi	r15, r1, 0
    7160:	b9f405c0 	brlid	r15, 1472	// 7720 <_fwalk>
    7164:	80000000 	or	r0, r0, r0
    7168:	e9e10000 	lwi	r15, r1, 0
    716c:	b60f0008 	rtsd	r15, 8
    7170:	3021001c 	addik	r1, r1, 28

00007174 <__fp_unlock_all>:
    7174:	b0000001 	imm	1
    7178:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    717c:	30c06e20 	addik	r6, r0, 28192
    7180:	3021ffe4 	addik	r1, r1, -28
    7184:	f9e10000 	swi	r15, r1, 0
    7188:	b9f40598 	brlid	r15, 1432	// 7720 <_fwalk>
    718c:	80000000 	or	r0, r0, r0
    7190:	e9e10000 	lwi	r15, r1, 0
    7194:	b60f0008 	rtsd	r15, 8
    7198:	3021001c 	addik	r1, r1, 28

0000719c <_malloc_trim_r>:
    719c:	3021ffd8 	addik	r1, r1, -40
    71a0:	fa61001c 	swi	r19, r1, 28
    71a4:	fac10020 	swi	r22, r1, 32
    71a8:	fae10024 	swi	r23, r1, 36
    71ac:	f9e10000 	swi	r15, r1, 0
    71b0:	12e60000 	addk	r23, r6, r0
    71b4:	b9f418ac 	brlid	r15, 6316	// 8a60 <__malloc_lock>
    71b8:	12650000 	addk	r19, r5, r0
    71bc:	b0000001 	imm	1
    71c0:	e860360c 	lwi	r3, r0, 13836
    71c4:	eac30004 	lwi	r22, r3, 4
    71c8:	a6d6fffc 	andi	r22, r22, -4
    71cc:	3076006f 	addik	r3, r22, 111
    71d0:	16f71800 	rsubk	r23, r23, r3
    71d4:	1060b800 	addk	r3, r0, r23
    71d8:	90770041 	srl	r3, r23
    71dc:	90630041 	srl	r3, r3
    71e0:	90630041 	srl	r3, r3
    71e4:	90630041 	srl	r3, r3
    71e8:	90630041 	srl	r3, r3
    71ec:	90630041 	srl	r3, r3
    71f0:	90630041 	srl	r3, r3
    71f4:	3063ffff 	addik	r3, r3, -1
    71f8:	10631800 	addk	r3, r3, r3
    71fc:	10631800 	addk	r3, r3, r3
    7200:	10631800 	addk	r3, r3, r3
    7204:	10631800 	addk	r3, r3, r3
    7208:	10631800 	addk	r3, r3, r3
    720c:	10631800 	addk	r3, r3, r3
    7210:	12e31800 	addk	r23, r3, r3
    7214:	3060007f 	addik	r3, r0, 127
    7218:	14771801 	cmp	r3, r23, r3
    721c:	bea30028 	bgeid	r3, 40		// 7244
    7220:	10b30000 	addk	r5, r19, r0
    7224:	b9f436f0 	brlid	r15, 14064	// a914 <_sbrk_r>
    7228:	10c00000 	addk	r6, r0, r0
    722c:	b0000001 	imm	1
    7230:	e880360c 	lwi	r4, r0, 13836
    7234:	1084b000 	addk	r4, r4, r22
    7238:	88632000 	xor	r3, r3, r4
    723c:	be03002c 	beqid	r3, 44		// 7268
    7240:	10b30000 	addk	r5, r19, r0
    7244:	b9f41824 	brlid	r15, 6180	// 8a68 <__malloc_unlock>
    7248:	10b30000 	addk	r5, r19, r0
    724c:	e9e10000 	lwi	r15, r1, 0
    7250:	ea61001c 	lwi	r19, r1, 28
    7254:	eac10020 	lwi	r22, r1, 32
    7258:	eae10024 	lwi	r23, r1, 36
    725c:	10600000 	addk	r3, r0, r0
    7260:	b60f0008 	rtsd	r15, 8
    7264:	30210028 	addik	r1, r1, 40
    7268:	b9f436ac 	brlid	r15, 13996	// a914 <_sbrk_r>
    726c:	14d70000 	rsubk	r6, r23, r0
    7270:	a8c3ffff 	xori	r6, r3, -1
    7274:	be060050 	beqid	r6, 80		// 72c4
    7278:	16d7b000 	rsubk	r22, r23, r22
    727c:	b0000001 	imm	1
    7280:	e8603a1c 	lwi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    7284:	10b30000 	addk	r5, r19, r0
    7288:	16f71800 	rsubk	r23, r23, r3
    728c:	b0000001 	imm	1
    7290:	e860360c 	lwi	r3, r0, 13836
    7294:	a2d60001 	ori	r22, r22, 1
    7298:	b0000001 	imm	1
    729c:	fae03a1c 	swi	r23, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    72a0:	b9f417c8 	brlid	r15, 6088	// 8a68 <__malloc_unlock>
    72a4:	fac30004 	swi	r22, r3, 4
    72a8:	e9e10000 	lwi	r15, r1, 0
    72ac:	ea61001c 	lwi	r19, r1, 28
    72b0:	eac10020 	lwi	r22, r1, 32
    72b4:	eae10024 	lwi	r23, r1, 36
    72b8:	30600001 	addik	r3, r0, 1
    72bc:	b60f0008 	rtsd	r15, 8
    72c0:	30210028 	addik	r1, r1, 40
    72c4:	b9f43650 	brlid	r15, 13904	// a914 <_sbrk_r>
    72c8:	10b30000 	addk	r5, r19, r0
    72cc:	b0000001 	imm	1
    72d0:	e880360c 	lwi	r4, r0, 13836
    72d4:	30c0000f 	addik	r6, r0, 15
    72d8:	14a41800 	rsubk	r5, r4, r3
    72dc:	14c53001 	cmp	r6, r5, r6
    72e0:	bca6ff64 	bgei	r6, -156		// 7244
    72e4:	a0a50001 	ori	r5, r5, 1
    72e8:	f8a40004 	swi	r5, r4, 4
    72ec:	b0000001 	imm	1
    72f0:	e88035fc 	lwi	r4, r0, 13820	// 135fc <__malloc_sbrk_base>
    72f4:	14641800 	rsubk	r3, r4, r3
    72f8:	b0000001 	imm	1
    72fc:	f8603a1c 	swi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    7300:	b800ff44 	bri	-188		// 7244

00007304 <_free_r>:
    7304:	3021ffdc 	addik	r1, r1, -36
    7308:	fa61001c 	swi	r19, r1, 28
    730c:	f9e10000 	swi	r15, r1, 0
    7310:	fac10020 	swi	r22, r1, 32
    7314:	be06017c 	beqid	r6, 380		// 7490
    7318:	12660000 	addk	r19, r6, r0
    731c:	b9f41744 	brlid	r15, 5956	// 8a60 <__malloc_lock>
    7320:	12c50000 	addk	r22, r5, r0
    7324:	e913fffc 	lwi	r8, r19, -4
    7328:	30f3fff8 	addik	r7, r19, -8
    732c:	b0000001 	imm	1
    7330:	e8a0360c 	lwi	r5, r0, 13836
    7334:	a468fffe 	andi	r3, r8, -2
    7338:	10871800 	addk	r4, r7, r3
    733c:	e8c40004 	lwi	r6, r4, 4
    7340:	88a52000 	xor	r5, r5, r4
    7344:	b0000001 	imm	1
    7348:	3120360c 	addik	r9, r0, 13836
    734c:	be0501d8 	beqid	r5, 472		// 7524
    7350:	a4c6fffc 	andi	r6, r6, -4
    7354:	f8c40004 	swi	r6, r4, 4
    7358:	a5080001 	andi	r8, r8, 1
    735c:	be28002c 	bneid	r8, 44		// 7388
    7360:	10a00000 	addk	r5, r0, r0
    7364:	e953fff8 	lwi	r10, r19, -8
    7368:	14ea3800 	rsubk	r7, r10, r7
    736c:	e9070008 	lwi	r8, r7, 8
    7370:	10635000 	addk	r3, r3, r10
    7374:	89484800 	xor	r10, r8, r9
    7378:	bc0a0208 	beqi	r10, 520		// 7580
    737c:	e947000c 	lwi	r10, r7, 12
    7380:	f948000c 	swi	r10, r8, 12
    7384:	f90a0008 	swi	r8, r10, 8
    7388:	11043000 	addk	r8, r4, r6
    738c:	e9080004 	lwi	r8, r8, 4
    7390:	a5080001 	andi	r8, r8, 1
    7394:	bc28002c 	bnei	r8, 44		// 73c0
    7398:	10633000 	addk	r3, r3, r6
    739c:	be250018 	bneid	r5, 24		// 73b4
    73a0:	e8c40008 	lwi	r6, r4, 8
    73a4:	89264800 	xor	r9, r6, r9
    73a8:	b0000001 	imm	1
    73ac:	3100360c 	addik	r8, r0, 13836
    73b0:	bc0901d8 	beqi	r9, 472		// 7588
    73b4:	e884000c 	lwi	r4, r4, 12
    73b8:	f886000c 	swi	r4, r6, 12
    73bc:	f8c40008 	swi	r6, r4, 8
    73c0:	a0830001 	ori	r4, r3, 1
    73c4:	f8870004 	swi	r4, r7, 4
    73c8:	be2500c0 	bneid	r5, 192		// 7488
    73cc:	d8633800 	sw	r3, r3, r7
    73d0:	308001ff 	addik	r4, r0, 511
    73d4:	14832003 	cmpu	r4, r3, r4
    73d8:	bca400cc 	bgei	r4, 204		// 74a4
    73dc:	30a00004 	addik	r5, r0, 4	// 4 <_.xy>
    73e0:	10801800 	addk	r4, r0, r3
    73e4:	90830041 	srl	r4, r3
    73e8:	90840041 	srl	r4, r4
    73ec:	90840041 	srl	r4, r4
    73f0:	90840041 	srl	r4, r4
    73f4:	90840041 	srl	r4, r4
    73f8:	90840041 	srl	r4, r4
    73fc:	90840041 	srl	r4, r4
    7400:	90840041 	srl	r4, r4
    7404:	90840041 	srl	r4, r4
    7408:	14a42803 	cmpu	r5, r4, r5
    740c:	be4501a4 	bltid	r5, 420		// 75b0
    7410:	30a00014 	addik	r5, r0, 20	// 14 <_.d2>
    7414:	10c01800 	addk	r6, r0, r3
    7418:	90c30041 	srl	r6, r3
    741c:	90c60041 	srl	r6, r6
    7420:	90c60041 	srl	r6, r6
    7424:	90c60041 	srl	r6, r6
    7428:	90c60041 	srl	r6, r6
    742c:	90c60041 	srl	r6, r6
    7430:	30c60038 	addik	r6, r6, 56
    7434:	11063000 	addk	r8, r6, r6
    7438:	b0000001 	imm	1
    743c:	30a03604 	addik	r5, r0, 13828	// 13604 <__malloc_av_>
    7440:	11084000 	addk	r8, r8, r8
    7444:	11084000 	addk	r8, r8, r8
    7448:	11082800 	addk	r8, r8, r5
    744c:	e8880008 	lwi	r4, r8, 8
    7450:	88a44000 	xor	r5, r4, r8
    7454:	bc050174 	beqi	r5, 372		// 75c8
    7458:	e8c40004 	lwi	r6, r4, 4
    745c:	a4c6fffc 	andi	r6, r6, -4
    7460:	14c61803 	cmpu	r6, r6, r3
    7464:	bca60010 	bgei	r6, 16		// 7474
    7468:	e8840008 	lwi	r4, r4, 8
    746c:	88c82000 	xor	r6, r8, r4
    7470:	bc26ffe8 	bnei	r6, -24		// 7458
    7474:	e864000c 	lwi	r3, r4, 12
    7478:	f867000c 	swi	r3, r7, 12
    747c:	f8870008 	swi	r4, r7, 8
    7480:	f8e30008 	swi	r7, r3, 8
    7484:	f8e4000c 	swi	r7, r4, 12
    7488:	b9f415e0 	brlid	r15, 5600	// 8a68 <__malloc_unlock>
    748c:	10b60000 	addk	r5, r22, r0
    7490:	e9e10000 	lwi	r15, r1, 0
    7494:	ea61001c 	lwi	r19, r1, 28
    7498:	eac10020 	lwi	r22, r1, 32
    749c:	b60f0008 	rtsd	r15, 8
    74a0:	30210024 	addik	r1, r1, 36
    74a4:	10801800 	addk	r4, r0, r3
    74a8:	90830041 	srl	r4, r3
    74ac:	90840041 	srl	r4, r4
    74b0:	90840041 	srl	r4, r4
    74b4:	b0000001 	imm	1
    74b8:	30a03604 	addik	r5, r0, 13828	// 13604 <__malloc_av_>
    74bc:	10642000 	addk	r3, r4, r4
    74c0:	10631800 	addk	r3, r3, r3
    74c4:	10631800 	addk	r3, r3, r3
    74c8:	10632800 	addk	r3, r3, r5
    74cc:	11002000 	addk	r8, r0, r4
    74d0:	91040001 	sra	r8, r4
    74d4:	91080001 	sra	r8, r8
    74d8:	30800001 	addik	r4, r0, 1
    74dc:	e8a30008 	lwi	r5, r3, 8
    74e0:	a648001f 	andi	r18, r8, 31
    74e4:	10c02000 	addk	r6, r0, r4
    74e8:	be120014 	beqid	r18, 20		// 74fc
    74ec:	10c60000 	addk	r6, r6, r0
    74f0:	3252ffff 	addik	r18, r18, -1
    74f4:	be32fffc 	bneid	r18, -4		// 74f0
    74f8:	10c63000 	addk	r6, r6, r6
    74fc:	b0000001 	imm	1
    7500:	e8803608 	lwi	r4, r0, 13832
    7504:	f867000c 	swi	r3, r7, 12
    7508:	f8a70008 	swi	r5, r7, 8
    750c:	80862000 	or	r4, r6, r4
    7510:	b0000001 	imm	1
    7514:	f8803608 	swi	r4, r0, 13832
    7518:	f8e30008 	swi	r7, r3, 8
    751c:	b810ff6c 	brid	-148		// 7488
    7520:	f8e5000c 	swi	r7, r5, 12
    7524:	a5080001 	andi	r8, r8, 1
    7528:	be280024 	bneid	r8, 36		// 754c
    752c:	10661800 	addk	r3, r6, r3
    7530:	e8d3fff8 	lwi	r6, r19, -8
    7534:	14e63800 	rsubk	r7, r6, r7
    7538:	e887000c 	lwi	r4, r7, 12
    753c:	e8a70008 	lwi	r5, r7, 8
    7540:	10633000 	addk	r3, r3, r6
    7544:	f885000c 	swi	r4, r5, 12
    7548:	f8a40008 	swi	r5, r4, 8
    754c:	b0000001 	imm	1
    7550:	e8c03600 	lwi	r6, r0, 13824	// 13600 <__malloc_trim_threshold>
    7554:	a0830001 	ori	r4, r3, 1
    7558:	f8870004 	swi	r4, r7, 4
    755c:	b0000001 	imm	1
    7560:	f8e0360c 	swi	r7, r0, 13836
    7564:	14661803 	cmpu	r3, r6, r3
    7568:	bc43ff20 	blti	r3, -224		// 7488
    756c:	b0000001 	imm	1
    7570:	e8c03a4c 	lwi	r6, r0, 14924	// 13a4c <__malloc_top_pad>
    7574:	b9f4fc28 	brlid	r15, -984	// 719c <_malloc_trim_r>
    7578:	10b60000 	addk	r5, r22, r0
    757c:	b800ff0c 	bri	-244		// 7488
    7580:	b810fe08 	brid	-504		// 7388
    7584:	30a00001 	addik	r5, r0, 1
    7588:	b0000001 	imm	1
    758c:	f8e03618 	swi	r7, r0, 13848
    7590:	b0000001 	imm	1
    7594:	f8e03614 	swi	r7, r0, 13844
    7598:	a0830001 	ori	r4, r3, 1
    759c:	f907000c 	swi	r8, r7, 12
    75a0:	f9070008 	swi	r8, r7, 8
    75a4:	f8870004 	swi	r4, r7, 4
    75a8:	b810fee0 	brid	-288		// 7488
    75ac:	d8633800 	sw	r3, r3, r7
    75b0:	14a42803 	cmpu	r5, r4, r5
    75b4:	be45005c 	bltid	r5, 92		// 7610
    75b8:	30a00054 	addik	r5, r0, 84
    75bc:	30c4005b 	addik	r6, r4, 91
    75c0:	b810fe78 	brid	-392		// 7438
    75c4:	11063000 	addk	r8, r6, r6
    75c8:	10603000 	addk	r3, r0, r6
    75cc:	90660001 	sra	r3, r6
    75d0:	90630001 	sra	r3, r3
    75d4:	30c00001 	addik	r6, r0, 1
    75d8:	a643001f 	andi	r18, r3, 31
    75dc:	10a03000 	addk	r5, r0, r6
    75e0:	be120014 	beqid	r18, 20		// 75f4
    75e4:	10a50000 	addk	r5, r5, r0
    75e8:	3252ffff 	addik	r18, r18, -1
    75ec:	be32fffc 	bneid	r18, -4		// 75e8
    75f0:	10a52800 	addk	r5, r5, r5
    75f4:	b0000001 	imm	1
    75f8:	e8603608 	lwi	r3, r0, 13832
    75fc:	80651800 	or	r3, r5, r3
    7600:	b0000001 	imm	1
    7604:	f8603608 	swi	r3, r0, 13832
    7608:	b810fe70 	brid	-400		// 7478
    760c:	10640000 	addk	r3, r4, r0
    7610:	14a42803 	cmpu	r5, r4, r5
    7614:	be450048 	bltid	r5, 72		// 765c
    7618:	30a00154 	addik	r5, r0, 340
    761c:	10c01800 	addk	r6, r0, r3
    7620:	90c30041 	srl	r6, r3
    7624:	90c60041 	srl	r6, r6
    7628:	90c60041 	srl	r6, r6
    762c:	90c60041 	srl	r6, r6
    7630:	90c60041 	srl	r6, r6
    7634:	90c60041 	srl	r6, r6
    7638:	90c60041 	srl	r6, r6
    763c:	90c60041 	srl	r6, r6
    7640:	90c60041 	srl	r6, r6
    7644:	90c60041 	srl	r6, r6
    7648:	90c60041 	srl	r6, r6
    764c:	90c60041 	srl	r6, r6
    7650:	30c6006e 	addik	r6, r6, 110
    7654:	b810fde4 	brid	-540		// 7438
    7658:	11063000 	addk	r8, r6, r6
    765c:	14a42803 	cmpu	r5, r4, r5
    7660:	be450054 	bltid	r5, 84		// 76b4
    7664:	30a00554 	addik	r5, r0, 1364
    7668:	10c01800 	addk	r6, r0, r3
    766c:	90c30041 	srl	r6, r3
    7670:	90c60041 	srl	r6, r6
    7674:	90c60041 	srl	r6, r6
    7678:	90c60041 	srl	r6, r6
    767c:	90c60041 	srl	r6, r6
    7680:	90c60041 	srl	r6, r6
    7684:	90c60041 	srl	r6, r6
    7688:	90c60041 	srl	r6, r6
    768c:	90c60041 	srl	r6, r6
    7690:	90c60041 	srl	r6, r6
    7694:	90c60041 	srl	r6, r6
    7698:	90c60041 	srl	r6, r6
    769c:	90c60041 	srl	r6, r6
    76a0:	90c60041 	srl	r6, r6
    76a4:	90c60041 	srl	r6, r6
    76a8:	30c60077 	addik	r6, r6, 119
    76ac:	b810fd8c 	brid	-628		// 7438
    76b0:	11063000 	addk	r8, r6, r6
    76b4:	14842803 	cmpu	r4, r4, r5
    76b8:	bc44005c 	blti	r4, 92		// 7714
    76bc:	10c01800 	addk	r6, r0, r3
    76c0:	90c30041 	srl	r6, r3
    76c4:	90c60041 	srl	r6, r6
    76c8:	90c60041 	srl	r6, r6
    76cc:	90c60041 	srl	r6, r6
    76d0:	90c60041 	srl	r6, r6
    76d4:	90c60041 	srl	r6, r6
    76d8:	90c60041 	srl	r6, r6
    76dc:	90c60041 	srl	r6, r6
    76e0:	90c60041 	srl	r6, r6
    76e4:	90c60041 	srl	r6, r6
    76e8:	90c60041 	srl	r6, r6
    76ec:	90c60041 	srl	r6, r6
    76f0:	90c60041 	srl	r6, r6
    76f4:	90c60041 	srl	r6, r6
    76f8:	90c60041 	srl	r6, r6
    76fc:	90c60041 	srl	r6, r6
    7700:	90c60041 	srl	r6, r6
    7704:	90c60041 	srl	r6, r6
    7708:	30c6007c 	addik	r6, r6, 124
    770c:	b810fd2c 	brid	-724		// 7438
    7710:	11063000 	addk	r8, r6, r6
    7714:	310000fc 	addik	r8, r0, 252
    7718:	b810fd20 	brid	-736		// 7438
    771c:	30c0007e 	addik	r6, r0, 126

00007720 <_fwalk>:
    7720:	3021ffcc 	addik	r1, r1, -52
    7724:	fb21002c 	swi	r25, r1, 44
    7728:	f9e10000 	swi	r15, r1, 0
    772c:	fa61001c 	swi	r19, r1, 28
    7730:	fac10020 	swi	r22, r1, 32
    7734:	fae10024 	swi	r23, r1, 36
    7738:	fb010028 	swi	r24, r1, 40
    773c:	332500d8 	addik	r25, r5, 216
    7740:	be1900a4 	beqid	r25, 164		// 77e4
    7744:	fb410030 	swi	r26, r1, 48
    7748:	13060000 	addk	r24, r6, r0
    774c:	13400000 	addk	r26, r0, r0
    7750:	32e00001 	addik	r23, r0, 1
    7754:	ead90004 	lwi	r22, r25, 4
    7758:	32d6ffff 	addik	r22, r22, -1
    775c:	be560058 	bltid	r22, 88		// 77b4
    7760:	ea790008 	lwi	r19, r25, 8
    7764:	e493000c 	lhui	r4, r19, 12
    7768:	32d6ffff 	addik	r22, r22, -1
    776c:	b0000000 	imm	0
    7770:	a4e4ffff 	andi	r7, r4, -1
    7774:	90840061 	sext16	r4, r4
    7778:	be040030 	beqid	r4, 48		// 77a8
    777c:	14e7b803 	cmpu	r7, r7, r23
    7780:	bea7002c 	bgeid	r7, 44		// 77ac
    7784:	a896ffff 	xori	r4, r22, -1
    7788:	e493000e 	lhui	r4, r19, 14
    778c:	90840061 	sext16	r4, r4
    7790:	a884ffff 	xori	r4, r4, -1
    7794:	be040014 	beqid	r4, 20		// 77a8
    7798:	10b30000 	addk	r5, r19, r0
    779c:	99fcc000 	brald	r15, r24
    77a0:	80000000 	or	r0, r0, r0
    77a4:	835a1800 	or	r26, r26, r3
    77a8:	a896ffff 	xori	r4, r22, -1
    77ac:	be24ffb8 	bneid	r4, -72		// 7764
    77b0:	32730068 	addik	r19, r19, 104
    77b4:	eb390000 	lwi	r25, r25, 0
    77b8:	bc39ff9c 	bnei	r25, -100		// 7754
    77bc:	107a0000 	addk	r3, r26, r0
    77c0:	e9e10000 	lwi	r15, r1, 0
    77c4:	ea61001c 	lwi	r19, r1, 28
    77c8:	eac10020 	lwi	r22, r1, 32
    77cc:	eae10024 	lwi	r23, r1, 36
    77d0:	eb010028 	lwi	r24, r1, 40
    77d4:	eb21002c 	lwi	r25, r1, 44
    77d8:	eb410030 	lwi	r26, r1, 48
    77dc:	b60f0008 	rtsd	r15, 8
    77e0:	30210034 	addik	r1, r1, 52
    77e4:	b810ffd8 	brid	-40		// 77bc
    77e8:	13590000 	addk	r26, r25, r0

000077ec <_fwalk_reent>:
    77ec:	3021ffc8 	addik	r1, r1, -56
    77f0:	fb21002c 	swi	r25, r1, 44
    77f4:	fb610034 	swi	r27, r1, 52
    77f8:	f9e10000 	swi	r15, r1, 0
    77fc:	fa61001c 	swi	r19, r1, 28
    7800:	fac10020 	swi	r22, r1, 32
    7804:	fae10024 	swi	r23, r1, 36
    7808:	fb010028 	swi	r24, r1, 40
    780c:	fb410030 	swi	r26, r1, 48
    7810:	332500d8 	addik	r25, r5, 216
    7814:	be1900a8 	beqid	r25, 168		// 78bc
    7818:	13650000 	addk	r27, r5, r0
    781c:	13060000 	addk	r24, r6, r0
    7820:	13400000 	addk	r26, r0, r0
    7824:	32e00001 	addik	r23, r0, 1
    7828:	ead90004 	lwi	r22, r25, 4
    782c:	32d6ffff 	addik	r22, r22, -1
    7830:	be560058 	bltid	r22, 88		// 7888
    7834:	ea790008 	lwi	r19, r25, 8
    7838:	e493000c 	lhui	r4, r19, 12
    783c:	32d6ffff 	addik	r22, r22, -1
    7840:	b0000000 	imm	0
    7844:	a4e4ffff 	andi	r7, r4, -1
    7848:	90840061 	sext16	r4, r4
    784c:	be040030 	beqid	r4, 48		// 787c
    7850:	14e7b803 	cmpu	r7, r7, r23
    7854:	bea70028 	bgeid	r7, 40		// 787c
    7858:	10d30000 	addk	r6, r19, r0
    785c:	e493000e 	lhui	r4, r19, 14
    7860:	90840061 	sext16	r4, r4
    7864:	a884ffff 	xori	r4, r4, -1
    7868:	be040014 	beqid	r4, 20		// 787c
    786c:	10bb0000 	addk	r5, r27, r0
    7870:	99fcc000 	brald	r15, r24
    7874:	80000000 	or	r0, r0, r0
    7878:	835a1800 	or	r26, r26, r3
    787c:	a896ffff 	xori	r4, r22, -1
    7880:	be24ffb8 	bneid	r4, -72		// 7838
    7884:	32730068 	addik	r19, r19, 104
    7888:	eb390000 	lwi	r25, r25, 0
    788c:	bc39ff9c 	bnei	r25, -100		// 7828
    7890:	107a0000 	addk	r3, r26, r0
    7894:	e9e10000 	lwi	r15, r1, 0
    7898:	ea61001c 	lwi	r19, r1, 28
    789c:	eac10020 	lwi	r22, r1, 32
    78a0:	eae10024 	lwi	r23, r1, 36
    78a4:	eb010028 	lwi	r24, r1, 40
    78a8:	eb21002c 	lwi	r25, r1, 44
    78ac:	eb410030 	lwi	r26, r1, 48
    78b0:	eb610034 	lwi	r27, r1, 52
    78b4:	b60f0008 	rtsd	r15, 8
    78b8:	30210038 	addik	r1, r1, 56
    78bc:	b810ffd4 	brid	-44		// 7890
    78c0:	13590000 	addk	r26, r25, r0

000078c4 <_setlocale_r>:
    78c4:	3021ffe0 	addik	r1, r1, -32
    78c8:	fa61001c 	swi	r19, r1, 28
    78cc:	f9e10000 	swi	r15, r1, 0
    78d0:	be07001c 	beqid	r7, 28		// 78ec
    78d4:	12670000 	addk	r19, r7, r0
    78d8:	b0000001 	imm	1
    78dc:	30c02c84 	addik	r6, r0, 11396
    78e0:	b9f43204 	brlid	r15, 12804	// aae4 <strcmp>
    78e4:	10a70000 	addk	r5, r7, r0
    78e8:	bc230020 	bnei	r3, 32		// 7908
    78ec:	b0000001 	imm	1
    78f0:	30802c80 	addik	r4, r0, 11392
    78f4:	10640000 	addk	r3, r4, r0
    78f8:	e9e10000 	lwi	r15, r1, 0
    78fc:	ea61001c 	lwi	r19, r1, 28
    7900:	b60f0008 	rtsd	r15, 8
    7904:	30210020 	addik	r1, r1, 32
    7908:	b0000001 	imm	1
    790c:	30c02c80 	addik	r6, r0, 11392
    7910:	b9f431d4 	brlid	r15, 12756	// aae4 <strcmp>
    7914:	10b30000 	addk	r5, r19, r0
    7918:	bc03ffd4 	beqi	r3, -44		// 78ec
    791c:	b0000001 	imm	1
    7920:	30c02c8c 	addik	r6, r0, 11404
    7924:	b9f431c0 	brlid	r15, 12736	// aae4 <strcmp>
    7928:	10b30000 	addk	r5, r19, r0
    792c:	b0000001 	imm	1
    7930:	30802c80 	addik	r4, r0, 11392
    7934:	be03ffc4 	beqid	r3, -60		// 78f8
    7938:	10640000 	addk	r3, r4, r0
    793c:	b810ffb8 	brid	-72		// 78f4
    7940:	10800000 	addk	r4, r0, r0

00007944 <__locale_charset>:
    7944:	b0000001 	imm	1
    7948:	30603584 	addik	r3, r0, 13700	// 13584 <lc_ctype_charset>
    794c:	b60f0008 	rtsd	r15, 8
    7950:	80000000 	or	r0, r0, r0

00007954 <__locale_mb_cur_max>:
    7954:	b0000001 	imm	1
    7958:	e8603580 	lwi	r3, r0, 13696	// 13580 <__mb_cur_max>
    795c:	b60f0008 	rtsd	r15, 8
    7960:	80000000 	or	r0, r0, r0

00007964 <__locale_msgcharset>:
    7964:	b0000001 	imm	1
    7968:	306035a4 	addik	r3, r0, 13732	// 135a4 <lc_message_charset>
    796c:	b60f0008 	rtsd	r15, 8
    7970:	80000000 	or	r0, r0, r0

00007974 <__locale_cjk_lang>:
    7974:	b60f0008 	rtsd	r15, 8
    7978:	10600000 	addk	r3, r0, r0

0000797c <_localeconv_r>:
    797c:	b0000001 	imm	1
    7980:	306035c4 	addik	r3, r0, 13764	// 135c4 <lconv>
    7984:	b60f0008 	rtsd	r15, 8
    7988:	80000000 	or	r0, r0, r0

0000798c <setlocale>:
    798c:	10650000 	addk	r3, r5, r0
    7990:	10e60000 	addk	r7, r6, r0
    7994:	b0000001 	imm	1
    7998:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    799c:	3021ffe4 	addik	r1, r1, -28
    79a0:	f9e10000 	swi	r15, r1, 0
    79a4:	b9f4ff20 	brlid	r15, -224	// 78c4 <_setlocale_r>
    79a8:	10c30000 	addk	r6, r3, r0
    79ac:	e9e10000 	lwi	r15, r1, 0
    79b0:	b60f0008 	rtsd	r15, 8
    79b4:	3021001c 	addik	r1, r1, 28

000079b8 <localeconv>:
    79b8:	b0000001 	imm	1
    79bc:	306035c4 	addik	r3, r0, 13764	// 135c4 <lconv>
    79c0:	b60f0008 	rtsd	r15, 8
    79c4:	80000000 	or	r0, r0, r0

000079c8 <__smakebuf_r>:
    79c8:	3021ff98 	addik	r1, r1, -104
    79cc:	fa610058 	swi	r19, r1, 88
    79d0:	f9e10000 	swi	r15, r1, 0
    79d4:	fac1005c 	swi	r22, r1, 92
    79d8:	fae10060 	swi	r23, r1, 96
    79dc:	fb010064 	swi	r24, r1, 100
    79e0:	e466000c 	lhui	r3, r6, 12
    79e4:	90630061 	sext16	r3, r3
    79e8:	a4830002 	andi	r4, r3, 2
    79ec:	90840061 	sext16	r4, r4
    79f0:	be240154 	bneid	r4, 340		// 7b44
    79f4:	12660000 	addk	r19, r6, r0
    79f8:	e4c6000e 	lhui	r6, r6, 14
    79fc:	90c60061 	sext16	r6, r6
    7a00:	be4600d8 	bltid	r6, 216		// 7ad8
    7a04:	12c50000 	addk	r22, r5, r0
    7a08:	b9f45028 	brlid	r15, 20520	// ca30 <_fstat_r>
    7a0c:	30e1001c 	addik	r7, r1, 28
    7a10:	be4300c0 	bltid	r3, 192		// 7ad0
    7a14:	e8610020 	lwi	r3, r1, 32
    7a18:	b0000000 	imm	0
    7a1c:	a463f000 	andi	r3, r3, -4096
    7a20:	a8832000 	xori	r4, r3, 8192
    7a24:	14a40000 	rsubk	r5, r4, r0
    7a28:	80852000 	or	r4, r5, r4
    7a2c:	a884ffff 	xori	r4, r4, -1
    7a30:	b0000000 	imm	0
    7a34:	a8638000 	xori	r3, r3, -32768
    7a38:	13002000 	addk	r24, r0, r4
    7a3c:	93040041 	srl	r24, r4
    7a40:	93180041 	srl	r24, r24
    7a44:	93180041 	srl	r24, r24
    7a48:	93180041 	srl	r24, r24
    7a4c:	93180041 	srl	r24, r24
    7a50:	93180041 	srl	r24, r24
    7a54:	93180041 	srl	r24, r24
    7a58:	93180041 	srl	r24, r24
    7a5c:	93180041 	srl	r24, r24
    7a60:	93180041 	srl	r24, r24
    7a64:	93180041 	srl	r24, r24
    7a68:	93180041 	srl	r24, r24
    7a6c:	93180041 	srl	r24, r24
    7a70:	93180041 	srl	r24, r24
    7a74:	93180041 	srl	r24, r24
    7a78:	93180041 	srl	r24, r24
    7a7c:	93180041 	srl	r24, r24
    7a80:	93180041 	srl	r24, r24
    7a84:	93180041 	srl	r24, r24
    7a88:	93180041 	srl	r24, r24
    7a8c:	93180041 	srl	r24, r24
    7a90:	93180041 	srl	r24, r24
    7a94:	93180041 	srl	r24, r24
    7a98:	93180041 	srl	r24, r24
    7a9c:	93180041 	srl	r24, r24
    7aa0:	93180041 	srl	r24, r24
    7aa4:	93180041 	srl	r24, r24
    7aa8:	93180041 	srl	r24, r24
    7aac:	93180041 	srl	r24, r24
    7ab0:	93180041 	srl	r24, r24
    7ab4:	93180041 	srl	r24, r24
    7ab8:	bc0300c4 	beqi	r3, 196		// 7b7c
    7abc:	e473000c 	lhui	r3, r19, 12
    7ac0:	32e00400 	addik	r23, r0, 1024
    7ac4:	a0630800 	ori	r3, r3, 2048
    7ac8:	b810002c 	brid	44		// 7af4
    7acc:	f473000c 	shi	r3, r19, 12
    7ad0:	e473000c 	lhui	r3, r19, 12
    7ad4:	90630061 	sext16	r3, r3
    7ad8:	a4830080 	andi	r4, r3, 128
    7adc:	90840061 	sext16	r4, r4
    7ae0:	be240094 	bneid	r4, 148		// 7b74
    7ae4:	32e00400 	addik	r23, r0, 1024
    7ae8:	a0630800 	ori	r3, r3, 2048
    7aec:	f473000c 	shi	r3, r19, 12
    7af0:	13000000 	addk	r24, r0, r0
    7af4:	10b60000 	addk	r5, r22, r0
    7af8:	b9f40160 	brlid	r15, 352	// 7c58 <_malloc_r>
    7afc:	10d70000 	addk	r6, r23, r0
    7b00:	bc0300d0 	beqi	r3, 208		// 7bd0
    7b04:	e493000c 	lhui	r4, r19, 12
    7b08:	30a06e28 	addik	r5, r0, 28200	// 6e28 <_cleanup_r>
    7b0c:	a0840080 	ori	r4, r4, 128
    7b10:	f8b60028 	swi	r5, r22, 40
    7b14:	f493000c 	shi	r4, r19, 12
    7b18:	f8730000 	swi	r3, r19, 0
    7b1c:	f8730010 	swi	r3, r19, 16
    7b20:	be380088 	bneid	r24, 136		// 7ba8
    7b24:	faf30014 	swi	r23, r19, 20
    7b28:	e9e10000 	lwi	r15, r1, 0
    7b2c:	ea610058 	lwi	r19, r1, 88
    7b30:	eac1005c 	lwi	r22, r1, 92
    7b34:	eae10060 	lwi	r23, r1, 96
    7b38:	eb010064 	lwi	r24, r1, 100
    7b3c:	b60f0008 	rtsd	r15, 8
    7b40:	30210068 	addik	r1, r1, 104
    7b44:	30660047 	addik	r3, r6, 71
    7b48:	f8660000 	swi	r3, r6, 0
    7b4c:	f8660010 	swi	r3, r6, 16
    7b50:	30600001 	addik	r3, r0, 1
    7b54:	f8660014 	swi	r3, r6, 20
    7b58:	e9e10000 	lwi	r15, r1, 0
    7b5c:	ea610058 	lwi	r19, r1, 88
    7b60:	eac1005c 	lwi	r22, r1, 92
    7b64:	eae10060 	lwi	r23, r1, 96
    7b68:	eb010064 	lwi	r24, r1, 100
    7b6c:	b60f0008 	rtsd	r15, 8
    7b70:	30210068 	addik	r1, r1, 104
    7b74:	b810ff74 	brid	-140		// 7ae8
    7b78:	32e00040 	addik	r23, r0, 64	// 40 <_.tmp>
    7b7c:	e893002c 	lwi	r4, r19, 44
    7b80:	b0000000 	imm	0
    7b84:	3060aa64 	addik	r3, r0, -21916	// aa64 <__sseek>
    7b88:	88641800 	xor	r3, r4, r3
    7b8c:	bc23ff30 	bnei	r3, -208		// 7abc
    7b90:	e473000c 	lhui	r3, r19, 12
    7b94:	32e00400 	addik	r23, r0, 1024
    7b98:	faf30050 	swi	r23, r19, 80
    7b9c:	8063b800 	or	r3, r3, r23
    7ba0:	b810ff54 	brid	-172		// 7af4
    7ba4:	f473000c 	shi	r3, r19, 12
    7ba8:	e4d3000e 	lhui	r6, r19, 14
    7bac:	10b60000 	addk	r5, r22, r0
    7bb0:	b9f45454 	brlid	r15, 21588	// d004 <_isatty_r>
    7bb4:	90c60061 	sext16	r6, r6
    7bb8:	be03ff74 	beqid	r3, -140		// 7b2c
    7bbc:	e9e10000 	lwi	r15, r1, 0
    7bc0:	e473000c 	lhui	r3, r19, 12
    7bc4:	a0630001 	ori	r3, r3, 1
    7bc8:	b810ff60 	brid	-160		// 7b28
    7bcc:	f473000c 	shi	r3, r19, 12
    7bd0:	e473000c 	lhui	r3, r19, 12
    7bd4:	90630061 	sext16	r3, r3
    7bd8:	a4830200 	andi	r4, r3, 512
    7bdc:	90840061 	sext16	r4, r4
    7be0:	be24ff4c 	bneid	r4, -180		// 7b2c
    7be4:	e9e10000 	lwi	r15, r1, 0
    7be8:	a0630002 	ori	r3, r3, 2
    7bec:	30930047 	addik	r4, r19, 71
    7bf0:	f473000c 	shi	r3, r19, 12
    7bf4:	30600001 	addik	r3, r0, 1
    7bf8:	f8930000 	swi	r4, r19, 0
    7bfc:	f8930010 	swi	r4, r19, 16
    7c00:	b810ff28 	brid	-216		// 7b28
    7c04:	f8730014 	swi	r3, r19, 20

00007c08 <malloc>:
    7c08:	10c50000 	addk	r6, r5, r0
    7c0c:	b0000001 	imm	1
    7c10:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    7c14:	3021ffe4 	addik	r1, r1, -28
    7c18:	f9e10000 	swi	r15, r1, 0
    7c1c:	b9f4003c 	brlid	r15, 60	// 7c58 <_malloc_r>
    7c20:	80000000 	or	r0, r0, r0
    7c24:	e9e10000 	lwi	r15, r1, 0
    7c28:	b60f0008 	rtsd	r15, 8
    7c2c:	3021001c 	addik	r1, r1, 28

00007c30 <free>:
    7c30:	10c50000 	addk	r6, r5, r0
    7c34:	b0000001 	imm	1
    7c38:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    7c3c:	3021ffe4 	addik	r1, r1, -28
    7c40:	f9e10000 	swi	r15, r1, 0
    7c44:	b9f4f6c0 	brlid	r15, -2368	// 7304 <_free_r>
    7c48:	80000000 	or	r0, r0, r0
    7c4c:	e9e10000 	lwi	r15, r1, 0
    7c50:	b60f0008 	rtsd	r15, 8
    7c54:	3021001c 	addik	r1, r1, 28

00007c58 <_malloc_r>:
    7c58:	3021ffc4 	addik	r1, r1, -60
    7c5c:	fac10020 	swi	r22, r1, 32
    7c60:	30600016 	addik	r3, r0, 22
    7c64:	32c6000b 	addik	r22, r6, 11
    7c68:	fae10024 	swi	r23, r1, 36
    7c6c:	f9e10000 	swi	r15, r1, 0
    7c70:	fa61001c 	swi	r19, r1, 28
    7c74:	fb010028 	swi	r24, r1, 40
    7c78:	fb21002c 	swi	r25, r1, 44
    7c7c:	fb410030 	swi	r26, r1, 48
    7c80:	fb610034 	swi	r27, r1, 52
    7c84:	fb810038 	swi	r28, r1, 56
    7c88:	14761803 	cmpu	r3, r22, r3
    7c8c:	bea30148 	bgeid	r3, 328		// 7dd4
    7c90:	12e50000 	addk	r23, r5, r0
    7c94:	a6d6fff8 	andi	r22, r22, -8
    7c98:	14c6b003 	cmpu	r6, r6, r22
    7c9c:	1060b000 	addk	r3, r0, r22
    7ca0:	90760041 	srl	r3, r22
    7ca4:	90630041 	srl	r3, r3
    7ca8:	90630041 	srl	r3, r3
    7cac:	90630041 	srl	r3, r3
    7cb0:	90630041 	srl	r3, r3
    7cb4:	90630041 	srl	r3, r3
    7cb8:	90630041 	srl	r3, r3
    7cbc:	90630041 	srl	r3, r3
    7cc0:	90630041 	srl	r3, r3
    7cc4:	90630041 	srl	r3, r3
    7cc8:	90630041 	srl	r3, r3
    7ccc:	90630041 	srl	r3, r3
    7cd0:	90630041 	srl	r3, r3
    7cd4:	90630041 	srl	r3, r3
    7cd8:	90630041 	srl	r3, r3
    7cdc:	90630041 	srl	r3, r3
    7ce0:	90630041 	srl	r3, r3
    7ce4:	90630041 	srl	r3, r3
    7ce8:	90630041 	srl	r3, r3
    7cec:	90630041 	srl	r3, r3
    7cf0:	90630041 	srl	r3, r3
    7cf4:	90630041 	srl	r3, r3
    7cf8:	90630041 	srl	r3, r3
    7cfc:	90630041 	srl	r3, r3
    7d00:	90630041 	srl	r3, r3
    7d04:	90630041 	srl	r3, r3
    7d08:	90630041 	srl	r3, r3
    7d0c:	90630041 	srl	r3, r3
    7d10:	90630041 	srl	r3, r3
    7d14:	90630041 	srl	r3, r3
    7d18:	90630041 	srl	r3, r3
    7d1c:	bc4600c8 	blti	r6, 200		// 7de4
    7d20:	be2300c8 	bneid	r3, 200		// 7de8
    7d24:	3060000c 	addik	r3, r0, 12	// c <_.frame>
    7d28:	b9f40d38 	brlid	r15, 3384	// 8a60 <__malloc_lock>
    7d2c:	10b70000 	addk	r5, r23, r0
    7d30:	306001f7 	addik	r3, r0, 503
    7d34:	14761803 	cmpu	r3, r22, r3
    7d38:	bc4300bc 	blti	r3, 188		// 7df4
    7d3c:	1100b000 	addk	r8, r0, r22
    7d40:	91160041 	srl	r8, r22
    7d44:	91080041 	srl	r8, r8
    7d48:	91080041 	srl	r8, r8
    7d4c:	b0000001 	imm	1
    7d50:	33003604 	addik	r24, r0, 13828	// 13604 <__malloc_av_>
    7d54:	10684000 	addk	r3, r8, r8
    7d58:	10631800 	addk	r3, r3, r3
    7d5c:	10631800 	addk	r3, r3, r3
    7d60:	10781800 	addk	r3, r24, r3
    7d64:	ea63000c 	lwi	r19, r3, 12
    7d68:	88731800 	xor	r3, r19, r3
    7d6c:	be030714 	beqid	r3, 1812		// 8480
    7d70:	30730008 	addik	r3, r19, 8
    7d74:	e8730004 	lwi	r3, r19, 4
    7d78:	e893000c 	lwi	r4, r19, 12
    7d7c:	e8d30008 	lwi	r6, r19, 8
    7d80:	a463fffc 	andi	r3, r3, -4
    7d84:	10731800 	addk	r3, r19, r3
    7d88:	e8e30004 	lwi	r7, r3, 4
    7d8c:	10b70000 	addk	r5, r23, r0
    7d90:	f886000c 	swi	r4, r6, 12
    7d94:	a0e70001 	ori	r7, r7, 1
    7d98:	f8e30004 	swi	r7, r3, 4
    7d9c:	b9f40ccc 	brlid	r15, 3276	// 8a68 <__malloc_unlock>
    7da0:	f8c40008 	swi	r6, r4, 8
    7da4:	30730008 	addik	r3, r19, 8
    7da8:	e9e10000 	lwi	r15, r1, 0
    7dac:	ea61001c 	lwi	r19, r1, 28
    7db0:	eac10020 	lwi	r22, r1, 32
    7db4:	eae10024 	lwi	r23, r1, 36
    7db8:	eb010028 	lwi	r24, r1, 40
    7dbc:	eb21002c 	lwi	r25, r1, 44
    7dc0:	eb410030 	lwi	r26, r1, 48
    7dc4:	eb610034 	lwi	r27, r1, 52
    7dc8:	eb810038 	lwi	r28, r1, 56
    7dcc:	b60f0008 	rtsd	r15, 8
    7dd0:	3021003c 	addik	r1, r1, 60
    7dd4:	32c00010 	addik	r22, r0, 16	// 10 <_.d1>
    7dd8:	14c6b003 	cmpu	r6, r6, r22
    7ddc:	bea6ff44 	bgeid	r6, -188		// 7d20
    7de0:	10600000 	addk	r3, r0, r0
    7de4:	3060000c 	addik	r3, r0, 12	// c <_.frame>
    7de8:	f8770000 	swi	r3, r23, 0
    7dec:	b810ffbc 	brid	-68		// 7da8
    7df0:	10600000 	addk	r3, r0, r0
    7df4:	10a0b000 	addk	r5, r0, r22
    7df8:	90b60041 	srl	r5, r22
    7dfc:	90a50041 	srl	r5, r5
    7e00:	90a50041 	srl	r5, r5
    7e04:	90a50041 	srl	r5, r5
    7e08:	90a50041 	srl	r5, r5
    7e0c:	90a50041 	srl	r5, r5
    7e10:	90a50041 	srl	r5, r5
    7e14:	90a50041 	srl	r5, r5
    7e18:	90a50041 	srl	r5, r5
    7e1c:	be050270 	beqid	r5, 624		// 808c
    7e20:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    7e24:	14651803 	cmpu	r3, r5, r3
    7e28:	be4304c0 	bltid	r3, 1216		// 82e8
    7e2c:	30600014 	addik	r3, r0, 20	// 14 <_.d2>
    7e30:	10a0b000 	addk	r5, r0, r22
    7e34:	90b60041 	srl	r5, r22
    7e38:	90a50041 	srl	r5, r5
    7e3c:	90a50041 	srl	r5, r5
    7e40:	90a50041 	srl	r5, r5
    7e44:	90a50041 	srl	r5, r5
    7e48:	90a50041 	srl	r5, r5
    7e4c:	30a50038 	addik	r5, r5, 56
    7e50:	10e52800 	addk	r7, r5, r5
    7e54:	b0000001 	imm	1
    7e58:	33003604 	addik	r24, r0, 13828	// 13604 <__malloc_av_>
    7e5c:	10e73800 	addk	r7, r7, r7
    7e60:	10e73800 	addk	r7, r7, r7
    7e64:	10f83800 	addk	r7, r24, r7
    7e68:	ea67000c 	lwi	r19, r7, 12
    7e6c:	88679800 	xor	r3, r7, r19
    7e70:	be030044 	beqid	r3, 68		// 7eb4
    7e74:	3100000f 	addik	r8, r0, 15
    7e78:	e8930004 	lwi	r4, r19, 4
    7e7c:	a484fffc 	andi	r4, r4, -4
    7e80:	14762000 	rsubk	r3, r22, r4
    7e84:	14c34001 	cmp	r6, r3, r8
    7e88:	bc460028 	blti	r6, 40		// 7eb0
    7e8c:	bca30218 	bgei	r3, 536		// 80a4
    7e90:	ea73000c 	lwi	r19, r19, 12
    7e94:	88679800 	xor	r3, r7, r19
    7e98:	bc03001c 	beqi	r3, 28		// 7eb4
    7e9c:	e8930004 	lwi	r4, r19, 4
    7ea0:	a484fffc 	andi	r4, r4, -4
    7ea4:	14762000 	rsubk	r3, r22, r4
    7ea8:	14c34001 	cmp	r6, r3, r8
    7eac:	bca6ffe0 	bgei	r6, -32		// 7e8c
    7eb0:	30a5ffff 	addik	r5, r5, -1
    7eb4:	31050001 	addik	r8, r5, 1
    7eb8:	b0000001 	imm	1
    7ebc:	ea603614 	lwi	r19, r0, 13844
    7ec0:	b0000001 	imm	1
    7ec4:	3140360c 	addik	r10, r0, 13836
    7ec8:	88735000 	xor	r3, r19, r10
    7ecc:	be030554 	beqid	r3, 1364		// 8420
    7ed0:	30a0000f 	addik	r5, r0, 15
    7ed4:	e8730004 	lwi	r3, r19, 4
    7ed8:	a463fffc 	andi	r3, r3, -4
    7edc:	14961800 	rsubk	r4, r22, r3
    7ee0:	14a42801 	cmp	r5, r4, r5
    7ee4:	bc4504fc 	blti	r5, 1276		// 83e0
    7ee8:	b0000001 	imm	1
    7eec:	f9403618 	swi	r10, r0, 13848
    7ef0:	b0000001 	imm	1
    7ef4:	f9403614 	swi	r10, r0, 13844
    7ef8:	bea401dc 	bgeid	r4, 476		// 80d4
    7efc:	308001ff 	addik	r4, r0, 511
    7f00:	14832003 	cmpu	r4, r3, r4
    7f04:	be44043c 	bltid	r4, 1084		// 8340
    7f08:	30a00004 	addik	r5, r0, 4	// 4 <_.xy>
    7f0c:	10a01800 	addk	r5, r0, r3
    7f10:	90a30041 	srl	r5, r3
    7f14:	90a50041 	srl	r5, r5
    7f18:	90a50041 	srl	r5, r5
    7f1c:	10852800 	addk	r4, r5, r5
    7f20:	10842000 	addk	r4, r4, r4
    7f24:	b0000001 	imm	1
    7f28:	e9603608 	lwi	r11, r0, 13832
    7f2c:	10842000 	addk	r4, r4, r4
    7f30:	10982000 	addk	r4, r24, r4
    7f34:	e8c40008 	lwi	r6, r4, 8
    7f38:	10e02800 	addk	r7, r0, r5
    7f3c:	90e50001 	sra	r7, r5
    7f40:	90e70001 	sra	r7, r7
    7f44:	30a00001 	addik	r5, r0, 1
    7f48:	a647001f 	andi	r18, r7, 31
    7f4c:	10602800 	addk	r3, r0, r5
    7f50:	be120014 	beqid	r18, 20		// 7f64
    7f54:	10630000 	addk	r3, r3, r0
    7f58:	3252ffff 	addik	r18, r18, -1
    7f5c:	be32fffc 	bneid	r18, -4		// 7f58
    7f60:	10631800 	addk	r3, r3, r3
    7f64:	80635800 	or	r3, r3, r11
    7f68:	11630000 	addk	r11, r3, r0
    7f6c:	f893000c 	swi	r4, r19, 12
    7f70:	f8d30008 	swi	r6, r19, 8
    7f74:	b0000001 	imm	1
    7f78:	f8603608 	swi	r3, r0, 13832
    7f7c:	fa640008 	swi	r19, r4, 8
    7f80:	fa66000c 	swi	r19, r6, 12
    7f84:	10804000 	addk	r4, r0, r8
    7f88:	90880001 	sra	r4, r8
    7f8c:	90840001 	sra	r4, r4
    7f90:	30c00001 	addik	r6, r0, 1
    7f94:	a644001f 	andi	r18, r4, 31
    7f98:	10a03000 	addk	r5, r0, r6
    7f9c:	be120014 	beqid	r18, 20		// 7fb0
    7fa0:	10a50000 	addk	r5, r5, r0
    7fa4:	3252ffff 	addik	r18, r18, -1
    7fa8:	be32fffc 	bneid	r18, -4		// 7fa4
    7fac:	10a52800 	addk	r5, r5, r5
    7fb0:	14851803 	cmpu	r4, r5, r3
    7fb4:	be440140 	bltid	r4, 320		// 80f4
    7fb8:	84832800 	and	r4, r3, r5
    7fbc:	be240030 	bneid	r4, 48		// 7fec
    7fc0:	3120000f 	addik	r9, r0, 15
    7fc4:	10a52800 	addk	r5, r5, r5
    7fc8:	a508fffc 	andi	r8, r8, -4
    7fcc:	84832800 	and	r4, r3, r5
    7fd0:	be24001c 	bneid	r4, 28		// 7fec
    7fd4:	31080004 	addik	r8, r8, 4
    7fd8:	10a52800 	addk	r5, r5, r5
    7fdc:	84832800 	and	r4, r3, r5
    7fe0:	be04fff8 	beqid	r4, -8		// 7fd8
    7fe4:	31080004 	addik	r8, r8, 4
    7fe8:	3120000f 	addik	r9, r0, 15
    7fec:	10684000 	addk	r3, r8, r8
    7ff0:	10631800 	addk	r3, r3, r3
    7ff4:	10631800 	addk	r3, r3, r3
    7ff8:	13381800 	addk	r25, r24, r3
    7ffc:	10f90000 	addk	r7, r25, r0
    8000:	11880000 	addk	r12, r8, r0
    8004:	ea67000c 	lwi	r19, r7, 12
    8008:	88879800 	xor	r4, r7, r19
    800c:	bc24001c 	bnei	r4, 28		// 8028
    8010:	b8100424 	brid	1060		// 8434
    8014:	318c0001 	addik	r12, r12, 1
    8018:	bca30480 	bgei	r3, 1152		// 8498
    801c:	ea73000c 	lwi	r19, r19, 12
    8020:	88679800 	xor	r3, r7, r19
    8024:	bc03040c 	beqi	r3, 1036		// 8430
    8028:	e8930004 	lwi	r4, r19, 4
    802c:	a484fffc 	andi	r4, r4, -4
    8030:	14762000 	rsubk	r3, r22, r4
    8034:	14c34801 	cmp	r6, r3, r9
    8038:	bca6ffe0 	bgei	r6, -32		// 8018
    803c:	e8b3000c 	lwi	r5, r19, 12
    8040:	e8d30008 	lwi	r6, r19, 8
    8044:	1093b000 	addk	r4, r19, r22
    8048:	a2d60001 	ori	r22, r22, 1
    804c:	f8a6000c 	swi	r5, r6, 12
    8050:	f8c50008 	swi	r6, r5, 8
    8054:	10b70000 	addk	r5, r23, r0
    8058:	a0c30001 	ori	r6, r3, 1
    805c:	fad30004 	swi	r22, r19, 4
    8060:	b0000001 	imm	1
    8064:	f8803618 	swi	r4, r0, 13848
    8068:	b0000001 	imm	1
    806c:	f8803614 	swi	r4, r0, 13844
    8070:	d8632000 	sw	r3, r3, r4
    8074:	f944000c 	swi	r10, r4, 12
    8078:	f9440008 	swi	r10, r4, 8
    807c:	b9f409ec 	brlid	r15, 2540	// 8a68 <__malloc_unlock>
    8080:	f8c40004 	swi	r6, r4, 4
    8084:	b810fd24 	brid	-732		// 7da8
    8088:	30730008 	addik	r3, r19, 8
    808c:	10a0b000 	addk	r5, r0, r22
    8090:	90b60041 	srl	r5, r22
    8094:	90a50041 	srl	r5, r5
    8098:	90a50041 	srl	r5, r5
    809c:	b810fdb8 	brid	-584		// 7e54
    80a0:	10e52800 	addk	r7, r5, r5
    80a4:	10932000 	addk	r4, r19, r4
    80a8:	e8e40004 	lwi	r7, r4, 4
    80ac:	e873000c 	lwi	r3, r19, 12
    80b0:	e8d30008 	lwi	r6, r19, 8
    80b4:	10b70000 	addk	r5, r23, r0
    80b8:	a0e70001 	ori	r7, r7, 1
    80bc:	f866000c 	swi	r3, r6, 12
    80c0:	f8c30008 	swi	r6, r3, 8
    80c4:	b9f409a4 	brlid	r15, 2468	// 8a68 <__malloc_unlock>
    80c8:	f8e40004 	swi	r7, r4, 4
    80cc:	b810fcdc 	brid	-804		// 7da8
    80d0:	30730008 	addik	r3, r19, 8
    80d4:	10731800 	addk	r3, r19, r3
    80d8:	e8830004 	lwi	r4, r3, 4
    80dc:	10b70000 	addk	r5, r23, r0
    80e0:	a0840001 	ori	r4, r4, 1
    80e4:	b9f40984 	brlid	r15, 2436	// 8a68 <__malloc_unlock>
    80e8:	f8830004 	swi	r4, r3, 4
    80ec:	b810fcbc 	brid	-836		// 7da8
    80f0:	30730008 	addik	r3, r19, 8
    80f4:	b0000001 	imm	1
    80f8:	ea60360c 	lwi	r19, r0, 13836
    80fc:	eb530004 	lwi	r26, r19, 4
    8100:	a75afffc 	andi	r26, r26, -4
    8104:	1476d003 	cmpu	r3, r22, r26
    8108:	be430014 	bltid	r3, 20		// 811c
    810c:	1476d000 	rsubk	r3, r22, r26
    8110:	3080000f 	addik	r4, r0, 15
    8114:	14832001 	cmp	r4, r3, r4
    8118:	bc4401a4 	blti	r4, 420		// 82bc
    811c:	b0000001 	imm	1
    8120:	e86035fc 	lwi	r3, r0, 13820	// 135fc <__malloc_sbrk_base>
    8124:	b0000001 	imm	1
    8128:	eb603a4c 	lwi	r27, r0, 14924	// 13a4c <__malloc_top_pad>
    812c:	1393d000 	addk	r28, r19, r26
    8130:	a863ffff 	xori	r3, r3, -1
    8134:	be030510 	beqid	r3, 1296		// 8644
    8138:	1376d800 	addk	r27, r22, r27
    813c:	337b008f 	addik	r27, r27, 143
    8140:	a77bff80 	andi	r27, r27, -128
    8144:	10b70000 	addk	r5, r23, r0
    8148:	b9f427cc 	brlid	r15, 10188	// a914 <_sbrk_r>
    814c:	10db0000 	addk	r6, r27, r0
    8150:	13230000 	addk	r25, r3, r0
    8154:	a863ffff 	xori	r3, r3, -1
    8158:	bc0303a8 	beqi	r3, 936		// 8500
    815c:	147cc803 	cmpu	r3, r28, r25
    8160:	be43039c 	bltid	r3, 924		// 84fc
    8164:	8873c000 	xor	r3, r19, r24
    8168:	b0000001 	imm	1
    816c:	e8603a1c 	lwi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    8170:	889cc800 	xor	r4, r28, r25
    8174:	107b1800 	addk	r3, r27, r3
    8178:	b0000001 	imm	1
    817c:	f8603a1c 	swi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    8180:	be040518 	beqid	r4, 1304		// 8698
    8184:	a49c007f 	andi	r4, r28, 127
    8188:	b0000001 	imm	1
    818c:	e88035fc 	lwi	r4, r0, 13820	// 135fc <__malloc_sbrk_base>
    8190:	a884ffff 	xori	r4, r4, -1
    8194:	be040558 	beqid	r4, 1368		// 86ec
    8198:	179cc800 	rsubk	r28, r28, r25
    819c:	1063e000 	addk	r3, r3, r28
    81a0:	b0000001 	imm	1
    81a4:	f8603a1c 	swi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    81a8:	a4790007 	andi	r3, r25, 7
    81ac:	be03001c 	beqid	r3, 28		// 81c8
    81b0:	30800080 	addik	r4, r0, 128
    81b4:	30a00008 	addik	r5, r0, 8	// 8 <_.z>
    81b8:	14832800 	rsubk	r4, r3, r5
    81bc:	30a00088 	addik	r5, r0, 136
    81c0:	13392000 	addk	r25, r25, r4
    81c4:	14832800 	rsubk	r4, r3, r5
    81c8:	1379d800 	addk	r27, r25, r27
    81cc:	a77b007f 	andi	r27, r27, 127
    81d0:	177b2000 	rsubk	r27, r27, r4
    81d4:	10b70000 	addk	r5, r23, r0
    81d8:	b9f4273c 	brlid	r15, 10044	// a914 <_sbrk_r>
    81dc:	10db0000 	addk	r6, r27, r0
    81e0:	a883ffff 	xori	r4, r3, -1
    81e4:	bc0404fc 	beqi	r4, 1276		// 86e0
    81e8:	14791800 	rsubk	r3, r25, r3
    81ec:	107b1800 	addk	r3, r27, r3
    81f0:	a0630001 	ori	r3, r3, 1
    81f4:	f8790004 	swi	r3, r25, 4
    81f8:	b0000001 	imm	1
    81fc:	e8603a1c 	lwi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    8200:	b0000001 	imm	1
    8204:	fb20360c 	swi	r25, r0, 13836
    8208:	8b13c000 	xor	r24, r19, r24
    820c:	107b1800 	addk	r3, r27, r3
    8210:	b0000001 	imm	1
    8214:	f8603a1c 	swi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    8218:	be180040 	beqid	r24, 64		// 8258
    821c:	3080000f 	addik	r4, r0, 15
    8220:	14ba2003 	cmpu	r5, r26, r4
    8224:	bea503ac 	bgeid	r5, 940		// 85d0
    8228:	30bafff4 	addik	r5, r26, -12
    822c:	e8d30004 	lwi	r6, r19, 4
    8230:	a4a5fff8 	andi	r5, r5, -8
    8234:	a4c60001 	andi	r6, r6, 1
    8238:	80c53000 	or	r6, r5, r6
    823c:	f8d30004 	swi	r6, r19, 4
    8240:	30e00005 	addik	r7, r0, 5
    8244:	10d32800 	addk	r6, r19, r5
    8248:	f8e60004 	swi	r7, r6, 4
    824c:	14852003 	cmpu	r4, r5, r4
    8250:	be440470 	bltid	r4, 1136		// 86c0
    8254:	f8e60008 	swi	r7, r6, 8
    8258:	b0000001 	imm	1
    825c:	e8803a48 	lwi	r4, r0, 14920	// 13a48 <__malloc_max_sbrked_mem>
    8260:	14832003 	cmpu	r4, r3, r4
    8264:	bca4000c 	bgei	r4, 12		// 8270
    8268:	b0000001 	imm	1
    826c:	f8603a48 	swi	r3, r0, 14920	// 13a48 <__malloc_max_sbrked_mem>
    8270:	b0000001 	imm	1
    8274:	e8803a44 	lwi	r4, r0, 14916	// 13a44 <__malloc_max_total_mem>
    8278:	14832003 	cmpu	r4, r3, r4
    827c:	bea40010 	bgeid	r4, 16		// 828c
    8280:	12790000 	addk	r19, r25, r0
    8284:	b0000001 	imm	1
    8288:	f8603a44 	swi	r3, r0, 14916	// 13a44 <__malloc_max_total_mem>
    828c:	e8730004 	lwi	r3, r19, 4
    8290:	a463fffc 	andi	r3, r3, -4
    8294:	14961803 	cmpu	r4, r22, r3
    8298:	be440014 	bltid	r4, 20		// 82ac
    829c:	14761800 	rsubk	r3, r22, r3
    82a0:	3080000f 	addik	r4, r0, 15
    82a4:	14832001 	cmp	r4, r3, r4
    82a8:	bc440014 	blti	r4, 20		// 82bc
    82ac:	b9f407bc 	brlid	r15, 1980	// 8a68 <__malloc_unlock>
    82b0:	10b70000 	addk	r5, r23, r0
    82b4:	b810faf4 	brid	-1292		// 7da8
    82b8:	10600000 	addk	r3, r0, r0
    82bc:	a0960001 	ori	r4, r22, 1
    82c0:	a0630001 	ori	r3, r3, 1
    82c4:	f8930004 	swi	r4, r19, 4
    82c8:	12d3b000 	addk	r22, r19, r22
    82cc:	f8760004 	swi	r3, r22, 4
    82d0:	b0000001 	imm	1
    82d4:	fac0360c 	swi	r22, r0, 13836
    82d8:	b9f40790 	brlid	r15, 1936	// 8a68 <__malloc_unlock>
    82dc:	10b70000 	addk	r5, r23, r0
    82e0:	b810fac8 	brid	-1336		// 7da8
    82e4:	30730008 	addik	r3, r19, 8
    82e8:	14651803 	cmpu	r3, r5, r3
    82ec:	bea301dc 	bgeid	r3, 476		// 84c8
    82f0:	30600054 	addik	r3, r0, 84
    82f4:	14651803 	cmpu	r3, r5, r3
    82f8:	be430234 	bltid	r3, 564		// 852c
    82fc:	30600154 	addik	r3, r0, 340
    8300:	10a0b000 	addk	r5, r0, r22
    8304:	90b60041 	srl	r5, r22
    8308:	90a50041 	srl	r5, r5
    830c:	90a50041 	srl	r5, r5
    8310:	90a50041 	srl	r5, r5
    8314:	90a50041 	srl	r5, r5
    8318:	90a50041 	srl	r5, r5
    831c:	90a50041 	srl	r5, r5
    8320:	90a50041 	srl	r5, r5
    8324:	90a50041 	srl	r5, r5
    8328:	90a50041 	srl	r5, r5
    832c:	90a50041 	srl	r5, r5
    8330:	90a50041 	srl	r5, r5
    8334:	30a5006e 	addik	r5, r5, 110
    8338:	b810fb1c 	brid	-1252		// 7e54
    833c:	10e52800 	addk	r7, r5, r5
    8340:	10801800 	addk	r4, r0, r3
    8344:	90830041 	srl	r4, r3
    8348:	90840041 	srl	r4, r4
    834c:	90840041 	srl	r4, r4
    8350:	90840041 	srl	r4, r4
    8354:	90840041 	srl	r4, r4
    8358:	90840041 	srl	r4, r4
    835c:	90840041 	srl	r4, r4
    8360:	90840041 	srl	r4, r4
    8364:	90840041 	srl	r4, r4
    8368:	14a42803 	cmpu	r5, r4, r5
    836c:	bea50168 	bgeid	r5, 360		// 84d4
    8370:	30a00014 	addik	r5, r0, 20	// 14 <_.d2>
    8374:	14a42803 	cmpu	r5, r4, r5
    8378:	be4502d4 	bltid	r5, 724		// 864c
    837c:	30a00054 	addik	r5, r0, 84
    8380:	30e4005b 	addik	r7, r4, 91
    8384:	10c73800 	addk	r6, r7, r7
    8388:	10c63000 	addk	r6, r6, r6
    838c:	10c63000 	addk	r6, r6, r6
    8390:	10d83000 	addk	r6, r24, r6
    8394:	e8860008 	lwi	r4, r6, 8
    8398:	88a43000 	xor	r5, r4, r6
    839c:	bc0501e8 	beqi	r5, 488		// 8584
    83a0:	e8a40004 	lwi	r5, r4, 4
    83a4:	a4a5fffc 	andi	r5, r5, -4
    83a8:	14a51803 	cmpu	r5, r5, r3
    83ac:	bca50010 	bgei	r5, 16		// 83bc
    83b0:	e8840008 	lwi	r4, r4, 8
    83b4:	88a62000 	xor	r5, r6, r4
    83b8:	bc25ffe8 	bnei	r5, -24		// 83a0
    83bc:	b0000001 	imm	1
    83c0:	e9603608 	lwi	r11, r0, 13832
    83c4:	e8a4000c 	lwi	r5, r4, 12
    83c8:	106b0000 	addk	r3, r11, r0
    83cc:	f8b3000c 	swi	r5, r19, 12
    83d0:	f8930008 	swi	r4, r19, 8
    83d4:	fa650008 	swi	r19, r5, 8
    83d8:	b810fbac 	brid	-1108		// 7f84
    83dc:	fa64000c 	swi	r19, r4, 12
    83e0:	1073b000 	addk	r3, r19, r22
    83e4:	10b70000 	addk	r5, r23, r0
    83e8:	a2d60001 	ori	r22, r22, 1
    83ec:	b0000001 	imm	1
    83f0:	f8603618 	swi	r3, r0, 13848
    83f4:	b0000001 	imm	1
    83f8:	f8603614 	swi	r3, r0, 13844
    83fc:	fad30004 	swi	r22, r19, 4
    8400:	a0c40001 	ori	r6, r4, 1
    8404:	f943000c 	swi	r10, r3, 12
    8408:	f9430008 	swi	r10, r3, 8
    840c:	f8c30004 	swi	r6, r3, 4
    8410:	b9f40658 	brlid	r15, 1624	// 8a68 <__malloc_unlock>
    8414:	d8841800 	sw	r4, r4, r3
    8418:	b810f990 	brid	-1648		// 7da8
    841c:	30730008 	addik	r3, r19, 8
    8420:	b0000001 	imm	1
    8424:	e9603608 	lwi	r11, r0, 13832
    8428:	b810fb5c 	brid	-1188		// 7f84
    842c:	106b0000 	addk	r3, r11, r0
    8430:	318c0001 	addik	r12, r12, 1
    8434:	a46c0003 	andi	r3, r12, 3
    8438:	be23fbcc 	bneid	r3, -1076		// 8004
    843c:	30e70008 	addik	r7, r7, 8
    8440:	a4880003 	andi	r4, r8, 3
    8444:	be040370 	beqid	r4, 880		// 87b4
    8448:	3079fff8 	addik	r3, r25, -8
    844c:	eb390000 	lwi	r25, r25, 0
    8450:	88791800 	xor	r3, r25, r3
    8454:	be03ffec 	beqid	r3, -20		// 8440
    8458:	3108ffff 	addik	r8, r8, -1
    845c:	10a52800 	addk	r5, r5, r5
    8460:	14655803 	cmpu	r3, r5, r11
    8464:	bc43fc90 	blti	r3, -880		// 80f4
    8468:	be05fc8c 	beqid	r5, -884		// 80f4
    846c:	846b2800 	and	r3, r11, r5
    8470:	be0300a4 	beqid	r3, 164		// 8514
    8474:	110c0000 	addk	r8, r12, r0
    8478:	b810fb78 	brid	-1160		// 7ff0
    847c:	10684000 	addk	r3, r8, r8
    8480:	ea730014 	lwi	r19, r19, 20
    8484:	88639800 	xor	r3, r3, r19
    8488:	be03fa30 	beqid	r3, -1488		// 7eb8
    848c:	31080002 	addik	r8, r8, 2
    8490:	b810f8e8 	brid	-1816		// 7d78
    8494:	e8730004 	lwi	r3, r19, 4
    8498:	10932000 	addk	r4, r19, r4
    849c:	e8e40004 	lwi	r7, r4, 4
    84a0:	e873000c 	lwi	r3, r19, 12
    84a4:	e8d30008 	lwi	r6, r19, 8
    84a8:	10b70000 	addk	r5, r23, r0
    84ac:	a0e70001 	ori	r7, r7, 1
    84b0:	f866000c 	swi	r3, r6, 12
    84b4:	f8c30008 	swi	r6, r3, 8
    84b8:	b9f405b0 	brlid	r15, 1456	// 8a68 <__malloc_unlock>
    84bc:	f8e40004 	swi	r7, r4, 4
    84c0:	b810f8e8 	brid	-1816		// 7da8
    84c4:	30730008 	addik	r3, r19, 8
    84c8:	30a5005b 	addik	r5, r5, 91
    84cc:	b810f988 	brid	-1656		// 7e54
    84d0:	10e52800 	addk	r7, r5, r5
    84d4:	10e01800 	addk	r7, r0, r3
    84d8:	90e30041 	srl	r7, r3
    84dc:	90e70041 	srl	r7, r7
    84e0:	90e70041 	srl	r7, r7
    84e4:	90e70041 	srl	r7, r7
    84e8:	90e70041 	srl	r7, r7
    84ec:	90e70041 	srl	r7, r7
    84f0:	30e70038 	addik	r7, r7, 56
    84f4:	b810fe94 	brid	-364		// 8388
    84f8:	10c73800 	addk	r6, r7, r7
    84fc:	bc03fc6c 	beqi	r3, -916		// 8168
    8500:	b0000001 	imm	1
    8504:	ea60360c 	lwi	r19, r0, 13836
    8508:	e8730004 	lwi	r3, r19, 4
    850c:	b810fd88 	brid	-632		// 8294
    8510:	a463fffc 	andi	r3, r3, -4
    8514:	10a52800 	addk	r5, r5, r5
    8518:	846b2800 	and	r3, r11, r5
    851c:	be03fff8 	beqid	r3, -8		// 8514
    8520:	318c0004 	addik	r12, r12, 4
    8524:	b810fac8 	brid	-1336		// 7fec
    8528:	110c0000 	addk	r8, r12, r0
    852c:	14651803 	cmpu	r3, r5, r3
    8530:	be4300b4 	bltid	r3, 180		// 85e4
    8534:	30600554 	addik	r3, r0, 1364
    8538:	10a0b000 	addk	r5, r0, r22
    853c:	90b60041 	srl	r5, r22
    8540:	90a50041 	srl	r5, r5
    8544:	90a50041 	srl	r5, r5
    8548:	90a50041 	srl	r5, r5
    854c:	90a50041 	srl	r5, r5
    8550:	90a50041 	srl	r5, r5
    8554:	90a50041 	srl	r5, r5
    8558:	90a50041 	srl	r5, r5
    855c:	90a50041 	srl	r5, r5
    8560:	90a50041 	srl	r5, r5
    8564:	90a50041 	srl	r5, r5
    8568:	90a50041 	srl	r5, r5
    856c:	90a50041 	srl	r5, r5
    8570:	90a50041 	srl	r5, r5
    8574:	90a50041 	srl	r5, r5
    8578:	30a50077 	addik	r5, r5, 119
    857c:	b810f8d8 	brid	-1832		// 7e54
    8580:	10e52800 	addk	r7, r5, r5
    8584:	b0000001 	imm	1
    8588:	e9603608 	lwi	r11, r0, 13832
    858c:	30c00001 	addik	r6, r0, 1
    8590:	10a03800 	addk	r5, r0, r7
    8594:	90a70001 	sra	r5, r7
    8598:	90a50001 	sra	r5, r5
    859c:	a645001f 	andi	r18, r5, 31
    85a0:	10603000 	addk	r3, r0, r6
    85a4:	be120014 	beqid	r18, 20		// 85b8
    85a8:	10630000 	addk	r3, r3, r0
    85ac:	3252ffff 	addik	r18, r18, -1
    85b0:	be32fffc 	bneid	r18, -4		// 85ac
    85b4:	10631800 	addk	r3, r3, r3
    85b8:	80635800 	or	r3, r3, r11
    85bc:	11630000 	addk	r11, r3, r0
    85c0:	b0000001 	imm	1
    85c4:	f8603608 	swi	r3, r0, 13832
    85c8:	b810fe04 	brid	-508		// 83cc
    85cc:	10a40000 	addk	r5, r4, r0
    85d0:	30600001 	addik	r3, r0, 1
    85d4:	f8790004 	swi	r3, r25, 4
    85d8:	12790000 	addk	r19, r25, r0
    85dc:	b810fcb8 	brid	-840		// 8294
    85e0:	10600000 	addk	r3, r0, r0
    85e4:	14a51803 	cmpu	r5, r5, r3
    85e8:	bc4500cc 	blti	r5, 204		// 86b4
    85ec:	10a0b000 	addk	r5, r0, r22
    85f0:	90b60041 	srl	r5, r22
    85f4:	90a50041 	srl	r5, r5
    85f8:	90a50041 	srl	r5, r5
    85fc:	90a50041 	srl	r5, r5
    8600:	90a50041 	srl	r5, r5
    8604:	90a50041 	srl	r5, r5
    8608:	90a50041 	srl	r5, r5
    860c:	90a50041 	srl	r5, r5
    8610:	90a50041 	srl	r5, r5
    8614:	90a50041 	srl	r5, r5
    8618:	90a50041 	srl	r5, r5
    861c:	90a50041 	srl	r5, r5
    8620:	90a50041 	srl	r5, r5
    8624:	90a50041 	srl	r5, r5
    8628:	90a50041 	srl	r5, r5
    862c:	90a50041 	srl	r5, r5
    8630:	90a50041 	srl	r5, r5
    8634:	90a50041 	srl	r5, r5
    8638:	30a5007c 	addik	r5, r5, 124
    863c:	b810f818 	brid	-2024		// 7e54
    8640:	10e52800 	addk	r7, r5, r5
    8644:	b810fb00 	brid	-1280		// 8144
    8648:	337b0010 	addik	r27, r27, 16
    864c:	14a42803 	cmpu	r5, r4, r5
    8650:	be4500ac 	bltid	r5, 172		// 86fc
    8654:	30a00154 	addik	r5, r0, 340
    8658:	10e01800 	addk	r7, r0, r3
    865c:	90e30041 	srl	r7, r3
    8660:	90e70041 	srl	r7, r7
    8664:	90e70041 	srl	r7, r7
    8668:	90e70041 	srl	r7, r7
    866c:	90e70041 	srl	r7, r7
    8670:	90e70041 	srl	r7, r7
    8674:	90e70041 	srl	r7, r7
    8678:	90e70041 	srl	r7, r7
    867c:	90e70041 	srl	r7, r7
    8680:	90e70041 	srl	r7, r7
    8684:	90e70041 	srl	r7, r7
    8688:	90e70041 	srl	r7, r7
    868c:	30e7006e 	addik	r7, r7, 110
    8690:	b810fcf8 	brid	-776		// 8388
    8694:	10c73800 	addk	r6, r7, r7
    8698:	be24faf0 	bneid	r4, -1296		// 8188
    869c:	109bd000 	addk	r4, r27, r26
    86a0:	b0000001 	imm	1
    86a4:	eb20360c 	lwi	r25, r0, 13836
    86a8:	a0840001 	ori	r4, r4, 1
    86ac:	b810fbac 	brid	-1108		// 8258
    86b0:	f8990004 	swi	r4, r25, 4
    86b4:	30e000fc 	addik	r7, r0, 252
    86b8:	b810f79c 	brid	-2148		// 7e54
    86bc:	30a0007e 	addik	r5, r0, 126
    86c0:	10b70000 	addk	r5, r23, r0
    86c4:	b9f4ec40 	brlid	r15, -5056	// 7304 <_free_r>
    86c8:	30d30008 	addik	r6, r19, 8
    86cc:	b0000001 	imm	1
    86d0:	e8603a1c 	lwi	r3, r0, 14876	// 13a1c <__malloc_current_mallinfo>
    86d4:	b0000001 	imm	1
    86d8:	eb20360c 	lwi	r25, r0, 13836
    86dc:	b800fb7c 	bri	-1156		// 8258
    86e0:	13640000 	addk	r27, r4, r0
    86e4:	b810fb10 	brid	-1264		// 81f4
    86e8:	30600001 	addik	r3, r0, 1
    86ec:	b0000001 	imm	1
    86f0:	fb2035fc 	swi	r25, r0, 13820	// 135fc <__malloc_sbrk_base>
    86f4:	b810fab8 	brid	-1352		// 81ac
    86f8:	a4790007 	andi	r3, r25, 7
    86fc:	14a42803 	cmpu	r5, r4, r5
    8700:	be450054 	bltid	r5, 84		// 8754
    8704:	30a00554 	addik	r5, r0, 1364
    8708:	10e01800 	addk	r7, r0, r3
    870c:	90e30041 	srl	r7, r3
    8710:	90e70041 	srl	r7, r7
    8714:	90e70041 	srl	r7, r7
    8718:	90e70041 	srl	r7, r7
    871c:	90e70041 	srl	r7, r7
    8720:	90e70041 	srl	r7, r7
    8724:	90e70041 	srl	r7, r7
    8728:	90e70041 	srl	r7, r7
    872c:	90e70041 	srl	r7, r7
    8730:	90e70041 	srl	r7, r7
    8734:	90e70041 	srl	r7, r7
    8738:	90e70041 	srl	r7, r7
    873c:	90e70041 	srl	r7, r7
    8740:	90e70041 	srl	r7, r7
    8744:	90e70041 	srl	r7, r7
    8748:	30e70077 	addik	r7, r7, 119
    874c:	b810fc3c 	brid	-964		// 8388
    8750:	10c73800 	addk	r6, r7, r7
    8754:	14842803 	cmpu	r4, r4, r5
    8758:	bc440074 	blti	r4, 116		// 87cc
    875c:	10e01800 	addk	r7, r0, r3
    8760:	90e30041 	srl	r7, r3
    8764:	90e70041 	srl	r7, r7
    8768:	90e70041 	srl	r7, r7
    876c:	90e70041 	srl	r7, r7
    8770:	90e70041 	srl	r7, r7
    8774:	90e70041 	srl	r7, r7
    8778:	90e70041 	srl	r7, r7
    877c:	90e70041 	srl	r7, r7
    8780:	90e70041 	srl	r7, r7
    8784:	90e70041 	srl	r7, r7
    8788:	90e70041 	srl	r7, r7
    878c:	90e70041 	srl	r7, r7
    8790:	90e70041 	srl	r7, r7
    8794:	90e70041 	srl	r7, r7
    8798:	90e70041 	srl	r7, r7
    879c:	90e70041 	srl	r7, r7
    87a0:	90e70041 	srl	r7, r7
    87a4:	90e70041 	srl	r7, r7
    87a8:	30e7007c 	addik	r7, r7, 124
    87ac:	b810fbdc 	brid	-1060		// 8388
    87b0:	10c73800 	addk	r6, r7, r7
    87b4:	a865ffff 	xori	r3, r5, -1
    87b8:	85635800 	and	r11, r3, r11
    87bc:	b0000001 	imm	1
    87c0:	f9603608 	swi	r11, r0, 13832
    87c4:	b810fc9c 	brid	-868		// 8460
    87c8:	10a52800 	addk	r5, r5, r5
    87cc:	30c000fc 	addik	r6, r0, 252
    87d0:	b810fbb8 	brid	-1096		// 8388
    87d4:	30e0007e 	addik	r7, r0, 126

000087d8 <memchr>:
    87d8:	a4650003 	andi	r3, r5, 3
    87dc:	be030144 	beqid	r3, 324		// 8920
    87e0:	a50600ff 	andi	r8, r6, 255
    87e4:	be070148 	beqid	r7, 328		// 892c
    87e8:	3087ffff 	addik	r4, r7, -1
    87ec:	e0650000 	lbui	r3, r5, 0
    87f0:	88634000 	xor	r3, r3, r8
    87f4:	bc030074 	beqi	r3, 116		// 8868
    87f8:	b810001c 	brid	28		// 8814
    87fc:	10650000 	addk	r3, r5, r0
    8800:	bc040070 	beqi	r4, 112		// 8870
    8804:	e0a30000 	lbui	r5, r3, 0
    8808:	88a54000 	xor	r5, r5, r8
    880c:	be050068 	beqid	r5, 104		// 8874
    8810:	3084ffff 	addik	r4, r4, -1
    8814:	30630001 	addik	r3, r3, 1
    8818:	a4a30003 	andi	r5, r3, 3
    881c:	bc25ffe4 	bnei	r5, -28		// 8800
    8820:	31200003 	addik	r9, r0, 3
    8824:	14a44803 	cmpu	r5, r4, r9
    8828:	bc450054 	blti	r5, 84		// 887c
    882c:	be040044 	beqid	r4, 68		// 8870
    8830:	30c4ffff 	addik	r6, r4, -1
    8834:	e0830000 	lbui	r4, r3, 0
    8838:	88844000 	xor	r4, r4, r8
    883c:	be040038 	beqid	r4, 56		// 8874
    8840:	10800000 	addk	r4, r0, r0
    8844:	b810001c 	brid	28		// 8860
    8848:	88a62000 	xor	r5, r6, r4
    884c:	e0a30000 	lbui	r5, r3, 0
    8850:	88a54000 	xor	r5, r5, r8
    8854:	be050020 	beqid	r5, 32		// 8874
    8858:	30840001 	addik	r4, r4, 1
    885c:	88a62000 	xor	r5, r6, r4
    8860:	be25ffec 	bneid	r5, -20		// 884c
    8864:	30630001 	addik	r3, r3, 1
    8868:	b60f0008 	rtsd	r15, 8
    886c:	10650000 	addk	r3, r5, r0
    8870:	10640000 	addk	r3, r4, r0
    8874:	b60f0008 	rtsd	r15, 8
    8878:	80000000 	or	r0, r0, r0
    887c:	a4c600ff 	andi	r6, r6, 255
    8880:	10a63000 	addk	r5, r6, r6
    8884:	10a52800 	addk	r5, r5, r5
    8888:	10a52800 	addk	r5, r5, r5
    888c:	10a52800 	addk	r5, r5, r5
    8890:	10a52800 	addk	r5, r5, r5
    8894:	10a52800 	addk	r5, r5, r5
    8898:	10a52800 	addk	r5, r5, r5
    889c:	10a52800 	addk	r5, r5, r5
    88a0:	80a53000 	or	r5, r5, r6
    88a4:	10e52800 	addk	r7, r5, r5
    88a8:	10e73800 	addk	r7, r7, r7
    88ac:	10e73800 	addk	r7, r7, r7
    88b0:	10e73800 	addk	r7, r7, r7
    88b4:	10e73800 	addk	r7, r7, r7
    88b8:	10e73800 	addk	r7, r7, r7
    88bc:	10e73800 	addk	r7, r7, r7
    88c0:	10e73800 	addk	r7, r7, r7
    88c4:	10e73800 	addk	r7, r7, r7
    88c8:	10e73800 	addk	r7, r7, r7
    88cc:	10e73800 	addk	r7, r7, r7
    88d0:	10e73800 	addk	r7, r7, r7
    88d4:	10e73800 	addk	r7, r7, r7
    88d8:	10e73800 	addk	r7, r7, r7
    88dc:	10e73800 	addk	r7, r7, r7
    88e0:	10e73800 	addk	r7, r7, r7
    88e4:	80e72800 	or	r7, r7, r5
    88e8:	e8a30000 	lwi	r5, r3, 0
    88ec:	88a72800 	xor	r5, r7, r5
    88f0:	b000fefe 	imm	-258
    88f4:	30c5feff 	addik	r6, r5, -257
    88f8:	a8a5ffff 	xori	r5, r5, -1
    88fc:	84a62800 	and	r5, r6, r5
    8900:	b0008080 	imm	-32640
    8904:	a4a58080 	andi	r5, r5, -32640
    8908:	bc25ff24 	bnei	r5, -220		// 882c
    890c:	3084fffc 	addik	r4, r4, -4
    8910:	14a44803 	cmpu	r5, r4, r9
    8914:	be45ffd4 	bltid	r5, -44		// 88e8
    8918:	30630004 	addik	r3, r3, 4
    891c:	b800ff10 	bri	-240		// 882c
    8920:	10650000 	addk	r3, r5, r0
    8924:	b810fefc 	brid	-260		// 8820
    8928:	10870000 	addk	r4, r7, r0
    892c:	b60f0008 	rtsd	r15, 8
    8930:	10670000 	addk	r3, r7, r0

00008934 <memcpy>:
    8934:	3140000f 	addik	r10, r0, 15
    8938:	14875003 	cmpu	r4, r7, r10
    893c:	bea40104 	bgeid	r4, 260		// 8a40
    8940:	10650000 	addk	r3, r5, r0
    8944:	80862800 	or	r4, r6, r5
    8948:	a4840003 	andi	r4, r4, 3
    894c:	be2400d4 	bneid	r4, 212		// 8a20
    8950:	11250000 	addk	r9, r5, r0
    8954:	10850000 	addk	r4, r5, r0
    8958:	11060000 	addk	r8, r6, r0
    895c:	11270000 	addk	r9, r7, r0
    8960:	10aa0000 	addk	r5, r10, r0
    8964:	e9680000 	lwi	r11, r8, 0
    8968:	3129fff0 	addik	r9, r9, -16
    896c:	15492803 	cmpu	r10, r9, r5
    8970:	f9640000 	swi	r11, r4, 0
    8974:	e9680004 	lwi	r11, r8, 4
    8978:	f9640004 	swi	r11, r4, 4
    897c:	e9680008 	lwi	r11, r8, 8
    8980:	f9640008 	swi	r11, r4, 8
    8984:	e968000c 	lwi	r11, r8, 12
    8988:	31080010 	addik	r8, r8, 16
    898c:	f964000c 	swi	r11, r4, 12
    8990:	be4affd4 	bltid	r10, -44		// 8964
    8994:	30840010 	addik	r4, r4, 16
    8998:	3087fff0 	addik	r4, r7, -16
    899c:	10a02000 	addk	r5, r0, r4
    89a0:	90a40041 	srl	r5, r4
    89a4:	90a50041 	srl	r5, r5
    89a8:	90a50041 	srl	r5, r5
    89ac:	90a50041 	srl	r5, r5
    89b0:	30a50001 	addik	r5, r5, 1
    89b4:	10a52800 	addk	r5, r5, r5
    89b8:	10a52800 	addk	r5, r5, r5
    89bc:	10a52800 	addk	r5, r5, r5
    89c0:	a487000f 	andi	r4, r7, 15
    89c4:	31000003 	addik	r8, r0, 3
    89c8:	10a52800 	addk	r5, r5, r5
    89cc:	15044003 	cmpu	r8, r4, r8
    89d0:	11232800 	addk	r9, r3, r5
    89d4:	bea8007c 	bgeid	r8, 124		// 8a50
    89d8:	10c62800 	addk	r6, r6, r5
    89dc:	3084fffc 	addik	r4, r4, -4
    89e0:	10a02000 	addk	r5, r0, r4
    89e4:	90a40041 	srl	r5, r4
    89e8:	90a50041 	srl	r5, r5
    89ec:	30a50001 	addik	r5, r5, 1
    89f0:	10a52800 	addk	r5, r5, r5
    89f4:	10a52800 	addk	r5, r5, r5
    89f8:	10800000 	addk	r4, r0, r0
    89fc:	c9043000 	lw	r8, r4, r6
    8a00:	d9044800 	sw	r8, r4, r9
    8a04:	30840004 	addik	r4, r4, 4
    8a08:	89042800 	xor	r8, r4, r5
    8a0c:	bc28fff0 	bnei	r8, -16		// 89fc
    8a10:	a4e70003 	andi	r7, r7, 3
    8a14:	10c62800 	addk	r6, r6, r5
    8a18:	be070020 	beqid	r7, 32		// 8a38
    8a1c:	11292800 	addk	r9, r9, r5
    8a20:	10800000 	addk	r4, r0, r0
    8a24:	c0a43000 	lbu	r5, r4, r6
    8a28:	d0a44800 	sb	r5, r4, r9
    8a2c:	30840001 	addik	r4, r4, 1
    8a30:	89043800 	xor	r8, r4, r7
    8a34:	bc28fff0 	bnei	r8, -16		// 8a24
    8a38:	b60f0008 	rtsd	r15, 8
    8a3c:	80000000 	or	r0, r0, r0
    8a40:	be27ffe0 	bneid	r7, -32		// 8a20
    8a44:	11250000 	addk	r9, r5, r0
    8a48:	b60f0008 	rtsd	r15, 8
    8a4c:	80000000 	or	r0, r0, r0
    8a50:	10e40000 	addk	r7, r4, r0
    8a54:	be27ffd0 	bneid	r7, -48		// 8a24
    8a58:	10800000 	addk	r4, r0, r0
    8a5c:	b800ffec 	bri	-20		// 8a48

00008a60 <__malloc_lock>:
    8a60:	b60f0008 	rtsd	r15, 8
    8a64:	80000000 	or	r0, r0, r0

00008a68 <__malloc_unlock>:
    8a68:	b60f0008 	rtsd	r15, 8
    8a6c:	80000000 	or	r0, r0, r0

00008a70 <_Balloc>:
    8a70:	3021ffd8 	addik	r1, r1, -40
    8a74:	fac10020 	swi	r22, r1, 32
    8a78:	fae10024 	swi	r23, r1, 36
    8a7c:	f9e10000 	swi	r15, r1, 0
    8a80:	fa61001c 	swi	r19, r1, 28
    8a84:	ea650024 	lwi	r19, r5, 36
    8a88:	12e50000 	addk	r23, r5, r0
    8a8c:	be130050 	beqid	r19, 80		// 8adc
    8a90:	12c60000 	addk	r22, r6, r0
    8a94:	e893000c 	lwi	r4, r19, 12
    8a98:	be040068 	beqid	r4, 104		// 8b00
    8a9c:	10b70000 	addk	r5, r23, r0
    8aa0:	1076b000 	addk	r3, r22, r22
    8aa4:	10c31800 	addk	r6, r3, r3
    8aa8:	c8662000 	lw	r3, r6, r4
    8aac:	be030078 	beqid	r3, 120		// 8b24
    8ab0:	10b70000 	addk	r5, r23, r0
    8ab4:	e8a30000 	lwi	r5, r3, 0
    8ab8:	d8a62000 	sw	r5, r6, r4
    8abc:	f8030010 	swi	r0, r3, 16
    8ac0:	f803000c 	swi	r0, r3, 12
    8ac4:	e9e10000 	lwi	r15, r1, 0
    8ac8:	ea61001c 	lwi	r19, r1, 28
    8acc:	eac10020 	lwi	r22, r1, 32
    8ad0:	eae10024 	lwi	r23, r1, 36
    8ad4:	b60f0008 	rtsd	r15, 8
    8ad8:	30210028 	addik	r1, r1, 40
    8adc:	b9f4f12c 	brlid	r15, -3796	// 7c08 <malloc>
    8ae0:	30a00010 	addik	r5, r0, 16	// 10 <_.d1>
    8ae4:	12630000 	addk	r19, r3, r0
    8ae8:	f8770024 	swi	r3, r23, 36
    8aec:	f8030004 	swi	r0, r3, 4
    8af0:	f8030008 	swi	r0, r3, 8
    8af4:	f8030000 	swi	r0, r3, 0
    8af8:	f803000c 	swi	r0, r3, 12
    8afc:	10b70000 	addk	r5, r23, r0
    8b00:	30c00004 	addik	r6, r0, 4	// 4 <_.xy>
    8b04:	b9f43898 	brlid	r15, 14488	// c39c <_calloc_r>
    8b08:	30e00021 	addik	r7, r0, 33
    8b0c:	e8970024 	lwi	r4, r23, 36
    8b10:	f873000c 	swi	r3, r19, 12
    8b14:	e884000c 	lwi	r4, r4, 12
    8b18:	bc24ff88 	bnei	r4, -120		// 8aa0
    8b1c:	b810ffa8 	brid	-88		// 8ac4
    8b20:	10600000 	addk	r3, r0, r0
    8b24:	30c00001 	addik	r6, r0, 1
    8b28:	a656001f 	andi	r18, r22, 31
    8b2c:	12603000 	addk	r19, r0, r6
    8b30:	be120014 	beqid	r18, 20		// 8b44
    8b34:	12730000 	addk	r19, r19, r0
    8b38:	3252ffff 	addik	r18, r18, -1
    8b3c:	be32fffc 	bneid	r18, -4		// 8b38
    8b40:	12739800 	addk	r19, r19, r19
    8b44:	30f30005 	addik	r7, r19, 5
    8b48:	10e73800 	addk	r7, r7, r7
    8b4c:	b9f43850 	brlid	r15, 14416	// c39c <_calloc_r>
    8b50:	10e73800 	addk	r7, r7, r7
    8b54:	bc03ffc8 	beqi	r3, -56		// 8b1c
    8b58:	fac30004 	swi	r22, r3, 4
    8b5c:	b810ff60 	brid	-160		// 8abc
    8b60:	fa630008 	swi	r19, r3, 8

00008b64 <_Bfree>:
    8b64:	3021ffd8 	addik	r1, r1, -40
    8b68:	fa610020 	swi	r19, r1, 32
    8b6c:	f9e10000 	swi	r15, r1, 0
    8b70:	fac10024 	swi	r22, r1, 36
    8b74:	eac50024 	lwi	r22, r5, 36
    8b78:	be160044 	beqid	r22, 68		// 8bbc
    8b7c:	12650000 	addk	r19, r5, r0
    8b80:	be06002c 	beqid	r6, 44		// 8bac
    8b84:	e9e10000 	lwi	r15, r1, 0
    8b88:	e8930024 	lwi	r4, r19, 36
    8b8c:	e8660004 	lwi	r3, r6, 4
    8b90:	e884000c 	lwi	r4, r4, 12
    8b94:	10631800 	addk	r3, r3, r3
    8b98:	10631800 	addk	r3, r3, r3
    8b9c:	c8a32000 	lw	r5, r3, r4
    8ba0:	f8a60000 	swi	r5, r6, 0
    8ba4:	d8c32000 	sw	r6, r3, r4
    8ba8:	e9e10000 	lwi	r15, r1, 0
    8bac:	ea610020 	lwi	r19, r1, 32
    8bb0:	eac10024 	lwi	r22, r1, 36
    8bb4:	b60f0008 	rtsd	r15, 8
    8bb8:	30210028 	addik	r1, r1, 40
    8bbc:	30a00010 	addik	r5, r0, 16	// 10 <_.d1>
    8bc0:	b9f4f048 	brlid	r15, -4024	// 7c08 <malloc>
    8bc4:	f8c1001c 	swi	r6, r1, 28
    8bc8:	f8730024 	swi	r3, r19, 36
    8bcc:	fac30004 	swi	r22, r3, 4
    8bd0:	fac30008 	swi	r22, r3, 8
    8bd4:	fac30000 	swi	r22, r3, 0
    8bd8:	fac3000c 	swi	r22, r3, 12
    8bdc:	b810ffa4 	brid	-92		// 8b80
    8be0:	e8c1001c 	lwi	r6, r1, 28

00008be4 <__multadd>:
    8be4:	3021ffc4 	addik	r1, r1, -60
    8be8:	fa61001c 	swi	r19, r1, 28
    8bec:	fac10020 	swi	r22, r1, 32
    8bf0:	fae10024 	swi	r23, r1, 36
    8bf4:	fb21002c 	swi	r25, r1, 44
    8bf8:	fb610034 	swi	r27, r1, 52
    8bfc:	fb810038 	swi	r28, r1, 56
    8c00:	f9e10000 	swi	r15, r1, 0
    8c04:	fb010028 	swi	r24, r1, 40
    8c08:	fb410030 	swi	r26, r1, 48
    8c0c:	13660000 	addk	r27, r6, r0
    8c10:	13850000 	addk	r28, r5, r0
    8c14:	13270000 	addk	r25, r7, r0
    8c18:	12e80000 	addk	r23, r8, r0
    8c1c:	eb460010 	lwi	r26, r6, 16
    8c20:	32660014 	addik	r19, r6, 20
    8c24:	12c00000 	addk	r22, r0, r0
    8c28:	eb130000 	lwi	r24, r19, 0
    8c2c:	10d90000 	addk	r6, r25, r0
    8c30:	b0000000 	imm	0
    8c34:	a4b8ffff 	andi	r5, r24, -1
    8c38:	b0000000 	imm	0
    8c3c:	b9f48d5c 	brlid	r15, -29348	// 11998 <__mulsi3>
    8c40:	32d60001 	addik	r22, r22, 1
    8c44:	10d90000 	addk	r6, r25, r0
    8c48:	10a0c000 	addk	r5, r0, r24
    8c4c:	90b80041 	srl	r5, r24
    8c50:	90a50041 	srl	r5, r5
    8c54:	90a50041 	srl	r5, r5
    8c58:	90a50041 	srl	r5, r5
    8c5c:	90a50041 	srl	r5, r5
    8c60:	90a50041 	srl	r5, r5
    8c64:	90a50041 	srl	r5, r5
    8c68:	90a50041 	srl	r5, r5
    8c6c:	90a50041 	srl	r5, r5
    8c70:	90a50041 	srl	r5, r5
    8c74:	90a50041 	srl	r5, r5
    8c78:	90a50041 	srl	r5, r5
    8c7c:	90a50041 	srl	r5, r5
    8c80:	90a50041 	srl	r5, r5
    8c84:	90a50041 	srl	r5, r5
    8c88:	90a50041 	srl	r5, r5
    8c8c:	b0000000 	imm	0
    8c90:	b9f48d08 	brlid	r15, -29432	// 11998 <__mulsi3>
    8c94:	12e3b800 	addk	r23, r3, r23
    8c98:	1080b800 	addk	r4, r0, r23
    8c9c:	90970041 	srl	r4, r23
    8ca0:	90840041 	srl	r4, r4
    8ca4:	90840041 	srl	r4, r4
    8ca8:	90840041 	srl	r4, r4
    8cac:	90840041 	srl	r4, r4
    8cb0:	90840041 	srl	r4, r4
    8cb4:	90840041 	srl	r4, r4
    8cb8:	90840041 	srl	r4, r4
    8cbc:	90840041 	srl	r4, r4
    8cc0:	90840041 	srl	r4, r4
    8cc4:	90840041 	srl	r4, r4
    8cc8:	90840041 	srl	r4, r4
    8ccc:	90840041 	srl	r4, r4
    8cd0:	90840041 	srl	r4, r4
    8cd4:	90840041 	srl	r4, r4
    8cd8:	90840041 	srl	r4, r4
    8cdc:	10841800 	addk	r4, r4, r3
    8ce0:	11042000 	addk	r8, r4, r4
    8ce4:	11084000 	addk	r8, r8, r8
    8ce8:	11084000 	addk	r8, r8, r8
    8cec:	11084000 	addk	r8, r8, r8
    8cf0:	11084000 	addk	r8, r8, r8
    8cf4:	11084000 	addk	r8, r8, r8
    8cf8:	11084000 	addk	r8, r8, r8
    8cfc:	11084000 	addk	r8, r8, r8
    8d00:	11084000 	addk	r8, r8, r8
    8d04:	11084000 	addk	r8, r8, r8
    8d08:	11084000 	addk	r8, r8, r8
    8d0c:	11084000 	addk	r8, r8, r8
    8d10:	11084000 	addk	r8, r8, r8
    8d14:	11084000 	addk	r8, r8, r8
    8d18:	11084000 	addk	r8, r8, r8
    8d1c:	b0000000 	imm	0
    8d20:	a6f7ffff 	andi	r23, r23, -1
    8d24:	11084000 	addk	r8, r8, r8
    8d28:	1108b800 	addk	r8, r8, r23
    8d2c:	f9130000 	swi	r8, r19, 0
    8d30:	147ab001 	cmp	r3, r26, r22
    8d34:	12e02000 	addk	r23, r0, r4
    8d38:	92e40041 	srl	r23, r4
    8d3c:	92f70041 	srl	r23, r23
    8d40:	92f70041 	srl	r23, r23
    8d44:	92f70041 	srl	r23, r23
    8d48:	92f70041 	srl	r23, r23
    8d4c:	92f70041 	srl	r23, r23
    8d50:	92f70041 	srl	r23, r23
    8d54:	92f70041 	srl	r23, r23
    8d58:	92f70041 	srl	r23, r23
    8d5c:	92f70041 	srl	r23, r23
    8d60:	92f70041 	srl	r23, r23
    8d64:	92f70041 	srl	r23, r23
    8d68:	92f70041 	srl	r23, r23
    8d6c:	92f70041 	srl	r23, r23
    8d70:	92f70041 	srl	r23, r23
    8d74:	92f70041 	srl	r23, r23
    8d78:	be43feb0 	bltid	r3, -336		// 8c28
    8d7c:	32730004 	addik	r19, r19, 4
    8d80:	be170034 	beqid	r23, 52		// 8db4
    8d84:	107b0000 	addk	r3, r27, r0
    8d88:	e87b0008 	lwi	r3, r27, 8
    8d8c:	1463d001 	cmp	r3, r3, r26
    8d90:	bea30050 	bgeid	r3, 80		// 8de0
    8d94:	10bc0000 	addk	r5, r28, r0
    8d98:	307a0005 	addik	r3, r26, 5
    8d9c:	10631800 	addk	r3, r3, r3
    8da0:	10631800 	addk	r3, r3, r3
    8da4:	335a0001 	addik	r26, r26, 1
    8da8:	dae3d800 	sw	r23, r3, r27
    8dac:	fb5b0010 	swi	r26, r27, 16
    8db0:	107b0000 	addk	r3, r27, r0
    8db4:	e9e10000 	lwi	r15, r1, 0
    8db8:	ea61001c 	lwi	r19, r1, 28
    8dbc:	eac10020 	lwi	r22, r1, 32
    8dc0:	eae10024 	lwi	r23, r1, 36
    8dc4:	eb010028 	lwi	r24, r1, 40
    8dc8:	eb21002c 	lwi	r25, r1, 44
    8dcc:	eb410030 	lwi	r26, r1, 48
    8dd0:	eb610034 	lwi	r27, r1, 52
    8dd4:	eb810038 	lwi	r28, r1, 56
    8dd8:	b60f0008 	rtsd	r15, 8
    8ddc:	3021003c 	addik	r1, r1, 60
    8de0:	e8db0004 	lwi	r6, r27, 4
    8de4:	b9f4fc8c 	brlid	r15, -884	// 8a70 <_Balloc>
    8de8:	30c60001 	addik	r6, r6, 1
    8dec:	e8fb0010 	lwi	r7, r27, 16
    8df0:	30db000c 	addik	r6, r27, 12
    8df4:	30a3000c 	addik	r5, r3, 12
    8df8:	30e70002 	addik	r7, r7, 2
    8dfc:	10e73800 	addk	r7, r7, r7
    8e00:	10e73800 	addk	r7, r7, r7
    8e04:	b9f4fb30 	brlid	r15, -1232	// 8934 <memcpy>
    8e08:	12630000 	addk	r19, r3, r0
    8e0c:	10db0000 	addk	r6, r27, r0
    8e10:	10bc0000 	addk	r5, r28, r0
    8e14:	b9f4fd50 	brlid	r15, -688	// 8b64 <_Bfree>
    8e18:	13730000 	addk	r27, r19, r0
    8e1c:	b810ff80 	brid	-128		// 8d9c
    8e20:	307a0005 	addik	r3, r26, 5

00008e24 <__s2b>:
    8e24:	3021ffcc 	addik	r1, r1, -52
    8e28:	fa61001c 	swi	r19, r1, 28
    8e2c:	fae10024 	swi	r23, r1, 36
    8e30:	12660000 	addk	r19, r6, r0
    8e34:	12e50000 	addk	r23, r5, r0
    8e38:	30c00009 	addik	r6, r0, 9
    8e3c:	30a80008 	addik	r5, r8, 8
    8e40:	fac10020 	swi	r22, r1, 32
    8e44:	fb010028 	swi	r24, r1, 40
    8e48:	fb21002c 	swi	r25, r1, 44
    8e4c:	f9e10000 	swi	r15, r1, 0
    8e50:	fb410030 	swi	r26, r1, 48
    8e54:	13080000 	addk	r24, r8, r0
    8e58:	13270000 	addk	r25, r7, r0
    8e5c:	b0000000 	imm	0
    8e60:	b9f48a04 	brlid	r15, -30204	// 11864 <__divsi3>
    8e64:	12c90000 	addk	r22, r9, r0
    8e68:	30800001 	addik	r4, r0, 1
    8e6c:	14a32001 	cmp	r5, r3, r4
    8e70:	bea50018 	bgeid	r5, 24		// 8e88
    8e74:	10c00000 	addk	r6, r0, r0
    8e78:	10842000 	addk	r4, r4, r4
    8e7c:	15432001 	cmp	r10, r3, r4
    8e80:	be4afff8 	bltid	r10, -8		// 8e78
    8e84:	30c60001 	addik	r6, r6, 1
    8e88:	b9f4fbe8 	brlid	r15, -1048	// 8a70 <_Balloc>
    8e8c:	10b70000 	addk	r5, r23, r0
    8e90:	30a00001 	addik	r5, r0, 1
    8e94:	30800009 	addik	r4, r0, 9
    8e98:	f8a30010 	swi	r5, r3, 16
    8e9c:	14b92001 	cmp	r5, r25, r4
    8ea0:	bea500a0 	bgeid	r5, 160		// 8f40
    8ea4:	fac30014 	swi	r22, r3, 20
    8ea8:	13532000 	addk	r26, r19, r4
    8eac:	12da0000 	addk	r22, r26, r0
    8eb0:	1273c800 	addk	r19, r19, r25
    8eb4:	e0960000 	lbui	r4, r22, 0
    8eb8:	10b70000 	addk	r5, r23, r0
    8ebc:	10c30000 	addk	r6, r3, r0
    8ec0:	91040060 	sext8	r8, r4
    8ec4:	30e0000a 	addik	r7, r0, 10
    8ec8:	3108ffd0 	addik	r8, r8, -48
    8ecc:	b9f4fd18 	brlid	r15, -744	// 8be4 <__multadd>
    8ed0:	32d60001 	addik	r22, r22, 1
    8ed4:	88969800 	xor	r4, r22, r19
    8ed8:	bc24ffdc 	bnei	r4, -36		// 8eb4
    8edc:	127ac800 	addk	r19, r26, r25
    8ee0:	3273fff8 	addik	r19, r19, -8
    8ee4:	1498c801 	cmp	r4, r24, r25
    8ee8:	bea40034 	bgeid	r4, 52		// 8f1c
    8eec:	1719c000 	rsubk	r24, r25, r24
    8ef0:	1313c000 	addk	r24, r19, r24
    8ef4:	e1130000 	lbui	r8, r19, 0
    8ef8:	10b70000 	addk	r5, r23, r0
    8efc:	10c30000 	addk	r6, r3, r0
    8f00:	91080060 	sext8	r8, r8
    8f04:	30e0000a 	addik	r7, r0, 10
    8f08:	3108ffd0 	addik	r8, r8, -48
    8f0c:	b9f4fcd8 	brlid	r15, -808	// 8be4 <__multadd>
    8f10:	32730001 	addik	r19, r19, 1
    8f14:	8893c000 	xor	r4, r19, r24
    8f18:	bc24ffdc 	bnei	r4, -36		// 8ef4
    8f1c:	e9e10000 	lwi	r15, r1, 0
    8f20:	ea61001c 	lwi	r19, r1, 28
    8f24:	eac10020 	lwi	r22, r1, 32
    8f28:	eae10024 	lwi	r23, r1, 36
    8f2c:	eb010028 	lwi	r24, r1, 40
    8f30:	eb21002c 	lwi	r25, r1, 44
    8f34:	eb410030 	lwi	r26, r1, 48
    8f38:	b60f0008 	rtsd	r15, 8
    8f3c:	30210034 	addik	r1, r1, 52
    8f40:	13240000 	addk	r25, r4, r0
    8f44:	b810ffa0 	brid	-96		// 8ee4
    8f48:	3273000a 	addik	r19, r19, 10

00008f4c <__hi0bits>:
    8f4c:	b000ffff 	imm	-1
    8f50:	a4850000 	andi	r4, r5, 0
    8f54:	be24004c 	bneid	r4, 76		// 8fa0
    8f58:	10600000 	addk	r3, r0, r0
    8f5c:	10a52800 	addk	r5, r5, r5
    8f60:	10a52800 	addk	r5, r5, r5
    8f64:	10a52800 	addk	r5, r5, r5
    8f68:	10a52800 	addk	r5, r5, r5
    8f6c:	10a52800 	addk	r5, r5, r5
    8f70:	10a52800 	addk	r5, r5, r5
    8f74:	10a52800 	addk	r5, r5, r5
    8f78:	10a52800 	addk	r5, r5, r5
    8f7c:	10a52800 	addk	r5, r5, r5
    8f80:	10a52800 	addk	r5, r5, r5
    8f84:	10a52800 	addk	r5, r5, r5
    8f88:	10a52800 	addk	r5, r5, r5
    8f8c:	10a52800 	addk	r5, r5, r5
    8f90:	10a52800 	addk	r5, r5, r5
    8f94:	10a52800 	addk	r5, r5, r5
    8f98:	10a52800 	addk	r5, r5, r5
    8f9c:	30600010 	addik	r3, r0, 16	// 10 <_.d1>
    8fa0:	b000ff00 	imm	-256
    8fa4:	a4850000 	andi	r4, r5, 0
    8fa8:	bc240028 	bnei	r4, 40		// 8fd0
    8fac:	10a52800 	addk	r5, r5, r5
    8fb0:	10a52800 	addk	r5, r5, r5
    8fb4:	10a52800 	addk	r5, r5, r5
    8fb8:	10a52800 	addk	r5, r5, r5
    8fbc:	10a52800 	addk	r5, r5, r5
    8fc0:	10a52800 	addk	r5, r5, r5
    8fc4:	10a52800 	addk	r5, r5, r5
    8fc8:	30630008 	addik	r3, r3, 8
    8fcc:	10a52800 	addk	r5, r5, r5
    8fd0:	b000f000 	imm	-4096
    8fd4:	a4850000 	andi	r4, r5, 0
    8fd8:	bc240018 	bnei	r4, 24		// 8ff0
    8fdc:	10a52800 	addk	r5, r5, r5
    8fe0:	10a52800 	addk	r5, r5, r5
    8fe4:	10a52800 	addk	r5, r5, r5
    8fe8:	30630004 	addik	r3, r3, 4
    8fec:	10a52800 	addk	r5, r5, r5
    8ff0:	b000c000 	imm	-16384
    8ff4:	a4850000 	andi	r4, r5, 0
    8ff8:	bc240010 	bnei	r4, 16		// 9008
    8ffc:	10a52800 	addk	r5, r5, r5
    9000:	30630002 	addik	r3, r3, 2
    9004:	10a52800 	addk	r5, r5, r5
    9008:	bc450014 	blti	r5, 20		// 901c
    900c:	b0004000 	imm	16384
    9010:	a4a50000 	andi	r5, r5, 0
    9014:	bc250010 	bnei	r5, 16		// 9024
    9018:	30600020 	addik	r3, r0, 32
    901c:	b60f0008 	rtsd	r15, 8
    9020:	80000000 	or	r0, r0, r0
    9024:	b60f0008 	rtsd	r15, 8
    9028:	30630001 	addik	r3, r3, 1

0000902c <__lo0bits>:
    902c:	e8850000 	lwi	r4, r5, 0
    9030:	a4640007 	andi	r3, r4, 7
    9034:	be030034 	beqid	r3, 52		// 9068
    9038:	a4c40001 	andi	r6, r4, 1
    903c:	be260024 	bneid	r6, 36		// 9060
    9040:	10600000 	addk	r3, r0, r0
    9044:	a4640002 	andi	r3, r4, 2
    9048:	bc23013c 	bnei	r3, 316		// 9184
    904c:	10c02000 	addk	r6, r0, r4
    9050:	90c40041 	srl	r6, r4
    9054:	90c60041 	srl	r6, r6
    9058:	30600002 	addik	r3, r0, 2
    905c:	f8c50000 	swi	r6, r5, 0
    9060:	b60f0008 	rtsd	r15, 8
    9064:	80000000 	or	r0, r0, r0
    9068:	b0000000 	imm	0
    906c:	a4c4ffff 	andi	r6, r4, -1
    9070:	3021fff8 	addik	r1, r1, -8
    9074:	be26005c 	bneid	r6, 92		// 90d0
    9078:	a4c400ff 	andi	r6, r4, 255
    907c:	10c02000 	addk	r6, r0, r4
    9080:	90c40041 	srl	r6, r4
    9084:	90c60041 	srl	r6, r6
    9088:	90c60041 	srl	r6, r6
    908c:	90c60041 	srl	r6, r6
    9090:	90c60041 	srl	r6, r6
    9094:	90c60041 	srl	r6, r6
    9098:	90c60041 	srl	r6, r6
    909c:	90c60041 	srl	r6, r6
    90a0:	90c60041 	srl	r6, r6
    90a4:	90c60041 	srl	r6, r6
    90a8:	90c60041 	srl	r6, r6
    90ac:	90c60041 	srl	r6, r6
    90b0:	90c60041 	srl	r6, r6
    90b4:	90c60041 	srl	r6, r6
    90b8:	90c60041 	srl	r6, r6
    90bc:	90c60041 	srl	r6, r6
    90c0:	10860000 	addk	r4, r6, r0
    90c4:	30600010 	addik	r3, r0, 16	// 10 <_.d1>
    90c8:	f8c10004 	swi	r6, r1, 4
    90cc:	a4c400ff 	andi	r6, r4, 255
    90d0:	be26003c 	bneid	r6, 60		// 910c
    90d4:	a4c4000f 	andi	r6, r4, 15
    90d8:	10c02000 	addk	r6, r0, r4
    90dc:	90c40041 	srl	r6, r4
    90e0:	90c60041 	srl	r6, r6
    90e4:	90c60041 	srl	r6, r6
    90e8:	90c60041 	srl	r6, r6
    90ec:	90c60041 	srl	r6, r6
    90f0:	90c60041 	srl	r6, r6
    90f4:	90c60041 	srl	r6, r6
    90f8:	90c60041 	srl	r6, r6
    90fc:	10860000 	addk	r4, r6, r0
    9100:	30630008 	addik	r3, r3, 8
    9104:	f8c10004 	swi	r6, r1, 4
    9108:	a4c4000f 	andi	r6, r4, 15
    910c:	be26002c 	bneid	r6, 44		// 9138
    9110:	a4c40003 	andi	r6, r4, 3
    9114:	10c02000 	addk	r6, r0, r4
    9118:	90c40041 	srl	r6, r4
    911c:	90c60041 	srl	r6, r6
    9120:	90c60041 	srl	r6, r6
    9124:	90c60041 	srl	r6, r6
    9128:	10860000 	addk	r4, r6, r0
    912c:	30630004 	addik	r3, r3, 4
    9130:	f8c10004 	swi	r6, r1, 4
    9134:	a4c40003 	andi	r6, r4, 3
    9138:	be260024 	bneid	r6, 36		// 915c
    913c:	a4c40001 	andi	r6, r4, 1
    9140:	10c02000 	addk	r6, r0, r4
    9144:	90c40041 	srl	r6, r4
    9148:	90c60041 	srl	r6, r6
    914c:	10860000 	addk	r4, r6, r0
    9150:	30630002 	addik	r3, r3, 2
    9154:	f8c10004 	swi	r6, r1, 4
    9158:	a4c40001 	andi	r6, r4, 1
    915c:	bc060010 	beqi	r6, 16		// 916c
    9160:	f8850000 	swi	r4, r5, 0
    9164:	b60f0008 	rtsd	r15, 8
    9168:	30210008 	addik	r1, r1, 8
    916c:	90840041 	srl	r4, r4
    9170:	be24fff0 	bneid	r4, -16		// 9160
    9174:	30630001 	addik	r3, r3, 1
    9178:	30600020 	addik	r3, r0, 32
    917c:	b60f0008 	rtsd	r15, 8
    9180:	30210008 	addik	r1, r1, 8
    9184:	90840041 	srl	r4, r4
    9188:	f8850000 	swi	r4, r5, 0
    918c:	b60f0008 	rtsd	r15, 8
    9190:	30600001 	addik	r3, r0, 1

00009194 <__i2b>:
    9194:	3021ffe0 	addik	r1, r1, -32
    9198:	fa61001c 	swi	r19, r1, 28
    919c:	12660000 	addk	r19, r6, r0
    91a0:	f9e10000 	swi	r15, r1, 0
    91a4:	b9f4f8cc 	brlid	r15, -1844	// 8a70 <_Balloc>
    91a8:	30c00001 	addik	r6, r0, 1
    91ac:	30a00001 	addik	r5, r0, 1
    91b0:	fa630014 	swi	r19, r3, 20
    91b4:	f8a30010 	swi	r5, r3, 16
    91b8:	e9e10000 	lwi	r15, r1, 0
    91bc:	ea61001c 	lwi	r19, r1, 28
    91c0:	b60f0008 	rtsd	r15, 8
    91c4:	30210020 	addik	r1, r1, 32

000091c8 <__multiply>:
    91c8:	3021ffac 	addik	r1, r1, -84
    91cc:	fa610028 	swi	r19, r1, 40
    91d0:	fbc1004c 	swi	r30, r1, 76
    91d4:	f9e10000 	swi	r15, r1, 0
    91d8:	fac1002c 	swi	r22, r1, 44
    91dc:	fae10030 	swi	r23, r1, 48
    91e0:	fb010034 	swi	r24, r1, 52
    91e4:	fb210038 	swi	r25, r1, 56
    91e8:	fb41003c 	swi	r26, r1, 60
    91ec:	fb610040 	swi	r27, r1, 64
    91f0:	fb810044 	swi	r28, r1, 68
    91f4:	fba10048 	swi	r29, r1, 72
    91f8:	fbe10050 	swi	r31, r1, 80
    91fc:	eac60010 	lwi	r22, r6, 16
    9200:	eae70010 	lwi	r23, r7, 16
    9204:	12660000 	addk	r19, r6, r0
    9208:	1477b001 	cmp	r3, r23, r22
    920c:	bea3001c 	bgeid	r3, 28		// 9228
    9210:	13c70000 	addk	r30, r7, r0
    9214:	10960000 	addk	r4, r22, r0
    9218:	12670000 	addk	r19, r7, r0
    921c:	12d70000 	addk	r22, r23, r0
    9220:	13c60000 	addk	r30, r6, r0
    9224:	12e40000 	addk	r23, r4, r0
    9228:	e8930008 	lwi	r4, r19, 8
    922c:	e8d30004 	lwi	r6, r19, 4
    9230:	1376b800 	addk	r27, r22, r23
    9234:	149b2001 	cmp	r4, r27, r4
    9238:	339b0005 	addik	r28, r27, 5
    923c:	10602000 	addk	r3, r0, r4
    9240:	90640041 	srl	r3, r4
    9244:	90630041 	srl	r3, r3
    9248:	90630041 	srl	r3, r3
    924c:	90630041 	srl	r3, r3
    9250:	90630041 	srl	r3, r3
    9254:	90630041 	srl	r3, r3
    9258:	90630041 	srl	r3, r3
    925c:	90630041 	srl	r3, r3
    9260:	90630041 	srl	r3, r3
    9264:	90630041 	srl	r3, r3
    9268:	90630041 	srl	r3, r3
    926c:	90630041 	srl	r3, r3
    9270:	90630041 	srl	r3, r3
    9274:	90630041 	srl	r3, r3
    9278:	90630041 	srl	r3, r3
    927c:	90630041 	srl	r3, r3
    9280:	90630041 	srl	r3, r3
    9284:	90630041 	srl	r3, r3
    9288:	90630041 	srl	r3, r3
    928c:	90630041 	srl	r3, r3
    9290:	90630041 	srl	r3, r3
    9294:	90630041 	srl	r3, r3
    9298:	90630041 	srl	r3, r3
    929c:	90630041 	srl	r3, r3
    92a0:	90630041 	srl	r3, r3
    92a4:	90630041 	srl	r3, r3
    92a8:	90630041 	srl	r3, r3
    92ac:	90630041 	srl	r3, r3
    92b0:	90630041 	srl	r3, r3
    92b4:	90630041 	srl	r3, r3
    92b8:	90630041 	srl	r3, r3
    92bc:	139ce000 	addk	r28, r28, r28
    92c0:	b9f4f7b0 	brlid	r15, -2128	// 8a70 <_Balloc>
    92c4:	10c61800 	addk	r6, r6, r3
    92c8:	139ce000 	addk	r28, r28, r28
    92cc:	33430014 	addik	r26, r3, 20
    92d0:	1383e000 	addk	r28, r3, r28
    92d4:	f8610024 	swi	r3, r1, 36
    92d8:	149cd003 	cmpu	r4, r28, r26
    92dc:	bea40018 	bgeid	r4, 24		// 92f4
    92e0:	107a0000 	addk	r3, r26, r0
    92e4:	f8030000 	swi	r0, r3, 0
    92e8:	30630004 	addik	r3, r3, 4
    92ec:	149c1803 	cmpu	r4, r28, r3
    92f0:	bc44fff4 	blti	r4, -12		// 92e4
    92f4:	32f70005 	addik	r23, r23, 5
    92f8:	12f7b800 	addk	r23, r23, r23
    92fc:	32d60005 	addik	r22, r22, 5
    9300:	12f7b800 	addk	r23, r23, r23
    9304:	12feb800 	addk	r23, r30, r23
    9308:	12d6b000 	addk	r22, r22, r22
    930c:	333e0014 	addik	r25, r30, 20
    9310:	30930014 	addik	r4, r19, 20
    9314:	12d6b000 	addk	r22, r22, r22
    9318:	fae1001c 	swi	r23, r1, 28
    931c:	1477c803 	cmpu	r3, r23, r25
    9320:	f8810020 	swi	r4, r1, 32
    9324:	bea303bc 	bgeid	r3, 956		// 96e0
    9328:	1313b000 	addk	r24, r19, r22
    932c:	e8790000 	lwi	r3, r25, 0
    9330:	b0000000 	imm	0
    9334:	a6e3ffff 	andi	r23, r3, -1
    9338:	be1701c8 	beqid	r23, 456		// 9500
    933c:	127a0000 	addk	r19, r26, r0
    9340:	ebc10020 	lwi	r30, r1, 32
    9344:	13a00000 	addk	r29, r0, r0
    9348:	ebfe0000 	lwi	r31, r30, 0
    934c:	10d70000 	addk	r6, r23, r0
    9350:	b0000000 	imm	0
    9354:	a4bfffff 	andi	r5, r31, -1
    9358:	b0000000 	imm	0
    935c:	b9f4863c 	brlid	r15, -31172	// 11998 <__mulsi3>
    9360:	ead30000 	lwi	r22, r19, 0
    9364:	10d70000 	addk	r6, r23, r0
    9368:	b0000000 	imm	0
    936c:	a4f6ffff 	andi	r7, r22, -1
    9370:	10633800 	addk	r3, r3, r7
    9374:	10a0f800 	addk	r5, r0, r31
    9378:	90bf0041 	srl	r5, r31
    937c:	90a50041 	srl	r5, r5
    9380:	90a50041 	srl	r5, r5
    9384:	90a50041 	srl	r5, r5
    9388:	90a50041 	srl	r5, r5
    938c:	90a50041 	srl	r5, r5
    9390:	90a50041 	srl	r5, r5
    9394:	90a50041 	srl	r5, r5
    9398:	90a50041 	srl	r5, r5
    939c:	90a50041 	srl	r5, r5
    93a0:	90a50041 	srl	r5, r5
    93a4:	90a50041 	srl	r5, r5
    93a8:	90a50041 	srl	r5, r5
    93ac:	90a50041 	srl	r5, r5
    93b0:	90a50041 	srl	r5, r5
    93b4:	90a50041 	srl	r5, r5
    93b8:	b0000000 	imm	0
    93bc:	b9f485dc 	brlid	r15, -31268	// 11998 <__mulsi3>
    93c0:	13a3e800 	addk	r29, r3, r29
    93c4:	10a0b000 	addk	r5, r0, r22
    93c8:	90b60041 	srl	r5, r22
    93cc:	90a50041 	srl	r5, r5
    93d0:	90a50041 	srl	r5, r5
    93d4:	90a50041 	srl	r5, r5
    93d8:	90a50041 	srl	r5, r5
    93dc:	90a50041 	srl	r5, r5
    93e0:	90a50041 	srl	r5, r5
    93e4:	90a50041 	srl	r5, r5
    93e8:	90a50041 	srl	r5, r5
    93ec:	90a50041 	srl	r5, r5
    93f0:	90a50041 	srl	r5, r5
    93f4:	90a50041 	srl	r5, r5
    93f8:	90a50041 	srl	r5, r5
    93fc:	90a50041 	srl	r5, r5
    9400:	90a50041 	srl	r5, r5
    9404:	90a50041 	srl	r5, r5
    9408:	10632800 	addk	r3, r3, r5
    940c:	10c0e800 	addk	r6, r0, r29
    9410:	90dd0041 	srl	r6, r29
    9414:	90c60041 	srl	r6, r6
    9418:	90c60041 	srl	r6, r6
    941c:	90c60041 	srl	r6, r6
    9420:	90c60041 	srl	r6, r6
    9424:	90c60041 	srl	r6, r6
    9428:	90c60041 	srl	r6, r6
    942c:	90c60041 	srl	r6, r6
    9430:	90c60041 	srl	r6, r6
    9434:	90c60041 	srl	r6, r6
    9438:	90c60041 	srl	r6, r6
    943c:	90c60041 	srl	r6, r6
    9440:	90c60041 	srl	r6, r6
    9444:	90c60041 	srl	r6, r6
    9448:	90c60041 	srl	r6, r6
    944c:	90c60041 	srl	r6, r6
    9450:	10633000 	addk	r3, r3, r6
    9454:	10a31800 	addk	r5, r3, r3
    9458:	10a52800 	addk	r5, r5, r5
    945c:	10a52800 	addk	r5, r5, r5
    9460:	10a52800 	addk	r5, r5, r5
    9464:	10a52800 	addk	r5, r5, r5
    9468:	10a52800 	addk	r5, r5, r5
    946c:	10a52800 	addk	r5, r5, r5
    9470:	10a52800 	addk	r5, r5, r5
    9474:	10a52800 	addk	r5, r5, r5
    9478:	10a52800 	addk	r5, r5, r5
    947c:	10a52800 	addk	r5, r5, r5
    9480:	10a52800 	addk	r5, r5, r5
    9484:	10a52800 	addk	r5, r5, r5
    9488:	10a52800 	addk	r5, r5, r5
    948c:	10a52800 	addk	r5, r5, r5
    9490:	b0000000 	imm	0
    9494:	a4fdffff 	andi	r7, r29, -1
    9498:	10a52800 	addk	r5, r5, r5
    949c:	80a53800 	or	r5, r5, r7
    94a0:	33de0004 	addik	r30, r30, 4
    94a4:	f8b30000 	swi	r5, r19, 0
    94a8:	14b8f003 	cmpu	r5, r24, r30
    94ac:	13a01800 	addk	r29, r0, r3
    94b0:	93a30041 	srl	r29, r3
    94b4:	93bd0041 	srl	r29, r29
    94b8:	93bd0041 	srl	r29, r29
    94bc:	93bd0041 	srl	r29, r29
    94c0:	93bd0041 	srl	r29, r29
    94c4:	93bd0041 	srl	r29, r29
    94c8:	93bd0041 	srl	r29, r29
    94cc:	93bd0041 	srl	r29, r29
    94d0:	93bd0041 	srl	r29, r29
    94d4:	93bd0041 	srl	r29, r29
    94d8:	93bd0041 	srl	r29, r29
    94dc:	93bd0041 	srl	r29, r29
    94e0:	93bd0041 	srl	r29, r29
    94e4:	93bd0041 	srl	r29, r29
    94e8:	93bd0041 	srl	r29, r29
    94ec:	93bd0041 	srl	r29, r29
    94f0:	be45fe58 	bltid	r5, -424		// 9348
    94f4:	32730004 	addik	r19, r19, 4
    94f8:	fbb30000 	swi	r29, r19, 0
    94fc:	e8790000 	lwi	r3, r25, 0
    9500:	12e01800 	addk	r23, r0, r3
    9504:	92e30041 	srl	r23, r3
    9508:	92f70041 	srl	r23, r23
    950c:	92f70041 	srl	r23, r23
    9510:	92f70041 	srl	r23, r23
    9514:	92f70041 	srl	r23, r23
    9518:	92f70041 	srl	r23, r23
    951c:	92f70041 	srl	r23, r23
    9520:	92f70041 	srl	r23, r23
    9524:	92f70041 	srl	r23, r23
    9528:	92f70041 	srl	r23, r23
    952c:	92f70041 	srl	r23, r23
    9530:	92f70041 	srl	r23, r23
    9534:	92f70041 	srl	r23, r23
    9538:	92f70041 	srl	r23, r23
    953c:	92f70041 	srl	r23, r23
    9540:	92f70041 	srl	r23, r23
    9544:	be17018c 	beqid	r23, 396		// 96d0
    9548:	e881001c 	lwi	r4, r1, 28
    954c:	ebda0000 	lwi	r30, r26, 0
    9550:	13fa0000 	addk	r31, r26, r0
    9554:	ea610020 	lwi	r19, r1, 32
    9558:	12de0000 	addk	r22, r30, r0
    955c:	13a00000 	addk	r29, r0, r0
    9560:	e4b30002 	lhui	r5, r19, 2
    9564:	b0000000 	imm	0
    9568:	b9f48430 	brlid	r15, -31696	// 11998 <__mulsi3>
    956c:	10d70000 	addk	r6, r23, r0
    9570:	10e0b000 	addk	r7, r0, r22
    9574:	90f60041 	srl	r7, r22
    9578:	90e70041 	srl	r7, r7
    957c:	90e70041 	srl	r7, r7
    9580:	90e70041 	srl	r7, r7
    9584:	90e70041 	srl	r7, r7
    9588:	90e70041 	srl	r7, r7
    958c:	90e70041 	srl	r7, r7
    9590:	90e70041 	srl	r7, r7
    9594:	90e70041 	srl	r7, r7
    9598:	90e70041 	srl	r7, r7
    959c:	90e70041 	srl	r7, r7
    95a0:	90e70041 	srl	r7, r7
    95a4:	90e70041 	srl	r7, r7
    95a8:	90e70041 	srl	r7, r7
    95ac:	90e70041 	srl	r7, r7
    95b0:	90e70041 	srl	r7, r7
    95b4:	10633800 	addk	r3, r3, r7
    95b8:	13a3e800 	addk	r29, r3, r29
    95bc:	107de800 	addk	r3, r29, r29
    95c0:	10631800 	addk	r3, r3, r3
    95c4:	10631800 	addk	r3, r3, r3
    95c8:	10631800 	addk	r3, r3, r3
    95cc:	10631800 	addk	r3, r3, r3
    95d0:	10631800 	addk	r3, r3, r3
    95d4:	10631800 	addk	r3, r3, r3
    95d8:	10631800 	addk	r3, r3, r3
    95dc:	10631800 	addk	r3, r3, r3
    95e0:	10631800 	addk	r3, r3, r3
    95e4:	10631800 	addk	r3, r3, r3
    95e8:	10631800 	addk	r3, r3, r3
    95ec:	10631800 	addk	r3, r3, r3
    95f0:	10631800 	addk	r3, r3, r3
    95f4:	10631800 	addk	r3, r3, r3
    95f8:	b0000000 	imm	0
    95fc:	a51effff 	andi	r8, r30, -1
    9600:	10631800 	addk	r3, r3, r3
    9604:	80634000 	or	r3, r3, r8
    9608:	f87f0000 	swi	r3, r31, 0
    960c:	33ff0004 	addik	r31, r31, 4
    9610:	e4b30000 	lhui	r5, r19, 0
    9614:	10d70000 	addk	r6, r23, r0
    9618:	eadf0000 	lwi	r22, r31, 0
    961c:	b0000000 	imm	0
    9620:	b9f48378 	brlid	r15, -31880	// 11998 <__mulsi3>
    9624:	32730004 	addik	r19, r19, 4
    9628:	b0000000 	imm	0
    962c:	a7d6ffff 	andi	r30, r22, -1
    9630:	107e1800 	addk	r3, r30, r3
    9634:	10c0e800 	addk	r6, r0, r29
    9638:	90dd0041 	srl	r6, r29
    963c:	90c60041 	srl	r6, r6
    9640:	90c60041 	srl	r6, r6
    9644:	90c60041 	srl	r6, r6
    9648:	90c60041 	srl	r6, r6
    964c:	90c60041 	srl	r6, r6
    9650:	90c60041 	srl	r6, r6
    9654:	90c60041 	srl	r6, r6
    9658:	90c60041 	srl	r6, r6
    965c:	90c60041 	srl	r6, r6
    9660:	90c60041 	srl	r6, r6
    9664:	90c60041 	srl	r6, r6
    9668:	90c60041 	srl	r6, r6
    966c:	90c60041 	srl	r6, r6
    9670:	90c60041 	srl	r6, r6
    9674:	90c60041 	srl	r6, r6
    9678:	14b89803 	cmpu	r5, r24, r19
    967c:	13c33000 	addk	r30, r3, r6
    9680:	13a0f000 	addk	r29, r0, r30
    9684:	93be0041 	srl	r29, r30
    9688:	93bd0041 	srl	r29, r29
    968c:	93bd0041 	srl	r29, r29
    9690:	93bd0041 	srl	r29, r29
    9694:	93bd0041 	srl	r29, r29
    9698:	93bd0041 	srl	r29, r29
    969c:	93bd0041 	srl	r29, r29
    96a0:	93bd0041 	srl	r29, r29
    96a4:	93bd0041 	srl	r29, r29
    96a8:	93bd0041 	srl	r29, r29
    96ac:	93bd0041 	srl	r29, r29
    96b0:	93bd0041 	srl	r29, r29
    96b4:	93bd0041 	srl	r29, r29
    96b8:	93bd0041 	srl	r29, r29
    96bc:	93bd0041 	srl	r29, r29
    96c0:	93bd0041 	srl	r29, r29
    96c4:	bc45fe9c 	blti	r5, -356		// 9560
    96c8:	fbdf0000 	swi	r30, r31, 0
    96cc:	e881001c 	lwi	r4, r1, 28
    96d0:	33390004 	addik	r25, r25, 4
    96d4:	1464c803 	cmpu	r3, r4, r25
    96d8:	be43fc54 	bltid	r3, -940		// 932c
    96dc:	335a0004 	addik	r26, r26, 4
    96e0:	be7b0038 	bleid	r27, 56		// 9718
    96e4:	e8810024 	lwi	r4, r1, 36
    96e8:	e87cfffc 	lwi	r3, r28, -4
    96ec:	be03001c 	beqid	r3, 28		// 9708
    96f0:	339cfffc 	addik	r28, r28, -4
    96f4:	b8100028 	brid	40		// 971c
    96f8:	fb640010 	swi	r27, r4, 16
    96fc:	e87c0000 	lwi	r3, r28, 0
    9700:	be230018 	bneid	r3, 24		// 9718
    9704:	e8810024 	lwi	r4, r1, 36
    9708:	337bffff 	addik	r27, r27, -1
    970c:	be3bfff0 	bneid	r27, -16		// 96fc
    9710:	339cfffc 	addik	r28, r28, -4
    9714:	e8810024 	lwi	r4, r1, 36
    9718:	fb640010 	swi	r27, r4, 16
    971c:	10640000 	addk	r3, r4, r0
    9720:	e9e10000 	lwi	r15, r1, 0
    9724:	ea610028 	lwi	r19, r1, 40
    9728:	eac1002c 	lwi	r22, r1, 44
    972c:	eae10030 	lwi	r23, r1, 48
    9730:	eb010034 	lwi	r24, r1, 52
    9734:	eb210038 	lwi	r25, r1, 56
    9738:	eb41003c 	lwi	r26, r1, 60
    973c:	eb610040 	lwi	r27, r1, 64
    9740:	eb810044 	lwi	r28, r1, 68
    9744:	eba10048 	lwi	r29, r1, 72
    9748:	ebc1004c 	lwi	r30, r1, 76
    974c:	ebe10050 	lwi	r31, r1, 80
    9750:	b60f0008 	rtsd	r15, 8
    9754:	30210054 	addik	r1, r1, 84

00009758 <__pow5mult>:
    9758:	3021ffd0 	addik	r1, r1, -48
    975c:	fac10020 	swi	r22, r1, 32
    9760:	fb010028 	swi	r24, r1, 40
    9764:	fb21002c 	swi	r25, r1, 44
    9768:	f9e10000 	swi	r15, r1, 0
    976c:	fa61001c 	swi	r19, r1, 28
    9770:	fae10024 	swi	r23, r1, 36
    9774:	a4670003 	andi	r3, r7, 3
    9778:	12c70000 	addk	r22, r7, r0
    977c:	13250000 	addk	r25, r5, r0
    9780:	be2300b8 	bneid	r3, 184		// 9838
    9784:	13060000 	addk	r24, r6, r0
    9788:	1260b000 	addk	r19, r0, r22
    978c:	92760001 	sra	r19, r22
    9790:	92730001 	sra	r19, r19
    9794:	bc130060 	beqi	r19, 96		// 97f4
    9798:	ead90024 	lwi	r22, r25, 36
    979c:	bc1600c0 	beqi	r22, 192		// 985c
    97a0:	eaf60008 	lwi	r23, r22, 8
    97a4:	bc1700d8 	beqi	r23, 216		// 987c
    97a8:	a4930001 	andi	r4, r19, 1
    97ac:	be240024 	bneid	r4, 36		// 97d0
    97b0:	92730001 	sra	r19, r19
    97b4:	bc130040 	beqi	r19, 64		// 97f4
    97b8:	ead70000 	lwi	r22, r23, 0
    97bc:	be16005c 	beqid	r22, 92		// 9818
    97c0:	a4930001 	andi	r4, r19, 1
    97c4:	12f60000 	addk	r23, r22, r0
    97c8:	be04ffec 	beqid	r4, -20		// 97b4
    97cc:	92730001 	sra	r19, r19
    97d0:	10d80000 	addk	r6, r24, r0
    97d4:	10b90000 	addk	r5, r25, r0
    97d8:	b9f4f9f0 	brlid	r15, -1552	// 91c8 <__multiply>
    97dc:	10f70000 	addk	r7, r23, r0
    97e0:	10d80000 	addk	r6, r24, r0
    97e4:	10b90000 	addk	r5, r25, r0
    97e8:	b9f4f37c 	brlid	r15, -3204	// 8b64 <_Bfree>
    97ec:	13030000 	addk	r24, r3, r0
    97f0:	bc33ffc8 	bnei	r19, -56		// 97b8
    97f4:	10780000 	addk	r3, r24, r0
    97f8:	e9e10000 	lwi	r15, r1, 0
    97fc:	ea61001c 	lwi	r19, r1, 28
    9800:	eac10020 	lwi	r22, r1, 32
    9804:	eae10024 	lwi	r23, r1, 36
    9808:	eb010028 	lwi	r24, r1, 40
    980c:	eb21002c 	lwi	r25, r1, 44
    9810:	b60f0008 	rtsd	r15, 8
    9814:	30210030 	addik	r1, r1, 48
    9818:	10d70000 	addk	r6, r23, r0
    981c:	10f70000 	addk	r7, r23, r0
    9820:	b9f4f9a8 	brlid	r15, -1624	// 91c8 <__multiply>
    9824:	10b90000 	addk	r5, r25, r0
    9828:	f8770000 	swi	r3, r23, 0
    982c:	fac30000 	swi	r22, r3, 0
    9830:	b810ff78 	brid	-136		// 97a8
    9834:	12e30000 	addk	r23, r3, r0
    9838:	3063ffff 	addik	r3, r3, -1
    983c:	10631800 	addk	r3, r3, r3
    9840:	10631800 	addk	r3, r3, r3
    9844:	b0000001 	imm	1
    9848:	e8e32dac 	lwi	r7, r3, 11692
    984c:	b9f4f398 	brlid	r15, -3176	// 8be4 <__multadd>
    9850:	11000000 	addk	r8, r0, r0
    9854:	b810ff34 	brid	-204		// 9788
    9858:	13030000 	addk	r24, r3, r0
    985c:	b9f4e3ac 	brlid	r15, -7252	// 7c08 <malloc>
    9860:	30a00010 	addik	r5, r0, 16	// 10 <_.d1>
    9864:	12c30000 	addk	r22, r3, r0
    9868:	f8790024 	swi	r3, r25, 36
    986c:	f8030004 	swi	r0, r3, 4
    9870:	f8030008 	swi	r0, r3, 8
    9874:	f8030000 	swi	r0, r3, 0
    9878:	f803000c 	swi	r0, r3, 12
    987c:	10b90000 	addk	r5, r25, r0
    9880:	b9f4f914 	brlid	r15, -1772	// 9194 <__i2b>
    9884:	30c00271 	addik	r6, r0, 625
    9888:	f8760008 	swi	r3, r22, 8
    988c:	12e30000 	addk	r23, r3, r0
    9890:	b810ff18 	brid	-232		// 97a8
    9894:	f8030000 	swi	r0, r3, 0

00009898 <__lshift>:
    9898:	3021ffc8 	addik	r1, r1, -56
    989c:	fa610020 	swi	r19, r1, 32
    98a0:	fac10024 	swi	r22, r1, 36
    98a4:	fae10028 	swi	r23, r1, 40
    98a8:	fb01002c 	swi	r24, r1, 44
    98ac:	fb410034 	swi	r26, r1, 52
    98b0:	f9e10000 	swi	r15, r1, 0
    98b4:	fb210030 	swi	r25, r1, 48
    98b8:	eb260010 	lwi	r25, r6, 16
    98bc:	e8660008 	lwi	r3, r6, 8
    98c0:	12603800 	addk	r19, r0, r7
    98c4:	92670001 	sra	r19, r7
    98c8:	92730001 	sra	r19, r19
    98cc:	92730001 	sra	r19, r19
    98d0:	92730001 	sra	r19, r19
    98d4:	92730001 	sra	r19, r19
    98d8:	1333c800 	addk	r25, r19, r25
    98dc:	32d90001 	addik	r22, r25, 1
    98e0:	13050000 	addk	r24, r5, r0
    98e4:	14b61801 	cmp	r5, r22, r3
    98e8:	12e60000 	addk	r23, r6, r0
    98ec:	13470000 	addk	r26, r7, r0
    98f0:	bea50018 	bgeid	r5, 24		// 9908
    98f4:	e8c60004 	lwi	r6, r6, 4
    98f8:	10631800 	addk	r3, r3, r3
    98fc:	15161801 	cmp	r8, r22, r3
    9900:	be48fff8 	bltid	r8, -8		// 98f8
    9904:	30c60001 	addik	r6, r6, 1
    9908:	b9f4f168 	brlid	r15, -3736	// 8a70 <_Balloc>
    990c:	10b80000 	addk	r5, r24, r0
    9910:	be730030 	bleid	r19, 48		// 9940
    9914:	30830014 	addik	r4, r3, 20
    9918:	11000000 	addk	r8, r0, r0
    991c:	31080001 	addik	r8, r8, 1
    9920:	f8040000 	swi	r0, r4, 0
    9924:	89289800 	xor	r9, r8, r19
    9928:	be29fff4 	bneid	r9, -12		// 991c
    992c:	30840004 	addik	r4, r4, 4
    9930:	30930005 	addik	r4, r19, 5
    9934:	10842000 	addk	r4, r4, r4
    9938:	10842000 	addk	r4, r4, r4
    993c:	10832000 	addk	r4, r3, r4
    9940:	e9570010 	lwi	r10, r23, 16
    9944:	a4fa001f 	andi	r7, r26, 31
    9948:	31170014 	addik	r8, r23, 20
    994c:	314a0005 	addik	r10, r10, 5
    9950:	114a5000 	addk	r10, r10, r10
    9954:	114a5000 	addk	r10, r10, r10
    9958:	be0700b8 	beqid	r7, 184		// 9a10
    995c:	11575000 	addk	r10, r23, r10
    9960:	30a00020 	addik	r5, r0, 32
    9964:	15872800 	rsubk	r12, r7, r5
    9968:	11200000 	addk	r9, r0, r0
    996c:	e8c80000 	lwi	r6, r8, 0
    9970:	a647001f 	andi	r18, r7, 31
    9974:	10a03000 	addk	r5, r0, r6
    9978:	be120014 	beqid	r18, 20		// 998c
    997c:	10a50000 	addk	r5, r5, r0
    9980:	3252ffff 	addik	r18, r18, -1
    9984:	be32fffc 	bneid	r18, -4		// 9980
    9988:	10a52800 	addk	r5, r5, r5
    998c:	81292800 	or	r9, r9, r5
    9990:	f9240000 	swi	r9, r4, 0
    9994:	e9680000 	lwi	r11, r8, 0
    9998:	31080004 	addik	r8, r8, 4
    999c:	14ca4003 	cmpu	r6, r10, r8
    99a0:	a64c001f 	andi	r18, r12, 31
    99a4:	11205800 	addk	r9, r0, r11
    99a8:	be120014 	beqid	r18, 20		// 99bc
    99ac:	11290000 	addk	r9, r9, r0
    99b0:	3252ffff 	addik	r18, r18, -1
    99b4:	be32fffc 	bneid	r18, -4		// 99b0
    99b8:	91290041 	srl	r9, r9
    99bc:	be46ffb0 	bltid	r6, -80		// 996c
    99c0:	30840004 	addik	r4, r4, 4
    99c4:	be09000c 	beqid	r9, 12		// 99d0
    99c8:	f9240000 	swi	r9, r4, 0
    99cc:	32d90002 	addik	r22, r25, 2
    99d0:	10b80000 	addk	r5, r24, r0
    99d4:	10d70000 	addk	r6, r23, r0
    99d8:	32d6ffff 	addik	r22, r22, -1
    99dc:	fac30010 	swi	r22, r3, 16
    99e0:	b9f4f184 	brlid	r15, -3708	// 8b64 <_Bfree>
    99e4:	f861001c 	swi	r3, r1, 28
    99e8:	e861001c 	lwi	r3, r1, 28
    99ec:	e9e10000 	lwi	r15, r1, 0
    99f0:	ea610020 	lwi	r19, r1, 32
    99f4:	eac10024 	lwi	r22, r1, 36
    99f8:	eae10028 	lwi	r23, r1, 40
    99fc:	eb01002c 	lwi	r24, r1, 44
    9a00:	eb210030 	lwi	r25, r1, 48
    9a04:	eb410034 	lwi	r26, r1, 52
    9a08:	b60f0008 	rtsd	r15, 8
    9a0c:	30210038 	addik	r1, r1, 56
    9a10:	e8e80000 	lwi	r7, r8, 0
    9a14:	31080004 	addik	r8, r8, 4
    9a18:	14ca4003 	cmpu	r6, r10, r8
    9a1c:	f8e40000 	swi	r7, r4, 0
    9a20:	bea6ffb0 	bgeid	r6, -80		// 99d0
    9a24:	30840004 	addik	r4, r4, 4
    9a28:	e8e80000 	lwi	r7, r8, 0
    9a2c:	31080004 	addik	r8, r8, 4
    9a30:	14ca4003 	cmpu	r6, r10, r8
    9a34:	f8e40000 	swi	r7, r4, 0
    9a38:	be46ffd8 	bltid	r6, -40		// 9a10
    9a3c:	30840004 	addik	r4, r4, 4
    9a40:	b810ff94 	brid	-108		// 99d4
    9a44:	10b80000 	addk	r5, r24, r0

00009a48 <__mcmp>:
    9a48:	e8650010 	lwi	r3, r5, 16
    9a4c:	e8860010 	lwi	r4, r6, 16
    9a50:	14641800 	rsubk	r3, r4, r3
    9a54:	bc2300cc 	bnei	r3, 204		// 9b20
    9a58:	30840005 	addik	r4, r4, 5
    9a5c:	10842000 	addk	r4, r4, r4
    9a60:	10842000 	addk	r4, r4, r4
    9a64:	31450014 	addik	r10, r5, 20
    9a68:	10c62000 	addk	r6, r6, r4
    9a6c:	10a52000 	addk	r5, r5, r4
    9a70:	30a5fffc 	addik	r5, r5, -4
    9a74:	30c6fffc 	addik	r6, r6, -4
    9a78:	e8e50000 	lwi	r7, r5, 0
    9a7c:	e8860000 	lwi	r4, r6, 0
    9a80:	89072000 	xor	r8, r7, r4
    9a84:	be280014 	bneid	r8, 20		// 9a98
    9a88:	15255003 	cmpu	r9, r5, r10
    9a8c:	bc49ffe4 	blti	r9, -28		// 9a70
    9a90:	b60f0008 	rtsd	r15, 8
    9a94:	80000000 	or	r0, r0, r0
    9a98:	14843803 	cmpu	r4, r4, r7
    9a9c:	10602000 	addk	r3, r0, r4
    9aa0:	90640001 	sra	r3, r4
    9aa4:	90630001 	sra	r3, r3
    9aa8:	90630001 	sra	r3, r3
    9aac:	90630001 	sra	r3, r3
    9ab0:	90630001 	sra	r3, r3
    9ab4:	90630001 	sra	r3, r3
    9ab8:	90630001 	sra	r3, r3
    9abc:	90630001 	sra	r3, r3
    9ac0:	90630001 	sra	r3, r3
    9ac4:	90630001 	sra	r3, r3
    9ac8:	90630001 	sra	r3, r3
    9acc:	90630001 	sra	r3, r3
    9ad0:	90630001 	sra	r3, r3
    9ad4:	90630001 	sra	r3, r3
    9ad8:	90630001 	sra	r3, r3
    9adc:	90630001 	sra	r3, r3
    9ae0:	90630001 	sra	r3, r3
    9ae4:	90630001 	sra	r3, r3
    9ae8:	90630001 	sra	r3, r3
    9aec:	90630001 	sra	r3, r3
    9af0:	90630001 	sra	r3, r3
    9af4:	90630001 	sra	r3, r3
    9af8:	90630001 	sra	r3, r3
    9afc:	90630001 	sra	r3, r3
    9b00:	90630001 	sra	r3, r3
    9b04:	90630001 	sra	r3, r3
    9b08:	90630001 	sra	r3, r3
    9b0c:	90630001 	sra	r3, r3
    9b10:	90630001 	sra	r3, r3
    9b14:	90630001 	sra	r3, r3
    9b18:	90630001 	sra	r3, r3
    9b1c:	a0630001 	ori	r3, r3, 1
    9b20:	b60f0008 	rtsd	r15, 8
    9b24:	80000000 	or	r0, r0, r0

00009b28 <__mdiff>:
    9b28:	3021ffd4 	addik	r1, r1, -44
    9b2c:	fa61001c 	swi	r19, r1, 28
    9b30:	fb010028 	swi	r24, r1, 40
    9b34:	12660000 	addk	r19, r6, r0
    9b38:	13050000 	addk	r24, r5, r0
    9b3c:	10a60000 	addk	r5, r6, r0
    9b40:	10c70000 	addk	r6, r7, r0
    9b44:	fac10020 	swi	r22, r1, 32
    9b48:	fae10024 	swi	r23, r1, 36
    9b4c:	f9e10000 	swi	r15, r1, 0
    9b50:	b9f4fef8 	brlid	r15, -264	// 9a48 <__mcmp>
    9b54:	12c70000 	addk	r22, r7, r0
    9b58:	be0303b4 	beqid	r3, 948		// 9f0c
    9b5c:	12e30000 	addk	r23, r3, r0
    9b60:	be43039c 	bltid	r3, 924		// 9efc
    9b64:	10730000 	addk	r3, r19, r0
    9b68:	12e00000 	addk	r23, r0, r0
    9b6c:	10b80000 	addk	r5, r24, r0
    9b70:	b9f4ef00 	brlid	r15, -4352	// 8a70 <_Balloc>
    9b74:	e8d30004 	lwi	r6, r19, 4
    9b78:	e9530010 	lwi	r10, r19, 16
    9b7c:	e8f60010 	lwi	r7, r22, 16
    9b80:	fae3000c 	swi	r23, r3, 12
    9b84:	318a0005 	addik	r12, r10, 5
    9b88:	30e70005 	addik	r7, r7, 5
    9b8c:	118c6000 	addk	r12, r12, r12
    9b90:	10e73800 	addk	r7, r7, r7
    9b94:	118c6000 	addk	r12, r12, r12
    9b98:	10e73800 	addk	r7, r7, r7
    9b9c:	30930014 	addik	r4, r19, 20
    9ba0:	11936000 	addk	r12, r19, r12
    9ba4:	31760014 	addik	r11, r22, 20
    9ba8:	10f63800 	addk	r7, r22, r7
    9bac:	30a30014 	addik	r5, r3, 20
    9bb0:	11200000 	addk	r9, r0, r0
    9bb4:	eac40000 	lwi	r22, r4, 0
    9bb8:	e8cb0000 	lwi	r6, r11, 0
    9bbc:	316b0004 	addik	r11, r11, 4
    9bc0:	b0000000 	imm	0
    9bc4:	a516ffff 	andi	r8, r22, -1
    9bc8:	b0000000 	imm	0
    9bcc:	a666ffff 	andi	r19, r6, -1
    9bd0:	11284800 	addk	r9, r8, r9
    9bd4:	15334800 	rsubk	r9, r19, r9
    9bd8:	11003000 	addk	r8, r0, r6
    9bdc:	91060041 	srl	r8, r6
    9be0:	91080041 	srl	r8, r8
    9be4:	91080041 	srl	r8, r8
    9be8:	91080041 	srl	r8, r8
    9bec:	91080041 	srl	r8, r8
    9bf0:	91080041 	srl	r8, r8
    9bf4:	91080041 	srl	r8, r8
    9bf8:	91080041 	srl	r8, r8
    9bfc:	91080041 	srl	r8, r8
    9c00:	91080041 	srl	r8, r8
    9c04:	91080041 	srl	r8, r8
    9c08:	91080041 	srl	r8, r8
    9c0c:	91080041 	srl	r8, r8
    9c10:	91080041 	srl	r8, r8
    9c14:	91080041 	srl	r8, r8
    9c18:	91080041 	srl	r8, r8
    9c1c:	1260b000 	addk	r19, r0, r22
    9c20:	92760041 	srl	r19, r22
    9c24:	92730041 	srl	r19, r19
    9c28:	92730041 	srl	r19, r19
    9c2c:	92730041 	srl	r19, r19
    9c30:	92730041 	srl	r19, r19
    9c34:	92730041 	srl	r19, r19
    9c38:	92730041 	srl	r19, r19
    9c3c:	92730041 	srl	r19, r19
    9c40:	92730041 	srl	r19, r19
    9c44:	92730041 	srl	r19, r19
    9c48:	92730041 	srl	r19, r19
    9c4c:	92730041 	srl	r19, r19
    9c50:	92730041 	srl	r19, r19
    9c54:	92730041 	srl	r19, r19
    9c58:	92730041 	srl	r19, r19
    9c5c:	92730041 	srl	r19, r19
    9c60:	16689800 	rsubk	r19, r8, r19
    9c64:	10c04800 	addk	r6, r0, r9
    9c68:	90c90001 	sra	r6, r9
    9c6c:	90c60001 	sra	r6, r6
    9c70:	90c60001 	sra	r6, r6
    9c74:	90c60001 	sra	r6, r6
    9c78:	90c60001 	sra	r6, r6
    9c7c:	90c60001 	sra	r6, r6
    9c80:	90c60001 	sra	r6, r6
    9c84:	90c60001 	sra	r6, r6
    9c88:	90c60001 	sra	r6, r6
    9c8c:	90c60001 	sra	r6, r6
    9c90:	90c60001 	sra	r6, r6
    9c94:	90c60001 	sra	r6, r6
    9c98:	90c60001 	sra	r6, r6
    9c9c:	90c60001 	sra	r6, r6
    9ca0:	90c60001 	sra	r6, r6
    9ca4:	90c60001 	sra	r6, r6
    9ca8:	12733000 	addk	r19, r19, r6
    9cac:	11139800 	addk	r8, r19, r19
    9cb0:	11084000 	addk	r8, r8, r8
    9cb4:	11084000 	addk	r8, r8, r8
    9cb8:	11084000 	addk	r8, r8, r8
    9cbc:	11084000 	addk	r8, r8, r8
    9cc0:	11084000 	addk	r8, r8, r8
    9cc4:	11084000 	addk	r8, r8, r8
    9cc8:	11084000 	addk	r8, r8, r8
    9ccc:	11084000 	addk	r8, r8, r8
    9cd0:	11084000 	addk	r8, r8, r8
    9cd4:	11084000 	addk	r8, r8, r8
    9cd8:	11084000 	addk	r8, r8, r8
    9cdc:	11084000 	addk	r8, r8, r8
    9ce0:	11084000 	addk	r8, r8, r8
    9ce4:	11084000 	addk	r8, r8, r8
    9ce8:	b0000000 	imm	0
    9cec:	a529ffff 	andi	r9, r9, -1
    9cf0:	11084000 	addk	r8, r8, r8
    9cf4:	81084800 	or	r8, r8, r9
    9cf8:	f9050000 	swi	r8, r5, 0
    9cfc:	14c75803 	cmpu	r6, r7, r11
    9d00:	30840004 	addik	r4, r4, 4
    9d04:	11209800 	addk	r9, r0, r19
    9d08:	91330001 	sra	r9, r19
    9d0c:	91290001 	sra	r9, r9
    9d10:	91290001 	sra	r9, r9
    9d14:	91290001 	sra	r9, r9
    9d18:	91290001 	sra	r9, r9
    9d1c:	91290001 	sra	r9, r9
    9d20:	91290001 	sra	r9, r9
    9d24:	91290001 	sra	r9, r9
    9d28:	91290001 	sra	r9, r9
    9d2c:	91290001 	sra	r9, r9
    9d30:	91290001 	sra	r9, r9
    9d34:	91290001 	sra	r9, r9
    9d38:	91290001 	sra	r9, r9
    9d3c:	91290001 	sra	r9, r9
    9d40:	91290001 	sra	r9, r9
    9d44:	91290001 	sra	r9, r9
    9d48:	be46fe6c 	bltid	r6, -404		// 9bb4
    9d4c:	30a50004 	addik	r5, r5, 4
    9d50:	14ec2003 	cmpu	r7, r12, r4
    9d54:	10c50000 	addk	r6, r5, r0
    9d58:	bea7016c 	bgeid	r7, 364		// 9ec4
    9d5c:	12640000 	addk	r19, r4, r0
    9d60:	eac40000 	lwi	r22, r4, 0
    9d64:	30840004 	addik	r4, r4, 4
    9d68:	156c2003 	cmpu	r11, r12, r4
    9d6c:	b0000000 	imm	0
    9d70:	a516ffff 	andi	r8, r22, -1
    9d74:	11284800 	addk	r9, r8, r9
    9d78:	11004800 	addk	r8, r0, r9
    9d7c:	91090001 	sra	r8, r9
    9d80:	91080001 	sra	r8, r8
    9d84:	91080001 	sra	r8, r8
    9d88:	91080001 	sra	r8, r8
    9d8c:	91080001 	sra	r8, r8
    9d90:	91080001 	sra	r8, r8
    9d94:	91080001 	sra	r8, r8
    9d98:	91080001 	sra	r8, r8
    9d9c:	91080001 	sra	r8, r8
    9da0:	91080001 	sra	r8, r8
    9da4:	91080001 	sra	r8, r8
    9da8:	91080001 	sra	r8, r8
    9dac:	91080001 	sra	r8, r8
    9db0:	91080001 	sra	r8, r8
    9db4:	91080001 	sra	r8, r8
    9db8:	91080001 	sra	r8, r8
    9dbc:	10e0b000 	addk	r7, r0, r22
    9dc0:	90f60041 	srl	r7, r22
    9dc4:	90e70041 	srl	r7, r7
    9dc8:	90e70041 	srl	r7, r7
    9dcc:	90e70041 	srl	r7, r7
    9dd0:	90e70041 	srl	r7, r7
    9dd4:	90e70041 	srl	r7, r7
    9dd8:	90e70041 	srl	r7, r7
    9ddc:	90e70041 	srl	r7, r7
    9de0:	90e70041 	srl	r7, r7
    9de4:	90e70041 	srl	r7, r7
    9de8:	90e70041 	srl	r7, r7
    9dec:	90e70041 	srl	r7, r7
    9df0:	90e70041 	srl	r7, r7
    9df4:	90e70041 	srl	r7, r7
    9df8:	90e70041 	srl	r7, r7
    9dfc:	90e70041 	srl	r7, r7
    9e00:	10e83800 	addk	r7, r8, r7
    9e04:	11073800 	addk	r8, r7, r7
    9e08:	11084000 	addk	r8, r8, r8
    9e0c:	11084000 	addk	r8, r8, r8
    9e10:	11084000 	addk	r8, r8, r8
    9e14:	11084000 	addk	r8, r8, r8
    9e18:	11084000 	addk	r8, r8, r8
    9e1c:	11084000 	addk	r8, r8, r8
    9e20:	11084000 	addk	r8, r8, r8
    9e24:	11084000 	addk	r8, r8, r8
    9e28:	11084000 	addk	r8, r8, r8
    9e2c:	11084000 	addk	r8, r8, r8
    9e30:	11084000 	addk	r8, r8, r8
    9e34:	11084000 	addk	r8, r8, r8
    9e38:	11084000 	addk	r8, r8, r8
    9e3c:	11084000 	addk	r8, r8, r8
    9e40:	b0000000 	imm	0
    9e44:	a529ffff 	andi	r9, r9, -1
    9e48:	11084000 	addk	r8, r8, r8
    9e4c:	81084800 	or	r8, r8, r9
    9e50:	f9050000 	swi	r8, r5, 0
    9e54:	11203800 	addk	r9, r0, r7
    9e58:	91270001 	sra	r9, r7
    9e5c:	91290001 	sra	r9, r9
    9e60:	91290001 	sra	r9, r9
    9e64:	91290001 	sra	r9, r9
    9e68:	91290001 	sra	r9, r9
    9e6c:	91290001 	sra	r9, r9
    9e70:	91290001 	sra	r9, r9
    9e74:	91290001 	sra	r9, r9
    9e78:	91290001 	sra	r9, r9
    9e7c:	91290001 	sra	r9, r9
    9e80:	91290001 	sra	r9, r9
    9e84:	91290001 	sra	r9, r9
    9e88:	91290001 	sra	r9, r9
    9e8c:	91290001 	sra	r9, r9
    9e90:	91290001 	sra	r9, r9
    9e94:	91290001 	sra	r9, r9
    9e98:	be4bfec8 	bltid	r11, -312		// 9d60
    9e9c:	30a50004 	addik	r5, r5, 4
    9ea0:	aa73ffff 	xori	r19, r19, -1
    9ea4:	11936000 	addk	r12, r19, r12
    9ea8:	10a06000 	addk	r5, r0, r12
    9eac:	90ac0041 	srl	r5, r12
    9eb0:	90a50041 	srl	r5, r5
    9eb4:	30a50001 	addik	r5, r5, 1
    9eb8:	10a52800 	addk	r5, r5, r5
    9ebc:	10a52800 	addk	r5, r5, r5
    9ec0:	10a62800 	addk	r5, r6, r5
    9ec4:	be280018 	bneid	r8, 24		// 9edc
    9ec8:	30a5fffc 	addik	r5, r5, -4
    9ecc:	30a5fffc 	addik	r5, r5, -4
    9ed0:	e8850000 	lwi	r4, r5, 0
    9ed4:	be04fff8 	beqid	r4, -8		// 9ecc
    9ed8:	314affff 	addik	r10, r10, -1
    9edc:	f9430010 	swi	r10, r3, 16
    9ee0:	e9e10000 	lwi	r15, r1, 0
    9ee4:	ea61001c 	lwi	r19, r1, 28
    9ee8:	eac10020 	lwi	r22, r1, 32
    9eec:	eae10024 	lwi	r23, r1, 36
    9ef0:	eb010028 	lwi	r24, r1, 40
    9ef4:	b60f0008 	rtsd	r15, 8
    9ef8:	3021002c 	addik	r1, r1, 44
    9efc:	32e00001 	addik	r23, r0, 1
    9f00:	12760000 	addk	r19, r22, r0
    9f04:	b810fc68 	brid	-920		// 9b6c
    9f08:	12c30000 	addk	r22, r3, r0
    9f0c:	10b80000 	addk	r5, r24, r0
    9f10:	b9f4eb60 	brlid	r15, -5280	// 8a70 <_Balloc>
    9f14:	10c30000 	addk	r6, r3, r0
    9f18:	30800001 	addik	r4, r0, 1
    9f1c:	f8830010 	swi	r4, r3, 16
    9f20:	fae30014 	swi	r23, r3, 20
    9f24:	e9e10000 	lwi	r15, r1, 0
    9f28:	ea61001c 	lwi	r19, r1, 28
    9f2c:	eac10020 	lwi	r22, r1, 32
    9f30:	eae10024 	lwi	r23, r1, 36
    9f34:	eb010028 	lwi	r24, r1, 40
    9f38:	b60f0008 	rtsd	r15, 8
    9f3c:	3021002c 	addik	r1, r1, 44

00009f40 <__ulp>:
    9f40:	10850000 	addk	r4, r5, r0
    9f44:	b0007ff0 	imm	32752
    9f48:	a4840000 	andi	r4, r4, 0
    9f4c:	b000fcc0 	imm	-832
    9f50:	30640000 	addik	r3, r4, 0
    9f54:	be630018 	bleid	r3, 24		// 9f6c
    9f58:	10830000 	addk	r4, r3, r0
    9f5c:	10a00000 	addk	r5, r0, r0
    9f60:	10640000 	addk	r3, r4, r0
    9f64:	b60f0008 	rtsd	r15, 8
    9f68:	10850000 	addk	r4, r5, r0
    9f6c:	14630000 	rsubk	r3, r3, r0
    9f70:	10c01800 	addk	r6, r0, r3
    9f74:	90c30001 	sra	r6, r3
    9f78:	90c60001 	sra	r6, r6
    9f7c:	90c60001 	sra	r6, r6
    9f80:	90c60001 	sra	r6, r6
    9f84:	90c60001 	sra	r6, r6
    9f88:	90c60001 	sra	r6, r6
    9f8c:	90c60001 	sra	r6, r6
    9f90:	90c60001 	sra	r6, r6
    9f94:	90c60001 	sra	r6, r6
    9f98:	90c60001 	sra	r6, r6
    9f9c:	90c60001 	sra	r6, r6
    9fa0:	90c60001 	sra	r6, r6
    9fa4:	90c60001 	sra	r6, r6
    9fa8:	90c60001 	sra	r6, r6
    9fac:	90c60001 	sra	r6, r6
    9fb0:	90c60001 	sra	r6, r6
    9fb4:	90c60001 	sra	r6, r6
    9fb8:	90c60001 	sra	r6, r6
    9fbc:	90c60001 	sra	r6, r6
    9fc0:	90c60001 	sra	r6, r6
    9fc4:	30600013 	addik	r3, r0, 19
    9fc8:	14661801 	cmp	r3, r6, r3
    9fcc:	bea30058 	bgeid	r3, 88		// a024
    9fd0:	30e00032 	addik	r7, r0, 50
    9fd4:	14e63801 	cmp	r7, r6, r7
    9fd8:	30800000 	addik	r4, r0, 0
    9fdc:	30a00000 	addik	r5, r0, 0
    9fe0:	be470070 	bltid	r7, 112		// a050
    9fe4:	30600001 	addik	r3, r0, 1
    9fe8:	30e00033 	addik	r7, r0, 51
    9fec:	14c63800 	rsubk	r6, r6, r7
    9ff0:	a646001f 	andi	r18, r6, 31
    9ff4:	10e01800 	addk	r7, r0, r3
    9ff8:	be120014 	beqid	r18, 20		// a00c
    9ffc:	10e70000 	addk	r7, r7, r0
    a000:	3252ffff 	addik	r18, r18, -1
    a004:	be32fffc 	bneid	r18, -4		// a000
    a008:	10e73800 	addk	r7, r7, r7
    a00c:	10640000 	addk	r3, r4, r0
    a010:	10870000 	addk	r4, r7, r0
    a014:	3021fff8 	addik	r1, r1, -8
    a018:	f8e10004 	swi	r7, r1, 4
    a01c:	b60f0008 	rtsd	r15, 8
    a020:	30210008 	addik	r1, r1, 8
    a024:	b0000008 	imm	8
    a028:	30600000 	addik	r3, r0, 0
    a02c:	a646001f 	andi	r18, r6, 31
    a030:	10801800 	addk	r4, r0, r3
    a034:	be120014 	beqid	r18, 20		// a048
    a038:	10840000 	addk	r4, r4, r0
    a03c:	3252ffff 	addik	r18, r18, -1
    a040:	be32fffc 	bneid	r18, -4		// a03c
    a044:	90840001 	sra	r4, r4
    a048:	b810ff18 	brid	-232		// 9f60
    a04c:	10a00000 	addk	r5, r0, r0
    a050:	b810ff10 	brid	-240		// 9f60
    a054:	10a30000 	addk	r5, r3, r0

0000a058 <__b2d>:
    a058:	3021ffd0 	addik	r1, r1, -48
    a05c:	fae10024 	swi	r23, r1, 36
    a060:	fb010028 	swi	r24, r1, 40
    a064:	fb21002c 	swi	r25, r1, 44
    a068:	f9e10000 	swi	r15, r1, 0
    a06c:	fa61001c 	swi	r19, r1, 28
    a070:	fac10020 	swi	r22, r1, 32
    a074:	ea650010 	lwi	r19, r5, 16
    a078:	33050014 	addik	r24, r5, 20
    a07c:	13260000 	addk	r25, r6, r0
    a080:	32730005 	addik	r19, r19, 5
    a084:	12739800 	addk	r19, r19, r19
    a088:	12739800 	addk	r19, r19, r19
    a08c:	12659800 	addk	r19, r5, r19
    a090:	ead3fffc 	lwi	r22, r19, -4
    a094:	32f3fffc 	addik	r23, r19, -4
    a098:	b9f4eeb4 	brlid	r15, -4428	// 8f4c <__hi0bits>
    a09c:	10b60000 	addk	r5, r22, r0
    a0a0:	30a00020 	addik	r5, r0, 32
    a0a4:	14832800 	rsubk	r4, r3, r5
    a0a8:	f8990000 	swi	r4, r25, 0
    a0ac:	3080000a 	addik	r4, r0, 10
    a0b0:	14832001 	cmp	r4, r3, r4
    a0b4:	be4400ac 	bltid	r4, 172		// a160
    a0b8:	1497c003 	cmpu	r4, r23, r24
    a0bc:	3080000b 	addik	r4, r0, 11
    a0c0:	14e32000 	rsubk	r7, r3, r4
    a0c4:	16f7c003 	cmpu	r23, r23, r24
    a0c8:	a647001f 	andi	r18, r7, 31
    a0cc:	1100b000 	addk	r8, r0, r22
    a0d0:	be120014 	beqid	r18, 20		// a0e4
    a0d4:	11080000 	addk	r8, r8, r0
    a0d8:	3252ffff 	addik	r18, r18, -1
    a0dc:	be32fffc 	bneid	r18, -4		// a0d8
    a0e0:	91080041 	srl	r8, r8
    a0e4:	b0003ff0 	imm	16368
    a0e8:	a0880000 	ori	r4, r8, 0
    a0ec:	beb70028 	bgeid	r23, 40		// a114
    a0f0:	10c00000 	addk	r6, r0, r0
    a0f4:	e913fff8 	lwi	r8, r19, -8
    a0f8:	a647001f 	andi	r18, r7, 31
    a0fc:	10c04000 	addk	r6, r0, r8
    a100:	be120014 	beqid	r18, 20		// a114
    a104:	10c60000 	addk	r6, r6, r0
    a108:	3252ffff 	addik	r18, r18, -1
    a10c:	be32fffc 	bneid	r18, -4		// a108
    a110:	90c60041 	srl	r6, r6
    a114:	30630015 	addik	r3, r3, 21
    a118:	a643001f 	andi	r18, r3, 31
    a11c:	10e0b000 	addk	r7, r0, r22
    a120:	be120014 	beqid	r18, 20		// a134
    a124:	10e70000 	addk	r7, r7, r0
    a128:	3252ffff 	addik	r18, r18, -1
    a12c:	be32fffc 	bneid	r18, -4		// a128
    a130:	10e73800 	addk	r7, r7, r7
    a134:	80a63800 	or	r5, r6, r7
    a138:	10640000 	addk	r3, r4, r0
    a13c:	e9e10000 	lwi	r15, r1, 0
    a140:	10850000 	addk	r4, r5, r0
    a144:	ea61001c 	lwi	r19, r1, 28
    a148:	eac10020 	lwi	r22, r1, 32
    a14c:	eae10024 	lwi	r23, r1, 36
    a150:	eb010028 	lwi	r24, r1, 40
    a154:	eb21002c 	lwi	r25, r1, 44
    a158:	b60f0008 	rtsd	r15, 8
    a15c:	30210030 	addik	r1, r1, 48
    a160:	bea40010 	bgeid	r4, 16		// a170
    a164:	10c00000 	addk	r6, r0, r0
    a168:	e8d3fff8 	lwi	r6, r19, -8
    a16c:	32f3fff8 	addik	r23, r19, -8
    a170:	30e3fff5 	addik	r7, r3, -11
    a174:	be0700a0 	beqid	r7, 160		// a214
    a178:	1717c003 	cmpu	r24, r23, r24
    a17c:	30a0002b 	addik	r5, r0, 43
    a180:	14632800 	rsubk	r3, r3, r5
    a184:	a647001f 	andi	r18, r7, 31
    a188:	1140b000 	addk	r10, r0, r22
    a18c:	be120014 	beqid	r18, 20		// a1a0
    a190:	114a0000 	addk	r10, r10, r0
    a194:	3252ffff 	addik	r18, r18, -1
    a198:	be32fffc 	bneid	r18, -4		// a194
    a19c:	114a5000 	addk	r10, r10, r10
    a1a0:	b0003ff0 	imm	16368
    a1a4:	a14a0000 	ori	r10, r10, 0
    a1a8:	a643001f 	andi	r18, r3, 31
    a1ac:	11203000 	addk	r9, r0, r6
    a1b0:	be120014 	beqid	r18, 20		// a1c4
    a1b4:	11290000 	addk	r9, r9, r0
    a1b8:	3252ffff 	addik	r18, r18, -1
    a1bc:	be32fffc 	bneid	r18, -4		// a1b8
    a1c0:	91290041 	srl	r9, r9
    a1c4:	11000000 	addk	r8, r0, r0
    a1c8:	beb80028 	bgeid	r24, 40		// a1f0
    a1cc:	808a4800 	or	r4, r10, r9
    a1d0:	e937fffc 	lwi	r9, r23, -4
    a1d4:	a643001f 	andi	r18, r3, 31
    a1d8:	11004800 	addk	r8, r0, r9
    a1dc:	be120014 	beqid	r18, 20		// a1f0
    a1e0:	11080000 	addk	r8, r8, r0
    a1e4:	3252ffff 	addik	r18, r18, -1
    a1e8:	be32fffc 	bneid	r18, -4		// a1e4
    a1ec:	91080041 	srl	r8, r8
    a1f0:	a647001f 	andi	r18, r7, 31
    a1f4:	10603000 	addk	r3, r0, r6
    a1f8:	be120014 	beqid	r18, 20		// a20c
    a1fc:	10630000 	addk	r3, r3, r0
    a200:	3252ffff 	addik	r18, r18, -1
    a204:	be32fffc 	bneid	r18, -4		// a200
    a208:	10631800 	addk	r3, r3, r3
    a20c:	b810ff2c 	brid	-212		// a138
    a210:	80a81800 	or	r5, r8, r3
    a214:	b0003ff0 	imm	16368
    a218:	a0960000 	ori	r4, r22, 0
    a21c:	b810ff1c 	brid	-228		// a138
    a220:	10a60000 	addk	r5, r6, r0

0000a224 <__d2b>:
    a224:	3021ffc4 	addik	r1, r1, -60
    a228:	fac10028 	swi	r22, r1, 40
    a22c:	12c60000 	addk	r22, r6, r0
    a230:	30c00001 	addik	r6, r0, 1
    a234:	fa610024 	swi	r19, r1, 36
    a238:	fae1002c 	swi	r23, r1, 44
    a23c:	fb010030 	swi	r24, r1, 48
    a240:	fb210034 	swi	r25, r1, 52
    a244:	fb410038 	swi	r26, r1, 56
    a248:	f9e10000 	swi	r15, r1, 0
    a24c:	12e70000 	addk	r23, r7, r0
    a250:	13480000 	addk	r26, r8, r0
    a254:	b9f4e81c 	brlid	r15, -6116	// 8a70 <_Balloc>
    a258:	13290000 	addk	r25, r9, r0
    a25c:	b0007fff 	imm	32767
    a260:	a496ffff 	andi	r4, r22, -1
    a264:	12630000 	addk	r19, r3, r0
    a268:	13002000 	addk	r24, r0, r4
    a26c:	93040041 	srl	r24, r4
    a270:	93180041 	srl	r24, r24
    a274:	93180041 	srl	r24, r24
    a278:	93180041 	srl	r24, r24
    a27c:	93180041 	srl	r24, r24
    a280:	93180041 	srl	r24, r24
    a284:	93180041 	srl	r24, r24
    a288:	93180041 	srl	r24, r24
    a28c:	93180041 	srl	r24, r24
    a290:	93180041 	srl	r24, r24
    a294:	93180041 	srl	r24, r24
    a298:	93180041 	srl	r24, r24
    a29c:	93180041 	srl	r24, r24
    a2a0:	93180041 	srl	r24, r24
    a2a4:	93180041 	srl	r24, r24
    a2a8:	93180041 	srl	r24, r24
    a2ac:	93180041 	srl	r24, r24
    a2b0:	93180041 	srl	r24, r24
    a2b4:	93180041 	srl	r24, r24
    a2b8:	93180041 	srl	r24, r24
    a2bc:	b000000f 	imm	15
    a2c0:	a476ffff 	andi	r3, r22, -1
    a2c4:	bc18000c 	beqi	r24, 12		// a2d0
    a2c8:	b0000010 	imm	16
    a2cc:	a0630000 	ori	r3, r3, 0
    a2d0:	be1700a0 	beqid	r23, 160		// a370
    a2d4:	f861001c 	swi	r3, r1, 28
    a2d8:	30a10020 	addik	r5, r1, 32
    a2dc:	b9f4ed50 	brlid	r15, -4784	// 902c <__lo0bits>
    a2e0:	fae10020 	swi	r23, r1, 32
    a2e4:	be2300cc 	bneid	r3, 204		// a3b0
    a2e8:	e8a1001c 	lwi	r5, r1, 28
    a2ec:	e8a10020 	lwi	r5, r1, 32
    a2f0:	e881001c 	lwi	r4, r1, 28
    a2f4:	f8b30014 	swi	r5, r19, 20
    a2f8:	f8930018 	swi	r4, r19, 24
    a2fc:	be04000c 	beqid	r4, 12		// a308
    a300:	32c00001 	addik	r22, r0, 1
    a304:	32c00002 	addik	r22, r0, 2
    a308:	be38008c 	bneid	r24, 140		// a394
    a30c:	fad30010 	swi	r22, r19, 16
    a310:	30960004 	addik	r4, r22, 4
    a314:	10842000 	addk	r4, r4, r4
    a318:	10842000 	addk	r4, r4, r4
    a31c:	12d6b000 	addk	r22, r22, r22
    a320:	c8a49800 	lw	r5, r4, r19
    a324:	12d6b000 	addk	r22, r22, r22
    a328:	3063fbce 	addik	r3, r3, -1074
    a32c:	12d6b000 	addk	r22, r22, r22
    a330:	f87a0000 	swi	r3, r26, 0
    a334:	b9f4ec18 	brlid	r15, -5096	// 8f4c <__hi0bits>
    a338:	12d6b000 	addk	r22, r22, r22
    a33c:	12d6b000 	addk	r22, r22, r22
    a340:	1463b000 	rsubk	r3, r3, r22
    a344:	f8790000 	swi	r3, r25, 0
    a348:	10730000 	addk	r3, r19, r0
    a34c:	e9e10000 	lwi	r15, r1, 0
    a350:	ea610024 	lwi	r19, r1, 36
    a354:	eac10028 	lwi	r22, r1, 40
    a358:	eae1002c 	lwi	r23, r1, 44
    a35c:	eb010030 	lwi	r24, r1, 48
    a360:	eb210034 	lwi	r25, r1, 52
    a364:	eb410038 	lwi	r26, r1, 56
    a368:	b60f0008 	rtsd	r15, 8
    a36c:	3021003c 	addik	r1, r1, 60
    a370:	b9f4ecbc 	brlid	r15, -4932	// 902c <__lo0bits>
    a374:	30a1001c 	addik	r5, r1, 28
    a378:	30800001 	addik	r4, r0, 1
    a37c:	12c40000 	addk	r22, r4, r0
    a380:	f8930010 	swi	r4, r19, 16
    a384:	e881001c 	lwi	r4, r1, 28
    a388:	30630020 	addik	r3, r3, 32
    a38c:	be18ff84 	beqid	r24, -124		// a310
    a390:	f8930014 	swi	r4, r19, 20
    a394:	3318fbcd 	addik	r24, r24, -1075
    a398:	13181800 	addk	r24, r24, r3
    a39c:	30800035 	addik	r4, r0, 53
    a3a0:	fb1a0000 	swi	r24, r26, 0
    a3a4:	14632000 	rsubk	r3, r3, r4
    a3a8:	b810ffa0 	brid	-96		// a348
    a3ac:	f8790000 	swi	r3, r25, 0
    a3b0:	30c00020 	addik	r6, r0, 32
    a3b4:	14833000 	rsubk	r4, r3, r6
    a3b8:	a644001f 	andi	r18, r4, 31
    a3bc:	10c02800 	addk	r6, r0, r5
    a3c0:	be120014 	beqid	r18, 20		// a3d4
    a3c4:	10c60000 	addk	r6, r6, r0
    a3c8:	3252ffff 	addik	r18, r18, -1
    a3cc:	be32fffc 	bneid	r18, -4		// a3c8
    a3d0:	10c63000 	addk	r6, r6, r6
    a3d4:	e8810020 	lwi	r4, r1, 32
    a3d8:	80c62000 	or	r6, r6, r4
    a3dc:	f8d30014 	swi	r6, r19, 20
    a3e0:	a643001f 	andi	r18, r3, 31
    a3e4:	10802800 	addk	r4, r0, r5
    a3e8:	be120014 	beqid	r18, 20		// a3fc
    a3ec:	10840000 	addk	r4, r4, r0
    a3f0:	3252ffff 	addik	r18, r18, -1
    a3f4:	be32fffc 	bneid	r18, -4		// a3f0
    a3f8:	90840041 	srl	r4, r4
    a3fc:	b810fefc 	brid	-260		// a2f8
    a400:	f881001c 	swi	r4, r1, 28

0000a404 <__ratio>:
    a404:	3021ffc4 	addik	r1, r1, -60
    a408:	fa610024 	swi	r19, r1, 36
    a40c:	12660000 	addk	r19, r6, r0
    a410:	30c10020 	addik	r6, r1, 32
    a414:	f9e10000 	swi	r15, r1, 0
    a418:	fac10028 	swi	r22, r1, 40
    a41c:	fae1002c 	swi	r23, r1, 44
    a420:	fb410038 	swi	r26, r1, 56
    a424:	fb010030 	swi	r24, r1, 48
    a428:	13450000 	addk	r26, r5, r0
    a42c:	b9f4fc2c 	brlid	r15, -980	// a058 <__b2d>
    a430:	fb210034 	swi	r25, r1, 52
    a434:	10b30000 	addk	r5, r19, r0
    a438:	30c1001c 	addik	r6, r1, 28
    a43c:	12c30000 	addk	r22, r3, r0
    a440:	b9f4fc18 	brlid	r15, -1000	// a058 <__b2d>
    a444:	12e40000 	addk	r23, r4, r0
    a448:	11030000 	addk	r8, r3, r0
    a44c:	11240000 	addk	r9, r4, r0
    a450:	e8730010 	lwi	r3, r19, 16
    a454:	e89a0010 	lwi	r4, r26, 16
    a458:	e8a10020 	lwi	r5, r1, 32
    a45c:	14632000 	rsubk	r3, r3, r4
    a460:	10631800 	addk	r3, r3, r3
    a464:	10631800 	addk	r3, r3, r3
    a468:	e881001c 	lwi	r4, r1, 28
    a46c:	10631800 	addk	r3, r3, r3
    a470:	10631800 	addk	r3, r3, r3
    a474:	14842800 	rsubk	r4, r4, r5
    a478:	10631800 	addk	r3, r3, r3
    a47c:	10641800 	addk	r3, r4, r3
    a480:	bc630080 	blei	r3, 128		// a500
    a484:	90830021 	src	r4, r3
    a488:	90840021 	src	r4, r4
    a48c:	90840021 	src	r4, r4
    a490:	90840021 	src	r4, r4
    a494:	90840021 	src	r4, r4
    a498:	90840021 	src	r4, r4
    a49c:	90840021 	src	r4, r4
    a4a0:	90840021 	src	r4, r4
    a4a4:	90840021 	src	r4, r4
    a4a8:	90840021 	src	r4, r4
    a4ac:	90840021 	src	r4, r4
    a4b0:	90840021 	src	r4, r4
    a4b4:	90840021 	src	r4, r4
    a4b8:	b000fff0 	imm	-16
    a4bc:	a4840000 	andi	r4, r4, 0
    a4c0:	1304b000 	addk	r24, r4, r22
    a4c4:	12d80000 	addk	r22, r24, r0
    a4c8:	10b60000 	addk	r5, r22, r0
    a4cc:	10d70000 	addk	r6, r23, r0
    a4d0:	10e80000 	addk	r7, r8, r0
    a4d4:	b9f46830 	brlid	r15, 26672	// 10d04 <__divdf3>
    a4d8:	11090000 	addk	r8, r9, r0
    a4dc:	e9e10000 	lwi	r15, r1, 0
    a4e0:	ea610024 	lwi	r19, r1, 36
    a4e4:	eac10028 	lwi	r22, r1, 40
    a4e8:	eae1002c 	lwi	r23, r1, 44
    a4ec:	eb010030 	lwi	r24, r1, 48
    a4f0:	eb210034 	lwi	r25, r1, 52
    a4f4:	eb410038 	lwi	r26, r1, 56
    a4f8:	b60f0008 	rtsd	r15, 8
    a4fc:	3021003c 	addik	r1, r1, 60
    a500:	90c30021 	src	r6, r3
    a504:	90c60021 	src	r6, r6
    a508:	90c60021 	src	r6, r6
    a50c:	90c60021 	src	r6, r6
    a510:	90c60021 	src	r6, r6
    a514:	90c60021 	src	r6, r6
    a518:	90c60021 	src	r6, r6
    a51c:	90c60021 	src	r6, r6
    a520:	90c60021 	src	r6, r6
    a524:	90c60021 	src	r6, r6
    a528:	90c60021 	src	r6, r6
    a52c:	90c60021 	src	r6, r6
    a530:	90c60021 	src	r6, r6
    a534:	b000fff0 	imm	-16
    a538:	a4c60000 	andi	r6, r6, 0
    a53c:	14864000 	rsubk	r4, r6, r8
    a540:	b810ff88 	brid	-120		// a4c8
    a544:	11040000 	addk	r8, r4, r0

0000a548 <_mprec_log10>:
    a548:	3021ffe0 	addik	r1, r1, -32
    a54c:	fa61001c 	swi	r19, r1, 28
    a550:	12650000 	addk	r19, r5, r0
    a554:	30600017 	addik	r3, r0, 23
    a558:	14731801 	cmp	r3, r19, r3
    a55c:	b0003ff0 	imm	16368
    a560:	30800000 	addik	r4, r0, 0
    a564:	30a00000 	addik	r5, r0, 0
    a568:	bea30048 	bgeid	r3, 72		// a5b0
    a56c:	f9e10000 	swi	r15, r1, 0
    a570:	10c50000 	addk	r6, r5, r0
    a574:	b0004024 	imm	16420
    a578:	30e00000 	addik	r7, r0, 0
    a57c:	31000000 	addik	r8, r0, 0
    a580:	10a40000 	addk	r5, r4, r0
    a584:	b9f460ac 	brlid	r15, 24748	// 10630 <__muldf3>
    a588:	3273ffff 	addik	r19, r19, -1
    a58c:	10a40000 	addk	r5, r4, r0
    a590:	be33ffe0 	bneid	r19, -32		// a570
    a594:	10830000 	addk	r4, r3, r0
    a598:	10640000 	addk	r3, r4, r0
    a59c:	e9e10000 	lwi	r15, r1, 0
    a5a0:	10850000 	addk	r4, r5, r0
    a5a4:	ea61001c 	lwi	r19, r1, 28
    a5a8:	b60f0008 	rtsd	r15, 8
    a5ac:	30210020 	addik	r1, r1, 32
    a5b0:	12739800 	addk	r19, r19, r19
    a5b4:	12739800 	addk	r19, r19, r19
    a5b8:	12739800 	addk	r19, r19, r19
    a5bc:	b0000001 	imm	1
    a5c0:	e8932ce4 	lwi	r4, r19, 11492
    a5c4:	b0000001 	imm	1
    a5c8:	e8b32ce8 	lwi	r5, r19, 11496
    a5cc:	e9e10000 	lwi	r15, r1, 0
    a5d0:	ea61001c 	lwi	r19, r1, 28
    a5d4:	10640000 	addk	r3, r4, r0
    a5d8:	10850000 	addk	r4, r5, r0
    a5dc:	b60f0008 	rtsd	r15, 8
    a5e0:	30210020 	addik	r1, r1, 32

0000a5e4 <__copybits>:
    a5e4:	e9270010 	lwi	r9, r7, 16
    a5e8:	30c6ffff 	addik	r6, r6, -1
    a5ec:	11403000 	addk	r10, r0, r6
    a5f0:	91460001 	sra	r10, r6
    a5f4:	914a0001 	sra	r10, r10
    a5f8:	914a0001 	sra	r10, r10
    a5fc:	914a0001 	sra	r10, r10
    a600:	914a0001 	sra	r10, r10
    a604:	31290005 	addik	r9, r9, 5
    a608:	11294800 	addk	r9, r9, r9
    a60c:	314a0001 	addik	r10, r10, 1
    a610:	11294800 	addk	r9, r9, r9
    a614:	114a5000 	addk	r10, r10, r10
    a618:	30670014 	addik	r3, r7, 20
    a61c:	11274800 	addk	r9, r7, r9
    a620:	114a5000 	addk	r10, r10, r10
    a624:	14891803 	cmpu	r4, r9, r3
    a628:	bea40058 	bgeid	r4, 88		// a680
    a62c:	11455000 	addk	r10, r5, r10
    a630:	10850000 	addk	r4, r5, r0
    a634:	e9030000 	lwi	r8, r3, 0
    a638:	30630004 	addik	r3, r3, 4
    a63c:	14c91803 	cmpu	r6, r9, r3
    a640:	f9040000 	swi	r8, r4, 0
    a644:	be46fff0 	bltid	r6, -16		// a634
    a648:	30840004 	addik	r4, r4, 4
    a64c:	14e74800 	rsubk	r7, r7, r9
    a650:	30e7ffeb 	addik	r7, r7, -21
    a654:	10603800 	addk	r3, r0, r7
    a658:	90670041 	srl	r3, r7
    a65c:	90630041 	srl	r3, r3
    a660:	30630001 	addik	r3, r3, 1
    a664:	10631800 	addk	r3, r3, r3
    a668:	10631800 	addk	r3, r3, r3
    a66c:	10a51800 	addk	r5, r5, r3
    a670:	146a2803 	cmpu	r3, r10, r5
    a674:	bca30014 	bgei	r3, 20		// a688
    a678:	f8050000 	swi	r0, r5, 0
    a67c:	30a50004 	addik	r5, r5, 4
    a680:	146a2803 	cmpu	r3, r10, r5
    a684:	bc43fff4 	blti	r3, -12		// a678
    a688:	b60f0008 	rtsd	r15, 8
    a68c:	80000000 	or	r0, r0, r0

0000a690 <__any_on>:
    a690:	e8e50010 	lwi	r7, r5, 16
    a694:	10603000 	addk	r3, r0, r6
    a698:	90660001 	sra	r3, r6
    a69c:	90630001 	sra	r3, r3
    a6a0:	90630001 	sra	r3, r3
    a6a4:	90630001 	sra	r3, r3
    a6a8:	90630001 	sra	r3, r3
    a6ac:	15033801 	cmp	r8, r3, r7
    a6b0:	be48001c 	bltid	r8, 28		// a6cc
    a6b4:	30850014 	addik	r4, r5, 20
    a6b8:	14e71801 	cmp	r7, r7, r3
    a6bc:	bca70050 	bgei	r7, 80		// a70c
    a6c0:	a4c6001f 	andi	r6, r6, 31
    a6c4:	be260058 	bneid	r6, 88		// a71c
    a6c8:	10e30000 	addk	r7, r3, r0
    a6cc:	30670005 	addik	r3, r7, 5
    a6d0:	10631800 	addk	r3, r3, r3
    a6d4:	10631800 	addk	r3, r3, r3
    a6d8:	10a51800 	addk	r5, r5, r3
    a6dc:	14652003 	cmpu	r3, r5, r4
    a6e0:	bca30034 	bgei	r3, 52		// a714
    a6e4:	e865fffc 	lwi	r3, r5, -4
    a6e8:	be23001c 	bneid	r3, 28		// a704
    a6ec:	30a5fffc 	addik	r5, r5, -4
    a6f0:	14652003 	cmpu	r3, r5, r4
    a6f4:	bea30020 	bgeid	r3, 32		// a714
    a6f8:	30a5fffc 	addik	r5, r5, -4
    a6fc:	e8650000 	lwi	r3, r5, 0
    a700:	bc03fff0 	beqi	r3, -16		// a6f0
    a704:	b60f0008 	rtsd	r15, 8
    a708:	30600001 	addik	r3, r0, 1
    a70c:	b810ffc0 	brid	-64		// a6cc
    a710:	10e30000 	addk	r7, r3, r0
    a714:	b60f0008 	rtsd	r15, 8
    a718:	10600000 	addk	r3, r0, r0
    a71c:	31070005 	addik	r8, r7, 5
    a720:	11084000 	addk	r8, r8, r8
    a724:	11084000 	addk	r8, r8, r8
    a728:	c9082800 	lw	r8, r8, r5
    a72c:	a646001f 	andi	r18, r6, 31
    a730:	11404000 	addk	r10, r0, r8
    a734:	be120014 	beqid	r18, 20		// a748
    a738:	114a0000 	addk	r10, r10, r0
    a73c:	3252ffff 	addik	r18, r18, -1
    a740:	be32fffc 	bneid	r18, -4		// a73c
    a744:	914a0041 	srl	r10, r10
    a748:	a646001f 	andi	r18, r6, 31
    a74c:	11205000 	addk	r9, r0, r10
    a750:	be120014 	beqid	r18, 20		// a764
    a754:	11290000 	addk	r9, r9, r0
    a758:	3252ffff 	addik	r18, r18, -1
    a75c:	be32fffc 	bneid	r18, -4		// a758
    a760:	11294800 	addk	r9, r9, r9
    a764:	89094000 	xor	r8, r9, r8
    a768:	be08ff64 	beqid	r8, -156		// a6cc
    a76c:	30600001 	addik	r3, r0, 1
    a770:	b60f0008 	rtsd	r15, 8
    a774:	80000000 	or	r0, r0, r0

0000a778 <__fpclassifyd>:
    a778:	10850000 	addk	r4, r5, r0
    a77c:	10a60000 	addk	r5, r6, r0
    a780:	10c40000 	addk	r6, r4, r0
    a784:	10850000 	addk	r4, r5, r0
    a788:	80a53000 	or	r5, r5, r6
    a78c:	be250010 	bneid	r5, 16		// a79c
    a790:	30600002 	addik	r3, r0, 2
    a794:	b60f0008 	rtsd	r15, 8
    a798:	80000000 	or	r0, r0, r0
    a79c:	14a40000 	rsubk	r5, r4, r0
    a7a0:	80852000 	or	r4, r5, r4
    a7a4:	a884ffff 	xori	r4, r4, -1
    a7a8:	10a02000 	addk	r5, r0, r4
    a7ac:	90a40041 	srl	r5, r4
    a7b0:	90a50041 	srl	r5, r5
    a7b4:	90a50041 	srl	r5, r5
    a7b8:	90a50041 	srl	r5, r5
    a7bc:	90a50041 	srl	r5, r5
    a7c0:	90a50041 	srl	r5, r5
    a7c4:	90a50041 	srl	r5, r5
    a7c8:	90a50041 	srl	r5, r5
    a7cc:	90a50041 	srl	r5, r5
    a7d0:	90a50041 	srl	r5, r5
    a7d4:	90a50041 	srl	r5, r5
    a7d8:	90a50041 	srl	r5, r5
    a7dc:	90a50041 	srl	r5, r5
    a7e0:	90a50041 	srl	r5, r5
    a7e4:	90a50041 	srl	r5, r5
    a7e8:	90a50041 	srl	r5, r5
    a7ec:	90a50041 	srl	r5, r5
    a7f0:	90a50041 	srl	r5, r5
    a7f4:	90a50041 	srl	r5, r5
    a7f8:	90a50041 	srl	r5, r5
    a7fc:	90a50041 	srl	r5, r5
    a800:	90a50041 	srl	r5, r5
    a804:	90a50041 	srl	r5, r5
    a808:	90a50041 	srl	r5, r5
    a80c:	90a50041 	srl	r5, r5
    a810:	90a50041 	srl	r5, r5
    a814:	90a50041 	srl	r5, r5
    a818:	90a50041 	srl	r5, r5
    a81c:	90a50041 	srl	r5, r5
    a820:	90a50041 	srl	r5, r5
    a824:	90a50041 	srl	r5, r5
    a828:	bc050018 	beqi	r5, 24		// a840
    a82c:	b0008000 	imm	-32768
    a830:	30860000 	addik	r4, r6, 0
    a834:	14e40000 	rsubk	r7, r4, r0
    a838:	80872000 	or	r4, r7, r4
    a83c:	bca4ff58 	bgei	r4, -168		// a794
    a840:	b0007fdf 	imm	32735
    a844:	3080ffff 	addik	r4, r0, -1
    a848:	b0007fff 	imm	32767
    a84c:	a4c6ffff 	andi	r6, r6, -1
    a850:	b000fff0 	imm	-16
    a854:	30660000 	addik	r3, r6, 0
    a858:	14832003 	cmpu	r4, r3, r4
    a85c:	bea4ff38 	bgeid	r4, -200		// a794
    a860:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    a864:	b000000f 	imm	15
    a868:	3080ffff 	addik	r4, r0, -1
    a86c:	14862003 	cmpu	r4, r6, r4
    a870:	bea4ff24 	bgeid	r4, -220		// a794
    a874:	30600003 	addik	r3, r0, 3
    a878:	b0007ff0 	imm	32752
    a87c:	a8c60000 	xori	r6, r6, 0
    a880:	14860000 	rsubk	r4, r6, r0
    a884:	80843000 	or	r4, r4, r6
    a888:	a884ffff 	xori	r4, r4, -1
    a88c:	10602000 	addk	r3, r0, r4
    a890:	90640041 	srl	r3, r4
    a894:	90630041 	srl	r3, r3
    a898:	90630041 	srl	r3, r3
    a89c:	90630041 	srl	r3, r3
    a8a0:	90630041 	srl	r3, r3
    a8a4:	90630041 	srl	r3, r3
    a8a8:	90630041 	srl	r3, r3
    a8ac:	90630041 	srl	r3, r3
    a8b0:	90630041 	srl	r3, r3
    a8b4:	90630041 	srl	r3, r3
    a8b8:	90630041 	srl	r3, r3
    a8bc:	90630041 	srl	r3, r3
    a8c0:	90630041 	srl	r3, r3
    a8c4:	90630041 	srl	r3, r3
    a8c8:	90630041 	srl	r3, r3
    a8cc:	90630041 	srl	r3, r3
    a8d0:	90630041 	srl	r3, r3
    a8d4:	90630041 	srl	r3, r3
    a8d8:	90630041 	srl	r3, r3
    a8dc:	90630041 	srl	r3, r3
    a8e0:	90630041 	srl	r3, r3
    a8e4:	90630041 	srl	r3, r3
    a8e8:	90630041 	srl	r3, r3
    a8ec:	90630041 	srl	r3, r3
    a8f0:	90630041 	srl	r3, r3
    a8f4:	90630041 	srl	r3, r3
    a8f8:	90630041 	srl	r3, r3
    a8fc:	90630041 	srl	r3, r3
    a900:	90630041 	srl	r3, r3
    a904:	90630041 	srl	r3, r3
    a908:	90630041 	srl	r3, r3
    a90c:	b60f0008 	rtsd	r15, 8
    a910:	84651800 	and	r3, r5, r3

0000a914 <_sbrk_r>:
    a914:	3021ffe0 	addik	r1, r1, -32
    a918:	fa61001c 	swi	r19, r1, 28
    a91c:	12650000 	addk	r19, r5, r0
    a920:	f9e10000 	swi	r15, r1, 0
    a924:	b0000001 	imm	1
    a928:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    a92c:	b000ffff 	imm	-1
    a930:	b9f46bf0 	brlid	r15, 27632	// 1520 <sbrk>
    a934:	10a60000 	addk	r5, r6, r0
    a938:	a883ffff 	xori	r4, r3, -1
    a93c:	be040014 	beqid	r4, 20		// a950
    a940:	e9e10000 	lwi	r15, r1, 0
    a944:	ea61001c 	lwi	r19, r1, 28
    a948:	b60f0008 	rtsd	r15, 8
    a94c:	30210020 	addik	r1, r1, 32
    a950:	b0000001 	imm	1
    a954:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    a958:	bc04ffec 	beqi	r4, -20		// a944
    a95c:	f8930000 	swi	r4, r19, 0
    a960:	e9e10000 	lwi	r15, r1, 0
    a964:	ea61001c 	lwi	r19, r1, 28
    a968:	b60f0008 	rtsd	r15, 8
    a96c:	30210020 	addik	r1, r1, 32

0000a970 <__sread>:
    a970:	3021ffe0 	addik	r1, r1, -32
    a974:	fa61001c 	swi	r19, r1, 28
    a978:	f9e10000 	swi	r15, r1, 0
    a97c:	12660000 	addk	r19, r6, r0
    a980:	e4c6000e 	lhui	r6, r6, 14
    a984:	b9f428b4 	brlid	r15, 10420	// d238 <_read_r>
    a988:	90c60061 	sext16	r6, r6
    a98c:	bc430020 	blti	r3, 32		// a9ac
    a990:	e8930054 	lwi	r4, r19, 84
    a994:	10841800 	addk	r4, r4, r3
    a998:	f8930054 	swi	r4, r19, 84
    a99c:	e9e10000 	lwi	r15, r1, 0
    a9a0:	ea61001c 	lwi	r19, r1, 28
    a9a4:	b60f0008 	rtsd	r15, 8
    a9a8:	30210020 	addik	r1, r1, 32
    a9ac:	e493000c 	lhui	r4, r19, 12
    a9b0:	a484efff 	andi	r4, r4, -4097
    a9b4:	f493000c 	shi	r4, r19, 12
    a9b8:	e9e10000 	lwi	r15, r1, 0
    a9bc:	ea61001c 	lwi	r19, r1, 28
    a9c0:	b60f0008 	rtsd	r15, 8
    a9c4:	30210020 	addik	r1, r1, 32

0000a9c8 <__seofread>:
    a9c8:	b60f0008 	rtsd	r15, 8
    a9cc:	10600000 	addk	r3, r0, r0

0000a9d0 <__swrite>:
    a9d0:	3021ffd4 	addik	r1, r1, -44
    a9d4:	fa61001c 	swi	r19, r1, 28
    a9d8:	fac10020 	swi	r22, r1, 32
    a9dc:	fae10024 	swi	r23, r1, 36
    a9e0:	fb010028 	swi	r24, r1, 40
    a9e4:	f9e10000 	swi	r15, r1, 0
    a9e8:	e466000c 	lhui	r3, r6, 12
    a9ec:	12660000 	addk	r19, r6, r0
    a9f0:	13050000 	addk	r24, r5, r0
    a9f4:	90630061 	sext16	r3, r3
    a9f8:	a4830100 	andi	r4, r3, 256
    a9fc:	90840061 	sext16	r4, r4
    aa00:	12e70000 	addk	r23, r7, r0
    aa04:	be040024 	beqid	r4, 36		// aa28
    aa08:	12c80000 	addk	r22, r8, r0
    aa0c:	e4c6000e 	lhui	r6, r6, 14
    aa10:	10e00000 	addk	r7, r0, r0
    aa14:	31000002 	addik	r8, r0, 2
    aa18:	b9f42648 	brlid	r15, 9800	// d060 <_lseek_r>
    aa1c:	90c60061 	sext16	r6, r6
    aa20:	e473000c 	lhui	r3, r19, 12
    aa24:	90630061 	sext16	r3, r3
    aa28:	e4d3000e 	lhui	r6, r19, 14
    aa2c:	10b80000 	addk	r5, r24, r0
    aa30:	10f70000 	addk	r7, r23, r0
    aa34:	11160000 	addk	r8, r22, r0
    aa38:	a463efff 	andi	r3, r3, -4097
    aa3c:	f473000c 	shi	r3, r19, 12
    aa40:	b9f418f8 	brlid	r15, 6392	// c338 <_write_r>
    aa44:	90c60061 	sext16	r6, r6
    aa48:	e9e10000 	lwi	r15, r1, 0
    aa4c:	ea61001c 	lwi	r19, r1, 28
    aa50:	eac10020 	lwi	r22, r1, 32
    aa54:	eae10024 	lwi	r23, r1, 36
    aa58:	eb010028 	lwi	r24, r1, 40
    aa5c:	b60f0008 	rtsd	r15, 8
    aa60:	3021002c 	addik	r1, r1, 44

0000aa64 <__sseek>:
    aa64:	3021ffe0 	addik	r1, r1, -32
    aa68:	fa61001c 	swi	r19, r1, 28
    aa6c:	f9e10000 	swi	r15, r1, 0
    aa70:	12660000 	addk	r19, r6, r0
    aa74:	e4c6000e 	lhui	r6, r6, 14
    aa78:	b9f425e8 	brlid	r15, 9704	// d060 <_lseek_r>
    aa7c:	90c60061 	sext16	r6, r6
    aa80:	a883ffff 	xori	r4, r3, -1
    aa84:	bc040024 	beqi	r4, 36		// aaa8
    aa88:	e493000c 	lhui	r4, r19, 12
    aa8c:	f8730054 	swi	r3, r19, 84
    aa90:	a0841000 	ori	r4, r4, 4096
    aa94:	f493000c 	shi	r4, r19, 12
    aa98:	e9e10000 	lwi	r15, r1, 0
    aa9c:	ea61001c 	lwi	r19, r1, 28
    aaa0:	b60f0008 	rtsd	r15, 8
    aaa4:	30210020 	addik	r1, r1, 32
    aaa8:	e493000c 	lhui	r4, r19, 12
    aaac:	a484efff 	andi	r4, r4, -4097
    aab0:	f493000c 	shi	r4, r19, 12
    aab4:	e9e10000 	lwi	r15, r1, 0
    aab8:	ea61001c 	lwi	r19, r1, 28
    aabc:	b60f0008 	rtsd	r15, 8
    aac0:	30210020 	addik	r1, r1, 32

0000aac4 <__sclose>:
    aac4:	3021ffe4 	addik	r1, r1, -28
    aac8:	f9e10000 	swi	r15, r1, 0
    aacc:	e4c6000e 	lhui	r6, r6, 14
    aad0:	b9f419a4 	brlid	r15, 6564	// c474 <_close_r>
    aad4:	90c60061 	sext16	r6, r6
    aad8:	e9e10000 	lwi	r15, r1, 0
    aadc:	b60f0008 	rtsd	r15, 8
    aae0:	3021001c 	addik	r1, r1, 28

0000aae4 <strcmp>:
    aae4:	80662800 	or	r3, r6, r5
    aae8:	a4630003 	andi	r3, r3, 3
    aaec:	bc230070 	bnei	r3, 112		// ab5c
    aaf0:	e8850000 	lwi	r4, r5, 0
    aaf4:	e8660000 	lwi	r3, r6, 0
    aaf8:	88641800 	xor	r3, r4, r3
    aafc:	bc230060 	bnei	r3, 96		// ab5c
    ab00:	b000fefe 	imm	-258
    ab04:	30e4feff 	addik	r7, r4, -257
    ab08:	a884ffff 	xori	r4, r4, -1
    ab0c:	84872000 	and	r4, r7, r4
    ab10:	b0008080 	imm	-32640
    ab14:	a4848080 	andi	r4, r4, -32640
    ab18:	be040018 	beqid	r4, 24		// ab30
    ab1c:	30a50004 	addik	r5, r5, 4
    ab20:	b60f0008 	rtsd	r15, 8
    ab24:	30a5fffc 	addik	r5, r5, -4
    ab28:	be24007c 	bneid	r4, 124		// aba4
    ab2c:	30a50004 	addik	r5, r5, 4
    ab30:	e8650000 	lwi	r3, r5, 0
    ab34:	30c60004 	addik	r6, r6, 4
    ab38:	e8e60000 	lwi	r7, r6, 0
    ab3c:	b000fefe 	imm	-258
    ab40:	3103feff 	addik	r8, r3, -257
    ab44:	a883ffff 	xori	r4, r3, -1
    ab48:	84882000 	and	r4, r8, r4
    ab4c:	88633800 	xor	r3, r3, r7
    ab50:	b0008080 	imm	-32640
    ab54:	a4848080 	andi	r4, r4, -32640
    ab58:	bc03ffd0 	beqi	r3, -48		// ab28
    ab5c:	e0650000 	lbui	r3, r5, 0
    ab60:	90630060 	sext8	r3, r3
    ab64:	bc23001c 	bnei	r3, 28		// ab80
    ab68:	b8100034 	brid	52		// ab9c
    ab6c:	e0850000 	lbui	r4, r5, 0
    ab70:	e0650000 	lbui	r3, r5, 0
    ab74:	90630060 	sext8	r3, r3
    ab78:	be030020 	beqid	r3, 32		// ab98
    ab7c:	30c60001 	addik	r6, r6, 1
    ab80:	e0860000 	lbui	r4, r6, 0
    ab84:	90840060 	sext8	r4, r4
    ab88:	88641800 	xor	r3, r4, r3
    ab8c:	be03ffe4 	beqid	r3, -28		// ab70
    ab90:	30a50001 	addik	r5, r5, 1
    ab94:	30a5ffff 	addik	r5, r5, -1
    ab98:	e0850000 	lbui	r4, r5, 0
    ab9c:	e0660000 	lbui	r3, r6, 0
    aba0:	14632000 	rsubk	r3, r3, r4
    aba4:	b60f0008 	rtsd	r15, 8
    aba8:	80000000 	or	r0, r0, r0

0000abac <strlen>:
    abac:	a4850003 	andi	r4, r5, 3
    abb0:	be240044 	bneid	r4, 68		// abf4
    abb4:	10650000 	addk	r3, r5, r0
    abb8:	b810000c 	brid	12		// abc4
    abbc:	e8850000 	lwi	r4, r5, 0
    abc0:	e8830000 	lwi	r4, r3, 0
    abc4:	b000fefe 	imm	-258
    abc8:	30c4feff 	addik	r6, r4, -257
    abcc:	a884ffff 	xori	r4, r4, -1
    abd0:	84862000 	and	r4, r6, r4
    abd4:	b0008080 	imm	-32640
    abd8:	a4848080 	andi	r4, r4, -32640
    abdc:	be04ffe4 	beqid	r4, -28		// abc0
    abe0:	30630004 	addik	r3, r3, 4
    abe4:	3063fffc 	addik	r3, r3, -4
    abe8:	e0830000 	lbui	r4, r3, 0
    abec:	bc040018 	beqi	r4, 24		// ac04
    abf0:	30630001 	addik	r3, r3, 1
    abf4:	e0830000 	lbui	r4, r3, 0
    abf8:	be24fffc 	bneid	r4, -4		// abf4
    abfc:	30630001 	addik	r3, r3, 1
    ac00:	3063ffff 	addik	r3, r3, -1
    ac04:	b60f0008 	rtsd	r15, 8
    ac08:	14651800 	rsubk	r3, r5, r3

0000ac0c <__sprint_r>:
    ac0c:	3021ffc8 	addik	r1, r1, -56
    ac10:	fb410030 	swi	r26, r1, 48
    ac14:	f9e10000 	swi	r15, r1, 0
    ac18:	fa61001c 	swi	r19, r1, 28
    ac1c:	fac10020 	swi	r22, r1, 32
    ac20:	fae10024 	swi	r23, r1, 36
    ac24:	fb010028 	swi	r24, r1, 40
    ac28:	fb21002c 	swi	r25, r1, 44
    ac2c:	fb610034 	swi	r27, r1, 52
    ac30:	e8670008 	lwi	r3, r7, 8
    ac34:	be0300c4 	beqid	r3, 196		// acf8
    ac38:	13470000 	addk	r26, r7, r0
    ac3c:	e8860064 	lwi	r4, r6, 100
    ac40:	a4842000 	andi	r4, r4, 8192
    ac44:	be0400bc 	beqid	r4, 188		// ad00
    ac48:	13060000 	addk	r24, r6, r0
    ac4c:	13250000 	addk	r25, r5, r0
    ac50:	eb670000 	lwi	r27, r7, 0
    ac54:	e89b0004 	lwi	r4, r27, 4
    ac58:	eadb0000 	lwi	r22, r27, 0
    ac5c:	12e02000 	addk	r23, r0, r4
    ac60:	92e40041 	srl	r23, r4
    ac64:	92f70041 	srl	r23, r23
    ac68:	be970014 	bgtid	r23, 20		// ac7c
    ac6c:	12600000 	addk	r19, r0, r0
    ac70:	b810006c 	brid	108		// acdc
    ac74:	12f7b800 	addk	r23, r23, r23
    ac78:	bc04005c 	beqi	r4, 92		// acd4
    ac7c:	e8d60000 	lwi	r6, r22, 0
    ac80:	10b90000 	addk	r5, r25, r0
    ac84:	10f80000 	addk	r7, r24, r0
    ac88:	32730001 	addik	r19, r19, 1
    ac8c:	b9f419d4 	brlid	r15, 6612	// c660 <_fputwc_r>
    ac90:	32d60004 	addik	r22, r22, 4
    ac94:	a863ffff 	xori	r3, r3, -1
    ac98:	be23ffe0 	bneid	r3, -32		// ac78
    ac9c:	88979800 	xor	r4, r23, r19
    aca0:	3060ffff 	addik	r3, r0, -1
    aca4:	f81a0008 	swi	r0, r26, 8
    aca8:	f81a0004 	swi	r0, r26, 4
    acac:	e9e10000 	lwi	r15, r1, 0
    acb0:	ea61001c 	lwi	r19, r1, 28
    acb4:	eac10020 	lwi	r22, r1, 32
    acb8:	eae10024 	lwi	r23, r1, 36
    acbc:	eb010028 	lwi	r24, r1, 40
    acc0:	eb21002c 	lwi	r25, r1, 44
    acc4:	eb410030 	lwi	r26, r1, 48
    acc8:	eb610034 	lwi	r27, r1, 52
    accc:	b60f0008 	rtsd	r15, 8
    acd0:	30210038 	addik	r1, r1, 56
    acd4:	e87a0008 	lwi	r3, r26, 8
    acd8:	12f7b800 	addk	r23, r23, r23
    acdc:	12f7b800 	addk	r23, r23, r23
    ace0:	14771800 	rsubk	r3, r23, r3
    ace4:	f87a0008 	swi	r3, r26, 8
    ace8:	be23ff6c 	bneid	r3, -148		// ac54
    acec:	337b0008 	addik	r27, r27, 8
    acf0:	b810ffb8 	brid	-72		// aca8
    acf4:	f81a0008 	swi	r0, r26, 8
    acf8:	b810ffb4 	brid	-76		// acac
    acfc:	f8670004 	swi	r3, r7, 4
    ad00:	b9f41d90 	brlid	r15, 7568	// ca90 <__sfvwrite_r>
    ad04:	80000000 	or	r0, r0, r0
    ad08:	b810ffa0 	brid	-96		// aca8
    ad0c:	f81a0008 	swi	r0, r26, 8

0000ad10 <_vfiprintf_r>:
    ad10:	3021fae4 	addik	r1, r1, -1308
    ad14:	fa6104f0 	swi	r19, r1, 1264
    ad18:	fac104f4 	swi	r22, r1, 1268
    ad1c:	fae104f8 	swi	r23, r1, 1272
    ad20:	f9e10000 	swi	r15, r1, 0
    ad24:	fb0104fc 	swi	r24, r1, 1276
    ad28:	fb210500 	swi	r25, r1, 1280
    ad2c:	fb410504 	swi	r26, r1, 1284
    ad30:	fb610508 	swi	r27, r1, 1288
    ad34:	fb81050c 	swi	r28, r1, 1292
    ad38:	fba10510 	swi	r29, r1, 1296
    ad3c:	fbc10514 	swi	r30, r1, 1300
    ad40:	fbe10518 	swi	r31, r1, 1304
    ad44:	f901052c 	swi	r8, r1, 1324
    ad48:	12e50000 	addk	r23, r5, r0
    ad4c:	12660000 	addk	r19, r6, r0
    ad50:	be050010 	beqid	r5, 16		// ad60
    ad54:	12c70000 	addk	r22, r7, r0
    ad58:	e8650018 	lwi	r3, r5, 24
    ad5c:	bc0310b0 	beqi	r3, 4272		// be0c
    ad60:	b0000001 	imm	1
    ad64:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    ad68:	88731800 	xor	r3, r19, r3
    ad6c:	bc0310b8 	beqi	r3, 4280		// be24
    ad70:	b0000001 	imm	1
    ad74:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    ad78:	88731800 	xor	r3, r19, r3
    ad7c:	bc0313ac 	beqi	r3, 5036		// c128
    ad80:	b0000001 	imm	1
    ad84:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    ad88:	88731800 	xor	r3, r19, r3
    ad8c:	bc0313a4 	beqi	r3, 5028		// c130
    ad90:	e473000c 	lhui	r3, r19, 12
    ad94:	90630061 	sext16	r3, r3
    ad98:	a4832000 	andi	r4, r3, 8192
    ad9c:	90840061 	sext16	r4, r4
    ada0:	be240020 	bneid	r4, 32		// adc0
    ada4:	a4830008 	andi	r4, r3, 8
    ada8:	e8930064 	lwi	r4, r19, 100
    adac:	a0632000 	ori	r3, r3, 8192
    adb0:	f473000c 	shi	r3, r19, 12
    adb4:	a484dfff 	andi	r4, r4, -8193
    adb8:	f8930064 	swi	r4, r19, 100
    adbc:	a4830008 	andi	r4, r3, 8
    adc0:	90840061 	sext16	r4, r4
    adc4:	bc040ee4 	beqi	r4, 3812		// bca8
    adc8:	e8930010 	lwi	r4, r19, 16
    adcc:	be040edc 	beqid	r4, 3804		// bca8
    add0:	a483001a 	andi	r4, r3, 26
    add4:	a884000a 	xori	r4, r4, 10
    add8:	be040efc 	beqid	r4, 3836		// bcd4
    addc:	11600000 	addk	r11, r0, r0
    ade0:	3381001c 	addik	r28, r1, 28
    ade4:	f96104e4 	swi	r11, r1, 1252
    ade8:	f96104c8 	swi	r11, r1, 1224
    adec:	334104ac 	addik	r26, r1, 1196
    adf0:	316104ab 	addik	r11, r1, 1195
    adf4:	113c0000 	addk	r9, r28, r0
    adf8:	f96104bc 	swi	r11, r1, 1212
    adfc:	156bd000 	rsubk	r11, r11, r26
    ae00:	fb8104ac 	swi	r28, r1, 1196
    ae04:	f80104b4 	swi	r0, r1, 1204
    ae08:	f80104b0 	swi	r0, r1, 1200
    ae0c:	f96104e8 	swi	r11, r1, 1256
    ae10:	e0760000 	lbui	r3, r22, 0
    ae14:	a8830025 	xori	r4, r3, 37
    ae18:	a48400ff 	andi	r4, r4, 255
    ae1c:	be040084 	beqid	r4, 132		// aea0
    ae20:	13160000 	addk	r24, r22, r0
    ae24:	a46300ff 	andi	r3, r3, 255
    ae28:	be230020 	bneid	r3, 32		// ae48
    ae2c:	33180001 	addik	r24, r24, 1
    ae30:	3318ffff 	addik	r24, r24, -1
    ae34:	b8100070 	brid	112		// aea4
    ae38:	e0780000 	lbui	r3, r24, 0
    ae3c:	be030024 	beqid	r3, 36		// ae60
    ae40:	1736c000 	rsubk	r25, r22, r24
    ae44:	33180001 	addik	r24, r24, 1
    ae48:	e0780000 	lbui	r3, r24, 0
    ae4c:	a8830025 	xori	r4, r3, 37
    ae50:	a48400ff 	andi	r4, r4, 255
    ae54:	be24ffe8 	bneid	r4, -24		// ae3c
    ae58:	a46300ff 	andi	r3, r3, 255
    ae5c:	1736c000 	rsubk	r25, r22, r24
    ae60:	be190040 	beqid	r25, 64		// aea0
    ae64:	e86104b0 	lwi	r3, r1, 1200
    ae68:	e8a104b4 	lwi	r5, r1, 1204
    ae6c:	30800007 	addik	r4, r0, 7
    ae70:	10a5c800 	addk	r5, r5, r25
    ae74:	30630001 	addik	r3, r3, 1
    ae78:	f86104b0 	swi	r3, r1, 1200
    ae7c:	fac90000 	swi	r22, r9, 0
    ae80:	fb290004 	swi	r25, r9, 4
    ae84:	14632001 	cmp	r3, r3, r4
    ae88:	be430ef0 	bltid	r3, 3824		// bd78
    ae8c:	f8a104b4 	swi	r5, r1, 1204
    ae90:	31290008 	addik	r9, r9, 8
    ae94:	e96104c8 	lwi	r11, r1, 1224
    ae98:	116bc800 	addk	r11, r11, r25
    ae9c:	f96104c8 	swi	r11, r1, 1224
    aea0:	e0780000 	lbui	r3, r24, 0
    aea4:	be030be8 	beqid	r3, 3048		// ba8c
    aea8:	10c00000 	addk	r6, r0, r0
    aeac:	e0780001 	lbui	r3, r24, 1
    aeb0:	32d80001 	addik	r22, r24, 1
    aeb4:	b0000001 	imm	1
    aeb8:	31002de8 	addik	r8, r0, 11752
    aebc:	13060000 	addk	r24, r6, r0
    aec0:	f00104ba 	sbi	r0, r1, 1210
    aec4:	90630060 	sext8	r3, r3
    aec8:	3360ffff 	addik	r27, r0, -1
    aecc:	f8c104cc 	swi	r6, r1, 1228
    aed0:	30e00058 	addik	r7, r0, 88
    aed4:	32d60001 	addik	r22, r22, 1
    aed8:	3083ffe0 	addik	r4, r3, -32
    aedc:	14a43803 	cmpu	r5, r4, r7
    aee0:	bc450840 	blti	r5, 2112		// b720
    aee4:	10842000 	addk	r4, r4, r4
    aee8:	10842000 	addk	r4, r4, r4
    aeec:	c8844000 	lw	r4, r4, r8
    aef0:	98082000 	bra	r4
    aef4:	a3180010 	ori	r24, r24, 16
    aef8:	a4980020 	andi	r4, r24, 32
    aefc:	be040fd4 	beqid	r4, 4052		// bed0
    af00:	a4b80010 	andi	r5, r24, 16
    af04:	e8a1052c 	lwi	r5, r1, 1324
    af08:	30600001 	addik	r3, r0, 1
    af0c:	e8850000 	lwi	r4, r5, 0
    af10:	e8a50004 	lwi	r5, r5, 4
    af14:	f88104d0 	swi	r4, r1, 1232
    af18:	f8a104d4 	swi	r5, r1, 1236
    af1c:	e8c104d0 	lwi	r6, r1, 1232
    af20:	e961052c 	lwi	r11, r1, 1324
    af24:	80862800 	or	r4, r6, r5
    af28:	316b0008 	addik	r11, r11, 8
    af2c:	14a40000 	rsubk	r5, r4, r0
    af30:	80852000 	or	r4, r5, r4
    af34:	f961052c 	swi	r11, r1, 1324
    af38:	13a02000 	addk	r29, r0, r4
    af3c:	93a40041 	srl	r29, r4
    af40:	93bd0041 	srl	r29, r29
    af44:	93bd0041 	srl	r29, r29
    af48:	93bd0041 	srl	r29, r29
    af4c:	93bd0041 	srl	r29, r29
    af50:	93bd0041 	srl	r29, r29
    af54:	93bd0041 	srl	r29, r29
    af58:	93bd0041 	srl	r29, r29
    af5c:	93bd0041 	srl	r29, r29
    af60:	93bd0041 	srl	r29, r29
    af64:	93bd0041 	srl	r29, r29
    af68:	93bd0041 	srl	r29, r29
    af6c:	93bd0041 	srl	r29, r29
    af70:	93bd0041 	srl	r29, r29
    af74:	93bd0041 	srl	r29, r29
    af78:	93bd0041 	srl	r29, r29
    af7c:	93bd0041 	srl	r29, r29
    af80:	93bd0041 	srl	r29, r29
    af84:	93bd0041 	srl	r29, r29
    af88:	93bd0041 	srl	r29, r29
    af8c:	93bd0041 	srl	r29, r29
    af90:	93bd0041 	srl	r29, r29
    af94:	93bd0041 	srl	r29, r29
    af98:	93bd0041 	srl	r29, r29
    af9c:	93bd0041 	srl	r29, r29
    afa0:	93bd0041 	srl	r29, r29
    afa4:	93bd0041 	srl	r29, r29
    afa8:	93bd0041 	srl	r29, r29
    afac:	93bd0041 	srl	r29, r29
    afb0:	93bd0041 	srl	r29, r29
    afb4:	93bd0041 	srl	r29, r29
    afb8:	f00104ba 	sbi	r0, r1, 1210
    afbc:	13c00000 	addk	r30, r0, r0
    afc0:	be5b000c 	bltid	r27, 12		// afcc
    afc4:	149b0000 	rsubk	r4, r27, r0
    afc8:	a718ff7f 	andi	r24, r24, -129
    afcc:	8084d800 	or	r4, r4, r27
    afd0:	be44000c 	bltid	r4, 12		// afdc
    afd4:	a8830001 	xori	r4, r3, 1
    afd8:	bc1d0a88 	beqi	r29, 2696		// ba60
    afdc:	be240c10 	bneid	r4, 3088		// bbec
    afe0:	a8630002 	xori	r3, r3, 2
    afe4:	e86104d0 	lwi	r3, r1, 1232
    afe8:	be030f78 	beqid	r3, 3960		// bf60
    afec:	e88104d4 	lwi	r4, r1, 1236
    aff0:	fbc104c0 	swi	r30, r1, 1216
    aff4:	133a0000 	addk	r25, r26, r0
    aff8:	13a90000 	addk	r29, r9, r0
    affc:	ebc104d0 	lwi	r30, r1, 1232
    b000:	ebe104d4 	lwi	r31, r1, 1236
    b004:	10be0000 	addk	r5, r30, r0
    b008:	10df0000 	addk	r6, r31, r0
    b00c:	30e00000 	addik	r7, r0, 0
    b010:	3100000a 	addik	r8, r0, 10
    b014:	b9f43e94 	brlid	r15, 16020	// eea8 <__umoddi3>
    b018:	3339ffff 	addik	r25, r25, -1
    b01c:	10be0000 	addk	r5, r30, r0
    b020:	10df0000 	addk	r6, r31, r0
    b024:	30840030 	addik	r4, r4, 48
    b028:	30e00000 	addik	r7, r0, 0
    b02c:	3100000a 	addik	r8, r0, 10
    b030:	b9f42f74 	brlid	r15, 12148	// dfa4 <__udivdi3>
    b034:	f0990000 	sbi	r4, r25, 0
    b038:	13c30000 	addk	r30, r3, r0
    b03c:	807e2000 	or	r3, r30, r4
    b040:	be23ffc4 	bneid	r3, -60		// b004
    b044:	13e40000 	addk	r31, r4, r0
    b048:	fbc104d0 	swi	r30, r1, 1232
    b04c:	fbe104d4 	swi	r31, r1, 1236
    b050:	113d0000 	addk	r9, r29, r0
    b054:	ebc104c0 	lwi	r30, r1, 1216
    b058:	1499d000 	rsubk	r4, r25, r26
    b05c:	f88104c4 	swi	r4, r1, 1220
    b060:	fb6104e0 	swi	r27, r1, 1248
    b064:	e88104c4 	lwi	r4, r1, 1220
    b068:	e96104e0 	lwi	r11, r1, 1248
    b06c:	146b2001 	cmp	r3, r11, r4
    b070:	be430a14 	bltid	r3, 2580		// ba84
    b074:	f88104c0 	swi	r4, r1, 1216
    b078:	be1e0178 	beqid	r30, 376		// b1f0
    b07c:	e96104c0 	lwi	r11, r1, 1216
    b080:	316b0001 	addik	r11, r11, 1
    b084:	b810016c 	brid	364		// b1f0
    b088:	f96104c0 	swi	r11, r1, 1216
    b08c:	a3180010 	ori	r24, r24, 16
    b090:	a4980020 	andi	r4, r24, 32
    b094:	be040e70 	beqid	r4, 3696		// bf04
    b098:	e8a1052c 	lwi	r5, r1, 1324
    b09c:	e8850000 	lwi	r4, r5, 0
    b0a0:	e8a50004 	lwi	r5, r5, 4
    b0a4:	f88104d0 	swi	r4, r1, 1232
    b0a8:	f8a104d4 	swi	r5, r1, 1236
    b0ac:	b810fe70 	brid	-400		// af1c
    b0b0:	10600000 	addk	r3, r0, r0
    b0b4:	e961052c 	lwi	r11, r1, 1324
    b0b8:	e96b0000 	lwi	r11, r11, 0
    b0bc:	f96104cc 	swi	r11, r1, 1228
    b0c0:	e961052c 	lwi	r11, r1, 1324
    b0c4:	308b0004 	addik	r4, r11, 4
    b0c8:	e96104cc 	lwi	r11, r1, 1228
    b0cc:	beab0e64 	bgeid	r11, 3684		// bf30
    b0d0:	156b0000 	rsubk	r11, r11, r0
    b0d4:	f881052c 	swi	r4, r1, 1324
    b0d8:	f96104cc 	swi	r11, r1, 1228
    b0dc:	e0760000 	lbui	r3, r22, 0
    b0e0:	a3180004 	ori	r24, r24, 4
    b0e4:	b810fdf0 	brid	-528		// aed4
    b0e8:	90630060 	sext8	r3, r3
    b0ec:	a4780020 	andi	r3, r24, 32
    b0f0:	be0304dc 	beqid	r3, 1244		// b5cc
    b0f4:	f0c104ba 	sbi	r6, r1, 1210
    b0f8:	e961052c 	lwi	r11, r1, 1324
    b0fc:	e86b0000 	lwi	r3, r11, 0
    b100:	e8ab0004 	lwi	r5, r11, 4
    b104:	316b0008 	addik	r11, r11, 8
    b108:	f86104d0 	swi	r3, r1, 1232
    b10c:	f8a104d4 	swi	r5, r1, 1236
    b110:	f961052c 	swi	r11, r1, 1324
    b114:	be43050c 	bltid	r3, 1292		// b620
    b118:	e88104d0 	lwi	r4, r1, 1232
    b11c:	e8a104d4 	lwi	r5, r1, 1236
    b120:	e3c104ba 	lbui	r30, r1, 1210
    b124:	80642800 	or	r3, r4, r5
    b128:	14830000 	rsubk	r4, r3, r0
    b12c:	80641800 	or	r3, r4, r3
    b130:	13a01800 	addk	r29, r0, r3
    b134:	93a30041 	srl	r29, r3
    b138:	93bd0041 	srl	r29, r29
    b13c:	93bd0041 	srl	r29, r29
    b140:	93bd0041 	srl	r29, r29
    b144:	93bd0041 	srl	r29, r29
    b148:	93bd0041 	srl	r29, r29
    b14c:	93bd0041 	srl	r29, r29
    b150:	93bd0041 	srl	r29, r29
    b154:	93bd0041 	srl	r29, r29
    b158:	93bd0041 	srl	r29, r29
    b15c:	93bd0041 	srl	r29, r29
    b160:	93bd0041 	srl	r29, r29
    b164:	93bd0041 	srl	r29, r29
    b168:	93bd0041 	srl	r29, r29
    b16c:	93bd0041 	srl	r29, r29
    b170:	93bd0041 	srl	r29, r29
    b174:	93bd0041 	srl	r29, r29
    b178:	93bd0041 	srl	r29, r29
    b17c:	93bd0041 	srl	r29, r29
    b180:	93bd0041 	srl	r29, r29
    b184:	93bd0041 	srl	r29, r29
    b188:	93bd0041 	srl	r29, r29
    b18c:	93bd0041 	srl	r29, r29
    b190:	93bd0041 	srl	r29, r29
    b194:	93bd0041 	srl	r29, r29
    b198:	93bd0041 	srl	r29, r29
    b19c:	93bd0041 	srl	r29, r29
    b1a0:	93bd0041 	srl	r29, r29
    b1a4:	93bd0041 	srl	r29, r29
    b1a8:	93bd0041 	srl	r29, r29
    b1ac:	93bd0041 	srl	r29, r29
    b1b0:	93de0060 	sext8	r30, r30
    b1b4:	b810fe0c 	brid	-500		// afc0
    b1b8:	30600001 	addik	r3, r0, 1
    b1bc:	e961052c 	lwi	r11, r1, 1324
    b1c0:	30800001 	addik	r4, r0, 1
    b1c4:	f88104c0 	swi	r4, r1, 1216
    b1c8:	e16b0003 	lbui	r11, r11, 3
    b1cc:	f00104ba 	sbi	r0, r1, 1210
    b1d0:	f88104c4 	swi	r4, r1, 1220
    b1d4:	f1610484 	sbi	r11, r1, 1156
    b1d8:	e961052c 	lwi	r11, r1, 1324
    b1dc:	33210484 	addik	r25, r1, 1156
    b1e0:	316b0004 	addik	r11, r11, 4
    b1e4:	f961052c 	swi	r11, r1, 1324
    b1e8:	10800000 	addk	r4, r0, r0
    b1ec:	f88104e0 	swi	r4, r1, 1248
    b1f0:	a4980002 	andi	r4, r24, 2
    b1f4:	be040014 	beqid	r4, 20		// b208
    b1f8:	f88104d8 	swi	r4, r1, 1240
    b1fc:	e96104c0 	lwi	r11, r1, 1216
    b200:	316b0002 	addik	r11, r11, 2
    b204:	f96104c0 	swi	r11, r1, 1216
    b208:	a4980084 	andi	r4, r24, 132
    b20c:	be2405f8 	bneid	r4, 1528		// b804
    b210:	f88104dc 	swi	r4, r1, 1244
    b214:	e96104cc 	lwi	r11, r1, 1228
    b218:	e88104c0 	lwi	r4, r1, 1216
    b21c:	17a45800 	rsubk	r29, r4, r11
    b220:	be7d05e4 	bleid	r29, 1508		// b804
    b224:	31000010 	addik	r8, r0, 16	// 10 <_.d1>
    b228:	147d4001 	cmp	r3, r29, r8
    b22c:	bea31064 	bgeid	r3, 4196		// c290
    b230:	e8a104b4 	lwi	r5, r1, 1204
    b234:	e86104b0 	lwi	r3, r1, 1200
    b238:	b0000001 	imm	1
    b23c:	33c02f4c 	addik	r30, r0, 12108	// 12f4c <blanks.3956>
    b240:	13e80000 	addk	r31, r8, r0
    b244:	b8100018 	brid	24		// b25c
    b248:	33600007 	addik	r27, r0, 7
    b24c:	33bdfff0 	addik	r29, r29, -16
    b250:	149df801 	cmp	r4, r29, r31
    b254:	bea40054 	bgeid	r4, 84		// b2a8
    b258:	31290008 	addik	r9, r9, 8
    b25c:	30630001 	addik	r3, r3, 1
    b260:	30a50010 	addik	r5, r5, 16
    b264:	fbc90000 	swi	r30, r9, 0
    b268:	fbe90004 	swi	r31, r9, 4
    b26c:	f8a104b4 	swi	r5, r1, 1204
    b270:	1483d801 	cmp	r4, r3, r27
    b274:	bea4ffd8 	bgeid	r4, -40		// b24c
    b278:	f86104b0 	swi	r3, r1, 1200
    b27c:	10b70000 	addk	r5, r23, r0
    b280:	10d30000 	addk	r6, r19, r0
    b284:	b9f4f988 	brlid	r15, -1656	// ac0c <__sprint_r>
    b288:	10fa0000 	addk	r7, r26, r0
    b28c:	be230818 	bneid	r3, 2072		// baa4
    b290:	33bdfff0 	addik	r29, r29, -16
    b294:	149df801 	cmp	r4, r29, r31
    b298:	113c0000 	addk	r9, r28, r0
    b29c:	e8a104b4 	lwi	r5, r1, 1204
    b2a0:	be44ffbc 	bltid	r4, -68		// b25c
    b2a4:	e86104b0 	lwi	r3, r1, 1200
    b2a8:	30630001 	addik	r3, r3, 1
    b2ac:	10a5e800 	addk	r5, r5, r29
    b2b0:	30800007 	addik	r4, r0, 7
    b2b4:	fbc90000 	swi	r30, r9, 0
    b2b8:	fba90004 	swi	r29, r9, 4
    b2bc:	f8a104b4 	swi	r5, r1, 1204
    b2c0:	14832001 	cmp	r4, r3, r4
    b2c4:	be440528 	bltid	r4, 1320		// b7ec
    b2c8:	f86104b0 	swi	r3, r1, 1200
    b2cc:	b8100540 	brid	1344		// b80c
    b2d0:	31290008 	addik	r9, r9, 8
    b2d4:	b0000001 	imm	1
    b2d8:	31602db8 	addik	r11, r0, 11704
    b2dc:	f0c104ba 	sbi	r6, r1, 1210
    b2e0:	a4980020 	andi	r4, r24, 32
    b2e4:	be0400e8 	beqid	r4, 232		// b3cc
    b2e8:	f96104e4 	swi	r11, r1, 1252
    b2ec:	e8a1052c 	lwi	r5, r1, 1324
    b2f0:	e961052c 	lwi	r11, r1, 1324
    b2f4:	e8850000 	lwi	r4, r5, 0
    b2f8:	e8a50004 	lwi	r5, r5, 4
    b2fc:	316b0008 	addik	r11, r11, 8
    b300:	f961052c 	swi	r11, r1, 1324
    b304:	f88104d0 	swi	r4, r1, 1232
    b308:	f8a104d4 	swi	r5, r1, 1236
    b30c:	a4980001 	andi	r4, r24, 1
    b310:	be2400ec 	bneid	r4, 236		// b3fc
    b314:	e8c104d0 	lwi	r6, r1, 1232
    b318:	e88104d0 	lwi	r4, r1, 1232
    b31c:	e8a104d4 	lwi	r5, r1, 1236
    b320:	80642800 	or	r3, r4, r5
    b324:	14830000 	rsubk	r4, r3, r0
    b328:	80641800 	or	r3, r4, r3
    b32c:	13a01800 	addk	r29, r0, r3
    b330:	93a30041 	srl	r29, r3
    b334:	93bd0041 	srl	r29, r29
    b338:	93bd0041 	srl	r29, r29
    b33c:	93bd0041 	srl	r29, r29
    b340:	93bd0041 	srl	r29, r29
    b344:	93bd0041 	srl	r29, r29
    b348:	93bd0041 	srl	r29, r29
    b34c:	93bd0041 	srl	r29, r29
    b350:	93bd0041 	srl	r29, r29
    b354:	93bd0041 	srl	r29, r29
    b358:	93bd0041 	srl	r29, r29
    b35c:	93bd0041 	srl	r29, r29
    b360:	93bd0041 	srl	r29, r29
    b364:	93bd0041 	srl	r29, r29
    b368:	93bd0041 	srl	r29, r29
    b36c:	93bd0041 	srl	r29, r29
    b370:	93bd0041 	srl	r29, r29
    b374:	93bd0041 	srl	r29, r29
    b378:	93bd0041 	srl	r29, r29
    b37c:	93bd0041 	srl	r29, r29
    b380:	93bd0041 	srl	r29, r29
    b384:	93bd0041 	srl	r29, r29
    b388:	93bd0041 	srl	r29, r29
    b38c:	93bd0041 	srl	r29, r29
    b390:	93bd0041 	srl	r29, r29
    b394:	93bd0041 	srl	r29, r29
    b398:	93bd0041 	srl	r29, r29
    b39c:	93bd0041 	srl	r29, r29
    b3a0:	93bd0041 	srl	r29, r29
    b3a4:	93bd0041 	srl	r29, r29
    b3a8:	93bd0041 	srl	r29, r29
    b3ac:	b810fc0c 	brid	-1012		// afb8
    b3b0:	30600002 	addik	r3, r0, 2
    b3b4:	b0000001 	imm	1
    b3b8:	31602dcc 	addik	r11, r0, 11724
    b3bc:	f0c104ba 	sbi	r6, r1, 1210
    b3c0:	a4980020 	andi	r4, r24, 32
    b3c4:	be24ff28 	bneid	r4, -216		// b2ec
    b3c8:	f96104e4 	swi	r11, r1, 1252
    b3cc:	a4b80010 	andi	r5, r24, 16
    b3d0:	bc050bfc 	beqi	r5, 3068		// bfcc
    b3d4:	e961052c 	lwi	r11, r1, 1324
    b3d8:	e96b0000 	lwi	r11, r11, 0
    b3dc:	f88104d0 	swi	r4, r1, 1232
    b3e0:	a4980001 	andi	r4, r24, 1
    b3e4:	f96104d4 	swi	r11, r1, 1236
    b3e8:	e961052c 	lwi	r11, r1, 1324
    b3ec:	316b0004 	addik	r11, r11, 4
    b3f0:	be04ff28 	beqid	r4, -216		// b318
    b3f4:	f961052c 	swi	r11, r1, 1324
    b3f8:	e8c104d0 	lwi	r6, r1, 1232
    b3fc:	e96104d4 	lwi	r11, r1, 1236
    b400:	83a65800 	or	r29, r6, r11
    b404:	be3d0bb0 	bneid	r29, 2992		// bfb4
    b408:	30800030 	addik	r4, r0, 48
    b40c:	b810fbac 	brid	-1108		// afb8
    b410:	30600002 	addik	r3, r0, 2
    b414:	e961052c 	lwi	r11, r1, 1324
    b418:	f00104ba 	sbi	r0, r1, 1210
    b41c:	eb2b0000 	lwi	r25, r11, 0
    b420:	be190dc0 	beqid	r25, 3520		// c1e0
    b424:	33cb0004 	addik	r30, r11, 4
    b428:	be5b0d84 	bltid	r27, 3460		// c1ac
    b42c:	10b90000 	addk	r5, r25, r0
    b430:	10fb0000 	addk	r7, r27, r0
    b434:	10c00000 	addk	r6, r0, r0
    b438:	b9f4d3a0 	brlid	r15, -11360	// 87d8 <memchr>
    b43c:	f92104ec 	swi	r9, r1, 1260
    b440:	be030e70 	beqid	r3, 3696		// c2b0
    b444:	e92104ec 	lwi	r9, r1, 1260
    b448:	14791800 	rsubk	r3, r25, r3
    b44c:	f86104c4 	swi	r3, r1, 1220
    b450:	1463d801 	cmp	r3, r3, r27
    b454:	bea30d08 	bgeid	r3, 3336		// c15c
    b458:	10800000 	addk	r4, r0, r0
    b45c:	fbc1052c 	swi	r30, r1, 1324
    b460:	e3c104ba 	lbui	r30, r1, 1210
    b464:	11600000 	addk	r11, r0, r0
    b468:	fb6104c4 	swi	r27, r1, 1220
    b46c:	93de0060 	sext8	r30, r30
    b470:	b810fbf4 	brid	-1036		// b064
    b474:	f96104e0 	swi	r11, r1, 1248
    b478:	e0760000 	lbui	r3, r22, 0
    b47c:	a3180020 	ori	r24, r24, 32
    b480:	b810fa54 	brid	-1452		// aed4
    b484:	90630060 	sext8	r3, r3
    b488:	e961052c 	lwi	r11, r1, 1324
    b48c:	30600030 	addik	r3, r0, 48
    b490:	f06104b8 	sbi	r3, r1, 1208
    b494:	e96b0000 	lwi	r11, r11, 0
    b498:	10800000 	addk	r4, r0, r0
    b49c:	a3180002 	ori	r24, r24, 2
    b4a0:	146b0000 	rsubk	r3, r11, r0
    b4a4:	80635800 	or	r3, r3, r11
    b4a8:	f96104d4 	swi	r11, r1, 1236
    b4ac:	31600078 	addik	r11, r0, 120
    b4b0:	f16104b9 	sbi	r11, r1, 1209
    b4b4:	e961052c 	lwi	r11, r1, 1324
    b4b8:	13a01800 	addk	r29, r0, r3
    b4bc:	93a30041 	srl	r29, r3
    b4c0:	93bd0041 	srl	r29, r29
    b4c4:	93bd0041 	srl	r29, r29
    b4c8:	93bd0041 	srl	r29, r29
    b4cc:	93bd0041 	srl	r29, r29
    b4d0:	93bd0041 	srl	r29, r29
    b4d4:	93bd0041 	srl	r29, r29
    b4d8:	93bd0041 	srl	r29, r29
    b4dc:	93bd0041 	srl	r29, r29
    b4e0:	93bd0041 	srl	r29, r29
    b4e4:	93bd0041 	srl	r29, r29
    b4e8:	93bd0041 	srl	r29, r29
    b4ec:	93bd0041 	srl	r29, r29
    b4f0:	93bd0041 	srl	r29, r29
    b4f4:	93bd0041 	srl	r29, r29
    b4f8:	93bd0041 	srl	r29, r29
    b4fc:	93bd0041 	srl	r29, r29
    b500:	93bd0041 	srl	r29, r29
    b504:	93bd0041 	srl	r29, r29
    b508:	93bd0041 	srl	r29, r29
    b50c:	93bd0041 	srl	r29, r29
    b510:	93bd0041 	srl	r29, r29
    b514:	93bd0041 	srl	r29, r29
    b518:	93bd0041 	srl	r29, r29
    b51c:	93bd0041 	srl	r29, r29
    b520:	93bd0041 	srl	r29, r29
    b524:	93bd0041 	srl	r29, r29
    b528:	93bd0041 	srl	r29, r29
    b52c:	93bd0041 	srl	r29, r29
    b530:	93bd0041 	srl	r29, r29
    b534:	93bd0041 	srl	r29, r29
    b538:	f88104d0 	swi	r4, r1, 1232
    b53c:	316b0004 	addik	r11, r11, 4
    b540:	f961052c 	swi	r11, r1, 1324
    b544:	b0000001 	imm	1
    b548:	31602dcc 	addik	r11, r0, 11724
    b54c:	30600002 	addik	r3, r0, 2
    b550:	b810fa68 	brid	-1432		// afb8
    b554:	f96104e4 	swi	r11, r1, 1252
    b558:	e0760000 	lbui	r3, r22, 0
    b55c:	90630060 	sext8	r3, r3
    b560:	a883006c 	xori	r4, r3, 108
    b564:	bc040b98 	beqi	r4, 2968		// c0fc
    b568:	a3180010 	ori	r24, r24, 16
    b56c:	b810f96c 	brid	-1684		// aed8
    b570:	32d60001 	addik	r22, r22, 1
    b574:	e0760000 	lbui	r3, r22, 0
    b578:	a3180040 	ori	r24, r24, 64
    b57c:	b810f958 	brid	-1704		// aed4
    b580:	90630060 	sext8	r3, r3
    b584:	a4780020 	andi	r3, r24, 32
    b588:	be230b30 	bneid	r3, 2864		// c0b8
    b58c:	f0c104ba 	sbi	r6, r1, 1210
    b590:	a4780010 	andi	r3, r24, 16
    b594:	be230b7c 	bneid	r3, 2940		// c110
    b598:	e961052c 	lwi	r11, r1, 1324
    b59c:	a7180040 	andi	r24, r24, 64
    b5a0:	bc180b70 	beqi	r24, 2928		// c110
    b5a4:	e86b0000 	lwi	r3, r11, 0
    b5a8:	316b0004 	addik	r11, r11, 4
    b5ac:	f961052c 	swi	r11, r1, 1324
    b5b0:	e96104c8 	lwi	r11, r1, 1224
    b5b4:	b810f85c 	brid	-1956		// ae10
    b5b8:	f5630000 	shi	r11, r3, 0
    b5bc:	a3180010 	ori	r24, r24, 16
    b5c0:	a4780020 	andi	r3, r24, 32
    b5c4:	be23fb34 	bneid	r3, -1228		// b0f8
    b5c8:	f0c104ba 	sbi	r6, r1, 1210
    b5cc:	a4780010 	andi	r3, r24, 16
    b5d0:	be2309b4 	bneid	r3, 2484		// bf84
    b5d4:	e961052c 	lwi	r11, r1, 1324
    b5d8:	a4780040 	andi	r3, r24, 64
    b5dc:	be030b94 	beqid	r3, 2964		// c170
    b5e0:	e8a1052c 	lwi	r5, r1, 1324
    b5e4:	e961052c 	lwi	r11, r1, 1324
    b5e8:	e86b0000 	lwi	r3, r11, 0
    b5ec:	316b0004 	addik	r11, r11, 4
    b5f0:	f961052c 	swi	r11, r1, 1324
    b5f4:	90630061 	sext16	r3, r3
    b5f8:	10a01800 	addk	r5, r0, r3
    b5fc:	00852800 	add	r4, r5, r5
    b600:	08800000 	addc	r4, r0, r0
    b604:	bc040008 	beqi	r4, 8		// b60c
    b608:	2080ffff 	addi	r4, r0, -1
    b60c:	10640000 	addk	r3, r4, r0
    b610:	f88104d0 	swi	r4, r1, 1232
    b614:	f8a104d4 	swi	r5, r1, 1236
    b618:	bea3fb04 	bgeid	r3, -1276		// b11c
    b61c:	e88104d0 	lwi	r4, r1, 1232
    b620:	e88104d0 	lwi	r4, r1, 1232
    b624:	e8a104d4 	lwi	r5, r1, 1236
    b628:	33c0002d 	addik	r30, r0, 45
    b62c:	04a50000 	rsub	r5, r5, r0
    b630:	0c840000 	rsubc	r4, r4, r0
    b634:	80642800 	or	r3, r4, r5
    b638:	f88104d0 	swi	r4, r1, 1232
    b63c:	f8a104d4 	swi	r5, r1, 1236
    b640:	14830000 	rsubk	r4, r3, r0
    b644:	80641800 	or	r3, r4, r3
    b648:	30a0002d 	addik	r5, r0, 45
    b64c:	13a01800 	addk	r29, r0, r3
    b650:	93a30041 	srl	r29, r3
    b654:	93bd0041 	srl	r29, r29
    b658:	93bd0041 	srl	r29, r29
    b65c:	93bd0041 	srl	r29, r29
    b660:	93bd0041 	srl	r29, r29
    b664:	93bd0041 	srl	r29, r29
    b668:	93bd0041 	srl	r29, r29
    b66c:	93bd0041 	srl	r29, r29
    b670:	93bd0041 	srl	r29, r29
    b674:	93bd0041 	srl	r29, r29
    b678:	93bd0041 	srl	r29, r29
    b67c:	93bd0041 	srl	r29, r29
    b680:	93bd0041 	srl	r29, r29
    b684:	93bd0041 	srl	r29, r29
    b688:	93bd0041 	srl	r29, r29
    b68c:	93bd0041 	srl	r29, r29
    b690:	93bd0041 	srl	r29, r29
    b694:	93bd0041 	srl	r29, r29
    b698:	93bd0041 	srl	r29, r29
    b69c:	93bd0041 	srl	r29, r29
    b6a0:	93bd0041 	srl	r29, r29
    b6a4:	93bd0041 	srl	r29, r29
    b6a8:	93bd0041 	srl	r29, r29
    b6ac:	93bd0041 	srl	r29, r29
    b6b0:	93bd0041 	srl	r29, r29
    b6b4:	93bd0041 	srl	r29, r29
    b6b8:	93bd0041 	srl	r29, r29
    b6bc:	93bd0041 	srl	r29, r29
    b6c0:	93bd0041 	srl	r29, r29
    b6c4:	93bd0041 	srl	r29, r29
    b6c8:	93bd0041 	srl	r29, r29
    b6cc:	f0a104ba 	sbi	r5, r1, 1210
    b6d0:	b810f8f0 	brid	-1808		// afc0
    b6d4:	30600001 	addik	r3, r0, 1
    b6d8:	10a00000 	addk	r5, r0, r0
    b6dc:	3083ffd0 	addik	r4, r3, -48
    b6e0:	e1560000 	lbui	r10, r22, 0
    b6e4:	10652800 	addk	r3, r5, r5
    b6e8:	10631800 	addk	r3, r3, r3
    b6ec:	10a32800 	addk	r5, r3, r5
    b6f0:	10a52800 	addk	r5, r5, r5
    b6f4:	906a0060 	sext8	r3, r10
    b6f8:	10a52000 	addk	r5, r5, r4
    b6fc:	31600009 	addik	r11, r0, 9
    b700:	3083ffd0 	addik	r4, r3, -48
    b704:	15445803 	cmpu	r10, r4, r11
    b708:	beaaffd8 	bgeid	r10, -40		// b6e0
    b70c:	32d60001 	addik	r22, r22, 1
    b710:	3083ffe0 	addik	r4, r3, -32
    b714:	f8a104cc 	swi	r5, r1, 1228
    b718:	14a43803 	cmpu	r5, r4, r7
    b71c:	bca5f7c8 	bgei	r5, -2104		// aee4
    b720:	be03036c 	beqid	r3, 876		// ba8c
    b724:	f0c104ba 	sbi	r6, r1, 1210
    b728:	30800001 	addik	r4, r0, 1
    b72c:	f88104c0 	swi	r4, r1, 1216
    b730:	f0610484 	sbi	r3, r1, 1156
    b734:	f00104ba 	sbi	r0, r1, 1210
    b738:	f88104c4 	swi	r4, r1, 1220
    b73c:	b810faac 	brid	-1364		// b1e8
    b740:	33210484 	addik	r25, r1, 1156
    b744:	e0760000 	lbui	r3, r22, 0
    b748:	a3180080 	ori	r24, r24, 128
    b74c:	b810f788 	brid	-2168		// aed4
    b750:	90630060 	sext8	r3, r3
    b754:	e0760000 	lbui	r3, r22, 0
    b758:	a3180001 	ori	r24, r24, 1
    b75c:	b810f778 	brid	-2184		// aed4
    b760:	90630060 	sext8	r3, r3
    b764:	be26094c 	bneid	r6, 2380		// c0b0
    b768:	e0760000 	lbui	r3, r22, 0
    b76c:	30c00020 	addik	r6, r0, 32
    b770:	b810f764 	brid	-2204		// aed4
    b774:	90630060 	sext8	r3, r3
    b778:	e0760000 	lbui	r3, r22, 0
    b77c:	30c0002b 	addik	r6, r0, 43
    b780:	b810f754 	brid	-2220		// aed4
    b784:	90630060 	sext8	r3, r3
    b788:	e0760000 	lbui	r3, r22, 0
    b78c:	90630060 	sext8	r3, r3
    b790:	a883002a 	xori	r4, r3, 42
    b794:	be040b48 	beqid	r4, 2888		// c2dc
    b798:	30b60001 	addik	r5, r22, 1
    b79c:	3083ffd0 	addik	r4, r3, -48
    b7a0:	31600009 	addik	r11, r0, 9
    b7a4:	15445803 	cmpu	r10, r4, r11
    b7a8:	be4a003c 	bltid	r10, 60		// b7e4
    b7ac:	13600000 	addk	r27, r0, r0
    b7b0:	e1450000 	lbui	r10, r5, 0
    b7b4:	107bd800 	addk	r3, r27, r27
    b7b8:	10631800 	addk	r3, r3, r3
    b7bc:	1363d800 	addk	r27, r3, r27
    b7c0:	137bd800 	addk	r27, r27, r27
    b7c4:	906a0060 	sext8	r3, r10
    b7c8:	1364d800 	addk	r27, r4, r27
    b7cc:	31600009 	addik	r11, r0, 9
    b7d0:	3083ffd0 	addik	r4, r3, -48
    b7d4:	15445803 	cmpu	r10, r4, r11
    b7d8:	beaaffd8 	bgeid	r10, -40		// b7b0
    b7dc:	30a50001 	addik	r5, r5, 1
    b7e0:	bc5b09f4 	blti	r27, 2548		// c1d4
    b7e4:	b810f6f4 	brid	-2316		// aed8
    b7e8:	12c50000 	addk	r22, r5, r0
    b7ec:	10b70000 	addk	r5, r23, r0
    b7f0:	10d30000 	addk	r6, r19, r0
    b7f4:	b9f4f418 	brlid	r15, -3048	// ac0c <__sprint_r>
    b7f8:	10fa0000 	addk	r7, r26, r0
    b7fc:	be2302a8 	bneid	r3, 680		// baa4
    b800:	113c0000 	addk	r9, r28, r0
    b804:	e8a104b4 	lwi	r5, r1, 1204
    b808:	e86104b0 	lwi	r3, r1, 1200
    b80c:	e08104ba 	lbui	r4, r1, 1210
    b810:	be04003c 	beqid	r4, 60		// b84c
    b814:	e96104d8 	lwi	r11, r1, 1240
    b818:	308104ba 	addik	r4, r1, 1210
    b81c:	f8890000 	swi	r4, r9, 0
    b820:	30800001 	addik	r4, r0, 1
    b824:	30630001 	addik	r3, r3, 1
    b828:	30a50001 	addik	r5, r5, 1
    b82c:	f8890004 	swi	r4, r9, 4
    b830:	30800007 	addik	r4, r0, 7
    b834:	f8a104b4 	swi	r5, r1, 1204
    b838:	14832001 	cmp	r4, r3, r4
    b83c:	be4405ac 	bltid	r4, 1452		// bde8
    b840:	f86104b0 	swi	r3, r1, 1200
    b844:	31290008 	addik	r9, r9, 8
    b848:	e96104d8 	lwi	r11, r1, 1240
    b84c:	be0b003c 	beqid	r11, 60		// b888
    b850:	e88104dc 	lwi	r4, r1, 1244
    b854:	308104b8 	addik	r4, r1, 1208
    b858:	f8890000 	swi	r4, r9, 0
    b85c:	30800002 	addik	r4, r0, 2
    b860:	30630001 	addik	r3, r3, 1
    b864:	30a50002 	addik	r5, r5, 2
    b868:	f8890004 	swi	r4, r9, 4
    b86c:	30800007 	addik	r4, r0, 7
    b870:	f8a104b4 	swi	r5, r1, 1204
    b874:	14832001 	cmp	r4, r3, r4
    b878:	be44054c 	bltid	r4, 1356		// bdc4
    b87c:	f86104b0 	swi	r3, r1, 1200
    b880:	31290008 	addik	r9, r9, 8
    b884:	e88104dc 	lwi	r4, r1, 1244
    b888:	abc40080 	xori	r30, r4, 128
    b88c:	be1e0270 	beqid	r30, 624		// bafc
    b890:	e96104cc 	lwi	r11, r1, 1228
    b894:	e96104e0 	lwi	r11, r1, 1248
    b898:	e88104c4 	lwi	r4, r1, 1220
    b89c:	17c45800 	rsubk	r30, r4, r11
    b8a0:	bc7e00a8 	blei	r30, 168		// b948
    b8a4:	33e00010 	addik	r31, r0, 16	// 10 <_.d1>
    b8a8:	149ef801 	cmp	r4, r30, r31
    b8ac:	b0000001 	imm	1
    b8b0:	33a02f5c 	addik	r29, r0, 12124	// 12f5c <zeroes.3957>
    b8b4:	be440020 	bltid	r4, 32		// b8d4
    b8b8:	33600007 	addik	r27, r0, 7
    b8bc:	b8100068 	brid	104		// b924
    b8c0:	30630001 	addik	r3, r3, 1
    b8c4:	33defff0 	addik	r30, r30, -16
    b8c8:	149ef801 	cmp	r4, r30, r31
    b8cc:	bea40054 	bgeid	r4, 84		// b920
    b8d0:	31290008 	addik	r9, r9, 8
    b8d4:	30630001 	addik	r3, r3, 1
    b8d8:	30a50010 	addik	r5, r5, 16
    b8dc:	fba90000 	swi	r29, r9, 0
    b8e0:	fbe90004 	swi	r31, r9, 4
    b8e4:	f8a104b4 	swi	r5, r1, 1204
    b8e8:	1483d801 	cmp	r4, r3, r27
    b8ec:	bea4ffd8 	bgeid	r4, -40		// b8c4
    b8f0:	f86104b0 	swi	r3, r1, 1200
    b8f4:	10b70000 	addk	r5, r23, r0
    b8f8:	10d30000 	addk	r6, r19, r0
    b8fc:	b9f4f310 	brlid	r15, -3312	// ac0c <__sprint_r>
    b900:	10fa0000 	addk	r7, r26, r0
    b904:	be2301a0 	bneid	r3, 416		// baa4
    b908:	33defff0 	addik	r30, r30, -16
    b90c:	149ef801 	cmp	r4, r30, r31
    b910:	113c0000 	addk	r9, r28, r0
    b914:	e8a104b4 	lwi	r5, r1, 1204
    b918:	be44ffbc 	bltid	r4, -68		// b8d4
    b91c:	e86104b0 	lwi	r3, r1, 1200
    b920:	30630001 	addik	r3, r3, 1
    b924:	10a5f000 	addk	r5, r5, r30
    b928:	30800007 	addik	r4, r0, 7
    b92c:	fba90000 	swi	r29, r9, 0
    b930:	fbc90004 	swi	r30, r9, 4
    b934:	f8a104b4 	swi	r5, r1, 1204
    b938:	14832001 	cmp	r4, r3, r4
    b93c:	be44045c 	bltid	r4, 1116		// bd98
    b940:	f86104b0 	swi	r3, r1, 1200
    b944:	31290008 	addik	r9, r9, 8
    b948:	e96104c4 	lwi	r11, r1, 1220
    b94c:	30630001 	addik	r3, r3, 1
    b950:	30800007 	addik	r4, r0, 7
    b954:	10a55800 	addk	r5, r5, r11
    b958:	f86104b0 	swi	r3, r1, 1200
    b95c:	fb290000 	swi	r25, r9, 0
    b960:	f9690004 	swi	r11, r9, 4
    b964:	14632001 	cmp	r3, r3, r4
    b968:	be430248 	bltid	r3, 584		// bbb0
    b96c:	f8a104b4 	swi	r5, r1, 1204
    b970:	31290008 	addik	r9, r9, 8
    b974:	a7180004 	andi	r24, r24, 4
    b978:	be1800bc 	beqid	r24, 188		// ba34
    b97c:	e96104cc 	lwi	r11, r1, 1228
    b980:	e88104c0 	lwi	r4, r1, 1216
    b984:	17045800 	rsubk	r24, r4, r11
    b988:	bc7800ac 	blei	r24, 172		// ba34
    b98c:	33200010 	addik	r25, r0, 16	// 10 <_.d1>
    b990:	1478c801 	cmp	r3, r24, r25
    b994:	bea3090c 	bgeid	r3, 2316		// c2a0
    b998:	10850000 	addk	r4, r5, r0
    b99c:	e86104b0 	lwi	r3, r1, 1200
    b9a0:	b0000001 	imm	1
    b9a4:	33c02f4c 	addik	r30, r0, 12108	// 12f4c <blanks.3956>
    b9a8:	b8100018 	brid	24		// b9c0
    b9ac:	33a00007 	addik	r29, r0, 7
    b9b0:	3318fff0 	addik	r24, r24, -16
    b9b4:	14b8c801 	cmp	r5, r24, r25
    b9b8:	bea50054 	bgeid	r5, 84		// ba0c
    b9bc:	31290008 	addik	r9, r9, 8
    b9c0:	30630001 	addik	r3, r3, 1
    b9c4:	30840010 	addik	r4, r4, 16
    b9c8:	fbc90000 	swi	r30, r9, 0
    b9cc:	fb290004 	swi	r25, r9, 4
    b9d0:	f88104b4 	swi	r4, r1, 1204
    b9d4:	14a3e801 	cmp	r5, r3, r29
    b9d8:	bea5ffd8 	bgeid	r5, -40		// b9b0
    b9dc:	f86104b0 	swi	r3, r1, 1200
    b9e0:	10b70000 	addk	r5, r23, r0
    b9e4:	10d30000 	addk	r6, r19, r0
    b9e8:	b9f4f224 	brlid	r15, -3548	// ac0c <__sprint_r>
    b9ec:	10fa0000 	addk	r7, r26, r0
    b9f0:	be2300b4 	bneid	r3, 180		// baa4
    b9f4:	3318fff0 	addik	r24, r24, -16
    b9f8:	14b8c801 	cmp	r5, r24, r25
    b9fc:	113c0000 	addk	r9, r28, r0
    ba00:	e88104b4 	lwi	r4, r1, 1204
    ba04:	be45ffbc 	bltid	r5, -68		// b9c0
    ba08:	e86104b0 	lwi	r3, r1, 1200
    ba0c:	10a40000 	addk	r5, r4, r0
    ba10:	30630001 	addik	r3, r3, 1
    ba14:	10b82800 	addk	r5, r24, r5
    ba18:	30800007 	addik	r4, r0, 7
    ba1c:	f86104b0 	swi	r3, r1, 1200
    ba20:	fbc90000 	swi	r30, r9, 0
    ba24:	fb090004 	swi	r24, r9, 4
    ba28:	14632001 	cmp	r3, r3, r4
    ba2c:	be430514 	bltid	r3, 1300		// bf40
    ba30:	f8a104b4 	swi	r5, r1, 1204
    ba34:	eb6104c0 	lwi	r27, r1, 1216
    ba38:	e96104cc 	lwi	r11, r1, 1228
    ba3c:	146bd801 	cmp	r3, r11, r27
    ba40:	bc43037c 	blti	r3, 892		// bdbc
    ba44:	e96104c8 	lwi	r11, r1, 1224
    ba48:	116bd800 	addk	r11, r11, r27
    ba4c:	be250184 	bneid	r5, 388		// bbd0
    ba50:	f96104c8 	swi	r11, r1, 1224
    ba54:	f80104b0 	swi	r0, r1, 1200
    ba58:	b810f3b8 	brid	-3144		// ae10
    ba5c:	113c0000 	addk	r9, r28, r0
    ba60:	be23023c 	bneid	r3, 572		// bc9c
    ba64:	a4980001 	andi	r4, r24, 1
    ba68:	be04045c 	beqid	r4, 1116		// bec4
    ba6c:	e96104e8 	lwi	r11, r1, 1256
    ba70:	30600030 	addik	r3, r0, 48
    ba74:	f06104ab 	sbi	r3, r1, 1195
    ba78:	f96104c4 	swi	r11, r1, 1220
    ba7c:	b810f5e4 	brid	-2588		// b060
    ba80:	332104ab 	addik	r25, r1, 1195
    ba84:	b810f5f4 	brid	-2572		// b078
    ba88:	f96104c0 	swi	r11, r1, 1216
    ba8c:	e86104b4 	lwi	r3, r1, 1204
    ba90:	be030014 	beqid	r3, 20		// baa4
    ba94:	10b70000 	addk	r5, r23, r0
    ba98:	10d30000 	addk	r6, r19, r0
    ba9c:	b9f4f170 	brlid	r15, -3728	// ac0c <__sprint_r>
    baa0:	30e104ac 	addik	r7, r1, 1196
    baa4:	e473000c 	lhui	r3, r19, 12
    baa8:	a4630040 	andi	r3, r3, 64
    baac:	90630061 	sext16	r3, r3
    bab0:	be030014 	beqid	r3, 20		// bac4
    bab4:	e86104c8 	lwi	r3, r1, 1224
    bab8:	3160ffff 	addik	r11, r0, -1
    babc:	f96104c8 	swi	r11, r1, 1224
    bac0:	e86104c8 	lwi	r3, r1, 1224
    bac4:	e9e10000 	lwi	r15, r1, 0
    bac8:	ea6104f0 	lwi	r19, r1, 1264
    bacc:	eac104f4 	lwi	r22, r1, 1268
    bad0:	eae104f8 	lwi	r23, r1, 1272
    bad4:	eb0104fc 	lwi	r24, r1, 1276
    bad8:	eb210500 	lwi	r25, r1, 1280
    badc:	eb410504 	lwi	r26, r1, 1284
    bae0:	eb610508 	lwi	r27, r1, 1288
    bae4:	eb81050c 	lwi	r28, r1, 1292
    bae8:	eba10510 	lwi	r29, r1, 1296
    baec:	ebc10514 	lwi	r30, r1, 1300
    baf0:	ebe10518 	lwi	r31, r1, 1304
    baf4:	b60f0008 	rtsd	r15, 8
    baf8:	3021051c 	addik	r1, r1, 1308
    bafc:	e88104c0 	lwi	r4, r1, 1216
    bb00:	17c45800 	rsubk	r30, r4, r11
    bb04:	be7efd90 	bleid	r30, -624		// b894
    bb08:	33e00010 	addik	r31, r0, 16	// 10 <_.d1>
    bb0c:	149ef801 	cmp	r4, r30, r31
    bb10:	b0000001 	imm	1
    bb14:	33a02f5c 	addik	r29, r0, 12124	// 12f5c <zeroes.3957>
    bb18:	be440020 	bltid	r4, 32		// bb38
    bb1c:	33600007 	addik	r27, r0, 7
    bb20:	b8100068 	brid	104		// bb88
    bb24:	30630001 	addik	r3, r3, 1
    bb28:	33defff0 	addik	r30, r30, -16
    bb2c:	149ef801 	cmp	r4, r30, r31
    bb30:	bea40054 	bgeid	r4, 84		// bb84
    bb34:	31290008 	addik	r9, r9, 8
    bb38:	30630001 	addik	r3, r3, 1
    bb3c:	30a50010 	addik	r5, r5, 16
    bb40:	fba90000 	swi	r29, r9, 0
    bb44:	fbe90004 	swi	r31, r9, 4
    bb48:	f8a104b4 	swi	r5, r1, 1204
    bb4c:	1483d801 	cmp	r4, r3, r27
    bb50:	bea4ffd8 	bgeid	r4, -40		// bb28
    bb54:	f86104b0 	swi	r3, r1, 1200
    bb58:	10b70000 	addk	r5, r23, r0
    bb5c:	10d30000 	addk	r6, r19, r0
    bb60:	b9f4f0ac 	brlid	r15, -3924	// ac0c <__sprint_r>
    bb64:	10fa0000 	addk	r7, r26, r0
    bb68:	be23ff3c 	bneid	r3, -196		// baa4
    bb6c:	33defff0 	addik	r30, r30, -16
    bb70:	149ef801 	cmp	r4, r30, r31
    bb74:	113c0000 	addk	r9, r28, r0
    bb78:	e8a104b4 	lwi	r5, r1, 1204
    bb7c:	be44ffbc 	bltid	r4, -68		// bb38
    bb80:	e86104b0 	lwi	r3, r1, 1200
    bb84:	30630001 	addik	r3, r3, 1
    bb88:	10a5f000 	addk	r5, r5, r30
    bb8c:	30800007 	addik	r4, r0, 7
    bb90:	fba90000 	swi	r29, r9, 0
    bb94:	fbc90004 	swi	r30, r9, 4
    bb98:	f8a104b4 	swi	r5, r1, 1204
    bb9c:	14832001 	cmp	r4, r3, r4
    bba0:	be440598 	bltid	r4, 1432		// c138
    bba4:	f86104b0 	swi	r3, r1, 1200
    bba8:	b810fcec 	brid	-788		// b894
    bbac:	31290008 	addik	r9, r9, 8
    bbb0:	10b70000 	addk	r5, r23, r0
    bbb4:	10d30000 	addk	r6, r19, r0
    bbb8:	b9f4f054 	brlid	r15, -4012	// ac0c <__sprint_r>
    bbbc:	10fa0000 	addk	r7, r26, r0
    bbc0:	be23fee4 	bneid	r3, -284		// baa4
    bbc4:	113c0000 	addk	r9, r28, r0
    bbc8:	b810fdac 	brid	-596		// b974
    bbcc:	e8a104b4 	lwi	r5, r1, 1204
    bbd0:	10b70000 	addk	r5, r23, r0
    bbd4:	10d30000 	addk	r6, r19, r0
    bbd8:	b9f4f034 	brlid	r15, -4044	// ac0c <__sprint_r>
    bbdc:	10fa0000 	addk	r7, r26, r0
    bbe0:	bc03fe74 	beqi	r3, -396		// ba54
    bbe4:	b810fec4 	brid	-316		// baa8
    bbe8:	e473000c 	lhui	r3, r19, 12
    bbec:	be030240 	beqid	r3, 576		// be2c
    bbf0:	133a0000 	addk	r25, r26, r0
    bbf4:	11690000 	addk	r11, r9, r0
    bbf8:	e88104d0 	lwi	r4, r1, 1232
    bbfc:	e8a104d4 	lwi	r5, r1, 1236
    bc00:	30c00000 	addik	r6, r0, 0
    bc04:	30e00007 	addik	r7, r0, 7
    bc08:	85253800 	and	r9, r5, r7
    bc0c:	91440021 	src	r10, r4
    bc10:	914a0021 	src	r10, r10
    bc14:	914a0021 	src	r10, r10
    bc18:	914a0021 	src	r10, r10
    bc1c:	b000e000 	imm	-8192
    bc20:	a54a0000 	andi	r10, r10, 0
    bc24:	10602000 	addk	r3, r0, r4
    bc28:	90640041 	srl	r3, r4
    bc2c:	90630041 	srl	r3, r3
    bc30:	90630041 	srl	r3, r3
    bc34:	10830000 	addk	r4, r3, r0
    bc38:	30690030 	addik	r3, r9, 48
    bc3c:	11002800 	addk	r8, r0, r5
    bc40:	91050041 	srl	r8, r5
    bc44:	91080041 	srl	r8, r8
    bc48:	91080041 	srl	r8, r8
    bc4c:	3339ffff 	addik	r25, r25, -1
    bc50:	90630060 	sext8	r3, r3
    bc54:	80aa4000 	or	r5, r10, r8
    bc58:	81042800 	or	r8, r4, r5
    bc5c:	be28ffac 	bneid	r8, -84		// bc08
    bc60:	f0790000 	sbi	r3, r25, 0
    bc64:	f88104d0 	swi	r4, r1, 1232
    bc68:	f8a104d4 	swi	r5, r1, 1236
    bc6c:	a4980001 	andi	r4, r24, 1
    bc70:	112b0000 	addk	r9, r11, r0
    bc74:	be04001c 	beqid	r4, 28		// bc90
    bc78:	10b90000 	addk	r5, r25, r0
    bc7c:	a8630030 	xori	r3, r3, 48
    bc80:	be03f3d8 	beqid	r3, -3112		// b058
    bc84:	30c00030 	addik	r6, r0, 48
    bc88:	3339ffff 	addik	r25, r25, -1
    bc8c:	f0c5ffff 	sbi	r6, r5, -1
    bc90:	1579d000 	rsubk	r11, r25, r26
    bc94:	b810f3cc 	brid	-3124		// b060
    bc98:	f96104c4 	swi	r11, r1, 1220
    bc9c:	fba104c4 	swi	r29, r1, 1220
    bca0:	b810f3c0 	brid	-3136		// b060
    bca4:	133a0000 	addk	r25, r26, r0
    bca8:	10b70000 	addk	r5, r23, r0
    bcac:	b9f4890c 	brlid	r15, -30452	// 45b8 <__swsetup_r>
    bcb0:	10d30000 	addk	r6, r19, r0
    bcb4:	be23fe08 	bneid	r3, -504		// babc
    bcb8:	3160ffff 	addik	r11, r0, -1
    bcbc:	e473000c 	lhui	r3, r19, 12
    bcc0:	90630061 	sext16	r3, r3
    bcc4:	a483001a 	andi	r4, r3, 26
    bcc8:	a884000a 	xori	r4, r4, 10
    bccc:	be24f114 	bneid	r4, -3820		// ade0
    bcd0:	11600000 	addk	r11, r0, r0
    bcd4:	e533000e 	lhui	r9, r19, 14
    bcd8:	90a90061 	sext16	r5, r9
    bcdc:	be45f104 	bltid	r5, -3836		// ade0
    bce0:	11600000 	addk	r11, r0, r0
    bce4:	eb330064 	lwi	r25, r19, 100
    bce8:	eb130020 	lwi	r24, r19, 32
    bcec:	e9930028 	lwi	r12, r19, 40
    bcf0:	10b70000 	addk	r5, r23, r0
    bcf4:	10f60000 	addk	r7, r22, r0
    bcf8:	e901052c 	lwi	r8, r1, 1324
    bcfc:	3161001c 	addik	r11, r1, 28
    bd00:	31400400 	addik	r10, r0, 1024
    bd04:	a463fffd 	andi	r3, r3, -3
    bd08:	30c1041c 	addik	r6, r1, 1052
    bd0c:	f4610428 	shi	r3, r1, 1064
    bd10:	fb210480 	swi	r25, r1, 1152
    bd14:	f521042a 	shi	r9, r1, 1066
    bd18:	fb01043c 	swi	r24, r1, 1084
    bd1c:	f9810444 	swi	r12, r1, 1092
    bd20:	f961041c 	swi	r11, r1, 1052
    bd24:	f961042c 	swi	r11, r1, 1068
    bd28:	f9410424 	swi	r10, r1, 1060
    bd2c:	f9410430 	swi	r10, r1, 1072
    bd30:	b9f4efe0 	brlid	r15, -4128	// ad10 <_vfiprintf_r>
    bd34:	f8810434 	swi	r4, r1, 1076
    bd38:	be43001c 	bltid	r3, 28		// bd54
    bd3c:	f86104c8 	swi	r3, r1, 1224
    bd40:	10b70000 	addk	r5, r23, r0
    bd44:	b9f4afc4 	brlid	r15, -20540	// 6d08 <_fflush_r>
    bd48:	30c1041c 	addik	r6, r1, 1052
    bd4c:	be230588 	bneid	r3, 1416		// c2d4
    bd50:	3160ffff 	addik	r11, r0, -1
    bd54:	e4610428 	lhui	r3, r1, 1064
    bd58:	a4630040 	andi	r3, r3, 64
    bd5c:	90630061 	sext16	r3, r3
    bd60:	be03fd64 	beqid	r3, -668		// bac4
    bd64:	e86104c8 	lwi	r3, r1, 1224
    bd68:	e473000c 	lhui	r3, r19, 12
    bd6c:	a0630040 	ori	r3, r3, 64
    bd70:	b810fd50 	brid	-688		// bac0
    bd74:	f473000c 	shi	r3, r19, 12
    bd78:	10b70000 	addk	r5, r23, r0
    bd7c:	10d30000 	addk	r6, r19, r0
    bd80:	b9f4ee8c 	brlid	r15, -4468	// ac0c <__sprint_r>
    bd84:	10fa0000 	addk	r7, r26, r0
    bd88:	be23fd1c 	bneid	r3, -740		// baa4
    bd8c:	113c0000 	addk	r9, r28, r0
    bd90:	b810f108 	brid	-3832		// ae98
    bd94:	e96104c8 	lwi	r11, r1, 1224
    bd98:	10b70000 	addk	r5, r23, r0
    bd9c:	10d30000 	addk	r6, r19, r0
    bda0:	b9f4ee6c 	brlid	r15, -4500	// ac0c <__sprint_r>
    bda4:	10fa0000 	addk	r7, r26, r0
    bda8:	be23fcfc 	bneid	r3, -772		// baa4
    bdac:	113c0000 	addk	r9, r28, r0
    bdb0:	e8a104b4 	lwi	r5, r1, 1204
    bdb4:	b810fb94 	brid	-1132		// b948
    bdb8:	e86104b0 	lwi	r3, r1, 1200
    bdbc:	b810fc88 	brid	-888		// ba44
    bdc0:	136b0000 	addk	r27, r11, r0
    bdc4:	10b70000 	addk	r5, r23, r0
    bdc8:	10d30000 	addk	r6, r19, r0
    bdcc:	b9f4ee40 	brlid	r15, -4544	// ac0c <__sprint_r>
    bdd0:	10fa0000 	addk	r7, r26, r0
    bdd4:	be23fcd0 	bneid	r3, -816		// baa4
    bdd8:	113c0000 	addk	r9, r28, r0
    bddc:	e8a104b4 	lwi	r5, r1, 1204
    bde0:	b810faa4 	brid	-1372		// b884
    bde4:	e86104b0 	lwi	r3, r1, 1200
    bde8:	10b70000 	addk	r5, r23, r0
    bdec:	10d30000 	addk	r6, r19, r0
    bdf0:	b9f4ee1c 	brlid	r15, -4580	// ac0c <__sprint_r>
    bdf4:	10fa0000 	addk	r7, r26, r0
    bdf8:	be23fcac 	bneid	r3, -852		// baa4
    bdfc:	113c0000 	addk	r9, r28, r0
    be00:	e8a104b4 	lwi	r5, r1, 1204
    be04:	b810fa44 	brid	-1468		// b848
    be08:	e86104b0 	lwi	r3, r1, 1200
    be0c:	b9f4b174 	brlid	r15, -20108	// 6f80 <__sinit>
    be10:	80000000 	or	r0, r0, r0
    be14:	b0000001 	imm	1
    be18:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    be1c:	88731800 	xor	r3, r19, r3
    be20:	bc23ef50 	bnei	r3, -4272		// ad70
    be24:	b810ef6c 	brid	-4244		// ad90
    be28:	ea770004 	lwi	r19, r23, 4
    be2c:	11890000 	addk	r12, r9, r0
    be30:	e96104e4 	lwi	r11, r1, 1252
    be34:	e88104d0 	lwi	r4, r1, 1232
    be38:	e8a104d4 	lwi	r5, r1, 1236
    be3c:	30c00000 	addik	r6, r0, 0
    be40:	30e0000f 	addik	r7, r0, 15
    be44:	85253800 	and	r9, r5, r7
    be48:	10602000 	addk	r3, r0, r4
    be4c:	90640041 	srl	r3, r4
    be50:	90630041 	srl	r3, r3
    be54:	90630041 	srl	r3, r3
    be58:	90630041 	srl	r3, r3
    be5c:	91440021 	src	r10, r4
    be60:	914a0021 	src	r10, r10
    be64:	914a0021 	src	r10, r10
    be68:	914a0021 	src	r10, r10
    be6c:	914a0021 	src	r10, r10
    be70:	b000f000 	imm	-4096
    be74:	a54a0000 	andi	r10, r10, 0
    be78:	10830000 	addk	r4, r3, r0
    be7c:	106b4800 	addk	r3, r11, r9
    be80:	e0630000 	lbui	r3, r3, 0
    be84:	11002800 	addk	r8, r0, r5
    be88:	91050041 	srl	r8, r5
    be8c:	91080041 	srl	r8, r8
    be90:	91080041 	srl	r8, r8
    be94:	91080041 	srl	r8, r8
    be98:	3339ffff 	addik	r25, r25, -1
    be9c:	80aa4000 	or	r5, r10, r8
    bea0:	f0790000 	sbi	r3, r25, 0
    bea4:	80642800 	or	r3, r4, r5
    bea8:	be23ff9c 	bneid	r3, -100		// be44
    beac:	112c0000 	addk	r9, r12, r0
    beb0:	1579d000 	rsubk	r11, r25, r26
    beb4:	f88104d0 	swi	r4, r1, 1232
    beb8:	f8a104d4 	swi	r5, r1, 1236
    bebc:	b810f1a4 	brid	-3676		// b060
    bec0:	f96104c4 	swi	r11, r1, 1220
    bec4:	f86104c4 	swi	r3, r1, 1220
    bec8:	b810f198 	brid	-3688		// b060
    becc:	133a0000 	addk	r25, r26, r0
    bed0:	be25021c 	bneid	r5, 540		// c0ec
    bed4:	30600001 	addik	r3, r0, 1
    bed8:	a4980040 	andi	r4, r24, 64
    bedc:	be0402c0 	beqid	r4, 704		// c19c
    bee0:	e961052c 	lwi	r11, r1, 1324
    bee4:	e56b0002 	lhui	r11, r11, 2
    bee8:	30600001 	addik	r3, r0, 1
    beec:	f8a104d0 	swi	r5, r1, 1232
    bef0:	f96104d4 	swi	r11, r1, 1236
    bef4:	e961052c 	lwi	r11, r1, 1324
    bef8:	316b0004 	addik	r11, r11, 4
    befc:	b8100120 	brid	288		// c01c
    bf00:	f961052c 	swi	r11, r1, 1324
    bf04:	a4b80010 	andi	r5, r24, 16
    bf08:	bc0500ec 	beqi	r5, 236		// bff4
    bf0c:	e961052c 	lwi	r11, r1, 1324
    bf10:	e96b0000 	lwi	r11, r11, 0
    bf14:	10640000 	addk	r3, r4, r0
    bf18:	f96104d4 	swi	r11, r1, 1236
    bf1c:	e961052c 	lwi	r11, r1, 1324
    bf20:	f88104d0 	swi	r4, r1, 1232
    bf24:	316b0004 	addik	r11, r11, 4
    bf28:	b81000f4 	brid	244		// c01c
    bf2c:	f961052c 	swi	r11, r1, 1324
    bf30:	e0760000 	lbui	r3, r22, 0
    bf34:	f881052c 	swi	r4, r1, 1324
    bf38:	b810ef9c 	brid	-4196		// aed4
    bf3c:	90630060 	sext8	r3, r3
    bf40:	10b70000 	addk	r5, r23, r0
    bf44:	10d30000 	addk	r6, r19, r0
    bf48:	b9f4ecc4 	brlid	r15, -4924	// ac0c <__sprint_r>
    bf4c:	10fa0000 	addk	r7, r26, r0
    bf50:	be23fb54 	bneid	r3, -1196		// baa4
    bf54:	e8a104b4 	lwi	r5, r1, 1204
    bf58:	b810fae0 	brid	-1312		// ba38
    bf5c:	eb6104c0 	lwi	r27, r1, 1216
    bf60:	30a00009 	addik	r5, r0, 9
    bf64:	14642803 	cmpu	r3, r4, r5
    bf68:	be43f088 	bltid	r3, -3960		// aff0
    bf6c:	e96104e8 	lwi	r11, r1, 1256
    bf70:	30640030 	addik	r3, r4, 48
    bf74:	f06104ab 	sbi	r3, r1, 1195
    bf78:	f96104c4 	swi	r11, r1, 1220
    bf7c:	b810f0e4 	brid	-3868		// b060
    bf80:	332104ab 	addik	r25, r1, 1195
    bf84:	e8a1052c 	lwi	r5, r1, 1324
    bf88:	316b0004 	addik	r11, r11, 4
    bf8c:	e8a50000 	lwi	r5, r5, 0
    bf90:	00852800 	add	r4, r5, r5
    bf94:	08800000 	addc	r4, r0, r0
    bf98:	bc040008 	beqi	r4, 8		// bfa0
    bf9c:	2080ffff 	addi	r4, r0, -1
    bfa0:	f961052c 	swi	r11, r1, 1324
    bfa4:	f88104d0 	swi	r4, r1, 1232
    bfa8:	f8a104d4 	swi	r5, r1, 1236
    bfac:	b810f168 	brid	-3736		// b114
    bfb0:	10640000 	addk	r3, r4, r0
    bfb4:	f06104b9 	sbi	r3, r1, 1209
    bfb8:	f08104b8 	sbi	r4, r1, 1208
    bfbc:	a3180002 	ori	r24, r24, 2
    bfc0:	33a00001 	addik	r29, r0, 1
    bfc4:	b810eff4 	brid	-4108		// afb8
    bfc8:	30600002 	addik	r3, r0, 2
    bfcc:	a4980040 	andi	r4, r24, 64
    bfd0:	be04f408 	beqid	r4, -3064		// b3d8
    bfd4:	e961052c 	lwi	r11, r1, 1324
    bfd8:	e56b0002 	lhui	r11, r11, 2
    bfdc:	f8a104d0 	swi	r5, r1, 1232
    bfe0:	f96104d4 	swi	r11, r1, 1236
    bfe4:	e961052c 	lwi	r11, r1, 1324
    bfe8:	316b0004 	addik	r11, r11, 4
    bfec:	b810f320 	brid	-3296		// b30c
    bff0:	f961052c 	swi	r11, r1, 1324
    bff4:	a4980040 	andi	r4, r24, 64
    bff8:	be04ff18 	beqid	r4, -232		// bf10
    bffc:	e961052c 	lwi	r11, r1, 1324
    c000:	e56b0002 	lhui	r11, r11, 2
    c004:	10650000 	addk	r3, r5, r0
    c008:	f8a104d0 	swi	r5, r1, 1232
    c00c:	f96104d4 	swi	r11, r1, 1236
    c010:	e961052c 	lwi	r11, r1, 1324
    c014:	316b0004 	addik	r11, r11, 4
    c018:	f961052c 	swi	r11, r1, 1324
    c01c:	e8a104d4 	lwi	r5, r1, 1236
    c020:	14850000 	rsubk	r4, r5, r0
    c024:	80842800 	or	r4, r4, r5
    c028:	13a02000 	addk	r29, r0, r4
    c02c:	93a40041 	srl	r29, r4
    c030:	93bd0041 	srl	r29, r29
    c034:	93bd0041 	srl	r29, r29
    c038:	93bd0041 	srl	r29, r29
    c03c:	93bd0041 	srl	r29, r29
    c040:	93bd0041 	srl	r29, r29
    c044:	93bd0041 	srl	r29, r29
    c048:	93bd0041 	srl	r29, r29
    c04c:	93bd0041 	srl	r29, r29
    c050:	93bd0041 	srl	r29, r29
    c054:	93bd0041 	srl	r29, r29
    c058:	93bd0041 	srl	r29, r29
    c05c:	93bd0041 	srl	r29, r29
    c060:	93bd0041 	srl	r29, r29
    c064:	93bd0041 	srl	r29, r29
    c068:	93bd0041 	srl	r29, r29
    c06c:	93bd0041 	srl	r29, r29
    c070:	93bd0041 	srl	r29, r29
    c074:	93bd0041 	srl	r29, r29
    c078:	93bd0041 	srl	r29, r29
    c07c:	93bd0041 	srl	r29, r29
    c080:	93bd0041 	srl	r29, r29
    c084:	93bd0041 	srl	r29, r29
    c088:	93bd0041 	srl	r29, r29
    c08c:	93bd0041 	srl	r29, r29
    c090:	93bd0041 	srl	r29, r29
    c094:	93bd0041 	srl	r29, r29
    c098:	93bd0041 	srl	r29, r29
    c09c:	93bd0041 	srl	r29, r29
    c0a0:	93bd0041 	srl	r29, r29
    c0a4:	93bd0041 	srl	r29, r29
    c0a8:	b810ef14 	brid	-4332		// afbc
    c0ac:	f00104ba 	sbi	r0, r1, 1210
    c0b0:	b810ee24 	brid	-4572		// aed4
    c0b4:	90630060 	sext8	r3, r3
    c0b8:	e961052c 	lwi	r11, r1, 1324
    c0bc:	e8a104c8 	lwi	r5, r1, 1224
    c0c0:	00852800 	add	r4, r5, r5
    c0c4:	08800000 	addc	r4, r0, r0
    c0c8:	bc040008 	beqi	r4, 8		// c0d0
    c0cc:	2080ffff 	addi	r4, r0, -1
    c0d0:	e86b0000 	lwi	r3, r11, 0
    c0d4:	316b0004 	addik	r11, r11, 4
    c0d8:	f961052c 	swi	r11, r1, 1324
    c0dc:	f8830000 	swi	r4, r3, 0
    c0e0:	f8a30004 	swi	r5, r3, 4
    c0e4:	b810ed30 	brid	-4816		// ae14
    c0e8:	e0760000 	lbui	r3, r22, 0
    c0ec:	e961052c 	lwi	r11, r1, 1324
    c0f0:	e96b0000 	lwi	r11, r11, 0
    c0f4:	b810fe28 	brid	-472		// bf1c
    c0f8:	f96104d4 	swi	r11, r1, 1236
    c0fc:	e0760001 	lbui	r3, r22, 1
    c100:	a3180020 	ori	r24, r24, 32
    c104:	32d60001 	addik	r22, r22, 1
    c108:	b810edcc 	brid	-4660		// aed4
    c10c:	90630060 	sext8	r3, r3
    c110:	e86b0000 	lwi	r3, r11, 0
    c114:	316b0004 	addik	r11, r11, 4
    c118:	f961052c 	swi	r11, r1, 1324
    c11c:	e96104c8 	lwi	r11, r1, 1224
    c120:	b810ecf0 	brid	-4880		// ae10
    c124:	f9630000 	swi	r11, r3, 0
    c128:	b810ec68 	brid	-5016		// ad90
    c12c:	ea770008 	lwi	r19, r23, 8
    c130:	b810ec60 	brid	-5024		// ad90
    c134:	ea77000c 	lwi	r19, r23, 12
    c138:	10b70000 	addk	r5, r23, r0
    c13c:	10d30000 	addk	r6, r19, r0
    c140:	b9f4eacc 	brlid	r15, -5428	// ac0c <__sprint_r>
    c144:	10fa0000 	addk	r7, r26, r0
    c148:	be23f95c 	bneid	r3, -1700		// baa4
    c14c:	113c0000 	addk	r9, r28, r0
    c150:	e8a104b4 	lwi	r5, r1, 1204
    c154:	b810f740 	brid	-2240		// b894
    c158:	e86104b0 	lwi	r3, r1, 1200
    c15c:	fbc1052c 	swi	r30, r1, 1324
    c160:	e3c104ba 	lbui	r30, r1, 1210
    c164:	f88104e0 	swi	r4, r1, 1248
    c168:	b810eefc 	brid	-4356		// b064
    c16c:	93de0060 	sext8	r30, r30
    c170:	316b0004 	addik	r11, r11, 4
    c174:	e8a50000 	lwi	r5, r5, 0
    c178:	00852800 	add	r4, r5, r5
    c17c:	08800000 	addc	r4, r0, r0
    c180:	bc040008 	beqi	r4, 8		// c188
    c184:	2080ffff 	addi	r4, r0, -1
    c188:	f961052c 	swi	r11, r1, 1324
    c18c:	f88104d0 	swi	r4, r1, 1232
    c190:	f8a104d4 	swi	r5, r1, 1236
    c194:	b810ef80 	brid	-4224		// b114
    c198:	10640000 	addk	r3, r4, r0
    c19c:	e96b0000 	lwi	r11, r11, 0
    c1a0:	30600001 	addik	r3, r0, 1
    c1a4:	b810fd78 	brid	-648		// bf1c
    c1a8:	f96104d4 	swi	r11, r1, 1236
    c1ac:	11600000 	addk	r11, r0, r0
    c1b0:	fbc1052c 	swi	r30, r1, 1324
    c1b4:	f92104ec 	swi	r9, r1, 1260
    c1b8:	b9f4e9f4 	brlid	r15, -5644	// abac <strlen>
    c1bc:	f96104e0 	swi	r11, r1, 1248
    c1c0:	e3c104ba 	lbui	r30, r1, 1210
    c1c4:	f86104c4 	swi	r3, r1, 1220
    c1c8:	e92104ec 	lwi	r9, r1, 1260
    c1cc:	b810ee98 	brid	-4456		// b064
    c1d0:	93de0060 	sext8	r30, r30
    c1d4:	3360ffff 	addik	r27, r0, -1
    c1d8:	b810ed00 	brid	-4864		// aed8
    c1dc:	12c50000 	addk	r22, r5, r0
    c1e0:	30600006 	addik	r3, r0, 6
    c1e4:	149b1803 	cmpu	r4, r27, r3
    c1e8:	be4400e0 	bltid	r4, 224		// c2c8
    c1ec:	fb6104c4 	swi	r27, r1, 1220
    c1f0:	e88104c4 	lwi	r4, r1, 1220
    c1f4:	a864ffff 	xori	r3, r4, -1
    c1f8:	13601800 	addk	r27, r0, r3
    c1fc:	93630001 	sra	r27, r3
    c200:	937b0001 	sra	r27, r27
    c204:	937b0001 	sra	r27, r27
    c208:	937b0001 	sra	r27, r27
    c20c:	937b0001 	sra	r27, r27
    c210:	937b0001 	sra	r27, r27
    c214:	937b0001 	sra	r27, r27
    c218:	937b0001 	sra	r27, r27
    c21c:	937b0001 	sra	r27, r27
    c220:	937b0001 	sra	r27, r27
    c224:	937b0001 	sra	r27, r27
    c228:	937b0001 	sra	r27, r27
    c22c:	937b0001 	sra	r27, r27
    c230:	937b0001 	sra	r27, r27
    c234:	937b0001 	sra	r27, r27
    c238:	937b0001 	sra	r27, r27
    c23c:	937b0001 	sra	r27, r27
    c240:	937b0001 	sra	r27, r27
    c244:	937b0001 	sra	r27, r27
    c248:	937b0001 	sra	r27, r27
    c24c:	937b0001 	sra	r27, r27
    c250:	937b0001 	sra	r27, r27
    c254:	937b0001 	sra	r27, r27
    c258:	937b0001 	sra	r27, r27
    c25c:	937b0001 	sra	r27, r27
    c260:	937b0001 	sra	r27, r27
    c264:	937b0001 	sra	r27, r27
    c268:	937b0001 	sra	r27, r27
    c26c:	937b0001 	sra	r27, r27
    c270:	937b0001 	sra	r27, r27
    c274:	937b0001 	sra	r27, r27
    c278:	8764d800 	and	r27, r4, r27
    c27c:	fb6104c0 	swi	r27, r1, 1216
    c280:	b0000001 	imm	1
    c284:	33202de0 	addik	r25, r0, 11744
    c288:	b810ef60 	brid	-4256		// b1e8
    c28c:	fbc1052c 	swi	r30, r1, 1324
    c290:	b0000001 	imm	1
    c294:	33c02f4c 	addik	r30, r0, 12108	// 12f4c <blanks.3956>
    c298:	b810f010 	brid	-4080		// b2a8
    c29c:	e86104b0 	lwi	r3, r1, 1200
    c2a0:	b0000001 	imm	1
    c2a4:	33c02f4c 	addik	r30, r0, 12108	// 12f4c <blanks.3956>
    c2a8:	b810f768 	brid	-2200		// ba10
    c2ac:	e86104b0 	lwi	r3, r1, 1200
    c2b0:	fbc1052c 	swi	r30, r1, 1324
    c2b4:	e3c104ba 	lbui	r30, r1, 1210
    c2b8:	fb6104c4 	swi	r27, r1, 1220
    c2bc:	f86104e0 	swi	r3, r1, 1248
    c2c0:	b810eda4 	brid	-4700		// b064
    c2c4:	93de0060 	sext8	r30, r30
    c2c8:	f86104c4 	swi	r3, r1, 1220
    c2cc:	b810ffb4 	brid	-76		// c280
    c2d0:	f86104c0 	swi	r3, r1, 1216
    c2d4:	b810fa80 	brid	-1408		// bd54
    c2d8:	f96104c8 	swi	r11, r1, 1224
    c2dc:	e961052c 	lwi	r11, r1, 1324
    c2e0:	e0760001 	lbui	r3, r22, 1
    c2e4:	12c50000 	addk	r22, r5, r0
    c2e8:	eb6b0000 	lwi	r27, r11, 0
    c2ec:	308b0004 	addik	r4, r11, 4
    c2f0:	f881052c 	swi	r4, r1, 1324
    c2f4:	bebbebe0 	bgeid	r27, -5152		// aed4
    c2f8:	90630060 	sext8	r3, r3
    c2fc:	b810ebd8 	brid	-5160		// aed4
    c300:	3360ffff 	addik	r27, r0, -1

0000c304 <vfiprintf>:
    c304:	10850000 	addk	r4, r5, r0
    c308:	10660000 	addk	r3, r6, r0
    c30c:	11070000 	addk	r8, r7, r0
    c310:	b0000001 	imm	1
    c314:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    c318:	10c40000 	addk	r6, r4, r0
    c31c:	3021ffe4 	addik	r1, r1, -28
    c320:	f9e10000 	swi	r15, r1, 0
    c324:	b9f4e9ec 	brlid	r15, -5652	// ad10 <_vfiprintf_r>
    c328:	10e30000 	addk	r7, r3, r0
    c32c:	e9e10000 	lwi	r15, r1, 0
    c330:	b60f0008 	rtsd	r15, 8
    c334:	3021001c 	addik	r1, r1, 28

0000c338 <_write_r>:
    c338:	3021ffe0 	addik	r1, r1, -32
    c33c:	fa61001c 	swi	r19, r1, 28
    c340:	12650000 	addk	r19, r5, r0
    c344:	10a60000 	addk	r5, r6, r0
    c348:	10c70000 	addk	r6, r7, r0
    c34c:	f9e10000 	swi	r15, r1, 0
    c350:	b0000001 	imm	1
    c354:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    c358:	b000ffff 	imm	-1
    c35c:	b9f45140 	brlid	r15, 20800	// 149c <write>
    c360:	10e80000 	addk	r7, r8, r0
    c364:	a883ffff 	xori	r4, r3, -1
    c368:	be040014 	beqid	r4, 20		// c37c
    c36c:	e9e10000 	lwi	r15, r1, 0
    c370:	ea61001c 	lwi	r19, r1, 28
    c374:	b60f0008 	rtsd	r15, 8
    c378:	30210020 	addik	r1, r1, 32
    c37c:	b0000001 	imm	1
    c380:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    c384:	bc04ffec 	beqi	r4, -20		// c370
    c388:	f8930000 	swi	r4, r19, 0
    c38c:	e9e10000 	lwi	r15, r1, 0
    c390:	ea61001c 	lwi	r19, r1, 28
    c394:	b60f0008 	rtsd	r15, 8
    c398:	30210020 	addik	r1, r1, 32

0000c39c <_calloc_r>:
    c39c:	3021ffe0 	addik	r1, r1, -32
    c3a0:	fa61001c 	swi	r19, r1, 28
    c3a4:	12650000 	addk	r19, r5, r0
    c3a8:	f9e10000 	swi	r15, r1, 0
    c3ac:	b9f455ec 	brlid	r15, 21996	// 11998 <__mulsi3>
    c3b0:	10a70000 	addk	r5, r7, r0
    c3b4:	10b30000 	addk	r5, r19, r0
    c3b8:	b9f4b8a0 	brlid	r15, -18272	// 7c58 <_malloc_r>
    c3bc:	10c30000 	addk	r6, r3, r0
    c3c0:	be03003c 	beqid	r3, 60		// c3fc
    c3c4:	12630000 	addk	r19, r3, r0
    c3c8:	e8e3fffc 	lwi	r7, r3, -4
    c3cc:	30600024 	addik	r3, r0, 36
    c3d0:	a4e7fffc 	andi	r7, r7, -4
    c3d4:	30e7fffc 	addik	r7, r7, -4
    c3d8:	14671803 	cmpu	r3, r7, r3
    c3dc:	be43006c 	bltid	r3, 108		// c448
    c3e0:	30800013 	addik	r4, r0, 19
    c3e4:	14872003 	cmpu	r4, r7, r4
    c3e8:	be440028 	bltid	r4, 40		// c410
    c3ec:	10730000 	addk	r3, r19, r0
    c3f0:	f8030000 	swi	r0, r3, 0
    c3f4:	f8030004 	swi	r0, r3, 4
    c3f8:	f8030008 	swi	r0, r3, 8
    c3fc:	10730000 	addk	r3, r19, r0
    c400:	e9e10000 	lwi	r15, r1, 0
    c404:	ea61001c 	lwi	r19, r1, 28
    c408:	b60f0008 	rtsd	r15, 8
    c40c:	30210020 	addik	r1, r1, 32
    c410:	3060001b 	addik	r3, r0, 27
    c414:	f8130000 	swi	r0, r19, 0
    c418:	14671803 	cmpu	r3, r7, r3
    c41c:	bea30050 	bgeid	r3, 80		// c46c
    c420:	f8130004 	swi	r0, r19, 4
    c424:	f8130008 	swi	r0, r19, 8
    c428:	f813000c 	swi	r0, r19, 12
    c42c:	a8e70024 	xori	r7, r7, 36
    c430:	be27ffc0 	bneid	r7, -64		// c3f0
    c434:	30730010 	addik	r3, r19, 16
    c438:	f8f30010 	swi	r7, r19, 16
    c43c:	f8f30014 	swi	r7, r19, 20
    c440:	b810ffb0 	brid	-80		// c3f0
    c444:	30730018 	addik	r3, r19, 24
    c448:	10b30000 	addk	r5, r19, r0
    c44c:	b000ffff 	imm	-1
    c450:	b9f4518c 	brlid	r15, 20876	// 15dc <memset>
    c454:	10c00000 	addk	r6, r0, r0
    c458:	10730000 	addk	r3, r19, r0
    c45c:	e9e10000 	lwi	r15, r1, 0
    c460:	ea61001c 	lwi	r19, r1, 28
    c464:	b60f0008 	rtsd	r15, 8
    c468:	30210020 	addik	r1, r1, 32
    c46c:	b810ff84 	brid	-124		// c3f0
    c470:	30730008 	addik	r3, r19, 8

0000c474 <_close_r>:
    c474:	3021ffe0 	addik	r1, r1, -32
    c478:	fa61001c 	swi	r19, r1, 28
    c47c:	12650000 	addk	r19, r5, r0
    c480:	f9e10000 	swi	r15, r1, 0
    c484:	b0000001 	imm	1
    c488:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    c48c:	b000ffff 	imm	-1
    c490:	b9f45044 	brlid	r15, 20548	// 14d4 <close>
    c494:	10a60000 	addk	r5, r6, r0
    c498:	a883ffff 	xori	r4, r3, -1
    c49c:	be040014 	beqid	r4, 20		// c4b0
    c4a0:	e9e10000 	lwi	r15, r1, 0
    c4a4:	ea61001c 	lwi	r19, r1, 28
    c4a8:	b60f0008 	rtsd	r15, 8
    c4ac:	30210020 	addik	r1, r1, 32
    c4b0:	b0000001 	imm	1
    c4b4:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    c4b8:	bc04ffec 	beqi	r4, -20		// c4a4
    c4bc:	f8930000 	swi	r4, r19, 0
    c4c0:	e9e10000 	lwi	r15, r1, 0
    c4c4:	ea61001c 	lwi	r19, r1, 28
    c4c8:	b60f0008 	rtsd	r15, 8
    c4cc:	30210020 	addik	r1, r1, 32

0000c4d0 <_fclose_r>:
    c4d0:	3021ffd8 	addik	r1, r1, -40
    c4d4:	fa61001c 	swi	r19, r1, 28
    c4d8:	f9e10000 	swi	r15, r1, 0
    c4dc:	fac10020 	swi	r22, r1, 32
    c4e0:	fae10024 	swi	r23, r1, 36
    c4e4:	be060050 	beqid	r6, 80		// c534
    c4e8:	12660000 	addk	r19, r6, r0
    c4ec:	be050010 	beqid	r5, 16		// c4fc
    c4f0:	12c50000 	addk	r22, r5, r0
    c4f4:	e8650018 	lwi	r3, r5, 24
    c4f8:	bc0300f8 	beqi	r3, 248		// c5f0
    c4fc:	b0000001 	imm	1
    c500:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    c504:	88731800 	xor	r3, r19, r3
    c508:	bc030100 	beqi	r3, 256		// c608
    c50c:	b0000001 	imm	1
    c510:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    c514:	88731800 	xor	r3, r19, r3
    c518:	bc030100 	beqi	r3, 256		// c618
    c51c:	b0000001 	imm	1
    c520:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    c524:	88731800 	xor	r3, r19, r3
    c528:	bc030108 	beqi	r3, 264		// c630
    c52c:	e473000c 	lhui	r3, r19, 12
    c530:	bc230024 	bnei	r3, 36		// c554
    c534:	12e00000 	addk	r23, r0, r0
    c538:	10770000 	addk	r3, r23, r0
    c53c:	e9e10000 	lwi	r15, r1, 0
    c540:	ea61001c 	lwi	r19, r1, 28
    c544:	eac10020 	lwi	r22, r1, 32
    c548:	eae10024 	lwi	r23, r1, 36
    c54c:	b60f0008 	rtsd	r15, 8
    c550:	30210028 	addik	r1, r1, 40
    c554:	10b60000 	addk	r5, r22, r0
    c558:	b9f4a7b0 	brlid	r15, -22608	// 6d08 <_fflush_r>
    c55c:	10d30000 	addk	r6, r19, r0
    c560:	12e30000 	addk	r23, r3, r0
    c564:	e8730030 	lwi	r3, r19, 48
    c568:	be030014 	beqid	r3, 20		// c57c
    c56c:	10b60000 	addk	r5, r22, r0
    c570:	99fc1800 	brald	r15, r3
    c574:	e8d30020 	lwi	r6, r19, 32
    c578:	bc430098 	blti	r3, 152		// c610
    c57c:	e473000c 	lhui	r3, r19, 12
    c580:	a4630080 	andi	r3, r3, 128
    c584:	90630061 	sext16	r3, r3
    c588:	be230098 	bneid	r3, 152		// c620
    c58c:	10b60000 	addk	r5, r22, r0
    c590:	e8d30034 	lwi	r6, r19, 52
    c594:	be06001c 	beqid	r6, 28		// c5b0
    c598:	30730044 	addik	r3, r19, 68
    c59c:	88661800 	xor	r3, r6, r3
    c5a0:	bc03000c 	beqi	r3, 12		// c5ac
    c5a4:	b9f4ad60 	brlid	r15, -21152	// 7304 <_free_r>
    c5a8:	10b60000 	addk	r5, r22, r0
    c5ac:	f8130034 	swi	r0, r19, 52
    c5b0:	e8d30048 	lwi	r6, r19, 72
    c5b4:	bc060010 	beqi	r6, 16		// c5c4
    c5b8:	b9f4ad4c 	brlid	r15, -21172	// 7304 <_free_r>
    c5bc:	10b60000 	addk	r5, r22, r0
    c5c0:	f8130048 	swi	r0, r19, 72
    c5c4:	b9f4ab68 	brlid	r15, -21656	// 712c <__sfp_lock_acquire>
    c5c8:	80000000 	or	r0, r0, r0
    c5cc:	b9f4ab68 	brlid	r15, -21656	// 7134 <__sfp_lock_release>
    c5d0:	f413000c 	shi	r0, r19, 12
    c5d4:	10770000 	addk	r3, r23, r0
    c5d8:	e9e10000 	lwi	r15, r1, 0
    c5dc:	ea61001c 	lwi	r19, r1, 28
    c5e0:	eac10020 	lwi	r22, r1, 32
    c5e4:	eae10024 	lwi	r23, r1, 36
    c5e8:	b60f0008 	rtsd	r15, 8
    c5ec:	30210028 	addik	r1, r1, 40
    c5f0:	b9f4a990 	brlid	r15, -22128	// 6f80 <__sinit>
    c5f4:	80000000 	or	r0, r0, r0
    c5f8:	b0000001 	imm	1
    c5fc:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    c600:	88731800 	xor	r3, r19, r3
    c604:	bc23ff08 	bnei	r3, -248		// c50c
    c608:	b810ff24 	brid	-220		// c52c
    c60c:	ea760004 	lwi	r19, r22, 4
    c610:	b810ff6c 	brid	-148		// c57c
    c614:	32e0ffff 	addik	r23, r0, -1
    c618:	b810ff14 	brid	-236		// c52c
    c61c:	ea760008 	lwi	r19, r22, 8
    c620:	b9f4ace4 	brlid	r15, -21276	// 7304 <_free_r>
    c624:	e8d30010 	lwi	r6, r19, 16
    c628:	b810ff6c 	brid	-148		// c594
    c62c:	e8d30034 	lwi	r6, r19, 52
    c630:	b810fefc 	brid	-260		// c52c
    c634:	ea76000c 	lwi	r19, r22, 12

0000c638 <fclose>:
    c638:	10c50000 	addk	r6, r5, r0
    c63c:	b0000001 	imm	1
    c640:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    c644:	3021ffe4 	addik	r1, r1, -28
    c648:	f9e10000 	swi	r15, r1, 0
    c64c:	b9f4fe84 	brlid	r15, -380	// c4d0 <_fclose_r>
    c650:	80000000 	or	r0, r0, r0
    c654:	e9e10000 	lwi	r15, r1, 0
    c658:	b60f0008 	rtsd	r15, 8
    c65c:	3021001c 	addik	r1, r1, 28

0000c660 <_fputwc_r>:
    c660:	3021ffcc 	addik	r1, r1, -52
    c664:	fa610020 	swi	r19, r1, 32
    c668:	fae10028 	swi	r23, r1, 40
    c66c:	fb01002c 	swi	r24, r1, 44
    c670:	f9e10000 	swi	r15, r1, 0
    c674:	fac10024 	swi	r22, r1, 36
    c678:	fb210030 	swi	r25, r1, 48
    c67c:	e467000c 	lhui	r3, r7, 12
    c680:	12670000 	addk	r19, r7, r0
    c684:	13050000 	addk	r24, r5, r0
    c688:	90630061 	sext16	r3, r3
    c68c:	a4832000 	andi	r4, r3, 8192
    c690:	90840061 	sext16	r4, r4
    c694:	be24001c 	bneid	r4, 28		// c6b0
    c698:	12e60000 	addk	r23, r6, r0
    c69c:	e8870064 	lwi	r4, r7, 100
    c6a0:	a0632000 	ori	r3, r3, 8192
    c6a4:	f467000c 	shi	r3, r7, 12
    c6a8:	a0642000 	ori	r3, r4, 8192
    c6ac:	f8670064 	swi	r3, r7, 100
    c6b0:	b9f4b2a4 	brlid	r15, -19804	// 7954 <__locale_mb_cur_max>
    c6b4:	80000000 	or	r0, r0, r0
    c6b8:	a8630001 	xori	r3, r3, 1
    c6bc:	be030264 	beqid	r3, 612		// c920
    c6c0:	3077ffff 	addik	r3, r23, -1
    c6c4:	10b80000 	addk	r5, r24, r0
    c6c8:	10f70000 	addk	r7, r23, r0
    c6cc:	30c1001c 	addik	r6, r1, 28
    c6d0:	b9f416c4 	brlid	r15, 5828	// dd94 <_wcrtomb_r>
    c6d4:	3113005c 	addik	r8, r19, 92
    c6d8:	13230000 	addk	r25, r3, r0
    c6dc:	a863ffff 	xori	r3, r3, -1
    c6e0:	be030140 	beqid	r3, 320		// c820
    c6e4:	3060ffff 	addik	r3, r0, -1
    c6e8:	be190164 	beqid	r25, 356		// c84c
    c6ec:	10770000 	addk	r3, r23, r0
    c6f0:	b8100030 	brid	48		// c720
    c6f4:	12c00000 	addk	r22, r0, r0
    c6f8:	e8930000 	lwi	r4, r19, 0
    c6fc:	e108001c 	lbui	r8, r8, 28
    c700:	f1040000 	sbi	r8, r4, 0
    c704:	e8930000 	lwi	r4, r19, 0
    c708:	30840001 	addik	r4, r4, 1
    c70c:	f8930000 	swi	r4, r19, 0
    c710:	32d60001 	addik	r22, r22, 1
    c714:	1499b003 	cmpu	r4, r25, r22
    c718:	bea40134 	bgeid	r4, 308		// c84c
    c71c:	10770000 	addk	r3, r23, r0
    c720:	e8930008 	lwi	r4, r19, 8
    c724:	1101b000 	addk	r8, r1, r22
    c728:	3084ffff 	addik	r4, r4, -1
    c72c:	bea4ffcc 	bgeid	r4, -52		// c6f8
    c730:	f8930008 	swi	r4, r19, 8
    c734:	e8730018 	lwi	r3, r19, 24
    c738:	14832001 	cmp	r4, r3, r4
    c73c:	be440130 	bltid	r4, 304		// c86c
    c740:	1061b000 	addk	r3, r1, r22
    c744:	e8730000 	lwi	r3, r19, 0
    c748:	e0a8001c 	lbui	r5, r8, 28
    c74c:	f0a30000 	sbi	r5, r3, 0
    c750:	e8930000 	lwi	r4, r19, 0
    c754:	e0640000 	lbui	r3, r4, 0
    c758:	30c40001 	addik	r6, r4, 1
    c75c:	a883ffff 	xori	r4, r3, -1
    c760:	14a40000 	rsubk	r5, r4, r0
    c764:	80852000 	or	r4, r5, r4
    c768:	a863000a 	xori	r3, r3, 10
    c76c:	be0301d0 	beqid	r3, 464		// c93c
    c770:	a884ffff 	xori	r4, r4, -1
    c774:	10602000 	addk	r3, r0, r4
    c778:	90640041 	srl	r3, r4
    c77c:	90630041 	srl	r3, r3
    c780:	90630041 	srl	r3, r3
    c784:	90630041 	srl	r3, r3
    c788:	90630041 	srl	r3, r3
    c78c:	90630041 	srl	r3, r3
    c790:	90630041 	srl	r3, r3
    c794:	90630041 	srl	r3, r3
    c798:	90630041 	srl	r3, r3
    c79c:	90630041 	srl	r3, r3
    c7a0:	90630041 	srl	r3, r3
    c7a4:	90630041 	srl	r3, r3
    c7a8:	90630041 	srl	r3, r3
    c7ac:	90630041 	srl	r3, r3
    c7b0:	90630041 	srl	r3, r3
    c7b4:	90630041 	srl	r3, r3
    c7b8:	90630041 	srl	r3, r3
    c7bc:	90630041 	srl	r3, r3
    c7c0:	90630041 	srl	r3, r3
    c7c4:	90630041 	srl	r3, r3
    c7c8:	90630041 	srl	r3, r3
    c7cc:	90630041 	srl	r3, r3
    c7d0:	90630041 	srl	r3, r3
    c7d4:	90630041 	srl	r3, r3
    c7d8:	90630041 	srl	r3, r3
    c7dc:	90630041 	srl	r3, r3
    c7e0:	90630041 	srl	r3, r3
    c7e4:	90630041 	srl	r3, r3
    c7e8:	90630041 	srl	r3, r3
    c7ec:	90630041 	srl	r3, r3
    c7f0:	90630041 	srl	r3, r3
    c7f4:	be03ff1c 	beqid	r3, -228		// c710
    c7f8:	f8d30000 	swi	r6, r19, 0
    c7fc:	e9e10000 	lwi	r15, r1, 0
    c800:	ea610020 	lwi	r19, r1, 32
    c804:	eac10024 	lwi	r22, r1, 36
    c808:	eae10028 	lwi	r23, r1, 40
    c80c:	eb01002c 	lwi	r24, r1, 44
    c810:	eb210030 	lwi	r25, r1, 48
    c814:	3060ffff 	addik	r3, r0, -1
    c818:	b60f0008 	rtsd	r15, 8
    c81c:	30210034 	addik	r1, r1, 52
    c820:	e493000c 	lhui	r4, r19, 12
    c824:	a0840040 	ori	r4, r4, 64
    c828:	f493000c 	shi	r4, r19, 12
    c82c:	e9e10000 	lwi	r15, r1, 0
    c830:	ea610020 	lwi	r19, r1, 32
    c834:	eac10024 	lwi	r22, r1, 36
    c838:	eae10028 	lwi	r23, r1, 40
    c83c:	eb01002c 	lwi	r24, r1, 44
    c840:	eb210030 	lwi	r25, r1, 48
    c844:	b60f0008 	rtsd	r15, 8
    c848:	30210034 	addik	r1, r1, 52
    c84c:	e9e10000 	lwi	r15, r1, 0
    c850:	ea610020 	lwi	r19, r1, 32
    c854:	eac10024 	lwi	r22, r1, 36
    c858:	eae10028 	lwi	r23, r1, 40
    c85c:	eb01002c 	lwi	r24, r1, 44
    c860:	eb210030 	lwi	r25, r1, 48
    c864:	b60f0008 	rtsd	r15, 8
    c868:	30210034 	addik	r1, r1, 52
    c86c:	10b80000 	addk	r5, r24, r0
    c870:	e0c3001c 	lbui	r6, r3, 28
    c874:	10f30000 	addk	r7, r19, r0
    c878:	b9f41330 	brlid	r15, 4912	// dba8 <__swbuf_r>
    c87c:	80000000 	or	r0, r0, r0
    c880:	a863ffff 	xori	r3, r3, -1
    c884:	14830000 	rsubk	r4, r3, r0
    c888:	80641800 	or	r3, r4, r3
    c88c:	a883ffff 	xori	r4, r3, -1
    c890:	10602000 	addk	r3, r0, r4
    c894:	90640041 	srl	r3, r4
    c898:	90630041 	srl	r3, r3
    c89c:	90630041 	srl	r3, r3
    c8a0:	90630041 	srl	r3, r3
    c8a4:	90630041 	srl	r3, r3
    c8a8:	90630041 	srl	r3, r3
    c8ac:	90630041 	srl	r3, r3
    c8b0:	90630041 	srl	r3, r3
    c8b4:	90630041 	srl	r3, r3
    c8b8:	90630041 	srl	r3, r3
    c8bc:	90630041 	srl	r3, r3
    c8c0:	90630041 	srl	r3, r3
    c8c4:	90630041 	srl	r3, r3
    c8c8:	90630041 	srl	r3, r3
    c8cc:	90630041 	srl	r3, r3
    c8d0:	90630041 	srl	r3, r3
    c8d4:	90630041 	srl	r3, r3
    c8d8:	90630041 	srl	r3, r3
    c8dc:	90630041 	srl	r3, r3
    c8e0:	90630041 	srl	r3, r3
    c8e4:	90630041 	srl	r3, r3
    c8e8:	90630041 	srl	r3, r3
    c8ec:	90630041 	srl	r3, r3
    c8f0:	90630041 	srl	r3, r3
    c8f4:	90630041 	srl	r3, r3
    c8f8:	90630041 	srl	r3, r3
    c8fc:	90630041 	srl	r3, r3
    c900:	90630041 	srl	r3, r3
    c904:	90630041 	srl	r3, r3
    c908:	90630041 	srl	r3, r3
    c90c:	90630041 	srl	r3, r3
    c910:	be03fe04 	beqid	r3, -508		// c714
    c914:	32d60001 	addik	r22, r22, 1
    c918:	b810fee8 	brid	-280		// c800
    c91c:	e9e10000 	lwi	r15, r1, 0
    c920:	308000fe 	addik	r4, r0, 254
    c924:	14632003 	cmpu	r3, r3, r4
    c928:	be43fda0 	bltid	r3, -608		// c6c8
    c92c:	10b80000 	addk	r5, r24, r0
    c930:	f2e1001c 	sbi	r23, r1, 28
    c934:	b810fdbc 	brid	-580		// c6f0
    c938:	33200001 	addik	r25, r0, 1
    c93c:	10b80000 	addk	r5, r24, r0
    c940:	10f30000 	addk	r7, r19, r0
    c944:	b810ff34 	brid	-204		// c878
    c948:	30c0000a 	addik	r6, r0, 10

0000c94c <fputwc>:
    c94c:	b0000001 	imm	1
    c950:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    c954:	3021ffdc 	addik	r1, r1, -36
    c958:	fa610020 	swi	r19, r1, 32
    c95c:	f9e10000 	swi	r15, r1, 0
    c960:	12650000 	addk	r19, r5, r0
    c964:	be030014 	beqid	r3, 20		// c978
    c968:	10e60000 	addk	r7, r6, r0
    c96c:	e8830018 	lwi	r4, r3, 24
    c970:	be040058 	beqid	r4, 88		// c9c8
    c974:	10a30000 	addk	r5, r3, r0
    c978:	b0000001 	imm	1
    c97c:	30802c60 	addik	r4, r0, 11360	// 12c60 <__sf_fake_stdin>
    c980:	88872000 	xor	r4, r7, r4
    c984:	bc040068 	beqi	r4, 104		// c9ec
    c988:	b0000001 	imm	1
    c98c:	30802c40 	addik	r4, r0, 11328	// 12c40 <__sf_fake_stdout>
    c990:	88872000 	xor	r4, r7, r4
    c994:	bc040094 	beqi	r4, 148		// ca28
    c998:	b0000001 	imm	1
    c99c:	30802c20 	addik	r4, r0, 11296	// 12c20 <__sf_fake_stderr>
    c9a0:	88872000 	xor	r4, r7, r4
    c9a4:	be040068 	beqid	r4, 104		// ca0c
    c9a8:	10d30000 	addk	r6, r19, r0
    c9ac:	10d30000 	addk	r6, r19, r0
    c9b0:	b9f4fcb0 	brlid	r15, -848	// c660 <_fputwc_r>
    c9b4:	10a30000 	addk	r5, r3, r0
    c9b8:	e9e10000 	lwi	r15, r1, 0
    c9bc:	ea610020 	lwi	r19, r1, 32
    c9c0:	b60f0008 	rtsd	r15, 8
    c9c4:	30210024 	addik	r1, r1, 36
    c9c8:	b9f4a5b8 	brlid	r15, -23112	// 6f80 <__sinit>
    c9cc:	f8c1001c 	swi	r6, r1, 28
    c9d0:	e8e1001c 	lwi	r7, r1, 28
    c9d4:	b0000001 	imm	1
    c9d8:	30802c60 	addik	r4, r0, 11360	// 12c60 <__sf_fake_stdin>
    c9dc:	b0000001 	imm	1
    c9e0:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    c9e4:	88872000 	xor	r4, r7, r4
    c9e8:	bc24ffa0 	bnei	r4, -96		// c988
    c9ec:	10d30000 	addk	r6, r19, r0
    c9f0:	e8e30004 	lwi	r7, r3, 4
    c9f4:	b9f4fc6c 	brlid	r15, -916	// c660 <_fputwc_r>
    c9f8:	10a30000 	addk	r5, r3, r0
    c9fc:	e9e10000 	lwi	r15, r1, 0
    ca00:	ea610020 	lwi	r19, r1, 32
    ca04:	b60f0008 	rtsd	r15, 8
    ca08:	30210024 	addik	r1, r1, 36
    ca0c:	e8e3000c 	lwi	r7, r3, 12
    ca10:	b9f4fc50 	brlid	r15, -944	// c660 <_fputwc_r>
    ca14:	10a30000 	addk	r5, r3, r0
    ca18:	e9e10000 	lwi	r15, r1, 0
    ca1c:	ea610020 	lwi	r19, r1, 32
    ca20:	b60f0008 	rtsd	r15, 8
    ca24:	30210024 	addik	r1, r1, 36
    ca28:	b810ff84 	brid	-124		// c9ac
    ca2c:	e8e30008 	lwi	r7, r3, 8

0000ca30 <_fstat_r>:
    ca30:	3021ffe0 	addik	r1, r1, -32
    ca34:	fa61001c 	swi	r19, r1, 28
    ca38:	12650000 	addk	r19, r5, r0
    ca3c:	10a60000 	addk	r5, r6, r0
    ca40:	f9e10000 	swi	r15, r1, 0
    ca44:	b0000001 	imm	1
    ca48:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    ca4c:	b000ffff 	imm	-1
    ca50:	b9f44aa0 	brlid	r15, 19104	// 14f0 <fstat>
    ca54:	10c70000 	addk	r6, r7, r0
    ca58:	a883ffff 	xori	r4, r3, -1
    ca5c:	be040014 	beqid	r4, 20		// ca70
    ca60:	e9e10000 	lwi	r15, r1, 0
    ca64:	ea61001c 	lwi	r19, r1, 28
    ca68:	b60f0008 	rtsd	r15, 8
    ca6c:	30210020 	addik	r1, r1, 32
    ca70:	b0000001 	imm	1
    ca74:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    ca78:	bc04ffec 	beqi	r4, -20		// ca64
    ca7c:	f8930000 	swi	r4, r19, 0
    ca80:	e9e10000 	lwi	r15, r1, 0
    ca84:	ea61001c 	lwi	r19, r1, 28
    ca88:	b60f0008 	rtsd	r15, 8
    ca8c:	30210020 	addik	r1, r1, 32

0000ca90 <__sfvwrite_r>:
    ca90:	3021ffbc 	addik	r1, r1, -68
    ca94:	fb21002c 	swi	r25, r1, 44
    ca98:	f9e10000 	swi	r15, r1, 0
    ca9c:	fa61001c 	swi	r19, r1, 28
    caa0:	fac10020 	swi	r22, r1, 32
    caa4:	fae10024 	swi	r23, r1, 36
    caa8:	fb010028 	swi	r24, r1, 40
    caac:	fb410030 	swi	r26, r1, 48
    cab0:	fb610034 	swi	r27, r1, 52
    cab4:	fb810038 	swi	r28, r1, 56
    cab8:	fba1003c 	swi	r29, r1, 60
    cabc:	fbc10040 	swi	r30, r1, 64
    cac0:	e8670008 	lwi	r3, r7, 8
    cac4:	be03008c 	beqid	r3, 140		// cb50
    cac8:	13270000 	addk	r25, r7, r0
    cacc:	e466000c 	lhui	r3, r6, 12
    cad0:	13650000 	addk	r27, r5, r0
    cad4:	90630061 	sext16	r3, r3
    cad8:	a4830008 	andi	r4, r3, 8
    cadc:	90840061 	sext16	r4, r4
    cae0:	be0400a8 	beqid	r4, 168		// cb88
    cae4:	12660000 	addk	r19, r6, r0
    cae8:	e8860010 	lwi	r4, r6, 16
    caec:	be04009c 	beqid	r4, 156		// cb88
    caf0:	a4830002 	andi	r4, r3, 2
    caf4:	90840061 	sext16	r4, r4
    caf8:	be0400c0 	beqid	r4, 192		// cbb8
    cafc:	ead90000 	lwi	r22, r25, 0
    cb00:	13000000 	addk	r24, r0, r0
    cb04:	12f80000 	addk	r23, r24, r0
    cb08:	33400400 	addik	r26, r0, 1024
    cb0c:	10f80000 	addk	r7, r24, r0
    cb10:	10bb0000 	addk	r5, r27, r0
    cb14:	be170144 	beqid	r23, 324		// cc58
    cb18:	1477d003 	cmpu	r3, r23, r26
    cb1c:	11170000 	addk	r8, r23, r0
    cb20:	be430148 	bltid	r3, 328		// cc68
    cb24:	e8d30020 	lwi	r6, r19, 32
    cb28:	e8730028 	lwi	r3, r19, 40
    cb2c:	99fc1800 	brald	r15, r3
    cb30:	80000000 	or	r0, r0, r0
    cb34:	bc630144 	blei	r3, 324		// cc78
    cb38:	e8990008 	lwi	r4, r25, 8
    cb3c:	13181800 	addk	r24, r24, r3
    cb40:	16e3b800 	rsubk	r23, r3, r23
    cb44:	14632000 	rsubk	r3, r3, r4
    cb48:	be23ffc4 	bneid	r3, -60		// cb0c
    cb4c:	f8790008 	swi	r3, r25, 8
    cb50:	10600000 	addk	r3, r0, r0
    cb54:	e9e10000 	lwi	r15, r1, 0
    cb58:	ea61001c 	lwi	r19, r1, 28
    cb5c:	eac10020 	lwi	r22, r1, 32
    cb60:	eae10024 	lwi	r23, r1, 36
    cb64:	eb010028 	lwi	r24, r1, 40
    cb68:	eb21002c 	lwi	r25, r1, 44
    cb6c:	eb410030 	lwi	r26, r1, 48
    cb70:	eb610034 	lwi	r27, r1, 52
    cb74:	eb810038 	lwi	r28, r1, 56
    cb78:	eba1003c 	lwi	r29, r1, 60
    cb7c:	ebc10040 	lwi	r30, r1, 64
    cb80:	b60f0008 	rtsd	r15, 8
    cb84:	30210044 	addik	r1, r1, 68
    cb88:	10bb0000 	addk	r5, r27, r0
    cb8c:	b000ffff 	imm	-1
    cb90:	b9f47a28 	brlid	r15, 31272	// 45b8 <__swsetup_r>
    cb94:	10d30000 	addk	r6, r19, r0
    cb98:	be23ffbc 	bneid	r3, -68		// cb54
    cb9c:	3060ffff 	addik	r3, r0, -1
    cba0:	e473000c 	lhui	r3, r19, 12
    cba4:	90630061 	sext16	r3, r3
    cba8:	a4830002 	andi	r4, r3, 2
    cbac:	90840061 	sext16	r4, r4
    cbb0:	be24ff50 	bneid	r4, -176		// cb00
    cbb4:	ead90000 	lwi	r22, r25, 0
    cbb8:	a7430001 	andi	r26, r3, 1
    cbbc:	be3a00d0 	bneid	r26, 208		// cc8c
    cbc0:	13c40000 	addk	r30, r4, r0
    cbc4:	12fa0000 	addk	r23, r26, r0
    cbc8:	bc170080 	beqi	r23, 128		// cc48
    cbcc:	a4830200 	andi	r4, r3, 512
    cbd0:	90840061 	sext16	r4, r4
    cbd4:	be040168 	beqid	r4, 360		// cd3c
    cbd8:	eb130008 	lwi	r24, r19, 8
    cbdc:	1498b803 	cmpu	r4, r24, r23
    cbe0:	be4401f4 	bltid	r4, 500		// cdd4
    cbe4:	13b80000 	addk	r29, r24, r0
    cbe8:	a4830480 	andi	r4, r3, 1152
    cbec:	be240260 	bneid	r4, 608		// ce4c
    cbf0:	13d80000 	addk	r30, r24, r0
    cbf4:	e8b30000 	lwi	r5, r19, 0
    cbf8:	13970000 	addk	r28, r23, r0
    cbfc:	13170000 	addk	r24, r23, r0
    cc00:	10fd0000 	addk	r7, r29, r0
    cc04:	b9f404c0 	brlid	r15, 1216	// d0c4 <memmove>
    cc08:	10da0000 	addk	r6, r26, r0
    cc0c:	e8730008 	lwi	r3, r19, 8
    cc10:	e8930000 	lwi	r4, r19, 0
    cc14:	147e1800 	rsubk	r3, r30, r3
    cc18:	13a4e800 	addk	r29, r4, r29
    cc1c:	f8730008 	swi	r3, r19, 8
    cc20:	fbb30000 	swi	r29, r19, 0
    cc24:	e8790008 	lwi	r3, r25, 8
    cc28:	135ae000 	addk	r26, r26, r28
    cc2c:	16fcb800 	rsubk	r23, r28, r23
    cc30:	17181800 	rsubk	r24, r24, r3
    cc34:	be18ff1c 	beqid	r24, -228		// cb50
    cc38:	fb190008 	swi	r24, r25, 8
    cc3c:	e473000c 	lhui	r3, r19, 12
    cc40:	be37ff8c 	bneid	r23, -116		// cbcc
    cc44:	90630061 	sext16	r3, r3
    cc48:	eb560000 	lwi	r26, r22, 0
    cc4c:	eaf60004 	lwi	r23, r22, 4
    cc50:	b810ff78 	brid	-136		// cbc8
    cc54:	32d60008 	addik	r22, r22, 8
    cc58:	eb160000 	lwi	r24, r22, 0
    cc5c:	eaf60004 	lwi	r23, r22, 4
    cc60:	b810feac 	brid	-340		// cb0c
    cc64:	32d60008 	addik	r22, r22, 8
    cc68:	e8730028 	lwi	r3, r19, 40
    cc6c:	99fc1800 	brald	r15, r3
    cc70:	31000400 	addik	r8, r0, 1024
    cc74:	bc83fec4 	bgti	r3, -316		// cb38
    cc78:	e493000c 	lhui	r4, r19, 12
    cc7c:	3060ffff 	addik	r3, r0, -1
    cc80:	a0840040 	ori	r4, r4, 64
    cc84:	b810fed0 	brid	-304		// cb54
    cc88:	f493000c 	shi	r4, r19, 12
    cc8c:	13440000 	addk	r26, r4, r0
    cc90:	13840000 	addk	r28, r4, r0
    cc94:	12e40000 	addk	r23, r4, r0
    cc98:	bc170090 	beqi	r23, 144		// cd28
    cc9c:	be1e017c 	beqid	r30, 380		// ce18
    cca0:	10bc0000 	addk	r5, r28, r0
    cca4:	147ab803 	cmpu	r3, r26, r23
    cca8:	be43019c 	bltid	r3, 412		// ce44
    ccac:	13ba0000 	addk	r29, r26, r0
    ccb0:	e8b30000 	lwi	r5, r19, 0
    ccb4:	e8730010 	lwi	r3, r19, 16
    ccb8:	eb130008 	lwi	r24, r19, 8
    ccbc:	14651803 	cmpu	r3, r5, r3
    ccc0:	bea30018 	bgeid	r3, 24		// ccd8
    ccc4:	e9130014 	lwi	r8, r19, 20
    ccc8:	13184000 	addk	r24, r24, r8
    cccc:	147dc001 	cmp	r3, r29, r24
    ccd0:	be4302a4 	bltid	r3, 676		// cf74
    ccd4:	10dc0000 	addk	r6, r28, r0
    ccd8:	1468e801 	cmp	r3, r8, r29
    ccdc:	be4300b0 	bltid	r3, 176		// cd8c
    cce0:	10fd0000 	addk	r7, r29, r0
    cce4:	e8730028 	lwi	r3, r19, 40
    cce8:	10bb0000 	addk	r5, r27, r0
    ccec:	e8d30020 	lwi	r6, r19, 32
    ccf0:	99fc1800 	brald	r15, r3
    ccf4:	10fc0000 	addk	r7, r28, r0
    ccf8:	be63ff80 	bleid	r3, -128		// cc78
    ccfc:	13030000 	addk	r24, r3, r0
    cd00:	1758d000 	rsubk	r26, r24, r26
    cd04:	be1a00b8 	beqid	r26, 184		// cdbc
    cd08:	10bb0000 	addk	r5, r27, r0
    cd0c:	e8790008 	lwi	r3, r25, 8
    cd10:	139cc000 	addk	r28, r28, r24
    cd14:	16f8b800 	rsubk	r23, r24, r23
    cd18:	17181800 	rsubk	r24, r24, r3
    cd1c:	be18fe34 	beqid	r24, -460		// cb50
    cd20:	fb190008 	swi	r24, r25, 8
    cd24:	bc37ff78 	bnei	r23, -136		// cc9c
    cd28:	eb960000 	lwi	r28, r22, 0
    cd2c:	eaf60004 	lwi	r23, r22, 4
    cd30:	13c00000 	addk	r30, r0, r0
    cd34:	b810ff64 	brid	-156		// cc98
    cd38:	32d60008 	addik	r22, r22, 8
    cd3c:	e8b30000 	lwi	r5, r19, 0
    cd40:	e8730010 	lwi	r3, r19, 16
    cd44:	14651803 	cmpu	r3, r5, r3
    cd48:	bea30010 	bgeid	r3, 16		// cd58
    cd4c:	1477c003 	cmpu	r3, r23, r24
    cd50:	be430254 	bltid	r3, 596		// cfa4
    cd54:	13980000 	addk	r28, r24, r0
    cd58:	e9130014 	lwi	r8, r19, 20
    cd5c:	1468b803 	cmpu	r3, r8, r23
    cd60:	be43008c 	bltid	r3, 140		// cdec
    cd64:	10da0000 	addk	r6, r26, r0
    cd68:	e8730028 	lwi	r3, r19, 40
    cd6c:	10bb0000 	addk	r5, r27, r0
    cd70:	e8d30020 	lwi	r6, r19, 32
    cd74:	99fc1800 	brald	r15, r3
    cd78:	10fa0000 	addk	r7, r26, r0
    cd7c:	be63fefc 	bleid	r3, -260		// cc78
    cd80:	13030000 	addk	r24, r3, r0
    cd84:	b810fea0 	brid	-352		// cc24
    cd88:	13830000 	addk	r28, r3, r0
    cd8c:	10dc0000 	addk	r6, r28, r0
    cd90:	b9f40334 	brlid	r15, 820	// d0c4 <memmove>
    cd94:	131d0000 	addk	r24, r29, r0
    cd98:	e8730008 	lwi	r3, r19, 8
    cd9c:	e8930000 	lwi	r4, r19, 0
    cda0:	1758d000 	rsubk	r26, r24, r26
    cda4:	147d1800 	rsubk	r3, r29, r3
    cda8:	13a4e800 	addk	r29, r4, r29
    cdac:	f8730008 	swi	r3, r19, 8
    cdb0:	be3aff5c 	bneid	r26, -164		// cd0c
    cdb4:	fbb30000 	swi	r29, r19, 0
    cdb8:	10bb0000 	addk	r5, r27, r0
    cdbc:	b9f49f4c 	brlid	r15, -24756	// 6d08 <_fflush_r>
    cdc0:	10d30000 	addk	r6, r19, r0
    cdc4:	be23feb4 	bneid	r3, -332		// cc78
    cdc8:	13da0000 	addk	r30, r26, r0
    cdcc:	b810ff44 	brid	-188		// cd10
    cdd0:	e8790008 	lwi	r3, r25, 8
    cdd4:	13d70000 	addk	r30, r23, r0
    cdd8:	e8b30000 	lwi	r5, r19, 0
    cddc:	13970000 	addk	r28, r23, r0
    cde0:	13170000 	addk	r24, r23, r0
    cde4:	b810fe1c 	brid	-484		// cc00
    cde8:	13b70000 	addk	r29, r23, r0
    cdec:	10f70000 	addk	r7, r23, r0
    cdf0:	13170000 	addk	r24, r23, r0
    cdf4:	b9f402d0 	brlid	r15, 720	// d0c4 <memmove>
    cdf8:	13970000 	addk	r28, r23, r0
    cdfc:	e8930008 	lwi	r4, r19, 8
    ce00:	e8730000 	lwi	r3, r19, 0
    ce04:	14972000 	rsubk	r4, r23, r4
    ce08:	1063b800 	addk	r3, r3, r23
    ce0c:	f8930008 	swi	r4, r19, 8
    ce10:	b810fe14 	brid	-492		// cc24
    ce14:	f8730000 	swi	r3, r19, 0
    ce18:	10f70000 	addk	r7, r23, r0
    ce1c:	b9f4b9bc 	brlid	r15, -17988	// 87d8 <memchr>
    ce20:	30c0000a 	addik	r6, r0, 10
    ce24:	be0301d8 	beqid	r3, 472		// cffc
    ce28:	33570001 	addik	r26, r23, 1
    ce2c:	33430001 	addik	r26, r3, 1
    ce30:	175cd000 	rsubk	r26, r28, r26
    ce34:	147ab803 	cmpu	r3, r26, r23
    ce38:	33c00001 	addik	r30, r0, 1
    ce3c:	bea3fe74 	bgeid	r3, -396		// ccb0
    ce40:	13ba0000 	addk	r29, r26, r0
    ce44:	b810fe6c 	brid	-404		// ccb0
    ce48:	13b70000 	addk	r29, r23, r0
    ce4c:	e8930014 	lwi	r4, r19, 20
    ce50:	e8d30010 	lwi	r6, r19, 16
    ce54:	ebb30000 	lwi	r29, r19, 0
    ce58:	10a42000 	addk	r5, r4, r4
    ce5c:	10852000 	addk	r4, r5, r4
    ce60:	17a6e800 	rsubk	r29, r6, r29
    ce64:	13002000 	addk	r24, r0, r4
    ce68:	93040041 	srl	r24, r4
    ce6c:	93180041 	srl	r24, r24
    ce70:	93180041 	srl	r24, r24
    ce74:	93180041 	srl	r24, r24
    ce78:	93180041 	srl	r24, r24
    ce7c:	93180041 	srl	r24, r24
    ce80:	93180041 	srl	r24, r24
    ce84:	93180041 	srl	r24, r24
    ce88:	93180041 	srl	r24, r24
    ce8c:	93180041 	srl	r24, r24
    ce90:	93180041 	srl	r24, r24
    ce94:	93180041 	srl	r24, r24
    ce98:	93180041 	srl	r24, r24
    ce9c:	93180041 	srl	r24, r24
    cea0:	93180041 	srl	r24, r24
    cea4:	93180041 	srl	r24, r24
    cea8:	93180041 	srl	r24, r24
    ceac:	93180041 	srl	r24, r24
    ceb0:	93180041 	srl	r24, r24
    ceb4:	93180041 	srl	r24, r24
    ceb8:	93180041 	srl	r24, r24
    cebc:	93180041 	srl	r24, r24
    cec0:	93180041 	srl	r24, r24
    cec4:	93180041 	srl	r24, r24
    cec8:	93180041 	srl	r24, r24
    cecc:	93180041 	srl	r24, r24
    ced0:	93180041 	srl	r24, r24
    ced4:	93180041 	srl	r24, r24
    ced8:	93180041 	srl	r24, r24
    cedc:	93180041 	srl	r24, r24
    cee0:	93180041 	srl	r24, r24
    cee4:	30bd0001 	addik	r5, r29, 1
    cee8:	10982000 	addk	r4, r24, r4
    ceec:	93040001 	sra	r24, r4
    cef0:	1085b800 	addk	r4, r5, r23
    cef4:	14a4c003 	cmpu	r5, r4, r24
    cef8:	bea50010 	bgeid	r5, 16		// cf08
    cefc:	10f80000 	addk	r7, r24, r0
    cf00:	13040000 	addk	r24, r4, r0
    cf04:	10e40000 	addk	r7, r4, r0
    cf08:	a4630400 	andi	r3, r3, 1024
    cf0c:	90630061 	sext16	r3, r3
    cf10:	be0300c4 	beqid	r3, 196		// cfd4
    cf14:	10bb0000 	addk	r5, r27, r0
    cf18:	b9f4ad40 	brlid	r15, -21184	// 7c58 <_malloc_r>
    cf1c:	10c70000 	addk	r6, r7, r0
    cf20:	be0300d0 	beqid	r3, 208		// cff0
    cf24:	13830000 	addk	r28, r3, r0
    cf28:	10a30000 	addk	r5, r3, r0
    cf2c:	e8d30010 	lwi	r6, r19, 16
    cf30:	b9f4ba04 	brlid	r15, -17916	// 8934 <memcpy>
    cf34:	10fd0000 	addk	r7, r29, r0
    cf38:	e473000c 	lhui	r3, r19, 12
    cf3c:	a463fb7f 	andi	r3, r3, -1153
    cf40:	a0630080 	ori	r3, r3, 128
    cf44:	f473000c 	shi	r3, r19, 12
    cf48:	10bce800 	addk	r5, r28, r29
    cf4c:	17bdc000 	rsubk	r29, r29, r24
    cf50:	fb930010 	swi	r28, r19, 16
    cf54:	fb130014 	swi	r24, r19, 20
    cf58:	fbb30008 	swi	r29, r19, 8
    cf5c:	f8b30000 	swi	r5, r19, 0
    cf60:	13d70000 	addk	r30, r23, r0
    cf64:	13970000 	addk	r28, r23, r0
    cf68:	13170000 	addk	r24, r23, r0
    cf6c:	b810fc94 	brid	-876		// cc00
    cf70:	13b70000 	addk	r29, r23, r0
    cf74:	b9f40150 	brlid	r15, 336	// d0c4 <memmove>
    cf78:	10f80000 	addk	r7, r24, r0
    cf7c:	e8730000 	lwi	r3, r19, 0
    cf80:	10bb0000 	addk	r5, r27, r0
    cf84:	10d30000 	addk	r6, r19, r0
    cf88:	1063c000 	addk	r3, r3, r24
    cf8c:	b9f49d7c 	brlid	r15, -25220	// 6d08 <_fflush_r>
    cf90:	f8730000 	swi	r3, r19, 0
    cf94:	be03fd70 	beqid	r3, -656		// cd04
    cf98:	1758d000 	rsubk	r26, r24, r26
    cf9c:	b810fce0 	brid	-800		// cc7c
    cfa0:	e493000c 	lhui	r4, r19, 12
    cfa4:	10da0000 	addk	r6, r26, r0
    cfa8:	b9f4011c 	brlid	r15, 284	// d0c4 <memmove>
    cfac:	10f80000 	addk	r7, r24, r0
    cfb0:	e8730000 	lwi	r3, r19, 0
    cfb4:	10bb0000 	addk	r5, r27, r0
    cfb8:	10d30000 	addk	r6, r19, r0
    cfbc:	1063c000 	addk	r3, r3, r24
    cfc0:	b9f49d48 	brlid	r15, -25272	// 6d08 <_fflush_r>
    cfc4:	f8730000 	swi	r3, r19, 0
    cfc8:	bc03fc5c 	beqi	r3, -932		// cc24
    cfcc:	b810fcb0 	brid	-848		// cc7c
    cfd0:	e493000c 	lhui	r4, r19, 12
    cfd4:	b9f402c8 	brlid	r15, 712	// d29c <_realloc_r>
    cfd8:	80000000 	or	r0, r0, r0
    cfdc:	be23ff6c 	bneid	r3, -148		// cf48
    cfe0:	13830000 	addk	r28, r3, r0
    cfe4:	10bb0000 	addk	r5, r27, r0
    cfe8:	b9f4a31c 	brlid	r15, -23780	// 7304 <_free_r>
    cfec:	e8d30010 	lwi	r6, r19, 16
    cff0:	3060000c 	addik	r3, r0, 12	// c <_.frame>
    cff4:	b810fc84 	brid	-892		// cc78
    cff8:	f87b0000 	swi	r3, r27, 0
    cffc:	b810fca8 	brid	-856		// cca4
    d000:	33c00001 	addik	r30, r0, 1

0000d004 <_isatty_r>:
    d004:	3021ffe0 	addik	r1, r1, -32
    d008:	fa61001c 	swi	r19, r1, 28
    d00c:	12650000 	addk	r19, r5, r0
    d010:	f9e10000 	swi	r15, r1, 0
    d014:	b0000001 	imm	1
    d018:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    d01c:	b000ffff 	imm	-1
    d020:	b9f4451c 	brlid	r15, 17692	// 153c <isatty>
    d024:	10a60000 	addk	r5, r6, r0
    d028:	a883ffff 	xori	r4, r3, -1
    d02c:	be040014 	beqid	r4, 20		// d040
    d030:	e9e10000 	lwi	r15, r1, 0
    d034:	ea61001c 	lwi	r19, r1, 28
    d038:	b60f0008 	rtsd	r15, 8
    d03c:	30210020 	addik	r1, r1, 32
    d040:	b0000001 	imm	1
    d044:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    d048:	bc04ffec 	beqi	r4, -20		// d034
    d04c:	f8930000 	swi	r4, r19, 0
    d050:	e9e10000 	lwi	r15, r1, 0
    d054:	ea61001c 	lwi	r19, r1, 28
    d058:	b60f0008 	rtsd	r15, 8
    d05c:	30210020 	addik	r1, r1, 32

0000d060 <_lseek_r>:
    d060:	3021ffe0 	addik	r1, r1, -32
    d064:	fa61001c 	swi	r19, r1, 28
    d068:	12650000 	addk	r19, r5, r0
    d06c:	10a60000 	addk	r5, r6, r0
    d070:	10c70000 	addk	r6, r7, r0
    d074:	f9e10000 	swi	r15, r1, 0
    d078:	b0000001 	imm	1
    d07c:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    d080:	b000ffff 	imm	-1
    d084:	b9f44494 	brlid	r15, 17556	// 1518 <lseek>
    d088:	10e80000 	addk	r7, r8, r0
    d08c:	a883ffff 	xori	r4, r3, -1
    d090:	be040014 	beqid	r4, 20		// d0a4
    d094:	e9e10000 	lwi	r15, r1, 0
    d098:	ea61001c 	lwi	r19, r1, 28
    d09c:	b60f0008 	rtsd	r15, 8
    d0a0:	30210020 	addik	r1, r1, 32
    d0a4:	b0000001 	imm	1
    d0a8:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    d0ac:	bc04ffec 	beqi	r4, -20		// d098
    d0b0:	f8930000 	swi	r4, r19, 0
    d0b4:	e9e10000 	lwi	r15, r1, 0
    d0b8:	ea61001c 	lwi	r19, r1, 28
    d0bc:	b60f0008 	rtsd	r15, 8
    d0c0:	30210020 	addik	r1, r1, 32

0000d0c4 <memmove>:
    d0c4:	14853003 	cmpu	r4, r5, r6
    d0c8:	bea4004c 	bgeid	r4, 76		// d114
    d0cc:	10650000 	addk	r3, r5, r0
    d0d0:	11063800 	addk	r8, r6, r7
    d0d4:	14882803 	cmpu	r4, r8, r5
    d0d8:	bea40040 	bgeid	r4, 64		// d118
    d0dc:	3160000f 	addik	r11, r0, 15
    d0e0:	14a70000 	rsubk	r5, r7, r0
    d0e4:	10c33800 	addk	r6, r3, r7
    d0e8:	3087ffff 	addik	r4, r7, -1
    d0ec:	11082800 	addk	r8, r8, r5
    d0f0:	be07001c 	beqid	r7, 28		// d10c
    d0f4:	10c62800 	addk	r6, r6, r5
    d0f8:	c0a44000 	lbu	r5, r4, r8
    d0fc:	d0a43000 	sb	r5, r4, r6
    d100:	3084ffff 	addik	r4, r4, -1
    d104:	a8a4ffff 	xori	r5, r4, -1
    d108:	bc25fff0 	bnei	r5, -16		// d0f8
    d10c:	b60f0008 	rtsd	r15, 8
    d110:	80000000 	or	r0, r0, r0
    d114:	3160000f 	addik	r11, r0, 15
    d118:	14875803 	cmpu	r4, r7, r11
    d11c:	bea400fc 	bgeid	r4, 252		// d218
    d120:	80861800 	or	r4, r6, r3
    d124:	a4840003 	andi	r4, r4, 3
    d128:	be2400d0 	bneid	r4, 208		// d1f8
    d12c:	11230000 	addk	r9, r3, r0
    d130:	11060000 	addk	r8, r6, r0
    d134:	10830000 	addk	r4, r3, r0
    d138:	10a70000 	addk	r5, r7, r0
    d13c:	e9480000 	lwi	r10, r8, 0
    d140:	30a5fff0 	addik	r5, r5, -16
    d144:	15255803 	cmpu	r9, r5, r11
    d148:	f9440000 	swi	r10, r4, 0
    d14c:	e9480004 	lwi	r10, r8, 4
    d150:	f9440004 	swi	r10, r4, 4
    d154:	e9480008 	lwi	r10, r8, 8
    d158:	f9440008 	swi	r10, r4, 8
    d15c:	e948000c 	lwi	r10, r8, 12
    d160:	31080010 	addik	r8, r8, 16
    d164:	f944000c 	swi	r10, r4, 12
    d168:	be49ffd4 	bltid	r9, -44		// d13c
    d16c:	30840010 	addik	r4, r4, 16
    d170:	3087fff0 	addik	r4, r7, -16
    d174:	10a02000 	addk	r5, r0, r4
    d178:	90a40041 	srl	r5, r4
    d17c:	90a50041 	srl	r5, r5
    d180:	90a50041 	srl	r5, r5
    d184:	90a50041 	srl	r5, r5
    d188:	30a50001 	addik	r5, r5, 1
    d18c:	10a52800 	addk	r5, r5, r5
    d190:	10a52800 	addk	r5, r5, r5
    d194:	10a52800 	addk	r5, r5, r5
    d198:	a487000f 	andi	r4, r7, 15
    d19c:	31000003 	addik	r8, r0, 3
    d1a0:	10a52800 	addk	r5, r5, r5
    d1a4:	15044003 	cmpu	r8, r4, r8
    d1a8:	11232800 	addk	r9, r3, r5
    d1ac:	bea8007c 	bgeid	r8, 124		// d228
    d1b0:	10c62800 	addk	r6, r6, r5
    d1b4:	3084fffc 	addik	r4, r4, -4
    d1b8:	11002000 	addk	r8, r0, r4
    d1bc:	91040041 	srl	r8, r4
    d1c0:	91080041 	srl	r8, r8
    d1c4:	31080001 	addik	r8, r8, 1
    d1c8:	11084000 	addk	r8, r8, r8
    d1cc:	11084000 	addk	r8, r8, r8
    d1d0:	10800000 	addk	r4, r0, r0
    d1d4:	c8a43000 	lw	r5, r4, r6
    d1d8:	d8a44800 	sw	r5, r4, r9
    d1dc:	30840004 	addik	r4, r4, 4
    d1e0:	88a44000 	xor	r5, r4, r8
    d1e4:	bc25fff0 	bnei	r5, -16		// d1d4
    d1e8:	a4e70003 	andi	r7, r7, 3
    d1ec:	10c64000 	addk	r6, r6, r8
    d1f0:	be07ff1c 	beqid	r7, -228		// d10c
    d1f4:	11294000 	addk	r9, r9, r8
    d1f8:	10800000 	addk	r4, r0, r0
    d1fc:	c0a43000 	lbu	r5, r4, r6
    d200:	d0a44800 	sb	r5, r4, r9
    d204:	30840001 	addik	r4, r4, 1
    d208:	89043800 	xor	r8, r4, r7
    d20c:	bc28fff0 	bnei	r8, -16		// d1fc
    d210:	b60f0008 	rtsd	r15, 8
    d214:	80000000 	or	r0, r0, r0
    d218:	be27ffe0 	bneid	r7, -32		// d1f8
    d21c:	11230000 	addk	r9, r3, r0
    d220:	b60f0008 	rtsd	r15, 8
    d224:	80000000 	or	r0, r0, r0
    d228:	10e40000 	addk	r7, r4, r0
    d22c:	be27ffd0 	bneid	r7, -48		// d1fc
    d230:	10800000 	addk	r4, r0, r0
    d234:	b800ffec 	bri	-20		// d220

0000d238 <_read_r>:
    d238:	3021ffe0 	addik	r1, r1, -32
    d23c:	fa61001c 	swi	r19, r1, 28
    d240:	12650000 	addk	r19, r5, r0
    d244:	10a60000 	addk	r5, r6, r0
    d248:	10c70000 	addk	r6, r7, r0
    d24c:	f9e10000 	swi	r15, r1, 0
    d250:	b0000001 	imm	1
    d254:	f8003a54 	swi	r0, r0, 14932	// 13a54 <errno>
    d258:	b000ffff 	imm	-1
    d25c:	b9f44224 	brlid	r15, 16932	// 1480 <read>
    d260:	10e80000 	addk	r7, r8, r0
    d264:	a883ffff 	xori	r4, r3, -1
    d268:	be040014 	beqid	r4, 20		// d27c
    d26c:	e9e10000 	lwi	r15, r1, 0
    d270:	ea61001c 	lwi	r19, r1, 28
    d274:	b60f0008 	rtsd	r15, 8
    d278:	30210020 	addik	r1, r1, 32
    d27c:	b0000001 	imm	1
    d280:	e8803a54 	lwi	r4, r0, 14932	// 13a54 <errno>
    d284:	bc04ffec 	beqi	r4, -20		// d270
    d288:	f8930000 	swi	r4, r19, 0
    d28c:	e9e10000 	lwi	r15, r1, 0
    d290:	ea61001c 	lwi	r19, r1, 28
    d294:	b60f0008 	rtsd	r15, 8
    d298:	30210020 	addik	r1, r1, 32

0000d29c <_realloc_r>:
    d29c:	3021ffc4 	addik	r1, r1, -60
    d2a0:	fa61001c 	swi	r19, r1, 28
    d2a4:	fae10024 	swi	r23, r1, 36
    d2a8:	f9e10000 	swi	r15, r1, 0
    d2ac:	fac10020 	swi	r22, r1, 32
    d2b0:	fb010028 	swi	r24, r1, 40
    d2b4:	fb21002c 	swi	r25, r1, 44
    d2b8:	fb410030 	swi	r26, r1, 48
    d2bc:	fb610034 	swi	r27, r1, 52
    d2c0:	fb810038 	swi	r28, r1, 56
    d2c4:	12660000 	addk	r19, r6, r0
    d2c8:	be0603c8 	beqid	r6, 968		// d690
    d2cc:	12e70000 	addk	r23, r7, r0
    d2d0:	b9f4b790 	brlid	r15, -18544	// 8a60 <__malloc_lock>
    d2d4:	13450000 	addk	r26, r5, r0
    d2d8:	e873fffc 	lwi	r3, r19, -4
    d2dc:	32d7000b 	addik	r22, r23, 11
    d2e0:	30800016 	addik	r4, r0, 22
    d2e4:	14962003 	cmpu	r4, r22, r4
    d2e8:	3373fff8 	addik	r27, r19, -8
    d2ec:	be440128 	bltid	r4, 296		// d414
    d2f0:	a703fffc 	andi	r24, r3, -4
    d2f4:	30800010 	addik	r4, r0, 16	// 10 <_.d1>
    d2f8:	12c40000 	addk	r22, r4, r0
    d2fc:	14b7b003 	cmpu	r5, r23, r22
    d300:	be4501a4 	bltid	r5, 420		// d4a4
    d304:	10e00000 	addk	r7, r0, r0
    d308:	be27019c 	bneid	r7, 412		// d4a4
    d30c:	14a4c001 	cmp	r5, r4, r24
    d310:	bea501a4 	bgeid	r5, 420		// d4b4
    d314:	13380000 	addk	r25, r24, r0
    d318:	b0000001 	imm	1
    d31c:	e8a0360c 	lwi	r5, r0, 13836
    d320:	10dbc000 	addk	r6, r27, r24
    d324:	89053000 	xor	r8, r5, r6
    d328:	be080378 	beqid	r8, 888		// d6a0
    d32c:	31160010 	addik	r8, r22, 16
    d330:	e9060004 	lwi	r8, r6, 4
    d334:	a528fffe 	andi	r9, r8, -2
    d338:	11264800 	addk	r9, r6, r9
    d33c:	e9290004 	lwi	r9, r9, 4
    d340:	a5290001 	andi	r9, r9, 1
    d344:	bc0901d8 	beqi	r9, 472		// d51c
    d348:	10c70000 	addk	r6, r7, r0
    d34c:	a4630001 	andi	r3, r3, 1
    d350:	bc230228 	bnei	r3, 552		// d578
    d354:	eb93fff8 	lwi	r28, r19, -8
    d358:	179cd800 	rsubk	r28, r28, r27
    d35c:	e87c0004 	lwi	r3, r28, 4
    d360:	be06029c 	beqid	r6, 668		// d5fc
    d364:	a463fffc 	andi	r3, r3, -4
    d368:	1063c000 	addk	r3, r3, r24
    d36c:	88a62800 	xor	r5, r6, r5
    d370:	be0503e8 	beqid	r5, 1000		// d758
    d374:	13271800 	addk	r25, r7, r3
    d378:	14a4c801 	cmp	r5, r4, r25
    d37c:	be450288 	bltid	r5, 648		// d604
    d380:	14841801 	cmp	r4, r4, r3
    d384:	e866000c 	lwi	r3, r6, 12
    d388:	e8860008 	lwi	r4, r6, 8
    d38c:	30f8fffc 	addik	r7, r24, -4
    d390:	30a00024 	addik	r5, r0, 36
    d394:	f864000c 	swi	r3, r4, 12
    d398:	f8830008 	swi	r4, r3, 8
    d39c:	e89c0008 	lwi	r4, r28, 8
    d3a0:	e87c000c 	lwi	r3, r28, 12
    d3a4:	14a72803 	cmpu	r5, r7, r5
    d3a8:	311c0008 	addik	r8, r28, 8
    d3ac:	f864000c 	swi	r3, r4, 12
    d3b0:	be450494 	bltid	r5, 1172		// d844
    d3b4:	f8830008 	swi	r4, r3, 8
    d3b8:	30600013 	addik	r3, r0, 19
    d3bc:	14671803 	cmpu	r3, r7, r3
    d3c0:	bea30324 	bgeid	r3, 804		// d6e4
    d3c4:	10680000 	addk	r3, r8, r0
    d3c8:	e8930000 	lwi	r4, r19, 0
    d3cc:	3060001b 	addik	r3, r0, 27
    d3d0:	14671803 	cmpu	r3, r7, r3
    d3d4:	f89c0008 	swi	r4, r28, 8
    d3d8:	e8930004 	lwi	r4, r19, 4
    d3dc:	be43048c 	bltid	r3, 1164		// d868
    d3e0:	f89c000c 	swi	r4, r28, 12
    d3e4:	307c0010 	addik	r3, r28, 16
    d3e8:	30930008 	addik	r4, r19, 8
    d3ec:	e8a40000 	lwi	r5, r4, 0
    d3f0:	12680000 	addk	r19, r8, r0
    d3f4:	137c0000 	addk	r27, r28, r0
    d3f8:	f8a30000 	swi	r5, r3, 0
    d3fc:	e8a40004 	lwi	r5, r4, 4
    d400:	f8a30004 	swi	r5, r3, 4
    d404:	e8840008 	lwi	r4, r4, 8
    d408:	f8830008 	swi	r4, r3, 8
    d40c:	b81000a8 	brid	168		// d4b4
    d410:	e87c0004 	lwi	r3, r28, 4
    d414:	a6d6fff8 	andi	r22, r22, -8
    d418:	14b7b003 	cmpu	r5, r23, r22
    d41c:	10e0b000 	addk	r7, r0, r22
    d420:	90f60041 	srl	r7, r22
    d424:	90e70041 	srl	r7, r7
    d428:	90e70041 	srl	r7, r7
    d42c:	90e70041 	srl	r7, r7
    d430:	90e70041 	srl	r7, r7
    d434:	90e70041 	srl	r7, r7
    d438:	90e70041 	srl	r7, r7
    d43c:	90e70041 	srl	r7, r7
    d440:	90e70041 	srl	r7, r7
    d444:	90e70041 	srl	r7, r7
    d448:	90e70041 	srl	r7, r7
    d44c:	90e70041 	srl	r7, r7
    d450:	90e70041 	srl	r7, r7
    d454:	90e70041 	srl	r7, r7
    d458:	90e70041 	srl	r7, r7
    d45c:	90e70041 	srl	r7, r7
    d460:	90e70041 	srl	r7, r7
    d464:	90e70041 	srl	r7, r7
    d468:	90e70041 	srl	r7, r7
    d46c:	90e70041 	srl	r7, r7
    d470:	90e70041 	srl	r7, r7
    d474:	90e70041 	srl	r7, r7
    d478:	90e70041 	srl	r7, r7
    d47c:	90e70041 	srl	r7, r7
    d480:	90e70041 	srl	r7, r7
    d484:	90e70041 	srl	r7, r7
    d488:	90e70041 	srl	r7, r7
    d48c:	90e70041 	srl	r7, r7
    d490:	90e70041 	srl	r7, r7
    d494:	90e70041 	srl	r7, r7
    d498:	90e70041 	srl	r7, r7
    d49c:	bea5fe6c 	bgeid	r5, -404		// d308
    d4a0:	10960000 	addk	r4, r22, r0
    d4a4:	3060000c 	addik	r3, r0, 12	// c <_.frame>
    d4a8:	f87a0000 	swi	r3, r26, 0
    d4ac:	b8100040 	brid	64		// d4ec
    d4b0:	12e00000 	addk	r23, r0, r0
    d4b4:	1496c800 	rsubk	r4, r22, r25
    d4b8:	30a0000f 	addik	r5, r0, 15
    d4bc:	14a42803 	cmpu	r5, r4, r5
    d4c0:	be450080 	bltid	r5, 128		// d540
    d4c4:	a4630001 	andi	r3, r3, 1
    d4c8:	8063c800 	or	r3, r3, r25
    d4cc:	f87b0004 	swi	r3, r27, 4
    d4d0:	137bc800 	addk	r27, r27, r25
    d4d4:	e87b0004 	lwi	r3, r27, 4
    d4d8:	a0630001 	ori	r3, r3, 1
    d4dc:	f87b0004 	swi	r3, r27, 4
    d4e0:	10ba0000 	addk	r5, r26, r0
    d4e4:	b9f4b584 	brlid	r15, -19068	// 8a68 <__malloc_unlock>
    d4e8:	12f30000 	addk	r23, r19, r0
    d4ec:	10770000 	addk	r3, r23, r0
    d4f0:	e9e10000 	lwi	r15, r1, 0
    d4f4:	ea61001c 	lwi	r19, r1, 28
    d4f8:	eac10020 	lwi	r22, r1, 32
    d4fc:	eae10024 	lwi	r23, r1, 36
    d500:	eb010028 	lwi	r24, r1, 40
    d504:	eb21002c 	lwi	r25, r1, 44
    d508:	eb410030 	lwi	r26, r1, 48
    d50c:	eb610034 	lwi	r27, r1, 52
    d510:	eb810038 	lwi	r28, r1, 56
    d514:	b60f0008 	rtsd	r15, 8
    d518:	3021003c 	addik	r1, r1, 60
    d51c:	a4e8fffc 	andi	r7, r8, -4
    d520:	1327c000 	addk	r25, r7, r24
    d524:	1504c801 	cmp	r8, r4, r25
    d528:	bc48fe24 	blti	r8, -476		// d34c
    d52c:	e886000c 	lwi	r4, r6, 12
    d530:	e8a60008 	lwi	r5, r6, 8
    d534:	f885000c 	swi	r4, r5, 12
    d538:	b810ff7c 	brid	-132		// d4b4
    d53c:	f8a40008 	swi	r5, r4, 8
    d540:	8063b000 	or	r3, r3, r22
    d544:	f87b0004 	swi	r3, r27, 4
    d548:	10dbb000 	addk	r6, r27, r22
    d54c:	a0640001 	ori	r3, r4, 1
    d550:	f8660004 	swi	r3, r6, 4
    d554:	10862000 	addk	r4, r6, r4
    d558:	e8640004 	lwi	r3, r4, 4
    d55c:	10ba0000 	addk	r5, r26, r0
    d560:	30c60008 	addik	r6, r6, 8
    d564:	a0630001 	ori	r3, r3, 1
    d568:	b9f49d9c 	brlid	r15, -25188	// 7304 <_free_r>
    d56c:	f8640004 	swi	r3, r4, 4
    d570:	b810ff74 	brid	-140		// d4e4
    d574:	10ba0000 	addk	r5, r26, r0
    d578:	10d70000 	addk	r6, r23, r0
    d57c:	b9f4a6dc 	brlid	r15, -22820	// 7c58 <_malloc_r>
    d580:	10ba0000 	addk	r5, r26, r0
    d584:	be030068 	beqid	r3, 104		// d5ec
    d588:	12e30000 	addk	r23, r3, r0
    d58c:	e873fffc 	lwi	r3, r19, -4
    d590:	30b7fff8 	addik	r5, r23, -8
    d594:	a483fffe 	andi	r4, r3, -2
    d598:	109b2000 	addk	r4, r27, r4
    d59c:	88852000 	xor	r4, r5, r4
    d5a0:	be040294 	beqid	r4, 660		// d834
    d5a4:	30f8fffc 	addik	r7, r24, -4
    d5a8:	30600024 	addik	r3, r0, 36
    d5ac:	14671803 	cmpu	r3, r7, r3
    d5b0:	bc430194 	blti	r3, 404		// d744
    d5b4:	30600013 	addik	r3, r0, 19
    d5b8:	14671803 	cmpu	r3, r7, r3
    d5bc:	be430100 	bltid	r3, 256		// d6bc
    d5c0:	10770000 	addk	r3, r23, r0
    d5c4:	10930000 	addk	r4, r19, r0
    d5c8:	e8a40000 	lwi	r5, r4, 0
    d5cc:	f8a30000 	swi	r5, r3, 0
    d5d0:	e8a40004 	lwi	r5, r4, 4
    d5d4:	f8a30004 	swi	r5, r3, 4
    d5d8:	e8840008 	lwi	r4, r4, 8
    d5dc:	f8830008 	swi	r4, r3, 8
    d5e0:	10ba0000 	addk	r5, r26, r0
    d5e4:	b9f49d20 	brlid	r15, -25312	// 7304 <_free_r>
    d5e8:	10d30000 	addk	r6, r19, r0
    d5ec:	b9f4b47c 	brlid	r15, -19332	// 8a68 <__malloc_unlock>
    d5f0:	10ba0000 	addk	r5, r26, r0
    d5f4:	b810fefc 	brid	-260		// d4f0
    d5f8:	10770000 	addk	r3, r23, r0
    d5fc:	1063c000 	addk	r3, r3, r24
    d600:	14841801 	cmp	r4, r4, r3
    d604:	be44ff78 	bltid	r4, -136		// d57c
    d608:	10d70000 	addk	r6, r23, r0
    d60c:	e89c000c 	lwi	r4, r28, 12
    d610:	e8bc0008 	lwi	r5, r28, 8
    d614:	30f8fffc 	addik	r7, r24, -4
    d618:	f885000c 	swi	r4, r5, 12
    d61c:	f8a40008 	swi	r5, r4, 8
    d620:	30800024 	addik	r4, r0, 36
    d624:	14872003 	cmpu	r4, r7, r4
    d628:	be4400c4 	bltid	r4, 196		// d6ec
    d62c:	311c0008 	addik	r8, r28, 8
    d630:	30800013 	addik	r4, r0, 19
    d634:	14872003 	cmpu	r4, r7, r4
    d638:	bea40228 	bgeid	r4, 552		// d860
    d63c:	10880000 	addk	r4, r8, r0
    d640:	e8b30000 	lwi	r5, r19, 0
    d644:	3080001b 	addik	r4, r0, 27
    d648:	14872003 	cmpu	r4, r7, r4
    d64c:	f8bc0008 	swi	r5, r28, 8
    d650:	e8b30004 	lwi	r5, r19, 4
    d654:	be440254 	bltid	r4, 596		// d8a8
    d658:	f8bc000c 	swi	r5, r28, 12
    d65c:	309c0010 	addik	r4, r28, 16
    d660:	30d30008 	addik	r6, r19, 8
    d664:	e8a60000 	lwi	r5, r6, 0
    d668:	13230000 	addk	r25, r3, r0
    d66c:	12680000 	addk	r19, r8, r0
    d670:	f8a40000 	swi	r5, r4, 0
    d674:	e8660004 	lwi	r3, r6, 4
    d678:	137c0000 	addk	r27, r28, r0
    d67c:	f8640004 	swi	r3, r4, 4
    d680:	e8660008 	lwi	r3, r6, 8
    d684:	f8640008 	swi	r3, r4, 8
    d688:	b810fe2c 	brid	-468		// d4b4
    d68c:	e87c0004 	lwi	r3, r28, 4
    d690:	b9f4a5c8 	brlid	r15, -23096	// 7c58 <_malloc_r>
    d694:	10c70000 	addk	r6, r7, r0
    d698:	b810fe54 	brid	-428		// d4ec
    d69c:	12e30000 	addk	r23, r3, r0
    d6a0:	e8e50004 	lwi	r7, r5, 4
    d6a4:	a4e7fffc 	andi	r7, r7, -4
    d6a8:	10c7c000 	addk	r6, r7, r24
    d6ac:	15083001 	cmp	r8, r8, r6
    d6b0:	bca8005c 	bgei	r8, 92		// d70c
    d6b4:	b810fc98 	brid	-872		// d34c
    d6b8:	10c50000 	addk	r6, r5, r0
    d6bc:	e8930000 	lwi	r4, r19, 0
    d6c0:	3060001b 	addik	r3, r0, 27
    d6c4:	14671803 	cmpu	r3, r7, r3
    d6c8:	f8970000 	swi	r4, r23, 0
    d6cc:	e8930004 	lwi	r4, r19, 4
    d6d0:	be430140 	bltid	r3, 320		// d810
    d6d4:	f8970004 	swi	r4, r23, 4
    d6d8:	30770008 	addik	r3, r23, 8
    d6dc:	b810feec 	brid	-276		// d5c8
    d6e0:	30930008 	addik	r4, r19, 8
    d6e4:	b810fd08 	brid	-760		// d3ec
    d6e8:	10930000 	addk	r4, r19, r0
    d6ec:	10d30000 	addk	r6, r19, r0
    d6f0:	10a80000 	addk	r5, r8, r0
    d6f4:	12680000 	addk	r19, r8, r0
    d6f8:	b9f4f9cc 	brlid	r15, -1588	// d0c4 <memmove>
    d6fc:	13230000 	addk	r25, r3, r0
    d700:	e87c0004 	lwi	r3, r28, 4
    d704:	b810fdb0 	brid	-592		// d4b4
    d708:	137c0000 	addk	r27, r28, r0
    d70c:	14763000 	rsubk	r3, r22, r6
    d710:	137bb000 	addk	r27, r27, r22
    d714:	a0630001 	ori	r3, r3, 1
    d718:	f87b0004 	swi	r3, r27, 4
    d71c:	e873fffc 	lwi	r3, r19, -4
    d720:	10ba0000 	addk	r5, r26, r0
    d724:	b0000001 	imm	1
    d728:	fb60360c 	swi	r27, r0, 13836
    d72c:	a4630001 	andi	r3, r3, 1
    d730:	82d61800 	or	r22, r22, r3
    d734:	b9f4b334 	brlid	r15, -19660	// 8a68 <__malloc_unlock>
    d738:	fad3fffc 	swi	r22, r19, -4
    d73c:	b810fdb0 	brid	-592		// d4ec
    d740:	12f30000 	addk	r23, r19, r0
    d744:	10b70000 	addk	r5, r23, r0
    d748:	b9f4f97c 	brlid	r15, -1668	// d0c4 <memmove>
    d74c:	10d30000 	addk	r6, r19, r0
    d750:	b810fe94 	brid	-364		// d5e4
    d754:	10ba0000 	addk	r5, r26, r0
    d758:	30b60010 	addik	r5, r22, 16
    d75c:	14a5c801 	cmp	r5, r5, r25
    d760:	be45fea4 	bltid	r5, -348		// d604
    d764:	14841801 	cmp	r4, r4, r3
    d768:	e87c000c 	lwi	r3, r28, 12
    d76c:	e89c0008 	lwi	r4, r28, 8
    d770:	30f8fffc 	addik	r7, r24, -4
    d774:	f864000c 	swi	r3, r4, 12
    d778:	f8830008 	swi	r4, r3, 8
    d77c:	30600024 	addik	r3, r0, 36
    d780:	14671803 	cmpu	r3, r7, r3
    d784:	be430188 	bltid	r3, 392		// d90c
    d788:	32fc0008 	addik	r23, r28, 8
    d78c:	30600013 	addik	r3, r0, 19
    d790:	14671803 	cmpu	r3, r7, r3
    d794:	bea30154 	bgeid	r3, 340		// d8e8
    d798:	10770000 	addk	r3, r23, r0
    d79c:	e8930000 	lwi	r4, r19, 0
    d7a0:	3060001b 	addik	r3, r0, 27
    d7a4:	14671803 	cmpu	r3, r7, r3
    d7a8:	f89c0008 	swi	r4, r28, 8
    d7ac:	e8930004 	lwi	r4, r19, 4
    d7b0:	be430170 	bltid	r3, 368		// d920
    d7b4:	f89c000c 	swi	r4, r28, 12
    d7b8:	307c0010 	addik	r3, r28, 16
    d7bc:	30930008 	addik	r4, r19, 8
    d7c0:	e8a40000 	lwi	r5, r4, 0
    d7c4:	f8a30000 	swi	r5, r3, 0
    d7c8:	e8a40004 	lwi	r5, r4, 4
    d7cc:	f8a30004 	swi	r5, r3, 4
    d7d0:	e8840008 	lwi	r4, r4, 8
    d7d4:	f8830008 	swi	r4, r3, 8
    d7d8:	1496c800 	rsubk	r4, r22, r25
    d7dc:	107cb000 	addk	r3, r28, r22
    d7e0:	a0840001 	ori	r4, r4, 1
    d7e4:	f8830004 	swi	r4, r3, 4
    d7e8:	e89c0004 	lwi	r4, r28, 4
    d7ec:	10ba0000 	addk	r5, r26, r0
    d7f0:	b0000001 	imm	1
    d7f4:	f860360c 	swi	r3, r0, 13836
    d7f8:	a4640001 	andi	r3, r4, 1
    d7fc:	82d61800 	or	r22, r22, r3
    d800:	b9f4b268 	brlid	r15, -19864	// 8a68 <__malloc_unlock>
    d804:	fadc0004 	swi	r22, r28, 4
    d808:	b810fce8 	brid	-792		// d4f0
    d80c:	10770000 	addk	r3, r23, r0
    d810:	e8730008 	lwi	r3, r19, 8
    d814:	a8e70024 	xori	r7, r7, 36
    d818:	f8770008 	swi	r3, r23, 8
    d81c:	e873000c 	lwi	r3, r19, 12
    d820:	be07006c 	beqid	r7, 108		// d88c
    d824:	f877000c 	swi	r3, r23, 12
    d828:	30770010 	addik	r3, r23, 16
    d82c:	b810fd9c 	brid	-612		// d5c8
    d830:	30930010 	addik	r4, r19, 16
    d834:	eb37fffc 	lwi	r25, r23, -4
    d838:	a739fffc 	andi	r25, r25, -4
    d83c:	b810fc78 	brid	-904		// d4b4
    d840:	1339c000 	addk	r25, r25, r24
    d844:	10d30000 	addk	r6, r19, r0
    d848:	10a80000 	addk	r5, r8, r0
    d84c:	12680000 	addk	r19, r8, r0
    d850:	b9f4f874 	brlid	r15, -1932	// d0c4 <memmove>
    d854:	137c0000 	addk	r27, r28, r0
    d858:	b810fc5c 	brid	-932		// d4b4
    d85c:	e87c0004 	lwi	r3, r28, 4
    d860:	b810fe04 	brid	-508		// d664
    d864:	10d30000 	addk	r6, r19, r0
    d868:	e8730008 	lwi	r3, r19, 8
    d86c:	a8e70024 	xori	r7, r7, 36
    d870:	f87c0010 	swi	r3, r28, 16
    d874:	e873000c 	lwi	r3, r19, 12
    d878:	be070054 	beqid	r7, 84		// d8cc
    d87c:	f87c0014 	swi	r3, r28, 20
    d880:	307c0018 	addik	r3, r28, 24
    d884:	b810fb68 	brid	-1176		// d3ec
    d888:	30930010 	addik	r4, r19, 16
    d88c:	e8b30010 	lwi	r5, r19, 16
    d890:	30770018 	addik	r3, r23, 24
    d894:	30930018 	addik	r4, r19, 24
    d898:	f8b70010 	swi	r5, r23, 16
    d89c:	e8b30014 	lwi	r5, r19, 20
    d8a0:	b810fd28 	brid	-728		// d5c8
    d8a4:	f8b70014 	swi	r5, r23, 20
    d8a8:	e8930008 	lwi	r4, r19, 8
    d8ac:	a8e70024 	xori	r7, r7, 36
    d8b0:	f89c0010 	swi	r4, r28, 16
    d8b4:	e893000c 	lwi	r4, r19, 12
    d8b8:	be070038 	beqid	r7, 56		// d8f0
    d8bc:	f89c0014 	swi	r4, r28, 20
    d8c0:	309c0018 	addik	r4, r28, 24
    d8c4:	b810fda0 	brid	-608		// d664
    d8c8:	30d30010 	addik	r6, r19, 16
    d8cc:	e8b30010 	lwi	r5, r19, 16
    d8d0:	307c0020 	addik	r3, r28, 32
    d8d4:	30930018 	addik	r4, r19, 24
    d8d8:	f8bc0018 	swi	r5, r28, 24
    d8dc:	e8b30014 	lwi	r5, r19, 20
    d8e0:	b810fb0c 	brid	-1268		// d3ec
    d8e4:	f8bc001c 	swi	r5, r28, 28
    d8e8:	b810fed8 	brid	-296		// d7c0
    d8ec:	10930000 	addk	r4, r19, r0
    d8f0:	e8b30010 	lwi	r5, r19, 16
    d8f4:	309c0020 	addik	r4, r28, 32
    d8f8:	30d30018 	addik	r6, r19, 24
    d8fc:	f8bc0018 	swi	r5, r28, 24
    d900:	e8b30014 	lwi	r5, r19, 20
    d904:	b810fd60 	brid	-672		// d664
    d908:	f8bc001c 	swi	r5, r28, 28
    d90c:	10b70000 	addk	r5, r23, r0
    d910:	b9f4f7b4 	brlid	r15, -2124	// d0c4 <memmove>
    d914:	10d30000 	addk	r6, r19, r0
    d918:	b810fec4 	brid	-316		// d7dc
    d91c:	1496c800 	rsubk	r4, r22, r25
    d920:	e8730008 	lwi	r3, r19, 8
    d924:	a8e70024 	xori	r7, r7, 36
    d928:	f87c0010 	swi	r3, r28, 16
    d92c:	e873000c 	lwi	r3, r19, 12
    d930:	be070014 	beqid	r7, 20		// d944
    d934:	f87c0014 	swi	r3, r28, 20
    d938:	307c0018 	addik	r3, r28, 24
    d93c:	b810fe84 	brid	-380		// d7c0
    d940:	30930010 	addik	r4, r19, 16
    d944:	e8b30010 	lwi	r5, r19, 16
    d948:	307c0020 	addik	r3, r28, 32
    d94c:	30930018 	addik	r4, r19, 24
    d950:	f8bc0018 	swi	r5, r28, 24
    d954:	e8b30014 	lwi	r5, r19, 20
    d958:	b810fe68 	brid	-408		// d7c0
    d95c:	f8bc001c 	swi	r5, r28, 28

0000d960 <cleanup_glue>:
    d960:	3021ffdc 	addik	r1, r1, -36
    d964:	fa61001c 	swi	r19, r1, 28
    d968:	fac10020 	swi	r22, r1, 32
    d96c:	f9e10000 	swi	r15, r1, 0
    d970:	12660000 	addk	r19, r6, r0
    d974:	e8c60000 	lwi	r6, r6, 0
    d978:	be060010 	beqid	r6, 16		// d988
    d97c:	12c50000 	addk	r22, r5, r0
    d980:	b9f4ffe0 	brlid	r15, -32	// d960 <cleanup_glue>
    d984:	80000000 	or	r0, r0, r0
    d988:	10b60000 	addk	r5, r22, r0
    d98c:	b9f49978 	brlid	r15, -26248	// 7304 <_free_r>
    d990:	10d30000 	addk	r6, r19, r0
    d994:	e9e10000 	lwi	r15, r1, 0
    d998:	ea61001c 	lwi	r19, r1, 28
    d99c:	eac10020 	lwi	r22, r1, 32
    d9a0:	b60f0008 	rtsd	r15, 8
    d9a4:	30210024 	addik	r1, r1, 36

0000d9a8 <_reclaim_reent>:
    d9a8:	b0000001 	imm	1
    d9ac:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    d9b0:	3021ffd8 	addik	r1, r1, -40
    d9b4:	fac10020 	swi	r22, r1, 32
    d9b8:	f9e10000 	swi	r15, r1, 0
    d9bc:	fa61001c 	swi	r19, r1, 28
    d9c0:	fae10024 	swi	r23, r1, 36
    d9c4:	88651800 	xor	r3, r5, r3
    d9c8:	be0300fc 	beqid	r3, 252		// dac4
    d9cc:	12c50000 	addk	r22, r5, r0
    d9d0:	e8650024 	lwi	r3, r5, 36
    d9d4:	bc030070 	beqi	r3, 112		// da44
    d9d8:	e8e3000c 	lwi	r7, r3, 12
    d9dc:	bc070058 	beqi	r7, 88		// da34
    d9e0:	10600000 	addk	r3, r0, r0
    d9e4:	12e30000 	addk	r23, r3, r0
    d9e8:	10631800 	addk	r3, r3, r3
    d9ec:	10631800 	addk	r3, r3, r3
    d9f0:	c8c33800 	lw	r6, r3, r7
    d9f4:	bc060020 	beqi	r6, 32		// da14
    d9f8:	10b60000 	addk	r5, r22, r0
    d9fc:	b9f49908 	brlid	r15, -26360	// 7304 <_free_r>
    da00:	ea660000 	lwi	r19, r6, 0
    da04:	be33fff4 	bneid	r19, -12		// d9f8
    da08:	10d30000 	addk	r6, r19, r0
    da0c:	e8760024 	lwi	r3, r22, 36
    da10:	e8e3000c 	lwi	r7, r3, 12
    da14:	32f70001 	addik	r23, r23, 1
    da18:	a8970020 	xori	r4, r23, 32
    da1c:	be24ffcc 	bneid	r4, -52		// d9e8
    da20:	10770000 	addk	r3, r23, r0
    da24:	10b60000 	addk	r5, r22, r0
    da28:	b9f498dc 	brlid	r15, -26404	// 7304 <_free_r>
    da2c:	10c70000 	addk	r6, r7, r0
    da30:	e8760024 	lwi	r3, r22, 36
    da34:	e8c30000 	lwi	r6, r3, 0
    da38:	bc06000c 	beqi	r6, 12		// da44
    da3c:	b9f498c8 	brlid	r15, -26424	// 7304 <_free_r>
    da40:	10b60000 	addk	r5, r22, r0
    da44:	e8d60014 	lwi	r6, r22, 20
    da48:	bc06000c 	beqi	r6, 12		// da54
    da4c:	b9f498b8 	brlid	r15, -26440	// 7304 <_free_r>
    da50:	10b60000 	addk	r5, r22, r0
    da54:	e8d60024 	lwi	r6, r22, 36
    da58:	bc06000c 	beqi	r6, 12		// da64
    da5c:	b9f498a8 	brlid	r15, -26456	// 7304 <_free_r>
    da60:	10b60000 	addk	r5, r22, r0
    da64:	e8d60038 	lwi	r6, r22, 56
    da68:	bc06000c 	beqi	r6, 12		// da74
    da6c:	b9f49898 	brlid	r15, -26472	// 7304 <_free_r>
    da70:	10b60000 	addk	r5, r22, r0
    da74:	e8d6003c 	lwi	r6, r22, 60
    da78:	bc06000c 	beqi	r6, 12		// da84
    da7c:	b9f49888 	brlid	r15, -26488	// 7304 <_free_r>
    da80:	10b60000 	addk	r5, r22, r0
    da84:	e8d60040 	lwi	r6, r22, 64
    da88:	bc06000c 	beqi	r6, 12		// da94
    da8c:	b9f49878 	brlid	r15, -26504	// 7304 <_free_r>
    da90:	10b60000 	addk	r5, r22, r0
    da94:	e8760048 	lwi	r3, r22, 72
    da98:	bc030014 	beqi	r3, 20		// daac
    da9c:	e8c30088 	lwi	r6, r3, 136
    daa0:	bc06000c 	beqi	r6, 12		// daac
    daa4:	b9f49860 	brlid	r15, -26528	// 7304 <_free_r>
    daa8:	10b60000 	addk	r5, r22, r0
    daac:	e8d60034 	lwi	r6, r22, 52
    dab0:	bc06000c 	beqi	r6, 12		// dabc
    dab4:	b9f49850 	brlid	r15, -26544	// 7304 <_free_r>
    dab8:	10b60000 	addk	r5, r22, r0
    dabc:	e8760018 	lwi	r3, r22, 24
    dac0:	bc23001c 	bnei	r3, 28		// dadc
    dac4:	e9e10000 	lwi	r15, r1, 0
    dac8:	ea61001c 	lwi	r19, r1, 28
    dacc:	eac10020 	lwi	r22, r1, 32
    dad0:	eae10024 	lwi	r23, r1, 36
    dad4:	b60f0008 	rtsd	r15, 8
    dad8:	30210028 	addik	r1, r1, 40
    dadc:	e8760028 	lwi	r3, r22, 40
    dae0:	99fc1800 	brald	r15, r3
    dae4:	10b60000 	addk	r5, r22, r0
    dae8:	e8d600d8 	lwi	r6, r22, 216
    daec:	be06ffdc 	beqid	r6, -36		// dac8
    daf0:	e9e10000 	lwi	r15, r1, 0
    daf4:	b9f4fe6c 	brlid	r15, -404	// d960 <cleanup_glue>
    daf8:	10b60000 	addk	r5, r22, r0
    dafc:	e9e10000 	lwi	r15, r1, 0
    db00:	ea61001c 	lwi	r19, r1, 28
    db04:	eac10020 	lwi	r22, r1, 32
    db08:	eae10024 	lwi	r23, r1, 36
    db0c:	b60f0008 	rtsd	r15, 8
    db10:	30210028 	addik	r1, r1, 40

0000db14 <_wrapup_reent>:
    db14:	3021ffd8 	addik	r1, r1, -40
    db18:	fae10024 	swi	r23, r1, 36
    db1c:	f9e10000 	swi	r15, r1, 0
    db20:	fa61001c 	swi	r19, r1, 28
    db24:	fac10020 	swi	r22, r1, 32
    db28:	be050070 	beqid	r5, 112		// db98
    db2c:	12e50000 	addk	r23, r5, r0
    db30:	e8770048 	lwi	r3, r23, 72
    db34:	bc030038 	beqi	r3, 56		// db6c
    db38:	eac30004 	lwi	r22, r3, 4
    db3c:	3276ffff 	addik	r19, r22, -1
    db40:	be53002c 	bltid	r19, 44		// db6c
    db44:	32d60001 	addik	r22, r22, 1
    db48:	12d6b000 	addk	r22, r22, r22
    db4c:	12d6b000 	addk	r22, r22, r22
    db50:	12c3b000 	addk	r22, r3, r22
    db54:	e8760000 	lwi	r3, r22, 0
    db58:	3273ffff 	addik	r19, r19, -1
    db5c:	99fc1800 	brald	r15, r3
    db60:	32d6fffc 	addik	r22, r22, -4
    db64:	a873ffff 	xori	r3, r19, -1
    db68:	bc23ffec 	bnei	r3, -20		// db54
    db6c:	e8770028 	lwi	r3, r23, 40
    db70:	be030014 	beqid	r3, 20		// db84
    db74:	e9e10000 	lwi	r15, r1, 0
    db78:	99fc1800 	brald	r15, r3
    db7c:	10b70000 	addk	r5, r23, r0
    db80:	e9e10000 	lwi	r15, r1, 0
    db84:	ea61001c 	lwi	r19, r1, 28
    db88:	eac10020 	lwi	r22, r1, 32
    db8c:	eae10024 	lwi	r23, r1, 36
    db90:	b60f0008 	rtsd	r15, 8
    db94:	30210028 	addik	r1, r1, 40
    db98:	b0000001 	imm	1
    db9c:	eae0348c 	lwi	r23, r0, 13452	// 1348c <_impure_ptr>
    dba0:	b810ff94 	brid	-108		// db34
    dba4:	e8770048 	lwi	r3, r23, 72

0000dba8 <__swbuf_r>:
    dba8:	3021ffd8 	addik	r1, r1, -40
    dbac:	fa61001c 	swi	r19, r1, 28
    dbb0:	fac10020 	swi	r22, r1, 32
    dbb4:	fae10024 	swi	r23, r1, 36
    dbb8:	f9e10000 	swi	r15, r1, 0
    dbbc:	12c50000 	addk	r22, r5, r0
    dbc0:	12e60000 	addk	r23, r6, r0
    dbc4:	be050010 	beqid	r5, 16		// dbd4
    dbc8:	12670000 	addk	r19, r7, r0
    dbcc:	e8650018 	lwi	r3, r5, 24
    dbd0:	bc030168 	beqi	r3, 360		// dd38
    dbd4:	b0000001 	imm	1
    dbd8:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    dbdc:	88731800 	xor	r3, r19, r3
    dbe0:	bc030170 	beqi	r3, 368		// dd50
    dbe4:	b0000001 	imm	1
    dbe8:	30602c40 	addik	r3, r0, 11328	// 12c40 <__sf_fake_stdout>
    dbec:	88731800 	xor	r3, r19, r3
    dbf0:	bc030168 	beqi	r3, 360		// dd58
    dbf4:	b0000001 	imm	1
    dbf8:	30602c20 	addik	r3, r0, 11296	// 12c20 <__sf_fake_stderr>
    dbfc:	88731800 	xor	r3, r19, r3
    dc00:	bc030160 	beqi	r3, 352		// dd60
    dc04:	e493000c 	lhui	r4, r19, 12
    dc08:	e8b30018 	lwi	r5, r19, 24
    dc0c:	90840061 	sext16	r4, r4
    dc10:	a4640008 	andi	r3, r4, 8
    dc14:	90630061 	sext16	r3, r3
    dc18:	be0300fc 	beqid	r3, 252		// dd14
    dc1c:	f8b30008 	swi	r5, r19, 8
    dc20:	e8730010 	lwi	r3, r19, 16
    dc24:	be0300f4 	beqid	r3, 244		// dd18
    dc28:	10b60000 	addk	r5, r22, r0
    dc2c:	a4a42000 	andi	r5, r4, 8192
    dc30:	90a50061 	sext16	r5, r5
    dc34:	be05007c 	beqid	r5, 124		// dcb0
    dc38:	a6f700ff 	andi	r23, r23, 255
    dc3c:	e8930000 	lwi	r4, r19, 0
    dc40:	e8b30014 	lwi	r5, r19, 20
    dc44:	14632000 	rsubk	r3, r3, r4
    dc48:	14a51801 	cmp	r5, r5, r3
    dc4c:	bea50094 	bgeid	r5, 148		// dce0
    dc50:	10b60000 	addk	r5, r22, r0
    dc54:	30630001 	addik	r3, r3, 1
    dc58:	e8d30008 	lwi	r6, r19, 8
    dc5c:	30a40001 	addik	r5, r4, 1
    dc60:	30c6ffff 	addik	r6, r6, -1
    dc64:	f8d30008 	swi	r6, r19, 8
    dc68:	f2e40000 	sbi	r23, r4, 0
    dc6c:	e8930014 	lwi	r4, r19, 20
    dc70:	88641800 	xor	r3, r4, r3
    dc74:	be030084 	beqid	r3, 132		// dcf8
    dc78:	f8b30000 	swi	r5, r19, 0
    dc7c:	e473000c 	lhui	r3, r19, 12
    dc80:	a4630001 	andi	r3, r3, 1
    dc84:	be030014 	beqid	r3, 20		// dc98
    dc88:	10770000 	addk	r3, r23, r0
    dc8c:	a877000a 	xori	r3, r23, 10
    dc90:	bc030068 	beqi	r3, 104		// dcf8
    dc94:	10770000 	addk	r3, r23, r0
    dc98:	e9e10000 	lwi	r15, r1, 0
    dc9c:	ea61001c 	lwi	r19, r1, 28
    dca0:	eac10020 	lwi	r22, r1, 32
    dca4:	eae10024 	lwi	r23, r1, 36
    dca8:	b60f0008 	rtsd	r15, 8
    dcac:	30210028 	addik	r1, r1, 40
    dcb0:	e8b30064 	lwi	r5, r19, 100
    dcb4:	a0842000 	ori	r4, r4, 8192
    dcb8:	f493000c 	shi	r4, r19, 12
    dcbc:	a485dfff 	andi	r4, r5, -8193
    dcc0:	f8930064 	swi	r4, r19, 100
    dcc4:	e8930000 	lwi	r4, r19, 0
    dcc8:	e8b30014 	lwi	r5, r19, 20
    dccc:	14632000 	rsubk	r3, r3, r4
    dcd0:	14a51801 	cmp	r5, r5, r3
    dcd4:	be45ff84 	bltid	r5, -124		// dc58
    dcd8:	30630001 	addik	r3, r3, 1
    dcdc:	10b60000 	addk	r5, r22, r0
    dce0:	b9f49028 	brlid	r15, -28632	// 6d08 <_fflush_r>
    dce4:	10d30000 	addk	r6, r19, r0
    dce8:	be230024 	bneid	r3, 36		// dd0c
    dcec:	30600001 	addik	r3, r0, 1
    dcf0:	b810ff68 	brid	-152		// dc58
    dcf4:	e8930000 	lwi	r4, r19, 0
    dcf8:	10b60000 	addk	r5, r22, r0
    dcfc:	b9f4900c 	brlid	r15, -28660	// 6d08 <_fflush_r>
    dd00:	10d30000 	addk	r6, r19, r0
    dd04:	be03ff94 	beqid	r3, -108		// dc98
    dd08:	10770000 	addk	r3, r23, r0
    dd0c:	b810ff88 	brid	-120		// dc94
    dd10:	32e0ffff 	addik	r23, r0, -1
    dd14:	10b60000 	addk	r5, r22, r0
    dd18:	b000ffff 	imm	-1
    dd1c:	b9f4689c 	brlid	r15, 26780	// 45b8 <__swsetup_r>
    dd20:	10d30000 	addk	r6, r19, r0
    dd24:	bc23ffe8 	bnei	r3, -24		// dd0c
    dd28:	e493000c 	lhui	r4, r19, 12
    dd2c:	e8730010 	lwi	r3, r19, 16
    dd30:	b810fefc 	brid	-260		// dc2c
    dd34:	90840061 	sext16	r4, r4
    dd38:	b9f49248 	brlid	r15, -28088	// 6f80 <__sinit>
    dd3c:	80000000 	or	r0, r0, r0
    dd40:	b0000001 	imm	1
    dd44:	30602c60 	addik	r3, r0, 11360	// 12c60 <__sf_fake_stdin>
    dd48:	88731800 	xor	r3, r19, r3
    dd4c:	bc23fe98 	bnei	r3, -360		// dbe4
    dd50:	b810feb4 	brid	-332		// dc04
    dd54:	ea760004 	lwi	r19, r22, 4
    dd58:	b810feac 	brid	-340		// dc04
    dd5c:	ea760008 	lwi	r19, r22, 8
    dd60:	b810fea4 	brid	-348		// dc04
    dd64:	ea76000c 	lwi	r19, r22, 12

0000dd68 <__swbuf>:
    dd68:	10650000 	addk	r3, r5, r0
    dd6c:	10e60000 	addk	r7, r6, r0
    dd70:	b0000001 	imm	1
    dd74:	e8a0348c 	lwi	r5, r0, 13452	// 1348c <_impure_ptr>
    dd78:	3021ffe4 	addik	r1, r1, -28
    dd7c:	f9e10000 	swi	r15, r1, 0
    dd80:	b9f4fe28 	brlid	r15, -472	// dba8 <__swbuf_r>
    dd84:	10c30000 	addk	r6, r3, r0
    dd88:	e9e10000 	lwi	r15, r1, 0
    dd8c:	b60f0008 	rtsd	r15, 8
    dd90:	3021001c 	addik	r1, r1, 28

0000dd94 <_wcrtomb_r>:
    dd94:	3021ffc4 	addik	r1, r1, -60
    dd98:	fa61002c 	swi	r19, r1, 44
    dd9c:	fac10030 	swi	r22, r1, 48
    dda0:	fae10034 	swi	r23, r1, 52
    dda4:	fb010038 	swi	r24, r1, 56
    dda8:	f9e10000 	swi	r15, r1, 0
    ddac:	12660000 	addk	r19, r6, r0
    ddb0:	12c50000 	addk	r22, r5, r0
    ddb4:	b0000001 	imm	1
    ddb8:	eb003a0c 	lwi	r24, r0, 14860	// 13a0c <__wctomb>
    ddbc:	be060060 	beqid	r6, 96		// de1c
    ddc0:	12e80000 	addk	r23, r8, r0
    ddc4:	b9f49b80 	brlid	r15, -25728	// 7944 <__locale_charset>
    ddc8:	f8e10028 	swi	r7, r1, 40
    ddcc:	10b60000 	addk	r5, r22, r0
    ddd0:	10d30000 	addk	r6, r19, r0
    ddd4:	e8e10028 	lwi	r7, r1, 40
    ddd8:	11030000 	addk	r8, r3, r0
    dddc:	99fcc000 	brald	r15, r24
    dde0:	11370000 	addk	r9, r23, r0
    dde4:	a883ffff 	xori	r4, r3, -1
    dde8:	be24001c 	bneid	r4, 28		// de04
    ddec:	e9e10000 	lwi	r15, r1, 0
    ddf0:	3060008a 	addik	r3, r0, 138
    ddf4:	f8970000 	swi	r4, r23, 0
    ddf8:	f8760000 	swi	r3, r22, 0
    ddfc:	3060ffff 	addik	r3, r0, -1
    de00:	e9e10000 	lwi	r15, r1, 0
    de04:	ea61002c 	lwi	r19, r1, 44
    de08:	eac10030 	lwi	r22, r1, 48
    de0c:	eae10034 	lwi	r23, r1, 52
    de10:	eb010038 	lwi	r24, r1, 56
    de14:	b60f0008 	rtsd	r15, 8
    de18:	3021003c 	addik	r1, r1, 60
    de1c:	b9f49b28 	brlid	r15, -25816	// 7944 <__locale_charset>
    de20:	80000000 	or	r0, r0, r0
    de24:	10b60000 	addk	r5, r22, r0
    de28:	10f30000 	addk	r7, r19, r0
    de2c:	11030000 	addk	r8, r3, r0
    de30:	11370000 	addk	r9, r23, r0
    de34:	99fcc000 	brald	r15, r24
    de38:	30c1001c 	addik	r6, r1, 28
    de3c:	b810ffac 	brid	-84		// dde8
    de40:	a883ffff 	xori	r4, r3, -1

0000de44 <wcrtomb>:
    de44:	3021ffc4 	addik	r1, r1, -60
    de48:	fa610028 	swi	r19, r1, 40
    de4c:	fac1002c 	swi	r22, r1, 44
    de50:	f9e10000 	swi	r15, r1, 0
    de54:	fae10030 	swi	r23, r1, 48
    de58:	fb010034 	swi	r24, r1, 52
    de5c:	fb210038 	swi	r25, r1, 56
    de60:	12650000 	addk	r19, r5, r0
    de64:	be05007c 	beqid	r5, 124		// dee0
    de68:	12c70000 	addk	r22, r7, r0
    de6c:	b0000001 	imm	1
    de70:	eb20348c 	lwi	r25, r0, 13452	// 1348c <_impure_ptr>
    de74:	b0000001 	imm	1
    de78:	eb003a0c 	lwi	r24, r0, 14860	// 13a0c <__wctomb>
    de7c:	b9f49ac8 	brlid	r15, -25912	// 7944 <__locale_charset>
    de80:	12e60000 	addk	r23, r6, r0
    de84:	10b90000 	addk	r5, r25, r0
    de88:	10d30000 	addk	r6, r19, r0
    de8c:	10f70000 	addk	r7, r23, r0
    de90:	11030000 	addk	r8, r3, r0
    de94:	99fcc000 	brald	r15, r24
    de98:	11360000 	addk	r9, r22, r0
    de9c:	a883ffff 	xori	r4, r3, -1
    dea0:	be240024 	bneid	r4, 36		// dec4
    dea4:	e9e10000 	lwi	r15, r1, 0
    dea8:	b0000001 	imm	1
    deac:	e860348c 	lwi	r3, r0, 13452	// 1348c <_impure_ptr>
    deb0:	f8960000 	swi	r4, r22, 0
    deb4:	3080008a 	addik	r4, r0, 138
    deb8:	f8830000 	swi	r4, r3, 0
    debc:	3060ffff 	addik	r3, r0, -1
    dec0:	e9e10000 	lwi	r15, r1, 0
    dec4:	ea610028 	lwi	r19, r1, 40
    dec8:	eac1002c 	lwi	r22, r1, 44
    decc:	eae10030 	lwi	r23, r1, 48
    ded0:	eb010034 	lwi	r24, r1, 52
    ded4:	eb210038 	lwi	r25, r1, 56
    ded8:	b60f0008 	rtsd	r15, 8
    dedc:	3021003c 	addik	r1, r1, 60
    dee0:	b0000001 	imm	1
    dee4:	eb00348c 	lwi	r24, r0, 13452	// 1348c <_impure_ptr>
    dee8:	b0000001 	imm	1
    deec:	eae03a0c 	lwi	r23, r0, 14860	// 13a0c <__wctomb>
    def0:	b9f49a54 	brlid	r15, -26028	// 7944 <__locale_charset>
    def4:	80000000 	or	r0, r0, r0
    def8:	10b80000 	addk	r5, r24, r0
    defc:	10f30000 	addk	r7, r19, r0
    df00:	11030000 	addk	r8, r3, r0
    df04:	11360000 	addk	r9, r22, r0
    df08:	99fcb800 	brald	r15, r23
    df0c:	30c1001c 	addik	r6, r1, 28
    df10:	b810ff90 	brid	-112		// dea0
    df14:	a883ffff 	xori	r4, r3, -1

0000df18 <__ascii_wctomb>:
    df18:	bc06001c 	beqi	r6, 28		// df34
    df1c:	306000ff 	addik	r3, r0, 255
    df20:	14671803 	cmpu	r3, r7, r3
    df24:	bc430018 	blti	r3, 24		// df3c
    df28:	f0e60000 	sbi	r7, r6, 0
    df2c:	b60f0008 	rtsd	r15, 8
    df30:	30600001 	addik	r3, r0, 1
    df34:	b60f0008 	rtsd	r15, 8
    df38:	10660000 	addk	r3, r6, r0
    df3c:	3060008a 	addik	r3, r0, 138
    df40:	f8650000 	swi	r3, r5, 0
    df44:	b60f0008 	rtsd	r15, 8
    df48:	3060ffff 	addik	r3, r0, -1

0000df4c <_wctomb_r>:
    df4c:	3021ffd0 	addik	r1, r1, -48
    df50:	fac1002c 	swi	r22, r1, 44
    df54:	12c80000 	addk	r22, r8, r0
    df58:	f9e10000 	swi	r15, r1, 0
    df5c:	fa610028 	swi	r19, r1, 40
    df60:	f8a1001c 	swi	r5, r1, 28
    df64:	b0000001 	imm	1
    df68:	ea603a0c 	lwi	r19, r0, 14860	// 13a0c <__wctomb>
    df6c:	f8c10020 	swi	r6, r1, 32
    df70:	b9f499d4 	brlid	r15, -26156	// 7944 <__locale_charset>
    df74:	f8e10024 	swi	r7, r1, 36
    df78:	11360000 	addk	r9, r22, r0
    df7c:	e8a1001c 	lwi	r5, r1, 28
    df80:	e8c10020 	lwi	r6, r1, 32
    df84:	e8e10024 	lwi	r7, r1, 36
    df88:	99fc9800 	brald	r15, r19
    df8c:	11030000 	addk	r8, r3, r0
    df90:	e9e10000 	lwi	r15, r1, 0
    df94:	ea610028 	lwi	r19, r1, 40
    df98:	eac1002c 	lwi	r22, r1, 44
    df9c:	b60f0008 	rtsd	r15, 8
    dfa0:	30210030 	addik	r1, r1, 48

0000dfa4 <__udivdi3>:
    dfa4:	3021ffb8 	addik	r1, r1, -72
    dfa8:	fa610020 	swi	r19, r1, 32
    dfac:	fac10024 	swi	r22, r1, 36
    dfb0:	fae10028 	swi	r23, r1, 40
    dfb4:	f9e10000 	swi	r15, r1, 0
    dfb8:	fb01002c 	swi	r24, r1, 44
    dfbc:	fb210030 	swi	r25, r1, 48
    dfc0:	fb410034 	swi	r26, r1, 52
    dfc4:	fb610038 	swi	r27, r1, 56
    dfc8:	fb81003c 	swi	r28, r1, 60
    dfcc:	fba10040 	swi	r29, r1, 64
    dfd0:	fbc10044 	swi	r30, r1, 68
    dfd4:	12c50000 	addk	r22, r5, r0
    dfd8:	12e60000 	addk	r23, r6, r0
    dfdc:	12680000 	addk	r19, r8, r0
    dfe0:	be270304 	bneid	r7, 772		// e2e4
    dfe4:	10680000 	addk	r3, r8, r0
    dfe8:	14882803 	cmpu	r4, r8, r5
    dfec:	bea4037c 	bgeid	r4, 892		// e368
    dff0:	13060000 	addk	r24, r6, r0
    dff4:	b0000000 	imm	0
    dff8:	3080ffff 	addik	r4, r0, -1
    dffc:	14882003 	cmpu	r4, r8, r4
    e000:	bea40670 	bgeid	r4, 1648		// e670
    e004:	13250000 	addk	r25, r5, r0
    e008:	b00000ff 	imm	255
    e00c:	3080ffff 	addik	r4, r0, -1
    e010:	14882003 	cmpu	r4, r8, r4
    e014:	be440b44 	bltid	r4, 2884		// eb58
    e018:	30e00018 	addik	r7, r0, 24	// 18 <_.d3>
    e01c:	30e00010 	addik	r7, r0, 16	// 10 <_.d1>
    e020:	10a70000 	addk	r5, r7, r0
    e024:	a647001f 	andi	r18, r7, 31
    e028:	10801800 	addk	r4, r0, r3
    e02c:	be120014 	beqid	r18, 20		// e040
    e030:	10840000 	addk	r4, r4, r0
    e034:	3252ffff 	addik	r18, r18, -1
    e038:	be32fffc 	bneid	r18, -4		// e034
    e03c:	90840041 	srl	r4, r4
    e040:	b0000001 	imm	1
    e044:	e0842f80 	lbui	r4, r4, 12160
    e048:	30c00020 	addik	r6, r0, 32
    e04c:	10a42800 	addk	r5, r4, r5
    e050:	14853000 	rsubk	r4, r5, r6
    e054:	bc040078 	beqi	r4, 120		// e0cc
    e058:	a644001f 	andi	r18, r4, 31
    e05c:	1320b000 	addk	r25, r0, r22
    e060:	be120014 	beqid	r18, 20		// e074
    e064:	13390000 	addk	r25, r25, r0
    e068:	3252ffff 	addik	r18, r18, -1
    e06c:	be32fffc 	bneid	r18, -4		// e068
    e070:	1339c800 	addk	r25, r25, r25
    e074:	a645001f 	andi	r18, r5, 31
    e078:	10c0b800 	addk	r6, r0, r23
    e07c:	be120014 	beqid	r18, 20		// e090
    e080:	10c60000 	addk	r6, r6, r0
    e084:	3252ffff 	addik	r18, r18, -1
    e088:	be32fffc 	bneid	r18, -4		// e084
    e08c:	90c60041 	srl	r6, r6
    e090:	83393000 	or	r25, r25, r6
    e094:	a644001f 	andi	r18, r4, 31
    e098:	12601800 	addk	r19, r0, r3
    e09c:	be120014 	beqid	r18, 20		// e0b0
    e0a0:	12730000 	addk	r19, r19, r0
    e0a4:	3252ffff 	addik	r18, r18, -1
    e0a8:	be32fffc 	bneid	r18, -4		// e0a4
    e0ac:	12739800 	addk	r19, r19, r19
    e0b0:	a644001f 	andi	r18, r4, 31
    e0b4:	1300b800 	addk	r24, r0, r23
    e0b8:	be120014 	beqid	r18, 20		// e0cc
    e0bc:	13180000 	addk	r24, r24, r0
    e0c0:	3252ffff 	addik	r18, r18, -1
    e0c4:	be32fffc 	bneid	r18, -4		// e0c0
    e0c8:	1318c000 	addk	r24, r24, r24
    e0cc:	12e09800 	addk	r23, r0, r19
    e0d0:	92f30041 	srl	r23, r19
    e0d4:	92f70041 	srl	r23, r23
    e0d8:	92f70041 	srl	r23, r23
    e0dc:	92f70041 	srl	r23, r23
    e0e0:	92f70041 	srl	r23, r23
    e0e4:	92f70041 	srl	r23, r23
    e0e8:	92f70041 	srl	r23, r23
    e0ec:	92f70041 	srl	r23, r23
    e0f0:	92f70041 	srl	r23, r23
    e0f4:	92f70041 	srl	r23, r23
    e0f8:	92f70041 	srl	r23, r23
    e0fc:	92f70041 	srl	r23, r23
    e100:	92f70041 	srl	r23, r23
    e104:	92f70041 	srl	r23, r23
    e108:	92f70041 	srl	r23, r23
    e10c:	92f70041 	srl	r23, r23
    e110:	10b90000 	addk	r5, r25, r0
    e114:	b0000000 	imm	0
    e118:	a753ffff 	andi	r26, r19, -1
    e11c:	b9f4397c 	brlid	r15, 14716	// 11a98 <__umodsi3>
    e120:	10d70000 	addk	r6, r23, r0
    e124:	10b90000 	addk	r5, r25, r0
    e128:	10d70000 	addk	r6, r23, r0
    e12c:	b9f438c4 	brlid	r15, 14532	// 119f0 <__udivsi3>
    e130:	13630000 	addk	r27, r3, r0
    e134:	10a30000 	addk	r5, r3, r0
    e138:	10da0000 	addk	r6, r26, r0
    e13c:	b9f4385c 	brlid	r15, 14428	// 11998 <__mulsi3>
    e140:	12c30000 	addk	r22, r3, r0
    e144:	109bd800 	addk	r4, r27, r27
    e148:	10842000 	addk	r4, r4, r4
    e14c:	10842000 	addk	r4, r4, r4
    e150:	10842000 	addk	r4, r4, r4
    e154:	10842000 	addk	r4, r4, r4
    e158:	10842000 	addk	r4, r4, r4
    e15c:	10842000 	addk	r4, r4, r4
    e160:	10842000 	addk	r4, r4, r4
    e164:	10842000 	addk	r4, r4, r4
    e168:	10842000 	addk	r4, r4, r4
    e16c:	10842000 	addk	r4, r4, r4
    e170:	10842000 	addk	r4, r4, r4
    e174:	10842000 	addk	r4, r4, r4
    e178:	10842000 	addk	r4, r4, r4
    e17c:	10a30000 	addk	r5, r3, r0
    e180:	10842000 	addk	r4, r4, r4
    e184:	10842000 	addk	r4, r4, r4
    e188:	1060c000 	addk	r3, r0, r24
    e18c:	90780041 	srl	r3, r24
    e190:	90630041 	srl	r3, r3
    e194:	90630041 	srl	r3, r3
    e198:	90630041 	srl	r3, r3
    e19c:	90630041 	srl	r3, r3
    e1a0:	90630041 	srl	r3, r3
    e1a4:	90630041 	srl	r3, r3
    e1a8:	90630041 	srl	r3, r3
    e1ac:	90630041 	srl	r3, r3
    e1b0:	90630041 	srl	r3, r3
    e1b4:	90630041 	srl	r3, r3
    e1b8:	90630041 	srl	r3, r3
    e1bc:	90630041 	srl	r3, r3
    e1c0:	90630041 	srl	r3, r3
    e1c4:	90630041 	srl	r3, r3
    e1c8:	90630041 	srl	r3, r3
    e1cc:	80841800 	or	r4, r4, r3
    e1d0:	14652003 	cmpu	r3, r5, r4
    e1d4:	bca30024 	bgei	r3, 36		// e1f8
    e1d8:	10849800 	addk	r4, r4, r19
    e1dc:	14732003 	cmpu	r3, r19, r4
    e1e0:	be430014 	bltid	r3, 20		// e1f4
    e1e4:	30d6ffff 	addik	r6, r22, -1
    e1e8:	14652003 	cmpu	r3, r5, r4
    e1ec:	be430cb4 	bltid	r3, 3252		// eea0
    e1f0:	32d6fffe 	addik	r22, r22, -2
    e1f4:	12c60000 	addk	r22, r6, r0
    e1f8:	17652000 	rsubk	r27, r5, r4
    e1fc:	10d70000 	addk	r6, r23, r0
    e200:	b0000000 	imm	0
    e204:	a718ffff 	andi	r24, r24, -1
    e208:	b9f43890 	brlid	r15, 14480	// 11a98 <__umodsi3>
    e20c:	10bb0000 	addk	r5, r27, r0
    e210:	10d70000 	addk	r6, r23, r0
    e214:	10bb0000 	addk	r5, r27, r0
    e218:	b9f437d8 	brlid	r15, 14296	// 119f0 <__udivsi3>
    e21c:	13230000 	addk	r25, r3, r0
    e220:	10a30000 	addk	r5, r3, r0
    e224:	10da0000 	addk	r6, r26, r0
    e228:	b9f43770 	brlid	r15, 14192	// 11998 <__mulsi3>
    e22c:	12e30000 	addk	r23, r3, r0
    e230:	1099c800 	addk	r4, r25, r25
    e234:	10842000 	addk	r4, r4, r4
    e238:	10842000 	addk	r4, r4, r4
    e23c:	10842000 	addk	r4, r4, r4
    e240:	10842000 	addk	r4, r4, r4
    e244:	10842000 	addk	r4, r4, r4
    e248:	10842000 	addk	r4, r4, r4
    e24c:	10842000 	addk	r4, r4, r4
    e250:	10842000 	addk	r4, r4, r4
    e254:	10842000 	addk	r4, r4, r4
    e258:	10842000 	addk	r4, r4, r4
    e25c:	10842000 	addk	r4, r4, r4
    e260:	10842000 	addk	r4, r4, r4
    e264:	10842000 	addk	r4, r4, r4
    e268:	10842000 	addk	r4, r4, r4
    e26c:	10842000 	addk	r4, r4, r4
    e270:	8084c000 	or	r4, r4, r24
    e274:	14a32003 	cmpu	r5, r3, r4
    e278:	bca50020 	bgei	r5, 32		// e298
    e27c:	10849800 	addk	r4, r4, r19
    e280:	16732003 	cmpu	r19, r19, r4
    e284:	be530bac 	bltid	r19, 2988		// ee30
    e288:	30b7ffff 	addik	r5, r23, -1
    e28c:	14832003 	cmpu	r4, r3, r4
    e290:	bea40ba0 	bgeid	r4, 2976		// ee30
    e294:	32f7fffe 	addik	r23, r23, -2
    e298:	1096b000 	addk	r4, r22, r22
    e29c:	10842000 	addk	r4, r4, r4
    e2a0:	10842000 	addk	r4, r4, r4
    e2a4:	10842000 	addk	r4, r4, r4
    e2a8:	10842000 	addk	r4, r4, r4
    e2ac:	10842000 	addk	r4, r4, r4
    e2b0:	10842000 	addk	r4, r4, r4
    e2b4:	10842000 	addk	r4, r4, r4
    e2b8:	10842000 	addk	r4, r4, r4
    e2bc:	10842000 	addk	r4, r4, r4
    e2c0:	10842000 	addk	r4, r4, r4
    e2c4:	10842000 	addk	r4, r4, r4
    e2c8:	10842000 	addk	r4, r4, r4
    e2cc:	10842000 	addk	r4, r4, r4
    e2d0:	10842000 	addk	r4, r4, r4
    e2d4:	10842000 	addk	r4, r4, r4
    e2d8:	80972000 	or	r4, r23, r4
    e2dc:	b8100334 	brid	820		// e610
    e2e0:	12e00000 	addk	r23, r0, r0
    e2e4:	14872803 	cmpu	r4, r7, r5
    e2e8:	be440324 	bltid	r4, 804		// e60c
    e2ec:	10800000 	addk	r4, r0, r0
    e2f0:	b0000000 	imm	0
    e2f4:	3080ffff 	addik	r4, r0, -1
    e2f8:	14872003 	cmpu	r4, r7, r4
    e2fc:	bea4034c 	bgeid	r4, 844		// e648
    e300:	308000ff 	addik	r4, r0, 255
    e304:	b00000ff 	imm	255
    e308:	3080ffff 	addik	r4, r0, -1
    e30c:	14872003 	cmpu	r4, r7, r4
    e310:	be440b28 	bltid	r4, 2856		// ee38
    e314:	30a00018 	addik	r5, r0, 24	// 18 <_.d3>
    e318:	30a00010 	addik	r5, r0, 16	// 10 <_.d1>
    e31c:	11050000 	addk	r8, r5, r0
    e320:	a645001f 	andi	r18, r5, 31
    e324:	10c03800 	addk	r6, r0, r7
    e328:	be120014 	beqid	r18, 20		// e33c
    e32c:	10c60000 	addk	r6, r6, r0
    e330:	3252ffff 	addik	r18, r18, -1
    e334:	be32fffc 	bneid	r18, -4		// e330
    e338:	90c60041 	srl	r6, r6
    e33c:	b0000001 	imm	1
    e340:	e0862f80 	lbui	r4, r6, 12160
    e344:	30a00020 	addik	r5, r0, 32
    e348:	10844000 	addk	r4, r4, r8
    e34c:	16642800 	rsubk	r19, r4, r5
    e350:	bc330338 	bnei	r19, 824		// e688
    e354:	16e3b803 	cmpu	r23, r3, r23
    e358:	be5702a8 	bltid	r23, 680		// e600
    e35c:	30800001 	addik	r4, r0, 1
    e360:	b81002b0 	brid	688		// e610
    e364:	12e00000 	addk	r23, r0, r0
    e368:	be280014 	bneid	r8, 20		// e37c
    e36c:	10c80000 	addk	r6, r8, r0
    e370:	b9f43680 	brlid	r15, 13952	// 119f0 <__udivsi3>
    e374:	30a00001 	addik	r5, r0, 1
    e378:	12630000 	addk	r19, r3, r0
    e37c:	b0000000 	imm	0
    e380:	3060ffff 	addik	r3, r0, -1
    e384:	14731803 	cmpu	r3, r19, r3
    e388:	bea302d4 	bgeid	r3, 724		// e65c
    e38c:	306000ff 	addik	r3, r0, 255
    e390:	b00000ff 	imm	255
    e394:	3060ffff 	addik	r3, r0, -1
    e398:	14731803 	cmpu	r3, r19, r3
    e39c:	be430abc 	bltid	r3, 2748		// ee58
    e3a0:	30600018 	addik	r3, r0, 24	// 18 <_.d3>
    e3a4:	30600010 	addik	r3, r0, 16	// 10 <_.d1>
    e3a8:	10830000 	addk	r4, r3, r0
    e3ac:	a643001f 	andi	r18, r3, 31
    e3b0:	10a09800 	addk	r5, r0, r19
    e3b4:	be120014 	beqid	r18, 20		// e3c8
    e3b8:	10a50000 	addk	r5, r5, r0
    e3bc:	3252ffff 	addik	r18, r18, -1
    e3c0:	be32fffc 	bneid	r18, -4		// e3bc
    e3c4:	90a50041 	srl	r5, r5
    e3c8:	b0000001 	imm	1
    e3cc:	e0652f80 	lbui	r3, r5, 12160
    e3d0:	30a00020 	addik	r5, r0, 32
    e3d4:	10832000 	addk	r4, r3, r4
    e3d8:	14642800 	rsubk	r3, r4, r5
    e3dc:	bc230784 	bnei	r3, 1924		// eb60
    e3e0:	16d3b000 	rsubk	r22, r19, r22
    e3e4:	b0000000 	imm	0
    e3e8:	a753ffff 	andi	r26, r19, -1
    e3ec:	32e00001 	addik	r23, r0, 1
    e3f0:	13209800 	addk	r25, r0, r19
    e3f4:	93330041 	srl	r25, r19
    e3f8:	93390041 	srl	r25, r25
    e3fc:	93390041 	srl	r25, r25
    e400:	93390041 	srl	r25, r25
    e404:	93390041 	srl	r25, r25
    e408:	93390041 	srl	r25, r25
    e40c:	93390041 	srl	r25, r25
    e410:	93390041 	srl	r25, r25
    e414:	93390041 	srl	r25, r25
    e418:	93390041 	srl	r25, r25
    e41c:	93390041 	srl	r25, r25
    e420:	93390041 	srl	r25, r25
    e424:	93390041 	srl	r25, r25
    e428:	93390041 	srl	r25, r25
    e42c:	93390041 	srl	r25, r25
    e430:	93390041 	srl	r25, r25
    e434:	10b60000 	addk	r5, r22, r0
    e438:	b9f43660 	brlid	r15, 13920	// 11a98 <__umodsi3>
    e43c:	10d90000 	addk	r6, r25, r0
    e440:	10b60000 	addk	r5, r22, r0
    e444:	10d90000 	addk	r6, r25, r0
    e448:	b9f435a8 	brlid	r15, 13736	// 119f0 <__udivsi3>
    e44c:	13630000 	addk	r27, r3, r0
    e450:	10a30000 	addk	r5, r3, r0
    e454:	10da0000 	addk	r6, r26, r0
    e458:	b9f43540 	brlid	r15, 13632	// 11998 <__mulsi3>
    e45c:	12c30000 	addk	r22, r3, r0
    e460:	109bd800 	addk	r4, r27, r27
    e464:	10842000 	addk	r4, r4, r4
    e468:	10842000 	addk	r4, r4, r4
    e46c:	10842000 	addk	r4, r4, r4
    e470:	10842000 	addk	r4, r4, r4
    e474:	10842000 	addk	r4, r4, r4
    e478:	10842000 	addk	r4, r4, r4
    e47c:	10842000 	addk	r4, r4, r4
    e480:	10842000 	addk	r4, r4, r4
    e484:	10842000 	addk	r4, r4, r4
    e488:	10842000 	addk	r4, r4, r4
    e48c:	10842000 	addk	r4, r4, r4
    e490:	10842000 	addk	r4, r4, r4
    e494:	10842000 	addk	r4, r4, r4
    e498:	10a30000 	addk	r5, r3, r0
    e49c:	10842000 	addk	r4, r4, r4
    e4a0:	10842000 	addk	r4, r4, r4
    e4a4:	1060c000 	addk	r3, r0, r24
    e4a8:	90780041 	srl	r3, r24
    e4ac:	90630041 	srl	r3, r3
    e4b0:	90630041 	srl	r3, r3
    e4b4:	90630041 	srl	r3, r3
    e4b8:	90630041 	srl	r3, r3
    e4bc:	90630041 	srl	r3, r3
    e4c0:	90630041 	srl	r3, r3
    e4c4:	90630041 	srl	r3, r3
    e4c8:	90630041 	srl	r3, r3
    e4cc:	90630041 	srl	r3, r3
    e4d0:	90630041 	srl	r3, r3
    e4d4:	90630041 	srl	r3, r3
    e4d8:	90630041 	srl	r3, r3
    e4dc:	90630041 	srl	r3, r3
    e4e0:	90630041 	srl	r3, r3
    e4e4:	90630041 	srl	r3, r3
    e4e8:	80841800 	or	r4, r4, r3
    e4ec:	14652003 	cmpu	r3, r5, r4
    e4f0:	bea3002c 	bgeid	r3, 44		// e51c
    e4f4:	17852000 	rsubk	r28, r5, r4
    e4f8:	10849800 	addk	r4, r4, r19
    e4fc:	14732003 	cmpu	r3, r19, r4
    e500:	be430014 	bltid	r3, 20		// e514
    e504:	30d6ffff 	addik	r6, r22, -1
    e508:	14652003 	cmpu	r3, r5, r4
    e50c:	be43098c 	bltid	r3, 2444		// ee98
    e510:	32d6fffe 	addik	r22, r22, -2
    e514:	12c60000 	addk	r22, r6, r0
    e518:	17852000 	rsubk	r28, r5, r4
    e51c:	10d90000 	addk	r6, r25, r0
    e520:	b0000000 	imm	0
    e524:	a718ffff 	andi	r24, r24, -1
    e528:	b9f43570 	brlid	r15, 13680	// 11a98 <__umodsi3>
    e52c:	10bc0000 	addk	r5, r28, r0
    e530:	10d90000 	addk	r6, r25, r0
    e534:	10bc0000 	addk	r5, r28, r0
    e538:	b9f434b8 	brlid	r15, 13496	// 119f0 <__udivsi3>
    e53c:	13630000 	addk	r27, r3, r0
    e540:	10a30000 	addk	r5, r3, r0
    e544:	10da0000 	addk	r6, r26, r0
    e548:	b9f43450 	brlid	r15, 13392	// 11998 <__mulsi3>
    e54c:	13230000 	addk	r25, r3, r0
    e550:	109bd800 	addk	r4, r27, r27
    e554:	10842000 	addk	r4, r4, r4
    e558:	10842000 	addk	r4, r4, r4
    e55c:	10842000 	addk	r4, r4, r4
    e560:	10842000 	addk	r4, r4, r4
    e564:	10842000 	addk	r4, r4, r4
    e568:	10842000 	addk	r4, r4, r4
    e56c:	10842000 	addk	r4, r4, r4
    e570:	10842000 	addk	r4, r4, r4
    e574:	10842000 	addk	r4, r4, r4
    e578:	10842000 	addk	r4, r4, r4
    e57c:	10842000 	addk	r4, r4, r4
    e580:	10842000 	addk	r4, r4, r4
    e584:	10842000 	addk	r4, r4, r4
    e588:	10842000 	addk	r4, r4, r4
    e58c:	10842000 	addk	r4, r4, r4
    e590:	8084c000 	or	r4, r4, r24
    e594:	14a32003 	cmpu	r5, r3, r4
    e598:	bca50020 	bgei	r5, 32		// e5b8
    e59c:	10849800 	addk	r4, r4, r19
    e5a0:	16732003 	cmpu	r19, r19, r4
    e5a4:	be530884 	bltid	r19, 2180		// ee28
    e5a8:	30b9ffff 	addik	r5, r25, -1
    e5ac:	14832003 	cmpu	r4, r3, r4
    e5b0:	bea40878 	bgeid	r4, 2168		// ee28
    e5b4:	3339fffe 	addik	r25, r25, -2
    e5b8:	1096b000 	addk	r4, r22, r22
    e5bc:	10842000 	addk	r4, r4, r4
    e5c0:	10842000 	addk	r4, r4, r4
    e5c4:	10842000 	addk	r4, r4, r4
    e5c8:	10842000 	addk	r4, r4, r4
    e5cc:	10842000 	addk	r4, r4, r4
    e5d0:	10842000 	addk	r4, r4, r4
    e5d4:	10842000 	addk	r4, r4, r4
    e5d8:	10842000 	addk	r4, r4, r4
    e5dc:	10842000 	addk	r4, r4, r4
    e5e0:	10842000 	addk	r4, r4, r4
    e5e4:	10842000 	addk	r4, r4, r4
    e5e8:	10842000 	addk	r4, r4, r4
    e5ec:	10842000 	addk	r4, r4, r4
    e5f0:	10842000 	addk	r4, r4, r4
    e5f4:	10842000 	addk	r4, r4, r4
    e5f8:	b8100018 	brid	24		// e610
    e5fc:	80992000 	or	r4, r25, r4
    e600:	14f63803 	cmpu	r7, r22, r7
    e604:	bc47fd5c 	blti	r7, -676		// e360
    e608:	10800000 	addk	r4, r0, r0
    e60c:	12e40000 	addk	r23, r4, r0
    e610:	10770000 	addk	r3, r23, r0
    e614:	e9e10000 	lwi	r15, r1, 0
    e618:	ea610020 	lwi	r19, r1, 32
    e61c:	eac10024 	lwi	r22, r1, 36
    e620:	eae10028 	lwi	r23, r1, 40
    e624:	eb01002c 	lwi	r24, r1, 44
    e628:	eb210030 	lwi	r25, r1, 48
    e62c:	eb410034 	lwi	r26, r1, 52
    e630:	eb610038 	lwi	r27, r1, 56
    e634:	eb81003c 	lwi	r28, r1, 60
    e638:	eba10040 	lwi	r29, r1, 64
    e63c:	ebc10044 	lwi	r30, r1, 68
    e640:	b60f0008 	rtsd	r15, 8
    e644:	30210048 	addik	r1, r1, 72
    e648:	14872003 	cmpu	r4, r7, r4
    e64c:	bc4407f4 	blti	r4, 2036		// ee40
    e650:	10a00000 	addk	r5, r0, r0
    e654:	b810fccc 	brid	-820		// e320
    e658:	11050000 	addk	r8, r5, r0
    e65c:	14731803 	cmpu	r3, r19, r3
    e660:	bc4307ec 	blti	r3, 2028		// ee4c
    e664:	10600000 	addk	r3, r0, r0
    e668:	b810fd44 	brid	-700		// e3ac
    e66c:	10830000 	addk	r4, r3, r0
    e670:	308000ff 	addik	r4, r0, 255
    e674:	14882003 	cmpu	r4, r8, r4
    e678:	bca404e0 	bgei	r4, 1248		// eb58
    e67c:	30e00008 	addik	r7, r0, 8	// 8 <_.z>
    e680:	b810f9a4 	brid	-1628		// e024
    e684:	10a70000 	addk	r5, r7, r0
    e688:	a644001f 	andi	r18, r4, 31
    e68c:	10a01800 	addk	r5, r0, r3
    e690:	be120014 	beqid	r18, 20		// e6a4
    e694:	10a50000 	addk	r5, r5, r0
    e698:	3252ffff 	addik	r18, r18, -1
    e69c:	be32fffc 	bneid	r18, -4		// e698
    e6a0:	90a50041 	srl	r5, r5
    e6a4:	a653001f 	andi	r18, r19, 31
    e6a8:	13003800 	addk	r24, r0, r7
    e6ac:	be120014 	beqid	r18, 20		// e6c0
    e6b0:	13180000 	addk	r24, r24, r0
    e6b4:	3252ffff 	addik	r18, r18, -1
    e6b8:	be32fffc 	bneid	r18, -4		// e6b4
    e6bc:	1318c000 	addk	r24, r24, r24
    e6c0:	83182800 	or	r24, r24, r5
    e6c4:	a644001f 	andi	r18, r4, 31
    e6c8:	1380b000 	addk	r28, r0, r22
    e6cc:	be120014 	beqid	r18, 20		// e6e0
    e6d0:	139c0000 	addk	r28, r28, r0
    e6d4:	3252ffff 	addik	r18, r18, -1
    e6d8:	be32fffc 	bneid	r18, -4		// e6d4
    e6dc:	939c0041 	srl	r28, r28
    e6e0:	1320c000 	addk	r25, r0, r24
    e6e4:	93380041 	srl	r25, r24
    e6e8:	93390041 	srl	r25, r25
    e6ec:	93390041 	srl	r25, r25
    e6f0:	93390041 	srl	r25, r25
    e6f4:	93390041 	srl	r25, r25
    e6f8:	93390041 	srl	r25, r25
    e6fc:	93390041 	srl	r25, r25
    e700:	93390041 	srl	r25, r25
    e704:	93390041 	srl	r25, r25
    e708:	93390041 	srl	r25, r25
    e70c:	93390041 	srl	r25, r25
    e710:	93390041 	srl	r25, r25
    e714:	93390041 	srl	r25, r25
    e718:	93390041 	srl	r25, r25
    e71c:	93390041 	srl	r25, r25
    e720:	93390041 	srl	r25, r25
    e724:	10bc0000 	addk	r5, r28, r0
    e728:	10d90000 	addk	r6, r25, r0
    e72c:	a644001f 	andi	r18, r4, 31
    e730:	10e0b800 	addk	r7, r0, r23
    e734:	be120014 	beqid	r18, 20		// e748
    e738:	10e70000 	addk	r7, r7, r0
    e73c:	3252ffff 	addik	r18, r18, -1
    e740:	be32fffc 	bneid	r18, -4		// e73c
    e744:	90e70041 	srl	r7, r7
    e748:	a653001f 	andi	r18, r19, 31
    e74c:	1360b000 	addk	r27, r0, r22
    e750:	be120014 	beqid	r18, 20		// e764
    e754:	137b0000 	addk	r27, r27, r0
    e758:	3252ffff 	addik	r18, r18, -1
    e75c:	be32fffc 	bneid	r18, -4		// e758
    e760:	137bd800 	addk	r27, r27, r27
    e764:	a653001f 	andi	r18, r19, 31
    e768:	13401800 	addk	r26, r0, r3
    e76c:	be120014 	beqid	r18, 20		// e780
    e770:	135a0000 	addk	r26, r26, r0
    e774:	3252ffff 	addik	r18, r18, -1
    e778:	be32fffc 	bneid	r18, -4		// e774
    e77c:	135ad000 	addk	r26, r26, r26
    e780:	b9f43318 	brlid	r15, 13080	// 11a98 <__umodsi3>
    e784:	837b3800 	or	r27, r27, r7
    e788:	10bc0000 	addk	r5, r28, r0
    e78c:	10d90000 	addk	r6, r25, r0
    e790:	b0000000 	imm	0
    e794:	a798ffff 	andi	r28, r24, -1
    e798:	b9f43258 	brlid	r15, 12888	// 119f0 <__udivsi3>
    e79c:	13a30000 	addk	r29, r3, r0
    e7a0:	10a30000 	addk	r5, r3, r0
    e7a4:	10dc0000 	addk	r6, r28, r0
    e7a8:	b9f431f0 	brlid	r15, 12784	// 11998 <__mulsi3>
    e7ac:	12c30000 	addk	r22, r3, r0
    e7b0:	109de800 	addk	r4, r29, r29
    e7b4:	10842000 	addk	r4, r4, r4
    e7b8:	10842000 	addk	r4, r4, r4
    e7bc:	10842000 	addk	r4, r4, r4
    e7c0:	10842000 	addk	r4, r4, r4
    e7c4:	10842000 	addk	r4, r4, r4
    e7c8:	10842000 	addk	r4, r4, r4
    e7cc:	10842000 	addk	r4, r4, r4
    e7d0:	10842000 	addk	r4, r4, r4
    e7d4:	10842000 	addk	r4, r4, r4
    e7d8:	10842000 	addk	r4, r4, r4
    e7dc:	10842000 	addk	r4, r4, r4
    e7e0:	10842000 	addk	r4, r4, r4
    e7e4:	10842000 	addk	r4, r4, r4
    e7e8:	10a30000 	addk	r5, r3, r0
    e7ec:	10842000 	addk	r4, r4, r4
    e7f0:	10842000 	addk	r4, r4, r4
    e7f4:	1060d800 	addk	r3, r0, r27
    e7f8:	907b0041 	srl	r3, r27
    e7fc:	90630041 	srl	r3, r3
    e800:	90630041 	srl	r3, r3
    e804:	90630041 	srl	r3, r3
    e808:	90630041 	srl	r3, r3
    e80c:	90630041 	srl	r3, r3
    e810:	90630041 	srl	r3, r3
    e814:	90630041 	srl	r3, r3
    e818:	90630041 	srl	r3, r3
    e81c:	90630041 	srl	r3, r3
    e820:	90630041 	srl	r3, r3
    e824:	90630041 	srl	r3, r3
    e828:	90630041 	srl	r3, r3
    e82c:	90630041 	srl	r3, r3
    e830:	90630041 	srl	r3, r3
    e834:	90630041 	srl	r3, r3
    e838:	80841800 	or	r4, r4, r3
    e83c:	14652003 	cmpu	r3, r5, r4
    e840:	bea30020 	bgeid	r3, 32		// e860
    e844:	17c52000 	rsubk	r30, r5, r4
    e848:	1084c000 	addk	r4, r4, r24
    e84c:	14782003 	cmpu	r3, r24, r4
    e850:	bea30624 	bgeid	r3, 1572		// ee74
    e854:	30d6ffff 	addik	r6, r22, -1
    e858:	12c60000 	addk	r22, r6, r0
    e85c:	17c52000 	rsubk	r30, r5, r4
    e860:	10d90000 	addk	r6, r25, r0
    e864:	b0000000 	imm	0
    e868:	a77bffff 	andi	r27, r27, -1
    e86c:	b9f4322c 	brlid	r15, 12844	// 11a98 <__umodsi3>
    e870:	10be0000 	addk	r5, r30, r0
    e874:	10d90000 	addk	r6, r25, r0
    e878:	10be0000 	addk	r5, r30, r0
    e87c:	b9f43174 	brlid	r15, 12660	// 119f0 <__udivsi3>
    e880:	13a30000 	addk	r29, r3, r0
    e884:	10a30000 	addk	r5, r3, r0
    e888:	10dc0000 	addk	r6, r28, r0
    e88c:	b9f4310c 	brlid	r15, 12556	// 11998 <__mulsi3>
    e890:	13230000 	addk	r25, r3, r0
    e894:	10fde800 	addk	r7, r29, r29
    e898:	10e73800 	addk	r7, r7, r7
    e89c:	10e73800 	addk	r7, r7, r7
    e8a0:	10e73800 	addk	r7, r7, r7
    e8a4:	10e73800 	addk	r7, r7, r7
    e8a8:	10e73800 	addk	r7, r7, r7
    e8ac:	10e73800 	addk	r7, r7, r7
    e8b0:	10e73800 	addk	r7, r7, r7
    e8b4:	10e73800 	addk	r7, r7, r7
    e8b8:	10e73800 	addk	r7, r7, r7
    e8bc:	10e73800 	addk	r7, r7, r7
    e8c0:	10e73800 	addk	r7, r7, r7
    e8c4:	10e73800 	addk	r7, r7, r7
    e8c8:	10e73800 	addk	r7, r7, r7
    e8cc:	10e73800 	addk	r7, r7, r7
    e8d0:	10e73800 	addk	r7, r7, r7
    e8d4:	80e7d800 	or	r7, r7, r27
    e8d8:	11030000 	addk	r8, r3, r0
    e8dc:	14633803 	cmpu	r3, r3, r7
    e8e0:	bca30018 	bgei	r3, 24		// e8f8
    e8e4:	10e7c000 	addk	r7, r7, r24
    e8e8:	14783803 	cmpu	r3, r24, r7
    e8ec:	bea30574 	bgeid	r3, 1396		// ee60
    e8f0:	3099ffff 	addik	r4, r25, -1
    e8f4:	13240000 	addk	r25, r4, r0
    e8f8:	1096b000 	addk	r4, r22, r22
    e8fc:	10842000 	addk	r4, r4, r4
    e900:	10842000 	addk	r4, r4, r4
    e904:	10842000 	addk	r4, r4, r4
    e908:	10842000 	addk	r4, r4, r4
    e90c:	10842000 	addk	r4, r4, r4
    e910:	10842000 	addk	r4, r4, r4
    e914:	10842000 	addk	r4, r4, r4
    e918:	10842000 	addk	r4, r4, r4
    e91c:	10842000 	addk	r4, r4, r4
    e920:	10842000 	addk	r4, r4, r4
    e924:	10842000 	addk	r4, r4, r4
    e928:	10842000 	addk	r4, r4, r4
    e92c:	10842000 	addk	r4, r4, r4
    e930:	10842000 	addk	r4, r4, r4
    e934:	10842000 	addk	r4, r4, r4
    e938:	83392000 	or	r25, r25, r4
    e93c:	b0000000 	imm	0
    e940:	a719ffff 	andi	r24, r25, -1
    e944:	b0000000 	imm	0
    e948:	a77affff 	andi	r27, r26, -1
    e94c:	10b80000 	addk	r5, r24, r0
    e950:	10db0000 	addk	r6, r27, r0
    e954:	12c0d000 	addk	r22, r0, r26
    e958:	92da0041 	srl	r22, r26
    e95c:	92d60041 	srl	r22, r22
    e960:	92d60041 	srl	r22, r22
    e964:	92d60041 	srl	r22, r22
    e968:	92d60041 	srl	r22, r22
    e96c:	92d60041 	srl	r22, r22
    e970:	92d60041 	srl	r22, r22
    e974:	92d60041 	srl	r22, r22
    e978:	92d60041 	srl	r22, r22
    e97c:	92d60041 	srl	r22, r22
    e980:	92d60041 	srl	r22, r22
    e984:	92d60041 	srl	r22, r22
    e988:	92d60041 	srl	r22, r22
    e98c:	92d60041 	srl	r22, r22
    e990:	92d60041 	srl	r22, r22
    e994:	92d60041 	srl	r22, r22
    e998:	b9f43000 	brlid	r15, 12288	// 11998 <__mulsi3>
    e99c:	17883800 	rsubk	r28, r8, r7
    e9a0:	10b80000 	addk	r5, r24, r0
    e9a4:	10d60000 	addk	r6, r22, r0
    e9a8:	1300c800 	addk	r24, r0, r25
    e9ac:	93190041 	srl	r24, r25
    e9b0:	93180041 	srl	r24, r24
    e9b4:	93180041 	srl	r24, r24
    e9b8:	93180041 	srl	r24, r24
    e9bc:	93180041 	srl	r24, r24
    e9c0:	93180041 	srl	r24, r24
    e9c4:	93180041 	srl	r24, r24
    e9c8:	93180041 	srl	r24, r24
    e9cc:	93180041 	srl	r24, r24
    e9d0:	93180041 	srl	r24, r24
    e9d4:	93180041 	srl	r24, r24
    e9d8:	93180041 	srl	r24, r24
    e9dc:	93180041 	srl	r24, r24
    e9e0:	93180041 	srl	r24, r24
    e9e4:	93180041 	srl	r24, r24
    e9e8:	93180041 	srl	r24, r24
    e9ec:	b9f42fac 	brlid	r15, 12204	// 11998 <__mulsi3>
    e9f0:	13a30000 	addk	r29, r3, r0
    e9f4:	10b80000 	addk	r5, r24, r0
    e9f8:	10db0000 	addk	r6, r27, r0
    e9fc:	b9f42f9c 	brlid	r15, 12188	// 11998 <__mulsi3>
    ea00:	13c30000 	addk	r30, r3, r0
    ea04:	10b80000 	addk	r5, r24, r0
    ea08:	10d60000 	addk	r6, r22, r0
    ea0c:	b9f42f8c 	brlid	r15, 12172	// 11998 <__mulsi3>
    ea10:	13430000 	addk	r26, r3, r0
    ea14:	109af000 	addk	r4, r26, r30
    ea18:	10a30000 	addk	r5, r3, r0
    ea1c:	1060e800 	addk	r3, r0, r29
    ea20:	907d0041 	srl	r3, r29
    ea24:	90630041 	srl	r3, r3
    ea28:	90630041 	srl	r3, r3
    ea2c:	90630041 	srl	r3, r3
    ea30:	90630041 	srl	r3, r3
    ea34:	90630041 	srl	r3, r3
    ea38:	90630041 	srl	r3, r3
    ea3c:	90630041 	srl	r3, r3
    ea40:	90630041 	srl	r3, r3
    ea44:	90630041 	srl	r3, r3
    ea48:	90630041 	srl	r3, r3
    ea4c:	90630041 	srl	r3, r3
    ea50:	90630041 	srl	r3, r3
    ea54:	90630041 	srl	r3, r3
    ea58:	90630041 	srl	r3, r3
    ea5c:	90630041 	srl	r3, r3
    ea60:	10841800 	addk	r4, r4, r3
    ea64:	175a2003 	cmpu	r26, r26, r4
    ea68:	bcba000c 	bgei	r26, 12		// ea74
    ea6c:	b0000001 	imm	1
    ea70:	30a50000 	addik	r5, r5, 0
    ea74:	10602000 	addk	r3, r0, r4
    ea78:	90640041 	srl	r3, r4
    ea7c:	90630041 	srl	r3, r3
    ea80:	90630041 	srl	r3, r3
    ea84:	90630041 	srl	r3, r3
    ea88:	90630041 	srl	r3, r3
    ea8c:	90630041 	srl	r3, r3
    ea90:	90630041 	srl	r3, r3
    ea94:	90630041 	srl	r3, r3
    ea98:	90630041 	srl	r3, r3
    ea9c:	90630041 	srl	r3, r3
    eaa0:	90630041 	srl	r3, r3
    eaa4:	90630041 	srl	r3, r3
    eaa8:	90630041 	srl	r3, r3
    eaac:	90630041 	srl	r3, r3
    eab0:	90630041 	srl	r3, r3
    eab4:	90630041 	srl	r3, r3
    eab8:	10a51800 	addk	r5, r5, r3
    eabc:	1465e003 	cmpu	r3, r5, r28
    eac0:	be43035c 	bltid	r3, 860		// ee1c
    eac4:	88bc2800 	xor	r5, r28, r5
    eac8:	17850000 	rsubk	r28, r5, r0
    eacc:	80bc2800 	or	r5, r28, r5
    ead0:	bc45007c 	blti	r5, 124		// eb4c
    ead4:	b0000000 	imm	0
    ead8:	a464ffff 	andi	r3, r4, -1
    eadc:	10631800 	addk	r3, r3, r3
    eae0:	10631800 	addk	r3, r3, r3
    eae4:	10631800 	addk	r3, r3, r3
    eae8:	10631800 	addk	r3, r3, r3
    eaec:	10631800 	addk	r3, r3, r3
    eaf0:	10631800 	addk	r3, r3, r3
    eaf4:	10631800 	addk	r3, r3, r3
    eaf8:	10631800 	addk	r3, r3, r3
    eafc:	10631800 	addk	r3, r3, r3
    eb00:	10631800 	addk	r3, r3, r3
    eb04:	10631800 	addk	r3, r3, r3
    eb08:	10631800 	addk	r3, r3, r3
    eb0c:	10631800 	addk	r3, r3, r3
    eb10:	10631800 	addk	r3, r3, r3
    eb14:	10631800 	addk	r3, r3, r3
    eb18:	10631800 	addk	r3, r3, r3
    eb1c:	b0000000 	imm	0
    eb20:	a7bdffff 	andi	r29, r29, -1
    eb24:	1063e800 	addk	r3, r3, r29
    eb28:	a653001f 	andi	r18, r19, 31
    eb2c:	1080b800 	addk	r4, r0, r23
    eb30:	be120014 	beqid	r18, 20		// eb44
    eb34:	10840000 	addk	r4, r4, r0
    eb38:	3252ffff 	addik	r18, r18, -1
    eb3c:	be32fffc 	bneid	r18, -4		// eb38
    eb40:	10842000 	addk	r4, r4, r4
    eb44:	14632003 	cmpu	r3, r3, r4
    eb48:	bc4302d4 	blti	r3, 724		// ee1c
    eb4c:	10990000 	addk	r4, r25, r0
    eb50:	b810fac0 	brid	-1344		// e610
    eb54:	12e00000 	addk	r23, r0, r0
    eb58:	b810f4cc 	brid	-2868		// e024
    eb5c:	10a70000 	addk	r5, r7, r0
    eb60:	a643001f 	andi	r18, r3, 31
    eb64:	10c09800 	addk	r6, r0, r19
    eb68:	be120014 	beqid	r18, 20		// eb7c
    eb6c:	10c60000 	addk	r6, r6, r0
    eb70:	3252ffff 	addik	r18, r18, -1
    eb74:	be32fffc 	bneid	r18, -4		// eb70
    eb78:	10c63000 	addk	r6, r6, r6
    eb7c:	a644001f 	andi	r18, r4, 31
    eb80:	1340b000 	addk	r26, r0, r22
    eb84:	be120014 	beqid	r18, 20		// eb98
    eb88:	135a0000 	addk	r26, r26, r0
    eb8c:	3252ffff 	addik	r18, r18, -1
    eb90:	be32fffc 	bneid	r18, -4		// eb8c
    eb94:	935a0041 	srl	r26, r26
    eb98:	f8c1001c 	swi	r6, r1, 28
    eb9c:	10ba0000 	addk	r5, r26, r0
    eba0:	12660000 	addk	r19, r6, r0
    eba4:	13203000 	addk	r25, r0, r6
    eba8:	93260041 	srl	r25, r6
    ebac:	93390041 	srl	r25, r25
    ebb0:	93390041 	srl	r25, r25
    ebb4:	93390041 	srl	r25, r25
    ebb8:	93390041 	srl	r25, r25
    ebbc:	93390041 	srl	r25, r25
    ebc0:	93390041 	srl	r25, r25
    ebc4:	93390041 	srl	r25, r25
    ebc8:	93390041 	srl	r25, r25
    ebcc:	93390041 	srl	r25, r25
    ebd0:	93390041 	srl	r25, r25
    ebd4:	93390041 	srl	r25, r25
    ebd8:	93390041 	srl	r25, r25
    ebdc:	93390041 	srl	r25, r25
    ebe0:	93390041 	srl	r25, r25
    ebe4:	93390041 	srl	r25, r25
    ebe8:	10d90000 	addk	r6, r25, r0
    ebec:	a643001f 	andi	r18, r3, 31
    ebf0:	1100b000 	addk	r8, r0, r22
    ebf4:	be120014 	beqid	r18, 20		// ec08
    ebf8:	11080000 	addk	r8, r8, r0
    ebfc:	3252ffff 	addik	r18, r18, -1
    ec00:	be32fffc 	bneid	r18, -4		// ebfc
    ec04:	11084000 	addk	r8, r8, r8
    ec08:	a644001f 	andi	r18, r4, 31
    ec0c:	10e0b800 	addk	r7, r0, r23
    ec10:	be120014 	beqid	r18, 20		// ec24
    ec14:	10e70000 	addk	r7, r7, r0
    ec18:	3252ffff 	addik	r18, r18, -1
    ec1c:	be32fffc 	bneid	r18, -4		// ec18
    ec20:	90e70041 	srl	r7, r7
    ec24:	a643001f 	andi	r18, r3, 31
    ec28:	1300b800 	addk	r24, r0, r23
    ec2c:	be120014 	beqid	r18, 20		// ec40
    ec30:	13180000 	addk	r24, r24, r0
    ec34:	3252ffff 	addik	r18, r18, -1
    ec38:	be32fffc 	bneid	r18, -4		// ec34
    ec3c:	1318c000 	addk	r24, r24, r24
    ec40:	b9f42e58 	brlid	r15, 11864	// 11a98 <__umodsi3>
    ec44:	82e83800 	or	r23, r8, r7
    ec48:	10ba0000 	addk	r5, r26, r0
    ec4c:	10d90000 	addk	r6, r25, r0
    ec50:	b0000000 	imm	0
    ec54:	a753ffff 	andi	r26, r19, -1
    ec58:	b9f42d98 	brlid	r15, 11672	// 119f0 <__udivsi3>
    ec5c:	12c30000 	addk	r22, r3, r0
    ec60:	10a30000 	addk	r5, r3, r0
    ec64:	10da0000 	addk	r6, r26, r0
    ec68:	b9f42d30 	brlid	r15, 11568	// 11998 <__mulsi3>
    ec6c:	13630000 	addk	r27, r3, r0
    ec70:	1096b000 	addk	r4, r22, r22
    ec74:	10842000 	addk	r4, r4, r4
    ec78:	10842000 	addk	r4, r4, r4
    ec7c:	10842000 	addk	r4, r4, r4
    ec80:	10842000 	addk	r4, r4, r4
    ec84:	10842000 	addk	r4, r4, r4
    ec88:	10842000 	addk	r4, r4, r4
    ec8c:	10842000 	addk	r4, r4, r4
    ec90:	10842000 	addk	r4, r4, r4
    ec94:	10842000 	addk	r4, r4, r4
    ec98:	10842000 	addk	r4, r4, r4
    ec9c:	10842000 	addk	r4, r4, r4
    eca0:	10842000 	addk	r4, r4, r4
    eca4:	10842000 	addk	r4, r4, r4
    eca8:	10a30000 	addk	r5, r3, r0
    ecac:	10842000 	addk	r4, r4, r4
    ecb0:	10842000 	addk	r4, r4, r4
    ecb4:	1060b800 	addk	r3, r0, r23
    ecb8:	90770041 	srl	r3, r23
    ecbc:	90630041 	srl	r3, r3
    ecc0:	90630041 	srl	r3, r3
    ecc4:	90630041 	srl	r3, r3
    ecc8:	90630041 	srl	r3, r3
    eccc:	90630041 	srl	r3, r3
    ecd0:	90630041 	srl	r3, r3
    ecd4:	90630041 	srl	r3, r3
    ecd8:	90630041 	srl	r3, r3
    ecdc:	90630041 	srl	r3, r3
    ece0:	90630041 	srl	r3, r3
    ece4:	90630041 	srl	r3, r3
    ece8:	90630041 	srl	r3, r3
    ecec:	90630041 	srl	r3, r3
    ecf0:	90630041 	srl	r3, r3
    ecf4:	90630041 	srl	r3, r3
    ecf8:	80841800 	or	r4, r4, r3
    ecfc:	14652003 	cmpu	r3, r5, r4
    ed00:	bea3002c 	bgeid	r3, 44		// ed2c
    ed04:	17852000 	rsubk	r28, r5, r4
    ed08:	10849800 	addk	r4, r4, r19
    ed0c:	14732003 	cmpu	r3, r19, r4
    ed10:	be430180 	bltid	r3, 384		// ee90
    ed14:	30dbffff 	addik	r6, r27, -1
    ed18:	14652003 	cmpu	r3, r5, r4
    ed1c:	bca30174 	bgei	r3, 372		// ee90
    ed20:	337bfffe 	addik	r27, r27, -2
    ed24:	10849800 	addk	r4, r4, r19
    ed28:	17852000 	rsubk	r28, r5, r4
    ed2c:	10bc0000 	addk	r5, r28, r0
    ed30:	b0000000 	imm	0
    ed34:	a6f7ffff 	andi	r23, r23, -1
    ed38:	b9f42d60 	brlid	r15, 11616	// 11a98 <__umodsi3>
    ed3c:	10d90000 	addk	r6, r25, r0
    ed40:	12c30000 	addk	r22, r3, r0
    ed44:	10bc0000 	addk	r5, r28, r0
    ed48:	10d90000 	addk	r6, r25, r0
    ed4c:	12d6b000 	addk	r22, r22, r22
    ed50:	12d6b000 	addk	r22, r22, r22
    ed54:	12d6b000 	addk	r22, r22, r22
    ed58:	12d6b000 	addk	r22, r22, r22
    ed5c:	12d6b000 	addk	r22, r22, r22
    ed60:	12d6b000 	addk	r22, r22, r22
    ed64:	12d6b000 	addk	r22, r22, r22
    ed68:	12d6b000 	addk	r22, r22, r22
    ed6c:	12d6b000 	addk	r22, r22, r22
    ed70:	12d6b000 	addk	r22, r22, r22
    ed74:	12d6b000 	addk	r22, r22, r22
    ed78:	b9f42c78 	brlid	r15, 11384	// 119f0 <__udivsi3>
    ed7c:	12d6b000 	addk	r22, r22, r22
    ed80:	12d6b000 	addk	r22, r22, r22
    ed84:	10a30000 	addk	r5, r3, r0
    ed88:	10da0000 	addk	r6, r26, r0
    ed8c:	12d6b000 	addk	r22, r22, r22
    ed90:	12d6b000 	addk	r22, r22, r22
    ed94:	12d6b000 	addk	r22, r22, r22
    ed98:	13830000 	addk	r28, r3, r0
    ed9c:	b9f42bfc 	brlid	r15, 11260	// 11998 <__mulsi3>
    eda0:	82d6b800 	or	r22, r22, r23
    eda4:	10830000 	addk	r4, r3, r0
    eda8:	1463b003 	cmpu	r3, r3, r22
    edac:	bca30024 	bgei	r3, 36		// edd0
    edb0:	12d69800 	addk	r22, r22, r19
    edb4:	1473b003 	cmpu	r3, r19, r22
    edb8:	be4300d0 	bltid	r3, 208		// ee88
    edbc:	30bcffff 	addik	r5, r28, -1
    edc0:	1464b003 	cmpu	r3, r4, r22
    edc4:	bca300c4 	bgei	r3, 196		// ee88
    edc8:	339cfffe 	addik	r28, r28, -2
    edcc:	12d69800 	addk	r22, r22, r19
    edd0:	12fbd800 	addk	r23, r27, r27
    edd4:	12f7b800 	addk	r23, r23, r23
    edd8:	12f7b800 	addk	r23, r23, r23
    eddc:	12f7b800 	addk	r23, r23, r23
    ede0:	12f7b800 	addk	r23, r23, r23
    ede4:	12f7b800 	addk	r23, r23, r23
    ede8:	12f7b800 	addk	r23, r23, r23
    edec:	12f7b800 	addk	r23, r23, r23
    edf0:	12f7b800 	addk	r23, r23, r23
    edf4:	12f7b800 	addk	r23, r23, r23
    edf8:	12f7b800 	addk	r23, r23, r23
    edfc:	12f7b800 	addk	r23, r23, r23
    ee00:	12f7b800 	addk	r23, r23, r23
    ee04:	12f7b800 	addk	r23, r23, r23
    ee08:	12f7b800 	addk	r23, r23, r23
    ee0c:	12f7b800 	addk	r23, r23, r23
    ee10:	16c4b000 	rsubk	r22, r4, r22
    ee14:	b810f620 	brid	-2528		// e434
    ee18:	82fcb800 	or	r23, r28, r23
    ee1c:	3099ffff 	addik	r4, r25, -1
    ee20:	b810f7f0 	brid	-2064		// e610
    ee24:	12e00000 	addk	r23, r0, r0
    ee28:	b810f790 	brid	-2160		// e5b8
    ee2c:	13250000 	addk	r25, r5, r0
    ee30:	b810f468 	brid	-2968		// e298
    ee34:	12e50000 	addk	r23, r5, r0
    ee38:	b810f4e8 	brid	-2840		// e320
    ee3c:	11050000 	addk	r8, r5, r0
    ee40:	30a00008 	addik	r5, r0, 8	// 8 <_.z>
    ee44:	b810f4dc 	brid	-2852		// e320
    ee48:	11050000 	addk	r8, r5, r0
    ee4c:	30600008 	addik	r3, r0, 8	// 8 <_.z>
    ee50:	b810f55c 	brid	-2724		// e3ac
    ee54:	10830000 	addk	r4, r3, r0
    ee58:	b810f554 	brid	-2732		// e3ac
    ee5c:	10830000 	addk	r4, r3, r0
    ee60:	14683803 	cmpu	r3, r8, r7
    ee64:	bea3fa90 	bgeid	r3, -1392		// e8f4
    ee68:	3339fffe 	addik	r25, r25, -2
    ee6c:	b810fa8c 	brid	-1396		// e8f8
    ee70:	10e7c000 	addk	r7, r7, r24
    ee74:	14652003 	cmpu	r3, r5, r4
    ee78:	bea3f9e0 	bgeid	r3, -1568		// e858
    ee7c:	32d6fffe 	addik	r22, r22, -2
    ee80:	b810f9dc 	brid	-1572		// e85c
    ee84:	1084c000 	addk	r4, r4, r24
    ee88:	b810ff48 	brid	-184		// edd0
    ee8c:	13850000 	addk	r28, r5, r0
    ee90:	b810fe98 	brid	-360		// ed28
    ee94:	13660000 	addk	r27, r6, r0
    ee98:	b810f680 	brid	-2432		// e518
    ee9c:	10849800 	addk	r4, r4, r19
    eea0:	b810f358 	brid	-3240		// e1f8
    eea4:	10849800 	addk	r4, r4, r19

0000eea8 <__umoddi3>:
    eea8:	3021ffb4 	addik	r1, r1, -76
    eeac:	fa610020 	swi	r19, r1, 32
    eeb0:	fac10024 	swi	r22, r1, 36
    eeb4:	fae10028 	swi	r23, r1, 40
    eeb8:	fb01002c 	swi	r24, r1, 44
    eebc:	fb410034 	swi	r26, r1, 52
    eec0:	f9e10000 	swi	r15, r1, 0
    eec4:	fb210030 	swi	r25, r1, 48
    eec8:	fb610038 	swi	r27, r1, 56
    eecc:	fb81003c 	swi	r28, r1, 60
    eed0:	fba10040 	swi	r29, r1, 64
    eed4:	fbc10044 	swi	r30, r1, 68
    eed8:	fbe10048 	swi	r31, r1, 72
    eedc:	12c50000 	addk	r22, r5, r0
    eee0:	12e60000 	addk	r23, r6, r0
    eee4:	12680000 	addk	r19, r8, r0
    eee8:	13060000 	addk	r24, r6, r0
    eeec:	10880000 	addk	r4, r8, r0
    eef0:	be2702d8 	bneid	r7, 728		// f1c8
    eef4:	13450000 	addk	r26, r5, r0
    eef8:	14682803 	cmpu	r3, r8, r5
    eefc:	bca303e4 	bgei	r3, 996		// f2e0
    ef00:	b0000000 	imm	0
    ef04:	3060ffff 	addik	r3, r0, -1
    ef08:	14681803 	cmpu	r3, r8, r3
    ef0c:	bea305fc 	bgeid	r3, 1532		// f508
    ef10:	306000ff 	addik	r3, r0, 255
    ef14:	b00000ff 	imm	255
    ef18:	3060ffff 	addik	r3, r0, -1
    ef1c:	14681803 	cmpu	r3, r8, r3
    ef20:	be430ad4 	bltid	r3, 2772		// f9f4
    ef24:	30e00018 	addik	r7, r0, 24	// 18 <_.d3>
    ef28:	30e00010 	addik	r7, r0, 16	// 10 <_.d1>
    ef2c:	10a70000 	addk	r5, r7, r0
    ef30:	a647001f 	andi	r18, r7, 31
    ef34:	10602000 	addk	r3, r0, r4
    ef38:	be120014 	beqid	r18, 20		// ef4c
    ef3c:	10630000 	addk	r3, r3, r0
    ef40:	3252ffff 	addik	r18, r18, -1
    ef44:	be32fffc 	bneid	r18, -4		// ef40
    ef48:	90630041 	srl	r3, r3
    ef4c:	b0000001 	imm	1
    ef50:	e0632f80 	lbui	r3, r3, 12160
    ef54:	30c00020 	addik	r6, r0, 32
    ef58:	10a32800 	addk	r5, r3, r5
    ef5c:	14653000 	rsubk	r3, r5, r6
    ef60:	be030080 	beqid	r3, 128		// efe0
    ef64:	13200000 	addk	r25, r0, r0
    ef68:	13230000 	addk	r25, r3, r0
    ef6c:	a645001f 	andi	r18, r5, 31
    ef70:	1060b800 	addk	r3, r0, r23
    ef74:	be120014 	beqid	r18, 20		// ef88
    ef78:	10630000 	addk	r3, r3, r0
    ef7c:	3252ffff 	addik	r18, r18, -1
    ef80:	be32fffc 	bneid	r18, -4		// ef7c
    ef84:	90630041 	srl	r3, r3
    ef88:	a659001f 	andi	r18, r25, 31
    ef8c:	1340b000 	addk	r26, r0, r22
    ef90:	be120014 	beqid	r18, 20		// efa4
    ef94:	135a0000 	addk	r26, r26, r0
    ef98:	3252ffff 	addik	r18, r18, -1
    ef9c:	be32fffc 	bneid	r18, -4		// ef98
    efa0:	135ad000 	addk	r26, r26, r26
    efa4:	835a1800 	or	r26, r26, r3
    efa8:	a659001f 	andi	r18, r25, 31
    efac:	12602000 	addk	r19, r0, r4
    efb0:	be120014 	beqid	r18, 20		// efc4
    efb4:	12730000 	addk	r19, r19, r0
    efb8:	3252ffff 	addik	r18, r18, -1
    efbc:	be32fffc 	bneid	r18, -4		// efb8
    efc0:	12739800 	addk	r19, r19, r19
    efc4:	a659001f 	andi	r18, r25, 31
    efc8:	1300b800 	addk	r24, r0, r23
    efcc:	be120014 	beqid	r18, 20		// efe0
    efd0:	13180000 	addk	r24, r24, r0
    efd4:	3252ffff 	addik	r18, r18, -1
    efd8:	be32fffc 	bneid	r18, -4		// efd4
    efdc:	1318c000 	addk	r24, r24, r24
    efe0:	12c09800 	addk	r22, r0, r19
    efe4:	92d30041 	srl	r22, r19
    efe8:	92d60041 	srl	r22, r22
    efec:	92d60041 	srl	r22, r22
    eff0:	92d60041 	srl	r22, r22
    eff4:	92d60041 	srl	r22, r22
    eff8:	92d60041 	srl	r22, r22
    effc:	92d60041 	srl	r22, r22
    f000:	92d60041 	srl	r22, r22
    f004:	92d60041 	srl	r22, r22
    f008:	92d60041 	srl	r22, r22
    f00c:	92d60041 	srl	r22, r22
    f010:	92d60041 	srl	r22, r22
    f014:	92d60041 	srl	r22, r22
    f018:	92d60041 	srl	r22, r22
    f01c:	92d60041 	srl	r22, r22
    f020:	92d60041 	srl	r22, r22
    f024:	10ba0000 	addk	r5, r26, r0
    f028:	b0000000 	imm	0
    f02c:	a6f3ffff 	andi	r23, r19, -1
    f030:	b9f42a68 	brlid	r15, 10856	// 11a98 <__umodsi3>
    f034:	10d60000 	addk	r6, r22, r0
    f038:	10ba0000 	addk	r5, r26, r0
    f03c:	10d60000 	addk	r6, r22, r0
    f040:	b9f429b0 	brlid	r15, 10672	// 119f0 <__udivsi3>
    f044:	13630000 	addk	r27, r3, r0
    f048:	10a30000 	addk	r5, r3, r0
    f04c:	b9f4294c 	brlid	r15, 10572	// 11998 <__mulsi3>
    f050:	10d70000 	addk	r6, r23, r0
    f054:	109bd800 	addk	r4, r27, r27
    f058:	10842000 	addk	r4, r4, r4
    f05c:	10842000 	addk	r4, r4, r4
    f060:	10842000 	addk	r4, r4, r4
    f064:	10842000 	addk	r4, r4, r4
    f068:	10842000 	addk	r4, r4, r4
    f06c:	10842000 	addk	r4, r4, r4
    f070:	10842000 	addk	r4, r4, r4
    f074:	10842000 	addk	r4, r4, r4
    f078:	10842000 	addk	r4, r4, r4
    f07c:	10842000 	addk	r4, r4, r4
    f080:	10842000 	addk	r4, r4, r4
    f084:	10842000 	addk	r4, r4, r4
    f088:	10842000 	addk	r4, r4, r4
    f08c:	10a30000 	addk	r5, r3, r0
    f090:	10842000 	addk	r4, r4, r4
    f094:	10842000 	addk	r4, r4, r4
    f098:	1060c000 	addk	r3, r0, r24
    f09c:	90780041 	srl	r3, r24
    f0a0:	90630041 	srl	r3, r3
    f0a4:	90630041 	srl	r3, r3
    f0a8:	90630041 	srl	r3, r3
    f0ac:	90630041 	srl	r3, r3
    f0b0:	90630041 	srl	r3, r3
    f0b4:	90630041 	srl	r3, r3
    f0b8:	90630041 	srl	r3, r3
    f0bc:	90630041 	srl	r3, r3
    f0c0:	90630041 	srl	r3, r3
    f0c4:	90630041 	srl	r3, r3
    f0c8:	90630041 	srl	r3, r3
    f0cc:	90630041 	srl	r3, r3
    f0d0:	90630041 	srl	r3, r3
    f0d4:	90630041 	srl	r3, r3
    f0d8:	90630041 	srl	r3, r3
    f0dc:	80841800 	or	r4, r4, r3
    f0e0:	14652003 	cmpu	r3, r5, r4
    f0e4:	bea30024 	bgeid	r3, 36		// f108
    f0e8:	17652000 	rsubk	r27, r5, r4
    f0ec:	10849800 	addk	r4, r4, r19
    f0f0:	14732003 	cmpu	r3, r19, r4
    f0f4:	be430014 	bltid	r3, 20		// f108
    f0f8:	17652000 	rsubk	r27, r5, r4
    f0fc:	14652003 	cmpu	r3, r5, r4
    f100:	bc430d34 	blti	r3, 3380		// fe34
    f104:	17652000 	rsubk	r27, r5, r4
    f108:	10bb0000 	addk	r5, r27, r0
    f10c:	b9f4298c 	brlid	r15, 10636	// 11a98 <__umodsi3>
    f110:	10d60000 	addk	r6, r22, r0
    f114:	10bb0000 	addk	r5, r27, r0
    f118:	10d60000 	addk	r6, r22, r0
    f11c:	b9f428d4 	brlid	r15, 10452	// 119f0 <__udivsi3>
    f120:	13430000 	addk	r26, r3, r0
    f124:	10a30000 	addk	r5, r3, r0
    f128:	b9f42870 	brlid	r15, 10352	// 11998 <__mulsi3>
    f12c:	10d70000 	addk	r6, r23, r0
    f130:	10830000 	addk	r4, r3, r0
    f134:	107ad000 	addk	r3, r26, r26
    f138:	10631800 	addk	r3, r3, r3
    f13c:	10631800 	addk	r3, r3, r3
    f140:	10631800 	addk	r3, r3, r3
    f144:	10631800 	addk	r3, r3, r3
    f148:	10631800 	addk	r3, r3, r3
    f14c:	10631800 	addk	r3, r3, r3
    f150:	10631800 	addk	r3, r3, r3
    f154:	10631800 	addk	r3, r3, r3
    f158:	10631800 	addk	r3, r3, r3
    f15c:	10631800 	addk	r3, r3, r3
    f160:	10631800 	addk	r3, r3, r3
    f164:	10631800 	addk	r3, r3, r3
    f168:	10631800 	addk	r3, r3, r3
    f16c:	10631800 	addk	r3, r3, r3
    f170:	10631800 	addk	r3, r3, r3
    f174:	b0000000 	imm	0
    f178:	a718ffff 	andi	r24, r24, -1
    f17c:	8303c000 	or	r24, r3, r24
    f180:	1464c003 	cmpu	r3, r4, r24
    f184:	bca3001c 	bgei	r3, 28		// f1a0
    f188:	13189800 	addk	r24, r24, r19
    f18c:	1473c003 	cmpu	r3, r19, r24
    f190:	bc430010 	blti	r3, 16		// f1a0
    f194:	1464c003 	cmpu	r3, r4, r24
    f198:	bca30008 	bgei	r3, 8		// f1a0
    f19c:	13189800 	addk	r24, r24, r19
    f1a0:	1704c000 	rsubk	r24, r4, r24
    f1a4:	a659001f 	andi	r18, r25, 31
    f1a8:	1080c000 	addk	r4, r0, r24
    f1ac:	be120014 	beqid	r18, 20		// f1c0
    f1b0:	10840000 	addk	r4, r4, r0
    f1b4:	3252ffff 	addik	r18, r18, -1
    f1b8:	be32fffc 	bneid	r18, -4		// f1b4
    f1bc:	90840041 	srl	r4, r4
    f1c0:	b81002fc 	brid	764		// f4bc
    f1c4:	10600000 	addk	r3, r0, r0
    f1c8:	14672803 	cmpu	r3, r7, r5
    f1cc:	be4302ec 	bltid	r3, 748		// f4b8
    f1d0:	10650000 	addk	r3, r5, r0
    f1d4:	b0000000 	imm	0
    f1d8:	3060ffff 	addik	r3, r0, -1
    f1dc:	14671803 	cmpu	r3, r7, r3
    f1e0:	bea30314 	bgeid	r3, 788		// f4f4
    f1e4:	306000ff 	addik	r3, r0, 255
    f1e8:	b00000ff 	imm	255
    f1ec:	3060ffff 	addik	r3, r0, -1
    f1f0:	14671803 	cmpu	r3, r7, r3
    f1f4:	be430bfc 	bltid	r3, 3068		// fdf0
    f1f8:	30600018 	addik	r3, r0, 24	// 18 <_.d3>
    f1fc:	30600010 	addik	r3, r0, 16	// 10 <_.d1>
    f200:	13230000 	addk	r25, r3, r0
    f204:	a643001f 	andi	r18, r3, 31
    f208:	10a03800 	addk	r5, r0, r7
    f20c:	be120014 	beqid	r18, 20		// f220
    f210:	10a50000 	addk	r5, r5, r0
    f214:	3252ffff 	addik	r18, r18, -1
    f218:	be32fffc 	bneid	r18, -4		// f214
    f21c:	90a50041 	srl	r5, r5
    f220:	b0000001 	imm	1
    f224:	e0652f80 	lbui	r3, r5, 12160
    f228:	1323c800 	addk	r25, r3, r25
    f22c:	30600020 	addik	r3, r0, 32
    f230:	16791800 	rsubk	r19, r25, r3
    f234:	be3302fc 	bneid	r19, 764		// f530
    f238:	1464b803 	cmpu	r3, r4, r23
    f23c:	bc430c00 	blti	r3, 3072		// fe3c
    f240:	1484b800 	rsubk	r4, r4, r23
    f244:	13040000 	addk	r24, r4, r0
    f248:	16c7b000 	rsubk	r22, r7, r22
    f24c:	1484b803 	cmpu	r4, r4, r23
    f250:	10602000 	addk	r3, r0, r4
    f254:	90640041 	srl	r3, r4
    f258:	90630041 	srl	r3, r3
    f25c:	90630041 	srl	r3, r3
    f260:	90630041 	srl	r3, r3
    f264:	90630041 	srl	r3, r3
    f268:	90630041 	srl	r3, r3
    f26c:	90630041 	srl	r3, r3
    f270:	90630041 	srl	r3, r3
    f274:	90630041 	srl	r3, r3
    f278:	90630041 	srl	r3, r3
    f27c:	90630041 	srl	r3, r3
    f280:	90630041 	srl	r3, r3
    f284:	90630041 	srl	r3, r3
    f288:	90630041 	srl	r3, r3
    f28c:	90630041 	srl	r3, r3
    f290:	90630041 	srl	r3, r3
    f294:	90630041 	srl	r3, r3
    f298:	90630041 	srl	r3, r3
    f29c:	90630041 	srl	r3, r3
    f2a0:	90630041 	srl	r3, r3
    f2a4:	90630041 	srl	r3, r3
    f2a8:	90630041 	srl	r3, r3
    f2ac:	90630041 	srl	r3, r3
    f2b0:	90630041 	srl	r3, r3
    f2b4:	90630041 	srl	r3, r3
    f2b8:	90630041 	srl	r3, r3
    f2bc:	90630041 	srl	r3, r3
    f2c0:	90630041 	srl	r3, r3
    f2c4:	90630041 	srl	r3, r3
    f2c8:	90630041 	srl	r3, r3
    f2cc:	90630041 	srl	r3, r3
    f2d0:	1743b000 	rsubk	r26, r3, r22
    f2d4:	107a0000 	addk	r3, r26, r0
    f2d8:	b81001e4 	brid	484		// f4bc
    f2dc:	10980000 	addk	r4, r24, r0
    f2e0:	be280014 	bneid	r8, 20		// f2f4
    f2e4:	10c80000 	addk	r6, r8, r0
    f2e8:	b9f42708 	brlid	r15, 9992	// 119f0 <__udivsi3>
    f2ec:	30a00001 	addik	r5, r0, 1
    f2f0:	12630000 	addk	r19, r3, r0
    f2f4:	b0000000 	imm	0
    f2f8:	3060ffff 	addik	r3, r0, -1
    f2fc:	14731803 	cmpu	r3, r19, r3
    f300:	bea3021c 	bgeid	r3, 540		// f51c
    f304:	306000ff 	addik	r3, r0, 255
    f308:	b00000ff 	imm	255
    f30c:	3060ffff 	addik	r3, r0, -1
    f310:	14731803 	cmpu	r3, r19, r3
    f314:	be430ae4 	bltid	r3, 2788		// fdf8
    f318:	30800018 	addik	r4, r0, 24	// 18 <_.d3>
    f31c:	30800010 	addik	r4, r0, 16	// 10 <_.d1>
    f320:	10c40000 	addk	r6, r4, r0
    f324:	a644001f 	andi	r18, r4, 31
    f328:	10a09800 	addk	r5, r0, r19
    f32c:	be120014 	beqid	r18, 20		// f340
    f330:	10a50000 	addk	r5, r5, r0
    f334:	3252ffff 	addik	r18, r18, -1
    f338:	be32fffc 	bneid	r18, -4		// f334
    f33c:	90a50041 	srl	r5, r5
    f340:	b0000001 	imm	1
    f344:	e0652f80 	lbui	r3, r5, 12160
    f348:	30800020 	addik	r4, r0, 32
    f34c:	10633000 	addk	r3, r3, r6
    f350:	17232000 	rsubk	r25, r3, r4
    f354:	bc3906a8 	bnei	r25, 1704		// f9fc
    f358:	16d3b000 	rsubk	r22, r19, r22
    f35c:	b0000000 	imm	0
    f360:	a773ffff 	andi	r27, r19, -1
    f364:	13409800 	addk	r26, r0, r19
    f368:	93530041 	srl	r26, r19
    f36c:	935a0041 	srl	r26, r26
    f370:	935a0041 	srl	r26, r26
    f374:	935a0041 	srl	r26, r26
    f378:	935a0041 	srl	r26, r26
    f37c:	935a0041 	srl	r26, r26
    f380:	935a0041 	srl	r26, r26
    f384:	935a0041 	srl	r26, r26
    f388:	935a0041 	srl	r26, r26
    f38c:	935a0041 	srl	r26, r26
    f390:	935a0041 	srl	r26, r26
    f394:	935a0041 	srl	r26, r26
    f398:	935a0041 	srl	r26, r26
    f39c:	935a0041 	srl	r26, r26
    f3a0:	935a0041 	srl	r26, r26
    f3a4:	935a0041 	srl	r26, r26
    f3a8:	10b60000 	addk	r5, r22, r0
    f3ac:	b9f426ec 	brlid	r15, 9964	// 11a98 <__umodsi3>
    f3b0:	10da0000 	addk	r6, r26, r0
    f3b4:	10b60000 	addk	r5, r22, r0
    f3b8:	10da0000 	addk	r6, r26, r0
    f3bc:	b9f42634 	brlid	r15, 9780	// 119f0 <__udivsi3>
    f3c0:	12e30000 	addk	r23, r3, r0
    f3c4:	10a30000 	addk	r5, r3, r0
    f3c8:	b9f425d0 	brlid	r15, 9680	// 11998 <__mulsi3>
    f3cc:	10db0000 	addk	r6, r27, r0
    f3d0:	1097b800 	addk	r4, r23, r23
    f3d4:	10842000 	addk	r4, r4, r4
    f3d8:	10842000 	addk	r4, r4, r4
    f3dc:	10842000 	addk	r4, r4, r4
    f3e0:	10842000 	addk	r4, r4, r4
    f3e4:	10842000 	addk	r4, r4, r4
    f3e8:	10842000 	addk	r4, r4, r4
    f3ec:	10842000 	addk	r4, r4, r4
    f3f0:	10842000 	addk	r4, r4, r4
    f3f4:	10842000 	addk	r4, r4, r4
    f3f8:	10842000 	addk	r4, r4, r4
    f3fc:	10842000 	addk	r4, r4, r4
    f400:	10842000 	addk	r4, r4, r4
    f404:	10842000 	addk	r4, r4, r4
    f408:	10a30000 	addk	r5, r3, r0
    f40c:	10842000 	addk	r4, r4, r4
    f410:	10842000 	addk	r4, r4, r4
    f414:	1060c000 	addk	r3, r0, r24
    f418:	90780041 	srl	r3, r24
    f41c:	90630041 	srl	r3, r3
    f420:	90630041 	srl	r3, r3
    f424:	90630041 	srl	r3, r3
    f428:	90630041 	srl	r3, r3
    f42c:	90630041 	srl	r3, r3
    f430:	90630041 	srl	r3, r3
    f434:	90630041 	srl	r3, r3
    f438:	90630041 	srl	r3, r3
    f43c:	90630041 	srl	r3, r3
    f440:	90630041 	srl	r3, r3
    f444:	90630041 	srl	r3, r3
    f448:	90630041 	srl	r3, r3
    f44c:	90630041 	srl	r3, r3
    f450:	90630041 	srl	r3, r3
    f454:	90630041 	srl	r3, r3
    f458:	80841800 	or	r4, r4, r3
    f45c:	14652003 	cmpu	r3, r5, r4
    f460:	bca30020 	bgei	r3, 32		// f480
    f464:	10849800 	addk	r4, r4, r19
    f468:	14732003 	cmpu	r3, r19, r4
    f46c:	be430018 	bltid	r3, 24		// f484
    f470:	16e52000 	rsubk	r23, r5, r4
    f474:	14652003 	cmpu	r3, r5, r4
    f478:	bca3000c 	bgei	r3, 12		// f484
    f47c:	10849800 	addk	r4, r4, r19
    f480:	16e52000 	rsubk	r23, r5, r4
    f484:	10b70000 	addk	r5, r23, r0
    f488:	b9f42610 	brlid	r15, 9744	// 11a98 <__umodsi3>
    f48c:	10da0000 	addk	r6, r26, r0
    f490:	10b70000 	addk	r5, r23, r0
    f494:	10da0000 	addk	r6, r26, r0
    f498:	b9f42558 	brlid	r15, 9560	// 119f0 <__udivsi3>
    f49c:	12c30000 	addk	r22, r3, r0
    f4a0:	10a30000 	addk	r5, r3, r0
    f4a4:	b9f424f4 	brlid	r15, 9460	// 11998 <__mulsi3>
    f4a8:	10db0000 	addk	r6, r27, r0
    f4ac:	10830000 	addk	r4, r3, r0
    f4b0:	b810fc88 	brid	-888		// f138
    f4b4:	1076b000 	addk	r3, r22, r22
    f4b8:	10860000 	addk	r4, r6, r0
    f4bc:	e9e10000 	lwi	r15, r1, 0
    f4c0:	ea610020 	lwi	r19, r1, 32
    f4c4:	eac10024 	lwi	r22, r1, 36
    f4c8:	eae10028 	lwi	r23, r1, 40
    f4cc:	eb01002c 	lwi	r24, r1, 44
    f4d0:	eb210030 	lwi	r25, r1, 48
    f4d4:	eb410034 	lwi	r26, r1, 52
    f4d8:	eb610038 	lwi	r27, r1, 56
    f4dc:	eb81003c 	lwi	r28, r1, 60
    f4e0:	eba10040 	lwi	r29, r1, 64
    f4e4:	ebc10044 	lwi	r30, r1, 68
    f4e8:	ebe10048 	lwi	r31, r1, 72
    f4ec:	b60f0008 	rtsd	r15, 8
    f4f0:	3021004c 	addik	r1, r1, 76
    f4f4:	14671803 	cmpu	r3, r7, r3
    f4f8:	bc4308ec 	blti	r3, 2284		// fde4
    f4fc:	10600000 	addk	r3, r0, r0
    f500:	b810fd04 	brid	-764		// f204
    f504:	13230000 	addk	r25, r3, r0
    f508:	14681803 	cmpu	r3, r8, r3
    f50c:	bca304e8 	bgei	r3, 1256		// f9f4
    f510:	30e00008 	addik	r7, r0, 8	// 8 <_.z>
    f514:	b810fa1c 	brid	-1508		// ef30
    f518:	10a70000 	addk	r5, r7, r0
    f51c:	14731803 	cmpu	r3, r19, r3
    f520:	bc4308e0 	blti	r3, 2272		// fe00
    f524:	10800000 	addk	r4, r0, r0
    f528:	b810fdfc 	brid	-516		// f324
    f52c:	10c40000 	addk	r6, r4, r0
    f530:	a659001f 	andi	r18, r25, 31
    f534:	10602000 	addk	r3, r0, r4
    f538:	be120014 	beqid	r18, 20		// f54c
    f53c:	10630000 	addk	r3, r3, r0
    f540:	3252ffff 	addik	r18, r18, -1
    f544:	be32fffc 	bneid	r18, -4		// f540
    f548:	90630041 	srl	r3, r3
    f54c:	a653001f 	andi	r18, r19, 31
    f550:	13003800 	addk	r24, r0, r7
    f554:	be120014 	beqid	r18, 20		// f568
    f558:	13180000 	addk	r24, r24, r0
    f55c:	3252ffff 	addik	r18, r18, -1
    f560:	be32fffc 	bneid	r18, -4		// f55c
    f564:	1318c000 	addk	r24, r24, r24
    f568:	83181800 	or	r24, r24, r3
    f56c:	a659001f 	andi	r18, r25, 31
    f570:	1380b000 	addk	r28, r0, r22
    f574:	be120014 	beqid	r18, 20		// f588
    f578:	139c0000 	addk	r28, r28, r0
    f57c:	3252ffff 	addik	r18, r18, -1
    f580:	be32fffc 	bneid	r18, -4		// f57c
    f584:	939c0041 	srl	r28, r28
    f588:	1340c000 	addk	r26, r0, r24
    f58c:	93580041 	srl	r26, r24
    f590:	935a0041 	srl	r26, r26
    f594:	935a0041 	srl	r26, r26
    f598:	935a0041 	srl	r26, r26
    f59c:	935a0041 	srl	r26, r26
    f5a0:	935a0041 	srl	r26, r26
    f5a4:	935a0041 	srl	r26, r26
    f5a8:	935a0041 	srl	r26, r26
    f5ac:	935a0041 	srl	r26, r26
    f5b0:	935a0041 	srl	r26, r26
    f5b4:	935a0041 	srl	r26, r26
    f5b8:	935a0041 	srl	r26, r26
    f5bc:	935a0041 	srl	r26, r26
    f5c0:	935a0041 	srl	r26, r26
    f5c4:	935a0041 	srl	r26, r26
    f5c8:	935a0041 	srl	r26, r26
    f5cc:	10bc0000 	addk	r5, r28, r0
    f5d0:	10da0000 	addk	r6, r26, r0
    f5d4:	a659001f 	andi	r18, r25, 31
    f5d8:	1060b800 	addk	r3, r0, r23
    f5dc:	be120014 	beqid	r18, 20		// f5f0
    f5e0:	10630000 	addk	r3, r3, r0
    f5e4:	3252ffff 	addik	r18, r18, -1
    f5e8:	be32fffc 	bneid	r18, -4		// f5e4
    f5ec:	90630041 	srl	r3, r3
    f5f0:	a653001f 	andi	r18, r19, 31
    f5f4:	13602000 	addk	r27, r0, r4
    f5f8:	be120014 	beqid	r18, 20		// f60c
    f5fc:	137b0000 	addk	r27, r27, r0
    f600:	3252ffff 	addik	r18, r18, -1
    f604:	be32fffc 	bneid	r18, -4		// f600
    f608:	137bd800 	addk	r27, r27, r27
    f60c:	a653001f 	andi	r18, r19, 31
    f610:	13a0b000 	addk	r29, r0, r22
    f614:	be120014 	beqid	r18, 20		// f628
    f618:	13bd0000 	addk	r29, r29, r0
    f61c:	3252ffff 	addik	r18, r18, -1
    f620:	be32fffc 	bneid	r18, -4		// f61c
    f624:	13bde800 	addk	r29, r29, r29
    f628:	b9f42470 	brlid	r15, 9328	// 11a98 <__umodsi3>
    f62c:	83bd1800 	or	r29, r29, r3
    f630:	10bc0000 	addk	r5, r28, r0
    f634:	10da0000 	addk	r6, r26, r0
    f638:	b0000000 	imm	0
    f63c:	a7d8ffff 	andi	r30, r24, -1
    f640:	b9f423b0 	brlid	r15, 9136	// 119f0 <__udivsi3>
    f644:	13e30000 	addk	r31, r3, r0
    f648:	10a30000 	addk	r5, r3, r0
    f64c:	10de0000 	addk	r6, r30, r0
    f650:	a653001f 	andi	r18, r19, 31
    f654:	1380b800 	addk	r28, r0, r23
    f658:	be120014 	beqid	r18, 20		// f66c
    f65c:	139c0000 	addk	r28, r28, r0
    f660:	3252ffff 	addik	r18, r18, -1
    f664:	be32fffc 	bneid	r18, -4		// f660
    f668:	139ce000 	addk	r28, r28, r28
    f66c:	b9f4232c 	brlid	r15, 9004	// 11998 <__mulsi3>
    f670:	12c30000 	addk	r22, r3, r0
    f674:	10bff800 	addk	r5, r31, r31
    f678:	10a52800 	addk	r5, r5, r5
    f67c:	10a52800 	addk	r5, r5, r5
    f680:	10a52800 	addk	r5, r5, r5
    f684:	10a52800 	addk	r5, r5, r5
    f688:	10a52800 	addk	r5, r5, r5
    f68c:	10a52800 	addk	r5, r5, r5
    f690:	10a52800 	addk	r5, r5, r5
    f694:	10a52800 	addk	r5, r5, r5
    f698:	10a52800 	addk	r5, r5, r5
    f69c:	10a52800 	addk	r5, r5, r5
    f6a0:	10a52800 	addk	r5, r5, r5
    f6a4:	10a52800 	addk	r5, r5, r5
    f6a8:	10a52800 	addk	r5, r5, r5
    f6ac:	10830000 	addk	r4, r3, r0
    f6b0:	10a52800 	addk	r5, r5, r5
    f6b4:	10a52800 	addk	r5, r5, r5
    f6b8:	1060e800 	addk	r3, r0, r29
    f6bc:	907d0041 	srl	r3, r29
    f6c0:	90630041 	srl	r3, r3
    f6c4:	90630041 	srl	r3, r3
    f6c8:	90630041 	srl	r3, r3
    f6cc:	90630041 	srl	r3, r3
    f6d0:	90630041 	srl	r3, r3
    f6d4:	90630041 	srl	r3, r3
    f6d8:	90630041 	srl	r3, r3
    f6dc:	90630041 	srl	r3, r3
    f6e0:	90630041 	srl	r3, r3
    f6e4:	90630041 	srl	r3, r3
    f6e8:	90630041 	srl	r3, r3
    f6ec:	90630041 	srl	r3, r3
    f6f0:	90630041 	srl	r3, r3
    f6f4:	90630041 	srl	r3, r3
    f6f8:	90630041 	srl	r3, r3
    f6fc:	80a51800 	or	r5, r5, r3
    f700:	14642803 	cmpu	r3, r4, r5
    f704:	bca30018 	bgei	r3, 24		// f71c
    f708:	10a5c000 	addk	r5, r5, r24
    f70c:	14782803 	cmpu	r3, r24, r5
    f710:	bea30710 	bgeid	r3, 1808		// fe20
    f714:	30d6ffff 	addik	r6, r22, -1
    f718:	12c60000 	addk	r22, r6, r0
    f71c:	16e42800 	rsubk	r23, r4, r5
    f720:	10b70000 	addk	r5, r23, r0
    f724:	b0000000 	imm	0
    f728:	a7bdffff 	andi	r29, r29, -1
    f72c:	b9f4236c 	brlid	r15, 9068	// 11a98 <__umodsi3>
    f730:	10da0000 	addk	r6, r26, r0
    f734:	10b70000 	addk	r5, r23, r0
    f738:	10da0000 	addk	r6, r26, r0
    f73c:	b9f422b4 	brlid	r15, 8884	// 119f0 <__udivsi3>
    f740:	13e30000 	addk	r31, r3, r0
    f744:	10a30000 	addk	r5, r3, r0
    f748:	10de0000 	addk	r6, r30, r0
    f74c:	b9f4224c 	brlid	r15, 8780	// 11998 <__mulsi3>
    f750:	12e30000 	addk	r23, r3, r0
    f754:	109ff800 	addk	r4, r31, r31
    f758:	10842000 	addk	r4, r4, r4
    f75c:	10842000 	addk	r4, r4, r4
    f760:	10842000 	addk	r4, r4, r4
    f764:	10842000 	addk	r4, r4, r4
    f768:	10842000 	addk	r4, r4, r4
    f76c:	10842000 	addk	r4, r4, r4
    f770:	10842000 	addk	r4, r4, r4
    f774:	10842000 	addk	r4, r4, r4
    f778:	10842000 	addk	r4, r4, r4
    f77c:	10842000 	addk	r4, r4, r4
    f780:	10842000 	addk	r4, r4, r4
    f784:	10842000 	addk	r4, r4, r4
    f788:	10842000 	addk	r4, r4, r4
    f78c:	10842000 	addk	r4, r4, r4
    f790:	10842000 	addk	r4, r4, r4
    f794:	8084e800 	or	r4, r4, r29
    f798:	10e30000 	addk	r7, r3, r0
    f79c:	14632003 	cmpu	r3, r3, r4
    f7a0:	bea30020 	bgeid	r3, 32		// f7c0
    f7a4:	1076b000 	addk	r3, r22, r22
    f7a8:	1084c000 	addk	r4, r4, r24
    f7ac:	14782003 	cmpu	r3, r24, r4
    f7b0:	bea3065c 	bgeid	r3, 1628		// fe0c
    f7b4:	30b7ffff 	addik	r5, r23, -1
    f7b8:	12e50000 	addk	r23, r5, r0
    f7bc:	1076b000 	addk	r3, r22, r22
    f7c0:	10631800 	addk	r3, r3, r3
    f7c4:	10631800 	addk	r3, r3, r3
    f7c8:	10631800 	addk	r3, r3, r3
    f7cc:	10631800 	addk	r3, r3, r3
    f7d0:	10631800 	addk	r3, r3, r3
    f7d4:	10631800 	addk	r3, r3, r3
    f7d8:	10631800 	addk	r3, r3, r3
    f7dc:	10631800 	addk	r3, r3, r3
    f7e0:	10631800 	addk	r3, r3, r3
    f7e4:	10631800 	addk	r3, r3, r3
    f7e8:	10631800 	addk	r3, r3, r3
    f7ec:	10631800 	addk	r3, r3, r3
    f7f0:	10631800 	addk	r3, r3, r3
    f7f4:	10631800 	addk	r3, r3, r3
    f7f8:	10631800 	addk	r3, r3, r3
    f7fc:	82f71800 	or	r23, r23, r3
    f800:	b0000000 	imm	0
    f804:	a7f7ffff 	andi	r31, r23, -1
    f808:	b0000000 	imm	0
    f80c:	a7dbffff 	andi	r30, r27, -1
    f810:	10bf0000 	addk	r5, r31, r0
    f814:	10de0000 	addk	r6, r30, r0
    f818:	1340b800 	addk	r26, r0, r23
    f81c:	93570041 	srl	r26, r23
    f820:	935a0041 	srl	r26, r26
    f824:	935a0041 	srl	r26, r26
    f828:	935a0041 	srl	r26, r26
    f82c:	935a0041 	srl	r26, r26
    f830:	935a0041 	srl	r26, r26
    f834:	935a0041 	srl	r26, r26
    f838:	935a0041 	srl	r26, r26
    f83c:	935a0041 	srl	r26, r26
    f840:	935a0041 	srl	r26, r26
    f844:	935a0041 	srl	r26, r26
    f848:	935a0041 	srl	r26, r26
    f84c:	935a0041 	srl	r26, r26
    f850:	935a0041 	srl	r26, r26
    f854:	935a0041 	srl	r26, r26
    f858:	935a0041 	srl	r26, r26
    f85c:	b9f4213c 	brlid	r15, 8508	// 11998 <__mulsi3>
    f860:	16c72000 	rsubk	r22, r7, r4
    f864:	10bf0000 	addk	r5, r31, r0
    f868:	12e0d800 	addk	r23, r0, r27
    f86c:	92fb0041 	srl	r23, r27
    f870:	92f70041 	srl	r23, r23
    f874:	92f70041 	srl	r23, r23
    f878:	92f70041 	srl	r23, r23
    f87c:	92f70041 	srl	r23, r23
    f880:	92f70041 	srl	r23, r23
    f884:	92f70041 	srl	r23, r23
    f888:	92f70041 	srl	r23, r23
    f88c:	92f70041 	srl	r23, r23
    f890:	92f70041 	srl	r23, r23
    f894:	92f70041 	srl	r23, r23
    f898:	92f70041 	srl	r23, r23
    f89c:	92f70041 	srl	r23, r23
    f8a0:	92f70041 	srl	r23, r23
    f8a4:	92f70041 	srl	r23, r23
    f8a8:	92f70041 	srl	r23, r23
    f8ac:	10d70000 	addk	r6, r23, r0
    f8b0:	b9f420e8 	brlid	r15, 8424	// 11998 <__mulsi3>
    f8b4:	13a30000 	addk	r29, r3, r0
    f8b8:	10de0000 	addk	r6, r30, r0
    f8bc:	10ba0000 	addk	r5, r26, r0
    f8c0:	b9f420d8 	brlid	r15, 8408	// 11998 <__mulsi3>
    f8c4:	13e30000 	addk	r31, r3, r0
    f8c8:	10ba0000 	addk	r5, r26, r0
    f8cc:	10d70000 	addk	r6, r23, r0
    f8d0:	b9f420c8 	brlid	r15, 8392	// 11998 <__mulsi3>
    f8d4:	13c30000 	addk	r30, r3, r0
    f8d8:	10def800 	addk	r6, r30, r31
    f8dc:	10a30000 	addk	r5, r3, r0
    f8e0:	1060e800 	addk	r3, r0, r29
    f8e4:	907d0041 	srl	r3, r29
    f8e8:	90630041 	srl	r3, r3
    f8ec:	90630041 	srl	r3, r3
    f8f0:	90630041 	srl	r3, r3
    f8f4:	90630041 	srl	r3, r3
    f8f8:	90630041 	srl	r3, r3
    f8fc:	90630041 	srl	r3, r3
    f900:	90630041 	srl	r3, r3
    f904:	90630041 	srl	r3, r3
    f908:	90630041 	srl	r3, r3
    f90c:	90630041 	srl	r3, r3
    f910:	90630041 	srl	r3, r3
    f914:	90630041 	srl	r3, r3
    f918:	90630041 	srl	r3, r3
    f91c:	90630041 	srl	r3, r3
    f920:	90630041 	srl	r3, r3
    f924:	10c61800 	addk	r6, r6, r3
    f928:	17de3003 	cmpu	r30, r30, r6
    f92c:	bcbe000c 	bgei	r30, 12		// f938
    f930:	b0000001 	imm	1
    f934:	30a50000 	addik	r5, r5, 0
    f938:	b0000000 	imm	0
    f93c:	a486ffff 	andi	r4, r6, -1
    f940:	10842000 	addk	r4, r4, r4
    f944:	10842000 	addk	r4, r4, r4
    f948:	10842000 	addk	r4, r4, r4
    f94c:	10842000 	addk	r4, r4, r4
    f950:	10842000 	addk	r4, r4, r4
    f954:	10842000 	addk	r4, r4, r4
    f958:	10842000 	addk	r4, r4, r4
    f95c:	10842000 	addk	r4, r4, r4
    f960:	10842000 	addk	r4, r4, r4
    f964:	10842000 	addk	r4, r4, r4
    f968:	10842000 	addk	r4, r4, r4
    f96c:	10842000 	addk	r4, r4, r4
    f970:	10842000 	addk	r4, r4, r4
    f974:	10842000 	addk	r4, r4, r4
    f978:	10603000 	addk	r3, r0, r6
    f97c:	90660041 	srl	r3, r6
    f980:	90630041 	srl	r3, r3
    f984:	90630041 	srl	r3, r3
    f988:	90630041 	srl	r3, r3
    f98c:	90630041 	srl	r3, r3
    f990:	90630041 	srl	r3, r3
    f994:	90630041 	srl	r3, r3
    f998:	90630041 	srl	r3, r3
    f99c:	90630041 	srl	r3, r3
    f9a0:	90630041 	srl	r3, r3
    f9a4:	90630041 	srl	r3, r3
    f9a8:	90630041 	srl	r3, r3
    f9ac:	90630041 	srl	r3, r3
    f9b0:	90630041 	srl	r3, r3
    f9b4:	90630041 	srl	r3, r3
    f9b8:	90630041 	srl	r3, r3
    f9bc:	10842000 	addk	r4, r4, r4
    f9c0:	10a51800 	addk	r5, r5, r3
    f9c4:	10842000 	addk	r4, r4, r4
    f9c8:	b0000000 	imm	0
    f9cc:	a7bdffff 	andi	r29, r29, -1
    f9d0:	1465b003 	cmpu	r3, r5, r22
    f9d4:	be430290 	bltid	r3, 656		// fc64
    f9d8:	13a4e800 	addk	r29, r4, r29
    f9dc:	88762800 	xor	r3, r22, r5
    f9e0:	14830000 	rsubk	r4, r3, r0
    f9e4:	80641800 	or	r3, r4, r3
    f9e8:	bca30274 	bgei	r3, 628		// fc5c
    f9ec:	b8100308 	brid	776		// fcf4
    f9f0:	137d0000 	addk	r27, r29, r0
    f9f4:	b810f53c 	brid	-2756		// ef30
    f9f8:	10a70000 	addk	r5, r7, r0
    f9fc:	a659001f 	andi	r18, r25, 31
    fa00:	10c09800 	addk	r6, r0, r19
    fa04:	be120014 	beqid	r18, 20		// fa18
    fa08:	10c60000 	addk	r6, r6, r0
    fa0c:	3252ffff 	addik	r18, r18, -1
    fa10:	be32fffc 	bneid	r18, -4		// fa0c
    fa14:	10c63000 	addk	r6, r6, r6
    fa18:	a643001f 	andi	r18, r3, 31
    fa1c:	1300b000 	addk	r24, r0, r22
    fa20:	be120014 	beqid	r18, 20		// fa34
    fa24:	13180000 	addk	r24, r24, r0
    fa28:	3252ffff 	addik	r18, r18, -1
    fa2c:	be32fffc 	bneid	r18, -4		// fa28
    fa30:	93180041 	srl	r24, r24
    fa34:	f8c1001c 	swi	r6, r1, 28
    fa38:	10b80000 	addk	r5, r24, r0
    fa3c:	12660000 	addk	r19, r6, r0
    fa40:	13403000 	addk	r26, r0, r6
    fa44:	93460041 	srl	r26, r6
    fa48:	935a0041 	srl	r26, r26
    fa4c:	935a0041 	srl	r26, r26
    fa50:	935a0041 	srl	r26, r26
    fa54:	935a0041 	srl	r26, r26
    fa58:	935a0041 	srl	r26, r26
    fa5c:	935a0041 	srl	r26, r26
    fa60:	935a0041 	srl	r26, r26
    fa64:	935a0041 	srl	r26, r26
    fa68:	935a0041 	srl	r26, r26
    fa6c:	935a0041 	srl	r26, r26
    fa70:	935a0041 	srl	r26, r26
    fa74:	935a0041 	srl	r26, r26
    fa78:	935a0041 	srl	r26, r26
    fa7c:	935a0041 	srl	r26, r26
    fa80:	935a0041 	srl	r26, r26
    fa84:	10da0000 	addk	r6, r26, r0
    fa88:	a643001f 	andi	r18, r3, 31
    fa8c:	1080b800 	addk	r4, r0, r23
    fa90:	be120014 	beqid	r18, 20		// faa4
    fa94:	10840000 	addk	r4, r4, r0
    fa98:	3252ffff 	addik	r18, r18, -1
    fa9c:	be32fffc 	bneid	r18, -4		// fa98
    faa0:	90840041 	srl	r4, r4
    faa4:	a659001f 	andi	r18, r25, 31
    faa8:	1380b000 	addk	r28, r0, r22
    faac:	be120014 	beqid	r18, 20		// fac0
    fab0:	139c0000 	addk	r28, r28, r0
    fab4:	3252ffff 	addik	r18, r18, -1
    fab8:	be32fffc 	bneid	r18, -4		// fab4
    fabc:	139ce000 	addk	r28, r28, r28
    fac0:	b9f41fd8 	brlid	r15, 8152	// 11a98 <__umodsi3>
    fac4:	839c2000 	or	r28, r28, r4
    fac8:	10b80000 	addk	r5, r24, r0
    facc:	10da0000 	addk	r6, r26, r0
    fad0:	b0000000 	imm	0
    fad4:	a773ffff 	andi	r27, r19, -1
    fad8:	b9f41f18 	brlid	r15, 7960	// 119f0 <__udivsi3>
    fadc:	12c30000 	addk	r22, r3, r0
    fae0:	10a30000 	addk	r5, r3, r0
    fae4:	a659001f 	andi	r18, r25, 31
    fae8:	1300b800 	addk	r24, r0, r23
    faec:	be120014 	beqid	r18, 20		// fb00
    faf0:	13180000 	addk	r24, r24, r0
    faf4:	3252ffff 	addik	r18, r18, -1
    faf8:	be32fffc 	bneid	r18, -4		// faf4
    fafc:	1318c000 	addk	r24, r24, r24
    fb00:	b9f41e98 	brlid	r15, 7832	// 11998 <__mulsi3>
    fb04:	10db0000 	addk	r6, r27, r0
    fb08:	1096b000 	addk	r4, r22, r22
    fb0c:	10842000 	addk	r4, r4, r4
    fb10:	10842000 	addk	r4, r4, r4
    fb14:	10842000 	addk	r4, r4, r4
    fb18:	10842000 	addk	r4, r4, r4
    fb1c:	10842000 	addk	r4, r4, r4
    fb20:	10842000 	addk	r4, r4, r4
    fb24:	10842000 	addk	r4, r4, r4
    fb28:	10842000 	addk	r4, r4, r4
    fb2c:	10842000 	addk	r4, r4, r4
    fb30:	10842000 	addk	r4, r4, r4
    fb34:	10842000 	addk	r4, r4, r4
    fb38:	10842000 	addk	r4, r4, r4
    fb3c:	10842000 	addk	r4, r4, r4
    fb40:	10a30000 	addk	r5, r3, r0
    fb44:	10842000 	addk	r4, r4, r4
    fb48:	10842000 	addk	r4, r4, r4
    fb4c:	1060e000 	addk	r3, r0, r28
    fb50:	907c0041 	srl	r3, r28
    fb54:	90630041 	srl	r3, r3
    fb58:	90630041 	srl	r3, r3
    fb5c:	90630041 	srl	r3, r3
    fb60:	90630041 	srl	r3, r3
    fb64:	90630041 	srl	r3, r3
    fb68:	90630041 	srl	r3, r3
    fb6c:	90630041 	srl	r3, r3
    fb70:	90630041 	srl	r3, r3
    fb74:	90630041 	srl	r3, r3
    fb78:	90630041 	srl	r3, r3
    fb7c:	90630041 	srl	r3, r3
    fb80:	90630041 	srl	r3, r3
    fb84:	90630041 	srl	r3, r3
    fb88:	90630041 	srl	r3, r3
    fb8c:	90630041 	srl	r3, r3
    fb90:	80841800 	or	r4, r4, r3
    fb94:	14652003 	cmpu	r3, r5, r4
    fb98:	bca30020 	bgei	r3, 32		// fbb8
    fb9c:	10849800 	addk	r4, r4, r19
    fba0:	14732003 	cmpu	r3, r19, r4
    fba4:	be430018 	bltid	r3, 24		// fbbc
    fba8:	16e52000 	rsubk	r23, r5, r4
    fbac:	14652003 	cmpu	r3, r5, r4
    fbb0:	bea3000c 	bgeid	r3, 12		// fbbc
    fbb4:	10849800 	addk	r4, r4, r19
    fbb8:	16e52000 	rsubk	r23, r5, r4
    fbbc:	10b70000 	addk	r5, r23, r0
    fbc0:	b0000000 	imm	0
    fbc4:	a79cffff 	andi	r28, r28, -1
    fbc8:	b9f41ed0 	brlid	r15, 7888	// 11a98 <__umodsi3>
    fbcc:	10da0000 	addk	r6, r26, r0
    fbd0:	12c30000 	addk	r22, r3, r0
    fbd4:	10b70000 	addk	r5, r23, r0
    fbd8:	10da0000 	addk	r6, r26, r0
    fbdc:	12d6b000 	addk	r22, r22, r22
    fbe0:	12d6b000 	addk	r22, r22, r22
    fbe4:	12d6b000 	addk	r22, r22, r22
    fbe8:	12d6b000 	addk	r22, r22, r22
    fbec:	12d6b000 	addk	r22, r22, r22
    fbf0:	12d6b000 	addk	r22, r22, r22
    fbf4:	12d6b000 	addk	r22, r22, r22
    fbf8:	12d6b000 	addk	r22, r22, r22
    fbfc:	12d6b000 	addk	r22, r22, r22
    fc00:	12d6b000 	addk	r22, r22, r22
    fc04:	12d6b000 	addk	r22, r22, r22
    fc08:	b9f41de8 	brlid	r15, 7656	// 119f0 <__udivsi3>
    fc0c:	12d6b000 	addk	r22, r22, r22
    fc10:	12d6b000 	addk	r22, r22, r22
    fc14:	10a30000 	addk	r5, r3, r0
    fc18:	10db0000 	addk	r6, r27, r0
    fc1c:	12d6b000 	addk	r22, r22, r22
    fc20:	12d6b000 	addk	r22, r22, r22
    fc24:	b9f41d74 	brlid	r15, 7540	// 11998 <__mulsi3>
    fc28:	12d6b000 	addk	r22, r22, r22
    fc2c:	82d6e000 	or	r22, r22, r28
    fc30:	10830000 	addk	r4, r3, r0
    fc34:	1463b003 	cmpu	r3, r3, r22
    fc38:	bca3001c 	bgei	r3, 28		// fc54
    fc3c:	12d69800 	addk	r22, r22, r19
    fc40:	1473b003 	cmpu	r3, r19, r22
    fc44:	be430010 	bltid	r3, 16		// fc54
    fc48:	1464b003 	cmpu	r3, r4, r22
    fc4c:	bca30008 	bgei	r3, 8		// fc54
    fc50:	12d69800 	addk	r22, r22, r19
    fc54:	b810f754 	brid	-2220		// f3a8
    fc58:	16c4b000 	rsubk	r22, r4, r22
    fc5c:	147de003 	cmpu	r3, r29, r28
    fc60:	bca3fd8c 	bgei	r3, -628		// f9ec
    fc64:	177be800 	rsubk	r27, r27, r29
    fc68:	14b82800 	rsubk	r5, r24, r5
    fc6c:	17bbe803 	cmpu	r29, r27, r29
    fc70:	1060e800 	addk	r3, r0, r29
    fc74:	907d0041 	srl	r3, r29
    fc78:	90630041 	srl	r3, r3
    fc7c:	90630041 	srl	r3, r3
    fc80:	90630041 	srl	r3, r3
    fc84:	90630041 	srl	r3, r3
    fc88:	90630041 	srl	r3, r3
    fc8c:	90630041 	srl	r3, r3
    fc90:	90630041 	srl	r3, r3
    fc94:	90630041 	srl	r3, r3
    fc98:	90630041 	srl	r3, r3
    fc9c:	90630041 	srl	r3, r3
    fca0:	90630041 	srl	r3, r3
    fca4:	90630041 	srl	r3, r3
    fca8:	90630041 	srl	r3, r3
    fcac:	90630041 	srl	r3, r3
    fcb0:	90630041 	srl	r3, r3
    fcb4:	90630041 	srl	r3, r3
    fcb8:	90630041 	srl	r3, r3
    fcbc:	90630041 	srl	r3, r3
    fcc0:	90630041 	srl	r3, r3
    fcc4:	90630041 	srl	r3, r3
    fcc8:	90630041 	srl	r3, r3
    fccc:	90630041 	srl	r3, r3
    fcd0:	90630041 	srl	r3, r3
    fcd4:	90630041 	srl	r3, r3
    fcd8:	90630041 	srl	r3, r3
    fcdc:	90630041 	srl	r3, r3
    fce0:	90630041 	srl	r3, r3
    fce4:	90630041 	srl	r3, r3
    fce8:	90630041 	srl	r3, r3
    fcec:	90630041 	srl	r3, r3
    fcf0:	14a32800 	rsubk	r5, r3, r5
    fcf4:	177be000 	rsubk	r27, r27, r28
    fcf8:	179be003 	cmpu	r28, r27, r28
    fcfc:	1060e000 	addk	r3, r0, r28
    fd00:	907c0041 	srl	r3, r28
    fd04:	90630041 	srl	r3, r3
    fd08:	90630041 	srl	r3, r3
    fd0c:	90630041 	srl	r3, r3
    fd10:	90630041 	srl	r3, r3
    fd14:	90630041 	srl	r3, r3
    fd18:	90630041 	srl	r3, r3
    fd1c:	90630041 	srl	r3, r3
    fd20:	90630041 	srl	r3, r3
    fd24:	90630041 	srl	r3, r3
    fd28:	90630041 	srl	r3, r3
    fd2c:	90630041 	srl	r3, r3
    fd30:	90630041 	srl	r3, r3
    fd34:	90630041 	srl	r3, r3
    fd38:	90630041 	srl	r3, r3
    fd3c:	90630041 	srl	r3, r3
    fd40:	90630041 	srl	r3, r3
    fd44:	90630041 	srl	r3, r3
    fd48:	90630041 	srl	r3, r3
    fd4c:	90630041 	srl	r3, r3
    fd50:	90630041 	srl	r3, r3
    fd54:	90630041 	srl	r3, r3
    fd58:	90630041 	srl	r3, r3
    fd5c:	90630041 	srl	r3, r3
    fd60:	90630041 	srl	r3, r3
    fd64:	90630041 	srl	r3, r3
    fd68:	90630041 	srl	r3, r3
    fd6c:	90630041 	srl	r3, r3
    fd70:	90630041 	srl	r3, r3
    fd74:	90630041 	srl	r3, r3
    fd78:	90630041 	srl	r3, r3
    fd7c:	14a5b000 	rsubk	r5, r5, r22
    fd80:	14a32800 	rsubk	r5, r3, r5
    fd84:	a653001f 	andi	r18, r19, 31
    fd88:	1060d800 	addk	r3, r0, r27
    fd8c:	be120014 	beqid	r18, 20		// fda0
    fd90:	10630000 	addk	r3, r3, r0
    fd94:	3252ffff 	addik	r18, r18, -1
    fd98:	be32fffc 	bneid	r18, -4		// fd94
    fd9c:	90630041 	srl	r3, r3
    fda0:	a659001f 	andi	r18, r25, 31
    fda4:	10802800 	addk	r4, r0, r5
    fda8:	be120014 	beqid	r18, 20		// fdbc
    fdac:	10840000 	addk	r4, r4, r0
    fdb0:	3252ffff 	addik	r18, r18, -1
    fdb4:	be32fffc 	bneid	r18, -4		// fdb0
    fdb8:	10842000 	addk	r4, r4, r4
    fdbc:	80841800 	or	r4, r4, r3
    fdc0:	a653001f 	andi	r18, r19, 31
    fdc4:	10602800 	addk	r3, r0, r5
    fdc8:	be120014 	beqid	r18, 20		// fddc
    fdcc:	10630000 	addk	r3, r3, r0
    fdd0:	3252ffff 	addik	r18, r18, -1
    fdd4:	be32fffc 	bneid	r18, -4		// fdd0
    fdd8:	90630041 	srl	r3, r3
    fddc:	b810f6e4 	brid	-2332		// f4c0
    fde0:	e9e10000 	lwi	r15, r1, 0
    fde4:	30600008 	addik	r3, r0, 8	// 8 <_.z>
    fde8:	b810f41c 	brid	-3044		// f204
    fdec:	13230000 	addk	r25, r3, r0
    fdf0:	b810f414 	brid	-3052		// f204
    fdf4:	13230000 	addk	r25, r3, r0
    fdf8:	b810f52c 	brid	-2772		// f324
    fdfc:	10c40000 	addk	r6, r4, r0
    fe00:	30800008 	addik	r4, r0, 8	// 8 <_.z>
    fe04:	b810f520 	brid	-2784		// f324
    fe08:	10c40000 	addk	r6, r4, r0
    fe0c:	14672003 	cmpu	r3, r7, r4
    fe10:	bea3f9a8 	bgeid	r3, -1624		// f7b8
    fe14:	32f7fffe 	addik	r23, r23, -2
    fe18:	b810f9a4 	brid	-1628		// f7bc
    fe1c:	1084c000 	addk	r4, r4, r24
    fe20:	14642803 	cmpu	r3, r4, r5
    fe24:	bea3f8f4 	bgeid	r3, -1804		// f718
    fe28:	32d6fffe 	addik	r22, r22, -2
    fe2c:	b810f8f0 	brid	-1808		// f71c
    fe30:	10a5c000 	addk	r5, r5, r24
    fe34:	b810f2d0 	brid	-3376		// f104
    fe38:	10849800 	addk	r4, r4, r19
    fe3c:	14763803 	cmpu	r3, r22, r7
    fe40:	bca3f494 	bgei	r3, -2924		// f2d4
    fe44:	b810f400 	brid	-3072		// f244
    fe48:	1484b800 	rsubk	r4, r4, r23

0000fe4c <_fpadd_parts>:
    fe4c:	e8850000 	lwi	r4, r5, 0
    fe50:	31000001 	addik	r8, r0, 1
    fe54:	10650000 	addk	r3, r5, r0
    fe58:	14a44003 	cmpu	r5, r4, r8
    fe5c:	bca506f8 	bgei	r5, 1784		// 10554
    fe60:	e8a60000 	lwi	r5, r6, 0
    fe64:	15054003 	cmpu	r8, r5, r8
    fe68:	bca804dc 	bgei	r8, 1244		// 10344
    fe6c:	11870000 	addk	r12, r7, r0
    fe70:	a8e40004 	xori	r7, r4, 4
    fe74:	be0706c0 	beqid	r7, 1728		// 10534
    fe78:	a8e50004 	xori	r7, r5, 4
    fe7c:	bc0704c8 	beqi	r7, 1224		// 10344
    fe80:	a8a50002 	xori	r5, r5, 2
    fe84:	be0503e0 	beqid	r5, 992		// 10264
    fe88:	a8a40002 	xori	r5, r4, 2
    fe8c:	a8840002 	xori	r4, r4, 2
    fe90:	bc0404b4 	beqi	r4, 1204		// 10344
    fe94:	3021ffec 	addik	r1, r1, -20
    fe98:	fb01000c 	swi	r24, r1, 12
    fe9c:	fac10004 	swi	r22, r1, 4
    fea0:	fae10008 	swi	r23, r1, 8
    fea4:	fb210010 	swi	r25, r1, 16
    fea8:	e8e30008 	lwi	r7, r3, 8
    feac:	eac60008 	lwi	r22, r6, 8
    feb0:	e943000c 	lwi	r10, r3, 12
    feb4:	e9630010 	lwi	r11, r3, 16
    feb8:	e906000c 	lwi	r8, r6, 12
    febc:	e9260010 	lwi	r9, r6, 16
    fec0:	14963800 	rsubk	r4, r22, r7
    fec4:	10a02000 	addk	r5, r0, r4
    fec8:	90a40001 	sra	r5, r4
    fecc:	90a50001 	sra	r5, r5
    fed0:	90a50001 	sra	r5, r5
    fed4:	90a50001 	sra	r5, r5
    fed8:	90a50001 	sra	r5, r5
    fedc:	90a50001 	sra	r5, r5
    fee0:	90a50001 	sra	r5, r5
    fee4:	90a50001 	sra	r5, r5
    fee8:	90a50001 	sra	r5, r5
    feec:	90a50001 	sra	r5, r5
    fef0:	90a50001 	sra	r5, r5
    fef4:	90a50001 	sra	r5, r5
    fef8:	90a50001 	sra	r5, r5
    fefc:	90a50001 	sra	r5, r5
    ff00:	90a50001 	sra	r5, r5
    ff04:	90a50001 	sra	r5, r5
    ff08:	90a50001 	sra	r5, r5
    ff0c:	90a50001 	sra	r5, r5
    ff10:	90a50001 	sra	r5, r5
    ff14:	90a50001 	sra	r5, r5
    ff18:	90a50001 	sra	r5, r5
    ff1c:	90a50001 	sra	r5, r5
    ff20:	90a50001 	sra	r5, r5
    ff24:	90a50001 	sra	r5, r5
    ff28:	90a50001 	sra	r5, r5
    ff2c:	90a50001 	sra	r5, r5
    ff30:	90a50001 	sra	r5, r5
    ff34:	90a50001 	sra	r5, r5
    ff38:	90a50001 	sra	r5, r5
    ff3c:	90a50001 	sra	r5, r5
    ff40:	90a50001 	sra	r5, r5
    ff44:	8b052000 	xor	r24, r5, r4
    ff48:	1705c000 	rsubk	r24, r5, r24
    ff4c:	30a0003f 	addik	r5, r0, 63
    ff50:	14b82801 	cmp	r5, r24, r5
    ff54:	bc450138 	blti	r5, 312		// 1008c
    ff58:	be640430 	bleid	r4, 1072		// 10388
    ff5c:	a6d80020 	andi	r22, r24, 32
    ff60:	be160320 	beqid	r22, 800		// 10280
    ff64:	13284000 	addk	r25, r8, r8
    ff68:	10800000 	addk	r4, r0, r0
    ff6c:	12e40000 	addk	r23, r4, r0
    ff70:	33200001 	addik	r25, r0, 1
    ff74:	a658001f 	andi	r18, r24, 31
    ff78:	10a04000 	addk	r5, r0, r8
    ff7c:	be120014 	beqid	r18, 20		// ff90
    ff80:	10a50000 	addk	r5, r5, r0
    ff84:	3252ffff 	addik	r18, r18, -1
    ff88:	be32fffc 	bneid	r18, -4		// ff84
    ff8c:	90a50041 	srl	r5, r5
    ff90:	a658001f 	andi	r18, r24, 31
    ff94:	12c0c800 	addk	r22, r0, r25
    ff98:	be120014 	beqid	r18, 20		// ffac
    ff9c:	12d60000 	addk	r22, r22, r0
    ffa0:	3252ffff 	addik	r18, r18, -1
    ffa4:	be32fffc 	bneid	r18, -4		// ffa0
    ffa8:	12d6b000 	addk	r22, r22, r22
    ffac:	3300ffff 	addik	r24, r0, -1
    ffb0:	3320ffff 	addik	r25, r0, -1
    ffb4:	02f7c800 	add	r23, r23, r25
    ffb8:	0ad6c000 	addc	r22, r22, r24
    ffbc:	85164000 	and	r8, r22, r8
    ffc0:	85374800 	and	r9, r23, r9
    ffc4:	81084800 	or	r8, r8, r9
    ffc8:	16c80000 	rsubk	r22, r8, r0
    ffcc:	82d64000 	or	r22, r22, r8
    ffd0:	11000000 	addk	r8, r0, r0
    ffd4:	81082000 	or	r8, r8, r4
    ffd8:	e8630004 	lwi	r3, r3, 4
    ffdc:	e8860004 	lwi	r4, r6, 4
    ffe0:	1120b000 	addk	r9, r0, r22
    ffe4:	91360041 	srl	r9, r22
    ffe8:	91290041 	srl	r9, r9
    ffec:	91290041 	srl	r9, r9
    fff0:	91290041 	srl	r9, r9
    fff4:	91290041 	srl	r9, r9
    fff8:	91290041 	srl	r9, r9
    fffc:	91290041 	srl	r9, r9
   10000:	91290041 	srl	r9, r9
   10004:	91290041 	srl	r9, r9
   10008:	91290041 	srl	r9, r9
   1000c:	91290041 	srl	r9, r9
   10010:	91290041 	srl	r9, r9
   10014:	91290041 	srl	r9, r9
   10018:	91290041 	srl	r9, r9
   1001c:	91290041 	srl	r9, r9
   10020:	91290041 	srl	r9, r9
   10024:	91290041 	srl	r9, r9
   10028:	91290041 	srl	r9, r9
   1002c:	91290041 	srl	r9, r9
   10030:	91290041 	srl	r9, r9
   10034:	91290041 	srl	r9, r9
   10038:	91290041 	srl	r9, r9
   1003c:	91290041 	srl	r9, r9
   10040:	91290041 	srl	r9, r9
   10044:	91290041 	srl	r9, r9
   10048:	91290041 	srl	r9, r9
   1004c:	91290041 	srl	r9, r9
   10050:	91290041 	srl	r9, r9
   10054:	91290041 	srl	r9, r9
   10058:	91290041 	srl	r9, r9
   1005c:	91290041 	srl	r9, r9
   10060:	88832000 	xor	r4, r3, r4
   10064:	be24004c 	bneid	r4, 76		// 100b0
   10068:	81292800 	or	r9, r9, r5
   1006c:	00a95800 	add	r5, r9, r11
   10070:	08885000 	addc	r4, r8, r10
   10074:	f86c0004 	swi	r3, r12, 4
   10078:	f8ec0008 	swi	r7, r12, 8
   1007c:	f88c000c 	swi	r4, r12, 12
   10080:	f8ac0010 	swi	r5, r12, 16
   10084:	b8100164 	brid	356		// 101e8
   10088:	30600003 	addik	r3, r0, 3
   1008c:	1487b001 	cmp	r4, r7, r22
   10090:	bc4401e0 	blti	r4, 480		// 10270
   10094:	10f60000 	addk	r7, r22, r0
   10098:	31400000 	addik	r10, r0, 0
   1009c:	31600000 	addik	r11, r0, 0
   100a0:	e8630004 	lwi	r3, r3, 4
   100a4:	e8860004 	lwi	r4, r6, 4
   100a8:	88832000 	xor	r4, r3, r4
   100ac:	bc04ffc0 	beqi	r4, -64		// 1006c
   100b0:	bc030268 	beqi	r3, 616		// 10318
   100b4:	04ab4800 	rsub	r5, r11, r9
   100b8:	0c8a4000 	rsubc	r4, r10, r8
   100bc:	bc440268 	blti	r4, 616		// 10324
   100c0:	f80c0004 	swi	r0, r12, 4
   100c4:	f8ec0008 	swi	r7, r12, 8
   100c8:	f88c000c 	swi	r4, r12, 12
   100cc:	f8ac0010 	swi	r5, r12, 16
   100d0:	b0000fff 	imm	4095
   100d4:	3060ffff 	addik	r3, r0, -1
   100d8:	30c0ffff 	addik	r6, r0, -1
   100dc:	30e0ffff 	addik	r7, r0, -1
   100e0:	00e53800 	add	r7, r5, r7
   100e4:	08c43000 	addc	r6, r4, r6
   100e8:	14661803 	cmpu	r3, r6, r3
   100ec:	be4300fc 	bltid	r3, 252		// 101e8
   100f0:	30600003 	addik	r3, r0, 3
   100f4:	b0000fff 	imm	4095
   100f8:	a866ffff 	xori	r3, r6, -1
   100fc:	bc030398 	beqi	r3, 920		// 10494
   10100:	e86c0008 	lwi	r3, r12, 8
   10104:	b0000fff 	imm	4095
   10108:	32e0ffff 	addik	r23, r0, -1
   1010c:	3100ffff 	addik	r8, r0, -1
   10110:	3120ffff 	addik	r9, r0, -1
   10114:	3063ffff 	addik	r3, r3, -1
   10118:	b8100010 	brid	16		// 10128
   1011c:	3300fffe 	addik	r24, r0, -2
   10120:	be0b01e8 	beqid	r11, 488		// 10308
   10124:	14c7c003 	cmpu	r6, r7, r24
   10128:	10c52800 	addk	r6, r5, r5
   1012c:	11402800 	addk	r10, r0, r5
   10130:	91450041 	srl	r10, r5
   10134:	914a0041 	srl	r10, r10
   10138:	914a0041 	srl	r10, r10
   1013c:	914a0041 	srl	r10, r10
   10140:	914a0041 	srl	r10, r10
   10144:	914a0041 	srl	r10, r10
   10148:	914a0041 	srl	r10, r10
   1014c:	914a0041 	srl	r10, r10
   10150:	914a0041 	srl	r10, r10
   10154:	914a0041 	srl	r10, r10
   10158:	914a0041 	srl	r10, r10
   1015c:	914a0041 	srl	r10, r10
   10160:	914a0041 	srl	r10, r10
   10164:	914a0041 	srl	r10, r10
   10168:	914a0041 	srl	r10, r10
   1016c:	914a0041 	srl	r10, r10
   10170:	914a0041 	srl	r10, r10
   10174:	914a0041 	srl	r10, r10
   10178:	914a0041 	srl	r10, r10
   1017c:	914a0041 	srl	r10, r10
   10180:	914a0041 	srl	r10, r10
   10184:	914a0041 	srl	r10, r10
   10188:	914a0041 	srl	r10, r10
   1018c:	914a0041 	srl	r10, r10
   10190:	914a0041 	srl	r10, r10
   10194:	914a0041 	srl	r10, r10
   10198:	914a0041 	srl	r10, r10
   1019c:	914a0041 	srl	r10, r10
   101a0:	914a0041 	srl	r10, r10
   101a4:	914a0041 	srl	r10, r10
   101a8:	914a0041 	srl	r10, r10
   101ac:	10a60000 	addk	r5, r6, r0
   101b0:	10e42000 	addk	r7, r4, r4
   101b4:	808a3800 	or	r4, r10, r7
   101b8:	00e54800 	add	r7, r5, r9
   101bc:	08c44000 	addc	r6, r4, r8
   101c0:	1546b803 	cmpu	r10, r6, r23
   101c4:	12c30000 	addk	r22, r3, r0
   101c8:	b0000fff 	imm	4095
   101cc:	a966ffff 	xori	r11, r6, -1
   101d0:	beaaff50 	bgeid	r10, -176		// 10120
   101d4:	3063ffff 	addik	r3, r3, -1
   101d8:	f88c000c 	swi	r4, r12, 12
   101dc:	f8ac0010 	swi	r5, r12, 16
   101e0:	facc0008 	swi	r22, r12, 8
   101e4:	30600003 	addik	r3, r0, 3
   101e8:	f86c0000 	swi	r3, r12, 0
   101ec:	b0001fff 	imm	8191
   101f0:	3060ffff 	addik	r3, r0, -1
   101f4:	14641803 	cmpu	r3, r4, r3
   101f8:	bea30054 	bgeid	r3, 84		// 1024c
   101fc:	106c0000 	addk	r3, r12, r0
   10200:	e86c0008 	lwi	r3, r12, 8
   10204:	91040021 	src	r8, r4
   10208:	91080021 	src	r8, r8
   1020c:	b0008000 	imm	-32768
   10210:	a5080000 	andi	r8, r8, 0
   10214:	90e50041 	srl	r7, r5
   10218:	80e83800 	or	r7, r8, r7
   1021c:	31000000 	addik	r8, r0, 0
   10220:	31200001 	addik	r9, r0, 1
   10224:	85044000 	and	r8, r4, r8
   10228:	85254800 	and	r9, r5, r9
   1022c:	90c40041 	srl	r6, r4
   10230:	80c83000 	or	r6, r8, r6
   10234:	80e93800 	or	r7, r9, r7
   10238:	30630001 	addik	r3, r3, 1
   1023c:	f8cc000c 	swi	r6, r12, 12
   10240:	f8ec0010 	swi	r7, r12, 16
   10244:	f86c0008 	swi	r3, r12, 8
   10248:	106c0000 	addk	r3, r12, r0
   1024c:	eac10004 	lwi	r22, r1, 4
   10250:	eae10008 	lwi	r23, r1, 8
   10254:	eb01000c 	lwi	r24, r1, 12
   10258:	eb210010 	lwi	r25, r1, 16
   1025c:	b60f0008 	rtsd	r15, 8
   10260:	30210014 	addik	r1, r1, 20
   10264:	bc0500e8 	beqi	r5, 232		// 1034c
   10268:	b60f0008 	rtsd	r15, 8
   1026c:	80000000 	or	r0, r0, r0
   10270:	31000000 	addik	r8, r0, 0
   10274:	31200000 	addik	r9, r0, 0
   10278:	b810fe2c 	brid	-468		// 100a4
   1027c:	e8630004 	lwi	r3, r3, 4
   10280:	aaf8ffff 	xori	r23, r24, -1
   10284:	a657001f 	andi	r18, r23, 31
   10288:	12c0c800 	addk	r22, r0, r25
   1028c:	be120014 	beqid	r18, 20		// 102a0
   10290:	12d60000 	addk	r22, r22, r0
   10294:	3252ffff 	addik	r18, r18, -1
   10298:	be32fffc 	bneid	r18, -4		// 10294
   1029c:	12d6b000 	addk	r22, r22, r22
   102a0:	a658001f 	andi	r18, r24, 31
   102a4:	10a04800 	addk	r5, r0, r9
   102a8:	be120014 	beqid	r18, 20		// 102bc
   102ac:	10a50000 	addk	r5, r5, r0
   102b0:	3252ffff 	addik	r18, r18, -1
   102b4:	be32fffc 	bneid	r18, -4		// 102b0
   102b8:	90a50041 	srl	r5, r5
   102bc:	33200001 	addik	r25, r0, 1
   102c0:	80b62800 	or	r5, r22, r5
   102c4:	32c00000 	addik	r22, r0, 0
   102c8:	32e00000 	addik	r23, r0, 0
   102cc:	a658001f 	andi	r18, r24, 31
   102d0:	10804000 	addk	r4, r0, r8
   102d4:	be120014 	beqid	r18, 20		// 102e8
   102d8:	10840000 	addk	r4, r4, r0
   102dc:	3252ffff 	addik	r18, r18, -1
   102e0:	be32fffc 	bneid	r18, -4		// 102dc
   102e4:	90840041 	srl	r4, r4
   102e8:	a658001f 	andi	r18, r24, 31
   102ec:	12e0c800 	addk	r23, r0, r25
   102f0:	be120014 	beqid	r18, 20		// 10304
   102f4:	12f70000 	addk	r23, r23, r0
   102f8:	3252ffff 	addik	r18, r18, -1
   102fc:	be32fffc 	bneid	r18, -4		// 102f8
   10300:	12f7b800 	addk	r23, r23, r23
   10304:	b800fca8 	bri	-856		// ffac
   10308:	bea6fe24 	bgeid	r6, -476		// 1012c
   1030c:	10c52800 	addk	r6, r5, r5
   10310:	b810fecc 	brid	-308		// 101dc
   10314:	f88c000c 	swi	r4, r12, 12
   10318:	04a95800 	rsub	r5, r9, r11
   1031c:	0c885000 	rsubc	r4, r8, r10
   10320:	bca4fda0 	bgei	r4, -608		// 100c0
   10324:	04a50000 	rsub	r5, r5, r0
   10328:	0c840000 	rsubc	r4, r4, r0
   1032c:	30600001 	addik	r3, r0, 1
   10330:	f86c0004 	swi	r3, r12, 4
   10334:	f8ec0008 	swi	r7, r12, 8
   10338:	f88c000c 	swi	r4, r12, 12
   1033c:	f8ac0010 	swi	r5, r12, 16
   10340:	b800fd90 	bri	-624		// 100d0
   10344:	b60f0008 	rtsd	r15, 8
   10348:	10660000 	addk	r3, r6, r0
   1034c:	e9230004 	lwi	r9, r3, 4
   10350:	e9030008 	lwi	r8, r3, 8
   10354:	e8e3000c 	lwi	r7, r3, 12
   10358:	e8a30010 	lwi	r5, r3, 16
   1035c:	f92c0004 	swi	r9, r12, 4
   10360:	f88c0000 	swi	r4, r12, 0
   10364:	e8630004 	lwi	r3, r3, 4
   10368:	e8860004 	lwi	r4, r6, 4
   1036c:	f90c0008 	swi	r8, r12, 8
   10370:	f8ec000c 	swi	r7, r12, 12
   10374:	84641800 	and	r3, r4, r3
   10378:	f86c0004 	swi	r3, r12, 4
   1037c:	f8ac0010 	swi	r5, r12, 16
   10380:	b60f0008 	rtsd	r15, 8
   10384:	106c0000 	addk	r3, r12, r0
   10388:	bc04fd18 	beqi	r4, -744		// 100a0
   1038c:	be160144 	beqid	r22, 324		// 104d0
   10390:	10e7c000 	addk	r7, r7, r24
   10394:	a658001f 	andi	r18, r24, 31
   10398:	10a05000 	addk	r5, r0, r10
   1039c:	be120014 	beqid	r18, 20		// 103b0
   103a0:	10a50000 	addk	r5, r5, r0
   103a4:	3252ffff 	addik	r18, r18, -1
   103a8:	be32fffc 	bneid	r18, -4		// 103a4
   103ac:	90a50041 	srl	r5, r5
   103b0:	be3600f8 	bneid	r22, 248		// 104a8
   103b4:	10800000 	addk	r4, r0, r0
   103b8:	32c00000 	addik	r22, r0, 0
   103bc:	32e00000 	addik	r23, r0, 0
   103c0:	33200001 	addik	r25, r0, 1
   103c4:	a658001f 	andi	r18, r24, 31
   103c8:	12e0c800 	addk	r23, r0, r25
   103cc:	be120014 	beqid	r18, 20		// 103e0
   103d0:	12f70000 	addk	r23, r23, r0
   103d4:	3252ffff 	addik	r18, r18, -1
   103d8:	be32fffc 	bneid	r18, -4		// 103d4
   103dc:	12f7b800 	addk	r23, r23, r23
   103e0:	3300ffff 	addik	r24, r0, -1
   103e4:	3320ffff 	addik	r25, r0, -1
   103e8:	02f7c800 	add	r23, r23, r25
   103ec:	0ad6c000 	addc	r22, r22, r24
   103f0:	85565000 	and	r10, r22, r10
   103f4:	85775800 	and	r11, r23, r11
   103f8:	814a5800 	or	r10, r10, r11
   103fc:	16ca0000 	rsubk	r22, r10, r0
   10400:	82d65000 	or	r22, r22, r10
   10404:	11400000 	addk	r10, r0, r0
   10408:	1160b000 	addk	r11, r0, r22
   1040c:	91760041 	srl	r11, r22
   10410:	916b0041 	srl	r11, r11
   10414:	916b0041 	srl	r11, r11
   10418:	916b0041 	srl	r11, r11
   1041c:	916b0041 	srl	r11, r11
   10420:	916b0041 	srl	r11, r11
   10424:	916b0041 	srl	r11, r11
   10428:	916b0041 	srl	r11, r11
   1042c:	916b0041 	srl	r11, r11
   10430:	916b0041 	srl	r11, r11
   10434:	916b0041 	srl	r11, r11
   10438:	916b0041 	srl	r11, r11
   1043c:	916b0041 	srl	r11, r11
   10440:	916b0041 	srl	r11, r11
   10444:	916b0041 	srl	r11, r11
   10448:	916b0041 	srl	r11, r11
   1044c:	916b0041 	srl	r11, r11
   10450:	916b0041 	srl	r11, r11
   10454:	916b0041 	srl	r11, r11
   10458:	916b0041 	srl	r11, r11
   1045c:	916b0041 	srl	r11, r11
   10460:	916b0041 	srl	r11, r11
   10464:	916b0041 	srl	r11, r11
   10468:	916b0041 	srl	r11, r11
   1046c:	916b0041 	srl	r11, r11
   10470:	916b0041 	srl	r11, r11
   10474:	916b0041 	srl	r11, r11
   10478:	916b0041 	srl	r11, r11
   1047c:	916b0041 	srl	r11, r11
   10480:	916b0041 	srl	r11, r11
   10484:	916b0041 	srl	r11, r11
   10488:	814a2000 	or	r10, r10, r4
   1048c:	b810fc14 	brid	-1004		// 100a0
   10490:	816b2800 	or	r11, r11, r5
   10494:	3060fffe 	addik	r3, r0, -2
   10498:	14671803 	cmpu	r3, r7, r3
   1049c:	bca3fc64 	bgei	r3, -924		// 10100
   104a0:	b810fd48 	brid	-696		// 101e8
   104a4:	30600003 	addik	r3, r0, 3
   104a8:	33200001 	addik	r25, r0, 1
   104ac:	a658001f 	andi	r18, r24, 31
   104b0:	12c0c800 	addk	r22, r0, r25
   104b4:	be120014 	beqid	r18, 20		// 104c8
   104b8:	12d60000 	addk	r22, r22, r0
   104bc:	3252ffff 	addik	r18, r18, -1
   104c0:	be32fffc 	bneid	r18, -4		// 104bc
   104c4:	12d6b000 	addk	r22, r22, r22
   104c8:	b810ff18 	brid	-232		// 103e0
   104cc:	12e40000 	addk	r23, r4, r0
   104d0:	132a5000 	addk	r25, r10, r10
   104d4:	aaf8ffff 	xori	r23, r24, -1
   104d8:	a657001f 	andi	r18, r23, 31
   104dc:	12c0c800 	addk	r22, r0, r25
   104e0:	be120014 	beqid	r18, 20		// 104f4
   104e4:	12d60000 	addk	r22, r22, r0
   104e8:	3252ffff 	addik	r18, r18, -1
   104ec:	be32fffc 	bneid	r18, -4		// 104e8
   104f0:	12d6b000 	addk	r22, r22, r22
   104f4:	a658001f 	andi	r18, r24, 31
   104f8:	10a05800 	addk	r5, r0, r11
   104fc:	be120014 	beqid	r18, 20		// 10510
   10500:	10a50000 	addk	r5, r5, r0
   10504:	3252ffff 	addik	r18, r18, -1
   10508:	be32fffc 	bneid	r18, -4		// 10504
   1050c:	90a50041 	srl	r5, r5
   10510:	a658001f 	andi	r18, r24, 31
   10514:	10805000 	addk	r4, r0, r10
   10518:	be120014 	beqid	r18, 20		// 1052c
   1051c:	10840000 	addk	r4, r4, r0
   10520:	3252ffff 	addik	r18, r18, -1
   10524:	be32fffc 	bneid	r18, -4		// 10520
   10528:	90840041 	srl	r4, r4
   1052c:	b810fe8c 	brid	-372		// 103b8
   10530:	80b62800 	or	r5, r22, r5
   10534:	a8a50004 	xori	r5, r5, 4
   10538:	bc25001c 	bnei	r5, 28		// 10554
   1053c:	e8a30004 	lwi	r5, r3, 4
   10540:	e8860004 	lwi	r4, r6, 4
   10544:	88852000 	xor	r4, r5, r4
   10548:	bc04000c 	beqi	r4, 12		// 10554
   1054c:	b0000001 	imm	1
   10550:	30602f6c 	addik	r3, r0, 12140	// 12f6c <__thenan_df>
   10554:	b60f0008 	rtsd	r15, 8
   10558:	80000000 	or	r0, r0, r0

0001055c <__adddf3>:
   1055c:	11450000 	addk	r10, r5, r0
   10560:	11660000 	addk	r11, r6, r0
   10564:	11280000 	addk	r9, r8, r0
   10568:	11070000 	addk	r8, r7, r0
   1056c:	3021ff98 	addik	r1, r1, -104
   10570:	30c10044 	addik	r6, r1, 68
   10574:	f9e10000 	swi	r15, r1, 0
   10578:	f9410060 	swi	r10, r1, 96
   1057c:	f9610064 	swi	r11, r1, 100
   10580:	f9010058 	swi	r8, r1, 88
   10584:	f921005c 	swi	r9, r1, 92
   10588:	b9f41e14 	brlid	r15, 7700	// 1239c <__unpack_d>
   1058c:	30a10060 	addik	r5, r1, 96
   10590:	30c10030 	addik	r6, r1, 48
   10594:	b9f41e08 	brlid	r15, 7688	// 1239c <__unpack_d>
   10598:	30a10058 	addik	r5, r1, 88
   1059c:	30a10044 	addik	r5, r1, 68
   105a0:	30c10030 	addik	r6, r1, 48
   105a4:	b9f4f8a8 	brlid	r15, -1880	// fe4c <_fpadd_parts>
   105a8:	30e1001c 	addik	r7, r1, 28
   105ac:	b9f41890 	brlid	r15, 6288	// 11e3c <__pack_d>
   105b0:	10a30000 	addk	r5, r3, r0
   105b4:	e9e10000 	lwi	r15, r1, 0
   105b8:	b60f0008 	rtsd	r15, 8
   105bc:	30210068 	addik	r1, r1, 104

000105c0 <__subdf3>:
   105c0:	11450000 	addk	r10, r5, r0
   105c4:	11660000 	addk	r11, r6, r0
   105c8:	11280000 	addk	r9, r8, r0
   105cc:	11070000 	addk	r8, r7, r0
   105d0:	3021ff98 	addik	r1, r1, -104
   105d4:	30c10044 	addik	r6, r1, 68
   105d8:	f9e10000 	swi	r15, r1, 0
   105dc:	f9410060 	swi	r10, r1, 96
   105e0:	f9610064 	swi	r11, r1, 100
   105e4:	f9010058 	swi	r8, r1, 88
   105e8:	f921005c 	swi	r9, r1, 92
   105ec:	b9f41db0 	brlid	r15, 7600	// 1239c <__unpack_d>
   105f0:	30a10060 	addik	r5, r1, 96
   105f4:	30c10030 	addik	r6, r1, 48
   105f8:	b9f41da4 	brlid	r15, 7588	// 1239c <__unpack_d>
   105fc:	30a10058 	addik	r5, r1, 88
   10600:	e8610034 	lwi	r3, r1, 52
   10604:	30a10044 	addik	r5, r1, 68
   10608:	30c10030 	addik	r6, r1, 48
   1060c:	30e1001c 	addik	r7, r1, 28
   10610:	a8630001 	xori	r3, r3, 1
   10614:	b9f4f838 	brlid	r15, -1992	// fe4c <_fpadd_parts>
   10618:	f8610034 	swi	r3, r1, 52
   1061c:	b9f41820 	brlid	r15, 6176	// 11e3c <__pack_d>
   10620:	10a30000 	addk	r5, r3, r0
   10624:	e9e10000 	lwi	r15, r1, 0
   10628:	b60f0008 	rtsd	r15, 8
   1062c:	30210068 	addik	r1, r1, 104

00010630 <__muldf3>:
   10630:	11450000 	addk	r10, r5, r0
   10634:	11660000 	addk	r11, r6, r0
   10638:	11280000 	addk	r9, r8, r0
   1063c:	11070000 	addk	r8, r7, r0
   10640:	3021ff58 	addik	r1, r1, -168
   10644:	30c10044 	addik	r6, r1, 68
   10648:	30a10060 	addik	r5, r1, 96
   1064c:	f9e10000 	swi	r15, r1, 0
   10650:	f9410060 	swi	r10, r1, 96
   10654:	f9610064 	swi	r11, r1, 100
   10658:	f9010058 	swi	r8, r1, 88
   1065c:	f921005c 	swi	r9, r1, 92
   10660:	fac10080 	swi	r22, r1, 128
   10664:	fae10084 	swi	r23, r1, 132
   10668:	fb010088 	swi	r24, r1, 136
   1066c:	fb21008c 	swi	r25, r1, 140
   10670:	fb410090 	swi	r26, r1, 144
   10674:	fb610094 	swi	r27, r1, 148
   10678:	fb810098 	swi	r28, r1, 152
   1067c:	fba1009c 	swi	r29, r1, 156
   10680:	fbc100a0 	swi	r30, r1, 160
   10684:	b9f41d18 	brlid	r15, 7448	// 1239c <__unpack_d>
   10688:	fbe100a4 	swi	r31, r1, 164
   1068c:	30a10058 	addik	r5, r1, 88
   10690:	b9f41d0c 	brlid	r15, 7436	// 1239c <__unpack_d>
   10694:	30c10030 	addik	r6, r1, 48
   10698:	e8810044 	lwi	r4, r1, 68
   1069c:	30600001 	addik	r3, r0, 1
   106a0:	14a41803 	cmpu	r5, r4, r3
   106a4:	be4500e0 	bltid	r5, 224		// 10784
   106a8:	e8a10030 	lwi	r5, r1, 48
   106ac:	e8810048 	lwi	r4, r1, 72
   106b0:	e8610034 	lwi	r3, r1, 52
   106b4:	30a10044 	addik	r5, r1, 68
   106b8:	88641800 	xor	r3, r4, r3
   106bc:	14830000 	rsubk	r4, r3, r0
   106c0:	80641800 	or	r3, r4, r3
   106c4:	10801800 	addk	r4, r0, r3
   106c8:	90830041 	srl	r4, r3
   106cc:	90840041 	srl	r4, r4
   106d0:	90840041 	srl	r4, r4
   106d4:	90840041 	srl	r4, r4
   106d8:	90840041 	srl	r4, r4
   106dc:	90840041 	srl	r4, r4
   106e0:	90840041 	srl	r4, r4
   106e4:	90840041 	srl	r4, r4
   106e8:	90840041 	srl	r4, r4
   106ec:	90840041 	srl	r4, r4
   106f0:	90840041 	srl	r4, r4
   106f4:	90840041 	srl	r4, r4
   106f8:	90840041 	srl	r4, r4
   106fc:	90840041 	srl	r4, r4
   10700:	90840041 	srl	r4, r4
   10704:	90840041 	srl	r4, r4
   10708:	90840041 	srl	r4, r4
   1070c:	90840041 	srl	r4, r4
   10710:	90840041 	srl	r4, r4
   10714:	90840041 	srl	r4, r4
   10718:	90840041 	srl	r4, r4
   1071c:	90840041 	srl	r4, r4
   10720:	90840041 	srl	r4, r4
   10724:	90840041 	srl	r4, r4
   10728:	90840041 	srl	r4, r4
   1072c:	90840041 	srl	r4, r4
   10730:	90840041 	srl	r4, r4
   10734:	90840041 	srl	r4, r4
   10738:	90840041 	srl	r4, r4
   1073c:	90840041 	srl	r4, r4
   10740:	90840041 	srl	r4, r4
   10744:	f8810048 	swi	r4, r1, 72
   10748:	b9f416f4 	brlid	r15, 5876	// 11e3c <__pack_d>
   1074c:	80000000 	or	r0, r0, r0
   10750:	e9e10000 	lwi	r15, r1, 0
   10754:	eac10080 	lwi	r22, r1, 128
   10758:	eae10084 	lwi	r23, r1, 132
   1075c:	eb010088 	lwi	r24, r1, 136
   10760:	eb21008c 	lwi	r25, r1, 140
   10764:	eb410090 	lwi	r26, r1, 144
   10768:	eb610094 	lwi	r27, r1, 148
   1076c:	eb810098 	lwi	r28, r1, 152
   10770:	eba1009c 	lwi	r29, r1, 156
   10774:	ebc100a0 	lwi	r30, r1, 160
   10778:	ebe100a4 	lwi	r31, r1, 164
   1077c:	b60f0008 	rtsd	r15, 8
   10780:	302100a8 	addik	r1, r1, 168
   10784:	14651803 	cmpu	r3, r5, r3
   10788:	be4300a8 	bltid	r3, 168		// 10830
   1078c:	a8640004 	xori	r3, r4, 4
   10790:	e8610034 	lwi	r3, r1, 52
   10794:	e8810048 	lwi	r4, r1, 72
   10798:	30a10030 	addik	r5, r1, 48
   1079c:	88641800 	xor	r3, r4, r3
   107a0:	14830000 	rsubk	r4, r3, r0
   107a4:	80641800 	or	r3, r4, r3
   107a8:	10801800 	addk	r4, r0, r3
   107ac:	90830041 	srl	r4, r3
   107b0:	90840041 	srl	r4, r4
   107b4:	90840041 	srl	r4, r4
   107b8:	90840041 	srl	r4, r4
   107bc:	90840041 	srl	r4, r4
   107c0:	90840041 	srl	r4, r4
   107c4:	90840041 	srl	r4, r4
   107c8:	90840041 	srl	r4, r4
   107cc:	90840041 	srl	r4, r4
   107d0:	90840041 	srl	r4, r4
   107d4:	90840041 	srl	r4, r4
   107d8:	90840041 	srl	r4, r4
   107dc:	90840041 	srl	r4, r4
   107e0:	90840041 	srl	r4, r4
   107e4:	90840041 	srl	r4, r4
   107e8:	90840041 	srl	r4, r4
   107ec:	90840041 	srl	r4, r4
   107f0:	90840041 	srl	r4, r4
   107f4:	90840041 	srl	r4, r4
   107f8:	90840041 	srl	r4, r4
   107fc:	90840041 	srl	r4, r4
   10800:	90840041 	srl	r4, r4
   10804:	90840041 	srl	r4, r4
   10808:	90840041 	srl	r4, r4
   1080c:	90840041 	srl	r4, r4
   10810:	90840041 	srl	r4, r4
   10814:	90840041 	srl	r4, r4
   10818:	90840041 	srl	r4, r4
   1081c:	90840041 	srl	r4, r4
   10820:	90840041 	srl	r4, r4
   10824:	90840041 	srl	r4, r4
   10828:	b810ff20 	brid	-224		// 10748
   1082c:	f8810034 	swi	r4, r1, 52
   10830:	be230020 	bneid	r3, 32		// 10850
   10834:	a8650002 	xori	r3, r5, 2
   10838:	b0000001 	imm	1
   1083c:	30a02f6c 	addik	r5, r0, 12140	// 12f6c <__thenan_df>
   10840:	be03ff08 	beqid	r3, -248		// 10748
   10844:	e8810048 	lwi	r4, r1, 72
   10848:	b810fe6c 	brid	-404		// 106b4
   1084c:	e8610034 	lwi	r3, r1, 52
   10850:	a8650004 	xori	r3, r5, 4
   10854:	be230020 	bneid	r3, 32		// 10874
   10858:	a8840002 	xori	r4, r4, 2
   1085c:	b0000001 	imm	1
   10860:	30a02f6c 	addik	r5, r0, 12140	// 12f6c <__thenan_df>
   10864:	be04fee4 	beqid	r4, -284		// 10748
   10868:	e8610034 	lwi	r3, r1, 52
   1086c:	b810ff2c 	brid	-212		// 10798
   10870:	e8810048 	lwi	r4, r1, 72
   10874:	be04fe38 	beqid	r4, -456		// 106ac
   10878:	a8a50002 	xori	r5, r5, 2
   1087c:	be05ff14 	beqid	r5, -236		// 10790
   10880:	13c00000 	addk	r30, r0, r0
   10884:	e8810050 	lwi	r4, r1, 80
   10888:	e8a10054 	lwi	r5, r1, 84
   1088c:	33800000 	addik	r28, r0, 0
   10890:	33a0ffff 	addik	r29, r0, -1
   10894:	f8810068 	swi	r4, r1, 104
   10898:	f8a1006c 	swi	r5, r1, 108
   1089c:	e881003c 	lwi	r4, r1, 60
   108a0:	e8a10040 	lwi	r5, r1, 64
   108a4:	84c4e000 	and	r6, r4, r28
   108a8:	84e5e800 	and	r7, r5, r29
   108ac:	f8c10070 	swi	r6, r1, 112
   108b0:	f8e10074 	swi	r7, r1, 116
   108b4:	e8c10068 	lwi	r6, r1, 104
   108b8:	e8e1006c 	lwi	r7, r1, 108
   108bc:	13e40000 	addk	r31, r4, r0
   108c0:	8746e000 	and	r26, r6, r28
   108c4:	8767e800 	and	r27, r7, r29
   108c8:	10ba0000 	addk	r5, r26, r0
   108cc:	e8e10070 	lwi	r7, r1, 112
   108d0:	e9010074 	lwi	r8, r1, 116
   108d4:	b9f41280 	brlid	r15, 4736	// 11b54 <__muldi3>
   108d8:	10db0000 	addk	r6, r27, r0
   108dc:	84dee000 	and	r6, r30, r28
   108e0:	84ffe800 	and	r7, r31, r29
   108e4:	f8c10078 	swi	r6, r1, 120
   108e8:	f8e1007c 	swi	r7, r1, 124
   108ec:	10a60000 	addk	r5, r6, r0
   108f0:	111b0000 	addk	r8, r27, r0
   108f4:	10c70000 	addk	r6, r7, r0
   108f8:	10fa0000 	addk	r7, r26, r0
   108fc:	13030000 	addk	r24, r3, r0
   10900:	b9f41254 	brlid	r15, 4692	// 11b54 <__muldi3>
   10904:	13240000 	addk	r25, r4, r0
   10908:	e8e10068 	lwi	r7, r1, 104
   1090c:	879ee000 	and	r28, r30, r28
   10910:	10bc0000 	addk	r5, r28, r0
   10914:	11670000 	addk	r11, r7, r0
   10918:	e8e10078 	lwi	r7, r1, 120
   1091c:	e901007c 	lwi	r8, r1, 124
   10920:	13430000 	addk	r26, r3, r0
   10924:	87abe800 	and	r29, r11, r29
   10928:	10dd0000 	addk	r6, r29, r0
   1092c:	b9f41228 	brlid	r15, 4648	// 11b54 <__muldi3>
   10930:	13640000 	addk	r27, r4, r0
   10934:	e8e10070 	lwi	r7, r1, 112
   10938:	e9010074 	lwi	r8, r1, 116
   1093c:	10bc0000 	addk	r5, r28, r0
   10940:	10dd0000 	addk	r6, r29, r0
   10944:	13c30000 	addk	r30, r3, r0
   10948:	b9f4120c 	brlid	r15, 4620	// 11b54 <__muldi3>
   1094c:	13e40000 	addk	r31, r4, r0
   10950:	11030000 	addk	r8, r3, r0
   10954:	11240000 	addk	r9, r4, r0
   10958:	0129d800 	add	r9, r9, r27
   1095c:	0908d000 	addc	r8, r8, r26
   10960:	10680000 	addk	r3, r8, r0
   10964:	147a1803 	cmpu	r3, r26, r3
   10968:	be43033c 	bltid	r3, 828		// 10ca4
   1096c:	887a4000 	xor	r3, r26, r8
   10970:	be23000c 	bneid	r3, 12		// 1097c
   10974:	147b4803 	cmpu	r3, r27, r9
   10978:	bc43032c 	blti	r3, 812		// 10ca4
   1097c:	30800000 	addik	r4, r0, 0
   10980:	30a00000 	addik	r5, r0, 0
   10984:	10c90000 	addk	r6, r9, r0
   10988:	10e00000 	addk	r7, r0, r0
   1098c:	00e7c800 	add	r7, r7, r25
   10990:	08c6c000 	addc	r6, r6, r24
   10994:	10660000 	addk	r3, r6, r0
   10998:	14781803 	cmpu	r3, r24, r3
   1099c:	bc430018 	blti	r3, 24		// 109b4
   109a0:	88783000 	xor	r3, r24, r6
   109a4:	be230024 	bneid	r3, 36		// 109c8
   109a8:	11680000 	addk	r11, r8, r0
   109ac:	14793803 	cmpu	r3, r25, r7
   109b0:	bca30018 	bgei	r3, 24		// 109c8
   109b4:	31400000 	addik	r10, r0, 0
   109b8:	31600001 	addik	r11, r0, 1
   109bc:	00a55800 	add	r5, r5, r11
   109c0:	08845000 	addc	r4, r4, r10
   109c4:	11680000 	addk	r11, r8, r0
   109c8:	e8610034 	lwi	r3, r1, 52
   109cc:	e9010048 	lwi	r8, r1, 72
   109d0:	e921004c 	lwi	r9, r1, 76
   109d4:	11400000 	addk	r10, r0, r0
   109d8:	89081800 	xor	r8, r8, r3
   109dc:	e8610038 	lwi	r3, r1, 56
   109e0:	b0001fff 	imm	8191
   109e4:	3380ffff 	addik	r28, r0, -1
   109e8:	016bf800 	add	r11, r11, r31
   109ec:	094af000 	addc	r10, r10, r30
   109f0:	10691800 	addk	r3, r9, r3
   109f4:	15280000 	rsubk	r9, r8, r0
   109f8:	00ab2800 	add	r5, r11, r5
   109fc:	088a2000 	addc	r4, r10, r4
   10a00:	81094000 	or	r8, r9, r8
   10a04:	31430004 	addik	r10, r3, 4
   10a08:	11204000 	addk	r9, r0, r8
   10a0c:	91280041 	srl	r9, r8
   10a10:	91290041 	srl	r9, r9
   10a14:	91290041 	srl	r9, r9
   10a18:	91290041 	srl	r9, r9
   10a1c:	91290041 	srl	r9, r9
   10a20:	91290041 	srl	r9, r9
   10a24:	91290041 	srl	r9, r9
   10a28:	91290041 	srl	r9, r9
   10a2c:	91290041 	srl	r9, r9
   10a30:	91290041 	srl	r9, r9
   10a34:	91290041 	srl	r9, r9
   10a38:	91290041 	srl	r9, r9
   10a3c:	91290041 	srl	r9, r9
   10a40:	91290041 	srl	r9, r9
   10a44:	91290041 	srl	r9, r9
   10a48:	91290041 	srl	r9, r9
   10a4c:	91290041 	srl	r9, r9
   10a50:	91290041 	srl	r9, r9
   10a54:	91290041 	srl	r9, r9
   10a58:	91290041 	srl	r9, r9
   10a5c:	91290041 	srl	r9, r9
   10a60:	91290041 	srl	r9, r9
   10a64:	91290041 	srl	r9, r9
   10a68:	91290041 	srl	r9, r9
   10a6c:	91290041 	srl	r9, r9
   10a70:	91290041 	srl	r9, r9
   10a74:	91290041 	srl	r9, r9
   10a78:	91290041 	srl	r9, r9
   10a7c:	91290041 	srl	r9, r9
   10a80:	91290041 	srl	r9, r9
   10a84:	91290041 	srl	r9, r9
   10a88:	f9410024 	swi	r10, r1, 36
   10a8c:	f9210020 	swi	r9, r1, 32
   10a90:	1504e003 	cmpu	r8, r4, r28
   10a94:	bea80084 	bgeid	r8, 132		// 10b18
   10a98:	30630005 	addik	r3, r3, 5
   10a9c:	31400000 	addik	r10, r0, 0
   10aa0:	31600001 	addik	r11, r0, 1
   10aa4:	b0008000 	imm	-32768
   10aa8:	33000000 	addik	r24, r0, 0
   10aac:	33200000 	addik	r25, r0, 0
   10ab0:	93640041 	srl	r27, r4
   10ab4:	93440021 	src	r26, r4
   10ab8:	935a0021 	src	r26, r26
   10abc:	b0008000 	imm	-32768
   10ac0:	a75a0000 	andi	r26, r26, 0
   10ac4:	85045000 	and	r8, r4, r10
   10ac8:	109b0000 	addk	r4, r27, r0
   10acc:	85255800 	and	r9, r5, r11
   10ad0:	91850041 	srl	r12, r5
   10ad4:	81084800 	or	r8, r8, r9
   10ad8:	80ba6000 	or	r5, r26, r12
   10adc:	93660021 	src	r27, r6
   10ae0:	937b0021 	src	r27, r27
   10ae4:	b0008000 	imm	-32768
   10ae8:	a77b0000 	andi	r27, r27, 0
   10aec:	1524e003 	cmpu	r9, r4, r28
   10af0:	be08001c 	beqid	r8, 28		// 10b0c
   10af4:	11830000 	addk	r12, r3, r0
   10af8:	92e70041 	srl	r23, r7
   10afc:	82fbb800 	or	r23, r27, r23
   10b00:	92c60041 	srl	r22, r6
   10b04:	80d6c000 	or	r6, r22, r24
   10b08:	80f7c800 	or	r7, r23, r25
   10b0c:	be49ffa4 	bltid	r9, -92		// 10ab0
   10b10:	30630001 	addik	r3, r3, 1
   10b14:	f9810024 	swi	r12, r1, 36
   10b18:	b0000fff 	imm	4095
   10b1c:	3300ffff 	addik	r24, r0, -1
   10b20:	1464c003 	cmpu	r3, r4, r24
   10b24:	be430154 	bltid	r3, 340		// 10c78
   10b28:	e8610024 	lwi	r3, r1, 36
   10b2c:	31000000 	addik	r8, r0, 0
   10b30:	31200001 	addik	r9, r0, 1
   10b34:	3063ffff 	addik	r3, r3, -1
   10b38:	12c02800 	addk	r22, r0, r5
   10b3c:	92c50041 	srl	r22, r5
   10b40:	92d60041 	srl	r22, r22
   10b44:	92d60041 	srl	r22, r22
   10b48:	92d60041 	srl	r22, r22
   10b4c:	92d60041 	srl	r22, r22
   10b50:	92d60041 	srl	r22, r22
   10b54:	92d60041 	srl	r22, r22
   10b58:	92d60041 	srl	r22, r22
   10b5c:	92d60041 	srl	r22, r22
   10b60:	92d60041 	srl	r22, r22
   10b64:	92d60041 	srl	r22, r22
   10b68:	92d60041 	srl	r22, r22
   10b6c:	92d60041 	srl	r22, r22
   10b70:	92d60041 	srl	r22, r22
   10b74:	92d60041 	srl	r22, r22
   10b78:	92d60041 	srl	r22, r22
   10b7c:	92d60041 	srl	r22, r22
   10b80:	92d60041 	srl	r22, r22
   10b84:	92d60041 	srl	r22, r22
   10b88:	92d60041 	srl	r22, r22
   10b8c:	92d60041 	srl	r22, r22
   10b90:	92d60041 	srl	r22, r22
   10b94:	92d60041 	srl	r22, r22
   10b98:	92d60041 	srl	r22, r22
   10b9c:	92d60041 	srl	r22, r22
   10ba0:	92d60041 	srl	r22, r22
   10ba4:	92d60041 	srl	r22, r22
   10ba8:	92d60041 	srl	r22, r22
   10bac:	92d60041 	srl	r22, r22
   10bb0:	92d60041 	srl	r22, r22
   10bb4:	92d60041 	srl	r22, r22
   10bb8:	11642000 	addk	r11, r4, r4
   10bbc:	11452800 	addk	r10, r5, r5
   10bc0:	80965800 	or	r4, r22, r11
   10bc4:	11863000 	addk	r12, r6, r6
   10bc8:	11673800 	addk	r11, r7, r7
   10bcc:	12c03800 	addk	r22, r0, r7
   10bd0:	92c70041 	srl	r22, r7
   10bd4:	92d60041 	srl	r22, r22
   10bd8:	92d60041 	srl	r22, r22
   10bdc:	92d60041 	srl	r22, r22
   10be0:	92d60041 	srl	r22, r22
   10be4:	92d60041 	srl	r22, r22
   10be8:	92d60041 	srl	r22, r22
   10bec:	92d60041 	srl	r22, r22
   10bf0:	92d60041 	srl	r22, r22
   10bf4:	92d60041 	srl	r22, r22
   10bf8:	92d60041 	srl	r22, r22
   10bfc:	92d60041 	srl	r22, r22
   10c00:	92d60041 	srl	r22, r22
   10c04:	92d60041 	srl	r22, r22
   10c08:	92d60041 	srl	r22, r22
   10c0c:	92d60041 	srl	r22, r22
   10c10:	92d60041 	srl	r22, r22
   10c14:	92d60041 	srl	r22, r22
   10c18:	92d60041 	srl	r22, r22
   10c1c:	92d60041 	srl	r22, r22
   10c20:	92d60041 	srl	r22, r22
   10c24:	92d60041 	srl	r22, r22
   10c28:	92d60041 	srl	r22, r22
   10c2c:	92d60041 	srl	r22, r22
   10c30:	92d60041 	srl	r22, r22
   10c34:	92d60041 	srl	r22, r22
   10c38:	92d60041 	srl	r22, r22
   10c3c:	92d60041 	srl	r22, r22
   10c40:	92d60041 	srl	r22, r22
   10c44:	92d60041 	srl	r22, r22
   10c48:	92d60041 	srl	r22, r22
   10c4c:	10aa0000 	addk	r5, r10, r0
   10c50:	bea60010 	bgeid	r6, 16		// 10c60
   10c54:	12e30000 	addk	r23, r3, r0
   10c58:	80844000 	or	r4, r4, r8
   10c5c:	80aa4800 	or	r5, r10, r9
   10c60:	1544c003 	cmpu	r10, r4, r24
   10c64:	80d66000 	or	r6, r22, r12
   10c68:	10eb0000 	addk	r7, r11, r0
   10c6c:	beaafecc 	bgeid	r10, -308		// 10b38
   10c70:	3063ffff 	addik	r3, r3, -1
   10c74:	fae10024 	swi	r23, r1, 36
   10c78:	31000000 	addik	r8, r0, 0
   10c7c:	312000ff 	addik	r9, r0, 255
   10c80:	85044000 	and	r8, r4, r8
   10c84:	be080030 	beqid	r8, 48		// 10cb4
   10c88:	85254800 	and	r9, r5, r9
   10c8c:	30600003 	addik	r3, r0, 3
   10c90:	f8810028 	swi	r4, r1, 40
   10c94:	f8a1002c 	swi	r5, r1, 44
   10c98:	f861001c 	swi	r3, r1, 28
   10c9c:	b810faac 	brid	-1364		// 10748
   10ca0:	30a1001c 	addik	r5, r1, 28
   10ca4:	30800001 	addik	r4, r0, 1
   10ca8:	30a00000 	addik	r5, r0, 0
   10cac:	b810fcdc 	brid	-804		// 10988
   10cb0:	10c90000 	addk	r6, r9, r0
   10cb4:	a8690080 	xori	r3, r9, 128
   10cb8:	bc23ffd4 	bnei	r3, -44		// 10c8c
   10cbc:	31000000 	addik	r8, r0, 0
   10cc0:	31200100 	addik	r9, r0, 256
   10cc4:	85044000 	and	r8, r4, r8
   10cc8:	85254800 	and	r9, r5, r9
   10ccc:	81084800 	or	r8, r8, r9
   10cd0:	be28ffc0 	bneid	r8, -64		// 10c90
   10cd4:	30600003 	addik	r3, r0, 3
   10cd8:	80c63800 	or	r6, r6, r7
   10cdc:	bc06ffb4 	beqi	r6, -76		// 10c90
   10ce0:	30c00000 	addik	r6, r0, 0
   10ce4:	30e00080 	addik	r7, r0, 128
   10ce8:	00a53800 	add	r5, r5, r7
   10cec:	08843000 	addc	r4, r4, r6
   10cf0:	30c0ffff 	addik	r6, r0, -1
   10cf4:	30e0ff00 	addik	r7, r0, -256
   10cf8:	84843000 	and	r4, r4, r6
   10cfc:	b810ff94 	brid	-108		// 10c90
   10d00:	84a53800 	and	r5, r5, r7

00010d04 <__divdf3>:
   10d04:	11450000 	addk	r10, r5, r0
   10d08:	11660000 	addk	r11, r6, r0
   10d0c:	11280000 	addk	r9, r8, r0
   10d10:	11070000 	addk	r8, r7, r0
   10d14:	3021ff90 	addik	r1, r1, -112
   10d18:	30c10030 	addik	r6, r1, 48
   10d1c:	30a1004c 	addik	r5, r1, 76
   10d20:	f9e10000 	swi	r15, r1, 0
   10d24:	f941004c 	swi	r10, r1, 76
   10d28:	f9610050 	swi	r11, r1, 80
   10d2c:	f9010044 	swi	r8, r1, 68
   10d30:	f9210048 	swi	r9, r1, 72
   10d34:	fa61005c 	swi	r19, r1, 92
   10d38:	fac10060 	swi	r22, r1, 96
   10d3c:	fae10064 	swi	r23, r1, 100
   10d40:	fb010068 	swi	r24, r1, 104
   10d44:	b9f41658 	brlid	r15, 5720	// 1239c <__unpack_d>
   10d48:	fb21006c 	swi	r25, r1, 108
   10d4c:	30a10044 	addik	r5, r1, 68
   10d50:	b9f4164c 	brlid	r15, 5708	// 1239c <__unpack_d>
   10d54:	30c1001c 	addik	r6, r1, 28
   10d58:	e8810030 	lwi	r4, r1, 48
   10d5c:	30600001 	addik	r3, r0, 1
   10d60:	14a41803 	cmpu	r5, r4, r3
   10d64:	be450034 	bltid	r5, 52		// 10d98
   10d68:	e8c1001c 	lwi	r6, r1, 28
   10d6c:	30a10030 	addik	r5, r1, 48
   10d70:	b9f410cc 	brlid	r15, 4300	// 11e3c <__pack_d>
   10d74:	80000000 	or	r0, r0, r0
   10d78:	e9e10000 	lwi	r15, r1, 0
   10d7c:	ea61005c 	lwi	r19, r1, 92
   10d80:	eac10060 	lwi	r22, r1, 96
   10d84:	eae10064 	lwi	r23, r1, 100
   10d88:	eb010068 	lwi	r24, r1, 104
   10d8c:	eb21006c 	lwi	r25, r1, 108
   10d90:	b60f0008 	rtsd	r15, 8
   10d94:	30210070 	addik	r1, r1, 112
   10d98:	14661803 	cmpu	r3, r6, r3
   10d9c:	bea3ffd4 	bgeid	r3, -44		// 10d70
   10da0:	30a1001c 	addik	r5, r1, 28
   10da4:	e8e10034 	lwi	r7, r1, 52
   10da8:	e8a10020 	lwi	r5, r1, 32
   10dac:	a8640004 	xori	r3, r4, 4
   10db0:	88a72800 	xor	r5, r7, r5
   10db4:	be030014 	beqid	r3, 20		// 10dc8
   10db8:	f8a10034 	swi	r5, r1, 52
   10dbc:	a8640002 	xori	r3, r4, 2
   10dc0:	be23001c 	bneid	r3, 28		// 10ddc
   10dc4:	a8660004 	xori	r3, r6, 4
   10dc8:	88843000 	xor	r4, r4, r6
   10dcc:	bc24ffa0 	bnei	r4, -96		// 10d6c
   10dd0:	b0000001 	imm	1
   10dd4:	30a02f6c 	addik	r5, r0, 12140	// 12f6c <__thenan_df>
   10dd8:	b800ff98 	bri	-104		// 10d70
   10ddc:	be03020c 	beqid	r3, 524		// 10fe8
   10de0:	a8c60002 	xori	r6, r6, 2
   10de4:	be060220 	beqid	r6, 544		// 11004
   10de8:	e8e10038 	lwi	r7, r1, 56
   10dec:	e881003c 	lwi	r4, r1, 60
   10df0:	e8a10040 	lwi	r5, r1, 64
   10df4:	e8610024 	lwi	r3, r1, 36
   10df8:	e9010028 	lwi	r8, r1, 40
   10dfc:	e921002c 	lwi	r9, r1, 44
   10e00:	10c40000 	addk	r6, r4, r0
   10e04:	14633800 	rsubk	r3, r3, r7
   10e08:	14c83003 	cmpu	r6, r8, r6
   10e0c:	be460018 	bltid	r6, 24		// 10e24
   10e10:	f8610038 	swi	r3, r1, 56
   10e14:	88c82000 	xor	r6, r8, r4
   10e18:	be2600a4 	bneid	r6, 164		// 10ebc
   10e1c:	14c92803 	cmpu	r6, r9, r5
   10e20:	bca6009c 	bgei	r6, 156		// 10ebc
   10e24:	10c52800 	addk	r6, r5, r5
   10e28:	11402800 	addk	r10, r0, r5
   10e2c:	91450041 	srl	r10, r5
   10e30:	914a0041 	srl	r10, r10
   10e34:	914a0041 	srl	r10, r10
   10e38:	914a0041 	srl	r10, r10
   10e3c:	914a0041 	srl	r10, r10
   10e40:	914a0041 	srl	r10, r10
   10e44:	914a0041 	srl	r10, r10
   10e48:	914a0041 	srl	r10, r10
   10e4c:	914a0041 	srl	r10, r10
   10e50:	914a0041 	srl	r10, r10
   10e54:	914a0041 	srl	r10, r10
   10e58:	914a0041 	srl	r10, r10
   10e5c:	914a0041 	srl	r10, r10
   10e60:	914a0041 	srl	r10, r10
   10e64:	914a0041 	srl	r10, r10
   10e68:	914a0041 	srl	r10, r10
   10e6c:	914a0041 	srl	r10, r10
   10e70:	914a0041 	srl	r10, r10
   10e74:	914a0041 	srl	r10, r10
   10e78:	914a0041 	srl	r10, r10
   10e7c:	914a0041 	srl	r10, r10
   10e80:	914a0041 	srl	r10, r10
   10e84:	914a0041 	srl	r10, r10
   10e88:	914a0041 	srl	r10, r10
   10e8c:	914a0041 	srl	r10, r10
   10e90:	914a0041 	srl	r10, r10
   10e94:	914a0041 	srl	r10, r10
   10e98:	914a0041 	srl	r10, r10
   10e9c:	914a0041 	srl	r10, r10
   10ea0:	914a0041 	srl	r10, r10
   10ea4:	914a0041 	srl	r10, r10
   10ea8:	10a60000 	addk	r5, r6, r0
   10eac:	10e42000 	addk	r7, r4, r4
   10eb0:	3063ffff 	addik	r3, r3, -1
   10eb4:	808a3800 	or	r4, r10, r7
   10eb8:	f8610038 	swi	r3, r1, 56
   10ebc:	3060003d 	addik	r3, r0, 61
   10ec0:	b0001000 	imm	4096
   10ec4:	30c00000 	addik	r6, r0, 0
   10ec8:	30e00000 	addik	r7, r0, 0
   10ecc:	31400000 	addik	r10, r0, 0
   10ed0:	31600000 	addik	r11, r0, 0
   10ed4:	16e82003 	cmpu	r23, r8, r4
   10ed8:	91860041 	srl	r12, r6
   10edc:	92c60021 	src	r22, r6
   10ee0:	92d60021 	src	r22, r22
   10ee4:	b0008000 	imm	-32768
   10ee8:	a6d60000 	andi	r22, r22, 0
   10eec:	92670041 	srl	r19, r7
   10ef0:	3063ffff 	addik	r3, r3, -1
   10ef4:	be570034 	bltid	r23, 52		// 10f28
   10ef8:	8b082000 	xor	r24, r8, r4
   10efc:	be38000c 	bneid	r24, 12		// 10f08
   10f00:	16e92803 	cmpu	r23, r9, r5
   10f04:	bc570024 	blti	r23, 36		// 10f28
   10f08:	07292800 	rsub	r25, r9, r5
   10f0c:	0f082000 	rsubc	r24, r8, r4
   10f10:	10980000 	addk	r4, r24, r0
   10f14:	10b90000 	addk	r5, r25, r0
   10f18:	fb010054 	swi	r24, r1, 84
   10f1c:	fb210058 	swi	r25, r1, 88
   10f20:	814a3000 	or	r10, r10, r6
   10f24:	816b3800 	or	r11, r11, r7
   10f28:	10cc0000 	addk	r6, r12, r0
   10f2c:	12e42000 	addk	r23, r4, r4
   10f30:	11852800 	addk	r12, r5, r5
   10f34:	13002800 	addk	r24, r0, r5
   10f38:	93050041 	srl	r24, r5
   10f3c:	93180041 	srl	r24, r24
   10f40:	93180041 	srl	r24, r24
   10f44:	93180041 	srl	r24, r24
   10f48:	93180041 	srl	r24, r24
   10f4c:	93180041 	srl	r24, r24
   10f50:	93180041 	srl	r24, r24
   10f54:	93180041 	srl	r24, r24
   10f58:	93180041 	srl	r24, r24
   10f5c:	93180041 	srl	r24, r24
   10f60:	93180041 	srl	r24, r24
   10f64:	93180041 	srl	r24, r24
   10f68:	93180041 	srl	r24, r24
   10f6c:	93180041 	srl	r24, r24
   10f70:	93180041 	srl	r24, r24
   10f74:	93180041 	srl	r24, r24
   10f78:	93180041 	srl	r24, r24
   10f7c:	93180041 	srl	r24, r24
   10f80:	93180041 	srl	r24, r24
   10f84:	93180041 	srl	r24, r24
   10f88:	93180041 	srl	r24, r24
   10f8c:	93180041 	srl	r24, r24
   10f90:	93180041 	srl	r24, r24
   10f94:	93180041 	srl	r24, r24
   10f98:	93180041 	srl	r24, r24
   10f9c:	93180041 	srl	r24, r24
   10fa0:	93180041 	srl	r24, r24
   10fa4:	93180041 	srl	r24, r24
   10fa8:	93180041 	srl	r24, r24
   10fac:	93180041 	srl	r24, r24
   10fb0:	93180041 	srl	r24, r24
   10fb4:	80f69800 	or	r7, r22, r19
   10fb8:	8098b800 	or	r4, r24, r23
   10fbc:	be23ff18 	bneid	r3, -232		// 10ed4
   10fc0:	10ac0000 	addk	r5, r12, r0
   10fc4:	30c00000 	addik	r6, r0, 0
   10fc8:	30e000ff 	addik	r7, r0, 255
   10fcc:	84ca3000 	and	r6, r10, r6
   10fd0:	be060040 	beqid	r6, 64		// 11010
   10fd4:	84eb3800 	and	r7, r11, r7
   10fd8:	f941003c 	swi	r10, r1, 60
   10fdc:	f9610040 	swi	r11, r1, 64
   10fe0:	b810fd90 	brid	-624		// 10d70
   10fe4:	30a10030 	addik	r5, r1, 48
   10fe8:	30800000 	addik	r4, r0, 0
   10fec:	30a00000 	addik	r5, r0, 0
   10ff0:	f881003c 	swi	r4, r1, 60
   10ff4:	f8a10040 	swi	r5, r1, 64
   10ff8:	f8610038 	swi	r3, r1, 56
   10ffc:	b810fd74 	brid	-652		// 10d70
   11000:	30a10030 	addik	r5, r1, 48
   11004:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
   11008:	b810fd64 	brid	-668		// 10d6c
   1100c:	f8610030 	swi	r3, r1, 48
   11010:	a8670080 	xori	r3, r7, 128
   11014:	bc23ffc4 	bnei	r3, -60		// 10fd8
   11018:	30c00000 	addik	r6, r0, 0
   1101c:	30e00100 	addik	r7, r0, 256
   11020:	84ca3000 	and	r6, r10, r6
   11024:	84eb3800 	and	r7, r11, r7
   11028:	80c63800 	or	r6, r6, r7
   1102c:	be26ffac 	bneid	r6, -84		// 10fd8
   11030:	80846000 	or	r4, r4, r12
   11034:	bc04ffa4 	beqi	r4, -92		// 10fd8
   11038:	30800000 	addik	r4, r0, 0
   1103c:	30a00080 	addik	r5, r0, 128
   11040:	016b2800 	add	r11, r11, r5
   11044:	094a2000 	addc	r10, r10, r4
   11048:	3080ffff 	addik	r4, r0, -1
   1104c:	30a0ff00 	addik	r5, r0, -256
   11050:	854a2000 	and	r10, r10, r4
   11054:	b810ff84 	brid	-124		// 10fd8
   11058:	856b2800 	and	r11, r11, r5

0001105c <__eqdf2>:
   1105c:	11450000 	addk	r10, r5, r0
   11060:	11660000 	addk	r11, r6, r0
   11064:	11280000 	addk	r9, r8, r0
   11068:	11070000 	addk	r8, r7, r0
   1106c:	3021ffac 	addik	r1, r1, -84
   11070:	30c10030 	addik	r6, r1, 48
   11074:	f9e10000 	swi	r15, r1, 0
   11078:	f941004c 	swi	r10, r1, 76
   1107c:	f9610050 	swi	r11, r1, 80
   11080:	f9010044 	swi	r8, r1, 68
   11084:	f9210048 	swi	r9, r1, 72
   11088:	b9f41314 	brlid	r15, 4884	// 1239c <__unpack_d>
   1108c:	30a1004c 	addik	r5, r1, 76
   11090:	30c1001c 	addik	r6, r1, 28
   11094:	b9f41308 	brlid	r15, 4872	// 1239c <__unpack_d>
   11098:	30a10044 	addik	r5, r1, 68
   1109c:	e8810030 	lwi	r4, r1, 48
   110a0:	30600001 	addik	r3, r0, 1
   110a4:	14841803 	cmpu	r4, r4, r3
   110a8:	bea4001c 	bgeid	r4, 28		// 110c4
   110ac:	e881001c 	lwi	r4, r1, 28
   110b0:	14841803 	cmpu	r4, r4, r3
   110b4:	bea40010 	bgeid	r4, 16		// 110c4
   110b8:	30a10030 	addik	r5, r1, 48
   110bc:	b9f416d4 	brlid	r15, 5844	// 12790 <__fpcmp_parts_d>
   110c0:	30c1001c 	addik	r6, r1, 28
   110c4:	e9e10000 	lwi	r15, r1, 0
   110c8:	b60f0008 	rtsd	r15, 8
   110cc:	30210054 	addik	r1, r1, 84

000110d0 <__nedf2>:
   110d0:	11450000 	addk	r10, r5, r0
   110d4:	11660000 	addk	r11, r6, r0
   110d8:	11280000 	addk	r9, r8, r0
   110dc:	11070000 	addk	r8, r7, r0
   110e0:	3021ffac 	addik	r1, r1, -84
   110e4:	30c10030 	addik	r6, r1, 48
   110e8:	f9e10000 	swi	r15, r1, 0
   110ec:	f941004c 	swi	r10, r1, 76
   110f0:	f9610050 	swi	r11, r1, 80
   110f4:	f9010044 	swi	r8, r1, 68
   110f8:	f9210048 	swi	r9, r1, 72
   110fc:	b9f412a0 	brlid	r15, 4768	// 1239c <__unpack_d>
   11100:	30a1004c 	addik	r5, r1, 76
   11104:	30c1001c 	addik	r6, r1, 28
   11108:	b9f41294 	brlid	r15, 4756	// 1239c <__unpack_d>
   1110c:	30a10044 	addik	r5, r1, 68
   11110:	e8810030 	lwi	r4, r1, 48
   11114:	30600001 	addik	r3, r0, 1
   11118:	14841803 	cmpu	r4, r4, r3
   1111c:	bea4001c 	bgeid	r4, 28		// 11138
   11120:	e881001c 	lwi	r4, r1, 28
   11124:	14841803 	cmpu	r4, r4, r3
   11128:	bea40010 	bgeid	r4, 16		// 11138
   1112c:	30a10030 	addik	r5, r1, 48
   11130:	b9f41660 	brlid	r15, 5728	// 12790 <__fpcmp_parts_d>
   11134:	30c1001c 	addik	r6, r1, 28
   11138:	e9e10000 	lwi	r15, r1, 0
   1113c:	b60f0008 	rtsd	r15, 8
   11140:	30210054 	addik	r1, r1, 84

00011144 <__gtdf2>:
   11144:	11450000 	addk	r10, r5, r0
   11148:	11660000 	addk	r11, r6, r0
   1114c:	11280000 	addk	r9, r8, r0
   11150:	11070000 	addk	r8, r7, r0
   11154:	3021ffac 	addik	r1, r1, -84
   11158:	30c10030 	addik	r6, r1, 48
   1115c:	f9e10000 	swi	r15, r1, 0
   11160:	f941004c 	swi	r10, r1, 76
   11164:	f9610050 	swi	r11, r1, 80
   11168:	f9010044 	swi	r8, r1, 68
   1116c:	f9210048 	swi	r9, r1, 72
   11170:	b9f4122c 	brlid	r15, 4652	// 1239c <__unpack_d>
   11174:	30a1004c 	addik	r5, r1, 76
   11178:	30c1001c 	addik	r6, r1, 28
   1117c:	b9f41220 	brlid	r15, 4640	// 1239c <__unpack_d>
   11180:	30a10044 	addik	r5, r1, 68
   11184:	e8810030 	lwi	r4, r1, 48
   11188:	30600001 	addik	r3, r0, 1
   1118c:	14841803 	cmpu	r4, r4, r3
   11190:	bea40028 	bgeid	r4, 40		// 111b8
   11194:	e881001c 	lwi	r4, r1, 28
   11198:	14641803 	cmpu	r3, r4, r3
   1119c:	bea3001c 	bgeid	r3, 28		// 111b8
   111a0:	30a10030 	addik	r5, r1, 48
   111a4:	b9f415ec 	brlid	r15, 5612	// 12790 <__fpcmp_parts_d>
   111a8:	30c1001c 	addik	r6, r1, 28
   111ac:	e9e10000 	lwi	r15, r1, 0
   111b0:	b60f0008 	rtsd	r15, 8
   111b4:	30210054 	addik	r1, r1, 84
   111b8:	b810fff4 	brid	-12		// 111ac
   111bc:	3060ffff 	addik	r3, r0, -1

000111c0 <__gedf2>:
   111c0:	11450000 	addk	r10, r5, r0
   111c4:	11660000 	addk	r11, r6, r0
   111c8:	11280000 	addk	r9, r8, r0
   111cc:	11070000 	addk	r8, r7, r0
   111d0:	3021ffac 	addik	r1, r1, -84
   111d4:	30c10030 	addik	r6, r1, 48
   111d8:	f9e10000 	swi	r15, r1, 0
   111dc:	f941004c 	swi	r10, r1, 76
   111e0:	f9610050 	swi	r11, r1, 80
   111e4:	f9010044 	swi	r8, r1, 68
   111e8:	f9210048 	swi	r9, r1, 72
   111ec:	b9f411b0 	brlid	r15, 4528	// 1239c <__unpack_d>
   111f0:	30a1004c 	addik	r5, r1, 76
   111f4:	30c1001c 	addik	r6, r1, 28
   111f8:	b9f411a4 	brlid	r15, 4516	// 1239c <__unpack_d>
   111fc:	30a10044 	addik	r5, r1, 68
   11200:	e8810030 	lwi	r4, r1, 48
   11204:	30600001 	addik	r3, r0, 1
   11208:	14841803 	cmpu	r4, r4, r3
   1120c:	bea40028 	bgeid	r4, 40		// 11234
   11210:	e881001c 	lwi	r4, r1, 28
   11214:	14641803 	cmpu	r3, r4, r3
   11218:	bea3001c 	bgeid	r3, 28		// 11234
   1121c:	30a10030 	addik	r5, r1, 48
   11220:	b9f41570 	brlid	r15, 5488	// 12790 <__fpcmp_parts_d>
   11224:	30c1001c 	addik	r6, r1, 28
   11228:	e9e10000 	lwi	r15, r1, 0
   1122c:	b60f0008 	rtsd	r15, 8
   11230:	30210054 	addik	r1, r1, 84
   11234:	b810fff4 	brid	-12		// 11228
   11238:	3060ffff 	addik	r3, r0, -1

0001123c <__ltdf2>:
   1123c:	11450000 	addk	r10, r5, r0
   11240:	11660000 	addk	r11, r6, r0
   11244:	11280000 	addk	r9, r8, r0
   11248:	11070000 	addk	r8, r7, r0
   1124c:	3021ffac 	addik	r1, r1, -84
   11250:	30c10030 	addik	r6, r1, 48
   11254:	f9e10000 	swi	r15, r1, 0
   11258:	f941004c 	swi	r10, r1, 76
   1125c:	f9610050 	swi	r11, r1, 80
   11260:	f9010044 	swi	r8, r1, 68
   11264:	f9210048 	swi	r9, r1, 72
   11268:	b9f41134 	brlid	r15, 4404	// 1239c <__unpack_d>
   1126c:	30a1004c 	addik	r5, r1, 76
   11270:	30c1001c 	addik	r6, r1, 28
   11274:	b9f41128 	brlid	r15, 4392	// 1239c <__unpack_d>
   11278:	30a10044 	addik	r5, r1, 68
   1127c:	e8810030 	lwi	r4, r1, 48
   11280:	30600001 	addik	r3, r0, 1
   11284:	14841803 	cmpu	r4, r4, r3
   11288:	bea4001c 	bgeid	r4, 28		// 112a4
   1128c:	e881001c 	lwi	r4, r1, 28
   11290:	14841803 	cmpu	r4, r4, r3
   11294:	bea40010 	bgeid	r4, 16		// 112a4
   11298:	30a10030 	addik	r5, r1, 48
   1129c:	b9f414f4 	brlid	r15, 5364	// 12790 <__fpcmp_parts_d>
   112a0:	30c1001c 	addik	r6, r1, 28
   112a4:	e9e10000 	lwi	r15, r1, 0
   112a8:	b60f0008 	rtsd	r15, 8
   112ac:	30210054 	addik	r1, r1, 84

000112b0 <__floatsidf>:
   112b0:	3021ffcc 	addik	r1, r1, -52
   112b4:	30600003 	addik	r3, r0, 3
   112b8:	f861001c 	swi	r3, r1, 28
   112bc:	f9e10000 	swi	r15, r1, 0
   112c0:	10602800 	addk	r3, r0, r5
   112c4:	90650041 	srl	r3, r5
   112c8:	90630041 	srl	r3, r3
   112cc:	90630041 	srl	r3, r3
   112d0:	90630041 	srl	r3, r3
   112d4:	90630041 	srl	r3, r3
   112d8:	90630041 	srl	r3, r3
   112dc:	90630041 	srl	r3, r3
   112e0:	90630041 	srl	r3, r3
   112e4:	90630041 	srl	r3, r3
   112e8:	90630041 	srl	r3, r3
   112ec:	90630041 	srl	r3, r3
   112f0:	90630041 	srl	r3, r3
   112f4:	90630041 	srl	r3, r3
   112f8:	90630041 	srl	r3, r3
   112fc:	90630041 	srl	r3, r3
   11300:	90630041 	srl	r3, r3
   11304:	90630041 	srl	r3, r3
   11308:	90630041 	srl	r3, r3
   1130c:	90630041 	srl	r3, r3
   11310:	90630041 	srl	r3, r3
   11314:	90630041 	srl	r3, r3
   11318:	90630041 	srl	r3, r3
   1131c:	90630041 	srl	r3, r3
   11320:	90630041 	srl	r3, r3
   11324:	90630041 	srl	r3, r3
   11328:	90630041 	srl	r3, r3
   1132c:	90630041 	srl	r3, r3
   11330:	90630041 	srl	r3, r3
   11334:	90630041 	srl	r3, r3
   11338:	90630041 	srl	r3, r3
   1133c:	90630041 	srl	r3, r3
   11340:	fa610030 	swi	r19, r1, 48
   11344:	be250038 	bneid	r5, 56		// 1137c
   11348:	f8610020 	swi	r3, r1, 32
   1134c:	30600002 	addik	r3, r0, 2
   11350:	f861001c 	swi	r3, r1, 28
   11354:	b9f40ae8 	brlid	r15, 2792	// 11e3c <__pack_d>
   11358:	30a1001c 	addik	r5, r1, 28
   1135c:	10a40000 	addk	r5, r4, r0
   11360:	10830000 	addk	r4, r3, r0
   11364:	10640000 	addk	r3, r4, r0
   11368:	e9e10000 	lwi	r15, r1, 0
   1136c:	10850000 	addk	r4, r5, r0
   11370:	ea610030 	lwi	r19, r1, 48
   11374:	b60f0008 	rtsd	r15, 8
   11378:	30210034 	addik	r1, r1, 52
   1137c:	3080003c 	addik	r4, r0, 60
   11380:	be23005c 	bneid	r3, 92		// 113dc
   11384:	f8810024 	swi	r4, r1, 36
   11388:	12650000 	addk	r19, r5, r0
   1138c:	b9f40a2c 	brlid	r15, 2604	// 11db8 <__clzsi2>
   11390:	10b30000 	addk	r5, r19, r0
   11394:	3083001d 	addik	r4, r3, 29
   11398:	be640068 	bleid	r4, 104		// 11400
   1139c:	a4a40020 	andi	r5, r4, 32
   113a0:	be05006c 	beqid	r5, 108		// 1140c
   113a4:	90f30041 	srl	r7, r19
   113a8:	a644001f 	andi	r18, r4, 31
   113ac:	10a09800 	addk	r5, r0, r19
   113b0:	be120014 	beqid	r18, 20		// 113c4
   113b4:	10a50000 	addk	r5, r5, r0
   113b8:	3252ffff 	addik	r18, r18, -1
   113bc:	be32fffc 	bneid	r18, -4		// 113b8
   113c0:	10a52800 	addk	r5, r5, r5
   113c4:	f801002c 	swi	r0, r1, 44
   113c8:	f8a10028 	swi	r5, r1, 40
   113cc:	3080001f 	addik	r4, r0, 31
   113d0:	14632000 	rsubk	r3, r3, r4
   113d4:	b810ff80 	brid	-128		// 11354
   113d8:	f8610024 	swi	r3, r1, 36
   113dc:	b0008000 	imm	-32768
   113e0:	30650000 	addik	r3, r5, 0
   113e4:	be030070 	beqid	r3, 112		// 11454
   113e8:	16650000 	rsubk	r19, r5, r0
   113ec:	b9f409cc 	brlid	r15, 2508	// 11db8 <__clzsi2>
   113f0:	10b30000 	addk	r5, r19, r0
   113f4:	3083001d 	addik	r4, r3, 29
   113f8:	be84ffa8 	bgtid	r4, -88		// 113a0
   113fc:	a4a40020 	andi	r5, r4, 32
   11400:	f8010028 	swi	r0, r1, 40
   11404:	b810ff50 	brid	-176		// 11354
   11408:	fa61002c 	swi	r19, r1, 44
   1140c:	a8a4ffff 	xori	r5, r4, -1
   11410:	a645001f 	andi	r18, r5, 31
   11414:	10c03800 	addk	r6, r0, r7
   11418:	be120014 	beqid	r18, 20		// 1142c
   1141c:	10c60000 	addk	r6, r6, r0
   11420:	3252ffff 	addik	r18, r18, -1
   11424:	be32fffc 	bneid	r18, -4		// 11420
   11428:	90c60041 	srl	r6, r6
   1142c:	a644001f 	andi	r18, r4, 31
   11430:	10a09800 	addk	r5, r0, r19
   11434:	be120014 	beqid	r18, 20		// 11448
   11438:	10a50000 	addk	r5, r5, r0
   1143c:	3252ffff 	addik	r18, r18, -1
   11440:	be32fffc 	bneid	r18, -4		// 1143c
   11444:	10a52800 	addk	r5, r5, r5
   11448:	f8c10028 	swi	r6, r1, 40
   1144c:	b810ff80 	brid	-128		// 113cc
   11450:	f8a1002c 	swi	r5, r1, 44
   11454:	b000c1e0 	imm	-15904
   11458:	30800000 	addik	r4, r0, 0
   1145c:	30a00000 	addik	r5, r0, 0
   11460:	b810ff08 	brid	-248		// 11368
   11464:	10640000 	addk	r3, r4, r0

00011468 <__fixdfsi>:
   11468:	11050000 	addk	r8, r5, r0
   1146c:	11260000 	addk	r9, r6, r0
   11470:	3021ffc8 	addik	r1, r1, -56
   11474:	30a10030 	addik	r5, r1, 48
   11478:	f9e10000 	swi	r15, r1, 0
   1147c:	f9010030 	swi	r8, r1, 48
   11480:	f9210034 	swi	r9, r1, 52
   11484:	b9f40f18 	brlid	r15, 3864	// 1239c <__unpack_d>
   11488:	30c1001c 	addik	r6, r1, 28
   1148c:	e881001c 	lwi	r4, r1, 28
   11490:	a8640002 	xori	r3, r4, 2
   11494:	be030048 	beqid	r3, 72		// 114dc
   11498:	e9e10000 	lwi	r15, r1, 0
   1149c:	30600001 	addik	r3, r0, 1
   114a0:	14641803 	cmpu	r3, r4, r3
   114a4:	bea300e4 	bgeid	r3, 228		// 11588
   114a8:	a8840004 	xori	r4, r4, 4
   114ac:	be04001c 	beqid	r4, 28		// 114c8
   114b0:	e8610024 	lwi	r3, r1, 36
   114b4:	be4300d4 	bltid	r3, 212		// 11588
   114b8:	3080001e 	addik	r4, r0, 30
   114bc:	14832001 	cmp	r4, r3, r4
   114c0:	bea40024 	bgeid	r4, 36		// 114e4
   114c4:	30a0003c 	addik	r5, r0, 60
   114c8:	e8810020 	lwi	r4, r1, 32
   114cc:	b0007fff 	imm	32767
   114d0:	3060ffff 	addik	r3, r0, -1
   114d4:	be2400a4 	bneid	r4, 164		// 11578
   114d8:	e9e10000 	lwi	r15, r1, 0
   114dc:	b60f0008 	rtsd	r15, 8
   114e0:	30210038 	addik	r1, r1, 56
   114e4:	14832800 	rsubk	r4, r3, r5
   114e8:	a4640020 	andi	r3, r4, 32
   114ec:	be030040 	beqid	r3, 64		// 1152c
   114f0:	e8c10028 	lwi	r6, r1, 40
   114f4:	e8a10028 	lwi	r5, r1, 40
   114f8:	a644001f 	andi	r18, r4, 31
   114fc:	10602800 	addk	r3, r0, r5
   11500:	be120014 	beqid	r18, 20		// 11514
   11504:	10630000 	addk	r3, r3, r0
   11508:	3252ffff 	addik	r18, r18, -1
   1150c:	be32fffc 	bneid	r18, -4		// 11508
   11510:	90630041 	srl	r3, r3
   11514:	e8810020 	lwi	r4, r1, 32
   11518:	be04ffc4 	beqid	r4, -60		// 114dc
   1151c:	e9e10000 	lwi	r15, r1, 0
   11520:	14630000 	rsubk	r3, r3, r0
   11524:	b60f0008 	rtsd	r15, 8
   11528:	30210038 	addik	r1, r1, 56
   1152c:	a864ffff 	xori	r3, r4, -1
   11530:	10c63000 	addk	r6, r6, r6
   11534:	a643001f 	andi	r18, r3, 31
   11538:	10a03000 	addk	r5, r0, r6
   1153c:	be120014 	beqid	r18, 20		// 11550
   11540:	10a50000 	addk	r5, r5, r0
   11544:	3252ffff 	addik	r18, r18, -1
   11548:	be32fffc 	bneid	r18, -4		// 11544
   1154c:	10a52800 	addk	r5, r5, r5
   11550:	e8c1002c 	lwi	r6, r1, 44
   11554:	a644001f 	andi	r18, r4, 31
   11558:	10603000 	addk	r3, r0, r6
   1155c:	be120014 	beqid	r18, 20		// 11570
   11560:	10630000 	addk	r3, r3, r0
   11564:	3252ffff 	addik	r18, r18, -1
   11568:	be32fffc 	bneid	r18, -4		// 11564
   1156c:	90630041 	srl	r3, r3
   11570:	b810ffa4 	brid	-92		// 11514
   11574:	80651800 	or	r3, r5, r3
   11578:	b0008000 	imm	-32768
   1157c:	30600000 	addik	r3, r0, 0
   11580:	b60f0008 	rtsd	r15, 8
   11584:	30210038 	addik	r1, r1, 56
   11588:	10600000 	addk	r3, r0, r0
   1158c:	b60f0008 	rtsd	r15, 8
   11590:	30210038 	addik	r1, r1, 56

00011594 <__floatunsidf>:
   11594:	3021ffc8 	addik	r1, r1, -56
   11598:	f9e10000 	swi	r15, r1, 0
   1159c:	fac10030 	swi	r22, r1, 48
   115a0:	fae10034 	swi	r23, r1, 52
   115a4:	be050088 	beqid	r5, 136		// 1162c
   115a8:	f8010020 	swi	r0, r1, 32
   115ac:	30600003 	addik	r3, r0, 3
   115b0:	f861001c 	swi	r3, r1, 28
   115b4:	3060003c 	addik	r3, r0, 60
   115b8:	12e50000 	addk	r23, r5, r0
   115bc:	b9f407fc 	brlid	r15, 2044	// 11db8 <__clzsi2>
   115c0:	f8610024 	swi	r3, r1, 36
   115c4:	3083001d 	addik	r4, r3, 29
   115c8:	be4400d0 	bltid	r4, 208		// 11698
   115cc:	12c00000 	addk	r22, r0, r0
   115d0:	be0401fc 	beqid	r4, 508		// 117cc
   115d4:	a4a40020 	andi	r5, r4, 32
   115d8:	be050078 	beqid	r5, 120		// 11650
   115dc:	a8a4ffff 	xori	r5, r4, -1
   115e0:	a644001f 	andi	r18, r4, 31
   115e4:	10a0b800 	addk	r5, r0, r23
   115e8:	be120014 	beqid	r18, 20		// 115fc
   115ec:	10a50000 	addk	r5, r5, r0
   115f0:	3252ffff 	addik	r18, r18, -1
   115f4:	be32fffc 	bneid	r18, -4		// 115f0
   115f8:	10a52800 	addk	r5, r5, r5
   115fc:	fac1002c 	swi	r22, r1, 44
   11600:	f8a10028 	swi	r5, r1, 40
   11604:	3080001f 	addik	r4, r0, 31
   11608:	14632000 	rsubk	r3, r3, r4
   1160c:	30a1001c 	addik	r5, r1, 28
   11610:	b9f4082c 	brlid	r15, 2092	// 11e3c <__pack_d>
   11614:	f8610024 	swi	r3, r1, 36
   11618:	e9e10000 	lwi	r15, r1, 0
   1161c:	eac10030 	lwi	r22, r1, 48
   11620:	eae10034 	lwi	r23, r1, 52
   11624:	b60f0008 	rtsd	r15, 8
   11628:	30210038 	addik	r1, r1, 56
   1162c:	30600002 	addik	r3, r0, 2
   11630:	f861001c 	swi	r3, r1, 28
   11634:	b9f40808 	brlid	r15, 2056	// 11e3c <__pack_d>
   11638:	30a1001c 	addik	r5, r1, 28
   1163c:	e9e10000 	lwi	r15, r1, 0
   11640:	eac10030 	lwi	r22, r1, 48
   11644:	eae10034 	lwi	r23, r1, 52
   11648:	b60f0008 	rtsd	r15, 8
   1164c:	30210038 	addik	r1, r1, 56
   11650:	90f70041 	srl	r7, r23
   11654:	a645001f 	andi	r18, r5, 31
   11658:	10c03800 	addk	r6, r0, r7
   1165c:	be120014 	beqid	r18, 20		// 11670
   11660:	10c60000 	addk	r6, r6, r0
   11664:	3252ffff 	addik	r18, r18, -1
   11668:	be32fffc 	bneid	r18, -4		// 11664
   1166c:	90c60041 	srl	r6, r6
   11670:	a644001f 	andi	r18, r4, 31
   11674:	10a0b800 	addk	r5, r0, r23
   11678:	be120014 	beqid	r18, 20		// 1168c
   1167c:	10a50000 	addk	r5, r5, r0
   11680:	3252ffff 	addik	r18, r18, -1
   11684:	be32fffc 	bneid	r18, -4		// 11680
   11688:	10a52800 	addk	r5, r5, r5
   1168c:	f8c10028 	swi	r6, r1, 40
   11690:	b810ff74 	brid	-140		// 11604
   11694:	f8a1002c 	swi	r5, r1, 44
   11698:	15040000 	rsubk	r8, r4, r0
   1169c:	a5280020 	andi	r9, r8, 32
   116a0:	bc09019c 	beqi	r9, 412		// 1183c
   116a4:	10b60000 	addk	r5, r22, r0
   116a8:	30c00001 	addik	r6, r0, 1
   116ac:	a648001f 	andi	r18, r8, 31
   116b0:	10803000 	addk	r4, r0, r6
   116b4:	be120014 	beqid	r18, 20		// 116c8
   116b8:	10840000 	addk	r4, r4, r0
   116bc:	3252ffff 	addik	r18, r18, -1
   116c0:	be32fffc 	bneid	r18, -4		// 116bc
   116c4:	10842000 	addk	r4, r4, r4
   116c8:	30c0ffff 	addik	r6, r0, -1
   116cc:	30e0ffff 	addik	r7, r0, -1
   116d0:	00a53800 	add	r5, r5, r7
   116d4:	08843000 	addc	r4, r4, r6
   116d8:	84a5b800 	and	r5, r5, r23
   116dc:	8484b000 	and	r4, r4, r22
   116e0:	80842800 	or	r4, r4, r5
   116e4:	14a40000 	rsubk	r5, r4, r0
   116e8:	80852000 	or	r4, r5, r4
   116ec:	10e02000 	addk	r7, r0, r4
   116f0:	90e40041 	srl	r7, r4
   116f4:	90e70041 	srl	r7, r7
   116f8:	90e70041 	srl	r7, r7
   116fc:	90e70041 	srl	r7, r7
   11700:	90e70041 	srl	r7, r7
   11704:	90e70041 	srl	r7, r7
   11708:	90e70041 	srl	r7, r7
   1170c:	90e70041 	srl	r7, r7
   11710:	90e70041 	srl	r7, r7
   11714:	90e70041 	srl	r7, r7
   11718:	90e70041 	srl	r7, r7
   1171c:	90e70041 	srl	r7, r7
   11720:	90e70041 	srl	r7, r7
   11724:	90e70041 	srl	r7, r7
   11728:	90e70041 	srl	r7, r7
   1172c:	90e70041 	srl	r7, r7
   11730:	90e70041 	srl	r7, r7
   11734:	90e70041 	srl	r7, r7
   11738:	90e70041 	srl	r7, r7
   1173c:	90e70041 	srl	r7, r7
   11740:	90e70041 	srl	r7, r7
   11744:	90e70041 	srl	r7, r7
   11748:	90e70041 	srl	r7, r7
   1174c:	90e70041 	srl	r7, r7
   11750:	90e70041 	srl	r7, r7
   11754:	90e70041 	srl	r7, r7
   11758:	90e70041 	srl	r7, r7
   1175c:	90e70041 	srl	r7, r7
   11760:	90e70041 	srl	r7, r7
   11764:	90e70041 	srl	r7, r7
   11768:	90e70041 	srl	r7, r7
   1176c:	be09006c 	beqid	r9, 108		// 117d8
   11770:	10c00000 	addk	r6, r0, r0
   11774:	10860000 	addk	r4, r6, r0
   11778:	a648001f 	andi	r18, r8, 31
   1177c:	10a0b000 	addk	r5, r0, r22
   11780:	be120014 	beqid	r18, 20		// 11794
   11784:	10a50000 	addk	r5, r5, r0
   11788:	3252ffff 	addik	r18, r18, -1
   1178c:	be32fffc 	bneid	r18, -4		// 11788
   11790:	90a50041 	srl	r5, r5
   11794:	80a72800 	or	r5, r7, r5
   11798:	80862000 	or	r4, r6, r4
   1179c:	30c0001f 	addik	r6, r0, 31
   117a0:	14633000 	rsubk	r3, r3, r6
   117a4:	f8810028 	swi	r4, r1, 40
   117a8:	f8a1002c 	swi	r5, r1, 44
   117ac:	30a1001c 	addik	r5, r1, 28
   117b0:	b9f4068c 	brlid	r15, 1676	// 11e3c <__pack_d>
   117b4:	f8610024 	swi	r3, r1, 36
   117b8:	e9e10000 	lwi	r15, r1, 0
   117bc:	eac10030 	lwi	r22, r1, 48
   117c0:	eae10034 	lwi	r23, r1, 52
   117c4:	b60f0008 	rtsd	r15, 8
   117c8:	30210038 	addik	r1, r1, 56
   117cc:	fac10028 	swi	r22, r1, 40
   117d0:	fae1002c 	swi	r23, r1, 44
   117d4:	b800fe60 	bri	-416		// 11634
   117d8:	1176b000 	addk	r11, r22, r22
   117dc:	a948ffff 	xori	r10, r8, -1
   117e0:	a64a001f 	andi	r18, r10, 31
   117e4:	11205800 	addk	r9, r0, r11
   117e8:	be120014 	beqid	r18, 20		// 117fc
   117ec:	11290000 	addk	r9, r9, r0
   117f0:	3252ffff 	addik	r18, r18, -1
   117f4:	be32fffc 	bneid	r18, -4		// 117f0
   117f8:	11294800 	addk	r9, r9, r9
   117fc:	a648001f 	andi	r18, r8, 31
   11800:	10a0b800 	addk	r5, r0, r23
   11804:	be120014 	beqid	r18, 20		// 11818
   11808:	10a50000 	addk	r5, r5, r0
   1180c:	3252ffff 	addik	r18, r18, -1
   11810:	be32fffc 	bneid	r18, -4		// 1180c
   11814:	90a50041 	srl	r5, r5
   11818:	a648001f 	andi	r18, r8, 31
   1181c:	1080b000 	addk	r4, r0, r22
   11820:	be120014 	beqid	r18, 20		// 11834
   11824:	10840000 	addk	r4, r4, r0
   11828:	3252ffff 	addik	r18, r18, -1
   1182c:	be32fffc 	bneid	r18, -4		// 11828
   11830:	90840041 	srl	r4, r4
   11834:	b810ff60 	brid	-160		// 11794
   11838:	80a92800 	or	r5, r9, r5
   1183c:	30c00001 	addik	r6, r0, 1
   11840:	a648001f 	andi	r18, r8, 31
   11844:	10a03000 	addk	r5, r0, r6
   11848:	be120014 	beqid	r18, 20		// 1185c
   1184c:	10a50000 	addk	r5, r5, r0
   11850:	3252ffff 	addik	r18, r18, -1
   11854:	be32fffc 	bneid	r18, -4		// 11850
   11858:	10a52800 	addk	r5, r5, r5
   1185c:	b810fe6c 	brid	-404		// 116c8
   11860:	10890000 	addk	r4, r9, r0

00011864 <__divsi3>:
   11864:	3021fff0 	addik	r1, r1, -16
   11868:	fb810000 	swi	r28, r1, 0
   1186c:	fba10004 	swi	r29, r1, 4
   11870:	fbc10008 	swi	r30, r1, 8
   11874:	fbe1000c 	swi	r31, r1, 12
   11878:	bc06006c 	beqi	r6, 108		// 118e4
   1187c:	bc050068 	beqi	r5, 104		// 118e4
   11880:	bea5000c 	bgeid	r5, 12		// 1188c
   11884:	8b853000 	xor	r28, r5, r6
   11888:	24a50000 	rsubi	r5, r5, 0
   1188c:	bca60008 	bgei	r6, 8		// 11894
   11890:	24c60000 	rsubi	r6, r6, 0
   11894:	33c00000 	addik	r30, r0, 0
   11898:	30600000 	addik	r3, r0, 0
   1189c:	33a00020 	addik	r29, r0, 32
   118a0:	bc450010 	blti	r5, 16		// 118b0
   118a4:	00a52800 	add	r5, r5, r5
   118a8:	be85fffc 	bgtid	r5, -4		// 118a4
   118ac:	33bdffff 	addik	r29, r29, -1
   118b0:	00a52800 	add	r5, r5, r5
   118b4:	0bdef000 	addc	r30, r30, r30
   118b8:	07e6f000 	rsub	r31, r6, r30
   118bc:	bc5f000c 	blti	r31, 12		// 118c8
   118c0:	83c0f800 	or	r30, r0, r31
   118c4:	30630001 	addik	r3, r3, 1
   118c8:	33bdffff 	addik	r29, r29, -1
   118cc:	bc1d000c 	beqi	r29, 12		// 118d8
   118d0:	00631800 	add	r3, r3, r3
   118d4:	b800ffdc 	bri	-36		// 118b0
   118d8:	bcbc0010 	bgei	r28, 16		// 118e8
   118dc:	b810000c 	brid	12		// 118e8
   118e0:	24630000 	rsubi	r3, r3, 0
   118e4:	80600000 	or	r3, r0, r0
   118e8:	eb810000 	lwi	r28, r1, 0
   118ec:	eba10004 	lwi	r29, r1, 4
   118f0:	ebc10008 	lwi	r30, r1, 8
   118f4:	ebe1000c 	lwi	r31, r1, 12
   118f8:	b60f0008 	rtsd	r15, 8
   118fc:	30210010 	addik	r1, r1, 16

00011900 <__modsi3>:
   11900:	3021fff0 	addik	r1, r1, -16
   11904:	fb810000 	swi	r28, r1, 0
   11908:	fba10004 	swi	r29, r1, 4
   1190c:	fbc10008 	swi	r30, r1, 8
   11910:	fbe1000c 	swi	r31, r1, 12
   11914:	bc060068 	beqi	r6, 104		// 1197c
   11918:	bc050064 	beqi	r5, 100		// 1197c
   1191c:	bea5000c 	bgeid	r5, 12		// 11928
   11920:	03850000 	add	r28, r5, r0
   11924:	24a50000 	rsubi	r5, r5, 0
   11928:	bca60008 	bgei	r6, 8		// 11930
   1192c:	24c60000 	rsubi	r6, r6, 0
   11930:	30600000 	addik	r3, r0, 0
   11934:	33c00000 	addik	r30, r0, 0
   11938:	33a00020 	addik	r29, r0, 32
   1193c:	00a52800 	add	r5, r5, r5
   11940:	bea5fffc 	bgeid	r5, -4		// 1193c
   11944:	33bdffff 	addik	r29, r29, -1
   11948:	00a52800 	add	r5, r5, r5
   1194c:	08631800 	addc	r3, r3, r3
   11950:	07e61800 	rsub	r31, r6, r3
   11954:	bc5f000c 	blti	r31, 12		// 11960
   11958:	8060f800 	or	r3, r0, r31
   1195c:	33de0001 	addik	r30, r30, 1
   11960:	33bdffff 	addik	r29, r29, -1
   11964:	bc1d000c 	beqi	r29, 12		// 11970
   11968:	03def000 	add	r30, r30, r30
   1196c:	b800ffdc 	bri	-36		// 11948
   11970:	bcbc0010 	bgei	r28, 16		// 11980
   11974:	b810000c 	brid	12		// 11980
   11978:	24630000 	rsubi	r3, r3, 0
   1197c:	80600000 	or	r3, r0, r0
   11980:	eb810000 	lwi	r28, r1, 0
   11984:	eba10004 	lwi	r29, r1, 4
   11988:	ebc10008 	lwi	r30, r1, 8
   1198c:	ebe1000c 	lwi	r31, r1, 12
   11990:	b60f0008 	rtsd	r15, 8
   11994:	30210010 	addik	r1, r1, 16

00011998 <__mulsi3>:
   11998:	00600000 	add	r3, r0, r0
   1199c:	bc05004c 	beqi	r5, 76		// 119e8
   119a0:	bc060048 	beqi	r6, 72		// 119e8
   119a4:	bea5000c 	bgeid	r5, 12		// 119b0
   119a8:	88853000 	xor	r4, r5, r6
   119ac:	24a50000 	rsubi	r5, r5, 0
   119b0:	bca60008 	bgei	r6, 8		// 119b8
   119b4:	24c60000 	rsubi	r6, r6, 0
   119b8:	b8000008 	bri	8		// 119c0
   119bc:	00a52800 	add	r5, r5, r5
   119c0:	90c60041 	srl	r6, r6
   119c4:	08e00000 	addc	r7, r0, r0
   119c8:	bc07fff4 	beqi	r7, -12		// 119bc
   119cc:	be26fff0 	bneid	r6, -16		// 119bc
   119d0:	00632800 	add	r3, r3, r5
   119d4:	bc44000c 	blti	r4, 12		// 119e0
   119d8:	b60f0008 	rtsd	r15, 8
   119dc:	80000000 	or	r0, r0, r0
   119e0:	b60f0008 	rtsd	r15, 8
   119e4:	04630000 	rsub	r3, r3, r0
   119e8:	b60f0008 	rtsd	r15, 8
   119ec:	20600000 	addi	r3, r0, 0

000119f0 <__udivsi3>:
   119f0:	3021fff4 	addik	r1, r1, -12
   119f4:	fba10000 	swi	r29, r1, 0
   119f8:	fbc10004 	swi	r30, r1, 4
   119fc:	fbe10008 	swi	r31, r1, 8
   11a00:	bc060080 	beqi	r6, 128		// 11a80
   11a04:	be05007c 	beqid	r5, 124		// 11a80
   11a08:	33c00000 	addik	r30, r0, 0
   11a0c:	33a00020 	addik	r29, r0, 32
   11a10:	06453000 	rsub	r18, r5, r6
   11a14:	be120070 	beqid	r18, 112		// 11a84
   11a18:	30600001 	addik	r3, r0, 1
   11a1c:	8a453000 	xor	r18, r5, r6
   11a20:	beb20010 	bgeid	r18, 16		// 11a30
   11a24:	00600000 	add	r3, r0, r0
   11a28:	bc46005c 	blti	r6, 92		// 11a84
   11a2c:	b800000c 	bri	12		// 11a38
   11a30:	06462800 	rsub	r18, r6, r5
   11a34:	bc520050 	blti	r18, 80		// 11a84
   11a38:	bc86000c 	bgti	r6, 12		// 11a44
   11a3c:	b8100048 	brid	72		// 11a84
   11a40:	30600001 	addik	r3, r0, 1
   11a44:	bc450010 	blti	r5, 16		// 11a54
   11a48:	00a52800 	add	r5, r5, r5
   11a4c:	be85fffc 	bgtid	r5, -4		// 11a48
   11a50:	33bdffff 	addik	r29, r29, -1
   11a54:	00a52800 	add	r5, r5, r5
   11a58:	0bdef000 	addc	r30, r30, r30
   11a5c:	07e6f000 	rsub	r31, r6, r30
   11a60:	bc5f000c 	blti	r31, 12		// 11a6c
   11a64:	83c0f800 	or	r30, r0, r31
   11a68:	30630001 	addik	r3, r3, 1
   11a6c:	33bdffff 	addik	r29, r29, -1
   11a70:	bc1d000c 	beqi	r29, 12		// 11a7c
   11a74:	00631800 	add	r3, r3, r3
   11a78:	b800ffdc 	bri	-36		// 11a54
   11a7c:	b8000008 	bri	8		// 11a84
   11a80:	80600000 	or	r3, r0, r0
   11a84:	eba10000 	lwi	r29, r1, 0
   11a88:	ebc10004 	lwi	r30, r1, 4
   11a8c:	ebe10008 	lwi	r31, r1, 8
   11a90:	b60f0008 	rtsd	r15, 8
   11a94:	3021000c 	addik	r1, r1, 12

00011a98 <__umodsi3>:
   11a98:	3021fff4 	addik	r1, r1, -12
   11a9c:	fba10000 	swi	r29, r1, 0
   11aa0:	fbc10004 	swi	r30, r1, 4
   11aa4:	fbe10008 	swi	r31, r1, 8
   11aa8:	bc060094 	beqi	r6, 148		// 11b3c
   11aac:	be050090 	beqid	r5, 144		// 11b3c
   11ab0:	30600000 	addik	r3, r0, 0
   11ab4:	33c00000 	addik	r30, r0, 0
   11ab8:	33a00020 	addik	r29, r0, 32
   11abc:	06453000 	rsub	r18, r5, r6
   11ac0:	bc120080 	beqi	r18, 128		// 11b40
   11ac4:	8a453000 	xor	r18, r5, r6
   11ac8:	beb20010 	bgeid	r18, 16		// 11ad8
   11acc:	30650000 	addik	r3, r5, 0
   11ad0:	bc460070 	blti	r6, 112		// 11b40
   11ad4:	b800000c 	bri	12		// 11ae0
   11ad8:	06453000 	rsub	r18, r5, r6
   11adc:	bc920064 	bgti	r18, 100		// 11b40
   11ae0:	be860020 	bgtid	r6, 32		// 11b00
   11ae4:	30600000 	addik	r3, r0, 0
   11ae8:	b0007fff 	imm	32767
   11aec:	3240ffff 	addik	r18, r0, -1
   11af0:	84a59000 	and	r5, r5, r18
   11af4:	84c69000 	and	r6, r6, r18
   11af8:	b8100048 	brid	72		// 11b40
   11afc:	04662800 	rsub	r3, r6, r5
   11b00:	bc450010 	blti	r5, 16		// 11b10
   11b04:	00a52800 	add	r5, r5, r5
   11b08:	bea5fffc 	bgeid	r5, -4		// 11b04
   11b0c:	33bdffff 	addik	r29, r29, -1
   11b10:	00a52800 	add	r5, r5, r5
   11b14:	08631800 	addc	r3, r3, r3
   11b18:	07e61800 	rsub	r31, r6, r3
   11b1c:	bc5f000c 	blti	r31, 12		// 11b28
   11b20:	8060f800 	or	r3, r0, r31
   11b24:	33de0001 	addik	r30, r30, 1
   11b28:	33bdffff 	addik	r29, r29, -1
   11b2c:	bc1d000c 	beqi	r29, 12		// 11b38
   11b30:	03def000 	add	r30, r30, r30
   11b34:	b800ffdc 	bri	-36		// 11b10
   11b38:	b8000008 	bri	8		// 11b40
   11b3c:	80600000 	or	r3, r0, r0
   11b40:	eba10000 	lwi	r29, r1, 0
   11b44:	ebc10004 	lwi	r30, r1, 4
   11b48:	ebe10008 	lwi	r31, r1, 8
   11b4c:	b60f0008 	rtsd	r15, 8
   11b50:	3021000c 	addik	r1, r1, 12

00011b54 <__muldi3>:
   11b54:	3021ffc0 	addik	r1, r1, -64
   11b58:	fae10024 	swi	r23, r1, 36
   11b5c:	fb21002c 	swi	r25, r1, 44
   11b60:	b0000000 	imm	0
   11b64:	a6e6ffff 	andi	r23, r6, -1
   11b68:	b0000000 	imm	0
   11b6c:	a728ffff 	andi	r25, r8, -1
   11b70:	fac10020 	swi	r22, r1, 32
   11b74:	fb610034 	swi	r27, r1, 52
   11b78:	12c60000 	addk	r22, r6, r0
   11b7c:	13650000 	addk	r27, r5, r0
   11b80:	10d70000 	addk	r6, r23, r0
   11b84:	10b90000 	addk	r5, r25, r0
   11b88:	f9e10000 	swi	r15, r1, 0
   11b8c:	fa61001c 	swi	r19, r1, 28
   11b90:	fb010028 	swi	r24, r1, 40
   11b94:	12680000 	addk	r19, r8, r0
   11b98:	13004000 	addk	r24, r0, r8
   11b9c:	93080041 	srl	r24, r8
   11ba0:	93180041 	srl	r24, r24
   11ba4:	93180041 	srl	r24, r24
   11ba8:	93180041 	srl	r24, r24
   11bac:	93180041 	srl	r24, r24
   11bb0:	93180041 	srl	r24, r24
   11bb4:	93180041 	srl	r24, r24
   11bb8:	93180041 	srl	r24, r24
   11bbc:	93180041 	srl	r24, r24
   11bc0:	93180041 	srl	r24, r24
   11bc4:	93180041 	srl	r24, r24
   11bc8:	93180041 	srl	r24, r24
   11bcc:	93180041 	srl	r24, r24
   11bd0:	93180041 	srl	r24, r24
   11bd4:	93180041 	srl	r24, r24
   11bd8:	93180041 	srl	r24, r24
   11bdc:	fb410030 	swi	r26, r1, 48
   11be0:	fb810038 	swi	r28, r1, 56
   11be4:	fba1003c 	swi	r29, r1, 60
   11be8:	b9f4fdb0 	brlid	r15, -592	// 11998 <__mulsi3>
   11bec:	13870000 	addk	r28, r7, r0
   11bf0:	10d70000 	addk	r6, r23, r0
   11bf4:	10b80000 	addk	r5, r24, r0
   11bf8:	12e0b000 	addk	r23, r0, r22
   11bfc:	92f60041 	srl	r23, r22
   11c00:	92f70041 	srl	r23, r23
   11c04:	92f70041 	srl	r23, r23
   11c08:	92f70041 	srl	r23, r23
   11c0c:	92f70041 	srl	r23, r23
   11c10:	92f70041 	srl	r23, r23
   11c14:	92f70041 	srl	r23, r23
   11c18:	92f70041 	srl	r23, r23
   11c1c:	92f70041 	srl	r23, r23
   11c20:	92f70041 	srl	r23, r23
   11c24:	92f70041 	srl	r23, r23
   11c28:	92f70041 	srl	r23, r23
   11c2c:	92f70041 	srl	r23, r23
   11c30:	92f70041 	srl	r23, r23
   11c34:	92f70041 	srl	r23, r23
   11c38:	92f70041 	srl	r23, r23
   11c3c:	b9f4fd5c 	brlid	r15, -676	// 11998 <__mulsi3>
   11c40:	13430000 	addk	r26, r3, r0
   11c44:	10b90000 	addk	r5, r25, r0
   11c48:	10d70000 	addk	r6, r23, r0
   11c4c:	b9f4fd4c 	brlid	r15, -692	// 11998 <__mulsi3>
   11c50:	13a30000 	addk	r29, r3, r0
   11c54:	10b80000 	addk	r5, r24, r0
   11c58:	10d70000 	addk	r6, r23, r0
   11c5c:	b9f4fd3c 	brlid	r15, -708	// 11998 <__mulsi3>
   11c60:	13230000 	addk	r25, r3, r0
   11c64:	1119e800 	addk	r8, r25, r29
   11c68:	11230000 	addk	r9, r3, r0
   11c6c:	1060d000 	addk	r3, r0, r26
   11c70:	907a0041 	srl	r3, r26
   11c74:	90630041 	srl	r3, r3
   11c78:	90630041 	srl	r3, r3
   11c7c:	90630041 	srl	r3, r3
   11c80:	90630041 	srl	r3, r3
   11c84:	90630041 	srl	r3, r3
   11c88:	90630041 	srl	r3, r3
   11c8c:	90630041 	srl	r3, r3
   11c90:	90630041 	srl	r3, r3
   11c94:	90630041 	srl	r3, r3
   11c98:	90630041 	srl	r3, r3
   11c9c:	90630041 	srl	r3, r3
   11ca0:	90630041 	srl	r3, r3
   11ca4:	90630041 	srl	r3, r3
   11ca8:	90630041 	srl	r3, r3
   11cac:	90630041 	srl	r3, r3
   11cb0:	11081800 	addk	r8, r8, r3
   11cb4:	17394003 	cmpu	r25, r25, r8
   11cb8:	bcb9000c 	bgei	r25, 12		// 11cc4
   11cbc:	b0000001 	imm	1
   11cc0:	31290000 	addik	r9, r9, 0
   11cc4:	b0000000 	imm	0
   11cc8:	a468ffff 	andi	r3, r8, -1
   11ccc:	10631800 	addk	r3, r3, r3
   11cd0:	10631800 	addk	r3, r3, r3
   11cd4:	10631800 	addk	r3, r3, r3
   11cd8:	10631800 	addk	r3, r3, r3
   11cdc:	10631800 	addk	r3, r3, r3
   11ce0:	10631800 	addk	r3, r3, r3
   11ce4:	10631800 	addk	r3, r3, r3
   11ce8:	10631800 	addk	r3, r3, r3
   11cec:	10631800 	addk	r3, r3, r3
   11cf0:	10631800 	addk	r3, r3, r3
   11cf4:	10631800 	addk	r3, r3, r3
   11cf8:	10631800 	addk	r3, r3, r3
   11cfc:	10631800 	addk	r3, r3, r3
   11d00:	10b60000 	addk	r5, r22, r0
   11d04:	10dc0000 	addk	r6, r28, r0
   11d08:	10631800 	addk	r3, r3, r3
   11d0c:	10631800 	addk	r3, r3, r3
   11d10:	10631800 	addk	r3, r3, r3
   11d14:	b0000000 	imm	0
   11d18:	a75affff 	andi	r26, r26, -1
   11d1c:	12c04000 	addk	r22, r0, r8
   11d20:	92c80041 	srl	r22, r8
   11d24:	92d60041 	srl	r22, r22
   11d28:	92d60041 	srl	r22, r22
   11d2c:	92d60041 	srl	r22, r22
   11d30:	92d60041 	srl	r22, r22
   11d34:	92d60041 	srl	r22, r22
   11d38:	92d60041 	srl	r22, r22
   11d3c:	92d60041 	srl	r22, r22
   11d40:	92d60041 	srl	r22, r22
   11d44:	92d60041 	srl	r22, r22
   11d48:	92d60041 	srl	r22, r22
   11d4c:	92d60041 	srl	r22, r22
   11d50:	92d60041 	srl	r22, r22
   11d54:	92d60041 	srl	r22, r22
   11d58:	92d60041 	srl	r22, r22
   11d5c:	92d60041 	srl	r22, r22
   11d60:	1343d000 	addk	r26, r3, r26
   11d64:	b9f4fc34 	brlid	r15, -972	// 11998 <__mulsi3>
   11d68:	12c9b000 	addk	r22, r9, r22
   11d6c:	10b30000 	addk	r5, r19, r0
   11d70:	10db0000 	addk	r6, r27, r0
   11d74:	b9f4fc24 	brlid	r15, -988	// 11998 <__mulsi3>
   11d78:	12e30000 	addk	r23, r3, r0
   11d7c:	10771800 	addk	r3, r23, r3
   11d80:	1063b000 	addk	r3, r3, r22
   11d84:	109a0000 	addk	r4, r26, r0
   11d88:	e9e10000 	lwi	r15, r1, 0
   11d8c:	ea61001c 	lwi	r19, r1, 28
   11d90:	eac10020 	lwi	r22, r1, 32
   11d94:	eae10024 	lwi	r23, r1, 36
   11d98:	eb010028 	lwi	r24, r1, 40
   11d9c:	eb21002c 	lwi	r25, r1, 44
   11da0:	eb410030 	lwi	r26, r1, 48
   11da4:	eb610034 	lwi	r27, r1, 52
   11da8:	eb810038 	lwi	r28, r1, 56
   11dac:	eba1003c 	lwi	r29, r1, 60
   11db0:	b60f0008 	rtsd	r15, 8
   11db4:	30210040 	addik	r1, r1, 64

00011db8 <__clzsi2>:
   11db8:	b0000000 	imm	0
   11dbc:	3060ffff 	addik	r3, r0, -1
   11dc0:	14651803 	cmpu	r3, r5, r3
   11dc4:	be430044 	bltid	r3, 68		// 11e08
   11dc8:	306000ff 	addik	r3, r0, 255
   11dcc:	14651803 	cmpu	r3, r5, r3
   11dd0:	bca30060 	bgei	r3, 96		// 11e30
   11dd4:	30600018 	addik	r3, r0, 24	// 18 <_.d3>
   11dd8:	30c00008 	addik	r6, r0, 8	// 8 <_.z>
   11ddc:	a646001f 	andi	r18, r6, 31
   11de0:	10802800 	addk	r4, r0, r5
   11de4:	be120014 	beqid	r18, 20		// 11df8
   11de8:	10840000 	addk	r4, r4, r0
   11dec:	3252ffff 	addik	r18, r18, -1
   11df0:	be32fffc 	bneid	r18, -4		// 11dec
   11df4:	90840041 	srl	r4, r4
   11df8:	b0000001 	imm	1
   11dfc:	e0842f80 	lbui	r4, r4, 12160
   11e00:	b60f0008 	rtsd	r15, 8
   11e04:	14641800 	rsubk	r3, r4, r3
   11e08:	b00000ff 	imm	255
   11e0c:	3060ffff 	addik	r3, r0, -1
   11e10:	14651803 	cmpu	r3, r5, r3
   11e14:	bc430010 	blti	r3, 16		// 11e24
   11e18:	30600010 	addik	r3, r0, 16	// 10 <_.d1>
   11e1c:	b810ffc0 	brid	-64		// 11ddc
   11e20:	10c30000 	addk	r6, r3, r0
   11e24:	30600008 	addik	r3, r0, 8	// 8 <_.z>
   11e28:	b810ffb4 	brid	-76		// 11ddc
   11e2c:	30c00018 	addik	r6, r0, 24	// 18 <_.d3>
   11e30:	30600020 	addik	r3, r0, 32
   11e34:	b810ffa8 	brid	-88		// 11ddc
   11e38:	10c00000 	addk	r6, r0, r0

00011e3c <__pack_d>:
   11e3c:	3021ffc8 	addik	r1, r1, -56
   11e40:	f9e10000 	swi	r15, r1, 0
   11e44:	fa61001c 	swi	r19, r1, 28
   11e48:	fac10020 	swi	r22, r1, 32
   11e4c:	fae10024 	swi	r23, r1, 36
   11e50:	fb010028 	swi	r24, r1, 40
   11e54:	fb21002c 	swi	r25, r1, 44
   11e58:	fb410030 	swi	r26, r1, 48
   11e5c:	fb610034 	swi	r27, r1, 52
   11e60:	e8650000 	lwi	r3, r5, 0
   11e64:	30800001 	addik	r4, r0, 1
   11e68:	eac5000c 	lwi	r22, r5, 12
   11e6c:	eae50010 	lwi	r23, r5, 16
   11e70:	14832003 	cmpu	r4, r3, r4
   11e74:	bea40220 	bgeid	r4, 544		// 12094
   11e78:	ea650004 	lwi	r19, r5, 4
   11e7c:	a8830004 	xori	r4, r3, 4
   11e80:	be0401f8 	beqid	r4, 504		// 12078
   11e84:	a8630002 	xori	r3, r3, 2
   11e88:	be030134 	beqid	r3, 308		// 11fbc
   11e8c:	8076b800 	or	r3, r22, r23
   11e90:	be03012c 	beqid	r3, 300		// 11fbc
   11e94:	3080fc02 	addik	r4, r0, -1022
   11e98:	e8650008 	lwi	r3, r5, 8
   11e9c:	14841801 	cmp	r4, r4, r3
   11ea0:	be44022c 	bltid	r4, 556		// 120cc
   11ea4:	308003ff 	addik	r4, r0, 1023
   11ea8:	14832001 	cmp	r4, r3, r4
   11eac:	bc4401cc 	blti	r4, 460		// 12078
   11eb0:	30800000 	addik	r4, r0, 0
   11eb4:	30a000ff 	addik	r5, r0, 255
   11eb8:	84962000 	and	r4, r22, r4
   11ebc:	be040188 	beqid	r4, 392		// 12044
   11ec0:	84b72800 	and	r5, r23, r5
   11ec4:	30800000 	addik	r4, r0, 0
   11ec8:	30a0007f 	addik	r5, r0, 127
   11ecc:	02f72800 	add	r23, r23, r5
   11ed0:	0ad62000 	addc	r22, r22, r4
   11ed4:	b0001fff 	imm	8191
   11ed8:	3080ffff 	addik	r4, r0, -1
   11edc:	14962003 	cmpu	r4, r22, r4
   11ee0:	be440140 	bltid	r4, 320		// 12020
   11ee4:	90970041 	srl	r4, r23
   11ee8:	306303ff 	addik	r3, r3, 1023
   11eec:	90d60021 	src	r6, r22
   11ef0:	90c60021 	src	r6, r6
   11ef4:	90c60021 	src	r6, r6
   11ef8:	90c60021 	src	r6, r6
   11efc:	90c60021 	src	r6, r6
   11f00:	90c60021 	src	r6, r6
   11f04:	90c60021 	src	r6, r6
   11f08:	90c60021 	src	r6, r6
   11f0c:	90c60021 	src	r6, r6
   11f10:	b000ff00 	imm	-256
   11f14:	a4c60000 	andi	r6, r6, 0
   11f18:	b000000f 	imm	15
   11f1c:	3100ffff 	addik	r8, r0, -1
   11f20:	3120ffff 	addik	r9, r0, -1
   11f24:	10a0b800 	addk	r5, r0, r23
   11f28:	90b70041 	srl	r5, r23
   11f2c:	90a50041 	srl	r5, r5
   11f30:	90a50041 	srl	r5, r5
   11f34:	90a50041 	srl	r5, r5
   11f38:	90a50041 	srl	r5, r5
   11f3c:	90a50041 	srl	r5, r5
   11f40:	90a50041 	srl	r5, r5
   11f44:	90a50041 	srl	r5, r5
   11f48:	80a62800 	or	r5, r6, r5
   11f4c:	1080b000 	addk	r4, r0, r22
   11f50:	90960041 	srl	r4, r22
   11f54:	90840041 	srl	r4, r4
   11f58:	90840041 	srl	r4, r4
   11f5c:	90840041 	srl	r4, r4
   11f60:	90840041 	srl	r4, r4
   11f64:	90840041 	srl	r4, r4
   11f68:	90840041 	srl	r4, r4
   11f6c:	90840041 	srl	r4, r4
   11f70:	90c30021 	src	r6, r3
   11f74:	90c60021 	src	r6, r6
   11f78:	90c60021 	src	r6, r6
   11f7c:	90c60021 	src	r6, r6
   11f80:	90c60021 	src	r6, r6
   11f84:	90c60021 	src	r6, r6
   11f88:	90c60021 	src	r6, r6
   11f8c:	90c60021 	src	r6, r6
   11f90:	90c60021 	src	r6, r6
   11f94:	90c60021 	src	r6, r6
   11f98:	90c60021 	src	r6, r6
   11f9c:	90c60021 	src	r6, r6
   11fa0:	90c60021 	src	r6, r6
   11fa4:	b000fff0 	imm	-16
   11fa8:	a4c60000 	andi	r6, r6, 0
   11fac:	85044000 	and	r8, r4, r8
   11fb0:	85254800 	and	r9, r5, r9
   11fb4:	b8100018 	brid	24		// 11fcc
   11fb8:	10e00000 	addk	r7, r0, r0
   11fbc:	30c00000 	addik	r6, r0, 0
   11fc0:	30e00000 	addik	r7, r0, 0
   11fc4:	11060000 	addk	r8, r6, r0
   11fc8:	11270000 	addk	r9, r7, r0
   11fcc:	80c83000 	or	r6, r8, r6
   11fd0:	80e93800 	or	r7, r9, r7
   11fd4:	10a00000 	addk	r5, r0, r0
   11fd8:	90930021 	src	r4, r19
   11fdc:	90840021 	src	r4, r4
   11fe0:	b0008000 	imm	-32768
   11fe4:	a4840000 	andi	r4, r4, 0
   11fe8:	80a72800 	or	r5, r7, r5
   11fec:	80862000 	or	r4, r6, r4
   11ff0:	10640000 	addk	r3, r4, r0
   11ff4:	e9e10000 	lwi	r15, r1, 0
   11ff8:	10850000 	addk	r4, r5, r0
   11ffc:	ea61001c 	lwi	r19, r1, 28
   12000:	eac10020 	lwi	r22, r1, 32
   12004:	eae10024 	lwi	r23, r1, 36
   12008:	eb010028 	lwi	r24, r1, 40
   1200c:	eb21002c 	lwi	r25, r1, 44
   12010:	eb410030 	lwi	r26, r1, 48
   12014:	eb610034 	lwi	r27, r1, 52
   12018:	b60f0008 	rtsd	r15, 8
   1201c:	30210038 	addik	r1, r1, 56
   12020:	90d60041 	srl	r6, r22
   12024:	90b60021 	src	r5, r22
   12028:	90a50021 	src	r5, r5
   1202c:	b0008000 	imm	-32768
   12030:	a4a50000 	andi	r5, r5, 0
   12034:	30630400 	addik	r3, r3, 1024
   12038:	12c60000 	addk	r22, r6, r0
   1203c:	b810feb0 	brid	-336		// 11eec
   12040:	82e52000 	or	r23, r5, r4
   12044:	a8850080 	xori	r4, r5, 128
   12048:	bc24fe7c 	bnei	r4, -388		// 11ec4
   1204c:	30800000 	addik	r4, r0, 0
   12050:	30a00100 	addik	r5, r0, 256
   12054:	84962000 	and	r4, r22, r4
   12058:	84b72800 	and	r5, r23, r5
   1205c:	80842800 	or	r4, r4, r5
   12060:	bc04fe74 	beqi	r4, -396		// 11ed4
   12064:	30800000 	addik	r4, r0, 0
   12068:	30a00080 	addik	r5, r0, 128
   1206c:	02f72800 	add	r23, r23, r5
   12070:	0ad62000 	addc	r22, r22, r4
   12074:	b800fe60 	bri	-416		// 11ed4
   12078:	b0007ff0 	imm	32752
   1207c:	30c00000 	addik	r6, r0, 0
   12080:	30e00000 	addik	r7, r0, 0
   12084:	31000000 	addik	r8, r0, 0
   12088:	31200000 	addik	r9, r0, 0
   1208c:	b810ff44 	brid	-188		// 11fd0
   12090:	80c83000 	or	r6, r8, r6
   12094:	b000000f 	imm	15
   12098:	3100ffff 	addik	r8, r0, -1
   1209c:	3120ffff 	addik	r9, r0, -1
   120a0:	b0000008 	imm	8
   120a4:	30800000 	addik	r4, r0, 0
   120a8:	30a00000 	addik	r5, r0, 0
   120ac:	85164000 	and	r8, r22, r8
   120b0:	85374800 	and	r9, r23, r9
   120b4:	81082000 	or	r8, r8, r4
   120b8:	b0007ff0 	imm	32752
   120bc:	30c00000 	addik	r6, r0, 0
   120c0:	30e00000 	addik	r7, r0, 0
   120c4:	b810ff08 	brid	-248		// 11fcc
   120c8:	81292800 	or	r9, r9, r5
   120cc:	3080fc02 	addik	r4, r0, -1022
   120d0:	17032000 	rsubk	r24, r3, r4
   120d4:	30600038 	addik	r3, r0, 56
   120d8:	14781801 	cmp	r3, r24, r3
   120dc:	bc4302a4 	blti	r3, 676		// 12380
   120e0:	10f80000 	addk	r7, r24, r0
   120e4:	10b60000 	addk	r5, r22, r0
   120e8:	33400000 	addik	r26, r0, 0
   120ec:	33600001 	addik	r27, r0, 1
   120f0:	b9f407c0 	brlid	r15, 1984	// 128b0 <__lshrdi3>
   120f4:	10d70000 	addk	r6, r23, r0
   120f8:	10f80000 	addk	r7, r24, r0
   120fc:	10ba0000 	addk	r5, r26, r0
   12100:	10db0000 	addk	r6, r27, r0
   12104:	13030000 	addk	r24, r3, r0
   12108:	b9f40850 	brlid	r15, 2128	// 12958 <__ashldi3>
   1210c:	13240000 	addk	r25, r4, r0
   12110:	10c30000 	addk	r6, r3, r0
   12114:	10e40000 	addk	r7, r4, r0
   12118:	04bb3800 	rsub	r5, r27, r7
   1211c:	0c9a3000 	rsubc	r4, r26, r6
   12120:	86c4b000 	and	r22, r4, r22
   12124:	86e5b800 	and	r23, r5, r23
   12128:	82d6b800 	or	r22, r22, r23
   1212c:	14760000 	rsubk	r3, r22, r0
   12130:	10800000 	addk	r4, r0, r0
   12134:	30c00000 	addik	r6, r0, 0
   12138:	30e000ff 	addik	r7, r0, 255
   1213c:	82c3b000 	or	r22, r3, r22
   12140:	8084c000 	or	r4, r4, r24
   12144:	10a0b000 	addk	r5, r0, r22
   12148:	90b60041 	srl	r5, r22
   1214c:	90a50041 	srl	r5, r5
   12150:	90a50041 	srl	r5, r5
   12154:	90a50041 	srl	r5, r5
   12158:	90a50041 	srl	r5, r5
   1215c:	90a50041 	srl	r5, r5
   12160:	90a50041 	srl	r5, r5
   12164:	90a50041 	srl	r5, r5
   12168:	90a50041 	srl	r5, r5
   1216c:	90a50041 	srl	r5, r5
   12170:	90a50041 	srl	r5, r5
   12174:	90a50041 	srl	r5, r5
   12178:	90a50041 	srl	r5, r5
   1217c:	90a50041 	srl	r5, r5
   12180:	90a50041 	srl	r5, r5
   12184:	90a50041 	srl	r5, r5
   12188:	90a50041 	srl	r5, r5
   1218c:	90a50041 	srl	r5, r5
   12190:	90a50041 	srl	r5, r5
   12194:	90a50041 	srl	r5, r5
   12198:	90a50041 	srl	r5, r5
   1219c:	90a50041 	srl	r5, r5
   121a0:	90a50041 	srl	r5, r5
   121a4:	90a50041 	srl	r5, r5
   121a8:	90a50041 	srl	r5, r5
   121ac:	90a50041 	srl	r5, r5
   121b0:	90a50041 	srl	r5, r5
   121b4:	90a50041 	srl	r5, r5
   121b8:	90a50041 	srl	r5, r5
   121bc:	90a50041 	srl	r5, r5
   121c0:	90a50041 	srl	r5, r5
   121c4:	84c43000 	and	r6, r4, r6
   121c8:	80a5c800 	or	r5, r5, r25
   121cc:	be2601bc 	bneid	r6, 444		// 12388
   121d0:	84e53800 	and	r7, r5, r7
   121d4:	a8670080 	xori	r3, r7, 128
   121d8:	bc2301b0 	bnei	r3, 432		// 12388
   121dc:	30c00000 	addik	r6, r0, 0
   121e0:	30e00100 	addik	r7, r0, 256
   121e4:	84c43000 	and	r6, r4, r6
   121e8:	84e53800 	and	r7, r5, r7
   121ec:	80c63800 	or	r6, r6, r7
   121f0:	bc060014 	beqi	r6, 20		// 12204
   121f4:	30c00000 	addik	r6, r0, 0
   121f8:	30e00080 	addik	r7, r0, 128
   121fc:	00a53800 	add	r5, r5, r7
   12200:	08843000 	addc	r4, r4, r6
   12204:	b0000fff 	imm	4095
   12208:	3140ffff 	addik	r10, r0, -1
   1220c:	90640021 	src	r3, r4
   12210:	90630021 	src	r3, r3
   12214:	90630021 	src	r3, r3
   12218:	90630021 	src	r3, r3
   1221c:	90630021 	src	r3, r3
   12220:	90630021 	src	r3, r3
   12224:	90630021 	src	r3, r3
   12228:	90630021 	src	r3, r3
   1222c:	90630021 	src	r3, r3
   12230:	b000ff00 	imm	-256
   12234:	a4630000 	andi	r3, r3, 0
   12238:	11202800 	addk	r9, r0, r5
   1223c:	91250041 	srl	r9, r5
   12240:	91290041 	srl	r9, r9
   12244:	91290041 	srl	r9, r9
   12248:	91290041 	srl	r9, r9
   1224c:	91290041 	srl	r9, r9
   12250:	91290041 	srl	r9, r9
   12254:	91290041 	srl	r9, r9
   12258:	91290041 	srl	r9, r9
   1225c:	15445003 	cmpu	r10, r4, r10
   12260:	11605000 	addk	r11, r0, r10
   12264:	014b5800 	add	r10, r11, r11
   12268:	09400000 	addc	r10, r0, r0
   1226c:	bc0a0008 	beqi	r10, 8		// 12274
   12270:	2140ffff 	addi	r10, r0, -1
   12274:	10e05000 	addk	r7, r0, r10
   12278:	90ea0001 	sra	r7, r10
   1227c:	90e70001 	sra	r7, r7
   12280:	90e70001 	sra	r7, r7
   12284:	90e70001 	sra	r7, r7
   12288:	90e70001 	sra	r7, r7
   1228c:	90e70001 	sra	r7, r7
   12290:	90e70001 	sra	r7, r7
   12294:	90e70001 	sra	r7, r7
   12298:	90e70001 	sra	r7, r7
   1229c:	90e70001 	sra	r7, r7
   122a0:	90e70001 	sra	r7, r7
   122a4:	90e70001 	sra	r7, r7
   122a8:	90e70001 	sra	r7, r7
   122ac:	90e70001 	sra	r7, r7
   122b0:	90e70001 	sra	r7, r7
   122b4:	90e70001 	sra	r7, r7
   122b8:	90e70001 	sra	r7, r7
   122bc:	90e70001 	sra	r7, r7
   122c0:	90e70001 	sra	r7, r7
   122c4:	90e70001 	sra	r7, r7
   122c8:	90e70001 	sra	r7, r7
   122cc:	90e70001 	sra	r7, r7
   122d0:	90e70001 	sra	r7, r7
   122d4:	90e70001 	sra	r7, r7
   122d8:	90e70001 	sra	r7, r7
   122dc:	90e70001 	sra	r7, r7
   122e0:	90e70001 	sra	r7, r7
   122e4:	90e70001 	sra	r7, r7
   122e8:	90e70001 	sra	r7, r7
   122ec:	90e70001 	sra	r7, r7
   122f0:	90e70001 	sra	r7, r7
   122f4:	31400000 	addik	r10, r0, 0
   122f8:	31600001 	addik	r11, r0, 1
   122fc:	856b3800 	and	r11, r11, r7
   12300:	11002000 	addk	r8, r0, r4
   12304:	91040041 	srl	r8, r4
   12308:	91080041 	srl	r8, r8
   1230c:	91080041 	srl	r8, r8
   12310:	91080041 	srl	r8, r8
   12314:	91080041 	srl	r8, r8
   12318:	91080041 	srl	r8, r8
   1231c:	91080041 	srl	r8, r8
   12320:	91080041 	srl	r8, r8
   12324:	81234800 	or	r9, r3, r9
   12328:	b000000f 	imm	15
   1232c:	3080ffff 	addik	r4, r0, -1
   12330:	30a0ffff 	addik	r5, r0, -1
   12334:	90cb0021 	src	r6, r11
   12338:	90c60021 	src	r6, r6
   1233c:	90c60021 	src	r6, r6
   12340:	90c60021 	src	r6, r6
   12344:	90c60021 	src	r6, r6
   12348:	90c60021 	src	r6, r6
   1234c:	90c60021 	src	r6, r6
   12350:	90c60021 	src	r6, r6
   12354:	90c60021 	src	r6, r6
   12358:	90c60021 	src	r6, r6
   1235c:	90c60021 	src	r6, r6
   12360:	90c60021 	src	r6, r6
   12364:	90c60021 	src	r6, r6
   12368:	b000fff0 	imm	-16
   1236c:	a4c60000 	andi	r6, r6, 0
   12370:	85082000 	and	r8, r8, r4
   12374:	85292800 	and	r9, r9, r5
   12378:	b810fc54 	brid	-940		// 11fcc
   1237c:	10e00000 	addk	r7, r0, r0
   12380:	30800000 	addik	r4, r0, 0
   12384:	30a00000 	addik	r5, r0, 0
   12388:	30c00000 	addik	r6, r0, 0
   1238c:	30e0007f 	addik	r7, r0, 127
   12390:	00a53800 	add	r5, r5, r7
   12394:	08843000 	addc	r4, r4, r6
   12398:	b800fe6c 	bri	-404		// 12204

0001239c <__unpack_d>:
   1239c:	3021fff4 	addik	r1, r1, -12
   123a0:	fac10004 	swi	r22, r1, 4
   123a4:	fae10008 	swi	r23, r1, 8
   123a8:	e9050000 	lwi	r8, r5, 0
   123ac:	e9250004 	lwi	r9, r5, 4
   123b0:	32c00000 	addik	r22, r0, 0
   123b4:	32e00001 	addik	r23, r0, 1
   123b8:	10a04000 	addk	r5, r0, r8
   123bc:	90a80041 	srl	r5, r8
   123c0:	90a50041 	srl	r5, r5
   123c4:	90a50041 	srl	r5, r5
   123c8:	90a50041 	srl	r5, r5
   123cc:	90a50041 	srl	r5, r5
   123d0:	90a50041 	srl	r5, r5
   123d4:	90a50041 	srl	r5, r5
   123d8:	90a50041 	srl	r5, r5
   123dc:	90a50041 	srl	r5, r5
   123e0:	90a50041 	srl	r5, r5
   123e4:	90a50041 	srl	r5, r5
   123e8:	90a50041 	srl	r5, r5
   123ec:	90a50041 	srl	r5, r5
   123f0:	90a50041 	srl	r5, r5
   123f4:	90a50041 	srl	r5, r5
   123f8:	90a50041 	srl	r5, r5
   123fc:	90a50041 	srl	r5, r5
   12400:	90a50041 	srl	r5, r5
   12404:	90a50041 	srl	r5, r5
   12408:	90a50041 	srl	r5, r5
   1240c:	11604000 	addk	r11, r0, r8
   12410:	91680041 	srl	r11, r8
   12414:	916b0041 	srl	r11, r11
   12418:	916b0041 	srl	r11, r11
   1241c:	916b0041 	srl	r11, r11
   12420:	916b0041 	srl	r11, r11
   12424:	916b0041 	srl	r11, r11
   12428:	916b0041 	srl	r11, r11
   1242c:	916b0041 	srl	r11, r11
   12430:	916b0041 	srl	r11, r11
   12434:	916b0041 	srl	r11, r11
   12438:	916b0041 	srl	r11, r11
   1243c:	916b0041 	srl	r11, r11
   12440:	916b0041 	srl	r11, r11
   12444:	916b0041 	srl	r11, r11
   12448:	916b0041 	srl	r11, r11
   1244c:	916b0041 	srl	r11, r11
   12450:	916b0041 	srl	r11, r11
   12454:	916b0041 	srl	r11, r11
   12458:	916b0041 	srl	r11, r11
   1245c:	916b0041 	srl	r11, r11
   12460:	916b0041 	srl	r11, r11
   12464:	916b0041 	srl	r11, r11
   12468:	916b0041 	srl	r11, r11
   1246c:	916b0041 	srl	r11, r11
   12470:	916b0041 	srl	r11, r11
   12474:	916b0041 	srl	r11, r11
   12478:	916b0041 	srl	r11, r11
   1247c:	916b0041 	srl	r11, r11
   12480:	916b0041 	srl	r11, r11
   12484:	916b0041 	srl	r11, r11
   12488:	916b0041 	srl	r11, r11
   1248c:	856bb800 	and	r11, r11, r23
   12490:	a46507ff 	andi	r3, r5, 2047
   12494:	f9660004 	swi	r11, r6, 4
   12498:	b000000f 	imm	15
   1249c:	3080ffff 	addik	r4, r0, -1
   124a0:	30a0ffff 	addik	r5, r0, -1
   124a4:	84882000 	and	r4, r8, r4
   124a8:	be230190 	bneid	r3, 400		// 12638
   124ac:	84a92800 	and	r5, r9, r5
   124b0:	80642800 	or	r3, r4, r5
   124b4:	be030278 	beqid	r3, 632		// 1272c
   124b8:	eac10004 	lwi	r22, r1, 4
   124bc:	b0000fff 	imm	4095
   124c0:	3100ffff 	addik	r8, r0, -1
   124c4:	10e02800 	addk	r7, r0, r5
   124c8:	90e50041 	srl	r7, r5
   124cc:	90e70041 	srl	r7, r7
   124d0:	90e70041 	srl	r7, r7
   124d4:	90e70041 	srl	r7, r7
   124d8:	90e70041 	srl	r7, r7
   124dc:	90e70041 	srl	r7, r7
   124e0:	90e70041 	srl	r7, r7
   124e4:	90e70041 	srl	r7, r7
   124e8:	90e70041 	srl	r7, r7
   124ec:	90e70041 	srl	r7, r7
   124f0:	90e70041 	srl	r7, r7
   124f4:	90e70041 	srl	r7, r7
   124f8:	90e70041 	srl	r7, r7
   124fc:	90e70041 	srl	r7, r7
   12500:	90e70041 	srl	r7, r7
   12504:	90e70041 	srl	r7, r7
   12508:	90e70041 	srl	r7, r7
   1250c:	90e70041 	srl	r7, r7
   12510:	90e70041 	srl	r7, r7
   12514:	90e70041 	srl	r7, r7
   12518:	90e70041 	srl	r7, r7
   1251c:	90e70041 	srl	r7, r7
   12520:	90e70041 	srl	r7, r7
   12524:	90e70041 	srl	r7, r7
   12528:	10602000 	addk	r3, r0, r4
   1252c:	10642000 	addk	r3, r4, r4
   12530:	10631800 	addk	r3, r3, r3
   12534:	10631800 	addk	r3, r3, r3
   12538:	10631800 	addk	r3, r3, r3
   1253c:	10631800 	addk	r3, r3, r3
   12540:	10631800 	addk	r3, r3, r3
   12544:	10631800 	addk	r3, r3, r3
   12548:	10631800 	addk	r3, r3, r3
   1254c:	30800003 	addik	r4, r0, 3
   12550:	80671800 	or	r3, r7, r3
   12554:	30e0fc01 	addik	r7, r0, -1023
   12558:	f8860000 	swi	r4, r6, 0
   1255c:	10802800 	addk	r4, r0, r5
   12560:	10852800 	addk	r4, r5, r5
   12564:	10842000 	addk	r4, r4, r4
   12568:	10842000 	addk	r4, r4, r4
   1256c:	10842000 	addk	r4, r4, r4
   12570:	10842000 	addk	r4, r4, r4
   12574:	10842000 	addk	r4, r4, r4
   12578:	10842000 	addk	r4, r4, r4
   1257c:	10842000 	addk	r4, r4, r4
   12580:	10631800 	addk	r3, r3, r3
   12584:	10a02000 	addk	r5, r0, r4
   12588:	90a40041 	srl	r5, r4
   1258c:	90a50041 	srl	r5, r5
   12590:	90a50041 	srl	r5, r5
   12594:	90a50041 	srl	r5, r5
   12598:	90a50041 	srl	r5, r5
   1259c:	90a50041 	srl	r5, r5
   125a0:	90a50041 	srl	r5, r5
   125a4:	90a50041 	srl	r5, r5
   125a8:	90a50041 	srl	r5, r5
   125ac:	90a50041 	srl	r5, r5
   125b0:	90a50041 	srl	r5, r5
   125b4:	90a50041 	srl	r5, r5
   125b8:	90a50041 	srl	r5, r5
   125bc:	90a50041 	srl	r5, r5
   125c0:	90a50041 	srl	r5, r5
   125c4:	90a50041 	srl	r5, r5
   125c8:	90a50041 	srl	r5, r5
   125cc:	90a50041 	srl	r5, r5
   125d0:	90a50041 	srl	r5, r5
   125d4:	90a50041 	srl	r5, r5
   125d8:	90a50041 	srl	r5, r5
   125dc:	90a50041 	srl	r5, r5
   125e0:	90a50041 	srl	r5, r5
   125e4:	90a50041 	srl	r5, r5
   125e8:	90a50041 	srl	r5, r5
   125ec:	90a50041 	srl	r5, r5
   125f0:	90a50041 	srl	r5, r5
   125f4:	90a50041 	srl	r5, r5
   125f8:	90a50041 	srl	r5, r5
   125fc:	90a50041 	srl	r5, r5
   12600:	90a50041 	srl	r5, r5
   12604:	80651800 	or	r3, r5, r3
   12608:	14a34003 	cmpu	r5, r3, r8
   1260c:	11270000 	addk	r9, r7, r0
   12610:	10842000 	addk	r4, r4, r4
   12614:	bea5ff6c 	bgeid	r5, -148		// 12580
   12618:	30e7ffff 	addik	r7, r7, -1
   1261c:	eac10004 	lwi	r22, r1, 4
   12620:	eae10008 	lwi	r23, r1, 8
   12624:	f9260008 	swi	r9, r6, 8
   12628:	f866000c 	swi	r3, r6, 12
   1262c:	f8860010 	swi	r4, r6, 16
   12630:	b60f0008 	rtsd	r15, 8
   12634:	3021000c 	addik	r1, r1, 12
   12638:	a8e307ff 	xori	r7, r3, 2047
   1263c:	be070104 	beqid	r7, 260		// 12740
   12640:	3063fc01 	addik	r3, r3, -1023
   12644:	10e02800 	addk	r7, r0, r5
   12648:	90e50041 	srl	r7, r5
   1264c:	90e70041 	srl	r7, r7
   12650:	90e70041 	srl	r7, r7
   12654:	90e70041 	srl	r7, r7
   12658:	90e70041 	srl	r7, r7
   1265c:	90e70041 	srl	r7, r7
   12660:	90e70041 	srl	r7, r7
   12664:	90e70041 	srl	r7, r7
   12668:	90e70041 	srl	r7, r7
   1266c:	90e70041 	srl	r7, r7
   12670:	90e70041 	srl	r7, r7
   12674:	90e70041 	srl	r7, r7
   12678:	90e70041 	srl	r7, r7
   1267c:	90e70041 	srl	r7, r7
   12680:	90e70041 	srl	r7, r7
   12684:	90e70041 	srl	r7, r7
   12688:	90e70041 	srl	r7, r7
   1268c:	90e70041 	srl	r7, r7
   12690:	90e70041 	srl	r7, r7
   12694:	90e70041 	srl	r7, r7
   12698:	90e70041 	srl	r7, r7
   1269c:	90e70041 	srl	r7, r7
   126a0:	90e70041 	srl	r7, r7
   126a4:	90e70041 	srl	r7, r7
   126a8:	11002000 	addk	r8, r0, r4
   126ac:	11042000 	addk	r8, r4, r4
   126b0:	11084000 	addk	r8, r8, r8
   126b4:	11084000 	addk	r8, r8, r8
   126b8:	11084000 	addk	r8, r8, r8
   126bc:	11084000 	addk	r8, r8, r8
   126c0:	11084000 	addk	r8, r8, r8
   126c4:	11084000 	addk	r8, r8, r8
   126c8:	11084000 	addk	r8, r8, r8
   126cc:	11202800 	addk	r9, r0, r5
   126d0:	11252800 	addk	r9, r5, r5
   126d4:	11294800 	addk	r9, r9, r9
   126d8:	11294800 	addk	r9, r9, r9
   126dc:	11294800 	addk	r9, r9, r9
   126e0:	11294800 	addk	r9, r9, r9
   126e4:	11294800 	addk	r9, r9, r9
   126e8:	11294800 	addk	r9, r9, r9
   126ec:	11294800 	addk	r9, r9, r9
   126f0:	81074000 	or	r8, r7, r8
   126f4:	b0001000 	imm	4096
   126f8:	30800000 	addik	r4, r0, 0
   126fc:	30a00000 	addik	r5, r0, 0
   12700:	81082000 	or	r8, r8, r4
   12704:	81292800 	or	r9, r9, r5
   12708:	f8660008 	swi	r3, r6, 8
   1270c:	30600003 	addik	r3, r0, 3
   12710:	f8660000 	swi	r3, r6, 0
   12714:	f906000c 	swi	r8, r6, 12
   12718:	f9260010 	swi	r9, r6, 16
   1271c:	eac10004 	lwi	r22, r1, 4
   12720:	eae10008 	lwi	r23, r1, 8
   12724:	b60f0008 	rtsd	r15, 8
   12728:	3021000c 	addik	r1, r1, 12
   1272c:	eae10008 	lwi	r23, r1, 8
   12730:	30600002 	addik	r3, r0, 2
   12734:	f8660000 	swi	r3, r6, 0
   12738:	b60f0008 	rtsd	r15, 8
   1273c:	3021000c 	addik	r1, r1, 12
   12740:	80642800 	or	r3, r4, r5
   12744:	be03003c 	beqid	r3, 60		// 12780
   12748:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
   1274c:	b0000008 	imm	8
   12750:	31400000 	addik	r10, r0, 0
   12754:	31600000 	addik	r11, r0, 0
   12758:	85085000 	and	r8, r8, r10
   1275c:	85295800 	and	r9, r9, r11
   12760:	81084800 	or	r8, r8, r9
   12764:	be080024 	beqid	r8, 36		// 12788
   12768:	30600001 	addik	r3, r0, 1
   1276c:	f8660000 	swi	r3, r6, 0
   12770:	f886000c 	swi	r4, r6, 12
   12774:	f8a60010 	swi	r5, r6, 16
   12778:	b810ffa8 	brid	-88		// 12720
   1277c:	eac10004 	lwi	r22, r1, 4
   12780:	b810ff9c 	brid	-100		// 1271c
   12784:	f8660000 	swi	r3, r6, 0
   12788:	b810ffe8 	brid	-24		// 12770
   1278c:	f9060000 	swi	r8, r6, 0

00012790 <__fpcmp_parts_d>:
   12790:	e8850000 	lwi	r4, r5, 0
   12794:	30600001 	addik	r3, r0, 1
   12798:	14e41803 	cmpu	r7, r4, r3
   1279c:	bca700ac 	bgei	r7, 172		// 12848
   127a0:	e8e60000 	lwi	r7, r6, 0
   127a4:	15071803 	cmpu	r8, r7, r3
   127a8:	bea800a0 	bgeid	r8, 160		// 12848
   127ac:	a9040004 	xori	r8, r4, 4
   127b0:	be0800e8 	beqid	r8, 232		// 12898
   127b4:	a9070004 	xori	r8, r7, 4
   127b8:	be080038 	beqid	r8, 56		// 127f0
   127bc:	a8840002 	xori	r4, r4, 2
   127c0:	bc040028 	beqi	r4, 40		// 127e8
   127c4:	a8e70002 	xori	r7, r7, 2
   127c8:	bc070038 	beqi	r7, 56		// 12800
   127cc:	e8850004 	lwi	r4, r5, 4
   127d0:	e8e60004 	lwi	r7, r6, 4
   127d4:	88e43800 	xor	r7, r4, r7
   127d8:	bc070078 	beqi	r7, 120		// 12850
   127dc:	bc24001c 	bnei	r4, 28		// 127f8
   127e0:	b60f0008 	rtsd	r15, 8
   127e4:	80000000 	or	r0, r0, r0
   127e8:	a8670002 	xori	r3, r7, 2
   127ec:	bc030080 	beqi	r3, 128		// 1286c
   127f0:	e8660004 	lwi	r3, r6, 4
   127f4:	bc230054 	bnei	r3, 84		// 12848
   127f8:	b60f0008 	rtsd	r15, 8
   127fc:	3060ffff 	addik	r3, r0, -1
   12800:	e8850004 	lwi	r4, r5, 4
   12804:	be24fff4 	bneid	r4, -12		// 127f8
   12808:	30600001 	addik	r3, r0, 1
   1280c:	b60f0008 	rtsd	r15, 8
   12810:	80000000 	or	r0, r0, r0
   12814:	14e74001 	cmp	r7, r7, r8
   12818:	bc470070 	blti	r7, 112		// 12888
   1281c:	e866000c 	lwi	r3, r6, 12
   12820:	e8e5000c 	lwi	r7, r5, 12
   12824:	e9050010 	lwi	r8, r5, 16
   12828:	14a71803 	cmpu	r5, r7, r3
   1282c:	be450018 	bltid	r5, 24		// 12844
   12830:	e8c60010 	lwi	r6, r6, 16
   12834:	88a71800 	xor	r5, r7, r3
   12838:	be25003c 	bneid	r5, 60		// 12874
   1283c:	15283003 	cmpu	r9, r8, r6
   12840:	bca90034 	bgei	r9, 52		// 12874
   12844:	bc24ffb4 	bnei	r4, -76		// 127f8
   12848:	b60f0008 	rtsd	r15, 8
   1284c:	30600001 	addik	r3, r0, 1
   12850:	e9050008 	lwi	r8, r5, 8
   12854:	e8e60008 	lwi	r7, r6, 8
   12858:	15283801 	cmp	r9, r8, r7
   1285c:	bca9ffb8 	bgei	r9, -72		// 12814
   12860:	bc24ff98 	bnei	r4, -104		// 127f8
   12864:	b60f0008 	rtsd	r15, 8
   12868:	80000000 	or	r0, r0, r0
   1286c:	b60f0008 	rtsd	r15, 8
   12870:	80000000 	or	r0, r0, r0
   12874:	14633803 	cmpu	r3, r3, r7
   12878:	bc430010 	blti	r3, 16		// 12888
   1287c:	be250014 	bneid	r5, 20		// 12890
   12880:	14c64003 	cmpu	r6, r6, r8
   12884:	bca6000c 	bgei	r6, 12		// 12890
   12888:	bc04ff70 	beqi	r4, -144		// 127f8
   1288c:	b800ffbc 	bri	-68		// 12848
   12890:	b60f0008 	rtsd	r15, 8
   12894:	10600000 	addk	r3, r0, r0
   12898:	a8e70004 	xori	r7, r7, 4
   1289c:	bc27ff64 	bnei	r7, -156		// 12800
   128a0:	e8860004 	lwi	r4, r6, 4
   128a4:	e8650004 	lwi	r3, r5, 4
   128a8:	b60f0008 	rtsd	r15, 8
   128ac:	14632000 	rsubk	r3, r3, r4

000128b0 <__lshrdi3>:
   128b0:	10650000 	addk	r3, r5, r0
   128b4:	be070074 	beqid	r7, 116		// 12928
   128b8:	10860000 	addk	r4, r6, r0
   128bc:	30c00020 	addik	r6, r0, 32
   128c0:	14a73000 	rsubk	r5, r7, r6
   128c4:	be65006c 	bleid	r5, 108		// 12930
   128c8:	10c00000 	addk	r6, r0, r0
   128cc:	a645001f 	andi	r18, r5, 31
   128d0:	10c01800 	addk	r6, r0, r3
   128d4:	be120014 	beqid	r18, 20		// 128e8
   128d8:	10c60000 	addk	r6, r6, r0
   128dc:	3252ffff 	addik	r18, r18, -1
   128e0:	be32fffc 	bneid	r18, -4		// 128dc
   128e4:	10c63000 	addk	r6, r6, r6
   128e8:	a647001f 	andi	r18, r7, 31
   128ec:	10a02000 	addk	r5, r0, r4
   128f0:	be120014 	beqid	r18, 20		// 12904
   128f4:	10a50000 	addk	r5, r5, r0
   128f8:	3252ffff 	addik	r18, r18, -1
   128fc:	be32fffc 	bneid	r18, -4		// 128f8
   12900:	90a50041 	srl	r5, r5
   12904:	80862800 	or	r4, r6, r5
   12908:	a647001f 	andi	r18, r7, 31
   1290c:	10c01800 	addk	r6, r0, r3
   12910:	be120014 	beqid	r18, 20		// 12924
   12914:	10c60000 	addk	r6, r6, r0
   12918:	3252ffff 	addik	r18, r18, -1
   1291c:	be32fffc 	bneid	r18, -4		// 12918
   12920:	90c60041 	srl	r6, r6
   12924:	10660000 	addk	r3, r6, r0
   12928:	b60f0008 	rtsd	r15, 8
   1292c:	80000000 	or	r0, r0, r0
   12930:	14a50000 	rsubk	r5, r5, r0
   12934:	a645001f 	andi	r18, r5, 31
   12938:	10801800 	addk	r4, r0, r3
   1293c:	be120014 	beqid	r18, 20		// 12950
   12940:	10840000 	addk	r4, r4, r0
   12944:	3252ffff 	addik	r18, r18, -1
   12948:	be32fffc 	bneid	r18, -4		// 12944
   1294c:	90840041 	srl	r4, r4
   12950:	b60f0008 	rtsd	r15, 8
   12954:	10660000 	addk	r3, r6, r0

00012958 <__ashldi3>:
   12958:	10650000 	addk	r3, r5, r0
   1295c:	be070074 	beqid	r7, 116		// 129d0
   12960:	10860000 	addk	r4, r6, r0
   12964:	30c00020 	addik	r6, r0, 32
   12968:	14a73000 	rsubk	r5, r7, r6
   1296c:	be65006c 	bleid	r5, 108		// 129d8
   12970:	10c00000 	addk	r6, r0, r0
   12974:	a645001f 	andi	r18, r5, 31
   12978:	10c02000 	addk	r6, r0, r4
   1297c:	be120014 	beqid	r18, 20		// 12990
   12980:	10c60000 	addk	r6, r6, r0
   12984:	3252ffff 	addik	r18, r18, -1
   12988:	be32fffc 	bneid	r18, -4		// 12984
   1298c:	90c60041 	srl	r6, r6
   12990:	a647001f 	andi	r18, r7, 31
   12994:	10a01800 	addk	r5, r0, r3
   12998:	be120014 	beqid	r18, 20		// 129ac
   1299c:	10a50000 	addk	r5, r5, r0
   129a0:	3252ffff 	addik	r18, r18, -1
   129a4:	be32fffc 	bneid	r18, -4		// 129a0
   129a8:	10a52800 	addk	r5, r5, r5
   129ac:	80662800 	or	r3, r6, r5
   129b0:	a647001f 	andi	r18, r7, 31
   129b4:	10c02000 	addk	r6, r0, r4
   129b8:	be120014 	beqid	r18, 20		// 129cc
   129bc:	10c60000 	addk	r6, r6, r0
   129c0:	3252ffff 	addik	r18, r18, -1
   129c4:	be32fffc 	bneid	r18, -4		// 129c0
   129c8:	10c63000 	addk	r6, r6, r6
   129cc:	10860000 	addk	r4, r6, r0
   129d0:	b60f0008 	rtsd	r15, 8
   129d4:	80000000 	or	r0, r0, r0
   129d8:	14a50000 	rsubk	r5, r5, r0
   129dc:	a645001f 	andi	r18, r5, 31
   129e0:	10602000 	addk	r3, r0, r4
   129e4:	be120014 	beqid	r18, 20		// 129f8
   129e8:	10630000 	addk	r3, r3, r0
   129ec:	3252ffff 	addik	r18, r18, -1
   129f0:	be32fffc 	bneid	r18, -4		// 129ec
   129f4:	10631800 	addk	r3, r3, r3
   129f8:	b60f0008 	rtsd	r15, 8
   129fc:	10860000 	addk	r4, r6, r0
