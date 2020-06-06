
v850-elf.x:     file format elf32-v850


Disassembly of section .text:

00001400 <_start>:
    1400:	40 1e 01 00 	movhi	1, r0, sp
    1404:	23 1e 10 f1 	movea	-3824, sp, sp
    1408:	40 26 01 00 	movhi	1, r0, gp
    140c:	24 26 00 a4 	movea	-23552, gp, gp
    1410:	80 ff a8 01 	jarl	15b8 <__startmain>, lp
    1414:	0a 38       	mov	r10, r7

00001416 <___r_exit>:
    1416:	01 32       	mov	1, r6
    1418:	ff 07 00 01 	trap	31
    141c:	7f 00       	jmp	[lp]

0000141e <___r_read>:
    141e:	03 32       	mov	3, r6
    1420:	ff 07 00 01 	trap	31
    1424:	7f 00       	jmp	[lp]

00001426 <___r_write>:
    1426:	04 32       	mov	4, r6
    1428:	ff 07 00 01 	trap	31
    142c:	7f 00       	jmp	[lp]

0000142e <___r_open>:
    142e:	05 32       	mov	5, r6
    1430:	ff 07 00 01 	trap	31
    1434:	7f 00       	jmp	[lp]

00001436 <___r_close>:
    1436:	06 32       	mov	6, r6
    1438:	ff 07 00 01 	trap	31
    143c:	7f 00       	jmp	[lp]

0000143e <__save_r28_r31>:
    143e:	03 1e f4 ff 	addi	-12, sp, sp
    1442:	63 ef 01 00 	st.w	r29, 0[sp]
    1446:	63 e7 05 00 	st.w	r28, 4[sp]
    144a:	63 ff 09 00 	st.w	lp, 8[sp]
    144e:	6a 00       	jmp	[r10]

00001450 <__save_r29_r31>:
    1450:	03 1e f8 ff 	addi	-8, sp, sp
    1454:	63 ef 01 00 	st.w	r29, 0[sp]
    1458:	63 ff 05 00 	st.w	lp, 4[sp]
    145c:	6a 00       	jmp	[r10]

0000145e <__save_r31>:
    145e:	03 1e fc ff 	addi	-4, sp, sp
    1462:	63 ff 01 00 	st.w	lp, 0[sp]
    1466:	6a 00       	jmp	[r10]

00001468 <__return_r28_r31>:
    1468:	23 ef 01 00 	ld.w	0[sp], r29
    146c:	23 e7 05 00 	ld.w	4[sp], r28
    1470:	23 ff 09 00 	ld.w	8[sp], lp
    1474:	03 1e 0c 00 	addi	12, sp, sp
    1478:	7f 00       	jmp	[lp]

0000147a <__return_r29_r31>:
    147a:	23 ef 01 00 	ld.w	0[sp], r29
    147e:	23 ff 05 00 	ld.w	4[sp], lp
    1482:	03 1e 08 00 	addi	8, sp, sp
    1486:	7f 00       	jmp	[lp]

00001488 <__return_r31>:
    1488:	23 ff 01 00 	ld.w	0[sp], lp
    148c:	03 1e 04 00 	addi	4, sp, sp
    1490:	7f 00       	jmp	[lp]
	...

00001494 <___exit>:
    1494:	5c 1a       	add	-4, sp
    1496:	63 ff 01 00 	st.w	lp, 0[sp]
    149a:	06 38       	mov	r6, r7
    149c:	00 32       	mov	0, r6
    149e:	bf ff 78 ff 	jarl	1416 <___r_exit>, lp
	...

000014a4 <___read>:
    14a4:	5c 1a       	add	-4, sp
    14a6:	63 ff 01 00 	st.w	lp, 0[sp]
    14aa:	06 58       	mov	r6, r11
    14ac:	07 50       	mov	r7, r10
    14ae:	08 48       	mov	r8, r9
    14b0:	00 32       	mov	0, r6
    14b2:	0b 38       	mov	r11, r7
    14b4:	0a 40       	mov	r10, r8
    14b6:	bf ff 68 ff 	jarl	141e <___r_read>, lp
    14ba:	bf 07 ce ff 	jr	1488 <__return_r31>
	...

000014c0 <___write>:
    14c0:	5c 1a       	add	-4, sp
    14c2:	63 ff 01 00 	st.w	lp, 0[sp]
    14c6:	06 58       	mov	r6, r11
    14c8:	07 50       	mov	r7, r10
    14ca:	08 48       	mov	r8, r9
    14cc:	00 32       	mov	0, r6
    14ce:	0b 38       	mov	r11, r7
    14d0:	0a 40       	mov	r10, r8
    14d2:	bf ff 54 ff 	jarl	1426 <___r_write>, lp
    14d6:	bf 07 b2 ff 	jr	1488 <__return_r31>
	...

000014dc <___open>:
    14dc:	5c 1a       	add	-4, sp
    14de:	63 ff 01 00 	st.w	lp, 0[sp]
    14e2:	06 58       	mov	r6, r11
    14e4:	07 50       	mov	r7, r10
    14e6:	08 48       	mov	r8, r9
    14e8:	00 32       	mov	0, r6
    14ea:	0b 38       	mov	r11, r7
    14ec:	0a 40       	mov	r10, r8
    14ee:	bf ff 40 ff 	jarl	142e <___r_open>, lp
    14f2:	bf 07 96 ff 	jr	1488 <__return_r31>
	...

000014f8 <___close>:
    14f8:	5c 1a       	add	-4, sp
    14fa:	63 ff 01 00 	st.w	lp, 0[sp]
    14fe:	06 38       	mov	r6, r7
    1500:	00 32       	mov	0, r6
    1502:	bf ff 34 ff 	jarl	1436 <___r_close>, lp
    1506:	bf 07 82 ff 	jr	1488 <__return_r31>
	...

0000150c <__exit>:
    150c:	5c 1a       	add	-4, sp
    150e:	63 ff 01 00 	st.w	lp, 0[sp]
    1512:	bf ff 82 ff 	jarl	1494 <___exit>, lp
	...

00001518 <_read>:
    1518:	5c 1a       	add	-4, sp
    151a:	63 ff 01 00 	st.w	lp, 0[sp]
    151e:	bf ff 86 ff 	jarl	14a4 <___read>, lp
    1522:	bf 07 66 ff 	jr	1488 <__return_r31>
	...

00001528 <_write>:
    1528:	5c 1a       	add	-4, sp
    152a:	63 ff 01 00 	st.w	lp, 0[sp]
    152e:	bf ff 92 ff 	jarl	14c0 <___write>, lp
    1532:	bf 07 56 ff 	jr	1488 <__return_r31>
	...

00001538 <_open>:
    1538:	5c 1a       	add	-4, sp
    153a:	63 ff 01 00 	st.w	lp, 0[sp]
    153e:	bf ff 9e ff 	jarl	14dc <___open>, lp
    1542:	bf 07 46 ff 	jr	1488 <__return_r31>
	...

00001548 <_close>:
    1548:	5c 1a       	add	-4, sp
    154a:	63 ff 01 00 	st.w	lp, 0[sp]
    154e:	bf ff aa ff 	jarl	14f8 <___close>, lp
    1552:	bf 07 36 ff 	jr	1488 <__return_r31>
	...

00001558 <_fstat>:
    1558:	5c 1a       	add	-4, sp
    155a:	63 ff 01 00 	st.w	lp, 0[sp]
    155e:	07 30       	mov	r7, r6
    1560:	00 3a       	mov	0, r7
    1562:	20 46 3c 00 	movea	60, r0, r8
    1566:	80 ff a2 00 	jarl	1608 <_memset>, lp
    156a:	00 52       	mov	0, r10
    156c:	bf 07 1c ff 	jr	1488 <__return_r31>

00001570 <_lseek>:
    1570:	07 50       	mov	r7, r10
    1572:	7f 00       	jmp	[lp]

00001574 <_sbrk>:
    1574:	40 5e 01 00 	movhi	1, r0, r11
    1578:	2b 57 01 a4 	ld.w	-23552[r11], r10
    157c:	ca 31       	add	r10, r6
    157e:	6b 37 01 a4 	st.w	r6, -23552[r11]
    1582:	7f 00       	jmp	[lp]

00001584 <_isatty>:
    1584:	01 52       	mov	1, r10
    1586:	7f 00       	jmp	[lp]

00001588 <_main>:
    1588:	54 1a       	add	-12, sp
    158a:	63 ff 09 00 	st.w	lp, 8[sp]
    158e:	40 56 01 00 	movhi	1, r0, r10
    1592:	2a 57 05 a4 	ld.w	-23548[r10], r10
    1596:	63 57 01 00 	st.w	r10, 0[sp]
    159a:	40 56 01 00 	movhi	1, r0, r10
    159e:	2a 56 68 9f 	movea	-24728, r10, r10
    15a2:	63 57 05 00 	st.w	r10, 4[sp]
    15a6:	40 36 01 00 	movhi	1, r0, r6
    15aa:	26 36 3c 9f 	movea	-24772, r6, r6
    15ae:	80 ff 8e 00 	jarl	163c <_printf>, lp
    15b2:	00 32       	mov	0, r6
    15b4:	80 ff 28 00 	jarl	15dc <_exit>, lp

000015b8 <__startmain>:
    15b8:	5c 1a       	add	-4, sp
    15ba:	63 ff 01 00 	st.w	lp, 0[sp]
    15be:	40 56 01 00 	movhi	1, r0, r10
    15c2:	2a 56 c0 ac 	movea	-21312, r10, r10
    15c6:	0a 30       	mov	r10, r6
    15c8:	00 3a       	mov	0, r7
    15ca:	40 46 01 00 	movhi	1, r0, r8
    15ce:	28 46 0c ed 	movea	-4852, r8, r8
    15d2:	aa 41       	sub	r10, r8
    15d4:	80 ff 34 00 	jarl	1608 <_memset>, lp
    15d8:	bf ff b0 ff 	jarl	1588 <_main>, lp

000015dc <_exit>:
    15dc:	58 1a       	add	-8, sp
    15de:	00 3a       	mov	0, r7
    15e0:	63 ef 01 00 	st.w	r29, 0[sp]
    15e4:	63 ff 05 00 	st.w	lp, 4[sp]
    15e8:	06 e8       	mov	r6, r29
    15ea:	80 ff ce 1b 	jarl	31b8 <___call_exitprocs>, lp
    15ee:	24 37 85 fe 	ld.w	-380[gp], r6
    15f2:	26 57 3d 00 	ld.w	60[r6], r10
    15f6:	60 52       	cmp	0, r10
    15f8:	d2 05       	be	1602 <_exit+0x26>
    15fa:	80 ff 04 00 	jarl	15fe <_exit+0x22>, lp
    15fe:	44 fa       	add	4, lp
    1600:	6a 00       	jmp	[r10]
    1602:	1d 30       	mov	r29, r6
    1604:	bf ff 08 ff 	jarl	150c <__exit>, lp

00001608 <_memset>:
    1608:	06 50       	mov	r6, r10
    160a:	60 42       	cmp	0, r8
    160c:	a2 0d       	be	1620 <_memset+0x18>
    160e:	d8 3a       	shl	24, r7
    1610:	b8 3a       	sar	24, r7
    1612:	c6 41       	add	r6, r8
    1614:	06 58       	mov	r6, r11
    1616:	4b 3f 00 00 	st.b	r7, 0[r11]
    161a:	41 5a       	add	1, r11
    161c:	e8 59       	cmp	r8, r11
    161e:	ca fd       	bne	1616 <_memset+0xe>
    1620:	7f 00       	jmp	[lp]
	...

00001624 <__printf_r>:
    1624:	5c 1a       	add	-4, sp
    1626:	63 ff 01 00 	st.w	lp, 0[sp]
    162a:	07 40       	mov	r7, r8
    162c:	04 4a       	mov	4, r9
    162e:	26 3f 09 00 	ld.w	8[r6], r7
    1632:	c3 49       	add	sp, r9
    1634:	80 ff 24 00 	jarl	1658 <__vfprintf_r>, lp
    1638:	bf 07 50 fe 	jr	1488 <__return_r31>

0000163c <_printf>:
    163c:	06 40       	mov	r6, r8
    163e:	24 37 bd 08 	ld.w	2236[gp], r6
    1642:	5c 1a       	add	-4, sp
    1644:	63 ff 01 00 	st.w	lp, 0[sp]
    1648:	04 4a       	mov	4, r9
    164a:	26 3f 09 00 	ld.w	8[r6], r7
    164e:	c3 49       	add	sp, r9
    1650:	80 ff 08 00 	jarl	1658 <__vfprintf_r>, lp
    1654:	bf 07 34 fe 	jr	1488 <__return_r31>

00001658 <__vfprintf_r>:
    1658:	03 1e b4 fa 	addi	-1356, sp, sp
    165c:	63 ff 49 05 	st.w	lp, 1352[sp]
    1660:	63 a7 41 05 	st.w	r20, 1344[sp]
    1664:	63 e7 21 05 	st.w	r28, 1312[sp]
    1668:	63 ef 1d 05 	st.w	r29, 1308[sp]
    166c:	06 a0       	mov	r6, r20
    166e:	07 e8       	mov	r7, r29
    1670:	08 e0       	mov	r8, r28
    1672:	63 4f 2d 00 	st.w	r9, 44[sp]
    1676:	63 17 45 05 	st.w	r2, 1348[sp]
    167a:	63 af 3d 05 	st.w	r21, 1340[sp]
    167e:	63 b7 39 05 	st.w	r22, 1336[sp]
    1682:	63 bf 35 05 	st.w	r23, 1332[sp]
    1686:	63 c7 31 05 	st.w	r24, 1328[sp]
    168a:	63 cf 2d 05 	st.w	r25, 1324[sp]
    168e:	63 d7 29 05 	st.w	r26, 1320[sp]
    1692:	63 df 25 05 	st.w	r27, 1316[sp]
    1696:	80 ff 8e 3c 	jarl	5324 <__localeconv_r>, lp
    169a:	2a 57 01 00 	ld.w	0[r10], r10
    169e:	0a 30       	mov	r10, r6
    16a0:	63 57 3d 00 	st.w	r10, 60[sp]
    16a4:	80 ff bc 53 	jarl	6a60 <_strlen>, lp
    16a8:	63 57 4d 00 	st.w	r10, 76[sp]
    16ac:	63 07 51 00 	st.w	r0, 80[sp]
    16b0:	63 07 55 00 	st.w	r0, 84[sp]
    16b4:	60 a2       	cmp	0, r20
    16b6:	f2 05       	be	16c4 <__vfprintf_r+0x6c>
    16b8:	34 57 39 00 	ld.w	56[r20], r10
    16bc:	60 52       	cmp	0, r10
    16be:	ba 05       	bne	16c4 <__vfprintf_r+0x6c>
    16c0:	80 07 06 05 	jr	1bc6 <__vfprintf_r+0x56e>
    16c4:	3d 57 0c 00 	ld.h	12[r29], r10
    16c8:	40 5e 00 20 	movhi	8192, r0, r11
    16cc:	d0 52       	shl	16, r10
    16ce:	4a 59       	and	r10, r11
    16d0:	b0 52       	sar	16, r10
    16d2:	60 5a       	cmp	0, r11
    16d4:	ca 0d       	bne	16ec <__vfprintf_r+0x94>
    16d6:	3d 5f 65 00 	ld.w	100[r29], r11
    16da:	20 66 ff df 	movea	-8193, r0, r12
    16de:	8a 56 00 20 	ori	8192, r10, r10
    16e2:	4c 59       	and	r12, r11
    16e4:	7d 57 0c 00 	st.h	r10, 12[r29]
    16e8:	7d 5f 65 00 	st.w	r11, 100[r29]
    16ec:	ca 5e 08 00 	andi	8, r10, r11
    16f0:	ba 05       	bne	16f6 <__vfprintf_r+0x9e>
    16f2:	80 07 ae 03 	jr	1aa0 <__vfprintf_r+0x448>
    16f6:	3d 5f 11 00 	ld.w	16[r29], r11
    16fa:	60 5a       	cmp	0, r11
    16fc:	ba 05       	bne	1702 <__vfprintf_r+0xaa>
    16fe:	80 07 a2 03 	jr	1aa0 <__vfprintf_r+0x448>
    1702:	ca 5e 1a 00 	andi	26, r10, r11
    1706:	6a 5a       	cmp	10, r11
    1708:	ba 05       	bne	170e <__vfprintf_r+0xb6>
    170a:	80 07 b6 03 	jr	1ac0 <__vfprintf_r+0x468>
    170e:	03 56 1c 01 	addi	284, sp, r10
    1712:	40 5e 01 00 	movhi	1, r0, r11
    1716:	40 76 01 00 	movhi	1, r0, r14
    171a:	63 07 89 00 	st.w	r0, 136[sp]
    171e:	63 07 85 00 	st.w	r0, 132[sp]
    1722:	63 07 41 00 	st.w	r0, 64[sp]
    1726:	63 07 5d 00 	st.w	r0, 92[sp]
    172a:	63 07 59 00 	st.w	r0, 88[sp]
    172e:	63 07 29 00 	st.w	r0, 40[sp]
    1732:	0a 60       	mov	r10, r12
    1734:	2b d6 ae 9f 	movea	-24658, r11, r26
    1738:	2e c6 be 9f 	movea	-24642, r14, r24
    173c:	1c c8       	mov	r28, r25
    173e:	63 57 81 00 	st.w	r10, 128[sp]
    1742:	19 57 00 00 	ld.b	0[r25], r10
    1746:	d8 52       	shl	24, r10
    1748:	b8 52       	sar	24, r10
    174a:	ba 05       	bne	1750 <__vfprintf_r+0xf8>
    174c:	80 07 b8 09 	jr	2104 <__vfprintf_r+0xaac>
    1750:	20 5e 25 00 	movea	37, r0, r11
    1754:	19 e0       	mov	r25, r28
    1756:	eb 51       	cmp	r11, r10
    1758:	ca 05       	bne	1760 <__vfprintf_r+0x108>
    175a:	c5 25       	br	17a2 <__vfprintf_r+0x14a>
    175c:	eb 51       	cmp	r11, r10
    175e:	f2 05       	be	176c <__vfprintf_r+0x114>
    1760:	41 e2       	add	1, r28
    1762:	1c 57 00 00 	ld.b	0[r28], r10
    1766:	d8 52       	shl	24, r10
    1768:	b8 52       	sar	24, r10
    176a:	9a fd       	bne	175c <__vfprintf_r+0x104>
    176c:	1c d8       	mov	r28, r27
    176e:	b9 d9       	sub	r25, r27
    1770:	92 1d       	be	17a2 <__vfprintf_r+0x14a>
    1772:	23 57 89 00 	ld.w	136[sp], r10
    1776:	23 5f 85 00 	ld.w	132[sp], r11
    177a:	db 51       	add	r27, r10
    177c:	6c cf 01 00 	st.w	r25, 0[r12]
    1780:	6c df 05 00 	st.w	r27, 4[r12]
    1784:	41 5a       	add	1, r11
    1786:	63 57 89 00 	st.w	r10, 136[sp]
    178a:	63 5f 85 00 	st.w	r11, 132[sp]
    178e:	67 5a       	cmp	7, r11
    1790:	b7 05       	ble	1796 <__vfprintf_r+0x13e>
    1792:	80 07 1a 04 	jr	1bac <__vfprintf_r+0x554>
    1796:	48 62       	add	8, r12
    1798:	23 77 29 00 	ld.w	40[sp], r14
    179c:	db 71       	add	r27, r14
    179e:	63 77 29 00 	st.w	r14, 40[sp]
    17a2:	1c 57 00 00 	ld.b	0[r28], r10
    17a6:	d8 52       	shl	24, r10
    17a8:	ba 05       	bne	17ae <__vfprintf_r+0x156>
    17aa:	80 07 a8 03 	jr	1b52 <__vfprintf_r+0x4fa>
    17ae:	1c ce 01 00 	addi	1, r28, r25
    17b2:	1f 12       	mov	-1, r2
    17b4:	63 07 31 00 	st.w	r0, 48[sp]
    17b8:	00 da       	mov	0, r27
    17ba:	20 6e 58 00 	movea	88, r0, r13
    17be:	20 96 2a 00 	movea	42, r0, r18
    17c2:	20 8e 2b 00 	movea	43, r0, r17
    17c6:	20 9e 20 00 	movea	32, r0, r19
    17ca:	43 07 61 00 	st.b	r0, 97[sp]
    17ce:	19 bf 00 00 	ld.b	0[r25], r23
    17d2:	41 ca       	add	1, r25
    17d4:	d8 ba       	shl	24, r23
    17d6:	b8 ba       	sar	24, r23
    17d8:	17 56 e0 ff 	addi	-32, r23, r10
    17dc:	ed 51       	cmp	r13, r10
    17de:	d3 15       	bnh	1808 <__vfprintf_r+0x1b0>
    17e0:	60 ba       	cmp	0, r23
    17e2:	ba 05       	bne	17e8 <__vfprintf_r+0x190>
    17e4:	80 07 6e 03 	jr	1b52 <__vfprintf_r+0x4fa>
    17e8:	01 72       	mov	1, r14
    17ea:	0e b0       	mov	r14, r22
    17ec:	03 e6 8c 00 	addi	140, sp, r28
    17f0:	63 77 21 00 	st.w	r14, 32[sp]
    17f4:	43 bf 8c 00 	st.b	r23, 140[sp]
    17f8:	43 07 61 00 	st.b	r0, 97[sp]
    17fc:	63 07 39 00 	st.w	r0, 56[sp]
    1800:	63 07 45 00 	st.w	r0, 68[sp]
    1804:	80 07 ce 01 	jr	19d2 <__vfprintf_r+0x37a>
    1808:	40 5e 00 00 	movhi	0, r0, r11
    180c:	2b 5e 20 18 	movea	6176, r11, r11
    1810:	c1 52       	shl	1, r10
    1812:	cb 51       	add	r11, r10
    1814:	2a 57 00 00 	ld.h	0[r10], r10
    1818:	d0 52       	shl	16, r10
    181a:	b0 52       	sar	16, r10
    181c:	cb 51       	add	r11, r10
    181e:	6a 00       	jmp	[r10]
    1820:	64 06 c0 ff 	.long	0xffc00664
    1824:	c0 ff 0e 06 	tst1	7, 1550[r0]
    1828:	c0 ff c0 ff 	tst1	7, -64[r0]
    182c:	c0 ff c0 ff 	tst1	7, -64[r0]
    1830:	c0 ff c0 ff 	tst1	7, -64[r0]
    1834:	16 06 fe 05 	addi	1534, r22, r0
    1838:	c0 ff 78 02 	tst1	7, 632[r0]
    183c:	78 06 c0 ff 	.long	0xffc00678
    1840:	06 06 38 06 	addi	1592, r6, r0
    1844:	38 06 38 06 	.long	0x06380638
    1848:	38 06 38 06 	.long	0x06380638
    184c:	38 06 38 06 	.long	0x06380638
    1850:	38 06 38 06 	.long	0x06380638
    1854:	c0 ff c0 ff 	tst1	7, -64[r0]
    1858:	c0 ff c0 ff 	tst1	7, -64[r0]
    185c:	c0 ff c0 ff 	tst1	7, -64[r0]
    1860:	c0 ff c0 ff 	tst1	7, -64[r0]
    1864:	c0 ff c0 ff 	tst1	7, -64[r0]
    1868:	ba 00       	.short	0x00ba
    186a:	04 05       	sld.w	8[ep], r0
    186c:	c0 ff 04 05 	tst1	7, 1284[r0]
    1870:	c0 ff c0 ff 	tst1	7, -64[r0]
    1874:	c0 ff c0 ff 	tst1	7, -64[r0]
    1878:	9a 05       	bne	187a <__vfprintf_r+0x222>
    187a:	c0 ff c0 ff 	tst1	7, -64[r0]
    187e:	f0 00       	.short	0x00f0
    1880:	c0 ff c0 ff 	tst1	7, -64[r0]
    1884:	c0 ff c0 ff 	tst1	7, -64[r0]
    1888:	c0 ff 1e 01 	tst1	7, 286[r0]
    188c:	c0 ff c0 ff 	tst1	7, -64[r0]
    1890:	a2 05       	be	1894 <__vfprintf_r+0x23c>
    1892:	c0 ff c0 ff 	tst1	7, -64[r0]
    1896:	c0 ff c0 ff 	tst1	7, -64[r0]
    189a:	c0 ff c0 ff 	tst1	7, -64[r0]
    189e:	c0 ff c0 ff 	tst1	7, -64[r0]
    18a2:	c0 ff c0 ff 	tst1	7, -64[r0]
    18a6:	d8 05       	bnv	18b0 <__vfprintf_r+0x258>
    18a8:	be 00       	.short	0x00be
    18aa:	04 05       	sld.w	8[ep], r0
    18ac:	04 05       	sld.w	8[ep], r0
    18ae:	04 05       	sld.w	8[ep], r0
    18b0:	fc 04       	sst.h	r0, 248[ep]
    18b2:	be 00       	.short	0x00be
    18b4:	c0 ff c0 ff 	tst1	7, -64[r0]
    18b8:	b2 00       	.short	0x00b2
    18ba:	c0 ff d8 04 	tst1	7, 1240[r0]
    18be:	f4 00       	.short	0x00f4
    18c0:	54 04       	sld.h	168[ep], r0
    18c2:	b2 00       	.short	0x00b2
    18c4:	c0 ff ea 03 	tst1	7, 1002[r0]
    18c8:	c0 ff 22 01 	tst1	7, 290[r0]
    18cc:	c0 ff c0 ff 	tst1	7, -64[r0]
    18d0:	8c 04       	sst.h	r0, 24[ep]
    18d2:	9b de 10 00 	ori	16, r27, r27
    18d6:	bf 07 f8 fe 	jr	17ce <__vfprintf_r+0x176>
    18da:	9b de 10 00 	ori	16, r27, r27
    18de:	db 56 10 00 	andi	16, r27, r10
    18e2:	b2 05       	be	18e8 <__vfprintf_r+0x290>
    18e4:	80 07 14 03 	jr	1bf8 <__vfprintf_r+0x5a0>
    18e8:	db 56 40 00 	andi	64, r27, r10
    18ec:	ba 05       	bne	18f2 <__vfprintf_r+0x29a>
    18ee:	80 07 4e 11 	jr	2a3c <__vfprintf_r+0x13e4>
    18f2:	23 5f 2d 00 	ld.w	44[sp], r11
    18f6:	2b b7 01 00 	ld.w	0[r11], r22
    18fa:	44 5a       	add	4, r11
    18fc:	d0 b2       	shl	16, r22
    18fe:	b0 b2       	sar	16, r22
    1900:	63 5f 2d 00 	st.w	r11, 44[sp]
    1904:	60 b2       	cmp	0, r22
    1906:	be 05       	bge	190c <__vfprintf_r+0x2b4>
    1908:	80 07 24 0f 	jr	282c <__vfprintf_r+0x11d4>
    190c:	01 52       	mov	1, r10
    190e:	85 35       	br	196e <__vfprintf_r+0x316>
    1910:	9b de 10 00 	ori	16, r27, r27
    1914:	db 56 10 00 	andi	16, r27, r10
    1918:	b2 05       	be	191e <__vfprintf_r+0x2c6>
    191a:	80 07 ca 02 	jr	1be4 <__vfprintf_r+0x58c>
    191e:	db 56 40 00 	andi	64, r27, r10
    1922:	ba 05       	bne	1928 <__vfprintf_r+0x2d0>
    1924:	80 07 cc 10 	jr	29f0 <__vfprintf_r+0x1398>
    1928:	23 5f 2d 00 	ld.w	44[sp], r11
    192c:	00 52       	mov	0, r10
    192e:	2b b7 01 00 	ld.w	0[r11], r22
    1932:	44 5a       	add	4, r11
    1934:	d6 b6 ff ff 	andi	65535, r22, r22
    1938:	63 5f 2d 00 	st.w	r11, 44[sp]
    193c:	f5 15       	br	196a <__vfprintf_r+0x312>
    193e:	9b de 10 00 	ori	16, r27, r27
    1942:	db 56 10 00 	andi	16, r27, r10
    1946:	b2 05       	be	194c <__vfprintf_r+0x2f4>
    1948:	80 07 88 02 	jr	1bd0 <__vfprintf_r+0x578>
    194c:	db 56 40 00 	andi	64, r27, r10
    1950:	ba 05       	bne	1956 <__vfprintf_r+0x2fe>
    1952:	80 07 b2 10 	jr	2a04 <__vfprintf_r+0x13ac>
    1956:	23 77 2d 00 	ld.w	44[sp], r14
    195a:	01 52       	mov	1, r10
    195c:	2e b7 01 00 	ld.w	0[r14], r22
    1960:	44 72       	add	4, r14
    1962:	d6 b6 ff ff 	andi	65535, r22, r22
    1966:	63 77 2d 00 	st.w	r14, 44[sp]
    196a:	43 07 61 00 	st.b	r0, 97[sp]
    196e:	60 12       	cmp	0, r2
    1970:	c6 05       	blt	1978 <__vfprintf_r+0x320>
    1972:	20 6e 7f ff 	movea	-129, r0, r13
    1976:	4d d9       	and	r13, r27
    1978:	60 b2       	cmp	0, r22
    197a:	b2 05       	be	1980 <__vfprintf_r+0x328>
    197c:	80 07 8e 07 	jr	210a <__vfprintf_r+0xab2>
    1980:	60 12       	cmp	0, r2
    1982:	b2 05       	be	1988 <__vfprintf_r+0x330>
    1984:	80 07 86 07 	jr	210a <__vfprintf_r+0xab2>
    1988:	60 52       	cmp	0, r10
    198a:	b2 05       	be	1990 <__vfprintf_r+0x338>
    198c:	80 07 fe 0a 	jr	248a <__vfprintf_r+0xe32>
    1990:	db 56 01 00 	andi	1, r27, r10
    1994:	ba 05       	bne	199a <__vfprintf_r+0x342>
    1996:	80 07 f4 0a 	jr	248a <__vfprintf_r+0xe32>
    199a:	20 56 30 00 	movea	48, r0, r10
    199e:	01 b2       	mov	1, r22
    19a0:	03 e6 b3 00 	addi	179, sp, r28
    19a4:	43 57 b3 00 	st.b	r10, 179[sp]
    19a8:	63 b7 21 00 	st.w	r22, 32[sp]
    19ac:	e2 b1       	cmp	r2, r22
    19ae:	be 05       	bge	19b4 <__vfprintf_r+0x35c>
    19b0:	63 17 21 00 	st.w	r2, 32[sp]
    19b4:	03 57 61 00 	ld.b	97[sp], r10
    19b8:	63 07 45 00 	st.w	r0, 68[sp]
    19bc:	d8 52       	shl	24, r10
    19be:	b8 52       	sar	24, r10
    19c0:	63 17 39 00 	st.w	r2, 56[sp]
    19c4:	60 52       	cmp	0, r10
    19c6:	e2 05       	be	19d2 <__vfprintf_r+0x37a>
    19c8:	23 5f 21 00 	ld.w	32[sp], r11
    19cc:	41 5a       	add	1, r11
    19ce:	63 5f 21 00 	st.w	r11, 32[sp]
    19d2:	db 6e 02 00 	andi	2, r27, r13
    19d6:	63 6f 25 00 	st.w	r13, 36[sp]
    19da:	e2 05       	be	19e6 <__vfprintf_r+0x38e>
    19dc:	23 77 21 00 	ld.w	32[sp], r14
    19e0:	42 72       	add	2, r14
    19e2:	63 77 21 00 	st.w	r14, 32[sp]
    19e6:	db 5e 84 00 	andi	132, r27, r11
    19ea:	63 5f 35 00 	st.w	r11, 52[sp]
    19ee:	b2 05       	be	19f4 <__vfprintf_r+0x39c>
    19f0:	80 07 10 05 	jr	1f00 <__vfprintf_r+0x8a8>
    19f4:	23 af 31 00 	ld.w	48[sp], r21
    19f8:	23 6f 21 00 	ld.w	32[sp], r13
    19fc:	ad a9       	sub	r13, r21
    19fe:	60 aa       	cmp	0, r21
    1a00:	bf 05       	bgt	1a06 <__vfprintf_r+0x3ae>
    1a02:	80 07 fe 04 	jr	1f00 <__vfprintf_r+0x8a8>
    1a06:	20 8e 10 00 	movea	16, r0, r17
    1a0a:	63 d7 49 00 	st.w	r26, 72[sp]
    1a0e:	23 6f 89 00 	ld.w	136[sp], r13
    1a12:	23 5f 85 00 	ld.w	132[sp], r11
    1a16:	11 10       	mov	r17, r2
    1a18:	f1 a9       	cmp	r17, r21
    1a1a:	ef 05       	bgt	1a26 <__vfprintf_r+0x3ce>
    1a1c:	e5 25       	br	1a68 <__vfprintf_r+0x410>
    1a1e:	50 aa       	add	-16, r21
    1a20:	48 62       	add	8, r12
    1a22:	e2 a9       	cmp	r2, r21
    1a24:	a7 25       	ble	1a68 <__vfprintf_r+0x410>
    1a26:	6c d7 01 00 	st.w	r26, 0[r12]
    1a2a:	6c 17 05 00 	st.w	r2, 4[r12]
    1a2e:	0d 6e 10 00 	addi	16, r13, r13
    1a32:	41 5a       	add	1, r11
    1a34:	63 6f 89 00 	st.w	r13, 136[sp]
    1a38:	63 5f 85 00 	st.w	r11, 132[sp]
    1a3c:	67 5a       	cmp	7, r11
    1a3e:	87 f5       	ble	1a1e <__vfprintf_r+0x3c6>
    1a40:	20 46 80 00 	movea	128, r0, r8
    1a44:	14 30       	mov	r20, r6
    1a46:	1d 38       	mov	r29, r7
    1a48:	c3 41       	add	sp, r8
    1a4a:	80 ff 46 50 	jarl	6a90 <___sprint_r>, lp
    1a4e:	60 52       	cmp	0, r10
    1a50:	b2 05       	be	1a56 <__vfprintf_r+0x3fe>
    1a52:	80 07 14 01 	jr	1b66 <__vfprintf_r+0x50e>
    1a56:	50 aa       	add	-16, r21
    1a58:	23 6f 89 00 	ld.w	136[sp], r13
    1a5c:	23 5f 85 00 	ld.w	132[sp], r11
    1a60:	03 66 1c 01 	addi	284, sp, r12
    1a64:	e2 a9       	cmp	r2, r21
    1a66:	8f e5       	bgt	1a26 <__vfprintf_r+0x3ce>
    1a68:	23 77 49 00 	ld.w	72[sp], r14
    1a6c:	6c af 05 00 	st.w	r21, 4[r12]
    1a70:	6c 77 01 00 	st.w	r14, 0[r12]
    1a74:	d5 69       	add	r21, r13
    1a76:	41 5a       	add	1, r11
    1a78:	63 6f 89 00 	st.w	r13, 136[sp]
    1a7c:	63 5f 85 00 	st.w	r11, 132[sp]
    1a80:	67 5a       	cmp	7, r11
    1a82:	b7 05       	ble	1a88 <__vfprintf_r+0x430>
    1a84:	80 07 ea 0a 	jr	256e <__vfprintf_r+0xf16>
    1a88:	48 62       	add	8, r12
    1a8a:	80 07 7a 04 	jr	1f04 <__vfprintf_r+0x8ac>
    1a8e:	80 59       	subr	r0, r11
    1a90:	63 5f 31 00 	st.w	r11, 48[sp]
    1a94:	63 57 2d 00 	st.w	r10, 44[sp]
    1a98:	9b de 04 00 	ori	4, r27, r27
    1a9c:	bf 07 32 fd 	jr	17ce <__vfprintf_r+0x176>
    1aa0:	14 30       	mov	r20, r6
    1aa2:	1d 38       	mov	r29, r7
    1aa4:	80 ff f4 15 	jarl	3098 <___swsetup_r>, lp
    1aa8:	60 52       	cmp	0, r10
    1aaa:	9a 65       	bne	1b6c <__vfprintf_r+0x514>
    1aac:	3d 57 0c 00 	ld.h	12[r29], r10
    1ab0:	d0 52       	shl	16, r10
    1ab2:	b0 52       	sar	16, r10
    1ab4:	ca 5e 1a 00 	andi	26, r10, r11
    1ab8:	6a 5a       	cmp	10, r11
    1aba:	b2 05       	be	1ac0 <__vfprintf_r+0x468>
    1abc:	bf 07 52 fc 	jr	170e <__vfprintf_r+0xb6>
    1ac0:	3d 5f 0e 00 	ld.h	14[r29], r11
    1ac4:	d0 5a       	shl	16, r11
    1ac6:	b0 5a       	sar	16, r11
    1ac8:	60 5a       	cmp	0, r11
    1aca:	be 05       	bge	1ad0 <__vfprintf_r+0x478>
    1acc:	bf 07 42 fc 	jr	170e <__vfprintf_r+0xb6>
    1ad0:	3d 87 65 00 	ld.w	100[r29], r16
    1ad4:	3d 7f 1d 00 	ld.w	28[r29], r15
    1ad8:	3d 77 25 00 	ld.w	36[r29], r14
    1adc:	1d 62       	mov	-3, r12
    1ade:	20 3e b4 00 	movea	180, r0, r7
    1ae2:	23 4f 2d 00 	ld.w	44[sp], r9
    1ae6:	4c 51       	and	r12, r10
    1ae8:	03 6e 1c 01 	addi	284, sp, r13
    1aec:	20 66 00 04 	movea	1024, r0, r12
    1af0:	14 30       	mov	r20, r6
    1af2:	c3 39       	add	sp, r7
    1af4:	1c 40       	mov	r28, r8
    1af6:	63 57 c0 00 	st.h	r10, 192[sp]
    1afa:	63 87 19 01 	st.w	r16, 280[sp]
    1afe:	63 5f c2 00 	st.h	r11, 194[sp]
    1b02:	63 7f d1 00 	st.w	r15, 208[sp]
    1b06:	63 77 d9 00 	st.w	r14, 216[sp]
    1b0a:	63 6f b5 00 	st.w	r13, 180[sp]
    1b0e:	63 6f c5 00 	st.w	r13, 196[sp]
    1b12:	63 67 bd 00 	st.w	r12, 188[sp]
    1b16:	63 67 c9 00 	st.w	r12, 200[sp]
    1b1a:	63 07 cd 00 	st.w	r0, 204[sp]
    1b1e:	bf ff 3a fb 	jarl	1658 <__vfprintf_r>, lp
    1b22:	63 57 29 00 	st.w	r10, 40[sp]
    1b26:	60 52       	cmp	0, r10
    1b28:	b6 0d       	blt	1b3e <__vfprintf_r+0x4e6>
    1b2a:	20 3e b4 00 	movea	180, r0, r7
    1b2e:	14 30       	mov	r20, r6
    1b30:	c3 39       	add	sp, r7
    1b32:	80 ff 16 30 	jarl	4b48 <__fflush_r>, lp
    1b36:	60 52       	cmp	0, r10
    1b38:	b2 05       	be	1b3e <__vfprintf_r+0x4e6>
    1b3a:	80 07 12 15 	jr	304c <__vfprintf_r+0x19f4>
    1b3e:	c3 f7 c0 00 	tst1	6, 192[sp]
    1b42:	82 1d       	be	1b72 <__vfprintf_r+0x51a>
    1b44:	3d 57 0c 00 	ld.h	12[r29], r10
    1b48:	8a 56 40 00 	ori	64, r10, r10
    1b4c:	7d 57 0c 00 	st.h	r10, 12[r29]
    1b50:	95 15       	br	1b72 <__vfprintf_r+0x51a>
    1b52:	23 57 89 00 	ld.w	136[sp], r10
    1b56:	60 52       	cmp	0, r10
    1b58:	f2 05       	be	1b66 <__vfprintf_r+0x50e>
    1b5a:	14 30       	mov	r20, r6
    1b5c:	1d 38       	mov	r29, r7
    1b5e:	03 46 80 00 	addi	128, sp, r8
    1b62:	80 ff 2e 4f 	jarl	6a90 <___sprint_r>, lp
    1b66:	dd f7 0c 00 	tst1	6, 12[r29]
    1b6a:	c2 05       	be	1b72 <__vfprintf_r+0x51a>
    1b6c:	1f 6a       	mov	-1, r13
    1b6e:	63 6f 29 00 	st.w	r13, 40[sp]
    1b72:	23 ff 49 05 	ld.w	1352[sp], lp
    1b76:	23 57 29 00 	ld.w	40[sp], r10
    1b7a:	23 17 45 05 	ld.w	1348[sp], r2
    1b7e:	23 a7 41 05 	ld.w	1344[sp], r20
    1b82:	23 af 3d 05 	ld.w	1340[sp], r21
    1b86:	23 b7 39 05 	ld.w	1336[sp], r22
    1b8a:	23 bf 35 05 	ld.w	1332[sp], r23
    1b8e:	23 c7 31 05 	ld.w	1328[sp], r24
    1b92:	23 cf 2d 05 	ld.w	1324[sp], r25
    1b96:	23 d7 29 05 	ld.w	1320[sp], r26
    1b9a:	23 df 25 05 	ld.w	1316[sp], r27
    1b9e:	23 e7 21 05 	ld.w	1312[sp], r28
    1ba2:	23 ef 1d 05 	ld.w	1308[sp], r29
    1ba6:	03 1e 4c 05 	addi	1356, sp, sp
    1baa:	7f 00       	jmp	[lp]
    1bac:	20 46 80 00 	movea	128, r0, r8
    1bb0:	14 30       	mov	r20, r6
    1bb2:	1d 38       	mov	r29, r7
    1bb4:	c3 41       	add	sp, r8
    1bb6:	80 ff da 4e 	jarl	6a90 <___sprint_r>, lp
    1bba:	60 52       	cmp	0, r10
    1bbc:	da d5       	bne	1b66 <__vfprintf_r+0x50e>
    1bbe:	03 66 1c 01 	addi	284, sp, r12
    1bc2:	bf 07 d6 fb 	jr	1798 <__vfprintf_r+0x140>
    1bc6:	14 30       	mov	r20, r6
    1bc8:	80 ff e8 30 	jarl	4cb0 <___sinit>, lp
    1bcc:	bf 07 f8 fa 	jr	16c4 <__vfprintf_r+0x6c>
    1bd0:	23 6f 2d 00 	ld.w	44[sp], r13
    1bd4:	01 52       	mov	1, r10
    1bd6:	2d b7 01 00 	ld.w	0[r13], r22
    1bda:	44 6a       	add	4, r13
    1bdc:	63 6f 2d 00 	st.w	r13, 44[sp]
    1be0:	bf 07 8a fd 	jr	196a <__vfprintf_r+0x312>
    1be4:	23 77 2d 00 	ld.w	44[sp], r14
    1be8:	00 52       	mov	0, r10
    1bea:	2e b7 01 00 	ld.w	0[r14], r22
    1bee:	44 72       	add	4, r14
    1bf0:	63 77 2d 00 	st.w	r14, 44[sp]
    1bf4:	bf 07 76 fd 	jr	196a <__vfprintf_r+0x312>
    1bf8:	23 77 2d 00 	ld.w	44[sp], r14
    1bfc:	2e b7 01 00 	ld.w	0[r14], r22
    1c00:	44 72       	add	4, r14
    1c02:	63 77 2d 00 	st.w	r14, 44[sp]
    1c06:	bf 07 fe fc 	jr	1904 <__vfprintf_r+0x2ac>
    1c0a:	23 5f 2d 00 	ld.w	44[sp], r11
    1c0e:	43 07 61 00 	st.b	r0, 97[sp]
    1c12:	2b e7 01 00 	ld.w	0[r11], r28
    1c16:	0b a8       	mov	r11, r21
    1c18:	44 aa       	add	4, r21
    1c1a:	60 e2       	cmp	0, r28
    1c1c:	ba 05       	bne	1c22 <__vfprintf_r+0x5ca>
    1c1e:	80 07 c2 10 	jr	2ce0 <__vfprintf_r+0x1688>
    1c22:	1c 30       	mov	r28, r6
    1c24:	60 12       	cmp	0, r2
    1c26:	be 05       	bge	1c2c <__vfprintf_r+0x5d4>
    1c28:	80 07 f4 0f 	jr	2c1c <__vfprintf_r+0x15c4>
    1c2c:	00 3a       	mov	0, r7
    1c2e:	02 40       	mov	r2, r8
    1c30:	63 67 15 00 	st.w	r12, 20[sp]
    1c34:	80 ff 98 3f 	jarl	5bcc <_memchr>, lp
    1c38:	23 67 15 00 	ld.w	20[sp], r12
    1c3c:	60 52       	cmp	0, r10
    1c3e:	ba 05       	bne	1c44 <__vfprintf_r+0x5ec>
    1c40:	80 07 a2 02 	jr	1ee2 <__vfprintf_r+0x88a>
    1c44:	0a b0       	mov	r10, r22
    1c46:	bc b1       	sub	r28, r22
    1c48:	e2 b1       	cmp	r2, r22
    1c4a:	b7 05       	ble	1c50 <__vfprintf_r+0x5f8>
    1c4c:	80 07 96 02 	jr	1ee2 <__vfprintf_r+0x88a>
    1c50:	63 b7 21 00 	st.w	r22, 32[sp]
    1c54:	60 b2       	cmp	0, r22
    1c56:	be 05       	bge	1c5c <__vfprintf_r+0x604>
    1c58:	80 07 de 0f 	jr	2c36 <__vfprintf_r+0x15de>
    1c5c:	03 57 61 00 	ld.b	97[sp], r10
    1c60:	63 af 2d 00 	st.w	r21, 44[sp]
    1c64:	d8 52       	shl	24, r10
    1c66:	b8 52       	sar	24, r10
    1c68:	63 07 39 00 	st.w	r0, 56[sp]
    1c6c:	63 07 45 00 	st.w	r0, 68[sp]
    1c70:	bf 07 54 fd 	jr	19c4 <__vfprintf_r+0x36c>
    1c74:	23 77 2d 00 	ld.w	44[sp], r14
    1c78:	20 56 30 00 	movea	48, r0, r10
    1c7c:	2e b7 01 00 	ld.w	0[r14], r22
    1c80:	43 57 62 00 	st.b	r10, 98[sp]
    1c84:	20 56 78 00 	movea	120, r0, r10
    1c88:	43 57 63 00 	st.b	r10, 99[sp]
    1c8c:	40 56 01 00 	movhi	1, r0, r10
    1c90:	2a 56 94 9f 	movea	-24684, r10, r10
    1c94:	44 72       	add	4, r14
    1c96:	63 57 5d 00 	st.w	r10, 92[sp]
    1c9a:	9b de 02 00 	ori	2, r27, r27
    1c9e:	63 77 2d 00 	st.w	r14, 44[sp]
    1ca2:	02 52       	mov	2, r10
    1ca4:	20 be 78 00 	movea	120, r0, r23
    1ca8:	bf 07 c2 fc 	jr	196a <__vfprintf_r+0x312>
    1cac:	40 56 01 00 	movhi	1, r0, r10
    1cb0:	2a 56 94 9f 	movea	-24684, r10, r10
    1cb4:	63 57 5d 00 	st.w	r10, 92[sp]
    1cb8:	db 56 10 00 	andi	16, r27, r10
    1cbc:	ba 05       	bne	1cc2 <__vfprintf_r+0x66a>
    1cbe:	80 07 1a 01 	jr	1dd8 <__vfprintf_r+0x780>
    1cc2:	23 6f 2d 00 	ld.w	44[sp], r13
    1cc6:	2d b7 01 00 	ld.w	0[r13], r22
    1cca:	44 6a       	add	4, r13
    1ccc:	63 6f 2d 00 	st.w	r13, 44[sp]
    1cd0:	db 56 01 00 	andi	1, r27, r10
    1cd4:	ba 05       	bne	1cda <__vfprintf_r+0x682>
    1cd6:	80 07 d8 07 	jr	24ae <__vfprintf_r+0xe56>
    1cda:	60 b2       	cmp	0, r22
    1cdc:	ba 05       	bne	1ce2 <__vfprintf_r+0x68a>
    1cde:	80 07 d0 07 	jr	24ae <__vfprintf_r+0xe56>
    1ce2:	20 56 30 00 	movea	48, r0, r10
    1ce6:	43 57 62 00 	st.b	r10, 98[sp]
    1cea:	43 bf 63 00 	st.b	r23, 99[sp]
    1cee:	9b de 02 00 	ori	2, r27, r27
    1cf2:	02 52       	mov	2, r10
    1cf4:	bf 07 76 fc 	jr	196a <__vfprintf_r+0x312>
    1cf8:	db 56 10 00 	andi	16, r27, r10
    1cfc:	ba 05       	bne	1d02 <__vfprintf_r+0x6aa>
    1cfe:	80 07 1a 0d 	jr	2a18 <__vfprintf_r+0x13c0>
    1d02:	23 77 2d 00 	ld.w	44[sp], r14
    1d06:	23 5f 29 00 	ld.w	40[sp], r11
    1d0a:	2e 57 01 00 	ld.w	0[r14], r10
    1d0e:	44 72       	add	4, r14
    1d10:	63 77 2d 00 	st.w	r14, 44[sp]
    1d14:	6a 5f 01 00 	st.w	r11, 0[r10]
    1d18:	bf 07 2a fa 	jr	1742 <__vfprintf_r+0xea>
    1d1c:	9b de 40 00 	ori	64, r27, r27
    1d20:	bf 07 ae fa 	jr	17ce <__vfprintf_r+0x176>
    1d24:	db 56 08 00 	andi	8, r27, r10
    1d28:	ba 05       	bne	1d2e <__vfprintf_r+0x6d6>
    1d2a:	80 07 a8 0c 	jr	29d2 <__vfprintf_r+0x137a>
    1d2e:	23 77 2d 00 	ld.w	44[sp], r14
    1d32:	2e af 01 00 	ld.w	0[r14], r21
    1d36:	2e b7 05 00 	ld.w	4[r14], r22
    1d3a:	48 72       	add	8, r14
    1d3c:	63 af 51 00 	st.w	r21, 80[sp]
    1d40:	63 b7 55 00 	st.w	r22, 84[sp]
    1d44:	63 77 2d 00 	st.w	r14, 44[sp]
    1d48:	40 e6 00 00 	movhi	0, r0, r28
    1d4c:	15 30       	mov	r21, r6
    1d4e:	16 38       	mov	r22, r7
    1d50:	3c e6 58 68 	movea	26712, r28, r28
    1d54:	63 67 15 00 	st.w	r12, 20[sp]
    1d58:	80 ff 04 00 	jarl	1d5c <__vfprintf_r+0x704>, lp
    1d5c:	44 fa       	add	4, lp
    1d5e:	7c 00       	jmp	[r28]
    1d60:	23 67 15 00 	ld.w	20[sp], r12
    1d64:	15 30       	mov	r21, r6
    1d66:	16 38       	mov	r22, r7
    1d68:	61 52       	cmp	1, r10
    1d6a:	b2 05       	be	1d70 <__vfprintf_r+0x718>
    1d6c:	80 07 d0 0a 	jr	283c <__vfprintf_r+0x11e4>
    1d70:	00 42       	mov	0, r8
    1d72:	00 4a       	mov	0, r9
    1d74:	80 ff 68 7a 	jarl	97dc <___ltdf2>, lp
    1d78:	23 67 15 00 	ld.w	20[sp], r12
    1d7c:	60 52       	cmp	0, r10
    1d7e:	be 05       	bge	1d84 <__vfprintf_r+0x72c>
    1d80:	80 07 ca 0f 	jr	2d4a <__vfprintf_r+0x16f2>
    1d84:	03 57 61 00 	ld.b	97[sp], r10
    1d88:	d8 52       	shl	24, r10
    1d8a:	b8 52       	sar	24, r10
    1d8c:	20 5e 47 00 	movea	71, r0, r11
    1d90:	eb b9       	cmp	r11, r23
    1d92:	bf 05       	bgt	1d98 <__vfprintf_r+0x740>
    1d94:	80 07 34 0e 	jr	2bc8 <__vfprintf_r+0x1570>
    1d98:	40 e6 01 00 	movhi	1, r0, r28
    1d9c:	3c e6 77 9f 	movea	-24713, r28, r28
    1da0:	03 6a       	mov	3, r13
    1da2:	20 76 7f ff 	movea	-129, r0, r14
    1da6:	63 6f 21 00 	st.w	r13, 32[sp]
    1daa:	4e d9       	and	r14, r27
    1dac:	0d b0       	mov	r13, r22
    1dae:	63 07 39 00 	st.w	r0, 56[sp]
    1db2:	63 07 45 00 	st.w	r0, 68[sp]
    1db6:	bf 07 0e fc 	jr	19c4 <__vfprintf_r+0x36c>
    1dba:	9b de 08 00 	ori	8, r27, r27
    1dbe:	bf 07 10 fa 	jr	17ce <__vfprintf_r+0x176>
    1dc2:	40 56 01 00 	movhi	1, r0, r10
    1dc6:	2a 56 83 9f 	movea	-24701, r10, r10
    1dca:	63 57 5d 00 	st.w	r10, 92[sp]
    1dce:	db 56 10 00 	andi	16, r27, r10
    1dd2:	b2 05       	be	1dd8 <__vfprintf_r+0x780>
    1dd4:	bf 07 ee fe 	jr	1cc2 <__vfprintf_r+0x66a>
    1dd8:	db 56 40 00 	andi	64, r27, r10
    1ddc:	ba 05       	bne	1de2 <__vfprintf_r+0x78a>
    1dde:	80 07 70 0c 	jr	2a4e <__vfprintf_r+0x13f6>
    1de2:	23 77 2d 00 	ld.w	44[sp], r14
    1de6:	2e b7 01 00 	ld.w	0[r14], r22
    1dea:	44 72       	add	4, r14
    1dec:	63 77 2d 00 	st.w	r14, 44[sp]
    1df0:	d6 b6 ff ff 	andi	65535, r22, r22
    1df4:	bf 07 dc fe 	jr	1cd0 <__vfprintf_r+0x678>
    1df8:	23 5f 2d 00 	ld.w	44[sp], r11
    1dfc:	01 6a       	mov	1, r13
    1dfe:	2b 57 01 00 	ld.w	0[r11], r10
    1e02:	44 5a       	add	4, r11
    1e04:	63 6f 21 00 	st.w	r13, 32[sp]
    1e08:	43 57 8c 00 	st.b	r10, 140[sp]
    1e0c:	43 07 61 00 	st.b	r0, 97[sp]
    1e10:	63 5f 2d 00 	st.w	r11, 44[sp]
    1e14:	0d b0       	mov	r13, r22
    1e16:	03 e6 8c 00 	addi	140, sp, r28
    1e1a:	bf 07 e2 f9 	jr	17fc <__vfprintf_r+0x1a4>
    1e1e:	43 8f 61 00 	st.b	r17, 97[sp]
    1e22:	bf 07 ac f9 	jr	17ce <__vfprintf_r+0x176>
    1e26:	9b de 80 00 	ori	128, r27, r27
    1e2a:	bf 07 a4 f9 	jr	17ce <__vfprintf_r+0x176>
    1e2e:	9b de 01 00 	ori	1, r27, r27
    1e32:	bf 07 9c f9 	jr	17ce <__vfprintf_r+0x176>
    1e36:	23 5f 2d 00 	ld.w	44[sp], r11
    1e3a:	23 57 2d 00 	ld.w	44[sp], r10
    1e3e:	2b 5f 01 00 	ld.w	0[r11], r11
    1e42:	44 52       	add	4, r10
    1e44:	63 5f 31 00 	st.w	r11, 48[sp]
    1e48:	60 5a       	cmp	0, r11
    1e4a:	be 05       	bge	1e50 <__vfprintf_r+0x7f8>
    1e4c:	bf 07 42 fc 	jr	1a8e <__vfprintf_r+0x436>
    1e50:	63 57 2d 00 	st.w	r10, 44[sp]
    1e54:	bf 07 7a f9 	jr	17ce <__vfprintf_r+0x176>
    1e58:	00 52       	mov	0, r10
    1e5a:	19 5f 00 00 	ld.b	0[r25], r11
    1e5e:	17 76 d0 ff 	addi	-48, r23, r14
    1e62:	0b b8       	mov	r11, r23
    1e64:	d8 ba       	shl	24, r23
    1e66:	0a 58       	mov	r10, r11
    1e68:	ca 59       	add	r10, r11
    1e6a:	b8 ba       	sar	24, r23
    1e6c:	c3 52       	shl	3, r10
    1e6e:	cb 51       	add	r11, r10
    1e70:	17 5e d0 ff 	addi	-48, r23, r11
    1e74:	ce 51       	add	r14, r10
    1e76:	41 ca       	add	1, r25
    1e78:	69 5a       	cmp	9, r11
    1e7a:	83 f5       	bnh	1e5a <__vfprintf_r+0x802>
    1e7c:	63 57 31 00 	st.w	r10, 48[sp]
    1e80:	bf 07 58 f9 	jr	17d8 <__vfprintf_r+0x180>
    1e84:	03 57 61 00 	ld.b	97[sp], r10
    1e88:	d8 52       	shl	24, r10
    1e8a:	b2 05       	be	1e90 <__vfprintf_r+0x838>
    1e8c:	bf 07 42 f9 	jr	17ce <__vfprintf_r+0x176>
    1e90:	43 9f 61 00 	st.b	r19, 97[sp]
    1e94:	bf 07 3a f9 	jr	17ce <__vfprintf_r+0x176>
    1e98:	19 bf 00 00 	ld.b	0[r25], r23
    1e9c:	41 ca       	add	1, r25
    1e9e:	d8 ba       	shl	24, r23
    1ea0:	b8 ba       	sar	24, r23
    1ea2:	f2 b9       	cmp	r18, r23
    1ea4:	ba 05       	bne	1eaa <__vfprintf_r+0x852>
    1ea6:	80 07 76 11 	jr	301c <__vfprintf_r+0x19c4>
    1eaa:	17 56 d0 ff 	addi	-48, r23, r10
    1eae:	00 12       	mov	0, r2
    1eb0:	69 52       	cmp	9, r10
    1eb2:	b3 05       	bnh	1eb8 <__vfprintf_r+0x860>
    1eb4:	bf 07 24 f9 	jr	17d8 <__vfprintf_r+0x180>
    1eb8:	19 bf 00 00 	ld.b	0[r25], r23
    1ebc:	02 58       	mov	r2, r11
    1ebe:	c2 59       	add	r2, r11
    1ec0:	d8 ba       	shl	24, r23
    1ec2:	c3 12       	shl	3, r2
    1ec4:	cb 11       	add	r11, r2
    1ec6:	b8 ba       	sar	24, r23
    1ec8:	ca 11       	add	r10, r2
    1eca:	17 56 d0 ff 	addi	-48, r23, r10
    1ece:	41 ca       	add	1, r25
    1ed0:	69 52       	cmp	9, r10
    1ed2:	b3 f5       	bnh	1eb8 <__vfprintf_r+0x860>
    1ed4:	60 12       	cmp	0, r2
    1ed6:	b6 05       	blt	1edc <__vfprintf_r+0x884>
    1ed8:	bf 07 00 f9 	jr	17d8 <__vfprintf_r+0x180>
    1edc:	1f 12       	mov	-1, r2
    1ede:	bf 07 fa f8 	jr	17d8 <__vfprintf_r+0x180>
    1ee2:	03 57 61 00 	ld.b	97[sp], r10
    1ee6:	63 17 21 00 	st.w	r2, 32[sp]
    1eea:	d8 52       	shl	24, r10
    1eec:	b8 52       	sar	24, r10
    1eee:	02 b0       	mov	r2, r22
    1ef0:	63 af 2d 00 	st.w	r21, 44[sp]
    1ef4:	63 07 39 00 	st.w	r0, 56[sp]
    1ef8:	63 07 45 00 	st.w	r0, 68[sp]
    1efc:	bf 07 c8 fa 	jr	19c4 <__vfprintf_r+0x36c>
    1f00:	23 6f 89 00 	ld.w	136[sp], r13
    1f04:	03 57 61 00 	ld.b	97[sp], r10
    1f08:	d8 52       	shl	24, r10
    1f0a:	d2 15       	be	1f34 <__vfprintf_r+0x8dc>
    1f0c:	23 5f 85 00 	ld.w	132[sp], r11
    1f10:	03 56 61 00 	addi	97, sp, r10
    1f14:	6c 57 01 00 	st.w	r10, 0[r12]
    1f18:	01 52       	mov	1, r10
    1f1a:	6c 57 05 00 	st.w	r10, 4[r12]
    1f1e:	ca 69       	add	r10, r13
    1f20:	ca 59       	add	r10, r11
    1f22:	63 6f 89 00 	st.w	r13, 136[sp]
    1f26:	63 5f 85 00 	st.w	r11, 132[sp]
    1f2a:	67 5a       	cmp	7, r11
    1f2c:	b7 05       	ble	1f32 <__vfprintf_r+0x8da>
    1f2e:	80 07 18 05 	jr	2446 <__vfprintf_r+0xdee>
    1f32:	48 62       	add	8, r12
    1f34:	23 5f 25 00 	ld.w	36[sp], r11
    1f38:	60 5a       	cmp	0, r11
    1f3a:	d2 15       	be	1f64 <__vfprintf_r+0x90c>
    1f3c:	23 5f 85 00 	ld.w	132[sp], r11
    1f40:	03 56 62 00 	addi	98, sp, r10
    1f44:	6c 57 01 00 	st.w	r10, 0[r12]
    1f48:	02 52       	mov	2, r10
    1f4a:	6c 57 05 00 	st.w	r10, 4[r12]
    1f4e:	ca 69       	add	r10, r13
    1f50:	41 5a       	add	1, r11
    1f52:	63 6f 89 00 	st.w	r13, 136[sp]
    1f56:	63 5f 85 00 	st.w	r11, 132[sp]
    1f5a:	67 5a       	cmp	7, r11
    1f5c:	b7 05       	ble	1f62 <__vfprintf_r+0x90a>
    1f5e:	80 07 0a 05 	jr	2468 <__vfprintf_r+0xe10>
    1f62:	48 62       	add	8, r12
    1f64:	23 77 35 00 	ld.w	52[sp], r14
    1f68:	20 56 80 00 	movea	128, r0, r10
    1f6c:	ea 71       	cmp	r10, r14
    1f6e:	ba 05       	bne	1f74 <__vfprintf_r+0x91c>
    1f70:	80 07 f4 02 	jr	2264 <__vfprintf_r+0xc0c>
    1f74:	23 af 39 00 	ld.w	56[sp], r21
    1f78:	b6 a9       	sub	r22, r21
    1f7a:	60 aa       	cmp	0, r21
    1f7c:	87 45       	ble	1ffc <__vfprintf_r+0x9a4>
    1f7e:	20 16 10 00 	movea	16, r0, r2
    1f82:	63 c7 25 00 	st.w	r24, 36[sp]
    1f86:	23 5f 85 00 	ld.w	132[sp], r11
    1f8a:	e2 a9       	cmp	r2, r21
    1f8c:	ef 05       	bgt	1f98 <__vfprintf_r+0x940>
    1f8e:	e5 25       	br	1fda <__vfprintf_r+0x982>
    1f90:	50 aa       	add	-16, r21
    1f92:	48 62       	add	8, r12
    1f94:	e2 a9       	cmp	r2, r21
    1f96:	a7 25       	ble	1fda <__vfprintf_r+0x982>
    1f98:	6c c7 01 00 	st.w	r24, 0[r12]
    1f9c:	6c 17 05 00 	st.w	r2, 4[r12]
    1fa0:	0d 6e 10 00 	addi	16, r13, r13
    1fa4:	41 5a       	add	1, r11
    1fa6:	63 6f 89 00 	st.w	r13, 136[sp]
    1faa:	63 5f 85 00 	st.w	r11, 132[sp]
    1fae:	67 5a       	cmp	7, r11
    1fb0:	87 f5       	ble	1f90 <__vfprintf_r+0x938>
    1fb2:	20 46 80 00 	movea	128, r0, r8
    1fb6:	14 30       	mov	r20, r6
    1fb8:	1d 38       	mov	r29, r7
    1fba:	c3 41       	add	sp, r8
    1fbc:	80 ff d4 4a 	jarl	6a90 <___sprint_r>, lp
    1fc0:	60 52       	cmp	0, r10
    1fc2:	b2 05       	be	1fc8 <__vfprintf_r+0x970>
    1fc4:	bf 07 a2 fb 	jr	1b66 <__vfprintf_r+0x50e>
    1fc8:	50 aa       	add	-16, r21
    1fca:	23 6f 89 00 	ld.w	136[sp], r13
    1fce:	23 5f 85 00 	ld.w	132[sp], r11
    1fd2:	03 66 1c 01 	addi	284, sp, r12
    1fd6:	e2 a9       	cmp	r2, r21
    1fd8:	8f e5       	bgt	1f98 <__vfprintf_r+0x940>
    1fda:	23 77 25 00 	ld.w	36[sp], r14
    1fde:	6c af 05 00 	st.w	r21, 4[r12]
    1fe2:	6c 77 01 00 	st.w	r14, 0[r12]
    1fe6:	d5 69       	add	r21, r13
    1fe8:	41 5a       	add	1, r11
    1fea:	63 6f 89 00 	st.w	r13, 136[sp]
    1fee:	63 5f 85 00 	st.w	r11, 132[sp]
    1ff2:	67 5a       	cmp	7, r11
    1ff4:	b7 05       	ble	1ffa <__vfprintf_r+0x9a2>
    1ff6:	80 07 2e 04 	jr	2424 <__vfprintf_r+0xdcc>
    1ffa:	48 62       	add	8, r12
    1ffc:	db 56 00 01 	andi	256, r27, r10
    2000:	b2 05       	be	2006 <__vfprintf_r+0x9ae>
    2002:	80 07 56 01 	jr	2158 <__vfprintf_r+0xb00>
    2006:	d6 69       	add	r22, r13
    2008:	23 5f 85 00 	ld.w	132[sp], r11
    200c:	6c e7 01 00 	st.w	r28, 0[r12]
    2010:	6c b7 05 00 	st.w	r22, 4[r12]
    2014:	41 5a       	add	1, r11
    2016:	63 6f 89 00 	st.w	r13, 136[sp]
    201a:	63 5f 85 00 	st.w	r11, 132[sp]
    201e:	67 5a       	cmp	7, r11
    2020:	b7 05       	ble	2026 <__vfprintf_r+0x9ce>
    2022:	80 07 c6 03 	jr	23e8 <__vfprintf_r+0xd90>
    2026:	48 62       	add	8, r12
    2028:	db de 04 00 	andi	4, r27, r27
    202c:	92 55       	be	20ce <__vfprintf_r+0xa76>
    202e:	23 e7 31 00 	ld.w	48[sp], r28
    2032:	23 5f 21 00 	ld.w	32[sp], r11
    2036:	ab e1       	sub	r11, r28
    2038:	60 e2       	cmp	0, r28
    203a:	a7 4d       	ble	20ce <__vfprintf_r+0xa76>
    203c:	20 de 10 00 	movea	16, r0, r27
    2040:	63 d7 49 00 	st.w	r26, 72[sp]
    2044:	23 5f 85 00 	ld.w	132[sp], r11
    2048:	fb e1       	cmp	r27, r28
    204a:	ef 05       	bgt	2056 <__vfprintf_r+0x9fe>
    204c:	e5 25       	br	2098 <__vfprintf_r+0xa40>
    204e:	50 e2       	add	-16, r28
    2050:	48 62       	add	8, r12
    2052:	fb e1       	cmp	r27, r28
    2054:	a7 25       	ble	2098 <__vfprintf_r+0xa40>
    2056:	6c d7 01 00 	st.w	r26, 0[r12]
    205a:	6c df 05 00 	st.w	r27, 4[r12]
    205e:	0d 6e 10 00 	addi	16, r13, r13
    2062:	41 5a       	add	1, r11
    2064:	63 6f 89 00 	st.w	r13, 136[sp]
    2068:	63 5f 85 00 	st.w	r11, 132[sp]
    206c:	67 5a       	cmp	7, r11
    206e:	87 f5       	ble	204e <__vfprintf_r+0x9f6>
    2070:	20 46 80 00 	movea	128, r0, r8
    2074:	14 30       	mov	r20, r6
    2076:	1d 38       	mov	r29, r7
    2078:	c3 41       	add	sp, r8
    207a:	80 ff 16 4a 	jarl	6a90 <___sprint_r>, lp
    207e:	60 52       	cmp	0, r10
    2080:	b2 05       	be	2086 <__vfprintf_r+0xa2e>
    2082:	bf 07 e4 fa 	jr	1b66 <__vfprintf_r+0x50e>
    2086:	50 e2       	add	-16, r28
    2088:	23 6f 89 00 	ld.w	136[sp], r13
    208c:	23 5f 85 00 	ld.w	132[sp], r11
    2090:	03 66 1c 01 	addi	284, sp, r12
    2094:	fb e1       	cmp	r27, r28
    2096:	8f e5       	bgt	2056 <__vfprintf_r+0x9fe>
    2098:	23 77 49 00 	ld.w	72[sp], r14
    209c:	6c e7 05 00 	st.w	r28, 4[r12]
    20a0:	6c 77 01 00 	st.w	r14, 0[r12]
    20a4:	dc 69       	add	r28, r13
    20a6:	41 5a       	add	1, r11
    20a8:	63 6f 89 00 	st.w	r13, 136[sp]
    20ac:	63 5f 85 00 	st.w	r11, 132[sp]
    20b0:	67 5a       	cmp	7, r11
    20b2:	e7 0d       	ble	20ce <__vfprintf_r+0xa76>
    20b4:	20 46 80 00 	movea	128, r0, r8
    20b8:	14 30       	mov	r20, r6
    20ba:	1d 38       	mov	r29, r7
    20bc:	c3 41       	add	sp, r8
    20be:	80 ff d2 49 	jarl	6a90 <___sprint_r>, lp
    20c2:	60 52       	cmp	0, r10
    20c4:	b2 05       	be	20ca <__vfprintf_r+0xa72>
    20c6:	bf 07 a0 fa 	jr	1b66 <__vfprintf_r+0x50e>
    20ca:	23 6f 89 00 	ld.w	136[sp], r13
    20ce:	23 57 21 00 	ld.w	32[sp], r10
    20d2:	23 5f 31 00 	ld.w	48[sp], r11
    20d6:	eb 51       	cmp	r11, r10
    20d8:	ae 05       	bge	20dc <__vfprintf_r+0xa84>
    20da:	0b 50       	mov	r11, r10
    20dc:	23 67 29 00 	ld.w	40[sp], r12
    20e0:	ca 61       	add	r10, r12
    20e2:	63 67 29 00 	st.w	r12, 40[sp]
    20e6:	60 6a       	cmp	0, r13
    20e8:	b2 05       	be	20ee <__vfprintf_r+0xa96>
    20ea:	80 07 20 03 	jr	240a <__vfprintf_r+0xdb2>
    20ee:	63 07 85 00 	st.w	r0, 132[sp]
    20f2:	19 57 00 00 	ld.b	0[r25], r10
    20f6:	03 66 1c 01 	addi	284, sp, r12
    20fa:	d8 52       	shl	24, r10
    20fc:	b8 52       	sar	24, r10
    20fe:	b2 05       	be	2104 <__vfprintf_r+0xaac>
    2100:	bf 07 50 f6 	jr	1750 <__vfprintf_r+0xf8>
    2104:	19 e0       	mov	r25, r28
    2106:	bf 07 9c f6 	jr	17a2 <__vfprintf_r+0x14a>
    210a:	61 52       	cmp	1, r10
    210c:	ba 05       	bne	2112 <__vfprintf_r+0xaba>
    210e:	80 07 86 03 	jr	2494 <__vfprintf_r+0xe3c>
    2112:	03 e6 b4 00 	addi	180, sp, r28
    2116:	62 52       	cmp	2, r10
    2118:	ba 05       	bne	211e <__vfprintf_r+0xac6>
    211a:	80 07 de 01 	jr	22f8 <__vfprintf_r+0xca0>
    211e:	d6 56 07 00 	andi	7, r22, r10
    2122:	5f e2       	add	-1, r28
    2124:	0a 56 30 00 	addi	48, r10, r10
    2128:	5c 57 00 00 	st.b	r10, 0[r28]
    212c:	83 b2       	shr	3, r22
    212e:	8a fd       	bne	211e <__vfprintf_r+0xac6>
    2130:	db 5e 01 00 	andi	1, r27, r11
    2134:	1c 68       	mov	r28, r13
    2136:	ba 05       	bne	213c <__vfprintf_r+0xae4>
    2138:	80 07 d8 01 	jr	2310 <__vfprintf_r+0xcb8>
    213c:	20 5e 30 00 	movea	48, r0, r11
    2140:	eb 51       	cmp	r11, r10
    2142:	ba 05       	bne	2148 <__vfprintf_r+0xaf0>
    2144:	80 07 cc 01 	jr	2310 <__vfprintf_r+0xcb8>
    2148:	5f e2       	add	-1, r28
    214a:	03 b6 b4 00 	addi	180, sp, r22
    214e:	4d 5f ff ff 	st.b	r11, -1[r13]
    2152:	bc b1       	sub	r28, r22
    2154:	bf 07 54 f8 	jr	19a8 <__vfprintf_r+0x350>
    2158:	20 56 65 00 	movea	101, r0, r10
    215c:	ea b9       	cmp	r10, r23
    215e:	bf 05       	bgt	2164 <__vfprintf_r+0xb0c>
    2160:	80 07 ba 01 	jr	231a <__vfprintf_r+0xcc2>
    2164:	23 37 51 00 	ld.w	80[sp], r6
    2168:	23 3f 55 00 	ld.w	84[sp], r7
    216c:	00 42       	mov	0, r8
    216e:	00 4a       	mov	0, r9
    2170:	63 67 15 00 	st.w	r12, 20[sp]
    2174:	63 6f 19 00 	st.w	r13, 24[sp]
    2178:	80 ff 94 74 	jarl	960c <___eqdf2>, lp
    217c:	23 67 15 00 	ld.w	20[sp], r12
    2180:	23 6f 19 00 	ld.w	24[sp], r13
    2184:	60 52       	cmp	0, r10
    2186:	b2 05       	be	218c <__vfprintf_r+0xb34>
    2188:	80 07 2c 03 	jr	24b4 <__vfprintf_r+0xe5c>
    218c:	40 56 01 00 	movhi	1, r0, r10
    2190:	23 5f 85 00 	ld.w	132[sp], r11
    2194:	2a 56 ac 9f 	movea	-24660, r10, r10
    2198:	6c 57 01 00 	st.w	r10, 0[r12]
    219c:	01 52       	mov	1, r10
    219e:	6c 57 05 00 	st.w	r10, 4[r12]
    21a2:	ca 69       	add	r10, r13
    21a4:	ca 59       	add	r10, r11
    21a6:	63 6f 89 00 	st.w	r13, 136[sp]
    21aa:	63 5f 85 00 	st.w	r11, 132[sp]
    21ae:	67 5a       	cmp	7, r11
    21b0:	b7 05       	ble	21b6 <__vfprintf_r+0xb5e>
    21b2:	80 07 d4 08 	jr	2a86 <__vfprintf_r+0x142e>
    21b6:	48 62       	add	8, r12
    21b8:	23 57 65 00 	ld.w	100[sp], r10
    21bc:	23 5f 41 00 	ld.w	64[sp], r11
    21c0:	eb 51       	cmp	r11, r10
    21c2:	e6 05       	blt	21ce <__vfprintf_r+0xb76>
    21c4:	db 56 01 00 	andi	1, r27, r10
    21c8:	ba 05       	bne	21ce <__vfprintf_r+0xb76>
    21ca:	bf 07 5e fe 	jr	2028 <__vfprintf_r+0x9d0>
    21ce:	23 77 3d 00 	ld.w	60[sp], r14
    21d2:	23 5f 85 00 	ld.w	132[sp], r11
    21d6:	6c 77 01 00 	st.w	r14, 0[r12]
    21da:	23 77 4d 00 	ld.w	76[sp], r14
    21de:	41 5a       	add	1, r11
    21e0:	6c 77 05 00 	st.w	r14, 4[r12]
    21e4:	ce 69       	add	r14, r13
    21e6:	63 6f 89 00 	st.w	r13, 136[sp]
    21ea:	63 5f 85 00 	st.w	r11, 132[sp]
    21ee:	67 5a       	cmp	7, r11
    21f0:	b7 05       	ble	21f6 <__vfprintf_r+0xb9e>
    21f2:	80 07 08 0a 	jr	2bfa <__vfprintf_r+0x15a2>
    21f6:	48 62       	add	8, r12
    21f8:	23 e7 41 00 	ld.w	64[sp], r28
    21fc:	5f e2       	add	-1, r28
    21fe:	60 e2       	cmp	0, r28
    2200:	bf 05       	bgt	2206 <__vfprintf_r+0xbae>
    2202:	bf 07 26 fe 	jr	2028 <__vfprintf_r+0x9d0>
    2206:	20 be 10 00 	movea	16, r0, r23
    220a:	63 c7 25 00 	st.w	r24, 36[sp]
    220e:	23 5f 85 00 	ld.w	132[sp], r11
    2212:	f7 e1       	cmp	r23, r28
    2214:	9f 0d       	bgt	2226 <__vfprintf_r+0xbce>
    2216:	80 07 e2 03 	jr	25f8 <__vfprintf_r+0xfa0>
    221a:	48 62       	add	8, r12
    221c:	50 e2       	add	-16, r28
    221e:	f7 e1       	cmp	r23, r28
    2220:	bf 05       	bgt	2226 <__vfprintf_r+0xbce>
    2222:	80 07 d6 03 	jr	25f8 <__vfprintf_r+0xfa0>
    2226:	6c c7 01 00 	st.w	r24, 0[r12]
    222a:	6c bf 05 00 	st.w	r23, 4[r12]
    222e:	0d 6e 10 00 	addi	16, r13, r13
    2232:	41 5a       	add	1, r11
    2234:	63 6f 89 00 	st.w	r13, 136[sp]
    2238:	63 5f 85 00 	st.w	r11, 132[sp]
    223c:	67 5a       	cmp	7, r11
    223e:	e7 ed       	ble	221a <__vfprintf_r+0xbc2>
    2240:	20 46 80 00 	movea	128, r0, r8
    2244:	14 30       	mov	r20, r6
    2246:	1d 38       	mov	r29, r7
    2248:	c3 41       	add	sp, r8
    224a:	80 ff 46 48 	jarl	6a90 <___sprint_r>, lp
    224e:	60 52       	cmp	0, r10
    2250:	b2 05       	be	2256 <__vfprintf_r+0xbfe>
    2252:	bf 07 14 f9 	jr	1b66 <__vfprintf_r+0x50e>
    2256:	23 6f 89 00 	ld.w	136[sp], r13
    225a:	23 5f 85 00 	ld.w	132[sp], r11
    225e:	03 66 1c 01 	addi	284, sp, r12
    2262:	d5 dd       	br	221c <__vfprintf_r+0xbc4>
    2264:	23 af 31 00 	ld.w	48[sp], r21
    2268:	23 5f 21 00 	ld.w	32[sp], r11
    226c:	ab a9       	sub	r11, r21
    226e:	60 aa       	cmp	0, r21
    2270:	bf 05       	bgt	2276 <__vfprintf_r+0xc1e>
    2272:	bf 07 02 fd 	jr	1f74 <__vfprintf_r+0x91c>
    2276:	20 16 10 00 	movea	16, r0, r2
    227a:	63 c7 25 00 	st.w	r24, 36[sp]
    227e:	23 5f 85 00 	ld.w	132[sp], r11
    2282:	e2 a9       	cmp	r2, r21
    2284:	ef 05       	bgt	2290 <__vfprintf_r+0xc38>
    2286:	e5 25       	br	22d2 <__vfprintf_r+0xc7a>
    2288:	50 aa       	add	-16, r21
    228a:	48 62       	add	8, r12
    228c:	e2 a9       	cmp	r2, r21
    228e:	a7 25       	ble	22d2 <__vfprintf_r+0xc7a>
    2290:	6c c7 01 00 	st.w	r24, 0[r12]
    2294:	6c 17 05 00 	st.w	r2, 4[r12]
    2298:	0d 6e 10 00 	addi	16, r13, r13
    229c:	41 5a       	add	1, r11
    229e:	63 6f 89 00 	st.w	r13, 136[sp]
    22a2:	63 5f 85 00 	st.w	r11, 132[sp]
    22a6:	67 5a       	cmp	7, r11
    22a8:	87 f5       	ble	2288 <__vfprintf_r+0xc30>
    22aa:	20 46 80 00 	movea	128, r0, r8
    22ae:	14 30       	mov	r20, r6
    22b0:	1d 38       	mov	r29, r7
    22b2:	c3 41       	add	sp, r8
    22b4:	80 ff dc 47 	jarl	6a90 <___sprint_r>, lp
    22b8:	60 52       	cmp	0, r10
    22ba:	b2 05       	be	22c0 <__vfprintf_r+0xc68>
    22bc:	bf 07 aa f8 	jr	1b66 <__vfprintf_r+0x50e>
    22c0:	50 aa       	add	-16, r21
    22c2:	23 6f 89 00 	ld.w	136[sp], r13
    22c6:	23 5f 85 00 	ld.w	132[sp], r11
    22ca:	03 66 1c 01 	addi	284, sp, r12
    22ce:	e2 a9       	cmp	r2, r21
    22d0:	8f e5       	bgt	2290 <__vfprintf_r+0xc38>
    22d2:	23 77 25 00 	ld.w	36[sp], r14
    22d6:	6c af 05 00 	st.w	r21, 4[r12]
    22da:	6c 77 01 00 	st.w	r14, 0[r12]
    22de:	d5 69       	add	r21, r13
    22e0:	41 5a       	add	1, r11
    22e2:	63 6f 89 00 	st.w	r13, 136[sp]
    22e6:	63 5f 85 00 	st.w	r11, 132[sp]
    22ea:	67 5a       	cmp	7, r11
    22ec:	b7 05       	ble	22f2 <__vfprintf_r+0xc9a>
    22ee:	80 07 1c 05 	jr	280a <__vfprintf_r+0x11b2>
    22f2:	48 62       	add	8, r12
    22f4:	bf 07 80 fc 	jr	1f74 <__vfprintf_r+0x91c>
    22f8:	23 5f 5d 00 	ld.w	92[sp], r11
    22fc:	d6 56 0f 00 	andi	15, r22, r10
    2300:	cb 51       	add	r11, r10
    2302:	0a 57 00 00 	ld.b	0[r10], r10
    2306:	5f e2       	add	-1, r28
    2308:	5c 57 00 00 	st.b	r10, 0[r28]
    230c:	84 b2       	shr	4, r22
    230e:	fa f5       	bne	22fc <__vfprintf_r+0xca4>
    2310:	03 b6 b4 00 	addi	180, sp, r22
    2314:	bc b1       	sub	r28, r22
    2316:	bf 07 92 f6 	jr	19a8 <__vfprintf_r+0x350>
    231a:	23 5f 41 00 	ld.w	64[sp], r11
    231e:	61 5a       	cmp	1, r11
    2320:	bf 05       	bgt	2326 <__vfprintf_r+0xcce>
    2322:	80 07 34 04 	jr	2756 <__vfprintf_r+0x10fe>
    2326:	23 5f 85 00 	ld.w	132[sp], r11
    232a:	01 52       	mov	1, r10
    232c:	6c e7 01 00 	st.w	r28, 0[r12]
    2330:	6c 57 05 00 	st.w	r10, 4[r12]
    2334:	ca 69       	add	r10, r13
    2336:	ca 59       	add	r10, r11
    2338:	63 6f 89 00 	st.w	r13, 136[sp]
    233c:	63 5f 85 00 	st.w	r11, 132[sp]
    2340:	67 5a       	cmp	7, r11
    2342:	b7 05       	ble	2348 <__vfprintf_r+0xcf0>
    2344:	80 07 68 04 	jr	27ac <__vfprintf_r+0x1154>
    2348:	48 62       	add	8, r12
    234a:	23 77 3d 00 	ld.w	60[sp], r14
    234e:	41 5a       	add	1, r11
    2350:	6c 77 01 00 	st.w	r14, 0[r12]
    2354:	23 77 4d 00 	ld.w	76[sp], r14
    2358:	6c 77 05 00 	st.w	r14, 4[r12]
    235c:	ce 69       	add	r14, r13
    235e:	63 6f 89 00 	st.w	r13, 136[sp]
    2362:	63 5f 85 00 	st.w	r11, 132[sp]
    2366:	67 5a       	cmp	7, r11
    2368:	b7 05       	ble	236e <__vfprintf_r+0xd16>
    236a:	80 07 7a 04 	jr	27e4 <__vfprintf_r+0x118c>
    236e:	0c be 08 00 	addi	8, r12, r23
    2372:	23 37 51 00 	ld.w	80[sp], r6
    2376:	23 3f 55 00 	ld.w	84[sp], r7
    237a:	00 42       	mov	0, r8
    237c:	00 4a       	mov	0, r9
    237e:	63 5f 1d 00 	st.w	r11, 28[sp]
    2382:	63 6f 19 00 	st.w	r13, 24[sp]
    2386:	80 ff fa 72 	jarl	9680 <___nedf2>, lp
    238a:	23 5f 1d 00 	ld.w	28[sp], r11
    238e:	23 6f 19 00 	ld.w	24[sp], r13
    2392:	60 52       	cmp	0, r10
    2394:	ba 05       	bne	239a <__vfprintf_r+0xd42>
    2396:	80 07 fa 01 	jr	2590 <__vfprintf_r+0xf38>
    239a:	23 57 41 00 	ld.w	64[sp], r10
    239e:	41 e2       	add	1, r28
    23a0:	5f 52       	add	-1, r10
    23a2:	ca 69       	add	r10, r13
    23a4:	77 e7 01 00 	st.w	r28, 0[r23]
    23a8:	77 57 05 00 	st.w	r10, 4[r23]
    23ac:	41 5a       	add	1, r11
    23ae:	63 6f 89 00 	st.w	r13, 136[sp]
    23b2:	63 5f 85 00 	st.w	r11, 132[sp]
    23b6:	67 5a       	cmp	7, r11
    23b8:	b7 05       	ble	23be <__vfprintf_r+0xd66>
    23ba:	80 07 cc 03 	jr	2786 <__vfprintf_r+0x112e>
    23be:	48 ba       	add	8, r23
    23c0:	23 77 59 00 	ld.w	88[sp], r14
    23c4:	03 56 72 00 	addi	114, sp, r10
    23c8:	77 57 01 00 	st.w	r10, 0[r23]
    23cc:	77 77 05 00 	st.w	r14, 4[r23]
    23d0:	ce 69       	add	r14, r13
    23d2:	41 5a       	add	1, r11
    23d4:	63 6f 89 00 	st.w	r13, 136[sp]
    23d8:	63 5f 85 00 	st.w	r11, 132[sp]
    23dc:	67 5a       	cmp	7, r11
    23de:	df 05       	bgt	23e8 <__vfprintf_r+0xd90>
    23e0:	17 66 08 00 	addi	8, r23, r12
    23e4:	bf 07 44 fc 	jr	2028 <__vfprintf_r+0x9d0>
    23e8:	20 46 80 00 	movea	128, r0, r8
    23ec:	14 30       	mov	r20, r6
    23ee:	1d 38       	mov	r29, r7
    23f0:	c3 41       	add	sp, r8
    23f2:	80 ff 9e 46 	jarl	6a90 <___sprint_r>, lp
    23f6:	60 52       	cmp	0, r10
    23f8:	b2 05       	be	23fe <__vfprintf_r+0xda6>
    23fa:	bf 07 6c f7 	jr	1b66 <__vfprintf_r+0x50e>
    23fe:	03 66 1c 01 	addi	284, sp, r12
    2402:	23 6f 89 00 	ld.w	136[sp], r13
    2406:	bf 07 22 fc 	jr	2028 <__vfprintf_r+0x9d0>
    240a:	20 46 80 00 	movea	128, r0, r8
    240e:	14 30       	mov	r20, r6
    2410:	1d 38       	mov	r29, r7
    2412:	c3 41       	add	sp, r8
    2414:	80 ff 7c 46 	jarl	6a90 <___sprint_r>, lp
    2418:	60 52       	cmp	0, r10
    241a:	ba 05       	bne	2420 <__vfprintf_r+0xdc8>
    241c:	bf 07 d2 fc 	jr	20ee <__vfprintf_r+0xa96>
    2420:	bf 07 46 f7 	jr	1b66 <__vfprintf_r+0x50e>
    2424:	20 46 80 00 	movea	128, r0, r8
    2428:	14 30       	mov	r20, r6
    242a:	1d 38       	mov	r29, r7
    242c:	c3 41       	add	sp, r8
    242e:	80 ff 62 46 	jarl	6a90 <___sprint_r>, lp
    2432:	60 52       	cmp	0, r10
    2434:	b2 05       	be	243a <__vfprintf_r+0xde2>
    2436:	bf 07 30 f7 	jr	1b66 <__vfprintf_r+0x50e>
    243a:	23 6f 89 00 	ld.w	136[sp], r13
    243e:	03 66 1c 01 	addi	284, sp, r12
    2442:	bf 07 ba fb 	jr	1ffc <__vfprintf_r+0x9a4>
    2446:	20 46 80 00 	movea	128, r0, r8
    244a:	14 30       	mov	r20, r6
    244c:	1d 38       	mov	r29, r7
    244e:	c3 41       	add	sp, r8
    2450:	80 ff 40 46 	jarl	6a90 <___sprint_r>, lp
    2454:	60 52       	cmp	0, r10
    2456:	b2 05       	be	245c <__vfprintf_r+0xe04>
    2458:	bf 07 0e f7 	jr	1b66 <__vfprintf_r+0x50e>
    245c:	23 6f 89 00 	ld.w	136[sp], r13
    2460:	03 66 1c 01 	addi	284, sp, r12
    2464:	bf 07 d0 fa 	jr	1f34 <__vfprintf_r+0x8dc>
    2468:	20 46 80 00 	movea	128, r0, r8
    246c:	14 30       	mov	r20, r6
    246e:	1d 38       	mov	r29, r7
    2470:	c3 41       	add	sp, r8
    2472:	80 ff 1e 46 	jarl	6a90 <___sprint_r>, lp
    2476:	60 52       	cmp	0, r10
    2478:	b2 05       	be	247e <__vfprintf_r+0xe26>
    247a:	bf 07 ec f6 	jr	1b66 <__vfprintf_r+0x50e>
    247e:	23 6f 89 00 	ld.w	136[sp], r13
    2482:	03 66 1c 01 	addi	284, sp, r12
    2486:	bf 07 de fa 	jr	1f64 <__vfprintf_r+0x90c>
    248a:	00 b2       	mov	0, r22
    248c:	03 e6 b4 00 	addi	180, sp, r28
    2490:	bf 07 18 f5 	jr	19a8 <__vfprintf_r+0x350>
    2494:	69 b2       	cmp	9, r22
    2496:	b3 05       	bnh	249c <__vfprintf_r+0xe44>
    2498:	80 07 72 01 	jr	260a <__vfprintf_r+0xfb2>
    249c:	16 b6 30 00 	addi	48, r22, r22
    24a0:	43 b7 b3 00 	st.b	r22, 179[sp]
    24a4:	03 e6 b3 00 	addi	179, sp, r28
    24a8:	01 b2       	mov	1, r22
    24aa:	bf 07 fe f4 	jr	19a8 <__vfprintf_r+0x350>
    24ae:	02 52       	mov	2, r10
    24b0:	bf 07 ba f4 	jr	196a <__vfprintf_r+0x312>
    24b4:	23 bf 65 00 	ld.w	100[sp], r23
    24b8:	60 ba       	cmp	0, r23
    24ba:	bf 05       	bgt	24c0 <__vfprintf_r+0xe68>
    24bc:	80 07 ec 05 	jr	2aa8 <__vfprintf_r+0x1450>
    24c0:	23 bf 41 00 	ld.w	64[sp], r23
    24c4:	23 5f 45 00 	ld.w	68[sp], r11
    24c8:	dc b9       	add	r28, r23
    24ca:	17 a8       	mov	r23, r21
    24cc:	bc a9       	sub	r28, r21
    24ce:	eb a9       	cmp	r11, r21
    24d0:	a7 05       	ble	24d4 <__vfprintf_r+0xe7c>
    24d2:	0b a8       	mov	r11, r21
    24d4:	60 aa       	cmp	0, r21
    24d6:	a7 15       	ble	24fa <__vfprintf_r+0xea2>
    24d8:	23 5f 85 00 	ld.w	132[sp], r11
    24dc:	d5 69       	add	r21, r13
    24de:	6c e7 01 00 	st.w	r28, 0[r12]
    24e2:	6c af 05 00 	st.w	r21, 4[r12]
    24e6:	41 5a       	add	1, r11
    24e8:	63 6f 89 00 	st.w	r13, 136[sp]
    24ec:	63 5f 85 00 	st.w	r11, 132[sp]
    24f0:	67 5a       	cmp	7, r11
    24f2:	b7 05       	ble	24f8 <__vfprintf_r+0xea0>
    24f4:	80 07 7e 07 	jr	2c72 <__vfprintf_r+0x161a>
    24f8:	48 62       	add	8, r12
    24fa:	60 aa       	cmp	0, r21
    24fc:	be 05       	bge	2502 <__vfprintf_r+0xeaa>
    24fe:	80 07 96 07 	jr	2c94 <__vfprintf_r+0x163c>
    2502:	23 77 45 00 	ld.w	68[sp], r14
    2506:	8e a9       	subr	r14, r21
    2508:	60 aa       	cmp	0, r21
    250a:	bf 05       	bgt	2510 <__vfprintf_r+0xeb8>
    250c:	80 07 64 01 	jr	2670 <__vfprintf_r+0x1018>
    2510:	20 16 10 00 	movea	16, r0, r2
    2514:	63 c7 25 00 	st.w	r24, 36[sp]
    2518:	23 5f 85 00 	ld.w	132[sp], r11
    251c:	e2 a9       	cmp	r2, r21
    251e:	9f 0d       	bgt	2530 <__vfprintf_r+0xed8>
    2520:	80 07 40 05 	jr	2a60 <__vfprintf_r+0x1408>
    2524:	48 62       	add	8, r12
    2526:	50 aa       	add	-16, r21
    2528:	e2 a9       	cmp	r2, r21
    252a:	bf 05       	bgt	2530 <__vfprintf_r+0xed8>
    252c:	80 07 34 05 	jr	2a60 <__vfprintf_r+0x1408>
    2530:	6c c7 01 00 	st.w	r24, 0[r12]
    2534:	6c 17 05 00 	st.w	r2, 4[r12]
    2538:	0d 6e 10 00 	addi	16, r13, r13
    253c:	41 5a       	add	1, r11
    253e:	63 6f 89 00 	st.w	r13, 136[sp]
    2542:	63 5f 85 00 	st.w	r11, 132[sp]
    2546:	67 5a       	cmp	7, r11
    2548:	e7 ed       	ble	2524 <__vfprintf_r+0xecc>
    254a:	20 46 80 00 	movea	128, r0, r8
    254e:	14 30       	mov	r20, r6
    2550:	1d 38       	mov	r29, r7
    2552:	c3 41       	add	sp, r8
    2554:	80 ff 3c 45 	jarl	6a90 <___sprint_r>, lp
    2558:	60 52       	cmp	0, r10
    255a:	b2 05       	be	2560 <__vfprintf_r+0xf08>
    255c:	bf 07 0a f6 	jr	1b66 <__vfprintf_r+0x50e>
    2560:	23 6f 89 00 	ld.w	136[sp], r13
    2564:	23 5f 85 00 	ld.w	132[sp], r11
    2568:	03 66 1c 01 	addi	284, sp, r12
    256c:	d5 dd       	br	2526 <__vfprintf_r+0xece>
    256e:	20 46 80 00 	movea	128, r0, r8
    2572:	14 30       	mov	r20, r6
    2574:	1d 38       	mov	r29, r7
    2576:	c3 41       	add	sp, r8
    2578:	80 ff 18 45 	jarl	6a90 <___sprint_r>, lp
    257c:	60 52       	cmp	0, r10
    257e:	b2 05       	be	2584 <__vfprintf_r+0xf2c>
    2580:	bf 07 e6 f5 	jr	1b66 <__vfprintf_r+0x50e>
    2584:	23 6f 89 00 	ld.w	136[sp], r13
    2588:	03 66 1c 01 	addi	284, sp, r12
    258c:	bf 07 78 f9 	jr	1f04 <__vfprintf_r+0x8ac>
    2590:	23 e7 41 00 	ld.w	64[sp], r28
    2594:	5f e2       	add	-1, r28
    2596:	60 e2       	cmp	0, r28
    2598:	bf 05       	bgt	259e <__vfprintf_r+0xf46>
    259a:	bf 07 26 fe 	jr	23c0 <__vfprintf_r+0xd68>
    259e:	20 ae 10 00 	movea	16, r0, r21
    25a2:	63 c7 25 00 	st.w	r24, 36[sp]
    25a6:	f5 e1       	cmp	r21, r28
    25a8:	9f 0d       	bgt	25ba <__vfprintf_r+0xf62>
    25aa:	80 07 28 02 	jr	27d2 <__vfprintf_r+0x117a>
    25ae:	48 ba       	add	8, r23
    25b0:	50 e2       	add	-16, r28
    25b2:	f5 e1       	cmp	r21, r28
    25b4:	bf 05       	bgt	25ba <__vfprintf_r+0xf62>
    25b6:	80 07 1c 02 	jr	27d2 <__vfprintf_r+0x117a>
    25ba:	77 c7 01 00 	st.w	r24, 0[r23]
    25be:	77 af 05 00 	st.w	r21, 4[r23]
    25c2:	0d 6e 10 00 	addi	16, r13, r13
    25c6:	41 5a       	add	1, r11
    25c8:	63 6f 89 00 	st.w	r13, 136[sp]
    25cc:	63 5f 85 00 	st.w	r11, 132[sp]
    25d0:	67 5a       	cmp	7, r11
    25d2:	e7 ed       	ble	25ae <__vfprintf_r+0xf56>
    25d4:	20 46 80 00 	movea	128, r0, r8
    25d8:	14 30       	mov	r20, r6
    25da:	1d 38       	mov	r29, r7
    25dc:	c3 41       	add	sp, r8
    25de:	80 ff b2 44 	jarl	6a90 <___sprint_r>, lp
    25e2:	60 52       	cmp	0, r10
    25e4:	b2 05       	be	25ea <__vfprintf_r+0xf92>
    25e6:	bf 07 80 f5 	jr	1b66 <__vfprintf_r+0x50e>
    25ea:	23 6f 89 00 	ld.w	136[sp], r13
    25ee:	23 5f 85 00 	ld.w	132[sp], r11
    25f2:	03 be 1c 01 	addi	284, sp, r23
    25f6:	d5 dd       	br	25b0 <__vfprintf_r+0xf58>
    25f8:	23 77 25 00 	ld.w	36[sp], r14
    25fc:	dc 69       	add	r28, r13
    25fe:	6c 77 01 00 	st.w	r14, 0[r12]
    2602:	6c e7 05 00 	st.w	r28, 4[r12]
    2606:	bf 07 0e fa 	jr	2014 <__vfprintf_r+0x9bc>
    260a:	40 56 01 00 	movhi	1, r0, r10
    260e:	63 ef 21 00 	st.w	r29, 32[sp]
    2612:	03 e6 b4 00 	addi	180, sp, r28
    2616:	16 e8       	mov	r22, r29
    2618:	2a ae 88 8b 	movea	-29816, r10, r21
    261c:	0c b0       	mov	r12, r22
    261e:	1d 30       	mov	r29, r6
    2620:	0a 3a       	mov	10, r7
    2622:	80 ff c6 65 	jarl	8be8 <___umodsi3>, lp
    2626:	0a 56 30 00 	addi	48, r10, r10
    262a:	1d 30       	mov	r29, r6
    262c:	5f e2       	add	-1, r28
    262e:	0a 3a       	mov	10, r7
    2630:	5c 57 00 00 	st.b	r10, 0[r28]
    2634:	80 ff 04 00 	jarl	2638 <__vfprintf_r+0xfe0>, lp
    2638:	44 fa       	add	4, lp
    263a:	75 00       	jmp	[r21]
    263c:	0a e8       	mov	r10, r29
    263e:	60 52       	cmp	0, r10
    2640:	fa ed       	bne	261e <__vfprintf_r+0xfc6>
    2642:	16 60       	mov	r22, r12
    2644:	03 b6 b4 00 	addi	180, sp, r22
    2648:	23 ef 21 00 	ld.w	32[sp], r29
    264c:	bc b1       	sub	r28, r22
    264e:	bf 07 5a f3 	jr	19a8 <__vfprintf_r+0x350>
    2652:	20 46 80 00 	movea	128, r0, r8
    2656:	14 30       	mov	r20, r6
    2658:	1d 38       	mov	r29, r7
    265a:	c3 41       	add	sp, r8
    265c:	80 ff 34 44 	jarl	6a90 <___sprint_r>, lp
    2660:	60 52       	cmp	0, r10
    2662:	b2 05       	be	2668 <__vfprintf_r+0x1010>
    2664:	bf 07 02 f5 	jr	1b66 <__vfprintf_r+0x50e>
    2668:	23 6f 89 00 	ld.w	136[sp], r13
    266c:	03 66 1c 01 	addi	284, sp, r12
    2670:	23 5f 45 00 	ld.w	68[sp], r11
    2674:	23 57 65 00 	ld.w	100[sp], r10
    2678:	23 77 41 00 	ld.w	64[sp], r14
    267c:	cb e1       	add	r11, r28
    267e:	ee 51       	cmp	r14, r10
    2680:	d6 55       	blt	272a <__vfprintf_r+0x10d2>
    2682:	db 5e 01 00 	andi	1, r27, r11
    2686:	aa 55       	bne	272a <__vfprintf_r+0x10d2>
    2688:	23 5f 41 00 	ld.w	64[sp], r11
    268c:	bc b9       	sub	r28, r23
    268e:	8b 51       	subr	r11, r10
    2690:	0a b0       	mov	r10, r22
    2692:	f7 51       	cmp	r23, r10
    2694:	a7 05       	ble	2698 <__vfprintf_r+0x1040>
    2696:	17 b0       	mov	r23, r22
    2698:	60 b2       	cmp	0, r22
    269a:	a7 15       	ble	26be <__vfprintf_r+0x1066>
    269c:	23 5f 85 00 	ld.w	132[sp], r11
    26a0:	d6 69       	add	r22, r13
    26a2:	6c e7 01 00 	st.w	r28, 0[r12]
    26a6:	6c b7 05 00 	st.w	r22, 4[r12]
    26aa:	41 5a       	add	1, r11
    26ac:	63 6f 89 00 	st.w	r13, 136[sp]
    26b0:	63 5f 85 00 	st.w	r11, 132[sp]
    26b4:	67 5a       	cmp	7, r11
    26b6:	b7 05       	ble	26bc <__vfprintf_r+0x1064>
    26b8:	80 07 4c 06 	jr	2d04 <__vfprintf_r+0x16ac>
    26bc:	48 62       	add	8, r12
    26be:	60 b2       	cmp	0, r22
    26c0:	be 05       	bge	26c6 <__vfprintf_r+0x106e>
    26c2:	80 07 6e 06 	jr	2d30 <__vfprintf_r+0x16d8>
    26c6:	0a e0       	mov	r10, r28
    26c8:	b6 e1       	sub	r22, r28
    26ca:	60 e2       	cmp	0, r28
    26cc:	bf 05       	bgt	26d2 <__vfprintf_r+0x107a>
    26ce:	bf 07 5a f9 	jr	2028 <__vfprintf_r+0x9d0>
    26d2:	20 be 10 00 	movea	16, r0, r23
    26d6:	63 c7 25 00 	st.w	r24, 36[sp]
    26da:	23 5f 85 00 	ld.w	132[sp], r11
    26de:	f7 e1       	cmp	r23, r28
    26e0:	ef 05       	bgt	26ec <__vfprintf_r+0x1094>
    26e2:	b5 8d       	br	25f8 <__vfprintf_r+0xfa0>
    26e4:	48 62       	add	8, r12
    26e6:	50 e2       	add	-16, r28
    26e8:	f7 e1       	cmp	r23, r28
    26ea:	f7 85       	ble	25f8 <__vfprintf_r+0xfa0>
    26ec:	6c c7 01 00 	st.w	r24, 0[r12]
    26f0:	6c bf 05 00 	st.w	r23, 4[r12]
    26f4:	0d 6e 10 00 	addi	16, r13, r13
    26f8:	41 5a       	add	1, r11
    26fa:	63 6f 89 00 	st.w	r13, 136[sp]
    26fe:	63 5f 85 00 	st.w	r11, 132[sp]
    2702:	67 5a       	cmp	7, r11
    2704:	87 f5       	ble	26e4 <__vfprintf_r+0x108c>
    2706:	20 46 80 00 	movea	128, r0, r8
    270a:	14 30       	mov	r20, r6
    270c:	1d 38       	mov	r29, r7
    270e:	c3 41       	add	sp, r8
    2710:	80 ff 80 43 	jarl	6a90 <___sprint_r>, lp
    2714:	60 52       	cmp	0, r10
    2716:	b2 05       	be	271c <__vfprintf_r+0x10c4>
    2718:	bf 07 4e f4 	jr	1b66 <__vfprintf_r+0x50e>
    271c:	23 6f 89 00 	ld.w	136[sp], r13
    2720:	23 5f 85 00 	ld.w	132[sp], r11
    2724:	03 66 1c 01 	addi	284, sp, r12
    2728:	f5 dd       	br	26e6 <__vfprintf_r+0x108e>
    272a:	23 77 3d 00 	ld.w	60[sp], r14
    272e:	23 5f 85 00 	ld.w	132[sp], r11
    2732:	6c 77 01 00 	st.w	r14, 0[r12]
    2736:	23 77 4d 00 	ld.w	76[sp], r14
    273a:	41 5a       	add	1, r11
    273c:	6c 77 05 00 	st.w	r14, 4[r12]
    2740:	ce 69       	add	r14, r13
    2742:	63 6f 89 00 	st.w	r13, 136[sp]
    2746:	63 5f 85 00 	st.w	r11, 132[sp]
    274a:	67 5a       	cmp	7, r11
    274c:	b7 05       	ble	2752 <__vfprintf_r+0x10fa>
    274e:	80 07 6c 05 	jr	2cba <__vfprintf_r+0x1662>
    2752:	48 62       	add	8, r12
    2754:	a5 9d       	br	2688 <__vfprintf_r+0x1030>
    2756:	db 56 01 00 	andi	1, r27, r10
    275a:	b2 05       	be	2760 <__vfprintf_r+0x1108>
    275c:	bf 07 ca fb 	jr	2326 <__vfprintf_r+0xcce>
    2760:	23 5f 85 00 	ld.w	132[sp], r11
    2764:	01 52       	mov	1, r10
    2766:	6c e7 01 00 	st.w	r28, 0[r12]
    276a:	6c 57 05 00 	st.w	r10, 4[r12]
    276e:	ca 69       	add	r10, r13
    2770:	ca 59       	add	r10, r11
    2772:	63 6f 89 00 	st.w	r13, 136[sp]
    2776:	63 5f 85 00 	st.w	r11, 132[sp]
    277a:	67 5a       	cmp	7, r11
    277c:	df 05       	bgt	2786 <__vfprintf_r+0x112e>
    277e:	0c be 08 00 	addi	8, r12, r23
    2782:	bf 07 3e fc 	jr	23c0 <__vfprintf_r+0xd68>
    2786:	20 46 80 00 	movea	128, r0, r8
    278a:	14 30       	mov	r20, r6
    278c:	1d 38       	mov	r29, r7
    278e:	c3 41       	add	sp, r8
    2790:	80 ff 00 43 	jarl	6a90 <___sprint_r>, lp
    2794:	60 52       	cmp	0, r10
    2796:	b2 05       	be	279c <__vfprintf_r+0x1144>
    2798:	bf 07 ce f3 	jr	1b66 <__vfprintf_r+0x50e>
    279c:	03 be 1c 01 	addi	284, sp, r23
    27a0:	23 6f 89 00 	ld.w	136[sp], r13
    27a4:	23 5f 85 00 	ld.w	132[sp], r11
    27a8:	bf 07 18 fc 	jr	23c0 <__vfprintf_r+0xd68>
    27ac:	20 46 80 00 	movea	128, r0, r8
    27b0:	14 30       	mov	r20, r6
    27b2:	1d 38       	mov	r29, r7
    27b4:	c3 41       	add	sp, r8
    27b6:	80 ff da 42 	jarl	6a90 <___sprint_r>, lp
    27ba:	60 52       	cmp	0, r10
    27bc:	b2 05       	be	27c2 <__vfprintf_r+0x116a>
    27be:	bf 07 a8 f3 	jr	1b66 <__vfprintf_r+0x50e>
    27c2:	23 6f 89 00 	ld.w	136[sp], r13
    27c6:	23 5f 85 00 	ld.w	132[sp], r11
    27ca:	03 66 1c 01 	addi	284, sp, r12
    27ce:	bf 07 7c fb 	jr	234a <__vfprintf_r+0xcf2>
    27d2:	23 67 25 00 	ld.w	36[sp], r12
    27d6:	77 e7 05 00 	st.w	r28, 4[r23]
    27da:	77 67 01 00 	st.w	r12, 0[r23]
    27de:	dc 69       	add	r28, r13
    27e0:	bf 07 cc fb 	jr	23ac <__vfprintf_r+0xd54>
    27e4:	20 46 80 00 	movea	128, r0, r8
    27e8:	14 30       	mov	r20, r6
    27ea:	1d 38       	mov	r29, r7
    27ec:	c3 41       	add	sp, r8
    27ee:	80 ff a2 42 	jarl	6a90 <___sprint_r>, lp
    27f2:	60 52       	cmp	0, r10
    27f4:	b2 05       	be	27fa <__vfprintf_r+0x11a2>
    27f6:	bf 07 70 f3 	jr	1b66 <__vfprintf_r+0x50e>
    27fa:	23 6f 89 00 	ld.w	136[sp], r13
    27fe:	23 5f 85 00 	ld.w	132[sp], r11
    2802:	03 be 1c 01 	addi	284, sp, r23
    2806:	bf 07 6c fb 	jr	2372 <__vfprintf_r+0xd1a>
    280a:	20 46 80 00 	movea	128, r0, r8
    280e:	14 30       	mov	r20, r6
    2810:	1d 38       	mov	r29, r7
    2812:	c3 41       	add	sp, r8
    2814:	80 ff 7c 42 	jarl	6a90 <___sprint_r>, lp
    2818:	60 52       	cmp	0, r10
    281a:	b2 05       	be	2820 <__vfprintf_r+0x11c8>
    281c:	bf 07 4a f3 	jr	1b66 <__vfprintf_r+0x50e>
    2820:	23 6f 89 00 	ld.w	136[sp], r13
    2824:	03 66 1c 01 	addi	284, sp, r12
    2828:	bf 07 4c f7 	jr	1f74 <__vfprintf_r+0x91c>
    282c:	20 56 2d 00 	movea	45, r0, r10
    2830:	43 57 61 00 	st.b	r10, 97[sp]
    2834:	80 b1       	subr	r0, r22
    2836:	01 52       	mov	1, r10
    2838:	bf 07 36 f1 	jr	196e <__vfprintf_r+0x316>
    283c:	63 67 15 00 	st.w	r12, 20[sp]
    2840:	80 ff 04 00 	jarl	2844 <__vfprintf_r+0x11ec>, lp
    2844:	44 fa       	add	4, lp
    2846:	7c 00       	jmp	[r28]
    2848:	23 67 15 00 	ld.w	20[sp], r12
    284c:	60 52       	cmp	0, r10
    284e:	ba 05       	bne	2854 <__vfprintf_r+0x11fc>
    2850:	80 07 28 03 	jr	2b78 <__vfprintf_r+0x1520>
    2854:	7f 12       	cmp	-1, r2
    2856:	ba 05       	bne	285c <__vfprintf_r+0x1204>
    2858:	80 07 82 06 	jr	2eda <__vfprintf_r+0x1882>
    285c:	20 56 67 00 	movea	103, r0, r10
    2860:	ea b9       	cmp	r10, r23
    2862:	ba 05       	bne	2868 <__vfprintf_r+0x1210>
    2864:	80 07 00 06 	jr	2e64 <__vfprintf_r+0x180c>
    2868:	20 56 47 00 	movea	71, r0, r10
    286c:	ea b9       	cmp	r10, r23
    286e:	ba 05       	bne	2874 <__vfprintf_r+0x121c>
    2870:	80 07 f4 05 	jr	2e64 <__vfprintf_r+0x180c>
    2874:	9b 76 00 01 	ori	256, r27, r14
    2878:	63 77 25 00 	st.w	r14, 36[sp]
    287c:	60 b2       	cmp	0, r22
    287e:	be 05       	bge	2884 <__vfprintf_r+0x122c>
    2880:	80 07 40 06 	jr	2ec0 <__vfprintf_r+0x1868>
    2884:	63 07 35 00 	st.w	r0, 52[sp]
    2888:	20 56 66 00 	movea	102, r0, r10
    288c:	ea b9       	cmp	r10, r23
    288e:	ba 05       	bne	2894 <__vfprintf_r+0x123c>
    2890:	80 07 7c 05 	jr	2e0c <__vfprintf_r+0x17b4>
    2894:	20 56 46 00 	movea	70, r0, r10
    2898:	ea b9       	cmp	r10, r23
    289a:	ba 05       	bne	28a0 <__vfprintf_r+0x1248>
    289c:	80 07 70 05 	jr	2e0c <__vfprintf_r+0x17b4>
    28a0:	20 56 65 00 	movea	101, r0, r10
    28a4:	ea b9       	cmp	r10, r23
    28a6:	ba 05       	bne	28ac <__vfprintf_r+0x1254>
    28a8:	80 07 2a 06 	jr	2ed2 <__vfprintf_r+0x187a>
    28ac:	20 56 45 00 	movea	69, r0, r10
    28b0:	ea b9       	cmp	r10, r23
    28b2:	ba 05       	bne	28b8 <__vfprintf_r+0x1260>
    28b4:	80 07 1e 06 	jr	2ed2 <__vfprintf_r+0x187a>
    28b8:	02 68       	mov	r2, r13
    28ba:	03 76 64 00 	addi	100, sp, r14
    28be:	03 5e 68 00 	addi	104, sp, r11
    28c2:	03 56 6c 00 	addi	108, sp, r10
    28c6:	02 8a       	mov	2, r17
    28c8:	14 30       	mov	r20, r6
    28ca:	15 40       	mov	r21, r8
    28cc:	16 48       	mov	r22, r9
    28ce:	63 6f 05 00 	st.w	r13, 4[sp]
    28d2:	63 67 15 00 	st.w	r12, 20[sp]
    28d6:	63 6f 19 00 	st.w	r13, 24[sp]
    28da:	63 8f 01 00 	st.w	r17, 0[sp]
    28de:	63 77 09 00 	st.w	r14, 8[sp]
    28e2:	63 5f 0d 00 	st.w	r11, 12[sp]
    28e6:	63 57 11 00 	st.w	r10, 16[sp]
    28ea:	80 ff 2a 0c 	jarl	3514 <__dtoa_r>, lp
    28ee:	0a e0       	mov	r10, r28
    28f0:	20 56 67 00 	movea	103, r0, r10
    28f4:	23 67 15 00 	ld.w	20[sp], r12
    28f8:	23 6f 19 00 	ld.w	24[sp], r13
    28fc:	ea b9       	cmp	r10, r23
    28fe:	d2 05       	be	2908 <__vfprintf_r+0x12b0>
    2900:	20 56 47 00 	movea	71, r0, r10
    2904:	ea b9       	cmp	r10, r23
    2906:	ea 05       	bne	2912 <__vfprintf_r+0x12ba>
    2908:	db 56 01 00 	andi	1, r27, r10
    290c:	ba 05       	bne	2912 <__vfprintf_r+0x12ba>
    290e:	80 07 d2 05 	jr	2ee0 <__vfprintf_r+0x1888>
    2912:	1c 58       	mov	r28, r11
    2914:	20 56 46 00 	movea	70, r0, r10
    2918:	cd 59       	add	r13, r11
    291a:	ea b9       	cmp	r10, r23
    291c:	ba 05       	bne	2922 <__vfprintf_r+0x12ca>
    291e:	80 07 2a 05 	jr	2e48 <__vfprintf_r+0x17f0>
    2922:	15 30       	mov	r21, r6
    2924:	16 38       	mov	r22, r7
    2926:	00 42       	mov	0, r8
    2928:	00 4a       	mov	0, r9
    292a:	63 5f 1d 00 	st.w	r11, 28[sp]
    292e:	63 67 15 00 	st.w	r12, 20[sp]
    2932:	80 ff da 6c 	jarl	960c <___eqdf2>, lp
    2936:	23 5f 1d 00 	ld.w	28[sp], r11
    293a:	23 67 15 00 	ld.w	20[sp], r12
    293e:	60 52       	cmp	0, r10
    2940:	82 15       	be	2960 <__vfprintf_r+0x1308>
    2942:	23 57 6d 00 	ld.w	108[sp], r10
    2946:	ea 59       	cmp	r10, r11
    2948:	bb 05       	bh	294e <__vfprintf_r+0x12f6>
    294a:	80 07 14 07 	jr	305e <__vfprintf_r+0x1a06>
    294e:	20 6e 30 00 	movea	48, r0, r13
    2952:	4a 6f 00 00 	st.b	r13, 0[r10]
    2956:	41 52       	add	1, r10
    2958:	63 57 6d 00 	st.w	r10, 108[sp]
    295c:	eb 51       	cmp	r11, r10
    295e:	aa fd       	bne	2952 <__vfprintf_r+0x12fa>
    2960:	bc 59       	sub	r28, r11
    2962:	63 5f 41 00 	st.w	r11, 64[sp]
    2966:	20 56 67 00 	movea	103, r0, r10
    296a:	ea b9       	cmp	r10, r23
    296c:	ba 05       	bne	2972 <__vfprintf_r+0x131a>
    296e:	80 07 f8 03 	jr	2d66 <__vfprintf_r+0x170e>
    2972:	20 56 47 00 	movea	71, r0, r10
    2976:	ea b9       	cmp	r10, r23
    2978:	ba 05       	bne	297e <__vfprintf_r+0x1326>
    297a:	80 07 ec 03 	jr	2d66 <__vfprintf_r+0x170e>
    297e:	20 56 66 00 	movea	102, r0, r10
    2982:	ea b9       	cmp	r10, r23
    2984:	b2 05       	be	298a <__vfprintf_r+0x1332>
    2986:	80 07 ee 06 	jr	3074 <__vfprintf_r+0x1a1c>
    298a:	23 57 65 00 	ld.w	100[sp], r10
    298e:	60 52       	cmp	0, r10
    2990:	bf 05       	bgt	2996 <__vfprintf_r+0x133e>
    2992:	80 07 74 06 	jr	3006 <__vfprintf_r+0x19ae>
    2996:	60 12       	cmp	0, r2
    2998:	b2 05       	be	299e <__vfprintf_r+0x1346>
    299a:	80 07 3c 06 	jr	2fd6 <__vfprintf_r+0x197e>
    299e:	db de 01 00 	andi	1, r27, r27
    29a2:	b2 05       	be	29a8 <__vfprintf_r+0x1350>
    29a4:	80 07 32 06 	jr	2fd6 <__vfprintf_r+0x197e>
    29a8:	0a b0       	mov	r10, r22
    29aa:	63 57 21 00 	st.w	r10, 32[sp]
    29ae:	63 57 45 00 	st.w	r10, 68[sp]
    29b2:	23 6f 35 00 	ld.w	52[sp], r13
    29b6:	60 6a       	cmp	0, r13
    29b8:	ba 05       	bne	29be <__vfprintf_r+0x1366>
    29ba:	80 07 7c 03 	jr	2d36 <__vfprintf_r+0x16de>
    29be:	20 56 2d 00 	movea	45, r0, r10
    29c2:	43 57 61 00 	st.b	r10, 97[sp]
    29c6:	23 df 25 00 	ld.w	36[sp], r27
    29ca:	63 07 39 00 	st.w	r0, 56[sp]
    29ce:	bf 07 fa ef 	jr	19c8 <__vfprintf_r+0x370>
    29d2:	23 5f 2d 00 	ld.w	44[sp], r11
    29d6:	2b af 01 00 	ld.w	0[r11], r21
    29da:	2b b7 05 00 	ld.w	4[r11], r22
    29de:	48 5a       	add	8, r11
    29e0:	63 af 51 00 	st.w	r21, 80[sp]
    29e4:	63 b7 55 00 	st.w	r22, 84[sp]
    29e8:	63 5f 2d 00 	st.w	r11, 44[sp]
    29ec:	bf 07 5c f3 	jr	1d48 <__vfprintf_r+0x6f0>
    29f0:	23 6f 2d 00 	ld.w	44[sp], r13
    29f4:	00 52       	mov	0, r10
    29f6:	2d b7 01 00 	ld.w	0[r13], r22
    29fa:	44 6a       	add	4, r13
    29fc:	63 6f 2d 00 	st.w	r13, 44[sp]
    2a00:	bf 07 6a ef 	jr	196a <__vfprintf_r+0x312>
    2a04:	23 5f 2d 00 	ld.w	44[sp], r11
    2a08:	01 52       	mov	1, r10
    2a0a:	2b b7 01 00 	ld.w	0[r11], r22
    2a0e:	44 5a       	add	4, r11
    2a10:	63 5f 2d 00 	st.w	r11, 44[sp]
    2a14:	bf 07 56 ef 	jr	196a <__vfprintf_r+0x312>
    2a18:	db de 40 00 	andi	64, r27, r27
    2a1c:	ba 05       	bne	2a22 <__vfprintf_r+0x13ca>
    2a1e:	80 07 90 01 	jr	2bae <__vfprintf_r+0x1556>
    2a22:	23 6f 2d 00 	ld.w	44[sp], r13
    2a26:	23 77 29 00 	ld.w	40[sp], r14
    2a2a:	2d 57 01 00 	ld.w	0[r13], r10
    2a2e:	44 6a       	add	4, r13
    2a30:	63 6f 2d 00 	st.w	r13, 44[sp]
    2a34:	6a 77 00 00 	st.h	r14, 0[r10]
    2a38:	bf 07 0a ed 	jr	1742 <__vfprintf_r+0xea>
    2a3c:	23 6f 2d 00 	ld.w	44[sp], r13
    2a40:	2d b7 01 00 	ld.w	0[r13], r22
    2a44:	44 6a       	add	4, r13
    2a46:	63 6f 2d 00 	st.w	r13, 44[sp]
    2a4a:	bf 07 ba ee 	jr	1904 <__vfprintf_r+0x2ac>
    2a4e:	23 5f 2d 00 	ld.w	44[sp], r11
    2a52:	2b b7 01 00 	ld.w	0[r11], r22
    2a56:	44 5a       	add	4, r11
    2a58:	63 5f 2d 00 	st.w	r11, 44[sp]
    2a5c:	bf 07 74 f2 	jr	1cd0 <__vfprintf_r+0x678>
    2a60:	23 77 25 00 	ld.w	36[sp], r14
    2a64:	6c af 05 00 	st.w	r21, 4[r12]
    2a68:	6c 77 01 00 	st.w	r14, 0[r12]
    2a6c:	d5 69       	add	r21, r13
    2a6e:	41 5a       	add	1, r11
    2a70:	63 6f 89 00 	st.w	r13, 136[sp]
    2a74:	63 5f 85 00 	st.w	r11, 132[sp]
    2a78:	67 5a       	cmp	7, r11
    2a7a:	b7 05       	ble	2a80 <__vfprintf_r+0x1428>
    2a7c:	bf 07 d6 fb 	jr	2652 <__vfprintf_r+0xffa>
    2a80:	48 62       	add	8, r12
    2a82:	bf 07 ee fb 	jr	2670 <__vfprintf_r+0x1018>
    2a86:	20 46 80 00 	movea	128, r0, r8
    2a8a:	14 30       	mov	r20, r6
    2a8c:	1d 38       	mov	r29, r7
    2a8e:	c3 41       	add	sp, r8
    2a90:	80 ff 00 40 	jarl	6a90 <___sprint_r>, lp
    2a94:	60 52       	cmp	0, r10
    2a96:	b2 05       	be	2a9c <__vfprintf_r+0x1444>
    2a98:	bf 07 ce f0 	jr	1b66 <__vfprintf_r+0x50e>
    2a9c:	23 6f 89 00 	ld.w	136[sp], r13
    2aa0:	03 66 1c 01 	addi	284, sp, r12
    2aa4:	bf 07 14 f7 	jr	21b8 <__vfprintf_r+0xb60>
    2aa8:	40 56 01 00 	movhi	1, r0, r10
    2aac:	23 5f 85 00 	ld.w	132[sp], r11
    2ab0:	2a 56 ac 9f 	movea	-24660, r10, r10
    2ab4:	6c 57 01 00 	st.w	r10, 0[r12]
    2ab8:	01 52       	mov	1, r10
    2aba:	6c 57 05 00 	st.w	r10, 4[r12]
    2abe:	ca 69       	add	r10, r13
    2ac0:	ca 59       	add	r10, r11
    2ac2:	63 6f 89 00 	st.w	r13, 136[sp]
    2ac6:	63 5f 85 00 	st.w	r11, 132[sp]
    2aca:	67 5a       	cmp	7, r11
    2acc:	b7 05       	ble	2ad2 <__vfprintf_r+0x147a>
    2ace:	80 07 06 01 	jr	2bd4 <__vfprintf_r+0x157c>
    2ad2:	48 62       	add	8, r12
    2ad4:	60 ba       	cmp	0, r23
    2ad6:	aa 0d       	bne	2aea <__vfprintf_r+0x1492>
    2ad8:	23 5f 41 00 	ld.w	64[sp], r11
    2adc:	60 5a       	cmp	0, r11
    2ade:	ea 05       	bne	2aea <__vfprintf_r+0x1492>
    2ae0:	db 56 01 00 	andi	1, r27, r10
    2ae4:	ba 05       	bne	2aea <__vfprintf_r+0x1492>
    2ae6:	bf 07 42 f5 	jr	2028 <__vfprintf_r+0x9d0>
    2aea:	23 77 3d 00 	ld.w	60[sp], r14
    2aee:	23 5f 85 00 	ld.w	132[sp], r11
    2af2:	6c 77 01 00 	st.w	r14, 0[r12]
    2af6:	23 77 4d 00 	ld.w	76[sp], r14
    2afa:	41 5a       	add	1, r11
    2afc:	6c 77 05 00 	st.w	r14, 4[r12]
    2b00:	ce 69       	add	r14, r13
    2b02:	63 6f 89 00 	st.w	r13, 136[sp]
    2b06:	63 5f 85 00 	st.w	r11, 132[sp]
    2b0a:	67 5a       	cmp	7, r11
    2b0c:	b7 05       	ble	2b12 <__vfprintf_r+0x14ba>
    2b0e:	80 07 64 03 	jr	2e72 <__vfprintf_r+0x181a>
    2b12:	48 62       	add	8, r12
    2b14:	80 b9       	subr	r0, r23
    2b16:	60 ba       	cmp	0, r23
    2b18:	bf 05       	bgt	2b1e <__vfprintf_r+0x14c6>
    2b1a:	80 07 46 01 	jr	2c60 <__vfprintf_r+0x1608>
    2b1e:	20 ae 10 00 	movea	16, r0, r21
    2b22:	63 c7 25 00 	st.w	r24, 36[sp]
    2b26:	f5 b9       	cmp	r21, r23
    2b28:	9f 0d       	bgt	2b3a <__vfprintf_r+0x14e2>
    2b2a:	80 07 70 01 	jr	2c9a <__vfprintf_r+0x1642>
    2b2e:	48 62       	add	8, r12
    2b30:	50 ba       	add	-16, r23
    2b32:	f5 b9       	cmp	r21, r23
    2b34:	bf 05       	bgt	2b3a <__vfprintf_r+0x14e2>
    2b36:	80 07 64 01 	jr	2c9a <__vfprintf_r+0x1642>
    2b3a:	6c c7 01 00 	st.w	r24, 0[r12]
    2b3e:	6c af 05 00 	st.w	r21, 4[r12]
    2b42:	0d 6e 10 00 	addi	16, r13, r13
    2b46:	41 5a       	add	1, r11
    2b48:	63 6f 89 00 	st.w	r13, 136[sp]
    2b4c:	63 5f 85 00 	st.w	r11, 132[sp]
    2b50:	67 5a       	cmp	7, r11
    2b52:	e7 ed       	ble	2b2e <__vfprintf_r+0x14d6>
    2b54:	20 46 80 00 	movea	128, r0, r8
    2b58:	14 30       	mov	r20, r6
    2b5a:	1d 38       	mov	r29, r7
    2b5c:	c3 41       	add	sp, r8
    2b5e:	80 ff 32 3f 	jarl	6a90 <___sprint_r>, lp
    2b62:	60 52       	cmp	0, r10
    2b64:	b2 05       	be	2b6a <__vfprintf_r+0x1512>
    2b66:	bf 07 00 f0 	jr	1b66 <__vfprintf_r+0x50e>
    2b6a:	23 6f 89 00 	ld.w	136[sp], r13
    2b6e:	23 5f 85 00 	ld.w	132[sp], r11
    2b72:	03 66 1c 01 	addi	284, sp, r12
    2b76:	d5 dd       	br	2b30 <__vfprintf_r+0x14d8>
    2b78:	20 56 47 00 	movea	71, r0, r10
    2b7c:	ea b9       	cmp	r10, r23
    2b7e:	b7 05       	ble	2b84 <__vfprintf_r+0x152c>
    2b80:	80 07 da 01 	jr	2d5a <__vfprintf_r+0x1702>
    2b84:	40 e6 01 00 	movhi	1, r0, r28
    2b88:	3c e6 7b 9f 	movea	-24709, r28, r28
    2b8c:	03 57 61 00 	ld.b	97[sp], r10
    2b90:	03 5a       	mov	3, r11
    2b92:	d8 52       	shl	24, r10
    2b94:	20 6e 7f ff 	movea	-129, r0, r13
    2b98:	63 5f 21 00 	st.w	r11, 32[sp]
    2b9c:	4d d9       	and	r13, r27
    2b9e:	b8 52       	sar	24, r10
    2ba0:	0b b0       	mov	r11, r22
    2ba2:	63 07 39 00 	st.w	r0, 56[sp]
    2ba6:	63 07 45 00 	st.w	r0, 68[sp]
    2baa:	bf 07 1a ee 	jr	19c4 <__vfprintf_r+0x36c>
    2bae:	23 5f 2d 00 	ld.w	44[sp], r11
    2bb2:	23 6f 29 00 	ld.w	40[sp], r13
    2bb6:	2b 57 01 00 	ld.w	0[r11], r10
    2bba:	44 5a       	add	4, r11
    2bbc:	63 5f 2d 00 	st.w	r11, 44[sp]
    2bc0:	6a 6f 01 00 	st.w	r13, 0[r10]
    2bc4:	bf 07 7e eb 	jr	1742 <__vfprintf_r+0xea>
    2bc8:	40 e6 01 00 	movhi	1, r0, r28
    2bcc:	3c e6 73 9f 	movea	-24717, r28, r28
    2bd0:	bf 07 d0 f1 	jr	1da0 <__vfprintf_r+0x748>
    2bd4:	20 46 80 00 	movea	128, r0, r8
    2bd8:	14 30       	mov	r20, r6
    2bda:	1d 38       	mov	r29, r7
    2bdc:	c3 41       	add	sp, r8
    2bde:	80 ff b2 3e 	jarl	6a90 <___sprint_r>, lp
    2be2:	60 52       	cmp	0, r10
    2be4:	b2 05       	be	2bea <__vfprintf_r+0x1592>
    2be6:	bf 07 80 ef 	jr	1b66 <__vfprintf_r+0x50e>
    2bea:	23 bf 65 00 	ld.w	100[sp], r23
    2bee:	23 6f 89 00 	ld.w	136[sp], r13
    2bf2:	03 66 1c 01 	addi	284, sp, r12
    2bf6:	bf 07 de fe 	jr	2ad4 <__vfprintf_r+0x147c>
    2bfa:	20 46 80 00 	movea	128, r0, r8
    2bfe:	14 30       	mov	r20, r6
    2c00:	1d 38       	mov	r29, r7
    2c02:	c3 41       	add	sp, r8
    2c04:	80 ff 8c 3e 	jarl	6a90 <___sprint_r>, lp
    2c08:	60 52       	cmp	0, r10
    2c0a:	b2 05       	be	2c10 <__vfprintf_r+0x15b8>
    2c0c:	bf 07 5a ef 	jr	1b66 <__vfprintf_r+0x50e>
    2c10:	23 6f 89 00 	ld.w	136[sp], r13
    2c14:	03 66 1c 01 	addi	284, sp, r12
    2c18:	bf 07 e0 f5 	jr	21f8 <__vfprintf_r+0xba0>
    2c1c:	63 67 15 00 	st.w	r12, 20[sp]
    2c20:	80 ff 40 3e 	jarl	6a60 <_strlen>, lp
    2c24:	63 57 21 00 	st.w	r10, 32[sp]
    2c28:	0a b0       	mov	r10, r22
    2c2a:	23 67 15 00 	ld.w	20[sp], r12
    2c2e:	60 52       	cmp	0, r10
    2c30:	b6 05       	blt	2c36 <__vfprintf_r+0x15de>
    2c32:	bf 07 2a f0 	jr	1c5c <__vfprintf_r+0x604>
    2c36:	63 07 21 00 	st.w	r0, 32[sp]
    2c3a:	bf 07 22 f0 	jr	1c5c <__vfprintf_r+0x604>
    2c3e:	20 46 80 00 	movea	128, r0, r8
    2c42:	14 30       	mov	r20, r6
    2c44:	1d 38       	mov	r29, r7
    2c46:	c3 41       	add	sp, r8
    2c48:	80 ff 48 3e 	jarl	6a90 <___sprint_r>, lp
    2c4c:	60 52       	cmp	0, r10
    2c4e:	b2 05       	be	2c54 <__vfprintf_r+0x15fc>
    2c50:	bf 07 16 ef 	jr	1b66 <__vfprintf_r+0x50e>
    2c54:	23 6f 89 00 	ld.w	136[sp], r13
    2c58:	23 5f 85 00 	ld.w	132[sp], r11
    2c5c:	03 66 1c 01 	addi	284, sp, r12
    2c60:	23 77 41 00 	ld.w	64[sp], r14
    2c64:	6c e7 01 00 	st.w	r28, 0[r12]
    2c68:	6c 77 05 00 	st.w	r14, 4[r12]
    2c6c:	ce 69       	add	r14, r13
    2c6e:	bf 07 a6 f3 	jr	2014 <__vfprintf_r+0x9bc>
    2c72:	20 46 80 00 	movea	128, r0, r8
    2c76:	14 30       	mov	r20, r6
    2c78:	1d 38       	mov	r29, r7
    2c7a:	c3 41       	add	sp, r8
    2c7c:	80 ff 14 3e 	jarl	6a90 <___sprint_r>, lp
    2c80:	60 52       	cmp	0, r10
    2c82:	b2 05       	be	2c88 <__vfprintf_r+0x1630>
    2c84:	bf 07 e2 ee 	jr	1b66 <__vfprintf_r+0x50e>
    2c88:	23 6f 89 00 	ld.w	136[sp], r13
    2c8c:	03 66 1c 01 	addi	284, sp, r12
    2c90:	bf 07 6a f8 	jr	24fa <__vfprintf_r+0xea2>
    2c94:	00 aa       	mov	0, r21
    2c96:	bf 07 6c f8 	jr	2502 <__vfprintf_r+0xeaa>
    2c9a:	23 77 25 00 	ld.w	36[sp], r14
    2c9e:	6c bf 05 00 	st.w	r23, 4[r12]
    2ca2:	6c 77 01 00 	st.w	r14, 0[r12]
    2ca6:	d7 69       	add	r23, r13
    2ca8:	41 5a       	add	1, r11
    2caa:	63 6f 89 00 	st.w	r13, 136[sp]
    2cae:	63 5f 85 00 	st.w	r11, 132[sp]
    2cb2:	67 5a       	cmp	7, r11
    2cb4:	df c5       	bgt	2c3e <__vfprintf_r+0x15e6>
    2cb6:	48 62       	add	8, r12
    2cb8:	c5 d5       	br	2c60 <__vfprintf_r+0x1608>
    2cba:	20 46 80 00 	movea	128, r0, r8
    2cbe:	14 30       	mov	r20, r6
    2cc0:	1d 38       	mov	r29, r7
    2cc2:	c3 41       	add	sp, r8
    2cc4:	80 ff cc 3d 	jarl	6a90 <___sprint_r>, lp
    2cc8:	60 52       	cmp	0, r10
    2cca:	b2 05       	be	2cd0 <__vfprintf_r+0x1678>
    2ccc:	bf 07 9a ee 	jr	1b66 <__vfprintf_r+0x50e>
    2cd0:	23 57 65 00 	ld.w	100[sp], r10
    2cd4:	23 6f 89 00 	ld.w	136[sp], r13
    2cd8:	03 66 1c 01 	addi	284, sp, r12
    2cdc:	bf 07 ac f9 	jr	2688 <__vfprintf_r+0x1030>
    2ce0:	02 b0       	mov	r2, r22
    2ce2:	66 12       	cmp	6, r2
    2ce4:	a3 05       	bnh	2ce8 <__vfprintf_r+0x1690>
    2ce6:	06 b2       	mov	6, r22
    2ce8:	63 b7 21 00 	st.w	r22, 32[sp]
    2cec:	60 b2       	cmp	0, r22
    2cee:	be 05       	bge	2cf4 <__vfprintf_r+0x169c>
    2cf0:	80 07 c6 02 	jr	2fb6 <__vfprintf_r+0x195e>
    2cf4:	40 e6 01 00 	movhi	1, r0, r28
    2cf8:	63 af 2d 00 	st.w	r21, 44[sp]
    2cfc:	3c e6 a5 9f 	movea	-24667, r28, r28
    2d00:	bf 07 fc ea 	jr	17fc <__vfprintf_r+0x1a4>
    2d04:	20 46 80 00 	movea	128, r0, r8
    2d08:	14 30       	mov	r20, r6
    2d0a:	1d 38       	mov	r29, r7
    2d0c:	c3 41       	add	sp, r8
    2d0e:	80 ff 82 3d 	jarl	6a90 <___sprint_r>, lp
    2d12:	60 52       	cmp	0, r10
    2d14:	b2 05       	be	2d1a <__vfprintf_r+0x16c2>
    2d16:	bf 07 50 ee 	jr	1b66 <__vfprintf_r+0x50e>
    2d1a:	23 67 41 00 	ld.w	64[sp], r12
    2d1e:	23 57 65 00 	ld.w	100[sp], r10
    2d22:	23 6f 89 00 	ld.w	136[sp], r13
    2d26:	8c 51       	subr	r12, r10
    2d28:	03 66 1c 01 	addi	284, sp, r12
    2d2c:	bf 07 92 f9 	jr	26be <__vfprintf_r+0x1066>
    2d30:	00 b2       	mov	0, r22
    2d32:	bf 07 94 f9 	jr	26c6 <__vfprintf_r+0x106e>
    2d36:	03 57 61 00 	ld.b	97[sp], r10
    2d3a:	23 df 25 00 	ld.w	36[sp], r27
    2d3e:	d8 52       	shl	24, r10
    2d40:	b8 52       	sar	24, r10
    2d42:	63 07 39 00 	st.w	r0, 56[sp]
    2d46:	bf 07 7e ec 	jr	19c4 <__vfprintf_r+0x36c>
    2d4a:	20 5e 2d 00 	movea	45, r0, r11
    2d4e:	20 56 2d 00 	movea	45, r0, r10
    2d52:	43 5f 61 00 	st.b	r11, 97[sp]
    2d56:	bf 07 36 f0 	jr	1d8c <__vfprintf_r+0x734>
    2d5a:	40 e6 01 00 	movhi	1, r0, r28
    2d5e:	3c e6 7f 9f 	movea	-24705, r28, r28
    2d62:	bf 07 2a fe 	jr	2b8c <__vfprintf_r+0x1534>
    2d66:	23 57 65 00 	ld.w	100[sp], r10
    2d6a:	0a 58       	mov	r10, r11
    2d6c:	7d 52       	cmp	-3, r10
    2d6e:	b6 05       	blt	2d74 <__vfprintf_r+0x171c>
    2d70:	ea 11       	cmp	r10, r2
    2d72:	de 35       	bge	2ddc <__vfprintf_r+0x1784>
    2d74:	5e ba       	add	-2, r23
    2d76:	0b b6 ff ff 	addi	-1, r11, r22
    2d7a:	63 b7 65 00 	st.w	r22, 100[sp]
    2d7e:	43 bf 72 00 	st.b	r23, 114[sp]
    2d82:	60 b2       	cmp	0, r22
    2d84:	be 05       	bge	2d8a <__vfprintf_r+0x1732>
    2d86:	80 07 6a 02 	jr	2ff0 <__vfprintf_r+0x1998>
    2d8a:	20 56 2b 00 	movea	43, r0, r10
    2d8e:	43 57 73 00 	st.b	r10, 115[sp]
    2d92:	69 b2       	cmp	9, r22
    2d94:	b7 05       	ble	2d9a <__vfprintf_r+0x1742>
    2d96:	80 07 52 01 	jr	2ee8 <__vfprintf_r+0x1890>
    2d9a:	20 56 30 00 	movea	48, r0, r10
    2d9e:	16 5e 30 00 	addi	48, r22, r11
    2da2:	43 57 74 00 	st.b	r10, 116[sp]
    2da6:	03 56 76 00 	addi	118, sp, r10
    2daa:	43 5f 75 00 	st.b	r11, 117[sp]
    2dae:	03 5e 72 00 	addi	114, sp, r11
    2db2:	ab 51       	sub	r11, r10
    2db4:	23 b7 41 00 	ld.w	64[sp], r22
    2db8:	23 6f 41 00 	ld.w	64[sp], r13
    2dbc:	63 57 59 00 	st.w	r10, 88[sp]
    2dc0:	ca b1       	add	r10, r22
    2dc2:	61 6a       	cmp	1, r13
    2dc4:	87 25       	ble	2e04 <__vfprintf_r+0x17ac>
    2dc6:	41 b2       	add	1, r22
    2dc8:	63 b7 21 00 	st.w	r22, 32[sp]
    2dcc:	60 b2       	cmp	0, r22
    2dce:	be 05       	bge	2dd4 <__vfprintf_r+0x177c>
    2dd0:	80 07 86 02 	jr	3056 <__vfprintf_r+0x19fe>
    2dd4:	63 07 45 00 	st.w	r0, 68[sp]
    2dd8:	bf 07 da fb 	jr	29b2 <__vfprintf_r+0x135a>
    2ddc:	23 77 41 00 	ld.w	64[sp], r14
    2de0:	ee 51       	cmp	r14, r10
    2de2:	d6 5d       	blt	2e9c <__vfprintf_r+0x1844>
    2de4:	db de 01 00 	andi	1, r27, r27
    2de8:	b2 05       	be	2dee <__vfprintf_r+0x1796>
    2dea:	80 07 d4 01 	jr	2fbe <__vfprintf_r+0x1966>
    2dee:	63 57 21 00 	st.w	r10, 32[sp]
    2df2:	60 52       	cmp	0, r10
    2df4:	be 05       	bge	2dfa <__vfprintf_r+0x17a2>
    2df6:	80 07 6e 02 	jr	3064 <__vfprintf_r+0x1a0c>
    2dfa:	0b b0       	mov	r11, r22
    2dfc:	20 be 67 00 	movea	103, r0, r23
    2e00:	bf 07 ae fb 	jr	29ae <__vfprintf_r+0x1356>
    2e04:	db de 01 00 	andi	1, r27, r27
    2e08:	fa dd       	bne	2dc6 <__vfprintf_r+0x176e>
    2e0a:	f5 dd       	br	2dc8 <__vfprintf_r+0x1770>
    2e0c:	03 6e 64 00 	addi	100, sp, r13
    2e10:	03 5e 68 00 	addi	104, sp, r11
    2e14:	03 56 6c 00 	addi	108, sp, r10
    2e18:	03 72       	mov	3, r14
    2e1a:	14 30       	mov	r20, r6
    2e1c:	15 40       	mov	r21, r8
    2e1e:	16 48       	mov	r22, r9
    2e20:	63 6f 09 00 	st.w	r13, 8[sp]
    2e24:	63 5f 0d 00 	st.w	r11, 12[sp]
    2e28:	63 67 15 00 	st.w	r12, 20[sp]
    2e2c:	63 77 01 00 	st.w	r14, 0[sp]
    2e30:	63 17 05 00 	st.w	r2, 4[sp]
    2e34:	63 57 11 00 	st.w	r10, 16[sp]
    2e38:	80 ff dc 06 	jarl	3514 <__dtoa_r>, lp
    2e3c:	0a 58       	mov	r10, r11
    2e3e:	23 67 15 00 	ld.w	20[sp], r12
    2e42:	0a e0       	mov	r10, r28
    2e44:	c2 59       	add	r2, r11
    2e46:	02 68       	mov	r2, r13
    2e48:	1c 77 00 00 	ld.b	0[r28], r14
    2e4c:	40 56 00 30 	movhi	12288, r0, r10
    2e50:	d8 72       	shl	24, r14
    2e52:	ea 71       	cmp	r10, r14
    2e54:	ba 05       	bne	2e5a <__vfprintf_r+0x1802>
    2e56:	80 07 26 01 	jr	2f7c <__vfprintf_r+0x1924>
    2e5a:	23 57 65 00 	ld.w	100[sp], r10
    2e5e:	ca 59       	add	r10, r11
    2e60:	bf 07 c2 fa 	jr	2922 <__vfprintf_r+0x12ca>
    2e64:	60 12       	cmp	0, r2
    2e66:	b2 05       	be	2e6c <__vfprintf_r+0x1814>
    2e68:	bf 07 0c fa 	jr	2874 <__vfprintf_r+0x121c>
    2e6c:	01 12       	mov	1, r2
    2e6e:	bf 07 06 fa 	jr	2874 <__vfprintf_r+0x121c>
    2e72:	20 46 80 00 	movea	128, r0, r8
    2e76:	14 30       	mov	r20, r6
    2e78:	1d 38       	mov	r29, r7
    2e7a:	c3 41       	add	sp, r8
    2e7c:	80 ff 14 3c 	jarl	6a90 <___sprint_r>, lp
    2e80:	60 52       	cmp	0, r10
    2e82:	b2 05       	be	2e88 <__vfprintf_r+0x1830>
    2e84:	bf 07 e2 ec 	jr	1b66 <__vfprintf_r+0x50e>
    2e88:	23 bf 65 00 	ld.w	100[sp], r23
    2e8c:	23 6f 89 00 	ld.w	136[sp], r13
    2e90:	23 5f 85 00 	ld.w	132[sp], r11
    2e94:	03 66 1c 01 	addi	284, sp, r12
    2e98:	bf 07 7c fc 	jr	2b14 <__vfprintf_r+0x14bc>
    2e9c:	60 52       	cmp	0, r10
    2e9e:	bf 05       	bgt	2ea4 <__vfprintf_r+0x184c>
    2ea0:	80 07 5e 01 	jr	2ffe <__vfprintf_r+0x19a6>
    2ea4:	01 ba       	mov	1, r23
    2ea6:	23 b7 41 00 	ld.w	64[sp], r22
    2eaa:	d7 b1       	add	r23, r22
    2eac:	63 b7 21 00 	st.w	r22, 32[sp]
    2eb0:	60 b2       	cmp	0, r22
    2eb2:	be 05       	bge	2eb8 <__vfprintf_r+0x1860>
    2eb4:	80 07 1a 01 	jr	2fce <__vfprintf_r+0x1976>
    2eb8:	20 be 67 00 	movea	103, r0, r23
    2ebc:	bf 07 f2 fa 	jr	29ae <__vfprintf_r+0x1356>
    2ec0:	40 56 00 80 	movhi	-32768, r0, r10
    2ec4:	20 5e 2d 00 	movea	45, r0, r11
    2ec8:	ca b1       	add	r10, r22
    2eca:	63 5f 35 00 	st.w	r11, 52[sp]
    2ece:	bf 07 ba f9 	jr	2888 <__vfprintf_r+0x1230>
    2ed2:	02 6e 01 00 	addi	1, r2, r13
    2ed6:	bf 07 e4 f9 	jr	28ba <__vfprintf_r+0x1262>
    2eda:	06 12       	mov	6, r2
    2edc:	bf 07 98 f9 	jr	2874 <__vfprintf_r+0x121c>
    2ee0:	23 5f 6d 00 	ld.w	108[sp], r11
    2ee4:	bf 07 7c fa 	jr	2960 <__vfprintf_r+0x1308>
    2ee8:	40 5e 01 00 	movhi	1, r0, r11
    2eec:	40 56 01 00 	movhi	1, r0, r10
    2ef0:	03 16 80 00 	addi	128, sp, r2
    2ef4:	2b 5e be 8b 	movea	-29762, r11, r11
    2ef8:	2a ae 56 8b 	movea	-29866, r10, r21
    2efc:	16 30       	mov	r22, r6
    2efe:	0a 3a       	mov	10, r7
    2f00:	63 5f 1d 00 	st.w	r11, 28[sp]
    2f04:	63 67 15 00 	st.w	r12, 20[sp]
    2f08:	80 ff 04 00 	jarl	2f0c <__vfprintf_r+0x18b4>, lp
    2f0c:	44 fa       	add	4, lp
    2f0e:	6b 00       	jmp	[r11]
    2f10:	0a 56 30 00 	addi	48, r10, r10
    2f14:	16 30       	mov	r22, r6
    2f16:	5f 12       	add	-1, r2
    2f18:	0a 3a       	mov	10, r7
    2f1a:	42 57 00 00 	st.b	r10, 0[r2]
    2f1e:	80 ff 04 00 	jarl	2f22 <__vfprintf_r+0x18ca>, lp
    2f22:	44 fa       	add	4, lp
    2f24:	75 00       	jmp	[r21]
    2f26:	0a b0       	mov	r10, r22
    2f28:	23 5f 1d 00 	ld.w	28[sp], r11
    2f2c:	23 67 15 00 	ld.w	20[sp], r12
    2f30:	69 52       	cmp	9, r10
    2f32:	df e5       	bgt	2efc <__vfprintf_r+0x18a4>
    2f34:	0a 56 30 00 	addi	48, r10, r10
    2f38:	d8 52       	shl	24, r10
    2f3a:	b8 52       	sar	24, r10
    2f3c:	42 57 ff ff 	st.b	r10, -1[r2]
    2f40:	03 76 80 00 	addi	128, sp, r14
    2f44:	02 5e ff ff 	addi	-1, r2, r11
    2f48:	eb 71       	cmp	r11, r14
    2f4a:	bb 05       	bh	2f50 <__vfprintf_r+0x18f8>
    2f4c:	80 07 20 01 	jr	306c <__vfprintf_r+0x1a14>
    2f50:	02 58       	mov	r2, r11
    2f52:	03 6e 74 00 	addi	116, sp, r13
    2f56:	e5 05       	br	2f62 <__vfprintf_r+0x190a>
    2f58:	0b 57 00 00 	ld.b	0[r11], r10
    2f5c:	41 5a       	add	1, r11
    2f5e:	d8 52       	shl	24, r10
    2f60:	b8 52       	sar	24, r10
    2f62:	4d 57 00 00 	st.b	r10, 0[r13]
    2f66:	41 6a       	add	1, r13
    2f68:	ee 59       	cmp	r14, r11
    2f6a:	fa f5       	bne	2f58 <__vfprintf_r+0x1900>
    2f6c:	03 5e 81 00 	addi	129, sp, r11
    2f70:	03 56 74 00 	addi	116, sp, r10
    2f74:	a2 59       	sub	r2, r11
    2f76:	cb 51       	add	r11, r10
    2f78:	bf 07 36 fe 	jr	2dae <__vfprintf_r+0x1756>
    2f7c:	15 30       	mov	r21, r6
    2f7e:	16 38       	mov	r22, r7
    2f80:	00 42       	mov	0, r8
    2f82:	00 4a       	mov	0, r9
    2f84:	63 5f 1d 00 	st.w	r11, 28[sp]
    2f88:	63 67 15 00 	st.w	r12, 20[sp]
    2f8c:	63 6f 19 00 	st.w	r13, 24[sp]
    2f90:	80 ff f0 66 	jarl	9680 <___nedf2>, lp
    2f94:	23 5f 1d 00 	ld.w	28[sp], r11
    2f98:	23 67 15 00 	ld.w	20[sp], r12
    2f9c:	23 6f 19 00 	ld.w	24[sp], r13
    2fa0:	60 52       	cmp	0, r10
    2fa2:	ba 05       	bne	2fa8 <__vfprintf_r+0x1950>
    2fa4:	bf 07 b6 fe 	jr	2e5a <__vfprintf_r+0x1802>
    2fa8:	01 52       	mov	1, r10
    2faa:	ad 51       	sub	r13, r10
    2fac:	63 57 65 00 	st.w	r10, 100[sp]
    2fb0:	ca 59       	add	r10, r11
    2fb2:	bf 07 70 f9 	jr	2922 <__vfprintf_r+0x12ca>
    2fb6:	63 07 21 00 	st.w	r0, 32[sp]
    2fba:	bf 07 3a fd 	jr	2cf4 <__vfprintf_r+0x169c>
    2fbe:	0a b6 01 00 	addi	1, r10, r22
    2fc2:	63 b7 21 00 	st.w	r22, 32[sp]
    2fc6:	60 b2       	cmp	0, r22
    2fc8:	b6 05       	blt	2fce <__vfprintf_r+0x1976>
    2fca:	bf 07 ee fe 	jr	2eb8 <__vfprintf_r+0x1860>
    2fce:	63 07 21 00 	st.w	r0, 32[sp]
    2fd2:	bf 07 e6 fe 	jr	2eb8 <__vfprintf_r+0x1860>
    2fd6:	02 b6 01 00 	addi	1, r2, r22
    2fda:	ca b1       	add	r10, r22
    2fdc:	63 b7 21 00 	st.w	r22, 32[sp]
    2fe0:	60 b2       	cmp	0, r22
    2fe2:	b6 05       	blt	2fe8 <__vfprintf_r+0x1990>
    2fe4:	bf 07 ca f9 	jr	29ae <__vfprintf_r+0x1356>
    2fe8:	63 07 21 00 	st.w	r0, 32[sp]
    2fec:	bf 07 c2 f9 	jr	29ae <__vfprintf_r+0x1356>
    2ff0:	20 56 2d 00 	movea	45, r0, r10
    2ff4:	80 b1       	subr	r0, r22
    2ff6:	43 57 73 00 	st.b	r10, 115[sp]
    2ffa:	bf 07 98 fd 	jr	2d92 <__vfprintf_r+0x173a>
    2ffe:	02 ba       	mov	2, r23
    3000:	aa b9       	sub	r10, r23
    3002:	bf 07 a4 fe 	jr	2ea6 <__vfprintf_r+0x184e>
    3006:	60 12       	cmp	0, r2
    3008:	9a 1d       	bne	303a <__vfprintf_r+0x19e2>
    300a:	db de 01 00 	andi	1, r27, r27
    300e:	ea 15       	bne	303a <__vfprintf_r+0x19e2>
    3010:	01 5a       	mov	1, r11
    3012:	63 5f 21 00 	st.w	r11, 32[sp]
    3016:	0b b0       	mov	r11, r22
    3018:	bf 07 96 f9 	jr	29ae <__vfprintf_r+0x1356>
    301c:	23 77 2d 00 	ld.w	44[sp], r14
    3020:	2e 17 01 00 	ld.w	0[r14], r2
    3024:	0e 50       	mov	r14, r10
    3026:	44 52       	add	4, r10
    3028:	60 12       	cmp	0, r2
    302a:	b6 05       	blt	3030 <__vfprintf_r+0x19d8>
    302c:	bf 07 24 ee 	jr	1e50 <__vfprintf_r+0x7f8>
    3030:	63 57 2d 00 	st.w	r10, 44[sp]
    3034:	1f 12       	mov	-1, r2
    3036:	bf 07 98 e7 	jr	17ce <__vfprintf_r+0x176>
    303a:	02 b6 02 00 	addi	2, r2, r22
    303e:	63 b7 21 00 	st.w	r22, 32[sp]
    3042:	60 b2       	cmp	0, r22
    3044:	b6 05       	blt	304a <__vfprintf_r+0x19f2>
    3046:	bf 07 68 f9 	jr	29ae <__vfprintf_r+0x1356>
    304a:	f5 cd       	br	2fe8 <__vfprintf_r+0x1990>
    304c:	1f 6a       	mov	-1, r13
    304e:	63 6f 29 00 	st.w	r13, 40[sp]
    3052:	bf 07 ec ea 	jr	1b3e <__vfprintf_r+0x4e6>
    3056:	63 07 21 00 	st.w	r0, 32[sp]
    305a:	bf 07 7a fd 	jr	2dd4 <__vfprintf_r+0x177c>
    305e:	0a 58       	mov	r10, r11
    3060:	bf 07 00 f9 	jr	2960 <__vfprintf_r+0x1308>
    3064:	63 07 21 00 	st.w	r0, 32[sp]
    3068:	bf 07 92 fd 	jr	2dfa <__vfprintf_r+0x17a2>
    306c:	03 56 74 00 	addi	116, sp, r10
    3070:	bf 07 3e fd 	jr	2dae <__vfprintf_r+0x1756>
    3074:	23 5f 65 00 	ld.w	100[sp], r11
    3078:	bf 07 fe fc 	jr	2d76 <__vfprintf_r+0x171e>

0000307c <_vfprintf>:
    307c:	06 58       	mov	r6, r11
    307e:	07 50       	mov	r7, r10
    3080:	24 37 bd 08 	ld.w	2236[gp], r6
    3084:	5c 1a       	add	-4, sp
    3086:	08 48       	mov	r8, r9
    3088:	0b 38       	mov	r11, r7
    308a:	0a 40       	mov	r10, r8
    308c:	63 ff 01 00 	st.w	lp, 0[sp]
    3090:	bf ff c8 e5 	jarl	1658 <__vfprintf_r>, lp
    3094:	bf 07 f4 e3 	jr	1488 <__return_r31>

00003098 <___swsetup_r>:
    3098:	54 1a       	add	-12, sp
    309a:	24 57 bd 08 	ld.w	2236[gp], r10
    309e:	63 e7 05 00 	st.w	r28, 4[sp]
    30a2:	63 ef 01 00 	st.w	r29, 0[sp]
    30a6:	63 ff 09 00 	st.w	lp, 8[sp]
    30aa:	06 e0       	mov	r6, r28
    30ac:	07 e8       	mov	r7, r29
    30ae:	60 52       	cmp	0, r10
    30b0:	d2 05       	be	30ba <___swsetup_r+0x22>
    30b2:	2a 5f 39 00 	ld.w	56[r10], r11
    30b6:	60 5a       	cmp	0, r11
    30b8:	d2 55       	be	3162 <___swsetup_r+0xca>
    30ba:	3d 57 0c 00 	ld.h	12[r29], r10
    30be:	40 5e 08 00 	movhi	8, r0, r11
    30c2:	d0 52       	shl	16, r10
    30c4:	4a 59       	and	r10, r11
    30c6:	b0 52       	sar	16, r10
    30c8:	60 5a       	cmp	0, r11
    30ca:	c2 15       	be	30f2 <___swsetup_r+0x5a>
    30cc:	3d 5f 11 00 	ld.w	16[r29], r11
    30d0:	60 5a       	cmp	0, r11
    30d2:	e2 1d       	be	310e <___swsetup_r+0x76>
    30d4:	ca 66 01 00 	andi	1, r10, r12
    30d8:	ca 2d       	bne	3130 <___swsetup_r+0x98>
    30da:	ca 56 02 00 	andi	2, r10, r10
    30de:	ea 45       	bne	316a <___swsetup_r+0xd2>
    30e0:	3d 57 15 00 	ld.w	20[r29], r10
    30e4:	7d 57 09 00 	st.w	r10, 8[r29]
    30e8:	60 5a       	cmp	0, r11
    30ea:	c2 2d       	be	3142 <___swsetup_r+0xaa>
    30ec:	00 52       	mov	0, r10
    30ee:	bf 07 7a e3 	jr	1468 <__return_r28_r31>
    30f2:	ca 5e 10 00 	andi	16, r10, r11
    30f6:	f2 55       	be	31a4 <___swsetup_r+0x10c>
    30f8:	ca 5e 04 00 	andi	4, r10, r11
    30fc:	9a 3d       	bne	316e <___swsetup_r+0xd6>
    30fe:	3d 5f 11 00 	ld.w	16[r29], r11
    3102:	8a 56 08 00 	ori	8, r10, r10
    3106:	7d 57 0c 00 	st.h	r10, 12[r29]
    310a:	60 5a       	cmp	0, r11
    310c:	ca e5       	bne	30d4 <___swsetup_r+0x3c>
    310e:	ca 6e 80 02 	andi	640, r10, r13
    3112:	20 66 00 02 	movea	512, r0, r12
    3116:	ec 69       	cmp	r12, r13
    3118:	e2 dd       	be	30d4 <___swsetup_r+0x3c>
    311a:	1c 30       	mov	r28, r6
    311c:	1d 38       	mov	r29, r7
    311e:	80 ff 36 22 	jarl	5354 <___smakebuf_r>, lp
    3122:	3d 57 0c 00 	ld.h	12[r29], r10
    3126:	3d 5f 11 00 	ld.w	16[r29], r11
    312a:	d0 52       	shl	16, r10
    312c:	b0 52       	sar	16, r10
    312e:	b5 d5       	br	30d4 <___swsetup_r+0x3c>
    3130:	3d 57 15 00 	ld.w	20[r29], r10
    3134:	7d 07 09 00 	st.w	r0, 8[r29]
    3138:	80 51       	subr	r0, r10
    313a:	7d 57 19 00 	st.w	r10, 24[r29]
    313e:	60 5a       	cmp	0, r11
    3140:	ea d5       	bne	30ec <___swsetup_r+0x54>
    3142:	3d 5f 0c 00 	ld.h	12[r29], r11
    3146:	40 66 80 00 	movhi	128, r0, r12
    314a:	d0 5a       	shl	16, r11
    314c:	4b 61       	and	r11, r12
    314e:	00 52       	mov	0, r10
    3150:	b0 5a       	sar	16, r11
    3152:	60 62       	cmp	0, r12
    3154:	d2 cd       	be	30ee <___swsetup_r+0x56>
    3156:	8b 5e 40 00 	ori	64, r11, r11
    315a:	7d 5f 0c 00 	st.h	r11, 12[r29]
    315e:	1f 52       	mov	-1, r10
    3160:	f5 c5       	br	30ee <___swsetup_r+0x56>
    3162:	0a 30       	mov	r10, r6
    3164:	80 ff 4c 1b 	jarl	4cb0 <___sinit>, lp
    3168:	95 ad       	br	30ba <___swsetup_r+0x22>
    316a:	00 52       	mov	0, r10
    316c:	c5 bd       	br	30e4 <___swsetup_r+0x4c>
    316e:	3d 3f 31 00 	ld.w	48[r29], r7
    3172:	60 3a       	cmp	0, r7
    3174:	e2 0d       	be	3190 <___swsetup_r+0xf8>
    3176:	1d 5e 40 00 	addi	64, r29, r11
    317a:	eb 39       	cmp	r11, r7
    317c:	82 0d       	be	318c <___swsetup_r+0xf4>
    317e:	1c 30       	mov	r28, r6
    3180:	80 ff a0 1d 	jarl	4f20 <__free_r>, lp
    3184:	3d 57 0c 00 	ld.h	12[r29], r10
    3188:	d0 52       	shl	16, r10
    318a:	b0 52       	sar	16, r10
    318c:	7d 07 31 00 	st.w	r0, 48[r29]
    3190:	3d 5f 11 00 	ld.w	16[r29], r11
    3194:	20 66 db ff 	movea	-37, r0, r12
    3198:	4c 51       	and	r12, r10
    319a:	7d 07 05 00 	st.w	r0, 4[r29]
    319e:	7d 5f 01 00 	st.w	r11, 0[r29]
    31a2:	85 b5       	br	3102 <___swsetup_r+0x6a>
    31a4:	09 5a       	mov	9, r11
    31a6:	8a 56 40 00 	ori	64, r10, r10
    31aa:	7c 5f 01 00 	st.w	r11, 0[r28]
    31ae:	7d 57 0c 00 	st.h	r10, 12[r29]
    31b2:	1f 52       	mov	-1, r10
    31b4:	d5 9d       	br	30ee <___swsetup_r+0x56>
	...

000031b8 <___call_exitprocs>:
    31b8:	03 1e d0 ff 	addi	-48, sp, sp
    31bc:	63 af 21 00 	st.w	r21, 32[sp]
    31c0:	63 bf 19 00 	st.w	r23, 24[sp]
    31c4:	40 ae 00 00 	movhi	0, r0, r21
    31c8:	24 bf 85 fe 	ld.w	-380[gp], r23
    31cc:	63 b7 1d 00 	st.w	r22, 28[sp]
    31d0:	63 c7 15 00 	st.w	r24, 20[sp]
    31d4:	63 d7 0d 00 	st.w	r26, 12[sp]
    31d8:	06 b0       	mov	r6, r22
    31da:	07 d0       	mov	r7, r26
    31dc:	01 c2       	mov	1, r24
    31de:	35 ae 00 00 	movea	0, r21, r21
    31e2:	63 ff 2d 00 	st.w	lp, 44[sp]
    31e6:	63 17 29 00 	st.w	r2, 40[sp]
    31ea:	63 a7 25 00 	st.w	r20, 36[sp]
    31ee:	63 cf 11 00 	st.w	r25, 16[sp]
    31f2:	63 df 09 00 	st.w	r27, 8[sp]
    31f6:	63 e7 05 00 	st.w	r28, 4[sp]
    31fa:	63 ef 01 00 	st.w	r29, 0[sp]
    31fe:	37 cf 49 01 	ld.w	328[r23], r25
    3202:	17 16 48 01 	addi	328, r23, r2
    3206:	60 ca       	cmp	0, r25
    3208:	a2 4d       	be	329c <___call_exitprocs+0xe4>
    320a:	39 df 05 00 	ld.w	4[r25], r27
    320e:	1b ee ff ff 	addi	-1, r27, r29
    3212:	60 ea       	cmp	0, r29
    3214:	a6 45       	blt	3298 <___call_exitprocs+0xe0>
    3216:	1b 56 1f 00 	addi	31, r27, r10
    321a:	41 da       	add	1, r27
    321c:	19 e6 88 00 	addi	136, r25, r28
    3220:	c2 52       	shl	2, r10
    3222:	c2 da       	shl	2, r27
    3224:	ca e1       	add	r10, r28
    3226:	d9 d9       	add	r25, r27
    3228:	a5 0d       	br	323c <___call_exitprocs+0x84>
    322a:	3c 57 01 00 	ld.w	0[r28], r10
    322e:	fa 51       	cmp	r26, r10
    3230:	82 0d       	be	3240 <___call_exitprocs+0x88>
    3232:	5f ea       	add	-1, r29
    3234:	5c e2       	add	-4, r28
    3236:	5c da       	add	-4, r27
    3238:	7f ea       	cmp	-1, r29
    323a:	f2 2d       	be	3298 <___call_exitprocs+0xe0>
    323c:	60 d2       	cmp	0, r26
    323e:	ea f5       	bne	322a <___call_exitprocs+0x72>
    3240:	39 57 05 00 	ld.w	4[r25], r10
    3244:	3b 5f 01 00 	ld.w	0[r27], r11
    3248:	5f 52       	add	-1, r10
    324a:	fd 51       	cmp	r29, r10
    324c:	82 4d       	be	32dc <___call_exitprocs+0x124>
    324e:	7b 07 01 00 	st.w	r0, 0[r27]
    3252:	60 5a       	cmp	0, r11
    3254:	f2 ed       	be	3232 <___call_exitprocs+0x7a>
    3256:	39 57 89 01 	ld.w	392[r25], r10
    325a:	18 60       	mov	r24, r12
    325c:	fd 67 c0 00 	shl	r29, r12
    3260:	4c 51       	and	r12, r10
    3262:	39 a7 05 00 	ld.w	4[r25], r20
    3266:	e2 35       	be	32d2 <___call_exitprocs+0x11a>
    3268:	39 57 8d 01 	ld.w	396[r25], r10
    326c:	4c 51       	and	r12, r10
    326e:	aa 3d       	bne	32e2 <___call_exitprocs+0x12a>
    3270:	3c 3f 81 ff 	ld.w	-128[r28], r7
    3274:	16 30       	mov	r22, r6
    3276:	80 ff 04 00 	jarl	327a <___call_exitprocs+0xc2>, lp
    327a:	44 fa       	add	4, lp
    327c:	6b 00       	jmp	[r11]
    327e:	39 57 05 00 	ld.w	4[r25], r10
    3282:	f4 51       	cmp	r20, r10
    3284:	da bd       	bne	31fe <___call_exitprocs+0x46>
    3286:	22 57 01 00 	ld.w	0[r2], r10
    328a:	f9 51       	cmp	r25, r10
    328c:	9a bd       	bne	31fe <___call_exitprocs+0x46>
    328e:	5f ea       	add	-1, r29
    3290:	5c e2       	add	-4, r28
    3292:	5c da       	add	-4, r27
    3294:	7f ea       	cmp	-1, r29
    3296:	ba d5       	bne	323c <___call_exitprocs+0x84>
    3298:	60 aa       	cmp	0, r21
    329a:	ba 2d       	bne	32f0 <___call_exitprocs+0x138>
    329c:	23 ff 2d 00 	ld.w	44[sp], lp
    32a0:	23 17 29 00 	ld.w	40[sp], r2
    32a4:	23 a7 25 00 	ld.w	36[sp], r20
    32a8:	23 af 21 00 	ld.w	32[sp], r21
    32ac:	23 b7 1d 00 	ld.w	28[sp], r22
    32b0:	23 bf 19 00 	ld.w	24[sp], r23
    32b4:	23 c7 15 00 	ld.w	20[sp], r24
    32b8:	23 cf 11 00 	ld.w	16[sp], r25
    32bc:	23 d7 0d 00 	ld.w	12[sp], r26
    32c0:	23 df 09 00 	ld.w	8[sp], r27
    32c4:	23 e7 05 00 	ld.w	4[sp], r28
    32c8:	23 ef 01 00 	ld.w	0[sp], r29
    32cc:	03 1e 30 00 	addi	48, sp, sp
    32d0:	7f 00       	jmp	[lp]
    32d2:	80 ff 04 00 	jarl	32d6 <___call_exitprocs+0x11e>, lp
    32d6:	44 fa       	add	4, lp
    32d8:	6b 00       	jmp	[r11]
    32da:	a5 d5       	br	327e <___call_exitprocs+0xc6>
    32dc:	79 ef 05 00 	st.w	r29, 4[r25]
    32e0:	95 bd       	br	3252 <___call_exitprocs+0x9a>
    32e2:	3c 37 81 ff 	ld.w	-128[r28], r6
    32e6:	80 ff 04 00 	jarl	32ea <___call_exitprocs+0x132>, lp
    32ea:	44 fa       	add	4, lp
    32ec:	6b 00       	jmp	[r11]
    32ee:	85 cd       	br	327e <___call_exitprocs+0xc6>
    32f0:	39 57 05 00 	ld.w	4[r25], r10
    32f4:	60 52       	cmp	0, r10
    32f6:	8a 15       	bne	3316 <___call_exitprocs+0x15e>
    32f8:	39 57 01 00 	ld.w	0[r25], r10
    32fc:	60 52       	cmp	0, r10
    32fe:	a2 15       	be	3322 <___call_exitprocs+0x16a>
    3300:	19 30       	mov	r25, r6
    3302:	62 57 01 00 	st.w	r10, 0[r2]
    3306:	80 ff 04 00 	jarl	330a <___call_exitprocs+0x152>, lp
    330a:	44 fa       	add	4, lp
    330c:	75 00       	jmp	[r21]
    330e:	22 cf 01 00 	ld.w	0[r2], r25
    3312:	bf 07 f4 fe 	jr	3206 <___call_exitprocs+0x4e>
    3316:	39 57 01 00 	ld.w	0[r25], r10
    331a:	19 10       	mov	r25, r2
    331c:	0a c8       	mov	r10, r25
    331e:	bf 07 e8 fe 	jr	3206 <___call_exitprocs+0x4e>
    3322:	00 52       	mov	0, r10
    3324:	b5 fd       	br	331a <___call_exitprocs+0x162>
	...

00003328 <_quorem>:
    3328:	03 1e c8 ff 	addi	-56, sp, sp
    332c:	63 17 31 00 	st.w	r2, 48[sp]
    3330:	63 bf 21 00 	st.w	r23, 32[sp]
    3334:	63 ff 35 00 	st.w	lp, 52[sp]
    3338:	63 a7 2d 00 	st.w	r20, 44[sp]
    333c:	63 af 29 00 	st.w	r21, 40[sp]
    3340:	63 b7 25 00 	st.w	r22, 36[sp]
    3344:	63 c7 1d 00 	st.w	r24, 28[sp]
    3348:	63 cf 19 00 	st.w	r25, 24[sp]
    334c:	63 d7 15 00 	st.w	r26, 20[sp]
    3350:	63 df 11 00 	st.w	r27, 16[sp]
    3354:	63 e7 0d 00 	st.w	r28, 12[sp]
    3358:	63 ef 09 00 	st.w	r29, 8[sp]
    335c:	27 df 11 00 	ld.w	16[r7], r27
    3360:	26 57 11 00 	ld.w	16[r6], r10
    3364:	06 10       	mov	r6, r2
    3366:	07 b8       	mov	r7, r23
    3368:	ea d9       	cmp	r10, r27
    336a:	b7 05       	ble	3370 <_quorem+0x48>
    336c:	80 07 a4 01 	jr	3510 <_quorem+0x1e8>
    3370:	1b 56 04 00 	addi	4, r27, r10
    3374:	c2 52       	shl	2, r10
    3376:	07 c0       	mov	r7, r24
    3378:	ca c1       	add	r10, r24
    337a:	38 3f 01 00 	ld.w	0[r24], r7
    337e:	c6 51       	add	r6, r10
    3380:	2a 37 01 00 	ld.w	0[r10], r6
    3384:	41 3a       	add	1, r7
    3386:	80 ff 02 58 	jarl	8b88 <___udivsi3>, lp
    338a:	5f da       	add	-1, r27
    338c:	0a e0       	mov	r10, r28
    338e:	17 ee 14 00 	addi	20, r23, r29
    3392:	02 a6 14 00 	addi	20, r2, r20
    3396:	60 52       	cmp	0, r10
    3398:	f2 5d       	be	3456 <_quorem+0x12e>
    339a:	40 b6 01 00 	movhi	1, r0, r22
    339e:	1d c8       	mov	r29, r25
    33a0:	14 d0       	mov	r20, r26
    33a2:	00 5a       	mov	0, r11
    33a4:	00 6a       	mov	0, r13
    33a6:	36 b6 18 8b 	movea	-29928, r22, r22
    33aa:	39 af 01 00 	ld.w	0[r25], r21
    33ae:	1c 38       	mov	r28, r7
    33b0:	d5 36 ff ff 	andi	65535, r21, r6
    33b4:	63 6f 01 00 	st.w	r13, 0[sp]
    33b8:	63 5f 05 00 	st.w	r11, 4[sp]
    33bc:	80 ff 04 00 	jarl	33c0 <_quorem+0x98>, lp
    33c0:	44 fa       	add	4, lp
    33c2:	76 00       	jmp	[r22]
    33c4:	23 5f 05 00 	ld.w	4[sp], r11
    33c8:	15 30       	mov	r21, r6
    33ca:	90 32       	shr	16, r6
    33cc:	0b a8       	mov	r11, r21
    33ce:	1c 38       	mov	r28, r7
    33d0:	ca a9       	add	r10, r21
    33d2:	80 ff 04 00 	jarl	33d6 <_quorem+0xae>, lp
    33d6:	44 fa       	add	4, lp
    33d8:	76 00       	jmp	[r22]
    33da:	3a 67 01 00 	ld.w	0[r26], r12
    33de:	23 6f 01 00 	ld.w	0[sp], r13
    33e2:	15 70       	mov	r21, r14
    33e4:	cc 5e ff ff 	andi	65535, r12, r11
    33e8:	90 72       	shr	16, r14
    33ea:	ce 51       	add	r14, r10
    33ec:	cd 59       	add	r13, r11
    33ee:	d5 ae ff ff 	andi	65535, r21, r21
    33f2:	b5 59       	sub	r21, r11
    33f4:	ca 6e ff ff 	andi	65535, r10, r13
    33f8:	90 62       	shr	16, r12
    33fa:	ad 61       	sub	r13, r12
    33fc:	0b 68       	mov	r11, r13
    33fe:	b0 6a       	sar	16, r13
    3400:	cd 61       	add	r13, r12
    3402:	0c 68       	mov	r12, r13
    3404:	cb 5e ff ff 	andi	65535, r11, r11
    3408:	d0 6a       	shl	16, r13
    340a:	0b 69       	or	r11, r13
    340c:	7a 6f 01 00 	st.w	r13, 0[r26]
    3410:	0a 58       	mov	r10, r11
    3412:	0c 68       	mov	r12, r13
    3414:	44 ca       	add	4, r25
    3416:	90 5a       	shr	16, r11
    3418:	b0 6a       	sar	16, r13
    341a:	44 d2       	add	4, r26
    341c:	f9 c1       	cmp	r25, r24
    341e:	e9 c5       	bnl	33aa <_quorem+0x82>
    3420:	1b 5e 05 00 	addi	5, r27, r11
    3424:	c2 5a       	shl	2, r11
    3426:	c2 59       	add	r2, r11
    3428:	2b 57 01 00 	ld.w	0[r11], r10
    342c:	60 52       	cmp	0, r10
    342e:	ca 15       	bne	3456 <_quorem+0x12e>
    3430:	0b 56 fc ff 	addi	-4, r11, r10
    3434:	ea a1       	cmp	r10, r20
    3436:	e9 0d       	bnl	3452 <_quorem+0x12a>
    3438:	2b 5f fd ff 	ld.w	-4[r11], r11
    343c:	60 5a       	cmp	0, r11
    343e:	e2 05       	be	344a <_quorem+0x122>
    3440:	95 0d       	br	3452 <_quorem+0x12a>
    3442:	2a 5f 01 00 	ld.w	0[r10], r11
    3446:	60 5a       	cmp	0, r11
    3448:	da 05       	bne	3452 <_quorem+0x12a>
    344a:	5c 52       	add	-4, r10
    344c:	5f da       	add	-1, r27
    344e:	ea a1       	cmp	r10, r20
    3450:	91 fd       	bl	3442 <_quorem+0x11a>
    3452:	62 df 11 00 	st.w	r27, 16[r2]
    3456:	02 30       	mov	r2, r6
    3458:	17 38       	mov	r23, r7
    345a:	80 ff f2 2e 	jarl	634c <___mcmp>, lp
    345e:	60 52       	cmp	0, r10
    3460:	c6 3d       	blt	34d8 <_quorem+0x1b0>
    3462:	41 e2       	add	1, r28
    3464:	14 68       	mov	r20, r13
    3466:	00 52       	mov	0, r10
    3468:	2d 5f 01 00 	ld.w	0[r13], r11
    346c:	3d 77 01 00 	ld.w	0[r29], r14
    3470:	cb 66 ff ff 	andi	65535, r11, r12
    3474:	ca 61       	add	r10, r12
    3476:	ce 56 ff ff 	andi	65535, r14, r10
    347a:	aa 61       	sub	r10, r12
    347c:	90 72       	shr	16, r14
    347e:	0c 50       	mov	r12, r10
    3480:	90 5a       	shr	16, r11
    3482:	ae 59       	sub	r14, r11
    3484:	b0 52       	sar	16, r10
    3486:	ca 59       	add	r10, r11
    3488:	0b 70       	mov	r11, r14
    348a:	d0 72       	shl	16, r14
    348c:	cc 66 ff ff 	andi	65535, r12, r12
    3490:	0c 71       	or	r12, r14
    3492:	6d 77 01 00 	st.w	r14, 0[r13]
    3496:	0b 50       	mov	r11, r10
    3498:	44 ea       	add	4, r29
    349a:	b0 52       	sar	16, r10
    349c:	44 6a       	add	4, r13
    349e:	fd c1       	cmp	r29, r24
    34a0:	c9 e5       	bnl	3468 <_quorem+0x140>
    34a2:	1b 56 05 00 	addi	5, r27, r10
    34a6:	c2 52       	shl	2, r10
    34a8:	c2 51       	add	r2, r10
    34aa:	2a 5f 01 00 	ld.w	0[r10], r11
    34ae:	60 5a       	cmp	0, r11
    34b0:	ca 15       	bne	34d8 <_quorem+0x1b0>
    34b2:	0a 5e fc ff 	addi	-4, r10, r11
    34b6:	eb a1       	cmp	r11, r20
    34b8:	e9 0d       	bnl	34d4 <_quorem+0x1ac>
    34ba:	2a 57 fd ff 	ld.w	-4[r10], r10
    34be:	60 52       	cmp	0, r10
    34c0:	e2 05       	be	34cc <_quorem+0x1a4>
    34c2:	95 0d       	br	34d4 <_quorem+0x1ac>
    34c4:	2b 57 01 00 	ld.w	0[r11], r10
    34c8:	60 52       	cmp	0, r10
    34ca:	da 05       	bne	34d4 <_quorem+0x1ac>
    34cc:	5c 5a       	add	-4, r11
    34ce:	5f da       	add	-1, r27
    34d0:	eb a1       	cmp	r11, r20
    34d2:	91 fd       	bl	34c4 <_quorem+0x19c>
    34d4:	62 df 11 00 	st.w	r27, 16[r2]
    34d8:	1c 50       	mov	r28, r10
    34da:	23 ff 35 00 	ld.w	52[sp], lp
    34de:	23 17 31 00 	ld.w	48[sp], r2
    34e2:	23 a7 2d 00 	ld.w	44[sp], r20
    34e6:	23 af 29 00 	ld.w	40[sp], r21
    34ea:	23 b7 25 00 	ld.w	36[sp], r22
    34ee:	23 bf 21 00 	ld.w	32[sp], r23
    34f2:	23 c7 1d 00 	ld.w	28[sp], r24
    34f6:	23 cf 19 00 	ld.w	24[sp], r25
    34fa:	23 d7 15 00 	ld.w	20[sp], r26
    34fe:	23 df 11 00 	ld.w	16[sp], r27
    3502:	23 e7 0d 00 	ld.w	12[sp], r28
    3506:	23 ef 09 00 	ld.w	8[sp], r29
    350a:	03 1e 38 00 	addi	56, sp, sp
    350e:	7f 00       	jmp	[lp]
    3510:	00 52       	mov	0, r10
    3512:	c5 e5       	br	34da <_quorem+0x1b2>

00003514 <__dtoa_r>:
    3514:	03 1e 70 ff 	addi	-144, sp, sp
    3518:	63 17 89 00 	st.w	r2, 136[sp]
    351c:	63 bf 79 00 	st.w	r23, 120[sp]
    3520:	63 df 69 00 	st.w	r27, 104[sp]
    3524:	63 e7 65 00 	st.w	r28, 100[sp]
    3528:	63 ef 61 00 	st.w	r29, 96[sp]
    352c:	63 ff 8d 00 	st.w	lp, 140[sp]
    3530:	63 a7 85 00 	st.w	r20, 132[sp]
    3534:	63 af 81 00 	st.w	r21, 128[sp]
    3538:	63 b7 7d 00 	st.w	r22, 124[sp]
    353c:	63 c7 75 00 	st.w	r24, 116[sp]
    3540:	63 cf 71 00 	st.w	r25, 112[sp]
    3544:	63 d7 6d 00 	st.w	r26, 108[sp]
    3548:	26 57 41 00 	ld.w	64[r6], r10
    354c:	06 10       	mov	r6, r2
    354e:	09 e8       	mov	r9, r29
    3550:	08 b8       	mov	r8, r23
    3552:	23 df 9d 00 	ld.w	156[sp], r27
    3556:	09 e0       	mov	r9, r28
    3558:	60 52       	cmp	0, r10
    355a:	f2 0d       	be	3578 <__dtoa_r+0x64>
    355c:	26 67 45 00 	ld.w	68[r6], r12
    3560:	01 5a       	mov	1, r11
    3562:	ec 5f c0 00 	shl	r12, r11
    3566:	0a 38       	mov	r10, r7
    3568:	6a 67 05 00 	st.w	r12, 4[r10]
    356c:	6a 5f 09 00 	st.w	r11, 8[r10]
    3570:	80 ff 30 27 	jarl	5ca0 <__Bfree>, lp
    3574:	62 07 41 00 	st.w	r0, 64[r2]
    3578:	60 ea       	cmp	0, r29
    357a:	a6 65       	blt	363e <__dtoa_r+0x12a>
    357c:	7b 07 01 00 	st.w	r0, 0[r27]
    3580:	40 5e f0 7f 	movhi	32752, r0, r11
    3584:	5d 59       	and	r29, r11
    3586:	40 56 f0 7f 	movhi	32752, r0, r10
    358a:	ea 59       	cmp	r10, r11
    358c:	a2 3d       	be	3600 <__dtoa_r+0xec>
    358e:	17 30       	mov	r23, r6
    3590:	1c 38       	mov	r28, r7
    3592:	00 42       	mov	0, r8
    3594:	00 4a       	mov	0, r9
    3596:	80 ff 76 60 	jarl	960c <___eqdf2>, lp
    359a:	60 52       	cmp	0, r10
    359c:	ba 5d       	bne	3652 <__dtoa_r+0x13e>
    359e:	23 67 99 00 	ld.w	152[sp], r12
    35a2:	01 52       	mov	1, r10
    35a4:	6c 57 01 00 	st.w	r10, 0[r12]
    35a8:	23 67 a1 00 	ld.w	160[sp], r12
    35ac:	60 62       	cmp	0, r12
    35ae:	ba 05       	bne	35b4 <__dtoa_r+0xa0>
    35b0:	80 07 aa 02 	jr	385a <__dtoa_r+0x346>
    35b4:	40 56 01 00 	movhi	1, r0, r10
    35b8:	2a 56 dc 9f 	movea	-24612, r10, r10
    35bc:	6c 57 01 00 	st.w	r10, 0[r12]
    35c0:	40 56 01 00 	movhi	1, r0, r10
    35c4:	2a a6 db 9f 	movea	-24613, r10, r20
    35c8:	23 ff 8d 00 	ld.w	140[sp], lp
    35cc:	14 50       	mov	r20, r10
    35ce:	23 17 89 00 	ld.w	136[sp], r2
    35d2:	23 a7 85 00 	ld.w	132[sp], r20
    35d6:	23 af 81 00 	ld.w	128[sp], r21
    35da:	23 b7 7d 00 	ld.w	124[sp], r22
    35de:	23 bf 79 00 	ld.w	120[sp], r23
    35e2:	23 c7 75 00 	ld.w	116[sp], r24
    35e6:	23 cf 71 00 	ld.w	112[sp], r25
    35ea:	23 d7 6d 00 	ld.w	108[sp], r26
    35ee:	23 df 69 00 	ld.w	104[sp], r27
    35f2:	23 e7 65 00 	ld.w	100[sp], r28
    35f6:	23 ef 61 00 	ld.w	96[sp], r29
    35fa:	03 1e 90 00 	addi	144, sp, sp
    35fe:	7f 00       	jmp	[lp]
    3600:	23 67 99 00 	ld.w	152[sp], r12
    3604:	20 56 0f 27 	movea	9999, r0, r10
    3608:	6c 57 01 00 	st.w	r10, 0[r12]
    360c:	60 ba       	cmp	0, r23
    360e:	ba 05       	bne	3614 <__dtoa_r+0x100>
    3610:	80 07 04 02 	jr	3814 <__dtoa_r+0x300>
    3614:	40 56 01 00 	movhi	1, r0, r10
    3618:	2a a6 d7 9f 	movea	-24617, r10, r20
    361c:	23 67 a1 00 	ld.w	160[sp], r12
    3620:	60 62       	cmp	0, r12
    3622:	b2 d5       	be	35c8 <__dtoa_r+0xb4>
    3624:	14 57 03 00 	ld.b	3[r20], r10
    3628:	d8 52       	shl	24, r10
    362a:	b2 05       	be	3630 <__dtoa_r+0x11c>
    362c:	80 07 04 02 	jr	3830 <__dtoa_r+0x31c>
    3630:	14 56 03 00 	addi	3, r20, r10
    3634:	23 67 a1 00 	ld.w	160[sp], r12
    3638:	6c 57 01 00 	st.w	r10, 0[r12]
    363c:	e5 c5       	br	35c8 <__dtoa_r+0xb4>
    363e:	40 56 00 80 	movhi	-32768, r0, r10
    3642:	2a 56 ff ff 	movea	-1, r10, r10
    3646:	4a e9       	and	r10, r29
    3648:	01 52       	mov	1, r10
    364a:	7b 57 01 00 	st.w	r10, 0[r27]
    364e:	1d e0       	mov	r29, r28
    3650:	85 9d       	br	3580 <__dtoa_r+0x6c>
    3652:	1d c8       	mov	r29, r25
    3654:	03 5e 5c 00 	addi	92, sp, r11
    3658:	03 56 58 00 	addi	88, sp, r10
    365c:	02 30       	mov	r2, r6
    365e:	17 40       	mov	r23, r8
    3660:	1c 48       	mov	r28, r9
    3662:	94 ca       	shr	20, r25
    3664:	63 5f 01 00 	st.w	r11, 0[sp]
    3668:	63 57 05 00 	st.w	r10, 4[sp]
    366c:	d9 ce ff 07 	andi	2047, r25, r25
    3670:	80 ff 4c 2f 	jarl	65bc <___d2b>, lp
    3674:	0a a8       	mov	r10, r21
    3676:	60 ca       	cmp	0, r25
    3678:	b2 05       	be	367e <__dtoa_r+0x16a>
    367a:	80 07 be 01 	jr	3838 <__dtoa_r+0x324>
    367e:	23 c7 59 00 	ld.w	88[sp], r24
    3682:	23 cf 5d 00 	ld.w	92[sp], r25
    3686:	20 56 ef fb 	movea	-1041, r0, r10
    368a:	d8 c9       	add	r24, r25
    368c:	ea c9       	cmp	r10, r25
    368e:	be 05       	bge	3694 <__dtoa_r+0x180>
    3690:	80 07 7a 07 	jr	3e0a <__dtoa_r+0x8f6>
    3694:	20 56 0e fc 	movea	-1010, r0, r10
    3698:	b9 51       	sub	r25, r10
    369a:	1d 30       	mov	r29, r6
    369c:	ea 37 c0 00 	shl	r10, r6
    36a0:	19 5e 12 04 	addi	1042, r25, r11
    36a4:	17 50       	mov	r23, r10
    36a6:	eb 57 80 00 	shr	r11, r10
    36aa:	0a 31       	or	r10, r6
    36ac:	80 ff f8 62 	jarl	99a4 <___floatunsidf>, lp
    36b0:	40 3e 10 fe 	movhi	-496, r0, r7
    36b4:	01 62       	mov	1, r12
    36b6:	0a 30       	mov	r10, r6
    36b8:	cb 39       	add	r11, r7
    36ba:	5f ca       	add	-1, r25
    36bc:	63 67 45 00 	st.w	r12, 68[sp]
    36c0:	00 42       	mov	0, r8
    36c2:	40 4e f8 3f 	movhi	16376, r0, r9
    36c6:	80 ff d6 5a 	jarl	919c <___subdf3>, lp
    36ca:	40 ee 01 00 	movhi	1, r0, r29
    36ce:	40 46 6f 63 	movhi	25455, r0, r8
    36d2:	40 4e d3 3f 	movhi	16339, r0, r9
    36d6:	3d ee 10 92 	movea	-28144, r29, r29
    36da:	0a 30       	mov	r10, r6
    36dc:	0b 38       	mov	r11, r7
    36de:	28 46 61 43 	movea	17249, r8, r8
    36e2:	29 4e a7 87 	movea	-30809, r9, r9
    36e6:	80 ff 04 00 	jarl	36ea <__dtoa_r+0x1d6>, lp
    36ea:	44 fa       	add	4, lp
    36ec:	7d 00       	jmp	[r29]
    36ee:	40 46 61 8b 	movhi	-29855, r0, r8
    36f2:	40 4e c7 3f 	movhi	16327, r0, r9
    36f6:	0b 38       	mov	r11, r7
    36f8:	28 46 b3 c8 	movea	-14157, r8, r8
    36fc:	29 4e 28 8a 	movea	-30168, r9, r9
    3700:	0a 30       	mov	r10, r6
    3702:	80 ff 32 5a 	jarl	9134 <___adddf3>, lp
    3706:	19 30       	mov	r25, r6
    3708:	0a d0       	mov	r10, r26
    370a:	0b d8       	mov	r11, r27
    370c:	80 ff 44 61 	jarl	9850 <___floatsidf>, lp
    3710:	40 46 9f 50 	movhi	20639, r0, r8
    3714:	40 4e d3 3f 	movhi	16339, r0, r9
    3718:	0a 30       	mov	r10, r6
    371a:	0b 38       	mov	r11, r7
    371c:	28 46 fb 79 	movea	31227, r8, r8
    3720:	29 4e 13 44 	movea	17427, r9, r9
    3724:	80 ff 04 00 	jarl	3728 <__dtoa_r+0x214>, lp
    3728:	44 fa       	add	4, lp
    372a:	7d 00       	jmp	[r29]
    372c:	1a 30       	mov	r26, r6
    372e:	1b 38       	mov	r27, r7
    3730:	0a 40       	mov	r10, r8
    3732:	0b 48       	mov	r11, r9
    3734:	80 ff 00 5a 	jarl	9134 <___adddf3>, lp
    3738:	0a 30       	mov	r10, r6
    373a:	0b 38       	mov	r11, r7
    373c:	0a d0       	mov	r10, r26
    373e:	0b d8       	mov	r11, r27
    3740:	80 ff bc 61 	jarl	98fc <___fixdfsi>, lp
    3744:	1a 30       	mov	r26, r6
    3746:	1b 38       	mov	r27, r7
    3748:	00 42       	mov	0, r8
    374a:	00 4a       	mov	0, r9
    374c:	63 57 19 00 	st.w	r10, 24[sp]
    3750:	80 ff 8c 60 	jarl	97dc <___ltdf2>, lp
    3754:	60 52       	cmp	0, r10
    3756:	be 05       	bge	375c <__dtoa_r+0x248>
    3758:	80 07 dc 03 	jr	3b34 <__dtoa_r+0x620>
    375c:	23 67 19 00 	ld.w	24[sp], r12
    3760:	20 56 16 00 	movea	22, r0, r10
    3764:	ea 61       	cmp	r10, r12
    3766:	b3 05       	bnh	376c <__dtoa_r+0x258>
    3768:	80 07 98 03 	jr	3b00 <__dtoa_r+0x5ec>
    376c:	0c 50       	mov	r12, r10
    376e:	40 5e 01 00 	movhi	1, r0, r11
    3772:	c3 52       	shl	3, r10
    3774:	2b 5e 38 a0 	movea	-24520, r11, r11
    3778:	cb 51       	add	r11, r10
    377a:	2a 37 01 00 	ld.w	0[r10], r6
    377e:	2a 3f 05 00 	ld.w	4[r10], r7
    3782:	17 40       	mov	r23, r8
    3784:	1c 48       	mov	r28, r9
    3786:	80 ff 6e 5f 	jarl	96f4 <___gtdf2>, lp
    378a:	60 52       	cmp	0, r10
    378c:	bf 05       	bgt	3792 <__dtoa_r+0x27e>
    378e:	80 07 8c 06 	jr	3e1a <__dtoa_r+0x906>
    3792:	23 67 19 00 	ld.w	24[sp], r12
    3796:	63 07 3d 00 	st.w	r0, 60[sp]
    379a:	5f 62       	add	-1, r12
    379c:	63 67 19 00 	st.w	r12, 24[sp]
    37a0:	98 c9       	subr	r24, r25
    37a2:	5f ca       	add	-1, r25
    37a4:	60 ca       	cmp	0, r25
    37a6:	be 05       	bge	37ac <__dtoa_r+0x298>
    37a8:	80 07 7e 03 	jr	3b26 <__dtoa_r+0x612>
    37ac:	63 07 21 00 	st.w	r0, 32[sp]
    37b0:	63 cf 1d 00 	st.w	r25, 28[sp]
    37b4:	23 67 19 00 	ld.w	24[sp], r12
    37b8:	60 62       	cmp	0, r12
    37ba:	be 05       	bge	37c0 <__dtoa_r+0x2ac>
    37bc:	80 07 4e 03 	jr	3b0a <__dtoa_r+0x5f6>
    37c0:	23 57 1d 00 	ld.w	28[sp], r10
    37c4:	63 07 2d 00 	st.w	r0, 44[sp]
    37c8:	cc 51       	add	r12, r10
    37ca:	63 57 1d 00 	st.w	r10, 28[sp]
    37ce:	63 67 31 00 	st.w	r12, 48[sp]
    37d2:	23 67 91 00 	ld.w	144[sp], r12
    37d6:	69 62       	cmp	9, r12
    37d8:	fb 45       	bh	3866 <__dtoa_r+0x352>
    37da:	65 62       	cmp	5, r12
    37dc:	bf 05       	bgt	37e2 <__dtoa_r+0x2ce>
    37de:	80 07 88 11 	jr	4966 <__dtoa_r+0x1452>
    37e2:	5c 62       	add	-4, r12
    37e4:	00 d2       	mov	0, r26
    37e6:	63 67 91 00 	st.w	r12, 144[sp]
    37ea:	23 57 91 00 	ld.w	144[sp], r10
    37ee:	5e 52       	add	-2, r10
    37f0:	63 52       	cmp	3, r10
    37f2:	cb 3d       	bh	386a <__dtoa_r+0x356>
    37f4:	40 5e 00 00 	movhi	0, r0, r11
    37f8:	2b 5e 0c 38 	movea	14348, r11, r11
    37fc:	c1 52       	shl	1, r10
    37fe:	cb 51       	add	r11, r10
    3800:	2a 57 00 00 	ld.h	0[r10], r10
    3804:	d0 52       	shl	16, r10
    3806:	b0 52       	sar	16, r10
    3808:	cb 51       	add	r11, r10
    380a:	6a 00       	jmp	[r10]
    380c:	1c 0b       	sld.b	28[ep], r1
    380e:	12 08       	mov	r18, r1
    3810:	36 0b       	sld.b	54[ep], r1
    3812:	3e 0b       	sld.b	62[ep], r1
    3814:	40 56 10 00 	movhi	16, r0, r10
    3818:	2a 56 ff ff 	movea	-1, r10, r10
    381c:	4a e9       	and	r10, r29
    381e:	b2 05       	be	3824 <__dtoa_r+0x310>
    3820:	bf 07 f4 fd 	jr	3614 <__dtoa_r+0x100>
    3824:	40 56 01 00 	movhi	1, r0, r10
    3828:	2a a6 ce 9f 	movea	-24626, r10, r20
    382c:	bf 07 f0 fd 	jr	361c <__dtoa_r+0x108>
    3830:	14 56 08 00 	addi	8, r20, r10
    3834:	bf 07 00 fe 	jr	3634 <__dtoa_r+0x120>
    3838:	40 3e 10 00 	movhi	16, r0, r7
    383c:	27 3e ff ff 	movea	-1, r7, r7
    3840:	5c 39       	and	r28, r7
    3842:	40 56 f0 3f 	movhi	16368, r0, r10
    3846:	17 30       	mov	r23, r6
    3848:	0a 39       	or	r10, r7
    384a:	19 ce 01 fc 	addi	-1023, r25, r25
    384e:	23 c7 59 00 	ld.w	88[sp], r24
    3852:	63 07 45 00 	st.w	r0, 68[sp]
    3856:	bf 07 6a fe 	jr	36c0 <__dtoa_r+0x1ac>
    385a:	40 56 01 00 	movhi	1, r0, r10
    385e:	2a a6 db 9f 	movea	-24613, r10, r20
    3862:	bf 07 66 fd 	jr	35c8 <__dtoa_r+0xb4>
    3866:	63 07 91 00 	st.w	r0, 144[sp]
    386a:	40 56 00 00 	movhi	0, r0, r10
    386e:	2a 56 28 5c 	movea	23592, r10, r10
    3872:	62 07 45 00 	st.w	r0, 68[r2]
    3876:	02 30       	mov	r2, r6
    3878:	00 3a       	mov	0, r7
    387a:	63 57 39 00 	st.w	r10, 56[sp]
    387e:	80 ff 04 00 	jarl	3882 <__dtoa_r+0x36e>, lp
    3882:	44 fa       	add	4, lp
    3884:	6a 00       	jmp	[r10]
    3886:	1f 62       	mov	-1, r12
    3888:	63 67 25 00 	st.w	r12, 36[sp]
    388c:	63 67 41 00 	st.w	r12, 64[sp]
    3890:	0a a0       	mov	r10, r20
    3892:	01 62       	mov	1, r12
    3894:	63 07 95 00 	st.w	r0, 148[sp]
    3898:	62 57 41 00 	st.w	r10, 64[r2]
    389c:	63 67 35 00 	st.w	r12, 52[sp]
    38a0:	23 57 5d 00 	ld.w	92[sp], r10
    38a4:	60 52       	cmp	0, r10
    38a6:	be 05       	bge	38ac <__dtoa_r+0x398>
    38a8:	80 07 ee 01 	jr	3a96 <__dtoa_r+0x582>
    38ac:	23 67 19 00 	ld.w	24[sp], r12
    38b0:	6e 62       	cmp	14, r12
    38b2:	b7 05       	ble	38b8 <__dtoa_r+0x3a4>
    38b4:	80 07 e2 01 	jr	3a96 <__dtoa_r+0x582>
    38b8:	0c 50       	mov	r12, r10
    38ba:	40 5e 01 00 	movhi	1, r0, r11
    38be:	c3 52       	shl	3, r10
    38c0:	2b 5e 38 a0 	movea	-24520, r11, r11
    38c4:	23 67 95 00 	ld.w	148[sp], r12
    38c8:	cb 51       	add	r11, r10
    38ca:	2a df 01 00 	ld.w	0[r10], r27
    38ce:	2a d7 05 00 	ld.w	4[r10], r26
    38d2:	60 62       	cmp	0, r12
    38d4:	be 05       	bge	38da <__dtoa_r+0x3c6>
    38d6:	80 07 c4 06 	jr	3f9a <__dtoa_r+0xa86>
    38da:	40 ce 01 00 	movhi	1, r0, r25
    38de:	1b 40       	mov	r27, r8
    38e0:	1a 48       	mov	r26, r9
    38e2:	39 ce 84 94 	movea	-27516, r25, r25
    38e6:	17 30       	mov	r23, r6
    38e8:	1c 38       	mov	r28, r7
    38ea:	63 cf 29 00 	st.w	r25, 40[sp]
    38ee:	80 ff 04 00 	jarl	38f2 <__dtoa_r+0x3de>, lp
    38f2:	44 fa       	add	4, lp
    38f4:	79 00       	jmp	[r25]
    38f6:	0b 38       	mov	r11, r7
    38f8:	0a 30       	mov	r10, r6
    38fa:	80 ff 02 60 	jarl	98fc <___fixdfsi>, lp
    38fe:	0a 30       	mov	r10, r6
    3900:	0a b0       	mov	r10, r22
    3902:	80 ff 4e 5f 	jarl	9850 <___floatsidf>, lp
    3906:	0a 30       	mov	r10, r6
    3908:	0b 38       	mov	r11, r7
    390a:	1b 40       	mov	r27, r8
    390c:	1a 48       	mov	r26, r9
    390e:	80 ff 04 00 	jarl	3912 <__dtoa_r+0x3fe>, lp
    3912:	44 fa       	add	4, lp
    3914:	7d 00       	jmp	[r29]
    3916:	17 30       	mov	r23, r6
    3918:	1c 38       	mov	r28, r7
    391a:	0a 40       	mov	r10, r8
    391c:	0b 48       	mov	r11, r9
    391e:	80 ff 7e 58 	jarl	919c <___subdf3>, lp
    3922:	16 66 30 00 	addi	48, r22, r12
    3926:	54 67 00 00 	st.b	r12, 0[r20]
    392a:	23 67 25 00 	ld.w	36[sp], r12
    392e:	0a 30       	mov	r10, r6
    3930:	0b 38       	mov	r11, r7
    3932:	14 ce 01 00 	addi	1, r20, r25
    3936:	61 62       	cmp	1, r12
    3938:	e2 65       	be	3a04 <__dtoa_r+0x4f0>
    393a:	00 42       	mov	0, r8
    393c:	40 4e 24 40 	movhi	16420, r0, r9
    3940:	0a 30       	mov	r10, r6
    3942:	0b 38       	mov	r11, r7
    3944:	80 ff 04 00 	jarl	3948 <__dtoa_r+0x434>, lp
    3948:	44 fa       	add	4, lp
    394a:	7d 00       	jmp	[r29]
    394c:	0a 30       	mov	r10, r6
    394e:	0b 38       	mov	r11, r7
    3950:	00 42       	mov	0, r8
    3952:	00 4a       	mov	0, r9
    3954:	0a c0       	mov	r10, r24
    3956:	0b b8       	mov	r11, r23
    3958:	80 ff b4 5c 	jarl	960c <___eqdf2>, lp
    395c:	60 52       	cmp	0, r10
    395e:	ba 05       	bne	3964 <__dtoa_r+0x450>
    3960:	80 07 bc 09 	jr	431c <__dtoa_r+0xe08>
    3964:	23 b7 25 00 	ld.w	36[sp], r22
    3968:	63 af 11 00 	st.w	r21, 16[sp]
    396c:	14 e6 02 00 	addi	2, r20, r28
    3970:	17 a8       	mov	r23, r21
    3972:	d4 b1       	add	r20, r22
    3974:	63 a7 15 00 	st.w	r20, 20[sp]
    3978:	23 bf 29 00 	ld.w	40[sp], r23
    397c:	85 1d       	br	39ac <__dtoa_r+0x498>
    397e:	0a 30       	mov	r10, r6
    3980:	0b 38       	mov	r11, r7
    3982:	00 42       	mov	0, r8
    3984:	40 4e 24 40 	movhi	16420, r0, r9
    3988:	80 ff 04 00 	jarl	398c <__dtoa_r+0x478>, lp
    398c:	44 fa       	add	4, lp
    398e:	7d 00       	jmp	[r29]
    3990:	0a 30       	mov	r10, r6
    3992:	0b 38       	mov	r11, r7
    3994:	00 42       	mov	0, r8
    3996:	00 4a       	mov	0, r9
    3998:	0a c0       	mov	r10, r24
    399a:	0b a8       	mov	r11, r21
    399c:	19 e6 01 00 	addi	1, r25, r28
    39a0:	80 ff 6c 5c 	jarl	960c <___eqdf2>, lp
    39a4:	60 52       	cmp	0, r10
    39a6:	ba 05       	bne	39ac <__dtoa_r+0x498>
    39a8:	80 07 0e 0b 	jr	44b6 <__dtoa_r+0xfa2>
    39ac:	1b 40       	mov	r27, r8
    39ae:	1a 48       	mov	r26, r9
    39b0:	18 30       	mov	r24, r6
    39b2:	15 38       	mov	r21, r7
    39b4:	80 ff 04 00 	jarl	39b8 <__dtoa_r+0x4a4>, lp
    39b8:	44 fa       	add	4, lp
    39ba:	77 00       	jmp	[r23]
    39bc:	0b 38       	mov	r11, r7
    39be:	0a 30       	mov	r10, r6
    39c0:	80 ff 3c 5f 	jarl	98fc <___fixdfsi>, lp
    39c4:	0a 30       	mov	r10, r6
    39c6:	0a a0       	mov	r10, r20
    39c8:	80 ff 88 5e 	jarl	9850 <___floatsidf>, lp
    39cc:	0a 30       	mov	r10, r6
    39ce:	0b 38       	mov	r11, r7
    39d0:	1b 40       	mov	r27, r8
    39d2:	1a 48       	mov	r26, r9
    39d4:	80 ff 04 00 	jarl	39d8 <__dtoa_r+0x4c4>, lp
    39d8:	44 fa       	add	4, lp
    39da:	7d 00       	jmp	[r29]
    39dc:	18 30       	mov	r24, r6
    39de:	15 38       	mov	r21, r7
    39e0:	0a 40       	mov	r10, r8
    39e2:	0b 48       	mov	r11, r9
    39e4:	80 ff b8 57 	jarl	919c <___subdf3>, lp
    39e8:	14 66 30 00 	addi	48, r20, r12
    39ec:	5c 67 ff ff 	st.b	r12, -1[r28]
    39f0:	1c c8       	mov	r28, r25
    39f2:	0a 30       	mov	r10, r6
    39f4:	0b 38       	mov	r11, r7
    39f6:	f6 e1       	cmp	r22, r28
    39f8:	ba c5       	bne	397e <__dtoa_r+0x46a>
    39fa:	14 b0       	mov	r20, r22
    39fc:	23 af 11 00 	ld.w	16[sp], r21
    3a00:	23 a7 15 00 	ld.w	20[sp], r20
    3a04:	06 40       	mov	r6, r8
    3a06:	07 48       	mov	r7, r9
    3a08:	80 ff 2c 57 	jarl	9134 <___adddf3>, lp
    3a0c:	1b 30       	mov	r27, r6
    3a0e:	1a 38       	mov	r26, r7
    3a10:	0a 40       	mov	r10, r8
    3a12:	0b 48       	mov	r11, r9
    3a14:	0a e8       	mov	r10, r29
    3a16:	0b e0       	mov	r11, r28
    3a18:	80 ff c4 5d 	jarl	97dc <___ltdf2>, lp
    3a1c:	60 52       	cmp	0, r10
    3a1e:	86 15       	blt	3a3e <__dtoa_r+0x52a>
    3a20:	1b 30       	mov	r27, r6
    3a22:	1a 38       	mov	r26, r7
    3a24:	1d 40       	mov	r29, r8
    3a26:	1c 48       	mov	r28, r9
    3a28:	80 ff e4 5b 	jarl	960c <___eqdf2>, lp
    3a2c:	60 52       	cmp	0, r10
    3a2e:	b2 05       	be	3a34 <__dtoa_r+0x520>
    3a30:	80 07 ec 08 	jr	431c <__dtoa_r+0xe08>
    3a34:	d6 b6 01 00 	andi	1, r22, r22
    3a38:	ba 05       	bne	3a3e <__dtoa_r+0x52a>
    3a3a:	80 07 e2 08 	jr	431c <__dtoa_r+0xe08>
    3a3e:	19 6f ff ff 	ld.b	-1[r25], r13
    3a42:	0d b0       	mov	r13, r22
    3a44:	d8 b2       	shl	24, r22
    3a46:	b8 b2       	sar	24, r22
    3a48:	19 5e fe ff 	addi	-2, r25, r11
    3a4c:	20 76 39 00 	movea	57, r0, r14
    3a50:	f5 05       	br	3a5e <__dtoa_r+0x54a>
    3a52:	0b b7 00 00 	ld.b	0[r11], r22
    3a56:	0a c8       	mov	r10, r25
    3a58:	d8 b2       	shl	24, r22
    3a5a:	b8 b2       	sar	24, r22
    3a5c:	5f 5a       	add	-1, r11
    3a5e:	19 56 ff ff 	addi	-1, r25, r10
    3a62:	ee b1       	cmp	r14, r22
    3a64:	b2 05       	be	3a6a <__dtoa_r+0x556>
    3a66:	80 07 92 0d 	jr	47f8 <__dtoa_r+0x12e4>
    3a6a:	ea a1       	cmp	r10, r20
    3a6c:	ba f5       	bne	3a52 <__dtoa_r+0x53e>
    3a6e:	23 67 19 00 	ld.w	24[sp], r12
    3a72:	20 56 30 00 	movea	48, r0, r10
    3a76:	41 62       	add	1, r12
    3a78:	54 57 00 00 	st.b	r10, 0[r20]
    3a7c:	20 6e 31 00 	movea	49, r0, r13
    3a80:	14 50       	mov	r20, r10
    3a82:	63 67 19 00 	st.w	r12, 24[sp]
    3a86:	40 c6 00 00 	movhi	0, r0, r24
    3a8a:	4a 6f 00 00 	st.b	r13, 0[r10]
    3a8e:	38 c6 a0 5c 	movea	23712, r24, r24
    3a92:	80 07 86 04 	jr	3f18 <__dtoa_r+0xa04>
    3a96:	23 67 35 00 	ld.w	52[sp], r12
    3a9a:	60 62       	cmp	0, r12
    3a9c:	92 65       	be	3b5e <__dtoa_r+0x64a>
    3a9e:	23 67 91 00 	ld.w	144[sp], r12
    3aa2:	61 62       	cmp	1, r12
    3aa4:	bf 05       	bgt	3aaa <__dtoa_r+0x596>
    3aa6:	80 07 5c 05 	jr	4002 <__dtoa_r+0xaee>
    3aaa:	23 d7 25 00 	ld.w	36[sp], r26
    3aae:	23 67 2d 00 	ld.w	44[sp], r12
    3ab2:	5f d2       	add	-1, r26
    3ab4:	fa 61       	cmp	r26, r12
    3ab6:	be 05       	bge	3abc <__dtoa_r+0x5a8>
    3ab8:	80 07 8e 0a 	jr	4546 <__dtoa_r+0x1032>
    3abc:	8c d1       	subr	r12, r26
    3abe:	23 67 25 00 	ld.w	36[sp], r12
    3ac2:	23 ef 21 00 	ld.w	32[sp], r29
    3ac6:	60 62       	cmp	0, r12
    3ac8:	be 05       	bge	3ace <__dtoa_r+0x5ba>
    3aca:	80 07 20 0d 	jr	47ea <__dtoa_r+0x12d6>
    3ace:	23 57 25 00 	ld.w	36[sp], r10
    3ad2:	23 67 21 00 	ld.w	32[sp], r12
    3ad6:	40 de 00 00 	movhi	0, r0, r27
    3ada:	ca 61       	add	r10, r12
    3adc:	63 67 21 00 	st.w	r12, 32[sp]
    3ae0:	23 67 1d 00 	ld.w	28[sp], r12
    3ae4:	02 30       	mov	r2, r6
    3ae6:	ca 61       	add	r10, r12
    3ae8:	01 3a       	mov	1, r7
    3aea:	3b de 44 5f 	movea	24388, r27, r27
    3aee:	63 67 1d 00 	st.w	r12, 28[sp]
    3af2:	80 ff 04 00 	jarl	3af6 <__dtoa_r+0x5e2>, lp
    3af6:	44 fa       	add	4, lp
    3af8:	7b 00       	jmp	[r27]
    3afa:	63 57 29 00 	st.w	r10, 40[sp]
    3afe:	a5 3d       	br	3b72 <__dtoa_r+0x65e>
    3b00:	01 62       	mov	1, r12
    3b02:	63 67 3d 00 	st.w	r12, 60[sp]
    3b06:	bf 07 9a fc 	jr	37a0 <__dtoa_r+0x28c>
    3b0a:	23 67 21 00 	ld.w	32[sp], r12
    3b0e:	23 57 19 00 	ld.w	24[sp], r10
    3b12:	63 07 31 00 	st.w	r0, 48[sp]
    3b16:	aa 61       	sub	r10, r12
    3b18:	80 51       	subr	r0, r10
    3b1a:	63 67 21 00 	st.w	r12, 32[sp]
    3b1e:	63 57 2d 00 	st.w	r10, 44[sp]
    3b22:	bf 07 b0 fc 	jr	37d2 <__dtoa_r+0x2be>
    3b26:	80 c9       	subr	r0, r25
    3b28:	63 cf 21 00 	st.w	r25, 32[sp]
    3b2c:	63 07 1d 00 	st.w	r0, 28[sp]
    3b30:	bf 07 84 fc 	jr	37b4 <__dtoa_r+0x2a0>
    3b34:	23 37 19 00 	ld.w	24[sp], r6
    3b38:	80 ff 18 5d 	jarl	9850 <___floatsidf>, lp
    3b3c:	0a 30       	mov	r10, r6
    3b3e:	0b 38       	mov	r11, r7
    3b40:	1a 40       	mov	r26, r8
    3b42:	1b 48       	mov	r27, r9
    3b44:	80 ff 3c 5b 	jarl	9680 <___nedf2>, lp
    3b48:	60 52       	cmp	0, r10
    3b4a:	ba 05       	bne	3b50 <__dtoa_r+0x63c>
    3b4c:	bf 07 10 fc 	jr	375c <__dtoa_r+0x248>
    3b50:	23 67 19 00 	ld.w	24[sp], r12
    3b54:	5f 62       	add	-1, r12
    3b56:	63 67 19 00 	st.w	r12, 24[sp]
    3b5a:	bf 07 02 fc 	jr	375c <__dtoa_r+0x248>
    3b5e:	40 de 00 00 	movhi	0, r0, r27
    3b62:	23 d7 2d 00 	ld.w	44[sp], r26
    3b66:	23 ef 21 00 	ld.w	32[sp], r29
    3b6a:	63 07 29 00 	st.w	r0, 40[sp]
    3b6e:	3b de 44 5f 	movea	24388, r27, r27
    3b72:	60 ea       	cmp	0, r29
    3b74:	d2 15       	be	3b9e <__dtoa_r+0x68a>
    3b76:	23 67 1d 00 	ld.w	28[sp], r12
    3b7a:	60 62       	cmp	0, r12
    3b7c:	97 15       	ble	3b9e <__dtoa_r+0x68a>
    3b7e:	0c 50       	mov	r12, r10
    3b80:	fd 61       	cmp	r29, r12
    3b82:	b7 05       	ble	3b88 <__dtoa_r+0x674>
    3b84:	80 07 04 04 	jr	3f88 <__dtoa_r+0xa74>
    3b88:	23 67 21 00 	ld.w	32[sp], r12
    3b8c:	aa e9       	sub	r10, r29
    3b8e:	aa 61       	sub	r10, r12
    3b90:	63 67 21 00 	st.w	r12, 32[sp]
    3b94:	23 67 1d 00 	ld.w	28[sp], r12
    3b98:	aa 61       	sub	r10, r12
    3b9a:	63 67 1d 00 	st.w	r12, 28[sp]
    3b9e:	23 67 2d 00 	ld.w	44[sp], r12
    3ba2:	60 62       	cmp	0, r12
    3ba4:	b7 35       	ble	3c0a <__dtoa_r+0x6f6>
    3ba6:	23 67 35 00 	ld.w	52[sp], r12
    3baa:	60 62       	cmp	0, r12
    3bac:	82 2d       	be	3bfc <__dtoa_r+0x6e8>
    3bae:	60 d2       	cmp	0, r26
    3bb0:	bf 05       	bgt	3bb6 <__dtoa_r+0x6a2>
    3bb2:	80 07 dc 03 	jr	3f8e <__dtoa_r+0xa7a>
    3bb6:	23 3f 29 00 	ld.w	40[sp], r7
    3bba:	02 30       	mov	r2, r6
    3bbc:	1a 40       	mov	r26, r8
    3bbe:	80 ff d2 25 	jarl	6190 <___pow5mult>, lp
    3bc2:	15 40       	mov	r21, r8
    3bc4:	02 30       	mov	r2, r6
    3bc6:	0a 38       	mov	r10, r7
    3bc8:	63 57 29 00 	st.w	r10, 40[sp]
    3bcc:	40 c6 00 00 	movhi	0, r0, r24
    3bd0:	80 ff 94 23 	jarl	5f64 <___multiply>, lp
    3bd4:	0a b0       	mov	r10, r22
    3bd6:	15 38       	mov	r21, r7
    3bd8:	02 30       	mov	r2, r6
    3bda:	38 c6 a0 5c 	movea	23712, r24, r24
    3bde:	80 ff 04 00 	jarl	3be2 <__dtoa_r+0x6ce>, lp
    3be2:	44 fa       	add	4, lp
    3be4:	78 00       	jmp	[r24]
    3be6:	16 a8       	mov	r22, r21
    3be8:	23 47 2d 00 	ld.w	44[sp], r8
    3bec:	ba 41       	sub	r26, r8
    3bee:	a2 15       	be	3c12 <__dtoa_r+0x6fe>
    3bf0:	15 38       	mov	r21, r7
    3bf2:	02 30       	mov	r2, r6
    3bf4:	80 ff 9c 25 	jarl	6190 <___pow5mult>, lp
    3bf8:	0a a8       	mov	r10, r21
    3bfa:	c5 0d       	br	3c12 <__dtoa_r+0x6fe>
    3bfc:	23 47 2d 00 	ld.w	44[sp], r8
    3c00:	15 38       	mov	r21, r7
    3c02:	02 30       	mov	r2, r6
    3c04:	80 ff 8c 25 	jarl	6190 <___pow5mult>, lp
    3c08:	0a a8       	mov	r10, r21
    3c0a:	40 c6 00 00 	movhi	0, r0, r24
    3c0e:	38 c6 a0 5c 	movea	23712, r24, r24
    3c12:	02 30       	mov	r2, r6
    3c14:	01 3a       	mov	1, r7
    3c16:	80 ff 04 00 	jarl	3c1a <__dtoa_r+0x706>, lp
    3c1a:	44 fa       	add	4, lp
    3c1c:	7b 00       	jmp	[r27]
    3c1e:	23 67 31 00 	ld.w	48[sp], r12
    3c22:	0a d0       	mov	r10, r26
    3c24:	60 62       	cmp	0, r12
    3c26:	f7 05       	ble	3c34 <__dtoa_r+0x720>
    3c28:	02 30       	mov	r2, r6
    3c2a:	0a 38       	mov	r10, r7
    3c2c:	0c 40       	mov	r12, r8
    3c2e:	80 ff 62 25 	jarl	6190 <___pow5mult>, lp
    3c32:	0a d0       	mov	r10, r26
    3c34:	23 67 91 00 	ld.w	144[sp], r12
    3c38:	61 62       	cmp	1, r12
    3c3a:	bf 05       	bgt	3c40 <__dtoa_r+0x72c>
    3c3c:	80 07 0e 03 	jr	3f4a <__dtoa_r+0xa36>
    3c40:	00 e2       	mov	0, r28
    3c42:	23 67 31 00 	ld.w	48[sp], r12
    3c46:	60 62       	cmp	0, r12
    3c48:	b2 05       	be	3c4e <__dtoa_r+0x73a>
    3c4a:	80 07 b4 07 	jr	43fe <__dtoa_r+0xeea>
    3c4e:	01 5a       	mov	1, r11
    3c50:	23 57 1d 00 	ld.w	28[sp], r10
    3c54:	cb 51       	add	r11, r10
    3c56:	ca 56 1f 00 	andi	31, r10, r10
    3c5a:	ba 05       	bne	3c60 <__dtoa_r+0x74c>
    3c5c:	80 07 a6 01 	jr	3e02 <__dtoa_r+0x8ee>
    3c60:	20 5e 20 00 	movea	32, r0, r11
    3c64:	aa 59       	sub	r10, r11
    3c66:	64 5a       	cmp	4, r11
    3c68:	bf 05       	bgt	3c6e <__dtoa_r+0x75a>
    3c6a:	80 07 ea 0c 	jr	4954 <__dtoa_r+0x1440>
    3c6e:	20 5e 1c 00 	movea	28, r0, r11
    3c72:	aa 59       	sub	r10, r11
    3c74:	23 67 21 00 	ld.w	32[sp], r12
    3c78:	cb e9       	add	r11, r29
    3c7a:	cb 61       	add	r11, r12
    3c7c:	63 67 21 00 	st.w	r12, 32[sp]
    3c80:	23 67 1d 00 	ld.w	28[sp], r12
    3c84:	cb 61       	add	r11, r12
    3c86:	63 67 1d 00 	st.w	r12, 28[sp]
    3c8a:	23 67 21 00 	ld.w	32[sp], r12
    3c8e:	60 62       	cmp	0, r12
    3c90:	f7 05       	ble	3c9e <__dtoa_r+0x78a>
    3c92:	15 38       	mov	r21, r7
    3c94:	02 30       	mov	r2, r6
    3c96:	0c 40       	mov	r12, r8
    3c98:	80 ff bc 25 	jarl	6254 <___lshift>, lp
    3c9c:	0a a8       	mov	r10, r21
    3c9e:	23 67 1d 00 	ld.w	28[sp], r12
    3ca2:	60 62       	cmp	0, r12
    3ca4:	f7 05       	ble	3cb2 <__dtoa_r+0x79e>
    3ca6:	1a 38       	mov	r26, r7
    3ca8:	02 30       	mov	r2, r6
    3caa:	0c 40       	mov	r12, r8
    3cac:	80 ff a8 25 	jarl	6254 <___lshift>, lp
    3cb0:	0a d0       	mov	r10, r26
    3cb2:	23 67 3d 00 	ld.w	60[sp], r12
    3cb6:	60 62       	cmp	0, r12
    3cb8:	b2 05       	be	3cbe <__dtoa_r+0x7aa>
    3cba:	80 07 60 07 	jr	441a <__dtoa_r+0xf06>
    3cbe:	23 67 25 00 	ld.w	36[sp], r12
    3cc2:	60 62       	cmp	0, r12
    3cc4:	bf 05       	bgt	3cca <__dtoa_r+0x7b6>
    3cc6:	80 07 a0 07 	jr	4466 <__dtoa_r+0xf52>
    3cca:	23 67 35 00 	ld.w	52[sp], r12
    3cce:	60 62       	cmp	0, r12
    3cd0:	ba 05       	bne	3cd6 <__dtoa_r+0x7c2>
    3cd2:	80 07 50 01 	jr	3e22 <__dtoa_r+0x90e>
    3cd6:	60 ea       	cmp	0, r29
    3cd8:	97 0d       	ble	3cea <__dtoa_r+0x7d6>
    3cda:	23 3f 29 00 	ld.w	40[sp], r7
    3cde:	02 30       	mov	r2, r6
    3ce0:	1d 40       	mov	r29, r8
    3ce2:	80 ff 72 25 	jarl	6254 <___lshift>, lp
    3ce6:	63 57 29 00 	st.w	r10, 40[sp]
    3cea:	60 e2       	cmp	0, r28
    3cec:	b2 05       	be	3cf2 <__dtoa_r+0x7de>
    3cee:	80 07 7a 09 	jr	4668 <__dtoa_r+0x1154>
    3cf2:	23 df 29 00 	ld.w	40[sp], r27
    3cf6:	23 67 25 00 	ld.w	36[sp], r12
    3cfa:	40 56 00 00 	movhi	0, r0, r10
    3cfe:	2a 56 4c 63 	movea	25420, r10, r10
    3d02:	d7 be 01 00 	andi	1, r23, r23
    3d06:	40 b6 00 00 	movhi	0, r0, r22
    3d0a:	d4 61       	add	r20, r12
    3d0c:	36 b6 28 33 	movea	13096, r22, r22
    3d10:	63 bf 25 00 	st.w	r23, 36[sp]
    3d14:	14 ee 01 00 	addi	1, r20, r29
    3d18:	0a b8       	mov	r10, r23
    3d1a:	23 e7 29 00 	ld.w	40[sp], r28
    3d1e:	63 67 21 00 	st.w	r12, 32[sp]
    3d22:	63 57 2d 00 	st.w	r10, 44[sp]
    3d26:	63 a7 29 00 	st.w	r20, 40[sp]
    3d2a:	63 b7 1d 00 	st.w	r22, 28[sp]
    3d2e:	23 5f 1d 00 	ld.w	28[sp], r11
    3d32:	15 30       	mov	r21, r6
    3d34:	1a 38       	mov	r26, r7
    3d36:	80 ff 04 00 	jarl	3d3a <__dtoa_r+0x826>, lp
    3d3a:	44 fa       	add	4, lp
    3d3c:	6b 00       	jmp	[r11]
    3d3e:	15 30       	mov	r21, r6
    3d40:	1c 38       	mov	r28, r7
    3d42:	0a a0       	mov	r10, r20
    3d44:	80 ff 04 00 	jarl	3d48 <__dtoa_r+0x834>, lp
    3d48:	44 fa       	add	4, lp
    3d4a:	77 00       	jmp	[r23]
    3d4c:	02 30       	mov	r2, r6
    3d4e:	1a 38       	mov	r26, r7
    3d50:	1b 40       	mov	r27, r8
    3d52:	0a c8       	mov	r10, r25
    3d54:	80 ff 34 26 	jarl	6388 <___mdiff>, lp
    3d58:	0a 58       	mov	r10, r11
    3d5a:	1d 66 ff ff 	addi	-1, r29, r12
    3d5e:	2a 57 0d 00 	ld.w	12[r10], r10
    3d62:	63 67 15 00 	st.w	r12, 20[sp]
    3d66:	14 b6 30 00 	addi	48, r20, r22
    3d6a:	60 52       	cmp	0, r10
    3d6c:	ba 05       	bne	3d72 <__dtoa_r+0x85e>
    3d6e:	80 07 e6 05 	jr	4354 <__dtoa_r+0xe40>
    3d72:	02 30       	mov	r2, r6
    3d74:	0b 38       	mov	r11, r7
    3d76:	80 ff 04 00 	jarl	3d7a <__dtoa_r+0x866>, lp
    3d7a:	44 fa       	add	4, lp
    3d7c:	78 00       	jmp	[r24]
    3d7e:	01 52       	mov	1, r10
    3d80:	60 ca       	cmp	0, r25
    3d82:	be 05       	bge	3d88 <__dtoa_r+0x874>
    3d84:	80 07 f2 07 	jr	4576 <__dtoa_r+0x1062>
    3d88:	ba 0d       	bne	3d9e <__dtoa_r+0x88a>
    3d8a:	23 67 91 00 	ld.w	144[sp], r12
    3d8e:	60 62       	cmp	0, r12
    3d90:	fa 05       	bne	3d9e <__dtoa_r+0x88a>
    3d92:	23 5f 25 00 	ld.w	36[sp], r11
    3d96:	60 5a       	cmp	0, r11
    3d98:	ba 05       	bne	3d9e <__dtoa_r+0x88a>
    3d9a:	80 07 dc 07 	jr	4576 <__dtoa_r+0x1062>
    3d9e:	60 52       	cmp	0, r10
    3da0:	b7 05       	ble	3da6 <__dtoa_r+0x892>
    3da2:	80 07 10 09 	jr	46b2 <__dtoa_r+0x119e>
    3da6:	23 5f 21 00 	ld.w	32[sp], r11
    3daa:	5d b7 ff ff 	st.b	r22, -1[r29]
    3dae:	1d c8       	mov	r29, r25
    3db0:	eb e9       	cmp	r11, r29
    3db2:	ba 05       	bne	3db8 <__dtoa_r+0x8a4>
    3db4:	80 07 26 09 	jr	46da <__dtoa_r+0x11c6>
    3db8:	40 66 00 00 	movhi	0, r0, r12
    3dbc:	15 38       	mov	r21, r7
    3dbe:	02 30       	mov	r2, r6
    3dc0:	0a 42       	mov	10, r8
    3dc2:	00 4a       	mov	0, r9
    3dc4:	2c ce c0 5c 	movea	23744, r12, r25
    3dc8:	80 ff 04 00 	jarl	3dcc <__dtoa_r+0x8b8>, lp
    3dcc:	44 fa       	add	4, lp
    3dce:	79 00       	jmp	[r25]
    3dd0:	0a a8       	mov	r10, r21
    3dd2:	fb e1       	cmp	r27, r28
    3dd4:	ba 05       	bne	3dda <__dtoa_r+0x8c6>
    3dd6:	80 07 f6 05 	jr	43cc <__dtoa_r+0xeb8>
    3dda:	1c 38       	mov	r28, r7
    3ddc:	0a 42       	mov	10, r8
    3dde:	00 4a       	mov	0, r9
    3de0:	02 30       	mov	r2, r6
    3de2:	80 ff 04 00 	jarl	3de6 <__dtoa_r+0x8d2>, lp
    3de6:	44 fa       	add	4, lp
    3de8:	79 00       	jmp	[r25]
    3dea:	1b 38       	mov	r27, r7
    3dec:	02 30       	mov	r2, r6
    3dee:	0a 42       	mov	10, r8
    3df0:	00 4a       	mov	0, r9
    3df2:	0a e0       	mov	r10, r28
    3df4:	80 ff 04 00 	jarl	3df8 <__dtoa_r+0x8e4>, lp
    3df8:	44 fa       	add	4, lp
    3dfa:	79 00       	jmp	[r25]
    3dfc:	0a d8       	mov	r10, r27
    3dfe:	41 ea       	add	1, r29
    3e00:	f5 95       	br	3d2e <__dtoa_r+0x81a>
    3e02:	20 5e 1c 00 	movea	28, r0, r11
    3e06:	bf 07 6e fe 	jr	3c74 <__dtoa_r+0x760>
    3e0a:	20 56 ee fb 	movea	-1042, r0, r10
    3e0e:	b9 51       	sub	r25, r10
    3e10:	17 30       	mov	r23, r6
    3e12:	ea 37 c0 00 	shl	r10, r6
    3e16:	bf 07 96 f8 	jr	36ac <__dtoa_r+0x198>
    3e1a:	63 07 3d 00 	st.w	r0, 60[sp]
    3e1e:	bf 07 82 f9 	jr	37a0 <__dtoa_r+0x28c>
    3e22:	40 b6 00 00 	movhi	0, r0, r22
    3e26:	14 e8       	mov	r20, r29
    3e28:	36 b6 28 33 	movea	13096, r22, r22
    3e2c:	23 e7 25 00 	ld.w	36[sp], r28
    3e30:	85 0d       	br	3e40 <__dtoa_r+0x92c>
    3e32:	15 38       	mov	r21, r7
    3e34:	02 30       	mov	r2, r6
    3e36:	0a 42       	mov	10, r8
    3e38:	00 4a       	mov	0, r9
    3e3a:	80 ff 86 1e 	jarl	5cc0 <___multadd>, lp
    3e3e:	0a a8       	mov	r10, r21
    3e40:	15 30       	mov	r21, r6
    3e42:	1a 38       	mov	r26, r7
    3e44:	80 ff 04 00 	jarl	3e48 <__dtoa_r+0x934>, lp
    3e48:	44 fa       	add	4, lp
    3e4a:	76 00       	jmp	[r22]
    3e4c:	0a 56 30 00 	addi	48, r10, r10
    3e50:	5d 57 00 00 	st.b	r10, 0[r29]
    3e54:	41 ea       	add	1, r29
    3e56:	1d 58       	mov	r29, r11
    3e58:	b4 59       	sub	r20, r11
    3e5a:	eb e1       	cmp	r11, r28
    3e5c:	bf ed       	bgt	3e32 <__dtoa_r+0x91e>
    3e5e:	0a b8       	mov	r10, r23
    3e60:	23 57 25 00 	ld.w	36[sp], r10
    3e64:	60 52       	cmp	0, r10
    3e66:	bf 05       	bgt	3e6c <__dtoa_r+0x958>
    3e68:	80 07 8a 09 	jr	47f2 <__dtoa_r+0x12de>
    3e6c:	14 c8       	mov	r20, r25
    3e6e:	ca c9       	add	r10, r25
    3e70:	40 56 00 00 	movhi	0, r0, r10
    3e74:	2a 56 4c 63 	movea	25420, r10, r10
    3e78:	00 e2       	mov	0, r28
    3e7a:	63 57 2d 00 	st.w	r10, 44[sp]
    3e7e:	15 38       	mov	r21, r7
    3e80:	02 30       	mov	r2, r6
    3e82:	01 42       	mov	1, r8
    3e84:	80 ff d0 23 	jarl	6254 <___lshift>, lp
    3e88:	23 5f 2d 00 	ld.w	44[sp], r11
    3e8c:	0a 30       	mov	r10, r6
    3e8e:	1a 38       	mov	r26, r7
    3e90:	0a a8       	mov	r10, r21
    3e92:	80 ff 04 00 	jarl	3e96 <__dtoa_r+0x982>, lp
    3e96:	44 fa       	add	4, lp
    3e98:	6b 00       	jmp	[r11]
    3e9a:	60 52       	cmp	0, r10
    3e9c:	bf 05       	bgt	3ea2 <__dtoa_r+0x98e>
    3e9e:	80 07 2e 07 	jr	45cc <__dtoa_r+0x10b8>
    3ea2:	19 57 ff ff 	ld.b	-1[r25], r10
    3ea6:	d8 52       	shl	24, r10
    3ea8:	b8 52       	sar	24, r10
    3eaa:	19 6e fe ff 	addi	-2, r25, r13
    3eae:	20 76 39 00 	movea	57, r0, r14
    3eb2:	f5 05       	br	3ec0 <__dtoa_r+0x9ac>
    3eb4:	0d 57 00 00 	ld.b	0[r13], r10
    3eb8:	0b c8       	mov	r11, r25
    3eba:	d8 52       	shl	24, r10
    3ebc:	b8 52       	sar	24, r10
    3ebe:	5f 6a       	add	-1, r13
    3ec0:	19 5e ff ff 	addi	-1, r25, r11
    3ec4:	ee 51       	cmp	r14, r10
    3ec6:	b2 05       	be	3ecc <__dtoa_r+0x9b8>
    3ec8:	80 07 e0 07 	jr	46a8 <__dtoa_r+0x1194>
    3ecc:	eb a1       	cmp	r11, r20
    3ece:	ba f5       	bne	3eb4 <__dtoa_r+0x9a0>
    3ed0:	23 67 19 00 	ld.w	24[sp], r12
    3ed4:	20 56 31 00 	movea	49, r0, r10
    3ed8:	41 62       	add	1, r12
    3eda:	63 67 19 00 	st.w	r12, 24[sp]
    3ede:	54 57 00 00 	st.b	r10, 0[r20]
    3ee2:	02 30       	mov	r2, r6
    3ee4:	1a 38       	mov	r26, r7
    3ee6:	80 ff 04 00 	jarl	3eea <__dtoa_r+0x9d6>, lp
    3eea:	44 fa       	add	4, lp
    3eec:	78 00       	jmp	[r24]
    3eee:	23 5f 29 00 	ld.w	40[sp], r11
    3ef2:	60 5a       	cmp	0, r11
    3ef4:	a2 15       	be	3f18 <__dtoa_r+0xa04>
    3ef6:	60 e2       	cmp	0, r28
    3ef8:	92 0d       	be	3f0a <__dtoa_r+0x9f6>
    3efa:	eb e1       	cmp	r11, r28
    3efc:	f2 05       	be	3f0a <__dtoa_r+0x9f6>
    3efe:	02 30       	mov	r2, r6
    3f00:	1c 38       	mov	r28, r7
    3f02:	80 ff 04 00 	jarl	3f06 <__dtoa_r+0x9f2>, lp
    3f06:	44 fa       	add	4, lp
    3f08:	78 00       	jmp	[r24]
    3f0a:	23 3f 29 00 	ld.w	40[sp], r7
    3f0e:	02 30       	mov	r2, r6
    3f10:	80 ff 04 00 	jarl	3f14 <__dtoa_r+0xa00>, lp
    3f14:	44 fa       	add	4, lp
    3f16:	78 00       	jmp	[r24]
    3f18:	02 30       	mov	r2, r6
    3f1a:	15 38       	mov	r21, r7
    3f1c:	80 ff 04 00 	jarl	3f20 <__dtoa_r+0xa0c>, lp
    3f20:	44 fa       	add	4, lp
    3f22:	78 00       	jmp	[r24]
    3f24:	23 57 19 00 	ld.w	24[sp], r10
    3f28:	23 67 99 00 	ld.w	152[sp], r12
    3f2c:	59 07 00 00 	st.b	r0, 0[r25]
    3f30:	41 52       	add	1, r10
    3f32:	6c 57 01 00 	st.w	r10, 0[r12]
    3f36:	23 67 a1 00 	ld.w	160[sp], r12
    3f3a:	60 62       	cmp	0, r12
    3f3c:	ba 05       	bne	3f42 <__dtoa_r+0xa2e>
    3f3e:	bf 07 8a f6 	jr	35c8 <__dtoa_r+0xb4>
    3f42:	6c cf 01 00 	st.w	r25, 0[r12]
    3f46:	bf 07 82 f6 	jr	35c8 <__dtoa_r+0xb4>
    3f4a:	60 ba       	cmp	0, r23
    3f4c:	b2 05       	be	3f52 <__dtoa_r+0xa3e>
    3f4e:	bf 07 f2 fc 	jr	3c40 <__dtoa_r+0x72c>
    3f52:	40 56 10 00 	movhi	16, r0, r10
    3f56:	2a 56 ff ff 	movea	-1, r10, r10
    3f5a:	5c 51       	and	r28, r10
    3f5c:	b2 05       	be	3f62 <__dtoa_r+0xa4e>
    3f5e:	bf 07 e2 fc 	jr	3c40 <__dtoa_r+0x72c>
    3f62:	40 56 f0 7f 	movhi	32752, r0, r10
    3f66:	4a e1       	and	r10, r28
    3f68:	ba 05       	bne	3f6e <__dtoa_r+0xa5a>
    3f6a:	bf 07 d6 fc 	jr	3c40 <__dtoa_r+0x72c>
    3f6e:	23 67 21 00 	ld.w	32[sp], r12
    3f72:	01 e2       	mov	1, r28
    3f74:	41 62       	add	1, r12
    3f76:	63 67 21 00 	st.w	r12, 32[sp]
    3f7a:	23 67 1d 00 	ld.w	28[sp], r12
    3f7e:	41 62       	add	1, r12
    3f80:	63 67 1d 00 	st.w	r12, 28[sp]
    3f84:	bf 07 be fc 	jr	3c42 <__dtoa_r+0x72e>
    3f88:	1d 50       	mov	r29, r10
    3f8a:	bf 07 fe fb 	jr	3b88 <__dtoa_r+0x674>
    3f8e:	40 c6 00 00 	movhi	0, r0, r24
    3f92:	38 c6 a0 5c 	movea	23712, r24, r24
    3f96:	bf 07 52 fc 	jr	3be8 <__dtoa_r+0x6d4>
    3f9a:	23 67 25 00 	ld.w	36[sp], r12
    3f9e:	60 62       	cmp	0, r12
    3fa0:	b7 05       	ble	3fa6 <__dtoa_r+0xa92>
    3fa2:	bf 07 38 f9 	jr	38da <__dtoa_r+0x3c6>
    3fa6:	b2 05       	be	3fac <__dtoa_r+0xa98>
    3fa8:	80 07 8c 05 	jr	4534 <__dtoa_r+0x1020>
    3fac:	1a 38       	mov	r26, r7
    3fae:	1b 30       	mov	r27, r6
    3fb0:	00 42       	mov	0, r8
    3fb2:	40 4e 14 40 	movhi	16404, r0, r9
    3fb6:	80 ff 04 00 	jarl	3fba <__dtoa_r+0xaa6>, lp
    3fba:	44 fa       	add	4, lp
    3fbc:	7d 00       	jmp	[r29]
    3fbe:	0a 30       	mov	r10, r6
    3fc0:	0b 38       	mov	r11, r7
    3fc2:	17 40       	mov	r23, r8
    3fc4:	1c 48       	mov	r28, r9
    3fc6:	80 ff a2 57 	jarl	9768 <___gedf2>, lp
    3fca:	40 c6 00 00 	movhi	0, r0, r24
    3fce:	63 07 29 00 	st.w	r0, 40[sp]
    3fd2:	00 d2       	mov	0, r26
    3fd4:	38 c6 a0 5c 	movea	23712, r24, r24
    3fd8:	60 52       	cmp	0, r10
    3fda:	be 05       	bge	3fe0 <__dtoa_r+0xacc>
    3fdc:	80 07 c0 04 	jr	449c <__dtoa_r+0xf88>
    3fe0:	23 67 95 00 	ld.w	148[sp], r12
    3fe4:	14 c8       	mov	r20, r25
    3fe6:	2c 60       	not	r12, r12
    3fe8:	63 67 19 00 	st.w	r12, 24[sp]
    3fec:	02 30       	mov	r2, r6
    3fee:	1a 38       	mov	r26, r7
    3ff0:	80 ff 04 00 	jarl	3ff4 <__dtoa_r+0xae0>, lp
    3ff4:	44 fa       	add	4, lp
    3ff6:	78 00       	jmp	[r24]
    3ff8:	23 5f 29 00 	ld.w	40[sp], r11
    3ffc:	60 5a       	cmp	0, r11
    3ffe:	ea 85       	bne	3f0a <__dtoa_r+0x9f6>
    4000:	c5 8d       	br	3f18 <__dtoa_r+0xa04>
    4002:	23 67 45 00 	ld.w	68[sp], r12
    4006:	60 62       	cmp	0, r12
    4008:	ba 05       	bne	400e <__dtoa_r+0xafa>
    400a:	80 07 fa 07 	jr	4804 <__dtoa_r+0x12f0>
    400e:	0a 56 33 04 	addi	1075, r10, r10
    4012:	23 d7 2d 00 	ld.w	44[sp], r26
    4016:	23 ef 21 00 	ld.w	32[sp], r29
    401a:	bf 07 b8 fa 	jr	3ad2 <__dtoa_r+0x5be>
    401e:	63 07 35 00 	st.w	r0, 52[sp]
    4022:	23 5f 95 00 	ld.w	148[sp], r11
    4026:	23 67 19 00 	ld.w	24[sp], r12
    402a:	cc 59       	add	r12, r11
    402c:	0b d8       	mov	r11, r27
    402e:	41 da       	add	1, r27
    4030:	63 5f 41 00 	st.w	r11, 64[sp]
    4034:	63 df 25 00 	st.w	r27, 36[sp]
    4038:	60 da       	cmp	0, r27
    403a:	bf 05       	bgt	4040 <__dtoa_r+0xb2c>
    403c:	80 07 b8 03 	jr	43f4 <__dtoa_r+0xee0>
    4040:	62 07 45 00 	st.w	r0, 68[r2]
    4044:	20 56 17 00 	movea	23, r0, r10
    4048:	ea d9       	cmp	r10, r27
    404a:	bb 05       	bh	4050 <__dtoa_r+0xb3c>
    404c:	80 07 20 09 	jr	496c <__dtoa_r+0x1458>
    4050:	01 5a       	mov	1, r11
    4052:	04 52       	mov	4, r10
    4054:	ca 51       	add	r10, r10
    4056:	0a 66 14 00 	addi	20, r10, r12
    405a:	0b 38       	mov	r11, r7
    405c:	41 5a       	add	1, r11
    405e:	fb 61       	cmp	r27, r12
    4060:	a3 fd       	bnh	4054 <__dtoa_r+0xb40>
    4062:	62 3f 45 00 	st.w	r7, 68[r2]
    4066:	40 56 00 00 	movhi	0, r0, r10
    406a:	2a 56 28 5c 	movea	23592, r10, r10
    406e:	02 30       	mov	r2, r6
    4070:	63 57 39 00 	st.w	r10, 56[sp]
    4074:	80 ff 04 00 	jarl	4078 <__dtoa_r+0xb64>, lp
    4078:	44 fa       	add	4, lp
    407a:	6a 00       	jmp	[r10]
    407c:	62 57 41 00 	st.w	r10, 64[r2]
    4080:	0a a0       	mov	r10, r20
    4082:	6e da       	cmp	14, r27
    4084:	b3 05       	bnh	408a <__dtoa_r+0xb76>
    4086:	bf 07 1a f8 	jr	38a0 <__dtoa_r+0x38c>
    408a:	60 d2       	cmp	0, r26
    408c:	ba 05       	bne	4092 <__dtoa_r+0xb7e>
    408e:	bf 07 12 f8 	jr	38a0 <__dtoa_r+0x38c>
    4092:	23 67 19 00 	ld.w	24[sp], r12
    4096:	60 62       	cmp	0, r12
    4098:	bf 05       	bgt	409e <__dtoa_r+0xb8a>
    409a:	80 07 5c 05 	jr	45f6 <__dtoa_r+0x10e2>
    409e:	cc 56 0f 00 	andi	15, r12, r10
    40a2:	0c b0       	mov	r12, r22
    40a4:	40 5e 01 00 	movhi	1, r0, r11
    40a8:	2b 5e 38 a0 	movea	-24520, r11, r11
    40ac:	c3 52       	shl	3, r10
    40ae:	a4 b2       	sar	4, r22
    40b0:	cb 51       	add	r11, r10
    40b2:	d6 5e 10 00 	andi	16, r22, r11
    40b6:	2a 7f 01 00 	ld.w	0[r10], r15
    40ba:	2a 77 05 00 	ld.w	4[r10], r14
    40be:	ba 05       	bne	40c4 <__dtoa_r+0xbb0>
    40c0:	80 07 a0 04 	jr	4560 <__dtoa_r+0x104c>
    40c4:	40 56 01 00 	movhi	1, r0, r10
    40c8:	2a 56 10 a0 	movea	-24560, r10, r10
    40cc:	40 ce 01 00 	movhi	1, r0, r25
    40d0:	2a 47 21 00 	ld.w	32[r10], r8
    40d4:	2a 4f 25 00 	ld.w	36[r10], r9
    40d8:	39 ce 84 94 	movea	-27516, r25, r25
    40dc:	17 30       	mov	r23, r6
    40de:	1c 38       	mov	r28, r7
    40e0:	63 77 09 00 	st.w	r14, 8[sp]
    40e4:	63 7f 0d 00 	st.w	r15, 12[sp]
    40e8:	63 cf 29 00 	st.w	r25, 40[sp]
    40ec:	80 ff 04 00 	jarl	40f0 <__dtoa_r+0xbdc>, lp
    40f0:	44 fa       	add	4, lp
    40f2:	79 00       	jmp	[r25]
    40f4:	23 77 09 00 	ld.w	8[sp], r14
    40f8:	23 7f 0d 00 	ld.w	12[sp], r15
    40fc:	0a d0       	mov	r10, r26
    40fe:	0b c0       	mov	r11, r24
    4100:	d6 b6 0f 00 	andi	15, r22, r22
    4104:	03 da       	mov	3, r27
    4106:	60 b2       	cmp	0, r22
    4108:	b2 1d       	be	413e <__dtoa_r+0xc2a>
    410a:	40 66 01 00 	movhi	1, r0, r12
    410e:	2c ce 10 a0 	movea	-24560, r12, r25
    4112:	0f 50       	mov	r15, r10
    4114:	0e 58       	mov	r14, r11
    4116:	d6 66 01 00 	andi	1, r22, r12
    411a:	c2 0d       	be	4132 <__dtoa_r+0xc1e>
    411c:	39 47 01 00 	ld.w	0[r25], r8
    4120:	39 4f 05 00 	ld.w	4[r25], r9
    4124:	0a 30       	mov	r10, r6
    4126:	0b 38       	mov	r11, r7
    4128:	80 ff 04 00 	jarl	412c <__dtoa_r+0xc18>, lp
    412c:	44 fa       	add	4, lp
    412e:	7d 00       	jmp	[r29]
    4130:	41 da       	add	1, r27
    4132:	a1 b2       	sar	1, r22
    4134:	48 ca       	add	8, r25
    4136:	60 b2       	cmp	0, r22
    4138:	fa ed       	bne	4116 <__dtoa_r+0xc02>
    413a:	0a 78       	mov	r10, r15
    413c:	0b 70       	mov	r11, r14
    413e:	23 67 29 00 	ld.w	40[sp], r12
    4142:	1a 30       	mov	r26, r6
    4144:	18 38       	mov	r24, r7
    4146:	0f 40       	mov	r15, r8
    4148:	0e 48       	mov	r14, r9
    414a:	80 ff 04 00 	jarl	414e <__dtoa_r+0xc3a>, lp
    414e:	44 fa       	add	4, lp
    4150:	6c 00       	jmp	[r12]
    4152:	0a d0       	mov	r10, r26
    4154:	0b b0       	mov	r11, r22
    4156:	23 67 3d 00 	ld.w	60[sp], r12
    415a:	60 62       	cmp	0, r12
    415c:	c2 0d       	be	4174 <__dtoa_r+0xc60>
    415e:	1a 30       	mov	r26, r6
    4160:	16 38       	mov	r22, r7
    4162:	00 42       	mov	0, r8
    4164:	40 4e f0 3f 	movhi	16368, r0, r9
    4168:	80 ff 74 56 	jarl	97dc <___ltdf2>, lp
    416c:	60 52       	cmp	0, r10
    416e:	be 05       	bge	4174 <__dtoa_r+0xc60>
    4170:	80 07 b4 06 	jr	4824 <__dtoa_r+0x1310>
    4174:	1b 30       	mov	r27, r6
    4176:	80 ff da 56 	jarl	9850 <___floatsidf>, lp
    417a:	0a 30       	mov	r10, r6
    417c:	0b 38       	mov	r11, r7
    417e:	1a 40       	mov	r26, r8
    4180:	16 48       	mov	r22, r9
    4182:	80 ff 04 00 	jarl	4186 <__dtoa_r+0xc72>, lp
    4186:	44 fa       	add	4, lp
    4188:	7d 00       	jmp	[r29]
    418a:	0a 30       	mov	r10, r6
    418c:	0b 38       	mov	r11, r7
    418e:	00 42       	mov	0, r8
    4190:	40 4e 1c 40 	movhi	16412, r0, r9
    4194:	80 ff a0 4f 	jarl	9134 <___adddf3>, lp
    4198:	23 67 25 00 	ld.w	36[sp], r12
    419c:	40 ce c0 fc 	movhi	-832, r0, r25
    41a0:	0a d8       	mov	r10, r27
    41a2:	cb c9       	add	r11, r25
    41a4:	60 62       	cmp	0, r12
    41a6:	ba 05       	bne	41ac <__dtoa_r+0xc98>
    41a8:	80 07 4e 03 	jr	44f6 <__dtoa_r+0xfe2>
    41ac:	23 67 19 00 	ld.w	24[sp], r12
    41b0:	63 67 4d 00 	st.w	r12, 76[sp]
    41b4:	23 67 25 00 	ld.w	36[sp], r12
    41b8:	63 67 29 00 	st.w	r12, 40[sp]
    41bc:	23 57 29 00 	ld.w	40[sp], r10
    41c0:	40 5e 01 00 	movhi	1, r0, r11
    41c4:	23 67 35 00 	ld.w	52[sp], r12
    41c8:	c3 52       	shl	3, r10
    41ca:	2b 5e 30 a0 	movea	-24528, r11, r11
    41ce:	cb 51       	add	r11, r10
    41d0:	60 62       	cmp	0, r12
    41d2:	ba 05       	bne	41d8 <__dtoa_r+0xcc4>
    41d4:	80 07 14 05 	jr	46e8 <__dtoa_r+0x11d4>
    41d8:	2a 47 01 00 	ld.w	0[r10], r8
    41dc:	2a 4f 05 00 	ld.w	4[r10], r9
    41e0:	00 32       	mov	0, r6
    41e2:	40 3e e0 3f 	movhi	16352, r0, r7
    41e6:	80 ff 9e 52 	jarl	9484 <___divdf3>, lp
    41ea:	1b 40       	mov	r27, r8
    41ec:	19 48       	mov	r25, r9
    41ee:	0a 30       	mov	r10, r6
    41f0:	0b 38       	mov	r11, r7
    41f2:	80 ff aa 4f 	jarl	919c <___subdf3>, lp
    41f6:	16 38       	mov	r22, r7
    41f8:	1a 30       	mov	r26, r6
    41fa:	0b c0       	mov	r11, r24
    41fc:	63 57 49 00 	st.w	r10, 72[sp]
    4200:	80 ff fc 56 	jarl	98fc <___fixdfsi>, lp
    4204:	0a 30       	mov	r10, r6
    4206:	0a d8       	mov	r10, r27
    4208:	80 ff 48 56 	jarl	9850 <___floatsidf>, lp
    420c:	1a 30       	mov	r26, r6
    420e:	16 38       	mov	r22, r7
    4210:	0a 40       	mov	r10, r8
    4212:	0b 48       	mov	r11, r9
    4214:	80 ff 88 4f 	jarl	919c <___subdf3>, lp
    4218:	1b b6 30 00 	addi	48, r27, r22
    421c:	d8 b2       	shl	24, r22
    421e:	23 37 49 00 	ld.w	72[sp], r6
    4222:	b8 b2       	sar	24, r22
    4224:	18 38       	mov	r24, r7
    4226:	0a 40       	mov	r10, r8
    4228:	0b 48       	mov	r11, r9
    422a:	0a d8       	mov	r10, r27
    422c:	0b d0       	mov	r11, r26
    422e:	54 b7 00 00 	st.b	r22, 0[r20]
    4232:	14 ce 01 00 	addi	1, r20, r25
    4236:	80 ff be 54 	jarl	96f4 <___gtdf2>, lp
    423a:	60 52       	cmp	0, r10
    423c:	cf 6d       	bgt	4314 <__dtoa_r+0xe00>
    423e:	00 32       	mov	0, r6
    4240:	40 3e f0 3f 	movhi	16368, r0, r7
    4244:	1b 40       	mov	r27, r8
    4246:	1a 48       	mov	r26, r9
    4248:	80 ff 54 4f 	jarl	919c <___subdf3>, lp
    424c:	23 37 49 00 	ld.w	72[sp], r6
    4250:	18 38       	mov	r24, r7
    4252:	0a 40       	mov	r10, r8
    4254:	0b 48       	mov	r11, r9
    4256:	80 ff 9e 54 	jarl	96f4 <___gtdf2>, lp
    425a:	60 52       	cmp	0, r10
    425c:	b7 05       	ble	4262 <__dtoa_r+0xd4e>
    425e:	80 07 a0 06 	jr	48fe <__dtoa_r+0x13ea>
    4262:	23 67 29 00 	ld.w	40[sp], r12
    4266:	61 62       	cmp	1, r12
    4268:	bf 05       	bgt	426e <__dtoa_r+0xd5a>
    426a:	bf 07 36 f6 	jr	38a0 <__dtoa_r+0x38c>
    426e:	0c b0       	mov	r12, r22
    4270:	63 e7 29 00 	st.w	r28, 40[sp]
    4274:	d4 b1       	add	r20, r22
    4276:	23 e7 49 00 	ld.w	72[sp], r28
    427a:	63 bf 49 00 	st.w	r23, 72[sp]
    427e:	e5 15       	br	42aa <__dtoa_r+0xd96>
    4280:	00 32       	mov	0, r6
    4282:	40 3e f0 3f 	movhi	16368, r0, r7
    4286:	1b 40       	mov	r27, r8
    4288:	1a 48       	mov	r26, r9
    428a:	80 ff 12 4f 	jarl	919c <___subdf3>, lp
    428e:	0a 30       	mov	r10, r6
    4290:	0b 38       	mov	r11, r7
    4292:	1c 40       	mov	r28, r8
    4294:	18 48       	mov	r24, r9
    4296:	80 ff 46 55 	jarl	97dc <___ltdf2>, lp
    429a:	60 52       	cmp	0, r10
    429c:	be 05       	bge	42a2 <__dtoa_r+0xd8e>
    429e:	80 07 5e 06 	jr	48fc <__dtoa_r+0x13e8>
    42a2:	f6 c9       	cmp	r22, r25
    42a4:	ba 05       	bne	42aa <__dtoa_r+0xd96>
    42a6:	80 07 64 06 	jr	490a <__dtoa_r+0x13f6>
    42aa:	1c 30       	mov	r28, r6
    42ac:	18 38       	mov	r24, r7
    42ae:	00 42       	mov	0, r8
    42b0:	40 4e 24 40 	movhi	16420, r0, r9
    42b4:	80 ff 04 00 	jarl	42b8 <__dtoa_r+0xda4>, lp
    42b8:	44 fa       	add	4, lp
    42ba:	7d 00       	jmp	[r29]
    42bc:	00 42       	mov	0, r8
    42be:	40 4e 24 40 	movhi	16420, r0, r9
    42c2:	1b 30       	mov	r27, r6
    42c4:	1a 38       	mov	r26, r7
    42c6:	0a e0       	mov	r10, r28
    42c8:	0b c0       	mov	r11, r24
    42ca:	80 ff 04 00 	jarl	42ce <__dtoa_r+0xdba>, lp
    42ce:	44 fa       	add	4, lp
    42d0:	7d 00       	jmp	[r29]
    42d2:	0b 38       	mov	r11, r7
    42d4:	0a 30       	mov	r10, r6
    42d6:	0b d0       	mov	r11, r26
    42d8:	0a b8       	mov	r10, r23
    42da:	80 ff 22 56 	jarl	98fc <___fixdfsi>, lp
    42de:	0a 30       	mov	r10, r6
    42e0:	0a d8       	mov	r10, r27
    42e2:	80 ff 6e 55 	jarl	9850 <___floatsidf>, lp
    42e6:	17 30       	mov	r23, r6
    42e8:	1a 38       	mov	r26, r7
    42ea:	0a 40       	mov	r10, r8
    42ec:	0b 48       	mov	r11, r9
    42ee:	1b be 30 00 	addi	48, r27, r23
    42f2:	80 ff aa 4e 	jarl	919c <___subdf3>, lp
    42f6:	d8 ba       	shl	24, r23
    42f8:	b8 ba       	sar	24, r23
    42fa:	0a 30       	mov	r10, r6
    42fc:	0b 38       	mov	r11, r7
    42fe:	1c 40       	mov	r28, r8
    4300:	18 48       	mov	r24, r9
    4302:	59 bf 00 00 	st.b	r23, 0[r25]
    4306:	0a d8       	mov	r10, r27
    4308:	0b d0       	mov	r11, r26
    430a:	41 ca       	add	1, r25
    430c:	80 ff d0 54 	jarl	97dc <___ltdf2>, lp
    4310:	60 52       	cmp	0, r10
    4312:	fe b5       	bge	4280 <__dtoa_r+0xd6c>
    4314:	23 67 4d 00 	ld.w	76[sp], r12
    4318:	63 67 19 00 	st.w	r12, 24[sp]
    431c:	40 c6 00 00 	movhi	0, r0, r24
    4320:	38 c6 a0 5c 	movea	23712, r24, r24
    4324:	bf 07 f4 fb 	jr	3f18 <__dtoa_r+0xa04>
    4328:	63 07 35 00 	st.w	r0, 52[sp]
    432c:	23 57 95 00 	ld.w	148[sp], r10
    4330:	60 52       	cmp	0, r10
    4332:	a7 5d       	ble	43e6 <__dtoa_r+0xed2>
    4334:	63 57 41 00 	st.w	r10, 64[sp]
    4338:	0a d8       	mov	r10, r27
    433a:	63 57 25 00 	st.w	r10, 36[sp]
    433e:	bf 07 02 fd 	jr	4040 <__dtoa_r+0xb2c>
    4342:	01 62       	mov	1, r12
    4344:	63 67 35 00 	st.w	r12, 52[sp]
    4348:	a5 f5       	br	432c <__dtoa_r+0xe18>
    434a:	01 62       	mov	1, r12
    434c:	63 67 35 00 	st.w	r12, 52[sp]
    4350:	bf 07 d2 fc 	jr	4022 <__dtoa_r+0xb0e>
    4354:	0b 38       	mov	r11, r7
    4356:	15 30       	mov	r21, r6
    4358:	63 5f 0d 00 	st.w	r11, 12[sp]
    435c:	80 ff 04 00 	jarl	4360 <__dtoa_r+0xe4c>, lp
    4360:	44 fa       	add	4, lp
    4362:	77 00       	jmp	[r23]
    4364:	23 5f 0d 00 	ld.w	12[sp], r11
    4368:	02 30       	mov	r2, r6
    436a:	0b 38       	mov	r11, r7
    436c:	63 57 0d 00 	st.w	r10, 12[sp]
    4370:	80 ff 04 00 	jarl	4374 <__dtoa_r+0xe60>, lp
    4374:	44 fa       	add	4, lp
    4376:	78 00       	jmp	[r24]
    4378:	23 57 0d 00 	ld.w	12[sp], r10
    437c:	60 52       	cmp	0, r10
    437e:	b2 05       	be	4384 <__dtoa_r+0xe70>
    4380:	bf 07 00 fa 	jr	3d80 <__dtoa_r+0x86c>
    4384:	23 67 91 00 	ld.w	144[sp], r12
    4388:	60 62       	cmp	0, r12
    438a:	b2 05       	be	4390 <__dtoa_r+0xe7c>
    438c:	bf 07 f4 f9 	jr	3d80 <__dtoa_r+0x86c>
    4390:	23 5f 25 00 	ld.w	36[sp], r11
    4394:	60 5a       	cmp	0, r11
    4396:	b2 05       	be	439c <__dtoa_r+0xe88>
    4398:	bf 07 e8 f9 	jr	3d80 <__dtoa_r+0x86c>
    439c:	16 b8       	mov	r22, r23
    439e:	20 56 39 00 	movea	57, r0, r10
    43a2:	14 b0       	mov	r20, r22
    43a4:	23 a7 29 00 	ld.w	40[sp], r20
    43a8:	ea b9       	cmp	r10, r23
    43aa:	ba 05       	bne	43b0 <__dtoa_r+0xe9c>
    43ac:	80 07 ea 04 	jr	4896 <__dtoa_r+0x1382>
    43b0:	60 ca       	cmp	0, r25
    43b2:	b7 05       	ble	43b8 <__dtoa_r+0xea4>
    43b4:	16 be 31 00 	addi	49, r22, r23
    43b8:	23 67 15 00 	ld.w	20[sp], r12
    43bc:	63 df 29 00 	st.w	r27, 40[sp]
    43c0:	0c c8       	mov	r12, r25
    43c2:	4c bf 00 00 	st.b	r23, 0[r12]
    43c6:	41 ca       	add	1, r25
    43c8:	bf 07 1a fb 	jr	3ee2 <__dtoa_r+0x9ce>
    43cc:	1c 38       	mov	r28, r7
    43ce:	02 30       	mov	r2, r6
    43d0:	0a 42       	mov	10, r8
    43d2:	00 4a       	mov	0, r9
    43d4:	80 ff 04 00 	jarl	43d8 <__dtoa_r+0xec4>, lp
    43d8:	44 fa       	add	4, lp
    43da:	79 00       	jmp	[r25]
    43dc:	0a e0       	mov	r10, r28
    43de:	0a d8       	mov	r10, r27
    43e0:	41 ea       	add	1, r29
    43e2:	bf 07 4c f9 	jr	3d2e <__dtoa_r+0x81a>
    43e6:	01 da       	mov	1, r27
    43e8:	63 df 41 00 	st.w	r27, 64[sp]
    43ec:	63 df 25 00 	st.w	r27, 36[sp]
    43f0:	63 df 95 00 	st.w	r27, 148[sp]
    43f4:	62 07 45 00 	st.w	r0, 68[r2]
    43f8:	00 3a       	mov	0, r7
    43fa:	bf 07 6c fc 	jr	4066 <__dtoa_r+0xb52>
    43fe:	3a 57 11 00 	ld.w	16[r26], r10
    4402:	44 52       	add	4, r10
    4404:	c2 52       	shl	2, r10
    4406:	da 51       	add	r26, r10
    4408:	2a 37 01 00 	ld.w	0[r10], r6
    440c:	80 ff 78 1a 	jarl	5e84 <___hi0bits>, lp
    4410:	20 5e 20 00 	movea	32, r0, r11
    4414:	aa 59       	sub	r10, r11
    4416:	bf 07 3a f8 	jr	3c50 <__dtoa_r+0x73c>
    441a:	15 30       	mov	r21, r6
    441c:	1a 38       	mov	r26, r7
    441e:	80 ff 2e 1f 	jarl	634c <___mcmp>, lp
    4422:	60 52       	cmp	0, r10
    4424:	b6 05       	blt	442a <__dtoa_r+0xf16>
    4426:	bf 07 98 f8 	jr	3cbe <__dtoa_r+0x7aa>
    442a:	40 de 00 00 	movhi	0, r0, r27
    442e:	15 38       	mov	r21, r7
    4430:	02 30       	mov	r2, r6
    4432:	0a 42       	mov	10, r8
    4434:	00 4a       	mov	0, r9
    4436:	3b de c0 5c 	movea	23744, r27, r27
    443a:	80 ff 04 00 	jarl	443e <__dtoa_r+0xf2a>, lp
    443e:	44 fa       	add	4, lp
    4440:	7b 00       	jmp	[r27]
    4442:	23 67 19 00 	ld.w	24[sp], r12
    4446:	0a a8       	mov	r10, r21
    4448:	5f 62       	add	-1, r12
    444a:	63 67 19 00 	st.w	r12, 24[sp]
    444e:	23 67 35 00 	ld.w	52[sp], r12
    4452:	60 62       	cmp	0, r12
    4454:	b2 05       	be	445a <__dtoa_r+0xf46>
    4456:	80 07 d6 04 	jr	492c <__dtoa_r+0x1418>
    445a:	23 67 41 00 	ld.w	64[sp], r12
    445e:	63 67 25 00 	st.w	r12, 36[sp]
    4462:	bf 07 5c f8 	jr	3cbe <__dtoa_r+0x7aa>
    4466:	23 67 91 00 	ld.w	144[sp], r12
    446a:	62 62       	cmp	2, r12
    446c:	bf 05       	bgt	4472 <__dtoa_r+0xf5e>
    446e:	bf 07 5c f8 	jr	3cca <__dtoa_r+0x7b6>
    4472:	23 67 25 00 	ld.w	36[sp], r12
    4476:	60 62       	cmp	0, r12
    4478:	b2 05       	be	447e <__dtoa_r+0xf6a>
    447a:	bf 07 66 fb 	jr	3fe0 <__dtoa_r+0xacc>
    447e:	1a 38       	mov	r26, r7
    4480:	02 30       	mov	r2, r6
    4482:	05 42       	mov	5, r8
    4484:	00 4a       	mov	0, r9
    4486:	80 ff 3a 18 	jarl	5cc0 <___multadd>, lp
    448a:	15 30       	mov	r21, r6
    448c:	0a 38       	mov	r10, r7
    448e:	0a d0       	mov	r10, r26
    4490:	80 ff bc 1e 	jarl	634c <___mcmp>, lp
    4494:	60 52       	cmp	0, r10
    4496:	bf 05       	bgt	449c <__dtoa_r+0xf88>
    4498:	bf 07 48 fb 	jr	3fe0 <__dtoa_r+0xacc>
    449c:	23 67 19 00 	ld.w	24[sp], r12
    44a0:	20 56 31 00 	movea	49, r0, r10
    44a4:	41 62       	add	1, r12
    44a6:	54 57 00 00 	st.b	r10, 0[r20]
    44aa:	14 ce 01 00 	addi	1, r20, r25
    44ae:	63 67 19 00 	st.w	r12, 24[sp]
    44b2:	bf 07 3a fb 	jr	3fec <__dtoa_r+0xad8>
    44b6:	40 c6 00 00 	movhi	0, r0, r24
    44ba:	23 af 11 00 	ld.w	16[sp], r21
    44be:	23 a7 15 00 	ld.w	20[sp], r20
    44c2:	38 c6 a0 5c 	movea	23712, r24, r24
    44c6:	bf 07 52 fa 	jr	3f18 <__dtoa_r+0xa04>
    44ca:	1b 30       	mov	r27, r6
    44cc:	80 ff 84 53 	jarl	9850 <___floatsidf>, lp
    44d0:	0a 30       	mov	r10, r6
    44d2:	0b 38       	mov	r11, r7
    44d4:	1a 40       	mov	r26, r8
    44d6:	16 48       	mov	r22, r9
    44d8:	80 ff 04 00 	jarl	44dc <__dtoa_r+0xfc8>, lp
    44dc:	44 fa       	add	4, lp
    44de:	7d 00       	jmp	[r29]
    44e0:	0a 30       	mov	r10, r6
    44e2:	0b 38       	mov	r11, r7
    44e4:	00 42       	mov	0, r8
    44e6:	40 4e 1c 40 	movhi	16412, r0, r9
    44ea:	80 ff 4a 4c 	jarl	9134 <___adddf3>, lp
    44ee:	40 ce c0 fc 	movhi	-832, r0, r25
    44f2:	0a d8       	mov	r10, r27
    44f4:	cb c9       	add	r11, r25
    44f6:	1a 30       	mov	r26, r6
    44f8:	16 38       	mov	r22, r7
    44fa:	00 42       	mov	0, r8
    44fc:	40 4e 14 40 	movhi	16404, r0, r9
    4500:	80 ff 9c 4c 	jarl	919c <___subdf3>, lp
    4504:	0a 30       	mov	r10, r6
    4506:	0b 38       	mov	r11, r7
    4508:	1b 40       	mov	r27, r8
    450a:	19 48       	mov	r25, r9
    450c:	0a d0       	mov	r10, r26
    450e:	0b c0       	mov	r11, r24
    4510:	80 ff e4 51 	jarl	96f4 <___gtdf2>, lp
    4514:	60 52       	cmp	0, r10
    4516:	b7 05       	ble	451c <__dtoa_r+0x1008>
    4518:	80 07 c0 02 	jr	47d8 <__dtoa_r+0x12c4>
    451c:	40 4e 00 80 	movhi	-32768, r0, r9
    4520:	1a 30       	mov	r26, r6
    4522:	18 38       	mov	r24, r7
    4524:	1b 40       	mov	r27, r8
    4526:	d9 49       	add	r25, r9
    4528:	80 ff b4 52 	jarl	97dc <___ltdf2>, lp
    452c:	60 52       	cmp	0, r10
    452e:	b6 05       	blt	4534 <__dtoa_r+0x1020>
    4530:	bf 07 70 f3 	jr	38a0 <__dtoa_r+0x38c>
    4534:	40 c6 00 00 	movhi	0, r0, r24
    4538:	00 d2       	mov	0, r26
    453a:	63 07 29 00 	st.w	r0, 40[sp]
    453e:	38 c6 a0 5c 	movea	23712, r24, r24
    4542:	bf 07 9e fa 	jr	3fe0 <__dtoa_r+0xacc>
    4546:	23 57 2d 00 	ld.w	44[sp], r10
    454a:	23 67 31 00 	ld.w	48[sp], r12
    454e:	9a 51       	subr	r26, r10
    4550:	ca 61       	add	r10, r12
    4552:	63 d7 2d 00 	st.w	r26, 44[sp]
    4556:	63 67 31 00 	st.w	r12, 48[sp]
    455a:	00 d2       	mov	0, r26
    455c:	bf 07 62 f5 	jr	3abe <__dtoa_r+0x5aa>
    4560:	40 ce 01 00 	movhi	1, r0, r25
    4564:	39 ce 84 94 	movea	-27516, r25, r25
    4568:	17 d0       	mov	r23, r26
    456a:	1c c0       	mov	r28, r24
    456c:	02 da       	mov	2, r27
    456e:	63 cf 29 00 	st.w	r25, 40[sp]
    4572:	bf 07 94 fb 	jr	4106 <__dtoa_r+0xbf2>
    4576:	16 b8       	mov	r22, r23
    4578:	17 e8       	mov	r23, r29
    457a:	14 b0       	mov	r20, r22
    457c:	23 a7 29 00 	ld.w	40[sp], r20
    4580:	60 52       	cmp	0, r10
    4582:	b7 1d       	ble	45b8 <__dtoa_r+0x10a4>
    4584:	15 38       	mov	r21, r7
    4586:	02 30       	mov	r2, r6
    4588:	01 42       	mov	1, r8
    458a:	80 ff ca 1c 	jarl	6254 <___lshift>, lp
    458e:	23 67 2d 00 	ld.w	44[sp], r12
    4592:	0a 30       	mov	r10, r6
    4594:	1a 38       	mov	r26, r7
    4596:	0a a8       	mov	r10, r21
    4598:	80 ff 04 00 	jarl	459c <__dtoa_r+0x1088>, lp
    459c:	44 fa       	add	4, lp
    459e:	6c 00       	jmp	[r12]
    45a0:	60 52       	cmp	0, r10
    45a2:	bf 05       	bgt	45a8 <__dtoa_r+0x1094>
    45a4:	80 07 72 03 	jr	4916 <__dtoa_r+0x1402>
    45a8:	20 56 39 00 	movea	57, r0, r10
    45ac:	16 be 31 00 	addi	49, r22, r23
    45b0:	ea e9       	cmp	r10, r29
    45b2:	ba 05       	bne	45b8 <__dtoa_r+0x10a4>
    45b4:	80 07 e2 02 	jr	4896 <__dtoa_r+0x1382>
    45b8:	23 5f 15 00 	ld.w	20[sp], r11
    45bc:	63 df 29 00 	st.w	r27, 40[sp]
    45c0:	0b c8       	mov	r11, r25
    45c2:	4b bf 00 00 	st.b	r23, 0[r11]
    45c6:	41 ca       	add	1, r25
    45c8:	bf 07 1a f9 	jr	3ee2 <__dtoa_r+0x9ce>
    45cc:	60 52       	cmp	0, r10
    45ce:	ea 05       	bne	45da <__dtoa_r+0x10c6>
    45d0:	d7 5e 01 00 	andi	1, r23, r11
    45d4:	b2 05       	be	45da <__dtoa_r+0x10c6>
    45d6:	bf 07 cc f8 	jr	3ea2 <__dtoa_r+0x98e>
    45da:	20 6e 30 00 	movea	48, r0, r13
    45de:	a5 05       	br	45e2 <__dtoa_r+0x10ce>
    45e0:	0b c8       	mov	r11, r25
    45e2:	19 57 ff ff 	ld.b	-1[r25], r10
    45e6:	19 5e ff ff 	addi	-1, r25, r11
    45ea:	d8 52       	shl	24, r10
    45ec:	b8 52       	sar	24, r10
    45ee:	ed 51       	cmp	r13, r10
    45f0:	82 fd       	be	45e0 <__dtoa_r+0x10cc>
    45f2:	bf 07 f0 f8 	jr	3ee2 <__dtoa_r+0x9ce>
    45f6:	23 cf 19 00 	ld.w	24[sp], r25
    45fa:	80 c9       	subr	r0, r25
    45fc:	ba 05       	bne	4602 <__dtoa_r+0x10ee>
    45fe:	80 07 1c 02 	jr	481a <__dtoa_r+0x1306>
    4602:	d9 56 0f 00 	andi	15, r25, r10
    4606:	40 5e 01 00 	movhi	1, r0, r11
    460a:	2b 5e 38 a0 	movea	-24520, r11, r11
    460e:	c3 52       	shl	3, r10
    4610:	cb 51       	add	r11, r10
    4612:	2a 47 01 00 	ld.w	0[r10], r8
    4616:	2a 4f 05 00 	ld.w	4[r10], r9
    461a:	17 30       	mov	r23, r6
    461c:	1c 38       	mov	r28, r7
    461e:	80 ff 04 00 	jarl	4622 <__dtoa_r+0x110e>, lp
    4622:	44 fa       	add	4, lp
    4624:	7d 00       	jmp	[r29]
    4626:	a4 ca       	sar	4, r25
    4628:	0a d0       	mov	r10, r26
    462a:	0b b0       	mov	r11, r22
    462c:	ba 05       	bne	4632 <__dtoa_r+0x111e>
    462e:	80 07 20 03 	jr	494e <__dtoa_r+0x143a>
    4632:	40 c6 01 00 	movhi	1, r0, r24
    4636:	38 c6 10 a0 	movea	-24560, r24, r24
    463a:	02 da       	mov	2, r27
    463c:	d9 66 01 00 	andi	1, r25, r12
    4640:	c2 0d       	be	4658 <__dtoa_r+0x1144>
    4642:	38 47 01 00 	ld.w	0[r24], r8
    4646:	38 4f 05 00 	ld.w	4[r24], r9
    464a:	0a 30       	mov	r10, r6
    464c:	0b 38       	mov	r11, r7
    464e:	80 ff 04 00 	jarl	4652 <__dtoa_r+0x113e>, lp
    4652:	44 fa       	add	4, lp
    4654:	7d 00       	jmp	[r29]
    4656:	41 da       	add	1, r27
    4658:	a1 ca       	sar	1, r25
    465a:	48 c2       	add	8, r24
    465c:	60 ca       	cmp	0, r25
    465e:	fa ed       	bne	463c <__dtoa_r+0x1128>
    4660:	0a d0       	mov	r10, r26
    4662:	0b b0       	mov	r11, r22
    4664:	bf 07 f2 fa 	jr	4156 <__dtoa_r+0xc42>
    4668:	23 5f 29 00 	ld.w	40[sp], r11
    466c:	23 67 39 00 	ld.w	56[sp], r12
    4670:	2b 3f 05 00 	ld.w	4[r11], r7
    4674:	02 30       	mov	r2, r6
    4676:	80 ff 04 00 	jarl	467a <__dtoa_r+0x1166>, lp
    467a:	44 fa       	add	4, lp
    467c:	6c 00       	jmp	[r12]
    467e:	23 5f 29 00 	ld.w	40[sp], r11
    4682:	0a 36 0c 00 	addi	12, r10, r6
    4686:	2b 47 11 00 	ld.w	16[r11], r8
    468a:	0b 38       	mov	r11, r7
    468c:	42 42       	add	2, r8
    468e:	c2 42       	shl	2, r8
    4690:	4c 3a       	add	12, r7
    4692:	0a e8       	mov	r10, r29
    4694:	80 ff 70 15 	jarl	5c04 <_memcpy>, lp
    4698:	02 30       	mov	r2, r6
    469a:	1d 38       	mov	r29, r7
    469c:	01 42       	mov	1, r8
    469e:	80 ff b6 1b 	jarl	6254 <___lshift>, lp
    46a2:	0a d8       	mov	r10, r27
    46a4:	bf 07 52 f6 	jr	3cf6 <__dtoa_r+0x7e2>
    46a8:	41 52       	add	1, r10
    46aa:	4b 57 00 00 	st.b	r10, 0[r11]
    46ae:	bf 07 34 f8 	jr	3ee2 <__dtoa_r+0x9ce>
    46b2:	20 56 39 00 	movea	57, r0, r10
    46b6:	23 a7 29 00 	ld.w	40[sp], r20
    46ba:	ea b1       	cmp	r10, r22
    46bc:	ba 05       	bne	46c2 <__dtoa_r+0x11ae>
    46be:	80 07 d8 01 	jr	4896 <__dtoa_r+0x1382>
    46c2:	23 67 15 00 	ld.w	20[sp], r12
    46c6:	16 5e 01 00 	addi	1, r22, r11
    46ca:	0c c8       	mov	r12, r25
    46cc:	4c 5f 00 00 	st.b	r11, 0[r12]
    46d0:	41 ca       	add	1, r25
    46d2:	63 df 29 00 	st.w	r27, 40[sp]
    46d6:	bf 07 0c f8 	jr	3ee2 <__dtoa_r+0x9ce>
    46da:	23 a7 29 00 	ld.w	40[sp], r20
    46de:	16 b8       	mov	r22, r23
    46e0:	63 df 29 00 	st.w	r27, 40[sp]
    46e4:	bf 07 9a f7 	jr	3e7e <__dtoa_r+0x96a>
    46e8:	2a 37 01 00 	ld.w	0[r10], r6
    46ec:	2a 3f 05 00 	ld.w	4[r10], r7
    46f0:	1b 40       	mov	r27, r8
    46f2:	19 48       	mov	r25, r9
    46f4:	80 ff 04 00 	jarl	46f8 <__dtoa_r+0x11e4>, lp
    46f8:	44 fa       	add	4, lp
    46fa:	7d 00       	jmp	[r29]
    46fc:	16 38       	mov	r22, r7
    46fe:	1a 30       	mov	r26, r6
    4700:	63 5f 51 00 	st.w	r11, 80[sp]
    4704:	63 57 49 00 	st.w	r10, 72[sp]
    4708:	80 ff f4 51 	jarl	98fc <___fixdfsi>, lp
    470c:	0a 30       	mov	r10, r6
    470e:	0a d8       	mov	r10, r27
    4710:	80 ff 40 51 	jarl	9850 <___floatsidf>, lp
    4714:	1a 30       	mov	r26, r6
    4716:	16 38       	mov	r22, r7
    4718:	0a 40       	mov	r10, r8
    471a:	0b 48       	mov	r11, r9
    471c:	80 ff 80 4a 	jarl	919c <___subdf3>, lp
    4720:	1b de 30 00 	addi	48, r27, r27
    4724:	23 67 29 00 	ld.w	40[sp], r12
    4728:	54 df 00 00 	st.b	r27, 0[r20]
    472c:	0a c0       	mov	r10, r24
    472e:	0b 70       	mov	r11, r14
    4730:	14 ce 01 00 	addi	1, r20, r25
    4734:	61 62       	cmp	1, r12
    4736:	f2 2d       	be	4794 <__dtoa_r+0x1280>
    4738:	23 b7 29 00 	ld.w	40[sp], r22
    473c:	19 d0       	mov	r25, r26
    473e:	d4 b1       	add	r20, r22
    4740:	63 e7 55 00 	st.w	r28, 84[sp]
    4744:	00 42       	mov	0, r8
    4746:	40 4e 24 40 	movhi	16420, r0, r9
    474a:	0a 30       	mov	r10, r6
    474c:	0b 38       	mov	r11, r7
    474e:	80 ff 04 00 	jarl	4752 <__dtoa_r+0x123e>, lp
    4752:	44 fa       	add	4, lp
    4754:	7d 00       	jmp	[r29]
    4756:	0b 38       	mov	r11, r7
    4758:	0a 30       	mov	r10, r6
    475a:	0b c0       	mov	r11, r24
    475c:	0a e0       	mov	r10, r28
    475e:	80 ff 9e 51 	jarl	98fc <___fixdfsi>, lp
    4762:	0a 30       	mov	r10, r6
    4764:	0a d8       	mov	r10, r27
    4766:	80 ff ea 50 	jarl	9850 <___floatsidf>, lp
    476a:	1c 30       	mov	r28, r6
    476c:	18 38       	mov	r24, r7
    476e:	0a 40       	mov	r10, r8
    4770:	0b 48       	mov	r11, r9
    4772:	1b de 30 00 	addi	48, r27, r27
    4776:	80 ff 26 4a 	jarl	919c <___subdf3>, lp
    477a:	5a df 00 00 	st.b	r27, 0[r26]
    477e:	41 d2       	add	1, r26
    4780:	f6 d1       	cmp	r22, r26
    4782:	9a e5       	bne	4744 <__dtoa_r+0x1230>
    4784:	0a c0       	mov	r10, r24
    4786:	23 57 29 00 	ld.w	40[sp], r10
    478a:	23 e7 55 00 	ld.w	84[sp], r28
    478e:	5f 52       	add	-1, r10
    4790:	0b 70       	mov	r11, r14
    4792:	ca c9       	add	r10, r25
    4794:	23 37 49 00 	ld.w	72[sp], r6
    4798:	23 3f 51 00 	ld.w	80[sp], r7
    479c:	00 42       	mov	0, r8
    479e:	40 4e e0 3f 	movhi	16352, r0, r9
    47a2:	63 77 09 00 	st.w	r14, 8[sp]
    47a6:	80 ff 8e 49 	jarl	9134 <___adddf3>, lp
    47aa:	23 77 09 00 	ld.w	8[sp], r14
    47ae:	0a 30       	mov	r10, r6
    47b0:	0e 48       	mov	r14, r9
    47b2:	0b 38       	mov	r11, r7
    47b4:	18 40       	mov	r24, r8
    47b6:	80 ff 26 50 	jarl	97dc <___ltdf2>, lp
    47ba:	23 77 09 00 	ld.w	8[sp], r14
    47be:	60 52       	cmp	0, r10
    47c0:	9e 7d       	bge	48b2 <__dtoa_r+0x139e>
    47c2:	19 6f ff ff 	ld.b	-1[r25], r13
    47c6:	23 67 4d 00 	ld.w	76[sp], r12
    47ca:	0d b0       	mov	r13, r22
    47cc:	d8 b2       	shl	24, r22
    47ce:	63 67 19 00 	st.w	r12, 24[sp]
    47d2:	b8 b2       	sar	24, r22
    47d4:	bf 07 74 f2 	jr	3a48 <__dtoa_r+0x534>
    47d8:	40 c6 00 00 	movhi	0, r0, r24
    47dc:	00 d2       	mov	0, r26
    47de:	63 07 29 00 	st.w	r0, 40[sp]
    47e2:	38 c6 a0 5c 	movea	23712, r24, r24
    47e6:	bf 07 b6 fc 	jr	449c <__dtoa_r+0xf88>
    47ea:	ac e9       	sub	r12, r29
    47ec:	00 52       	mov	0, r10
    47ee:	bf 07 e4 f2 	jr	3ad2 <__dtoa_r+0x5be>
    47f2:	01 52       	mov	1, r10
    47f4:	bf 07 78 f6 	jr	3e6c <__dtoa_r+0x958>
    47f8:	16 6e 01 00 	addi	1, r22, r13
    47fc:	d8 6a       	shl	24, r13
    47fe:	b8 6a       	sar	24, r13
    4800:	bf 07 86 f2 	jr	3a86 <__dtoa_r+0x572>
    4804:	23 5f 59 00 	ld.w	88[sp], r11
    4808:	20 56 36 00 	movea	54, r0, r10
    480c:	ab 51       	sub	r11, r10
    480e:	23 d7 2d 00 	ld.w	44[sp], r26
    4812:	23 ef 21 00 	ld.w	32[sp], r29
    4816:	bf 07 bc f2 	jr	3ad2 <__dtoa_r+0x5be>
    481a:	17 d0       	mov	r23, r26
    481c:	1c b0       	mov	r28, r22
    481e:	02 da       	mov	2, r27
    4820:	bf 07 36 f9 	jr	4156 <__dtoa_r+0xc42>
    4824:	23 67 25 00 	ld.w	36[sp], r12
    4828:	60 62       	cmp	0, r12
    482a:	ba 05       	bne	4830 <__dtoa_r+0x131c>
    482c:	bf 07 9e fc 	jr	44ca <__dtoa_r+0xfb6>
    4830:	23 67 41 00 	ld.w	64[sp], r12
    4834:	60 62       	cmp	0, r12
    4836:	bf 05       	bgt	483c <__dtoa_r+0x1328>
    4838:	bf 07 68 f0 	jr	38a0 <__dtoa_r+0x38c>
    483c:	16 38       	mov	r22, r7
    483e:	1a 30       	mov	r26, r6
    4840:	00 42       	mov	0, r8
    4842:	40 4e 24 40 	movhi	16420, r0, r9
    4846:	80 ff 04 00 	jarl	484a <__dtoa_r+0x1336>, lp
    484a:	44 fa       	add	4, lp
    484c:	7d 00       	jmp	[r29]
    484e:	1b 36 01 00 	addi	1, r27, r6
    4852:	0a d0       	mov	r10, r26
    4854:	0b b0       	mov	r11, r22
    4856:	80 ff fa 4f 	jarl	9850 <___floatsidf>, lp
    485a:	1a 30       	mov	r26, r6
    485c:	16 38       	mov	r22, r7
    485e:	0a 40       	mov	r10, r8
    4860:	0b 48       	mov	r11, r9
    4862:	80 ff 04 00 	jarl	4866 <__dtoa_r+0x1352>, lp
    4866:	44 fa       	add	4, lp
    4868:	7d 00       	jmp	[r29]
    486a:	0a 30       	mov	r10, r6
    486c:	0b 38       	mov	r11, r7
    486e:	00 42       	mov	0, r8
    4870:	40 4e 1c 40 	movhi	16412, r0, r9
    4874:	80 ff c0 48 	jarl	9134 <___adddf3>, lp
    4878:	23 67 19 00 	ld.w	24[sp], r12
    487c:	40 ce c0 fc 	movhi	-832, r0, r25
    4880:	5f 62       	add	-1, r12
    4882:	63 67 4d 00 	st.w	r12, 76[sp]
    4886:	23 67 41 00 	ld.w	64[sp], r12
    488a:	0a d8       	mov	r10, r27
    488c:	cb c9       	add	r11, r25
    488e:	63 67 29 00 	st.w	r12, 40[sp]
    4892:	bf 07 2a f9 	jr	41bc <__dtoa_r+0xca8>
    4896:	23 67 15 00 	ld.w	20[sp], r12
    489a:	20 56 39 00 	movea	57, r0, r10
    489e:	0c c8       	mov	r12, r25
    48a0:	4c 57 00 00 	st.b	r10, 0[r12]
    48a4:	41 ca       	add	1, r25
    48a6:	63 df 29 00 	st.w	r27, 40[sp]
    48aa:	20 56 39 00 	movea	57, r0, r10
    48ae:	bf 07 fc f5 	jr	3eaa <__dtoa_r+0x996>
    48b2:	23 47 49 00 	ld.w	72[sp], r8
    48b6:	23 4f 51 00 	ld.w	80[sp], r9
    48ba:	00 32       	mov	0, r6
    48bc:	40 3e e0 3f 	movhi	16352, r0, r7
    48c0:	63 77 09 00 	st.w	r14, 8[sp]
    48c4:	80 ff d8 48 	jarl	919c <___subdf3>, lp
    48c8:	23 77 09 00 	ld.w	8[sp], r14
    48cc:	0a 30       	mov	r10, r6
    48ce:	0b 38       	mov	r11, r7
    48d0:	18 40       	mov	r24, r8
    48d2:	0e 48       	mov	r14, r9
    48d4:	80 ff 20 4e 	jarl	96f4 <___gtdf2>, lp
    48d8:	60 52       	cmp	0, r10
    48da:	bf 05       	bgt	48e0 <__dtoa_r+0x13cc>
    48dc:	bf 07 c4 ef 	jr	38a0 <__dtoa_r+0x38c>
    48e0:	20 6e 30 00 	movea	48, r0, r13
    48e4:	a5 05       	br	48e8 <__dtoa_r+0x13d4>
    48e6:	0b c8       	mov	r11, r25
    48e8:	19 57 ff ff 	ld.b	-1[r25], r10
    48ec:	19 5e ff ff 	addi	-1, r25, r11
    48f0:	d8 52       	shl	24, r10
    48f2:	b8 52       	sar	24, r10
    48f4:	ed 51       	cmp	r13, r10
    48f6:	82 fd       	be	48e6 <__dtoa_r+0x13d2>
    48f8:	bf 07 1c fa 	jr	4314 <__dtoa_r+0xe00>
    48fc:	17 b0       	mov	r23, r22
    48fe:	23 67 4d 00 	ld.w	76[sp], r12
    4902:	63 67 19 00 	st.w	r12, 24[sp]
    4906:	bf 07 42 f1 	jr	3a48 <__dtoa_r+0x534>
    490a:	23 e7 29 00 	ld.w	40[sp], r28
    490e:	23 bf 49 00 	ld.w	72[sp], r23
    4912:	bf 07 8e ef 	jr	38a0 <__dtoa_r+0x38c>
    4916:	60 52       	cmp	0, r10
    4918:	b2 05       	be	491e <__dtoa_r+0x140a>
    491a:	bf 07 9e fc 	jr	45b8 <__dtoa_r+0x10a4>
    491e:	d7 56 01 00 	andi	1, r23, r10
    4922:	ba 05       	bne	4928 <__dtoa_r+0x1414>
    4924:	bf 07 94 fc 	jr	45b8 <__dtoa_r+0x10a4>
    4928:	bf 07 80 fc 	jr	45a8 <__dtoa_r+0x1094>
    492c:	23 3f 29 00 	ld.w	40[sp], r7
    4930:	02 30       	mov	r2, r6
    4932:	0a 42       	mov	10, r8
    4934:	00 4a       	mov	0, r9
    4936:	80 ff 04 00 	jarl	493a <__dtoa_r+0x1426>, lp
    493a:	44 fa       	add	4, lp
    493c:	7b 00       	jmp	[r27]
    493e:	23 67 41 00 	ld.w	64[sp], r12
    4942:	63 57 29 00 	st.w	r10, 40[sp]
    4946:	63 67 25 00 	st.w	r12, 36[sp]
    494a:	bf 07 74 f3 	jr	3cbe <__dtoa_r+0x7aa>
    494e:	02 da       	mov	2, r27
    4950:	bf 07 06 f8 	jr	4156 <__dtoa_r+0xc42>
    4954:	64 5a       	cmp	4, r11
    4956:	ba 05       	bne	495c <__dtoa_r+0x1448>
    4958:	bf 07 32 f3 	jr	3c8a <__dtoa_r+0x776>
    495c:	20 5e 3c 00 	movea	60, r0, r11
    4960:	aa 59       	sub	r10, r11
    4962:	bf 07 12 f3 	jr	3c74 <__dtoa_r+0x760>
    4966:	01 d2       	mov	1, r26
    4968:	bf 07 82 ee 	jr	37ea <__dtoa_r+0x2d6>
    496c:	00 3a       	mov	0, r7
    496e:	bf 07 f8 f6 	jr	4066 <__dtoa_r+0xb52>
	...

00004974 <___sflush_r>:
    4974:	03 1e ec ff 	addi	-20, sp, sp
    4978:	63 d7 0d 00 	st.w	r26, 12[sp]
    497c:	63 e7 05 00 	st.w	r28, 4[sp]
    4980:	63 ff 11 00 	st.w	lp, 16[sp]
    4984:	63 df 09 00 	st.w	r27, 8[sp]
    4988:	63 ef 01 00 	st.w	r29, 0[sp]
    498c:	27 57 0c 00 	ld.h	12[r7], r10
    4990:	40 5e 08 00 	movhi	8, r0, r11
    4994:	d0 52       	shl	16, r10
    4996:	4a 59       	and	r10, r11
    4998:	07 e0       	mov	r7, r28
    499a:	06 d0       	mov	r6, r26
    499c:	b0 52       	sar	16, r10
    499e:	60 5a       	cmp	0, r11
    49a0:	ba 55       	bne	4a46 <___sflush_r+0xd2>
    49a2:	8a 5e 00 08 	ori	2048, r10, r11
    49a6:	27 67 05 00 	ld.w	4[r7], r12
    49aa:	67 5f 0c 00 	st.h	r11, 12[r7]
    49ae:	60 62       	cmp	0, r12
    49b0:	b7 7d       	ble	4aa6 <___sflush_r+0x132>
    49b2:	3c 67 29 00 	ld.w	40[r28], r12
    49b6:	60 62       	cmp	0, r12
    49b8:	c2 45       	be	4a40 <___sflush_r+0xcc>
    49ba:	3a ef 01 00 	ld.w	0[r26], r29
    49be:	ca 56 00 10 	andi	4096, r10, r10
    49c2:	7a 07 01 00 	st.w	r0, 0[r26]
    49c6:	f2 75       	be	4ab4 <___sflush_r+0x140>
    49c8:	3c 47 51 00 	ld.w	80[r28], r8
    49cc:	cb 5e 04 00 	andi	4, r11, r11
    49d0:	b2 0d       	be	49e6 <___sflush_r+0x72>
    49d2:	3c 5f 05 00 	ld.w	4[r28], r11
    49d6:	3c 57 31 00 	ld.w	48[r28], r10
    49da:	ab 41       	sub	r11, r8
    49dc:	60 52       	cmp	0, r10
    49de:	c2 05       	be	49e6 <___sflush_r+0x72>
    49e0:	3c 57 3d 00 	ld.w	60[r28], r10
    49e4:	aa 41       	sub	r10, r8
    49e6:	3c 3f 1d 00 	ld.w	28[r28], r7
    49ea:	1a 30       	mov	r26, r6
    49ec:	00 4a       	mov	0, r9
    49ee:	80 ff 04 00 	jarl	49f2 <___sflush_r+0x7e>, lp
    49f2:	44 fa       	add	4, lp
    49f4:	6c 00       	jmp	[r12]
    49f6:	7f 52       	cmp	-1, r10
    49f8:	a2 75       	be	4adc <___sflush_r+0x168>
    49fa:	3c 5f 0c 00 	ld.h	12[r28], r11
    49fe:	3c 67 11 00 	ld.w	16[r28], r12
    4a02:	d0 5a       	shl	16, r11
    4a04:	b0 5a       	sar	16, r11
    4a06:	20 6e ff f7 	movea	-2049, r0, r13
    4a0a:	4b 69       	and	r11, r13
    4a0c:	7c 6f 0c 00 	st.h	r13, 12[r28]
    4a10:	7c 07 05 00 	st.w	r0, 4[r28]
    4a14:	7c 67 01 00 	st.w	r12, 0[r28]
    4a18:	cb 5e 00 10 	andi	4096, r11, r11
    4a1c:	b2 05       	be	4a22 <___sflush_r+0xae>
    4a1e:	80 07 12 01 	jr	4b30 <___sflush_r+0x1bc>
    4a22:	3c 3f 31 00 	ld.w	48[r28], r7
    4a26:	7a ef 01 00 	st.w	r29, 0[r26]
    4a2a:	60 3a       	cmp	0, r7
    4a2c:	a2 0d       	be	4a40 <___sflush_r+0xcc>
    4a2e:	1c 56 40 00 	addi	64, r28, r10
    4a32:	ea 39       	cmp	r10, r7
    4a34:	c2 05       	be	4a3c <___sflush_r+0xc8>
    4a36:	1a 30       	mov	r26, r6
    4a38:	80 ff e8 04 	jarl	4f20 <__free_r>, lp
    4a3c:	7c 07 31 00 	st.w	r0, 48[r28]
    4a40:	00 52       	mov	0, r10
    4a42:	80 07 8e 43 	jr	8dd0 <__return_r26_r31>
    4a46:	27 df 11 00 	ld.w	16[r7], r27
    4a4a:	60 da       	cmp	0, r27
    4a4c:	a2 fd       	be	4a40 <___sflush_r+0xcc>
    4a4e:	27 ef 01 00 	ld.w	0[r7], r29
    4a52:	ca 56 03 00 	andi	3, r10, r10
    4a56:	67 df 01 00 	st.w	r27, 0[r7]
    4a5a:	bb e9       	sub	r27, r29
    4a5c:	60 52       	cmp	0, r10
    4a5e:	aa 25       	bne	4aa2 <___sflush_r+0x12e>
    4a60:	27 57 15 00 	ld.w	20[r7], r10
    4a64:	7c 57 09 00 	st.w	r10, 8[r28]
    4a68:	60 ea       	cmp	0, r29
    4a6a:	df 05       	bgt	4a74 <___sflush_r+0x100>
    4a6c:	a5 ed       	br	4a40 <___sflush_r+0xcc>
    4a6e:	ca d9       	add	r10, r27
    4a70:	60 ea       	cmp	0, r29
    4a72:	f7 e5       	ble	4a40 <___sflush_r+0xcc>
    4a74:	3c 57 25 00 	ld.w	36[r28], r10
    4a78:	3c 3f 1d 00 	ld.w	28[r28], r7
    4a7c:	1d 48       	mov	r29, r9
    4a7e:	1b 40       	mov	r27, r8
    4a80:	1a 30       	mov	r26, r6
    4a82:	80 ff 04 00 	jarl	4a86 <___sflush_r+0x112>, lp
    4a86:	44 fa       	add	4, lp
    4a88:	6a 00       	jmp	[r10]
    4a8a:	aa e9       	sub	r10, r29
    4a8c:	60 52       	cmp	0, r10
    4a8e:	8f f5       	bgt	4a6e <___sflush_r+0xfa>
    4a90:	3c 5f 0c 00 	ld.h	12[r28], r11
    4a94:	1f 52       	mov	-1, r10
    4a96:	8b 5e 40 00 	ori	64, r11, r11
    4a9a:	7c 5f 0c 00 	st.h	r11, 12[r28]
    4a9e:	80 07 32 43 	jr	8dd0 <__return_r26_r31>
    4aa2:	00 52       	mov	0, r10
    4aa4:	85 e5       	br	4a64 <___sflush_r+0xf0>
    4aa6:	27 67 3d 00 	ld.w	60[r7], r12
    4aaa:	60 62       	cmp	0, r12
    4aac:	b7 05       	ble	4ab2 <___sflush_r+0x13e>
    4aae:	bf 07 04 ff 	jr	49b2 <___sflush_r+0x3e>
    4ab2:	f5 c5       	br	4a40 <___sflush_r+0xcc>
    4ab4:	3c 3f 1d 00 	ld.w	28[r28], r7
    4ab8:	00 42       	mov	0, r8
    4aba:	1a 30       	mov	r26, r6
    4abc:	01 4a       	mov	1, r9
    4abe:	80 ff 04 00 	jarl	4ac2 <___sflush_r+0x14e>, lp
    4ac2:	44 fa       	add	4, lp
    4ac4:	6c 00       	jmp	[r12]
    4ac6:	0a 40       	mov	r10, r8
    4ac8:	7f 52       	cmp	-1, r10
    4aca:	b2 25       	be	4b10 <___sflush_r+0x19c>
    4acc:	3c 5f 0c 00 	ld.h	12[r28], r11
    4ad0:	3c 67 29 00 	ld.w	40[r28], r12
    4ad4:	d0 5a       	shl	16, r11
    4ad6:	b0 5a       	sar	16, r11
    4ad8:	bf 07 f4 fe 	jr	49cc <___sflush_r+0x58>
    4adc:	3a 5f 01 00 	ld.w	0[r26], r11
    4ae0:	60 5a       	cmp	0, r11
    4ae2:	c2 8d       	be	49fa <___sflush_r+0x86>
    4ae4:	20 66 1d 00 	movea	29, r0, r12
    4ae8:	ec 59       	cmp	r12, r11
    4aea:	d2 05       	be	4af4 <___sflush_r+0x180>
    4aec:	20 66 16 00 	movea	22, r0, r12
    4af0:	ec 59       	cmp	r12, r11
    4af2:	ba 25       	bne	4b38 <___sflush_r+0x1c4>
    4af4:	3c 5f 0c 00 	ld.h	12[r28], r11
    4af8:	3c 57 11 00 	ld.w	16[r28], r10
    4afc:	20 66 ff f7 	movea	-2049, r0, r12
    4b00:	4c 59       	and	r12, r11
    4b02:	7c 5f 0c 00 	st.h	r11, 12[r28]
    4b06:	7c 07 05 00 	st.w	r0, 4[r28]
    4b0a:	7c 57 01 00 	st.w	r10, 0[r28]
    4b0e:	a5 8d       	br	4a22 <___sflush_r+0xae>
    4b10:	3a 57 01 00 	ld.w	0[r26], r10
    4b14:	60 52       	cmp	0, r10
    4b16:	b2 dd       	be	4acc <___sflush_r+0x158>
    4b18:	20 5e 1d 00 	movea	29, r0, r11
    4b1c:	eb 51       	cmp	r11, r10
    4b1e:	d2 05       	be	4b28 <___sflush_r+0x1b4>
    4b20:	20 5e 16 00 	movea	22, r0, r11
    4b24:	eb 51       	cmp	r11, r10
    4b26:	da b5       	bne	4a90 <___sflush_r+0x11c>
    4b28:	7a ef 01 00 	st.w	r29, 0[r26]
    4b2c:	00 52       	mov	0, r10
    4b2e:	a5 8d       	br	4a42 <___sflush_r+0xce>
    4b30:	7c 57 51 00 	st.w	r10, 80[r28]
    4b34:	bf 07 ee fe 	jr	4a22 <___sflush_r+0xae>
    4b38:	3c 5f 0c 00 	ld.h	12[r28], r11
    4b3c:	8b 5e 40 00 	ori	64, r11, r11
    4b40:	7c 5f 0c 00 	st.h	r11, 12[r28]
    4b44:	bf 07 fe fe 	jr	4a42 <___sflush_r+0xce>

00004b48 <__fflush_r>:
    4b48:	54 1a       	add	-12, sp
    4b4a:	63 ef 05 00 	st.w	r29, 4[sp]
    4b4e:	63 ff 09 00 	st.w	lp, 8[sp]
    4b52:	06 e8       	mov	r6, r29
    4b54:	60 32       	cmp	0, r6
    4b56:	d2 05       	be	4b60 <__fflush_r+0x18>
    4b58:	26 57 39 00 	ld.w	56[r6], r10
    4b5c:	60 52       	cmp	0, r10
    4b5e:	f2 0d       	be	4b7c <__fflush_r+0x34>
    4b60:	27 57 0c 00 	ld.h	12[r7], r10
    4b64:	d0 52       	shl	16, r10
    4b66:	da 05       	bne	4b70 <__fflush_r+0x28>
    4b68:	44 1a       	add	4, sp
    4b6a:	00 52       	mov	0, r10
    4b6c:	bf 07 0e c9 	jr	147a <__return_r29_r31>
    4b70:	1d 30       	mov	r29, r6
    4b72:	bf ff 02 fe 	jarl	4974 <___sflush_r>, lp
    4b76:	44 1a       	add	4, sp
    4b78:	bf 07 02 c9 	jr	147a <__return_r29_r31>
    4b7c:	63 3f 01 00 	st.w	r7, 0[sp]
    4b80:	80 ff 30 01 	jarl	4cb0 <___sinit>, lp
    4b84:	23 3f 01 00 	ld.w	0[sp], r7
    4b88:	c5 ed       	br	4b60 <__fflush_r+0x18>
	...

00004b8c <_fflush>:
    4b8c:	5c 1a       	add	-4, sp
    4b8e:	63 ff 01 00 	st.w	lp, 0[sp]
    4b92:	06 38       	mov	r6, r7
    4b94:	60 32       	cmp	0, r6
    4b96:	f2 05       	be	4ba4 <_fflush+0x18>
    4b98:	24 37 bd 08 	ld.w	2236[gp], r6
    4b9c:	bf ff ac ff 	jarl	4b48 <__fflush_r>, lp
    4ba0:	bf 07 e8 c8 	jr	1488 <__return_r31>
    4ba4:	24 37 85 fe 	ld.w	-380[gp], r6
    4ba8:	40 3e 00 00 	movhi	0, r0, r7
    4bac:	27 3e 48 4b 	movea	19272, r7, r7
    4bb0:	80 ff 48 06 	jarl	51f8 <__fwalk_reent>, lp
    4bb4:	bf 07 d4 c8 	jr	1488 <__return_r31>

00004bb8 <___fp_lock>:
    4bb8:	00 52       	mov	0, r10
    4bba:	7f 00       	jmp	[lp]

00004bbc <___fp_unlock>:
    4bbc:	00 52       	mov	0, r10
    4bbe:	7f 00       	jmp	[lp]

00004bc0 <__cleanup_r>:
    4bc0:	40 3e 00 00 	movhi	0, r0, r7
    4bc4:	5c 1a       	add	-4, sp
    4bc6:	27 3e fc 79 	movea	31228, r7, r7
    4bca:	63 ff 01 00 	st.w	lp, 0[sp]
    4bce:	80 ff aa 05 	jarl	5178 <__fwalk>, lp
    4bd2:	bf 07 b6 c8 	jr	1488 <__return_r31>
	...

00004bd8 <_std.isra___0>:
    4bd8:	58 1a       	add	-8, sp
    4bda:	63 ef 01 00 	st.w	r29, 0[sp]
    4bde:	63 ff 05 00 	st.w	lp, 4[sp]
    4be2:	06 e8       	mov	r6, r29
    4be4:	66 3f 0c 00 	st.h	r7, 12[r6]
    4be8:	66 47 0e 00 	st.h	r8, 14[r6]
    4bec:	66 07 01 00 	st.w	r0, 0[r6]
    4bf0:	66 07 05 00 	st.w	r0, 4[r6]
    4bf4:	66 07 09 00 	st.w	r0, 8[r6]
    4bf8:	66 07 65 00 	st.w	r0, 100[r6]
    4bfc:	66 07 11 00 	st.w	r0, 16[r6]
    4c00:	66 07 15 00 	st.w	r0, 20[r6]
    4c04:	66 07 19 00 	st.w	r0, 24[r6]
    4c08:	00 3a       	mov	0, r7
    4c0a:	06 36 5c 00 	addi	92, r6, r6
    4c0e:	08 42       	mov	8, r8
    4c10:	bf ff f8 c9 	jarl	1608 <_memset>, lp
    4c14:	40 56 00 00 	movhi	0, r0, r10
    4c18:	2a 56 18 69 	movea	26904, r10, r10
    4c1c:	7d 57 21 00 	st.w	r10, 32[r29]
    4c20:	40 56 00 00 	movhi	0, r0, r10
    4c24:	2a 56 58 69 	movea	26968, r10, r10
    4c28:	7d 57 25 00 	st.w	r10, 36[r29]
    4c2c:	40 56 00 00 	movhi	0, r0, r10
    4c30:	2a 56 c4 69 	movea	27076, r10, r10
    4c34:	7d 57 29 00 	st.w	r10, 40[r29]
    4c38:	40 56 00 00 	movhi	0, r0, r10
    4c3c:	2a 56 04 6a 	movea	27140, r10, r10
    4c40:	7d ef 1d 00 	st.w	r29, 28[r29]
    4c44:	7d 57 2d 00 	st.w	r10, 44[r29]
    4c48:	bf 07 32 c8 	jr	147a <__return_r29_r31>

00004c4c <___sfmoreglue>:
    4c4c:	50 1a       	add	-16, sp
    4c4e:	63 e7 05 00 	st.w	r28, 4[sp]
    4c52:	07 e0       	mov	r7, r28
    4c54:	63 ef 01 00 	st.w	r29, 0[sp]
    4c58:	20 3e 68 00 	movea	104, r0, r7
    4c5c:	06 e8       	mov	r6, r29
    4c5e:	1c 30       	mov	r28, r6
    4c60:	63 ff 0d 00 	st.w	lp, 12[sp]
    4c64:	63 df 09 00 	st.w	r27, 8[sp]
    4c68:	80 ff b0 3e 	jarl	8b18 <___mulsi3>, lp
    4c6c:	1d 30       	mov	r29, r6
    4c6e:	0a 3e 0c 00 	addi	12, r10, r7
    4c72:	0a d8       	mov	r10, r27
    4c74:	80 ff 40 08 	jarl	54b4 <__malloc_r>, lp
    4c78:	0a e8       	mov	r10, r29
    4c7a:	60 52       	cmp	0, r10
    4c7c:	d2 0d       	be	4c96 <___sfmoreglue+0x4a>
    4c7e:	4c 52       	add	12, r10
    4c80:	7d 07 01 00 	st.w	r0, 0[r29]
    4c84:	0a 30       	mov	r10, r6
    4c86:	00 3a       	mov	0, r7
    4c88:	1b 40       	mov	r27, r8
    4c8a:	7d e7 05 00 	st.w	r28, 4[r29]
    4c8e:	7d 57 09 00 	st.w	r10, 8[r29]
    4c92:	bf ff 76 c9 	jarl	1608 <_memset>, lp
    4c96:	1d 50       	mov	r29, r10
    4c98:	80 07 6c 41 	jr	8e04 <__return_r27_r31>

00004c9c <__cleanup>:
    4c9c:	24 37 85 fe 	ld.w	-380[gp], r6
    4ca0:	5c 1a       	add	-4, sp
    4ca2:	63 ff 01 00 	st.w	lp, 0[sp]
    4ca6:	bf ff 1a ff 	jarl	4bc0 <__cleanup_r>, lp
    4caa:	bf 07 de c7 	jr	1488 <__return_r31>
	...

00004cb0 <___sinit>:
    4cb0:	50 1a       	add	-16, sp
    4cb2:	63 ef 01 00 	st.w	r29, 0[sp]
    4cb6:	63 ff 0d 00 	st.w	lp, 12[sp]
    4cba:	63 df 09 00 	st.w	r27, 8[sp]
    4cbe:	63 e7 05 00 	st.w	r28, 4[sp]
    4cc2:	26 57 39 00 	ld.w	56[r6], r10
    4cc6:	06 e8       	mov	r6, r29
    4cc8:	60 52       	cmp	0, r10
    4cca:	8a 35       	bne	4d2a <___sinit+0x7a>
    4ccc:	40 5e 00 00 	movhi	0, r0, r11
    4cd0:	26 37 05 00 	ld.w	4[r6], r6
    4cd4:	2b 5e c0 4b 	movea	19392, r11, r11
    4cd8:	40 e6 00 00 	movhi	0, r0, r28
    4cdc:	1d 56 ec 02 	addi	748, r29, r10
    4ce0:	01 da       	mov	1, r27
    4ce2:	04 3a       	mov	4, r7
    4ce4:	00 42       	mov	0, r8
    4ce6:	3c e6 d8 4b 	movea	19416, r28, r28
    4cea:	7d 5f 3d 00 	st.w	r11, 60[r29]
    4cee:	7d 07 e1 02 	st.w	r0, 736[r29]
    4cf2:	03 5a       	mov	3, r11
    4cf4:	7d 5f e5 02 	st.w	r11, 740[r29]
    4cf8:	7d 57 e9 02 	st.w	r10, 744[r29]
    4cfc:	7d df 39 00 	st.w	r27, 56[r29]
    4d00:	80 ff 04 00 	jarl	4d04 <___sinit+0x54>, lp
    4d04:	44 fa       	add	4, lp
    4d06:	7c 00       	jmp	[r28]
    4d08:	3d 37 09 00 	ld.w	8[r29], r6
    4d0c:	09 3a       	mov	9, r7
    4d0e:	1b 40       	mov	r27, r8
    4d10:	80 ff 04 00 	jarl	4d14 <___sinit+0x64>, lp
    4d14:	44 fa       	add	4, lp
    4d16:	7c 00       	jmp	[r28]
    4d18:	3d 37 0d 00 	ld.w	12[r29], r6
    4d1c:	20 3e 12 00 	movea	18, r0, r7
    4d20:	02 42       	mov	2, r8
    4d22:	80 ff 04 00 	jarl	4d26 <___sinit+0x76>, lp
    4d26:	44 fa       	add	4, lp
    4d28:	7c 00       	jmp	[r28]
    4d2a:	80 07 da 40 	jr	8e04 <__return_r27_r31>
	...

00004d30 <___sfp>:
    4d30:	50 1a       	add	-16, sp
    4d32:	63 e7 05 00 	st.w	r28, 4[sp]
    4d36:	24 e7 85 fe 	ld.w	-380[gp], r28
    4d3a:	63 df 09 00 	st.w	r27, 8[sp]
    4d3e:	63 ff 0d 00 	st.w	lp, 12[sp]
    4d42:	63 ef 01 00 	st.w	r29, 0[sp]
    4d46:	3c 57 39 00 	ld.w	56[r28], r10
    4d4a:	06 d8       	mov	r6, r27
    4d4c:	60 52       	cmp	0, r10
    4d4e:	f2 3d       	be	4dcc <___sfp+0x9c>
    4d50:	1c e6 e0 02 	addi	736, r28, r28
    4d54:	3c 57 05 00 	ld.w	4[r28], r10
    4d58:	3c ef 09 00 	ld.w	8[r28], r29
    4d5c:	5f 52       	add	-1, r10
    4d5e:	60 52       	cmp	0, r10
    4d60:	fe 05       	bge	4d6e <___sfp+0x3e>
    4d62:	f5 2d       	br	4dc0 <___sfp+0x90>
    4d64:	5f 52       	add	-1, r10
    4d66:	1d ee 68 00 	addi	104, r29, r29
    4d6a:	7f 52       	cmp	-1, r10
    4d6c:	a2 2d       	be	4dc0 <___sfp+0x90>
    4d6e:	3d 5f 0c 00 	ld.h	12[r29], r11
    4d72:	d0 5a       	shl	16, r11
    4d74:	8a fd       	bne	4d64 <___sfp+0x34>
    4d76:	1f 52       	mov	-1, r10
    4d78:	7d 57 0e 00 	st.h	r10, 14[r29]
    4d7c:	7d 07 65 00 	st.w	r0, 100[r29]
    4d80:	01 52       	mov	1, r10
    4d82:	7d 07 01 00 	st.w	r0, 0[r29]
    4d86:	7d 07 09 00 	st.w	r0, 8[r29]
    4d8a:	7d 07 05 00 	st.w	r0, 4[r29]
    4d8e:	7d 07 11 00 	st.w	r0, 16[r29]
    4d92:	7d 07 15 00 	st.w	r0, 20[r29]
    4d96:	7d 07 19 00 	st.w	r0, 24[r29]
    4d9a:	1d 36 5c 00 	addi	92, r29, r6
    4d9e:	00 3a       	mov	0, r7
    4da0:	08 42       	mov	8, r8
    4da2:	7d 57 0c 00 	st.h	r10, 12[r29]
    4da6:	bf ff 62 c8 	jarl	1608 <_memset>, lp
    4daa:	7d 07 31 00 	st.w	r0, 48[r29]
    4dae:	7d 07 35 00 	st.w	r0, 52[r29]
    4db2:	7d 07 45 00 	st.w	r0, 68[r29]
    4db6:	7d 07 49 00 	st.w	r0, 72[r29]
    4dba:	1d 50       	mov	r29, r10
    4dbc:	80 07 48 40 	jr	8e04 <__return_r27_r31>
    4dc0:	3c 57 01 00 	ld.w	0[r28], r10
    4dc4:	60 52       	cmp	0, r10
    4dc6:	f2 05       	be	4dd4 <___sfp+0xa4>
    4dc8:	0a e0       	mov	r10, r28
    4dca:	d5 c5       	br	4d54 <___sfp+0x24>
    4dcc:	1c 30       	mov	r28, r6
    4dce:	bf ff e2 fe 	jarl	4cb0 <___sinit>, lp
    4dd2:	f5 bd       	br	4d50 <___sfp+0x20>
    4dd4:	1b 30       	mov	r27, r6
    4dd6:	04 3a       	mov	4, r7
    4dd8:	bf ff 74 fe 	jarl	4c4c <___sfmoreglue>, lp
    4ddc:	7c 57 01 00 	st.w	r10, 0[r28]
    4de0:	60 52       	cmp	0, r10
    4de2:	ba f5       	bne	4dc8 <___sfp+0x98>
    4de4:	0c 52       	mov	12, r10
    4de6:	7b 57 01 00 	st.w	r10, 0[r27]
    4dea:	00 ea       	mov	0, r29
    4dec:	f5 e5       	br	4dba <___sfp+0x8a>
	...

00004df0 <___sfp_lock_acquire>:
    4df0:	7f 00       	jmp	[lp]
	...

00004df4 <___sfp_lock_release>:
    4df4:	7f 00       	jmp	[lp]
	...

00004df8 <___sinit_lock_acquire>:
    4df8:	7f 00       	jmp	[lp]
	...

00004dfc <___sinit_lock_release>:
    4dfc:	7f 00       	jmp	[lp]
	...

00004e00 <___fp_lock_all>:
    4e00:	24 37 bd 08 	ld.w	2236[gp], r6
    4e04:	40 3e 00 00 	movhi	0, r0, r7
    4e08:	5c 1a       	add	-4, sp
    4e0a:	27 3e b8 4b 	movea	19384, r7, r7
    4e0e:	63 ff 01 00 	st.w	lp, 0[sp]
    4e12:	80 ff 66 03 	jarl	5178 <__fwalk>, lp
    4e16:	bf 07 72 c6 	jr	1488 <__return_r31>
	...

00004e1c <___fp_unlock_all>:
    4e1c:	24 37 bd 08 	ld.w	2236[gp], r6
    4e20:	40 3e 00 00 	movhi	0, r0, r7
    4e24:	5c 1a       	add	-4, sp
    4e26:	27 3e bc 4b 	movea	19388, r7, r7
    4e2a:	63 ff 01 00 	st.w	lp, 0[sp]
    4e2e:	80 ff 4a 03 	jarl	5178 <__fwalk>, lp
    4e32:	bf 07 56 c6 	jr	1488 <__return_r31>
	...

00004e38 <__malloc_trim_r>:
    4e38:	03 1e e8 ff 	addi	-24, sp, sp
    4e3c:	63 df 09 00 	st.w	r27, 8[sp]
    4e40:	40 de 01 00 	movhi	1, r0, r27
    4e44:	63 d7 0d 00 	st.w	r26, 12[sp]
    4e48:	63 e7 05 00 	st.w	r28, 4[sp]
    4e4c:	07 d0       	mov	r7, r26
    4e4e:	63 ef 01 00 	st.w	r29, 0[sp]
    4e52:	63 ff 15 00 	st.w	lp, 20[sp]
    4e56:	63 cf 11 00 	st.w	r25, 16[sp]
    4e5a:	06 e0       	mov	r6, r28
    4e5c:	3b de b0 a8 	movea	-22352, r27, r27
    4e60:	80 ff c0 0d 	jarl	5c20 <___malloc_lock>, lp
    4e64:	3b 57 09 00 	ld.w	8[r27], r10
    4e68:	20 5e 00 f0 	movea	-4096, r0, r11
    4e6c:	2a ef 05 00 	ld.w	4[r10], r29
    4e70:	1c 52       	mov	-4, r10
    4e72:	4a e9       	and	r10, r29
    4e74:	1d 56 ef 0f 	addi	4079, r29, r10
    4e78:	ba 51       	sub	r26, r10
    4e7a:	4b 51       	and	r11, r10
    4e7c:	0a d6 00 f0 	addi	-4096, r10, r26
    4e80:	20 56 ff 0f 	movea	4095, r0, r10
    4e84:	ea d1       	cmp	r10, r26
    4e86:	87 15       	ble	4ea6 <__malloc_trim_r+0x6e>
    4e88:	40 ce 00 00 	movhi	0, r0, r25
    4e8c:	1c 30       	mov	r28, r6
    4e8e:	00 3a       	mov	0, r7
    4e90:	39 ce c4 68 	movea	26820, r25, r25
    4e94:	80 ff 04 00 	jarl	4e98 <__malloc_trim_r+0x60>, lp
    4e98:	44 fa       	add	4, lp
    4e9a:	79 00       	jmp	[r25]
    4e9c:	3b 5f 09 00 	ld.w	8[r27], r11
    4ea0:	dd 59       	add	r29, r11
    4ea2:	eb 51       	cmp	r11, r10
    4ea4:	f2 05       	be	4eb2 <__malloc_trim_r+0x7a>
    4ea6:	1c 30       	mov	r28, r6
    4ea8:	80 ff 7c 0d 	jarl	5c24 <___malloc_unlock>, lp
    4eac:	00 52       	mov	0, r10
    4eae:	80 07 e6 3e 	jr	8d94 <__return_r25_r31>
    4eb2:	1a 38       	mov	r26, r7
    4eb4:	1c 30       	mov	r28, r6
    4eb6:	80 39       	subr	r0, r7
    4eb8:	80 ff 04 00 	jarl	4ebc <__malloc_trim_r+0x84>, lp
    4ebc:	44 fa       	add	4, lp
    4ebe:	79 00       	jmp	[r25]
    4ec0:	7f 52       	cmp	-1, r10
    4ec2:	d2 15       	be	4eec <__malloc_trim_r+0xb4>
    4ec4:	40 5e 01 00 	movhi	1, r0, r11
    4ec8:	2b 57 cd ac 	ld.w	-21300[r11], r10
    4ecc:	3b 67 09 00 	ld.w	8[r27], r12
    4ed0:	ba e9       	sub	r26, r29
    4ed2:	ba 51       	sub	r26, r10
    4ed4:	9d ee 01 00 	ori	1, r29, r29
    4ed8:	1c 30       	mov	r28, r6
    4eda:	6b 57 cd ac 	st.w	r10, -21300[r11]
    4ede:	6c ef 05 00 	st.w	r29, 4[r12]
    4ee2:	80 ff 42 0d 	jarl	5c24 <___malloc_unlock>, lp
    4ee6:	01 52       	mov	1, r10
    4ee8:	80 07 ac 3e 	jr	8d94 <__return_r25_r31>
    4eec:	1c 30       	mov	r28, r6
    4eee:	00 3a       	mov	0, r7
    4ef0:	80 ff 04 00 	jarl	4ef4 <__malloc_trim_r+0xbc>, lp
    4ef4:	44 fa       	add	4, lp
    4ef6:	79 00       	jmp	[r25]
    4ef8:	3b 5f 09 00 	ld.w	8[r27], r11
    4efc:	0a 60       	mov	r10, r12
    4efe:	ab 61       	sub	r11, r12
    4f00:	6f 62       	cmp	15, r12
    4f02:	a7 d5       	ble	4ea6 <__malloc_trim_r+0x6e>
    4f04:	40 6e 01 00 	movhi	1, r0, r13
    4f08:	2d 6f a9 a8 	ld.w	-22360[r13], r13
    4f0c:	8c 66 01 00 	ori	1, r12, r12
    4f10:	ad 51       	sub	r13, r10
    4f12:	40 6e 01 00 	movhi	1, r0, r13
    4f16:	6d 57 cd ac 	st.w	r10, -21300[r13]
    4f1a:	6b 67 05 00 	st.w	r12, 4[r11]
    4f1e:	c5 c5       	br	4ea6 <__malloc_trim_r+0x6e>

00004f20 <__free_r>:
    4f20:	54 1a       	add	-12, sp
    4f22:	63 e7 05 00 	st.w	r28, 4[sp]
    4f26:	63 ef 01 00 	st.w	r29, 0[sp]
    4f2a:	63 ff 09 00 	st.w	lp, 8[sp]
    4f2e:	07 e8       	mov	r7, r29
    4f30:	06 e0       	mov	r6, r28
    4f32:	60 3a       	cmp	0, r7
    4f34:	c2 6d       	be	500c <__free_r+0xec>
    4f36:	80 ff ea 0c 	jarl	5c20 <___malloc_lock>, lp
    4f3a:	3d 77 fd ff 	ld.w	-4[r29], r14
    4f3e:	1d 6e f8 ff 	addi	-8, r29, r13
    4f42:	1e 52       	mov	-2, r10
    4f44:	4e 51       	and	r14, r10
    4f46:	0d 58       	mov	r13, r11
    4f48:	40 7e 01 00 	movhi	1, r0, r15
    4f4c:	ca 59       	add	r10, r11
    4f4e:	2f 7e b0 a8 	movea	-22352, r15, r15
    4f52:	2b 67 05 00 	ld.w	4[r11], r12
    4f56:	2f 87 09 00 	ld.w	8[r15], r16
    4f5a:	1c 8a       	mov	-4, r17
    4f5c:	51 61       	and	r17, r12
    4f5e:	eb 81       	cmp	r11, r16
    4f60:	ba 05       	bne	4f66 <__free_r+0x46>
    4f62:	80 07 44 01 	jr	50a6 <__free_r+0x186>
    4f66:	6b 67 05 00 	st.w	r12, 4[r11]
    4f6a:	ce 76 01 00 	andi	1, r14, r14
    4f6e:	92 55       	be	5010 <__free_r+0xf0>
    4f70:	00 72       	mov	0, r14
    4f72:	0b 80       	mov	r11, r16
    4f74:	cc 81       	add	r12, r16
    4f76:	d0 c7 04 00 	tst1	0, 4[r16]
    4f7a:	ca 0d       	bne	4f92 <__free_r+0x72>
    4f7c:	cc 51       	add	r12, r10
    4f7e:	2b 67 09 00 	ld.w	8[r11], r12
    4f82:	60 72       	cmp	0, r14
    4f84:	a2 7d       	be	5078 <__free_r+0x158>
    4f86:	2b 5f 0d 00 	ld.w	12[r11], r11
    4f8a:	6c 5f 0d 00 	st.w	r11, 12[r12]
    4f8e:	6b 67 09 00 	st.w	r12, 8[r11]
    4f92:	0d 58       	mov	r13, r11
    4f94:	8a 66 01 00 	ori	1, r10, r12
    4f98:	ca 59       	add	r10, r11
    4f9a:	6d 67 05 00 	st.w	r12, 4[r13]
    4f9e:	6b 57 01 00 	st.w	r10, 0[r11]
    4fa2:	60 72       	cmp	0, r14
    4fa4:	9a 35       	bne	5006 <__free_r+0xe6>
    4fa6:	20 5e ff 01 	movea	511, r0, r11
    4faa:	eb 51       	cmp	r11, r10
    4fac:	e3 45       	bnh	5038 <__free_r+0x118>
    4fae:	0a 58       	mov	r10, r11
    4fb0:	89 5a       	shr	9, r11
    4fb2:	64 5a       	cmp	4, r11
    4fb4:	b3 05       	bnh	4fba <__free_r+0x9a>
    4fb6:	80 07 40 01 	jr	50f6 <__free_r+0x1d6>
    4fba:	0a 60       	mov	r10, r12
    4fbc:	86 62       	shr	6, r12
    4fbe:	0c 66 38 00 	addi	56, r12, r12
    4fc2:	0c 70       	mov	r12, r14
    4fc4:	cc 71       	add	r12, r14
    4fc6:	40 8e 01 00 	movhi	1, r0, r17
    4fca:	c2 72       	shl	2, r14
    4fcc:	31 8e b0 a8 	movea	-22352, r17, r17
    4fd0:	d1 71       	add	r17, r14
    4fd2:	2e 5f 09 00 	ld.w	8[r14], r11
    4fd6:	ee 59       	cmp	r14, r11
    4fd8:	ba 05       	bne	4fde <__free_r+0xbe>
    4fda:	80 07 30 01 	jr	510a <__free_r+0x1ea>
    4fde:	2b 67 05 00 	ld.w	4[r11], r12
    4fe2:	1c 7a       	mov	-4, r15
    4fe4:	4f 61       	and	r15, r12
    4fe6:	ec 51       	cmp	r12, r10
    4fe8:	d9 05       	bnl	4ff2 <__free_r+0xd2>
    4fea:	2b 5f 09 00 	ld.w	8[r11], r11
    4fee:	eb 71       	cmp	r11, r14
    4ff0:	fa f5       	bne	4fde <__free_r+0xbe>
    4ff2:	2b 57 0d 00 	ld.w	12[r11], r10
    4ff6:	6d 57 0d 00 	st.w	r10, 12[r13]
    4ffa:	6d 5f 09 00 	st.w	r11, 8[r13]
    4ffe:	6a 6f 09 00 	st.w	r13, 8[r10]
    5002:	6b 6f 0d 00 	st.w	r13, 12[r11]
    5006:	1c 30       	mov	r28, r6
    5008:	80 ff 1c 0c 	jarl	5c24 <___malloc_unlock>, lp
    500c:	bf 07 5c c4 	jr	1468 <__return_r28_r31>
    5010:	3d 77 f9 ff 	ld.w	-8[r29], r14
    5014:	ae 69       	sub	r14, r13
    5016:	ce 51       	add	r14, r10
    5018:	2d 87 09 00 	ld.w	8[r13], r16
    501c:	40 76 01 00 	movhi	1, r0, r14
    5020:	2e 76 b8 a8 	movea	-22344, r14, r14
    5024:	ee 81       	cmp	r14, r16
    5026:	d2 65       	be	50f0 <__free_r+0x1d0>
    5028:	2d 8f 0d 00 	ld.w	12[r13], r17
    502c:	00 72       	mov	0, r14
    502e:	70 8f 0d 00 	st.w	r17, 12[r16]
    5032:	71 87 09 00 	st.w	r16, 8[r17]
    5036:	e5 9d       	br	4f72 <__free_r+0x52>
    5038:	83 52       	shr	3, r10
    503a:	0a 58       	mov	r10, r11
    503c:	ca 59       	add	r10, r11
    503e:	40 66 01 00 	movhi	1, r0, r12
    5042:	c2 5a       	shl	2, r11
    5044:	2c 66 b0 a8 	movea	-22352, r12, r12
    5048:	cc 59       	add	r12, r11
    504a:	2b 77 09 00 	ld.w	8[r11], r14
    504e:	2f 87 05 00 	ld.w	4[r15], r16
    5052:	a2 52       	sar	2, r10
    5054:	01 62       	mov	1, r12
    5056:	ea 67 c0 00 	shl	r10, r12
    505a:	10 61       	or	r16, r12
    505c:	6d 5f 0d 00 	st.w	r11, 12[r13]
    5060:	6d 77 09 00 	st.w	r14, 8[r13]
    5064:	1c 30       	mov	r28, r6
    5066:	6f 67 05 00 	st.w	r12, 4[r15]
    506a:	6b 6f 09 00 	st.w	r13, 8[r11]
    506e:	6e 6f 0d 00 	st.w	r13, 12[r14]
    5072:	80 ff b2 0b 	jarl	5c24 <___malloc_unlock>, lp
    5076:	b5 cd       	br	500c <__free_r+0xec>
    5078:	40 86 01 00 	movhi	1, r0, r16
    507c:	30 86 b8 a8 	movea	-22344, r16, r16
    5080:	f0 61       	cmp	r16, r12
    5082:	aa 85       	bne	4f86 <__free_r+0x66>
    5084:	0d 58       	mov	r13, r11
    5086:	6f 6f 15 00 	st.w	r13, 20[r15]
    508a:	6f 6f 11 00 	st.w	r13, 16[r15]
    508e:	8a 76 01 00 	ori	1, r10, r14
    5092:	ca 59       	add	r10, r11
    5094:	6d 67 0d 00 	st.w	r12, 12[r13]
    5098:	6d 67 09 00 	st.w	r12, 8[r13]
    509c:	6d 77 05 00 	st.w	r14, 4[r13]
    50a0:	6b 57 01 00 	st.w	r10, 0[r11]
    50a4:	95 b5       	br	5006 <__free_r+0xe6>
    50a6:	ce 76 01 00 	andi	1, r14, r14
    50aa:	cc 51       	add	r12, r10
    50ac:	60 72       	cmp	0, r14
    50ae:	da 0d       	bne	50c8 <__free_r+0x1a8>
    50b0:	3d 77 f9 ff 	ld.w	-8[r29], r14
    50b4:	ae 69       	sub	r14, r13
    50b6:	2d 5f 0d 00 	ld.w	12[r13], r11
    50ba:	2d 67 09 00 	ld.w	8[r13], r12
    50be:	ce 51       	add	r14, r10
    50c0:	6c 5f 0d 00 	st.w	r11, 12[r12]
    50c4:	6b 67 09 00 	st.w	r12, 8[r11]
    50c8:	40 5e 01 00 	movhi	1, r0, r11
    50cc:	8a 66 01 00 	ori	1, r10, r12
    50d0:	2b 5f ad a8 	ld.w	-22356[r11], r11
    50d4:	6d 67 05 00 	st.w	r12, 4[r13]
    50d8:	6f 6f 09 00 	st.w	r13, 8[r15]
    50dc:	eb 51       	cmp	r11, r10
    50de:	c1 95       	bl	5006 <__free_r+0xe6>
    50e0:	40 56 01 00 	movhi	1, r0, r10
    50e4:	2a 3f fd ac 	ld.w	-21252[r10], r7
    50e8:	1c 30       	mov	r28, r6
    50ea:	bf ff 4e fd 	jarl	4e38 <__malloc_trim_r>, lp
    50ee:	c5 8d       	br	5006 <__free_r+0xe6>
    50f0:	01 72       	mov	1, r14
    50f2:	bf 07 80 fe 	jr	4f72 <__free_r+0x52>
    50f6:	20 66 14 00 	movea	20, r0, r12
    50fa:	ec 59       	cmp	r12, r11
    50fc:	bb 15       	bh	5122 <__free_r+0x202>
    50fe:	0b 66 5b 00 	addi	91, r11, r12
    5102:	0c 70       	mov	r12, r14
    5104:	cc 71       	add	r12, r14
    5106:	bf 07 c0 fe 	jr	4fc6 <__free_r+0xa6>
    510a:	2f 77 05 00 	ld.w	4[r15], r14
    510e:	a2 62       	sar	2, r12
    5110:	01 52       	mov	1, r10
    5112:	ec 57 c0 00 	shl	r12, r10
    5116:	0e 51       	or	r14, r10
    5118:	6f 57 05 00 	st.w	r10, 4[r15]
    511c:	0b 50       	mov	r11, r10
    511e:	bf 07 d8 fe 	jr	4ff6 <__free_r+0xd6>
    5122:	20 66 54 00 	movea	84, r0, r12
    5126:	ec 59       	cmp	r12, r11
    5128:	9b 0d       	bh	513a <__free_r+0x21a>
    512a:	0a 60       	mov	r10, r12
    512c:	8c 62       	shr	12, r12
    512e:	0c 66 6e 00 	addi	110, r12, r12
    5132:	0c 70       	mov	r12, r14
    5134:	cc 71       	add	r12, r14
    5136:	bf 07 90 fe 	jr	4fc6 <__free_r+0xa6>
    513a:	20 66 54 01 	movea	340, r0, r12
    513e:	ec 59       	cmp	r12, r11
    5140:	9b 0d       	bh	5152 <__free_r+0x232>
    5142:	0a 60       	mov	r10, r12
    5144:	8f 62       	shr	15, r12
    5146:	0c 66 77 00 	addi	119, r12, r12
    514a:	0c 70       	mov	r12, r14
    514c:	cc 71       	add	r12, r14
    514e:	bf 07 78 fe 	jr	4fc6 <__free_r+0xa6>
    5152:	20 66 54 05 	movea	1364, r0, r12
    5156:	ec 59       	cmp	r12, r11
    5158:	9b 0d       	bh	516a <__free_r+0x24a>
    515a:	0a 60       	mov	r10, r12
    515c:	92 62       	shr	18, r12
    515e:	0c 66 7c 00 	addi	124, r12, r12
    5162:	0c 70       	mov	r12, r14
    5164:	cc 71       	add	r12, r14
    5166:	bf 07 60 fe 	jr	4fc6 <__free_r+0xa6>
    516a:	20 76 fc 00 	movea	252, r0, r14
    516e:	20 66 7e 00 	movea	126, r0, r12
    5172:	bf 07 54 fe 	jr	4fc6 <__free_r+0xa6>
	...

00005178 <__fwalk>:
    5178:	03 1e e8 ff 	addi	-24, sp, sp
    517c:	63 cf 11 00 	st.w	r25, 16[sp]
    5180:	63 d7 0d 00 	st.w	r26, 12[sp]
    5184:	63 df 09 00 	st.w	r27, 8[sp]
    5188:	63 ff 15 00 	st.w	lp, 20[sp]
    518c:	63 e7 05 00 	st.w	r28, 4[sp]
    5190:	63 ef 01 00 	st.w	r29, 0[sp]
    5194:	06 de e0 02 	addi	736, r6, r27
    5198:	07 c8       	mov	r7, r25
    519a:	00 d2       	mov	0, r26
    519c:	a2 2d       	be	51f0 <__fwalk+0x78>
    519e:	3b e7 05 00 	ld.w	4[r27], r28
    51a2:	3b ef 09 00 	ld.w	8[r27], r29
    51a6:	5f e2       	add	-1, r28
    51a8:	60 e2       	cmp	0, r28
    51aa:	f6 1d       	blt	51e8 <__fwalk+0x70>
    51ac:	1d ee 68 00 	addi	104, r29, r29
    51b0:	3d 5f a4 ff 	ld.h	-92[r29], r11
    51b4:	5f e2       	add	-1, r28
    51b6:	d0 5a       	shl	16, r11
    51b8:	b0 5a       	sar	16, r11
    51ba:	cb 66 ff ff 	andi	65535, r11, r12
    51be:	1d 36 98 ff 	addi	-104, r29, r6
    51c2:	60 5a       	cmp	0, r11
    51c4:	e2 0d       	be	51e0 <__fwalk+0x68>
    51c6:	61 62       	cmp	1, r12
    51c8:	c3 0d       	bnh	51e0 <__fwalk+0x68>
    51ca:	3d 5f a6 ff 	ld.h	-90[r29], r11
    51ce:	d0 5a       	shl	16, r11
    51d0:	b0 5a       	sar	16, r11
    51d2:	7f 5a       	cmp	-1, r11
    51d4:	e2 05       	be	51e0 <__fwalk+0x68>
    51d6:	80 ff 04 00 	jarl	51da <__fwalk+0x62>, lp
    51da:	44 fa       	add	4, lp
    51dc:	79 00       	jmp	[r25]
    51de:	0a d1       	or	r10, r26
    51e0:	1d ee 68 00 	addi	104, r29, r29
    51e4:	7f e2       	cmp	-1, r28
    51e6:	da e5       	bne	51b0 <__fwalk+0x38>
    51e8:	3b df 01 00 	ld.w	0[r27], r27
    51ec:	60 da       	cmp	0, r27
    51ee:	8a dd       	bne	519e <__fwalk+0x26>
    51f0:	1a 50       	mov	r26, r10
    51f2:	80 07 a2 3b 	jr	8d94 <__return_r25_r31>
	...

000051f8 <__fwalk_reent>:
    51f8:	03 1e e4 ff 	addi	-28, sp, sp
    51fc:	63 c7 15 00 	st.w	r24, 20[sp]
    5200:	63 cf 11 00 	st.w	r25, 16[sp]
    5204:	63 d7 0d 00 	st.w	r26, 12[sp]
    5208:	63 df 09 00 	st.w	r27, 8[sp]
    520c:	63 ff 19 00 	st.w	lp, 24[sp]
    5210:	63 e7 05 00 	st.w	r28, 4[sp]
    5214:	63 ef 01 00 	st.w	r29, 0[sp]
    5218:	06 de e0 02 	addi	736, r6, r27
    521c:	06 c0       	mov	r6, r24
    521e:	07 c8       	mov	r7, r25
    5220:	00 d2       	mov	0, r26
    5222:	b2 2d       	be	5278 <__fwalk_reent+0x80>
    5224:	3b e7 05 00 	ld.w	4[r27], r28
    5228:	3b ef 09 00 	ld.w	8[r27], r29
    522c:	5f e2       	add	-1, r28
    522e:	60 e2       	cmp	0, r28
    5230:	86 25       	blt	5270 <__fwalk_reent+0x78>
    5232:	1d ee 68 00 	addi	104, r29, r29
    5236:	3d 5f a4 ff 	ld.h	-92[r29], r11
    523a:	5f e2       	add	-1, r28
    523c:	d0 5a       	shl	16, r11
    523e:	b0 5a       	sar	16, r11
    5240:	cb 66 ff ff 	andi	65535, r11, r12
    5244:	1d 3e 98 ff 	addi	-104, r29, r7
    5248:	60 5a       	cmp	0, r11
    524a:	f2 0d       	be	5268 <__fwalk_reent+0x70>
    524c:	61 62       	cmp	1, r12
    524e:	d3 0d       	bnh	5268 <__fwalk_reent+0x70>
    5250:	3d 5f a6 ff 	ld.h	-90[r29], r11
    5254:	18 30       	mov	r24, r6
    5256:	d0 5a       	shl	16, r11
    5258:	b0 5a       	sar	16, r11
    525a:	7f 5a       	cmp	-1, r11
    525c:	e2 05       	be	5268 <__fwalk_reent+0x70>
    525e:	80 ff 04 00 	jarl	5262 <__fwalk_reent+0x6a>, lp
    5262:	44 fa       	add	4, lp
    5264:	79 00       	jmp	[r25]
    5266:	0a d1       	or	r10, r26
    5268:	1d ee 68 00 	addi	104, r29, r29
    526c:	7f e2       	cmp	-1, r28
    526e:	ca e5       	bne	5236 <__fwalk_reent+0x3e>
    5270:	3b df 01 00 	ld.w	0[r27], r27
    5274:	60 da       	cmp	0, r27
    5276:	fa d5       	bne	5224 <__fwalk_reent+0x2c>
    5278:	1a 50       	mov	r26, r10
    527a:	80 07 d6 3a 	jr	8d50 <__return_r24_r31>
	...

00005280 <__setlocale_r>:
    5280:	50 1a       	add	-16, sp
    5282:	63 ef 01 00 	st.w	r29, 0[sp]
    5286:	63 ff 0d 00 	st.w	lp, 12[sp]
    528a:	63 df 09 00 	st.w	r27, 8[sp]
    528e:	63 e7 05 00 	st.w	r28, 4[sp]
    5292:	08 e8       	mov	r8, r29
    5294:	60 42       	cmp	0, r8
    5296:	c2 2d       	be	52ee <__setlocale_r+0x6e>
    5298:	40 3e 01 00 	movhi	1, r0, r7
    529c:	40 de 00 00 	movhi	0, r0, r27
    52a0:	08 30       	mov	r8, r6
    52a2:	27 3e df 9f 	movea	-24609, r7, r7
    52a6:	3b de 1c 6a 	movea	27164, r27, r27
    52aa:	40 e6 01 00 	movhi	1, r0, r28
    52ae:	80 ff 04 00 	jarl	52b2 <__setlocale_r+0x32>, lp
    52b2:	44 fa       	add	4, lp
    52b4:	7b 00       	jmp	[r27]
    52b6:	3c e6 dd 9f 	movea	-24611, r28, r28
    52ba:	60 52       	cmp	0, r10
    52bc:	ca 05       	bne	52c4 <__setlocale_r+0x44>
    52be:	1c 50       	mov	r28, r10
    52c0:	80 07 44 3b 	jr	8e04 <__return_r27_r31>
    52c4:	1d 30       	mov	r29, r6
    52c6:	1c 38       	mov	r28, r7
    52c8:	80 ff 04 00 	jarl	52cc <__setlocale_r+0x4c>, lp
    52cc:	44 fa       	add	4, lp
    52ce:	7b 00       	jmp	[r27]
    52d0:	60 52       	cmp	0, r10
    52d2:	e2 f5       	be	52be <__setlocale_r+0x3e>
    52d4:	40 3e 01 00 	movhi	1, r0, r7
    52d8:	1d 30       	mov	r29, r6
    52da:	27 3e e5 9f 	movea	-24603, r7, r7
    52de:	80 ff 04 00 	jarl	52e2 <__setlocale_r+0x62>, lp
    52e2:	44 fa       	add	4, lp
    52e4:	7b 00       	jmp	[r27]
    52e6:	60 52       	cmp	0, r10
    52e8:	b2 ed       	be	52be <__setlocale_r+0x3e>
    52ea:	00 e2       	mov	0, r28
    52ec:	95 ed       	br	52be <__setlocale_r+0x3e>
    52ee:	40 e6 01 00 	movhi	1, r0, r28
    52f2:	3c e6 dd 9f 	movea	-24611, r28, r28
    52f6:	1c 50       	mov	r28, r10
    52f8:	80 07 0c 3b 	jr	8e04 <__return_r27_r31>

000052fc <___locale_charset>:
    52fc:	40 56 01 00 	movhi	1, r0, r10
    5300:	2a 56 30 a8 	movea	-22480, r10, r10
    5304:	7f 00       	jmp	[lp]
	...

00005308 <___locale_mb_cur_max>:
    5308:	40 56 01 00 	movhi	1, r0, r10
    530c:	2a 57 2d a8 	ld.w	-22484[r10], r10
    5310:	7f 00       	jmp	[lp]
	...

00005314 <___locale_msgcharset>:
    5314:	40 56 01 00 	movhi	1, r0, r10
    5318:	2a 56 50 a8 	movea	-22448, r10, r10
    531c:	7f 00       	jmp	[lp]
	...

00005320 <___locale_cjk_lang>:
    5320:	00 52       	mov	0, r10
    5322:	7f 00       	jmp	[lp]

00005324 <__localeconv_r>:
    5324:	40 56 01 00 	movhi	1, r0, r10
    5328:	2a 56 70 a8 	movea	-22416, r10, r10
    532c:	7f 00       	jmp	[lp]
	...

00005330 <_setlocale>:
    5330:	06 50       	mov	r6, r10
    5332:	24 37 bd 08 	ld.w	2236[gp], r6
    5336:	5c 1a       	add	-4, sp
    5338:	07 40       	mov	r7, r8
    533a:	0a 38       	mov	r10, r7
    533c:	63 ff 01 00 	st.w	lp, 0[sp]
    5340:	bf ff 40 ff 	jarl	5280 <__setlocale_r>, lp
    5344:	bf 07 44 c1 	jr	1488 <__return_r31>

00005348 <_localeconv>:
    5348:	40 56 01 00 	movhi	1, r0, r10
    534c:	2a 56 70 a8 	movea	-22416, r10, r10
    5350:	7f 00       	jmp	[lp]
	...

00005354 <___smakebuf_r>:
    5354:	03 1e b0 ff 	addi	-80, sp, sp
    5358:	63 e7 41 00 	st.w	r28, 64[sp]
    535c:	63 ef 3d 00 	st.w	r29, 60[sp]
    5360:	63 ff 4d 00 	st.w	lp, 76[sp]
    5364:	63 d7 49 00 	st.w	r26, 72[sp]
    5368:	63 df 45 00 	st.w	r27, 68[sp]
    536c:	27 57 0c 00 	ld.h	12[r7], r10
    5370:	40 5e 02 00 	movhi	2, r0, r11
    5374:	d0 52       	shl	16, r10
    5376:	4a 59       	and	r10, r11
    5378:	07 e8       	mov	r7, r29
    537a:	06 e0       	mov	r6, r28
    537c:	b0 52       	sar	16, r10
    537e:	60 5a       	cmp	0, r11
    5380:	8a 55       	bne	5420 <___smakebuf_r+0xcc>
    5382:	27 3f 0e 00 	ld.h	14[r7], r7
    5386:	d0 3a       	shl	16, r7
    5388:	b0 3a       	sar	16, r7
    538a:	60 3a       	cmp	0, r7
    538c:	f6 3d       	blt	540a <___smakebuf_r+0xb6>
    538e:	03 40       	mov	sp, r8
    5390:	80 ff f4 27 	jarl	7b84 <__fstat_r>, lp
    5394:	60 52       	cmp	0, r10
    5396:	e6 35       	blt	5402 <___smakebuf_r+0xae>
    5398:	23 57 05 00 	ld.w	4[sp], r10
    539c:	20 5e 00 20 	movea	8192, r0, r11
    53a0:	ca 56 00 f0 	andi	61440, r10, r10
    53a4:	eb 51       	cmp	r11, r10
    53a6:	e2 d7 00 00 	setf	z, r26
    53aa:	40 5e 01 00 	movhi	1, r0, r11
    53ae:	2b 5e 00 80 	movea	-32768, r11, r11
    53b2:	eb 51       	cmp	r11, r10
    53b4:	e2 45       	be	5440 <___smakebuf_r+0xec>
    53b6:	3d 57 0c 00 	ld.h	12[r29], r10
    53ba:	20 de 00 04 	movea	1024, r0, r27
    53be:	8a 56 00 08 	ori	2048, r10, r10
    53c2:	7d 57 0c 00 	st.h	r10, 12[r29]
    53c6:	1c 30       	mov	r28, r6
    53c8:	1b 38       	mov	r27, r7
    53ca:	80 ff ea 00 	jarl	54b4 <__malloc_r>, lp
    53ce:	60 52       	cmp	0, r10
    53d0:	a2 5d       	be	5484 <___smakebuf_r+0x130>
    53d2:	3d 5f 0c 00 	ld.h	12[r29], r11
    53d6:	40 66 00 00 	movhi	0, r0, r12
    53da:	2c 66 c0 4b 	movea	19392, r12, r12
    53de:	7c 67 3d 00 	st.w	r12, 60[r28]
    53e2:	8b 5e 80 00 	ori	128, r11, r11
    53e6:	7d 5f 0c 00 	st.h	r11, 12[r29]
    53ea:	7d 57 01 00 	st.w	r10, 0[r29]
    53ee:	7d 57 11 00 	st.w	r10, 16[r29]
    53f2:	7d df 15 00 	st.w	r27, 20[r29]
    53f6:	60 d2       	cmp	0, r26
    53f8:	ea 35       	bne	5464 <___smakebuf_r+0x110>
    53fa:	03 1e 3c 00 	addi	60, sp, sp
    53fe:	80 07 d2 39 	jr	8dd0 <__return_r26_r31>
    5402:	3d 57 0c 00 	ld.h	12[r29], r10
    5406:	d0 52       	shl	16, r10
    5408:	b0 52       	sar	16, r10
    540a:	ca 5e 80 00 	andi	128, r10, r11
    540e:	ea 15       	bne	543a <___smakebuf_r+0xe6>
    5410:	20 de 00 04 	movea	1024, r0, r27
    5414:	8a 56 00 08 	ori	2048, r10, r10
    5418:	7d 57 0c 00 	st.h	r10, 12[r29]
    541c:	00 d2       	mov	0, r26
    541e:	c5 d5       	br	53c6 <___smakebuf_r+0x72>
    5420:	07 56 43 00 	addi	67, r7, r10
    5424:	67 57 01 00 	st.w	r10, 0[r7]
    5428:	67 57 11 00 	st.w	r10, 16[r7]
    542c:	03 1e 3c 00 	addi	60, sp, sp
    5430:	01 52       	mov	1, r10
    5432:	67 57 15 00 	st.w	r10, 20[r7]
    5436:	80 07 9a 39 	jr	8dd0 <__return_r26_r31>
    543a:	20 de 40 00 	movea	64, r0, r27
    543e:	b5 ed       	br	5414 <___smakebuf_r+0xc0>
    5440:	40 56 00 00 	movhi	0, r0, r10
    5444:	3d 5f 29 00 	ld.w	40[r29], r11
    5448:	2a 56 c4 69 	movea	27076, r10, r10
    544c:	ea 59       	cmp	r10, r11
    544e:	ca b5       	bne	53b6 <___smakebuf_r+0x62>
    5450:	3d 57 0c 00 	ld.h	12[r29], r10
    5454:	20 de 00 04 	movea	1024, r0, r27
    5458:	1b 51       	or	r27, r10
    545a:	7d 57 0c 00 	st.h	r10, 12[r29]
    545e:	7d df 4d 00 	st.w	r27, 76[r29]
    5462:	a5 b5       	br	53c6 <___smakebuf_r+0x72>
    5464:	3d 3f 0e 00 	ld.h	14[r29], r7
    5468:	1c 30       	mov	r28, r6
    546a:	d0 3a       	shl	16, r7
    546c:	b0 3a       	sar	16, r7
    546e:	80 ff fa 2a 	jarl	7f68 <__isatty_r>, lp
    5472:	60 52       	cmp	0, r10
    5474:	b2 c5       	be	53fa <___smakebuf_r+0xa6>
    5476:	3d 57 0c 00 	ld.h	12[r29], r10
    547a:	8a 56 01 00 	ori	1, r10, r10
    547e:	7d 57 0c 00 	st.h	r10, 12[r29]
    5482:	c5 bd       	br	53fa <___smakebuf_r+0xa6>
    5484:	3d 57 0c 00 	ld.h	12[r29], r10
    5488:	40 5e 00 02 	movhi	512, r0, r11
    548c:	d0 52       	shl	16, r10
    548e:	4a 59       	and	r10, r11
    5490:	b0 52       	sar	16, r10
    5492:	60 5a       	cmp	0, r11
    5494:	ba b5       	bne	53fa <___smakebuf_r+0xa6>
    5496:	8a 56 02 00 	ori	2, r10, r10
    549a:	1d 5e 43 00 	addi	67, r29, r11
    549e:	7d 57 0c 00 	st.h	r10, 12[r29]
    54a2:	01 52       	mov	1, r10
    54a4:	7d 5f 01 00 	st.w	r11, 0[r29]
    54a8:	7d 5f 11 00 	st.w	r11, 16[r29]
    54ac:	7d 57 15 00 	st.w	r10, 20[r29]
    54b0:	d5 a5       	br	53fa <___smakebuf_r+0xa6>
	...

000054b4 <__malloc_r>:
    54b4:	03 1e d0 ff 	addi	-48, sp, sp
    54b8:	63 df 09 00 	st.w	r27, 8[sp]
    54bc:	63 e7 05 00 	st.w	r28, 4[sp]
    54c0:	63 ff 2d 00 	st.w	lp, 44[sp]
    54c4:	63 17 29 00 	st.w	r2, 40[sp]
    54c8:	63 a7 25 00 	st.w	r20, 36[sp]
    54cc:	63 af 21 00 	st.w	r21, 32[sp]
    54d0:	63 b7 1d 00 	st.w	r22, 28[sp]
    54d4:	63 bf 19 00 	st.w	r23, 24[sp]
    54d8:	63 c7 15 00 	st.w	r24, 20[sp]
    54dc:	63 cf 11 00 	st.w	r25, 16[sp]
    54e0:	63 d7 0d 00 	st.w	r26, 12[sp]
    54e4:	63 ef 01 00 	st.w	r29, 0[sp]
    54e8:	07 e6 0b 00 	addi	11, r7, r28
    54ec:	20 56 16 00 	movea	22, r0, r10
    54f0:	06 d8       	mov	r6, r27
    54f2:	ea e1       	cmp	r10, r28
    54f4:	e3 4d       	bnh	5590 <__malloc_r+0xdc>
    54f6:	18 52       	mov	-8, r10
    54f8:	4a e1       	and	r10, r28
    54fa:	60 e2       	cmp	0, r28
    54fc:	e6 4d       	blt	5598 <__malloc_r+0xe4>
    54fe:	fc 39       	cmp	r28, r7
    5500:	cb 4d       	bh	5598 <__malloc_r+0xe4>
    5502:	1b 30       	mov	r27, r6
    5504:	80 ff 1c 07 	jarl	5c20 <___malloc_lock>, lp
    5508:	20 56 f7 01 	movea	503, r0, r10
    550c:	ea e1       	cmp	r10, r28
    550e:	ab 4d       	bh	55a2 <__malloc_r+0xee>
    5510:	40 56 01 00 	movhi	1, r0, r10
    5514:	2a 56 b0 a8 	movea	-22352, r10, r10
    5518:	dc 51       	add	r28, r10
    551a:	2a ef 0d 00 	ld.w	12[r10], r29
    551e:	1c 70       	mov	r28, r14
    5520:	83 72       	shr	3, r14
    5522:	ea e9       	cmp	r10, r29
    5524:	ba 05       	bne	552a <__malloc_r+0x76>
    5526:	80 07 e2 04 	jr	5a08 <__malloc_r+0x554>
    552a:	3d 57 05 00 	ld.w	4[r29], r10
    552e:	1c 62       	mov	-4, r12
    5530:	4c 51       	and	r12, r10
    5532:	dd 51       	add	r29, r10
    5534:	3d 5f 0d 00 	ld.w	12[r29], r11
    5538:	2a 6f 05 00 	ld.w	4[r10], r13
    553c:	3d 67 09 00 	ld.w	8[r29], r12
    5540:	8d 6e 01 00 	ori	1, r13, r13
    5544:	6c 5f 0d 00 	st.w	r11, 12[r12]
    5548:	6b 67 09 00 	st.w	r12, 8[r11]
    554c:	1b 30       	mov	r27, r6
    554e:	6a 6f 05 00 	st.w	r13, 4[r10]
    5552:	80 ff d2 06 	jarl	5c24 <___malloc_unlock>, lp
    5556:	1d 56 08 00 	addi	8, r29, r10
    555a:	23 ff 2d 00 	ld.w	44[sp], lp
    555e:	23 17 29 00 	ld.w	40[sp], r2
    5562:	23 a7 25 00 	ld.w	36[sp], r20
    5566:	23 af 21 00 	ld.w	32[sp], r21
    556a:	23 b7 1d 00 	ld.w	28[sp], r22
    556e:	23 bf 19 00 	ld.w	24[sp], r23
    5572:	23 c7 15 00 	ld.w	20[sp], r24
    5576:	23 cf 11 00 	ld.w	16[sp], r25
    557a:	23 d7 0d 00 	ld.w	12[sp], r26
    557e:	23 df 09 00 	ld.w	8[sp], r27
    5582:	23 e7 05 00 	ld.w	4[sp], r28
    5586:	23 ef 01 00 	ld.w	0[sp], r29
    558a:	03 1e 30 00 	addi	48, sp, sp
    558e:	7f 00       	jmp	[lp]
    5590:	20 e6 10 00 	movea	16, r0, r28
    5594:	fc 39       	cmp	r28, r7
    5596:	e3 b5       	bnh	5502 <__malloc_r+0x4e>
    5598:	0c 52       	mov	12, r10
    559a:	7b 57 01 00 	st.w	r10, 0[r27]
    559e:	00 52       	mov	0, r10
    55a0:	d5 dd       	br	555a <__malloc_r+0xa6>
    55a2:	1c 70       	mov	r28, r14
    55a4:	89 72       	shr	9, r14
    55a6:	a2 35       	be	560a <__malloc_r+0x156>
    55a8:	64 72       	cmp	4, r14
    55aa:	b3 05       	bnh	55b0 <__malloc_r+0xfc>
    55ac:	80 07 3e 03 	jr	58ea <__malloc_r+0x436>
    55b0:	1c 70       	mov	r28, r14
    55b2:	86 72       	shr	6, r14
    55b4:	0e 76 38 00 	addi	56, r14, r14
    55b8:	0e 60       	mov	r14, r12
    55ba:	ce 61       	add	r14, r12
    55bc:	40 86 01 00 	movhi	1, r0, r16
    55c0:	c2 62       	shl	2, r12
    55c2:	30 86 b0 a8 	movea	-22352, r16, r16
    55c6:	d0 61       	add	r16, r12
    55c8:	2c ef 0d 00 	ld.w	12[r12], r29
    55cc:	fd 61       	cmp	r29, r12
    55ce:	c2 25       	be	5616 <__malloc_r+0x162>
    55d0:	3d 57 05 00 	ld.w	4[r29], r10
    55d4:	1c 5a       	mov	-4, r11
    55d6:	4b 51       	and	r11, r10
    55d8:	0a 58       	mov	r10, r11
    55da:	bc 59       	sub	r28, r11
    55dc:	6f 5a       	cmp	15, r11
    55de:	e7 0d       	ble	55fa <__malloc_r+0x146>
    55e0:	a5 1d       	br	5614 <__malloc_r+0x160>
    55e2:	3d ef 0d 00 	ld.w	12[r29], r29
    55e6:	fd 61       	cmp	r29, r12
    55e8:	f2 15       	be	5616 <__malloc_r+0x162>
    55ea:	3d 57 05 00 	ld.w	4[r29], r10
    55ee:	1c 82       	mov	-4, r16
    55f0:	50 51       	and	r16, r10
    55f2:	0a 58       	mov	r10, r11
    55f4:	bc 59       	sub	r28, r11
    55f6:	6f 5a       	cmp	15, r11
    55f8:	ef 0d       	bgt	5614 <__malloc_r+0x160>
    55fa:	60 5a       	cmp	0, r11
    55fc:	b6 f5       	blt	55e2 <__malloc_r+0x12e>
    55fe:	dd 51       	add	r29, r10
    5600:	2a 6f 05 00 	ld.w	4[r10], r13
    5604:	3d 5f 0d 00 	ld.w	12[r29], r11
    5608:	a5 9d       	br	553c <__malloc_r+0x88>
    560a:	1c 70       	mov	r28, r14
    560c:	83 72       	shr	3, r14
    560e:	0e 60       	mov	r14, r12
    5610:	ce 61       	add	r14, r12
    5612:	d5 d5       	br	55bc <__malloc_r+0x108>
    5614:	5f 72       	add	-1, r14
    5616:	41 72       	add	1, r14
    5618:	40 d6 01 00 	movhi	1, r0, r26
    561c:	3a d6 b0 a8 	movea	-22352, r26, r26
    5620:	40 7e 01 00 	movhi	1, r0, r15
    5624:	3a ef 11 00 	ld.w	16[r26], r29
    5628:	2f 7e b8 a8 	movea	-22344, r15, r15
    562c:	ef e9       	cmp	r15, r29
    562e:	ba 05       	bne	5634 <__malloc_r+0x180>
    5630:	80 07 84 03 	jr	59b4 <__malloc_r+0x500>
    5634:	3d 6f 05 00 	ld.w	4[r29], r13
    5638:	1c 52       	mov	-4, r10
    563a:	4a 69       	and	r10, r13
    563c:	0d 50       	mov	r13, r10
    563e:	bc 51       	sub	r28, r10
    5640:	6f 52       	cmp	15, r10
    5642:	b7 05       	ble	5648 <__malloc_r+0x194>
    5644:	80 07 36 03 	jr	597a <__malloc_r+0x4c6>
    5648:	7a 7f 15 00 	st.w	r15, 20[r26]
    564c:	7a 7f 11 00 	st.w	r15, 16[r26]
    5650:	60 52       	cmp	0, r10
    5652:	ee 7d       	bge	574e <__malloc_r+0x29a>
    5654:	20 56 ff 01 	movea	511, r0, r10
    5658:	ea 69       	cmp	r10, r13
    565a:	b3 05       	bnh	5660 <__malloc_r+0x1ac>
    565c:	80 07 b6 02 	jr	5912 <__malloc_r+0x45e>
    5660:	83 6a       	shr	3, r13
    5662:	0d 58       	mov	r13, r11
    5664:	cd 59       	add	r13, r11
    5666:	40 66 01 00 	movhi	1, r0, r12
    566a:	2c 66 b0 a8 	movea	-22352, r12, r12
    566e:	c2 5a       	shl	2, r11
    5670:	cc 59       	add	r12, r11
    5672:	2b 67 09 00 	ld.w	8[r11], r12
    5676:	3a 87 05 00 	ld.w	4[r26], r16
    567a:	a2 6a       	sar	2, r13
    567c:	01 52       	mov	1, r10
    567e:	ed 57 c0 00 	shl	r13, r10
    5682:	10 51       	or	r16, r10
    5684:	7d 5f 0d 00 	st.w	r11, 12[r29]
    5688:	7d 67 09 00 	st.w	r12, 8[r29]
    568c:	7a 57 05 00 	st.w	r10, 4[r26]
    5690:	6b ef 09 00 	st.w	r29, 8[r11]
    5694:	6c ef 0d 00 	st.w	r29, 12[r12]
    5698:	0e 58       	mov	r14, r11
    569a:	a2 5a       	sar	2, r11
    569c:	01 62       	mov	1, r12
    569e:	eb 67 c0 00 	shl	r11, r12
    56a2:	ea 61       	cmp	r10, r12
    56a4:	bb 65       	bh	576a <__malloc_r+0x2b6>
    56a6:	0a 58       	mov	r10, r11
    56a8:	4c 59       	and	r12, r11
    56aa:	ba 0d       	bne	56c0 <__malloc_r+0x20c>
    56ac:	1c 5a       	mov	-4, r11
    56ae:	cc 61       	add	r12, r12
    56b0:	4b 71       	and	r11, r14
    56b2:	a5 05       	br	56b6 <__malloc_r+0x202>
    56b4:	cc 61       	add	r12, r12
    56b6:	0a 58       	mov	r10, r11
    56b8:	4c 59       	and	r12, r11
    56ba:	44 72       	add	4, r14
    56bc:	60 5a       	cmp	0, r11
    56be:	b2 fd       	be	56b4 <__malloc_r+0x200>
    56c0:	0e 80       	mov	r14, r16
    56c2:	ce 81       	add	r14, r16
    56c4:	40 56 01 00 	movhi	1, r0, r10
    56c8:	c2 82       	shl	2, r16
    56ca:	2a 56 b0 a8 	movea	-22352, r10, r10
    56ce:	ca 81       	add	r10, r16
    56d0:	10 68       	mov	r16, r13
    56d2:	0e 88       	mov	r14, r17
    56d4:	2d ef 0d 00 	ld.w	12[r13], r29
    56d8:	fd 69       	cmp	r29, r13
    56da:	da 0d       	bne	56f4 <__malloc_r+0x240>
    56dc:	80 07 e0 02 	jr	59bc <__malloc_r+0x508>
    56e0:	60 5a       	cmp	0, r11
    56e2:	b6 05       	blt	56e8 <__malloc_r+0x234>
    56e4:	80 07 3a 03 	jr	5a1e <__malloc_r+0x56a>
    56e8:	3d ef 0d 00 	ld.w	12[r29], r29
    56ec:	fd 69       	cmp	r29, r13
    56ee:	ba 05       	bne	56f4 <__malloc_r+0x240>
    56f0:	80 07 cc 02 	jr	59bc <__malloc_r+0x508>
    56f4:	3d 57 05 00 	ld.w	4[r29], r10
    56f8:	1c 5a       	mov	-4, r11
    56fa:	4b 51       	and	r11, r10
    56fc:	0a 58       	mov	r10, r11
    56fe:	bc 59       	sub	r28, r11
    5700:	6f 5a       	cmp	15, r11
    5702:	f7 ed       	ble	56e0 <__malloc_r+0x22c>
    5704:	3d 67 0d 00 	ld.w	12[r29], r12
    5708:	3d 6f 09 00 	ld.w	8[r29], r13
    570c:	1d 50       	mov	r29, r10
    570e:	dc 51       	add	r28, r10
    5710:	6d 67 0d 00 	st.w	r12, 12[r13]
    5714:	6c 6f 09 00 	st.w	r13, 8[r12]
    5718:	9c e6 01 00 	ori	1, r28, r28
    571c:	0a 60       	mov	r10, r12
    571e:	7a 57 15 00 	st.w	r10, 20[r26]
    5722:	7a 57 11 00 	st.w	r10, 16[r26]
    5726:	7d e7 05 00 	st.w	r28, 4[r29]
    572a:	8b 6e 01 00 	ori	1, r11, r13
    572e:	cb 61       	add	r11, r12
    5730:	1b 30       	mov	r27, r6
    5732:	6a 7f 0d 00 	st.w	r15, 12[r10]
    5736:	6a 7f 09 00 	st.w	r15, 8[r10]
    573a:	6a 6f 05 00 	st.w	r13, 4[r10]
    573e:	6c 5f 01 00 	st.w	r11, 0[r12]
    5742:	80 ff e2 04 	jarl	5c24 <___malloc_unlock>, lp
    5746:	1d 56 08 00 	addi	8, r29, r10
    574a:	bf 07 10 fe 	jr	555a <__malloc_r+0xa6>
    574e:	dd 69       	add	r29, r13
    5750:	2d 57 05 00 	ld.w	4[r13], r10
    5754:	1b 30       	mov	r27, r6
    5756:	8a 56 01 00 	ori	1, r10, r10
    575a:	6d 57 05 00 	st.w	r10, 4[r13]
    575e:	80 ff c6 04 	jarl	5c24 <___malloc_unlock>, lp
    5762:	1d 56 08 00 	addi	8, r29, r10
    5766:	bf 07 f4 fd 	jr	555a <__malloc_r+0xa6>
    576a:	3a ef 09 00 	ld.w	8[r26], r29
    576e:	1c 62       	mov	-4, r12
    5770:	3d cf 05 00 	ld.w	4[r29], r25
    5774:	4c c9       	and	r12, r25
    5776:	fc c9       	cmp	r28, r25
    5778:	f1 05       	bl	5786 <__malloc_r+0x2d2>
    577a:	19 50       	mov	r25, r10
    577c:	bc 51       	sub	r28, r10
    577e:	6f 52       	cmp	15, r10
    5780:	b7 05       	ble	5786 <__malloc_r+0x2d2>
    5782:	80 07 44 01 	jr	58c6 <__malloc_r+0x412>
    5786:	40 56 01 00 	movhi	1, r0, r10
    578a:	40 16 01 00 	movhi	1, r0, r2
    578e:	2a bf fd ac 	ld.w	-21252[r10], r23
    5792:	22 57 a9 a8 	ld.w	-22360[r2], r10
    5796:	1d a8       	mov	r29, r21
    5798:	d9 a9       	add	r25, r21
    579a:	dc b9       	add	r28, r23
    579c:	7f 52       	cmp	-1, r10
    579e:	ba 05       	bne	57a4 <__malloc_r+0x2f0>
    57a0:	80 07 4e 03 	jr	5aee <__malloc_r+0x63a>
    57a4:	17 be 0f 10 	addi	4111, r23, r23
    57a8:	20 86 00 f0 	movea	-4096, r0, r16
    57ac:	50 b9       	and	r16, r23
    57ae:	40 a6 00 00 	movhi	0, r0, r20
    57b2:	1b 30       	mov	r27, r6
    57b4:	17 38       	mov	r23, r7
    57b6:	34 a6 c4 68 	movea	26820, r20, r20
    57ba:	80 ff 04 00 	jarl	57be <__malloc_r+0x30a>, lp
    57be:	44 fa       	add	4, lp
    57c0:	74 00       	jmp	[r20]
    57c2:	0a c0       	mov	r10, r24
    57c4:	7f 52       	cmp	-1, r10
    57c6:	ba 05       	bne	57cc <__malloc_r+0x318>
    57c8:	80 07 52 03 	jr	5b1a <__malloc_r+0x666>
    57cc:	ea a9       	cmp	r10, r21
    57ce:	b3 05       	bnh	57d4 <__malloc_r+0x320>
    57d0:	80 07 96 02 	jr	5a66 <__malloc_r+0x5b2>
    57d4:	40 b6 01 00 	movhi	1, r0, r22
    57d8:	36 5f cd ac 	ld.w	-21300[r22], r11
    57dc:	d7 59       	add	r23, r11
    57de:	76 5f cd ac 	st.w	r11, -21300[r22]
    57e2:	f8 a9       	cmp	r24, r21
    57e4:	ba 05       	bne	57ea <__malloc_r+0x336>
    57e6:	80 07 44 03 	jr	5b2a <__malloc_r+0x676>
    57ea:	22 57 a9 a8 	ld.w	-22360[r2], r10
    57ee:	7f 52       	cmp	-1, r10
    57f0:	ba 05       	bne	57f6 <__malloc_r+0x342>
    57f2:	80 07 78 03 	jr	5b6a <__malloc_r+0x6b6>
    57f6:	98 a9       	subr	r24, r21
    57f8:	cb a9       	add	r11, r21
    57fa:	76 af cd ac 	st.w	r21, -21300[r22]
    57fe:	d8 5e 07 00 	andi	7, r24, r11
    5802:	ba 05       	bne	5808 <__malloc_r+0x354>
    5804:	80 07 a4 02 	jr	5aa8 <__malloc_r+0x5f4>
    5808:	ab c1       	sub	r11, r24
    580a:	20 56 08 10 	movea	4104, r0, r10
    580e:	48 c2       	add	8, r24
    5810:	ab 51       	sub	r11, r10
    5812:	d8 b9       	add	r24, r23
    5814:	d7 be ff 0f 	andi	4095, r23, r23
    5818:	8a b9       	subr	r10, r23
    581a:	1b 30       	mov	r27, r6
    581c:	17 38       	mov	r23, r7
    581e:	80 ff 04 00 	jarl	5822 <__malloc_r+0x36e>, lp
    5822:	44 fa       	add	4, lp
    5824:	74 00       	jmp	[r20]
    5826:	7f 52       	cmp	-1, r10
    5828:	ba 05       	bne	582e <__malloc_r+0x37a>
    582a:	80 07 4c 03 	jr	5b76 <__malloc_r+0x6c2>
    582e:	b8 51       	sub	r24, r10
    5830:	d7 51       	add	r23, r10
    5832:	8a 56 01 00 	ori	1, r10, r10
    5836:	36 5f cd ac 	ld.w	-21300[r22], r11
    583a:	7a c7 09 00 	st.w	r24, 8[r26]
    583e:	d7 59       	add	r23, r11
    5840:	76 5f cd ac 	st.w	r11, -21300[r22]
    5844:	78 57 05 00 	st.w	r10, 4[r24]
    5848:	fa e9       	cmp	r26, r29
    584a:	a2 1d       	be	587e <__malloc_r+0x3ca>
    584c:	6f ca       	cmp	15, r25
    584e:	bb 05       	bh	5854 <__malloc_r+0x3a0>
    5850:	80 07 60 02 	jr	5ab0 <__malloc_r+0x5fc>
    5854:	3d 57 05 00 	ld.w	4[r29], r10
    5858:	54 ca       	add	-12, r25
    585a:	18 82       	mov	-8, r16
    585c:	50 c9       	and	r16, r25
    585e:	ca 56 01 00 	andi	1, r10, r10
    5862:	19 51       	or	r25, r10
    5864:	7d 57 05 00 	st.w	r10, 4[r29]
    5868:	1d 50       	mov	r29, r10
    586a:	d9 51       	add	r25, r10
    586c:	05 62       	mov	5, r12
    586e:	6a 67 05 00 	st.w	r12, 4[r10]
    5872:	6a 67 09 00 	st.w	r12, 8[r10]
    5876:	6f ca       	cmp	15, r25
    5878:	b3 05       	bnh	587e <__malloc_r+0x3ca>
    587a:	80 07 da 02 	jr	5b54 <__malloc_r+0x6a0>
    587e:	40 56 01 00 	movhi	1, r0, r10
    5882:	2a 67 f9 ac 	ld.w	-21256[r10], r12
    5886:	ec 59       	cmp	r12, r11
    5888:	b3 05       	bnh	588e <__malloc_r+0x3da>
    588a:	6a 5f f9 ac 	st.w	r11, -21256[r10]
    588e:	40 56 01 00 	movhi	1, r0, r10
    5892:	2a 67 f5 ac 	ld.w	-21260[r10], r12
    5896:	3a ef 09 00 	ld.w	8[r26], r29
    589a:	ec 59       	cmp	r12, r11
    589c:	bb 05       	bh	58a2 <__malloc_r+0x3ee>
    589e:	80 07 58 02 	jr	5af6 <__malloc_r+0x642>
    58a2:	6a 5f f5 ac 	st.w	r11, -21260[r10]
    58a6:	3d 5f 05 00 	ld.w	4[r29], r11
    58aa:	1c 62       	mov	-4, r12
    58ac:	4c 59       	and	r12, r11
    58ae:	0b 50       	mov	r11, r10
    58b0:	bc 51       	sub	r28, r10
    58b2:	fc 59       	cmp	r28, r11
    58b4:	b1 05       	bl	58ba <__malloc_r+0x406>
    58b6:	6f 52       	cmp	15, r10
    58b8:	ff 05       	bgt	58c6 <__malloc_r+0x412>
    58ba:	1b 30       	mov	r27, r6
    58bc:	80 ff 68 03 	jarl	5c24 <___malloc_unlock>, lp
    58c0:	00 52       	mov	0, r10
    58c2:	bf 07 98 fc 	jr	555a <__malloc_r+0xa6>
    58c6:	9c 5e 01 00 	ori	1, r28, r11
    58ca:	8a 56 01 00 	ori	1, r10, r10
    58ce:	7d 5f 05 00 	st.w	r11, 4[r29]
    58d2:	dd e1       	add	r29, r28
    58d4:	1b 30       	mov	r27, r6
    58d6:	7c 57 05 00 	st.w	r10, 4[r28]
    58da:	7a e7 09 00 	st.w	r28, 8[r26]
    58de:	80 ff 46 03 	jarl	5c24 <___malloc_unlock>, lp
    58e2:	1d 56 08 00 	addi	8, r29, r10
    58e6:	bf 07 74 fc 	jr	555a <__malloc_r+0xa6>
    58ea:	20 56 14 00 	movea	20, r0, r10
    58ee:	ea 71       	cmp	r10, r14
    58f0:	bb 05       	bh	58f6 <__malloc_r+0x442>
    58f2:	80 07 58 01 	jr	5a4a <__malloc_r+0x596>
    58f6:	20 56 54 00 	movea	84, r0, r10
    58fa:	ea 71       	cmp	r10, r14
    58fc:	b3 05       	bnh	5902 <__malloc_r+0x44e>
    58fe:	80 07 92 01 	jr	5a90 <__malloc_r+0x5dc>
    5902:	1c 70       	mov	r28, r14
    5904:	8c 72       	shr	12, r14
    5906:	0e 76 6e 00 	addi	110, r14, r14
    590a:	0e 60       	mov	r14, r12
    590c:	ce 61       	add	r14, r12
    590e:	bf 07 ae fc 	jr	55bc <__malloc_r+0x108>
    5912:	0d 50       	mov	r13, r10
    5914:	89 52       	shr	9, r10
    5916:	64 52       	cmp	4, r10
    5918:	bb 05       	bh	591e <__malloc_r+0x46a>
    591a:	80 07 3c 01 	jr	5a56 <__malloc_r+0x5a2>
    591e:	20 5e 14 00 	movea	20, r0, r11
    5922:	eb 51       	cmp	r11, r10
    5924:	b3 05       	bnh	592a <__malloc_r+0x476>
    5926:	80 07 dc 01 	jr	5b02 <__malloc_r+0x64e>
    592a:	0a 66 5b 00 	addi	91, r10, r12
    592e:	0c 50       	mov	r12, r10
    5930:	cc 51       	add	r12, r10
    5932:	40 86 01 00 	movhi	1, r0, r16
    5936:	c2 52       	shl	2, r10
    5938:	30 86 b0 a8 	movea	-22352, r16, r16
    593c:	d0 51       	add	r16, r10
    593e:	2a 5f 09 00 	ld.w	8[r10], r11
    5942:	ea 59       	cmp	r10, r11
    5944:	ba 05       	bne	594a <__malloc_r+0x496>
    5946:	80 07 78 01 	jr	5abe <__malloc_r+0x60a>
    594a:	2b 67 05 00 	ld.w	4[r11], r12
    594e:	1c 82       	mov	-4, r16
    5950:	50 61       	and	r16, r12
    5952:	ec 69       	cmp	r12, r13
    5954:	d9 05       	bnl	595e <__malloc_r+0x4aa>
    5956:	2b 5f 09 00 	ld.w	8[r11], r11
    595a:	eb 51       	cmp	r11, r10
    595c:	fa f5       	bne	594a <__malloc_r+0x496>
    595e:	2b 67 0d 00 	ld.w	12[r11], r12
    5962:	3a 57 05 00 	ld.w	4[r26], r10
    5966:	7d 67 0d 00 	st.w	r12, 12[r29]
    596a:	7d 5f 09 00 	st.w	r11, 8[r29]
    596e:	6c ef 09 00 	st.w	r29, 8[r12]
    5972:	6b ef 0d 00 	st.w	r29, 12[r11]
    5976:	bf 07 22 fd 	jr	5698 <__malloc_r+0x1e4>
    597a:	1d 58       	mov	r29, r11
    597c:	dc 59       	add	r28, r11
    597e:	0b 60       	mov	r11, r12
    5980:	9c e6 01 00 	ori	1, r28, r28
    5984:	8a 6e 01 00 	ori	1, r10, r13
    5988:	ca 61       	add	r10, r12
    598a:	7d e7 05 00 	st.w	r28, 4[r29]
    598e:	7a 5f 15 00 	st.w	r11, 20[r26]
    5992:	7a 5f 11 00 	st.w	r11, 16[r26]
    5996:	1b 30       	mov	r27, r6
    5998:	6c 57 01 00 	st.w	r10, 0[r12]
    599c:	6b 7f 0d 00 	st.w	r15, 12[r11]
    59a0:	6b 7f 09 00 	st.w	r15, 8[r11]
    59a4:	6b 6f 05 00 	st.w	r13, 4[r11]
    59a8:	80 ff 7c 02 	jarl	5c24 <___malloc_unlock>, lp
    59ac:	1d 56 08 00 	addi	8, r29, r10
    59b0:	bf 07 aa fb 	jr	555a <__malloc_r+0xa6>
    59b4:	3a 57 05 00 	ld.w	4[r26], r10
    59b8:	bf 07 e0 fc 	jr	5698 <__malloc_r+0x1e4>
    59bc:	41 8a       	add	1, r17
    59be:	d1 56 03 00 	andi	3, r17, r10
    59c2:	48 6a       	add	8, r13
    59c4:	60 52       	cmp	0, r10
    59c6:	b2 05       	be	59cc <__malloc_r+0x518>
    59c8:	bf 07 0c fd 	jr	56d4 <__malloc_r+0x220>
    59cc:	ce 5e 03 00 	andi	3, r14, r11
    59d0:	10 56 f8 ff 	addi	-8, r16, r10
    59d4:	60 5a       	cmp	0, r11
    59d6:	ba 05       	bne	59dc <__malloc_r+0x528>
    59d8:	80 07 d6 01 	jr	5bae <__malloc_r+0x6fa>
    59dc:	30 87 01 00 	ld.w	0[r16], r16
    59e0:	5f 72       	add	-1, r14
    59e2:	ea 81       	cmp	r10, r16
    59e4:	c2 f5       	be	59cc <__malloc_r+0x518>
    59e6:	3a 57 05 00 	ld.w	4[r26], r10
    59ea:	cc 61       	add	r12, r12
    59ec:	ea 61       	cmp	r10, r12
    59ee:	b3 05       	bnh	59f4 <__malloc_r+0x540>
    59f0:	bf 07 7a fd 	jr	576a <__malloc_r+0x2b6>
    59f4:	60 62       	cmp	0, r12
    59f6:	ba 05       	bne	59fc <__malloc_r+0x548>
    59f8:	bf 07 72 fd 	jr	576a <__malloc_r+0x2b6>
    59fc:	0a 58       	mov	r10, r11
    59fe:	4c 59       	and	r12, r11
    5a00:	f2 3d       	be	5a7e <__malloc_r+0x5ca>
    5a02:	11 70       	mov	r17, r14
    5a04:	bf 07 bc fc 	jr	56c0 <__malloc_r+0x20c>
    5a08:	1d 56 08 00 	addi	8, r29, r10
    5a0c:	3d ef 15 00 	ld.w	20[r29], r29
    5a10:	fd 51       	cmp	r29, r10
    5a12:	b2 05       	be	5a18 <__malloc_r+0x564>
    5a14:	bf 07 16 fb 	jr	552a <__malloc_r+0x76>
    5a18:	42 72       	add	2, r14
    5a1a:	bf 07 fe fb 	jr	5618 <__malloc_r+0x164>
    5a1e:	dd 51       	add	r29, r10
    5a20:	2a 6f 05 00 	ld.w	4[r10], r13
    5a24:	3d 5f 0d 00 	ld.w	12[r29], r11
    5a28:	3d 67 09 00 	ld.w	8[r29], r12
    5a2c:	8d 6e 01 00 	ori	1, r13, r13
    5a30:	1b 30       	mov	r27, r6
    5a32:	6a 6f 05 00 	st.w	r13, 4[r10]
    5a36:	6c 5f 0d 00 	st.w	r11, 12[r12]
    5a3a:	6b 67 09 00 	st.w	r12, 8[r11]
    5a3e:	80 ff e6 01 	jarl	5c24 <___malloc_unlock>, lp
    5a42:	1d 56 08 00 	addi	8, r29, r10
    5a46:	bf 07 14 fb 	jr	555a <__malloc_r+0xa6>
    5a4a:	0e 76 5b 00 	addi	91, r14, r14
    5a4e:	0e 60       	mov	r14, r12
    5a50:	ce 61       	add	r14, r12
    5a52:	bf 07 6a fb 	jr	55bc <__malloc_r+0x108>
    5a56:	0d 60       	mov	r13, r12
    5a58:	86 62       	shr	6, r12
    5a5a:	0c 66 38 00 	addi	56, r12, r12
    5a5e:	0c 50       	mov	r12, r10
    5a60:	cc 51       	add	r12, r10
    5a62:	bf 07 d0 fe 	jr	5932 <__malloc_r+0x47e>
    5a66:	fa e9       	cmp	r26, r29
    5a68:	ba 05       	bne	5a6e <__malloc_r+0x5ba>
    5a6a:	bf 07 6a fd 	jr	57d4 <__malloc_r+0x320>
    5a6e:	3a ef 09 00 	ld.w	8[r26], r29
    5a72:	1c 62       	mov	-4, r12
    5a74:	3d 5f 05 00 	ld.w	4[r29], r11
    5a78:	4c 59       	and	r12, r11
    5a7a:	bf 07 34 fe 	jr	58ae <__malloc_r+0x3fa>
    5a7e:	cc 61       	add	r12, r12
    5a80:	0a 58       	mov	r10, r11
    5a82:	4c 59       	and	r12, r11
    5a84:	44 8a       	add	4, r17
    5a86:	60 5a       	cmp	0, r11
    5a88:	b2 fd       	be	5a7e <__malloc_r+0x5ca>
    5a8a:	11 70       	mov	r17, r14
    5a8c:	bf 07 34 fc 	jr	56c0 <__malloc_r+0x20c>
    5a90:	20 56 54 01 	movea	340, r0, r10
    5a94:	ea 71       	cmp	r10, r14
    5a96:	8b 25       	bh	5ad6 <__malloc_r+0x622>
    5a98:	1c 70       	mov	r28, r14
    5a9a:	8f 72       	shr	15, r14
    5a9c:	0e 76 77 00 	addi	119, r14, r14
    5aa0:	0e 60       	mov	r14, r12
    5aa2:	ce 61       	add	r14, r12
    5aa4:	bf 07 18 fb 	jr	55bc <__malloc_r+0x108>
    5aa8:	20 56 00 10 	movea	4096, r0, r10
    5aac:	bf 07 66 fd 	jr	5812 <__malloc_r+0x35e>
    5ab0:	01 52       	mov	1, r10
    5ab2:	78 57 05 00 	st.w	r10, 4[r24]
    5ab6:	18 e8       	mov	r24, r29
    5ab8:	00 5a       	mov	0, r11
    5aba:	bf 07 f4 fd 	jr	58ae <__malloc_r+0x3fa>
    5abe:	3a 6f 05 00 	ld.w	4[r26], r13
    5ac2:	a2 62       	sar	2, r12
    5ac4:	01 52       	mov	1, r10
    5ac6:	ec 57 c0 00 	shl	r12, r10
    5aca:	0d 51       	or	r13, r10
    5acc:	7a 57 05 00 	st.w	r10, 4[r26]
    5ad0:	0b 60       	mov	r11, r12
    5ad2:	bf 07 94 fe 	jr	5966 <__malloc_r+0x4b2>
    5ad6:	20 56 54 05 	movea	1364, r0, r10
    5ada:	ea 71       	cmp	r10, r14
    5adc:	eb 35       	bh	5b48 <__malloc_r+0x694>
    5ade:	1c 70       	mov	r28, r14
    5ae0:	92 72       	shr	18, r14
    5ae2:	0e 76 7c 00 	addi	124, r14, r14
    5ae6:	0e 60       	mov	r14, r12
    5ae8:	ce 61       	add	r14, r12
    5aea:	bf 07 d2 fa 	jr	55bc <__malloc_r+0x108>
    5aee:	17 be 10 00 	addi	16, r23, r23
    5af2:	bf 07 bc fc 	jr	57ae <__malloc_r+0x2fa>
    5af6:	3d 5f 05 00 	ld.w	4[r29], r11
    5afa:	1c 52       	mov	-4, r10
    5afc:	4a 59       	and	r10, r11
    5afe:	bf 07 b0 fd 	jr	58ae <__malloc_r+0x3fa>
    5b02:	20 5e 54 00 	movea	84, r0, r11
    5b06:	eb 51       	cmp	r11, r10
    5b08:	bb 3d       	bh	5b7e <__malloc_r+0x6ca>
    5b0a:	0d 60       	mov	r13, r12
    5b0c:	8c 62       	shr	12, r12
    5b0e:	0c 66 6e 00 	addi	110, r12, r12
    5b12:	0c 50       	mov	r12, r10
    5b14:	cc 51       	add	r12, r10
    5b16:	bf 07 1c fe 	jr	5932 <__malloc_r+0x47e>
    5b1a:	3a ef 09 00 	ld.w	8[r26], r29
    5b1e:	1c 52       	mov	-4, r10
    5b20:	3d 5f 05 00 	ld.w	4[r29], r11
    5b24:	4a 59       	and	r10, r11
    5b26:	bf 07 88 fd 	jr	58ae <__malloc_r+0x3fa>
    5b2a:	d5 56 ff 0f 	andi	4095, r21, r10
    5b2e:	b2 05       	be	5b34 <__malloc_r+0x680>
    5b30:	bf 07 ba fc 	jr	57ea <__malloc_r+0x336>
    5b34:	17 60       	mov	r23, r12
    5b36:	3a 57 09 00 	ld.w	8[r26], r10
    5b3a:	d9 61       	add	r25, r12
    5b3c:	8c 66 01 00 	ori	1, r12, r12
    5b40:	6a 67 05 00 	st.w	r12, 4[r10]
    5b44:	bf 07 3a fd 	jr	587e <__malloc_r+0x3ca>
    5b48:	20 66 fc 00 	movea	252, r0, r12
    5b4c:	20 76 7e 00 	movea	126, r0, r14
    5b50:	bf 07 6c fa 	jr	55bc <__malloc_r+0x108>
    5b54:	1b 30       	mov	r27, r6
    5b56:	1d 3e 08 00 	addi	8, r29, r7
    5b5a:	bf ff c6 f3 	jarl	4f20 <__free_r>, lp
    5b5e:	40 56 01 00 	movhi	1, r0, r10
    5b62:	2a 5f cd ac 	ld.w	-21300[r10], r11
    5b66:	bf 07 18 fd 	jr	587e <__malloc_r+0x3ca>
    5b6a:	40 56 01 00 	movhi	1, r0, r10
    5b6e:	6a c7 a9 a8 	st.w	r24, -22360[r10]
    5b72:	bf 07 8c fc 	jr	57fe <__malloc_r+0x34a>
    5b76:	01 52       	mov	1, r10
    5b78:	00 ba       	mov	0, r23
    5b7a:	bf 07 bc fc 	jr	5836 <__malloc_r+0x382>
    5b7e:	20 5e 54 01 	movea	340, r0, r11
    5b82:	eb 51       	cmp	r11, r10
    5b84:	9b 0d       	bh	5b96 <__malloc_r+0x6e2>
    5b86:	0d 60       	mov	r13, r12
    5b88:	8f 62       	shr	15, r12
    5b8a:	0c 66 77 00 	addi	119, r12, r12
    5b8e:	0c 50       	mov	r12, r10
    5b90:	cc 51       	add	r12, r10
    5b92:	bf 07 a0 fd 	jr	5932 <__malloc_r+0x47e>
    5b96:	20 5e 54 05 	movea	1364, r0, r11
    5b9a:	eb 51       	cmp	r11, r10
    5b9c:	9b 15       	bh	5bbe <__malloc_r+0x70a>
    5b9e:	0d 60       	mov	r13, r12
    5ba0:	92 62       	shr	18, r12
    5ba2:	0c 66 7c 00 	addi	124, r12, r12
    5ba6:	0c 50       	mov	r12, r10
    5ba8:	cc 51       	add	r12, r10
    5baa:	bf 07 88 fd 	jr	5932 <__malloc_r+0x47e>
    5bae:	3a 5f 05 00 	ld.w	4[r26], r11
    5bb2:	2c 50       	not	r12, r10
    5bb4:	4b 51       	and	r11, r10
    5bb6:	7a 57 05 00 	st.w	r10, 4[r26]
    5bba:	bf 07 30 fe 	jr	59ea <__malloc_r+0x536>
    5bbe:	20 56 fc 00 	movea	252, r0, r10
    5bc2:	20 66 7e 00 	movea	126, r0, r12
    5bc6:	bf 07 6c fd 	jr	5932 <__malloc_r+0x47e>
	...

00005bcc <_memchr>:
    5bcc:	c7 3e ff 00 	andi	255, r7, r7
    5bd0:	60 42       	cmp	0, r8
    5bd2:	c2 15       	be	5bfa <_memchr+0x2e>
    5bd4:	06 57 00 00 	ld.b	0[r6], r10
    5bd8:	ca 56 ff 00 	andi	255, r10, r10
    5bdc:	e7 51       	cmp	r7, r10
    5bde:	82 15       	be	5bfe <_memchr+0x32>
    5be0:	5e 42       	add	-2, r8
    5be2:	06 50       	mov	r6, r10
    5be4:	85 0d       	br	5bf4 <_memchr+0x28>
    5be6:	0a 5f 00 00 	ld.b	0[r10], r11
    5bea:	5f 42       	add	-1, r8
    5bec:	cb 5e ff 00 	andi	255, r11, r11
    5bf0:	e7 59       	cmp	r7, r11
    5bf2:	d2 05       	be	5bfc <_memchr+0x30>
    5bf4:	41 52       	add	1, r10
    5bf6:	7f 42       	cmp	-1, r8
    5bf8:	fa f5       	bne	5be6 <_memchr+0x1a>
    5bfa:	00 52       	mov	0, r10
    5bfc:	7f 00       	jmp	[lp]
    5bfe:	06 50       	mov	r6, r10
    5c00:	7f 00       	jmp	[lp]
	...

00005c04 <_memcpy>:
    5c04:	06 50       	mov	r6, r10
    5c06:	60 42       	cmp	0, r8
    5c08:	b2 0d       	be	5c1e <_memcpy+0x1a>
    5c0a:	c6 41       	add	r6, r8
    5c0c:	06 58       	mov	r6, r11
    5c0e:	07 67 00 00 	ld.b	0[r7], r12
    5c12:	41 3a       	add	1, r7
    5c14:	4b 67 00 00 	st.b	r12, 0[r11]
    5c18:	41 5a       	add	1, r11
    5c1a:	e8 59       	cmp	r8, r11
    5c1c:	9a fd       	bne	5c0e <_memcpy+0xa>
    5c1e:	7f 00       	jmp	[lp]

00005c20 <___malloc_lock>:
    5c20:	7f 00       	jmp	[lp]
	...

00005c24 <___malloc_unlock>:
    5c24:	7f 00       	jmp	[lp]
	...

00005c28 <__Balloc>:
    5c28:	50 1a       	add	-16, sp
    5c2a:	63 e7 05 00 	st.w	r28, 4[sp]
    5c2e:	63 ef 01 00 	st.w	r29, 0[sp]
    5c32:	63 ff 0d 00 	st.w	lp, 12[sp]
    5c36:	63 df 09 00 	st.w	r27, 8[sp]
    5c3a:	26 57 4d 00 	ld.w	76[r6], r10
    5c3e:	06 e8       	mov	r6, r29
    5c40:	07 e0       	mov	r7, r28
    5c42:	60 52       	cmp	0, r10
    5c44:	a2 15       	be	5c68 <__Balloc+0x40>
    5c46:	1c 58       	mov	r28, r11
    5c48:	c2 5a       	shl	2, r11
    5c4a:	ca 59       	add	r10, r11
    5c4c:	2b 57 01 00 	ld.w	0[r11], r10
    5c50:	60 52       	cmp	0, r10
    5c52:	e2 15       	be	5c7e <__Balloc+0x56>
    5c54:	2a 67 01 00 	ld.w	0[r10], r12
    5c58:	6b 67 01 00 	st.w	r12, 0[r11]
    5c5c:	6a 07 11 00 	st.w	r0, 16[r10]
    5c60:	6a 07 0d 00 	st.w	r0, 12[r10]
    5c64:	80 07 a0 31 	jr	8e04 <__return_r27_r31>
    5c68:	04 3a       	mov	4, r7
    5c6a:	20 46 21 00 	movea	33, r0, r8
    5c6e:	80 ff 0e 1c 	jarl	787c <__calloc_r>, lp
    5c72:	7d 57 4d 00 	st.w	r10, 76[r29]
    5c76:	60 52       	cmp	0, r10
    5c78:	fa e5       	bne	5c46 <__Balloc+0x1e>
    5c7a:	00 52       	mov	0, r10
    5c7c:	c5 f5       	br	5c64 <__Balloc+0x3c>
    5c7e:	01 3a       	mov	1, r7
    5c80:	07 d8       	mov	r7, r27
    5c82:	fc df c0 00 	shl	r28, r27
    5c86:	1b 46 05 00 	addi	5, r27, r8
    5c8a:	1d 30       	mov	r29, r6
    5c8c:	c2 42       	shl	2, r8
    5c8e:	80 ff ee 1b 	jarl	787c <__calloc_r>, lp
    5c92:	60 52       	cmp	0, r10
    5c94:	b2 f5       	be	5c7a <__Balloc+0x52>
    5c96:	6a e7 05 00 	st.w	r28, 4[r10]
    5c9a:	6a df 09 00 	st.w	r27, 8[r10]
    5c9e:	f5 dd       	br	5c5c <__Balloc+0x34>

00005ca0 <__Bfree>:
    5ca0:	60 3a       	cmp	0, r7
    5ca2:	d2 0d       	be	5cbc <__Bfree+0x1c>
    5ca4:	27 5f 05 00 	ld.w	4[r7], r11
    5ca8:	26 57 4d 00 	ld.w	76[r6], r10
    5cac:	c2 5a       	shl	2, r11
    5cae:	cb 51       	add	r11, r10
    5cb0:	2a 5f 01 00 	ld.w	0[r10], r11
    5cb4:	67 5f 01 00 	st.w	r11, 0[r7]
    5cb8:	6a 3f 01 00 	st.w	r7, 0[r10]
    5cbc:	7f 00       	jmp	[lp]
	...

00005cc0 <___multadd>:
    5cc0:	03 1e d8 ff 	addi	-40, sp, sp
    5cc4:	63 af 21 00 	st.w	r21, 32[sp]
    5cc8:	63 b7 1d 00 	st.w	r22, 28[sp]
    5ccc:	63 c7 15 00 	st.w	r24, 20[sp]
    5cd0:	63 cf 11 00 	st.w	r25, 16[sp]
    5cd4:	63 df 09 00 	st.w	r27, 8[sp]
    5cd8:	63 e7 05 00 	st.w	r28, 4[sp]
    5cdc:	63 ef 01 00 	st.w	r29, 0[sp]
    5ce0:	63 ff 25 00 	st.w	lp, 36[sp]
    5ce4:	63 bf 19 00 	st.w	r23, 24[sp]
    5ce8:	63 d7 0d 00 	st.w	r26, 12[sp]
    5cec:	40 ce 01 00 	movhi	1, r0, r25
    5cf0:	27 bf 11 00 	ld.w	16[r7], r23
    5cf4:	07 b0       	mov	r7, r22
    5cf6:	06 a8       	mov	r6, r21
    5cf8:	08 c0       	mov	r8, r24
    5cfa:	09 d8       	mov	r9, r27
    5cfc:	07 ee 14 00 	addi	20, r7, r29
    5d00:	00 e2       	mov	0, r28
    5d02:	39 ce 18 8b 	movea	-29928, r25, r25
    5d06:	3d d7 01 00 	ld.w	0[r29], r26
    5d0a:	18 38       	mov	r24, r7
    5d0c:	da 36 ff ff 	andi	65535, r26, r6
    5d10:	80 ff 04 00 	jarl	5d14 <___multadd+0x54>, lp
    5d14:	44 fa       	add	4, lp
    5d16:	79 00       	jmp	[r25]
    5d18:	1a 30       	mov	r26, r6
    5d1a:	90 32       	shr	16, r6
    5d1c:	18 38       	mov	r24, r7
    5d1e:	ca d9       	add	r10, r27
    5d20:	80 ff 04 00 	jarl	5d24 <___multadd+0x64>, lp
    5d24:	44 fa       	add	4, lp
    5d26:	79 00       	jmp	[r25]
    5d28:	1b 60       	mov	r27, r12
    5d2a:	90 62       	shr	16, r12
    5d2c:	cc 51       	add	r12, r10
    5d2e:	0a 58       	mov	r10, r11
    5d30:	db de ff ff 	andi	65535, r27, r27
    5d34:	d0 5a       	shl	16, r11
    5d36:	db 59       	add	r27, r11
    5d38:	0a d0       	mov	r10, r26
    5d3a:	90 d2       	shr	16, r26
    5d3c:	7d 5f 01 00 	st.w	r11, 0[r29]
    5d40:	41 e2       	add	1, r28
    5d42:	1a d8       	mov	r26, r27
    5d44:	44 ea       	add	4, r29
    5d46:	fc b9       	cmp	r28, r23
    5d48:	ff dd       	bgt	5d06 <___multadd+0x46>
    5d4a:	60 d2       	cmp	0, r26
    5d4c:	e2 0d       	be	5d68 <___multadd+0xa8>
    5d4e:	36 57 09 00 	ld.w	8[r22], r10
    5d52:	ea b9       	cmp	r10, r23
    5d54:	de 0d       	bge	5d6e <___multadd+0xae>
    5d56:	17 56 05 00 	addi	5, r23, r10
    5d5a:	c2 52       	shl	2, r10
    5d5c:	d6 51       	add	r22, r10
    5d5e:	41 ba       	add	1, r23
    5d60:	6a d7 01 00 	st.w	r26, 0[r10]
    5d64:	76 bf 11 00 	st.w	r23, 16[r22]
    5d68:	16 50       	mov	r22, r10
    5d6a:	80 07 42 2f 	jr	8cac <__return_r21_r31>
    5d6e:	36 3f 05 00 	ld.w	4[r22], r7
    5d72:	15 30       	mov	r21, r6
    5d74:	41 3a       	add	1, r7
    5d76:	bf ff b2 fe 	jarl	5c28 <__Balloc>, lp
    5d7a:	36 47 11 00 	ld.w	16[r22], r8
    5d7e:	16 3e 0c 00 	addi	12, r22, r7
    5d82:	42 42       	add	2, r8
    5d84:	0a 36 0c 00 	addi	12, r10, r6
    5d88:	c2 42       	shl	2, r8
    5d8a:	0a e8       	mov	r10, r29
    5d8c:	bf ff 78 fe 	jarl	5c04 <_memcpy>, lp
    5d90:	36 6f 05 00 	ld.w	4[r22], r13
    5d94:	35 5f 4d 00 	ld.w	76[r21], r11
    5d98:	c2 6a       	shl	2, r13
    5d9a:	cd 59       	add	r13, r11
    5d9c:	2b 57 01 00 	ld.w	0[r11], r10
    5da0:	76 57 01 00 	st.w	r10, 0[r22]
    5da4:	6b b7 01 00 	st.w	r22, 0[r11]
    5da8:	1d b0       	mov	r29, r22
    5daa:	e5 d5       	br	5d56 <___multadd+0x96>

00005dac <___s2b>:
    5dac:	03 1e e0 ff 	addi	-32, sp, sp
    5db0:	63 e7 05 00 	st.w	r28, 4[sp]
    5db4:	63 ef 01 00 	st.w	r29, 0[sp]
    5db8:	06 e0       	mov	r6, r28
    5dba:	07 e8       	mov	r7, r29
    5dbc:	09 36 08 00 	addi	8, r9, r6
    5dc0:	09 3a       	mov	9, r7
    5dc2:	63 cf 11 00 	st.w	r25, 16[sp]
    5dc6:	63 d7 0d 00 	st.w	r26, 12[sp]
    5dca:	63 ff 1d 00 	st.w	lp, 28[sp]
    5dce:	63 bf 19 00 	st.w	r23, 24[sp]
    5dd2:	63 c7 15 00 	st.w	r24, 20[sp]
    5dd6:	63 df 09 00 	st.w	r27, 8[sp]
    5dda:	09 c8       	mov	r9, r25
    5ddc:	08 d0       	mov	r8, r26
    5dde:	80 ff 78 2d 	jarl	8b56 <___divsi3>, lp
    5de2:	61 52       	cmp	1, r10
    5de4:	d7 4d       	ble	5e7e <___s2b+0xd2>
    5de6:	01 5a       	mov	1, r11
    5de8:	00 3a       	mov	0, r7
    5dea:	cb 59       	add	r11, r11
    5dec:	41 3a       	add	1, r7
    5dee:	eb 51       	cmp	r11, r10
    5df0:	df fd       	bgt	5dea <___s2b+0x3e>
    5df2:	1c 30       	mov	r28, r6
    5df4:	bf ff 34 fe 	jarl	5c28 <__Balloc>, lp
    5df8:	23 5f 21 00 	ld.w	32[sp], r11
    5dfc:	6a 5f 15 00 	st.w	r11, 20[r10]
    5e00:	01 5a       	mov	1, r11
    5e02:	6a 5f 11 00 	st.w	r11, 16[r10]
    5e06:	69 d2       	cmp	9, r26
    5e08:	87 3d       	ble	5e78 <___s2b+0xcc>
    5e0a:	1d c0       	mov	r29, r24
    5e0c:	1d be 09 00 	addi	9, r29, r23
    5e10:	40 de 00 00 	movhi	0, r0, r27
    5e14:	da c1       	add	r26, r24
    5e16:	17 e8       	mov	r23, r29
    5e18:	3b de c0 5c 	movea	23744, r27, r27
    5e1c:	1d 5f 00 00 	ld.b	0[r29], r11
    5e20:	1c 30       	mov	r28, r6
    5e22:	0b 48       	mov	r11, r9
    5e24:	d8 4a       	shl	24, r9
    5e26:	b8 4a       	sar	24, r9
    5e28:	41 ea       	add	1, r29
    5e2a:	0a 38       	mov	r10, r7
    5e2c:	0a 42       	mov	10, r8
    5e2e:	09 4e d0 ff 	addi	-48, r9, r9
    5e32:	80 ff 04 00 	jarl	5e36 <___s2b+0x8a>, lp
    5e36:	44 fa       	add	4, lp
    5e38:	7b 00       	jmp	[r27]
    5e3a:	f8 e9       	cmp	r24, r29
    5e3c:	8a f5       	bne	5e1c <___s2b+0x70>
    5e3e:	17 e8       	mov	r23, r29
    5e40:	da e9       	add	r26, r29
    5e42:	58 ea       	add	-8, r29
    5e44:	fa c9       	cmp	r26, r25
    5e46:	f7 15       	ble	5e74 <___s2b+0xc8>
    5e48:	99 d1       	subr	r25, r26
    5e4a:	40 de 00 00 	movhi	0, r0, r27
    5e4e:	dd d1       	add	r29, r26
    5e50:	3b de c0 5c 	movea	23744, r27, r27
    5e54:	1d 4f 00 00 	ld.b	0[r29], r9
    5e58:	1c 30       	mov	r28, r6
    5e5a:	d8 4a       	shl	24, r9
    5e5c:	b8 4a       	sar	24, r9
    5e5e:	41 ea       	add	1, r29
    5e60:	0a 38       	mov	r10, r7
    5e62:	0a 42       	mov	10, r8
    5e64:	09 4e d0 ff 	addi	-48, r9, r9
    5e68:	80 ff 04 00 	jarl	5e6c <___s2b+0xc0>, lp
    5e6c:	44 fa       	add	4, lp
    5e6e:	7b 00       	jmp	[r27]
    5e70:	fa e9       	cmp	r26, r29
    5e72:	9a f5       	bne	5e54 <___s2b+0xa8>
    5e74:	80 07 90 2e 	jr	8d04 <__return_r23_r31>
    5e78:	4a ea       	add	10, r29
    5e7a:	09 d2       	mov	9, r26
    5e7c:	c5 e5       	br	5e44 <___s2b+0x98>
    5e7e:	00 3a       	mov	0, r7
    5e80:	95 bd       	br	5df2 <___s2b+0x46>
	...

00005e84 <___hi0bits>:
    5e84:	40 56 ff ff 	movhi	-1, r0, r10
    5e88:	46 51       	and	r6, r10
    5e8a:	fa 1d       	bne	5ec8 <___hi0bits+0x44>
    5e8c:	d0 32       	shl	16, r6
    5e8e:	20 56 10 00 	movea	16, r0, r10
    5e92:	40 5e 00 ff 	movhi	-256, r0, r11
    5e96:	46 59       	and	r6, r11
    5e98:	ba 05       	bne	5e9e <___hi0bits+0x1a>
    5e9a:	48 52       	add	8, r10
    5e9c:	c8 32       	shl	8, r6
    5e9e:	40 5e 00 f0 	movhi	-4096, r0, r11
    5ea2:	46 59       	and	r6, r11
    5ea4:	ba 05       	bne	5eaa <___hi0bits+0x26>
    5ea6:	44 52       	add	4, r10
    5ea8:	c4 32       	shl	4, r6
    5eaa:	40 5e 00 c0 	movhi	-16384, r0, r11
    5eae:	46 59       	and	r6, r11
    5eb0:	ba 05       	bne	5eb6 <___hi0bits+0x32>
    5eb2:	42 52       	add	2, r10
    5eb4:	c2 32       	shl	2, r6
    5eb6:	60 32       	cmp	0, r6
    5eb8:	f6 05       	blt	5ec6 <___hi0bits+0x42>
    5eba:	40 5e 00 40 	movhi	16384, r0, r11
    5ebe:	4b 31       	and	r11, r6
    5ec0:	ea 05       	bne	5ecc <___hi0bits+0x48>
    5ec2:	20 56 20 00 	movea	32, r0, r10
    5ec6:	7f 00       	jmp	[lp]
    5ec8:	00 52       	mov	0, r10
    5eca:	c5 e5       	br	5e92 <___hi0bits+0xe>
    5ecc:	41 52       	add	1, r10
    5ece:	7f 00       	jmp	[lp]

00005ed0 <___lo0bits>:
    5ed0:	26 5f 01 00 	ld.w	0[r6], r11
    5ed4:	cb 56 07 00 	andi	7, r11, r10
    5ed8:	c2 0d       	be	5ef0 <___lo0bits+0x20>
    5eda:	cb 56 01 00 	andi	1, r11, r10
    5ede:	ca 2d       	bne	5f36 <___lo0bits+0x66>
    5ee0:	cb 56 02 00 	andi	2, r11, r10
    5ee4:	ba 2d       	bne	5f3a <___lo0bits+0x6a>
    5ee6:	82 5a       	shr	2, r11
    5ee8:	66 5f 01 00 	st.w	r11, 0[r6]
    5eec:	02 52       	mov	2, r10
    5eee:	7f 00       	jmp	[lp]
    5ef0:	cb 56 ff ff 	andi	65535, r11, r10
    5ef4:	92 1d       	be	5f26 <___lo0bits+0x56>
    5ef6:	00 52       	mov	0, r10
    5ef8:	cb 66 ff 00 	andi	255, r11, r12
    5efc:	ba 05       	bne	5f02 <___lo0bits+0x32>
    5efe:	48 52       	add	8, r10
    5f00:	88 5a       	shr	8, r11
    5f02:	cb 66 0f 00 	andi	15, r11, r12
    5f06:	ba 05       	bne	5f0c <___lo0bits+0x3c>
    5f08:	44 52       	add	4, r10
    5f0a:	84 5a       	shr	4, r11
    5f0c:	cb 66 03 00 	andi	3, r11, r12
    5f10:	ba 05       	bne	5f16 <___lo0bits+0x46>
    5f12:	42 52       	add	2, r10
    5f14:	82 5a       	shr	2, r11
    5f16:	cb 66 01 00 	andi	1, r11, r12
    5f1a:	ba 0d       	bne	5f30 <___lo0bits+0x60>
    5f1c:	81 5a       	shr	1, r11
    5f1e:	8a 0d       	bne	5f2e <___lo0bits+0x5e>
    5f20:	20 56 20 00 	movea	32, r0, r10
    5f24:	7f 00       	jmp	[lp]
    5f26:	90 5a       	shr	16, r11
    5f28:	20 56 10 00 	movea	16, r0, r10
    5f2c:	e5 e5       	br	5ef8 <___lo0bits+0x28>
    5f2e:	41 52       	add	1, r10
    5f30:	66 5f 01 00 	st.w	r11, 0[r6]
    5f34:	7f 00       	jmp	[lp]
    5f36:	00 52       	mov	0, r10
    5f38:	7f 00       	jmp	[lp]
    5f3a:	81 5a       	shr	1, r11
    5f3c:	66 5f 01 00 	st.w	r11, 0[r6]
    5f40:	01 52       	mov	1, r10
    5f42:	7f 00       	jmp	[lp]

00005f44 <___i2b>:
    5f44:	58 1a       	add	-8, sp
    5f46:	63 ef 01 00 	st.w	r29, 0[sp]
    5f4a:	07 e8       	mov	r7, r29
    5f4c:	01 3a       	mov	1, r7
    5f4e:	63 ff 05 00 	st.w	lp, 4[sp]
    5f52:	bf ff d6 fc 	jarl	5c28 <__Balloc>, lp
    5f56:	01 62       	mov	1, r12
    5f58:	6a ef 15 00 	st.w	r29, 20[r10]
    5f5c:	6a 67 11 00 	st.w	r12, 16[r10]
    5f60:	bf 07 1a b5 	jr	147a <__return_r29_r31>

00005f64 <___multiply>:
    5f64:	03 1e bc ff 	addi	-68, sp, sp
    5f68:	63 b7 31 00 	st.w	r22, 48[sp]
    5f6c:	63 e7 19 00 	st.w	r28, 24[sp]
    5f70:	63 ef 15 00 	st.w	r29, 20[sp]
    5f74:	63 ff 41 00 	st.w	lp, 64[sp]
    5f78:	63 17 3d 00 	st.w	r2, 60[sp]
    5f7c:	63 a7 39 00 	st.w	r20, 56[sp]
    5f80:	63 af 35 00 	st.w	r21, 52[sp]
    5f84:	63 bf 2d 00 	st.w	r23, 44[sp]
    5f88:	63 c7 29 00 	st.w	r24, 40[sp]
    5f8c:	63 cf 25 00 	st.w	r25, 36[sp]
    5f90:	63 d7 21 00 	st.w	r26, 32[sp]
    5f94:	63 df 1d 00 	st.w	r27, 28[sp]
    5f98:	28 b7 11 00 	ld.w	16[r8], r22
    5f9c:	27 df 11 00 	ld.w	16[r7], r27
    5fa0:	07 e8       	mov	r7, r29
    5fa2:	08 e0       	mov	r8, r28
    5fa4:	f6 d9       	cmp	r22, r27
    5fa6:	ee 05       	bge	5fb2 <___multiply+0x4e>
    5fa8:	1b 58       	mov	r27, r11
    5faa:	08 e8       	mov	r8, r29
    5fac:	16 d8       	mov	r22, r27
    5fae:	07 e0       	mov	r7, r28
    5fb0:	0b b0       	mov	r11, r22
    5fb2:	1b 58       	mov	r27, r11
    5fb4:	d6 59       	add	r22, r11
    5fb6:	3d 57 09 00 	ld.w	8[r29], r10
    5fba:	63 5f 01 00 	st.w	r11, 0[sp]
    5fbe:	3d 3f 05 00 	ld.w	4[r29], r7
    5fc2:	ea 59       	cmp	r10, r11
    5fc4:	a7 05       	ble	5fc8 <___multiply+0x64>
    5fc6:	41 3a       	add	1, r7
    5fc8:	23 5f 01 00 	ld.w	0[sp], r11
    5fcc:	45 5a       	add	5, r11
    5fce:	63 5f 05 00 	st.w	r11, 4[sp]
    5fd2:	bf ff 56 fc 	jarl	5c28 <__Balloc>, lp
    5fd6:	23 5f 05 00 	ld.w	4[sp], r11
    5fda:	0a ce 14 00 	addi	20, r10, r25
    5fde:	c2 5a       	shl	2, r11
    5fe0:	63 57 11 00 	st.w	r10, 16[sp]
    5fe4:	cb 51       	add	r11, r10
    5fe6:	63 57 05 00 	st.w	r10, 4[sp]
    5fea:	23 5f 05 00 	ld.w	4[sp], r11
    5fee:	19 50       	mov	r25, r10
    5ff0:	eb c9       	cmp	r11, r25
    5ff2:	89 0d       	bnl	6002 <___multiply+0x9e>
    5ff4:	23 5f 05 00 	ld.w	4[sp], r11
    5ff8:	6a 07 01 00 	st.w	r0, 0[r10]
    5ffc:	44 52       	add	4, r10
    5ffe:	ea 59       	cmp	r10, r11
    6000:	ab fd       	bh	5ff4 <___multiply+0x90>
    6002:	45 b2       	add	5, r22
    6004:	16 58       	mov	r22, r11
    6006:	c2 5a       	shl	2, r11
    6008:	dc 59       	add	r28, r11
    600a:	63 5f 09 00 	st.w	r11, 8[sp]
    600e:	1d 5e 14 00 	addi	20, r29, r11
    6012:	45 da       	add	5, r27
    6014:	63 5f 0d 00 	st.w	r11, 12[sp]
    6018:	23 5f 09 00 	ld.w	8[sp], r11
    601c:	c2 da       	shl	2, r27
    601e:	1c d6 14 00 	addi	20, r28, r26
    6022:	dd d9       	add	r29, r27
    6024:	eb d1       	cmp	r11, r26
    6026:	a9 7d       	bnl	611a <___multiply+0x1b6>
    6028:	3a 57 01 00 	ld.w	0[r26], r10
    602c:	ca 16 ff ff 	andi	65535, r10, r2
    6030:	d2 35       	be	609a <___multiply+0x136>
    6032:	40 56 01 00 	movhi	1, r0, r10
    6036:	23 af 0d 00 	ld.w	12[sp], r21
    603a:	19 b8       	mov	r25, r23
    603c:	00 b2       	mov	0, r22
    603e:	2a ee 18 8b 	movea	-29928, r10, r29
    6042:	35 a7 01 00 	ld.w	0[r21], r20
    6046:	37 e7 01 00 	ld.w	0[r23], r28
    604a:	d4 36 ff ff 	andi	65535, r20, r6
    604e:	02 38       	mov	r2, r7
    6050:	80 ff 04 00 	jarl	6054 <___multiply+0xf0>, lp
    6054:	44 fa       	add	4, lp
    6056:	7d 00       	jmp	[r29]
    6058:	dc c6 ff ff 	andi	65535, r28, r24
    605c:	14 30       	mov	r20, r6
    605e:	ca c1       	add	r10, r24
    6060:	90 32       	shr	16, r6
    6062:	02 38       	mov	r2, r7
    6064:	80 ff 04 00 	jarl	6068 <___multiply+0x104>, lp
    6068:	44 fa       	add	4, lp
    606a:	7d 00       	jmp	[r29]
    606c:	d6 c1       	add	r22, r24
    606e:	90 e2       	shr	16, r28
    6070:	ca e1       	add	r10, r28
    6072:	18 50       	mov	r24, r10
    6074:	90 52       	shr	16, r10
    6076:	ca e1       	add	r10, r28
    6078:	1c 50       	mov	r28, r10
    607a:	d0 52       	shl	16, r10
    607c:	d8 5e ff ff 	andi	65535, r24, r11
    6080:	0b 51       	or	r11, r10
    6082:	77 57 01 00 	st.w	r10, 0[r23]
    6086:	1c b0       	mov	r28, r22
    6088:	44 aa       	add	4, r21
    608a:	90 b2       	shr	16, r22
    608c:	44 ba       	add	4, r23
    608e:	f5 d9       	cmp	r21, r27
    6090:	9b dd       	bh	6042 <___multiply+0xde>
    6092:	77 b7 01 00 	st.w	r22, 0[r23]
    6096:	3a 57 01 00 	ld.w	0[r26], r10
    609a:	0a 10       	mov	r10, r2
    609c:	90 12       	shr	16, r2
    609e:	82 3d       	be	610e <___multiply+0x1aa>
    60a0:	39 af 01 00 	ld.w	0[r25], r21
    60a4:	40 5e 01 00 	movhi	1, r0, r11
    60a8:	23 bf 0d 00 	ld.w	12[sp], r23
    60ac:	19 a0       	mov	r25, r20
    60ae:	15 e0       	mov	r21, r28
    60b0:	00 b2       	mov	0, r22
    60b2:	2b ee 18 8b 	movea	-29928, r11, r29
    60b6:	37 37 01 00 	ld.w	0[r23], r6
    60ba:	02 38       	mov	r2, r7
    60bc:	c6 36 ff ff 	andi	65535, r6, r6
    60c0:	1c c0       	mov	r28, r24
    60c2:	80 ff 04 00 	jarl	60c6 <___multiply+0x162>, lp
    60c6:	44 fa       	add	4, lp
    60c8:	7d 00       	jmp	[r29]
    60ca:	90 c2       	shr	16, r24
    60cc:	ca c1       	add	r10, r24
    60ce:	d6 c1       	add	r22, r24
    60d0:	18 50       	mov	r24, r10
    60d2:	d5 5e ff ff 	andi	65535, r21, r11
    60d6:	d0 52       	shl	16, r10
    60d8:	0b 51       	or	r11, r10
    60da:	74 57 01 00 	st.w	r10, 0[r20]
    60de:	37 37 01 00 	ld.w	0[r23], r6
    60e2:	44 a2       	add	4, r20
    60e4:	34 e7 01 00 	ld.w	0[r20], r28
    60e8:	90 32       	shr	16, r6
    60ea:	02 38       	mov	r2, r7
    60ec:	80 ff 04 00 	jarl	60f0 <___multiply+0x18c>, lp
    60f0:	44 fa       	add	4, lp
    60f2:	7d 00       	jmp	[r29]
    60f4:	dc ae ff ff 	andi	65535, r28, r21
    60f8:	18 60       	mov	r24, r12
    60fa:	ca a9       	add	r10, r21
    60fc:	90 62       	shr	16, r12
    60fe:	cc a9       	add	r12, r21
    6100:	15 b0       	mov	r21, r22
    6102:	44 ba       	add	4, r23
    6104:	90 b2       	shr	16, r22
    6106:	f7 d9       	cmp	r23, r27
    6108:	fb d5       	bh	60b6 <___multiply+0x152>
    610a:	74 af 01 00 	st.w	r21, 0[r20]
    610e:	23 5f 09 00 	ld.w	8[sp], r11
    6112:	44 d2       	add	4, r26
    6114:	44 ca       	add	4, r25
    6116:	fa 59       	cmp	r26, r11
    6118:	8b 8d       	bh	6028 <___multiply+0xc4>
    611a:	23 5f 01 00 	ld.w	0[sp], r11
    611e:	60 5a       	cmp	0, r11
    6120:	d7 15       	ble	614a <___multiply+0x1e6>
    6122:	23 5f 05 00 	ld.w	4[sp], r11
    6126:	2b 57 fd ff 	ld.w	-4[r11], r10
    612a:	0b b8       	mov	r11, r23
    612c:	5c ba       	add	-4, r23
    612e:	60 52       	cmp	0, r10
    6130:	e2 05       	be	613c <___multiply+0x1d8>
    6132:	c5 0d       	br	614a <___multiply+0x1e6>
    6134:	37 57 01 00 	ld.w	0[r23], r10
    6138:	60 52       	cmp	0, r10
    613a:	8a 0d       	bne	614a <___multiply+0x1e6>
    613c:	23 5f 01 00 	ld.w	0[sp], r11
    6140:	5c ba       	add	-4, r23
    6142:	5f 5a       	add	-1, r11
    6144:	63 5f 01 00 	st.w	r11, 0[sp]
    6148:	ea f5       	bne	6134 <___multiply+0x1d0>
    614a:	23 57 01 00 	ld.w	0[sp], r10
    614e:	23 5f 11 00 	ld.w	16[sp], r11
    6152:	6b 57 11 00 	st.w	r10, 16[r11]
    6156:	23 ff 41 00 	ld.w	64[sp], lp
    615a:	23 17 3d 00 	ld.w	60[sp], r2
    615e:	23 a7 39 00 	ld.w	56[sp], r20
    6162:	23 af 35 00 	ld.w	52[sp], r21
    6166:	23 b7 31 00 	ld.w	48[sp], r22
    616a:	23 bf 2d 00 	ld.w	44[sp], r23
    616e:	23 c7 29 00 	ld.w	40[sp], r24
    6172:	23 cf 25 00 	ld.w	36[sp], r25
    6176:	23 d7 21 00 	ld.w	32[sp], r26
    617a:	23 df 1d 00 	ld.w	28[sp], r27
    617e:	23 e7 19 00 	ld.w	24[sp], r28
    6182:	23 ef 15 00 	ld.w	20[sp], r29
    6186:	0b 50       	mov	r11, r10
    6188:	03 1e 44 00 	addi	68, sp, sp
    618c:	7f 00       	jmp	[lp]
	...

00006190 <___pow5mult>:
    6190:	03 1e ec ff 	addi	-20, sp, sp
    6194:	63 d7 0d 00 	st.w	r26, 12[sp]
    6198:	63 df 09 00 	st.w	r27, 8[sp]
    619c:	63 ef 01 00 	st.w	r29, 0[sp]
    61a0:	63 ff 11 00 	st.w	lp, 16[sp]
    61a4:	63 e7 05 00 	st.w	r28, 4[sp]
    61a8:	c8 56 03 00 	andi	3, r8, r10
    61ac:	08 e8       	mov	r8, r29
    61ae:	06 d0       	mov	r6, r26
    61b0:	07 d8       	mov	r7, r27
    61b2:	8a 3d       	bne	6222 <___pow5mult+0x92>
    61b4:	a2 ea       	sar	2, r29
    61b6:	e2 25       	be	6202 <___pow5mult+0x72>
    61b8:	3a e7 49 00 	ld.w	72[r26], r28
    61bc:	60 e2       	cmp	0, r28
    61be:	9a 0d       	bne	61d0 <___pow5mult+0x40>
    61c0:	e5 3d       	br	623c <___pow5mult+0xac>
    61c2:	a1 ea       	sar	1, r29
    61c4:	f2 1d       	be	6202 <___pow5mult+0x72>
    61c6:	3c 5f 01 00 	ld.w	0[r28], r11
    61ca:	60 5a       	cmp	0, r11
    61cc:	e2 1d       	be	6208 <___pow5mult+0x78>
    61ce:	0b e0       	mov	r11, r28
    61d0:	dd 5e 01 00 	andi	1, r29, r11
    61d4:	f2 f5       	be	61c2 <___pow5mult+0x32>
    61d6:	1b 38       	mov	r27, r7
    61d8:	1c 40       	mov	r28, r8
    61da:	1a 30       	mov	r26, r6
    61dc:	bf ff 88 fd 	jarl	5f64 <___multiply>, lp
    61e0:	60 da       	cmp	0, r27
    61e2:	e2 1d       	be	621e <___pow5mult+0x8e>
    61e4:	3b 67 05 00 	ld.w	4[r27], r12
    61e8:	3a 5f 4d 00 	ld.w	76[r26], r11
    61ec:	c2 62       	shl	2, r12
    61ee:	cc 59       	add	r12, r11
    61f0:	2b 67 01 00 	ld.w	0[r11], r12
    61f4:	a1 ea       	sar	1, r29
    61f6:	7b 67 01 00 	st.w	r12, 0[r27]
    61fa:	6b df 01 00 	st.w	r27, 0[r11]
    61fe:	0a d8       	mov	r10, r27
    6200:	ba e5       	bne	61c6 <___pow5mult+0x36>
    6202:	1b 50       	mov	r27, r10
    6204:	80 07 cc 2b 	jr	8dd0 <__return_r26_r31>
    6208:	1c 38       	mov	r28, r7
    620a:	1c 40       	mov	r28, r8
    620c:	1a 30       	mov	r26, r6
    620e:	bf ff 56 fd 	jarl	5f64 <___multiply>, lp
    6212:	7c 57 01 00 	st.w	r10, 0[r28]
    6216:	6a 07 01 00 	st.w	r0, 0[r10]
    621a:	0a e0       	mov	r10, r28
    621c:	a5 dd       	br	61d0 <___pow5mult+0x40>
    621e:	0a d8       	mov	r10, r27
    6220:	95 d5       	br	61c2 <___pow5mult+0x32>
    6222:	40 5e 01 00 	movhi	1, r0, r11
    6226:	2b 5e fc a0 	movea	-24324, r11, r11
    622a:	c2 52       	shl	2, r10
    622c:	cb 51       	add	r11, r10
    622e:	2a 47 01 00 	ld.w	0[r10], r8
    6232:	00 4a       	mov	0, r9
    6234:	bf ff 8c fa 	jarl	5cc0 <___multadd>, lp
    6238:	0a d8       	mov	r10, r27
    623a:	d5 bd       	br	61b4 <___pow5mult+0x24>
    623c:	1a 30       	mov	r26, r6
    623e:	20 3e 71 02 	movea	625, r0, r7
    6242:	bf ff 02 fd 	jarl	5f44 <___i2b>, lp
    6246:	7a 57 49 00 	st.w	r10, 72[r26]
    624a:	0a e0       	mov	r10, r28
    624c:	6a 07 01 00 	st.w	r0, 0[r10]
    6250:	85 c5       	br	61d0 <___pow5mult+0x40>
	...

00006254 <___lshift>:
    6254:	03 1e e4 ff 	addi	-28, sp, sp
    6258:	63 c7 15 00 	st.w	r24, 20[sp]
    625c:	63 cf 11 00 	st.w	r25, 16[sp]
    6260:	63 df 09 00 	st.w	r27, 8[sp]
    6264:	63 e7 05 00 	st.w	r28, 4[sp]
    6268:	63 ef 01 00 	st.w	r29, 0[sp]
    626c:	63 ff 19 00 	st.w	lp, 24[sp]
    6270:	63 d7 0d 00 	st.w	r26, 12[sp]
    6274:	08 e0       	mov	r8, r28
    6276:	27 d7 11 00 	ld.w	16[r7], r26
    627a:	a5 e2       	sar	5, r28
    627c:	dc d1       	add	r28, r26
    627e:	27 57 09 00 	ld.w	8[r7], r10
    6282:	1a ee 01 00 	addi	1, r26, r29
    6286:	07 d8       	mov	r7, r27
    6288:	08 c0       	mov	r8, r24
    628a:	06 c8       	mov	r6, r25
    628c:	27 3f 05 00 	ld.w	4[r7], r7
    6290:	ea e9       	cmp	r10, r29
    6292:	d7 05       	ble	629c <___lshift+0x48>
    6294:	ca 51       	add	r10, r10
    6296:	41 3a       	add	1, r7
    6298:	ea e9       	cmp	r10, r29
    629a:	df fd       	bgt	6294 <___lshift+0x40>
    629c:	19 30       	mov	r25, r6
    629e:	bf ff 8a f9 	jarl	5c28 <__Balloc>, lp
    62a2:	0a 5e 14 00 	addi	20, r10, r11
    62a6:	60 e2       	cmp	0, r28
    62a8:	c7 0d       	ble	62c0 <___lshift+0x6c>
    62aa:	00 62       	mov	0, r12
    62ac:	6b 07 01 00 	st.w	r0, 0[r11]
    62b0:	41 62       	add	1, r12
    62b2:	44 5a       	add	4, r11
    62b4:	fc 61       	cmp	r28, r12
    62b6:	ba fd       	bne	62ac <___lshift+0x58>
    62b8:	0c 5e 05 00 	addi	5, r12, r11
    62bc:	c2 5a       	shl	2, r11
    62be:	ca 59       	add	r10, r11
    62c0:	3b 7f 11 00 	ld.w	16[r27], r15
    62c4:	d8 46 1f 00 	andi	31, r24, r8
    62c8:	45 7a       	add	5, r15
    62ca:	c2 7a       	shl	2, r15
    62cc:	1b 66 14 00 	addi	20, r27, r12
    62d0:	db 79       	add	r27, r15
    62d2:	60 42       	cmp	0, r8
    62d4:	b2 2d       	be	632a <___lshift+0xd6>
    62d6:	20 86 20 00 	movea	32, r0, r16
    62da:	a8 81       	sub	r8, r16
    62dc:	00 72       	mov	0, r14
    62de:	2c 6f 01 00 	ld.w	0[r12], r13
    62e2:	e8 6f c0 00 	shl	r8, r13
    62e6:	0e 69       	or	r14, r13
    62e8:	6b 6f 01 00 	st.w	r13, 0[r11]
    62ec:	2c 77 01 00 	ld.w	0[r12], r14
    62f0:	44 62       	add	4, r12
    62f2:	44 5a       	add	4, r11
    62f4:	f0 77 80 00 	shr	r16, r14
    62f8:	ec 79       	cmp	r12, r15
    62fa:	ab f5       	bh	62de <___lshift+0x8a>
    62fc:	6b 77 01 00 	st.w	r14, 0[r11]
    6300:	60 72       	cmp	0, r14
    6302:	b2 05       	be	6308 <___lshift+0xb4>
    6304:	1a ee 02 00 	addi	2, r26, r29
    6308:	3b 67 05 00 	ld.w	4[r27], r12
    630c:	39 5f 4d 00 	ld.w	76[r25], r11
    6310:	c2 62       	shl	2, r12
    6312:	cc 59       	add	r12, r11
    6314:	2b 67 01 00 	ld.w	0[r11], r12
    6318:	5f ea       	add	-1, r29
    631a:	6a ef 11 00 	st.w	r29, 16[r10]
    631e:	7b 67 01 00 	st.w	r12, 0[r27]
    6322:	6b df 01 00 	st.w	r27, 0[r11]
    6326:	80 07 2a 2a 	jr	8d50 <__return_r24_r31>
    632a:	2c 6f 01 00 	ld.w	0[r12], r13
    632e:	44 62       	add	4, r12
    6330:	6b 6f 01 00 	st.w	r13, 0[r11]
    6334:	44 5a       	add	4, r11
    6336:	ec 79       	cmp	r12, r15
    6338:	83 ed       	bnh	6308 <___lshift+0xb4>
    633a:	2c 6f 01 00 	ld.w	0[r12], r13
    633e:	44 62       	add	4, r12
    6340:	6b 6f 01 00 	st.w	r13, 0[r11]
    6344:	44 5a       	add	4, r11
    6346:	ec 79       	cmp	r12, r15
    6348:	9b f5       	bh	632a <___lshift+0xd6>
    634a:	f5 dd       	br	6308 <___lshift+0xb4>

0000634c <___mcmp>:
    634c:	26 57 11 00 	ld.w	16[r6], r10
    6350:	27 5f 11 00 	ld.w	16[r7], r11
    6354:	ab 51       	sub	r11, r10
    6356:	9a 15       	bne	6378 <___mcmp+0x2c>
    6358:	45 5a       	add	5, r11
    635a:	c2 5a       	shl	2, r11
    635c:	06 6e 14 00 	addi	20, r6, r13
    6360:	cb 39       	add	r11, r7
    6362:	cb 31       	add	r11, r6
    6364:	5c 32       	add	-4, r6
    6366:	5c 3a       	add	-4, r7
    6368:	26 5f 01 00 	ld.w	0[r6], r11
    636c:	27 67 01 00 	ld.w	0[r7], r12
    6370:	ec 59       	cmp	r12, r11
    6372:	ca 05       	bne	637a <___mcmp+0x2e>
    6374:	e6 69       	cmp	r6, r13
    6376:	f1 f5       	bl	6364 <___mcmp+0x18>
    6378:	7f 00       	jmp	[lp]
    637a:	eb 61       	cmp	r11, r12
    637c:	bb 05       	bh	6382 <___mcmp+0x36>
    637e:	01 52       	mov	1, r10
    6380:	7f 00       	jmp	[lp]
    6382:	1f 52       	mov	-1, r10
    6384:	7f 00       	jmp	[lp]
	...

00006388 <___mdiff>:
    6388:	03 1e ec ff 	addi	-20, sp, sp
    638c:	63 ef 01 00 	st.w	r29, 0[sp]
    6390:	07 e8       	mov	r7, r29
    6392:	63 d7 0d 00 	st.w	r26, 12[sp]
    6396:	08 38       	mov	r8, r7
    6398:	06 d0       	mov	r6, r26
    639a:	1d 30       	mov	r29, r6
    639c:	63 e7 05 00 	st.w	r28, 4[sp]
    63a0:	63 ff 11 00 	st.w	lp, 16[sp]
    63a4:	63 df 09 00 	st.w	r27, 8[sp]
    63a8:	08 e0       	mov	r8, r28
    63aa:	bf ff a2 ff 	jarl	634c <___mcmp>, lp
    63ae:	60 52       	cmp	0, r10
    63b0:	b2 6d       	be	6486 <___mdiff+0xfe>
    63b2:	d6 65       	blt	647c <___mdiff+0xf4>
    63b4:	00 da       	mov	0, r27
    63b6:	3d 3f 05 00 	ld.w	4[r29], r7
    63ba:	1a 30       	mov	r26, r6
    63bc:	bf ff 6c f8 	jarl	5c28 <__Balloc>, lp
    63c0:	3d 8f 11 00 	ld.w	16[r29], r17
    63c4:	3c 4f 11 00 	ld.w	16[r28], r9
    63c8:	11 9e 05 00 	addi	5, r17, r19
    63cc:	45 4a       	add	5, r9
    63ce:	c2 9a       	shl	2, r19
    63d0:	c2 4a       	shl	2, r9
    63d2:	1d 66 14 00 	addi	20, r29, r12
    63d6:	dd 99       	add	r29, r19
    63d8:	1c 86 14 00 	addi	20, r28, r16
    63dc:	dc 49       	add	r28, r9
    63de:	0a 6e 14 00 	addi	20, r10, r13
    63e2:	00 72       	mov	0, r14
    63e4:	6a df 0d 00 	st.w	r27, 12[r10]
    63e8:	2c 97 01 00 	ld.w	0[r12], r18
    63ec:	30 5f 01 00 	ld.w	0[r16], r11
    63f0:	d2 7e ff ff 	andi	65535, r18, r15
    63f4:	ce 79       	add	r14, r15
    63f6:	cb 76 ff ff 	andi	65535, r11, r14
    63fa:	ae 79       	sub	r14, r15
    63fc:	12 70       	mov	r18, r14
    63fe:	90 5a       	shr	16, r11
    6400:	90 72       	shr	16, r14
    6402:	ab 71       	sub	r11, r14
    6404:	0f 58       	mov	r15, r11
    6406:	b0 5a       	sar	16, r11
    6408:	cb 71       	add	r11, r14
    640a:	0e 58       	mov	r14, r11
    640c:	d0 5a       	shl	16, r11
    640e:	cf 7e ff ff 	andi	65535, r15, r15
    6412:	0f 59       	or	r15, r11
    6414:	6d 5f 01 00 	st.w	r11, 0[r13]
    6418:	44 82       	add	4, r16
    641a:	44 62       	add	4, r12
    641c:	b0 72       	sar	16, r14
    641e:	44 6a       	add	4, r13
    6420:	f0 49       	cmp	r16, r9
    6422:	bb e5       	bh	63e8 <___mdiff+0x60>
    6424:	0d 80       	mov	r13, r16
    6426:	0c 90       	mov	r12, r18
    6428:	ec 99       	cmp	r12, r19
    642a:	c3 1d       	bnh	6462 <___mdiff+0xda>
    642c:	2c 5f 01 00 	ld.w	0[r12], r11
    6430:	44 62       	add	4, r12
    6432:	cb 7e ff ff 	andi	65535, r11, r15
    6436:	ce 79       	add	r14, r15
    6438:	0f 70       	mov	r15, r14
    643a:	90 5a       	shr	16, r11
    643c:	b0 72       	sar	16, r14
    643e:	cb 71       	add	r11, r14
    6440:	0e 58       	mov	r14, r11
    6442:	d0 5a       	shl	16, r11
    6444:	cf 7e ff ff 	andi	65535, r15, r15
    6448:	0f 59       	or	r15, r11
    644a:	6d 5f 01 00 	st.w	r11, 0[r13]
    644e:	b0 72       	sar	16, r14
    6450:	44 6a       	add	4, r13
    6452:	ec 99       	cmp	r12, r19
    6454:	cb ed       	bh	642c <___mdiff+0xa4>
    6456:	32 68       	not	r18, r13
    6458:	d3 69       	add	r19, r13
    645a:	1c 62       	mov	-4, r12
    645c:	4c 69       	and	r12, r13
    645e:	44 6a       	add	4, r13
    6460:	d0 69       	add	r16, r13
    6462:	5c 6a       	add	-4, r13
    6464:	60 5a       	cmp	0, r11
    6466:	fa 05       	bne	6474 <___mdiff+0xec>
    6468:	5c 6a       	add	-4, r13
    646a:	2d 5f 01 00 	ld.w	0[r13], r11
    646e:	5f 8a       	add	-1, r17
    6470:	60 5a       	cmp	0, r11
    6472:	b2 fd       	be	6468 <___mdiff+0xe0>
    6474:	6a 8f 11 00 	st.w	r17, 16[r10]
    6478:	80 07 58 29 	jr	8dd0 <__return_r26_r31>
    647c:	1d 50       	mov	r29, r10
    647e:	01 da       	mov	1, r27
    6480:	1c e8       	mov	r28, r29
    6482:	0a e0       	mov	r10, r28
    6484:	95 9d       	br	63b6 <___mdiff+0x2e>
    6486:	1a 30       	mov	r26, r6
    6488:	00 3a       	mov	0, r7
    648a:	bf ff 9e f7 	jarl	5c28 <__Balloc>, lp
    648e:	01 5a       	mov	1, r11
    6490:	6a 07 15 00 	st.w	r0, 20[r10]
    6494:	6a 5f 11 00 	st.w	r11, 16[r10]
    6498:	80 07 38 29 	jr	8dd0 <__return_r26_r31>

0000649c <___ulp>:
    649c:	40 56 f0 7f 	movhi	32752, r0, r10
    64a0:	4a 39       	and	r10, r7
    64a2:	40 56 c0 fc 	movhi	-832, r0, r10
    64a6:	ca 39       	add	r10, r7
    64a8:	60 3a       	cmp	0, r7
    64aa:	c7 05       	ble	64b2 <___ulp+0x16>
    64ac:	07 58       	mov	r7, r11
    64ae:	00 52       	mov	0, r10
    64b0:	7f 00       	jmp	[lp]
    64b2:	07 50       	mov	r7, r10
    64b4:	80 51       	subr	r0, r10
    64b6:	b4 52       	sar	20, r10
    64b8:	20 5e 13 00 	movea	19, r0, r11
    64bc:	eb 51       	cmp	r11, r10
    64be:	f7 0d       	ble	64dc <___ulp+0x40>
    64c0:	20 66 32 00 	movea	50, r0, r12
    64c4:	00 5a       	mov	0, r11
    64c6:	ec 51       	cmp	r12, r10
    64c8:	8f 0d       	bgt	64d8 <___ulp+0x3c>
    64ca:	20 66 33 00 	movea	51, r0, r12
    64ce:	aa 61       	sub	r10, r12
    64d0:	01 52       	mov	1, r10
    64d2:	ec 57 c0 00 	shl	r12, r10
    64d6:	7f 00       	jmp	[lp]
    64d8:	01 52       	mov	1, r10
    64da:	7f 00       	jmp	[lp]
    64dc:	40 5e 08 00 	movhi	8, r0, r11
    64e0:	ea 5f a0 00 	sar	r10, r11
    64e4:	00 52       	mov	0, r10
    64e6:	7f 00       	jmp	[lp]

000064e8 <___b2d>:
    64e8:	03 1e ec ff 	addi	-20, sp, sp
    64ec:	63 d7 0d 00 	st.w	r26, 12[sp]
    64f0:	63 df 09 00 	st.w	r27, 8[sp]
    64f4:	63 ff 11 00 	st.w	lp, 16[sp]
    64f8:	63 e7 05 00 	st.w	r28, 4[sp]
    64fc:	63 ef 01 00 	st.w	r29, 0[sp]
    6500:	26 ef 11 00 	ld.w	16[r6], r29
    6504:	06 de 14 00 	addi	20, r6, r27
    6508:	45 ea       	add	5, r29
    650a:	c2 ea       	shl	2, r29
    650c:	c6 e9       	add	r6, r29
    650e:	3d e7 fd ff 	ld.w	-4[r29], r28
    6512:	07 d0       	mov	r7, r26
    6514:	1c 30       	mov	r28, r6
    6516:	bf ff 6e f9 	jarl	5e84 <___hi0bits>, lp
    651a:	20 5e 20 00 	movea	32, r0, r11
    651e:	aa 59       	sub	r10, r11
    6520:	7a 5f 01 00 	st.w	r11, 0[r26]
    6524:	1d 66 fc ff 	addi	-4, r29, r12
    6528:	6a 52       	cmp	10, r10
    652a:	ff 15       	bgt	6558 <___b2d+0x70>
    652c:	0b 6a       	mov	11, r13
    652e:	aa 69       	sub	r10, r13
    6530:	1c 58       	mov	r28, r11
    6532:	ed 5f 80 00 	shr	r13, r11
    6536:	40 76 f0 3f 	movhi	16368, r0, r14
    653a:	0e 59       	or	r14, r11
    653c:	ec d9       	cmp	r12, r27
    653e:	a9 3d       	bnl	65b2 <___b2d+0xca>
    6540:	3d 67 f9 ff 	ld.w	-8[r29], r12
    6544:	ed 67 80 00 	shr	r13, r12
    6548:	0a 56 15 00 	addi	21, r10, r10
    654c:	ea e7 c0 00 	shl	r10, r28
    6550:	1c 50       	mov	r28, r10
    6552:	0c 51       	or	r12, r10
    6554:	80 07 7c 28 	jr	8dd0 <__return_r26_r31>
    6558:	ec d9       	cmp	r12, r27
    655a:	e1 1d       	bl	6596 <___b2d+0xae>
    655c:	0a 6e f5 ff 	addi	-11, r10, r13
    6560:	00 72       	mov	0, r14
    6562:	a2 25       	be	65a6 <___b2d+0xbe>
    6564:	20 7e 2b 00 	movea	43, r0, r15
    6568:	1c 58       	mov	r28, r11
    656a:	aa 79       	sub	r10, r15
    656c:	ed 5f c0 00 	shl	r13, r11
    6570:	40 56 f0 3f 	movhi	16368, r0, r10
    6574:	0a 59       	or	r10, r11
    6576:	0e 50       	mov	r14, r10
    6578:	ef 57 80 00 	shr	r15, r10
    657c:	0a 59       	or	r10, r11
    657e:	fb 61       	cmp	r27, r12
    6580:	b3 1d       	bnh	65b6 <___b2d+0xce>
    6582:	2c 67 fd ff 	ld.w	-4[r12], r12
    6586:	ef 67 80 00 	shr	r15, r12
    658a:	0e 50       	mov	r14, r10
    658c:	ed 57 c0 00 	shl	r13, r10
    6590:	0c 51       	or	r12, r10
    6592:	80 07 3e 28 	jr	8dd0 <__return_r26_r31>
    6596:	0a 6e f5 ff 	addi	-11, r10, r13
    659a:	1d 66 f8 ff 	addi	-8, r29, r12
    659e:	3d 77 f9 ff 	ld.w	-8[r29], r14
    65a2:	60 6a       	cmp	0, r13
    65a4:	8a e5       	bne	6564 <___b2d+0x7c>
    65a6:	40 5e f0 3f 	movhi	16368, r0, r11
    65aa:	1c 59       	or	r28, r11
    65ac:	0e 50       	mov	r14, r10
    65ae:	80 07 22 28 	jr	8dd0 <__return_r26_r31>
    65b2:	00 62       	mov	0, r12
    65b4:	a5 cd       	br	6548 <___b2d+0x60>
    65b6:	00 62       	mov	0, r12
    65b8:	95 ed       	br	658a <___b2d+0xa2>
	...

000065bc <___d2b>:
    65bc:	03 1e e4 ff 	addi	-28, sp, sp
    65c0:	63 ef 09 00 	st.w	r29, 8[sp]
    65c4:	40 ee 00 80 	movhi	-32768, r0, r29
    65c8:	3d ee ff ff 	movea	-1, r29, r29
    65cc:	01 3a       	mov	1, r7
    65ce:	63 d7 15 00 	st.w	r26, 20[sp]
    65d2:	63 df 11 00 	st.w	r27, 16[sp]
    65d6:	63 e7 0d 00 	st.w	r28, 12[sp]
    65da:	09 d8       	mov	r9, r27
    65dc:	49 e9       	and	r9, r29
    65de:	63 ff 19 00 	st.w	lp, 24[sp]
    65e2:	08 d0       	mov	r8, r26
    65e4:	bf ff 44 f6 	jarl	5c28 <__Balloc>, lp
    65e8:	0a e0       	mov	r10, r28
    65ea:	40 56 10 00 	movhi	16, r0, r10
    65ee:	2a 56 ff ff 	movea	-1, r10, r10
    65f2:	94 ea       	shr	20, r29
    65f4:	4a d9       	and	r10, r27
    65f6:	60 ea       	cmp	0, r29
    65f8:	c2 05       	be	6600 <___d2b+0x44>
    65fa:	40 5e 10 00 	movhi	16, r0, r11
    65fe:	0b d9       	or	r11, r27
    6600:	63 df 05 00 	st.w	r27, 4[sp]
    6604:	60 d2       	cmp	0, r26
    6606:	b2 2d       	be	665c <___d2b+0xa0>
    6608:	03 30       	mov	sp, r6
    660a:	63 d7 01 00 	st.w	r26, 0[sp]
    660e:	bf ff c2 f8 	jarl	5ed0 <___lo0bits>, lp
    6612:	23 5f 05 00 	ld.w	4[sp], r11
    6616:	60 52       	cmp	0, r10
    6618:	aa 4d       	bne	66ac <___d2b+0xf0>
    661a:	23 67 01 00 	ld.w	0[sp], r12
    661e:	7c 67 15 00 	st.w	r12, 20[r28]
    6622:	60 5a       	cmp	0, r11
    6624:	e2 67 00 00 	setf	z, r12
    6628:	02 da       	mov	2, r27
    662a:	ac d9       	sub	r12, r27
    662c:	7c 5f 19 00 	st.w	r11, 24[r28]
    6630:	7c df 11 00 	st.w	r27, 16[r28]
    6634:	60 ea       	cmp	0, r29
    6636:	b2 25       	be	667c <___d2b+0xc0>
    6638:	23 67 1d 00 	ld.w	28[sp], r12
    663c:	1d ee cd fb 	addi	-1075, r29, r29
    6640:	ca e9       	add	r10, r29
    6642:	23 6f 21 00 	ld.w	32[sp], r13
    6646:	20 5e 35 00 	movea	53, r0, r11
    664a:	aa 59       	sub	r10, r11
    664c:	6c ef 01 00 	st.w	r29, 0[r12]
    6650:	48 1a       	add	8, sp
    6652:	1c 50       	mov	r28, r10
    6654:	6d 5f 01 00 	st.w	r11, 0[r13]
    6658:	80 07 78 27 	jr	8dd0 <__return_r26_r31>
    665c:	03 36 04 00 	addi	4, sp, r6
    6660:	bf ff 70 f8 	jarl	5ed0 <___lo0bits>, lp
    6664:	23 67 05 00 	ld.w	4[sp], r12
    6668:	01 5a       	mov	1, r11
    666a:	7c 67 15 00 	st.w	r12, 20[r28]
    666e:	7c 5f 11 00 	st.w	r11, 16[r28]
    6672:	0a 56 20 00 	addi	32, r10, r10
    6676:	0b d8       	mov	r11, r27
    6678:	60 ea       	cmp	0, r29
    667a:	fa dd       	bne	6638 <___d2b+0x7c>
    667c:	1b 5e 04 00 	addi	4, r27, r11
    6680:	c2 5a       	shl	2, r11
    6682:	dc 59       	add	r28, r11
    6684:	2b 37 01 00 	ld.w	0[r11], r6
    6688:	23 5f 1d 00 	ld.w	28[sp], r11
    668c:	0a 56 ce fb 	addi	-1074, r10, r10
    6690:	6b 57 01 00 	st.w	r10, 0[r11]
    6694:	bf ff f0 f7 	jarl	5e84 <___hi0bits>, lp
    6698:	23 67 21 00 	ld.w	32[sp], r12
    669c:	c5 da       	shl	5, r27
    669e:	aa d9       	sub	r10, r27
    66a0:	48 1a       	add	8, sp
    66a2:	1c 50       	mov	r28, r10
    66a4:	6c df 01 00 	st.w	r27, 0[r12]
    66a8:	80 07 28 27 	jr	8dd0 <__return_r26_r31>
    66ac:	0a 60       	mov	r10, r12
    66ae:	80 61       	subr	r0, r12
    66b0:	0b 68       	mov	r11, r13
    66b2:	ec 6f c0 00 	shl	r12, r13
    66b6:	0d 60       	mov	r13, r12
    66b8:	23 6f 01 00 	ld.w	0[sp], r13
    66bc:	ea 5f 80 00 	shr	r10, r11
    66c0:	0d 61       	or	r13, r12
    66c2:	7c 67 15 00 	st.w	r12, 20[r28]
    66c6:	63 5f 05 00 	st.w	r11, 4[sp]
    66ca:	c5 ad       	br	6622 <___d2b+0x66>

000066cc <___ratio>:
    66cc:	03 1e e0 ff 	addi	-32, sp, sp
    66d0:	63 df 11 00 	st.w	r27, 16[sp]
    66d4:	40 de 00 00 	movhi	0, r0, r27
    66d8:	63 e7 0d 00 	st.w	r28, 12[sp]
    66dc:	3b de e8 64 	movea	25832, r27, r27
    66e0:	07 e0       	mov	r7, r28
    66e2:	03 38       	mov	sp, r7
    66e4:	63 ff 1d 00 	st.w	lp, 28[sp]
    66e8:	63 cf 19 00 	st.w	r25, 24[sp]
    66ec:	63 d7 15 00 	st.w	r26, 20[sp]
    66f0:	06 c8       	mov	r6, r25
    66f2:	63 ef 09 00 	st.w	r29, 8[sp]
    66f6:	80 ff 04 00 	jarl	66fa <___ratio+0x2e>, lp
    66fa:	44 fa       	add	4, lp
    66fc:	7b 00       	jmp	[r27]
    66fe:	1c 30       	mov	r28, r6
    6700:	03 3e 04 00 	addi	4, sp, r7
    6704:	0a d0       	mov	r10, r26
    6706:	0b e8       	mov	r11, r29
    6708:	80 ff 04 00 	jarl	670c <___ratio+0x40>, lp
    670c:	44 fa       	add	4, lp
    670e:	7b 00       	jmp	[r27]
    6710:	3c 77 11 00 	ld.w	16[r28], r14
    6714:	39 6f 11 00 	ld.w	16[r25], r13
    6718:	23 67 01 00 	ld.w	0[sp], r12
    671c:	ae 69       	sub	r14, r13
    671e:	23 77 05 00 	ld.w	4[sp], r14
    6722:	c5 6a       	shl	5, r13
    6724:	ae 61       	sub	r14, r12
    6726:	cd 61       	add	r13, r12
    6728:	60 62       	cmp	0, r12
    672a:	c7 0d       	ble	6742 <___ratio+0x76>
    672c:	d4 62       	shl	20, r12
    672e:	cc e9       	add	r12, r29
    6730:	1a 30       	mov	r26, r6
    6732:	1d 38       	mov	r29, r7
    6734:	0a 40       	mov	r10, r8
    6736:	0b 48       	mov	r11, r9
    6738:	80 ff 4c 2d 	jarl	9484 <___divdf3>, lp
    673c:	48 1a       	add	8, sp
    673e:	80 07 56 26 	jr	8d94 <__return_r25_r31>
    6742:	d4 62       	shl	20, r12
    6744:	ac 59       	sub	r12, r11
    6746:	d5 f5       	br	6730 <___ratio+0x64>

00006748 <__mprec_log10>:
    6748:	54 1a       	add	-12, sp
    674a:	63 ef 01 00 	st.w	r29, 0[sp]
    674e:	63 ff 09 00 	st.w	lp, 8[sp]
    6752:	63 e7 05 00 	st.w	r28, 4[sp]
    6756:	20 56 17 00 	movea	23, r0, r10
    675a:	06 e8       	mov	r6, r29
    675c:	ea 31       	cmp	r10, r6
    675e:	e7 15       	ble	678a <__mprec_log10+0x42>
    6760:	40 e6 01 00 	movhi	1, r0, r28
    6764:	00 52       	mov	0, r10
    6766:	40 5e f0 3f 	movhi	16368, r0, r11
    676a:	3c e6 10 92 	movea	-28144, r28, r28
    676e:	5f ea       	add	-1, r29
    6770:	0a 30       	mov	r10, r6
    6772:	0b 38       	mov	r11, r7
    6774:	00 42       	mov	0, r8
    6776:	40 4e 24 40 	movhi	16420, r0, r9
    677a:	80 ff 04 00 	jarl	677e <__mprec_log10+0x36>, lp
    677e:	44 fa       	add	4, lp
    6780:	7c 00       	jmp	[r28]
    6782:	60 ea       	cmp	0, r29
    6784:	da f5       	bne	676e <__mprec_log10+0x26>
    6786:	bf 07 e2 ac 	jr	1468 <__return_r28_r31>
    678a:	40 56 01 00 	movhi	1, r0, r10
    678e:	c3 ea       	shl	3, r29
    6790:	2a 56 38 a0 	movea	-24520, r10, r10
    6794:	ca e9       	add	r10, r29
    6796:	3d 57 01 00 	ld.w	0[r29], r10
    679a:	3d 5f 05 00 	ld.w	4[r29], r11
    679e:	bf 07 ca ac 	jr	1468 <__return_r28_r31>
	...

000067a4 <___copybits>:
    67a4:	28 6f 11 00 	ld.w	16[r8], r13
    67a8:	5f 3a       	add	-1, r7
    67aa:	a5 3a       	sar	5, r7
    67ac:	45 6a       	add	5, r13
    67ae:	07 76 01 00 	addi	1, r7, r14
    67b2:	c2 6a       	shl	2, r13
    67b4:	c2 72       	shl	2, r14
    67b6:	08 56 14 00 	addi	20, r8, r10
    67ba:	c8 69       	add	r8, r13
    67bc:	c6 71       	add	r6, r14
    67be:	ed 51       	cmp	r13, r10
    67c0:	e9 15       	bnl	67ec <___copybits+0x48>
    67c2:	06 58       	mov	r6, r11
    67c4:	2a 67 01 00 	ld.w	0[r10], r12
    67c8:	44 52       	add	4, r10
    67ca:	6b 67 01 00 	st.w	r12, 0[r11]
    67ce:	44 5a       	add	4, r11
    67d0:	ea 69       	cmp	r10, r13
    67d2:	9b fd       	bh	67c4 <___copybits+0x20>
    67d4:	a8 69       	sub	r8, r13
    67d6:	0d 6e eb ff 	addi	-21, r13, r13
    67da:	1c 52       	mov	-4, r10
    67dc:	4a 69       	and	r10, r13
    67de:	44 6a       	add	4, r13
    67e0:	cd 31       	add	r13, r6
    67e2:	e6 71       	cmp	r6, r14
    67e4:	e3 05       	bnh	67f0 <___copybits+0x4c>
    67e6:	66 07 01 00 	st.w	r0, 0[r6]
    67ea:	44 32       	add	4, r6
    67ec:	e6 71       	cmp	r6, r14
    67ee:	cb fd       	bh	67e6 <___copybits+0x42>
    67f0:	7f 00       	jmp	[lp]
	...

000067f4 <___any_on>:
    67f4:	07 58       	mov	r7, r11
    67f6:	26 57 11 00 	ld.w	16[r6], r10
    67fa:	a5 5a       	sar	5, r11
    67fc:	06 66 14 00 	addi	20, r6, r12
    6800:	eb 51       	cmp	r11, r10
    6802:	e6 05       	blt	680e <___any_on+0x1a>
    6804:	87 1d       	ble	6834 <___any_on+0x40>
    6806:	c7 3e 1f 00 	andi	31, r7, r7
    680a:	0b 50       	mov	r11, r10
    680c:	8a 1d       	bne	683c <___any_on+0x48>
    680e:	45 52       	add	5, r10
    6810:	c2 52       	shl	2, r10
    6812:	c6 51       	add	r6, r10
    6814:	ea 61       	cmp	r10, r12
    6816:	99 15       	bnl	6838 <___any_on+0x44>
    6818:	2a 5f fd ff 	ld.w	-4[r10], r11
    681c:	5c 52       	add	-4, r10
    681e:	60 5a       	cmp	0, r11
    6820:	8a 0d       	bne	6830 <___any_on+0x3c>
    6822:	ea 61       	cmp	r10, r12
    6824:	a9 0d       	bnl	6838 <___any_on+0x44>
    6826:	5c 52       	add	-4, r10
    6828:	2a 5f 01 00 	ld.w	0[r10], r11
    682c:	60 5a       	cmp	0, r11
    682e:	a2 fd       	be	6822 <___any_on+0x2e>
    6830:	01 52       	mov	1, r10
    6832:	7f 00       	jmp	[lp]
    6834:	0b 50       	mov	r11, r10
    6836:	c5 ed       	br	680e <___any_on+0x1a>
    6838:	00 52       	mov	0, r10
    683a:	7f 00       	jmp	[lp]
    683c:	45 5a       	add	5, r11
    683e:	c2 5a       	shl	2, r11
    6840:	c6 59       	add	r6, r11
    6842:	2b 6f 01 00 	ld.w	0[r11], r13
    6846:	0d 58       	mov	r13, r11
    6848:	e7 5f 80 00 	shr	r7, r11
    684c:	e7 5f c0 00 	shl	r7, r11
    6850:	ed 59       	cmp	r13, r11
    6852:	e2 dd       	be	680e <___any_on+0x1a>
    6854:	01 52       	mov	1, r10
    6856:	e5 ed       	br	6832 <___any_on+0x3e>

00006858 <___fpclassifyd>:
    6858:	60 3a       	cmp	0, r7
    685a:	82 15       	be	687a <___fpclassifyd+0x22>
    685c:	40 56 00 80 	movhi	-32768, r0, r10
    6860:	ea 39       	cmp	r10, r7
    6862:	c2 0d       	be	687a <___fpclassifyd+0x22>
    6864:	40 5e f0 ff 	movhi	-16, r0, r11
    6868:	40 56 e0 7f 	movhi	32736, r0, r10
    686c:	c7 59       	add	r7, r11
    686e:	2a 56 ff ff 	movea	-1, r10, r10
    6872:	ea 59       	cmp	r10, r11
    6874:	fb 05       	bh	6882 <___fpclassifyd+0x2a>
    6876:	04 52       	mov	4, r10
    6878:	7f 00       	jmp	[lp]
    687a:	60 32       	cmp	0, r6
    687c:	ca f5       	bne	6864 <___fpclassifyd+0xc>
    687e:	02 52       	mov	2, r10
    6880:	7f 00       	jmp	[lp]
    6882:	40 5e f0 7f 	movhi	32752, r0, r11
    6886:	c7 59       	add	r7, r11
    6888:	ea 59       	cmp	r10, r11
    688a:	e3 f5       	bnh	6876 <___fpclassifyd+0x1e>
    688c:	40 56 10 00 	movhi	16, r0, r10
    6890:	2a 56 ff ff 	movea	-1, r10, r10
    6894:	ea 39       	cmp	r10, r7
    6896:	bb 05       	bh	689c <___fpclassifyd+0x44>
    6898:	03 52       	mov	3, r10
    689a:	7f 00       	jmp	[lp]
    689c:	40 5e 00 80 	movhi	-32768, r0, r11
    68a0:	c7 59       	add	r7, r11
    68a2:	ea 59       	cmp	r10, r11
    68a4:	a3 fd       	bnh	6898 <___fpclassifyd+0x40>
    68a6:	40 56 f0 7f 	movhi	32752, r0, r10
    68aa:	ea 39       	cmp	r10, r7
    68ac:	f2 05       	be	68ba <___fpclassifyd+0x62>
    68ae:	40 56 f0 ff 	movhi	-16, r0, r10
    68b2:	ea 39       	cmp	r10, r7
    68b4:	b2 05       	be	68ba <___fpclassifyd+0x62>
    68b6:	00 52       	mov	0, r10
    68b8:	7f 00       	jmp	[lp]
    68ba:	60 32       	cmp	0, r6
    68bc:	e2 57 00 00 	setf	z, r10
    68c0:	7f 00       	jmp	[lp]
	...

000068c4 <__sbrk_r>:
    68c4:	54 1a       	add	-12, sp
    68c6:	63 e7 05 00 	st.w	r28, 4[sp]
    68ca:	63 ef 01 00 	st.w	r29, 0[sp]
    68ce:	06 e0       	mov	r6, r28
    68d0:	40 ee 01 00 	movhi	1, r0, r29
    68d4:	07 30       	mov	r7, r6
    68d6:	63 ff 09 00 	st.w	lp, 8[sp]
    68da:	7d 07 09 ad 	st.w	r0, -21240[r29]
    68de:	80 ff be 1c 	jarl	859c <__sbrk>, lp
    68e2:	7f 52       	cmp	-1, r10
    68e4:	b2 05       	be	68ea <__sbrk_r+0x26>
    68e6:	bf 07 82 ab 	jr	1468 <__return_r28_r31>
    68ea:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    68ee:	60 5a       	cmp	0, r11
    68f0:	b2 fd       	be	68e6 <__sbrk_r+0x22>
    68f2:	7c 5f 01 00 	st.w	r11, 0[r28]
    68f6:	bf 07 72 ab 	jr	1468 <__return_r28_r31>
	...

000068fc <__stat>:
    68fc:	06 50       	mov	r6, r10
    68fe:	5c 1a       	add	-4, sp
    6900:	07 40       	mov	r7, r8
    6902:	20 36 26 00 	movea	38, r0, r6
    6906:	0a 38       	mov	r10, r7
    6908:	00 4a       	mov	0, r9
    690a:	63 ff 01 00 	st.w	lp, 0[sp]
    690e:	80 ff 6e 01 	jarl	6a7c <___trap0>, lp
    6912:	bf 07 76 ab 	jr	1488 <__return_r31>
	...

00006918 <___sread>:
    6918:	58 1a       	add	-8, sp
    691a:	63 ef 01 00 	st.w	r29, 0[sp]
    691e:	63 ff 05 00 	st.w	lp, 4[sp]
    6922:	07 e8       	mov	r7, r29
    6924:	27 3f 0e 00 	ld.h	14[r7], r7
    6928:	d0 3a       	shl	16, r7
    692a:	b0 3a       	sar	16, r7
    692c:	80 ff f4 16 	jarl	8020 <__read_r>, lp
    6930:	60 52       	cmp	0, r10
    6932:	86 0d       	blt	6942 <___sread+0x2a>
    6934:	3d 5f 51 00 	ld.w	80[r29], r11
    6938:	ca 59       	add	r10, r11
    693a:	7d 5f 51 00 	st.w	r11, 80[r29]
    693e:	bf 07 3c ab 	jr	147a <__return_r29_r31>
    6942:	3d 5f 0c 00 	ld.h	12[r29], r11
    6946:	20 66 ff ef 	movea	-4097, r0, r12
    694a:	4c 59       	and	r12, r11
    694c:	7d 5f 0c 00 	st.h	r11, 12[r29]
    6950:	bf 07 2a ab 	jr	147a <__return_r29_r31>

00006954 <___seofread>:
    6954:	00 52       	mov	0, r10
    6956:	7f 00       	jmp	[lp]

00006958 <___swrite>:
    6958:	03 1e ec ff 	addi	-20, sp, sp
    695c:	63 d7 0d 00 	st.w	r26, 12[sp]
    6960:	63 df 09 00 	st.w	r27, 8[sp]
    6964:	63 e7 05 00 	st.w	r28, 4[sp]
    6968:	63 ef 01 00 	st.w	r29, 0[sp]
    696c:	63 ff 11 00 	st.w	lp, 16[sp]
    6970:	27 57 0c 00 	ld.h	12[r7], r10
    6974:	40 5e 00 01 	movhi	256, r0, r11
    6978:	d0 52       	shl	16, r10
    697a:	4a 59       	and	r10, r11
    697c:	07 e8       	mov	r7, r29
    697e:	06 d0       	mov	r6, r26
    6980:	08 d8       	mov	r8, r27
    6982:	09 e0       	mov	r9, r28
    6984:	b0 52       	sar	16, r10
    6986:	60 5a       	cmp	0, r11
    6988:	d2 0d       	be	69a2 <___swrite+0x4a>
    698a:	27 3f 0e 00 	ld.h	14[r7], r7
    698e:	00 42       	mov	0, r8
    6990:	d0 3a       	shl	16, r7
    6992:	b0 3a       	sar	16, r7
    6994:	02 4a       	mov	2, r9
    6996:	80 ff 0a 16 	jarl	7fa0 <__lseek_r>, lp
    699a:	3d 57 0c 00 	ld.h	12[r29], r10
    699e:	d0 52       	shl	16, r10
    69a0:	b0 52       	sar	16, r10
    69a2:	3d 3f 0e 00 	ld.h	14[r29], r7
    69a6:	20 5e ff ef 	movea	-4097, r0, r11
    69aa:	d0 3a       	shl	16, r7
    69ac:	4b 51       	and	r11, r10
    69ae:	1a 30       	mov	r26, r6
    69b0:	b0 3a       	sar	16, r7
    69b2:	1b 40       	mov	r27, r8
    69b4:	1c 48       	mov	r28, r9
    69b6:	7d 57 0c 00 	st.h	r10, 12[r29]
    69ba:	80 ff 86 0e 	jarl	7840 <__write_r>, lp
    69be:	80 07 12 24 	jr	8dd0 <__return_r26_r31>
	...

000069c4 <___sseek>:
    69c4:	58 1a       	add	-8, sp
    69c6:	63 ef 01 00 	st.w	r29, 0[sp]
    69ca:	63 ff 05 00 	st.w	lp, 4[sp]
    69ce:	07 e8       	mov	r7, r29
    69d0:	27 3f 0e 00 	ld.h	14[r7], r7
    69d4:	d0 3a       	shl	16, r7
    69d6:	b0 3a       	sar	16, r7
    69d8:	80 ff c8 15 	jarl	7fa0 <__lseek_r>, lp
    69dc:	3d 5f 0c 00 	ld.h	12[r29], r11
    69e0:	7f 52       	cmp	-1, r10
    69e2:	92 0d       	be	69f4 <___sseek+0x30>
    69e4:	8b 5e 00 10 	ori	4096, r11, r11
    69e8:	7d 57 51 00 	st.w	r10, 80[r29]
    69ec:	7d 5f 0c 00 	st.h	r11, 12[r29]
    69f0:	bf 07 8a aa 	jr	147a <__return_r29_r31>
    69f4:	20 66 ff ef 	movea	-4097, r0, r12
    69f8:	4c 59       	and	r12, r11
    69fa:	7d 5f 0c 00 	st.h	r11, 12[r29]
    69fe:	bf 07 7c aa 	jr	147a <__return_r29_r31>
	...

00006a04 <___sclose>:
    6a04:	5c 1a       	add	-4, sp
    6a06:	63 ff 01 00 	st.w	lp, 0[sp]
    6a0a:	27 3f 0e 00 	ld.h	14[r7], r7
    6a0e:	d0 3a       	shl	16, r7
    6a10:	b0 3a       	sar	16, r7
    6a12:	80 ff fe 0e 	jarl	7910 <__close_r>, lp
    6a16:	bf 07 72 aa 	jr	1488 <__return_r31>
	...

00006a1c <_strcmp>:
    6a1c:	06 57 00 00 	ld.b	0[r6], r10
    6a20:	d8 52       	shl	24, r10
    6a22:	b8 52       	sar	24, r10
    6a24:	9a 0d       	bne	6a36 <_strcmp+0x1a>
    6a26:	e5 15       	br	6a52 <_strcmp+0x36>
    6a28:	41 32       	add	1, r6
    6a2a:	06 57 00 00 	ld.b	0[r6], r10
    6a2e:	41 3a       	add	1, r7
    6a30:	d8 52       	shl	24, r10
    6a32:	b8 52       	sar	24, r10
    6a34:	f2 0d       	be	6a52 <_strcmp+0x36>
    6a36:	07 5f 00 00 	ld.b	0[r7], r11
    6a3a:	d8 5a       	shl	24, r11
    6a3c:	b8 5a       	sar	24, r11
    6a3e:	ea 59       	cmp	r10, r11
    6a40:	c2 f5       	be	6a28 <_strcmp+0xc>
    6a42:	07 5f 00 00 	ld.b	0[r7], r11
    6a46:	ca 56 ff 00 	andi	255, r10, r10
    6a4a:	cb 5e ff 00 	andi	255, r11, r11
    6a4e:	ab 51       	sub	r11, r10
    6a50:	7f 00       	jmp	[lp]
    6a52:	07 5f 00 00 	ld.b	0[r7], r11
    6a56:	00 52       	mov	0, r10
    6a58:	cb 5e ff 00 	andi	255, r11, r11
    6a5c:	ab 51       	sub	r11, r10
    6a5e:	7f 00       	jmp	[lp]

00006a60 <_strlen>:
    6a60:	06 57 00 00 	ld.b	0[r6], r10
    6a64:	d8 52       	shl	24, r10
    6a66:	92 0d       	be	6a78 <_strlen+0x18>
    6a68:	06 50       	mov	r6, r10
    6a6a:	41 52       	add	1, r10
    6a6c:	0a 5f 00 00 	ld.b	0[r10], r11
    6a70:	d8 5a       	shl	24, r11
    6a72:	ca fd       	bne	6a6a <_strlen+0xa>
    6a74:	a6 51       	sub	r6, r10
    6a76:	7f 00       	jmp	[lp]
    6a78:	00 52       	mov	0, r10
    6a7a:	7f 00       	jmp	[lp]

00006a7c <___trap0>:
    6a7c:	ff 07 00 01 	trap	31
    6a80:	6b 59       	tst	r11, r11
    6a82:	d2 05       	be	6a8c <___trap0+0x10>
    6a84:	40 36 01 00 	movhi	1, r0, r6
    6a88:	66 5f 09 ad 	st.w	r11, -21240[r6]
    6a8c:	7f 00       	jmp	[lp]
	...

00006a90 <___sprint_r>:
    6a90:	03 1e d8 ff 	addi	-40, sp, sp
    6a94:	63 bf 19 00 	st.w	r23, 24[sp]
    6a98:	63 cf 11 00 	st.w	r25, 16[sp]
    6a9c:	63 d7 0d 00 	st.w	r26, 12[sp]
    6aa0:	63 ff 25 00 	st.w	lp, 36[sp]
    6aa4:	63 af 21 00 	st.w	r21, 32[sp]
    6aa8:	63 b7 1d 00 	st.w	r22, 28[sp]
    6aac:	63 c7 15 00 	st.w	r24, 20[sp]
    6ab0:	63 df 09 00 	st.w	r27, 8[sp]
    6ab4:	63 e7 05 00 	st.w	r28, 4[sp]
    6ab8:	63 ef 01 00 	st.w	r29, 0[sp]
    6abc:	28 57 09 00 	ld.w	8[r8], r10
    6ac0:	08 b8       	mov	r8, r23
    6ac2:	06 c8       	mov	r6, r25
    6ac4:	07 d0       	mov	r7, r26
    6ac6:	60 52       	cmp	0, r10
    6ac8:	c2 25       	be	6b10 <___sprint_r+0x80>
    6aca:	c7 ef 65 00 	tst1	5, 101[r7]
    6ace:	f2 2d       	be	6b2c <___sprint_r+0x9c>
    6ad0:	28 b7 01 00 	ld.w	0[r8], r22
    6ad4:	40 ae 00 00 	movhi	0, r0, r21
    6ad8:	48 b2       	add	8, r22
    6ada:	36 df fd ff 	ld.w	-4[r22], r27
    6ade:	36 e7 f9 ff 	ld.w	-8[r22], r28
    6ae2:	82 da       	shr	2, r27
    6ae4:	60 da       	cmp	0, r27
    6ae6:	b7 1d       	ble	6b1c <___sprint_r+0x8c>
    6ae8:	00 ea       	mov	0, r29
    6aea:	35 c6 10 7a 	movea	31248, r21, r24
    6aee:	c5 05       	br	6af6 <___sprint_r+0x66>
    6af0:	44 e2       	add	4, r28
    6af2:	fd d9       	cmp	r29, r27
    6af4:	a2 15       	be	6b18 <___sprint_r+0x88>
    6af6:	3c 3f 01 00 	ld.w	0[r28], r7
    6afa:	19 30       	mov	r25, r6
    6afc:	1a 40       	mov	r26, r8
    6afe:	80 ff 04 00 	jarl	6b02 <___sprint_r+0x72>, lp
    6b02:	44 fa       	add	4, lp
    6b04:	78 00       	jmp	[r24]
    6b06:	41 ea       	add	1, r29
    6b08:	7f 52       	cmp	-1, r10
    6b0a:	ba f5       	bne	6af0 <___sprint_r+0x60>
    6b0c:	77 07 09 00 	st.w	r0, 8[r23]
    6b10:	77 07 05 00 	st.w	r0, 4[r23]
    6b14:	80 07 98 21 	jr	8cac <__return_r21_r31>
    6b18:	37 57 09 00 	ld.w	8[r23], r10
    6b1c:	c2 da       	shl	2, r27
    6b1e:	bb 51       	sub	r27, r10
    6b20:	77 57 09 00 	st.w	r10, 8[r23]
    6b24:	48 b2       	add	8, r22
    6b26:	60 52       	cmp	0, r10
    6b28:	9a dd       	bne	6ada <___sprint_r+0x4a>
    6b2a:	95 f5       	br	6b0c <___sprint_r+0x7c>
    6b2c:	80 ff 90 10 	jarl	7bbc <___sfvwrite_r>, lp
    6b30:	77 07 09 00 	st.w	r0, 8[r23]
    6b34:	e5 ed       	br	6b10 <___sprint_r+0x80>
	...

00006b38 <__vfiprintf_r>:
    6b38:	03 1e 04 fb 	addi	-1276, sp, sp
    6b3c:	63 d7 d9 04 	st.w	r26, 1240[sp]
    6b40:	63 e7 d1 04 	st.w	r28, 1232[sp]
    6b44:	63 ef cd 04 	st.w	r29, 1228[sp]
    6b48:	63 ff f9 04 	st.w	lp, 1272[sp]
    6b4c:	63 17 f5 04 	st.w	r2, 1268[sp]
    6b50:	63 a7 f1 04 	st.w	r20, 1264[sp]
    6b54:	63 af ed 04 	st.w	r21, 1260[sp]
    6b58:	63 b7 e9 04 	st.w	r22, 1256[sp]
    6b5c:	63 bf e5 04 	st.w	r23, 1252[sp]
    6b60:	63 c7 e1 04 	st.w	r24, 1248[sp]
    6b64:	63 cf dd 04 	st.w	r25, 1244[sp]
    6b68:	63 df d5 04 	st.w	r27, 1236[sp]
    6b6c:	63 4f 19 00 	st.w	r9, 24[sp]
    6b70:	06 d0       	mov	r6, r26
    6b72:	07 e0       	mov	r7, r28
    6b74:	08 e8       	mov	r8, r29
    6b76:	60 32       	cmp	0, r6
    6b78:	f2 05       	be	6b86 <__vfiprintf_r+0x4e>
    6b7a:	26 57 39 00 	ld.w	56[r6], r10
    6b7e:	60 52       	cmp	0, r10
    6b80:	ba 05       	bne	6b86 <__vfiprintf_r+0x4e>
    6b82:	80 07 9e 0a 	jr	7620 <__vfiprintf_r+0xae8>
    6b86:	3c 57 0c 00 	ld.h	12[r28], r10
    6b8a:	40 5e 00 20 	movhi	8192, r0, r11
    6b8e:	d0 52       	shl	16, r10
    6b90:	4a 59       	and	r10, r11
    6b92:	b0 52       	sar	16, r10
    6b94:	60 5a       	cmp	0, r11
    6b96:	ca 0d       	bne	6bae <__vfiprintf_r+0x76>
    6b98:	3c 5f 65 00 	ld.w	100[r28], r11
    6b9c:	20 66 ff df 	movea	-8193, r0, r12
    6ba0:	8a 56 00 20 	ori	8192, r10, r10
    6ba4:	4c 59       	and	r12, r11
    6ba6:	7c 57 0c 00 	st.h	r10, 12[r28]
    6baa:	7c 5f 65 00 	st.w	r11, 100[r28]
    6bae:	ca 5e 08 00 	andi	8, r10, r11
    6bb2:	ba 05       	bne	6bb8 <__vfiprintf_r+0x80>
    6bb4:	80 07 dc 08 	jr	7490 <__vfiprintf_r+0x958>
    6bb8:	3c 5f 11 00 	ld.w	16[r28], r11
    6bbc:	60 5a       	cmp	0, r11
    6bbe:	ba 05       	bne	6bc4 <__vfiprintf_r+0x8c>
    6bc0:	80 07 d0 08 	jr	7490 <__vfiprintf_r+0x958>
    6bc4:	ca 5e 1a 00 	andi	26, r10, r11
    6bc8:	6a 5a       	cmp	10, r11
    6bca:	ba 05       	bne	6bd0 <__vfiprintf_r+0x98>
    6bcc:	80 07 e8 08 	jr	74b4 <__vfiprintf_r+0x97c>
    6bd0:	03 56 cc 00 	addi	204, sp, r10
    6bd4:	03 76 64 00 	addi	100, sp, r14
    6bd8:	03 5e 63 00 	addi	99, sp, r11
    6bdc:	1d a0       	mov	r29, r20
    6bde:	40 7e 01 00 	movhi	1, r0, r15
    6be2:	40 ee 01 00 	movhi	1, r0, r29
    6be6:	63 77 09 00 	st.w	r14, 8[sp]
    6bea:	63 07 39 00 	st.w	r0, 56[sp]
    6bee:	ab 71       	sub	r11, r14
    6bf0:	63 07 35 00 	st.w	r0, 52[sp]
    6bf4:	63 07 21 00 	st.w	r0, 32[sp]
    6bf8:	63 07 11 00 	st.w	r0, 16[sp]
    6bfc:	0a 60       	mov	r10, r12
    6bfe:	3d ee 35 a1 	movea	-24267, r29, r29
    6c02:	2f b6 45 a1 	movea	-24251, r15, r22
    6c06:	63 5f 05 00 	st.w	r11, 4[sp]
    6c0a:	63 77 29 00 	st.w	r14, 40[sp]
    6c0e:	63 57 31 00 	st.w	r10, 48[sp]
    6c12:	14 57 00 00 	ld.b	0[r20], r10
    6c16:	d8 52       	shl	24, r10
    6c18:	b8 52       	sar	24, r10
    6c1a:	ba 05       	bne	6c20 <__vfiprintf_r+0xe8>
    6c1c:	80 07 f2 06 	jr	730e <__vfiprintf_r+0x7d6>
    6c20:	20 5e 25 00 	movea	37, r0, r11
    6c24:	14 d8       	mov	r20, r27
    6c26:	eb 51       	cmp	r11, r10
    6c28:	ca 05       	bne	6c30 <__vfiprintf_r+0xf8>
    6c2a:	c5 25       	br	6c72 <__vfiprintf_r+0x13a>
    6c2c:	eb 51       	cmp	r11, r10
    6c2e:	f2 05       	be	6c3c <__vfiprintf_r+0x104>
    6c30:	41 da       	add	1, r27
    6c32:	1b 57 00 00 	ld.b	0[r27], r10
    6c36:	d8 52       	shl	24, r10
    6c38:	b8 52       	sar	24, r10
    6c3a:	9a fd       	bne	6c2c <__vfiprintf_r+0xf4>
    6c3c:	1b c8       	mov	r27, r25
    6c3e:	b4 c9       	sub	r20, r25
    6c40:	92 1d       	be	6c72 <__vfiprintf_r+0x13a>
    6c42:	23 5f 39 00 	ld.w	56[sp], r11
    6c46:	23 57 35 00 	ld.w	52[sp], r10
    6c4a:	d9 59       	add	r25, r11
    6c4c:	41 52       	add	1, r10
    6c4e:	6c a7 01 00 	st.w	r20, 0[r12]
    6c52:	6c cf 05 00 	st.w	r25, 4[r12]
    6c56:	63 5f 39 00 	st.w	r11, 56[sp]
    6c5a:	63 57 35 00 	st.w	r10, 52[sp]
    6c5e:	67 52       	cmp	7, r10
    6c60:	b7 05       	ble	6c66 <__vfiprintf_r+0x12e>
    6c62:	80 07 ea 08 	jr	754c <__vfiprintf_r+0xa14>
    6c66:	48 62       	add	8, r12
    6c68:	23 6f 11 00 	ld.w	16[sp], r13
    6c6c:	d9 69       	add	r25, r13
    6c6e:	63 6f 11 00 	st.w	r13, 16[sp]
    6c72:	1b 57 00 00 	ld.b	0[r27], r10
    6c76:	d8 52       	shl	24, r10
    6c78:	ba 05       	bne	6c7e <__vfiprintf_r+0x146>
    6c7a:	80 07 f8 06 	jr	7372 <__vfiprintf_r+0x83a>
    6c7e:	1b a6 01 00 	addi	1, r27, r20
    6c82:	00 8a       	mov	0, r17
    6c84:	1f c2       	mov	-1, r24
    6c86:	63 07 15 00 	st.w	r0, 20[sp]
    6c8a:	00 ca       	mov	0, r25
    6c8c:	20 86 58 00 	movea	88, r0, r16
    6c90:	20 96 2a 00 	movea	42, r0, r18
    6c94:	43 07 2d 00 	st.b	r0, 45[sp]
    6c98:	14 5f 00 00 	ld.b	0[r20], r11
    6c9c:	41 a2       	add	1, r20
    6c9e:	d8 5a       	shl	24, r11
    6ca0:	b8 5a       	sar	24, r11
    6ca2:	0b 56 e0 ff 	addi	-32, r11, r10
    6ca6:	f0 51       	cmp	r16, r10
    6ca8:	b3 6d       	bnh	6d7e <__vfiprintf_r+0x246>
    6caa:	43 8f 2d 00 	st.b	r17, 45[sp]
    6cae:	60 5a       	cmp	0, r11
    6cb0:	ba 05       	bne	6cb6 <__vfiprintf_r+0x17e>
    6cb2:	80 07 c0 06 	jr	7372 <__vfiprintf_r+0x83a>
    6cb6:	01 c2       	mov	1, r24
    6cb8:	18 b8       	mov	r24, r23
    6cba:	03 de 3c 00 	addi	60, sp, r27
    6cbe:	43 5f 3c 00 	st.b	r11, 60[sp]
    6cc2:	43 07 2d 00 	st.b	r0, 45[sp]
    6cc6:	00 12       	mov	0, r2
    6cc8:	d9 6e 02 00 	andi	2, r25, r13
    6ccc:	63 6f 0d 00 	st.w	r13, 12[sp]
    6cd0:	a2 05       	be	6cd4 <__vfiprintf_r+0x19c>
    6cd2:	42 c2       	add	2, r24
    6cd4:	d9 76 84 00 	andi	132, r25, r14
    6cd8:	63 77 1d 00 	st.w	r14, 28[sp]
    6cdc:	b2 05       	be	6ce2 <__vfiprintf_r+0x1aa>
    6cde:	80 07 64 04 	jr	7142 <__vfiprintf_r+0x60a>
    6ce2:	23 af 15 00 	ld.w	20[sp], r21
    6ce6:	b8 a9       	sub	r24, r21
    6ce8:	60 aa       	cmp	0, r21
    6cea:	bf 05       	bgt	6cf0 <__vfiprintf_r+0x1b8>
    6cec:	80 07 56 04 	jr	7142 <__vfiprintf_r+0x60a>
    6cf0:	20 86 10 00 	movea	16, r0, r16
    6cf4:	63 ef 25 00 	st.w	r29, 36[sp]
    6cf8:	23 5f 39 00 	ld.w	56[sp], r11
    6cfc:	23 57 35 00 	ld.w	52[sp], r10
    6d00:	f0 a9       	cmp	r16, r21
    6d02:	ef 05       	bgt	6d0e <__vfiprintf_r+0x1d6>
    6d04:	a5 2d       	br	6d58 <__vfiprintf_r+0x220>
    6d06:	50 aa       	add	-16, r21
    6d08:	48 62       	add	8, r12
    6d0a:	f0 a9       	cmp	r16, r21
    6d0c:	e7 25       	ble	6d58 <__vfiprintf_r+0x220>
    6d0e:	0b 5e 10 00 	addi	16, r11, r11
    6d12:	41 52       	add	1, r10
    6d14:	6c ef 01 00 	st.w	r29, 0[r12]
    6d18:	6c 87 05 00 	st.w	r16, 4[r12]
    6d1c:	63 5f 39 00 	st.w	r11, 56[sp]
    6d20:	63 57 35 00 	st.w	r10, 52[sp]
    6d24:	67 52       	cmp	7, r10
    6d26:	87 f5       	ble	6d06 <__vfiprintf_r+0x1ce>
    6d28:	20 46 30 00 	movea	48, r0, r8
    6d2c:	1a 30       	mov	r26, r6
    6d2e:	1c 38       	mov	r28, r7
    6d30:	c3 41       	add	sp, r8
    6d32:	63 87 01 00 	st.w	r16, 0[sp]
    6d36:	bf ff 5a fd 	jarl	6a90 <___sprint_r>, lp
    6d3a:	23 87 01 00 	ld.w	0[sp], r16
    6d3e:	60 52       	cmp	0, r10
    6d40:	b2 05       	be	6d46 <__vfiprintf_r+0x20e>
    6d42:	80 07 44 06 	jr	7386 <__vfiprintf_r+0x84e>
    6d46:	50 aa       	add	-16, r21
    6d48:	23 5f 39 00 	ld.w	56[sp], r11
    6d4c:	23 57 35 00 	ld.w	52[sp], r10
    6d50:	03 66 cc 00 	addi	204, sp, r12
    6d54:	f0 a9       	cmp	r16, r21
    6d56:	cf dd       	bgt	6d0e <__vfiprintf_r+0x1d6>
    6d58:	23 6f 25 00 	ld.w	36[sp], r13
    6d5c:	d5 59       	add	r21, r11
    6d5e:	41 52       	add	1, r10
    6d60:	6c 6f 01 00 	st.w	r13, 0[r12]
    6d64:	6c af 05 00 	st.w	r21, 4[r12]
    6d68:	63 5f 39 00 	st.w	r11, 56[sp]
    6d6c:	63 57 35 00 	st.w	r10, 52[sp]
    6d70:	67 52       	cmp	7, r10
    6d72:	b7 05       	ble	6d78 <__vfiprintf_r+0x240>
    6d74:	80 07 28 09 	jr	769c <__vfiprintf_r+0xb64>
    6d78:	48 62       	add	8, r12
    6d7a:	80 07 d0 03 	jr	714a <__vfiprintf_r+0x612>
    6d7e:	40 76 00 00 	movhi	0, r0, r14
    6d82:	2e 76 96 6d 	movea	28054, r14, r14
    6d86:	c1 52       	shl	1, r10
    6d88:	ce 51       	add	r14, r10
    6d8a:	2a 57 00 00 	ld.h	0[r10], r10
    6d8e:	d0 52       	shl	16, r10
    6d90:	b0 52       	sar	16, r10
    6d92:	ce 51       	add	r14, r10
    6d94:	6a 00       	jmp	[r10]
    6d96:	b8 01       	sub	r24, r0
    6d98:	14 ff 14 ff 	ld.b	-236[r20], lp
    6d9c:	c8 01       	add	r8, r0
    6d9e:	14 ff 14 ff 	ld.b	-236[r20], lp
    6da2:	14 ff 14 ff 	ld.b	-236[r20], lp
    6da6:	14 ff 14 ff 	ld.b	-236[r20], lp
    6daa:	8c 01       	subr	r12, r0
    6dac:	a4 03       	sst.b	r0, 36[ep]
    6dae:	14 ff b0 01 	ld.b	432[r20], lp
    6db2:	56 03       	sld.b	86[ep], r0
    6db4:	14 ff 4e 03 	ld.b	846[r20], lp
    6db8:	d0 01       	add	r16, r0
    6dba:	d0 01       	add	r16, r0
    6dbc:	d0 01       	add	r16, r0
    6dbe:	d0 01       	add	r16, r0
    6dc0:	d0 01       	add	r16, r0
    6dc2:	d0 01       	add	r16, r0
    6dc4:	d0 01       	add	r16, r0
    6dc6:	d0 01       	add	r16, r0
    6dc8:	d0 01       	add	r16, r0
    6dca:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dce:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dd2:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dd6:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dda:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dde:	ba 00       	.short	0x00ba
    6de0:	14 ff 14 ff 	ld.b	-236[r20], lp
    6de4:	14 ff 14 ff 	ld.b	-236[r20], lp
    6de8:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dec:	14 ff 14 ff 	ld.b	-236[r20], lp
    6df0:	14 ff 14 ff 	ld.b	-236[r20], lp
    6df4:	46 01       	and	r6, r0
    6df6:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dfa:	14 ff 14 ff 	ld.b	-236[r20], lp
    6dfe:	14 ff 6c 01 	ld.b	364[r20], lp
    6e02:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e06:	1e 02       	.short	0x021e
    6e08:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e0c:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e10:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e14:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e18:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e1c:	fc 01       	cmp	r28, r0
    6e1e:	be 00       	.short	0x00be
    6e20:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e24:	14 ff 72 02 	ld.b	626[r20], lp
    6e28:	be 00       	.short	0x00be
    6e2a:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e2e:	b2 00       	.short	0x00b2
    6e30:	14 ff 08 03 	ld.b	776[r20], lp
    6e34:	4a 01       	and	r10, r0
    6e36:	d4 02       	shl	20, r0
    6e38:	b2 00       	.short	0x00b2
    6e3a:	14 ff 7a 02 	ld.b	634[r20], lp
    6e3e:	14 ff 70 01 	ld.b	368[r20], lp
    6e42:	14 ff 14 ff 	ld.b	-236[r20], lp
    6e46:	3a 03       	sld.b	58[ep], r0
    6e48:	99 ce 10 00 	ori	16, r25, r25
    6e4c:	bf 07 4c fe 	jr	6c98 <__vfiprintf_r+0x160>
    6e50:	99 ce 10 00 	ori	16, r25, r25
    6e54:	43 8f 2d 00 	st.b	r17, 45[sp]
    6e58:	d9 56 10 00 	andi	16, r25, r10
    6e5c:	ba 05       	bne	6e62 <__vfiprintf_r+0x32a>
    6e5e:	80 07 0a 08 	jr	7668 <__vfiprintf_r+0xb30>
    6e62:	23 77 19 00 	ld.w	24[sp], r14
    6e66:	2e 17 01 00 	ld.w	0[r14], r2
    6e6a:	44 72       	add	4, r14
    6e6c:	63 77 19 00 	st.w	r14, 24[sp]
    6e70:	60 12       	cmp	0, r2
    6e72:	be 05       	bge	6e78 <__vfiprintf_r+0x340>
    6e74:	80 07 14 08 	jr	7688 <__vfiprintf_r+0xb50>
    6e78:	03 5f 2d 00 	ld.b	45[sp], r11
    6e7c:	01 52       	mov	1, r10
    6e7e:	0b a8       	mov	r11, r21
    6e80:	d8 aa       	shl	24, r21
    6e82:	b8 aa       	sar	24, r21
    6e84:	60 c2       	cmp	0, r24
    6e86:	c6 05       	blt	6e8e <__vfiprintf_r+0x356>
    6e88:	20 76 7f ff 	movea	-129, r0, r14
    6e8c:	4e c9       	and	r14, r25
    6e8e:	60 12       	cmp	0, r2
    6e90:	b2 05       	be	6e96 <__vfiprintf_r+0x35e>
    6e92:	80 07 82 04 	jr	7314 <__vfiprintf_r+0x7dc>
    6e96:	60 c2       	cmp	0, r24
    6e98:	b2 05       	be	6e9e <__vfiprintf_r+0x366>
    6e9a:	80 07 7a 04 	jr	7314 <__vfiprintf_r+0x7dc>
    6e9e:	60 52       	cmp	0, r10
    6ea0:	9a 1d       	bne	6ed2 <__vfiprintf_r+0x39a>
    6ea2:	d9 56 01 00 	andi	1, r25, r10
    6ea6:	e2 15       	be	6ed2 <__vfiprintf_r+0x39a>
    6ea8:	20 de 63 00 	movea	99, r0, r27
    6eac:	23 bf 29 00 	ld.w	40[sp], r23
    6eb0:	20 56 30 00 	movea	48, r0, r10
    6eb4:	c3 d9       	add	sp, r27
    6eb6:	43 57 63 00 	st.b	r10, 99[sp]
    6eba:	18 10       	mov	r24, r2
    6ebc:	17 c0       	mov	r23, r24
    6ebe:	e2 b9       	cmp	r2, r23
    6ec0:	ae 05       	bge	6ec4 <__vfiprintf_r+0x38c>
    6ec2:	02 c0       	mov	r2, r24
    6ec4:	60 aa       	cmp	0, r21
    6ec6:	ba 05       	bne	6ecc <__vfiprintf_r+0x394>
    6ec8:	bf 07 00 fe 	jr	6cc8 <__vfiprintf_r+0x190>
    6ecc:	41 c2       	add	1, r24
    6ece:	bf 07 fa fd 	jr	6cc8 <__vfiprintf_r+0x190>
    6ed2:	20 de 64 00 	movea	100, r0, r27
    6ed6:	00 ba       	mov	0, r23
    6ed8:	c3 d9       	add	sp, r27
    6eda:	85 f5       	br	6eba <__vfiprintf_r+0x382>
    6edc:	99 ce 10 00 	ori	16, r25, r25
    6ee0:	d9 56 10 00 	andi	16, r25, r10
    6ee4:	ba 05       	bne	6eea <__vfiprintf_r+0x3b2>
    6ee6:	80 07 64 07 	jr	764a <__vfiprintf_r+0xb12>
    6eea:	23 77 19 00 	ld.w	24[sp], r14
    6eee:	00 52       	mov	0, r10
    6ef0:	2e 17 01 00 	ld.w	0[r14], r2
    6ef4:	44 72       	add	4, r14
    6ef6:	63 77 19 00 	st.w	r14, 24[sp]
    6efa:	00 aa       	mov	0, r21
    6efc:	43 07 2d 00 	st.b	r0, 45[sp]
    6f00:	a5 c5       	br	6e84 <__vfiprintf_r+0x34c>
    6f02:	99 ce 10 00 	ori	16, r25, r25
    6f06:	d9 56 10 00 	andi	16, r25, r10
    6f0a:	ba 05       	bne	6f10 <__vfiprintf_r+0x3d8>
    6f0c:	80 07 1c 07 	jr	7628 <__vfiprintf_r+0xaf0>
    6f10:	23 6f 19 00 	ld.w	24[sp], r13
    6f14:	01 52       	mov	1, r10
    6f16:	2d 17 01 00 	ld.w	0[r13], r2
    6f1a:	44 6a       	add	4, r13
    6f1c:	63 6f 19 00 	st.w	r13, 24[sp]
    6f20:	d5 ed       	br	6efa <__vfiprintf_r+0x3c2>
    6f22:	23 77 19 00 	ld.w	24[sp], r14
    6f26:	23 57 19 00 	ld.w	24[sp], r10
    6f2a:	2e 77 01 00 	ld.w	0[r14], r14
    6f2e:	44 52       	add	4, r10
    6f30:	63 77 15 00 	st.w	r14, 20[sp]
    6f34:	60 72       	cmp	0, r14
    6f36:	b6 05       	blt	6f3c <__vfiprintf_r+0x404>
    6f38:	80 07 9e 07 	jr	76d6 <__vfiprintf_r+0xb9e>
    6f3c:	80 71       	subr	r0, r14
    6f3e:	63 77 15 00 	st.w	r14, 20[sp]
    6f42:	63 57 19 00 	st.w	r10, 24[sp]
    6f46:	99 ce 04 00 	ori	4, r25, r25
    6f4a:	bf 07 4e fd 	jr	6c98 <__vfiprintf_r+0x160>
    6f4e:	60 8a       	cmp	0, r17
    6f50:	b2 05       	be	6f56 <__vfiprintf_r+0x41e>
    6f52:	bf 07 46 fd 	jr	6c98 <__vfiprintf_r+0x160>
    6f56:	20 8e 20 00 	movea	32, r0, r17
    6f5a:	bf 07 3e fd 	jr	6c98 <__vfiprintf_r+0x160>
    6f5e:	99 ce 01 00 	ori	1, r25, r25
    6f62:	bf 07 36 fd 	jr	6c98 <__vfiprintf_r+0x160>
    6f66:	00 aa       	mov	0, r21
    6f68:	14 57 00 00 	ld.b	0[r20], r10
    6f6c:	0b 9e d0 ff 	addi	-48, r11, r19
    6f70:	0a 58       	mov	r10, r11
    6f72:	d8 5a       	shl	24, r11
    6f74:	15 50       	mov	r21, r10
    6f76:	d5 51       	add	r21, r10
    6f78:	b8 5a       	sar	24, r11
    6f7a:	c3 aa       	shl	3, r21
    6f7c:	ca a9       	add	r10, r21
    6f7e:	0b 56 d0 ff 	addi	-48, r11, r10
    6f82:	d3 a9       	add	r19, r21
    6f84:	41 a2       	add	1, r20
    6f86:	69 52       	cmp	9, r10
    6f88:	83 f5       	bnh	6f68 <__vfiprintf_r+0x430>
    6f8a:	63 af 15 00 	st.w	r21, 20[sp]
    6f8e:	bf 07 14 fd 	jr	6ca2 <__vfiprintf_r+0x16a>
    6f92:	23 6f 19 00 	ld.w	24[sp], r13
    6f96:	01 c2       	mov	1, r24
    6f98:	2d 57 01 00 	ld.w	0[r13], r10
    6f9c:	44 6a       	add	4, r13
    6f9e:	43 57 3c 00 	st.b	r10, 60[sp]
    6fa2:	43 07 2d 00 	st.b	r0, 45[sp]
    6fa6:	63 6f 19 00 	st.w	r13, 24[sp]
    6faa:	18 b8       	mov	r24, r23
    6fac:	03 de 3c 00 	addi	60, sp, r27
    6fb0:	bf 07 16 fd 	jr	6cc6 <__vfiprintf_r+0x18e>
    6fb4:	40 56 01 00 	movhi	1, r0, r10
    6fb8:	2a 56 0c a1 	movea	-24308, r10, r10
    6fbc:	43 8f 2d 00 	st.b	r17, 45[sp]
    6fc0:	63 57 21 00 	st.w	r10, 32[sp]
    6fc4:	d9 56 10 00 	andi	16, r25, r10
    6fc8:	ea 05       	bne	6fd4 <__vfiprintf_r+0x49c>
    6fca:	d9 56 40 00 	andi	64, r25, r10
    6fce:	b2 05       	be	6fd4 <__vfiprintf_r+0x49c>
    6fd0:	80 07 7e 07 	jr	774e <__vfiprintf_r+0xc16>
    6fd4:	23 6f 19 00 	ld.w	24[sp], r13
    6fd8:	2d 17 01 00 	ld.w	0[r13], r2
    6fdc:	44 6a       	add	4, r13
    6fde:	63 6f 19 00 	st.w	r13, 24[sp]
    6fe2:	d9 56 01 00 	andi	1, r25, r10
    6fe6:	e2 0d       	be	7002 <__vfiprintf_r+0x4ca>
    6fe8:	60 12       	cmp	0, r2
    6fea:	c2 0d       	be	7002 <__vfiprintf_r+0x4ca>
    6fec:	20 56 30 00 	movea	48, r0, r10
    6ff0:	43 57 2e 00 	st.b	r10, 46[sp]
    6ff4:	43 5f 2f 00 	st.b	r11, 47[sp]
    6ff8:	99 ce 02 00 	ori	2, r25, r25
    6ffc:	02 52       	mov	2, r10
    6ffe:	bf 07 fc fe 	jr	6efa <__vfiprintf_r+0x3c2>
    7002:	02 52       	mov	2, r10
    7004:	bf 07 f6 fe 	jr	6efa <__vfiprintf_r+0x3c2>
    7008:	99 ce 40 00 	ori	64, r25, r25
    700c:	bf 07 8c fc 	jr	6c98 <__vfiprintf_r+0x160>
    7010:	23 5f 19 00 	ld.w	24[sp], r11
    7014:	43 07 2d 00 	st.b	r0, 45[sp]
    7018:	2b df 01 00 	ld.w	0[r11], r27
    701c:	0b 10       	mov	r11, r2
    701e:	44 12       	add	4, r2
    7020:	60 da       	cmp	0, r27
    7022:	ba 05       	bne	7028 <__vfiprintf_r+0x4f0>
    7024:	80 07 94 07 	jr	77b8 <__vfiprintf_r+0xc80>
    7028:	1b 30       	mov	r27, r6
    702a:	60 c2       	cmp	0, r24
    702c:	be 05       	bge	7032 <__vfiprintf_r+0x4fa>
    702e:	80 07 a8 07 	jr	77d6 <__vfiprintf_r+0xc9e>
    7032:	00 3a       	mov	0, r7
    7034:	18 40       	mov	r24, r8
    7036:	63 67 01 00 	st.w	r12, 0[sp]
    703a:	bf ff 92 eb 	jarl	5bcc <_memchr>, lp
    703e:	23 67 01 00 	ld.w	0[sp], r12
    7042:	60 52       	cmp	0, r10
    7044:	ba 05       	bne	704a <__vfiprintf_r+0x512>
    7046:	80 07 42 07 	jr	7788 <__vfiprintf_r+0xc50>
    704a:	0a b8       	mov	r10, r23
    704c:	bb b9       	sub	r27, r23
    704e:	f8 b9       	cmp	r24, r23
    7050:	b7 05       	ble	7056 <__vfiprintf_r+0x51e>
    7052:	80 07 36 07 	jr	7788 <__vfiprintf_r+0xc50>
    7056:	03 5f 2d 00 	ld.b	45[sp], r11
    705a:	63 17 19 00 	st.w	r2, 24[sp]
    705e:	0b a8       	mov	r11, r21
    7060:	d8 aa       	shl	24, r21
    7062:	b8 aa       	sar	24, r21
    7064:	00 12       	mov	0, r2
    7066:	bf 07 56 fe 	jr	6ebc <__vfiprintf_r+0x384>
    706a:	20 56 30 00 	movea	48, r0, r10
    706e:	23 77 19 00 	ld.w	24[sp], r14
    7072:	43 57 2e 00 	st.b	r10, 46[sp]
    7076:	20 56 78 00 	movea	120, r0, r10
    707a:	43 57 2f 00 	st.b	r10, 47[sp]
    707e:	40 56 01 00 	movhi	1, r0, r10
    7082:	2a 56 1d a1 	movea	-24291, r10, r10
    7086:	2e 17 01 00 	ld.w	0[r14], r2
    708a:	44 72       	add	4, r14
    708c:	63 57 21 00 	st.w	r10, 32[sp]
    7090:	99 ce 02 00 	ori	2, r25, r25
    7094:	63 77 19 00 	st.w	r14, 24[sp]
    7098:	02 52       	mov	2, r10
    709a:	bf 07 60 fe 	jr	6efa <__vfiprintf_r+0x3c2>
    709e:	43 8f 2d 00 	st.b	r17, 45[sp]
    70a2:	d9 56 10 00 	andi	16, r25, r10
    70a6:	b2 05       	be	70ac <__vfiprintf_r+0x574>
    70a8:	80 07 64 06 	jr	770c <__vfiprintf_r+0xbd4>
    70ac:	d9 ce 40 00 	andi	64, r25, r25
    70b0:	ba 05       	bne	70b6 <__vfiprintf_r+0x57e>
    70b2:	80 07 ec 06 	jr	779e <__vfiprintf_r+0xc66>
    70b6:	23 6f 19 00 	ld.w	24[sp], r13
    70ba:	23 77 11 00 	ld.w	16[sp], r14
    70be:	2d 57 01 00 	ld.w	0[r13], r10
    70c2:	44 6a       	add	4, r13
    70c4:	63 6f 19 00 	st.w	r13, 24[sp]
    70c8:	6a 77 00 00 	st.h	r14, 0[r10]
    70cc:	bf 07 46 fb 	jr	6c12 <__vfiprintf_r+0xda>
    70d0:	40 56 01 00 	movhi	1, r0, r10
    70d4:	2a 56 1d a1 	movea	-24291, r10, r10
    70d8:	63 57 21 00 	st.w	r10, 32[sp]
    70dc:	43 8f 2d 00 	st.b	r17, 45[sp]
    70e0:	bf 07 e4 fe 	jr	6fc4 <__vfiprintf_r+0x48c>
    70e4:	99 ce 80 00 	ori	128, r25, r25
    70e8:	bf 07 b0 fb 	jr	6c98 <__vfiprintf_r+0x160>
    70ec:	14 5f 00 00 	ld.b	0[r20], r11
    70f0:	41 a2       	add	1, r20
    70f2:	d8 5a       	shl	24, r11
    70f4:	b8 5a       	sar	24, r11
    70f6:	f2 59       	cmp	r18, r11
    70f8:	ba 05       	bne	70fe <__vfiprintf_r+0x5c6>
    70fa:	80 07 0c 07 	jr	7806 <__vfiprintf_r+0xcce>
    70fe:	0b 56 d0 ff 	addi	-48, r11, r10
    7102:	00 12       	mov	0, r2
    7104:	00 c2       	mov	0, r24
    7106:	69 52       	cmp	9, r10
    7108:	b3 05       	bnh	710e <__vfiprintf_r+0x5d6>
    710a:	bf 07 98 fb 	jr	6ca2 <__vfiprintf_r+0x16a>
    710e:	14 5f 00 00 	ld.b	0[r20], r11
    7112:	02 68       	mov	r2, r13
    7114:	c2 69       	add	r2, r13
    7116:	d8 5a       	shl	24, r11
    7118:	c3 12       	shl	3, r2
    711a:	cd 11       	add	r13, r2
    711c:	b8 5a       	sar	24, r11
    711e:	ca 11       	add	r10, r2
    7120:	0b 56 d0 ff 	addi	-48, r11, r10
    7124:	41 a2       	add	1, r20
    7126:	69 52       	cmp	9, r10
    7128:	b3 f5       	bnh	710e <__vfiprintf_r+0x5d6>
    712a:	02 c0       	mov	r2, r24
    712c:	60 12       	cmp	0, r2
    712e:	b6 05       	blt	7134 <__vfiprintf_r+0x5fc>
    7130:	bf 07 72 fb 	jr	6ca2 <__vfiprintf_r+0x16a>
    7134:	1f c2       	mov	-1, r24
    7136:	bf 07 6c fb 	jr	6ca2 <__vfiprintf_r+0x16a>
    713a:	20 8e 2b 00 	movea	43, r0, r17
    713e:	bf 07 5a fb 	jr	6c98 <__vfiprintf_r+0x160>
    7142:	23 5f 39 00 	ld.w	56[sp], r11
    7146:	23 57 35 00 	ld.w	52[sp], r10
    714a:	03 6f 2d 00 	ld.b	45[sp], r13
    714e:	d8 6a       	shl	24, r13
    7150:	b2 15       	be	7176 <__vfiprintf_r+0x63e>
    7152:	03 6e 2d 00 	addi	45, sp, r13
    7156:	41 5a       	add	1, r11
    7158:	41 52       	add	1, r10
    715a:	6c 6f 01 00 	st.w	r13, 0[r12]
    715e:	01 6a       	mov	1, r13
    7160:	6c 6f 05 00 	st.w	r13, 4[r12]
    7164:	63 5f 39 00 	st.w	r11, 56[sp]
    7168:	63 57 35 00 	st.w	r10, 52[sp]
    716c:	67 52       	cmp	7, r10
    716e:	b7 05       	ble	7174 <__vfiprintf_r+0x63c>
    7170:	80 07 68 04 	jr	75d8 <__vfiprintf_r+0xaa0>
    7174:	48 62       	add	8, r12
    7176:	23 77 0d 00 	ld.w	12[sp], r14
    717a:	60 72       	cmp	0, r14
    717c:	b2 15       	be	71a2 <__vfiprintf_r+0x66a>
    717e:	03 6e 2e 00 	addi	46, sp, r13
    7182:	42 5a       	add	2, r11
    7184:	41 52       	add	1, r10
    7186:	6c 6f 01 00 	st.w	r13, 0[r12]
    718a:	02 6a       	mov	2, r13
    718c:	6c 6f 05 00 	st.w	r13, 4[r12]
    7190:	63 5f 39 00 	st.w	r11, 56[sp]
    7194:	63 57 35 00 	st.w	r10, 52[sp]
    7198:	67 52       	cmp	7, r10
    719a:	b7 05       	ble	71a0 <__vfiprintf_r+0x668>
    719c:	80 07 60 04 	jr	75fc <__vfiprintf_r+0xac4>
    71a0:	48 62       	add	8, r12
    71a2:	23 77 1d 00 	ld.w	28[sp], r14
    71a6:	20 6e 80 00 	movea	128, r0, r13
    71aa:	ed 71       	cmp	r13, r14
    71ac:	ba 05       	bne	71b2 <__vfiprintf_r+0x67a>
    71ae:	80 07 1e 02 	jr	73cc <__vfiprintf_r+0x894>
    71b2:	b7 11       	sub	r23, r2
    71b4:	60 12       	cmp	0, r2
    71b6:	f7 3d       	ble	7234 <__vfiprintf_r+0x6fc>
    71b8:	20 6e 10 00 	movea	16, r0, r13
    71bc:	63 b7 0d 00 	st.w	r22, 12[sp]
    71c0:	0d a8       	mov	r13, r21
    71c2:	ed 11       	cmp	r13, r2
    71c4:	ef 05       	bgt	71d0 <__vfiprintf_r+0x698>
    71c6:	e5 25       	br	7212 <__vfiprintf_r+0x6da>
    71c8:	50 12       	add	-16, r2
    71ca:	48 62       	add	8, r12
    71cc:	f5 11       	cmp	r21, r2
    71ce:	a7 25       	ble	7212 <__vfiprintf_r+0x6da>
    71d0:	0b 5e 10 00 	addi	16, r11, r11
    71d4:	41 52       	add	1, r10
    71d6:	6c b7 01 00 	st.w	r22, 0[r12]
    71da:	6c af 05 00 	st.w	r21, 4[r12]
    71de:	63 5f 39 00 	st.w	r11, 56[sp]
    71e2:	63 57 35 00 	st.w	r10, 52[sp]
    71e6:	67 52       	cmp	7, r10
    71e8:	87 f5       	ble	71c8 <__vfiprintf_r+0x690>
    71ea:	20 46 30 00 	movea	48, r0, r8
    71ee:	1a 30       	mov	r26, r6
    71f0:	1c 38       	mov	r28, r7
    71f2:	c3 41       	add	sp, r8
    71f4:	bf ff 9c f8 	jarl	6a90 <___sprint_r>, lp
    71f8:	60 52       	cmp	0, r10
    71fa:	b2 05       	be	7200 <__vfiprintf_r+0x6c8>
    71fc:	80 07 8a 01 	jr	7386 <__vfiprintf_r+0x84e>
    7200:	50 12       	add	-16, r2
    7202:	23 5f 39 00 	ld.w	56[sp], r11
    7206:	23 57 35 00 	ld.w	52[sp], r10
    720a:	03 66 cc 00 	addi	204, sp, r12
    720e:	f5 11       	cmp	r21, r2
    7210:	8f e5       	bgt	71d0 <__vfiprintf_r+0x698>
    7212:	23 77 0d 00 	ld.w	12[sp], r14
    7216:	c2 59       	add	r2, r11
    7218:	41 52       	add	1, r10
    721a:	6c 77 01 00 	st.w	r14, 0[r12]
    721e:	6c 17 05 00 	st.w	r2, 4[r12]
    7222:	63 5f 39 00 	st.w	r11, 56[sp]
    7226:	63 57 35 00 	st.w	r10, 52[sp]
    722a:	67 52       	cmp	7, r10
    722c:	b7 05       	ble	7232 <__vfiprintf_r+0x6fa>
    722e:	80 07 3a 03 	jr	7568 <__vfiprintf_r+0xa30>
    7232:	48 62       	add	8, r12
    7234:	d7 59       	add	r23, r11
    7236:	41 52       	add	1, r10
    7238:	6c df 01 00 	st.w	r27, 0[r12]
    723c:	6c bf 05 00 	st.w	r23, 4[r12]
    7240:	63 5f 39 00 	st.w	r11, 56[sp]
    7244:	63 57 35 00 	st.w	r10, 52[sp]
    7248:	67 52       	cmp	7, r10
    724a:	b7 05       	ble	7250 <__vfiprintf_r+0x718>
    724c:	80 07 10 02 	jr	745c <__vfiprintf_r+0x924>
    7250:	48 62       	add	8, r12
    7252:	d9 ce 04 00 	andi	4, r25, r25
    7256:	a2 45       	be	72da <__vfiprintf_r+0x7a2>
    7258:	23 df 15 00 	ld.w	20[sp], r27
    725c:	b8 d9       	sub	r24, r27
    725e:	60 da       	cmp	0, r27
    7260:	d7 3d       	ble	72da <__vfiprintf_r+0x7a2>
    7262:	20 ce 10 00 	movea	16, r0, r25
    7266:	63 ef 25 00 	st.w	r29, 36[sp]
    726a:	23 57 35 00 	ld.w	52[sp], r10
    726e:	f9 d9       	cmp	r25, r27
    7270:	ef 05       	bgt	727c <__vfiprintf_r+0x744>
    7272:	c5 25       	br	72ba <__vfiprintf_r+0x782>
    7274:	50 da       	add	-16, r27
    7276:	48 62       	add	8, r12
    7278:	f9 d9       	cmp	r25, r27
    727a:	87 25       	ble	72ba <__vfiprintf_r+0x782>
    727c:	0b 5e 10 00 	addi	16, r11, r11
    7280:	41 52       	add	1, r10
    7282:	6c ef 01 00 	st.w	r29, 0[r12]
    7286:	6c cf 05 00 	st.w	r25, 4[r12]
    728a:	63 5f 39 00 	st.w	r11, 56[sp]
    728e:	63 57 35 00 	st.w	r10, 52[sp]
    7292:	67 52       	cmp	7, r10
    7294:	87 f5       	ble	7274 <__vfiprintf_r+0x73c>
    7296:	20 46 30 00 	movea	48, r0, r8
    729a:	1a 30       	mov	r26, r6
    729c:	1c 38       	mov	r28, r7
    729e:	c3 41       	add	sp, r8
    72a0:	bf ff f0 f7 	jarl	6a90 <___sprint_r>, lp
    72a4:	60 52       	cmp	0, r10
    72a6:	8a 75       	bne	7386 <__vfiprintf_r+0x84e>
    72a8:	50 da       	add	-16, r27
    72aa:	23 5f 39 00 	ld.w	56[sp], r11
    72ae:	23 57 35 00 	ld.w	52[sp], r10
    72b2:	03 66 cc 00 	addi	204, sp, r12
    72b6:	f9 d9       	cmp	r25, r27
    72b8:	af e5       	bgt	727c <__vfiprintf_r+0x744>
    72ba:	23 6f 25 00 	ld.w	36[sp], r13
    72be:	db 59       	add	r27, r11
    72c0:	41 52       	add	1, r10
    72c2:	6c 6f 01 00 	st.w	r13, 0[r12]
    72c6:	6c df 05 00 	st.w	r27, 4[r12]
    72ca:	63 5f 39 00 	st.w	r11, 56[sp]
    72ce:	63 57 35 00 	st.w	r10, 52[sp]
    72d2:	67 52       	cmp	7, r10
    72d4:	b7 05       	ble	72da <__vfiprintf_r+0x7a2>
    72d6:	80 07 08 04 	jr	76de <__vfiprintf_r+0xba6>
    72da:	23 77 15 00 	ld.w	20[sp], r14
    72de:	ee c1       	cmp	r14, r24
    72e0:	ae 05       	bge	72e4 <__vfiprintf_r+0x7ac>
    72e2:	0e c0       	mov	r14, r24
    72e4:	23 67 11 00 	ld.w	16[sp], r12
    72e8:	d8 61       	add	r24, r12
    72ea:	63 67 11 00 	st.w	r12, 16[sp]
    72ee:	60 5a       	cmp	0, r11
    72f0:	b2 05       	be	72f6 <__vfiprintf_r+0x7be>
    72f2:	80 07 86 01 	jr	7478 <__vfiprintf_r+0x940>
    72f6:	14 57 00 00 	ld.b	0[r20], r10
    72fa:	63 07 35 00 	st.w	r0, 52[sp]
    72fe:	d8 52       	shl	24, r10
    7300:	b8 52       	sar	24, r10
    7302:	03 66 cc 00 	addi	204, sp, r12
    7306:	60 52       	cmp	0, r10
    7308:	b2 05       	be	730e <__vfiprintf_r+0x7d6>
    730a:	bf 07 16 f9 	jr	6c20 <__vfiprintf_r+0xe8>
    730e:	14 d8       	mov	r20, r27
    7310:	bf 07 62 f9 	jr	6c72 <__vfiprintf_r+0x13a>
    7314:	61 52       	cmp	1, r10
    7316:	ba 05       	bne	731c <__vfiprintf_r+0x7e4>
    7318:	80 07 74 02 	jr	758c <__vfiprintf_r+0xa54>
    731c:	20 de 64 00 	movea	100, r0, r27
    7320:	c3 d9       	add	sp, r27
    7322:	62 52       	cmp	2, r10
    7324:	a2 1d       	be	7358 <__vfiprintf_r+0x820>
    7326:	c2 56 07 00 	andi	7, r2, r10
    732a:	5f da       	add	-1, r27
    732c:	0a 56 30 00 	addi	48, r10, r10
    7330:	5b 57 00 00 	st.b	r10, 0[r27]
    7334:	83 12       	shr	3, r2
    7336:	8a fd       	bne	7326 <__vfiprintf_r+0x7ee>
    7338:	d9 86 01 00 	andi	1, r25, r16
    733c:	1b 88       	mov	r27, r17
    733e:	82 0d       	be	734e <__vfiprintf_r+0x816>
    7340:	20 86 30 00 	movea	48, r0, r16
    7344:	f0 51       	cmp	r16, r10
    7346:	c2 05       	be	734e <__vfiprintf_r+0x816>
    7348:	5f da       	add	-1, r27
    734a:	51 87 ff ff 	st.b	r16, -1[r17]
    734e:	23 bf 09 00 	ld.w	8[sp], r23
    7352:	bb b9       	sub	r27, r23
    7354:	bf 07 66 fb 	jr	6eba <__vfiprintf_r+0x382>
    7358:	23 5f 21 00 	ld.w	32[sp], r11
    735c:	c2 56 0f 00 	andi	15, r2, r10
    7360:	cb 51       	add	r11, r10
    7362:	0a 57 00 00 	ld.b	0[r10], r10
    7366:	5f da       	add	-1, r27
    7368:	5b 57 00 00 	st.b	r10, 0[r27]
    736c:	84 12       	shr	4, r2
    736e:	da f5       	bne	7358 <__vfiprintf_r+0x820>
    7370:	f5 ed       	br	734e <__vfiprintf_r+0x816>
    7372:	23 57 39 00 	ld.w	56[sp], r10
    7376:	60 52       	cmp	0, r10
    7378:	f2 05       	be	7386 <__vfiprintf_r+0x84e>
    737a:	1a 30       	mov	r26, r6
    737c:	1c 38       	mov	r28, r7
    737e:	03 46 30 00 	addi	48, sp, r8
    7382:	bf ff 0e f7 	jarl	6a90 <___sprint_r>, lp
    7386:	dc f7 0c 00 	tst1	6, 12[r28]
    738a:	c2 05       	be	7392 <__vfiprintf_r+0x85a>
    738c:	1f 6a       	mov	-1, r13
    738e:	63 6f 11 00 	st.w	r13, 16[sp]
    7392:	23 ff f9 04 	ld.w	1272[sp], lp
    7396:	23 57 11 00 	ld.w	16[sp], r10
    739a:	23 17 f5 04 	ld.w	1268[sp], r2
    739e:	23 a7 f1 04 	ld.w	1264[sp], r20
    73a2:	23 af ed 04 	ld.w	1260[sp], r21
    73a6:	23 b7 e9 04 	ld.w	1256[sp], r22
    73aa:	23 bf e5 04 	ld.w	1252[sp], r23
    73ae:	23 c7 e1 04 	ld.w	1248[sp], r24
    73b2:	23 cf dd 04 	ld.w	1244[sp], r25
    73b6:	23 d7 d9 04 	ld.w	1240[sp], r26
    73ba:	23 df d5 04 	ld.w	1236[sp], r27
    73be:	23 e7 d1 04 	ld.w	1232[sp], r28
    73c2:	23 ef cd 04 	ld.w	1228[sp], r29
    73c6:	03 1e fc 04 	addi	1276, sp, sp
    73ca:	7f 00       	jmp	[lp]
    73cc:	23 af 15 00 	ld.w	20[sp], r21
    73d0:	b8 a9       	sub	r24, r21
    73d2:	60 aa       	cmp	0, r21
    73d4:	bf 05       	bgt	73da <__vfiprintf_r+0x8a2>
    73d6:	bf 07 dc fd 	jr	71b2 <__vfiprintf_r+0x67a>
    73da:	20 86 10 00 	movea	16, r0, r16
    73de:	63 b7 0d 00 	st.w	r22, 12[sp]
    73e2:	f0 a9       	cmp	r16, r21
    73e4:	ef 05       	bgt	73f0 <__vfiprintf_r+0x8b8>
    73e6:	85 2d       	br	7436 <__vfiprintf_r+0x8fe>
    73e8:	50 aa       	add	-16, r21
    73ea:	48 62       	add	8, r12
    73ec:	f0 a9       	cmp	r16, r21
    73ee:	c7 25       	ble	7436 <__vfiprintf_r+0x8fe>
    73f0:	0b 5e 10 00 	addi	16, r11, r11
    73f4:	41 52       	add	1, r10
    73f6:	6c b7 01 00 	st.w	r22, 0[r12]
    73fa:	6c 87 05 00 	st.w	r16, 4[r12]
    73fe:	63 5f 39 00 	st.w	r11, 56[sp]
    7402:	63 57 35 00 	st.w	r10, 52[sp]
    7406:	67 52       	cmp	7, r10
    7408:	87 f5       	ble	73e8 <__vfiprintf_r+0x8b0>
    740a:	20 46 30 00 	movea	48, r0, r8
    740e:	1a 30       	mov	r26, r6
    7410:	1c 38       	mov	r28, r7
    7412:	c3 41       	add	sp, r8
    7414:	63 87 01 00 	st.w	r16, 0[sp]
    7418:	bf ff 78 f6 	jarl	6a90 <___sprint_r>, lp
    741c:	23 87 01 00 	ld.w	0[sp], r16
    7420:	60 52       	cmp	0, r10
    7422:	aa b5       	bne	7386 <__vfiprintf_r+0x84e>
    7424:	50 aa       	add	-16, r21
    7426:	23 5f 39 00 	ld.w	56[sp], r11
    742a:	23 57 35 00 	ld.w	52[sp], r10
    742e:	03 66 cc 00 	addi	204, sp, r12
    7432:	f0 a9       	cmp	r16, r21
    7434:	ef dd       	bgt	73f0 <__vfiprintf_r+0x8b8>
    7436:	23 6f 0d 00 	ld.w	12[sp], r13
    743a:	d5 59       	add	r21, r11
    743c:	41 52       	add	1, r10
    743e:	6c 6f 01 00 	st.w	r13, 0[r12]
    7442:	6c af 05 00 	st.w	r21, 4[r12]
    7446:	63 5f 39 00 	st.w	r11, 56[sp]
    744a:	63 57 35 00 	st.w	r10, 52[sp]
    744e:	67 52       	cmp	7, r10
    7450:	b7 05       	ble	7456 <__vfiprintf_r+0x91e>
    7452:	80 07 12 03 	jr	7764 <__vfiprintf_r+0xc2c>
    7456:	48 62       	add	8, r12
    7458:	bf 07 5a fd 	jr	71b2 <__vfiprintf_r+0x67a>
    745c:	1a 30       	mov	r26, r6
    745e:	1c 38       	mov	r28, r7
    7460:	03 46 30 00 	addi	48, sp, r8
    7464:	bf ff 2c f6 	jarl	6a90 <___sprint_r>, lp
    7468:	60 52       	cmp	0, r10
    746a:	ea 8d       	bne	7386 <__vfiprintf_r+0x84e>
    746c:	23 5f 39 00 	ld.w	56[sp], r11
    7470:	03 66 cc 00 	addi	204, sp, r12
    7474:	bf 07 de fd 	jr	7252 <__vfiprintf_r+0x71a>
    7478:	1a 30       	mov	r26, r6
    747a:	1c 38       	mov	r28, r7
    747c:	03 46 30 00 	addi	48, sp, r8
    7480:	bf ff 10 f6 	jarl	6a90 <___sprint_r>, lp
    7484:	60 52       	cmp	0, r10
    7486:	ba 05       	bne	748c <__vfiprintf_r+0x954>
    7488:	bf 07 6e fe 	jr	72f6 <__vfiprintf_r+0x7be>
    748c:	bf 07 fa fe 	jr	7386 <__vfiprintf_r+0x84e>
    7490:	1a 30       	mov	r26, r6
    7492:	1c 38       	mov	r28, r7
    7494:	bf ff 04 bc 	jarl	3098 <___swsetup_r>, lp
    7498:	60 52       	cmp	0, r10
    749a:	b2 05       	be	74a0 <__vfiprintf_r+0x968>
    749c:	bf 07 f0 fe 	jr	738c <__vfiprintf_r+0x854>
    74a0:	3c 57 0c 00 	ld.h	12[r28], r10
    74a4:	d0 52       	shl	16, r10
    74a6:	b0 52       	sar	16, r10
    74a8:	ca 5e 1a 00 	andi	26, r10, r11
    74ac:	6a 5a       	cmp	10, r11
    74ae:	b2 05       	be	74b4 <__vfiprintf_r+0x97c>
    74b0:	bf 07 20 f7 	jr	6bd0 <__vfiprintf_r+0x98>
    74b4:	3c 5f 0e 00 	ld.h	14[r28], r11
    74b8:	d0 5a       	shl	16, r11
    74ba:	b0 5a       	sar	16, r11
    74bc:	60 5a       	cmp	0, r11
    74be:	be 05       	bge	74c4 <__vfiprintf_r+0x98c>
    74c0:	bf 07 10 f7 	jr	6bd0 <__vfiprintf_r+0x98>
    74c4:	3c 87 65 00 	ld.w	100[r28], r16
    74c8:	3c 7f 1d 00 	ld.w	28[r28], r15
    74cc:	3c 77 25 00 	ld.w	36[r28], r14
    74d0:	1d 62       	mov	-3, r12
    74d2:	20 3e 64 00 	movea	100, r0, r7
    74d6:	23 4f 19 00 	ld.w	24[sp], r9
    74da:	4c 51       	and	r12, r10
    74dc:	03 6e cc 00 	addi	204, sp, r13
    74e0:	20 66 00 04 	movea	1024, r0, r12
    74e4:	1a 30       	mov	r26, r6
    74e6:	c3 39       	add	sp, r7
    74e8:	1d 40       	mov	r29, r8
    74ea:	63 57 70 00 	st.h	r10, 112[sp]
    74ee:	63 87 c9 00 	st.w	r16, 200[sp]
    74f2:	63 5f 72 00 	st.h	r11, 114[sp]
    74f6:	63 7f 81 00 	st.w	r15, 128[sp]
    74fa:	63 77 89 00 	st.w	r14, 136[sp]
    74fe:	63 6f 65 00 	st.w	r13, 100[sp]
    7502:	63 6f 75 00 	st.w	r13, 116[sp]
    7506:	63 67 6d 00 	st.w	r12, 108[sp]
    750a:	63 67 79 00 	st.w	r12, 120[sp]
    750e:	63 07 7d 00 	st.w	r0, 124[sp]
    7512:	bf ff 26 f6 	jarl	6b38 <__vfiprintf_r>, lp
    7516:	63 57 11 00 	st.w	r10, 16[sp]
    751a:	60 52       	cmp	0, r10
    751c:	b6 0d       	blt	7532 <__vfiprintf_r+0x9fa>
    751e:	20 3e 64 00 	movea	100, r0, r7
    7522:	1a 30       	mov	r26, r6
    7524:	c3 39       	add	sp, r7
    7526:	bf ff 22 d6 	jarl	4b48 <__fflush_r>, lp
    752a:	60 52       	cmp	0, r10
    752c:	b2 05       	be	7532 <__vfiprintf_r+0x9fa>
    752e:	80 07 ce 02 	jr	77fc <__vfiprintf_r+0xcc4>
    7532:	c3 f7 70 00 	tst1	6, 112[sp]
    7536:	ba 05       	bne	753c <__vfiprintf_r+0xa04>
    7538:	bf 07 5a fe 	jr	7392 <__vfiprintf_r+0x85a>
    753c:	3c 57 0c 00 	ld.h	12[r28], r10
    7540:	8a 56 40 00 	ori	64, r10, r10
    7544:	7c 57 0c 00 	st.h	r10, 12[r28]
    7548:	bf 07 4a fe 	jr	7392 <__vfiprintf_r+0x85a>
    754c:	1a 30       	mov	r26, r6
    754e:	1c 38       	mov	r28, r7
    7550:	03 46 30 00 	addi	48, sp, r8
    7554:	bf ff 3c f5 	jarl	6a90 <___sprint_r>, lp
    7558:	60 52       	cmp	0, r10
    755a:	b2 05       	be	7560 <__vfiprintf_r+0xa28>
    755c:	bf 07 2a fe 	jr	7386 <__vfiprintf_r+0x84e>
    7560:	03 66 cc 00 	addi	204, sp, r12
    7564:	bf 07 04 f7 	jr	6c68 <__vfiprintf_r+0x130>
    7568:	1a 30       	mov	r26, r6
    756a:	1c 38       	mov	r28, r7
    756c:	03 46 30 00 	addi	48, sp, r8
    7570:	bf ff 20 f5 	jarl	6a90 <___sprint_r>, lp
    7574:	60 52       	cmp	0, r10
    7576:	b2 05       	be	757c <__vfiprintf_r+0xa44>
    7578:	bf 07 0e fe 	jr	7386 <__vfiprintf_r+0x84e>
    757c:	23 5f 39 00 	ld.w	56[sp], r11
    7580:	23 57 35 00 	ld.w	52[sp], r10
    7584:	03 66 cc 00 	addi	204, sp, r12
    7588:	bf 07 ac fc 	jr	7234 <__vfiprintf_r+0x6fc>
    758c:	69 12       	cmp	9, r2
    758e:	bb 05       	bh	7594 <__vfiprintf_r+0xa5c>
    7590:	80 07 30 01 	jr	76c0 <__vfiprintf_r+0xb88>
    7594:	20 de 64 00 	movea	100, r0, r27
    7598:	40 be 01 00 	movhi	1, r0, r23
    759c:	c3 d9       	add	sp, r27
    759e:	37 be 88 8b 	movea	-29816, r23, r23
    75a2:	02 30       	mov	r2, r6
    75a4:	0a 3a       	mov	10, r7
    75a6:	63 67 01 00 	st.w	r12, 0[sp]
    75aa:	80 ff 3e 16 	jarl	8be8 <___umodsi3>, lp
    75ae:	0a 56 30 00 	addi	48, r10, r10
    75b2:	02 30       	mov	r2, r6
    75b4:	5f da       	add	-1, r27
    75b6:	0a 3a       	mov	10, r7
    75b8:	5b 57 00 00 	st.b	r10, 0[r27]
    75bc:	80 ff 04 00 	jarl	75c0 <__vfiprintf_r+0xa88>, lp
    75c0:	44 fa       	add	4, lp
    75c2:	77 00       	jmp	[r23]
    75c4:	0a 10       	mov	r10, r2
    75c6:	23 67 01 00 	ld.w	0[sp], r12
    75ca:	60 52       	cmp	0, r10
    75cc:	ba ed       	bne	75a2 <__vfiprintf_r+0xa6a>
    75ce:	23 bf 09 00 	ld.w	8[sp], r23
    75d2:	bb b9       	sub	r27, r23
    75d4:	bf 07 e6 f8 	jr	6eba <__vfiprintf_r+0x382>
    75d8:	1a 30       	mov	r26, r6
    75da:	1c 38       	mov	r28, r7
    75dc:	03 46 30 00 	addi	48, sp, r8
    75e0:	bf ff b0 f4 	jarl	6a90 <___sprint_r>, lp
    75e4:	60 52       	cmp	0, r10
    75e6:	b2 05       	be	75ec <__vfiprintf_r+0xab4>
    75e8:	bf 07 9e fd 	jr	7386 <__vfiprintf_r+0x84e>
    75ec:	23 5f 39 00 	ld.w	56[sp], r11
    75f0:	23 57 35 00 	ld.w	52[sp], r10
    75f4:	03 66 cc 00 	addi	204, sp, r12
    75f8:	bf 07 7e fb 	jr	7176 <__vfiprintf_r+0x63e>
    75fc:	1a 30       	mov	r26, r6
    75fe:	1c 38       	mov	r28, r7
    7600:	03 46 30 00 	addi	48, sp, r8
    7604:	bf ff 8c f4 	jarl	6a90 <___sprint_r>, lp
    7608:	60 52       	cmp	0, r10
    760a:	b2 05       	be	7610 <__vfiprintf_r+0xad8>
    760c:	bf 07 7a fd 	jr	7386 <__vfiprintf_r+0x84e>
    7610:	23 5f 39 00 	ld.w	56[sp], r11
    7614:	23 57 35 00 	ld.w	52[sp], r10
    7618:	03 66 cc 00 	addi	204, sp, r12
    761c:	bf 07 86 fb 	jr	71a2 <__vfiprintf_r+0x66a>
    7620:	bf ff 90 d6 	jarl	4cb0 <___sinit>, lp
    7624:	bf 07 62 f5 	jr	6b86 <__vfiprintf_r+0x4e>
    7628:	d9 56 40 00 	andi	64, r25, r10
    762c:	ba 05       	bne	7632 <__vfiprintf_r+0xafa>
    762e:	80 07 0c 01 	jr	773a <__vfiprintf_r+0xc02>
    7632:	23 77 19 00 	ld.w	24[sp], r14
    7636:	01 52       	mov	1, r10
    7638:	2e 17 01 00 	ld.w	0[r14], r2
    763c:	44 72       	add	4, r14
    763e:	c2 16 ff ff 	andi	65535, r2, r2
    7642:	63 77 19 00 	st.w	r14, 24[sp]
    7646:	bf 07 b4 f8 	jr	6efa <__vfiprintf_r+0x3c2>
    764a:	d9 56 40 00 	andi	64, r25, r10
    764e:	c2 6d       	be	7726 <__vfiprintf_r+0xbee>
    7650:	23 5f 19 00 	ld.w	24[sp], r11
    7654:	00 52       	mov	0, r10
    7656:	2b 17 01 00 	ld.w	0[r11], r2
    765a:	44 5a       	add	4, r11
    765c:	c2 16 ff ff 	andi	65535, r2, r2
    7660:	63 5f 19 00 	st.w	r11, 24[sp]
    7664:	bf 07 96 f8 	jr	6efa <__vfiprintf_r+0x3c2>
    7668:	d9 56 40 00 	andi	64, r25, r10
    766c:	f2 45       	be	76fa <__vfiprintf_r+0xbc2>
    766e:	23 5f 19 00 	ld.w	24[sp], r11
    7672:	2b 17 01 00 	ld.w	0[r11], r2
    7676:	44 5a       	add	4, r11
    7678:	d0 12       	shl	16, r2
    767a:	63 5f 19 00 	st.w	r11, 24[sp]
    767e:	b0 12       	sar	16, r2
    7680:	60 12       	cmp	0, r2
    7682:	b6 05       	blt	7688 <__vfiprintf_r+0xb50>
    7684:	bf 07 f4 f7 	jr	6e78 <__vfiprintf_r+0x340>
    7688:	20 56 2d 00 	movea	45, r0, r10
    768c:	43 57 2d 00 	st.b	r10, 45[sp]
    7690:	80 11       	subr	r0, r2
    7692:	20 ae 2d 00 	movea	45, r0, r21
    7696:	01 52       	mov	1, r10
    7698:	bf 07 ec f7 	jr	6e84 <__vfiprintf_r+0x34c>
    769c:	1a 30       	mov	r26, r6
    769e:	1c 38       	mov	r28, r7
    76a0:	03 46 30 00 	addi	48, sp, r8
    76a4:	bf ff ec f3 	jarl	6a90 <___sprint_r>, lp
    76a8:	60 52       	cmp	0, r10
    76aa:	b2 05       	be	76b0 <__vfiprintf_r+0xb78>
    76ac:	bf 07 da fc 	jr	7386 <__vfiprintf_r+0x84e>
    76b0:	23 5f 39 00 	ld.w	56[sp], r11
    76b4:	23 57 35 00 	ld.w	52[sp], r10
    76b8:	03 66 cc 00 	addi	204, sp, r12
    76bc:	bf 07 8e fa 	jr	714a <__vfiprintf_r+0x612>
    76c0:	02 16 30 00 	addi	48, r2, r2
    76c4:	20 de 63 00 	movea	99, r0, r27
    76c8:	43 17 63 00 	st.b	r2, 99[sp]
    76cc:	23 bf 29 00 	ld.w	40[sp], r23
    76d0:	c3 d9       	add	sp, r27
    76d2:	bf 07 e8 f7 	jr	6eba <__vfiprintf_r+0x382>
    76d6:	63 57 19 00 	st.w	r10, 24[sp]
    76da:	bf 07 be f5 	jr	6c98 <__vfiprintf_r+0x160>
    76de:	1a 30       	mov	r26, r6
    76e0:	1c 38       	mov	r28, r7
    76e2:	03 46 30 00 	addi	48, sp, r8
    76e6:	bf ff aa f3 	jarl	6a90 <___sprint_r>, lp
    76ea:	60 52       	cmp	0, r10
    76ec:	b2 05       	be	76f2 <__vfiprintf_r+0xbba>
    76ee:	bf 07 98 fc 	jr	7386 <__vfiprintf_r+0x84e>
    76f2:	23 5f 39 00 	ld.w	56[sp], r11
    76f6:	bf 07 e4 fb 	jr	72da <__vfiprintf_r+0x7a2>
    76fa:	23 6f 19 00 	ld.w	24[sp], r13
    76fe:	2d 17 01 00 	ld.w	0[r13], r2
    7702:	44 6a       	add	4, r13
    7704:	63 6f 19 00 	st.w	r13, 24[sp]
    7708:	bf 07 68 f7 	jr	6e70 <__vfiprintf_r+0x338>
    770c:	23 77 19 00 	ld.w	24[sp], r14
    7710:	23 5f 11 00 	ld.w	16[sp], r11
    7714:	2e 57 01 00 	ld.w	0[r14], r10
    7718:	44 72       	add	4, r14
    771a:	63 77 19 00 	st.w	r14, 24[sp]
    771e:	6a 5f 01 00 	st.w	r11, 0[r10]
    7722:	bf 07 f0 f4 	jr	6c12 <__vfiprintf_r+0xda>
    7726:	23 6f 19 00 	ld.w	24[sp], r13
    772a:	00 52       	mov	0, r10
    772c:	2d 17 01 00 	ld.w	0[r13], r2
    7730:	44 6a       	add	4, r13
    7732:	63 6f 19 00 	st.w	r13, 24[sp]
    7736:	bf 07 c4 f7 	jr	6efa <__vfiprintf_r+0x3c2>
    773a:	23 5f 19 00 	ld.w	24[sp], r11
    773e:	01 52       	mov	1, r10
    7740:	2b 17 01 00 	ld.w	0[r11], r2
    7744:	44 5a       	add	4, r11
    7746:	63 5f 19 00 	st.w	r11, 24[sp]
    774a:	bf 07 b0 f7 	jr	6efa <__vfiprintf_r+0x3c2>
    774e:	23 77 19 00 	ld.w	24[sp], r14
    7752:	2e 17 01 00 	ld.w	0[r14], r2
    7756:	44 72       	add	4, r14
    7758:	63 77 19 00 	st.w	r14, 24[sp]
    775c:	c2 16 ff ff 	andi	65535, r2, r2
    7760:	bf 07 82 f8 	jr	6fe2 <__vfiprintf_r+0x4aa>
    7764:	1a 30       	mov	r26, r6
    7766:	1c 38       	mov	r28, r7
    7768:	03 46 30 00 	addi	48, sp, r8
    776c:	bf ff 24 f3 	jarl	6a90 <___sprint_r>, lp
    7770:	60 52       	cmp	0, r10
    7772:	b2 05       	be	7778 <__vfiprintf_r+0xc40>
    7774:	bf 07 12 fc 	jr	7386 <__vfiprintf_r+0x84e>
    7778:	23 5f 39 00 	ld.w	56[sp], r11
    777c:	23 57 35 00 	ld.w	52[sp], r10
    7780:	03 66 cc 00 	addi	204, sp, r12
    7784:	bf 07 2e fa 	jr	71b2 <__vfiprintf_r+0x67a>
    7788:	03 5f 2d 00 	ld.b	45[sp], r11
    778c:	63 17 19 00 	st.w	r2, 24[sp]
    7790:	0b a8       	mov	r11, r21
    7792:	d8 aa       	shl	24, r21
    7794:	18 b8       	mov	r24, r23
    7796:	b8 aa       	sar	24, r21
    7798:	00 12       	mov	0, r2
    779a:	bf 07 22 f7 	jr	6ebc <__vfiprintf_r+0x384>
    779e:	23 5f 19 00 	ld.w	24[sp], r11
    77a2:	23 6f 11 00 	ld.w	16[sp], r13
    77a6:	2b 57 01 00 	ld.w	0[r11], r10
    77aa:	44 5a       	add	4, r11
    77ac:	63 5f 19 00 	st.w	r11, 24[sp]
    77b0:	6a 6f 01 00 	st.w	r13, 0[r10]
    77b4:	bf 07 5e f4 	jr	6c12 <__vfiprintf_r+0xda>
    77b8:	18 b8       	mov	r24, r23
    77ba:	66 c2       	cmp	6, r24
    77bc:	a3 05       	bnh	77c0 <__vfiprintf_r+0xc88>
    77be:	06 ba       	mov	6, r23
    77c0:	17 c0       	mov	r23, r24
    77c2:	60 ba       	cmp	0, r23
    77c4:	a6 1d       	blt	77f8 <__vfiprintf_r+0xcc0>
    77c6:	40 de 01 00 	movhi	1, r0, r27
    77ca:	63 17 19 00 	st.w	r2, 24[sp]
    77ce:	3b de 2e a1 	movea	-24274, r27, r27
    77d2:	bf 07 f4 f4 	jr	6cc6 <__vfiprintf_r+0x18e>
    77d6:	63 67 01 00 	st.w	r12, 0[sp]
    77da:	bf ff 86 f2 	jarl	6a60 <_strlen>, lp
    77de:	03 5f 2d 00 	ld.b	45[sp], r11
    77e2:	63 17 19 00 	st.w	r2, 24[sp]
    77e6:	0b a8       	mov	r11, r21
    77e8:	d8 aa       	shl	24, r21
    77ea:	0a b8       	mov	r10, r23
    77ec:	b8 aa       	sar	24, r21
    77ee:	00 12       	mov	0, r2
    77f0:	23 67 01 00 	ld.w	0[sp], r12
    77f4:	bf 07 c8 f6 	jr	6ebc <__vfiprintf_r+0x384>
    77f8:	00 c2       	mov	0, r24
    77fa:	e5 e5       	br	77c6 <__vfiprintf_r+0xc8e>
    77fc:	1f 6a       	mov	-1, r13
    77fe:	63 6f 11 00 	st.w	r13, 16[sp]
    7802:	bf 07 30 fd 	jr	7532 <__vfiprintf_r+0x9fa>
    7806:	23 5f 19 00 	ld.w	24[sp], r11
    780a:	2b c7 01 00 	ld.w	0[r11], r24
    780e:	0b 50       	mov	r11, r10
    7810:	44 52       	add	4, r10
    7812:	60 c2       	cmp	0, r24
    7814:	b6 05       	blt	781a <__vfiprintf_r+0xce2>
    7816:	bf 07 c0 fe 	jr	76d6 <__vfiprintf_r+0xb9e>
    781a:	63 57 19 00 	st.w	r10, 24[sp]
    781e:	1f c2       	mov	-1, r24
    7820:	bf 07 78 f4 	jr	6c98 <__vfiprintf_r+0x160>

00007824 <_vfiprintf>:
    7824:	06 58       	mov	r6, r11
    7826:	07 50       	mov	r7, r10
    7828:	24 37 bd 08 	ld.w	2236[gp], r6
    782c:	5c 1a       	add	-4, sp
    782e:	08 48       	mov	r8, r9
    7830:	0b 38       	mov	r11, r7
    7832:	0a 40       	mov	r10, r8
    7834:	63 ff 01 00 	st.w	lp, 0[sp]
    7838:	bf ff 00 f3 	jarl	6b38 <__vfiprintf_r>, lp
    783c:	bf 07 4c 9c 	jr	1488 <__return_r31>

00007840 <__write_r>:
    7840:	54 1a       	add	-12, sp
    7842:	63 e7 05 00 	st.w	r28, 4[sp]
    7846:	63 ef 01 00 	st.w	r29, 0[sp]
    784a:	06 e0       	mov	r6, r28
    784c:	40 ee 01 00 	movhi	1, r0, r29
    7850:	07 30       	mov	r7, r6
    7852:	08 38       	mov	r8, r7
    7854:	09 40       	mov	r9, r8
    7856:	63 ff 09 00 	st.w	lp, 8[sp]
    785a:	7d 07 09 ad 	st.w	r0, -21240[r29]
    785e:	80 ff c2 0f 	jarl	8820 <__write>, lp
    7862:	7f 52       	cmp	-1, r10
    7864:	b2 05       	be	786a <__write_r+0x2a>
    7866:	bf 07 02 9c 	jr	1468 <__return_r28_r31>
    786a:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    786e:	60 5a       	cmp	0, r11
    7870:	b2 fd       	be	7866 <__write_r+0x26>
    7872:	7c 5f 01 00 	st.w	r11, 0[r28]
    7876:	bf 07 f2 9b 	jr	1468 <__return_r28_r31>
	...

0000787c <__calloc_r>:
    787c:	58 1a       	add	-8, sp
    787e:	63 ef 01 00 	st.w	r29, 0[sp]
    7882:	06 e8       	mov	r6, r29
    7884:	08 30       	mov	r8, r6
    7886:	63 ff 05 00 	st.w	lp, 4[sp]
    788a:	80 ff 8e 12 	jarl	8b18 <___mulsi3>, lp
    788e:	1d 30       	mov	r29, r6
    7890:	0a 38       	mov	r10, r7
    7892:	bf ff 22 dc 	jarl	54b4 <__malloc_r>, lp
    7896:	0a e8       	mov	r10, r29
    7898:	60 52       	cmp	0, r10
    789a:	d2 15       	be	78c4 <__calloc_r+0x48>
    789c:	2a 47 fd ff 	ld.w	-4[r10], r8
    78a0:	1c 5a       	mov	-4, r11
    78a2:	4b 41       	and	r11, r8
    78a4:	20 56 24 00 	movea	36, r0, r10
    78a8:	cb 41       	add	r11, r8
    78aa:	ea 41       	cmp	r10, r8
    78ac:	8b 25       	bh	78ec <__calloc_r+0x70>
    78ae:	20 5e 13 00 	movea	19, r0, r11
    78b2:	eb 41       	cmp	r11, r8
    78b4:	bb 0d       	bh	78ca <__calloc_r+0x4e>
    78b6:	1d 50       	mov	r29, r10
    78b8:	6a 07 01 00 	st.w	r0, 0[r10]
    78bc:	6a 07 05 00 	st.w	r0, 4[r10]
    78c0:	6a 07 09 00 	st.w	r0, 8[r10]
    78c4:	1d 50       	mov	r29, r10
    78c6:	bf 07 b4 9b 	jr	147a <__return_r29_r31>
    78ca:	7d 07 01 00 	st.w	r0, 0[r29]
    78ce:	7d 07 05 00 	st.w	r0, 4[r29]
    78d2:	20 5e 1b 00 	movea	27, r0, r11
    78d6:	eb 41       	cmp	r11, r8
    78d8:	93 15       	bnh	78fa <__calloc_r+0x7e>
    78da:	7d 07 09 00 	st.w	r0, 8[r29]
    78de:	7d 07 0d 00 	st.w	r0, 12[r29]
    78e2:	ea 41       	cmp	r10, r8
    78e4:	e2 0d       	be	7900 <__calloc_r+0x84>
    78e6:	1d 56 10 00 	addi	16, r29, r10
    78ea:	f5 e5       	br	78b8 <__calloc_r+0x3c>
    78ec:	1d 30       	mov	r29, r6
    78ee:	00 3a       	mov	0, r7
    78f0:	bf ff 18 9d 	jarl	1608 <_memset>, lp
    78f4:	1d 50       	mov	r29, r10
    78f6:	bf 07 84 9b 	jr	147a <__return_r29_r31>
    78fa:	1d 56 08 00 	addi	8, r29, r10
    78fe:	d5 dd       	br	78b8 <__calloc_r+0x3c>
    7900:	7d 07 11 00 	st.w	r0, 16[r29]
    7904:	7d 07 15 00 	st.w	r0, 20[r29]
    7908:	1d 56 18 00 	addi	24, r29, r10
    790c:	e5 d5       	br	78b8 <__calloc_r+0x3c>
	...

00007910 <__close_r>:
    7910:	54 1a       	add	-12, sp
    7912:	63 e7 05 00 	st.w	r28, 4[sp]
    7916:	63 ef 01 00 	st.w	r29, 0[sp]
    791a:	06 e0       	mov	r6, r28
    791c:	40 ee 01 00 	movhi	1, r0, r29
    7920:	07 30       	mov	r7, r6
    7922:	63 ff 09 00 	st.w	lp, 8[sp]
    7926:	7d 07 09 ad 	st.w	r0, -21240[r29]
    792a:	80 ff 26 0f 	jarl	8850 <__close>, lp
    792e:	7f 52       	cmp	-1, r10
    7930:	b2 05       	be	7936 <__close_r+0x26>
    7932:	bf 07 36 9b 	jr	1468 <__return_r28_r31>
    7936:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    793a:	60 5a       	cmp	0, r11
    793c:	b2 fd       	be	7932 <__close_r+0x22>
    793e:	7c 5f 01 00 	st.w	r11, 0[r28]
    7942:	bf 07 26 9b 	jr	1468 <__return_r28_r31>
	...

00007948 <__fclose_r>:
    7948:	50 1a       	add	-16, sp
    794a:	63 e7 05 00 	st.w	r28, 4[sp]
    794e:	63 ef 01 00 	st.w	r29, 0[sp]
    7952:	63 ff 0d 00 	st.w	lp, 12[sp]
    7956:	63 df 09 00 	st.w	r27, 8[sp]
    795a:	07 e8       	mov	r7, r29
    795c:	06 e0       	mov	r6, r28
    795e:	60 3a       	cmp	0, r7
    7960:	b2 0d       	be	7976 <__fclose_r+0x2e>
    7962:	60 32       	cmp	0, r6
    7964:	d2 05       	be	796e <__fclose_r+0x26>
    7966:	26 57 39 00 	ld.w	56[r6], r10
    796a:	60 52       	cmp	0, r10
    796c:	d2 3d       	be	79e6 <__fclose_r+0x9e>
    796e:	3d 57 0c 00 	ld.h	12[r29], r10
    7972:	d0 52       	shl	16, r10
    7974:	da 05       	bne	797e <__fclose_r+0x36>
    7976:	00 da       	mov	0, r27
    7978:	1b 50       	mov	r27, r10
    797a:	80 07 8a 14 	jr	8e04 <__return_r27_r31>
    797e:	1c 30       	mov	r28, r6
    7980:	1d 38       	mov	r29, r7
    7982:	bf ff c6 d1 	jarl	4b48 <__fflush_r>, lp
    7986:	0a d8       	mov	r10, r27
    7988:	3d 57 2d 00 	ld.w	44[r29], r10
    798c:	60 52       	cmp	0, r10
    798e:	a2 0d       	be	79a2 <__fclose_r+0x5a>
    7990:	3d 3f 1d 00 	ld.w	28[r29], r7
    7994:	1c 30       	mov	r28, r6
    7996:	80 ff 04 00 	jarl	799a <__fclose_r+0x52>, lp
    799a:	44 fa       	add	4, lp
    799c:	6a 00       	jmp	[r10]
    799e:	60 52       	cmp	0, r10
    79a0:	e6 25       	blt	79ec <__fclose_r+0xa4>
    79a2:	dd ff 0c 00 	tst1	7, 12[r29]
    79a6:	da 25       	bne	79f0 <__fclose_r+0xa8>
    79a8:	3d 3f 31 00 	ld.w	48[r29], r7
    79ac:	60 3a       	cmp	0, r7
    79ae:	a2 0d       	be	79c2 <__fclose_r+0x7a>
    79b0:	1d 56 40 00 	addi	64, r29, r10
    79b4:	ea 39       	cmp	r10, r7
    79b6:	c2 05       	be	79be <__fclose_r+0x76>
    79b8:	1c 30       	mov	r28, r6
    79ba:	bf ff 66 d5 	jarl	4f20 <__free_r>, lp
    79be:	7d 07 31 00 	st.w	r0, 48[r29]
    79c2:	3d 3f 45 00 	ld.w	68[r29], r7
    79c6:	60 3a       	cmp	0, r7
    79c8:	e2 05       	be	79d4 <__fclose_r+0x8c>
    79ca:	1c 30       	mov	r28, r6
    79cc:	bf ff 54 d5 	jarl	4f20 <__free_r>, lp
    79d0:	7d 07 45 00 	st.w	r0, 68[r29]
    79d4:	bf ff 1c d4 	jarl	4df0 <___sfp_lock_acquire>, lp
    79d8:	7d 07 0c 00 	st.h	r0, 12[r29]
    79dc:	bf ff 18 d4 	jarl	4df4 <___sfp_lock_release>, lp
    79e0:	1b 50       	mov	r27, r10
    79e2:	80 07 22 14 	jr	8e04 <__return_r27_r31>
    79e6:	bf ff ca d2 	jarl	4cb0 <___sinit>, lp
    79ea:	a5 c5       	br	796e <__fclose_r+0x26>
    79ec:	1f da       	mov	-1, r27
    79ee:	a5 dd       	br	79a2 <__fclose_r+0x5a>
    79f0:	3d 3f 11 00 	ld.w	16[r29], r7
    79f4:	1c 30       	mov	r28, r6
    79f6:	bf ff 2a d5 	jarl	4f20 <__free_r>, lp
    79fa:	f5 d5       	br	79a8 <__fclose_r+0x60>

000079fc <_fclose>:
    79fc:	06 38       	mov	r6, r7
    79fe:	24 37 bd 08 	ld.w	2236[gp], r6
    7a02:	5c 1a       	add	-4, sp
    7a04:	63 ff 01 00 	st.w	lp, 0[sp]
    7a08:	bf ff 40 ff 	jarl	7948 <__fclose_r>, lp
    7a0c:	bf 07 7c 9a 	jr	1488 <__return_r31>

00007a10 <__fputwc_r>:
    7a10:	03 1e e4 ff 	addi	-28, sp, sp
    7a14:	63 d7 11 00 	st.w	r26, 16[sp]
    7a18:	63 df 0d 00 	st.w	r27, 12[sp]
    7a1c:	63 ef 05 00 	st.w	r29, 4[sp]
    7a20:	63 ff 19 00 	st.w	lp, 24[sp]
    7a24:	63 cf 15 00 	st.w	r25, 20[sp]
    7a28:	63 e7 09 00 	st.w	r28, 8[sp]
    7a2c:	28 57 0c 00 	ld.h	12[r8], r10
    7a30:	40 5e 00 20 	movhi	8192, r0, r11
    7a34:	d0 52       	shl	16, r10
    7a36:	4a 59       	and	r10, r11
    7a38:	08 e8       	mov	r8, r29
    7a3a:	06 d0       	mov	r6, r26
    7a3c:	07 d8       	mov	r7, r27
    7a3e:	b0 52       	sar	16, r10
    7a40:	60 5a       	cmp	0, r11
    7a42:	ba 0d       	bne	7a58 <__fputwc_r+0x48>
    7a44:	28 5f 65 00 	ld.w	100[r8], r11
    7a48:	8a 56 00 20 	ori	8192, r10, r10
    7a4c:	8b 5e 00 20 	ori	8192, r11, r11
    7a50:	68 57 0c 00 	st.h	r10, 12[r8]
    7a54:	68 5f 65 00 	st.w	r11, 100[r8]
    7a58:	bf ff b0 d8 	jarl	5308 <___locale_mb_cur_max>, lp
    7a5c:	61 52       	cmp	1, r10
    7a5e:	92 65       	be	7b20 <__fputwc_r+0x110>
    7a60:	1a 30       	mov	r26, r6
    7a62:	03 3e 03 00 	addi	3, sp, r7
    7a66:	1b 40       	mov	r27, r8
    7a68:	1d 4e 5c 00 	addi	92, r29, r9
    7a6c:	80 ff ac 0c 	jarl	8718 <__wcrtomb_r>, lp
    7a70:	0a c8       	mov	r10, r25
    7a72:	7f 52       	cmp	-1, r10
    7a74:	a2 3d       	be	7ae8 <__fputwc_r+0xd8>
    7a76:	60 52       	cmp	0, r10
    7a78:	92 45       	be	7afa <__fputwc_r+0xea>
    7a7a:	00 e2       	mov	0, r28
    7a7c:	f5 0d       	br	7a9a <__fputwc_r+0x8a>
    7a7e:	3d 5f 01 00 	ld.w	0[r29], r11
    7a82:	0c 67 00 00 	ld.b	0[r12], r12
    7a86:	4b 67 00 00 	st.b	r12, 0[r11]
    7a8a:	3d 5f 01 00 	ld.w	0[r29], r11
    7a8e:	41 5a       	add	1, r11
    7a90:	7d 5f 01 00 	st.w	r11, 0[r29]
    7a94:	41 e2       	add	1, r28
    7a96:	f9 e1       	cmp	r25, r28
    7a98:	99 35       	bnl	7afa <__fputwc_r+0xea>
    7a9a:	3d 5f 09 00 	ld.w	8[r29], r11
    7a9e:	03 62       	mov	3, r12
    7aa0:	5f 5a       	add	-1, r11
    7aa2:	c3 61       	add	sp, r12
    7aa4:	7d 5f 09 00 	st.w	r11, 8[r29]
    7aa8:	dc 61       	add	r28, r12
    7aaa:	60 5a       	cmp	0, r11
    7aac:	9e ed       	bge	7a7e <__fputwc_r+0x6e>
    7aae:	0c 68       	mov	r12, r13
    7ab0:	3d 67 19 00 	ld.w	24[r29], r12
    7ab4:	00 52       	mov	0, r10
    7ab6:	ec 59       	cmp	r12, r11
    7ab8:	d6 25       	blt	7b02 <__fputwc_r+0xf2>
    7aba:	3d 5f 01 00 	ld.w	0[r29], r11
    7abe:	0d 67 00 00 	ld.b	0[r13], r12
    7ac2:	4b 67 00 00 	st.b	r12, 0[r11]
    7ac6:	3d 5f 01 00 	ld.w	0[r29], r11
    7aca:	0b 3f 00 00 	ld.b	0[r11], r7
    7ace:	41 5a       	add	1, r11
    7ad0:	c7 3e ff 00 	andi	255, r7, r7
    7ad4:	6a 3a       	cmp	10, r7
    7ad6:	f2 2d       	be	7b34 <__fputwc_r+0x124>
    7ad8:	7d 5f 01 00 	st.w	r11, 0[r29]
    7adc:	60 52       	cmp	0, r10
    7ade:	b2 dd       	be	7a94 <__fputwc_r+0x84>
    7ae0:	44 1a       	add	4, sp
    7ae2:	1f 52       	mov	-1, r10
    7ae4:	80 07 b0 12 	jr	8d94 <__return_r25_r31>
    7ae8:	3d 5f 0c 00 	ld.h	12[r29], r11
    7aec:	44 1a       	add	4, sp
    7aee:	8b 5e 40 00 	ori	64, r11, r11
    7af2:	7d 5f 0c 00 	st.h	r11, 12[r29]
    7af6:	80 07 9e 12 	jr	8d94 <__return_r25_r31>
    7afa:	44 1a       	add	4, sp
    7afc:	1b 50       	mov	r27, r10
    7afe:	80 07 96 12 	jr	8d94 <__return_r25_r31>
    7b02:	03 52       	mov	3, r10
    7b04:	c3 51       	add	sp, r10
    7b06:	dc 51       	add	r28, r10
    7b08:	0a 3f 00 00 	ld.b	0[r10], r7
    7b0c:	1a 30       	mov	r26, r6
    7b0e:	c7 3e ff 00 	andi	255, r7, r7
    7b12:	1d 40       	mov	r29, r8
    7b14:	80 ff f4 0a 	jarl	8608 <___swbuf_r>, lp
    7b18:	7f 52       	cmp	-1, r10
    7b1a:	e2 57 00 00 	setf	z, r10
    7b1e:	f5 dd       	br	7adc <__fputwc_r+0xcc>
    7b20:	60 da       	cmp	0, r27
    7b22:	f7 9d       	ble	7a60 <__fputwc_r+0x50>
    7b24:	20 5e ff 00 	movea	255, r0, r11
    7b28:	eb d9       	cmp	r11, r27
    7b2a:	bf 9d       	bgt	7a60 <__fputwc_r+0x50>
    7b2c:	0a c8       	mov	r10, r25
    7b2e:	43 df 03 00 	st.b	r27, 3[sp]
    7b32:	c5 a5       	br	7a7a <__fputwc_r+0x6a>
    7b34:	1a 30       	mov	r26, r6
    7b36:	1d 40       	mov	r29, r8
    7b38:	80 ff d0 0a 	jarl	8608 <___swbuf_r>, lp
    7b3c:	7f 52       	cmp	-1, r10
    7b3e:	e2 57 00 00 	setf	z, r10
    7b42:	d5 cd       	br	7adc <__fputwc_r+0xcc>

00007b44 <_fputwc>:
    7b44:	54 1a       	add	-12, sp
    7b46:	24 57 bd 08 	ld.w	2236[gp], r10
    7b4a:	63 ef 05 00 	st.w	r29, 4[sp]
    7b4e:	63 ff 09 00 	st.w	lp, 8[sp]
    7b52:	06 e8       	mov	r6, r29
    7b54:	07 40       	mov	r7, r8
    7b56:	60 52       	cmp	0, r10
    7b58:	e2 0d       	be	7b74 <_fputwc+0x30>
    7b5a:	2a 5f 39 00 	ld.w	56[r10], r11
    7b5e:	60 5a       	cmp	0, r11
    7b60:	aa 0d       	bne	7b74 <_fputwc+0x30>
    7b62:	0a 30       	mov	r10, r6
    7b64:	63 3f 01 00 	st.w	r7, 0[sp]
    7b68:	bf ff 48 d1 	jarl	4cb0 <___sinit>, lp
    7b6c:	24 57 bd 08 	ld.w	2236[gp], r10
    7b70:	23 47 01 00 	ld.w	0[sp], r8
    7b74:	0a 30       	mov	r10, r6
    7b76:	1d 38       	mov	r29, r7
    7b78:	bf ff 98 fe 	jarl	7a10 <__fputwc_r>, lp
    7b7c:	44 1a       	add	4, sp
    7b7e:	bf 07 fc 98 	jr	147a <__return_r29_r31>
	...

00007b84 <__fstat_r>:
    7b84:	54 1a       	add	-12, sp
    7b86:	63 e7 05 00 	st.w	r28, 4[sp]
    7b8a:	63 ef 01 00 	st.w	r29, 0[sp]
    7b8e:	06 e0       	mov	r6, r28
    7b90:	40 ee 01 00 	movhi	1, r0, r29
    7b94:	07 30       	mov	r7, r6
    7b96:	08 38       	mov	r8, r7
    7b98:	63 ff 09 00 	st.w	lp, 8[sp]
    7b9c:	7d 07 09 ad 	st.w	r0, -21240[r29]
    7ba0:	80 ff c8 0c 	jarl	8868 <__fstat>, lp
    7ba4:	7f 52       	cmp	-1, r10
    7ba6:	b2 05       	be	7bac <__fstat_r+0x28>
    7ba8:	bf 07 c0 98 	jr	1468 <__return_r28_r31>
    7bac:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    7bb0:	60 5a       	cmp	0, r11
    7bb2:	b2 fd       	be	7ba8 <__fstat_r+0x24>
    7bb4:	7c 5f 01 00 	st.w	r11, 0[r28]
    7bb8:	bf 07 b0 98 	jr	1468 <__return_r28_r31>

00007bbc <___sfvwrite_r>:
    7bbc:	03 1e d4 ff 	addi	-44, sp, sp
    7bc0:	63 c7 15 00 	st.w	r24, 20[sp]
    7bc4:	63 cf 11 00 	st.w	r25, 16[sp]
    7bc8:	63 ef 01 00 	st.w	r29, 0[sp]
    7bcc:	63 ff 29 00 	st.w	lp, 40[sp]
    7bd0:	63 a7 25 00 	st.w	r20, 36[sp]
    7bd4:	63 af 21 00 	st.w	r21, 32[sp]
    7bd8:	63 b7 1d 00 	st.w	r22, 28[sp]
    7bdc:	63 bf 19 00 	st.w	r23, 24[sp]
    7be0:	63 d7 0d 00 	st.w	r26, 12[sp]
    7be4:	63 df 09 00 	st.w	r27, 8[sp]
    7be8:	63 e7 05 00 	st.w	r28, 4[sp]
    7bec:	28 57 09 00 	ld.w	8[r8], r10
    7bf0:	08 c8       	mov	r8, r25
    7bf2:	06 c0       	mov	r6, r24
    7bf4:	07 e8       	mov	r7, r29
    7bf6:	60 52       	cmp	0, r10
    7bf8:	b2 35       	be	7c5e <___sfvwrite_r+0xa2>
    7bfa:	27 57 0c 00 	ld.h	12[r7], r10
    7bfe:	40 5e 08 00 	movhi	8, r0, r11
    7c02:	d0 52       	shl	16, r10
    7c04:	4a 59       	and	r10, r11
    7c06:	b0 52       	sar	16, r10
    7c08:	60 5a       	cmp	0, r11
    7c0a:	d2 2d       	be	7c64 <___sfvwrite_r+0xa8>
    7c0c:	27 5f 11 00 	ld.w	16[r7], r11
    7c10:	60 5a       	cmp	0, r11
    7c12:	92 2d       	be	7c64 <___sfvwrite_r+0xa8>
    7c14:	ca 5e 02 00 	andi	2, r10, r11
    7c18:	39 e7 01 00 	ld.w	0[r25], r28
    7c1c:	d2 35       	be	7c86 <___sfvwrite_r+0xca>
    7c1e:	00 d2       	mov	0, r26
    7c20:	00 da       	mov	0, r27
    7c22:	20 be 00 04 	movea	1024, r0, r23
    7c26:	1a 40       	mov	r26, r8
    7c28:	18 30       	mov	r24, r6
    7c2a:	60 da       	cmp	0, r27
    7c2c:	c2 75       	be	7d14 <___sfvwrite_r+0x158>
    7c2e:	1b 48       	mov	r27, r9
    7c30:	3d 3f 1d 00 	ld.w	28[r29], r7
    7c34:	f7 d9       	cmp	r23, r27
    7c36:	b3 05       	bnh	7c3c <___sfvwrite_r+0x80>
    7c38:	20 4e 00 04 	movea	1024, r0, r9
    7c3c:	3d 57 25 00 	ld.w	36[r29], r10
    7c40:	80 ff 04 00 	jarl	7c44 <___sfvwrite_r+0x88>, lp
    7c44:	44 fa       	add	4, lp
    7c46:	6a 00       	jmp	[r10]
    7c48:	60 52       	cmp	0, r10
    7c4a:	a7 7d       	ble	7d3e <___sfvwrite_r+0x182>
    7c4c:	39 5f 09 00 	ld.w	8[r25], r11
    7c50:	ca d1       	add	r10, r26
    7c52:	aa 59       	sub	r10, r11
    7c54:	79 5f 09 00 	st.w	r11, 8[r25]
    7c58:	aa d9       	sub	r10, r27
    7c5a:	60 5a       	cmp	0, r11
    7c5c:	da e5       	bne	7c26 <___sfvwrite_r+0x6a>
    7c5e:	00 52       	mov	0, r10
    7c60:	80 07 e8 0f 	jr	8c48 <__return_r20_r31>
    7c64:	18 30       	mov	r24, r6
    7c66:	1d 38       	mov	r29, r7
    7c68:	bf ff 30 b4 	jarl	3098 <___swsetup_r>, lp
    7c6c:	60 52       	cmp	0, r10
    7c6e:	b2 05       	be	7c74 <___sfvwrite_r+0xb8>
    7c70:	80 07 f0 02 	jr	7f60 <___sfvwrite_r+0x3a4>
    7c74:	3d 57 0c 00 	ld.h	12[r29], r10
    7c78:	39 e7 01 00 	ld.w	0[r25], r28
    7c7c:	d0 52       	shl	16, r10
    7c7e:	b0 52       	sar	16, r10
    7c80:	ca 5e 02 00 	andi	2, r10, r11
    7c84:	da cd       	bne	7c1e <___sfvwrite_r+0x62>
    7c86:	ca 5e 01 00 	andi	1, r10, r11
    7c8a:	00 ba       	mov	0, r23
    7c8c:	a2 65       	be	7d50 <___sfvwrite_r+0x194>
    7c8e:	00 a2       	mov	0, r20
    7c90:	00 aa       	mov	0, r21
    7c92:	00 da       	mov	0, r27
    7c94:	60 da       	cmp	0, r27
    7c96:	82 3d       	be	7d06 <___sfvwrite_r+0x14a>
    7c98:	60 a2       	cmp	0, r20
    7c9a:	ba 05       	bne	7ca0 <___sfvwrite_r+0xe4>
    7c9c:	80 07 cc 01 	jr	7e68 <___sfvwrite_r+0x2ac>
    7ca0:	17 b0       	mov	r23, r22
    7ca2:	fb b9       	cmp	r27, r23
    7ca4:	a3 05       	bnh	7ca8 <___sfvwrite_r+0xec>
    7ca6:	1b b0       	mov	r27, r22
    7ca8:	3d 37 01 00 	ld.w	0[r29], r6
    7cac:	3d 57 11 00 	ld.w	16[r29], r10
    7cb0:	3d d7 09 00 	ld.w	8[r29], r26
    7cb4:	3d 4f 15 00 	ld.w	20[r29], r9
    7cb8:	ea 31       	cmp	r10, r6
    7cba:	e3 05       	bnh	7cc6 <___sfvwrite_r+0x10a>
    7cbc:	c9 d1       	add	r9, r26
    7cbe:	fa b1       	cmp	r26, r22
    7cc0:	b7 05       	ble	7cc6 <___sfvwrite_r+0x10a>
    7cc2:	80 07 48 02 	jr	7f0a <___sfvwrite_r+0x34e>
    7cc6:	e9 b1       	cmp	r9, r22
    7cc8:	be 05       	bge	7cce <___sfvwrite_r+0x112>
    7cca:	80 07 36 01 	jr	7e00 <___sfvwrite_r+0x244>
    7cce:	3d 57 25 00 	ld.w	36[r29], r10
    7cd2:	3d 3f 1d 00 	ld.w	28[r29], r7
    7cd6:	18 30       	mov	r24, r6
    7cd8:	15 40       	mov	r21, r8
    7cda:	80 ff 04 00 	jarl	7cde <___sfvwrite_r+0x122>, lp
    7cde:	44 fa       	add	4, lp
    7ce0:	6a 00       	jmp	[r10]
    7ce2:	0a d0       	mov	r10, r26
    7ce4:	60 52       	cmp	0, r10
    7ce6:	c7 2d       	ble	7d3e <___sfvwrite_r+0x182>
    7ce8:	ba b9       	sub	r26, r23
    7cea:	ba 05       	bne	7cf0 <___sfvwrite_r+0x134>
    7cec:	80 07 3a 01 	jr	7e26 <___sfvwrite_r+0x26a>
    7cf0:	39 57 09 00 	ld.w	8[r25], r10
    7cf4:	da a9       	add	r26, r21
    7cf6:	ba 51       	sub	r26, r10
    7cf8:	79 57 09 00 	st.w	r10, 8[r25]
    7cfc:	ba d9       	sub	r26, r27
    7cfe:	60 52       	cmp	0, r10
    7d00:	f2 ad       	be	7c5e <___sfvwrite_r+0xa2>
    7d02:	60 da       	cmp	0, r27
    7d04:	aa cd       	bne	7c98 <___sfvwrite_r+0xdc>
    7d06:	3c af 01 00 	ld.w	0[r28], r21
    7d0a:	3c df 05 00 	ld.w	4[r28], r27
    7d0e:	00 a2       	mov	0, r20
    7d10:	48 e2       	add	8, r28
    7d12:	95 c5       	br	7c94 <___sfvwrite_r+0xd8>
    7d14:	3c d7 01 00 	ld.w	0[r28], r26
    7d18:	3c df 05 00 	ld.w	4[r28], r27
    7d1c:	48 e2       	add	8, r28
    7d1e:	c5 85       	br	7c26 <___sfvwrite_r+0x6a>
    7d20:	80 ff 3c 03 	jarl	805c <__realloc_r>, lp
    7d24:	0a a8       	mov	r10, r21
    7d26:	60 52       	cmp	0, r10
    7d28:	b2 05       	be	7d2e <___sfvwrite_r+0x172>
    7d2a:	80 07 be 01 	jr	7ee8 <___sfvwrite_r+0x32c>
    7d2e:	3d 3f 11 00 	ld.w	16[r29], r7
    7d32:	18 30       	mov	r24, r6
    7d34:	bf ff ec d1 	jarl	4f20 <__free_r>, lp
    7d38:	0c 52       	mov	12, r10
    7d3a:	78 57 01 00 	st.w	r10, 0[r24]
    7d3e:	3d 5f 0c 00 	ld.h	12[r29], r11
    7d42:	1f 52       	mov	-1, r10
    7d44:	8b 5e 40 00 	ori	64, r11, r11
    7d48:	7d 5f 0c 00 	st.h	r11, 12[r29]
    7d4c:	80 07 fc 0e 	jr	8c48 <__return_r20_r31>
    7d50:	00 da       	mov	0, r27
    7d52:	60 da       	cmp	0, r27
    7d54:	a2 35       	be	7db8 <___sfvwrite_r+0x1fc>
    7d56:	ca 5e 00 02 	andi	512, r10, r11
    7d5a:	3d d7 09 00 	ld.w	8[r29], r26
    7d5e:	b2 35       	be	7dc4 <___sfvwrite_r+0x208>
    7d60:	1a a0       	mov	r26, r20
    7d62:	fa d9       	cmp	r26, r27
    7d64:	a1 6d       	bl	7e38 <___sfvwrite_r+0x27c>
    7d66:	ca 5e 80 04 	andi	1152, r10, r11
    7d6a:	b2 05       	be	7d70 <___sfvwrite_r+0x1b4>
    7d6c:	80 07 16 01 	jr	7e82 <___sfvwrite_r+0x2c6>
    7d70:	3d 37 01 00 	ld.w	0[r29], r6
    7d74:	1a a8       	mov	r26, r21
    7d76:	1b b0       	mov	r27, r22
    7d78:	1b d0       	mov	r27, r26
    7d7a:	17 38       	mov	r23, r7
    7d7c:	14 40       	mov	r20, r8
    7d7e:	80 ff 5e 02 	jarl	7fdc <_memmove>, lp
    7d82:	3d 5f 09 00 	ld.w	8[r29], r11
    7d86:	3d 57 01 00 	ld.w	0[r29], r10
    7d8a:	b5 59       	sub	r21, r11
    7d8c:	d4 51       	add	r20, r10
    7d8e:	7d 5f 09 00 	st.w	r11, 8[r29]
    7d92:	7d 57 01 00 	st.w	r10, 0[r29]
    7d96:	39 57 09 00 	ld.w	8[r25], r10
    7d9a:	d6 b9       	add	r22, r23
    7d9c:	ba 51       	sub	r26, r10
    7d9e:	79 57 09 00 	st.w	r10, 8[r25]
    7da2:	b6 d9       	sub	r22, r27
    7da4:	60 52       	cmp	0, r10
    7da6:	ba 05       	bne	7dac <___sfvwrite_r+0x1f0>
    7da8:	bf 07 b6 fe 	jr	7c5e <___sfvwrite_r+0xa2>
    7dac:	3d 57 0c 00 	ld.h	12[r29], r10
    7db0:	d0 52       	shl	16, r10
    7db2:	b0 52       	sar	16, r10
    7db4:	60 da       	cmp	0, r27
    7db6:	8a d5       	bne	7d56 <___sfvwrite_r+0x19a>
    7db8:	3c bf 01 00 	ld.w	0[r28], r23
    7dbc:	3c df 05 00 	ld.w	4[r28], r27
    7dc0:	48 e2       	add	8, r28
    7dc2:	85 cd       	br	7d52 <___sfvwrite_r+0x196>
    7dc4:	3d 37 01 00 	ld.w	0[r29], r6
    7dc8:	3d 57 11 00 	ld.w	16[r29], r10
    7dcc:	ea 31       	cmp	r10, r6
    7dce:	e3 05       	bnh	7dda <___sfvwrite_r+0x21e>
    7dd0:	1a b0       	mov	r26, r22
    7dd2:	fa d9       	cmp	r26, r27
    7dd4:	b3 05       	bnh	7dda <___sfvwrite_r+0x21e>
    7dd6:	80 07 5a 01 	jr	7f30 <___sfvwrite_r+0x374>
    7dda:	3d 4f 15 00 	ld.w	20[r29], r9
    7dde:	e9 d9       	cmp	r9, r27
    7de0:	b1 35       	bl	7e46 <___sfvwrite_r+0x28a>
    7de2:	3d 57 25 00 	ld.w	36[r29], r10
    7de6:	3d 3f 1d 00 	ld.w	28[r29], r7
    7dea:	18 30       	mov	r24, r6
    7dec:	17 40       	mov	r23, r8
    7dee:	80 ff 04 00 	jarl	7df2 <___sfvwrite_r+0x236>, lp
    7df2:	44 fa       	add	4, lp
    7df4:	6a 00       	jmp	[r10]
    7df6:	0a d0       	mov	r10, r26
    7df8:	60 52       	cmp	0, r10
    7dfa:	a7 a5       	ble	7d3e <___sfvwrite_r+0x182>
    7dfc:	0a b0       	mov	r10, r22
    7dfe:	c5 cd       	br	7d96 <___sfvwrite_r+0x1da>
    7e00:	15 38       	mov	r21, r7
    7e02:	16 40       	mov	r22, r8
    7e04:	80 ff d8 01 	jarl	7fdc <_memmove>, lp
    7e08:	3d 5f 09 00 	ld.w	8[r29], r11
    7e0c:	3d 57 01 00 	ld.w	0[r29], r10
    7e10:	b6 59       	sub	r22, r11
    7e12:	d6 51       	add	r22, r10
    7e14:	16 d0       	mov	r22, r26
    7e16:	7d 5f 09 00 	st.w	r11, 8[r29]
    7e1a:	7d 57 01 00 	st.w	r10, 0[r29]
    7e1e:	ba b9       	sub	r26, r23
    7e20:	b2 05       	be	7e26 <___sfvwrite_r+0x26a>
    7e22:	bf 07 ce fe 	jr	7cf0 <___sfvwrite_r+0x134>
    7e26:	18 30       	mov	r24, r6
    7e28:	1d 38       	mov	r29, r7
    7e2a:	bf ff 1e cd 	jarl	4b48 <__fflush_r>, lp
    7e2e:	60 52       	cmp	0, r10
    7e30:	fa 85       	bne	7d3e <___sfvwrite_r+0x182>
    7e32:	00 a2       	mov	0, r20
    7e34:	bf 07 bc fe 	jr	7cf0 <___sfvwrite_r+0x134>
    7e38:	3d 37 01 00 	ld.w	0[r29], r6
    7e3c:	1b a8       	mov	r27, r21
    7e3e:	1b b0       	mov	r27, r22
    7e40:	1b d0       	mov	r27, r26
    7e42:	1b a0       	mov	r27, r20
    7e44:	b5 9d       	br	7d7a <___sfvwrite_r+0x1be>
    7e46:	17 38       	mov	r23, r7
    7e48:	1b 40       	mov	r27, r8
    7e4a:	80 ff 92 01 	jarl	7fdc <_memmove>, lp
    7e4e:	3d 5f 09 00 	ld.w	8[r29], r11
    7e52:	3d 57 01 00 	ld.w	0[r29], r10
    7e56:	bb 59       	sub	r27, r11
    7e58:	db 51       	add	r27, r10
    7e5a:	1b d0       	mov	r27, r26
    7e5c:	1b b0       	mov	r27, r22
    7e5e:	7d 5f 09 00 	st.w	r11, 8[r29]
    7e62:	7d 57 01 00 	st.w	r10, 0[r29]
    7e66:	85 9d       	br	7d96 <___sfvwrite_r+0x1da>
    7e68:	15 30       	mov	r21, r6
    7e6a:	0a 3a       	mov	10, r7
    7e6c:	1b 40       	mov	r27, r8
    7e6e:	bf ff 5e dd 	jarl	5bcc <_memchr>, lp
    7e72:	60 52       	cmp	0, r10
    7e74:	92 75       	be	7f56 <___sfvwrite_r+0x39a>
    7e76:	0a be 01 00 	addi	1, r10, r23
    7e7a:	b5 b9       	sub	r21, r23
    7e7c:	01 a2       	mov	1, r20
    7e7e:	bf 07 22 fe 	jr	7ca0 <___sfvwrite_r+0xe4>
    7e82:	3d 67 15 00 	ld.w	20[r29], r12
    7e86:	3d 3f 11 00 	ld.w	16[r29], r7
    7e8a:	0c 58       	mov	r12, r11
    7e8c:	cc 59       	add	r12, r11
    7e8e:	cc 59       	add	r12, r11
    7e90:	3d b7 01 00 	ld.w	0[r29], r22
    7e94:	0b d0       	mov	r11, r26
    7e96:	a7 b1       	sub	r7, r22
    7e98:	9f d2       	shr	31, r26
    7e9a:	cb d1       	add	r11, r26
    7e9c:	16 5e 01 00 	addi	1, r22, r11
    7ea0:	a1 d2       	sar	1, r26
    7ea2:	db 59       	add	r27, r11
    7ea4:	1a 40       	mov	r26, r8
    7ea6:	eb d1       	cmp	r11, r26
    7ea8:	b9 05       	bnl	7eae <___sfvwrite_r+0x2f2>
    7eaa:	0b d0       	mov	r11, r26
    7eac:	0b 40       	mov	r11, r8
    7eae:	ca 56 00 04 	andi	1024, r10, r10
    7eb2:	18 30       	mov	r24, r6
    7eb4:	ba 05       	bne	7eba <___sfvwrite_r+0x2fe>
    7eb6:	bf 07 6a fe 	jr	7d20 <___sfvwrite_r+0x164>
    7eba:	08 38       	mov	r8, r7
    7ebc:	bf ff f8 d5 	jarl	54b4 <__malloc_r>, lp
    7ec0:	0a a8       	mov	r10, r21
    7ec2:	60 52       	cmp	0, r10
    7ec4:	ba 05       	bne	7eca <___sfvwrite_r+0x30e>
    7ec6:	bf 07 72 fe 	jr	7d38 <___sfvwrite_r+0x17c>
    7eca:	3d 3f 11 00 	ld.w	16[r29], r7
    7ece:	0a 30       	mov	r10, r6
    7ed0:	16 40       	mov	r22, r8
    7ed2:	bf ff 32 dd 	jarl	5c04 <_memcpy>, lp
    7ed6:	3d 57 0c 00 	ld.h	12[r29], r10
    7eda:	20 5e 7f fb 	movea	-1153, r0, r11
    7ede:	4b 51       	and	r11, r10
    7ee0:	8a 56 80 00 	ori	128, r10, r10
    7ee4:	7d 57 0c 00 	st.h	r10, 12[r29]
    7ee8:	15 30       	mov	r21, r6
    7eea:	d6 31       	add	r22, r6
    7eec:	9a b1       	subr	r26, r22
    7eee:	7d af 11 00 	st.w	r21, 16[r29]
    7ef2:	7d d7 15 00 	st.w	r26, 20[r29]
    7ef6:	7d b7 09 00 	st.w	r22, 8[r29]
    7efa:	7d 37 01 00 	st.w	r6, 0[r29]
    7efe:	1b a8       	mov	r27, r21
    7f00:	1b b0       	mov	r27, r22
    7f02:	1b d0       	mov	r27, r26
    7f04:	1b a0       	mov	r27, r20
    7f06:	bf 07 74 fe 	jr	7d7a <___sfvwrite_r+0x1be>
    7f0a:	15 38       	mov	r21, r7
    7f0c:	1a 40       	mov	r26, r8
    7f0e:	80 ff ce 00 	jarl	7fdc <_memmove>, lp
    7f12:	3d 57 01 00 	ld.w	0[r29], r10
    7f16:	18 30       	mov	r24, r6
    7f18:	da 51       	add	r26, r10
    7f1a:	1d 38       	mov	r29, r7
    7f1c:	7d 57 01 00 	st.w	r10, 0[r29]
    7f20:	bf ff 28 cc 	jarl	4b48 <__fflush_r>, lp
    7f24:	60 52       	cmp	0, r10
    7f26:	ba 05       	bne	7f2c <___sfvwrite_r+0x370>
    7f28:	bf 07 c0 fd 	jr	7ce8 <___sfvwrite_r+0x12c>
    7f2c:	bf 07 12 fe 	jr	7d3e <___sfvwrite_r+0x182>
    7f30:	17 38       	mov	r23, r7
    7f32:	1a 40       	mov	r26, r8
    7f34:	80 ff a8 00 	jarl	7fdc <_memmove>, lp
    7f38:	3d 57 01 00 	ld.w	0[r29], r10
    7f3c:	18 30       	mov	r24, r6
    7f3e:	da 51       	add	r26, r10
    7f40:	1d 38       	mov	r29, r7
    7f42:	7d 57 01 00 	st.w	r10, 0[r29]
    7f46:	bf ff 02 cc 	jarl	4b48 <__fflush_r>, lp
    7f4a:	60 52       	cmp	0, r10
    7f4c:	ba 05       	bne	7f52 <___sfvwrite_r+0x396>
    7f4e:	bf 07 48 fe 	jr	7d96 <___sfvwrite_r+0x1da>
    7f52:	bf 07 ec fd 	jr	7d3e <___sfvwrite_r+0x182>
    7f56:	1b be 01 00 	addi	1, r27, r23
    7f5a:	01 a2       	mov	1, r20
    7f5c:	bf 07 44 fd 	jr	7ca0 <___sfvwrite_r+0xe4>
    7f60:	1f 52       	mov	-1, r10
    7f62:	bf 07 fe fc 	jr	7c60 <___sfvwrite_r+0xa4>
	...

00007f68 <__isatty_r>:
    7f68:	54 1a       	add	-12, sp
    7f6a:	63 e7 05 00 	st.w	r28, 4[sp]
    7f6e:	63 ef 01 00 	st.w	r29, 0[sp]
    7f72:	06 e0       	mov	r6, r28
    7f74:	40 ee 01 00 	movhi	1, r0, r29
    7f78:	07 30       	mov	r7, r6
    7f7a:	63 ff 09 00 	st.w	lp, 8[sp]
    7f7e:	7d 07 09 ad 	st.w	r0, -21240[r29]
    7f82:	80 ff 02 09 	jarl	8884 <__isatty>, lp
    7f86:	7f 52       	cmp	-1, r10
    7f88:	b2 05       	be	7f8e <__isatty_r+0x26>
    7f8a:	bf 07 de 94 	jr	1468 <__return_r28_r31>
    7f8e:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    7f92:	60 5a       	cmp	0, r11
    7f94:	b2 fd       	be	7f8a <__isatty_r+0x22>
    7f96:	7c 5f 01 00 	st.w	r11, 0[r28]
    7f9a:	bf 07 ce 94 	jr	1468 <__return_r28_r31>
	...

00007fa0 <__lseek_r>:
    7fa0:	54 1a       	add	-12, sp
    7fa2:	63 e7 05 00 	st.w	r28, 4[sp]
    7fa6:	63 ef 01 00 	st.w	r29, 0[sp]
    7faa:	06 e0       	mov	r6, r28
    7fac:	40 ee 01 00 	movhi	1, r0, r29
    7fb0:	07 30       	mov	r7, r6
    7fb2:	08 38       	mov	r8, r7
    7fb4:	09 40       	mov	r9, r8
    7fb6:	63 ff 09 00 	st.w	lp, 8[sp]
    7fba:	7d 07 09 ad 	st.w	r0, -21240[r29]
    7fbe:	80 ff ca 08 	jarl	8888 <__lseek>, lp
    7fc2:	7f 52       	cmp	-1, r10
    7fc4:	b2 05       	be	7fca <__lseek_r+0x2a>
    7fc6:	bf 07 a2 94 	jr	1468 <__return_r28_r31>
    7fca:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    7fce:	60 5a       	cmp	0, r11
    7fd0:	b2 fd       	be	7fc6 <__lseek_r+0x26>
    7fd2:	7c 5f 01 00 	st.w	r11, 0[r28]
    7fd6:	bf 07 92 94 	jr	1468 <__return_r28_r31>
	...

00007fdc <_memmove>:
    7fdc:	06 50       	mov	r6, r10
    7fde:	e7 31       	cmp	r7, r6
    7fe0:	b3 15       	bnh	8006 <_memmove+0x2a>
    7fe2:	07 58       	mov	r7, r11
    7fe4:	c8 59       	add	r8, r11
    7fe6:	eb 31       	cmp	r11, r6
    7fe8:	f9 0d       	bnl	8006 <_memmove+0x2a>
    7fea:	06 60       	mov	r6, r12
    7fec:	c8 61       	add	r8, r12
    7fee:	60 42       	cmp	0, r8
    7ff0:	a2 0d       	be	8004 <_memmove+0x28>
    7ff2:	8b 41       	subr	r11, r8
    7ff4:	5f 5a       	add	-1, r11
    7ff6:	0b 6f 00 00 	ld.b	0[r11], r13
    7ffa:	5f 62       	add	-1, r12
    7ffc:	4c 6f 00 00 	st.b	r13, 0[r12]
    8000:	e8 59       	cmp	r8, r11
    8002:	9a fd       	bne	7ff4 <_memmove+0x18>
    8004:	7f 00       	jmp	[lp]
    8006:	60 42       	cmp	0, r8
    8008:	e2 fd       	be	8004 <_memmove+0x28>
    800a:	ca 41       	add	r10, r8
    800c:	0a 58       	mov	r10, r11
    800e:	07 67 00 00 	ld.b	0[r7], r12
    8012:	41 3a       	add	1, r7
    8014:	4b 67 00 00 	st.b	r12, 0[r11]
    8018:	41 5a       	add	1, r11
    801a:	e8 59       	cmp	r8, r11
    801c:	9a fd       	bne	800e <_memmove+0x32>
    801e:	7f 00       	jmp	[lp]

00008020 <__read_r>:
    8020:	54 1a       	add	-12, sp
    8022:	63 e7 05 00 	st.w	r28, 4[sp]
    8026:	63 ef 01 00 	st.w	r29, 0[sp]
    802a:	06 e0       	mov	r6, r28
    802c:	40 ee 01 00 	movhi	1, r0, r29
    8030:	07 30       	mov	r7, r6
    8032:	08 38       	mov	r8, r7
    8034:	09 40       	mov	r9, r8
    8036:	63 ff 09 00 	st.w	lp, 8[sp]
    803a:	7d 07 09 ad 	st.w	r0, -21240[r29]
    803e:	80 ff 66 08 	jarl	88a4 <__read>, lp
    8042:	7f 52       	cmp	-1, r10
    8044:	b2 05       	be	804a <__read_r+0x2a>
    8046:	bf 07 22 94 	jr	1468 <__return_r28_r31>
    804a:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    804e:	60 5a       	cmp	0, r11
    8050:	b2 fd       	be	8046 <__read_r+0x26>
    8052:	7c 5f 01 00 	st.w	r11, 0[r28]
    8056:	bf 07 12 94 	jr	1468 <__return_r28_r31>
	...

0000805c <__realloc_r>:
    805c:	03 1e d4 ff 	addi	-44, sp, sp
    8060:	63 c7 15 00 	st.w	r24, 20[sp]
    8064:	63 df 09 00 	st.w	r27, 8[sp]
    8068:	63 ef 01 00 	st.w	r29, 0[sp]
    806c:	63 ff 29 00 	st.w	lp, 40[sp]
    8070:	63 a7 25 00 	st.w	r20, 36[sp]
    8074:	63 af 21 00 	st.w	r21, 32[sp]
    8078:	63 b7 1d 00 	st.w	r22, 28[sp]
    807c:	63 bf 19 00 	st.w	r23, 24[sp]
    8080:	63 cf 11 00 	st.w	r25, 16[sp]
    8084:	63 d7 0d 00 	st.w	r26, 12[sp]
    8088:	63 e7 05 00 	st.w	r28, 4[sp]
    808c:	07 e8       	mov	r7, r29
    808e:	06 c0       	mov	r6, r24
    8090:	08 d8       	mov	r8, r27
    8092:	60 3a       	cmp	0, r7
    8094:	ba 05       	bne	809a <__realloc_r+0x3e>
    8096:	80 07 fa 01 	jr	8290 <__realloc_r+0x234>
    809a:	bf ff 86 db 	jarl	5c20 <___malloc_lock>, lp
    809e:	3d 57 fd ff 	ld.w	-4[r29], r10
    80a2:	1c d2       	mov	-4, r26
    80a4:	1b e6 0b 00 	addi	11, r27, r28
    80a8:	20 5e 16 00 	movea	22, r0, r11
    80ac:	1d be f8 ff 	addi	-8, r29, r23
    80b0:	4a d1       	and	r10, r26
    80b2:	eb e1       	cmp	r11, r28
    80b4:	cb 6d       	bh	818c <__realloc_r+0x130>
    80b6:	20 5e 10 00 	movea	16, r0, r11
    80ba:	0b e0       	mov	r11, r28
    80bc:	fc d9       	cmp	r28, r27
    80be:	cb 6d       	bh	8196 <__realloc_r+0x13a>
    80c0:	eb d1       	cmp	r11, r26
    80c2:	9e 75       	bge	81a4 <__realloc_r+0x148>
    80c4:	40 ae 01 00 	movhi	1, r0, r21
    80c8:	35 ae b0 a8 	movea	-22352, r21, r21
    80cc:	17 60       	mov	r23, r12
    80ce:	35 77 09 00 	ld.w	8[r21], r14
    80d2:	da 61       	add	r26, r12
    80d4:	ec 71       	cmp	r12, r14
    80d6:	ba 05       	bne	80dc <__realloc_r+0x80>
    80d8:	80 07 c6 01 	jr	829e <__realloc_r+0x242>
    80dc:	2c 7f 05 00 	ld.w	4[r12], r15
    80e0:	1e 6a       	mov	-2, r13
    80e2:	4f 69       	and	r15, r13
    80e4:	cc 69       	add	r12, r13
    80e6:	cd c7 04 00 	tst1	0, 4[r13]
    80ea:	e2 75       	be	81d6 <__realloc_r+0x17a>
    80ec:	00 6a       	mov	0, r13
    80ee:	00 62       	mov	0, r12
    80f0:	ca 56 01 00 	andi	1, r10, r10
    80f4:	b2 05       	be	80fa <__realloc_r+0x9e>
    80f6:	80 07 2e 01 	jr	8224 <__realloc_r+0x1c8>
    80fa:	3d b7 f9 ff 	ld.w	-8[r29], r22
    80fe:	1c 7a       	mov	-4, r15
    8100:	97 b1       	subr	r23, r22
    8102:	36 57 05 00 	ld.w	4[r22], r10
    8106:	4f 51       	and	r15, r10
    8108:	0a a0       	mov	r10, r20
    810a:	da a1       	add	r26, r20
    810c:	60 62       	cmp	0, r12
    810e:	ba 05       	bne	8114 <__realloc_r+0xb8>
    8110:	80 07 10 01 	jr	8220 <__realloc_r+0x1c4>
    8114:	0d c8       	mov	r13, r25
    8116:	d4 c9       	add	r20, r25
    8118:	ee 61       	cmp	r14, r12
    811a:	ba 05       	bne	8120 <__realloc_r+0xc4>
    811c:	80 07 9c 02 	jr	83b8 <__realloc_r+0x35c>
    8120:	eb c9       	cmp	r11, r25
    8122:	f6 7d       	blt	8220 <__realloc_r+0x1c4>
    8124:	2c 57 0d 00 	ld.w	12[r12], r10
    8128:	2c 5f 09 00 	ld.w	8[r12], r11
    812c:	1a 46 fc ff 	addi	-4, r26, r8
    8130:	6b 57 0d 00 	st.w	r10, 12[r11]
    8134:	6a 5f 09 00 	st.w	r11, 8[r10]
    8138:	36 57 0d 00 	ld.w	12[r22], r10
    813c:	36 5f 09 00 	ld.w	8[r22], r11
    8140:	20 66 24 00 	movea	36, r0, r12
    8144:	6b 57 0d 00 	st.w	r10, 12[r11]
    8148:	6a 5f 09 00 	st.w	r11, 8[r10]
    814c:	16 de 08 00 	addi	8, r22, r27
    8150:	ec 41       	cmp	r12, r8
    8152:	b3 05       	bnh	8158 <__realloc_r+0xfc>
    8154:	80 07 34 03 	jr	8488 <__realloc_r+0x42c>
    8158:	20 56 13 00 	movea	19, r0, r10
    815c:	ea 41       	cmp	r10, r8
    815e:	bb 05       	bh	8164 <__realloc_r+0x108>
    8160:	80 07 f8 01 	jr	8358 <__realloc_r+0x2fc>
    8164:	3d 57 01 00 	ld.w	0[r29], r10
    8168:	76 57 09 00 	st.w	r10, 8[r22]
    816c:	3d 57 05 00 	ld.w	4[r29], r10
    8170:	76 57 0d 00 	st.w	r10, 12[r22]
    8174:	20 56 1b 00 	movea	27, r0, r10
    8178:	ea 41       	cmp	r10, r8
    817a:	b3 05       	bnh	8180 <__realloc_r+0x124>
    817c:	80 07 3e 03 	jr	84ba <__realloc_r+0x45e>
    8180:	16 56 10 00 	addi	16, r22, r10
    8184:	1d 5e 08 00 	addi	8, r29, r11
    8188:	80 07 d4 01 	jr	835c <__realloc_r+0x300>
    818c:	18 5a       	mov	-8, r11
    818e:	4b e1       	and	r11, r28
    8190:	1c 58       	mov	r28, r11
    8192:	60 e2       	cmp	0, r28
    8194:	ce 95       	bge	80bc <__realloc_r+0x60>
    8196:	0c 52       	mov	12, r10
    8198:	00 da       	mov	0, r27
    819a:	78 57 01 00 	st.w	r10, 0[r24]
    819e:	1b 50       	mov	r27, r10
    81a0:	80 07 a8 0a 	jr	8c48 <__return_r20_r31>
    81a4:	1a c8       	mov	r26, r25
    81a6:	19 58       	mov	r25, r11
    81a8:	bc 59       	sub	r28, r11
    81aa:	ca 56 01 00 	andi	1, r10, r10
    81ae:	6f 5a       	cmp	15, r11
    81b0:	ab 25       	bh	81f4 <__realloc_r+0x198>
    81b2:	17 58       	mov	r23, r11
    81b4:	d9 59       	add	r25, r11
    81b6:	19 51       	or	r25, r10
    81b8:	77 57 05 00 	st.w	r10, 4[r23]
    81bc:	2b 57 05 00 	ld.w	4[r11], r10
    81c0:	8a 56 01 00 	ori	1, r10, r10
    81c4:	6b 57 05 00 	st.w	r10, 4[r11]
    81c8:	18 30       	mov	r24, r6
    81ca:	bf ff 5a da 	jarl	5c24 <___malloc_unlock>, lp
    81ce:	1d d8       	mov	r29, r27
    81d0:	1b 50       	mov	r27, r10
    81d2:	80 07 76 0a 	jr	8c48 <__return_r20_r31>
    81d6:	1c 6a       	mov	-4, r13
    81d8:	4f 69       	and	r15, r13
    81da:	0d c8       	mov	r13, r25
    81dc:	da c9       	add	r26, r25
    81de:	eb c9       	cmp	r11, r25
    81e0:	86 8d       	blt	80f0 <__realloc_r+0x94>
    81e2:	2c 5f 0d 00 	ld.w	12[r12], r11
    81e6:	2c 67 09 00 	ld.w	8[r12], r12
    81ea:	6c 5f 0d 00 	st.w	r11, 12[r12]
    81ee:	6b 67 09 00 	st.w	r12, 8[r11]
    81f2:	a5 dd       	br	81a6 <__realloc_r+0x14a>
    81f4:	17 38       	mov	r23, r7
    81f6:	dc 39       	add	r28, r7
    81f8:	1c 51       	or	r28, r10
    81fa:	77 57 05 00 	st.w	r10, 4[r23]
    81fe:	07 50       	mov	r7, r10
    8200:	cb 51       	add	r11, r10
    8202:	8b 5e 01 00 	ori	1, r11, r11
    8206:	67 5f 05 00 	st.w	r11, 4[r7]
    820a:	2a 5f 05 00 	ld.w	4[r10], r11
    820e:	18 30       	mov	r24, r6
    8210:	8b 5e 01 00 	ori	1, r11, r11
    8214:	48 3a       	add	8, r7
    8216:	6a 5f 05 00 	st.w	r11, 4[r10]
    821a:	bf ff 06 cd 	jarl	4f20 <__free_r>, lp
    821e:	d5 d5       	br	81c8 <__realloc_r+0x16c>
    8220:	eb a1       	cmp	r11, r20
    8222:	be 4d       	bge	82b8 <__realloc_r+0x25c>
    8224:	1b 38       	mov	r27, r7
    8226:	18 30       	mov	r24, r6
    8228:	bf ff 8c d2 	jarl	54b4 <__malloc_r>, lp
    822c:	0a d8       	mov	r10, r27
    822e:	60 52       	cmp	0, r10
    8230:	a2 2d       	be	8284 <__realloc_r+0x228>
    8232:	3d 57 fd ff 	ld.w	-4[r29], r10
    8236:	1e 5a       	mov	-2, r11
    8238:	4a 59       	and	r10, r11
    823a:	1b 66 f8 ff 	addi	-8, r27, r12
    823e:	d7 59       	add	r23, r11
    8240:	eb 61       	cmp	r11, r12
    8242:	ba 05       	bne	8248 <__realloc_r+0x1ec>
    8244:	80 07 36 02 	jr	847a <__realloc_r+0x41e>
    8248:	1a 46 fc ff 	addi	-4, r26, r8
    824c:	20 56 24 00 	movea	36, r0, r10
    8250:	ea 41       	cmp	r10, r8
    8252:	b3 05       	bnh	8258 <__realloc_r+0x1fc>
    8254:	80 07 58 01 	jr	83ac <__realloc_r+0x350>
    8258:	20 5e 13 00 	movea	19, r0, r11
    825c:	eb 41       	cmp	r11, r8
    825e:	ab 6d       	bh	8332 <__realloc_r+0x2d6>
    8260:	1b 50       	mov	r27, r10
    8262:	1d 58       	mov	r29, r11
    8264:	2b 67 01 00 	ld.w	0[r11], r12
    8268:	6a 67 01 00 	st.w	r12, 0[r10]
    826c:	2b 67 05 00 	ld.w	4[r11], r12
    8270:	6a 67 05 00 	st.w	r12, 4[r10]
    8274:	2b 5f 09 00 	ld.w	8[r11], r11
    8278:	6a 5f 09 00 	st.w	r11, 8[r10]
    827c:	18 30       	mov	r24, r6
    827e:	1d 38       	mov	r29, r7
    8280:	bf ff a0 cc 	jarl	4f20 <__free_r>, lp
    8284:	18 30       	mov	r24, r6
    8286:	bf ff 9e d9 	jarl	5c24 <___malloc_unlock>, lp
    828a:	1b 50       	mov	r27, r10
    828c:	80 07 bc 09 	jr	8c48 <__return_r20_r31>
    8290:	08 38       	mov	r8, r7
    8292:	bf ff 22 d2 	jarl	54b4 <__malloc_r>, lp
    8296:	0a d8       	mov	r10, r27
    8298:	1b 50       	mov	r27, r10
    829a:	80 07 ae 09 	jr	8c48 <__return_r20_r31>
    829e:	2e 6f 05 00 	ld.w	4[r14], r13
    82a2:	1c 62       	mov	-4, r12
    82a4:	4c 69       	and	r12, r13
    82a6:	0d 60       	mov	r13, r12
    82a8:	1c 7e 10 00 	addi	16, r28, r15
    82ac:	da 61       	add	r26, r12
    82ae:	ef 61       	cmp	r15, r12
    82b0:	8e 6d       	bge	8380 <__realloc_r+0x324>
    82b2:	0e 60       	mov	r14, r12
    82b4:	bf 07 3c fe 	jr	80f0 <__realloc_r+0x94>
    82b8:	36 57 0d 00 	ld.w	12[r22], r10
    82bc:	36 5f 09 00 	ld.w	8[r22], r11
    82c0:	1a 46 fc ff 	addi	-4, r26, r8
    82c4:	6b 57 0d 00 	st.w	r10, 12[r11]
    82c8:	6a 5f 09 00 	st.w	r11, 8[r10]
    82cc:	20 56 24 00 	movea	36, r0, r10
    82d0:	16 de 08 00 	addi	8, r22, r27
    82d4:	ea 41       	cmp	r10, r8
    82d6:	b3 05       	bnh	82dc <__realloc_r+0x280>
    82d8:	80 07 cc 01 	jr	84a4 <__realloc_r+0x448>
    82dc:	20 5e 13 00 	movea	19, r0, r11
    82e0:	eb 41       	cmp	r11, r8
    82e2:	bb 05       	bh	82e8 <__realloc_r+0x28c>
    82e4:	80 07 b8 01 	jr	849c <__realloc_r+0x440>
    82e8:	3d 5f 01 00 	ld.w	0[r29], r11
    82ec:	76 5f 09 00 	st.w	r11, 8[r22]
    82f0:	3d 5f 05 00 	ld.w	4[r29], r11
    82f4:	76 5f 0d 00 	st.w	r11, 12[r22]
    82f8:	20 5e 1b 00 	movea	27, r0, r11
    82fc:	eb 41       	cmp	r11, r8
    82fe:	b3 05       	bnh	8304 <__realloc_r+0x2a8>
    8300:	80 07 f6 01 	jr	84f6 <__realloc_r+0x49a>
    8304:	16 56 10 00 	addi	16, r22, r10
    8308:	1d 5e 08 00 	addi	8, r29, r11
    830c:	2b 67 01 00 	ld.w	0[r11], r12
    8310:	1b e8       	mov	r27, r29
    8312:	6a 67 01 00 	st.w	r12, 0[r10]
    8316:	2b 67 05 00 	ld.w	4[r11], r12
    831a:	14 c8       	mov	r20, r25
    831c:	6a 67 05 00 	st.w	r12, 4[r10]
    8320:	2b 5f 09 00 	ld.w	8[r11], r11
    8324:	16 b8       	mov	r22, r23
    8326:	6a 5f 09 00 	st.w	r11, 8[r10]
    832a:	36 57 05 00 	ld.w	4[r22], r10
    832e:	bf 07 78 fe 	jr	81a6 <__realloc_r+0x14a>
    8332:	3d 5f 01 00 	ld.w	0[r29], r11
    8336:	7b 5f 01 00 	st.w	r11, 0[r27]
    833a:	3d 5f 05 00 	ld.w	4[r29], r11
    833e:	7b 5f 05 00 	st.w	r11, 4[r27]
    8342:	20 5e 1b 00 	movea	27, r0, r11
    8346:	eb 41       	cmp	r11, r8
    8348:	b3 05       	bnh	834e <__realloc_r+0x2f2>
    834a:	80 07 10 01 	jr	845a <__realloc_r+0x3fe>
    834e:	1b 56 08 00 	addi	8, r27, r10
    8352:	1d 5e 08 00 	addi	8, r29, r11
    8356:	f5 85       	br	8264 <__realloc_r+0x208>
    8358:	1b 50       	mov	r27, r10
    835a:	1d 58       	mov	r29, r11
    835c:	2b 67 01 00 	ld.w	0[r11], r12
    8360:	1b e8       	mov	r27, r29
    8362:	6a 67 01 00 	st.w	r12, 0[r10]
    8366:	2b 67 05 00 	ld.w	4[r11], r12
    836a:	16 b8       	mov	r22, r23
    836c:	6a 67 05 00 	st.w	r12, 4[r10]
    8370:	2b 5f 09 00 	ld.w	8[r11], r11
    8374:	6a 5f 09 00 	st.w	r11, 8[r10]
    8378:	36 57 05 00 	ld.w	4[r22], r10
    837c:	bf 07 2a fe 	jr	81a6 <__realloc_r+0x14a>
    8380:	0c 50       	mov	r12, r10
    8382:	bc 51       	sub	r28, r10
    8384:	dc b9       	add	r28, r23
    8386:	8a 56 01 00 	ori	1, r10, r10
    838a:	77 57 05 00 	st.w	r10, 4[r23]
    838e:	3d 57 fd ff 	ld.w	-4[r29], r10
    8392:	18 30       	mov	r24, r6
    8394:	ca 56 01 00 	andi	1, r10, r10
    8398:	1c 51       	or	r28, r10
    839a:	75 bf 09 00 	st.w	r23, 8[r21]
    839e:	7d 57 fd ff 	st.w	r10, -4[r29]
    83a2:	1d d8       	mov	r29, r27
    83a4:	bf ff 80 d8 	jarl	5c24 <___malloc_unlock>, lp
    83a8:	bf 07 28 fe 	jr	81d0 <__realloc_r+0x174>
    83ac:	1b 30       	mov	r27, r6
    83ae:	1d 38       	mov	r29, r7
    83b0:	bf ff 2c fc 	jarl	7fdc <_memmove>, lp
    83b4:	bf 07 c8 fe 	jr	827c <__realloc_r+0x220>
    83b8:	1c 56 10 00 	addi	16, r28, r10
    83bc:	ea c9       	cmp	r10, r25
    83be:	be 05       	bge	83c4 <__realloc_r+0x368>
    83c0:	bf 07 60 fe 	jr	8220 <__realloc_r+0x1c4>
    83c4:	36 57 0d 00 	ld.w	12[r22], r10
    83c8:	36 5f 09 00 	ld.w	8[r22], r11
    83cc:	1a 46 fc ff 	addi	-4, r26, r8
    83d0:	6b 57 0d 00 	st.w	r10, 12[r11]
    83d4:	6a 5f 09 00 	st.w	r11, 8[r10]
    83d8:	20 56 24 00 	movea	36, r0, r10
    83dc:	16 de 08 00 	addi	8, r22, r27
    83e0:	ea 41       	cmp	r10, r8
    83e2:	b3 05       	bnh	83e8 <__realloc_r+0x38c>
    83e4:	80 07 70 01 	jr	8554 <__realloc_r+0x4f8>
    83e8:	20 5e 13 00 	movea	19, r0, r11
    83ec:	eb 41       	cmp	r11, r8
    83ee:	bb 05       	bh	83f4 <__realloc_r+0x398>
    83f0:	80 07 42 01 	jr	8532 <__realloc_r+0x4d6>
    83f4:	3d 5f 01 00 	ld.w	0[r29], r11
    83f8:	76 5f 09 00 	st.w	r11, 8[r22]
    83fc:	3d 5f 05 00 	ld.w	4[r29], r11
    8400:	76 5f 0d 00 	st.w	r11, 12[r22]
    8404:	20 5e 1b 00 	movea	27, r0, r11
    8408:	eb 41       	cmp	r11, r8
    840a:	b3 05       	bnh	8410 <__realloc_r+0x3b4>
    840c:	80 07 54 01 	jr	8560 <__realloc_r+0x504>
    8410:	16 56 10 00 	addi	16, r22, r10
    8414:	48 ea       	add	8, r29
    8416:	3d 5f 01 00 	ld.w	0[r29], r11
    841a:	6a 5f 01 00 	st.w	r11, 0[r10]
    841e:	3d 5f 05 00 	ld.w	4[r29], r11
    8422:	6a 5f 05 00 	st.w	r11, 4[r10]
    8426:	3d 5f 09 00 	ld.w	8[r29], r11
    842a:	6a 5f 09 00 	st.w	r11, 8[r10]
    842e:	19 50       	mov	r25, r10
    8430:	bc 51       	sub	r28, r10
    8432:	16 58       	mov	r22, r11
    8434:	dc 59       	add	r28, r11
    8436:	8a 56 01 00 	ori	1, r10, r10
    843a:	6b 57 05 00 	st.w	r10, 4[r11]
    843e:	36 57 05 00 	ld.w	4[r22], r10
    8442:	18 30       	mov	r24, r6
    8444:	ca 56 01 00 	andi	1, r10, r10
    8448:	1c 51       	or	r28, r10
    844a:	75 5f 09 00 	st.w	r11, 8[r21]
    844e:	76 57 05 00 	st.w	r10, 4[r22]
    8452:	bf ff d2 d7 	jarl	5c24 <___malloc_unlock>, lp
    8456:	bf 07 7a fd 	jr	81d0 <__realloc_r+0x174>
    845a:	3d 5f 09 00 	ld.w	8[r29], r11
    845e:	7b 5f 09 00 	st.w	r11, 8[r27]
    8462:	3d 5f 0d 00 	ld.w	12[r29], r11
    8466:	7b 5f 0d 00 	st.w	r11, 12[r27]
    846a:	ea 41       	cmp	r10, r8
    846c:	f2 35       	be	84da <__realloc_r+0x47e>
    846e:	1b 56 10 00 	addi	16, r27, r10
    8472:	1d 5e 10 00 	addi	16, r29, r11
    8476:	bf 07 ee fd 	jr	8264 <__realloc_r+0x208>
    847a:	3b cf fd ff 	ld.w	-4[r27], r25
    847e:	1c 5a       	mov	-4, r11
    8480:	4b c9       	and	r11, r25
    8482:	da c9       	add	r26, r25
    8484:	bf 07 22 fd 	jr	81a6 <__realloc_r+0x14a>
    8488:	1d 38       	mov	r29, r7
    848a:	1b 30       	mov	r27, r6
    848c:	bf ff 50 fb 	jarl	7fdc <_memmove>, lp
    8490:	1b e8       	mov	r27, r29
    8492:	36 57 05 00 	ld.w	4[r22], r10
    8496:	16 b8       	mov	r22, r23
    8498:	bf 07 0e fd 	jr	81a6 <__realloc_r+0x14a>
    849c:	1b 50       	mov	r27, r10
    849e:	1d 58       	mov	r29, r11
    84a0:	bf 07 6c fe 	jr	830c <__realloc_r+0x2b0>
    84a4:	1d 38       	mov	r29, r7
    84a6:	1b 30       	mov	r27, r6
    84a8:	bf ff 34 fb 	jarl	7fdc <_memmove>, lp
    84ac:	1b e8       	mov	r27, r29
    84ae:	36 57 05 00 	ld.w	4[r22], r10
    84b2:	14 c8       	mov	r20, r25
    84b4:	16 b8       	mov	r22, r23
    84b6:	bf 07 f0 fc 	jr	81a6 <__realloc_r+0x14a>
    84ba:	3d 57 09 00 	ld.w	8[r29], r10
    84be:	76 57 11 00 	st.w	r10, 16[r22]
    84c2:	3d 57 0d 00 	ld.w	12[r29], r10
    84c6:	76 57 15 00 	st.w	r10, 20[r22]
    84ca:	ec 41       	cmp	r12, r8
    84cc:	d2 25       	be	8516 <__realloc_r+0x4ba>
    84ce:	16 56 18 00 	addi	24, r22, r10
    84d2:	1d 5e 10 00 	addi	16, r29, r11
    84d6:	bf 07 86 fe 	jr	835c <__realloc_r+0x300>
    84da:	3d 5f 11 00 	ld.w	16[r29], r11
    84de:	1b 56 18 00 	addi	24, r27, r10
    84e2:	7b 5f 11 00 	st.w	r11, 16[r27]
    84e6:	3d 67 15 00 	ld.w	20[r29], r12
    84ea:	1d 5e 18 00 	addi	24, r29, r11
    84ee:	7b 67 15 00 	st.w	r12, 20[r27]
    84f2:	bf 07 72 fd 	jr	8264 <__realloc_r+0x208>
    84f6:	3d 5f 09 00 	ld.w	8[r29], r11
    84fa:	76 5f 11 00 	st.w	r11, 16[r22]
    84fe:	3d 5f 0d 00 	ld.w	12[r29], r11
    8502:	76 5f 15 00 	st.w	r11, 20[r22]
    8506:	ea 41       	cmp	r10, r8
    8508:	82 1d       	be	8538 <__realloc_r+0x4dc>
    850a:	16 56 18 00 	addi	24, r22, r10
    850e:	1d 5e 10 00 	addi	16, r29, r11
    8512:	bf 07 fa fd 	jr	830c <__realloc_r+0x2b0>
    8516:	3d 5f 11 00 	ld.w	16[r29], r11
    851a:	16 56 20 00 	addi	32, r22, r10
    851e:	76 5f 19 00 	st.w	r11, 24[r22]
    8522:	3d 67 15 00 	ld.w	20[r29], r12
    8526:	1d 5e 18 00 	addi	24, r29, r11
    852a:	76 67 1d 00 	st.w	r12, 28[r22]
    852e:	bf 07 2e fe 	jr	835c <__realloc_r+0x300>
    8532:	1b 50       	mov	r27, r10
    8534:	bf 07 e2 fe 	jr	8416 <__realloc_r+0x3ba>
    8538:	3d 5f 11 00 	ld.w	16[r29], r11
    853c:	16 56 20 00 	addi	32, r22, r10
    8540:	76 5f 19 00 	st.w	r11, 24[r22]
    8544:	3d 67 15 00 	ld.w	20[r29], r12
    8548:	1d 5e 18 00 	addi	24, r29, r11
    854c:	76 67 1d 00 	st.w	r12, 28[r22]
    8550:	bf 07 bc fd 	jr	830c <__realloc_r+0x2b0>
    8554:	1b 30       	mov	r27, r6
    8556:	1d 38       	mov	r29, r7
    8558:	bf ff 84 fa 	jarl	7fdc <_memmove>, lp
    855c:	bf 07 d2 fe 	jr	842e <__realloc_r+0x3d2>
    8560:	3d 5f 09 00 	ld.w	8[r29], r11
    8564:	76 5f 11 00 	st.w	r11, 16[r22]
    8568:	3d 5f 0d 00 	ld.w	12[r29], r11
    856c:	76 5f 15 00 	st.w	r11, 20[r22]
    8570:	ea 41       	cmp	r10, r8
    8572:	f2 05       	be	8580 <__realloc_r+0x524>
    8574:	16 56 18 00 	addi	24, r22, r10
    8578:	1d ee 10 00 	addi	16, r29, r29
    857c:	bf 07 9a fe 	jr	8416 <__realloc_r+0x3ba>
    8580:	3d 5f 11 00 	ld.w	16[r29], r11
    8584:	16 56 20 00 	addi	32, r22, r10
    8588:	76 5f 19 00 	st.w	r11, 24[r22]
    858c:	3d 5f 15 00 	ld.w	20[r29], r11
    8590:	1d ee 18 00 	addi	24, r29, r29
    8594:	76 5f 1d 00 	st.w	r11, 28[r22]
    8598:	bf 07 7e fe 	jr	8416 <__realloc_r+0x3ba>

0000859c <__sbrk>:
    859c:	03 1e ec ff 	addi	-20, sp, sp
    85a0:	63 e7 09 00 	st.w	r28, 8[sp]
    85a4:	00 52       	mov	0, r10
    85a6:	40 e6 01 00 	movhi	1, r0, r28
    85aa:	63 ef 05 00 	st.w	r29, 4[sp]
    85ae:	c3 51       	add	sp, r10
    85b0:	3c ef 01 ad 	ld.w	-21248[r28], r29
    85b4:	63 df 0d 00 	st.w	r27, 12[sp]
    85b8:	63 ff 11 00 	st.w	lp, 16[sp]
    85bc:	63 57 01 00 	st.w	r10, 0[sp]
    85c0:	06 d8       	mov	r6, r27
    85c2:	60 ea       	cmp	0, r29
    85c4:	92 1d       	be	85f6 <__sbrk+0x5a>
    85c6:	1d 58       	mov	r29, r11
    85c8:	db 59       	add	r27, r11
    85ca:	e3 59       	cmp	sp, r11
    85cc:	f3 0d       	bnh	85ea <__sbrk+0x4e>
    85ce:	40 3e 01 00 	movhi	1, r0, r7
    85d2:	01 32       	mov	1, r6
    85d4:	27 3e 55 a1 	movea	-24235, r7, r7
    85d8:	20 46 1a 00 	movea	26, r0, r8
    85dc:	80 ff 44 02 	jarl	8820 <__write>, lp
    85e0:	80 ff 5c 02 	jarl	883c <_abort>, lp
    85e4:	3c 5f 01 ad 	ld.w	-21248[r28], r11
    85e8:	db 59       	add	r27, r11
    85ea:	44 1a       	add	4, sp
    85ec:	1d 50       	mov	r29, r10
    85ee:	7c 5f 01 ad 	st.w	r11, -21248[r28]
    85f2:	80 07 12 08 	jr	8e04 <__return_r27_r31>
    85f6:	40 56 01 00 	movhi	1, r0, r10
    85fa:	2a 56 0c ad 	movea	-21236, r10, r10
    85fe:	0a e8       	mov	r10, r29
    8600:	7c 57 01 ad 	st.w	r10, -21248[r28]
    8604:	95 e5       	br	85c6 <__sbrk+0x2a>
	...

00008608 <___swbuf_r>:
    8608:	50 1a       	add	-16, sp
    860a:	63 df 09 00 	st.w	r27, 8[sp]
    860e:	63 e7 05 00 	st.w	r28, 4[sp]
    8612:	63 ef 01 00 	st.w	r29, 0[sp]
    8616:	63 ff 0d 00 	st.w	lp, 12[sp]
    861a:	06 e0       	mov	r6, r28
    861c:	07 d8       	mov	r7, r27
    861e:	08 e8       	mov	r8, r29
    8620:	60 32       	cmp	0, r6
    8622:	d2 05       	be	862c <___swbuf_r+0x24>
    8624:	26 57 39 00 	ld.w	56[r6], r10
    8628:	60 52       	cmp	0, r10
    862a:	82 6d       	be	86fa <___swbuf_r+0xf2>
    862c:	3d 57 19 00 	ld.w	24[r29], r10
    8630:	3d 5f 0c 00 	ld.h	12[r29], r11
    8634:	7d 57 09 00 	st.w	r10, 8[r29]
    8638:	d0 5a       	shl	16, r11
    863a:	40 56 08 00 	movhi	8, r0, r10
    863e:	4b 51       	and	r11, r10
    8640:	b0 5a       	sar	16, r11
    8642:	60 52       	cmp	0, r10
    8644:	e2 4d       	be	86e0 <___swbuf_r+0xd8>
    8646:	3d 57 11 00 	ld.w	16[r29], r10
    864a:	60 52       	cmp	0, r10
    864c:	a2 4d       	be	86e0 <___swbuf_r+0xd8>
    864e:	cb 66 00 20 	andi	8192, r11, r12
    8652:	db de ff 00 	andi	255, r27, r27
    8656:	60 62       	cmp	0, r12
    8658:	82 25       	be	8698 <___swbuf_r+0x90>
    865a:	3d 5f 01 00 	ld.w	0[r29], r11
    865e:	3d 67 15 00 	ld.w	20[r29], r12
    8662:	8b 51       	subr	r11, r10
    8664:	ec 51       	cmp	r12, r10
    8666:	be 2d       	bge	86bc <___swbuf_r+0xb4>
    8668:	41 52       	add	1, r10
    866a:	3d 6f 09 00 	ld.w	8[r29], r13
    866e:	0b 66 01 00 	addi	1, r11, r12
    8672:	5f 6a       	add	-1, r13
    8674:	7d 6f 09 00 	st.w	r13, 8[r29]
    8678:	4b df 00 00 	st.b	r27, 0[r11]
    867c:	3d 5f 15 00 	ld.w	20[r29], r11
    8680:	7d 67 01 00 	st.w	r12, 0[r29]
    8684:	ea 59       	cmp	r10, r11
    8686:	d2 25       	be	86d0 <___swbuf_r+0xc8>
    8688:	dd c7 0c 00 	tst1	0, 12[r29]
    868c:	b2 05       	be	8692 <___swbuf_r+0x8a>
    868e:	6a da       	cmp	10, r27
    8690:	82 25       	be	86d0 <___swbuf_r+0xc8>
    8692:	1b 50       	mov	r27, r10
    8694:	80 07 70 07 	jr	8e04 <__return_r27_r31>
    8698:	3d 67 65 00 	ld.w	100[r29], r12
    869c:	8b 5e 00 20 	ori	8192, r11, r11
    86a0:	20 6e ff df 	movea	-8193, r0, r13
    86a4:	4d 61       	and	r13, r12
    86a6:	7d 5f 0c 00 	st.h	r11, 12[r29]
    86aa:	3d 5f 01 00 	ld.w	0[r29], r11
    86ae:	7d 67 65 00 	st.w	r12, 100[r29]
    86b2:	3d 67 15 00 	ld.w	20[r29], r12
    86b6:	8b 51       	subr	r11, r10
    86b8:	ec 51       	cmp	r12, r10
    86ba:	f6 d5       	blt	8668 <___swbuf_r+0x60>
    86bc:	1c 30       	mov	r28, r6
    86be:	1d 38       	mov	r29, r7
    86c0:	bf ff 88 c4 	jarl	4b48 <__fflush_r>, lp
    86c4:	60 52       	cmp	0, r10
    86c6:	ba 0d       	bne	86dc <___swbuf_r+0xd4>
    86c8:	3d 5f 01 00 	ld.w	0[r29], r11
    86cc:	01 52       	mov	1, r10
    86ce:	e5 cd       	br	866a <___swbuf_r+0x62>
    86d0:	1c 30       	mov	r28, r6
    86d2:	1d 38       	mov	r29, r7
    86d4:	bf ff 74 c4 	jarl	4b48 <__fflush_r>, lp
    86d8:	60 52       	cmp	0, r10
    86da:	c2 dd       	be	8692 <___swbuf_r+0x8a>
    86dc:	1f da       	mov	-1, r27
    86de:	a5 dd       	br	8692 <___swbuf_r+0x8a>
    86e0:	1c 30       	mov	r28, r6
    86e2:	1d 38       	mov	r29, r7
    86e4:	bf ff b4 a9 	jarl	3098 <___swsetup_r>, lp
    86e8:	60 52       	cmp	0, r10
    86ea:	9a fd       	bne	86dc <___swbuf_r+0xd4>
    86ec:	3d 5f 0c 00 	ld.h	12[r29], r11
    86f0:	3d 57 11 00 	ld.w	16[r29], r10
    86f4:	d0 5a       	shl	16, r11
    86f6:	b0 5a       	sar	16, r11
    86f8:	b5 ad       	br	864e <___swbuf_r+0x46>
    86fa:	bf ff b6 c5 	jarl	4cb0 <___sinit>, lp
    86fe:	f5 95       	br	862c <___swbuf_r+0x24>

00008700 <___swbuf>:
    8700:	06 50       	mov	r6, r10
    8702:	24 37 bd 08 	ld.w	2236[gp], r6
    8706:	5c 1a       	add	-4, sp
    8708:	07 40       	mov	r7, r8
    870a:	0a 38       	mov	r10, r7
    870c:	63 ff 01 00 	st.w	lp, 0[sp]
    8710:	bf ff f8 fe 	jarl	8608 <___swbuf_r>, lp
    8714:	bf 07 74 8d 	jr	1488 <__return_r31>

00008718 <__wcrtomb_r>:
    8718:	03 1e d8 ff 	addi	-40, sp, sp
    871c:	63 df 21 00 	st.w	r27, 32[sp]
    8720:	63 e7 1d 00 	st.w	r28, 28[sp]
    8724:	63 ef 19 00 	st.w	r29, 24[sp]
    8728:	40 56 01 00 	movhi	1, r0, r10
    872c:	63 ff 25 00 	st.w	lp, 36[sp]
    8730:	06 e8       	mov	r6, r29
    8732:	09 e0       	mov	r9, r28
    8734:	2a df b9 ac 	ld.w	-21320[r10], r27
    8738:	60 3a       	cmp	0, r7
    873a:	f2 1d       	be	8778 <__wcrtomb_r+0x60>
    873c:	63 3f 09 00 	st.w	r7, 8[sp]
    8740:	63 47 05 00 	st.w	r8, 4[sp]
    8744:	bf ff b8 cb 	jarl	52fc <___locale_charset>, lp
    8748:	23 3f 09 00 	ld.w	8[sp], r7
    874c:	23 47 05 00 	ld.w	4[sp], r8
    8750:	1d 30       	mov	r29, r6
    8752:	0a 48       	mov	r10, r9
    8754:	63 e7 01 00 	st.w	r28, 0[sp]
    8758:	80 ff 04 00 	jarl	875c <__wcrtomb_r+0x44>, lp
    875c:	44 fa       	add	4, lp
    875e:	7b 00       	jmp	[r27]
    8760:	7f 52       	cmp	-1, r10
    8762:	fa 05       	bne	8770 <__wcrtomb_r+0x58>
    8764:	7c 07 01 00 	st.w	r0, 0[r28]
    8768:	20 5e 8a 00 	movea	138, r0, r11
    876c:	7d 5f 01 00 	st.w	r11, 0[r29]
    8770:	03 1e 18 00 	addi	24, sp, sp
    8774:	80 07 90 06 	jr	8e04 <__return_r27_r31>
    8778:	bf ff 84 cb 	jarl	52fc <___locale_charset>, lp
    877c:	1d 30       	mov	r29, r6
    877e:	03 3e 0e 00 	addi	14, sp, r7
    8782:	00 42       	mov	0, r8
    8784:	0a 48       	mov	r10, r9
    8786:	63 e7 01 00 	st.w	r28, 0[sp]
    878a:	80 ff 04 00 	jarl	878e <__wcrtomb_r+0x76>, lp
    878e:	44 fa       	add	4, lp
    8790:	7b 00       	jmp	[r27]
    8792:	f5 e5       	br	8760 <__wcrtomb_r+0x48>

00008794 <_wcrtomb>:
    8794:	06 58       	mov	r6, r11
    8796:	07 50       	mov	r7, r10
    8798:	24 37 bd 08 	ld.w	2236[gp], r6
    879c:	5c 1a       	add	-4, sp
    879e:	08 48       	mov	r8, r9
    87a0:	0b 38       	mov	r11, r7
    87a2:	0a 40       	mov	r10, r8
    87a4:	63 ff 01 00 	st.w	lp, 0[sp]
    87a8:	bf ff 70 ff 	jarl	8718 <__wcrtomb_r>, lp
    87ac:	bf 07 dc 8c 	jr	1488 <__return_r31>

000087b0 <___ascii_wctomb>:
    87b0:	60 3a       	cmp	0, r7
    87b2:	92 0d       	be	87c4 <___ascii_wctomb+0x14>
    87b4:	20 56 ff 00 	movea	255, r0, r10
    87b8:	ea 41       	cmp	r10, r8
    87ba:	fb 05       	bh	87c8 <___ascii_wctomb+0x18>
    87bc:	47 47 00 00 	st.b	r8, 0[r7]
    87c0:	01 52       	mov	1, r10
    87c2:	7f 00       	jmp	[lp]
    87c4:	00 52       	mov	0, r10
    87c6:	7f 00       	jmp	[lp]
    87c8:	20 56 8a 00 	movea	138, r0, r10
    87cc:	66 57 01 00 	st.w	r10, 0[r6]
    87d0:	1f 52       	mov	-1, r10
    87d2:	7f 00       	jmp	[lp]

000087d4 <__wctomb_r>:
    87d4:	03 1e e4 ff 	addi	-28, sp, sp
    87d8:	40 56 01 00 	movhi	1, r0, r10
    87dc:	63 ff 19 00 	st.w	lp, 24[sp]
    87e0:	63 e7 15 00 	st.w	r28, 20[sp]
    87e4:	63 ef 11 00 	st.w	r29, 16[sp]
    87e8:	09 e0       	mov	r9, r28
    87ea:	63 37 0d 00 	st.w	r6, 12[sp]
    87ee:	63 3f 09 00 	st.w	r7, 8[sp]
    87f2:	63 47 05 00 	st.w	r8, 4[sp]
    87f6:	2a ef b9 ac 	ld.w	-21320[r10], r29
    87fa:	bf ff 02 cb 	jarl	52fc <___locale_charset>, lp
    87fe:	23 37 0d 00 	ld.w	12[sp], r6
    8802:	23 3f 09 00 	ld.w	8[sp], r7
    8806:	23 47 05 00 	ld.w	4[sp], r8
    880a:	0a 48       	mov	r10, r9
    880c:	63 e7 01 00 	st.w	r28, 0[sp]
    8810:	80 ff 04 00 	jarl	8814 <__wctomb_r+0x40>, lp
    8814:	44 fa       	add	4, lp
    8816:	7d 00       	jmp	[r29]
    8818:	03 1e 10 00 	addi	16, sp, sp
    881c:	bf 07 4c 8c 	jr	1468 <__return_r28_r31>

00008820 <__write>:
    8820:	06 58       	mov	r6, r11
    8822:	07 50       	mov	r7, r10
    8824:	5c 1a       	add	-4, sp
    8826:	08 48       	mov	r8, r9
    8828:	04 32       	mov	4, r6
    882a:	0b 38       	mov	r11, r7
    882c:	0a 40       	mov	r10, r8
    882e:	63 ff 01 00 	st.w	lp, 0[sp]
    8832:	bf ff 4a e2 	jarl	6a7c <___trap0>, lp
    8836:	bf 07 52 8c 	jr	1488 <__return_r31>
	...

0000883c <_abort>:
    883c:	5c 1a       	add	-4, sp
    883e:	06 32       	mov	6, r6
    8840:	63 ff 01 00 	st.w	lp, 0[sp]
    8844:	80 ff 18 02 	jarl	8a5c <_raise>, lp
    8848:	01 32       	mov	1, r6
    884a:	bf ff c2 8c 	jarl	150c <__exit>, lp
	...

00008850 <__close>:
    8850:	5c 1a       	add	-4, sp
    8852:	06 38       	mov	r6, r7
    8854:	00 42       	mov	0, r8
    8856:	06 32       	mov	6, r6
    8858:	00 4a       	mov	0, r9
    885a:	63 ff 01 00 	st.w	lp, 0[sp]
    885e:	bf ff 1e e2 	jarl	6a7c <___trap0>, lp
    8862:	bf 07 26 8c 	jr	1488 <__return_r31>
	...

00008868 <__fstat>:
    8868:	06 50       	mov	r6, r10
    886a:	5c 1a       	add	-4, sp
    886c:	07 40       	mov	r7, r8
    886e:	20 36 16 00 	movea	22, r0, r6
    8872:	0a 38       	mov	r10, r7
    8874:	00 4a       	mov	0, r9
    8876:	63 ff 01 00 	st.w	lp, 0[sp]
    887a:	bf ff 02 e2 	jarl	6a7c <___trap0>, lp
    887e:	bf 07 0a 8c 	jr	1488 <__return_r31>
	...

00008884 <__isatty>:
    8884:	01 52       	mov	1, r10
    8886:	7f 00       	jmp	[lp]

00008888 <__lseek>:
    8888:	06 58       	mov	r6, r11
    888a:	07 50       	mov	r7, r10
    888c:	5c 1a       	add	-4, sp
    888e:	08 48       	mov	r8, r9
    8890:	20 36 13 00 	movea	19, r0, r6
    8894:	0b 38       	mov	r11, r7
    8896:	0a 40       	mov	r10, r8
    8898:	63 ff 01 00 	st.w	lp, 0[sp]
    889c:	bf ff e0 e1 	jarl	6a7c <___trap0>, lp
    88a0:	bf 07 e8 8b 	jr	1488 <__return_r31>

000088a4 <__read>:
    88a4:	06 58       	mov	r6, r11
    88a6:	07 50       	mov	r7, r10
    88a8:	5c 1a       	add	-4, sp
    88aa:	08 48       	mov	r8, r9
    88ac:	03 32       	mov	3, r6
    88ae:	0b 38       	mov	r11, r7
    88b0:	0a 40       	mov	r10, r8
    88b2:	63 ff 01 00 	st.w	lp, 0[sp]
    88b6:	bf ff c6 e1 	jarl	6a7c <___trap0>, lp
    88ba:	bf 07 ce 8b 	jr	1488 <__return_r31>
	...

000088c0 <__init_signal_r>:
    88c0:	58 1a       	add	-8, sp
    88c2:	26 57 dd 02 	ld.w	732[r6], r10
    88c6:	63 ef 01 00 	st.w	r29, 0[sp]
    88ca:	63 ff 05 00 	st.w	lp, 4[sp]
    88ce:	06 e8       	mov	r6, r29
    88d0:	60 52       	cmp	0, r10
    88d2:	c2 05       	be	88da <__init_signal_r+0x1a>
    88d4:	00 52       	mov	0, r10
    88d6:	bf 07 a4 8b 	jr	147a <__return_r29_r31>
    88da:	20 3e 80 00 	movea	128, r0, r7
    88de:	bf ff d6 cb 	jarl	54b4 <__malloc_r>, lp
    88e2:	7d 57 dd 02 	st.w	r10, 732[r29]
    88e6:	60 52       	cmp	0, r10
    88e8:	e2 0d       	be	8904 <__init_signal_r+0x44>
    88ea:	00 5a       	mov	0, r11
    88ec:	20 66 80 00 	movea	128, r0, r12
    88f0:	b5 05       	br	88f6 <__init_signal_r+0x36>
    88f2:	3d 57 dd 02 	ld.w	732[r29], r10
    88f6:	cb 51       	add	r11, r10
    88f8:	6a 07 01 00 	st.w	r0, 0[r10]
    88fc:	44 5a       	add	4, r11
    88fe:	ec 59       	cmp	r12, r11
    8900:	9a fd       	bne	88f2 <__init_signal_r+0x32>
    8902:	95 ed       	br	88d4 <__init_signal_r+0x14>
    8904:	1f 52       	mov	-1, r10
    8906:	85 ed       	br	88d6 <__init_signal_r+0x16>

00008908 <__signal_r>:
    8908:	50 1a       	add	-16, sp
    890a:	63 ef 09 00 	st.w	r29, 8[sp]
    890e:	63 ff 0d 00 	st.w	lp, 12[sp]
    8912:	20 56 1f 00 	movea	31, r0, r10
    8916:	06 e8       	mov	r6, r29
    8918:	ea 39       	cmp	r10, r7
    891a:	eb 0d       	bh	8936 <__signal_r+0x2e>
    891c:	26 57 dd 02 	ld.w	732[r6], r10
    8920:	60 52       	cmp	0, r10
    8922:	a2 15       	be	8946 <__signal_r+0x3e>
    8924:	c2 3a       	shl	2, r7
    8926:	ca 39       	add	r10, r7
    8928:	27 57 01 00 	ld.w	0[r7], r10
    892c:	67 47 01 00 	st.w	r8, 0[r7]
    8930:	48 1a       	add	8, sp
    8932:	bf 07 48 8b 	jr	147a <__return_r29_r31>
    8936:	20 56 16 00 	movea	22, r0, r10
    893a:	48 1a       	add	8, sp
    893c:	66 57 01 00 	st.w	r10, 0[r6]
    8940:	1f 52       	mov	-1, r10
    8942:	bf 07 38 8b 	jr	147a <__return_r29_r31>
    8946:	63 3f 05 00 	st.w	r7, 4[sp]
    894a:	63 47 01 00 	st.w	r8, 0[sp]
    894e:	bf ff 72 ff 	jarl	88c0 <__init_signal_r>, lp
    8952:	23 3f 05 00 	ld.w	4[sp], r7
    8956:	23 47 01 00 	ld.w	0[sp], r8
    895a:	60 52       	cmp	0, r10
    895c:	ca 05       	bne	8964 <__signal_r+0x5c>
    895e:	3d 57 dd 02 	ld.w	732[r29], r10
    8962:	95 e5       	br	8924 <__signal_r+0x1c>
    8964:	1f 52       	mov	-1, r10
    8966:	d5 e5       	br	8930 <__signal_r+0x28>

00008968 <__raise_r>:
    8968:	54 1a       	add	-12, sp
    896a:	63 e7 05 00 	st.w	r28, 4[sp]
    896e:	63 ef 01 00 	st.w	r29, 0[sp]
    8972:	63 ff 09 00 	st.w	lp, 8[sp]
    8976:	20 56 1f 00 	movea	31, r0, r10
    897a:	07 e8       	mov	r7, r29
    897c:	06 e0       	mov	r6, r28
    897e:	ea 39       	cmp	r10, r7
    8980:	cb 2d       	bh	89d8 <__raise_r+0x70>
    8982:	26 57 dd 02 	ld.w	732[r6], r10
    8986:	60 52       	cmp	0, r10
    8988:	f2 1d       	be	89c6 <__raise_r+0x5e>
    898a:	07 58       	mov	r7, r11
    898c:	c2 5a       	shl	2, r11
    898e:	ca 59       	add	r10, r11
    8990:	2b 57 01 00 	ld.w	0[r11], r10
    8994:	60 52       	cmp	0, r10
    8996:	82 1d       	be	89c6 <__raise_r+0x5e>
    8998:	61 52       	cmp	1, r10
    899a:	c2 15       	be	89c2 <__raise_r+0x5a>
    899c:	7f 52       	cmp	-1, r10
    899e:	b2 0d       	be	89b4 <__raise_r+0x4c>
    89a0:	6b 07 01 00 	st.w	r0, 0[r11]
    89a4:	07 30       	mov	r7, r6
    89a6:	80 ff 04 00 	jarl	89aa <__raise_r+0x42>, lp
    89aa:	44 fa       	add	4, lp
    89ac:	6a 00       	jmp	[r10]
    89ae:	00 52       	mov	0, r10
    89b0:	bf 07 b8 8a 	jr	1468 <__return_r28_r31>
    89b4:	20 56 16 00 	movea	22, r0, r10
    89b8:	66 57 01 00 	st.w	r10, 0[r6]
    89bc:	01 52       	mov	1, r10
    89be:	bf 07 aa 8a 	jr	1468 <__return_r28_r31>
    89c2:	00 52       	mov	0, r10
    89c4:	e5 f5       	br	89b0 <__raise_r+0x48>
    89c6:	1c 30       	mov	r28, r6
    89c8:	80 ff 20 01 	jarl	8ae8 <__getpid_r>, lp
    89cc:	1c 30       	mov	r28, r6
    89ce:	0a 38       	mov	r10, r7
    89d0:	1d 40       	mov	r29, r8
    89d2:	80 ff de 00 	jarl	8ab0 <__kill_r>, lp
    89d6:	d5 ed       	br	89b0 <__raise_r+0x48>
    89d8:	20 56 16 00 	movea	22, r0, r10
    89dc:	66 57 01 00 	st.w	r10, 0[r6]
    89e0:	1f 52       	mov	-1, r10
    89e2:	f5 e5       	br	89b0 <__raise_r+0x48>

000089e4 <___sigtramp_r>:
    89e4:	54 1a       	add	-12, sp
    89e6:	63 ef 05 00 	st.w	r29, 4[sp]
    89ea:	63 ff 09 00 	st.w	lp, 8[sp]
    89ee:	20 56 1f 00 	movea	31, r0, r10
    89f2:	06 e8       	mov	r6, r29
    89f4:	ea 39       	cmp	r10, r7
    89f6:	8b 35       	bh	8a56 <___sigtramp_r+0x72>
    89f8:	26 5f dd 02 	ld.w	732[r6], r11
    89fc:	60 5a       	cmp	0, r11
    89fe:	92 25       	be	8a40 <___sigtramp_r+0x5c>
    8a00:	07 50       	mov	r7, r10
    8a02:	c2 52       	shl	2, r10
    8a04:	cb 51       	add	r11, r10
    8a06:	2a 5f 01 00 	ld.w	0[r10], r11
    8a0a:	60 5a       	cmp	0, r11
    8a0c:	82 1d       	be	8a3c <___sigtramp_r+0x58>
    8a0e:	7f 5a       	cmp	-1, r11
    8a10:	a2 15       	be	8a34 <___sigtramp_r+0x50>
    8a12:	61 5a       	cmp	1, r11
    8a14:	c2 0d       	be	8a2c <___sigtramp_r+0x48>
    8a16:	6a 07 01 00 	st.w	r0, 0[r10]
    8a1a:	07 30       	mov	r7, r6
    8a1c:	80 ff 04 00 	jarl	8a20 <___sigtramp_r+0x3c>, lp
    8a20:	44 fa       	add	4, lp
    8a22:	6b 00       	jmp	[r11]
    8a24:	00 52       	mov	0, r10
    8a26:	44 1a       	add	4, sp
    8a28:	bf 07 52 8a 	jr	147a <__return_r29_r31>
    8a2c:	44 1a       	add	4, sp
    8a2e:	03 52       	mov	3, r10
    8a30:	bf 07 4a 8a 	jr	147a <__return_r29_r31>
    8a34:	44 1a       	add	4, sp
    8a36:	02 52       	mov	2, r10
    8a38:	bf 07 42 8a 	jr	147a <__return_r29_r31>
    8a3c:	01 52       	mov	1, r10
    8a3e:	c5 f5       	br	8a26 <___sigtramp_r+0x42>
    8a40:	63 3f 01 00 	st.w	r7, 0[sp]
    8a44:	bf ff 7c fe 	jarl	88c0 <__init_signal_r>, lp
    8a48:	23 3f 01 00 	ld.w	0[sp], r7
    8a4c:	60 52       	cmp	0, r10
    8a4e:	ca 05       	bne	8a56 <___sigtramp_r+0x72>
    8a50:	3d 5f dd 02 	ld.w	732[r29], r11
    8a54:	e5 d5       	br	8a00 <___sigtramp_r+0x1c>
    8a56:	1f 52       	mov	-1, r10
    8a58:	f5 e5       	br	8a26 <___sigtramp_r+0x42>
	...

00008a5c <_raise>:
    8a5c:	06 38       	mov	r6, r7
    8a5e:	24 37 bd 08 	ld.w	2236[gp], r6
    8a62:	5c 1a       	add	-4, sp
    8a64:	63 ff 01 00 	st.w	lp, 0[sp]
    8a68:	bf ff 00 ff 	jarl	8968 <__raise_r>, lp
    8a6c:	bf 07 1c 8a 	jr	1488 <__return_r31>

00008a70 <_signal>:
    8a70:	06 50       	mov	r6, r10
    8a72:	24 37 bd 08 	ld.w	2236[gp], r6
    8a76:	5c 1a       	add	-4, sp
    8a78:	07 40       	mov	r7, r8
    8a7a:	0a 38       	mov	r10, r7
    8a7c:	63 ff 01 00 	st.w	lp, 0[sp]
    8a80:	bf ff 88 fe 	jarl	8908 <__signal_r>, lp
    8a84:	bf 07 04 8a 	jr	1488 <__return_r31>

00008a88 <__init_signal>:
    8a88:	24 37 bd 08 	ld.w	2236[gp], r6
    8a8c:	5c 1a       	add	-4, sp
    8a8e:	63 ff 01 00 	st.w	lp, 0[sp]
    8a92:	bf ff 2e fe 	jarl	88c0 <__init_signal_r>, lp
    8a96:	bf 07 f2 89 	jr	1488 <__return_r31>
	...

00008a9c <___sigtramp>:
    8a9c:	06 38       	mov	r6, r7
    8a9e:	24 37 bd 08 	ld.w	2236[gp], r6
    8aa2:	5c 1a       	add	-4, sp
    8aa4:	63 ff 01 00 	st.w	lp, 0[sp]
    8aa8:	bf ff 3c ff 	jarl	89e4 <___sigtramp_r>, lp
    8aac:	bf 07 dc 89 	jr	1488 <__return_r31>

00008ab0 <__kill_r>:
    8ab0:	54 1a       	add	-12, sp
    8ab2:	63 e7 05 00 	st.w	r28, 4[sp]
    8ab6:	63 ef 01 00 	st.w	r29, 0[sp]
    8aba:	06 e0       	mov	r6, r28
    8abc:	40 ee 01 00 	movhi	1, r0, r29
    8ac0:	07 30       	mov	r7, r6
    8ac2:	08 38       	mov	r8, r7
    8ac4:	63 ff 09 00 	st.w	lp, 8[sp]
    8ac8:	7d 07 09 ad 	st.w	r0, -21240[r29]
    8acc:	80 ff 30 00 	jarl	8afc <__kill>, lp
    8ad0:	7f 52       	cmp	-1, r10
    8ad2:	b2 05       	be	8ad8 <__kill_r+0x28>
    8ad4:	bf 07 94 89 	jr	1468 <__return_r28_r31>
    8ad8:	3d 5f 09 ad 	ld.w	-21240[r29], r11
    8adc:	60 5a       	cmp	0, r11
    8ade:	b2 fd       	be	8ad4 <__kill_r+0x24>
    8ae0:	7c 5f 01 00 	st.w	r11, 0[r28]
    8ae4:	bf 07 84 89 	jr	1468 <__return_r28_r31>

00008ae8 <__getpid_r>:
    8ae8:	5c 1a       	add	-4, sp
    8aea:	63 ff 01 00 	st.w	lp, 0[sp]
    8aee:	80 ff 0a 00 	jarl	8af8 <__getpid>, lp
    8af2:	bf 07 96 89 	jr	1488 <__return_r31>
	...

00008af8 <__getpid>:
    8af8:	01 52       	mov	1, r10
    8afa:	7f 00       	jmp	[lp]

00008afc <__kill>:
    8afc:	40 56 ad de 	movhi	-8531, r0, r10
    8b00:	5c 1a       	add	-4, sp
    8b02:	01 32       	mov	1, r6
    8b04:	0a 39       	or	r10, r7
    8b06:	00 42       	mov	0, r8
    8b08:	00 4a       	mov	0, r9
    8b0a:	63 ff 01 00 	st.w	lp, 0[sp]
    8b0e:	bf ff 6e df 	jarl	6a7c <___trap0>, lp
    8b12:	bf 07 76 89 	jr	1488 <__return_r31>
	...

00008b18 <___mulsi3>:
    8b18:	06 70       	mov	r6, r14
    8b1a:	20 56 ff 7f 	movea	32767, r0, r10
    8b1e:	4a 71       	and	r10, r14
    8b20:	07 78       	mov	r7, r15
    8b22:	4a 79       	and	r10, r15
    8b24:	8f 32       	shr	15, r6
    8b26:	06 68       	mov	r6, r13
    8b28:	4a 69       	and	r10, r13
    8b2a:	8f 3a       	shr	15, r7
    8b2c:	07 60       	mov	r7, r12
    8b2e:	4a 61       	and	r10, r12
    8b30:	8f 32       	shr	15, r6
    8b32:	8f 3a       	shr	15, r7
    8b34:	0e 50       	mov	r14, r10
    8b36:	ef 50       	mulh	r15, r10
    8b38:	0e 58       	mov	r14, r11
    8b3a:	ec 58       	mulh	r12, r11
    8b3c:	0d 80       	mov	r13, r16
    8b3e:	ef 80       	mulh	r15, r16
    8b40:	ee 38       	mulh	r14, r7
    8b42:	ef 30       	mulh	r15, r6
    8b44:	d0 59       	add	r16, r11
    8b46:	ed 60       	mulh	r13, r12
    8b48:	cf 5a       	shl	15, r11
    8b4a:	cb 51       	add	r11, r10
    8b4c:	cc 39       	add	r12, r7
    8b4e:	c6 39       	add	r6, r7
    8b50:	de 3a       	shl	30, r7
    8b52:	c7 51       	add	r7, r10
    8b54:	7f 00       	jmp	[lp]

00008b56 <___divsi3>:
    8b56:	58 1a       	add	-8, sp
    8b58:	63 ff 05 00 	st.w	lp, 4[sp]
    8b5c:	63 b7 01 00 	st.w	r22, 0[sp]
    8b60:	01 b2       	mov	1, r22
    8b62:	67 39       	tst	r7, r7
    8b64:	bc 05       	bp	8b6a <___divsi3+0x14>
    8b66:	80 39       	subr	r0, r7
    8b68:	80 b1       	subr	r0, r22
    8b6a:	66 31       	tst	r6, r6
    8b6c:	bc 05       	bp	8b72 <___divsi3+0x1c>
    8b6e:	80 31       	subr	r0, r6
    8b70:	80 b1       	subr	r0, r22
    8b72:	80 ff 16 00 	jarl	8b88 <___udivsi3>, lp
    8b76:	e0 b1       	cmp	r0, r22
    8b78:	ac 05       	bp	8b7c <___divsi3+0x26>
    8b7a:	80 51       	subr	r0, r10
    8b7c:	23 b7 01 00 	ld.w	0[sp], r22
    8b80:	23 ff 05 00 	ld.w	4[sp], lp
    8b84:	48 1a       	add	8, sp
    8b86:	7f 00       	jmp	[lp]

00008b88 <___udivsi3>:
    8b88:	01 62       	mov	1, r12
    8b8a:	00 52       	mov	0, r10
    8b8c:	e6 39       	cmp	r6, r7
    8b8e:	d9 15       	bnl	8bb8 <___udivsi3+0x30>
    8b90:	40 6e 00 80 	movhi	-32768, r0, r13
    8b94:	e0 39       	cmp	r0, r7
    8b96:	96 15       	blt	8bb8 <___udivsi3+0x30>
    8b98:	c1 3a       	shl	1, r7
    8b9a:	c1 62       	shl	1, r12
    8b9c:	e6 39       	cmp	r6, r7
    8b9e:	d9 0d       	bnl	8bb8 <___udivsi3+0x30>
    8ba0:	e0 61       	cmp	r0, r12
    8ba2:	d2 0d       	be	8bbc <___udivsi3+0x34>
    8ba4:	07 98       	mov	r7, r19
    8ba6:	4d 99       	and	r13, r19
    8ba8:	82 fd       	be	8b98 <___udivsi3+0x10>
    8baa:	f5 05       	br	8bb8 <___udivsi3+0x30>
    8bac:	e7 31       	cmp	r7, r6
    8bae:	b1 05       	bl	8bb4 <___udivsi3+0x2c>
    8bb0:	a7 31       	sub	r7, r6
    8bb2:	0c 51       	or	r12, r10
    8bb4:	81 62       	shr	1, r12
    8bb6:	81 3a       	shr	1, r7
    8bb8:	e0 61       	cmp	r0, r12
    8bba:	9a fd       	bne	8bac <___udivsi3+0x24>
    8bbc:	7f 00       	jmp	[lp]

00008bbe <___modsi3>:
    8bbe:	54 1a       	add	-12, sp
    8bc0:	63 ff 09 00 	st.w	lp, 8[sp]
    8bc4:	63 3f 05 00 	st.w	r7, 4[sp]
    8bc8:	63 37 01 00 	st.w	r6, 0[sp]
    8bcc:	bf ff 8a ff 	jarl	8b56 <___divsi3>, lp
    8bd0:	23 3f 05 00 	ld.w	4[sp], r7
    8bd4:	0a 30       	mov	r10, r6
    8bd6:	bf ff 42 ff 	jarl	8b18 <___mulsi3>, lp
    8bda:	23 37 01 00 	ld.w	0[sp], r6
    8bde:	86 51       	subr	r6, r10
    8be0:	23 ff 09 00 	ld.w	8[sp], lp
    8be4:	4c 1a       	add	12, sp
    8be6:	7f 00       	jmp	[lp]

00008be8 <___umodsi3>:
    8be8:	54 1a       	add	-12, sp
    8bea:	63 ff 09 00 	st.w	lp, 8[sp]
    8bee:	63 3f 05 00 	st.w	r7, 4[sp]
    8bf2:	63 37 01 00 	st.w	r6, 0[sp]
    8bf6:	bf ff 92 ff 	jarl	8b88 <___udivsi3>, lp
    8bfa:	23 3f 05 00 	ld.w	4[sp], r7
    8bfe:	0a 30       	mov	r10, r6
    8c00:	bf ff 18 ff 	jarl	8b18 <___mulsi3>, lp
    8c04:	23 37 01 00 	ld.w	0[sp], r6
    8c08:	86 51       	subr	r6, r10
    8c0a:	23 ff 09 00 	ld.w	8[sp], lp
    8c0e:	4c 1a       	add	12, sp
    8c10:	7f 00       	jmp	[lp]
	...

00008c14 <__save_r20_r31>:
    8c14:	03 1e d4 ff 	addi	-44, sp, sp
    8c18:	63 ef 01 00 	st.w	r29, 0[sp]
    8c1c:	63 e7 05 00 	st.w	r28, 4[sp]
    8c20:	63 df 09 00 	st.w	r27, 8[sp]
    8c24:	63 d7 0d 00 	st.w	r26, 12[sp]
    8c28:	63 cf 11 00 	st.w	r25, 16[sp]
    8c2c:	63 c7 15 00 	st.w	r24, 20[sp]
    8c30:	63 bf 19 00 	st.w	r23, 24[sp]
    8c34:	63 b7 1d 00 	st.w	r22, 28[sp]
    8c38:	63 af 21 00 	st.w	r21, 32[sp]
    8c3c:	63 a7 25 00 	st.w	r20, 36[sp]
    8c40:	63 ff 29 00 	st.w	lp, 40[sp]
    8c44:	6a 00       	jmp	[r10]
	...

00008c48 <__return_r20_r31>:
    8c48:	23 ef 01 00 	ld.w	0[sp], r29
    8c4c:	23 e7 05 00 	ld.w	4[sp], r28
    8c50:	23 df 09 00 	ld.w	8[sp], r27
    8c54:	23 d7 0d 00 	ld.w	12[sp], r26
    8c58:	23 cf 11 00 	ld.w	16[sp], r25
    8c5c:	23 c7 15 00 	ld.w	20[sp], r24
    8c60:	23 bf 19 00 	ld.w	24[sp], r23
    8c64:	23 b7 1d 00 	ld.w	28[sp], r22
    8c68:	23 af 21 00 	ld.w	32[sp], r21
    8c6c:	23 a7 25 00 	ld.w	36[sp], r20
    8c70:	23 ff 29 00 	ld.w	40[sp], lp
    8c74:	03 1e 2c 00 	addi	44, sp, sp
    8c78:	7f 00       	jmp	[lp]
	...

00008c7c <__save_r21_r31>:
    8c7c:	03 1e d8 ff 	addi	-40, sp, sp
    8c80:	63 ef 01 00 	st.w	r29, 0[sp]
    8c84:	63 e7 05 00 	st.w	r28, 4[sp]
    8c88:	63 df 09 00 	st.w	r27, 8[sp]
    8c8c:	63 d7 0d 00 	st.w	r26, 12[sp]
    8c90:	63 cf 11 00 	st.w	r25, 16[sp]
    8c94:	63 c7 15 00 	st.w	r24, 20[sp]
    8c98:	63 bf 19 00 	st.w	r23, 24[sp]
    8c9c:	63 b7 1d 00 	st.w	r22, 28[sp]
    8ca0:	63 af 21 00 	st.w	r21, 32[sp]
    8ca4:	63 ff 25 00 	st.w	lp, 36[sp]
    8ca8:	6a 00       	jmp	[r10]
	...

00008cac <__return_r21_r31>:
    8cac:	23 ef 01 00 	ld.w	0[sp], r29
    8cb0:	23 e7 05 00 	ld.w	4[sp], r28
    8cb4:	23 df 09 00 	ld.w	8[sp], r27
    8cb8:	23 d7 0d 00 	ld.w	12[sp], r26
    8cbc:	23 cf 11 00 	ld.w	16[sp], r25
    8cc0:	23 c7 15 00 	ld.w	20[sp], r24
    8cc4:	23 bf 19 00 	ld.w	24[sp], r23
    8cc8:	23 b7 1d 00 	ld.w	28[sp], r22
    8ccc:	23 af 21 00 	ld.w	32[sp], r21
    8cd0:	23 ff 25 00 	ld.w	36[sp], lp
    8cd4:	03 1e 28 00 	addi	40, sp, sp
    8cd8:	7f 00       	jmp	[lp]
	...

00008cdc <__save_r23_r31>:
    8cdc:	03 1e e0 ff 	addi	-32, sp, sp
    8ce0:	63 ef 01 00 	st.w	r29, 0[sp]
    8ce4:	63 e7 05 00 	st.w	r28, 4[sp]
    8ce8:	63 df 09 00 	st.w	r27, 8[sp]
    8cec:	63 d7 0d 00 	st.w	r26, 12[sp]
    8cf0:	63 cf 11 00 	st.w	r25, 16[sp]
    8cf4:	63 c7 15 00 	st.w	r24, 20[sp]
    8cf8:	63 bf 19 00 	st.w	r23, 24[sp]
    8cfc:	63 ff 1d 00 	st.w	lp, 28[sp]
    8d00:	6a 00       	jmp	[r10]
	...

00008d04 <__return_r23_r31>:
    8d04:	23 ef 01 00 	ld.w	0[sp], r29
    8d08:	23 e7 05 00 	ld.w	4[sp], r28
    8d0c:	23 df 09 00 	ld.w	8[sp], r27
    8d10:	23 d7 0d 00 	ld.w	12[sp], r26
    8d14:	23 cf 11 00 	ld.w	16[sp], r25
    8d18:	23 c7 15 00 	ld.w	20[sp], r24
    8d1c:	23 bf 19 00 	ld.w	24[sp], r23
    8d20:	23 ff 1d 00 	ld.w	28[sp], lp
    8d24:	03 1e 20 00 	addi	32, sp, sp
    8d28:	7f 00       	jmp	[lp]
	...

00008d2c <__save_r24_r31>:
    8d2c:	03 1e e4 ff 	addi	-28, sp, sp
    8d30:	63 ef 01 00 	st.w	r29, 0[sp]
    8d34:	63 e7 05 00 	st.w	r28, 4[sp]
    8d38:	63 df 09 00 	st.w	r27, 8[sp]
    8d3c:	63 d7 0d 00 	st.w	r26, 12[sp]
    8d40:	63 cf 11 00 	st.w	r25, 16[sp]
    8d44:	63 c7 15 00 	st.w	r24, 20[sp]
    8d48:	63 ff 19 00 	st.w	lp, 24[sp]
    8d4c:	6a 00       	jmp	[r10]
	...

00008d50 <__return_r24_r31>:
    8d50:	23 ef 01 00 	ld.w	0[sp], r29
    8d54:	23 e7 05 00 	ld.w	4[sp], r28
    8d58:	23 df 09 00 	ld.w	8[sp], r27
    8d5c:	23 d7 0d 00 	ld.w	12[sp], r26
    8d60:	23 cf 11 00 	ld.w	16[sp], r25
    8d64:	23 c7 15 00 	ld.w	20[sp], r24
    8d68:	23 ff 19 00 	ld.w	24[sp], lp
    8d6c:	03 1e 1c 00 	addi	28, sp, sp
    8d70:	7f 00       	jmp	[lp]
	...

00008d74 <__save_r25_r31>:
    8d74:	03 1e e8 ff 	addi	-24, sp, sp
    8d78:	63 ef 01 00 	st.w	r29, 0[sp]
    8d7c:	63 e7 05 00 	st.w	r28, 4[sp]
    8d80:	63 df 09 00 	st.w	r27, 8[sp]
    8d84:	63 d7 0d 00 	st.w	r26, 12[sp]
    8d88:	63 cf 11 00 	st.w	r25, 16[sp]
    8d8c:	63 ff 15 00 	st.w	lp, 20[sp]
    8d90:	6a 00       	jmp	[r10]
	...

00008d94 <__return_r25_r31>:
    8d94:	23 ef 01 00 	ld.w	0[sp], r29
    8d98:	23 e7 05 00 	ld.w	4[sp], r28
    8d9c:	23 df 09 00 	ld.w	8[sp], r27
    8da0:	23 d7 0d 00 	ld.w	12[sp], r26
    8da4:	23 cf 11 00 	ld.w	16[sp], r25
    8da8:	23 ff 15 00 	ld.w	20[sp], lp
    8dac:	03 1e 18 00 	addi	24, sp, sp
    8db0:	7f 00       	jmp	[lp]
	...

00008db4 <__save_r26_r31>:
    8db4:	03 1e ec ff 	addi	-20, sp, sp
    8db8:	63 ef 01 00 	st.w	r29, 0[sp]
    8dbc:	63 e7 05 00 	st.w	r28, 4[sp]
    8dc0:	63 df 09 00 	st.w	r27, 8[sp]
    8dc4:	63 d7 0d 00 	st.w	r26, 12[sp]
    8dc8:	63 ff 11 00 	st.w	lp, 16[sp]
    8dcc:	6a 00       	jmp	[r10]
	...

00008dd0 <__return_r26_r31>:
    8dd0:	23 ef 01 00 	ld.w	0[sp], r29
    8dd4:	23 e7 05 00 	ld.w	4[sp], r28
    8dd8:	23 df 09 00 	ld.w	8[sp], r27
    8ddc:	23 d7 0d 00 	ld.w	12[sp], r26
    8de0:	23 ff 11 00 	ld.w	16[sp], lp
    8de4:	03 1e 14 00 	addi	20, sp, sp
    8de8:	7f 00       	jmp	[lp]
	...

00008dec <__save_r27_r31>:
    8dec:	03 1e f0 ff 	addi	-16, sp, sp
    8df0:	63 ef 01 00 	st.w	r29, 0[sp]
    8df4:	63 e7 05 00 	st.w	r28, 4[sp]
    8df8:	63 df 09 00 	st.w	r27, 8[sp]
    8dfc:	63 ff 0d 00 	st.w	lp, 12[sp]
    8e00:	6a 00       	jmp	[r10]
	...

00008e04 <__return_r27_r31>:
    8e04:	23 ef 01 00 	ld.w	0[sp], r29
    8e08:	23 e7 05 00 	ld.w	4[sp], r28
    8e0c:	23 df 09 00 	ld.w	8[sp], r27
    8e10:	23 ff 0d 00 	ld.w	12[sp], lp
    8e14:	03 1e 10 00 	addi	16, sp, sp
    8e18:	7f 00       	jmp	[lp]
	...

00008e1c <__fpadd_parts>:
    8e1c:	26 57 01 00 	ld.w	0[r6], r10
    8e20:	61 52       	cmp	1, r10
    8e22:	a3 75       	bnh	8f06 <__fpadd_parts+0xea>
    8e24:	27 5f 01 00 	ld.w	0[r7], r11
    8e28:	61 5a       	cmp	1, r11
    8e2a:	bb 05       	bh	8e30 <__fpadd_parts+0x14>
    8e2c:	80 07 8a 02 	jr	90b6 <__fpadd_parts+0x29a>
    8e30:	64 52       	cmp	4, r10
    8e32:	e2 5d       	be	8eee <__fpadd_parts+0xd2>
    8e34:	64 5a       	cmp	4, r11
    8e36:	ba 05       	bne	8e3c <__fpadd_parts+0x20>
    8e38:	80 07 7e 02 	jr	90b6 <__fpadd_parts+0x29a>
    8e3c:	62 5a       	cmp	2, r11
    8e3e:	ba 05       	bne	8e44 <__fpadd_parts+0x28>
    8e40:	80 07 b2 01 	jr	8ff2 <__fpadd_parts+0x1d6>
    8e44:	62 52       	cmp	2, r10
    8e46:	ba 05       	bne	8e4c <__fpadd_parts+0x30>
    8e48:	80 07 6e 02 	jr	90b6 <__fpadd_parts+0x29a>
    8e4c:	26 7f 09 00 	ld.w	8[r6], r15
    8e50:	27 57 09 00 	ld.w	8[r7], r10
    8e54:	0f 70       	mov	r15, r14
    8e56:	aa 71       	sub	r10, r14
    8e58:	26 8f 0d 00 	ld.w	12[r6], r17
    8e5c:	26 97 11 00 	ld.w	16[r6], r18
    8e60:	27 67 0d 00 	ld.w	12[r7], r12
    8e64:	27 87 11 00 	ld.w	16[r7], r16
    8e68:	0e 68       	mov	r14, r13
    8e6a:	60 72       	cmp	0, r14
    8e6c:	be 05       	bge	8e72 <__fpadd_parts+0x56>
    8e6e:	80 07 c8 01 	jr	9036 <__fpadd_parts+0x21a>
    8e72:	20 5e 3f 00 	movea	63, r0, r11
    8e76:	eb 69       	cmp	r11, r13
    8e78:	9f 4d       	bgt	8f0a <__fpadd_parts+0xee>
    8e7a:	60 72       	cmp	0, r14
    8e7c:	bf 05       	bgt	8e82 <__fpadd_parts+0x66>
    8e7e:	80 07 3e 02 	jr	90bc <__fpadd_parts+0x2a0>
    8e82:	cd 56 20 00 	andi	32, r13, r10
    8e86:	ba 05       	bne	8e8c <__fpadd_parts+0x70>
    8e88:	80 07 c0 01 	jr	9048 <__fpadd_parts+0x22c>
    8e8c:	10 70       	mov	r16, r14
    8e8e:	cd 56 20 00 	andi	32, r13, r10
    8e92:	ed 77 80 00 	shr	r13, r14
    8e96:	00 9a       	mov	0, r19
    8e98:	60 52       	cmp	0, r10
    8e9a:	ba 05       	bne	8ea0 <__fpadd_parts+0x84>
    8e9c:	80 07 d0 01 	jr	906c <__fpadd_parts+0x250>
    8ea0:	01 52       	mov	1, r10
    8ea2:	ed 57 c0 00 	shl	r13, r10
    8ea6:	00 5a       	mov	0, r11
    8ea8:	0b 6e ff ff 	addi	-1, r11, r13
    8eac:	eb 69       	cmp	r11, r13
    8eae:	e9 5f 00 00 	setf	nc/nl, r11
    8eb2:	ab 51       	sub	r11, r10
    8eb4:	50 51       	and	r16, r10
    8eb6:	4d 61       	and	r13, r12
    8eb8:	0a 61       	or	r10, r12
    8eba:	26 6f 05 00 	ld.w	4[r6], r13
    8ebe:	27 57 05 00 	ld.w	4[r7], r10
    8ec2:	ea 67 00 00 	setf	nz, r12
    8ec6:	0e 61       	or	r14, r12
    8ec8:	13 80       	mov	r19, r16
    8eca:	ea 69       	cmp	r10, r13
    8ecc:	ca 2d       	bne	8f24 <__fpadd_parts+0x108>
    8ece:	0c 50       	mov	r12, r10
    8ed0:	d1 51       	add	r17, r10
    8ed2:	ec 51       	cmp	r12, r10
    8ed4:	e1 5f 00 00 	setf	c/l, r11
    8ed8:	d2 81       	add	r18, r16
    8eda:	d0 59       	add	r16, r11
    8edc:	68 6f 05 00 	st.w	r13, 4[r8]
    8ee0:	68 7f 09 00 	st.w	r15, 8[r8]
    8ee4:	68 57 0d 00 	st.w	r10, 12[r8]
    8ee8:	68 5f 11 00 	st.w	r11, 16[r8]
    8eec:	c5 65       	br	8fb4 <__fpadd_parts+0x198>
    8eee:	64 5a       	cmp	4, r11
    8ef0:	ba 0d       	bne	8f06 <__fpadd_parts+0xea>
    8ef2:	26 5f 05 00 	ld.w	4[r6], r11
    8ef6:	27 57 05 00 	ld.w	4[r7], r10
    8efa:	ea 59       	cmp	r10, r11
    8efc:	d2 05       	be	8f06 <__fpadd_parts+0xea>
    8efe:	40 36 01 00 	movhi	1, r0, r6
    8f02:	26 36 70 a1 	movea	-24208, r6, r6
    8f06:	06 50       	mov	r6, r10
    8f08:	7f 00       	jmp	[lp]
    8f0a:	ea 79       	cmp	r10, r15
    8f0c:	b7 05       	ble	8f12 <__fpadd_parts+0xf6>
    8f0e:	80 07 20 01 	jr	902e <__fpadd_parts+0x212>
    8f12:	0a 78       	mov	r10, r15
    8f14:	00 8a       	mov	0, r17
    8f16:	00 92       	mov	0, r18
    8f18:	26 6f 05 00 	ld.w	4[r6], r13
    8f1c:	27 57 05 00 	ld.w	4[r7], r10
    8f20:	ea 69       	cmp	r10, r13
    8f22:	e2 d5       	be	8ece <__fpadd_parts+0xb2>
    8f24:	60 6a       	cmp	0, r13
    8f26:	ba 05       	bne	8f2c <__fpadd_parts+0x110>
    8f28:	80 07 56 01 	jr	907e <__fpadd_parts+0x262>
    8f2c:	0c 50       	mov	r12, r10
    8f2e:	b1 51       	sub	r17, r10
    8f30:	10 58       	mov	r16, r11
    8f32:	ec 51       	cmp	r12, r10
    8f34:	eb 67 00 00 	setf	h, r12
    8f38:	b2 59       	sub	r18, r11
    8f3a:	ac 59       	sub	r12, r11
    8f3c:	60 5a       	cmp	0, r11
    8f3e:	be 05       	bge	8f44 <__fpadd_parts+0x128>
    8f40:	80 07 56 01 	jr	9096 <__fpadd_parts+0x27a>
    8f44:	68 07 05 00 	st.w	r0, 4[r8]
    8f48:	68 7f 09 00 	st.w	r15, 8[r8]
    8f4c:	68 57 0d 00 	st.w	r10, 12[r8]
    8f50:	68 5f 11 00 	st.w	r11, 16[r8]
    8f54:	0a 76 ff ff 	addi	-1, r10, r14
    8f58:	ea 71       	cmp	r10, r14
    8f5a:	e9 6f 00 00 	setf	nc/nl, r13
    8f5e:	40 8e 00 10 	movhi	4096, r0, r17
    8f62:	8b 69       	subr	r11, r13
    8f64:	31 66 ff ff 	movea	-1, r17, r12
    8f68:	ec 69       	cmp	r12, r13
    8f6a:	db 25       	bh	8fb4 <__fpadd_parts+0x198>
    8f6c:	ba 05       	bne	8f72 <__fpadd_parts+0x156>
    8f6e:	80 07 94 01 	jr	9102 <__fpadd_parts+0x2e6>
    8f72:	28 77 09 00 	ld.w	8[r8], r14
    8f76:	31 8e ff ff 	movea	-1, r17, r17
    8f7a:	5f 72       	add	-1, r14
    8f7c:	b5 05       	br	8f82 <__fpadd_parts+0x166>
    8f7e:	f1 79       	cmp	r17, r15
    8f80:	c2 7d       	be	9078 <__fpadd_parts+0x25c>
    8f82:	0a 68       	mov	r10, r13
    8f84:	ca 69       	add	r10, r13
    8f86:	ea 69       	cmp	r10, r13
    8f88:	e1 67 00 00 	setf	c/l, r12
    8f8c:	cb 59       	add	r11, r11
    8f8e:	0d 86 ff ff 	addi	-1, r13, r16
    8f92:	cb 61       	add	r11, r12
    8f94:	ed 81       	cmp	r13, r16
    8f96:	e9 7f 00 00 	setf	nc/nl, r15
    8f9a:	8c 79       	subr	r12, r15
    8f9c:	0e 90       	mov	r14, r18
    8f9e:	0d 50       	mov	r13, r10
    8fa0:	0c 58       	mov	r12, r11
    8fa2:	5f 72       	add	-1, r14
    8fa4:	f1 79       	cmp	r17, r15
    8fa6:	c3 ed       	bnh	8f7e <__fpadd_parts+0x162>
    8fa8:	68 6f 0d 00 	st.w	r13, 12[r8]
    8fac:	68 67 11 00 	st.w	r12, 16[r8]
    8fb0:	68 97 09 00 	st.w	r18, 8[r8]
    8fb4:	03 62       	mov	3, r12
    8fb6:	68 67 01 00 	st.w	r12, 0[r8]
    8fba:	40 66 00 20 	movhi	8192, r0, r12
    8fbe:	2c 66 ff ff 	movea	-1, r12, r12
    8fc2:	ec 59       	cmp	r12, r11
    8fc4:	c3 15       	bnh	8fec <__fpadd_parts+0x1d0>
    8fc6:	0b 70       	mov	r11, r14
    8fc8:	0a 60       	mov	r10, r12
    8fca:	28 6f 09 00 	ld.w	8[r8], r13
    8fce:	df 72       	shl	31, r14
    8fd0:	81 62       	shr	1, r12
    8fd2:	0e 61       	or	r14, r12
    8fd4:	ca 56 01 00 	andi	1, r10, r10
    8fd8:	0c 51       	or	r12, r10
    8fda:	81 5a       	shr	1, r11
    8fdc:	0d 66 01 00 	addi	1, r13, r12
    8fe0:	68 57 0d 00 	st.w	r10, 12[r8]
    8fe4:	68 5f 11 00 	st.w	r11, 16[r8]
    8fe8:	68 67 09 00 	st.w	r12, 8[r8]
    8fec:	08 30       	mov	r8, r6
    8fee:	06 50       	mov	r6, r10
    8ff0:	7f 00       	jmp	[lp]
    8ff2:	62 52       	cmp	2, r10
    8ff4:	9a 8d       	bne	8f06 <__fpadd_parts+0xea>
    8ff6:	68 57 01 00 	st.w	r10, 0[r8]
    8ffa:	26 57 05 00 	ld.w	4[r6], r10
    8ffe:	68 57 05 00 	st.w	r10, 4[r8]
    9002:	26 57 09 00 	ld.w	8[r6], r10
    9006:	26 67 05 00 	ld.w	4[r6], r12
    900a:	68 57 09 00 	st.w	r10, 8[r8]
    900e:	26 5f 0d 00 	ld.w	12[r6], r11
    9012:	27 57 05 00 	ld.w	4[r7], r10
    9016:	68 5f 0d 00 	st.w	r11, 12[r8]
    901a:	26 5f 11 00 	ld.w	16[r6], r11
    901e:	4c 51       	and	r12, r10
    9020:	68 5f 11 00 	st.w	r11, 16[r8]
    9024:	68 57 05 00 	st.w	r10, 4[r8]
    9028:	08 30       	mov	r8, r6
    902a:	bf 07 dc fe 	jr	8f06 <__fpadd_parts+0xea>
    902e:	00 62       	mov	0, r12
    9030:	00 82       	mov	0, r16
    9032:	bf 07 e6 fe 	jr	8f18 <__fpadd_parts+0xfc>
    9036:	80 69       	subr	r0, r13
    9038:	20 5e 3f 00 	movea	63, r0, r11
    903c:	eb 69       	cmp	r11, r13
    903e:	b7 05       	ble	9044 <__fpadd_parts+0x228>
    9040:	bf 07 ca fe 	jr	8f0a <__fpadd_parts+0xee>
    9044:	bf 07 36 fe 	jr	8e7a <__fpadd_parts+0x5e>
    9048:	10 50       	mov	r16, r10
    904a:	c1 52       	shl	1, r10
    904c:	2d 58       	not	r13, r11
    904e:	0c 70       	mov	r12, r14
    9050:	eb 57 c0 00 	shl	r11, r10
    9054:	ed 77 80 00 	shr	r13, r14
    9058:	0a 71       	or	r10, r14
    905a:	10 98       	mov	r16, r19
    905c:	cd 56 20 00 	andi	32, r13, r10
    9060:	ed 9f 80 00 	shr	r13, r19
    9064:	60 52       	cmp	0, r10
    9066:	b2 05       	be	906c <__fpadd_parts+0x250>
    9068:	bf 07 38 fe 	jr	8ea0 <__fpadd_parts+0x84>
    906c:	01 5a       	mov	1, r11
    906e:	00 52       	mov	0, r10
    9070:	ed 5f c0 00 	shl	r13, r11
    9074:	bf 07 34 fe 	jr	8ea8 <__fpadd_parts+0x8c>
    9078:	7e 82       	cmp	-2, r16
    907a:	c3 85       	bnh	8f82 <__fpadd_parts+0x166>
    907c:	e5 95       	br	8fa8 <__fpadd_parts+0x18c>
    907e:	11 50       	mov	r17, r10
    9080:	ac 51       	sub	r12, r10
    9082:	12 58       	mov	r18, r11
    9084:	f1 51       	cmp	r17, r10
    9086:	eb 67 00 00 	setf	h, r12
    908a:	b0 59       	sub	r16, r11
    908c:	ac 59       	sub	r12, r11
    908e:	60 5a       	cmp	0, r11
    9090:	b6 05       	blt	9096 <__fpadd_parts+0x27a>
    9092:	bf 07 b2 fe 	jr	8f44 <__fpadd_parts+0x128>
    9096:	80 51       	subr	r0, r10
    9098:	ea 67 00 00 	setf	nz, r12
    909c:	80 59       	subr	r0, r11
    909e:	ac 59       	sub	r12, r11
    90a0:	01 62       	mov	1, r12
    90a2:	68 67 05 00 	st.w	r12, 4[r8]
    90a6:	68 7f 09 00 	st.w	r15, 8[r8]
    90aa:	68 57 0d 00 	st.w	r10, 12[r8]
    90ae:	68 5f 11 00 	st.w	r11, 16[r8]
    90b2:	bf 07 a2 fe 	jr	8f54 <__fpadd_parts+0x138>
    90b6:	07 30       	mov	r7, r6
    90b8:	06 50       	mov	r6, r10
    90ba:	7f 00       	jmp	[lp]
    90bc:	60 72       	cmp	0, r14
    90be:	ba 05       	bne	90c4 <__fpadd_parts+0x2a8>
    90c0:	bf 07 58 fe 	jr	8f18 <__fpadd_parts+0xfc>
    90c4:	cd 56 20 00 	andi	32, r13, r10
    90c8:	cd 79       	add	r13, r15
    90ca:	60 52       	cmp	0, r10
    90cc:	e2 25       	be	9118 <__fpadd_parts+0x2fc>
    90ce:	12 70       	mov	r18, r14
    90d0:	ed 77 80 00 	shr	r13, r14
    90d4:	00 9a       	mov	0, r19
    90d6:	cd 56 20 00 	andi	32, r13, r10
    90da:	a2 1d       	be	910e <__fpadd_parts+0x2f2>
    90dc:	01 52       	mov	1, r10
    90de:	ed 57 c0 00 	shl	r13, r10
    90e2:	00 5a       	mov	0, r11
    90e4:	0b 6e ff ff 	addi	-1, r11, r13
    90e8:	eb 69       	cmp	r11, r13
    90ea:	e9 5f 00 00 	setf	nc/nl, r11
    90ee:	ab 51       	sub	r11, r10
    90f0:	52 51       	and	r18, r10
    90f2:	4d 89       	and	r13, r17
    90f4:	0a 89       	or	r10, r17
    90f6:	ea 8f 00 00 	setf	nz, r17
    90fa:	0e 89       	or	r14, r17
    90fc:	13 90       	mov	r19, r18
    90fe:	bf 07 1a fe 	jr	8f18 <__fpadd_parts+0xfc>
    9102:	7e 72       	cmp	-2, r14
    9104:	bb 05       	bh	910a <__fpadd_parts+0x2ee>
    9106:	bf 07 6c fe 	jr	8f72 <__fpadd_parts+0x156>
    910a:	bf 07 aa fe 	jr	8fb4 <__fpadd_parts+0x198>
    910e:	01 5a       	mov	1, r11
    9110:	00 52       	mov	0, r10
    9112:	ed 5f c0 00 	shl	r13, r11
    9116:	f5 e5       	br	90e4 <__fpadd_parts+0x2c8>
    9118:	12 50       	mov	r18, r10
    911a:	c1 52       	shl	1, r10
    911c:	2d 58       	not	r13, r11
    911e:	11 70       	mov	r17, r14
    9120:	eb 57 c0 00 	shl	r11, r10
    9124:	ed 77 80 00 	shr	r13, r14
    9128:	12 98       	mov	r18, r19
    912a:	0a 71       	or	r10, r14
    912c:	ed 9f 80 00 	shr	r13, r19
    9130:	b5 d5       	br	90d6 <__fpadd_parts+0x2ba>
	...

00009134 <___adddf3>:
    9134:	03 1e ac ff 	addi	-84, sp, sp
    9138:	63 ef 4d 00 	st.w	r29, 76[sp]
    913c:	63 3f 05 00 	st.w	r7, 4[sp]
    9140:	40 ee 01 00 	movhi	1, r0, r29
    9144:	20 3e 10 00 	movea	16, r0, r7
    9148:	63 37 01 00 	st.w	r6, 0[sp]
    914c:	c3 39       	add	sp, r7
    914e:	03 30       	mov	sp, r6
    9150:	3d ee 54 9d 	movea	-25260, r29, r29
    9154:	63 ff 51 00 	st.w	lp, 80[sp]
    9158:	63 4f 0d 00 	st.w	r9, 12[sp]
    915c:	63 47 09 00 	st.w	r8, 8[sp]
    9160:	80 ff 04 00 	jarl	9164 <___adddf3+0x30>, lp
    9164:	44 fa       	add	4, lp
    9166:	7d 00       	jmp	[r29]
    9168:	20 3e 24 00 	movea	36, r0, r7
    916c:	03 36 08 00 	addi	8, sp, r6
    9170:	c3 39       	add	sp, r7
    9172:	80 ff 04 00 	jarl	9176 <___adddf3+0x42>, lp
    9176:	44 fa       	add	4, lp
    9178:	7d 00       	jmp	[r29]
    917a:	20 36 10 00 	movea	16, r0, r6
    917e:	20 3e 24 00 	movea	36, r0, r7
    9182:	c3 31       	add	sp, r6
    9184:	c3 39       	add	sp, r7
    9186:	03 46 38 00 	addi	56, sp, r8
    918a:	bf ff 92 fc 	jarl	8e1c <__fpadd_parts>, lp
    918e:	0a 30       	mov	r10, r6
    9190:	80 ff 28 0a 	jarl	9bb8 <___pack_d>, lp
    9194:	03 1e 4c 00 	addi	76, sp, sp
    9198:	bf 07 e2 82 	jr	147a <__return_r29_r31>

0000919c <___subdf3>:
    919c:	03 1e ac ff 	addi	-84, sp, sp
    91a0:	63 ef 4d 00 	st.w	r29, 76[sp]
    91a4:	63 3f 05 00 	st.w	r7, 4[sp]
    91a8:	40 ee 01 00 	movhi	1, r0, r29
    91ac:	20 3e 10 00 	movea	16, r0, r7
    91b0:	63 37 01 00 	st.w	r6, 0[sp]
    91b4:	c3 39       	add	sp, r7
    91b6:	03 30       	mov	sp, r6
    91b8:	3d ee 54 9d 	movea	-25260, r29, r29
    91bc:	63 ff 51 00 	st.w	lp, 80[sp]
    91c0:	63 4f 0d 00 	st.w	r9, 12[sp]
    91c4:	63 47 09 00 	st.w	r8, 8[sp]
    91c8:	80 ff 04 00 	jarl	91cc <___subdf3+0x30>, lp
    91cc:	44 fa       	add	4, lp
    91ce:	7d 00       	jmp	[r29]
    91d0:	20 3e 24 00 	movea	36, r0, r7
    91d4:	03 36 08 00 	addi	8, sp, r6
    91d8:	c3 39       	add	sp, r7
    91da:	80 ff 04 00 	jarl	91de <___subdf3+0x42>, lp
    91de:	44 fa       	add	4, lp
    91e0:	7d 00       	jmp	[r29]
    91e2:	23 57 29 00 	ld.w	40[sp], r10
    91e6:	20 36 10 00 	movea	16, r0, r6
    91ea:	20 3e 24 00 	movea	36, r0, r7
    91ee:	c3 31       	add	sp, r6
    91f0:	c3 39       	add	sp, r7
    91f2:	03 46 38 00 	addi	56, sp, r8
    91f6:	aa 56 01 00 	xori	1, r10, r10
    91fa:	63 57 29 00 	st.w	r10, 40[sp]
    91fe:	bf ff 1e fc 	jarl	8e1c <__fpadd_parts>, lp
    9202:	0a 30       	mov	r10, r6
    9204:	80 ff b4 09 	jarl	9bb8 <___pack_d>, lp
    9208:	03 1e 4c 00 	addi	76, sp, sp
    920c:	bf 07 6e 82 	jr	147a <__return_r29_r31>

00009210 <___muldf3>:
    9210:	03 1e 8c ff 	addi	-116, sp, sp
    9214:	63 ef 4d 00 	st.w	r29, 76[sp]
    9218:	63 3f 05 00 	st.w	r7, 4[sp]
    921c:	40 ee 01 00 	movhi	1, r0, r29
    9220:	20 3e 10 00 	movea	16, r0, r7
    9224:	63 37 01 00 	st.w	r6, 0[sp]
    9228:	c3 39       	add	sp, r7
    922a:	03 30       	mov	sp, r6
    922c:	3d ee 54 9d 	movea	-25260, r29, r29
    9230:	63 ff 71 00 	st.w	lp, 112[sp]
    9234:	63 47 09 00 	st.w	r8, 8[sp]
    9238:	63 4f 0d 00 	st.w	r9, 12[sp]
    923c:	63 af 6d 00 	st.w	r21, 108[sp]
    9240:	63 b7 69 00 	st.w	r22, 104[sp]
    9244:	63 bf 65 00 	st.w	r23, 100[sp]
    9248:	63 c7 61 00 	st.w	r24, 96[sp]
    924c:	63 cf 5d 00 	st.w	r25, 92[sp]
    9250:	63 d7 59 00 	st.w	r26, 88[sp]
    9254:	63 df 55 00 	st.w	r27, 84[sp]
    9258:	63 e7 51 00 	st.w	r28, 80[sp]
    925c:	80 ff 04 00 	jarl	9260 <___muldf3+0x50>, lp
    9260:	44 fa       	add	4, lp
    9262:	7d 00       	jmp	[r29]
    9264:	20 3e 24 00 	movea	36, r0, r7
    9268:	03 36 08 00 	addi	8, sp, r6
    926c:	c3 39       	add	sp, r7
    926e:	80 ff 04 00 	jarl	9272 <___muldf3+0x62>, lp
    9272:	44 fa       	add	4, lp
    9274:	7d 00       	jmp	[r29]
    9276:	23 57 11 00 	ld.w	16[sp], r10
    927a:	61 52       	cmp	1, r10
    927c:	bb 15       	bh	92a2 <___muldf3+0x92>
    927e:	23 5f 15 00 	ld.w	20[sp], r11
    9282:	23 57 29 00 	ld.w	40[sp], r10
    9286:	20 36 10 00 	movea	16, r0, r6
    928a:	ea 59       	cmp	r10, r11
    928c:	ea 57 00 00 	setf	nz, r10
    9290:	c3 31       	add	sp, r6
    9292:	63 57 15 00 	st.w	r10, 20[sp]
    9296:	80 ff 22 09 	jarl	9bb8 <___pack_d>, lp
    929a:	03 1e 4c 00 	addi	76, sp, sp
    929e:	bf 07 0e fa 	jr	8cac <__return_r21_r31>
    92a2:	23 5f 25 00 	ld.w	36[sp], r11
    92a6:	61 5a       	cmp	1, r11
    92a8:	bb 15       	bh	92ce <___muldf3+0xbe>
    92aa:	23 57 29 00 	ld.w	40[sp], r10
    92ae:	23 5f 15 00 	ld.w	20[sp], r11
    92b2:	20 36 24 00 	movea	36, r0, r6
    92b6:	c3 31       	add	sp, r6
    92b8:	ea 59       	cmp	r10, r11
    92ba:	ea 57 00 00 	setf	nz, r10
    92be:	63 57 29 00 	st.w	r10, 40[sp]
    92c2:	80 ff f6 08 	jarl	9bb8 <___pack_d>, lp
    92c6:	03 1e 4c 00 	addi	76, sp, sp
    92ca:	bf 07 e2 f9 	jr	8cac <__return_r21_r31>
    92ce:	64 52       	cmp	4, r10
    92d0:	8a 0d       	bne	92e0 <___muldf3+0xd0>
    92d2:	62 5a       	cmp	2, r11
    92d4:	da d5       	bne	927e <___muldf3+0x6e>
    92d6:	40 36 01 00 	movhi	1, r0, r6
    92da:	26 36 70 a1 	movea	-24208, r6, r6
    92de:	c5 dd       	br	9296 <___muldf3+0x86>
    92e0:	64 5a       	cmp	4, r11
    92e2:	ca 05       	bne	92ea <___muldf3+0xda>
    92e4:	62 52       	cmp	2, r10
    92e6:	82 fd       	be	92d6 <___muldf3+0xc6>
    92e8:	95 e5       	br	92aa <___muldf3+0x9a>
    92ea:	62 52       	cmp	2, r10
    92ec:	92 cd       	be	927e <___muldf3+0x6e>
    92ee:	62 5a       	cmp	2, r11
    92f0:	d2 dd       	be	92aa <___muldf3+0x9a>
    92f2:	23 e7 1d 00 	ld.w	28[sp], r28
    92f6:	23 c7 31 00 	ld.w	48[sp], r24
    92fa:	40 ee 01 00 	movhi	1, r0, r29
    92fe:	3d ee 80 9a 	movea	-25984, r29, r29
    9302:	23 d7 35 00 	ld.w	52[sp], r26
    9306:	1c 30       	mov	r28, r6
    9308:	00 3a       	mov	0, r7
    930a:	18 40       	mov	r24, r8
    930c:	00 4a       	mov	0, r9
    930e:	80 ff 04 00 	jarl	9312 <___muldf3+0x102>, lp
    9312:	44 fa       	add	4, lp
    9314:	7d 00       	jmp	[r29]
    9316:	1a 30       	mov	r26, r6
    9318:	1c 40       	mov	r28, r8
    931a:	23 df 21 00 	ld.w	32[sp], r27
    931e:	00 3a       	mov	0, r7
    9320:	00 4a       	mov	0, r9
    9322:	0a a8       	mov	r10, r21
    9324:	0b c8       	mov	r11, r25
    9326:	80 ff 04 00 	jarl	932a <___muldf3+0x11a>, lp
    932a:	44 fa       	add	4, lp
    932c:	7d 00       	jmp	[r29]
    932e:	1a 40       	mov	r26, r8
    9330:	1b 30       	mov	r27, r6
    9332:	00 3a       	mov	0, r7
    9334:	00 4a       	mov	0, r9
    9336:	0a b8       	mov	r10, r23
    9338:	0b e0       	mov	r11, r28
    933a:	80 ff 04 00 	jarl	933e <___muldf3+0x12e>, lp
    933e:	44 fa       	add	4, lp
    9340:	7d 00       	jmp	[r29]
    9342:	1b 30       	mov	r27, r6
    9344:	00 3a       	mov	0, r7
    9346:	18 40       	mov	r24, r8
    9348:	00 4a       	mov	0, r9
    934a:	0a b0       	mov	r10, r22
    934c:	0b d0       	mov	r11, r26
    934e:	80 ff 04 00 	jarl	9352 <___muldf3+0x142>, lp
    9352:	44 fa       	add	4, lp
    9354:	7d 00       	jmp	[r29]
    9356:	0a 60       	mov	r10, r12
    9358:	d7 61       	add	r23, r12
    935a:	ea 61       	cmp	r10, r12
    935c:	e1 6f 00 00 	setf	c/l, r13
    9360:	dc 59       	add	r28, r11
    9362:	cb 69       	add	r11, r13
    9364:	ed e1       	cmp	r13, r28
    9366:	db 7d       	bh	9460 <___muldf3+0x250>
    9368:	ba 05       	bne	936e <___muldf3+0x15e>
    936a:	ec b9       	cmp	r12, r23
    936c:	ab 7d       	bh	9460 <___muldf3+0x250>
    936e:	00 8a       	mov	0, r17
    9370:	00 5a       	mov	0, r11
    9372:	d9 61       	add	r25, r12
    9374:	15 70       	mov	r21, r14
    9376:	ec c9       	cmp	r12, r25
    9378:	a3 05       	bnh	937c <___muldf3+0x16c>
    937a:	01 8a       	mov	1, r17
    937c:	0d 80       	mov	r13, r16
    937e:	d6 81       	add	r22, r16
    9380:	ed 81       	cmp	r13, r16
    9382:	e1 7f 00 00 	setf	c/l, r15
    9386:	23 6f 2d 00 	ld.w	44[sp], r13
    938a:	23 57 19 00 	ld.w	24[sp], r10
    938e:	da 79       	add	r26, r15
    9390:	cb 79       	add	r11, r15
    9392:	23 97 15 00 	ld.w	20[sp], r18
    9396:	23 5f 29 00 	ld.w	40[sp], r11
    939a:	d0 89       	add	r16, r17
    939c:	cd 51       	add	r13, r10
    939e:	eb 91       	cmp	r11, r18
    93a0:	ea 5f 00 00 	setf	nz, r11
    93a4:	f0 89       	cmp	r16, r17
    93a6:	e1 6f 00 00 	setf	c/l, r13
    93aa:	0a 86 04 00 	addi	4, r10, r16
    93ae:	40 9e 00 20 	movhi	8192, r0, r19
    93b2:	63 5f 3d 00 	st.w	r11, 60[sp]
    93b6:	cf 69       	add	r15, r13
    93b8:	63 87 41 00 	st.w	r16, 64[sp]
    93bc:	33 9e ff ff 	movea	-1, r19, r19
    93c0:	11 58       	mov	r17, r11
    93c2:	f3 69       	cmp	r19, r13
    93c4:	93 1d       	bnh	93f6 <___muldf3+0x1e6>
    93c6:	45 52       	add	5, r10
    93c8:	0d 78       	mov	r13, r15
    93ca:	cb 86 01 00 	andi	1, r11, r16
    93ce:	0c 88       	mov	r12, r17
    93d0:	df 7a       	shl	31, r15
    93d2:	81 5a       	shr	1, r11
    93d4:	81 6a       	shr	1, r13
    93d6:	df 8a       	shl	31, r17
    93d8:	0a 90       	mov	r10, r18
    93da:	60 82       	cmp	0, r16
    93dc:	f2 05       	be	93ea <___muldf3+0x1da>
    93de:	81 72       	shr	1, r14
    93e0:	81 62       	shr	1, r12
    93e2:	40 86 00 80 	movhi	-32768, r0, r16
    93e6:	11 71       	or	r17, r14
    93e8:	10 61       	or	r16, r12
    93ea:	0f 59       	or	r15, r11
    93ec:	41 52       	add	1, r10
    93ee:	f3 69       	cmp	r19, r13
    93f0:	cb ed       	bh	93c8 <___muldf3+0x1b8>
    93f2:	63 97 41 00 	st.w	r18, 64[sp]
    93f6:	40 9e 00 10 	movhi	4096, r0, r19
    93fa:	33 9e ff ff 	movea	-1, r19, r19
    93fe:	f3 69       	cmp	r19, r13
    9400:	fb 1d       	bh	943e <___muldf3+0x22e>
    9402:	23 7f 41 00 	ld.w	64[sp], r15
    9406:	5f 7a       	add	-1, r15
    9408:	0b 88       	mov	r11, r17
    940a:	cb 89       	add	r11, r17
    940c:	eb 89       	cmp	r11, r17
    940e:	e1 57 00 00 	setf	c/l, r10
    9412:	cd 69       	add	r13, r13
    9414:	0e 80       	mov	r14, r16
    9416:	cd 51       	add	r13, r10
    9418:	ce 81       	add	r14, r16
    941a:	0f 90       	mov	r15, r18
    941c:	11 58       	mov	r17, r11
    941e:	0a 68       	mov	r10, r13
    9420:	60 62       	cmp	0, r12
    9422:	be 05       	bge	9428 <___muldf3+0x218>
    9424:	91 5e 01 00 	ori	1, r17, r11
    9428:	ee 81       	cmp	r14, r16
    942a:	e1 8f 00 00 	setf	c/l, r17
    942e:	cc 61       	add	r12, r12
    9430:	10 70       	mov	r16, r14
    9432:	d1 61       	add	r17, r12
    9434:	5f 7a       	add	-1, r15
    9436:	f3 51       	cmp	r19, r10
    9438:	83 ed       	bnh	9408 <___muldf3+0x1f8>
    943a:	63 97 41 00 	st.w	r18, 64[sp]
    943e:	cb 56 ff 00 	andi	255, r11, r10
    9442:	20 7e 80 00 	movea	128, r0, r15
    9446:	ef 51       	cmp	r15, r10
    9448:	f2 0d       	be	9466 <___muldf3+0x256>
    944a:	03 52       	mov	3, r10
    944c:	63 5f 45 00 	st.w	r11, 68[sp]
    9450:	63 6f 49 00 	st.w	r13, 72[sp]
    9454:	63 57 39 00 	st.w	r10, 56[sp]
    9458:	03 36 38 00 	addi	56, sp, r6
    945c:	bf 07 3a fe 	jr	9296 <___muldf3+0x86>
    9460:	00 8a       	mov	0, r17
    9462:	01 5a       	mov	1, r11
    9464:	f5 85       	br	9372 <___muldf3+0x162>
    9466:	cb 7e 00 01 	andi	256, r11, r15
    946a:	8a f5       	bne	944a <___muldf3+0x23a>
    946c:	0e 61       	or	r14, r12
    946e:	e2 ed       	be	944a <___muldf3+0x23a>
    9470:	cb 51       	add	r11, r10
    9472:	eb 51       	cmp	r11, r10
    9474:	e1 67 00 00 	setf	c/l, r12
    9478:	20 5e 00 ff 	movea	-256, r0, r11
    947c:	4a 59       	and	r10, r11
    947e:	cc 69       	add	r12, r13
    9480:	d5 e5       	br	944a <___muldf3+0x23a>
	...

00009484 <___divdf3>:
    9484:	03 1e c0 ff 	addi	-64, sp, sp
    9488:	63 ef 39 00 	st.w	r29, 56[sp]
    948c:	63 3f 05 00 	st.w	r7, 4[sp]
    9490:	40 ee 01 00 	movhi	1, r0, r29
    9494:	20 3e 10 00 	movea	16, r0, r7
    9498:	63 37 01 00 	st.w	r6, 0[sp]
    949c:	c3 39       	add	sp, r7
    949e:	03 30       	mov	sp, r6
    94a0:	3d ee 54 9d 	movea	-25260, r29, r29
    94a4:	63 ff 3d 00 	st.w	lp, 60[sp]
    94a8:	63 47 09 00 	st.w	r8, 8[sp]
    94ac:	63 4f 0d 00 	st.w	r9, 12[sp]
    94b0:	80 ff 04 00 	jarl	94b4 <___divdf3+0x30>, lp
    94b4:	44 fa       	add	4, lp
    94b6:	7d 00       	jmp	[r29]
    94b8:	20 3e 24 00 	movea	36, r0, r7
    94bc:	03 36 08 00 	addi	8, sp, r6
    94c0:	c3 39       	add	sp, r7
    94c2:	80 ff 04 00 	jarl	94c6 <___divdf3+0x42>, lp
    94c6:	44 fa       	add	4, lp
    94c8:	7d 00       	jmp	[r29]
    94ca:	23 57 11 00 	ld.w	16[sp], r10
    94ce:	61 52       	cmp	1, r10
    94d0:	9b 0d       	bh	94e2 <___divdf3+0x5e>
    94d2:	03 36 10 00 	addi	16, sp, r6
    94d6:	80 ff e2 06 	jarl	9bb8 <___pack_d>, lp
    94da:	03 1e 38 00 	addi	56, sp, sp
    94de:	bf 07 9c 7f 	jr	147a <__return_r29_r31>
    94e2:	23 5f 25 00 	ld.w	36[sp], r11
    94e6:	61 5a       	cmp	1, r11
    94e8:	ab 0d       	bh	94fc <___divdf3+0x78>
    94ea:	20 36 24 00 	movea	36, r0, r6
    94ee:	c3 31       	add	sp, r6
    94f0:	80 ff c8 06 	jarl	9bb8 <___pack_d>, lp
    94f4:	03 1e 38 00 	addi	56, sp, sp
    94f8:	bf 07 82 7f 	jr	147a <__return_r29_r31>
    94fc:	23 67 15 00 	ld.w	20[sp], r12
    9500:	23 6f 29 00 	ld.w	40[sp], r13
    9504:	2d 61       	xor	r13, r12
    9506:	63 67 15 00 	st.w	r12, 20[sp]
    950a:	64 52       	cmp	4, r10
    950c:	b2 05       	be	9512 <___divdf3+0x8e>
    950e:	62 52       	cmp	2, r10
    9510:	8a 0d       	bne	9520 <___divdf3+0x9c>
    9512:	eb 51       	cmp	r11, r10
    9514:	fa dd       	bne	94d2 <___divdf3+0x4e>
    9516:	40 36 01 00 	movhi	1, r0, r6
    951a:	26 36 70 a1 	movea	-24208, r6, r6
    951e:	c5 dd       	br	94d6 <___divdf3+0x52>
    9520:	64 5a       	cmp	4, r11
    9522:	c2 55       	be	95ca <___divdf3+0x146>
    9524:	62 5a       	cmp	2, r11
    9526:	d2 5d       	be	95e0 <___divdf3+0x15c>
    9528:	23 67 19 00 	ld.w	24[sp], r12
    952c:	23 5f 2d 00 	ld.w	44[sp], r11
    9530:	23 57 21 00 	ld.w	32[sp], r10
    9534:	ab 61       	sub	r11, r12
    9536:	23 87 35 00 	ld.w	52[sp], r16
    953a:	63 67 19 00 	st.w	r12, 24[sp]
    953e:	23 5f 1d 00 	ld.w	28[sp], r11
    9542:	23 3f 31 00 	ld.w	48[sp], r7
    9546:	ea 81       	cmp	r10, r16
    9548:	cb 05       	bh	9550 <___divdf3+0xcc>
    954a:	ea 0d       	bne	9566 <___divdf3+0xe2>
    954c:	eb 39       	cmp	r11, r7
    954e:	c3 0d       	bnh	9566 <___divdf3+0xe2>
    9550:	0b 68       	mov	r11, r13
    9552:	cb 69       	add	r11, r13
    9554:	eb 69       	cmp	r11, r13
    9556:	e1 77 00 00 	setf	c/l, r14
    955a:	ca 51       	add	r10, r10
    955c:	5f 62       	add	-1, r12
    955e:	0d 58       	mov	r13, r11
    9560:	ce 51       	add	r14, r10
    9562:	63 67 19 00 	st.w	r12, 24[sp]
    9566:	20 76 3d 00 	movea	61, r0, r14
    956a:	00 62       	mov	0, r12
    956c:	40 6e 00 10 	movhi	4096, r0, r13
    9570:	00 9a       	mov	0, r19
    9572:	00 32       	mov	0, r6
    9574:	0d 90       	mov	r13, r18
    9576:	df 92       	shl	31, r18
    9578:	5f 72       	add	-1, r14
    957a:	ea 81       	cmp	r10, r16
    957c:	fb 0d       	bh	959a <___divdf3+0x116>
    957e:	0b 78       	mov	r11, r15
    9580:	a7 79       	sub	r7, r15
    9582:	ea 81       	cmp	r10, r16
    9584:	ba 05       	bne	958a <___divdf3+0x106>
    9586:	eb 39       	cmp	r11, r7
    9588:	9b 0d       	bh	959a <___divdf3+0x116>
    958a:	eb 79       	cmp	r11, r15
    958c:	eb 8f 00 00 	setf	h, r17
    9590:	b0 51       	sub	r16, r10
    9592:	0f 58       	mov	r15, r11
    9594:	0c 99       	or	r12, r19
    9596:	0d 31       	or	r13, r6
    9598:	b1 51       	sub	r17, r10
    959a:	0b 78       	mov	r11, r15
    959c:	cb 79       	add	r11, r15
    959e:	eb 79       	cmp	r11, r15
    95a0:	e1 8f 00 00 	setf	c/l, r17
    95a4:	81 62       	shr	1, r12
    95a6:	ca 51       	add	r10, r10
    95a8:	12 61       	or	r18, r12
    95aa:	81 6a       	shr	1, r13
    95ac:	0f 58       	mov	r15, r11
    95ae:	d1 51       	add	r17, r10
    95b0:	60 72       	cmp	0, r14
    95b2:	9a e5       	bne	9574 <___divdf3+0xf0>
    95b4:	d3 66 ff 00 	andi	255, r19, r12
    95b8:	20 6e 80 00 	movea	128, r0, r13
    95bc:	ed 61       	cmp	r13, r12
    95be:	92 1d       	be	95f0 <___divdf3+0x16c>
    95c0:	63 9f 1d 00 	st.w	r19, 28[sp]
    95c4:	63 37 21 00 	st.w	r6, 32[sp]
    95c8:	d5 85       	br	94d2 <___divdf3+0x4e>
    95ca:	20 36 10 00 	movea	16, r0, r6
    95ce:	63 07 1d 00 	st.w	r0, 28[sp]
    95d2:	63 07 21 00 	st.w	r0, 32[sp]
    95d6:	63 07 19 00 	st.w	r0, 24[sp]
    95da:	c3 31       	add	sp, r6
    95dc:	bf 07 fa fe 	jr	94d6 <___divdf3+0x52>
    95e0:	04 52       	mov	4, r10
    95e2:	20 36 10 00 	movea	16, r0, r6
    95e6:	63 57 11 00 	st.w	r10, 16[sp]
    95ea:	c3 31       	add	sp, r6
    95ec:	bf 07 ea fe 	jr	94d6 <___divdf3+0x52>
    95f0:	d3 6e 00 01 	andi	256, r19, r13
    95f4:	ea e5       	bne	95c0 <___divdf3+0x13c>
    95f6:	0f 51       	or	r15, r10
    95f8:	c2 e5       	be	95c0 <___divdf3+0x13c>
    95fa:	d3 61       	add	r19, r12
    95fc:	f3 61       	cmp	r19, r12
    95fe:	e1 57 00 00 	setf	c/l, r10
    9602:	20 9e 00 ff 	movea	-256, r0, r19
    9606:	4c 99       	and	r12, r19
    9608:	ca 31       	add	r10, r6
    960a:	b5 dd       	br	95c0 <___divdf3+0x13c>

0000960c <___eqdf2>:
    960c:	03 1e c0 ff 	addi	-64, sp, sp
    9610:	63 ef 39 00 	st.w	r29, 56[sp]
    9614:	63 3f 05 00 	st.w	r7, 4[sp]
    9618:	40 ee 01 00 	movhi	1, r0, r29
    961c:	20 3e 10 00 	movea	16, r0, r7
    9620:	63 37 01 00 	st.w	r6, 0[sp]
    9624:	c3 39       	add	sp, r7
    9626:	03 30       	mov	sp, r6
    9628:	3d ee 54 9d 	movea	-25260, r29, r29
    962c:	63 ff 3d 00 	st.w	lp, 60[sp]
    9630:	63 47 09 00 	st.w	r8, 8[sp]
    9634:	63 4f 0d 00 	st.w	r9, 12[sp]
    9638:	80 ff 04 00 	jarl	963c <___eqdf2+0x30>, lp
    963c:	44 fa       	add	4, lp
    963e:	7d 00       	jmp	[r29]
    9640:	20 3e 24 00 	movea	36, r0, r7
    9644:	03 36 08 00 	addi	8, sp, r6
    9648:	c3 39       	add	sp, r7
    964a:	80 ff 04 00 	jarl	964e <___eqdf2+0x42>, lp
    964e:	44 fa       	add	4, lp
    9650:	7d 00       	jmp	[r29]
    9652:	23 57 11 00 	ld.w	16[sp], r10
    9656:	61 52       	cmp	1, r10
    9658:	93 15       	bnh	967a <___eqdf2+0x6e>
    965a:	23 57 25 00 	ld.w	36[sp], r10
    965e:	61 52       	cmp	1, r10
    9660:	d3 0d       	bnh	967a <___eqdf2+0x6e>
    9662:	20 36 10 00 	movea	16, r0, r6
    9666:	20 3e 24 00 	movea	36, r0, r7
    966a:	c3 31       	add	sp, r6
    966c:	c3 39       	add	sp, r7
    966e:	80 ff be 07 	jarl	9e2c <___fpcmp_parts_d>, lp
    9672:	03 1e 38 00 	addi	56, sp, sp
    9676:	bf 07 04 7e 	jr	147a <__return_r29_r31>
    967a:	01 52       	mov	1, r10
    967c:	b5 fd       	br	9672 <___eqdf2+0x66>
	...

00009680 <___nedf2>:
    9680:	03 1e c0 ff 	addi	-64, sp, sp
    9684:	63 ef 39 00 	st.w	r29, 56[sp]
    9688:	63 3f 05 00 	st.w	r7, 4[sp]
    968c:	40 ee 01 00 	movhi	1, r0, r29
    9690:	20 3e 10 00 	movea	16, r0, r7
    9694:	63 37 01 00 	st.w	r6, 0[sp]
    9698:	c3 39       	add	sp, r7
    969a:	03 30       	mov	sp, r6
    969c:	3d ee 54 9d 	movea	-25260, r29, r29
    96a0:	63 ff 3d 00 	st.w	lp, 60[sp]
    96a4:	63 47 09 00 	st.w	r8, 8[sp]
    96a8:	63 4f 0d 00 	st.w	r9, 12[sp]
    96ac:	80 ff 04 00 	jarl	96b0 <___nedf2+0x30>, lp
    96b0:	44 fa       	add	4, lp
    96b2:	7d 00       	jmp	[r29]
    96b4:	20 3e 24 00 	movea	36, r0, r7
    96b8:	03 36 08 00 	addi	8, sp, r6
    96bc:	c3 39       	add	sp, r7
    96be:	80 ff 04 00 	jarl	96c2 <___nedf2+0x42>, lp
    96c2:	44 fa       	add	4, lp
    96c4:	7d 00       	jmp	[r29]
    96c6:	23 57 11 00 	ld.w	16[sp], r10
    96ca:	61 52       	cmp	1, r10
    96cc:	93 15       	bnh	96ee <___nedf2+0x6e>
    96ce:	23 57 25 00 	ld.w	36[sp], r10
    96d2:	61 52       	cmp	1, r10
    96d4:	d3 0d       	bnh	96ee <___nedf2+0x6e>
    96d6:	20 36 10 00 	movea	16, r0, r6
    96da:	20 3e 24 00 	movea	36, r0, r7
    96de:	c3 31       	add	sp, r6
    96e0:	c3 39       	add	sp, r7
    96e2:	80 ff 4a 07 	jarl	9e2c <___fpcmp_parts_d>, lp
    96e6:	03 1e 38 00 	addi	56, sp, sp
    96ea:	bf 07 90 7d 	jr	147a <__return_r29_r31>
    96ee:	01 52       	mov	1, r10
    96f0:	b5 fd       	br	96e6 <___nedf2+0x66>
	...

000096f4 <___gtdf2>:
    96f4:	03 1e c0 ff 	addi	-64, sp, sp
    96f8:	63 ef 39 00 	st.w	r29, 56[sp]
    96fc:	63 3f 05 00 	st.w	r7, 4[sp]
    9700:	40 ee 01 00 	movhi	1, r0, r29
    9704:	20 3e 10 00 	movea	16, r0, r7
    9708:	63 37 01 00 	st.w	r6, 0[sp]
    970c:	c3 39       	add	sp, r7
    970e:	03 30       	mov	sp, r6
    9710:	3d ee 54 9d 	movea	-25260, r29, r29
    9714:	63 ff 3d 00 	st.w	lp, 60[sp]
    9718:	63 47 09 00 	st.w	r8, 8[sp]
    971c:	63 4f 0d 00 	st.w	r9, 12[sp]
    9720:	80 ff 04 00 	jarl	9724 <___gtdf2+0x30>, lp
    9724:	44 fa       	add	4, lp
    9726:	7d 00       	jmp	[r29]
    9728:	20 3e 24 00 	movea	36, r0, r7
    972c:	03 36 08 00 	addi	8, sp, r6
    9730:	c3 39       	add	sp, r7
    9732:	80 ff 04 00 	jarl	9736 <___gtdf2+0x42>, lp
    9736:	44 fa       	add	4, lp
    9738:	7d 00       	jmp	[r29]
    973a:	23 57 11 00 	ld.w	16[sp], r10
    973e:	61 52       	cmp	1, r10
    9740:	93 15       	bnh	9762 <___gtdf2+0x6e>
    9742:	23 57 25 00 	ld.w	36[sp], r10
    9746:	61 52       	cmp	1, r10
    9748:	d3 0d       	bnh	9762 <___gtdf2+0x6e>
    974a:	20 36 10 00 	movea	16, r0, r6
    974e:	20 3e 24 00 	movea	36, r0, r7
    9752:	c3 31       	add	sp, r6
    9754:	c3 39       	add	sp, r7
    9756:	80 ff d6 06 	jarl	9e2c <___fpcmp_parts_d>, lp
    975a:	03 1e 38 00 	addi	56, sp, sp
    975e:	bf 07 1c 7d 	jr	147a <__return_r29_r31>
    9762:	1f 52       	mov	-1, r10
    9764:	b5 fd       	br	975a <___gtdf2+0x66>
	...

00009768 <___gedf2>:
    9768:	03 1e c0 ff 	addi	-64, sp, sp
    976c:	63 ef 39 00 	st.w	r29, 56[sp]
    9770:	63 3f 05 00 	st.w	r7, 4[sp]
    9774:	40 ee 01 00 	movhi	1, r0, r29
    9778:	20 3e 10 00 	movea	16, r0, r7
    977c:	63 37 01 00 	st.w	r6, 0[sp]
    9780:	c3 39       	add	sp, r7
    9782:	03 30       	mov	sp, r6
    9784:	3d ee 54 9d 	movea	-25260, r29, r29
    9788:	63 ff 3d 00 	st.w	lp, 60[sp]
    978c:	63 47 09 00 	st.w	r8, 8[sp]
    9790:	63 4f 0d 00 	st.w	r9, 12[sp]
    9794:	80 ff 04 00 	jarl	9798 <___gedf2+0x30>, lp
    9798:	44 fa       	add	4, lp
    979a:	7d 00       	jmp	[r29]
    979c:	20 3e 24 00 	movea	36, r0, r7
    97a0:	03 36 08 00 	addi	8, sp, r6
    97a4:	c3 39       	add	sp, r7
    97a6:	80 ff 04 00 	jarl	97aa <___gedf2+0x42>, lp
    97aa:	44 fa       	add	4, lp
    97ac:	7d 00       	jmp	[r29]
    97ae:	23 57 11 00 	ld.w	16[sp], r10
    97b2:	61 52       	cmp	1, r10
    97b4:	93 15       	bnh	97d6 <___gedf2+0x6e>
    97b6:	23 57 25 00 	ld.w	36[sp], r10
    97ba:	61 52       	cmp	1, r10
    97bc:	d3 0d       	bnh	97d6 <___gedf2+0x6e>
    97be:	20 36 10 00 	movea	16, r0, r6
    97c2:	20 3e 24 00 	movea	36, r0, r7
    97c6:	c3 31       	add	sp, r6
    97c8:	c3 39       	add	sp, r7
    97ca:	80 ff 62 06 	jarl	9e2c <___fpcmp_parts_d>, lp
    97ce:	03 1e 38 00 	addi	56, sp, sp
    97d2:	bf 07 a8 7c 	jr	147a <__return_r29_r31>
    97d6:	1f 52       	mov	-1, r10
    97d8:	b5 fd       	br	97ce <___gedf2+0x66>
	...

000097dc <___ltdf2>:
    97dc:	03 1e c0 ff 	addi	-64, sp, sp
    97e0:	63 ef 39 00 	st.w	r29, 56[sp]
    97e4:	63 3f 05 00 	st.w	r7, 4[sp]
    97e8:	40 ee 01 00 	movhi	1, r0, r29
    97ec:	20 3e 10 00 	movea	16, r0, r7
    97f0:	63 37 01 00 	st.w	r6, 0[sp]
    97f4:	c3 39       	add	sp, r7
    97f6:	03 30       	mov	sp, r6
    97f8:	3d ee 54 9d 	movea	-25260, r29, r29
    97fc:	63 ff 3d 00 	st.w	lp, 60[sp]
    9800:	63 47 09 00 	st.w	r8, 8[sp]
    9804:	63 4f 0d 00 	st.w	r9, 12[sp]
    9808:	80 ff 04 00 	jarl	980c <___ltdf2+0x30>, lp
    980c:	44 fa       	add	4, lp
    980e:	7d 00       	jmp	[r29]
    9810:	20 3e 24 00 	movea	36, r0, r7
    9814:	03 36 08 00 	addi	8, sp, r6
    9818:	c3 39       	add	sp, r7
    981a:	80 ff 04 00 	jarl	981e <___ltdf2+0x42>, lp
    981e:	44 fa       	add	4, lp
    9820:	7d 00       	jmp	[r29]
    9822:	23 57 11 00 	ld.w	16[sp], r10
    9826:	61 52       	cmp	1, r10
    9828:	93 15       	bnh	984a <___ltdf2+0x6e>
    982a:	23 57 25 00 	ld.w	36[sp], r10
    982e:	61 52       	cmp	1, r10
    9830:	d3 0d       	bnh	984a <___ltdf2+0x6e>
    9832:	20 36 10 00 	movea	16, r0, r6
    9836:	20 3e 24 00 	movea	36, r0, r7
    983a:	c3 31       	add	sp, r6
    983c:	c3 39       	add	sp, r7
    983e:	80 ff ee 05 	jarl	9e2c <___fpcmp_parts_d>, lp
    9842:	03 1e 38 00 	addi	56, sp, sp
    9846:	bf 07 34 7c 	jr	147a <__return_r29_r31>
    984a:	01 52       	mov	1, r10
    984c:	b5 fd       	br	9842 <___ltdf2+0x66>
	...

00009850 <___floatsidf>:
    9850:	06 50       	mov	r6, r10
    9852:	03 1e e4 ff 	addi	-28, sp, sp
    9856:	9f 52       	shr	31, r10
    9858:	03 5a       	mov	3, r11
    985a:	63 ff 19 00 	st.w	lp, 24[sp]
    985e:	63 ef 15 00 	st.w	r29, 20[sp]
    9862:	63 5f 01 00 	st.w	r11, 0[sp]
    9866:	63 57 05 00 	st.w	r10, 4[sp]
    986a:	60 32       	cmp	0, r6
    986c:	ba 0d       	bne	9882 <___floatsidf+0x32>
    986e:	02 52       	mov	2, r10
    9870:	63 57 01 00 	st.w	r10, 0[sp]
    9874:	03 30       	mov	sp, r6
    9876:	80 ff 42 03 	jarl	9bb8 <___pack_d>, lp
    987a:	03 1e 14 00 	addi	20, sp, sp
    987e:	bf 07 fc 7b 	jr	147a <__return_r29_r31>
    9882:	20 5e 3c 00 	movea	60, r0, r11
    9886:	63 5f 09 00 	st.w	r11, 8[sp]
    988a:	60 52       	cmp	0, r10
    988c:	aa 1d       	bne	98c0 <___floatsidf+0x70>
    988e:	06 e8       	mov	r6, r29
    9890:	1d 30       	mov	r29, r6
    9892:	80 ff ce 02 	jarl	9b60 <___clzsi2>, lp
    9896:	0a 5e 1d 00 	addi	29, r10, r11
    989a:	60 5a       	cmp	0, r11
    989c:	f7 1d       	ble	98da <___floatsidf+0x8a>
    989e:	cb 66 20 00 	andi	32, r11, r12
    98a2:	92 25       	be	98e4 <___floatsidf+0x94>
    98a4:	1d 60       	mov	r29, r12
    98a6:	eb 67 c0 00 	shl	r11, r12
    98aa:	00 ea       	mov	0, r29
    98ac:	20 5e 1f 00 	movea	31, r0, r11
    98b0:	aa 59       	sub	r10, r11
    98b2:	63 ef 0d 00 	st.w	r29, 12[sp]
    98b6:	63 67 11 00 	st.w	r12, 16[sp]
    98ba:	63 5f 09 00 	st.w	r11, 8[sp]
    98be:	b5 dd       	br	9874 <___floatsidf+0x24>
    98c0:	40 56 00 80 	movhi	-32768, r0, r10
    98c4:	ea 31       	cmp	r10, r6
    98c6:	f2 15       	be	98f4 <___floatsidf+0xa4>
    98c8:	06 e8       	mov	r6, r29
    98ca:	80 e9       	subr	r0, r29
    98cc:	1d 30       	mov	r29, r6
    98ce:	80 ff 92 02 	jarl	9b60 <___clzsi2>, lp
    98d2:	0a 5e 1d 00 	addi	29, r10, r11
    98d6:	60 5a       	cmp	0, r11
    98d8:	bf e5       	bgt	989e <___floatsidf+0x4e>
    98da:	63 ef 0d 00 	st.w	r29, 12[sp]
    98de:	63 07 11 00 	st.w	r0, 16[sp]
    98e2:	95 cd       	br	9874 <___floatsidf+0x24>
    98e4:	1d 60       	mov	r29, r12
    98e6:	81 62       	shr	1, r12
    98e8:	2b 68       	not	r11, r13
    98ea:	ed 67 80 00 	shr	r13, r12
    98ee:	eb ef c0 00 	shl	r11, r29
    98f2:	d5 dd       	br	98ac <___floatsidf+0x5c>
    98f4:	00 52       	mov	0, r10
    98f6:	40 5e e0 c1 	movhi	-15904, r0, r11
    98fa:	85 c5       	br	987a <___floatsidf+0x2a>

000098fc <___fixdfsi>:
    98fc:	03 1e e0 ff 	addi	-32, sp, sp
    9900:	63 37 01 00 	st.w	r6, 0[sp]
    9904:	63 3f 05 00 	st.w	r7, 4[sp]
    9908:	03 30       	mov	sp, r6
    990a:	03 3e 08 00 	addi	8, sp, r7
    990e:	63 ff 1d 00 	st.w	lp, 28[sp]
    9912:	80 ff 42 04 	jarl	9d54 <___unpack_d>, lp
    9916:	23 57 09 00 	ld.w	8[sp], r10
    991a:	62 52       	cmp	2, r10
    991c:	e2 2d       	be	9978 <___fixdfsi+0x7c>
    991e:	61 52       	cmp	1, r10
    9920:	c3 2d       	bnh	9978 <___fixdfsi+0x7c>
    9922:	64 52       	cmp	4, r10
    9924:	92 0d       	be	9936 <___fixdfsi+0x3a>
    9926:	23 57 11 00 	ld.w	16[sp], r10
    992a:	60 52       	cmp	0, r10
    992c:	e6 25       	blt	9978 <___fixdfsi+0x7c>
    992e:	20 5e 1e 00 	movea	30, r0, r11
    9932:	eb 51       	cmp	r11, r10
    9934:	d7 0d       	ble	994e <___fixdfsi+0x52>
    9936:	23 57 0d 00 	ld.w	12[sp], r10
    993a:	60 52       	cmp	0, r10
    993c:	da 2d       	bne	9996 <___fixdfsi+0x9a>
    993e:	40 56 00 80 	movhi	-32768, r0, r10
    9942:	03 1e 1c 00 	addi	28, sp, sp
    9946:	2a 56 ff ff 	movea	-1, r10, r10
    994a:	bf 07 3e 7b 	jr	1488 <__return_r31>
    994e:	20 5e 3c 00 	movea	60, r0, r11
    9952:	aa 59       	sub	r10, r11
    9954:	cb 66 20 00 	andi	32, r11, r12
    9958:	23 6f 15 00 	ld.w	20[sp], r13
    995c:	23 57 19 00 	ld.w	24[sp], r10
    9960:	92 15       	be	9982 <___fixdfsi+0x86>
    9962:	eb 57 80 00 	shr	r11, r10
    9966:	23 5f 0d 00 	ld.w	12[sp], r11
    996a:	60 5a       	cmp	0, r11
    996c:	f2 05       	be	997a <___fixdfsi+0x7e>
    996e:	03 1e 1c 00 	addi	28, sp, sp
    9972:	80 51       	subr	r0, r10
    9974:	bf 07 14 7b 	jr	1488 <__return_r31>
    9978:	00 52       	mov	0, r10
    997a:	03 1e 1c 00 	addi	28, sp, sp
    997e:	bf 07 0a 7b 	jr	1488 <__return_r31>
    9982:	0a 60       	mov	r10, r12
    9984:	c1 62       	shl	1, r12
    9986:	2b 50       	not	r11, r10
    9988:	ea 67 c0 00 	shl	r10, r12
    998c:	0d 50       	mov	r13, r10
    998e:	eb 57 80 00 	shr	r11, r10
    9992:	0c 51       	or	r12, r10
    9994:	95 ed       	br	9966 <___fixdfsi+0x6a>
    9996:	03 1e 1c 00 	addi	28, sp, sp
    999a:	40 56 00 80 	movhi	-32768, r0, r10
    999e:	bf 07 ea 7a 	jr	1488 <__return_r31>
	...

000099a4 <___floatunsidf>:
    99a4:	03 1e e4 ff 	addi	-28, sp, sp
    99a8:	63 ef 15 00 	st.w	r29, 20[sp]
    99ac:	63 ff 19 00 	st.w	lp, 24[sp]
    99b0:	63 07 05 00 	st.w	r0, 4[sp]
    99b4:	06 e8       	mov	r6, r29
    99b6:	60 32       	cmp	0, r6
    99b8:	e2 25       	be	9a04 <___floatunsidf+0x60>
    99ba:	03 52       	mov	3, r10
    99bc:	63 57 01 00 	st.w	r10, 0[sp]
    99c0:	20 56 3c 00 	movea	60, r0, r10
    99c4:	63 57 09 00 	st.w	r10, 8[sp]
    99c8:	80 ff 98 01 	jarl	9b60 <___clzsi2>, lp
    99cc:	0a 5e 1d 00 	addi	29, r10, r11
    99d0:	60 5a       	cmp	0, r11
    99d2:	b6 2d       	blt	9a28 <___floatunsidf+0x84>
    99d4:	a2 4d       	be	9a68 <___floatunsidf+0xc4>
    99d6:	cb 66 20 00 	andi	32, r11, r12
    99da:	f2 1d       	be	9a18 <___floatunsidf+0x74>
    99dc:	1d 60       	mov	r29, r12
    99de:	eb 67 c0 00 	shl	r11, r12
    99e2:	00 ea       	mov	0, r29
    99e4:	20 5e 1f 00 	movea	31, r0, r11
    99e8:	aa 59       	sub	r10, r11
    99ea:	03 30       	mov	sp, r6
    99ec:	63 ef 0d 00 	st.w	r29, 12[sp]
    99f0:	63 67 11 00 	st.w	r12, 16[sp]
    99f4:	63 5f 09 00 	st.w	r11, 8[sp]
    99f8:	80 ff c0 01 	jarl	9bb8 <___pack_d>, lp
    99fc:	03 1e 14 00 	addi	20, sp, sp
    9a00:	bf 07 7a 7a 	jr	147a <__return_r29_r31>
    9a04:	02 52       	mov	2, r10
    9a06:	63 57 01 00 	st.w	r10, 0[sp]
    9a0a:	03 30       	mov	sp, r6
    9a0c:	80 ff ac 01 	jarl	9bb8 <___pack_d>, lp
    9a10:	03 1e 14 00 	addi	20, sp, sp
    9a14:	bf 07 66 7a 	jr	147a <__return_r29_r31>
    9a18:	1d 60       	mov	r29, r12
    9a1a:	81 62       	shr	1, r12
    9a1c:	2b 68       	not	r11, r13
    9a1e:	ed 67 80 00 	shr	r13, r12
    9a22:	eb ef c0 00 	shl	r11, r29
    9a26:	f5 dd       	br	99e4 <___floatunsidf+0x40>
    9a28:	80 59       	subr	r0, r11
    9a2a:	cb 66 20 00 	andi	32, r11, r12
    9a2e:	d2 25       	be	9a78 <___floatunsidf+0xd4>
    9a30:	00 62       	mov	0, r12
    9a32:	5f 62       	add	-1, r12
    9a34:	5d 61       	and	r29, r12
    9a36:	cb 6e 20 00 	andi	32, r11, r13
    9a3a:	60 62       	cmp	0, r12
    9a3c:	ea 67 00 00 	setf	nz, r12
    9a40:	60 6a       	cmp	0, r13
    9a42:	82 1d       	be	9a72 <___floatunsidf+0xce>
    9a44:	00 ea       	mov	0, r29
    9a46:	20 5e 1f 00 	movea	31, r0, r11
    9a4a:	0c e9       	or	r12, r29
    9a4c:	aa 59       	sub	r10, r11
    9a4e:	03 30       	mov	sp, r6
    9a50:	63 ef 0d 00 	st.w	r29, 12[sp]
    9a54:	63 07 11 00 	st.w	r0, 16[sp]
    9a58:	63 5f 09 00 	st.w	r11, 8[sp]
    9a5c:	80 ff 5c 01 	jarl	9bb8 <___pack_d>, lp
    9a60:	03 1e 14 00 	addi	20, sp, sp
    9a64:	bf 07 16 7a 	jr	147a <__return_r29_r31>
    9a68:	63 ef 0d 00 	st.w	r29, 12[sp]
    9a6c:	63 07 11 00 	st.w	r0, 16[sp]
    9a70:	d5 cd       	br	9a0a <___floatunsidf+0x66>
    9a72:	eb ef 80 00 	shr	r11, r29
    9a76:	85 ed       	br	9a46 <___floatunsidf+0xa2>
    9a78:	01 62       	mov	1, r12
    9a7a:	eb 67 c0 00 	shl	r11, r12
    9a7e:	a5 dd       	br	9a32 <___floatunsidf+0x8e>

00009a80 <___muldi3>:
    9a80:	bf 57 34 f3 	jarl	8db4 <__save_r26_r31>, r10
    9a84:	03 1e 10 00 	addi	16, sp, sp
    9a88:	06 e0       	mov	r6, r28
    9a8a:	8f e2       	shr	15, r28
    9a8c:	20 76 ff 7f 	movea	32767, r0, r14
    9a90:	4e e1       	and	r14, r28
    9a92:	08 50       	mov	r8, r10
    9a94:	8f 52       	shr	15, r10
    9a96:	4e 51       	and	r14, r10
    9a98:	06 98       	mov	r6, r19
    9a9a:	9e 9a       	shr	30, r19
    9a9c:	07 60       	mov	r7, r12
    9a9e:	c2 62       	shl	2, r12
    9aa0:	0c 99       	or	r12, r19
    9aa2:	4e 99       	and	r14, r19
    9aa4:	08 68       	mov	r8, r13
    9aa6:	9e 6a       	shr	30, r13
    9aa8:	09 60       	mov	r9, r12
    9aaa:	c2 62       	shl	2, r12
    9aac:	0c 69       	or	r12, r13
    9aae:	4e 69       	and	r14, r13
    9ab0:	07 58       	mov	r7, r11
    9ab2:	8d 5a       	shr	13, r11
    9ab4:	4e 59       	and	r14, r11
    9ab6:	09 f8       	mov	r9, lp
    9ab8:	8d fa       	shr	13, lp
    9aba:	4e f9       	and	r14, lp
    9abc:	07 e8       	mov	r7, r29
    9abe:	9c ea       	shr	28, r29
    9ac0:	4e e9       	and	r14, r29
    9ac2:	09 60       	mov	r9, r12
    9ac4:	9c 62       	shr	28, r12
    9ac6:	4e 61       	and	r14, r12
    9ac8:	4e 31       	and	r14, r6
    9aca:	4e 41       	and	r14, r8
    9acc:	06 70       	mov	r6, r14
    9ace:	e8 70       	mulh	r8, r14
    9ad0:	06 80       	mov	r6, r16
    9ad2:	ea 80       	mulh	r10, r16
    9ad4:	06 90       	mov	r6, r18
    9ad6:	ed 90       	mulh	r13, r18
    9ad8:	06 78       	mov	r6, r15
    9ada:	ff 78       	mulh	lp, r15
    9adc:	ec 30       	mulh	r12, r6
    9ade:	1c 88       	mov	r28, r17
    9ae0:	ea 88       	mulh	r10, r17
    9ae2:	50 1a       	add	-16, sp
    9ae4:	1c 60       	mov	r28, r12
    9ae6:	e8 60       	mulh	r8, r12
    9ae8:	d1 91       	add	r17, r18
    9aea:	1c 88       	mov	r28, r17
    9aec:	ff 88       	mulh	lp, r17
    9aee:	cc 81       	add	r12, r16
    9af0:	1c 60       	mov	r28, r12
    9af2:	ed 60       	mulh	r13, r12
    9af4:	d1 31       	add	r17, r6
    9af6:	13 88       	mov	r19, r17
    9af8:	cc 79       	add	r12, r15
    9afa:	13 60       	mov	r19, r12
    9afc:	e8 60       	mulh	r8, r12
    9afe:	ea 88       	mulh	r10, r17
    9b00:	cc 91       	add	r12, r18
    9b02:	13 60       	mov	r19, r12
    9b04:	ed 60       	mulh	r13, r12
    9b06:	d1 79       	add	r17, r15
    9b08:	0b 68       	mov	r11, r13
    9b0a:	e8 68       	mulh	r8, r13
    9b0c:	cc 31       	add	r12, r6
    9b0e:	0b 60       	mov	r11, r12
    9b10:	ea 60       	mulh	r10, r12
    9b12:	cd 79       	add	r13, r15
    9b14:	fd 40       	mulh	r29, r8
    9b16:	cc 31       	add	r12, r6
    9b18:	10 68       	mov	r16, r13
    9b1a:	cf 6a       	shl	15, r13
    9b1c:	ce 69       	add	r14, r13
    9b1e:	12 60       	mov	r18, r12
    9b20:	de 62       	shl	30, r12
    9b22:	0d d0       	mov	r13, r26
    9b24:	cc d1       	add	r12, r26
    9b26:	8f 72       	shr	15, r14
    9b28:	40 66 02 00 	movhi	2, r0, r12
    9b2c:	2c 6e ff ff 	movea	-1, r12, r13
    9b30:	4d 71       	and	r13, r14
    9b32:	10 60       	mov	r16, r12
    9b34:	4d 61       	and	r13, r12
    9b36:	cc 71       	add	r12, r14
    9b38:	12 60       	mov	r18, r12
    9b3a:	cf 62       	shl	15, r12
    9b3c:	4d 61       	and	r13, r12
    9b3e:	cc 71       	add	r12, r14
    9b40:	91 72       	shr	17, r14
    9b42:	91 82       	shr	17, r16
    9b44:	ce 81       	add	r14, r16
    9b46:	cd 7a       	shl	13, r15
    9b48:	82 92       	shr	2, r18
    9b4a:	d2 79       	add	r18, r15
    9b4c:	cf 81       	add	r15, r16
    9b4e:	10 d8       	mov	r16, r27
    9b50:	c8 31       	add	r8, r6
    9b52:	dc 32       	shl	28, r6
    9b54:	c6 d9       	add	r6, r27
    9b56:	1a 50       	mov	r26, r10
    9b58:	1b 58       	mov	r27, r11
    9b5a:	bf 07 76 f2 	jr	8dd0 <__return_r26_r31>
	...

00009b60 <___clzsi2>:
    9b60:	40 56 01 00 	movhi	1, r0, r10
    9b64:	2a 56 ff ff 	movea	-1, r10, r10
    9b68:	ea 31       	cmp	r10, r6
    9b6a:	db 15       	bh	9b94 <___clzsi2+0x34>
    9b6c:	20 56 ff 00 	movea	255, r0, r10
    9b70:	ea 31       	cmp	r10, r6
    9b72:	f3 1d       	bnh	9bb0 <___clzsi2+0x50>
    9b74:	20 5e 18 00 	movea	24, r0, r11
    9b78:	08 52       	mov	8, r10
    9b7a:	ea 37 80 00 	shr	r10, r6
    9b7e:	40 56 01 00 	movhi	1, r0, r10
    9b82:	2a 56 84 a1 	movea	-24188, r10, r10
    9b86:	ca 31       	add	r10, r6
    9b88:	06 57 00 00 	ld.b	0[r6], r10
    9b8c:	ca 56 ff 00 	andi	255, r10, r10
    9b90:	8b 51       	subr	r11, r10
    9b92:	7f 00       	jmp	[lp]
    9b94:	40 56 00 01 	movhi	256, r0, r10
    9b98:	2a 56 ff ff 	movea	-1, r10, r10
    9b9c:	ea 31       	cmp	r10, r6
    9b9e:	db 05       	bh	9ba8 <___clzsi2+0x48>
    9ba0:	20 5e 10 00 	movea	16, r0, r11
    9ba4:	0b 50       	mov	r11, r10
    9ba6:	a5 ed       	br	9b7a <___clzsi2+0x1a>
    9ba8:	08 5a       	mov	8, r11
    9baa:	20 56 18 00 	movea	24, r0, r10
    9bae:	e5 e5       	br	9b7a <___clzsi2+0x1a>
    9bb0:	20 5e 20 00 	movea	32, r0, r11
    9bb4:	00 52       	mov	0, r10
    9bb6:	a5 e5       	br	9b7a <___clzsi2+0x1a>

00009bb8 <___pack_d>:
    9bb8:	03 1e e4 ff 	addi	-28, sp, sp
    9bbc:	63 ff 19 00 	st.w	lp, 24[sp]
    9bc0:	63 c7 15 00 	st.w	r24, 20[sp]
    9bc4:	63 cf 11 00 	st.w	r25, 16[sp]
    9bc8:	63 d7 0d 00 	st.w	r26, 12[sp]
    9bcc:	63 df 09 00 	st.w	r27, 8[sp]
    9bd0:	63 e7 05 00 	st.w	r28, 4[sp]
    9bd4:	63 ef 01 00 	st.w	r29, 0[sp]
    9bd8:	26 57 01 00 	ld.w	0[r6], r10
    9bdc:	26 ef 0d 00 	ld.w	12[r6], r29
    9be0:	26 e7 11 00 	ld.w	16[r6], r28
    9be4:	26 df 05 00 	ld.w	4[r6], r27
    9be8:	61 52       	cmp	1, r10
    9bea:	b3 5d       	bnh	9ca0 <___pack_d+0xe8>
    9bec:	64 52       	cmp	4, r10
    9bee:	c2 55       	be	9c96 <___pack_d+0xde>
    9bf0:	62 52       	cmp	2, r10
    9bf2:	92 35       	be	9c54 <___pack_d+0x9c>
    9bf4:	1d 50       	mov	r29, r10
    9bf6:	1c 51       	or	r28, r10
    9bf8:	e2 2d       	be	9c54 <___pack_d+0x9c>
    9bfa:	26 67 09 00 	ld.w	8[r6], r12
    9bfe:	20 56 02 fc 	movea	-1022, r0, r10
    9c02:	ea 61       	cmp	r10, r12
    9c04:	a6 5d       	blt	9cb8 <___pack_d+0x100>
    9c06:	20 56 ff 03 	movea	1023, r0, r10
    9c0a:	ea 61       	cmp	r10, r12
    9c0c:	df 45       	bgt	9c96 <___pack_d+0xde>
    9c0e:	dd 56 ff 00 	andi	255, r29, r10
    9c12:	20 5e 80 00 	movea	128, r0, r11
    9c16:	eb 51       	cmp	r11, r10
    9c18:	d2 35       	be	9c82 <___pack_d+0xca>
    9c1a:	1d 56 7f 00 	addi	127, r29, r10
    9c1e:	fd 51       	cmp	r29, r10
    9c20:	e1 5f 00 00 	setf	c/l, r11
    9c24:	0a e8       	mov	r10, r29
    9c26:	cb e1       	add	r11, r28
    9c28:	40 56 00 20 	movhi	8192, r0, r10
    9c2c:	2a 56 ff ff 	movea	-1, r10, r10
    9c30:	ea e1       	cmp	r10, r28
    9c32:	8b 25       	bh	9c72 <___pack_d+0xba>
    9c34:	0c 66 ff 03 	addi	1023, r12, r12
    9c38:	1c 58       	mov	r28, r11
    9c3a:	1d 50       	mov	r29, r10
    9c3c:	d8 5a       	shl	24, r11
    9c3e:	88 52       	shr	8, r10
    9c40:	0b 51       	or	r11, r10
    9c42:	40 5e 10 00 	movhi	16, r0, r11
    9c46:	88 e2       	shr	8, r28
    9c48:	2b 5e ff ff 	movea	-1, r11, r11
    9c4c:	4b e1       	and	r11, r28
    9c4e:	cc 66 ff 07 	andi	2047, r12, r12
    9c52:	c5 05       	br	9c5a <___pack_d+0xa2>
    9c54:	00 62       	mov	0, r12
    9c56:	00 52       	mov	0, r10
    9c58:	00 e2       	mov	0, r28
    9c5a:	40 5e 10 00 	movhi	16, r0, r11
    9c5e:	2b 5e ff ff 	movea	-1, r11, r11
    9c62:	4b e1       	and	r11, r28
    9c64:	d4 62       	shl	20, r12
    9c66:	1b 58       	mov	r27, r11
    9c68:	df 5a       	shl	31, r11
    9c6a:	0c e1       	or	r12, r28
    9c6c:	1c 59       	or	r28, r11
    9c6e:	bf 07 e2 f0 	jr	8d50 <__return_r24_r31>
    9c72:	1c 50       	mov	r28, r10
    9c74:	df 52       	shl	31, r10
    9c76:	81 ea       	shr	1, r29
    9c78:	0a e9       	or	r10, r29
    9c7a:	81 e2       	shr	1, r28
    9c7c:	0c 66 00 04 	addi	1024, r12, r12
    9c80:	c5 dd       	br	9c38 <___pack_d+0x80>
    9c82:	dd 5e 00 01 	andi	256, r29, r11
    9c86:	92 d5       	be	9c28 <___pack_d+0x70>
    9c88:	dd 51       	add	r29, r10
    9c8a:	fd 51       	cmp	r29, r10
    9c8c:	e1 5f 00 00 	setf	c/l, r11
    9c90:	0a e8       	mov	r10, r29
    9c92:	cb e1       	add	r11, r28
    9c94:	a5 cd       	br	9c28 <___pack_d+0x70>
    9c96:	20 66 ff 07 	movea	2047, r0, r12
    9c9a:	00 52       	mov	0, r10
    9c9c:	00 e2       	mov	0, r28
    9c9e:	e5 dd       	br	9c5a <___pack_d+0xa2>
    9ca0:	40 56 08 00 	movhi	8, r0, r10
    9ca4:	40 5e 10 00 	movhi	16, r0, r11
    9ca8:	0a e1       	or	r10, r28
    9caa:	2b 5e ff ff 	movea	-1, r11, r11
    9cae:	1d 50       	mov	r29, r10
    9cb0:	4b e1       	and	r11, r28
    9cb2:	20 66 ff 07 	movea	2047, r0, r12
    9cb6:	a5 d5       	br	9c5a <___pack_d+0xa2>
    9cb8:	0a c0       	mov	r10, r24
    9cba:	ac c1       	sub	r12, r24
    9cbc:	20 56 38 00 	movea	56, r0, r10
    9cc0:	ea c1       	cmp	r10, r24
    9cc2:	ff 3d       	bgt	9d40 <___pack_d+0x188>
    9cc4:	1d 30       	mov	r29, r6
    9cc6:	1c 38       	mov	r28, r7
    9cc8:	18 40       	mov	r24, r8
    9cca:	80 ff 02 02 	jarl	9ecc <___lshrdi3>, lp
    9cce:	01 32       	mov	1, r6
    9cd0:	00 3a       	mov	0, r7
    9cd2:	18 40       	mov	r24, r8
    9cd4:	0a c8       	mov	r10, r25
    9cd6:	0b d0       	mov	r11, r26
    9cd8:	80 ff 2c 02 	jarl	9f04 <___ashldi3>, lp
    9cdc:	60 52       	cmp	0, r10
    9cde:	e2 6f 00 00 	setf	z, r13
    9ce2:	ad 59       	sub	r13, r11
    9ce4:	5f 52       	add	-1, r10
    9ce6:	5c 59       	and	r28, r11
    9ce8:	5d 51       	and	r29, r10
    9cea:	0b 51       	or	r11, r10
    9cec:	ea 67 00 00 	setf	nz, r12
    9cf0:	19 61       	or	r25, r12
    9cf2:	cc 56 ff 00 	andi	255, r12, r10
    9cf6:	20 6e 80 00 	movea	128, r0, r13
    9cfa:	1a 58       	mov	r26, r11
    9cfc:	ed 51       	cmp	r13, r10
    9cfe:	ba 25       	bne	9d44 <___pack_d+0x18c>
    9d00:	cc 6e 00 01 	andi	256, r12, r13
    9d04:	f2 05       	be	9d12 <___pack_d+0x15a>
    9d06:	cc 51       	add	r12, r10
    9d08:	ec 51       	cmp	r12, r10
    9d0a:	e1 6f 00 00 	setf	c/l, r13
    9d0e:	0a 60       	mov	r10, r12
    9d10:	cd 59       	add	r13, r11
    9d12:	0c 50       	mov	r12, r10
    9d14:	0b 68       	mov	r11, r13
    9d16:	d8 6a       	shl	24, r13
    9d18:	88 52       	shr	8, r10
    9d1a:	0b e0       	mov	r11, r28
    9d1c:	0d 51       	or	r13, r10
    9d1e:	40 66 10 00 	movhi	16, r0, r12
    9d22:	40 6e 00 10 	movhi	4096, r0, r13
    9d26:	2c 66 ff ff 	movea	-1, r12, r12
    9d2a:	88 e2       	shr	8, r28
    9d2c:	2d 6e ff ff 	movea	-1, r13, r13
    9d30:	4c e1       	and	r12, r28
    9d32:	01 62       	mov	1, r12
    9d34:	ed 59       	cmp	r13, r11
    9d36:	ab 05       	bh	9d3a <___pack_d+0x182>
    9d38:	00 62       	mov	0, r12
    9d3a:	cc 66 01 00 	andi	1, r12, r12
    9d3e:	e5 8d       	br	9c5a <___pack_d+0xa2>
    9d40:	00 62       	mov	0, r12
    9d42:	00 5a       	mov	0, r11
    9d44:	0c 56 7f 00 	addi	127, r12, r10
    9d48:	ec 51       	cmp	r12, r10
    9d4a:	e1 6f 00 00 	setf	c/l, r13
    9d4e:	0a 60       	mov	r10, r12
    9d50:	cd 59       	add	r13, r11
    9d52:	85 e5       	br	9d12 <___pack_d+0x15a>

00009d54 <___unpack_d>:
    9d54:	26 67 05 00 	ld.w	4[r6], r12
    9d58:	26 5f 01 00 	ld.w	0[r6], r11
    9d5c:	0c 50       	mov	r12, r10
    9d5e:	9f 52       	shr	31, r10
    9d60:	0c 68       	mov	r12, r13
    9d62:	94 6a       	shr	20, r13
    9d64:	67 57 05 00 	st.w	r10, 4[r7]
    9d68:	40 56 10 00 	movhi	16, r0, r10
    9d6c:	2a 56 ff ff 	movea	-1, r10, r10
    9d70:	cd 6e ff 07 	andi	2047, r13, r13
    9d74:	4c 51       	and	r12, r10
    9d76:	60 6a       	cmp	0, r13
    9d78:	ba 2d       	bne	9dce <___unpack_d+0x7a>
    9d7a:	0b 60       	mov	r11, r12
    9d7c:	0a 61       	or	r10, r12
    9d7e:	82 45       	be	9dfe <___unpack_d+0xaa>
    9d80:	0b 60       	mov	r11, r12
    9d82:	98 62       	shr	24, r12
    9d84:	c8 52       	shl	8, r10
    9d86:	20 6e 02 fc 	movea	-1022, r0, r13
    9d8a:	0c 51       	or	r12, r10
    9d8c:	40 7e 00 10 	movhi	4096, r0, r15
    9d90:	03 62       	mov	3, r12
    9d92:	67 6f 09 00 	st.w	r13, 8[r7]
    9d96:	67 67 01 00 	st.w	r12, 0[r7]
    9d9a:	2f 7e ff ff 	movea	-1, r15, r15
    9d9e:	c8 5a       	shl	8, r11
    9da0:	ef 51       	cmp	r15, r10
    9da2:	9b 15       	bh	9dc4 <___unpack_d+0x70>
    9da4:	20 66 01 fc 	movea	-1023, r0, r12
    9da8:	0b 68       	mov	r11, r13
    9daa:	cb 69       	add	r11, r13
    9dac:	eb 69       	cmp	r11, r13
    9dae:	e1 5f 00 00 	setf	c/l, r11
    9db2:	ca 51       	add	r10, r10
    9db4:	cb 51       	add	r11, r10
    9db6:	0c 70       	mov	r12, r14
    9db8:	0d 58       	mov	r13, r11
    9dba:	5f 62       	add	-1, r12
    9dbc:	ef 51       	cmp	r15, r10
    9dbe:	d3 f5       	bnh	9da8 <___unpack_d+0x54>
    9dc0:	67 77 09 00 	st.w	r14, 8[r7]
    9dc4:	67 5f 0d 00 	st.w	r11, 12[r7]
    9dc8:	67 57 11 00 	st.w	r10, 16[r7]
    9dcc:	7f 00       	jmp	[lp]
    9dce:	20 76 ff 07 	movea	2047, r0, r14
    9dd2:	ee 69       	cmp	r14, r13
    9dd4:	92 1d       	be	9e06 <___unpack_d+0xb2>
    9dd6:	0b 60       	mov	r11, r12
    9dd8:	c8 52       	shl	8, r10
    9dda:	98 62       	shr	24, r12
    9ddc:	0a 61       	or	r10, r12
    9dde:	40 56 00 10 	movhi	4096, r0, r10
    9de2:	0a 61       	or	r10, r12
    9de4:	0d 6e 01 fc 	addi	-1023, r13, r13
    9de8:	c8 5a       	shl	8, r11
    9dea:	03 52       	mov	3, r10
    9dec:	67 6f 09 00 	st.w	r13, 8[r7]
    9df0:	67 57 01 00 	st.w	r10, 0[r7]
    9df4:	67 5f 0d 00 	st.w	r11, 12[r7]
    9df8:	67 67 11 00 	st.w	r12, 16[r7]
    9dfc:	7f 00       	jmp	[lp]
    9dfe:	02 52       	mov	2, r10
    9e00:	67 57 01 00 	st.w	r10, 0[r7]
    9e04:	7f 00       	jmp	[lp]
    9e06:	0b 68       	mov	r11, r13
    9e08:	0a 69       	or	r10, r13
    9e0a:	92 0d       	be	9e1c <___unpack_d+0xc8>
    9e0c:	40 6e 08 00 	movhi	8, r0, r13
    9e10:	4d 61       	and	r13, r12
    9e12:	92 0d       	be	9e24 <___unpack_d+0xd0>
    9e14:	01 62       	mov	1, r12
    9e16:	67 67 01 00 	st.w	r12, 0[r7]
    9e1a:	d5 d5       	br	9dc4 <___unpack_d+0x70>
    9e1c:	04 52       	mov	4, r10
    9e1e:	67 57 01 00 	st.w	r10, 0[r7]
    9e22:	7f 00       	jmp	[lp]
    9e24:	67 07 01 00 	st.w	r0, 0[r7]
    9e28:	e5 cd       	br	9dc4 <___unpack_d+0x70>
	...

00009e2c <___fpcmp_parts_d>:
    9e2c:	26 57 01 00 	ld.w	0[r6], r10
    9e30:	61 52       	cmp	1, r10
    9e32:	d3 15       	bnh	9e5c <___fpcmp_parts_d+0x30>
    9e34:	27 5f 01 00 	ld.w	0[r7], r11
    9e38:	61 5a       	cmp	1, r11
    9e3a:	93 15       	bnh	9e5c <___fpcmp_parts_d+0x30>
    9e3c:	64 52       	cmp	4, r10
    9e3e:	e2 3d       	be	9eba <___fpcmp_parts_d+0x8e>
    9e40:	64 5a       	cmp	4, r11
    9e42:	92 15       	be	9e64 <___fpcmp_parts_d+0x38>
    9e44:	62 52       	cmp	2, r10
    9e46:	d2 0d       	be	9e60 <___fpcmp_parts_d+0x34>
    9e48:	62 5a       	cmp	2, r11
    9e4a:	b2 15       	be	9e70 <___fpcmp_parts_d+0x44>
    9e4c:	26 57 05 00 	ld.w	4[r6], r10
    9e50:	27 5f 05 00 	ld.w	4[r7], r11
    9e54:	eb 51       	cmp	r11, r10
    9e56:	b2 15       	be	9e7c <___fpcmp_parts_d+0x50>
    9e58:	60 52       	cmp	0, r10
    9e5a:	9a 0d       	bne	9e6c <___fpcmp_parts_d+0x40>
    9e5c:	01 52       	mov	1, r10
    9e5e:	7f 00       	jmp	[lp]
    9e60:	62 5a       	cmp	2, r11
    9e62:	a2 2d       	be	9eb6 <___fpcmp_parts_d+0x8a>
    9e64:	27 57 05 00 	ld.w	4[r7], r10
    9e68:	60 52       	cmp	0, r10
    9e6a:	9a fd       	bne	9e5c <___fpcmp_parts_d+0x30>
    9e6c:	1f 52       	mov	-1, r10
    9e6e:	7f 00       	jmp	[lp]
    9e70:	26 57 05 00 	ld.w	4[r6], r10
    9e74:	60 52       	cmp	0, r10
    9e76:	ba fd       	bne	9e6c <___fpcmp_parts_d+0x40>
    9e78:	01 52       	mov	1, r10
    9e7a:	a5 f5       	br	9e5e <___fpcmp_parts_d+0x32>
    9e7c:	26 67 09 00 	ld.w	8[r6], r12
    9e80:	27 5f 09 00 	ld.w	8[r7], r11
    9e84:	eb 61       	cmp	r11, r12
    9e86:	9f ed       	bgt	9e58 <___fpcmp_parts_d+0x2c>
    9e88:	b6 15       	blt	9eae <___fpcmp_parts_d+0x82>
    9e8a:	26 5f 11 00 	ld.w	16[r6], r11
    9e8e:	27 67 11 00 	ld.w	16[r7], r12
    9e92:	26 6f 0d 00 	ld.w	12[r6], r13
    9e96:	27 77 0d 00 	ld.w	12[r7], r14
    9e9a:	ec 59       	cmp	r12, r11
    9e9c:	eb dd       	bh	9e58 <___fpcmp_parts_d+0x2c>
    9e9e:	ba 05       	bne	9ea4 <___fpcmp_parts_d+0x78>
    9ea0:	ee 69       	cmp	r14, r13
    9ea2:	bb dd       	bh	9e58 <___fpcmp_parts_d+0x2c>
    9ea4:	eb 61       	cmp	r11, r12
    9ea6:	cb 05       	bh	9eae <___fpcmp_parts_d+0x82>
    9ea8:	fa 05       	bne	9eb6 <___fpcmp_parts_d+0x8a>
    9eaa:	ed 71       	cmp	r13, r14
    9eac:	d3 05       	bnh	9eb6 <___fpcmp_parts_d+0x8a>
    9eae:	60 52       	cmp	0, r10
    9eb0:	ea d5       	bne	9e5c <___fpcmp_parts_d+0x30>
    9eb2:	1f 52       	mov	-1, r10
    9eb4:	d5 dd       	br	9e6e <___fpcmp_parts_d+0x42>
    9eb6:	00 52       	mov	0, r10
    9eb8:	7f 00       	jmp	[lp]
    9eba:	64 5a       	cmp	4, r11
    9ebc:	aa dd       	bne	9e70 <___fpcmp_parts_d+0x44>
    9ebe:	27 57 05 00 	ld.w	4[r7], r10
    9ec2:	26 5f 05 00 	ld.w	4[r6], r11
    9ec6:	ab 51       	sub	r11, r10
    9ec8:	7f 00       	jmp	[lp]
	...

00009ecc <___lshrdi3>:
    9ecc:	06 50       	mov	r6, r10
    9ece:	07 58       	mov	r7, r11
    9ed0:	60 42       	cmp	0, r8
    9ed2:	a2 15       	be	9ef6 <___lshrdi3+0x2a>
    9ed4:	20 66 20 00 	movea	32, r0, r12
    9ed8:	a8 61       	sub	r8, r12
    9eda:	60 62       	cmp	0, r12
    9edc:	e7 0d       	ble	9ef8 <___lshrdi3+0x2c>
    9ede:	07 68       	mov	r7, r13
    9ee0:	ec 6f c0 00 	shl	r12, r13
    9ee4:	0d 60       	mov	r13, r12
    9ee6:	e8 57 80 00 	shr	r8, r10
    9eea:	07 68       	mov	r7, r13
    9eec:	e8 6f 80 00 	shr	r8, r13
    9ef0:	0a 61       	or	r10, r12
    9ef2:	0c 50       	mov	r12, r10
    9ef4:	0d 58       	mov	r13, r11
    9ef6:	7f 00       	jmp	[lp]
    9ef8:	80 61       	subr	r0, r12
    9efa:	ec 5f 80 00 	shr	r12, r11
    9efe:	00 6a       	mov	0, r13
    9f00:	0b 60       	mov	r11, r12
    9f02:	85 fd       	br	9ef2 <___lshrdi3+0x26>

00009f04 <___ashldi3>:
    9f04:	06 50       	mov	r6, r10
    9f06:	07 58       	mov	r7, r11
    9f08:	60 42       	cmp	0, r8
    9f0a:	a2 15       	be	9f2e <___ashldi3+0x2a>
    9f0c:	20 66 20 00 	movea	32, r0, r12
    9f10:	a8 61       	sub	r8, r12
    9f12:	60 62       	cmp	0, r12
    9f14:	e7 0d       	ble	9f30 <___ashldi3+0x2c>
    9f16:	06 68       	mov	r6, r13
    9f18:	ec 6f 80 00 	shr	r12, r13
    9f1c:	0d 60       	mov	r13, r12
    9f1e:	e8 5f c0 00 	shl	r8, r11
    9f22:	06 68       	mov	r6, r13
    9f24:	e8 6f c0 00 	shl	r8, r13
    9f28:	0b 61       	or	r11, r12
    9f2a:	0d 50       	mov	r13, r10
    9f2c:	0c 58       	mov	r12, r11
    9f2e:	7f 00       	jmp	[lp]
    9f30:	80 61       	subr	r0, r12
    9f32:	ec 57 c0 00 	shl	r12, r10
    9f36:	00 6a       	mov	0, r13
    9f38:	0a 60       	mov	r10, r12
    9f3a:	85 fd       	br	9f2a <___ashldi3+0x26>
