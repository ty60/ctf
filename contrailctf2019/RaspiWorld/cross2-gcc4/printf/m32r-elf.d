
m32r-elf.x:     file format elf32-m32r


Disassembly of section .text:

00001400 <_start>:
    1400:	ef 00 e5 10 	ld24 sp,e510 <__end>
    1404:	fe 00 00 66 	bl 159c <_startmain>
    1408:	11 80 f0 00 	mv r1,r0 || nop

0000140c <__r_exit>:
    140c:	60 01 10 f0 	ldi r0,#1 -> trap #0x0
    1410:	1f ce f0 00 	jmp lr || nop

00001414 <__r_read>:
    1414:	60 04 10 f0 	ldi r0,#4 -> trap #0x0
    1418:	1f ce f0 00 	jmp lr || nop

0000141c <__r_write>:
    141c:	60 05 10 f0 	ldi r0,#5 -> trap #0x0
    1420:	1f ce f0 00 	jmp lr || nop

00001424 <__r_open>:
    1424:	60 02 10 f0 	ldi r0,#2 -> trap #0x0
    1428:	1f ce f0 00 	jmp lr || nop

0000142c <__r_close>:
    142c:	60 03 10 f0 	ldi r0,#3 -> trap #0x0
    1430:	1f ce f0 00 	jmp lr || nop

00001434 <__exit>:
    1434:	2e 7f 11 80 	push lr -> mv r1,r0
    1438:	60 00 f0 00 	ldi r0,#0 || nop
    143c:	fe ff ff f4 	bl 140c <__r_exit>

00001440 <__read>:
    1440:	2e 7f 15 80 	push lr -> mv r5,r0
    1444:	14 81 13 82 	mv r4,r1 -> mv r3,r2
    1448:	60 00 f0 00 	ldi r0,#0 || nop
    144c:	11 85 f0 00 	mv r1,r5 || nop
    1450:	12 84 f0 00 	mv r2,r4 || nop
    1454:	fe ff ff f0 	bl 1414 <__r_read>
    1458:	2e ef 1f ce 	pop lr -> jmp lr

0000145c <__write>:
    145c:	2e 7f 15 80 	push lr -> mv r5,r0
    1460:	14 81 13 82 	mv r4,r1 -> mv r3,r2
    1464:	60 00 f0 00 	ldi r0,#0 || nop
    1468:	11 85 f0 00 	mv r1,r5 || nop
    146c:	12 84 f0 00 	mv r2,r4 || nop
    1470:	fe ff ff eb 	bl 141c <__r_write>
    1474:	2e ef 1f ce 	pop lr -> jmp lr

00001478 <__open>:
    1478:	2e 7f 15 80 	push lr -> mv r5,r0
    147c:	14 81 13 82 	mv r4,r1 -> mv r3,r2
    1480:	60 00 f0 00 	ldi r0,#0 || nop
    1484:	11 85 f0 00 	mv r1,r5 || nop
    1488:	12 84 f0 00 	mv r2,r4 || nop
    148c:	fe ff ff e6 	bl 1424 <__r_open>
    1490:	2e ef 1f ce 	pop lr -> jmp lr

00001494 <__close>:
    1494:	2e 7f 11 80 	push lr -> mv r1,r0
    1498:	60 00 f0 00 	ldi r0,#0 || nop
    149c:	fe ff ff e4 	bl 142c <__r_close>
    14a0:	2e ef 1f ce 	pop lr -> jmp lr

000014a4 <_exit>:
    14a4:	2e 7f f0 00 	push lr || nop
    14a8:	fe ff ff e3 	bl 1434 <__exit>

000014ac <read>:
    14ac:	2e 7f f0 00 	push lr || nop
    14b0:	fe ff ff e4 	bl 1440 <__read>
    14b4:	2e ef 1f ce 	pop lr -> jmp lr

000014b8 <write>:
    14b8:	2e 7f f0 00 	push lr || nop
    14bc:	fe ff ff e8 	bl 145c <__write>
    14c0:	2e ef 1f ce 	pop lr -> jmp lr

000014c4 <open>:
    14c4:	2e 7f f0 00 	push lr || nop
    14c8:	fe ff ff ec 	bl 1478 <__open>
    14cc:	2e ef 1f ce 	pop lr -> jmp lr

000014d0 <close>:
    14d0:	2e 7f f0 00 	push lr || nop
    14d4:	fe ff ff f0 	bl 1494 <__close>
    14d8:	2e ef 1f ce 	pop lr -> jmp lr

000014dc <fstat>:
    14dc:	2e 7f f0 00 	push lr || nop
    14e0:	10 81 f0 00 	mv r0,r1 || nop
    14e4:	61 00 f0 00 	ldi r1,#0 || nop
    14e8:	62 3c f0 00 	ldi r2,#60 || nop
    14ec:	fe 00 00 3e 	bl 15e4 <memset>
    14f0:	60 00 2e ef 	ldi r0,#0 -> pop lr
    14f4:	1f ce f0 00 	jmp lr || nop

000014f8 <lseek>:
    14f8:	10 81 f0 00 	mv r0,r1 || nop
    14fc:	1f ce f0 00 	jmp lr || nop

00001500 <sbrk>:
    1500:	e5 00 98 00 	ld24 r5,9800 <__gp>
    1504:	24 c5 f0 00 	ld r4,@r5 || nop
    1508:	00 a4 f0 00 	add r0,r4 || nop
    150c:	20 45 f0 00 	st r0,@r5 || nop
    1510:	10 84 1f ce 	mv r0,r4 -> jmp lr

00001514 <isatty>:
    1514:	60 01 f0 00 	ldi r0,#1 || nop
    1518:	1f ce f0 00 	jmp lr || nop

0000151c <_read>:
    151c:	2e 7f f0 00 	push lr || nop
    1520:	fe ff ff e3 	bl 14ac <read>
    1524:	2e ef 1f ce 	pop lr -> jmp lr

00001528 <_write>:
    1528:	2e 7f f0 00 	push lr || nop
    152c:	fe ff ff e3 	bl 14b8 <write>
    1530:	2e ef 1f ce 	pop lr -> jmp lr

00001534 <_open>:
    1534:	2e 7f f0 00 	push lr || nop
    1538:	fe ff ff e3 	bl 14c4 <open>
    153c:	2e ef 1f ce 	pop lr -> jmp lr

00001540 <_close>:
    1540:	2e 7f f0 00 	push lr || nop
    1544:	fe ff ff e3 	bl 14d0 <close>
    1548:	2e ef 1f ce 	pop lr -> jmp lr

0000154c <_fstat>:
    154c:	2e 7f f0 00 	push lr || nop
    1550:	fe ff ff e3 	bl 14dc <fstat>
    1554:	2e ef 1f ce 	pop lr -> jmp lr

00001558 <_lseek>:
    1558:	2e 7f f0 00 	push lr || nop
    155c:	fe ff ff e7 	bl 14f8 <lseek>
    1560:	2e ef 1f ce 	pop lr -> jmp lr

00001564 <_sbrk>:
    1564:	2e 7f f0 00 	push lr || nop
    1568:	fe ff ff e6 	bl 1500 <sbrk>
    156c:	2e ef 1f ce 	pop lr -> jmp lr

00001570 <_isatty>:
    1570:	2e 7f f0 00 	push lr || nop
    1574:	fe ff ff e8 	bl 1514 <isatty>
    1578:	2e ef 1f ce 	pop lr -> jmp lr

0000157c <main>:
    157c:	2e 7f f0 00 	push lr || nop
    1580:	e0 00 90 08 	ld24 r0,9008 <__etext>
    1584:	e4 00 98 04 	ld24 r4,9804 <data_value>
    1588:	21 c4 f0 00 	ld r1,@r4 || nop
    158c:	e2 00 90 34 	ld24 r2,9034 <__etext+0x2c>
    1590:	fe 00 00 25 	bl 1624 <printf>
    1594:	60 00 f0 00 	ldi r0,#0 || nop
    1598:	fe 00 00 08 	bl 15b8 <exit>

0000159c <_startmain>:
    159c:	2e 7f f0 00 	push lr || nop
    15a0:	e4 00 a0 c0 	ld24 r4,a0c0 <__edata>
    15a4:	10 84 61 00 	mv r0,r4 -> ldi r1,#0
    15a8:	e2 00 e1 08 	ld24 r2,e108 <__ebss>
    15ac:	02 24 f0 00 	sub r2,r4 || nop
    15b0:	fe 00 00 0d 	bl 15e4 <memset>
    15b4:	fe ff ff f2 	bl 157c <main>

000015b8 <exit>:
    15b8:	28 7f 2e 7f 	push r8 -> push lr
    15bc:	61 00 f0 00 	ldi r1,#0 || nop
    15c0:	18 80 f0 00 	mv r8,r0 || nop
    15c4:	fe 00 06 2d 	bl 2e78 <__call_exitprocs>
    15c8:	e4 00 90 40 	ld24 r4,9040 <_global_impure_ptr>
    15cc:	20 c4 f0 00 	ld r0,@r4 || nop
    15d0:	a4 c0 00 3c 	ld r4,@(60,r0)
    15d4:	b0 84 00 02 	beqz r4,15dc <exit+0x24>
    15d8:	1e c4 f0 00 	jl r4 || nop
    15dc:	10 88 f0 00 	mv r0,r8 || nop
    15e0:	fe ff ff b1 	bl 14a4 <_exit>

000015e4 <memset>:
    15e4:	02 a0 f0 00 	add r2,r0 || nop
    15e8:	14 80 f0 00 	mv r4,r0 || nop
    15ec:	7f 02 f0 00 	bra 15f4 <memset+0x10> || nop
    15f0:	21 04 44 01 	stb r1,@r4 -> addi r4,#1
    15f4:	b4 12 ff ff 	bne r4,r2,15f0 <memset+0xc>
    15f8:	1f ce f0 00 	jmp lr || nop

000015fc <_printf_r>:
    15fc:	4f f8 2e 7f 	addi sp,#-8 -> push lr
    1600:	a2 4f 00 04 	st r2,@(4,sp)
    1604:	a3 4f 00 08 	st r3,@(8,sp)
    1608:	83 af 00 04 	add3 r3,sp,#4
    160c:	12 81 f0 00 	mv r2,r1 || nop
    1610:	a1 c0 00 08 	ld r1,@(8,r0)
    1614:	fe 00 00 11 	bl 1658 <_vfprintf_r>
    1618:	2e ef f0 00 	pop lr || nop
    161c:	4f 08 f0 00 	addi sp,#8 || nop
    1620:	1f ce f0 00 	jmp lr || nop

00001624 <printf>:
    1624:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    1628:	4f f4 2e 7f 	addi sp,#-12 -> push lr
    162c:	a2 4f 00 08 	st r2,@(8,sp)
    1630:	a3 4f 00 0c 	st r3,@(12,sp)
    1634:	a1 4f 00 04 	st r1,@(4,sp)
    1638:	83 af 00 04 	add3 r3,sp,#4
    163c:	12 80 f0 00 	mv r2,r0 || nop
    1640:	20 c4 f0 00 	ld r0,@r4 || nop
    1644:	a1 c0 00 08 	ld r1,@(8,r0)
    1648:	fe 00 00 04 	bl 1658 <_vfprintf_r>
    164c:	2e ef f0 00 	pop lr || nop
    1650:	4f 0c f0 00 	addi sp,#12 || nop
    1654:	1f ce f0 00 	jmp lr || nop

00001658 <_vfprintf_r>:
    1658:	2d 7f 28 7f 	push fp -> push r8
    165c:	29 7f 2a 7f 	push r9 -> push r10
    1660:	2b 7f 2c 7f 	push r11 -> push r12
    1664:	2e 7f f0 00 	push lr || nop
    1668:	8f af fa e0 	add3 sp,sp,#-1312
    166c:	a0 4f 04 d0 	st r0,@(1232,sp)
    1670:	19 81 1b 82 	mv r9,r1 -> mv r11,r2
    1674:	1a 83 f0 00 	mv r10,r3 || nop
    1678:	fe 00 0d 40 	bl 4b78 <_localeconv_r>
    167c:	20 c0 f0 00 	ld r0,@r0 || nop
    1680:	a0 4f 05 00 	st r0,@(1280,sp)
    1684:	fe 00 12 d2 	bl 61cc <strlen>
    1688:	a0 4f 04 f8 	st r0,@(1272,sp)
    168c:	65 00 f0 00 	ldi r5,#0 || nop
    1690:	a5 4f 04 f0 	st r5,@(1264,sp)
    1694:	a5 cf 04 d0 	ld r5,@(1232,sp)
    1698:	64 00 f0 00 	ldi r4,#0 || nop
    169c:	a4 4f 04 ec 	st r4,@(1260,sp)
    16a0:	b0 85 00 05 	beqz r5,16b4 <_vfprintf_r+0x5c>
    16a4:	a4 c5 00 38 	ld r4,@(56,r5)
    16a8:	b0 94 00 03 	bnez r4,16b4 <_vfprintf_r+0x5c>
    16ac:	10 85 f0 00 	mv r0,r5 || nop
    16b0:	fe 00 0b b7 	bl 458c <__sinit>
    16b4:	a4 a9 00 0c 	ldh r4,@(12,r9)
    16b8:	85 c4 20 00 	and3 r5,r4,#0x2000
    16bc:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    16c0:	b0 95 00 07 	bnez r5,16dc <_vfprintf_r+0x84>
    16c4:	84 e4 20 00 	or3 r4,r4,#0x2000
    16c8:	a4 29 00 0c 	sth r4,@(12,r9)
    16cc:	a4 c9 00 64 	ld r4,@(100,r9)
    16d0:	95 f0 df ff 	ldi r5,#-8193
    16d4:	04 c5 f0 00 	and r4,r5 || nop
    16d8:	a4 49 00 64 	st r4,@(100,r9)
    16dc:	a5 b9 00 0c 	lduh r5,@(12,r9)
    16e0:	64 08 04 c5 	ldi r4,#8 -> and r4,r5
    16e4:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    16e8:	b0 84 00 08 	beqz r4,1708 <_vfprintf_r+0xb0>
    16ec:	a4 c9 00 10 	ld r4,@(16,r9)
    16f0:	b0 84 00 06 	beqz r4,1708 <_vfprintf_r+0xb0>
    16f4:	a7 a9 00 0c 	ldh r7,@(12,r9)
    16f8:	64 1a 04 c7 	ldi r4,#26 -> and r4,r7
    16fc:	85 a4 ff f6 	add3 r5,r4,#-10
    1700:	b0 95 00 2f 	bnez r5,17bc <_vfprintf_r+0x164>
    1704:	7f 08 f0 00 	bra 1724 <_vfprintf_r+0xcc> || nop
    1708:	a0 cf 04 d0 	ld r0,@(1232,sp)
    170c:	11 89 f0 00 	mv r1,r9 || nop
    1710:	fe 00 05 8d 	bl 2d44 <__swsetup_r>
    1714:	b0 80 ff f8 	beqz r0,16f4 <_vfprintf_r+0x9c>
    1718:	66 ff f0 00 	ldi r6,#-1 || nop
    171c:	a6 4f 04 e4 	st r6,@(1252,sp)
    1720:	ff 00 05 79 	bra 2d04 <_vfprintf_r+0x16ac>
    1724:	a6 a9 00 0e 	ldh r6,@(14,r9)
    1728:	b0 a6 00 25 	bltz r6,17bc <_vfprintf_r+0x164>
    172c:	a0 cf 04 d0 	ld r0,@(1232,sp)
    1730:	81 af 04 10 	add3 r1,sp,#1040
    1734:	a6 2f 04 1e 	sth r6,@(1054,sp)
    1738:	a5 4f 04 28 	st r5,@(1064,sp)
    173c:	64 fd 04 c7 	ldi r4,#-3 -> and r4,r7
    1740:	a4 2f 04 1c 	sth r4,@(1052,sp)
    1744:	a4 c9 00 64 	ld r4,@(100,r9)
    1748:	12 8b 13 8a 	mv r2,r11 -> mv r3,r10
    174c:	a4 4f 04 74 	st r4,@(1140,sp)
    1750:	a4 c9 00 1c 	ld r4,@(28,r9)
    1754:	a4 4f 04 2c 	st r4,@(1068,sp)
    1758:	a4 c9 00 24 	ld r4,@(36,r9)
    175c:	a4 4f 04 34 	st r4,@(1076,sp)
    1760:	84 af 00 10 	add3 r4,sp,#16
    1764:	a4 4f 04 10 	st r4,@(1040,sp)
    1768:	a4 4f 04 20 	st r4,@(1056,sp)
    176c:	94 f0 04 00 	ldi r4,#1024
    1770:	a4 4f 04 18 	st r4,@(1048,sp)
    1774:	a4 4f 04 24 	st r4,@(1060,sp)
    1778:	fe ff ff b8 	bl 1658 <_vfprintf_r>
    177c:	a0 4f 04 e4 	st r0,@(1252,sp)
    1780:	b0 a0 00 07 	bltz r0,179c <_vfprintf_r+0x144>
    1784:	a0 cf 04 d0 	ld r0,@(1232,sp)
    1788:	81 af 04 10 	add3 r1,sp,#1040
    178c:	fe 00 0b 28 	bl 442c <_fflush_r>
    1790:	b0 80 00 03 	beqz r0,179c <_vfprintf_r+0x144>
    1794:	67 ff f0 00 	ldi r7,#-1 || nop
    1798:	a7 4f 04 e4 	st r7,@(1252,sp)
    179c:	a5 bf 04 1c 	lduh r5,@(1052,sp)
    17a0:	64 40 04 c5 	ldi r4,#64 -> and r4,r5
    17a4:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    17a8:	b0 84 05 57 	beqz r4,2d04 <_vfprintf_r+0x16ac>
    17ac:	a5 b9 00 0c 	lduh r5,@(12,r9)
    17b0:	64 40 04 e5 	ldi r4,#64 -> or r4,r5
    17b4:	a4 29 00 0c 	sth r4,@(12,r9)
    17b8:	ff 00 05 53 	bra 2d04 <_vfprintf_r+0x16ac>
    17bc:	88 af 00 10 	add3 r8,sp,#16
    17c0:	a8 4f 04 a0 	st r8,@(1184,sp)
    17c4:	ab 4f 04 dc 	st r11,@(1244,sp)
    17c8:	64 00 f0 00 	ldi r4,#0 || nop
    17cc:	a4 4f 04 a8 	st r4,@(1192,sp)
    17d0:	a4 4f 04 a4 	st r4,@(1188,sp)
    17d4:	a4 4f 04 d8 	st r4,@(1240,sp)
    17d8:	84 af 04 a0 	add3 r4,sp,#1184
    17dc:	a4 4f 04 cc 	st r4,@(1228,sp)
    17e0:	65 00 f0 00 	ldi r5,#0 || nop
    17e4:	a5 4f 05 08 	st r5,@(1288,sp)
    17e8:	66 00 f0 00 	ldi r6,#0 || nop
    17ec:	a6 4f 05 04 	st r6,@(1284,sp)
    17f0:	67 00 f0 00 	ldi r7,#0 || nop
    17f4:	a7 4f 04 e4 	st r7,@(1252,sp)
    17f8:	ab cf 04 dc 	ld r11,@(1244,sp)
    17fc:	7f 02 f0 00 	bra 1804 <_vfprintf_r+0x1ac> || nop
    1800:	4b 01 f0 00 	addi r11,#1 || nop
    1804:	24 8b f0 00 	ldb r4,@r11 || nop
    1808:	b0 94 00 05 	bnez r4,181c <_vfprintf_r+0x1c4>
    180c:	a5 cf 04 dc 	ld r5,@(1244,sp)
    1810:	1c 8b 0c 25 	mv r12,r11 -> sub r12,r5
    1814:	b0 9c 00 05 	bnez r12,1828 <_vfprintf_r+0x1d0>
    1818:	7f 19 f0 00 	bra 187c <_vfprintf_r+0x224> || nop
    181c:	44 db f0 00 	addi r4,#-37 || nop
    1820:	b0 94 ff f8 	bnez r4,1800 <_vfprintf_r+0x1a8>
    1824:	7f fa f0 00 	bra 180c <_vfprintf_r+0x1b4> || nop
    1828:	a4 cf 04 a8 	ld r4,@(1192,sp)
    182c:	ac 48 00 04 	st r12,@(4,r8)
    1830:	a6 cf 04 dc 	ld r6,@(1244,sp)
    1834:	04 ac 65 07 	add r4,r12 -> ldi r5,#7
    1838:	26 48 f0 00 	st r6,@r8 || nop
    183c:	a4 4f 04 a8 	st r4,@(1192,sp)
    1840:	a4 cf 04 a4 	ld r4,@(1188,sp)
    1844:	44 01 f0 00 	addi r4,#1 || nop
    1848:	a4 4f 04 a4 	st r4,@(1188,sp)
    184c:	05 44 7c 03 	cmp r5,r4 -> bc 1858 <_vfprintf_r+0x200>
    1850:	48 08 f0 00 	addi r8,#8 || nop
    1854:	7f 07 f0 00 	bra 1870 <_vfprintf_r+0x218> || nop
    1858:	a0 cf 04 d0 	ld r0,@(1232,sp)
    185c:	82 af 04 a0 	add3 r2,sp,#1184
    1860:	11 89 f0 00 	mv r1,r9 || nop
    1864:	fe 00 12 61 	bl 61e8 <__sprint_r>
    1868:	b0 90 05 23 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    186c:	88 af 00 10 	add3 r8,sp,#16
    1870:	a7 cf 04 e4 	ld r7,@(1252,sp)
    1874:	07 ac f0 00 	add r7,r12 || nop
    1878:	a7 4f 04 e4 	st r7,@(1252,sp)
    187c:	24 8b f0 00 	ldb r4,@r11 || nop
    1880:	b0 84 05 17 	beqz r4,2cdc <_vfprintf_r+0x1684>
    1884:	64 00 f0 00 	ldi r4,#0 || nop
    1888:	a4 0f 04 ca 	stb r4,@(1226,sp)
    188c:	4b 01 f0 00 	addi r11,#1 || nop
    1890:	ab 4f 04 dc 	st r11,@(1244,sp)
    1894:	64 00 f0 00 	ldi r4,#0 || nop
    1898:	a4 4f 04 e8 	st r4,@(1256,sp)
    189c:	6c ff f0 00 	ldi r12,#-1 || nop
    18a0:	6d 00 f0 00 	ldi fp,#0 || nop
    18a4:	67 58 f0 00 	ldi r7,#88 || nop
    18a8:	66 09 f0 00 	ldi r6,#9 || nop
    18ac:	62 2b f0 00 	ldi r2,#43 || nop
    18b0:	63 20 7f 03 	ldi r3,#32 -> bra 18bc <_vfprintf_r+0x264>
    18b4:	1a 84 f0 00 	mv r10,r4 || nop
    18b8:	6c ff f0 00 	ldi r12,#-1 || nop
    18bc:	a5 cf 04 dc 	ld r5,@(1244,sp)
    18c0:	a4 cf 04 dc 	ld r4,@(1244,sp)
    18c4:	25 85 44 01 	ldb r5,@r5 -> addi r4,#1
    18c8:	a4 4f 04 dc 	st r4,@(1244,sp)
    18cc:	a5 4f 04 d4 	st r5,@(1236,sp)
    18d0:	a5 cf 04 d4 	ld r5,@(1236,sp)
    18d4:	45 e0 07 55 	addi r5,#-32 -> cmpu r7,r5
    18d8:	fc 00 02 08 	bc 20f8 <_vfprintf_r+0xaa0>
    18dc:	e4 00 90 84 	ld24 r4,9084 <_global_impure_ptr+0x44>
    18e0:	55 42 05 a4 	slli r5,#0x2 -> add r5,r4
    18e4:	25 c5 1f c5 	ld r5,@r5 -> jmp r5
    18e8:	a4 8f 04 ca 	ldb r4,@(1226,sp)
    18ec:	b0 94 ff f4 	bnez r4,18bc <_vfprintf_r+0x264>
    18f0:	a3 0f 04 ca 	stb r3,@(1226,sp)
    18f4:	7f f2 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    18f8:	8d ed 00 01 	or3 fp,fp,#0x1
    18fc:	7f f0 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    1900:	84 aa 00 04 	add3 r4,r10,#4
    1904:	2a ca f0 00 	ld r10,@r10 || nop
    1908:	aa 4f 04 e8 	st r10,@(1256,sp)
    190c:	b0 ba 00 13 	bgez r10,1958 <_vfprintf_r+0x300>
    1910:	05 3a f0 00 	neg r5,r10 || nop
    1914:	a5 4f 04 e8 	st r5,@(1256,sp)
    1918:	1a 84 f0 00 	mv r10,r4 || nop
    191c:	8d ed 00 04 	or3 fp,fp,#0x4
    1920:	7f e7 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    1924:	a2 0f 04 ca 	stb r2,@(1226,sp)
    1928:	7f e5 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    192c:	a4 cf 04 dc 	ld r4,@(1244,sp)
    1930:	a5 cf 04 dc 	ld r5,@(1244,sp)
    1934:	24 84 45 01 	ldb r4,@r4 -> addi r5,#1
    1938:	a5 4f 04 dc 	st r5,@(1244,sp)
    193c:	a4 4f 04 d4 	st r4,@(1236,sp)
    1940:	15 84 f0 00 	mv r5,r4 || nop
    1944:	45 d6 f0 00 	addi r5,#-42 || nop
    1948:	b0 95 00 0f 	bnez r5,1984 <_vfprintf_r+0x32c>
    194c:	84 aa 00 04 	add3 r4,r10,#4
    1950:	2c ca f0 00 	ld r12,@r10 || nop
    1954:	b0 ac ff d8 	bltz r12,18b4 <_vfprintf_r+0x25c>
    1958:	1a 84 7f d9 	mv r10,r4 -> bra 18bc <_vfprintf_r+0x264>
    195c:	94 cc 00 01 	sll3 r4,r12,#1
    1960:	5c 43 f0 00 	slli r12,#0x3 || nop
    1964:	0c a4 f0 00 	add r12,r4 || nop
    1968:	a4 cf 04 dc 	ld r4,@(1244,sp)
    196c:	0c a5 f0 00 	add r12,r5 || nop
    1970:	a5 cf 04 dc 	ld r5,@(1244,sp)
    1974:	24 84 45 01 	ldb r4,@r4 -> addi r5,#1
    1978:	a5 4f 04 dc 	st r5,@(1244,sp)
    197c:	a4 4f 04 d4 	st r4,@(1236,sp)
    1980:	7f 02 f0 00 	bra 1988 <_vfprintf_r+0x330> || nop
    1984:	6c 00 f0 00 	ldi r12,#0 || nop
    1988:	a5 cf 04 d4 	ld r5,@(1236,sp)
    198c:	45 d0 06 55 	addi r5,#-48 -> cmpu r6,r5
    1990:	7d f3 f0 00 	bnc 195c <_vfprintf_r+0x304> || nop
    1994:	b0 bc ff cf 	bgez r12,18d0 <_vfprintf_r+0x278>
    1998:	6c ff f0 00 	ldi r12,#-1 || nop
    199c:	7f cd f0 00 	bra 18d0 <_vfprintf_r+0x278> || nop
    19a0:	8d ed 00 80 	or3 fp,fp,#0x80
    19a4:	7f c6 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    19a8:	65 00 f0 00 	ldi r5,#0 || nop
    19ac:	a4 cf 04 d4 	ld r4,@(1236,sp)
    19b0:	9b c5 00 01 	sll3 r11,r5,#1
    19b4:	55 43 f0 00 	slli r5,#0x3 || nop
    19b8:	05 ab 44 d0 	add r5,r11 -> addi r4,#-48
    19bc:	05 a4 f0 00 	add r5,r4 || nop
    19c0:	a4 cf 04 dc 	ld r4,@(1244,sp)
    19c4:	24 84 f0 00 	ldb r4,@r4 || nop
    19c8:	a4 4f 04 d4 	st r4,@(1236,sp)
    19cc:	ab cf 04 d4 	ld r11,@(1236,sp)
    19d0:	a4 cf 04 dc 	ld r4,@(1244,sp)
    19d4:	4b d0 f0 00 	addi r11,#-48 || nop
    19d8:	06 5b f0 00 	cmpu r6,r11 || nop
    19dc:	44 01 f0 00 	addi r4,#1 || nop
    19e0:	a4 4f 04 dc 	st r4,@(1244,sp)
    19e4:	7d f2 f0 00 	bnc 19ac <_vfprintf_r+0x354> || nop
    19e8:	a5 4f 04 e8 	st r5,@(1256,sp)
    19ec:	7f b9 f0 00 	bra 18d0 <_vfprintf_r+0x278> || nop
    19f0:	8d ed 00 08 	or3 fp,fp,#0x8
    19f4:	7f b2 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    19f8:	8d ed 00 40 	or3 fp,fp,#0x40
    19fc:	7f b0 f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    1a00:	8d ed 00 10 	or3 fp,fp,#0x10
    1a04:	7f ae f0 00 	bra 18bc <_vfprintf_r+0x264> || nop
    1a08:	25 ca 4a 04 	ld r5,@r10 -> addi r10,#4
    1a0c:	a5 0f 04 78 	stb r5,@(1144,sp)
    1a10:	65 00 f0 00 	ldi r5,#0 || nop
    1a14:	a5 0f 04 ca 	stb r5,@(1226,sp)
    1a18:	ff 00 01 bd 	bra 210c <_vfprintf_r+0xab4>
    1a1c:	8d ed 00 10 	or3 fp,fp,#0x10
    1a20:	86 aa 00 04 	add3 r6,r10,#4
    1a24:	65 10 05 cd 	ldi r5,#16 -> and r5,fp
    1a28:	b0 85 00 02 	beqz r5,1a30 <_vfprintf_r+0x3d8>
    1a2c:	25 ca 7f 05 	ld r5,@r10 -> bra 1a40 <_vfprintf_r+0x3e8>
    1a30:	67 40 07 cd 	ldi r7,#64 -> and r7,fp
    1a34:	25 ca f0 00 	ld r5,@r10 || nop
    1a38:	b0 87 00 02 	beqz r7,1a40 <_vfprintf_r+0x3e8>
    1a3c:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    1a40:	1a 86 f0 00 	mv r10,r6 || nop
    1a44:	b0 b5 01 72 	bgez r5,200c <_vfprintf_r+0x9b4>
    1a48:	66 2d f0 00 	ldi r6,#45 || nop
    1a4c:	a6 0f 04 ca 	stb r6,@(1226,sp)
    1a50:	05 35 f0 00 	neg r5,r5 || nop
    1a54:	ff 00 01 6e 	bra 200c <_vfprintf_r+0x9b4>
    1a58:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1a5c:	ad 4f 04 e0 	st fp,@(1248,sp)
    1a60:	86 aa 00 08 	add3 r6,r10,#8
    1a64:	a5 4f 04 f4 	st r5,@(1268,sp)
    1a68:	a5 ca 00 04 	ld r5,@(4,r10)
    1a6c:	24 ca f0 00 	ld r4,@r10 || nop
    1a70:	1a 86 f0 00 	mv r10,r6 || nop
    1a74:	a5 4f 04 f0 	st r5,@(1264,sp)
    1a78:	a5 cf 04 f0 	ld r5,@(1264,sp)
    1a7c:	a4 4f 04 ec 	st r4,@(1260,sp)
    1a80:	a4 cf 04 ec 	ld r4,@(1260,sp)
    1a84:	a5 4f 04 fc 	st r5,@(1276,sp)
    1a88:	11 85 f0 00 	mv r1,r5 || nop
    1a8c:	a4 4f 05 10 	st r4,@(1296,sp)
    1a90:	10 84 f0 00 	mv r0,r4 || nop
    1a94:	fe 00 11 53 	bl 5fe0 <__fpclassifyd>
    1a98:	a4 cf 05 10 	ld r4,@(1296,sp)
    1a9c:	40 ff f0 00 	addi r0,#-1 || nop
    1aa0:	b0 90 00 0f 	bnez r0,1adc <_vfprintf_r+0x484>
    1aa4:	a7 cf 04 f0 	ld r7,@(1264,sp)
    1aa8:	10 84 62 00 	mv r0,r4 -> ldi r2,#0
    1aac:	11 87 63 00 	mv r1,r7 -> ldi r3,#0
    1ab0:	fe 00 1b a0 	bl 8930 <__ltdf2>
    1ab4:	b0 b0 00 03 	bgez r0,1ac0 <_vfprintf_r+0x468>
    1ab8:	65 2d f0 00 	ldi r5,#45 || nop
    1abc:	a5 0f 04 ca 	stb r5,@(1226,sp)
    1ac0:	a4 cf 04 d4 	ld r4,@(1236,sp)
    1ac4:	65 47 05 44 	ldi r5,#71 -> cmp r5,r4
    1ac8:	7c 03 f0 00 	bc 1ad4 <_vfprintf_r+0x47c> || nop
    1acc:	eb 00 90 48 	ld24 r11,9048 <_global_impure_ptr+0x8>
    1ad0:	7f 0f f0 00 	bra 1b0c <_vfprintf_r+0x4b4> || nop
    1ad4:	eb 00 90 4c 	ld24 r11,904c <_global_impure_ptr+0xc>
    1ad8:	7f 0d f0 00 	bra 1b0c <_vfprintf_r+0x4b4> || nop
    1adc:	a5 cf 04 f0 	ld r5,@(1264,sp)
    1ae0:	a4 4f 05 10 	st r4,@(1296,sp)
    1ae4:	10 84 11 85 	mv r0,r4 -> mv r1,r5
    1ae8:	fe 00 11 3e 	bl 5fe0 <__fpclassifyd>
    1aec:	a4 cf 05 10 	ld r4,@(1296,sp)
    1af0:	b0 90 00 0b 	bnez r0,1b1c <_vfprintf_r+0x4c4>
    1af4:	a6 cf 04 d4 	ld r6,@(1236,sp)
    1af8:	65 47 05 46 	ldi r5,#71 -> cmp r5,r6
    1afc:	7c 03 f0 00 	bc 1b08 <_vfprintf_r+0x4b0> || nop
    1b00:	eb 00 90 50 	ld24 r11,9050 <_global_impure_ptr+0x10>
    1b04:	7f 02 f0 00 	bra 1b0c <_vfprintf_r+0x4b4> || nop
    1b08:	eb 00 90 54 	ld24 r11,9054 <_global_impure_ptr+0x14>
    1b0c:	95 f0 ff 7f 	ldi r5,#-129
    1b10:	0d c5 f0 00 	and fp,r5 || nop
    1b14:	65 03 f0 00 	ldi r5,#3 || nop
    1b18:	ff 00 01 84 	bra 2128 <_vfprintf_r+0xad0>
    1b1c:	85 ac 00 01 	add3 r5,r12,#1
    1b20:	b0 85 00 09 	beqz r5,1b44 <_vfprintf_r+0x4ec>
    1b24:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b28:	45 99 f0 00 	addi r5,#-103 || nop
    1b2c:	b0 85 00 04 	beqz r5,1b3c <_vfprintf_r+0x4e4>
    1b30:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b34:	45 b9 f0 00 	addi r5,#-71 || nop
    1b38:	b0 95 00 06 	bnez r5,1b50 <_vfprintf_r+0x4f8>
    1b3c:	b0 8c 00 04 	beqz r12,1b4c <_vfprintf_r+0x4f4>
    1b40:	7f 04 f0 00 	bra 1b50 <_vfprintf_r+0x4f8> || nop
    1b44:	6c 06 f0 00 	ldi r12,#6 || nop
    1b48:	7f 02 f0 00 	bra 1b50 <_vfprintf_r+0x4f8> || nop
    1b4c:	6c 01 f0 00 	ldi r12,#1 || nop
    1b50:	8d ed 01 00 	or3 fp,fp,#0x100
    1b54:	b0 b4 00 06 	bgez r4,1b6c <_vfprintf_r+0x514>
    1b58:	d7 c0 80 00 	seth r7,#0x8000
    1b5c:	65 2d f0 00 	ldi r5,#45 || nop
    1b60:	a5 4f 05 0c 	st r5,@(1292,sp)
    1b64:	04 a7 f0 00 	add r4,r7 || nop
    1b68:	7f 03 f0 00 	bra 1b74 <_vfprintf_r+0x51c> || nop
    1b6c:	66 00 f0 00 	ldi r6,#0 || nop
    1b70:	a6 4f 05 0c 	st r6,@(1292,sp)
    1b74:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b78:	45 9a f0 00 	addi r5,#-102 || nop
    1b7c:	b0 85 00 0c 	beqz r5,1bac <_vfprintf_r+0x554>
    1b80:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b84:	45 ba f0 00 	addi r5,#-70 || nop
    1b88:	b0 85 00 09 	beqz r5,1bac <_vfprintf_r+0x554>
    1b8c:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b90:	45 9b f0 00 	addi r5,#-101 || nop
    1b94:	b0 85 00 04 	beqz r5,1ba4 <_vfprintf_r+0x54c>
    1b98:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1b9c:	45 bb f0 00 	addi r5,#-69 || nop
    1ba0:	b0 95 00 05 	bnez r5,1bb4 <_vfprintf_r+0x55c>
    1ba4:	85 ac 00 01 	add3 r5,r12,#1
    1ba8:	7f 04 f0 00 	bra 1bb8 <_vfprintf_r+0x560> || nop
    1bac:	15 8c f0 00 	mv r5,r12 || nop
    1bb0:	63 03 7f 03 	ldi r3,#3 -> bra 1bbc <_vfprintf_r+0x564>
    1bb4:	15 8c f0 00 	mv r5,r12 || nop
    1bb8:	63 02 f0 00 	ldi r3,#2 || nop
    1bbc:	86 af 04 c4 	add3 r6,sp,#1220
    1bc0:	a7 cf 04 fc 	ld r7,@(1276,sp)
    1bc4:	a6 4f 00 04 	st r6,@(4,sp)
    1bc8:	a0 cf 04 d0 	ld r0,@(1232,sp)
    1bcc:	86 af 04 c0 	add3 r6,sp,#1216
    1bd0:	a6 4f 00 08 	st r6,@(8,sp)
    1bd4:	86 af 04 bc 	add3 r6,sp,#1212
    1bd8:	a6 4f 00 0c 	st r6,@(12,sp)
    1bdc:	a4 4f 05 10 	st r4,@(1296,sp)
    1be0:	a5 4f 05 1c 	st r5,@(1308,sp)
    1be4:	25 4f 11 84 	st r5,@sp -> mv r1,r4
    1be8:	12 87 f0 00 	mv r2,r7 || nop
    1bec:	fe 00 05 52 	bl 3134 <_dtoa_r>
    1bf0:	a6 cf 04 d4 	ld r6,@(1236,sp)
    1bf4:	1b 80 f0 00 	mv r11,r0 || nop
    1bf8:	a4 cf 05 10 	ld r4,@(1296,sp)
    1bfc:	46 99 f0 00 	addi r6,#-103 || nop
    1c00:	a5 cf 05 1c 	ld r5,@(1308,sp)
    1c04:	b0 86 00 04 	beqz r6,1c14 <_vfprintf_r+0x5bc>
    1c08:	a6 cf 04 d4 	ld r6,@(1236,sp)
    1c0c:	46 b9 f0 00 	addi r6,#-71 || nop
    1c10:	b0 96 00 0c 	bnez r6,1c40 <_vfprintf_r+0x5e8>
    1c14:	a7 cf 04 e0 	ld r7,@(1248,sp)
    1c18:	66 01 06 c7 	ldi r6,#1 -> and r6,r7
    1c1c:	b0 96 00 09 	bnez r6,1c40 <_vfprintf_r+0x5e8>
    1c20:	a4 cf 04 bc 	ld r4,@(1212,sp)
    1c24:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1c28:	04 2b f0 00 	sub r4,r11 || nop
    1c2c:	a4 4f 04 d8 	st r4,@(1240,sp)
    1c30:	a6 cf 04 c4 	ld r6,@(1220,sp)
    1c34:	45 99 f0 00 	addi r5,#-103 || nop
    1c38:	b0 95 00 2a 	bnez r5,1ce0 <_vfprintf_r+0x688>
    1c3c:	7f 2c f0 00 	bra 1cec <_vfprintf_r+0x694> || nop
    1c40:	a7 cf 04 d4 	ld r7,@(1236,sp)
    1c44:	16 8b 06 a5 	mv r6,r11 -> add r6,r5
    1c48:	47 9a f0 00 	addi r7,#-102 || nop
    1c4c:	b0 87 00 04 	beqz r7,1c5c <_vfprintf_r+0x604>
    1c50:	a7 cf 04 d4 	ld r7,@(1236,sp)
    1c54:	47 ba f0 00 	addi r7,#-70 || nop
    1c58:	b0 97 00 12 	bnez r7,1ca0 <_vfprintf_r+0x648>
    1c5c:	27 8b 47 d0 	ldb r7,@r11 -> addi r7,#-48
    1c60:	b0 97 00 0e 	bnez r7,1c98 <_vfprintf_r+0x640>
    1c64:	a1 cf 04 fc 	ld r1,@(1276,sp)
    1c68:	a4 4f 05 10 	st r4,@(1296,sp)
    1c6c:	a5 4f 05 1c 	st r5,@(1308,sp)
    1c70:	a6 4f 05 18 	st r6,@(1304,sp)
    1c74:	10 84 f0 00 	mv r0,r4 || nop
    1c78:	62 00 63 00 	ldi r2,#0 -> ldi r3,#0
    1c7c:	fe 00 1a e8 	bl 881c <__nedf2>
    1c80:	a4 cf 05 10 	ld r4,@(1296,sp)
    1c84:	a5 cf 05 1c 	ld r5,@(1308,sp)
    1c88:	a6 cf 05 18 	ld r6,@(1304,sp)
    1c8c:	b0 80 00 03 	beqz r0,1c98 <_vfprintf_r+0x640>
    1c90:	67 01 07 25 	ldi r7,#1 -> sub r7,r5
    1c94:	a7 4f 04 c4 	st r7,@(1220,sp)
    1c98:	a5 cf 04 c4 	ld r5,@(1220,sp)
    1c9c:	06 a5 f0 00 	add r6,r5 || nop
    1ca0:	a1 cf 04 fc 	ld r1,@(1276,sp)
    1ca4:	a6 4f 05 18 	st r6,@(1304,sp)
    1ca8:	10 84 62 00 	mv r0,r4 -> ldi r2,#0
    1cac:	63 00 f0 00 	ldi r3,#0 || nop
    1cb0:	fe 00 1a c4 	bl 87c0 <__eqdf2>
    1cb4:	a6 cf 05 18 	ld r6,@(1304,sp)
    1cb8:	b0 90 00 06 	bnez r0,1cd0 <_vfprintf_r+0x678>
    1cbc:	a6 4f 04 bc 	st r6,@(1212,sp)
    1cc0:	7f 04 f0 00 	bra 1cd0 <_vfprintf_r+0x678> || nop
    1cc4:	27 05 45 01 	stb r7,@r5 -> addi r5,#1
    1cc8:	a5 4f 04 bc 	st r5,@(1212,sp)
    1ccc:	7f 02 f0 00 	bra 1cd4 <_vfprintf_r+0x67c> || nop
    1cd0:	67 30 f0 00 	ldi r7,#48 || nop
    1cd4:	a5 cf 04 bc 	ld r5,@(1212,sp)
    1cd8:	05 56 7c fb 	cmpu r5,r6 -> bc 1cc4 <_vfprintf_r+0x66c>
    1cdc:	7f d1 f0 00 	bra 1c20 <_vfprintf_r+0x5c8> || nop
    1ce0:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1ce4:	45 b9 f0 00 	addi r5,#-71 || nop
    1ce8:	b0 95 00 09 	bnez r5,1d0c <_vfprintf_r+0x6b4>
    1cec:	80 46 ff fd 	cmpi r6,#-3
    1cf0:	15 86 f0 00 	mv r5,r6 || nop
    1cf4:	7c 02 f0 00 	bc 1cfc <_vfprintf_r+0x6a4> || nop
    1cf8:	0c 46 7d 4a 	cmp r12,r6 -> bnc 1e20 <_vfprintf_r+0x7c8>
    1cfc:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1d00:	45 fe f0 00 	addi r5,#-2 || nop
    1d04:	a5 4f 04 d4 	st r5,@(1236,sp)
    1d08:	7f 04 f0 00 	bra 1d18 <_vfprintf_r+0x6c0> || nop
    1d0c:	a5 cf 04 d4 	ld r5,@(1236,sp)
    1d10:	45 9a f0 00 	addi r5,#-102 || nop
    1d14:	b0 85 00 32 	beqz r5,1ddc <_vfprintf_r+0x784>
    1d18:	85 a6 ff ff 	add3 r5,r6,#-1
    1d1c:	a6 cf 04 d4 	ld r6,@(1236,sp)
    1d20:	a5 4f 04 c4 	st r5,@(1220,sp)
    1d24:	a6 0f 04 b3 	stb r6,@(1203,sp)
    1d28:	b0 b5 00 04 	bgez r5,1d38 <_vfprintf_r+0x6e0>
    1d2c:	05 35 f0 00 	neg r5,r5 || nop
    1d30:	66 2d f0 00 	ldi r6,#45 || nop
    1d34:	7f 02 f0 00 	bra 1d3c <_vfprintf_r+0x6e4> || nop
    1d38:	66 2b f0 00 	ldi r6,#43 || nop
    1d3c:	a6 0f 04 b4 	stb r6,@(1204,sp)
    1d40:	66 09 06 45 	ldi r6,#9 -> cmp r6,r5
    1d44:	7d 14 f0 00 	bnc 1d94 <_vfprintf_r+0x73c> || nop
    1d48:	86 af 04 b3 	add3 r6,sp,#1203
    1d4c:	67 0a f0 00 	ldi r7,#10 || nop
    1d50:	62 09 f0 00 	ldi r2,#9 || nop
    1d54:	13 85 f0 00 	mv r3,r5 || nop
    1d58:	93 27 00 00 	rem r3,r7
    1d5c:	95 07 00 00 	div r5,r7
    1d60:	46 ff f0 00 	addi r6,#-1 || nop
    1d64:	43 30 23 06 	addi r3,#48 -> stb r3,@r6
    1d68:	02 45 7c fb 	cmp r2,r5 -> bc 1d54 <_vfprintf_r+0x6fc>
    1d6c:	87 a6 ff ff 	add3 r7,r6,#-1
    1d70:	45 30 f0 00 	addi r5,#48 || nop
    1d74:	a5 06 ff ff 	stb r5,@(-1,r6)
    1d78:	85 af 04 b5 	add3 r5,sp,#1205
    1d7c:	86 af 04 b3 	add3 r6,sp,#1203
    1d80:	7f 03 f0 00 	bra 1d8c <_vfprintf_r+0x734> || nop
    1d84:	22 87 47 01 	ldb r2,@r7 -> addi r7,#1
    1d88:	22 05 45 01 	stb r2,@r5 -> addi r5,#1
    1d8c:	07 56 7c fe 	cmpu r7,r6 -> bc 1d84 <_vfprintf_r+0x72c>
    1d90:	7f 06 f0 00 	bra 1da8 <_vfprintf_r+0x750> || nop
    1d94:	45 30 f0 00 	addi r5,#48 || nop
    1d98:	a5 0f 04 b6 	stb r5,@(1206,sp)
    1d9c:	85 af 04 b7 	add3 r5,sp,#1207
    1da0:	66 30 f0 00 	ldi r6,#48 || nop
    1da4:	a6 0f 04 b5 	stb r6,@(1205,sp)
    1da8:	a7 cf 04 d8 	ld r7,@(1240,sp)
    1dac:	86 af 04 b3 	add3 r6,sp,#1203
    1db0:	05 26 f0 00 	sub r5,r6 || nop
    1db4:	a5 4f 05 04 	st r5,@(1284,sp)
    1db8:	66 01 f0 00 	ldi r6,#1 || nop
    1dbc:	06 47 f0 00 	cmp r6,r7 || nop
    1dc0:	05 a7 f0 00 	add r5,r7 || nop
    1dc4:	7c 04 f0 00 	bc 1dd4 <_vfprintf_r+0x77c> || nop
    1dc8:	a4 cf 04 e0 	ld r4,@(1248,sp)
    1dcc:	06 c4 f0 00 	and r6,r4 || nop
    1dd0:	b0 86 00 2c 	beqz r6,1e80 <_vfprintf_r+0x828>
    1dd4:	45 01 f0 00 	addi r5,#1 || nop
    1dd8:	7f 2a f0 00 	bra 1e80 <_vfprintf_r+0x828> || nop
    1ddc:	15 86 f0 00 	mv r5,r6 || nop
    1de0:	b0 c6 00 09 	blez r6,1e04 <_vfprintf_r+0x7ac>
    1de4:	b0 9c 00 05 	bnez r12,1df8 <_vfprintf_r+0x7a0>
    1de8:	a7 cf 04 e0 	ld r7,@(1248,sp)
    1dec:	64 01 f0 00 	ldi r4,#1 || nop
    1df0:	04 c7 f0 00 	and r4,r7 || nop
    1df4:	b0 84 00 1f 	beqz r4,1e70 <_vfprintf_r+0x818>
    1df8:	85 ac 00 01 	add3 r5,r12,#1
    1dfc:	05 a6 f0 00 	add r5,r6 || nop
    1e00:	7f 1c f0 00 	bra 1e70 <_vfprintf_r+0x818> || nop
    1e04:	b0 9c 00 05 	bnez r12,1e18 <_vfprintf_r+0x7c0>
    1e08:	a5 cf 04 e0 	ld r5,@(1248,sp)
    1e0c:	64 01 f0 00 	ldi r4,#1 || nop
    1e10:	04 c5 f0 00 	and r4,r5 || nop
    1e14:	b0 84 00 14 	beqz r4,1e64 <_vfprintf_r+0x80c>
    1e18:	85 ac 00 02 	add3 r5,r12,#2
    1e1c:	7f 15 f0 00 	bra 1e70 <_vfprintf_r+0x818> || nop
    1e20:	a7 cf 04 d8 	ld r7,@(1240,sp)
    1e24:	06 47 7c 07 	cmp r6,r7 -> bc 1e40 <_vfprintf_r+0x7e8>
    1e28:	a6 cf 04 e0 	ld r6,@(1248,sp)
    1e2c:	64 01 f0 00 	ldi r4,#1 || nop
    1e30:	04 c6 f0 00 	and r4,r6 || nop
    1e34:	b0 84 00 0d 	beqz r4,1e68 <_vfprintf_r+0x810>
    1e38:	45 01 f0 00 	addi r5,#1 || nop
    1e3c:	7f 0b f0 00 	bra 1e68 <_vfprintf_r+0x810> || nop
    1e40:	b0 d6 00 03 	bgtz r6,1e4c <_vfprintf_r+0x7f4>
    1e44:	65 02 05 26 	ldi r5,#2 -> sub r5,r6
    1e48:	7f 02 f0 00 	bra 1e50 <_vfprintf_r+0x7f8> || nop
    1e4c:	65 01 f0 00 	ldi r5,#1 || nop
    1e50:	a4 cf 04 d8 	ld r4,@(1240,sp)
    1e54:	66 67 f0 00 	ldi r6,#103 || nop
    1e58:	a6 4f 04 f4 	st r6,@(1268,sp)
    1e5c:	05 a4 f0 00 	add r5,r4 || nop
    1e60:	7f 04 f0 00 	bra 1e70 <_vfprintf_r+0x818> || nop
    1e64:	65 01 7f 03 	ldi r5,#1 -> bra 1e70 <_vfprintf_r+0x818>
    1e68:	67 67 f0 00 	ldi r7,#103 || nop
    1e6c:	a7 4f 04 f4 	st r7,@(1268,sp)
    1e70:	a4 cf 04 f4 	ld r4,@(1268,sp)
    1e74:	ac cf 04 c4 	ld r12,@(1220,sp)
    1e78:	a4 4f 04 d4 	st r4,@(1236,sp)
    1e7c:	7f 02 f0 00 	bra 1e84 <_vfprintf_r+0x82c> || nop
    1e80:	6c 00 f0 00 	ldi r12,#0 || nop
    1e84:	a6 cf 05 0c 	ld r6,@(1292,sp)
    1e88:	b0 86 00 a6 	beqz r6,2120 <_vfprintf_r+0xac8>
    1e8c:	66 2d f0 00 	ldi r6,#45 || nop
    1e90:	a6 0f 04 ca 	stb r6,@(1226,sp)
    1e94:	ff 00 00 a3 	bra 2120 <_vfprintf_r+0xac8>
    1e98:	84 aa 00 04 	add3 r4,r10,#4
    1e9c:	65 10 05 cd 	ldi r5,#16 -> and r5,fp
    1ea0:	b0 85 00 02 	beqz r5,1ea8 <_vfprintf_r+0x850>
    1ea4:	7f 06 f0 00 	bra 1ebc <_vfprintf_r+0x864> || nop
    1ea8:	65 40 05 cd 	ldi r5,#64 -> and r5,fp
    1eac:	b0 85 00 04 	beqz r5,1ebc <_vfprintf_r+0x864>
    1eb0:	a6 cf 04 e4 	ld r6,@(1252,sp)
    1eb4:	25 ca 26 25 	ld r5,@r10 -> sth r6,@r5
    1eb8:	7f 03 f0 00 	bra 1ec4 <_vfprintf_r+0x86c> || nop
    1ebc:	a7 cf 04 e4 	ld r7,@(1252,sp)
    1ec0:	25 ca 27 45 	ld r5,@r10 -> st r7,@r5
    1ec4:	1a 84 f0 00 	mv r10,r4 || nop
    1ec8:	ff ff fe 4c 	bra 17f8 <_vfprintf_r+0x1a0>
    1ecc:	8d ed 00 10 	or3 fp,fp,#0x10
    1ed0:	86 aa 00 04 	add3 r6,r10,#4
    1ed4:	65 10 05 cd 	ldi r5,#16 -> and r5,fp
    1ed8:	b0 85 00 02 	beqz r5,1ee0 <_vfprintf_r+0x888>
    1edc:	7f 05 f0 00 	bra 1ef0 <_vfprintf_r+0x898> || nop
    1ee0:	65 40 05 cd 	ldi r5,#64 -> and r5,fp
    1ee4:	b0 85 00 03 	beqz r5,1ef0 <_vfprintf_r+0x898>
    1ee8:	a5 ba 00 02 	lduh r5,@(2,r10)
    1eec:	7f 02 f0 00 	bra 1ef4 <_vfprintf_r+0x89c> || nop
    1ef0:	25 ca f0 00 	ld r5,@r10 || nop
    1ef4:	1a 86 f0 00 	mv r10,r6 || nop
    1ef8:	66 00 f0 00 	ldi r6,#0 || nop
    1efc:	7f 41 f0 00 	bra 2000 <_vfprintf_r+0x9a8> || nop
    1f00:	8d ed 00 02 	or3 fp,fp,#0x2
    1f04:	64 30 f0 00 	ldi r4,#48 || nop
    1f08:	25 ca f0 00 	ld r5,@r10 || nop
    1f0c:	67 78 f0 00 	ldi r7,#120 || nop
    1f10:	a4 0f 04 c8 	stb r4,@(1224,sp)
    1f14:	a7 4f 04 d4 	st r7,@(1236,sp)
    1f18:	64 78 f0 00 	ldi r4,#120 || nop
    1f1c:	a4 0f 04 c9 	stb r4,@(1225,sp)
    1f20:	e4 00 90 6c 	ld24 r4,906c <_global_impure_ptr+0x2c>
    1f24:	a4 4f 05 08 	st r4,@(1288,sp)
    1f28:	4a 04 f0 00 	addi r10,#4 || nop
    1f2c:	66 02 f0 00 	ldi r6,#2 || nop
    1f30:	7f 34 f0 00 	bra 2000 <_vfprintf_r+0x9a8> || nop
    1f34:	66 00 f0 00 	ldi r6,#0 || nop
    1f38:	a6 0f 04 ca 	stb r6,@(1226,sp)
    1f3c:	15 8a f0 00 	mv r5,r10 || nop
    1f40:	2b c5 4a 04 	ld r11,@r5 -> addi r10,#4
    1f44:	10 8b f0 00 	mv r0,r11 || nop
    1f48:	b0 ac 00 07 	bltz r12,1f64 <_vfprintf_r+0x90c>
    1f4c:	61 00 12 8c 	ldi r1,#0 -> mv r2,r12
    1f50:	fe 00 0c fd 	bl 5344 <memchr>
    1f54:	b0 80 00 74 	beqz r0,2124 <_vfprintf_r+0xacc>
    1f58:	15 80 05 2b 	mv r5,r0 -> sub r5,r11
    1f5c:	0c 45 7c 72 	cmp r12,r5 -> bc 2124 <_vfprintf_r+0xacc>
    1f60:	7f 72 f0 00 	bra 2128 <_vfprintf_r+0xad0> || nop
    1f64:	fe 00 10 9a 	bl 61cc <strlen>
    1f68:	15 80 f0 00 	mv r5,r0 || nop
    1f6c:	7f 6f f0 00 	bra 2128 <_vfprintf_r+0xad0> || nop
    1f70:	8d ed 00 10 	or3 fp,fp,#0x10
    1f74:	86 aa 00 04 	add3 r6,r10,#4
    1f78:	65 10 05 cd 	ldi r5,#16 -> and r5,fp
    1f7c:	b0 85 00 02 	beqz r5,1f84 <_vfprintf_r+0x92c>
    1f80:	7f 07 f0 00 	bra 1f9c <_vfprintf_r+0x944> || nop
    1f84:	65 40 05 cd 	ldi r5,#64 -> and r5,fp
    1f88:	b0 85 00 05 	beqz r5,1f9c <_vfprintf_r+0x944>
    1f8c:	a5 ba 00 02 	lduh r5,@(2,r10)
    1f90:	1a 86 f0 00 	mv r10,r6 || nop
    1f94:	66 01 f0 00 	ldi r6,#1 || nop
    1f98:	7f 1a f0 00 	bra 2000 <_vfprintf_r+0x9a8> || nop
    1f9c:	25 ca 7f fd 	ld r5,@r10 -> bra 1f90 <_vfprintf_r+0x938>
    1fa0:	e4 00 90 6c 	ld24 r4,906c <_global_impure_ptr+0x2c>
    1fa4:	a4 4f 05 08 	st r4,@(1288,sp)
    1fa8:	7f 03 f0 00 	bra 1fb4 <_vfprintf_r+0x95c> || nop
    1fac:	e5 00 90 58 	ld24 r5,9058 <_global_impure_ptr+0x18>
    1fb0:	a5 4f 05 08 	st r5,@(1288,sp)
    1fb4:	86 aa 00 04 	add3 r6,r10,#4
    1fb8:	65 10 05 cd 	ldi r5,#16 -> and r5,fp
    1fbc:	b0 85 00 02 	beqz r5,1fc4 <_vfprintf_r+0x96c>
    1fc0:	7f 05 f0 00 	bra 1fd4 <_vfprintf_r+0x97c> || nop
    1fc4:	65 40 05 cd 	ldi r5,#64 -> and r5,fp
    1fc8:	b0 85 00 03 	beqz r5,1fd4 <_vfprintf_r+0x97c>
    1fcc:	a5 ba 00 02 	lduh r5,@(2,r10)
    1fd0:	7f 02 f0 00 	bra 1fd8 <_vfprintf_r+0x980> || nop
    1fd4:	25 ca f0 00 	ld r5,@r10 || nop
    1fd8:	1a 86 f0 00 	mv r10,r6 || nop
    1fdc:	66 01 06 cd 	ldi r6,#1 -> and r6,fp
    1fe0:	b0 86 00 07 	beqz r6,1ffc <_vfprintf_r+0x9a4>
    1fe4:	b0 85 00 06 	beqz r5,1ffc <_vfprintf_r+0x9a4>
    1fe8:	8d ed 00 02 	or3 fp,fp,#0x2
    1fec:	66 30 f0 00 	ldi r6,#48 || nop
    1ff0:	a6 0f 04 c8 	stb r6,@(1224,sp)
    1ff4:	a6 cf 04 d4 	ld r6,@(1236,sp)
    1ff8:	a6 0f 04 c9 	stb r6,@(1225,sp)
    1ffc:	66 02 f0 00 	ldi r6,#2 || nop
    2000:	67 00 f0 00 	ldi r7,#0 || nop
    2004:	a7 0f 04 ca 	stb r7,@(1226,sp)
    2008:	7f 02 f0 00 	bra 2010 <_vfprintf_r+0x9b8> || nop
    200c:	66 01 f0 00 	ldi r6,#1 || nop
    2010:	b0 ac 00 03 	bltz r12,201c <_vfprintf_r+0x9c4>
    2014:	97 f0 ff 7f 	ldi r7,#-129
    2018:	0d c7 f0 00 	and fp,r7 || nop
    201c:	b0 95 00 02 	bnez r5,2024 <_vfprintf_r+0x9cc>
    2020:	b0 8c 00 2a 	beqz r12,20c8 <_vfprintf_r+0xa70>
    2024:	87 a6 ff ff 	add3 r7,r6,#-1
    2028:	b0 87 00 13 	beqz r7,2074 <_vfprintf_r+0xa1c>
    202c:	8b af 04 a0 	add3 r11,sp,#1184
    2030:	46 fe f0 00 	addi r6,#-2 || nop
    2034:	b0 86 00 1d 	beqz r6,20a8 <_vfprintf_r+0xa50>
    2038:	66 07 06 c5 	ldi r6,#7 -> and r6,r5
    203c:	4b ff f0 00 	addi r11,#-1 || nop
    2040:	46 30 26 0b 	addi r6,#48 -> stb r6,@r11
    2044:	55 03 f0 00 	srli r5,#0x3 || nop
    2048:	b0 95 ff fc 	bnez r5,2038 <_vfprintf_r+0x9e0>
    204c:	65 01 f0 00 	ldi r5,#1 || nop
    2050:	05 cd f0 00 	and r5,fp || nop
    2054:	17 8b f0 00 	mv r7,r11 || nop
    2058:	b0 85 00 25 	beqz r5,20ec <_vfprintf_r+0xa94>
    205c:	46 d0 f0 00 	addi r6,#-48 || nop
    2060:	b0 86 00 23 	beqz r6,20ec <_vfprintf_r+0xa94>
    2064:	65 30 f0 00 	ldi r5,#48 || nop
    2068:	a5 07 ff ff 	stb r5,@(-1,r7)
    206c:	4b ff f0 00 	addi r11,#-1 || nop
    2070:	7f 1f f0 00 	bra 20ec <_vfprintf_r+0xa94> || nop
    2074:	66 09 f0 00 	ldi r6,#9 || nop
    2078:	06 55 7c 03 	cmpu r6,r5 -> bc 2084 <_vfprintf_r+0xa2c>
    207c:	45 30 f0 00 	addi r5,#48 || nop
    2080:	7f 17 f0 00 	bra 20dc <_vfprintf_r+0xa84> || nop
    2084:	8b af 04 a0 	add3 r11,sp,#1184
    2088:	66 0a f0 00 	ldi r6,#10 || nop
    208c:	17 85 f0 00 	mv r7,r5 || nop
    2090:	97 36 00 00 	remu r7,r6
    2094:	95 16 00 00 	divu r5,r6
    2098:	4b ff f0 00 	addi r11,#-1 || nop
    209c:	47 30 27 0b 	addi r7,#48 -> stb r7,@r11
    20a0:	b0 95 ff fb 	bnez r5,208c <_vfprintf_r+0xa34>
    20a4:	7f 12 f0 00 	bra 20ec <_vfprintf_r+0xa94> || nop
    20a8:	a7 cf 05 08 	ld r7,@(1288,sp)
    20ac:	66 0f 06 c5 	ldi r6,#15 -> and r6,r5
    20b0:	06 a7 26 86 	add r6,r7 -> ldb r6,@r6
    20b4:	4b ff f0 00 	addi r11,#-1 || nop
    20b8:	55 04 f0 00 	srli r5,#0x4 || nop
    20bc:	26 0b f0 00 	stb r6,@r11 || nop
    20c0:	b0 95 ff fa 	bnez r5,20a8 <_vfprintf_r+0xa50>
    20c4:	7f 0a f0 00 	bra 20ec <_vfprintf_r+0xa94> || nop
    20c8:	b0 96 00 08 	bnez r6,20e8 <_vfprintf_r+0xa90>
    20cc:	65 01 f0 00 	ldi r5,#1 || nop
    20d0:	05 cd f0 00 	and r5,fp || nop
    20d4:	b0 85 00 05 	beqz r5,20e8 <_vfprintf_r+0xa90>
    20d8:	65 30 f0 00 	ldi r5,#48 || nop
    20dc:	a5 0f 04 9f 	stb r5,@(1183,sp)
    20e0:	8b af 04 9f 	add3 r11,sp,#1183
    20e4:	7f 02 f0 00 	bra 20ec <_vfprintf_r+0xa94> || nop
    20e8:	8b af 04 a0 	add3 r11,sp,#1184
    20ec:	a5 cf 04 cc 	ld r5,@(1228,sp)
    20f0:	16 8c 05 2b 	mv r6,r12 -> sub r5,r11
    20f4:	7f 0e f0 00 	bra 212c <_vfprintf_r+0xad4> || nop
    20f8:	a4 cf 04 d4 	ld r4,@(1236,sp)
    20fc:	b0 84 02 f8 	beqz r4,2cdc <_vfprintf_r+0x1684>
    2100:	a4 0f 04 78 	stb r4,@(1144,sp)
    2104:	65 00 f0 00 	ldi r5,#0 || nop
    2108:	a5 0f 04 ca 	stb r5,@(1226,sp)
    210c:	8b af 04 78 	add3 r11,sp,#1144
    2110:	65 01 f0 00 	ldi r5,#1 || nop
    2114:	66 00 f0 00 	ldi r6,#0 || nop
    2118:	6c 00 f0 00 	ldi r12,#0 || nop
    211c:	7f 05 f0 00 	bra 2130 <_vfprintf_r+0xad8> || nop
    2120:	66 00 7f 04 	ldi r6,#0 -> bra 2130 <_vfprintf_r+0xad8>
    2124:	15 8c f0 00 	mv r5,r12 || nop
    2128:	66 00 f0 00 	ldi r6,#0 || nop
    212c:	6c 00 f0 00 	ldi r12,#0 || nop
    2130:	a5 4f 04 e0 	st r5,@(1248,sp)
    2134:	05 46 7d 02 	cmp r5,r6 -> bnc 213c <_vfprintf_r+0xae4>
    2138:	a6 4f 04 e0 	st r6,@(1248,sp)
    213c:	a7 8f 04 ca 	ldb r7,@(1226,sp)
    2140:	b0 87 00 04 	beqz r7,2150 <_vfprintf_r+0xaf8>
    2144:	a7 cf 04 e0 	ld r7,@(1248,sp)
    2148:	47 01 f0 00 	addi r7,#1 || nop
    214c:	a7 4f 04 e0 	st r7,@(1248,sp)
    2150:	64 02 04 cd 	ldi r4,#2 -> and r4,fp
    2154:	a4 4f 04 f4 	st r4,@(1268,sp)
    2158:	b0 84 00 04 	beqz r4,2168 <_vfprintf_r+0xb10>
    215c:	a7 cf 04 e0 	ld r7,@(1248,sp)
    2160:	47 02 f0 00 	addi r7,#2 || nop
    2164:	a7 4f 04 e0 	st r7,@(1248,sp)
    2168:	84 cd 00 84 	and3 r4,fp,#0x84
    216c:	a4 4f 04 fc 	st r4,@(1276,sp)
    2170:	b0 94 00 38 	bnez r4,2250 <_vfprintf_r+0xbf8>
    2174:	a7 cf 04 e8 	ld r7,@(1256,sp)
    2178:	a4 cf 04 e0 	ld r4,@(1248,sp)
    217c:	07 24 f0 00 	sub r7,r4 || nop
    2180:	b0 d7 00 1b 	bgtz r7,21ec <_vfprintf_r+0xb94>
    2184:	7f 33 f0 00 	bra 2250 <_vfprintf_r+0xbf8> || nop
    2188:	a0 48 00 04 	st r0,@(4,r8)
    218c:	23 48 4e 10 	st r3,@r8 -> addi lr,#16
    2190:	ae 4f 04 a8 	st lr,@(1192,sp)
    2194:	42 01 f0 00 	addi r2,#1 || nop
    2198:	a2 4f 04 a4 	st r2,@(1188,sp)
    219c:	6e 07 0e 42 	ldi lr,#7 -> cmp lr,r2
    21a0:	7c 03 f0 00 	bc 21ac <_vfprintf_r+0xb54> || nop
    21a4:	48 08 f0 00 	addi r8,#8 || nop
    21a8:	7f 0f f0 00 	bra 21e4 <_vfprintf_r+0xb8c> || nop
    21ac:	a0 cf 04 d0 	ld r0,@(1232,sp)
    21b0:	82 af 04 a0 	add3 r2,sp,#1184
    21b4:	a3 4f 05 10 	st r3,@(1296,sp)
    21b8:	a5 4f 05 1c 	st r5,@(1308,sp)
    21bc:	a6 4f 05 18 	st r6,@(1304,sp)
    21c0:	a7 4f 05 14 	st r7,@(1300,sp)
    21c4:	11 89 f0 00 	mv r1,r9 || nop
    21c8:	fe 00 10 08 	bl 61e8 <__sprint_r>
    21cc:	a3 cf 05 10 	ld r3,@(1296,sp)
    21d0:	a5 cf 05 1c 	ld r5,@(1308,sp)
    21d4:	a6 cf 05 18 	ld r6,@(1304,sp)
    21d8:	a7 cf 05 14 	ld r7,@(1300,sp)
    21dc:	b0 90 02 c6 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    21e0:	88 af 00 10 	add3 r8,sp,#16
    21e4:	47 f0 f0 00 	addi r7,#-16 || nop
    21e8:	7f 02 f0 00 	bra 21f0 <_vfprintf_r+0xb98> || nop
    21ec:	e3 00 91 e8 	ld24 r3,91e8 <blanks.4005>
    21f0:	ae cf 04 a8 	ld lr,@(1192,sp)
    21f4:	60 10 f0 00 	ldi r0,#16 || nop
    21f8:	a2 cf 04 a4 	ld r2,@(1188,sp)
    21fc:	00 47 7c e3 	cmp r0,r7 -> bc 2188 <_vfprintf_r+0xb30>
    2200:	e3 00 91 e8 	ld24 r3,91e8 <blanks.4005>
    2204:	a7 48 00 04 	st r7,@(4,r8)
    2208:	23 48 07 ae 	st r3,@r8 -> add r7,lr
    220c:	a7 4f 04 a8 	st r7,@(1192,sp)
    2210:	87 a2 00 01 	add3 r7,r2,#1
    2214:	a7 4f 04 a4 	st r7,@(1188,sp)
    2218:	62 07 02 47 	ldi r2,#7 -> cmp r2,r7
    221c:	7c 03 f0 00 	bc 2228 <_vfprintf_r+0xbd0> || nop
    2220:	48 08 f0 00 	addi r8,#8 || nop
    2224:	7f 0b f0 00 	bra 2250 <_vfprintf_r+0xbf8> || nop
    2228:	a0 cf 04 d0 	ld r0,@(1232,sp)
    222c:	82 af 04 a0 	add3 r2,sp,#1184
    2230:	a5 4f 05 1c 	st r5,@(1308,sp)
    2234:	a6 4f 05 18 	st r6,@(1304,sp)
    2238:	11 89 f0 00 	mv r1,r9 || nop
    223c:	fe 00 0f eb 	bl 61e8 <__sprint_r>
    2240:	a5 cf 05 1c 	ld r5,@(1308,sp)
    2244:	a6 cf 05 18 	ld r6,@(1304,sp)
    2248:	b0 90 02 ab 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    224c:	88 af 00 10 	add3 r8,sp,#16
    2250:	a7 8f 04 ca 	ldb r7,@(1226,sp)
    2254:	b0 87 00 17 	beqz r7,22b0 <_vfprintf_r+0xc58>
    2258:	87 af 04 ca 	add3 r7,sp,#1226
    225c:	27 48 67 01 	st r7,@r8 -> ldi r7,#1
    2260:	a7 48 00 04 	st r7,@(4,r8)
    2264:	a7 cf 04 a8 	ld r7,@(1192,sp)
    2268:	62 07 47 01 	ldi r2,#7 -> addi r7,#1
    226c:	a7 4f 04 a8 	st r7,@(1192,sp)
    2270:	a7 cf 04 a4 	ld r7,@(1188,sp)
    2274:	47 01 f0 00 	addi r7,#1 || nop
    2278:	a7 4f 04 a4 	st r7,@(1188,sp)
    227c:	02 47 7c 03 	cmp r2,r7 -> bc 2288 <_vfprintf_r+0xc30>
    2280:	48 08 f0 00 	addi r8,#8 || nop
    2284:	7f 0b f0 00 	bra 22b0 <_vfprintf_r+0xc58> || nop
    2288:	a0 cf 04 d0 	ld r0,@(1232,sp)
    228c:	82 af 04 a0 	add3 r2,sp,#1184
    2290:	a5 4f 05 1c 	st r5,@(1308,sp)
    2294:	a6 4f 05 18 	st r6,@(1304,sp)
    2298:	11 89 f0 00 	mv r1,r9 || nop
    229c:	fe 00 0f d3 	bl 61e8 <__sprint_r>
    22a0:	a5 cf 05 1c 	ld r5,@(1308,sp)
    22a4:	a6 cf 05 18 	ld r6,@(1304,sp)
    22a8:	b0 90 02 93 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    22ac:	88 af 00 10 	add3 r8,sp,#16
    22b0:	a7 cf 04 f4 	ld r7,@(1268,sp)
    22b4:	b0 87 00 17 	beqz r7,2310 <_vfprintf_r+0xcb8>
    22b8:	87 af 04 c8 	add3 r7,sp,#1224
    22bc:	27 48 67 02 	st r7,@r8 -> ldi r7,#2
    22c0:	a7 48 00 04 	st r7,@(4,r8)
    22c4:	a7 cf 04 a8 	ld r7,@(1192,sp)
    22c8:	62 07 47 02 	ldi r2,#7 -> addi r7,#2
    22cc:	a7 4f 04 a8 	st r7,@(1192,sp)
    22d0:	a7 cf 04 a4 	ld r7,@(1188,sp)
    22d4:	47 01 f0 00 	addi r7,#1 || nop
    22d8:	a7 4f 04 a4 	st r7,@(1188,sp)
    22dc:	02 47 7c 03 	cmp r2,r7 -> bc 22e8 <_vfprintf_r+0xc90>
    22e0:	48 08 f0 00 	addi r8,#8 || nop
    22e4:	7f 0b f0 00 	bra 2310 <_vfprintf_r+0xcb8> || nop
    22e8:	a0 cf 04 d0 	ld r0,@(1232,sp)
    22ec:	82 af 04 a0 	add3 r2,sp,#1184
    22f0:	a5 4f 05 1c 	st r5,@(1308,sp)
    22f4:	a6 4f 05 18 	st r6,@(1304,sp)
    22f8:	11 89 f0 00 	mv r1,r9 || nop
    22fc:	fe 00 0f bb 	bl 61e8 <__sprint_r>
    2300:	a5 cf 05 1c 	ld r5,@(1308,sp)
    2304:	a6 cf 05 18 	ld r6,@(1304,sp)
    2308:	b0 90 02 7b 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    230c:	88 af 00 10 	add3 r8,sp,#16
    2310:	a7 cf 04 fc 	ld r7,@(1276,sp)
    2314:	47 80 f0 00 	addi r7,#-128 || nop
    2318:	b0 97 00 39 	bnez r7,23fc <_vfprintf_r+0xda4>
    231c:	a4 cf 04 e8 	ld r4,@(1256,sp)
    2320:	a7 cf 04 e0 	ld r7,@(1248,sp)
    2324:	04 27 f0 00 	sub r4,r7 || nop
    2328:	b0 d4 00 1b 	bgtz r4,2394 <_vfprintf_r+0xd3c>
    232c:	7f 34 f0 00 	bra 23fc <_vfprintf_r+0xda4> || nop
    2330:	ae 48 00 04 	st lr,@(4,r8)
    2334:	27 48 43 10 	st r7,@r8 -> addi r3,#16
    2338:	a3 4f 04 a8 	st r3,@(1192,sp)
    233c:	42 01 f0 00 	addi r2,#1 || nop
    2340:	a2 4f 04 a4 	st r2,@(1188,sp)
    2344:	63 07 03 42 	ldi r3,#7 -> cmp r3,r2
    2348:	7c 03 f0 00 	bc 2354 <_vfprintf_r+0xcfc> || nop
    234c:	48 08 f0 00 	addi r8,#8 || nop
    2350:	7f 0f f0 00 	bra 238c <_vfprintf_r+0xd34> || nop
    2354:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2358:	82 af 04 a0 	add3 r2,sp,#1184
    235c:	a4 4f 05 10 	st r4,@(1296,sp)
    2360:	a5 4f 05 1c 	st r5,@(1308,sp)
    2364:	a6 4f 05 18 	st r6,@(1304,sp)
    2368:	a7 4f 05 14 	st r7,@(1300,sp)
    236c:	11 89 f0 00 	mv r1,r9 || nop
    2370:	fe 00 0f 9e 	bl 61e8 <__sprint_r>
    2374:	a4 cf 05 10 	ld r4,@(1296,sp)
    2378:	a5 cf 05 1c 	ld r5,@(1308,sp)
    237c:	a6 cf 05 18 	ld r6,@(1304,sp)
    2380:	a7 cf 05 14 	ld r7,@(1300,sp)
    2384:	b0 90 02 5c 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2388:	88 af 00 10 	add3 r8,sp,#16
    238c:	44 f0 f0 00 	addi r4,#-16 || nop
    2390:	7f 02 f0 00 	bra 2398 <_vfprintf_r+0xd40> || nop
    2394:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    2398:	a3 cf 04 a8 	ld r3,@(1192,sp)
    239c:	6e 10 f0 00 	ldi lr,#16 || nop
    23a0:	a2 cf 04 a4 	ld r2,@(1188,sp)
    23a4:	0e 44 7c e3 	cmp lr,r4 -> bc 2330 <_vfprintf_r+0xcd8>
    23a8:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    23ac:	a4 48 00 04 	st r4,@(4,r8)
    23b0:	27 48 f0 00 	st r7,@r8 || nop
    23b4:	87 a2 00 01 	add3 r7,r2,#1
    23b8:	a7 4f 04 a4 	st r7,@(1188,sp)
    23bc:	04 a3 f0 00 	add r4,r3 || nop
    23c0:	a4 4f 04 a8 	st r4,@(1192,sp)
    23c4:	62 07 02 47 	ldi r2,#7 -> cmp r2,r7
    23c8:	7c 03 f0 00 	bc 23d4 <_vfprintf_r+0xd7c> || nop
    23cc:	48 08 f0 00 	addi r8,#8 || nop
    23d0:	7f 0b f0 00 	bra 23fc <_vfprintf_r+0xda4> || nop
    23d4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    23d8:	82 af 04 a0 	add3 r2,sp,#1184
    23dc:	a5 4f 05 1c 	st r5,@(1308,sp)
    23e0:	a6 4f 05 18 	st r6,@(1304,sp)
    23e4:	11 89 f0 00 	mv r1,r9 || nop
    23e8:	fe 00 0f 80 	bl 61e8 <__sprint_r>
    23ec:	a5 cf 05 1c 	ld r5,@(1308,sp)
    23f0:	a6 cf 05 18 	ld r6,@(1304,sp)
    23f4:	b0 90 02 40 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    23f8:	88 af 00 10 	add3 r8,sp,#16
    23fc:	14 86 04 25 	mv r4,r6 -> sub r4,r5
    2400:	b0 d4 00 19 	bgtz r4,2464 <_vfprintf_r+0xe0c>
    2404:	7f 2f f0 00 	bra 24c0 <_vfprintf_r+0xe68> || nop
    2408:	a3 48 00 04 	st r3,@(4,r8)
    240c:	27 48 42 10 	st r7,@r8 -> addi r2,#16
    2410:	a2 4f 04 a8 	st r2,@(1192,sp)
    2414:	46 01 f0 00 	addi r6,#1 || nop
    2418:	a6 4f 04 a4 	st r6,@(1188,sp)
    241c:	62 07 02 46 	ldi r2,#7 -> cmp r2,r6
    2420:	7c 03 f0 00 	bc 242c <_vfprintf_r+0xdd4> || nop
    2424:	48 08 f0 00 	addi r8,#8 || nop
    2428:	7f 0d f0 00 	bra 245c <_vfprintf_r+0xe04> || nop
    242c:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2430:	82 af 04 a0 	add3 r2,sp,#1184
    2434:	a4 4f 05 10 	st r4,@(1296,sp)
    2438:	a5 4f 05 1c 	st r5,@(1308,sp)
    243c:	a7 4f 05 14 	st r7,@(1300,sp)
    2440:	11 89 f0 00 	mv r1,r9 || nop
    2444:	fe 00 0f 69 	bl 61e8 <__sprint_r>
    2448:	a4 cf 05 10 	ld r4,@(1296,sp)
    244c:	a5 cf 05 1c 	ld r5,@(1308,sp)
    2450:	a7 cf 05 14 	ld r7,@(1300,sp)
    2454:	b0 90 02 28 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2458:	88 af 00 10 	add3 r8,sp,#16
    245c:	44 f0 f0 00 	addi r4,#-16 || nop
    2460:	7f 02 f0 00 	bra 2468 <_vfprintf_r+0xe10> || nop
    2464:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    2468:	a2 cf 04 a8 	ld r2,@(1192,sp)
    246c:	63 10 f0 00 	ldi r3,#16 || nop
    2470:	a6 cf 04 a4 	ld r6,@(1188,sp)
    2474:	03 44 7c e5 	cmp r3,r4 -> bc 2408 <_vfprintf_r+0xdb0>
    2478:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    247c:	a4 48 00 04 	st r4,@(4,r8)
    2480:	27 48 46 01 	st r7,@r8 -> addi r6,#1
    2484:	a6 4f 04 a4 	st r6,@(1188,sp)
    2488:	04 a2 f0 00 	add r4,r2 || nop
    248c:	a4 4f 04 a8 	st r4,@(1192,sp)
    2490:	67 07 07 46 	ldi r7,#7 -> cmp r7,r6
    2494:	7c 03 f0 00 	bc 24a0 <_vfprintf_r+0xe48> || nop
    2498:	48 08 f0 00 	addi r8,#8 || nop
    249c:	7f 09 f0 00 	bra 24c0 <_vfprintf_r+0xe68> || nop
    24a0:	a0 cf 04 d0 	ld r0,@(1232,sp)
    24a4:	82 af 04 a0 	add3 r2,sp,#1184
    24a8:	a5 4f 05 1c 	st r5,@(1308,sp)
    24ac:	11 89 f0 00 	mv r1,r9 || nop
    24b0:	fe 00 0f 4e 	bl 61e8 <__sprint_r>
    24b4:	a5 cf 05 1c 	ld r5,@(1308,sp)
    24b8:	b0 90 02 0f 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    24bc:	88 af 00 10 	add3 r8,sp,#16
    24c0:	86 cd 01 00 	and3 r6,fp,#0x100
    24c4:	b0 96 00 0c 	bnez r6,24f4 <_vfprintf_r+0xe9c>
    24c8:	a4 cf 04 a8 	ld r4,@(1192,sp)
    24cc:	a5 48 00 04 	st r5,@(4,r8)
    24d0:	2b 48 04 a5 	st r11,@r8 -> add r4,r5
    24d4:	ff 00 00 b3 	bra 27a0 <_vfprintf_r+0x1148>
    24d8:	a0 cf 04 d0 	ld r0,@(1232,sp)
    24dc:	82 af 04 a0 	add3 r2,sp,#1184
    24e0:	11 89 f0 00 	mv r1,r9 || nop
    24e4:	fe 00 0f 41 	bl 61e8 <__sprint_r>
    24e8:	b0 90 02 03 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    24ec:	88 af 00 10 	add3 r8,sp,#16
    24f0:	ff 00 01 bc 	bra 2be0 <_vfprintf_r+0x1588>
    24f4:	a4 cf 04 d4 	ld r4,@(1236,sp)
    24f8:	65 65 05 44 	ldi r5,#101 -> cmp r5,r4
    24fc:	fd 00 01 4b 	bnc 2a28 <_vfprintf_r+0x13d0>
    2500:	a0 cf 04 ec 	ld r0,@(1260,sp)
    2504:	62 00 f0 00 	ldi r2,#0 || nop
    2508:	a1 cf 04 f0 	ld r1,@(1264,sp)
    250c:	63 00 f0 00 	ldi r3,#0 || nop
    2510:	fe 00 18 ac 	bl 87c0 <__eqdf2>
    2514:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2518:	b0 90 00 45 	bnez r0,262c <_vfprintf_r+0xfd4>
    251c:	e5 00 90 80 	ld24 r5,9080 <_global_impure_ptr+0x40>
    2520:	25 48 65 01 	st r5,@r8 -> ldi r5,#1
    2524:	a5 48 00 04 	st r5,@(4,r8)
    2528:	44 01 f0 00 	addi r4,#1 || nop
    252c:	a4 4f 04 a8 	st r4,@(1192,sp)
    2530:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2534:	65 07 44 01 	ldi r5,#7 -> addi r4,#1
    2538:	a4 4f 04 a4 	st r4,@(1188,sp)
    253c:	05 44 7c 03 	cmp r5,r4 -> bc 2548 <_vfprintf_r+0xef0>
    2540:	48 08 f0 00 	addi r8,#8 || nop
    2544:	7f 07 f0 00 	bra 2560 <_vfprintf_r+0xf08> || nop
    2548:	a0 cf 04 d0 	ld r0,@(1232,sp)
    254c:	82 af 04 a0 	add3 r2,sp,#1184
    2550:	11 89 f0 00 	mv r1,r9 || nop
    2554:	fe 00 0f 25 	bl 61e8 <__sprint_r>
    2558:	b0 90 01 e7 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    255c:	88 af 00 10 	add3 r8,sp,#16
    2560:	a4 cf 04 c4 	ld r4,@(1220,sp)
    2564:	a5 cf 04 d8 	ld r5,@(1240,sp)
    2568:	04 45 7c 03 	cmp r4,r5 -> bc 2574 <_vfprintf_r+0xf1c>
    256c:	64 01 04 cd 	ldi r4,#1 -> and r4,fp
    2570:	b0 84 01 9c 	beqz r4,2be0 <_vfprintf_r+0x1588>
    2574:	a7 cf 04 f8 	ld r7,@(1272,sp)
    2578:	65 07 f0 00 	ldi r5,#7 || nop
    257c:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2580:	a7 48 00 04 	st r7,@(4,r8)
    2584:	a6 cf 05 00 	ld r6,@(1280,sp)
    2588:	04 a7 26 48 	add r4,r7 -> st r6,@r8
    258c:	a4 4f 04 a8 	st r4,@(1192,sp)
    2590:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2594:	44 01 f0 00 	addi r4,#1 || nop
    2598:	a4 4f 04 a4 	st r4,@(1188,sp)
    259c:	05 44 7c 03 	cmp r5,r4 -> bc 25a8 <_vfprintf_r+0xf50>
    25a0:	48 08 f0 00 	addi r8,#8 || nop
    25a4:	7f 07 f0 00 	bra 25c0 <_vfprintf_r+0xf68> || nop
    25a8:	a0 cf 04 d0 	ld r0,@(1232,sp)
    25ac:	82 af 04 a0 	add3 r2,sp,#1184
    25b0:	11 89 f0 00 	mv r1,r9 || nop
    25b4:	fe 00 0f 0d 	bl 61e8 <__sprint_r>
    25b8:	b0 90 01 cf 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    25bc:	88 af 00 10 	add3 r8,sp,#16
    25c0:	ab cf 04 d8 	ld r11,@(1240,sp)
    25c4:	4b ff f0 00 	addi r11,#-1 || nop
    25c8:	b0 db 00 13 	bgtz r11,2614 <_vfprintf_r+0xfbc>
    25cc:	ff 00 01 85 	bra 2be0 <_vfprintf_r+0x1588>
    25d0:	a6 48 00 04 	st r6,@(4,r8)
    25d4:	2c 48 45 10 	st r12,@r8 -> addi r5,#16
    25d8:	a5 4f 04 a8 	st r5,@(1192,sp)
    25dc:	44 01 f0 00 	addi r4,#1 || nop
    25e0:	a4 4f 04 a4 	st r4,@(1188,sp)
    25e4:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    25e8:	7c 03 f0 00 	bc 25f4 <_vfprintf_r+0xf9c> || nop
    25ec:	48 08 f0 00 	addi r8,#8 || nop
    25f0:	7f 07 f0 00 	bra 260c <_vfprintf_r+0xfb4> || nop
    25f4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    25f8:	82 af 04 a0 	add3 r2,sp,#1184
    25fc:	11 89 f0 00 	mv r1,r9 || nop
    2600:	fe 00 0e fa 	bl 61e8 <__sprint_r>
    2604:	b0 90 01 bc 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2608:	88 af 00 10 	add3 r8,sp,#16
    260c:	4b f0 f0 00 	addi r11,#-16 || nop
    2610:	7f 02 f0 00 	bra 2618 <_vfprintf_r+0xfc0> || nop
    2614:	ec 00 91 f8 	ld24 r12,91f8 <zeroes.4006>
    2618:	a5 cf 04 a8 	ld r5,@(1192,sp)
    261c:	66 10 f0 00 	ldi r6,#16 || nop
    2620:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2624:	06 4b 7c eb 	cmp r6,r11 -> bc 25d0 <_vfprintf_r+0xf78>
    2628:	ff 00 00 f7 	bra 2a04 <_vfprintf_r+0x13ac>
    262c:	a5 cf 04 c4 	ld r5,@(1220,sp)
    2630:	b0 d5 00 5f 	bgtz r5,27ac <_vfprintf_r+0x1154>
    2634:	e5 00 90 80 	ld24 r5,9080 <_global_impure_ptr+0x40>
    2638:	25 48 65 01 	st r5,@r8 -> ldi r5,#1
    263c:	a5 48 00 04 	st r5,@(4,r8)
    2640:	44 01 f0 00 	addi r4,#1 || nop
    2644:	a4 4f 04 a8 	st r4,@(1192,sp)
    2648:	a4 cf 04 a4 	ld r4,@(1188,sp)
    264c:	65 07 44 01 	ldi r5,#7 -> addi r4,#1
    2650:	a4 4f 04 a4 	st r4,@(1188,sp)
    2654:	05 44 7c 03 	cmp r5,r4 -> bc 2660 <_vfprintf_r+0x1008>
    2658:	48 08 f0 00 	addi r8,#8 || nop
    265c:	7f 07 f0 00 	bra 2678 <_vfprintf_r+0x1020> || nop
    2660:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2664:	82 af 04 a0 	add3 r2,sp,#1184
    2668:	11 89 f0 00 	mv r1,r9 || nop
    266c:	fe 00 0e df 	bl 61e8 <__sprint_r>
    2670:	b0 90 01 a1 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2674:	88 af 00 10 	add3 r8,sp,#16
    2678:	a4 cf 04 c4 	ld r4,@(1220,sp)
    267c:	b0 94 00 05 	bnez r4,2690 <_vfprintf_r+0x1038>
    2680:	a4 cf 04 d8 	ld r4,@(1240,sp)
    2684:	b0 94 00 03 	bnez r4,2690 <_vfprintf_r+0x1038>
    2688:	64 01 04 cd 	ldi r4,#1 -> and r4,fp
    268c:	b0 84 01 55 	beqz r4,2be0 <_vfprintf_r+0x1588>
    2690:	a5 cf 05 00 	ld r5,@(1280,sp)
    2694:	a6 cf 04 f8 	ld r6,@(1272,sp)
    2698:	25 48 f0 00 	st r5,@r8 || nop
    269c:	a4 cf 04 a8 	ld r4,@(1192,sp)
    26a0:	a6 48 00 04 	st r6,@(4,r8)
    26a4:	65 07 04 a6 	ldi r5,#7 -> add r4,r6
    26a8:	a4 4f 04 a8 	st r4,@(1192,sp)
    26ac:	a4 cf 04 a4 	ld r4,@(1188,sp)
    26b0:	44 01 f0 00 	addi r4,#1 || nop
    26b4:	a4 4f 04 a4 	st r4,@(1188,sp)
    26b8:	05 44 7c 03 	cmp r5,r4 -> bc 26c4 <_vfprintf_r+0x106c>
    26bc:	48 08 f0 00 	addi r8,#8 || nop
    26c0:	7f 07 f0 00 	bra 26dc <_vfprintf_r+0x1084> || nop
    26c4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    26c8:	82 af 04 a0 	add3 r2,sp,#1184
    26cc:	11 89 f0 00 	mv r1,r9 || nop
    26d0:	fe 00 0e c6 	bl 61e8 <__sprint_r>
    26d4:	b0 90 01 88 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    26d8:	88 af 00 10 	add3 r8,sp,#16
    26dc:	ac cf 04 c4 	ld r12,@(1220,sp)
    26e0:	0c 3c f0 00 	neg r12,r12 || nop
    26e4:	b0 dc 00 15 	bgtz r12,2738 <_vfprintf_r+0x10e0>
    26e8:	7f 29 f0 00 	bra 278c <_vfprintf_r+0x1134> || nop
    26ec:	a6 48 00 04 	st r6,@(4,r8)
    26f0:	27 48 45 10 	st r7,@r8 -> addi r5,#16
    26f4:	a5 4f 04 a8 	st r5,@(1192,sp)
    26f8:	44 01 f0 00 	addi r4,#1 || nop
    26fc:	a4 4f 04 a4 	st r4,@(1188,sp)
    2700:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2704:	7c 03 f0 00 	bc 2710 <_vfprintf_r+0x10b8> || nop
    2708:	48 08 f0 00 	addi r8,#8 || nop
    270c:	7f 09 f0 00 	bra 2730 <_vfprintf_r+0x10d8> || nop
    2710:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2714:	82 af 04 a0 	add3 r2,sp,#1184
    2718:	a7 4f 05 14 	st r7,@(1300,sp)
    271c:	11 89 f0 00 	mv r1,r9 || nop
    2720:	fe 00 0e b2 	bl 61e8 <__sprint_r>
    2724:	a7 cf 05 14 	ld r7,@(1300,sp)
    2728:	b0 90 01 73 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    272c:	88 af 00 10 	add3 r8,sp,#16
    2730:	4c f0 f0 00 	addi r12,#-16 || nop
    2734:	7f 02 f0 00 	bra 273c <_vfprintf_r+0x10e4> || nop
    2738:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    273c:	a5 cf 04 a8 	ld r5,@(1192,sp)
    2740:	66 10 f0 00 	ldi r6,#16 || nop
    2744:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2748:	06 4c 7c e9 	cmp r6,r12 -> bc 26ec <_vfprintf_r+0x1094>
    274c:	e6 00 91 f8 	ld24 r6,91f8 <zeroes.4006>
    2750:	ac 48 00 04 	st r12,@(4,r8)
    2754:	26 48 0c a5 	st r6,@r8 -> add r12,r5
    2758:	ac 4f 04 a8 	st r12,@(1192,sp)
    275c:	44 01 f0 00 	addi r4,#1 || nop
    2760:	a4 4f 04 a4 	st r4,@(1188,sp)
    2764:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2768:	7c 03 f0 00 	bc 2774 <_vfprintf_r+0x111c> || nop
    276c:	48 08 f0 00 	addi r8,#8 || nop
    2770:	7f 07 f0 00 	bra 278c <_vfprintf_r+0x1134> || nop
    2774:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2778:	82 af 04 a0 	add3 r2,sp,#1184
    277c:	11 89 f0 00 	mv r1,r9 || nop
    2780:	fe 00 0e 9a 	bl 61e8 <__sprint_r>
    2784:	b0 90 01 5c 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2788:	88 af 00 10 	add3 r8,sp,#16
    278c:	a7 cf 04 d8 	ld r7,@(1240,sp)
    2790:	2b 48 f0 00 	st r11,@r8 || nop
    2794:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2798:	a7 48 00 04 	st r7,@(4,r8)
    279c:	04 a7 f0 00 	add r4,r7 || nop
    27a0:	a4 4f 04 a8 	st r4,@(1192,sp)
    27a4:	a4 cf 04 a4 	ld r4,@(1188,sp)
    27a8:	ff 00 00 9b 	bra 2a14 <_vfprintf_r+0x13bc>
    27ac:	a4 cf 04 d8 	ld r4,@(1240,sp)
    27b0:	04 ab f0 00 	add r4,r11 || nop
    27b4:	a4 4f 04 d4 	st r4,@(1236,sp)
    27b8:	04 2b 0c 44 	sub r4,r11 -> cmp r12,r4
    27bc:	7d 01 14 8c 	bnc 27c0 <_vfprintf_r+0x1168> -> mv r4,r12
    27c0:	b0 c4 00 13 	blez r4,280c <_vfprintf_r+0x11b4>
    27c4:	a5 cf 04 a8 	ld r5,@(1192,sp)
    27c8:	a4 48 00 04 	st r4,@(4,r8)
    27cc:	2b 48 05 a4 	st r11,@r8 -> add r5,r4
    27d0:	a5 4f 04 a8 	st r5,@(1192,sp)
    27d4:	a5 cf 04 a4 	ld r5,@(1188,sp)
    27d8:	66 07 45 01 	ldi r6,#7 -> addi r5,#1
    27dc:	a5 4f 04 a4 	st r5,@(1188,sp)
    27e0:	06 45 7c 03 	cmp r6,r5 -> bc 27ec <_vfprintf_r+0x1194>
    27e4:	48 08 f0 00 	addi r8,#8 || nop
    27e8:	7f 09 f0 00 	bra 280c <_vfprintf_r+0x11b4> || nop
    27ec:	a0 cf 04 d0 	ld r0,@(1232,sp)
    27f0:	82 af 04 a0 	add3 r2,sp,#1184
    27f4:	a4 4f 05 10 	st r4,@(1296,sp)
    27f8:	11 89 f0 00 	mv r1,r9 || nop
    27fc:	fe 00 0e 7b 	bl 61e8 <__sprint_r>
    2800:	a4 cf 05 10 	ld r4,@(1296,sp)
    2804:	b0 90 01 3c 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2808:	88 af 00 10 	add3 r8,sp,#16
    280c:	b0 b4 00 02 	bgez r4,2814 <_vfprintf_r+0x11bc>
    2810:	64 00 f0 00 	ldi r4,#0 || nop
    2814:	15 8c 05 24 	mv r5,r12 -> sub r5,r4
    2818:	14 85 f0 00 	mv r4,r5 || nop
    281c:	b0 d5 00 17 	bgtz r5,2878 <_vfprintf_r+0x1220>
    2820:	7f 2b f0 00 	bra 28cc <_vfprintf_r+0x1274> || nop
    2824:	a2 48 00 04 	st r2,@(4,r8)
    2828:	27 48 46 10 	st r7,@r8 -> addi r6,#16
    282c:	a6 4f 04 a8 	st r6,@(1192,sp)
    2830:	45 01 f0 00 	addi r5,#1 || nop
    2834:	a5 4f 04 a4 	st r5,@(1188,sp)
    2838:	66 07 06 45 	ldi r6,#7 -> cmp r6,r5
    283c:	7c 03 f0 00 	bc 2848 <_vfprintf_r+0x11f0> || nop
    2840:	48 08 f0 00 	addi r8,#8 || nop
    2844:	7f 0b f0 00 	bra 2870 <_vfprintf_r+0x1218> || nop
    2848:	a0 cf 04 d0 	ld r0,@(1232,sp)
    284c:	82 af 04 a0 	add3 r2,sp,#1184
    2850:	a4 4f 05 10 	st r4,@(1296,sp)
    2854:	a7 4f 05 14 	st r7,@(1300,sp)
    2858:	11 89 f0 00 	mv r1,r9 || nop
    285c:	fe 00 0e 63 	bl 61e8 <__sprint_r>
    2860:	a4 cf 05 10 	ld r4,@(1296,sp)
    2864:	a7 cf 05 14 	ld r7,@(1300,sp)
    2868:	b0 90 01 23 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    286c:	88 af 00 10 	add3 r8,sp,#16
    2870:	44 f0 f0 00 	addi r4,#-16 || nop
    2874:	7f 02 f0 00 	bra 287c <_vfprintf_r+0x1224> || nop
    2878:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    287c:	a6 cf 04 a8 	ld r6,@(1192,sp)
    2880:	62 10 f0 00 	ldi r2,#16 || nop
    2884:	a5 cf 04 a4 	ld r5,@(1188,sp)
    2888:	02 44 7c e7 	cmp r2,r4 -> bc 2824 <_vfprintf_r+0x11cc>
    288c:	e7 00 91 f8 	ld24 r7,91f8 <zeroes.4006>
    2890:	a4 48 00 04 	st r4,@(4,r8)
    2894:	27 48 04 a6 	st r7,@r8 -> add r4,r6
    2898:	a4 4f 04 a8 	st r4,@(1192,sp)
    289c:	84 a5 00 01 	add3 r4,r5,#1
    28a0:	a4 4f 04 a4 	st r4,@(1188,sp)
    28a4:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    28a8:	7c 03 f0 00 	bc 28b4 <_vfprintf_r+0x125c> || nop
    28ac:	48 08 f0 00 	addi r8,#8 || nop
    28b0:	7f 07 f0 00 	bra 28cc <_vfprintf_r+0x1274> || nop
    28b4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    28b8:	82 af 04 a0 	add3 r2,sp,#1184
    28bc:	11 89 f0 00 	mv r1,r9 || nop
    28c0:	fe 00 0e 4a 	bl 61e8 <__sprint_r>
    28c4:	b0 90 01 0c 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    28c8:	88 af 00 10 	add3 r8,sp,#16
    28cc:	a4 cf 04 c4 	ld r4,@(1220,sp)
    28d0:	0b ac f0 00 	add r11,r12 || nop
    28d4:	a6 cf 04 d8 	ld r6,@(1240,sp)
    28d8:	04 46 7c 03 	cmp r4,r6 -> bc 28e4 <_vfprintf_r+0x128c>
    28dc:	64 01 04 cd 	ldi r4,#1 -> and r4,fp
    28e0:	b0 84 00 14 	beqz r4,2930 <_vfprintf_r+0x12d8>
    28e4:	a4 cf 04 f8 	ld r4,@(1272,sp)
    28e8:	a5 cf 04 f8 	ld r5,@(1272,sp)
    28ec:	a4 48 00 04 	st r4,@(4,r8)
    28f0:	a7 cf 05 00 	ld r7,@(1280,sp)
    28f4:	a4 cf 04 a8 	ld r4,@(1192,sp)
    28f8:	27 48 04 a5 	st r7,@r8 -> add r4,r5
    28fc:	a4 4f 04 a8 	st r4,@(1192,sp)
    2900:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2904:	65 07 44 01 	ldi r5,#7 -> addi r4,#1
    2908:	a4 4f 04 a4 	st r4,@(1188,sp)
    290c:	05 44 7c 03 	cmp r5,r4 -> bc 2918 <_vfprintf_r+0x12c0>
    2910:	48 08 f0 00 	addi r8,#8 || nop
    2914:	7f 07 f0 00 	bra 2930 <_vfprintf_r+0x12d8> || nop
    2918:	a0 cf 04 d0 	ld r0,@(1232,sp)
    291c:	82 af 04 a0 	add3 r2,sp,#1184
    2920:	11 89 f0 00 	mv r1,r9 || nop
    2924:	fe 00 0e 31 	bl 61e8 <__sprint_r>
    2928:	b0 90 00 f3 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    292c:	88 af 00 10 	add3 r8,sp,#16
    2930:	a4 cf 04 c4 	ld r4,@(1220,sp)
    2934:	a6 cf 04 d8 	ld r6,@(1240,sp)
    2938:	ac cf 04 d4 	ld r12,@(1236,sp)
    293c:	06 24 0c 2b 	sub r6,r4 -> sub r12,r11
    2940:	06 4c 7d 02 	cmp r6,r12 -> bnc 2948 <_vfprintf_r+0x12f0>
    2944:	1c 86 f0 00 	mv r12,r6 || nop
    2948:	b0 cc 00 11 	blez r12,298c <_vfprintf_r+0x1334>
    294c:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2950:	ac 48 00 04 	st r12,@(4,r8)
    2954:	2b 48 04 ac 	st r11,@r8 -> add r4,r12
    2958:	a4 4f 04 a8 	st r4,@(1192,sp)
    295c:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2960:	65 07 44 01 	ldi r5,#7 -> addi r4,#1
    2964:	a4 4f 04 a4 	st r4,@(1188,sp)
    2968:	05 44 7c 03 	cmp r5,r4 -> bc 2974 <_vfprintf_r+0x131c>
    296c:	48 08 f0 00 	addi r8,#8 || nop
    2970:	7f 07 f0 00 	bra 298c <_vfprintf_r+0x1334> || nop
    2974:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2978:	82 af 04 a0 	add3 r2,sp,#1184
    297c:	11 89 f0 00 	mv r1,r9 || nop
    2980:	fe 00 0e 1a 	bl 61e8 <__sprint_r>
    2984:	b0 90 00 dc 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2988:	88 af 00 10 	add3 r8,sp,#16
    298c:	14 8c f0 00 	mv r4,r12 || nop
    2990:	b0 bc 00 02 	bgez r12,2998 <_vfprintf_r+0x1340>
    2994:	64 00 f0 00 	ldi r4,#0 || nop
    2998:	a5 cf 04 c4 	ld r5,@(1220,sp)
    299c:	ab cf 04 d8 	ld r11,@(1240,sp)
    29a0:	0b 25 0b 24 	sub r11,r5 -> sub r11,r4
    29a4:	b0 db 00 13 	bgtz r11,29f0 <_vfprintf_r+0x1398>
    29a8:	ff 00 00 8e 	bra 2be0 <_vfprintf_r+0x1588>
    29ac:	a6 48 00 04 	st r6,@(4,r8)
    29b0:	2c 48 45 10 	st r12,@r8 -> addi r5,#16
    29b4:	a5 4f 04 a8 	st r5,@(1192,sp)
    29b8:	44 01 f0 00 	addi r4,#1 || nop
    29bc:	a4 4f 04 a4 	st r4,@(1188,sp)
    29c0:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    29c4:	7c 03 f0 00 	bc 29d0 <_vfprintf_r+0x1378> || nop
    29c8:	48 08 f0 00 	addi r8,#8 || nop
    29cc:	7f 07 f0 00 	bra 29e8 <_vfprintf_r+0x1390> || nop
    29d0:	a0 cf 04 d0 	ld r0,@(1232,sp)
    29d4:	82 af 04 a0 	add3 r2,sp,#1184
    29d8:	11 89 f0 00 	mv r1,r9 || nop
    29dc:	fe 00 0e 03 	bl 61e8 <__sprint_r>
    29e0:	b0 90 00 c5 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    29e4:	88 af 00 10 	add3 r8,sp,#16
    29e8:	4b f0 f0 00 	addi r11,#-16 || nop
    29ec:	7f 02 f0 00 	bra 29f4 <_vfprintf_r+0x139c> || nop
    29f0:	ec 00 91 f8 	ld24 r12,91f8 <zeroes.4006>
    29f4:	a5 cf 04 a8 	ld r5,@(1192,sp)
    29f8:	66 10 f0 00 	ldi r6,#16 || nop
    29fc:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2a00:	06 4b 7c eb 	cmp r6,r11 -> bc 29ac <_vfprintf_r+0x1354>
    2a04:	e6 00 91 f8 	ld24 r6,91f8 <zeroes.4006>
    2a08:	ab 48 00 04 	st r11,@(4,r8)
    2a0c:	26 48 0b a5 	st r6,@r8 -> add r11,r5
    2a10:	ab 4f 04 a8 	st r11,@(1192,sp)
    2a14:	44 01 f0 00 	addi r4,#1 || nop
    2a18:	a4 4f 04 a4 	st r4,@(1188,sp)
    2a1c:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2a20:	fc ff fe ae 	bc 24d8 <_vfprintf_r+0xe80>
    2a24:	7f 6e f0 00 	bra 2bdc <_vfprintf_r+0x1584> || nop
    2a28:	a7 cf 04 d8 	ld r7,@(1240,sp)
    2a2c:	66 01 f0 00 	ldi r6,#1 || nop
    2a30:	a5 cf 04 a8 	ld r5,@(1192,sp)
    2a34:	06 47 f0 00 	cmp r6,r7 || nop
    2a38:	2b 48 f0 00 	st r11,@r8 || nop
    2a3c:	7c 03 f0 00 	bc 2a48 <_vfprintf_r+0x13f0> || nop
    2a40:	64 01 04 cd 	ldi r4,#1 -> and r4,fp
    2a44:	b0 84 00 59 	beqz r4,2ba8 <_vfprintf_r+0x1550>
    2a48:	64 01 f0 00 	ldi r4,#1 || nop
    2a4c:	a4 48 00 04 	st r4,@(4,r8)
    2a50:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2a54:	45 01 f0 00 	addi r5,#1 || nop
    2a58:	a5 4f 04 a8 	st r5,@(1192,sp)
    2a5c:	44 01 f0 00 	addi r4,#1 || nop
    2a60:	a4 4f 04 a4 	st r4,@(1188,sp)
    2a64:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2a68:	7c 02 48 08 	bc 2a70 <_vfprintf_r+0x1418> -> addi r8,#8
    2a6c:	7f 07 f0 00 	bra 2a88 <_vfprintf_r+0x1430> || nop
    2a70:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2a74:	82 af 04 a0 	add3 r2,sp,#1184
    2a78:	11 89 f0 00 	mv r1,r9 || nop
    2a7c:	fe 00 0d db 	bl 61e8 <__sprint_r>
    2a80:	b0 90 00 9d 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2a84:	88 af 00 10 	add3 r8,sp,#16
    2a88:	a4 cf 05 00 	ld r4,@(1280,sp)
    2a8c:	a5 cf 04 f8 	ld r5,@(1272,sp)
    2a90:	24 48 f0 00 	st r4,@r8 || nop
    2a94:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2a98:	a5 48 00 04 	st r5,@(4,r8)
    2a9c:	04 a5 f0 00 	add r4,r5 || nop
    2aa0:	a4 4f 04 a8 	st r4,@(1192,sp)
    2aa4:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2aa8:	65 07 44 01 	ldi r5,#7 -> addi r4,#1
    2aac:	a4 4f 04 a4 	st r4,@(1188,sp)
    2ab0:	05 44 7c 03 	cmp r5,r4 -> bc 2abc <_vfprintf_r+0x1464>
    2ab4:	48 08 f0 00 	addi r8,#8 || nop
    2ab8:	7f 07 f0 00 	bra 2ad4 <_vfprintf_r+0x147c> || nop
    2abc:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2ac0:	82 af 04 a0 	add3 r2,sp,#1184
    2ac4:	11 89 f0 00 	mv r1,r9 || nop
    2ac8:	fe 00 0d c8 	bl 61e8 <__sprint_r>
    2acc:	b0 90 00 8a 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2ad0:	88 af 00 10 	add3 r8,sp,#16
    2ad4:	a0 cf 04 ec 	ld r0,@(1260,sp)
    2ad8:	62 00 f0 00 	ldi r2,#0 || nop
    2adc:	a1 cf 04 f0 	ld r1,@(1264,sp)
    2ae0:	63 00 f0 00 	ldi r3,#0 || nop
    2ae4:	fe 00 17 4e 	bl 881c <__nedf2>
    2ae8:	a4 cf 04 d8 	ld r4,@(1240,sp)
    2aec:	44 ff f0 00 	addi r4,#-1 || nop
    2af0:	b0 80 00 0d 	beqz r0,2b24 <_vfprintf_r+0x14cc>
    2af4:	a5 cf 04 a8 	ld r5,@(1192,sp)
    2af8:	a4 48 00 04 	st r4,@(4,r8)
    2afc:	4b 01 f0 00 	addi r11,#1 || nop
    2b00:	2b 48 05 a4 	st r11,@r8 -> add r5,r4
    2b04:	7f 2b f0 00 	bra 2bb0 <_vfprintf_r+0x1558> || nop
    2b08:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2b0c:	82 af 04 a0 	add3 r2,sp,#1184
    2b10:	11 89 f0 00 	mv r1,r9 || nop
    2b14:	fe 00 0d b5 	bl 61e8 <__sprint_r>
    2b18:	b0 90 00 77 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2b1c:	88 af 00 10 	add3 r8,sp,#16
    2b20:	7f 28 f0 00 	bra 2bc0 <_vfprintf_r+0x1568> || nop
    2b24:	1b 84 f0 00 	mv r11,r4 || nop
    2b28:	b0 d4 00 13 	bgtz r4,2b74 <_vfprintf_r+0x151c>
    2b2c:	7f 25 f0 00 	bra 2bc0 <_vfprintf_r+0x1568> || nop
    2b30:	a6 48 00 04 	st r6,@(4,r8)
    2b34:	2c 48 45 10 	st r12,@r8 -> addi r5,#16
    2b38:	a5 4f 04 a8 	st r5,@(1192,sp)
    2b3c:	44 01 f0 00 	addi r4,#1 || nop
    2b40:	a4 4f 04 a4 	st r4,@(1188,sp)
    2b44:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2b48:	7c 03 f0 00 	bc 2b54 <_vfprintf_r+0x14fc> || nop
    2b4c:	48 08 f0 00 	addi r8,#8 || nop
    2b50:	7f 07 f0 00 	bra 2b6c <_vfprintf_r+0x1514> || nop
    2b54:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2b58:	82 af 04 a0 	add3 r2,sp,#1184
    2b5c:	11 89 f0 00 	mv r1,r9 || nop
    2b60:	fe 00 0d a2 	bl 61e8 <__sprint_r>
    2b64:	b0 90 00 64 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2b68:	88 af 00 10 	add3 r8,sp,#16
    2b6c:	4b f0 f0 00 	addi r11,#-16 || nop
    2b70:	7f 02 f0 00 	bra 2b78 <_vfprintf_r+0x1520> || nop
    2b74:	ec 00 91 f8 	ld24 r12,91f8 <zeroes.4006>
    2b78:	a5 cf 04 a8 	ld r5,@(1192,sp)
    2b7c:	66 10 f0 00 	ldi r6,#16 || nop
    2b80:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2b84:	06 4b 7c eb 	cmp r6,r11 -> bc 2b30 <_vfprintf_r+0x14d8>
    2b88:	e6 00 91 f8 	ld24 r6,91f8 <zeroes.4006>
    2b8c:	ab 48 00 04 	st r11,@(4,r8)
    2b90:	26 48 0b a5 	st r6,@r8 -> add r11,r5
    2b94:	ab 4f 04 a8 	st r11,@(1192,sp)
    2b98:	44 01 f0 00 	addi r4,#1 || nop
    2b9c:	a4 4f 04 a4 	st r4,@(1188,sp)
    2ba0:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2ba4:	7c d9 7f 06 	bc 2b08 <_vfprintf_r+0x14b0> -> bra 2bbc <_vfprintf_r+0x1564>
    2ba8:	a6 48 00 04 	st r6,@(4,r8)
    2bac:	45 01 f0 00 	addi r5,#1 || nop
    2bb0:	a5 4f 04 a8 	st r5,@(1192,sp)
    2bb4:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2bb8:	7f f8 f0 00 	bra 2b98 <_vfprintf_r+0x1540> || nop
    2bbc:	48 08 f0 00 	addi r8,#8 || nop
    2bc0:	84 af 04 b3 	add3 r4,sp,#1203
    2bc4:	a6 cf 05 04 	ld r6,@(1284,sp)
    2bc8:	24 48 f0 00 	st r4,@r8 || nop
    2bcc:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2bd0:	a6 48 00 04 	st r6,@(4,r8)
    2bd4:	04 a6 f0 00 	add r4,r6 || nop
    2bd8:	ff ff fe f2 	bra 27a0 <_vfprintf_r+0x1148>
    2bdc:	48 08 f0 00 	addi r8,#8 || nop
    2be0:	64 04 04 cd 	ldi r4,#4 -> and r4,fp
    2be4:	b0 94 00 0b 	bnez r4,2c10 <_vfprintf_r+0x15b8>
    2be8:	a4 cf 04 e0 	ld r4,@(1248,sp)
    2bec:	a7 cf 04 e8 	ld r7,@(1256,sp)
    2bf0:	04 47 7d 02 	cmp r4,r7 -> bnc 2bf8 <_vfprintf_r+0x15a0>
    2bf4:	14 87 f0 00 	mv r4,r7 || nop
    2bf8:	a5 cf 04 e4 	ld r5,@(1252,sp)
    2bfc:	05 a4 f0 00 	add r5,r4 || nop
    2c00:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2c04:	a5 4f 04 e4 	st r5,@(1252,sp)
    2c08:	b0 84 00 2b 	beqz r4,2cb4 <_vfprintf_r+0x165c>
    2c0c:	7f 2e f0 00 	bra 2cc4 <_vfprintf_r+0x166c> || nop
    2c10:	ab cf 04 e8 	ld r11,@(1256,sp)
    2c14:	a6 cf 04 e0 	ld r6,@(1248,sp)
    2c18:	0b 26 f0 00 	sub r11,r6 || nop
    2c1c:	b0 db 00 13 	bgtz r11,2c68 <_vfprintf_r+0x1610>
    2c20:	7f f2 f0 00 	bra 2be8 <_vfprintf_r+0x1590> || nop
    2c24:	a6 48 00 04 	st r6,@(4,r8)
    2c28:	2c 48 45 10 	st r12,@r8 -> addi r5,#16
    2c2c:	a5 4f 04 a8 	st r5,@(1192,sp)
    2c30:	44 01 f0 00 	addi r4,#1 || nop
    2c34:	a4 4f 04 a4 	st r4,@(1188,sp)
    2c38:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2c3c:	7c 03 f0 00 	bc 2c48 <_vfprintf_r+0x15f0> || nop
    2c40:	48 08 f0 00 	addi r8,#8 || nop
    2c44:	7f 07 f0 00 	bra 2c60 <_vfprintf_r+0x1608> || nop
    2c48:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2c4c:	82 af 04 a0 	add3 r2,sp,#1184
    2c50:	11 89 f0 00 	mv r1,r9 || nop
    2c54:	fe 00 0d 65 	bl 61e8 <__sprint_r>
    2c58:	b0 90 00 27 	bnez r0,2cf4 <_vfprintf_r+0x169c>
    2c5c:	88 af 00 10 	add3 r8,sp,#16
    2c60:	4b f0 f0 00 	addi r11,#-16 || nop
    2c64:	7f 02 f0 00 	bra 2c6c <_vfprintf_r+0x1614> || nop
    2c68:	ec 00 91 e8 	ld24 r12,91e8 <blanks.4005>
    2c6c:	a5 cf 04 a8 	ld r5,@(1192,sp)
    2c70:	66 10 f0 00 	ldi r6,#16 || nop
    2c74:	a4 cf 04 a4 	ld r4,@(1188,sp)
    2c78:	06 4b 7c eb 	cmp r6,r11 -> bc 2c24 <_vfprintf_r+0x15cc>
    2c7c:	e6 00 91 e8 	ld24 r6,91e8 <blanks.4005>
    2c80:	ab 48 00 04 	st r11,@(4,r8)
    2c84:	26 48 0b a5 	st r6,@r8 -> add r11,r5
    2c88:	ab 4f 04 a8 	st r11,@(1192,sp)
    2c8c:	44 01 f0 00 	addi r4,#1 || nop
    2c90:	a4 4f 04 a4 	st r4,@(1188,sp)
    2c94:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    2c98:	7d d4 f0 00 	bnc 2be8 <_vfprintf_r+0x1590> || nop
    2c9c:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2ca0:	82 af 04 a0 	add3 r2,sp,#1184
    2ca4:	11 89 f0 00 	mv r1,r9 || nop
    2ca8:	fe 00 0d 50 	bl 61e8 <__sprint_r>
    2cac:	b0 80 ff cf 	beqz r0,2be8 <_vfprintf_r+0x1590>
    2cb0:	7f 11 f0 00 	bra 2cf4 <_vfprintf_r+0x169c> || nop
    2cb4:	88 af 00 10 	add3 r8,sp,#16
    2cb8:	64 00 f0 00 	ldi r4,#0 || nop
    2cbc:	a4 4f 04 a4 	st r4,@(1188,sp)
    2cc0:	ff ff fa ce 	bra 17f8 <_vfprintf_r+0x1a0>
    2cc4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2cc8:	82 af 04 a0 	add3 r2,sp,#1184
    2ccc:	11 89 f0 00 	mv r1,r9 || nop
    2cd0:	fe 00 0d 46 	bl 61e8 <__sprint_r>
    2cd4:	b0 80 ff f8 	beqz r0,2cb4 <_vfprintf_r+0x165c>
    2cd8:	7f 07 f0 00 	bra 2cf4 <_vfprintf_r+0x169c> || nop
    2cdc:	a4 cf 04 a8 	ld r4,@(1192,sp)
    2ce0:	b0 84 00 05 	beqz r4,2cf4 <_vfprintf_r+0x169c>
    2ce4:	a0 cf 04 d0 	ld r0,@(1232,sp)
    2ce8:	82 af 04 a0 	add3 r2,sp,#1184
    2cec:	11 89 f0 00 	mv r1,r9 || nop
    2cf0:	fe 00 0d 3e 	bl 61e8 <__sprint_r>
    2cf4:	a5 b9 00 0c 	lduh r5,@(12,r9)
    2cf8:	64 40 04 c5 	ldi r4,#64 -> and r4,r5
    2cfc:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    2d00:	b0 94 fa 86 	bnez r4,1718 <_vfprintf_r+0xc0>
    2d04:	a0 cf 04 e4 	ld r0,@(1252,sp)
    2d08:	8f af 05 20 	add3 sp,sp,#1312
    2d0c:	2e ef 2c ef 	pop lr -> pop r12
    2d10:	2b ef 2a ef 	pop r11 -> pop r10
    2d14:	29 ef f0 00 	pop r9 || nop
    2d18:	28 ef 2d ef 	pop r8 -> pop fp
    2d1c:	1f ce f0 00 	jmp lr || nop

00002d20 <vfprintf>:
    2d20:	e6 00 a0 ac 	ld24 r6,a0ac <_impure_ptr>
    2d24:	15 80 f0 00 	mv r5,r0 || nop
    2d28:	20 c6 f0 00 	ld r0,@r6 || nop
    2d2c:	14 81 2e 7f 	mv r4,r1 -> push lr
    2d30:	13 82 f0 00 	mv r3,r2 || nop
    2d34:	11 85 f0 00 	mv r1,r5 || nop
    2d38:	12 84 f0 00 	mv r2,r4 || nop
    2d3c:	fe ff fa 47 	bl 1658 <_vfprintf_r>
    2d40:	2e ef 1f ce 	pop lr -> jmp lr

00002d44 <__swsetup_r>:
    2d44:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    2d48:	28 7f 29 7f 	push r8 -> push r9
    2d4c:	2e 7f f0 00 	push lr || nop
    2d50:	19 80 f0 00 	mv r9,r0 || nop
    2d54:	20 c4 f0 00 	ld r0,@r4 || nop
    2d58:	18 81 f0 00 	mv r8,r1 || nop
    2d5c:	b0 80 00 04 	beqz r0,2d6c <__swsetup_r+0x28>
    2d60:	a4 c0 00 38 	ld r4,@(56,r0)
    2d64:	b0 94 00 02 	bnez r4,2d6c <__swsetup_r+0x28>
    2d68:	fe 00 06 09 	bl 458c <__sinit>
    2d6c:	a4 a8 00 0c 	ldh r4,@(12,r8)
    2d70:	65 08 05 c4 	ldi r5,#8 -> and r5,r4
    2d74:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    2d78:	b0 95 00 1b 	bnez r5,2de4 <__swsetup_r+0xa0>
    2d7c:	65 10 05 c4 	ldi r5,#16 -> and r5,r4
    2d80:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    2d84:	b0 95 00 03 	bnez r5,2d90 <__swsetup_r+0x4c>
    2d88:	65 09 25 49 	ldi r5,#9 -> st r5,@r9
    2d8c:	7f 34 f0 00 	bra 2e5c <__swsetup_r+0x118> || nop
    2d90:	65 04 05 c4 	ldi r5,#4 -> and r5,r4
    2d94:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    2d98:	b0 85 00 10 	beqz r5,2dd8 <__swsetup_r+0x94>
    2d9c:	a1 c8 00 30 	ld r1,@(48,r8)
    2da0:	b0 81 00 07 	beqz r1,2dbc <__swsetup_r+0x78>
    2da4:	84 a8 00 40 	add3 r4,r8,#64
    2da8:	b1 04 00 03 	beq r1,r4,2db4 <__swsetup_r+0x70>
    2dac:	10 89 f0 00 	mv r0,r9 || nop
    2db0:	fe 00 06 8c 	bl 47e0 <_free_r>
    2db4:	64 00 f0 00 	ldi r4,#0 || nop
    2db8:	a4 48 00 30 	st r4,@(48,r8)
    2dbc:	a5 b8 00 0c 	lduh r5,@(12,r8)
    2dc0:	64 db 04 c5 	ldi r4,#-37 -> and r4,r5
    2dc4:	a4 28 00 0c 	sth r4,@(12,r8)
    2dc8:	64 00 f0 00 	ldi r4,#0 || nop
    2dcc:	a4 48 00 04 	st r4,@(4,r8)
    2dd0:	a4 c8 00 10 	ld r4,@(16,r8)
    2dd4:	24 48 f0 00 	st r4,@r8 || nop
    2dd8:	a5 b8 00 0c 	lduh r5,@(12,r8)
    2ddc:	64 08 04 e5 	ldi r4,#8 -> or r4,r5
    2de0:	a4 28 00 0c 	sth r4,@(12,r8)
    2de4:	a4 c8 00 10 	ld r4,@(16,r8)
    2de8:	b0 94 00 07 	bnez r4,2e04 <__swsetup_r+0xc0>
    2dec:	a4 b8 00 0c 	lduh r4,@(12,r8)
    2df0:	84 c4 02 80 	and3 r4,r4,#0x280
    2df4:	84 a4 fe 00 	add3 r4,r4,#-512
    2df8:	b0 84 00 03 	beqz r4,2e04 <__swsetup_r+0xc0>
    2dfc:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    2e00:	fe 00 07 6a 	bl 4ba8 <__smakebuf_r>
    2e04:	a4 a8 00 0c 	ldh r4,@(12,r8)
    2e08:	65 01 05 c4 	ldi r5,#1 -> and r5,r4
    2e0c:	b0 85 00 07 	beqz r5,2e28 <__swsetup_r+0xe4>
    2e10:	65 00 f0 00 	ldi r5,#0 || nop
    2e14:	a5 48 00 08 	st r5,@(8,r8)
    2e18:	a5 c8 00 14 	ld r5,@(20,r8)
    2e1c:	05 35 f0 00 	neg r5,r5 || nop
    2e20:	a5 48 00 18 	st r5,@(24,r8)
    2e24:	7f 08 f0 00 	bra 2e44 <__swsetup_r+0x100> || nop
    2e28:	65 02 05 c4 	ldi r5,#2 -> and r5,r4
    2e2c:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    2e30:	b0 95 00 03 	bnez r5,2e3c <__swsetup_r+0xf8>
    2e34:	a5 c8 00 14 	ld r5,@(20,r8)
    2e38:	7f 02 f0 00 	bra 2e40 <__swsetup_r+0xfc> || nop
    2e3c:	65 00 f0 00 	ldi r5,#0 || nop
    2e40:	a5 48 00 08 	st r5,@(8,r8)
    2e44:	a5 c8 00 10 	ld r5,@(16,r8)
    2e48:	b0 95 00 08 	bnez r5,2e68 <__swsetup_r+0x124>
    2e4c:	85 c4 00 80 	and3 r5,r4,#0x80
    2e50:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    2e54:	60 00 f0 00 	ldi r0,#0 || nop
    2e58:	b0 85 00 05 	beqz r5,2e6c <__swsetup_r+0x128>
    2e5c:	65 40 05 e4 	ldi r5,#64 -> or r5,r4
    2e60:	a5 28 00 0c 	sth r5,@(12,r8)
    2e64:	60 ff 7f 02 	ldi r0,#-1 -> bra 2e6c <__swsetup_r+0x128>
    2e68:	60 00 f0 00 	ldi r0,#0 || nop
    2e6c:	2e ef 29 ef 	pop lr -> pop r9
    2e70:	28 ef f0 00 	pop r8 || nop
    2e74:	1f ce f0 00 	jmp lr || nop

00002e78 <__call_exitprocs>:
    2e78:	e4 00 90 40 	ld24 r4,9040 <_global_impure_ptr>
    2e7c:	2d 7f 28 7f 	push fp -> push r8
    2e80:	29 7f 2a 7f 	push r9 -> push r10
    2e84:	2b 7f 2c 7f 	push r11 -> push r12
    2e88:	24 c4 f0 00 	ld r4,@r4 || nop
    2e8c:	2e 7f 4f f4 	push lr -> addi sp,#-12
    2e90:	a0 4f 00 08 	st r0,@(8,sp)
    2e94:	19 81 f0 00 	mv r9,r1 || nop
    2e98:	24 4f f0 00 	st r4,@sp || nop
    2e9c:	24 cf f0 00 	ld r4,@sp || nop
    2ea0:	aa c4 01 48 	ld r10,@(328,r4)
    2ea4:	88 a4 01 48 	add3 r8,r4,#328
    2ea8:	7f 3b f0 00 	bra 2f94 <__call_exitprocs+0x11c> || nop
    2eac:	a6 ca 00 04 	ld r6,@(4,r10)
    2eb0:	8c aa 00 88 	add3 r12,r10,#136
    2eb4:	8b a6 ff ff 	add3 r11,r6,#-1
    2eb8:	9d cb 00 02 	sll3 fp,r11,#2
    2ebc:	0d ac f0 00 	add fp,r12 || nop
    2ec0:	7f 27 f0 00 	bra 2f5c <__call_exitprocs+0xe4> || nop
    2ec4:	b0 89 00 05 	beqz r9,2ed8 <__call_exitprocs+0x60>
    2ec8:	a7 cd 00 80 	ld r7,@(128,fp)
    2ecc:	b7 09 00 03 	beq r7,r9,2ed8 <__call_exitprocs+0x60>
    2ed0:	4b ff f0 00 	addi r11,#-1 || nop
    2ed4:	4d fc 7f 22 	addi fp,#-4 -> bra 2f5c <__call_exitprocs+0xe4>
    2ed8:	a3 ca 00 04 	ld r3,@(4,r10)
    2edc:	12 8d 02 2c 	mv r2,fp -> sub r2,r12
    2ee0:	02 aa f0 00 	add r2,r10 || nop
    2ee4:	a7 c2 00 08 	ld r7,@(8,r2)
    2ee8:	43 ff f0 00 	addi r3,#-1 || nop
    2eec:	bb 13 00 03 	bne r11,r3,2ef8 <__call_exitprocs+0x80>
    2ef0:	ab 4a 00 04 	st r11,@(4,r10)
    2ef4:	7f 03 f0 00 	bra 2f00 <__call_exitprocs+0x88> || nop
    2ef8:	63 00 f0 00 	ldi r3,#0 || nop
    2efc:	a3 42 00 08 	st r3,@(8,r2)
    2f00:	b0 87 ff f4 	beqz r7,2ed0 <__call_exitprocs+0x58>
    2f04:	a4 ca 00 04 	ld r4,@(4,r10)
    2f08:	62 01 f0 00 	ldi r2,#1 || nop
    2f0c:	a3 ca 01 88 	ld r3,@(392,r10)
    2f10:	a4 4f 00 04 	st r4,@(4,sp)
    2f14:	12 4b f0 00 	sll r2,r11 || nop
    2f18:	03 c2 f0 00 	and r3,r2 || nop
    2f1c:	b0 93 00 03 	bnez r3,2f28 <__call_exitprocs+0xb0>
    2f20:	1e c7 f0 00 	jl r7 || nop
    2f24:	7f 08 f0 00 	bra 2f44 <__call_exitprocs+0xcc> || nop
    2f28:	a3 ca 01 8c 	ld r3,@(396,r10)
    2f2c:	03 c2 f0 00 	and r3,r2 || nop
    2f30:	b0 93 00 04 	bnez r3,2f40 <__call_exitprocs+0xc8>
    2f34:	a0 cf 00 08 	ld r0,@(8,sp)
    2f38:	21 cd 1e c7 	ld r1,@fp -> jl r7
    2f3c:	7f 02 f0 00 	bra 2f44 <__call_exitprocs+0xcc> || nop
    2f40:	20 cd 1e c7 	ld r0,@fp -> jl r7
    2f44:	a7 ca 00 04 	ld r7,@(4,r10)
    2f48:	a4 cf 00 04 	ld r4,@(4,sp)
    2f4c:	b4 17 ff d4 	bne r4,r7,2e9c <__call_exitprocs+0x24>
    2f50:	27 c8 f0 00 	ld r7,@r8 || nop
    2f54:	b7 0a ff df 	beq r7,r10,2ed0 <__call_exitprocs+0x58>
    2f58:	7f d1 f0 00 	bra 2e9c <__call_exitprocs+0x24> || nop
    2f5c:	b0 bb ff da 	bgez r11,2ec4 <__call_exitprocs+0x4c>
    2f60:	e4 00 00 00 	ld24 r4,0 <_.xy-0x4>
    2f64:	b0 84 00 0d 	beqz r4,2f98 <__call_exitprocs+0x120>
    2f68:	a6 ca 00 04 	ld r6,@(4,r10)
    2f6c:	25 ca f0 00 	ld r5,@r10 || nop
    2f70:	b0 96 00 07 	bnez r6,2f8c <__call_exitprocs+0x114>
    2f74:	b0 85 00 06 	beqz r5,2f8c <__call_exitprocs+0x114>
    2f78:	10 8a f0 00 	mv r0,r10 || nop
    2f7c:	25 48 f0 00 	st r5,@r8 || nop
    2f80:	fe ff f4 20 	bl 0 <_.xy-0x4>
    2f84:	2a c8 f0 00 	ld r10,@r8 || nop
    2f88:	7f 03 f0 00 	bra 2f94 <__call_exitprocs+0x11c> || nop
    2f8c:	18 8a f0 00 	mv r8,r10 || nop
    2f90:	1a 85 f0 00 	mv r10,r5 || nop
    2f94:	b0 9a ff c6 	bnez r10,2eac <__call_exitprocs+0x34>
    2f98:	4f 0c 2e ef 	addi sp,#12 -> pop lr
    2f9c:	2c ef 2b ef 	pop r12 -> pop r11
    2fa0:	2a ef f0 00 	pop r10 || nop
    2fa4:	29 ef f0 00 	pop r9 || nop
    2fa8:	28 ef f0 00 	pop r8 || nop
    2fac:	2d ef 1f ce 	pop fp -> jmp lr

00002fb0 <quorem>:
    2fb0:	a4 c1 00 10 	ld r4,@(16,r1)
    2fb4:	2d 7f 28 7f 	push fp -> push r8
    2fb8:	29 7f 2a 7f 	push r9 -> push r10
    2fbc:	2b 7f 2c 7f 	push r11 -> push r12
    2fc0:	2e 7f f0 00 	push lr || nop
    2fc4:	a5 c0 00 10 	ld r5,@(16,r0)
    2fc8:	1a 80 f0 00 	mv r10,r0 || nop
    2fcc:	05 44 7c 55 	cmp r5,r4 -> bc 3120 <quorem+0x170>
    2fd0:	89 a4 ff ff 	add3 r9,r4,#-1
    2fd4:	44 04 f0 00 	addi r4,#4 || nop
    2fd8:	54 42 1d 81 	slli r4,#0x2 -> mv fp,r1
    2fdc:	8c a1 00 14 	add3 r12,r1,#20
    2fe0:	8b a0 00 14 	add3 r11,r0,#20
    2fe4:	0d a4 f0 00 	add fp,r4 || nop
    2fe8:	25 cd 04 a0 	ld r5,@fp -> add r4,r0
    2fec:	28 c4 45 01 	ld r8,@r4 -> addi r5,#1
    2ff0:	98 15 00 00 	divu r8,r5
    2ff4:	b0 88 00 27 	beqz r8,3090 <quorem+0xe0>
    2ff8:	13 8c 17 8b 	mv r3,r12 -> mv r7,r11
    2ffc:	60 00 f0 00 	ldi r0,#0 || nop
    3000:	6e 00 f0 00 	ldi lr,#0 || nop
    3004:	24 e3 f0 00 	ld r4,@r3+ || nop
    3008:	25 c7 f0 00 	ld r5,@r7 || nop
    300c:	86 c4 ff ff 	and3 r6,r4,#0xffff
    3010:	16 68 06 a0 	mul r6,r8 -> add r6,r0
    3014:	92 86 00 10 	srl3 r2,r6,#16
    3018:	86 c6 ff ff 	and3 r6,r6,#0xffff
    301c:	54 10 f0 00 	srli r4,#0x10 || nop
    3020:	14 68 02 a4 	mul r4,r8 -> add r2,r4
    3024:	84 c5 ff ff 	and3 r4,r5,#0xffff
    3028:	90 82 00 10 	srl3 r0,r2,#16
    302c:	82 c2 ff ff 	and3 r2,r2,#0xffff
    3030:	04 ae 04 26 	add r4,lr -> sub r4,r6
    3034:	96 a4 00 10 	sra3 r6,r4,#16
    3038:	84 c4 ff ff 	and3 r4,r4,#0xffff
    303c:	55 10 05 22 	srli r5,#0x10 -> sub r5,r2
    3040:	05 a6 f0 00 	add r5,r6 || nop
    3044:	9e a5 00 10 	sra3 lr,r5,#16
    3048:	55 50 f0 00 	slli r5,#0x10 || nop
    304c:	05 e4 25 47 	or r5,r4 -> st r5,@r7
    3050:	0d 53 f0 00 	cmpu fp,r3 || nop
    3054:	47 04 f0 00 	addi r7,#4 || nop
    3058:	7d eb f0 00 	bnc 3004 <quorem+0x54> || nop
    305c:	84 a9 00 05 	add3 r4,r9,#5
    3060:	54 42 04 aa 	slli r4,#0x2 -> add r4,r10
    3064:	25 c4 f0 00 	ld r5,@r4 || nop
    3068:	b0 95 00 0a 	bnez r5,3090 <quorem+0xe0>
    306c:	7f 02 f0 00 	bra 3074 <quorem+0xc4> || nop
    3070:	49 ff f0 00 	addi r9,#-1 || nop
    3074:	44 fc f0 00 	addi r4,#-4 || nop
    3078:	0b 54 7c 03 	cmpu r11,r4 -> bc 3084 <quorem+0xd4>
    307c:	a9 4a 00 10 	st r9,@(16,r10)
    3080:	7f 04 f0 00 	bra 3090 <quorem+0xe0> || nop
    3084:	25 c4 f0 00 	ld r5,@r4 || nop
    3088:	b0 85 ff fa 	beqz r5,3070 <quorem+0xc0>
    308c:	7f fc f0 00 	bra 307c <quorem+0xcc> || nop
    3090:	10 8a f0 00 	mv r0,r10 || nop
    3094:	fe 00 0a 79 	bl 5a78 <__mcmp>
    3098:	b0 a0 00 21 	bltz r0,311c <quorem+0x16c>
    309c:	48 01 f0 00 	addi r8,#1 || nop
    30a0:	16 8b f0 00 	mv r6,r11 || nop
    30a4:	67 00 f0 00 	ldi r7,#0 || nop
    30a8:	25 c6 f0 00 	ld r5,@r6 || nop
    30ac:	22 ec f0 00 	ld r2,@r12+ || nop
    30b0:	84 c5 ff ff 	and3 r4,r5,#0xffff
    30b4:	04 a7 f0 00 	add r4,r7 || nop
    30b8:	87 c2 ff ff 	and3 r7,r2,#0xffff
    30bc:	04 27 f0 00 	sub r4,r7 || nop
    30c0:	97 a4 00 10 	sra3 r7,r4,#16
    30c4:	84 c4 ff ff 	and3 r4,r4,#0xffff
    30c8:	55 10 52 10 	srli r5,#0x10 -> srli r2,#0x10
    30cc:	05 22 05 a7 	sub r5,r2 -> add r5,r7
    30d0:	97 a5 00 10 	sra3 r7,r5,#16
    30d4:	55 50 f0 00 	slli r5,#0x10 || nop
    30d8:	05 e4 25 46 	or r5,r4 -> st r5,@r6
    30dc:	0d 5c f0 00 	cmpu fp,r12 || nop
    30e0:	46 04 f0 00 	addi r6,#4 || nop
    30e4:	7d f1 f0 00 	bnc 30a8 <quorem+0xf8> || nop
    30e8:	84 a9 00 05 	add3 r4,r9,#5
    30ec:	54 42 04 aa 	slli r4,#0x2 -> add r4,r10
    30f0:	25 c4 f0 00 	ld r5,@r4 || nop
    30f4:	b0 95 00 0a 	bnez r5,311c <quorem+0x16c>
    30f8:	7f 02 f0 00 	bra 3100 <quorem+0x150> || nop
    30fc:	49 ff f0 00 	addi r9,#-1 || nop
    3100:	44 fc f0 00 	addi r4,#-4 || nop
    3104:	0b 54 7c 03 	cmpu r11,r4 -> bc 3110 <quorem+0x160>
    3108:	a9 4a 00 10 	st r9,@(16,r10)
    310c:	7f 04 f0 00 	bra 311c <quorem+0x16c> || nop
    3110:	25 c4 f0 00 	ld r5,@r4 || nop
    3114:	b0 85 ff fa 	beqz r5,30fc <quorem+0x14c>
    3118:	7f fc f0 00 	bra 3108 <quorem+0x158> || nop
    311c:	10 88 7f 02 	mv r0,r8 -> bra 3124 <quorem+0x174>
    3120:	60 00 f0 00 	ldi r0,#0 || nop
    3124:	2e ef 2c ef 	pop lr -> pop r12
    3128:	2b ef 2a ef 	pop r11 -> pop r10
    312c:	29 ef 28 ef 	pop r9 -> pop r8
    3130:	2d ef 1f ce 	pop fp -> jmp lr

00003134 <_dtoa_r>:
    3134:	2d 7f 28 7f 	push fp -> push r8
    3138:	29 7f 2a 7f 	push r9 -> push r10
    313c:	2b 7f 2c 7f 	push r11 -> push r12
    3140:	2e 7f 4f a0 	push lr -> addi sp,#-96
    3144:	a1 4f 00 10 	st r1,@(16,sp)
    3148:	a1 c0 00 40 	ld r1,@(64,r0)
    314c:	a3 4f 00 2c 	st r3,@(44,sp)
    3150:	a2 4f 00 14 	st r2,@(20,sp)
    3154:	a8 cf 00 84 	ld r8,@(132,sp)
    3158:	1c 80 f0 00 	mv r12,r0 || nop
    315c:	b0 81 00 09 	beqz r1,3180 <_dtoa_r+0x4c>
    3160:	a5 c0 00 44 	ld r5,@(68,r0)
    3164:	64 01 f0 00 	ldi r4,#1 || nop
    3168:	a5 41 00 04 	st r5,@(4,r1)
    316c:	14 45 f0 00 	sll r4,r5 || nop
    3170:	a4 41 00 08 	st r4,@(8,r1)
    3174:	fe 00 08 a7 	bl 5410 <_Bfree>
    3178:	64 00 f0 00 	ldi r4,#0 || nop
    317c:	a4 4c 00 40 	st r4,@(64,r12)
    3180:	a5 cf 00 10 	ld r5,@(16,sp)
    3184:	b0 b5 00 07 	bgez r5,31a0 <_dtoa_r+0x6c>
    3188:	64 01 24 48 	ldi r4,#1 -> st r4,@r8
    318c:	d4 c0 7f ff 	seth r4,#0x7fff
    3190:	84 e4 ff ff 	or3 r4,r4,#0xffff
    3194:	05 c4 f0 00 	and r5,r4 || nop
    3198:	a5 4f 00 10 	st r5,@(16,sp)
    319c:	7f 02 f0 00 	bra 31a4 <_dtoa_r+0x70> || nop
    31a0:	64 00 24 48 	ldi r4,#0 -> st r4,@r8
    31a4:	ab cf 00 10 	ld r11,@(16,sp)
    31a8:	d4 c0 7f f0 	seth r4,#0x7ff0
    31ac:	15 8b 05 c4 	mv r5,r11 -> and r5,r4
    31b0:	b5 14 00 1d 	bne r5,r4,3224 <_dtoa_r+0xf0>
    31b4:	a5 cf 00 80 	ld r5,@(128,sp)
    31b8:	94 f0 27 0f 	ldi r4,#9999
    31bc:	24 45 f0 00 	st r4,@r5 || nop
    31c0:	a4 cf 00 14 	ld r4,@(20,sp)
    31c4:	b0 94 00 07 	bnez r4,31e0 <_dtoa_r+0xac>
    31c8:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    31cc:	04 cb f0 00 	and r4,r11 || nop
    31d0:	b0 84 00 07 	beqz r4,31ec <_dtoa_r+0xb8>
    31d4:	e6 00 92 14 	ld24 r6,9214 <zeroes.4006+0x1c>
    31d8:	a6 4f 00 18 	st r6,@(24,sp)
    31dc:	7f 06 f0 00 	bra 31f4 <_dtoa_r+0xc0> || nop
    31e0:	e4 00 92 14 	ld24 r4,9214 <zeroes.4006+0x1c>
    31e4:	a4 4f 00 18 	st r4,@(24,sp)
    31e8:	7f 03 f0 00 	bra 31f4 <_dtoa_r+0xc0> || nop
    31ec:	e5 00 92 08 	ld24 r5,9208 <zeroes.4006+0x10>
    31f0:	a5 4f 00 18 	st r5,@(24,sp)
    31f4:	a6 cf 00 88 	ld r6,@(136,sp)
    31f8:	b0 86 04 0d 	beqz r6,422c <_dtoa_r+0x10f8>
    31fc:	a5 cf 00 18 	ld r5,@(24,sp)
    3200:	a4 85 00 03 	ldb r4,@(3,r5)
    3204:	b0 84 00 03 	beqz r4,3210 <_dtoa_r+0xdc>
    3208:	14 85 44 08 	mv r4,r5 -> addi r4,#8
    320c:	7f 03 f0 00 	bra 3218 <_dtoa_r+0xe4> || nop
    3210:	a4 cf 00 18 	ld r4,@(24,sp)
    3214:	44 03 f0 00 	addi r4,#3 || nop
    3218:	a6 cf 00 88 	ld r6,@(136,sp)
    321c:	24 46 f0 00 	st r4,@r6 || nop
    3220:	ff 00 04 03 	bra 422c <_dtoa_r+0x10f8>
    3224:	a8 cf 00 10 	ld r8,@(16,sp)
    3228:	62 00 f0 00 	ldi r2,#0 || nop
    322c:	a9 cf 00 14 	ld r9,@(20,sp)
    3230:	10 88 63 00 	mv r0,r8 -> ldi r3,#0
    3234:	11 89 f0 00 	mv r1,r9 || nop
    3238:	fe 00 15 62 	bl 87c0 <__eqdf2>
    323c:	b0 90 00 0b 	bnez r0,3268 <_dtoa_r+0x134>
    3240:	a5 cf 00 80 	ld r5,@(128,sp)
    3244:	64 01 f0 00 	ldi r4,#1 || nop
    3248:	a6 cf 00 88 	ld r6,@(136,sp)
    324c:	24 45 f0 00 	st r4,@r5 || nop
    3250:	b0 86 03 f5 	beqz r6,4224 <_dtoa_r+0x10f0>
    3254:	e4 00 90 81 	ld24 r4,9081 <_global_impure_ptr+0x41>
    3258:	24 46 f0 00 	st r4,@r6 || nop
    325c:	e4 00 90 80 	ld24 r4,9080 <_global_impure_ptr+0x40>
    3260:	a4 4f 00 18 	st r4,@(24,sp)
    3264:	ff 00 03 f2 	bra 422c <_dtoa_r+0x10f8>
    3268:	84 af 00 08 	add3 r4,sp,#8
    326c:	83 af 00 04 	add3 r3,sp,#4
    3270:	9a 8b 00 14 	srl3 r10,r11,#20
    3274:	8a ca 07 ff 	and3 r10,r10,#0x7ff
    3278:	24 4f 10 8c 	st r4,@sp -> mv r0,r12
    327c:	11 88 12 89 	mv r1,r8 -> mv r2,r9
    3280:	fe 00 0a b0 	bl 5d40 <__d2b>
    3284:	a0 4f 00 1c 	st r0,@(28,sp)
    3288:	b0 8a 00 0a 	beqz r10,32b0 <_dtoa_r+0x17c>
    328c:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    3290:	d5 c0 3f f0 	seth r5,#0x3ff0
    3294:	8a aa fc 01 	add3 r10,r10,#-1023
    3298:	04 c8 f0 00 	and r4,r8 || nop
    329c:	10 84 f0 00 	mv r0,r4 || nop
    32a0:	00 e5 f0 00 	or r0,r5 || nop
    32a4:	65 00 f0 00 	ldi r5,#0 || nop
    32a8:	a5 4f 00 54 	st r5,@(84,sp)
    32ac:	11 89 7f 16 	mv r1,r9 -> bra 3304 <_dtoa_r+0x1d0>
    32b0:	aa cf 00 08 	ld r10,@(8,sp)
    32b4:	a4 cf 00 04 	ld r4,@(4,sp)
    32b8:	0a a4 f0 00 	add r10,r4 || nop
    32bc:	80 4a fb ef 	cmpi r10,#-1041
    32c0:	7c 07 f0 00 	bc 32dc <_dtoa_r+0x1a8> || nop
    32c4:	a6 cf 00 14 	ld r6,@(20,sp)
    32c8:	80 aa 04 12 	add3 r0,r10,#1042
    32cc:	94 f0 fc 0e 	ldi r4,#-1010
    32d0:	16 00 04 2a 	srl r6,r0 -> sub r4,r10
    32d4:	10 86 1b 44 	mv r0,r6 -> sll r11,r4
    32d8:	00 eb 7f 05 	or r0,r11 -> bra 32ec <_dtoa_r+0x1b8>
    32dc:	a4 cf 00 14 	ld r4,@(20,sp)
    32e0:	90 f0 fb ee 	ldi r0,#-1042
    32e4:	00 2a f0 00 	sub r0,r10 || nop
    32e8:	14 40 10 84 	sll r4,r0 -> mv r0,r4
    32ec:	fe 00 15 f4 	bl 8abc <__floatunsidf>
    32f0:	d5 c0 fe 10 	seth r5,#0xfe10
    32f4:	66 01 f0 00 	ldi r6,#1 || nop
    32f8:	a6 4f 00 54 	st r6,@(84,sp)
    32fc:	00 a5 f0 00 	add r0,r5 || nop
    3300:	4a ff f0 00 	addi r10,#-1 || nop
    3304:	d2 c0 3f f8 	seth r2,#0x3ff8
    3308:	63 00 f0 00 	ldi r3,#0 || nop
    330c:	fe 00 13 f8 	bl 82ec <__subdf3>
    3310:	d2 c0 3f d2 	seth r2,#0x3fd2
    3314:	d3 c0 63 6f 	seth r3,#0x636f
    3318:	82 e2 87 a7 	or3 r2,r2,#0x87a7
    331c:	83 e3 43 61 	or3 r3,r3,#0x4361
    3320:	fe 00 14 08 	bl 8340 <__muldf3>
    3324:	d2 c0 3f c6 	seth r2,#0x3fc6
    3328:	d3 c0 8b 60 	seth r3,#0x8b60
    332c:	82 e2 8a 28 	or3 r2,r2,#0x8a28
    3330:	83 e3 c8 b3 	or3 r3,r3,#0xc8b3
    3334:	fe 00 13 dc 	bl 82a4 <__adddf3>
    3338:	18 80 10 8a 	mv r8,r0 -> mv r0,r10
    333c:	19 81 f0 00 	mv r9,r1 || nop
    3340:	fe 00 15 93 	bl 898c <__floatsidf>
    3344:	d2 c0 3f d3 	seth r2,#0x3fd3
    3348:	d3 c0 50 9f 	seth r3,#0x509f
    334c:	82 e2 44 13 	or3 r2,r2,#0x4413
    3350:	83 e3 79 fb 	or3 r3,r3,#0x79fb
    3354:	fe 00 13 fb 	bl 8340 <__muldf3>
    3358:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    335c:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    3360:	fe 00 13 d1 	bl 82a4 <__adddf3>
    3364:	18 80 19 81 	mv r8,r0 -> mv r9,r1
    3368:	fe 00 15 b0 	bl 8a28 <__fixdfsi>
    336c:	a0 4f 00 0c 	st r0,@(12,sp)
    3370:	11 89 10 88 	mv r1,r9 -> mv r0,r8
    3374:	62 00 63 00 	ldi r2,#0 -> ldi r3,#0
    3378:	fe 00 15 6e 	bl 8930 <__ltdf2>
    337c:	b0 b0 00 0a 	bgez r0,33a4 <_dtoa_r+0x270>
    3380:	a0 cf 00 0c 	ld r0,@(12,sp)
    3384:	fe 00 15 82 	bl 898c <__floatsidf>
    3388:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    338c:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    3390:	fe 00 15 23 	bl 881c <__nedf2>
    3394:	b0 80 00 04 	beqz r0,33a4 <_dtoa_r+0x270>
    3398:	a4 cf 00 0c 	ld r4,@(12,sp)
    339c:	44 ff f0 00 	addi r4,#-1 || nop
    33a0:	a4 4f 00 0c 	st r4,@(12,sp)
    33a4:	a5 cf 00 0c 	ld r5,@(12,sp)
    33a8:	64 16 04 55 	ldi r4,#22 -> cmpu r4,r5
    33ac:	7c 10 f0 00 	bc 33ec <_dtoa_r+0x2b8> || nop
    33b0:	e6 00 92 74 	ld24 r6,9274 <__mprec_tens>
    33b4:	a2 cf 00 10 	ld r2,@(16,sp)
    33b8:	14 85 f0 00 	mv r4,r5 || nop
    33bc:	a3 cf 00 14 	ld r3,@(20,sp)
    33c0:	54 43 04 a6 	slli r4,#0x3 -> add r4,r6
    33c4:	a1 c4 00 04 	ld r1,@(4,r4)
    33c8:	20 c4 f0 00 	ld r0,@r4 || nop
    33cc:	fe 00 15 2b 	bl 8878 <__gtdf2>
    33d0:	b0 c0 00 0a 	blez r0,33f8 <_dtoa_r+0x2c4>
    33d4:	a4 cf 00 0c 	ld r4,@(12,sp)
    33d8:	65 00 f0 00 	ldi r5,#0 || nop
    33dc:	a5 4f 00 48 	st r5,@(72,sp)
    33e0:	44 ff f0 00 	addi r4,#-1 || nop
    33e4:	a4 4f 00 0c 	st r4,@(12,sp)
    33e8:	7f 06 f0 00 	bra 3400 <_dtoa_r+0x2cc> || nop
    33ec:	66 01 f0 00 	ldi r6,#1 || nop
    33f0:	a6 4f 00 48 	st r6,@(72,sp)
    33f4:	7f 03 f0 00 	bra 3400 <_dtoa_r+0x2cc> || nop
    33f8:	64 00 f0 00 	ldi r4,#0 || nop
    33fc:	a4 4f 00 48 	st r4,@(72,sp)
    3400:	a4 cf 00 08 	ld r4,@(8,sp)
    3404:	04 2a 44 ff 	sub r4,r10 -> addi r4,#-1
    3408:	b0 b4 00 06 	bgez r4,3420 <_dtoa_r+0x2ec>
    340c:	04 34 f0 00 	neg r4,r4 || nop
    3410:	a4 4f 00 20 	st r4,@(32,sp)
    3414:	65 00 f0 00 	ldi r5,#0 || nop
    3418:	a5 4f 00 28 	st r5,@(40,sp)
    341c:	7f 04 f0 00 	bra 342c <_dtoa_r+0x2f8> || nop
    3420:	a4 4f 00 28 	st r4,@(40,sp)
    3424:	66 00 f0 00 	ldi r6,#0 || nop
    3428:	a6 4f 00 20 	st r6,@(32,sp)
    342c:	a4 cf 00 0c 	ld r4,@(12,sp)
    3430:	b0 a4 00 08 	bltz r4,3450 <_dtoa_r+0x31c>
    3434:	a5 cf 00 28 	ld r5,@(40,sp)
    3438:	a4 4f 00 44 	st r4,@(68,sp)
    343c:	66 00 f0 00 	ldi r6,#0 || nop
    3440:	a6 4f 00 30 	st r6,@(48,sp)
    3444:	05 a4 f0 00 	add r5,r4 || nop
    3448:	a5 4f 00 28 	st r5,@(40,sp)
    344c:	7f 09 f0 00 	bra 3470 <_dtoa_r+0x33c> || nop
    3450:	a4 cf 00 20 	ld r4,@(32,sp)
    3454:	a5 cf 00 0c 	ld r5,@(12,sp)
    3458:	04 25 f0 00 	sub r4,r5 || nop
    345c:	a4 4f 00 20 	st r4,@(32,sp)
    3460:	06 35 f0 00 	neg r6,r5 || nop
    3464:	a6 4f 00 30 	st r6,@(48,sp)
    3468:	64 00 f0 00 	ldi r4,#0 || nop
    346c:	a4 4f 00 44 	st r4,@(68,sp)
    3470:	a5 cf 00 2c 	ld r5,@(44,sp)
    3474:	64 09 04 55 	ldi r4,#9 -> cmpu r4,r5
    3478:	7c 2d f0 00 	bc 352c <_dtoa_r+0x3f8> || nop
    347c:	64 05 04 45 	ldi r4,#5 -> cmp r4,r5
    3480:	7d 05 f0 00 	bnc 3494 <_dtoa_r+0x360> || nop
    3484:	45 fc f0 00 	addi r5,#-4 || nop
    3488:	a5 4f 00 2c 	st r5,@(44,sp)
    348c:	68 00 f0 00 	ldi r8,#0 || nop
    3490:	7f 02 f0 00 	bra 3498 <_dtoa_r+0x364> || nop
    3494:	68 01 f0 00 	ldi r8,#1 || nop
    3498:	a4 cf 00 2c 	ld r4,@(44,sp)
    349c:	44 fd f0 00 	addi r4,#-3 || nop
    34a0:	b0 84 00 19 	beqz r4,3504 <_dtoa_r+0x3d0>
    34a4:	a6 cf 00 2c 	ld r6,@(44,sp)
    34a8:	64 03 04 46 	ldi r4,#3 -> cmp r4,r6
    34ac:	7c 04 14 86 	bc 34bc <_dtoa_r+0x388> -> mv r4,r6
    34b0:	44 fe f0 00 	addi r4,#-2 || nop
    34b4:	b0 84 00 0d 	beqz r4,34e8 <_dtoa_r+0x3b4>
    34b8:	7f 29 f0 00 	bra 355c <_dtoa_r+0x428> || nop
    34bc:	a4 cf 00 2c 	ld r4,@(44,sp)
    34c0:	44 fc f0 00 	addi r4,#-4 || nop
    34c4:	b0 84 00 05 	beqz r4,34d8 <_dtoa_r+0x3a4>
    34c8:	a4 cf 00 2c 	ld r4,@(44,sp)
    34cc:	44 fb f0 00 	addi r4,#-5 || nop
    34d0:	b0 84 00 05 	beqz r4,34e4 <_dtoa_r+0x3b0>
    34d4:	7f 22 f0 00 	bra 355c <_dtoa_r+0x428> || nop
    34d8:	64 01 f0 00 	ldi r4,#1 || nop
    34dc:	a4 4f 00 34 	st r4,@(52,sp)
    34e0:	7f 04 f0 00 	bra 34f0 <_dtoa_r+0x3bc> || nop
    34e4:	65 01 7f 09 	ldi r5,#1 -> bra 3508 <_dtoa_r+0x3d4>
    34e8:	66 00 f0 00 	ldi r6,#0 || nop
    34ec:	a6 4f 00 34 	st r6,@(52,sp)
    34f0:	a4 cf 00 7c 	ld r4,@(124,sp)
    34f4:	b0 c4 00 22 	blez r4,357c <_dtoa_r+0x448>
    34f8:	a4 4f 00 38 	st r4,@(56,sp)
    34fc:	a4 4f 00 24 	st r4,@(36,sp)
    3500:	7f 27 f0 00 	bra 359c <_dtoa_r+0x468> || nop
    3504:	65 00 f0 00 	ldi r5,#0 || nop
    3508:	a4 cf 00 0c 	ld r4,@(12,sp)
    350c:	a5 4f 00 34 	st r5,@(52,sp)
    3510:	a6 cf 00 7c 	ld r6,@(124,sp)
    3514:	06 a4 f0 00 	add r6,r4 || nop
    3518:	a6 4f 00 38 	st r6,@(56,sp)
    351c:	14 86 44 01 	mv r4,r6 -> addi r4,#1
    3520:	a4 4f 00 24 	st r4,@(36,sp)
    3524:	b0 c4 00 1d 	blez r4,3598 <_dtoa_r+0x464>
    3528:	7f 1d f0 00 	bra 359c <_dtoa_r+0x468> || nop
    352c:	65 00 f0 00 	ldi r5,#0 || nop
    3530:	a5 4f 00 2c 	st r5,@(44,sp)
    3534:	66 01 f0 00 	ldi r6,#1 || nop
    3538:	a6 4f 00 34 	st r6,@(52,sp)
    353c:	64 ff f0 00 	ldi r4,#-1 || nop
    3540:	a4 4f 00 38 	st r4,@(56,sp)
    3544:	65 ff f0 00 	ldi r5,#-1 || nop
    3548:	a5 4f 00 24 	st r5,@(36,sp)
    354c:	66 00 f0 00 	ldi r6,#0 || nop
    3550:	a6 4f 00 7c 	st r6,@(124,sp)
    3554:	68 01 f0 00 	ldi r8,#1 || nop
    3558:	64 12 7f 11 	ldi r4,#18 -> bra 359c <_dtoa_r+0x468>
    355c:	64 01 f0 00 	ldi r4,#1 || nop
    3560:	a4 4f 00 34 	st r4,@(52,sp)
    3564:	65 ff f0 00 	ldi r5,#-1 || nop
    3568:	a5 4f 00 38 	st r5,@(56,sp)
    356c:	66 ff f0 00 	ldi r6,#-1 || nop
    3570:	a6 4f 00 24 	st r6,@(36,sp)
    3574:	64 12 f0 00 	ldi r4,#18 || nop
    3578:	65 00 7f 06 	ldi r5,#0 -> bra 3590 <_dtoa_r+0x45c>
    357c:	66 01 f0 00 	ldi r6,#1 || nop
    3580:	a6 4f 00 38 	st r6,@(56,sp)
    3584:	64 01 f0 00 	ldi r4,#1 || nop
    3588:	a4 4f 00 24 	st r4,@(36,sp)
    358c:	65 01 f0 00 	ldi r5,#1 || nop
    3590:	a5 4f 00 7c 	st r5,@(124,sp)
    3594:	7f 02 f0 00 	bra 359c <_dtoa_r+0x468> || nop
    3598:	64 01 f0 00 	ldi r4,#1 || nop
    359c:	65 00 f0 00 	ldi r5,#0 || nop
    35a0:	a5 4c 00 44 	st r5,@(68,r12)
    35a4:	65 04 f0 00 	ldi r5,#4 || nop
    35a8:	7f 04 f0 00 	bra 35b8 <_dtoa_r+0x484> || nop
    35ac:	41 01 f0 00 	addi r1,#1 || nop
    35b0:	a1 4c 00 44 	st r1,@(68,r12)
    35b4:	55 41 f0 00 	slli r5,#0x1 || nop
    35b8:	86 a5 00 14 	add3 r6,r5,#20
    35bc:	a1 cc 00 44 	ld r1,@(68,r12)
    35c0:	04 56 7d fb 	cmpu r4,r6 -> bnc 35ac <_dtoa_r+0x478>
    35c4:	10 8c f0 00 	mv r0,r12 || nop
    35c8:	fe 00 07 72 	bl 5390 <_Balloc>
    35cc:	a6 cf 00 24 	ld r6,@(36,sp)
    35d0:	a0 4f 00 18 	st r0,@(24,sp)
    35d4:	a0 4c 00 40 	st r0,@(64,r12)
    35d8:	64 0e 04 56 	ldi r4,#14 -> cmpu r4,r6
    35dc:	fc 00 01 06 	bc 39f4 <_dtoa_r+0x8c0>
    35e0:	b0 88 01 05 	beqz r8,39f4 <_dtoa_r+0x8c0>
    35e4:	a5 cf 00 14 	ld r5,@(20,sp)
    35e8:	a4 cf 00 10 	ld r4,@(16,sp)
    35ec:	a5 4f 00 50 	st r5,@(80,sp)
    35f0:	a5 cf 00 0c 	ld r5,@(12,sp)
    35f4:	a4 4f 00 4c 	st r4,@(76,sp)
    35f8:	b0 c5 00 2b 	blez r5,36a4 <_dtoa_r+0x570>
    35fc:	e6 00 92 74 	ld24 r6,9274 <__mprec_tens>
    3600:	64 0f 04 c5 	ldi r4,#15 -> and r4,r5
    3604:	54 43 04 a6 	slli r4,#0x3 -> add r4,r6
    3608:	a9 c4 00 04 	ld r9,@(4,r4)
    360c:	1a 85 f0 00 	mv r10,r5 || nop
    3610:	28 c4 f0 00 	ld r8,@r4 || nop
    3614:	5a 24 f0 00 	srai r10,#0x4 || nop
    3618:	64 10 04 ca 	ldi r4,#16 -> and r4,r10
    361c:	b0 84 00 0b 	beqz r4,3648 <_dtoa_r+0x514>
    3620:	e4 00 92 4c 	ld24 r4,924c <__mprec_bigtens>
    3624:	a0 cf 00 4c 	ld r0,@(76,sp)
    3628:	8a ca 00 0f 	and3 r10,r10,#0xf
    362c:	a1 cf 00 50 	ld r1,@(80,sp)
    3630:	a2 c4 00 20 	ld r2,@(32,r4)
    3634:	a3 c4 00 24 	ld r3,@(36,r4)
    3638:	fe 00 13 f4 	bl 8608 <__divdf3>
    363c:	a0 4f 00 10 	st r0,@(16,sp)
    3640:	a1 4f 00 14 	st r1,@(20,sp)
    3644:	6d 03 7f 02 	ldi fp,#3 -> bra 364c <_dtoa_r+0x518>
    3648:	6d 02 f0 00 	ldi fp,#2 || nop
    364c:	eb 00 92 4c 	ld24 r11,924c <__mprec_bigtens>
    3650:	7f 0c f0 00 	bra 3680 <_dtoa_r+0x54c> || nop
    3654:	64 01 04 ca 	ldi r4,#1 -> and r4,r10
    3658:	b0 84 00 08 	beqz r4,3678 <_dtoa_r+0x544>
    365c:	a3 cb 00 04 	ld r3,@(4,r11)
    3660:	10 88 22 cb 	mv r0,r8 -> ld r2,@r11
    3664:	11 89 f0 00 	mv r1,r9 || nop
    3668:	4d 01 f0 00 	addi fp,#1 || nop
    366c:	fe 00 13 35 	bl 8340 <__muldf3>
    3670:	18 80 f0 00 	mv r8,r0 || nop
    3674:	19 81 f0 00 	mv r9,r1 || nop
    3678:	5a 21 f0 00 	srai r10,#0x1 || nop
    367c:	4b 08 f0 00 	addi r11,#8 || nop
    3680:	b0 9a ff f5 	bnez r10,3654 <_dtoa_r+0x520>
    3684:	a0 cf 00 10 	ld r0,@(16,sp)
    3688:	12 88 f0 00 	mv r2,r8 || nop
    368c:	a1 cf 00 14 	ld r1,@(20,sp)
    3690:	13 89 f0 00 	mv r3,r9 || nop
    3694:	fe 00 13 dd 	bl 8608 <__divdf3>
    3698:	a0 4f 00 10 	st r0,@(16,sp)
    369c:	a1 4f 00 14 	st r1,@(20,sp)
    36a0:	7f 1e f0 00 	bra 3718 <_dtoa_r+0x5e4> || nop
    36a4:	a4 cf 00 0c 	ld r4,@(12,sp)
    36a8:	08 34 f0 00 	neg r8,r4 || nop
    36ac:	b0 88 00 1a 	beqz r8,3714 <_dtoa_r+0x5e0>
    36b0:	e5 00 92 74 	ld24 r5,9274 <__mprec_tens>
    36b4:	a0 cf 00 4c 	ld r0,@(76,sp)
    36b8:	64 0f f0 00 	ldi r4,#15 || nop
    36bc:	a1 cf 00 50 	ld r1,@(80,sp)
    36c0:	e9 00 92 4c 	ld24 r9,924c <__mprec_bigtens>
    36c4:	04 c8 54 43 	and r4,r8 -> slli r4,#0x3
    36c8:	04 a5 f0 00 	add r4,r5 || nop
    36cc:	a3 c4 00 04 	ld r3,@(4,r4)
    36d0:	58 24 f0 00 	srai r8,#0x4 || nop
    36d4:	22 c4 f0 00 	ld r2,@r4 || nop
    36d8:	fe 00 13 1a 	bl 8340 <__muldf3>
    36dc:	6d 02 f0 00 	ldi fp,#2 || nop
    36e0:	7f 09 f0 00 	bra 3704 <_dtoa_r+0x5d0> || nop
    36e4:	64 01 04 c8 	ldi r4,#1 -> and r4,r8
    36e8:	b0 84 00 05 	beqz r4,36fc <_dtoa_r+0x5c8>
    36ec:	a3 c9 00 04 	ld r3,@(4,r9)
    36f0:	4d 01 f0 00 	addi fp,#1 || nop
    36f4:	22 c9 f0 00 	ld r2,@r9 || nop
    36f8:	fe 00 13 12 	bl 8340 <__muldf3>
    36fc:	58 21 f0 00 	srai r8,#0x1 || nop
    3700:	49 08 f0 00 	addi r9,#8 || nop
    3704:	b0 98 ff f8 	bnez r8,36e4 <_dtoa_r+0x5b0>
    3708:	a0 4f 00 10 	st r0,@(16,sp)
    370c:	a1 4f 00 14 	st r1,@(20,sp)
    3710:	7f 02 f0 00 	bra 3718 <_dtoa_r+0x5e4> || nop
    3714:	6d 02 f0 00 	ldi fp,#2 || nop
    3718:	a5 cf 00 48 	ld r5,@(72,sp)
    371c:	b0 85 00 18 	beqz r5,377c <_dtoa_r+0x648>
    3720:	a8 cf 00 10 	ld r8,@(16,sp)
    3724:	d2 c0 3f f0 	seth r2,#0x3ff0
    3728:	a9 cf 00 14 	ld r9,@(20,sp)
    372c:	10 88 63 00 	mv r0,r8 -> ldi r3,#0
    3730:	11 89 f0 00 	mv r1,r9 || nop
    3734:	fe 00 14 7f 	bl 8930 <__ltdf2>
    3738:	b0 b0 00 16 	bgez r0,3790 <_dtoa_r+0x65c>
    373c:	a6 cf 00 24 	ld r6,@(36,sp)
    3740:	b0 86 00 19 	beqz r6,37a4 <_dtoa_r+0x670>
    3744:	a4 cf 00 38 	ld r4,@(56,sp)
    3748:	b0 c4 00 a7 	blez r4,39e4 <_dtoa_r+0x8b0>
    374c:	a5 cf 00 0c 	ld r5,@(12,sp)
    3750:	d2 c0 40 24 	seth r2,#0x4024
    3754:	10 88 f0 00 	mv r0,r8 || nop
    3758:	45 ff f0 00 	addi r5,#-1 || nop
    375c:	a5 4f 00 40 	st r5,@(64,sp)
    3760:	11 89 63 00 	mv r1,r9 -> ldi r3,#0
    3764:	fe 00 12 f7 	bl 8340 <__muldf3>
    3768:	a0 4f 00 10 	st r0,@(16,sp)
    376c:	a1 4f 00 14 	st r1,@(20,sp)
    3770:	a6 cf 00 38 	ld r6,@(56,sp)
    3774:	4d 01 f0 00 	addi fp,#1 || nop
    3778:	7f 0e f0 00 	bra 37b0 <_dtoa_r+0x67c> || nop
    377c:	a4 cf 00 0c 	ld r4,@(12,sp)
    3780:	a5 cf 00 24 	ld r5,@(36,sp)
    3784:	a4 4f 00 40 	st r4,@(64,sp)
    3788:	a5 4f 00 3c 	st r5,@(60,sp)
    378c:	7f 0a f0 00 	bra 37b4 <_dtoa_r+0x680> || nop
    3790:	a6 cf 00 0c 	ld r6,@(12,sp)
    3794:	a4 cf 00 24 	ld r4,@(36,sp)
    3798:	a6 4f 00 40 	st r6,@(64,sp)
    379c:	a4 4f 00 3c 	st r4,@(60,sp)
    37a0:	7f 05 f0 00 	bra 37b4 <_dtoa_r+0x680> || nop
    37a4:	a5 cf 00 0c 	ld r5,@(12,sp)
    37a8:	66 00 f0 00 	ldi r6,#0 || nop
    37ac:	a5 4f 00 40 	st r5,@(64,sp)
    37b0:	a6 4f 00 3c 	st r6,@(60,sp)
    37b4:	aa cf 00 10 	ld r10,@(16,sp)
    37b8:	10 8d f0 00 	mv r0,fp || nop
    37bc:	ab cf 00 14 	ld r11,@(20,sp)
    37c0:	fe 00 14 73 	bl 898c <__floatsidf>
    37c4:	12 8a 13 8b 	mv r2,r10 -> mv r3,r11
    37c8:	fe 00 12 de 	bl 8340 <__muldf3>
    37cc:	d2 c0 40 1c 	seth r2,#0x401c
    37d0:	63 00 f0 00 	ldi r3,#0 || nop
    37d4:	fe 00 12 b4 	bl 82a4 <__adddf3>
    37d8:	a4 cf 00 3c 	ld r4,@(60,sp)
    37dc:	dd c0 fc c0 	seth fp,#0xfcc0
    37e0:	18 80 f0 00 	mv r8,r0 || nop
    37e4:	19 81 f0 00 	mv r9,r1 || nop
    37e8:	0d a8 f0 00 	add fp,r8 || nop
    37ec:	b0 94 00 0f 	bnez r4,3828 <_dtoa_r+0x6f4>
    37f0:	d2 c0 40 14 	seth r2,#0x4014
    37f4:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    37f8:	63 00 f0 00 	ldi r3,#0 || nop
    37fc:	fe 00 12 bc 	bl 82ec <__subdf3>
    3800:	12 8d 13 89 	mv r2,fp -> mv r3,r9
    3804:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    3808:	fe 00 14 1c 	bl 8878 <__gtdf2>
    380c:	b0 d0 01 ab 	bgtz r0,3eb8 <_dtoa_r+0xd84>
    3810:	d2 c0 80 00 	seth r2,#0x8000
    3814:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    3818:	02 ad 13 89 	add r2,fp -> mv r3,r9
    381c:	fe 00 14 45 	bl 8930 <__ltdf2>
    3820:	b0 a0 01 9f 	bltz r0,3e9c <_dtoa_r+0xd68>
    3824:	7f 70 f0 00 	bra 39e4 <_dtoa_r+0x8b0> || nop
    3828:	a4 cf 00 3c 	ld r4,@(60,sp)
    382c:	a5 cf 00 34 	ld r5,@(52,sp)
    3830:	44 ff f0 00 	addi r4,#-1 || nop
    3834:	54 43 f0 00 	slli r4,#0x3 || nop
    3838:	b0 85 00 32 	beqz r5,3900 <_dtoa_r+0x7cc>
    383c:	e6 00 92 74 	ld24 r6,9274 <__mprec_tens>
    3840:	d0 c0 3f e0 	seth r0,#0x3fe0
    3844:	04 a6 f0 00 	add r4,r6 || nop
    3848:	a3 c4 00 04 	ld r3,@(4,r4)
    384c:	61 00 22 c4 	ldi r1,#0 -> ld r2,@r4
    3850:	fe 00 13 6e 	bl 8608 <__divdf3>
    3854:	12 8d f0 00 	mv r2,fp || nop
    3858:	13 89 f0 00 	mv r3,r9 || nop
    385c:	fe 00 12 a4 	bl 82ec <__subdf3>
    3860:	ad cf 00 18 	ld fp,@(24,sp)
    3864:	18 80 f0 00 	mv r8,r0 || nop
    3868:	19 81 f0 00 	mv r9,r1 || nop
    386c:	11 8b 10 8a 	mv r1,r11 -> mv r0,r10
    3870:	fe 00 14 6e 	bl 8a28 <__fixdfsi>
    3874:	a0 4f 00 58 	st r0,@(88,sp)
    3878:	fe 00 14 45 	bl 898c <__floatsidf>
    387c:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    3880:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    3884:	fe 00 12 9a 	bl 82ec <__subdf3>
    3888:	a4 cf 00 58 	ld r4,@(88,sp)
    388c:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    3890:	44 30 f0 00 	addi r4,#48 || nop
    3894:	24 0d 4d 01 	stb r4,@fp -> addi fp,#1
    3898:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    389c:	fe 00 14 25 	bl 8930 <__ltdf2>
    38a0:	b0 a0 02 55 	bltz r0,41f4 <_dtoa_r+0x10c0>
    38a4:	d0 c0 3f f0 	seth r0,#0x3ff0
    38a8:	12 8a 13 8b 	mv r2,r10 -> mv r3,r11
    38ac:	61 00 f0 00 	ldi r1,#0 || nop
    38b0:	fe 00 12 8f 	bl 82ec <__subdf3>
    38b4:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    38b8:	fe 00 14 1e 	bl 8930 <__ltdf2>
    38bc:	b0 a0 00 94 	bltz r0,3b0c <_dtoa_r+0x9d8>
    38c0:	a4 cf 00 18 	ld r4,@(24,sp)
    38c4:	15 8d f0 00 	mv r5,fp || nop
    38c8:	a6 cf 00 3c 	ld r6,@(60,sp)
    38cc:	05 24 f0 00 	sub r5,r4 || nop
    38d0:	05 46 7d 45 	cmp r5,r6 -> bnc 39e4 <_dtoa_r+0x8b0>
    38d4:	d2 c0 40 24 	seth r2,#0x4024
    38d8:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    38dc:	63 00 f0 00 	ldi r3,#0 || nop
    38e0:	fe 00 12 98 	bl 8340 <__muldf3>
    38e4:	d2 c0 40 24 	seth r2,#0x4024
    38e8:	18 80 19 81 	mv r8,r0 -> mv r9,r1
    38ec:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    38f0:	63 00 f0 00 	ldi r3,#0 || nop
    38f4:	fe 00 12 93 	bl 8340 <__muldf3>
    38f8:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    38fc:	7f dc f0 00 	bra 386c <_dtoa_r+0x738> || nop
    3900:	e5 00 92 74 	ld24 r5,9274 <__mprec_tens>
    3904:	04 a5 f0 00 	add r4,r5 || nop
    3908:	a1 c4 00 04 	ld r1,@(4,r4)
    390c:	12 8d 20 c4 	mv r2,fp -> ld r0,@r4
    3910:	13 89 f0 00 	mv r3,r9 || nop
    3914:	fe 00 12 8b 	bl 8340 <__muldf3>
    3918:	a4 cf 00 3c 	ld r4,@(60,sp)
    391c:	a0 4f 00 10 	st r0,@(16,sp)
    3920:	a6 cf 00 18 	ld r6,@(24,sp)
    3924:	a1 4f 00 14 	st r1,@(20,sp)
    3928:	ad cf 00 18 	ld fp,@(24,sp)
    392c:	06 a4 f0 00 	add r6,r4 || nop
    3930:	a6 4f 00 3c 	st r6,@(60,sp)
    3934:	11 8b 10 8a 	mv r1,r11 -> mv r0,r10
    3938:	fe 00 14 3c 	bl 8a28 <__fixdfsi>
    393c:	a0 4f 00 58 	st r0,@(88,sp)
    3940:	fe 00 14 13 	bl 898c <__floatsidf>
    3944:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    3948:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    394c:	fe 00 12 68 	bl 82ec <__subdf3>
    3950:	a4 cf 00 58 	ld r4,@(88,sp)
    3954:	18 80 f0 00 	mv r8,r0 || nop
    3958:	a5 cf 00 3c 	ld r5,@(60,sp)
    395c:	44 30 f0 00 	addi r4,#48 || nop
    3960:	24 0d 4d 01 	stb r4,@fp -> addi fp,#1
    3964:	19 81 f0 00 	mv r9,r1 || nop
    3968:	bd 15 00 1a 	bne fp,r5,39d0 <_dtoa_r+0x89c>
    396c:	a0 cf 00 10 	ld r0,@(16,sp)
    3970:	d2 c0 3f e0 	seth r2,#0x3fe0
    3974:	a1 cf 00 14 	ld r1,@(20,sp)
    3978:	63 00 f0 00 	ldi r3,#0 || nop
    397c:	fe 00 12 4a 	bl 82a4 <__adddf3>
    3980:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    3984:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    3988:	fe 00 13 bc 	bl 8878 <__gtdf2>
    398c:	b0 d0 00 63 	bgtz r0,3b18 <_dtoa_r+0x9e4>
    3990:	a2 cf 00 10 	ld r2,@(16,sp)
    3994:	d0 c0 3f e0 	seth r0,#0x3fe0
    3998:	a3 cf 00 14 	ld r3,@(20,sp)
    399c:	61 00 f0 00 	ldi r1,#0 || nop
    39a0:	fe 00 12 53 	bl 82ec <__subdf3>
    39a4:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    39a8:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    39ac:	fe 00 13 e1 	bl 8930 <__ltdf2>
    39b0:	b0 a0 00 03 	bltz r0,39bc <_dtoa_r+0x888>
    39b4:	7f 0c f0 00 	bra 39e4 <_dtoa_r+0x8b0> || nop
    39b8:	1d 86 f0 00 	mv fp,r6 || nop
    39bc:	a5 8d ff ff 	ldb r5,@(-1,fp)
    39c0:	86 ad ff ff 	add3 r6,fp,#-1
    39c4:	45 d0 f0 00 	addi r5,#-48 || nop
    39c8:	b0 85 ff fc 	beqz r5,39b8 <_dtoa_r+0x884>
    39cc:	ff 00 02 0a 	bra 41f4 <_dtoa_r+0x10c0>
    39d0:	d2 c0 40 24 	seth r2,#0x4024
    39d4:	63 00 f0 00 	ldi r3,#0 || nop
    39d8:	fe 00 12 5a 	bl 8340 <__muldf3>
    39dc:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    39e0:	7f d5 f0 00 	bra 3934 <_dtoa_r+0x800> || nop
    39e4:	a4 cf 00 4c 	ld r4,@(76,sp)
    39e8:	a5 cf 00 50 	ld r5,@(80,sp)
    39ec:	a4 4f 00 10 	st r4,@(16,sp)
    39f0:	a5 4f 00 14 	st r5,@(20,sp)
    39f4:	a4 cf 00 04 	ld r4,@(4,sp)
    39f8:	b0 a4 00 5b 	bltz r4,3b64 <_dtoa_r+0xa30>
    39fc:	a6 cf 00 0c 	ld r6,@(12,sp)
    3a00:	65 0e 05 46 	ldi r5,#14 -> cmp r5,r6
    3a04:	7c 58 f0 00 	bc 3b64 <_dtoa_r+0xa30> || nop
    3a08:	e5 00 92 74 	ld24 r5,9274 <__mprec_tens>
    3a0c:	14 86 f0 00 	mv r4,r6 || nop
    3a10:	a6 cf 00 7c 	ld r6,@(124,sp)
    3a14:	54 43 04 a5 	slli r4,#0x3 -> add r4,r5
    3a18:	a9 c4 00 04 	ld r9,@(4,r4)
    3a1c:	28 c4 f0 00 	ld r8,@r4 || nop
    3a20:	b0 b6 00 0f 	bgez r6,3a5c <_dtoa_r+0x928>
    3a24:	a4 cf 00 24 	ld r4,@(36,sp)
    3a28:	b0 d4 00 0d 	bgtz r4,3a5c <_dtoa_r+0x928>
    3a2c:	b0 94 01 1c 	bnez r4,3e9c <_dtoa_r+0xd68>
    3a30:	d2 c0 40 14 	seth r2,#0x4014
    3a34:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    3a38:	63 00 f0 00 	ldi r3,#0 || nop
    3a3c:	fe 00 12 41 	bl 8340 <__muldf3>
    3a40:	a2 cf 00 10 	ld r2,@(16,sp)
    3a44:	69 00 f0 00 	ldi r9,#0 || nop
    3a48:	a3 cf 00 14 	ld r3,@(20,sp)
    3a4c:	68 00 f0 00 	ldi r8,#0 || nop
    3a50:	fe 00 13 a1 	bl 88d4 <__gedf2>
    3a54:	b0 b0 01 14 	bgez r0,3ea4 <_dtoa_r+0xd70>
    3a58:	ff 00 01 1c 	bra 3ec8 <_dtoa_r+0xd94>
    3a5c:	aa cf 00 10 	ld r10,@(16,sp)
    3a60:	ab cf 00 14 	ld r11,@(20,sp)
    3a64:	ad cf 00 18 	ld fp,@(24,sp)
    3a68:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    3a6c:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    3a70:	fe 00 12 e6 	bl 8608 <__divdf3>
    3a74:	fe 00 13 ed 	bl 8a28 <__fixdfsi>
    3a78:	a0 4f 00 10 	st r0,@(16,sp)
    3a7c:	fe 00 13 c4 	bl 898c <__floatsidf>
    3a80:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    3a84:	fe 00 12 2f 	bl 8340 <__muldf3>
    3a88:	12 80 13 81 	mv r2,r0 -> mv r3,r1
    3a8c:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    3a90:	fe 00 12 17 	bl 82ec <__subdf3>
    3a94:	a5 cf 00 10 	ld r5,@(16,sp)
    3a98:	12 80 f0 00 	mv r2,r0 || nop
    3a9c:	a6 cf 00 18 	ld r6,@(24,sp)
    3aa0:	45 30 f0 00 	addi r5,#48 || nop
    3aa4:	a4 cf 00 24 	ld r4,@(36,sp)
    3aa8:	25 0d 4d 01 	stb r5,@fp -> addi fp,#1
    3aac:	15 8d 05 26 	mv r5,fp -> sub r5,r6
    3ab0:	13 81 f0 00 	mv r3,r1 || nop
    3ab4:	b5 14 00 24 	bne r5,r4,3b44 <_dtoa_r+0xa10>
    3ab8:	fe 00 11 fb 	bl 82a4 <__adddf3>
    3abc:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    3ac0:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    3ac4:	fe 00 13 6d 	bl 8878 <__gtdf2>
    3ac8:	b0 d0 00 18 	bgtz r0,3b28 <_dtoa_r+0x9f4>
    3acc:	10 8a 11 8b 	mv r0,r10 -> mv r1,r11
    3ad0:	12 88 13 89 	mv r2,r8 -> mv r3,r9
    3ad4:	fe 00 13 3b 	bl 87c0 <__eqdf2>
    3ad8:	b0 90 01 c9 	bnez r0,41fc <_dtoa_r+0x10c8>
    3adc:	a6 cf 00 10 	ld r6,@(16,sp)
    3ae0:	65 01 05 c6 	ldi r5,#1 -> and r5,r6
    3ae4:	b0 95 00 11 	bnez r5,3b28 <_dtoa_r+0x9f4>
    3ae8:	ff 00 01 c5 	bra 41fc <_dtoa_r+0x10c8>
    3aec:	a4 cf 00 18 	ld r4,@(24,sp)
    3af0:	b5 14 00 0d 	bne r5,r4,3b24 <_dtoa_r+0x9f0>
    3af4:	a6 cf 00 0c 	ld r6,@(12,sp)
    3af8:	46 01 f0 00 	addi r6,#1 || nop
    3afc:	a6 4f 00 0c 	st r6,@(12,sp)
    3b00:	66 30 f0 00 	ldi r6,#48 || nop
    3b04:	26 04 f0 00 	stb r6,@r4 || nop
    3b08:	7f 0c f0 00 	bra 3b38 <_dtoa_r+0xa04> || nop
    3b0c:	a4 cf 00 40 	ld r4,@(64,sp)
    3b10:	a4 4f 00 0c 	st r4,@(12,sp)
    3b14:	7f 05 f0 00 	bra 3b28 <_dtoa_r+0x9f4> || nop
    3b18:	a5 cf 00 40 	ld r5,@(64,sp)
    3b1c:	a5 4f 00 0c 	st r5,@(12,sp)
    3b20:	7f 02 f0 00 	bra 3b28 <_dtoa_r+0x9f4> || nop
    3b24:	1d 85 f0 00 	mv fp,r5 || nop
    3b28:	a6 8d ff ff 	ldb r6,@(-1,fp)
    3b2c:	85 ad ff ff 	add3 r5,fp,#-1
    3b30:	46 c7 f0 00 	addi r6,#-57 || nop
    3b34:	b0 86 ff ee 	beqz r6,3aec <_dtoa_r+0x9b8>
    3b38:	26 95 46 01 	ldub r6,@r5 -> addi r6,#1
    3b3c:	26 05 f0 00 	stb r6,@r5 || nop
    3b40:	ff 00 01 af 	bra 41fc <_dtoa_r+0x10c8>
    3b44:	d2 c0 40 24 	seth r2,#0x4024
    3b48:	63 00 f0 00 	ldi r3,#0 || nop
    3b4c:	fe 00 11 fd 	bl 8340 <__muldf3>
    3b50:	62 00 63 00 	ldi r2,#0 -> ldi r3,#0
    3b54:	1a 80 1b 81 	mv r10,r0 -> mv r11,r1
    3b58:	fe 00 13 1a 	bl 87c0 <__eqdf2>
    3b5c:	b0 90 ff c3 	bnez r0,3a68 <_dtoa_r+0x934>
    3b60:	ff 00 01 a7 	bra 41fc <_dtoa_r+0x10c8>
    3b64:	a6 cf 00 34 	ld r6,@(52,sp)
    3b68:	b0 86 00 2c 	beqz r6,3c18 <_dtoa_r+0xae4>
    3b6c:	a6 cf 00 2c 	ld r6,@(44,sp)
    3b70:	65 01 05 46 	ldi r5,#1 -> cmp r5,r6
    3b74:	7c 0a f0 00 	bc 3b9c <_dtoa_r+0xa68> || nop
    3b78:	a5 cf 00 54 	ld r5,@(84,sp)
    3b7c:	b0 85 00 03 	beqz r5,3b88 <_dtoa_r+0xa54>
    3b80:	84 a4 04 33 	add3 r4,r4,#1075
    3b84:	7f 03 f0 00 	bra 3b90 <_dtoa_r+0xa5c> || nop
    3b88:	a5 cf 00 08 	ld r5,@(8,sp)
    3b8c:	64 36 04 25 	ldi r4,#54 -> sub r4,r5
    3b90:	a9 cf 00 30 	ld r9,@(48,sp)
    3b94:	aa cf 00 20 	ld r10,@(32,sp)
    3b98:	7f 15 f0 00 	bra 3bec <_dtoa_r+0xab8> || nop
    3b9c:	a4 cf 00 24 	ld r4,@(36,sp)
    3ba0:	a6 cf 00 30 	ld r6,@(48,sp)
    3ba4:	44 ff f0 00 	addi r4,#-1 || nop
    3ba8:	06 44 7c 04 	cmp r6,r4 -> bc 3bb8 <_dtoa_r+0xa84>
    3bac:	19 86 f0 00 	mv r9,r6 || nop
    3bb0:	09 24 f0 00 	sub r9,r4 || nop
    3bb4:	7f 08 f0 00 	bra 3bd4 <_dtoa_r+0xaa0> || nop
    3bb8:	a6 cf 00 30 	ld r6,@(48,sp)
    3bbc:	a4 4f 00 30 	st r4,@(48,sp)
    3bc0:	15 84 05 26 	mv r5,r4 -> sub r5,r6
    3bc4:	a6 cf 00 44 	ld r6,@(68,sp)
    3bc8:	69 00 f0 00 	ldi r9,#0 || nop
    3bcc:	06 a5 f0 00 	add r6,r5 || nop
    3bd0:	a6 4f 00 44 	st r6,@(68,sp)
    3bd4:	a4 cf 00 24 	ld r4,@(36,sp)
    3bd8:	aa cf 00 20 	ld r10,@(32,sp)
    3bdc:	b0 b4 00 03 	bgez r4,3be8 <_dtoa_r+0xab4>
    3be0:	0a 24 f0 00 	sub r10,r4 || nop
    3be4:	64 00 7f 02 	ldi r4,#0 -> bra 3bec <_dtoa_r+0xab8>
    3be8:	a4 cf 00 24 	ld r4,@(36,sp)
    3bec:	a5 cf 00 20 	ld r5,@(32,sp)
    3bf0:	10 8c f0 00 	mv r0,r12 || nop
    3bf4:	a6 cf 00 28 	ld r6,@(40,sp)
    3bf8:	05 a4 f0 00 	add r5,r4 || nop
    3bfc:	a5 4f 00 20 	st r5,@(32,sp)
    3c00:	06 a4 f0 00 	add r6,r4 || nop
    3c04:	a6 4f 00 28 	st r6,@(40,sp)
    3c08:	61 01 f0 00 	ldi r1,#1 || nop
    3c0c:	fe 00 06 b5 	bl 56e0 <__i2b>
    3c10:	18 80 f0 00 	mv r8,r0 || nop
    3c14:	7f 04 f0 00 	bra 3c24 <_dtoa_r+0xaf0> || nop
    3c18:	a9 cf 00 30 	ld r9,@(48,sp)
    3c1c:	68 00 f0 00 	ldi r8,#0 || nop
    3c20:	aa cf 00 20 	ld r10,@(32,sp)
    3c24:	b0 8a 00 0c 	beqz r10,3c54 <_dtoa_r+0xb20>
    3c28:	a4 cf 00 28 	ld r4,@(40,sp)
    3c2c:	b0 c4 00 0a 	blez r4,3c54 <_dtoa_r+0xb20>
    3c30:	0a 44 7d 02 	cmp r10,r4 -> bnc 3c38 <_dtoa_r+0xb04>
    3c34:	14 8a f0 00 	mv r4,r10 || nop
    3c38:	a5 cf 00 20 	ld r5,@(32,sp)
    3c3c:	0a 24 f0 00 	sub r10,r4 || nop
    3c40:	a6 cf 00 28 	ld r6,@(40,sp)
    3c44:	05 24 f0 00 	sub r5,r4 || nop
    3c48:	a5 4f 00 20 	st r5,@(32,sp)
    3c4c:	06 24 f0 00 	sub r6,r4 || nop
    3c50:	a6 4f 00 28 	st r6,@(40,sp)
    3c54:	a4 cf 00 30 	ld r4,@(48,sp)
    3c58:	b0 c4 00 1a 	blez r4,3cc0 <_dtoa_r+0xb8c>
    3c5c:	a5 cf 00 34 	ld r5,@(52,sp)
    3c60:	b0 85 00 13 	beqz r5,3cac <_dtoa_r+0xb78>
    3c64:	b0 c9 00 0d 	blez r9,3c98 <_dtoa_r+0xb64>
    3c68:	11 88 12 89 	mv r1,r8 -> mv r2,r9
    3c6c:	10 8c f0 00 	mv r0,r12 || nop
    3c70:	fe 00 07 09 	bl 5894 <__pow5mult>
    3c74:	a2 cf 00 1c 	ld r2,@(28,sp)
    3c78:	18 80 f0 00 	mv r8,r0 || nop
    3c7c:	11 88 10 8c 	mv r1,r8 -> mv r0,r12
    3c80:	fe 00 06 a1 	bl 5704 <__multiply>
    3c84:	a1 cf 00 1c 	ld r1,@(28,sp)
    3c88:	1b 80 f0 00 	mv r11,r0 || nop
    3c8c:	10 8c f0 00 	mv r0,r12 || nop
    3c90:	fe 00 05 e0 	bl 5410 <_Bfree>
    3c94:	ab 4f 00 1c 	st r11,@(28,sp)
    3c98:	a2 cf 00 30 	ld r2,@(48,sp)
    3c9c:	02 29 f0 00 	sub r2,r9 || nop
    3ca0:	b0 82 00 08 	beqz r2,3cc0 <_dtoa_r+0xb8c>
    3ca4:	a1 cf 00 1c 	ld r1,@(28,sp)
    3ca8:	10 8c 7f 04 	mv r0,r12 -> bra 3cb8 <_dtoa_r+0xb84>
    3cac:	a1 cf 00 1c 	ld r1,@(28,sp)
    3cb0:	10 8c f0 00 	mv r0,r12 || nop
    3cb4:	a2 cf 00 30 	ld r2,@(48,sp)
    3cb8:	fe 00 06 f7 	bl 5894 <__pow5mult>
    3cbc:	a0 4f 00 1c 	st r0,@(28,sp)
    3cc0:	10 8c 61 01 	mv r0,r12 -> ldi r1,#1
    3cc4:	fe 00 06 87 	bl 56e0 <__i2b>
    3cc8:	a6 cf 00 44 	ld r6,@(68,sp)
    3ccc:	19 80 f0 00 	mv r9,r0 || nop
    3cd0:	b0 c6 00 05 	blez r6,3ce4 <_dtoa_r+0xbb0>
    3cd4:	11 89 10 8c 	mv r1,r9 -> mv r0,r12
    3cd8:	12 86 f0 00 	mv r2,r6 || nop
    3cdc:	fe 00 06 ee 	bl 5894 <__pow5mult>
    3ce0:	19 80 f0 00 	mv r9,r0 || nop
    3ce4:	a5 cf 00 2c 	ld r5,@(44,sp)
    3ce8:	64 01 04 45 	ldi r4,#1 -> cmp r4,r5
    3cec:	7c 12 f0 00 	bc 3d34 <_dtoa_r+0xc00> || nop
    3cf0:	a4 cf 00 14 	ld r4,@(20,sp)
    3cf4:	b0 94 00 10 	bnez r4,3d34 <_dtoa_r+0xc00>
    3cf8:	a5 cf 00 10 	ld r5,@(16,sp)
    3cfc:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    3d00:	04 c5 f0 00 	and r4,r5 || nop
    3d04:	b0 94 00 0c 	bnez r4,3d34 <_dtoa_r+0xc00>
    3d08:	d4 c0 7f f0 	seth r4,#0x7ff0
    3d0c:	04 c5 f0 00 	and r4,r5 || nop
    3d10:	b0 84 00 09 	beqz r4,3d34 <_dtoa_r+0xc00>
    3d14:	a6 cf 00 20 	ld r6,@(32,sp)
    3d18:	6b 01 f0 00 	ldi r11,#1 || nop
    3d1c:	a4 cf 00 28 	ld r4,@(40,sp)
    3d20:	46 01 f0 00 	addi r6,#1 || nop
    3d24:	a6 4f 00 20 	st r6,@(32,sp)
    3d28:	44 01 f0 00 	addi r4,#1 || nop
    3d2c:	a4 4f 00 28 	st r4,@(40,sp)
    3d30:	7f 02 f0 00 	bra 3d38 <_dtoa_r+0xc04> || nop
    3d34:	6b 00 f0 00 	ldi r11,#0 || nop
    3d38:	a5 cf 00 44 	ld r5,@(68,sp)
    3d3c:	b0 85 00 07 	beqz r5,3d58 <_dtoa_r+0xc24>
    3d40:	a4 c9 00 10 	ld r4,@(16,r9)
    3d44:	44 04 54 42 	addi r4,#4 -> slli r4,#0x2
    3d48:	04 a9 20 c4 	add r4,r9 -> ld r0,@r4
    3d4c:	fe 00 06 1e 	bl 55c4 <__hi0bits>
    3d50:	64 20 04 20 	ldi r4,#32 -> sub r4,r0
    3d54:	7f 02 f0 00 	bra 3d5c <_dtoa_r+0xc28> || nop
    3d58:	64 01 f0 00 	ldi r4,#1 || nop
    3d5c:	a5 cf 00 28 	ld r5,@(40,sp)
    3d60:	05 a4 64 1f 	add r5,r4 -> ldi r4,#31
    3d64:	04 c5 f0 00 	and r4,r5 || nop
    3d68:	b0 84 00 11 	beqz r4,3dac <_dtoa_r+0xc78>
    3d6c:	65 20 05 24 	ldi r5,#32 -> sub r5,r4
    3d70:	66 04 06 45 	ldi r6,#4 -> cmp r6,r5
    3d74:	7d 0b f0 00 	bnc 3da0 <_dtoa_r+0xc6c> || nop
    3d78:	a6 cf 00 20 	ld r6,@(32,sp)
    3d7c:	65 1c f0 00 	ldi r5,#28 || nop
    3d80:	05 24 f0 00 	sub r5,r4 || nop
    3d84:	a4 cf 00 28 	ld r4,@(40,sp)
    3d88:	06 a5 f0 00 	add r6,r5 || nop
    3d8c:	a6 4f 00 20 	st r6,@(32,sp)
    3d90:	04 a5 f0 00 	add r4,r5 || nop
    3d94:	a4 4f 00 28 	st r4,@(40,sp)
    3d98:	0a a5 f0 00 	add r10,r5 || nop
    3d9c:	7f 0c f0 00 	bra 3dcc <_dtoa_r+0xc98> || nop
    3da0:	84 a5 ff fc 	add3 r4,r5,#-4
    3da4:	b0 84 00 0a 	beqz r4,3dcc <_dtoa_r+0xc98>
    3da8:	14 85 f0 00 	mv r4,r5 || nop
    3dac:	a5 cf 00 20 	ld r5,@(32,sp)
    3db0:	44 1c f0 00 	addi r4,#28 || nop
    3db4:	a6 cf 00 28 	ld r6,@(40,sp)
    3db8:	05 a4 f0 00 	add r5,r4 || nop
    3dbc:	a5 4f 00 20 	st r5,@(32,sp)
    3dc0:	06 a4 f0 00 	add r6,r4 || nop
    3dc4:	a6 4f 00 28 	st r6,@(40,sp)
    3dc8:	0a a4 f0 00 	add r10,r4 || nop
    3dcc:	a4 cf 00 20 	ld r4,@(32,sp)
    3dd0:	b0 c4 00 05 	blez r4,3de4 <_dtoa_r+0xcb0>
    3dd4:	a1 cf 00 1c 	ld r1,@(28,sp)
    3dd8:	10 8c 12 84 	mv r0,r12 -> mv r2,r4
    3ddc:	fe 00 06 e1 	bl 5960 <__lshift>
    3de0:	a0 4f 00 1c 	st r0,@(28,sp)
    3de4:	a5 cf 00 28 	ld r5,@(40,sp)
    3de8:	b0 c5 00 05 	blez r5,3dfc <_dtoa_r+0xcc8>
    3dec:	11 89 10 8c 	mv r1,r9 -> mv r0,r12
    3df0:	12 85 f0 00 	mv r2,r5 || nop
    3df4:	fe 00 06 db 	bl 5960 <__lshift>
    3df8:	19 80 f0 00 	mv r9,r0 || nop
    3dfc:	a6 cf 00 48 	ld r6,@(72,sp)
    3e00:	b0 86 00 18 	beqz r6,3e60 <_dtoa_r+0xd2c>
    3e04:	a0 cf 00 1c 	ld r0,@(28,sp)
    3e08:	11 89 f0 00 	mv r1,r9 || nop
    3e0c:	fe 00 07 1b 	bl 5a78 <__mcmp>
    3e10:	b0 b0 00 14 	bgez r0,3e60 <_dtoa_r+0xd2c>
    3e14:	a4 cf 00 0c 	ld r4,@(12,sp)
    3e18:	10 8c f0 00 	mv r0,r12 || nop
    3e1c:	a1 cf 00 1c 	ld r1,@(28,sp)
    3e20:	44 ff f0 00 	addi r4,#-1 || nop
    3e24:	a4 4f 00 0c 	st r4,@(12,sp)
    3e28:	62 0a 63 00 	ldi r2,#10 -> ldi r3,#0
    3e2c:	fe 00 05 80 	bl 542c <__multadd>
    3e30:	a5 cf 00 34 	ld r5,@(52,sp)
    3e34:	a0 4f 00 1c 	st r0,@(28,sp)
    3e38:	b0 85 00 08 	beqz r5,3e58 <_dtoa_r+0xd24>
    3e3c:	11 88 10 8c 	mv r1,r8 -> mv r0,r12
    3e40:	62 0a 63 00 	ldi r2,#10 -> ldi r3,#0
    3e44:	fe 00 05 7a 	bl 542c <__multadd>
    3e48:	a6 cf 00 38 	ld r6,@(56,sp)
    3e4c:	18 80 f0 00 	mv r8,r0 || nop
    3e50:	a6 4f 00 24 	st r6,@(36,sp)
    3e54:	7f 03 f0 00 	bra 3e60 <_dtoa_r+0xd2c> || nop
    3e58:	a4 cf 00 38 	ld r4,@(56,sp)
    3e5c:	a4 4f 00 24 	st r4,@(36,sp)
    3e60:	a5 cf 00 24 	ld r5,@(36,sp)
    3e64:	b0 d5 00 21 	bgtz r5,3ee8 <_dtoa_r+0xdb4>
    3e68:	a6 cf 00 2c 	ld r6,@(44,sp)
    3e6c:	64 02 04 46 	ldi r4,#2 -> cmp r4,r6
    3e70:	7d 1e f0 00 	bnc 3ee8 <_dtoa_r+0xdb4> || nop
    3e74:	b0 95 00 0c 	bnez r5,3ea4 <_dtoa_r+0xd70>
    3e78:	11 89 10 8c 	mv r1,r9 -> mv r0,r12
    3e7c:	62 05 63 00 	ldi r2,#5 -> ldi r3,#0
    3e80:	fe 00 05 6b 	bl 542c <__multadd>
    3e84:	19 80 f0 00 	mv r9,r0 || nop
    3e88:	a0 cf 00 1c 	ld r0,@(28,sp)
    3e8c:	11 89 f0 00 	mv r1,r9 || nop
    3e90:	fe 00 06 fa 	bl 5a78 <__mcmp>
    3e94:	b0 d0 00 0d 	bgtz r0,3ec8 <_dtoa_r+0xd94>
    3e98:	7f 03 f0 00 	bra 3ea4 <_dtoa_r+0xd70> || nop
    3e9c:	69 00 f0 00 	ldi r9,#0 || nop
    3ea0:	68 00 f0 00 	ldi r8,#0 || nop
    3ea4:	a4 cf 00 7c 	ld r4,@(124,sp)
    3ea8:	ad cf 00 18 	ld fp,@(24,sp)
    3eac:	04 b4 f0 00 	not r4,r4 || nop
    3eb0:	a4 4f 00 0c 	st r4,@(12,sp)
    3eb4:	7f 0b f0 00 	bra 3ee0 <_dtoa_r+0xdac> || nop
    3eb8:	a5 cf 00 40 	ld r5,@(64,sp)
    3ebc:	69 00 f0 00 	ldi r9,#0 || nop
    3ec0:	68 00 f0 00 	ldi r8,#0 || nop
    3ec4:	a5 4f 00 0c 	st r5,@(12,sp)
    3ec8:	a6 cf 00 18 	ld r6,@(24,sp)
    3ecc:	64 31 24 06 	ldi r4,#49 -> stb r4,@r6
    3ed0:	a4 cf 00 0c 	ld r4,@(12,sp)
    3ed4:	1d 86 4d 01 	mv fp,r6 -> addi fp,#1
    3ed8:	44 01 f0 00 	addi r4,#1 || nop
    3edc:	a4 4f 00 0c 	st r4,@(12,sp)
    3ee0:	6a 00 f0 00 	ldi r10,#0 || nop
    3ee4:	ff 00 00 ba 	bra 41cc <_dtoa_r+0x1098>
    3ee8:	a5 cf 00 34 	ld r5,@(52,sp)
    3eec:	b0 95 00 03 	bnez r5,3ef8 <_dtoa_r+0xdc4>
    3ef0:	aa cf 00 18 	ld r10,@(24,sp)
    3ef4:	ff 00 00 80 	bra 40f4 <_dtoa_r+0xfc0>
    3ef8:	b0 ca 00 05 	blez r10,3f0c <_dtoa_r+0xdd8>
    3efc:	11 88 10 8c 	mv r1,r8 -> mv r0,r12
    3f00:	12 8a f0 00 	mv r2,r10 || nop
    3f04:	fe 00 06 97 	bl 5960 <__lshift>
    3f08:	18 80 f0 00 	mv r8,r0 || nop
    3f0c:	b0 8b 00 0e 	beqz r11,3f44 <_dtoa_r+0xe10>
    3f10:	a1 c8 00 04 	ld r1,@(4,r8)
    3f14:	10 8c f0 00 	mv r0,r12 || nop
    3f18:	fe 00 05 1e 	bl 5390 <_Balloc>
    3f1c:	a2 c8 00 10 	ld r2,@(16,r8)
    3f20:	81 a8 00 0c 	add3 r1,r8,#12
    3f24:	1a 80 f0 00 	mv r10,r0 || nop
    3f28:	42 02 52 42 	addi r2,#2 -> slli r2,#0x2
    3f2c:	40 0c f0 00 	addi r0,#12 || nop
    3f30:	fe 00 05 0e 	bl 5368 <memcpy>
    3f34:	10 8c 11 8a 	mv r0,r12 -> mv r1,r10
    3f38:	62 01 f0 00 	ldi r2,#1 || nop
    3f3c:	fe 00 06 89 	bl 5960 <__lshift>
    3f40:	7f 02 f0 00 	bra 3f48 <_dtoa_r+0xe14> || nop
    3f44:	10 88 f0 00 	mv r0,r8 || nop
    3f48:	a6 cf 00 14 	ld r6,@(20,sp)
    3f4c:	6b 01 f0 00 	ldi r11,#1 || nop
    3f50:	ad cf 00 18 	ld fp,@(24,sp)
    3f54:	1a 88 f0 00 	mv r10,r8 || nop
    3f58:	0b c6 f0 00 	and r11,r6 || nop
    3f5c:	18 80 f0 00 	mv r8,r0 || nop
    3f60:	a0 cf 00 1c 	ld r0,@(28,sp)
    3f64:	11 89 f0 00 	mv r1,r9 || nop
    3f68:	fe ff fc 12 	bl 2fb0 <quorem>
    3f6c:	a0 4f 00 10 	st r0,@(16,sp)
    3f70:	15 80 f0 00 	mv r5,r0 || nop
    3f74:	a0 cf 00 1c 	ld r0,@(28,sp)
    3f78:	45 30 f0 00 	addi r5,#48 || nop
    3f7c:	a5 4f 00 5c 	st r5,@(92,sp)
    3f80:	11 8a f0 00 	mv r1,r10 || nop
    3f84:	fe 00 06 bd 	bl 5a78 <__mcmp>
    3f88:	a0 4f 00 20 	st r0,@(32,sp)
    3f8c:	11 89 10 8c 	mv r1,r9 -> mv r0,r12
    3f90:	12 88 f0 00 	mv r2,r8 || nop
    3f94:	fe 00 06 cb 	bl 5ac0 <__mdiff>
    3f98:	a6 c0 00 0c 	ld r6,@(12,r0)
    3f9c:	17 80 f0 00 	mv r7,r0 || nop
    3fa0:	a5 cf 00 5c 	ld r5,@(92,sp)
    3fa4:	b0 96 00 09 	bnez r6,3fc8 <_dtoa_r+0xe94>
    3fa8:	a0 cf 00 1c 	ld r0,@(28,sp)
    3fac:	a7 4f 00 58 	st r7,@(88,sp)
    3fb0:	11 87 f0 00 	mv r1,r7 || nop
    3fb4:	fe 00 06 b1 	bl 5a78 <__mcmp>
    3fb8:	a5 cf 00 5c 	ld r5,@(92,sp)
    3fbc:	16 80 f0 00 	mv r6,r0 || nop
    3fc0:	a7 cf 00 58 	ld r7,@(88,sp)
    3fc4:	7f 02 f0 00 	bra 3fcc <_dtoa_r+0xe98> || nop
    3fc8:	66 01 f0 00 	ldi r6,#1 || nop
    3fcc:	a5 4f 00 5c 	st r5,@(92,sp)
    3fd0:	a6 4f 00 58 	st r6,@(88,sp)
    3fd4:	10 8c 11 87 	mv r0,r12 -> mv r1,r7
    3fd8:	fe 00 05 0e 	bl 5410 <_Bfree>
    3fdc:	a6 cf 00 58 	ld r6,@(88,sp)
    3fe0:	a5 cf 00 5c 	ld r5,@(92,sp)
    3fe4:	b0 96 00 0b 	bnez r6,4010 <_dtoa_r+0xedc>
    3fe8:	a4 cf 00 2c 	ld r4,@(44,sp)
    3fec:	b0 94 00 09 	bnez r4,4010 <_dtoa_r+0xedc>
    3ff0:	b0 9b 00 08 	bnez r11,4010 <_dtoa_r+0xedc>
    3ff4:	86 a5 ff c7 	add3 r6,r5,#-57
    3ff8:	b0 86 00 21 	beqz r6,407c <_dtoa_r+0xf48>
    3ffc:	a6 cf 00 20 	ld r6,@(32,sp)
    4000:	b0 c6 00 23 	blez r6,408c <_dtoa_r+0xf58>
    4004:	a5 cf 00 10 	ld r5,@(16,sp)
    4008:	45 31 f0 00 	addi r5,#49 || nop
    400c:	7f 20 f0 00 	bra 408c <_dtoa_r+0xf58> || nop
    4010:	a4 cf 00 20 	ld r4,@(32,sp)
    4014:	b0 a4 00 05 	bltz r4,4028 <_dtoa_r+0xef4>
    4018:	b0 94 00 16 	bnez r4,4070 <_dtoa_r+0xf3c>
    401c:	a4 cf 00 2c 	ld r4,@(44,sp)
    4020:	b0 94 00 14 	bnez r4,4070 <_dtoa_r+0xf3c>
    4024:	b0 9b 00 13 	bnez r11,4070 <_dtoa_r+0xf3c>
    4028:	1b 85 f0 00 	mv r11,r5 || nop
    402c:	b0 c6 00 18 	blez r6,408c <_dtoa_r+0xf58>
    4030:	a1 cf 00 1c 	ld r1,@(28,sp)
    4034:	a5 4f 00 5c 	st r5,@(92,sp)
    4038:	62 01 10 8c 	ldi r2,#1 -> mv r0,r12
    403c:	fe 00 06 49 	bl 5960 <__lshift>
    4040:	a0 4f 00 1c 	st r0,@(28,sp)
    4044:	11 89 f0 00 	mv r1,r9 || nop
    4048:	fe 00 06 8c 	bl 5a78 <__mcmp>
    404c:	a5 cf 00 5c 	ld r5,@(92,sp)
    4050:	b0 d0 00 04 	bgtz r0,4060 <_dtoa_r+0xf2c>
    4054:	b0 90 00 0e 	bnez r0,408c <_dtoa_r+0xf58>
    4058:	66 01 06 c5 	ldi r6,#1 -> and r6,r5
    405c:	b0 86 00 0c 	beqz r6,408c <_dtoa_r+0xf58>
    4060:	a5 cf 00 10 	ld r5,@(16,sp)
    4064:	4b c7 45 31 	addi r11,#-57 -> addi r5,#49
    4068:	b0 8b 00 05 	beqz r11,407c <_dtoa_r+0xf48>
    406c:	7f 08 f0 00 	bra 408c <_dtoa_r+0xf58> || nop
    4070:	b0 c6 00 09 	blez r6,4094 <_dtoa_r+0xf60>
    4074:	86 a5 ff c7 	add3 r6,r5,#-57
    4078:	b0 96 00 04 	bnez r6,4088 <_dtoa_r+0xf54>
    407c:	65 39 25 0d 	ldi r5,#57 -> stb r5,@fp
    4080:	4d 01 f0 00 	addi fp,#1 || nop
    4084:	7f 47 f0 00 	bra 41a0 <_dtoa_r+0x106c> || nop
    4088:	45 01 f0 00 	addi r5,#1 || nop
    408c:	25 0d 4d 01 	stb r5,@fp -> addi fp,#1
    4090:	7f 4f f0 00 	bra 41cc <_dtoa_r+0x1098> || nop
    4094:	a4 cf 00 18 	ld r4,@(24,sp)
    4098:	25 0d 4d 01 	stb r5,@fp -> addi fp,#1
    409c:	16 8d 06 24 	mv r6,fp -> sub r6,r4
    40a0:	a4 cf 00 24 	ld r4,@(36,sp)
    40a4:	b6 04 00 29 	beq r6,r4,4148 <_dtoa_r+0x1014>
    40a8:	a1 cf 00 1c 	ld r1,@(28,sp)
    40ac:	62 0a 63 00 	ldi r2,#10 -> ldi r3,#0
    40b0:	10 8c f0 00 	mv r0,r12 || nop
    40b4:	fe 00 04 de 	bl 542c <__multadd>
    40b8:	a0 4f 00 1c 	st r0,@(28,sp)
    40bc:	11 8a 10 8c 	mv r1,r10 -> mv r0,r12
    40c0:	62 0a 63 00 	ldi r2,#10 -> ldi r3,#0
    40c4:	ba 18 00 04 	bne r10,r8,40d4 <_dtoa_r+0xfa0>
    40c8:	fe 00 04 d9 	bl 542c <__multadd>
    40cc:	1a 80 f0 00 	mv r10,r0 || nop
    40d0:	18 80 7f a4 	mv r8,r0 -> bra 3f60 <_dtoa_r+0xe2c>
    40d4:	fe 00 04 d6 	bl 542c <__multadd>
    40d8:	11 88 f0 00 	mv r1,r8 || nop
    40dc:	1a 80 f0 00 	mv r10,r0 || nop
    40e0:	62 0a 10 8c 	ldi r2,#10 -> mv r0,r12
    40e4:	63 00 f0 00 	ldi r3,#0 || nop
    40e8:	fe 00 04 d1 	bl 542c <__multadd>
    40ec:	18 80 f0 00 	mv r8,r0 || nop
    40f0:	7f 9c f0 00 	bra 3f60 <_dtoa_r+0xe2c> || nop
    40f4:	a0 cf 00 1c 	ld r0,@(28,sp)
    40f8:	11 89 f0 00 	mv r1,r9 || nop
    40fc:	fe ff fb ad 	bl 2fb0 <quorem>
    4100:	a6 cf 00 18 	ld r6,@(24,sp)
    4104:	85 a0 00 30 	add3 r5,r0,#48
    4108:	25 0a 4a 01 	stb r5,@r10 -> addi r10,#1
    410c:	14 8a 04 26 	mv r4,r10 -> sub r4,r6
    4110:	a6 cf 00 24 	ld r6,@(36,sp)
    4114:	04 46 7d 07 	cmp r4,r6 -> bnc 4130 <_dtoa_r+0xffc>
    4118:	a1 cf 00 1c 	ld r1,@(28,sp)
    411c:	10 8c 62 0a 	mv r0,r12 -> ldi r2,#10
    4120:	63 00 f0 00 	ldi r3,#0 || nop
    4124:	fe 00 04 c2 	bl 542c <__multadd>
    4128:	a0 4f 00 1c 	st r0,@(28,sp)
    412c:	7f f2 f0 00 	bra 40f4 <_dtoa_r+0xfc0> || nop
    4130:	a4 cf 00 24 	ld r4,@(36,sp)
    4134:	b0 d4 00 02 	bgtz r4,413c <_dtoa_r+0x1008>
    4138:	64 01 f0 00 	ldi r4,#1 || nop
    413c:	ad cf 00 18 	ld fp,@(24,sp)
    4140:	6a 00 f0 00 	ldi r10,#0 || nop
    4144:	0d a4 f0 00 	add fp,r4 || nop
    4148:	a1 cf 00 1c 	ld r1,@(28,sp)
    414c:	a5 4f 00 5c 	st r5,@(92,sp)
    4150:	62 01 10 8c 	ldi r2,#1 -> mv r0,r12
    4154:	fe 00 06 03 	bl 5960 <__lshift>
    4158:	a0 4f 00 1c 	st r0,@(28,sp)
    415c:	11 89 f0 00 	mv r1,r9 || nop
    4160:	fe 00 06 46 	bl 5a78 <__mcmp>
    4164:	a5 cf 00 5c 	ld r5,@(92,sp)
    4168:	b0 d0 00 0e 	bgtz r0,41a0 <_dtoa_r+0x106c>
    416c:	b0 90 00 14 	bnez r0,41bc <_dtoa_r+0x1088>
    4170:	66 01 06 c5 	ldi r6,#1 -> and r6,r5
    4174:	b0 96 00 0b 	bnez r6,41a0 <_dtoa_r+0x106c>
    4178:	7f 11 f0 00 	bra 41bc <_dtoa_r+0x1088> || nop
    417c:	a4 cf 00 18 	ld r4,@(24,sp)
    4180:	b5 14 00 07 	bne r5,r4,419c <_dtoa_r+0x1068>
    4184:	a5 cf 00 0c 	ld r5,@(12,sp)
    4188:	45 01 f0 00 	addi r5,#1 || nop
    418c:	a5 4f 00 0c 	st r5,@(12,sp)
    4190:	65 31 f0 00 	ldi r5,#49 || nop
    4194:	25 04 f0 00 	stb r5,@r4 || nop
    4198:	7f 0d f0 00 	bra 41cc <_dtoa_r+0x1098> || nop
    419c:	1d 85 f0 00 	mv fp,r5 || nop
    41a0:	a6 8d ff ff 	ldb r6,@(-1,fp)
    41a4:	85 ad ff ff 	add3 r5,fp,#-1
    41a8:	87 a6 ff c7 	add3 r7,r6,#-57
    41ac:	b0 87 ff f4 	beqz r7,417c <_dtoa_r+0x1048>
    41b0:	46 01 26 05 	addi r6,#1 -> stb r6,@r5
    41b4:	7f 06 f0 00 	bra 41cc <_dtoa_r+0x1098> || nop
    41b8:	1d 86 f0 00 	mv fp,r6 || nop
    41bc:	a5 8d ff ff 	ldb r5,@(-1,fp)
    41c0:	86 ad ff ff 	add3 r6,fp,#-1
    41c4:	45 d0 f0 00 	addi r5,#-48 || nop
    41c8:	b0 85 ff fc 	beqz r5,41b8 <_dtoa_r+0x1084>
    41cc:	10 8c 11 89 	mv r0,r12 -> mv r1,r9
    41d0:	fe 00 04 90 	bl 5410 <_Bfree>
    41d4:	b0 88 00 0a 	beqz r8,41fc <_dtoa_r+0x10c8>
    41d8:	b0 8a 00 04 	beqz r10,41e8 <_dtoa_r+0x10b4>
    41dc:	ba 08 00 03 	beq r10,r8,41e8 <_dtoa_r+0x10b4>
    41e0:	10 8c 11 8a 	mv r0,r12 -> mv r1,r10
    41e4:	fe 00 04 8b 	bl 5410 <_Bfree>
    41e8:	10 8c 11 88 	mv r0,r12 -> mv r1,r8
    41ec:	fe 00 04 89 	bl 5410 <_Bfree>
    41f0:	7f 03 f0 00 	bra 41fc <_dtoa_r+0x10c8> || nop
    41f4:	a6 cf 00 40 	ld r6,@(64,sp)
    41f8:	a6 4f 00 0c 	st r6,@(12,sp)
    41fc:	a1 cf 00 1c 	ld r1,@(28,sp)
    4200:	10 8c f0 00 	mv r0,r12 || nop
    4204:	fe 00 04 83 	bl 5410 <_Bfree>
    4208:	a4 cf 00 80 	ld r4,@(128,sp)
    420c:	65 00 25 0d 	ldi r5,#0 -> stb r5,@fp
    4210:	a5 cf 00 0c 	ld r5,@(12,sp)
    4214:	45 01 25 44 	addi r5,#1 -> st r5,@r4
    4218:	a5 cf 00 88 	ld r5,@(136,sp)
    421c:	b0 85 00 04 	beqz r5,422c <_dtoa_r+0x10f8>
    4220:	2d 45 7f 03 	st fp,@r5 -> bra 422c <_dtoa_r+0x10f8>
    4224:	e6 00 90 80 	ld24 r6,9080 <_global_impure_ptr+0x40>
    4228:	a6 4f 00 18 	st r6,@(24,sp)
    422c:	a0 cf 00 18 	ld r0,@(24,sp)
    4230:	4f 60 2e ef 	addi sp,#96 -> pop lr
    4234:	2c ef f0 00 	pop r12 || nop
    4238:	2b ef 2a ef 	pop r11 -> pop r10
    423c:	29 ef 28 ef 	pop r9 -> pop r8
    4240:	2d ef 1f ce 	pop fp -> jmp lr

00004244 <__sflush_r>:
    4244:	28 7f 29 7f 	push r8 -> push r9
    4248:	2a 7f 2b 7f 	push r10 -> push r11
    424c:	2e 7f f0 00 	push lr || nop
    4250:	a4 a1 00 0c 	ldh r4,@(12,r1)
    4254:	65 08 f0 00 	ldi r5,#8 || nop
    4258:	19 80 f0 00 	mv r9,r0 || nop
    425c:	05 c4 55 50 	and r5,r4 -> slli r5,#0x10
    4260:	55 30 f0 00 	srai r5,#0x10 || nop
    4264:	18 81 f0 00 	mv r8,r1 || nop
    4268:	b0 95 00 50 	bnez r5,43a8 <__sflush_r+0x164>
    426c:	85 e4 08 00 	or3 r5,r4,#0x800
    4270:	a5 21 00 0c 	sth r5,@(12,r1)
    4274:	a5 c1 00 04 	ld r5,@(4,r1)
    4278:	b0 d5 00 04 	bgtz r5,4288 <__sflush_r+0x44>
    427c:	a5 c1 00 3c 	ld r5,@(60,r1)
    4280:	b0 d5 00 02 	bgtz r5,4288 <__sflush_r+0x44>
    4284:	7f 48 f0 00 	bra 43a4 <__sflush_r+0x160> || nop
    4288:	a5 c8 00 28 	ld r5,@(40,r8)
    428c:	b0 85 00 46 	beqz r5,43a4 <__sflush_r+0x160>
    4290:	84 c4 10 00 	and3 r4,r4,#0x1000
    4294:	66 00 f0 00 	ldi r6,#0 || nop
    4298:	54 50 f0 00 	slli r4,#0x10 || nop
    429c:	2a c9 f0 00 	ld r10,@r9 || nop
    42a0:	54 30 f0 00 	srai r4,#0x10 || nop
    42a4:	26 49 f0 00 	st r6,@r9 || nop
    42a8:	b0 84 00 03 	beqz r4,42b4 <__sflush_r+0x70>
    42ac:	a2 c8 00 50 	ld r2,@(80,r8)
    42b0:	7f 0e f0 00 	bra 42e8 <__sflush_r+0xa4> || nop
    42b4:	a1 c8 00 1c 	ld r1,@(28,r8)
    42b8:	62 00 10 89 	ldi r2,#0 -> mv r0,r9
    42bc:	63 01 1e c5 	ldi r3,#1 -> jl r5
    42c0:	84 a0 00 01 	add3 r4,r0,#1
    42c4:	12 80 f0 00 	mv r2,r0 || nop
    42c8:	b0 94 00 08 	bnez r4,42e8 <__sflush_r+0xa4>
    42cc:	24 c9 f0 00 	ld r4,@r9 || nop
    42d0:	b0 84 00 06 	beqz r4,42e8 <__sflush_r+0xa4>
    42d4:	85 a4 ff e3 	add3 r5,r4,#-29
    42d8:	b0 85 00 03 	beqz r5,42e4 <__sflush_r+0xa0>
    42dc:	44 ea f0 00 	addi r4,#-22 || nop
    42e0:	b0 94 00 45 	bnez r4,43f4 <__sflush_r+0x1b0>
    42e4:	2a 49 7f 30 	st r10,@r9 -> bra 43a4 <__sflush_r+0x160>
    42e8:	a5 b8 00 0c 	lduh r5,@(12,r8)
    42ec:	64 04 04 c5 	ldi r4,#4 -> and r4,r5
    42f0:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    42f4:	b0 84 00 07 	beqz r4,4310 <__sflush_r+0xcc>
    42f8:	a4 c8 00 04 	ld r4,@(4,r8)
    42fc:	02 24 f0 00 	sub r2,r4 || nop
    4300:	a4 c8 00 30 	ld r4,@(48,r8)
    4304:	b0 84 00 03 	beqz r4,4310 <__sflush_r+0xcc>
    4308:	a4 c8 00 3c 	ld r4,@(60,r8)
    430c:	02 24 f0 00 	sub r2,r4 || nop
    4310:	a4 c8 00 28 	ld r4,@(40,r8)
    4314:	10 89 f0 00 	mv r0,r9 || nop
    4318:	a1 c8 00 1c 	ld r1,@(28,r8)
    431c:	63 00 1e c4 	ldi r3,#0 -> jl r4
    4320:	84 a0 00 01 	add3 r4,r0,#1
    4324:	b0 94 00 07 	bnez r4,4340 <__sflush_r+0xfc>
    4328:	24 c9 f0 00 	ld r4,@r9 || nop
    432c:	b0 84 00 05 	beqz r4,4340 <__sflush_r+0xfc>
    4330:	85 a4 ff e3 	add3 r5,r4,#-29
    4334:	b0 85 00 03 	beqz r5,4340 <__sflush_r+0xfc>
    4338:	44 ea f0 00 	addi r4,#-22 || nop
    433c:	b0 94 00 2e 	bnez r4,43f4 <__sflush_r+0x1b0>
    4340:	a5 a8 00 0c 	ldh r5,@(12,r8)
    4344:	94 f0 f7 ff 	ldi r4,#-2049
    4348:	04 c5 f0 00 	and r4,r5 || nop
    434c:	a4 28 00 0c 	sth r4,@(12,r8)
    4350:	85 c5 10 00 	and3 r5,r5,#0x1000
    4354:	64 00 f0 00 	ldi r4,#0 || nop
    4358:	a4 48 00 04 	st r4,@(4,r8)
    435c:	a4 c8 00 10 	ld r4,@(16,r8)
    4360:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    4364:	24 48 f0 00 	st r4,@r8 || nop
    4368:	b0 85 00 06 	beqz r5,4380 <__sflush_r+0x13c>
    436c:	84 a0 00 01 	add3 r4,r0,#1
    4370:	b0 94 00 03 	bnez r4,437c <__sflush_r+0x138>
    4374:	24 c9 f0 00 	ld r4,@r9 || nop
    4378:	b0 94 00 02 	bnez r4,4380 <__sflush_r+0x13c>
    437c:	a0 48 00 50 	st r0,@(80,r8)
    4380:	a1 c8 00 30 	ld r1,@(48,r8)
    4384:	2a 49 f0 00 	st r10,@r9 || nop
    4388:	b0 81 00 07 	beqz r1,43a4 <__sflush_r+0x160>
    438c:	84 a8 00 40 	add3 r4,r8,#64
    4390:	b1 04 00 03 	beq r1,r4,439c <__sflush_r+0x158>
    4394:	10 89 f0 00 	mv r0,r9 || nop
    4398:	fe 00 01 12 	bl 47e0 <_free_r>
    439c:	64 00 f0 00 	ldi r4,#0 || nop
    43a0:	a4 48 00 30 	st r4,@(48,r8)
    43a4:	60 00 7f 1e 	ldi r0,#0 -> bra 441c <__sflush_r+0x1d8>
    43a8:	ab c1 00 10 	ld r11,@(16,r1)
    43ac:	b0 8b ff fe 	beqz r11,43a4 <__sflush_r+0x160>
    43b0:	2a c1 f0 00 	ld r10,@r1 || nop
    43b4:	65 03 f0 00 	ldi r5,#3 || nop
    43b8:	2b 41 f0 00 	st r11,@r1 || nop
    43bc:	05 c4 f0 00 	and r5,r4 || nop
    43c0:	0a 2b f0 00 	sub r10,r11 || nop
    43c4:	b0 95 00 03 	bnez r5,43d0 <__sflush_r+0x18c>
    43c8:	a4 c1 00 14 	ld r4,@(20,r1)
    43cc:	7f 02 f0 00 	bra 43d4 <__sflush_r+0x190> || nop
    43d0:	64 00 f0 00 	ldi r4,#0 || nop
    43d4:	a4 48 00 08 	st r4,@(8,r8)
    43d8:	7f 0f f0 00 	bra 4414 <__sflush_r+0x1d0> || nop
    43dc:	a4 c8 00 24 	ld r4,@(36,r8)
    43e0:	10 89 f0 00 	mv r0,r9 || nop
    43e4:	a1 c8 00 1c 	ld r1,@(28,r8)
    43e8:	12 8b 13 8a 	mv r2,r11 -> mv r3,r10
    43ec:	1e c4 f0 00 	jl r4 || nop
    43f0:	b0 d0 00 07 	bgtz r0,440c <__sflush_r+0x1c8>
    43f4:	a5 b8 00 0c 	lduh r5,@(12,r8)
    43f8:	64 40 f0 00 	ldi r4,#64 || nop
    43fc:	60 ff f0 00 	ldi r0,#-1 || nop
    4400:	04 e5 f0 00 	or r4,r5 || nop
    4404:	a4 28 00 0c 	sth r4,@(12,r8)
    4408:	7f 05 f0 00 	bra 441c <__sflush_r+0x1d8> || nop
    440c:	0b a0 f0 00 	add r11,r0 || nop
    4410:	0a 20 f0 00 	sub r10,r0 || nop
    4414:	b0 da ff f2 	bgtz r10,43dc <__sflush_r+0x198>
    4418:	7f e3 f0 00 	bra 43a4 <__sflush_r+0x160> || nop
    441c:	2e ef 2b ef 	pop lr -> pop r11
    4420:	2a ef 29 ef 	pop r10 -> pop r9
    4424:	28 ef f0 00 	pop r8 || nop
    4428:	1f ce f0 00 	jmp lr || nop

0000442c <_fflush_r>:
    442c:	28 7f 29 7f 	push r8 -> push r9
    4430:	2e 7f f0 00 	push lr || nop
    4434:	18 80 19 81 	mv r8,r0 -> mv r9,r1
    4438:	b0 80 00 04 	beqz r0,4448 <_fflush_r+0x1c>
    443c:	a4 c0 00 38 	ld r4,@(56,r0)
    4440:	b0 94 00 02 	bnez r4,4448 <_fflush_r+0x1c>
    4444:	fe 00 00 52 	bl 458c <__sinit>
    4448:	a4 a9 00 0c 	ldh r4,@(12,r9)
    444c:	b0 84 00 04 	beqz r4,445c <_fflush_r+0x30>
    4450:	10 88 11 89 	mv r0,r8 -> mv r1,r9
    4454:	fe ff ff 7c 	bl 4244 <__sflush_r>
    4458:	7f 02 f0 00 	bra 4460 <_fflush_r+0x34> || nop
    445c:	60 00 f0 00 	ldi r0,#0 || nop
    4460:	2e ef 29 ef 	pop lr -> pop r9
    4464:	28 ef f0 00 	pop r8 || nop
    4468:	1f ce f0 00 	jmp lr || nop

0000446c <fflush>:
    446c:	2e 7f f0 00 	push lr || nop
    4470:	11 80 f0 00 	mv r1,r0 || nop
    4474:	b0 90 00 06 	bnez r0,448c <fflush+0x20>
    4478:	e4 00 90 40 	ld24 r4,9040 <_global_impure_ptr>
    447c:	e1 00 44 2c 	ld24 r1,442c <_fflush_r>
    4480:	20 c4 f0 00 	ld r0,@r4 || nop
    4484:	fe 00 01 7f 	bl 4a80 <_fwalk_reent>
    4488:	7f 04 f0 00 	bra 4498 <fflush+0x2c> || nop
    448c:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    4490:	20 c4 f0 00 	ld r0,@r4 || nop
    4494:	fe ff ff e6 	bl 442c <_fflush_r>
    4498:	2e ef 1f ce 	pop lr -> jmp lr

0000449c <__fp_lock>:
    449c:	60 00 f0 00 	ldi r0,#0 || nop
    44a0:	1f ce f0 00 	jmp lr || nop

000044a4 <__fp_unlock>:
    44a4:	60 00 f0 00 	ldi r0,#0 || nop
    44a8:	1f ce f0 00 	jmp lr || nop

000044ac <_cleanup_r>:
    44ac:	e1 00 70 70 	ld24 r1,7070 <fclose>
    44b0:	2e 7f f0 00 	push lr || nop
    44b4:	fe 00 01 54 	bl 4a04 <_fwalk>
    44b8:	2e ef 1f ce 	pop lr -> jmp lr

000044bc <std.isra.0>:
    44bc:	28 7f 2e 7f 	push r8 -> push lr
    44c0:	a1 20 00 0c 	sth r1,@(12,r0)
    44c4:	a2 20 00 0e 	sth r2,@(14,r0)
    44c8:	64 00 f0 00 	ldi r4,#0 || nop
    44cc:	a4 40 00 04 	st r4,@(4,r0)
    44d0:	a4 40 00 08 	st r4,@(8,r0)
    44d4:	a4 40 00 64 	st r4,@(100,r0)
    44d8:	a4 40 00 10 	st r4,@(16,r0)
    44dc:	a4 40 00 14 	st r4,@(20,r0)
    44e0:	a4 40 00 18 	st r4,@(24,r0)
    44e4:	18 80 f0 00 	mv r8,r0 || nop
    44e8:	24 40 f0 00 	st r4,@r0 || nop
    44ec:	61 00 f0 00 	ldi r1,#0 || nop
    44f0:	62 08 f0 00 	ldi r2,#8 || nop
    44f4:	40 5c f0 00 	addi r0,#92 || nop
    44f8:	fe ff f4 3b 	bl 15e4 <memset>
    44fc:	e4 00 60 a8 	ld24 r4,60a8 <__sread>
    4500:	a4 48 00 20 	st r4,@(32,r8)
    4504:	e4 00 60 ec 	ld24 r4,60ec <__swrite>
    4508:	a4 48 00 24 	st r4,@(36,r8)
    450c:	e4 00 61 54 	ld24 r4,6154 <__sseek>
    4510:	a4 48 00 28 	st r4,@(40,r8)
    4514:	e4 00 61 94 	ld24 r4,6194 <__sclose>
    4518:	a8 48 00 1c 	st r8,@(28,r8)
    451c:	a4 48 00 2c 	st r4,@(44,r8)
    4520:	2e ef 28 ef 	pop lr -> pop r8
    4524:	1f ce f0 00 	jmp lr || nop

00004528 <__sfmoreglue>:
    4528:	28 7f 29 7f 	push r8 -> push r9
    452c:	69 68 f0 00 	ldi r9,#104 || nop
    4530:	2a 7f f0 00 	push r10 || nop
    4534:	19 61 f0 00 	mul r9,r1 || nop
    4538:	2e 7f f0 00 	push lr || nop
    453c:	1a 81 f0 00 	mv r10,r1 || nop
    4540:	81 a9 00 0c 	add3 r1,r9,#12
    4544:	fe 00 01 ea 	bl 4cec <_malloc_r>
    4548:	18 80 f0 00 	mv r8,r0 || nop
    454c:	b0 80 00 07 	beqz r0,4568 <__sfmoreglue+0x40>
    4550:	aa 48 00 04 	st r10,@(4,r8)
    4554:	40 0c f0 00 	addi r0,#12 || nop
    4558:	a0 48 00 08 	st r0,@(8,r8)
    455c:	64 00 24 48 	ldi r4,#0 -> st r4,@r8
    4560:	61 00 12 89 	ldi r1,#0 -> mv r2,r9
    4564:	fe ff f4 20 	bl 15e4 <memset>
    4568:	2e ef 10 88 	pop lr -> mv r0,r8
    456c:	2a ef f0 00 	pop r10 || nop
    4570:	29 ef 28 ef 	pop r9 -> pop r8
    4574:	1f ce f0 00 	jmp lr || nop

00004578 <_cleanup>:
    4578:	e4 00 90 40 	ld24 r4,9040 <_global_impure_ptr>
    457c:	20 c4 f0 00 	ld r0,@r4 || nop
    4580:	2e 7f f0 00 	push lr || nop
    4584:	fe ff ff ca 	bl 44ac <_cleanup_r>
    4588:	2e ef 1f ce 	pop lr -> jmp lr

0000458c <__sinit>:
    458c:	28 7f 2e 7f 	push r8 -> push lr
    4590:	a4 c0 00 38 	ld r4,@(56,r0)
    4594:	18 80 f0 00 	mv r8,r0 || nop
    4598:	b0 94 00 13 	bnez r4,45e4 <__sinit+0x58>
    459c:	a4 40 02 e0 	st r4,@(736,r0)
    45a0:	e5 00 44 ac 	ld24 r5,44ac <_cleanup_r>
    45a4:	a5 40 00 3c 	st r5,@(60,r0)
    45a8:	64 03 f0 00 	ldi r4,#3 || nop
    45ac:	a4 40 02 e4 	st r4,@(740,r0)
    45b0:	84 a0 02 ec 	add3 r4,r0,#748
    45b4:	a4 40 02 e8 	st r4,@(744,r0)
    45b8:	65 01 f0 00 	ldi r5,#1 || nop
    45bc:	a5 40 00 38 	st r5,@(56,r0)
    45c0:	a0 c0 00 04 	ld r0,@(4,r0)
    45c4:	61 04 62 00 	ldi r1,#4 -> ldi r2,#0
    45c8:	7e bd f0 00 	bl 44bc <std.isra.0> || nop
    45cc:	a0 c8 00 08 	ld r0,@(8,r8)
    45d0:	61 09 62 01 	ldi r1,#9 -> ldi r2,#1
    45d4:	7e ba f0 00 	bl 44bc <std.isra.0> || nop
    45d8:	a0 c8 00 0c 	ld r0,@(12,r8)
    45dc:	61 12 62 02 	ldi r1,#18 -> ldi r2,#2
    45e0:	7e b7 f0 00 	bl 44bc <std.isra.0> || nop
    45e4:	2e ef 28 ef 	pop lr -> pop r8
    45e8:	1f ce f0 00 	jmp lr || nop

000045ec <__sfp>:
    45ec:	e4 00 90 40 	ld24 r4,9040 <_global_impure_ptr>
    45f0:	28 7f 29 7f 	push r8 -> push r9
    45f4:	2a 7f f0 00 	push r10 || nop
    45f8:	2a c4 f0 00 	ld r10,@r4 || nop
    45fc:	2b 7f 2e 7f 	push r11 -> push lr
    4600:	1b 80 f0 00 	mv r11,r0 || nop
    4604:	a4 ca 00 38 	ld r4,@(56,r10)
    4608:	b0 94 00 03 	bnez r4,4614 <__sfp+0x28>
    460c:	10 8a f0 00 	mv r0,r10 || nop
    4610:	fe ff ff df 	bl 458c <__sinit>
    4614:	8a aa 02 e0 	add3 r10,r10,#736
    4618:	a8 ca 00 08 	ld r8,@(8,r10)
    461c:	a4 ca 00 04 	ld r4,@(4,r10)
    4620:	7f 04 f0 00 	bra 4630 <__sfp+0x44> || nop
    4624:	a9 a8 00 0c 	ldh r9,@(12,r8)
    4628:	b0 89 00 0f 	beqz r9,4664 <__sfp+0x78>
    462c:	48 68 f0 00 	addi r8,#104 || nop
    4630:	44 ff f0 00 	addi r4,#-1 || nop
    4634:	b0 b4 ff fc 	bgez r4,4624 <__sfp+0x38>
    4638:	24 ca f0 00 	ld r4,@r10 || nop
    463c:	b0 84 00 03 	beqz r4,4648 <__sfp+0x5c>
    4640:	2a ca f0 00 	ld r10,@r10 || nop
    4644:	7f f5 f0 00 	bra 4618 <__sfp+0x2c> || nop
    4648:	10 8b 61 04 	mv r0,r11 -> ldi r1,#4
    464c:	fe ff ff b7 	bl 4528 <__sfmoreglue>
    4650:	20 4a f0 00 	st r0,@r10 || nop
    4654:	b0 90 ff fb 	bnez r0,4640 <__sfp+0x54>
    4658:	64 0c 24 4b 	ldi r4,#12 -> st r4,@r11
    465c:	68 00 f0 00 	ldi r8,#0 || nop
    4660:	7f 13 f0 00 	bra 46ac <__sfp+0xc0> || nop
    4664:	a9 48 00 64 	st r9,@(100,r8)
    4668:	a9 48 00 08 	st r9,@(8,r8)
    466c:	a9 48 00 04 	st r9,@(4,r8)
    4670:	a9 48 00 10 	st r9,@(16,r8)
    4674:	a9 48 00 14 	st r9,@(20,r8)
    4678:	a9 48 00 18 	st r9,@(24,r8)
    467c:	80 a8 00 5c 	add3 r0,r8,#92
    4680:	64 ff f0 00 	ldi r4,#-1 || nop
    4684:	a4 28 00 0e 	sth r4,@(14,r8)
    4688:	64 01 f0 00 	ldi r4,#1 || nop
    468c:	a4 28 00 0c 	sth r4,@(12,r8)
    4690:	29 48 f0 00 	st r9,@r8 || nop
    4694:	61 00 62 08 	ldi r1,#0 -> ldi r2,#8
    4698:	fe ff f3 d3 	bl 15e4 <memset>
    469c:	a9 48 00 30 	st r9,@(48,r8)
    46a0:	a9 48 00 34 	st r9,@(52,r8)
    46a4:	a9 48 00 44 	st r9,@(68,r8)
    46a8:	a9 48 00 48 	st r9,@(72,r8)
    46ac:	2e ef 10 88 	pop lr -> mv r0,r8
    46b0:	2b ef f0 00 	pop r11 || nop
    46b4:	2a ef f0 00 	pop r10 || nop
    46b8:	29 ef 28 ef 	pop r9 -> pop r8
    46bc:	1f ce f0 00 	jmp lr || nop

000046c0 <__sfp_lock_acquire>:
    46c0:	1f ce f0 00 	jmp lr || nop

000046c4 <__sfp_lock_release>:
    46c4:	1f ce f0 00 	jmp lr || nop

000046c8 <__sinit_lock_acquire>:
    46c8:	1f ce f0 00 	jmp lr || nop

000046cc <__sinit_lock_release>:
    46cc:	1f ce f0 00 	jmp lr || nop

000046d0 <__fp_lock_all>:
    46d0:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    46d4:	e1 00 44 9c 	ld24 r1,449c <__fp_lock>
    46d8:	20 c4 f0 00 	ld r0,@r4 || nop
    46dc:	2e 7f f0 00 	push lr || nop
    46e0:	fe 00 00 c9 	bl 4a04 <_fwalk>
    46e4:	2e ef 1f ce 	pop lr -> jmp lr

000046e8 <__fp_unlock_all>:
    46e8:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    46ec:	e1 00 44 a4 	ld24 r1,44a4 <__fp_unlock>
    46f0:	20 c4 f0 00 	ld r0,@r4 || nop
    46f4:	2e 7f f0 00 	push lr || nop
    46f8:	fe 00 00 c3 	bl 4a04 <_fwalk>
    46fc:	2e ef 1f ce 	pop lr -> jmp lr

00004700 <_malloc_trim_r>:
    4700:	28 7f 29 7f 	push r8 -> push r9
    4704:	2a 7f 2b 7f 	push r10 -> push r11
    4708:	eb 00 9c a4 	ld24 r11,9ca4 <__malloc_av_>
    470c:	2c 7f 2e 7f 	push r12 -> push lr
    4710:	1c 81 18 80 	mv r12,r1 -> mv r8,r0
    4714:	fe 00 03 1d 	bl 5388 <__malloc_lock>
    4718:	a4 cb 00 08 	ld r4,@(8,r11)
    471c:	a9 c4 00 04 	ld r9,@(4,r4)
    4720:	64 fc 09 c4 	ldi r4,#-4 -> and r9,r4
    4724:	8a a9 0f ef 	add3 r10,r9,#4079
    4728:	94 f0 0f ff 	ldi r4,#4095
    472c:	0a 2c 5a 0c 	sub r10,r12 -> srli r10,#0xc
    4730:	4a ff 5a 4c 	addi r10,#-1 -> slli r10,#0xc
    4734:	04 4a 7c 04 	cmp r4,r10 -> bc 4744 <_malloc_trim_r+0x44>
    4738:	10 88 f0 00 	mv r0,r8 || nop
    473c:	fe 00 03 14 	bl 538c <__malloc_unlock>
    4740:	60 00 7f 24 	ldi r0,#0 -> bra 47d0 <_malloc_trim_r+0xd0>
    4744:	10 88 61 00 	mv r0,r8 -> ldi r1,#0
    4748:	fe 00 06 48 	bl 6068 <_sbrk_r>
    474c:	a4 cb 00 08 	ld r4,@(8,r11)
    4750:	04 a9 f0 00 	add r4,r9 || nop
    4754:	b0 14 ff f9 	bne r0,r4,4738 <_malloc_trim_r+0x38>
    4758:	10 88 f0 00 	mv r0,r8 || nop
    475c:	01 3a f0 00 	neg r1,r10 || nop
    4760:	fe 00 06 42 	bl 6068 <_sbrk_r>
    4764:	40 01 f0 00 	addi r0,#1 || nop
    4768:	b0 90 00 10 	bnez r0,47a8 <_malloc_trim_r+0xa8>
    476c:	10 88 f0 00 	mv r0,r8 || nop
    4770:	61 00 f0 00 	ldi r1,#0 || nop
    4774:	fe 00 06 3d 	bl 6068 <_sbrk_r>
    4778:	a5 cb 00 08 	ld r5,@(8,r11)
    477c:	16 80 f0 00 	mv r6,r0 || nop
    4780:	64 0f f0 00 	ldi r4,#15 || nop
    4784:	06 25 f0 00 	sub r6,r5 || nop
    4788:	04 46 7d ec 	cmp r4,r6 -> bnc 4738 <_malloc_trim_r+0x38>
    478c:	e4 00 a0 b4 	ld24 r4,a0b4 <__malloc_sbrk_base>
    4790:	24 c4 00 24 	ld r4,@r4 -> sub r0,r4
    4794:	e4 00 a0 c0 	ld24 r4,a0c0 <__edata>
    4798:	20 44 f0 00 	st r0,@r4 || nop
    479c:	64 01 04 e6 	ldi r4,#1 -> or r4,r6
    47a0:	a4 45 00 04 	st r4,@(4,r5)
    47a4:	7f e5 f0 00 	bra 4738 <_malloc_trim_r+0x38> || nop
    47a8:	a5 cb 00 08 	ld r5,@(8,r11)
    47ac:	09 2a f0 00 	sub r9,r10 || nop
    47b0:	64 01 04 e9 	ldi r4,#1 -> or r4,r9
    47b4:	a4 45 00 04 	st r4,@(4,r5)
    47b8:	e5 00 a0 c0 	ld24 r5,a0c0 <__edata>
    47bc:	24 c5 f0 00 	ld r4,@r5 || nop
    47c0:	10 88 f0 00 	mv r0,r8 || nop
    47c4:	04 2a 24 45 	sub r4,r10 -> st r4,@r5
    47c8:	fe 00 02 f1 	bl 538c <__malloc_unlock>
    47cc:	60 01 f0 00 	ldi r0,#1 || nop
    47d0:	2e ef 2c ef 	pop lr -> pop r12
    47d4:	2b ef 2a ef 	pop r11 -> pop r10
    47d8:	29 ef 28 ef 	pop r9 -> pop r8
    47dc:	1f ce f0 00 	jmp lr || nop

000047e0 <_free_r>:
    47e0:	28 7f 29 7f 	push r8 -> push r9
    47e4:	2e 7f f0 00 	push lr || nop
    47e8:	18 80 19 81 	mv r8,r0 -> mv r9,r1
    47ec:	b0 81 00 83 	beqz r1,49f8 <_free_r+0x218>
    47f0:	fe 00 02 e6 	bl 5388 <__malloc_lock>
    47f4:	a3 c9 ff fc 	ld r3,@(-4,r9)
    47f8:	84 a9 ff f8 	add3 r4,r9,#-8
    47fc:	65 fe 05 c3 	ldi r5,#-2 -> and r5,r3
    4800:	16 84 06 a5 	mv r6,r4 -> add r6,r5
    4804:	a7 c6 00 04 	ld r7,@(4,r6)
    4808:	62 fc 07 c2 	ldi r2,#-4 -> and r7,r2
    480c:	e2 00 9c a4 	ld24 r2,9ca4 <__malloc_av_>
    4810:	ae c2 00 08 	ld lr,@(8,r2)
    4814:	62 01 02 c3 	ldi r2,#1 -> and r2,r3
    4818:	b6 1e 00 17 	bne r6,lr,4874 <_free_r+0x94>
    481c:	05 a7 f0 00 	add r5,r7 || nop
    4820:	b0 92 00 08 	bnez r2,4840 <_free_r+0x60>
    4824:	a6 c9 ff f8 	ld r6,@(-8,r9)
    4828:	04 26 f0 00 	sub r4,r6 || nop
    482c:	a7 c4 00 08 	ld r7,@(8,r4)
    4830:	05 a6 f0 00 	add r5,r6 || nop
    4834:	a6 c4 00 0c 	ld r6,@(12,r4)
    4838:	a6 47 00 0c 	st r6,@(12,r7)
    483c:	a7 46 00 08 	st r7,@(8,r6)
    4840:	66 01 06 e5 	ldi r6,#1 -> or r6,r5
    4844:	a6 44 00 04 	st r6,@(4,r4)
    4848:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    484c:	a4 46 00 08 	st r4,@(8,r6)
    4850:	e4 00 a0 b8 	ld24 r4,a0b8 <__malloc_trim_threshold>
    4854:	24 c4 05 54 	ld r4,@r4 -> cmpu r5,r4
    4858:	7c 04 f0 00 	bc 4868 <_free_r+0x88> || nop
    485c:	e4 00 a0 fc 	ld24 r4,a0fc <__malloc_top_pad>
    4860:	21 c4 10 88 	ld r1,@r4 -> mv r0,r8
    4864:	fe ff ff a7 	bl 4700 <_malloc_trim_r>
    4868:	10 88 f0 00 	mv r0,r8 || nop
    486c:	fe 00 02 c8 	bl 538c <__malloc_unlock>
    4870:	7f 62 f0 00 	bra 49f8 <_free_r+0x218> || nop
    4874:	a7 46 00 04 	st r7,@(4,r6)
    4878:	b0 92 00 0a 	bnez r2,48a0 <_free_r+0xc0>
    487c:	a2 c9 ff f8 	ld r2,@(-8,r9)
    4880:	e3 00 9c ac 	ld24 r3,9cac <__malloc_av_+0x8>
    4884:	04 22 f0 00 	sub r4,r2 || nop
    4888:	05 a2 f0 00 	add r5,r2 || nop
    488c:	a2 c4 00 08 	ld r2,@(8,r4)
    4890:	b2 03 00 05 	beq r2,r3,48a4 <_free_r+0xc4>
    4894:	a3 c4 00 0c 	ld r3,@(12,r4)
    4898:	a3 42 00 0c 	st r3,@(12,r2)
    489c:	a2 43 00 08 	st r2,@(8,r3)
    48a0:	62 00 7f 02 	ldi r2,#0 -> bra 48a8 <_free_r+0xc8>
    48a4:	62 01 f0 00 	ldi r2,#1 || nop
    48a8:	13 86 03 a7 	mv r3,r6 -> add r3,r7
    48ac:	a9 c3 00 04 	ld r9,@(4,r3)
    48b0:	63 01 03 c9 	ldi r3,#1 -> and r3,r9
    48b4:	b0 93 00 10 	bnez r3,48f4 <_free_r+0x114>
    48b8:	05 a7 f0 00 	add r5,r7 || nop
    48bc:	a7 c6 00 08 	ld r7,@(8,r6)
    48c0:	b0 92 00 0a 	bnez r2,48e8 <_free_r+0x108>
    48c4:	e3 00 9c ac 	ld24 r3,9cac <__malloc_av_+0x8>
    48c8:	b7 13 00 08 	bne r7,r3,48e8 <_free_r+0x108>
    48cc:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    48d0:	a4 46 00 14 	st r4,@(20,r6)
    48d4:	a4 46 00 10 	st r4,@(16,r6)
    48d8:	a7 44 00 0c 	st r7,@(12,r4)
    48dc:	a7 44 00 08 	st r7,@(8,r4)
    48e0:	62 01 f0 00 	ldi r2,#1 || nop
    48e4:	7f 04 f0 00 	bra 48f4 <_free_r+0x114> || nop
    48e8:	a6 c6 00 0c 	ld r6,@(12,r6)
    48ec:	a6 47 00 0c 	st r6,@(12,r7)
    48f0:	a7 46 00 08 	st r7,@(8,r6)
    48f4:	66 01 06 e5 	ldi r6,#1 -> or r6,r5
    48f8:	a6 44 00 04 	st r6,@(4,r4)
    48fc:	16 84 06 a5 	mv r6,r4 -> add r6,r5
    4900:	25 46 f0 00 	st r5,@r6 || nop
    4904:	b0 92 ff d9 	bnez r2,4868 <_free_r+0x88>
    4908:	96 f0 01 ff 	ldi r6,#511
    490c:	06 55 7c 0c 	cmpu r6,r5 -> bc 493c <_free_r+0x15c>
    4910:	e7 00 9c a4 	ld24 r7,9ca4 <__malloc_av_>
    4914:	55 03 f0 00 	srli r5,#0x3 || nop
    4918:	92 a5 00 02 	sra3 r2,r5,#2
    491c:	66 01 16 42 	ldi r6,#1 -> sll r6,r2
    4920:	a2 c7 00 04 	ld r2,@(4,r7)
    4924:	55 43 f0 00 	slli r5,#0x3 || nop
    4928:	05 a7 f0 00 	add r5,r7 || nop
    492c:	06 e2 f0 00 	or r6,r2 || nop
    4930:	a6 47 00 04 	st r6,@(4,r7)
    4934:	a6 c5 00 08 	ld r6,@(8,r5)
    4938:	7f 2b f0 00 	bra 49e4 <_free_r+0x204> || nop
    493c:	97 85 00 09 	srl3 r7,r5,#9
    4940:	66 04 06 57 	ldi r6,#4 -> cmpu r6,r7
    4944:	7c 03 f0 00 	bc 4950 <_free_r+0x170> || nop
    4948:	97 85 00 06 	srl3 r7,r5,#6
    494c:	47 38 7f 11 	addi r7,#56 -> bra 4990 <_free_r+0x1b0>
    4950:	66 14 06 57 	ldi r6,#20 -> cmpu r6,r7
    4954:	7c 02 f0 00 	bc 495c <_free_r+0x17c> || nop
    4958:	47 5b 7f 0e 	addi r7,#91 -> bra 4990 <_free_r+0x1b0>
    495c:	66 54 06 57 	ldi r6,#84 -> cmpu r6,r7
    4960:	7c 03 f0 00 	bc 496c <_free_r+0x18c> || nop
    4964:	97 85 00 0c 	srl3 r7,r5,#12
    4968:	47 6e 7f 0a 	addi r7,#110 -> bra 4990 <_free_r+0x1b0>
    496c:	96 f0 01 54 	ldi r6,#340
    4970:	06 57 7c 03 	cmpu r6,r7 -> bc 497c <_free_r+0x19c>
    4974:	97 85 00 0f 	srl3 r7,r5,#15
    4978:	47 77 7f 06 	addi r7,#119 -> bra 4990 <_free_r+0x1b0>
    497c:	96 f0 05 54 	ldi r6,#1364
    4980:	06 57 7c 03 	cmpu r6,r7 -> bc 498c <_free_r+0x1ac>
    4984:	97 85 00 12 	srl3 r7,r5,#18
    4988:	47 7c 7f 02 	addi r7,#124 -> bra 4990 <_free_r+0x1b0>
    498c:	67 7e f0 00 	ldi r7,#126 || nop
    4990:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4994:	92 c7 00 03 	sll3 r2,r7,#3
    4998:	02 a6 f0 00 	add r2,r6 || nop
    499c:	a6 c2 00 08 	ld r6,@(8,r2)
    49a0:	b6 12 00 0c 	bne r6,r2,49d0 <_free_r+0x1f0>
    49a4:	e2 00 9c a4 	ld24 r2,9ca4 <__malloc_av_>
    49a8:	57 22 f0 00 	srai r7,#0x2 || nop
    49ac:	65 01 f0 00 	ldi r5,#1 || nop
    49b0:	15 47 f0 00 	sll r5,r7 || nop
    49b4:	a7 c2 00 04 	ld r7,@(4,r2)
    49b8:	05 e7 f0 00 	or r5,r7 || nop
    49bc:	a5 42 00 04 	st r5,@(4,r2)
    49c0:	15 86 7f 09 	mv r5,r6 -> bra 49e4 <_free_r+0x204>
    49c4:	a6 c6 00 08 	ld r6,@(8,r6)
    49c8:	b6 12 00 03 	bne r6,r2,49d4 <_free_r+0x1f4>
    49cc:	7f 05 f0 00 	bra 49e0 <_free_r+0x200> || nop
    49d0:	63 fc f0 00 	ldi r3,#-4 || nop
    49d4:	a7 c6 00 04 	ld r7,@(4,r6)
    49d8:	07 c3 05 57 	and r7,r3 -> cmpu r5,r7
    49dc:	7c fa f0 00 	bc 49c4 <_free_r+0x1e4> || nop
    49e0:	a5 c6 00 0c 	ld r5,@(12,r6)
    49e4:	a5 44 00 0c 	st r5,@(12,r4)
    49e8:	a6 44 00 08 	st r6,@(8,r4)
    49ec:	a4 45 00 08 	st r4,@(8,r5)
    49f0:	a4 46 00 0c 	st r4,@(12,r6)
    49f4:	7f 9d f0 00 	bra 4868 <_free_r+0x88> || nop
    49f8:	2e ef 29 ef 	pop lr -> pop r9
    49fc:	28 ef f0 00 	pop r8 || nop
    4a00:	1f ce f0 00 	jmp lr || nop

00004a04 <_fwalk>:
    4a04:	2d 7f 28 7f 	push fp -> push r8
    4a08:	88 a0 02 e0 	add3 r8,r0,#736
    4a0c:	29 7f 2a 7f 	push r9 -> push r10
    4a10:	2b 7f 2c 7f 	push r11 -> push r12
    4a14:	2e 7f f0 00 	push lr || nop
    4a18:	1c 81 f0 00 	mv r12,r1 || nop
    4a1c:	6a 00 f0 00 	ldi r10,#0 || nop
    4a20:	6d 01 f0 00 	ldi fp,#1 || nop
    4a24:	7f 11 f0 00 	bra 4a68 <_fwalk+0x64> || nop
    4a28:	a9 c8 00 08 	ld r9,@(8,r8)
    4a2c:	ab c8 00 04 	ld r11,@(4,r8)
    4a30:	7f 0b f0 00 	bra 4a5c <_fwalk+0x58> || nop
    4a34:	a4 a9 00 0c 	ldh r4,@(12,r9)
    4a38:	b0 84 00 08 	beqz r4,4a58 <_fwalk+0x54>
    4a3c:	84 c4 ff ff 	and3 r4,r4,#0xffff
    4a40:	0d 54 7d 06 	cmpu fp,r4 -> bnc 4a58 <_fwalk+0x54>
    4a44:	a4 a9 00 0e 	ldh r4,@(14,r9)
    4a48:	44 01 f0 00 	addi r4,#1 || nop
    4a4c:	b0 84 00 03 	beqz r4,4a58 <_fwalk+0x54>
    4a50:	10 89 1e cc 	mv r0,r9 -> jl r12
    4a54:	0a e0 f0 00 	or r10,r0 || nop
    4a58:	49 68 f0 00 	addi r9,#104 || nop
    4a5c:	4b ff f0 00 	addi r11,#-1 || nop
    4a60:	b0 bb ff f5 	bgez r11,4a34 <_fwalk+0x30>
    4a64:	28 c8 f0 00 	ld r8,@r8 || nop
    4a68:	b0 98 ff f0 	bnez r8,4a28 <_fwalk+0x24>
    4a6c:	2e ef 10 8a 	pop lr -> mv r0,r10
    4a70:	2c ef f0 00 	pop r12 || nop
    4a74:	2b ef 2a ef 	pop r11 -> pop r10
    4a78:	29 ef 28 ef 	pop r9 -> pop r8
    4a7c:	2d ef 1f ce 	pop fp -> jmp lr

00004a80 <_fwalk_reent>:
    4a80:	2d 7f 28 7f 	push fp -> push r8
    4a84:	88 a0 02 e0 	add3 r8,r0,#736
    4a88:	29 7f 2a 7f 	push r9 -> push r10
    4a8c:	2b 7f 2c 7f 	push r11 -> push r12
    4a90:	2e 7f 4f fc 	push lr -> addi sp,#-4
    4a94:	1c 80 1d 81 	mv r12,r0 -> mv fp,r1
    4a98:	6a 00 f0 00 	ldi r10,#0 || nop
    4a9c:	65 01 f0 00 	ldi r5,#1 || nop
    4aa0:	7f 12 f0 00 	bra 4ae8 <_fwalk_reent+0x68> || nop
    4aa4:	a9 c8 00 08 	ld r9,@(8,r8)
    4aa8:	ab c8 00 04 	ld r11,@(4,r8)
    4aac:	7f 0c f0 00 	bra 4adc <_fwalk_reent+0x5c> || nop
    4ab0:	a4 a9 00 0c 	ldh r4,@(12,r9)
    4ab4:	b0 84 00 09 	beqz r4,4ad8 <_fwalk_reent+0x58>
    4ab8:	84 c4 ff ff 	and3 r4,r4,#0xffff
    4abc:	05 54 7d 07 	cmpu r5,r4 -> bnc 4ad8 <_fwalk_reent+0x58>
    4ac0:	a4 a9 00 0e 	ldh r4,@(14,r9)
    4ac4:	44 01 f0 00 	addi r4,#1 || nop
    4ac8:	b0 84 00 04 	beqz r4,4ad8 <_fwalk_reent+0x58>
    4acc:	25 4f 10 8c 	st r5,@sp -> mv r0,r12
    4ad0:	11 89 1e cd 	mv r1,r9 -> jl fp
    4ad4:	25 cf 0a e0 	ld r5,@sp -> or r10,r0
    4ad8:	49 68 f0 00 	addi r9,#104 || nop
    4adc:	4b ff f0 00 	addi r11,#-1 || nop
    4ae0:	b0 bb ff f4 	bgez r11,4ab0 <_fwalk_reent+0x30>
    4ae4:	28 c8 f0 00 	ld r8,@r8 || nop
    4ae8:	b0 98 ff ef 	bnez r8,4aa4 <_fwalk_reent+0x24>
    4aec:	4f 04 2e ef 	addi sp,#4 -> pop lr
    4af0:	10 8a 2c ef 	mv r0,r10 -> pop r12
    4af4:	2b ef 2a ef 	pop r11 -> pop r10
    4af8:	29 ef 28 ef 	pop r9 -> pop r8
    4afc:	2d ef f0 00 	pop fp || nop
    4b00:	1f ce f0 00 	jmp lr || nop

00004b04 <_setlocale_r>:
    4b04:	28 7f 2e 7f 	push r8 -> push lr
    4b08:	18 82 f0 00 	mv r8,r2 || nop
    4b0c:	b0 92 00 03 	bnez r2,4b18 <_setlocale_r+0x14>
    4b10:	e4 00 90 44 	ld24 r4,9044 <_global_impure_ptr+0x4>
    4b14:	7f 0f f0 00 	bra 4b50 <_setlocale_r+0x4c> || nop
    4b18:	e1 00 92 18 	ld24 r1,9218 <zeroes.4006+0x20>
    4b1c:	10 82 f0 00 	mv r0,r2 || nop
    4b20:	fe 00 05 a1 	bl 61a4 <strcmp>
    4b24:	b0 80 ff fb 	beqz r0,4b10 <_setlocale_r+0xc>
    4b28:	e1 00 90 44 	ld24 r1,9044 <_global_impure_ptr+0x4>
    4b2c:	10 88 f0 00 	mv r0,r8 || nop
    4b30:	fe 00 05 9d 	bl 61a4 <strcmp>
    4b34:	b0 80 ff f7 	beqz r0,4b10 <_setlocale_r+0xc>
    4b38:	e1 00 90 68 	ld24 r1,9068 <_global_impure_ptr+0x28>
    4b3c:	10 88 f0 00 	mv r0,r8 || nop
    4b40:	fe 00 05 99 	bl 61a4 <strcmp>
    4b44:	e4 00 90 44 	ld24 r4,9044 <_global_impure_ptr+0x4>
    4b48:	b0 80 00 02 	beqz r0,4b50 <_setlocale_r+0x4c>
    4b4c:	64 00 f0 00 	ldi r4,#0 || nop
    4b50:	2e ef 10 84 	pop lr -> mv r0,r4
    4b54:	28 ef f0 00 	pop r8 || nop
    4b58:	1f ce f0 00 	jmp lr || nop

00004b5c <__locale_charset>:
    4b5c:	e0 00 9c 2c 	ld24 r0,9c2c <lc_ctype_charset>
    4b60:	1f ce f0 00 	jmp lr || nop

00004b64 <__locale_mb_cur_max>:
    4b64:	e4 00 a0 b0 	ld24 r4,a0b0 <__mb_cur_max>
    4b68:	20 c4 1f ce 	ld r0,@r4 -> jmp lr

00004b6c <__locale_msgcharset>:
    4b6c:	e0 00 9c 4c 	ld24 r0,9c4c <lc_message_charset>
    4b70:	1f ce f0 00 	jmp lr || nop

00004b74 <__locale_cjk_lang>:
    4b74:	60 00 1f ce 	ldi r0,#0 -> jmp lr

00004b78 <_localeconv_r>:
    4b78:	e0 00 9c 6c 	ld24 r0,9c6c <lconv>
    4b7c:	1f ce f0 00 	jmp lr || nop

00004b80 <setlocale>:
    4b80:	e5 00 a0 ac 	ld24 r5,a0ac <_impure_ptr>
    4b84:	14 80 f0 00 	mv r4,r0 || nop
    4b88:	20 c5 f0 00 	ld r0,@r5 || nop
    4b8c:	2e 7f f0 00 	push lr || nop
    4b90:	12 81 f0 00 	mv r2,r1 || nop
    4b94:	11 84 f0 00 	mv r1,r4 || nop
    4b98:	fe ff ff db 	bl 4b04 <_setlocale_r>
    4b9c:	2e ef 1f ce 	pop lr -> jmp lr

00004ba0 <localeconv>:
    4ba0:	e0 00 9c 6c 	ld24 r0,9c6c <lconv>
    4ba4:	1f ce f0 00 	jmp lr || nop

00004ba8 <__smakebuf_r>:
    4ba8:	28 7f 29 7f 	push r8 -> push r9
    4bac:	2a 7f 2b 7f 	push r10 -> push r11
    4bb0:	2e 7f f0 00 	push lr || nop
    4bb4:	a5 b1 00 0c 	lduh r5,@(12,r1)
    4bb8:	64 02 f0 00 	ldi r4,#2 || nop
    4bbc:	4f c4 f0 00 	addi sp,#-60 || nop
    4bc0:	04 c5 54 50 	and r4,r5 -> slli r4,#0x10
    4bc4:	54 30 f0 00 	srai r4,#0x10 || nop
    4bc8:	1a 80 18 81 	mv r10,r0 -> mv r8,r1
    4bcc:	b0 84 00 02 	beqz r4,4bd4 <__smakebuf_r+0x2c>
    4bd0:	7f 2d f0 00 	bra 4c84 <__smakebuf_r+0xdc> || nop
    4bd4:	a1 a1 00 0e 	ldh r1,@(14,r1)
    4bd8:	b0 b1 00 06 	bgez r1,4bf0 <__smakebuf_r+0x48>
    4bdc:	a4 a8 00 0c 	ldh r4,@(12,r8)
    4be0:	85 c4 00 80 	and3 r5,r4,#0x80
    4be4:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    4be8:	b0 85 00 06 	beqz r5,4c00 <__smakebuf_r+0x58>
    4bec:	69 40 7f 06 	ldi r9,#64 -> bra 4c04 <__smakebuf_r+0x5c>
    4bf0:	12 8f f0 00 	mv r2,sp || nop
    4bf4:	fe 00 09 7b 	bl 71e0 <_fstat_r>
    4bf8:	b0 b0 00 07 	bgez r0,4c14 <__smakebuf_r+0x6c>
    4bfc:	7f f8 f0 00 	bra 4bdc <__smakebuf_r+0x34> || nop
    4c00:	99 f0 04 00 	ldi r9,#1024
    4c04:	84 e4 08 00 	or3 r4,r4,#0x800
    4c08:	a4 28 00 0c 	sth r4,@(12,r8)
    4c0c:	6b 00 f0 00 	ldi r11,#0 || nop
    4c10:	7f 14 f0 00 	bra 4c60 <__smakebuf_r+0xb8> || nop
    4c14:	a4 cf 00 04 	ld r4,@(4,sp)
    4c18:	84 c4 f0 00 	and3 r4,r4,#0xf000
    4c1c:	85 a4 e0 00 	add3 r5,r4,#-8192
    4c20:	80 55 00 01 	cmpui r5,#1
    4c24:	85 a4 80 00 	add3 r5,r4,#-32768
    4c28:	1b 91 f0 00 	mvfc r11,cbr || nop
    4c2c:	a4 b8 00 0c 	lduh r4,@(12,r8)
    4c30:	b0 95 00 09 	bnez r5,4c54 <__smakebuf_r+0xac>
    4c34:	a6 c8 00 28 	ld r6,@(40,r8)
    4c38:	e5 00 61 54 	ld24 r5,6154 <__sseek>
    4c3c:	b6 15 00 06 	bne r6,r5,4c54 <__smakebuf_r+0xac>
    4c40:	84 e4 04 00 	or3 r4,r4,#0x400
    4c44:	a4 28 00 0c 	sth r4,@(12,r8)
    4c48:	94 f0 04 00 	ldi r4,#1024
    4c4c:	a4 48 00 4c 	st r4,@(76,r8)
    4c50:	7f 03 f0 00 	bra 4c5c <__smakebuf_r+0xb4> || nop
    4c54:	84 e4 08 00 	or3 r4,r4,#0x800
    4c58:	a4 28 00 0c 	sth r4,@(12,r8)
    4c5c:	99 f0 04 00 	ldi r9,#1024
    4c60:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    4c64:	fe 00 00 22 	bl 4cec <_malloc_r>
    4c68:	b0 90 00 0d 	bnez r0,4c9c <__smakebuf_r+0xf4>
    4c6c:	a5 a8 00 0c 	ldh r5,@(12,r8)
    4c70:	84 c5 02 00 	and3 r4,r5,#0x200
    4c74:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    4c78:	b0 94 00 19 	bnez r4,4cdc <__smakebuf_r+0x134>
    4c7c:	64 02 04 e5 	ldi r4,#2 -> or r4,r5
    4c80:	a4 28 00 0c 	sth r4,@(12,r8)
    4c84:	84 a8 00 43 	add3 r4,r8,#67
    4c88:	a4 48 00 10 	st r4,@(16,r8)
    4c8c:	24 48 f0 00 	st r4,@r8 || nop
    4c90:	64 01 f0 00 	ldi r4,#1 || nop
    4c94:	a4 48 00 14 	st r4,@(20,r8)
    4c98:	7f 11 f0 00 	bra 4cdc <__smakebuf_r+0x134> || nop
    4c9c:	e4 00 44 ac 	ld24 r4,44ac <_cleanup_r>
    4ca0:	a4 4a 00 3c 	st r4,@(60,r10)
    4ca4:	a4 b8 00 0c 	lduh r4,@(12,r8)
    4ca8:	a0 48 00 10 	st r0,@(16,r8)
    4cac:	a9 48 00 14 	st r9,@(20,r8)
    4cb0:	84 e4 00 80 	or3 r4,r4,#0x80
    4cb4:	a4 28 00 0c 	sth r4,@(12,r8)
    4cb8:	20 48 f0 00 	st r0,@r8 || nop
    4cbc:	b0 8b 00 08 	beqz r11,4cdc <__smakebuf_r+0x134>
    4cc0:	a1 a8 00 0e 	ldh r1,@(14,r8)
    4cc4:	10 8a f0 00 	mv r0,r10 || nop
    4cc8:	fe 00 0a 66 	bl 7660 <_isatty_r>
    4ccc:	b0 80 00 04 	beqz r0,4cdc <__smakebuf_r+0x134>
    4cd0:	a5 b8 00 0c 	lduh r5,@(12,r8)
    4cd4:	64 01 04 e5 	ldi r4,#1 -> or r4,r5
    4cd8:	a4 28 00 0c 	sth r4,@(12,r8)
    4cdc:	4f 3c 2e ef 	addi sp,#60 -> pop lr
    4ce0:	2b ef 2a ef 	pop r11 -> pop r10
    4ce4:	29 ef 28 ef 	pop r9 -> pop r8
    4ce8:	1f ce f0 00 	jmp lr || nop

00004cec <_malloc_r>:
    4cec:	84 a1 00 0b 	add3 r4,r1,#11
    4cf0:	2d 7f 28 7f 	push fp -> push r8
    4cf4:	29 7f 2a 7f 	push r9 -> push r10
    4cf8:	2b 7f 2c 7f 	push r11 -> push r12
    4cfc:	65 16 f0 00 	ldi r5,#22 || nop
    4d00:	2e 7f f0 00 	push lr || nop
    4d04:	05 54 f0 00 	cmpu r5,r4 || nop
    4d08:	4f fc f0 00 	addi sp,#-4 || nop
    4d0c:	1a 80 f0 00 	mv r10,r0 || nop
    4d10:	7d 04 f0 00 	bnc 4d20 <_malloc_r+0x34> || nop
    4d14:	68 f8 08 c4 	ldi r8,#-8 -> and r8,r4
    4d18:	b0 b8 00 03 	bgez r8,4d24 <_malloc_r+0x38>
    4d1c:	7f 03 f0 00 	bra 4d28 <_malloc_r+0x3c> || nop
    4d20:	68 10 f0 00 	ldi r8,#16 || nop
    4d24:	08 51 7d 03 	cmpu r8,r1 -> bnc 4d30 <_malloc_r+0x44>
    4d28:	64 0c 24 4a 	ldi r4,#12 -> st r4,@r10
    4d2c:	ff 00 01 74 	bra 52fc <_malloc_r+0x610>
    4d30:	10 8a f0 00 	mv r0,r10 || nop
    4d34:	fe 00 01 95 	bl 5388 <__malloc_lock>
    4d38:	94 f0 01 f7 	ldi r4,#503
    4d3c:	04 58 7c 12 	cmpu r4,r8 -> bc 4d84 <_malloc_r+0x98>
    4d40:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    4d44:	95 88 00 03 	srl3 r5,r8,#3
    4d48:	04 a8 f0 00 	add r4,r8 || nop
    4d4c:	a9 c4 00 0c 	ld r9,@(12,r4)
    4d50:	b9 14 00 05 	bne r9,r4,4d64 <_malloc_r+0x78>
    4d54:	84 a9 00 08 	add3 r4,r9,#8
    4d58:	a9 c9 00 14 	ld r9,@(20,r9)
    4d5c:	45 02 f0 00 	addi r5,#2 || nop
    4d60:	b9 04 00 3c 	beq r9,r4,4e50 <_malloc_r+0x164>
    4d64:	a4 c9 00 04 	ld r4,@(4,r9)
    4d68:	65 fc f0 00 	ldi r5,#-4 || nop
    4d6c:	a6 c9 00 08 	ld r6,@(8,r9)
    4d70:	04 c5 f0 00 	and r4,r5 || nop
    4d74:	a5 c9 00 0c 	ld r5,@(12,r9)
    4d78:	a5 46 00 0c 	st r5,@(12,r6)
    4d7c:	a6 45 00 08 	st r6,@(8,r5)
    4d80:	7f 4f f0 00 	bra 4ebc <_malloc_r+0x1d0> || nop
    4d84:	95 88 00 09 	srl3 r5,r8,#9
    4d88:	b0 95 00 03 	bnez r5,4d94 <_malloc_r+0xa8>
    4d8c:	95 88 00 03 	srl3 r5,r8,#3
    4d90:	7f 15 f0 00 	bra 4de4 <_malloc_r+0xf8> || nop
    4d94:	64 04 04 55 	ldi r4,#4 -> cmpu r4,r5
    4d98:	7c 03 f0 00 	bc 4da4 <_malloc_r+0xb8> || nop
    4d9c:	95 88 00 06 	srl3 r5,r8,#6
    4da0:	45 38 7f 11 	addi r5,#56 -> bra 4de4 <_malloc_r+0xf8>
    4da4:	64 14 04 55 	ldi r4,#20 -> cmpu r4,r5
    4da8:	7c 02 f0 00 	bc 4db0 <_malloc_r+0xc4> || nop
    4dac:	45 5b 7f 0e 	addi r5,#91 -> bra 4de4 <_malloc_r+0xf8>
    4db0:	64 54 04 55 	ldi r4,#84 -> cmpu r4,r5
    4db4:	7c 03 f0 00 	bc 4dc0 <_malloc_r+0xd4> || nop
    4db8:	95 88 00 0c 	srl3 r5,r8,#12
    4dbc:	45 6e 7f 0a 	addi r5,#110 -> bra 4de4 <_malloc_r+0xf8>
    4dc0:	94 f0 01 54 	ldi r4,#340
    4dc4:	04 55 7c 03 	cmpu r4,r5 -> bc 4dd0 <_malloc_r+0xe4>
    4dc8:	95 88 00 0f 	srl3 r5,r8,#15
    4dcc:	45 77 7f 06 	addi r5,#119 -> bra 4de4 <_malloc_r+0xf8>
    4dd0:	94 f0 05 54 	ldi r4,#1364
    4dd4:	04 55 7c 03 	cmpu r4,r5 -> bc 4de0 <_malloc_r+0xf4>
    4dd8:	95 88 00 12 	srl3 r5,r8,#18
    4ddc:	45 7c 7f 02 	addi r5,#124 -> bra 4de4 <_malloc_r+0xf8>
    4de0:	65 7e f0 00 	ldi r5,#126 || nop
    4de4:	94 c5 00 03 	sll3 r4,r5,#3
    4de8:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4dec:	04 a6 f0 00 	add r4,r6 || nop
    4df0:	a9 c4 00 0c 	ld r9,@(12,r4)
    4df4:	62 fc f0 00 	ldi r2,#-4 || nop
    4df8:	63 0f f0 00 	ldi r3,#15 || nop
    4dfc:	7f 13 f0 00 	bra 4e48 <_malloc_r+0x15c> || nop
    4e00:	a6 c9 00 04 	ld r6,@(4,r9)
    4e04:	06 c2 f0 00 	and r6,r2 || nop
    4e08:	17 86 07 28 	mv r7,r6 -> sub r7,r8
    4e0c:	03 47 7d 03 	cmp r3,r7 -> bnc 4e18 <_malloc_r+0x12c>
    4e10:	45 ff f0 00 	addi r5,#-1 || nop
    4e14:	7f 0e f0 00 	bra 4e4c <_malloc_r+0x160> || nop
    4e18:	b0 a7 00 0b 	bltz r7,4e44 <_malloc_r+0x158>
    4e1c:	a4 c9 00 0c 	ld r4,@(12,r9)
    4e20:	06 a9 f0 00 	add r6,r9 || nop
    4e24:	a5 c9 00 08 	ld r5,@(8,r9)
    4e28:	a4 45 00 0c 	st r4,@(12,r5)
    4e2c:	a5 44 00 08 	st r5,@(8,r4)
    4e30:	a5 c6 00 04 	ld r5,@(4,r6)
    4e34:	64 01 f0 00 	ldi r4,#1 || nop
    4e38:	04 e5 f0 00 	or r4,r5 || nop
    4e3c:	a4 46 00 04 	st r4,@(4,r6)
    4e40:	ff 00 01 39 	bra 5324 <_malloc_r+0x638>
    4e44:	a9 c9 00 0c 	ld r9,@(12,r9)
    4e48:	b9 14 ff ee 	bne r9,r4,4e00 <_malloc_r+0x114>
    4e4c:	45 01 f0 00 	addi r5,#1 || nop
    4e50:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4e54:	a9 c6 00 10 	ld r9,@(16,r6)
    4e58:	e2 00 9c ac 	ld24 r2,9cac <__malloc_av_+0x8>
    4e5c:	b9 02 00 58 	beq r9,r2,4fbc <_malloc_r+0x2d0>
    4e60:	a4 c9 00 04 	ld r4,@(4,r9)
    4e64:	67 fc f0 00 	ldi r7,#-4 || nop
    4e68:	63 0f f0 00 	ldi r3,#15 || nop
    4e6c:	04 c7 f0 00 	and r4,r7 || nop
    4e70:	17 84 07 28 	mv r7,r4 -> sub r7,r8
    4e74:	03 47 7d 0f 	cmp r3,r7 -> bnc 4eb0 <_malloc_r+0x1c4>
    4e78:	65 01 f0 00 	ldi r5,#1 || nop
    4e7c:	05 e8 f0 00 	or r5,r8 || nop
    4e80:	a5 49 00 04 	st r5,@(4,r9)
    4e84:	14 89 f0 00 	mv r4,r9 || nop
    4e88:	04 a8 f0 00 	add r4,r8 || nop
    4e8c:	a4 46 00 14 	st r4,@(20,r6)
    4e90:	a4 46 00 10 	st r4,@(16,r6)
    4e94:	a2 44 00 0c 	st r2,@(12,r4)
    4e98:	a2 44 00 08 	st r2,@(8,r4)
    4e9c:	65 01 05 e7 	ldi r5,#1 -> or r5,r7
    4ea0:	a5 44 00 04 	st r5,@(4,r4)
    4ea4:	04 a7 f0 00 	add r4,r7 || nop
    4ea8:	27 44 f0 00 	st r7,@r4 || nop
    4eac:	ff 00 01 1e 	bra 5324 <_malloc_r+0x638>
    4eb0:	a2 46 00 14 	st r2,@(20,r6)
    4eb4:	a2 46 00 10 	st r2,@(16,r6)
    4eb8:	b0 a7 00 06 	bltz r7,4ed0 <_malloc_r+0x1e4>
    4ebc:	04 a9 f0 00 	add r4,r9 || nop
    4ec0:	a6 c4 00 04 	ld r6,@(4,r4)
    4ec4:	65 01 05 e6 	ldi r5,#1 -> or r5,r6
    4ec8:	a5 44 00 04 	st r5,@(4,r4)
    4ecc:	ff 00 01 16 	bra 5324 <_malloc_r+0x638>
    4ed0:	97 f0 01 ff 	ldi r7,#511
    4ed4:	07 54 7c 0c 	cmpu r7,r4 -> bc 4f04 <_malloc_r+0x218>
    4ed8:	54 03 f0 00 	srli r4,#0x3 || nop
    4edc:	92 a4 00 02 	sra3 r2,r4,#2
    4ee0:	67 01 17 42 	ldi r7,#1 -> sll r7,r2
    4ee4:	a2 c6 00 04 	ld r2,@(4,r6)
    4ee8:	54 43 f0 00 	slli r4,#0x3 || nop
    4eec:	07 e2 f0 00 	or r7,r2 || nop
    4ef0:	a7 46 00 04 	st r7,@(4,r6)
    4ef4:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4ef8:	04 a6 f0 00 	add r4,r6 || nop
    4efc:	a6 c4 00 08 	ld r6,@(8,r4)
    4f00:	7f 2b f0 00 	bra 4fac <_malloc_r+0x2c0> || nop
    4f04:	97 84 00 09 	srl3 r7,r4,#9
    4f08:	66 04 06 57 	ldi r6,#4 -> cmpu r6,r7
    4f0c:	7c 03 f0 00 	bc 4f18 <_malloc_r+0x22c> || nop
    4f10:	97 84 00 06 	srl3 r7,r4,#6
    4f14:	47 38 7f 11 	addi r7,#56 -> bra 4f58 <_malloc_r+0x26c>
    4f18:	66 14 06 57 	ldi r6,#20 -> cmpu r6,r7
    4f1c:	7c 02 f0 00 	bc 4f24 <_malloc_r+0x238> || nop
    4f20:	47 5b 7f 0e 	addi r7,#91 -> bra 4f58 <_malloc_r+0x26c>
    4f24:	66 54 06 57 	ldi r6,#84 -> cmpu r6,r7
    4f28:	7c 03 f0 00 	bc 4f34 <_malloc_r+0x248> || nop
    4f2c:	97 84 00 0c 	srl3 r7,r4,#12
    4f30:	47 6e 7f 0a 	addi r7,#110 -> bra 4f58 <_malloc_r+0x26c>
    4f34:	96 f0 01 54 	ldi r6,#340
    4f38:	06 57 7c 03 	cmpu r6,r7 -> bc 4f44 <_malloc_r+0x258>
    4f3c:	97 84 00 0f 	srl3 r7,r4,#15
    4f40:	47 77 7f 06 	addi r7,#119 -> bra 4f58 <_malloc_r+0x26c>
    4f44:	96 f0 05 54 	ldi r6,#1364
    4f48:	06 57 7c 03 	cmpu r6,r7 -> bc 4f54 <_malloc_r+0x268>
    4f4c:	97 84 00 12 	srl3 r7,r4,#18
    4f50:	47 7c 7f 02 	addi r7,#124 -> bra 4f58 <_malloc_r+0x26c>
    4f54:	67 7e f0 00 	ldi r7,#126 || nop
    4f58:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4f5c:	92 c7 00 03 	sll3 r2,r7,#3
    4f60:	02 a6 f0 00 	add r2,r6 || nop
    4f64:	a6 c2 00 08 	ld r6,@(8,r2)
    4f68:	b6 12 00 0c 	bne r6,r2,4f98 <_malloc_r+0x2ac>
    4f6c:	e2 00 9c a4 	ld24 r2,9ca4 <__malloc_av_>
    4f70:	57 22 f0 00 	srai r7,#0x2 || nop
    4f74:	64 01 f0 00 	ldi r4,#1 || nop
    4f78:	14 47 f0 00 	sll r4,r7 || nop
    4f7c:	a7 c2 00 04 	ld r7,@(4,r2)
    4f80:	04 e7 f0 00 	or r4,r7 || nop
    4f84:	a4 42 00 04 	st r4,@(4,r2)
    4f88:	14 86 7f 09 	mv r4,r6 -> bra 4fac <_malloc_r+0x2c0>
    4f8c:	a6 c6 00 08 	ld r6,@(8,r6)
    4f90:	b6 12 00 03 	bne r6,r2,4f9c <_malloc_r+0x2b0>
    4f94:	7f 05 f0 00 	bra 4fa8 <_malloc_r+0x2bc> || nop
    4f98:	63 fc f0 00 	ldi r3,#-4 || nop
    4f9c:	a7 c6 00 04 	ld r7,@(4,r6)
    4fa0:	07 c3 04 57 	and r7,r3 -> cmpu r4,r7
    4fa4:	7c fa f0 00 	bc 4f8c <_malloc_r+0x2a0> || nop
    4fa8:	a4 c6 00 0c 	ld r4,@(12,r6)
    4fac:	a4 49 00 0c 	st r4,@(12,r9)
    4fb0:	a6 49 00 08 	st r6,@(8,r9)
    4fb4:	a9 44 00 08 	st r9,@(8,r4)
    4fb8:	a9 46 00 0c 	st r9,@(12,r6)
    4fbc:	96 a5 00 02 	sra3 r6,r5,#2
    4fc0:	64 01 14 46 	ldi r4,#1 -> sll r4,r6
    4fc4:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    4fc8:	a6 c6 00 04 	ld r6,@(4,r6)
    4fcc:	06 54 7c 52 	cmpu r6,r4 -> bc 5114 <_malloc_r+0x428>
    4fd0:	17 84 07 c6 	mv r7,r4 -> and r7,r6
    4fd4:	b0 97 00 08 	bnez r7,4ff4 <_malloc_r+0x308>
    4fd8:	67 fc 07 c5 	ldi r7,#-4 -> and r7,r5
    4fdc:	85 a7 00 04 	add3 r5,r7,#4
    4fe0:	7f 02 f0 00 	bra 4fe8 <_malloc_r+0x2fc> || nop
    4fe4:	45 04 f0 00 	addi r5,#4 || nop
    4fe8:	54 41 f0 00 	slli r4,#0x1 || nop
    4fec:	17 84 07 c6 	mv r7,r4 -> and r7,r6
    4ff0:	b0 87 ff fd 	beqz r7,4fe4 <_malloc_r+0x2f8>
    4ff4:	eb 00 9c a4 	ld24 r11,9ca4 <__malloc_av_>
    4ff8:	6c fc f0 00 	ldi r12,#-4 || nop
    4ffc:	6d 0f f0 00 	ldi fp,#15 || nop
    5000:	92 c5 00 03 	sll3 r2,r5,#3
    5004:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    5008:	02 a6 f0 00 	add r2,r6 || nop
    500c:	1e 82 17 85 	mv lr,r2 -> mv r7,r5
    5010:	a9 ce 00 0c 	ld r9,@(12,lr)
    5014:	7f 25 f0 00 	bra 50a8 <_malloc_r+0x3bc> || nop
    5018:	a3 c9 00 04 	ld r3,@(4,r9)
    501c:	03 cc f0 00 	and r3,r12 || nop
    5020:	16 83 06 28 	mv r6,r3 -> sub r6,r8
    5024:	0d 46 7d 15 	cmp fp,r6 -> bnc 5078 <_malloc_r+0x38c>
    5028:	a7 c9 00 08 	ld r7,@(8,r9)
    502c:	65 01 f0 00 	ldi r5,#1 || nop
    5030:	05 e8 f0 00 	or r5,r8 || nop
    5034:	a5 49 00 04 	st r5,@(4,r9)
    5038:	a5 c9 00 0c 	ld r5,@(12,r9)
    503c:	14 89 f0 00 	mv r4,r9 || nop
    5040:	04 a8 f0 00 	add r4,r8 || nop
    5044:	a5 47 00 0c 	st r5,@(12,r7)
    5048:	a7 45 00 08 	st r7,@(8,r5)
    504c:	e5 00 9c a4 	ld24 r5,9ca4 <__malloc_av_>
    5050:	a4 45 00 14 	st r4,@(20,r5)
    5054:	a4 45 00 10 	st r4,@(16,r5)
    5058:	e5 00 9c ac 	ld24 r5,9cac <__malloc_av_+0x8>
    505c:	a5 44 00 0c 	st r5,@(12,r4)
    5060:	a5 44 00 08 	st r5,@(8,r4)
    5064:	65 01 05 e6 	ldi r5,#1 -> or r5,r6
    5068:	a5 44 00 04 	st r5,@(4,r4)
    506c:	04 a6 f0 00 	add r4,r6 || nop
    5070:	26 44 f0 00 	st r6,@r4 || nop
    5074:	ff 00 00 ac 	bra 5324 <_malloc_r+0x638>
    5078:	b0 a6 00 0b 	bltz r6,50a4 <_malloc_r+0x3b8>
    507c:	03 a9 f0 00 	add r3,r9 || nop
    5080:	a5 c3 00 04 	ld r5,@(4,r3)
    5084:	64 01 f0 00 	ldi r4,#1 || nop
    5088:	04 e5 f0 00 	or r4,r5 || nop
    508c:	a4 43 00 04 	st r4,@(4,r3)
    5090:	a5 c9 00 08 	ld r5,@(8,r9)
    5094:	a4 c9 00 0c 	ld r4,@(12,r9)
    5098:	a4 45 00 0c 	st r4,@(12,r5)
    509c:	a5 44 00 08 	st r5,@(8,r4)
    50a0:	ff 00 00 a1 	bra 5324 <_malloc_r+0x638>
    50a4:	a9 c9 00 0c 	ld r9,@(12,r9)
    50a8:	b9 1e ff dc 	bne r9,lr,5018 <_malloc_r+0x32c>
    50ac:	8e a9 00 08 	add3 lr,r9,#8
    50b0:	47 01 f0 00 	addi r7,#1 || nop
    50b4:	66 03 06 c7 	ldi r6,#3 -> and r6,r7
    50b8:	b0 96 ff d6 	bnez r6,5010 <_malloc_r+0x324>
    50bc:	16 82 f0 00 	mv r6,r2 || nop
    50c0:	62 03 02 c5 	ldi r2,#3 -> and r2,r5
    50c4:	b0 92 00 06 	bnez r2,50dc <_malloc_r+0x3f0>
    50c8:	a6 cb 00 04 	ld r6,@(4,r11)
    50cc:	05 b4 f0 00 	not r5,r4 || nop
    50d0:	05 c6 f0 00 	and r5,r6 || nop
    50d4:	a5 4b 00 04 	st r5,@(4,r11)
    50d8:	7f 05 f0 00 	bra 50ec <_malloc_r+0x400> || nop
    50dc:	82 a6 ff f8 	add3 r2,r6,#-8
    50e0:	26 c6 f0 00 	ld r6,@r6 || nop
    50e4:	45 ff f0 00 	addi r5,#-1 || nop
    50e8:	b6 02 ff f6 	beq r6,r2,50c0 <_malloc_r+0x3d4>
    50ec:	a6 cb 00 04 	ld r6,@(4,r11)
    50f0:	54 41 f0 00 	slli r4,#0x1 || nop
    50f4:	06 54 7c 08 	cmpu r6,r4 -> bc 5114 <_malloc_r+0x428>
    50f8:	b0 84 00 07 	beqz r4,5114 <_malloc_r+0x428>
    50fc:	15 87 7f 03 	mv r5,r7 -> bra 5108 <_malloc_r+0x41c>
    5100:	45 04 f0 00 	addi r5,#4 || nop
    5104:	54 41 f0 00 	slli r4,#0x1 || nop
    5108:	17 84 07 c6 	mv r7,r4 -> and r7,r6
    510c:	b0 97 ff bd 	bnez r7,5000 <_malloc_r+0x314>
    5110:	7f fc f0 00 	bra 5100 <_malloc_r+0x414> || nop
    5114:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    5118:	ab c4 00 08 	ld r11,@(8,r4)
    511c:	64 fc f0 00 	ldi r4,#-4 || nop
    5120:	ac cb 00 04 	ld r12,@(4,r11)
    5124:	0c c4 f0 00 	and r12,r4 || nop
    5128:	0c 58 7c 04 	cmpu r12,r8 -> bc 5138 <_malloc_r+0x44c>
    512c:	14 8c 04 28 	mv r4,r12 -> sub r4,r8
    5130:	65 0f 05 44 	ldi r5,#15 -> cmp r5,r4
    5134:	7c 73 f0 00 	bc 5300 <_malloc_r+0x614> || nop
    5138:	e4 00 a0 fc 	ld24 r4,a0fc <__malloc_top_pad>
    513c:	2d c4 f0 00 	ld fp,@r4 || nop
    5140:	15 8b f0 00 	mv r5,r11 || nop
    5144:	e4 00 a0 b4 	ld24 r4,a0b4 <__malloc_sbrk_base>
    5148:	24 c4 f0 00 	ld r4,@r4 || nop
    514c:	05 ac f0 00 	add r5,r12 || nop
    5150:	0d a8 f0 00 	add fp,r8 || nop
    5154:	44 01 f0 00 	addi r4,#1 || nop
    5158:	b0 94 00 03 	bnez r4,5164 <_malloc_r+0x478>
    515c:	4d 10 f0 00 	addi fp,#16 || nop
    5160:	7f 04 f0 00 	bra 5170 <_malloc_r+0x484> || nop
    5164:	8d ad 10 0f 	add3 fp,fp,#4111
    5168:	94 f0 f0 00 	ldi r4,#-4096
    516c:	0d c4 f0 00 	and fp,r4 || nop
    5170:	10 8a 11 8d 	mv r0,r10 -> mv r1,fp
    5174:	25 4f f0 00 	st r5,@sp || nop
    5178:	fe 00 03 bc 	bl 6068 <_sbrk_r>
    517c:	84 a0 00 01 	add3 r4,r0,#1
    5180:	19 80 f0 00 	mv r9,r0 || nop
    5184:	25 cf f0 00 	ld r5,@sp || nop
    5188:	b0 84 00 51 	beqz r4,52cc <_malloc_r+0x5e0>
    518c:	00 55 7d 03 	cmpu r0,r5 -> bnc 5198 <_malloc_r+0x4ac>
    5190:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    5194:	bb 14 00 4e 	bne r11,r4,52cc <_malloc_r+0x5e0>
    5198:	e6 00 a0 c0 	ld24 r6,a0c0 <__edata>
    519c:	24 c6 04 ad 	ld r4,@r6 -> add r4,fp
    51a0:	24 46 f0 00 	st r4,@r6 || nop
    51a4:	b9 15 00 09 	bne r9,r5,51c8 <_malloc_r+0x4dc>
    51a8:	86 c9 0f ff 	and3 r6,r9,#0xfff
    51ac:	b0 96 00 07 	bnez r6,51c8 <_malloc_r+0x4dc>
    51b0:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    51b4:	a5 c4 00 08 	ld r5,@(8,r4)
    51b8:	0c ad f0 00 	add r12,fp || nop
    51bc:	64 01 04 ec 	ldi r4,#1 -> or r4,r12
    51c0:	a4 45 00 04 	st r4,@(4,r5)
    51c4:	7f 39 f0 00 	bra 52a8 <_malloc_r+0x5bc> || nop
    51c8:	e6 00 a0 b4 	ld24 r6,a0b4 <__malloc_sbrk_base>
    51cc:	27 c6 47 01 	ld r7,@r6 -> addi r7,#1
    51d0:	b0 97 00 02 	bnez r7,51d8 <_malloc_r+0x4ec>
    51d4:	29 46 7f 05 	st r9,@r6 -> bra 51e8 <_malloc_r+0x4fc>
    51d8:	16 89 06 25 	mv r6,r9 -> sub r6,r5
    51dc:	15 86 05 a4 	mv r5,r6 -> add r5,r4
    51e0:	e4 00 a0 c0 	ld24 r4,a0c0 <__edata>
    51e4:	25 44 f0 00 	st r5,@r4 || nop
    51e8:	65 07 05 c9 	ldi r5,#7 -> and r5,r9
    51ec:	b0 85 00 04 	beqz r5,51fc <_malloc_r+0x510>
    51f0:	64 08 04 25 	ldi r4,#8 -> sub r4,r5
    51f4:	09 a4 f0 00 	add r9,r4 || nop
    51f8:	7f 02 f0 00 	bra 5200 <_malloc_r+0x514> || nop
    51fc:	64 00 f0 00 	ldi r4,#0 || nop
    5200:	84 a4 10 00 	add3 r4,r4,#4096
    5204:	0d a9 f0 00 	add fp,r9 || nop
    5208:	8d cd 0f ff 	and3 fp,fp,#0xfff
    520c:	04 2d f0 00 	sub r4,fp || nop
    5210:	11 84 10 8a 	mv r1,r4 -> mv r0,r10
    5214:	24 4f f0 00 	st r4,@sp || nop
    5218:	fe 00 03 94 	bl 6068 <_sbrk_r>
    521c:	85 a0 00 01 	add3 r5,r0,#1
    5220:	24 cf f0 00 	ld r4,@sp || nop
    5224:	b0 95 00 03 	bnez r5,5230 <_malloc_r+0x544>
    5228:	10 89 f0 00 	mv r0,r9 || nop
    522c:	64 00 f0 00 	ldi r4,#0 || nop
    5230:	e6 00 a0 c0 	ld24 r6,a0c0 <__edata>
    5234:	25 c6 f0 00 	ld r5,@r6 || nop
    5238:	00 29 f0 00 	sub r0,r9 || nop
    523c:	00 a4 f0 00 	add r0,r4 || nop
    5240:	05 a4 f0 00 	add r5,r4 || nop
    5244:	64 01 f0 00 	ldi r4,#1 || nop
    5248:	25 46 f0 00 	st r5,@r6 || nop
    524c:	e5 00 9c a4 	ld24 r5,9ca4 <__malloc_av_>
    5250:	a9 45 00 08 	st r9,@(8,r5)
    5254:	04 e0 f0 00 	or r4,r0 || nop
    5258:	a4 49 00 04 	st r4,@(4,r9)
    525c:	bb 05 00 13 	beq r11,r5,52a8 <_malloc_r+0x5bc>
    5260:	65 0f 05 5c 	ldi r5,#15 -> cmpu r5,r12
    5264:	7c 04 f0 00 	bc 5274 <_malloc_r+0x588> || nop
    5268:	64 01 f0 00 	ldi r4,#1 || nop
    526c:	a4 49 00 04 	st r4,@(4,r9)
    5270:	7f 17 f0 00 	bra 52cc <_malloc_r+0x5e0> || nop
    5274:	a6 cb 00 04 	ld r6,@(4,r11)
    5278:	64 f8 4c f4 	ldi r4,#-8 -> addi r12,#-12
    527c:	0c c4 f0 00 	and r12,r4 || nop
    5280:	64 01 04 c6 	ldi r4,#1 -> and r4,r6
    5284:	04 ec f0 00 	or r4,r12 || nop
    5288:	a4 4b 00 04 	st r4,@(4,r11)
    528c:	14 8b 66 05 	mv r4,r11 -> ldi r6,#5
    5290:	04 ac 26 64 	add r4,r12 -> st r6,@+r4
    5294:	a6 44 00 04 	st r6,@(4,r4)
    5298:	05 5c 7d 04 	cmpu r5,r12 -> bnc 52a8 <_malloc_r+0x5bc>
    529c:	81 ab 00 08 	add3 r1,r11,#8
    52a0:	10 8a f0 00 	mv r0,r10 || nop
    52a4:	fe ff fd 4f 	bl 47e0 <_free_r>
    52a8:	e4 00 a0 c0 	ld24 r4,a0c0 <__edata>
    52ac:	e5 00 a0 f8 	ld24 r5,a0f8 <__malloc_max_sbrked_mem>
    52b0:	24 c4 26 c5 	ld r4,@r4 -> ld r6,@r5
    52b4:	06 54 7d 02 	cmpu r6,r4 -> bnc 52bc <_malloc_r+0x5d0>
    52b8:	24 45 f0 00 	st r4,@r5 || nop
    52bc:	e5 00 a0 f4 	ld24 r5,a0f4 <__malloc_max_total_mem>
    52c0:	26 c5 06 54 	ld r6,@r5 -> cmpu r6,r4
    52c4:	7d 02 f0 00 	bnc 52cc <_malloc_r+0x5e0> || nop
    52c8:	24 45 f0 00 	st r4,@r5 || nop
    52cc:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    52d0:	a4 c4 00 08 	ld r4,@(8,r4)
    52d4:	a5 c4 00 04 	ld r5,@(4,r4)
    52d8:	64 fc 05 c4 	ldi r4,#-4 -> and r5,r4
    52dc:	14 85 f0 00 	mv r4,r5 || nop
    52e0:	05 58 f0 00 	cmpu r5,r8 || nop
    52e4:	04 28 f0 00 	sub r4,r8 || nop
    52e8:	7c 03 f0 00 	bc 52f4 <_malloc_r+0x608> || nop
    52ec:	65 0f 05 44 	ldi r5,#15 -> cmp r5,r4
    52f0:	7c 04 f0 00 	bc 5300 <_malloc_r+0x614> || nop
    52f4:	10 8a f0 00 	mv r0,r10 || nop
    52f8:	fe 00 00 25 	bl 538c <__malloc_unlock>
    52fc:	60 00 7f 0d 	ldi r0,#0 -> bra 5330 <_malloc_r+0x644>
    5300:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    5304:	a9 c6 00 08 	ld r9,@(8,r6)
    5308:	65 01 05 e8 	ldi r5,#1 -> or r5,r8
    530c:	a5 49 00 04 	st r5,@(4,r9)
    5310:	65 01 f0 00 	ldi r5,#1 || nop
    5314:	08 a9 f0 00 	add r8,r9 || nop
    5318:	a8 46 00 08 	st r8,@(8,r6)
    531c:	05 e4 f0 00 	or r5,r4 || nop
    5320:	a5 48 00 04 	st r5,@(4,r8)
    5324:	10 8a f0 00 	mv r0,r10 || nop
    5328:	fe 00 00 19 	bl 538c <__malloc_unlock>
    532c:	80 a9 00 08 	add3 r0,r9,#8
    5330:	4f 04 2e ef 	addi sp,#4 -> pop lr
    5334:	2c ef 2b ef 	pop r12 -> pop r11
    5338:	2a ef f0 00 	pop r10 || nop
    533c:	29 ef 28 ef 	pop r9 -> pop r8
    5340:	2d ef 1f ce 	pop fp -> jmp lr

00005344 <memchr>:
    5344:	81 c1 00 ff 	and3 r1,r1,#0xff
    5348:	02 a0 f0 00 	add r2,r0 || nop
    534c:	7f 04 f0 00 	bra 535c <memchr+0x18> || nop
    5350:	24 90 f0 00 	ldub r4,@r0 || nop
    5354:	b4 01 00 04 	beq r4,r1,5364 <memchr+0x20>
    5358:	40 01 f0 00 	addi r0,#1 || nop
    535c:	b0 12 ff fd 	bne r0,r2,5350 <memchr+0xc>
    5360:	60 00 f0 00 	ldi r0,#0 || nop
    5364:	1f ce f0 00 	jmp lr || nop

00005368 <memcpy>:
    5368:	64 00 7f 06 	ldi r4,#0 -> bra 5380 <memcpy+0x18>
    536c:	15 81 05 a4 	mv r5,r1 -> add r5,r4
    5370:	26 85 f0 00 	ldb r6,@r5 || nop
    5374:	15 80 05 a4 	mv r5,r0 -> add r5,r4
    5378:	44 01 f0 00 	addi r4,#1 || nop
    537c:	26 05 f0 00 	stb r6,@r5 || nop
    5380:	b4 12 ff fb 	bne r4,r2,536c <memcpy+0x4>
    5384:	1f ce f0 00 	jmp lr || nop

00005388 <__malloc_lock>:
    5388:	1f ce f0 00 	jmp lr || nop

0000538c <__malloc_unlock>:
    538c:	1f ce f0 00 	jmp lr || nop

00005390 <_Balloc>:
    5390:	28 7f 29 7f 	push r8 -> push r9
    5394:	2a 7f 2e 7f 	push r10 -> push lr
    5398:	a4 c0 00 4c 	ld r4,@(76,r0)
    539c:	19 80 1a 81 	mv r9,r0 -> mv r10,r1
    53a0:	b0 84 00 06 	beqz r4,53b8 <_Balloc+0x28>
    53a4:	a4 c9 00 4c 	ld r4,@(76,r9)
    53a8:	95 ca 00 02 	sll3 r5,r10,#2
    53ac:	04 a5 20 c4 	add r4,r5 -> ld r0,@r4
    53b0:	b0 90 00 08 	bnez r0,53d0 <_Balloc+0x40>
    53b4:	7f 09 f0 00 	bra 53d8 <_Balloc+0x48> || nop
    53b8:	61 04 f0 00 	ldi r1,#4 || nop
    53bc:	62 21 f0 00 	ldi r2,#33 || nop
    53c0:	fe 00 06 c3 	bl 6ecc <_calloc_r>
    53c4:	a0 49 00 4c 	st r0,@(76,r9)
    53c8:	b0 90 ff f7 	bnez r0,53a4 <_Balloc+0x14>
    53cc:	60 00 7f 0e 	ldi r0,#0 -> bra 5404 <_Balloc+0x74>
    53d0:	25 c0 25 44 	ld r5,@r0 -> st r5,@r4
    53d4:	7f 09 f0 00 	bra 53f8 <_Balloc+0x68> || nop
    53d8:	68 01 18 4a 	ldi r8,#1 -> sll r8,r10
    53dc:	82 a8 00 05 	add3 r2,r8,#5
    53e0:	10 89 f0 00 	mv r0,r9 || nop
    53e4:	61 01 52 42 	ldi r1,#1 -> slli r2,#0x2
    53e8:	fe 00 06 b9 	bl 6ecc <_calloc_r>
    53ec:	b0 80 ff f8 	beqz r0,53cc <_Balloc+0x3c>
    53f0:	aa 40 00 04 	st r10,@(4,r0)
    53f4:	a8 40 00 08 	st r8,@(8,r0)
    53f8:	64 00 f0 00 	ldi r4,#0 || nop
    53fc:	a4 40 00 10 	st r4,@(16,r0)
    5400:	a4 40 00 0c 	st r4,@(12,r0)
    5404:	2e ef 2a ef 	pop lr -> pop r10
    5408:	29 ef f0 00 	pop r9 || nop
    540c:	28 ef 1f ce 	pop r8 -> jmp lr

00005410 <_Bfree>:
    5410:	b0 81 00 06 	beqz r1,5428 <_Bfree+0x18>
    5414:	a5 c1 00 04 	ld r5,@(4,r1)
    5418:	a4 c0 00 4c 	ld r4,@(76,r0)
    541c:	55 42 04 a5 	slli r5,#0x2 -> add r4,r5
    5420:	25 c4 25 41 	ld r5,@r4 -> st r5,@r1
    5424:	21 44 f0 00 	st r1,@r4 || nop
    5428:	1f ce f0 00 	jmp lr || nop

0000542c <__multadd>:
    542c:	28 7f 29 7f 	push r8 -> push r9
    5430:	85 a1 00 14 	add3 r5,r1,#20
    5434:	2a 7f 2b 7f 	push r10 -> push r11
    5438:	2c 7f 2e 7f 	push r12 -> push lr
    543c:	a9 c1 00 10 	ld r9,@(16,r1)
    5440:	1b 80 18 81 	mv r11,r0 -> mv r8,r1
    5444:	1a 83 f0 00 	mv r10,r3 || nop
    5448:	67 00 f0 00 	ldi r7,#0 || nop
    544c:	23 c5 f0 00 	ld r3,@r5 || nop
    5450:	47 01 f0 00 	addi r7,#1 || nop
    5454:	07 49 f0 00 	cmp r7,r9 || nop
    5458:	84 c3 ff ff 	and3 r4,r3,#0xffff
    545c:	14 62 04 aa 	mul r4,r2 -> add r4,r10
    5460:	96 84 00 10 	srl3 r6,r4,#16
    5464:	84 c4 ff ff 	and3 r4,r4,#0xffff
    5468:	53 10 f0 00 	srli r3,#0x10 || nop
    546c:	13 62 06 a3 	mul r3,r2 -> add r6,r3
    5470:	9a 86 00 10 	srl3 r10,r6,#16
    5474:	56 50 f0 00 	slli r6,#0x10 || nop
    5478:	06 a4 26 45 	add r6,r4 -> st r6,@r5
    547c:	45 04 f0 00 	addi r5,#4 || nop
    5480:	7c f3 f0 00 	bc 544c <__multadd+0x20> || nop
    5484:	b0 8a 00 15 	beqz r10,54d8 <__multadd+0xac>
    5488:	a4 c8 00 08 	ld r4,@(8,r8)
    548c:	09 44 7c 0e 	cmp r9,r4 -> bc 54c4 <__multadd+0x98>
    5490:	a1 c8 00 04 	ld r1,@(4,r8)
    5494:	10 8b f0 00 	mv r0,r11 || nop
    5498:	41 01 f0 00 	addi r1,#1 || nop
    549c:	fe ff ff bd 	bl 5390 <_Balloc>
    54a0:	a2 c8 00 10 	ld r2,@(16,r8)
    54a4:	81 a8 00 0c 	add3 r1,r8,#12
    54a8:	1c 80 f0 00 	mv r12,r0 || nop
    54ac:	42 02 52 42 	addi r2,#2 -> slli r2,#0x2
    54b0:	40 0c f0 00 	addi r0,#12 || nop
    54b4:	fe ff ff ad 	bl 5368 <memcpy>
    54b8:	11 88 10 8b 	mv r1,r8 -> mv r0,r11
    54bc:	fe ff ff d5 	bl 5410 <_Bfree>
    54c0:	18 8c f0 00 	mv r8,r12 || nop
    54c4:	84 a9 00 05 	add3 r4,r9,#5
    54c8:	54 42 04 a8 	slli r4,#0x2 -> add r4,r8
    54cc:	49 01 f0 00 	addi r9,#1 || nop
    54d0:	a9 48 00 10 	st r9,@(16,r8)
    54d4:	2a 44 f0 00 	st r10,@r4 || nop
    54d8:	2e ef 10 88 	pop lr -> mv r0,r8
    54dc:	2c ef 2b ef 	pop r12 -> pop r11
    54e0:	2a ef f0 00 	pop r10 || nop
    54e4:	29 ef 28 ef 	pop r9 -> pop r8
    54e8:	1f ce f0 00 	jmp lr || nop

000054ec <__s2b>:
    54ec:	84 a3 00 08 	add3 r4,r3,#8
    54f0:	2d 7f 28 7f 	push fp -> push r8
    54f4:	29 7f 2a 7f 	push r9 -> push r10
    54f8:	2b 7f f0 00 	push r11 || nop
    54fc:	65 09 f0 00 	ldi r5,#9 || nop
    5500:	94 05 00 00 	div r4,r5
    5504:	2c 7f 19 81 	push r12 -> mv r9,r1
    5508:	2e 7f f0 00 	push lr || nop
    550c:	1a 80 18 82 	mv r10,r0 -> mv r8,r2
    5510:	1b 83 f0 00 	mv r11,r3 || nop
    5514:	65 01 61 00 	ldi r5,#1 -> ldi r1,#0
    5518:	7f 03 f0 00 	bra 5524 <__s2b+0x38> || nop
    551c:	55 41 f0 00 	slli r5,#0x1 || nop
    5520:	41 01 f0 00 	addi r1,#1 || nop
    5524:	05 44 7c fe 	cmp r5,r4 -> bc 551c <__s2b+0x30>
    5528:	10 8a f0 00 	mv r0,r10 || nop
    552c:	fe ff ff 99 	bl 5390 <_Balloc>
    5530:	a4 cf 00 1c 	ld r4,@(28,sp)
    5534:	11 80 f0 00 	mv r1,r0 || nop
    5538:	a4 40 00 14 	st r4,@(20,r0)
    553c:	64 01 f0 00 	ldi r4,#1 || nop
    5540:	a4 40 00 10 	st r4,@(16,r0)
    5544:	64 09 f0 00 	ldi r4,#9 || nop
    5548:	04 48 7d 0e 	cmp r4,r8 -> bnc 5580 <__s2b+0x94>
    554c:	8c a9 00 09 	add3 r12,r9,#9
    5550:	1d 89 0d a8 	mv fp,r9 -> add fp,r8
    5554:	19 8c f0 00 	mv r9,r12 || nop
    5558:	23 89 10 8a 	ldb r3,@r9 -> mv r0,r10
    555c:	62 0a 49 01 	ldi r2,#10 -> addi r9,#1
    5560:	43 d0 f0 00 	addi r3,#-48 || nop
    5564:	fe ff ff b2 	bl 542c <__multadd>
    5568:	11 80 f0 00 	mv r1,r0 || nop
    556c:	b9 1d ff fb 	bne r9,fp,5558 <__s2b+0x6c>
    5570:	19 8c f0 00 	mv r9,r12 || nop
    5574:	09 a8 f0 00 	add r9,r8 || nop
    5578:	49 f8 f0 00 	addi r9,#-8 || nop
    557c:	7f 03 f0 00 	bra 5588 <__s2b+0x9c> || nop
    5580:	49 0a f0 00 	addi r9,#10 || nop
    5584:	68 09 f0 00 	ldi r8,#9 || nop
    5588:	09 28 f0 00 	sub r9,r8 || nop
    558c:	7f 08 f0 00 	bra 55ac <__s2b+0xc0> || nop
    5590:	14 89 04 a8 	mv r4,r9 -> add r4,r8
    5594:	23 84 10 8a 	ldb r3,@r4 -> mv r0,r10
    5598:	62 0a f0 00 	ldi r2,#10 || nop
    559c:	48 01 f0 00 	addi r8,#1 || nop
    55a0:	43 d0 f0 00 	addi r3,#-48 || nop
    55a4:	fe ff ff a2 	bl 542c <__multadd>
    55a8:	11 80 f0 00 	mv r1,r0 || nop
    55ac:	08 4b 7c f9 	cmp r8,r11 -> bc 5590 <__s2b+0xa4>
    55b0:	2e ef 10 81 	pop lr -> mv r0,r1
    55b4:	2c ef 2b ef 	pop r12 -> pop r11
    55b8:	2a ef f0 00 	pop r10 || nop
    55bc:	29 ef 28 ef 	pop r9 -> pop r8
    55c0:	2d ef 1f ce 	pop fp -> jmp lr

000055c4 <__hi0bits>:
    55c4:	d5 c0 ff ff 	seth r5,#0xffff
    55c8:	05 c0 f0 00 	and r5,r0 || nop
    55cc:	14 80 f0 00 	mv r4,r0 || nop
    55d0:	b0 95 00 03 	bnez r5,55dc <__hi0bits+0x18>
    55d4:	54 50 f0 00 	slli r4,#0x10 || nop
    55d8:	60 10 7f 02 	ldi r0,#16 -> bra 55e0 <__hi0bits+0x1c>
    55dc:	60 00 f0 00 	ldi r0,#0 || nop
    55e0:	d5 c0 ff 00 	seth r5,#0xff00
    55e4:	05 c4 f0 00 	and r5,r4 || nop
    55e8:	b0 95 00 03 	bnez r5,55f4 <__hi0bits+0x30>
    55ec:	40 08 f0 00 	addi r0,#8 || nop
    55f0:	54 48 f0 00 	slli r4,#0x8 || nop
    55f4:	d5 c0 f0 00 	seth r5,#0xf000
    55f8:	05 c4 f0 00 	and r5,r4 || nop
    55fc:	b0 95 00 03 	bnez r5,5608 <__hi0bits+0x44>
    5600:	40 04 f0 00 	addi r0,#4 || nop
    5604:	54 44 f0 00 	slli r4,#0x4 || nop
    5608:	d5 c0 c0 00 	seth r5,#0xc000
    560c:	05 c4 f0 00 	and r5,r4 || nop
    5610:	b0 95 00 03 	bnez r5,561c <__hi0bits+0x58>
    5614:	40 02 f0 00 	addi r0,#2 || nop
    5618:	54 42 f0 00 	slli r4,#0x2 || nop
    561c:	b0 a4 00 07 	bltz r4,5638 <__hi0bits+0x74>
    5620:	d5 c0 40 00 	seth r5,#0x4000
    5624:	05 c4 f0 00 	and r5,r4 || nop
    5628:	b0 85 00 03 	beqz r5,5634 <__hi0bits+0x70>
    562c:	40 01 f0 00 	addi r0,#1 || nop
    5630:	1f ce f0 00 	jmp lr || nop
    5634:	60 20 f0 00 	ldi r0,#32 || nop
    5638:	1f ce f0 00 	jmp lr || nop

0000563c <__lo0bits>:
    563c:	24 c0 f0 00 	ld r4,@r0 || nop
    5640:	65 07 05 c4 	ldi r5,#7 -> and r5,r4
    5644:	b0 85 00 0b 	beqz r5,5670 <__lo0bits+0x34>
    5648:	65 01 05 c4 	ldi r5,#1 -> and r5,r4
    564c:	b0 95 00 21 	bnez r5,56d0 <__lo0bits+0x94>
    5650:	65 02 05 c4 	ldi r5,#2 -> and r5,r4
    5654:	b0 85 00 04 	beqz r5,5664 <__lo0bits+0x28>
    5658:	54 01 f0 00 	srli r4,#0x1 || nop
    565c:	24 40 f0 00 	st r4,@r0 || nop
    5660:	65 01 7f 1e 	ldi r5,#1 -> bra 56d8 <__lo0bits+0x9c>
    5664:	54 02 f0 00 	srli r4,#0x2 || nop
    5668:	24 40 f0 00 	st r4,@r0 || nop
    566c:	65 02 7f 1b 	ldi r5,#2 -> bra 56d8 <__lo0bits+0x9c>
    5670:	85 c4 ff ff 	and3 r5,r4,#0xffff
    5674:	b0 95 00 03 	bnez r5,5680 <__lo0bits+0x44>
    5678:	54 10 f0 00 	srli r4,#0x10 || nop
    567c:	65 10 7f 02 	ldi r5,#16 -> bra 5684 <__lo0bits+0x48>
    5680:	65 00 f0 00 	ldi r5,#0 || nop
    5684:	86 c4 00 ff 	and3 r6,r4,#0xff
    5688:	b0 96 00 03 	bnez r6,5694 <__lo0bits+0x58>
    568c:	45 08 f0 00 	addi r5,#8 || nop
    5690:	54 08 f0 00 	srli r4,#0x8 || nop
    5694:	66 0f 06 c4 	ldi r6,#15 -> and r6,r4
    5698:	b0 96 00 03 	bnez r6,56a4 <__lo0bits+0x68>
    569c:	45 04 f0 00 	addi r5,#4 || nop
    56a0:	54 04 f0 00 	srli r4,#0x4 || nop
    56a4:	66 03 06 c4 	ldi r6,#3 -> and r6,r4
    56a8:	b0 96 00 03 	bnez r6,56b4 <__lo0bits+0x78>
    56ac:	45 02 f0 00 	addi r5,#2 || nop
    56b0:	54 02 f0 00 	srli r4,#0x2 || nop
    56b4:	66 01 06 c4 	ldi r6,#1 -> and r6,r4
    56b8:	b0 96 00 04 	bnez r6,56c8 <__lo0bits+0x8c>
    56bc:	54 01 f0 00 	srli r4,#0x1 || nop
    56c0:	b0 84 00 05 	beqz r4,56d4 <__lo0bits+0x98>
    56c4:	45 01 f0 00 	addi r5,#1 || nop
    56c8:	24 40 f0 00 	st r4,@r0 || nop
    56cc:	7f 03 f0 00 	bra 56d8 <__lo0bits+0x9c> || nop
    56d0:	65 00 7f 02 	ldi r5,#0 -> bra 56d8 <__lo0bits+0x9c>
    56d4:	65 20 f0 00 	ldi r5,#32 || nop
    56d8:	10 85 f0 00 	mv r0,r5 || nop
    56dc:	1f ce f0 00 	jmp lr || nop

000056e0 <__i2b>:
    56e0:	28 7f 2e 7f 	push r8 -> push lr
    56e4:	18 81 f0 00 	mv r8,r1 || nop
    56e8:	61 01 f0 00 	ldi r1,#1 || nop
    56ec:	fe ff ff 29 	bl 5390 <_Balloc>
    56f0:	a8 40 00 14 	st r8,@(20,r0)
    56f4:	65 01 f0 00 	ldi r5,#1 || nop
    56f8:	a5 40 00 10 	st r5,@(16,r0)
    56fc:	2e ef 28 ef 	pop lr -> pop r8
    5700:	1f ce f0 00 	jmp lr || nop

00005704 <__multiply>:
    5704:	2d 7f 28 7f 	push fp -> push r8
    5708:	29 7f 2a 7f 	push r9 -> push r10
    570c:	2b 7f 2c 7f 	push r11 -> push r12
    5710:	2e 7f f0 00 	push lr || nop
    5714:	a5 c1 00 10 	ld r5,@(16,r1)
    5718:	4f f8 f0 00 	addi sp,#-8 || nop
    571c:	a4 c2 00 10 	ld r4,@(16,r2)
    5720:	1a 81 1b 82 	mv r10,r1 -> mv r11,r2
    5724:	05 44 7d 02 	cmp r5,r4 -> bnc 572c <__multiply+0x28>
    5728:	1a 82 1b 81 	mv r10,r2 -> mv r11,r1
    572c:	ac ca 00 10 	ld r12,@(16,r10)
    5730:	a9 cb 00 10 	ld r9,@(16,r11)
    5734:	18 8c f0 00 	mv r8,r12 || nop
    5738:	a4 ca 00 08 	ld r4,@(8,r10)
    573c:	08 a9 f0 00 	add r8,r9 || nop
    5740:	a1 ca 00 04 	ld r1,@(4,r10)
    5744:	04 48 7d 02 	cmp r4,r8 -> bnc 574c <__multiply+0x48>
    5748:	41 01 f0 00 	addi r1,#1 || nop
    574c:	fe ff ff 11 	bl 5390 <_Balloc>
    5750:	83 a8 00 05 	add3 r3,r8,#5
    5754:	87 a0 00 14 	add3 r7,r0,#20
    5758:	53 42 03 a0 	slli r3,#0x2 -> add r3,r0
    575c:	14 87 f0 00 	mv r4,r7 || nop
    5760:	65 00 f0 00 	ldi r5,#0 || nop
    5764:	7f 03 f0 00 	bra 5770 <__multiply+0x6c> || nop
    5768:	25 44 f0 00 	st r5,@r4 || nop
    576c:	44 04 f0 00 	addi r4,#4 || nop
    5770:	04 53 7c fe 	cmpu r4,r3 -> bc 5768 <__multiply+0x64>
    5774:	8e ac 00 05 	add3 lr,r12,#5
    5778:	81 aa 00 14 	add3 r1,r10,#20
    577c:	82 ab 00 14 	add3 r2,r11,#20
    5780:	49 05 f0 00 	addi r9,#5 || nop
    5784:	5e 42 f0 00 	slli lr,#0x2 || nop
    5788:	59 42 f0 00 	slli r9,#0x2 || nop
    578c:	21 4f f0 00 	st r1,@sp || nop
    5790:	0e aa f0 00 	add lr,r10 || nop
    5794:	09 ab f0 00 	add r9,r11 || nop
    5798:	7f 2e f0 00 	bra 5850 <__multiply+0x14c> || nop
    579c:	ab b2 00 02 	lduh r11,@(2,r2)
    57a0:	b0 8b 00 14 	beqz r11,57f0 <__multiply+0xec>
    57a4:	2a cf 15 87 	ld r10,@sp -> mv r5,r7
    57a8:	66 00 f0 00 	ldi r6,#0 || nop
    57ac:	2c ea 21 c5 	ld r12,@r10+ -> ld r1,@r5
    57b0:	84 cc ff ff 	and3 r4,r12,#0xffff
    57b4:	14 6b f0 00 	mul r4,r11 || nop
    57b8:	8d c1 ff ff 	and3 fp,r1,#0xffff
    57bc:	04 ad 04 a6 	add r4,fp -> add r4,r6
    57c0:	5c 10 16 81 	srli r12,#0x10 -> mv r6,r1
    57c4:	56 10 1c 6b 	srli r6,#0x10 -> mul r12,r11
    57c8:	0c a6 f0 00 	add r12,r6 || nop
    57cc:	96 84 00 10 	srl3 r6,r4,#16
    57d0:	84 c4 ff ff 	and3 r4,r4,#0xffff
    57d4:	0c a6 f0 00 	add r12,r6 || nop
    57d8:	96 8c 00 10 	srl3 r6,r12,#16
    57dc:	5c 50 f0 00 	slli r12,#0x10 || nop
    57e0:	0c e4 2c 45 	or r12,r4 -> st r12,@r5
    57e4:	0a 5e 45 04 	cmpu r10,lr -> addi r5,#4
    57e8:	7c f1 f0 00 	bc 57ac <__multiply+0xa8> || nop
    57ec:	26 45 f0 00 	st r6,@r5 || nop
    57f0:	a4 cf 00 04 	ld r4,@(4,sp)
    57f4:	42 04 2a b4 	addi r2,#4 -> lduh r10,@r4
    57f8:	b0 8a 00 15 	beqz r10,584c <__multiply+0x148>
    57fc:	24 c7 f0 00 	ld r4,@r7 || nop
    5800:	16 87 f0 00 	mv r6,r7 || nop
    5804:	6b 00 21 cf 	ldi r11,#0 -> ld r1,@sp
    5808:	84 c4 ff ff 	and3 r4,r4,#0xffff
    580c:	1c 81 f0 00 	mv r12,r1 || nop
    5810:	25 e1 2d b6 	ld r5,@r1+ -> lduh fp,@r6
    5814:	85 c5 ff ff 	and3 r5,r5,#0xffff
    5818:	15 6a 05 ad 	mul r5,r10 -> add r5,fp
    581c:	05 ab f0 00 	add r5,r11 || nop
    5820:	9b c5 00 10 	sll3 r11,r5,#16
    5824:	0b e4 2b 46 	or r11,r4 -> st r11,@r6
    5828:	2b bc 46 04 	lduh r11,@r12 -> addi r6,#4
    582c:	55 10 f0 00 	srli r5,#0x10 || nop
    5830:	a4 b6 00 02 	lduh r4,@(2,r6)
    5834:	1b 6a f0 00 	mul r11,r10 || nop
    5838:	01 5e f0 00 	cmpu r1,lr || nop
    583c:	04 ab 04 a5 	add r4,r11 -> add r4,r5
    5840:	9b 84 00 10 	srl3 r11,r4,#16
    5844:	7c f1 f0 00 	bc 5808 <__multiply+0x104> || nop
    5848:	24 46 f0 00 	st r4,@r6 || nop
    584c:	47 04 f0 00 	addi r7,#4 || nop
    5850:	a2 4f 00 04 	st r2,@(4,sp)
    5854:	02 59 7c d2 	cmpu r2,r9 -> bc 579c <__multiply+0x98>
    5858:	7f 02 f0 00 	bra 5860 <__multiply+0x15c> || nop
    585c:	48 ff f0 00 	addi r8,#-1 || nop
    5860:	b0 d8 00 03 	bgtz r8,586c <__multiply+0x168>
    5864:	a8 40 00 10 	st r8,@(16,r0)
    5868:	7f 05 f0 00 	bra 587c <__multiply+0x178> || nop
    586c:	43 fc f0 00 	addi r3,#-4 || nop
    5870:	24 c3 f0 00 	ld r4,@r3 || nop
    5874:	b0 84 ff fa 	beqz r4,585c <__multiply+0x158>
    5878:	7f fb f0 00 	bra 5864 <__multiply+0x160> || nop
    587c:	4f 08 f0 00 	addi sp,#8 || nop
    5880:	2e ef f0 00 	pop lr || nop
    5884:	2c ef 2b ef 	pop r12 -> pop r11
    5888:	2a ef 29 ef 	pop r10 -> pop r9
    588c:	28 ef f0 00 	pop r8 || nop
    5890:	2d ef 1f ce 	pop fp -> jmp lr

00005894 <__pow5mult>:
    5894:	28 7f 29 7f 	push r8 -> push r9
    5898:	2a 7f 2b 7f 	push r10 -> push r11
    589c:	2c 7f f0 00 	push r12 || nop
    58a0:	64 03 f0 00 	ldi r4,#3 || nop
    58a4:	2e 7f f0 00 	push lr || nop
    58a8:	04 c2 f0 00 	and r4,r2 || nop
    58ac:	19 80 1a 81 	mv r9,r0 -> mv r10,r1
    58b0:	1b 82 f0 00 	mv r11,r2 || nop
    58b4:	b0 84 00 08 	beqz r4,58d4 <__pow5mult+0x40>
    58b8:	e5 00 93 3c 	ld24 r5,933c <p05.2509>
    58bc:	44 ff f0 00 	addi r4,#-1 || nop
    58c0:	54 42 f0 00 	slli r4,#0x2 || nop
    58c4:	04 a5 22 c4 	add r4,r5 -> ld r2,@r4
    58c8:	63 00 f0 00 	ldi r3,#0 || nop
    58cc:	fe ff fe d8 	bl 542c <__multadd>
    58d0:	1a 80 f0 00 	mv r10,r0 || nop
    58d4:	5b 22 f0 00 	srai r11,#0x2 || nop
    58d8:	b0 8b 00 1d 	beqz r11,594c <__pow5mult+0xb8>
    58dc:	a8 c9 00 48 	ld r8,@(72,r9)
    58e0:	b0 98 00 09 	bnez r8,5904 <__pow5mult+0x70>
    58e4:	91 f0 02 71 	ldi r1,#625
    58e8:	10 89 f0 00 	mv r0,r9 || nop
    58ec:	fe ff ff 7d 	bl 56e0 <__i2b>
    58f0:	a0 49 00 48 	st r0,@(72,r9)
    58f4:	64 00 f0 00 	ldi r4,#0 || nop
    58f8:	18 80 f0 00 	mv r8,r0 || nop
    58fc:	24 40 7f 02 	st r4,@r0 -> bra 5904 <__pow5mult+0x70>
    5900:	18 80 f0 00 	mv r8,r0 || nop
    5904:	64 01 04 cb 	ldi r4,#1 -> and r4,r11
    5908:	b0 84 00 08 	beqz r4,5928 <__pow5mult+0x94>
    590c:	11 8a 12 88 	mv r1,r10 -> mv r2,r8
    5910:	10 89 f0 00 	mv r0,r9 || nop
    5914:	fe ff ff 7c 	bl 5704 <__multiply>
    5918:	1c 80 f0 00 	mv r12,r0 || nop
    591c:	11 8a 10 89 	mv r1,r10 -> mv r0,r9
    5920:	fe ff fe bc 	bl 5410 <_Bfree>
    5924:	1a 8c f0 00 	mv r10,r12 || nop
    5928:	5b 21 f0 00 	srai r11,#0x1 || nop
    592c:	b0 8b 00 08 	beqz r11,594c <__pow5mult+0xb8>
    5930:	20 c8 1c 80 	ld r0,@r8 -> mv r12,r0
    5934:	b0 90 ff f3 	bnez r0,5900 <__pow5mult+0x6c>
    5938:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    593c:	12 88 f0 00 	mv r2,r8 || nop
    5940:	fe ff ff 71 	bl 5704 <__multiply>
    5944:	20 48 f0 00 	st r0,@r8 || nop
    5948:	2c 40 7f ee 	st r12,@r0 -> bra 5900 <__pow5mult+0x6c>
    594c:	2e ef 10 8a 	pop lr -> mv r0,r10
    5950:	2c ef 2b ef 	pop r12 -> pop r11
    5954:	2a ef f0 00 	pop r10 || nop
    5958:	29 ef f0 00 	pop r9 || nop
    595c:	28 ef 1f ce 	pop r8 -> jmp lr

00005960 <__lshift>:
    5960:	2d 7f f0 00 	push fp || nop
    5964:	9d a2 00 05 	sra3 fp,r2,#5
    5968:	28 7f 29 7f 	push r8 -> push r9
    596c:	18 81 f0 00 	mv r8,r1 || nop
    5970:	a4 c8 00 08 	ld r4,@(8,r8)
    5974:	2a 7f f0 00 	push r10 || nop
    5978:	aa c8 00 10 	ld r10,@(16,r8)
    597c:	2b 7f 2c 7f 	push r11 -> push r12
    5980:	2e 7f f0 00 	push lr || nop
    5984:	a1 c1 00 04 	ld r1,@(4,r1)
    5988:	0a ad f0 00 	add r10,fp || nop
    598c:	8c aa 00 01 	add3 r12,r10,#1
    5990:	4f fc f0 00 	addi sp,#-4 || nop
    5994:	1b 80 f0 00 	mv r11,r0 || nop
    5998:	7f 03 f0 00 	bra 59a4 <__lshift+0x44> || nop
    599c:	41 01 f0 00 	addi r1,#1 || nop
    59a0:	54 41 f0 00 	slli r4,#0x1 || nop
    59a4:	04 4c 7c fe 	cmp r4,r12 -> bc 599c <__lshift+0x3c>
    59a8:	10 8b f0 00 	mv r0,r11 || nop
    59ac:	22 4f f0 00 	st r2,@sp || nop
    59b0:	fe ff fe 78 	bl 5390 <_Balloc>
    59b4:	85 a0 00 14 	add3 r5,r0,#20
    59b8:	19 80 f0 00 	mv r9,r0 || nop
    59bc:	64 00 f0 00 	ldi r4,#0 || nop
    59c0:	66 00 f0 00 	ldi r6,#0 || nop
    59c4:	22 cf 7f 04 	ld r2,@sp -> bra 59d4 <__lshift+0x74>
    59c8:	26 45 f0 00 	st r6,@r5 || nop
    59cc:	44 01 f0 00 	addi r4,#1 || nop
    59d0:	45 04 f0 00 	addi r5,#4 || nop
    59d4:	04 4d 7c fd 	cmp r4,fp -> bc 59c8 <__lshift+0x68>
    59d8:	b0 bd 00 02 	bgez fp,59e0 <__lshift+0x80>
    59dc:	6d 00 f0 00 	ldi fp,#0 || nop
    59e0:	ae c8 00 10 	ld lr,@(16,r8)
    59e4:	86 a8 00 14 	add3 r6,r8,#20
    59e8:	4d 05 f0 00 	addi fp,#5 || nop
    59ec:	94 cd 00 02 	sll3 r4,fp,#2
    59f0:	4e 05 f0 00 	addi lr,#5 || nop
    59f4:	63 1f f0 00 	ldi r3,#31 || nop
    59f8:	5e 42 f0 00 	slli lr,#0x2 || nop
    59fc:	03 c2 04 a9 	and r3,r2 -> add r4,r9
    5a00:	0e a8 f0 00 	add lr,r8 || nop
    5a04:	b0 83 00 0e 	beqz r3,5a3c <__lshift+0xdc>
    5a08:	62 20 02 23 	ldi r2,#32 -> sub r2,r3
    5a0c:	65 00 f0 00 	ldi r5,#0 || nop
    5a10:	27 c6 17 43 	ld r7,@r6 -> sll r7,r3
    5a14:	07 e5 27 44 	or r7,r5 -> st r7,@r4
    5a18:	25 e6 f0 00 	ld r5,@r6+ || nop
    5a1c:	44 04 f0 00 	addi r4,#4 || nop
    5a20:	06 5e f0 00 	cmpu r6,lr || nop
    5a24:	15 02 f0 00 	srl r5,r2 || nop
    5a28:	7c fa f0 00 	bc 5a10 <__lshift+0xb0> || nop
    5a2c:	25 44 f0 00 	st r5,@r4 || nop
    5a30:	b0 85 00 07 	beqz r5,5a4c <__lshift+0xec>
    5a34:	8c aa 00 02 	add3 r12,r10,#2
    5a38:	7f 05 f0 00 	bra 5a4c <__lshift+0xec> || nop
    5a3c:	25 e6 25 44 	ld r5,@r6+ -> st r5,@r4
    5a40:	06 5e f0 00 	cmpu r6,lr || nop
    5a44:	44 04 f0 00 	addi r4,#4 || nop
    5a48:	7c fd f0 00 	bc 5a3c <__lshift+0xdc> || nop
    5a4c:	4c ff f0 00 	addi r12,#-1 || nop
    5a50:	ac 49 00 10 	st r12,@(16,r9)
    5a54:	10 8b f0 00 	mv r0,r11 || nop
    5a58:	11 88 f0 00 	mv r1,r8 || nop
    5a5c:	fe ff fe 6d 	bl 5410 <_Bfree>
    5a60:	4f 04 2e ef 	addi sp,#4 -> pop lr
    5a64:	10 89 2c ef 	mv r0,r9 -> pop r12
    5a68:	2b ef f0 00 	pop r11 || nop
    5a6c:	2a ef 29 ef 	pop r10 -> pop r9
    5a70:	28 ef f0 00 	pop r8 || nop
    5a74:	2d ef 1f ce 	pop fp -> jmp lr

00005a78 <__mcmp>:
    5a78:	a4 c0 00 10 	ld r4,@(16,r0)
    5a7c:	a5 c1 00 10 	ld r5,@(16,r1)
    5a80:	04 25 f0 00 	sub r4,r5 || nop
    5a84:	b0 94 00 0e 	bnez r4,5abc <__mcmp+0x44>
    5a88:	87 a0 00 14 	add3 r7,r0,#20
    5a8c:	45 05 f0 00 	addi r5,#5 || nop
    5a90:	55 42 00 a5 	slli r5,#0x2 -> add r0,r5
    5a94:	01 a5 f0 00 	add r1,r5 || nop
    5a98:	40 fc 41 fc 	addi r0,#-4 -> addi r1,#-4
    5a9c:	26 c0 25 c1 	ld r6,@r0 -> ld r5,@r1
    5aa0:	b6 05 00 04 	beq r6,r5,5ab0 <__mcmp+0x38>
    5aa4:	06 55 7d 05 	cmpu r6,r5 -> bnc 5ab8 <__mcmp+0x40>
    5aa8:	64 ff f0 00 	ldi r4,#-1 || nop
    5aac:	7f 04 f0 00 	bra 5abc <__mcmp+0x44> || nop
    5ab0:	07 50 7c fa 	cmpu r7,r0 -> bc 5a98 <__mcmp+0x20>
    5ab4:	7f 02 f0 00 	bra 5abc <__mcmp+0x44> || nop
    5ab8:	64 01 f0 00 	ldi r4,#1 || nop
    5abc:	10 84 1f ce 	mv r0,r4 -> jmp lr

00005ac0 <__mdiff>:
    5ac0:	28 7f 29 7f 	push r8 -> push r9
    5ac4:	2a 7f 2b 7f 	push r10 -> push r11
    5ac8:	2e 7f f0 00 	push lr || nop
    5acc:	1b 80 18 81 	mv r11,r0 -> mv r8,r1
    5ad0:	10 81 f0 00 	mv r0,r1 || nop
    5ad4:	11 82 f0 00 	mv r1,r2 || nop
    5ad8:	19 82 f0 00 	mv r9,r2 || nop
    5adc:	fe ff ff e7 	bl 5a78 <__mcmp>
    5ae0:	1a 80 f0 00 	mv r10,r0 || nop
    5ae4:	b0 90 00 08 	bnez r0,5b04 <__mdiff+0x44>
    5ae8:	10 8b f0 00 	mv r0,r11 || nop
    5aec:	61 00 f0 00 	ldi r1,#0 || nop
    5af0:	fe ff fe 28 	bl 5390 <_Balloc>
    5af4:	aa 40 00 14 	st r10,@(20,r0)
    5af8:	64 01 f0 00 	ldi r4,#1 || nop
    5afc:	a4 40 00 10 	st r4,@(16,r0)
    5b00:	7f 39 f0 00 	bra 5be4 <__mdiff+0x124> || nop
    5b04:	b0 a0 00 02 	bltz r0,5b0c <__mdiff+0x4c>
    5b08:	6a 00 7f 05 	ldi r10,#0 -> bra 5b1c <__mdiff+0x5c>
    5b0c:	14 88 f0 00 	mv r4,r8 || nop
    5b10:	6a 01 f0 00 	ldi r10,#1 || nop
    5b14:	18 89 f0 00 	mv r8,r9 || nop
    5b18:	19 84 f0 00 	mv r9,r4 || nop
    5b1c:	a1 c8 00 04 	ld r1,@(4,r8)
    5b20:	10 8b f0 00 	mv r0,r11 || nop
    5b24:	fe ff fe 1b 	bl 5390 <_Balloc>
    5b28:	a6 c8 00 10 	ld r6,@(16,r8)
    5b2c:	aa 40 00 0c 	st r10,@(12,r0)
    5b30:	ae c9 00 10 	ld lr,@(16,r9)
    5b34:	83 a6 00 05 	add3 r3,r6,#5
    5b38:	82 a0 00 14 	add3 r2,r0,#20
    5b3c:	4e 05 f0 00 	addi lr,#5 || nop
    5b40:	53 42 f0 00 	slli r3,#0x2 || nop
    5b44:	5e 42 f0 00 	slli lr,#0x2 || nop
    5b48:	03 a8 f0 00 	add r3,r8 || nop
    5b4c:	0e a9 f0 00 	add lr,r9 || nop
    5b50:	48 14 f0 00 	addi r8,#20 || nop
    5b54:	49 14 f0 00 	addi r9,#20 || nop
    5b58:	67 00 f0 00 	ldi r7,#0 || nop
    5b5c:	25 e8 2a e9 	ld r5,@r8+ -> ld r10,@r9+
    5b60:	84 c5 ff ff 	and3 r4,r5,#0xffff
    5b64:	04 a7 f0 00 	add r4,r7 || nop
    5b68:	87 ca ff ff 	and3 r7,r10,#0xffff
    5b6c:	04 27 f0 00 	sub r4,r7 || nop
    5b70:	97 a4 00 10 	sra3 r7,r4,#16
    5b74:	84 c4 ff ff 	and3 r4,r4,#0xffff
    5b78:	5a 10 55 10 	srli r10,#0x10 -> srli r5,#0x10
    5b7c:	05 2a 05 a7 	sub r5,r10 -> add r5,r7
    5b80:	97 a5 00 10 	sra3 r7,r5,#16
    5b84:	55 50 f0 00 	slli r5,#0x10 || nop
    5b88:	05 e4 25 42 	or r5,r4 -> st r5,@r2
    5b8c:	09 5e 42 04 	cmpu r9,lr -> addi r2,#4
    5b90:	1a 88 f0 00 	mv r10,r8 || nop
    5b94:	14 82 f0 00 	mv r4,r2 || nop
    5b98:	7c f1 7f 0c 	bc 5b5c <__mdiff+0x9c> -> bra 5bc8 <__mdiff+0x108>
    5b9c:	28 ea f0 00 	ld r8,@r10+ || nop
    5ba0:	85 c8 ff ff 	and3 r5,r8,#0xffff
    5ba4:	05 a7 f0 00 	add r5,r7 || nop
    5ba8:	92 a5 00 10 	sra3 r2,r5,#16
    5bac:	85 c5 ff ff 	and3 r5,r5,#0xffff
    5bb0:	58 10 f0 00 	srli r8,#0x10 || nop
    5bb4:	02 a8 f0 00 	add r2,r8 || nop
    5bb8:	97 a2 00 10 	sra3 r7,r2,#16
    5bbc:	52 50 f0 00 	slli r2,#0x10 || nop
    5bc0:	02 e5 22 44 	or r2,r5 -> st r2,@r4
    5bc4:	44 04 f0 00 	addi r4,#4 || nop
    5bc8:	0a 53 7c f5 	cmpu r10,r3 -> bc 5b9c <__mdiff+0xdc>
    5bcc:	7f 02 f0 00 	bra 5bd4 <__mdiff+0x114> || nop
    5bd0:	46 ff f0 00 	addi r6,#-1 || nop
    5bd4:	44 fc f0 00 	addi r4,#-4 || nop
    5bd8:	25 c4 f0 00 	ld r5,@r4 || nop
    5bdc:	b0 85 ff fd 	beqz r5,5bd0 <__mdiff+0x110>
    5be0:	a6 40 00 10 	st r6,@(16,r0)
    5be4:	2e ef 2b ef 	pop lr -> pop r11
    5be8:	2a ef 29 ef 	pop r10 -> pop r9
    5bec:	28 ef 1f ce 	pop r8 -> jmp lr

00005bf0 <__ulp>:
    5bf0:	d4 c0 7f f0 	seth r4,#0x7ff0
    5bf4:	d5 c0 fc c0 	seth r5,#0xfcc0
    5bf8:	04 c0 04 a5 	and r4,r0 -> add r4,r5
    5bfc:	b0 c4 00 03 	blez r4,5c08 <__ulp+0x18>
    5c00:	10 84 f0 00 	mv r0,r4 || nop
    5c04:	7f 08 f0 00 	bra 5c24 <__ulp+0x34> || nop
    5c08:	04 34 f0 00 	neg r4,r4 || nop
    5c0c:	54 34 f0 00 	srai r4,#0x14 || nop
    5c10:	65 13 05 44 	ldi r5,#19 -> cmp r5,r4
    5c14:	60 00 f0 00 	ldi r0,#0 || nop
    5c18:	7c 04 f0 00 	bc 5c28 <__ulp+0x38> || nop
    5c1c:	e5 08 00 00 	ld24 r5,80000 <__end+0x71af0>
    5c20:	10 85 10 24 	mv r0,r5 -> sra r0,r4
    5c24:	61 00 1f ce 	ldi r1,#0 -> jmp lr
    5c28:	65 32 05 44 	ldi r5,#50 -> cmp r5,r4
    5c2c:	7c 04 f0 00 	bc 5c3c <__ulp+0x4c> || nop
    5c30:	65 33 05 24 	ldi r5,#51 -> sub r5,r4
    5c34:	64 01 f0 00 	ldi r4,#1 || nop
    5c38:	14 45 7f 02 	sll r4,r5 -> bra 5c40 <__ulp+0x50>
    5c3c:	64 01 f0 00 	ldi r4,#1 || nop
    5c40:	11 84 f0 00 	mv r1,r4 || nop
    5c44:	1f ce f0 00 	jmp lr || nop

00005c48 <__b2d>:
    5c48:	28 7f 29 7f 	push r8 -> push r9
    5c4c:	2a 7f 2b 7f 	push r10 -> push r11
    5c50:	8b a0 00 14 	add3 r11,r0,#20
    5c54:	2c 7f 2e 7f 	push r12 -> push lr
    5c58:	a8 c0 00 10 	ld r8,@(16,r0)
    5c5c:	1c 81 f0 00 	mv r12,r1 || nop
    5c60:	48 05 58 42 	addi r8,#5 -> slli r8,#0x2
    5c64:	08 a0 f0 00 	add r8,r0 || nop
    5c68:	a9 c8 ff fc 	ld r9,@(-4,r8)
    5c6c:	8a a8 ff fc 	add3 r10,r8,#-4
    5c70:	10 89 f0 00 	mv r0,r9 || nop
    5c74:	fe ff fe 54 	bl 55c4 <__hi0bits>
    5c78:	64 20 04 20 	ldi r4,#32 -> sub r4,r0
    5c7c:	24 4c f0 00 	st r4,@r12 || nop
    5c80:	64 0a 04 40 	ldi r4,#10 -> cmp r4,r0
    5c84:	7c 10 f0 00 	bc 5cc4 <__b2d+0x7c> || nop
    5c88:	d7 c0 3f f0 	seth r7,#0x3ff0
    5c8c:	66 0b 06 20 	ldi r6,#11 -> sub r6,r0
    5c90:	12 89 12 06 	mv r2,r9 -> srl r2,r6
    5c94:	14 82 f0 00 	mv r4,r2 || nop
    5c98:	0b 5a f0 00 	cmpu r11,r10 || nop
    5c9c:	04 e7 f0 00 	or r4,r7 || nop
    5ca0:	7d 03 f0 00 	bnc 5cac <__b2d+0x64> || nop
    5ca4:	a7 c8 ff f8 	ld r7,@(-8,r8)
    5ca8:	7f 02 f0 00 	bra 5cb0 <__b2d+0x68> || nop
    5cac:	67 00 f0 00 	ldi r7,#0 || nop
    5cb0:	17 06 f0 00 	srl r7,r6 || nop
    5cb4:	40 15 f0 00 	addi r0,#21 || nop
    5cb8:	19 40 f0 00 	sll r9,r0 || nop
    5cbc:	15 87 05 e9 	mv r5,r7 -> or r5,r9
    5cc0:	7f 19 f0 00 	bra 5d24 <__b2d+0xdc> || nop
    5cc4:	0b 5a 7d 04 	cmpu r11,r10 -> bnc 5cd4 <__b2d+0x8c>
    5cc8:	8a a8 ff f8 	add3 r10,r8,#-8
    5ccc:	a6 c8 ff f8 	ld r6,@(-8,r8)
    5cd0:	7f 02 f0 00 	bra 5cd8 <__b2d+0x90> || nop
    5cd4:	66 00 f0 00 	ldi r6,#0 || nop
    5cd8:	82 a0 ff f5 	add3 r2,r0,#-11
    5cdc:	d3 c0 3f f0 	seth r3,#0x3ff0
    5ce0:	b0 82 00 0f 	beqz r2,5d1c <__b2d+0xd4>
    5ce4:	67 2b 19 42 	ldi r7,#43 -> sll r9,r2
    5ce8:	09 e3 07 20 	or r9,r3 -> sub r7,r0
    5cec:	13 86 13 07 	mv r3,r6 -> srl r3,r7
    5cf0:	14 89 f0 00 	mv r4,r9 || nop
    5cf4:	0b 5a f0 00 	cmpu r11,r10 || nop
    5cf8:	04 e3 f0 00 	or r4,r3 || nop
    5cfc:	7d 03 f0 00 	bnc 5d08 <__b2d+0xc0> || nop
    5d00:	a3 ca ff fc 	ld r3,@(-4,r10)
    5d04:	7f 02 f0 00 	bra 5d0c <__b2d+0xc4> || nop
    5d08:	63 00 f0 00 	ldi r3,#0 || nop
    5d0c:	13 07 f0 00 	srl r3,r7 || nop
    5d10:	16 42 f0 00 	sll r6,r2 || nop
    5d14:	15 83 05 e6 	mv r5,r3 -> or r5,r6
    5d18:	7f 03 f0 00 	bra 5d24 <__b2d+0xdc> || nop
    5d1c:	14 89 04 e3 	mv r4,r9 -> or r4,r3
    5d20:	15 86 f0 00 	mv r5,r6 || nop
    5d24:	2e ef f0 00 	pop lr || nop
    5d28:	10 84 f0 00 	mv r0,r4 || nop
    5d2c:	11 85 f0 00 	mv r1,r5 || nop
    5d30:	2c ef f0 00 	pop r12 || nop
    5d34:	2b ef f0 00 	pop r11 || nop
    5d38:	2a ef 29 ef 	pop r10 -> pop r9
    5d3c:	28 ef 1f ce 	pop r8 -> jmp lr

00005d40 <__d2b>:
    5d40:	2d 7f 28 7f 	push fp -> push r8
    5d44:	29 7f 2a 7f 	push r9 -> push r10
    5d48:	2b 7f 2c 7f 	push r11 -> push r12
    5d4c:	2e 7f f0 00 	push lr || nop
    5d50:	18 81 f0 00 	mv r8,r1 || nop
    5d54:	4f f8 f0 00 	addi sp,#-8 || nop
    5d58:	ab cf 00 24 	ld r11,@(36,sp)
    5d5c:	61 01 f0 00 	ldi r1,#1 || nop
    5d60:	1c 83 f0 00 	mv r12,r3 || nop
    5d64:	19 82 f0 00 	mv r9,r2 || nop
    5d68:	fe ff fd 8a 	bl 5390 <_Balloc>
    5d6c:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    5d70:	1d 88 f0 00 	mv fp,r8 || nop
    5d74:	5d 41 f0 00 	slli fp,#0x1 || nop
    5d78:	5d 15 f0 00 	srli fp,#0x15 || nop
    5d7c:	1a 80 f0 00 	mv r10,r0 || nop
    5d80:	04 c8 f0 00 	and r4,r8 || nop
    5d84:	b0 9d 00 03 	bnez fp,5d90 <__d2b+0x50>
    5d88:	24 4f f0 00 	st r4,@sp || nop
    5d8c:	7f 03 f0 00 	bra 5d98 <__d2b+0x58> || nop
    5d90:	e5 10 00 00 	ld24 r5,100000 <__end+0xf1af0>
    5d94:	05 e4 25 4f 	or r5,r4 -> st r5,@sp
    5d98:	10 8f f0 00 	mv r0,sp || nop
    5d9c:	b0 89 00 12 	beqz r9,5de4 <__d2b+0xa4>
    5da0:	29 60 f0 00 	st r9,@+r0 || nop
    5da4:	fe ff fe 26 	bl 563c <__lo0bits>
    5da8:	a5 cf 00 04 	ld r5,@(4,sp)
    5dac:	b0 80 00 07 	beqz r0,5dc8 <__d2b+0x88>
    5db0:	26 cf 04 30 	ld r6,@sp -> neg r4,r0
    5db4:	17 86 17 44 	mv r7,r6 -> sll r7,r4
    5db8:	14 87 04 e5 	mv r4,r7 -> or r4,r5
    5dbc:	a4 4a 00 14 	st r4,@(20,r10)
    5dc0:	16 00 26 4f 	srl r6,r0 -> st r6,@sp
    5dc4:	7f 02 f0 00 	bra 5dcc <__d2b+0x8c> || nop
    5dc8:	a5 4a 00 14 	st r5,@(20,r10)
    5dcc:	24 cf 68 02 	ld r4,@sp -> ldi r8,#2
    5dd0:	80 54 00 01 	cmpui r4,#1
    5dd4:	a4 4a 00 18 	st r4,@(24,r10)
    5dd8:	14 91 08 24 	mvfc r4,cbr -> sub r8,r4
    5ddc:	a8 4a 00 10 	st r8,@(16,r10)
    5de0:	7f 08 f0 00 	bra 5e00 <__d2b+0xc0> || nop
    5de4:	fe ff fe 16 	bl 563c <__lo0bits>
    5de8:	24 cf f0 00 	ld r4,@sp || nop
    5dec:	40 20 f0 00 	addi r0,#32 || nop
    5df0:	68 01 f0 00 	ldi r8,#1 || nop
    5df4:	a4 4a 00 14 	st r4,@(20,r10)
    5df8:	64 01 f0 00 	ldi r4,#1 || nop
    5dfc:	a4 4a 00 10 	st r4,@(16,r10)
    5e00:	b0 8d 00 07 	beqz fp,5e1c <__d2b+0xdc>
    5e04:	8d ad fb cd 	add3 fp,fp,#-1075
    5e08:	0d a0 f0 00 	add fp,r0 || nop
    5e0c:	64 35 f0 00 	ldi r4,#53 || nop
    5e10:	2d 4c f0 00 	st fp,@r12 || nop
    5e14:	04 20 24 4b 	sub r4,r0 -> st r4,@r11
    5e18:	7f 09 f0 00 	bra 5e3c <__d2b+0xfc> || nop
    5e1c:	84 a8 00 04 	add3 r4,r8,#4
    5e20:	80 a0 fb ce 	add3 r0,r0,#-1074
    5e24:	54 42 04 aa 	slli r4,#0x2 -> add r4,r10
    5e28:	20 4c f0 00 	st r0,@r12 || nop
    5e2c:	20 c4 f0 00 	ld r0,@r4 || nop
    5e30:	58 45 f0 00 	slli r8,#0x5 || nop
    5e34:	fe ff fd e4 	bl 55c4 <__hi0bits>
    5e38:	08 20 28 4b 	sub r8,r0 -> st r8,@r11
    5e3c:	4f 08 2e ef 	addi sp,#8 -> pop lr
    5e40:	10 8a 2c ef 	mv r0,r10 -> pop r12
    5e44:	2b ef 2a ef 	pop r11 -> pop r10
    5e48:	29 ef f0 00 	pop r9 || nop
    5e4c:	28 ef 2d ef 	pop r8 -> pop fp
    5e50:	1f ce f0 00 	jmp lr || nop

00005e54 <__ratio>:
    5e54:	28 7f 29 7f 	push r8 -> push r9
    5e58:	2a 7f 2b 7f 	push r10 -> push r11
    5e5c:	2e 7f 4f f8 	push lr -> addi sp,#-8
    5e60:	1a 81 f0 00 	mv r10,r1 || nop
    5e64:	81 af 00 04 	add3 r1,sp,#4
    5e68:	1b 80 f0 00 	mv r11,r0 || nop
    5e6c:	fe ff ff 77 	bl 5c48 <__b2d>
    5e70:	18 80 f0 00 	mv r8,r0 || nop
    5e74:	19 81 f0 00 	mv r9,r1 || nop
    5e78:	10 8a 11 8f 	mv r0,r10 -> mv r1,sp
    5e7c:	fe ff ff 73 	bl 5c48 <__b2d>
    5e80:	a4 cf 00 04 	ld r4,@(4,sp)
    5e84:	12 80 f0 00 	mv r2,r0 || nop
    5e88:	a6 ca 00 10 	ld r6,@(16,r10)
    5e8c:	13 81 f0 00 	mv r3,r1 || nop
    5e90:	25 cf 04 25 	ld r5,@sp -> sub r4,r5
    5e94:	a5 cb 00 10 	ld r5,@(16,r11)
    5e98:	05 26 55 45 	sub r5,r6 -> slli r5,#0x5
    5e9c:	04 a5 f0 00 	add r4,r5 || nop
    5ea0:	b0 c4 00 03 	blez r4,5eac <__ratio+0x58>
    5ea4:	54 54 f0 00 	slli r4,#0x14 || nop
    5ea8:	08 a4 7f 03 	add r8,r4 -> bra 5eb4 <__ratio+0x60>
    5eac:	54 54 f0 00 	slli r4,#0x14 || nop
    5eb0:	02 24 f0 00 	sub r2,r4 || nop
    5eb4:	10 88 f0 00 	mv r0,r8 || nop
    5eb8:	11 89 f0 00 	mv r1,r9 || nop
    5ebc:	fe 00 09 d3 	bl 8608 <__divdf3>
    5ec0:	4f 08 2e ef 	addi sp,#8 -> pop lr
    5ec4:	2b ef f0 00 	pop r11 || nop
    5ec8:	2a ef f0 00 	pop r10 || nop
    5ecc:	29 ef f0 00 	pop r9 || nop
    5ed0:	28 ef 1f ce 	pop r8 -> jmp lr

00005ed4 <_mprec_log10>:
    5ed4:	28 7f f0 00 	push r8 || nop
    5ed8:	64 17 f0 00 	ldi r4,#23 || nop
    5edc:	2e 7f f0 00 	push lr || nop
    5ee0:	04 40 f0 00 	cmp r4,r0 || nop
    5ee4:	18 80 f0 00 	mv r8,r0 || nop
    5ee8:	7c 06 f0 00 	bc 5f00 <_mprec_log10+0x2c> || nop
    5eec:	e4 00 92 74 	ld24 r4,9274 <__mprec_tens>
    5ef0:	58 43 08 a4 	slli r8,#0x3 -> add r8,r4
    5ef4:	a1 c8 00 04 	ld r1,@(4,r8)
    5ef8:	20 c8 f0 00 	ld r0,@r8 || nop
    5efc:	7f 08 f0 00 	bra 5f1c <_mprec_log10+0x48> || nop
    5f00:	d0 c0 3f f0 	seth r0,#0x3ff0
    5f04:	61 00 f0 00 	ldi r1,#0 || nop
    5f08:	d2 c0 40 24 	seth r2,#0x4024
    5f0c:	63 00 f0 00 	ldi r3,#0 || nop
    5f10:	fe 00 09 0c 	bl 8340 <__muldf3>
    5f14:	48 ff f0 00 	addi r8,#-1 || nop
    5f18:	b0 98 ff fc 	bnez r8,5f08 <_mprec_log10+0x34>
    5f1c:	2e ef 28 ef 	pop lr -> pop r8
    5f20:	1f ce f0 00 	jmp lr || nop

00005f24 <__copybits>:
    5f24:	a5 c2 00 10 	ld r5,@(16,r2)
    5f28:	41 ff f0 00 	addi r1,#-1 || nop
    5f2c:	94 a1 00 05 	sra3 r4,r1,#5
    5f30:	44 01 f0 00 	addi r4,#1 || nop
    5f34:	45 05 f0 00 	addi r5,#5 || nop
    5f38:	54 42 f0 00 	slli r4,#0x2 || nop
    5f3c:	55 42 05 a2 	slli r5,#0x2 -> add r5,r2
    5f40:	04 a0 f0 00 	add r4,r0 || nop
    5f44:	42 14 f0 00 	addi r2,#20 || nop
    5f48:	7f 03 f0 00 	bra 5f54 <__copybits+0x30> || nop
    5f4c:	26 e2 26 40 	ld r6,@r2+ -> st r6,@r0
    5f50:	40 04 f0 00 	addi r0,#4 || nop
    5f54:	02 55 7c fe 	cmpu r2,r5 -> bc 5f4c <__copybits+0x28>
    5f58:	7f 03 f0 00 	bra 5f64 <__copybits+0x40> || nop
    5f5c:	25 40 40 04 	st r5,@r0 -> addi r0,#4
    5f60:	7f 02 f0 00 	bra 5f68 <__copybits+0x44> || nop
    5f64:	65 00 f0 00 	ldi r5,#0 || nop
    5f68:	00 54 7c fd 	cmpu r0,r4 -> bc 5f5c <__copybits+0x38>
    5f6c:	1f ce f0 00 	jmp lr || nop

00005f70 <__any_on>:
    5f70:	a5 c0 00 10 	ld r5,@(16,r0)
    5f74:	94 a1 00 05 	sra3 r4,r1,#5
    5f78:	82 a0 00 14 	add3 r2,r0,#20
    5f7c:	05 44 7c 0c 	cmp r5,r4 -> bc 5fac <__any_on+0x3c>
    5f80:	04 45 7d 0c 	cmp r4,r5 -> bnc 5fb0 <__any_on+0x40>
    5f84:	65 1f f0 00 	ldi r5,#31 || nop
    5f88:	05 c1 f0 00 	and r5,r1 || nop
    5f8c:	b0 85 00 09 	beqz r5,5fb0 <__any_on+0x40>
    5f90:	86 a4 00 05 	add3 r6,r4,#5
    5f94:	56 42 06 a0 	slli r6,#0x2 -> add r6,r0
    5f98:	27 c6 f0 00 	ld r7,@r6 || nop
    5f9c:	16 87 16 05 	mv r6,r7 -> srl r6,r5
    5fa0:	16 45 f0 00 	sll r6,r5 || nop
    5fa4:	b6 17 00 0d 	bne r6,r7,5fd8 <__any_on+0x68>
    5fa8:	7f 02 f0 00 	bra 5fb0 <__any_on+0x40> || nop
    5fac:	14 85 f0 00 	mv r4,r5 || nop
    5fb0:	44 05 f0 00 	addi r4,#5 || nop
    5fb4:	54 42 f0 00 	slli r4,#0x2 || nop
    5fb8:	04 a0 f0 00 	add r4,r0 || nop
    5fbc:	7f 04 f0 00 	bra 5fcc <__any_on+0x5c> || nop
    5fc0:	44 fc f0 00 	addi r4,#-4 || nop
    5fc4:	25 c4 f0 00 	ld r5,@r4 || nop
    5fc8:	b0 95 00 04 	bnez r5,5fd8 <__any_on+0x68>
    5fcc:	02 54 7c fd 	cmpu r2,r4 -> bc 5fc0 <__any_on+0x50>
    5fd0:	60 00 f0 00 	ldi r0,#0 || nop
    5fd4:	1f ce f0 00 	jmp lr || nop
    5fd8:	60 01 f0 00 	ldi r0,#1 || nop
    5fdc:	1f ce f0 00 	jmp lr || nop

00005fe0 <__fpclassifyd>:
    5fe0:	14 80 f0 00 	mv r4,r0 || nop
    5fe4:	16 81 f0 00 	mv r6,r1 || nop
    5fe8:	b0 80 00 03 	beqz r0,5ff4 <__fpclassifyd+0x14>
    5fec:	d5 c0 80 00 	seth r5,#0x8000
    5ff0:	b0 15 00 02 	bne r0,r5,5ff8 <__fpclassifyd+0x18>
    5ff4:	b0 86 00 15 	beqz r6,6048 <__fpclassifyd+0x68>
    5ff8:	d7 c0 ff f0 	seth r7,#0xfff0
    5ffc:	d5 c0 7f df 	seth r5,#0x7fdf
    6000:	85 e5 ff ff 	or3 r5,r5,#0xffff
    6004:	07 a4 05 57 	add r7,r4 -> cmpu r5,r7
    6008:	7d 12 f0 00 	bnc 6050 <__fpclassifyd+0x70> || nop
    600c:	d7 c0 7f f0 	seth r7,#0x7ff0
    6010:	07 a4 f0 00 	add r7,r4 || nop
    6014:	05 57 7d 0f 	cmpu r5,r7 -> bnc 6050 <__fpclassifyd+0x70>
    6018:	e5 0f ff ff 	ld24 r5,fffff <__end+0xf1aef>
    601c:	05 54 7d 0f 	cmpu r5,r4 -> bnc 6058 <__fpclassifyd+0x78>
    6020:	d7 c0 80 00 	seth r7,#0x8000
    6024:	07 a4 f0 00 	add r7,r4 || nop
    6028:	05 57 7d 0c 	cmpu r5,r7 -> bnc 6058 <__fpclassifyd+0x78>
    602c:	d5 c0 7f f0 	seth r5,#0x7ff0
    6030:	b4 05 00 03 	beq r4,r5,603c <__fpclassifyd+0x5c>
    6034:	d5 c0 ff f0 	seth r5,#0xfff0
    6038:	b4 15 00 0a 	bne r4,r5,6060 <__fpclassifyd+0x80>
    603c:	80 56 00 01 	cmpui r6,#1
    6040:	10 91 f0 00 	mvfc r0,cbr || nop
    6044:	1f ce f0 00 	jmp lr || nop
    6048:	60 02 f0 00 	ldi r0,#2 || nop
    604c:	1f ce f0 00 	jmp lr || nop
    6050:	60 04 f0 00 	ldi r0,#4 || nop
    6054:	1f ce f0 00 	jmp lr || nop
    6058:	60 03 f0 00 	ldi r0,#3 || nop
    605c:	1f ce f0 00 	jmp lr || nop
    6060:	60 00 f0 00 	ldi r0,#0 || nop
    6064:	1f ce f0 00 	jmp lr || nop

00006068 <_sbrk_r>:
    6068:	28 7f f0 00 	push r8 || nop
    606c:	e8 00 a1 00 	ld24 r8,a100 <errno>
    6070:	29 7f f0 00 	push r9 || nop
    6074:	64 00 f0 00 	ldi r4,#0 || nop
    6078:	2e 7f f0 00 	push lr || nop
    607c:	19 80 f0 00 	mv r9,r0 || nop
    6080:	10 81 f0 00 	mv r0,r1 || nop
    6084:	24 48 f0 00 	st r4,@r8 || nop
    6088:	fe ff ed 37 	bl 1564 <_sbrk>
    608c:	84 a0 00 01 	add3 r4,r0,#1
    6090:	b0 94 00 04 	bnez r4,60a0 <_sbrk_r+0x38>
    6094:	24 c8 f0 00 	ld r4,@r8 || nop
    6098:	b0 84 00 02 	beqz r4,60a0 <_sbrk_r+0x38>
    609c:	24 49 f0 00 	st r4,@r9 || nop
    60a0:	2e ef 29 ef 	pop lr -> pop r9
    60a4:	28 ef 1f ce 	pop r8 -> jmp lr

000060a8 <__sread>:
    60a8:	28 7f 2e 7f 	push r8 -> push lr
    60ac:	18 81 f0 00 	mv r8,r1 || nop
    60b0:	a1 a1 00 0e 	ldh r1,@(14,r1)
    60b4:	fe 00 05 a6 	bl 774c <_read_r>
    60b8:	b0 a0 00 05 	bltz r0,60cc <__sread+0x24>
    60bc:	a4 c8 00 50 	ld r4,@(80,r8)
    60c0:	04 a0 f0 00 	add r4,r0 || nop
    60c4:	a4 48 00 50 	st r4,@(80,r8)
    60c8:	7f 05 f0 00 	bra 60dc <__sread+0x34> || nop
    60cc:	a5 b8 00 0c 	lduh r5,@(12,r8)
    60d0:	94 f0 ef ff 	ldi r4,#-4097
    60d4:	04 c5 f0 00 	and r4,r5 || nop
    60d8:	a4 28 00 0c 	sth r4,@(12,r8)
    60dc:	2e ef 28 ef 	pop lr -> pop r8
    60e0:	1f ce f0 00 	jmp lr || nop

000060e4 <__seofread>:
    60e4:	60 00 f0 00 	ldi r0,#0 || nop
    60e8:	1f ce f0 00 	jmp lr || nop

000060ec <__swrite>:
    60ec:	28 7f 29 7f 	push r8 -> push r9
    60f0:	2a 7f 2b 7f 	push r10 -> push r11
    60f4:	2e 7f f0 00 	push lr || nop
    60f8:	a4 b1 00 0c 	lduh r4,@(12,r1)
    60fc:	1b 80 18 81 	mv r11,r0 -> mv r8,r1
    6100:	84 c4 01 00 	and3 r4,r4,#0x100
    6104:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    6108:	1a 82 19 83 	mv r10,r2 -> mv r9,r3
    610c:	b0 84 00 05 	beqz r4,6120 <__swrite+0x34>
    6110:	a1 a1 00 0e 	ldh r1,@(14,r1)
    6114:	62 00 f0 00 	ldi r2,#0 || nop
    6118:	63 02 f0 00 	ldi r3,#2 || nop
    611c:	fe 00 05 61 	bl 76a0 <_lseek_r>
    6120:	a5 b8 00 0c 	lduh r5,@(12,r8)
    6124:	94 f0 ef ff 	ldi r4,#-4097
    6128:	a1 a8 00 0e 	ldh r1,@(14,r8)
    612c:	04 c5 f0 00 	and r4,r5 || nop
    6130:	a4 28 00 0c 	sth r4,@(12,r8)
    6134:	12 8a 13 89 	mv r2,r10 -> mv r3,r9
    6138:	10 8b f0 00 	mv r0,r11 || nop
    613c:	fe 00 03 52 	bl 6e84 <_write_r>
    6140:	2e ef 2b ef 	pop lr -> pop r11
    6144:	2a ef f0 00 	pop r10 || nop
    6148:	29 ef f0 00 	pop r9 || nop
    614c:	28 ef f0 00 	pop r8 || nop
    6150:	1f ce f0 00 	jmp lr || nop

00006154 <__sseek>:
    6154:	28 7f 2e 7f 	push r8 -> push lr
    6158:	18 81 f0 00 	mv r8,r1 || nop
    615c:	a1 a1 00 0e 	ldh r1,@(14,r1)
    6160:	fe 00 05 50 	bl 76a0 <_lseek_r>
    6164:	84 a0 00 01 	add3 r4,r0,#1
    6168:	a5 b8 00 0c 	lduh r5,@(12,r8)
    616c:	b0 94 00 05 	bnez r4,6180 <__sseek+0x2c>
    6170:	94 f0 ef ff 	ldi r4,#-4097
    6174:	04 c5 f0 00 	and r4,r5 || nop
    6178:	a4 28 00 0c 	sth r4,@(12,r8)
    617c:	7f 04 f0 00 	bra 618c <__sseek+0x38> || nop
    6180:	85 e5 10 00 	or3 r5,r5,#0x1000
    6184:	a5 28 00 0c 	sth r5,@(12,r8)
    6188:	a0 48 00 50 	st r0,@(80,r8)
    618c:	2e ef 28 ef 	pop lr -> pop r8
    6190:	1f ce f0 00 	jmp lr || nop

00006194 <__sclose>:
    6194:	2e 7f f0 00 	push lr || nop
    6198:	a1 a1 00 0e 	ldh r1,@(14,r1)
    619c:	fe 00 03 73 	bl 6f68 <_close_r>
    61a0:	2e ef 1f ce 	pop lr -> jmp lr

000061a4 <strcmp>:
    61a4:	7f 03 f0 00 	bra 61b0 <strcmp+0xc> || nop
    61a8:	40 01 f0 00 	addi r0,#1 || nop
    61ac:	41 01 f0 00 	addi r1,#1 || nop
    61b0:	24 80 f0 00 	ldb r4,@r0 || nop
    61b4:	b0 84 00 03 	beqz r4,61c0 <strcmp+0x1c>
    61b8:	25 81 f0 00 	ldb r5,@r1 || nop
    61bc:	b5 04 ff fb 	beq r5,r4,61a8 <strcmp+0x4>
    61c0:	80 c4 00 ff 	and3 r0,r4,#0xff
    61c4:	25 91 f0 00 	ldub r5,@r1 || nop
    61c8:	00 25 1f ce 	sub r0,r5 -> jmp lr

000061cc <strlen>:
    61cc:	14 80 7f 02 	mv r4,r0 -> bra 61d4 <strlen+0x8>
    61d0:	44 01 f0 00 	addi r4,#1 || nop
    61d4:	25 84 f0 00 	ldb r5,@r4 || nop
    61d8:	b0 95 ff fe 	bnez r5,61d0 <strlen+0x4>
    61dc:	04 20 f0 00 	sub r4,r0 || nop
    61e0:	10 84 f0 00 	mv r0,r4 || nop
    61e4:	1f ce f0 00 	jmp lr || nop

000061e8 <__sprint_r>:
    61e8:	2d 7f 28 7f 	push fp -> push r8
    61ec:	29 7f 2a 7f 	push r9 -> push r10
    61f0:	2b 7f 2c 7f 	push r11 -> push r12
    61f4:	2e 7f f0 00 	push lr || nop
    61f8:	a4 c2 00 08 	ld r4,@(8,r2)
    61fc:	4f fc f0 00 	addi sp,#-4 || nop
    6200:	1d 80 1b 81 	mv fp,r0 -> mv r11,r1
    6204:	18 82 f0 00 	mv r8,r2 || nop
    6208:	b0 94 00 04 	bnez r4,6218 <__sprint_r+0x30>
    620c:	a4 42 00 04 	st r4,@(4,r2)
    6210:	60 00 f0 00 	ldi r0,#0 || nop
    6214:	7f 22 f0 00 	bra 629c <__sprint_r+0xb4> || nop
    6218:	a4 c1 00 64 	ld r4,@(100,r1)
    621c:	84 c4 20 00 	and3 r4,r4,#0x2000
    6220:	b0 84 00 19 	beqz r4,6284 <__sprint_r+0x9c>
    6224:	29 c2 f0 00 	ld r9,@r2 || nop
    6228:	7f 14 f0 00 	bra 6278 <__sprint_r+0x90> || nop
    622c:	ac c9 00 04 	ld r12,@(4,r9)
    6230:	6a 00 f0 00 	ldi r10,#0 || nop
    6234:	25 c9 f0 00 	ld r5,@r9 || nop
    6238:	5c 01 f0 00 	srli r12,#0x1 || nop
    623c:	7f 09 f0 00 	bra 6260 <__sprint_r+0x78> || nop
    6240:	94 ca 00 01 	sll3 r4,r10,#1
    6244:	04 a5 f0 00 	add r4,r5 || nop
    6248:	21 b4 10 8d 	lduh r1,@r4 -> mv r0,fp
    624c:	12 8b 25 4f 	mv r2,r11 -> st r5,@sp
    6250:	fe 00 03 8e 	bl 7088 <_fputwc_r>
    6254:	40 01 25 cf 	addi r0,#1 -> ld r5,@sp
    6258:	b0 80 00 0d 	beqz r0,628c <__sprint_r+0xa4>
    625c:	4a 01 f0 00 	addi r10,#1 || nop
    6260:	0a 4c 7c f8 	cmp r10,r12 -> bc 6240 <__sprint_r+0x58>
    6264:	a4 c8 00 08 	ld r4,@(8,r8)
    6268:	5c 41 f0 00 	slli r12,#0x1 || nop
    626c:	49 08 f0 00 	addi r9,#8 || nop
    6270:	04 2c f0 00 	sub r4,r12 || nop
    6274:	a4 48 00 08 	st r4,@(8,r8)
    6278:	a4 c8 00 08 	ld r4,@(8,r8)
    627c:	b0 94 ff ec 	bnez r4,622c <__sprint_r+0x44>
    6280:	60 00 7f 04 	ldi r0,#0 -> bra 6290 <__sprint_r+0xa8>
    6284:	fe 00 03 e8 	bl 7224 <__sfvwrite_r>
    6288:	7f 02 f0 00 	bra 6290 <__sprint_r+0xa8> || nop
    628c:	60 ff f0 00 	ldi r0,#-1 || nop
    6290:	64 00 f0 00 	ldi r4,#0 || nop
    6294:	a4 48 00 08 	st r4,@(8,r8)
    6298:	a4 48 00 04 	st r4,@(4,r8)
    629c:	4f 04 2e ef 	addi sp,#4 -> pop lr
    62a0:	2c ef 2b ef 	pop r12 -> pop r11
    62a4:	2a ef 29 ef 	pop r10 -> pop r9
    62a8:	28 ef f0 00 	pop r8 || nop
    62ac:	2d ef f0 00 	pop fp || nop
    62b0:	1f ce f0 00 	jmp lr || nop

000062b4 <_vfiprintf_r>:
    62b4:	2d 7f 28 7f 	push fp -> push r8
    62b8:	29 7f 2a 7f 	push r9 -> push r10
    62bc:	2b 7f 2c 7f 	push r11 -> push r12
    62c0:	2e 7f f0 00 	push lr || nop
    62c4:	8f af fb 34 	add3 sp,sp,#-1228
    62c8:	1a 80 19 81 	mv r10,r0 -> mv r9,r1
    62cc:	1b 82 18 83 	mv r11,r2 -> mv r8,r3
    62d0:	b0 80 00 04 	beqz r0,62e0 <_vfiprintf_r+0x2c>
    62d4:	a4 c0 00 38 	ld r4,@(56,r0)
    62d8:	b0 94 00 02 	bnez r4,62e0 <_vfiprintf_r+0x2c>
    62dc:	fe ff f8 ac 	bl 458c <__sinit>
    62e0:	a4 a9 00 0c 	ldh r4,@(12,r9)
    62e4:	85 c4 20 00 	and3 r5,r4,#0x2000
    62e8:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    62ec:	b0 95 00 07 	bnez r5,6308 <_vfiprintf_r+0x54>
    62f0:	84 e4 20 00 	or3 r4,r4,#0x2000
    62f4:	a4 29 00 0c 	sth r4,@(12,r9)
    62f8:	a4 c9 00 64 	ld r4,@(100,r9)
    62fc:	95 f0 df ff 	ldi r5,#-8193
    6300:	04 c5 f0 00 	and r4,r5 || nop
    6304:	a4 49 00 64 	st r4,@(100,r9)
    6308:	a5 b9 00 0c 	lduh r5,@(12,r9)
    630c:	64 08 04 c5 	ldi r4,#8 -> and r4,r5
    6310:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    6314:	b0 84 00 08 	beqz r4,6334 <_vfiprintf_r+0x80>
    6318:	a4 c9 00 10 	ld r4,@(16,r9)
    631c:	b0 84 00 06 	beqz r4,6334 <_vfiprintf_r+0x80>
    6320:	a7 a9 00 0c 	ldh r7,@(12,r9)
    6324:	64 1a 04 c7 	ldi r4,#26 -> and r4,r7
    6328:	85 a4 ff f6 	add3 r5,r4,#-10
    632c:	b0 95 00 2d 	bnez r5,63e0 <_vfiprintf_r+0x12c>
    6330:	7f 07 f0 00 	bra 634c <_vfiprintf_r+0x98> || nop
    6334:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6338:	fe ff f2 83 	bl 2d44 <__swsetup_r>
    633c:	b0 80 ff f9 	beqz r0,6320 <_vfiprintf_r+0x6c>
    6340:	64 ff f0 00 	ldi r4,#-1 || nop
    6344:	a4 4f 04 a8 	st r4,@(1192,sp)
    6348:	ff 00 02 bf 	bra 6e44 <_vfiprintf_r+0xb90>
    634c:	a6 a9 00 0e 	ldh r6,@(14,r9)
    6350:	b0 a6 00 24 	bltz r6,63e0 <_vfiprintf_r+0x12c>
    6354:	81 af 04 00 	add3 r1,sp,#1024
    6358:	a6 2f 04 0e 	sth r6,@(1038,sp)
    635c:	af 4f 04 00 	st sp,@(1024,sp)
    6360:	af 4f 04 10 	st sp,@(1040,sp)
    6364:	a5 4f 04 18 	st r5,@(1048,sp)
    6368:	64 fd 04 c7 	ldi r4,#-3 -> and r4,r7
    636c:	a4 2f 04 0c 	sth r4,@(1036,sp)
    6370:	a4 c9 00 64 	ld r4,@(100,r9)
    6374:	10 8a 12 8b 	mv r0,r10 -> mv r2,r11
    6378:	a4 4f 04 64 	st r4,@(1124,sp)
    637c:	a4 c9 00 1c 	ld r4,@(28,r9)
    6380:	13 88 f0 00 	mv r3,r8 || nop
    6384:	a4 4f 04 1c 	st r4,@(1052,sp)
    6388:	a4 c9 00 24 	ld r4,@(36,r9)
    638c:	a4 4f 04 24 	st r4,@(1060,sp)
    6390:	94 f0 04 00 	ldi r4,#1024
    6394:	a4 4f 04 08 	st r4,@(1032,sp)
    6398:	a4 4f 04 14 	st r4,@(1044,sp)
    639c:	fe ff ff c6 	bl 62b4 <_vfiprintf_r>
    63a0:	a0 4f 04 a8 	st r0,@(1192,sp)
    63a4:	b0 a0 00 07 	bltz r0,63c0 <_vfiprintf_r+0x10c>
    63a8:	81 af 04 00 	add3 r1,sp,#1024
    63ac:	10 8a f0 00 	mv r0,r10 || nop
    63b0:	fe ff f8 1f 	bl 442c <_fflush_r>
    63b4:	b0 80 00 03 	beqz r0,63c0 <_vfiprintf_r+0x10c>
    63b8:	65 ff f0 00 	ldi r5,#-1 || nop
    63bc:	a5 4f 04 a8 	st r5,@(1192,sp)
    63c0:	a5 bf 04 0c 	lduh r5,@(1036,sp)
    63c4:	64 40 04 c5 	ldi r4,#64 -> and r4,r5
    63c8:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    63cc:	b0 84 02 9e 	beqz r4,6e44 <_vfiprintf_r+0xb90>
    63d0:	a5 b9 00 0c 	lduh r5,@(12,r9)
    63d4:	64 40 04 e5 	ldi r4,#64 -> or r4,r5
    63d8:	a4 29 00 0c 	sth r4,@(12,r9)
    63dc:	ff 00 02 9a 	bra 6e44 <_vfiprintf_r+0xb90>
    63e0:	ab 4f 04 a4 	st r11,@(1188,sp)
    63e4:	85 af 04 90 	add3 r5,sp,#1168
    63e8:	af 4f 04 90 	st sp,@(1168,sp)
    63ec:	a5 4f 04 a0 	st r5,@(1184,sp)
    63f0:	64 00 f0 00 	ldi r4,#0 || nop
    63f4:	a4 4f 04 98 	st r4,@(1176,sp)
    63f8:	a4 4f 04 94 	st r4,@(1172,sp)
    63fc:	67 00 f0 00 	ldi r7,#0 || nop
    6400:	a7 4f 04 b8 	st r7,@(1208,sp)
    6404:	6b 00 f0 00 	ldi r11,#0 || nop
    6408:	ab 4f 04 a8 	st r11,@(1192,sp)
    640c:	14 8f f0 00 	mv r4,sp || nop
    6410:	ab cf 04 a4 	ld r11,@(1188,sp)
    6414:	7f 02 f0 00 	bra 641c <_vfiprintf_r+0x168> || nop
    6418:	4b 01 f0 00 	addi r11,#1 || nop
    641c:	25 8b f0 00 	ldb r5,@r11 || nop
    6420:	b0 95 00 05 	bnez r5,6434 <_vfiprintf_r+0x180>
    6424:	a7 cf 04 a4 	ld r7,@(1188,sp)
    6428:	1c 8b 0c 27 	mv r12,r11 -> sub r12,r7
    642c:	b0 9c 00 05 	bnez r12,6440 <_vfiprintf_r+0x18c>
    6430:	7f 18 f0 00 	bra 6490 <_vfiprintf_r+0x1dc> || nop
    6434:	45 db f0 00 	addi r5,#-37 || nop
    6438:	b0 95 ff f8 	bnez r5,6418 <_vfiprintf_r+0x164>
    643c:	7f fa f0 00 	bra 6424 <_vfiprintf_r+0x170> || nop
    6440:	a5 cf 04 a4 	ld r5,@(1188,sp)
    6444:	ac 44 00 04 	st r12,@(4,r4)
    6448:	66 07 25 44 	ldi r6,#7 -> st r5,@r4
    644c:	a5 cf 04 98 	ld r5,@(1176,sp)
    6450:	05 ac f0 00 	add r5,r12 || nop
    6454:	a5 4f 04 98 	st r5,@(1176,sp)
    6458:	a5 cf 04 94 	ld r5,@(1172,sp)
    645c:	45 01 f0 00 	addi r5,#1 || nop
    6460:	a5 4f 04 94 	st r5,@(1172,sp)
    6464:	06 45 7c 03 	cmp r6,r5 -> bc 6470 <_vfiprintf_r+0x1bc>
    6468:	44 08 f0 00 	addi r4,#8 || nop
    646c:	7f 06 f0 00 	bra 6484 <_vfiprintf_r+0x1d0> || nop
    6470:	82 af 04 90 	add3 r2,sp,#1168
    6474:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6478:	fe ff ff 5c 	bl 61e8 <__sprint_r>
    647c:	b0 90 02 6e 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6480:	14 8f f0 00 	mv r4,sp || nop
    6484:	a7 cf 04 a8 	ld r7,@(1192,sp)
    6488:	07 ac f0 00 	add r7,r12 || nop
    648c:	a7 4f 04 a8 	st r7,@(1192,sp)
    6490:	25 8b f0 00 	ldb r5,@r11 || nop
    6494:	b0 85 02 63 	beqz r5,6e20 <_vfiprintf_r+0xb6c>
    6498:	4b 01 f0 00 	addi r11,#1 || nop
    649c:	ab 4f 04 a4 	st r11,@(1188,sp)
    64a0:	65 00 f0 00 	ldi r5,#0 || nop
    64a4:	a5 0f 04 9e 	stb r5,@(1182,sp)
    64a8:	6b 00 f0 00 	ldi r11,#0 || nop
    64ac:	ab 4f 04 b0 	st r11,@(1200,sp)
    64b0:	67 00 f0 00 	ldi r7,#0 || nop
    64b4:	6d ff f0 00 	ldi fp,#-1 || nop
    64b8:	6c 00 f0 00 	ldi r12,#0 || nop
    64bc:	65 63 f0 00 	ldi r5,#99 || nop
    64c0:	63 09 f0 00 	ldi r3,#9 || nop
    64c4:	61 2b 60 6f 	ldi r1,#43 -> ldi r0,#111
    64c8:	6e 73 7f 05 	ldi lr,#115 -> bra 64dc <_vfiprintf_r+0x228>
    64cc:	67 2b 7f 04 	ldi r7,#43 -> bra 64dc <_vfiprintf_r+0x228>
    64d0:	67 20 7f 03 	ldi r7,#32 -> bra 64dc <_vfiprintf_r+0x228>
    64d4:	18 86 f0 00 	mv r8,r6 || nop
    64d8:	6d ff f0 00 	ldi fp,#-1 || nop
    64dc:	ab cf 04 a4 	ld r11,@(1188,sp)
    64e0:	26 8b f0 00 	ldb r6,@r11 || nop
    64e4:	4b 01 f0 00 	addi r11,#1 || nop
    64e8:	ab 4f 04 a4 	st r11,@(1188,sp)
    64ec:	82 a6 ff 9d 	add3 r2,r6,#-99
    64f0:	b0 82 00 7f 	beqz r2,66ec <_vfiprintf_r+0x438>
    64f4:	05 46 7c 22 	cmp r5,r6 -> bc 657c <_vfiprintf_r+0x2c8>
    64f8:	62 39 02 46 	ldi r2,#57 -> cmp r2,r6
    64fc:	7c 14 f0 00 	bc 654c <_vfiprintf_r+0x298> || nop
    6500:	80 46 00 31 	cmpi r6,#49
    6504:	7d 68 f0 00 	bnc 66a4 <_vfiprintf_r+0x3f0> || nop
    6508:	82 a6 ff d5 	add3 r2,r6,#-43
    650c:	b0 82 ff f0 	beqz r2,64cc <_vfiprintf_r+0x218>
    6510:	01 46 7c 08 	cmp r1,r6 -> bc 6530 <_vfiprintf_r+0x27c>
    6514:	82 a6 ff dd 	add3 r2,r6,#-35
    6518:	b0 82 00 3e 	beqz r2,6610 <_vfiprintf_r+0x35c>
    651c:	82 a6 ff d6 	add3 r2,r6,#-42
    6520:	b0 82 00 3e 	beqz r2,6618 <_vfiprintf_r+0x364>
    6524:	82 a6 ff e0 	add3 r2,r6,#-32
    6528:	b0 82 00 38 	beqz r2,6608 <_vfiprintf_r+0x354>
    652c:	ff 00 01 21 	bra 69b0 <_vfiprintf_r+0x6fc>
    6530:	82 a6 ff d2 	add3 r2,r6,#-46
    6534:	b0 82 00 42 	beqz r2,663c <_vfiprintf_r+0x388>
    6538:	82 a6 ff d0 	add3 r2,r6,#-48
    653c:	b0 82 00 58 	beqz r2,669c <_vfiprintf_r+0x3e8>
    6540:	82 a6 ff d3 	add3 r2,r6,#-45
    6544:	b0 82 00 3c 	beqz r2,6634 <_vfiprintf_r+0x380>
    6548:	ff 00 01 1a 	bra 69b0 <_vfiprintf_r+0x6fc>
    654c:	82 a6 ff b1 	add3 r2,r6,#-79
    6550:	b0 82 00 8c 	beqz r2,6780 <_vfiprintf_r+0x4cc>
    6554:	62 4f 02 46 	ldi r2,#79 -> cmp r2,r6
    6558:	7c 04 f0 00 	bc 6568 <_vfiprintf_r+0x2b4> || nop
    655c:	82 a6 ff bc 	add3 r2,r6,#-68
    6560:	b0 82 00 6a 	beqz r2,6708 <_vfiprintf_r+0x454>
    6564:	ff 00 01 13 	bra 69b0 <_vfiprintf_r+0x6fc>
    6568:	82 a6 ff ab 	add3 r2,r6,#-85
    656c:	b0 82 00 b0 	beqz r2,682c <_vfiprintf_r+0x578>
    6570:	82 a6 ff a8 	add3 r2,r6,#-88
    6574:	b0 82 00 22 	beqz r2,65fc <_vfiprintf_r+0x348>
    6578:	ff 00 01 0e 	bra 69b0 <_vfiprintf_r+0x6fc>
    657c:	82 a6 ff 91 	add3 r2,r6,#-111
    6580:	b0 82 00 81 	beqz r2,6784 <_vfiprintf_r+0x4d0>
    6584:	00 46 7c 0f 	cmp r0,r6 -> bc 65c0 <_vfiprintf_r+0x30c>
    6588:	82 a6 ff 97 	add3 r2,r6,#-105
    658c:	b0 82 00 1a 	beqz r2,65f4 <_vfiprintf_r+0x340>
    6590:	6b 69 0b 46 	ldi r11,#105 -> cmp r11,r6
    6594:	7c 06 f0 00 	bc 65ac <_vfiprintf_r+0x2f8> || nop
    6598:	82 a6 ff 9c 	add3 r2,r6,#-100
    659c:	b0 82 00 16 	beqz r2,65f4 <_vfiprintf_r+0x340>
    65a0:	82 a6 ff 98 	add3 r2,r6,#-104
    65a4:	b0 82 00 4e 	beqz r2,66dc <_vfiprintf_r+0x428>
    65a8:	ff 00 01 02 	bra 69b0 <_vfiprintf_r+0x6fc>
    65ac:	82 a6 ff 94 	add3 r2,r6,#-108
    65b0:	b0 82 00 4d 	beqz r2,66e4 <_vfiprintf_r+0x430>
    65b4:	82 a6 ff 92 	add3 r2,r6,#-110
    65b8:	b0 82 00 64 	beqz r2,6748 <_vfiprintf_r+0x494>
    65bc:	ff 00 00 fd 	bra 69b0 <_vfiprintf_r+0x6fc>
    65c0:	82 a6 ff 8d 	add3 r2,r6,#-115
    65c4:	b0 82 00 86 	beqz r2,67dc <_vfiprintf_r+0x528>
    65c8:	0e 46 7c 06 	cmp lr,r6 -> bc 65e0 <_vfiprintf_r+0x32c>
    65cc:	82 a6 ff 90 	add3 r2,r6,#-112
    65d0:	b0 82 00 79 	beqz r2,67b4 <_vfiprintf_r+0x500>
    65d4:	82 a6 ff 8f 	add3 r2,r6,#-113
    65d8:	b0 82 00 43 	beqz r2,66e4 <_vfiprintf_r+0x430>
    65dc:	ff 00 00 f5 	bra 69b0 <_vfiprintf_r+0x6fc>
    65e0:	82 a6 ff 8b 	add3 r2,r6,#-117
    65e4:	b0 82 00 93 	beqz r2,6830 <_vfiprintf_r+0x57c>
    65e8:	82 a6 ff 88 	add3 r2,r6,#-120
    65ec:	b0 82 00 9c 	beqz r2,685c <_vfiprintf_r+0x5a8>
    65f0:	ff 00 00 f0 	bra 69b0 <_vfiprintf_r+0x6fc>
    65f4:	a7 0f 04 9e 	stb r7,@(1182,sp)
    65f8:	7f 46 f0 00 	bra 6710 <_vfiprintf_r+0x45c> || nop
    65fc:	a7 0f 04 9e 	stb r7,@(1182,sp)
    6600:	e5 00 90 58 	ld24 r5,9058 <_global_impure_ptr+0x18>
    6604:	ff 00 00 98 	bra 6864 <_vfiprintf_r+0x5b0>
    6608:	b0 87 ff b2 	beqz r7,64d0 <_vfiprintf_r+0x21c>
    660c:	7f b4 f0 00 	bra 64dc <_vfiprintf_r+0x228> || nop
    6610:	8c ec 00 01 	or3 r12,r12,#0x1
    6614:	7f b2 f0 00 	bra 64dc <_vfiprintf_r+0x228> || nop
    6618:	86 a8 00 04 	add3 r6,r8,#4
    661c:	28 c8 f0 00 	ld r8,@r8 || nop
    6620:	a8 4f 04 b0 	st r8,@(1200,sp)
    6624:	b0 b8 00 0f 	bgez r8,6660 <_vfiprintf_r+0x3ac>
    6628:	0b 38 f0 00 	neg r11,r8 || nop
    662c:	ab 4f 04 b0 	st r11,@(1200,sp)
    6630:	18 86 f0 00 	mv r8,r6 || nop
    6634:	8c ec 00 04 	or3 r12,r12,#0x4
    6638:	7f a9 f0 00 	bra 64dc <_vfiprintf_r+0x228> || nop
    663c:	ab cf 04 a4 	ld r11,@(1188,sp)
    6640:	26 8b f0 00 	ldb r6,@r11 || nop
    6644:	4b 01 f0 00 	addi r11,#1 || nop
    6648:	ab 4f 04 a4 	st r11,@(1188,sp)
    664c:	82 a6 ff d6 	add3 r2,r6,#-42
    6650:	b0 92 00 0d 	bnez r2,6684 <_vfiprintf_r+0x3d0>
    6654:	86 a8 00 04 	add3 r6,r8,#4
    6658:	2d c8 f0 00 	ld fp,@r8 || nop
    665c:	b0 ad ff 9e 	bltz fp,64d4 <_vfiprintf_r+0x220>
    6660:	18 86 7f 9f 	mv r8,r6 -> bra 64dc <_vfiprintf_r+0x228>
    6664:	ab cf 04 a4 	ld r11,@(1188,sp)
    6668:	96 cd 00 01 	sll3 r6,fp,#1
    666c:	5d 43 f0 00 	slli fp,#0x3 || nop
    6670:	0d a6 f0 00 	add fp,r6 || nop
    6674:	26 8b 4b 01 	ldb r6,@r11 -> addi r11,#1
    6678:	ab 4f 04 a4 	st r11,@(1188,sp)
    667c:	0d a2 f0 00 	add fp,r2 || nop
    6680:	7f 02 f0 00 	bra 6688 <_vfiprintf_r+0x3d4> || nop
    6684:	6d 00 f0 00 	ldi fp,#0 || nop
    6688:	82 a6 ff d0 	add3 r2,r6,#-48
    668c:	03 52 7d f6 	cmpu r3,r2 -> bnc 6664 <_vfiprintf_r+0x3b0>
    6690:	b0 bd ff 97 	bgez fp,64ec <_vfiprintf_r+0x238>
    6694:	6d ff f0 00 	ldi fp,#-1 || nop
    6698:	7f 95 f0 00 	bra 64ec <_vfiprintf_r+0x238> || nop
    669c:	8c ec 00 80 	or3 r12,r12,#0x80
    66a0:	7f 8f f0 00 	bra 64dc <_vfiprintf_r+0x228> || nop
    66a4:	62 00 f0 00 	ldi r2,#0 || nop
    66a8:	9b c2 00 01 	sll3 r11,r2,#1
    66ac:	52 43 f0 00 	slli r2,#0x3 || nop
    66b0:	02 ab f0 00 	add r2,r11 || nop
    66b4:	ab cf 04 a4 	ld r11,@(1188,sp)
    66b8:	46 d0 f0 00 	addi r6,#-48 || nop
    66bc:	02 a6 f0 00 	add r2,r6 || nop
    66c0:	26 8b f0 00 	ldb r6,@r11 || nop
    66c4:	4b 01 f0 00 	addi r11,#1 || nop
    66c8:	ab 4f 04 a4 	st r11,@(1188,sp)
    66cc:	8b a6 ff d0 	add3 r11,r6,#-48
    66d0:	03 5b 7d f6 	cmpu r3,r11 -> bnc 66a8 <_vfiprintf_r+0x3f4>
    66d4:	a2 4f 04 b0 	st r2,@(1200,sp)
    66d8:	7f 85 f0 00 	bra 64ec <_vfiprintf_r+0x238> || nop
    66dc:	8c ec 00 40 	or3 r12,r12,#0x40
    66e0:	ff ff ff 7f 	bra 64dc <_vfiprintf_r+0x228>
    66e4:	8c ec 00 10 	or3 r12,r12,#0x10
    66e8:	ff ff ff 7d 	bra 64dc <_vfiprintf_r+0x228>
    66ec:	a2 0f 04 9e 	stb r2,@(1182,sp)
    66f0:	26 c8 f0 00 	ld r6,@r8 || nop
    66f4:	65 01 f0 00 	ldi r5,#1 || nop
    66f8:	a5 4f 04 ac 	st r5,@(1196,sp)
    66fc:	48 04 f0 00 	addi r8,#4 || nop
    6700:	a6 0f 04 68 	stb r6,@(1128,sp)
    6704:	ff 00 00 b2 	bra 69cc <_vfiprintf_r+0x718>
    6708:	a7 0f 04 9e 	stb r7,@(1182,sp)
    670c:	8c ec 00 10 	or3 r12,r12,#0x10
    6710:	86 a8 00 04 	add3 r6,r8,#4
    6714:	67 10 07 cc 	ldi r7,#16 -> and r7,r12
    6718:	b0 87 00 02 	beqz r7,6720 <_vfiprintf_r+0x46c>
    671c:	27 c8 7f 05 	ld r7,@r8 -> bra 6730 <_vfiprintf_r+0x47c>
    6720:	62 40 02 cc 	ldi r2,#64 -> and r2,r12
    6724:	27 c8 f0 00 	ld r7,@r8 || nop
    6728:	b0 82 00 02 	beqz r2,6730 <_vfiprintf_r+0x47c>
    672c:	57 50 57 30 	slli r7,#0x10 -> srai r7,#0x10
    6730:	18 86 f0 00 	mv r8,r6 || nop
    6734:	b0 b7 00 62 	bgez r7,68bc <_vfiprintf_r+0x608>
    6738:	66 2d f0 00 	ldi r6,#45 || nop
    673c:	a6 0f 04 9e 	stb r6,@(1182,sp)
    6740:	07 37 f0 00 	neg r7,r7 || nop
    6744:	7f 5e f0 00 	bra 68bc <_vfiprintf_r+0x608> || nop
    6748:	a7 0f 04 9e 	stb r7,@(1182,sp)
    674c:	86 a8 00 04 	add3 r6,r8,#4
    6750:	67 10 07 cc 	ldi r7,#16 -> and r7,r12
    6754:	b0 87 00 02 	beqz r7,675c <_vfiprintf_r+0x4a8>
    6758:	7f 06 f0 00 	bra 6770 <_vfiprintf_r+0x4bc> || nop
    675c:	67 40 07 cc 	ldi r7,#64 -> and r7,r12
    6760:	b0 87 00 04 	beqz r7,6770 <_vfiprintf_r+0x4bc>
    6764:	ab cf 04 a8 	ld r11,@(1192,sp)
    6768:	25 c8 2b 25 	ld r5,@r8 -> sth r11,@r5
    676c:	7f 03 f0 00 	bra 6778 <_vfiprintf_r+0x4c4> || nop
    6770:	a7 cf 04 a8 	ld r7,@(1192,sp)
    6774:	25 c8 27 45 	ld r5,@r8 -> st r7,@r5
    6778:	18 86 f0 00 	mv r8,r6 || nop
    677c:	ff ff ff 25 	bra 6410 <_vfiprintf_r+0x15c>
    6780:	8c ec 00 10 	or3 r12,r12,#0x10
    6784:	86 a8 00 04 	add3 r6,r8,#4
    6788:	67 10 07 cc 	ldi r7,#16 -> and r7,r12
    678c:	b0 87 00 02 	beqz r7,6794 <_vfiprintf_r+0x4e0>
    6790:	7f 05 f0 00 	bra 67a4 <_vfiprintf_r+0x4f0> || nop
    6794:	67 40 07 cc 	ldi r7,#64 -> and r7,r12
    6798:	b0 87 00 03 	beqz r7,67a4 <_vfiprintf_r+0x4f0>
    679c:	a7 b8 00 02 	lduh r7,@(2,r8)
    67a0:	7f 02 f0 00 	bra 67a8 <_vfiprintf_r+0x4f4> || nop
    67a4:	27 c8 f0 00 	ld r7,@r8 || nop
    67a8:	18 86 f0 00 	mv r8,r6 || nop
    67ac:	66 00 f0 00 	ldi r6,#0 || nop
    67b0:	7f 40 f0 00 	bra 68b0 <_vfiprintf_r+0x5fc> || nop
    67b4:	eb 00 90 6c 	ld24 r11,906c <_global_impure_ptr+0x2c>
    67b8:	8c ec 00 02 	or3 r12,r12,#0x2
    67bc:	ab 4f 04 b8 	st r11,@(1208,sp)
    67c0:	66 30 f0 00 	ldi r6,#48 || nop
    67c4:	a6 0f 04 9c 	stb r6,@(1180,sp)
    67c8:	66 78 f0 00 	ldi r6,#120 || nop
    67cc:	a6 0f 04 9d 	stb r6,@(1181,sp)
    67d0:	27 c8 f0 00 	ld r7,@r8 || nop
    67d4:	48 04 f0 00 	addi r8,#4 || nop
    67d8:	7f 35 f0 00 	bra 68ac <_vfiprintf_r+0x5f8> || nop
    67dc:	a2 0f 04 9e 	stb r2,@(1182,sp)
    67e0:	16 88 f0 00 	mv r6,r8 || nop
    67e4:	2b c6 48 04 	ld r11,@r6 -> addi r8,#4
    67e8:	10 8b f0 00 	mv r0,r11 || nop
    67ec:	b0 ad 00 0a 	bltz fp,6814 <_vfiprintf_r+0x560>
    67f0:	a4 4f 04 c4 	st r4,@(1220,sp)
    67f4:	61 00 12 8d 	ldi r1,#0 -> mv r2,fp
    67f8:	fe ff fa d3 	bl 5344 <memchr>
    67fc:	a4 cf 04 c4 	ld r4,@(1220,sp)
    6800:	b0 80 00 76 	beqz r0,69d8 <_vfiprintf_r+0x724>
    6804:	00 2b f0 00 	sub r0,r11 || nop
    6808:	a0 4f 04 ac 	st r0,@(1196,sp)
    680c:	0d 40 7c 73 	cmp fp,r0 -> bc 69d8 <_vfiprintf_r+0x724>
    6810:	7f 73 f0 00 	bra 69dc <_vfiprintf_r+0x728> || nop
    6814:	a4 4f 04 c4 	st r4,@(1220,sp)
    6818:	fe ff fe 6d 	bl 61cc <strlen>
    681c:	a0 4f 04 ac 	st r0,@(1196,sp)
    6820:	a4 cf 04 c4 	ld r4,@(1220,sp)
    6824:	6d 00 f0 00 	ldi fp,#0 || nop
    6828:	7f 6e f0 00 	bra 69e0 <_vfiprintf_r+0x72c> || nop
    682c:	8c ec 00 10 	or3 r12,r12,#0x10
    6830:	86 a8 00 04 	add3 r6,r8,#4
    6834:	67 10 07 cc 	ldi r7,#16 -> and r7,r12
    6838:	b0 87 00 02 	beqz r7,6840 <_vfiprintf_r+0x58c>
    683c:	7f 07 f0 00 	bra 6858 <_vfiprintf_r+0x5a4> || nop
    6840:	67 40 07 cc 	ldi r7,#64 -> and r7,r12
    6844:	b0 87 00 05 	beqz r7,6858 <_vfiprintf_r+0x5a4>
    6848:	a7 b8 00 02 	lduh r7,@(2,r8)
    684c:	18 86 f0 00 	mv r8,r6 || nop
    6850:	66 01 f0 00 	ldi r6,#1 || nop
    6854:	7f 17 f0 00 	bra 68b0 <_vfiprintf_r+0x5fc> || nop
    6858:	27 c8 7f fd 	ld r7,@r8 -> bra 684c <_vfiprintf_r+0x598>
    685c:	a7 0f 04 9e 	stb r7,@(1182,sp)
    6860:	e5 00 90 6c 	ld24 r5,906c <_global_impure_ptr+0x2c>
    6864:	a5 4f 04 b8 	st r5,@(1208,sp)
    6868:	82 a8 00 04 	add3 r2,r8,#4
    686c:	67 10 07 cc 	ldi r7,#16 -> and r7,r12
    6870:	b0 87 00 02 	beqz r7,6878 <_vfiprintf_r+0x5c4>
    6874:	7f 05 f0 00 	bra 6888 <_vfiprintf_r+0x5d4> || nop
    6878:	67 40 07 cc 	ldi r7,#64 -> and r7,r12
    687c:	b0 87 00 03 	beqz r7,6888 <_vfiprintf_r+0x5d4>
    6880:	a7 b8 00 02 	lduh r7,@(2,r8)
    6884:	7f 02 f0 00 	bra 688c <_vfiprintf_r+0x5d8> || nop
    6888:	27 c8 f0 00 	ld r7,@r8 || nop
    688c:	18 82 f0 00 	mv r8,r2 || nop
    6890:	62 01 02 cc 	ldi r2,#1 -> and r2,r12
    6894:	b0 82 00 06 	beqz r2,68ac <_vfiprintf_r+0x5f8>
    6898:	b0 87 00 05 	beqz r7,68ac <_vfiprintf_r+0x5f8>
    689c:	a6 0f 04 9d 	stb r6,@(1181,sp)
    68a0:	8c ec 00 02 	or3 r12,r12,#0x2
    68a4:	62 30 f0 00 	ldi r2,#48 || nop
    68a8:	a2 0f 04 9c 	stb r2,@(1180,sp)
    68ac:	66 02 f0 00 	ldi r6,#2 || nop
    68b0:	62 00 f0 00 	ldi r2,#0 || nop
    68b4:	a2 0f 04 9e 	stb r2,@(1182,sp)
    68b8:	7f 02 f0 00 	bra 68c0 <_vfiprintf_r+0x60c> || nop
    68bc:	66 01 f0 00 	ldi r6,#1 || nop
    68c0:	b0 ad 00 03 	bltz fp,68cc <_vfiprintf_r+0x618>
    68c4:	92 f0 ff 7f 	ldi r2,#-129
    68c8:	0c c2 f0 00 	and r12,r2 || nop
    68cc:	b0 97 00 02 	bnez r7,68d4 <_vfiprintf_r+0x620>
    68d0:	b0 8d 00 2b 	beqz fp,697c <_vfiprintf_r+0x6c8>
    68d4:	82 a6 ff ff 	add3 r2,r6,#-1
    68d8:	b0 82 00 13 	beqz r2,6924 <_vfiprintf_r+0x670>
    68dc:	8b af 04 90 	add3 r11,sp,#1168
    68e0:	46 fe f0 00 	addi r6,#-2 || nop
    68e4:	b0 86 00 1e 	beqz r6,695c <_vfiprintf_r+0x6a8>
    68e8:	62 07 02 c7 	ldi r2,#7 -> and r2,r7
    68ec:	4b ff f0 00 	addi r11,#-1 || nop
    68f0:	42 30 22 0b 	addi r2,#48 -> stb r2,@r11
    68f4:	57 03 f0 00 	srli r7,#0x3 || nop
    68f8:	b0 97 ff fc 	bnez r7,68e8 <_vfiprintf_r+0x634>
    68fc:	67 01 f0 00 	ldi r7,#1 || nop
    6900:	07 cc f0 00 	and r7,r12 || nop
    6904:	13 8b f0 00 	mv r3,r11 || nop
    6908:	b0 87 00 26 	beqz r7,69a0 <_vfiprintf_r+0x6ec>
    690c:	42 d0 f0 00 	addi r2,#-48 || nop
    6910:	b0 82 00 24 	beqz r2,69a0 <_vfiprintf_r+0x6ec>
    6914:	67 30 f0 00 	ldi r7,#48 || nop
    6918:	a7 03 ff ff 	stb r7,@(-1,r3)
    691c:	4b ff f0 00 	addi r11,#-1 || nop
    6920:	7f 20 f0 00 	bra 69a0 <_vfiprintf_r+0x6ec> || nop
    6924:	66 09 f0 00 	ldi r6,#9 || nop
    6928:	06 57 7c 04 	cmpu r6,r7 -> bc 6938 <_vfiprintf_r+0x684>
    692c:	47 30 f0 00 	addi r7,#48 || nop
    6930:	a7 0f 04 8f 	stb r7,@(1167,sp)
    6934:	7f 18 f0 00 	bra 6994 <_vfiprintf_r+0x6e0> || nop
    6938:	8b af 04 90 	add3 r11,sp,#1168
    693c:	62 0a f0 00 	ldi r2,#10 || nop
    6940:	13 87 f0 00 	mv r3,r7 || nop
    6944:	93 32 00 00 	remu r3,r2
    6948:	97 12 00 00 	divu r7,r2
    694c:	4b ff f0 00 	addi r11,#-1 || nop
    6950:	43 30 23 0b 	addi r3,#48 -> stb r3,@r11
    6954:	b0 97 ff fb 	bnez r7,6940 <_vfiprintf_r+0x68c>
    6958:	7f 12 f0 00 	bra 69a0 <_vfiprintf_r+0x6ec> || nop
    695c:	a5 cf 04 b8 	ld r5,@(1208,sp)
    6960:	62 0f 02 c7 	ldi r2,#15 -> and r2,r7
    6964:	02 a5 22 92 	add r2,r5 -> ldub r2,@r2
    6968:	4b ff f0 00 	addi r11,#-1 || nop
    696c:	57 04 f0 00 	srli r7,#0x4 || nop
    6970:	22 0b f0 00 	stb r2,@r11 || nop
    6974:	b0 97 ff fa 	bnez r7,695c <_vfiprintf_r+0x6a8>
    6978:	7f 0a f0 00 	bra 69a0 <_vfiprintf_r+0x6ec> || nop
    697c:	b0 96 00 08 	bnez r6,699c <_vfiprintf_r+0x6e8>
    6980:	66 01 f0 00 	ldi r6,#1 || nop
    6984:	06 cc f0 00 	and r6,r12 || nop
    6988:	b0 86 00 05 	beqz r6,699c <_vfiprintf_r+0x6e8>
    698c:	66 30 f0 00 	ldi r6,#48 || nop
    6990:	a6 0f 04 8f 	stb r6,@(1167,sp)
    6994:	8b af 04 8f 	add3 r11,sp,#1167
    6998:	7f 02 f0 00 	bra 69a0 <_vfiprintf_r+0x6ec> || nop
    699c:	8b af 04 90 	add3 r11,sp,#1168
    69a0:	a7 cf 04 a0 	ld r7,@(1184,sp)
    69a4:	07 2b f0 00 	sub r7,r11 || nop
    69a8:	a7 4f 04 ac 	st r7,@(1196,sp)
    69ac:	7f 0d f0 00 	bra 69e0 <_vfiprintf_r+0x72c> || nop
    69b0:	a7 0f 04 9e 	stb r7,@(1182,sp)
    69b4:	b0 86 01 1b 	beqz r6,6e20 <_vfiprintf_r+0xb6c>
    69b8:	a6 0f 04 68 	stb r6,@(1128,sp)
    69bc:	6b 01 f0 00 	ldi r11,#1 || nop
    69c0:	ab 4f 04 ac 	st r11,@(1196,sp)
    69c4:	66 00 f0 00 	ldi r6,#0 || nop
    69c8:	a6 0f 04 9e 	stb r6,@(1182,sp)
    69cc:	8b af 04 68 	add3 r11,sp,#1128
    69d0:	6d 00 f0 00 	ldi fp,#0 || nop
    69d4:	7f 03 f0 00 	bra 69e0 <_vfiprintf_r+0x72c> || nop
    69d8:	ad 4f 04 ac 	st fp,@(1196,sp)
    69dc:	6d 00 f0 00 	ldi fp,#0 || nop
    69e0:	a5 cf 04 ac 	ld r5,@(1196,sp)
    69e4:	a5 4f 04 b4 	st r5,@(1204,sp)
    69e8:	05 4d 7d 02 	cmp r5,fp -> bnc 69f0 <_vfiprintf_r+0x73c>
    69ec:	ad 4f 04 b4 	st fp,@(1204,sp)
    69f0:	a7 8f 04 9e 	ldb r7,@(1182,sp)
    69f4:	b0 87 00 04 	beqz r7,6a04 <_vfiprintf_r+0x750>
    69f8:	a7 cf 04 b4 	ld r7,@(1204,sp)
    69fc:	47 01 f0 00 	addi r7,#1 || nop
    6a00:	a7 4f 04 b4 	st r7,@(1204,sp)
    6a04:	65 02 05 cc 	ldi r5,#2 -> and r5,r12
    6a08:	a5 4f 04 bc 	st r5,@(1212,sp)
    6a0c:	b0 85 00 04 	beqz r5,6a1c <_vfiprintf_r+0x768>
    6a10:	a7 cf 04 b4 	ld r7,@(1204,sp)
    6a14:	47 02 f0 00 	addi r7,#2 || nop
    6a18:	a7 4f 04 b4 	st r7,@(1204,sp)
    6a1c:	85 cc 00 84 	and3 r5,r12,#0x84
    6a20:	a5 4f 04 c0 	st r5,@(1216,sp)
    6a24:	b0 95 00 2e 	bnez r5,6adc <_vfiprintf_r+0x828>
    6a28:	a7 cf 04 b0 	ld r7,@(1200,sp)
    6a2c:	a5 cf 04 b4 	ld r5,@(1204,sp)
    6a30:	07 25 f0 00 	sub r7,r5 || nop
    6a34:	b0 d7 00 16 	bgtz r7,6a8c <_vfiprintf_r+0x7d8>
    6a38:	7f 29 f0 00 	bra 6adc <_vfiprintf_r+0x828> || nop
    6a3c:	a0 44 00 04 	st r0,@(4,r4)
    6a40:	4e 10 f0 00 	addi lr,#16 || nop
    6a44:	ae 4f 04 98 	st lr,@(1176,sp)
    6a48:	42 01 f0 00 	addi r2,#1 || nop
    6a4c:	a2 4f 04 94 	st r2,@(1172,sp)
    6a50:	6e 07 23 44 	ldi lr,#7 -> st r3,@r4
    6a54:	0e 42 7c 03 	cmp lr,r2 -> bc 6a60 <_vfiprintf_r+0x7ac>
    6a58:	44 08 f0 00 	addi r4,#8 || nop
    6a5c:	7f 0a f0 00 	bra 6a84 <_vfiprintf_r+0x7d0> || nop
    6a60:	82 af 04 90 	add3 r2,sp,#1168
    6a64:	a3 4f 04 c4 	st r3,@(1220,sp)
    6a68:	a7 4f 04 c8 	st r7,@(1224,sp)
    6a6c:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6a70:	fe ff fd de 	bl 61e8 <__sprint_r>
    6a74:	a3 cf 04 c4 	ld r3,@(1220,sp)
    6a78:	a7 cf 04 c8 	ld r7,@(1224,sp)
    6a7c:	b0 90 00 ee 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6a80:	14 8f f0 00 	mv r4,sp || nop
    6a84:	47 f0 f0 00 	addi r7,#-16 || nop
    6a88:	7f 02 f0 00 	bra 6a90 <_vfiprintf_r+0x7dc> || nop
    6a8c:	e3 00 93 48 	ld24 r3,9348 <blanks.3948>
    6a90:	ae cf 04 98 	ld lr,@(1176,sp)
    6a94:	60 10 f0 00 	ldi r0,#16 || nop
    6a98:	a2 cf 04 94 	ld r2,@(1172,sp)
    6a9c:	00 47 7c e8 	cmp r0,r7 -> bc 6a3c <_vfiprintf_r+0x788>
    6aa0:	a7 44 00 04 	st r7,@(4,r4)
    6aa4:	e3 00 93 48 	ld24 r3,9348 <blanks.3948>
    6aa8:	07 ae f0 00 	add r7,lr || nop
    6aac:	a7 4f 04 98 	st r7,@(1176,sp)
    6ab0:	87 a2 00 01 	add3 r7,r2,#1
    6ab4:	a7 4f 04 94 	st r7,@(1172,sp)
    6ab8:	62 07 23 44 	ldi r2,#7 -> st r3,@r4
    6abc:	02 47 7c 03 	cmp r2,r7 -> bc 6ac8 <_vfiprintf_r+0x814>
    6ac0:	44 08 f0 00 	addi r4,#8 || nop
    6ac4:	7f 06 f0 00 	bra 6adc <_vfiprintf_r+0x828> || nop
    6ac8:	82 af 04 90 	add3 r2,sp,#1168
    6acc:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6ad0:	fe ff fd c6 	bl 61e8 <__sprint_r>
    6ad4:	b0 90 00 d8 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6ad8:	14 8f f0 00 	mv r4,sp || nop
    6adc:	a7 8f 04 9e 	ldb r7,@(1182,sp)
    6ae0:	b0 87 00 12 	beqz r7,6b28 <_vfiprintf_r+0x874>
    6ae4:	87 af 04 9e 	add3 r7,sp,#1182
    6ae8:	27 44 67 01 	st r7,@r4 -> ldi r7,#1
    6aec:	a7 44 00 04 	st r7,@(4,r4)
    6af0:	a7 cf 04 98 	ld r7,@(1176,sp)
    6af4:	62 07 47 01 	ldi r2,#7 -> addi r7,#1
    6af8:	a7 4f 04 98 	st r7,@(1176,sp)
    6afc:	a7 cf 04 94 	ld r7,@(1172,sp)
    6b00:	47 01 f0 00 	addi r7,#1 || nop
    6b04:	a7 4f 04 94 	st r7,@(1172,sp)
    6b08:	02 47 7c 03 	cmp r2,r7 -> bc 6b14 <_vfiprintf_r+0x860>
    6b0c:	44 08 f0 00 	addi r4,#8 || nop
    6b10:	7f 06 f0 00 	bra 6b28 <_vfiprintf_r+0x874> || nop
    6b14:	82 af 04 90 	add3 r2,sp,#1168
    6b18:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6b1c:	fe ff fd b3 	bl 61e8 <__sprint_r>
    6b20:	b0 90 00 c5 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6b24:	14 8f f0 00 	mv r4,sp || nop
    6b28:	a7 cf 04 bc 	ld r7,@(1212,sp)
    6b2c:	b0 87 00 12 	beqz r7,6b74 <_vfiprintf_r+0x8c0>
    6b30:	87 af 04 9c 	add3 r7,sp,#1180
    6b34:	27 44 67 02 	st r7,@r4 -> ldi r7,#2
    6b38:	a7 44 00 04 	st r7,@(4,r4)
    6b3c:	a7 cf 04 98 	ld r7,@(1176,sp)
    6b40:	62 07 47 02 	ldi r2,#7 -> addi r7,#2
    6b44:	a7 4f 04 98 	st r7,@(1176,sp)
    6b48:	a7 cf 04 94 	ld r7,@(1172,sp)
    6b4c:	47 01 f0 00 	addi r7,#1 || nop
    6b50:	a7 4f 04 94 	st r7,@(1172,sp)
    6b54:	02 47 7c 03 	cmp r2,r7 -> bc 6b60 <_vfiprintf_r+0x8ac>
    6b58:	44 08 f0 00 	addi r4,#8 || nop
    6b5c:	7f 06 f0 00 	bra 6b74 <_vfiprintf_r+0x8c0> || nop
    6b60:	82 af 04 90 	add3 r2,sp,#1168
    6b64:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6b68:	fe ff fd a0 	bl 61e8 <__sprint_r>
    6b6c:	b0 90 00 b2 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6b70:	14 8f f0 00 	mv r4,sp || nop
    6b74:	a7 cf 04 c0 	ld r7,@(1216,sp)
    6b78:	47 80 f0 00 	addi r7,#-128 || nop
    6b7c:	b0 97 00 2e 	bnez r7,6c34 <_vfiprintf_r+0x980>
    6b80:	a7 cf 04 b0 	ld r7,@(1200,sp)
    6b84:	a5 cf 04 b4 	ld r5,@(1204,sp)
    6b88:	07 25 f0 00 	sub r7,r5 || nop
    6b8c:	b0 d7 00 16 	bgtz r7,6be4 <_vfiprintf_r+0x930>
    6b90:	7f 29 f0 00 	bra 6c34 <_vfiprintf_r+0x980> || nop
    6b94:	a0 44 00 04 	st r0,@(4,r4)
    6b98:	4e 10 f0 00 	addi lr,#16 || nop
    6b9c:	ae 4f 04 98 	st lr,@(1176,sp)
    6ba0:	42 01 f0 00 	addi r2,#1 || nop
    6ba4:	a2 4f 04 94 	st r2,@(1172,sp)
    6ba8:	6e 07 23 44 	ldi lr,#7 -> st r3,@r4
    6bac:	0e 42 7c 03 	cmp lr,r2 -> bc 6bb8 <_vfiprintf_r+0x904>
    6bb0:	44 08 f0 00 	addi r4,#8 || nop
    6bb4:	7f 0a f0 00 	bra 6bdc <_vfiprintf_r+0x928> || nop
    6bb8:	82 af 04 90 	add3 r2,sp,#1168
    6bbc:	a3 4f 04 c4 	st r3,@(1220,sp)
    6bc0:	a7 4f 04 c8 	st r7,@(1224,sp)
    6bc4:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6bc8:	fe ff fd 88 	bl 61e8 <__sprint_r>
    6bcc:	a3 cf 04 c4 	ld r3,@(1220,sp)
    6bd0:	a7 cf 04 c8 	ld r7,@(1224,sp)
    6bd4:	b0 90 00 98 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6bd8:	14 8f f0 00 	mv r4,sp || nop
    6bdc:	47 f0 f0 00 	addi r7,#-16 || nop
    6be0:	7f 02 f0 00 	bra 6be8 <_vfiprintf_r+0x934> || nop
    6be4:	e3 00 93 58 	ld24 r3,9358 <zeroes.3949>
    6be8:	ae cf 04 98 	ld lr,@(1176,sp)
    6bec:	60 10 f0 00 	ldi r0,#16 || nop
    6bf0:	a2 cf 04 94 	ld r2,@(1172,sp)
    6bf4:	00 47 7c e8 	cmp r0,r7 -> bc 6b94 <_vfiprintf_r+0x8e0>
    6bf8:	a7 44 00 04 	st r7,@(4,r4)
    6bfc:	e3 00 93 58 	ld24 r3,9358 <zeroes.3949>
    6c00:	07 ae f0 00 	add r7,lr || nop
    6c04:	a7 4f 04 98 	st r7,@(1176,sp)
    6c08:	87 a2 00 01 	add3 r7,r2,#1
    6c0c:	a7 4f 04 94 	st r7,@(1172,sp)
    6c10:	62 07 23 44 	ldi r2,#7 -> st r3,@r4
    6c14:	02 47 7c 03 	cmp r2,r7 -> bc 6c20 <_vfiprintf_r+0x96c>
    6c18:	44 08 f0 00 	addi r4,#8 || nop
    6c1c:	7f 06 f0 00 	bra 6c34 <_vfiprintf_r+0x980> || nop
    6c20:	82 af 04 90 	add3 r2,sp,#1168
    6c24:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6c28:	fe ff fd 70 	bl 61e8 <__sprint_r>
    6c2c:	b0 90 00 82 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6c30:	14 8f f0 00 	mv r4,sp || nop
    6c34:	a7 cf 04 ac 	ld r7,@(1196,sp)
    6c38:	0d 27 f0 00 	sub fp,r7 || nop
    6c3c:	b0 dd 00 14 	bgtz fp,6c8c <_vfiprintf_r+0x9d8>
    6c40:	7f 28 f0 00 	bra 6ce0 <_vfiprintf_r+0xa2c> || nop
    6c44:	ae 44 00 04 	st lr,@(4,r4)
    6c48:	43 10 f0 00 	addi r3,#16 || nop
    6c4c:	a3 4f 04 98 	st r3,@(1176,sp)
    6c50:	42 01 f0 00 	addi r2,#1 || nop
    6c54:	a2 4f 04 94 	st r2,@(1172,sp)
    6c58:	63 07 27 44 	ldi r3,#7 -> st r7,@r4
    6c5c:	03 42 7c 03 	cmp r3,r2 -> bc 6c68 <_vfiprintf_r+0x9b4>
    6c60:	44 08 f0 00 	addi r4,#8 || nop
    6c64:	7f 08 f0 00 	bra 6c84 <_vfiprintf_r+0x9d0> || nop
    6c68:	82 af 04 90 	add3 r2,sp,#1168
    6c6c:	a7 4f 04 c8 	st r7,@(1224,sp)
    6c70:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6c74:	fe ff fd 5d 	bl 61e8 <__sprint_r>
    6c78:	a7 cf 04 c8 	ld r7,@(1224,sp)
    6c7c:	b0 90 00 6e 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6c80:	14 8f f0 00 	mv r4,sp || nop
    6c84:	4d f0 f0 00 	addi fp,#-16 || nop
    6c88:	7f 02 f0 00 	bra 6c90 <_vfiprintf_r+0x9dc> || nop
    6c8c:	e7 00 93 58 	ld24 r7,9358 <zeroes.3949>
    6c90:	a3 cf 04 98 	ld r3,@(1176,sp)
    6c94:	6e 10 f0 00 	ldi lr,#16 || nop
    6c98:	a2 cf 04 94 	ld r2,@(1172,sp)
    6c9c:	0e 4d 7c ea 	cmp lr,fp -> bc 6c44 <_vfiprintf_r+0x990>
    6ca0:	e7 00 93 58 	ld24 r7,9358 <zeroes.3949>
    6ca4:	ad 44 00 04 	st fp,@(4,r4)
    6ca8:	27 44 f0 00 	st r7,@r4 || nop
    6cac:	87 a2 00 01 	add3 r7,r2,#1
    6cb0:	a7 4f 04 94 	st r7,@(1172,sp)
    6cb4:	0d a3 f0 00 	add fp,r3 || nop
    6cb8:	ad 4f 04 98 	st fp,@(1176,sp)
    6cbc:	62 07 02 47 	ldi r2,#7 -> cmp r2,r7
    6cc0:	7c 03 f0 00 	bc 6ccc <_vfiprintf_r+0xa18> || nop
    6cc4:	44 08 f0 00 	addi r4,#8 || nop
    6cc8:	7f 06 f0 00 	bra 6ce0 <_vfiprintf_r+0xa2c> || nop
    6ccc:	82 af 04 90 	add3 r2,sp,#1168
    6cd0:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6cd4:	fe ff fd 45 	bl 61e8 <__sprint_r>
    6cd8:	b0 90 00 57 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6cdc:	14 8f f0 00 	mv r4,sp || nop
    6ce0:	a6 cf 04 98 	ld r6,@(1176,sp)
    6ce4:	2b 44 f0 00 	st r11,@r4 || nop
    6ce8:	ab cf 04 ac 	ld r11,@(1196,sp)
    6cec:	67 07 f0 00 	ldi r7,#7 || nop
    6cf0:	ab 44 00 04 	st r11,@(4,r4)
    6cf4:	06 ab f0 00 	add r6,r11 || nop
    6cf8:	a6 4f 04 98 	st r6,@(1176,sp)
    6cfc:	a6 cf 04 94 	ld r6,@(1172,sp)
    6d00:	46 01 f0 00 	addi r6,#1 || nop
    6d04:	a6 4f 04 94 	st r6,@(1172,sp)
    6d08:	07 46 7c 03 	cmp r7,r6 -> bc 6d14 <_vfiprintf_r+0xa60>
    6d0c:	8d a4 00 08 	add3 fp,r4,#8
    6d10:	7f 06 f0 00 	bra 6d28 <_vfiprintf_r+0xa74> || nop
    6d14:	82 af 04 90 	add3 r2,sp,#1168
    6d18:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6d1c:	fe ff fd 33 	bl 61e8 <__sprint_r>
    6d20:	b0 90 00 45 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6d24:	1d 8f f0 00 	mv fp,sp || nop
    6d28:	64 04 04 cc 	ldi r4,#4 -> and r4,r12
    6d2c:	b0 94 00 0b 	bnez r4,6d58 <_vfiprintf_r+0xaa4>
    6d30:	ac cf 04 b4 	ld r12,@(1204,sp)
    6d34:	a4 cf 04 b0 	ld r4,@(1200,sp)
    6d38:	0c 44 7d 02 	cmp r12,r4 -> bnc 6d40 <_vfiprintf_r+0xa8c>
    6d3c:	1c 84 f0 00 	mv r12,r4 || nop
    6d40:	a5 cf 04 a8 	ld r5,@(1192,sp)
    6d44:	a4 cf 04 98 	ld r4,@(1176,sp)
    6d48:	05 ac f0 00 	add r5,r12 || nop
    6d4c:	a5 4f 04 a8 	st r5,@(1192,sp)
    6d50:	b0 84 00 2b 	beqz r4,6dfc <_vfiprintf_r+0xb48>
    6d54:	7f 2e f0 00 	bra 6e0c <_vfiprintf_r+0xb58> || nop
    6d58:	ab cf 04 b0 	ld r11,@(1200,sp)
    6d5c:	a7 cf 04 b4 	ld r7,@(1204,sp)
    6d60:	0b 27 f0 00 	sub r11,r7 || nop
    6d64:	b0 db 00 14 	bgtz r11,6db4 <_vfiprintf_r+0xb00>
    6d68:	7f f2 f0 00 	bra 6d30 <_vfiprintf_r+0xa7c> || nop
    6d6c:	a7 4d 00 04 	st r7,@(4,fp)
    6d70:	46 10 f0 00 	addi r6,#16 || nop
    6d74:	a6 4f 04 98 	st r6,@(1176,sp)
    6d78:	44 01 f0 00 	addi r4,#1 || nop
    6d7c:	a4 4f 04 94 	st r4,@(1172,sp)
    6d80:	66 07 25 4d 	ldi r6,#7 -> st r5,@fp
    6d84:	06 44 7c 03 	cmp r6,r4 -> bc 6d90 <_vfiprintf_r+0xadc>
    6d88:	4d 08 f0 00 	addi fp,#8 || nop
    6d8c:	7f 08 f0 00 	bra 6dac <_vfiprintf_r+0xaf8> || nop
    6d90:	82 af 04 90 	add3 r2,sp,#1168
    6d94:	a5 4f 04 c4 	st r5,@(1220,sp)
    6d98:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6d9c:	fe ff fd 13 	bl 61e8 <__sprint_r>
    6da0:	a5 cf 04 c4 	ld r5,@(1220,sp)
    6da4:	b0 90 00 24 	bnez r0,6e34 <_vfiprintf_r+0xb80>
    6da8:	1d 8f f0 00 	mv fp,sp || nop
    6dac:	4b f0 f0 00 	addi r11,#-16 || nop
    6db0:	7f 02 f0 00 	bra 6db8 <_vfiprintf_r+0xb04> || nop
    6db4:	e5 00 93 48 	ld24 r5,9348 <blanks.3948>
    6db8:	a6 cf 04 98 	ld r6,@(1176,sp)
    6dbc:	67 10 f0 00 	ldi r7,#16 || nop
    6dc0:	a4 cf 04 94 	ld r4,@(1172,sp)
    6dc4:	07 4b 7c ea 	cmp r7,r11 -> bc 6d6c <_vfiprintf_r+0xab8>
    6dc8:	e5 00 93 48 	ld24 r5,9348 <blanks.3948>
    6dcc:	ab 4d 00 04 	st r11,@(4,fp)
    6dd0:	44 01 f0 00 	addi r4,#1 || nop
    6dd4:	a4 4f 04 94 	st r4,@(1172,sp)
    6dd8:	25 4d 0b a6 	st r5,@fp -> add r11,r6
    6ddc:	ab 4f 04 98 	st r11,@(1176,sp)
    6de0:	65 07 05 44 	ldi r5,#7 -> cmp r5,r4
    6de4:	7d d3 f0 00 	bnc 6d30 <_vfiprintf_r+0xa7c> || nop
    6de8:	82 af 04 90 	add3 r2,sp,#1168
    6dec:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6df0:	fe ff fc fe 	bl 61e8 <__sprint_r>
    6df4:	b0 80 ff cf 	beqz r0,6d30 <_vfiprintf_r+0xa7c>
    6df8:	7f 0f f0 00 	bra 6e34 <_vfiprintf_r+0xb80> || nop
    6dfc:	64 00 f0 00 	ldi r4,#0 || nop
    6e00:	a4 4f 04 94 	st r4,@(1172,sp)
    6e04:	14 8f f0 00 	mv r4,sp || nop
    6e08:	ff ff fd 82 	bra 6410 <_vfiprintf_r+0x15c>
    6e0c:	82 af 04 90 	add3 r2,sp,#1168
    6e10:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6e14:	fe ff fc f5 	bl 61e8 <__sprint_r>
    6e18:	b0 80 ff f9 	beqz r0,6dfc <_vfiprintf_r+0xb48>
    6e1c:	7f 06 f0 00 	bra 6e34 <_vfiprintf_r+0xb80> || nop
    6e20:	a4 cf 04 98 	ld r4,@(1176,sp)
    6e24:	b0 84 00 04 	beqz r4,6e34 <_vfiprintf_r+0xb80>
    6e28:	82 af 04 90 	add3 r2,sp,#1168
    6e2c:	10 8a 11 89 	mv r0,r10 -> mv r1,r9
    6e30:	fe ff fc ee 	bl 61e8 <__sprint_r>
    6e34:	a5 b9 00 0c 	lduh r5,@(12,r9)
    6e38:	64 40 04 c5 	ldi r4,#64 -> and r4,r5
    6e3c:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    6e40:	b0 94 fd 40 	bnez r4,6340 <_vfiprintf_r+0x8c>
    6e44:	a0 cf 04 a8 	ld r0,@(1192,sp)
    6e48:	8f af 04 cc 	add3 sp,sp,#1228
    6e4c:	2e ef 2c ef 	pop lr -> pop r12
    6e50:	2b ef 2a ef 	pop r11 -> pop r10
    6e54:	29 ef f0 00 	pop r9 || nop
    6e58:	28 ef f0 00 	pop r8 || nop
    6e5c:	2d ef 1f ce 	pop fp -> jmp lr

00006e60 <vfiprintf>:
    6e60:	e6 00 a0 ac 	ld24 r6,a0ac <_impure_ptr>
    6e64:	15 80 f0 00 	mv r5,r0 || nop
    6e68:	20 c6 f0 00 	ld r0,@r6 || nop
    6e6c:	14 81 2e 7f 	mv r4,r1 -> push lr
    6e70:	13 82 f0 00 	mv r3,r2 || nop
    6e74:	11 85 f0 00 	mv r1,r5 || nop
    6e78:	12 84 f0 00 	mv r2,r4 || nop
    6e7c:	fe ff fd 0e 	bl 62b4 <_vfiprintf_r>
    6e80:	2e ef 1f ce 	pop lr -> jmp lr

00006e84 <_write_r>:
    6e84:	28 7f f0 00 	push r8 || nop
    6e88:	e8 00 a1 00 	ld24 r8,a100 <errno>
    6e8c:	29 7f f0 00 	push r9 || nop
    6e90:	64 00 f0 00 	ldi r4,#0 || nop
    6e94:	2e 7f f0 00 	push lr || nop
    6e98:	19 80 f0 00 	mv r9,r0 || nop
    6e9c:	10 81 f0 00 	mv r0,r1 || nop
    6ea0:	11 82 f0 00 	mv r1,r2 || nop
    6ea4:	12 83 f0 00 	mv r2,r3 || nop
    6ea8:	24 48 f0 00 	st r4,@r8 || nop
    6eac:	fe ff e9 9f 	bl 1528 <_write>
    6eb0:	84 a0 00 01 	add3 r4,r0,#1
    6eb4:	b0 94 00 04 	bnez r4,6ec4 <_write_r+0x40>
    6eb8:	24 c8 f0 00 	ld r4,@r8 || nop
    6ebc:	b0 84 00 02 	beqz r4,6ec4 <_write_r+0x40>
    6ec0:	24 49 f0 00 	st r4,@r9 || nop
    6ec4:	2e ef 29 ef 	pop lr -> pop r9
    6ec8:	28 ef 1f ce 	pop r8 -> jmp lr

00006ecc <_calloc_r>:
    6ecc:	28 7f 2e 7f 	push r8 -> push lr
    6ed0:	11 62 f0 00 	mul r1,r2 || nop
    6ed4:	fe ff f7 86 	bl 4cec <_malloc_r>
    6ed8:	18 80 f0 00 	mv r8,r0 || nop
    6edc:	b0 80 00 20 	beqz r0,6f5c <_calloc_r+0x90>
    6ee0:	a4 c0 ff fc 	ld r4,@(-4,r0)
    6ee4:	65 fc 04 c5 	ldi r5,#-4 -> and r4,r5
    6ee8:	82 a4 ff fc 	add3 r2,r4,#-4
    6eec:	65 24 05 52 	ldi r5,#36 -> cmpu r5,r2
    6ef0:	7c 19 f0 00 	bc 6f54 <_calloc_r+0x88> || nop
    6ef4:	65 13 05 52 	ldi r5,#19 -> cmpu r5,r2
    6ef8:	7d 11 f0 00 	bnc 6f3c <_calloc_r+0x70> || nop
    6efc:	65 00 f0 00 	ldi r5,#0 || nop
    6f00:	a5 40 00 04 	st r5,@(4,r0)
    6f04:	66 1b 25 40 	ldi r6,#27 -> st r5,@r0
    6f08:	06 52 7c 03 	cmpu r6,r2 -> bc 6f14 <_calloc_r+0x48>
    6f0c:	84 a0 00 08 	add3 r4,r0,#8
    6f10:	7f 0c f0 00 	bra 6f40 <_calloc_r+0x74> || nop
    6f14:	a5 40 00 08 	st r5,@(8,r0)
    6f18:	a5 40 00 0c 	st r5,@(12,r0)
    6f1c:	44 d8 f0 00 	addi r4,#-40 || nop
    6f20:	b0 84 00 03 	beqz r4,6f2c <_calloc_r+0x60>
    6f24:	84 a0 00 10 	add3 r4,r0,#16
    6f28:	7f 06 f0 00 	bra 6f40 <_calloc_r+0x74> || nop
    6f2c:	a4 40 00 10 	st r4,@(16,r0)
    6f30:	a4 40 00 14 	st r4,@(20,r0)
    6f34:	84 a0 00 18 	add3 r4,r0,#24
    6f38:	7f 02 f0 00 	bra 6f40 <_calloc_r+0x74> || nop
    6f3c:	14 80 f0 00 	mv r4,r0 || nop
    6f40:	65 00 f0 00 	ldi r5,#0 || nop
    6f44:	a5 44 00 04 	st r5,@(4,r4)
    6f48:	a5 44 00 08 	st r5,@(8,r4)
    6f4c:	25 44 f0 00 	st r5,@r4 || nop
    6f50:	7f 03 f0 00 	bra 6f5c <_calloc_r+0x90> || nop
    6f54:	61 00 f0 00 	ldi r1,#0 || nop
    6f58:	fe ff e9 a3 	bl 15e4 <memset>
    6f5c:	2e ef 10 88 	pop lr -> mv r0,r8
    6f60:	28 ef f0 00 	pop r8 || nop
    6f64:	1f ce f0 00 	jmp lr || nop

00006f68 <_close_r>:
    6f68:	28 7f f0 00 	push r8 || nop
    6f6c:	e8 00 a1 00 	ld24 r8,a100 <errno>
    6f70:	29 7f f0 00 	push r9 || nop
    6f74:	64 00 f0 00 	ldi r4,#0 || nop
    6f78:	2e 7f f0 00 	push lr || nop
    6f7c:	19 80 f0 00 	mv r9,r0 || nop
    6f80:	10 81 f0 00 	mv r0,r1 || nop
    6f84:	24 48 f0 00 	st r4,@r8 || nop
    6f88:	fe ff e9 6e 	bl 1540 <_close>
    6f8c:	84 a0 00 01 	add3 r4,r0,#1
    6f90:	b0 94 00 04 	bnez r4,6fa0 <_close_r+0x38>
    6f94:	24 c8 f0 00 	ld r4,@r8 || nop
    6f98:	b0 84 00 02 	beqz r4,6fa0 <_close_r+0x38>
    6f9c:	24 49 f0 00 	st r4,@r9 || nop
    6fa0:	2e ef 29 ef 	pop lr -> pop r9
    6fa4:	28 ef 1f ce 	pop r8 -> jmp lr

00006fa8 <_fclose_r>:
    6fa8:	28 7f 29 7f 	push r8 -> push r9
    6fac:	2a 7f 2e 7f 	push r10 -> push lr
    6fb0:	19 80 18 81 	mv r9,r0 -> mv r8,r1
    6fb4:	b0 91 00 02 	bnez r1,6fbc <_fclose_r+0x14>
    6fb8:	6a 00 7f 2a 	ldi r10,#0 -> bra 7060 <_fclose_r+0xb8>
    6fbc:	b0 80 00 04 	beqz r0,6fcc <_fclose_r+0x24>
    6fc0:	a4 c0 00 38 	ld r4,@(56,r0)
    6fc4:	b0 94 00 02 	bnez r4,6fcc <_fclose_r+0x24>
    6fc8:	fe ff f5 71 	bl 458c <__sinit>
    6fcc:	a4 a8 00 0c 	ldh r4,@(12,r8)
    6fd0:	b0 84 ff fa 	beqz r4,6fb8 <_fclose_r+0x10>
    6fd4:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    6fd8:	fe ff f5 15 	bl 442c <_fflush_r>
    6fdc:	a4 c8 00 2c 	ld r4,@(44,r8)
    6fe0:	1a 80 f0 00 	mv r10,r0 || nop
    6fe4:	b0 84 00 06 	beqz r4,6ffc <_fclose_r+0x54>
    6fe8:	a1 c8 00 1c 	ld r1,@(28,r8)
    6fec:	10 89 f0 00 	mv r0,r9 || nop
    6ff0:	1e c4 f0 00 	jl r4 || nop
    6ff4:	b0 b0 00 02 	bgez r0,6ffc <_fclose_r+0x54>
    6ff8:	6a ff f0 00 	ldi r10,#-1 || nop
    6ffc:	a4 b8 00 0c 	lduh r4,@(12,r8)
    7000:	84 c4 00 80 	and3 r4,r4,#0x80
    7004:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    7008:	b0 84 00 04 	beqz r4,7018 <_fclose_r+0x70>
    700c:	a1 c8 00 10 	ld r1,@(16,r8)
    7010:	10 89 f0 00 	mv r0,r9 || nop
    7014:	fe ff f5 f3 	bl 47e0 <_free_r>
    7018:	a1 c8 00 30 	ld r1,@(48,r8)
    701c:	b0 81 00 07 	beqz r1,7038 <_fclose_r+0x90>
    7020:	84 a8 00 40 	add3 r4,r8,#64
    7024:	b1 04 00 03 	beq r1,r4,7030 <_fclose_r+0x88>
    7028:	10 89 f0 00 	mv r0,r9 || nop
    702c:	fe ff f5 ed 	bl 47e0 <_free_r>
    7030:	64 00 f0 00 	ldi r4,#0 || nop
    7034:	a4 48 00 30 	st r4,@(48,r8)
    7038:	a1 c8 00 44 	ld r1,@(68,r8)
    703c:	b0 81 00 05 	beqz r1,7050 <_fclose_r+0xa8>
    7040:	10 89 f0 00 	mv r0,r9 || nop
    7044:	fe ff f5 e7 	bl 47e0 <_free_r>
    7048:	64 00 f0 00 	ldi r4,#0 || nop
    704c:	a4 48 00 44 	st r4,@(68,r8)
    7050:	fe ff f5 9c 	bl 46c0 <__sfp_lock_acquire>
    7054:	64 00 f0 00 	ldi r4,#0 || nop
    7058:	a4 28 00 0c 	sth r4,@(12,r8)
    705c:	fe ff f5 9a 	bl 46c4 <__sfp_lock_release>
    7060:	2e ef 10 8a 	pop lr -> mv r0,r10
    7064:	2a ef 29 ef 	pop r10 -> pop r9
    7068:	28 ef f0 00 	pop r8 || nop
    706c:	1f ce f0 00 	jmp lr || nop

00007070 <fclose>:
    7070:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    7074:	11 80 f0 00 	mv r1,r0 || nop
    7078:	20 c4 f0 00 	ld r0,@r4 || nop
    707c:	2e 7f f0 00 	push lr || nop
    7080:	fe ff ff ca 	bl 6fa8 <_fclose_r>
    7084:	2e ef 1f ce 	pop lr -> jmp lr

00007088 <_fputwc_r>:
    7088:	2d 7f 28 7f 	push fp -> push r8
    708c:	29 7f 2a 7f 	push r9 -> push r10
    7090:	2b 7f 2e 7f 	push r11 -> push lr
    7094:	a4 a2 00 0c 	ldh r4,@(12,r2)
    7098:	89 c1 ff ff 	and3 r9,r1,#0xffff
    709c:	4f fc f0 00 	addi sp,#-4 || nop
    70a0:	85 c4 20 00 	and3 r5,r4,#0x2000
    70a4:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    70a8:	1a 80 18 82 	mv r10,r0 -> mv r8,r2
    70ac:	b0 95 00 06 	bnez r5,70c4 <_fputwc_r+0x3c>
    70b0:	84 e4 20 00 	or3 r4,r4,#0x2000
    70b4:	a4 22 00 0c 	sth r4,@(12,r2)
    70b8:	a4 c2 00 64 	ld r4,@(100,r2)
    70bc:	84 e4 20 00 	or3 r4,r4,#0x2000
    70c0:	a4 42 00 64 	st r4,@(100,r2)
    70c4:	fe ff f6 a8 	bl 4b64 <__locale_mb_cur_max>
    70c8:	40 ff f0 00 	addi r0,#-1 || nop
    70cc:	b0 90 00 06 	bnez r0,70e4 <_fputwc_r+0x5c>
    70d0:	b0 89 00 05 	beqz r9,70e4 <_fputwc_r+0x5c>
    70d4:	94 f0 00 ff 	ldi r4,#255
    70d8:	04 59 7c 03 	cmpu r4,r9 -> bc 70e4 <_fputwc_r+0x5c>
    70dc:	29 0f f0 00 	stb r9,@sp || nop
    70e0:	60 01 7f 0b 	ldi r0,#1 -> bra 710c <_fputwc_r+0x84>
    70e4:	83 a8 00 5c 	add3 r3,r8,#92
    70e8:	10 8a 11 8f 	mv r0,r10 -> mv r1,sp
    70ec:	12 89 f0 00 	mv r2,r9 || nop
    70f0:	fe 00 03 65 	bl 7e84 <_wcrtomb_r>
    70f4:	84 a0 00 01 	add3 r4,r0,#1
    70f8:	b0 94 00 05 	bnez r4,710c <_fputwc_r+0x84>
    70fc:	a5 b8 00 0c 	lduh r5,@(12,r8)
    7100:	64 40 04 e5 	ldi r4,#64 -> or r4,r5
    7104:	a4 28 00 0c 	sth r4,@(12,r8)
    7108:	7f 1f f0 00 	bra 7184 <_fputwc_r+0xfc> || nop
    710c:	1b 8f 1d 8f 	mv r11,sp -> mv fp,sp
    7110:	0b a0 7f 1b 	add r11,r0 -> bra 717c <_fputwc_r+0xf4>
    7114:	a4 c8 00 08 	ld r4,@(8,r8)
    7118:	44 ff f0 00 	addi r4,#-1 || nop
    711c:	a4 48 00 08 	st r4,@(8,r8)
    7120:	b0 b4 00 11 	bgez r4,7164 <_fputwc_r+0xdc>
    7124:	a5 c8 00 18 	ld r5,@(24,r8)
    7128:	04 45 7c 09 	cmp r4,r5 -> bc 714c <_fputwc_r+0xc4>
    712c:	24 c8 25 9d 	ld r4,@r8 -> ldub r5,@fp
    7130:	25 04 24 c8 	stb r5,@r4 -> ld r4,@r8
    7134:	25 94 45 f6 	ldub r5,@r4 -> addi r5,#-10
    7138:	b0 85 00 03 	beqz r5,7144 <_fputwc_r+0xbc>
    713c:	44 01 60 00 	addi r4,#1 -> ldi r0,#0
    7140:	24 48 7f 0d 	st r4,@r8 -> bra 7174 <_fputwc_r+0xec>
    7144:	10 8a 61 0a 	mv r0,r10 -> ldi r1,#10
    7148:	7f 02 f0 00 	bra 7150 <_fputwc_r+0xc8> || nop
    714c:	21 9d 10 8a 	ldub r1,@fp -> mv r0,r10
    7150:	12 88 f0 00 	mv r2,r8 || nop
    7154:	fe 00 03 07 	bl 7d70 <__swbuf_r>
    7158:	14 80 44 01 	mv r4,r0 -> addi r4,#1
    715c:	80 54 00 01 	cmpui r4,#1
    7160:	10 91 7f 05 	mvfc r0,cbr -> bra 7174 <_fputwc_r+0xec>
    7164:	24 c8 25 9d 	ld r4,@r8 -> ldub r5,@fp
    7168:	25 04 24 c8 	stb r5,@r4 -> ld r4,@r8
    716c:	44 01 24 48 	addi r4,#1 -> st r4,@r8
    7170:	7f 02 f0 00 	bra 7178 <_fputwc_r+0xf0> || nop
    7174:	b0 90 00 04 	bnez r0,7184 <_fputwc_r+0xfc>
    7178:	4d 01 f0 00 	addi fp,#1 || nop
    717c:	bd 1b ff e6 	bne fp,r11,7114 <_fputwc_r+0x8c>
    7180:	10 89 7f 02 	mv r0,r9 -> bra 7188 <_fputwc_r+0x100>
    7184:	60 ff f0 00 	ldi r0,#-1 || nop
    7188:	4f 04 2e ef 	addi sp,#4 -> pop lr
    718c:	2b ef 2a ef 	pop r11 -> pop r10
    7190:	29 ef f0 00 	pop r9 || nop
    7194:	28 ef f0 00 	pop r8 || nop
    7198:	2d ef 1f ce 	pop fp -> jmp lr

0000719c <fputwc>:
    719c:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    71a0:	28 7f 29 7f 	push r8 -> push r9
    71a4:	89 c0 ff ff 	and3 r9,r0,#0xffff
    71a8:	2a 7f 2e 7f 	push r10 -> push lr
    71ac:	20 c4 f0 00 	ld r0,@r4 || nop
    71b0:	18 81 1a 84 	mv r8,r1 -> mv r10,r4
    71b4:	b0 80 00 04 	beqz r0,71c4 <fputwc+0x28>
    71b8:	a4 c0 00 38 	ld r4,@(56,r0)
    71bc:	b0 94 00 02 	bnez r4,71c4 <fputwc+0x28>
    71c0:	fe ff f4 f3 	bl 458c <__sinit>
    71c4:	20 ca 11 89 	ld r0,@r10 -> mv r1,r9
    71c8:	12 88 f0 00 	mv r2,r8 || nop
    71cc:	fe ff ff af 	bl 7088 <_fputwc_r>
    71d0:	2e ef 2a ef 	pop lr -> pop r10
    71d4:	29 ef f0 00 	pop r9 || nop
    71d8:	28 ef f0 00 	pop r8 || nop
    71dc:	1f ce f0 00 	jmp lr || nop

000071e0 <_fstat_r>:
    71e0:	28 7f f0 00 	push r8 || nop
    71e4:	e8 00 a1 00 	ld24 r8,a100 <errno>
    71e8:	29 7f f0 00 	push r9 || nop
    71ec:	64 00 f0 00 	ldi r4,#0 || nop
    71f0:	2e 7f f0 00 	push lr || nop
    71f4:	19 80 f0 00 	mv r9,r0 || nop
    71f8:	10 81 f0 00 	mv r0,r1 || nop
    71fc:	11 82 f0 00 	mv r1,r2 || nop
    7200:	24 48 f0 00 	st r4,@r8 || nop
    7204:	fe ff e8 d2 	bl 154c <_fstat>
    7208:	84 a0 00 01 	add3 r4,r0,#1
    720c:	b0 94 00 04 	bnez r4,721c <_fstat_r+0x3c>
    7210:	24 c8 f0 00 	ld r4,@r8 || nop
    7214:	b0 84 00 02 	beqz r4,721c <_fstat_r+0x3c>
    7218:	24 49 f0 00 	st r4,@r9 || nop
    721c:	2e ef 29 ef 	pop lr -> pop r9
    7220:	28 ef 1f ce 	pop r8 -> jmp lr

00007224 <__sfvwrite_r>:
    7224:	2d 7f 28 7f 	push fp -> push r8
    7228:	29 7f 2a 7f 	push r9 -> push r10
    722c:	2b 7f 2c 7f 	push r11 -> push r12
    7230:	2e 7f f0 00 	push lr || nop
    7234:	a4 c2 00 08 	ld r4,@(8,r2)
    7238:	4f f0 f0 00 	addi sp,#-16 || nop
    723c:	1a 80 18 81 	mv r10,r0 -> mv r8,r1
    7240:	1b 82 f0 00 	mv r11,r2 || nop
    7244:	b0 94 00 03 	bnez r4,7250 <__sfvwrite_r+0x2c>
    7248:	60 00 f0 00 	ldi r0,#0 || nop
    724c:	ff 00 01 00 	bra 764c <__sfvwrite_r+0x428>
    7250:	a5 b1 00 0c 	lduh r5,@(12,r1)
    7254:	64 08 04 c5 	ldi r4,#8 -> and r4,r5
    7258:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    725c:	b0 84 00 0a 	beqz r4,7284 <__sfvwrite_r+0x60>
    7260:	a4 c1 00 10 	ld r4,@(16,r1)
    7264:	b0 84 00 08 	beqz r4,7284 <__sfvwrite_r+0x60>
    7268:	a5 a8 00 0c 	ldh r5,@(12,r8)
    726c:	64 02 f0 00 	ldi r4,#2 || nop
    7270:	29 cb f0 00 	ld r9,@r11 || nop
    7274:	04 c5 54 50 	and r4,r5 -> slli r4,#0x10
    7278:	54 30 f0 00 	srai r4,#0x10 || nop
    727c:	b0 94 00 0b 	bnez r4,72a8 <__sfvwrite_r+0x84>
    7280:	7f 1e f0 00 	bra 72f8 <__sfvwrite_r+0xd4> || nop
    7284:	10 8a f0 00 	mv r0,r10 || nop
    7288:	11 88 f0 00 	mv r1,r8 || nop
    728c:	fe ff ee ae 	bl 2d44 <__swsetup_r>
    7290:	b0 80 ff f6 	beqz r0,7268 <__sfvwrite_r+0x44>
    7294:	ff 00 00 ed 	bra 7648 <__sfvwrite_r+0x424>
    7298:	ac c9 00 04 	ld r12,@(4,r9)
    729c:	2d c9 f0 00 	ld fp,@r9 || nop
    72a0:	49 08 f0 00 	addi r9,#8 || nop
    72a4:	7f 03 f0 00 	bra 72b0 <__sfvwrite_r+0x8c> || nop
    72a8:	95 f0 04 00 	ldi r5,#1024
    72ac:	6d 00 6c 00 	ldi fp,#0 -> ldi r12,#0
    72b0:	b0 8c ff fa 	beqz r12,7298 <__sfvwrite_r+0x74>
    72b4:	a1 c8 00 1c 	ld r1,@(28,r8)
    72b8:	05 5c 13 8c 	cmpu r5,r12 -> mv r3,r12
    72bc:	7d 02 f0 00 	bnc 72c4 <__sfvwrite_r+0xa0> || nop
    72c0:	93 f0 04 00 	ldi r3,#1024
    72c4:	a4 c8 00 24 	ld r4,@(36,r8)
    72c8:	a5 4f 00 08 	st r5,@(8,sp)
    72cc:	10 8a 12 8d 	mv r0,r10 -> mv r2,fp
    72d0:	1e c4 f0 00 	jl r4 || nop
    72d4:	a5 cf 00 08 	ld r5,@(8,sp)
    72d8:	b0 c0 00 d9 	blez r0,763c <__sfvwrite_r+0x418>
    72dc:	a4 cb 00 08 	ld r4,@(8,r11)
    72e0:	0d a0 f0 00 	add fp,r0 || nop
    72e4:	0c 20 f0 00 	sub r12,r0 || nop
    72e8:	04 20 f0 00 	sub r4,r0 || nop
    72ec:	a4 4b 00 08 	st r4,@(8,r11)
    72f0:	b0 94 ff f0 	bnez r4,72b0 <__sfvwrite_r+0x8c>
    72f4:	7f d5 f0 00 	bra 7248 <__sfvwrite_r+0x24> || nop
    72f8:	64 01 04 c5 	ldi r4,#1 -> and r4,r5
    72fc:	b0 84 00 08 	beqz r4,731c <__sfvwrite_r+0xf8>
    7300:	65 00 67 00 	ldi r5,#0 -> ldi r7,#0
    7304:	6d 00 6c 00 	ldi fp,#0 -> ldi r12,#0
    7308:	ff 00 00 80 	bra 7508 <__sfvwrite_r+0x2e4>
    730c:	ac c9 00 04 	ld r12,@(4,r9)
    7310:	24 c9 49 08 	ld r4,@r9 -> addi r9,#8
    7314:	24 4f f0 00 	st r4,@sp || nop
    7318:	7f 03 f0 00 	bra 7324 <__sfvwrite_r+0x100> || nop
    731c:	64 00 24 4f 	ldi r4,#0 -> st r4,@sp
    7320:	6c 00 f0 00 	ldi r12,#0 || nop
    7324:	b0 8c ff fa 	beqz r12,730c <__sfvwrite_r+0xe8>
    7328:	a2 a8 00 0c 	ldh r2,@(12,r8)
    732c:	ad c8 00 08 	ld fp,@(8,r8)
    7330:	86 c2 02 00 	and3 r6,r2,#0x200
    7334:	56 50 56 30 	slli r6,#0x10 -> srai r6,#0x10
    7338:	b0 86 00 4b 	beqz r6,7464 <__sfvwrite_r+0x240>
    733c:	0c 5d 7c 3f 	cmpu r12,fp -> bc 7438 <__sfvwrite_r+0x214>
    7340:	86 c2 04 80 	and3 r6,r2,#0x480
    7344:	b0 86 00 3c 	beqz r6,7434 <__sfvwrite_r+0x210>
    7348:	a7 c8 00 14 	ld r7,@(20,r8)
    734c:	a1 c8 00 10 	ld r1,@(16,r8)
    7350:	94 c7 00 01 	sll3 r4,r7,#1
    7354:	26 c8 f0 00 	ld r6,@r8 || nop
    7358:	04 a7 f0 00 	add r4,r7 || nop
    735c:	97 84 00 1f 	srl3 r7,r4,#31
    7360:	07 a4 f0 00 	add r7,r4 || nop
    7364:	06 21 f0 00 	sub r6,r1 || nop
    7368:	84 a6 00 01 	add3 r4,r6,#1
    736c:	57 21 f0 00 	srai r7,#0x1 || nop
    7370:	04 ac 07 54 	add r4,r12 -> cmpu r7,r4
    7374:	7d 02 f0 00 	bnc 737c <__sfvwrite_r+0x158> || nop
    7378:	17 84 f0 00 	mv r7,r4 || nop
    737c:	82 c2 04 00 	and3 r2,r2,#0x400
    7380:	52 50 52 30 	slli r2,#0x10 -> srai r2,#0x10
    7384:	10 8a f0 00 	mv r0,r10 || nop
    7388:	b0 82 00 17 	beqz r2,73e4 <__sfvwrite_r+0x1c0>
    738c:	a6 4f 00 04 	st r6,@(4,sp)
    7390:	a7 4f 00 0c 	st r7,@(12,sp)
    7394:	11 87 f0 00 	mv r1,r7 || nop
    7398:	fe ff f6 55 	bl 4cec <_malloc_r>
    739c:	a6 cf 00 04 	ld r6,@(4,sp)
    73a0:	1d 80 f0 00 	mv fp,r0 || nop
    73a4:	a7 cf 00 0c 	ld r7,@(12,sp)
    73a8:	b0 90 00 02 	bnez r0,73b0 <__sfvwrite_r+0x18c>
    73ac:	7f 19 f0 00 	bra 7410 <__sfvwrite_r+0x1ec> || nop
    73b0:	a1 c8 00 10 	ld r1,@(16,r8)
    73b4:	a6 4f 00 04 	st r6,@(4,sp)
    73b8:	a7 4f 00 0c 	st r7,@(12,sp)
    73bc:	12 86 f0 00 	mv r2,r6 || nop
    73c0:	fe ff f7 ea 	bl 5368 <memcpy>
    73c4:	a2 b8 00 0c 	lduh r2,@(12,r8)
    73c8:	94 f0 fb 7f 	ldi r4,#-1153
    73cc:	a6 cf 00 04 	ld r6,@(4,sp)
    73d0:	02 c4 f0 00 	and r2,r4 || nop
    73d4:	82 e2 00 80 	or3 r2,r2,#0x80
    73d8:	a2 28 00 0c 	sth r2,@(12,r8)
    73dc:	a7 cf 00 0c 	ld r7,@(12,sp)
    73e0:	7f 0e f0 00 	bra 7418 <__sfvwrite_r+0x1f4> || nop
    73e4:	a6 4f 00 04 	st r6,@(4,sp)
    73e8:	a7 4f 00 0c 	st r7,@(12,sp)
    73ec:	12 87 f0 00 	mv r2,r7 || nop
    73f0:	fe 00 00 e9 	bl 7794 <_realloc_r>
    73f4:	a6 cf 00 04 	ld r6,@(4,sp)
    73f8:	1d 80 f0 00 	mv fp,r0 || nop
    73fc:	a7 cf 00 0c 	ld r7,@(12,sp)
    7400:	b0 90 00 06 	bnez r0,7418 <__sfvwrite_r+0x1f4>
    7404:	a1 c8 00 10 	ld r1,@(16,r8)
    7408:	10 8a f0 00 	mv r0,r10 || nop
    740c:	fe ff f4 f5 	bl 47e0 <_free_r>
    7410:	64 0c 24 4a 	ldi r4,#12 -> st r4,@r10
    7414:	ff 00 00 8a 	bra 763c <__sfvwrite_r+0x418>
    7418:	a7 48 00 14 	st r7,@(20,r8)
    741c:	ad 48 00 10 	st fp,@(16,r8)
    7420:	14 8d 04 a6 	mv r4,fp -> add r4,r6
    7424:	07 26 f0 00 	sub r7,r6 || nop
    7428:	a7 48 00 08 	st r7,@(8,r8)
    742c:	24 48 f0 00 	st r4,@r8 || nop
    7430:	1d 8c f0 00 	mv fp,r12 || nop
    7434:	0c 5d 7d 02 	cmpu r12,fp -> bnc 743c <__sfvwrite_r+0x218>
    7438:	1d 8c f0 00 	mv fp,r12 || nop
    743c:	20 c8 12 8d 	ld r0,@r8 -> mv r2,fp
    7440:	21 cf f0 00 	ld r1,@sp || nop
    7444:	fe 00 00 a9 	bl 76e8 <memmove>
    7448:	a6 c8 00 08 	ld r6,@(8,r8)
    744c:	06 2d f0 00 	sub r6,fp || nop
    7450:	a6 48 00 08 	st r6,@(8,r8)
    7454:	26 c8 06 ad 	ld r6,@r8 -> add r6,fp
    7458:	26 48 f0 00 	st r6,@r8 || nop
    745c:	1d 8c f0 00 	mv fp,r12 || nop
    7460:	7f 1f f0 00 	bra 74dc <__sfvwrite_r+0x2b8> || nop
    7464:	a6 c8 00 10 	ld r6,@(16,r8)
    7468:	20 c8 06 50 	ld r0,@r8 -> cmpu r6,r0
    746c:	7d 0a f0 00 	bnc 7494 <__sfvwrite_r+0x270> || nop
    7470:	0d 5c 7d 09 	cmpu fp,r12 -> bnc 7494 <__sfvwrite_r+0x270>
    7474:	21 cf 12 8d 	ld r1,@sp -> mv r2,fp
    7478:	fe 00 00 9c 	bl 76e8 <memmove>
    747c:	26 c8 f0 00 	ld r6,@r8 || nop
    7480:	10 8a 11 88 	mv r0,r10 -> mv r1,r8
    7484:	06 ad 26 48 	add r6,fp -> st r6,@r8
    7488:	fe ff f3 e9 	bl 442c <_fflush_r>
    748c:	b0 80 00 14 	beqz r0,74dc <__sfvwrite_r+0x2b8>
    7490:	7f 6b f0 00 	bra 763c <__sfvwrite_r+0x418> || nop
    7494:	a3 c8 00 14 	ld r3,@(20,r8)
    7498:	0c 53 7c 08 	cmpu r12,r3 -> bc 74b8 <__sfvwrite_r+0x294>
    749c:	a4 c8 00 24 	ld r4,@(36,r8)
    74a0:	10 8a f0 00 	mv r0,r10 || nop
    74a4:	a1 c8 00 1c 	ld r1,@(28,r8)
    74a8:	22 cf 1e c4 	ld r2,@sp -> jl r4
    74ac:	1d 80 f0 00 	mv fp,r0 || nop
    74b0:	b0 d0 00 0b 	bgtz r0,74dc <__sfvwrite_r+0x2b8>
    74b4:	7f 62 f0 00 	bra 763c <__sfvwrite_r+0x418> || nop
    74b8:	21 cf f0 00 	ld r1,@sp || nop
    74bc:	1d 8c f0 00 	mv fp,r12 || nop
    74c0:	12 8c f0 00 	mv r2,r12 || nop
    74c4:	fe 00 00 89 	bl 76e8 <memmove>
    74c8:	a6 c8 00 08 	ld r6,@(8,r8)
    74cc:	06 2c f0 00 	sub r6,r12 || nop
    74d0:	a6 48 00 08 	st r6,@(8,r8)
    74d4:	26 c8 06 ac 	ld r6,@r8 -> add r6,r12
    74d8:	26 48 f0 00 	st r6,@r8 || nop
    74dc:	a6 cb 00 08 	ld r6,@(8,r11)
    74e0:	0c 2d f0 00 	sub r12,fp || nop
    74e4:	24 cf f0 00 	ld r4,@sp || nop
    74e8:	06 2d f0 00 	sub r6,fp || nop
    74ec:	a6 4b 00 08 	st r6,@(8,r11)
    74f0:	04 ad 24 4f 	add r4,fp -> st r4,@sp
    74f4:	b0 96 ff 8c 	bnez r6,7324 <__sfvwrite_r+0x100>
    74f8:	ff ff ff 54 	bra 7248 <__sfvwrite_r+0x24>
    74fc:	ac c9 00 04 	ld r12,@(4,r9)
    7500:	67 00 2d c9 	ldi r7,#0 -> ld fp,@r9
    7504:	49 08 f0 00 	addi r9,#8 || nop
    7508:	b0 8c ff fd 	beqz r12,74fc <__sfvwrite_r+0x2d8>
    750c:	b0 97 00 09 	bnez r7,7530 <__sfvwrite_r+0x30c>
    7510:	10 8d 61 0a 	mv r0,fp -> ldi r1,#10
    7514:	12 8c f0 00 	mv r2,r12 || nop
    7518:	fe ff f7 8b 	bl 5344 <memchr>
    751c:	b0 80 00 03 	beqz r0,7528 <__sfvwrite_r+0x304>
    7520:	85 a0 00 01 	add3 r5,r0,#1
    7524:	05 2d 7f 02 	sub r5,fp -> bra 752c <__sfvwrite_r+0x308>
    7528:	85 ac 00 01 	add3 r5,r12,#1
    752c:	67 01 f0 00 	ldi r7,#1 || nop
    7530:	0c 55 16 85 	cmpu r12,r5 -> mv r6,r5
    7534:	7d 01 16 8c 	bnc 7538 <__sfvwrite_r+0x314> -> mv r6,r12
    7538:	a2 c8 00 10 	ld r2,@(16,r8)
    753c:	a4 c8 00 08 	ld r4,@(8,r8)
    7540:	a3 c8 00 14 	ld r3,@(20,r8)
    7544:	20 c8 02 50 	ld r0,@r8 -> cmpu r2,r0
    7548:	7d 13 f0 00 	bnc 7594 <__sfvwrite_r+0x370> || nop
    754c:	04 a3 f0 00 	add r4,r3 || nop
    7550:	04 46 7d 11 	cmp r4,r6 -> bnc 7594 <__sfvwrite_r+0x370>
    7554:	a5 4f 00 08 	st r5,@(8,sp)
    7558:	a7 4f 00 0c 	st r7,@(12,sp)
    755c:	a4 4f 00 04 	st r4,@(4,sp)
    7560:	12 84 11 8d 	mv r2,r4 -> mv r1,fp
    7564:	fe 00 00 61 	bl 76e8 <memmove>
    7568:	a4 cf 00 04 	ld r4,@(4,sp)
    756c:	10 8a f0 00 	mv r0,r10 || nop
    7570:	26 c8 f0 00 	ld r6,@r8 || nop
    7574:	11 88 f0 00 	mv r1,r8 || nop
    7578:	06 a4 26 48 	add r6,r4 -> st r6,@r8
    757c:	fe ff f3 ac 	bl 442c <_fflush_r>
    7580:	a4 cf 00 04 	ld r4,@(4,sp)
    7584:	a5 cf 00 08 	ld r5,@(8,sp)
    7588:	a7 cf 00 0c 	ld r7,@(12,sp)
    758c:	b0 80 00 1b 	beqz r0,75f8 <__sfvwrite_r+0x3d4>
    7590:	7f 2b f0 00 	bra 763c <__sfvwrite_r+0x418> || nop
    7594:	06 43 7c 0c 	cmp r6,r3 -> bc 75c4 <__sfvwrite_r+0x3a0>
    7598:	a4 c8 00 24 	ld r4,@(36,r8)
    759c:	a5 4f 00 08 	st r5,@(8,sp)
    75a0:	a1 c8 00 1c 	ld r1,@(28,r8)
    75a4:	a7 4f 00 0c 	st r7,@(12,sp)
    75a8:	10 8a 12 8d 	mv r0,r10 -> mv r2,fp
    75ac:	1e c4 f0 00 	jl r4 || nop
    75b0:	a5 cf 00 08 	ld r5,@(8,sp)
    75b4:	14 80 f0 00 	mv r4,r0 || nop
    75b8:	a7 cf 00 0c 	ld r7,@(12,sp)
    75bc:	b0 d0 00 0f 	bgtz r0,75f8 <__sfvwrite_r+0x3d4>
    75c0:	7f 1f f0 00 	bra 763c <__sfvwrite_r+0x418> || nop
    75c4:	a5 4f 00 08 	st r5,@(8,sp)
    75c8:	a6 4f 00 04 	st r6,@(4,sp)
    75cc:	a7 4f 00 0c 	st r7,@(12,sp)
    75d0:	12 86 11 8d 	mv r2,r6 -> mv r1,fp
    75d4:	fe 00 00 45 	bl 76e8 <memmove>
    75d8:	a6 cf 00 04 	ld r6,@(4,sp)
    75dc:	a4 c8 00 08 	ld r4,@(8,r8)
    75e0:	a7 cf 00 0c 	ld r7,@(12,sp)
    75e4:	04 26 f0 00 	sub r4,r6 || nop
    75e8:	a4 48 00 08 	st r4,@(8,r8)
    75ec:	a5 cf 00 08 	ld r5,@(8,sp)
    75f0:	24 c8 04 a6 	ld r4,@r8 -> add r4,r6
    75f4:	24 48 14 86 	st r4,@r8 -> mv r4,r6
    75f8:	05 24 f0 00 	sub r5,r4 || nop
    75fc:	b0 95 00 09 	bnez r5,7620 <__sfvwrite_r+0x3fc>
    7600:	a4 4f 00 04 	st r4,@(4,sp)
    7604:	a5 4f 00 08 	st r5,@(8,sp)
    7608:	10 8a 11 88 	mv r0,r10 -> mv r1,r8
    760c:	fe ff f3 88 	bl 442c <_fflush_r>
    7610:	a4 cf 00 04 	ld r4,@(4,sp)
    7614:	a5 cf 00 08 	ld r5,@(8,sp)
    7618:	b0 90 00 09 	bnez r0,763c <__sfvwrite_r+0x418>
    761c:	67 00 f0 00 	ldi r7,#0 || nop
    7620:	a6 cb 00 08 	ld r6,@(8,r11)
    7624:	0d a4 f0 00 	add fp,r4 || nop
    7628:	0c 24 f0 00 	sub r12,r4 || nop
    762c:	06 24 f0 00 	sub r6,r4 || nop
    7630:	a6 4b 00 08 	st r6,@(8,r11)
    7634:	b0 96 ff b5 	bnez r6,7508 <__sfvwrite_r+0x2e4>
    7638:	ff ff ff 04 	bra 7248 <__sfvwrite_r+0x24>
    763c:	a5 b8 00 0c 	lduh r5,@(12,r8)
    7640:	64 40 04 e5 	ldi r4,#64 -> or r4,r5
    7644:	a4 28 00 0c 	sth r4,@(12,r8)
    7648:	60 ff f0 00 	ldi r0,#-1 || nop
    764c:	4f 10 2e ef 	addi sp,#16 -> pop lr
    7650:	2c ef 2b ef 	pop r12 -> pop r11
    7654:	2a ef f0 00 	pop r10 || nop
    7658:	29 ef 28 ef 	pop r9 -> pop r8
    765c:	2d ef 1f ce 	pop fp -> jmp lr

00007660 <_isatty_r>:
    7660:	28 7f f0 00 	push r8 || nop
    7664:	e8 00 a1 00 	ld24 r8,a100 <errno>
    7668:	29 7f f0 00 	push r9 || nop
    766c:	64 00 f0 00 	ldi r4,#0 || nop
    7670:	2e 7f f0 00 	push lr || nop
    7674:	19 80 f0 00 	mv r9,r0 || nop
    7678:	10 81 f0 00 	mv r0,r1 || nop
    767c:	24 48 f0 00 	st r4,@r8 || nop
    7680:	fe ff e7 bc 	bl 1570 <_isatty>
    7684:	84 a0 00 01 	add3 r4,r0,#1
    7688:	b0 94 00 04 	bnez r4,7698 <_isatty_r+0x38>
    768c:	24 c8 f0 00 	ld r4,@r8 || nop
    7690:	b0 84 00 02 	beqz r4,7698 <_isatty_r+0x38>
    7694:	24 49 f0 00 	st r4,@r9 || nop
    7698:	2e ef 29 ef 	pop lr -> pop r9
    769c:	28 ef 1f ce 	pop r8 -> jmp lr

000076a0 <_lseek_r>:
    76a0:	28 7f f0 00 	push r8 || nop
    76a4:	e8 00 a1 00 	ld24 r8,a100 <errno>
    76a8:	29 7f f0 00 	push r9 || nop
    76ac:	64 00 f0 00 	ldi r4,#0 || nop
    76b0:	2e 7f f0 00 	push lr || nop
    76b4:	19 80 f0 00 	mv r9,r0 || nop
    76b8:	10 81 f0 00 	mv r0,r1 || nop
    76bc:	11 82 f0 00 	mv r1,r2 || nop
    76c0:	12 83 f0 00 	mv r2,r3 || nop
    76c4:	24 48 f0 00 	st r4,@r8 || nop
    76c8:	fe ff e7 a4 	bl 1558 <_lseek>
    76cc:	84 a0 00 01 	add3 r4,r0,#1
    76d0:	b0 94 00 04 	bnez r4,76e0 <_lseek_r+0x40>
    76d4:	24 c8 f0 00 	ld r4,@r8 || nop
    76d8:	b0 84 00 02 	beqz r4,76e0 <_lseek_r+0x40>
    76dc:	24 49 f0 00 	st r4,@r9 || nop
    76e0:	2e ef 29 ef 	pop lr -> pop r9
    76e4:	28 ef 1f ce 	pop r8 -> jmp lr

000076e8 <memmove>:
    76e8:	01 50 7d 16 	cmpu r1,r0 -> bnc 7740 <memmove+0x58>
    76ec:	16 81 06 a2 	mv r6,r1 -> add r6,r2
    76f0:	00 56 7d 14 	cmpu r0,r6 -> bnc 7740 <memmove+0x58>
    76f4:	14 80 f0 00 	mv r4,r0 || nop
    76f8:	05 32 f0 00 	neg r5,r2 || nop
    76fc:	04 a2 f0 00 	add r4,r2 || nop
    7700:	06 a5 f0 00 	add r6,r5 || nop
    7704:	04 a5 f0 00 	add r4,r5 || nop
    7708:	7f 05 f0 00 	bra 771c <memmove+0x34> || nop
    770c:	15 86 05 a2 	mv r5,r6 -> add r5,r2
    7710:	27 85 f0 00 	ldb r7,@r5 || nop
    7714:	15 84 05 a2 	mv r5,r4 -> add r5,r2
    7718:	27 05 f0 00 	stb r7,@r5 || nop
    771c:	42 ff f0 00 	addi r2,#-1 || nop
    7720:	85 a2 00 01 	add3 r5,r2,#1
    7724:	b0 95 ff fa 	bnez r5,770c <memmove+0x24>
    7728:	1f ce f0 00 	jmp lr || nop
    772c:	15 81 05 a4 	mv r5,r1 -> add r5,r4
    7730:	26 85 f0 00 	ldb r6,@r5 || nop
    7734:	15 80 05 a4 	mv r5,r0 -> add r5,r4
    7738:	44 01 f0 00 	addi r4,#1 || nop
    773c:	26 05 7f 02 	stb r6,@r5 -> bra 7744 <memmove+0x5c>
    7740:	64 00 f0 00 	ldi r4,#0 || nop
    7744:	b4 12 ff fa 	bne r4,r2,772c <memmove+0x44>
    7748:	1f ce f0 00 	jmp lr || nop

0000774c <_read_r>:
    774c:	28 7f f0 00 	push r8 || nop
    7750:	e8 00 a1 00 	ld24 r8,a100 <errno>
    7754:	29 7f f0 00 	push r9 || nop
    7758:	64 00 f0 00 	ldi r4,#0 || nop
    775c:	2e 7f f0 00 	push lr || nop
    7760:	19 80 f0 00 	mv r9,r0 || nop
    7764:	10 81 f0 00 	mv r0,r1 || nop
    7768:	11 82 f0 00 	mv r1,r2 || nop
    776c:	12 83 f0 00 	mv r2,r3 || nop
    7770:	24 48 f0 00 	st r4,@r8 || nop
    7774:	fe ff e7 6a 	bl 151c <_read>
    7778:	84 a0 00 01 	add3 r4,r0,#1
    777c:	b0 94 00 04 	bnez r4,778c <_read_r+0x40>
    7780:	24 c8 f0 00 	ld r4,@r8 || nop
    7784:	b0 84 00 02 	beqz r4,778c <_read_r+0x40>
    7788:	24 49 f0 00 	st r4,@r9 || nop
    778c:	2e ef 29 ef 	pop lr -> pop r9
    7790:	28 ef 1f ce 	pop r8 -> jmp lr

00007794 <_realloc_r>:
    7794:	2d 7f 28 7f 	push fp -> push r8
    7798:	29 7f 2a 7f 	push r9 -> push r10
    779c:	2b 7f 2c 7f 	push r11 -> push r12
    77a0:	2e 7f 18 81 	push lr -> mv r8,r1
    77a4:	4f fc f0 00 	addi sp,#-4 || nop
    77a8:	1d 80 11 82 	mv fp,r0 -> mv r1,r2
    77ac:	b0 98 00 04 	bnez r8,77bc <_realloc_r+0x28>
    77b0:	fe ff f5 4f 	bl 4cec <_malloc_r>
    77b4:	1a 80 f0 00 	mv r10,r0 || nop
    77b8:	ff 00 01 10 	bra 7bf8 <_realloc_r+0x464>
    77bc:	22 4f f0 00 	st r2,@sp || nop
    77c0:	fe ff f6 f2 	bl 5388 <__malloc_lock>
    77c4:	a3 c8 ff fc 	ld r3,@(-4,r8)
    77c8:	85 a8 ff f8 	add3 r5,r8,#-8
    77cc:	21 cf 66 16 	ld r1,@sp -> ldi r6,#22
    77d0:	6c fc 0c c3 	ldi r12,#-4 -> and r12,r3
    77d4:	84 a1 00 0b 	add3 r4,r1,#11
    77d8:	06 54 7d 04 	cmpu r6,r4 -> bnc 77e8 <_realloc_r+0x54>
    77dc:	6b f8 0b c4 	ldi r11,#-8 -> and r11,r4
    77e0:	b0 bb 00 03 	bgez r11,77ec <_realloc_r+0x58>
    77e4:	7f 03 f0 00 	bra 77f0 <_realloc_r+0x5c> || nop
    77e8:	6b 10 f0 00 	ldi r11,#16 || nop
    77ec:	0b 51 7d 04 	cmpu r11,r1 -> bnc 77fc <_realloc_r+0x68>
    77f0:	64 0c 24 4d 	ldi r4,#12 -> st r4,@fp
    77f4:	6a 00 f0 00 	ldi r10,#0 || nop
    77f8:	ff 00 01 00 	bra 7bf8 <_realloc_r+0x464>
    77fc:	0c 4b f0 00 	cmp r12,r11 || nop
    7800:	fd 00 00 dd 	bnc 7b74 <_realloc_r+0x3e0>
    7804:	e6 00 9c a4 	ld24 r6,9ca4 <__malloc_av_>
    7808:	a2 c6 00 08 	ld r2,@(8,r6)
    780c:	14 85 04 ac 	mv r4,r5 -> add r4,r12
    7810:	a7 c4 00 04 	ld r7,@(4,r4)
    7814:	b4 02 00 06 	beq r4,r2,782c <_realloc_r+0x98>
    7818:	66 fe 06 c7 	ldi r6,#-2 -> and r6,r7
    781c:	06 a4 f0 00 	add r6,r4 || nop
    7820:	a9 c6 00 04 	ld r9,@(4,r6)
    7824:	66 01 06 c9 	ldi r6,#1 -> and r6,r9
    7828:	b0 96 00 1a 	bnez r6,7890 <_realloc_r+0xfc>
    782c:	66 fc 06 c7 	ldi r6,#-4 -> and r6,r7
    7830:	1a 86 0a ac 	mv r10,r6 -> add r10,r12
    7834:	b4 12 00 11 	bne r4,r2,7878 <_realloc_r+0xe4>
    7838:	87 ab 00 10 	add3 r7,r11,#16
    783c:	0a 47 7c 17 	cmp r10,r7 -> bc 7898 <_realloc_r+0x104>
    7840:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    7844:	05 ab f0 00 	add r5,r11 || nop
    7848:	a5 44 00 08 	st r5,@(8,r4)
    784c:	0a 2b f0 00 	sub r10,r11 || nop
    7850:	64 01 04 ea 	ldi r4,#1 -> or r4,r10
    7854:	a4 45 00 04 	st r4,@(4,r5)
    7858:	a5 c8 ff fc 	ld r5,@(-4,r8)
    785c:	64 01 f0 00 	ldi r4,#1 || nop
    7860:	10 8d f0 00 	mv r0,fp || nop
    7864:	04 c5 04 eb 	and r4,r5 -> or r4,r11
    7868:	a4 48 ff fc 	st r4,@(-4,r8)
    786c:	fe ff f6 c8 	bl 538c <__malloc_unlock>
    7870:	1a 88 f0 00 	mv r10,r8 || nop
    7874:	ff 00 00 e1 	bra 7bf8 <_realloc_r+0x464>
    7878:	0a 4b 7c 08 	cmp r10,r11 -> bc 7898 <_realloc_r+0x104>
    787c:	a6 c4 00 0c 	ld r6,@(12,r4)
    7880:	a4 c4 00 08 	ld r4,@(8,r4)
    7884:	a6 44 00 0c 	st r6,@(12,r4)
    7888:	a4 46 00 08 	st r4,@(8,r6)
    788c:	ff 00 00 bb 	bra 7b78 <_realloc_r+0x3e4>
    7890:	66 00 f0 00 	ldi r6,#0 || nop
    7894:	64 00 f0 00 	ldi r4,#0 || nop
    7898:	67 01 07 c3 	ldi r7,#1 -> and r7,r3
    789c:	b0 97 00 7b 	bnez r7,7a88 <_realloc_r+0x2f4>
    78a0:	a7 c8 ff f8 	ld r7,@(-8,r8)
    78a4:	19 85 f0 00 	mv r9,r5 || nop
    78a8:	63 fc f0 00 	ldi r3,#-4 || nop
    78ac:	09 27 f0 00 	sub r9,r7 || nop
    78b0:	a7 c9 00 04 	ld r7,@(4,r9)
    78b4:	07 c3 f0 00 	and r7,r3 || nop
    78b8:	b0 84 00 47 	beqz r4,79d4 <_realloc_r+0x240>
    78bc:	1a 87 0a ac 	mv r10,r7 -> add r10,r12
    78c0:	b4 12 00 3e 	bne r4,r2,79b8 <_realloc_r+0x224>
    78c4:	84 ab 00 10 	add3 r4,r11,#16
    78c8:	06 aa f0 00 	add r6,r10 || nop
    78cc:	06 44 7c 42 	cmp r6,r4 -> bc 79d4 <_realloc_r+0x240>
    78d0:	a4 c9 00 0c 	ld r4,@(12,r9)
    78d4:	82 ac ff fc 	add3 r2,r12,#-4
    78d8:	a5 c9 00 08 	ld r5,@(8,r9)
    78dc:	8a a9 00 08 	add3 r10,r9,#8
    78e0:	a4 45 00 0c 	st r4,@(12,r5)
    78e4:	a5 44 00 08 	st r5,@(8,r4)
    78e8:	64 24 f0 00 	ldi r4,#36 || nop
    78ec:	04 52 7c 24 	cmpu r4,r2 -> bc 797c <_realloc_r+0x1e8>
    78f0:	64 13 04 52 	ldi r4,#19 -> cmpu r4,r2
    78f4:	7d 1a f0 00 	bnc 795c <_realloc_r+0x1c8> || nop
    78f8:	24 c8 f0 00 	ld r4,@r8 || nop
    78fc:	a4 49 00 08 	st r4,@(8,r9)
    7900:	a4 c8 00 04 	ld r4,@(4,r8)
    7904:	a4 49 00 0c 	st r4,@(12,r9)
    7908:	64 1b 04 52 	ldi r4,#27 -> cmpu r4,r2
    790c:	7c 04 f0 00 	bc 791c <_realloc_r+0x188> || nop
    7910:	84 a9 00 10 	add3 r4,r9,#16
    7914:	48 08 f0 00 	addi r8,#8 || nop
    7918:	7f 12 f0 00 	bra 7960 <_realloc_r+0x1cc> || nop
    791c:	a4 c8 00 08 	ld r4,@(8,r8)
    7920:	4c d8 f0 00 	addi r12,#-40 || nop
    7924:	a4 49 00 10 	st r4,@(16,r9)
    7928:	a4 c8 00 0c 	ld r4,@(12,r8)
    792c:	a4 49 00 14 	st r4,@(20,r9)
    7930:	b0 8c 00 04 	beqz r12,7940 <_realloc_r+0x1ac>
    7934:	84 a9 00 18 	add3 r4,r9,#24
    7938:	48 10 f0 00 	addi r8,#16 || nop
    793c:	7f 09 f0 00 	bra 7960 <_realloc_r+0x1cc> || nop
    7940:	a4 c8 00 10 	ld r4,@(16,r8)
    7944:	a4 49 00 18 	st r4,@(24,r9)
    7948:	a4 c8 00 14 	ld r4,@(20,r8)
    794c:	48 18 f0 00 	addi r8,#24 || nop
    7950:	a4 49 00 1c 	st r4,@(28,r9)
    7954:	84 a9 00 20 	add3 r4,r9,#32
    7958:	7f 02 f0 00 	bra 7960 <_realloc_r+0x1cc> || nop
    795c:	14 8a f0 00 	mv r4,r10 || nop
    7960:	25 c8 f0 00 	ld r5,@r8 || nop
    7964:	25 44 f0 00 	st r5,@r4 || nop
    7968:	a5 c8 00 04 	ld r5,@(4,r8)
    796c:	a5 44 00 04 	st r5,@(4,r4)
    7970:	a5 c8 00 08 	ld r5,@(8,r8)
    7974:	a5 44 00 08 	st r5,@(8,r4)
    7978:	7f 05 f0 00 	bra 798c <_realloc_r+0x1f8> || nop
    797c:	10 8a 11 88 	mv r0,r10 -> mv r1,r8
    7980:	26 4f f0 00 	st r6,@sp || nop
    7984:	fe ff ff 59 	bl 76e8 <memmove>
    7988:	26 cf f0 00 	ld r6,@sp || nop
    798c:	e4 00 9c a4 	ld24 r4,9ca4 <__malloc_av_>
    7990:	15 89 05 ab 	mv r5,r9 -> add r5,r11
    7994:	a5 44 00 08 	st r5,@(8,r4)
    7998:	06 2b 64 01 	sub r6,r11 -> ldi r4,#1
    799c:	04 e6 f0 00 	or r4,r6 || nop
    79a0:	a4 45 00 04 	st r4,@(4,r5)
    79a4:	a5 c9 00 04 	ld r5,@(4,r9)
    79a8:	64 01 04 c5 	ldi r4,#1 -> and r4,r5
    79ac:	04 eb f0 00 	or r4,r11 || nop
    79b0:	a4 49 00 04 	st r4,@(4,r9)
    79b4:	7f 6d f0 00 	bra 7b68 <_realloc_r+0x3d4> || nop
    79b8:	0a a6 0a 4b 	add r10,r6 -> cmp r10,r11
    79bc:	7c 06 f0 00 	bc 79d4 <_realloc_r+0x240> || nop
    79c0:	a5 c4 00 0c 	ld r5,@(12,r4)
    79c4:	a4 c4 00 08 	ld r4,@(8,r4)
    79c8:	a5 44 00 0c 	st r5,@(12,r4)
    79cc:	a4 45 00 08 	st r4,@(8,r5)
    79d0:	7f 03 f0 00 	bra 79dc <_realloc_r+0x248> || nop
    79d4:	1a 87 0a ac 	mv r10,r7 -> add r10,r12
    79d8:	0a 4b 7c 2c 	cmp r10,r11 -> bc 7a88 <_realloc_r+0x2f4>
    79dc:	a4 c9 00 0c 	ld r4,@(12,r9)
    79e0:	82 ac ff fc 	add3 r2,r12,#-4
    79e4:	a5 c9 00 08 	ld r5,@(8,r9)
    79e8:	80 a9 00 08 	add3 r0,r9,#8
    79ec:	a4 45 00 0c 	st r4,@(12,r5)
    79f0:	a5 44 00 08 	st r5,@(8,r4)
    79f4:	64 24 f0 00 	ldi r4,#36 || nop
    79f8:	04 52 7c 21 	cmpu r4,r2 -> bc 7a7c <_realloc_r+0x2e8>
    79fc:	64 13 04 52 	ldi r4,#19 -> cmpu r4,r2
    7a00:	7d 19 f0 00 	bnc 7a64 <_realloc_r+0x2d0> || nop
    7a04:	24 c8 f0 00 	ld r4,@r8 || nop
    7a08:	a4 49 00 08 	st r4,@(8,r9)
    7a0c:	a4 c8 00 04 	ld r4,@(4,r8)
    7a10:	a4 49 00 0c 	st r4,@(12,r9)
    7a14:	64 1b 04 52 	ldi r4,#27 -> cmpu r4,r2
    7a18:	7c 04 f0 00 	bc 7a28 <_realloc_r+0x294> || nop
    7a1c:	80 a9 00 10 	add3 r0,r9,#16
    7a20:	48 08 f0 00 	addi r8,#8 || nop
    7a24:	7f 10 f0 00 	bra 7a64 <_realloc_r+0x2d0> || nop
    7a28:	a4 c8 00 08 	ld r4,@(8,r8)
    7a2c:	4c d8 f0 00 	addi r12,#-40 || nop
    7a30:	a4 49 00 10 	st r4,@(16,r9)
    7a34:	a4 c8 00 0c 	ld r4,@(12,r8)
    7a38:	a4 49 00 14 	st r4,@(20,r9)
    7a3c:	b0 8c 00 04 	beqz r12,7a4c <_realloc_r+0x2b8>
    7a40:	80 a9 00 18 	add3 r0,r9,#24
    7a44:	48 10 f0 00 	addi r8,#16 || nop
    7a48:	7f 07 f0 00 	bra 7a64 <_realloc_r+0x2d0> || nop
    7a4c:	a4 c8 00 10 	ld r4,@(16,r8)
    7a50:	80 a9 00 20 	add3 r0,r9,#32
    7a54:	a4 49 00 18 	st r4,@(24,r9)
    7a58:	a4 c8 00 14 	ld r4,@(20,r8)
    7a5c:	48 18 f0 00 	addi r8,#24 || nop
    7a60:	a4 49 00 1c 	st r4,@(28,r9)
    7a64:	24 c8 24 40 	ld r4,@r8 -> st r4,@r0
    7a68:	a4 c8 00 04 	ld r4,@(4,r8)
    7a6c:	a4 40 00 04 	st r4,@(4,r0)
    7a70:	a4 c8 00 08 	ld r4,@(8,r8)
    7a74:	a4 40 00 08 	st r4,@(8,r0)
    7a78:	7f 41 f0 00 	bra 7b7c <_realloc_r+0x3e8> || nop
    7a7c:	11 88 f0 00 	mv r1,r8 || nop
    7a80:	fe ff ff 1a 	bl 76e8 <memmove>
    7a84:	7f 3e f0 00 	bra 7b7c <_realloc_r+0x3e8> || nop
    7a88:	10 8d 25 4f 	mv r0,fp -> st r5,@sp
    7a8c:	fe ff f4 98 	bl 4cec <_malloc_r>
    7a90:	1a 80 f0 00 	mv r10,r0 || nop
    7a94:	25 cf f0 00 	ld r5,@sp || nop
    7a98:	b0 90 00 02 	bnez r0,7aa0 <_realloc_r+0x30c>
    7a9c:	7f 33 f0 00 	bra 7b68 <_realloc_r+0x3d4> || nop
    7aa0:	a4 c8 ff fc 	ld r4,@(-4,r8)
    7aa4:	86 a0 ff f8 	add3 r6,r0,#-8
    7aa8:	67 fe 04 c7 	ldi r7,#-2 -> and r4,r7
    7aac:	04 a5 f0 00 	add r4,r5 || nop
    7ab0:	b6 14 00 05 	bne r6,r4,7ac4 <_realloc_r+0x330>
    7ab4:	aa c0 ff fc 	ld r10,@(-4,r0)
    7ab8:	64 fc 0a c4 	ldi r4,#-4 -> and r10,r4
    7abc:	0a ac f0 00 	add r10,r12 || nop
    7ac0:	7f 2e f0 00 	bra 7b78 <_realloc_r+0x3e4> || nop
    7ac4:	82 ac ff fc 	add3 r2,r12,#-4
    7ac8:	64 24 04 52 	ldi r4,#36 -> cmpu r4,r2
    7acc:	7c 23 f0 00 	bc 7b58 <_realloc_r+0x3c4> || nop
    7ad0:	64 13 04 52 	ldi r4,#19 -> cmpu r4,r2
    7ad4:	7d 19 f0 00 	bnc 7b38 <_realloc_r+0x3a4> || nop
    7ad8:	24 c8 24 40 	ld r4,@r8 -> st r4,@r0
    7adc:	a4 c8 00 04 	ld r4,@(4,r8)
    7ae0:	a4 40 00 04 	st r4,@(4,r0)
    7ae4:	64 1b 04 52 	ldi r4,#27 -> cmpu r4,r2
    7ae8:	7c 04 f0 00 	bc 7af8 <_realloc_r+0x364> || nop
    7aec:	84 a0 00 08 	add3 r4,r0,#8
    7af0:	85 a8 00 08 	add3 r5,r8,#8
    7af4:	7f 12 f0 00 	bra 7b3c <_realloc_r+0x3a8> || nop
    7af8:	a4 c8 00 08 	ld r4,@(8,r8)
    7afc:	4c d8 f0 00 	addi r12,#-40 || nop
    7b00:	a4 40 00 08 	st r4,@(8,r0)
    7b04:	a4 c8 00 0c 	ld r4,@(12,r8)
    7b08:	a4 40 00 0c 	st r4,@(12,r0)
    7b0c:	b0 8c 00 04 	beqz r12,7b1c <_realloc_r+0x388>
    7b10:	84 a0 00 10 	add3 r4,r0,#16
    7b14:	85 a8 00 10 	add3 r5,r8,#16
    7b18:	7f 09 f0 00 	bra 7b3c <_realloc_r+0x3a8> || nop
    7b1c:	a4 c8 00 10 	ld r4,@(16,r8)
    7b20:	85 a8 00 18 	add3 r5,r8,#24
    7b24:	a4 40 00 10 	st r4,@(16,r0)
    7b28:	a4 c8 00 14 	ld r4,@(20,r8)
    7b2c:	a4 40 00 14 	st r4,@(20,r0)
    7b30:	84 a0 00 18 	add3 r4,r0,#24
    7b34:	7f 02 f0 00 	bra 7b3c <_realloc_r+0x3a8> || nop
    7b38:	14 80 15 88 	mv r4,r0 -> mv r5,r8
    7b3c:	26 c5 f0 00 	ld r6,@r5 || nop
    7b40:	26 44 f0 00 	st r6,@r4 || nop
    7b44:	a6 c5 00 04 	ld r6,@(4,r5)
    7b48:	a6 44 00 04 	st r6,@(4,r4)
    7b4c:	a5 c5 00 08 	ld r5,@(8,r5)
    7b50:	a5 44 00 08 	st r5,@(8,r4)
    7b54:	7f 03 f0 00 	bra 7b60 <_realloc_r+0x3cc> || nop
    7b58:	11 88 f0 00 	mv r1,r8 || nop
    7b5c:	fe ff fe e3 	bl 76e8 <memmove>
    7b60:	10 8d 11 88 	mv r0,fp -> mv r1,r8
    7b64:	fe ff f3 1f 	bl 47e0 <_free_r>
    7b68:	10 8d f0 00 	mv r0,fp || nop
    7b6c:	fe ff f6 08 	bl 538c <__malloc_unlock>
    7b70:	7f 22 f0 00 	bra 7bf8 <_realloc_r+0x464> || nop
    7b74:	1a 8c f0 00 	mv r10,r12 || nop
    7b78:	19 85 f0 00 	mv r9,r5 || nop
    7b7c:	a6 c9 00 04 	ld r6,@(4,r9)
    7b80:	15 8a 05 2b 	mv r5,r10 -> sub r5,r11
    7b84:	64 0f 04 55 	ldi r4,#15 -> cmpu r4,r5
    7b88:	7d 12 f0 00 	bnc 7bd0 <_realloc_r+0x43c> || nop
    7b8c:	64 01 04 c6 	ldi r4,#1 -> and r4,r6
    7b90:	04 eb f0 00 	or r4,r11 || nop
    7b94:	a4 49 00 04 	st r4,@(4,r9)
    7b98:	11 89 f0 00 	mv r1,r9 || nop
    7b9c:	64 01 f0 00 	ldi r4,#1 || nop
    7ba0:	01 ab f0 00 	add r1,r11 || nop
    7ba4:	04 e5 f0 00 	or r4,r5 || nop
    7ba8:	a4 41 00 04 	st r4,@(4,r1)
    7bac:	05 a1 f0 00 	add r5,r1 || nop
    7bb0:	a6 c5 00 04 	ld r6,@(4,r5)
    7bb4:	64 01 f0 00 	ldi r4,#1 || nop
    7bb8:	10 8d f0 00 	mv r0,fp || nop
    7bbc:	04 e6 f0 00 	or r4,r6 || nop
    7bc0:	a4 45 00 04 	st r4,@(4,r5)
    7bc4:	41 08 f0 00 	addi r1,#8 || nop
    7bc8:	fe ff f3 06 	bl 47e0 <_free_r>
    7bcc:	7f 08 f0 00 	bra 7bec <_realloc_r+0x458> || nop
    7bd0:	64 01 04 c6 	ldi r4,#1 -> and r4,r6
    7bd4:	04 ea f0 00 	or r4,r10 || nop
    7bd8:	a4 49 00 04 	st r4,@(4,r9)
    7bdc:	0a a9 f0 00 	add r10,r9 || nop
    7be0:	a5 ca 00 04 	ld r5,@(4,r10)
    7be4:	64 01 04 e5 	ldi r4,#1 -> or r4,r5
    7be8:	a4 4a 00 04 	st r4,@(4,r10)
    7bec:	8a a9 00 08 	add3 r10,r9,#8
    7bf0:	10 8d f0 00 	mv r0,fp || nop
    7bf4:	fe ff f5 e6 	bl 538c <__malloc_unlock>
    7bf8:	4f 04 2e ef 	addi sp,#4 -> pop lr
    7bfc:	10 8a 2c ef 	mv r0,r10 -> pop r12
    7c00:	2b ef 2a ef 	pop r11 -> pop r10
    7c04:	29 ef 28 ef 	pop r9 -> pop r8
    7c08:	2d ef f0 00 	pop fp || nop
    7c0c:	1f ce f0 00 	jmp lr || nop

00007c10 <cleanup_glue>:
    7c10:	28 7f 29 7f 	push r8 -> push r9
    7c14:	2e 7f f0 00 	push lr || nop
    7c18:	18 81 f0 00 	mv r8,r1 || nop
    7c1c:	21 c1 f0 00 	ld r1,@r1 || nop
    7c20:	19 80 f0 00 	mv r9,r0 || nop
    7c24:	b0 81 00 02 	beqz r1,7c2c <cleanup_glue+0x1c>
    7c28:	fe ff ff fa 	bl 7c10 <cleanup_glue>
    7c2c:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    7c30:	fe ff f2 ec 	bl 47e0 <_free_r>
    7c34:	2e ef 29 ef 	pop lr -> pop r9
    7c38:	28 ef f0 00 	pop r8 || nop
    7c3c:	1f ce f0 00 	jmp lr || nop

00007c40 <_reclaim_reent>:
    7c40:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    7c44:	28 7f 29 7f 	push r8 -> push r9
    7c48:	2a 7f 2e 7f 	push r10 -> push lr
    7c4c:	24 c4 f0 00 	ld r4,@r4 || nop
    7c50:	18 80 f0 00 	mv r8,r0 || nop
    7c54:	b0 04 00 2b 	beq r0,r4,7d00 <_reclaim_reent+0xc0>
    7c58:	a4 c0 00 4c 	ld r4,@(76,r0)
    7c5c:	b0 84 00 10 	beqz r4,7c9c <_reclaim_reent+0x5c>
    7c60:	69 00 f0 00 	ldi r9,#0 || nop
    7c64:	a4 c8 00 4c 	ld r4,@(76,r8)
    7c68:	04 a9 21 c4 	add r4,r9 -> ld r1,@r4
    7c6c:	7f 05 f0 00 	bra 7c80 <_reclaim_reent+0x40> || nop
    7c70:	2a c1 f0 00 	ld r10,@r1 || nop
    7c74:	10 88 f0 00 	mv r0,r8 || nop
    7c78:	fe ff f2 da 	bl 47e0 <_free_r>
    7c7c:	11 8a f0 00 	mv r1,r10 || nop
    7c80:	b0 91 ff fc 	bnez r1,7c70 <_reclaim_reent+0x30>
    7c84:	49 04 f0 00 	addi r9,#4 || nop
    7c88:	84 a9 ff 80 	add3 r4,r9,#-128
    7c8c:	b0 94 ff f6 	bnez r4,7c64 <_reclaim_reent+0x24>
    7c90:	a1 c8 00 4c 	ld r1,@(76,r8)
    7c94:	10 88 f0 00 	mv r0,r8 || nop
    7c98:	fe ff f2 d2 	bl 47e0 <_free_r>
    7c9c:	a1 c8 00 40 	ld r1,@(64,r8)
    7ca0:	b0 81 00 03 	beqz r1,7cac <_reclaim_reent+0x6c>
    7ca4:	10 88 f0 00 	mv r0,r8 || nop
    7ca8:	fe ff f2 ce 	bl 47e0 <_free_r>
    7cac:	a1 c8 01 48 	ld r1,@(328,r8)
    7cb0:	b0 91 00 04 	bnez r1,7cc0 <_reclaim_reent+0x80>
    7cb4:	a1 c8 00 54 	ld r1,@(84,r8)
    7cb8:	b0 91 00 08 	bnez r1,7cd8 <_reclaim_reent+0x98>
    7cbc:	7f 09 f0 00 	bra 7ce0 <_reclaim_reent+0xa0> || nop
    7cc0:	89 a8 01 4c 	add3 r9,r8,#332
    7cc4:	b1 09 ff fc 	beq r1,r9,7cb4 <_reclaim_reent+0x74>
    7cc8:	2a c1 f0 00 	ld r10,@r1 || nop
    7ccc:	10 88 f0 00 	mv r0,r8 || nop
    7cd0:	fe ff f2 c4 	bl 47e0 <_free_r>
    7cd4:	11 8a 7f fc 	mv r1,r10 -> bra 7cc4 <_reclaim_reent+0x84>
    7cd8:	10 88 f0 00 	mv r0,r8 || nop
    7cdc:	fe ff f2 c1 	bl 47e0 <_free_r>
    7ce0:	a4 c8 00 38 	ld r4,@(56,r8)
    7ce4:	b0 84 00 07 	beqz r4,7d00 <_reclaim_reent+0xc0>
    7ce8:	a4 c8 00 3c 	ld r4,@(60,r8)
    7cec:	10 88 1e c4 	mv r0,r8 -> jl r4
    7cf0:	a1 c8 02 e0 	ld r1,@(736,r8)
    7cf4:	b0 81 00 03 	beqz r1,7d00 <_reclaim_reent+0xc0>
    7cf8:	10 88 f0 00 	mv r0,r8 || nop
    7cfc:	fe ff ff c5 	bl 7c10 <cleanup_glue>
    7d00:	2e ef 2a ef 	pop lr -> pop r10
    7d04:	29 ef 28 ef 	pop r9 -> pop r8
    7d08:	1f ce f0 00 	jmp lr || nop

00007d0c <_wrapup_reent>:
    7d0c:	28 7f 29 7f 	push r8 -> push r9
    7d10:	2a 7f 2e 7f 	push r10 -> push lr
    7d14:	18 80 f0 00 	mv r8,r0 || nop
    7d18:	b0 90 00 03 	bnez r0,7d24 <_wrapup_reent+0x18>
    7d1c:	e4 00 a0 ac 	ld24 r4,a0ac <_impure_ptr>
    7d20:	28 c4 f0 00 	ld r8,@r4 || nop
    7d24:	a9 c8 01 48 	ld r9,@(328,r8)
    7d28:	7f 0a f0 00 	bra 7d50 <_wrapup_reent+0x44> || nop
    7d2c:	aa c9 00 04 	ld r10,@(4,r9)
    7d30:	7f 05 f0 00 	bra 7d44 <_wrapup_reent+0x38> || nop
    7d34:	94 ca 00 02 	sll3 r4,r10,#2
    7d38:	04 a9 f0 00 	add r4,r9 || nop
    7d3c:	a4 c4 00 08 	ld r4,@(8,r4)
    7d40:	1e c4 f0 00 	jl r4 || nop
    7d44:	4a ff f0 00 	addi r10,#-1 || nop
    7d48:	b0 ba ff fb 	bgez r10,7d34 <_wrapup_reent+0x28>
    7d4c:	29 c9 f0 00 	ld r9,@r9 || nop
    7d50:	b0 99 ff f7 	bnez r9,7d2c <_wrapup_reent+0x20>
    7d54:	a4 c8 00 3c 	ld r4,@(60,r8)
    7d58:	b0 84 00 02 	beqz r4,7d60 <_wrapup_reent+0x54>
    7d5c:	10 88 1e c4 	mv r0,r8 -> jl r4
    7d60:	2e ef 2a ef 	pop lr -> pop r10
    7d64:	29 ef f0 00 	pop r9 || nop
    7d68:	28 ef f0 00 	pop r8 || nop
    7d6c:	1f ce f0 00 	jmp lr || nop

00007d70 <__swbuf_r>:
    7d70:	28 7f 29 7f 	push r8 -> push r9
    7d74:	2a 7f 2e 7f 	push r10 -> push lr
    7d78:	19 80 1a 81 	mv r9,r0 -> mv r10,r1
    7d7c:	18 82 f0 00 	mv r8,r2 || nop
    7d80:	b0 80 00 04 	beqz r0,7d90 <__swbuf_r+0x20>
    7d84:	a4 c0 00 38 	ld r4,@(56,r0)
    7d88:	b0 94 00 02 	bnez r4,7d90 <__swbuf_r+0x20>
    7d8c:	fe ff f2 00 	bl 458c <__sinit>
    7d90:	a4 c8 00 18 	ld r4,@(24,r8)
    7d94:	a5 b8 00 0c 	lduh r5,@(12,r8)
    7d98:	a4 48 00 08 	st r4,@(8,r8)
    7d9c:	64 08 04 c5 	ldi r4,#8 -> and r4,r5
    7da0:	54 50 54 30 	slli r4,#0x10 -> srai r4,#0x10
    7da4:	b0 84 00 09 	beqz r4,7dc8 <__swbuf_r+0x58>
    7da8:	a4 c8 00 10 	ld r4,@(16,r8)
    7dac:	b0 84 00 07 	beqz r4,7dc8 <__swbuf_r+0x58>
    7db0:	a4 a8 00 0c 	ldh r4,@(12,r8)
    7db4:	8a ca 00 ff 	and3 r10,r10,#0xff
    7db8:	85 c4 20 00 	and3 r5,r4,#0x2000
    7dbc:	55 50 55 30 	slli r5,#0x10 -> srai r5,#0x10
    7dc0:	b0 85 00 07 	beqz r5,7ddc <__swbuf_r+0x6c>
    7dc4:	7f 0c f0 00 	bra 7df4 <__swbuf_r+0x84> || nop
    7dc8:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    7dcc:	fe ff eb de 	bl 2d44 <__swsetup_r>
    7dd0:	b0 80 ff f8 	beqz r0,7db0 <__swbuf_r+0x40>
    7dd4:	6a ff f0 00 	ldi r10,#-1 || nop
    7dd8:	7f 1f f0 00 	bra 7e54 <__swbuf_r+0xe4> || nop
    7ddc:	84 e4 20 00 	or3 r4,r4,#0x2000
    7de0:	a4 28 00 0c 	sth r4,@(12,r8)
    7de4:	a4 c8 00 64 	ld r4,@(100,r8)
    7de8:	95 f0 df ff 	ldi r5,#-8193
    7dec:	04 c5 f0 00 	and r4,r5 || nop
    7df0:	a4 48 00 64 	st r4,@(100,r8)
    7df4:	a5 c8 00 10 	ld r5,@(16,r8)
    7df8:	24 c8 04 25 	ld r4,@r8 -> sub r4,r5
    7dfc:	a5 c8 00 14 	ld r5,@(20,r8)
    7e00:	04 45 7c 05 	cmp r4,r5 -> bc 7e14 <__swbuf_r+0xa4>
    7e04:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    7e08:	fe ff f1 89 	bl 442c <_fflush_r>
    7e0c:	b0 90 ff f2 	bnez r0,7dd4 <__swbuf_r+0x64>
    7e10:	64 00 f0 00 	ldi r4,#0 || nop
    7e14:	a5 c8 00 08 	ld r5,@(8,r8)
    7e18:	44 01 f0 00 	addi r4,#1 || nop
    7e1c:	45 ff f0 00 	addi r5,#-1 || nop
    7e20:	a5 48 00 08 	st r5,@(8,r8)
    7e24:	25 c8 2a 05 	ld r5,@r8 -> stb r10,@r5
    7e28:	45 01 25 48 	addi r5,#1 -> st r5,@r8
    7e2c:	a5 c8 00 14 	ld r5,@(20,r8)
    7e30:	b4 05 00 06 	beq r4,r5,7e48 <__swbuf_r+0xd8>
    7e34:	a5 b8 00 0c 	lduh r5,@(12,r8)
    7e38:	64 01 04 c5 	ldi r4,#1 -> and r4,r5
    7e3c:	b0 84 00 06 	beqz r4,7e54 <__swbuf_r+0xe4>
    7e40:	84 aa ff f6 	add3 r4,r10,#-10
    7e44:	b0 94 00 04 	bnez r4,7e54 <__swbuf_r+0xe4>
    7e48:	10 89 11 88 	mv r0,r9 -> mv r1,r8
    7e4c:	fe ff f1 78 	bl 442c <_fflush_r>
    7e50:	b0 90 ff e1 	bnez r0,7dd4 <__swbuf_r+0x64>
    7e54:	2e ef 10 8a 	pop lr -> mv r0,r10
    7e58:	2a ef 29 ef 	pop r10 -> pop r9
    7e5c:	28 ef f0 00 	pop r8 || nop
    7e60:	1f ce f0 00 	jmp lr || nop

00007e64 <__swbuf>:
    7e64:	e5 00 a0 ac 	ld24 r5,a0ac <_impure_ptr>
    7e68:	14 80 f0 00 	mv r4,r0 || nop
    7e6c:	20 c5 f0 00 	ld r0,@r5 || nop
    7e70:	2e 7f f0 00 	push lr || nop
    7e74:	12 81 f0 00 	mv r2,r1 || nop
    7e78:	11 84 f0 00 	mv r1,r4 || nop
    7e7c:	fe ff ff bd 	bl 7d70 <__swbuf_r>
    7e80:	2e ef 1f ce 	pop lr -> jmp lr

00007e84 <_wcrtomb_r>:
    7e84:	e4 00 a0 bc 	ld24 r4,a0bc <__wctomb>
    7e88:	28 7f 29 7f 	push r8 -> push r9
    7e8c:	2a 7f 2b 7f 	push r10 -> push r11
    7e90:	2c 7f f0 00 	push r12 || nop
    7e94:	8c c2 ff ff 	and3 r12,r2,#0xffff
    7e98:	2e 7f 4f f0 	push lr -> addi sp,#-16
    7e9c:	18 80 1a 81 	mv r8,r0 -> mv r10,r1
    7ea0:	19 83 f0 00 	mv r9,r3 || nop
    7ea4:	b0 91 00 08 	bnez r1,7ec4 <_wcrtomb_r+0x40>
    7ea8:	2a c4 f0 00 	ld r10,@r4 || nop
    7eac:	fe ff f3 2c 	bl 4b5c <__locale_charset>
    7eb0:	81 af 00 04 	add3 r1,sp,#4
    7eb4:	13 80 29 4f 	mv r3,r0 -> st r9,@sp
    7eb8:	10 88 62 00 	mv r0,r8 -> ldi r2,#0
    7ebc:	1e ca f0 00 	jl r10 || nop
    7ec0:	7f 06 f0 00 	bra 7ed8 <_wcrtomb_r+0x54> || nop
    7ec4:	2b c4 f0 00 	ld r11,@r4 || nop
    7ec8:	fe ff f3 25 	bl 4b5c <__locale_charset>
    7ecc:	13 80 29 4f 	mv r3,r0 -> st r9,@sp
    7ed0:	10 88 11 8a 	mv r0,r8 -> mv r1,r10
    7ed4:	12 8c 1e cb 	mv r2,r12 -> jl r11
    7ed8:	84 a0 00 01 	add3 r4,r0,#1
    7edc:	b0 94 00 05 	bnez r4,7ef0 <_wcrtomb_r+0x6c>
    7ee0:	24 49 f0 00 	st r4,@r9 || nop
    7ee4:	94 f0 00 8a 	ldi r4,#138
    7ee8:	24 48 f0 00 	st r4,@r8 || nop
    7eec:	60 ff f0 00 	ldi r0,#-1 || nop
    7ef0:	4f 10 2e ef 	addi sp,#16 -> pop lr
    7ef4:	2c ef f0 00 	pop r12 || nop
    7ef8:	2b ef 2a ef 	pop r11 -> pop r10
    7efc:	29 ef f0 00 	pop r9 || nop
    7f00:	28 ef f0 00 	pop r8 || nop
    7f04:	1f ce f0 00 	jmp lr || nop

00007f08 <wcrtomb>:
    7f08:	e5 00 a0 ac 	ld24 r5,a0ac <_impure_ptr>
    7f0c:	14 80 f0 00 	mv r4,r0 || nop
    7f10:	20 c5 f0 00 	ld r0,@r5 || nop
    7f14:	2e 7f f0 00 	push lr || nop
    7f18:	13 82 f0 00 	mv r3,r2 || nop
    7f1c:	82 c1 ff ff 	and3 r2,r1,#0xffff
    7f20:	11 84 f0 00 	mv r1,r4 || nop
    7f24:	fe ff ff d8 	bl 7e84 <_wcrtomb_r>
    7f28:	2e ef 1f ce 	pop lr -> jmp lr

00007f2c <__ascii_wctomb>:
    7f2c:	82 c2 ff ff 	and3 r2,r2,#0xffff
    7f30:	b0 81 00 0a 	beqz r1,7f58 <__ascii_wctomb+0x2c>
    7f34:	94 f0 00 ff 	ldi r4,#255
    7f38:	04 52 7d 05 	cmpu r4,r2 -> bnc 7f4c <__ascii_wctomb+0x20>
    7f3c:	94 f0 00 8a 	ldi r4,#138
    7f40:	24 40 f0 00 	st r4,@r0 || nop
    7f44:	60 ff f0 00 	ldi r0,#-1 || nop
    7f48:	1f ce f0 00 	jmp lr || nop
    7f4c:	22 01 f0 00 	stb r2,@r1 || nop
    7f50:	60 01 f0 00 	ldi r0,#1 || nop
    7f54:	1f ce f0 00 	jmp lr || nop
    7f58:	60 00 f0 00 	ldi r0,#0 || nop
    7f5c:	1f ce f0 00 	jmp lr || nop

00007f60 <_wctomb_r>:
    7f60:	e4 00 a0 bc 	ld24 r4,a0bc <__wctomb>
    7f64:	28 7f 29 7f 	push r8 -> push r9
    7f68:	2a 7f 2b 7f 	push r10 -> push r11
    7f6c:	8b c2 ff ff 	and3 r11,r2,#0xffff
    7f70:	2c 7f 2e 7f 	push r12 -> push lr
    7f74:	4f fc f0 00 	addi sp,#-4 || nop
    7f78:	28 c4 f0 00 	ld r8,@r4 || nop
    7f7c:	1c 83 19 80 	mv r12,r3 -> mv r9,r0
    7f80:	1a 81 f0 00 	mv r10,r1 || nop
    7f84:	fe ff f2 f6 	bl 4b5c <__locale_charset>
    7f88:	13 80 2c 4f 	mv r3,r0 -> st r12,@sp
    7f8c:	11 8a 12 8b 	mv r1,r10 -> mv r2,r11
    7f90:	10 89 1e c8 	mv r0,r9 -> jl r8
    7f94:	4f 04 2e ef 	addi sp,#4 -> pop lr
    7f98:	2c ef f0 00 	pop r12 || nop
    7f9c:	2b ef f0 00 	pop r11 || nop
    7fa0:	2a ef f0 00 	pop r10 || nop
    7fa4:	29 ef f0 00 	pop r9 || nop
    7fa8:	28 ef 1f ce 	pop r8 -> jmp lr

00007fac <_fpadd_parts>:
    7fac:	2d 7f 28 7f 	push fp -> push r8
    7fb0:	29 7f 2a 7f 	push r9 -> push r10
    7fb4:	2b 7f 2c 7f 	push r11 -> push r12
    7fb8:	2e 7f f0 00 	push lr || nop
    7fbc:	25 c0 f0 00 	ld r5,@r0 || nop
    7fc0:	67 01 f0 00 	ldi r7,#1 || nop
    7fc4:	4f f0 f0 00 	addi sp,#-16 || nop
    7fc8:	1d 80 f0 00 	mv fp,r0 || nop
    7fcc:	07 55 f0 00 	cmpu r7,r5 || nop
    7fd0:	14 81 1c 82 	mv r4,r1 -> mv r12,r2
    7fd4:	fd 00 00 af 	bnc 8290 <_fpadd_parts+0x2e4>
    7fd8:	26 c1 f0 00 	ld r6,@r1 || nop
    7fdc:	07 56 f0 00 	cmpu r7,r6 || nop
    7fe0:	fd 00 00 ab 	bnc 828c <_fpadd_parts+0x2e0>
    7fe4:	82 a5 ff fc 	add3 r2,r5,#-4
    7fe8:	87 a6 ff fc 	add3 r7,r6,#-4
    7fec:	b0 92 00 07 	bnez r2,8008 <_fpadd_parts+0x5c>
    7ff0:	b0 97 00 a8 	bnez r7,8290 <_fpadd_parts+0x2e4>
    7ff4:	a5 c0 00 04 	ld r5,@(4,r0)
    7ff8:	a4 c1 00 04 	ld r4,@(4,r1)
    7ffc:	b5 04 00 a5 	beq r5,r4,8290 <_fpadd_parts+0x2e4>
    8000:	ed 00 93 68 	ld24 fp,9368 <__thenan_df>
    8004:	ff 00 00 a3 	bra 8290 <_fpadd_parts+0x2e4>
    8008:	b0 87 00 a1 	beqz r7,828c <_fpadd_parts+0x2e0>
    800c:	46 fe 45 fe 	addi r6,#-2 -> addi r5,#-2
    8010:	b0 96 00 0d 	bnez r6,8044 <_fpadd_parts+0x98>
    8014:	b0 95 00 9f 	bnez r5,8290 <_fpadd_parts+0x2e4>
    8018:	a4 4f 00 0c 	st r4,@(12,sp)
    801c:	10 8c f0 00 	mv r0,r12 || nop
    8020:	11 8d f0 00 	mv r1,fp || nop
    8024:	62 14 f0 00 	ldi r2,#20 || nop
    8028:	fe ff f4 d0 	bl 5368 <memcpy>
    802c:	a4 cf 00 0c 	ld r4,@(12,sp)
    8030:	a5 cd 00 04 	ld r5,@(4,fp)
    8034:	a4 c4 00 04 	ld r4,@(4,r4)
    8038:	04 c5 f0 00 	and r4,r5 || nop
    803c:	a4 4c 00 04 	st r4,@(4,r12)
    8040:	ff 00 00 91 	bra 8284 <_fpadd_parts+0x2d8>
    8044:	b0 85 00 92 	beqz r5,828c <_fpadd_parts+0x2e0>
    8048:	a5 c0 00 08 	ld r5,@(8,r0)
    804c:	a7 c1 00 08 	ld r7,@(8,r1)
    8050:	16 85 f0 00 	mv r6,r5 || nop
    8054:	a8 c0 00 0c 	ld r8,@(12,r0)
    8058:	06 27 f0 00 	sub r6,r7 || nop
    805c:	a9 c0 00 10 	ld r9,@(16,r0)
    8060:	13 86 f0 00 	mv r3,r6 || nop
    8064:	aa c1 00 0c 	ld r10,@(12,r1)
    8068:	ab c1 00 10 	ld r11,@(16,r1)
    806c:	b0 b6 00 02 	bgez r6,8074 <_fpadd_parts+0xc8>
    8070:	03 36 f0 00 	neg r3,r6 || nop
    8074:	62 3f 02 43 	ldi r2,#63 -> cmp r2,r3
    8078:	7c 34 f0 00 	bc 8148 <_fpadd_parts+0x19c> || nop
    807c:	b0 c6 00 18 	blez r6,80dc <_fpadd_parts+0x130>
    8080:	a4 4f 00 0c 	st r4,@(12,sp)
    8084:	a5 4f 00 08 	st r5,@(8,sp)
    8088:	12 83 10 8a 	mv r2,r3 -> mv r0,r10
    808c:	11 8b f0 00 	mv r1,r11 || nop
    8090:	23 4f f0 00 	st r3,@sp || nop
    8094:	fe 00 02 d0 	bl 8bd4 <__lshrdi3>
    8098:	23 cf f0 00 	ld r3,@sp || nop
    809c:	17 80 16 81 	mv r7,r0 -> mv r6,r1
    80a0:	a6 4f 00 04 	st r6,@(4,sp)
    80a4:	12 83 60 00 	mv r2,r3 -> ldi r0,#0
    80a8:	61 01 27 4f 	ldi r1,#1 -> st r7,@sp
    80ac:	fe 00 02 db 	bl 8c18 <__ashldi3>
    80b0:	a6 cf 00 04 	ld r6,@(4,sp)
    80b4:	63 01 01 41 	ldi r3,#1 -> cmp r1,r1
    80b8:	62 00 01 13 	ldi r2,#0 -> subx r1,r3
    80bc:	00 12 12 80 	subx r0,r2 -> mv r2,r0
    80c0:	13 81 03 cb 	mv r3,r1 -> and r3,r11
    80c4:	02 ca 02 e3 	and r2,r10 -> or r2,r3
    80c8:	03 32 03 e2 	neg r3,r2 -> or r3,r2
    80cc:	27 cf 53 1f 	ld r7,@sp -> srli r3,#0x1f
    80d0:	1b 83 0b e6 	mv r11,r3 -> or r11,r6
    80d4:	1a 87 f0 00 	mv r10,r7 || nop
    80d8:	7f 19 f0 00 	bra 813c <_fpadd_parts+0x190> || nop
    80dc:	b0 86 00 21 	beqz r6,8160 <_fpadd_parts+0x1b4>
    80e0:	a4 4f 00 0c 	st r4,@(12,sp)
    80e4:	05 a3 f0 00 	add r5,r3 || nop
    80e8:	a5 4f 00 08 	st r5,@(8,sp)
    80ec:	12 83 10 88 	mv r2,r3 -> mv r0,r8
    80f0:	11 89 f0 00 	mv r1,r9 || nop
    80f4:	23 4f f0 00 	st r3,@sp || nop
    80f8:	fe 00 02 b7 	bl 8bd4 <__lshrdi3>
    80fc:	23 cf f0 00 	ld r3,@sp || nop
    8100:	17 80 16 81 	mv r7,r0 -> mv r6,r1
    8104:	a6 4f 00 04 	st r6,@(4,sp)
    8108:	12 83 60 00 	mv r2,r3 -> ldi r0,#0
    810c:	61 01 27 4f 	ldi r1,#1 -> st r7,@sp
    8110:	fe 00 02 c2 	bl 8c18 <__ashldi3>
    8114:	a6 cf 00 04 	ld r6,@(4,sp)
    8118:	63 01 01 41 	ldi r3,#1 -> cmp r1,r1
    811c:	62 00 01 13 	ldi r2,#0 -> subx r1,r3
    8120:	00 12 12 80 	subx r0,r2 -> mv r2,r0
    8124:	13 81 03 c9 	mv r3,r1 -> and r3,r9
    8128:	02 c8 02 e3 	and r2,r8 -> or r2,r3
    812c:	03 32 03 e2 	neg r3,r2 -> or r3,r2
    8130:	27 cf 53 1f 	ld r7,@sp -> srli r3,#0x1f
    8134:	19 83 09 e6 	mv r9,r3 -> or r9,r6
    8138:	18 87 f0 00 	mv r8,r7 || nop
    813c:	a4 cf 00 0c 	ld r4,@(12,sp)
    8140:	a5 cf 00 08 	ld r5,@(8,sp)
    8144:	7f 07 f0 00 	bra 8160 <_fpadd_parts+0x1b4> || nop
    8148:	07 45 7d 03 	cmp r7,r5 -> bnc 8154 <_fpadd_parts+0x1a8>
    814c:	6a 00 f0 00 	ldi r10,#0 || nop
    8150:	6b 00 7f 04 	ldi r11,#0 -> bra 8160 <_fpadd_parts+0x1b4>
    8154:	15 87 f0 00 	mv r5,r7 || nop
    8158:	68 00 f0 00 	ldi r8,#0 || nop
    815c:	69 00 f0 00 	ldi r9,#0 || nop
    8160:	a6 cd 00 04 	ld r6,@(4,fp)
    8164:	a4 c4 00 04 	ld r4,@(4,r4)
    8168:	b6 04 00 2f 	beq r6,r4,8224 <_fpadd_parts+0x278>
    816c:	b0 86 00 06 	beqz r6,8184 <_fpadd_parts+0x1d8>
    8170:	17 8b 0b 4b 	mv r7,r11 -> cmp r11,r11
    8174:	07 19 16 8a 	subx r7,r9 -> mv r6,r10
    8178:	06 18 18 86 	subx r6,r8 -> mv r8,r6
    817c:	19 87 f0 00 	mv r9,r7 || nop
    8180:	7f 03 f0 00 	bra 818c <_fpadd_parts+0x1e0> || nop
    8184:	09 49 09 1b 	cmp r9,r9 -> subx r9,r11
    8188:	08 1a f0 00 	subx r8,r10 || nop
    818c:	b0 a8 00 07 	bltz r8,81a8 <_fpadd_parts+0x1fc>
    8190:	a5 4c 00 08 	st r5,@(8,r12)
    8194:	a8 4c 00 0c 	st r8,@(12,r12)
    8198:	a9 4c 00 10 	st r9,@(16,r12)
    819c:	64 00 f0 00 	ldi r4,#0 || nop
    81a0:	a4 4c 00 04 	st r4,@(4,r12)
    81a4:	7f 13 f0 00 	bra 81f0 <_fpadd_parts+0x244> || nop
    81a8:	a5 4c 00 08 	st r5,@(8,r12)
    81ac:	65 00 f0 00 	ldi r5,#0 || nop
    81b0:	64 01 f0 00 	ldi r4,#1 || nop
    81b4:	a4 4c 00 04 	st r4,@(4,r12)
    81b8:	05 45 05 19 	cmp r5,r5 -> subx r5,r9
    81bc:	a5 4c 00 10 	st r5,@(16,r12)
    81c0:	64 00 04 18 	ldi r4,#0 -> subx r4,r8
    81c4:	a4 4c 00 0c 	st r4,@(12,r12)
    81c8:	7f 0a f0 00 	bra 81f0 <_fpadd_parts+0x244> || nop
    81cc:	96 85 00 1f 	srl3 r6,r5,#31
    81d0:	54 41 04 e6 	slli r4,#0x1 -> or r4,r6
    81d4:	a4 4c 00 0c 	st r4,@(12,r12)
    81d8:	94 c5 00 01 	sll3 r4,r5,#1
    81dc:	a4 4c 00 10 	st r4,@(16,r12)
    81e0:	a4 cc 00 08 	ld r4,@(8,r12)
    81e4:	44 ff f0 00 	addi r4,#-1 || nop
    81e8:	a4 4c 00 08 	st r4,@(8,r12)
    81ec:	7f 05 f0 00 	bra 8200 <_fpadd_parts+0x254> || nop
    81f0:	d8 c0 0f ff 	seth r8,#0xfff
    81f4:	88 e8 ff ff 	or3 r8,r8,#0xffff
    81f8:	62 ff 63 ff 	ldi r2,#-1 -> ldi r3,#-1
    81fc:	69 fe f0 00 	ldi r9,#-2 || nop
    8200:	a5 cc 00 10 	ld r5,@(16,r12)
    8204:	a4 cc 00 0c 	ld r4,@(12,r12)
    8208:	17 85 05 45 	mv r7,r5 -> cmp r5,r5
    820c:	16 84 07 93 	mv r6,r4 -> addx r7,r3
    8210:	06 92 08 56 	addx r6,r2 -> cmpu r8,r6
    8214:	7c 0a f0 00 	bc 823c <_fpadd_parts+0x290> || nop
    8218:	b6 18 ff ed 	bne r6,r8,81cc <_fpadd_parts+0x220>
    821c:	09 57 7d ec 	cmpu r9,r7 -> bnc 81cc <_fpadd_parts+0x220>
    8220:	7f 07 f0 00 	bra 823c <_fpadd_parts+0x290> || nop
    8224:	a6 4c 00 04 	st r6,@(4,r12)
    8228:	a5 4c 00 08 	st r5,@(8,r12)
    822c:	09 49 09 9b 	cmp r9,r9 -> addx r9,r11
    8230:	a9 4c 00 10 	st r9,@(16,r12)
    8234:	08 9a f0 00 	addx r8,r10 || nop
    8238:	a8 4c 00 0c 	st r8,@(12,r12)
    823c:	a6 cc 00 0c 	ld r6,@(12,r12)
    8240:	64 03 f0 00 	ldi r4,#3 || nop
    8244:	a5 cc 00 10 	ld r5,@(16,r12)
    8248:	24 4c f0 00 	st r4,@r12 || nop
    824c:	d4 c0 1f ff 	seth r4,#0x1fff
    8250:	84 e4 ff ff 	or3 r4,r4,#0xffff
    8254:	04 56 7c 02 	cmpu r4,r6 -> bc 825c <_fpadd_parts+0x2b0>
    8258:	7f 0b f0 00 	bra 8284 <_fpadd_parts+0x2d8> || nop
    825c:	97 c6 00 1f 	sll3 r7,r6,#31
    8260:	64 01 04 c5 	ldi r4,#1 -> and r4,r5
    8264:	55 01 05 e7 	srli r5,#0x1 -> or r5,r7
    8268:	04 e5 f0 00 	or r4,r5 || nop
    826c:	a4 4c 00 10 	st r4,@(16,r12)
    8270:	a4 cc 00 08 	ld r4,@(8,r12)
    8274:	56 01 f0 00 	srli r6,#0x1 || nop
    8278:	a6 4c 00 0c 	st r6,@(12,r12)
    827c:	44 01 f0 00 	addi r4,#1 || nop
    8280:	a4 4c 00 08 	st r4,@(8,r12)
    8284:	1d 8c f0 00 	mv fp,r12 || nop
    8288:	7f 02 f0 00 	bra 8290 <_fpadd_parts+0x2e4> || nop
    828c:	1d 84 f0 00 	mv fp,r4 || nop
    8290:	4f 10 2e ef 	addi sp,#16 -> pop lr
    8294:	10 8d 2c ef 	mv r0,fp -> pop r12
    8298:	2b ef 2a ef 	pop r11 -> pop r10
    829c:	29 ef 28 ef 	pop r9 -> pop r8
    82a0:	2d ef 1f ce 	pop fp -> jmp lr

000082a4 <__adddf3>:
    82a4:	2e 7f 4f b4 	push lr -> addi sp,#-76
    82a8:	a0 4f 00 44 	st r0,@(68,sp)
    82ac:	a1 4f 00 48 	st r1,@(72,sp)
    82b0:	80 af 00 44 	add3 r0,sp,#68
    82b4:	81 af 00 28 	add3 r1,sp,#40
    82b8:	a3 4f 00 40 	st r3,@(64,sp)
    82bc:	a2 4f 00 3c 	st r2,@(60,sp)
    82c0:	fe 00 02 e4 	bl 8e50 <__unpack_d>
    82c4:	80 af 00 3c 	add3 r0,sp,#60
    82c8:	81 af 00 14 	add3 r1,sp,#20
    82cc:	fe 00 02 e1 	bl 8e50 <__unpack_d>
    82d0:	81 af 00 14 	add3 r1,sp,#20
    82d4:	80 af 00 28 	add3 r0,sp,#40
    82d8:	12 8f f0 00 	mv r2,sp || nop
    82dc:	fe ff ff 34 	bl 7fac <_fpadd_parts>
    82e0:	fe 00 02 6c 	bl 8c90 <__pack_d>
    82e4:	4f 4c 2e ef 	addi sp,#76 -> pop lr
    82e8:	1f ce f0 00 	jmp lr || nop

000082ec <__subdf3>:
    82ec:	2e 7f 4f b4 	push lr -> addi sp,#-76
    82f0:	a0 4f 00 44 	st r0,@(68,sp)
    82f4:	a1 4f 00 48 	st r1,@(72,sp)
    82f8:	80 af 00 44 	add3 r0,sp,#68
    82fc:	81 af 00 28 	add3 r1,sp,#40
    8300:	a3 4f 00 40 	st r3,@(64,sp)
    8304:	a2 4f 00 3c 	st r2,@(60,sp)
    8308:	fe 00 02 d2 	bl 8e50 <__unpack_d>
    830c:	80 af 00 3c 	add3 r0,sp,#60
    8310:	81 af 00 14 	add3 r1,sp,#20
    8314:	fe 00 02 cf 	bl 8e50 <__unpack_d>
    8318:	a5 cf 00 18 	ld r5,@(24,sp)
    831c:	81 af 00 14 	add3 r1,sp,#20
    8320:	80 af 00 28 	add3 r0,sp,#40
    8324:	64 01 04 d5 	ldi r4,#1 -> xor r4,r5
    8328:	a4 4f 00 18 	st r4,@(24,sp)
    832c:	12 8f f0 00 	mv r2,sp || nop
    8330:	fe ff ff 1f 	bl 7fac <_fpadd_parts>
    8334:	fe 00 02 57 	bl 8c90 <__pack_d>
    8338:	4f 4c 2e ef 	addi sp,#76 -> pop lr
    833c:	1f ce f0 00 	jmp lr || nop

00008340 <__muldf3>:
    8340:	2d 7f 28 7f 	push fp -> push r8
    8344:	29 7f 2a 7f 	push r9 -> push r10
    8348:	2b 7f 2c 7f 	push r11 -> push r12
    834c:	2e 7f 4f ac 	push lr -> addi sp,#-84
    8350:	a0 4f 00 44 	st r0,@(68,sp)
    8354:	a1 4f 00 48 	st r1,@(72,sp)
    8358:	80 af 00 44 	add3 r0,sp,#68
    835c:	81 af 00 28 	add3 r1,sp,#40
    8360:	a2 4f 00 3c 	st r2,@(60,sp)
    8364:	a3 4f 00 40 	st r3,@(64,sp)
    8368:	fe 00 02 ba 	bl 8e50 <__unpack_d>
    836c:	80 af 00 3c 	add3 r0,sp,#60
    8370:	81 af 00 14 	add3 r1,sp,#20
    8374:	fe 00 02 b7 	bl 8e50 <__unpack_d>
    8378:	a5 cf 00 28 	ld r5,@(40,sp)
    837c:	66 01 06 55 	ldi r6,#1 -> cmpu r6,r5
    8380:	7c 01 7f 08 	bc 8384 <__muldf3+0x44> -> bra 83a0 <__muldf3+0x60>
    8384:	a4 cf 00 14 	ld r4,@(20,sp)
    8388:	06 54 7c 02 	cmpu r6,r4 -> bc 8390 <__muldf3+0x50>
    838c:	7f 10 f0 00 	bra 83cc <__muldf3+0x8c> || nop
    8390:	86 a5 ff fc 	add3 r6,r5,#-4
    8394:	b0 96 00 0a 	bnez r6,83bc <__muldf3+0x7c>
    8398:	44 fe f0 00 	addi r4,#-2 || nop
    839c:	b0 84 00 94 	beqz r4,85ec <__muldf3+0x2ac>
    83a0:	a4 cf 00 2c 	ld r4,@(44,sp)
    83a4:	62 00 f0 00 	ldi r2,#0 || nop
    83a8:	a5 cf 00 18 	ld r5,@(24,sp)
    83ac:	04 d5 02 54 	xor r4,r5 -> cmpu r2,r4
    83b0:	14 91 f0 00 	mvfc r4,cbr || nop
    83b4:	a4 4f 00 2c 	st r4,@(44,sp)
    83b8:	7f 11 f0 00 	bra 83fc <__muldf3+0xbc> || nop
    83bc:	86 a4 ff fc 	add3 r6,r4,#-4
    83c0:	45 fe f0 00 	addi r5,#-2 || nop
    83c4:	b0 96 00 08 	bnez r6,83e4 <__muldf3+0xa4>
    83c8:	b0 85 00 89 	beqz r5,85ec <__muldf3+0x2ac>
    83cc:	a5 cf 00 18 	ld r5,@(24,sp)
    83d0:	a4 cf 00 2c 	ld r4,@(44,sp)
    83d4:	04 d5 65 00 	xor r4,r5 -> ldi r5,#0
    83d8:	05 54 14 91 	cmpu r5,r4 -> mvfc r4,cbr
    83dc:	a4 4f 00 18 	st r4,@(24,sp)
    83e0:	7f 0e f0 00 	bra 8418 <__muldf3+0xd8> || nop
    83e4:	a7 cf 00 2c 	ld r7,@(44,sp)
    83e8:	a6 cf 00 18 	ld r6,@(24,sp)
    83ec:	b0 95 00 06 	bnez r5,8404 <__muldf3+0xc4>
    83f0:	06 d7 62 00 	xor r6,r7 -> ldi r2,#0
    83f4:	02 56 16 91 	cmpu r2,r6 -> mvfc r6,cbr
    83f8:	a6 4f 00 2c 	st r6,@(44,sp)
    83fc:	80 af 00 28 	add3 r0,sp,#40
    8400:	7f 7c f0 00 	bra 85f0 <__muldf3+0x2b0> || nop
    8404:	44 fe f0 00 	addi r4,#-2 || nop
    8408:	b0 94 00 06 	bnez r4,8420 <__muldf3+0xe0>
    840c:	06 d7 64 00 	xor r6,r7 -> ldi r4,#0
    8410:	04 56 16 91 	cmpu r4,r6 -> mvfc r6,cbr
    8414:	a6 4f 00 18 	st r6,@(24,sp)
    8418:	80 af 00 14 	add3 r0,sp,#20
    841c:	7f 75 f0 00 	bra 85f0 <__muldf3+0x2b0> || nop
    8420:	ad cf 00 24 	ld fp,@(36,sp)
    8424:	62 00 f0 00 	ldi r2,#0 || nop
    8428:	ab cf 00 38 	ld r11,@(56,sp)
    842c:	13 8d f0 00 	mv r3,fp || nop
    8430:	aa cf 00 20 	ld r10,@(32,sp)
    8434:	11 8b f0 00 	mv r1,r11 || nop
    8438:	ac cf 00 34 	ld r12,@(52,sp)
    843c:	60 00 f0 00 	ldi r0,#0 || nop
    8440:	fe 00 01 ca 	bl 8b68 <__muldi3>
    8444:	13 8b 62 00 	mv r3,r11 -> ldi r2,#0
    8448:	18 80 19 81 	mv r8,r0 -> mv r9,r1
    844c:	60 00 11 8a 	ldi r0,#0 -> mv r1,r10
    8450:	fe 00 01 c6 	bl 8b68 <__muldi3>
    8454:	14 80 f0 00 	mv r4,r0 || nop
    8458:	a4 4f 00 4c 	st r4,@(76,sp)
    845c:	15 81 f0 00 	mv r5,r1 || nop
    8460:	a5 4f 00 50 	st r5,@(80,sp)
    8464:	13 8a 62 00 	mv r3,r10 -> ldi r2,#0
    8468:	60 00 11 8c 	ldi r0,#0 -> mv r1,r12
    846c:	fe 00 01 bf 	bl 8b68 <__muldi3>
    8470:	1a 80 f0 00 	mv r10,r0 || nop
    8474:	1b 81 f0 00 	mv r11,r1 || nop
    8478:	60 00 11 8c 	ldi r0,#0 -> mv r1,r12
    847c:	62 00 13 8d 	ldi r2,#0 -> mv r3,fp
    8480:	fe 00 01 ba 	bl 8b68 <__muldi3>
    8484:	a5 cf 00 50 	ld r5,@(80,sp)
    8488:	01 41 f0 00 	cmp r1,r1 || nop
    848c:	a4 cf 00 4c 	ld r4,@(76,sp)
    8490:	01 95 00 94 	addx r1,r5 -> addx r0,r4
    8494:	00 54 7c 04 	cmpu r0,r4 -> bc 84a4 <__muldf3+0x164>
    8498:	b4 10 00 02 	bne r4,r0,84a0 <__muldf3+0x160>
    849c:	01 55 7c 02 	cmpu r1,r5 -> bc 84a4 <__muldf3+0x164>
    84a0:	66 00 7f 02 	ldi r6,#0 -> bra 84a8 <__muldf3+0x168>
    84a4:	66 01 f0 00 	ldi r6,#1 || nop
    84a8:	65 00 f0 00 	ldi r5,#0 || nop
    84ac:	05 45 f0 00 	cmp r5,r5 || nop
    84b0:	14 81 f0 00 	mv r4,r1 || nop
    84b4:	05 99 04 98 	addx r5,r9 -> addx r4,r8
    84b8:	04 58 f0 00 	cmpu r4,r8 || nop
    84bc:	67 00 f0 00 	ldi r7,#0 || nop
    84c0:	7c 03 f0 00 	bc 84cc <__muldf3+0x18c> || nop
    84c4:	b8 14 00 05 	bne r8,r4,84d8 <__muldf3+0x198>
    84c8:	05 59 7d 04 	cmpu r5,r9 -> bnc 84d8 <__muldf3+0x198>
    84cc:	63 01 07 47 	ldi r3,#1 -> cmp r7,r7
    84d0:	62 00 07 93 	ldi r2,#0 -> addx r7,r3
    84d4:	06 92 f0 00 	addx r6,r2 || nop
    84d8:	0b 4b 0b 90 	cmp r11,r11 -> addx r11,r0
    84dc:	62 00 0a 92 	ldi r2,#0 -> addx r10,r2
    84e0:	a2 cf 00 18 	ld r2,@(24,sp)
    84e4:	0b 4b 0b 97 	cmp r11,r11 -> addx r11,r7
    84e8:	a7 cf 00 1c 	ld r7,@(28,sp)
    84ec:	0a 96 f0 00 	addx r10,r6 || nop
    84f0:	a6 cf 00 30 	ld r6,@(48,sp)
    84f4:	d3 c0 80 00 	seth r3,#0x8000
    84f8:	06 a7 f0 00 	add r6,r7 || nop
    84fc:	a7 cf 00 2c 	ld r7,@(44,sp)
    8500:	46 04 07 d2 	addi r6,#4 -> xor r7,r2
    8504:	62 00 02 57 	ldi r2,#0 -> cmpu r2,r7
    8508:	17 91 f0 00 	mvfc r7,cbr || nop
    850c:	a7 4f 00 04 	st r7,@(4,sp)
    8510:	d7 c0 1f ff 	seth r7,#0x1fff
    8514:	87 e7 ff ff 	or3 r7,r7,#0xffff
    8518:	7f 0e f0 00 	bra 8550 <__muldf3+0x210> || nop
    851c:	62 01 02 cb 	ldi r2,#1 -> and r2,r11
    8520:	b0 82 00 06 	beqz r2,8538 <__muldf3+0x1f8>
    8524:	98 c4 00 1f 	sll3 r8,r4,#31
    8528:	99 84 00 01 	srl3 r9,r4,#1
    852c:	92 85 00 01 	srl3 r2,r5,#1
    8530:	14 89 15 88 	mv r4,r9 -> mv r5,r8
    8534:	04 e3 05 e2 	or r4,r3 -> or r5,r2
    8538:	98 ca 00 1f 	sll3 r8,r10,#31
    853c:	92 8b 00 01 	srl3 r2,r11,#1
    8540:	99 8a 00 01 	srl3 r9,r10,#1
    8544:	1b 88 1a 89 	mv r11,r8 -> mv r10,r9
    8548:	0b e2 f0 00 	or r11,r2 || nop
    854c:	46 01 f0 00 	addi r6,#1 || nop
    8550:	07 5a 7c f3 	cmpu r7,r10 -> bc 851c <__muldf3+0x1dc>
    8554:	d7 c0 0f ff 	seth r7,#0xfff
    8558:	87 e7 ff ff 	or3 r7,r7,#0xffff
    855c:	7f 09 f0 00 	bra 8580 <__muldf3+0x240> || nop
    8560:	62 01 02 eb 	ldi r2,#1 -> or r2,r11
    8564:	1b 82 f0 00 	mv r11,r2 || nop
    8568:	98 85 00 1f 	srl3 r8,r5,#31
    856c:	93 c4 00 01 	sll3 r3,r4,#1
    8570:	92 c5 00 01 	sll3 r2,r5,#1
    8574:	14 88 f0 00 	mv r4,r8 || nop
    8578:	04 e3 15 82 	or r4,r3 -> mv r5,r2
    857c:	46 ff f0 00 	addi r6,#-1 || nop
    8580:	07 5a 7c 08 	cmpu r7,r10 -> bc 85a0 <__muldf3+0x260>
    8584:	98 8b 00 1f 	srl3 r8,r11,#31
    8588:	93 ca 00 01 	sll3 r3,r10,#1
    858c:	92 cb 00 01 	sll3 r2,r11,#1
    8590:	1a 88 f0 00 	mv r10,r8 || nop
    8594:	0a e3 1b 82 	or r10,r3 -> mv r11,r2
    8598:	b0 a4 ff f2 	bltz r4,8560 <__muldf3+0x220>
    859c:	7f f3 f0 00 	bra 8568 <__muldf3+0x228> || nop
    85a0:	a6 4f 00 08 	st r6,@(8,sp)
    85a4:	86 cb 00 ff 	and3 r6,r11,#0xff
    85a8:	46 80 f0 00 	addi r6,#-128 || nop
    85ac:	b0 96 00 0b 	bnez r6,85d8 <__muldf3+0x298>
    85b0:	86 cb 01 00 	and3 r6,r11,#0x100
    85b4:	b0 96 00 09 	bnez r6,85d8 <__muldf3+0x298>
    85b8:	04 e5 f0 00 	or r4,r5 || nop
    85bc:	b0 84 00 07 	beqz r4,85d8 <__muldf3+0x298>
    85c0:	95 f0 00 80 	ldi r5,#128
    85c4:	05 45 05 9b 	cmp r5,r5 -> addx r5,r11
    85c8:	64 00 04 9a 	ldi r4,#0 -> addx r4,r10
    85cc:	1a 84 f0 00 	mv r10,r4 || nop
    85d0:	94 f0 ff 00 	ldi r4,#-256
    85d4:	1b 85 0b c4 	mv r11,r5 -> and r11,r4
    85d8:	aa 4f 00 0c 	st r10,@(12,sp)
    85dc:	ab 4f 00 10 	st r11,@(16,sp)
    85e0:	64 03 24 4f 	ldi r4,#3 -> st r4,@sp
    85e4:	10 8f f0 00 	mv r0,sp || nop
    85e8:	7f 02 f0 00 	bra 85f0 <__muldf3+0x2b0> || nop
    85ec:	e0 00 93 68 	ld24 r0,9368 <__thenan_df>
    85f0:	fe 00 01 a8 	bl 8c90 <__pack_d>
    85f4:	4f 54 f0 00 	addi sp,#84 || nop
    85f8:	2e ef 2c ef 	pop lr -> pop r12
    85fc:	2b ef 2a ef 	pop r11 -> pop r10
    8600:	29 ef 28 ef 	pop r9 -> pop r8
    8604:	2d ef 1f ce 	pop fp -> jmp lr

00008608 <__divdf3>:
    8608:	28 7f 29 7f 	push r8 -> push r9
    860c:	2a 7f 2e 7f 	push r10 -> push lr
    8610:	4f c8 f0 00 	addi sp,#-56 || nop
    8614:	a0 4f 00 30 	st r0,@(48,sp)
    8618:	a1 4f 00 34 	st r1,@(52,sp)
    861c:	80 af 00 30 	add3 r0,sp,#48
    8620:	81 af 00 14 	add3 r1,sp,#20
    8624:	a2 4f 00 28 	st r2,@(40,sp)
    8628:	a3 4f 00 2c 	st r3,@(44,sp)
    862c:	fe 00 02 09 	bl 8e50 <__unpack_d>
    8630:	80 af 00 28 	add3 r0,sp,#40
    8634:	11 8f f0 00 	mv r1,sp || nop
    8638:	fe 00 02 06 	bl 8e50 <__unpack_d>
    863c:	a5 cf 00 14 	ld r5,@(20,sp)
    8640:	66 01 06 55 	ldi r6,#1 -> cmpu r6,r5
    8644:	7c 01 7f 56 	bc 8648 <__divdf3+0x40> -> bra 879c <__divdf3+0x194>
    8648:	24 cf f0 00 	ld r4,@sp || nop
    864c:	06 54 7d 56 	cmpu r6,r4 -> bnc 87a4 <__divdf3+0x19c>
    8650:	a6 cf 00 18 	ld r6,@(24,sp)
    8654:	a7 cf 00 04 	ld r7,@(4,sp)
    8658:	06 d7 f0 00 	xor r6,r7 || nop
    865c:	a6 4f 00 18 	st r6,@(24,sp)
    8660:	86 a5 ff fc 	add3 r6,r5,#-4
    8664:	b0 86 00 03 	beqz r6,8670 <__divdf3+0x68>
    8668:	86 a5 ff fe 	add3 r6,r5,#-2
    866c:	b0 96 00 03 	bnez r6,8678 <__divdf3+0x70>
    8670:	b5 14 00 4b 	bne r5,r4,879c <__divdf3+0x194>
    8674:	7f 4d f0 00 	bra 87a8 <__divdf3+0x1a0> || nop
    8678:	86 a4 ff fc 	add3 r6,r4,#-4
    867c:	b0 96 00 07 	bnez r6,8698 <__divdf3+0x90>
    8680:	a6 4f 00 1c 	st r6,@(28,sp)
    8684:	64 00 f0 00 	ldi r4,#0 || nop
    8688:	a4 4f 00 20 	st r4,@(32,sp)
    868c:	65 00 f0 00 	ldi r5,#0 || nop
    8690:	a5 4f 00 24 	st r5,@(36,sp)
    8694:	7f 42 f0 00 	bra 879c <__divdf3+0x194> || nop
    8698:	44 fe f0 00 	addi r4,#-2 || nop
    869c:	b0 94 00 04 	bnez r4,86ac <__divdf3+0xa4>
    86a0:	64 04 f0 00 	ldi r4,#4 || nop
    86a4:	a4 4f 00 14 	st r4,@(20,sp)
    86a8:	7f 3d f0 00 	bra 879c <__divdf3+0x194> || nop
    86ac:	a6 cf 00 1c 	ld r6,@(28,sp)
    86b0:	a4 cf 00 08 	ld r4,@(8,sp)
    86b4:	a0 cf 00 0c 	ld r0,@(12,sp)
    86b8:	06 24 f0 00 	sub r6,r4 || nop
    86bc:	a4 cf 00 20 	ld r4,@(32,sp)
    86c0:	a6 4f 00 1c 	st r6,@(28,sp)
    86c4:	a5 cf 00 24 	ld r5,@(36,sp)
    86c8:	04 50 f0 00 	cmpu r4,r0 || nop
    86cc:	a1 cf 00 10 	ld r1,@(16,sp)
    86d0:	7c 03 f0 00 	bc 86dc <__divdf3+0xd4> || nop
    86d4:	b0 14 00 09 	bne r0,r4,86f8 <__divdf3+0xf0>
    86d8:	05 51 7d 08 	cmpu r5,r1 -> bnc 86f8 <__divdf3+0xf0>
    86dc:	93 85 00 1f 	srl3 r3,r5,#31
    86e0:	92 c4 00 01 	sll3 r2,r4,#1
    86e4:	97 c5 00 01 	sll3 r7,r5,#1
    86e8:	14 83 f0 00 	mv r4,r3 || nop
    86ec:	46 ff f0 00 	addi r6,#-1 || nop
    86f0:	a6 4f 00 1c 	st r6,@(28,sp)
    86f4:	04 e2 15 87 	or r4,r2 -> mv r5,r7
    86f8:	d2 c0 10 00 	seth r2,#0x1000
    86fc:	6e 3d f0 00 	ldi lr,#61 || nop
    8700:	63 00 f0 00 	ldi r3,#0 || nop
    8704:	66 00 67 00 	ldi r6,#0 -> ldi r7,#0
    8708:	04 50 7c 09 	cmpu r4,r0 -> bc 872c <__divdf3+0x124>
    870c:	b0 14 00 02 	bne r0,r4,8714 <__divdf3+0x10c>
    8710:	05 51 7c 07 	cmpu r5,r1 -> bc 872c <__divdf3+0x124>
    8714:	19 86 18 87 	mv r9,r6 -> mv r8,r7
    8718:	05 45 f0 00 	cmp r5,r5 || nop
    871c:	09 e2 08 e3 	or r9,r2 -> or r8,r3
    8720:	05 11 f0 00 	subx r5,r1 || nop
    8724:	16 89 17 88 	mv r6,r9 -> mv r7,r8
    8728:	04 10 f0 00 	subx r4,r0 || nop
    872c:	99 c2 00 1f 	sll3 r9,r2,#31
    8730:	9a 82 00 01 	srl3 r10,r2,#1
    8734:	98 83 00 01 	srl3 r8,r3,#1
    8738:	12 8a f0 00 	mv r2,r10 || nop
    873c:	9a 85 00 1f 	srl3 r10,r5,#31
    8740:	13 89 f0 00 	mv r3,r9 || nop
    8744:	99 c4 00 01 	sll3 r9,r4,#1
    8748:	03 e8 f0 00 	or r3,r8 || nop
    874c:	98 c5 00 01 	sll3 r8,r5,#1
    8750:	14 8a f0 00 	mv r4,r10 || nop
    8754:	4e ff 04 e9 	addi lr,#-1 -> or r4,r9
    8758:	15 88 f0 00 	mv r5,r8 || nop
    875c:	b0 9e ff eb 	bnez lr,8708 <__divdf3+0x100>
    8760:	82 c7 00 ff 	and3 r2,r7,#0xff
    8764:	42 80 f0 00 	addi r2,#-128 || nop
    8768:	b0 92 00 0b 	bnez r2,8794 <__divdf3+0x18c>
    876c:	82 c7 01 00 	and3 r2,r7,#0x100
    8770:	b0 92 00 09 	bnez r2,8794 <__divdf3+0x18c>
    8774:	04 e8 f0 00 	or r4,r8 || nop
    8778:	b0 84 00 07 	beqz r4,8794 <__divdf3+0x18c>
    877c:	95 f0 00 80 	ldi r5,#128
    8780:	05 45 05 97 	cmp r5,r5 -> addx r5,r7
    8784:	64 00 04 96 	ldi r4,#0 -> addx r4,r6
    8788:	16 84 f0 00 	mv r6,r4 || nop
    878c:	94 f0 ff 00 	ldi r4,#-256
    8790:	17 85 07 c4 	mv r7,r5 -> and r7,r4
    8794:	a6 4f 00 20 	st r6,@(32,sp)
    8798:	a7 4f 00 24 	st r7,@(36,sp)
    879c:	80 af 00 14 	add3 r0,sp,#20
    87a0:	7f 03 f0 00 	bra 87ac <__divdf3+0x1a4> || nop
    87a4:	10 8f 7f 02 	mv r0,sp -> bra 87ac <__divdf3+0x1a4>
    87a8:	e0 00 93 68 	ld24 r0,9368 <__thenan_df>
    87ac:	fe 00 01 39 	bl 8c90 <__pack_d>
    87b0:	4f 38 f0 00 	addi sp,#56 || nop
    87b4:	2e ef 2a ef 	pop lr -> pop r10
    87b8:	29 ef 28 ef 	pop r9 -> pop r8
    87bc:	1f ce f0 00 	jmp lr || nop

000087c0 <__eqdf2>:
    87c0:	2e 7f 4f c8 	push lr -> addi sp,#-56
    87c4:	a0 4f 00 30 	st r0,@(48,sp)
    87c8:	a1 4f 00 34 	st r1,@(52,sp)
    87cc:	80 af 00 30 	add3 r0,sp,#48
    87d0:	81 af 00 14 	add3 r1,sp,#20
    87d4:	a2 4f 00 28 	st r2,@(40,sp)
    87d8:	a3 4f 00 2c 	st r3,@(44,sp)
    87dc:	fe 00 01 9d 	bl 8e50 <__unpack_d>
    87e0:	80 af 00 28 	add3 r0,sp,#40
    87e4:	11 8f f0 00 	mv r1,sp || nop
    87e8:	fe 00 01 9a 	bl 8e50 <__unpack_d>
    87ec:	a5 cf 00 14 	ld r5,@(20,sp)
    87f0:	64 01 04 55 	ldi r4,#1 -> cmpu r4,r5
    87f4:	7d 07 f0 00 	bnc 8810 <__eqdf2+0x50> || nop
    87f8:	25 cf 04 55 	ld r5,@sp -> cmpu r4,r5
    87fc:	7d 05 f0 00 	bnc 8810 <__eqdf2+0x50> || nop
    8800:	80 af 00 14 	add3 r0,sp,#20
    8804:	11 8f f0 00 	mv r1,sp || nop
    8808:	fe 00 01 cd 	bl 8f3c <__fpcmp_parts_d>
    880c:	7f 02 f0 00 	bra 8814 <__eqdf2+0x54> || nop
    8810:	60 01 f0 00 	ldi r0,#1 || nop
    8814:	4f 38 2e ef 	addi sp,#56 -> pop lr
    8818:	1f ce f0 00 	jmp lr || nop

0000881c <__nedf2>:
    881c:	2e 7f 4f c8 	push lr -> addi sp,#-56
    8820:	a0 4f 00 30 	st r0,@(48,sp)
    8824:	a1 4f 00 34 	st r1,@(52,sp)
    8828:	80 af 00 30 	add3 r0,sp,#48
    882c:	81 af 00 14 	add3 r1,sp,#20
    8830:	a2 4f 00 28 	st r2,@(40,sp)
    8834:	a3 4f 00 2c 	st r3,@(44,sp)
    8838:	fe 00 01 86 	bl 8e50 <__unpack_d>
    883c:	80 af 00 28 	add3 r0,sp,#40
    8840:	11 8f f0 00 	mv r1,sp || nop
    8844:	fe 00 01 83 	bl 8e50 <__unpack_d>
    8848:	a5 cf 00 14 	ld r5,@(20,sp)
    884c:	64 01 04 55 	ldi r4,#1 -> cmpu r4,r5
    8850:	7d 07 f0 00 	bnc 886c <__nedf2+0x50> || nop
    8854:	25 cf 04 55 	ld r5,@sp -> cmpu r4,r5
    8858:	7d 05 f0 00 	bnc 886c <__nedf2+0x50> || nop
    885c:	80 af 00 14 	add3 r0,sp,#20
    8860:	11 8f f0 00 	mv r1,sp || nop
    8864:	fe 00 01 b6 	bl 8f3c <__fpcmp_parts_d>
    8868:	7f 02 f0 00 	bra 8870 <__nedf2+0x54> || nop
    886c:	60 01 f0 00 	ldi r0,#1 || nop
    8870:	4f 38 2e ef 	addi sp,#56 -> pop lr
    8874:	1f ce f0 00 	jmp lr || nop

00008878 <__gtdf2>:
    8878:	2e 7f 4f c8 	push lr -> addi sp,#-56
    887c:	a0 4f 00 30 	st r0,@(48,sp)
    8880:	a1 4f 00 34 	st r1,@(52,sp)
    8884:	80 af 00 30 	add3 r0,sp,#48
    8888:	81 af 00 14 	add3 r1,sp,#20
    888c:	a2 4f 00 28 	st r2,@(40,sp)
    8890:	a3 4f 00 2c 	st r3,@(44,sp)
    8894:	fe 00 01 6f 	bl 8e50 <__unpack_d>
    8898:	80 af 00 28 	add3 r0,sp,#40
    889c:	11 8f f0 00 	mv r1,sp || nop
    88a0:	fe 00 01 6c 	bl 8e50 <__unpack_d>
    88a4:	a5 cf 00 14 	ld r5,@(20,sp)
    88a8:	64 01 04 55 	ldi r4,#1 -> cmpu r4,r5
    88ac:	7d 07 f0 00 	bnc 88c8 <__gtdf2+0x50> || nop
    88b0:	25 cf 04 55 	ld r5,@sp -> cmpu r4,r5
    88b4:	7d 05 f0 00 	bnc 88c8 <__gtdf2+0x50> || nop
    88b8:	80 af 00 14 	add3 r0,sp,#20
    88bc:	11 8f f0 00 	mv r1,sp || nop
    88c0:	fe 00 01 9f 	bl 8f3c <__fpcmp_parts_d>
    88c4:	7f 02 f0 00 	bra 88cc <__gtdf2+0x54> || nop
    88c8:	60 ff f0 00 	ldi r0,#-1 || nop
    88cc:	4f 38 2e ef 	addi sp,#56 -> pop lr
    88d0:	1f ce f0 00 	jmp lr || nop

000088d4 <__gedf2>:
    88d4:	2e 7f 4f c8 	push lr -> addi sp,#-56
    88d8:	a0 4f 00 30 	st r0,@(48,sp)
    88dc:	a1 4f 00 34 	st r1,@(52,sp)
    88e0:	80 af 00 30 	add3 r0,sp,#48
    88e4:	81 af 00 14 	add3 r1,sp,#20
    88e8:	a2 4f 00 28 	st r2,@(40,sp)
    88ec:	a3 4f 00 2c 	st r3,@(44,sp)
    88f0:	fe 00 01 58 	bl 8e50 <__unpack_d>
    88f4:	80 af 00 28 	add3 r0,sp,#40
    88f8:	11 8f f0 00 	mv r1,sp || nop
    88fc:	fe 00 01 55 	bl 8e50 <__unpack_d>
    8900:	a5 cf 00 14 	ld r5,@(20,sp)
    8904:	64 01 04 55 	ldi r4,#1 -> cmpu r4,r5
    8908:	7d 07 f0 00 	bnc 8924 <__gedf2+0x50> || nop
    890c:	25 cf 04 55 	ld r5,@sp -> cmpu r4,r5
    8910:	7d 05 f0 00 	bnc 8924 <__gedf2+0x50> || nop
    8914:	80 af 00 14 	add3 r0,sp,#20
    8918:	11 8f f0 00 	mv r1,sp || nop
    891c:	fe 00 01 88 	bl 8f3c <__fpcmp_parts_d>
    8920:	7f 02 f0 00 	bra 8928 <__gedf2+0x54> || nop
    8924:	60 ff f0 00 	ldi r0,#-1 || nop
    8928:	4f 38 2e ef 	addi sp,#56 -> pop lr
    892c:	1f ce f0 00 	jmp lr || nop

00008930 <__ltdf2>:
    8930:	2e 7f 4f c8 	push lr -> addi sp,#-56
    8934:	a0 4f 00 30 	st r0,@(48,sp)
    8938:	a1 4f 00 34 	st r1,@(52,sp)
    893c:	80 af 00 30 	add3 r0,sp,#48
    8940:	81 af 00 14 	add3 r1,sp,#20
    8944:	a2 4f 00 28 	st r2,@(40,sp)
    8948:	a3 4f 00 2c 	st r3,@(44,sp)
    894c:	fe 00 01 41 	bl 8e50 <__unpack_d>
    8950:	80 af 00 28 	add3 r0,sp,#40
    8954:	11 8f f0 00 	mv r1,sp || nop
    8958:	fe 00 01 3e 	bl 8e50 <__unpack_d>
    895c:	a5 cf 00 14 	ld r5,@(20,sp)
    8960:	64 01 04 55 	ldi r4,#1 -> cmpu r4,r5
    8964:	7d 07 f0 00 	bnc 8980 <__ltdf2+0x50> || nop
    8968:	25 cf 04 55 	ld r5,@sp -> cmpu r4,r5
    896c:	7d 05 f0 00 	bnc 8980 <__ltdf2+0x50> || nop
    8970:	80 af 00 14 	add3 r0,sp,#20
    8974:	11 8f f0 00 	mv r1,sp || nop
    8978:	fe 00 01 71 	bl 8f3c <__fpcmp_parts_d>
    897c:	7f 02 f0 00 	bra 8984 <__ltdf2+0x54> || nop
    8980:	60 01 f0 00 	ldi r0,#1 || nop
    8984:	4f 38 2e ef 	addi sp,#56 -> pop lr
    8988:	1f ce f0 00 	jmp lr || nop

0000898c <__floatsidf>:
    898c:	28 7f 29 7f 	push r8 -> push r9
    8990:	2e 7f 4f ec 	push lr -> addi sp,#-20
    8994:	64 03 24 4f 	ldi r4,#3 -> st r4,@sp
    8998:	94 80 00 1f 	srl3 r4,r0,#31
    899c:	a4 4f 00 04 	st r4,@(4,sp)
    89a0:	b0 90 00 03 	bnez r0,89ac <__floatsidf+0x20>
    89a4:	64 02 24 4f 	ldi r4,#2 -> st r4,@sp
    89a8:	7f 18 f0 00 	bra 8a08 <__floatsidf+0x7c> || nop
    89ac:	65 3c f0 00 	ldi r5,#60 || nop
    89b0:	a5 4f 00 08 	st r5,@(8,sp)
    89b4:	b0 84 00 05 	beqz r4,89c8 <__floatsidf+0x3c>
    89b8:	d4 c0 80 00 	seth r4,#0x8000
    89bc:	b0 04 00 16 	beq r0,r4,8a14 <__floatsidf+0x88>
    89c0:	08 30 f0 00 	neg r8,r0 || nop
    89c4:	7f 02 f0 00 	bra 89cc <__floatsidf+0x40> || nop
    89c8:	18 80 f0 00 	mv r8,r0 || nop
    89cc:	10 88 f0 00 	mv r0,r8 || nop
    89d0:	fe 00 00 a0 	bl 8c50 <__clzsi2>
    89d4:	82 a0 00 1d 	add3 r2,r0,#29
    89d8:	19 80 f0 00 	mv r9,r0 || nop
    89dc:	b0 d2 00 05 	bgtz r2,89f0 <__floatsidf+0x64>
    89e0:	a8 4f 00 10 	st r8,@(16,sp)
    89e4:	64 00 f0 00 	ldi r4,#0 || nop
    89e8:	a4 4f 00 0c 	st r4,@(12,sp)
    89ec:	7f 07 f0 00 	bra 8a08 <__floatsidf+0x7c> || nop
    89f0:	60 00 11 88 	ldi r0,#0 -> mv r1,r8
    89f4:	fe 00 00 89 	bl 8c18 <__ashldi3>
    89f8:	a0 4f 00 0c 	st r0,@(12,sp)
    89fc:	a1 4f 00 10 	st r1,@(16,sp)
    8a00:	64 1f 04 29 	ldi r4,#31 -> sub r4,r9
    8a04:	a4 4f 00 08 	st r4,@(8,sp)
    8a08:	10 8f f0 00 	mv r0,sp || nop
    8a0c:	fe 00 00 a1 	bl 8c90 <__pack_d>
    8a10:	7f 03 f0 00 	bra 8a1c <__floatsidf+0x90> || nop
    8a14:	d0 c0 c1 e0 	seth r0,#0xc1e0
    8a18:	61 00 f0 00 	ldi r1,#0 || nop
    8a1c:	4f 14 2e ef 	addi sp,#20 -> pop lr
    8a20:	29 ef 28 ef 	pop r9 -> pop r8
    8a24:	1f ce f0 00 	jmp lr || nop

00008a28 <__fixdfsi>:
    8a28:	2e 7f 4f e4 	push lr -> addi sp,#-28
    8a2c:	a0 4f 00 14 	st r0,@(20,sp)
    8a30:	a1 4f 00 18 	st r1,@(24,sp)
    8a34:	80 af 00 14 	add3 r0,sp,#20
    8a38:	11 8f f0 00 	mv r1,sp || nop
    8a3c:	fe 00 01 05 	bl 8e50 <__unpack_d>
    8a40:	24 cf f0 00 	ld r4,@sp || nop
    8a44:	85 a4 ff fe 	add3 r5,r4,#-2
    8a48:	b0 85 00 1a 	beqz r5,8ab0 <__fixdfsi+0x88>
    8a4c:	65 01 05 54 	ldi r5,#1 -> cmpu r5,r4
    8a50:	7d 18 f0 00 	bnc 8ab0 <__fixdfsi+0x88> || nop
    8a54:	44 fc f0 00 	addi r4,#-4 || nop
    8a58:	b0 94 00 05 	bnez r4,8a6c <__fixdfsi+0x44>
    8a5c:	a4 cf 00 04 	ld r4,@(4,sp)
    8a60:	b0 84 00 11 	beqz r4,8aa4 <__fixdfsi+0x7c>
    8a64:	d0 c0 80 00 	seth r0,#0x8000
    8a68:	7f 13 f0 00 	bra 8ab4 <__fixdfsi+0x8c> || nop
    8a6c:	a4 cf 00 08 	ld r4,@(8,sp)
    8a70:	b0 a4 00 10 	bltz r4,8ab0 <__fixdfsi+0x88>
    8a74:	65 1e 05 44 	ldi r5,#30 -> cmp r5,r4
    8a78:	7c f9 f0 00 	bc 8a5c <__fixdfsi+0x34> || nop
    8a7c:	a0 cf 00 0c 	ld r0,@(12,sp)
    8a80:	62 3c f0 00 	ldi r2,#60 || nop
    8a84:	a1 cf 00 10 	ld r1,@(16,sp)
    8a88:	02 24 f0 00 	sub r2,r4 || nop
    8a8c:	fe 00 00 52 	bl 8bd4 <__lshrdi3>
    8a90:	a4 cf 00 04 	ld r4,@(4,sp)
    8a94:	10 81 f0 00 	mv r0,r1 || nop
    8a98:	b0 84 00 07 	beqz r4,8ab4 <__fixdfsi+0x8c>
    8a9c:	00 31 f0 00 	neg r0,r1 || nop
    8aa0:	7f 05 f0 00 	bra 8ab4 <__fixdfsi+0x8c> || nop
    8aa4:	d0 c0 7f ff 	seth r0,#0x7fff
    8aa8:	80 e0 ff ff 	or3 r0,r0,#0xffff
    8aac:	7f 02 f0 00 	bra 8ab4 <__fixdfsi+0x8c> || nop
    8ab0:	60 00 f0 00 	ldi r0,#0 || nop
    8ab4:	4f 1c f0 00 	addi sp,#28 || nop
    8ab8:	2e ef 1f ce 	pop lr -> jmp lr

00008abc <__floatunsidf>:
    8abc:	28 7f 29 7f 	push r8 -> push r9
    8ac0:	2a 7f 2b 7f 	push r10 -> push r11
    8ac4:	2e 7f 4f ec 	push lr -> addi sp,#-20
    8ac8:	64 00 f0 00 	ldi r4,#0 || nop
    8acc:	a4 4f 00 04 	st r4,@(4,sp)
    8ad0:	18 80 f0 00 	mv r8,r0 || nop
    8ad4:	b0 90 00 03 	bnez r0,8ae0 <__floatunsidf+0x24>
    8ad8:	64 02 24 4f 	ldi r4,#2 -> st r4,@sp
    8adc:	7f 1d f0 00 	bra 8b50 <__floatunsidf+0x94> || nop
    8ae0:	64 03 24 4f 	ldi r4,#3 -> st r4,@sp
    8ae4:	64 3c f0 00 	ldi r4,#60 || nop
    8ae8:	a4 4f 00 08 	st r4,@(8,sp)
    8aec:	fe 00 00 59 	bl 8c50 <__clzsi2>
    8af0:	82 a0 00 1d 	add3 r2,r0,#29
    8af4:	19 80 f0 00 	mv r9,r0 || nop
    8af8:	b0 b2 00 0c 	bgez r2,8b28 <__floatunsidf+0x6c>
    8afc:	0a 32 12 8a 	neg r10,r2 -> mv r2,r10
    8b00:	60 00 61 01 	ldi r0,#0 -> ldi r1,#1
    8b04:	fe 00 00 45 	bl 8c18 <__ashldi3>
    8b08:	41 ff 01 c8 	addi r1,#-1 -> and r1,r8
    8b0c:	04 31 04 e1 	neg r4,r1 -> or r4,r1
    8b10:	9b 84 00 1f 	srl3 r11,r4,#31
    8b14:	60 00 11 88 	ldi r0,#0 -> mv r1,r8
    8b18:	12 8a f0 00 	mv r2,r10 || nop
    8b1c:	fe 00 00 2e 	bl 8bd4 <__lshrdi3>
    8b20:	a0 4f 00 0c 	st r0,@(12,sp)
    8b24:	01 eb 7f 08 	or r1,r11 -> bra 8b44 <__floatunsidf+0x88>
    8b28:	b0 92 00 04 	bnez r2,8b38 <__floatunsidf+0x7c>
    8b2c:	a2 4f 00 0c 	st r2,@(12,sp)
    8b30:	a8 4f 00 10 	st r8,@(16,sp)
    8b34:	7f 07 f0 00 	bra 8b50 <__floatunsidf+0x94> || nop
    8b38:	60 00 11 88 	ldi r0,#0 -> mv r1,r8
    8b3c:	fe 00 00 37 	bl 8c18 <__ashldi3>
    8b40:	a0 4f 00 0c 	st r0,@(12,sp)
    8b44:	a1 4f 00 10 	st r1,@(16,sp)
    8b48:	64 1f 04 29 	ldi r4,#31 -> sub r4,r9
    8b4c:	a4 4f 00 08 	st r4,@(8,sp)
    8b50:	10 8f f0 00 	mv r0,sp || nop
    8b54:	fe 00 00 4f 	bl 8c90 <__pack_d>
    8b58:	4f 14 2e ef 	addi sp,#20 -> pop lr
    8b5c:	2b ef 2a ef 	pop r11 -> pop r10
    8b60:	29 ef 28 ef 	pop r9 -> pop r8
    8b64:	1f ce f0 00 	jmp lr || nop

00008b68 <__muldi3>:
    8b68:	85 c3 ff ff 	and3 r5,r3,#0xffff
    8b6c:	84 c1 ff ff 	and3 r4,r1,#0xffff
    8b70:	96 81 00 10 	srl3 r6,r1,#16
    8b74:	17 85 f0 00 	mv r7,r5 || nop
    8b78:	2e 7f f0 00 	push lr || nop
    8b7c:	9e 83 00 10 	srl3 lr,r3,#16
    8b80:	15 66 f0 00 	mul r5,r6 || nop
    8b84:	17 64 f0 00 	mul r7,r4 || nop
    8b88:	14 6e f0 00 	mul r4,lr || nop
    8b8c:	16 6e f0 00 	mul r6,lr || nop
    8b90:	9e 87 00 10 	srl3 lr,r7,#16
    8b94:	04 a5 f0 00 	add r4,r5 || nop
    8b98:	04 ae f0 00 	add r4,lr || nop
    8b9c:	04 55 7d 03 	cmpu r4,r5 -> bnc 8ba8 <__muldi3+0x40>
    8ba0:	e5 01 00 00 	ld24 r5,10000 <__end+0x1af0>
    8ba4:	06 a5 f0 00 	add r6,r5 || nop
    8ba8:	95 84 00 10 	srl3 r5,r4,#16
    8bac:	87 c7 ff ff 	and3 r7,r7,#0xffff
    8bb0:	10 63 f0 00 	mul r0,r3 || nop
    8bb4:	12 61 f0 00 	mul r2,r1 || nop
    8bb8:	54 50 f0 00 	slli r4,#0x10 || nop
    8bbc:	02 a0 f0 00 	add r2,r0 || nop
    8bc0:	2e ef f0 00 	pop lr || nop
    8bc4:	05 a6 f0 00 	add r5,r6 || nop
    8bc8:	10 82 11 84 	mv r0,r2 -> mv r1,r4
    8bcc:	00 a5 01 a7 	add r0,r5 -> add r1,r7
    8bd0:	1f ce f0 00 	jmp lr || nop

00008bd4 <__lshrdi3>:
    8bd4:	b0 82 00 10 	beqz r2,8c14 <__lshrdi3+0x40>
    8bd8:	64 20 04 22 	ldi r4,#32 -> sub r4,r2
    8bdc:	b0 d4 00 06 	bgtz r4,8bf4 <__lshrdi3+0x20>
    8be0:	04 34 f0 00 	neg r4,r4 || nop
    8be4:	10 04 f0 00 	srl r0,r4 || nop
    8be8:	65 00 f0 00 	ldi r5,#0 || nop
    8bec:	14 80 f0 00 	mv r4,r0 || nop
    8bf0:	7f 07 f0 00 	bra 8c0c <__lshrdi3+0x38> || nop
    8bf4:	15 80 f0 00 	mv r5,r0 || nop
    8bf8:	10 44 f0 00 	sll r0,r4 || nop
    8bfc:	14 80 f0 00 	mv r4,r0 || nop
    8c00:	11 02 f0 00 	srl r1,r2 || nop
    8c04:	15 02 f0 00 	srl r5,r2 || nop
    8c08:	04 e1 f0 00 	or r4,r1 || nop
    8c0c:	10 85 f0 00 	mv r0,r5 || nop
    8c10:	11 84 f0 00 	mv r1,r4 || nop
    8c14:	1f ce f0 00 	jmp lr || nop

00008c18 <__ashldi3>:
    8c18:	b0 82 00 0d 	beqz r2,8c4c <__ashldi3+0x34>
    8c1c:	64 20 04 22 	ldi r4,#32 -> sub r4,r2
    8c20:	b0 d4 00 04 	bgtz r4,8c30 <__ashldi3+0x18>
    8c24:	04 34 f0 00 	neg r4,r4 || nop
    8c28:	65 00 f0 00 	ldi r5,#0 || nop
    8c2c:	11 44 7f 06 	sll r1,r4 -> bra 8c44 <__ashldi3+0x2c>
    8c30:	15 81 f0 00 	mv r5,r1 || nop
    8c34:	10 42 f0 00 	sll r0,r2 || nop
    8c38:	11 04 f0 00 	srl r1,r4 || nop
    8c3c:	15 42 f0 00 	sll r5,r2 || nop
    8c40:	01 e0 f0 00 	or r1,r0 || nop
    8c44:	10 81 f0 00 	mv r0,r1 || nop
    8c48:	11 85 f0 00 	mv r1,r5 || nop
    8c4c:	1f ce f0 00 	jmp lr || nop

00008c50 <__clzsi2>:
    8c50:	e4 00 ff ff 	ld24 r4,ffff <__end+0x1aef>
    8c54:	04 50 7c 04 	cmpu r4,r0 -> bc 8c64 <__clzsi2+0x14>
    8c58:	94 f0 00 ff 	ldi r4,#255
    8c5c:	04 50 14 91 	cmpu r4,r0 -> mvfc r4,cbr
    8c60:	54 43 7f 05 	slli r4,#0x3 -> bra 8c74 <__clzsi2+0x24>
    8c64:	e4 ff ff ff 	ld24 r4,ffffff <__end+0xff1aef>
    8c68:	04 50 7c 02 	cmpu r4,r0 -> bc 8c70 <__clzsi2+0x20>
    8c6c:	64 10 7f 02 	ldi r4,#16 -> bra 8c74 <__clzsi2+0x24>
    8c70:	64 18 f0 00 	ldi r4,#24 || nop
    8c74:	e6 00 93 7c 	ld24 r6,937c <__clz_tab>
    8c78:	10 04 f0 00 	srl r0,r4 || nop
    8c7c:	65 20 05 24 	ldi r5,#32 -> sub r5,r4
    8c80:	14 80 f0 00 	mv r4,r0 || nop
    8c84:	04 a6 24 94 	add r4,r6 -> ldub r4,@r4
    8c88:	10 85 00 24 	mv r0,r5 -> sub r0,r4
    8c8c:	1f ce f0 00 	jmp lr || nop

00008c90 <__pack_d>:
    8c90:	2d 7f 28 7f 	push fp -> push r8
    8c94:	29 7f 2a 7f 	push r9 -> push r10
    8c98:	2b 7f 2c 7f 	push r11 -> push r12
    8c9c:	2e 7f f0 00 	push lr || nop
    8ca0:	a8 c0 00 0c 	ld r8,@(12,r0)
    8ca4:	65 01 f0 00 	ldi r5,#1 || nop
    8ca8:	a9 c0 00 10 	ld r9,@(16,r0)
    8cac:	aa c0 00 04 	ld r10,@(4,r0)
    8cb0:	24 c0 f0 00 	ld r4,@r0 || nop
    8cb4:	05 54 7c 05 	cmpu r5,r4 -> bc 8cc8 <__pack_d+0x38>
    8cb8:	e4 08 00 00 	ld24 r4,80000 <__end+0x71af0>
    8cbc:	96 f0 07 ff 	ldi r6,#2047
    8cc0:	04 e8 18 84 	or r4,r8 -> mv r8,r4
    8cc4:	7f 55 f0 00 	bra 8e18 <__pack_d+0x188> || nop
    8cc8:	85 a4 ff fc 	add3 r5,r4,#-4
    8ccc:	b0 85 00 50 	beqz r5,8e0c <__pack_d+0x17c>
    8cd0:	44 fe f0 00 	addi r4,#-2 || nop
    8cd4:	b0 84 00 4c 	beqz r4,8e04 <__pack_d+0x174>
    8cd8:	14 88 04 e9 	mv r4,r8 -> or r4,r9
    8cdc:	b0 84 00 4b 	beqz r4,8e08 <__pack_d+0x178>
    8ce0:	a6 c0 00 08 	ld r6,@(8,r0)
    8ce4:	80 46 fc 02 	cmpi r6,#-1022
    8ce8:	7d 2a f0 00 	bnc 8d90 <__pack_d+0x100> || nop
    8cec:	9d f0 fc 02 	ldi fp,#-1022
    8cf0:	0d 26 f0 00 	sub fp,r6 || nop
    8cf4:	64 38 04 4d 	ldi r4,#56 -> cmp r4,fp
    8cf8:	7c 12 f0 00 	bc 8d40 <__pack_d+0xb0> || nop
    8cfc:	12 8d 10 88 	mv r2,fp -> mv r0,r8
    8d00:	11 89 f0 00 	mv r1,r9 || nop
    8d04:	fe ff ff b4 	bl 8bd4 <__lshrdi3>
    8d08:	1c 80 1b 81 	mv r12,r0 -> mv r11,r1
    8d0c:	60 00 61 01 	ldi r0,#0 -> ldi r1,#1
    8d10:	12 8d f0 00 	mv r2,fp || nop
    8d14:	fe ff ff c1 	bl 8c18 <__ashldi3>
    8d18:	65 01 01 41 	ldi r5,#1 -> cmp r1,r1
    8d1c:	64 00 01 15 	ldi r4,#0 -> subx r1,r5
    8d20:	00 14 14 80 	subx r0,r4 -> mv r4,r0
    8d24:	15 81 05 c9 	mv r5,r1 -> and r5,r9
    8d28:	04 c8 04 e5 	and r4,r8 -> or r4,r5
    8d2c:	05 34 05 e4 	neg r5,r4 -> or r5,r4
    8d30:	96 85 00 1f 	srl3 r6,r5,#31
    8d34:	15 86 14 8c 	mv r5,r6 -> mv r4,r12
    8d38:	05 eb f0 00 	or r5,r11 || nop
    8d3c:	7f 02 f0 00 	bra 8d44 <__pack_d+0xb4> || nop
    8d40:	64 00 65 00 	ldi r4,#0 -> ldi r5,#0
    8d44:	86 c5 00 ff 	and3 r6,r5,#0xff
    8d48:	46 80 f0 00 	addi r6,#-128 || nop
    8d4c:	b0 96 00 05 	bnez r6,8d60 <__pack_d+0xd0>
    8d50:	86 c5 01 00 	and3 r6,r5,#0x100
    8d54:	b0 86 00 06 	beqz r6,8d6c <__pack_d+0xdc>
    8d58:	97 f0 00 80 	ldi r7,#128
    8d5c:	66 00 7f 02 	ldi r6,#0 -> bra 8d64 <__pack_d+0xd4>
    8d60:	66 00 67 7f 	ldi r6,#0 -> ldi r7,#127
    8d64:	05 45 05 97 	cmp r5,r5 -> addx r5,r7
    8d68:	04 96 f0 00 	addx r4,r6 || nop
    8d6c:	d7 c0 0f ff 	seth r7,#0xfff
    8d70:	87 e7 ff ff 	or3 r7,r7,#0xffff
    8d74:	07 54 66 01 	cmpu r7,r4 -> ldi r6,#1
    8d78:	7c 01 66 00 	bc 8d7c <__pack_d+0xec> -> ldi r6,#0
    8d7c:	97 c4 00 18 	sll3 r7,r4,#24
    8d80:	99 85 00 08 	srl3 r9,r5,#8
    8d84:	98 84 00 08 	srl3 r8,r4,#8
    8d88:	09 e7 f0 00 	or r9,r7 || nop
    8d8c:	7f 23 f0 00 	bra 8e18 <__pack_d+0x188> || nop
    8d90:	94 f0 03 ff 	ldi r4,#1023
    8d94:	04 46 7c 1e 	cmp r4,r6 -> bc 8e0c <__pack_d+0x17c>
    8d98:	84 c9 00 ff 	and3 r4,r9,#0xff
    8d9c:	44 80 f0 00 	addi r4,#-128 || nop
    8da0:	b0 94 00 05 	bnez r4,8db4 <__pack_d+0x124>
    8da4:	84 c9 01 00 	and3 r4,r9,#0x100
    8da8:	b0 84 00 06 	beqz r4,8dc0 <__pack_d+0x130>
    8dac:	95 f0 00 80 	ldi r5,#128
    8db0:	64 00 7f 02 	ldi r4,#0 -> bra 8db8 <__pack_d+0x128>
    8db4:	64 00 65 7f 	ldi r4,#0 -> ldi r5,#127
    8db8:	09 49 09 95 	cmp r9,r9 -> addx r9,r5
    8dbc:	08 94 f0 00 	addx r8,r4 || nop
    8dc0:	d4 c0 1f ff 	seth r4,#0x1fff
    8dc4:	84 e4 ff ff 	or3 r4,r4,#0xffff
    8dc8:	04 58 7c 03 	cmpu r4,r8 -> bc 8dd4 <__pack_d+0x144>
    8dcc:	86 a6 03 ff 	add3 r6,r6,#1023
    8dd0:	7f 07 f0 00 	bra 8dec <__pack_d+0x15c> || nop
    8dd4:	95 c8 00 1f 	sll3 r5,r8,#31
    8dd8:	94 89 00 01 	srl3 r4,r9,#1
    8ddc:	97 88 00 01 	srl3 r7,r8,#1
    8de0:	86 a6 04 00 	add3 r6,r6,#1024
    8de4:	19 85 18 87 	mv r9,r5 -> mv r8,r7
    8de8:	09 e4 f0 00 	or r9,r4 || nop
    8dec:	95 c8 00 18 	sll3 r5,r8,#24
    8df0:	94 89 00 08 	srl3 r4,r9,#8
    8df4:	97 88 00 08 	srl3 r7,r8,#8
    8df8:	19 85 18 87 	mv r9,r5 -> mv r8,r7
    8dfc:	09 e4 f0 00 	or r9,r4 || nop
    8e00:	7f 06 f0 00 	bra 8e18 <__pack_d+0x188> || nop
    8e04:	66 00 7f 03 	ldi r6,#0 -> bra 8e10 <__pack_d+0x180>
    8e08:	66 00 7f 04 	ldi r6,#0 -> bra 8e18 <__pack_d+0x188>
    8e0c:	96 f0 07 ff 	ldi r6,#2047
    8e10:	68 00 f0 00 	ldi r8,#0 || nop
    8e14:	69 00 f0 00 	ldi r9,#0 || nop
    8e18:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    8e1c:	2e ef f0 00 	pop lr || nop
    8e20:	04 c8 f0 00 	and r4,r8 || nop
    8e24:	5a 5f f0 00 	slli r10,#0x1f || nop
    8e28:	04 ea f0 00 	or r4,r10 || nop
    8e2c:	2c ef f0 00 	pop r12 || nop
    8e30:	11 89 f0 00 	mv r1,r9 || nop
    8e34:	56 54 f0 00 	slli r6,#0x14 || nop
    8e38:	10 84 f0 00 	mv r0,r4 || nop
    8e3c:	2b ef f0 00 	pop r11 || nop
    8e40:	00 e6 f0 00 	or r0,r6 || nop
    8e44:	2a ef 29 ef 	pop r10 -> pop r9
    8e48:	28 ef f0 00 	pop r8 || nop
    8e4c:	2d ef 1f ce 	pop fp -> jmp lr

00008e50 <__unpack_d>:
    8e50:	a5 c0 00 04 	ld r5,@(4,r0)
    8e54:	e4 0f ff ff 	ld24 r4,fffff <__end+0xf1aef>
    8e58:	27 c0 f0 00 	ld r7,@r0 || nop
    8e5c:	96 87 00 14 	srl3 r6,r7,#20
    8e60:	92 87 00 1f 	srl3 r2,r7,#31
    8e64:	86 c6 07 ff 	and3 r6,r6,#0x7ff
    8e68:	a2 41 00 04 	st r2,@(4,r1)
    8e6c:	04 c7 f0 00 	and r4,r7 || nop
    8e70:	b0 96 00 18 	bnez r6,8ed0 <__unpack_d+0x80>
    8e74:	16 84 f0 00 	mv r6,r4 || nop
    8e78:	06 e5 f0 00 	or r6,r5 || nop
    8e7c:	b0 96 00 03 	bnez r6,8e88 <__unpack_d+0x38>
    8e80:	64 02 f0 00 	ldi r4,#2 || nop
    8e84:	7f 19 f0 00 	bra 8ee8 <__unpack_d+0x98> || nop
    8e88:	96 f0 fc 02 	ldi r6,#-1022
    8e8c:	a6 41 00 08 	st r6,@(8,r1)
    8e90:	96 85 00 18 	srl3 r6,r5,#24
    8e94:	54 48 f0 00 	slli r4,#0x8 || nop
    8e98:	04 e6 f0 00 	or r4,r6 || nop
    8e9c:	66 03 26 41 	ldi r6,#3 -> st r6,@r1
    8ea0:	d6 c0 0f ff 	seth r6,#0xfff
    8ea4:	86 e6 ff ff 	or3 r6,r6,#0xffff
    8ea8:	55 48 f0 00 	slli r5,#0x8 || nop
    8eac:	06 54 7c 15 	cmpu r6,r4 -> bc 8f00 <__unpack_d+0xb0>
    8eb0:	97 85 00 1f 	srl3 r7,r5,#31
    8eb4:	54 41 f0 00 	slli r4,#0x1 || nop
    8eb8:	04 e7 f0 00 	or r4,r7 || nop
    8ebc:	a7 c1 00 08 	ld r7,@(8,r1)
    8ec0:	55 41 f0 00 	slli r5,#0x1 || nop
    8ec4:	47 ff f0 00 	addi r7,#-1 || nop
    8ec8:	a7 41 00 08 	st r7,@(8,r1)
    8ecc:	7f f8 f0 00 	bra 8eac <__unpack_d+0x5c> || nop
    8ed0:	82 a6 f8 01 	add3 r2,r6,#-2047
    8ed4:	b0 92 00 0d 	bnez r2,8f08 <__unpack_d+0xb8>
    8ed8:	16 84 f0 00 	mv r6,r4 || nop
    8edc:	06 e5 f0 00 	or r6,r5 || nop
    8ee0:	b0 96 00 03 	bnez r6,8eec <__unpack_d+0x9c>
    8ee4:	64 04 f0 00 	ldi r4,#4 || nop
    8ee8:	24 41 1f ce 	st r4,@r1 -> jmp lr
    8eec:	e6 08 00 00 	ld24 r6,80000 <__end+0x71af0>
    8ef0:	06 c7 f0 00 	and r6,r7 || nop
    8ef4:	b0 86 00 02 	beqz r6,8efc <__unpack_d+0xac>
    8ef8:	66 01 f0 00 	ldi r6,#1 || nop
    8efc:	26 41 f0 00 	st r6,@r1 || nop
    8f00:	a4 41 00 0c 	st r4,@(12,r1)
    8f04:	7f 0c f0 00 	bra 8f34 <__unpack_d+0xe4> || nop
    8f08:	86 a6 fc 01 	add3 r6,r6,#-1023
    8f0c:	a6 41 00 08 	st r6,@(8,r1)
    8f10:	66 03 f0 00 	ldi r6,#3 || nop
    8f14:	54 48 f0 00 	slli r4,#0x8 || nop
    8f18:	26 41 f0 00 	st r6,@r1 || nop
    8f1c:	96 85 00 18 	srl3 r6,r5,#24
    8f20:	06 e4 f0 00 	or r6,r4 || nop
    8f24:	d4 c0 10 00 	seth r4,#0x1000
    8f28:	06 e4 f0 00 	or r6,r4 || nop
    8f2c:	a6 41 00 0c 	st r6,@(12,r1)
    8f30:	55 48 f0 00 	slli r5,#0x8 || nop
    8f34:	a5 41 00 10 	st r5,@(16,r1)
    8f38:	1f ce f0 00 	jmp lr || nop

00008f3c <__fpcmp_parts_d>:
    8f3c:	25 c0 f0 00 	ld r5,@r0 || nop
    8f40:	66 01 06 55 	ldi r6,#1 -> cmpu r6,r5
    8f44:	7c 01 7f 2d 	bc 8f48 <__fpcmp_parts_d+0xc> -> bra 8ff8 <__fpcmp_parts_d+0xbc>
    8f48:	24 c1 f0 00 	ld r4,@r1 || nop
    8f4c:	06 54 7d 2b 	cmpu r6,r4 -> bnc 8ff8 <__fpcmp_parts_d+0xbc>
    8f50:	87 a5 ff fc 	add3 r7,r5,#-4
    8f54:	86 a4 ff fc 	add3 r6,r4,#-4
    8f58:	b0 97 00 07 	bnez r7,8f74 <__fpcmp_parts_d+0x38>
    8f5c:	b0 96 00 04 	bnez r6,8f6c <__fpcmp_parts_d+0x30>
    8f60:	a4 c1 00 04 	ld r4,@(4,r1)
    8f64:	a5 c0 00 04 	ld r5,@(4,r0)
    8f68:	04 25 7f 26 	sub r4,r5 -> bra 9000 <__fpcmp_parts_d+0xc4>
    8f6c:	a4 c0 00 04 	ld r4,@(4,r0)
    8f70:	7f 1b f0 00 	bra 8fdc <__fpcmp_parts_d+0xa0> || nop
    8f74:	b0 96 00 03 	bnez r6,8f80 <__fpcmp_parts_d+0x44>
    8f78:	a4 c1 00 04 	ld r4,@(4,r1)
    8f7c:	7f 1d f0 00 	bra 8ff0 <__fpcmp_parts_d+0xb4> || nop
    8f80:	45 fe 44 fe 	addi r5,#-2 -> addi r4,#-2
    8f84:	b0 95 00 03 	bnez r5,8f90 <__fpcmp_parts_d+0x54>
    8f88:	b0 94 ff fc 	bnez r4,8f78 <__fpcmp_parts_d+0x3c>
    8f8c:	7f 1c f0 00 	bra 8ffc <__fpcmp_parts_d+0xc0> || nop
    8f90:	b0 84 ff f7 	beqz r4,8f6c <__fpcmp_parts_d+0x30>
    8f94:	a4 c0 00 04 	ld r4,@(4,r0)
    8f98:	a5 c1 00 04 	ld r5,@(4,r1)
    8f9c:	b4 05 00 02 	beq r4,r5,8fa4 <__fpcmp_parts_d+0x68>
    8fa0:	7f 0f f0 00 	bra 8fdc <__fpcmp_parts_d+0xa0> || nop
    8fa4:	a6 c0 00 08 	ld r6,@(8,r0)
    8fa8:	a5 c1 00 08 	ld r5,@(8,r1)
    8fac:	05 46 7d 02 	cmp r5,r6 -> bnc 8fb4 <__fpcmp_parts_d+0x78>
    8fb0:	7f 0b f0 00 	bra 8fdc <__fpcmp_parts_d+0xa0> || nop
    8fb4:	06 45 7d 02 	cmp r6,r5 -> bnc 8fbc <__fpcmp_parts_d+0x80>
    8fb8:	7f 0e f0 00 	bra 8ff0 <__fpcmp_parts_d+0xb4> || nop
    8fbc:	a5 c0 00 0c 	ld r5,@(12,r0)
    8fc0:	a6 c1 00 0c 	ld r6,@(12,r1)
    8fc4:	a2 c0 00 10 	ld r2,@(16,r0)
    8fc8:	06 55 f0 00 	cmpu r6,r5 || nop
    8fcc:	a7 c1 00 10 	ld r7,@(16,r1)
    8fd0:	7c 03 f0 00 	bc 8fdc <__fpcmp_parts_d+0xa0> || nop
    8fd4:	b5 16 00 04 	bne r5,r6,8fe4 <__fpcmp_parts_d+0xa8>
    8fd8:	07 52 7d 03 	cmpu r7,r2 -> bnc 8fe4 <__fpcmp_parts_d+0xa8>
    8fdc:	b0 94 00 06 	bnez r4,8ff4 <__fpcmp_parts_d+0xb8>
    8fe0:	7f 06 f0 00 	bra 8ff8 <__fpcmp_parts_d+0xbc> || nop
    8fe4:	05 56 7c 03 	cmpu r5,r6 -> bc 8ff0 <__fpcmp_parts_d+0xb4>
    8fe8:	b6 15 00 05 	bne r6,r5,8ffc <__fpcmp_parts_d+0xc0>
    8fec:	02 57 7d 04 	cmpu r2,r7 -> bnc 8ffc <__fpcmp_parts_d+0xc0>
    8ff0:	b0 94 00 02 	bnez r4,8ff8 <__fpcmp_parts_d+0xbc>
    8ff4:	64 ff 7f 03 	ldi r4,#-1 -> bra 9000 <__fpcmp_parts_d+0xc4>
    8ff8:	64 01 7f 02 	ldi r4,#1 -> bra 9000 <__fpcmp_parts_d+0xc4>
    8ffc:	64 00 f0 00 	ldi r4,#0 || nop
    9000:	10 84 f0 00 	mv r0,r4 || nop
    9004:	1f ce f0 00 	jmp lr || nop
